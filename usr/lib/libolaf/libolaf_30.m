uint64_t asn1PE_SlpSessionID_sessionID(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = Asn1Coder::EncodeOctetString(a1, 0, 0, 4, a2, 1, 0);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PD_SlpSessionID_sessionID(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitStringFromBuffer(a1, 0x20u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t asn1PE_SlpSessionID(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = asn1PE_SlpSessionID_sessionID(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_5:
    SuplAsn1Logger::TraceError(v4, v6, v7);
    goto LABEL_6;
  }

  v4 = asn1PE_SLPAddress(a1, (a2 + 24));
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_5;
  }

LABEL_6:
  v8 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PD_SlpSessionID(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = asn1PD_SlpSessionID_sessionID(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_5:
    SuplAsn1Logger::TraceError(v4, v6, v7);
    goto LABEL_6;
  }

  v4 = asn1PD_SLPAddress(a1, (a2 + 3));
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_5;
  }

LABEL_6:
  v8 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PE_SetSessionID(uint64_t a1, unsigned __int8 *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = Asn1Coder::EncodeInteger(a1, 0, 0xFFFF, *a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_5:
    SuplAsn1Logger::TraceError(v4, v6, v7);
    goto LABEL_6;
  }

  v4 = asn1PE_SETId(a1, a2 + 8);
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_5;
  }

LABEL_6:
  v8 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PD_SetSessionID(uint64_t a1, _WORD *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = Asn1Coder::DecodeInteger(a1, 0, 0xFFFFu, a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_5:
    SuplAsn1Logger::TraceError(v4, v6, v7);
    goto LABEL_6;
  }

  v4 = asn1PD_SETId(a1, (a2 + 4));
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_5;
  }

LABEL_6:
  v8 = *MEMORY[0x29EDCA608];
  return v5;
}

void ASN1T_SessionID::ASN1T_SessionID(ASN1T_SessionID *this)
{
  v3 = *MEMORY[0x29EDCA608];
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 24) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 16) = -1;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 4) = 0;
  std::vector<unsigned char>::vector[abi:ne200100](this + 25, 4);
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 224) = -1;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 38) = 0;
  *this = 0;
  v2 = *MEMORY[0x29EDCA608];
}

uint64_t asn1PE_SessionID(uint64_t a1, unsigned __int8 *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_5:
    SuplAsn1Logger::TraceError(v7, v5, v6);
LABEL_6:
    v8 = *MEMORY[0x29EDCA608];
    return v4;
  }

  Asn1Coder::AddBitToBuffer(a1, a2[1]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_5;
  }

  if (*a2)
  {
    v7 = asn1PE_SetSessionID(a1, a2 + 8);
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_5;
    }
  }

  if (!a2[1])
  {
    v4 = 0;
    goto LABEL_6;
  }

  v10 = *MEMORY[0x29EDCA608];

  return asn1PE_SlpSessionID(a1, (a2 + 200));
}

uint64_t asn1PD_SessionID(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  *a2 = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_5:
    SuplAsn1Logger::TraceError(v7, v5, v6);
LABEL_6:
    v9 = *MEMORY[0x29EDCA608];
    return v4;
  }

  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  *(a2 + 1) = BitFromBuffer;
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_5;
  }

  if (*a2)
  {
    v7 = asn1PD_SetSessionID(a1, (a2 + 8));
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_5;
    }

    BitFromBuffer = *(a2 + 1);
  }

  if (!BitFromBuffer)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v11 = *MEMORY[0x29EDCA608];

  return asn1PD_SlpSessionID(a1, (a2 + 200));
}

double *Inc_GPS_TOW(double a1, double *result, __int16 *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = *result + a1;
  *result = v3;
  if (v3 >= 604800.0)
  {
    v4 = *a3;
    do
    {
      v3 = v3 + -604800.0;
      ++v4;
    }

    while (v3 >= 604800.0);
    *result = v3;
    *a3 = v4;
  }

  if (v3 < 0.0)
  {
    v5 = *a3;
    do
    {
      v3 = v3 + 604800.0;
      --v5;
    }

    while (v3 < 0.0);
    *result = v3;
    *a3 = v5;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_Sample_Track_Meas(int *a1, _DWORD *a2, double *a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v25 = *MEMORY[0x29EDCA608];
  v15 = *a1;
  *a4 = *a1;
  v16 = v15 - *a2;
  if (v15 == *a2)
  {
    v16 = 1;
  }

  *(a4 + 8) = v16;
  *a2 = v15;
  v17 = a1[2];
  *(a4 + 4) = a1[1];
  *(a4 + 12) = v17;
  *(a4 + 16) = *(a1 + 12);
  *(a4 + 17) = *(a1 + 14);
  *(a4 + 48) = *(a1 + 13);
  *(a4 + 18) = *(a1 + 8);
  v18 = *(a1 + 3);
  *(a4 + 24) = v18;
  LODWORD(a8) = *(a4 + 8);
  v19 = *(a1 + 5);
  *(a4 + 32) = v18 - *a3 + *&a8 * -0.001;
  *a3 = v18;
  *(a4 + 100) = a1[12];
  *(a4 + 104) = *(a1 + 52);
  *(a4 + 106) = *(a1 + 27);
  *(a4 + 108) = *(a1 + 28);
  *(a4 + 40) = v19;
  *(a4 + 112) = *(a1 + 8);
  v20 = a1 + 843;
  do
  {
    v21 = v20 + 4 * v8;
    if (*(v21 - 579))
    {
      ++v13;
      v12 += *(v20 + v8);
      if (*(v21 - 243) >= 10)
      {
        ++v14;
        v22 = *(v21 - 579);
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
LABEL_15:
            ++v11;
            goto LABEL_17;
          }

          if (v22 == 2)
          {
            ++v10;
          }
        }

        else
        {
          switch(v22)
          {
            case 5u:
              goto LABEL_15;
            case 4u:
              ++v9;
              break;
            case 3u:
              goto LABEL_15;
          }
        }
      }
    }

LABEL_17:
    --v8;
  }

  while (v8 != -48);
  if (v13)
  {
    *(a4 + 600) = v12 / v13;
  }

  *(a4 + 24782) = v11;
  *(a4 + 24787) = v10;
  *(a4 + 24792) = v9;
  v23 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t Decode_GPS_Check_Alm_TOA(const unsigned int *a1, char a2, __int16 a3, unsigned __int8 *a4, __int16 *a5, BOOL *a6)
{
  v14 = *MEMORY[0x29EDCA608];
  *a6 = 0;
  v6 = *(a1 + 14);
  if (v6 > 0x93)
  {
    goto LABEL_3;
  }

  v7 = a1[1] & 0xFFFF80;
  if (v7 > 0xC4DFEA)
  {
    goto LABEL_3;
  }

  v10 = (v6 << 12) - ((3 * v7) >> 6);
  if (v10 <= 302399)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  if (v10 < -302400)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  *a5 = v12 + a3;
  v13 = *a4;
  if (v13 < v6 || (v13 - v6) >= 74)
  {
    *a4 = v6;
    result = 1;
    goto LABEL_4;
  }

  if (v13 != v6 || (*a6 = 1, (a2 & 1) != 0))
  {
LABEL_3:
    result = 0;
  }

  else
  {
    result = ((a1[4] & 0xE0) == 0) & (0xE4FE7F3uLL >> a1[4]);
  }

LABEL_4:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void NK_Comp_DR_Meas(unsigned int a1, int a2, unsigned __int16 *a3, double *a4, double *a5, unsigned __int16 *a6, int *a7, double *a8, double a9, _BYTE *a10, double *a11, _BYTE *a12)
{
  LODWORD(v18) = a1;
  v21 = a11;
  v37 = *MEMORY[0x29EDCA608];
  v35 = 8 * a1;
  bzero(a11, v35);
  if (a9 <= 0.0)
  {
    v32 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v34 = a8;
    if (v18)
    {
      v18 = v18;
      v23 = (a9 * 100.0) + 1;
      v24 = a2 * 1575420.0;
      v25 = 1.0 / a9;
      v26 = a4;
      v33 = v23;
      do
      {
        if (*a7 <= 14)
        {
          *a12 = 1;
        }

        else if (v23 >= *a3 || (~*a6 & 0x300) != 0)
        {
          *a7 = 14;
        }

        else
        {
          *a12 = 1;
          v27 = v24 + *v26 - *a8;
          *v21 = v27 * 0.190293673;
          if (*a10 == 1)
          {
            v28 = *a5;
            v29 = *a5 + v27 * v25;
            if (fabs(v29) > 32.0)
            {
              *a7 = 14;
              v30 = *v26;
              *a12 = 0;
              EvLog_v("NK_Comp_DR_Meas: DR-DO = %d Hz ! (%d, %d, %d)", v29, v30, *a8, v28);
              v23 = v33;
            }
          }
        }

        ++a10;
        ++a5;
        ++v21;
        ++a8;
        ++v26;
        ++a12;
        ++a6;
        ++a3;
        ++a7;
        --v18;
      }

      while (v18);
    }

    v31 = *MEMORY[0x29EDCA608];

    memcpy(v34, a4, v35);
  }
}

BOOL Init_DB_Sys_Status(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = a1 + 253;
  *(a1 + 432) = a1 + 253;
  *(a1 + 440) = a1 + 285;
  *(a1 + 464) = a1 + 345;
  *(a1 + 472) = a1 + 309;
  *(a1 + 448) = a1 + 382;
  *(a1 + 456) = a1 + 392;
  v3 = a1 + 480;
  *(a1 + 664) = a1 + 480;
  *(a1 + 672) = a1 + 512;
  *(a1 + 680) = a1 + 609;
  *(a1 + 704) = a1 + 536;
  *(a1 + 696) = a1 + 572;
  *(a1 + 688) = a1 + 619;
  v4 = a1 + 712;
  *(a1 + 896) = a1 + 712;
  *(a1 + 904) = a1 + 744;
  *(a1 + 912) = a1 + 841;
  *(a1 + 936) = a1 + 768;
  *(a1 + 928) = a1 + 804;
  *(a1 + 920) = a1 + 851;
  *a1 = 0x200000000;
  *(a1 + 13) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 27) = 0x101010100000000;
  *(a1 + 34) = 16843009;
  *(a1 + 38) = 0;
  *(a1 + 46) = 1;
  if ((gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(a1) & 1) == 0)
  {
    *(a1 + 46) = 0;
  }

  *(a1 + 47) = 0;
  *(a1 + 48) = 0x200000000;
  *(a1 + 65) = 1024;
  *(a1 + 68) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 236) = 0u;
  *(a1 + 1116) = xmmword_299761C60;
  *(a1 + 1132) = 1;
  *(a1 + 1134) = 1;
  *(a1 + 252) = 0;
  *(a1 + 944) = 0x3E800000000;
  *(a1 + 956) = 0;
  *(a1 + 960) = vdupq_n_s64(0x4060A00000000000uLL);
  *(a1 + 976) = vdupq_n_s64(0x4079000000000000uLL);
  *(a1 + 992) = xmmword_299761C70;
  *(a1 + 1012) = 16843009;
  *(a1 + 1015) = 16843009;
  *(a1 + 1019) = 256;
  *(a1 + 1021) = 1;
  *(a1 + 1024) = 126484480;
  *(a1 + 1028) = 1930;
  *(a1 + 1052) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0;
  *(v4 + 176) = 0;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *v4 = 0u;
  *(v3 + 176) = 0;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *v3 = 0u;
  *(a1 + 1022) = 0;
  *(a1 + 1384) = 0;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1184) = xmmword_299761CD0;
  *(a1 + 1168) = unk_299761CC0;
  *(a1 + 1152) = InterChanBias_GLON_L1OF;
  *(a1 + 1248) = xmmword_299761D10;
  *(a1 + 1232) = unk_299761D00;
  *(a1 + 1216) = xmmword_299761CF0;
  *(a1 + 1200) = unk_299761CE0;
  *(a1 + 1264) = xmmword_299761C80;
  EvLog_v("Init_ICB: Model %d", 0);
  *(a1 + 1288) = 0;
  *(a1 + 1296) = xmmword_299761C90;
  v5 = *MEMORY[0x29EDCA608];

  return Core_Load_Inhib_EE(v4, (a1 + 1040));
}

char *Init_Set_Inter_Chan_Bias(char *result, unsigned int a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a2 < 6)
  {
    if (result[1022] != a2)
    {
      result[1022] = a2;
      v4 = &InterChanBias_GLON_L1OF[7 * a2];
      *(result + 75) = v4[3];
      *(result + 76) = v4[4];
      *(result + 77) = v4[5];
      *(result + 78) = v4[6];
      *(result + 72) = *v4;
      *(result + 73) = v4[1];
      *(result + 74) = v4[2];
      *(result + 158) = InterChanBias_BDS_B1[a2];
      *(result + 159) = 0x3FD51EB851EB851FLL;
      result = EvLog_v("Init_ICB: Model %d", a2);
    }

    v5 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v2 = *MEMORY[0x29EDCA608];
    v3 = *MEMORY[0x29EDCA608];

    return gn_report_assertion_failure("Init_ICB: Bad Model Id");
  }

  return result;
}

double Init_DB_Sys_Status_NV(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x29EDCA608];
  v13[0] = 0.0;
  v12 = 0;
  v4 = Core_Load_Clk_Drift(&v12, v13);
  v5 = 0;
  v6 = 0.000004;
  if (!v4 || (v7 = v13[0], v13[0] == 0.0) || fabs(v13[0]) >= 0.000004)
  {
    v7 = 0.0;
  }

  else
  {
    v5 = 0;
    v6 = 0.000001;
    if (*(a1 + 5) == 1)
    {
      v8 = *(a1 + 16);
      if (v8 >= 1025 && *a1 >= 1)
      {
        v5 = *(a1 + 24) + 604800 * v8 - v12;
        if ((v5 - 31449600) >= 0xFE201BA8)
        {
          if (v5 < 1209601)
          {
            v6 = dbl_299761CA0[v5 < 900];
          }

          else
          {
            v5 -= 1209600;
            v11 = v5 * 0.0000000330687831;
            v6 = v11 * 0.0000035 + 0.0000005;
            v7 = v13[0] * (1.0 - v11);
          }
        }

        else
        {
          v7 = 0.0;
          v6 = 0.000004;
        }
      }
    }
  }

  *(a2 + 992) = v7;
  *(a2 + 1000) = v6;
  *(a2 + 1288) = v5;
  *(a2 + 1304) = v7 * 1000000.0;
  result = v6 * 1000000.0;
  *(a2 + 1296) = v6 * 1000000.0;
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

int64x2_t MotionCtxGen_Init(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  *(a1 + 8) = 8;
  Set_Mat_Const(0, 0, 6, (a1 + 16), 0.0);
  Set_Mat_Const(0, 0, 6, (a1 + 72), 0.0);
  result = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a1 + 248) = 12;
  *(a1 + 216) = result;
  *(a1 + 240) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 256) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 264) = 12;
  *(a1 + 384) = 0;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t MotionCtxGen_Run(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = result;
  v43 = *MEMORY[0x29EDCA608];
  v7 = *(a3 + 87744);
  v8 = *(a4 + 128032);
  v28 = 0;
  __dst = 0;
  v42 = 0;
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
  v29 = 0u;
  v24 = v7;
  if ((*(result + 472) & 1) == 0)
  {
    result = Cyc_Record_IsEmpty(v7, a2);
    if ((result & 1) == 0)
    {
      Cyc_Record_Read(v7, a2, &__dst);
      MotionCtxGen_inCntx2McST(&__dst, &v29, a5, 1);
      result = MotionCtxGen_UpdateState(v6, &v29, a2, a3, a5);
    }
  }

  if (*(v6 + 472) == 1)
  {
    MotionCtxGen_SetValidUntil(v6, a2, a3, a5);
    while (1)
    {
      result = Cyc_Record_Count_Free(v8, 1u);
      v10 = *(v6 + 216);
      v9 = *(v6 + 224);
      if (result < 2 || v9 > v10)
      {
        v12 = v24;
      }

      else
      {
        v12 = v24;
        do
        {
          if (v9 < *(v6 + 240))
          {
            if (g_FPE_LogSeverity)
            {
              v13 = mach_continuous_time();
              if (g_TCU)
              {
                v14 = *(g_TCU + 8);
              }

              else
              {
                v14 = 0.0;
              }

              LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f MOTC: run meas error: writing meas in the past", "MotionCtxGen_Run", 413, (*&g_MacClockTicksToMsRelation * v13), v14);
              v9 = *(v6 + 224);
            }

            g_FPE_AssertFlag = 1;
          }

          *(v6 + 240) = v9;
          *v6 = v9 + 0.003;
          v15 = *(v6 + 432);
          v39 = *(v6 + 416);
          v40 = v15;
          v41 = *(v6 + 448);
          v42 = *(v6 + 464);
          v16 = *(v6 + 368);
          v35 = *(v6 + 352);
          v36 = v16;
          v17 = *(v6 + 400);
          v37 = *(v6 + 384);
          v38 = v17;
          v18 = *(v6 + 304);
          v31 = *(v6 + 288);
          v32 = v18;
          v19 = *(v6 + 336);
          v33 = *(v6 + 320);
          v34 = v19;
          v20 = *(v6 + 256);
          v21 = *(v6 + 272);
          *(&v29 + 1) = *(v6 + 264);
          v30 = v21;
          *&v29 = v9 + -0.003;
          Cyc_Record_Write(v8, &v29);
          Cyc_Record_Write(v8, v6);
          *(v6 + 224) = *(v6 + 224) + 0.5;
          v22 = *(v6 + 384) + -0.5;
          if (v22 < 0.0)
          {
            v22 = 0.0;
          }

          *(v6 + 384) = v22;
          *(v6 + 480) = *(v6 + 480) + 0.5;
          result = Cyc_Record_Count_Free(v8, 1u);
          v10 = *(v6 + 216);
          v9 = *(v6 + 224);
        }

        while (result >= 2 && v9 <= v10);
      }

      if (v9 <= v10)
      {
        break;
      }

      result = Cyc_Record_IsEmpty(v12, a2);
      if (result)
      {
        break;
      }

      Cyc_Record_Read(v12, a2, &__dst);
      MotionCtxGen_inCntx2McST(&__dst, &v29, a5, 1);
      MotionCtxGen_UpdateState(v6, &v29, a2, a3, a5);
    }
  }

  v23 = *MEMORY[0x29EDCA608];
  return result;
}

const char *MotionCtxGen_inCntx2McST(unsigned int *a1, double *a2, uint64_t a3, int a4)
{
  v19 = *MEMORY[0x29EDCA608];
  *(a2 + 2) = 13;
  v8 = a1[1];
  if (v8 == 1 || v8 == 2 && a1[2] == 3)
  {
    *(a2 + 2) = 6;
    v9 = 0.0;
    Set_Mat_Const(6, 1u, 6, a2 + 4, 0.0);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    Set_Mat_Const(3, 1u, 3, &v17, 0.5);
    Set_Mat_Const(3, 1u, 3, &v15, 0.005);
    Set_Mat_Size(6, a2 + 18, 6, 1);
    Copy_SubMat_to_Mat(1.0, 3, &v17, 0, 0, 6, a2 + 18);
    Copy_SubMat_to_Mat(1.0, 3, &v15, 3, 0, 6, a2 + 18);
    a2[16] = 0.0;
  }

  else
  {
    *(a2 + 2) = 5;
    Set_Mat_Const(4, 1u, 6, a2 + 4, 0.0);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    Set_Mat_Const(3, 1u, 3, &v17, 1.125);
    Set_Mat_Const(3, 1u, 3, &v15, 0.05625);
    Set_Mat_Size(6, a2 + 18, 4, 1);
    Copy_SubMat_to_Mat(1.0, 3, &v17, 0, 0, 6, a2 + 18);
    Copy_SubMat_to_Mat(1.0, 3, &v15, 3, 0, 6, a2 + 18);
    a2[16] = 0.0;
    v9 = 0.5;
  }

  *&v17 = 0;
  result = TCU_ConvertOStimeToTTICKtime(a3, *a1, &v17);
  v11 = *&v17;
  *a2 = *&v17 - v9;
  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v13 = *(g_TCU + 8);
    }

    else
    {
      v13 = 0.0;
    }

    result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f MOTC: generating new meas. measType = %d, measTime = %f", "MotionCtxGen_inCntx2McST", 220, v12, v13, *(a2 + 2), *a2);
  }

  if (a4 && (g_FPE_LogSeverity & 0x200) != 0)
  {
    result = LC_LOG_NMEA_GENERIC("%s,MOTC,%.3f,%d,%d,%.3f", "$PFPEX", *a2, a1[1], a1[2], *(a3 + 40) - v11);
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t MotionCtxGen_UpdateState(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x29EDCA608];
  v5 = *(a2 + 8);
  if (v5 != 13)
  {
    v10 = result;
    *(result + 248) = v5;
    if (*(result + 472))
    {
      if (*a2 > *(result + 224) + 0.5)
      {
        if (g_FPE_LogSeverity)
        {
          v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v12 = *(g_TCU + 8);
          }

          else
          {
            v12 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f MOTC: Update state error: measurement time too big", "MotionCtxGen_UpdateState", 340, v11, v12);
        }

        g_FPE_AssertFlag = 1;
      }
    }

    else
    {
      v13 = *(a5 + 40) + -1.0;
      *(result + 224) = v13;
      *(result + 232) = v13;
      *(result + 472) = 1;
    }

    result = MotionCtxGen_SetValidUntil(v10, a3, a4, a5);
    if (*(v10 + 264) == *(a2 + 8))
    {
      v14 = *(v10 + 384);
    }

    else
    {
      *(v10 + 480) = 0;
      v14 = 5.0;
      if ((g_FPE_LogSeverity & 8) != 0)
      {
        v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v16 = *(g_TCU + 8);
        }

        else
        {
          v16 = 0.0;
        }

        result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f -MOTC: t=%0.3f,type=%u", "MotionCtxGen_UpdateState", 356, v15, v16, *a2, *(v10 + 264));
      }
    }

    v17 = *(a2 + 96);
    v18 = *(a2 + 112);
    v19 = *(a2 + 144);
    *(v10 + 384) = *(a2 + 128);
    *(v10 + 400) = v19;
    v20 = *(a2 + 160);
    v21 = *(a2 + 176);
    v22 = *(a2 + 192);
    *(v10 + 464) = *(a2 + 208);
    *(v10 + 432) = v21;
    *(v10 + 448) = v22;
    *(v10 + 416) = v20;
    v23 = *(a2 + 16);
    *(v10 + 256) = *a2;
    *(v10 + 272) = v23;
    v24 = *(a2 + 32);
    v25 = *(a2 + 48);
    v26 = *(a2 + 80);
    *(v10 + 320) = *(a2 + 64);
    *(v10 + 336) = v26;
    *(v10 + 288) = v24;
    *(v10 + 304) = v25;
    *(v10 + 352) = v17;
    *(v10 + 368) = v18;
    *(v10 + 384) = v14;
  }

  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t MotionCtxGen_SetValidUntil(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x29EDCA608];
  v7 = *(a3 + 87744);
  result = Cyc_Record_IsEmpty(v7, a2);
  if (result)
  {
    v9 = 0.7;
    if (*(a1 + 248) != 6)
    {
      v9 = 0.0;
    }

    v10 = *(a4 + 40);
    v11 = v10 - v9;
  }

  else
  {
    v21 = 0;
    __dst = 0;
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    Cyc_Record_Peek(v7, a2, 0, &__dst);
    result = MotionCtxGen_inCntx2McST(&__dst, v22, a4, 0);
    v11 = *v22;
    v10 = *(a4 + 40);
  }

  *(a1 + 216) = v11;
  v12 = *(a1 + 232);
  if (v12 != v10)
  {
    v13 = v10 - v12 + -1.0;
    v14 = -v13;
    if (v13 >= 0.0)
    {
      v14 = v13;
    }

    if (v14 >= 0.2)
    {
      if ((g_FPE_LogSeverity & 4) != 0)
      {
        v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v18 = *(g_TCU + 8);
        }

        else
        {
          v18 = 0.0;
        }

        result = LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f MOTC: suspicious clock correction: %0.1fms - ignored", "MotionCtxGen_fixStateTime", 260, v17, v18, v13 * 1000.0);
      }
    }

    else
    {
      if (v14 > 2.22044605e-16 && (g_FPE_LogSeverity & 4) != 0)
      {
        v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v16 = *(g_TCU + 8);
        }

        else
        {
          v16 = 0.0;
        }

        result = LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f MOTC: clock correction by %0.1fms (%0.3f before)", "MotionCtxGen_fixStateTime", 252, v15, v16, v13 * 1000.0, *(a1 + 224));
      }

      *(a1 + 224) = v13 + *(a1 + 224);
    }

    *(a1 + 232) = v10;
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

