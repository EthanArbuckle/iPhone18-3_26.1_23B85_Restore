uint64_t NK_Final_Check_ClkBias(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v51[1] = *MEMORY[0x29EDCA608];
  v49 = 0;
  v48 = 0;
  if (result > 2)
  {
    if ((result - 5) < 2 || result == 3)
    {
      goto LABEL_77;
    }

    v48 = 4;
    v6 = 2;
    v7 = 24152;
    v8 = 752;
  }

  else
  {
    if (!result)
    {
      goto LABEL_77;
    }

    if (result == 1)
    {
      v6 = 0;
      v48 = 1;
      v7 = 24136;
      v8 = 736;
    }

    else
    {
      v48 = 2;
      v6 = 1;
      v7 = 24144;
      v8 = 744;
    }
  }

  LOBYTE(v49) = v6;
  v9 = *(a3 + v8);
  v10 = *(a3 + v7);
  v50 = v10;
  v51[0] = v9;
  v11 = *(a3 + 25596);
  if (v11 == -1)
  {
    goto LABEL_77;
  }

  v47 = 0.0;
  result = R8_EQ((a3 + 25608), &v47);
  if (result)
  {
    goto LABEL_77;
  }

  v46 = 0.0;
  result = R8_EQ(v51, &v46);
  if (result)
  {
    goto LABEL_77;
  }

  v13 = *(a3 + 25597);
  if (v13 == 1)
  {
    v18 = *MEMORY[0x29EDCA608];

    return NK_Final_Check_ClkBias_Reset(v5, a2, a3);
  }

  v14 = (*(a3 + 25608) - v9) * 299792458.0;
  if (v13 != 2)
  {
    v19 = *(a3 + 24536);
    if (v19 >= 25000000.0)
    {
      goto LABEL_76;
    }

    v20 = *(a3 + 24544);
    if (v20 >= 25000000.0)
    {
      goto LABEL_76;
    }

    v21 = *(a3 + 24552);
    if (v21 >= 25000000.0)
    {
      goto LABEL_76;
    }

    v22 = *(a3 + 24496 + 8 * v11);
    if (v22 >= 25000000.0 && *(a3 + 24496 + 8 * v6) >= 25000000.0)
    {
      goto LABEL_76;
    }

    v23 = 0;
    v24 = (a3 + 25592);
    v25 = v19 + 22500.0 + v20 + v21 + *(a3 + 24528);
    v26 = 1;
    v45 = (a3 + 25592);
    while (1)
    {
      v27 = v23;
      v28 = v26;
      v29 = (v26 & 1) != 0 ? v24 : &v48;
      v23 = *v29;
      if (v23 > 6)
      {
        break;
      }

      if (((1 << v23) & 0x6A) != 0)
      {
        v23 = *(a3 + 24783);
      }

      else
      {
        if (v23 == 2)
        {
          v23 = *(a3 + 24788);
          v30 = *(a3 + 24808);
        }

        else
        {
          if (v23 != 4)
          {
            break;
          }

          v23 = *(a3 + 24793);
          v30 = *(a3 + 24812);
        }

        if (v30)
        {
          ++v23;
        }
      }

LABEL_41:
      v26 = 0;
      if ((v28 & 1) == 0)
      {
        v31 = (v22 + v25) * 9.0;
        if (v14 * v14 <= v31 && v10 < 2496542160.0 && (v27 < 2 || v23 || fabs(v14) < 150.0))
        {
          goto LABEL_75;
        }

        EvLog_nd("NKFC:  Constellation Clock Bias deviation event ! ", 4, v12, *v24, v5, v14, sqrt(v31));
        if (*(a3 + 25600) > 2496542160.0)
        {
          *(a3 + 25608) = 0;
          if (!*(a3 + 25597))
          {
            NK_Final_Check_ClkBias_Reset(*(a3 + 25592), a2, a3);
            *(a3 + 25597) = 1;
          }
        }

        if (v10 > 2496542160.0)
        {
          v51[0] = 0.0;
          NK_Final_Check_ClkBias_Reset(v5, a2, a3);
        }

        v47 = 0.0;
        result = R8_EQ((a3 + 25608), &v47);
        if (result)
        {
          goto LABEL_75;
        }

        v46 = 0.0;
        result = R8_EQ(v51, &v46);
        if (result)
        {
          goto LABEL_75;
        }

        v32 = v14 * 0.333333333 * (v14 * 0.333333333);
        if (*(a3 + 25597))
        {
          goto LABEL_68;
        }

        *(a2 + 128) = 1;
        *(a2 + 132) = 70;
        if (*(a3 + 12) >= 10)
        {
          *(a3 + 12) = 9;
        }

        NK_Final_Check_ClkBias_Reset(*v45, a2, a3);
        v33 = *v45;
        if (*v45 == 1)
        {
          v34 = 24312;
          v35 = 24224;
          v36 = 24136;
        }

        else
        {
          if (v33 != 4)
          {
            if (v33 == 2)
            {
              v34 = 24320;
              v35 = 24232;
              v36 = 24144;
              goto LABEL_66;
            }

LABEL_67:
            *(a3 + 25597) = 2;
LABEL_68:
            result = NK_Final_Check_ClkBias_Reset(v5, a2, a3);
            switch(v5)
            {
              case 1:
                v40 = 24312;
                v41 = 24224;
                v42 = 24136;
                break;
              case 4:
                v40 = 24328;
                v41 = 24240;
                v42 = 24152;
                break;
              case 2:
                v40 = 24320;
                v41 = 24232;
                v42 = 24144;
                break;
              default:
LABEL_75:
                if (!*(a3 + 25597))
                {
LABEL_76:
                  *(a3 + 25597) = 3;
                }

                goto LABEL_77;
            }

            *(a3 + v42) = v32 + *(a3 + v42);
            v43 = v32 + *(a3 + v41);
            *(a3 + v41) = v43;
            *(a3 + v40) = sqrt(v43);
            goto LABEL_75;
          }

          v34 = 24328;
          v35 = 24240;
          v36 = 24152;
        }

LABEL_66:
        *(a3 + v36) = v32 + *(a3 + v36);
        v39 = v32 + *(a3 + v35);
        *(a3 + v35) = v39;
        *(a3 + v34) = sqrt(v39);
        goto LABEL_67;
      }
    }

    if (v23)
    {
      result = EvCrt_Illegal_Default("NK_Final_Check_ClkBias", 0xC03u);
      v24 = (a3 + 25592);
      v23 = 0;
    }

    goto LABEL_41;
  }

  result = NK_Final_Check_ClkBias_Reset(v5, a2, a3);
  switch(v5)
  {
    case 1:
      v15 = 24312;
      v16 = 24224;
      v17 = 24136;
      break;
    case 4:
      v15 = 24328;
      v16 = 24240;
      v17 = 24152;
      break;
    case 2:
      v15 = 24320;
      v16 = 24232;
      v17 = 24144;
      break;
    default:
      goto LABEL_77;
  }

  v37 = v14 * 0.333333333 * (v14 * 0.333333333);
  *(a3 + v17) = v37 + *(a3 + v17);
  v38 = v37 + *(a3 + v16);
  *(a3 + v16) = v38;
  *(a3 + v15) = sqrt(v38);
LABEL_77:
  v44 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_Final_Check_ClkBias_Reset(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x29EDCA608];
  switch(result)
  {
    case 4:
      *(a3 + 752) = 0;
      *(a3 + 770) = 0;
      *(a2 + 8296) = 0;
      *(a2 + 8288) = 0;
      break;
    case 2:
      *(a3 + 744) = 0;
      *(a3 + 769) = 0;
      *(a2 + 8280) = 0;
      *(a2 + 8274) = 0;
      break;
    case 1:
      *(a3 + 736) = 0;
      *(a3 + 768) = 0;
      *(a2 + 10472) = 0;
      *(a2 + 8272) = 0;
      break;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t asn1PD_PosPayLoadVer2(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v13 = 0;
  Ver2Extension = Asn1Coder::DecodeChoiceExtension(a1, &v13);
  v11 = 0;
  v12 = 0;
  if (Ver2Extension)
  {
    v5 = Ver2Extension;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_7:
    SuplAsn1Logger::TraceError(Ver2Extension, v6, v7);
    goto LABEL_8;
  }

  *a2 = v13 + 4;
  Ver2Extension = Asn1Coder::DecodeOpenTypeFieldStart(a1, &v11);
  if (Ver2Extension)
  {
    v5 = Ver2Extension;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_7;
  }

  Ver2Extension = asn1PD_PosPayLoadVer2Extension(a1, a2 + 80);
  if (Ver2Extension)
  {
    v5 = Ver2Extension;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_7;
  }

  if (*(a2 + 80))
  {
    *a2 = 4;
  }

  if (*(a2 + 81))
  {
    *a2 = 5;
  }

  v5 = 0;
  v10 = v11.i32[0];
  *(a1 + 8) = v12 + v11.i32[1];
  *(a1 + 12) = v10;
LABEL_8:
  v8 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PD_PosPayLoadVer2Extension(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitFromBuffer(a1);
  lppPayload = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_7;
  }

  *a2 = Asn1Coder::GetBitFromBuffer(a1);
  lppPayload = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_7;
  }

  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  *(a2 + 1) = BitFromBuffer;
  lppPayload = *(a1 + 16);
  if (*(a1 + 16))
  {
LABEL_6:
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = lppPayload;
    goto LABEL_7;
  }

  if (*a2)
  {
    lppPayload = asn1PD_PosPayLoad_lppPayload(a1, (a2 + 8));
    if (lppPayload)
    {
      goto LABEL_6;
    }

    BitFromBuffer = *(a2 + 1);
  }

  if (!BitFromBuffer)
  {
    lppPayload = 0;
    goto LABEL_8;
  }

  lppPayload = 1;
  *(a1 + 16) = 1;
  SuplAsn1Logger::TraceError(1u, *(a1 + 8), *(a1 + 12));
  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  v7 = 1;
LABEL_7:
  SuplAsn1Logger::TraceError(v7, v5, v6);
LABEL_8:
  v9 = *MEMORY[0x29EDCA608];
  return lppPayload;
}

uint64_t asn1PD_PosPayLoad_lppPayload(uint64_t a1, uint64_t *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v15 = 3;
  v5 = Asn1Coder::DecodeInteger(a1, 1, 3, &v15);
  std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::clear[abi:ne200100](a2);
  if (v5)
  {
    SuplAsn1Logger::TraceError(v5, *(a1 + 8), *(a1 + 12));
  }

  else
  {
    v6 = v15;
    if (v15 < 1)
    {
LABEL_12:
      LOBYTE(v5) = 0;
    }

    else
    {
      while (1)
      {
        v14 = 0;
        v7 = Asn1Coder::DecodeInteger(a1, 1, 0xEA60u, &v14);
        LOBYTE(v5) = v7;
        if (v7)
        {
          SuplAsn1Logger::TraceError(v7, *(a1 + 8), *(a1 + 12));
          goto LABEL_15;
        }

        __p = 0;
        v12 = 0;
        v13 = 0;
        Asn1Coder::GetBitStringFromBuffer(a1, 8 * v14, &__p, 0);
        v8 = *(a1 + 16);
        if (*(a1 + 16))
        {
          SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
          v2 = v8;
        }

        else
        {
          std::vector<ASN1T_PosPayLoad_lpppayload>::push_back[abi:ne200100](a2, &__p);
        }

        if (__p)
        {
          v12 = __p;
          operator delete(__p);
        }

        if (v8)
        {
          break;
        }

        if (!--v6)
        {
          goto LABEL_12;
        }
      }

      LOBYTE(v5) = v2;
    }
  }

LABEL_15:
  v9 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PE_PosPayLoadVer2(uint64_t a1, _BYTE *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v11 = *a2 - 4;
  Ver2Extension = Asn1Coder::EncodeChoiceExtension(a1, &v11);
  v10 = 0;
  if (Ver2Extension)
  {
    v5 = Ver2Extension;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

  else
  {
    Ver2Extension = Asn1Coder::EncodeOpenTypeFieldStart(a1, &v10);
    if (Ver2Extension)
    {
      v5 = Ver2Extension;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
    }

    else
    {
      Ver2Extension = asn1PE_PosPayLoadVer2Extension(a1, a2 + 80);
      if (!Ver2Extension)
      {
        v5 = Asn1Coder::EncodeOpenTypeFieldEnd(a1, &v10);
        goto LABEL_8;
      }

      v5 = Ver2Extension;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
    }
  }

  SuplAsn1Logger::TraceError(Ver2Extension, v6, v7);
LABEL_8:
  v8 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PE_PosPayLoadVer2Extension(uint64_t a1, unsigned __int8 *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, 0);
  lppPayload = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
  }

  else
  {
    Asn1Coder::AddBitToBuffer(a1, *a2);
    lppPayload = *(a1 + 16);
    if (*(a1 + 16))
    {
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      v7 = *(a1 + 16);
    }

    else
    {
      Asn1Coder::AddBitToBuffer(a1, a2[1]);
      lppPayload = *(a1 + 16);
      if (*(a1 + 16) || *a2 && (lppPayload = asn1PE_PosPayLoad_lppPayload(a1, a2 + 1), lppPayload))
      {
        v5 = *(a1 + 8);
        v6 = *(a1 + 12);
        v7 = lppPayload;
      }

      else
      {
        if (!a2[1])
        {
          lppPayload = 0;
          goto LABEL_8;
        }

        lppPayload = 1;
        *(a1 + 16) = 1;
        SuplAsn1Logger::TraceError(1u, *(a1 + 8), *(a1 + 12));
        v5 = *(a1 + 8);
        v6 = *(a1 + 12);
        v7 = 1;
      }
    }
  }

  SuplAsn1Logger::TraceError(v7, v5, v6);
LABEL_8:
  v8 = *MEMORY[0x29EDCA608];
  return lppPayload;
}

uint64_t asn1PE_PosPayLoad_lppPayload(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = 0;
  v5 = a2[1] - *a2;
  if (v5)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = (*a2 + 8);
    do
    {
      if (*(v7 - 1) != *v7)
      {
        ++v4;
      }

      v7 += 3;
      --v6;
    }

    while (v6);
  }

  v8 = Asn1Coder::EncodeInteger(a1, 1, 3, v4);
  if (v8)
  {
    v9 = v8;
    v10 = *(a1 + 8);
    v11 = *(a1 + 12);
    goto LABEL_10;
  }

  v13 = *a2;
  v12 = a2[1];
  if (v12 == *a2)
  {
LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = *(v13 + v14);
    v17 = *(v13 + v14 + 8);
    if (v16 != v17)
    {
      break;
    }

LABEL_16:
    ++v15;
    v14 += 24;
    if (v15 >= 0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 3))
    {
      goto LABEL_17;
    }
  }

  v8 = Asn1Coder::EncodeOctetString(a1, 1, 60000, v17 - v16, (v13 + v14), 0, 0);
  if (!v8)
  {
    v13 = *a2;
    v12 = a2[1];
    goto LABEL_16;
  }

  v9 = v8;
  v10 = *(a1 + 8);
  v11 = *(a1 + 12);
LABEL_10:
  SuplAsn1Logger::TraceError(v8, v10, v11);
LABEL_18:
  v18 = *MEMORY[0x29EDCA608];
  return v9;
}

void SuplInitRecd::SuplInitRecd(SuplInitRecd *this)
{
  v11 = *MEMORY[0x29EDCA608];
  *this = 0;
  *(this + 16) = 0;
  *(this + 24) = 0u;
  v2 = this + 24;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  Instance = SuplVersionNegotiation::GetInstance(this);
  v4 = atomic_load((Instance + 1));
  v5 = v4 == 255;
  v6 = 1;
  if (v5)
  {
    v6 = 2;
  }

  v7 = atomic_load((Instance + v6));
  *(this + 16) = -1;
  *(this + 26) = v7;
  *(this + 27) = 0;
  *(this + 5) = 0;
  ASN1T_SessionID::ASN1T_SessionID((this + 48));
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 47) = 0;
  std::vector<unsigned char>::vector[abi:ne200100](this + 48, 4);
  *(this + 408) = 0u;
  *(this + 408) = -1;
  *(this + 63) = 0;
  *(this + 17) = 0;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 485) = 0u;
  *(this + 16) = 1;
  v8 = operator new(0x238uLL, MEMORY[0x29EDC9418]);
  if (v8)
  {
    *(v8 + 2) = 0;
    v8[12] = 0;
    *(v8 + 3) = 0;
    *(v8 + 4) = 0;
    *(v8 + 2) = 0;
    *(v8 + 7) = 0;
    *(v8 + 8) = 0;
    *(v8 + 6) = 0;
    *(v8 + 13) = -1;
    v8[40] = -1;
    *(v8 + 36) = 255;
    *(v8 + 10) = 0;
    *(v8 + 11) = 0;
    v8[80] = -1;
    *(v8 + 6) = 0u;
    *(v8 + 7) = 0u;
    *(v8 + 8) = 0u;
    *(v8 + 9) = 0u;
    *(v8 + 10) = 0u;
    *(v8 + 22) = 0;
    *(v8 + 70) = 0;
    *(v8 + 33) = 0u;
    *(v8 + 34) = 0u;
    *(v8 + 31) = 0u;
    *(v8 + 32) = 0u;
    *(v8 + 29) = 0u;
    *(v8 + 30) = 0u;
    *(v8 + 27) = 0u;
    *(v8 + 28) = 0u;
    *(v8 + 25) = 0u;
    *(v8 + 26) = 0u;
    *(v8 + 23) = 0u;
    *(v8 + 24) = 0u;
    *(v8 + 21) = 0u;
    *(v8 + 22) = 0u;
    *(v8 + 19) = 0u;
    *(v8 + 20) = 0u;
    *(v8 + 17) = 0u;
    *(v8 + 18) = 0u;
    *(v8 + 15) = 0u;
    *(v8 + 16) = 0u;
    *(v8 + 13) = 0u;
    *(v8 + 14) = 0u;
    *(v8 + 12) = 0u;
    v8[360] = -1;
    *(v8 + 460) = 0;
    *(v8 + 452) = 0;
    *(v8 + 467) = 0;
    *(v8 + 62) = 0;
    *(v8 + 63) = 0;
    *(v8 + 61) = 0;
    *(v8 + 128) = 0;
    *(v8 + 65) = 0;
    *(v8 + 67) = 0;
    *(v8 + 66) = 0;
    v8[544] = 0;
    *(v8 + 138) = 0;
    *(v8 + 278) = 0;
    *(v8 + 376) = 0u;
    *(v8 + 392) = 0u;
    *(v8 + 408) = 0u;
    *(v8 + 424) = 0u;
    *(v8 + 433) = 0u;
    *(v8 + 2) = 2304;
    *v8 = 0;
    v8[184] = 0;
  }

  *(this + 5) = v8;
  v9 = operator new(8uLL, MEMORY[0x29EDC9418]);
  if (v9)
  {
    *v9 = v2;
  }

  *(this + 1) = v9;
  v10 = *MEMORY[0x29EDCA608];
}

void sub_2996B55CC(_Unwind_Exception *a1)
{
  v4 = *(v1 + 360);
  if (v4)
  {
    *(v1 + 368) = v4;
    operator delete(v4);
  }

  ASN1T_SuplMessage::~ASN1T_SuplMessage(v2);
  _Unwind_Resume(a1);
}

void SuplInitRecd::~SuplInitRecd(SuplInitRecd *this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x29C29EB20](v2, 0x20C4093837F09);
  }

  *(this + 1) = 0;
  LcsTimer::Release((this + 496));
  v3 = *(this + 59);
  if (v3)
  {
    *(this + 60) = v3;
    operator delete(v3);
  }

  v4 = *(this + 56);
  if (v4)
  {
    *(this + 57) = v4;
    operator delete(v4);
  }

  v5 = *(this + 53);
  if (v5)
  {
    *(this + 54) = v5;
    operator delete(v5);
  }

  v6 = *(this + 48);
  if (v6)
  {
    *(this + 49) = v6;
    operator delete(v6);
  }

  v7 = *(this + 45);
  if (v7)
  {
    *(this + 46) = v7;
    operator delete(v7);
  }

  v8 = *(this + 42);
  if (v8)
  {
    *(this + 43) = v8;
    operator delete(v8);
  }

  v9 = *(this + 39);
  if (v9)
  {
    *(this + 40) = v9;
    operator delete(v9);
  }

  v10 = *(this + 36);
  if (v10)
  {
    *(this + 37) = v10;
    operator delete(v10);
  }

  v11 = *(this + 31);
  if (v11)
  {
    *(this + 32) = v11;
    operator delete(v11);
  }

  ASN1T_SETId::U::~U((this + 72));
  ASN1T_UlpMessage::~ASN1T_UlpMessage((this + 32));
  v12 = *MEMORY[0x29EDCA608];
}

void sub_2996B5724(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

SuplVersionNegotiation *SuplInitRecd::FillHash(SimUtils *a1, uint64_t a2, uint64_t a3, int a4)
{
  v28 = *MEMORY[0x29EDCA608];
  v23[0] = 0;
  __p[1] = 0;
  v25 = 0;
  __p[0] = 0;
  v26 = 7275;
  Instance = SimUtils::GetInstance(a1);
  SlpFqdn = SimUtils::GetSlpFqdn(Instance, v23, a3, a4);
  v10 = SlpFqdn;
  if (SlpFqdn)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "SPL", 69, "FillHash", 515);
      LbsOsaTrace_WriteLog(0x12u, __str, v12, 0, 1);
    }

    goto LABEL_14;
  }

  v13 = SuplVersionNegotiation::GetInstance(SlpFqdn);
  v14 = atomic_load(v13 + 1);
  v15 = v14 == 255;
  v16 = 1;
  if (v15)
  {
    v16 = 2;
  }

  v17 = atomic_load(&v13[v16]);
  if (v17 == 1)
  {
    v18 = (a1 + 360);
LABEL_9:
    calculateHmac<SUPL_SHA_1>(__p, v18);
    goto LABEL_10;
  }

  v19 = SuplUtils::GetInstance(v13);
  v18 = (a1 + 360);
  if (*(v19 + 37))
  {
    goto LABEL_9;
  }

  calculateHmac<SUPL_SHA_256>(__p, v18);
LABEL_10:
  v20 = *(a2 + 8) - *a2;
  if (v20 > 7)
  {
    if (v20 != 8)
    {
      *(a2 + 8) = *a2 + 8;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 8 - v20);
  }

LABEL_14:
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  v21 = *MEMORY[0x29EDCA608];
  return v10;
}

void sub_2996B5908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SuplInitRecd::ProcessSuplInit(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v54 = *MEMORY[0x29EDCA608];
  __p = 0;
  v49 = 0;
  v50 = 0;
  v5 = (a3 + 1);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a3, a3[1], a3[1] - *a3);
  v51[0] = &__p;
  v51[1] = 0;
  v52 = 0;
  v47[0] = v51;
  v47[1] = a1 + 24;
  v6 = *a3;
  v7 = *v5;
  if (v6 == *v5)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "SPL", 69, "ProcessSuplInit", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v14, 0, 1);
    }
  }

  else
  {
    v8 = v7 - v6;
    v9 = *(a1 + 376);
    v10 = *(a1 + 360);
    if (v9 - v10 < v7 - v6)
    {
      if (v10)
      {
        *(a1 + 368) = v10;
        operator delete(v10);
        v9 = 0;
        *(a1 + 360) = 0;
        *(a1 + 368) = 0;
        *(a1 + 376) = 0;
      }

      if ((v8 & 0x8000000000000000) == 0)
      {
        v11 = 2 * v9;
        if (2 * v9 <= v8)
        {
          v11 = v7 - v6;
        }

        if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v12 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        std::vector<unsigned char>::__vallocate[abi:ne200100](a1 + 360, v12);
      }

      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v15 = *(a1 + 368);
    v16 = v15 - v10;
    if (v15 - v10 >= v8)
    {
      memmove(*(a1 + 360), v6, v7 - v6);
      v21 = &v10[v8];
    }

    else
    {
      v17 = &v6[v16];
      if (v15 != v10)
      {
        memmove(*(a1 + 360), v6, v16);
        v15 = *(a1 + 368);
      }

      v18 = v15;
      if (v17 != v7)
      {
        v18 = (&v7[v15] - v17);
        v19 = v15;
        do
        {
          v20 = *v17++;
          *v19++ = v20;
        }

        while (v17 != v7);
      }

      v21 = v18;
    }

    *(a1 + 368) = v21;
  }

  v22 = SuplMessage::Decode(v47);
  if (*(a1 + 32) == 1)
  {
    if (v22)
    {
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v24 = mach_continuous_time();
        v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v24), "SPL", 69, "ProcessSuplInit", 770);
        IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v25, 0, 1);
      }

      v26 = 3;
      goto LABEL_45;
    }

    v30 = *(a1 + 40);
    LOBYTE(v31) = *(a1 + 26);
    if (*(v30 + 247))
    {
      v31 = *(v30 + 560);
    }

    IsLoggingAllowed = SuplVersionNegotiation::Instance::NegotiateNetInitiated(*(a1 + 26), v31);
    if (!IsLoggingAllowed)
    {
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v34 = mach_continuous_time();
        v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v34), "SPL", 69, "ProcessSuplInit", 515);
        IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v35, 0, 1);
      }

      v26 = 10;
      goto LABEL_45;
    }

    if (*(a1 + 48))
    {
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (!IsLoggingAllowed)
      {
LABEL_37:
        v26 = 12;
LABEL_45:
        *(a1 + 18) = v26;
        goto LABEL_46;
      }
    }

    else
    {
      if (*(v30 + 184))
      {
        IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v36 = mach_continuous_time();
          v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v36), "SPL", 69, "ProcessSuplInit", 515);
          IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v37, 0, 1);
        }

        v26 = 13;
        goto LABEL_45;
      }

      if (*(v30 + 5) == 9 && !*v30)
      {
        IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v43 = mach_continuous_time();
          v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v43), "SPL", 69, "ProcessSuplInit", 515);
          IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v44, 0, 1);
        }

        v26 = 4;
        goto LABEL_45;
      }

      if (*(a1 + 49))
      {
        if (!*(a1 + 8))
        {
          goto LABEL_47;
        }

        v41 = *(a1 + 40);
        if (v41[5] - 11 > 1 || v41[246])
        {
          if (v41[245] != 1 || !v41[480])
          {
            goto LABEL_47;
          }

          v42 = 20;
        }

        else
        {
          v42 = 7;
        }

        *(a1 + 18) = v42;
        IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v45 = mach_continuous_time();
          v46 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v45), "SPL", 69, "ProcessSuplInit", 515);
          IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v46, 0, 1);
        }

LABEL_46:
        *(a1 + 17) = 1;
LABEL_47:
        Instance = SuplUtils::GetInstance(IsLoggingAllowed);
        SuplUtils::CopySlpSessionId(Instance, a1 + 384, a1 + 24);
        v29 = 0;
        goto LABEL_48;
      }

      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (!IsLoggingAllowed)
      {
        goto LABEL_37;
      }
    }

    bzero(__str, 0x410uLL);
    v32 = mach_continuous_time();
    v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v32), "SPL", 69, "ProcessSuplInit", 515);
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v33, 0, 1);
    goto LABEL_37;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v27 = mach_continuous_time();
    v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v27), "SPL", 69, "ProcessSuplInit", 515);
    LbsOsaTrace_WriteLog(0x12u, __str, v28, 0, 1);
  }

  v29 = -5;
LABEL_48:
  if (__p)
  {
    v49 = __p;
    operator delete(__p);
  }

  v39 = *MEMORY[0x29EDCA608];
  return v29;
}

