BOOL BlueFin::GlPeLtoReaderBase::isDcb(void *a1, int a2, int *a3)
{
  for (i = 0; ; ++i)
  {
    v9 = 0;
    v10 = 0;
    v11 = -1;
    v7 = i;
    if (BlueFin::GlPeLtoReaderBase::getGnssDcbInfo(a1, &v9, i) && v9 == a2)
    {
      break;
    }

    if (v7 >= 0xD)
    {
      return 0;
    }
  }

  if (a3)
  {
    *a3 = v11;
  }

  return v10 != 0;
}

BOOL BlueFin::GlPeLtoReaderBase::getGnssDcbInfo(void *a1, uint64_t a2, unsigned int a3)
{
  v76 = *MEMORY[0x29EDCA608];
  v3 = a1[1319];
  v20[0] = 269487563;
  v21 = v3;
  v22 = 0x2900000000;
  v4 = a1[1320];
  v23 = 0;
  v24 = 269557195;
  v25 = v4;
  v26 = 0x2A00000001;
  v5 = a1[1321];
  v27 = 0;
  v28 = 269626827;
  v29 = v5;
  v30 = 0x2B00000002;
  v6 = a1[1322];
  v31 = 0;
  v32 = 269696459;
  v33 = v6;
  v34 = 0x2C00000003;
  v7 = a1[1323];
  v35 = 0;
  v36 = 538971595;
  v37 = v7;
  v38 = 0x2D00000004;
  v8 = a1[1324];
  v39 = 2;
  v40 = 539041227;
  v41 = v8;
  v42 = 0x2E00000005;
  v9 = a1[1325];
  v43 = 2;
  v44 = 808455627;
  v45 = v9;
  v46 = 0x2F00000006;
  v10 = a1[1326];
  v47 = 3;
  v48 = 808525259;
  v49 = v10;
  v50 = 0x3000000007;
  v11 = a1[1327];
  v51 = 3;
  v52 = 808594891;
  v53 = v11;
  v54 = 0x3100000008;
  v55 = 3;
  v12 = a1[1328];
  v56 = 1077939659;
  v57 = v12;
  v58 = 0x3200000009;
  v59 = 4;
  v13 = a1[1329];
  v60 = 1078009291;
  v61 = v13;
  v62 = 0x330000000ALL;
  v63 = 4;
  v14 = a1[1330];
  v64 = 1078078923;
  v65 = v14;
  v66 = 0x340000000BLL;
  v67 = 4;
  v15 = a1[1331];
  v68 = 1347423691;
  v69 = v15;
  v70 = 0x350000000CLL;
  v71 = 5;
  v16 = a1[1332];
  v72 = 1347493323;
  v73 = v16;
  v74 = 0x360000000DLL;
  v75 = 5;
  if (a3 <= 0xD)
  {
    v17 = &v20[8 * a3];
    if (v17 != a2)
    {
      *a2 = *v17;
      *(a2 + 8) = *(v17 + 1);
      *(a2 + 16) = *(v17 + 2);
      *(a2 + 24) = v17[6];
    }
  }

  result = a3 < 0xE;
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeRtoReader::IsRtoEphSection(BlueFin::GlPeRtoReader *this, int a2)
{
  result = 1;
  if (a2 <= 12316349)
  {
    if (a2 > 12307645)
    {
      if (a2 == 12307646)
      {
        return result;
      }

      v3 = -8770;
    }

    else
    {
      if (a2 == 12284350)
      {
        return result;
      }

      v3 = -21826;
    }

    goto LABEL_10;
  }

  if (a2 <= 582741693)
  {
    if (a2 == 12316350)
    {
      return result;
    }

    v3 = -66;
LABEL_10:
    v4 = v3 | 0xBB0000;
    goto LABEL_13;
  }

  if (a2 == 582741694)
  {
    return result;
  }

  v4 = 582746046;
LABEL_13:
  if (a2 != v4)
  {
    return 0;
  }

  return result;
}

BOOL BlueFin::GlPeRtoReader::isRtoEphEnabledAndRequested(BlueFin::GlPeRtoReader *this)
{
  v2 = BlueFin::GlPeLtoReaderBase::ltoSectionGnssToGnss(*(this + 1));
  if (v2 == 7)
  {
    return 0;
  }

  v4 = v2;
  v5 = 1;
  return BlueFin::GlPeRtoReader::getRtoUncmprsdEphBuffer(this, &v4) != 0;
}

uint64_t BlueFin::GlPeRtoReader::CheckRtoEnabled(BlueFin::GlPeRtoReader *this, int a2)
{
  result = 0;
  if (a2 > 286344381)
  {
    if (a2 > 447547837)
    {
      if (a2 > 447592893)
      {
        if (a2 == 447592894)
        {
          if (*(this + 11))
          {
            goto LABEL_61;
          }

          return 0;
        }

        if (a2 != 582741694)
        {
          v5 = 582746046;
          goto LABEL_43;
        }

LABEL_45:
        v6 = 3;
LABEL_59:
        *(this + 1) = v6;
        goto LABEL_60;
      }

      if (a2 == 447547838)
      {
        if (*(this + 10))
        {
          goto LABEL_61;
        }

        return 0;
      }

      if (a2 != 447574462)
      {
        if (a2 != 447584702)
        {
          return result;
        }

        if (*(this + 9))
        {
          goto LABEL_61;
        }

        return 0;
      }

      if (!*(this + 12))
      {
        return 0;
      }
    }

    else if (a2 > 355708576)
    {
      if (a2 == 355708577)
      {
        if (*(this + 21))
        {
          goto LABEL_61;
        }

        return 0;
      }

      if (a2 != 356822689)
      {
        if (a2 != 357936801)
        {
          return result;
        }

        if (*(this + 23))
        {
          goto LABEL_61;
        }

        return 0;
      }

      if (!*(this + 22))
      {
        return 0;
      }
    }

    else
    {
      if (a2 == 286344382)
      {
        if (*(this + 8))
        {
          goto LABEL_61;
        }

        return 0;
      }

      if (a2 != 352366241)
      {
        if (a2 != 354594465)
        {
          return result;
        }

        if (*(this + 20))
        {
          goto LABEL_61;
        }

        return 0;
      }

      if (!*(this + 19))
      {
        return 0;
      }
    }

LABEL_61:
    *this = a2;
    return 1;
  }

  if (a2 > 13406804)
  {
    if (a2 <= 13417257)
    {
      switch(a2)
      {
        case 13406805:
          if (*(this + 15) || *(this + 16))
          {
            goto LABEL_61;
          }

          break;
        case 13417146:
          if (*(this + 13) || *(this + 14))
          {
            goto LABEL_61;
          }

          break;
        case 13417244:
          if (*(this + 18))
          {
            goto LABEL_61;
          }

          break;
        default:
          return result;
      }

      return 0;
    }

    if (a2 == 13417258)
    {
      if (*(this + 17))
      {
        goto LABEL_61;
      }

      return 0;
    }

    if (a2 != 269552240)
    {
      if (a2 != 286340030)
      {
        return result;
      }

      if (*(this + 7))
      {
        goto LABEL_61;
      }

      return 0;
    }

    if (!*(this + 24))
    {
      return 0;
    }

    goto LABEL_61;
  }

  if (a2 > 12311997)
  {
    if (a2 == 12311998)
    {
      *(this + 1) = 2;
      if (*(this + 2))
      {
        goto LABEL_61;
      }

      return 0;
    }

    if (a2 != 12316350)
    {
      v5 = 12320702;
LABEL_43:
      if (a2 != v5)
      {
        return result;
      }

      v6 = 5;
      goto LABEL_59;
    }

    goto LABEL_45;
  }

  if (a2 == 12284350)
  {
    v6 = 7;
    goto LABEL_59;
  }

  if (a2 == 12298942)
  {
    v6 = 6;
    goto LABEL_59;
  }

  if (a2 != 12307646)
  {
    return result;
  }

  *(this + 1) = 0;
LABEL_60:
  if (BlueFin::GlPeRtoReader::isRtoEphEnabledAndRequested(this))
  {
    goto LABEL_61;
  }

  return 0;
}

uint64_t BlueFin::GlPeRtoReader::getRtoUncmprsdEphBuffer(void *a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (!*(a2 + 4))
  {
    return 0;
  }

  v3 = *a2;
  if (*a2 > 6u || v2 > ((0xE243F0A181320uLL >> (8 * v3)) & 0x3F))
  {
    return 0;
  }

  result = 0;
  LOBYTE(v2) = v2 - 1;
  if (v3 > 3)
  {
    switch(v3)
    {
      case 4:
        v6 = a1[4];
        break;
      case 5:
        v6 = a1[5];
        break;
      case 6:
        v6 = a1[6];
        break;
      default:
        return result;
    }
  }

  else if (v3)
  {
    if (v3 == 2)
    {
      v6 = a1[2];
      v2 = v2;
      v7 = 88;
      goto LABEL_19;
    }

    if (v3 != 3)
    {
      return result;
    }

    v6 = a1[3];
  }

  else
  {
    v6 = a1[1];
  }

  v2 = v2;
  v7 = 144;
LABEL_19:
  v8 = v6 + v2 * v7;
  if (v6)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t BlueFin::GlPeLtoReaderBase::ltoSectionGnssToGnss(unsigned int a1)
{
  if (a1 > 7)
  {
    return 7;
  }

  else
  {
    return dword_298A40A48[a1];
  }
}

uint64_t BlueFin::GlPeRtoReader::ParseEphFctTbl(BlueFin::GlPeRtoReader *this, unsigned __int8 *a2, int a3, unsigned int *a4, unsigned int *a5, BOOL *a6)
{
  *a6 = 0;
  v6 = *&a2[a3];
  *a4 = v6;
  v7 = *(this + 55);
  if (v7 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = *(this + 55);
  }

  if (v6 >= v7)
  {
    v6 = *(this + 55);
  }

  v9 = v8 - v6;
  v10 = (v6 ^ 0x80000000) - (v8 ^ 0x80000000);
  if (v9 < v10)
  {
    v10 = v9;
  }

  *a5 = v10;
  if (v10 < *(this + 56))
  {
    *(this + 56) = v10;
    *(this + 54) = *&a2[a3 + 4];
  }

  v11 = *(this + 52);
  v12 = *(this + 53) + 1;
  *(this + 53) = v12;
  if (v11 == v12)
  {
    *(this + 53) = 0;
    v13 = a3 + 12;
    *a6 = 1;
  }

  else
  {
    v13 = a3 + 8;
  }

  return (v13 - a3);
}

BOOL BlueFin::GlPeRtoReader::ParseEph(unsigned int *a1, uint64_t a2, unsigned int a3, int a4, _DWORD *a5)
{
  if (!a2)
  {
    DeviceFaultNotify("glpe_rtoreader.cpp", 1380, "ParseEph", "pucBuffer != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_rtoreader.cpp", 1380, "pucBuffer != nullptr");
  }

  if (a4 < 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = (a2 + a3);
    do
    {
      v11 ^= *v12;
      v13 = 8;
      do
      {
        if (v11)
        {
          v11 = (v11 >> 1) ^ 0x48;
        }

        else
        {
          v11 >>= 1;
        }

        --v13;
      }

      while (v13);
      ++v12;
      ++v10;
    }

    while (v10 != a4);
  }

  v21 = 1;
  v22 = a2 + a3;
  v23 = 0;
  v14 = BlueFin::GlPeBitReader::uint(&v21, 5u);
  v15 = BlueFin::GlPeBitReader::uint(&v21, 0x1Bu);
  if (v15 + v14 >= 0)
  {
    v16 = v15 + v14 + 1;
    do
    {
      BlueFin::GlPeRtoReader::parseSatEph(a1, &v21);
      --v16;
    }

    while (v16);
  }

  v17 = *(a2 + a4 + a3);
  if (v11 == v17)
  {
    *a5 = BlueFin::GlPeRtoReader::getFlag(a1);
  }

  else
  {
    v18 = BlueFin::GlPeLtoReaderBase::ltoSectionGnssToGnss(a1[1]);
    v19 = BlueFin::GNSS2STR(v18);
    GlCustomLog(11, "%s RTO eph section integrity check failure!\n", v19);
  }

  return v11 == v17;
}

uint64_t BlueFin::GlPeBitReader::uint(BlueFin::GlPeBitReader *this, unsigned int a2)
{
  v2 = a2;
  v4 = *(this + 5);
  if (v4)
  {
    v5 = a2 > v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v2 = a2 - v4;
    v6 = (*(this + 4) & (0xFFFFFFFF >> -v4)) << (a2 - v4);
    *(this + 5) = 0;
  }

  else
  {
    v6 = 0;
    result = 0;
    if (v4)
    {
      goto LABEL_9;
    }
  }

  v8 = BlueFin::GlPeBitReader::getword(this);
  *(this + 1) += 4;
  v4 = 32;
  *(this + 4) = v8;
  *(this + 5) = 32;
  result = v6;
LABEL_9:
  v9 = v4 - v2;
  if (v4 >= v2)
  {
    result = ((*(this + 4) & ((-1 << -v2) >> -v4)) >> v9) | result;
    *(this + 5) = v9;
  }

  return result;
}

uint64_t BlueFin::GlPeBitReader::getword(BlueFin::GlPeBitReader *this)
{
  if (*this == 1)
  {
    return **(this + 1);
  }

  if (*this)
  {
    DeviceFaultNotify("glpe_bitreader.cpp", 118, "getword", "false");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_bitreader.cpp", 118, "false");
  }

  return bswap32(**(this + 1));
}

double BlueFin::GlPeRtoReader::parseSatEph(BlueFin::GlPeRtoReader *this, BlueFin::GlPeBitReader *a2)
{
  v4 = *(this + 1);
  if (v4 <= 7)
  {
    v19 = v2;
    v20 = v3;
    if (((1 << v4) & 0xE9) != 0)
    {
      memset(&v18[4], 0, 140);
      *v18 = 255;
      if (v4 == 3 || !v4)
      {
        BlueFin::GlPeRtoReader::load_rto_ephemeris_elements(this, v18, a2);
        v4 = *(this + 1);
      }

      if (v4 == 5)
      {
        BlueFin::GlPeRtoReader::load_rto_bdsephemeris_elements(this, v18, a2);
        v4 = *(this + 1);
      }

      if (v4 == 6)
      {
        BlueFin::GlPeRtoReader::load_rto_galephemeris_elements(this, v18, a2);
        v4 = *(this + 1);
      }

      if (v4 == 7)
      {
        BlueFin::GlPeRtoReader::load_rto_nicephemeris_elements(this, v18, a2);
      }

      v7 = v18[0];
      if (!BlueFin::GlPeRtoReader::isEphSatBad(this, *v18))
      {
        *&v18[12] = 0;
        *&v18[28] = xmmword_298A40B30;
        *&v18[44] = 51966;
        *&v18[104] = 49344;
        RtoUncmprsdEphBuffer = BlueFin::GlPeRtoReader::getRtoUncmprsdEphBuffer(this, v7);
        if (RtoUncmprsdEphBuffer)
        {
          v10 = *&v18[112];
          RtoUncmprsdEphBuffer[6] = *&v18[96];
          RtoUncmprsdEphBuffer[7] = v10;
          RtoUncmprsdEphBuffer[8] = *&v18[128];
          v11 = *&v18[48];
          RtoUncmprsdEphBuffer[2] = *&v18[32];
          RtoUncmprsdEphBuffer[3] = v11;
          v12 = *&v18[80];
          RtoUncmprsdEphBuffer[4] = *&v18[64];
          RtoUncmprsdEphBuffer[5] = v12;
          v8 = *&v18[16];
          *RtoUncmprsdEphBuffer = *v18;
          RtoUncmprsdEphBuffer[1] = v8;
        }
      }
    }

    else if (v4 == 2)
    {
      BlueFin::GlPeRtoReader::load_rto_gloephemeris_elements(this, v18, a2);
      v13 = v18[60];
      if (!BlueFin::GlPeRtoReader::isEphSatBad(this, v18[60]))
      {
        v14 = BlueFin::GlPeRtoReader::getRtoUncmprsdEphBuffer(this, v13);
        if (v14)
        {
          v15 = *&v18[48];
          *(v14 + 32) = *&v18[32];
          *(v14 + 48) = v15;
          *(v14 + 64) = *&v18[64];
          *(v14 + 80) = *&v18[80];
          *&v8 = *v18;
          v16 = *&v18[16];
          *v14 = *v18;
          *(v14 + 16) = v16;
        }
      }
    }
  }

  return *&v8;
}

void BlueFin::GlPeRtoReader::load_rto_ephemeris_elements(int a1, uint64_t a2, BlueFin::GlPeBitReader *this)
{
  v5 = 0;
  v12 = *MEMORY[0x29EDCA608];
  do
  {
    v6 = BlueFin::GlPeRtoReader::rto_ephemeris_elements[v5 * 4];
    v7 = BlueFin::GlPeBitReader::uint(this, v6 >> 1);
    v9 = (v7 << -(v6 >> 1)) >> -(v6 >> 1);
    if ((v6 & 1) == 0)
    {
      v9 = v7;
    }

    v11[v5++] = v9;
  }

  while (v5 != 30);
  BlueFin::GlPeRtoReader::rto_eph_element_array_to_structure(v7, v8, v11, a2);
  v10 = *MEMORY[0x29EDCA608];
}

BOOL BlueFin::GlPeRtoReader::isEphSatBad(BlueFin::GlPeRtoReader *this, int a2)
{
  if (a2 == 255)
  {
    return 1;
  }

  v14 = v2;
  v15 = v3;
  v5 = a2;
  v7 = BlueFin::GlPeLtoReaderBase::ltoSectionGnssToGnss(*(this + 1));
  result = 1;
  if (v7 != 7)
  {
    v8 = *(this + 29);
    if (!v8)
    {
      return 0;
    }

    v9 = v7;
    v10 = v5 + 1;
    v11 = BlueFin::GlGnssSet::operator()(v8 + 1024, v7);
    BlueFin::GlSetBase::GlSetBase(&v12, v13, 2u, v11);
    if (((*(v12 + 4 * (v10 >> 5)) >> (v10 & 0x1F)) & 1) == 0)
    {
      if (BlueFin::GlAidMask::AllowSV(*(this + 29), v9, v10))
      {
        return 0;
      }
    }
  }

  return result;
}

void BlueFin::GlPeRtoReader::rto_eph_element_array_to_structure(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  *a4 = *a3;
  *(a4 + 4) = a3[1];
  *(a4 + 16) = a3[2];
  *(a4 + 20) = a3[3];
  *(a4 + 24) = a3[4];
  *(a4 + 48) = a3[5];
  *(a4 + 52) = a3[6];
  *(a4 + 56) = a3[7];
  *(a4 + 60) = a3[8];
  *(a4 + 64) = a3[9];
  *(a4 + 68) = a3[10];
  *(a4 + 72) = a3[11];
  *(a4 + 76) = a3[12];
  *(a4 + 80) = a3[13];
  *(a4 + 84) = a3[14];
  *(a4 + 88) = a3[15];
  *(a4 + 92) = a3[16];
  *(a4 + 96) = a3[17];
  *(a4 + 100) = a3[18];
  *(a4 + 108) = a3[19];
  *(a4 + 112) = a3[20];
  *(a4 + 116) = a3[21];
  *(a4 + 120) = a3[22];
  *(a4 + 124) = a3[23];
  *(a4 + 128) = a3[24];
  *(a4 + 132) = a3[25];
  *(a4 + 136) = a3[26];
  *(a4 + 140) = a3[27];
}

uint64_t BlueFin::GlPeRtoReader::getRtoUncmprsdEphBuffer(BlueFin::GlPeRtoReader *this, char a2)
{
  v4 = BlueFin::GlPeLtoReaderBase::ltoSectionGnssToGnss(*(this + 1));
  if (v4 == 7)
  {
    return 0;
  }

  v6 = v4;
  v7 = a2 + 1;
  return BlueFin::GlPeRtoReader::getRtoUncmprsdEphBuffer(this, &v6);
}

uint64_t BlueFin::GlAidMask::AllowSV(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 64) != 1)
  {
    return 1;
  }

  v3 = BlueFin::GlImplGnss::m_aucEnabledGnssTable[a2];
  if (((*(a1 + 8 * v3) >> (a3 - 1)) & 1) == 0)
  {
    return 1;
  }

  GlCustomLog(14, "AidMask.%s: suppress %u %u\n", *(a1 + 72), v3, a3);
  return 0;
}

uint64_t BlueFin::GlPeLtoReaderBase::updateGetEphFlags(uint64_t a1, unsigned int a2)
{
  result = BlueFin::GlPeLtoReaderBase::ltoSectionGnssToGnss(a2);
  if (result <= 5 && ((0x3Du >> result) & 1) != 0)
  {
    ***(a1 + 10768) |= dword_298A40AE0[result];
  }

  return result;
}

uint64_t BlueFin::GlPeRtoReader::getFlag(BlueFin::GlPeRtoReader *this)
{
  v1 = *this;
  result = 84;
  if (v1 > 13406804)
  {
    if (v1 > 447547837)
    {
      if (v1 <= 447592893)
      {
        v3 = 447547838;
        v4 = 65;
        v5 = 447574462;
        v6 = 67;
        v7 = v1 == 447584702;
        v8 = 63;
        goto LABEL_8;
      }

      if (v1 == 447592894)
      {
        return 64;
      }

      if (v1 != 582741694)
      {
        v21 = 582746046;
LABEL_50:
        if (v1 == v21)
        {
          return 59;
        }

        return result;
      }

      return 58;
    }

    v10 = 13417257;
    if (v1 == 286344382)
    {
      v18 = 62;
    }

    else
    {
      v18 = 84;
    }

    if (v1 == 286340030)
    {
      v19 = 61;
    }

    else
    {
      v19 = v18;
    }

    if (v1 == 13417258)
    {
      v13 = 75;
    }

    else
    {
      v13 = v19;
    }

    v14 = 13406805;
    v15 = 74;
    v16 = v1 == 13417146;
    v17 = 73;
  }

  else
  {
    if (v1 > 12311832)
    {
      if (v1 <= 12316349)
      {
        v3 = 12311833;
        v4 = 69;
        v5 = 12311998;
        v6 = 57;
        v7 = v1 == 12316185;
        v8 = 70;
LABEL_8:
        if (!v7)
        {
          v8 = 84;
        }

        if (v1 == v5)
        {
          v9 = v6;
        }

        else
        {
          v9 = v8;
        }

        if (v1 == v3)
        {
          return v4;
        }

        else
        {
          return v9;
        }
      }

      if (v1 != 12316350)
      {
        if (v1 == 12320537)
        {
          return 71;
        }

        v21 = 12320702;
        goto LABEL_50;
      }

      return 58;
    }

    v10 = 12298941;
    if (v1 == 12307646)
    {
      v11 = 56;
    }

    else
    {
      v11 = 84;
    }

    if (v1 == 12307481)
    {
      v12 = 68;
    }

    else
    {
      v12 = v11;
    }

    if (v1 == 12298942)
    {
      v13 = 60;
    }

    else
    {
      v13 = v12;
    }

    v14 = 12284350;
    v15 = 66;
    v16 = v1 == 12298777;
    v17 = 72;
  }

  if (!v16)
  {
    v17 = 84;
  }

  if (v1 == v14)
  {
    v20 = v15;
  }

  else
  {
    v20 = v17;
  }

  if (v1 <= v10)
  {
    return v20;
  }

  else
  {
    return v13;
  }
}

void BlueFin::GlPeRtoReader::load_rto_bdsephemeris_elements(int a1, uint64_t a2, BlueFin::GlPeBitReader *this)
{
  v5 = 0;
  v12 = *MEMORY[0x29EDCA608];
  do
  {
    v6 = BlueFin::GlPeRtoReader::rto_bdsephemeris_elements[v5 * 4];
    v7 = BlueFin::GlPeBitReader::uint(this, v6 >> 1);
    v9 = (v7 << -(v6 >> 1)) >> -(v6 >> 1);
    if ((v6 & 1) == 0)
    {
      v9 = v7;
    }

    v11[v5++] = v9;
  }

  while (v5 != 30);
  BlueFin::GlPeRtoReader::rto_eph_element_array_to_structure(v7, v8, v11, a2);
  v10 = *MEMORY[0x29EDCA608];
}

void BlueFin::GlPeRtoReader::load_rto_galephemeris_elements(int a1, uint64_t a2, BlueFin::GlPeBitReader *this)
{
  v5 = 0;
  v12 = *MEMORY[0x29EDCA608];
  do
  {
    v6 = BlueFin::GlPeRtoReader::rto_galephemeris_elements[v5 * 4];
    v7 = BlueFin::GlPeBitReader::uint(this, v6 >> 1);
    v9 = (v7 << -(v6 >> 1)) >> -(v6 >> 1);
    if ((v6 & 1) == 0)
    {
      v9 = v7;
    }

    v11[v5++] = v9;
  }

  while (v5 != 30);
  BlueFin::GlPeRtoReader::rto_eph_element_array_to_structure(v7, v8, v11, a2);
  v10 = *MEMORY[0x29EDCA608];
}

void BlueFin::GlPeRtoReader::load_rto_nicephemeris_elements(int a1, uint64_t a2, BlueFin::GlPeBitReader *this)
{
  v5 = 0;
  v12 = *MEMORY[0x29EDCA608];
  do
  {
    v6 = BlueFin::GlPeRtoReader::rto_nicephemeris_elements[v5 * 4];
    v7 = BlueFin::GlPeBitReader::uint(this, v6 >> 1);
    v9 = (v7 << -(v6 >> 1)) >> -(v6 >> 1);
    if ((v6 & 1) == 0)
    {
      v9 = v7;
    }

    v11[v5++] = v9;
  }

  while (v5 != 30);
  BlueFin::GlPeRtoReader::rto_eph_element_array_to_structure(v7, v8, v11, a2);
  v10 = *MEMORY[0x29EDCA608];
}

uint64_t BlueFin::GlPeRtoReader::IsRtoSystSection(BlueFin::GlPeRtoReader *this, int a2)
{
  result = 1;
  if (a2 > 447574461)
  {
    if (a2 != 447574462 && a2 != 447584702)
    {
      v3 = -17986;
LABEL_8:
      if (a2 != (v3 | 0x1AAD0000))
      {
        return 0;
      }
    }
  }

  else if (a2 != 286340030 && a2 != 286344382)
  {
    v3 = 2494;
    goto LABEL_8;
  }

  return result;
}

uint64_t BlueFin::GlPeRtoReader::ParseSyst(BlueFin::GlPeRtoReader *this, unsigned __int8 *a2, int a3, int a4)
{
  if (!a2)
  {
    DeviceFaultNotify("glpe_rtoreader.cpp", 1721, "ParseSyst", "pucBuffer != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_rtoreader.cpp", 1721, "pucBuffer != nullptr");
  }

  v4 = &a2[a3];
  v12 = 1;
  v13 = v4;
  v14 = 0;
  if (a4 - 4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v6 ^= *v4;
      v7 = 8;
      do
      {
        if (v6)
        {
          v6 = (v6 >> 1) ^ 0x48;
        }

        else
        {
          v6 >>= 1;
        }

        --v7;
      }

      while (v7);
      ++v4;
      ++v5;
    }

    while (v5 != a4 - 4);
  }

  v8 = *this;
  v9 = 84;
  if (*this > 447574461)
  {
    switch(v8)
    {
      case 447574462:
        return BlueFin::GlPeRtoReader::parseNgto(this, &v12, v6);
      case 447584702:
        return BlueFin::GlPeRtoReader::parseGgto(this, &v12, v6);
      case 447592894:
        return BlueFin::GlPeRtoReader::parseBgto(this, &v12, v6);
    }
  }

  else
  {
    switch(v8)
    {
      case 286340030:
        return BlueFin::GlPeRtoReader::parseGpsUtc(this, &v12, v6);
      case 286344382:
        return BlueFin::GlPeRtoReader::parseGloSyst(this, &v12, v6);
      case 447547838:
        return BlueFin::GlPeRtoReader::parseQgto(this, &v12, v6);
    }
  }

  return v9;
}

uint64_t BlueFin::GlPeRtoReader::parseGpsUtc(BlueFin::GlPeRtoReader *this, BlueFin::GlPeBitReader *a2, int a3)
{
  if (!*(this + 7))
  {
    return 84;
  }

  BlueFin::GlPeBitReader::uint(a2, 0x20u);
  **(this + 7) = (BlueFin::GlPeBitReader::uint(a2, 0x18u) << 8) >> 8;
  *(*(this + 7) + 4) = BlueFin::GlPeBitReader::uint(a2, 0x20u);
  *(*(this + 7) + 10) = BlueFin::GlPeBitReader::uint(a2, 8u);
  *(*(this + 7) + 8) = BlueFin::GlPeBitReader::uint(a2, 8u);
  *(*(this + 7) + 9) = BlueFin::GlPeBitReader::uint(a2, 8u);
  *(*(this + 7) + 11) = BlueFin::GlPeBitReader::uint(a2, 8u);
  *(*(this + 7) + 12) = BlueFin::GlPeBitReader::uint(a2, 8u);
  *(*(this + 7) + 13) = BlueFin::GlPeBitReader::uint(a2, 8u);
  if (*(a2 + 5) != 32)
  {
    *(a2 + 5) = 0;
  }

  if (BlueFin::GlPeBitReader::uint(a2, 0x20u) == a3)
  {
    return 61;
  }

  GlCustomLog(11, "RTO Gps Utc section integrity check failure!\n");
  return 84;
}

uint64_t BlueFin::GlPeRtoReader::parseGloSyst(BlueFin::GlPeRtoReader *this, BlueFin::GlPeBitReader *a2, int a3)
{
  if (!*(this + 8))
  {
    return 84;
  }

  BlueFin::GlPeBitReader::uint(a2, 0x20u);
  **(this + 8) = BlueFin::GlPeBitReader::uint(a2, 5u);
  *(*(this + 8) + 2) = BlueFin::GlPeBitReader::uint(a2, 0xBu);
  v6 = BlueFin::GlPeBitReader::uint(a2, 0x16u);
  v7 = *(this + 8);
  *(v7 + 8) = v6 << 10 >> 10;
  *(v7 + 12) = 1;
  *(*(this + 8) + 13) = (BlueFin::GlPeBitReader::uint(a2, 2u) << 30) >> 30;
  v8 = BlueFin::GlPeBitReader::uint(a2, 0x20u);
  v9 = *(this + 8);
  *(v9 + 4) = v8;
  *(v9 + 14) = 1;
  *(*(this + 8) + 16) = (32 * BlueFin::GlPeBitReader::uint(a2, 0xBu)) >> 5;
  *(*(this + 8) + 18) = (BlueFin::GlPeBitReader::uint(a2, 0xAu) << 6) >> 6;
  if (*(a2 + 5) != 32)
  {
    *(a2 + 5) = 0;
  }

  if (BlueFin::GlPeBitReader::uint(a2, 0x20u) == a3)
  {
    return 62;
  }

  GlCustomLog(11, "RTO Glo Sys Time section integrity check failure!\n");
  return 84;
}

uint64_t BlueFin::GlPeRtoReader::parseQgto(BlueFin::GlPeRtoReader *this, BlueFin::GlPeBitReader *a2, int a3)
{
  if (!*(this + 10))
  {
    return 84;
  }

  BlueFin::GlPeBitReader::uint(a2, 0x10u);
  **(this + 10) = BlueFin::GlPeBitReader::uint(a2, 0x10u);
  *(*(this + 10) + 4) = BlueFin::GlPeBitReader::uint(a2, 0x20u);
  v6 = BlueFin::GlPeBitReader::uint(a2, 0x20u);
  v7 = *(this + 10);
  *(v7 + 8) = v6;
  if (*(this + 240) == 1)
  {
    *(v7 + 8) = -v6;
  }

  if (BlueFin::GlPeBitReader::uint(a2, 0x20u) == a3)
  {
    return 65;
  }

  GlCustomLog(11, "RTO Qzs Sys Time section integrity check failure!\n");
  return 84;
}

uint64_t BlueFin::GlPeRtoReader::parseBgto(BlueFin::GlPeRtoReader *this, BlueFin::GlPeBitReader *a2, int a3)
{
  if (!*(this + 11))
  {
    return 84;
  }

  BlueFin::GlPeBitReader::uint(a2, 0x10u);
  **(this + 11) = BlueFin::GlPeBitReader::uint(a2, 0x10u);
  *(*(this + 11) + 4) = BlueFin::GlPeBitReader::uint(a2, 0x20u);
  v6 = BlueFin::GlPeBitReader::uint(a2, 0x20u);
  v7 = *(this + 11);
  *(v7 + 8) = v6;
  if (*(this + 240) == 1)
  {
    *(v7 + 8) = -v6;
  }

  if (BlueFin::GlPeBitReader::uint(a2, 0x20u) == a3)
  {
    return 64;
  }

  GlCustomLog(11, "RTO Bds Sys Time section integrity check failure!\n");
  return 84;
}

uint64_t BlueFin::GlPeRtoReader::parseGgto(BlueFin::GlPeRtoReader *this, BlueFin::GlPeBitReader *a2, int a3)
{
  if (!*(this + 9))
  {
    return 84;
  }

  BlueFin::GlPeBitReader::uint(a2, 0x10u);
  **(this + 9) = BlueFin::GlPeBitReader::uint(a2, 0x10u);
  *(*(this + 9) + 4) = BlueFin::GlPeBitReader::uint(a2, 0x20u);
  v6 = BlueFin::GlPeBitReader::uint(a2, 0x20u);
  v7 = *(this + 9);
  *(v7 + 8) = v6;
  if (*(this + 240) == 1)
  {
    *(v7 + 8) = -v6;
  }

  if (BlueFin::GlPeBitReader::uint(a2, 0x20u) == a3)
  {
    return 63;
  }

  GlCustomLog(11, "RTO Gal Sys Time section integrity check failure!\n");
  return 84;
}