void NK_DeCor_Ext_Meas(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x29EDCA608];
  v4 = a2 + 22776;
  if (*(a2 + 22992) == 1 && *(a2 + 23004) > 0 || *(a2 + 23120) == 1 && *(a2 + 23132) >= 1)
  {
    Comp_NEDvar_UDU(a1 + 344, 0xBu, 5, (a2 + 832), v38);
    Comp_ErrorEllipse(v38[0], v38[1], v5, &v35, &v36, &v37);
    if ((*(v4 + 216) & 1) == 0)
    {
      goto LABEL_25;
    }

    v6 = v35 * v35;
  }

  else
  {
    v6 = 0.0;
    if (!*(a2 + 22992))
    {
      goto LABEL_25;
    }
  }

  v7 = *(a2 + 23040);
  *(v4 + 288) = v7;
  v8 = *(v4 + 228);
  if (*(a2 + 968) || v8 > 0)
  {
    if (v8 < 1)
    {
      goto LABEL_25;
    }

    if (v8 == 2)
    {
      v10 = 1.5;
    }

    else
    {
      if (v8 != 1)
      {
LABEL_22:
        if (v6 >= 4.0 * v7.f64[0])
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      v10 = 0.75;
    }

    if (v6 < v10 * v7.f64[0])
    {
      v11 = 90000.0;
LABEL_24:
      *(a2 + 23040) = vmulq_n_f64(v7, v11);
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (*(v4 + 224) != 4 && v6 < 4.0 * v7.f64[0])
  {
LABEL_23:
    v11 = 1.7;
    goto LABEL_24;
  }

LABEL_25:
  if (*(v4 + 344) != 1)
  {
    goto LABEL_36;
  }

  v12 = *(a2 + 23152);
  *(a2 + 23160) = v12;
  v13 = *(v4 + 356);
  if (v13 < 1)
  {
    goto LABEL_36;
  }

  if (v13 == 2)
  {
    v14 = 1.5;
LABEL_31:
    if (v39 < v12 * v14)
    {
      v15 = 90000.0;
LABEL_35:
      *(a2 + 23152) = v12 * v15;
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  if (v13 == 1)
  {
    v14 = 0.75;
    goto LABEL_31;
  }

LABEL_33:
  if (v39 < v12 * 4.0)
  {
    v15 = 1.7;
    goto LABEL_35;
  }

LABEL_36:
  if (*(v4 + 72) != 1)
  {
    goto LABEL_47;
  }

  v16 = *(a2 + 22880);
  *(a2 + 22888) = v16;
  v17 = *(v4 + 84);
  if (v17 < 1)
  {
    goto LABEL_47;
  }

  v18 = *(a2 + 24496);
  if (v17 == 2)
  {
    v19 = 1.5;
LABEL_42:
    if (v18 < v16 * v19)
    {
      v20 = 900.0;
LABEL_46:
      *(a2 + 22880) = v16 * v20;
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  if (v17 == 1)
  {
    v19 = 0.75;
    goto LABEL_42;
  }

LABEL_44:
  if (v18 < v16 * 4.0)
  {
    v20 = 1.7;
    goto LABEL_46;
  }

LABEL_47:
  if (*(v4 + 144) != 1)
  {
    goto LABEL_61;
  }

  v21 = *(a2 + 22952);
  *(a2 + 22960) = v21;
  v22 = *(v4 + 156);
  if (v22 < 1)
  {
    goto LABEL_61;
  }

  if (v22 == 1)
  {
    v23 = *(a2 + 24520);
    v24 = 0.75;
  }

  else
  {
    v23 = *(a2 + 24520);
    if (v22 != 2)
    {
      goto LABEL_58;
    }

    v24 = 1.5;
  }

  if (v23 < v21 * v24)
  {
    if (*(a1 + 11048) || *(a2 + 8387) || *(a2 + 13963))
    {
      v25 = 10000.0;
LABEL_60:
      *(a2 + 22952) = v21 * v25;
      goto LABEL_61;
    }

    v32 = 4.0;
    if (v22 == 1)
    {
      v32 = 1.0;
    }

    v33 = -(v23 - v21 * v32);
    v34 = 0;
    if (v33 > 0.0)
    {
      Apply_Q_Boost(v33, 3u, 1u, (a1 + 344), &v34, &v35);
    }

    goto LABEL_61;
  }

LABEL_58:
  if (v23 < v21 * 4.0)
  {
    v25 = 1.7;
    goto LABEL_60;
  }

LABEL_61:
  if (*v4 != 1)
  {
    goto LABEL_72;
  }

  v26 = *(a2 + 22808);
  *(a2 + 22816) = v26;
  v27 = *(v4 + 12);
  if (v27 < 1)
  {
    goto LABEL_72;
  }

  v28 = *(a2 + 24528);
  if (v27 == 2)
  {
    v29 = 1.5;
LABEL_67:
    if (v28 < v26 * v29)
    {
      v30 = 900.0;
LABEL_71:
      *(a2 + 22808) = v26 * v30;
      goto LABEL_72;
    }

    goto LABEL_69;
  }

  if (v27 == 1)
  {
    v29 = 0.75;
    goto LABEL_67;
  }

LABEL_69:
  if (v28 < v26 * 4.0)
  {
    v30 = 1.7;
    goto LABEL_71;
  }

LABEL_72:
  v31 = *MEMORY[0x29EDCA608];
}

const double *invtst(double *a1, double *a2, unsigned int a3, double a4, double a5, double a6, double *a7)
{
  v21 = *MEMORY[0x29EDCA608];
  v8 = *a1;
  result = a1 - 1;
  v9 = a4 + v8 * *a2 * *a2;
  if (a3 >= 2)
  {
    if (a3 + 1 > 3)
    {
      v10 = a3 + 1;
    }

    else
    {
      v10 = 3;
    }

    v11 = 1;
    v12 = 2;
    v13 = 2;
    v14 = 1;
    do
    {
      v15 = a2[v13 - 1];
      v16 = a2;
      v17 = v12;
      v18 = v11;
      do
      {
        v19 = *v16++;
        v15 = v15 + v19 * result[v17++];
        --v18;
      }

      while (v18);
      v14 += v13;
      v9 = v9 + v15 * v15 * result[v14];
      v12 += v13;
      ++v11;
      ++v13;
    }

    while (v13 != v10);
  }

  if (a5 * a5 > v9 * a6)
  {
    v9 = -v9;
  }

  *a7 = v9;
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Partial_Reset(uint64_t result, double *a2, double *a3)
{
  v35 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v15 = 0.0;
    v13 = 0.0;
    do
    {
      v8 = v7;
      v9 = a2[v7];
      if (v9 > 0.0)
      {
        v34 = 0;
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
        *(&v18 + v7) = 0x3FF0000000000000;
        result = ud2var(a3, v5, v6 + 1, 1u, &v15);
        v10 = v15;
        v11 = v15 * 100000000.0;
        if (v15 * 100000000.0 <= v9 * 1.01)
        {
          if (v9 - v15 > 0.0)
          {
            result = rnk1_core(a3, v6 + 1, v9 - v15, &v18, &v14);
          }
        }

        else
        {
          if (v11 > 0.0)
          {
            rnk1_core(a3, v6 + 1, v15 * 100000000.0, &v18, &v14);
            v9 = a2[v8];
          }

          v34 = 0;
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
          *(&v18 + v8) = 0x3FF0000000000000;
          result = umeas(a3, v5, v9 * ((v10 + v11) / (v10 + v11 - v9)), &v18, v17, v16, &v13, -1.0);
        }
      }

      v7 = v8 + 1;
      v6 = (v8 + 1);
    }

    while (v6 < v5);
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

_BYTE *LPP_init(void)
{
  v7 = *MEMORY[0x29EDCA608];
  StaticLppPrivate = GetStaticLppPrivate();
  memset_s(StaticLppPrivate + 18, 6uLL, 0, 6uLL);
  *(GetStaticLppPrivate() + 2) = 0;
  *(GetStaticLppPrivate() + 3) = 0;
  *GetStaticLppPrivate() = 0;
  *(GetStaticLppPrivate() + 1) = 0;
  *(GetStaticLppPrivate() + 1) = 0;
  *(GetStaticLppPrivate() + 28) = 0;
  *(GetStaticLppPrivate() + 6) = -1;
  v1 = operator new(0x10uLL, MEMORY[0x29EDC9418]);
  if (v1)
  {
    *v1 = 0;
    v1[1] = 0;
  }

  *(GetStaticLppPrivate() + 1) = v1;
  if (!*(GetStaticLppPrivate() + 1))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 69, "LPP_init", "LPP_init");
      LbsOsaTrace_WriteLog(0xEu, __str, v5, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("LPP_init", "lpp_if.cpp", 86, "false && Memory allocation failure");
  }

  result = GetStaticLppPrivate();
  *result = 1;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LPP_destroy(void)
{
  v5 = *MEMORY[0x29EDCA608];
  lpp_reset(0);
  v0 = *(GetStaticLppPrivate() + 1);
  if (v0)
  {
    MEMORY[0x29C29EB20](v0, 0x20C40A4A59CD2);
  }

  *(GetStaticLppPrivate() + 1) = 0;
  *(GetStaticLppPrivate() + 1) = 0;
  *(GetStaticLppPrivate() + 1) = 0;
  *GetStaticLppPrivate() = 0;
  *(GetStaticLppPrivate() + 28) = 0;
  *(GetStaticLppPrivate() + 16) = 0;
  *(GetStaticLppPrivate() + 6) = -1;
  StaticLppPrivate = GetStaticLppPrivate();
  v2 = *MEMORY[0x29EDCA608];
  v3 = StaticLppPrivate + 2;

  return memset_s(v3, 6uLL, 0, 6uLL);
}

uint64_t lpp_t_classmark_ind(_BYTE *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!*GetStaticLppPrivate())
  {
    LPP_init();
  }

  if (*a1 == 1)
  {
    v2 = a1[10];
    if (v2 == 1)
    {
      v3 = (a1[11] == 1) | (4 * (a1[13] == 1)) | (2 * (a1[12] == 1));
    }

    else
    {
      v3 = 0;
    }

    *(GetStaticLppPrivate() + 2) = v2;
    *(GetStaticLppPrivate() + 3) = v3;
  }

  if (a1[1] == 1)
  {
    if (a1[19] == 1)
    {
      v4 = (a1[20] == 1) | (2 * (a1[22] == 1));
      v5 = 2 * (a1[23] == 1);
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v4 = 0;
      v5 = 0;
    }

    StaticLppPrivate = GetStaticLppPrivate();
    StaticLppPrivate[4] = v6;
    StaticLppPrivate[5] = v4;
    StaticLppPrivate[6] = v5;
  }

  if (a1[25] == 1)
  {
    v8 = a1[24] == 1;
    *(GetStaticLppPrivate() + 7) = v8;
  }

  v9 = *MEMORY[0x29EDCA608];

  return lpp_state_control(2u);
}

void lpp_t_supl_pos_trigger(int a1, char a2, size_t a3, const void *a4)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(GetStaticLppPrivate() + 1) && *(GetStaticLppPrivate() + 16) == 1)
  {
    if (a4 && a3 >= 1)
    {
      __s[0] = -1;
      v12 = -1;
      memset_s(__s, 8uLL, 0, 8uLL);
      __s[0] = 1;
      v12 = a1;
      v10 = gnssOsa_Calloc("posp_alloc", 18, 1, a3 & 0x7FFFFFFF);
      memcpy_s("lpp_t_supl_pos_trigger", 213, v10, a3, a4, a3);
      lpp_process_downlink_message(__s, a2);
      if (v10)
      {
        free(v10);
      }

      v8 = *MEMORY[0x29EDCA608];
      return;
    }

    ms_report_exception(2, 16429, 219, "lpp_t_supl_pos_trigger");
    ms_report_exception(2, 16391, 220, "lpp_t_supl_pos_trigger");
  }

  v9 = *MEMORY[0x29EDCA608];

  send_supl_pos_ind(a1, 1, 0, 0, 0);
}

void lpp_handle_aid_req(int a1, char a2, int a3, __int128 *a4)
{
  v35 = *MEMORY[0x29EDCA608];
  LOBYTE(__s) = -1;
  HIDWORD(__s) = -1;
  memset_s(&__s, 8uLL, 0, 8uLL);
  LOBYTE(__s) = 1;
  HIDWORD(__s) = -1;
  v24 = 0;
  v25 = 0;
  v21[1] = 0;
  v22 = 0;
  v21[0] = 0;
  v23 = 0;
  memset_s(v21, 0x30uLL, 0, 0x30uLL);
  if (!a4)
  {
LABEL_18:
    if (a3)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v32[0] = 2;
  *&v33 = 0x8000000080000000;
  *(&v33 + 1) = 0xFFFF00007FFFFFFFLL;
  *v34 = 255;
  *&v34[8] = -1;
  v34[10] = -1;
  *&v34[2] = -1;
  v34[6] = -1;
  memset(&v34[11], 0, 32);
  v34[44] = 0;
  memset_s(v32, 0x44uLL, 0, 0x44uLL);
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Aid Mask,%u\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 68, "lpp_handle_aid_req", *(a4 + 6));
    LbsOsaTrace_WriteLog(0x13u, __str, v9, 5, 1);
  }

  v10 = a4[1];
  v33 = *a4;
  *v34 = v10;
  *&v34[16] = a4[2];
  *&v34[29] = *(a4 + 45);
  if (a3 == 1)
  {
    LOBYTE(__s) = 1;
    HIDWORD(__s) = a1;
    v11 = lpp_session_detect(&__s);
    if (v11 || (v11 = lpp_session_create(&__s, a2)) != 0)
    {
      v12 = v11;
      memset_s(__str, 8uLL, 0, 8uLL);
      v13 = *(v12 + 24);
      *__str = 1;
      *&__str[4] = v13;
      v14 = **(v12 + 40);
      if (v14)
      {
        while (v14[4] != 1 || v14[5] != v13)
        {
          v14 = *v14;
          if (!v14)
          {
            goto LABEL_11;
          }
        }

        goto LABEL_12;
      }

LABEL_11:
      v14 = lpp_transaction_start(v12, __str, 6);
      if (v14)
      {
LABEL_12:
        *(v14 + 25) = 1;
        goto LABEL_14;
      }
    }

    ms_report_exception(2, 16425, 325, "lpp_handle_aid_req");
    goto LABEL_22;
  }

  v14 = __str;
  _LPP_TRANSACTION::_LPP_TRANSACTION(__str);
  memset_s(__str, 0x1E8uLL, 0, 0x1E8uLL);
LABEL_14:
  v30 = 0;
  v31 = 0;
  v27 = 0;
  v28 = 0;
  *__str = 0;
  v29 = 0;
  memset_s(__str, 0x30uLL, 0, 0x30uLL);
  if (lpp_transaction_process_request_assistance_data(v14, v32, __str) != 1)
  {
    goto LABEL_18;
  }

  v15 = v28;
  v22 = v28;
  v28[16] = 0;
  *(v15 + 32) = 0;
  v16 = encode_asn1_message(0, 0, &v24, 0, &v23, v15);
  if (a3)
  {
    if (!v16)
    {
      send_lpm_supl_ad_rsp(SHIDWORD(__s), 0, &v23);
      goto LABEL_23;
    }

LABEL_22:
    HIDWORD(__s) = a1;
    send_lpm_supl_ad_rsp(a1, 1, 0);
    ms_report_exception(2, 16430, 346, "lpp_handle_aid_req");
    goto LABEL_23;
  }

LABEL_19:
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Aid Response message is not for SUPL\n", (*&g_MacClockTicksToMsRelation * v17), "PSP", 69, "lpp_handle_aid_req", 770);
    LbsOsaTrace_WriteLog(0x13u, __str, v18, 0, 1);
  }

LABEL_23:
  if (v22)
  {
    GenericFreeSort(v22, &ySDL_T_LASN_LPP_Message);
    if (v22)
    {
      free(v22);
    }
  }

  v19 = *MEMORY[0x29EDCA608];
}

void lpp_t_supl_lpp_caps_req(int a1, char a2)
{
  v27 = *MEMORY[0x29EDCA608];
  __src = 0;
  v26 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  LODWORD(size) = 0;
  LOBYTE(v14) = 1;
  HIDWORD(v14) = a1;
  if (*(GetStaticLppPrivate() + 16))
  {
    v4 = lpp_session_detect(&v14);
    if (v4)
    {
      v5 = v4;
      v19 = 0;
      v20 = 0;
      v16 = 0;
      v17 = 0;
      v15 = 0;
      v18 = 0;
    }

    else
    {
      v5 = lpp_session_create(&v14, a2);
      v19 = 0;
      v20 = 0;
      v16 = 0;
      v17 = 0;
      v15 = 0;
      v18 = 0;
      if (!v5)
      {
        goto LABEL_16;
      }
    }

    v7 = *(v5 + 24);
    v13[0] = 1;
    v13[1] = v7;
    v8 = **(v5 + 5);
    if (v8)
    {
      while (*(v8 + 4) != 1 || *(v8 + 5) != v7)
      {
        v8 = *v8;
        if (!v8)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_13;
    }

LABEL_12:
    v8 = lpp_transaction_start(v5, v13, 5);
    if (v8)
    {
LABEL_13:
      *(v8 + 25) = 1;
      if (lpp_transaction_process_provide_capabilities(v8, &v15) == 1)
      {
        v9 = v17;
        v23 = v17;
        *(v17 + 16) = 0;
        v9[32] = 0;
        LODWORD(size) = 0;
        if (encode_asn1_message(0, 0, &__src, 0, &size, v9))
        {
          ms_report_exception(2, 16422, 418, "lpp_t_supl_lpp_caps_req");
          v10 = 1;
          v11 = __src;
        }

        else
        {
          *(v5 + 84) = 1;
          v11 = gnssOsa_Calloc("posp_alloc", 18, 1, size);
          memcpy_s("lpp_t_supl_lpp_caps_req", 428, v11, size, __src, size);
          v10 = 0;
          __src = v11;
        }
      }

      else
      {
        v11 = 0;
        LODWORD(size) = 0;
        __src = 0;
        v10 = 1;
        v9 = v17;
      }

      send_supl_caps_rsp(SHIDWORD(v14), v10, size, v11);
      goto LABEL_20;
    }

LABEL_16:
    v9 = 0;
LABEL_20:
    GenericFreeSort(v9, &ySDL_T_LASN_LPP_Message);
    if (v17)
    {
      free(v17);
    }

    v12 = *MEMORY[0x29EDCA608];
    return;
  }

  LODWORD(size) = 0;
  v6 = *MEMORY[0x29EDCA608];

  send_supl_caps_rsp(a1, 1, 0, 0);
}

void lpp_t_supl_session_end_ind(int a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v4[0] = 1;
  v5 = a1;
  v1 = lpp_session_detect(v4);
  if (v1)
  {
    v2 = *MEMORY[0x29EDCA608];

    lpp_session_delete(v1);
  }

  else
  {
    v3 = *MEMORY[0x29EDCA608];
  }
}

void lpp_t_lpi_pos_aid_req(__int128 *a1, char a2, uint64_t a3, int a4)
{
  v4 = BYTE4(a3);
  v17 = *MEMORY[0x29EDCA608];
  v5 = a1[1];
  v13 = *a1;
  v14 = v5;
  *v15 = a1[2];
  *&v15[11] = *(a1 + 43);
  v16 = a2;
  if (a3 == 2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Aid Mask,%u\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 68, "lpp_t_lpi_pos_aid_req", WORD6(v13));
      LbsOsaTrace_WriteLog(0x13u, __str, v8, 5, 1);
    }

    v12[0] = 0;
    __str[0] = v4;
    v11 = a4;
    lpp_transaction_pos_aid_req(v12, __str);
    v9 = *MEMORY[0x29EDCA608];
  }

  else
  {

    ms_report_exception(2, 16420, 486, "lpp_t_lpi_pos_aid_req");
  }
}

void lpp_t_pos_loc_cnf(__int128 *a1, uint64_t a2, int a3, char a4)
{
  v36 = *MEMORY[0x29EDCA608];
  v7 = a1[5];
  v34 = a1[4];
  v35[0] = v7;
  *(v35 + 14) = *(a1 + 94);
  v8 = a1[1];
  v30 = *a1;
  v31 = v8;
  v9 = a1[3];
  v32 = a1[2];
  v33 = v9;
  v10 = *(a1 + 110);
  T_GNSS_POSITION_s::T_GNSS_POSITION_s(v13);
  v16 = 0;
  T_GPS_MEAS_s::T_GPS_MEAS_s(v17);
  v13[3] = v33;
  v13[4] = v34;
  *v14 = v35[0];
  *&v14[14] = *(v35 + 14);
  v13[0] = v30;
  v13[1] = v31;
  v17[44] = 2;
  v18 = 0;
  v19 = 0;
  v20 = -1;
  v21 = 0xFFFF7FFFFFFFFFFFLL;
  v22 = -1;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v28 = 2;
  v12[0] = 1;
  v13[2] = v32;
  v15 = v10;
  v29 = a4;
  v27 = v10;
  lpm_t_handle_loc_info_rsp(v12, a2, a3);
  v11 = *MEMORY[0x29EDCA608];
}

void lpm_t_handle_loc_info_rsp(uint64_t a1, uint64_t a2, int a3)
{
  v30 = *MEMORY[0x29EDCA608];
  __s[0] = -1;
  v17 = -1;
  memset_s(__s, 8uLL, 0, 8uLL);
  if ((a2 & 0xFFFFFFFFFFLL) == 0x100000002)
  {
    __s[0] = 1;
    v17 = a3;
  }

  else
  {
    ms_report_exception(2, 16420, 552, "lpm_t_handle_loc_info_rsp");
  }

  v18[0] = 0;
  v19 = -1;
  T_GNSS_POSITION_s::T_GNSS_POSITION_s(v20);
  LOBYTE(v22[0]) = 0;
  T_GPS_MEAS_s::T_GPS_MEAS_s((v22 + 8));
  LOWORD(v23) = 2;
  BYTE2(v23) = 0;
  *(&v23 + 1) = 0;
  *&v24 = -1;
  *(&v24 + 1) = 0xFFFF7FFFFFFFFFFFLL;
  *&v25 = -1;
  BYTE8(v25) = 0;
  WORD6(v25) = 0;
  LODWORD(v26) = 0;
  BYTE4(v26) = 0;
  v27 = 0;
  v28 = 2;
  v29 = 0;
  memset_s(v18, 0x128uLL, 0, 0x128uLL);
  v18[0] = 1;
  v19 = *a1;
  v27 = *(a1 + 272);
  if (v19 <= 1u)
  {
    if (v19)
    {
      if (v19 != 1)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v6 = *(a1 + 232);
    v23 = *(a1 + 216);
    v24 = v6;
    v25 = *(a1 + 248);
    v26 = *(a1 + 264);
    v7 = *(a1 + 168);
    v22[2] = *(a1 + 152);
    v22[3] = v7;
    v8 = *(a1 + 200);
    v22[4] = *(a1 + 184);
    v22[5] = v8;
    v9 = *(a1 + 136);
    v22[0] = *(a1 + 120);
    v22[1] = v9;
    goto LABEL_14;
  }

  if (v19 == 2)
  {
    ms_report_exception(2, 16437, 569, "lpm_t_handle_loc_info_rsp");
LABEL_13:
    v10 = *(a1 + 56);
    v11 = *(a1 + 88);
    v20[4] = *(a1 + 72);
    v21[0] = v11;
    *(v21 + 15) = *(a1 + 103);
    v12 = *(a1 + 24);
    v20[0] = *(a1 + 8);
    v20[1] = v12;
    v20[2] = *(a1 + 40);
    v20[3] = v10;
    v29 = *(a1 + 280);
    goto LABEL_14;
  }

  if (v19 != 255)
  {
LABEL_14:
    v14 = 0;
    v15 = 0;
    memset_s(&v14, 0x10uLL, 0, 0x10uLL);
    v14 = __s;
    v15 = v18;
    lpp_control_loc_info_rsp(&v14);
    goto LABEL_15;
  }

  ms_report_exception(2, 16438, 580, "lpm_t_handle_loc_info_rsp");
LABEL_15:
  v13 = *MEMORY[0x29EDCA608];
}

void lpp_t_pos_meas_cnf(__int128 *a1, __int128 *a2, char a3, uint64_t a4, int a5, int a6)
{
  v34 = *MEMORY[0x29EDCA608];
  T_GNSS_POSITION_s::T_GNSS_POSITION_s(&v19);
  v20 = 0;
  T_GPS_MEAS_s::T_GPS_MEAS_s(&v21);
  LOWORD(v27) = 2;
  BYTE2(v27) = 0;
  *(&v27 + 1) = 0;
  *&v28 = -1;
  *(&v28 + 1) = 0xFFFF7FFFFFFFFFFFLL;
  *v29 = -1;
  v29[8] = 0;
  *&v29[12] = 0;
  *&v29[16] = 0;
  v29[20] = 0;
  v32 = 0;
  v31 = a6;
  v18[0] = 0;
  v30 = 0;
  if (a6)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Measurement result status,%u\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 69, "lpp_t_pos_meas_cnf", 770, v31);
      LbsOsaTrace_WriteLog(0x13u, __str, v13, 0, 1);
    }
  }

  else
  {
    if (a3)
    {
      v20 |= 1u;
      v26 = *(a1 + 10);
      v14 = a1[4];
      v24 = a1[3];
      v25 = v14;
      v15 = a1[2];
      v22 = a1[1];
      v23 = v15;
      v21 = *a1;
      BYTE4(v22) = 0;
      BYTE12(v23) = 0;
    }

    if ((a3 & 2) != 0)
    {
      v20 |= 2u;
      v16 = a2[1];
      v27 = *a2;
      v28 = v16;
      *v29 = a2[2];
      *&v29[13] = *(a2 + 45);
    }
  }

  lpm_t_handle_loc_info_rsp(v18, a4, a5);
  v17 = *MEMORY[0x29EDCA608];
}

_BYTE *lpp_t_mm_lpm_status_ind(char a1, int a2, unint64_t a3)
{
  v3 = a3;
  v9 = *MEMORY[0x29EDCA608];
  v5 = a3 >> 16;
  v6 = HIDWORD(a3);
  *(GetStaticLppPrivate() + 16) = a1;
  *(GetStaticLppPrivate() + 6) = a2;
  *(GetStaticLppPrivate() + 9) = v3;
  *(GetStaticLppPrivate() + 10) = v5;
  result = GetStaticLppPrivate();
  result[22] = v6;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void lpp_t_supl_ad_req(int a1, char a2, __int128 *a3, int a4)
{
  v10 = *MEMORY[0x29EDCA608];
  if (*(GetStaticLppPrivate() + 16) == 1 && (a3 || a4 != 0xFFFF))
  {
    lpp_handle_aid_req(a1, a2, 1, a3);
    if (a3)
    {
LABEL_5:
      v8 = *MEMORY[0x29EDCA608];

      JUMPOUT(0x29C29EB20);
    }
  }

  else
  {
    send_lpm_supl_ad_rsp(a1, 1, 0);
    if (a3)
    {
      goto LABEL_5;
    }
  }

  v9 = *MEMORY[0x29EDCA608];
}

void T_GPS_MEAS_s::T_GPS_MEAS_s(T_GPS_MEAS_s *this)
{
  v3 = *MEMORY[0x29EDCA608];
  *this = 0xFFFFLL;
  *(this + 4) = 255;
  *(this + 44) = 0;
  *(this + 12) = 0;
  *(this + 20) = 0;
  *(this + 36) = 255;
  *(this + 10) = 0;
  memset_s(this + 24, 0x14uLL, 0, 0x14uLL);
  memset_s(this + 48, 0x18uLL, 0, 0x18uLL);
  v2 = *MEMORY[0x29EDCA608];
}

uint64_t asn1PE_Ver(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = Asn1Coder::EncodeBitString(a1, 0, 0, 0x40u, a2, 1);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PD_Ver(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitStringFromBuffer(a1, 0x40u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t asn1PE_StatusCode(uint64_t a1, unsigned __int8 *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = *a2 - 20;
  Asn1Coder::AddBitToBuffer(a1, v4 < 5);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_8:
    SuplAsn1Logger::TraceError(v8, v6, v7);
    goto LABEL_9;
  }

  v9 = *a2;
  if (v4 > 4)
  {
    v8 = Asn1Coder::EncodeInteger(a1, 0, 19, v9);
  }

  else
  {
    v8 = Asn1Coder::EncodeChoiceExtension(a1, (v9 - 20));
  }

  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_8;
  }

LABEL_9:
  v10 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PD_StatusCode(uint64_t a1, _BYTE *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v8 = *(a1 + 16);
LABEL_8:
    SuplAsn1Logger::TraceError(v8, v6, v7);
    goto LABEL_9;
  }

  v12 = 0;
  if (BitFromBuffer)
  {
    v5 = Asn1Coder::DecodeEnumerationExtension(a1, &v12);
    v9 = v12 + 20;
  }

  else
  {
    v5 = Asn1Coder::DecodeInteger(a1, 0, 0x13u, &v12);
    v9 = v12;
  }

  *a2 = v9;
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v8 = v5;
    goto LABEL_8;
  }

LABEL_9:
  v10 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t Hal01_01HandleInitReq(uint64_t a1)
{
  v31 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:HAL_INIT_MSG\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal01_01HandleInitReq");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  v29 = 3;
  if (a1)
  {
    g_IsFSMDeInit = 0;
    v4 = *(a1 + 24);
    g_HwProduct = v4;
    g_IsProdMode = *(a1 + 28);
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 73, "Hal01_01HandleInitReq", 1291);
      LbsOsaTrace_WriteLog(0xDu, __str, v6, 4, 1);
    }

    v7 = gnssOsa_Calloc("Hal01_01HandleInitReq", 148, 1, 0xB8uLL);
    if (v7)
    {
      v8 = v7;
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GnssHw,%u\n", (*&g_MacClockTicksToMsRelation * v9), "HAL", 73, "Hal01_01HandleInitReq", v4);
        LbsOsaTrace_WriteLog(0xDu, __str, v10, 4, 1);
      }

      if (Hal22_InitializeConn())
      {
        goto LABEL_41;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "HAL", 73, "Hal01_01HandleInitReq", 1313);
        LbsOsaTrace_WriteLog(0xDu, __str, v12, 4, 1);
      }

      if ((v4 - 1) >= 3)
      {
        if (v4 != 4 && v4)
        {
          goto LABEL_28;
        }

        if (Hal01_GetRevisionInfo(v8, *(a1 + 16), 0))
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v17 = mach_continuous_time();
            v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v17), "HAL", 73, "Hal01_01HandleInitReq", 1285);
            LbsOsaTrace_WriteLog(0xDu, __str, v18, 4, 1);
          }

          Hal08_InitPatchesCode();
          if (Hal24_PatchDnldBright(&v29))
          {
            if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v19 = mach_continuous_time();
              v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v19), "HAL", 69, "Hal01_01HandleInitReq", 1293);
              LbsOsaTrace_WriteLog(0xDu, __str, v20, 0, 1);
            }

            *v8 = 1;
            *(v8 + 1) = v29;
            goto LABEL_40;
          }

          goto LABEL_33;
        }
      }

      else
      {
        if (Hal34_InitPciGnssDevice(&v29))
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v13 = mach_continuous_time();
            v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "HAL", 69, "Hal01_01HandleInitReq", 1293);
            LbsOsaTrace_WriteLog(0xDu, __str, v14, 0, 1);
          }

          *v8 = 1;
          *(v8 + 1) = v29;
          (*(a1 + 16))(3, v8);
LABEL_28:
          if (*v8 != 2)
          {
            goto LABEL_40;
          }

LABEL_34:
          if (Hal01_GetRevisionInfo(v8, *(a1 + 16), 1))
          {
            if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v23 = mach_continuous_time();
              v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AfterInit\n", (*&g_MacClockTicksToMsRelation * v23), "HAL", 73, "Hal01_01HandleInitReq", 1285);
              v25 = 4;
LABEL_39:
              LbsOsaTrace_WriteLog(0xDu, __str, v24, v25, 1);
            }
          }

          else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v26 = mach_continuous_time();
            v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AfterInit\n", (*&g_MacClockTicksToMsRelation * v26), "HAL", 69, "Hal01_01HandleInitReq", 1286);
            v25 = 0;
            goto LABEL_39;
          }

LABEL_40:
          (*(a1 + 16))(3, v8);
          goto LABEL_41;
        }

        if (Hal01_GetRevisionInfo(v8, *(a1 + 16), 0))
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v21 = mach_continuous_time();
            v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v21), "HAL", 73, "Hal01_01HandleInitReq", 1285);
            LbsOsaTrace_WriteLog(0xDu, __str, v22, 4, 1);
          }

LABEL_33:
          *v8 = 2;
          *(v8 + 1) = v29;
          goto LABEL_34;
        }
      }