void sub_2996B60DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GLON_AlmBin2Int(uint64_t result, uint64_t a2)
{
  v21 = *MEMORY[0x29EDCA608];
  *a2 = *result;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 16);
  *(a2 + 10) = (*(result + 12) >> 19) & 0x1F;
  *(a2 + 11) = (*(result + 32) >> 20) & 0x1F;
  v3 = (v2 >> 2) & 0x3FFFF;
  if ((v2 & 0x80000) != 0)
  {
    v3 = -((v2 >> 2) & 0x1FFFF);
  }

  *(a2 + 20) = v3;
  v4 = *(result + 28);
  if ((v4 & 0x200000) != 0)
  {
    v5 = -(v4 & 0x1FFFFF);
  }

  else
  {
    v5 = v4 & 0x3FFFFF;
  }

  *(a2 + 24) = v5;
  v6 = *(result + 32);
  v7 = v6 >> 25;
  if (v6 < 0)
  {
    v7 = -((v6 >> 25) & 0x3F);
  }

  *(a2 + 28) = v7;
  v9 = *(result + 24);
  v8 = 32 * v9;
  LOWORD(v9) = v9 >> 11;
  if (((v8 >> 16) & 0x8000) != 0)
  {
    v9 = -(v9 & 0x7FFF);
  }

  *(a2 + 32) = v9;
  v10 = *(result + 12);
  v11 = *(result + 16);
  v12 = (v10 >> 9) & 0x3FF;
  if ((v10 & 0x40000) != 0)
  {
    v12 = -((v10 >> 9) & 0x1FF);
  }

  *(a2 + 34) = v12;
  *(a2 + 36) = (v10 & 0x4000000) != 0;
  *(a2 + 37) = HIBYTE(v10) & 3;
  *(a2 + 38) = (v6 & 0x80000) != 0;
  v13 = __PAIR64__(v10, v11) >> 20;
  v14 = (__PAIR64__(v10, v11) >> 20) & 0x1FFFFF;
  v15 = v13 & 0xFFFFF;
  if ((v10 & 0x100) != 0)
  {
    v16 = -v15;
  }

  else
  {
    v16 = v14;
  }

  *(a2 + 12) = v16;
  v17 = *(result + 24);
  HIDWORD(v18) = *(result + 16);
  LODWORD(v18) = *(result + 20);
  v19 = (v18 >> 19) & 0x7FFF;
  *(a2 + 16) = (v17 & 0x7FF) << 10;
  HIDWORD(v18) = v17;
  LODWORD(v18) = *(result + 28);
  *(a2 + 30) = v19;
  *(a2 + 16) = (v18 >> 22) & 0x1FFFFF;
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GLON_AlmInt2Bin(uint64_t result, uint64_t a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(result + 10);
  *a2 = *result;
  *(a2 + 8) = *(result + 8);
  v3 = (((v2 - 1 - 5 * (((26215 * (v2 - 1)) >> 17) + ((26215 * (v2 - 1)) >> 31))) << 28) + 805306368) & 0x70000000;
  v4 = ((v2 & 0x1F) << 19) & 0xFCFFFFFF | ((*(result + 37) & 3) << 24) | v3 | (*(result + 36) << 26);
  v5 = *(result + 34);
  if ((v5 & 0x200) != 0)
  {
    v5 = -v5 | 0x200;
  }

  v6 = v4 & 0xFFF801FF | ((v5 & 0x3FF) << 9);
  *(a2 + 12) = v6;
  v7 = *(result + 12);
  if ((v7 & 0x100000) != 0)
  {
    v7 = -v7 | 0x100000;
  }

  *(a2 + 12) = v6 & 0xFFFFFE00 | (v7 >> 12) & 0x1FF;
  *(a2 + 16) = v7 << 20;
  v8 = *(result + 20);
  if ((v8 & 0x20000) != 0)
  {
    v8 = -v8 | 0x20000;
  }

  v9 = *(result + 30);
  *(a2 + 16) = (v9 >> 13) & 3 | (4 * (v8 & 0x3FFFF)) & 0xFFFFF | (v7 << 20);
  *(a2 + 20) = v9 << 19;
  v10 = *(result + 32);
  if ((v10 & 0x8000) != 0)
  {
    v10 = -v10 | 0x8000;
  }

  v11 = v3 & 0xF80007FF | (v10 << 11) | 0x8000000;
  *(a2 + 24) = v11;
  *(a2 + 24) = v11 & 0xFFFFF800 | (*(result + 16) >> 10) & 0x7FF;
  v12 = *(result + 16) << 22;
  *(a2 + 28) = v12;
  v13 = *(result + 24);
  if ((v13 & 0x200000) != 0)
  {
    v13 = -v13 | 0x200000;
  }

  v14 = v12 & 0xFFC00000 | v13 & 0x3FFFFF;
  v15 = *(result + 28);
  if ((v15 & 0x40) != 0)
  {
    v15 = -v15 | 0x40;
  }

  v16 = ((*(result + 11) & 0x1F) << 20) | (v15 << 25) | (*(result + 38) << 19);
  *(a2 + 28) = v14;
  *(a2 + 32) = v16;
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim12_00TimersInit(void)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 73, "lsim12_00TimersInit");
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 4, 1);
  }

  v2 = &qword_2A191FFA0;
  v3 = 5;
  do
  {
    *(v2 - 4) = 0;
    *v2 = 0;
    *(v2 + 2) = -1;
    v2 += 3;
    --v3;
  }

  while (v3);
  g_LsimTmrArray = 8615942;
  *(&qword_2A191FFA8 + 4) = 0x83790600000001;
  unk_2A191FFC4 = 0x837A0600000002;
  unk_2A191FFDC = 0x837B0600000003;
  unk_2A191FFF4 = 0x837C0600000004;
  dword_2A192000C = 5;
  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 73, "lsim12_00TimersInit");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v6, 4, 1);
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim12_01StartTimer(uint64_t a1, int a2, unsigned int a3, int a4)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim12_01StartTimer");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  v10 = 0;
  v11 = &g_LsimTmrArray;
  while (v11[5] != a4 || *(v11 + 4) == 1)
  {
    --v10;
    v11 += 6;
    if (v10 == -5)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MaxTmrIndex,SrcID,%u,SrcType,%u\n", v12);
        goto LABEL_12;
      }

      goto LABEL_13;
    }
  }

  if (AgpsFsmStartTimer(*v11, a3))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v24 = *v11;
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx OsaTmr,Status,%hhu,TimerId,%u,SrcID,%u,SrcType,%u\n", v14, "LSM");
LABEL_12:
      LbsOsaTrace_WriteLog(0xCu, __str, v13, 0, 1);
    }

LABEL_13:
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 73, "lsim12_01StartTimer");
      LbsOsaTrace_WriteLog(0xCu, __str, v16, 4, 1);
    }

    v17 = 0;
    goto LABEL_16;
  }

  *(v11 + 4) = 1;
  *(v11 + 1) = a1;
  v11[4] = a2;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: OsaTmr,Start,Timer,%u,Index,%u,duration,%ums,SrcID,%u,SrcType,%u\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 73, "lsim12_01StartTimer", *v11, -v10, a3, v11[4], v11[5]);
    LbsOsaTrace_WriteLog(0xCu, __str, v21, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 73, "lsim12_01StartTimer");
    v17 = 1;
    LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
  }

  else
  {
    v17 = 1;
  }

LABEL_16:
  v18 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t lsim12_02StopTimer(int a1, int a2)
{
  v27 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim12_02StopTimer");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  v6 = 0;
  v7 = &qword_2A191FFA8;
  while (1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (*(v7 - 12))
      {
        v9 = "ACTIVE";
      }

      else
      {
        v9 = "NOT USED";
      }

      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerIndex,%u,Timer,%u,SrcID,%u,SourceType,%u,Status,%s\n", v8, "LSM", 68, "lsim12_02StopTimer", v6, *(v7 - 4), *v7, *(v7 + 1), v9);
      LbsOsaTrace_WriteLog(0xCu, __str, v10, 5, 1);
    }

    if (*(v7 - 12) == 1 && *v7 == a1 && *(v7 + 1) == a2)
    {
      break;
    }

    ++v6;
    v7 += 3;
    if (v6 == 5)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SrcID,%u,SrcType,%u\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 87, "lsim12_02StopTimer", 770, a1, a2);
        LbsOsaTrace_WriteLog(0xCu, __str, v12, 2, 1);
      }

LABEL_19:
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "lsim12_02StopTimer");
        LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
      }

      v19 = 0;
      goto LABEL_22;
    }
  }

  v13 = AgpsFsmStopTimer(*(v7 - 4));
  if (v13)
  {
    v14 = v13;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx OsaTmr,Status,%hhu,TimerId,%u,SrcID,%u,SrcType,%u\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 69, "lsim12_02StopTimer", 1545, v14, *(v7 - 4), *v7, *(v7 + 1));
      LbsOsaTrace_WriteLog(0xCu, __str, v16, 0, 1);
    }

    *(v7 - 1) = 0;
    *v7 = -1;
    goto LABEL_19;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: OsaTmr,Stop,Timer,%u,SourceID,%u\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 73, "lsim12_02StopTimer", *(v7 - 4), *v7);
    LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
  }

  *(v7 - 12) = 0;
  *(v7 - 1) = 0;
  *v7 = -1;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v24 = mach_continuous_time();
    v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v24), "LSM", 73, "lsim12_02StopTimer");
    v19 = 1;
    LbsOsaTrace_WriteLog(0xCu, __str, v25, 4, 1);
  }

  else
  {
    v19 = 1;
  }

LABEL_22:
  v20 = *MEMORY[0x29EDCA608];
  return v19;
}

uint64_t lsim12_04TimersDeinit(void)
{
  v18 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 73, "lsim12_04TimersDeinit");
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 4, 1);
  }

  v2 = 0;
  v3 = &qword_2A191FFA8;
  do
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (*(v3 - 12))
      {
        v5 = "ACTIVE";
      }

      else
      {
        v5 = "NOT USED";
      }

      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerIndex,%u,TimerId,%u,SrcID,%u,SrcType,%u,Status,%s\n", v4, "LSM", 68, "lsim12_04TimersDeinit", v2, *(v3 - 4), *v3, *(v3 + 1), v5);
      LbsOsaTrace_WriteLog(0xCu, __str, v6, 5, 1);
    }

    if (*(v3 - 12) == 1)
    {
      v7 = AgpsFsmStopTimer(*(v3 - 4));
      if (v7)
      {
        v8 = v7;
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v9 = mach_continuous_time();
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx OsaTmr,Status,%hhu,TimerId,%u,SrcID,%u,SrcType,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 69, "lsim12_04TimersDeinit", 1545, v8, *(v3 - 4), *v3, *(v3 + 1));
          v11 = 0;
LABEL_15:
          LbsOsaTrace_WriteLog(0xCu, __str, v10, v11, 1);
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: OsaTmr,DeInit,Timer,%u,SrcID,%u\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim12_04TimersDeinit", *(v3 - 4), *v3);
        v11 = 4;
        goto LABEL_15;
      }

      *(v3 - 12) = 0;
      *(v3 - 1) = 0;
      *v3 = 0xFFFFFFFFLL;
      *(v3 - 4) = 0;
    }

    ++v2;
    v3 += 3;
  }

  while (v2 != 5);
  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 73, "lsim12_04TimersDeinit");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v15, 4, 1);
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim12_05TimerExpiry(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim12_05TimerExpiry");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIMUP_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim12_05TimerExpiry");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  v6 = *(a1 + 4);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 73, "lsim12_03TimerExpiry");
    LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
  }

  v9 = 0;
  v10 = &qword_2A191FFA8;
  while (1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (*(v10 - 12))
      {
        v12 = "ACTIVE";
      }

      else
      {
        v12 = "NOT USED";
      }

      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerIndex,%u,TimerId,%u,SrcID,%u,SourceType,%u,Status,%s\n", v11, "LSM", 68, "lsim12_03TimerExpiry", v9, *(v10 - 4), *v10, *(v10 + 1), v12);
      LbsOsaTrace_WriteLog(0xCu, __str, v13, 5, 1);
    }

    if (*(v10 - 4) == v6)
    {
      break;
    }

    ++v9;
    v10 += 3;
    if (v9 == 5)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimerId,%u\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 87, "lsim12_03TimerExpiry", 2052, v6);
        LbsOsaTrace_WriteLog(0xCu, __str, v15, 2, 1);
      }

      goto LABEL_24;
    }
  }

  if (*(v10 - 1))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerId,%u,TimerIndex,%u,SrcID,%u,SrcType,%u,Expired\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "lsim12_03TimerExpiry", *(v10 - 4), v9, *v10, *(v10 + 1));
      LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
    }

    (*(v10 - 1))(*v10, *(v10 + 1));
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SrcID,%u,TimerId,%u,TimerIndex,%u\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 87, "lsim12_03TimerExpiry", 258, *v10, *(v10 - 4), v9);
    LbsOsaTrace_WriteLog(0xCu, __str, v19, 2, 1);
  }

  *(v10 - 12) = 0;
  *(v10 - 1) = 0;
  *v10 = -1;
LABEL_24:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 73, "lsim12_03TimerExpiry");
    LbsOsaTrace_WriteLog(0xCu, __str, v21, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 73, "lsim12_05TimerExpiry");
    LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
  }

  v24 = *MEMORY[0x29EDCA608];
  return 0;
}

void ms_report_exception(int a1, int a2, int a3, char *a4)
{
  v29 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&__p, "NULLFileName");
  if (a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&__str, a4);
    size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    p_str = __str.__r_.__value_.__r.__words[0];
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    v10 = &p_str[-1].__r_.__value_.__r.__words[2] + 7;
    do
    {
      if (!size)
      {
        goto LABEL_14;
      }

      v11 = v10[size--];
    }

    while (v11 != 92 && v11 != 47);
    if (size == -1)
    {
LABEL_14:
      std::string::operator=(&__p, &__str);
      goto LABEL_15;
    }

    std::string::basic_string(&v25, &__str, size + 1, 0xFFFFFFFFFFFFFFFFLL, &v27);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v25;
LABEL_15:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  switch(a1)
  {
    case 2:
      if (a2 == 3)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(&__str, 0x410uLL);
          v15 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v17 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: #%04hx file,%s,line,%d\n", v15, "PSP", 69, "ms_report_exception", 513, p_p, a3);
          LbsOsaTrace_WriteLog(0x13u, &__str, v17, 0, 1);
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(&__str, 0x410uLL);
        v21 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        v22 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v22 = __p.__r_.__value_.__r.__words[0];
        }

        v23 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: #%04hx file,%s,line,%d,Code,%u\n", v21, "PSP", 69, "ms_report_exception", 515, v22, a3, a2);
        LbsOsaTrace_WriteLog(0x13u, &__str, v23, 0, 1);
      }

      break;
    case 1:
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(&__str, 0x410uLL);
        v12 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        v13 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v13 = __p.__r_.__value_.__r.__words[0];
        }

LABEL_23:
        v14 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: #%04hx file,%s,line,%d,ErrCode,%u\n", v12, "PSP", 69, "ms_report_exception", 770, v13, a3, a2);
        LbsOsaTrace_WriteLog(0x13u, &__str, v14, 0, 1);
      }

      break;
    case 0:
      if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        break;
      }

      bzero(&__str, 0x410uLL);
      v12 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v13 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = __p.__r_.__value_.__r.__words[0];
      }

      goto LABEL_23;
    default:
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(&__str, 0x410uLL);
        v18 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        v19 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v19 = __p.__r_.__value_.__r.__words[0];
        }

        v20 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: #%04hx file,%s,line,%d,Code,%u\n", v18, "PSP", 69, "ms_report_exception", 770, v19, a3, a2);
        LbsOsaTrace_WriteLog(0x13u, &__str, v20, 0, 1);
      }

      break;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v24 = *MEMORY[0x29EDCA608];
}

void sub_2996B7B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Comp_ErrorEllipse(double a1, double a2, double a3, double *a4, double *a5, double *a6)
{
  v26 = *MEMORY[0x29EDCA608];
  v12 = a1 - a2;
  if (a1 - a2 >= 0.0 && a1 - a2 <= 0.0 && fabs(a3) <= a1 * 0.0001)
  {
    *a6 = 0.0;
    v24 = sqrt(a1);
    *a4 = v24;
    *a5 = v24;
  }

  else
  {
    v13 = atan2(a3 + a3, v12) * 0.5;
    v15 = __sincos_stret(v13);
    cosval = v15.__cosval;
    v16 = v13 * 57.2957795;
    v17 = cosval * cosval;
    v18 = v15.__sinval * (cosval + cosval) * a3;
    v19 = a2 + cosval * cosval * v12 + v18;
    v20 = a1 - v17 * v12 - v18;
    if (v19 < 0.000001)
    {
      v19 = 0.000001;
    }

    if (v20 < 0.000001)
    {
      v20 = 0.000001;
    }

    if (v19 > v20)
    {
      v21 = v19;
    }

    else
    {
      v16 = v16 + 90.0;
      v21 = v20;
    }

    if (v19 <= v20)
    {
      v20 = v19;
    }

    *a6 = v16;
    *a4 = sqrt(v21);
    *a5 = sqrt(v20);
    v22 = *a6;
    v23 = 180.0;
    if (*a6 >= 180.0)
    {
      v23 = -180.0;
    }

    else if (v22 >= 0.0)
    {
      goto LABEL_19;
    }

    *a6 = v22 + v23;
  }

LABEL_19:
  v25 = *MEMORY[0x29EDCA608];
}

uint64_t NK_Comp_DR_Res(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v21[1] = *MEMORY[0x29EDCA608];
  *(a3 + 16736) = 0u;
  *(a3 + 16720) = 0u;
  *(a3 + 16704) = 0u;
  *(a3 + 16688) = 0u;
  *(a3 + 16672) = 0u;
  *(a3 + 16656) = 0u;
  *(a3 + 16640) = 0u;
  *(a3 + 16624) = 0u;
  *(a3 + 16608) = 0u;
  *(a3 + 16592) = 0u;
  *(a3 + 16576) = 0u;
  *(a3 + 16560) = 0u;
  *(a3 + 16544) = 0u;
  *(a3 + 16528) = 0u;
  *(a3 + 16512) = 0u;
  *(a3 + 16496) = 0u;
  *(a3 + 16480) = 0u;
  *(a3 + 16464) = 0u;
  *(a3 + 16448) = 0u;
  *(a3 + 16432) = 0u;
  v9 = a3 + 14016;
  *(a3 + 16416) = 0u;
  v20 = a3 + 19968;
  *(a3 + 16400) = 0u;
  v19 = a3 + 4448;
  *(a3 + 0x4000) = 0u;
  v18 = a3 + 26256;
  *(a3 + 16368) = 0u;
  v10 = a2 + 8696;
  do
  {
    v11 = a1 + 4 * v8;
    v12 = *(v11 + 76);
    result = Is_Legal(v12);
    if (result && *(v9 + v8) == 1 && *(a3 + 12) == 11 && (*(v20 + v8) & 1) == 0 && *(v10 + v8 + 1152) == 1)
    {
      if (v12 == 3 && *(a3 + 616) != *(a2 + 7344))
      {
        *(v10 + v6 + 1344) = *(v10 + v6 + 1344) + (*(a3 + 608) - *(a2 + 7336)) * 299792458.0;
      }

      v21[0] = 0.0;
      result = NK_Comp_ith_DR_Res(v8, a3 + 1080, a3 + 13960, v21, *(a3 + 8 * v8 + 120), *(a3 + v6 + 19584), *(v19 + 8 * v8), *(a3 + 656), *(v10 + v6 + 1344));
      *(a3 + v6 + 30912) = *(a3 + v6 + 30144) - *(v10 + v6 + 1808);
      if (*(v9 + v8 + 96) == 1)
      {
        *(v18 + v8) = 1;
      }
    }

    if (*(a3 + v8 + 2912) == 1)
    {
      *(v10 + v6 + 1344) = *(a3 + v6 + 19584);
      *(v10 + v8 + 1152) = 1;
      v14 = *(v11 + 412) >= 14 && *(a1 + v8 + 604) >= *(a2 + 4) && *(a1 + 2 * v8 + 1036) >= *(a2 + 14);
      *(v10 + v8 + 1728) = v14;
      *(v10 + v6 + 1808) = *(a3 + v6 + 30144);
    }

    else
    {
      *(v10 + v6 + 1344) = 0;
      v15 = v10 + v8;
      *(v15 + 1152) = 0;
      v16 = (v10 + v7);
      *v16 = 0;
      v16[1] = 0;
      v16[2] = 0;
      *(v15 + 1728) = 0;
    }

    ++v8;
    v7 += 24;
    v6 += 8;
  }

  while (v8 != 48);
  *(a2 + 8304) = *(a3 + 656);
  *(a2 + 7336) = *(a3 + 608);
  *(a2 + 7344) = *(a3 + 616);
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm08_02HandleRxData(uint64_t a1)
{
  v54 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_RX_DATA_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm08_02HandleRxData");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = *(a1 + 16);
    if (*v4 != 122 || v4[1] != 120)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
LABEL_16:
        v15 = 0;
LABEL_17:
        free(v4);
        goto LABEL_21;
      }

      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 87, "Gnm08_02HandleRxData", 770);
      v14 = __str;
LABEL_15:
      LbsOsaTrace_WriteLog(0xBu, v14, v13, 2, 1);
      goto LABEL_16;
    }

    v5 = *(a1 + 24);
    v39 = 0;
    memset_s(__str, 0x7FCuLL, 0, 0x7FCuLL);
    v42 = 0;
    v43 = 0;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    memset(v51, 0, sizeof(v51));
    v37 = 0;
    v38 = 0;
    v6 = v4[2] - 79;
    v7 = v6 > 7;
    v8 = (1 << v6) & 0xA1;
    if (!v7 && v8 != 0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(v41, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(v41, 0x40FuLL, "%10u %s%c %s: Recvd MC,%u,MID,%u,MIDE,%u,Len,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm08_01HandleZxMesg", v4[2], v4[3], v4[4], v5);
        LbsOsaTrace_WriteLog(0xBu, v41, v11, 4, 1);
      }

      Gnm06_01HandleTmZXData(v4, v5);
      goto LABEL_16;
    }

    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
    PlcGnssHw = Gnm03_64GetPlcGnssHw();
    plc00_03DecodeMsg(2, v4, v5, __str, &v39, &v42, &v37, PlcGnssHw);
    if (v42)
    {
      if (IsLoggingAllowed == 1 && plc00_15GetExtErrAsString(&v42, __s, 0x104uLL) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(v41, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(v41, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u,Err,%s\n", (*&g_MacClockTicksToMsRelation * v21), "GNM", 87, "Gnm08_01HandleZxMesg", 776, v37, HIBYTE(v37), __s);
        LbsOsaTrace_WriteLog(0xBu, v41, v22, 2, 1);
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        goto LABEL_16;
      }

      bzero(v41, 0x410uLL);
      v23 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v35 = v4[6];
      v36 = v4[7];
      v33 = v4[4];
      v34 = v4[5];
      v31 = v4[2];
      v32 = v4[3];
      v29 = *v4;
      v30 = v4[1];
      v13 = snprintf(v41, 0x40FuLL, "%10u %s%c %s: #%04hx ZXHeader %X%X%X%X%X%X%X%X\n", v23, "GNM", 87, "Gnm08_01HandleZxMesg");
LABEL_29:
      v14 = v41;
      goto LABEL_15;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(v41, 0x410uLL);
      v25 = mach_continuous_time();
      v26 = snprintf(v41, 0x40FuLL, "%10u %s%c %s: Recvd zx%c%c,%u\n", (*&g_MacClockTicksToMsRelation * v25), "GNM", 73, "Gnm08_01HandleZxMesg", v37, HIBYTE(v37), v38);
      LbsOsaTrace_WriteLog(0xBu, v41, v26, 4, 1);
    }

    switch(v37)
    {
      case 'X':
        v27 = Gnm26_21HandleXMessages(__str, &v37);
        break;
      case 'D':
        v27 = Gnm35_31HandleDMessages(__str, &v37);
        break;
      case 'B':
        v27 = Gnm38_02HandleBMessages(__str, &v37, v24);
        break;
      default:
        if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
        {
          goto LABEL_16;
        }

        bzero(v41, 0x410uLL);
        v28 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v13 = snprintf(v41, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u\n", v28);
        goto LABEL_29;
    }

    v15 = v27;
    goto LABEL_17;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 69, "Gnm08_02HandleRxData", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v17, 0, 1);
  }

  v15 = 0;
LABEL_21:
  v18 = *MEMORY[0x29EDCA608];
  return v15;
}

uint64_t KFSt_DMeas_Update(unsigned int a1, unsigned int a2, unsigned int a3, double *a4, double *a5, _WORD *a6, double a7)
{
  v20[33] = *MEMORY[0x29EDCA608];
  if (*(a4 + 1) >= 1 && (*(a4 + 16) = 0, *a4 == 1))
  {
    v10 = a4[4];
    v11 = a7 - a4[3];
    memset(v17, 0, sizeof(v17));
    v16 = 0.0;
    a4[6] = v11;
    v18 = 0;
    *(v17 + a1) = 0x3FF0000000000000;
    *(v17 + a2) = 0xBFF0000000000000;
    *(v17 + a3) = v11;
    umeas(a5, a3, v10, v17, v20, v19, &v16, a4[7]);
    v12 = v16;
    if (v16 <= 0.0)
    {
      v13 = 0;
      *a4 = 0;
      *(a4 + 16) = 1;
      ++*a6;
    }

    else
    {
      v12 = a4[4] * (v16 * (v20[a3] * v20[a3]));
      v13 = *a4;
    }

    a4[8] = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x29EDCA608];
  return v13 & 1;
}

double GLON_EphBin2Int(uint64_t a1, uint64_t a2, int32x4_t a3)
{
  v47 = *MEMORY[0x29EDCA608];
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v3 = *(a1 + 56);
  *(a2 + 24) = *(a1 + 52) >> 27;
  v4 = *(a1 + 16);
  *(a2 + 25) = (*(a1 + 12) >> 23) & 3;
  v5 = *(a1 + 20);
  *(a2 + 26) = (*(a1 + 24) & 0x800000) != 0;
  *(a2 + 27) = (v3 >> 19) & 3;
  v6 = (__PAIR64__(v4, v5) >> 19) & 0x7FFFFFF;
  if ((v4 & 0x2000) != 0)
  {
    LODWORD(v6) = -((__PAIR64__(v4, v5) >> 19) & 0x3FFFFFF);
  }

  *(a2 + 28) = v6;
  v8 = *(a1 + 12);
  v7 = *(a1 + 16);
  v9 = (v7 >> 14) & 0x1F;
  if ((v7 & 0x40000) != 0)
  {
    v9 = -((v7 >> 14) & 0xF);
  }

  *(a2 + 52) = v9;
  v10 = __PAIR64__(v8, v7) >> 19;
  v11 = v10 & 0xFFFFFF;
  v12 = v10 & 0x7FFFFF;
  if ((v8 & 0x400) != 0)
  {
    v13 = -v12;
  }

  else
  {
    v13 = v11;
  }

  *(a2 + 40) = v13;
  HIDWORD(v14) = *(a1 + 28);
  LODWORD(v14) = *(a1 + 32);
  v15 = (v14 >> 19) & 0x7FFFFFF;
  v16 = (v14 >> 19) & 0x3FFFFFF;
  if ((v14 & 0x200000000000) != 0)
  {
    v17 = -v16;
  }

  else
  {
    v17 = v15;
  }

  *(a2 + 32) = v17;
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  v20 = (v18 >> 14) & 0x1F;
  if ((v18 & 0x40000) != 0)
  {
    v20 = -((v18 >> 14) & 0xF);
  }

  *(a2 + 53) = v20;
  v21 = __PAIR64__(v19, v18) >> 19;
  v22 = v21 & 0xFFFFFF;
  v23 = v21 & 0x7FFFFF;
  if ((v19 & 0x400) != 0)
  {
    v24 = -v23;
  }

  else
  {
    v24 = v22;
  }

  *(a2 + 44) = v24;
  HIDWORD(v25) = *(a1 + 40);
  LODWORD(v25) = *(a1 + 44);
  v26 = (v25 >> 19) & 0x7FFFFFF;
  v27 = (v25 >> 19) & 0x3FFFFFF;
  if ((v25 & 0x200000000000) != 0)
  {
    v28 = -v27;
  }

  else
  {
    v28 = v26;
  }

  *(a2 + 36) = v28;
  v30 = *(a1 + 36);
  v29 = *(a1 + 40);
  v31 = (v29 >> 14) & 0x1F;
  if ((v29 & 0x40000) != 0)
  {
    v31 = -((v29 >> 14) & 0xF);
  }

  v32 = __PAIR64__(v30, v29) >> 19;
  *(a2 + 54) = v31;
  v33 = v32 & 0xFFFFFF;
  v34 = v32 & 0x7FFFFF;
  if ((v30 & 0x400) != 0)
  {
    v35 = -v34;
  }

  else
  {
    v35 = v33;
  }

  *(a2 + 48) = v35;
  v36 = *(a1 + 48);
  if ((v36 & 0x4000000) != 0)
  {
    v37 = -((v36 >> 5) & 0x1FFFFF);
  }

  else
  {
    v37 = (v36 >> 5) & 0x3FFFFF;
  }

  *(a2 + 56) = v37;
  v38 = *(a1 + 36);
  v39 = (v38 >> 15) & 0x7FF;
  if ((v38 & 0x2000000) != 0)
  {
    v39 = -((v38 >> 15) & 0x3FF);
  }

  *(a2 + 60) = v39;
  v40 = *(a1 + 48);
  if ((v40 & 0x10) != 0)
  {
    v40 = -(*(a1 + 48) & 0xF);
  }

  else
  {
    LOBYTE(v40) = v40 & 0x1F;
  }

  *(a2 + 55) = v40;
  *(a2 + 14) = (*(a1 + 12) >> 11) & 0xFFF;
  v41 = *(a1 + 24);
  *(a2 + 13) = BYTE2(v41) & 0x7F;
  a3.i64[0] = __PAIR64__(v38, v41);
  v42 = vand_s8(vmovn_s32(vshlq_u32(vzip1q_s32(a3, vdupq_lane_s32(__PAIR64__(v38, v41), 1)), xmmword_2997613A0)), 0x1000300010007);
  *a3.i8 = vuzp1_s8(v42, v42);
  *(a2 + 18) = a3.i32[0];
  v43 = *(a1 + 52);
  v44 = *(a1 + 56);
  *(a2 + 22) = (v43 & 0x1000) != 0;
  *(a2 + 23) = BYTE1(v43) & 0xF;
  *(a2 + 16) = (__PAIR64__(v43, v44) >> 26) & 0x7FF;
  *(a2 + 12) = (v44 >> 21) & 0x1F;
  v45 = *MEMORY[0x29EDCA608];
  return *a3.i64;
}