uint64_t BlueFin::GlPeRtoReader::parseNgto(BlueFin::GlPeRtoReader *this, BlueFin::GlPeBitReader *a2, int a3)
{
  if (!*(this + 12))
  {
    return 84;
  }

  BlueFin::GlPeBitReader::uint(a2, 0x10u);
  **(this + 12) = BlueFin::GlPeBitReader::uint(a2, 0x10u);
  *(*(this + 12) + 4) = BlueFin::GlPeBitReader::uint(a2, 0x20u);
  v6 = BlueFin::GlPeBitReader::uint(a2, 0x20u);
  v7 = *(this + 12);
  *(v7 + 8) = v6;
  if (*(this + 240) == 1)
  {
    *(v7 + 8) = -v6;
  }

  if (BlueFin::GlPeBitReader::uint(a2, 0x20u) == a3)
  {
    return 67;
  }

  GlCustomLog(11, "RTO Nic Sys Time section integrity check failure!\n");
  return 84;
}

uint64_t BlueFin::GlPeRtoReader::ParseClkErrTgd(BlueFin::GlPeRtoReader *this, unsigned __int8 *a2, int a3, int a4)
{
  if (!a2)
  {
    DeviceFaultNotify("glpe_rtoreader.cpp", 1932, "ParseClkErrTgd", "pucBuffer != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_rtoreader.cpp", 1932, "pucBuffer != nullptr");
  }

  v4 = &a2[a3];
  v13 = 1;
  v14 = v4;
  v15 = 0;
  if (a4 - 4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v6 ^= *v4;
      v7 = 8;
      do
      {
        if (v6)
        {
          v6 = (v6 >> 1) ^ 0x48;
        }

        else
        {
          v6 >>= 1;
        }

        --v7;
      }

      while (v7);
      ++v4;
      ++v5;
    }

    while (v5 != a4 - 4);
  }

  v8 = *this;
  v9 = 84;
  if (*this > 13417243)
  {
    if (v8 == 13417244)
    {
      v10 = !BlueFin::GlPeRtoReader::parseClkErrTgd(this, &v13, *(this + 18), v6, 0x3Fu);
      v11 = 76;
    }

    else
    {
      if (v8 != 13417258)
      {
        return v9;
      }

      v10 = !BlueFin::GlPeRtoReader::parseClkErrTgd(this, &v13, *(this + 17), v6, 0x3Fu);
      v11 = 75;
    }
  }

  else if (v8 == 13406805)
  {
    v10 = !BlueFin::GlPeRtoReader::parseClkErrTgd(this, &v13, *(this + 15), *(this + 16), v6, 0xAu);
    v11 = 74;
  }

  else
  {
    if (v8 != 13417146)
    {
      return v9;
    }

    v10 = !BlueFin::GlPeRtoReader::parseClkErrTgd(this, &v13, *(this + 13), *(this + 14), v6, 0x20u);
    v11 = 73;
  }

  if (v10)
  {
    return 84;
  }

  else
  {
    return v11;
  }
}

BOOL BlueFin::GlPeRtoReader::parseClkErrTgd(int a1, BlueFin::GlPeBitReader *this, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  if (!(a3 | a4))
  {
    return 0;
  }

  BlueFin::GlPeBitReader::uint(this, 0x10u);
  v23 = BlueFin::GlPeBitReader::uint(this, 0x10u);
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = BlueFin::GlPeBitReader::uint(this, 6u);
    v10 = BlueFin::GlPeBitReader::uint(this, 4u);
    v11 = v10;
    v30 = v7;
    if (v10 == 1)
    {
      goto LABEL_6;
    }

    if (!v10)
    {
      v11 = -1;
LABEL_6:
      v12 = v9;
      goto LABEL_8;
    }

    v11 = -1;
    v12 = -1;
LABEL_8:
    v26 = BlueFin::GlPeBitReader::uint(this, 0x1Au);
    v25 = BlueFin::GlPeBitReader::uint(this, 0x14u);
    v13 = BlueFin::GlPeBitReader::uint(this, 0xAu);
    v14 = BlueFin::GlPeBitReader::uint(this, 0xBu);
    v15 = BlueFin::GlPeBitReader::uint(this, 0xDu);
    v16 = BlueFin::GlPeBitReader::uint(this, 0xDu);
    v17 = BlueFin::GlPeBitReader::uint(this, 0xDu);
    v24 = BlueFin::GlPeBitReader::uint(this, 0xDu);
    v18 = BlueFin::GlPeBitReader::uint(this, 0xAu);
    if (*(this + 5) != 32)
    {
      *(this + 5) = 0;
    }

    if (a3 && v9 < a6)
    {
      v19 = a3 + 32 * v9;
      *v19 = v9;
      *(v19 + 4) = v11;
      *(v19 + 8) = v26 << 6 >> 6;
      *(v19 + 12) = v25 << 12 >> 12;
      *(v19 + 16) = v13 << 22 >> 22;
      *(v19 + 20) = v14;
      *(v19 + 22) = (8 * v15) >> 3;
      *(v19 + 24) = (8 * v16) >> 3;
      *(v19 + 26) = 1;
      *(v19 + 28) = (8 * v17) >> 3;
      *(v19 + 30) = v18;
      v7 = v30 + 1;
    }

    else
    {
      v7 = v30;
    }

    if (a4)
    {
      if (v12 < a6)
      {
        v20 = a4 + 4 * v12;
        *v20 = v12;
        *(v20 + 2) = (8 * v24) >> 3;
        ++v7;
      }
    }

    ++v8;
  }

  while (v8 <= v23);
  if (BlueFin::GlPeBitReader::uint(this, 0x20u) == a5)
  {
    return v7 != 0;
  }

  GlCustomLog(11, "RTO Clk Err TGD section integrity check failure!\n");
  return 0;
}

BOOL BlueFin::GlPeRtoReader::parseClkErrTgd(int a1, BlueFin::GlPeBitReader *this, uint64_t a3, int a4, unsigned int a5)
{
  if (a3)
  {
    BlueFin::GlPeBitReader::uint(this, 0x10u);
    v7 = BlueFin::GlPeBitReader::uint(this, 0x10u);
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = BlueFin::GlPeBitReader::uint(this, 6u);
      v11 = BlueFin::GlPeBitReader::uint(this, 4u);
      if (v11)
      {
        v12 = 2 * (v11 == 1);
      }

      else
      {
        v12 = 1;
      }

      v13 = BlueFin::GlPeBitReader::uint(this, 0xBu);
      v14 = BlueFin::GlPeBitReader::uint(this, 0xCu);
      v15 = BlueFin::GlPeBitReader::uint(this, 0xCu);
      v16 = BlueFin::GlPeBitReader::uint(this, 0xDu);
      if (*(this + 5) != 32)
      {
        *(this + 5) = 0;
      }

      if (a5 > v10 && (v12 - 1) <= 1)
      {
        v17 = a3 + 16 * v10;
        *v17 = v10;
        *(v17 + 4) = v12;
        *(v17 + 8) = v13;
        *(v17 + 10) = (16 * v14) >> 4;
        *(v17 + 12) = (16 * v15) >> 4;
        *(v17 + 14) = v16;
        ++v8;
      }

      ++v9;
    }

    while (v9 <= v7);
    if (BlueFin::GlPeBitReader::uint(this, 0x20u) == a4)
    {
      return v8 != 0;
    }

    GlCustomLog(11, "RTO BDS Clk Err TGD section integrity check failure!\n");
  }

  return 0;
}

uint64_t BlueFin::GlPeRtoReader::ParseL5Health(BlueFin::GlPeRtoReader *this, unsigned __int8 *a2, int a3, int a4)
{
  if (!a2)
  {
    DeviceFaultNotify("glpe_rtoreader.cpp", 2030, "ParseL5Health", "pucBuffer != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_rtoreader.cpp", 2030, "pucBuffer != nullptr");
  }

  v4 = &a2[a3];
  v15 = 1;
  v16 = v4;
  v17 = 0;
  v5 = a4 - 4;
  if (a4 - 4 < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v7 ^= *v4;
      v8 = 8;
      do
      {
        if (v7)
        {
          v7 = (v7 >> 1) ^ 0x48;
        }

        else
        {
          v7 >>= 1;
        }

        --v8;
      }

      while (v8);
      ++v4;
      ++v6;
    }

    while (v6 != v5);
  }

  v9 = *this;
  v10 = 84;
  if (*this <= 355708576)
  {
    if (v9 == 352366241)
    {
      v11 = 77;
      v12 = 32;
      v13 = 152;
    }

    else
    {
      if (v9 != 354594465)
      {
        return v10;
      }

      v11 = 78;
      v12 = 10;
      v13 = 160;
    }
  }

  else
  {
    switch(v9)
    {
      case 355708577:
        v11 = 79;
        v12 = 63;
        v13 = 168;
        break;
      case 356822689:
        v11 = 80;
        v12 = 36;
        v13 = 176;
        break;
      case 357936801:
        v11 = 81;
        v12 = 14;
        v13 = 184;
        break;
      default:
        return v10;
    }
  }

  if (BlueFin::GlPeRtoReader::parseL5Health(this, &v15, *(this + v13), v7, v12))
  {
    return v11;
  }

  else
  {
    return 84;
  }
}

BOOL BlueFin::GlPeRtoReader::parseL5Health(int a1, BlueFin::GlPeBitReader *this, uint64_t a3, int a4, unsigned int a5)
{
  if (!a3)
  {
    return 0;
  }

  BlueFin::GlPeBitReader::uint(this, 0x10u);
  v8 = BlueFin::GlPeBitReader::uint(this, 0x10u);
  v9 = 0;
  v10 = 0;
  do
  {
    v11 = BlueFin::GlPeBitReader::uint(this, 6u);
    v12 = BlueFin::GlPeBitReader::uint(this, 2u);
    v13 = BlueFin::GlPeBitReader::uint(this, 0xBu);
    v14 = BlueFin::GlPeBitReader::uint(this, 0xDu);
    if (*(this + 5) != 32)
    {
      *(this + 5) = 0;
    }

    if (a5 > v11)
    {
      v15 = a3 + 12 * v11;
      *v15 = v11;
      *(v15 + 4) = v12 != 0;
      *(v15 + 8) = v13;
      *(v15 + 10) = v14;
      ++v9;
    }

    ++v10;
  }

  while (v10 <= v8);
  if (BlueFin::GlPeBitReader::uint(this, 0x20u) == a4)
  {
    return v9 != 0;
  }

  GlCustomLog(11, "RTO L5 Health section integrity check failure!\n");
  return 0;
}

uint64_t BlueFin::GlPeRtoReader::ParseGpsIonoModel(BlueFin::GlPeRtoReader *this, unsigned __int8 *a2, int a3, int a4)
{
  if (!a2)
  {
    DeviceFaultNotify("glpe_rtoreader.cpp", 2074, "ParseGpsIonoModel", "pucBuffer != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_rtoreader.cpp", 2074, "pucBuffer != nullptr");
  }

  v5 = &a2[a3];
  v14 = 1;
  v15 = v5;
  v16 = 0;
  if (a4 - 4 < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v7 ^= *v5;
      v8 = 8;
      do
      {
        if (v7)
        {
          v7 = (v7 >> 1) ^ 0x48;
        }

        else
        {
          v7 >>= 1;
        }

        --v8;
      }

      while (v8);
      ++v5;
      ++v6;
    }

    while (v6 != a4 - 4);
  }

  if (*this == 269552240 && *(this + 24))
  {
    BlueFin::GlPeBitReader::uint(&v14, 0x10u);
    v9 = BlueFin::GlPeBitReader::uint(&v14, 0x10u);
    v10 = BlueFin::GlPeBitReader::uint(&v14, 0x20u);
    **(this + 24) = BlueFin::GlPeBitReader::uint(&v14, 8u);
    *(*(this + 24) + 1) = BlueFin::GlPeBitReader::uint(&v14, 8u);
    *(*(this + 24) + 2) = BlueFin::GlPeBitReader::uint(&v14, 8u);
    *(*(this + 24) + 3) = BlueFin::GlPeBitReader::uint(&v14, 8u);
    *(*(this + 24) + 4) = BlueFin::GlPeBitReader::uint(&v14, 8u);
    *(*(this + 24) + 5) = BlueFin::GlPeBitReader::uint(&v14, 8u);
    *(*(this + 24) + 6) = BlueFin::GlPeBitReader::uint(&v14, 8u);
    v11 = BlueFin::GlPeBitReader::uint(&v14, 8u);
    v12 = *(this + 24);
    *(v12 + 7) = v11;
    HIDWORD(v16) = 32 * (HIDWORD(v16) == 32);
    *(v12 + 8) = v10 + 604800 * v9;
    if (BlueFin::GlPeBitReader::uint(&v14, 0x20u) == v7)
    {
      return 82;
    }

    GlCustomLog(11, "RTO Gps IONO section integrity check failure!\n");
  }

  return 84;
}

void sub_2988951F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *BlueFin::GlStackAlloc<BlueFin::GlPeLtoReader>::~GlStackAlloc(void *a1)
{
  (*(**a1 + 24))(*a1);
  (a1[1])(*a1);
  return a1;
}

BOOL BlueFin::GlPeLtoReader::isRto(BlueFin::GlSetBase **this)
{
  v3 = &v5;
  v4 = 3;
  v5 = 0;
  v6 = 0;
  for (i = 56; i != 84; ++i)
  {
    *(&v5 + (i >> 5)) |= 1 << i;
  }

  return BlueFin::GlSetBase::HasAny(this[1346], &v3);
}

BOOL BlueFin::GlSetBase::HasAny(BlueFin::GlSetBase *this, const BlueFin::GlSetBase *a2)
{
  if (*(a2 + 8) >= *(this + 8))
  {
    v2 = *(this + 8);
  }

  else
  {
    v2 = *(a2 + 8);
  }

  if (!v2)
  {
    return 0;
  }

  if ((**a2 & **this) != 0)
  {
    return 1;
  }

  v4 = 1;
  do
  {
    v5 = v4;
    if (v2 == v4)
    {
      break;
    }

    v6 = *(*this + 4 * v4);
    v7 = *(*a2 + 4 * v4++);
  }

  while ((v7 & v6) == 0);
  return v5 < v2;
}

uint64_t BlueFin::GlPeLtoMgr::SetRtoDigest(uint64_t result, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = (result + 1617);
  v3 = *(result + 1617) | *(result + 1625);
  if (*(result + 1617) != 0)
  {
    LOBYTE(v3) = *v2 != *a2 || *(result + 1625) != a2[1];
  }

  *(result + 1633) = v3;
  if (v2 != a2)
  {
    *v2 = *a2;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeLtoMgr::UpdateEphemeris(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = a2 > 6 ? 0 : *&asc_298A406D0[8 * a2];
    if (v6 >= v8)
    {
      break;
    }

    if (*v3 != 255 && !*(v3 + 4))
    {
      v9 = BlueFin::GlPeEphemeris::ConstructFromGlUncmprsdEph(a2, v3, *(v3 + 140), v22);
      if (v9)
      {
        v10 = v9;
        (*(*v9 + 216))(v9, 1, 3);
        Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr((*(a1 + 80) + 384), a2);
        if ((*(*Mgr + 32))(Mgr, v10))
        {
          v12 = v7 == 0;
        }

        else
        {
          v12 = 0;
        }

        if (v12)
        {
          Time = BlueFin::GlPeTimeManager::GetTime(*(a1 + 88), 1, v21);
          v14 = (*(*v10 + 64))(v10, v21, 1, Time);
          v19 = &off_2A1F0B5F0;
          v20 = 0;
          Gps = BlueFin::GlPeGnssTime::GetGps(v21, &v19);
          v16 = (v19[4])(&v19, Gps);
          LODWORD(v17) = v20;
          v7 = (v17 * 2.32830644e-10 + v16 - v14 + vcvtd_n_f64_u32((*(*v10 + 88))(v10), 1uLL));
        }
      }
    }

    ++v6;
    v3 += 144;
  }

  return v7;
}

int32x2_t *BlueFin::GlPeEphemeris::ConstructFromGlUncmprsdEph(int a1, int *a2, uint64_t a3, int32x2_t *a4)
{
  if (a2[1])
  {
    return BlueFin::GlPeLtoEphemeris::GlPeLtoEphemeris(a4, a2, a3, a1);
  }

  result = 0;
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 3)
      {
        v7 = &unk_2A1F0F338;
        goto LABEL_14;
      }

      DeviceFaultNotify("glpe_ephmgr.cpp", 586, "ConstructFromGlUncmprsdEph", "0");
      v9 = 586;
    }

    else
    {
      if (!a1)
      {
        v7 = &unk_2A1F0F200;
LABEL_14:
        v8 = v7;
        *a4 = v7;
        result = BlueFin::GlPeGpsEphemerisBase::GlPeGpsEphemerisBase(a4, a2, a3, a1, 0x12u, &a4[4]);
        *a4 = v8;
        return result;
      }

      if (a1 != 1)
      {
        return result;
      }

      DeviceFaultNotify("glpe_ephmgr.cpp", 585, "ConstructFromGlUncmprsdEph", "0");
      v9 = 585;
    }

    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", v9, "0");
  }

  switch(a1)
  {
    case 4:
      return BlueFin::GlPeBdsEphemeris::GlPeBdsEphemeris(a4, a2, a3);
    case 5:
      return BlueFin::GlPeGalEphemeris::GlPeGalEphemeris(a4, a2, a3);
    case 6:
      return BlueFin::GlPeNicEphemeris::GlPeNicEphemeris(a4, a2, a3);
  }

  return result;
}

int32x2_t *BlueFin::GlPeGpsEphemerisBase::GlPeGpsEphemerisBase(int32x2_t *a1, _DWORD *a2, unsigned int a3, char a4, unsigned int a5, void *a6)
{
  if (a2[1])
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  a1[1].i8[0] = v9 | (16 * a4);
  a1[1].i8[1] = a5;
  a1[2] = a6;
  a1[3] = vdup_n_s32(0xFF9222FF);
  bzero(a6, 4 * a5);
  *a1 = &unk_2A1F0F0C8;
  v10 = (*a2 + 1);
  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 0, (*a2 + 1));
  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 4u, a2[4]);
  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 3u, a2[5]);
  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 5u, a2[6]);
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 6, a2[12]);
  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 7u, a2[13]);
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 8, a2[14]);
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 9, a2[15]);
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 10, a2[16]);
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 11, a2[17]);
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 12, a2[18]);
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 13, a2[19]);
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 14, a2[20]);
  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 0xFu, a2[21]);
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 16, a2[22]);
  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 0x11u, a2[23]);
  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 0x12u, a2[24]);
  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 0x1Eu, a2[25]);
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 19, a2[27]);
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 20, a2[28]);
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 21, a2[29]);
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 22, a2[30]);
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 23, a2[31]);
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 24, a2[32]);
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 25, a2[33]);
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 26, a2[34]);
  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 0x1Bu, a3 != 0);
  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 0x1Cu, a3);
  if (a2[1])
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 1u, v11);
  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 2u, 1u);
  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 0x1Fu, 0);
  return a1;
}

uint64_t *BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(BlueFin::GlPeGpsEphemerisBase *this, int a2, int a3)
{
  v5 = *(this + 2);
  v6 = 4 * *(this + 9);
  v11 = 0;
  BlueFin::GlBitBuffer::Initialize(v10, v5, v6);
  if ((a2 - 6) >= 0x15 || ((0x1FE5FDu >> (a2 - 6)) & 1) == 0)
  {
    GlCustomLog(11, "GlPeGpsEphemerisBase::PutCmpSignedField: Illegal field index:%d\n", a2);
    DeviceFaultNotify("glpe_ephmgr.cpp", 3051, "PutCmpSignedField", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 3051, "0");
  }

  v7 = (a2 - 6);
  v8 = byte_298A3BD2C[v7];
  BlueFin::GlBitBuffer::Position(v10, dword_298A3BCD8[v7]);
  return BlueFin::GlBitBuffer::PutU(v10, a3 + (0xFFFFFFFFuLL >> (32 - v8)) + 1, v8);
}

uint64_t BlueFin::GlPeBdsEphemeris::GlPeBdsEphemeris(uint64_t a1, int *a2, unsigned int a3)
{
  *(a1 + 8) = 65;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 32) = 0u;
  v15 = a2[14];
  v16 = a2[15];
  v19 = a2[17];
  v4 = a2[23];
  v21 = a2[20];
  v22 = a2[21];
  v23 = a2[22];
  v28 = a2[29];
  v5 = a2[6];
  v17 = a2[16];
  v18 = a2[18];
  v20 = a2[19];
  v29 = a2[31];
  v30 = a2[32];
  v25 = a2[27];
  v26 = a2[30];
  v27 = a2[28];
  v31 = a2[33];
  v32 = a2[34];
  v24 = a2[24];
  v6 = a2[12];
  v7 = a2[13];
  v8 = a2[4];
  v9 = a2[5];
  v10 = *a2;
  *(a1 + 8) = 4673;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = vdup_n_s32(0xFF9222FF);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *a1 = &unk_2A1F0E970;
  v11 = v10 + 1;
  v12 = vcvtd_n_f64_u32(v4, 0x13uLL) <= 6400.0;
  BlueFin::GlPeBdsEphemeris::PutCmpUnsignedField(a1, 32, 1u);
  v13 = v26 * 0.00000000146291808 > 0.2 || v12;
  (*(*a1 + 216))(a1, 33, v13);
  (*(*a1 + 216))(a1, 0, v11);
  (*(*a1 + 216))(a1, 4, v8);
  (*(*a1 + 216))(a1, 3, v9);
  (*(*a1 + 216))(a1, 5, v5 & 0x1F);
  (*(*a1 + 216))(a1, 29, (v5 >> 5) & 0x1F);
  (*(*a1 + 224))(a1, 6, v6);
  (*(*a1 + 216))(a1, 7, v7);
  (*(*a1 + 224))(a1, 8, v15);
  (*(*a1 + 224))(a1, 9, v16);
  (*(*a1 + 224))(a1, 10, v17);
  (*(*a1 + 224))(a1, 11, v19);
  (*(*a1 + 224))(a1, 12, v18);
  (*(*a1 + 224))(a1, 13, v20);
  (*(*a1 + 224))(a1, 14, v21);
  (*(*a1 + 216))(a1, 15, v22);
  (*(*a1 + 224))(a1, 16, v23);
  (*(*a1 + 216))(a1, 17, v4);
  (*(*a1 + 216))(a1, 18, v24);
  (*(*a1 + 224))(a1, 19, v25);
  (*(*a1 + 224))(a1, 20, v27);
  (*(*a1 + 224))(a1, 21, v28);
  (*(*a1 + 224))(a1, 22, v26);
  (*(*a1 + 224))(a1, 23, v29);
  (*(*a1 + 224))(a1, 24, v30);
  (*(*a1 + 224))(a1, 25, v31);
  (*(*a1 + 224))(a1, 26, v32);
  (*(*a1 + 216))(a1, 27, a3 != 0);
  (*(*a1 + 216))(a1, 28, a3);
  (*(*a1 + 216))(a1, 1, 1);
  (*(*a1 + 216))(a1, 2, 1);
  return a1;
}

uint64_t *BlueFin::GlPeBdsEphemeris::PutCmpSignedField(BlueFin::GlPeBdsEphemeris *this, int a2, int a3)
{
  v6 = *(this + 2);
  v7 = 4 * *(this + 9);
  v21 = 0;
  BlueFin::GlBitBuffer::Initialize(v20, v6, v7);
  if (BlueFin::GlPeBdsEphemeris::isD2Format(this))
  {
    switch(a2)
    {
      case 6:
        v8 = 26;
        goto LABEL_6;
      case 8:
        v15 = 130;
        goto LABEL_36;
      case 9:
        v17 = 108;
        goto LABEL_43;
      case 10:
        v14 = 84;
        goto LABEL_41;
      case 11:
        v12 = 395;
        goto LABEL_38;
      case 12:
        v16 = 146;
        goto LABEL_45;
      case 13:
        goto LABEL_7;
      case 14:
        v12 = 162;
        goto LABEL_38;
      case 16:
        v12 = 180;
        goto LABEL_38;
      case 19:
        BlueFin::GlBitBuffer::Position(v20, 0x106u);
        BlueFin::GlBitBuffer::PutU(v20, (a3 >> 8) + 1024, 0xAu);
        BlueFin::GlBitBuffer::Position(v20, 0x130u);
        v9 = a3;
        v10 = 8;
        return BlueFin::GlBitBuffer::PutU(v20, v9, v10);
      case 20:
        v11 = 464;
        goto LABEL_22;
      case 21:
        v12 = 312;
        goto LABEL_38;
      case 22:
        BlueFin::GlBitBuffer::Position(v20, 0x15Bu);
        BlueFin::GlBitBuffer::PutU(v20, (a3 >> 11) + 0x200000, 0x15u);
        BlueFin::GlBitBuffer::Position(v20, 0x22Eu);
        BlueFin::GlBitBuffer::PutU(v20, a3 >> 9, 2u);
        BlueFin::GlBitBuffer::Position(v20, 0x170u);
        v9 = a3;
        v10 = 9;
        return BlueFin::GlBitBuffer::PutU(v20, v9, v10);
      case 23:
        v12 = 377;
        goto LABEL_38;
      case 24:
        BlueFin::GlBitBuffer::Position(v20, 0x1B5u);
        BlueFin::GlBitBuffer::PutU(v20, (a3 >> 5) + 0x8000000, 0x1Bu);
        BlueFin::GlBitBuffer::Position(v20, 0x1FBu);
        v9 = a3;
        v10 = 5;
        return BlueFin::GlBitBuffer::PutU(v20, v9, v10);
      case 25:
        v14 = 413;
        goto LABEL_41;
      case 26:
        v13 = 512;
        goto LABEL_25;
      default:
        DeviceFaultNotify("glpe_bdephmgr.cpp", 805, "PutCmpSignedField", "0");
        v19 = 805;
        goto LABEL_49;
    }
  }

  switch(a2)
  {
    case 6:
      v8 = 65;
LABEL_6:
      BlueFin::GlBitBuffer::Position(v20, v8);
      v9 = a3 + 1024;
      v10 = 10;
      return BlueFin::GlBitBuffer::PutU(v20, v9, v10);
    case 8:
      v15 = 80;
LABEL_36:
      BlueFin::GlBitBuffer::Position(v20, v15);
      v9 = a3 + 2048;
      v10 = 11;
      return BlueFin::GlBitBuffer::PutU(v20, v9, v10);
    case 9:
      v17 = 16;
LABEL_43:
      BlueFin::GlBitBuffer::Position(v20, v17);
      v9 = a3 + 0x400000;
      v10 = 22;
      return BlueFin::GlBitBuffer::PutU(v20, v9, v10);
    case 10:
      v14 = 112;
LABEL_41:
      BlueFin::GlBitBuffer::Position(v20, v14);
      v9 = a3 + 0x1000000;
      v10 = 24;
      return BlueFin::GlBitBuffer::PutU(v20, v9, v10);
    case 11:
      v12 = 286;
      goto LABEL_38;
    case 12:
      v16 = 240;
LABEL_45:
      BlueFin::GlBitBuffer::Position(v20, v16);
      v9 = a3 + 0x10000;
      v10 = 16;
      return BlueFin::GlBitBuffer::PutU(v20, v9, v10);
    case 13:
LABEL_7:
      v11 = 208;
      goto LABEL_22;
    case 14:
      BlueFin::GlBitBuffer::Position(v20, 0x100u);
      BlueFin::GlBitBuffer::PutU(v20, (a3 >> 2) + 0x10000, 0x10u);
      BlueFin::GlBitBuffer::Position(v20, 0x146u);
      v9 = a3;
      v10 = 2;
      return BlueFin::GlBitBuffer::PutU(v20, v9, v10);
    case 16:
      v12 = 304;
      goto LABEL_38;
    case 19:
      v12 = 464;
      goto LABEL_38;
    case 20:
      v11 = 336;
      goto LABEL_22;
    case 21:
      v12 = 400;
LABEL_38:
      BlueFin::GlBitBuffer::Position(v20, v12);
      v9 = a3 + 0x40000;
      v10 = 18;
      return BlueFin::GlBitBuffer::PutU(v20, v9, v10);
    case 22:
      v11 = 432;
      goto LABEL_22;
    case 23:
      BlueFin::GlBitBuffer::Position(v20, 0x142u);
      BlueFin::GlBitBuffer::PutU(v20, (a3 >> 14) + 16, 4u);
      BlueFin::GlBitBuffer::Position(v20, 0x110u);
      v9 = a3;
      goto LABEL_26;
    case 24:
      v11 = 368;
LABEL_22:
      BlueFin::GlBitBuffer::Position(v20, v11);
      v9 = a3;
      v10 = 32;
      break;
    case 25:
      BlueFin::GlBitBuffer::Position(v20, 0x1E2u);
      BlueFin::GlBitBuffer::PutU(v20, (a3 >> 13) + 2048, 0xBu);
      BlueFin::GlBitBuffer::Position(v20, 0x1FFu);
      v9 = a3;
      v10 = 13;
      break;
    case 26:
      v13 = 418;
LABEL_25:
      BlueFin::GlBitBuffer::Position(v20, v13);
      v9 = a3 + 0x4000;
LABEL_26:
      v10 = 14;
      break;
    default:
      DeviceFaultNotify("glpe_bdephmgr.cpp", 830, "PutCmpSignedField", "0");
      v19 = 830;
LABEL_49:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_bdephmgr.cpp", v19, "0");
  }

  return BlueFin::GlBitBuffer::PutU(v20, v9, v10);
}

uint64_t BlueFin::GlPeGalEphemeris::GlPeGalEphemeris(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  *(a1 + 32) = 0u;
  *(a1 + 8) = 4177;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = vdup_n_s32(0xFF9222FF);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *a1 = &unk_2A1F0FBD0;
  if (a2[1])
  {
    DeviceFaultNotify("glpe_galephmgr.cpp", 62, "GlPeGalEphemeris", "rotUncmprsdEph.ExtensionBit == 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_galephmgr.cpp", 62, "rotUncmprsdEph.ExtensionBit == 0");
  }

  v6 = (*a2 + 1);
  BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(a1, 0, (*a2 + 1));
  BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(a1, 4u, a2[4]);
  BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(a1, 3u, a2[5]);
  BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(a1, 5u, a2[6]);
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 6, a2[12]);
  BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(a1, 7u, a2[13]);
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 8, a2[14]);
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 9, a2[15]);
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 10, a2[16]);
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 11, a2[17]);
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 12, a2[18]);
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 13, a2[19]);
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 14, a2[20]);
  BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(a1, 0xFu, a2[21]);
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 16, a2[22]);
  BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(a1, 0x11u, a2[23]);
  BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(a1, 0x12u, a2[24]);
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 19, a2[27]);
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 20, a2[28]);
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 21, a2[29]);
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 22, a2[30]);
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 23, a2[31]);
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 24, a2[32]);
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 25, a2[33]);
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 26, a2[34]);
  BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(a1, 0x1Bu, a3 != 0);
  BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(a1, 0x1Cu, a3);
  BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(a1, 1u, 1u);
  BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(a1, 2u, 1u);
  return a1;
}

uint64_t *BlueFin::GlPeGalEphemeris::PutCmpSignedField(BlueFin::GlPeGalEphemeris *this, int a2, int a3)
{
  v5 = *(this + 2);
  v6 = 4 * *(this + 9);
  v11 = 0;
  BlueFin::GlBitBuffer::Initialize(v10, v5, v6);
  if ((a2 - 6) >= 0x15 || ((0x1FE5FDu >> (a2 - 6)) & 1) == 0)
  {
    DeviceFaultNotify("glpe_galephmgr.cpp", 707, "PutCmpSignedField", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_galephmgr.cpp", 707, "0");
  }

  v7 = (a2 - 6);
  v8 = byte_298A3C0B8[v7];
  BlueFin::GlBitBuffer::Position(v10, dword_298A3C064[v7]);
  return BlueFin::GlBitBuffer::PutU(v10, a3 + (0xFFFFFFFFuLL >> (32 - v8)) + 1, v8);
}

BOOL BlueFin::GlPeGalEphemeris::CompareEphSetFields(BlueFin::GlPeGalEphemeris *this, const BlueFin::GlPeGalEphemeris *a2)
{
  if ((*(*this + 192))(this, 27) && (*(*a2 + 192))(a2, 27) && (v4 = (*(*this + 192))(this, 28), v4 != (*(*a2 + 192))(a2, 28)))
  {
    v8 = 0;
  }

  else
  {
    v5 = (*(*this + 192))(this, 18);
    v6 = (*(*this + 232))(this, 18) * v5;
    v7 = (*(*a2 + 192))(a2, 18);
    v8 = v6 == (*(*a2 + 232))(a2, 18) * v7;
  }

  v9 = (*(*this + 192))(this, 5);
  v10 = (*(*a2 + 192))(a2, 5);
  v11 = (*(*this + 192))(this, 3);
  v12 = (*(*a2 + 192))(a2, 3);
  v13 = v9 == v10 && v8;
  return v11 == v12 && v13;
}

uint64_t BlueFin::GlPeNicEphemeris::GlPeNicEphemeris(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *(a1 + 32) = 0u;
  *(a1 + 8) = 3937;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = vdup_n_s32(0xFF9222FF);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 76) = 0u;
  *a1 = &unk_2A1F0DCC8;
  if (a2[1])
  {
    DeviceFaultNotify("glpe_nicephmgr.cpp", 436, "GlPeNicEphemeris", "rotUncmprsdEph.ExtensionBit == 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nicephmgr.cpp", 436, "rotUncmprsdEph.ExtensionBit == 0");
  }

  v6 = (*a2 + 1);
  BlueFin::GlPeNicEphemeris::PutCmpUnsignedField(a1, 0, (*a2 + 1));
  (*(*a1 + 216))(a1, 4, a2[4]);
  (*(*a1 + 216))(a1, 29, a2[6]);
  (*(*a1 + 224))(a1, 6, a2[12]);
  (*(*a1 + 216))(a1, 7, a2[13]);
  (*(*a1 + 224))(a1, 8, a2[14]);
  (*(*a1 + 224))(a1, 9, a2[15]);
  (*(*a1 + 224))(a1, 10, a2[16]);
  (*(*a1 + 224))(a1, 11, a2[17]);
  (*(*a1 + 224))(a1, 12, a2[18]);
  (*(*a1 + 224))(a1, 13, a2[19]);
  (*(*a1 + 224))(a1, 14, a2[20]);
  (*(*a1 + 216))(a1, 15, a2[21]);
  (*(*a1 + 224))(a1, 16, a2[22]);
  (*(*a1 + 216))(a1, 17, a2[23]);
  (*(*a1 + 216))(a1, 18, a2[24]);
  (*(*a1 + 224))(a1, 19, a2[27]);
  (*(*a1 + 224))(a1, 20, a2[28]);
  (*(*a1 + 224))(a1, 21, a2[29]);
  (*(*a1 + 224))(a1, 22, a2[30]);
  (*(*a1 + 224))(a1, 23, a2[31]);
  (*(*a1 + 224))(a1, 24, a2[32]);
  (*(*a1 + 224))(a1, 25, a2[33]);
  (*(*a1 + 224))(a1, 26, a2[34]);
  (*(*a1 + 216))(a1, 27, a3 != 0);
  (*(*a1 + 216))(a1, 28, a3);
  (*(*a1 + 216))(a1, 1, 1);
  (*(*a1 + 216))(a1, 2, 1);
  (*(*a1 + 216))(a1, 3, a2[5]);
  return a1;
}