LABEL_41:
      free(v8);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "HAL", 69, "Hal01_01HandleInitReq", 517);
    LbsOsaTrace_WriteLog(0xDu, __str, v16, 0, 1);
  }

  v27 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Hal01_03WriteDataToChip(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:HAL_WRITE_DATA_MSG\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 68, "Hal01_03WriteDataToChip");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 5, 1);
  }

  if (g_IsFSMDeInit == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DeInitState\n");
LABEL_12:
      LbsOsaTrace_WriteLog(0xDu, __str, v4, 0, 1);
    }
  }

  else if (a1)
  {
    Hal22_ZxSendToChip(*(a1 + 16), *(a1 + 24));
    v5 = *(a1 + 16);
    if (v5)
    {
      free(v5);
    }

    *(a1 + 16) = 0;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_12;
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Hal01_02HandleDeInitReq(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:HAL_DEINIT_MSG\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal01_02HandleDeInitReq");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 73, "Hal01_02HandleDeInitReq");
    LbsOsaTrace_WriteLog(0xDu, __str, v5, 4, 1);
  }

  if (a1)
  {
    g_IsFSMDeInit = 1;
    v6 = gnssOsa_Calloc("Hal01_02HandleDeInitReq", 245, 1, 0xB8uLL);
    if (v6)
    {
      v7 = v6;
      *v6 = 6;
      Hal22_DeInitializeConn();
      v8 = *(a1 + 16);
      if (v8)
      {
        v8(4, v7);
      }

      free(v7);
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "HAL", 73, "Hal01_02HandleDeInitReq");
        v11 = 4;
LABEL_13:
        LbsOsaTrace_WriteLog(0xDu, __str, v10, v11, 1);
      }
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "HAL", 69, "Hal01_02HandleDeInitReq", 517);
    v11 = 0;
    goto LABEL_13;
  }

  v13 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Hal01_HandleGnssBBResetReq(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:E_HAL_GNSSBASEBAND_RESET_MSG\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal01_HandleGnssBBResetReq");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  v22 = 0;
  if (Hal22_GetHwRevisionAfterInit(&v22))
  {
    v4 = v22;
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xDu, 2, 0, 0);
    if (v4 == 16)
    {
      if (!IsLoggingAllowed)
      {
        goto LABEL_13;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Cpcpu noComms\n");
    }

    else
    {
      if (!IsLoggingAllowed)
      {
        goto LABEL_13;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MEcpu noComms\n");
    }

    v8 = v6;
    v9 = 2;
  }

  else
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
    {
      goto LABEL_13;
    }

    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Awake CP/ME cpu\n", (*&g_MacClockTicksToMsRelation * v7), "HAL", 73, "Hal01_PingCpus");
    v9 = 4;
  }

  LbsOsaTrace_WriteLog(0xDu, __str, v8, v9, 1);
LABEL_13:
  if (a1)
  {
    if ((g_HwProduct - 1) >= 3)
    {
      if (g_HwProduct == 4 || !g_HwProduct)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v14 = mach_continuous_time();
          v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Triggering GnssBB reset\n", (*&g_MacClockTicksToMsRelation * v14), "HAL", 73, "Hal01_HandleGnssBBResetReq");
          LbsOsaTrace_WriteLog(0xDu, __str, v15, 4, 1);
        }

        if (!Hal17_SoftReset(80, 115))
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Triggering ME Soft Reset\n", (*&g_MacClockTicksToMsRelation * v10), "HAL", 73, "Hal01_HandleGnssBBResetReq");
        LbsOsaTrace_WriteLog(0xDu, __str, v11, 4, 1);
      }

      if (!Hal29_ReqGnssSoftReset())
      {
LABEL_29:
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v18 = mach_continuous_time();
          v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v18), "HAL", 73, "Hal01_HandleGnssBBResetReq", 1304);
          LbsOsaTrace_WriteLog(0xDu, __str, v19, 4, 1);
        }

        (*(a1 + 16))(7);
        goto LABEL_32;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "HAL", 69, "Hal01_HandleGnssBBResetReq", 1305);
      LbsOsaTrace_WriteLog(0xDu, __str, v17, 0, 1);
    }

    (*(a1 + 16))(8);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "HAL", 69, "Hal01_HandleGnssBBResetReq", 517);
    LbsOsaTrace_WriteLog(0xDu, __str, v13, 0, 1);
  }

LABEL_32:
  v20 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t HAL01_09HandleLPEvent(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:HAL_LOW_POWER_MSG\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 68, "HAL01_09HandleLPEvent");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 68, "HAL01_09HandleLPEvent");
    LbsOsaTrace_WriteLog(0xDu, __str, v5, 5, 1);
  }

  if (g_IsFSMDeInit == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DeInitState\n");
LABEL_13:
      v8 = v6;
      v9 = 0;
      goto LABEL_14;
    }
  }

  else if (a1)
  {
    Hal26_SendLPResponse(*(a1 + 12));
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "HAL", 68, "HAL01_09HandleLPEvent");
      v9 = 5;
LABEL_14:
      LbsOsaTrace_WriteLog(0xDu, __str, v8, v9, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_13;
  }

  v10 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t HAL01_09HandleLPAllowReq(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:HAL_LOW_POWER_ALLOW_MSG\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "HAL01_09HandleLPAllowReq");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx config UartLP NA \n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 73, "HAL01_09HandleLPAllowReq", 264);
      LbsOsaTrace_WriteLog(0xDu, __str, v5, 4, 1);
    }

    if (off_2A19268B0)
    {
      off_2A19268B0(0);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 69, "HAL01_09HandleLPAllowReq", 517);
    LbsOsaTrace_WriteLog(0xDu, __str, v7, 0, 1);
  }

  v8 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Hal01_HandleSetPowerReport(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:HAL_SET_POWER_RPT_MSG\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal01_HandleSetPowerReport");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  __s[0] = 0;
  memset_s(__s, 0xB8uLL, 0, 0xB8uLL);
  __s[0] = 0;
  if (a1)
  {
    __s[0] = *(a1 + 12);
    if (Hal32_SetPowerReport(__s[0]))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        if (*(a1 + 12))
        {
          v5 = "En";
        }

        else
        {
          v5 = "Dis";
        }

        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Failed,%s\n", v4, "HAL", 69, "Hal01_HandleSetPowerReport", 257, v5);
        v7 = 0;
LABEL_17:
        LbsOsaTrace_WriteLog(0xDu, __str, v6, v7, 1);
      }
    }

    else
    {
      __s[0] |= 2u;
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        if (*(a1 + 12))
        {
          v11 = "En";
        }

        else
        {
          v11 = "Dis";
        }

        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Success,%s\n", v10, "HAL", 73, "Hal01_HandleSetPowerReport", v11);
        v7 = 4;
        goto LABEL_17;
      }
    }

    (*(a1 + 16))(5, __s);
    goto LABEL_19;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "HAL", 69, "Hal01_HandleSetPowerReport", 517);
    LbsOsaTrace_WriteLog(0xDu, __str, v9, 0, 1);
  }

LABEL_19:
  v12 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Hal01_HandleTMPulseTrig(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:HAL_TRIG_TIMEMARK_PULSE_MSG\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal01_HandleTMPulseTrig");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      goto LABEL_11;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
LABEL_10:
    LbsOsaTrace_WriteLog(0xDu, __str, v5, 0, 1);
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      goto LABEL_11;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimeMarkPulseCb\n");
    goto LABEL_10;
  }

  *__str = 0;
  v4 = Hal25_TriggerTimeMarkStrobe(__str);
  (*(a1 + 16))(*__str, v4);
LABEL_11:
  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Hal01_HandleSetCfgReq(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v1 = *(a1 + 16);
    g_PltHWSettings = *(a1 + 12);
    dword_2A1939D14 = v1;
    memmove(&unk_2A1939D18, (a1 + 20), 0xF4uLL);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 69, "Hal01_HandleSetCfgReq", 517);
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 0, 1);
  }

  v4 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Hal01_HandleStackDumpReq(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    HAL34_StackDumpReq(*(a1 + 12));
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v1), "HAL", 69, "Hal01_HandleStackDumpReq", 517);
    LbsOsaTrace_WriteLog(0xDu, __str, v2, 0, 1);
  }

  v3 = *MEMORY[0x29EDCA608];
  return 0;
}

BOOL Hal01_GetRevisionInfo(char *a1, void (*a2)(uint64_t, char *), int a3)
{
  v28 = *MEMORY[0x29EDCA608];
  v26 = 1;
  v6 = gnssOsa_Calloc("Hal01_GetRevisionInfo", 73, 1, 0xB8uLL);
  if (v6)
  {
    v7 = v6;
    if (a3)
    {
      HwRevisionAfterInit = Hal22_GetHwRevisionAfterInit(&v26);
      v9 = 2;
    }

    else
    {
      HwRevisionAfterInit = Hal22_GetHwRevision(&v26);
      v9 = 1;
    }

    v10 = HwRevisionAfterInit == 0;
    if (HwRevisionAfterInit)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "HAL", 69, "Hal01_GetRevisionInfo", 1286);
        LbsOsaTrace_WriteLog(0xDu, __str, v12, 0, 1);
      }

      v13 = v26;
      *a1 = 3;
      *(a1 + 1) = v13;
      v9 = 3;
      v14 = a1;
    }

    else
    {
      v15 = dword_2A191DCD0;
      *v7 = 4;
      *(v7 + 1) = v15;
      *(v7 + 8) = xmmword_2A191DCC0;
      v16 = unk_2A191DCD8;
      *(v7 + 10) = dword_2A191DCE8;
      *(v7 + 24) = v16;
      v17 = unk_2A191DD28;
      *(v7 + 30) = dword_2A191DD38;
      *(v7 + 104) = v17;
      v18 = *&qword_2A191DCEC;
      *(v7 + 15) = dword_2A191DCFC;
      *(v7 + 44) = v18;
      v19 = *algn_2A191DD3C;
      *(v7 + 35) = dword_2A191DD4C;
      *(v7 + 124) = v19;
      v20 = qword_2A191DD50;
      *(v7 + 76) = word_2A191DD58;
      *(v7 + 18) = v20;
      v21 = qword_2A191DD00;
      *(v7 + 36) = word_2A191DD08;
      *(v7 + 8) = v21;
      v22 = qword_2A191DD14;
      *(v7 + 46) = word_2A191DD1C;
      *(v7 + 84) = v22;
      v23 = unk_2A191DD64;
      *(v7 + 86) = word_2A191DD6C;
      *(v7 + 164) = v23;
      v14 = v7;
    }

    a2(v9, v14);
    free(v7);
  }

  else
  {
    v10 = 0;
  }

  v24 = *MEMORY[0x29EDCA608];
  return v10;
}

void Geo2ECEF(uint64_t a1, uint64_t a2, double *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 16);
  v7 = __sincos_stret(*a1);
  v8 = *(a2 + 8) / sqrt(-(*(a2 + 24) * v7.__sinval) * v7.__sinval + 1.0);
  v9 = v7.__cosval * (v6 + v8);
  v10 = cos(*(a1 + 8)) * v9;
  *a3 = v10;
  v11 = sin(*(a1 + 8)) * v9;
  a3[1] = v11;
  v12 = v7.__sinval * (v6 + v8 * *(a2 + 40));
  a3[2] = v12;
  if (*a2)
  {
    v13.f64[0] = v10 - *(a2 + 48);
    *a3 = v13.f64[0];
    v14 = v11 - *(a2 + 56);
    a3[1] = v14;
    v15 = v12 - *(a2 + 64);
    a3[2] = v15;
    if (*(a2 + 2) == 1)
    {
      v16 = 0;
      v17 = (a2 + 88);
      do
      {
        v18 = v14 * *(v17 - 1) + *(v17 - 2) * v13.f64[0];
        v19 = *v17;
        v17 += 3;
        v21.f64[v16++] = v18 + v19 * v15;
      }

      while (v16 != 3);
      v13.f64[1] = v14;
      *a3 = vsubq_f64(v13, v21);
      a3[2] = v15 - v22;
    }
  }

  v20 = *MEMORY[0x29EDCA608];
}

void *GncS04_00InitClientInstance(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v16 = *MEMORY[0x29EDCA608];
  bzero(__src, 0x50D0CuLL);
  for (i = 0; i != 264; i += 132)
  {
    v7 = &__src[i];
    v7[28] = 0;
    *(v7 + 15) = 0;
    *(v7 + 4) = 0;
    *(v7 + 10) = -1;
    *(v7 + 22) = 0;
    *(v7 + 3) = xmmword_2997286D0;
    *(v7 + 8) = 0;
    *(v7 + 9) = 0;
    *(v7 + 78) = 0;
    *(v7 + 43) = -1;
    v7[88] = 0;
    *(v7 + 23) = 0;
    *(v7 + 12) = -1;
    *(v7 + 13) = 0;
    *(v7 + 28) = -1;
    v7[116] = -1;
    *(v7 + 132) = -1;
    *(v7 + 125) = -1;
    *(v7 + 118) = -1;
    *(v7 + 140) = 0x7FFFFFFFLL;
    v7[148] = 0;
    *(v7 + 75) = -1;
    *(v7 + 19) = -COERCE_DOUBLE(0x8000000080000000);
  }

  v8 = &__src[292];
  v9 = 330624;
  do
  {
    s_GncS_CacheMeasData::s_GncS_CacheMeasData(v8);
    v8 = (v10 + 165312);
    v9 -= 165312;
  }

  while (v9);
  v11 = &__src[330916];
  v12 = 104;
  do
  {
    *v11 = 0;
    *(v11 + 1) = 0;
    v11[4] = 0;
    *(v11 + 2) = 0;
    *(v11 + 3) = 0;
    *(v11 + 1) = 0;
    *(v11 + 30) = 0;
    *(v11 + 5) = 0;
    *(v11 + 47) = 0;
    v11 += 52;
    v12 -= 52;
  }

  while (v12);
  result = memcpy(g_GncSFGClientData, __src, 0x50D0CuLL);
  g_GncSConfig = 65536000;
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void GncS04_07SndDbgNmea(char *a1, size_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("GncS04_07SndDbgNmea", 207, 1, 0x18uLL);
  if (!v4)
  {
LABEL_6:
    v9 = *MEMORY[0x29EDCA608];
    return;
  }

  v5 = v4;
  v6 = gnssOsa_Calloc("GncS04_07SndDbgNmea", 216, (a2 + 1), 1uLL);
  v5[2] = v6;
  if (v6)
  {
    memcpy_s("GncS04_07SndDbgNmea", 223, v6, (a2 + 1), a1, a2);
    *(v5 + 6) = a2;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_NMEA_DATA_IND =>GNM Len,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 73, "GncS04_07SndDbgNmea", *(v5 + 6));
      LbsOsaTrace_WriteLog(8u, __str, v8, 4, 1);
    }

    AgpsSendFsmMsg(130, 128, 8521475, v5);
    goto LABEL_6;
  }

  v10 = *MEMORY[0x29EDCA608];

  free(v5);
}

void GncS04_08SndStartPosNmea(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = g_GncSConfig;
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(1u, 4, 0, 0);
  if ((IsLoggingAllowed & 1) != 0 || (v2 & 0x200) != 0)
  {
    bzero(__str, 0x400uLL);
    v5 = mach_continuous_time();
    v8 = snprintf(__str, 0x400uLL, "$PDPSS,%u,%u,%u,%u,%d,%u,%u,%u,%u,%u", (*&g_MacClockTicksToMsRelation * v5), *(a1 + 2), *(a1 + 4), *(a1 + 49), *(a1 + 20), *(a1 + 24), *(a1 + 28), *(a1 + 34), *(a1 + 36), *(a1 + 32));
    if (HswUtil_AddNmeaCS(__str, 0x400u, &v8))
    {
      if (IsLoggingAllowed)
      {
        LbsOsaTrace_PrintAsciiBuf(1u, 4u, 0, __str, v8);
      }

      if ((v2 & 0x200) != 0)
      {
        GncS04_07SndDbgNmea(__str, v8);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(v9, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(v9, 0x40FuLL, "%10u %s%c %s: #%04hx BytesWritten,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 69, "GncS04_08SndStartPosNmea", 772, v8);
      LbsOsaTrace_WriteLog(8u, v9, v7, 0, 1);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void GncS04_20SendUpdateToGncpe(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  BYTE8(v5) = 0;
  *&v5 = 0;
  BYTE12(v5) = 1;
  HIWORD(v5) = *(a1 + 2);
  v6 = *(a1 + 32) & 0xF;
  v7 = *(a1 + 8);
  v16 = *(a1 + 50);
  v1 = *(a1 + 4);
  if (*(a1 + 4))
  {
    v1 = *(a1 + 28);
  }

  v2 = *(a1 + 12);
  v8 = v1;
  v9 = v2;
  v3 = *(a1 + 34);
  v10 = *(a1 + 24);
  v11 = v3;
  v12 = 0;
  v13 = *(a1 + 33);
  v14 = 1;
  v15 = *(a1 + 49);
  GncS03_07PosEventUpdate(&v5);
  v4 = *MEMORY[0x29EDCA608];
}

uint64_t GncS04_29GetRespUpdtStat(uint64_t a1, int a2, _BYTE *a3, BOOL *a4, _BYTE *a5)
{
  v40 = *MEMORY[0x29EDCA608];
  if (!a5)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
LABEL_18:
      LbsOsaTrace_WriteLog(8u, __str, v17, 2, 1);
    }

LABEL_19:
    v24 = 0;
    goto LABEL_34;
  }

  if (*(a1 + 4) - 1 >= 2)
  {
    if (!*(a1 + 4))
    {
      v18 = *(a1 + 20) == 1;
      if (*(a1 + 16))
      {
        v19 = *(a1 + 8);
        v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v19;
        if (HIWORD(g_GncSConfig) + v20 + 30 > *(a1 + 16))
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v21 = mach_continuous_time();
            v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PeriodicSessStopTm,%u,TimeElapsed,%u\n", (*&g_MacClockTicksToMsRelation * v21), "GNC", 73, "GncS04_29GetRespUpdtStat", *(a1 + 16), v20);
            v18 = 1;
            LbsOsaTrace_WriteLog(8u, __str, v22, 4, 1);
          }

          else
          {
            v18 = 1;
          }
        }
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v36 = mach_continuous_time();
        v24 = 1;
        v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Periodc ID,%u,Qual,%hhu,IsFinal,%u,SndUpdt,%u\n", (*&g_MacClockTicksToMsRelation * v36), "GNC", 73, "GncS04_29GetRespUpdtStat", *(a1 + 2), a2, v18, 1);
        LbsOsaTrace_WriteLog(8u, __str, v37, 4, 1);
        v25 = 0;
        v31 = 0;
      }

      else
      {
        v25 = 0;
        v31 = 0;
        v24 = 1;
      }

      goto LABEL_30;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v23 = mach_continuous_time();
      v38 = *(a1 + 4);
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionType,%hhu\n", (*&g_MacClockTicksToMsRelation * v23));
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v10 = *(a1 + 8);
  v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v10;
  if (a2 == 1 && !*(a1 + 48))
  {
    v25 = 0;
  }

  else
  {
    v12 = v11 + 30;
    if ((v11 + 30) < *(a1 + 28))
    {
      LatestUpdtOsTime = GncP_GetLatestUpdtOsTime();
      if (LatestUpdtOsTime)
      {
        v14 = LatestUpdtOsTime;
        v15 = mach_continuous_time();
        v16 = HIWORD(g_GncSConfig);
        if ((*&g_MacClockTicksToMsRelation * v15) - v14 <= HIWORD(g_GncSConfig))
        {
          v11 = v14 - *(a1 + 8);
          v12 = v11 + 30;
        }
      }

      else
      {
        v16 = HIWORD(g_GncSConfig);
      }

      v25 = (v12 + v16) > *(a1 + 28);
      v26 = v25;
      goto LABEL_25;
    }

    v25 = 1;
  }

  v26 = 1;
LABEL_25:
  v27 = *(a1 + 4);
  v28 = v27 == 1;
  v29 = v27 != 1;
  v30 = v28;
  LOBYTE(v18) = v30 | v26;
  v31 = v26 ^ 1;
  v24 = v29 | v26;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v32 = mach_continuous_time();
    v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SS ID,%u,Qual,%hhu,IsFinal,%u,SndUpdt,%u,TimeElapsed,%u,RespTime,%u\n", (*&g_MacClockTicksToMsRelation * v32), "GNC", 73, "GncS04_29GetRespUpdtStat", *(a1 + 2), a2, v18 & 1, v24 & 1, v11, *(a1 + 28));
    LbsOsaTrace_WriteLog(8u, __str, v33, 4, 1);
  }

LABEL_30:
  *a5 = v18 & 1;
  if (a3)
  {
    *a3 = v31;
  }

  if (a4)
  {
    *a4 = v25;
  }

LABEL_34:
  v34 = *MEMORY[0x29EDCA608];
  return v24 & 1;
}

void GncS04_33SessStopAckTimrExpiry(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if (byte_2A18CCF48 == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v0 = mach_continuous_time();
      v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NoResp from GNCP\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 87, "GncS04_33SessStopAckTimrExpiry");
      LbsOsaTrace_WriteLog(8u, __str, v1, 2, 1);
    }

    byte_2A18CCF48 = 0;
    GncS04_31ChkSendPendingStopAck(0);
  }

  v2 = *MEMORY[0x29EDCA608];
}

uint64_t GncS04_31ChkSendPendingStopAck(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v9 = *MEMORY[0x29EDCA608];
  v3 = 1;
  do
  {
    v4 = v3;
    if (g_GncSFGClientData[52 * v2 + 330916] == 3)
    {
      GncS04_21SendStopPosResp(v1, *&g_GncSFGClientData[52 * v2 + 330918]);
      result = GncS04_05DeRegClient(v2);
    }

    v3 = 0;
    v2 = 1;
  }

  while ((v4 & 1) != 0);
  if (byte_2A18CCF48)
  {
    result = AgpsFsmStopTimer(8523270);
    if (result)
    {
      result = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 87, "GncS04_31ChkSendPendingStopAck", 1545);
        result = LbsOsaTrace_WriteLog(8u, __str, v6, 2, 1);
      }
    }

    byte_2A18CCF48 = 0;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void GncS04_36SessStartAckTimrExp(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if (byte_2A18CCF40 == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v0 = mach_continuous_time();
      v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NoResp from GNCP\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 87, "GncS04_36SessStartAckTimrExp");
      LbsOsaTrace_WriteLog(8u, __str, v1, 2, 1);
    }

    byte_2A18CCF40 = 0;
    GncS04_35ChkSendPendingStartAck(0);
  }

  v2 = *MEMORY[0x29EDCA608];
}

void GncS04_35ChkSendPendingStartAck(int a1)
{
  v2 = 0;
  *&v13[251] = *MEMORY[0x29EDCA608];
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = &g_GncSFGClientData[52 * v2 + 330916];
    if (*v5 == 2)
    {
      GncS04_22SendStartPosResp(a1, *&g_GncSFGClientData[52 * v2 + 330918]);
      if (a1 == 255)
      {
        *v5 = 1;
      }

      else
      {
        v6 = *&g_GncSFGClientData[52 * v2 + 330918];
        __str[8] = 0;
        *__str = 0;
        v11 = 0;
        *v13 = 0;
        v12 = 0;
        *(&v13[1] + 3) = 0;
        __str[12] = 1;
        *&__str[14] = v6;
        __str[16] = 0;
        GncS03_07PosEventUpdate(__str);
        GncS04_05DeRegClient(v2);
      }
    }

    v3 = 0;
    v2 = 1;
  }

  while ((v4 & 1) != 0);
  if (byte_2A18CCF40)
  {
    if (AgpsFsmStopTimer(8523014) && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 87, "GncS04_35ChkSendPendingStartAck", 1545);
      LbsOsaTrace_WriteLog(8u, __str, v8, 2, 1);
    }

    byte_2A18CCF40 = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
}

void GncS04_41SendNavData(__int16 a1, char a2, char a3, _DWORD *a4)
{
  v23 = *MEMORY[0x29EDCA608];
  v8 = gnssOsa_Calloc("GncS04_41SendNavData", 1339, 1, 0x20uLL);
  if (!v8)
  {
LABEL_8:
    v15 = *MEMORY[0x29EDCA608];
    return;
  }

  v9 = v8;
  v10 = gnssOsa_Calloc("GncS04_41SendNavData", 1345, 1, 0x1738uLL);
  v9[3] = v10;
  if (v10)
  {
    *(v9 + 3) = *a4;
    *(v9 + 8) = a1;
    *(v9 + 18) = a2;
    *(v9 + 19) = a3;
    memcpy(v10, a4 + 2, 0x1738uLL);
    v11 = g_GncSConfig;
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(1u, 4, 0, 0);
    if ((IsLoggingAllowed & 1) != 0 || (v11 & 0x200) != 0)
    {
      bzero(v22, 0x400uLL);
      v17 = v9[3];
      v20 = snprintf(v22, 0x400uLL, "$PDPPR,%u,%u,%u,%.9f,%.9f,%f,%.12f,%.12f,%u,%u,%u,%u,%u,%u", *(v9 + 3), *v17, *(v9 + 8), *(v17 + 104), *(v17 + 112), *(v17 + 128), *(v17 + 40), *(v17 + 32), *(v17 + 306), *(v17 + 307), *(v17 + 296), *(v17 + 304), *(v17 + 289), *(v17 + 300));
      if (HswUtil_AddNmeaCS(v22, 0x400u, &v20))
      {
        if (IsLoggingAllowed)
        {
          LbsOsaTrace_PrintAsciiBuf(1u, 4u, 0, v22, v20);
        }

        if ((v11 & 0x200) != 0)
        {
          GncS04_07SndDbgNmea(v22, v20);
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BytesWritten,%u\n", (*&g_MacClockTicksToMsRelation * v18), "GNC", 69, "GncS04_40SndNavRespNmea", 772, v20);
        LbsOsaTrace_WriteLog(8u, __str, v19, 0, 1);
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_NAV_DATA_IND =>GNM ID,%u,OSTTick,%u,BBTick,%u,Valid,%u,VSF,%u,SVView,%u,SVUsed,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 73, "GncS04_41SendNavData", *(v9 + 8), *(v9 + 3), *v9[3], *(v9 + 19), *(v9[3] + 289), *(v9[3] + 306), *(v9[3] + 307));
      LbsOsaTrace_WriteLog(8u, __str, v14, 4, 1);
    }

    AgpsSendFsmMsg(130, 128, 8520707, v9);
    goto LABEL_8;
  }

  v16 = *MEMORY[0x29EDCA608];

  free(v9);
}

uint64_t GncS04_42GetValidNavDataCopy(uint64_t a1, int a2, unsigned int a3)
{
  v19 = *MEMORY[0x29EDCA608];
  GncP_GetNavData(a1);
  if (*(a1 + 20))
  {
    if ((*a1 - a2) >= 0x3E9)
    {
      v6 = a2 - *a1;
    }

    else
    {
      v6 = 0;
    }

    if (v6 <= HIWORD(g_GncSConfig) + 900)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v10 = 1;
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NavData PosDataAge,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 68, "GncS04_42GetValidNavDataCopy", v6);
        v13 = 5;
LABEL_14:
        LbsOsaTrace_WriteLog(8u, __str, v12, v13, 1);
        goto LABEL_16;
      }
    }

    else
    {
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0);
      if (v6 > a3)
      {
        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NavData NA PosDataAge,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GncS04_42GetValidNavDataCopy", v6);
          LbsOsaTrace_WriteLog(8u, __str, v9, 4, 1);
        }

        goto LABEL_9;
      }

      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NavData AllwdAge,%u,PosDataAge,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 73, "GncS04_42GetValidNavDataCopy", a3, v6);
        v10 = 1;
        v12 = v15;
        v13 = 4;
        goto LABEL_14;
      }
    }

    v10 = 1;
    goto LABEL_16;
  }

LABEL_9:
  v10 = 0;