uint64_t GLON_EphInt2Bin(uint64_t result, uint64_t a2)
{
  v29 = *MEMORY[0x29EDCA608];
  *a2 = *result;
  v2 = ((*(result + 14) & 0xFFF) << 11) & 0xFE7FFFFF | ((*(result + 25) & 3) << 23) | 0x8000000;
  *(a2 + 8) = *(result + 8);
  *(a2 + 12) = v2;
  v3 = *(result + 40);
  if ((v3 & 0x800000) != 0)
  {
    v3 = -v3 | 0x800000;
  }

  v4 = v2 & 0xFFFFF800 | (v3 >> 13) & 0x7FF;
  v5 = v3 << 19;
  v6 = *(result + 52);
  if ((v6 & 0x10) != 0)
  {
    v6 = -v6 | 0x10;
  }

  v7 = v5 & 0xFFF83FFF | ((v6 & 0x1F) << 14);
  *(a2 + 12) = v4;
  *(a2 + 16) = v7;
  v8 = *(result + 28);
  if ((v8 & 0x4000000) != 0)
  {
    v8 = -v8 | 0x4000000;
  }

  *(a2 + 16) = v7 & 0xFFFFC000 | (v8 >> 13) & 0x3FFF;
  *(a2 + 20) = v8 << 19;
  v9 = (*(result + 26) << 23) & 0xF880FFFF | ((*(result + 18) & 7) << 24) | ((*(result + 13) & 0x7F) << 16) | 0x10000000;
  *(a2 + 24) = v9;
  v10 = *(result + 44);
  if ((v10 & 0x800000) != 0)
  {
    v10 = -v10 | 0x800000;
  }

  v11 = v9 & 0xFFFFF800 | (v10 >> 13) & 0x7FF;
  v12 = v10 << 19;
  v13 = *(result + 53);
  if ((v13 & 0x10) != 0)
  {
    v13 = -v13 | 0x10;
  }

  v14 = v12 & 0xFFF83FFF | ((v13 & 0x1F) << 14);
  *(a2 + 24) = v11;
  *(a2 + 28) = v14;
  v15 = *(result + 32);
  if ((v15 & 0x4000000) != 0)
  {
    v15 = -v15 | 0x4000000;
  }

  *(a2 + 28) = v14 & 0xFFFFC000 | (v15 >> 13) & 0x3FFF;
  *(a2 + 32) = v15 << 19;
  v16 = *(result + 60);
  if ((v16 & 0x400) != 0)
  {
    v16 = -v16 | 0x400;
  }

  v17 = ((v16 & 0x7FF) << 15) | (*(result + 19) << 26) | ((*(result + 20) & 3) << 12) | (*(result + 21) << 11) | 0x18000000;
  *(a2 + 36) = v17;
  v18 = *(result + 48);
  if ((v18 & 0x800000) != 0)
  {
    v18 = -v18 | 0x800000;
  }

  v19 = *(result + 54);
  if ((v19 & 0x10) != 0)
  {
    v19 = -v19 | 0x10;
  }

  v20 = v17 & 0xFFFFF800 | (v18 >> 13) & 0x7FF;
  v21 = (v18 << 19) | ((v19 & 0x1F) << 14);
  *(a2 + 36) = v20;
  *(a2 + 40) = v21;
  v22 = *(result + 36);
  if ((v22 & 0x4000000) != 0)
  {
    v22 = -v22 | 0x4000000;
  }

  *(a2 + 40) = v21 & 0xFFFFC000 | (v22 >> 13) & 0x3FFF;
  *(a2 + 44) = v22 << 19;
  *(a2 + 48) = 0x20000000;
  v23 = *(result + 56);
  if ((v23 & 0x200000) != 0)
  {
    v23 = -v23 | 0x200000;
  }

  v24 = *(result + 55);
  if ((v24 & 0x10) != 0)
  {
    v24 = -v24 | 0x10;
  }

  v25 = v24 & 0x1F | (32 * (v23 & 0x3FFFFF)) | 0x20000000;
  v26 = *(result + 16);
  v27 = (*(result + 24) << 27) | (*(result + 22) << 12) | ((*(result + 23) & 0xF) << 8) | (v26 >> 6) & 0x1F;
  *(a2 + 48) = v25;
  *(a2 + 52) = v27;
  *(a2 + 56) = (v26 << 26) | ((*(result + 12) & 0x1F) << 21) | ((*(result + 27) & 3) << 19);
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm12_11RejectGnssMsaReq(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_START_MSA_GNSS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm12_11RejectGnssMsaReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    Gnm13_00SendGnssReqCnf(0, *(a1 + 12), 2);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm12_11RejectGnssMsaReq", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 0, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm12_12ServiceGnssMsaReq(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v18[8] = 0;
  *&v18[4] = 0;
  *&v18[12] = 0;
  v18[20] = 0;
  memset(&v18[24], 0, 32);
  *&v18[56] = 0xFFFF;
  *&v18[60] = 0;
  *&v18[64] = 0;
  v18[69] = 0;
  v17 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 3, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_START_MSA_GNSS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 77, "Gnm12_12ServiceGnssMsaReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 3, 1);
  }

  if (a1)
  {
    v4 = Gnm02_12ReqAssistInstn(*(a1 + 12), "LSIM_GNM_POSN_START_MSA_GNSS_REQ", 1, &v17);
    if (v4)
    {
      v5 = v4;
      if (*(v4 + 1))
      {
        if (*(v4 + 2) == 2)
        {
          *v18 = *(a1 + 12);
          v18[5] = 1;
          v18[68] = v17;
          v6 = Gnm12_02FillGnssReqParams(v18, (a1 + 20));
          v7 = v18[68];
          if ((v6 & 1) == 0)
          {
            if (v18[68])
            {
              Gnm10_28StopPositioning(v5);
            }

            Gnm02_21DeleteInstn(v5);
            v13 = *(a1 + 12);
            v14 = 2;
            goto LABEL_22;
          }

          if (v18[68] && v18[7] != *(*(v5 + 1) + 7))
          {
            goto LABEL_20;
          }

          v18[8] = *(a1 + 16);
          if (v18[8] == 1)
          {
            Gnm02_24AbortAllNafSessions(8);
          }

          if (Gnm12_03SendAssistPosStart(v18, *v5))
          {
            v8 = *(v5 + 1);
            v9 = *&v18[48];
            *(v8 + 32) = *&v18[32];
            *(v8 + 48) = v9;
            *(v8 + 62) = *&v18[62];
            v10 = *&v18[16];
            *v8 = *v18;
            *(v8 + 16) = v10;
            goto LABEL_23;
          }

          if (v7)
          {
LABEL_20:
            Gnm10_28StopPositioning(v5);
            Gnm02_21DeleteInstn(v5);
          }
        }
      }
    }

    v13 = *(a1 + 12);
    v14 = 0;
LABEL_22:
    Gnm13_00SendGnssReqCnf(v14, v13, 2);
    goto LABEL_23;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 69, "Gnm12_12ServiceGnssMsaReq", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v12, 0, 1);
  }

LABEL_23:
  v15 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm12_02FillGnssReqParams(uint64_t a1, unsigned int *a2)
{
  v29 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GnssID,%u,AsstAvail,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm12_02FillGnssReqParams", *(a2 + 36), *(a2 + 37));
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  if (*(a2 + 36))
  {
    v6 = *a2;
    if (*a2 - 1 < 3)
    {
      *(a1 + 20) = *(a2 + 36);
      *(a1 + 58) = *(a2 + 37) == 0;
      if (v6 == 3)
      {
        *(a1 + 58) = 0;
        *(a1 + 12) = *(a2 + 7);
      }

      else
      {
        *(a1 + 12) = *(a2 + 7);
        if (v6 == 1)
        {
          v10 = 18;
          goto LABEL_16;
        }
      }

      v10 = 20;
LABEL_16:
      *(a1 + 6) = v10;
      *(a1 + 69) = *(a2 + 38);
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Qos PosRepType,%u RespTime,%u,EarlyRespTime,%u,AgeLimit,%u,HorAcc,%u,VertAcc,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 73, "Gnm12_01PopulateQosParams", a2[4], a2[3], a2[6], a2[5], *(a2 + 6), *(a2 + 8));
        LbsOsaTrace_WriteLog(0xBu, __str, v12, 4, 1);
      }

      *(a1 + 56) = *(a2 + 6);
      *(a1 + 57) = *(a2 + 8);
      v13 = a2[4];
      if (v13 > 1)
      {
        if (v13 == 2)
        {
          v22 = a2[3];
          *(a1 + 36) = v22;
          *(a1 + 40) = 0;
          *(a1 + 60) = *(a2 + 2);
          *(a1 + 7) = 2;
          *(a1 + 44) = 0;
          *(a1 + 48) = 0;
          if (v22 - 7200001 >= 0xFF922300)
          {
            v9 = 1;
            goto LABEL_51;
          }

          if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
          {
            goto LABEL_48;
          }

          bzero(__str, 0x410uLL);
          mach_continuous_time();
          v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespTime\n");
          goto LABEL_47;
        }

        if (v13 != 3)
        {
LABEL_21:
          if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
          {
LABEL_48:
            v9 = 0;
            goto LABEL_51;
          }

          bzero(__str, 0x410uLL);
          v14 = mach_continuous_time();
          v27 = a2[4];
          v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PosRep,%u\n", (*&g_MacClockTicksToMsRelation * v14));
LABEL_47:
          LbsOsaTrace_WriteLog(0xBu, __str, v15, 2, 1);
          goto LABEL_48;
        }
      }

      else
      {
        if (!v13)
        {
          *(a1 + 60) = 0;
          *(a1 + 7) = 0;
          *(a1 + 44) = 0;
          v9 = 1;
          *(a1 + 36) = 0;
LABEL_51:
          v23 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
          *(a1 + 24) = v23;
          *(a1 + 52) = v23;
          goto LABEL_52;
        }

        if (v13 != 1)
        {
          goto LABEL_21;
        }
      }

      v16 = HIWORD(dword_2A193B6D8);
      if ((*(a1 + 6) & 4) != 0)
      {
        if ((*(a1 + 6) & 2) == 0 && a2[5])
        {
          goto LABEL_33;
        }
      }

      else if ((*(a1 + 6) & 2) == 0)
      {
        goto LABEL_33;
      }

      if (a2[3] - 7200001 < 0xFF922300)
      {
        v9 = 0;
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v17 = mach_continuous_time();
          v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespTime\n", (*&g_MacClockTicksToMsRelation * v17), "GNM", 87, "Gnm12_01PopulateQosParams", 514);
          LbsOsaTrace_WriteLog(0xBu, __str, v18, 2, 1);
          v9 = 0;
        }

LABEL_34:
        v19 = a2[3];
        if (v19 <= v16)
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

        *(a1 + 40) = v19 - v20;
        *(a1 + 60) = 1;
        if (a2[4] == 3)
        {
          *(a1 + 44) = 0;
        }

        else
        {
          v21 = a2[6];
          if (!v21 || v21 >= v19)
          {
            *(a1 + 7) = 1;
            *(a1 + 44) = 0;
            *(a1 + 36) = 0;
            goto LABEL_50;
          }

          *(a1 + 44) = v21;
        }

        *(a1 + 7) = 4;
        *(a1 + 36) = 1000;
LABEL_50:
        *(a1 + 48) = a2[5];
        goto LABEL_51;
      }

LABEL_33:
      v9 = 1;
      goto LABEL_34;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v26 = *a2;
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LocType,%u\n", (*&g_MacClockTicksToMsRelation * v8));
      goto LABEL_11;
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnssID\n");
LABEL_11:
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 2, 1);
  }

  v9 = 0;
LABEL_52:
  v24 = *MEMORY[0x29EDCA608];
  return v9;
}

BOOL Gnm12_03SendAssistPosStart(uint64_t a1, __int16 a2)
{
  v31 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("Gnm12_03SendAssistPosStart", 259, 1, 0x38uLL);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_44;
  }

  *(v4 + 6) = a2;
  v4[49] = *(a1 + 8);
  v6 = *(a1 + 28);
  v7.i64[0] = v6;
  v7.i64[1] = HIDWORD(v6);
  *(v4 + 20) = vmovn_s64(vcvtq_u64_f64(vmulq_f64(vcvtq_f64_u64(v7), vdupq_n_s64(0x3F50624DD2F1A9FCuLL))));
  v8 = *(a1 + 48);
  if (v8 > 0x5265C00)
  {
    v8 = 0;
  }

  *(v4 + 10) = v8;
  v9 = *(a1 + 7);
  if (v9 == 2)
  {
    v10 = 0;
    *(v4 + 14) = *(a1 + 60);
    *(v4 + 8) = *(a1 + 36);
  }

  else
  {
    *(v4 + 8) = *(a1 + 36);
    if (v9 == 4)
    {
      v4[16] = (dword_2A192081C & 0x1000) == 0;
      v10 = 2;
    }

    else if (v9 == 1)
    {
      v4[16] = (dword_2A192081C & 0x1000) == 0;
      v10 = 1;
    }

    else
    {
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
      v10 = 0;
      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionType,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 87, "Gnm12_03SendAssistPosStart", 770, *(a1 + 7));
        LbsOsaTrace_WriteLog(0xBu, __str, v13, 2, 1);
        v10 = 0;
      }
    }
  }

  v5[15] = v10;
  v14 = *(a1 + 40);
  v15 = v14 >= 0x32;
  v16 = v14 - 50;
  if (v15)
  {
    *(v5 + 9) = v16;
  }

  v17 = *(a1 + 56);
  if (v17 == 255)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = (pow(1.1, v17) + -1.0) * 10.0;
  }

  v19 = *(a1 + 57);
  if (v19 == 255)
  {
    v21 = qword_2A1920830;
    v20 = 0.0;
    if (*&qword_2A1920830 <= 0.0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v20 = (pow(1.025, v19) + -1.0) * 45.0;
  v21 = qword_2A1920830;
  if (*&qword_2A1920830 > 0.0)
  {
    if (v20 == 0.0 || (v20 > 0.0 ? (v22 = *&qword_2A1920830 < v20) : (v22 = 0), v22))
    {
LABEL_27:
      v20 = *&v21;
    }
  }

LABEL_28:
  v23 = (v18 + 1.0);
  if (v18 > 65535.0)
  {
    LOWORD(v23) = -1;
  }

  if (v18 <= 0.0)
  {
    LOWORD(v23) = 0;
  }

  *(v5 + 22) = v23;
  v24 = (v20 + 1.0);
  if (v20 > 65535.0)
  {
    LOWORD(v24) = -1;
  }

  if (v20 <= 0.0)
  {
    LOWORD(v24) = 0;
  }

  *(v5 + 23) = v24;
  v5[54] = *(a1 + 69);
  v5[48] = 0;
  if ((*(a1 + 6) & 2) != 0)
  {
    v25 = 4;
    goto LABEL_40;
  }

  if ((*(a1 + 6) & 4) != 0)
  {
    v25 = 2;
LABEL_40:
    v5[48] = v25;
  }

  v5[50] = *(a1 + 20);
  v5[14] = -*(a1 + 68);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v26 = mach_continuous_time();
    v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_START_POS_REQ =>GNCS Id,%u\n", (*&g_MacClockTicksToMsRelation * v26), "GNM", 73, "Gnm12_03SendAssistPosStart", *(v5 + 6));
    LbsOsaTrace_WriteLog(0xBu, __str, v27, 4, 1);
  }

  AgpsSendFsmMsg(128, 130, 8519680, v5);
LABEL_44:
  result = v5 != 0;
  v29 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm12_13RejectGnssMsbReq(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_START_MSB_GNSS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm12_13RejectGnssMsbReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    Gnm13_00SendGnssReqCnf(0, *(a1 + 12), 4);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm12_13RejectGnssMsbReq", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 0, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm12_14ServiceGnssMsbReq(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v18[8] = 0;
  *&v18[4] = 0;
  *&v18[12] = 0;
  v18[20] = 0;
  memset(&v18[24], 0, 32);
  *&v18[56] = 0xFFFF;
  *&v18[60] = 0;
  *&v18[64] = 0;
  v18[69] = 0;
  v17 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 3, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_START_MSB_GNSS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 77, "Gnm12_14ServiceGnssMsbReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 3, 1);
  }

  if (a1)
  {
    v4 = Gnm02_12ReqAssistInstn(*(a1 + 12), "LSIM_GNM_POSN_START_MSB_GNSS_REQ", 1, &v17);
    if (v4)
    {
      v5 = v4;
      if (*(v4 + 1))
      {
        if (*(v4 + 2) == 2)
        {
          *v18 = *(a1 + 12);
          v18[5] = 1;
          v18[68] = v17;
          v6 = Gnm12_02FillGnssReqParams(v18, (a1 + 20));
          v7 = v18[68];
          if ((v6 & 1) == 0)
          {
            if (v18[68])
            {
              Gnm10_28StopPositioning(v5);
            }

            Gnm02_21DeleteInstn(v5);
            v13 = *(a1 + 12);
            v14 = 2;
            goto LABEL_22;
          }

          if (v18[68] && v18[7] != *(*(v5 + 1) + 7))
          {
            goto LABEL_20;
          }

          v18[8] = *(a1 + 16);
          if (v18[8] == 1)
          {
            Gnm02_24AbortAllNafSessions(8);
          }

          if (Gnm12_03SendAssistPosStart(v18, *v5))
          {
            v8 = *(v5 + 1);
            v9 = *&v18[48];
            *(v8 + 32) = *&v18[32];
            *(v8 + 48) = v9;
            *(v8 + 62) = *&v18[62];
            v10 = *&v18[16];
            *v8 = *v18;
            *(v8 + 16) = v10;
            goto LABEL_23;
          }

          if (v7)
          {
LABEL_20:
            Gnm10_28StopPositioning(v5);
            Gnm02_21DeleteInstn(v5);
          }
        }
      }
    }

    v13 = *(a1 + 12);
    v14 = 0;
LABEL_22:
    Gnm13_00SendGnssReqCnf(v14, v13, 4);
    goto LABEL_23;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 69, "Gnm12_14ServiceGnssMsbReq", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v12, 0, 1);
  }

LABEL_23:
  v15 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm12_15AbortReq(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 3, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_ABORT_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 77, "Gnm12_15AbortReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 3, 1);
  }

  if (a1)
  {
    InstnFromAssistId = Gnm02_33GetInstnFromAssistId(*(a1 + 12), 1);
    if (!InstnFromAssistId)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 87, "Gnm12_15AbortReq", 2052, *(a1 + 12));
        LbsOsaTrace_WriteLog(0xBu, __str, v13, 2, 1);
      }

      v8 = *(a1 + 12);
      v9 = 4;
      goto LABEL_14;
    }

    v5 = InstnFromAssistId;
    if (!Gnm10_28StopPositioning(InstnFromAssistId))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Stop Posn Failure\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm12_15AbortReq");
        LbsOsaTrace_WriteLog(0xBu, __str, v7, 2, 1);
      }

      Gnm02_21DeleteInstn(v5);
      v8 = *(a1 + 12);
      v9 = 0;