void std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_5,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_5>,void ()(BlueFin::GlEngine *,unsigned int,unsigned int,BlueFin::etReadLTOFileStat,BlueFin::GlPeLtoReadStat,BlueFin::etPredictionFileType,unsigned int)>::operator()(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, int *a7, uint64_t a8, char a9)
{
  v9 = *a3;
  v10 = *a4;
  v11 = *a6;
  v12 = *a7;
  v13 = *(a1 + 8);
  v22 = *a5;
  FireDeviceLog::DeviceLogBase(6, "#fgd,handleLtoTimeStampReport,type,%d,minFct,%u,maxFct,%u,contentStat,%d,fileStat,%d", a3, a4, a5, a6, a7, a8, *a7);
  v20 = *(v13 + 288);
  if (v20)
  {
    if (v12 == 1)
    {
      v21 = 3;
    }

    else
    {
      v21 = 0;
    }

    if (v12 == 2)
    {
      v21 = 4;
    }

    v23[0] = v21;
    v24 = v9;
    v25 = v10;
    v26 = (v11 < 5) & (0x1Du >> v11);
    (*(*v20 + 48))(v20, v23);
  }

  else
  {

    FireDeviceLog::DeviceLogBase(3, "#fgd,#warning,handleLtoTimeStampReport,fLtoTimeStampReportCb,nullptr", v14, v15, v16, v17, v18, v19, a9);
  }
}

unsigned __int8 *BlueFin::GlPeAsstMgr::OnInitialTime(BlueFin::GlPeAsstMgr *this, const BlueFin::GlPeGnssTime *a2)
{
  for (i = 0; i != 7; ++i)
  {
    Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr(this + 48, i);
    if (Mgr)
    {
      (*(*Mgr + 40))(Mgr, a2);
    }
  }

  BlueFin::GlPeAsstMgr::UpdateEphValidityCache(this);

  return BlueFin::GlPeAlmMgr::OnInitialTime((this + 34112), a2);
}

unsigned __int8 *BlueFin::GlPeEphemerisMgr::OnInitialTime(BlueFin::GlPeEphemerisMgr *this, const BlueFin::GlPeGnssTime *a2)
{
  (*(*this + 304))(&__src);
  v8 = v7;
  memcpy(v12, __src, 4 * v7);
  v10 = 0;
  v9 = 0;
  v11 = v12[0];
  while (1)
  {
    result = BlueFin::GlSetIterator::operator++(&v8);
    if (v9 == v8)
    {
      break;
    }

    LOBYTE(__src) = v10;
    WritableEphemerisObj = BlueFin::GlPeEphemerisMgr::GetWritableEphemerisObj(this, &__src);
    (*(*WritableEphemerisObj + 72))(WritableEphemerisObj, a2);
  }

  return result;
}

uint64_t BlueFin::GlPeGpsEphemerisBase::SetEphTime(BlueFin::GlPeGpsEphemerisBase *this, const BlueFin::GlPeGnssTime *a2)
{
  result = (*(*this + 80))(this);
  if ((result & 1) == 0)
  {
    ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(this, 18);
    (*(*this + 216))(this, 27, 1);
    v8[0] = &off_2A1F0B5F0;
    v8[1] = 0;
    BlueFin::GlPeGnssTime::GetGps(a2, v8);
    *v6.i64 = ScaledFloatingField;
    BlueFin::GlWeekTowTime::resolveTowAmbiguity(v8, v6, &v11, v7);
    v9 = v11;
    v10 = v12;
    v8[2] = &off_2A1F0B5F0;
    return (*(*this + 216))(this, 28, v12 / 0x93A80uLL);
  }

  return result;
}

uint64_t *BlueFin::GlPeNicEphemeris::PutCmpSignedField(BlueFin::GlPeNicEphemeris *this, int a2, int a3)
{
  v5 = *(this + 2);
  v6 = 4 * *(this + 9);
  v11 = 0;
  BlueFin::GlBitBuffer::Initialize(v10, v5, v6);
  if ((a2 - 6) >= 0x15 || ((0x1FE5FDu >> (a2 - 6)) & 1) == 0)
  {
    DeviceFaultNotify("glpe_nicephmgr.cpp", 1117, "PutCmpSignedField", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nicephmgr.cpp", 1117, "0");
  }

  v7 = (a2 - 6);
  v8 = byte_298A3AA34[v7];
  BlueFin::GlBitBuffer::Position(v10, dword_298A3A9E0[v7]);
  return BlueFin::GlBitBuffer::PutU(v10, a3 + (0xFFFFFFFFuLL >> (32 - v8)) + 1, v8);
}

BOOL BlueFin::GlPeNicEphemeris::CompareEphSetFields(BlueFin::GlPeNicEphemeris *this, const BlueFin::GlPeNicEphemeris *a2)
{
  if ((*(*this + 192))(this, 27) && (*(*a2 + 192))(a2, 27) && (v4 = (*(*this + 192))(this, 28), v4 != (*(*a2 + 192))(a2, 28)))
  {
    v8 = 0;
  }

  else
  {
    v5 = (*(*this + 192))(this, 18);
    v6 = (*(*this + 232))(this, 18) * v5;
    v7 = (*(*a2 + 192))(a2, 18);
    v8 = v6 == (*(*a2 + 232))(a2, 18) * v7;
  }

  v9 = (*(*this + 192))(this, 29);
  v10 = (*(*a2 + 192))(a2, 29);
  v11 = (*(*this + 192))(this, 3);
  v12 = (*(*a2 + 192))(a2, 3);
  v13 = v9 == v10 && v8;
  return v11 == v12 && v13;
}

uint64_t BlueFin::GlPeTimeManager::GetTime@<X0>(BlueFin::GlPeTimeManager *this@<X0>, const BlueFin::GlNicTime *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v25 = 0.0;
  if ((*(*a2 + 32))(a2) < 0x24EA0000)
  {
    v9 = (*(*a2 + 32))(a2);
    v10 = BlueFin::GlPeTimeManager::handleGps1023WeekRollovers(this, v9 / 0x93A80);
    v13 = (*(*a2 + 32))(a2);
    LODWORD(v12) = *(a2 + 2);
    *v13.i64 = v12 * 2.32830644e-10 + (v11 % 0x93A80);
    v22 = &off_2A1F0B5F0;
    *v14.i64 = *v13.i64 - trunc(*v13.i64);
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v16 = *vbslq_s8(vnegq_f64(v15), v14, v13).i64;
    if (v16 < 0.0 || v16 >= 1.0)
    {
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
    }

    v18 = v16 * 4294967300.0 + 0.5;
    v19 = v18;
    if (v18 >= 4294967300.0)
    {
      v19 = -1;
    }

    v23 = v19;
    v24 = *v13.i64 + 604800 * v10;
    v22 = &off_2A1F0B5F0;
    v21[0] = v19;
    v21[1] = v24;
    v8 = v21;
  }

  else
  {
    v22 = *(a2 + 1);
    v8 = &v22;
  }

  BlueFin::GlPeTimeManager::dateTimeToLms(this, 5, v8, &v25);
  return BlueFin::GlPeTimeManager::commonGnssToLms(this, v25, a3, a4);
}

uint64_t BlueFin::GlPeIONXMgr::SetIONXFromLto(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 - 1 < 4)
  {
    result = (a2 != 0) & *(a1 + 25);
  }

  else
  {
    result = 0;
  }

  if (result == 1)
  {
    if (!*(a2 + 64))
    {
      v7.f64[0] = *(a2 + 56);
      v8 = *(a2 + 11496);
      v7.f64[1] = *(v8 + 24);
      *(a1 + 72) = vmul_f32(vcvt_f32_f64(v7), vdup_n_s32(0x447A0000u));
      *(a1 + 68) = __exp10f(*(v8 + 32));
      *(a1 + 32) = a3;
      v9 = *(a2 + 68);
      v10 = *(v8 + 34);
      *(a1 + 36) = v9;
      *(a1 + 40) = v10;
      *(a1 + 28) = *(a2 + 11520) - *a2;
      v11.f64[0] = *(a2 + 8);
      v12 = *(a2 + 16);
      v11.f64[1] = v11.f64[0] + v12.f64[0] * v9;
      *(a1 + 44) = vcvt_hight_f32_f64(vcvt_f32_f64(v11), v12);
      v11.f64[0] = *(a2 + 32);
      v13 = v12.f64[1] + v11.f64[0] * v10;
      *v11.f64 = v11.f64[0];
      *&v13 = v13;
      *(a1 + 60) = LODWORD(v13);
      *(a1 + 64) = LODWORD(v11.f64[0]);
    }

    v14 = 0;
    v15 = a3;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v21 = vnegq_f64(v16);
    do
    {
      if (!*(a2 + v14 + 64))
      {
        BlueFin::stIonex::operator=(*(a1 + 46176) + v14, a2 + v14);
        if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
        {
          v17 = (*(*a1 + 24))(a1, 0, 0);
        }

        ++*(a1 + 46184);
        v19 = *(a1 + 46176);
        v20 = *(v19 + v14);
        *v17.i64 = (v20 % 0x93A80);
        *v18.i64 = *v17.i64 - trunc(*v17.i64);
        if (*vbslq_s8(v21, v18, v17).i64 >= 1.0)
        {
          DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
        }

        v22 = *(v19 + v14);
        GlCustomLog(14, "IONX::SetIONXFromLto TOW %u, StartLatDeg %.2f, DelLatDeg %.2f, EndLat %.2f, StartLonDeg %.2f, DelLonDeg %.2f, EndLon %.2f\n", v20 % 0x93A80, *(v19 + v14 + 8), *(v19 + v14 + 16), *(a1 + 48), *(v19 + v14 + 24), *(v19 + v14 + 32), *(a1 + 60));
      }

      v14 += 11520;
      --v15;
    }

    while (v15);
    *(a1 + 24) = 1;
    *(a1 + 46184) = 0;
    return 1;
  }

  return result;
}

void BlueFin::stIonex::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    BlueFin::stIonexHeader::operator=(a1, a2);
    v4 = 0;
    v5 = 57;
    do
    {
      v6 = *(a2 + 11496);
      v7 = *(v3 + 11496);
      if (v7 != v6)
      {
        v8 = v6 + v4;
        v9 = v7 + v4;
        *v9 = *v8;
        *(v9 + 16) = *(v8 + 16);
        *(v9 + 32) = *(v8 + 32);
        v10 = *(v8 + 36);
        *(v9 + 52) = *(v8 + 52);
        *(v9 + 36) = v10;
        v11 = *(v8 + 68);
        v12 = *(v8 + 84);
        v13 = *(v8 + 100);
        *(v9 + 116) = *(v8 + 116);
        *(v9 + 100) = v13;
        *(v9 + 84) = v12;
        *(v9 + 68) = v11;
        v14 = *(v8 + 132);
        v15 = *(v8 + 148);
        v16 = *(v8 + 164);
        *(v9 + 180) = *(v8 + 180);
        *(v9 + 164) = v16;
        *(v9 + 148) = v15;
        *(v9 + 132) = v14;
      }

      v4 += 200;
      --v5;
    }

    while (v5);
  }
}

double BlueFin::stIonexHeader::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    result = *(a2 + 64);
    *(a1 + 64) = result;
  }

  return result;
}