LABEL_16:
  v16 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t GncS04_65PopulateMeasData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v53 = *MEMORY[0x29EDCA608];
  *(a4 + 12) = *(a2 + 12);
  *(a4 + 165204) = *(a2 + 165204);
  v7 = *(a2 + 165208);
  v8 = *(a2 + 165224);
  v9 = *(a2 + 165240);
  *(a4 + 165256) = *(a2 + 165256);
  *(a4 + 165224) = v8;
  *(a4 + 165240) = v9;
  *(a4 + 165208) = v7;
  *(a4 + 165260) = *(a2 + 165260);
  v10 = *(a2 + 165264);
  *(a4 + 165272) = *(a2 + 165272);
  *(a4 + 165264) = v10;
  *(a4 + 684) = *(a2 + 684);
  *(a4 + 688) = *(a2 + 688);
  *(a4 + 700) = *(a2 + 700);
  *(a4 + 710) = *(a2 + 710);
  *(a4 + 712) = *(a2 + 712);
  *(a4 + 692) = *(a3 + 12);
  *(a4 + 696) = *(a3 + 10);
  *(a4 + 698) = *(a3 + 8);
  *(a4 + 699) = *(a3 + 16);
  v11 = *(a3 + 20);
  *(a4 + 704) = v11;
  if (*(a2 + 720))
  {
    v13 = 0;
    if (*(a2 + 720) >= 0x10u)
    {
      v14 = 16;
    }

    else
    {
      v14 = *(a2 + 720);
    }

    v15 = (a2 + 736);
    while (1)
    {
      v16 = a2 + 724 + 10280 * v13;
      if (*v16 == v11)
      {
        if (*(v16 + 4))
        {
          break;
        }
      }

LABEL_21:
      ++v13;
      v15 += 10280;
      if (v13 == v14)
      {
        LOBYTE(v13) = v14;
        goto LABEL_33;
      }
    }

    v17 = 0;
    v18 = v16 + 8;
    if (*(v16 + 4) - 1 >= 7)
    {
      v19 = 7;
    }

    else
    {
      v19 = (*(v16 + 4) - 1);
    }

    v20 = (v19 + 1);
    v21 = v15;
    while (1)
    {
      v22 = v18 + 1284 * v17;
      if (*v22 == *(a3 + 24))
      {
        LODWORD(v22) = *(v22 + 2);
        if (v22)
        {
          break;
        }
      }

LABEL_20:
      ++v17;
      v21 += 1284;
      if (v17 == v20)
      {
        goto LABEL_21;
      }
    }

    v23 = 0;
    if (v22 >= 0x40)
    {
      v22 = 64;
    }

    else
    {
      v22 = v22;
    }

    v24 = v21;
    while (*v24 != *(a3 + 25))
    {
      ++v23;
      v24 += 20;
      if (v22 == v23)
      {
        goto LABEL_20;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v25 = mach_continuous_time();
      v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Found SVId,%u,Idx,%u,SgnlIdx,%u,GnssIdx,%u\n", (*&g_MacClockTicksToMsRelation * v25), "GNC", 73, "GncS04_64PopulateGnssSvMeas", *(a3 + 25), v23, v17, v13);
      LbsOsaTrace_WriteLog(8u, __str, v26, 4, 1);
    }

    *(a4 + 720) = 1;
    *(a4 + 724) = *v16;
    *(a4 + 728) = *(v16 + 4);
    v27 = v18 + 1284 * v17;
    *(a4 + 732) = *v27;
    *(a4 + 733) = *(v27 + 1);
    v28 = *v24;
    *(a4 + 752) = *(v24 + 4);
    *(a4 + 736) = v28;
    v29 = *(v27 + 2);
    if (*(v27 + 2))
    {
      v30 = 0;
      v31 = 0;
      do
      {
        if (v23)
        {
          v32 = a4 + 736 + 20 * ++v31;
          v33 = *v21;
          *(v32 + 16) = *(v21 + 4);
          *v32 = v33;
          v29 = *(v27 + 2);
        }

        if (v30 > 0x3E)
        {
          break;
        }

        ++v30;
        v21 += 20;
        --v23;
      }

      while (v30 < v29);
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v34 = mach_continuous_time();
      v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GnssId,%u,NumSVMeas,%u,NumSgnl,%u,NumGnss,%u\n", (*&g_MacClockTicksToMsRelation * v34), "GNC", 73, "GncS04_64PopulateGnssSvMeas", *(a4 + 724), *(a4 + 734), *(a4 + 728), *(a4 + 720));
      LbsOsaTrace_WriteLog(8u, __str, v35, 4, 1);
    }

LABEL_33:
    v6 = a1;
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  v36 = *(a2 + 720);
  if (*(a2 + 720))
  {
    v37 = *(a4 + 720);
    if (v37 <= 0xF)
    {
      v38 = 0;
      v39 = (a2 + 724);
      v40 = a4 + 724;
      v41 = v13;
      do
      {
        if (v41 && (*v39 & *(v6 + 33)) != 0)
        {
          memcpy((v40 + 10280 * v37), v39, 0x2828uLL);
          ++*(a4 + 720);
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v42 = mach_continuous_time();
            v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GnssId,%u,NumSVMeas,%u,NumSgnl,%u,NumGnss,%u,Idx,%u\n", (*&g_MacClockTicksToMsRelation * v42), "GNC", 73, "GncS04_64PopulateGnssSvMeas", *(v40 + 10280 * v37), *(v40 + 10280 * v37 + 10), *(a4 + 728), *(a4 + 720), v37);
            LbsOsaTrace_WriteLog(8u, __str, v43, 4, 1);
          }

          ++v37;
          v36 = *(a2 + 720);
        }

        if (v38 > 0xE)
        {
          break;
        }

        if (++v38 >= v36)
        {
          break;
        }

        v39 += 2570;
        --v41;
      }

      while (v37 < 0x10);
    }
  }

  result = LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v45 = mach_continuous_time();
    v46 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TotalGnss,%u,UsedGnss,%u,ConstMask,%u\n", (*&g_MacClockTicksToMsRelation * v45), "GNC", 73, "GncS04_64PopulateGnssSvMeas", *(a2 + 720), *(a4 + 720), *(v6 + 33));
    result = LbsOsaTrace_WriteLog(8u, __str, v46, 4, 1);
  }

  if (*(a4 + 720))
  {
    *(a4 + 16) |= 2u;
    v47 = 1;
  }

  else
  {
    v47 = 7;
  }

  *(a4 + 680) = v47;
  if ((*(v6 + 33) & 1) != 0 && *(a2 + 37))
  {
    memcpy((a4 + 20), (a2 + 20), 0x292uLL);
    *(a4 + 16) |= 1u;
    *(a4 + 32) = 1;
    result = LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v48 = mach_continuous_time();
      v49 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NumGpsMeas,%u\n", (*&g_MacClockTicksToMsRelation * v48), "GNC", 73, "GncS04_65PopulateMeasData", *(a4 + 37));
      result = LbsOsaTrace_WriteLog(8u, __str, v49, 4, 1);
    }
  }

  else
  {
    *(a4 + 32) = 7;
  }

  v50 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL GncS04_71CheckAgeLimitCond(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v8 = v7;
  v9 = v6;
  v98 = *MEMORY[0x29EDCA608];
  v61[0] = 0;
  *v62 = 0;
  *(&v62[1] + 3) = 0;
  *&v62[5] = 0;
  *&v62[3] = 0;
  v63 = 0;
  v78 = 0u;
  memset(v79, 0, sizeof(v79));
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  bzero(v80, 0x28CuLL);
  for (i = 0; i != 384; i += 3)
  {
    v11 = v61 + i;
    *(v11 + 478) = 0;
    v11[958] = v80[i + 654] & 0xE0;
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v12 = &g_GncSFGClientData[52 * v8 + 330916];
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  *&v80[1036] = 0u;
  v81 = 0u;
  bzero(&v96, 0x1109uLL);
  v13 = &g_GncSFGClientData[52 * v8 + 330948];
  if ((v12[32] & 0xC) != 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(v97, 0x410uLL);
      v14 = mach_continuous_time();
      v51 = *(v12 + 1);
      v53 = v12[32];
      v15 = snprintf(v97, 0x40FuLL, "%10u %s%c %s: AgeLimit NA ID,%u,PosOutput,%u\n", (*&g_MacClockTicksToMsRelation * v14));
LABEL_29:
      v29 = 1;
      goto LABEL_30;
    }

    goto LABEL_45;
  }

  if ((GncS04_42GetValidNavDataCopy(v61, v9, *(v12 + 11)) & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(v97, 0x410uLL);
      mach_continuous_time();
      v52 = *(v12 + 1);
      v15 = snprintf(v97, 0x40FuLL, "%10u %s%c %s: NavData NA ID,%u\n");
      goto LABEL_29;
    }

    goto LABEL_45;
  }

  v16 = *(v12 + 11);
  v17 = *(v12 + 18);
  if (*(v12 + 17))
  {
    v18 = *(v12 + 17);
  }

  else
  {
    v18 = 100;
  }

  if (*(v12 + 18))
  {
    v19 = *(v12 + 18);
  }

  else
  {
    v19 = 150;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(v97, 0x410uLL);
    v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v21 = v61[0];
    v22 = mach_continuous_time();
    v23 = snprintf(v97, 0x40FuLL, "%10u %s%c %s: CurrPos Age,%u,VSF,%u,HAcc,%f,VAcc,%f\n", v20, "GNC", 73, "GncS04_70QualifyNavForAgeLimit", (*&g_MacClockTicksToMsRelation * v22) - v21, v79[17], *(&v74 + 1), *&v74);
    LbsOsaTrace_WriteLog(8u, v97, v23, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(v97, 0x410uLL);
    v24 = mach_continuous_time();
    v25 = snprintf(v97, 0x40FuLL, "%10u %s%c %s: SessReq Age,%u,HAcc,%u,VAcc,%u\n", (*&g_MacClockTicksToMsRelation * v24), "GNC", 73, "GncS04_70QualifyNavForAgeLimit", v16, v18, v19);
    LbsOsaTrace_WriteLog(8u, v97, v25, 4, 1);
  }

  v26 = v61[0];
  if (!v61[0])
  {
    goto LABEL_24;
  }

  v27 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v28 = v27 - v26;
  if (v26 - v27 < 0x3E9)
  {
    v28 = 0;
  }

  if (v28 >= v16 || v79[17] != 1 || *(&v74 + 1) > v18 || *&v74 > v19)
  {
LABEL_24:
    v29 = 1;
    goto LABEL_25;
  }

  GncS04_22SendStartPosResp(255, *(v12 + 1));
  v31 = *v13;
  v29 = (*v13 & 1) == 0;
  if (*v13)
  {
    GncS04_41SendNavData(*(v12 + 1), 1, 1, v61);
    v31 = *v13;
  }

  if ((v31 & 2) != 0)
  {
    v32 = 0;
    v54 = 0;
    *v55 = -1;
    *&v55[4] = 0;
    *&v55[8] = xmmword_2997286D0;
    *&v55[24] = 0;
    *&v56 = 0;
    *(&v56 + 6) = 0;
    HIWORD(v56) = -1;
    LOBYTE(v57) = 0;
    DWORD1(v57) = 0;
    *(&v57 + 1) = -1;
    *v58 = 0;
    *&v58[8] = -1;
    *&v58[28] = -1;
    *&v58[14] = -1;
    *&v58[21] = -1;
    v58[12] = -1;
    *&v58[36] = 0x7FFFFFFFLL;
    v58[44] = 0;
    *&v58[46] = -1;
    v59 = -COERCE_DOUBLE(0x8000000080000000);
    do
    {
      v33 = &v55[v32 - 8];
      *(v33 + 34) = 0;
      *(v33 + 32) = 0;
      v33[132] = 0;
      v33[140] = -1;
      *(v33 + 71) = -1;
      *(v33 + 36) = -1;
      v33[148] = -1;
      v32 += 28;
      *(v33 + 38) = -1;
    }

    while (v32 != 56);
    v60 = 0;
    GncP_GetGADData(&v54);
    if (*&v55[20] != 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(v97, 0x410uLL);
        v47 = mach_continuous_time();
        v48 = snprintf(v97, 0x40FuLL, "%10u %s%c %s: GADData NA ID,%u\n", (*&g_MacClockTicksToMsRelation * v47), "GNC", 73, "GncS04_71CheckAgeLimitCond", *(v12 + 1));
        LbsOsaTrace_WriteLog(8u, v97, v48, 4, 1);
      }

      goto LABEL_45;
    }

    v34 = gnssOsa_Calloc("GncS04_71CheckAgeLimitCond", 2431, 1, 0x20uLL);
    if (v34)
    {
      v35 = v34;
      v36 = gnssOsa_Calloc("GncS04_71CheckAgeLimitCond", 2437, 1, 0x78uLL);
      v35[3] = v36;
      if (!v36)
      {
        free(v35);
        goto LABEL_45;
      }

      v37 = HIDWORD(v54);
      *(v35 + 3) = v54;
      *(v35 + 8) = *(v12 + 1);
      *(v35 + 9) = 257;
      v38 = *v58;
      v39 = *&v58[32];
      v40 = *&v58[16];
      v36[14] = v59;
      *(v36 + 5) = v40;
      *(v36 + 6) = v39;
      *(v36 + 4) = v38;
      v41 = *v55;
      v42 = *&v55[16];
      v43 = v57;
      *(v36 + 2) = v56;
      *(v36 + 3) = v43;
      *v36 = v41;
      *(v36 + 1) = v42;
      v44 = v35[3];
      *v44 = *(v12 + 1);
      *(v44 + 4) = 1;
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(v97, 0x410uLL);
        v45 = mach_continuous_time();
        v46 = snprintf(v97, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_POS_GAD_IND =>GNM ID,%u,OSTTick,%u,BBTick,%u,Quality,%hhu\n", (*&g_MacClockTicksToMsRelation * v45), "GNC", 73, "GncS04_71CheckAgeLimitCond", *(v35 + 8), *(v35 + 3), v37, 1);
        LbsOsaTrace_WriteLog(8u, v97, v46, 4, 1);
      }

      AgpsSendFsmMsg(130, 128, 8520963, v35);
      v29 = 0;
      goto LABEL_25;
    }

LABEL_45:
    v29 = 1;
    goto LABEL_46;
  }

LABEL_25:
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(v97, 0x410uLL);
    v30 = mach_continuous_time();
    v15 = snprintf(v97, 0x40FuLL, "%10u %s%c %s: SendReqGncP,%u\n", (*&g_MacClockTicksToMsRelation * v30), "GNC", 73, "GncS04_71CheckAgeLimitCond", v29);
LABEL_30:
    LbsOsaTrace_WriteLog(8u, v97, v15, 4, 1);
  }

LABEL_46:
  v49 = *MEMORY[0x29EDCA608];
  return v29;
}

void GncS04_22SendStartPosResp(int a1, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("GncS04_22SendStartPosResp", 447, 1, 0x10uLL);
  if (v4)
  {
    v5 = v4;
    *(v4 + 6) = a2;
    v4[14] = a1;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_START_POS_RSP =>GNM ID,%hu,Code,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncS04_22SendStartPosResp", a2, a1);
      LbsOsaTrace_WriteLog(8u, __str, v7, 4, 1);
    }

    AgpsSendFsmMsg(130, 128, 8519684, v5);
  }

  v8 = *MEMORY[0x29EDCA608];
}

unint64_t GncS04_72SendUpdates()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v255 = *MEMORY[0x29EDCA608];
  result = mach_continuous_time();
  v2 = 0;
  *v224 = (*&g_MacClockTicksToMsRelation * result);
  v3 = 1;
  v221 = v0;
  do
  {
    v4 = v3;
    v5 = &g_GncSFGClientData[52 * v2 + 330916];
    if (*v5)
    {
      v6 = &g_GncSFGClientData[52 * v2 + 330916];
    }

    else
    {
      v6 = 0;
    }

    if (*v5 != 1)
    {
      goto LABEL_152;
    }

    v225 = v3;
    if (!*&g_GncSFGClientData[52 * v2 + 330936])
    {
      result = LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0);
      v4 = v225;
      if (!result)
      {
        goto LABEL_152;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v188 = *&g_GncSFGClientData[52 * v2 + 330918];
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NoUpdt ID,%u,NumFix,0\n");
      goto LABEL_12;
    }

    if (v224[0] - *&g_GncSFGClientData[52 * v2 + 330924] + 30 < *&g_GncSFGClientData[52 * v2 + 330928])
    {
      result = LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0);
      v4 = v225;
      if (!result)
      {
        goto LABEL_152;
      }

      bzero(__str, 0x410uLL);
      v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v199 = *&g_GncSFGClientData[52 * v2 + 330928];
      v187 = *&g_GncSFGClientData[52 * v2 + 330918];
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NoUpdt ID,%u,Unsol,%c,TmElapsed,%u,StartUpdt,%u\n", v7, "GNC");
      goto LABEL_12;
    }

    if (v0)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        goto LABEL_20;
      }

      bzero(__str, 0x410uLL);
      v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v192 = g_GncSFGClientData[52 * v2 + 330920];
      v195 = *&g_GncSFGClientData[52 * v2 + 330956];
      v189 = *&g_GncSFGClientData[52 * v2 + 330918];
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Updt Unsol ID,%u,Type,%hhu,PrevUpdt,%u\n", v11);
      goto LABEL_19;
    }

    v13 = g_GncSFGClientData[52 * v2 + 330920];
    result = LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0);
    if (!v13)
    {
      v0 = v221;
      v4 = v225;
      if (!result)
      {
        goto LABEL_152;
      }

      bzero(__str, 0x410uLL);
      v66 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v194 = g_GncSFGClientData[52 * v2 + 330920];
      v196 = *&g_GncSFGClientData[52 * v2 + 330956];
      v191 = *&g_GncSFGClientData[52 * v2 + 330918];
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NoUpdt ID,%u,Type,%hhu,Unsol,N,PrevUpdt,%u\n", v66);
LABEL_12:
      v9 = v8;
      v10 = 4;
      goto LABEL_151;
    }

    v0 = v221;
    if (!result)
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v200 = *&g_GncSFGClientData[52 * v2 + 330944];
    v190 = *&g_GncSFGClientData[52 * v2 + 330918];
    v193 = g_GncSFGClientData[52 * v2 + 330920];
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Updt ID,%u,Type,%hhu,Unsol,N,TmElapsed,%u,RespTime,%u\n", v14, "GNC");
LABEL_19:
    LbsOsaTrace_WriteLog(8u, __str, v12, 4, 1);
LABEL_20:
    v223 = &g_GncSFGClientData[52 * v2];
    if (v223[330948])
    {
      LOBYTE(v247) = 0;
      *__str = 0;
      *v231 = 0;
      *(&v231[1] + 3) = 0;
      memset(&v231[3], 0, 18);
      memset(&v231[8], 0, 262);
      bzero(&v231[74], 0x28CuLL);
      for (i = 0; i != 384; i += 3)
      {
        v16 = &__str[i];
        *(v16 + 478) = 0;
        v16[958] = *(&v231[237] + i + 2) & 0xE0;
      }

      memset(&v231[333], 0, 256);
      bzero(&v231[398], 0x1109uLL);
      ValidNavDataCopy = GncS04_42GetValidNavDataCopy(__str, v224[0], 0);
      v18 = ValidNavDataCopy;
      if (ValidNavDataCopy)
      {
        if (LOBYTE(v231[1488]))
        {
          if (LOBYTE(v231[1488]) >= 2u)
          {
            v19 = 2;
          }

          else
          {
            v19 = LOBYTE(v231[1488]);
          }

          v20 = &v231[1486] + 1;
          while (*(v20 - 1) != 1 || *v20 != *(v6 + 1))
          {
            v20 += 2;
            if (!--v19)
            {
              goto LABEL_34;
            }
          }

          v21 = *(v20 - 2);
        }

        else
        {
LABEL_34:
          v21 = 2;
          if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
          {
            bzero(&v235, 0x410uLL);
            v22 = mach_continuous_time();
            v23 = snprintf(&v235, 0x40FuLL, "%10u %s%c %s: NavQual Missing ID,%u\n", (*&g_MacClockTicksToMsRelation * v22), "GNC", 87, "GncS04_43UpdateNavSvData", *(v6 + 1));
            LbsOsaTrace_WriteLog(8u, &v235, v23, 2, 1);
          }
        }
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
        {
          bzero(&v235, 0x410uLL);
          v24 = mach_continuous_time();
          v25 = snprintf(&v235, 0x40FuLL, "%10u %s%c %s: NavData NA ID,%u\n", (*&g_MacClockTicksToMsRelation * v24), "GNC", 73, "GncS04_43UpdateNavSvData", *(v6 + 1));
          LbsOsaTrace_WriteLog(8u, &v235, v25, 4, 1);
        }

        v21 = 2;
      }

      RespUpdtStat = GncS04_29GetRespUpdtStat(v6, v21, 0, 0, &v247);
      if (RespUpdtStat)
      {
        GncS04_41SendNavData(*(v6 + 1), v247, v18, __str);
        if (*(v6 + 6) >> 3 >= 0x271u)
        {
          GncS03_08SessRespSentInd(v224[0], v231[0], *(v6 + 1), 0);
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(&v235, 0x410uLL);
        v26 = mach_continuous_time();
        v27 = snprintf(&v235, 0x40FuLL, "%10u %s%c %s: NavData NoUpdt ID,%u\n", (*&g_MacClockTicksToMsRelation * v26), "GNC", 73, "GncS04_43UpdateNavSvData", *(v6 + 1));
        LbsOsaTrace_WriteLog(8u, &v235, v27, 4, 1);
      }

      if ((v223[330948] & 2) == 0)
      {
        goto LABEL_57;
      }
    }

    else
    {
      LOBYTE(RespUpdtStat) = 0;
      if ((v223[330948] & 2) == 0)
      {
        goto LABEL_57;
      }
    }

    v28 = 0;
    v247 = 0;
    LODWORD(v248[0]) = -1;
    WORD2(v248[0]) = 0;
    *(v248 + 8) = xmmword_2997286D0;
    *(&v248[1] + 1) = 0;
    *&v249 = 0;
    *(&v249 + 6) = 0;
    HIWORD(v249) = -1;
    LOBYTE(v250) = 0;
    DWORD1(v250) = 0;
    *(&v250 + 1) = -1;
    *&v251[0] = 0;
    DWORD2(v251[0]) = -1;
    BYTE12(v251[0]) = -1;
    *(&v251[1] + 12) = -1;
    *(v251 + 14) = -1;
    *(&v251[1] + 5) = -1;
    *(&v251[2] + 4) = 0x7FFFFFFFLL;
    BYTE12(v251[2]) = 0;
    HIWORD(v251[2]) = -1;
    v252 = -COERCE_DOUBLE(0x8000000080000000);
    do
    {
      v29 = &v247 + v28;
      *(v29 + 34) = 0;
      *(v29 + 32) = 0;
      v29[132] = 0;
      v29[140] = -1;
      *(v29 + 71) = -1;
      *(v29 + 36) = -1;
      v29[148] = -1;
      v28 += 28;
      *(v29 + 38) = -1;
    }

    while (v28 != 56);
    v254 = 0;
    v30 = *(v6 + 1);
    GncP_GetGADData(&v247);
    if (!v254)
    {
LABEL_55:
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v34 = mach_continuous_time();
        v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GADQual Missing ID,%u\n", (*&g_MacClockTicksToMsRelation * v34), "GNC", 87, "GncS04_54UpdateGADData", *(v6 + 1));
        LbsOsaTrace_WriteLog(8u, __str, v35, 2, 1);
      }

      goto LABEL_57;
    }

    v31 = BYTE5(v248[0]);
    if (v254 >= 2u)
    {
      v32 = 2;
    }

    else
    {
      v32 = v254;
    }

    v33 = &v253;
    while (v33[1] != 1 || *(v33 + 1) != v30)
    {
      v33 += 28;
      if (!--v32)
      {
        goto LABEL_55;
      }
    }

    v81 = *v33;
    BYTE5(v248[0]) = v33[4];
    DWORD2(v251[2]) = *(v33 + 2);
    DWORD1(v251[1]) = *(v33 + 6);
    BYTE8(v251[1]) = v33[20];
    HIDWORD(v251[1]) = *(v33 + 4);
    LOWORD(v251[2]) = *(v33 + 7);
    BYTE2(v251[2]) = v33[12];
    v217 = v31;
    v82 = v31 != 0;
    LOBYTE(v228) = 0;
    v227 = 0;
    v215 = v81;
    v83 = GncS04_29GetRespUpdtStat(v6, v81, &v228, &v227 + 1, &v227);
    v84 = v83;
    if (v83)
    {
      v209 = v83;
      v85 = gnssOsa_Calloc("GncS04_54UpdateGADData", 1728, 1, 0x20uLL);
      if (!v85)
      {
        goto LABEL_57;
      }

      v212 = v85;
      v86 = gnssOsa_Calloc("GncS04_54UpdateGADData", 1734, 1, 0x78uLL);
      v87 = v212;
      v212[3] = v86;
      if (!v86)
      {
        free(v212);
        goto LABEL_57;
      }

      v207 = HIDWORD(v247);
      *(v212 + 3) = v247;
      v88 = *(v6 + 1);
      *(v212 + 8) = v88;
      v89 = v227;
      *(v212 + 18) = v227;
      *(v212 + 19) = v82;
      if (HIBYTE(v227) == 1)
      {
        v90 = 0;
        v91 = 1;
        while (1)
        {
          v92 = v91;
          v93 = &g_GncSFGClientData[132 * v90];
          if (*(v93 + 15) == v88 || (v93[28] & 1) != 0)
          {
            break;
          }

          v91 = 0;
          v90 = 1;
          if ((v92 & 1) == 0)
          {
            goto LABEL_173;
          }
        }

        if (v93[86] < BYTE14(v249) && (v93[87] < HIBYTE(v249) || v93[96] < BYTE8(v250)))
        {
          goto LABEL_170;
        }

        if ((!v217 || BYTE5(v248[0]) == 128) && *(v93 + 9))
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v107 = mach_continuous_time();
            v108 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CurrData,%u,GnssUsed,%u,CacheBBTick,%u\n", (*&g_MacClockTicksToMsRelation * v107), "GNC", 73, "GncS04_50CheckGadCacheUse", v217 != 0, BYTE5(v248[0]), *(v93 + 9));
            LbsOsaTrace_WriteLog(8u, __str, v108, 4, 1);
          }

LABEL_170:
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v109 = mach_continuous_time();
            v110 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CachedGad Used\n", (*&g_MacClockTicksToMsRelation * v109), "GNC", 73, "GncS04_54UpdateGADData");
            LbsOsaTrace_WriteLog(8u, __str, v110, 4, 1);
          }

          v87 = v212;
          *(v212 + 19) = 1;
          *(v212 + 3) = *&g_GncSFGClientData[132 * v90 + 32];
          v207 = *(v93 + 9);
          v111 = v212[3];
          v112 = *(v93 + 104);
          v113 = *(v93 + 120);
          v114 = *(v93 + 136);
          *(v111 + 112) = *(v93 + 19);
          *(v111 + 80) = v113;
          *(v111 + 96) = v114;
          *(v111 + 64) = v112;
          v115 = *(v93 + 40);
          v116 = *(v93 + 56);
          v117 = *(v93 + 88);
          *(v111 + 32) = *(v93 + 72);
          *(v111 + 48) = v117;
          *v111 = v115;
          *(v111 + 16) = v116;
          v89 = v227;
          goto LABEL_174;
        }
      }

LABEL_173:
      v118 = v248[0];
      v119 = v248[1];
      v120 = v250;
      *(v86 + 2) = v249;
      *(v86 + 3) = v120;
      *v86 = v118;
      *(v86 + 1) = v119;
      v121 = v251[0];
      v122 = v251[1];
      v123 = v251[2];
      v86[14] = v252;
      *(v86 + 5) = v122;
      *(v86 + 6) = v123;
      *(v86 + 4) = v121;
LABEL_174:
      v124 = v87[3];
      *v124 = *(v6 + 1);
      *(v124 + 4) = v89;
      v125 = g_GncSConfig;
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(1u, 4, 0, 0);
      if ((IsLoggingAllowed & 1) != 0 || (v125 & 0x200) != 0)
      {
        v206 = IsLoggingAllowed;
        bzero(&v235, 0x400uLL);
        v137 = v212[3];
        *v229 = snprintf(&v235, 0x400uLL, "$PDPGR,%u,%u,%u,%u,%u,%d,%u,%u,%u,%u,%u,%u", *(v212 + 3), v207, *(v212 + 8), *(v137 + 32), *(v137 + 36), *(v137 + 40), *(v137 + 44), v215, *(v137 + 92), *(v137 + 98), *(v137 + 5), *(v137 + 12));
        if (HswUtil_AddNmeaCS(&v235, 0x400u, v229))
        {
          if (v206)
          {
            LbsOsaTrace_PrintAsciiBuf(1u, 4u, 0, &v235, *v229);
          }

          if ((v125 & 0x200) != 0)
          {
            GncS04_07SndDbgNmea(&v235, *v229);
          }
        }

        else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v172 = mach_continuous_time();
          v173 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BytesWritten,%u\n", (*&g_MacClockTicksToMsRelation * v172), "GNC", 69, "GncS04_53SndGadRespNmea", 772, *v229);
          LbsOsaTrace_WriteLog(8u, __str, v173, 0, 1);
        }
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v127 = mach_continuous_time();
        v128 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_POS_GAD_IND =>GNM ID,%u,OSTTick,%u,BBTick,%u,Quality,%hhu,Valid,%u,Final,%u,GnssUsed,%u\n", (*&g_MacClockTicksToMsRelation * v127), "GNC", 73, "GncS04_54UpdateGADData", *(v212 + 8), *(v212 + 3), v207, v215, *(v212 + 19), v227, *(v212[3] + 5));
        LbsOsaTrace_WriteLog(8u, __str, v128, 4, 1);
      }

      AgpsSendFsmMsg(130, 128, 8520963, v212);
      v84 = v209;
      if (v227 == 1)
      {
        GncS03_08SessRespSentInd(v224[0], v207, *(v6 + 1), 1);
        v84 = v209;
      }
    }

    if (v228 == 1 && v217)
    {
      if (SBYTE5(v248[0]) == -128)
      {
        v129 = v84;
        v130 = LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0);
        v84 = v129;
        if (v130)
        {
          bzero(__str, 0x410uLL);
          v131 = mach_continuous_time();
          v132 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Ignore BBTick,%u,GnssUsed,%u,HAccMaj,%u,HAccMin,%u,AltUnc,%u\n", (*&g_MacClockTicksToMsRelation * v131), "GNC", 73, "GncS04_51GadCacheUpdt", HIDWORD(v247), BYTE5(v248[0]), BYTE14(v249), HIBYTE(v249), BYTE8(v250));
          LbsOsaTrace_WriteLog(8u, __str, v132, 4, 1);
          v0 = v221;
          if (v129)
          {
            goto LABEL_249;
          }

          goto LABEL_57;
        }
      }

      else
      {
        v133 = 0;
        v134 = 1;
        while (1)
        {
          v135 = v134;
          v136 = &g_GncSFGClientData[132 * v133];
          if (*(v136 + 15) == *(v6 + 1) && v136[28] == 1)
          {
            break;
          }

          v134 = 0;
          v133 = 1;
          if ((v135 & 1) == 0)
          {
            goto LABEL_248;
          }
        }

        v171 = HIDWORD(v247);
        if (HIDWORD(v247) != *(v136 + 9))
        {
          if (BYTE14(v249) > v136[86] || HIBYTE(v249) > v136[87] && BYTE8(v250) > v136[96])
          {
            if ((SBYTE5(v248[0]) & 0x80000000) == 0)
            {
              goto LABEL_248;
            }

            if (BYTE14(v249) > 0x27u)
            {
              goto LABEL_248;
            }

            if (BYTE8(v250) > 0xFu)
            {
              goto LABEL_248;
            }

            if (BYTE8(v250) > v136[96])
            {
              goto LABEL_248;
            }

            v136[96] = BYTE8(v250);
            *(v136 + 42) = WORD6(v249);
            *(v136 + 23) = DWORD1(v250);
            v211 = v84;
            v176 = LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0);
            v84 = v211;
            if (!v176)
            {
              goto LABEL_248;
            }

            bzero(__str, 0x410uLL);
            v177 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v201 = v136[87];
            v203 = v136[96];
            v197 = v136[86];
            v178 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GadCache Alt Updt Idx,%u,BBTick,%u,HAccMaj,%u,HAccMin,%u,AltUnc,%u\n", v177, "GNC");
          }

          else
          {
            *(v136 + 104) = v251[0];
            *(v136 + 120) = v251[1];
            *(v136 + 136) = v251[2];
            *(v136 + 19) = v252;
            *(v136 + 40) = v248[0];
            *(v136 + 56) = v248[1];
            *(v136 + 72) = v249;
            *(v136 + 88) = v250;
            *(v136 + 8) = v247;
            *(v136 + 9) = v171;
            v211 = v84;
            v181 = LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0);
            v84 = v211;
            if (!v181)
            {
              goto LABEL_248;
            }

            bzero(__str, 0x410uLL);
            v182 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v202 = v136[87];
            v204 = v136[96];
            v198 = v136[86];
            v178 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GadCache LLH Updt Idx,%u,BBTick,%u,HAccMaj,%u,HAccMin,%u,AltUnc,%u\n", v182, "GNC");
          }

          LbsOsaTrace_WriteLog(8u, __str, v178, 4, 1);
          v0 = v221;
          if ((v211 & 1) == 0)
          {
            goto LABEL_57;
          }