LABEL_14:
      Gnm13_03SendAbortCnf(v8, v9);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 69, "Gnm12_15AbortReq", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v11, 0, 1);
  }

  v14 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm12_16RejectAidStatusReq(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_AID_STATUS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm12_16RejectAidStatusReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    Gnm13_08SendErrAssistStatus();
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm12_16RejectAidStatusReq", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 0, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm12_17HandleAidStatusReq(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_AID_STATUS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm12_17HandleAidStatusReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = *(a1 + 12);
    if (v4)
    {
      if (v4 >= 5)
      {
        v4 = 5;
      }

      if (AgpsFsmStartTimer(0x802A06u, 1000 * v4) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 87, "Gnm12_17HandleAidStatusReq", 1544);
        LbsOsaTrace_WriteLog(0xBu, __str, v6, 2, 1);
      }
    }

    LOBYTE(g_AssistReq) = 1;
    HIDWORD(g_AssistReq) = *(a1 + 16);
    Gnm14_03SendPosEstimateReq();
    Gnm17_13SendPollAssistStatus();
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm12_17HandleAidStatusReq", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 0, 1);
  }

  v9 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm12_18HandleAssistTimeout(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_ASSIST_STATUS_TIMER\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm12_18HandleAssistTimeout");
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 4, 1);
  }

  if (a1)
  {
    if (g_AssistReq == 1)
    {
      Gnm13_07SendAidStatusCnf(0, v2, v3, v4, v5, v6);
      LOBYTE(g_AssistReq) = 0;
    }

    if (BYTE1(g_AssistReq) == 1)
    {
      Gnm13_13HandleAssistStatus(0);
      BYTE1(g_AssistReq) = 0;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v10 = 78;
      if (g_AssistReq)
      {
        v11 = 89;
      }

      else
      {
        v11 = 78;
      }

      if (BYTE1(g_AssistReq))
      {
        v10 = 89;
      }

      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: InternalReq,%c,ExternalReq,%c\n", v9, "GNM", 73, "Gnm12_18HandleAssistTimeout", v10, v11);
      v13 = 4;
      goto LABEL_17;
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 69, "Gnm12_18HandleAssistTimeout", 517);
    v13 = 0;
LABEL_17:
    LbsOsaTrace_WriteLog(0xBu, __str, v12, v13, 1);
  }

  v15 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t DD_Delete_Bad_GAL_Data(uint64_t a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v18 = *MEMORY[0x29EDCA608];
  v6 = a1 + 17908;
  v7 = a2 + 2092;
  v8 = a1 + 13009;
  v9 = (a1 + 13046);
  v10 = a1 + 17044;
  v11 = a2 + 2884;
  result = 7680;
  do
  {
    if (*(a2[2074] + v5) == 1)
    {
      *(v8 + 8 * v5 + 109) = 0x400040004000400;
      v9[180] = 1024;
      v9[216] = 1024;
      *(v6 + v5) = 0;
      v13 = (v8 + v2 + 723);
      *(v13 + 76) = 0uLL;
      v13[3] = 0uLL;
      v13[4] = 0uLL;
      v13[1] = 0uLL;
      v13[2] = 0uLL;
      *v13 = 0uLL;
      *(a2[2074] + v5) = 0;
      *(a2[2072] + v5) = 0;
      *(a2[2076] + v5) = 0;
      *(v7 + 79) = 0;
      *(v7 + 3) = 0uLL;
      *(v7 + 4) = 0uLL;
      *(v7 + 1) = 0uLL;
      *(v7 + 2) = 0uLL;
      *v7 = 0uLL;
      *(a2[2082] + v5) = 0;
      *(a2[2079] + v5) = 1;
      v14 = p_NV + 8 * v3;
      *(v14 + 9400) = 0xFFFFFFFFLL;
      *(v14 + 9408) = 0uLL;
      *(v14 + 9424) = 0uLL;
      *(v14 + 9440) = 0uLL;
      *(v14 + 9456) = 0uLL;
      *(v14 + 9472) = 0uLL;
      *(v14 + 9487) = 0;
    }

    if (*(a2[2075] + v5) == 1)
    {
      *(v8 + v5) = -1;
      *v9 = 2048;
      *(v10 + 36 * gal_E1B_AlmSvId2SubframeId[v5] - 4) = 0;
      *(a2[2075] + v5) = 0;
      *(a2[2073] + v5) = 0;
      *(a2[2078] + v5) = 0;
      *(v11 + 31) = 0;
      *v11 = 0uLL;
      *(v11 + 1) = 0uLL;
      *(a2[2082] + v5) = 0;
      v15 = p_NV;
      *(p_NV + 8 * v4 + 7672) = 0xFFFFFFFFLL;
      v16 = v15 + result;
      *(v16 + 31) = 0;
      *v16 = 0uLL;
      *(v16 + 16) = 0uLL;
    }

    ++v5;
    result += 48;
    v4 += 6;
    v3 += 12;
    v11 = (v11 + 36);
    ++v9;
    v7 += 11;
    v2 += 92;
  }

  while (v5 != 36);
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Delete_Inhib_GAL_Data(uint64_t result, uint64_t a2, void *a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v19 = *MEMORY[0x29EDCA608];
  v7 = a2 + 17908;
  v8 = a3 + 2092;
  v9 = a2 + 13009;
  v10 = (a2 + 13046);
  v11 = a2 + 17044;
  v12 = a3 + 2884;
  v13 = 7680;
  do
  {
    if (*(result + v6) == 1)
    {
      *(v9 + 8 * v6 + 109) = 0x400040004000400;
      v10[180] = 1024;
      v10[216] = 1024;
      *(v7 + v6) = 0;
      v14 = (v9 + v3 + 723);
      *(v14 + 76) = 0uLL;
      v14[3] = 0uLL;
      v14[4] = 0uLL;
      v14[1] = 0uLL;
      v14[2] = 0uLL;
      *v14 = 0uLL;
      *(a3[2074] + v6) = 0;
      *(a3[2072] + v6) = 0;
      *(a3[2076] + v6) = 0;
      *(v8 + 79) = 0;
      *(v8 + 3) = 0uLL;
      *(v8 + 4) = 0uLL;
      *(v8 + 1) = 0uLL;
      *(v8 + 2) = 0uLL;
      *v8 = 0uLL;
      *(a3[2077] + v6) = 0;
      *(v8 + 3247) = 0;
      *(v8 + 202) = 0uLL;
      *(v8 + 201) = 0uLL;
      *(v8 + 200) = 0uLL;
      *(v8 + 199) = 0uLL;
      *(v8 + 198) = 0uLL;
      *(a3[2082] + v6) = 0;
      *(a3[2079] + v6) = 1;
      v15 = p_NV + 8 * v5;
      *(v15 + 9400) = 0xFFFFFFFFLL;
      *(v15 + 9408) = 0uLL;
      *(v15 + 9424) = 0uLL;
      *(v15 + 9440) = 0uLL;
      *(v15 + 9456) = 0uLL;
      *(v15 + 9472) = 0uLL;
      *(v15 + 9487) = 0;
      *(v9 + v6) = -1;
      *v10 = 2048;
      *(v11 + 36 * gal_E1B_AlmSvId2SubframeId[v6] - 4) = 0;
      *(a3[2075] + v6) = 0;
      *(a3[2073] + v6) = 0;
      *(a3[2078] + v6) = 0;
      *(v12 + 31) = 0;
      *v12 = 0uLL;
      *(v12 + 1) = 0uLL;
      v16 = p_NV;
      *(p_NV + 8 * v4 + 7672) = 0xFFFFFFFFLL;
      v17 = v16 + v13;
      *(v17 + 31) = 0;
      *v17 = 0uLL;
      *(v17 + 16) = 0uLL;
    }

    ++v6;
    v5 += 12;
    v13 += 48;
    v4 += 6;
    v12 = (v12 + 36);
    ++v10;
    v8 += 11;
    v3 += 92;
  }

  while (v6 != 36);
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Check_Age_GAL_Data(int a1, unsigned int a2, uint64_t a3)
{
  v29 = *MEMORY[0x29EDCA608];
  if (a1 < 1)
  {
    v7 = 0;
    goto LABEL_53;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v27 = a3 + 23072;
  v8 = (a3 + 16736);
  v9 = a1 + 900;
  if (a1 <= 0x15180)
  {
    v10 = 86400;
  }

  else
  {
    v10 = a1;
  }

  v11 = v10 - 86400;
  v12 = *(a3 + 16608);
  v28 = (a1 - a2 / 0x3E8) & ~((a1 - a2 / 0x3E8) >> 31);
  do
  {
    if (*(v12 + v5) != 1)
    {
      goto LABEL_17;
    }

    v13 = *v8;
    if (*v8 < v11 && v13 >= 1)
    {
LABEL_15:
      v7 = 1;
      *(*(a3 + 16592) + v5) = 1;
      goto LABEL_17;
    }

    if (v13)
    {
      if (v13 > v9)
      {
        ++v6;
        if ((*(a3 + 39302) & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      *v8 = v28;
    }

LABEL_17:
    ++v5;
    v8 += 22;
  }

  while (v5 != 36);
  if (v6 >= 1)
  {
    EvLog_v("DD_Check_Age_GAL_Data: Deleting future EPH [%d]", v6);
    if (*(a3 + 39302) == 1)
    {
      EvLog_v("DD_Check_Age_GAL_Data: Deleting future EPH Skipped [%d]", v6);
    }
  }

  v15 = 0;
  v16 = 0;
  if (a1 <= 15724800)
  {
    v17 = 15724800;
  }

  else
  {
    v17 = a1;
  }

  v18 = v17 - 15724800;
  v19 = v27;
  do
  {
    if (*(*(a3 + 16624) + v15) == 1)
    {
      v20 = *v19;
      if (*v19 >= v18 || v20 < 1)
      {
        if (v20)
        {
          if (v20 > v9)
          {
            ++v16;
            EvLog_v("DD_Check_Age_GAL_Data:  Future ALM deleted SV %d age %d thresh %d", v15 + 1, (a1 - v20) / 604800, 0);
            if ((*(a3 + 39302) & 1) == 0)
            {
              v7 = 1;
              *(*(a3 + 16600) + v15) = 1;
            }
          }
        }

        else
        {
          *v19 = v28;
        }
      }

      else
      {
        v7 = 1;
        *(*(a3 + 16600) + v15) = 1;
        EvLog_v("DD_Check_Age_GAL_Data:  Old ALM deleted SV %d age %d thresh %d", v15 + 1, (a1 - v20) / 604800, (a1 - v18) / 604800);
      }
    }

    ++v15;
    v19 += 9;
  }

  while (v15 != 36);
  if (v16 >= 1)
  {
    EvLog_v("DD_Check_Age_GAL_Data: Deleting future ALM [%d]", v16);
    if (*(a3 + 39302) == 1)
    {
      EvLog_v("DD_Check_Age_GAL_Data: Deleting future ALM Skipped [%d]", v16);
    }
  }

  if (*(v27 + 1300))
  {
    v22 = (v27 + 1296);
    v23 = *(v27 + 1296);
    if (v23 >= a1 - 604800 || v23 < 1)
    {
      if (v23)
      {
        if (v23 > v9)
        {
          EvLog_v("DD_Check_Age_GAL_Data: Deleting future GGTO %d  %d", *v22, v9);
          if ((*(a3 + 39302) & 1) == 0)
          {
            goto LABEL_51;
          }

          EvLog("DD_Check_Age_GAL_Data: Deleting future GGTO Skipped [1]");
        }
      }

      else
      {
        *v22 = v28;
      }
    }

    else
    {
LABEL_51:
      *(v27 + 1302) = 0;
      *v22 = 0;
      *(a3 + 24384) = 0;
      *(a3 + 24400) = 0;
      *(a3 + 24392) = 0;
      *(a3 + 24406) = 0;
    }
  }

LABEL_53:
  v25 = *MEMORY[0x29EDCA608];
  return v7 & 1;
}

void DD_Save_New_GAL_INAV_Eph(int a1, uint64_t a2, void *a3)
{
  v4 = 0;
  v5 = 0;
  v37 = *MEMORY[0x29EDCA608];
  v6 = a2 + 17944;
  v7 = a2 + 13732;
  v34 = a2 + 13009;
  v33 = a2 + 13046;
  v32 = a2 + 17044;
  v8 = 2092;
  v9 = 23106;
  v10 = 23072;
  do
  {
    if (*(v6 + v5) != 1)
    {
      goto LABEL_35;
    }

    v11 = *(v7 + 80);
    v12 = v6 + v5;
    v13 = *(v6 + v5 - 36);
    v14 = v13 != 1 || (v11 & 0x200) == 0;
    if (!v14 || (v13 == 2 ? (v15 = (v11 & 0x800) == 0) : (v15 = 1), !v15))
    {
      v19 = (a3[2070] + v5);
LABEL_33:
      *v19 = 0;
LABEL_34:
      *(a3[2071] + v4) = 2;
      *(v7 + 88) = 0;
      *(v6 + v5) = 0;
      *(v12 - 36) &= 0xFCu;
      goto LABEL_35;
    }

    v16 = (*(v7 + 80) & 0xA00) != 0 && v13 == 3;
    v17 = !v16;
    v18 = a3[2070];
    v19 = (v18 + v5);
    if (v16 || (*v19 & 1) != 0 || (v20 = a3[2078], *(v20 + v5) != 1))
    {
      *v19 = v17;
      if ((v17 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v21 = *(a3 + v10);
      if (v21 + 3600 > a1 && (v13 == 1 && (*(a3 + v9) & 1) != 0 || v13 == 2 && (*(a3 + v9 - 1) & 1) != 0 || v13 == 3 && ((*(a3 + v9 - 1) | *(a3 + v9)) & 1) != 0))
      {
        goto LABEL_33;
      }

      if (v21 + 100 < a1)
      {
        *(a3[2073] + v5) = 0;
        *(v20 + v5) = 0;
        *(v34 + v5) = -1;
        *(v33 + 2 * v5) = 2048;
        *(v32 + 36 * gal_E1B_AlmSvId2SubframeId[v5] - 4) = 0;
        v18 = a3[2070];
      }

      *(v18 + v5) = 1;
    }

    *(a3[2071] + v4) = 1;
    *(a2 + 13736) = 4;
    GAL_I_EphBin2Int(v7, &a3[v8]);
    *(a3[2072] + v5) = 1;
    *(a3[2076] + v5) = 1;
    LODWORD(a3[v8]) = a1;
    *(a3[2081] + v5) = 0;
    *(v7 + 88) = 0;
    *(v6 + v5) = 0;
    *(v12 - 36) &= 0xFCu;
    if (a1 >= 1)
    {
      *(a3[2079] + v5) = 1;
      Core_Save_GAL_Eph((v5 + 1), 0, &a3[v8]);
    }

LABEL_35:
    ++v5;
    v8 += 11;
    v4 += 20;
    v9 += 36;
    v10 += 36;
    v7 += 92;
  }

  while (v5 != 36);
  v22 = 0;
  LODWORD(v23) = 0;
  v24 = a3[2070];
  v25 = p_NV;
  v26 = p_NV + 7612;
  v27 = *(v24 + 32);
  v28 = *(v24 + 16);
  *(p_NV + 7612) = *v24;
  *(v26 + 16) = v28;
  *(v25 + 7644) = v27;
  v29 = 55665;
  do
  {
    v30 = *(v25 + 7608 + v22) ^ BYTE1(v29);
    v29 = 52845 * (v29 + v30) + 22719;
    v23 = (v23 + v30);
    ++v22;
  }

  while (v22 != 40);
  *(v25 + 7600) = v23;
  v31 = *MEMORY[0x29EDCA608];
}

void DD_Proc_GAL_INAV_Data(unsigned __int16 *a1, char *a2, int a3, int *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v7 = a7;
  v11 = a2;
  v225[2] = *MEMORY[0x29EDCA608];
  if (a3 == 8)
  {
    v13 = 1;
    goto LABEL_5;
  }

  if (a3 == 10)
  {
    v13 = 2;
LABEL_5:
    *(a5 + a2 + 17908) |= v13;
  }

  v14 = *a1;
  v15 = v14 >> 10;
  if (v15 >= 0xB && v15 != 63)
  {
    *(a7[2082] + a2) = 1;
LABEL_124:
    v68 = *MEMORY[0x29EDCA608];
    return;
  }

  if (v15 > 0xA)
  {
    v176 = a1[2];
    v177 = a1[3];
    v175 = a1[1];
    EvLog_v("DD_Proc_GAL_INAV_Data:  SV %d WordType %d Dummy Message: 0x%x 0x%x 0x%x 0x%x ...");
    goto LABEL_124;
  }

  v16 = a5 + 17908;
  v17 = *(a5 + 17908 + a2);
  if (v17 != 2)
  {
    if (v17 != 1 || *a6 < 5)
    {
      goto LABEL_49;
    }

    v18 = (*(a6 + 24) + 0.5);
    v19 = (v18 % 30 - 2) >> 1;
    if (v19 <= 3)
    {
      if ((v18 % 30 - 2) >> 1 <= 1)
      {
        if (v19)
        {
          if (v19 == 1)
          {
LABEL_17:
            v20 = 4;
            goto LABEL_48;
          }

          goto LABEL_41;
        }

        goto LABEL_44;
      }

      if (v19 != 2)
      {
        if (v19 == 3)
        {
          goto LABEL_33;
        }

LABEL_41:
        if ((v18 % 30 - 28) >= 0xFFFFFFE6)
        {
          goto LABEL_49;
        }

LABEL_42:
        v20 = 0;
        goto LABEL_48;
      }

LABEL_47:
      v20 = 6;
      goto LABEL_48;
    }

    if ((v18 % 30 - 2) >> 1 <= 0xA)
    {
      if (v19 != 4)
      {
        if (v19 != 10)
        {
          goto LABEL_41;
        }

LABEL_21:
        v20 = 1;
        goto LABEL_48;
      }

LABEL_30:
      v22 = v18 % 720 + ((-30583 * (v18 % 720)) >> 16);
      v23 = (((v22 >> 4) + (v22 >> 15)) & 1) == 0;
      v20 = 10;
      v24 = 8;
      goto LABEL_34;
    }

    if (v19 != 11)
    {
      if (v19 != 12)
      {
        goto LABEL_41;
      }

LABEL_39:
      v20 = 5;
      goto LABEL_48;
    }

LABEL_40:
    v20 = 3;
    goto LABEL_48;
  }

  if (*a6 < 5)
  {
    goto LABEL_49;
  }

  v18 = (*(a6 + 24) + 0.5);
  v21 = v18 % 30;
  if ((v18 % 30) < 3)
  {
    goto LABEL_21;
  }

  if ((v18 % 30 - 3) < 2)
  {
    goto LABEL_40;
  }

  if (v21 - 5 < 2)
  {
    goto LABEL_39;
  }

  if (v21 - 7 >= 2)
  {
    if (v21 - 9 >= 2)
    {
      if (v21 - 21 < 2)
      {
LABEL_44:
        v20 = 2;
        goto LABEL_48;
      }

      if (v21 - 23 < 2)
      {
        goto LABEL_17;
      }

      if (v21 - 25 >= 2)
      {
        if (v21 <= 0x1A)
        {
          goto LABEL_49;
        }

        goto LABEL_42;
      }

      goto LABEL_47;
    }

    goto LABEL_30;
  }

LABEL_33:
  v25 = v18 % 720 + ((-30583 * (v18 % 720)) >> 16);
  v23 = (((v25 >> 4) + (v25 >> 15)) & 1) == 0;
  v20 = 9;
  v24 = 7;
LABEL_34:
  if (v23)
  {
    v20 = v24;
  }

LABEL_48:
  if (v20 != v14 >> 10)
  {
    EvCrt_v("DD_Proc_GAL_INAV_Data: Decoded GAL SV [%d] sigID [%d] INAV WordType num error act:%d Predi:%d", a2 + 1, a3, v14 >> 10, v20);
    goto LABEL_124;
  }

LABEL_49:
  v26 = a2;
  if (v14 >> 10 > 4)
  {
    v30 = v15 - 7;
    if ((v15 - 7) < 4)
    {
      v31 = *a4;
      v225[0] = 0;
      v225[1] = 0;
      v224[0] = 0;
      v224[1] = 0;
      v222 = 0u;
      v223 = 0u;
      if (v14 >> 10 > 8)
      {
        if (v15 != 9)
        {
          v198 = a2;
          DD_Proc_GAL_INAV_GGTO_Word(a2, a1, v31, a7);
          v16 = a5 + 17908;
          v26 = v198;
          v30 = v15 - 7;
          goto LABEL_105;
        }

        v32 = (a1[4] >> 3) & 0x3F;
      }

      else if (v15 == 7)
      {
        v32 = (a1[1] >> 4) & 0x3F;
      }

      else
      {
        v32 = (a1[3] >> 15) & 0xFFFFFFC1 | (2 * (a1[2] & 0x1F));
      }

      if (v32 - 1 <= 0x23)
      {
        v62 = gal_E1B_AlmSvId2SubframeId[v32 - 1];
        goto LABEL_122;
      }

LABEL_105:
      if ((v31 < 1 || *(a6 + 5) != 1 || (v63 = v31, *a6 <= 4)) && (v63 = *(a5 + 17980), (v63 & 0x80000000) != 0))
      {
        LOBYTE(v65) = 0;
        v66 = -11;
      }

      else
      {
        v64 = 2185 * (v63 % 0x2D0);
        v65 = HIWORD(v64) + 1;
        if ((v64 & 0x10000) != 0)
        {
          v66 = -11;
        }

        else
        {
          v66 = -9;
        }
      }

      if ((v66 + (v14 >> 10)) >= 0xFEu)
      {
        v62 = v65;
      }

      else
      {
        v62 = 0;
      }

      if (a3 == 10 && v62)
      {
        if (v62 > 0xCu)
        {
          v67 = -12;
        }

        else
        {
          v67 = 12;
        }

        v62 += v67;
      }

LABEL_122:
      if ((v62 - 25) <= 0xE7u)
      {
        EvLog_v("DD_Proc_GAL_INAV_Alm: For SV %d WordType %d Alm SVID %d sfID %d not found. Word Type is discarded.");
        goto LABEL_124;
      }

      v195 = v31;
      if (v62 == 24)
      {
        v69 = v7[2082];
        *(v69 + 32) = 0;
        *v69 = 0u;
        *(v69 + 16) = 0u;
      }

      v70 = a5 + 17044;
      v71 = (v62 - 1);
      v72 = (a5 + 17044 + 36 * v71);
      v73 = *a1;
      if (v15 >= 9)
      {
        v74 = -9;
      }

      else
      {
        v74 = -7;
      }

      v75 = (v74 + (v14 >> 10));
      *&v72[16 * v75] = *a1;
      v72[v75 + 32] = 1;
      v76 = v72 + 34;
      v72[v75 + 34] = (v73 >> 6) & 0xF;
      if (*(a6 + 5) != 1)
      {
        goto LABEL_124;
      }

      v77 = *(a6 + 16);
      if (v77 < 1025)
      {
        goto LABEL_124;
      }

      v78 = v72[32];
      if (v30 > 1)
      {
        if (!v72[32])
        {
          goto LABEL_124;
        }

        if (v72[33] == 1 && v72[34] == v72[35])
        {
          v225[0] = a5 + 17044 + 36 * (v62 - 1);
          v224[0] = v72 + 16;
          v72[33] = 0;
          v78 = 1;
        }

        else
        {
          v78 = 0;
        }

        if (v15 == 9)
        {
          v89 = v62 - 2;
          if (!v71)
          {
            v89 = 23;
          }

          v90 = (v70 + 36 * v89);
          if (v90[33] == 1)
          {
            v91 = *v76;
            if (v91 == v90[35])
            {
              v225[v78] = v90 + 16;
              v224[v78] = v72;
              v88 = v78 + 1;
              if (v90[34] == v91)
              {
                v90[33] = 0;
              }

              goto LABEL_182;
            }
          }
        }
      }

      else
      {
        if (v72[32])
        {
          if (v72[33] == 1 && v72[34] == v72[35])
          {
            v225[0] = a5 + 17044 + 36 * (v62 - 1);
            v224[0] = v72 + 16;
            v72[32] = 0;
            v78 = 1;
          }

          else
          {
            v78 = 0;
          }
        }

        if (v15 == 8 && v72[33] == 1)
        {
          v86 = v62 <= 0x17u ? v62 : v62 - 24;
          v87 = v70 + 36 * v86;
          if (*(v87 + 32) == 1 && *v76 == *(v87 + 34))
          {
            v225[v78] = v72 + 16;
            v224[v78] = v87;
            v88 = v78 + 1;
LABEL_182:
            v194 = a5 + 13046;
            v191 = a5 + 13009;
            v184 = v7 + 2884;
            v92 = v88;
            v181 = v77 - 1024;
            v188 = 16 * (v77 - 1024);
            v186 = v77 & 3;
            v93 = 1861606989 * v31;
            v182 = v93 >> 50;
            v183 = v93 >> 63;
            while (1)
            {
              v94 = v225[v92 - 1];
              v95 = *v94 >> 10;
              if (v95 == 9)
              {
                if (((v94[4] >> 3) & 0x3F) == 0)
                {
                  goto LABEL_204;
                }
              }

              else if (v95 == 8)
              {
                if (!((v94[3] >> 15) & 0xFFFFFFC1 | (2 * (v94[2] & 0x1F))))
                {
                  goto LABEL_204;
                }
              }

              else if (v95 != 7 || ((v94[1] >> 4) & 0x3F) == 0)
              {
LABEL_204:
                if (v95 == 8 && (v62 & 1) == 0)
                {
                  v112 = -2;
                }

                else
                {
                  v112 = -1;
                }

                v113 = v112 + gal_E1B_SubframeId2AlmSvId[v71];
                if (v113 <= 0x23)
                {
                  *(v7 + v113 + 16664) = 1;
                }

                goto LABEL_212;
              }

              v96 = v224[v92 - 1];
              if (v96)
              {
                v97 = v7[2070];
                v98 = *(v16 + v26);
                v99 = v16;
                v100 = v26;
                GAL_INAV_ALM = Extract_GAL_INAV_ALM(v94, v96, &v222);
                v26 = v100;
                v16 = v99;
                if (GAL_INAV_ALM)
                {
                  DWORD1(v222) = 4;
                  v102 = (WORD5(v222) >> 4) & 0x3F;
                  if (v102)
                  {
                    if (v102 <= 0x24)
                    {
                      v103 = WORD4(v222);
                      v104 = (WORD4(v222) >> 6) & 0xF;
                      v105 = (WORD5(v222) >> 10) & 0xFFFFFC3F | ((BYTE8(v222) & 0xF) << 6);
                      v106 = v102 - 1;
                      v107 = (v102 - 1);
                      v108 = *(v194 + 2 * v107);
                      if (v104 != *(v191 + v107))
                      {
                        if (v105 <= v108 && (v108 - v105) <= 500)
                        {
                          goto LABEL_212;
                        }

                        *(v191 + v107) = v104;
                        *(v194 + 2 * v107) = v105;
                        v109 = BYTE10(v223);
                        v110 = BYTE10(v223) & 0x20;
LABEL_217:
                        v114 = (v103 >> 4) & 3;
                        HIDWORD(v223) = v188;
                        if (v186 == v114)
                        {
                          v115 = 0;
                        }

                        else
                        {
                          v115 = v114;
                        }

                        v116 = *(v99 + v106);
                        if (v116 == 1 && v110 || v116 == 2 && v109 < 0)
                        {
                          v117 = (v7[2070] + v106);
                          goto LABEL_225;
                        }

                        v137 = (v109 & 0xA0) != 0 && v116 == 3;
                        v138 = !v137;
                        v117 = (v7[2070] + v106);
                        if (v137 || (*v117 & 1) != 0)
                        {
                          *v117 = v138;
                          if (v138)
                          {
                            goto LABEL_256;
                          }
                        }

                        else
                        {
                          v139 = v7[2076];
                          if (*(v139 + v106) != 1)
                          {
                            goto LABEL_254;
                          }

                          v140 = &v7[11 * v106 + 2092];
                          v141 = *v140;
                          if (*v140 + 3600 <= v195 || ((v142 = *(v140 + 86), v116 != 1) || (*(v140 + 86) & 1) == 0) && ((v143 = *(v140 + 85), v116 != 2) || (v143 & 1) == 0) && (v116 != 3 || ((v143 | v142) & 1) == 0))
                          {
                            if (v141 + 100 < v195)
                            {
                              *(v7[2072] + v106) = 0;
                              *(v139 + v106) = 0;
                              *(a5 + 13118 + 8 * v106) = 0x400040004000400;
                              *(a5 + 13406 + 2 * v106) = 1024;
                              *(a5 + 13478 + 2 * v106) = 1024;
                              *(v99 + v106) &= 0xFCu;
                              v144 = (a5 + 13732 + 92 * v106);
                              *(v144 + 76) = 0u;
                              v144[3] = 0u;
                              v144[4] = 0u;
                              v144[1] = 0u;
                              v144[2] = 0u;
                              *v144 = 0u;
                              v117 = (v7[2070] + v106);
                            }

LABEL_254:
                            *v117 = 1;
LABEL_256:
                            v179 = v115;
                            *(v7[2071] + 20 * v106 + 4) = 1;
                            v200 = 0u;
                            memset(v201, 0, 19);
                            v145 = v102 - 1;
                            GAL_AlmBin2Int(&v222, &v200);
                            v219 = 0u;
                            memset(v220, 0, 27);
                            v217 = 0u;
                            v218 = 0u;
                            v216 = 0u;
                            v180 = v184 + 36 * v145;
                            GAL_AlmInt2Real(v180, &v216);
                            v206 = *(v220 + 8);
                            *&v207 = *(&v217 + 1);
                            *(&v207 + 1) = *&v218 + 0.977384381;
                            *&v208 = v219;
                            *(&v208 + 1) = *&v220[0];
                            *&v209 = *&v217 + 5440.5882;
                            *(&v209 + 1) = *(&v218 + 1);
                            LODWORD(v202) = 0;
                            HIDWORD(v202) = DWORD1(v216);
                            LODWORD(v203) = 3;
                            BYTE4(v203) = BYTE8(v216);
                            BYTE5(v203) = BYTE10(v220[1]) | (8 * BYTE9(v220[1]));
                            BYTE6(v203) = BYTE9(v216);
                            LOWORD(v204) = WORD5(v216) + 1024;
                            v205 = HIDWORD(v216);
                            *&v210 = *(&v219 + 1);
                            v146 = Kep_Check_Almanac(v182 + v183, &v202);
                            if (v146)
                            {
                              *(v7[2082] + v145) = 1;
                            }

                            v178 = v102 - 1;
                            if (ST_Check_Alm_Kep_Err("DD_Proc_GAL_INAV_Alm_Data:", v146, &v202))
                            {
                              GAL_AlmBin2Int(&v222, v180);
                              *(v180 + 10) = v179 + v181;
                              *v180 = v195;
                              *(v180 + 4) = 4;
                              *(v7[2073] + v178) = 1;
                              *(v7[2078] + v178) = 1;
                            }

                            v16 = v99;
                            v26 = v100;
                            if (v195 >= 1)
                            {
                              v147 = 0;
                              LODWORD(v148) = 0;
                              v149 = p_NV + 48 * v102;
                              v150 = *v180;
                              v151 = *(v180 + 16);
                              *(v149 + 7664) = *(v180 + 32);
                              *(v149 + 7648) = v151;
                              *(v149 + 7632) = v150;
                              v152 = 55665;
                              do
                              {
                                v153 = *(v149 + 7632 + v147) ^ BYTE1(v152);
                                v152 = 52845 * (v152 + v153) + 22719;
                                v148 = (v148 + v153);
                                ++v147;
                              }

                              while (v147 != 40);
                              *(v149 + 7624) = v148;
                            }

LABEL_227:
                            v118 = 0;
                            LODWORD(v119) = 0;
                            v120 = v7[2070];
                            v121 = p_NV;
                            v122 = p_NV + 7612;
                            v123 = *(v120 + 32);
                            v124 = *(v120 + 16);
                            *(p_NV + 7612) = *v120;
                            *(v122 + 16) = v124;
                            *(v121 + 7644) = v123;
                            v125 = 55665;
                            do
                            {
                              v126 = *(v121 + 7608 + v118) ^ BYTE1(v125);
                              v125 = 52845 * (v125 + v126) + 22719;
                              v119 = (v119 + v126);
                              ++v118;
                            }

                            while (v118 != 40);
                            *(v121 + 7600) = v119;
                            goto LABEL_212;
                          }

LABEL_225:
                          *v117 = 0;
                        }

                        *(v7[2071] + 20 * v106 + 4) = 2;
                        goto LABEL_227;
                      }

                      if ((*(v97 + v107) & 1) == 0 && v105 == v108)
                      {
                        v109 = BYTE10(v223);
                        v110 = BYTE10(v223) & 0x20;
                        if ((v98 != 1 || (BYTE10(v223) & 0x20) != 0) && (v98 != 2 || (BYTE10(v223) & 0x80) != 0) && (v98 != 3 || (BYTE10(v223) & 0xA0) != 0))
                        {
LABEL_231:
                          v127 = v184 + 36 * (v102 - 1);
                          LODWORD(v128) = *v127;
                          *v127 = v195;
                          if (v195 >= 1 && !v128)
                          {
                            v129 = 0;
                            v130 = p_NV;
                            v131 = p_NV + 48 * (v102 - 1);
                            v132 = *v127;
                            v133 = *(v127 + 1);
                            *(v131 + 7712) = *(v127 + 8);
                            *(v131 + 7696) = v133;
                            *(v131 + 7680) = v132;
                            v134 = v130 + 48 * v102 + 7632;
                            v135 = 55665;
                            do
                            {
                              v136 = *(v134 + v129) ^ BYTE1(v135);
                              v135 = 52845 * (v135 + v136) + 22719;
                              v128 = (v128 + v136);
                              ++v129;
                            }

                            while (v129 != 40);
                            *(v131 + 7672) = v128;
                          }

                          goto LABEL_212;
                        }

                        goto LABEL_217;
                      }

                      if (v105 == v108)
                      {
                        goto LABEL_231;
                      }
                    }
                  }
                }
              }

LABEL_212:
              if (!--v92)
              {
                goto LABEL_124;
              }
            }
          }
        }
      }

      if (!v78)
      {
        goto LABEL_124;
      }

      v88 = 1;
      goto LABEL_182;
    }

    if (v15 == 6)
    {
      *(a5 + 17980) = (a1[7] >> 3) & 0xFFF01FFF | ((a1[6] & 0x7F) << 13);
      goto LABEL_124;
    }

    v57 = a4;
    v58 = a1[4];
    v59 = (v58 >> 9) & 1;
    v60 = (v58 >> 11) & 1;
    if (v17 == 1 && (v59 & 1) != 0 || v17 == 2 && (v60 & 1) != 0 || v17 == 3 && v60 | v59)
    {
      *(a7[2070] + a2) = 0;
      *(a7[2071] + 20 * a2) = 2;
      *(v16 + a2) &= 0xFCu;
      EvLog_v("DD_Proc_GAL_INAV_Data:  GAL Health H->U: SV %d E1B_HS %d E5b_HS %d ", a2 + 1, v59, v60);
      v34 = v7[2082];
      v61 = *MEMORY[0x29EDCA608];
      a4 = v57;
      v36 = (a5 + 17980);
      v37 = v11;
      v38 = a1;
      v33 = 0;
      goto LABEL_98;
    }

    v154 = a7[2070];
    if ((*(v154 + a2) & 1) == 0 && *(a7[2078] + a2) == 1)
    {
      v155 = *(a7 + 36 * a2 + 23105);
      v156 = *(a7 + 36 * a2 + 23106);
      if (v17 != 1 || (v156 & 1) != 0)
      {
        if (v17 != 2 || (v155 & 1) != 0)
        {
          if (v17 != 3 || (v156 & 1) != 0 || (v155 & 1) != 0)
          {
            if (g_Enable_Event_Log < 4u)
            {
              goto LABEL_281;
            }

            v172 = (a2 + 1);
            v157 = "DD_Proc_GAL_INAV_Data:  GAL Health U->U: SV %d Alm still unhealthy";
          }

          else
          {
            *(v154 + a2) = 1;
            *(a7[2071] + 20 * a2) = 1;
            v173 = v156;
            v174 = v155;
            v172 = (a2 + 1);
            v157 = "DD_Proc_GAL_INAV_Data:  GAL E1B-E5b Health U->H: SV %d Alm.E1B_HS %d Alm.E5b_HS %d";
          }
        }

        else
        {
          *(v154 + a2) = 1;
          *(a7[2071] + 20 * a2) = 1;
          v172 = (a2 + 1);
          v173 = v155;
          v157 = "DD_Proc_GAL_INAV_Data:  GAL E5b Health U->H : SV %d Alm.E5b_HS %d";
        }
      }

      else
      {
        *(v154 + a2) = 1;
        *(a7[2071] + 20 * a2) = 1;
        v172 = (a2 + 1);
        v173 = v156;
        v157 = "DD_Proc_GAL_INAV_Data:  GAL E1-B Health U->H : SV %d Alm.E1B_HS %d";
      }

      EvLog_v(v157, v172, v173, v174);
      v26 = v11;
      v16 = a5 + 17908;
    }

LABEL_281:
    a4 = v57;
    v46 = *v57;
    v48 = v7[2082];
    *(a5 + 13550 + 5 * v26 + 4) = 1;
    *(a5 + 92 * v26 + 13804) = *a1;
    v47 = v7 + 2082;
    v158 = a5 + 2 * v26;
    v159 = *(v158 + 13406);
    if (v159 == 1024)
    {
      v45 = 0;
      v52 = 0;
      *(a5 + 13550 + 5 * v26) = 0;
      *(v158 + 13478) = 1024;
    }

    else
    {
      if (*(a5 + 13478 + 2 * v26) == v159)
      {
        v45 = 0;
        v79 = 1;
        goto LABEL_158;
      }

      v45 = 0;
      v52 = 0;
      *(a5 + 13478 + 2 * v26) = v159;
    }

    v79 = 1;
    goto LABEL_141;
  }

  v27 = v15 - 1;
  if (v14 >> 10 > 1)
  {
    v28 = a5 + 92 * a2;
    if (v15 == 2)
    {
      v29 = 13756;
    }

    else if (v15 == 3)
    {
      v29 = 13772;
    }

    else
    {
      v29 = 13788;
    }

LABEL_68:
    v39 = v28 + v29;
    v40 = (v14 - 5120);
    v41 = v14 & 0x3FF;
    if (v40 >= 0xF000)
    {
      v42 = v41;
    }

    else
    {
      v42 = 1024;
    }

    if (v40 < 0xF000)
    {
      goto LABEL_124;
    }

    v44 = a5 + 92 * a2;
    if (((*(v44 + 13820) >> v27) & 1) == 0 && *(a7[2070] + a2) == 1 && *(a7[2076] + a2) == 1 && *(a5 + 8 * a2 + 2 * v27 + 13118) == v41)
    {
      v192 = a4;
      v189 = v42;
      DD_Proc_GAL_INAV_Eph_Bit_Validation(v15, a1, v39, (v44 + 13820), v42);
      LOWORD(v42) = v189;
      a4 = v192;
      v16 = a5 + 17908;
      v26 = v11;
      v45 = *(v44 + 13820) == 15;
    }

    else
    {
      v45 = 0;
    }

    v46 = *a4;
    v7 = a7;
    v47 = a7 + 2082;
    v48 = a7[2082];
    v49 = (v15 - 1);
    v50 = a5 + 8 * v26 + 2 * v27;
    v51 = *(v50 + 13118);
    v52 = v51 == v41;
    if (v51 != v41)
    {
      if (*(a5 + 13406 + 2 * v26) != v41)
      {
        v56 = a5 + 13550 + 5 * v26;
        *(v56 + 4) = 0;
        *v56 = 0;
        *(a5 + 13406 + 2 * v26) = v41;
      }

      *(a5 + 5 * v26 + v49 + 13550) = 1;
LABEL_140:
      v79 = 0;
      *(v50 + 13118) = v42;
      *v39 = *a1;
LABEL_141:
      v80 = (a5 + 13550 + 5 * v26);
      if (*v80 != 1 || v80[1] != 1 || v80[2] != 1)
      {
        goto LABEL_306;
      }

      if (v80[3] != 1)
      {
        goto LABEL_292;
      }

      if (v80[4] != 1)
      {
        goto LABEL_292;
      }

      v81 = *(a5 + 8 * v26 + 13118);
      if (v81 != *(a5 + 8 * v26 + 13120) || v81 != *(a5 + 8 * v26 + 13122) || v81 != *(a5 + 8 * v26 + 13124) || v81 != *(a5 + 2 * v26 + 13478))
      {
        goto LABEL_292;
      }

      v185 = v48;
      v187 = v7;
      v190 = v45;
      v196 = v16;
      v199 = v47;
      v193 = a4;
      memset(v201, 0, 71);
      v200 = 0u;
      v82 = v26;
      v83 = v46;
      GAL_I_EphBin2Int(a5 + 92 * v26 + 13732, &v200);
      v202 = 0;
      v203 = 0;
      v204 = 0;
      v206 = 0u;
      v207 = 0u;
      v208 = 0u;
      v209 = 0u;
      v210 = 0u;
      v211 = 0u;
      memset(v212, 0, sizeof(v212));
      v213 = 0u;
      memset(v214, 0, sizeof(v214));
      v215 = 0;
      GAL_EphInt2Real(&v200, &v202);
      v216 = 0uLL;
      DWORD2(v217) = 0;
      *&v217 = 0;
      v218 = 0u;
      v219 = 0u;
      memset(v220, 0, sizeof(v220));
      v221 = 0;
      GAL_EphReal2Kep(&v202, &v216);
      v84 = Kep_Check_Ephemeris(v83 / 604800, v83 % 604800, &v216);
      v85 = v84;
      if (!ST_Check_Eph_Kep_Err("DD_Proc_GAL_INAV_Eph:", v84, &v216))
      {
        if ((v85 & 0x3F0) != 0)
        {
          *v80 = 0;
        }

        if ((v85 & 0xC00) != 0)
        {
          v80[2] = 0;
        }

        if ((v85 & 0xC) != 0)
        {
          v80[3] = 0;
LABEL_288:
          *(v185 + v82) = 1;
          goto LABEL_289;
        }

        if ((v85 & 0xFF0) != 0)
        {
          goto LABEL_288;
        }
      }

LABEL_289:
      v7 = v187;
      a4 = v193;
      v16 = v196;
      v26 = v82;
      v47 = v199;
      v45 = v190;
      if ((*v80 & 1) == 0 || (v80[1] & 1) == 0 || (v80[2] & 1) == 0)
      {
        goto LABEL_306;
      }

LABEL_292:
      if (v80[3] != 1)
      {
        goto LABEL_306;
      }

      if (v80[4] != 1)
      {
        goto LABEL_306;
      }

      v160 = *(a5 + 8 * v26 + 13118);
      if (v160 != *(a5 + 8 * v26 + 13120) || v160 != *(a5 + 8 * v26 + 13122) || v160 != *(a5 + 8 * v26 + 13124) || v160 != *(a5 + 2 * v26 + 13478))
      {
        goto LABEL_306;
      }

      v161 = v47;
      v162 = a4;
      v197 = v16;
      if (v52)
      {
        v163 = v26;
        v164 = (a5 + v26 + 17944);
        if (*(a5 + 92 * v26 + 13820) == 15)
        {
          v165 = *v164;
          *v80 = 0;
          v80[4] = 0;
          if (!v165)
          {
            v166 = &v7[11 * v26];
            v167 = *a4;
            *(v166 + 4184) = *a4;
            if (v167 >= 1)
            {
              *(v7[2079] + v26) = 1;
              Core_Save_GAL_Eph((v11 + 1), 0, (v166 + 2092));
            }

            *(v197 + v163) &= 0xFCu;
            v45 = 1;
            a4 = v162;
            v47 = v161;
LABEL_308:
            if (v79)
            {
              DD_Proc_GAL_INAV_GST(v11, a1, v45, a4, (a5 + 17980), *v47, a6);
            }

            goto LABEL_124;
          }

LABEL_306:
          if (*(a5 + v26 + 17944) == 1)
          {
            v168 = v45;
            v169 = v7;
            v170 = a4;
            v171 = v47;
            DD_Save_New_GAL_INAV_Eph(*a4, a5, v169);
            v45 = v168;
            v47 = v171;
            a4 = v170;
          }

          goto LABEL_308;
        }
      }

      else
      {
        v163 = v26;
        v164 = (a5 + v26 + 17944);
      }

      *v164 = 1;
      *v80 = 0;
      v80[4] = 0;
      v26 = v163;
      goto LABEL_306;
    }

    v53 = 0;
    v54 = 1;
    while (v15 == 3 || v54 != 7)
    {
      if (a1[v54] != *(v39 + v54 * 2))
      {
        ++v53;
      }

      if (++v54 == 8)
      {
        goto LABEL_139;
      }
    }

    if ((*(v39 + 14) ^ a1[7]) > 3)
    {
      ++v53;
    }

LABEL_139:
    *(a5 + 5 * v26 + v49 + 13550) = 1;
    if (v53)
    {
      goto LABEL_140;
    }

    v79 = 0;
LABEL_158:
    v52 = 1;
    goto LABEL_141;
  }

  if (v15)
  {
    v28 = a5 + 92 * a2;
    v29 = 13740;
    goto LABEL_68;
  }

  v33 = *(a5 + 92 * a2 + 13820) == 15;
  v34 = a7[2082];
  v35 = *MEMORY[0x29EDCA608];
  v36 = (a5 + 17980);
  v37 = a2;
  v38 = a1;
LABEL_98:

  DD_Proc_GAL_INAV_GST(v37, v38, v33, a4, v36, v34, a6);
}

char *DD_Proc_GAL_INAV_GST(unsigned int a1, unsigned __int16 *a2, int a3, _DWORD *a4, unsigned int *a5, uint64_t a6, uint64_t a7)
{
  v30 = *MEMORY[0x29EDCA608];
  v29 = 0;
  v28 = 0;
  result = Decode_GAL_INAV_GST(a2, &v28, &v29);
  if (result)
  {
    v14 = v28;
    if (v28 > 0x93A7F)
    {
      result = EvCrt_v("DD_Proc_GAL_INAV_GST:  Rejected:  TOW = %d  >=604800, Out of range!");
LABEL_6:
      *(a6 + a1) = 1;
      goto LABEL_7;
    }

    v15 = v29;
    if (v29 >= 4096)
    {
      result = EvCrt_v("DD_Proc_GAL_INAV_GST:  Rejected:  Week = %d  >=4096, Out of range!");
      goto LABEL_6;
    }

    *a5 = v28;
    v17 = v15 + 1024;
    if (*(a7 + 5) != 1)
    {
      v18 = v17;
      v21 = a1 + 1;
      EvLog_v("WeekNum initialized to %d from GAL SV%d", v17, v21);
      v22 = v21;
LABEL_18:
      result = EvLog_v("WeekNum Submit %d %d GAL SV %d", 1, v18, v22);
      *(a7 + 16) = v17;
      *(a7 + 5) = 1;
      *(a7 + 48) = -1;
      *(a7 + 52) = -1;
      *(a7 + 54) = 0;
      *(a7 + 58) = 0;
      if (*a7 < 3)
      {
        *a4 = 0;
      }

      else
      {
        *a4 = v14 + 604800 * v17;
      }

      goto LABEL_7;
    }

    if (*(a7 + 16) != v17 && *a7 >= 3 && v14 - 32 < 0x93A41)
    {
      v18 = v17;
      if (!a3)
      {
LABEL_32:
        result = EvLog_v("WeekNum Submit %d %d GAL SV %d", 0, v17, a1 + 1);
        goto LABEL_7;
      }

      v19 = 0;
      v20 = (a7 + 54);
      while (*(v20 - 3) != v17)
      {
        ++v19;
        ++v20;
        if (v19 == 3)
        {
          goto LABEL_22;
        }
      }

      if (v19 >= 3)
      {
LABEL_22:
        v23 = 0;
        v24 = (a7 + 48);
        while (*v24 != -1)
        {
          --v23;
          ++v24;
          if (v23 == -3)
          {
            v25 = 3;
            goto LABEL_31;
          }
        }

        v26 = -v23;
        if (v26 < 3)
        {
          *v24 = v17;
          v24[3] = 1;
          goto LABEL_32;
        }

        v25 = v26;
LABEL_31:
        *(a7 + 52) = -1;
        *(a7 + 48) = -1;
        *(a7 + 54) = 0;
        *(a7 + 58) = 0;
        EvLog_v("DD_GAL_Submit_WeekNum: WeekNum Candidate overflow, %d >= %d", v25, 3);
        goto LABEL_32;
      }

      v27 = ++*v20;
      if (v27 < 3)
      {
        goto LABEL_32;
      }

      EvLog_v("DD_GAL_Submit_WeekNum: WeekNum Candidate %d accepted based on %d obs", v17, v27);
      v22 = a1 + 1;
      goto LABEL_18;
    }
  }

LABEL_7:
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Proc_GAL_INAV_Eph_Bit_Validation(uint64_t result, uint64_t a2, const unsigned __int16 *a3, const unsigned __int16 *a4, unsigned int *a5)
{
  v5 = 0;
  v8 = *MEMORY[0x29EDCA608];
  LOBYTE(v6) = 1;
  while (result == 3 || v5 != 7)
  {
    v6 = (*(a2 + v5 * 2) == a3[v5]) & v6;
    if (++v5 == 8)
    {
      if (!v6)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  if ((((a3[7] ^ *(a2 + 14)) < 4) & v6) == 0)
  {
    goto LABEL_9;
  }

LABEL_8:
  *a4 |= 1 << (result - 1);
LABEL_9:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

char *DD_Proc_GAL_INAV_GGTO_Word(char *result, unsigned __int16 *a2, int a3, uint64_t a4)
{
  v5 = result;
  v22 = *MEMORY[0x29EDCA608];
  v6 = a2[6];
  HIDWORD(v8) = a2[5];
  LODWORD(v8) = v6 << 16;
  v7 = v8 >> 26;
  v9 = a2[7];
  v10 = (v9 << 6) & 0x300000 | (v6 << 22);
  v11 = (v9 >> 6);
  v12 = v9 & 0x3F;
  if (v7 == 0xFFFF && v10 >> 20 == 4095 && v11 == 255)
  {
    if (v12 == 63)
    {
      result = EvCrt_v("DD_Proc_GAL_INAV_GGTO_Word: SVID %d gives Invalid GGTO (all ones), Skipped!", result + 1);
      goto LABEL_23;
    }

    goto LABEL_3;
  }

  if (v11 >= 0xA8)
  {
LABEL_3:
    result = EvCrt_v("DD_Proc_GAL_INAV_GGTO_Word: FAILED: ToG = %d  > 167 , GGTO Skipped!", (v9 >> 6));
    *(*(a4 + 16656) + v5) = 1;
    goto LABEL_23;
  }

  if (*(a4 + 24372) != 4)
  {
    goto LABEL_19;
  }

  v13 = v12 - *(a4 + 24381);
  if (!v13)
  {
    if (*(a4 + 24380) >= v11 && *(a4 + 24376) == v7 && *(a4 + 24378) == (v10 >> 20))
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  if (v13 < -32)
  {
    v13 += 64;
  }

  if (v13 > 32)
  {
    v13 -= 64;
  }

  if ((v13 & 0x80000000) == 0)
  {
LABEL_19:
    v14 = v10 >> 20;
    *(a4 + 24368) = a3;
    *(a4 + 24376) = v7;
    *(a4 + 24378) = v14;
    *(a4 + 24380) = v11;
    *(a4 + 24381) = v12;
    *(a4 + 24372) = 4;
    *(a4 + 24384) = a3;
    *(a4 + 24388) = 4;
    *(a4 + 24392) = v7 * 2.91038305e-11;
    *(a4 + 24400) = v14 * 4.4408921e-16;
    *(a4 + 24408) = 3600 * v11;
    *(a4 + 24412) = v9 & 0x3F;
    if (a3 >= 1)
    {
      v15 = 0;
      LODWORD(v16) = 0;
      v17 = p_NV;
      v18 = p_NV + 7656;
      *(p_NV + 7656) = *(a4 + 24368);
      v19 = 55665;
      do
      {
        v20 = *(v18 + v15) ^ BYTE1(v19);
        v19 = 52845 * (v19 + v20) + 22719;
        v16 = (v16 + v20);
        ++v15;
      }

      while (v15 != 16);
      *(v17 + 7648) = v16;
    }
  }

LABEL_23:
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

void *NK_Update_Intermediate_Residual(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x29EDCA608];
  if ((result - 1) >= 3)
  {
    v17 = *MEMORY[0x29EDCA608];

    return gn_report_assertion_failure("NK_Update_Intermediate_Residual");
  }

  else
  {
    v6 = result;
    v7 = 0;
    v8 = a4 + (5576 * (result - 1));
    v9 = v8 + 2960;
    v10 = v8 + 3056;
    v19 = a4 + 20032;
    v20 = v8 + 3008;
    v11 = v8 + 4832;
    v12 = a3 + 1400;
    v13 = v8 + 5216;
    do
    {
      if (*(v9 + v7) == 1)
      {
        v14 = *(v10 + 4 * v7);
        if ((v14 - 1) >= 0x1D)
        {
          if (v14)
          {
            result = EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
          }

          else
          {
            result = NK_Obs_Equ_SV(v6, *(v20 + v7), *(a2 + 4 * v7), v19 + 56 * v7, v21, *(a4 + 656));
            v15 = 0;
            v16 = 0.0;
            do
            {
              v16 = v16 + *&v21[v15] * *(v12 + v15);
              v15 += 8;
            }

            while (v15 != 88);
            *(v13 + 8 * v7) = *(v11 + 8 * v7) - v16;
          }
        }
      }

      ++v7;
    }

    while (v7 != 48);
    v18 = *MEMORY[0x29EDCA608];
  }

  return result;
}

void Kep_Calc_SV_Ref_State_BDS_GEO(int a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v160 = *MEMORY[0x29EDCA608];
  if (*(a4 + 8) == 4 && *(a4 + 12) <= 5u)
  {
    v8 = a2;
    if (*(a4 + 18))
    {
      v10 = *(a4 + 24);
      v11 = a3 + 604800 * (a2 - *(a4 + 18)) - v10;
    }

    else
    {
      v10 = *(a4 + 24);
      v12 = a3 - v10;
      v13 = a3 - v10 - 604800;
      if (a3 - v10 <= 302399)
      {
        v13 = a3 - v10;
      }

      if (v12 < -302400)
      {
        v11 = v12 + 604800;
      }

      else
      {
        v11 = v13;
      }
    }

    v14 = v11;
    v15 = *(a4 + 168);
    v131 = v15 * v15;
    v142 = *(a4 + 96) + 19964980.4 / (v15 * (v15 * v15));
    v16 = *(a4 + 160) + v142 * v11;
    v17 = sin(v16);
    v18 = 0;
    v19 = *(a4 + 200);
    v20 = v16 + v19 * v17;
    do
    {
      v21 = v20;
      v20 = v16 + v19 * sin(v20);
    }

    while (vabdd_f64(v20, v21) > 1.0e-11 && v18++ < 0x13);
    v138 = 1.0 - v19 * v19;
    v23 = cos(v16);
    v24 = tan(v20 * 0.5);
    v25 = atan(sqrt((v19 + 1.0) / (1.0 - v19)) * v24);
    v26 = v25 + v25;
    if (v26 < 0.0)
    {
      v26 = v26 + 6.28318531;
    }

    v27 = __sincos_stret(v26);
    v28 = __sincos_stret(*(a4 + 192));
    v29 = v27.__cosval * v28.__sinval + v27.__sinval * v28.__cosval;
    v30 = v27.__cosval * v28.__cosval - v27.__sinval * v28.__sinval;
    v31 = v30 * (v29 + v29);
    if (a1 == 1)
    {
      v23 = v30 * v30 - v29 * v29;
      v32 = v23 * *(a4 + 120) + *(a4 + 128) * v31;
      v33 = v32 * v32 * -0.5 + 1.0;
      v34 = v30 * v32;
      v128 = v32;
      v35 = -(v29 * v32);
      v29 = v34 + v29 * v33;
      v30 = v35 + v30 * v33;
      v36 = v23 * *(a4 + 104) + *(a4 + 112) * v31;
    }

    else
    {
      v128 = 0.0;
      v36 = 0.0;
    }

    v134 = v30;
    v133 = v19 * v27.__cosval + 1.0;
    v125 = v31;
    v127 = v36;
    v37 = v131 * v138 / v133 + v36;
    v140 = v30 * v37;
    v38 = v37 * v29;
    v39 = *(a4 + 184);
    if (a1 == 1)
    {
      v129 = v23 * *(a4 + 136) + *(a4 + 144) * v31;
      v39 = v39 + v129 + *(a4 + 152) * v14;
    }

    else
    {
      v129 = 0.0;
    }

    v136 = sqrt(v138);
    v40 = __sincos_stret(v39);
    v41 = *(a4 + 208);
    v42 = __sincos_stret(*(a4 + 176) + v41 * v14 + v10 * -0.00007292115);
    v141 = v140 * v42.__cosval - v38 * v40.__cosval * v42.__sinval;
    v135 = v38 * v40.__cosval * v42.__cosval + v140 * v42.__sinval;
    v137 = v38 * v40.__sinval;
    v130 = v11;
    v43 = __sincos_stret(v14 * 0.00007292115);
    v44 = 0;
    cosval = v43.__cosval;
    v155 = vmulq_n_f64(xmmword_299761410, v43.__sinval);
    v156 = -v43.__sinval;
    v157 = vmulq_n_f64(xmmword_299761410, v43.__cosval);
    v158 = xmmword_299761420;
    v159 = 0x3FEFE0D3B41815ABLL;
    v45 = &v155.f64[1];
    do
    {
      v46 = v135 * *(v45 - 1) + *(v45 - 2) * v141;
      v47 = *v45;
      v45 += 3;
      *(a5 + v44) = v46 + v47 * v137;
      v44 += 8;
    }

    while (v44 != 24);
    v48 = v138 * v136;
    v49 = v133 * (v142 * v133) / (v138 * v136);
    v50 = v49 + v49;
    v51 = v142 * (v131 * *(a4 + 200) / v136);
    v52 = v27.__sinval * v51;
    if (a1 == 1)
    {
      v123 = *(a4 + 112) * v23 - *(a4 + 104) * v125;
      v124 = *(a4 + 128) * v23 - *(a4 + 120) * v125;
      v53 = v49 + v50 * v124;
      v52 = v52 + v50 * v123;
      v126 = *(a4 + 144) * v23 - *(a4 + 136) * v125;
      v54 = *(a4 + 152) + v50 * v126;
    }

    else
    {
      v123 = 0.0;
      v124 = 0.0;
      v53 = v133 * (v142 * v133) / (v138 * v136);
      v126 = 0.0;
      v54 = 0.0;
    }

    v55 = 0;
    v56 = v52 * v134 - v38 * v53;
    v57 = v140 * v53 + v52 * v29;
    v58 = v56 + -(v38 * v41) * v40.__cosval;
    v59 = v57 * v40.__cosval - v137 * v54 + v140 * v41;
    v60 = v58 * v42.__cosval - v59 * v42.__sinval;
    v61 = v42.__cosval * v59 + v58 * v42.__sinval;
    v62 = v40.__cosval * (v38 * v54) + v57 * v40.__sinval;
    v63 = v43.__cosval * 0.00007292115;
    v64 = vmulq_n_f64(xmmword_299761410, v43.__cosval * 0.00007292115);
    *&v66.f64[0] = vdupq_laneq_s64(v64, 1).u64[0];
    v65 = vdupq_lane_s64(v64.i64[0], 0);
    v65.f64[0] = -(v43.__sinval * 0.00007292115);
    v66.f64[1] = -(v43.__cosval * 0.00007292115);
    v67 = vextq_s8(v66, v66, 8uLL).u64[0];
    *&v68.f64[0] = vextq_s8(v65, v65, 8uLL).u64[0];
    v69 = vmulq_n_f64(xmmword_299761430, v43.__sinval * 0.00007292115);
    v139 = vextq_s8(v69, v69, 8uLL).u64[0];
    v70 = &v155.f64[1];
    do
    {
      v71 = v61 * *(v70 - 1) + *(v70 - 2) * v60;
      v72 = *v70;
      v70 += 3;
      *(&v152 + v55) = v71 + v72 * v62;
      v55 += 8;
    }

    while (v55 != 24);
    *(a5 + 24) = v152;
    *(a5 + 40) = v153;
    v73.f64[0] = -(v43.__sinval * 0.00007292115);
    v132 = v67;
    *&v73.f64[1] = v67;
    v74.f64[0] = v68.f64[0];
    *&v74.f64[1] = v69.i64[0];
    v75.f64[0] = v66.f64[0];
    *&v75.f64[1] = v139;
    *(a5 + 24) = vaddq_f64(*(a5 + 24), vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v74, v135), v73, v141), v75, v137));
    v76 = v133 * (v27.__sinval * (-(v50 * v142) * *(a4 + 200)) / v48);
    v77 = v27.__cosval;
    v78 = v27.__cosval * (v49 * v51);
    v79 = 0.0;
    if (a1 == 1)
    {
      v80 = v76 + v76;
      v81 = v50 * -v50;
      v78 = v78 + (v76 + v76) * v123 + v81 * v127;
      v76 = v76 + (v76 + v76) * v124 + v81 * v128;
      v79 = v81 * v129 + v80 * v126;
    }

    v82 = 0;
    v83 = v134 * (v52 * v53) + v78 * v29 + v56 * v53 + v76 * v140;
    v84 = v78 * v134 - v52 * v53 * v29 - v57 * v53 - v76 * v38 + -(v57 * v41) * v40.__cosval + v41 * (v38 * v54) * v40.__sinval;
    v85 = v40.__sinval * -(v57 * v54) + v83 * v40.__cosval - v62 * v54 + -v137 * v79 + v56 * v41;
    v86 = v42.__cosval * v84 - v41 * v61 - v85 * v42.__sinval;
    v87 = v42.__sinval * v84 + v41 * v60 + v85 * v42.__cosval;
    v88 = v40.__cosval * ((v57 + v57) * v54) + v83 * v40.__sinval + v38 * v79 * v40.__cosval + -(v54 * v54) * v137;
    v89.f64[1] = v63 * 0.00007292115;
    v89.f64[0] = v43.__sinval * 0.00007292115;
    v90 = vmulq_f64(v89, xmmword_299761440);
    v91 = vmulq_n_f64(xmmword_299761430, *v90.i64);
    v92 = vdupq_laneq_s64(v91, 1);
    v93 = vdupq_lane_s64(v91.i64[0], 0);
    v93.f64[0] = -(v63 * 0.00007292115);
    v94 = vdupq_laneq_s64(v90, 1).u64[0];
    v95 = vzip1q_s64(v92, v90);
    v96 = vextq_s8(v95, v95, 8uLL).u64[0];
    *&v97.f64[0] = vextq_s8(v93, v93, 8uLL).u64[0];
    v90.i64[0] = v94;
    *&v90.i64[1] = v89.f64[1] * 0.0871557427;
    v98 = vextq_s8(v90, v90, 8uLL).u64[0];
    v99 = &v155.f64[1];
    do
    {
      v100 = v87 * *(v99 - 1) + *(v99 - 2) * v86;
      v101 = *v99;
      v99 += 3;
      *(&v152 + v82) = v100 + v101 * v88;
      v82 += 8;
    }

    while (v82 != 24);
    *(a5 + 48) = v152;
    v102 = v153;
    *&v65.f64[1] = v132;
    *&v68.f64[1] = v69.i64[0];
    *&v66.f64[1] = v139;
    *&v93.f64[1] = v96;
    v103 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v68, v61), v65, v60), v66, v62);
    *&v97.f64[1] = v94;
    *&v95.f64[1] = v98;
    __asm { FMOV            V3.2D, #2.0 }

    *(a5 + 48) = vaddq_f64(vmlaq_f64(*(a5 + 48), _Q3, v103), vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v97, v135), v93, v141), v95, v137));
    *(a5 + 64) = v102;
    *(a5 + 72) = 0;
    *(a5 + 80) = 0;
    *(a5 + 88) = 0;
    v108 = v11;
    if (a1 != 1)
    {
      v111 = (v11 + 302400) / 1000 + 1200;
      if (v11 >= 31233600)
      {
        v111 = 65500;
      }

      if (v11 <= -301401)
      {
        v111 = 1200;
      }

      *(a5 + 112) = (v111 * v111);
      goto LABEL_62;
    }

    v109 = *(a4 + 15);
    if (v109 > 0xF)
    {
      v110 = 99980001.0;
    }

    else
    {
      v110 = BDS_Legacy_URA_Table[v109];
    }

    *(a5 + 112) = v110;
    v112 = v11 / 60;
    if (*(a4 + 14))
    {
      v113 = -180;
    }

    else
    {
      v113 = -120;
    }

    v114 = v113 + v112;
    if (v113 + v112 >= 1)
    {
      *&v152 = 0;
      if (!R8_EQ((a4 + 208), &v152))
      {
        goto LABEL_59;
      }

      v151 = 0.0;
      if (!R8_EQ((a4 + 48), &v151))
      {
        goto LABEL_59;
      }

      v150 = 0.0;
      if (R8_EQ((a4 + 112), &v150) && (v149 = 0.0, R8_EQ((a4 + 96), &v149)) && (v148 = 0.0, R8_EQ((a4 + 120), &v148)) && (v147 = 0.0, R8_EQ((a4 + 128), &v147)) && (v146 = 0.0, R8_EQ((a4 + 136), &v146)) && (v145 = 0.0, R8_EQ((a4 + 144), &v145)) && (v144 = 0.0, R8_EQ((a4 + 104), &v144)))
      {
        v143 = 0.0;
        v115 = R8_EQ((a4 + 152), &v143);
        v77 = v27.__cosval;
        if (v115)
        {
          goto LABEL_61;
        }
      }

      else
      {
LABEL_59:
        v77 = v27.__cosval;
      }

      *(a5 + 112) = v110 + (2 * v114 * v114);
    }

LABEL_61:
    v108 = v130 + (*(a4 + 24) - *(a4 + 20));
LABEL_62:
    v116 = *(a4 + 200);
    v117 = v116 * -4.44280763e-10 * *(a4 + 168) / (v116 * v77 + 1.0);
    v118 = *(a4 + 40);
    v119 = v108 * *(a4 + 48);
    *(a5 + 96) = *(a4 + 32) + v136 * v117 * v27.__sinval + v108 * (v119 + v118);
    *(a5 + 104) = v118 + v142 * v117 * (v77 + v116) + v119 * 2.0;
    v120 = *(a4 + 56);
    v121 = *(a4 + 72);
    *(a5 + 152) = *(a4 + 88);
    *(a5 + 136) = v121;
    *(a5 + 120) = v120;
    *(a5 + 160) = a3;
    *(a5 + 164) = v8;
    *(a5 + 166) = *(a4 + 16);
    *(a5 + 184) = a1;
    *(a5 + 180) = *(a4 + 12);
    *(a5 + 176) = *(a4 + 8);
  }

  v122 = *MEMORY[0x29EDCA608];
}

void gnss::GnssAdaptDevice::setAssistanceAccel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v5 = *a2;
    v4 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v6 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice18setAssistanceAccelEONSt3__16vectorINS_17SensorSample3AxisENS1_9allocatorIS3_EEEENS1_8functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_17;
    block[4] = a1;
    __p = 0;
    v12 = 0;
    v13 = 0;
    std::vector<gnss::SensorSample3Axis>::__init_with_size[abi:ne200100]<gnss::SensorSample3Axis*,gnss::SensorSample3Axis*>(&__p, v5, v4, 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3));
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v14, a3);
    dispatch_async(v6, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    if (v5)
    {
      operator delete(v5);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "setAssistanceAccel", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
  }

  v9 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN4gnss15GnssAdaptDevice18setAssistanceAccelEONSt3__16vectorINS_17SensorSample3AxisENS1_9allocatorIS3_EEEENS1_8functionIFvNS_6ResultEEEE_block_invoke(void *a1)
{
  v52 = *MEMORY[0x29EDCA608];
  v2 = a1[4];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setAssistanceAccel_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  v6 = a1[5];
  v5 = a1[6];
  if (v5 == v6 || (v7 = (v5 - v6) >> 3, v8 = -21845 * v7, 0xAAAAAAAAAAAAAAABLL * v7 >= 0x10000))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v50, (a1 + 8));
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v50, "setAssistanceAccel_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v50);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v27 = mach_continuous_time();
      v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Sample Size,%u\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 69, "setAssistanceAccel_block_invoke", 515, -1431655765 * ((a1[6] - a1[5]) >> 3));
      LbsOsaTrace_WriteLog(0x18u, __str, v28, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v30 = mach_continuous_time();
      v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 68, "setAssistanceAccel_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v31, 5, 1);
    }
  }

  else
  {
    v9 = 0x5555555555555560 * v7;
    v10 = operator new[](0x5555555555555560 * v7, MEMORY[0x29EDC9418]);
    if (!v10)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v49, (a1 + 8));
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 2, v49, "setAssistanceAccel_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v49);
      snprintf(v48, 0x400uLL, "ASSERT,%s,%d,%s", "setAssistanceAccel_block_invoke", 63, "Memory allocation failed for Accel");
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v41 = mach_continuous_time();
        v42 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v41), "OSA", 69, "setAssistanceAccel_block_invoke", v48);
        LbsOsaTrace_WriteLog(0xEu, __str, v42, 0, 1);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("setAssistanceAccel_block_invoke", "ga02GnssDeviceSens.cpp", 63, "false && Memory allocation failed for Accel");
    }

    v43 = v2;
    v11 = 0;
    do
    {
      v12 = &v10[v11];
      *v12 = 0;
      *(v12 + 1) = 0;
      *(v12 + 6) = 0;
      *(v12 + 2) = 0;
      v11 += 32;
    }

    while (v9 != v11);
    v13 = 0;
    v14 = 0;
    v44 = v10;
    v15 = (v10 + 24);
    do
    {
      v16 = *(v6 + v13);
      if (v16)
      {
        v17 = *(v6 + v13 + 16);
        *(v15 - 3) = vcvtq_f64_f32(*(v6 + v13 + 8));
        *(v15 - 1) = v17;
        *v15 = (v16 + 500000) / 0xF4240uLL;
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v18 = mach_continuous_time();
          v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AccelSampleVector Idx,%zd\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 87, "setAssistanceAccel_block_invoke", 515, v14);
          LbsOsaTrace_WriteLog(0x18u, __str, v19, 2, 1);
        }

        --v8;
        v6 = a1[5];
        v5 = a1[6];
      }

      ++v14;
      v15 += 4;
      v13 += 24;
    }

    while (v14 < 0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3));
    if (v8)
    {
      v20 = v44;
      gnss::GnssAdaptDevice::Ga02_02PrintSensorData(v6, (v5 - v6), 65);
      v21 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v46, (a1 + 8));
      gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v43, v21, v46);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v46);
      v22 = GNS_SenSetAccl(v21, v8, v44);
      if (v22 == 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v23 = mach_continuous_time();
          v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NumSamples,%u\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 73, "setAssistanceAccel_block_invoke", v8);
          LbsOsaTrace_WriteLog(0x18u, __str, v24, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v25 = mach_continuous_time();
          v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 68, "setAssistanceAccel_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v26, 5, 1);
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v45, (a1 + 8));
        gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v43, v22, v45, "setAssistanceAccel_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v45);
        gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v43, v21);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v36 = mach_continuous_time();
          v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SenSetAccl,%u\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 69, "setAssistanceAccel_block_invoke", 257, v22);
          LbsOsaTrace_WriteLog(0x18u, __str, v37, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v38 = mach_continuous_time();
          v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v38), "ADP", 68, "setAssistanceAccel_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v39, 5, 1);
        }
      }
    }

    else
    {
      v20 = v44;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v47, (a1 + 8));
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v43, 4, v47, "setAssistanceAccel_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v47);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v32 = mach_continuous_time();
        v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx No Valid Samples\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 69, "setAssistanceAccel_block_invoke", 515);
        LbsOsaTrace_WriteLog(0x18u, __str, v33, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v34 = mach_continuous_time();
        v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v34), "ADP", 68, "setAssistanceAccel_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v35, 5, 1);
      }
    }

    result = MEMORY[0x29C29EAF0](v20, 0x1000C80F6D918ACLL);
  }

  v40 = *MEMORY[0x29EDCA608];
  return result;
}