uint64_t BlueFin::GlPeLtoReader::UpdatePex(BlueFin::GlPeLtoReader *this, void *a2, int a3)
{
  if (!*(this + 1399))
  {
    return 0;
  }

  if (*(this + 10784) == 1 && (*(this + 1245) != *a2 || *(this + 1246) != a2[1]))
  {
    v6 = *(this + 1349);
    if (v6)
    {
      *v6 = 5;
    }

    result = 0;
    *(this + 2702) = 5;
    return result;
  }

  v8 = *(this + 1347);
  if (v8)
  {
    v9 = (this + 9960);
    if (a3)
    {
      BlueFin::GlPeLtoMgr::SetRtoDigest(v8, v9);
    }

    else
    {
      BlueFin::GlPeLtoMgr::SetLtoDigest(v8, v9, 1);
    }
  }

  result = BlueFin::GlPeLtoReader::CheckExpiration(this);
  if (result)
  {
    v10 = *(this + 25352);
    v11 = v10 & 0xFFFD;
    if (!a3)
    {
      v11 = *(this + 25352);
    }

    if ((v10 & 4) != 0)
    {
      v12 = v11 & 0xFFFB;
      BlueFin::GlPeLtoReader::SendToPex(this, 5, a3, (v11 & 0xFFFB) == 0);
      v10 = *(this + 25352);
      v11 = v12;
      if ((v10 & 8) == 0)
      {
LABEL_20:
        if ((v10 & 0x20) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_29;
      }
    }

    else if ((v10 & 8) == 0)
    {
      goto LABEL_20;
    }

    v13 = v11 & 0xFFF7;
    BlueFin::GlPeLtoReader::SendToPex(this, 4, a3, (v11 & 0xFFF7) == 0);
    v10 = *(this + 25352);
    v11 = v13;
    if ((v10 & 0x20) == 0)
    {
LABEL_21:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_30;
    }

LABEL_29:
    v14 = v11 & 0xFFDF;
    BlueFin::GlPeLtoReader::SendToPex(this, 3, a3, (v11 & 0xFFDF) == 0);
    v10 = *(this + 25352);
    v11 = v14;
    if ((v10 & 0x10) == 0)
    {
LABEL_22:
      if ((v10 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_31;
    }

LABEL_30:
    v15 = v11 & 0xFFEF;
    BlueFin::GlPeLtoReader::SendToPex(this, 6, a3, (v11 & 0xFFEF) == 0);
    v10 = *(this + 25352);
    v11 = v15;
    if ((v10 & 1) == 0)
    {
LABEL_23:
      if ((v10 & 2) == 0)
      {
        return 1;
      }

LABEL_24:
      BlueFin::GlPeLtoReader::SendToPex(this, 2, a3, (v11 & 0xFFFD) == 0);
      return 1;
    }

LABEL_31:
    v16 = v11 & 0xFFFE;
    BlueFin::GlPeLtoReader::SendToPex(this, 0, a3, (v11 & 0xFFFE) == 0);
    v11 = v16;
    if ((*(this + 25352) & 2) == 0)
    {
      return 1;
    }

    goto LABEL_24;
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxyLtoFileGpsTimestampsReport(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalLtoFileGpsTimestampsReport(v13, a2, a3, a4, a5, a6, a7);
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxy::HalLtoFileGpsTimestampsReport(BlueFin::GlDbgCodec *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a3;
  v19 = a2;
  v17 = a7;
  if (!*(result + 101))
  {
    v13 = result;
    BlueFin::GlDbgCodec::WriteStart(result, 564);
    if ((*(*v13 + 120))(v13))
    {
      BlueFin::GlDbgCodec::Write(v13, &v19);
    }

    if ((*(*v13 + 120))(v13))
    {
      BlueFin::GlDbgCodec::Write(v13, &v18);
    }

    v16 = a4;
    BlueFin::GlDbgCodec::Write(v13, &v16);
    v16 = a5;
    BlueFin::GlDbgCodec::Write(v13, &v16);
    v16 = a6;
    BlueFin::GlDbgCodec::Write(v13, &v16);
    if ((*(*v13 + 120))(v13))
    {
      BlueFin::GlDbgCodec::Write(v13, &v17);
    }

    (*(*v13 + 32))(v13, 1);
    v14 = *(v13 + 868);
    if (v14)
    {
      v14(v13 + 608, a2, a3, a4, a5, a6, a7);
    }

    BlueFin::GlDbgCodec::WriteFinal(v13, 564);
    v15 = *(*v13 + 32);

    return v15(v13, 1);
  }

  return result;
}

void FireCallback::GlLTOFileGpsPredictionTimestampReport(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (FireCallback::pInstance)
  {
    v11 = *(FireCallback::pInstance + 760);
    if (v11)
    {
      v19 = a1;
      v18 = a2;
      v16 = a4;
      v17 = a3;
      v14 = a6;
      v15 = a5;
      v13 = a7;
      (*(*v11 + 48))(v11, &v19, &v18, &v17, &v16, &v15, &v14, &v13);
      return;
    }

    v12 = "fcb,fLTOFileGpsPredictionTimestampReportCb,nullptr";
  }

  else
  {
    v12 = "fcb,GlLTOFileGpsPredictionTimestampReport,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v12, a3, a4, a5, a6, a7, a8, a9);
}

unsigned __int8 *BlueFin::GlPeGloEphMgr::OnInitialTime(BlueFin::GlPeGloEphMgr **this, const BlueFin::GlPeGnssTime *a2)
{
  BlueFin::GlPeEphemerisMgr::OnInitialTime(this, a2);
  (*(*this + 38))(&__src, this);
  v7 = v6;
  memcpy(v11, __src, 4 * v6);
  v9 = 0;
  v8 = 0;
  v10 = v11[0];
  while (1)
  {
    result = BlueFin::GlSetIterator::operator++(&v7);
    if (v8 == v7)
    {
      break;
    }

    LOBYTE(__src) = v9;
    v4 = (*(*this + 46))(this, &__src);
    if ((*(v4 + 8) & 0xF) == 1 && !BlueFin::GlPeGloEphMgr::quarterCheck(this[2], v4))
    {
      (*(*this + 42))(this, &__src);
    }
  }

  return result;
}

uint64_t BlueFin::GlPeBdsEphemeris::SetEphTime(BlueFin::GlPeBdsEphemeris *this, const BlueFin::GlPeGnssTime *a2)
{
  result = (*(*this + 192))(this, 27);
  if (!result)
  {
    ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(this, 18);
    (*(*this + 216))(this, 27, 1);
    v8[0] = &off_2A1F0E4D0;
    v8[1] = 0;
    BlueFin::GlPeGnssTime::GetBds(a2, v8);
    *v6.i64 = ScaledFloatingField;
    BlueFin::GlWeekTowTime::resolveTowAmbiguity(v8, v6, &v11, v7);
    v9 = v11;
    v10 = v12;
    v8[2] = &off_2A1F0E4D0;
    return (*(*this + 216))(this, 28, (v12 - 820108814) / 0x93A80uLL);
  }

  return result;
}

uint64_t BlueFin::GlPeGalEphemeris::SetEphTime(BlueFin::GlPeGalEphemeris *this, const BlueFin::GlPeGnssTime *a2)
{
  result = (*(*this + 80))(this);
  if ((result & 1) == 0)
  {
    ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(this, 18);
    (*(*this + 216))(this, 27, 1);
    v8[0] = &off_2A1F0E480;
    v8[1] = 0;
    BlueFin::GlPeGnssTime::GetGal(a2, v8);
    *v6.i64 = ScaledFloatingField;
    BlueFin::GlWeekTowTime::resolveTowAmbiguity(v8, v6, &v11, v7);
    v9 = v11;
    v10 = v12;
    v8[2] = &off_2A1F0E480;
    return (*(*this + 216))(this, 28, (v12 - 619315200) / 0x93A80uLL);
  }

  return result;
}

uint64_t BlueFin::GlPeNicEphemeris::SetEphTime(BlueFin::GlPeNicEphemeris *this, const BlueFin::GlPeGnssTime *a2)
{
  result = (*(*this + 80))(this);
  if ((result & 1) == 0)
  {
    ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(this, 18);
    (*(*this + 216))(this, 27, 1);
    v8[0] = &off_2A1F0DFC8;
    v8[1] = 0;
    BlueFin::GlPeGnssTime::GetNic(a2, v8);
    *v6.i64 = ScaledFloatingField;
    BlueFin::GlWeekTowTime::resolveTowAmbiguity(v8, v6, &v11, v7);
    v9 = v11;
    v10 = v12;
    v8[2] = &off_2A1F0DFC8;
    return (*(*this + 216))(this, 28, (v12 - 619315200) / 0x93A80uLL);
  }

  return result;
}

unsigned __int8 *BlueFin::GlPeAlmMgr::OnInitialTime(BlueFin::GlPeAlmMgr *this, const BlueFin::GlPeGnssTime *a2)
{
  v18[0] = &off_2A1F0B5F0;
  v18[1] = 0;
  BlueFin::GlPeGnssTime::GetGps(a2, v18);
  for (i = 0; i != 7; ++i)
  {
    v4 = *(this + 54) + 48 * i;
    v13 = *(v4 + 8);
    memcpy(v17, *v4, 4 * v13);
    v15 = 0;
    v14 = 0;
    v16 = v17[0];
    while (1)
    {
      result = BlueFin::GlSetIterator::operator++(&v13);
      if (v14 == v13)
      {
        break;
      }

      v6 = v15;
      AlmReference = BlueFin::GlPeAlmMgr::getAlmReference(this, i, v15);
      LODWORD(v8) = *(AlmReference + 16);
      *v9.i64 = v8;
      BlueFin::GlWeekTowTime::resolveTowAmbiguity(v18, v9, &v19, v10);
      *(AlmReference + 88) = (v20 / 0x93A80);
      if ((v6 - 64) <= 0xC0u)
      {
        DeviceFaultNotify("glgnss.h", 115, "Add", "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.h", 115, "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
      }

      v11 = *(this + 54) + 48 * i;
      *(*(v11 + 24) + ((v6 >> 3) & 0x1C)) |= 1 << v6;
      BlueFin::GlSetBase::Remove(v11, v6);
      v12 = *(AlmReference + 108);
      v19 = *(AlmReference + 104);
      LOBYTE(v20) = v12;
      BlueFin::GlPeAlmMgr::Serialize(this, &v19, 0);
    }
  }

  return result;
}

uint64_t BlueFin::GlPeStartupMgr::checkOsc(BlueFin::GlPeStartupMgr *this)
{
  v1 = *(this + 2);
  v2 = *(v1 + 10);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  if (*(v1 + 40) != -7200001)
  {
    if (v2 * 0.000000001 < 0.00000599999976)
    {
      return 1;
    }

    GlCustomLog(14, "GLL_Startup oscUnc %f\n", v2 * 0.000000001);
  }

  return 0;
}

uint64_t BlueFin::GlPeStartupMgr::checkAll(BlueFin::GlPeStartupMgr *this, int8x16_t a2, int8x16_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, BlueFin::GlSetBase *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  *(this + 24) = BlueFin::GlPeStartupMgr::checkTime(this, a2, a3);
  *(this + 25) = BlueFin::GlPeStartupMgr::checkOsc(this);
  v43 = *(*this + 100);
  if (*(this + 12) == -7200001 && v43 != -1)
  {
    *(this + 12) = *(BlueFin::GlUtils::m_pInstance + 1092) - *(this + 10);
  }

  *(this + 26) = v43 != -1;

  return BlueFin::GlPeStartupMgr::checkAllEph(this, this + 27, this + 28, this + 31, v39, v40, v41, v42, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t BlueFin::GlPeStartupMgr::checkAllEph(BlueFin::GlPeStartupMgr *this, BOOL *a2, BOOL *a3, BOOL *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, BlueFin::GlSetBase *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v40 = 0;
  a36 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  v41 = *this;
  v42 = *(*this + 120200);
  v43 = 7;
  do
  {
    v40 += BlueFin::GlSetBase::Cnt(v42);
    v42 = (v42 + 24);
    --v43;
  }

  while (v43);
  if (v40 >= 4u)
  {
    *a2 = 1;
  }

  BlueFin::GlGnssSet::operator|(v41 + 120224, v41 + 120608, &a9);
  v44 = 0;
  v45 = a30;
  v46 = 7;
  do
  {
    v44 += BlueFin::GlSetBase::Cnt(v45);
    v45 = (v45 + 24);
    --v46;
  }

  while (v46);
  if (v44 >= 4u)
  {
    v47 = 0;
    v48 = 0;
    *a3 = 1;
    do
    {
      Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr((*this + 384), v48);
      if (Mgr)
      {
        v50 = Mgr;
        v51 = BlueFin::GlGnssSet::operator()(&a9, v48);
        v58 = *(v51 + 8);
        memcpy(&v62, *v51, 4 * v58);
        v60 = 0;
        v59 = 0;
        v61 = v62;
        while (1)
        {
          BlueFin::GlSetIterator::operator++(&v58);
          if (v59 == v58)
          {
            break;
          }

          v57 = v60;
          v47 += (*(*v50 + 264))(v50, &v57);
        }
      }

      ++v48;
    }

    while (v48 != 7);
    if (v47 > 3)
    {
      *(this + 29) = 1;
    }
  }

  v52 = 0;
  v53 = *(*this + 120584);
  v54 = 7;
  do
  {
    result = BlueFin::GlSetBase::Cnt(v53);
    v52 += result;
    v53 = (v53 + 24);
    --v54;
  }

  while (v54);
  if (v52 >= 4u)
  {
    *a4 = 1;
  }

  v56 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeStartupMgr::checkTime(BlueFin::GlPeStartupMgr *this, int8x16_t a2, int8x16_t a3)
{
  v3 = *(this + 1);
  if (!*(v3 + 2576))
  {
    return 0;
  }

  a2.i64[0] = *(v3 + 2632);
  if (*a2.i64 == 4294967300.0)
  {
    v4 = -1;
LABEL_4:
    GlCustomLog(14, "GLL_Startup timeUnc %u\n", v4);
    return 0;
  }

  if (*a2.i64 >= 0.5)
  {
    *a2.i64 = *a2.i64 + 0.5;
    *a3.i64 = *a2.i64 - trunc(*a2.i64 * 2.32830644e-10) * 4294967300.0;
    v6.f64[0] = NAN;
    v6.f64[1] = NAN;
    a3.i64[0] = vbslq_s8(vnegq_f64(v6), a3, a2).u64[0];
    if (*a2.i64 > 4294967300.0)
    {
      a2.i64[0] = a3.i64[0];
    }

    v4 = *a2.i64;
    if (*a2.i64 >= 0x3938700)
    {
      goto LABEL_4;
    }
  }

  if (*(this + 13) == -7200001)
  {
    *(this + 13) = *(BlueFin::GlUtils::m_pInstance + 1092) - *(this + 10);
  }

  return 1;
}

uint64_t BlueFin::GlPeStartupMgr::update(BlueFin::GlPeStartupMgr *this)
{
  v1 = *(this + 25);
  if (*(this + 24) == 1)
  {
    v2 = *(this + 26);
    if (*(this + 25))
    {
      if ((*(this + 26) & 1) == 0)
      {
        *(this + 9) = 0;
        v8 = 70;
        v7 = "Cold";
        v3 = 84;
        v6 = 84;
        goto LABEL_28;
      }

      if (*(this + 27) & 1) != 0 || (v9 = *(this + 28), v9 == 1) && (*(this + 29))
      {
        v3 = 84;
        v4 = 3;
      }

      else
      {
        v4 = 1;
        if ((*(this + 30) & 1) == 0)
        {
          if ((*(this + 31) | v9))
          {
            v4 = 1;
          }

          else
          {
            v4 = 2;
          }
        }

        v3 = 84;
      }
    }

    else
    {
      if ((*(this + 26) & 1) == 0)
      {
        *(this + 9) = 0;
        v7 = "Cold";
        v6 = 84;
        v3 = 70;
        v8 = 70;
        goto LABEL_28;
      }

      if ((*(this + 27) & 1) != 0 || (*(this + 30) & 1) != 0 || (*(this + 31) & 1) != 0 || *(this + 28) == 1)
      {
        v3 = 70;
        v4 = 1;
      }

      else
      {
        v4 = 0;
        v3 = 70;
      }
    }

    *(this + 9) = v4;
    v7 = BlueFin::GlPeStartupMgr::update(void)::acStartTypeImage[v4];
    v6 = 84;
    goto LABEL_27;
  }

  v5 = *(this + 26);
  *(this + 9) = 0;
  v6 = 70;
  if (v1)
  {
    v3 = 84;
  }

  else
  {
    v3 = 70;
  }

  v7 = "Cold";
  v8 = 70;
  if (v5)
  {
LABEL_27:
    v8 = 84;
  }

LABEL_28:
  if (*(this + 28))
  {
    v10 = 84;
  }

  else
  {
    v10 = 70;
  }

  if (*(this + 31))
  {
    v11 = 84;
  }

  else
  {
    v11 = 70;
  }

  if (*(this + 30))
  {
    v12 = 84;
  }

  else
  {
    v12 = 70;
  }

  if (*(this + 27))
  {
    v13 = 84;
  }

  else
  {
    v13 = 70;
  }

  return GlCustomLog(12, "    GLL_Startup Type: %s,Tim[%c],Osc[%c],Pos[%c],Eph[%c],Cbee[%c],Lto[%c],AEph[%c]\n", v7, v6, v3, v8, v13, v12, v11, v10);
}

uint64_t BlueFin::GlReqSm::CreateMeJob(BlueFin::GlReqSm *this)
{
  v2 = this + 53672;
  *(this + 54571) = 1;
  BlueFin::GlReqSm::SetAsstFromPend(this, 1, 0);
  result = BlueFin::GlReqSm::CreateNewReqFromPend(this);
  v4 = *(this + 3048);
  if ((v4 & 0x800) != 0)
  {
    return result;
  }

  v5 = (this + 10880);
  if (*(*(this + 784) + 136) == 1)
  {
    v6 = *(*(this + 807) + 10);
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
    }

    v7 = v6 * 0.000000001;
    CWRequest = BlueFin::GlPeReqBag::GetCWRequest((this + 10880));
    if (CWRequest)
    {
      WORD6(v93) = 0;
      DWORD2(v93) = 0;
      *&v94 = 0xFFFF0100000000;
      memset(v91, 0, sizeof(v91));
      v92 = 0u;
      *&v93 = 0;
      (*(*CWRequest + 456))();
    }

    if (v7 <= *(*(this + 784) + 128) + -0.000000001)
    {
      goto LABEL_15;
    }

    if ((v4 & 0x100) != 0)
    {
      FactTestItem = BlueFin::GlPeReqBag::GetFactTestItem((this + 10880));
      v9 = v4 & 0x20;
      if ((v4 & 0x20) == 0 && !FactTestItem)
      {
        *(v2 + 1) = this;
        BlueFin::GlTimer::arm((this + 53648), 50, 0, 0x190u);
        *v2 = 1;
        GlCustomLog(14, "CW and CNTIN both requested\n");
LABEL_15:
        GlCustomLog(14, "CNTIN is in frq plan (%.1f, %.1f)\n", v7 * 1000000000.0, *(*(this + 784) + 128) * 1000000000.0);
        goto LABEL_16;
      }
    }

    else
    {
      v9 = v4 & 0x20;
    }

    if (!v9)
    {
      BlueFin::GlPeCntinMgr::StartCntin(*(this + 791));
    }

    goto LABEL_15;
  }

LABEL_16:
  if ((v4 & 0x100) != 0 && (result = BlueFin::GlPeReqBag::GetFactTestItem((this + 10880)), result == 1))
  {
    v11 = *(this + 807);
    v12 = *(v11 + 2);
    v13 = *(v11 + 10) * 0.000000001;
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      result = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
    }

    if (v13 > 0.000000098 && v13 < 0.0000005)
    {
      v14 = v12 * 0.000000001;
      GlCustomLog(14, "OSC Fresh Override for FACTORY TEST\n");
      v15 = *(*(this + 785) + 2568);
      BlueFin::GlPeOscMgr::SetOscOff(*(this + 807), v14, 0.000000098, 0);
      result = (*(**(this + 39) + 320))(v14, 0.000000098);
    }
  }

  else
  {
    result = BlueFin::GlReqSm::SetOscOffsAiding(this, 0);
  }

  if ((v4 & 0xF05F) != 0)
  {
    *&v91[0] = v91 + 12;
    BYTE8(v91[0]) = 8;
    memset(v91 + 12, 0, 32);
    *(this + 2471) = 0;
    BlueFin::GlReqSm::GenerateInitialDopplerBasedAiding(this);
    result = BlueFin::GlReqSm::GenerateAiding(this, *(*(this + 785) + 2568), v91, 0, 1);
  }

  if ((v4 & 0x100) == 0)
  {
    goto LABEL_128;
  }

  *(this + 2471) = 0;
  result = BlueFin::GlPeReqBag::GetFactTestItem((this + 10880));
  v22 = result;
  if (!result)
  {
LABEL_119:
    BlueFin::GlReqSm::sendMeSignalAiding(this, (this + 4928), v16, v17, v18, v19, v20, v21, v69, v70, v71, v72, __n, v74, v75, v76, v77, v78, v80, v81, v82, *v83, *&v83[8], v83[16], *&v84[4], *&v84[12], v85, v86[0], v86[1], v86[2], v86[3], v86[4], v86[5], v86[6], v86[7], v87, v88, v89, v90, v91[0], v91[1], v91[2], v91[3], v91[4], v91[5], v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, vars0);
    v59 = *(*(this + 807) + 10);
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
    }

    if (v22 != 4 && v59 * 0.000000001 < 0.0000004)
    {
      *(*(this + 807) + 14) = 1;
    }

    v82 = &v83[4];
    v83[0] = 8;
    *&v83[4] = 0u;
    *v84 = 0u;
    BlueFin::GlSignalIdSet::GlSignalIdSet(v91, &v82, 0);
    BlueFin::GlPeReqBag::GetFactTestSvIds(v5, v91);
    BYTE4(v85) = BYTE8(v91[0]);
    memcpy(v86 + 4, *&v91[0], 4 * BYTE8(v91[0]));
    HIWORD(v85) = 0;
    BYTE5(v85) = 0;
    LODWORD(v86[0]) = HIDWORD(v86[0]);
    BlueFin::GlSetIterator::operator++(&v85 + 4);
    if (BYTE5(v85) != BYTE4(v85))
    {
      while (HIWORD(v85) < 0x23FuLL)
      {
        v60 = *(this + 789);
        v61 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * HIWORD(v85);
        v62 = *v61;
        LODWORD(v61) = v61[1];
        LOBYTE(v80) = v62;
        LODWORD(v81) = v61;
        WORD2(v81) = HIWORD(v85);
        BlueFin::GlPeRangeAidGen::MakeFactoryAid(v60, &v80, v22);
        BlueFin::GlSetIterator::operator++(&v85 + 4);
        if (BYTE5(v85) == BYTE4(v85))
        {
          goto LABEL_127;
        }
      }

LABEL_141:
      v66 = "usIndex < NUM_SIGNAL_IDS";
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      v67 = "glsignalid.h";
      v68 = 578;
LABEL_142:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v67, v68, v66);
    }

LABEL_127:
    result = BlueFin::GlReqSm::sendMeSatAiding(this, (*(this + 789) + 320));
    goto LABEL_128;
  }

  if (result != 7)
  {
    if (result == 6)
    {
      if ((*(*(this + 784) + 88) - 29) > 1)
      {
        v22 = 6;
      }

      else
      {
        v2[882] = 1;
        (*(**(this + 39) + 560))(*(this + 39), 1);
        v22 = 3;
      }
    }

    goto LABEL_37;
  }

  if ((*(*(this + 784) + 88) - 29) > 1)
  {
    v22 = 7;
LABEL_37:
    v76 = v2;
    *&v91[0] = v91 + 12;
    BYTE8(v91[0]) = 19;
    memset(v91 + 12, 0, 64);
    *(&v91[4] + 8) = 0u;
    v72 = this + 10880;
    BlueFin::GlPeReqBag::GetFactTestSvIds((this + 10880), v91);
    HIDWORD(v85) = BYTE8(v91[0]);
    v74 = *&v91[0];
    v75 = BYTE8(v91[0]);
    __n = 4 * BYTE8(v91[0]);
    memcpy(v86 + 4, *&v91[0], __n);
    LODWORD(v86[0]) = HIDWORD(v86[0]);
    BlueFin::GlSetIterator::operator++(&v85 + 4);
    v25 = *(this + 2471);
    HIDWORD(v77) = 255;
    v79 = 255;
    v26 = 255;
    v27 = 255;
    v28 = 255;
    v29 = 255;
    if (v25 > 0x9F)
    {
LABEL_57:
      v36 = v79 == 255 || HIDWORD(v77) == 255 || v79 != HIDWORD(v77);
      v78 = v36;
      v39 = v26 != 255 && v27 != 255 && v26 == v27;
      v42 = v28 == 255 || v29 == 255 || v28 != v29;
      BYTE4(v85) = v75;
      memcpy(v86 + 4, v74, __n);
      HIWORD(v85) = 0;
      BYTE5(v85) = 0;
      LODWORD(v86[0]) = HIDWORD(v86[0]);
      BlueFin::GlSetIterator::operator++(&v85 + 4);
      if (v25 <= 0x9F)
      {
        while (1)
        {
          if (BYTE5(v85) == BYTE4(v85))
          {
            goto LABEL_118;
          }

          if (HIWORD(v85) >= 0x23FuLL)
          {
            goto LABEL_141;
          }

          v43 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * HIWORD(v85);
          v44 = *v43;
          v45 = v43[1];
          v46 = BlueFin::GlSvId::s_aucSvId2gnss[v44];
          v47 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v45 - v45 + BlueFin::GlSvId::s_aucSvId2gnss[v44]];
          if (!v47)
          {
            v53 = ((v46 != 0) | v78);
            v54 = v46 != 3;
            if ((v53 & 1) == 0 || !v54 && !v42)
            {
LABEL_97:
              v48 = v25;
              goto LABEL_112;
            }

            v48 = (v25 + 1);
            *(this + 2471) = v25 + 1;
            v55 = *(this + 618) + 8 * v25;
            *v55 = v44;
            v51 = *(v2 + 223) | 0x4100;
            *(v55 + 4) = v51;
            v52 = (v55 + 4);
            goto LABEL_107;
          }

          if (v47 == 11 && v39)
          {
            goto LABEL_97;
          }

          v48 = (v25 + 1);
          *(this + 2471) = v25 + 1;
          v49 = *(this + 618) + 8 * v25;
          *v49 = v44;
          v50 = *(v2 + 223);
          v51 = v50 | 0x4100;
          *(v49 + 4) = v50 | 0x4100;
          v52 = (v49 + 4);
          if (v47 <= 4)
          {
            break;
          }

          if (v47 > 7)
          {
            if (v47 == 8)
            {
              v51 = v50 | 0x4500;
              *v52 = v50 | 0x4500;
              v58 = *(this + 784);
              if (*(v58 + 26294) != 1 || *(v58 + 88) < 37 || (*(*(v58 + 26232) + 1) & 0x10) == 0)
              {
                goto LABEL_107;
              }

LABEL_105:
              v51 = v51 & 0xFFFEFEFF | 0x10000;
LABEL_106:
              *v52 = v51;
              goto LABEL_107;
            }

            if (v47 == 13)
            {
              goto LABEL_105;
            }
          }

          else
          {
            if (v47 == 5)
            {
              goto LABEL_100;
            }

            if (v47 == 6)
            {
              v51 = v50 | 0x104100;
              goto LABEL_106;
            }
          }

LABEL_107:
          v56 = *(v2 + 304);
          if (v56 == 2)
          {
            v57 = -17891585;
            goto LABEL_111;
          }

          if (v56 == 1)
          {
            v57 = -1025;
LABEL_111:
            *v52 = v57 & v51;
          }

LABEL_112:
          BlueFin::GlSetIterator::operator++(&v85 + 4);
          v25 = v48;
          if (v48 >= 0xA0)
          {
            goto LABEL_118;
          }
        }

        if (v47 == 1)
        {
          goto LABEL_102;
        }

        if (v47 == 2)
        {
LABEL_100:
          v51 = v50 | 0x4500;
          *v52 = v50 | 0x4500;
        }

        if (v47 == 4)
        {
LABEL_102:
          v51 |= 0x200u;
          goto LABEL_106;
        }

        goto LABEL_107;
      }

LABEL_118:
      v5 = (this + 10880);
      goto LABEL_119;
    }

    if (BYTE5(v85) == BYTE4(v85))
    {
      HIDWORD(v77) = 255;
      v79 = 255;
      goto LABEL_57;
    }

    HIDWORD(v77) = 255;
    v79 = 255;
    while (1)
    {
      if (HIWORD(v85) >= 0x23FuLL)
      {
        goto LABEL_141;
      }

      v30 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * HIWORD(v85);
      v31 = *v30;
      v32 = BlueFin::GlSvId::s_aucSvId2gnss[*v30];
      v33 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v30[1] - v30[1] + v32];
      if (v33 == 11)
      {
        break;
      }

      if (v33 != 2)
      {
        if (!v33)
        {
          if (v32)
          {
            v28 = v31;
            if (v32 != 3)
            {
              v66 = "0";
              DeviceFaultNotify("glreqsm.cpp", 5711, "CreateMeJob", "0");
              v67 = "glreqsm.cpp";
              v68 = 5711;
              goto LABEL_142;
            }
          }

          else
          {
            v79 = v31;
          }
        }

        goto LABEL_54;
      }

      if (v32)
      {
        v29 = v31;
        if (v32 != 3)
        {
          v66 = "0";
          DeviceFaultNotify("glreqsm.cpp", 5732, "CreateMeJob", "0");
          v67 = "glreqsm.cpp";
          v68 = 5732;
          goto LABEL_142;
        }
      }

      else
      {
        HIDWORD(v77) = v31;
      }

LABEL_56:
      BlueFin::GlSetIterator::operator++(&v85 + 4);
      if (BYTE5(v85) == BYTE4(v85))
      {
        goto LABEL_57;
      }
    }

    v26 = v31;
LABEL_54:
    if (v33 == 5)
    {
      v27 = v31;
    }

    goto LABEL_56;
  }

  v23 = *(this + 3049);
  if ((v23 & 0x80000000) != 0)
  {
    if (v23 == -1)
    {
      v65 = -1000;
      goto LABEL_140;
    }

    v24 = *(this + 7059);
  }

  else
  {
    v24 = *(*(*(v5 + v23) + 8) + 22);
  }

  if (v24 == 1)
  {
    goto LABEL_128;
  }

  v65 = 1000 * v24;
LABEL_140:
  result = (*(**(this + 39) + 584))(*(this + 39), v65);
LABEL_128:
  if (*(*(this + 784) + 26336) == 1)
  {
    v2[1229] = 0;
    result = GlCustomLog(14, "GPS_FIX_STA toggle LOW\n");
    v63 = *(this + 784);
    v64 = *(v63 + 88);
    if ((v64 - 37) >= 2)
    {
      if (v64 == 40)
      {
        (*(**(this + 39) + 568))(*(this + 39));
        return (*(**(this + 39) + 576))();
      }
    }

    else
    {
      result = *(*(this + 783) + 48);
      if (result)
      {
        return (*(*result + 112))(result, 1, *(v63 + 26337), 0);
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlPeReqBag::AddNewRequest(BlueFin::GlPeReqBag *this, BlueFin::GlRequestImpl *a2, unsigned int a3, unsigned __int16 *a4, BOOL *a5)
{
  v35 = this + 3233;
  v36 = *(this + 3233);
  *(this + 3233) = 0;
  if (a5)
  {
    *a5 = 0;
  }

  v10 = *(a2 + 4);
  if (v10 == 6)
  {
    if ((*(this + 1312) & 0x40) == 0)
    {
      goto LABEL_10;
    }
  }

  else if ((v10 & 0xFFFFFFFE) != 0xE || (*(this + 1313) & 0xC0) == 0)
  {
LABEL_10:
    if (*(this + 813) == -1 && (*(this + 3236) & 1) == 0)
    {
      v13 = 0;
      v14 = *(BlueFin::GlUtils::m_pInstance + 1092) - a3;
      *v37 = this + 3233;
      v37[8] = *(this + 3233);
      *(this + 3233) = 0;
      *(this + 813) = v14;
      do
      {
        v15 = *(this + v13);
        if (v15)
        {
          (*(*v15 + 168))(v15, v14);
        }

        v13 += 8;
      }

      while (v13 != 576);
      **v37 = v37[8];
    }

    for (i = 0; i != 72; ++i)
    {
      if (!*(this + i))
      {
        v18 = *(this + 77);
        v19 = *(*v18 + 88);
        if ((*(a2 + 4) & 0xFFFFFFFE) == 0xE)
        {
          v20 = v19(v18);
          v21 = 175776;
          v22 = 46;
        }

        else
        {
          v20 = v19(v18);
          v21 = 512;
          v22 = 45;
        }

        Memory = BlueFin::GlMemAlloc::glAllocateMemory(v22, v21, v20);
        v24 = Memory;
        if (!Memory)
        {
          DeviceFaultNotify("glpe_reqbag.cpp", 464, "AddNewRequest", "pInPlaceMemBuff != nullptr");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqbag.cpp", 464, "pInPlaceMemBuff != nullptr");
        }

        v25 = *(a2 + 12);
        if (v25 == 0xFFFF)
        {
          v26 = 0;
          v25 = *(this + 1617);
          *(a2 + 12) = v25;
          if (v25 == 95)
          {
            v27 = 0;
          }

          else
          {
            v27 = v25 + 1;
          }

          *(this + 1617) = v27;
          *&v37[4] = 0;
          v38 = 0;
          do
          {
            v28 = *(this + v26);
            if (v28)
            {
              v29 = *(v28 + 8);
              if (v29)
              {
                *&v37[4 * (*(v29 + 24) >> 5) + 4] |= 1 << *(v29 + 24);
              }
            }

            v26 += 8;
          }

          while (v26 != 576);
          if (*&v37[4] == -1 && *&v37[8] == -1 && v38 == -1)
          {
            DeviceFaultNotify("glpe_reqbag.cpp", 475, "AddNewRequest", "!otUsedReqIds.IsFull()");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqbag.cpp", 475, "!otUsedReqIds.IsFull()");
          }

          if ((*&v37[4 * (v27 >> 5) + 4] >> (v27 & 0x1F)))
          {
            do
            {
              if ((v27 + 1) == 96)
              {
                v27 = 0;
              }

              else
              {
                ++v27;
              }
            }

            while (((*&v37[4 * (v27 >> 5) + 4] >> (v27 & 0x1F)) & 1) != 0);
            *(this + 1617) = v27;
          }
        }

        switch(*(a2 + 4))
        {
          case 0:
            v32.n128_f64[0] = BlueFin::GlPeRqHdlrPosPeriodic::GlPeRqHdlrPosPeriodic(Memory, a2, a3, v25, this + 2500, 0);
            break;
          case 1:
            BlueFin::GlPeRqHdlrPosSigleShot::GlPeRqHdlrPosSigleShot(Memory);
            break;
          case 2:
            BlueFin::GlPeRqHdlrMeas::GlPeRqHdlrMeas(Memory, a2, a3, v25, this + 2500, this + 3296);
            v33 = &unk_2A1F14BC8;
            goto LABEL_60;
          case 3:
            BlueFin::GlPeRqHdlrMeas::GlPeRqHdlrMeas(Memory, a2, a3, v25, this + 2500, this + 3296);
            *v24 = &unk_2A1F14A40;
            *(v24 + 80) = 1;
            *(v24 + 84) = a3;
            break;
          case 4:
            BlueFin::GlPeRqHdlr::GlPeRqHdlr(Memory, a2, a3, v25, this + 2500);
            *v24 = &unk_2A1F13FF0;
            *(v24 + 76) = 0;
            *(v24 + 64) = v24 + 76;
            *(v24 + 72) = 3;
            *(v24 + 81) = 0;
            *(v24 + 92) = a3 + 3700000;
            break;
          case 5:
            BlueFin::GlPeRqHdlr::GlPeRqHdlr(Memory, a2, a3, v25, this + 2500);
            v33 = &unk_2A1F13E68;
            goto LABEL_60;
          case 6:
            BlueFin::GlPeRqHdlr::GlPeRqHdlr(Memory, a2, a3, v25, this + 2500);
            *v24 = &unk_2A1F151E8;
            *(v24 + 64) = &unk_2A1F15358;
            *(v24 + 72) = 0;
            v32.n128_u64[0] = 0xFFFFFFFFLL;
            *(v24 + 80) = 0xFFFFFFFFLL;
            *(v24 + 88) = 0;
            *(v24 + 96) = 0;
            *(v24 + 104) = a2;
            *(v24 + 112) = 0;
            break;
          case 8:
            BlueFin::GlPeRqHdlrFactTest::GlPeRqHdlrFactTest(Memory, a2, a3, v25, this + 2500, this + 13120);
            v34 = (*(a2 + 58) >> 25) & 1;
            *(this + 3256) = (*(a2 + 58) & 0x2000000) != 0;
            *(this + 3257) = v34;
            break;
          case 9:
            BlueFin::GlPeRqHdlr::GlPeRqHdlr(Memory, a2, a3, v25, this + 2500);
            v33 = &unk_2A1F13CE0;
            goto LABEL_60;
          case 0xA:
            BlueFin::GlPeRqHdlr::GlPeRqHdlr(Memory, a2, a3, v25, this + 2500);
            v33 = &unk_2A1F14560;
            goto LABEL_60;
          case 0xB:
            BlueFin::GlPeRqHdlr::GlPeRqHdlr(Memory, a2, a3, v25, this + 2500);
            v33 = &unk_2A1F14D50;
LABEL_60:
            *v24 = v33;
            break;
          case 0xE:
            BlueFin::GlPeRqHdlr::GlPeRqHdlr(Memory, a2, a3, v25, this + 2500);
            *v24 = &unk_2A1F148B8;
            memset((v24 + 7848), 255, 0x2F0uLL);
            bzero((v24 + 64), 0x1E68uLL);
            bzero((v24 + 8600), 0xBC0uLL);
            break;
          case 0xF:
            BlueFin::GlPeRqHdlrGnssMeasData::GlPeRqHdlrGnssMeasData(Memory, a2, a3, v25, this + 2500);
            break;
          default:
            DeviceFaultNotify("glpe_reqbag.cpp", 568, "AddNewRequest", "0");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqbag.cpp", 568, "0");
        }

        (*(*a2 + 136))(a2, 14, v32);
        *(this + i) = v24;
        if (*(this + 813) != -1)
        {
          (*(*v24 + 168))(v24);
        }

        *(this + 328) |= 1 << *(a2 + 8);
        *(*(this + 78) + 4 * (i >> 5)) |= 1 << i;
        if (*(v24 + 23) == 1)
        {
          if (a5)
          {
            *a5 = 1;
          }
        }

        else
        {
          BlueFin::GlPeRqHdlr::ToSlog(v24);
          BlueFin::GlPeReqBag::DetermineEarliestPositionRequestTimeout(this);
        }

        if (a4)
        {
          *a4 = *(a2 + 12);
        }

        result = 1;
        goto LABEL_70;
      }
    }

    v11 = *(a2 + 5);
    if (!v11)
    {
      goto LABEL_23;
    }

    v12 = 3;
    goto LABEL_22;
  }

  v11 = *(a2 + 5);
  if (v11)
  {
    v12 = 4;
LABEL_22:
    v11(a2, v12);
  }

LABEL_23:
  result = 0;
LABEL_70:
  *v35 = v36;
  return result;
}

uint64_t BlueFin::GlPeRqHdlr::GlPeRqHdlr(uint64_t a1, _DWORD *a2, int a3, int a4, uint64_t *a5)
{
  v17 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A1F13AD0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = a3;
  *(a1 + 32) = a3;
  *(a1 + 36) = 0x3E80000FFFFFFFFLL;
  *(a1 + 44) = 0;
  *(a1 + 48) = a4;
  *(a1 + 56) = a5;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *__s = 0u;
  v11 = 0u;
  BlueFin::GlPeNmeaGen::FormatNmeaNEW(*a5, a2, a4, __s, 100, (a5[11] + 54608), (*(a5[11] + 6336) + 11920), *(*(a5[11] + 6440) + 36));
  GlCustomLog(20, "GL_NMEA[%d][%s", *(a1 + 48), __s);
  v6 = strlen(__s);
  BlueFin::GlPeRqHdlr::OnNmea(a1, __s, v6, v7);
  v8 = *MEMORY[0x29EDCA608];
  return a1;
}

char *BlueFin::GlPeNmeaGen::FormatNmeaNEW(uint64_t a1, _DWORD *a2, int a3, BlueFin::GlFormat *a4, int a5, int *a6, int *a7, int a8)
{
  v56 = 0;
  v57 = 0;
  v54 = 0u;
  v55 = 0u;
  v52[0] = 1;
  v53 = a3;
  BlueFin::GlPeNmeaGen::GetRequestParams(a1, a2, &v57, v52);
  v14 = v57;
  if (!v57)
  {
    v49 = "acNmeaNewList";
    DeviceFaultNotify("glpe_nmeagen.cpp", 4780, "FormatNmeaNEW", "acNmeaNewList");
    v50 = 4780;
    goto LABEL_85;
  }

  v15 = a5;
  v16 = a4 + a5;
  v17 = (v16 - 1);
  if (v16 - 1 <= a4)
  {
    v18 = 0;
  }

  else
  {
    v18 = v15;
  }

  v51 = a4;
  v20 = (a4 + BlueFin::GlFormat::glsnprintf(a4, v18, "$PGLOR,%d,NEW", v13, 2));
  if (v52[0])
  {
    v21 = 0;
    while (1)
    {
      v22 = *v14;
      if (!*v14)
      {
        break;
      }

      if (v17 <= v20)
      {
        v23 = 0;
      }

      else
      {
        v23 = (v16 - v20);
      }

      ++v14;
      v20 = (v20 + BlueFin::GlFormat::glsnprintf(v20, v23, ",%s,%d", v19, v22, *&v52[4 * v21++ + 4]));
      if (v21 >= v52[0])
      {
        goto LABEL_12;
      }
    }

    v49 = "*acNmeaNewList";
    DeviceFaultNotify("glpe_nmeagen.cpp", 4792, "FormatNmeaNEW", "*acNmeaNewList");
    v50 = 4792;
LABEL_85:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nmeagen.cpp", v50, v49);
  }

LABEL_12:
  v57 = v14;
  if ((a8 - 1) > 2)
  {
    v24 = "C";
  }

  else
  {
    v24 = off_29EEB4190[a8 - 1];
  }

  if (v17 <= v20)
  {
    v25 = 0;
  }

  else
  {
    v25 = (v16 - v20);
  }

  v26 = BlueFin::GlFormat::glsnprintf(v20, v25, ",%s,", v19, v24);
  v28 = (v20 + v26);
  v29 = *a7;
  if ((*a7 & 0x100) != 0)
  {
    if (v17 <= v28)
    {
      v30 = 0;
    }

    else
    {
      v30 = (v16 - v28);
    }

    v28 = (v28 + BlueFin::GlFormat::glsnprintf((v20 + v26), v30, "L", v27));
    v29 = *a7;
  }

  if ((v29 & 0x200) != 0)
  {
    if (v17 <= v28)
    {
      v40 = 0;
    }

    else
    {
      v40 = (v16 - v28);
    }

    v28 = (v28 + BlueFin::GlFormat::glsnprintf(v28, v40, "T", v27));
    v29 = *a7;
    if ((*a7 & 4) == 0)
    {
LABEL_25:
      if ((v29 & 0x400000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_54;
    }
  }

  else if ((v29 & 4) == 0)
  {
    goto LABEL_25;
  }

  if (v17 <= v28)
  {
    v41 = 0;
  }

  else
  {
    v41 = (v16 - v28);
  }

  v28 = (v28 + BlueFin::GlFormat::glsnprintf(v28, v41, "E", v27));
  v29 = *a7;
  if ((*a7 & 0x400000) == 0)
  {
LABEL_26:
    if ((v29 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_54:
  if (v17 <= v28)
  {
    v42 = 0;
  }

  else
  {
    v42 = (v16 - v28);
  }

  v28 = (v28 + BlueFin::GlFormat::glsnprintf(v28, v42, "e", v27));
  v29 = *a7;
  if ((*a7 & 0x800) == 0)
  {
LABEL_27:
    if ((v29 & 2) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

LABEL_58:
  if (v17 <= v28)
  {
    v43 = 0;
  }

  else
  {
    v43 = (v16 - v28);
  }

  v28 = (v28 + BlueFin::GlFormat::glsnprintf(v28, v43, "C", v27));
  if ((*a7 & 2) != 0)
  {
LABEL_28:
    if (v17 <= v28)
    {
      v31 = 0;
    }

    else
    {
      v31 = (v16 - v28);
    }

    v28 = (v28 + BlueFin::GlFormat::glsnprintf(v28, v31, "O", v27));
  }

LABEL_32:
  if (v17 <= v28)
  {
    v32 = 0;
  }

  else
  {
    v32 = (v16 - v28);
  }

  v33 = BlueFin::GlFormat::glsnprintf(v28, v32, ",", v27);
  v36 = (v28 + v33);
  v37 = *a6;
  if ((*a6 & 0x100) != 0)
  {
    if (v17 <= v36)
    {
      v44 = 0;
    }

    else
    {
      v44 = (v16 - v36);
    }

    v36 = (v36 + BlueFin::GlFormat::glsnprintf((v28 + v33), v44, "L", v35));
    v37 = *a6;
    if ((*a6 & 0x200) == 0)
    {
LABEL_37:
      if ((v37 & 4) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_71;
    }
  }

  else if ((v37 & 0x200) == 0)
  {
    goto LABEL_37;
  }

  if (v17 <= v36)
  {
    v45 = 0;
  }

  else
  {
    v45 = (v16 - v36);
  }

  v36 = (v36 + BlueFin::GlFormat::glsnprintf(v36, v45, "T", v35));
  v37 = *a6;
  if ((*a6 & 4) == 0)
  {
LABEL_38:
    if ((v37 & 0x800) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_75;
  }

LABEL_71:
  if (v17 <= v36)
  {
    v46 = 0;
  }

  else
  {
    v46 = (v16 - v36);
  }

  v36 = (v36 + BlueFin::GlFormat::glsnprintf(v36, v46, "E", v35));
  v37 = *a6;
  if ((*a6 & 0x800) == 0)
  {
LABEL_39:
    if ((v37 & 0x40) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_79;
  }

LABEL_75:
  if (v17 <= v36)
  {
    v47 = 0;
  }

  else
  {
    v47 = (v16 - v36);
  }

  v36 = (v36 + BlueFin::GlFormat::glsnprintf(v36, v47, "C", v35));
  v37 = *a6;
  if ((*a6 & 0x40) == 0)
  {
LABEL_40:
    if ((v37 & 2) == 0)
    {
      return BlueFin::GlPeNmeaGen::nmeaAddChksum(v51, v16 - 1, v34);
    }

    goto LABEL_41;
  }

LABEL_79:
  if (v17 <= v36)
  {
    v48 = 0;
  }

  else
  {
    v48 = (v16 - v36);
  }

  v36 = (v36 + BlueFin::GlFormat::glsnprintf(v36, v48, "A", v35));
  if ((*a6 & 2) != 0)
  {
LABEL_41:
    if (v17 <= v36)
    {
      v38 = 0;
    }

    else
    {
      v38 = (v16 - v36);
    }

    BlueFin::GlFormat::glsnprintf(v36, v38, "O", v35);
  }

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(v51, v16 - 1, v34);
}

double BlueFin::GlPeRqHdlrPosPeriodic::GlPeRqHdlrPosPeriodic(uint64_t a1, _DWORD *a2, int a3, int a4, uint64_t *a5, uint64_t a6)
{
  v8 = BlueFin::GlPeRqHdlr::GlPeRqHdlr(a1, a2, a3, a4, a5);
  *v8 = &unk_2A1F14ED8;
  *(v8 + 64) = 0;
  *(v8 + 76) = 0;
  *(v8 + 68) = 0;
  *(v8 + 84) = a3;
  *&result = 0x19000000000;
  *(v8 + 88) = 0x19000000000;
  *(v8 + 96) = 0;
  *(v8 + 100) = a3;
  *(v8 + 104) = -1;
  *(v8 + 108) = 0;
  *(v8 + 112) = 50;
  *(v8 + 172) = 0;
  *(v8 + 152) = 0;
  *(v8 + 160) = 0;
  *(v8 + 168) = 0;
  *(v8 + 176) = a6;
  *(v8 + 136) = 0;
  *(v8 + 144) = 0;
  *(v8 + 128) = 0;
  *(v8 + 120) = -7200001;
  return result;
}

void BlueFin::GlPeNmeaGen::GetRequestParams(uint64_t a1, _DWORD *a2, char ***a3, _BYTE *a4)
{
  v6 = a2[4];
  switch(v6)
  {
    case 0:
      *a3 = off_2A18BA620;
      v8 = (*(*a2 + 184))(a2);
      v9 = *a4;
      if (v9 <= 0xA)
      {
        *a4 = v9 + 1;
        *&a4[4 * v9 + 4] = v8;
      }

      v10 = (*(*a2 + 152))(a2);
      goto LABEL_26;
    case 1:
      *a3 = off_2A18BA640;
      v19 = *a4;
      if (v19 <= 0xA)
      {
        v20 = *(a2 + 11);
        *a4 = v19 + 1;
        *&a4[4 * v19 + 4] = v20;
      }

      v21 = (*(*a2 + 152))(a2);
      v22 = *a4;
      if (v22 <= 0xA)
      {
        *a4 = v22 + 1;
        *&a4[4 * v22 + 4] = v21;
      }

      v10 = (*(*a2 + 200))(a2);
      goto LABEL_26;
    case 2:
      v18 = off_2A18BA5C0;
      goto LABEL_29;
    case 3:
      *a3 = off_2A18BA5A8;
      v10 = (*(*a2 + 184))(a2);
LABEL_26:
      v23 = *a4;
      if (v23 <= 0xA)
      {
        *a4 = v23 + 1;
        *&a4[4 * v23 + 4] = v10;
      }

      return;
    case 4:
      v16 = &_MergedGlobals;
      goto LABEL_40;
    case 5:
      v16 = &off_2A18BA568;
      goto LABEL_40;
    case 6:
      v18 = off_2A18BA5D8;
LABEL_29:
      *a3 = v18;
      v24 = *a4;
      if (v24 > 0xA)
      {
        return;
      }

      v25 = *(a2 + 11);
      goto LABEL_38;
    case 8:
      v63 = 0;
      v62 = 0;
      v64 = 0xFFFF0100000000;
      memset(v55, 0, sizeof(v55));
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0;
      (*(*a2 + 456))(a2, v55);
      if ((*(*a2 + 360))(a2))
      {
        *a3 = off_2A18BA668;
        v26 = (*(*a2 + 320))(a2);
        v27 = *a4;
        if (v27 <= 0xA)
        {
          *a4 = v27 + 1;
          *&a4[4 * v27 + 4] = v26;
        }

        v28 = (*(*a2 + 360))(a2);
        v29 = *a4;
        if (v29 <= 0xA)
        {
          *a4 = v29 + 1;
          *&a4[4 * v29 + 4] = v28;
        }

        goto LABEL_69;
      }

      if ((v64 & 0x62) != 0)
      {
        GlCustomLog(20, "<FTCW> GlPeNmeaGen::GetRequestParams for SvId %d\n", BYTE4(v64));
        if ((v64 & 0x20) != 0)
        {
          v30 = BYTE4(v64) >= 0x34u && BYTE4(v64) < 0x42u;
        }

        else
        {
          v30 = 0;
        }

        if ((v64 & 0x40) != 0)
        {
          v42 = BYTE4(v64) >= 0x8Bu ? v30 : 2;
          if (BYTE4(v64) >= 0x4Cu)
          {
            v30 = v42;
          }
        }

        *a3 = off_2A18BA690;
        v43 = *a4;
        if (v43 <= 0xA)
        {
          v44 = v30;
          v45 = (v55 | (4 * v30));
          v46 = *v45;
          *a4 = v43 + 1;
          v47 = a4 + 4;
          *&a4[4 * v43 + 4] = v46;
          if (v43 != 10)
          {
            v48 = v45[10];
            *a4 = v43 + 2;
            *&v47[4 * v43 + 4] = v48;
            if (v43 <= 8)
            {
              v49 = *((v55 | (4 * v44)) + 0x50);
              *a4 = v43 + 3;
              *&v47[4 * v43 + 8] = v49;
              if (v43 != 8)
              {
                *a4 = v43 + 4;
                *&v47[4 * v43 + 12] = 1000;
                if (v43 <= 6)
                {
                  v50 = BYTE4(v64);
                  *a4 = v43 + 5;
                  *&v47[4 * v43 + 16] = v50;
                }
              }
            }
          }
        }

LABEL_69:
        v51 = (*(*a2 + 368))(a2);
        v52 = *a4;
        if (v52 >= 0xB)
        {
          return;
        }

        goto LABEL_70;
      }

      *a3 = off_2A18BA718;
      v31 = *a4;
      if (v31 <= 0xA)
      {
        v32 = v55[0];
        *a4 = v31 + 1;
        v33 = a4 + 4;
        *&a4[4 * v31 + 4] = v32;
        if (v31 != 10)
        {
          v34 = DWORD2(v56);
          *a4 = v31 + 2;
          *&v33[4 * v31 + 4] = v34;
          if (v31 <= 8)
          {
            v35 = v59;
            *a4 = v31 + 3;
            *&v33[4 * v31 + 8] = v35;
            if (v31 != 8)
            {
              v36 = BYTE4(v64);
              *a4 = v31 + 4;
              *&v33[4 * v31 + 12] = v36;
            }
          }
        }
      }

      v37 = (*(*a2 + 368))(a2);
      v38 = *a4;
      if (v38 <= 0xA)
      {
        v39 = &a4[4 * v38];
        LODWORD(v38) = v38 + 1;
        *a4 = v38;
        *(v39 + 1) = v37;
      }

      v40 = v62;
      if (v62)
      {
        v41 = 0xF4240 / v62;
      }

      else
      {
        v41 = 0;
      }

      if (v38 <= 0xA)
      {
        v53 = &a4[4 * v38];
        LODWORD(v38) = v38 + 1;
        *a4 = v38;
        *(v53 + 1) = v41;
      }

      v54 = v40 * v63;
      if (v54)
      {
        v54 = 0xF4240 / v54;
      }

      if (v38 <= 0xA)
      {
        v52 = v38 + 1;
        *a4 = v38 + 1;
        *&a4[4 * v38 + 4] = v54;
        if (v38 != 10)
        {
          v51 = (v64 >> 2) & 3;
LABEL_70:
          *a4 = v52 + 1;
          *&a4[4 * v52 + 4] = v51;
        }
      }

      return;
    case 9:
      v16 = &off_2A18BA578;
      goto LABEL_40;
    case 10:
      *a3 = off_2A18BA5F0;
      v24 = *a4;
      if (v24 > 0xA)
      {
        return;
      }

      v25 = a2[22];
LABEL_38:
      *a4 = v24 + 1;
      *&a4[4 * v24 + 4] = v25;
      return;
    case 11:
      v11 = (*(*a2 + 536))(a2);
      if (v11)
      {
        *a3 = off_2A18BA6D0;
        v12 = *a4;
        if (v12 <= 0xA)
        {
          v13 = *v11;
          v14 = &a4[4 * v12];
          LODWORD(v12) = v12 + 1;
          *a4 = v12;
          *(v14 + 1) = v13;
        }

        for (i = 1; i != 7; ++i)
        {
          if (v12 <= 0xA)
          {
            *&a4[4 * v12 + 4] = v11[i];
            LODWORD(v12) = v12 + 1;
            *a4 = v12;
          }
        }
      }

      return;
    case 12:
      v16 = &off_2A18BA588;
      goto LABEL_40;
    case 13:
      v16 = &off_2A18BA598;
LABEL_40:
      *a3 = v16;
      return;
    default:
      *a3 = off_2A18BA608;
      v17 = *a4;
      if (v17 <= 0xA)
      {
        *a4 = v17 + 1;
        *&a4[4 * v17 + 4] = v6;
      }

      return;
  }
}

uint64_t BlueFin::GlPeRqHdlr::ToSlog(uint64_t this)
{
  if (BlueFin::GlUtils::m_pInstance)
  {
    if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      v1 = this;
      v2[0] = &unk_2A1F13C50;
      this = (*(**(this + 8) + 232))(*(this + 8), v2);
      v3 = *(v1 + 32);
      if (BlueFin::GlUtils::m_pInstance)
      {
        if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
        {
          return (*(v2[0] + 24))(v2, 0, 0);
        }
      }
    }
  }

  return this;
}

int64x2_t *BlueFin::GlPeRqHdlrGnssMeasData::GlPeRqHdlrGnssMeasData(int64x2_t *a1, _DWORD *a2, int a3, int a4, uint64_t *a5)
{
  v9 = a1 + 3057;
  v10 = a1 + 2642;
  v11 = BlueFin::GlPeRqHdlr::GlPeRqHdlr(a1, a2, a3, a4, a5);
  v11->i64[0] = &unk_2A1F14348;
  v13 = vdupq_n_s64(v11);
  v11[2716] = vaddq_s64(v13, xmmword_298A44C30);
  v10[75].i64[0] = v11[2970].i64;
  v10[75].i64[1] = 0x23F000000000028;
  v10[76].i16[0] = 100;
  BlueFin::GlBigArray::Clear(v11[2716].i64);
  a1[3056] = vaddq_s64(v13, xmmword_298A44C40);
  v9->i64[0] = a1[3310].i64;
  v9->i64[1] = 0x23F000000000028;
  v9[1].i16[0] = 100;
  BlueFin::GlBigArray::Clear(a1[3056].i64);
  BlueFin::GlPeGnssSvsInfoMgr::GlPeGnssSvsInfoMgr(&a1[6804], a5[3], a5[2], a5[1], a2, a1[3324].i64, &a1[6778].i64[1], a5[7], a5[13], a5[15]);
  a1[10984].i32[0] = 0;
  a1[10984].i32[1] = a3;
  a1[10984].i32[2] = 0;
  v10->i64[0] = 0;
  memset(&a1[2498], 255, 0x8FCuLL);
  bzero(&a1[4], 0x9BE0uLL);
  bzero(&a1[3324], 0xD980uLL);
  return a1;
}

uint64_t BlueFin::GlPeReqBag::GetAccuracyMaskForKf(BlueFin::GlPeReqBag *this)
{
  v7 = this + 3233;
  v8 = *(this + 3233);
  *(this + 3233) = 0;
  if (*(this + 1312))
  {
    v3 = 0;
    Accuracymask = 0xFFFFFFFFLL;
    do
    {
      v4 = *(this + v3);
      if (v4)
      {
        v5 = *(v4 + 8);
        if (!v5[4])
        {
          Accuracymask = (*(*v5 + 152))(v5);
          GlCustomLog(14, "GlPeReqBag::GetAccuracyMaskForKf  using periodic accuracy %d\n", Accuracymask);
        }
      }

      v3 += 8;
    }

    while (v3 != 576);
  }

  else
  {
    Accuracymask = BlueFin::GlPeReqBag::GetAccuracymask(this);
  }

  *v7 = v8;
  return Accuracymask;
}

BlueFin::GlPeGnssSvsInfoMgr *BlueFin::GlPeGnssSvsInfoMgr::GlPeGnssSvsInfoMgr(BlueFin::GlPeGnssSvsInfoMgr *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = 0;
  *this = 0;
  *(this + 4) = a2;
  *(this + 5) = a4;
  *(this + 6) = a5;
  *(this + 7) = a6;
  *(this + 8) = a3;
  *(this + 9) = a8;
  *(this + 10) = a9;
  *(this + 11) = a10;
  *(this + 33) = this + 96;
  do
  {
    v12 = *(this + 33) + v11;
    *(v12 + 12) = 0;
    *v12 = v12 + 12;
    *(v12 + 8) = 2;
    v11 += 24;
  }

  while (v11 != 168);
  v13 = 0;
  *(this + 8274) = this + 320;
  *(this + 8275) = this + 66212;
  *(this + 66212) = 0u;
  *(this + 66228) = 0u;
  *(this + 8354) = this + 66272;
  *(this + 66208) = 8;
  *(this + 8355) = a7;
  *(this + 8356) = a4;
  *(this + 66856) = 0;
  do
  {
    v14 = *(this + 8354) + v13;
    *(v14 + 12) = 0uLL;
    *v14 = v14 + 12;
    *(v14 + 8) = 8;
    *(v14 + 28) = 0uLL;
    *(v14 + 48) = -1;
    v13 += 56;
  }

  while (v13 != 560);
  BlueFin::GlPeGnssSvsInfoMgr::Clear(this);
  return this;
}

void BlueFin::GlPeGnssSvsInfoMgr::Clear(BlueFin::GlPeGnssSvsInfoMgr *this)
{
  v1 = 0;
  v2 = this + 0x10000;
  v3 = *(this + 8274);
  v4 = 179;
  do
  {
    v5 = (v3 + v1);
    v5[21] = 0uLL;
    v5[22] = 0uLL;
    v5[19] = 0uLL;
    v5[20] = 0uLL;
    v5[17] = 0uLL;
    v5[18] = 0uLL;
    v5[15] = 0uLL;
    v5[16] = 0uLL;
    v5[13] = 0uLL;
    v5[14] = 0uLL;
    v5[11] = 0uLL;
    v5[12] = 0uLL;
    v5[9] = 0uLL;
    v5[10] = 0uLL;
    v5[7] = 0uLL;
    v5[8] = 0uLL;
    v5[5] = 0uLL;
    v5[6] = 0uLL;
    v5[3] = 0uLL;
    v5[4] = 0uLL;
    v5[1] = 0uLL;
    v5[2] = 0uLL;
    *v5 = 0uLL;
    v3 = *(this + 8274);
    v6 = v3 + v1;
    *v6 = 8;
    v1 += 368;
    *(v6 + 4) = -2048;
    --v4;
  }

  while (v4);
  v7 = 0;
  *(this + 1) = 0;
  v8 = *this;
  v9 = -1;
  do
  {
    v8 |= 1 << BlueFin::GlPeGnssSvsInfoMgr::m_aeSupportedGnss2Impl[v7];
    *this = v8;
    if (v7 * 2)
    {
      *(this + v7 * 2 + 4) = *(this + v9 + 1) + BlueFin::GlImplGnss::m_aucNumSatsPerImplGnss[*&BlueFin::GlPeGnssSvsInfoMgr::m_aeSupportedGnss2Impl[2 * v9]];
    }

    ++v9;
    v7 += 2;
  }

  while (v7 != 12);
  *(this + 288) = 0;
  v10 = (*(this + 33) + 8);
  v11 = 7;
  do
  {
    v12 = *(v10 - 1);
    v13 = *v10;
    v10 += 24;
    bzero(v12, ((4 * v13 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    --v11;
  }

  while (v11);
  v14 = *(v2 + 162);
  v15 = 10;
  do
  {
    bzero(*v14, ((4 * *(v14 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    *(v14 + 48) = -1;
    v14 += 56;
    --v15;
  }

  while (v15);
  v16 = *(v2 + 83);
  v17 = ((4 * v2[672] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4;

  bzero(v16, v17);
}

uint64_t BlueFin::GlDineCtrl::Enable5HzSubTrk(BlueFin::GlDineCtrl *this, int a2)
{
  *(this + 30893) = a2;
  v2 = "Disabled";
  if (a2)
  {
    v2 = "Enabled";
  }

  return GlCustomLog(14, "GlDineCtrl::Enable5HzSubTrk is %s \n", v2);
}

uint64_t BlueFin::GlPeReqBag::GetTimeTillTimeoutMs(BlueFin::GlPeReqBag *this, char a2)
{
  v2 = *(this + 329);
  if ((v2 & 0x80000000) != 0)
  {
    if (v2 != -1)
    {
      v2 = *(this + 810);
    }
  }

  else
  {
    v3 = *(this + v2);
    v4 = *(v3 + 8);
    v5 = *(v4 + 22);
    if (v5 < 1)
    {
      v2 = 0xFFFFFFFFLL;
    }

    else
    {
      v6 = 1000 * v5;
      if (a2)
      {
        v7 = *(BlueFin::GlUtils::m_pInstance + 1092) - *(v4 + 28);
      }

      else
      {
        v8 = *(v3 + 36);
        if (v8 == -1)
        {
          v7 = 1;
        }

        else
        {
          v9 = *(v4 + 28);
          v10 = *(v3 + 32) + v8;
          v11 = v10 >= v9;
          v7 = v10 - v9;
          if (!v11)
          {
            v7 = 1;
          }
        }
      }

      v11 = v6 >= v7;
      LODWORD(v2) = v6 - v7;
      if (v11)
      {
        v2 = v2;
      }

      else
      {
        v2 = 0;
      }
    }
  }

  *(this + 3233) = *(this + 3233);
  return v2;
}

uint64_t BlueFin::GlPeReqBag::IsRareFixMode(BlueFin::GlPeReqBag *this)
{
  v7 = this + 3233;
  v8 = *(this + 3233);
  *(this + 3233) = 0;
  if (*(this + 1312))
  {
    goto LABEL_11;
  }

  v2 = *(this + 329);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = *(*(this + v2) + 8);
    if ((*(v3 + 16) - 1) <= 1 && *(v3 + 22) >= 2)
    {
      GlCustomLog(14, "RareFixMode enabled by single shot request\n");
      v4 = 1;
      goto LABEL_12;
    }

LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  if (v2 == -1)
  {
    goto LABEL_11;
  }

  if (*(this + 3237))
  {
    v5 = "true";
  }

  else
  {
    v5 = "false";
  }

  GlCustomLog(14, "RareFixMode set to %s\n", v5);
  v4 = *(this + 3237);
LABEL_12:
  *v7 = v8;
  return v4 & 1;
}

uint64_t BlueFin::GlDineCtrl::SetOscOffsAiding(BlueFin::GlDineCtrl *this, int a2, double a3, double a4, int a5)
{
  v7 = fabs(a3 * 1000000.0);
  v8 = a3 * 1000000000.0;
  v9 = a4 * 1000000000.0;
  if (a5)
  {
    v10 = 84;
  }

  else
  {
    v10 = 70;
  }

  if (v7 > 6.9000001)
  {
    return GlCustomLog(14, "GlDineCtrl::SetOscOffsAiding(%u, %.1f, %.1f, %c) - Rejected!  Oscillator offset out of range. \n", a2, v8, v9, v10);
  }

  GlCustomLog(15, "GlDineCtrl::SetOscOffsAiding(%u, %.1f, %.1f, %c)\n", a2, v8, v9, v10);
  v15 = *(*(this + 3647) + 32);

  v13.n128_f32[0] = a3;
  v14.n128_f32[0] = a4;
  return v15(v13, v14);
}

void BlueFin::GlMeWinMgr::SetOscOffsAiding(BlueFin::GlMeWinMgr *this, uint64_t a2, float a3, float a4, int a5)
{
  v10 = a3;
  v11 = a4;
  v41 = &unk_2A1F0E2B8;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    off_2A1F0E2D0(&v41);
  }

  v12 = fabsf(a3);
  if (v12 >= 0.0000069000001)
  {
    GlCustomLog(14, "GlMeWinMgr::SetOscOffsAiding(%u, %.1f) - Rejected!  Oscillator offset out of range. \n", a2, v10 * 1000000000.0);
    return;
  }

  v29 = 0.0;
  v30 = &unk_2A1F0E1A0;
  v35 = 0;
  v36 = 2139095039;
  v37 = 0;
  v38 = 2139095039;
  v39 = 0;
  v40 = 0x36A7C5AC7F7FFFFFLL;
  v33 = a3;
  v34 = a4;
  v31 = 16;
  v32 = a2;
  v28 = 0.0;
  BlueFin::GlMeMiniKF::mskfGetCbDot((this + 9312), a2, &v29, &v28, v12, 0.0000069000001);
  v20[0] = &unk_2A1F0E1A0;
  v20[1] = 0;
  v21 = 0x36A7C5AC00000000;
  v22 = 0;
  v23 = 2139095039;
  v24 = 0;
  v25 = 2139095039;
  v26 = 0;
  v27 = 0x36A7C5AC7F7FFFFFLL;
  BlueFin::GlMeClkModMgr::GetClkMod((this + 144), v20, a2);
  v13 = 0;
  v14 = v28;
  if (*(this + 62) == -1 && v28 <= v11)
  {
    v13 = *(this + 9864) >> 7;
  }

  if (a4 <= 0.000000025 || v28 >= v11)
  {
    v15 = v29;
  }

  else
  {
    v15 = v29;
    if (v28 < 0.0000000159999995 || *(&v21 + 1) <= a4)
    {
      v16 = v29 != 0.0 || a3 == 0.0;
      v17 = !v16;
      if (((v17 | v13) & 1) == 0 && !a5)
      {
        return;
      }
    }
  }

  BlueFin::GlMeClkModMgr::SetClkModFromPe((this + 144), a2, &v30);
  v18.n128_f64[0] = v14 - v11;
  if (v14 - v11 > 0.000001 || v15 == 0.0 || a5)
  {
    v18.n128_f64[0] = (a4 * a4);
    *(this + 1167) = v10;
    *(this + 1169) = v18.n128_u64[0];
    *(this + 2344) = a2;
    *(this + 9380) = 0;
    if (a5)
    {
      GlCustomLog(14, "SetOscOffsAiding(%u,%lf,%lf) forced by PE.\n", a2, (a3 * 1000000000.0), (a4 * 1000000000.0));
    }
  }

  if (v13)
  {
    v46 = 0;
    v19 = *(this + 35);
    if (v19)
    {
      (*(*v19 + 16))(v19, 2, &v46, v18);
    }
  }
}

BOOL BlueFin::GlMeMiniKF::mskfGetCbDot(BlueFin::GlMeMiniKF *this, unsigned int a2, double *a3, double *a4, double a5, double a6)
{
  if (*(this + 68))
  {
    v7 = 0;
    *a3 = *(this + 3);
    v8 = *(this + 5);
    *a4 = sqrtf(v8);
  }

  else
  {
    LODWORD(a6) = *(this + 16);
    v9 = (a2 - *&a6) / 1000.0;
    *a3 = *(this + 3);
    v10 = *(this + 5);
    v11 = sqrtf(v10);
    if (v9 <= 0.0)
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 + v9 * 0.000000001;
    }

    *a4 = v12;
    v13 = (*(**(this + 1) + 56))(*(this + 1)) + -0.000000002;
    v14 = *a4;
    if (*a4 > v13)
    {
      *a4 = v13;
      v14 = v13;
    }

    return v14 < 0.000005;
  }

  return v7;
}

float BlueFin::GlSatAid::GlSatAid(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 92) = *(a2 + 92);
  for (i = 56; i != 72; i += 4)
  {
    result = *(a2 + i);
    *(a1 + i) = result;
  }

  return result;
}

_BYTE *BlueFin::GlPeSatAidInfo::Remove(uint64_t a1, unsigned __int8 *a2)
{
  result = BlueFin::GlArray::Get((a1 + 9120), *a2);
  if (result)
  {
    *result = 0;
    v5 = *a2;

    return BlueFin::GlArray::Remove((a1 + 9120), v5);
  }

  return result;
}

uint64_t BlueFin::GlGnssSet::operator^@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0;
  *(a3 + 168) = a3;
  do
  {
    v7 = *(a3 + 168) + v6;
    *(v7 + 12) = 0;
    *v7 = v7 + 12;
    *(v7 + 8) = 2;
    v6 += 24;
  }

  while (v6 != 168);
  for (i = 0; i != 168; i += 24)
  {
    v9 = *(a2 + 168);
    BlueFin::GlSetBase::GlSetBase(v11, v12, 2u, (*(a1 + 168) + i));
    v13 = &v15;
    v14 = 2;
    v15 = 0;
    BlueFin::GlSetBase::OperatorBinaryXor(v11, &v13, (v9 + i));
    BlueFin::GlSetBase::operator=(v11, &v13);
    *v12 = v15;
    result = BlueFin::GlSetBase::operator=(*(a3 + 168) + i, v11);
    *(result + 12) = *v12;
  }

  return result;
}

uint64_t BlueFin::GlGnssSet::operator&@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0;
  *(a3 + 168) = a3;
  do
  {
    v7 = *(a3 + 168) + v6;
    *(v7 + 12) = 0;
    *v7 = v7 + 12;
    *(v7 + 8) = 2;
    v6 += 24;
  }

  while (v6 != 168);
  for (i = 0; i != 168; i += 24)
  {
    v9 = *(a2 + 168);
    BlueFin::GlSetBase::GlSetBase(v11, v12, 2u, (*(a1 + 168) + i));
    v13 = &v15;
    v14 = 2;
    v15 = 0;
    BlueFin::GlSetBase::OperatorBinaryAnd(v11, &v13, (v9 + i));
    BlueFin::GlSetBase::operator=(v11, &v13);
    *v12 = v15;
    result = BlueFin::GlSetBase::operator=(*(a3 + 168) + i, v11);
    *(result + 12) = *v12;
  }

  return result;
}

BOOL BlueFin::GlGnssSet::IsEmpty(BlueFin::GlGnssSet *this)
{
  v1 = 0;
  LOBYTE(v2) = 1;
  do
  {
    if (v2 && (v3 = *(this + 21) + 24 * v1, v4 = *v3, !**v3))
    {
      v5 = *(v3 + 8);
      v6 = v5 >= 2;
      v7 = v5 - 2;
      if (v6)
      {
        v8 = v4 + 1;
        do
        {
          v10 = *v8++;
          v9 = v10;
          v2 = v10 == 0;
          v6 = v7-- != 0;
          v11 = v6;
        }

        while (!v9 && (v11 & 1) != 0);
      }

      else
      {
        v2 = 1;
      }
    }

    else
    {
      v2 = 0;
    }

    ++v1;
  }

  while (v1 != 7);
  return v2;
}

BOOL BlueFin::GlPeRangeAidGen::SvIdIsConsistentWithGnss(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v8 = 7;
  v9 = 0;
  BlueFin::GlPeSvIdConverter::SvId2Gnss((a1 + 119744), a2, &v8, a4, a5);
  result = 0;
  if (v9 - 1 <= 0x3E && v8 == *a3)
  {
    return v9 == *(a3 + 4);
  }

  return result;
}

uint64_t BlueFin::GlPeSatPos::RemoveSvId(uint64_t result, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 >= 0xBD)
  {
    DeviceFaultNotify("glpe_satpos.cpp", 628, "RemoveSvId", "*rotSvId <= MAX_SVID");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_satpos.cpp", 628, "*rotSvId <= MAX_SVID");
  }

  v4 = *(result + v3 + 17512);
  if (v4 <= 0x5A)
  {
    v5 = (result + 8);

    return BlueFin::GlPeMiniEphMgr::remove(v5, v4);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdAsicUnitConverter::PpuToEswAidingFrequency(BlueFin::GlMeSrdAsicUnitConverter *this, float a2, const BlueFin::GlSignalId *a3)
{
  BlueFin::GlMeSrdAsicUnitConverter::CalcPpuToEswAidingFrequency(this, a2, a3);
  if (v3 <= -32768.0 || v3 >= 32767.0)
  {
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 168, "PpuToEswAidingFrequency", "dEswAidFreqInHwUnits > SHRT_MIN && dEswAidFreqInHwUnits < SHRT_MAX");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_unit_converter.cpp", 168, "dEswAidFreqInHwUnits > SHRT_MIN && dEswAidFreqInHwUnits < SHRT_MAX");
  }

  return v3;
}

float BlueFin::GlMeSrdAsicUnitConverter::PpuToHz(BlueFin::GlMeSrdAsicUnitConverter *this, float a2, const BlueFin::GlSignalId *a3)
{
  if (*(this + 4) >= 0x23Fu)
  {
    DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 651, "IsValid()");
  }

  v3 = *this;
  v4 = BlueFin::GlSvId::s_aucSvId2gnss[v3];
  v5 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(this + 1) - *(this + 1) + v4]];
  if (v4 == 2)
  {
    v6 = (v3 - 59);
    if ((v3 - 52) >= 0xE)
    {
      v6 = -8.0;
    }

    v5 = v5 + v6 * 562500.0;
  }

  v7 = v5;
  return v7 * a2;
}

uint64_t BlueFin::GlMeSrdAsicUnitConverter::PpuPerSecToEswAidingAcceleration(BlueFin::GlMeSrdAsicUnitConverter *this, float a2, const BlueFin::GlSignalId *a3)
{
  if (*(this + 4) >= 0x23Fu)
  {
    goto LABEL_20;
  }

  v4 = *this;
  v5 = BlueFin::GlSvId::s_aucSvId2gnss[*this];
  v6 = *(this + 1);
  v7 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v6 + v5];
  v8 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v6 - v6 + v5];
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    goto LABEL_19;
  }

  if (v6)
  {
    if ((v4 - 189) >= 0xFFFFFF44 && BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v5] != 255 && (BlueFin::GlSignalId::s_ausGnss2signalId[v5] + v4 - BlueFin::GlSvId::s_aucGnss2minSvId[v5]) < 0x23Fu)
    {
      v10 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[v5];
      if (v10)
      {
        v11 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[v5];
        if (v11)
        {
          v12 = 1000 * v10 / v11;
          goto LABEL_14;
        }
      }

LABEL_19:
      v15 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
      DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
      v16 = "glsignalid.h";
      v17 = 815;
      goto LABEL_22;
    }

LABEL_20:
    v15 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
    v16 = "glsignalid.h";
    v17 = 807;
    goto LABEL_22;
  }

  v12 = 1000 * v7 / v8;
LABEL_14:
  v13 = BlueFin::GlMeSrdAsicUnitConverter::PpuToHz(this, a2, a3) * 8.79609302e12 / v12 / v12 + 0.5;
  if (*(this + 1) == 2)
  {
    v13 = v13 * 0.64;
  }

  if (v13 <= -32768.0 || v13 >= 32767.0)
  {
    v15 = "dEswAccInHwUnits > SHRT_MIN && dEswAccInHwUnits < SHRT_MAX";
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 266, "PpuPerSecToEswAidingAcceleration", "dEswAccInHwUnits > SHRT_MIN && dEswAccInHwUnits < SHRT_MAX");
    v16 = "glmesrd_asic_unit_converter.cpp";
    v17 = 266;
LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v16, v17, v15);
  }

  return v13;
}

void BlueFin::GlMeSrdAidingMgr::SendAidingBatch(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v8 = 0;
    v9 = a2;
    do
    {
      v10 = v9 - 32;
      if (v9 >= 0x20)
      {
        v11 = 32;
      }

      else
      {
        v11 = v9;
      }

      v12 = (*(*a1 + 80))(a1);
      v15 = 0;
      v16[0] = 0;
      *(v16 + 7) = 0;
      v17 = v12;
      v18 = 0;
      v19 = 0;
      (*(*v12 + 16))(v12, 0);
      v13 = (*(*v17 + 48))(v17);
      v14 = (*(*v13 + 48))(v13);
      (*(*v14 + 72))(v14, &v15, v11, a3 + v8, a4 + 36 * v8);
      BlueFin::GlMeSrdTransaction::Complete(&v15);
      BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v15);
      v8 += 32;
      v9 = v10;
    }

    while (v8 < a2);
  }
}

void sub_29889D82C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t BlueFin::GlReqSm::GenerateInitialDopplerBasedAiding(BlueFin::GlReqSm *this)
{
  result = BlueFin::GlPeSatAidInfo::Clear(this + 33568, 1);
  v3 = *(this + 790);
  if (*(v3 + 18816) == 1)
  {
    result = BlueFin::GlSetBase::Cnt((v3 + 37288));
    if (result)
    {
      if (*v3 >> 5 < 0x271u || *v3 == -7200001)
      {
        result = BlueFin::GlSetBase::GlSetBase(&__src, v73, 0x13u, (v3 + 37288));
        if (!*__src)
        {
          if (v72 < 2uLL)
          {
LABEL_50:
            *(*(this + 790) + 18816) = 0;
            return result;
          }

          v50 = v72 - 1;
          v51 = __src + 4;
          while (!*v51++)
          {
            if (!--v50)
            {
              goto LABEL_50;
            }
          }
        }

        v5 = *(this + 785);
        v6 = v5[642];
        if (v6 <= 0xFF9222FE)
        {
          v7 = v6;
        }

        else
        {
          v7 = v6;
        }

        v8 = BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(v5, 0, 1, v66, v7);
        LODWORD(v8) = v67;
        LOWORD(v9) = v68;
        *&v10 = v9 * 0.000001;
        *&v11 = *&v10 + *&v8 * 0.001;
        LOWORD(v10) = v69;
        v12 = *&v11 + v10 * 0.000000001;
        LODWORD(v11) = v70;
        v13 = v11 * 0.000001;
        v14 = BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(*(this + 785), 1u, 1, v61, v7);
        LODWORD(v14) = v62;
        LOWORD(v15) = v63;
        *&v16 = v15 * 0.000001;
        v17 = *&v16 + *&v14 * 0.001;
        LOWORD(v16) = v64;
        *&v18 = v16;
        v19 = v17 + *&v18 * 0.000000001;
        LODWORD(v18) = v65;
        *(this + 4233) = v12;
        v20 = v13;
        *(this + 8468) = v20;
        *(this + 4235) = v19;
        *&v19 = v18 * 0.000001;
        *(this + 8472) = LODWORD(v19);
        *(this + 8473) = v6;
        v21 = xmmword_298A31960;
        v22 = xmmword_298A31970;
        v23 = xmmword_298A31980;
        v24 = xmmword_298A31990;
        v25 = xmmword_298A319A0;
        v26 = xmmword_298A319B0;
        v27 = xmmword_298A319C0;
        v28 = xmmword_298A319D0;
        v29 = *(this + 5333);
        v30 = 96;
        v31 = vdupq_n_s64(0x5BuLL);
        v32 = vdupq_n_s64(0x10uLL);
        do
        {
          if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v31, v28)), *v21.i8), *v21.i8).u8[0])
          {
            *v29 = 0;
          }

          if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v28)), *&v21), *&v21).i8[1])
          {
            v29[96] = 0;
          }

          if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v27))), *&v21).i8[2])
          {
            v29[192] = 0;
            v29[288] = 0;
          }

          if (vuzp1_s8(*&v21, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v26)), *&v21)).i32[1])
          {
            v29[384] = 0;
          }

          if (vuzp1_s8(*&v21, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v26)), *&v21)).i8[5])
          {
            v29[480] = 0;
          }

          if (vuzp1_s8(*&v21, vuzp1_s16(*&v21, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v25)))).i8[6])
          {
            v29[576] = 0;
            v29[672] = 0;
          }

          if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), v24)), *v21.i8), *v21.i8).u8[0])
          {
            v29[768] = 0;
          }

          if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v24)), *&v21), *&v21).i8[1])
          {
            v29[864] = 0;
          }

          if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v23))), *&v21).i8[2])
          {
            v29[960] = 0;
            v29[1056] = 0;
          }

          if (vuzp1_s8(*&v21, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v22)), *&v21)).i32[1])
          {
            v29[1152] = 0;
          }

          if (vuzp1_s8(*&v21, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v22)), *&v21)).i8[5])
          {
            v29[1248] = 0;
          }

          if (vuzp1_s8(*&v21, vuzp1_s16(*&v21, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v21)))).i8[6])
          {
            v29[1344] = 0;
            v29[1440] = 0;
          }

          v26 = vaddq_s64(v26, v32);
          v27 = vaddq_s64(v27, v32);
          v28 = vaddq_s64(v28, v32);
          v25 = vaddq_s64(v25, v32);
          v24 = vaddq_s64(v24, v32);
          v23 = vaddq_s64(v23, v32);
          v22 = vaddq_s64(v22, v32);
          v29 += 1536;
          v21 = vaddq_s64(v21, v32);
          v30 -= 16;
        }

        while (v30);
        v56 = v72;
        memcpy(v60, __src, 4 * v72);
        v58 = 0;
        v57 = 0;
        v59 = v60[0];
        for (result = BlueFin::GlSetIterator::operator++(&v56); v57 != v56; result = BlueFin::GlSetIterator::operator++(&v56))
        {
          v33 = v58;
          if (v58 >= 0x23FuLL)
          {
            DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
          }

          v34 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v58;
          v35 = *v34;
          v36 = v34[1];
          v53[0] = *v34;
          v54 = v36;
          v55 = v58;
          *v38.i64 = BlueFin::GlPeSatAidInfo::Add(this + 33568, v53);
          if (v37)
          {
            v40 = v37;
            *v37 = v35;
            v41 = *(this + 786);
            v53[0] = v35;
            v54 = v36;
            v55 = v33;
            v74 = 7;
            v75 = 0;
            BlueFin::GlPeSvIdConverter::SvId2Gnss((v41 + 119744), v53, &v74, v38, v39);
            v42 = v75;
            *(v40 + 1) = v74;
            v40[8] = v42;
            v43 = *(this + 790);
            v53[0] = v35;
            v54 = v36;
            v55 = v33;
            *v44.i64 = BlueFin::GlPeMsmtMgr::GetIniDoppler(v43, v53);
            *v44.i32 = *v44.i64;
            *(v40 + 11) = v44.i32[0];
            v48 = BlueFin::GlPeTimeManager::GetSleepTimeSec(*(this + 785), v44, v45, v46, v47) * 5.0e-10;
            if (v48 < 0.00000001)
            {
              v48 = 0.00000001;
            }

            v49 = v48;
            *(v40 + 12) = v49;
            *(v40 + 6) = 16;
          }
        }
      }
    }
  }

  return result;
}