LABEL_249:
          LOBYTE(RespUpdtStat) = RespUpdtStat + 1;
          goto LABEL_57;
        }
      }
    }

LABEL_248:
    v0 = v221;
    if (v84)
    {
      goto LABEL_249;
    }

LABEL_57:
    if ((v223[330948] & 4) == 0)
    {
      v36 = RespUpdtStat;
      if ((v223[330948] & 8) != 0)
      {
        goto LABEL_87;
      }

      goto LABEL_107;
    }

    v37 = 0;
    *v229 = 0;
    v229[8] = 127;
    *&v229[10] = 0;
    *&v229[12] = 0;
    v229[16] = 0;
    *&v229[20] = 0;
    *&v229[24] = 0;
    LOBYTE(v231[0]) = 0;
    *__str = 0;
    v231[1] = -1;
    LOBYTE(v231[2]) = 0;
    *&v231[3] = 0;
    LOBYTE(v231[5]) = 0;
    *&v231[6] = 0x7FFFFFFFFFFFFFFFLL;
    LOWORD(v231[8]) = -1;
    v231[9] = 0;
    LOWORD(v231[10]) = 0;
    do
    {
      v38 = &__str[v37];
      v38[50] = -1;
      *(v38 + 51) = 0;
      v38[59] = 0;
      v37 += 10;
    }

    while (v37 != 640);
    v39 = 0;
    *&v231[171] = 0xFFFFFFFF00000000;
    LOBYTE(v231[173]) = -1;
    *&v231[174] = -1;
    *&v231[176] = 0x7FFFFFFFLL;
    LOBYTE(v231[178]) = 0;
    HIWORD(v231[178]) = -1;
    *&v231[179] = 0xFFFFFFFF7FFFFFFFLL;
    v40 = 11;
    LOBYTE(v231[181]) = 0;
    do
    {
      v41 = &v231[v40 + 171];
      *v41 = 0;
      *(v41 + 4) = 0;
      v42 = v39;
      for (j = 2; j != 2570; j += 321)
      {
        v44 = &v41[j];
        *v44 = 0;
        *(v44 + 2) = 0;
        v45 = v42;
        v46 = 1280;
        do
        {
          v47 = &__str[v45];
          v47[748] = -1;
          *(v47 + 189) = 0;
          *(v47 + 380) = 0;
          *(v47 + 191) = 0;
          v47[753] = 0;
          *(&v231[185] + v45 + 1) = 0;
          v45 += 20;
          v46 -= 20;
        }

        while (v46);
        v42 += 1284;
      }

      v40 += 2570;
      v39 += 10280;
    }

    while (v40 != 41131);
    LOBYTE(v231[41302]) = 0;
    *&v231[41303] = 0x700000000;
    *&v231[41305] = 0;
    *&v231[41307] = 0;
    *(&v231[41308] + 2) = 0;
    HIWORD(v231[41310]) = -1;
    LOBYTE(v231[41311]) = 0;
    v231[41312] = 0;
    *&v231[41313] = -1;
    *&v231[41315] = 0;
    v231[41317] = -1;
    LOBYTE(v231[41318]) = -1;
    *(&v231[41318] + 2) = -1;
    v48 = v233;
    v49 = 56;
    HIWORD(v231[41319]) = -1;
    do
    {
      *(v48 - 25) = 0;
      *(v48 - 17) = 127;
      *(v48 - 15) = 0;
      *(v48 - 13) = 0;
      *(v48 - 9) = 0;
      *(v48 - 5) = 0;
      *(v48 - 1) = 0;
      v48 += 28;
      v49 -= 28;
    }

    while (v49);
    v234 = 0;
    if (*(v6 + 10) == *(v6 + 2))
    {
      v50 = 0;
    }

    else
    {
      v50 = *(v6 + 10);
    }

    GncP_GetMeasData(v50, __str, v6[50]);
    v51 = 0;
    v235 = 0;
    v236 = -1;
    v237 = 0;
    *v238 = xmmword_2997286D0;
    *&v238[16] = 0;
    *&v239 = 0;
    *(&v239 + 6) = 0;
    HIWORD(v239) = -1;
    LOBYTE(v240) = 0;
    DWORD1(v240) = 0;
    *(&v240 + 1) = -1;
    v241 = 0;
    v242[0] = -1;
    LOBYTE(v242[1]) = -1;
    *&v242[5] = -1;
    *(&v242[1] + 2) = -1;
    *(&v242[3] + 1) = -1;
    *&v242[7] = 0x7FFFFFFFLL;
    v243 = 0;
    v244 = -1;
    v245 = -COERCE_DOUBLE(0x8000000080000000);
    do
    {
      v52 = &v235 + v51;
      *(v52 + 34) = 0;
      *(v52 + 32) = 0;
      v52[132] = 0;
      v52[140] = -1;
      *(v52 + 71) = -1;
      *(v52 + 36) = -1;
      v52[148] = -1;
      v51 += 28;
      *(v52 + 38) = -1;
    }

    while (v51 != 56);
    v246 = 0;
    GncP_GetGADData(&v235);
    LOBYTE(v231[41302]) = HIBYTE(v237);
    *&v231[41303] = *&v238[8];
    *&v231[41307] = v239;
    *&v231[41311] = v240;
    *&v231[41315] = v241;
    *&v231[41317] = *v242;
    v231[41319] = v242[2];
    if (!v234)
    {
LABEL_83:
      v56 = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
      v57 = 0;
      if (!v56)
      {
        goto LABEL_86;
      }

      bzero(&v235, 0x410uLL);
      v58 = mach_continuous_time();
      v59 = snprintf(&v235, 0x40FuLL, "%10u %s%c %s: MeasQual Missing ID,%u\n", (*&g_MacClockTicksToMsRelation * v58), "GNC", 87, "GncS04_66UpdateMeasData", *(v6 + 1));
      LbsOsaTrace_WriteLog(8u, &v235, v59, 2, 1);
      goto LABEL_85;
    }

    v53 = LOBYTE(v231[181]);
    if (v234 >= 2u)
    {
      v54 = 2;
    }

    else
    {
      v54 = v234;
    }

    v55 = &v232;
    while (v55[1] != 1 || *(v55 + 1) != *(v6 + 1))
    {
      v55 += 28;
      if (!--v54)
      {
        goto LABEL_83;
      }
    }

    *v229 = *v55;
    *&v229[12] = *(v55 + 12);
    v94 = v55[8] <= 0x5Fu && *v55 == 255;
    v227 = 0;
    v218 = LOBYTE(v231[181]) != 0;
    v226 = 0;
    v95 = GncS04_29GetRespUpdtStat(v6, v94, &v227 + 1, &v227, &v226);
    v57 = v95;
    if (!v95)
    {
      goto LABEL_208;
    }

    v210 = v53;
    v213 = v95;
    v96 = gnssOsa_Calloc("GncS04_66UpdateMeasData", 2250, 1, 0x20uLL);
    if (!v96)
    {
      goto LABEL_85;
    }

    v216 = v96;
    v97 = gnssOsa_Calloc("GncS04_66UpdateMeasData", 2256, 1, 0x2859CuLL);
    v216[3] = v97;
    if (!v97)
    {
      free(v216);
LABEL_85:
      v57 = 0;
      goto LABEL_86;
    }

    v208 = *&__str[4];
    *(v216 + 3) = *__str;
    v98 = *(v6 + 1);
    *(v216 + 8) = v98;
    v99 = v226;
    *(v216 + 18) = v226;
    *(v216 + 19) = v218;
    *v97 = v98;
    v97[4] = v99;
    if (v227 != 1)
    {
      goto LABEL_201;
    }

    v100 = 0;
    v101 = 1;
    while (1)
    {
      v102 = v101;
      v103 = &g_GncSFGClientData[165312 * v100];
      v104 = v103 + 292;
      if (*(v103 + 147) == v98 || (*v104 & 1) != 0)
      {
        break;
      }

      v101 = 0;
      v100 = 1;
      if ((v102 & 1) == 0)
      {
        goto LABEL_201;
      }
    }

    if ((v138 = v103[165576], v219 = v229[0], v229[0] == v138) && v229[8] == v103[165584] || (v229[0] > v138 || v229[8] < v103[165584]) && (v210 || !*(v103 + 74)))
    {
LABEL_201:
      GncS04_65PopulateMeasData(v6, &v231[1], v229, v97);
      v219 = v229[0];
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(&v235, 0x410uLL);
        v183 = mach_continuous_time();
        v184 = snprintf(&v235, 0x40FuLL, "%10u %s%c %s: CachedMeas Used\n", (*&g_MacClockTicksToMsRelation * v183), "GNC", 73, "GncS04_66UpdateMeasData");
        LbsOsaTrace_WriteLog(8u, &v235, v184, 4, 1);
      }

      *(v216 + 19) = 1;
      GncS04_65PopulateMeasData(v6, (v104 + 8), (v104 + 165284), v216[3]);
      v208 = *&g_GncSFGClientData[165312 * v100 + 296];
    }

    v139 = v229[8];
    v140 = g_GncSConfig;
    v141 = LbsOsaTrace_IsLoggingAllowed(1u, 4, 0, 0);
    v53 = v210;
    if ((v141 & 1) == 0 && (v140 & 0x200) == 0)
    {
      goto LABEL_204;
    }

    v205 = v141;
    bzero(&v247, 0x400uLL);
    v150 = v216[3];
    v151 = *(v150 + 720);
    if (!*(v150 + 720))
    {
      v157 = 0;
      v156 = 0;
      v155 = 0;
      v154 = 0;
      v153 = 0;
      goto LABEL_253;
    }

    v152 = 0;
    LOBYTE(v153) = 0;
    LOBYTE(v154) = 0;
    LOBYTE(v155) = 0;
    LOBYTE(v156) = 0;
    LOBYTE(v157) = 0;
    v158 = 0;
    v159 = (v150 + 734);
    do
    {
      v160 = v150 + 724 + 10280 * v152;
      v161 = *v160;
      if (*v160 == 1)
      {
        v162 = *(v160 + 4);
        if (!*(v160 + 4))
        {
          goto LABEL_245;
        }

        v163 = v159;
        do
        {
          LOBYTE(v153) = *v163 + v153;
          v163 += 1284;
          --v162;
        }

        while (v162);
      }

      if (v161 == 32)
      {
        if (!*(v160 + 4))
        {
          goto LABEL_245;
        }

        v164 = 0;
        do
        {
          v158 += v159[v164];
          v164 += 1284;
        }

        while (1284 * *(v160 + 4) != v164);
      }

      if (v161 == 2)
      {
        if (!*(v160 + 4))
        {
          goto LABEL_245;
        }

        v165 = 0;
        do
        {
          LOBYTE(v157) = v159[v165] + v157;
          v165 += 1284;
        }

        while (1284 * *(v160 + 4) != v165);
      }

      if (v161 == 64)
      {
        if (!*(v160 + 4))
        {
          goto LABEL_245;
        }

        v166 = 0;
        do
        {
          LOBYTE(v156) = v159[v166] + v156;
          v166 += 1284;
        }

        while (1284 * *(v160 + 4) != v166);
      }

      if (v161 == 16)
      {
        if (!*(v160 + 4))
        {
          goto LABEL_245;
        }

        v167 = 0;
        do
        {
          LOBYTE(v155) = v159[v167] + v155;
          v167 += 1284;
        }

        while (1284 * *(v160 + 4) != v167);
      }

      if (v161 == 4)
      {
        v168 = *(v160 + 4);
        if (*(v160 + 4))
        {
          v169 = 0;
          v170 = 1284 * v168;
          do
          {
            LOBYTE(v154) = v159[v169] + v154;
            v169 += 1284;
          }

          while (v170 != v169);
        }
      }

LABEL_245:
      ++v152;
      v159 += 10280;
    }

    while (v152 != v151);
    v153 = v153;
    LODWORD(v151) = v158;
    v157 = v157;
    v156 = v156;
    v155 = v155;
    v154 = v154;
LABEL_253:
    v228 = snprintf(&v247, 0x400uLL, "$PDPMR,%u,%u,%u,%u,%u,%u,%u,%u,%u,%u,%u,%u,%u", *(v216 + 3), v208, *(v216 + 8), *(v150 + 692), v139, v219, v153, v151, v157, v156, v155, v154, *(v150 + 12));
    if (HswUtil_AddNmeaCS(&v247, 0x400u, &v228))
    {
      if (v205)
      {
        LbsOsaTrace_PrintAsciiBuf(1u, 4u, 0, &v247, v228);
      }

      if ((v140 & 0x200) != 0)
      {
        GncS04_07SndDbgNmea(&v247, v228);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(&v235, 0x410uLL);
      v174 = mach_continuous_time();
      v175 = snprintf(&v235, 0x40FuLL, "%10u %s%c %s: #%04hx BytesWritten,%u\n", (*&g_MacClockTicksToMsRelation * v174), "GNC", 69, "GncS04_60SndMeasRespNmea", 772, v228);
      LbsOsaTrace_WriteLog(8u, &v235, v175, 0, 1);
    }

LABEL_204:
    v0 = v221;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(&v235, 0x410uLL);
      v142 = mach_continuous_time();
      v143 = v216[3];
      v144 = snprintf(&v235, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_3GPPMEAS_DATA_IND =>GNM ID,%u,BBTick,%u,Valid,%u,Final,%u,Quality,%u,ToDUnc,%u,NumGnss,%u,NumGps,%u,GnssUsed,%u,PosStatus,%u,VelType,%u\n", (*&g_MacClockTicksToMsRelation * v142), "GNC", 73, "GncS04_66UpdateMeasData", *v143, v208, *(v216 + 19), v226, v219, v139, *(v143 + 720), *(v143 + 37), *(v143 + 165204), *(v143 + 165212), *(v143 + 165260));
      LbsOsaTrace_WriteLog(8u, &v235, v144, 4, 1);
    }

    AgpsSendFsmMsg(130, 128, 8520451, v216);
    v57 = v213;
    if (v226 == 1)
    {
      GncS03_08SessRespSentInd(v224[0], v208, *(v6 + 1), 1);
      v57 = v213;
    }

LABEL_208:
    if (HIBYTE(v227) == 1 && v53)
    {
      v145 = 0;
      v146 = 1;
      while (1)
      {
        v147 = v146;
        v148 = &g_GncSFGClientData[165312 * v145];
        if (*(v148 + 147) == *(v6 + 1))
        {
          v149 = v148 + 292;
          if (v148[292] == 1)
          {
            break;
          }
        }

        v146 = 0;
        v145 = 1;
        if ((v147 & 1) == 0)
        {
          goto LABEL_218;
        }
      }

      if (v229[0] < v148[165576] || v229[8] > v148[165584] || *&__str[4] == *(v148 + 74))
      {
LABEL_218:
        v0 = v221;
        goto LABEL_86;
      }

      v214 = v57;
      v220 = *&__str[4];
      memcpy(v148 + 300, &v231[1], 0x2859CuLL);
      *(v149 + 165284) = *v229;
      *(v149 + 165294) = *&v229[10];
      *(v149 + 1) = v220;
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(&v235, 0x410uLL);
        v179 = mach_continuous_time();
        v180 = snprintf(&v235, 0x40FuLL, "%10u %s%c %s: MeasCache Idx,%u,BBTick,%u,Qual,%u,ToDUnc,%u\n", (*&g_MacClockTicksToMsRelation * v179), "GNC", 73, "GncS04_62MeasCacheUpdt", v145, *&__str[4], v149[165284], v149[165292]);
        LbsOsaTrace_WriteLog(8u, &v235, v180, 4, 1);
      }

      v0 = v221;
      v57 = v214;
    }

LABEL_86:
    v36 = RespUpdtStat + v57;
    if ((v223[330948] & 8) != 0)
    {
LABEL_87:
      if (!v0)
      {
        goto LABEL_107;
      }

      v60 = gnssOsa_Calloc("GncS04_37UpdateDetailedMeasData", 1239, 1, 0x110uLL);
      if (!v60)
      {
        goto LABEL_107;
      }

      v61 = v60;
      if (GncP_GetDetailedMeasData(v60))
      {
        LOBYTE(v235) = 0;
        GncS04_29GetRespUpdtStat(v6, 1, 0, 0, &v235);
        v62 = gnssOsa_Calloc("GncS04_37UpdateDetailedMeasData", 1263, 1, 0x20uLL);
        if (v62)
        {
          v63 = v62;
          v62[3] = v224[0];
          *(v62 + 8) = *(v6 + 1);
          *(v62 + 18) = v235;
          *(v62 + 3) = v61;
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v64 = mach_continuous_time();
            v65 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_RAWMEAS_DATA_IND =>GNM ID,%d,OSTTick,%d,Final,%d,NumMeas,%u,NumUsed,%u\n", (*&g_MacClockTicksToMsRelation * v64), "GNC", 73, "GncS04_37UpdateDetailedMeasData", *(v63 + 8), v63[3], *(v63 + 18), v61[32], v61[120]);
            LbsOsaTrace_WriteLog(8u, __str, v65, 4, 1);
          }

          AgpsSendFsmMsg(130, 128, 8520195, v63);
          if (v223[330948] == 8)
          {
            ++v36;
          }

          v0 = v221;
          goto LABEL_107;
        }

        v106 = *(v61 + 9);
        if (v106)
        {
          free(v106);
        }

        *(v61 + 9) = 0;
        v70 = *(v61 + 31);
        v0 = v221;
        if (!v70)
        {
LABEL_104:
          *(v61 + 31) = 0;
          v71 = *(v61 + 33);
          if (v71)
          {
            free(v71);
          }

          free(v61);
          goto LABEL_107;
        }
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v67 = mach_continuous_time();
          v68 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DetailMeas Updt NA ID,%u\n", (*&g_MacClockTicksToMsRelation * v67), "GNC", 87, "GncS04_37UpdateDetailedMeasData", *(v6 + 1));
          LbsOsaTrace_WriteLog(8u, __str, v68, 2, 1);
        }

        v69 = *(v61 + 9);
        if (v69)
        {
          free(v69);
        }

        *(v61 + 9) = 0;
        v70 = *(v61 + 31);
        if (!v70)
        {
          goto LABEL_104;
        }
      }

      free(v70);
      goto LABEL_104;
    }

LABEL_107:
    if (v36)
    {
      *(v6 + 10) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    }

    v72 = v6[4];
    if (v72 == 2)
    {
      v76 = *(v5 + 2);
      if ((*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v76 < *(v6 + 7))
      {
        goto LABEL_149;
      }

      *(v5 + 5) = 0;
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        goto LABEL_149;
      }

      bzero(__str, 0x410uLL);
      v77 = mach_continuous_time();
      v78 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ID,%u,RespTime,%u\n", (*&g_MacClockTicksToMsRelation * v77), "GNC", 73, "GncS04_30UpdateSessionParam", *(v6 + 1), *(v6 + 7));
      v79 = 4;
LABEL_126:
      LbsOsaTrace_WriteLog(8u, __str, v78, v79, 1);
      goto LABEL_149;
    }

    if (v72 == 1)
    {
      if (!v36)
      {
        *(v6 + 10) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        goto LABEL_149;
      }

LABEL_120:
      *(v5 + 5) = 0;
      goto LABEL_149;
    }

    if (v6[4])
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        goto LABEL_149;
      }

      bzero(__str, 0x410uLL);
      v80 = mach_continuous_time();
      v78 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionType,%hhu\n", (*&g_MacClockTicksToMsRelation * v80), "GNC", 87, "GncS04_30UpdateSessionParam", 770, v6[4]);
      v79 = 2;
      goto LABEL_126;
    }

    if (v36)
    {
      v73 = *(v5 + 5);
      if (v73 != -1)
      {
        *(v5 + 5) = v73 - 1;
      }
    }

    if (*(v6 + 4))
    {
      v74 = *(v5 + 2);
      v75 = mach_continuous_time();
      if (v36)
      {
        if ((*&g_MacClockTicksToMsRelation * v75) - v74 + HIWORD(g_GncSConfig) + 30 > *(v6 + 4))
        {
          goto LABEL_120;
        }
      }
    }

LABEL_149:
    result = LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0);
    v4 = v225;
    if (result)
    {
      bzero(__str, 0x410uLL);
      v105 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ID,%u,UpdtSnt,%u,PrevUpdt,%u,NumFix,%d\n", (*&g_MacClockTicksToMsRelation * v105), "GNC", 68, "GncS04_30UpdateSessionParam", *(v6 + 1), v36, *(v6 + 10), *(v5 + 5));
      v10 = 5;
LABEL_151:
      result = LbsOsaTrace_WriteLog(8u, __str, v9, v10, 1);
      v4 = v225;
    }

LABEL_152:
    v3 = 0;
    v2 = 1;
  }

  while ((v4 & 1) != 0);
  v185 = byte_2A191DC10 - 3 >= 0xFFFFFFFE || byte_2A191DBDC - 3 >= 0xFFFFFFFE;
  if (v185 && (v0 & 1) == 0)
  {
    result = GncS04_74UpdateScheduler();
  }

  v186 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncS04_74UpdateScheduler(void)
{
  v24 = *MEMORY[0x29EDCA608];
  if (g_GncSFGClientData[0])
  {
    if (AgpsFsmStopTimer(8522758) && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v0 = mach_continuous_time();
      v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 87, "GncS04_74UpdateScheduler", 1545);
      LbsOsaTrace_WriteLog(8u, __str, v1, 2, 1);
    }

    g_GncSFGClientData[0] = 0;
  }

  v2 = 0;
  v3 = 0x7FFFFFFF;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = &g_GncSFGClientData[52 * v2 + 330916];
    if (*v6)
    {
      if (*v6 <= 2u && *&g_GncSFGClientData[52 * v2 + 330936] != 0)
      {
        if (g_GncSFGClientData[52 * v2 + 330920] - 1 >= 2)
        {
          if (g_GncSFGClientData[52 * v2 + 330920] && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v16 = mach_continuous_time();
            v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionType,%hhu\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 87, "GncS04_27GetUpdateReportInt", 770, v6[4]);
            v15 = 2;
            goto LABEL_24;
          }
        }

        else
        {
          v8 = *&g_GncSFGClientData[52 * v2 + 330924];
          v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v8;
          v10 = v9 + 30;
          v11 = *(v6 + 3) + *(v6 + 7);
          v12 = v11 - v9 - 30;
          if (v12 <= 30)
          {
            v12 = 30;
          }

          if (v10 >= v11)
          {
            v12 = 30;
          }

          if (v12 < v3)
          {
            v3 = v12;
          }

          if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v13 = mach_continuous_time();
            v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ID,%u,StartTm,%u,RespTime,%u,MinPosTime,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 68, "GncS04_27GetUpdateReportInt", *(v6 + 1), *(v6 + 3), *(v6 + 7), v3);
            v15 = 5;
LABEL_24:
            LbsOsaTrace_WriteLog(8u, __str, v14, v15, 1);
          }
        }
      }
    }

    v4 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  if (v3 != 0x7FFFFFFF)
  {
    if (AgpsFsmStartTimer(0x820C06u, v3))
    {
      result = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
      if (!result)
      {
        goto LABEL_36;
      }

      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Dur,%u\n", (*&g_MacClockTicksToMsRelation * v19), "GNC", 87, "GncS04_74UpdateScheduler", 1544, v3);
      v21 = 2;
    }

    else
    {
      g_GncSFGClientData[0] = 1;
      result = LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0);
      if (!result)
      {
        goto LABEL_36;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Scheduler timer,%u\n");
LABEL_34:
      v20 = v18;
      v21 = 5;
    }

    result = LbsOsaTrace_WriteLog(8u, __str, v20, v21, 1);
    goto LABEL_36;
  }

  result = LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FGSess timer Not Req\n");
    goto LABEL_34;
  }

LABEL_36:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t GncS04_73FGPosTimerExpiry(void)
{
  v5 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FG timer Expired\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 68, "GncS04_73FGPosTimerExpiry");
    LbsOsaTrace_WriteLog(8u, __str, v1, 5, 1);
  }

  g_GncSFGClientData[0] = 0;
  result = GncS04_72SendUpdates();
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncS04_75HandleStopPos(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v59 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_STOP_POS_REQ\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 73, "GncS04_75HandleStopPos");
    LbsOsaTrace_WriteLog(8u, __str, v8, 4, 1);
  }

  if (v6)
  {
    v9 = *(v6 + 12);
    if (word_2A191DBDE == v9)
    {
      v10 = 0;
    }

    else
    {
      if (word_2A191DC12 != v9)
      {
        if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v30 = mach_continuous_time();
          v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionNotFound ID,%u\n", (*&g_MacClockTicksToMsRelation * v30), "GNC", 87, "GncS04_75HandleStopPos", 2052, v9);
          LbsOsaTrace_WriteLog(8u, __str, v31, 2, 1);
        }

        GncS04_21SendStopPosResp(1, v9);
        goto LABEL_66;
      }

      v10 = 1;
    }

    v14 = g_GncSConfig;
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(1u, 4, 0, 0);
    if ((IsLoggingAllowed & 1) != 0 || (v14 & 0x200) != 0)
    {
      bzero(v58, 0x400uLL);
      v26 = mach_continuous_time();
      v56 = snprintf(v58, 0x400uLL, "$PDPST,%u,%u", (*&g_MacClockTicksToMsRelation * v26), v9);
      if (HswUtil_AddNmeaCS(v58, 0x400u, &v56))
      {
        if (IsLoggingAllowed)
        {
          LbsOsaTrace_PrintAsciiBuf(1u, 4u, 0, v58, v56);
        }

        if ((v14 & 0x200) != 0)
        {
          GncS04_07SndDbgNmea(v58, v56);
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v32 = mach_continuous_time();
        v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BytesWritten,%u\n", (*&g_MacClockTicksToMsRelation * v32), "GNC", 69, "GncS04_09SndStopPosNmea", 772, v56);
        LbsOsaTrace_WriteLog(8u, __str, v33, 0, 1);
      }
    }

    v16 = &g_GncSFGClientData[52 * v10 + 330916];
    v17 = *v16;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v35 = mach_continuous_time();
          v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionNotActive ID,%u,State,%hhu\n", (*&g_MacClockTicksToMsRelation * v35), "GNC", 87, "GncS04_75HandleStopPos", 2050, v9, *v16);
          LbsOsaTrace_WriteLog(8u, __str, v36, 2, 1);
        }

        v37 = *&g_GncSFGClientData[52 * v10 + 330918];
        __str[8] = 0;
        *__str = 0;
        memset(&__str[20], 0, 27);
        __str[12] = 1;
        *&__str[14] = v37;
        __str[16] = 0;
        GncS03_07PosEventUpdate(__str);
        GncS04_05DeRegClient(v10);
        GncS04_21SendStopPosResp(0, v9);
LABEL_51:
        v39 = 0;
        v40 = 1;
        do
        {
          v41 = v40;
          v42 = &g_GncSFGClientData[132 * v39];
          if (*(v42 + 15) == v9 && v42[28] == 1)
          {
            *(v42 + 28) = 0;
            *(v42 + 36) = 0xFFFFFFFF00000000;
            *(v42 + 52) = 0;
            *(v42 + 44) = 0;
            *(v42 + 15) = 7;
            *(v42 + 8) = 0;
            *(v42 + 9) = 0;
            *(v42 + 78) = 0;
            *(v42 + 43) = -1;
            *(v42 + 88) = xmmword_299761FA0;
            *(v42 + 13) = 0;
            *(v42 + 28) = -1;
            *(v42 + 58) = 255;
            *(v42 + 118) = -1;
            *(v42 + 125) = -1;
            *(v42 + 129) = 0;
            v42[131] = 0;
            *(v42 + 132) = -1;
            *(v42 + 140) = 0x7FFFFFFFLL;
            *(v42 + 37) = -65536;
            *(v42 + 19) = -COERCE_DOUBLE(0x8000000080000000);
            if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v43 = mach_continuous_time();
              v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GadCacheFreed ID,%u,Idx,%u\n", (*&g_MacClockTicksToMsRelation * v43), "GNC", 73, "GncS04_75HandleStopPos", v9, v39);
              LbsOsaTrace_WriteLog(8u, __str, v44, 4, 1);
            }
          }

          v40 = 0;
          v39 = 1;
        }

        while ((v41 & 1) != 0);
        v45 = 0;
        v46 = 1;
        do
        {
          v47 = v46;
          v48 = &g_GncSFGClientData[165312 * v45];
          if (*(v48 + 147) == v9 && v48[292] == 1)
          {
            bzero(__str, 0x285C0uLL);
            s_GncS_CacheMeasData::s_GncS_CacheMeasData(__str);
            memcpy(v48 + 292, __str, 0x285C0uLL);
            if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v49 = mach_continuous_time();
              v50 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MeasCacheFreed ID,%u,Idx,%u\n", (*&g_MacClockTicksToMsRelation * v49), "GNC", 73, "GncS04_75HandleStopPos", v9, v45);
              LbsOsaTrace_WriteLog(8u, __str, v50, 4, 1);
            }
          }

          v46 = 0;
          v45 = 1;
        }

        while ((v47 & 1) != 0);
        if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v51 = mach_continuous_time();
          v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: InstanceCount,%u\n", (*&g_MacClockTicksToMsRelation * v51), "GNC", 68, "GncS04_75HandleStopPos", byte_2A18CCF50);
          v13 = 5;
          goto LABEL_65;
        }

        goto LABEL_66;
      }

      if (v17 == 3)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
        {
          goto LABEL_51;
        }

        bzero(__str, 0x410uLL);
        v27 = mach_continuous_time();
        v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: StopAckPending ID,%u\n", (*&g_MacClockTicksToMsRelation * v27), "GNC", 73, "GncS04_75HandleStopPos", v9);
        v29 = 4;