void gnss::GnssAdaptDevice::Ga02_02PrintSensorData(gnss::GnssAdaptDevice *this, unsigned __int8 *a2, char a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v8 = a3;
  v7 = 24;
  if (this)
  {
    *__str = 0;
    v10 = 0;
    v11 = 0;
    if (a2 != -5)
    {
      if (((a2 + 5) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    std::vector<unsigned char>::push_back[abi:ne200100](__str, &v8);
    v6 = -1;
    std::vector<unsigned char>::push_back[abi:ne200100](__str, &v6);
    v6 = -5;
    std::vector<unsigned char>::push_back[abi:ne200100](__str, &v6);
    std::vector<unsigned char>::push_back[abi:ne200100](__str, &v7);
    v6 = 10;
    std::vector<unsigned char>::push_back[abi:ne200100](__str, &v6);
    LbsOsaTrace_PrintBinaryBuf(0x19u, 5u, 0, *__str, (v10 - *__str));
    if (*__str)
    {
      v10 = *__str;
      operator delete(*__str);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Data\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 69, "Ga02_02PrintSensorData", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 0, 1);
  }

  v5 = *MEMORY[0x29EDCA608];
}

uint64_t __copy_helper_block_e8_40c66_ZTSNSt3__16vectorIN4gnss17SensorSample3AxisENS_9allocatorIS2_EEEE64c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  a1[5] = 0;
  a1[6] = 0;
  v3 = a1 + 5;
  a1[7] = 0;
  std::vector<gnss::SensorSample3Axis>::__init_with_size[abi:ne200100]<gnss::SensorSample3Axis*,gnss::SensorSample3Axis*>((a1 + 5), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
  result = std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100]((v3 + 3), a2 + 64);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2996BE8B8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c66_ZTSNSt3__16vectorIN4gnss17SensorSample3AxisENS_9allocatorIS2_EEEE64c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 64);
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    v3 = *MEMORY[0x29EDCA608];

    operator delete(v2);
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];
  }
}