unsigned __int8 *BlueFin::GlReqSm::GetValidDetectedSignalIds(BlueFin::GlReqSm *this, uint64_t a2)
{
  v4 = BlueFin::GlSetBase::GlSetBase(this, this + 3, 0x13u, (*(a2 + 6320) + 96));
  v15 = *(v4 + 8);
  memcpy(v19, *v4, 4 * v15);
  v17 = 0;
  v16 = 0;
  v18 = v19[0];
  for (result = BlueFin::GlSetIterator::operator++(&v15); v16 != v15; result = BlueFin::GlSetIterator::operator++(&v15))
  {
    v6 = v17;
    if (v17 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v7 = *(a2 + 6320);
    v8 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v17;
    v9 = *v8;
    LODWORD(v8) = v8[1];
    v12[0] = v9;
    v13 = v8;
    v14 = v17;
    MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(v7, v12, 0, 1u);
    v11 = *(MeMeas + 3);
    if ((v11 & 0x8002) != 2 || (v11 & 0x4000) == 0 || *(MeMeas + 27) > 0.000000016)
    {
      BlueFin::GlSetBase::Remove(this, v6);
    }
  }

  return result;
}

BlueFin::GlSatAidInfo *BlueFin::GlSatAidInfo::GlSatAidInfo(BlueFin::GlSatAidInfo *this, const BlueFin::GlSatAidInfo *a2)
{
  v4 = 0;
  *this = &unk_2A1F09358;
  *(this + 1) = *(a2 + 1);
  *(this + 4) = *(a2 + 4);
  *(this + 3) = *(a2 + 3);
  v5 = *(a2 + 8);
  *(this + 9) = *(a2 + 9);
  *(this + 2200) = *(a2 + 2200);
  *(this + 1101) = this + 64;
  v6 = 91;
  *(this + 8) = v5;
  do
  {
    BlueFin::GlSatAid::GlSatAid(*(this + 1101) + v4, *(a2 + 1101) + v4);
    v4 += 96;
    --v6;
  }

  while (v6);
  return this;
}

uint64_t BlueFin::GlDineCtrl::SetFarStartMode(BlueFin::GlDineCtrl *this, int a2)
{
  v3 = this + 73728;
  v4 = "Disabled";
  if (a2)
  {
    v4 = "Enabled";
  }

  result = GlCustomLog(14, "GlDineCtrl::SetFarStartMode(%s)\n", v4);
  v3[474] = a2;
  if (a2)
  {
    v3[473] = 1;
  }

  return result;
}

uint64_t BlueFin::GlPeAlmMgr::IsValid(uint64_t a1, const BlueFin::GlGpsTime *a2, uint64_t a3, int a4)
{
  AlmReference = BlueFin::GlPeAlmMgr::getAlmReference(a1, *a3, *(a3 + 4));
  v10 = AlmReference;
  if (!a4 || (result = BlueFin::GlPeAlmanac::IsHealthy(AlmReference), result))
  {
    if (*a3 == 1)
    {
      return 1;
    }

    else
    {
      BlueFin::GlPeAlmanac::GetToa(v10, a2, &v22, v8, v9);
      v12 = *(a2 + 2);
      v13 = *(a2 + 3);
      if (v23)
      {
        v15 = v13 - HIDWORD(v23);
        if (__PAIR64__(v13, v12) < v23)
        {
          v18 = HIDWORD(v23) - v13;
          v16 = v23 >= v12;
          v12 = v23 - v12;
          v19 = !v16;
          v13 = v18 - v19;
          v14 = 1;
        }

        else
        {
          v14 = 0;
          v16 = v12 >= v23;
          v12 -= v23;
          v17 = !v16;
          v13 = v15 - v17;
        }
      }

      else
      {
        v14 = 0;
      }

      v20 = v12 * 2.32830644e-10 + v13;
      if ((v14 & ((v13 | v12) != 0)) != 0)
      {
        v20 = -v20;
      }

      v21 = v20;
      if (v20 < 0)
      {
        v21 = -v21;
      }

      return v21 < 0xEFF101;
    }
  }

  return result;
}

uint64_t (*(*BlueFin::GlMeSrdCtrlSm::wait4loading(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v3 = *a2;
  v4 = BlueFin::GlMeSrdCtrlSm::my_top;
  if (v3 > 0xC)
  {
    if (v3 == 13)
    {
      if (a2[1])
      {
        DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 1495, "wait4loading", "PARAM_ACK_WAIT4LOADING == e->par");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 1495, "PARAM_ACK_WAIT4LOADING == e->par");
      }

      if (*(a1 + 221) == 1)
      {
        v5 = "&GlMeSrdCtrlSm::wait4standby";
        v6 = BlueFin::GlMeSrdCtrlSm::wait4standby;
      }

      else
      {
        v5 = "&GlMeSrdCtrlSm::idle";
        v6 = BlueFin::GlMeSrdCtrlSm::idle;
      }
    }

    else
    {
      if (v3 != 21)
      {
        if (v3 == 25)
        {
          v4 = 0;
          *(a1 + 221) = 1;
        }

        return v4;
      }

      v5 = "&GlMeSrdCtrlSm::wait4memdump";
      v6 = BlueFin::GlMeSrdCtrlSm::wait4memdump;
    }

    BlueFin::QHsm::tran(a1, v6, v5);
    return 0;
  }

  if (v3 == 2)
  {
    if (*(*(a1 + 136) + 2136) == 1)
    {
      BlueFin::GlQueue::putLIFO((a1 + 2600), 40, 2);
    }

    v7 = *(a1 + 120);
    if (!v7)
    {
      v7 = *(a1 + 112);
    }

    (*(*v7 + 168))(v7, a1 + 3904);
    v8 = *(a1 + 120);
    if (!v8)
    {
      v8 = *(a1 + 112);
    }

    (*(*v8 + 152))(v8, a1 + 4096);
    v9 = *(a1 + 120);
    if (!v9)
    {
      v9 = *(a1 + 112);
    }

    (***(a1 + 168))(*(a1 + 168), v9, *(a1 + 136));
    v10 = *(a1 + 120);
    if (!v10)
    {
      v10 = *(a1 + 112);
    }

    (*(**(a1 + 168) + 8))(*(a1 + 168), v10, *(a1 + 136), BlueFin::GlMeSrdCtrlSm::ReceiverParameterProgrammed, a1);
    v11 = *(a1 + 120);
    if (!v11)
    {
      v11 = *(a1 + 112);
    }

    v12 = (*(*v11 + 80))(v11);
    v23[0] = 0;
    v23[1] = 0;
    v24 = 0;
    v25 = 1;
    v26 = v12;
    v27 = 0;
    v28 = 0;
    (*(*v12 + 16))(v12, 1);
    v18[0] = 8;
    v19 = 0;
    v20 = 0;
    v22 = 0;
    v21[0] = (*(**(a1 + 136) + 608))();
    v13 = *(a1 + 136);
    if (v13[1176] == 1)
    {
      v18[0] = v13[1179];
      v14 = v13[1180];
      if (!v14)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v14 = 25;
    }

    (*(**(a1 + 168) + 80))(*(a1 + 168), &v19, &v22, v21, v14);
    v12 = v26;
LABEL_30:
    v15 = (*(*v12 + 48))(v12);
    v16 = (*(*v15 + 48))(v15);
    (*(*v16 + 40))(v16, v23, v18);
    BlueFin::GlMeSrdTransaction::Complete(v23);
    if (*(a1 + 34518) == 1)
    {
      BlueFin::GlMeSrdMeasTimingMgr::SetLimitMaxRfOnTime((a1 + 3072), *(a1 + 34519), *(a1 + 34520));
    }

    BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v23);
    return 0;
  }

  if (v3 == 3)
  {
    v4 = 0;
    *(a1 + 221) = 0;
  }

  return v4;
}