LABEL_41:
        LbsOsaTrace_WriteLog(8u, __str, v28, v29, 1);
        goto LABEL_51;
      }
    }

    else
    {
      if (!*v16)
      {
        goto LABEL_51;
      }

      if (v17 == 1)
      {
        v18 = *&g_GncSFGClientData[52 * v10 + 330918];
        __str[8] = 0;
        *__str = 0;
        memset(&__str[20], 0, 27);
        __str[12] = 1;
        *&__str[14] = v18;
        __str[16] = 0;
        GncS03_07PosEventUpdate(__str);
        if (LbsOsaTrace_IsLoggingAllowed(8u, 3, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v19 = mach_continuous_time();
          v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Stopped ID,%u\n", (*&g_MacClockTicksToMsRelation * v19), "GNC", 77, "GncS04_75HandleStopPos", 2058, v9);
          LbsOsaTrace_WriteLog(8u, __str, v20, 3, 1);
        }

        if (byte_2A18CCF48 == 1)
        {
          if (AgpsFsmStopTimer(8523270) && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v21 = mach_continuous_time();
            v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v21), "GNC", 87, "GncS04_75HandleStopPos", 1545);
            LbsOsaTrace_WriteLog(8u, __str, v22, 2, 1);
          }

          byte_2A18CCF48 = 0;
        }

        *v16 = 3;
        if (AgpsFsmStartTimer(0x820E06u, 0x258u))
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v23 = mach_continuous_time();
            v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Dur,%u\n", (*&g_MacClockTicksToMsRelation * v23), "GNC", 87, "GncS04_75HandleStopPos", 1544, 600);
            v25 = 2;
LABEL_47:
            LbsOsaTrace_WriteLog(8u, __str, v24, v25, 1);
          }
        }

        else
        {
          byte_2A18CCF48 = 1;
          if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v38 = mach_continuous_time();
            v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessStopAck Timer,%u\n", (*&g_MacClockTicksToMsRelation * v38), "GNC", 68, "GncS04_75HandleStopPos", 600);
            v25 = 5;
            goto LABEL_47;
          }
        }

        if (byte_2A191DBDC - 1 >= 2 && byte_2A191DC10 - 1 >= 2)
        {
          if (g_GncSFGClientData[0] == 1)
          {
            if (AgpsFsmStopTimer(8522758) && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v54 = mach_continuous_time();
              v55 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v54), "GNC", 87, "GncS04_75HandleStopPos", 1545);
              LbsOsaTrace_WriteLog(8u, __str, v55, 2, 1);
            }

            g_GncSFGClientData[0] = 0;
          }
        }

        else
        {
          GncS04_74UpdateScheduler();
        }

        goto LABEL_51;
      }
    }

    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      goto LABEL_51;
    }

    bzero(__str, 0x410uLL);
    v34 = mach_continuous_time();
    v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v34), "GNC", 87, "GncS04_75HandleStopPos", 770);
    v29 = 2;
    goto LABEL_41;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 69, "GncS04_75HandleStopPos", 517);
    v13 = 0;
LABEL_65:
    LbsOsaTrace_WriteLog(8u, __str, v12, v13, 1);
  }

LABEL_66:
  v52 = *MEMORY[0x29EDCA608];
  return 0;
}

void GncS04_21SendStopPosResp(int a1, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("GncS04_21SendStopPosResp", 424, 1, 0x10uLL);
  if (v4)
  {
    v5 = v4;
    *(v4 + 6) = a2;
    v4[14] = a1;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_STOP_POS_RSP =>GNM ID,%hu,Code,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncS04_21SendStopPosResp", a2, a1);
      LbsOsaTrace_WriteLog(8u, __str, v7, 4, 1);
    }

    AgpsSendFsmMsg(130, 128, 8519940, v5);
  }

  v8 = *MEMORY[0x29EDCA608];
}

uint64_t GncS04_05DeRegClient(unsigned int a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (byte_2A18CCF50)
  {
    if (a1 < 2)
    {
      v4 = &g_GncSFGClientData[52 * a1 + 330916];
      if (*v4)
      {
        --byte_2A18CCF50;
        result = LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v5 = mach_continuous_time();
          v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: InstanceCount,%u,DeRegSessionID,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 73, "GncS04_05DeRegClient", byte_2A18CCF50, *&g_GncSFGClientData[52 * a1 + 330918]);
          result = LbsOsaTrace_WriteLog(8u, __str, v6, 4, 1);
        }

        *&g_GncSFGClientData[52 * a1 + 330963] = 0;
        *&g_GncSFGClientData[52 * a1 + 330932] = 0u;
        *&g_GncSFGClientData[52 * a1 + 330948] = 0u;
        *v4 = 0u;
      }

      else
      {
        result = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
        if (result)
        {
LABEL_12:
          bzero(__str, 0x410uLL);
          v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Handle,%u\n", v7);
          goto LABEL_13;
        }
      }
    }

    else
    {
      result = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
      if (result)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: InstanceCount,%u\n");
LABEL_13:
      result = LbsOsaTrace_WriteLog(8u, __str, v3, 2, 1);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncS04_76HandleStartPos(uint64_t a1)
{
  v126 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_START_POS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncS04_76HandleStartPos");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = *(a1 + 12);
    if (word_2A191DBDE == v5)
    {
      v6 = 0;
      goto LABEL_10;
    }

    v6 = 1;
    if (word_2A191DC12 == v5)
    {
LABEL_10:
      v10 = v6;
      v11 = &g_GncSFGClientData[52 * v6 + 330916];
      if (*(a1 + 14))
      {
        if (*(a1 + 14))
        {
          v12 = *(a1 + 32);
          if (*(a1 + 15) == 2 && v12 > *(a1 + 36))
          {
            if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              v110 = *(a1 + 32);
              v119 = *(a1 + 36);
              v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FixInterval,%u,ResponseTime,%u\n", v13);
LABEL_47:
              v28 = 1;
              LbsOsaTrace_WriteLog(8u, __str, v14, 2, 1);
LABEL_107:
              v31 = *(a1 + 12);
              v32 = v28;
              goto LABEL_108;
            }

            goto LABEL_48;
          }

          if (v12 - 1 <= 0x62)
          {
            if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              v111 = *(a1 + 32);
              v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FixInterval,%u,MinSupportedInt,%u\n", v19);
              goto LABEL_47;
            }

LABEL_48:
            v28 = 1;
            goto LABEL_107;
          }
        }

        if ((*(a1 + 14) & 2) != 0 && v11[4])
        {
          v20 = *(a1 + 36);
          if (!v20)
          {
            v20 = 1000;
          }

          *(v11 + 7) = v20;
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v21 = mach_continuous_time();
            v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Updated RespTime,%u\n", (*&g_MacClockTicksToMsRelation * v21), "GNC", 73, "GncS04_32HandleSessionModifyReq", *(v11 + 7));
            v23 = 1;
            LbsOsaTrace_WriteLog(8u, __str, v22, 4, 1);
          }

          else
          {
            v23 = 1;
          }
        }

        else
        {
          v23 = 0;
        }

        if (*(a1 + 14))
        {
          v24 = 1000;
          if (*(a1 + 32))
          {
            if (v11[4] == 1)
            {
              v24 = 1000;
            }

            else
            {
              v24 = *(a1 + 32);
            }
          }

          *(v11 + 6) = v24;
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v25 = mach_continuous_time();
            v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Updated FixInterval,%u\n", (*&g_MacClockTicksToMsRelation * v25), "GNC", 73, "GncS04_32HandleSessionModifyReq", *(v11 + 6));
            v23 = 1;
            LbsOsaTrace_WriteLog(8u, __str, v26, 4, 1);
          }

          else
          {
            v23 = 1;
          }
        }

        if ((*(a1 + 14) & 4) != 0)
        {
          v33 = *(a1 + 48);
          if (v11[32] != v33)
          {
            v11[32] = v33;
            if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v34 = mach_continuous_time();
              v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Updated PosOutput,%u\n", (*&g_MacClockTicksToMsRelation * v34), "GNC", 73, "GncS04_32HandleSessionModifyReq", v11[32]);
              v23 = 1;
              LbsOsaTrace_WriteLog(8u, __str, v35, 4, 1);
            }

            else
            {
              v23 = 1;
            }
          }
        }

        if ((*(a1 + 14) & 8) != 0)
        {
          v41 = *(a1 + 50);
          if (v11[33] != v41)
          {
            v11[33] = v41;
            if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v42 = mach_continuous_time();
              v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Updated ConstMask,%u\n", (*&g_MacClockTicksToMsRelation * v42), "GNC", 73, "GncS04_32HandleSessionModifyReq", v11[33]);
              v23 = 1;
              LbsOsaTrace_WriteLog(8u, __str, v43, 4, 1);
            }

            else
            {
              v23 = 1;
            }
          }
        }

        if ((*(a1 + 14) & 0x10) == 0)
        {
LABEL_84:
          if ((*(a1 + 14) & 0x20) != 0)
          {
            v48 = *(a1 + 44);
            if (*(v11 + 17) != v48)
            {
              *(v11 + 17) = v48;
              if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v49 = mach_continuous_time();
                v50 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Updated HorAcc,%u\n", (*&g_MacClockTicksToMsRelation * v49), "GNC", 73, "GncS04_32HandleSessionModifyReq", *(v11 + 17));
                v23 = 1;
                LbsOsaTrace_WriteLog(8u, __str, v50, 4, 1);
              }

              else
              {
                v23 = 1;
              }
            }
          }

          v51 = *(a1 + 14);
          if ((v51 & 0x40) != 0)
          {
            v52 = *(a1 + 46);
            if (*(v11 + 18) != v52)
            {
              *(v11 + 18) = v52;
              if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v53 = mach_continuous_time();
                v54 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Updated VertAcc,%u\n", (*&g_MacClockTicksToMsRelation * v53), "GNC", 73, "GncS04_32HandleSessionModifyReq", *(v11 + 18));
                v23 = 1;
                LbsOsaTrace_WriteLog(8u, __str, v54, 4, 1);
              }

              else
              {
                v23 = 1;
              }
            }

            v51 = *(a1 + 14);
          }

          if ((v51 & 0x80) == 0)
          {
            goto LABEL_102;
          }

          v55 = *(a1 + 40);
          if (*(v11 + 11) == v55 || !*(a1 + 15))
          {
            goto LABEL_102;
          }

          *(v11 + 11) = v55;
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v60 = mach_continuous_time();
            v61 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Updated AgeLimit,%u\n", (*&g_MacClockTicksToMsRelation * v60), "GNC", 73, "GncS04_32HandleSessionModifyReq", *(v11 + 11));
            LbsOsaTrace_WriteLog(8u, __str, v61, 4, 1);
          }

          if (*(v11 + 11) && !v11[48])
          {
            v69 = GncS04_71CheckAgeLimitCond(v4, v10, v56, v57, v58, v59);
            *(v11 + 2) = v4;
            *(v11 + 10) = v4;
            if (v69)
            {
              goto LABEL_103;
            }
          }

          else
          {
LABEL_102:
            *(v11 + 2) = v4;
            *(v11 + 10) = v4;
            if (v23)
            {
LABEL_103:
              if (LbsOsaTrace_IsLoggingAllowed(8u, 3, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v62 = mach_continuous_time();
                v63 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionUpdted\n", (*&g_MacClockTicksToMsRelation * v62), "GNC", 77, "GncS04_32HandleSessionModifyReq", 2059);
                LbsOsaTrace_WriteLog(8u, __str, v63, 3, 1);
              }

              GncS04_20SendUpdateToGncpe(v11);
              GncS04_74UpdateScheduler();
            }
          }

          GncS04_08SndStartPosNmea(v11);
          v28 = 255;
          goto LABEL_107;
        }

        v44 = *(a1 + 28);
        v45 = v11[4];
        if (*(a1 + 28))
        {
          if (!v11[4])
          {
LABEL_81:
            *(v11 + 5) = v44;
            if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v46 = mach_continuous_time();
              v47 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Updated NumReports,%d\n", (*&g_MacClockTicksToMsRelation * v46), "GNC", 73, "GncS04_32HandleSessionModifyReq", *(v11 + 5));
              v23 = 1;
              LbsOsaTrace_WriteLog(8u, __str, v47, 4, 1);
            }

            else
            {
              v23 = 1;
            }

            goto LABEL_84;
          }
        }

        else if (!v11[4])
        {
          v44 = -1;
          goto LABEL_81;
        }

        v44 = 1;
        goto LABEL_81;
      }

      if (*v11 != 2)
      {
        if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v27 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v112 = *(a1 + 12);
          v120 = *&g_GncSFGClientData[52 * v10 + 330924];
          v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ID,%u,ReqRcvd,%u\n", v27);
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StartAckPending ID,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 73, "GncS04_76HandleStartPos", 2053, *(a1 + 12));
        v9 = 4;
        goto LABEL_8;
      }

      goto LABEL_109;
    }

    if (byte_2A191DC10)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    if (byte_2A191DBDC)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v17 >= 2)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
LABEL_52:
        LbsOsaTrace_WriteLog(8u, __str, v18, 2, 1);
        goto LABEL_53;
      }

      goto LABEL_53;
    }

    if (byte_2A18CCF50 >= 2u)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v109 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: InstanceCount,%u,Max,%lu\n", v109);
        goto LABEL_52;
      }

LABEL_53:
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v29 = mach_continuous_time();
        v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v29), "GNC", 87, "GncS04_76HandleStartPos", 2049);
        LbsOsaTrace_WriteLog(8u, __str, v30, 2, 1);
      }

      v31 = *(a1 + 12);
      v32 = 0;
      goto LABEL_108;
    }

    ++byte_2A18CCF50;
    v36 = &g_GncSFGClientData[52 * v17 + 330916];
    *v36 = 1;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v37 = mach_continuous_time();
      v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: InstanceCount,%u\n", (*&g_MacClockTicksToMsRelation * v37), "GNC", 73, "GncS04_76HandleStartPos", byte_2A18CCF50);
      LbsOsaTrace_WriteLog(8u, __str, v38, 4, 1);
    }

    if (*(a1 + 14))
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
LABEL_67:
        GncS04_05DeRegClient(v17);
        v31 = *(a1 + 12);
        v32 = 1;
LABEL_108:
        GncS04_22SendStartPosResp(v32, v31);
        goto LABEL_109;
      }

      bzero(__str, 0x410uLL);
      v39 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v113 = *(a1 + 12);
      v121 = *(a1 + 14);
      v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u,ReqType,%u\n", v39);
LABEL_66:
      LbsOsaTrace_WriteLog(8u, __str, v40, 2, 1);
      goto LABEL_67;
    }

    if (!*(a1 + 48))
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        goto LABEL_67;
      }

      bzero(__str, 0x410uLL);
      v70 = mach_continuous_time();
      v115 = *(a1 + 48);
      v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx OutputType,%u\n", (*&g_MacClockTicksToMsRelation * v70));
      goto LABEL_66;
    }

    v66 = *(a1 + 24);
    v67 = *(a1 + 15);
    if (v66)
    {
      if (*(a1 + 15))
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          goto LABEL_67;
        }

        bzero(__str, 0x410uLL);
        v68 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v114 = *(a1 + 15);
        v122 = *(a1 + 24);
        v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessType,%hhu,StopTime,%u\n", v68);
        goto LABEL_66;
      }

      if (v66 <= *(a1 + 20))
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          goto LABEL_67;
        }

        bzero(__str, 0x410uLL);
        v75 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v117 = *(a1 + 20);
        v124 = *(a1 + 24);
        v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StartTime,%u,StopTime,%u\n", v75);
        goto LABEL_66;
      }

      v71 = 0;
    }

    else
    {
      v71 = *(a1 + 15);
      if (v67 == 2)
      {
        v72 = *(a1 + 32);
        if (v72 > *(a1 + 36))
        {
          if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
          {
            goto LABEL_67;
          }

          bzero(__str, 0x410uLL);
          v73 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v116 = *(a1 + 32);
          v123 = *(a1 + 36);
          v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FixInterval,%u,ResponseTime,%u\n", v73);
          goto LABEL_66;
        }

        v74 = 0;
LABEL_130:
        if (v72 - 1 <= 0x62)
        {
          if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
          {
            goto LABEL_67;
          }

          bzero(__str, 0x410uLL);
          v76 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v118 = *(a1 + 32);
          v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FixInterval,%u,MinSupportedInt,%u\n", v76);
          goto LABEL_66;
        }

        v77 = !v74;
        if (!*(a1 + 40))
        {
          v77 = 1;
        }

        if ((v77 & 1) == 0)
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v78 = mach_continuous_time();
            v79 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AgeLimit,%u,SessionType,%hhu\n", (*&g_MacClockTicksToMsRelation * v78), "GNC", 87, "GncS04_23ChkStartPosParams", 515, *(a1 + 40), *(a1 + 15));
            LbsOsaTrace_WriteLog(8u, __str, v79, 2, 1);
          }

          *(a1 + 40) = 0;
          v67 = *(a1 + 15);
        }

        v80 = *(a1 + 16);
        if (v80 && !v67)
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v81 = mach_continuous_time();
            v82 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx WaitToTimeout,%u,SessionType,%hhu\n", (*&g_MacClockTicksToMsRelation * v81), "GNC", 87, "GncS04_23ChkStartPosParams", 515, *(a1 + 16), *(a1 + 15));
            LbsOsaTrace_WriteLog(8u, __str, v82, 2, 1);
          }

          v80 = 0;
          *(a1 + 16) = 0;
          v67 = *(a1 + 15);
        }

        *&g_GncSFGClientData[52 * v17 + 330918] = *(a1 + 12);
        *&g_GncSFGClientData[52 * v17 + 330924] = v4;
        *&g_GncSFGClientData[52 * v17 + 330956] = v4;
        g_GncSFGClientData[52 * v17 + 330920] = v67;
        v83 = 1000 * *(a1 + 20);
        *&g_GncSFGClientData[52 * v17 + 330928] = v83;
        v84 = *(a1 + 28);
        if (*(a1 + 28))
        {
          if (!v67)
          {
LABEL_149:
            *&g_GncSFGClientData[52 * v17 + 330936] = v84;
            v85 = *(a1 + 32);
            if (v67 == 1 || v85 == 0)
            {
              v85 = 1000;
            }

            *&g_GncSFGClientData[52 * v17 + 330940] = v85;
            v87 = *(a1 + 24);
            if (v87)
            {
              if (!v67)
              {
                v88 = 1000 * v87;
                v89 = 16;
LABEL_162:
                *&v36[v89] = v88;
LABEL_163:
                g_GncSFGClientData[52 * v17 + 330966] = *(a1 + 54);
                g_GncSFGClientData[52 * v17 + 330948] = *(a1 + 48);
                g_GncSFGClientData[52 * v17 + 330949] = *(a1 + 50);
                *&g_GncSFGClientData[52 * v17 + 330950] = *(a1 + 44);
                *&g_GncSFGClientData[52 * v17 + 330960] = *(a1 + 40);
                g_GncSFGClientData[52 * v17 + 330964] = v80;
                g_GncSFGClientData[52 * v17 + 330965] = *(a1 + 49) != 0;
                if (LbsOsaTrace_IsLoggingAllowed(8u, 3, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v92 = mach_continuous_time();
                  v93 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ID,%u,Type,%hhu,NumFix,%d,FixInt,%u,Age,%u,PrefFtaMeasTime,%u,StartTm,%u,StopTm,%u\n", (*&g_MacClockTicksToMsRelation * v92), "GNC", 77, "GncS04_24StoreSessParams", 2057, *&g_GncSFGClientData[52 * v17 + 330918], g_GncSFGClientData[52 * v17 + 330920], *&g_GncSFGClientData[52 * v17 + 330936], *&g_GncSFGClientData[52 * v17 + 330940], *&g_GncSFGClientData[52 * v17 + 330960], g_GncSFGClientData[52 * v17 + 330966], *&g_GncSFGClientData[52 * v17 + 330928], *&g_GncSFGClientData[52 * v17 + 330932]);
                  LbsOsaTrace_WriteLog(8u, __str, v93, 3, 1);
                }

                if (LbsOsaTrace_IsLoggingAllowed(8u, 3, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v98 = mach_continuous_time();
                  v99 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespTime,%u,HAcc,%u,VAcc,%u,Output,%u,ConstMask,%u,WaitTO,%u\n", (*&g_MacClockTicksToMsRelation * v98), "GNC", 77, "GncS04_24StoreSessParams", 2057, *&g_GncSFGClientData[52 * v17 + 330944], *&g_GncSFGClientData[52 * v17 + 330950], *&g_GncSFGClientData[52 * v17 + 330952], g_GncSFGClientData[52 * v17 + 330948], g_GncSFGClientData[52 * v17 + 330949], g_GncSFGClientData[52 * v17 + 330964]);
                  LbsOsaTrace_WriteLog(8u, __str, v99, 3, 1);
                }

                v100 = !*&g_GncSFGClientData[52 * v17 + 330960] || g_GncSFGClientData[52 * v17 + 330964] || GncS04_71CheckAgeLimitCond(v4, v17, v94, v95, v96, v97);
                if (g_GncSFGClientData[52 * v17 + 330920] && g_GncSFGClientData[52 * v17 + 330965] == 1)
                {
                  GncS04_26InitCache(v17);
                }

                if (!v100)
                {
                  goto LABEL_109;
                }

                *v36 = 2;
                if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v101 = mach_continuous_time();
                  v102 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: StartAckPending ID,%u\n", (*&g_MacClockTicksToMsRelation * v101), "GNC", 73, "GncS04_76HandleStartPos", *&g_GncSFGClientData[52 * v17 + 330918]);
                  LbsOsaTrace_WriteLog(8u, __str, v102, 4, 1);
                }

                if (byte_2A18CCF40 == 1)
                {
                  if (AgpsFsmStopTimer(8523014) && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v103 = mach_continuous_time();
                    v104 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v103), "GNC", 87, "GncS04_76HandleStartPos", 1545);
                    LbsOsaTrace_WriteLog(8u, __str, v104, 2, 1);
                  }

                  byte_2A18CCF40 = 0;
                }

                if (AgpsFsmStartTimer(0x820D06u, 0x3E8u))
                {
                  if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v105 = mach_continuous_time();
                    v106 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Dur,%u\n", (*&g_MacClockTicksToMsRelation * v105), "GNC", 87, "GncS04_76HandleStartPos", 1544, 1000);
                    v107 = 2;
LABEL_187:
                    LbsOsaTrace_WriteLog(8u, __str, v106, v107, 1);
                  }
                }

                else
                {
                  byte_2A18CCF40 = 1;
                  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v108 = mach_continuous_time();
                    v106 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessStartAck Timer,%u\n", (*&g_MacClockTicksToMsRelation * v108), "GNC", 68, "GncS04_76HandleStartPos", 1000);
                    v107 = 5;
                    goto LABEL_187;
                  }
                }

                GncS04_20SendUpdateToGncpe(&g_GncSFGClientData[52 * v17 + 330916]);
                GncS04_74UpdateScheduler();
                GncS04_08SndStartPosNmea(&g_GncSFGClientData[52 * v17 + 330916]);
                goto LABEL_109;
              }
            }

            else if (!v67)
            {
              goto LABEL_163;
            }

            v90 = *(a1 + 36);
            v91 = v90 + v83;
            if (v90)
            {
              v88 = v91;
            }

            else
            {
              v88 = 1000;
            }

            v89 = 28;
            goto LABEL_162;
          }
        }

        else if (!v67)
        {
          v84 = -1;
          goto LABEL_149;
        }

        v84 = 1;
        goto LABEL_149;
      }
    }

    v72 = *(a1 + 32);
    v74 = v71 == 0;
    goto LABEL_130;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 69, "GncS04_76HandleStartPos", 517);
    v9 = 0;
LABEL_8:
    LbsOsaTrace_WriteLog(8u, __str, v8, v9, 1);
  }

LABEL_109:
  v64 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncS04_26InitCache(uint64_t result)
{
  v13 = *MEMORY[0x29EDCA608];
  if ((g_GncSFGClientData[52 * result + 330948] & 2) == 0)
  {
    if ((g_GncSFGClientData[52 * result + 330948] & 4) == 0)
    {
      goto LABEL_18;
    }

    v1 = &byte_2A18CD05C;
    if (byte_2A18CD05C == 1)
    {
      v1 = &byte_2A18F561C;
      if (byte_2A18F561C == 1)
      {
        result = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          mach_continuous_time();
          v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MeasCache NA\n");
LABEL_11:
          v4 = v2;
          v5 = 2;
LABEL_17:
          result = LbsOsaTrace_WriteLog(8u, __str, v4, v5, 1);
          goto LABEL_18;
        }

        goto LABEL_18;
      }
    }

    *v1 = 1;
    *(v1 + 1) = 0;
    v8 = *&g_GncSFGClientData[52 * result + 330918];
    *(v1 + 165284) = 0;
    v1[165292] = 127;
    *(v1 + 1) = v8;
    v1[165309] = 0;
    *(v1 + 165293) = 0u;
    result = LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0);
    if (!result)
    {
      goto LABEL_18;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v11 = *(v1 + 1);
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MeasCacheUsed ID,%u\n");
LABEL_16:
    v4 = v7;
    v5 = 4;
    goto LABEL_17;
  }

  v3 = &byte_2A18CCF54;
  if (byte_2A18CCF54 != 1 || (v3 = &byte_2A18CCFD8, byte_2A18CCFD8 != 1))
  {
    v6 = *&g_GncSFGClientData[52 * result + 330918];
    *v3 = 1;
    *(v3 + 1) = v6;
    *(v3 + 1) = 0xFFFFFFFF00000000;
    *(v3 + 2) = 0;
    *(v3 + 3) = 0;
    *(v3 + 8) = 7;
    *(v3 + 50) = 0;
    *(v3 + 36) = 0;
    *(v3 + 44) = 0;
    *(v3 + 29) = -1;
    *(v3 + 60) = xmmword_299761FA0;
    *(v3 + 19) = 0;
    *(v3 + 20) = 0;
    *(v3 + 21) = -1;
    *(v3 + 44) = 255;
    *(v3 + 97) = -1;
    *(v3 + 90) = -1;
    v3[103] = 0;
    *(v3 + 101) = 0;
    *(v3 + 13) = -1;
    *(v3 + 14) = 0x7FFFFFFFLL;
    *(v3 + 30) = -65536;
    *(v3 + 124) = -COERCE_DOUBLE(0x8000000080000000);
    result = LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0);
    if (!result)
    {
      goto LABEL_18;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = *(v3 + 1);
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GadCacheUsed ID,%u\n");
    goto LABEL_16;
  }

  result = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GadCache NA\n");
    goto LABEL_11;
  }