void gnss::GnssAdaptDevice::setAssistanceGyro(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v5 = *a2;
    v4 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v6 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice17setAssistanceGyroEONSt3__16vectorINS_17SensorSample3AxisENS1_9allocatorIS3_EEEENS1_8functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_20_1;
    block[4] = a1;
    __p = 0;
    v12 = 0;
    v13 = 0;
    std::vector<gnss::SensorSample3Axis>::__init_with_size[abi:ne200100]<gnss::SensorSample3Axis*,gnss::SensorSample3Axis*>(&__p, v5, v4, 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3));
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v14, a3);
    dispatch_async(v6, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    if (v5)
    {
      operator delete(v5);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "setAssistanceGyro", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
  }

  v9 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN4gnss15GnssAdaptDevice17setAssistanceGyroEONSt3__16vectorINS_17SensorSample3AxisENS1_9allocatorIS3_EEEENS1_8functionIFvNS_6ResultEEEE_block_invoke(void *a1)
{
  v52 = *MEMORY[0x29EDCA608];
  v2 = a1[4];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setAssistanceGyro_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  v6 = a1[5];
  v5 = a1[6];
  if (v5 == v6 || (v7 = (v5 - v6) >> 3, v8 = -21845 * v7, 0xAAAAAAAAAAAAAAABLL * v7 >= 0x10000))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v50, (a1 + 8));
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v50, "setAssistanceGyro_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v50);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v27 = mach_continuous_time();
      v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Sample Size,%u\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 69, "setAssistanceGyro_block_invoke", 515, -1431655765 * ((a1[6] - a1[5]) >> 3));
      LbsOsaTrace_WriteLog(0x18u, __str, v28, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v30 = mach_continuous_time();
      v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 68, "setAssistanceGyro_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v31, 5, 1);
    }
  }

  else
  {
    v9 = 0x5555555555555560 * v7;
    v10 = operator new[](0x5555555555555560 * v7, MEMORY[0x29EDC9418]);
    if (!v10)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v49, (a1 + 8));
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 2, v49, "setAssistanceGyro_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v49);
      snprintf(v48, 0x400uLL, "ASSERT,%s,%d,%s", "setAssistanceGyro_block_invoke", 141, "Memory allocation failed for Gyro");
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v41 = mach_continuous_time();
        v42 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v41), "OSA", 69, "setAssistanceGyro_block_invoke", v48);
        LbsOsaTrace_WriteLog(0xEu, __str, v42, 0, 1);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("setAssistanceGyro_block_invoke", "ga02GnssDeviceSens.cpp", 141, "false && Memory allocation failed for Gyro");
    }

    v43 = v2;
    v11 = 0;
    do
    {
      v12 = &v10[v11];
      *v12 = 0;
      *(v12 + 1) = 0;
      *(v12 + 6) = 0;
      *(v12 + 2) = 0;
      v11 += 32;
    }

    while (v9 != v11);
    v13 = 0;
    v14 = 0;
    v44 = v10;
    v15 = (v10 + 24);
    do
    {
      v16 = *(v6 + v13);
      if (v16)
      {
        v17 = *(v6 + v13 + 16);
        *(v15 - 3) = vcvtq_f64_f32(*(v6 + v13 + 8));
        *(v15 - 1) = v17;
        *v15 = (v16 + 500000) / 0xF4240uLL;
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v18 = mach_continuous_time();
          v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GyroSampleVector Idx,%zd\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 87, "setAssistanceGyro_block_invoke", 515, v14);
          LbsOsaTrace_WriteLog(0x18u, __str, v19, 2, 1);
        }

        --v8;
        v6 = a1[5];
        v5 = a1[6];
      }

      ++v14;
      v15 += 4;
      v13 += 24;
    }

    while (v14 < 0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3));
    if (v8)
    {
      v20 = v44;
      gnss::GnssAdaptDevice::Ga02_02PrintSensorData(v6, (v5 - v6), 71);
      v21 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v46, (a1 + 8));
      gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v43, v21, v46);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v46);
      v22 = GNS_SenSetGyro(v21, v8, v44);
      if (v22 == 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v23 = mach_continuous_time();
          v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NumSamples,%u\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 73, "setAssistanceGyro_block_invoke", v8);
          LbsOsaTrace_WriteLog(0x18u, __str, v24, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v25 = mach_continuous_time();
          v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 68, "setAssistanceGyro_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v26, 5, 1);
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v45, (a1 + 8));
        gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v43, 0xEu, v45, "setAssistanceGyro_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v45);
        gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v43, v21);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v36 = mach_continuous_time();
          v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SenSetGyro,%u\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 69, "setAssistanceGyro_block_invoke", 257, v22);
          LbsOsaTrace_WriteLog(0x18u, __str, v37, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v38 = mach_continuous_time();
          v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v38), "ADP", 68, "setAssistanceGyro_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v39, 5, 1);
        }
      }
    }

    else
    {
      v20 = v44;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v47, (a1 + 8));
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v43, 4, v47, "setAssistanceGyro_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v47);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v32 = mach_continuous_time();
        v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx No Valid Samples\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 69, "setAssistanceGyro_block_invoke", 515);
        LbsOsaTrace_WriteLog(0x18u, __str, v33, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v34 = mach_continuous_time();
        v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v34), "ADP", 68, "setAssistanceGyro_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v35, 5, 1);
      }
    }

    result = MEMORY[0x29C29EAF0](v20, 0x1000C80F6D918ACLL);
  }

  v40 = *MEMORY[0x29EDCA608];
  return result;
}

void gnss::GnssAdaptDevice::Ga02_00RegisterGnsSensStatusResponse(gnss::GnssAdaptDevice *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1;
  v21 = *MEMORY[0x29EDCA608];
  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(a1);
  if (DeviceInstance)
  {
    v6 = DeviceInstance;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Type,%u\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 73, "Ga02_01HandleGnsSensStatusResponse", v4);
      LbsOsaTrace_WriteLog(0x18u, __str, v8, 4, 1);
    }

    if (a3)
    {
      v9 = *(a3 + 2);
      v10 = *(v6 + 288);
      *__str = MEMORY[0x29EDCA5F8];
      v15 = 0x40000000;
      v16 = ___ZN4gnss15GnssAdaptDevice34Ga02_01HandleGnsSensStatusResponseE12e_gnsSen_MsgjP18s_gnsSen_ApiStatus_block_invoke;
      v17 = &__block_descriptor_tmp_26_1;
      v18 = v6;
      v19 = *a3;
      v20 = v9;
      dispatch_async(v10, __str);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SensResp\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "Ga02_01HandleGnsSensStatusResponse", 770);
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
    }
  }

  v13 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN4gnss15GnssAdaptDevice34Ga02_01HandleGnsSensStatusResponseE12e_gnsSen_MsgjP18s_gnsSen_ApiStatus_block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v28 = 0;
  v2 = *(v1 + 264);
  if (!v2)
  {
    goto LABEL_28;
  }

  v4 = v1 + 264;
  v5 = *(a1 + 40);
  v6 = v1 + 264;
  v7 = *(v1 + 264);
  do
  {
    v8 = *(v7 + 32);
    v9 = v8 >= v5;
    v10 = v8 < v5;
    if (v9)
    {
      v6 = v7;
    }

    v7 = *(v7 + 8 * v10);
  }

  while (v7);
  if (v6 != v4 && v5 >= *(v6 + 32))
  {
    v13 = v1 + 264;
    do
    {
      v14 = *(v2 + 32);
      v9 = v14 >= v5;
      v15 = v14 < v5;
      if (v9)
      {
        v13 = v2;
      }

      v2 = *(v2 + 8 * v15);
    }

    while (v2);
    if (v13 == v4 || v5 < *(v13 + 32))
    {
      v13 = v1 + 264;
    }

    std::function<void ()(gnss::Result)>::operator=(v27, v13 + 40);
    std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::__remove_node_pointer((v1 + 256), v6);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6 + 40);
    operator delete(v6);
    if (v28)
    {
      v16 = gnss::GnssAdaptDevice::Ga07_16MapGnsRespToGnssResult(v1, *(a1 + 48));
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Type,%u\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 73, "Ga02_01HandleGnsSensStatusResponse_block_invoke", *(a1 + 40));
        LbsOsaTrace_WriteLog(0x18u, __str, v18, 4, 1);
      }

      v19 = *(v1 + 296);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN4gnss15GnssAdaptDevice34Ga02_01HandleGnsSensStatusResponseE12e_gnsSen_MsgjP18s_gnsSen_ApiStatus_block_invoke_2;
      block[3] = &__block_descriptor_tmp_25_3;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v25, v27);
      v25[8] = v16;
      dispatch_async(v19, block);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v25);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCb,API type,%d\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 87, "Ga02_01HandleGnsSensStatusResponse_block_invoke", 770, *(a1 + 40));
      LbsOsaTrace_WriteLog(0x18u, __str, v21, 2, 1);
    }
  }

  else
  {
LABEL_28:
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnsStatusRespLut Handle\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 87, "Ga02_01HandleGnsSensStatusResponse_block_invoke", 770);
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 2, 1);
    }
  }

  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v27);
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice34Ga02_01HandleGnsSensStatusResponseE12e_gnsSen_MsgjP18s_gnsSen_ApiStatus_block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 64);
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 32;

  return std::function<void ()(gnss::Result)>::operator()(v3, v1);
}

void std::vector<gnss::SensorSample3Axis>::__init_with_size[abi:ne200100]<gnss::SensorSample3Axis*,gnss::SensorSample3Axis*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
  }

  v4 = *MEMORY[0x29EDCA608];
  v5 = *MEMORY[0x29EDCA608];
}

void sub_2996BFB90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void SuplPosInitSent::~SuplPosInitSent(SuplPosInitSent *this)
{
  v7[1] = *MEMORY[0x29EDCA608];
  *this = &unk_2A1F8AB30;
  if (*(this + 16) == 5)
  {
    v2 = *(this + 5);
    if (v2)
    {
      ASN1T_Velocity::U::~U((v2 + 152));
      v7[0] = (v2 + 120);
      std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](v7);
      v7[0] = (v2 + 96);
      std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](v7);
      v3 = *(v2 + 64);
      if (v3)
      {
        *(v2 + 72) = v3;
        operator delete(v3);
      }

      v4 = *(v2 + 40);
      if (v4)
      {
        *(v2 + 48) = v4;
        operator delete(v4);
      }

      v5 = *(v2 + 16);
      if (v5)
      {
        *(v2 + 24) = v5;
        operator delete(v5);
      }

      MEMORY[0x29C29EB20](v2, 0x1030C40C2B5F699);
    }

    *(this + 5) = 0;
  }

  SuplState::~SuplState(this);
  v6 = *MEMORY[0x29EDCA608];
}

{
  v2 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];

  SuplPosInitSent::~SuplPosInitSent(this);
}

{
  v2 = *MEMORY[0x29EDCA608];
  SuplPosInitSent::~SuplPosInitSent(this);
  v1 = *MEMORY[0x29EDCA608];

  JUMPOUT(0x29C29EB20);
}

uint64_t SuplPosInitSent::Init(SuplPosInitSent *this)
{
  result = *(this + 360);
  v2 = *MEMORY[0x29EDCA608];
  *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplPosInitSent::UpdateState(uint64_t this)
{
  v1 = this;
  v4 = *MEMORY[0x29EDCA608];
  if (*(this + 360))
  {
    v2 = 5;
LABEL_5:
    this = SuplState::UpdateState(this, v2, *(this + 8));
    goto LABEL_6;
  }

  if (*(this + 17))
  {
    v2 = 7;
    goto LABEL_5;
  }

LABEL_6:
  *(v1 + 360) = 0;
  *(v1 + 17) = 0;
  v3 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t SuplPosInitSent::ProcessSuplPos(uint64_t a1, uint64_t *a2)
{
  v45 = *MEMORY[0x29EDCA608];
  v4 = SuplState::ProcessSuplMessage(a1, a2);
  if (v4)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "ProcessSuplPos", 515);
      LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
    }

    LOBYTE(v7) = 3;
    goto LABEL_5;
  }

  Instance = SuplUtils::GetInstance(v4);
  v12 = *(a1 + 8);
  if (SuplUtils::ValidateSetSessionId(Instance, *(v12 + 72), *(a1 + 56)) && (IsLoggingAllowed = SuplUtils::ValidateSetId(Instance, (v12 + 80), (a1 + 64)), IsLoggingAllowed))
  {
    v7 = 0;
    v14 = 0;
  }

  else
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "SPL", 69, "ProcessSuplPos", 515);
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v16, 0, 1);
    }

    v14 = 1;
    v7 = 12;
  }

  v17 = *(a1 + 8);
  v18 = SuplUtils::GetInstance(IsLoggingAllowed);
  v19 = SuplUtils::ValidateSlpSessionId(v18, a1 + 248, v17 + 264);
  v20 = v19;
  v21 = SuplUtils::GetInstance(v19);
  v22 = SuplUtils::ValidateSlpId(v21, (a1 + 272), (v17 + 288));
  if (!v20 || !v22)
  {
    v22 = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (v22)
    {
      bzero(__str, 0x410uLL);
      v23 = mach_continuous_time();
      v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v23), "SPL", 69, "ProcessSuplPos", 515);
      v22 = LbsOsaTrace_WriteLog(0x12u, __str, v24, 0, 1);
    }

    v14 = 1;
    v7 = 12;
  }

  v25 = *(a1 + 26);
  v26 = SuplVersionNegotiation::GetInstance(v22);
  v27 = atomic_load(v26 + 1);
  v28 = v27 == 255;
  v29 = 1;
  if (v28)
  {
    v29 = 2;
  }

  v30 = atomic_load(&v26[v29]);
  if (v25 != v30 && *(a1 + 32) == 5)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v31 = mach_continuous_time();
      v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v31), "SPL", 69, "ProcessSuplPos", 515);
      LbsOsaTrace_WriteLog(0x12u, __str, v32, 0, 1);
    }

    LOBYTE(v7) = 10;
    goto LABEL_5;
  }

  if (v14)
  {
    if (v7 == 12)
    {
      ASN1T_SessionID::operator=(*(a1 + 8) + 64, a1 + 48);
      LOBYTE(v7) = 12;
    }

    goto LABEL_5;
  }

  v33 = *(a1 + 32);
  if (v33 == 6)
  {
    *(a1 + 17) = 1;
    (*(*a1 + 16))(a1);
    SuplStateObject = SuplSession::GetSuplStateObject(*(a1 + 8));
    (*(*SuplStateObject + 40))(SuplStateObject, a2);
    goto LABEL_36;
  }

  if (v33 != 5)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v39 = mach_continuous_time();
      v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v39), "SPL", 69, "ProcessSuplPos", 514);
      LbsOsaTrace_WriteLog(0x12u, __str, v40, 0, 1);
    }

    LOBYTE(v7) = 2;
    goto LABEL_5;
  }

  v34 = LcsSuplGlueLayer::GetInstance(v26);
  v35 = LcsSuplGlueLayer::SendSuplMsgStatus(v34, *(*(a1 + 8) + 376), 4, 0, 0, 0);
  v36 = SuplPosPayloadHandler::GetInstance(v35);
  v37 = SuplPosPayloadHandler::ProcessPosPayload(v36, *(a1 + 40), *(a1 + 8));
  if (v37 == -7)
  {
    LOBYTE(v7) = 8;
  }

  else
  {
    if (!v37)
    {
      *(a1 + 360) = 1;
      (*(*a1 + 16))(a1);
LABEL_36:
      result = 1;
      goto LABEL_8;
    }

    LOBYTE(v7) = 0;
  }

LABEL_5:
  *(a1 + 17) = 1;
  (*(*a1 + 16))(a1);
  v8 = SuplSession::GetSuplStateObject(*(a1 + 8));
  *(v8[5] + 432) = v7;
  *(v8[5] + 1) = 1;
  std::vector<unsigned char>::vector[abi:ne200100](__str, 3000);
  v41[0] = __str;
  v41[1] = 0;
  v42 = 0;
  (*(*v8 + 32))(v8, v41);
  SuplEndRecd::TerminateSession(v8, -1, 3);
  if (*__str)
  {
    v44 = *__str;
    operator delete(*__str);
  }

  result = 0;
LABEL_8:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2996C0420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SuplPosInitSent::ProcessSuplMessage(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  if ((*(*a1 + 48))(a1))
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

double Get_GPS_Kep_Almanac(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 10);
  v2 = *(a1 + 12);
  *(a2 + 12) = BYTE2(v2) & 0x3F;
  v3 = vcvtd_n_f64_u32(v2, 0x15uLL);
  *(a2 + 20) = *(a1 + 18) << 12;
  v4 = *(a1 + 16) * 0.00000599211245 + 0.942477796;
  v5 = *(a1 + 20);
  v6 = *(a1 + 24);
  *(a2 + 40) = v3;
  *(a2 + 48) = v4;
  *(a2 + 13) = v5 & 0x1F;
  *(a2 + 72) = vcvtd_n_f64_u32(v6 & 0xFFFFFF, 0xBuLL);
  v7 = vshl_n_s32(*(a1 + 28), 8uLL);
  v8.i64[0] = v7.i32[0];
  v8.i64[1] = v7.i32[1];
  *(a2 + 80) = vmulq_f64(vcvtq_f64_s64(v8), vdupq_n_s64(0x3E1921FB54442D28uLL));
  v9 = *(a1 + 40);
  v10 = (*(a1 + 36) << 8) * 0.00000000146291808;
  *(a2 + 56) = (v5 >> 8) * 1.14290475e-11;
  *(a2 + 64) = v10;
  result = vcvtd_n_f64_s32(((v9 >> 8) & 0xFF00 | (32 * ((v9 >> 2) & 7))), 0x19uLL);
  *(a2 + 24) = result;
  *(a2 + 32) = (v9 & 0xFFFFFFE0) * 1.13686838e-13;
  *(a2 + 8) = 1;
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim24_01HandleSensApiStatus(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim24_01HandleSensApiStatus");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("lsim24_01HandleSensApiStatus", 38, 1, 0xCuLL);
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (v4)
  {
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_SENSAPI_IND\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim24_01HandleSensApiStatus");
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
    }

    if (g_GnsSenCallback)
    {
      *v4 = *(a1 + 20);
      *(v4 + 4) = *(a1 + 12);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:API_STATUS =>SensCB,Api,%u,Id,%u,Status,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim24_01HandleSensApiStatus", *(v4 + 1), *v4, *(v4 + 2));
        LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
      }

      g_GnsSenCallback(0, 12, v4);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SENS\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 68, "lsim24_01HandleSensApiStatus", 258);
      LbsOsaTrace_WriteLog(0xCu, __str, v11, 5, 1);
    }

    free(v4);
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  }

  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim24_01HandleSensApiStatus");
    LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
  }

  v14 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim24_02SensCbInit(uint64_t result)
{
  v1 = result;
  v8 = *MEMORY[0x29EDCA608];
  if (result)
  {
LABEL_2:
    g_GnsSenCallback = v1;
    goto LABEL_3;
  }

  if (g_GnsSenCallback)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DeRegistering\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 73, "lsim24_02SensCbInit", 513);
      result = LbsOsaTrace_WriteLog(0xCu, __str, v4, 4, 1);
    }

    goto LABEL_2;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CbPtr\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 87, "lsim24_02SensCbInit", 513);
    result = LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
  }

LABEL_3:
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_SenInitialize(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("GNS_SenInitialize", 98, 1, 0x18uLL);
  if (v2)
  {
    v2[3] = 12;
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

uint64_t GNS_SenSetAccl(int a1, unsigned int a2, char *a3)
{
  v31 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_SenSetAccl");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (!a3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Accel\n");
LABEL_13:
      LbsOsaTrace_WriteLog(0xCu, __str, v11, 2, 1);
    }

LABEL_14:
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "GNS_SenSetAccl");
      LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
    }

    v14 = 2;
    goto LABEL_29;
  }

  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v29 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NumSamples,%u\n", v29);
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (a2 < 0xC9)
  {
    v10 = a2;
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NumSamples,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 87, "GNS_SenSetAccl", 514, a2);
      LbsOsaTrace_WriteLog(0xCu, __str, v9, 2, 1);
    }

    v10 = 200;
  }

  v15 = gnssOsa_Calloc("GNS_SenSetAccl", 214, 1, 0x10uLL);
  if (v15)
  {
    v16 = v15;
    v17 = gnssOsa_Calloc("GNS_SenSetAccl", 221, v10, 0x20uLL);
    *(v16 + 1) = v17;
    if (v17)
    {
      v18 = gnssOsa_Calloc("GNS_SenSetAccl", 229, 1, 0x20uLL);
      if (v18)
      {
        v19 = v18;
        *v16 = v10;
        if (a2 < 0xC9)
        {
          v21 = 250;
          v20 = a3;
        }

        else
        {
          v20 = &a3[32 * a2 - 6400];
          v21 = 246;
        }

        memcpy_s("GNS_SenSetAccl", v21, *(v16 + 1), 32 * (v10 & 0x7FF), v20, 32 * (v10 & 0x7FFu));
        v19[2] = v16;
        *(v19 + 6) = a1;
        AgpsSendFsmMsg(131, 134, 8782595, v19);
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v27 = mach_continuous_time();
          v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v27), "LSM", 73, "GNS_SenSetAccl");
          v14 = 1;
          LbsOsaTrace_WriteLog(0xCu, __str, v28, 4, 1);
        }

        else
        {
          v14 = 1;
        }

        goto LABEL_29;
      }

      v22 = *(v16 + 1);
      if (v22)
      {
        free(v22);
      }
    }

    free(v16);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v23 = mach_continuous_time();
    v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "LSM", 73, "GNS_SenSetAccl");
    LbsOsaTrace_WriteLog(0xCu, __str, v24, 4, 1);
  }

  v14 = 6;
LABEL_29:
  v25 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t GNS_SenSetGyro(int a1, unsigned int a2, char *a3)
{
  v31 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_SenSetGyro");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (!a3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Gyro\n");
LABEL_14:
      LbsOsaTrace_WriteLog(0xCu, __str, v13, 2, 1);
    }

LABEL_15:
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 73, "GNS_SenSetGyro");
      LbsOsaTrace_WriteLog(0xCu, __str, v15, 4, 1);
    }

    v16 = 2;
    goto LABEL_29;
  }

  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v29 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NumSamples,%u\n", v29);
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v8 = gnssOsa_Calloc("GNS_SenSetGyro", 287, 1, 0x10uLL);
  if (v8)
  {
    v9 = v8;
    if (a2 < 0xC9)
    {
      v12 = a2;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NumSamples,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 87, "GNS_SenSetGyro", 514, a2);
        LbsOsaTrace_WriteLog(0xCu, __str, v11, 2, 1);
      }

      v12 = 200;
    }

    v17 = gnssOsa_Calloc("GNS_SenSetGyro", 303, v12, 0x20uLL);
    *(v9 + 1) = v17;
    if (v17)
    {
      v18 = gnssOsa_Calloc("GNS_SenSetGyro", 311, 1, 0x20uLL);
      if (v18)
      {
        v19 = v18;
        *v9 = v12;
        if (a2 < 0xC9)
        {
          v21 = 333;
          v20 = a3;
        }

        else
        {
          v20 = &a3[32 * a2 - 6400];
          v21 = 328;
        }

        memcpy_s("GNS_SenSetGyro", v21, *(v9 + 1), 32 * (v12 & 0x7FF), v20, 32 * (v12 & 0x7FFu));
        v19[2] = v9;
        *(v19 + 6) = a1;
        AgpsSendFsmMsg(131, 134, 8782851, v19);
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v27 = mach_continuous_time();
          v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v27), "LSM", 73, "GNS_SenSetGyro");
          v16 = 1;
          LbsOsaTrace_WriteLog(0xCu, __str, v28, 4, 1);
        }

        else
        {
          v16 = 1;
        }

        goto LABEL_29;
      }

      v22 = *(v9 + 1);
      if (v22)
      {
        free(v22);
      }
    }

    free(v9);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v23 = mach_continuous_time();
    v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "LSM", 73, "GNS_SenSetGyro");
    LbsOsaTrace_WriteLog(0xCu, __str, v24, 4, 1);
  }

  v16 = 6;
LABEL_29:
  v25 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t lsim11_01InitSessionMgmt(void)
{
  v7 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 73, "lsim11_01InitSessionMgmt");
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 4, 1);
  }

  byte_2A18CCF26 = 0;
  qword_2A18CCF1C = 0;
  byte_2A18CCF24 = 0;
  byte_2A18CCF36 = 0;
  qword_2A18CCF2C = 0;
  byte_2A18CCF34 = 0;
  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 73, "lsim11_01InitSessionMgmt");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v4, 4, 1);
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim11_02GnmCreateSession(int a1, int a2, int a3, char a4, char a5, char a6, _DWORD *a7)
{
  v37 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 73, "lsim11_02GnmCreateSession");
    LbsOsaTrace_WriteLog(0xCu, __str, v15, 4, 1);
  }

  if (!a7)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmSessId\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 87, "lsim11_02GnmCreateSession", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v21, 2, 1);
    }

LABEL_11:
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_17;
    }

LABEL_16:
    bzero(__str, 0x410uLL);
    v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v24, "LSM", 73, "lsim11_02GnmCreateSession");
    LbsOsaTrace_WriteLog(0xCu, __str, v25, 4, 1);
LABEL_17:
    v26 = 0;
    goto LABEL_18;
  }

  if ((a2 - 1) > 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessType,%u\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 87, "lsim11_02GnmCreateSession", 515, a2);
      LbsOsaTrace_WriteLog(0xCu, __str, v23, 2, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v16 = 0;
  v17 = 1;
  while (1)
  {
    v18 = v17;
    v19 = &g_lsimsm_GnmSession[4 * v16];
    if (!v19[1])
    {
      break;
    }

    v17 = 0;
    v16 = 1;
    if ((v18 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *v19 = a1;
  v19[1] = a2;
  v19[2] = a3;
  *(v19 + 12) = a4;
  *(v19 + 13) = a6;
  *(v19 + 14) = a5;
  *a7 = v16;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v29 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v30 = 78;
    if (v19[1] == 2)
    {
      v30 = 89;
    }

    if (*(v19 + 14))
    {
      v31 = 84;
    }

    else
    {
      v31 = 70;
    }

    if (*(v19 + 12))
    {
      v32 = 84;
    }

    else
    {
      v32 = 70;
    }

    v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SId,%u,GnmSId,%u PosM,%u,Emer,%c,Asyc,%c,GnssIds,%X,CP,%c\n", v29, "LSM", 77, "lsim11_02GnmCreateSession", *v19, *a7, v19[2], v32, v31, *(v19 + 13), v30);
    LbsOsaTrace_WriteLog(0xCu, __str, v33, 3, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v34 = mach_continuous_time();
    v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v34), "LSM", 73, "lsim11_02GnmCreateSession");
    v26 = 1;
    LbsOsaTrace_WriteLog(0xCu, __str, v35, 4, 1);
  }

  else
  {
    v26 = 1;
  }

LABEL_18:
  v27 = *MEMORY[0x29EDCA608];
  return v26;
}

uint64_t lsim11_03GnmUpdateSession(unsigned int a1, const BOOL *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim11_03GnmUpdateSession");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v15 = 515;
LABEL_15:
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmSId,%u\n", v14, "LSM", 87, "lsim11_03GnmUpdateSession", v15, a1);
      LbsOsaTrace_WriteLog(0xCu, __str, v16, 2, 1);
    }

LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  if (a1 > 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v15 = 2052;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v6 = *a2;
  v7 = &g_lsimsm_GnmSession[4 * a1];
  *(v7 + 14) = v6;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v9 = 70;
    if (*(v7 + 14))
    {
      v9 = 84;
    }

    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Updated SId,%u,GnmSId,%u,AsyncNeeded,%c\n", v8, "LSM", 77, "lsim11_03GnmUpdateSession", *v7, a1, v9);
    LbsOsaTrace_WriteLog(0xCu, __str, v10, 3, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "lsim11_03GnmUpdateSession");
    v13 = 1;
    LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
  }

  else
  {
    v13 = 1;
  }

LABEL_17:
  v17 = *MEMORY[0x29EDCA608];
  return v13;
}