void sub_29889E610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t BlueFin::GlDineCtrl::SetPowerState(uint64_t a1, int a2)
{
  v4 = "UNKNOWN";
  if (a2 == 1)
  {
    v4 = "GLMEIF_PWR_SAVE";
  }

  if (!a2)
  {
    v4 = "GLMEIF_PWR_FULL";
  }

  GlCustomLog(14, "GlDineCtrl::SetPowerState(%s)\n", v4);

  return BlueFin::GlMeSrdCtrlSm::SetPowerState(a1 + 75168, a2);
}

uint64_t BlueFin::GlMeSrdCtrlSm::SetPowerState(uint64_t result, int a2)
{
  if ((*(result + 219) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 292, "SetPowerState", "m_bAsicInitDone");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 292, "m_bAsicInitDone");
  }

  v2 = result;
  if ((*(result + 5576) & 1) == 0 && *(result + 5440) != a2)
  {
    *(result + 5440) = a2;
    if (*(result + 34512) == 1)
    {
      v4 = 34514;
      if (a2 == 1)
      {
        v4 = 34516;
      }

      v5 = *(result + v4);
      (*(**(result + 184) + 48))(*(result + 184), v5);
      BlueFin::GlMeSrdMeasTimingMgr::SetReportingInterval((v2 + 3072), v5);
    }

    return BlueFin::GlMeSrdMeasTimingMgr::SetPowerSaveEnabled((v2 + 3072), a2 == 1);
  }

  return result;
}

uint64_t AlmMgr_SortSvIds(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4) - *(a2 + 4);
  if (v2 >= 1)
  {
    return 1;
  }

  else
  {
    return (v2 >> 31);
  }
}

double BlueFin::GlPeMiniEph::create(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = a4;
  v4 = *(a3 + 64);
  *(a1 + 12) = v4;
  v5 = v4 - 1;
  if (v5 > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_298A44620[v5];
  }

  *(a1 + 16) = v6;
  v7 = *(a3 + 144) - 1;
  if (v7 > 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = dword_298A44620[v7];
  }

  if (v6 != v8)
  {
    v19 = "m_eOrbitQual == raotSatPos[1].GetOrbitQuality()";
    DeviceFaultNotify("glpe_satpos.cpp", 253, "create", "m_eOrbitQual == raotSatPos[1].GetOrbitQuality()");
    v20 = 253;
    goto LABEL_15;
  }

  v9 = *(a3 + 224) - 1;
  if (v9 > 4)
  {
    v10 = 0;
  }

  else
  {
    v10 = dword_298A44620[v9];
  }

  if (v6 != v10)
  {
    v19 = "m_eOrbitQual == raotSatPos[2].GetOrbitQuality()";
    DeviceFaultNotify("glpe_satpos.cpp", 254, "create", "m_eOrbitQual == raotSatPos[2].GetOrbitQuality()");
    v20 = 254;
LABEL_15:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_satpos.cpp", v20, v19);
  }

  v11 = *(a3 + 160);
  *(a1 + 32) = v11;
  *(a1 + 40) = *(a3 + 80) - v11;
  *(a1 + 48) = *a3 + *(a3 + 80) * -2.0 + *(a3 + 160);
  v12 = *(a3 + 168);
  *(a1 + 56) = v12;
  *(a1 + 64) = *(a3 + 88) - v12;
  *(a1 + 72) = *(a3 + 8) + *(a3 + 88) * -2.0 + *(a3 + 168);
  v13 = *(a3 + 176);
  *(a1 + 80) = v13;
  *(a1 + 88) = *(a3 + 96) - v13;
  *(a1 + 96) = *(a3 + 16) + *(a3 + 96) * -2.0 + *(a3 + 176);
  v14 = *(a3 + 184);
  *(a1 + 104) = v14;
  *(a1 + 112) = *(a3 + 104) - v14;
  *(a1 + 120) = *(a3 + 24) + *(a3 + 104) * -2.0 + *(a3 + 184);
  v15 = *(a3 + 192);
  *(a1 + 128) = v15;
  *(a1 + 136) = *(a3 + 112) - v15;
  *(a1 + 144) = *(a3 + 32) + *(a3 + 112) * -2.0 + *(a3 + 192);
  v16 = *(a3 + 200);
  *(a1 + 152) = v16;
  *(a1 + 160) = *(a3 + 120) - v16;
  *(a1 + 168) = *(a3 + 40) + *(a3 + 120) * -2.0 + *(a3 + 200);
  v17 = *(a3 + 128);
  *(a1 + 176) = v17;
  result = v17 - *(a3 + 48);
  *(a1 + 184) = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<FireMessageHandler::EngineSerialNumberImpl(BlueFin::GlEngine *,unsigned int,unsigned int *,unsigned char)::$_0,std::allocator<FireMessageHandler::EngineSerialNumberImpl(BlueFin::GlEngine *,unsigned int,unsigned int *,unsigned char)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F08778;
  a2[1] = v2;
  return result;
}

void std::__function::__func<FireMessageHandler::EngineSerialNumberImpl(BlueFin::GlEngine *,unsigned int,unsigned int *,unsigned char)::$_0,std::allocator<FireMessageHandler::EngineSerialNumberImpl(BlueFin::GlEngine *,unsigned int,unsigned int *,unsigned char)::$_0>,void ()(void)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 8);
  FireDeviceLog::DeviceLogBase(6, "postStartCompleted,pending,size,%zu", a3, a4, a5, a6, a7, a8, *(v8 + 1120));
  v15 = *(v8 + 1120);
  if (v15)
  {
    v16 = *(v8 + 1080);
    *(v8 + 1080) = 0;
    v23[0] = v16;
    v17 = *(v8 + 1096);
    *(v8 + 1088) = 0u;
    v23[1] = v17;
    *(v8 + 1104) = 0;
    v18 = *(v8 + 1112);
    v24.i64[0] = v18;
    v24.i64[1] = v15;
    *(v8 + 1112) = 0u;
    do
    {
      FireMessageHandler::send(v8, *(*(*(&v23[0] + 1) + ((v18 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v18 & 0x3FF)), v9, v10, v11, v12, v13, v14);
      v19 = v24.i64[0];
      v20 = vaddq_s64(v24, xmmword_298A2F6E0);
      v24 = v20;
      v18 = v20.i64[0];
      if (v20.i64[0] >= 0x800uLL)
      {
        v21 = v19;
        v22 = v20.i64[1];
        operator delete(**(&v23[0] + 1));
        v20.i64[1] = v22;
        v18 = v21 - 1023;
        *(&v23[0] + 1) += 8;
        v24.i64[0] = v21 - 1023;
      }
    }

    while (v20.i64[1]);
    std::deque<FireMessageHandler::Message>::~deque[abi:ne200100](v23);
  }
}

void sub_29889EC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::deque<FireMessageHandler::Message>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void BlueFin::GlMeSrdReceiverParametersProgrammer::OnReliableAck(BlueFin::GlMeSrdReceiverParametersProgrammer *this, void *a2)
{
  v2 = a2;
  v215 = *MEMORY[0x29EDCA608];
  (*(**(this + 1) + 264))(*(this + 1));
  v4 = (*(**(this + 1) + 264))();
  MaxAllowedCnstls = BlueFin::GlMeRxParamLimits::GetMaxAllowedCnstls(v4);
  if (!MaxAllowedCnstls)
  {
LABEL_10:
    if (v2 + 1 != *(this + 102))
    {
      goto LABEL_19;
    }

    v11 = *(this + 13);
    v10 = *(this + 14);
    v12 = *MEMORY[0x29EDCA608];

    v11(v10);
    return;
  }

  v6 = MaxAllowedCnstls;
  v7 = 0;
  v8 = 0;
  while (!(*(**(this + 1) + 128))(*(this + 1), v8))
  {
LABEL_9:
    v8 = (v8 + 1);
    if (v8 == v6)
    {
      goto LABEL_10;
    }
  }

  v9 = 0;
  while (!(*(**(this + 1) + 120))(*(this + 1), v8, v9))
  {
LABEL_8:
    v9 = (v9 + 1);
    if (v9 == 6)
    {
      goto LABEL_9;
    }
  }

  if (v7 != v2)
  {
    ++v7;
    goto LABEL_8;
  }

  v13 = (*(**(this + 15) + 80))(*(this + 15));
  v14 = *(this + 102);
  *(this + 102) = v14 + 1;
  v195[0] = BlueFin::GlMeSrdReceiverParametersProgrammer::OnReliableAck;
  v195[1] = this;
  v196 = v14;
  v197 = 1;
  v198 = v13;
  v199 = 0;
  v200 = 0;
  (*(*v13 + 16))(v13, 1);
  (*(**(this + 1) + 264))();
  if (v9 >= 6)
  {
    v183 = "eMode < GlMeRxParamLimits::GetMaxAllowedModes(m_rRxParams.GetRxType())";
    v184 = 444;
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 444, "ProgramTrackParameters", "eMode < GlMeRxParamLimits::GetMaxAllowedModes(m_rRxParams.GetRxType())");
    goto LABEL_270;
  }

  v15 = (*(**(this + 1) + 264))(*(this + 1));
  if (v8 >= BlueFin::GlMeRxParamLimits::GetMaxAllowedCnstls(v15))
  {
    v183 = "eCnstl < GlMeRxParamLimits::GetMaxAllowedCnstls(m_rRxParams.GetRxType())";
    v184 = 445;
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 445, "ProgramTrackParameters", "eCnstl < GlMeRxParamLimits::GetMaxAllowedCnstls(m_rRxParams.GetRxType())");
    goto LABEL_270;
  }

  if (((*(**(this + 1) + 120))(*(this + 1), v8, v9) & 1) == 0)
  {
    v183 = "m_rRxParams.IsModeSupported(eCnstl, eMode)";
    v184 = 446;
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 446, "ProgramTrackParameters", "m_rRxParams.IsModeSupported(eCnstl, eMode)");
    goto LABEL_270;
  }

  v16 = (*(**(this + 1) + 96))(*(this + 1), v8, v9);
  v189 = v16 + *((*(**(this + 1) + 168))(*(this + 1), v16) + 8) - 1;
  if (v16 > v189)
  {
    goto LABEL_18;
  }

  v19 = v8 == 3 && v9 == 0;
  v20 = v8 == 4 && v9 == 1;
  v186 = v19;
  if (v20)
  {
    v19 = 1;
  }

  v185 = v19;
  v21 = v16 + 1;
  v22 = 3.0;
  if (v9 != 3)
  {
    v22 = 1.0;
  }

  v187 = -v22;
  v188 = v22 * 4.0;
  v23 = 0.5;
  v24.f64[0] = NAN;
  v24.f64[1] = NAN;
  v193 = vnegq_f64(v24);
  v25 = 0.5;
  v26 = 16.0;
  v27 = v16;
  do
  {
    v194 = v27;
    v28 = v27;
    v29 = (*(**(this + 1) + 168))(*(this + 1));
    if (!*(v29 + 8))
    {
      goto LABEL_260;
    }

    v190 = *(v29 + 8);
    v191 = (*(**(this + 1) + 88))(*(this + 1), v194);
    if (v191 != v16)
    {
      v183 = "ucGearidRoot == ucFirstGearid";
      v184 = 459;
      DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 459, "ProgramTrackParameters", "ucGearidRoot == ucFirstGearid");
      goto LABEL_270;
    }

    v30 = (*(**(this + 1) + 184))(*(this + 1), v194);
    v31.i64[1] = 0;
    v208 = 0u;
    v209 = 0u;
    v207 = 0u;
    LOBYTE(v207) = v194;
    BYTE1(v207) = *(v30 + 4);
    *v31.i64 = v23 + *(v30 + 12) * 256.0;
    *v32.i64 = *v31.i64 + trunc(*v31.i64 * 2.32830644e-10) * -4294967300.0;
    v33 = vbslq_s8(v193, v32, v31.u64[0]);
    if (*v31.i64 > 4294967300.0)
    {
      v31.i64[0] = v33.i64[0];
    }

    if (*v31.i64 < -4294967300.0)
    {
      *v33.i64 = -*v31.i64;
      *v31.i64 = -(*v31.i64 - trunc(*v31.i64 * -2.32830644e-10) * -4294967300.0);
      *v31.i64 = -*vbslq_s8(v193, v31, v33).i64;
    }

    if (*v31.i64 < 0.0)
    {
      v34 = --*v31.i64;
    }

    else
    {
      LOBYTE(v34) = *v31.i64;
    }

    BYTE2(v207) = v34;
    v35 = *(*(**(this + 1) + 168))(*(this + 1), v194);
    v36 = (*(**(this + 1) + 168))(*(this + 1), v194);
    v37 = *(v36 + 12);
    v38.i32[0] = *(v30 + 8);
    EswCoherentTableIndex = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswCoherentTableIndex(v36, v38, v35, v39, v40);
    BYTE3(v207) = EswCoherentTableIndex;
    v42.i32[0] = v37;
    v45 = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswCoherentTableIndex(EswCoherentTableIndex, v42, v35, v43, v44);
    HIBYTE(v209) = v45;
    v46.i32[0] = *(v30 + 24);
    BYTE4(v207) = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswCoherentTableIndex(v45, v46, v35, v47, v48);
    BYTE5(v207) = *(v30 + 48);
    if (*(v30 + 28) != 3)
    {
      v183 = "ucLpOrder == 3";
      v184 = 1038;
      DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1038, "GetPllLoopCoefficients", "ucLpOrder == 3");
      goto LABEL_270;
    }

    LODWORD(v49) = *(v30 + 24);
    v192 = v49;
    v50 = *(v30 + 32);
    v51 = v50 * 2.4 * v35;
    v52 = v50 * 1.2;
    *&v50 = v50 * 1.2;
    v53 = powf(*&v50, 3.0);
    *v55.i64 = v51 * 65536.0;
    if (v51 * 65536.0 < 0.0 || *v55.i64 > 65535.0 || (*&v56 = v52 * v35, v57.f32[0] = v35 * v35, v57.i32[1] = v56, v60.i64[1] = *(&v192 + 1), v58 = vmulq_f64(vcvtq_f64_f32(vmul_f32((v192 | 0x4000000000000000), vmul_f32(v57, __PAIR64__(v56, LODWORD(v53))))), xmmword_298A379A0), v59 = vmvnq_s8(vcgezq_f64(v58)), *v60.i8 = vmovn_s64(v59), (v60.i8[4] & 1) != 0) || v58.f64[1] > 65535.0 || (v60.i8[0] & 1) != 0 || v58.f64[0] > 65535.0)
    {
      v183 = "dCoeff0 >= 0.0 && dCoeff0 <= MAX_USHORT && dCoeff1 >= 0.0 && dCoeff1 <= MAX_USHORT && dCoeff2 >= 0.0 && dCoeff2 <= MAX_USHORT";
      v184 = 1049;
      DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1049, "GetPllLoopCoefficients", "dCoeff0 >= 0.0 && dCoeff0 <= MAX_USHORT && dCoeff1 >= 0.0 && dCoeff1 <= MAX_USHORT && dCoeff2 >= 0.0 && dCoeff2 <= MAX_USHORT");
      goto LABEL_270;
    }

    *v55.i64 = *v55.i64 + v23;
    *v60.i64 = *v55.i64 + trunc(*v55.i64 * 2.32830644e-10) * -4294967300.0;
    v61 = vbslq_s8(v193, v60, v55);
    if (*v55.i64 > 4294967300.0)
    {
      v55.i64[0] = v61.i64[0];
    }

    if (*v55.i64 < -4294967300.0)
    {
      *v61.i64 = -*v55.i64;
      *v55.i64 = -(*v55.i64 - trunc(*v55.i64 * -2.32830644e-10) * -4294967300.0);
      v55 = vbslq_s8(v193, v55, v61);
      *v55.i64 = -*v55.i64;
    }

    if (*v55.i64 < 0.0)
    {
      v62 = --*v55.i64;
    }

    else
    {
      LOWORD(v62) = *v55.i64;
    }

    WORD3(v207) = v62;
    *v55.i64 = v58.f64[1] + v23;
    *v61.i64 = v58.f64[1] + v23 + trunc((v58.f64[1] + v23) * 2.32830644e-10) * -4294967300.0;
    v63 = vbslq_s8(v193, v61, v55);
    if (v58.f64[1] + v23 > 4294967300.0)
    {
      v55.i64[0] = v63.i64[0];
    }

    *v63.i64 = -*v55.i64;
    *v54.i64 = -(*v55.i64 - trunc(*v55.i64 * -2.32830644e-10) * -4294967300.0);
    *v63.i64 = -*vbslq_s8(v193, v54, v63).i64;
    if (*v55.i64 < -4294967300.0)
    {
      v55.i64[0] = v63.i64[0];
    }

    if (*v55.i64 < 0.0)
    {
      v64 = --*v55.i64;
    }

    else
    {
      LOWORD(v64) = *v55.i64;
    }

    v58.f64[0] = v58.f64[0] + v23;
    *v55.i64 = v58.f64[0] + trunc(v58.f64[0] * 2.32830644e-10) * -4294967300.0;
    v65 = vbslq_s8(v193, v55, v58);
    if (v58.f64[0] > 4294967300.0)
    {
      v58.f64[0] = *v65.i64;
    }

    *v65.i64 = -v58.f64[0];
    *v59.i64 = -(v58.f64[0] - trunc(v58.f64[0] * -2.32830644e-10) * -4294967300.0);
    *v65.i64 = -*vbslq_s8(v193, v59, v65).i64;
    if (v58.f64[0] < -4294967300.0)
    {
      v58.f64[0] = *v65.i64;
    }

    WORD4(v207) = v64;
    if (v58.f64[0] < 0.0)
    {
      v66 = --v58.f64[0];
    }

    else
    {
      LOWORD(v66) = v58.f64[0];
    }

    WORD5(v207) = v66;
    v67 = *(v29 + 76);
    EramToCopReQuantScaleFactor = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEramToCopReQuantScaleFactor(*(v30 + 4));
    WORD5(v209) = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswPllPedZeroThresh(this, v8, v9, v67, *&v192, EramToCopReQuantScaleFactor);
    v69 = *(v29 + 80);
    v70 = *(v30 + 24);
    v71 = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEramToCopReQuantScaleFactor(*(v30 + 4));
    WORD6(v209) = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswPllPedZeroThresh(this, v8, v9, v69, v70, v71);
    *v72.i64 = *(v30 + 36) + v23;
    *v73.i64 = *v72.i64 + trunc(*v72.i64 * 2.32830644e-10) * -4294967300.0;
    v74 = vbslq_s8(v193, v73, v72);
    if (*v72.i64 > 4294967300.0)
    {
      v72.i64[0] = v74.i64[0];
    }

    if (*v72.i64 < -4294967300.0)
    {
      *v74.i64 = -*v72.i64;
      *v72.i64 = -(*v72.i64 - trunc(*v72.i64 * -2.32830644e-10) * -4294967300.0);
      *v72.i64 = -*vbslq_s8(v193, v72, v74).i64;
    }

    if (*v72.i64 < 0.0)
    {
      v75 = --*v72.i64;
    }

    else
    {
      LOWORD(v75) = *v72.i64;
    }

    WORD6(v207) = v75;
    v76 = (*(**(this + 1) + 184))(*(this + 1), v194);
    v77 = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEramToCopReQuantScaleFactor(*(v76 + 4));
    *v79.i32 = sqrtf(BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswLowMagThres(this, v8, v9, v77, v35));
    v81.i32[0] = -813694976;
    *v82.i32 = *v79.i32 + (truncf(*v79.i32 * 2.3283e-10) * -4295000000.0);
    v83.i64[0] = 0x8000000080000000;
    v83.i64[1] = 0x8000000080000000;
    v84 = vbslq_s8(v83, v82, v79);
    if (*v79.i32 > 4295000000.0)
    {
      v79.i32[0] = v84.i32[0];
    }

    HIWORD(v207) = *v79.i32;
    *v79.i32 = *(v30 + 44) + v25;
    *v80.i32 = *v79.i32 + (truncf(*v79.i32 * 2.3283e-10) * -4295000000.0);
    v85 = vbslq_s8(v83, v80, v79);
    if (*v79.i32 > 4295000000.0)
    {
      v79.i32[0] = v85.i32[0];
    }

    if (*v79.i32 < -4295000000.0)
    {
      *v85.i32 = -*v79.i32;
      *v84.i32 = truncf(*v79.i32 * -2.3283e-10);
      v81.i32[0] = -813694976;
      *v79.i32 = -(*v79.i32 - (*v84.i32 * -4295000000.0));
      v79 = vbslq_s8(v83, v79, v85);
      *v79.i32 = -*v79.i32;
    }

    if (*v79.i32 < 0.0)
    {
      v86 = --*v79.i32;
    }

    else
    {
      LOBYTE(v86) = *v79.i32;
    }

    LOBYTE(v208) = v86;
    v79.i32[0] = *(v30 + 52);
    v87 = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswCoherentTableIndex(v78, v79, v35, v84, v81);
    BYTE1(v208) = v87;
    BYTE14(v209) = 0;
    if (v8 <= 4 && ((1 << v8) & 0x19) != 0 && (v9 & 6) == 2 && (v87 == 10 || BYTE4(v207) - 9 <= 1))
    {
      BYTE14(v209) = 32;
    }

    BYTE2(v208) = *(v30 + 76);
    v91 = *(v30 + 60);
    v92 = *(v30 + 56);
    if (v92 == 1)
    {
      v94 = v91 * 4.0;
      v95 = 0.0;
    }

    else
    {
      if (v92 != 2)
      {
        v183 = "0";
        v184 = 1084;
        DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1084, "GetFllLoopCoefficients", "0");
        goto LABEL_270;
      }

      v93 = (v91 + v91) / 1.0607;
      v94 = v93 * 1.4142;
      v95 = ((v35 * (v93 * v93)) * *(v30 + 52)) * 2097152.0;
    }

    *v89.i64 = (v35 * v94) * 1048576.0 / 3.14159265;
    if (*v89.i64 < 0.0 || *v89.i64 > 65535.0 || (*v88.i64 = v95 / 3.14159265, *v88.i64 < 0.0) || *v88.i64 > 65535.0)
    {
      v183 = "dCoeff0 >= 0.0 && dCoeff0 <= MAX_USHORT && dCoeff1 >= 0.0 && dCoeff1 <= MAX_USHORT";
      v184 = 1091;
      DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1091, "GetFllLoopCoefficients", "dCoeff0 >= 0.0 && dCoeff0 <= MAX_USHORT && dCoeff1 >= 0.0 && dCoeff1 <= MAX_USHORT");
      goto LABEL_270;
    }

    *v89.i64 = *v89.i64 + v23;
    *v90.i64 = *v89.i64 + trunc(*v89.i64 * 2.32830644e-10) * -4294967300.0;
    v96 = vbslq_s8(v193, v90, v89);
    if (*v89.i64 > 4294967300.0)
    {
      v89.i64[0] = v96.i64[0];
    }

    if (*v89.i64 < -4294967300.0)
    {
      *v96.i64 = -*v89.i64;
      *v89.i64 = -(*v89.i64 - trunc(*v89.i64 * -2.32830644e-10) * -4294967300.0);
      v89 = vbslq_s8(v193, v89, v96);
      *v89.i64 = -*v89.i64;
    }

    if (*v89.i64 < 0.0)
    {
      v97 = --*v89.i64;
    }

    else
    {
      LOWORD(v97) = *v89.i64;
    }

    WORD2(v208) = v97;
    *v88.i64 = *v88.i64 + v23;
    *v89.i64 = *v88.i64 + trunc(*v88.i64 * 2.32830644e-10) * -4294967300.0;
    v98 = vbslq_s8(v193, v89, v88);
    if (*v88.i64 > 4294967300.0)
    {
      v88.i64[0] = v98.i64[0];
    }

    if (*v88.i64 < -4294967300.0)
    {
      *v98.i64 = -*v88.i64;
      *v88.i64 = -(*v88.i64 - trunc(*v88.i64 * -2.32830644e-10) * -4294967300.0);
      v88 = vbslq_s8(v193, v88, v98);
      *v88.i64 = -*v88.i64;
    }

    *v98.i64 = -*v88.i64;
    if (*v88.i64 < 0.0)
    {
      v99 = --*v88.i64;
    }

    else
    {
      LOWORD(v99) = *v88.i64;
    }

    WORD3(v208) = v99;
    v100 = *(v30 + 80);
    if (v100 == 1)
    {
      LOBYTE(v102) = 0;
    }

    else
    {
      if (v100)
      {
        v183 = "0";
        v184 = 520;
        DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 520, "ProgramTrackParameters", "0");
        goto LABEL_270;
      }

      *v88.i32 = (*(v30 + 72) * v25) + v25;
      *v98.i32 = *v88.i32 + (truncf(*v88.i32 * 2.3283e-10) * -4295000000.0);
      v101.i64[0] = 0x8000000080000000;
      v101.i64[1] = 0x8000000080000000;
      v98 = vbslq_s8(v101, v98, v88);
      if (*v88.i32 > 4295000000.0)
      {
        v88.i32[0] = v98.i32[0];
      }

      if (*v88.i32 < -4295000000.0)
      {
        *v98.i32 = -*v88.i32;
        *v88.i32 = -(*v88.i32 - (truncf(*v88.i32 * -2.3283e-10) * -4295000000.0));
        v88 = vbslq_s8(v101, v88, v98);
        *v88.i32 = -*v88.i32;
      }

      if (*v88.i32 < 0.0)
      {
        v102 = --*v88.i32;
      }

      else
      {
        LOBYTE(v102) = *v88.i32;
      }
    }

    BYTE8(v208) = v102;
    *v88.i64 = (*(v30 + 68) * v26) + v23;
    *v98.i64 = *v88.i64 + trunc(*v88.i64 * 2.32830644e-10) * -4294967300.0;
    v103 = vbslq_s8(v193, v98, v88);
    if (*v88.i64 > 4294967300.0)
    {
      v88.i64[0] = v103.i64[0];
    }

    if (*v88.i64 < -4294967300.0)
    {
      *v103.i64 = -*v88.i64;
      *v88.i64 = -(*v88.i64 - trunc(*v88.i64 * -2.32830644e-10) * -4294967300.0);
      *v88.i64 = -*vbslq_s8(v193, v88, v103).i64;
    }

    if (*v88.i64 < 0.0)
    {
      v104 = --*v88.i64;
    }

    else
    {
      LOWORD(v104) = *v88.i64;
    }

    WORD5(v208) = v104;
    *v105.i32 = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswLowMagThres(this, v8, v9, v77, v35);
    *v107.i32 = *v105.i32 + (truncf(*v105.i32 * 2.3283e-10) * -4295000000.0);
    v108.i64[0] = 0x8000000080000000;
    v108.i64[1] = 0x8000000080000000;
    v109 = vbslq_s8(v108, v107, v105);
    if (*v105.i32 > 4295000000.0)
    {
      v105.i32[0] = v109.i32[0];
    }

    if (*v105.i32 < -4295000000.0)
    {
      *v109.i32 = -*v105.i32;
      *v105.i32 = -(*v105.i32 - (truncf(*v105.i32 * -2.3283e-10) * -4295000000.0));
      *v105.i32 = -*vbslq_s8(v108, v105, v109).i32;
    }

    if (*v105.i32 < 0.0)
    {
      v110 = --*v105.i32;
    }

    else
    {
      v110 = *v105.i32;
    }

    HIDWORD(v208) = v110;
    v111 = *(v30 + 52) / v35;
    *v109.i32 = v111 + v25;
    *v106.i32 = (v111 + v25) + (truncf((v111 + v25) * 2.3283e-10) * -4295000000.0);
    v112 = vbslq_s8(v108, v106, v109);
    if ((v111 + v25) > 4295000000.0)
    {
      v109.i32[0] = v112.i32[0];
    }

    if (*v109.i32 < -4295000000.0)
    {
      *v112.i32 = -*v109.i32;
      *v109.i32 = -(*v109.i32 - (truncf(*v109.i32 * -2.3283e-10) * -4295000000.0));
      *v109.i32 = -*vbslq_s8(v108, v109, v112).i32;
    }

    if (*v109.i32 < 0.0)
    {
      v113 = --*v109.i32;
    }

    else
    {
      LOBYTE(v113) = *v109.i32;
    }

    v114 = v113;
    if (vabds_f32(v114, v111) >= 0.000001)
    {
      v183 = "FABS_D((FLOAT)ucNumAcqSamPerFrqErrDetOut - (fErrDetCohIntInSec / fAcqSamIntInSec))<1e-6f";
      v184 = 388;
      DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 388, "CalcHiLoSlopeForZeroErrAtUnitAcqSigPwr", "FABS_D((FLOAT)ucNumAcqSamPerFrqErrDetOut - (fErrDetCohIntInSec / fAcqSamIntInSec))<1e-6f");
      goto LABEL_270;
    }

    v115 = v35 * ((*(v30 + 72) * v25) * 6.2832);
    v116 = __sincosf_stret((v115 * v114) * 0.5);
    v117 = v115 * 0.5;
    v23 = 0.5;
    v119 = __sincosf_stret(v117);
    *v120.i64 = ((((12.566 / (v114 * v114)) * (v116.__sinval / v119.__sinval)) * ((v119.__sinval * -(v116.__cosval * v114)) + (v116.__sinval * v119.__cosval))) / (v119.__sinval * v119.__sinval)) + 0.5;
    v121.i64[0] = 0xC1F0000000000000;
    *v122.i64 = *v120.i64 + trunc(*v120.i64 * 2.32830644e-10) * -4294967300.0;
    v123 = vbslq_s8(v193, v122, v120);
    v124.i64[0] = 0x41F0000000000000;
    if (*v120.i64 > 4294967300.0)
    {
      v120.i64[0] = v123.i64[0];
    }

    if (*v120.i64 < -4294967300.0)
    {
      *v123.i64 = -*v120.i64;
      *v121.i64 = trunc(*v120.i64 * -2.32830644e-10);
      v124.i64[0] = 0xC1F0000000000000;
      *v120.i64 = -(*v120.i64 - *v121.i64 * -4294967300.0);
      v120 = vbslq_s8(v193, v120, v123);
      *v120.i64 = -*v120.i64;
    }

    if (*v120.i64 < 0.0)
    {
      v125 = --*v120.i64;
    }

    else
    {
      v125 = *v120.i64;
    }

    if (v125 <= 1)
    {
      v125 = 1;
    }

    if (*(v30 + 80) == 1)
    {
      v125 = 1;
    }

    LODWORD(v209) = v125;
    v120.i32[0] = *(v30 + 16);
    v126 = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswCoherentTableIndex(v118, v120, v35, v121, v124);
    v25 = 0.5;
    v26 = 16.0;
    BYTE4(v209) = v126;
    v127.i32[0] = *(v30 + 20);
    BYTE5(v209) = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswCoherentTableIndex(v126, v127, v35, v128, v129);
    v130 = *(v30 + 88);
    v131 = *(*(**(this + 1) + 136))(*(this + 1));
    v132 = *(v30 + 92);
    v133 = *(v30 + 4);
    (*(**(this + 1) + 136))(*(this + 1));
    v134 = ((v130 * 4.0) * v131) / (v188 * ((v187 * (v132 * 0.5)) + 1.0));
    if (v133)
    {
      if (v133 == 2)
      {
        v135 = 4.0;
      }

      else
      {
        if (v133 != 4)
        {
          v183 = "0";
          v184 = 1138;
          DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1138, "GetDllLoopCoefficients", "0");
          goto LABEL_270;
        }

        v135 = 16.0;
      }

      v134 = v134 * v135;
    }

    v136 = (*(**(this + 2) + 328))(*(this + 2));
    v138.i64[0] = 20.0;
    if (v136)
    {
      *v138.i64 = 16.0;
    }

    *v138.i64 = v134 * *v138.i64 * 8.0;
    if (*v138.i64 < 0.0 || *v138.i64 > 65535.0)
    {
      v183 = "dCoeff0 >= 0.0 && dCoeff0 <= MAX_USHORT";
      v184 = 1152;
      DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1152, "GetDllLoopCoefficients", "dCoeff0 >= 0.0 && dCoeff0 <= MAX_USHORT");
      goto LABEL_270;
    }

    *v138.i64 = *v138.i64 + 0.5;
    *v137.i64 = *v138.i64 + trunc(*v138.i64 * 2.32830644e-10) * -4294967300.0;
    v139 = vbslq_s8(v193, v137, v138);
    if (*v138.i64 > 4294967300.0)
    {
      v138.i64[0] = v139.i64[0];
    }

    if (*v138.i64 < -4294967300.0)
    {
      *v139.i64 = -*v138.i64;
      *v138.i64 = -(*v138.i64 - trunc(*v138.i64 * -2.32830644e-10) * -4294967300.0);
      *v138.i64 = -*vbslq_s8(v193, v138, v139).i64;
    }

    if (*v138.i64 < 0.0)
    {
      v140 = --*v138.i64;
    }

    else
    {
      LOWORD(v140) = *v138.i64;
    }

    if (!v140)
    {
      LOWORD(v140) = 1;
    }

    WORD3(v209) = v140;
    v141 = (*(**(this + 1) + 176))(*(this + 1), v8, v9);
    v142 = *(v141 + 148);
    if (v142 > 8)
    {
LABEL_294:
      v183 = "0";
      v184 = 631;
      DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 631, "ProgramTrackParameters", "0");
      goto LABEL_270;
    }

    if (((1 << v142) & 0x1AB) == 0)
    {
      if (v142 == 2)
      {
        if (*(v141 + 153) == 1)
        {
          v147 = *(v141 + 155);
          if (v147 >= 8)
          {
            v183 = "(late_offset & DLL_OFFSET_MASK) == late_offset";
            v184 = 592;
            DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 592, "ProgramTrackParameters", "(late_offset & DLL_OFFSET_MASK) == late_offset");
          }

          else
          {
            v148 = *(v141 + 154);
            if (v148 < 8)
            {
LABEL_193:
              v146 = v148 | (8 * v147);
              goto LABEL_194;
            }

            v183 = "(early_offset & DLL_OFFSET_MASK) == early_offset";
            v184 = 593;
            DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 593, "ProgramTrackParameters", "(early_offset & DLL_OFFSET_MASK) == early_offset");
          }
        }

        else
        {
          v183 = "stCvecTapConfig.ucIdxOfPromptSample == 1";
          v184 = 589;
          DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 589, "ProgramTrackParameters", "stCvecTapConfig.ucIdxOfPromptSample == 1");
        }
      }

      else
      {
        if (v142 != 6)
        {
          goto LABEL_294;
        }

        if (*(v141 + 153) == 6)
        {
          v147 = *(v141 + 155);
          if (v147 < 8)
          {
            v148 = *(v141 + 154);
            if (v148 >= 8)
            {
              v183 = "(early_offset & DLL_OFFSET_MASK) == early_offset";
              v184 = 624;
              DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 624, "ProgramTrackParameters", "(early_offset & DLL_OFFSET_MASK) == early_offset");
              goto LABEL_270;
            }

            goto LABEL_193;
          }

          v183 = "(late_offset & DLL_OFFSET_MASK) == late_offset";
          v184 = 623;
          DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 623, "ProgramTrackParameters", "(late_offset & DLL_OFFSET_MASK) == late_offset");
        }

        else
        {
          v183 = "stCvecTapConfig.ucIdxOfPromptSample == 6";
          v184 = 619;
          DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 619, "ProgramTrackParameters", "stCvecTapConfig.ucIdxOfPromptSample == 6");
        }
      }