LABEL_18:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncS04_78HandlePosEstimateReq(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v28[745] = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_NO_COST_POS_REQ\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 73, "GncS04_78HandlePosEstimateReq");
    LbsOsaTrace_WriteLog(8u, __str, v8, 4, 1);
  }

  if (v6)
  {
    v9 = gnssOsa_Calloc("GncS04_78HandlePosEstimateReq", 2891, 1, 0x20uLL);
    if (!v9)
    {
      goto LABEL_23;
    }

    v10 = v9;
    v11 = gnssOsa_Calloc("GncS04_78HandlePosEstimateReq", 2897, 1, 0x1738uLL);
    *(v10 + 3) = v11;
    if (!v11)
    {
      free(v10);
      goto LABEL_23;
    }

    *__str = 0;
    v28[0] = 0;
    *(v28 + 7) = 0;
    *(&v28[2] + 4) = 0;
    *(&v28[1] + 4) = 0;
    WORD2(v28[3]) = 0;
    memset(&v28[4], 0, 262);
    bzero(&v28[37], 0x28CuLL);
    for (i = 0; i != 384; i += 3)
    {
      v13 = &__str[i];
      *(v13 + 478) = 0;
      v13[958] = *(&v28[118] + i + 6) & 0xE0;
    }

    *(&v28[194] + 4) = 0u;
    *(&v28[196] + 4) = 0u;
    *(&v28[190] + 4) = 0u;
    *(&v28[192] + 4) = 0u;
    *(&v28[186] + 4) = 0u;
    *(&v28[188] + 4) = 0u;
    *(&v28[182] + 4) = 0u;
    *(&v28[184] + 4) = 0u;
    *(&v28[178] + 4) = 0u;
    *(&v28[180] + 4) = 0u;
    *(&v28[174] + 4) = 0u;
    *(&v28[176] + 4) = 0u;
    *(&v28[170] + 4) = 0u;
    *(&v28[172] + 4) = 0u;
    *(&v28[166] + 4) = 0u;
    *(&v28[168] + 4) = 0u;
    bzero(&v28[199], 0x1109uLL);
    GncP_GetNavData(__str);
    if (WORD2(v28[1]) > 0x7BBu)
    {
      v19 = *__str;
      v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v19;
      *(v10 + 4) = *__str;
      *(v10 + 5) = v20;
      if (v20 < 0x5265C00)
      {
        v10[12] = 1;
        memcpy(*(v10 + 3), v28, 0x1738uLL);
        goto LABEL_20;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(v26, 0x410uLL);
        v21 = mach_continuous_time();
        v15 = snprintf(v26, 0x40FuLL, "%10u %s%c %s: #%04hx PosAge,%u\n", (*&g_MacClockTicksToMsRelation * v21), "GNC", 73, "GncS04_78HandlePosEstimateReq", 772, *(v10 + 5));
        v16 = 4;
        goto LABEL_17;
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(v26, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(v26, 0x40FuLL, "%10u %s%c %s: InvalidNav\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 87, "GncS04_78HandlePosEstimateReq");
      v16 = 2;
LABEL_17:
      LbsOsaTrace_WriteLog(8u, v26, v15, v16, 1);
    }

    v10[12] = 0;
LABEL_20:
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(v26, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(v26, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_NO_COST_POS_RSP =>GNM Valid,%u,Age,%u,PosTime,%u\n", (*&g_MacClockTicksToMsRelation * v22), "GNC", 73, "GncS04_78HandlePosEstimateReq", v10[12], *(v10 + 5), *(v10 + 4));
      LbsOsaTrace_WriteLog(8u, v26, v23, 4, 1);
    }

    AgpsSendFsmMsg(130, 128, 8521220, v10);
    goto LABEL_23;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 69, "GncS04_78HandlePosEstimateReq", 517);
    LbsOsaTrace_WriteLog(8u, __str, v18, 0, 1);
  }

LABEL_23:
  v24 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncS04_80HandleCfgUpdtInd(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v1 = *(a1 + 12);
    if (v1)
    {
      LOWORD(g_GncSConfig) = *(a1 + 14);
    }

    if ((v1 & 2) != 0)
    {
      HIWORD(g_GncSConfig) = *(a1 + 16);
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_CFG_UPDT_IND NmeaMask,%u,MEUpdtRate,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncS04_80HandleCfgUpdtInd", g_GncSConfig, HIWORD(g_GncSConfig));
      v4 = 4;
LABEL_10:
      LbsOsaTrace_WriteLog(8u, __str, v3, v4, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 69, "GncS04_80HandleCfgUpdtInd", 517);
    v4 = 0;
    goto LABEL_10;
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncS04_82HandlePosEvntResp(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 69, "GncS04_82HandlePosEvntResp", 517);
      v8 = 0;
LABEL_12:
      LbsOsaTrace_WriteLog(8u, __str, v7, v8, 1);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_POS_EVENT_RSP Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncS04_82HandlePosEvntResp", *(a1 + 12));
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  v4 = *(a1 + 12);
  if (v4 <= 4)
  {
    if (*(a1 + 12) > 2u)
    {
      if (v4 != 3)
      {
        if (v4 != 4)
        {
          goto LABEL_28;
        }

LABEL_24:
        v9 = 2;
LABEL_26:
        GncS04_31ChkSendPendingStopAck(v9);
        goto LABEL_27;
      }
    }

    else if (v4 != 1)
    {
      if (v4 == 2)
      {
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    v9 = 255;
    goto LABEL_26;
  }

  if (*(a1 + 12) <= 6u)
  {
    if (v4 != 5)
    {
      if (v4 == 6)
      {
        goto LABEL_22;
      }

LABEL_28:
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        goto LABEL_27;
      }

      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "GncS04_82HandlePosEvntResp", 770, *(a1 + 12));
      v8 = 2;
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  if (v4 != 7)
  {
    if (v4 != 8)
    {
      if (v4 == 9)
      {
        v5 = 0;
LABEL_23:
        GncS04_35ChkSendPendingStartAck(v5);
        goto LABEL_27;
      }

      goto LABEL_28;
    }

LABEL_22:
    v5 = 255;
    goto LABEL_23;
  }

LABEL_27:
  v10 = *MEMORY[0x29EDCA608];
  return 0;
}

void GncS04_99DeInitFGClientInstance(void)
{
  v2 = *MEMORY[0x29EDCA608];
  if (g_GncSFGClientData[0] == 1)
  {
    AgpsFsmStopTimer(8522758);
  }

  if (byte_2A18CCF48 == 1)
  {
    AgpsFsmStopTimer(8523270);
  }

  if (byte_2A18CCF40 == 1)
  {
    v0 = *MEMORY[0x29EDCA608];

    AgpsFsmStopTimer(8523014);
  }

  else
  {
    v1 = *MEMORY[0x29EDCA608];
  }
}

void s_GncS_CacheMeasData::s_GncS_CacheMeasData(s_GncS_CacheMeasData *this)
{
  v1 = 0;
  v13 = *MEMORY[0x29EDCA608];
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0xFFFFFFFF00000000;
  *(this + 12) = 0;
  *(this + 2) = 0;
  *(this + 24) = 0;
  *(this + 28) = -NAN;
  *(this + 18) = -1;
  *(this + 10) = 0;
  *(this + 22) = 0;
  do
  {
    v2 = this + v1;
    v2[46] = -1;
    *(v2 + 47) = 0;
    v2[55] = 0;
    v1 += 10;
  }

  while (v1 != 640);
  v3 = 0;
  *(this + 86) = 0xFFFFFFFF00000000;
  *(this + 696) = -1;
  *(this + 700) = -1;
  *(this + 708) = 0x7FFFFFFFLL;
  *(this + 716) = 0;
  *(this + 359) = -1;
  *(this + 90) = -COERCE_DOUBLE(0x8000000080000000);
  *(this + 728) = 0;
  for (i = 44; i != 164524; i += 10280)
  {
    v5 = this + i + 688;
    *v5 = 0;
    v5[4] = 0;
    v6 = v3;
    for (j = 8; j != 10280; j += 1284)
    {
      v8 = &v5[j];
      *v8 = 0;
      v8[2] = 0;
      v9 = v6;
      v10 = 1280;
      do
      {
        v11 = this + v9;
        v11[744] = -1;
        *(v11 + 188) = 0;
        *(v11 + 378) = 0;
        *(v11 + 190) = 0;
        v11[749] = 0;
        *(this + v9 + 745) = 0;
        v9 += 20;
        v10 -= 20;
      }

      while (v10);
      v6 += 1284;
    }

    v3 += 10280;
  }

  *(this + 165212) = 0;
  *(this + 20652) = 0x700000000;
  *(this + 165224) = 0u;
  *(this + 165238) = 0;
  *(this + 82623) = -1;
  *(this + 165248) = 0;
  *(this + 41313) = 0;
  *(this + 20657) = -1;
  *(this + 41316) = 0;
  *(this + 41317) = 0;
  *(this + 41318) = -1;
  *(this + 165276) = -1;
  *(this + 165278) = -1;
  *(this + 82641) = -1;
  *(this + 165284) = 0;
  *(this + 165292) = 127;
  *(this + 82647) = 0;
  *(this + 41324) = 0;
  *(this + 165300) = 0;
  *(this + 41326) = 0;
  *(this + 82654) = 0;
  v12 = *MEMORY[0x29EDCA608];
}

uint64_t Gnm10_00InitReq(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_INIT\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm10_00InitReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 4, 1);
  }

  if (v6)
  {
    off_2A19268F8 = 0;
    *&qword_2A19268D8 = 0u;
    *&off_2A19268E8 = 0u;
    *&g_GnmCBs = 0u;
    g_NmeaMask = 0;
    Gnm30_00InitConfig();
    qword_2A1939EE8 = 0;
    unk_2A1939EF0 = 0;
    qword_2A1939EF8 = 0;
    g_GnmInstances[0] = 0;
    *g_HWStatus = 0;
    *&v9 = 0x400000004;
    *(&v9 + 1) = 0x400000004;
    *(&qword_2A1920A8C + 4) = v9;
    unk_2A1920AA0 = 0u;
    *&dword_2A1920AB0 = 0u;
    unk_2A1920AC0 = 0u;
    unk_2A1920AD0 = 0u;
    *(&xmmword_2A1920ADC + 4) = 0u;
    *algn_2A1920AF0 = 0u;
    *&dword_2A1920B00 = 0u;
    unk_2A1920B10 = 0u;
    unk_2A1920B20 = 0u;
    *(&xmmword_2A1920B2C + 4) = 0u;
    byte_2A1920B40 = 0;
    g_HalStatusInfo = 0;
    g_AssistReq = 0xFFFFFFFF00000000;
    g_ClearGnssReq = 0;
    bzero(__str, 0x1748uLL);
    for (i = 0; i != 384; i += 3)
    {
      v11 = &__str[i];
      *(v11 + 482) = 0;
      v11[966] = __str[i + 966] & 0xE0;
    }

    memset(&__str[1348], 0, 256);
    bzero(&__str[1608], 0x1100uLL);
    memcpy(&g_PosEstimate, __str, 0x1748uLL);
    qword_2A19397B8 = 0;
    unk_2A19397C0 = 0;
    g_Gnm_NVStoreCntxt = 0;
    *(&dword_2A19397C6 + 1) = 0;
    g_SbState = 234881279;
    g_PowerRepEnbStatus = 0;
    g_XOTimerStatus = 0;
    g_PrevUsedLtl = 0;
    bzero(&g_LTLDataPPM, 0x5E2uLL);
    g_AgeingTimeGpsSeconds = 0;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 69, "Gnm10_00InitReq", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v13, 0, 1);
  }

  v14 = *MEMORY[0x29EDCA608];
  return 0;
}

void *Gnm10_01DeinitReq(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_DEINIT\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_01DeinitReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    g_IsHwInit = 0;
    Gnm02_24AbortAllNafSessions(7);
    Gnm02_26AbortAllAssistSessions();
    v4 = 2u;
    do
    {
      v5 = *&g_GnmInstances[v4];
      if (v5)
      {
        Gnm02_21DeleteInstn(v5);
      }

      v4 += 2;
    }

    while (v4 != 8);
    g_GnmInstances[0] = 0;
    Gnm53_71DeInitializeXOParams();
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmState,Active/Reset->Init\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 77, "Gnm10_01DeinitReq", 261);
      LbsOsaTrace_WriteLog(0xBu, __str, v7, 3, 1);
    }

    result = &a_GnmInitState;
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 69, "Gnm10_01DeinitReq", 517);
      LbsOsaTrace_WriteLog(0xBu, __str, v10, 0, 1);
    }

    result = 0;
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm10_04PositioningReq(uint64_t a1)
{
  v28 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_REG_POS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_04PositioningReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = 0;
    v5 = *(a1 + 54);
    v6 = 1;
    do
    {
      v7 = *&g_GnmInstances[2 * v4 + 2];
      if (v7)
      {
        v8 = *(v7 + 8);
        if (v8)
        {
          if (*(v7 + 2) == 2 && (*(v8 + 8) & 1) != 0)
          {
            break;
          }
        }
      }

      v6 = v4++ < 2;
    }

    while (v4 != 3);
    if (v6 || Gnm02_39GetEarlyStartInstn())
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 3, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 77, "Gnm10_04PositioningReq", 1025);
        LbsOsaTrace_WriteLog(0xBu, __str, v10, 3, 1);
      }

      v11 = *(a1 + 12);
      v12 = v5 & 2;
      v13 = 9;
LABEL_15:
      Gnm11_00ApiStatusCB(v13, 1, v11, v12);
      v14 = *(a1 + 64);
      if (v14)
      {
        free(v14);
      }

      *(a1 + 64) = 0;
      goto LABEL_21;
    }

    if ((dword_2A192081C & 0x800) == 0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 3, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v19 = mach_continuous_time();
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v19), "GNM", 77, "Gnm10_04PositioningReq", 1027);
        LbsOsaTrace_WriteLog(0xBu, __str, v20, 3, 1);
      }

      v11 = *(a1 + 12);
      v12 = v5 & 2;
      v13 = 7;
      goto LABEL_15;
    }

    v21 = Gnm02_13ReqNewNafInstn(*(a1 + 12), "GNM_REG_POS_REQ");
    if (!v21 || (v22 = v21, (v23 = *(v21 + 1)) == 0) || *(v21 + 2) != 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v25 = mach_continuous_time();
        v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v25), "GNM", 87, "Gnm10_04PositioningReq", 2052);
        LbsOsaTrace_WriteLog(0xBu, __str, v26, 2, 1);
      }

      v11 = *(a1 + 12);
      v12 = v5 & 2;
      v13 = 3;
      goto LABEL_15;
    }

    v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v23->i8[4] = *(a1 + 54);
    v23[9] = *(a1 + 64);
    v23[1].i8[0] = *(a1 + 48);
    v23[1].i32[1] = v24;
    v23[5].i32[0] = v24;
    v23[2] = vmul_s32(*(a1 + 36), vdup_n_s32(0x3E8u));
    v23[3].i32[0] = *(a1 + 32);
    v23[3].i32[1] = *(a1 + 24);
    v23[4].i32[1] = v24;
    v23[5].i16[2] = *(a1 + 44);
    v23[6].i16[2] = *(a1 + 50);
    v23[6].i16[3] = *(a1 + 52);
    v23[4].i32[0] = *(a1 + 28);
    v23[7] = *(a1 + 16);
    v23[8].i8[0] = *(a1 + 56);
    if (!Gnm10_27SendPosStart(v22))
    {
      Gnm11_00ApiStatusCB(11, 1, *(a1 + 12), v5 & 2);
      Gnm02_21DeleteInstn(v22);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "GNM", 69, "Gnm10_04PositioningReq", 517);
      LbsOsaTrace_WriteLog(0xBu, __str, v16, 0, 1);
    }

    Gnm11_00ApiStatusCB(11, 0, 0, 0);
  }

LABEL_21:
  v17 = *MEMORY[0x29EDCA608];
  return 0;
}

BOOL Gnm10_27SendPosStart(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  v3 = gnssOsa_Calloc("Gnm10_27SendPosStart", 636, 1, 0x38uLL);
  v5 = v3;
  if (v3)
  {
    v3[6] = *a1;
    v3[7] = 0;
    if ((*(v2 + 4) & 2) != 0)
    {
      v3[14] = *(v2 + 44);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessType\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm10_27SendPosStart", 770);
      LbsOsaTrace_WriteLog(0xBu, __str, v7, 2, 1);
    }

    LODWORD(v4) = *(v2 + 16);
    *&v8 = v4 * 0.001;
    *(v5 + 5) = *&v8;
    LODWORD(v8) = *(v2 + 20);
    *(v5 + 6) = (v8 * 0.001);
    *(v5 + 8) = *(v2 + 24);
    v5[22] = *(v2 + 52);
    v5[23] = *(v2 + 54);
    *(v5 + 48) = *(v2 + 8);
    *(v5 + 50) = 55;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionId,%u,StartTime,%u,StopTime,%u,NoOfRep,%u,FixInt,%u RespTime,%u,HorAcc,%u,VerAcc,%u,PosOutput,%u,ConstRep,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 73, "Gnm10_27SendPosStart", v5[6], *(v5 + 5), *(v5 + 6), v5[14], *(v5 + 8), *(v5 + 9), v5[22], v5[23], *(v5 + 48), *(v5 + 50));
      LbsOsaTrace_WriteLog(0xBu, __str, v10, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_START_POS_REQ =>GNCS Id,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 73, "Gnm10_27SendPosStart", v5[6]);
      LbsOsaTrace_WriteLog(0xBu, __str, v12, 4, 1);
    }

    AgpsSendFsmMsg(128, 130, 8519680, v5);
  }

  result = v5 != 0;
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm10_05DiscardPosReq(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_REG_POS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_05DiscardPosReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    Gnm11_00ApiStatusCB(4, 1, *(a1 + 12), *(a1 + 54) & 2);
    v4 = *(a1 + 64);
    if (v4)
    {
      free(v4);
    }

    *(a1 + 64) = 0;
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm10_05DiscardPosReq", 517);
      LbsOsaTrace_WriteLog(0xBu, __str, v6, 0, 1);
    }

    Gnm11_00ApiStatusCB(11, 0, 0, 0);
  }

  v7 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm10_06StopPosnReq(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_STOP_POSN_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_06StopPosnReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 69, "Gnm10_06StopPosnReq", 517);
      LbsOsaTrace_WriteLog(0xBu, __str, v7, 0, 1);
    }

    v8 = 11;
    goto LABEL_14;
  }

  InstnFromNafId = Gnm02_32GetInstnFromNafId(*(a1 + 12));
  if (!InstnFromNafId)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 87, "Gnm10_06StopPosnReq", 2052);
      LbsOsaTrace_WriteLog(0xBu, __str, v10, 2, 1);
    }

    v8 = 3;
LABEL_14:
    Gnm11_00ApiStatusCB(v8, 0, 0, 1);
    goto LABEL_15;
  }

  v5 = InstnFromNafId;
  if ((*(*(InstnFromNafId + 8) + 4) & 7) == 0 || !Gnm02_23StopNafSession(InstnFromNafId))
  {
    Gnm11_00ApiStatusCB(11, 1, *(a1 + 12), 1);
    Gnm02_21DeleteInstn(v5);
  }

LABEL_15:
  v11 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm10_08HandleClearGnss(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_CLEAR_GNSS_CACHE\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_08HandleClearGnss");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = *(a1 + 12);
    if ((v4 - 0x400000) <= 0xFFC00000)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DeleteFields,0x%X\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 87, "Gnm10_08HandleClearGnss", 770, v4);
        LbsOsaTrace_WriteLog(0xBu, __str, v6, 2, 1);
      }

      v7 = 1;
      goto LABEL_15;
    }

    if (byte_2A1938EB9 != 1)
    {
      byte_2A1938EB9 = 1;
      Gnm17_12SendClearNv(v4);
      goto LABEL_16;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PrevReqOngoing\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 87, "Gnm10_08HandleClearGnss", 1028);
      v10 = 2;
      goto LABEL_13;
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 69, "Gnm10_08HandleClearGnss", 517);
    v10 = 0;
LABEL_13:
    LbsOsaTrace_WriteLog(0xBu, __str, v9, v10, 1);
  }

  v7 = 11;
LABEL_15:
  Gnm11_00ApiStatusCB(v7, 0, 0, 16);
LABEL_16:
  v12 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm10_09DisableGnss(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_DISABLE_GNSS\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_09DisableGnss");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    Gnm02_24AbortAllNafSessions(7);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm10_09DisableGnss", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 0, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm10_10RegisterGnmCBs(void *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_REG_CALLBACKS\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_10RegisterGnmCBs");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    if (a1[2])
    {
      g_GnmCBs = a1[2];
    }

    if (a1[3])
    {
      qword_2A19268D8 = a1[3];
    }

    if (a1[4])
    {
      off_2A19268F0 = a1[4];
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm10_10RegisterGnmCBs", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 0, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm10_13StopFwActivityRsp(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_STOP_FW_ACTIVE_RSP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_13StopFwActivityRsp");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 69, "Gnm10_13StopFwActivityRsp", 517);
    v10 = 0;
LABEL_19:
    LbsOsaTrace_WriteLog(0xBu, __str, v9, v10, 1);
    goto LABEL_20;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Activity,%hhu,Resp,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm10_13StopFwActivityRsp", *(a1 + 12), *(a1 + 13));
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  v6 = *(a1 + 12);
  if (v6 == 3)
  {
    Gnm37_13HandleSbStopFwActResp(*(a1 + 13));
    goto LABEL_20;
  }

  if (v6 != 1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ActivityType,%hhu\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 87, "Gnm10_13StopFwActivityRsp", 770, *(a1 + 12));
    v10 = 2;
    goto LABEL_19;
  }

  if (HIBYTE(dword_2A19397C6) == 1)
  {
    if (*(a1 + 13))
    {
      v7 = byte_2A19397CA;
    }

    else
    {
      v7 = 11;
    }

    Gnm11_00ApiStatusCB(v7, 0, 0, 17);
  }

  byte_2A19397CA = 0;
  dword_2A19397C6 = 0;
LABEL_20:
  v12 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm10_14InjectLTL(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_INJECT_LTL\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_14InjectLTL");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm10_14InjectLTL", 517);
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 0, 1);
    }

    v6 = 11;
    goto LABEL_10;
  }

  if (g_BootMode != 2)
  {
    v6 = 2;
LABEL_10:
    Gnm11_00ApiStatusCB(v6, 0, 0, 17);
    goto LABEL_11;
  }

  HIWORD(dword_2A19397C6) = 256;
  LOBYTE(dword_2A19397C6) = 1;
  Gnm10_29SendFwActivity(1, 1);
  Gnm29_01RestoreVarMENv(0);
LABEL_11:
  v7 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm10_29SendFwActivity(char a1, int a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    result = gnssOsa_Calloc("Gnm10_29SendFwActivity", 712, 1, 0x10uLL);
    if (result)
    {
      v4 = result;
      *(result + 12) = a1;
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_START_FW_ACTIVE_IND =>GNCP Activity,%hhu\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm10_29SendFwActivity", v4[12]);
        LbsOsaTrace_WriteLog(0xBu, __str, v6, 4, 1);
      }

      v7 = 8392195;
LABEL_10:
      AgpsSendFsmMsg(128, 134, v7, v4);
      result = 1;
    }
  }

  else
  {
    result = gnssOsa_Calloc("Gnm10_29SendFwActivity", 729, 1, 0x10uLL);
    if (result)
    {
      v4 = result;
      *(result + 12) = a1;
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_STOP_FW_ACTIVE_REQ =>GNC Activity,%hhu\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm10_29SendFwActivity", v4[12]);
        LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
      }

      v7 = 8392448;
      goto LABEL_10;
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm10_15NmeaUpdateReq(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_REG_NMEA_UPDATES\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_15NmeaUpdateReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = 517;
LABEL_13:
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v11, "GNM", 69, "Gnm10_15NmeaUpdateReq", v12);
    LbsOsaTrace_WriteLog(0xBu, __str, v13, 0, 1);
    goto LABEL_20;
  }

  v4 = gnssOsa_Calloc("Gnm10_15NmeaUpdateReq", 527, 1, 0x10uLL);
  if (!v4)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = 1537;
    goto LABEL_13;
  }

  v5 = v4;
  v6 = *(a1 + 16);
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
  if (v6)
  {
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Registering\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm10_15NmeaUpdateReq");
      LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
    }

    off_2A19268E0 = *(a1 + 16);
    v5[12] = 1;
    v10 = *(a1 + 24);
  }

  else
  {
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Deregistering\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 73, "Gnm10_15NmeaUpdateReq");
      LbsOsaTrace_WriteLog(0xBu, __str, v15, 4, 1);
    }

    v10 = 0;
    off_2A19268E0 = 0;
    v5[12] = 0;
  }

  *(v5 + 7) = v10;
  g_NmeaMask = v10;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_NMEA_DATA_REQ =>GNCP\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 73, "Gnm10_15NmeaUpdateReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v17, 4, 1);
  }

  AgpsSendFsmMsg(128, 134, 8786688, v5);
LABEL_20:
  v18 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm10_25SendZxMsg(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_SEND_ZX_MES\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_25SendZxMsg");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      goto LABEL_19;
    }

    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm10_25SendZxMsg", 517);
    v9 = 0;
LABEL_13:
    LbsOsaTrace_WriteLog(0xBu, __str, v8, v9, 1);
    goto LABEL_19;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_19;
    }

    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 87, "Gnm10_25SendZxMsg", 770);
    v9 = 2;
    goto LABEL_13;
  }

  v5 = *(a1 + 24);
  v6 = v4[2];
  if (v5 < 7 || v6 != 86)
  {
    goto LABEL_15;
  }

  if (v4[3] != 110)
  {
    v6 = 86;
LABEL_15:
    Gnm07_01Send(v6, v4[4], v4, v5);
    goto LABEL_16;
  }

  Gnm06_04SendTruthPos(*(a1 + 16), *(a1 + 24));
LABEL_16:
  v11 = *(a1 + 16);
  if (v11)
  {
    free(v11);
  }

  *(a1 + 16) = 0;
LABEL_19:
  v12 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm10_26DiscardZxMsg(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_SEND_ZX_MES\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_26DiscardZxMsg");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      free(v4);
      *(a1 + 16) = 0;
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm10_26DiscardZxMsg", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v6, 0, 1);
  }

  v7 = *MEMORY[0x29EDCA608];
  return 0;
}

BOOL Gnm10_28StopPositioning(unsigned __int16 *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("Gnm10_28StopPositioning", 686, 1, 0x10uLL);
  v3 = v2;
  if (v2)
  {
    v2[6] = *a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_STOP_POS_REQ =>GNCS Id,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm10_28StopPositioning", v3[6]);
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
    }

    AgpsSendFsmMsg(128, 130, 8519936, v3);
  }

  result = v3 != 0;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Gnm10_31SendMEWakeRsp(int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("Gnm10_31SendMEWakeRsp", 755, 1, 0x10uLL);
  v3 = v2;
  if (v2)
  {
    v2[12] = a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ME_WAKE_RSP =>GNCP Status,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm10_31SendMEWakeRsp", a1);
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
    }

    AgpsSendFsmMsg(128, 134, 8392708, v3);
  }

  result = v3 != 0;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