BOOL lsim11_04GnmResetSession(unsigned int a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim11_04GnmResetSession");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (a1 > 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 87, "lsim11_04GnmResetSession", 2052, a1);
      v10 = 2;
LABEL_13:
      LbsOsaTrace_WriteLog(0xCu, __str, v9, v10, 1);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v5 = a1;
      v6 = 78;
      if (g_lsimsm_GnmSession[4 * a1 + 1] == 2)
      {
        v6 = 89;
      }

      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Reset SId,%u,GnmSId,%u,CP,%c\n", v4, "LSM", 77, "lsim11_04GnmResetSession", g_lsimsm_GnmSession[4 * a1], a1, v6);
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 3, 1);
    }

    else
    {
      v5 = a1;
    }

    v11 = &g_lsimsm_GnmSession[4 * v5];
    *(v11 + 11) = 0;
    *(v11 + 1) = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim11_04GnmResetSession");
      v10 = 4;
      goto LABEL_13;
    }
  }

  result = a1 < 2;
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim11_05GnmGetSessionInfo(unsigned int a1, int *a2, _DWORD *a3, _BYTE *a4, _BYTE *a5, char *a6)
{
  v32 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim11_05GnmGetSessionInfo");
    LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
  }

  if (a1 >= 2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 87, "lsim11_05GnmGetSessionInfo", 2052, a1);
      v16 = 2;
LABEL_36:
      LbsOsaTrace_WriteLog(0xCu, __str, v15, v16, 1);
      goto LABEL_37;
    }

    goto LABEL_37;
  }

  v17 = &g_lsimsm_GnmSession[4 * a1];
  v18 = v17[1];
  if (v18 == 1)
  {
    if (a6)
    {
      v19 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    if (v18 != 2)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v28 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v28), "LSM", 73, "lsim11_05GnmGetSessionInfo", 2052, a1);
        v16 = 4;
        goto LABEL_36;
      }

LABEL_37:
      v27 = 0;
      goto LABEL_38;
    }

    if (a6)
    {
      v19 = 1;
LABEL_12:
      *a6 = v19;
    }
  }

  if (a3)
  {
    *a3 = v17[2];
  }

  if (a4)
  {
    *a4 = *(v17 + 12);
  }

  if (a5)
  {
    *a5 = *(v17 + 13);
  }

  if (a2)
  {
    *a2 = *v17;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v20 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v21 = 78;
    if (v17[1] == 2)
    {
      v21 = 89;
    }

    if (*(v17 + 14))
    {
      v22 = 84;
    }

    else
    {
      v22 = 70;
    }

    if (*(v17 + 12))
    {
      v23 = 84;
    }

    else
    {
      v23 = 70;
    }

    v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SId,%u,GnmSId,%u,PosM,%u,Emer,%c,Asyc,%c,GnssIdMask,%X,CP,%c\n", v20, "LSM", 73, "lsim11_05GnmGetSessionInfo", *v17, a1, v17[2], v23, v22, *(v17 + 13), v21);
    LbsOsaTrace_WriteLog(0xCu, __str, v24, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v25 = mach_continuous_time();
    v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v25), "LSM", 73, "lsim11_05GnmGetSessionInfo");
    v27 = 1;
    LbsOsaTrace_WriteLog(0xCu, __str, v26, 4, 1);
  }

  else
  {
    v27 = 1;
  }

LABEL_38:
  v29 = *MEMORY[0x29EDCA608];
  return v27;
}

uint64_t lsim11_07GnmGetSessionFromNativeId(int a1, int a2, _DWORD *a3)
{
  v22 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim11_07GnmGetSessionFromNativeId");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (a3)
  {
    v8 = 0;
    v9 = 1;
    while (1)
    {
      v10 = v9;
      if (a2)
      {
        v11 = &g_lsimsm_GnmSession[4 * v8];
        if (v11[1] == a2 && *v11 == a1)
        {
          break;
        }
      }

      v9 = 0;
      v12 = 0;
      v8 = 1;
      if ((v10 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    *a3 = v8;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ExistingSession,SId,%u,Type,%u\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 73, "lsim11_07GnmGetSessionFromNativeId", a1, a2);
      LbsOsaTrace_WriteLog(0xCu, __str, v16, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "lsim11_07GnmGetSessionFromNativeId");
      v12 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmSessIdPtr\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 87, "lsim11_07GnmGetSessionFromNativeId", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v14, 2, 1);
      v12 = 0;
    }
  }

LABEL_17:
  v19 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t lsim11_13GnmAsyncRspNeeded(unsigned int a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim11_13GnmAsyncRspNeeded");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (a1 >= 2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmSId,%u\n", v16);
LABEL_16:
      LbsOsaTrace_WriteLog(0xCu, __str, v4, 2, 1);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v5 = &g_lsimsm_GnmSession[4 * a1];
  if (!v5[1])
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmSId,%u unused\n", v17);
      goto LABEL_16;
    }

LABEL_17:
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim11_13GnmAsyncRspNeeded");
      LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
    }

    v11 = 0;
    goto LABEL_20;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v7 = 70;
    if (*(v5 + 14))
    {
      v7 = 84;
    }

    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GnmSId,%u,Asyc,%c\n", v6, "LSM", 73, "lsim11_13GnmAsyncRspNeeded", a1, v7);
    LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "lsim11_13GnmAsyncRspNeeded");
    LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
  }

  v11 = *(v5 + 14);
LABEL_20:
  v14 = *MEMORY[0x29EDCA608];
  return v11 & 1;
}