LABEL_270:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters_programmer.cpp", v184, v183);
    }

    v143 = *(v141 + 155);
    if (v143 >= 8)
    {
      v183 = "(late_offset & DLL_OFFSET_MASK) == late_offset";
      v184 = 608;
      DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 608, "ProgramTrackParameters", "(late_offset & DLL_OFFSET_MASK) == late_offset");
      goto LABEL_270;
    }

    v144 = *(v141 + 154);
    if (v144 >= 8)
    {
      v183 = "(early_offset & DLL_OFFSET_MASK) == early_offset";
      v184 = 609;
      DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 609, "ProgramTrackParameters", "(early_offset & DLL_OFFSET_MASK) == early_offset");
      goto LABEL_270;
    }

    v145 = v144 | (8 * v143);
    BYTE8(v209) = v145;
    if (v142 == 5)
    {
      v146 = v145 | 0x40;
LABEL_194:
      BYTE8(v209) = v146;
    }

    v149 = v207;
    if (v149 >= (*(**(this + 2) + 424))(*(this + 2)))
    {
      v183 = "otTpParam.tp_id < m_rAsicConfigIfc.GetMaxTrackParamIndex()";
      v184 = 635;
      DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 635, "ProgramTrackParameters", "otTpParam.tp_id < m_rAsicConfigIfc.GetMaxTrackParamIndex()");
      goto LABEL_270;
    }

    v150 = (*(*v198 + 48))(v198);
    v151 = (*(*v150 + 48))(v150);
    (*(*v151 + 56))(v151, v195, &v207);
    v152 = 0;
    v201[0] = v194;
    v201[1] = v16;
    v153 = (v28 - v191);
    v154 = *(v29 + 16);
    do
    {
      v155 = *(v29 + 28 + 4 * v152);
      v214[v152] = v155;
      if (v152 == v153)
      {
        v156 = v154 + v155;
        v157 = v153 + 1;
      }

      else
      {
        v157 = v152 + 1;
        if (v152 + 1 != v153)
        {
          goto LABEL_202;
        }

        v156 = v155 - v154;
        v157 = (v28 - v191);
      }

      v214[v152] = v156;
LABEL_202:
      v152 = v157;
    }

    while (v157 != 4);
    for (i = 0; i != 4; ++i)
    {
      v159 = *((*(**(this + 1) + 184))(*(this + 1), (v21 + i)) + 8);
      v160 = (*(**(this + 1) + 184))(*(this + 1), (v21 + i));
      v161 = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEramToCopReQuantScaleFactor(*(v160 + 4));
      v162 = v214[i];
      v163 = (*(**(this + 1) + 80))(*(this + 1), (v21 + i));
      v164 = (*(**(this + 1) + 72))(*(this + 1), (v21 + i));
      BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswPowerThreshold(this, v163, v164, v162, v159, v161);
      *v166.i32 = (*v166.i32 * 16.0) * 0.000000059605;
      *(&v210 + i) = *v166.i32;
      if (*v166.i32 <= 0.0)
      {
        v183 = "afThresholdEsw[k] > 0.0f";
        v184 = 678;
        DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 678, "ProgramTrackParameters", "afThresholdEsw[k] > 0.0f");
        goto LABEL_270;
      }

      if (*v166.i32 > 255.0)
      {
        GlCustomLog(12, "WARNING: Cnst %u, Mode %u, Gear %u, threshold_g%u :Threshold over 255 (%f)\n", v8, v9, v153, i + 2, *v166.i32);
        *(&v210 + i) = 255.0;
      }
    }

    if (v190 == 1)
    {
      v204 = 0;
      v167 = v16;
      v168 = v194;
      goto LABEL_218;
    }

    *v166.i32 = v210 + 0.5;
    *v165.i32 = (v210 + 0.5) + (truncf((v210 + 0.5) * 2.3283e-10) * -4295000000.0);
    v169.i64[0] = 0x8000000080000000;
    v169.i64[1] = 0x8000000080000000;
    v170 = vbslq_s8(v169, v165, v166);
    if ((v210 + 0.5) > 4295000000.0)
    {
      v166.i32[0] = v170.i32[0];
    }

    v168 = v194;
    if (*v166.i32 < -4295000000.0)
    {
      *v170.i32 = -*v166.i32;
      *v166.i32 = -(*v166.i32 - (truncf(*v166.i32 * -2.3283e-10) * -4295000000.0));
      v166 = vbslq_s8(v169, v166, v170);
      *v166.i32 = -*v166.i32;
    }

    v167 = v16;
    if (*v166.i32 < 0.0)
    {
      v171 = --*v166.i32;
    }

    else
    {
      LOBYTE(v171) = *v166.i32;
    }

    v204 = v171;
    if (v190 < 3)
    {
LABEL_218:
      v203 = 0;
      goto LABEL_219;
    }

    *v166.i32 = v211 + 0.5;
    *v170.i32 = (v211 + 0.5) + (truncf((v211 + 0.5) * 2.3283e-10) * -4295000000.0);
    v174 = vbslq_s8(v169, v170, v166);
    if ((v211 + 0.5) > 4295000000.0)
    {
      v166.i32[0] = v174.i32[0];
    }

    if (*v166.i32 < -4295000000.0)
    {
      *v174.i32 = -*v166.i32;
      *v166.i32 = -(*v166.i32 - (truncf(*v166.i32 * -2.3283e-10) * -4295000000.0));
      v166 = vbslq_s8(v169, v166, v174);
      *v166.i32 = -*v166.i32;
    }

    if (*v166.i32 < 0.0)
    {
      v175 = --*v166.i32;
    }

    else
    {
      LOBYTE(v175) = *v166.i32;
    }

    v203 = v175;
    if (v190 == 3)
    {
LABEL_219:
      LOBYTE(v172) = 0;
      v202 = 0;
    }

    else
    {
      *v166.i32 = v212 + 0.5;
      *v174.i32 = (v212 + 0.5) + (truncf((v212 + 0.5) * 2.3283e-10) * -4295000000.0);
      v176 = vbslq_s8(v169, v174, v166);
      if ((v212 + 0.5) > 4295000000.0)
      {
        v166.i32[0] = v176.i32[0];
      }

      if (*v166.i32 < -4295000000.0)
      {
        *v176.i32 = -*v166.i32;
        *v166.i32 = -(*v166.i32 - (truncf(*v166.i32 * -2.3283e-10) * -4295000000.0));
        v166 = vbslq_s8(v169, v166, v176);
        *v166.i32 = -*v166.i32;
      }

      if (*v166.i32 < 0.0)
      {
        v177 = --*v166.i32;
      }

      else
      {
        LOBYTE(v177) = *v166.i32;
      }

      v202 = v177;
      if (v190 >= 5)
      {
        *v166.i32 = v213 + 0.5;
        *v176.i32 = (v213 + 0.5) + (truncf((v213 + 0.5) * 2.3283e-10) * -4295000000.0);
        v182 = vbslq_s8(v169, v176, v166);
        if ((v213 + 0.5) > 4295000000.0)
        {
          v166.i32[0] = v182.i32[0];
        }

        if (*v166.i32 < -4295000000.0)
        {
          *v182.i32 = -*v166.i32;
          *v166.i32 = -(*v166.i32 - (truncf(*v166.i32 * -2.3283e-10) * -4295000000.0));
          *v166.i32 = -*vbslq_s8(v169, v166, v182).i32;
        }

        if (*v166.i32 < 0.0)
        {
          v172 = --*v166.i32;
        }

        else
        {
          LOBYTE(v172) = *v166.i32;
        }
      }

      else
      {
        LOBYTE(v172) = 0;
      }
    }

    v201[2] = v172;
    v205 = v207;
    if (v167 > v168)
    {
      v183 = "ucGearid >= ucGearidRoot";
      v184 = 710;
      DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 710, "ProgramTrackParameters", "ucGearid >= ucGearidRoot");
      goto LABEL_270;
    }

    if (v9 == 2 && !v8 && v167 == v168)
    {
      if ((*(**(this + 2) + 256))(*(this + 2)))
      {
        goto LABEL_256;
      }

      v173 = (*(**(this + 2) + 264))(*(this + 2));
      v168 = v194;
      v167 = v16;
      if (v173)
      {
        goto LABEL_256;
      }
    }

    if (v167 != v168)
    {
      if (v9 == 2 && !v8 && v153 == 1 && (((*(**(this + 2) + 256))(*(this + 2)) & 1) != 0 || ((*(**(this + 2) + 264))(*(this + 2)) & 1) != 0))
      {
LABEL_256:
        v206 = 0;
        goto LABEL_257;
      }

      LOBYTE(v206) = 0;
LABEL_254:
      HIBYTE(v206) = 0;
      goto LABEL_255;
    }

    v206 = -256;
    if (((*(**(this + 2) + 256))(*(this + 2)) & 1) == 0)
    {
      if ((v185 & (*(**(this + 2) + 264))(*(this + 2)) & 1) == 0)
      {
        goto LABEL_255;
      }

      goto LABEL_254;
    }

    if (v185)
    {
      goto LABEL_254;
    }

LABEL_255:
    if (v186)
    {
      goto LABEL_256;
    }

LABEL_257:
    v178 = v201[0];
    if (v178 >= (*(**(this + 2) + 408))(*(this + 2)))
    {
      v183 = "otGsParam.gs_id < m_rAsicConfigIfc.GetMaxGearStepIndex()";
      v184 = 771;
      DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 771, "ProgramTrackParameters", "otGsParam.gs_id < m_rAsicConfigIfc.GetMaxGearStepIndex()");
      goto LABEL_270;
    }

    v179 = v205;
    if (v179 >= (*(**(this + 2) + 424))(*(this + 2)))
    {
      v183 = "otGsParam.tp_id < m_rAsicConfigIfc.GetMaxTrackParamIndex()";
      v184 = 772;
      DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 772, "ProgramTrackParameters", "otGsParam.tp_id < m_rAsicConfigIfc.GetMaxTrackParamIndex()");
      goto LABEL_270;
    }

    v180 = (*(*v198 + 48))(v198);
    v181 = (*(*v180 + 48))(v180);
    (*(*v181 + 64))(v181, v195, v201);
LABEL_260:
    v27 = v194 + 1;
  }

  while ((v194 + 1) <= v189);
LABEL_18:
  BlueFin::GlMeSrdTransaction::Complete(v195);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v195);
LABEL_19:
  v17 = *MEMORY[0x29EDCA608];
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetRxType(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 264);

  return v1();
}

uint64_t BlueFin::GlMeSrdReceiverParameters::IsConstellationSupported(BlueFin::GlMeSrdReceiverParameters *a1)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(a1) + 128);

  return v1();
}

uint64_t BlueFin::GlMeRxParamStd::IsConstellationSupported(BlueFin::GlUtils *a1, unsigned int a2)
{
  AsicConfigIfc = BlueFin::GlUtils::GetAsicConfigIfc(a1);
  if (a2 >= 6)
  {
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 556, "IsConstellationSupported", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", 556, "0");
  }

  v4 = *&aFfZ[2 * a2 + 6];
  v5 = *(*AsicConfigIfc + 464);

  return v5();
}

uint64_t BlueFin::GlUtils::GetAsicConfigIfc(BlueFin::GlUtils *this)
{
  if (!BlueFin::GlUtils::m_pInstance || (result = *(BlueFin::GlUtils::m_pInstance + 1576)) == 0)
  {
    DeviceFaultNotify("glutils.h", 617, "GetAsicConfigIfc", "Instance() != NULL && Instance()->m_potAsicConfigIfc != NULL");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutils.h", 617, "Instance() != NULL && Instance()->m_potAsicConfigIfc != NULL");
  }

  return result;
}

uint64_t BlueFin::GlMeSrdReceiverParameters::IsModeSupported(BlueFin::GlMeSrdReceiverParameters *a1)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(a1) + 120);

  return v1();
}

uint64_t BlueFin::GlMeRxParamStd::IsModeSupported(int **a1, int a2, int a3)
{
  result = (*(*a1 + 16))(a1);
  if (result)
  {
    if (a3 >= 6)
    {
      v7 = "eMode < GetMaxAllowedModes()";
      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 532, "IsModeSupported", "eMode < GetMaxAllowedModes()");
      v8 = 532;
    }

    else
    {
      if (BlueFin::GlMeRxParamLimits::GetMaxAllowedCnstls(*a1[1]) > a2)
      {
        return *(*(BlueFin::GlMeRxParamStd::rMap(a1) + 6) + 208 * a2 + 8 * a3 + 232) != 0;
      }

      v7 = "eCnstl < GetMaxAllowedCnstls()";
      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 533, "IsModeSupported", "eCnstl < GetMaxAllowedCnstls()");
      v8 = 533;
    }

    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", v8, v7);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetRootGearIdFromCnstlAndMode(BlueFin::GlMeSrdReceiverParameters *a1)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(a1) + 96);

  return v1();
}

uint64_t BlueFin::GlMeRxParamStd::GetRootGearIdFromCnstlAndMode(int **a1, int a2, int a3)
{
  if (a3 >= 6)
  {
    v7 = "eMode < GetMaxAllowedModes()";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 505, "GetRootGearIdFromCnstlAndMode", "eMode < GetMaxAllowedModes()");
    v8 = 505;
    goto LABEL_12;
  }

  if (BlueFin::GlMeRxParamLimits::GetMaxAllowedCnstls(*a1[1]) <= a2)
  {
    v7 = "eCnstl < GetMaxAllowedCnstls()";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 506, "GetRootGearIdFromCnstlAndMode", "eCnstl < GetMaxAllowedCnstls()");
    v8 = 506;
LABEL_12:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", v8, v7);
  }

  if (!**(BlueFin::GlMeRxParamStd::rMap(a1) + 2))
  {
LABEL_8:
    v7 = "0";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 515, "GetRootGearIdFromCnstlAndMode", "0");
    v8 = 515;
    goto LABEL_12;
  }

  v6 = 0;
  while ((*(*a1 + 10))(a1, v6) != a2 || (*(*a1 + 9))(a1, v6) != a3)
  {
    if (++v6 >= **(BlueFin::GlMeRxParamStd::rMap(a1) + 2))
    {
      goto LABEL_8;
    }
  }

  return v6;
}

uint64_t BlueFin::GlMeRxParamStd::GetCnstl(int **this, unsigned int a2)
{
  v4 = BlueFin::GlMeRxParamStd::rMap(this);
  if (**(v4 + 2) <= a2)
  {
    v8 = "ucGearid < *rMp.m_pucGsNum";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 490, "GetCnstl", "ucGearid < *rMp.m_pucGsNum");
    v9 = 490;
    goto LABEL_6;
  }

  v5 = v4;
  v6 = *(*(v4 + 7) + 12 * a2);
  if (v6 >= BlueFin::GlMeRxParamLimits::GetMaxAllowedCnstls(*this[1]))
  {
    v8 = "rMp.m_pastGearInfoLookup[ucGearid].etCnstl < GetMaxAllowedCnstls()";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 491, "GetCnstl", "rMp.m_pastGearInfoLookup[ucGearid].etCnstl < GetMaxAllowedCnstls()");
    v9 = 491;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", v9, v8);
  }

  return *(*(v5 + 7) + 12 * a2);
}

uint64_t BlueFin::GlMeRxParamStd::GetMode(int **this, unsigned int a2)
{
  v3 = BlueFin::GlMeRxParamStd::rMap(this);
  if (**(v3 + 2) <= a2)
  {
    v5 = "ucGearid < *rMp.m_pucGsNum";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 482, "GetMode", "ucGearid < *rMp.m_pucGsNum");
    v6 = 482;
    goto LABEL_6;
  }

  result = *(*(v3 + 7) + 12 * a2 + 4);
  if (result >= 6)
  {
    v5 = "rMp.m_pastGearInfoLookup[ucGearid].etMode < GetMaxAllowedModes()";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 483, "GetMode", "rMp.m_pastGearInfoLookup[ucGearid].etMode < GetMaxAllowedModes()");
    v6 = 483;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", v6, v5);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetAllGearsTrkParamsFromGearId(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 168);

  return v1();
}

uint64_t BlueFin::GlMeRxParamStd::GetAllGearsTrkParamsFromGearId(int **this, uint64_t a2)
{
  v4 = *(BlueFin::GlMeRxParamStd::rMap(this) + 6);
  v5 = v4 + 208 * (*(*this + 10))(this, a2);
  return *(v5 + 8 * (*(*this + 9))(this, a2) + 232);
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetRootGearIdFromGearId(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 88);

  return v1();
}

uint64_t BlueFin::GlMeRxParamStd::GetRootGearIdFromGearId(int **this, unsigned int a2)
{
  if (**(BlueFin::GlMeRxParamStd::rMap(this) + 2) <= a2)
  {
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 497, "GetRootGearIdFromGearId", "ucGearid < *rMap().m_pucGsNum");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", 497, "ucGearid < *rMap().m_pucGsNum");
  }

  return (a2 - BlueFin::GlMeRxParamStd::GetGearIndexNotGearId(this, a2));
}

uint64_t BlueFin::GlMeRxParamStd::GetGearIndexNotGearId(int **this, unsigned int a2)
{
  v3 = BlueFin::GlMeRxParamStd::rMap(this);
  if (**(v3 + 2) <= a2)
  {
    v5 = "ucGearid < *rMp.m_pucGsNum";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 779, "GetGearIndexNotGearId", "ucGearid < *rMp.m_pucGsNum");
    v6 = 779;
    goto LABEL_6;
  }

  result = *(*(v3 + 7) + 12 * a2 + 8);
  if (result >= 5)
  {
    v5 = "rMp.m_pastGearInfoLookup[ucGearid].ucZeroBasedGearNum < MAX_GEARS_PER_MODE";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 780, "GetGearIndexNotGearId", "rMp.m_pastGearInfoLookup[ucGearid].ucZeroBasedGearNum < MAX_GEARS_PER_MODE");
    v6 = 780;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", v6, v5);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetGearTrkParamsFromGearId(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 184);

  return v1();
}

uint64_t BlueFin::GlMeRxParamStd::GetGearTrkParamsFromGearId(int **this, uint64_t a2)
{
  v4 = *(BlueFin::GlMeRxParamStd::rMap(this) + 6);
  v5 = v4 + 208 * (*(*this + 10))(this, a2);
  v6 = *(v5 + 8 * (*(*this + 9))(this, a2) + 232);
  if (!*(v6 + 8 * BlueFin::GlMeRxParamStd::GetGearIndexNotGearId(this, a2) + 168))
  {
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 601, "GetGearTrkParamsFromGearId", "rMap().m_pstTrkParams->astCnstlParams[GetCnstl(ucGearId)].pastModeParams[GetMode(ucGearId)]->apstGearParams[GetGearIndexNotGearId(ucGearId)] != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", 601, "rMap().m_pstTrkParams->astCnstlParams[GetCnstl(ucGearId)].pastModeParams[GetMode(ucGearId)]->apstGearParams[GetGearIndexNotGearId(ucGearId)] != nullptr");
  }

  v7 = *(BlueFin::GlMeRxParamStd::rMap(this) + 6);
  v8 = v7 + 208 * (*(*this + 10))(this, a2);
  v9 = *(v8 + 8 * (*(*this + 9))(this, a2) + 232);
  return *(v9 + 8 * BlueFin::GlMeRxParamStd::GetGearIndexNotGearId(this, a2) + 168);
}

uint64_t BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswCoherentTableIndex(BlueFin::GlMeSrdReceiverParametersProgrammer *this, int8x16_t a2, float a3, int8x16_t a4, int8x16_t a5)
{
  *a2.i64 = (*a2.i32 / a3) + 0.5;
  *a5.i64 = *a2.i64 + trunc(*a2.i64 * 2.32830644e-10) * -4294967300.0;
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  v6 = vnegq_f64(v5);
  a5.i64[0] = vbslq_s8(v6, a5, a2).u64[0];
  if (*a2.i64 > 4294967300.0)
  {
    a2.i64[0] = a5.i64[0];
  }

  if (*a2.i64 < -4294967300.0)
  {
    *a4.i64 = -*a2.i64;
    *a2.i64 = -(*a2.i64 - trunc(*a2.i64 * -2.32830644e-10) * -4294967300.0);
    *a2.i64 = -*vbslq_s8(v6, a2, a4).i64;
  }

  if (*a2.i64 < 0.0)
  {
    v7 = --*a2.i64;
  }

  else
  {
    v7 = *a2.i64;
  }

  if (!v7)
  {
    v9 = "uiRatio > 0";
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 365, "GetEswCoherentTableIndex", "uiRatio > 0");
    v10 = 365;
LABEL_15:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters_programmer.cpp", v10, v9);
  }

  v8 = 0;
  while (v7 != byte_298A37A1E[v8])
  {
    if (++v8 == 11)
    {
      v9 = "0";
      DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 374, "GetEswCoherentTableIndex", "0");
      v10 = 374;
      goto LABEL_15;
    }
  }

  return v8;
}

float BlueFin::GlMeSrdReceiverParametersProgrammer::GetEramToCopReQuantScaleFactor(int a1)
{
  if (!a1)
  {
    return 0.0625;
  }

  if (a1 == 4)
  {
    return 1.0;
  }

  if (a1 != 2)
  {
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 834, "GetEramToCopReQuantScaleFactor", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters_programmer.cpp", 834, "0");
  }

  return 0.25;
}

uint64_t BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswPllPedZeroThresh(uint64_t a1, uint64_t a2, int a3, float a4, float a5, float a6)
{
  if (a4 <= 5.0)
  {
    LOWORD(v19) = 0;
    return v19;
  }

  BlueFin::GlMeReceiverParametersIfc::GetDefaultSignalId(v38, a2, a3);
  if (v40 >= 0x23Fu)
  {
    v35 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 693, "GetSecPerEpochWithTrkException", "IsValid()");
    v36 = "glsignalid.h";
    v37 = 693;
    goto LABEL_43;
  }

  if (v39 != 1 || ((v12 = 1.5, v38[0] - 1 >= 0x20) ? (v13 = v38[0] - 66 >= 0xA) : (v13 = 0), v13))
  {
    if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v39 - v39 + BlueFin::GlSvId::s_aucSvId2gnss[v38[0]]])
    {
      v35 = "ucMsPerEpoch != 0";
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
      v36 = "glsignalid.h";
      v37 = 686;
LABEL_43:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v36, v37, v35);
    }

    v12 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v39 - v39 + BlueFin::GlSvId::s_aucSvId2gnss[v38[0]]] * 0.001;
  }

  v14 = a5 / v12;
  v15 = *((*(**(a1 + 8) + 152))(*(a1 + 8), a2) + 24);
  if (!a2 && a3 == 2)
  {
    v16 = *(a1 + 8);
    v17 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v18 = (*(*v16 + 40))(v16, v17, 0, 2);
LABEL_23:
    v15 = v18;
    goto LABEL_24;
  }

  if (!a2 && a3 == 3)
  {
    v20 = *(a1 + 8);
    v21 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v18 = (*(*v20 + 40))(v20, v21, 0, 3);
    goto LABEL_23;
  }

  if (a2 == 3 && (a3 == 5 || a3 == 3))
  {
    v22 = *(a1 + 8);
    v23 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v18 = (*(*v22 + 40))(v22, v23, 4, 3);
    goto LABEL_23;
  }

LABEL_24:
  v24 = v14;
  if ((*(**(a1 + 16) + 256))(*(a1 + 16)))
  {
    if (a2 != 4)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v25 = (*(**(a1 + 16) + 264))(*(a1 + 16));
    if (a2 != 4 || (v25 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  if ((*(**(a1 + 16) + 1032))(*(a1 + 16)))
  {
    v26 = *(a1 + 8);
    v27 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v15 = (*(*v26 + 40))(v26, v27, 5, 0);
  }

LABEL_31:
  v28 = log10f(a5);
  v29 = (((v15 * v24) + (__exp10f((a4 + (v28 * 10.0)) / 10.0) * (v15 * v24))) * a6) + 0.166666667;
  v31.i16[0] = *((*(**(a1 + 8) + 136))(*(a1 + 8)) + 24);
  *v31.i32 = v29 * v31.u32[0];
  if (*v31.i32 < 0.0)
  {
    v35 = "fPedThreshPllCopTotPwr >= 0.0f";
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 955, "GetEswPllPedZeroThresh", "fPedThreshPllCopTotPwr >= 0.0f");
    v36 = "glmesrd_receiver_parameters_programmer.cpp";
    v37 = 955;
    goto LABEL_43;
  }

  v32 = sqrtf(*v31.i32);
  if (v32 <= 0.0)
  {
    v35 = "fThresholdEsw > 0.0f";
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 960, "GetEswPllPedZeroThresh", "fThresholdEsw > 0.0f");
    v36 = "glmesrd_receiver_parameters_programmer.cpp";
    v37 = 960;
    goto LABEL_43;
  }

  *v31.i32 = v32 + 0.5;
  if (*v31.i32 >= 65535.0)
  {
    v35 = "(fThresholdEsw + 0.5f) < MAX_USHORT";
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 961, "GetEswPllPedZeroThresh", "(fThresholdEsw + 0.5f) < MAX_USHORT");
    v36 = "glmesrd_receiver_parameters_programmer.cpp";
    v37 = 961;
    goto LABEL_43;
  }

  *v30.i32 = *v31.i32 - (truncf(*v31.i32 * 2.3283e-10) * 4295000000.0);
  v33.i64[0] = 0x8000000080000000;
  v33.i64[1] = 0x8000000080000000;
  v30.i32[0] = vbslq_s8(v33, v30, v31).u32[0];
  if (*v31.i32 > 4295000000.0)
  {
    v31.i32[0] = v30.i32[0];
  }

  return *v31.i32;
}

float BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswLowMagThres(uint64_t a1, uint64_t a2, int a3, float a4, float a5)
{
  v10 = *((*(**(a1 + 8) + 136))(*(a1 + 8)) + 24);
  BlueFin::GlMeReceiverParametersIfc::GetDefaultSignalId(v37, a2, a3);
  if (v39 >= 0x23Fu)
  {
    v35 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 693, "GetSecPerEpochWithTrkException", "IsValid()");
    v36 = 693;
    goto LABEL_45;
  }

  if (v38 != 1 || ((v11 = 1.5, v37[0] - 1 >= 0x20) ? (v12 = v37[0] - 66 >= 0xA) : (v12 = 0), v12))
  {
    if (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v38 - v38 + BlueFin::GlSvId::s_aucSvId2gnss[v37[0]]])
    {
      v11 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v38 - v38 + BlueFin::GlSvId::s_aucSvId2gnss[v37[0]]] * 0.001;
      goto LABEL_10;
    }

    v35 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v36 = 686;
LABEL_45:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v36, v35);
  }

LABEL_10:
  v13 = a5 / v11;
  v14 = *((*(**(a1 + 8) + 152))(*(a1 + 8), a2) + 24);
  if (!a2 && a3 == 2)
  {
    v15 = *(a1 + 8);
    v16 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v17 = (*(*v15 + 40))(v15, v16, 0, 2);
LABEL_21:
    v14 = v17;
    goto LABEL_22;
  }

  if (!a2 && a3 == 3)
  {
    v18 = *(a1 + 8);
    v19 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v17 = (*(*v18 + 40))(v18, v19, 0, 3);
    goto LABEL_21;
  }

  if (a2 == 3 && (a3 == 5 || a3 == 3))
  {
    v20 = *(a1 + 8);
    v21 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v17 = (*(*v20 + 40))(v20, v21, 4, 3);
    goto LABEL_21;
  }

LABEL_22:
  v22 = v13;
  if ((*(**(a1 + 16) + 256))(*(a1 + 16)))
  {
    if (a2 != 4)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v23 = (*(**(a1 + 16) + 264))(*(a1 + 16));
    if (a2 != 4 || (v23 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if ((*(**(a1 + 16) + 1032))(*(a1 + 16)))
  {
    v24 = *(a1 + 8);
    v25 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v14 = (*(*v24 + 40))(v24, v25, 5, 0);
  }

LABEL_29:
  v27.i8[0] = *((*(**(a1 + 8) + 152))(*(a1 + 8), a2) + 8);
  *v27.i32 = v27.u32[0] / v22;
  *v28.i32 = *v27.i32 + (truncf(*v27.i32 * 2.3283e-10) * -4295000000.0);
  v29.i64[0] = 0x8000000080000000;
  v29.i64[1] = 0x8000000080000000;
  LODWORD(v30) = vbslq_s8(v29, v28, v27).u32[0];
  if (*v27.i32 > 4295000000.0)
  {
    *v27.i32 = v30;
  }

  if (*v27.i32 < -4295000000.0)
  {
    *v26.i32 = -*v27.i32;
    *v27.i32 = -(*v27.i32 - (truncf(*v27.i32 * -2.3283e-10) * -4295000000.0));
    *v27.i32 = -*vbslq_s8(v29, v27, v26).i32;
  }

  if (*v27.i32 < 0.0)
  {
    v31 = --*v27.i32;
  }

  else
  {
    v31 = *v27.i32;
  }

  if (a2 == 2)
  {
    v32 = 2.0;
  }

  else
  {
    if (a2 != 1)
    {
      v33 = flt_298A37990[a2 == 4];
      return (((((v14 * v22) * (v33 * v22)) * v31) * v31) * v10) * a4;
    }

    v31 <<= a3 == 2;
    v32 = -8.0;
  }

  v33 = __exp10f(v32 / 10.0);
  return (((((v14 * v22) * (v33 * v22)) * v31) * v31) * v10) * a4;
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetAllCnstlTrkParams(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 136);

  return v1();
}

uint64_t BlueFin::GlMeRxParamStd::GetAllModesTrkParamsFromCnstl(int **a1, int a2)
{
  if (BlueFin::GlMeRxParamLimits::GetMaxAllowedCnstls(*a1[1]) <= a2)
  {
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 579, "GetAllModesTrkParamsFromCnstl", "eCnstl < GetMaxAllowedCnstls()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", 579, "eCnstl < GetMaxAllowedCnstls()");
  }

  return *(BlueFin::GlMeRxParamStd::rMap(a1) + 6) + 208 * a2 + 72;
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetAllModesTrkParamsFromCnstl(BlueFin::GlMeSrdReceiverParameters *a1)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(a1) + 152);

  return v1();
}