_BYTE *NK_Set_Fix_Type(_BYTE *result, double *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int *a8, double a9, double a10, int a11, char a12, int a13, int a14, _BYTE *a15, _DWORD *a16, unsigned int *a17, _DWORD *a18, int *a19, int *a20)
{
  v63 = *MEMORY[0x29EDCA608];
  v20 = *a8;
  if (v20 > 8)
  {
    v21 = 100000000.0;
  }

  else
  {
    v21 = dbl_299761FB0[v20];
  }

  v22 = sqrt(a2[5] + a2[6]);
  v23 = sqrt(a2[8] + a2[9]);
  v24 = 1000 * a11 / a5;
  v25 = sqrt(v21);
  if (!a13 || (v26 = *a17, *a17 >= v24))
  {
    v29 = 0;
    v30 = 0;
    v28 = 0;
    LOBYTE(v27) = 0;
    *(a4 + 20) = 0;
    goto LABEL_31;
  }

  if (*(a4 + 16) > v26)
  {
    v27 = *(a3 + 40) == 2 || *(a3 + 60) == 2 || *(a3 + 64) == 2 || *(a3 + 68) == 2 || *(a3 + 72) == 2 || *(a3 + 76) == 2 || *(a3 + 80) == 2;
    v28 = (*(a3 + 84) == 2 || *(a3 + 88) == 2) && (v20 - 3) < 6;
    v30 = a9 < 1000000.0 && *(a3 + 48) == 2 || *(a3 + 28) == 2 || v27;
LABEL_27:
    v29 = v23 < v25 + ((v26 * a5 / 0x1F4) & 0xFFFFFE) && v22 < 400.0;
    ++*(a4 + 20);
    goto LABEL_31;
  }

  if ((v20 - 4) > 4)
  {
    v29 = 0;
    v30 = 0;
    v28 = 0;
    LOBYTE(v27) = 0;
    goto LABEL_31;
  }

  LOBYTE(v27) = 0;
  v28 = 0;
  v30 = 0;
  v29 = 0;
  if (*(a3 + 2) <= 1u)
  {
    goto LABEL_27;
  }

LABEL_31:
  v32 = *(a3 + 52);
  v31 = *(a3 + 56);
  v33 = *(a3 + 48);
  v35 = a10 < 500000.0 && v32 == 2;
  *a19 = 0;
  v36 = result[5];
  if (v36 != 1 || (*a4 & 1) != 0)
  {
    v37 = 1;
LABEL_40:
    if (*a17 < 0x1869F)
    {
      ++*a17;
    }

    *a16 = 0;
    if (v36)
    {
      v38 = 0;
    }

    else
    {
      v38 = v37;
    }

    if ((v38 & v29) == 1 && *a17 <= v24 && *(a3 + 2) <= 1u)
    {
      *a19 = 1;
    }

    goto LABEL_93;
  }

  if (v22 >= 400.0 && (a6 > 0x7CF || (*a15 & 1) != 0 || v22 >= 1000.0))
  {
    v39 = a12 ^ 1;
    v37 = 1;
    if (a6 < 0x186A0)
    {
      v39 = 0;
    }

    if ((v39 & 1) != 0 || !*a15)
    {
      goto LABEL_40;
    }
  }

  v40 = *(a3 + 28);
  if (a14 > 8 || (v41 = v40 == 1, result[4] == 1))
  {
    if (v40 == 1)
    {
      v41 = 2;
    }

    else
    {
      v41 = 1;
    }
  }

  if (((v30 | v35) & 1) != 0 || (v45 = *(a3 + 1), v44 = 5, 5 - v41 > v45) && (4 - v41 > v45 || (a9 < 160000.0 ? (v46 = v33 == 1) : (v46 = 0), !v46 ? (v47 = 0) : (v47 = 1), v32 == 1 ? (v48 = a10 < 160000.0) : (v48 = 0), (v44 = 5, !v48) && (v47 & 1) == 0)))
  {
    v42 = v31 == 2 || v35;
    if ((v30 & 1) != 0 || (v22 < 400.0 ? (v43 = v42 == 0) : (v43 = 1), v43 || (v44 = 4, 4 - v41 > *(a3 + 1))))
    {
      if ((v20 > 1) | v30 & 1)
      {
        if (v33 == 1)
        {
LABEL_155:
          v37 = 2;
LABEL_156:
          *a19 = v37;
          v37 = 0;
          goto LABEL_40;
        }
      }

      else
      {
        v60 = *(a3 + 1);
        if (2 - v41 > v60)
        {
          v37 = 2;
        }

        else
        {
          v37 = 3;
        }

        if (2 - v41 <= v60 || v33 == 1)
        {
          goto LABEL_156;
        }
      }

      if (*(a3 + 84) == 1 && (*(a3 + 60) == 1 || *(a3 + 64) == 1 || *(a3 + 68) == 1 || *(a3 + 72) == 1 || *(a3 + 76) == 1 || *(a3 + 80) == 1))
      {
        goto LABEL_155;
      }

      if (*(a3 + 88) == 1)
      {
        if (*(a3 + 60) == 1 || *(a3 + 64) == 1 || *(a3 + 68) == 1 || *(a3 + 72) == 1 || *(a3 + 76) == 1)
        {
          goto LABEL_155;
        }

        if (*(a3 + 80) == 1)
        {
          v37 = 2;
        }

        else
        {
          v37 = 1;
        }

        if (*(a3 + 80) == 1 || v29)
        {
          goto LABEL_156;
        }
      }

      else if (v29)
      {
        v37 = 1;
        goto LABEL_156;
      }

      v37 = 1;
      if (1 - v41 > *(a3 + 1) || ((v30 | v28) & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_156;
    }
  }

  *a19 = v44;
  if (*a16 < 0x1869Fu)
  {
    ++*a16;
  }

  *a17 = 0;
  *a18 = 0;
  if (!a13 && *a16 >= 3u)
  {
    *a16 = 2;
  }

LABEL_93:
  if (*a15 == 1)
  {
    if (*a16 > 4u)
    {
      goto LABEL_95;
    }

    v49 = 1;
    if (a6 > 0x12B || !v36 || v22 >= 400.0)
    {
      goto LABEL_97;
    }

    if (*(a3 + 1) >= 6u)
    {
LABEL_95:
      v49 = 0;
      *a15 = 0;
    }

    else
    {
      v49 = 1;
    }
  }

  else
  {
    v49 = 0;
  }

LABEL_97:
  *a20 = 0;
  if ((v20 - 5) >= 4)
  {
    v50 = 30;
  }

  else
  {
    v50 = 100;
  }

  if (result[8] == 1 && (*a4 & 1) == 0 && ((v49 & 1) != 0 || v50 > a7 && v23 < v25))
  {
    v51 = *(a3 + 40);
    v52 = v51 == 1;
    v53 = v31 == 2 || v27;
    if (v53)
    {
      v54 = v31 != 2 || v27;
      if ((v54 & 1) == 0 && (v52 ^ 3u) <= *(a3 + 5))
      {
        v55 = 4;
LABEL_166:
        *a20 = v55;
        goto LABEL_167;
      }
    }

    else
    {
      v56 = *(a3 + 5);
      if (v51 == 1)
      {
        v57 = 3;
      }

      else
      {
        v57 = 4;
      }

      if (v57 <= v56 || (v52 ^ 3u) <= v56 && v31 == 1)
      {
        v55 = 5;
        goto LABEL_166;
      }
    }

    v58 = v20 > 1 || v27;
    if ((v58 & 1) == 0)
    {
      v59 = v51 == 1 ? 1 : 2;
      if (v59 <= *(a3 + 5))
      {
        v55 = 3;
        goto LABEL_166;
      }
    }

    if (*(a3 + 68) == 1)
    {
      v55 = 2;
      goto LABEL_166;
    }

    if (*(a3 + 60) == 1)
    {
      v55 = 2;
    }

    else
    {
      v55 = 1;
    }

    if (*(a3 + 60) == 1 || v29)
    {
      goto LABEL_166;
    }

    v61 = v53 ^ 1;
    if ((v51 != 1) > *(a3 + 5))
    {
      v61 = 1;
    }

    if ((v61 & 1) == 0)
    {
      v55 = 1;
      goto LABEL_166;
    }
  }

LABEL_167:
  v62 = *MEMORY[0x29EDCA608];
  return result;
}

double *NK_Correct_State(double *result, _BYTE *a2, double *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*a2 == 1)
  {
    a3[14] = a3[14] + *result * -0.00000000333564095;
  }

  if (a2[1] == 1)
  {
    a3[15] = a3[15] + result[1] * -0.00000000333564095;
  }

  if (a2[2] == 1)
  {
    a3[16] = a3[16] + result[2] * -0.00000000333564095;
  }

  if (a2[3] == 1)
  {
    a3[17] = a3[17] + result[3] * -0.00000000333564095;
  }

  if (a2[5] == 1 && a2[6] == 1 && a2[7] == 1)
  {
    for (i = 0; i != 3; ++i)
    {
      a3[i + 5] = a3[i + 5] - result[i + 5];
    }
  }

  if (a2[8] == 1 && a2[9] == 1 && a2[10] == 1)
  {
    v4 = a3 + 8;
    v5 = a3[4];
    for (j = 8; j != 11; ++j)
    {
      *v4 = *v4 - result[j];
      v4[3] = -result[j] / v5;
      ++v4;
    }
  }

  if (a2[4] == 1)
  {
    a3[21] = a3[21] - result[4];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Is_GPS_BinEph_Real(uint64_t a1)
{
  result = *(a1 + 12) || *(a1 + 16) || *(a1 + 20) || *(a1 + 24) || *(a1 + 34) || *(a1 + 40) || *(a1 + 45) || *(a1 + 53) || *(a1 + 61) || *(a1 + 73) || *(a1 + 81) || *(a1 + 89) || *(a1 + 96) || (*(a1 + 100) & 0xFFFC) != 0;
  v2 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DW_Parity_Encode(unsigned int a1, int a2)
{
  v2 = 0;
  v3 = a1 & 0xFFFFFF3F;
  if ((a2 & 0xFFFFFFF7) != 1)
  {
    v3 = a1;
  }

  v4 = 1;
  do
  {
    v5 = Parity_Table[v2] & v3 ^ ((Parity_Table[v2] & v3) >> 16);
    v3 |= ((0x6996u >> ((v5 ^ BYTE1(v5) ^ ((v5 ^ (v5 >> 8)) >> 4)) & 0xF) << 31) >> 31) & v4;
    v4 *= 2;
    ++v2;
  }

  while (v2 != 6);
  if ((a2 & 0xFFFFFFF7) == 1)
  {
    v3 ^= Forced_Parity[v3 & 3];
  }

  if ((v3 & 0x40000000) != 0)
  {
    result = v3 ^ 0x3FFFFFC0;
  }

  else
  {
    result = v3;
  }

  v7 = *MEMORY[0x29EDCA608];
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void GNB_Debug_Flush_Check(void)
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = qword_2A1938EF8 - qword_2A1938EF0;
  if (dword_2A1938EE8 - g_CB_GDbg > 0)
  {
    v0 = 0;
  }

  if ((v0 + dword_2A1938EE8 - g_CB_GDbg) > 0x1FF)
  {
    v3 = *MEMORY[0x29EDCA608];
    v4 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v1 = *MEMORY[0x29EDCA608];
    v2 = *MEMORY[0x29EDCA608];

    GNSS_GNB_Debug_Ctl(&g_CB_GDbg);
  }
}

void GNB_Debug_BlockMove(char *__src, int a2)
{
  v28 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v2 = a2;
    v4 = g_CB_GDbg;
    v5 = qword_2A1938EF8;
    v6 = qword_2A1938EF8 - qword_2A1938EF0;
    if (dword_2A1938EE8 - g_CB_GDbg > 0)
    {
      v6 = 0;
    }

    if (v6 + dword_2A1938EE8 - g_CB_GDbg <= a2)
    {
      GNSS_GNB_Debug_Ctl(&g_CB_GDbg);
      v12 = g_CB_GDbg;
      v13 = qword_2A1938EF8;
      v14 = qword_2A1938EF8 - qword_2A1938EF0;
      if (dword_2A1938EE8 - g_CB_GDbg > 0)
      {
        v14 = 0;
      }

      v15 = v14 + dword_2A1938EE8 - g_CB_GDbg;
      if (v2 > 1023)
      {
        if (v15 == 1024)
        {
          do
          {
            v18 = 1023;
            do
            {
              v19 = v18;
              v20 = v18-- != 0;
            }

            while (v20 && __src[v19] != 10);
            v21 = v18 + 2;
            if (v19)
            {
              v22 = v21;
            }

            else
            {
              v22 = 1024;
            }

            v23 = GN_GPS_Write_GNB_Debug(v22, __src);
            if (!v23)
            {
              LbsOsaTrace_PrintAsciiBuf(0, 4u, 1, "<OVERFLOW>\n", 12);
              goto LABEL_12;
            }

            __src += v23;
            v2 -= v23;
          }

          while (v2 > 1023);
          if (v2 >= 1)
          {
            v24 = qword_2A1938EF8;
            v25 = g_CB_GDbg;
            do
            {
              v26 = v24 - v25;
              if (v2 >= v26)
              {
                v27 = v26;
              }

              else
              {
                v27 = v2;
              }

              memcpy(v25, __src, v27);
              v25 = (g_CB_GDbg + v27);
              g_CB_GDbg = v25;
              v24 = qword_2A1938EF8;
              if (v25 >= qword_2A1938EF8)
              {
                v25 = qword_2A1938EF0;
                g_CB_GDbg = qword_2A1938EF0;
              }

              __src += v27;
              v9 = __OFSUB__(v2, v27);
              v2 -= v27;
            }

            while (!((v2 < 0) ^ v9 | (v2 == 0)));
          }
        }
      }

      else if (v15 > v2)
      {
        do
        {
          v16 = v13 - v12;
          if (v2 >= v16)
          {
            v17 = v16;
          }

          else
          {
            v17 = v2;
          }

          memcpy(v12, __src, v17);
          v12 = (g_CB_GDbg + v17);
          g_CB_GDbg = v12;
          v13 = qword_2A1938EF8;
          if (v12 >= qword_2A1938EF8)
          {
            v12 = qword_2A1938EF0;
            g_CB_GDbg = qword_2A1938EF0;
          }

          __src += v17;
          v9 = __OFSUB__(v2, v17);
          v2 -= v17;
        }

        while (!((v2 < 0) ^ v9 | (v2 == 0)));
      }
    }

    else
    {
      do
      {
        v7 = v5 - v4;
        if (v2 >= v7)
        {
          v8 = v7;
        }

        else
        {
          v8 = v2;
        }

        memcpy(v4, __src, v8);
        v4 = (g_CB_GDbg + v8);
        g_CB_GDbg = v4;
        v5 = qword_2A1938EF8;
        if (v4 >= qword_2A1938EF8)
        {
          v4 = qword_2A1938EF0;
          g_CB_GDbg = qword_2A1938EF0;
        }

        __src += v8;
        v9 = __OFSUB__(v2, v8);
        v2 -= v8;
      }

      while (!((v2 < 0) ^ v9 | (v2 == 0)));
    }

LABEL_12:
    v10 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v11 = *MEMORY[0x29EDCA608];
  }
}

char **FPE_ApplyNewMeas(char **a1, unsigned __int16 *a2, uint64_t a3, int64x2_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v87 = *MEMORY[0x29EDCA608];
  v11 = &a4[5491].i8[8];
  if (a1 > 10)
  {
    if (a1 <= 12)
    {
      v12 = &a4[132878].u8[1];
      if (a1 == 11)
      {
        g_p_CB_LCD_SA_Dbg = a6;
        g_TCU = a4[5492].i64;
        g_FPE_LogSeverity = *(a3 + 4);
        g_DBfd = a7;
        if ((g_FPE_LogSeverity & 8) != 0)
        {
          v23 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v24 = g_TCU ? *(g_TCU + 8) : 0.0;
          LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f %s", "FPE_Init", 230, v23, v24, "Welcome to SA Diagnostic Log");
          if ((g_FPE_LogSeverity & 8) != 0)
          {
            v29 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            if (g_TCU)
            {
              v30 = *(g_TCU + 8);
            }

            else
            {
              v30 = 0.0;
            }

            LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f %s", "FPE_Init", 232, v29, v30, "Init process started");
          }
        }

        if (*a2 != 12)
        {
          if (g_FPE_LogSeverity)
          {
            v33 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            if (g_TCU)
            {
              v34 = *(g_TCU + 8);
            }

            else
            {
              v34 = 0.0;
            }

            LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f error, FPE version does not match. fpeVersion->fpeVersion =%d, FPE_HEADER_VERSION=%d", "FPE_Init", 237, v33, v34, *a2, 12);
          }

          g_FPE_AssertFlag = 1;
        }

        a4[132947].i64[0] = 0;
        a4[132945] = 0u;
        a4[132946] = 0u;
        a4[132944] = 0u;
        bzero(a4, 0x2074FAuLL);
        a4[132932].i64[0] = 0xC08F380000000000;
        a4[132942] = 0u;
        a4[132943].i16[4] = *(a3 + 4);
        Init = ExtMeasExtract_Init(&a4[1].i64[1]);
        if (Init)
        {
          a4[5496] = 0u;
          a4[5497] = 0u;
          a4[5494] = 0u;
          a4[5495] = 0u;
          a4[5492] = 0u;
          a4[5493] = 0u;
          *(v11 + 2) = 0xC08F380000000000;
          *(v11 + 17) = -999;
          *(v11 + 40) = vdupq_n_s64(0xC08F380000000000);
          *(v11 + 8) = 0x7FF8000000000000;
          a4[5496] = 0u;
          *(v11 + 11) = 0xC08F380000000000;
          *(v11 + 13) = 0;
          v11[112] = 0;
          if (MGen_Init(a4 + 5499))
          {
            Init = KfirController_Init(a4[5607].i64, v36, v37, v38, v39, v40);
            if (Init)
            {
              LOBYTE(Init) = MeasSyncher_Init(a4[5607].i64);
            }
          }

          else
          {
            LOBYTE(Init) = 0;
          }
        }

        else
        {
          v11[112] = 0;
        }

        g_FPE_AssertFlag = 0;
        a4[132943].i8[0] = Init;
        *&v79 = 1;
        v41 = &v79;
        v42 = 0;
        v43 = 8;
      }

      else
      {
        HIDWORD(v15) = -1775253149 * *&a4[5492].i64[1] + 28633112;
        LODWORD(v15) = HIDWORD(v15);
        if ((v15 >> 2) <= 0xDA740C && (g_FPE_LogSeverity & 8) != 0)
        {
          v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v17 = *(g_TCU + 8);
          }

          else
          {
            v17 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f fpeLogVer=%u peLibVer=%s", "FPE_ApplyNewMeas", 372, v16, v17, *a2, a2 + 2);
        }

        FpeEnabler_UpdateFlags(a4[132929].i8, 12, a2);
        bzero(a8, 0x3F8uLL);
        v45 = &unk_2A14BE000;
        if (a4[132932].i8[8] == 1)
        {
          LOBYTE(v79) = 0;
          if ((g_FPE_LogSeverity & 8) != 0)
          {
            v46 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            if (g_TCU)
            {
              v47 = *(g_TCU + 8);
            }

            else
            {
              v47 = 0.0;
            }

            LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f %s", "FpeManager_PositionGeneration", 549, v46, v47, "FpeMan: starting PositionGeneration");
          }

          v48 = (MGen_generateMeas(a4[5492].i8, &a4[1].i32[2], v11[112], a4[5499].i64, a4[5607].i64, v44) & 0xFFFFFFFD) != 0;
          KfirController_ProcessMeas(a4[5607].i64, &v79, a5);
          updated = FpeEnabler_UpdateStopFlags(a4[132929].i64, v48);
          v52 = updated;
          v53 = g_FPE_AssertFlag;
          v54 = v79;
          if ((g_FPE_AssertFlag & 1) != 0 || (updated & 1) != 0 || !v79)
          {
            if ((g_FPE_LogSeverity & 4) != 0)
            {
              v56 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              v55 = &unk_2A14BE000;
              if (g_TCU)
              {
                v57 = *(g_TCU + 8);
              }

              else
              {
                v57 = 0.0;
              }

              LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f Trigering Internal Reset: [AssertFlag=%u FPEnStop=%u kfirOkFlag=%u]", "FPE_ApplyNewMeas", 402, v56, v57, g_FPE_AssertFlag, v52, v54);
              v53 = g_FPE_AssertFlag;
            }

            else
            {
              v55 = &unk_2A14BE000;
            }

            FusionManager_InternalReset(a4, (v11 + 112), (v52 | v53) & 1, (v54 & 1) == 0, v50, v51);
            *(a8 + 24) = 0;
            v55[2616] = 0;
          }

          v45 = &unk_2A14BE000;
        }

        else
        {
          FpeManager_FlushInFIFOs(a4);
          if (a4[132938].i8[0] == 1)
          {
            ExtMeasExtract_extractData(&a4[1].i64[1], 3u, &a4[132932].u64[1] + 4);
          }

          if (a4[132938].i8[1] == 1)
          {
            ExtMeasExtract_extractData(&a4[1].i64[1], 4u, a4[132934].i64 + 4);
          }

          if (a4[132938].i8[2] == 1)
          {
            ExtMeasExtract_extractData(&a4[1].i64[1], 6u, &a4[132933].u64[1]);
          }
        }

        KfirController_GetPosition(a4[5607].i64, a4[5492].i64, a5, a8);
        *(a8 + 392) = a4[132942].i8[12];
        *(a8 + 400) = a4[132942].i8[13];
        a4[132942].i16[6] = 0;
        *(a8 + 376) = a4[132942].i8[14];
        *(a8 + 384) = a4[132942].i8[15];
        if (a4[132932].i8[8] == 1)
        {
          memset(v86, 0, sizeof(v86));
          v62 = 0.0;
          v63 = 0.0;
          v64 = 0.0;
          v65 = 0.0;
          v66 = 0.0;
          if (*v12 == 1)
          {
            Transpose_Mat(3, a4[132350].i64, 3, v86, v60, v61);
            Sub_Mat(3, a4[5594].i32, 3, v86, 3, v86);
            v66 = Norma_Vec(3, v86);
            v84 = 0u;
            v85 = 0u;
            InsUtil_ECEF2Geo_Iterative(a4[5594].i64, &v84, 6378137.0);
            v67 = *(a8 + 208);
            v68 = *(&v85 + 1);
            v82 = 0u;
            v83 = 0u;
            v80 = 0u;
            v81 = 0u;
            v79 = 0u;
            Mult_Mat_Mat(9, &a4[132360].i64[1], 9, &a4[132355].i64[1], 9, &v79);
            Mult_Mat_Mat(9, &v79, 3, a4[5596].i64, 9, &v79);
            v69 = Norma_Vec(3, a4[5596].i32);
            v70 = sqrt(*&v80 * *&v80 + *(&v79 + 1) * *(&v79 + 1));
            v71 = Norma_Vec(9, &v79);
            if (v71 <= 1.0e-30)
            {
              v72 = NAN;
            }

            else
            {
              v77 = 0u;
              v78 = 0u;
              Mult_Mat_scalar(1.0 / v71, 9, &v79, 3, &v77);
              v72 = atan2(*&v78, *(&v77 + 1)) * 57.2957795;
            }

            v65 = v67 - v68;
            v64 = *(a8 + 240) - v69;
            v63 = *(a8 + 248) - v70;
            v62 = *(a8 + 256) - v72;
          }

          if ((g_FPE_LogSeverity & 0x200) != 0)
          {
            LC_LOG_NMEA_GENERIC("%s,SOLN,%d,%d,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f", "$PFPEX", *v12, a4[132878].u8[2], *(a8 + 240), *(a8 + 248), *(a8 + 256), *(a8 + 40), *(a8 + 48), *(a8 + 64), *(a8 + 96), *(a8 + 104), *(a8 + 120), *(a8 + 80), *(a8 + 88), *(a8 + 136), *(a8 + 144), *(a8 + 152), v66, v65, v64, v63, v62);
          }
        }

        KFP_ResetStatistics(a4[13693].i64);
        if (v45[2616] == 1)
        {
          *(a8 + 24) = 0;
        }

        else if (*(a8 + 24))
        {
          a4[132943].i8[1] = 1;
        }

        LOBYTE(v79) = 0;
        LOBYTE(v86[0]) = 0;
        FpeEnabler_UpdateState(a4[132929].i8, &v79, v86);
        if (LOBYTE(v86[0]) == 1)
        {
          FusionManager_InternalReset(a4, (v11 + 112), 1, 0, v73, v74);
        }

        v41 = a8;
        v42 = 1;
        v43 = 1016;
      }

      FpeManager_printFpeSoln(v41, v42, v43);
      goto LABEL_107;
    }

    if (a1 == 13)
    {
      if ((g_FPE_LogSeverity & 8) != 0)
      {
        v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v26 = *(g_TCU + 8);
        }

        else
        {
          v26 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f ReInit", "FPE_ApplyNewMeas", 350, v25, v26);
      }

      FpeEnabler_UpdateFlags(a4[132929].i8, 13, a2);
      LOBYTE(v79) = 0;
      LOBYTE(v86[0]) = 0;
      FpeEnabler_UpdateState(a4[132929].i8, &v79, v86);
      if (LOBYTE(v86[0]) == 1)
      {
        FusionManager_InternalReset(a4, &a4[5498].i64[1], 1, 0, v31, v32);
      }

      goto LABEL_107;
    }

    if (a1 != 14)
    {
      goto LABEL_28;
    }
  }

  else if ((a1 - 4) >= 3 && a1 != 2)
  {
LABEL_28:
    FpeEnabler_UpdateFlags(a4[132929].i8, a1, a2);
    if (Cyc_Record_Count_Free(a4[5484].i64[a1], v11[112]))
    {
      ExtMeasExtract_extractData(&a4[1].i64[1], a1, a2);
    }

    else
    {
      if (g_FPE_LogSeverity)
      {
        v27 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v28 = *(g_TCU + 8);
        }

        else
        {
          v28 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f MeasExt CRB full of type %d. Triggering reset!", "FPE_ApplyNewMeas", 519, v27, v28, a1);
      }

      g_FPE_AssertFlag = 1;
    }

    if (a1 == 10)
    {
      goto LABEL_82;
    }

    goto LABEL_107;
  }

  FpeEnabler_UpdateFlags(a4[132929].i8, a1, a2);
  if (a1 == 10)
  {
LABEL_82:
    *v11 = *a2;
    if ((g_FPE_LogSeverity & 8) != 0)
    {
      v58 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v59 = *(g_TCU + 8);
      }

      else
      {
        v59 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f %f EPOCH: TOW_Stat=%d OS_TIME=%d TTICK=%d TOW=%.15f WEEK_NUM=%d", "FPE_SendGnssEpochTimesToLog", 192, v58, v59, *(v11 + 2) + (604800 * *(v11 + 20)), *(a2 + 4), *a2, *(a2 + 1), *(a2 + 1), a2[11]);
    }

    goto LABEL_107;
  }

  if (a1 == 5)
  {
    v18 = *a2;
    if (*a2)
    {
      v19 = a4[131166].u32[2];
      if (v19)
      {
        v20 = &a4[131696].i64[1];
        v21 = a4 + 17927;
        do
        {
          if (*v20 != 0.0)
          {
            v21->i32[0] = v18;
          }

          v21 += 7342;
          ++v20;
          --v19;
        }

        while (v19);
      }

      *(v11 + 460) = v18;
    }
  }

LABEL_107:
  result = FPE_InterfaceLogger(a1, a2);
  v76 = *MEMORY[0x29EDCA608];
  return result;
}

char **FpeManager_printFpeSoln(char **result, int a2, int a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v17 = a3;
  v18 = a2;
  if ((g_FPE_LogSeverity & 0x100) != 0)
  {
    v3 = result;
    if (result)
    {
      LODWORD(v4) = a3;
      v5 = g_p_CB_LCD_SA_Dbg;
      if (g_p_CB_LCD_SA_Dbg)
      {
        v6 = *g_p_CB_LCD_SA_Dbg;
        v7 = 36;
        v8 = 1u;
        do
        {
          *v5 = v6 + 1;
          *v6 = v7;
          v6 = *v5;
          if (*v5 >= v5[3])
          {
            v6 = v5[2];
            *v5 = v6;
          }

          v7 = aSolnData[v8++];
        }

        while (v8 != 12);
        LCD_SA_Debug_Flush_Check(g_p_CB_LCD_SA_Dbg);
        v5 = g_p_CB_LCD_SA_Dbg;
        v9 = g_p_CB_LCD_SA_Dbg;
      }

      else
      {
        v9 = 0;
      }

      for (i = 0; i != 4; ++i)
      {
        if (v9)
        {
          sprintf_02x(v9, *(&v17 + i));
          LCD_SA_Debug_Flush_Check(g_p_CB_LCD_SA_Dbg);
          v5 = g_p_CB_LCD_SA_Dbg;
          v9 = g_p_CB_LCD_SA_Dbg;
        }
      }

      v13 = 0;
      v14 = v5;
      do
      {
        if (v14)
        {
          sprintf_02x(v14, *(&v18 + v13));
          LCD_SA_Debug_Flush_Check(g_p_CB_LCD_SA_Dbg);
          v5 = g_p_CB_LCD_SA_Dbg;
          v14 = g_p_CB_LCD_SA_Dbg;
        }

        ++v13;
      }

      while (v13 != 4);
      v4 = v4;
      result = v5;
      do
      {
        if (result)
        {
          sprintf_02x(result, *v3);
          LCD_SA_Debug_Flush_Check(g_p_CB_LCD_SA_Dbg);
          v5 = g_p_CB_LCD_SA_Dbg;
          result = g_p_CB_LCD_SA_Dbg;
        }

        v3 = (v3 + 1);
        --v4;
      }

      while (v4);
      if (v5)
      {
        v15 = (*v5)++;
        *v15 = 10;
        if (*v5 >= v5[3])
        {
          *v5 = v5[2];
        }
      }
    }

    else
    {
      if (g_FPE_LogSeverity)
      {
        v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v11 = *(g_TCU + 8);
        }

        else
        {
          v11 = 0.0;
        }

        result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input FpeSolution is equal to nullptr!", "FpeManager_printFpeSoln", 614, v10, v11);
      }

      g_FPE_AssertFlag = 1;
    }
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t FusionManager_InternalReset(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4;
  v7 = a3;
  v9 = result;
  v19 = *MEMORY[0x29EDCA608];
  if ((g_FPE_LogSeverity & 0x10) != 0)
  {
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v11 = *(g_TCU + 8);
    }

    else
    {
      v11 = 0.0;
    }

    result = LC_LOG_SEVERITY_GENERIC("INF:[%s() #%d] TT = %d, %0.3f FPE starting Internal Reset! (fpeErr=%u,peErr=%u)", "FusionManager_InternalReset", 283, v10, v11, v7, v6);
  }

  if (v7)
  {
    *(v9 + 2127089) = 0;
    FpeManager_FlushInFIFOs(v9);
    v12 = MGen_Init((a2 + 8));
    *(v9 + 87936) = 0u;
    *(v9 + 87952) = 0u;
    *(v9 + 87904) = 0u;
    *(v9 + 87920) = 0u;
    *(v9 + 87872) = 0u;
    *(v9 + 87888) = 0u;
    *(v9 + 87880) = 0xC08F380000000000;
    *(v9 + 87898) = -999;
    *(v9 + 87904) = vdupq_n_s64(0xC08F380000000000);
    *(v9 + 87928) = 0x7FF8000000000000;
    *(v9 + 87936) = 0u;
    *(v9 + 87952) = 0xC08F380000000000;
    *(v9 + 87968) = 0;
    if (v12)
    {
      *(a2 + 1752) = *(a2 + 1736);
      *(a2 + 1821) = 0;
      *(a2 + 1848) = *(a2 + 1832);
      *(a2 + 1917) = 0;
      *(a2 + 1944) = *(a2 + 1928);
      *(a2 + 2013) = 0;
      *(a2 + 2040) = *(a2 + 2024);
      *(a2 + 2109) = 0;
      *(a2 + 2136) = *(a2 + 2120);
      *(a2 + 2205) = 0;
      *(a2 + 2232) = *(a2 + 2216);
      *(a2 + 131096) = 0;
      *(a2 + 131100) = 0;
      *(a2 + 131104) = 0;
      v13 = 1;
      *(a2 + 2301) = 0;
    }

    else
    {
      if (g_FPE_LogSeverity)
      {
        v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v15 = *(g_TCU + 8);
        }

        else
        {
          v15 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f internal reset error! (one module was not successful)", "FusionManager_InternalReset", 302, v14, v15);
      }

      v13 = 0;
      g_FPE_AssertFlag = 1;
    }

    *(v9 + 2127088) = v13;
  }

  else if (!v6)
  {
    goto LABEL_25;
  }

  result = KfirController_Init(a2 + 1736, a2, a3, a4, a5, a6);
  if ((result & 1) == 0)
  {
    if (g_FPE_LogSeverity)
    {
      v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v17 = *(g_TCU + 8);
      }

      else
      {
        v17 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f internal reset error! (KfirController was not successful)", "FusionManager_InternalReset", 313, v16, v17);
    }

    g_FPE_AssertFlag = 1;
  }

LABEL_25:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}