__n128 Init_DB_SV_Nav_Mess(unint64_t a1)
{
  v14[1] = *MEMORY[0x29EDCA608];
  v2 = a1 + 39124;
  *(a1 + 39300) = 0;
  *(a1 + 39268) = 0u;
  *(a1 + 39284) = 0u;
  v3 = a1 + 0x2000;
  *(a1 + 39236) = 0u;
  *(a1 + 39252) = 0u;
  *(a1 + 39204) = 0u;
  *(a1 + 39220) = 0u;
  *(a1 + 39172) = 0u;
  *(a1 + 39188) = 0u;
  *(a1 + 39140) = 0u;
  *(a1 + 39156) = 0u;
  *(a1 + 39124) = 0u;
  v4 = a1 + 33605;
  v5 = (a1 + 33784);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = vdupq_n_s64(a1);
  *(a1 + 48) = vaddq_s64(v6, xmmword_2997614F0);
  *(a1 + 16) = a1 + 37878;
  *(a1 + 24) = a1 + 38056;
  *(a1 + 32) = a1 + 38234;
  *(a1 + 40) = a1 + 38412;
  *(a1 + 64) = a1 + 37700;
  *(a1 + 72) = a1 + 38590;
  *(a1 + 80) = vaddq_s64(v6, xmmword_299761500);
  *(a1 + 96) = v2;
  *(v3 + 272) = 0;
  *&v7 = 0x101010101010101;
  *(&v7 + 1) = 0x101010101010101;
  *(a1 + 8466) = v7;
  *(a1 + 8482) = v7;
  *(a1 + 8504) = a1 + 33734;
  *(a1 + 8512) = a1 + 36364;
  *(a1 + 8552) = a1 + 37473;
  *(a1 + 8560) = a1 + 37651;
  *(a1 + 8568) = a1 + 37829;
  *(a1 + 8520) = a1 + 38007;
  *(a1 + 8528) = a1 + 38185;
  *(a1 + 8536) = a1 + 38363;
  *(a1 + 8544) = a1 + 38541;
  *(a1 + 8576) = a1 + 38719;
  *(a1 + 8584) = a1 + 38897;
  *(a1 + 8592) = a1 + 39075;
  *(a1 + 8600) = a1 + 39253;
  *(a1 + 11208) = a1 + 33637;
  *(a1 + 11216) = a1 + 34424;
  *(a1 + 16272) = vaddq_s64(v6, xmmword_299761510);
  *(a1 + 16288) = a1 + 37732;
  *(a1 + 16248) = a1 + 37910;
  *(a1 + 16264) = a1 + 38266;
  *(a1 + 16256) = a1 + 38088;
  *(a1 + 16304) = a1 + 38622;
  *(a1 + 16312) = a1 + 38800;
  *(a1 + 16320) = a1 + 38978;
  *(a1 + 16328) = a1 + 39156;
  *&v8 = 0x7F7F7F7F7F7F7F7FLL;
  *(&v8 + 1) = 0x7F7F7F7F7F7F7F7FLL;
  *(a1 + 16336) = v8;
  *(a1 + 16352) = v8;
  *(a1 + 16368) = v8;
  *(a1 + 0x4000) = v8;
  *(a1 + 16400) = v8;
  *(a1 + 16416) = v8;
  *(a1 + 16432) = v8;
  *(a1 + 16448) = v8;
  *(a1 + 16464) = v8;
  *(a1 + 16480) = 0x7F7F7F7F7F7F7F7FLL;
  *(a1 + 16536) = 0;
  *(a1 + 16504) = 0u;
  *(a1 + 16520) = 0u;
  *(a1 + 16488) = 0u;
  *(a1 + 16560) = a1 + 33661;
  *(a1 + 16568) = a1 + 34904;
  *(a1 + 16608) = a1 + 37400;
  *(a1 + 16616) = a1 + 37578;
  *(a1 + 16624) = a1 + 37756;
  *(a1 + 16576) = a1 + 37934;
  *(a1 + 16584) = a1 + 38112;
  *(a1 + 16592) = a1 + 38290;
  *(a1 + 16600) = a1 + 38468;
  *(a1 + 16632) = a1 + 38646;
  *(a1 + 16640) = a1 + 38824;
  *(a1 + 16648) = a1 + 39002;
  *(a1 + 16656) = a1 + 39180;
  *(a1 + 16728) = 0;
  *(a1 + 16696) = 0u;
  *(a1 + 16712) = 0u;
  *(a1 + 16664) = 0u;
  *(a1 + 16680) = 0u;
  *(a1 + 24416) = a1 + 33697;
  *(a1 + 24424) = a1 + 35624;
  *(a1 + 24464) = a1 + 37436;
  *(a1 + 24472) = a1 + 37614;
  *(a1 + 24432) = a1 + 37970;
  *(a1 + 24440) = a1 + 38148;
  *(a1 + 24448) = a1 + 38326;
  *(a1 + 24456) = a1 + 38504;
  *(a1 + 24480) = vaddq_s64(v6, xmmword_299761520);
  *(a1 + 24496) = a1 + 38860;
  *(a1 + 24504) = a1 + 39038;
  *(a1 + 24512) = a1 + 39216;
  *(a1 + 16544) = vaddq_s64(v6, xmmword_299761530);
  *(v4 + 176) = 257;
  *(v4 + 144) = v7;
  *(v4 + 160) = v7;
  *(v4 + 112) = v7;
  *(v4 + 128) = v7;
  *(v4 + 80) = v7;
  *(v4 + 96) = v7;
  *(v4 + 48) = v7;
  *(v4 + 64) = v7;
  *(v4 + 16) = v7;
  *(v4 + 32) = v7;
  *v4 = v7;
  bzero(v5, 0xDE8uLL);
  v14[0] = 0.0;
  *(a1 + 8440) = 0;
  *(a1 + 8456) = 0;
  *(a1 + 8448) = 0;
  API_Get_UTC_Cor(1, v14);
  v9 = -0.5;
  if (v14[0] > 0.0)
  {
    v9 = 0.5;
  }

  v10 = v14[0] + v9;
  if (v14[0] + v9 <= 2147483650.0)
  {
    if (v10 >= -2147483650.0)
    {
      v11 = v10;
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = -1;
  }

  *(v3 + 266) = v11;
  *(v3 + 269) = v11;
  *(a1 + 8444) = 1;
  EvLog_v("Init_DBnm: Default GPS-UTC %d s applied", v11);
  result.n128_u64[0] = 0x101010101010101;
  result.n128_u64[1] = 0x101010101010101;
  *(a1 + 39426) = result;
  *(a1 + 39399) = result;
  *(a1 + 39415) = result;
  *(a1 + 39367) = result;
  *(a1 + 39383) = result;
  *(a1 + 39335) = result;
  *(a1 + 39351) = result;
  *(a1 + 39303) = result;
  *(a1 + 39319) = result;
  *(a1 + 39442) = 0;
  *(a1 + 39450) = 0;
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Init_DB_SV_Nav_Mess_NV(uint64_t a1)
{
  v2 = 0;
  v145 = *MEMORY[0x29EDCA608];
  v3 = a1 + 33548;
  v4 = a1 + 24368;
  v5 = a1 + 16224;
  memset(v144, 0, 108);
  v6 = 104;
  do
  {
    v7 = v2 + 1;
    if (Core_Load_GPS_Eph((v2 + 1), v144))
    {
      v8 = SLODWORD(v144[0]) < 1;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9 = (a1 + v6);
      v10 = v144[5];
      v9[4] = v144[4];
      v9[5] = v10;
      *(v9 + 92) = *(&v144[5] + 12);
      v11 = v144[1];
      *v9 = v144[0];
      v9[1] = v11;
      v12 = v144[3];
      v9[2] = v144[2];
      v9[3] = v12;
      *(*(a1 + 16) + v2) = 1;
      *(*(a1 + 48) + v2) = 1;
    }

    v6 += 108;
    ++v2;
  }

  while (v7 != 32);
  v13 = 0;
  v14 = 8608;
  memset(v144, 0, 108);
  do
  {
    if (Core_Load_QZSS_Eph((v13 - 63), v144))
    {
      v15 = SLODWORD(v144[0]) < 1;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = (a1 + v14);
      v17 = v144[5];
      v16[4] = v144[4];
      v16[5] = v17;
      *(v16 + 92) = *(&v144[5] + 12);
      v18 = v144[1];
      *v16 = v144[0];
      v16[1] = v18;
      v19 = v144[3];
      v16[2] = v144[2];
      v16[3] = v19;
      *(*(a1 + 8520) + v13) = 1;
      *(*(a1 + 8552) + v13) = 1;
    }

    ++v13;
    v14 += 108;
  }

  while (v13 != 10);
  memset(v144, 0, 62);
  v20 = 4084;
  v21 = 11224;
  do
  {
    if (Core_Load_GLON_Eph((v20 + 13), v144))
    {
      v22 = SLODWORD(v144[0]) < 1;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (a1 + v21);
      v24 = v144[1];
      *v23 = v144[0];
      v23[1] = v24;
      v25 = v144[3];
      v23[2] = v144[2];
      v23[3] = v25;
      *(*(a1 + 16248) + v20 - 4084) = 1;
      *(*(a1 + 16272) + v20 - 4084) = 1;
      *(a1 + 4 * v20) = DWORD2(v144[0]);
    }

    ++v20;
    v21 += 64;
  }

  while (v20 != 4108);
  v26 = 0;
  memset(v144, 0, 87);
  v27 = 16736;
  do
  {
    v28 = v26 + 1;
    if (Core_Load_GAL_Eph((v26 + 1), v144))
    {
      v29 = SLODWORD(v144[0]) < 1;
    }

    else
    {
      v29 = 1;
    }

    if (!v29)
    {
      v30 = a1 + v27;
      v31 = v144[3];
      *(v30 + 32) = v144[2];
      *(v30 + 48) = v31;
      *(v30 + 64) = v144[4];
      *(v30 + 80) = *&v144[5];
      v32 = v144[1];
      *v30 = v144[0];
      *(v30 + 16) = v32;
      *(*(a1 + 16576) + v26) = 1;
      *(*(a1 + 16608) + v26) = 1;
    }

    v27 += 88;
    ++v26;
  }

  while (v28 != 36);
  v33 = 0;
  LODWORD(v144[6]) = 0;
  memset(v144, 0, 23);
  memset(&v144[1] + 8, 0, 64);
  v34 = 24520;
  *(&v144[5] + 6) = 0;
  do
  {
    v35 = v33 + 1;
    if (Core_Load_BDS_Eph((v33 + 1), v144))
    {
      v36 = SLODWORD(v144[0]) < 1;
    }

    else
    {
      v36 = 1;
    }

    if (!v36)
    {
      v37 = a1 + v34;
      v38 = v144[5];
      *(v37 + 64) = v144[4];
      *(v37 + 80) = v38;
      *(v37 + 96) = v144[6];
      v39 = v144[1];
      *v37 = v144[0];
      *(v37 + 16) = v39;
      v40 = v144[3];
      *(v37 + 32) = v144[2];
      *(v37 + 48) = v40;
      *(*(a1 + 24432) + v33) = 1;
      *(*(a1 + 24464) + v33) = 1;
    }

    v34 += 100;
    ++v33;
  }

  while (v35 != 37);
  v41 = 0;
  memset(v144, 0, 44);
  v42 = 7016;
  do
  {
    v43 = v41 + 1;
    if (Core_Load_GPS_Alm((v41 + 1), v144))
    {
      v44 = SLODWORD(v144[0]) < 1;
    }

    else
    {
      v44 = 1;
    }

    if (!v44)
    {
      v45 = (a1 + v42);
      v46 = v144[1];
      *v45 = v144[0];
      v45[1] = v46;
      *(v45 + 28) = *(&v144[1] + 12);
      *(*(a1 + 24) + v41) = 1;
      *(*(a1 + 64) + v41) = 1;
    }

    v42 += 44;
    ++v41;
  }

  while (v43 != 32);
  v47 = 0;
  memset(v144, 0, 44);
  v48 = 10768;
  do
  {
    if (Core_Load_QZSS_Alm((v47 - 63), v144))
    {
      v49 = SLODWORD(v144[0]) < 1;
    }

    else
    {
      v49 = 1;
    }

    if (!v49)
    {
      v50 = (a1 + v48);
      v51 = v144[1];
      *v50 = v144[0];
      v50[1] = v51;
      *(v50 + 28) = *(&v144[1] + 12);
      *(*(a1 + 8528) + v47) = 1;
      *(*(a1 + 8568) + v47) = 1;
    }

    ++v47;
    v48 += 44;
  }

  while (v47 != 10);
  *v143 = 0;
  *&v143[8] = 0;
  memset(&v143[12], 0, 24);
  v52 = 4084;
  v53 = 15352;
  do
  {
    if (Core_Load_GLON_Alm((v52 + 13), v143))
    {
      v54 = *v143 < 1;
    }

    else
    {
      v54 = 1;
    }

    if (!v54)
    {
      v144[0] = 0uLL;
      *(&v144[1] + 5) = 0;
      *&v144[1] = 0;
      *(&v144[1] + 14) = 0;
      BYTE6(v144[2]) = 0;
      GLON_AlmBin2Int(v143, v144);
      if (BYTE4(v144[2]) == 1)
      {
        v55 = a1 + v53;
        v56 = *&v143[16];
        *v55 = *v143;
        *(v55 + 16) = v56;
        *(v55 + 32) = *&v143[32];
        *(*(a1 + 16256) + v52 - 4084) = 1;
      }

      *(*(a1 + 16288) + v52 - 4084) = 1;
      v57 = BYTE11(v144[0]);
      v58 = BYTE11(v144[0]) - 32;
      if (BYTE11(v144[0]) <= 0x18u)
      {
        v58 = 2139062143;
      }

      if (BYTE11(v144[0]) >= 7u)
      {
        v57 = v58;
      }

      if (v57 != 2139062143)
      {
        *(a1 + 4 * v52) = v57;
      }
    }

    ++v52;
    v53 += 36;
  }

  while (v52 != 4108);
  v59 = 0;
  memset(v144, 0, 35);
  v60 = 23072;
  do
  {
    v61 = v59 + 1;
    if (Core_Load_GAL_Alm((v59 + 1), v144))
    {
      v62 = SLODWORD(v144[0]) < 1;
    }

    else
    {
      v62 = 1;
    }

    if (!v62)
    {
      v63 = a1 + v60;
      v64 = v144[1];
      *v63 = v144[0];
      *(v63 + 16) = v64;
      *(v63 + 32) = v144[2];
      *(*(a1 + 16584) + v59) = 1;
      *(*(a1 + 16624) + v59) = 1;
    }

    v60 += 36;
    ++v59;
  }

  while (v61 != 36);
  v65 = 0;
  memset(v144, 0, 44);
  v66 = 31920;
  do
  {
    v67 = v65 + 1;
    if (Core_Load_BDS_Alm((v65 + 1), v144))
    {
      v68 = SLODWORD(v144[0]) < 1;
    }

    else
    {
      v68 = 1;
    }

    if (!v68)
    {
      v69 = (a1 + v66);
      v70 = v144[1];
      *v69 = v144[0];
      v69[1] = v70;
      *(v69 + 28) = *(&v144[1] + 12);
      *(*(a1 + 24440) + v65) = 1;
      *(*(a1 + 24480) + v65) = 1;
    }

    v66 += 44;
    ++v65;
  }

  while (v67 != 37);
  v71 = 0;
  v72 = 0;
  v73 = p_NV;
  v74 = p_NV + 0x4000;
  v75 = *a1;
  v76 = 55665;
  do
  {
    v77 = *(p_NV + 88 + v71) ^ BYTE1(v76);
    v76 = 52845 * (v76 + v77) + 22719;
    v72 += v77;
    ++v71;
  }

  while (v71 != 40);
  if (*(p_NV + 80) == v72)
  {
    v78 = *(p_NV + 92);
    v75[1] = *(p_NV + 108);
  }

  else
  {
    *&v78 = 0x101010101010101;
    *(&v78 + 1) = 0x101010101010101;
    v75[1] = v78;
  }

  *v75 = v78;
  v79 = 0;
  v80 = 0;
  v81 = *(a1 + 8504);
  v82 = 55665;
  do
  {
    v83 = *(v73 + 5824 + v79) ^ BYTE1(v82);
    v82 = 52845 * (v82 + v83) + 22719;
    v80 += v83;
    ++v79;
  }

  while (v79 != 16);
  if (*(v73 + 5816) == v80)
  {
    v84 = *(v73 + 5828);
    *(v81 + 8) = *(v73 + 5836);
    *v81 = v84;
  }

  else
  {
    *v81 = 0x101010101010101;
    *(v81 + 8) = 257;
  }

  v85 = 0;
  v86 = 0;
  v87 = *(a1 + 11208);
  v88 = 55665;
  do
  {
    v89 = *(v73 + 19168 + v85) ^ BYTE1(v88);
    v88 = 52845 * (v88 + v89) + 22719;
    v86 += v89;
    ++v85;
  }

  while (v85 != 32);
  if (*(v73 + 19160) == v86)
  {
    v90 = *(v73 + 19172);
    *(v87 + 16) = *(v73 + 19188);
    *v87 = v90;
  }

  else
  {
    *(v87 + 8) = 0x101010101010101;
    *(v87 + 16) = 0x101010101010101;
    *v87 = 0x101010101010101;
  }

  v91 = 0;
  v92 = 0;
  v93 = *(a1 + 16560);
  v94 = 55665;
  do
  {
    v95 = *(v73 + 7608 + v91) ^ BYTE1(v94);
    v94 = 52845 * (v94 + v95) + 22719;
    v92 += v95;
    ++v91;
  }

  while (v91 != 40);
  if (*(v73 + 7600) == v92)
  {
    v96 = *(v73 + 7612);
    v97 = *(v73 + 7628);
    *(v93 + 32) = *(v73 + 7644);
    *(v93 + 16) = v97;
  }

  else
  {
    *(v93 + 32) = 16843009;
    *&v96 = 0x101010101010101;
    *(&v96 + 1) = 0x101010101010101;
    *(v93 + 16) = v96;
  }

  *v93 = v96;
  v98 = 0;
  v99 = 0;
  v100 = *(a1 + 24416);
  v101 = 55665;
  do
  {
    result = BYTE1(v101);
    v103 = *(v73 + 12864 + v98) ^ BYTE1(v101);
    v101 = 52845 * (v101 + v103) + 22719;
    v99 += v103;
    ++v98;
  }

  while (v98 != 48);
  if (*(v73 + 12856) == v99)
  {
    v104 = *(v73 + 12868);
    v105 = *(v73 + 12884);
    *(v100 + 29) = *(v73 + 12897);
    *(v100 + 16) = v105;
  }

  else
  {
    *(v100 + 29) = 0x101010101010101;
    *&v104 = 0x101010101010101;
    *(&v104 + 1) = 0x101010101010101;
    *(v100 + 16) = v104;
  }

  *v100 = v104;
  v106 = 0;
  v107 = 0;
  v108 = *(a1 + 16544);
  *(v108 + 31) = 0x101010101010101;
  *&v109 = 0x101010101010101;
  *(&v109 + 1) = 0x101010101010101;
  *v108 = v109;
  *(v108 + 16) = v109;
  v110 = 55665;
  do
  {
    v111 = *(v73 + 160 + v106) ^ BYTE1(v110);
    v110 = 52845 * (v110 + v111) + 22719;
    v107 += v111;
    ++v106;
  }

  while (v106 != 24);
  if (*(v73 + 152) == v107 && (v112 = *(v73 + 160), v144[0] = *(v73 + 164), LODWORD(v144[1]) = *(v73 + 180), v112 >= 1))
  {
    *(a1 + 8440) = v112;
    *(a1 + 8444) = v144[0];
    *(a1 + 8460) = v144[1];
  }

  else
  {
    *(a1 + 8444) = 0;
  }

  v113 = 0;
  v114 = 0;
  v115 = 55665;
  do
  {
    v116 = *(v73 + 136 + v113) ^ BYTE1(v115);
    v115 = 52845 * (v115 + v116) + 22719;
    v114 += v116;
    ++v113;
  }

  while (v113 != 16);
  if (*(v73 + 128) == v114)
  {
    v117 = *(v73 + 136);
    *&v144[0] = *(v73 + 140);
    DWORD2(v144[0]) = *(v73 + 148);
    if (v117 >= 1)
    {
      *(a1 + 8424) = v117;
      *(a1 + 8428) = *&v144[0];
      *(a1 + 8436) = DWORD2(v144[0]);
      *(a1 + 8428) = 4;
    }
  }

  v118 = 0;
  v119 = 0;
  v120 = 55665;
  do
  {
    v121 = *(v73 + 7656 + v118) ^ BYTE1(v120);
    v120 = 52845 * (v120 + v121) + 22719;
    v119 += v121;
    ++v118;
  }

  while (v118 != 16);
  if (*(v73 + 7648) == v119)
  {
    v122 = *(v73 + 7656);
    DWORD2(v144[0]) = *(v73 + 7668);
    *&v144[0] = *(v73 + 7660);
    if (v122 >= 1)
    {
      *(v4 + 4) = *&v144[0];
      v123 = DWORD2(v144[0]);
      *v4 = v122;
      *(v4 + 4) = 4;
      *(v4 + 12) = v123;
      *(v4 + 16) = v122;
      v124 = *(v4 + 8);
      *(v4 + 20) = 4;
      *(a1 + 24392) = v124 * 2.91038305e-11;
      *(a1 + 24400) = *(v4 + 10) * 4.4408921e-16;
      *(v4 + 40) = 3600 * v123;
      *(v4 + 44) = *(v4 + 13);
    }
  }

  v125 = 0;
  v126 = 0;
  v127 = 55665;
  do
  {
    v128 = *(v73 + 12920 + v125) ^ BYTE1(v127);
    v127 = 52845 * (v127 + v128) + 22719;
    v126 += v128;
    ++v125;
  }

  while (v125 != 24);
  if (*(v73 + 12912) == v126)
  {
    v129 = *(v73 + 12920);
    v144[0] = *(v73 + 12924);
    if (v129 >= 1)
    {
      *v3 = v129;
      *(v3 + 4) = v144[0];
      *(v3 + 4) = 4;
    }
  }

  v130 = 0;
  v131 = 0;
  v132 = 55665;
  do
  {
    v133 = *(v73 + 19208 + v130) ^ BYTE1(v132);
    v132 = 52845 * (v132 + v133) + 22719;
    v131 += v133;
    ++v130;
  }

  while (v130 != 32);
  if (*(v73 + 19200) == v131)
  {
    v134 = *(v73 + 19208);
    v135 = *(v74 + 2832);
    v136 = *(v74 + 2834);
    v137 = *(v74 + 2836);
    v138 = *(v74 + 2840);
    LOWORD(v144[0]) = *(v73 + 19225);
    BYTE2(v144[0]) = *(v73 + 19227);
    v139 = *(v74 + 2844);
    v140 = *(v74 + 2848);
    v141 = v73 + 19233;
    *v143 = *v141;
    v143[2] = *(v141 + 2);
    if (v134 >= 1)
    {
      *(a1 + 16216) = v134;
      *v5 = v135;
      *(v5 + 2) = v136;
      *(a1 + 16228) = v137;
      *(v5 + 8) = v138;
      *(a1 + 16233) = v144[0];
      *(a1 + 16235) = BYTE2(v144[0]);
      *(a1 + 16236) = v139;
      *(v5 + 16) = v140;
      *(a1 + 16241) = *v143;
      *(a1 + 16243) = v143[2];
      *(v5 + 72) = 1;
    }
  }

  v142 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_Map_Vector(int *a1, uint64_t a2, uint64_t a3)
{
  v140[1] = *MEMORY[0x29EDCA608];
  v6 = a1 + 5944;
  result = Core_Get_ExtA_MapV(6000, (a1 + 5944));
  if (!result)
  {
    goto LABEL_65;
  }

  *(a1 + 24988) = 1;
  a1[6248] = 0;
  v8 = a1[1];
  v9 = a1[5944];
  v10 = v8 - v9;
  a1[6250] = v8 - v9;
  v11 = a1[5684];
  v12 = v11 == 1 && a1[5683] == 8 && a1[5685] == 3;
  if (a1[5681] != 1)
  {
    v13 = 0;
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_10:
    if (v11 || a1[5683] == 8)
    {
      if (*(a2 + 11162))
      {
        goto LABEL_13;
      }
    }

    else if ((*(a2 + 11162) & 1) != 0 && v13 & 1 | (v10 < 3101))
    {
      a1[6248] = 11;
      goto LABEL_13;
    }

    result = 0;
    v73 = 12;
    goto LABEL_64;
  }

  v13 = *(a1 + 22756);
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_13:
  v130 = v13;
  if (*(p_NA + 319) == 1)
  {
    v14 = *(p_NA + 19388);
    if (v14)
    {
      v127 = 1;
      if ((a1[6269] & 1) == 0)
      {
        *(a1 + 25068) = 1;
        *(a1 + 25076) = 1;
      }
    }

    else
    {
      v127 = 0;
    }
  }

  else
  {
    v127 = 0;
    v14 = 0;
  }

  v15 = (a2 + 26848);
  v128 = v14;
  if (*(a3 + 952) >= 3.0)
  {
    v17 = *(a3 + 880);
    if (v17 < 15.0)
    {
      v129 = 0;
      v131 = 0;
      v132 = 1;
      goto LABEL_25;
    }

    v132 = 0;
    v129 = v17 < 45.0;
    v16 = v17 >= 45.0;
  }

  else
  {
    v132 = 0;
    v129 = 0;
    v16 = 1;
  }

  v131 = v16;
LABEL_25:
  v18 = *(a1 + 2973) * 0.0174532925;
  v19 = *(a1 + 2974);
  __x = cos(v18);
  v20 = *(a1 + 2977);
  v21 = __sincos_stret(v20 * 0.0174532925);
  if ((a1[5952] & 1) == 0)
  {
    *(a1 + 2975) = *(a1 + 102);
  }

  v22 = v19 * 0.0174532925;
  v23 = v9 - *v15;
  if (v9 == *v15)
  {
    v24 = 1.0;
    if (v10 >= 1000)
    {
      v24 = v10 * 0.001 + 1.0;
    }
  }

  else
  {
    if ((v23 - 1) >> 4 > 0x176)
    {
      goto LABEL_38;
    }

    if (*(a2 + 26920) != 1)
    {
      goto LABEL_38;
    }

    v25 = *(a2 + 26856);
    v26 = *(a2 + 26864);
    v27 = cos(__x);
    v28 = vabdd_f64(v20, *(a2 + 26888));
    if (v28 >= 5.0)
    {
      goto LABEL_38;
    }

    v29 = vabdd_f64(*(a1 + 2979), *(a2 + 26904));
    if (v29 < 2.0 && (v30 = v25 * 0.0174532925, v31 = v26 * 0.0174532925, v32 = sqrt(v27 * ((v22 - v31) * 6378137.0) * (v27 * ((v22 - v31) * 6378137.0)) + (v18 - v25 * 0.0174532925) * 6378137.0 * ((v18 - v25 * 0.0174532925) * 6378137.0)), v32 < *(a2 + 26896) * 0.3))
    {
      *v6 = *v15;
      v33 = *(a2 + 26864);
      v34 = *(a2 + 26880);
      v35 = *(a2 + 26896);
      *(v6 + 8) = *(a2 + 26912);
      *(v6 + 2) = v34;
      *(v6 + 3) = v35;
      *(v6 + 1) = v33;
      __x = cos(v30);
      v36 = a1[5944];
      a1[6250] = v8 - v36;
      v37 = (v8 - v36) * 0.001 + 1.0;
      if (v8 - v36 <= 999)
      {
        v37 = 1.0;
      }

      v126 = v29;
      v24 = v37;
      EvLog_v("NK_Map_Vector: DUPLICATE OS_TT P %d C %d [dt] T %d D %g W %g H %g ", *v15, v36, v23, v32, v126, v28);
      v22 = v31;
      v18 = v30;
    }

    else
    {
LABEL_38:
      v138 = v18;
      v139 = v22;
      v140[0] = *(a1 + 2975);
      Geo2ECEF(&v138, &WGS84_Datum, (a2 + 26952));
      v38 = *(a1 + 2978);
      v39 = v21.__cosval * v38;
      v40 = v21.__sinval * v38;
      v41 = v22 + v21.__sinval * v38 / *(a2 + 27080);
      v138 = v18 + v21.__cosval * v38 / *(a2 + 27072);
      v139 = v41;
      Geo2ECEF(&v138, &WGS84_Datum, (a2 + 26928));
      *(a2 + 26976) = v39;
      *(a2 + 26984) = v40;
      *v15 = *v6;
      v42 = *(v6 + 1);
      v43 = *(v6 + 2);
      v44 = *(v6 + 3);
      *(a2 + 26912) = *(v6 + 8);
      *(a2 + 26880) = v43;
      *(a2 + 26896) = v44;
      *(a2 + 26864) = v42;
      *(a2 + 26920) = 0;
      v24 = 1.0;
    }
  }

  v45 = 0;
  v138 = 0.0;
  v139 = 0.0;
  v140[0] = 0;
  v135 = 0.0;
  v136 = 0.0;
  v137 = 0;
  do
  {
    *&v140[v45] = *&a1[2 * v45 + 170] - *(a2 + 26944 + 8 * v45);
    v46 = v45 + 3;
    --v45;
  }

  while (v46 > 1);
  v47 = 0;
  v48 = v138;
  v49 = v139;
  v50 = (a1 + 212);
  v51 = *v140;
  do
  {
    v52 = *(v50 - 1) * v49 + *(v50 - 2) * v48;
    v53 = *v50;
    v50 += 3;
    *(&v135 + v47) = v52 + v53 * v51;
    v47 += 8;
  }

  while (v47 != 24);
  v54 = *(a2 + 26976);
  v55 = *(a2 + 26984);
  v56 = sqrt(v55 * v55 + 0.0 + v54 * v54);
  if (v56 <= 1.0e-14 || (v57 = sqrt(v136 * v136 + 0.0 + v135 * v135), v57 <= 1.0e-14))
  {
LABEL_59:
    result = 0;
    v73 = 15;
LABEL_64:
    a1[6248] = v73;
    *(a1 + 24996) = 0;
    goto LABEL_65;
  }

  v58 = 0;
  v59 = (0.0 - v54 * v135 - v55 * v136) / (v56 * v57);
  v60 = fabs(v59);
  if (v60 > 1.0)
  {
    v59 = v60 / v59;
  }

  do
  {
    *&v140[v58] = *&a1[2 * v58 + 170] - *(a2 + 26968 + 8 * v58);
    v61 = v58 + 3;
    --v58;
  }

  while (v61 > 1);
  v62 = 0;
  v63 = v138;
  v64 = v139;
  v65 = (a1 + 212);
  v66 = *v140;
  do
  {
    v67 = *(v65 - 1) * v64 + *(v65 - 2) * v63;
    v68 = *v65;
    v65 += 3;
    *(&v135 + v62) = v67 + v68 * v66;
    v62 += 8;
  }

  while (v62 != 24);
  v69 = sqrt(v136 * v136 + 0.0 + v135 * v135);
  if (v69 <= 1.0e-14)
  {
    if (v59 < 0.0)
    {
LABEL_57:
      result = 0;
      *(a1 + 24996) = 0;
      v72 = 16;
      goto LABEL_58;
    }

    goto LABEL_59;
  }

  v70 = (v54 * v135 + 0.0 + v55 * v136) / (v56 * v69);
  v71 = fabs(v70);
  if (v71 > 1.0)
  {
    v70 = v71 / v70;
  }

  if (v59 < 0.0)
  {
    goto LABEL_57;
  }

  if (v70 < 0.0)
  {
    result = 0;
    *(a1 + 24996) = 0;
    v72 = 17;
LABEL_58:
    a1[6248] = v72;
    goto LABEL_65;
  }

  v75 = 0;
  v76 = 0.0;
  do
  {
    v77 = *(a2 + 26968 + 8 * v75) - *&a1[2 * v75 + 170];
    v76 = v76 + v77 * v77;
    v78 = v75 + 3;
    --v75;
  }

  while (v78 > 1);
  v79 = acos(v70);
  v80 = sqrt(v76);
  v81 = __sincos_stret(v79);
  v82 = v81.__sinval * v80;
  *(a1 + 3008) = v81.__sinval * v80;
  *(a1 + 3007) = v81.__cosval * v80;
  if (v81.__cosval * v80 < 0.0)
  {
    if (v81.__cosval * v80 < *(a1 + 2978) * -0.05)
    {
      result = 0;
      v73 = 13;
      goto LABEL_64;
    }

    *(a1 + 3007) = 0;
  }

  v83 = v131;
  if (v82 > 35.0)
  {
    v83 = 1;
  }

  if (v83 == 1 && *(a1 + 22992) == 1 && a1[5749] == 1 && (a1[5752] & 1) == 0 && !a1[6256] && *(a1 + 2880) < 90000.0 && (a1[5750] - 3) <= 1)
  {
    v84 = (*(a1 + 2877) - v18) * 6378137.0;
    v85 = __x * ((*(a1 + 2878) - v22) * 6378137.0);
    v86 = *(a2 + 26976);
    v87 = *(a2 + 26984);
    v88 = v87 * v87 + v86 * v86;
    v89 = v86 * v87;
    if (v88 <= 1.0)
    {
      v88 = 1.0;
    }

    v90 = v86 * v86;
    v91 = (v89 * v85 + v90 * v84) / v88;
    v92 = (v84 * v89 + v90 * v85) / v88;
    *(a1 + 3010) = sqrt(v92 * v92 + v91 * v91);
    v134[2] = 0.0;
    v134[0] = v18 + v91 * 0.000000156785594;
    v134[1] = v22 + v92 * (1.0 / (__x * 6378137.0));
    v93 = Horiz_Diff_Sqd(v134, a1 + 2877);
    *(a1 + 3011) = sqrt(v93);
    v94 = v93 < *(a1 + 2880) * 9.0;
    v82 = *(a1 + 3008);
  }

  else
  {
    v94 = 0;
  }

  if (v82 > 35.0 && (!v94 || *(a1 + 3011) > 17.5 || *(a1 + 3010) > *(a1 + 2978) * 1.5))
  {
    result = 0;
    v73 = 14;
    goto LABEL_64;
  }

  v95 = *(a2 + 11152);
  if (v95 <= 0.5)
  {
    v96 = 7000;
  }

  else
  {
    v96 = 3000;
  }

  if (v95 <= 5.0)
  {
    v97 = v96;
  }

  else
  {
    v97 = 5000;
  }

  if (v95 > 17.0)
  {
    v97 = 7000;
  }

  v98 = *a1;
  if (*a1 - *(a2 + 11248) >= v97)
  {
    v99 = (a1 + 238);
    if (*(a2 + 11188) >= 2)
    {
      v99 = (a2 + 11192);
    }
  }

  else
  {
    v99 = (a2 + 11240);
  }

  v100 = *(a1 + 2977);
  v101 = *v99 - v100;
  *(a1 + 3009) = v101;
  if (v101 >= 180.0)
  {
    v102 = -360.0;
  }

  else
  {
    if (v101 >= -180.0)
    {
      goto LABEL_107;
    }

    v102 = 360.0;
  }

  v101 = v101 + v102;
  *(a1 + 3009) = v101;
LABEL_107:
  v103 = fabs(v101);
  if ((v132 | v129) == 1)
  {
    if (v103 > 45.0)
    {
      result = 0;
      v73 = 18;
      goto LABEL_64;
    }
  }

  else if (v103 > 45.0 && v94 && *(a1 + 3011) > 17.5 && *(a1 + 3010) > *(a1 + 2978) * 1.5)
  {
    result = 0;
    v73 = 19;
    goto LABEL_64;
  }

  v104 = *(a1 + 3007);
  v105.f64[0] = v21.__cosval;
  v105.f64[1] = v21.__sinval;
  v106 = vdivq_f64(vmulq_n_f64(v105, v104), *(a2 + 27072));
  v107 = vdupq_n_s64(0x3F91DF46A2529D44uLL);
  v108 = *(a1 + 2978);
  if (v108 - v104 <= 0.0)
  {
    v109 = 1.0;
  }

  else
  {
    v109 = v108 - v104;
  }

  v110 = *(a1 + 2979);
  if (v130)
  {
    v111 = v108 * 0.05;
    v112 = 0.25;
  }

  else
  {
    v111 = v108 * 3.0;
    if ((a1[5961] & 1) == 0 && (*(a1 + 23841) & 1) == 0)
    {
      v113 = v127 ^ 1;
      if ((v128 - 8) > 0xFFFFFFFC)
      {
        v113 = 1;
      }

      if (v113)
      {
        v114 = v110 * 0.333333333;
        goto LABEL_126;
      }
    }

    v112 = 0.166666667;
  }

  v114 = v110 * v112;
LABEL_126:
  v115 = vmlaq_f64(v106, v107, *(a1 + 5946));
  v116 = v132;
  if (v109 >= v108 * 0.333333333)
  {
    v116 = 1;
  }

  if ((v116 & 1) == 0)
  {
    v114 = v114 + v104 * 0.5 * (1.0 / sqrt(v109));
  }

  *(a1 + 23848) = 1;
  a1[5963] = 1;
  a1[5965] = 0;
  *(a1 + 23864) = 0;
  a1[5967] = v98;
  *(a1 + 1492) = v115;
  *(a1 + 2990) = v111 * v111;
  *(a1 + 2991) = v114 * v114;
  *(a1 + 2987) = v111 * v111;
  *(a1 + 2988) = v114 * v114;
  if (*(a2 + 26920) == 1)
  {
    a1[5965] = 2;
  }

  if ((v130 & 1) == 0)
  {
    *(a1 + 2987) = v24 * (v111 * v111);
    *(a1 + 2988) = v24 * (v114 * v114);
  }

  if (v100 >= 180.0)
  {
    v117 = v100 + -180.0;
  }

  else
  {
    v117 = v100;
  }

  *(a1 + 2989) = v117 * 0.0174532925;
  *(a1 + 2994) = 0x4039000000000000;
  if (*(a1 + 3084) < 10.0 && v12)
  {
    v118 = 0;
  }

  else
  {
    v118 = Horz_Meas_Update(5u, a1 + 100, a1 + 104, 0xBu, a1 + 2981, a2 + 872, (a2 + 11000));
    v98 = *a1;
    v100 = *(a1 + 2977);
  }

  *(a1 + 24868) = v118;
  *(a2 + 26920) = v118;
  *(a1 + 23976) = 1;
  a1[5995] = 1;
  a1[5998] = v98;
  *(a1 + 23988) = 0;
  Comp_Track8(a1 + 114);
  *(a1 + 3002) = v119;
  *(a1 + 3000) = v100;
  *(a1 + 3001) = 0x3FD0000000000000;
  v120 = 0.25;
  if (((v130 | v132) & 1) == 0)
  {
    v121 = 1.0;
    if (v109 < *(a1 + 2978) * 0.333333333)
    {
      v121 = fabs(*(a1 + 3009)) * 0.5 + 1.0;
    }

    v120 = v121 * v121;
    *(a1 + 3001) = v120;
  }

  if ((v130 & 1) == 0)
  {
    v120 = v24 * v24 * v120;
    *(a1 + 3001) = v120;
  }

  v122 = *(a1 + 3092);
  if (v122 < 10.0 && v12)
  {
    *(a1 + 3001) = v120 * (10.0 / v122 * (10.0 / v122));
  }

  *(a1 + 3004) = 0x4039000000000000;
  v123 = *(a1 + 118);
  *(a1 + 3006) = v123;
  if (v130 & 1 | (v123 < 1.0))
  {
    *(a1 + 23976) = 0;
  }

  v124 = Track_Meas_Update(8, a1 + 104, 0xBu, a1 + 23976, a2 + 872, (a2 + 11018), v100, v123, 1.0);
  *(a1 + 24869) = v124;
  if ((v130 & 1) == 0 && ((*(a1 + 118) >= 1.0) & ~v131) != 0)
  {
    if (v124)
    {
      *(a1 + 119) = *(a1 + 2977);
    }
  }

  else
  {
    v125 = *(a1 + 2977);
    *(a1 + 119) = v125;
    *(a2 + 11240) = v125;
    *(a2 + 11248) = *a1;
  }

  result = 1;
  *(a1 + 24996) = 1;
LABEL_65:
  v74 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_Set_Sens_Aug_GNSS_Input(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v76[1] = *MEMORY[0x29EDCA608];
  v12 = *(a1 + 24);
  *a8 = vrev64_s32(*a1);
  *(a8 + 8) = v12;
  v13 = a1 + 23272;
  v14 = (a7 + 856);
  *(a8 + 16) = *(a1 + 12);
  *(a8 + 20) = *(a1 + 17);
  *(a8 + 22) = *(a1 + 18);
  *(a8 + 24) = *(a1 + 44);
  v76[0] = 0.0;
  if (!R8_EQ((a1 + 736), v76))
  {
    v15 = *(a1 + 792);
    v16 = -0.5;
    if (v15 > 0.0)
    {
      v16 = 0.5;
    }

    v17 = v15 + v16;
    if (v17 <= 2147483650.0)
    {
      if (v17 >= -2147483650.0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0x80000000;
      }
    }

    else
    {
      v18 = 0x7FFFFFFF;
    }

    *(a8 + 28) = v18;
  }

  v68 = a8 + 0x2000;
  API_Get_UTC_Cor(1, (a8 + 792));
  v19 = vdupq_n_s64(0x41B1DE784A000000uLL);
  *(a8 + 96) = vmulq_f64(*(a7 + 144), v19);
  *(a8 + 112) = vmulq_f64(*(a7 + 160), v19);
  *(a8 + 784) = *(a7 + 1);
  v20 = *(a7 + 88);
  *(a8 + 128) = *(a7 + 72);
  *(a8 + 144) = v20;
  v21 = *(a7 + 112);
  *(a8 + 152) = *(a7 + 96);
  *(a8 + 168) = v21;
  v69 = a2;
  memcpy((a8 + 256), (a2 + 344), 0x210uLL);
  v22 = *(a7 + 840);
  *(a8 + 176) = *(a7 + 848);
  *(a8 + 184) = v22;
  *(a8 + 192) = v14[2];
  *(a8 + 208) = v14[3];
  *(a8 + 224) = *(a7 + 824);
  *(a8 + 232) = *v14;
  *(a8 + 248) = *(a7 + 880);
  *(a8 + 32) = *v13;
  *(a8 + 40) = *(a1 + 23280);
  *(a8 + 56) = *(v13 + 24);
  v67 = v13;
  *(a8 + 64) = *(v13 + 32);
  v23 = (a8 + 1208);
  v24 = 48;
  do
  {
    *(v23 + 123) = 0uLL;
    v23[6] = 0uLL;
    v23[7] = 0uLL;
    v23[4] = 0uLL;
    v23[5] = 0uLL;
    v23[2] = 0uLL;
    v23[3] = 0uLL;
    *v23 = 0uLL;
    v23[1] = 0uLL;
    v23 += 9;
    --v24;
  }

  while (v24);
  v25 = 0;
  v26 = 0;
  v71 = a8;
  v27 = (a8 + 1346);
  v28 = -1152;
  v29 = 14112;
  v30 = 8632;
  v31 = 8440;
  do
  {
    v32 = a4 + 4 * v26;
    v33 = *(v32 + 76);
    result = Is_Legal(v33);
    if (result)
    {
      v35 = v33 == 6;
    }

    else
    {
      v35 = 1;
    }

    if (!v35)
    {
      v36 = GNSS_Id_To_Num_Prn_Idx(v33);
      result = GNSS_Id_To_Num_Pos_Idx(*(v32 + 76));
      if (*(a5 + 192 * result + 184) == 1 && *(v32 + 412) >= 10)
      {
        v73 = v36;
        *(v27 - 138) = *(v32 + 76);
        *(v27 - 82) = *(a4 + v25 + 1232) + *(a1 + v25 + 30144);
        *(v27 - 74) = (*(a4 + v25 + 1616) + *(a1 + v25 + 30528)) * 0.190293673;
        *(v27 - 66) = *(a1 + 8 * v26 + 120) + *(a1 + v25 + 30912);
        v37 = *(a1 + v28 + 27840);
        *(v27 - 114) = *(a1 + v28 + 27856);
        *(v27 - 130) = v37;
        v38 = *(a1 + v28 + 28992);
        *(v27 - 90) = *(a1 + v28 + 29008);
        *(v27 - 106) = v38;
        *(v27 - 58) = *(a1 + v28 + 4464) + *(a1 + v25 + 4448);
        *(v27 - 50) = *(a1 + v28 + 10040) + *(a1 + v25 + 10024);
        *(v27 - 42) = *(a1 + v28 + 15616) + *(a1 + v25 + 15600);
        *(v27 - 34) = *(a1 + v26 + 2864);
        *(v27 - 33) = *(a1 + v31);
        *(v27 - 32) = *(a1 + v29 - 96);
        v39 = a1 + 4 * v26;
        v40 = *(v39 + 3056);
        if (v40 - 1 >= 0x1D)
        {
          if (!*(v39 + 3056))
          {
            goto LABEL_24;
          }

          result = EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
          v40 = *(v39 + 3056);
        }

        if (v40 >= 0x1D)
        {
          result = gn_report_assertion_failure("SV_Meas_Edit_Char");
          v41 = 120;
        }

        else
        {
          v41 = aGhkmnpqrstvyac_1[v40];
        }

        *(v27 - 31) = v41;
LABEL_24:
        v42 = *(a1 + v30);
        if (v42 - 1 >= 0x1D)
        {
          if (!*(a1 + v30))
          {
            goto LABEL_29;
          }

          result = EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
          v42 = *(a1 + v30);
        }

        if (v42 >= 0x1D)
        {
          result = gn_report_assertion_failure("SV_Meas_Edit_Char");
          v43 = 120;
        }

        else
        {
          v43 = aGhkmnpqrstvyac_1[v42];
        }

        *(v27 - 30) = v43;
LABEL_29:
        v44 = *(a1 + v30 + 5576);
        if (v44 - 1 >= 0x1D)
        {
          if (!*(a1 + v30 + 5576))
          {
LABEL_34:
            *(v27 - 28) = *(a1 + v26 + 2960);
            *(v27 - 27) = *(a1 + v31 + 96);
            *(v27 - 26) = *(a1 + v29);
            *(v27 - 18) = *(a6 + 178 + 2 * v73);
            *(v27 - 10) = *(a6 + v73);
            *(v27 - 2) = *(a4 + v26 + 604);
            *(v27 - 1) = *(a4 + v26 + 700);
            *v27 = *(v32 + 412);
            goto LABEL_35;
          }

          result = EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
          v44 = *(a1 + v30 + 5576);
        }

        if (v44 >= 0x1D)
        {
          result = gn_report_assertion_failure("SV_Meas_Edit_Char");
          v45 = 120;
        }

        else
        {
          v45 = aGhkmnpqrstvyac_1[v44];
        }

        *(v27 - 29) = v45;
        goto LABEL_34;
      }
    }

LABEL_35:
    ++v26;
    ++v29;
    v27 += 144;
    v30 += 4;
    ++v31;
    v25 += 8;
    v28 += 24;
  }

  while (v26 != 48);
  *(v71 + 800) = *(a1 + 824);
  *(v71 + 808) = *(a1 + 2856);
  *(v71 + 816) = *(a1 + 8432);
  *(v71 + 824) = *(a1 + 14008);
  v46 = *(a1 + 25744);
  *(v71 + 848) = *(a1 + 25760);
  *(v71 + 832) = v46;
  v47 = *(a1 + 25784);
  *(v71 + 872) = *(a1 + 25800);
  *(v71 + 856) = v47;
  *(v71 + 880) = *(a1 + 25664);
  *(v71 + 888) = *(a1 + 25680);
  *(v71 + 896) = *(a1 + 25696);
  *(v71 + 904) = *(a1 + 25712);
  *(v71 + 912) = *(v67 + 1505);
  *(v71 + 913) = *(v67 + 1507);
  v48 = *(a1 + 25848);
  v49 = *(a1 + 25864);
  v50 = *(a1 + 25880);
  *(v71 + 968) = *(a1 + 25896);
  *(v71 + 936) = v49;
  *(v71 + 952) = v50;
  *(v71 + 920) = v48;
  v51 = *(a1 + 25920);
  *(v71 + 976) = *(a1 + 25904);
  *(v71 + 992) = v51;
  v52 = *(a1 + 26009);
  v53 = *(a1 + 25984);
  v54 = *(a1 + 26000);
  *(v71 + 1040) = *(a1 + 25968);
  *(v71 + 1081) = v52;
  *(v71 + 1072) = v54;
  *(v71 + 1056) = v53;
  v55 = *(a1 + 25952);
  *(v71 + 1008) = *(a1 + 25936);
  *(v71 + 1024) = v55;
  v56 = *(a1 + 26032);
  *(v71 + 1120) = *(a1 + 26048);
  *(v71 + 1104) = v56;
  v57 = *(a1 + 26064);
  v58 = *(a1 + 26080);
  v59 = *(a1 + 26096);
  *(v71 + 1177) = *(a1 + 26105);
  *(v71 + 1168) = v59;
  *(v71 + 1152) = v58;
  *(v71 + 1136) = v57;
  *(v71 + 1200) = *(v69 + 20);
  *(v71 + 80) = *(v69 + 56);
  *(v71 + 1201) = *(v69 + 128);
  *(v71 + 1204) = *(v69 + 132);
  v60 = *(a3 + 80);
  v61 = *(a3 + 96);
  *(v71 + 8152) = *(a3 + 112);
  *(v71 + 8120) = v60;
  *(v71 + 8136) = v61;
  v62 = *(a3 + 120);
  v63 = *(a3 + 136);
  *(v71 + 0x2000) = *(a3 + 152);
  *(v71 + 8176) = v63;
  *(v71 + 8160) = v62;
  v64 = *(a3 + 160);
  v65 = *(a3 + 176);
  *(v71 + 8232) = *(a3 + 192);
  *(v71 + 8200) = v64;
  *(v71 + 8216) = v65;
  *(v71 + 8240) = *(a3 + 200);
  *(v71 + 8256) = *(a3 + 216);
  *(v71 + 8272) = *(a3 + 232);
  *(v68 + 96) = *(a3 + 248);
  v66 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Is_GAL_IntEph_Real(uint64_t a1)
{
  result = *(a1 + 44) || *(a1 + 48) || *(a1 + 50) || *(a1 + 52) || *(a1 + 54) || *(a1 + 56) || *(a1 + 58) || *(a1 + 60) || *(a1 + 62) || *(a1 + 72) != 0;
  v2 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lpm_map_transaction_id@<X0>(const _LPP_TRANSACTION *a1@<X0>, _BYTE *a2@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  a2[4] = 3;
  result = memset_s(a2 + 8, 0xCuLL, 0, 0xCuLL);
  if (a1)
  {
    *a2 = 1;
    a2[4] = 2;
    v5 = *(a1 + 5);
    *(a2 + 2) = *(a1 + 4);
    if (v5 > 0xFF)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx transactionNumber,%d\n", (*&g_MacClockTicksToMsRelation * v6), "PSP", 69, "lpm_map_transaction_id", 772, *(a1 + 5));
        result = LbsOsaTrace_WriteLog(0x13u, __str, v7, 0, 1);
      }
    }

    else
    {
      a2[12] = v5;
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void send_to_lpi_gps_real_time_integrity_req(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _LPP_TRANSACTION *a5)
{
  v9[2] = *MEMORY[0x29EDCA608];
  v9[0] = a1;
  v9[1] = a2;
  v7 = a3;
  v8 = a4;
  lpm_map_transaction_id(a5, v6);
  gps_set_gps_real_time_integrity(v9, &v7);
  v5 = *MEMORY[0x29EDCA608];
}

void send_to_lpi_gps_utc_model_req(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _LPP_TRANSACTION *a5)
{
  v9[2] = *MEMORY[0x29EDCA608];
  v9[0] = a1;
  v9[1] = a2;
  v7 = a3;
  v8 = a4;
  lpm_map_transaction_id(a5, v6);
  gps_set_gps_utc_model(v9, &v7);
  v5 = *MEMORY[0x29EDCA608];
}

void send_to_lpi_gnss_iono_model_req(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, _LPP_TRANSACTION *a6)
{
  v14 = *MEMORY[0x29EDCA608];
  v11 = a1;
  v12 = a2;
  v13 = BYTE2(a2);
  v9 = a4;
  v10 = a5;
  lpm_map_transaction_id(a6, v8);
  gps_set_gnss_iono_model(&v11, a3, 0, &v9);
  v7 = *MEMORY[0x29EDCA608];
}

uint64_t send_to_lpi_pos_loc_info_req(unsigned int *a1, uint64_t a2, int a3, _LPP_TRANSACTION *a4)
{
  v37 = *MEMORY[0x29EDCA608];
  v15 = a2;
  v16 = a3;
  result = lpm_map_transaction_id(a4, v14);
  v7 = a1[10];
  if (v7)
  {
    LOBYTE(v24) = -1;
    v23 = a1[2];
    v26 = a1[4];
    v28 = *(a1 + 49);
    v34 = *(a1 + 46);
    BYTE2(v24) = *(a1 + 48);
    HIBYTE(v24) = *(a1 + 13);
    v27 = *(a1 + 20);
    v10 = a1[7];
    v29 = a1[6];
    v30 = v10;
    v33 = *(a1 + 22);
    v31 = *(a1 + 32);
    v35 = *(a1 + 47);
    v36 = *(a1 + 35);
    *__str = *(a1 + 4);
    BYTE1(v24) = *(a1 + 12);
    v32 = *(a1 + 33);
    v25 = *(a1 + 14);
    v11 = *(a1 + 56);
    if (v11 == 1)
    {
      result = gps_gnss_start_based_mode(*a1, __str, 0, &v15);
    }

    else if (v11 == 2)
    {
      result = gps_gnss_start_auto_mode(*a1, __str, 0, &v15);
    }
  }

  else if ((v7 & 2) != 0)
  {
    v12 = a1[13];
    *__str = a3;
    v23 = v12;
    v24 = *(a1 + 4);
    result = HandleLppWlanMeasReq(__str);
  }

  else
  {
    __s = 0;
    v18 = 0;
    v19 = -255;
    v20 = -1;
    v21 = 0;
    memset_s(&__s, 0x20uLL, 0, 0x20uLL);
    HIBYTE(v19) = 1;
    v20 = a3;
    LOBYTE(v19) = send_is_supl_last_transaction(a3);
    HandleLppPosResponse(&__s);
    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Positioning mode not supported\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 69, "send_to_lpi_pos_loc_info_req", 770);
      result = LbsOsaTrace_WriteLog(0x13u, __str, v9, 0, 1);
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}