uint64_t BlueFin::GlMeReceiverParametersIfc::GetDefaultSignalId(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    v3 = a2 == 3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  v5 = 2 * (a2 == 0);
  if (a3 != 2)
  {
    v5 = 0;
  }

  if (a3 != 3)
  {
    v4 = v5;
  }

  if (a3 == 5)
  {
    v6 = 3;
  }

  else
  {
    v6 = v4;
  }

  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        *result = 76;
        *(result + 4) = v6;
        *(result + 8) = 575;
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v6 - v6 + 4] != 255)
        {
          v7 = 63 * v6 + 201;
          goto LABEL_33;
        }

        goto LABEL_34;
      case 4:
        *result = -117;
        *(result + 4) = v6;
        *(result + 8) = 575;
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v6 - v6 + 5] == 255)
        {
          goto LABEL_34;
        }

        v8 = 36;
        v9 = 453;
        break;
      case 5:
        *result = -81;
        *(result + 4) = v6;
        *(result + 8) = 575;
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v6 - v6 + 6] == 255)
        {
          goto LABEL_34;
        }

        v8 = 14;
        v9 = 561;
        break;
      default:
        goto LABEL_35;
    }

    v7 = v9 + v6 * v8;
    goto LABEL_33;
  }

  if (!a2)
  {
    *result = 1;
    *(result + 4) = v6;
    *(result + 8) = 575;
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v6 - v6] != 255)
    {
      v7 = 32 * v6;
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  if (a2 == 1)
  {
    *result = 52;
    *(result + 4) = 0;
    v7 = 147;
    goto LABEL_33;
  }

  if (a2 != 2)
  {
LABEL_35:
    DeviceFaultNotify("glme_receiver_parameters_ifc.h", 1197, "GetDefaultSignalId", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_receiver_parameters_ifc.h", 1197, "0");
  }

  *result = 33;
  *(result + 4) = v6;
  *(result + 8) = 575;
  if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v6 - v6 + 1] != 255)
  {
    v7 = (19 * v6) | 0x80;
LABEL_33:
    *(result + 8) = v7;
    return result;
  }

LABEL_34:
  *(result + 4) = -1;
  return result;
}

uint64_t BlueFin::GlMeRxParamStd::GetAllGearsTrkParamsFromCnstlAndMode(int **a1, int a2, int a3)
{
  if (a3 >= 6)
  {
    v7 = "eMode < GetMaxAllowedModes()";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 593, "GetAllGearsTrkParamsFromCnstlAndMode", "eMode < GetMaxAllowedModes()");
    v8 = 593;
    goto LABEL_6;
  }

  if (BlueFin::GlMeRxParamLimits::GetMaxAllowedCnstls(*a1[1]) <= a2)
  {
    v7 = "eCnstl < GetMaxAllowedCnstls()";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 594, "GetAllGearsTrkParamsFromCnstlAndMode", "eCnstl < GetMaxAllowedCnstls()");
    v8 = 594;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", v8, v7);
  }

  return *(*(BlueFin::GlMeRxParamStd::rMap(a1) + 6) + 208 * a2 + 8 * a3 + 232);
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetAllGearsTrkParamsFromCnstlAndMode(BlueFin::GlMeSrdReceiverParameters *a1)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(a1) + 176);

  return v1();
}

uint64_t BlueFin::PikeEswRpcJdEncImp::esw_jd_rpc_tp_set_all(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (!(*(**(a1 + 8) + 424))(*(a1 + 8)))
  {
    v11 = "m_rAsicConfigIfc.GetMaxTrackParamIndex()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 229, "esw_jd_rpc_tp_set_all", "m_rAsicConfigIfc.GetMaxTrackParamIndex()");
    v12 = 229;
    goto LABEL_6;
  }

  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v13, v14, 1800, v6);
  BlueFin::GlStream::PutU08(v13, *a3);
  BlueFin::GlStream::PutU08(v13, 0);
  BlueFin::GlStream::PutU08(v13, 0);
  BlueFin::GlStream::PutU08(v13, 0);
  BlueFin::GlStream::PutU32(v13, *(a3 + 28));
  BlueFin::GlStream::PutU32(v13, *(a3 + 32));
  BlueFin::GlStream::PutU16(v13, *(a3 + 6));
  BlueFin::GlStream::PutU16(v13, *(a3 + 8));
  BlueFin::GlStream::PutU16(v13, *(a3 + 10));
  BlueFin::GlStream::PutU16(v13, *(a3 + 12));
  BlueFin::GlStream::PutU16(v13, *(a3 + 14));
  BlueFin::GlStream::PutU16(v13, *(a3 + 20));
  BlueFin::GlStream::PutU16(v13, *(a3 + 22));
  BlueFin::GlStream::PutU16(v13, *(a3 + 26));
  BlueFin::GlStream::PutU16(v13, *(a3 + 38));
  BlueFin::GlStream::PutU08(v13, *(a3 + 1));
  BlueFin::GlStream::PutU08(v13, *(a3 + 2));
  BlueFin::GlStream::PutU08(v13, *(a3 + 3));
  BlueFin::GlStream::PutU08(v13, *(a3 + 4));
  BlueFin::GlStream::PutU08(v13, *(a3 + 5));
  BlueFin::GlStream::PutU08(v13, *(a3 + 16));
  BlueFin::GlStream::PutU08(v13, *(a3 + 17));
  BlueFin::GlStream::PutU08(v13, *(a3 + 18));
  BlueFin::GlStream::PutU08(v13, *(a3 + 24));
  BlueFin::GlStream::PutU08(v13, *(a3 + 36));
  BlueFin::GlStream::PutU08(v13, *(a3 + 37));
  BlueFin::GlStream::PutU08(v13, *(a3 + 40));
  BlueFin::GlStream::PutU16(v13, *(a3 + 42));
  BlueFin::GlStream::PutU16(v13, *(a3 + 44));
  BlueFin::GlStream::PutU08(v13, *(a3 + 46));
  BlueFin::GlStream::PutU08(v13, *(a3 + 47));
  Offset = BlueFin::GlStream::GetOffset(v13);
  BlueFin::GlMeSrdTransaction::Add(a2, 4, 5u, v14, Offset);
  v8 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v8)
  {
    v11 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 280, "esw_jd_rpc_tp_set_all", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v12 = 280;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_pike.cpp", v12, v11);
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetCnstl(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 80);

  return v1();
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetMode(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 72);

  return v1();
}

float *BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswPowerThreshold(uint64_t a1, uint64_t a2, int a3, float a4, float a5, float a6)
{
  BlueFin::GlMeReceiverParametersIfc::GetDefaultSignalId(v35, a2, a3);
  if (v37 >= 0x23Fu)
  {
    v32 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 693, "GetSecPerEpochWithTrkException", "IsValid()");
    v33 = "glsignalid.h";
    v34 = 693;
    goto LABEL_34;
  }

  if (v36 != 1 || ((v12 = 1.5, v35[0] - 1 >= 0x20) ? (v13 = v35[0] - 66 >= 0xA) : (v13 = 0), v13))
  {
    if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v36 - v36 + BlueFin::GlSvId::s_aucSvId2gnss[v35[0]]])
    {
      v32 = "ucMsPerEpoch != 0";
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
      v33 = "glsignalid.h";
      v34 = 686;
LABEL_34:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v33, v34, v32);
    }

    v12 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v36 - v36 + BlueFin::GlSvId::s_aucSvId2gnss[v35[0]]] * 0.001;
  }

  v14 = a5 / v12;
  v15 = *((*(**(a1 + 8) + 152))(*(a1 + 8), a2) + 24);
  if (!a2 && a3 == 2)
  {
    v16 = *(a1 + 8);
    v17 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v18 = (*(*v16 + 40))(v16, v17, 0, 2);
LABEL_21:
    v15 = v18;
    goto LABEL_22;
  }

  if (!a2 && a3 == 3)
  {
    v19 = *(a1 + 8);
    v20 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v18 = (*(*v19 + 40))(v19, v20, 0, 3);
    goto LABEL_21;
  }

  if (a2 == 3 && (a3 == 5 || a3 == 3))
  {
    v21 = *(a1 + 8);
    v22 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v18 = (*(*v21 + 40))(v21, v22, 4, 3);
    goto LABEL_21;
  }

LABEL_22:
  v23 = v14;
  if ((*(**(a1 + 16) + 256))(*(a1 + 16)))
  {
    if (a2 != 4)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v24 = (*(**(a1 + 16) + 264))(*(a1 + 16));
  if (a2 == 4 && (v24 & 1) != 0)
  {
LABEL_27:
    if ((*(**(a1 + 16) + 1032))(*(a1 + 16)))
    {
      v25 = *(a1 + 8);
      v26 = (*(**(a1 + 16) + 16))(*(a1 + 16));
      v15 = (*(*v25 + 40))(v25, v26, 5, 0);
    }
  }

LABEL_29:
  v27 = log10f(a5);
  v28 = (((v15 * v23) + (__exp10f((a4 + (v27 * 10.0)) / 10.0) * (v15 * v23))) * a6) + 0.166666667;
  LOWORD(v29) = *((*(**(a1 + 8) + 136))(*(a1 + 8)) + 24);
  v30 = v29;
  result = (*(**(a1 + 8) + 136))(*(a1 + 8));
  if (((v28 * v30) * (*result / a5)) <= 0.0)
  {
    v32 = "fThresholdEsw > 0.0";
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 895, "GetEswPowerThreshold", "fThresholdEsw > 0.0");
    v33 = "glmesrd_receiver_parameters_programmer.cpp";
    v34 = 895;
    goto LABEL_34;
  }

  return result;
}

uint64_t BlueFin::CarpEswRpcJdEncImp::esw_jd_rpc_gs_set_all(uint64_t a1, uint64_t a2, char *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v6 = *a3;
  if (v6 >= (*(**(a1 + 8) + 408))(*(a1 + 8)))
  {
    v12 = "gs_param_ptr->gs_id < m_rAsicConfigIfc.GetMaxGearStepIndex()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 520, "esw_jd_rpc_gs_set_all", "gs_param_ptr->gs_id < m_rAsicConfigIfc.GetMaxGearStepIndex()");
    v13 = 520;
    goto LABEL_6;
  }

  v7 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v14, v15, 1800, v7);
  BlueFin::GlStream::PutU08(v14, *a3);
  BlueFin::GlStream::PutU08(v14, a3[1]);
  BlueFin::GlStream::PutU08(v14, a3[2]);
  BlueFin::GlStream::PutU08(v14, a3[3]);
  BlueFin::GlStream::PutU08(v14, a3[4]);
  BlueFin::GlStream::PutU08(v14, a3[5]);
  BlueFin::GlStream::PutU08(v14, a3[6]);
  BlueFin::GlStream::PutU08(v14, a3[7]);
  BlueFin::GlStream::PutU08(v14, a3[8]);
  BlueFin::GlStream::PutU08(v14, 0);
  BlueFin::GlStream::PutU08(v14, 0);
  BlueFin::GlStream::PutU08(v14, 0);
  Offset = BlueFin::GlStream::GetOffset(v14);
  BlueFin::GlMeSrdTransaction::Add(a2, 4, 6u, v15, Offset);
  v9 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v9)
  {
    v12 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 541, "esw_jd_rpc_gs_set_all", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v13 = 541;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", v13, v12);
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetBandNoisePowerAtCaEpoch(BlueFin::GlMeSrdReceiverParameters *a1)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(a1) + 40);

  return v1();
}

float BlueFin::GlMeRxParamStd::GetBandNoisePowerAtCaEpoch(uint64_t a1, int a2, int a3, int a4)
{
  v7 = (*(*a1 + 264))(a1);
  if (v7 < 2)
  {
    v20 = (a2 & 0xF000FFFF) - 805306382;
    if (v20 >= 4)
    {
      v21 = "0";
      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 358, "GetBandNoisePowerAtCaEpoch", "0");
      v22 = 358;
      goto LABEL_55;
    }

    v9 = *&BlueFin::GlMeSrdConstants::_4755_GALILEO_E1_COH_NOI_PWR_AT_CA_EPOCH_INT;
    v8 = *&BlueFin::GlMeSrdConstants::_4755_BEIDOU_B1C_COH_NOI_PWR_AT_CA_EPOCH_INT;
    result = *&BlueFin::GlMeSrdConstants::_4755_GPS_L1_COH_NOI_PWR_AT_CA_EPOCH_INT;
    v14 = flt_298A37930[v20];
    v17 = flt_298A37940[v20];
    v18 = **(&off_29EEAC4D0 + v20);
    v16 = **(&off_29EEAC4B0 + v20);
    v19 = 3.062;
    v15 = 4.244;
    v12 = 1.915;
    v10 = 3.8152;
    v11 = 3.5809;
  }

  else if (v7 - 2 >= 2)
  {
    if (v7 != 5)
    {
      v21 = "0";
      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 372, "GetBandNoisePowerAtCaEpoch", "0");
      v22 = 372;
      goto LABEL_55;
    }

    if ((a2 & 0xF000FFFF) - 805306383 > 6)
    {
      goto LABEL_60;
    }

    v8 = *&BlueFin::GlMeSrdConstants::_4777_BEIDOU_B1C_COH_NOI_PWR_AT_CA_EPOCH_INT;
    v9 = *&BlueFin::GlMeSrdConstants::_4777_GALILEO_E1_COH_NOI_PWR_AT_CA_EPOCH_INT;
    v19 = 3.062;
    v12 = 1.915;
    v10 = 3.8152;
    v11 = 3.5809;
    result = 3.598;
    v15 = 4.244;
    if (((1 << (a2 - 15)) & 0x54) != 0)
    {
      v14 = 2.893;
      v16 = 2.893;
      v17 = 2.893;
      v18 = 2.893;
      goto LABEL_15;
    }

    if (((1 << (a2 - 15)) & 0x28) != 0)
    {
      v19 = 2.8139;
      v18 = 0.92448;
      v14 = 2.86;
      v16 = 2.86;
      v17 = 2.86;
      goto LABEL_15;
    }

    if ((a2 & 0xF000FFFF) != 0x3000000F)
    {
LABEL_60:
      v21 = "0";
      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 309, "GetBandNoisePowerAtCaEpoch", "0");
      v22 = 309;
      goto LABEL_55;
    }

    v16 = 4.005;
    v15 = 4.244;
    v14 = 3.816;
    v17 = 3.816;
    v18 = 4.244;
  }

  else
  {
    if (a4)
    {
      v21 = "eSignalIndex==SIGNAL_INDEX_0";
      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 369, "GetBandNoisePowerAtCaEpoch", "eSignalIndex==SIGNAL_INDEX_0");
      v22 = 369;
      goto LABEL_55;
    }

    v8 = 0.0;
    v9 = 14.56;
    v10 = 4.02;
    v11 = 4.1;
    v12 = 0.0;
    result = 4.23;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
  }

LABEL_15:
  if (a3 <= 2)
  {
    switch(a3)
    {
      case 0:
        if (a4 > 1)
        {
          result = v16;
          if (a4 == 2)
          {
            return result;
          }

          result = v8;
          if (a4 == 3)
          {
            return result;
          }
        }

        else
        {
          if (!a4)
          {
            return result;
          }

          result = v12;
          if (a4 == 1)
          {
            return result;
          }
        }

        v21 = "0";
        DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 390, "GetBandNoisePowerAtCaEpoch", "0");
        v22 = 390;
        goto LABEL_55;
      case 1:
        if (a4)
        {
          v21 = "0";
          DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 400, "GetBandNoisePowerAtCaEpoch", "0");
          v22 = 400;
          goto LABEL_55;
        }

        return result;
      case 2:
        result = v11;
        if (a4)
        {
          v21 = "0";
          DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 410, "GetBandNoisePowerAtCaEpoch", "0");
          v22 = 410;
          goto LABEL_55;
        }

        return result;
    }

LABEL_58:
    v21 = "0";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 471, "GetBandNoisePowerAtCaEpoch", "0");
    v22 = 471;
    goto LABEL_55;
  }

  if (a3 > 4)
  {
    if (a3 == 5)
    {
      result = v9;
      if (a4)
      {
        result = v17;
        if (a4 != 2)
        {
          result = v18;
          if (a4 != 1)
          {
            v21 = "0";
            DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 456, "GetBandNoisePowerAtCaEpoch", "0");
            v22 = 456;
            goto LABEL_55;
          }
        }
      }

      return result;
    }

    if (a3 == 6)
    {
      result = v19;
      if (a4)
      {
        v21 = "0";
        DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 466, "GetBandNoisePowerAtCaEpoch", "0");
        v22 = 466;
        goto LABEL_55;
      }

      return result;
    }

    goto LABEL_58;
  }

  if (a3 == 3)
  {
    if (a4 > 1)
    {
      result = v16;
      if (a4 == 2)
      {
        return result;
      }

      result = v8;
      if (a4 == 3)
      {
        return result;
      }
    }

    else
    {
      if (!a4)
      {
        return result;
      }

      result = v12;
      if (a4 == 1)
      {
        return result;
      }
    }

    v21 = "0";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 426, "GetBandNoisePowerAtCaEpoch", "0");
    v22 = 426;
LABEL_55:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", v22, v21);
  }

  if (a4 > 1)
  {
    result = v14;
    if (a4 != 2)
    {
      result = v8;
      if (a4 != 3)
      {
        goto LABEL_50;
      }
    }
  }

  else
  {
    result = v10;
    if (a4)
    {
      result = v15;
      if (a4 != 1)
      {
LABEL_50:
        v21 = "0";
        DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 442, "GetBandNoisePowerAtCaEpoch", "0");
        v22 = 442;
        goto LABEL_55;
      }
    }
  }

  return result;
}

uint64_t gnss::FireGnssDevice::startTimeTransferSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26[3] = *MEMORY[0x29EDCA608];
  FireDeviceLog::DeviceLogBase(6, "#fgd startTimeTransferSession", a3, a4, a5, a6, a7, a8, v24[0]);
  v12 = *(a2 + 24);
  if (v12)
  {
    if (v12 == a2)
    {
      v25 = v24;
      (*(*v12 + 24))(v12, v24);
    }

    else
    {
      v25 = (*(*v12 + 16))(v12);
    }
  }

  else
  {
    v25 = 0;
  }

  v13 = a1 + 8;
  if (v24 != (a1 + 8))
  {
    v14 = v25;
    v15 = *(a1 + 32);
    if (v25 == v24)
    {
      if (v15 == v13)
      {
        (*(*v25 + 24))();
        (*(*v25 + 32))(v25);
        v25 = 0;
        (*(**(a1 + 32) + 24))(*(a1 + 32), v24);
        (*(**(a1 + 32) + 32))(*(a1 + 32));
        *(a1 + 32) = 0;
        v25 = v24;
        (*(v26[0] + 24))(v26, a1 + 8);
        (*(v26[0] + 32))(v26);
      }

      else
      {
        (*(*v25 + 24))();
        (*(*v25 + 32))(v25);
        v25 = *(a1 + 32);
      }

      *(a1 + 32) = v13;
    }

    else if (v15 == v13)
    {
      (*(*v15 + 24))(*(a1 + 32), v24);
      (*(**(a1 + 32) + 32))(*(a1 + 32));
      *(a1 + 32) = v25;
      v25 = v24;
    }

    else
    {
      v25 = *(a1 + 32);
      *(a1 + 32) = v14;
    }
  }

  std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](v24);
  FireMessageHandler::send(*(a1 + 40), 1073741837, v16, v17, v18, v19, v20, v21);
  std::function<void ()(gnss::Result)>::operator()(a3, 1);
  v22 = *MEMORY[0x29EDCA608];

  return std::function<void ()(gnss::Result)>::operator()(a4, 1);
}

void sub_2988A3B34(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t BlueFin::GlDbgRequest::CreateGlRequestImplSyncin(uint64_t (*a1)(uint64_t), void (*a2)(uint64_t), uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a2;
  if (BlueFin::GlDbgMemory::m_pInstance)
  {
    v14 = 1;
  }

  else
  {
    v14 = a1 == 0;
  }

  if (!v14 && a2 != 0)
  {
    v18 = a1(16);
    BlueFin::GlDbgMemory::m_pInstance = v18;
    v16 = a1;
    if (v18)
    {
      *v18 = a1;
      v18[1] = v12;
      v16 = a1;
    }

    goto LABEL_13;
  }

  v16 = a1;
  if (a1)
  {
LABEL_13:
    v17 = v16(136);
    goto LABEL_14;
  }

  v17 = (*BlueFin::GlDbgMemory::m_pInstance)(136);
LABEL_14:
  v19 = v17;
  if (v17)
  {
    *v17 = &unk_2A1F0A1D8;
    *(v17 + 72) = 0u;
    *(v17 + 40) = 0u;
    *(v17 + 88) = 0u;
    *(v17 + 8) = 0u;
    *(v17 + 24) = 0u;
    *(v17 + 56) = 0u;
    *(v17 + 104) = 0u;
    *(v17 + 120) = 0u;
    *(v17 + 72) = a3;
    *(v17 + 40) = a7;
    *(v17 + 88) = a5;
    *(v17 + 96) = a6;
    Memory = BlueFin::GlMemAlloc::glAllocateMemory(44, 288, a1);
    v21 = BlueFin::GlRequestImplSyncin::Create(Memory, v19, BlueFin::GlDbgProxyGlReqOnStart, a4, BlueFin::GlDbgProxyGlReqOnSyncInReport, BlueFin::GlDbgProxyGlReqOnSyncInStatus, BlueFin::GlDbgProxyGlReqOnSyncInLatched);
    *(v19 + 24) = v21;
    if (!v21)
    {
      if (!v12)
      {
        v12 = *(BlueFin::GlDbgMemory::m_pInstance + 8);
      }

      v12(v19);
      return 0;
    }
  }

  return v19;
}

uint64_t BlueFin::GlRequestImplSyncin::Create(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!result)
  {
    DeviceFaultNotify("glrequest.cpp", 1348, "Create", "pvBuffer != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glrequest.cpp", 1348, "pvBuffer != nullptr");
  }

  *(result + 16) = 6;
  *(result + 20) = 1;
  *(result + 24) = -1;
  *(result + 28) = -1;
  *(result + 36) = -1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = a3;
  *(result + 64) = 1;
  *(result + 72) = 0;
  *(result + 80) = a5;
  *result = &unk_2A1F16D40;
  *(result + 8) = a2;
  *(result + 88) = a6;
  *(result + 96) = a7;
  *(result + 104) = 0;
  *(result + 112) = 0;
  if (a4 <= 0)
  {
    v7 = 30;
  }

  else
  {
    v7 = a4;
  }

  *(result + 22) = v7;
  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgRequest::SetOnSyncinReportCurrentTime(uint64_t a1, uint64_t a2)
{
  *(a1 + 112) = a2;
  v3 = *(a1 + 8);
  if (v3)
  {
    BlueFin::GlDbgCodec::WriteStart(v3, 3084);
    v4 = *(a1 + 8);
    v9 = BlueFin::GlDbgRequest::Id(a1, 0);
    BlueFin::GlDbgCodec::Write(v4, &v9);
    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  (*(**(a1 + 24) + 80))(*(a1 + 24), BlueFin::GlDbgProxyGlReqOnSyncinReportCurrentTime);
  result = *(a1 + 8);
  if (result)
  {
    BlueFin::GlDbgCodec::WriteFinal(result, 3084);
    v6 = *(a1 + 8);
    v8 = BlueFin::GlDbgRequest::Id(a1, 0);
    BlueFin::GlDbgCodec::Write(v6, &v8);
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }

  return result;
}

uint64_t BlueFin::GlRequestImplSyncin::Print(uint64_t this, unsigned __int8 a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v3 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(a2);
    if (this)
    {
      if (((1 << (a2 >> 3)) & 0x2000800E) != 0)
      {
        v5 = 76;
        if (!*(v3 + 96))
        {
          v5 = 108;
        }

        v9 = *(v3 + 22);
        v6 = 68;
        if (!*(v3 + 80))
        {
          v6 = 100;
        }

        v7 = 89;
        if (!*(v3 + 88))
        {
          v7 = 121;
        }

        BlueFin::GlFormat::glsnprintf(v10, 0x32, "cbSync(%c%c%c) %hds", v4, v7, v6, v5, *(v3 + 22));
        this = BlueFin::GlRequestImplNmea::Print(v3, a2, v10);
      }
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return this;
}

_BYTE *BlueFin::GlDineCtrl::ArmSYNCIN(BlueFin::GlDineCtrl *this, int a2, int a3)
{
  v6 = 70;
  if (a3)
  {
    v7 = 84;
  }

  else
  {
    v7 = 70;
  }

  if (a2)
  {
    v6 = 84;
  }

  GlCustomLog(14, "GlDineCtrl::ArmSYNCIN(%c,%c)\n", v6, v7);
  result = BlueFin::GlMeSrdCtrlSm::ArmSYNCIN(this + 75168, a2, a3);
  if (a2)
  {
    *(this + 74200) = 1;
  }

  return result;
}

_BYTE *BlueFin::GlMeSrdCtrlSm::ArmSYNCIN(_BYTE *this, int a2, int a3)
{
  if ((this[5576] & 1) == 0)
  {
    if (this[219] == 1)
    {
      if (a3)
      {
        v4 = 2;
      }

      else
      {
        v4 = 0;
      }

      if (a2)
      {
        v5 = 40;
      }

      else
      {
        v5 = 41;
      }

      v6 = (this + 2600);

      return BlueFin::GlQueue::putLIFO(v6, v5, v4);
    }

    else if (a2)
    {
      DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 283, "ArmSYNCIN", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 283, "0");
    }
  }

  return this;
}

uint64_t BlueFin::GlQueue::putLIFO(BlueFin::GlQueue *this, int a2, char a3)
{
  if (!a2)
  {
    DeviceFaultNotify("glhsm_queue.cpp", 115, "putLIFO", "sig != 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glhsm_queue.cpp", 115, "sig != 0");
  }

  v3 = *this;
  if (!*this)
  {
    *this = a2;
    *(this + 1) = a3;
    *(this + 47) |= *(this + 46);
    return 1;
  }

  v4 = *(this + 21);
  if (v4 < *(this + 20))
  {
    *(this + 21) = v4 + 1;
    if (v4 >= *(this + 22))
    {
      *(this + 22) = v4 + 1;
    }

    v5 = (*(this + 4) - 2);
    *(this + 4) = v5;
    if (v5 < *(this + 1))
    {
      v5 = (*(this + 2) - 2);
      *(this + 4) = v5;
    }

    *v5 = v3;
    v5[1] = *(this + 1);
    *this = a2;
    *(this + 1) = a3;
    return 1;
  }

  return 0;
}

uint64_t (*(*BlueFin::GlMeSrdSyncIn::wait4arm(BlueFin::GlMeSrdSyncIn *this, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  result = 0;
  v4 = *a2;
  if (v4 > 0x27)
  {
    if (v4 == 40)
    {
      return result;
    }

    if (v4 == 41)
    {
      BlueFin::GlMeSrdSyncIn::DisarmESW(this);
      (*(**(this + 15) + 184))(*(this + 15), 5, 0.0);
      v5 = "&GlMeSrdSyncIn::wait4disarm";
      v6 = BlueFin::GlMeSrdSyncIn::wait4disarm;
      goto LABEL_9;
    }
  }

  else
  {
    if (v4 - 2 < 2)
    {
      return result;
    }

    if (v4 == 13)
    {
      if (a2[1])
      {
        return 0;
      }

      v5 = "&GlMeSrdSyncIn::wait4pulse";
      v6 = BlueFin::GlMeSrdSyncIn::wait4pulse;
LABEL_9:
      BlueFin::QHsm::tran(this, v6, v5);
      return 0;
    }
  }

  return BlueFin::GlMeSrdSyncIn::running;
}

uint64_t (*BlueFin::GlMeSrdSyncIn::running(uint64_t a1, unsigned __int8 *a2))()
{
  v2 = *a2;
  if (v2 > 0x2B)
  {
    return BlueFin::QHsm::top;
  }

  if (((1 << v2) & 0xB0000002000) != 0)
  {
    GlCustomLog(12, "GlMeSrdSyncIn::running the following msg %d was discarded because it was not expected to be received!!! \n", v2);
    return 0;
  }

  if (((1 << v2) & 0xC) != 0)
  {
    return 0;
  }

  else
  {
    return BlueFin::QHsm::top;
  }
}

BOOL BlueFin::GlAscii85::Encode(BlueFin::GlAscii85 *this, char *a2, const unsigned __int8 *a3, unsigned int a4, unsigned int a5, unsigned int *a6, unsigned int *a7, int a8)
{
  v8 = *(this + 5);
  if (v8)
  {
    return (v8 & 1) == 0;
  }

  v9 = a5;
  v10 = a4;
  *(this + 7) = 1;
  v12 = *(this + 9);
  v11 = *(this + 10);
  if (v12 != v11)
  {
    v13 = *a6;
    if (v13 >= v10)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v14 = *(this + v12 + 5);
      *a6 = v13 + 1;
      a2[v13] = v14;
      v11 = *(this + 10);
      v12 = (*(this + 9) + 1) & 7;
      *(this + 9) = v12;
      if (v12 == v11)
      {
        break;
      }

      v13 = *a6;
      if (v13 >= v10)
      {
        goto LABEL_7;
      }
    }
  }

  v11 = v12;
LABEL_7:
  if (((v11 - v12) & 7u) > 2)
  {
    goto LABEL_49;
  }

  v15 = this + 5;
  while (1)
  {
    v16 = *a7;
    if (v16 >= v9)
    {
      if (!a8 || *(this + 6))
      {
        goto LABEL_49;
      }

      v17 = *(this + 8);
    }

    else
    {
      v17 = *(this + 8);
      if (v17 < 4)
      {
        v18 = *(this + 4);
        do
        {
          *a7 = v16 + 1;
          v19 = a3[v16];
          v20 = *(this + 8);
          *(this + 8) = v20 + 1;
          *(this + v20) = v19;
          v18 = BlueFin::GlAscii85::m_aucCrcLookupTable[v18 ^ v19];
          *(this + 4) = v18;
          v17 = *(this + 8);
          v16 = *a7;
        }

        while (v17 <= 3 && v16 < v9);
      }

      if (!a8)
      {
        goto LABEL_27;
      }
    }

    if (v16 >= v9)
    {
      while (1)
      {
        v17 = *(this + 8);
        if (v17 > 3)
        {
          break;
        }

        if (*(this + 6))
        {
          goto LABEL_27;
        }

        v22 = ~*(this + 16);
        *(this + 8) = v17 + 1;
        *(this + v17) = v22;
        ++*(this + 6);
        if (*a7 < v9)
        {
          v17 = *(this + 8);
          goto LABEL_27;
        }
      }

      v11 = *(this + 10);
      goto LABEL_32;
    }

LABEL_27:
    v23 = v17 > 3 ? 1 : a8;
    v11 = *(this + 10);
    if (!v17 || (v23 & 1) == 0)
    {
      break;
    }

LABEL_32:
    v24 = bswap32(*this);
    if (v17 == 4 && v24 == 0)
    {
      v15[v11] = 122;
      v30 = *(this + 10) + 1;
    }

    else
    {
      v26 = v11 & 7 ^ 4;
      *(this + 10) = v26;
      v27 = 5;
      do
      {
        v28 = (v24 >> 7) + (v24 >> 8) + (((v24 >> 7) + (v24 >> 8)) >> 8);
        v29 = v28 + HIWORD(v28) + ((193 * (v24 - 85 * (v28 + HIWORD(v28)))) >> 14);
        v15[v26] = BlueFin::GlAscii85::m_aucEncodeTable[(v24 - 85 * v29)];
        v26 = (*(this + 10) - 1) & 7;
        *(this + 10) = v26;
        v24 = v29;
        --v27;
      }

      while (v27);
      v30 = v26 + *(this + 8) + 2;
    }

    v11 = v30 & 7;
    *(this + 10) = v11;
    v12 = *(this + 9);
    if (v12 == v11)
    {
      v12 = v11;
    }

    else
    {
      while (1)
      {
        v31 = *a6;
        if (v31 >= v10)
        {
          break;
        }

        v32 = v15[v12];
        *a6 = v31 + 1;
        a2[v31] = v32;
        v11 = *(this + 10);
        v12 = (*(this + 9) + 1) & 7;
        *(this + 9) = v12;
        if (v12 == v11)
        {
          v11 = v12;
          break;
        }
      }
    }

    *(this + 8) = 0;
    *this = 0;
    if (((v11 - v12) & 7u) >= 3)
    {
      goto LABEL_49;
    }
  }

  v12 = *(this + 9);
LABEL_49:
  if (v12 != v11)
  {
    do
    {
      v33 = *a6;
      if (v33 >= v10)
      {
        break;
      }

      v34 = *(this + v12 + 5);
      *a6 = v33 + 1;
      a2[v33] = v34;
      v35 = *(this + 10);
      v12 = (*(this + 9) + 1) & 7;
      *(this + 9) = v12;
    }

    while (v12 != v35);
  }

  v8 = *(this + 5);
  if (a8)
  {
    if (*a7 == v9 && *a6 < v10)
    {
      v8 |= 2u;
      *(this + 5) = v8;
    }
  }

  return (v8 & 1) == 0;
}