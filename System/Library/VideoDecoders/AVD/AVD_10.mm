uint64_t CAHDecDaisyAvc::getTileIdxAbove(CAHDecDaisyAvc *this, unsigned int a2)
{
  v2 = *(*(this + 33) + 1008);
  if (a2 % v2)
  {
    v3 = v2 > a2;
  }

  else
  {
    v3 = 1;
  }

  v4 = a2 % v2 + (a2 / v2 - 1) * v2;
  if (v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v4;
  }
}

uint64_t CAHDecDaisyAvc::populateAvdWork(CAHDecDaisyAvc *this, unsigned int a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = *(this + 32);
  v2 = *(this + 33);
  v4 = *(v3 + 3200);
  v5 = *(v3 + 7388);
  v23 = 0;
  v24 = 0;
  if (a2)
  {
    v7 = 0;
    v8 = 0;
    v9 = (v2 + 3160);
    v10 = (v4 + 20);
    v22 = a2;
    v11 = 44 * a2;
    v12 = v2 + 956 * v5;
    while (1)
    {
      v13 = v12 + v7;
      *(v13 + 2228) = v8;
      *(v13 + 2230) = 0;
      *(v13 + 2232) = v8;
      *(v12 + v7 + 2234) = 0;
      v14 = *v9;
      if (!CAVDAvcDecoder::GetSDataMemInfo(*(this + 32), v8, &v24, &v23))
      {
        return 0xFFFFFFFFLL;
      }

      v15 = *v10;
      *(v13 + 2256) = *v10;
      *(v13 + 2260) = v15;
      *(v13 + 2264) = 0;
      if (v7)
      {
        v16 = 0;
      }

      else
      {
        v16 = 15;
      }

      *(v13 + 2238) = v16;
      v17 = v24;
      if (*v24 || *(v24 + 152) || *(v24 + 156))
      {
        v18 = v23;
        if (HIDWORD(v23) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v26 = "populateAvdWork";
          v27 = 1024;
          v28 = 1925;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v18 = v23;
        }

        result = CAHDec::addToPatcherList(this, v17, v7 + 575846, v18, 0x3FFFFFFFFFFLL, 32, -1, 2);
        if (result)
        {
          return result;
        }

        v17 = v24;
        if (*v24)
        {
          goto LABEL_17;
        }
      }

      if (*(v17 + 152) || *(v17 + 156))
      {
LABEL_17:
        v20 = v23;
        if (HIDWORD(v23))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v26 = "populateAvdWork";
            v27 = 1024;
            v28 = 1926;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v20 = v23;
          }
        }

        result = CAHDec::addToPatcherList(this, v17, v7 + 575848, v20, 0xFFFFFFFFLL, 0, -1, 4);
        if (result)
        {
          return result;
        }
      }

      v9 += 239;
      *(v12 + v7 + 2252) = v14;
      ++v8;
      v7 += 44;
      v10 += 462;
      if (v11 == v7)
      {
        v2 = *(this + 33);
        v21 = v22;
        goto LABEL_24;
      }
    }
  }

  else
  {
    v21 = 0;
LABEL_24:
    result = 0;
    *(v2 + 28) = v21;
    *(v2 + 32) = 575824;
  }

  return result;
}

uint64_t CAHDecDaisyAvc::allocWorkBuf_SPS(CAHDecDaisyAvc *this, _BYTE *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2[4];
  v4 = *(a2 + 779);
  v5 = 16 * v4;
  v6 = *(a2 + 780);
  v7 = 16 * v6;
  v8 = 32 - __clz(((16 * v4 + 47) >> 5) - 1);
  if (v4 < 2)
  {
    LOBYTE(v8) = 0;
  }

  v9 = 32 - __clz(((16 * v6 + 47) >> 5) - 1);
  if (v6 < 2)
  {
    LOBYTE(v9) = 0;
  }

  v10 = ((32 << (v9 + v8)) + 127) & 0xFFFFFF80;
  if (a2[4])
  {
    if (v3 == 1)
    {
      ++v7;
    }

    v11 = (v5 + 16) << (v3 == 3);
    v12 = (((v7 + 16) >> (v3 == 1)) + 15) >> 4;
    if (v11 > 0x20)
    {
      v13 = 32 - __clz(((v11 + 31) >> 5) - 1);
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
  }

  LOBYTE(v13) = 0;
LABEL_12:
  v14 = 32 - __clz(v12 - 1);
  if (v12 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = ((8 << (v15 + v13)) + 127) & 0xFFFFFF80;
  if (a2[4])
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  *(this + 3440) = v10;
  *(this + 3441) = v17;
  *(this + 1721) = 0;
  v18 = (v4 << 6) + 64;
  *(this + 3446) = v18;
  v19 = v18 + v18 * v6;
  *(this + 3445) = v19;
  if (!*(*(this + 32) + 2648))
  {
    v20 = (this + 560);
    v21 = (this + 4784);
    v22 = 24;
    while (1)
    {
      v23 = *(this + 3440);
      if (v23 && CAVDDecoder::allocAVDMem(*(this + 32), v20, v23, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_36;
        }

        v29 = 136315650;
        v30 = "allocWorkBuf_SPS";
        v31 = 1024;
        v32 = 2167;
        v33 = 2080;
        v34 = "HdrY";
        v27 = MEMORY[0x277D86220];
        goto LABEL_35;
      }

      v24 = *(this + 3441);
      if (v24)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), v21, v24, 7, 1, 0))
        {
          break;
        }
      }

      v20 += 11;
      v21 += 11;
      if (!--v22)
      {
        v19 = *(this + 3445);
        goto LABEL_26;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    v29 = 136315650;
    v30 = "allocWorkBuf_SPS";
    v31 = 1024;
    v32 = 2168;
    v33 = 2080;
    v34 = "HdrC";
    v27 = MEMORY[0x277D86220];
    goto LABEL_35;
  }

LABEL_26:
  v25 = (*MEMORY[0x277D85F70] + v19) & ~*MEMORY[0x277D85F70];
  *(this + 3445) = v25;
  v26 = (24 * v25);
  if (!v26 || !CAVDDecoder::allocAVDMem(*(this + 32), this + 849, v26, 7, 1, 32))
  {
    result = 0;
    *(this + 3450) = 0;
    *(this + 3451) = v5 | (v6 << 20) | 0xF000F;
    return result;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v29 = 136315650;
    v30 = "allocWorkBuf_SPS";
    v31 = 1024;
    v32 = 2186;
    v33 = 2080;
    v34 = "MvColo";
    v27 = MEMORY[0x277D86220];
LABEL_35:
    _os_log_impl(&dword_277606000, v27, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v29, 0x1Cu);
  }

LABEL_36:
  (*(*this + 144))(this);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecDaisyAvc::allocWorkBuf_PPS(CAHDecDaisyAvc *this, _BYTE *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2[4];
  v6 = *(a2 + 779);
  if (((a2[6] + 9) & 0x1FEu) <= ((a2[7] + 9) & 0x1FEu))
  {
    v7 = (a2[7] + 9) & 0x1FE;
  }

  else
  {
    v7 = (a2[6] + 9) & 0x1FE;
  }

  if (v5 == 3)
  {
    v8 = 48;
  }

  else
  {
    v8 = 32;
  }

  if (v5 == 3)
  {
    v9 = 192;
  }

  else
  {
    v9 = 128;
  }

  v10 = v5 == 0;
  if (a2[4])
  {
    v11 = v8;
  }

  else
  {
    v11 = 16;
  }

  v12 = ((v7 * v11) >> 3) * (v6 + 1);
  v13 = 32 * (v6 + 1);
  if (v10)
  {
    v14 = 64;
  }

  else
  {
    v14 = v9;
  }

  v15 = ((v7 * v14) >> 3) * (v6 + 1);
  v16 = 20 * *(a2 + 779);
  v17 = (this + 11824);
  v18 = 4;
  do
  {
    if (CAVDDecoder::allocAVDMem(*(this + 32), v17, v16 + 20, 7, 1, 0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      v21 = 136315650;
      v22 = "allocWorkBuf_PPS";
      v23 = 1024;
      v24 = 2334;
      v25 = 2080;
      v26 = "AvpAboveInfo";
      v19 = MEMORY[0x277D86220];
      goto LABEL_34;
    }

    v17 += 11;
    --v18;
  }

  while (v18);
  if (v7)
  {
    if (CAVDDecoder::allocAVDMem(*(this + 32), this + 783, v12, 7, 1, 0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      v21 = 136315650;
      v22 = "allocWorkBuf_PPS";
      v23 = 1024;
      v24 = 2338;
      v25 = 2080;
      v26 = "IpAbove";
      v19 = MEMORY[0x277D86220];
      goto LABEL_34;
    }

    if (CAVDDecoder::allocAVDMem(*(this + 32), this + 794, v15, 7, 1, 0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      v21 = 136315650;
      v22 = "allocWorkBuf_PPS";
      v23 = 1024;
      v24 = 2339;
      v25 = 2080;
      v26 = "LfAbovePix";
      v19 = MEMORY[0x277D86220];
      goto LABEL_34;
    }
  }

  if (CAVDDecoder::allocAVDMem(*(this + 32), this + 805, v13, 7, 1, 0))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    v21 = 136315650;
    v22 = "allocWorkBuf_PPS";
    v23 = 1024;
    v24 = 2340;
    v25 = 2080;
    v26 = "LfAboveInfo";
    v19 = MEMORY[0x277D86220];
    goto LABEL_34;
  }

  result = CAVDDecoder::allocAVDMem(*(this + 32), this + 728, v13, 7, 1, 0);
  if (!result)
  {
    return result;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315650;
    v22 = "allocWorkBuf_PPS";
    v23 = 1024;
    v24 = 2343;
    v25 = 2080;
    v26 = "MvAboveInfo";
    v19 = MEMORY[0x277D86220];
LABEL_34:
    _os_log_impl(&dword_277606000, v19, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v21, 0x1Cu);
  }

LABEL_35:
  (*(*this + 160))(this, 0);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecDaisyAvc::freeWorkBuf_SPS(CAHDecDaisyAvc *this)
{
  v2 = (this + 560);
  v3 = (this + 4784);
  v4 = 24;
  do
  {
    result = *(this + 32);
    if (!*(result + 2648))
    {
      if (*v2)
      {
        result = CAVDDecoder::deallocAVDMem(result, v2);
        *v2 = 0;
      }

      if (*v3)
      {
        result = CAVDDecoder::deallocAVDMem(*(this + 32), v3);
        *v3 = 0;
      }
    }

    v2 += 22;
    v3 += 22;
    --v4;
  }

  while (v4);
  if (*(this + 1698))
  {
    result = CAVDDecoder::deallocAVDMem(*(this + 32), this + 1698);
    *(this + 1698) = 0;
  }

  return result;
}

uint64_t *CAHDecDaisyAvc::freeWorkBuf_PPS(uint64_t *this, void *a2)
{
  v2 = this;
  v3 = this + 1478;
  v4 = 4;
  do
  {
    if (*v3)
    {
      this = CAVDDecoder::deallocAVDMem(v2[32], v3);
      *v3 = 0;
    }

    v3 += 22;
    --v4;
  }

  while (v4);
  if (v2[1566])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1566);
    v2[1566] = 0;
  }

  if (v2[1456])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1456);
    v2[1456] = 0;
  }

  if (v2[1588])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1588);
    v2[1588] = 0;
  }

  if (v2[1610])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1610);
    v2[1610] = 0;
  }

  if (v2[1632])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1632);
    v2[1632] = 0;
  }

  if (v2[1654])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1654);
    v2[1654] = 0;
  }

  if (v2[1676])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1676);
    v2[1676] = 0;
  }

  return this;
}

uint64_t CAHDecDaisyAvc::setVPInstrFifo(uint64_t this, int a2)
{
  v2 = 0;
  v3 = (this + 9164);
  do
  {
    *v3 = 1;
    *(v3 - 39) = v2++;
    v3 += 44;
  }

  while (v2 != 15);
  *(this + 13776) = a2;
  return this;
}

void *createIxoraLghDecoder(uint64_t a1)
{
  v2 = operator new(0x11C8uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecIxoraLgh::CAHDecIxoraLgh(v2, a1);
  }

  return v3;
}

void *CAHDecIxoraLgh::CAHDecIxoraLgh(void *a1, uint64_t a2)
{
  CAHDec::CAHDec(a1);
  *v4 = &unk_288668848;
  *(v4 + 256) = a2;
  *(v4 + 456) = 151460;
  *(v4 + 8) = 932;
  *(v4 + 16) = xmmword_27775BC80;
  *(v4 + 32) = 1;
  *(v4 + 56) = a2;
  *(a2 + 17792) = 0;
  bzero((a2 + 12032), 0xB00uLL);
  *(a2 + 5952) = 0u;
  bzero((a1[32] + 14848), 0xB00uLL);
  bzero(a1 + 58, 0xA50uLL);
  bzero((a1[32] + 5248), 0x2C0uLL);
  bzero(a1 + 388, 0x580uLL);
  for (i = 2960; i != 3664; i += 176)
  {
    v6 = (a1[32] + i);
    v6[9] = 0uLL;
    v6[10] = 0uLL;
    v6[7] = 0uLL;
    v6[8] = 0uLL;
    v6[5] = 0uLL;
    v6[6] = 0uLL;
    v6[3] = 0uLL;
    v6[4] = 0uLL;
    v6[1] = 0uLL;
    v6[2] = 0uLL;
    *v6 = 0uLL;
  }

  do
  {
    v7 = (a1[32] + i);
    v7[9] = 0uLL;
    v7[10] = 0uLL;
    v7[7] = 0uLL;
    v7[8] = 0uLL;
    v7[5] = 0uLL;
    v7[6] = 0uLL;
    v7[3] = 0uLL;
    v7[4] = 0uLL;
    v7[1] = 0uLL;
    v7[2] = 0uLL;
    *v7 = 0uLL;
    i += 176;
  }

  while (i != 5072);
  v8 = a1[32];
  v8[327] = 0u;
  v8[326] = 0u;
  v8[325] = 0u;
  v8[324] = 0u;
  v8[323] = 0u;
  v8[322] = 0u;
  v8[321] = 0u;
  v8[320] = 0u;
  v8[319] = 0u;
  v8[318] = 0u;
  v8[317] = 0u;
  return a1;
}

void CAHDecIxoraLgh::~CAHDecIxoraLgh(CAHDecIxoraLgh *this)
{
  *this = &unk_288668848;
  CAHDecIxoraLgh::freeWorkBuf_SPS(this);
  v2 = *(this + 32);
  for (i = 2960; i != 3664; i += 176)
  {
    if (*(v2 + i))
    {
      CAVDDecoder::deallocAVDMem(v2, (v2 + i));
      v2 = *(this + 32);
      *(v2 + i) = 0;
    }
  }

  if (*(v2 + 5072))
  {
    CAVDDecoder::deallocAVDMem(v2, (v2 + 5072));
    *(*(this + 32) + 5072) = 0;
  }

  (*(*this + 160))(this, 0);
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecIxoraLgh::~CAHDecIxoraLgh(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecIxoraLgh::init(CAHDecIxoraLgh *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = CAVDDecoder::allocAVDMem(*(this + 32), (this + 280), *(this + 114), 6, 1, 0);
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "init";
      v12 = 1024;
      v13 = 0;
      v14 = 1024;
      LODWORD(v15) = v3;
      v4 = MEMORY[0x277D86220];
      v5 = "AppleAVD: ERROR: %s(): Failed to allocate m_decodeBufferMemInfo[%d]! Got %d\n";
      v6 = 24;
LABEL_13:
      _os_log_impl(&dword_277606000, v4, OS_LOG_TYPE_DEFAULT, v5, &v10, v6);
    }
  }

  else
  {
    v7 = *(this + 35);
    *(this + 13) = 0;
    *(this + 33) = v7;
    *(this + 34) = v7;
    for (i = 2960; i != 3664; i += 176)
    {
      if (CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + i), 1913, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 301;
        }

        v10 = 136315650;
        v11 = "init";
        v12 = 1024;
        v13 = 211;
        v14 = 2080;
        v15 = "probBuf";
        v4 = MEMORY[0x277D86220];
        v5 = "AppleAVD: ERROR: %s() Line %d: Error allocating %s";
        goto LABEL_12;
      }
    }

    result = CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + 5072), 12284, 7, 1, 0);
    if (!result)
    {
      return result;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "init";
      v12 = 1024;
      v13 = 213;
      v14 = 2080;
      v15 = "stateBuf";
      v4 = MEMORY[0x277D86220];
      v5 = "AppleAVD: ERROR: %s() Line %d: Error allocating %s";
LABEL_12:
      v6 = 28;
      goto LABEL_13;
    }
  }

  return 301;
}

uint64_t CAHDecIxoraLgh::startPicture(CAHDecIxoraLgh *this, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *(this + 13) = 0;
  v3 = *(this + 34);
  *(this + 33) = v3;
  if (v3)
  {
    bzero(v3, 0x24FA4uLL);
    v5 = *(this + *(this + 13) + 34);
    *(v5 + 16) = a2;
    *(v5 + 24) = 257;
    bzero(*(this + 9), 48 * *(this + 17));
    result = 0;
    *(this + 16) = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "startPicture";
      v9 = 1024;
      v10 = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): decode buffer at index %d is NULL!\n", &v7, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t CAHDecIxoraLgh::DecodePicture(CAHDecIxoraLgh *this, uint64_t a2)
{
  if (CAHDecIxoraLgh::startPicture(this, a2))
  {
    return 1;
  }

  (*(*this + 40))(this);
  (*(*this + 56))(this);
  (*(*this + 64))(this);
  CAHDecIxoraLgh::populateTiles(this);
  (*(*this + 96))(this, a2);
  (*(*this + 48))(this, *(this + 114));
  return 0;
}

uint64_t CAHDecIxoraLgh::populateTiles(CAHDecIxoraLgh *this)
{
  v1 = (*(*(*(this + 32) + 17800) + 316) * *(*(*(this + 32) + 17800) + 312));
  if (v1)
  {
    v3 = *(this + *(this + 13) + 34) + 932;
    do
    {
      CAHDecClaryLgh::populateTileRegisters(this, v3);
      v3 += 12;
      --v1;
    }

    while (v1);
  }

  return 0;
}

uint64_t CAHDecIxoraLgh::updateCommonRegisters(CAHDecIxoraLgh *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -889266515;
  return 0;
}

uint64_t CAHDecIxoraLgh::populateSequenceRegisters(CAHDecIxoraLgh *this)
{
  v1 = *(this + 33);
  v2 = *(*(this + 32) + 17800);
  *(v1 + 40) = 0;
  v3 = *(v2 + 108) - 1;
  *(v1 + 40) = v3;
  *(v1 + 40) = (v3 | (*(v2 + 112) << 16)) - 0x10000;
  *(v1 + 44) = 0;
  v4 = *(v2 + 304);
  if (v4 >= 3)
  {
    v5 = 6528;
  }

  else
  {
    v5 = (v4 << 7) | 0x1800;
  }

  *(v1 + 44) = v5;
  v6 = v5 | ((*(v2 + 105) & 0xF ^ 8) << 15);
  *(v1 + 44) = v6;
  v7 = v6 | ((*(v2 + 105) & 0xF ^ 8) << 19) | 0x1000000;
  *(v1 + 44) = v7;
  if (*(v2 + 304) == 4)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = v7;
  }

  *(v1 + 44) = v8;
  return 0;
}

uint64_t CAHDecIxoraLgh::populatePictureRegisters(CAHDecIxoraLgh *this)
{
  v368 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(this + 33);
  v4 = *(v2 + 17800);
  if (*(v4 + 37))
  {
    v5 = *(v4 + 40) != 0;
  }

  else
  {
    v5 = 1;
  }

  v355 = *(v2 + 11988);
  v6 = *(v4 + 100);
  v362 = *(v4 + 96);
  v361 = 1 << v6;
  v7 = *(v2 + 2675);
  v8 = *(v2 + 2674);
  if (v5)
  {
    v9 = 766517248;
  }

  else
  {
    v9 = 766509056;
  }

  *(v3 + 48) = v9;
  v10 = v9 | ((*(*(this + 32) + 2644) != 0) << 12);
  *(v3 + 48) = v10;
  if (*(*(this + 32) + 2644) == 1)
  {
    v11 = 1024;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11 & 0xFFFFFFF0 | (4 * (v7 & 3)) | v8 & 3 | v10 | 0x2E0;
  *(v3 + 48) = v12;
  v13 = *(this + 32);
  v14 = v12 | ((v13[2652] & 1) << 19);
  *(v3 + 48) = v14;
  v15 = v14 | ((v13[2653] & 1) << 18);
  *(v3 + 48) = v15;
  *(v3 + 48) = v15 | ((v13[2654] & 1) << 17);
  *(v3 + 52) = 0x2000000;
  LOWORD(v15) = *(v4 + 108) - 1;
  *(v3 + 56) = v15;
  *(v3 + 56) = (v15 | (*(v4 + 112) << 16)) - 0x10000;
  *(v3 + 60) = 0;
  v16 = *(*(*(this + 32) + 17800) + 2688) & 7;
  *(v3 + 64) = v16;
  v17 = v16 & 0xFFFFFFF7 | (8 * (*(*(*(this + 32) + 17800) + 2692) & 1));
  *(v3 + 64) = v17;
  v18 = v17 & 0xFFFFFF8F | (16 * (*(*(*(this + 32) + 17800) + 2696) & 7));
  *(v3 + 64) = v18;
  v19 = v18 & 0xFFFFFF7F | ((*(*(*(this + 32) + 17800) + 2700) & 1) << 7);
  *(v3 + 64) = v19;
  v20 = v19 & 0xFFFFF8FF | ((*(*(*(this + 32) + 17800) + 2704) & 7) << 8);
  *(v3 + 64) = v20;
  v21 = v20 & 0xFFFFF7FF | ((*(*(*(this + 32) + 17800) + 2708) & 1) << 11);
  *(v3 + 64) = v21;
  v22 = v21 & 0xFFFFCFFF | ((*(*(*(this + 32) + 17800) + 2712) & 3) << 12);
  *(v3 + 64) = v22;
  v23 = v22 & 0xFFFFBFFF | ((*(*(*(this + 32) + 17800) + 2716) & 1) << 14);
  *(v3 + 64) = v23;
  v24 = v23 & 0xFFFF7FFF | ((*(*(*(this + 32) + 17800) + 2720) & 1) << 15);
  *(v3 + 64) = v24;
  v25 = v24 & 0xFFF8FFFF | ((*(*(*(this + 32) + 17800) + 2724) & 7) << 16);
  *(v3 + 64) = v25;
  v26 = v25 & 0xFFF7FFFF | ((*(*(*(this + 32) + 17800) + 2728) & 1) << 19);
  *(v3 + 64) = v26;
  v27 = v26 & 0xFFEFFFFF | ((*(*(*(this + 32) + 17800) + 2732) & 1) << 20);
  *(v3 + 64) = v27;
  v28 = v27 & 0xFFDFFFFF | ((*(*(*(this + 32) + 17800) + 2736) & 1) << 21);
  *(v3 + 64) = v28;
  v29 = v28 & 0xFFBFFFFF | ((*(*(*(this + 32) + 17800) + 2740) & 1) << 22);
  *(v3 + 64) = v29;
  v30 = v29 & 0xFF7FFFFF | ((*(*(*(this + 32) + 17800) + 2744) & 1) << 23);
  *(v3 + 64) = v30;
  v31 = v30 & 0xFEFFFFFF | ((*(*(*(this + 32) + 17800) + 2748) & 1) << 24);
  *(v3 + 64) = v31;
  v32 = v31 & 0xFDFFFFFF | ((*(*(*(this + 32) + 17800) + 2752) & 1) << 25);
  *(v3 + 64) = v32;
  *(v3 + 64) = v32 & 0xFBFFFFFF | ((*(*(*(this + 32) + 17800) + 2756) & 1) << 26);
  *(v3 + 68) = 0;
  if (*(v4 + 60))
  {
    v33 = *(v4 + 69) & 0x7F;
    *(v3 + 68) = v33;
    v34 = v33 & 0xFFFFC07F | ((*(v4 + 68) & 0x7F) << 7);
    *(v3 + 68) = v34;
    v35 = v34 & 0xFFE03FFF | ((*(v4 + 67) & 0x7F) << 14);
    *(v3 + 68) = v35;
    v36 = v35 & 0xF01FFFFF | ((*(v4 + 66) & 0x7F) << 21);
    *(v3 + 68) = v36;
    *(v3 + 68) = v36 & 0x8FFFFFFF | ((*(v4 + 59) & 7) << 28);
    v37 = *(v4 + 73) & 0x7F;
    *(v3 + 72) = v37;
    v38 = v37 & 0xFFFFC07F | ((*(v4 + 72) & 0x7F) << 7);
    *(v3 + 72) = v38;
    v39 = v38 & 0xFFF03FFF | ((*(v4 + 58) & 0x3F) << 14);
  }

  else
  {
    *(v3 + 68) = (*(v4 + 59) & 7) << 28;
    v39 = (*(v4 + 58) & 0x3F) << 14;
  }

  v40 = 0;
  v363 = 1 << v362;
  v360 = v6;
  v358 = 1 << v362 << v6;
  *(v3 + 72) = v39;
  *(v3 + 76) = 0;
  v41 = *(v4 + 77) & 0x1F;
  *(v3 + 76) = v41;
  v42 = v41 & 0xFFFFFC1F | (32 * (*(v4 + 76) & 0x1F));
  *(v3 + 76) = v42;
  v43 = v42 & 0xFFFF83FF | ((*(v4 + 75) & 0x1F) << 10);
  *(v3 + 76) = v43;
  *(v3 + 76) = v43 | (*(v4 + 74) << 15);
  v44 = v3 + 80;
  v45 = (v4 + 208);
  v46 = (v4 + 242);
  do
  {
    v47 = *(v4 + 78);
    *(v44 + 4 * v40) = 0;
    if (v47)
    {
      v48 = *v45 != 0;
      *(v44 + 4 * v40) = v48;
      v49 = v48 | (8 * (*(v45 - 1) != 0));
    }

    else
    {
      v49 = 0;
    }

    *(v44 + 4 * v40) = v49;
    v50 = v49 & 0xFFFFFFF9 | (2 * (*v46 & 3));
    *(v44 + 4 * v40) = v50;
    if (v47)
    {
      if (*(v45 - 2))
      {
        *(v44 + 4 * v40) = v50 | 0x800;
        v51 = v50 & 0xFFFFF00F | 0x800 | (16 * (*(v46 - 1) & 0x7F));
      }

      else
      {
        v51 = v50 & 0xFFFFF00F;
      }

      *(v44 + 4 * v40) = v51;
      if (*(v45 - 3))
      {
        v52 = v51 | 0x200000;
        *(v44 + 4 * v40) = v52;
        v53 = (*(v46 - 2) & 0x1FF) << 12;
        goto LABEL_25;
      }
    }

    else
    {
      v51 = v50 & 0xFFFFF00F;
    }

    v53 = 0;
    v52 = v51 & 0xFFDFFFFF;
LABEL_25:
    *(v44 + 4 * v40++) = v52 & 0xFFE00FFF | v53;
    v45 += 4;
    v46 += 4;
  }

  while (v40 != 8);
  *(v3 + 152) = 0x20000;
  v364 = v4;
  v356 = v5;
  if (v5)
  {
    v357 = 8;
  }

  else
  {
    v359 = v3;
    v54 = (v3 + 112);
    v55 = 2208;
    v357 = 3;
    v56 = MEMORY[0x277D86220];
    do
    {
      v54[11] = 0x1000000;
      *v54 = 0;
      v57 = **(*(this + 32) + 8 * v55) - 1;
      *v54 = v57;
      *v54 = (v57 | (*(*(*(this + 32) + 8 * v55) + 4) << 16)) - 0x10000;
      v54[3] = 0;
      v58 = ((**(*(this + 32) + 8 * v55) << 14) / *(v4 + 108));
      v54[3] = v58;
      v59 = v58 | (((*(*(*(this + 32) + 8 * v55) + 4) << 14) / *(v4 + 112)) << 16);
      v54[3] = v59;
      if ((v58 - 1024) >= 0x7C01 && os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "populatePictureRegisters";
        WORD6(buf[0]) = 1024;
        *(buf + 14) = 552;
        _os_log_impl(&dword_277606000, v56, OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
        v59 = v54[3];
      }

      if ((v59 - 0x4000000) >= 0x7C010000 && os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "populatePictureRegisters";
        WORD6(buf[0]) = 1024;
        *(buf + 14) = 553;
        _os_log_impl(&dword_277606000, v56, OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
      }

      ++v55;
      ++v54;
      v4 = v364;
    }

    while (v55 != 2211);
    v3 = v359;
  }

  *(v3 + 144) = 0;
  v60 = *(v4 + 2672);
  *(v3 + 144) = v60;
  *(v3 + 144) = v60 | (*(v4 + 2676) << 16);
  v61 = *(v4 + 2680);
  *(v3 + 148) = v61;
  *(v3 + 148) = v61 | (*(v4 + 2684) << 16);
  v62 = this + 464;
  v63 = -60;
  do
  {
    *(*(this + 33) + v63 + 228) = 0;
    v64 = *(this + 33) + v63;
    v65 = *(v64 + 228);
    *(v64 + 228) = 0;
    *(*(this + 33) + v63 + 228) ^= 0xFFFFFF00;
    v66 = *(this + 33) + v63;
    v67 = *(v66 + 228);
    *(v66 + 228) = v65;
    if (*v62 || *(v62 + 38) || *(v62 + 39))
    {
      result = CAHDec::addToPatcherList(this, v62, v63 + 228, 0, 0xFFFFFFFFLL, 8, v67, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + v63 + 288) = 0;
    *(*(this + 33) + v63 + 288) = *(*(this + 33) + v63 + 288) & 0x800001FF | (((*(this + 1132) >> 9) & 0x3FFFFF) << 9);
    *(*(this + 33) + v63 + 500) = 0;
    v69 = *(this + 33) + v63;
    v70 = *(v69 + 500);
    *(v69 + 500) = 0;
    *(*(this + 33) + v63 + 500) ^= 0x3FFu;
    v71 = *(this + 33) + v63;
    v72 = *(v71 + 500);
    *(v71 + 500) = v70;
    if (*v62 || *(v62 + 38) || *(v62 + 39))
    {
      result = CAHDec::addToPatcherList(this, v62, v63 + 500, 0, 0x3FFFFFFFFFFLL, 32, v72, 4);
      if (result)
      {
        return result;
      }
    }

    v62 += 176;
    v63 += 4;
  }

  while (v63);
  *(*(this + 33) + 288) = 0;
  v73 = *(this + 33);
  v74 = *(v73 + 288);
  *(v73 + 288) = 0;
  *(*(this + 33) + 288) ^= 0xFFFFFF00;
  v75 = *(this + 33);
  v76 = *(v75 + 288);
  *(v75 + 288) = v74;
  v77 = *(this + 32);
  if (*(v77 + 5072) || *(v77 + 5224) || *(v77 + 5228))
  {
    result = CAHDec::addToPatcherList(this, (v77 + 5072), 288, 0, 0xFFFFFFFFLL, 8, v76, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 500) = 0;
  v78 = *(this + 33);
  v79 = *(v78 + 500);
  *(v78 + 500) = 0;
  *(*(this + 33) + 500) ^= 0x3FFu;
  v80 = *(this + 33);
  v81 = *(v80 + 500);
  *(v80 + 500) = v79;
  v82 = *(this + 32);
  if (*(v82 + 5072) || *(v82 + 5224) || *(v82 + 5228))
  {
    result = CAHDec::addToPatcherList(this, (v82 + 5072), 500, 0, 0x3FFFFFFFFFFLL, 32, v81, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 292) = 0;
  *(*(this + 33) + 504) = 0;
  if ((*(v3 + 50) & 8) != 0)
  {
    v83 = *(this + 33);
    v84 = *(*(this + 32) + 2680);
    v366 = 0u;
    v367 = 0u;
    memset(buf, 0, sizeof(buf));
    v85 = (*(v83 + 16) & 0xF) << 9;
    *&buf[0] = v84;
    v86 = *(v83 + 292);
    *(v83 + 292) = 0;
    *(*(this + 33) + 292) ^= 0xFFFFFF00;
    v87 = *(this + 33);
    v88 = *(v87 + 292);
    *(v87 + 292) = v86;
    if (!v84)
    {
      goto LABEL_67;
    }

    result = CAHDec::addToPatcherList(this, buf, 292, v85, 0xFFFFFFFFLL, 8, v88, 4);
    if (result)
    {
      return result;
    }

    v89 = !*&buf[0] && DWORD2(v366) == 0;
    v90 = v89 && HIDWORD(v366) == 0;
    LODWORD(v84) = !v90;
LABEL_67:
    v91 = *(this + 33);
    v92 = *(v91 + 504);
    *(v91 + 504) = 0;
    *(*(this + 33) + 504) ^= 0x3FFu;
    v93 = *(this + 33);
    v94 = *(v93 + 504);
    *(v93 + 504) = v92;
    if (v84)
    {
      result = CAHDec::addToPatcherList(this, buf, 504, v85, 0x3FFFFFFFFFFLL, 32, v94, 4);
      if (result)
      {
        return result;
      }
    }
  }

  *(*(this + 33) + 344) = 0;
  v95 = *(this + 33);
  v96 = *(v95 + 344);
  *(v95 + 344) = 0;
  *(*(this + 33) + 344) ^= 0xFFFFFF00;
  v97 = *(this + 33);
  v98 = *(v97 + 344);
  *(v97 + 344) = v96;
  if (*(this + 454) || *(this + 946) || *(this + 947))
  {
    result = CAHDec::addToPatcherList(this, this + 454, 344, 0, 0xFFFFFFFFLL, 8, v98, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 556) = 0;
  v99 = *(this + 33);
  v100 = *(v99 + 556);
  *(v99 + 556) = 0;
  *(*(this + 33) + 556) ^= 0x3FFu;
  v101 = *(this + 33);
  v102 = *(v101 + 556);
  *(v101 + 556) = v100;
  if (*(this + 454) || *(this + 946) || *(this + 947))
  {
    result = CAHDec::addToPatcherList(this, this + 454, 556, 0, 0x3FFFFFFFFFFLL, 32, v102, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 296) = 0;
  v103 = *(this + 33);
  v104 = *(v103 + 296);
  *(v103 + 296) = 0;
  *(*(this + 33) + 296) ^= 0xFFFFFF00;
  v105 = *(this + 33);
  v106 = *(v105 + 296);
  *(v105 + 296) = v104;
  if (*(this + 410) || *(this + 858) || *(this + 859))
  {
    result = CAHDec::addToPatcherList(this, this + 410, 296, 0, 0xFFFFFFFFLL, 8, v106, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 508) = 0;
  v107 = *(this + 33);
  v108 = *(v107 + 508);
  *(v107 + 508) = 0;
  *(*(this + 33) + 508) ^= 0x3FFu;
  v109 = *(this + 33);
  v110 = *(v109 + 508);
  *(v109 + 508) = v108;
  if (*(this + 410) || *(this + 858) || *(this + 859))
  {
    result = CAHDec::addToPatcherList(this, this + 410, 508, 0, 0x3FFFFFFFFFFLL, 32, v110, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 300) = 0;
  v111 = *(this + 33);
  v112 = *(v111 + 300);
  *(v111 + 300) = 0;
  *(*(this + 33) + 300) ^= 0xFFFFFF00;
  v113 = *(this + 33);
  v114 = *(v113 + 300);
  *(v113 + 300) = v112;
  if (*(this + 432) || *(this + 902) || *(this + 903))
  {
    result = CAHDec::addToPatcherList(this, this + 432, 300, 0, 0xFFFFFFFFLL, 8, v114, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 512) = 0;
  v115 = *(this + 33);
  v116 = *(v115 + 512);
  *(v115 + 512) = 0;
  *(*(this + 33) + 512) ^= 0x3FFu;
  v117 = *(this + 33);
  v118 = *(v117 + 512);
  *(v117 + 512) = v116;
  if (*(this + 432) || *(this + 902) || *(this + 903))
  {
    result = CAHDec::addToPatcherList(this, this + 432, 512, 0, 0x3FFFFFFFFFFLL, 32, v118, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 304) = 0;
  *(*(this + 33) + 516) = 0;
  *(*(this + 33) + 308) = 0;
  v119 = *(this + 33);
  v120 = *(v119 + 308);
  *(v119 + 308) = 0;
  *(*(this + 33) + 308) ^= 0xFFFFFF00;
  v121 = *(this + 33);
  v122 = *(v121 + 308);
  *(v121 + 308) = v120;
  if (*(this + 476) || *(this + 990) || *(this + 991))
  {
    result = CAHDec::addToPatcherList(this, this + 476, 308, 0, 0xFFFFFFFFLL, 8, v122, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 520) = 0;
  v123 = *(this + 33);
  v124 = *(v123 + 520);
  *(v123 + 520) = 0;
  *(*(this + 33) + 520) ^= 0x3FFu;
  v125 = *(this + 33);
  v126 = *(v125 + 520);
  *(v125 + 520) = v124;
  if (*(this + 476) || *(this + 990) || *(this + 991))
  {
    result = CAHDec::addToPatcherList(this, this + 476, 520, 0, 0x3FFFFFFFFFFLL, 32, v126, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 312) = 0;
  v127 = *(this + 33);
  v128 = *(v127 + 312);
  *(v127 + 312) = 0;
  *(*(this + 33) + 312) ^= 0xFFFFFF00;
  v129 = *(this + 33);
  v130 = *(v129 + 312);
  *(v129 + 312) = v128;
  if (*(this + 498) || *(this + 1034) || *(this + 1035))
  {
    result = CAHDec::addToPatcherList(this, this + 498, 312, 0, 0xFFFFFFFFLL, 8, v130, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 524) = 0;
  v131 = *(this + 33);
  v132 = *(v131 + 524);
  *(v131 + 524) = 0;
  *(*(this + 33) + 524) ^= 0x3FFu;
  v133 = *(this + 33);
  v134 = *(v133 + 524);
  *(v133 + 524) = v132;
  if (*(this + 498) || *(this + 1034) || *(this + 1035))
  {
    result = CAHDec::addToPatcherList(this, this + 498, 524, 0, 0x3FFFFFFFFFFLL, 32, v134, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 316) = 0;
  *(*(this + 33) + 528) = 0;
  v135 = *(this + 33);
  v136 = *(v135 + 316);
  *(v135 + 316) = 0;
  *(*(this + 33) + 316) ^= 0xFFFFFF00;
  v137 = *(this + 33);
  v138 = *(v137 + 316);
  *(v137 + 316) = v136;
  if (*(this + 520) || *(this + 1078) || *(this + 1079))
  {
    result = CAHDec::addToPatcherList(this, this + 520, 316, 0, 0xFFFFFFFFLL, 8, v138, 4);
    if (result)
    {
      return result;
    }
  }

  v139 = *(this + 33);
  v140 = *(v139 + 528);
  *(v139 + 528) = 0;
  *(*(this + 33) + 528) ^= 0x3FFu;
  v141 = *(this + 33);
  v142 = *(v141 + 528);
  *(v141 + 528) = v140;
  if (*(this + 520) || *(this + 1078) || *(this + 1079))
  {
    result = CAHDec::addToPatcherList(this, this + 520, 528, 0, 0x3FFFFFFFFFFLL, 32, v142, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 320) = 0;
  v143 = *(this + 33);
  v144 = *(v143 + 320);
  *(v143 + 320) = 0;
  *(*(this + 33) + 320) ^= 0xFFFFFF00;
  v145 = *(this + 33);
  v146 = *(v145 + 320);
  *(v145 + 320) = v144;
  if (*(this + 542) || *(this + 1122) || *(this + 1123))
  {
    result = CAHDec::addToPatcherList(this, this + 542, 320, 0, 0xFFFFFFFFLL, 8, v146, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 532) = 0;
  v147 = *(this + 33);
  v148 = *(v147 + 532);
  *(v147 + 532) = 0;
  *(*(this + 33) + 532) ^= 0x3FFu;
  v149 = *(this + 33);
  v150 = *(v149 + 532);
  *(v149 + 532) = v148;
  if (*(this + 542) || *(this + 1122) || *(this + 1123))
  {
    result = CAHDec::addToPatcherList(this, this + 542, 532, 0, 0x3FFFFFFFFFFLL, 32, v150, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 324) = 0;
  v151 = *(this + 33);
  v152 = *(v151 + 324);
  *(v151 + 324) = 0;
  *(*(this + 33) + 324) ^= 0xFFFFFF00;
  v153 = *(this + 33);
  v154 = *(v153 + 324);
  *(v153 + 324) = v152;
  v155 = (*(this + 32) + 176 * *(*(this + 32) + 17808) + 2960);
  if (*v155 || *(*(this + 32) + 176 * *(*(this + 32) + 17808) + 3112) || *(*(this + 32) + 176 * *(*(this + 32) + 17808) + 3116))
  {
    result = CAHDec::addToPatcherList(this, v155, 324, 0, 0xFFFFFFFFLL, 8, v154, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 536) = 0;
  v156 = *(this + 33);
  v157 = *(v156 + 536);
  *(v156 + 536) = 0;
  *(*(this + 33) + 536) ^= 0x3FFu;
  v158 = *(this + 33);
  v159 = *(v158 + 536);
  *(v158 + 536) = v157;
  v160 = (*(this + 32) + 176 * *(*(this + 32) + 17808) + 2960);
  if (*v160 || *(*(this + 32) + 176 * *(*(this + 32) + 17808) + 3112) || *(*(this + 32) + 176 * *(*(this + 32) + 17808) + 3116))
  {
    result = CAHDec::addToPatcherList(this, v160, 536, 0, 0x3FFFFFFFFFFLL, 32, v159, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 328) = 0;
  v161 = *(this + 33);
  v162 = *(v161 + 328);
  *(v161 + 328) = 0;
  *(*(this + 33) + 328) ^= 0xFFFFFF00;
  v163 = *(this + 33);
  v164 = *(v163 + 328);
  *(v163 + 328) = v162;
  v165 = (*(this + 32) + 176 * *(*(this + 32) + 5964) + 3664);
  if (*v165 || *(*(this + 32) + 176 * *(*(this + 32) + 5964) + 3816) || *(*(this + 32) + 176 * *(*(this + 32) + 5964) + 3820))
  {
    result = CAHDec::addToPatcherList(this, v165, 328, 0, 0xFFFFFFFFLL, 8, v164, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 540) = 0;
  v166 = *(this + 33);
  v167 = *(v166 + 540);
  *(v166 + 540) = 0;
  *(*(this + 33) + 540) ^= 0x3FFu;
  v168 = *(this + 33);
  v169 = *(v168 + 540);
  *(v168 + 540) = v167;
  v170 = (*(this + 32) + 176 * *(*(this + 32) + 5964) + 3664);
  if (*v170 || *(*(this + 32) + 176 * *(*(this + 32) + 5964) + 3816) || *(*(this + 32) + 176 * *(*(this + 32) + 5964) + 3820))
  {
    result = CAHDec::addToPatcherList(this, v170, 540, 0, 0x3FFFFFFFFFFLL, 32, v169, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 332) = 0;
  v171 = *(this + 33);
  v172 = *(v171 + 332);
  *(v171 + 332) = 0;
  *(*(this + 33) + 332) ^= 0xFFFFFF00;
  v173 = *(this + 33);
  v174 = *(v173 + 332);
  *(v173 + 332) = v172;
  v175 = (*(this + 32) + 176 * *(*(this + 32) + 5960) + 3664);
  if (*v175 || *(*(this + 32) + 176 * *(*(this + 32) + 5960) + 3816) || *(*(this + 32) + 176 * *(*(this + 32) + 5960) + 3820))
  {
    result = CAHDec::addToPatcherList(this, v175, 332, 0, 0xFFFFFFFFLL, 8, v174, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 544) = 0;
  v176 = *(this + 33);
  v177 = *(v176 + 544);
  *(v176 + 544) = 0;
  *(*(this + 33) + 544) ^= 0x3FFu;
  v178 = *(this + 33);
  v179 = *(v178 + 544);
  *(v178 + 544) = v177;
  v180 = (*(this + 32) + 176 * *(*(this + 32) + 5960) + 3664);
  if (*v180 || *(*(this + 32) + 176 * *(*(this + 32) + 5960) + 3816) || *(*(this + 32) + 176 * *(*(this + 32) + 5960) + 3820))
  {
    result = CAHDec::addToPatcherList(this, v180, 544, 0, 0x3FFFFFFFFFFLL, 32, v179, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 336) = 0;
  v181 = *(this + 33);
  v182 = *(v181 + 336);
  *(v181 + 336) = 0;
  *(*(this + 33) + 336) ^= 0xFFFFFF00;
  v183 = *(this + 33);
  v184 = *(v183 + 336);
  *(v183 + 336) = v182;
  v185 = (*(this + 32) + 176 * *(*(this + 32) + 5956) + 5248);
  if (*v185 || *(*(this + 32) + 176 * *(*(this + 32) + 5956) + 5400) || *(*(this + 32) + 176 * *(*(this + 32) + 5956) + 5404))
  {
    result = CAHDec::addToPatcherList(this, v185, 336, 0, 0xFFFFFFFFLL, 8, v184, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 548) = 0;
  v186 = *(this + 33);
  v187 = *(v186 + 548);
  *(v186 + 548) = 0;
  *(*(this + 33) + 548) ^= 0x3FFu;
  v188 = *(this + 33);
  v189 = *(v188 + 548);
  *(v188 + 548) = v187;
  v190 = (*(this + 32) + 176 * *(*(this + 32) + 5956) + 5248);
  if (*v190 || *(*(this + 32) + 176 * *(*(this + 32) + 5956) + 5400) || *(*(this + 32) + 176 * *(*(this + 32) + 5956) + 5404))
  {
    result = CAHDec::addToPatcherList(this, v190, 548, 0, 0x3FFFFFFFFFFLL, 32, v189, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 340) = 0;
  v191 = *(this + 33);
  v192 = *(v191 + 340);
  *(v191 + 340) = 0;
  *(*(this + 33) + 340) ^= 0xFFFFFF00;
  v193 = *(this + 33);
  v194 = *(v193 + 340);
  *(v193 + 340) = v192;
  v195 = (*(this + 32) + 176 * *(*(this + 32) + 5952) + 5248);
  if (*v195 || *(*(this + 32) + 176 * *(*(this + 32) + 5952) + 5400) || *(*(this + 32) + 176 * *(*(this + 32) + 5952) + 5404))
  {
    result = CAHDec::addToPatcherList(this, v195, 340, 0, 0xFFFFFFFFLL, 8, v194, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 552) = 0;
  v196 = *(this + 33);
  v197 = *(v196 + 552);
  *(v196 + 552) = 0;
  *(*(this + 33) + 552) ^= 0x3FFu;
  v198 = *(this + 33);
  v199 = *(v198 + 552);
  *(v198 + 552) = v197;
  v200 = (*(this + 32) + 176 * *(*(this + 32) + 5952) + 5248);
  if (*v200 || *(*(this + 32) + 176 * *(*(this + 32) + 5952) + 5400) || *(*(this + 32) + 176 * *(*(this + 32) + 5952) + 5404))
  {
    result = CAHDec::addToPatcherList(this, v200, 552, 0, 0x3FFFFFFFFFFLL, 32, v199, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 348) = 0;
  *(*(this + 33) + 560) = 0;
  *(*(this + 33) + 352) = 0;
  *(*(this + 33) + 564) = 0;
  *(*(this + 33) + 356) = 0;
  *(*(this + 33) + 568) = 0;
  *(*(this + 33) + 360) = 0;
  *(*(this + 33) + 572) = 0;
  v201 = *(this + 33);
  v202 = *(v201 + 352);
  *(v201 + 352) = 0;
  *(*(this + 33) + 352) ^= 0xFFFFFF80;
  v203 = *(this + 33);
  v204 = *(v203 + 352);
  *(v203 + 352) = v202;
  v205 = *(*(this + 32) + 376 * v355 + 5976);
  if (*v205 || *(v205 + 152) || *(v205 + 156))
  {
    result = CAHDec::addToPatcherList(this, v205, 352, *(v205 + 52), 0xFFFFFFFFLL, 7, v204, 4);
    if (result)
    {
      return result;
    }
  }

  v206 = *(this + 33);
  v207 = *(v206 + 564);
  *(v206 + 564) = 0;
  *(*(this + 33) + 564) ^= 0x3FFu;
  v208 = *(this + 33);
  v209 = *(v208 + 564);
  *(v208 + 564) = v207;
  v210 = *(*(this + 32) + 376 * v355 + 5976);
  if (*v210 || *(v210 + 152) || *(v210 + 156))
  {
    result = CAHDec::addToPatcherList(this, v210, 564, *(v210 + 52), 0x3FFFFFFFFFFLL, 32, v209, 4);
    if (result)
    {
      return result;
    }
  }

  v211 = *(this + 33);
  v212 = *(v211 + 360);
  *(v211 + 360) = 0;
  *(*(this + 33) + 360) ^= 0xFFFFFF80;
  v213 = *(this + 33);
  v214 = *(v213 + 360);
  *(v213 + 360) = v212;
  v215 = *(*(this + 32) + 376 * v355 + 5976);
  if (*v215 || *(v215 + 152) || *(v215 + 156))
  {
    result = CAHDec::addToPatcherList(this, v215, 360, *(v215 + 56), 0xFFFFFFFFLL, 7, v214, 4);
    if (result)
    {
      return result;
    }
  }

  v216 = *(this + 33);
  v217 = *(v216 + 572);
  *(v216 + 572) = 0;
  *(*(this + 33) + 572) ^= 0x3FFu;
  v218 = *(this + 33);
  v219 = *(v218 + 572);
  *(v218 + 572) = v217;
  v220 = *(this + 32);
  v221 = *(v220 + 376 * v355 + 5976);
  if (*v221 || *(v221 + 152) || *(v221 + 156))
  {
    result = CAHDec::addToPatcherList(this, v221, 572, *(v221 + 56), 0x3FFFFFFFFFFLL, 32, v219, 4);
    if (result)
    {
      return result;
    }

    v220 = *(this + 32);
  }

  v222 = *(v220 + 2648);
  v223 = *(this + 33);
  v224 = *(v223 + 348);
  *(v223 + 348) = 0;
  *(*(this + 33) + 348) ^= 0xFFFFFF80;
  v225 = *(this + 33);
  v226 = *(v225 + 348);
  *(v225 + 348) = v224;
  v227 = *(this + 32) + 5968;
  if (v222 == 1)
  {
    v228 = *(v227 + 376 * v355 + 8);
    if (!*v228 && !*(v228 + 152) && !*(v228 + 156) || (result = CAHDec::addToPatcherList(this, v228, 348, *(v228 + 64), 0xFFFFFFFFLL, 7, v226, 4), !result))
    {
      if ((v229 = *(this + 33), v230 = *(v229 + 560), *(v229 + 560) = 0, *(*(this + 33) + 560) ^= 0x3FFu, v231 = *(this + 33), v232 = *(v231 + 560), *(v231 + 560) = v230, v233 = *(*(this + 32) + 376 * v355 + 5976), !*v233) && !*(v233 + 152) && !*(v233 + 156) || (result = CAHDec::addToPatcherList(this, v233, 560, *(v233 + 64), 0x3FFFFFFFFFFLL, 32, v232, 4), !result))
      {
        if ((v234 = *(this + 33), v235 = *(v234 + 356), *(v234 + 356) = 0, *(*(this + 33) + 356) ^= 0xFFFFFF80, v236 = *(this + 33), v237 = *(v236 + 356), *(v236 + 356) = v235, v238 = *(*(this + 32) + 376 * v355 + 5976), !*v238) && !*(v238 + 152) && !*(v238 + 156) || (result = CAHDec::addToPatcherList(this, v238, 356, *(v238 + 68), 0xFFFFFFFFLL, 7, v237, 4), !result))
        {
          v239 = *(this + 33);
          v240 = *(v239 + 568);
          *(v239 + 568) = 0;
          *(*(this + 33) + 568) ^= 0x3FFu;
          v241 = *(this + 33);
          v242 = *(v241 + 568);
          *(v241 + 568) = v240;
          v243 = *(*(this + 32) + 376 * v355 + 5976);
          if (!*v243 && !*(v243 + 152) && !*(v243 + 156))
          {
            goto LABEL_211;
          }

          v244 = *(v243 + 68);
          v245 = this;
LABEL_210:
          result = CAHDec::addToPatcherList(v245, v243, 568, v244, 0x3FFFFFFFFFFLL, 32, v242, 4);
          if (!result)
          {
            goto LABEL_211;
          }
        }
      }
    }

    return result;
  }

  v246 = v227 + 376 * v355;
  v248 = *(v246 + 24);
  v247 = v246 + 24;
  if (v248 || *(v247 + 152) || *(v247 + 156))
  {
    result = CAHDec::addToPatcherList(this, v247, 348, 0, 0xFFFFFFFFLL, 7, v226, 4);
    if (result)
    {
      return result;
    }
  }

  v249 = *(this + 33);
  v250 = *(v249 + 560);
  *(v249 + 560) = 0;
  *(*(this + 33) + 560) ^= 0x3FFu;
  v251 = *(this + 33);
  v252 = *(v251 + 560);
  *(v251 + 560) = v250;
  v253 = (*(this + 32) + 376 * v355 + 5992);
  if (*v253 || *(*(this + 32) + 376 * v355 + 6144) || *(*(this + 32) + 376 * v355 + 6148))
  {
    result = CAHDec::addToPatcherList(this, v253, 560, 0, 0x3FFFFFFFFFFLL, 32, v252, 4);
    if (result)
    {
      return result;
    }
  }

  v254 = *(this + 33);
  v255 = *(v254 + 356);
  *(v254 + 356) = 0;
  *(*(this + 33) + 356) ^= 0xFFFFFF80;
  v256 = *(this + 33);
  v257 = *(v256 + 356);
  *(v256 + 356) = v255;
  v258 = (*(this + 32) + 376 * v355 + 6168);
  if (*v258 || *(*(this + 32) + 376 * v355 + 6320) || *(*(this + 32) + 376 * v355 + 6324))
  {
    result = CAHDec::addToPatcherList(this, v258, 356, 0, 0xFFFFFFFFLL, 7, v257, 4);
    if (result)
    {
      return result;
    }
  }

  v259 = *(this + 33);
  v260 = *(v259 + 568);
  *(v259 + 568) = 0;
  *(*(this + 33) + 568) ^= 0x3FFu;
  v261 = *(this + 33);
  v242 = *(v261 + 568);
  *(v261 + 568) = v260;
  v243 = *(this + 32) + 376 * v355 + 6168;
  if (*v243 || *(*(this + 32) + 376 * v355 + 6320) || *(*(this + 32) + 376 * v355 + 6324))
  {
    v245 = this;
    v244 = 0;
    goto LABEL_210;
  }

LABEL_211:
  if (!v356)
  {
    v262 = 0;
    v263 = 17664;
    do
    {
      v264 = *(*(*(this + 32) + v263) + 40);
      *(*(this + 33) + v262 + 376) = 0;
      *(*(this + 33) + v262 + 576) = 0;
      *(*(this + 33) + v262 + 388) = 0;
      *(*(this + 33) + v262 + 588) = 0;
      *(*(this + 33) + v262 + 400) = 0;
      *(*(this + 33) + v262 + 600) = 0;
      *(*(this + 33) + v262 + 412) = 0;
      *(*(this + 33) + v262 + 612) = 0;
      v265 = *(this + 33) + v262;
      v266 = *(v265 + 388);
      *(v265 + 388) = 0;
      *(*(this + 33) + v262 + 388) ^= 0xFFFFFF80;
      v267 = *(this + 33) + v262;
      v268 = *(v267 + 388);
      *(v267 + 388) = v266;
      v269 = *(v264 + 8);
      if (*v269 || *(v269 + 152) || *(v269 + 156))
      {
        result = CAHDec::addToPatcherList(this, v269, v262 + 388, *(v269 + 52), 0xFFFFFFFFLL, 7, v268, 4);
        if (result)
        {
          return result;
        }
      }

      v270 = *(this + 33) + v262;
      v271 = *(v270 + 588);
      *(v270 + 588) = 0;
      *(*(this + 33) + v262 + 588) ^= 0x3FFu;
      v272 = *(this + 33) + v262;
      v273 = *(v272 + 588);
      *(v272 + 588) = v271;
      v274 = *(v264 + 8);
      if (*v274 || *(v274 + 152) || *(v274 + 156))
      {
        result = CAHDec::addToPatcherList(this, v274, v262 + 588, *(v274 + 52), 0x3FFFFFFFFFFLL, 32, v273, 4);
        if (result)
        {
          return result;
        }
      }

      v275 = *(this + 33) + v262;
      v276 = *(v275 + 412);
      *(v275 + 412) = 0;
      *(*(this + 33) + v262 + 412) ^= 0xFFFFFF80;
      v277 = *(this + 33) + v262;
      v278 = *(v277 + 412);
      *(v277 + 412) = v276;
      v279 = *(v264 + 8);
      if (*v279 || *(v279 + 152) || *(v279 + 156))
      {
        result = CAHDec::addToPatcherList(this, v279, v262 + 412, *(v279 + 56), 0xFFFFFFFFLL, 7, v278, 4);
        if (result)
        {
          return result;
        }
      }

      v280 = *(this + 33) + v262;
      v281 = *(v280 + 612);
      *(v280 + 612) = 0;
      *(*(this + 33) + v262 + 612) ^= 0x3FFu;
      v282 = *(this + 33) + v262;
      v283 = *(v282 + 612);
      *(v282 + 612) = v281;
      v284 = *(v264 + 8);
      if (*v284 || *(v284 + 152) || *(v284 + 156))
      {
        result = CAHDec::addToPatcherList(this, v284, v262 + 612, *(v284 + 56), 0x3FFFFFFFFFFLL, 32, v283, 4);
        if (result)
        {
          return result;
        }
      }

      v285 = *(*(this + 32) + 2648);
      v286 = *(this + 33) + v262;
      v287 = *(v286 + 376);
      *(v286 + 376) = 0;
      *(*(this + 33) + v262 + 376) ^= 0xFFFFFF80;
      v288 = *(this + 33) + v262;
      v289 = *(v288 + 376);
      *(v288 + 376) = v287;
      if (v285 == 1)
      {
        v290 = *(v264 + 8);
        if (*v290 || *(v290 + 152) || *(v290 + 156))
        {
          result = CAHDec::addToPatcherList(this, v290, v262 + 376, *(v290 + 64), 0xFFFFFFFFLL, 7, v289, 4);
          if (result)
          {
            return result;
          }
        }

        v291 = *(this + 33) + v262;
        v292 = *(v291 + 576);
        *(v291 + 576) = 0;
        *(*(this + 33) + v262 + 576) ^= 0x3FFu;
        v293 = *(this + 33) + v262;
        v294 = *(v293 + 576);
        *(v293 + 576) = v292;
        v295 = *(v264 + 8);
        if (*v295 || *(v295 + 152) || *(v295 + 156))
        {
          result = CAHDec::addToPatcherList(this, v295, v262 | 0x240, *(v295 + 64), 0x3FFFFFFFFFFLL, 32, v294, 4);
          if (result)
          {
            return result;
          }
        }

        v296 = *(this + 33) + v262;
        v297 = *(v296 + 400);
        *(v296 + 400) = 0;
        *(*(this + 33) + v262 + 400) ^= 0xFFFFFF80;
        v298 = *(this + 33) + v262;
        v299 = *(v298 + 400);
        *(v298 + 400) = v297;
        v300 = *(v264 + 8);
        if (*v300 || *(v300 + 152) || *(v300 + 156))
        {
          result = CAHDec::addToPatcherList(this, v300, v262 | 0x190, *(v300 + 68), 0xFFFFFFFFLL, 7, v299, 4);
          if (result)
          {
            return result;
          }
        }

        v301 = *(this + 33) + v262;
        v302 = *(v301 + 600);
        *(v301 + 600) = 0;
        *(*(this + 33) + v262 + 600) ^= 0x3FFu;
        v303 = *(this + 33) + v262;
        v304 = *(v303 + 600);
        *(v303 + 600) = v302;
        v305 = *(v264 + 8);
        if (*v305 || *(v305 + 152) || *(v305 + 156))
        {
          v306 = *(v305 + 68);
          v307 = v262 + 600;
          v308 = this;
          goto LABEL_262;
        }
      }

      else
      {
        if (*(v264 + 24) || *(v264 + 176) || *(v264 + 180))
        {
          result = CAHDec::addToPatcherList(this, (v264 + 24), v262 + 376, 0, 0xFFFFFFFFLL, 7, v289, 4);
          if (result)
          {
            return result;
          }
        }

        v309 = *(this + 33) + v262;
        v310 = *(v309 + 576);
        *(v309 + 576) = 0;
        *(*(this + 33) + v262 + 576) ^= 0x3FFu;
        v311 = *(this + 33) + v262;
        v312 = *(v311 + 576);
        *(v311 + 576) = v310;
        if (*(v264 + 24) || *(v264 + 176) || *(v264 + 180))
        {
          result = CAHDec::addToPatcherList(this, (v264 + 24), v262 | 0x240, 0, 0x3FFFFFFFFFFLL, 32, v312, 4);
          if (result)
          {
            return result;
          }
        }

        v313 = *(this + 33) + v262;
        v314 = *(v313 + 400);
        *(v313 + 400) = 0;
        *(*(this + 33) + v262 + 400) ^= 0xFFFFFF80;
        v315 = *(this + 33) + v262;
        v316 = *(v315 + 400);
        *(v315 + 400) = v314;
        if (*(v264 + 200) || *(v264 + 352) || *(v264 + 356))
        {
          result = CAHDec::addToPatcherList(this, (v264 + 200), v262 | 0x190, 0, 0xFFFFFFFFLL, 7, v316, 4);
          if (result)
          {
            return result;
          }
        }

        v317 = *(this + 33) + v262;
        v318 = *(v317 + 600);
        *(v317 + 600) = 0;
        *(*(this + 33) + v262 + 600) ^= 0x3FFu;
        v319 = *(this + 33) + v262;
        v304 = *(v319 + 600);
        *(v319 + 600) = v318;
        if (*(v264 + 200) || *(v264 + 352) || *(v264 + 356))
        {
          v307 = v262 + 600;
          v308 = this;
          v305 = v264 + 200;
          v306 = 0;
LABEL_262:
          result = CAHDec::addToPatcherList(v308, v305, v307, v306, 0x3FFFFFFFFFFLL, 32, v304, 4);
          if (result)
          {
            return result;
          }
        }
      }

      v263 += 8;
      v262 += 4;
    }

    while (v262 != 12);
  }

  v320 = subWidth[*(*(*(this + 32) + 17800) + 4)];
  *(*(this + 33) + 424) = 0;
  *(*(this + 33) + 624) = 0;
  *(*(this + 33) + 428) = 0;
  *(*(this + 33) + 628) = 0;
  *(*(this + 33) + 432) = 0;
  *(*(this + 33) + 436) = 0;
  if (*(*(this + 32) + 2644))
  {
    v321 = *(this + 33);
    v322 = *(v321 + 424);
    *(v321 + 424) = 0;
    *(*(this + 33) + 424) ^= 0xFFFFFFC0;
    v323 = *(this + 33);
    v324 = *(v323 + 424);
    *(v323 + 424) = v322;
    v325 = *(*(this + 32) + 12008);
    if (*v325 || *(v325 + 152) || *(v325 + 156))
    {
      result = CAHDec::addToPatcherList(this, v325, 424, *(v325 + 52), 0xFFFFFFFFLL, 6, v324, 4);
      if (result)
      {
        return result;
      }
    }

    v326 = *(this + 33);
    v327 = *(v326 + 624);
    *(v326 + 624) = 0;
    *(*(this + 33) + 624) ^= 0x3FFu;
    v328 = *(this + 33);
    v329 = *(v328 + 624);
    *(v328 + 624) = v327;
    v330 = *(*(this + 32) + 12008);
    if (*v330 || *(v330 + 152) || *(v330 + 156))
    {
      result = CAHDec::addToPatcherList(this, v330, 624, *(v330 + 52), 0x3FFFFFFFFFFLL, 32, v329, 4);
      if (result)
      {
        return result;
      }
    }

    v331 = *(this + 33);
    v332 = *(v331 + 428);
    *(v331 + 428) = 0;
    *(*(this + 33) + 428) ^= 0xFFFFFFC0;
    v333 = *(this + 33);
    v334 = *(v333 + 428);
    *(v333 + 428) = v332;
    v335 = *(*(this + 32) + 12008);
    if (*v335 || *(v335 + 152) || *(v335 + 156))
    {
      result = CAHDec::addToPatcherList(this, v335, 428, *(v335 + 56), 0xFFFFFFFFLL, 6, v334, 4);
      if (result)
      {
        return result;
      }
    }

    v336 = *(this + 33);
    v337 = *(v336 + 628);
    *(v336 + 628) = 0;
    *(*(this + 33) + 628) ^= 0x3FFu;
    v338 = *(this + 33);
    v339 = *(v338 + 628);
    *(v338 + 628) = v337;
    v340 = *(this + 32);
    v341 = *(v340 + 12008);
    if (*v341 || *(v341 + 152) || *(v341 + 156))
    {
      result = CAHDec::addToPatcherList(this, v341, 628, *(v341 + 56), 0x3FFFFFFFFFFLL, 32, v339, 4);
      if (result)
      {
        return result;
      }

      v340 = *(this + 32);
    }

    if (*(v340 + 8) == 1)
    {
      *(*(this + 33) + 432) = *(*(this + 33) + 432) & 0xFFFC003F | (((*(*(v340 + 12008) + 76) >> 6) & 0xFFF) << 6);
      v342 = (*(*(this + 32) + 12008) + 80);
    }

    else
    {
      if (CAHDecIxoraLgh::getSWRStride(this, *(v3 + 148) + 1, *(v364 + 105) - 8, *(v364 + 105) - 8, v320))
      {
        return 0xFFFFFFFFLL;
      }

      *(*(this + 33) + 432) = *(*(this + 33) + 432) & 0xFFFC003F | (((*(this + 1135) >> 6) & 0xFFF) << 6);
      v342 = (this + 4544);
    }

    *(*(this + 33) + 436) = *(*(this + 33) + 436) & 0xFFF8003F | (((*v342 >> 6) & 0x1FFF) << 6);
  }

  if (v358 < 2)
  {
    v343 = *(this + 33);
    *(v343 + 632) = 65537;
    *(v343 + 636) = 0;
    *(v343 + 638) = *(v364 + 108) >> 6;
    *(v343 + 766) = 0;
    *(v343 + 768) = *(v364 + 112) >> 6;
    v344 = *(this + 32);
  }

  else
  {
    v343 = *(this + 33);
    *(v343 + 632) = v363;
    v344 = *(this + 32);
    if (v360 != 31)
    {
      if (v361 <= 1)
      {
        v345 = 1;
      }

      else
      {
        v345 = v361;
      }

      v346 = (*(v344 + 17800) + 2786);
      do
      {
        if ((*v346 & 1) == 0)
        {
          *(v343 + 766 + 2 * v357) = *(v346 - 26) >> 3;
        }

        v346 += 1792;
        --v345;
      }

      while (v345);
    }

    *(v343 + 634) = v361;
    if (v362 != 31)
    {
      if (v363 <= 1)
      {
        v347 = 1;
      }

      else
      {
        v347 = v363;
      }

      v348 = *(v344 + 17800) + 2768;
      do
      {
        if ((*(v348 + 18) & 1) == 0)
        {
          *(v343 + 636 + 2 * v357) = *v348 >> 3;
        }

        v348 += 28;
        --v347;
      }

      while (v347);
    }
  }

  if (*(v344 + 2360) != 1)
  {
    return 0;
  }

  *(v343 + 780) = *(v343 + 780) & 0xFFFFFFFE | *(v344 + 2508) & 1;
  if (*(v344 + 2508))
  {
    *(v343 + 788) = 0x10000000;
    *(v343 + 792) = *(v344 + 2368);
    *(v343 + 800) = 0;
    *(v343 + 796) = 0;
    *(v343 + 808) = *(v344 + 2372);
    v349 = *(v344 + 2404);
    *(v343 + 824) = *(v344 + 2388);
    *(v343 + 840) = v349;
  }

  *(*(this + 33) + 780) = *(*(this + 33) + 780) & 0xFFFFFFFD | (2 * (*(v344 + 2512) & 1));
  if (*(v344 + 2512))
  {
    *(v343 + 856) = 0;
    v350 = *(v344 + 2424);
    *(v343 + 856) = (*(v344 + 2424) & 1) << 22;
    v351 = ((*(v344 + 2420) & 1) << 23) | ((v350 & 1) << 22) | 0x20000000;
    *(v343 + 856) = v351;
    if (!*(v344 + 2364))
    {
      ++v351;
    }

    *(v343 + 856) = v351;
    v352 = *(v344 + 2428);
    v353 = *(v344 + 2460);
    *(v343 + 876) = *(v344 + 2444);
    *(v343 + 892) = v353;
    *(v343 + 860) = v352;
  }

  *(*(this + 33) + 780) = *(*(this + 33) + 780) & 0xFFFFFFFB | (4 * (*(v344 + 2516) & 1));
  *(*(this + 33) + 780) = *(*(this + 33) + 780) & 0xFFFFFFF7 | (8 * (*(v344 + 2520) & 1));
  *(*(this + 33) + 780) = *(*(this + 33) + 780) & 0xFFFFFFEF | (16 * (*(v344 + 2524) & 1));
  *(v343 + 912) = 0;
  v354 = *(v344 + 2476) == 2 ? 805306368 : 813694976;
  *(v343 + 912) = v354;
  memcpy((v343 + 916), (v344 + 2480), 4 * *(v344 + 2476));
  if (!*(v344 + 2516))
  {
    return 0;
  }

  result = 0;
  *(v344 + 2516) = 0;
  return result;
}

uint64_t CAHDecIxoraLgh::getSWRStride(CAHDecIxoraLgh *this, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(*(this + 32) + 2644);
  *(this + 4540) = 0;
  if (!v5)
  {
    return v5;
  }

  if (a3 <= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  v7 = (v6 + 1) & 0xFFFFFFFE;
  if (v5 == 1)
  {
    v8 = v7;
  }

  else
  {
    v8 = (v7 + 7) & 0xFFFFFFF8;
  }

  if (v8 <= 3)
  {
    if (v8)
    {
      if (v8 == 2)
      {
        v5 = 0;
        *(this + 1135) = (((2 * ((2863311531u * (a2 + 2)) >> 32)) & 0xFFFFFFFC) + 63) & 0xFFFFFFC0;
        v9 = (2 * ((2863311531u * (2 * a2 / a5 + 5)) >> 32)) & 0xFFFFFFF8;
LABEL_21:
        *(this + 1136) = (v9 + 63) & 0xFFFFFFC0;
        return v5;
      }

      goto LABEL_15;
    }

    v5 = 0;
    *(this + 1135) = (a2 + 63) & 0xFFFFFFC0;
    v10 = 2 * a2;
LABEL_19:
    v9 = v10 / a5;
    goto LABEL_21;
  }

  if (v8 == 4)
  {
    v5 = 0;
    *(this + 1135) = (((2 * ((3435973837u * (a2 + 4)) >> 32)) & 0xFFFFFFF8) + 63) & 0xFFFFFFC0;
    v9 = (2 * ((3435973837u * (2 * a2 / a5 + 9)) >> 32)) & 0xFFFFFFF0;
    goto LABEL_21;
  }

  if (v8 == 8)
  {
    v5 = 0;
    *(this + 1135) = (2 * a2 + 63) & 0xFFFFFFC0;
    v10 = 4 * a2;
    goto LABEL_19;
  }

LABEL_15:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "getSWRStride";
    v14 = 1024;
    v15 = v8 + 8;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): bad swr bit depth %d\n", &v12, 0x12u);
  }

  return 0xFFFFFFFFLL;
}

uint64_t CAHDecIxoraLgh::populateAvdWork(CAHDecIxoraLgh *this)
{
  v49 = *MEMORY[0x277D85DE8];
  v1 = *(this + 33);
  v2 = *(*(this + 32) + 17800);
  v39 = *(v2 + 16);
  v43 = 0;
  v44 = 0;
  v3 = *(v2 + 312);
  if (!v3)
  {
    LOWORD(v7) = 0;
    goto LABEL_41;
  }

  v40 = 0;
  v5 = 0;
  LODWORD(v6) = 0;
  v7 = 0;
  v8 = v1 + 4004;
  v9 = *(v2 + 316);
  v10 = 2786;
  v11 = v9;
  v38 = v8;
  while (1)
  {
    v37 = v10;
    if (v11)
    {
      break;
    }

LABEL_38:
    v10 = v37 + 1792;
    if (++v40 >= v3)
    {
      v1 = *(this + 33);
LABEL_41:
      result = 0;
      *(v1 + 26) = v7;
      *(v1 + 32) = 4004;
      return result;
    }
  }

  v12 = 0;
  while (1)
  {
    v13 = *(this + 32);
    v14 = *(v13 + 17800);
    v15 = v14 + v10;
    if (*(v14 + v10))
    {
      goto LABEL_37;
    }

    *(v8 + 4) = v7;
    *(v8 + 6) = 0;
    *(v8 + 10) = v5;
    if (!CAVDAvxDecoder::GetTileMemInfo(v13, v39 + *(v15 - 6), &v44, &v43))
    {
      return 0xFFFFFFFFLL;
    }

    v41 = v5;
    v42 = v7;
    v16 = v2;
    v17 = 36 * v6;
    v18 = v44;
    if (*v44 || *(v44 + 152) || *(v44 + 156))
    {
      v19 = v43;
      if (HIDWORD(v43) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v46 = "populateAvdWork";
        v47 = 1024;
        v48 = 1118;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v19 = v43;
      }

      result = CAHDec::addToPatcherList(this, v18, v17 + 4022, v19, 0x3FFFFFFFFFFLL, 32, -1, 2);
      if (result)
      {
        return result;
      }

      v18 = v44;
      if (*v44)
      {
        goto LABEL_17;
      }
    }

    if (*(v18 + 152) || *(v18 + 156))
    {
LABEL_17:
      v21 = v43;
      if (HIDWORD(v43) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v46 = "populateAvdWork";
        v47 = 1024;
        v48 = 1119;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v21 = v43;
      }

      result = CAHDec::addToPatcherList(this, v18, v17 + 4024, v21, 0xFFFFFFFFLL, 0, -1, 4);
      if (result)
      {
        return result;
      }
    }

    v22 = v14 + v10;
    *(v8 + 24) = *(v14 + v10 - 10);
    v23 = *(v15 - 26);
    v24 = v23 + 7;
    if (v23 >= 0)
    {
      v24 = *(v15 - 26);
    }

    v25 = *(v22 - 18);
    *(v8 + 28) = (v24 << 13) & 0xFFFF0000 | (v25 / 8);
    v26 = *(v22 - 22);
    v28 = v26 - 1;
    v27 = v26 < 1;
    v29 = v26 + 6;
    if (!v27)
    {
      v29 = v28;
    }

    v30 = (v29 << 13) & 0xFFFF0000;
    v31 = *(v22 - 14);
    v32 = v31 - 1;
    v27 = v31 < 1;
    v33 = v31 + 6;
    if (!v27)
    {
      v33 = v32;
    }

    *(v8 + 32) = v30 | (v33 >> 3);
    if (v23 + v25)
    {
      v34 = 4;
    }

    else
    {
      v34 = 5;
    }

    *(v8 + 12) = v34;
    v2 = v16;
    v3 = *(v16 + 312);
    v9 = *(v16 + 316);
    if (v12 == v9 && v40 == v3)
    {
      v36 = 5;
    }

    else
    {
      v36 = 4;
    }

    *(v8 + 14) = v36;
    v5 = v41 + 1;
    v7 = v42 + 1;
    v8 += 36;
    v6 = 0x8E38E38E38E38E39 * ((v8 - v38) >> 2);
LABEL_37:
    ++v12;
    v10 += 28;
    v11 = v9;
    if (v12 >= v9)
    {
      goto LABEL_38;
    }
  }
}

uint64_t CAHDecIxoraLgh::allocWorkBuf_SPS(CAHDecIxoraLgh *this, int *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = a2[1];
  v5 = *a2 + 31;
  if (*a2 < -31)
  {
    v5 = *a2 + 62;
  }

  v6 = v5 >> 5;
  v7 = v4 + 31;
  if (v4 < -31)
  {
    v7 = v4 + 62;
  }

  v8 = v7 >> 5;
  v9 = 32 - __clz(v6 - 1);
  if (v6 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = 32 - __clz(v8 - 1);
  if (v8 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = ((32 << (v12 + v10)) + 127) & 0xFFFFFF80;
  v14 = 2 * v3 + 62;
  if (2 * v3 >= -31)
  {
    v14 = 2 * v3 + 31;
  }

  v15 = v14 >> 5;
  v16 = v4 + 15;
  if (v4 < -15)
  {
    v16 = v4 + 30;
  }

  v17 = v16 >> 4;
  v18 = 32 - __clz(v15 - 1);
  if (v15 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = 32 - __clz(v17 - 1);
  if (v17 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  *(this + 1128) = v13;
  *(this + 1129) = ((8 << (v19 + v21)) + 127) & 0xFFFFFF80;
  v22 = ((v4 + 63) >> 6) * ((v3 + 63) >> 6);
  *(this + 1133) = 576 * v22;
  if (*(*(this + 32) + 2648))
  {
LABEL_28:
    v27 = 5248;
    v28 = 4;
    do
    {
      v29 = *(this + 1133);
      if (v29 && CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v27), v29, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_47;
        }

        v34 = 136315650;
        v35 = "allocWorkBuf_SPS";
        v36 = 1024;
        v37 = 1351;
        v38 = 2080;
        v39 = "MvColo";
        v32 = MEMORY[0x277D86220];
        goto LABEL_46;
      }

      v27 += 176;
      --v28;
    }

    while (v28);
    v30 = 24 * v22;
    *(this + 1137) = 24 * v22;
    v31 = 3664;
    if (!v30)
    {
      goto LABEL_34;
    }

LABEL_33:
    if (!CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v31), v30, 7, 1, 0))
    {
LABEL_34:
      while (v31 != 4896)
      {
        v30 = *(this + 1137);
        v31 += 176;
        if (v30)
        {
          goto LABEL_33;
        }
      }

      return 0;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    v34 = 136315650;
    v35 = "allocWorkBuf_SPS";
    v36 = 1024;
    v37 = 1356;
    v38 = 2080;
    v39 = "segMap";
    v32 = MEMORY[0x277D86220];
  }

  else
  {
    v23 = 14848;
    v24 = 16;
    while (1)
    {
      v25 = *(this + 1128);
      if (v25 && CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v23 - 2816), v25, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_47;
        }

        v34 = 136315650;
        v35 = "allocWorkBuf_SPS";
        v36 = 1024;
        v37 = 1335;
        v38 = 2080;
        v39 = "HdrY";
        v32 = MEMORY[0x277D86220];
        goto LABEL_46;
      }

      v26 = *(this + 1129);
      if (v26)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v23), v26, 7, 1, 0))
        {
          break;
        }
      }

      v23 += 176;
      if (!--v24)
      {
        goto LABEL_28;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    v34 = 136315650;
    v35 = "allocWorkBuf_SPS";
    v36 = 1024;
    v37 = 1340;
    v38 = 2080;
    v39 = "HdrC";
    v32 = MEMORY[0x277D86220];
  }

LABEL_46:
  _os_log_impl(&dword_277606000, v32, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v34, 0x1Cu);
LABEL_47:
  (*(*this + 144))(this);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecIxoraLgh::allocWorkBuf_PPS(CAHDecIxoraLgh *this, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = *(this + 32);
  v6 = *(v5 + 17800);
  v7 = *(v6 + 4);
  v8 = *(v6 + 100);
  v9 = (*(v6 + 105) + 1) & 0x1FE;
  if (v7 == 3)
  {
    v10 = 48;
  }

  else
  {
    v10 = 32;
  }

  if (!v7)
  {
    v10 = 16;
  }

  v12 = *(v6 + 108);
  v11 = *(v6 + 112);
  v13 = (v12 + 15) >> 4;
  v14 = ~(-1 << *(v6 + 96));
  v15 = v13 * ((v10 * v9) >> 3) + (v14 << 7);
  if (v15)
  {
    if (CAVDDecoder::allocAVDMem(v5, this + 205, v15, 7, 1, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = "allocWorkBuf_PPS";
        v25 = 1024;
        v26 = 1432;
        v27 = 2080;
        v28 = "IpAbove";
        v16 = MEMORY[0x277D86220];
LABEL_34:
        _os_log_impl(&dword_277606000, v16, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v23, 0x1Cu);
        goto LABEL_35;
      }

      goto LABEL_35;
    }

    v5 = *(this + 32);
  }

  v17 = 16 * v9;
  if ((192 << v8) + ((v12 + 7) >> 3) * 16 * v9 != 192)
  {
    if (CAVDDecoder::allocAVDMem(v5, this + 216, ((192 << v8) + ((v12 + 7) >> 3) * 16 * v9 - 192), 7, 1, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = "allocWorkBuf_PPS";
        v25 = 1024;
        v26 = 1435;
        v27 = 2080;
        v28 = "LfAbovePix";
        v16 = MEMORY[0x277D86220];
        goto LABEL_34;
      }

LABEL_35:
      (*(*this + 160))(this, 0);
      return 0xFFFFFFFFLL;
    }

    v5 = *(this + 32);
  }

  v18 = 288 * ((v12 + 63) >> 6) + (v14 << 7);
  if (v18)
  {
    if (CAVDDecoder::allocAVDMem(v5, this + 227, v18, 7, 1, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = "allocWorkBuf_PPS";
        v25 = 1024;
        v26 = 1441;
        v27 = 2080;
        v28 = "LfAboveInfo";
        v16 = MEMORY[0x277D86220];
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    v5 = *(this + 32);
  }

  v19 = (v11 + 7) >> 3;
  if (v19 * v17)
  {
    if (CAVDDecoder::allocAVDMem(v5, this + 238, (v19 * v17), 7, 1, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = "allocWorkBuf_PPS";
        v25 = 1024;
        v26 = 1447;
        v27 = 2080;
        v28 = "LfLeftPix";
        v16 = MEMORY[0x277D86220];
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    v5 = *(this + 32);
  }

  v20 = ((v11 + 63) >> 2) & 0x3FFFFFF0;
  if (v20)
  {
    if (CAVDDecoder::allocAVDMem(v5, this + 249, v20, 7, 1, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = "allocWorkBuf_PPS";
        v25 = 1024;
        v26 = 1455;
        v27 = 2080;
        v28 = "LfLeftInfo";
        v16 = MEMORY[0x277D86220];
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    v5 = *(this + 32);
  }

  if (CAVDDecoder::allocAVDMem(v5, this + 260, (24 * v13 + 30), 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315650;
      v24 = "allocWorkBuf_PPS";
      v25 = 1024;
      v26 = 1463;
      v27 = 2080;
      v28 = "SwLeftPix";
      v16 = MEMORY[0x277D86220];
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v22 = 192 * v9 + (v19 + 2) * (((v9 >> 1) << 8) | 8);
  if (!v22)
  {
    return 0;
  }

  result = CAVDDecoder::allocAVDMem(*(this + 32), this + 271, v22, 7, 1, 0);
  if (result)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    v23 = 136315650;
    v24 = "allocWorkBuf_PPS";
    v25 = 1024;
    v26 = 1469;
    v27 = 2080;
    v28 = "AZLeftPix";
    v16 = MEMORY[0x277D86220];
    goto LABEL_34;
  }

  return result;
}

uint64_t CAHDecIxoraLgh::freeWorkBuf_SPS(CAHDecIxoraLgh *this)
{
  result = *(this + 32);
  if (!*(result + 2648))
  {
    v3 = 14848;
    v4 = 16;
    do
    {
      v5 = (result + v3 - 2816);
      if (*v5)
      {
        CAVDDecoder::deallocAVDMem(result, v5);
        result = *(this + 32);
        *(result + v3 - 2816) = 0;
      }

      if (*(result + v3))
      {
        CAVDDecoder::deallocAVDMem(result, (result + v3));
        result = *(this + 32);
        *(result + v3) = 0;
      }

      v3 += 176;
      --v4;
    }

    while (v4);
  }

  v6 = 5248;
  v7 = 4;
  do
  {
    if (*(result + v6))
    {
      CAVDDecoder::deallocAVDMem(result, (result + v6));
      result = *(this + 32);
      *(result + v6) = 0;
    }

    v6 += 176;
    --v7;
  }

  while (v7);
  for (i = 3664; i != 5072; i += 176)
  {
    if (*(result + i))
    {
      CAVDDecoder::deallocAVDMem(result, (result + i));
      result = *(this + 32);
      *(result + i) = 0;
    }
  }

  return result;
}

uint64_t *CAHDecIxoraLgh::freeWorkBuf_PPS(uint64_t *this, void *a2)
{
  v2 = this;
  if (this[432])
  {
    this = CAVDDecoder::deallocAVDMem(this[32], this + 432);
    v2[432] = 0;
  }

  if (v2[454])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 454);
    v2[454] = 0;
  }

  if (v2[410])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 410);
    v2[410] = 0;
  }

  if (v2[476])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 476);
    v2[476] = 0;
  }

  if (v2[498])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 498);
    v2[498] = 0;
  }

  if (v2[520])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 520);
    v2[520] = 0;
  }

  if (v2[542])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 542);
    v2[542] = 0;
  }

  return this;
}

uint64_t CAHDecIxoraLgh::setVPInstrFifo(uint64_t this, int a2)
{
  v2 = 0;
  v3 = (this + 620);
  do
  {
    *v3 = 1;
    *(v3 - 39) = v2++;
    v3 += 44;
  }

  while (v2 != 15);
  *(this + 4528) = a2;
  return this;
}

CAHDecIxoraAvx *createIxoraAvxDecoder(void **a1)
{
  v2 = operator new(0x1690uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecIxoraAvx::CAHDecIxoraAvx(v2, a1);
  }

  return v3;
}

void CAHDecIxoraAvx::CAHDecIxoraAvx(CAHDecIxoraAvx *this, void **a2)
{
  CAHDec::CAHDec(this);
  *v4 = &unk_2886689A0;
  *(v4 + 256) = a2;
  *(v4 + 456) = 198144;
  *(v4 + 8) = 1536;
  *(v4 + 16) = xmmword_27775BC80;
  *(v4 + 32) = 2;
  *(v4 + 56) = a2;
  bzero(a2 + 370, 0x14A0uLL);
  bzero(a2[1030], 0x1680uLL);
  bzero(this + 464, 0x14A0uLL);
  bzero(a2 + 1031, 0x19E8uLL);
  *(this + 718) = 0;
  *(this + 360) = 0u;
}

void CAHDecIxoraAvx::~CAHDecIxoraAvx(CAHDecIxoraAvx *this)
{
  *this = &unk_2886689A0;
  v2 = *(this + 32);
  v3 = 10192;
  v4 = 11;
  do
  {
    if (*(v2 + v3))
    {
      CAVDDecoder::deallocAVDMem(v2, (v2 + v3));
      v2 = *(this + 32);
      v5 = (v2 + v3);
      *(v5 - 1) = 0;
      *v5 = 0;
    }

    v3 += 184;
    --v4;
  }

  while (v4);
  v6 = 12216;
  v7 = 4;
  do
  {
    if (*(v2 + v6))
    {
      CAVDDecoder::deallocAVDMem(v2, (v2 + v6));
      v2 = *(this + 32);
      v8 = (v2 + v6);
      *(v8 - 1) = 0;
      *v8 = 0;
    }

    v6 += 184;
    --v7;
  }

  while (v7);
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(v2, this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecIxoraAvx::~CAHDecIxoraAvx(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecIxoraAvx::init(CAHDecIxoraAvx *this)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = CAVDDecoder::allocAVDMem(*(this + 32), (this + 280), *(this + 114), 6, 1, 0);
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136315650;
      v28 = "init";
      v29 = 1024;
      v30 = 0;
      v31 = 1024;
      LODWORD(v32) = v3;
      v4 = MEMORY[0x277D86220];
      v5 = "AppleAVD: ERROR: %s(): Failed to allocate m_decodeBufferMemInfo[%d]! Got %d\n";
      v6 = 24;
      goto LABEL_34;
    }

    return 301;
  }

  v7 = *(this + 35);
  *(this + 13) = 0;
  *(this + 33) = v7;
  *(this + 34) = v7;
  v8 = 9168;
  *(this + 1441) = 9168;
  v9 = *(this + 32);
  v10 = 10192;
  v11 = 10;
LABEL_5:
  if (CAVDDecoder::allocAVDMem(v9, (v9 + v10), v8, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136315650;
      v28 = "init";
      v29 = 1024;
      v30 = 217;
      v31 = 2080;
      v32 = "probs_wr_buf";
      v4 = MEMORY[0x277D86220];
      v5 = "AppleAVD: ERROR: %s() Line %d: Error allocating %s";
      goto LABEL_33;
    }

    return 301;
  }

  v9 = *(this + 32);
  while (1)
  {
    v12 = *(v9 + v10);
    if (v12)
    {
      *(v9 + v10 - 8) = v12;
    }

    if (!v11)
    {
      break;
    }

    v8 = *(this + 1441);
    v10 += 184;
    --v11;
    if (*(this + 1441))
    {
      goto LABEL_5;
    }
  }

  v13 = *(v9 + 37584);
  if (v13)
  {
    v14 = v9 + 10368;
    v15 = xmmword_27775BCD0;
    v16 = 12;
    v17 = vdupq_n_s64(0xBuLL);
    v18 = vdupq_n_s64(2uLL);
    do
    {
      if (vmovn_s64(vcgtq_u64(v17, v15)).u8[0])
      {
        *(v13 + 1960) = v14 - 184;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), *&v15)).i32[1])
      {
        *(v13 + 4000) = v14;
      }

      v15 = vaddq_s64(v15, v18);
      v13 += 4080;
      v14 += 368;
      v16 -= 2;
    }

    while (v16);
  }

  v19 = 0;
  for (i = 12216; ; i += 184)
  {
    v21 = *(this + 1441);
    v22 = *(this + 32);
    if (v21)
    {
      break;
    }

LABEL_23:
    v23 = (v22 + i - 8);
    v24 = *(v22 + i);
    if (v24)
    {
      *v23 = v24;
    }

    v25 = *(v22 + 15120);
    if (v25)
    {
      AV1_Syntax::Set_Default_Frame_Context_Info(v25, v23, v19);
    }

    if (++v19 == 4)
    {
      return 0;
    }
  }

  if (!CAVDDecoder::allocAVDMem(v22, (v22 + i), v21, 7, 1, 0))
  {
    v22 = *(this + 32);
    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136315650;
    v28 = "init";
    v29 = 1024;
    v30 = 232;
    v31 = 2080;
    v32 = "probs_default_buf";
    v4 = MEMORY[0x277D86220];
    v5 = "AppleAVD: ERROR: %s() Line %d: Error allocating %s";
LABEL_33:
    v6 = 28;
LABEL_34:
    _os_log_impl(&dword_277606000, v4, OS_LOG_TYPE_DEFAULT, v5, &v27, v6);
  }

  return 301;
}

uint64_t CAHDecIxoraAvx::DecodePicture(CAHDecIxoraAvx *this, uint64_t a2)
{
  if (CAHDecTansyAvx::startPicture(this, a2))
  {
    return 1;
  }

  (*(*this + 40))(this);
  (*(*this + 56))(this);
  if ((*(*this + 64))(this) || CAHDecIxoraAvx::populateAddressRegisters(this))
  {
    return 4;
  }

  CAHDecIxoraAvx::populateDecryptionRegisters(this);
  CAHDecIxoraAvx::populateTiles(this);
  CAHDecIxoraAvx::populateAvxVPDependency(this);
  (*(*this + 96))(this, a2);
  (*(*this + 48))(this, *(this + 114));
  return 0;
}

uint64_t CAHDecIxoraAvx::populateAddressRegisters(CAHDecIxoraAvx *this)
{
  v2 = 0;
  v381 = *MEMORY[0x277D85DE8];
  v3 = this + 464;
  do
  {
    *(*(this + 33) + v2 + 464) = 0;
    v4 = *(this + 33) + v2;
    v5 = *(v4 + 464);
    *(v4 + 464) = 0;
    *(*(this + 33) + v2 + 464) ^= 0xFFFFFF00;
    v6 = *(this + 33) + v2;
    v7 = *(v6 + 464);
    *(v6 + 464) = v5;
    if (*v3 || *(v3 + 38) || *(v3 + 39))
    {
      result = CAHDec::addToPatcherList(this, v3, v2 + 464, 0, 0xFFFFFFFFLL, 8, v7, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + v2 + 524) = 0;
    v9 = *(this + 33) + v2;
    v10 = *(v9 + 524);
    *(v9 + 524) = 0;
    *(*(this + 33) + v2 + 524) ^= 0x3FFu;
    v11 = *(this + 33) + v2;
    v12 = *(v11 + 524);
    *(v11 + 524) = v10;
    if (*v3 || *(v3 + 38) || *(v3 + 39))
    {
      result = CAHDec::addToPatcherList(this, v3, v2 + 524, 0, 0x3FFFFFFFFFFLL, 32, v12, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + v2 + 584) = 0;
    *(*(this + 33) + v2 + 584) = *(*(this + 33) + v2 + 584) & 0x800001FF | (((*(this + 1440) >> 9) & 0x3FFFFF) << 9);
    v2 += 4;
    v3 += 176;
  }

  while (v2 != 60);
  v13 = *(this + 32);
  v14 = *(*(v13 + 15112) + 79288);
  v15 = *(*(*(v13 + 37616) + 1920) + 1960);
  *(*(this + 33) + 644) = 0;
  v16 = *(this + 33);
  v17 = *(v16 + 644);
  *(v16 + 644) = 0;
  *(*(this + 33) + 644) ^= 0xFFFFFF00;
  v18 = *(this + 33);
  v19 = *(v18 + 644);
  *(v18 + 644) = v17;
  if (!*(v15 + 8) && !*(v15 + 160) && !*(v15 + 164) || (result = CAHDec::addToPatcherList(this, (v15 + 8), 644, 0, 0xFFFFFFFFLL, 8, v19, 4), !result))
  {
    if ((*(*(this + 33) + 648) = 0, v20 = *(this + 33), v21 = *(v20 + 648), *(v20 + 648) = 0, *(*(this + 33) + 648) ^= 0x3FFu, v22 = *(this + 33), v23 = *(v22 + 648), *(v22 + 648) = v21, !*(v15 + 8)) && !*(v15 + 160) && !*(v15 + 164) || (result = CAHDec::addToPatcherList(this, (v15 + 8), 648, 0, 0x3FFFFFFFFFFLL, 32, v23, 4), !result))
    {
      if ((*(*(this + 33) + 652) = 0, v24 = *(this + 33), v25 = *(v24 + 652), *(v24 + 652) = 0, *(*(this + 33) + 652) ^= 0xFFFFFF00, v26 = *(this + 33), v27 = *(v26 + 652), *(v26 + 652) = v25, !*(v14 + 8)) && !*(v14 + 160) && !*(v14 + 164) || (result = CAHDec::addToPatcherList(this, (v14 + 8), 652, 0, 0xFFFFFFFFLL, 8, v27, 4), !result))
      {
        if ((*(*(this + 33) + 656) = 0, v28 = *(this + 33), v29 = *(v28 + 656), *(v28 + 656) = 0, *(*(this + 33) + 656) ^= 0x3FFu, v30 = *(this + 33), v31 = *(v30 + 656), *(v30 + 656) = v29, !*(v14 + 8)) && !*(v14 + 160) && !*(v14 + 164) || (result = CAHDec::addToPatcherList(this, (v14 + 8), 656, 0, 0x3FFFFFFFFFFLL, 32, v31, 4), !result))
        {
          v32 = 0;
          v34 = 1;
          do
          {
            v35 = v34;
            v36 = 4 * v32;
            *(*(this + 33) + 4 * v32 + 660) = 0;
            v37 = *(this + 33) + 4 * v32;
            v38 = *(v37 + 660);
            *(v37 + 660) = 0;
            *(*(this + 33) + 4 * v32 + 660) ^= 0xFFFFFF00;
            v39 = *(this + 33) + 4 * v32;
            v40 = *(v39 + 660);
            *(v39 + 660) = v38;
            v33 = this + 3104;
            v41 = this + 176 * v32 + 3104;
            if (*v41 || *(v41 + 38) || *(v41 + 39))
            {
              result = CAHDec::addToPatcherList(this, &v33[176 * v32], v36 + 660, 0, 0xFFFFFFFFLL, 8, v40, 4);
              if (result)
              {
                return result;
              }
            }

            *(*(this + 33) + 4 * v32 + 668) = 0;
            v42 = *(this + 33) + 4 * v32;
            v43 = *(v42 + 668);
            *(v42 + 668) = 0;
            *(*(this + 33) + 4 * v32 + 668) ^= 0x3FFu;
            v44 = *(this + 33) + 4 * v32;
            v45 = *(v44 + 668);
            *(v44 + 668) = v43;
            if (*v41 || *(v41 + 38) || *(v41 + 39))
            {
              result = CAHDec::addToPatcherList(this, &v33[176 * v32], v36 + 668, 0, 0x3FFFFFFFFFFLL, 32, v45, 4);
              if (result)
              {
                return result;
              }
            }

            v34 = 0;
            v32 = 1;
          }

          while ((v35 & 1) != 0);
          *(*(this + 33) + 676) = 0;
          *(*(this + 33) + 680) = 0;
          if (!*(*(*(this + 32) + 15112) + 79312) || ((v46 = *(this + 33), v47 = *(v46 + 676), *(v46 + 676) = 0, *(*(this + 33) + 676) ^= 0xFFFFFF00, v48 = *(this + 33), v49 = *(v48 + 676), *(v48 + 676) = v47, v50 = *(*(*(this + 32) + 15112) + 79312), !*(v50 + 8)) && !*(v50 + 160) && !*(v50 + 164) || (result = CAHDec::addToPatcherList(this, (v50 + 8), 676, 0, 0xFFFFFFFFLL, 8, v49, 4), !result)) && ((v51 = *(this + 33), v52 = *(v51 + 680), *(v51 + 680) = 0, *(*(this + 33) + 680) ^= 0x3FFu, v53 = *(this + 33), v54 = *(v53 + 680), *(v53 + 680) = v52, v55 = *(*(*(this + 32) + 15112) + 79312), !*(v55 + 8)) && !*(v55 + 160) && !*(v55 + 164) || (result = CAHDec::addToPatcherList(this, (v55 + 8), 680, 0, 0x3FFFFFFFFFFLL, 32, v54, 4), !result)))
          {
            *(*(this + 33) + 684) = 0;
            *(*(this + 33) + 688) = 0;
            if (!*(*(*(this + 32) + 15112) + 79304) || ((v56 = *(this + 33), v57 = *(v56 + 684), *(v56 + 684) = 0, *(*(this + 33) + 684) ^= 0xFFFFFF00, v58 = *(this + 33), v59 = *(v58 + 684), *(v58 + 684) = v57, v60 = *(*(*(this + 32) + 15112) + 79304), !*(v60 + 8)) && !*(v60 + 160) && !*(v60 + 164) || (result = CAHDec::addToPatcherList(this, (v60 + 8), 684, 0, 0xFFFFFFFFLL, 8, v59, 4), !result)) && ((v61 = *(this + 33), v62 = *(v61 + 688), *(v61 + 688) = 0, *(*(this + 33) + 688) ^= 0x3FFu, v63 = *(this + 33), v64 = *(v63 + 688), *(v63 + 688) = v62, v65 = *(*(*(this + 32) + 15112) + 79304), !*(v65 + 8)) && !*(v65 + 160) && !*(v65 + 164) || (result = CAHDec::addToPatcherList(this, (v65 + 8), 688, 0, 0x3FFFFFFFFFFLL, 32, v64, 4), !result)))
            {
              if ((*(*(this + 33) + 692) = 0, v66 = *(this + 33), v67 = *(v66 + 692), *(v66 + 692) = 0, *(*(this + 33) + 692) ^= 0xFFFFFF00, v68 = *(this + 33), v69 = *(v68 + 692), *(v68 + 692) = v67, v70 = *(*(*(this + 32) + 37616) + 1920), !*(v70 + 136)) && !*(v70 + 288) && !*(v70 + 292) || (result = CAHDec::addToPatcherList(this, (v70 + 136), 692, 0, 0xFFFFFFFFLL, 8, v69, 4), !result))
              {
                if ((*(*(this + 33) + 696) = 0, v71 = *(this + 33), v72 = *(v71 + 696), *(v71 + 696) = 0, *(*(this + 33) + 696) ^= 0x3FFu, v73 = *(this + 33), v74 = *(v73 + 696), *(v73 + 696) = v72, v75 = *(*(*(this + 32) + 37616) + 1920), !*(v75 + 136)) && !*(v75 + 288) && !*(v75 + 292) || (result = CAHDec::addToPatcherList(this, (v75 + 136), 696, 0, 0x3FFFFFFFFFFLL, 32, v74, 4), !result))
                {
                  if ((*(*(this + 33) + 700) = 0, v76 = *(this + 33), v77 = *(v76 + 700), *(v76 + 700) = 0, *(*(this + 33) + 700) ^= 0xFFFFFF00, v78 = *(this + 33), v79 = *(v78 + 700), *(v78 + 700) = v77, !*(*(*(this + 32) + 15112) + 78568)) && !*(*(*(this + 32) + 15112) + 78720) && !*(*(*(this + 32) + 15112) + 78724) || (result = CAHDec::addToPatcherList(this, (*(*(this + 32) + 15112) + 78568), 700, 0, 0xFFFFFFFFLL, 8, v79, 4), !result))
                  {
                    if ((*(*(this + 33) + 704) = 0, v80 = *(this + 33), v81 = *(v80 + 704), *(v80 + 704) = 0, *(*(this + 33) + 704) ^= 0x3FFu, v82 = *(this + 33), v83 = *(v82 + 704), *(v82 + 704) = v81, !*(*(*(this + 32) + 15112) + 78568)) && !*(*(*(this + 32) + 15112) + 78720) && !*(*(*(this + 32) + 15112) + 78724) || (result = CAHDec::addToPatcherList(this, (*(*(this + 32) + 15112) + 78568), 704, 0, 0x3FFFFFFFFFFLL, 32, v83, 4), !result))
                    {
                      if ((*(*(this + 33) + 708) = 0, v84 = *(this + 33), v85 = *(v84 + 708), *(v84 + 708) = 0, *(*(this + 33) + 708) ^= 0xFFFFFF00, v86 = *(this + 33), v87 = *(v86 + 708), *(v86 + 708) = v85, !*(*(*(this + 32) + 15112) + 78792)) && !*(*(*(this + 32) + 15112) + 78944) && !*(*(*(this + 32) + 15112) + 78948) || (result = CAHDec::addToPatcherList(this, (*(*(this + 32) + 15112) + 78792), 708, 0, 0xFFFFFFFFLL, 8, v87, 4), !result))
                      {
                        if ((*(*(this + 33) + 712) = 0, v88 = *(this + 33), v89 = *(v88 + 712), *(v88 + 712) = 0, *(*(this + 33) + 712) ^= 0x3FFu, v90 = *(this + 33), v91 = *(v90 + 712), *(v90 + 712) = v89, !*(*(*(this + 32) + 15112) + 78792)) && !*(*(*(this + 32) + 15112) + 78944) && !*(*(*(this + 32) + 15112) + 78948) || (result = CAHDec::addToPatcherList(this, (*(*(this + 32) + 15112) + 78792), 712, 0, 0x3FFFFFFFFFFLL, 32, v91, 4), !result))
                        {
                          if ((*(*(this + 33) + 716) = 0, v92 = *(this + 33), v93 = *(v92 + 716), *(v92 + 716) = 0, *(*(this + 33) + 716) ^= 0xFFFFFF00, v94 = *(this + 33), v95 = *(v94 + 716), *(v94 + 716) = v93, !*(*(*(this + 32) + 15112) + 79016)) && !*(*(*(this + 32) + 15112) + 79168) && !*(*(*(this + 32) + 15112) + 79172) || (result = CAHDec::addToPatcherList(this, (*(*(this + 32) + 15112) + 79016), 716, 0, 0xFFFFFFFFLL, 8, v95, 4), !result))
                          {
                            if ((*(*(this + 33) + 720) = 0, v96 = *(this + 33), v97 = *(v96 + 720), *(v96 + 720) = 0, *(*(this + 33) + 720) ^= 0x3FFu, v98 = *(this + 33), v99 = *(v98 + 720), *(v98 + 720) = v97, !*(*(*(this + 32) + 15112) + 79016)) && !*(*(*(this + 32) + 15112) + 79168) && !*(*(*(this + 32) + 15112) + 79172) || (result = CAHDec::addToPatcherList(this, (*(*(this + 32) + 15112) + 79016), 720, 0, 0x3FFFFFFFFFFLL, 32, v99, 4), !result))
                            {
                              *(*(this + 33) + 724) = 0;
                              *(*(this + 33) + 728) = 0;
                              v100 = *(this + 32);
                              if (!*(v100 + 2652))
                              {
                                goto LABEL_351;
                              }

                              v101 = *(v100 + 2680);
                              v379 = 0u;
                              v380 = 0u;
                              v377 = 0u;
                              v378 = 0u;
                              v375 = 0u;
                              v376 = 0u;
                              v373 = 0u;
                              v374 = 0u;
                              v372 = 0u;
                              memset(v371, 0, sizeof(v371));
                              v102 = *(this + 33);
                              v103 = (*(v102 + 16) & 0xF) << 9;
                              *&v371[0] = v101;
                              v104 = *(v102 + 724);
                              *(v102 + 724) = 0;
                              *(*(this + 33) + 724) ^= 0xFFFFFF00;
                              v105 = *(this + 33);
                              v106 = *(v105 + 724);
                              *(v105 + 724) = v104;
                              if (v101)
                              {
                                result = CAHDec::addToPatcherList(this, v371, 724, v103, 0xFFFFFFFFLL, 8, v106, 4);
                                if (result)
                                {
                                  return result;
                                }

                                if (*&v371[0])
                                {
                                  v107 = 0;
                                }

                                else
                                {
                                  v107 = DWORD2(v379) == 0;
                                }

                                LODWORD(v101) = !v107 || HIDWORD(v379) != 0;
                              }

                              v109 = *(this + 33);
                              v110 = *(v109 + 728);
                              *(v109 + 728) = 0;
                              *(*(this + 33) + 728) ^= 0x3FFu;
                              v111 = *(this + 33);
                              v112 = *(v111 + 728);
                              *(v111 + 728) = v110;
                              if (!v101 || (result = CAHDec::addToPatcherList(this, v371, 728, v103, 0x3FFFFFFFFFFLL, 32, v112, 4), !result))
                              {
LABEL_351:
                                if ((*(*(this + 33) + 732) = 0, v113 = *(this + 33), v114 = *(v113 + 732), *(v113 + 732) = 0, *(*(this + 33) + 732) ^= 0xFFFFFF00, v115 = *(this + 33), v116 = *(v115 + 732), *(v115 + 732) = v114, !*(this + 432)) && !*(this + 902) && !*(this + 903) || (result = CAHDec::addToPatcherList(this, this + 432, 732, 0, 0xFFFFFFFFLL, 8, v116, 4), !result))
                                {
                                  if ((*(*(this + 33) + 736) = 0, v117 = *(this + 33), v118 = *(v117 + 736), *(v117 + 736) = 0, *(*(this + 33) + 736) ^= 0x3FFu, v119 = *(this + 33), v120 = *(v119 + 736), *(v119 + 736) = v118, !*(this + 432)) && !*(this + 902) && !*(this + 903) || (result = CAHDec::addToPatcherList(this, this + 432, 736, 0, 0x3FFFFFFFFFFLL, 32, v120, 4), !result))
                                  {
                                    if ((*(*(this + 33) + 740) = 0, v121 = *(this + 33), v122 = *(v121 + 740), *(v121 + 740) = 0, *(*(this + 33) + 740) ^= 0xFFFFFF00, v123 = *(this + 33), v124 = *(v123 + 740), *(v123 + 740) = v122, !*(this + 454)) && !*(this + 946) && !*(this + 947) || (result = CAHDec::addToPatcherList(this, this + 454, 740, 0, 0xFFFFFFFFLL, 8, v124, 4), !result))
                                    {
                                      if ((*(*(this + 33) + 744) = 0, v125 = *(this + 33), v126 = *(v125 + 744), *(v125 + 744) = 0, *(*(this + 33) + 744) ^= 0x3FFu, v127 = *(this + 33), v128 = *(v127 + 744), *(v127 + 744) = v126, !*(this + 454)) && !*(this + 946) && !*(this + 947) || (result = CAHDec::addToPatcherList(this, this + 454, 744, 0, 0x3FFFFFFFFFFLL, 32, v128, 4), !result))
                                      {
                                        if ((*(*(this + 33) + 748) = 0, v129 = *(this + 33), v130 = *(v129 + 748), *(v129 + 748) = 0, *(*(this + 33) + 748) ^= 0xFFFFFF00, v131 = *(this + 33), v132 = *(v131 + 748), *(v131 + 748) = v130, !*(this + 476)) && !*(this + 990) && !*(this + 991) || (result = CAHDec::addToPatcherList(this, this + 476, 748, 0, 0xFFFFFFFFLL, 8, v132, 4), !result))
                                        {
                                          if ((*(*(this + 33) + 752) = 0, v133 = *(this + 33), v134 = *(v133 + 752), *(v133 + 752) = 0, *(*(this + 33) + 752) ^= 0x3FFu, v135 = *(this + 33), v136 = *(v135 + 752), *(v135 + 752) = v134, !*(this + 476)) && !*(this + 990) && !*(this + 991) || (result = CAHDec::addToPatcherList(this, this + 476, 752, 0, 0x3FFFFFFFFFFLL, 32, v136, 4), !result))
                                          {
                                            if ((*(*(this + 33) + 756) = 0, v137 = *(this + 33), v138 = *(v137 + 756), *(v137 + 756) = 0, *(*(this + 33) + 756) ^= 0xFFFFFF00, v139 = *(this + 33), v140 = *(v139 + 756), *(v139 + 756) = v138, !*(this + 498)) && !*(this + 1034) && !*(this + 1035) || (result = CAHDec::addToPatcherList(this, this + 498, 756, 0, 0xFFFFFFFFLL, 8, v140, 4), !result))
                                            {
                                              if ((*(*(this + 33) + 760) = 0, v141 = *(this + 33), v142 = *(v141 + 760), *(v141 + 760) = 0, *(*(this + 33) + 760) ^= 0x3FFu, v143 = *(this + 33), v144 = *(v143 + 760), *(v143 + 760) = v142, !*(this + 498)) && !*(this + 1034) && !*(this + 1035) || (result = CAHDec::addToPatcherList(this, this + 498, 760, 0, 0x3FFFFFFFFFFLL, 32, v144, 4), !result))
                                              {
                                                if ((*(*(this + 33) + 764) = 0, v145 = *(this + 33), v146 = *(v145 + 764), *(v145 + 764) = 0, *(*(this + 33) + 764) ^= 0xFFFFFF00, v147 = *(this + 33), v148 = *(v147 + 764), *(v147 + 764) = v146, !*(this + 520)) && !*(this + 1078) && !*(this + 1079) || (result = CAHDec::addToPatcherList(this, this + 520, 764, 0, 0xFFFFFFFFLL, 8, v148, 4), !result))
                                                {
                                                  if ((*(*(this + 33) + 768) = 0, v149 = *(this + 33), v150 = *(v149 + 768), *(v149 + 768) = 0, *(*(this + 33) + 768) ^= 0x3FFu, v151 = *(this + 33), v152 = *(v151 + 768), *(v151 + 768) = v150, !*(this + 520)) && !*(this + 1078) && !*(this + 1079) || (result = CAHDec::addToPatcherList(this, this + 520, 768, 0, 0x3FFFFFFFFFFLL, 32, v152, 4), !result))
                                                  {
                                                    if ((*(*(this + 33) + 772) = 0, v153 = *(this + 33), v154 = *(v153 + 772), *(v153 + 772) = 0, *(*(this + 33) + 772) ^= 0xFFFFFF00, v155 = *(this + 33), v156 = *(v155 + 772), *(v155 + 772) = v154, !*(this + 542)) && !*(this + 1122) && !*(this + 1123) || (result = CAHDec::addToPatcherList(this, this + 542, 772, 0, 0xFFFFFFFFLL, 8, v156, 4), !result))
                                                    {
                                                      if ((*(*(this + 33) + 776) = 0, v157 = *(this + 33), v158 = *(v157 + 776), *(v157 + 776) = 0, *(*(this + 33) + 776) ^= 0x3FFu, v159 = *(this + 33), v160 = *(v159 + 776), *(v159 + 776) = v158, !*(this + 542)) && !*(this + 1122) && !*(this + 1123) || (result = CAHDec::addToPatcherList(this, this + 542, 776, 0, 0x3FFFFFFFFFFLL, 32, v160, 4), !result))
                                                      {
                                                        if ((*(*(this + 33) + 780) = 0, v161 = *(this + 33), v162 = *(v161 + 780), *(v161 + 780) = 0, *(*(this + 33) + 780) ^= 0xFFFFFF00, v163 = *(this + 33), v164 = *(v163 + 780), *(v163 + 780) = v162, !*(this + 564)) && !*(this + 1166) && !*(this + 1167) || (result = CAHDec::addToPatcherList(this, this + 564, 780, 0, 0xFFFFFFFFLL, 8, v164, 4), !result))
                                                        {
                                                          if ((*(*(this + 33) + 784) = 0, v165 = *(this + 33), v166 = *(v165 + 784), *(v165 + 784) = 0, *(*(this + 33) + 784) ^= 0x3FFu, v167 = *(this + 33), v168 = *(v167 + 784), *(v167 + 784) = v166, !*(this + 564)) && !*(this + 1166) && !*(this + 1167) || (result = CAHDec::addToPatcherList(this, this + 564, 784, 0, 0x3FFFFFFFFFFLL, 32, v168, 4), !result))
                                                          {
                                                            if ((*(*(this + 33) + 788) = 0, v169 = *(this + 33), v170 = *(v169 + 788), *(v169 + 788) = 0, *(*(this + 33) + 788) ^= 0xFFFFFF00, v171 = *(this + 33), v172 = *(v171 + 788), *(v171 + 788) = v170, !*(this + 586)) && !*(this + 1210) && !*(this + 1211) || (result = CAHDec::addToPatcherList(this, this + 586, 788, 0, 0xFFFFFFFFLL, 8, v172, 4), !result))
                                                            {
                                                              if ((*(*(this + 33) + 792) = 0, v173 = *(this + 33), v174 = *(v173 + 792), *(v173 + 792) = 0, *(*(this + 33) + 792) ^= 0x3FFu, v175 = *(this + 33), v176 = *(v175 + 792), *(v175 + 792) = v174, !*(this + 586)) && !*(this + 1210) && !*(this + 1211) || (result = CAHDec::addToPatcherList(this, this + 586, 792, 0, 0x3FFFFFFFFFFLL, 32, v176, 4), !result))
                                                              {
                                                                if ((*(*(this + 33) + 796) = 0, v177 = *(this + 33), v178 = *(v177 + 796), *(v177 + 796) = 0, *(*(this + 33) + 796) ^= 0xFFFFFF00, v179 = *(this + 33), v180 = *(v179 + 796), *(v179 + 796) = v178, !*(this + 608)) && !*(this + 1254) && !*(this + 1255) || (result = CAHDec::addToPatcherList(this, this + 608, 796, 0, 0xFFFFFFFFLL, 8, v180, 4), !result))
                                                                {
                                                                  if ((*(*(this + 33) + 800) = 0, v181 = *(this + 33), v182 = *(v181 + 800), *(v181 + 800) = 0, *(*(this + 33) + 800) ^= 0x3FFu, v183 = *(this + 33), v184 = *(v183 + 800), *(v183 + 800) = v182, !*(this + 608)) && !*(this + 1254) && !*(this + 1255) || (result = CAHDec::addToPatcherList(this, this + 608, 800, 0, 0x3FFFFFFFFFFLL, 32, v184, 4), !result))
                                                                  {
                                                                    if ((*(*(this + 33) + 804) = 0, v185 = *(this + 33), v186 = *(v185 + 804), *(v185 + 804) = 0, *(*(this + 33) + 804) ^= 0xFFFFFF00, v187 = *(this + 33), v188 = *(v187 + 804), *(v187 + 804) = v186, !*(this + 674)) && !*(this + 1386) && !*(this + 1387) || (result = CAHDec::addToPatcherList(this, this + 674, 804, 0, 0xFFFFFFFFLL, 8, v188, 4), !result))
                                                                    {
                                                                      if ((*(*(this + 33) + 808) = 0, v189 = *(this + 33), v190 = *(v189 + 808), *(v189 + 808) = 0, *(*(this + 33) + 808) ^= 0x3FFu, v191 = *(this + 33), v192 = *(v191 + 808), *(v191 + 808) = v190, !*(this + 674)) && !*(this + 1386) && !*(this + 1387) || (result = CAHDec::addToPatcherList(this, this + 674, 808, 0, 0x3FFFFFFFFFFLL, 32, v192, 4), !result))
                                                                      {
                                                                        if ((v193 = *(*(this + 32) + 37868), *(*(this + 33) + 812) = 0, *(*(this + 33) + 816) = 0, *(*(this + 33) + 820) = 0, *(*(this + 33) + 824) = 0, *(*(this + 33) + 828) = 0, *(*(this + 33) + 832) = 0, *(*(this + 33) + 836) = 0, *(*(this + 33) + 840) = 0, v194 = *(this + 33), v195 = *(v194 + 820), *(v194 + 820) = 0, *(*(this + 33) + 820) ^= 0xFFFFFF80, v196 = *(this + 33), v197 = *(v196 + 820), *(v196 + 820) = v195, v198 = *(*(*(this + 32) + 8240) + 384 * v193 + 8), !*v198) && !*(v198 + 152) && !*(v198 + 156) || (result = CAHDec::addToPatcherList(this, v198, 820, *(v198 + 52), 0xFFFFFFFFLL, 7, v197, 4), !result))
                                                                        {
                                                                          if ((v199 = *(this + 33), v200 = *(v199 + 824), *(v199 + 824) = 0, *(*(this + 33) + 824) ^= 0x3FFu, v201 = *(this + 33), v202 = *(v201 + 824), *(v201 + 824) = v200, v203 = *(*(*(this + 32) + 8240) + 384 * v193 + 8), !*v203) && !*(v203 + 152) && !*(v203 + 156) || (result = CAHDec::addToPatcherList(this, v203, 824, *(v203 + 52), 0x3FFFFFFFFFFLL, 32, v202, 4), !result))
                                                                          {
                                                                            if ((v204 = *(this + 33), v205 = *(v204 + 836), *(v204 + 836) = 0, *(*(this + 33) + 836) ^= 0xFFFFFF80, v206 = *(this + 33), v207 = *(v206 + 836), *(v206 + 836) = v205, v208 = *(*(*(this + 32) + 8240) + 384 * v193 + 8), !*v208) && !*(v208 + 152) && !*(v208 + 156) || (result = CAHDec::addToPatcherList(this, v208, 836, *(v208 + 56), 0xFFFFFFFFLL, 7, v207, 4), !result))
                                                                            {
                                                                              v209 = *(this + 33);
                                                                              v210 = *(v209 + 840);
                                                                              *(v209 + 840) = 0;
                                                                              *(*(this + 33) + 840) ^= 0x3FFu;
                                                                              v211 = *(this + 33);
                                                                              v212 = *(v211 + 840);
                                                                              *(v211 + 840) = v210;
                                                                              v213 = *(this + 32);
                                                                              v214 = *(*(v213 + 8240) + 384 * v193 + 8);
                                                                              if (*v214 || *(v214 + 152) || *(v214 + 156))
                                                                              {
                                                                                result = CAHDec::addToPatcherList(this, v214, 840, *(v214 + 56), 0x3FFFFFFFFFFLL, 32, v212, 4);
                                                                                if (result)
                                                                                {
                                                                                  return result;
                                                                                }

                                                                                v213 = *(this + 32);
                                                                              }

                                                                              v215 = *(v213 + 2648);
                                                                              v216 = *(this + 33);
                                                                              v217 = *(v216 + 812);
                                                                              *(v216 + 812) = 0;
                                                                              *(*(this + 33) + 812) ^= 0xFFFFFF80;
                                                                              v218 = *(this + 33);
                                                                              v219 = *(v218 + 812);
                                                                              *(v218 + 812) = v217;
                                                                              v220 = *(this + 32);
                                                                              if (v215 == 1)
                                                                              {
                                                                                v221 = *(*(v220 + 8240) + 384 * v193 + 8);
                                                                                if (*v221 || *(v221 + 152) || *(v221 + 156))
                                                                                {
                                                                                  result = CAHDec::addToPatcherList(this, v221, 812, *(v221 + 64), 0xFFFFFFFFLL, 7, v219, 4);
                                                                                  if (result)
                                                                                  {
                                                                                    return result;
                                                                                  }
                                                                                }

                                                                                v222 = *(this + 33);
                                                                                v223 = *(v222 + 816);
                                                                                *(v222 + 816) = 0;
                                                                                *(*(this + 33) + 816) ^= 0x3FFu;
                                                                                v224 = *(this + 33);
                                                                                v225 = *(v224 + 816);
                                                                                *(v224 + 816) = v223;
                                                                                v226 = *(*(*(this + 32) + 8240) + 384 * v193 + 8);
                                                                                if (*v226 || *(v226 + 152) || *(v226 + 156))
                                                                                {
                                                                                  result = CAHDec::addToPatcherList(this, v226, 816, *(v226 + 64), 0x3FFFFFFFFFFLL, 32, v225, 4);
                                                                                  if (result)
                                                                                  {
                                                                                    return result;
                                                                                  }
                                                                                }

                                                                                v227 = *(this + 33);
                                                                                v228 = *(v227 + 828);
                                                                                *(v227 + 828) = 0;
                                                                                *(*(this + 33) + 828) ^= 0xFFFFFF80;
                                                                                v229 = *(this + 33);
                                                                                v230 = *(v229 + 828);
                                                                                *(v229 + 828) = v228;
                                                                                v231 = *(*(*(this + 32) + 8240) + 384 * v193 + 8);
                                                                                if (*v231 || *(v231 + 152) || *(v231 + 156))
                                                                                {
                                                                                  result = CAHDec::addToPatcherList(this, v231, 828, *(v231 + 68), 0xFFFFFFFFLL, 7, v230, 4);
                                                                                  if (result)
                                                                                  {
                                                                                    return result;
                                                                                  }
                                                                                }

                                                                                v232 = *(this + 33);
                                                                                v233 = *(v232 + 832);
                                                                                *(v232 + 832) = 0;
                                                                                *(*(this + 33) + 832) ^= 0x3FFu;
                                                                                v234 = *(this + 33);
                                                                                v235 = *(v234 + 832);
                                                                                *(v234 + 832) = v233;
                                                                                v236 = *(*(*(this + 32) + 8240) + 384 * v193 + 8);
                                                                                if (*v236 || *(v236 + 152) || *(v236 + 156))
                                                                                {
                                                                                  v237 = *(v236 + 68);
                                                                                  v238 = this;
                                                                                  goto LABEL_234;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v239 = (v220 + 176 * v193 + 2960);
                                                                                if (*v239 || *(v220 + 176 * v193 + 3112) || *(v220 + 176 * v193 + 3116))
                                                                                {
                                                                                  result = CAHDec::addToPatcherList(this, v239, 812, 0, 0xFFFFFFFFLL, 7, v219, 4);
                                                                                  if (result)
                                                                                  {
                                                                                    return result;
                                                                                  }
                                                                                }

                                                                                v240 = *(this + 33);
                                                                                v241 = *(v240 + 816);
                                                                                *(v240 + 816) = 0;
                                                                                *(*(this + 33) + 816) ^= 0x3FFu;
                                                                                v242 = *(this + 33);
                                                                                v243 = *(v242 + 816);
                                                                                *(v242 + 816) = v241;
                                                                                v244 = (*(this + 32) + 176 * v193 + 2960);
                                                                                if (*v244 || *(*(this + 32) + 176 * v193 + 3112) || *(*(this + 32) + 176 * v193 + 3116))
                                                                                {
                                                                                  result = CAHDec::addToPatcherList(this, v244, 816, 0, 0x3FFFFFFFFFFLL, 32, v243, 4);
                                                                                  if (result)
                                                                                  {
                                                                                    return result;
                                                                                  }
                                                                                }

                                                                                v245 = *(this + 33);
                                                                                v246 = *(v245 + 828);
                                                                                *(v245 + 828) = 0;
                                                                                *(*(this + 33) + 828) ^= 0xFFFFFF80;
                                                                                v247 = *(this + 33);
                                                                                v248 = *(v247 + 828);
                                                                                *(v247 + 828) = v246;
                                                                                v249 = (*(this + 32) + 176 * v193 + 5600);
                                                                                if (*v249 || *(*(this + 32) + 176 * v193 + 5752) || *(*(this + 32) + 176 * v193 + 5756))
                                                                                {
                                                                                  result = CAHDec::addToPatcherList(this, v249, 828, 0, 0xFFFFFFFFLL, 7, v248, 4);
                                                                                  if (result)
                                                                                  {
                                                                                    return result;
                                                                                  }
                                                                                }

                                                                                v250 = *(this + 33);
                                                                                v251 = *(v250 + 832);
                                                                                *(v250 + 832) = 0;
                                                                                *(*(this + 33) + 832) ^= 0x3FFu;
                                                                                v252 = *(this + 33);
                                                                                v235 = *(v252 + 832);
                                                                                *(v252 + 832) = v251;
                                                                                v236 = *(this + 32) + 176 * v193 + 5600;
                                                                                if (*v236 || *(*(this + 32) + 176 * v193 + 5752) || *(*(this + 32) + 176 * v193 + 5756))
                                                                                {
                                                                                  v238 = this;
                                                                                  v237 = 0;
LABEL_234:
                                                                                  result = CAHDec::addToPatcherList(v238, v236, 832, v237, 0x3FFFFFFFFFFLL, 32, v235, 4);
                                                                                  if (result)
                                                                                  {
                                                                                    return result;
                                                                                  }
                                                                                }
                                                                              }

                                                                              *(*(this + 33) + 844) = 0;
                                                                              *(*(this + 33) + 848) = 0;
                                                                              *(*(this + 33) + 852) = 0;
                                                                              *(*(this + 33) + 856) = 0;
                                                                              *(*(this + 33) + 860) = 0;
                                                                              *(*(this + 33) + 864) = 0;
                                                                              *(*(this + 33) + 868) = 0;
                                                                              *(*(this + 33) + 872) = 0;
                                                                              if (*(*(this + 32) + 2644))
                                                                              {
                                                                                v253 = *(this + 33);
                                                                                v254 = *(v253 + 844);
                                                                                *(v253 + 844) = 0;
                                                                                *(*(this + 33) + 844) ^= 0xFFFFFF00;
                                                                                v255 = *(this + 33);
                                                                                v256 = *(v255 + 844);
                                                                                *(v255 + 844) = v254;
                                                                                if (*(this + 652) || *(this + 1342) || *(this + 1343))
                                                                                {
                                                                                  result = CAHDec::addToPatcherList(this, this + 652, 844, 0, 0xFFFFFFFFLL, 8, v256, 4);
                                                                                  if (result)
                                                                                  {
                                                                                    return result;
                                                                                  }
                                                                                }

                                                                                v257 = *(this + 33);
                                                                                v258 = *(v257 + 848);
                                                                                *(v257 + 848) = 0;
                                                                                *(*(this + 33) + 848) ^= 0x3FFu;
                                                                                v259 = *(this + 33);
                                                                                v260 = *(v259 + 848);
                                                                                *(v259 + 848) = v258;
                                                                                if (*(this + 652) || *(this + 1342) || *(this + 1343))
                                                                                {
                                                                                  result = CAHDec::addToPatcherList(this, this + 652, 848, 0, 0x3FFFFFFFFFFLL, 32, v260, 4);
                                                                                  if (result)
                                                                                  {
                                                                                    return result;
                                                                                  }
                                                                                }

                                                                                v261 = *(this + 32);
                                                                                v262 = *(v261 + 2892);
                                                                                if (*(v261 + 2892))
                                                                                {
                                                                                  v263 = *(v261 + 2904);
                                                                                  v262 = *(v261 + 2908);
                                                                                }

                                                                                else
                                                                                {
                                                                                  v263 = 0;
                                                                                }

                                                                                v264 = *(v261 + 37888);
                                                                                v265 = *(v264 + 52);
                                                                                v266 = v265 + v263;
                                                                                if (__CFADD__(v265, v263))
                                                                                {
                                                                                  v267 = 1;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v268 = *(v264 + 56);
                                                                                  v269 = v268 + v262;
                                                                                  if (!__CFADD__(v268, v262))
                                                                                  {
                                                                                    v273 = *(this + 33);
                                                                                    v274 = *(v273 + 852);
                                                                                    *(v273 + 852) = 0;
                                                                                    *(*(this + 33) + 852) ^= 0xFFFFFFC0;
                                                                                    v275 = *(this + 33);
                                                                                    v276 = *(v275 + 852);
                                                                                    *(v275 + 852) = v274;
                                                                                    v277 = *(*(this + 32) + 37888);
                                                                                    if (*v277 || *(v277 + 152) || *(v277 + 156))
                                                                                    {
                                                                                      result = CAHDec::addToPatcherList(this, v277, 852, v266, 0xFFFFFFFFLL, 6, v276, 4);
                                                                                      if (result)
                                                                                      {
                                                                                        return result;
                                                                                      }
                                                                                    }

                                                                                    v278 = *(this + 33);
                                                                                    v279 = *(v278 + 856);
                                                                                    *(v278 + 856) = 0;
                                                                                    *(*(this + 33) + 856) ^= 0x3FFu;
                                                                                    v280 = *(this + 33);
                                                                                    v281 = *(v280 + 856);
                                                                                    *(v280 + 856) = v279;
                                                                                    v282 = *(*(this + 32) + 37888);
                                                                                    if (*v282 || *(v282 + 152) || *(v282 + 156))
                                                                                    {
                                                                                      result = CAHDec::addToPatcherList(this, v282, 856, v266, 0x3FFFFFFFFFFLL, 32, v281, 4);
                                                                                      if (result)
                                                                                      {
                                                                                        return result;
                                                                                      }
                                                                                    }

                                                                                    v283 = *(this + 33);
                                                                                    v284 = *(v283 + 864);
                                                                                    *(v283 + 864) = 0;
                                                                                    *(*(this + 33) + 864) ^= 0xFFFFFFC0;
                                                                                    v285 = *(this + 33);
                                                                                    v286 = *(v285 + 864);
                                                                                    *(v285 + 864) = v284;
                                                                                    v287 = *(*(this + 32) + 37888);
                                                                                    if (*v287 || *(v287 + 152) || *(v287 + 156))
                                                                                    {
                                                                                      result = CAHDec::addToPatcherList(this, v287, 864, v269, 0xFFFFFFFFLL, 6, v286, 4);
                                                                                      if (result)
                                                                                      {
                                                                                        return result;
                                                                                      }
                                                                                    }

                                                                                    v288 = *(this + 33);
                                                                                    v289 = *(v288 + 868);
                                                                                    *(v288 + 868) = 0;
                                                                                    *(*(this + 33) + 868) ^= 0x3FFu;
                                                                                    v290 = *(this + 33);
                                                                                    v291 = *(v290 + 868);
                                                                                    *(v290 + 868) = v289;
                                                                                    v292 = *(this + 32);
                                                                                    v293 = *(v292 + 37888);
                                                                                    if (*v293 || *(v293 + 152) || *(v293 + 156))
                                                                                    {
                                                                                      result = CAHDec::addToPatcherList(this, v293, 868, v269, 0x3FFFFFFFFFFLL, 32, v291, 4);
                                                                                      if (result)
                                                                                      {
                                                                                        return result;
                                                                                      }

                                                                                      v292 = *(this + 32);
                                                                                    }

                                                                                    v294 = *(this + 33);
                                                                                    v295 = *(v294 + 860) & 0xFFFC003F;
                                                                                    if (*(v292 + 8) == 1)
                                                                                    {
                                                                                      *(v294 + 860) = v295 | *(*(v292 + 37888) + 76) & 0x3FFC0;
                                                                                      *(*(this + 33) + 872) = *(*(this + 33) + 872) & 0xFFF8003F | (((*(*(*(this + 32) + 37888) + 80) >> 6) & 0x1FFF) << 6);
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      *(v294 + 860) = v295 | *(*(v292 + 15112) + 78508) & 0x3FFC0;
                                                                                      *(*(this + 33) + 872) = *(*(this + 33) + 872) & 0xFFF8003F | (((*(*(*(this + 32) + 15112) + 78512) >> 6) & 0x1FFF) << 6);
                                                                                      v296 = *(this + 32);
                                                                                      v297 = *(v296 + 15112) + 77824;
                                                                                      v298 = *(*(v296 + 15112) + 78508);
                                                                                      v299 = *(v296 + 37888);
                                                                                      v300 = *(v299 + 76);
                                                                                      if ((v298 != v300 || *(*(v296 + 15112) + 78512) != *(v299 + 80)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                                                      {
                                                                                        v301 = *(v297 + 688);
                                                                                        v302 = *(v299 + 80);
                                                                                        LODWORD(v371[0]) = 136316162;
                                                                                        *(v371 + 4) = "populateAddressRegisters";
                                                                                        WORD6(v371[0]) = 1024;
                                                                                        *(v371 + 14) = v298;
                                                                                        WORD1(v371[1]) = 1024;
                                                                                        DWORD1(v371[1]) = v301;
                                                                                        WORD4(v371[1]) = 1024;
                                                                                        *(&v371[1] + 10) = v300;
                                                                                        HIWORD(v371[1]) = 1024;
                                                                                        LODWORD(v372) = v302;
                                                                                        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Warning! AVD SWR stride (%d, %d) != IOSurface stride (%d, %d). If IOSurface is displayed, output will be corrupted. If YUV is written to file system, no corruption.", v371, 0x24u);
                                                                                      }
                                                                                    }

                                                                                    goto LABEL_278;
                                                                                  }

                                                                                  v267 = 2;
                                                                                }

                                                                                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                                                {
                                                                                  LODWORD(v371[0]) = 136315394;
                                                                                  *(v371 + 4) = "populateAddressRegisters";
                                                                                  WORD6(v371[0]) = 1024;
                                                                                  *(v371 + 14) = v267;
                                                                                  v270 = MEMORY[0x277D86220];
                                                                                  v271 = "AppleAVD: %s(): failKind = %d";
                                                                                  v272 = 18;
                                                                                  goto LABEL_347;
                                                                                }

                                                                                return 0xFFFFFFFFLL;
                                                                              }

LABEL_278:
                                                                              v303 = *(this + 32);
                                                                              if (*(*(v303 + 15112) + 128) == 1 && !*(*(v303 + 37616) + 1956))
                                                                              {
                                                                                return 0;
                                                                              }

                                                                              *(*(this + 33) + 876) = 0;
                                                                              v304 = *(this + 33);
                                                                              v305 = *(v304 + 876);
                                                                              *(v304 + 876) = 0;
                                                                              *(*(this + 33) + 876) ^= 0xFFFFFF00;
                                                                              v306 = *(this + 33);
                                                                              v307 = *(v306 + 876);
                                                                              *(v306 + 876) = v305;
                                                                              if (!*(this + 696) && !*(this + 1430) && !*(this + 1431) || (result = CAHDec::addToPatcherList(this, this + 696, 876, 0, 0xFFFFFFFFLL, 8, v307, 4), !result))
                                                                              {
                                                                                if ((*(*(this + 33) + 880) = 0, v308 = *(this + 33), v309 = *(v308 + 880), *(v308 + 880) = 0, *(*(this + 33) + 880) ^= 0x3FFu, v310 = *(this + 33), v311 = *(v310 + 880), *(v310 + 880) = v309, !*(this + 696)) && !*(this + 1430) && !*(this + 1431) || (result = CAHDec::addToPatcherList(this, this + 696, 880, 0, 0x3FFFFFFFFFFLL, 32, v311, 4), !result))
                                                                                {
                                                                                  if (*(*(*(this + 32) + 15112) + 128))
                                                                                  {
                                                                                    return 0;
                                                                                  }

                                                                                  v312 = 0;
                                                                                  v313 = 0;
                                                                                  do
                                                                                  {
                                                                                    v314 = *(*(*(*(this + 32) + 15112) + 79224) + v313);
                                                                                    if (!v314 || (v315 = *(v314 + 2016)) == 0)
                                                                                    {
                                                                                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                                                      {
                                                                                        LODWORD(v371[0]) = 136315138;
                                                                                        *(v371 + 4) = "populateAddressRegisters";
                                                                                        v270 = MEMORY[0x277D86220];
                                                                                        v271 = "AppleAVD: %s(): Unexpected. av1_fb->buffer is 0x0!";
                                                                                        v272 = 12;
LABEL_347:
                                                                                        _os_log_impl(&dword_277606000, v270, OS_LOG_TYPE_DEFAULT, v271, v371, v272);
                                                                                      }

                                                                                      return 0xFFFFFFFFLL;
                                                                                    }

                                                                                    *(*(this + 33) + v312 + 884) = 0;
                                                                                    *(*(this + 33) + v312 + 912) = 0;
                                                                                    *(*(this + 33) + v312 + 940) = 0;
                                                                                    *(*(this + 33) + v312 + 968) = 0;
                                                                                    *(*(this + 33) + v312 + 996) = 0;
                                                                                    *(*(this + 33) + v312 + 1024) = 0;
                                                                                    *(*(this + 33) + v312 + 1052) = 0;
                                                                                    *(*(this + 33) + v312 + 1080) = 0;
                                                                                    v316 = *(this + 33) + v312;
                                                                                    v317 = *(v316 + 940);
                                                                                    *(v316 + 940) = 0;
                                                                                    *(*(this + 33) + v312 + 940) ^= 0xFFFFFF80;
                                                                                    v318 = *(this + 33) + v312;
                                                                                    v319 = *(v318 + 940);
                                                                                    *(v318 + 940) = v317;
                                                                                    v320 = *(v315 + 8);
                                                                                    if (*v320 || *(v320 + 152) || *(v320 + 156))
                                                                                    {
                                                                                      result = CAHDec::addToPatcherList(this, v320, v312 + 940, *(v320 + 52), 0xFFFFFFFFLL, 7, v319, 4);
                                                                                      if (result)
                                                                                      {
                                                                                        return result;
                                                                                      }
                                                                                    }

                                                                                    v321 = *(this + 33) + v312;
                                                                                    v322 = *(v321 + 968);
                                                                                    *(v321 + 968) = 0;
                                                                                    *(*(this + 33) + v312 + 968) ^= 0x3FFu;
                                                                                    v323 = *(this + 33) + v312;
                                                                                    v324 = *(v323 + 968);
                                                                                    *(v323 + 968) = v322;
                                                                                    v325 = *(v315 + 8);
                                                                                    if (*v325 || *(v325 + 152) || *(v325 + 156))
                                                                                    {
                                                                                      result = CAHDec::addToPatcherList(this, v325, v312 + 968, *(v325 + 52), 0x3FFFFFFFFFFLL, 32, v324, 4);
                                                                                      if (result)
                                                                                      {
                                                                                        return result;
                                                                                      }
                                                                                    }

                                                                                    v326 = *(this + 33) + v312;
                                                                                    v327 = *(v326 + 1052);
                                                                                    *(v326 + 1052) = 0;
                                                                                    *(*(this + 33) + v312 + 1052) ^= 0xFFFFFF80;
                                                                                    v328 = *(this + 33) + v312;
                                                                                    v329 = *(v328 + 1052);
                                                                                    *(v328 + 1052) = v327;
                                                                                    v330 = *(v315 + 8);
                                                                                    if (*v330 || *(v330 + 152) || *(v330 + 156))
                                                                                    {
                                                                                      result = CAHDec::addToPatcherList(this, v330, v312 + 1052, *(v330 + 56), 0xFFFFFFFFLL, 7, v329, 4);
                                                                                      if (result)
                                                                                      {
                                                                                        return result;
                                                                                      }
                                                                                    }

                                                                                    v331 = *(this + 33) + v312;
                                                                                    v332 = *(v331 + 1080);
                                                                                    *(v331 + 1080) = 0;
                                                                                    *(*(this + 33) + v312 + 1080) ^= 0x3FFu;
                                                                                    v333 = *(this + 33) + v312;
                                                                                    v334 = *(v333 + 1080);
                                                                                    *(v333 + 1080) = v332;
                                                                                    v335 = *(v315 + 8);
                                                                                    if (*v335 || *(v335 + 152) || *(v335 + 156))
                                                                                    {
                                                                                      result = CAHDec::addToPatcherList(this, v335, v312 + 1080, *(v335 + 56), 0x3FFFFFFFFFFLL, 32, v334, 4);
                                                                                      if (result)
                                                                                      {
                                                                                        return result;
                                                                                      }
                                                                                    }

                                                                                    v336 = *(*(this + 32) + 2648);
                                                                                    v337 = *(this + 33) + v312;
                                                                                    v338 = *(v337 + 884);
                                                                                    *(v337 + 884) = 0;
                                                                                    *(*(this + 33) + v312 + 884) ^= 0xFFFFFF80;
                                                                                    v339 = *(this + 33) + v312;
                                                                                    v340 = *(v339 + 884);
                                                                                    *(v339 + 884) = v338;
                                                                                    if (v336 == 1)
                                                                                    {
                                                                                      v341 = *(v315 + 8);
                                                                                      if (*v341 || *(v341 + 152) || *(v341 + 156))
                                                                                      {
                                                                                        result = CAHDec::addToPatcherList(this, v341, v312 + 884, *(v341 + 64), 0xFFFFFFFFLL, 7, v340, 4);
                                                                                        if (result)
                                                                                        {
                                                                                          return result;
                                                                                        }
                                                                                      }

                                                                                      v342 = *(this + 33) + v312;
                                                                                      v343 = *(v342 + 912);
                                                                                      *(v342 + 912) = 0;
                                                                                      *(*(this + 33) + v312 + 912) ^= 0x3FFu;
                                                                                      v344 = *(this + 33) + v312;
                                                                                      v345 = *(v344 + 912);
                                                                                      *(v344 + 912) = v343;
                                                                                      v346 = *(v315 + 8);
                                                                                      if (*v346 || *(v346 + 152) || *(v346 + 156))
                                                                                      {
                                                                                        result = CAHDec::addToPatcherList(this, v346, v312 + 912, *(v346 + 64), 0x3FFFFFFFFFFLL, 32, v345, 4);
                                                                                        if (result)
                                                                                        {
                                                                                          return result;
                                                                                        }
                                                                                      }

                                                                                      v347 = *(this + 33) + v312;
                                                                                      v348 = *(v347 + 996);
                                                                                      *(v347 + 996) = 0;
                                                                                      *(*(this + 33) + v312 + 996) ^= 0xFFFFFF80;
                                                                                      v349 = *(this + 33) + v312;
                                                                                      v350 = *(v349 + 996);
                                                                                      *(v349 + 996) = v348;
                                                                                      v351 = *(v315 + 8);
                                                                                      if (*v351 || *(v351 + 152) || *(v351 + 156))
                                                                                      {
                                                                                        result = CAHDec::addToPatcherList(this, v351, v312 + 996, *(v351 + 68), 0xFFFFFFFFLL, 7, v350, 4);
                                                                                        if (result)
                                                                                        {
                                                                                          return result;
                                                                                        }
                                                                                      }

                                                                                      v352 = *(this + 33) + v312;
                                                                                      v353 = *(v352 + 1024);
                                                                                      *(v352 + 1024) = 0;
                                                                                      *(*(this + 33) + v312 + 1024) ^= 0x3FFu;
                                                                                      v354 = *(this + 33) + v312;
                                                                                      v355 = *(v354 + 1024);
                                                                                      *(v354 + 1024) = v353;
                                                                                      v356 = *(v315 + 8);
                                                                                      if (*v356 || *(v356 + 152) || *(v356 + 156))
                                                                                      {
                                                                                        v357 = *(v356 + 68);
                                                                                        v358 = v312 | 0x400;
                                                                                        v359 = this;
                                                                                        goto LABEL_342;
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      if (*(v315 + 24) || *(v315 + 176) || *(v315 + 180))
                                                                                      {
                                                                                        result = CAHDec::addToPatcherList(this, (v315 + 24), v312 + 884, 0, 0xFFFFFFFFLL, 7, v340, 4);
                                                                                        if (result)
                                                                                        {
                                                                                          return result;
                                                                                        }
                                                                                      }

                                                                                      v360 = *(this + 33) + v312;
                                                                                      v361 = *(v360 + 912);
                                                                                      *(v360 + 912) = 0;
                                                                                      *(*(this + 33) + v312 + 912) ^= 0x3FFu;
                                                                                      v362 = *(this + 33) + v312;
                                                                                      v363 = *(v362 + 912);
                                                                                      *(v362 + 912) = v361;
                                                                                      if (*(v315 + 24) || *(v315 + 176) || *(v315 + 180))
                                                                                      {
                                                                                        result = CAHDec::addToPatcherList(this, (v315 + 24), v312 + 912, 0, 0x3FFFFFFFFFFLL, 32, v363, 4);
                                                                                        if (result)
                                                                                        {
                                                                                          return result;
                                                                                        }
                                                                                      }

                                                                                      v364 = *(this + 33) + v312;
                                                                                      v365 = *(v364 + 996);
                                                                                      *(v364 + 996) = 0;
                                                                                      *(*(this + 33) + v312 + 996) ^= 0xFFFFFF80;
                                                                                      v366 = *(this + 33) + v312;
                                                                                      v367 = *(v366 + 996);
                                                                                      *(v366 + 996) = v365;
                                                                                      if (*(v315 + 200) || *(v315 + 352) || *(v315 + 356))
                                                                                      {
                                                                                        result = CAHDec::addToPatcherList(this, (v315 + 200), v312 + 996, 0, 0xFFFFFFFFLL, 7, v367, 4);
                                                                                        if (result)
                                                                                        {
                                                                                          return result;
                                                                                        }
                                                                                      }

                                                                                      v368 = *(this + 33) + v312;
                                                                                      v369 = *(v368 + 1024);
                                                                                      *(v368 + 1024) = 0;
                                                                                      *(*(this + 33) + v312 + 1024) ^= 0x3FFu;
                                                                                      v370 = *(this + 33) + v312;
                                                                                      v355 = *(v370 + 1024);
                                                                                      *(v370 + 1024) = v369;
                                                                                      if (*(v315 + 200) || *(v315 + 352) || *(v315 + 356))
                                                                                      {
                                                                                        v358 = v312 | 0x400;
                                                                                        v359 = this;
                                                                                        v356 = v315 + 200;
                                                                                        v357 = 0;
LABEL_342:
                                                                                        result = CAHDec::addToPatcherList(v359, v356, v358, v357, 0x3FFFFFFFFFFLL, 32, v355, 4);
                                                                                        if (result)
                                                                                        {
                                                                                          return result;
                                                                                        }
                                                                                      }
                                                                                    }

                                                                                    result = 0;
                                                                                    v313 += 8;
                                                                                    v312 += 4;
                                                                                  }

                                                                                  while (v312 != 28);
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

  return result;
}

uint64_t CAHDecIxoraAvx::populateDecryptionRegisters(CAHDecIxoraAvx *this)
{
  v1 = *(this + 32);
  if (*(v1 + 2360) == 1)
  {
    v2 = *(this + 33);
    *(v2 + 1380) = *(v2 + 1380) & 0xFFFFFFFE | *(v1 + 2508) & 1;
    if (*(v1 + 2508))
    {
      *(v2 + 1392) = 0x10000000;
      *(v2 + 1396) = *(v1 + 2368);
      *(v2 + 1408) = 0;
      *(v2 + 1400) = 0;
      *(v2 + 1412) = *(v1 + 2372);
      v3 = *(v1 + 2404);
      *(v2 + 1428) = *(v1 + 2388);
      *(v2 + 1444) = v3;
    }

    *(*(this + 33) + 1380) = *(*(this + 33) + 1380) & 0xFFFFFFFD | (2 * (*(v1 + 2512) & 1));
    if (*(v1 + 2512))
    {
      *(v2 + 1460) = 0;
      v4 = *(v1 + 2424);
      *(v2 + 1460) = (*(v1 + 2424) & 1) << 22;
      v5 = ((*(v1 + 2420) & 1) << 23) | ((v4 & 1) << 22) | 0x20000000;
      *(v2 + 1460) = v5;
      if (!*(v1 + 2364))
      {
        ++v5;
      }

      *(v2 + 1460) = v5;
      v6 = *(v1 + 2428);
      v7 = *(v1 + 2460);
      *(v2 + 1480) = *(v1 + 2444);
      *(v2 + 1496) = v7;
      *(v2 + 1464) = v6;
    }

    *(*(this + 33) + 1380) = *(*(this + 33) + 1380) & 0xFFFFFFFB | (4 * (*(v1 + 2516) & 1));
    *(*(this + 33) + 1380) = *(*(this + 33) + 1380) & 0xFFFFFFF7 | (8 * (*(v1 + 2520) & 1));
    *(*(this + 33) + 1380) = *(*(this + 33) + 1380) & 0xFFFFFFEF | (16 * (*(v1 + 2524) & 1));
    *(v2 + 1516) = 0;
    if (*(v1 + 2476) == 2)
    {
      v8 = 805306368;
    }

    else
    {
      v8 = 813694976;
    }

    *(v2 + 1516) = v8;
    memcpy((v2 + 1520), (v1 + 2480), 4 * *(v1 + 2476));
    if (*(v1 + 2516))
    {
      *(v1 + 2516) = 0;
    }
  }

  return 0;
}

uint64_t CAHDecIxoraAvx::populateTiles(CAHDecIxoraAvx *this)
{
  v2 = (*(*(*(this + 32) + 15112) + 140) * *(*(*(this + 32) + 15112) + 136));
  v3 = *(this + *(this + 13) + 34);
  CAHDecIxoraAvx::populateClearTiles(this);
  if (v2)
  {
    v4 = 0;
    v5 = v3 + 1536;
    do
    {
      CAHDecCatnipAvx::populateTileRegisters(this, v5, v4++);
      v5 += 12;
    }

    while (v2 != v4);
  }

  return 0;
}

uint64_t CAHDecIxoraAvx::populateAvxVPDependency(CAVDAvxDecoder **this)
{
  if (CAVDAvxDecoder::isParallelDecode(this[32]))
  {
    v2 = 0;
  }

  else
  {
    v2 = 32;
  }

  *(this[33] + 345) = *(this[33] + 345) & 0xFFFFFFDF | v2;
  *(this[33] + 345) &= 0xFFFFF83F;
  *(this[33] + 345) &= 0xFFFF07FF;
  *(this[33] + 346) = 0;
  v3 = this[33];
  v4 = *(v3 + 345);
  if ((v4 & 0x20) != 0)
  {
    *(v3 + 345) = v4 & 0xFFFF07FF | ((((*(*(*(this[32] + 4702) + 1920) + 2024) << 11) + 2048) >> 8) >> 3 << 11);
    v3 = this[33];
    v4 = *(v3 + 345);
  }

  *(v3 + 345) = v4 & 0xFFFFF83F | (((((*(*(this[32] + 1889) + 79296) << 6) + 64) >> 6) & 0x1F) << 6);
  v5 = this[32];
  v6 = *(v5 + 1889);
  if (*(v6 + 79312) || *(v6 + 79304))
  {
    *(this[33] + 346) |= 1u;
    v5 = this[32];
    v6 = *(v5 + 1889);
    if (*(v6 + 79312))
    {
      *(this[33] + 346) = *(this[33] + 346) & 0xFFFFFFC1 | (2 * (((2 * *(*(*(v5 + 4702) + 1920) + 2024) + 2) >> 1) & 0x1F));
      v5 = this[32];
      v6 = *(v5 + 1889);
    }

    if (*(v6 + 79304))
    {
      *(this[33] + 346) = *(this[33] + 346) & 0xFFFFF83F | (((((*(*(*(*(v5 + 4702) + 1912) + 504) + 184) << 6) + 64) >> 6) & 0x1F) << 6);
      v5 = this[32];
      v6 = *(v5 + 1889);
    }
  }

  if ((*(v6 + 128) & 1) == 0)
  {
    *(this[33] + 346) |= 0x800u;
    *(this[33] + 346) = *(this[33] + 346) & 0xFFFE0FFF | (((((*(*(*(this[32] + 4702) + 1920) + 2024) << 12) + 4096) >> 12) & 0x1F) << 12);
    v5 = this[32];
  }

  if (*(*(v5 + 4702) + 1957) == 1)
  {
    v7 = *(v5 + 1889);
    if (v7[9820])
    {
      *(this[33] + 346) |= 0x800u;
      *(this[33] + 346) = *(this[33] + 346) & 0xFFC1FFFF | (((((*(*(this[32] + 1889) + 78744) << 17) + 0x20000) >> 17) & 0x1F) << 17);
      v7 = *(this[32] + 1889);
    }

    if (v7[9848])
    {
      *(this[33] + 346) |= 0x800u;
      *(this[33] + 346) = *(this[33] + 346) & 0xF83FFFFF | (((((*(*(this[32] + 1889) + 78968) << 22) + 0x400000) >> 22) & 0x1F) << 22);
      v7 = *(this[32] + 1889);
    }

    if (v7[9876])
    {
      *(this[33] + 346) |= 0x800u;
      *(this[33] + 346) = (*(this[33] + 346) & 0x7FFFFFF | (*(*(this[32] + 1889) + 79192) << 27)) + 0x8000000;
    }
  }

  return 0;
}

uint64_t CAHDecIxoraAvx::updateCommonRegisters(CAHDecIxoraAvx *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -889266515;
  return 0;
}

uint64_t CAHDecIxoraAvx::populateSequenceRegisters(CAHDecIxoraAvx *this)
{
  v2 = *(this + 32);
  v1 = *(this + 33);
  v3 = *(v2 + 15112);
  v4 = *(v2 + 37616);
  *(v1 + 40) = 0;
  v5 = *(v3 + 8) - 1;
  *(v1 + 40) = v5;
  *(v1 + 40) = (v5 | (*(v3 + 12) << 16)) - 0x10000;
  *(v1 + 44) = 0;
  v6 = *(v4 + 80) & 1;
  *(v1 + 44) = v6;
  v7 = v6 & 0xFFFFFFF1 | (2 * (*(v4 + 76) & 7));
  *(v1 + 44) = v7;
  v8 = v7 & 0xFFFFFFEF | (16 * (*(v4 + 72) & 1));
  *(v1 + 44) = v8;
  v9 = v8 & 0xFFFFFFDF | (32 * (*(v4 + 96) & 1));
  *(v1 + 44) = v9;
  v10 = v9 & 0xFFFFFFBF | ((*(v4 + 95) & 1) << 6);
  *(v1 + 44) = v10;
  v11 = v10 & 0xFFFFFF7F | ((*(v4 + 94) & 1) << 7);
  *(v1 + 44) = v11;
  v12 = v11 & 0xFFFFFEFF | ((*(v4 + 93) & 1) << 8);
  *(v1 + 44) = v12;
  v13 = v12 & 0xFFFFFDFF | ((*(v4 + 92) & 1) << 9);
  *(v1 + 44) = v13;
  v14 = v13 & 0xFFFFFBFF | ((*(v4 + 60) == 15) << 10);
  *(v1 + 44) = v14;
  v15 = v14 & 0xFFFFF7FF | ((*(v4 + 1942) & 1) << 11);
  *(v1 + 44) = v15;
  v16 = v15 & 0xFFF87FFF | ((*(v3 + 58) & 0xF) << 15);
  *(v1 + 44) = v16;
  v17 = v16 & 0xFF87FFFF | ((*(v3 + 57) & 0xF) << 19);
  *(v1 + 44) = v17;
  *(v1 + 44) = v17 & 0xFCFFFFFF | ((*(v3 + 56) & 3) << 24);
  return 0;
}

uint64_t CAHDecIxoraAvx::getUpscaleConvolveStep(CAHDecIxoraAvx *this, int a2, int a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    return ((a3 / 2 + (a2 << 14)) / a3);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "int32_t CAHDecIxoraAvx::getUpscaleConvolveStep(int, int)";
    v6 = 1024;
    v7 = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: invalid out_length %d\n", &v4, 0x12u);
  }

  return 0xFFFFFFFFLL;
}

uint64_t CAHDecIxoraAvx::getUpscaleConvolveX0(CAHDecIxoraAvx *this, int a2, int a3, int a4)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    return ((((a2 - a3) << 13) + a3 / 2) / a3 - ((a4 * a3 - (a2 << 14) + ((a4 * a3 - (a2 << 14)) >> 31)) >> 1) + 128) & 0x3FFF;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "int32_t CAHDecIxoraAvx::getUpscaleConvolveX0(int, int, int32_t)";
    v7 = 1024;
    v8 = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: invalid out_length %d\n", &v5, 0x12u);
  }

  return 0xFFFFFFFFLL;
}

uint64_t CAHDecIxoraAvx::populatePictureRegisters(CAHDecIxoraAvx *this)
{
  v214 = *MEMORY[0x277D85DE8];
  v1 = *(this + 32);
  v2 = *(this + 33);
  v3 = *(v1 + 15112);
  v4 = *(v1 + 37616);
  *(v2 + 48) = 766509056;
  v5 = ((*(v1 + 2652) & 1) << 19) | 0x2DB00000;
  *(v2 + 48) = v5;
  v6 = v5 & 0xFFFBFFFF | ((*(v1 + 2653) & 1) << 18);
  *(v2 + 48) = v6;
  v7 = v6 & 0xFFFDFFFF | ((*(v1 + 2654) & 1) << 17);
  *(v2 + 48) = v7;
  if (*(v3 + 128) == 1)
  {
    v8 = (*(v4 + 1956) ^ 1) << 13;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 | v7;
  *(v2 + 48) = v9;
  v10 = v9 | ((*(*(this + 32) + 2644) != 0) << 12);
  *(v2 + 48) = v10;
  v11 = v10 & 0xFFFFF00F | ((*(*(this + 32) + 2644) == 1) << 10) | 0x2E0;
  *(v2 + 48) = v11;
  v12 = v11 & 0xFFFFFFE3 | (4 * (*(v3 + 78516) & 3));
  *(v2 + 48) = v12;
  *(v2 + 48) = v12 & 0xFFFFFFFC | *(v3 + 78520) & 3;
  *(v2 + 52) = 0;
  if (*(v4 + 1956))
  {
    v13 = 318767104;
  }

  else
  {
    v13 = 50331648;
  }

  *(v2 + 52) = v13;
  v14 = *(v3 + 24);
  v15 = *(v3 + 12);
  *(v2 + 56) = 0;
  if (*(v4 + 1956))
  {
    v15 = (v15 + 7) & 0xFFF8;
  }

  v16 = (v15 << 16) - 0x10000;
  *(v2 + 56) = v16;
  if (*(v4 + 1956))
  {
    LOWORD(v14) = (v14 + 7) & 0xFFF8;
  }

  *(v2 + 60) = 0;
  *(v2 + 64) = 0;
  *(v2 + 56) = v16 & 0xFFFF0000 | (v14 - 1);
  v17 = *(v3 + 128) << 31;
  *(v2 + 64) = v17;
  v18 = v17 & 0x807FFFFF | (*(v4 + 1876) << 23);
  *(v2 + 64) = v18;
  v19 = v18 & 0xFF8FFFFF | ((*(v4 + 1896) & 7) << 20);
  *(v2 + 64) = v19;
  v20 = v19 & 0xFFF1FFFF | ((*(v4 + 1900) & 7) << 17);
  *(v2 + 64) = v20;
  v21 = v20 & 0xFFFEFFFF | ((*(*(*(this + 32) + 15112) + 79300) & 1) << 16);
  *(v2 + 64) = v21;
  v22 = v21 & 0xFFFF7FFF | ((*(v4 + 2284) & 1) << 15);
  *(v2 + 64) = v22;
  v23 = *(v4 + 2284);
  if (*(v4 + 2284))
  {
    v23 = (*(v4 + 2285) & 1) << 14;
  }

  v24 = v23 | v22 & 0xFFFFBFFF;
  *(v2 + 64) = v24;
  v25 = *(v4 + 2284);
  if (*(v4 + 2284))
  {
    v25 = (*(v4 + 2287) & 1) << 13;
  }

  v26 = v25 | v24 & 0xFFFFDFFF;
  *(v2 + 64) = v26;
  v27 = v26 & 0xFFFFEFFF | ((*(v4 + 1957) & 1) << 12);
  *(v2 + 64) = v27;
  if (*(v3 + 128))
  {
    v28 = 0;
  }

  else
  {
    v28 = *(v4 + 1958) << 10;
  }

  v29 = v28 | v27 & 0xFFFFFBFF;
  *(v2 + 64) = v29;
  v30 = v29 & 0xFFFFFDFF | ((*(v4 + 1962) & 1) << 9);
  *(v2 + 64) = v30;
  v31 = v30 & 0xFFFFFEFF | ((*(v4 + 1941) & 1) << 8);
  *(v2 + 64) = v31;
  if (*(v3 + 128))
  {
    v32 = 128;
  }

  else
  {
    v32 = *(v4 + 1948) << 7;
  }

  v33 = 0;
  v34 = v32 | v31 & 0xFFFFFF7F;
  *(v2 + 64) = v34;
  v35 = v34 & 0xFFFFFFBF | ((*(v4 + 1956) & 1) << 6);
  *(v2 + 64) = v35;
  v36 = v35 & 0xFFFFFFDF | (32 * (*(v4 + 1959) & 1));
  *(v2 + 64) = v36;
  v37 = v36 & 0xFFFFFFEF | (16 * (*(v4 + 1892) & 1));
  *(v2 + 64) = v37;
  v38 = v37 & 0xFFFFFFF7 | (8 * (*(v4 + 1960) & 1));
  *(v2 + 64) = v38;
  v39 = v38 & 0xFFFFFFFB | (4 * (*(v4 + 1961) & 1));
  *(v2 + 64) = v39;
  *(v2 + 64) = v39 & 0xFFFFFFFC | *(v4 + 1964) & 3;
  v40 = xmmword_27775BCE0;
  v41 = xmmword_27775BCD0;
  v42 = vdupq_n_s64(7uLL);
  v43 = vdupq_n_s64(1uLL);
  v44 = vdupq_n_s64(4uLL);
  do
  {
    v45 = vaddq_s64(v41, v43);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v42, v41)), *v40.i8).u8[0])
    {
      *(&v207 + v33) = v45.i32[0];
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v41)), *&v40).i8[2])
    {
      *(&v207 + v33 + 4) = v45.i32[2];
    }

    v46 = vaddq_s64(v40, v43);
    if (vuzp1_s16(*&v40, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v40))).i32[1])
    {
      *(&v209 + v33) = v46.i32[0];
      *(&v210 + v33) = v46.i32[2];
    }

    v40 = vaddq_s64(v40, v44);
    v41 = vaddq_s64(v41, v44);
    v33 += 16;
  }

  while (v33 != 32);
  v47 = 0;
  v48 = 1;
  do
  {
    if (v47 <= 5)
    {
      v49 = *(v3 + 79224);
      v50 = v48;
      do
      {
        if (v49 && *(v49 + 8 * v47) == *(v49 + 8 * v50))
        {
          *(&v207 + v50) = *(&v207 + v47);
        }

        ++v50;
      }

      while (v50 != 7);
    }

    ++v47;
    ++v48;
  }

  while (v47 != 7);
  v51 = 0;
  *(v2 + 68) = 0;
  if ((*(v3 + 128) & 1) == 0)
  {
    v51 = *(v4 + 2192) << 29;
  }

  v52 = 0;
  *(v2 + 68) = v51;
  v53 = ((v207 & 7) << 25) | ((*(v4 + 1872) != 0) << 28) | ((v208 & 7) << 22) | ((v209 & 7) << 19) | ((v210 & 7) << 16) | ((v211 & 7) << 13) | ((v212 & 7) << 10) | ((v213 & 7) << 7) | v51;
  *(v2 + 68) = v53;
  v54 = v53 & 0xFFFFFFBF | ((*(v4 + 2116) & 1) << 6);
  *(v2 + 68) = v54;
  v55 = v54 & 0xFFFFFFDF | (32 * (*(v4 + 2120) & 1));
  *(v2 + 68) = v55;
  v56 = v55 & 0xFFFFFFEF | (16 * (*(v4 + 2124) & 1));
  *(v2 + 68) = v56;
  v57 = v56 & 0xFFFFFFF7 | (8 * (*(v4 + 2128) & 1));
  *(v2 + 68) = v57;
  v58 = v57 & 0xFFFFFFFB | (4 * (*(v4 + 2132) & 1));
  *(v2 + 68) = v58;
  v59 = v58 & 0xFFFFFFFD | (2 * (*(v4 + 2136) & 1));
  *(v2 + 68) = v59;
  *(v2 + 68) = v59 & 0xFFFFFFFE | *(v4 + 2140) & 1;
  v60 = (v2 + 104);
  v61 = (v4 + 2300);
  v62 = (v4 + 2368);
  do
  {
    *(v60 - 8) = 0;
    v63 = (*(v4 + 2524 + 4 * v52) & 1) << 16;
    *(v60 - 8) = v63;
    v64 = v63 | ((*v61 != 0) << 15);
    *(v60 - 8) = v64;
    v65 = v64 | ((*(v61 - 1) != 0) << 14);
    *(v60 - 8) = v65;
    v66 = v65 | ((*(v61 - 2) != 0) << 13);
    *(v60 - 8) = v66;
    v67 = v66 & 0xFFFFE3FF | ((*v62 & 7) << 10);
    *(v60 - 8) = v67;
    v68 = v67 | ((*(v61 - 7) != 0) << 9);
    *(v60 - 8) = v68;
    *(v60 - 8) = v68 & 0xFFFFFE00 | *(v62 - 5) & 0x1FF;
    *v60 = 0;
    v69 = (*(v61 - 6) != 0) << 31;
    *v60 = v69;
    v70 = v69 & 0x80FFFFFF | ((*(v62 - 4) & 0x7F) << 24);
    *v60 = v70;
    v71 = v70 | ((*(v61 - 5) != 0) << 23);
    *v60 = v71;
    v72 = v71 & 0xFF80FFFF | ((*(v62 - 3) & 0x7F) << 16);
    *v60 = v72;
    v73 = v72 | ((*(v61 - 4) != 0) << 15);
    *v60 = v73;
    v74 = v73 & 0xFFFF80FF | ((*(v62 - 2) & 0x7F) << 8);
    *v60 = v74;
    v75 = v74 | ((*(v61 - 3) != 0) << 7);
    *v60 = v75;
    ++v52;
    *v60++ = v75 & 0xFFFFFF80 | *(v62 - 1) & 0x7F;
    v61 += 8;
    v62 += 8;
  }

  while (v52 != 8);
  *(v2 + 136) = 0x20000;
  v76 = (v2 + 140);
  v77 = v3 + 78544;
  v78 = 3;
  do
  {
    *v76 = 0;
    v79 = *(v77 - 16) << 29;
    *v76 = v79;
    v80 = v79 & 0xFF00FFFF | (*(v77 - 12) << 16);
    *v76 = v80;
    v81 = v80 & 0xFFFF00FF | (*(v77 - 8) << 8);
    *v76 = v81;
    *v76 = v81 | *(v77 - 4);
    v76[3] = 0;
    v82 = *v77 << 24;
    v76[3] = v82;
    v83 = v82 & 0xFF00FFFF | (*(v77 + 4) << 16);
    v76[3] = v83;
    v84 = v83 & 0xFFFF00FF | (*(v77 + 8) << 8);
    v76[3] = v84;
    v76[3] = v84 | *(v77 + 12);
    ++v76;
    v77 += 224;
    --v78;
  }

  while (v78);
  *(v2 + 164) = 0;
  v85 = *(v4 + 3160) << 31;
  *(v2 + 164) = v85;
  v86 = v85 & 0x9FFFFFFF | ((*(v3 + 79200) & 3) << 29);
  *(v2 + 164) = v86;
  v87 = v86 & 0xE01FFFFF | (*(v4 + 2244) << 21);
  *(v2 + 164) = v87;
  v88 = v87 & 0xFFE03FFF | ((*(v4 + 2248) & 0x7F) << 14);
  *(v2 + 164) = v88;
  v89 = v88 & 0xFFFFC07F | ((*(v4 + 2252) & 0x7F) << 7);
  *(v2 + 164) = v89;
  *(v2 + 164) = v89 & 0xFFFFFF80 | *(v4 + 2260) & 0x7F;
  *(v2 + 168) = 0;
  v90 = (*(v4 + 2256) & 0x7F) << 20;
  *(v2 + 168) = v90;
  v91 = v90 & 0xFFF01FFF | ((*(v4 + 2264) & 0x7F) << 13);
  *(v2 + 168) = v91;
  v92 = v91 | (*(v4 + 2268) << 12);
  *(v2 + 168) = v92;
  v93 = v92 & 0xFFFFF0FF | ((*(v4 + 2272) & 0xF) << 8);
  *(v2 + 168) = v93;
  v94 = v93 & 0xFFFFFF0F | (16 * (*(v4 + 2276) & 0xF));
  *(v2 + 168) = v94;
  *(v2 + 168) = v94 & 0xFFFFFFF0 | *(v4 + 2280) & 0xF;
  *(v2 + 172) = 0;
  if (*(v4 + 1956))
  {
    v95 = 0;
  }

  else
  {
    v95 = *(v4 + 3160);
    if (v95)
    {
      v95 = *(v4 + 3168) << 31;
      *(v2 + 172) = v95;
      if (*(v4 + 3168))
      {
        v96 = ((*(v4 + 3176) & 1) << 28) | v95;
        *(v2 + 172) = v96;
        v95 = ((*(v3 + 79204) & 3) << 29) | v96;
        *(v2 + 172) = v95;
      }
    }
  }

  if ((*(v4 + 1956) & 1) == 0 && (*(v4 + 1962) & 1) == 0)
  {
    v97 = v95 | ((*(v4 + 2216) & 1) << 27);
    *(v2 + 172) = v97;
    v98 = v97 & 0xF8FFFFFF | ((*(v4 + 2212) & 7) << 24);
    *(v2 + 172) = v98;
    v99 = v98 & 0xFF03FFFF | ((*(v4 + 2196) & 0x3F) << 18);
    *(v2 + 172) = v99;
    v100 = v99 & 0xFFFC0FFF | ((*(v4 + 2200) & 0x3F) << 12);
    *(v2 + 172) = v100;
    if (*(v4 + 2196) || (v101 = *(v4 + 2200)) != 0)
    {
      v101 = (*(v4 + 2204) & 0x3F) << 6;
    }

    v102 = v101 | v100 & 0xFFFFF03F;
    *(v2 + 172) = v102;
    if (*(v4 + 2196) || (v103 = *(v4 + 2200)) != 0)
    {
      v103 = *(v4 + 2208) & 0x3F;
    }

    *(v2 + 172) = v103 | v102 & 0xFFFFFFC0;
    if (!*(v3 + 56))
    {
      *(v2 + 172) = v100 & 0xFFFFF000;
    }
  }

  *(v2 + 176) = 0;
  v104 = (*(v4 + 2226) & 0x7F) << 21;
  *(v2 + 176) = v104;
  v105 = v104 & 0xFFE03FFF | ((*(v4 + 2227) & 0x7F) << 14);
  *(v2 + 176) = v105;
  v106 = v105 & 0xFFFFC07F | ((*(v4 + 2228) & 0x7F) << 7);
  *(v2 + 176) = v106;
  *(v2 + 176) = v106 & 0xFFFFFF80 | *(v4 + 2229) & 0x7F;
  *(v2 + 180) = 0;
  v107 = (*(v4 + 2230) & 0x7F) << 21;
  *(v2 + 180) = v107;
  v108 = v107 & 0xFFE03FFF | ((*(v4 + 2231) & 0x7F) << 14);
  *(v2 + 180) = v108;
  v109 = v108 & 0xFFFFC07F | ((*(v4 + 2232) & 0x7F) << 7);
  *(v2 + 180) = v109;
  *(v2 + 180) = v109 & 0xFFFFFF80 | *(v4 + 2233) & 0x7F;
  *(v2 + 184) = 0;
  LOBYTE(v109) = *(v4 + 2236);
  *(v2 + 184) = (v109 & 0x7F) << 7;
  *(v2 + 184) = *(v4 + 2237) & 0x7F | ((v109 & 0x7F) << 7);
  *(v2 + 188) = 0;
  v110 = (v2 + 188);
  *(v2 + 196) = 0;
  if (*(v4 + 99) && (*(v4 + 1962) & 1) == 0 && (*(v4 + 1956) & 1) == 0)
  {
    *v110 = 0x10000000;
    v111 = ((*(v4 + 3180) << 26) + 0x4000000) & 0xC000000 | 0x10000000;
    *v110 = v111;
    v112 = v111 & 0xFCFFFFFF | ((*(v4 + 3184) & 3) << 24);
    *v110 = v112;
    v113 = v112 & 0xFF0FFFFF | ((*(v4 + 3192) & 0xF) << 20);
    *v110 = v113;
    v114 = v113 & 0xFFF3FFFF | ((*(v4 + 3256) & 3) << 18);
    *v110 = v114;
    v115 = v114 & 0xFFFC3FFF | ((*(v4 + 3320) & 0xF) << 14);
    *v110 = v115;
    v116 = v115 & 0xFFFFCFFF | ((*(v4 + 3384) & 3) << 12);
    *v110 = v116;
    if (*(v4 + 3188) < 2)
    {
      v117 = 0;
    }

    else
    {
      v117 = (*(v4 + 3196) & 0xF) << 8;
    }

    v118 = v117 | v116 & 0xFFFFF0FF;
    *v110 = v118;
    if (*(v4 + 3188) < 2)
    {
      v119 = 0;
    }

    else
    {
      v119 = (*(v4 + 3260) & 3) << 6;
    }

    v120 = v119 | v118 & 0xFFFFFF3F;
    *v110 = v120;
    if (*(v4 + 3188) < 2)
    {
      v121 = 0;
    }

    else
    {
      v121 = 4 * (*(v4 + 3324) & 0xF);
    }

    v122 = v121 | v120 & 0xFFFFFFC3;
    *v110 = v122;
    if (*(v4 + 3188) < 2)
    {
      v123 = 0;
    }

    else
    {
      v123 = *(v4 + 3388) & 3;
    }

    *v110 = v123 | v122 & 0xFFFFFFFC;
    if (*(v4 + 3188) <= 2)
    {
      v124 = 0;
    }

    else
    {
      v124 = (*(v4 + 3200) & 0xF) << 20;
    }

    *(v2 + 192) = v124;
    if (*(v4 + 3188) < 3)
    {
      v125 = 0;
    }

    else
    {
      v125 = (*(v4 + 3264) & 3) << 18;
    }

    v126 = v125 | v124;
    *(v2 + 192) = v126;
    if (*(v4 + 3188) < 3)
    {
      v127 = 0;
    }

    else
    {
      v127 = (*(v4 + 3328) & 0xF) << 14;
    }

    v128 = v127 | v126;
    *(v2 + 192) = v128;
    if (*(v4 + 3188) < 3)
    {
      v129 = 0;
    }

    else
    {
      v129 = (*(v4 + 3392) & 3) << 12;
    }

    v130 = v129 | v128;
    *(v2 + 192) = v130;
    if (*(v4 + 3188) <= 3)
    {
      v131 = 0;
    }

    else
    {
      v131 = (*(v4 + 3204) & 0xF) << 8;
    }

    v132 = v131 | v130;
    *(v2 + 192) = v132;
    if (*(v4 + 3188) < 4)
    {
      v133 = 0;
    }

    else
    {
      v133 = (*(v4 + 3268) & 3) << 6;
    }

    v134 = v133 | v132 & 0xFFFFFF3F;
    *(v2 + 192) = v134;
    if (*(v4 + 3188) < 4)
    {
      v135 = 0;
    }

    else
    {
      v135 = 4 * (*(v4 + 3332) & 0xF);
    }

    v136 = v135 | v134 & 0xFFFFFFC3;
    *(v2 + 192) = v136;
    if (*(v4 + 3188) < 4)
    {
      v137 = 0;
    }

    else
    {
      v137 = *(v4 + 3396) & 3;
    }

    *(v2 + 192) = v137 | v136 & 0xFFFFFFFC;
    if (*(v4 + 3188) <= 4)
    {
      v138 = 0;
    }

    else
    {
      v138 = (*(v4 + 3208) & 0xF) << 20;
    }

    *(v2 + 196) = v138;
    if (*(v4 + 3188) < 5)
    {
      v139 = 0;
    }

    else
    {
      v139 = (*(v4 + 3272) & 3) << 18;
    }

    v140 = v139 | v138;
    *(v2 + 196) = v140;
    if (*(v4 + 3188) < 5)
    {
      v141 = 0;
    }

    else
    {
      v141 = (*(v4 + 3336) & 0xF) << 14;
    }

    v142 = v141 | v140;
    *(v2 + 196) = v142;
    if (*(v4 + 3188) < 5)
    {
      v143 = 0;
    }

    else
    {
      v143 = (*(v4 + 3400) & 3) << 12;
    }

    v144 = v143 | v142;
    *(v2 + 196) = v144;
    if (*(v4 + 3188) <= 5)
    {
      v145 = 0;
    }

    else
    {
      v145 = (*(v4 + 3212) & 0xF) << 8;
    }

    v146 = v145 | v144;
    *(v2 + 196) = v146;
    if (*(v4 + 3188) < 6)
    {
      v147 = 0;
    }

    else
    {
      v147 = (*(v4 + 3276) & 3) << 6;
    }

    v148 = v147 | v146 & 0xFFFFFF3F;
    *(v2 + 196) = v148;
    if (*(v4 + 3188) < 6)
    {
      v149 = 0;
    }

    else
    {
      v149 = 4 * (*(v4 + 3340) & 0xF);
    }

    v150 = v149 | v148 & 0xFFFFFFC3;
    *(v2 + 196) = v150;
    if (*(v4 + 3188) < 6)
    {
      v151 = 0;
    }

    else
    {
      v151 = *(v4 + 3404) & 3;
    }

    *(v2 + 196) = v151 | v150 & 0xFFFFFFFC;
    if (*(v4 + 3188) <= 6)
    {
      v152 = 0;
    }

    else
    {
      v152 = (*(v4 + 3216) & 0xF) << 20;
    }

    *(v2 + 200) = v152;
    if (*(v4 + 3188) < 7)
    {
      v153 = 0;
    }

    else
    {
      v153 = (*(v4 + 3280) & 3) << 18;
    }

    v154 = v153 | v152;
    *(v2 + 200) = v154;
    if (*(v4 + 3188) < 7)
    {
      v155 = 0;
    }

    else
    {
      v155 = (*(v4 + 3344) & 0xF) << 14;
    }

    v156 = v155 | v154;
    *(v2 + 200) = v156;
    if (*(v4 + 3188) < 7)
    {
      v157 = 0;
    }

    else
    {
      v157 = (*(v4 + 3408) & 3) << 12;
    }

    v158 = v157 | v156;
    *(v2 + 200) = v158;
    if (*(v4 + 3188) <= 7)
    {
      v159 = 0;
    }

    else
    {
      v159 = (*(v4 + 3220) & 0xF) << 8;
    }

    v160 = v159 | v158;
    *(v2 + 200) = v160;
    if (*(v4 + 3188) < 8)
    {
      v161 = 0;
    }

    else
    {
      v161 = (*(v4 + 3284) & 3) << 6;
    }

    v162 = v161 | v160 & 0xFFFFFF3F;
    *(v2 + 200) = v162;
    if (*(v4 + 3188) < 8)
    {
      v163 = 0;
    }

    else
    {
      v163 = 4 * (*(v4 + 3348) & 0xF);
    }

    v164 = v163 | v162 & 0xFFFFFFC3;
    *(v2 + 200) = v164;
    if (*(v4 + 3188) < 8)
    {
      v165 = 0;
    }

    else
    {
      v165 = *(v4 + 3412) & 3;
    }

    *(v2 + 200) = v165 | v164 & 0xFFFFFFFC;
  }

  if (*(v4 + 98))
  {
    v166 = (v2 + 204);
    if (*(v4 + 2172) != 8)
    {
      *v166 = 0x80000000;
      v167 = ((*(v4 + 2172) << 28) - 0x10000000) | 0x80000000;
      goto LABEL_151;
    }
  }

  else
  {
    v166 = (v2 + 204);
  }

  v167 = 0;
  *v166 = 0;
LABEL_151:
  *(v2 + 204) = v167;
  *(v2 + 204) = (*(v4 + 2164) - 1) | v167;
  UpscaleConvolveStep = CAHDecIxoraAvx::getUpscaleConvolveStep(this, *(v4 + 2176), *(v4 + 2164));
  v169 = UpscaleConvolveStep;
  UpscaleConvolveX0 = CAHDecIxoraAvx::getUpscaleConvolveX0(UpscaleConvolveStep, *(v4 + 2176), *(v4 + 2164), UpscaleConvolveStep);
  *(v2 + 208) = v169 & 0x3FFF | ((UpscaleConvolveX0 & 0x3FFF) << 14);
  v171 = (*(v4 + 2176) + 1) >> 1;
  v172 = (*(v4 + 2164) + 1) >> 1;
  v173 = CAHDecIxoraAvx::getUpscaleConvolveStep(UpscaleConvolveX0, v171, v172);
  *(v2 + 212) = v173 & 0x3FFF | ((CAHDecIxoraAvx::getUpscaleConvolveX0(v173, v171, v172, v173) & 0x3FFF) << 14);
  *(v2 + 216) = 0;
  v174 = (*(v4 + 3448) & 3) << 10;
  *(v2 + 216) = v174;
  v175 = *(v3 + 56);
  if (*(v3 + 56))
  {
    v175 = (*(v4 + 3452) & 3) << 8;
  }

  v176 = v175 | v174;
  *(v2 + 216) = v176;
  v177 = *(v3 + 56);
  if (*(v3 + 56))
  {
    v177 = (*(v4 + 3456) & 3) << 6;
  }

  v178 = v177 | v176;
  *(v2 + 216) = v178;
  v179 = (16 * (*(v3 + 79208) & 3)) | v178;
  *(v2 + 216) = v179;
  v180 = (4 * (*(v3 + 79212) & 3)) | v179;
  *(v2 + 216) = v180;
  *(v2 + 216) = v180 & 0xFFC | *(v3 + 79216) & 3;
  *(v2 + 220) = 0;
  v181 = *(v3 + 78496);
  *(v2 + 220) = v181 << 16;
  *(v2 + 220) = *(v3 + 78492) | (v181 << 16);
  *(v2 + 224) = 0;
  v182 = *(v3 + 78504);
  *(v2 + 224) = v182 << 16;
  *(v2 + 224) = *(v3 + 78500) | (v182 << 16);
  if (*(v3 + 128) == 1)
  {
    result = 0;
    if (*(v4 + 1956))
    {
      *(v2 + 368) = (*(v2 + 48) << 18) & 0x1000000 | (((*(v2 + 48) >> 4) & 1) << 25);
      *(v2 + 400) = 0;
      v184 = (((*(v3 + 12) << 16) + 458752) & 0xFFF80000) - 0x10000;
      *(v2 + 400) = v184;
      *(v2 + 400) = (((*(v3 + 8) + 7) & 0xFFF8) + 0xFFFF) | v184;
      *(v2 + 432) = 1073758208;
    }
  }

  else
  {
    v185 = (v2 + 228);
    v186 = -308;
    do
    {
      v187 = v4 + v186;
      if (*(v4 + v186 + 4136) == 1)
      {
        v188 = ((*(v2 + 64) << 21) >> 31) + 14;
      }

      else
      {
        LOBYTE(v188) = 10;
      }

      *v185 = 0;
      v189 = *(v187 + 4136) << 30;
      *v185 = v189;
      v190 = v189 & 0xC0007FFF | (((*(v187 + 4096) >> v188) & 0x7FFF) << 15);
      *v185 = v190;
      *v185 = v190 & 0xFFFF8000 | (*(v187 + 4100) >> v188) & 0x7FFF;
      v185[7] = 0;
      v191 = (*(v187 + 4137) == 0) << 30;
      v185[7] = v191;
      v192 = v191 & 0xC0007FFF | (((*(v187 + 4104) >> 1) & 0x7FFF) << 15);
      v185[7] = v192;
      v185[7] = v192 & 0xFFFF8000 | (*(v187 + 4108) >> 1);
      v185[14] = 0;
      v193 = (*(v187 + 4112) << 14) & 0x3FFF8000;
      v185[14] = v193;
      v185[14] = v193 & 0xFFFF8000 | (*(v187 + 4116) >> 1);
      v185[21] = 0;
      v194 = *(v187 + 4128);
      v185[21] = v194 << 16;
      v185[21] = *(v187 + 4130) | (v194 << 16);
      v185[28] = 0;
      v195 = *(v187 + 4132);
      v185[28] = v195 << 16;
      v185[28] = *(v187 + 4134) | (v195 << 16);
      ++v185;
      v186 += 44;
    }

    while (v186);
    v196 = **(v3 + 79224);
    if (v196)
    {
      v197 = 0;
      v198 = (v2 + 436);
      while (1)
      {
        *(v198 - 16) = 0;
        v199 = (*(v2 + 48) << 18) & 0x1000000 | (((*(v2 + 48) >> 4) & 1) << 25);
        *(v198 - 16) = v199;
        *(v198 - 16) = v199 | *(v196 + 4);
        *(v198 - 8) = 0;
        v200 = (*(v196 + 1768) << 16) - 0x10000;
        *(v198 - 8) = v200;
        *(v198 - 8) = v200 & 0xFFFF0000 | (*(v196 + 1760) - 1);
        *v198 = 0;
        v201 = ((*(v3 + 12) / 2 + (*(v196 + 1768) << 14)) / *(v3 + 12)) << 16;
        *v198 = v201;
        *v198 = v201 & 0xFFFF0000 | ((*(v3 + 8) / 2 + (*(v196 + 1760) << 14)) / *(v3 + 8));
        if (v197 == 6)
        {
          break;
        }

        v196 = *(*(v3 + 79224) + 8 * v197 + 8);
        ++v198;
        ++v197;
        if (!v196)
        {
          v202 = (v197 - 1) < 6;
          goto LABEL_170;
        }
      }

      v202 = 0;
    }

    else
    {
      LODWORD(v197) = 0;
      v202 = 1;
LABEL_170:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v203 = 136315394;
        v204 = "virtual int CAHDecIxoraAvx::populatePictureRegisters()";
        v205 = 1024;
        v206 = v197;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: invalid reference buffer %d\n", &v203, 0x12u);
      }
    }

    return (v202 << 31 >> 31);
  }

  return result;
}

uint64_t CAHDecIxoraAvx::populateClearTiles(CAHDecIxoraAvx *this)
{
  v2 = *(this + 32);
  v3 = *(this + 33);
  v4 = *(v2 + 1889);
  v5 = v4[34];
  *(v3 + 1108) = v4[35];
  *(v3 + 1110) = v5;
  if (CAVDAvxDecoder::isParallelDecode(v2))
  {
    v6 = -1;
  }

  else
  {
    v6 = *(*(*(this + 32) + 37616) + 3156);
  }

  v7 = *(this + 33);
  *(v7 + 1372) = v6;
  v8 = v4[35];
  if (v8)
  {
    v9 = v4 + 16485;
    v10 = (v7 + 1112);
    do
    {
      v11 = *v9++;
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  v12 = v4[34];
  if (v12)
  {
    v13 = v4 + 16420;
    v14 = (v7 + 1242);
    do
    {
      v15 = *v13++;
      *v14++ = v15;
      --v12;
    }

    while (v12);
  }

  return 0;
}

uint64_t CAHDecIxoraAvx::populateAvdWork(CAHDecIxoraAvx *this)
{
  v1 = this;
  v60[2] = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v50 = *(this + 33) + 50688;
  v3 = v2 + 36864;
  v51 = *(v2 + 15112);
  v5 = *(v51 + 34);
  LODWORD(v4) = *(v51 + 35);
  v6 = *(v2 + 37912);
  v52 = (v4 * v5 > 1) & (v6 >> 1);
  if (v52)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = (v6 & 4) != 0 && (*(*(this + *(this + 13) + 34) + 16) & 1) == 0;
  v60[0] = 0;
  v60[1] = 0;
  v59 = 0;
  v9 = *(*(v3 + 752) + 60);
  v47 = *v51;
  v10 = v8 + v7;
  if (((v4 * v5 > 1) & (v6 >> 1)) != 0)
  {
    v11 = 73728;
  }

  else
  {
    v11 = 147456;
  }

  v12 = v8;
  v13 = v50;
  v14 = v8;
  do
  {
    v60[v14++] = v13;
    v13 += v11;
  }

  while (v14 < v10);
  if (v9 == 15)
  {
    v15 = 5;
  }

  else
  {
    v15 = 4;
  }

  v45 = v15;
  if (v5)
  {
    v16 = 0;
    v17 = v60[v8];
    v18 = 0x8E38E38E38E38E39 * ((v17 - v50) >> 2);
    v48 = v51 + 4114;
    v49 = 0;
    v43 = v51 + 8210;
    v42 = v7 - 1;
    v19 = -(v4 * v5);
    v20 = (v51 + 8243);
    v39 = v11;
    v40 = v8 + v7;
    v38 = v19;
    while (!v4)
    {
      v34 = v49 + 1;
LABEL_51:
      v49 = v34;
      if (v34 >= v5)
      {
        goto LABEL_52;
      }
    }

    v21 = 0;
    v46 = v19 + v16;
    v41 = v16;
    v22 = v16;
    v44 = v16;
    while (1)
    {
      v23 = v21;
      v24 = v46 + v21;
      v25 = v22 + v21;
      v54 = 0;
      *(v17 + 4) = *(&v60[-1] + v8);
      *(v17 + 6) = v8;
      *(v17 + 10) = v22 + v21;
      v26 = v22 + v21 ? 4 : 5;
      *(v17 + 12) = v26;
      if (v24 == -1)
      {
        *(v17 + 14) = 262149;
      }

      else
      {
        *(v17 + 14) = 4;
        *(v17 + 16) = (v52 & (v24 == -2)) == 1 ? 4 : 0;
      }

      v53 = 0;
      if (!CAVDAvxDecoder::GetTileMemInfo(*(v1 + 32), v47 + v51[v25 + 18], &v54, &v53))
      {
        return 0xFFFFFFFFLL;
      }

      v27 = v1;
      v28 = 36 * v18;
      v29 = v54;
      if (*v54 || *(v54 + 152) || *(v54 + 156))
      {
        v30 = v53;
        if (HIDWORD(v53) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v56 = "populateAvdWork";
          v57 = 1024;
          v58 = 1643;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v30 = v53;
        }

        result = CAHDec::addToPatcherList(v27, v29, v28 + 50708, v30, 0xFFFFFFFFLL, 0, -1, 4);
        if (result)
        {
          return result;
        }

        v29 = v54;
        if (*v54)
        {
          goto LABEL_38;
        }
      }

      if (*(v29 + 152) || *(v29 + 156))
      {
LABEL_38:
        v32 = v53;
        if (HIDWORD(v53) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v56 = "populateAvdWork";
          v57 = 1024;
          v58 = 1644;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v32 = v53;
        }

        result = CAHDec::addToPatcherList(v27, v29, v28 + 50706, v32, 0x3FFFFFFFFFFLL, 32, -1, 2);
        if (result)
        {
          return result;
        }
      }

      v33 = v48[v25];
      if (HIDWORD(v33))
      {
        v1 = v27;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v56 = "populateAvdWork";
          v57 = 1024;
          v58 = 1646;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v33 = v48[v25];
        }
      }

      else
      {
        v1 = v27;
      }

      *(v17 + 24) = v33;
      *(v17 + 28) = (*(v20 - 1) >> v45) | (*(v43 + v49) >> v45 << 16);
      v22 = v44;
      v34 = v49 + 1;
      v35 = *v20++;
      *(v17 + 32) = ((v35 - 1) >> v45) | ((*(v43 + v49 + 1) - 1) >> v45 << 16);
      ++*(&v60[-1] + v8);
      v21 = v23 + 1;
      v60[v8] += 36;
      if (v52)
      {
        v8 = (v44 + v23 + 1) & v42;
      }

      *(v17 + 8) = v8;
      v17 = v60[v8];
      v18 = 0x8E38E38E38E38E39 * ((v17 - v50) >> 2);
      v4 = *(v51 + 35);
      if (v21 >= v4)
      {
        v5 = *(v51 + 34);
        v16 = v41 + v21;
        LODWORD(v11) = v39;
        v10 = v40;
        v19 = v38;
        v20 = (v51 + 8243);
        goto LABEL_51;
      }
    }
  }

  else
  {
LABEL_52:
    v36 = *(v1 + 33) + 32;
    v37 = 50688;
    do
    {
      *(v36 + 2 * v12 - 6) = *(&v60[-1] + v12);
      *(v36 + 4 * v12++) = v37;
      v37 += v11;
    }

    while (v12 < v10);
    return 0;
  }
}

uint64_t CAHDecIxoraAvx::allocWorkBuf_SPS(CAHDecIxoraAvx *this, int *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 32);
  if (v6 >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v50 = 136315394;
    v51 = "allocWorkBuf_SPS";
    v52 = 1024;
    v53 = 1760;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v50, 0x12u);
  }

  v7 = *(this + 32);
  v8 = v7[9479];
  if (!v8 || (v9 = v7[9480]) == 0)
  {
    v8 = v5;
    v9 = v4;
  }

  v10 = v8 + 31;
  if (v8 < -31)
  {
    v10 = v8 + 62;
  }

  v11 = v10 >> 5;
  v12 = v9 + 31;
  if (v9 < -31)
  {
    v12 = v9 + 62;
  }

  v13 = v12 >> 5;
  v14 = 32 - __clz(v11 - 1);
  if (v11 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = 32 - __clz(v13 - 1);
  if (v13 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = ((32 << (v17 + v15)) + 127) & 0xFFFFFF80;
  if (!v6)
  {
    v27 = 0;
LABEL_27:
    LOBYTE(v28) = 0;
    goto LABEL_28;
  }

  v19 = v8 << (v6 == 3);
  v20 = v19 + 31;
  v21 = v19 + 62;
  if (v20 >= 0)
  {
    v21 = v20;
  }

  v22 = v21 >> 5;
  if (v6 == 1)
  {
    ++v9;
  }

  v23 = v9 >> (v6 == 1);
  v25 = v23 + 15;
  v24 = v23 < -15;
  v26 = v23 + 30;
  if (!v24)
  {
    v26 = v25;
  }

  v27 = v26 >> 4;
  if (v22 <= 1)
  {
    goto LABEL_27;
  }

  v28 = 32 - __clz(v22 - 1);
LABEL_28:
  v29 = 32 - __clz(v27 - 1);
  if (v27 >= 2)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = ((8 << (v30 + v28)) + 127) & 0xFFFFFF80;
  if (!v6)
  {
    v31 = 0;
  }

  *(this + 1436) = v18;
  *(this + 1437) = v31;
  *(this + 1441) = 9168;
  if (*(a2 + 14) == 64)
  {
    v32 = 6;
  }

  else
  {
    v32 = 7;
  }

  if (*(a2 + 14) == 64)
  {
    v33 = 96;
  }

  else
  {
    v33 = 384;
  }

  if (*(a2 + 14) == 64)
  {
    v34 = 8;
  }

  else
  {
    v34 = 10;
  }

  v35 = ((v5 + (1 << v32) - 1) >> v32) * ((v4 + (1 << v32) - 1) >> v32);
  *(this + 1443) = v35 * v33;
  *(this + 1442) = v35 << v34;
  if (v7[662])
  {
LABEL_51:
    v41 = 12944;
    v42 = 11;
    do
    {
      v43 = *(this + 1443);
      if (v43 && CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v41), v43, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_69;
        }

        v50 = 136315650;
        v51 = "allocWorkBuf_SPS";
        v52 = 1024;
        v53 = 1862;
        v54 = 2080;
        v55 = "segMap";
        v48 = MEMORY[0x277D86220];
        goto LABEL_68;
      }

      v41 += 176;
      --v42;
    }

    while (v42);
    v44 = 8248;
    v45 = 11;
    while (1)
    {
      v46 = *(this + 1442);
      if (v46)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v44), v46, 7, 1, 0))
        {
          break;
        }
      }

      v44 += 176;
      if (!--v45)
      {
        return 0;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v50 = 136315650;
      v51 = "allocWorkBuf_SPS";
      v52 = 1024;
      v53 = 1868;
      v54 = 2080;
      v55 = "MvColo";
      v48 = MEMORY[0x277D86220];
      goto LABEL_68;
    }

    goto LABEL_69;
  }

  v36 = 5600;
  v37 = 15;
  while (1)
  {
    v38 = *(this + 1436);
    if (v38 && CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v36 - 2640), v38, 7, 1, 0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_69;
      }

      v50 = 136315650;
      v51 = "allocWorkBuf_SPS";
      v52 = 1024;
      v53 = 1803;
      v54 = 2080;
      v55 = "HdrY";
      v48 = MEMORY[0x277D86220];
      goto LABEL_68;
    }

    v39 = *(this + 1437);
    v40 = *(this + 32);
    if (!v39)
    {
      *(v40 + v36) = 0;
      goto LABEL_50;
    }

    if (CAVDDecoder::allocAVDMem(v40, (v40 + v36), v39, 7, 1, 0))
    {
      break;
    }

LABEL_50:
    v36 += 176;
    if (!--v37)
    {
      goto LABEL_51;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v50 = 136315650;
    v51 = "allocWorkBuf_SPS";
    v52 = 1024;
    v53 = 1808;
    v54 = 2080;
    v55 = "HdrC";
    v48 = MEMORY[0x277D86220];
LABEL_68:
    _os_log_impl(&dword_277606000, v48, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v50, 0x1Cu);
  }

LABEL_69:
  (*(*this + 144))(this);
  return 0xFFFFFFFFLL;
}

void CAHDecIxoraAvx::getPPSWorkBufSize(uint64_t this, unsigned __int8 *a2, char *a3)
{
  v120 = *MEMORY[0x277D85DE8];
  v99 = this;
  v3 = *(*(this + 256) + 37616);
  v109 = *(v3 + 2176);
  v4 = *(v3 + 2180);
  v115 = a2[32];
  v5 = *(v3 + 60);
  v107 = v5 == 15;
  if (v5 == 15)
  {
    v6 = 128;
  }

  else
  {
    v6 = 64;
  }

  v113 = v6;
  if (a2[33] <= a2[34])
  {
    v7 = a2[34];
  }

  else
  {
    v7 = a2[33];
  }

  v8 = (v7 + 9) & 0x1FE;
  v9 = *(v3 + 13932);
  v92 = v7;
  if (v9)
  {
    if (v5 == 15)
    {
      v10 = 800;
    }

    else
    {
      v10 = 400;
    }

    goto LABEL_11;
  }

  this = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (this)
  {
    *buf = 136315394;
    v117 = "getPPSWorkBufSize";
    v118 = 1024;
    v119 = 1899;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
    v9 = *(v3 + 13932);
    if (v5 == 15)
    {
      v10 = 800;
    }

    else
    {
      v10 = 400;
    }

    if (v9)
    {
LABEL_11:
      v11 = 0;
      v12 = v9;
      v13 = *(v3 + 2624);
      v14 = (v3 + 2628);
      do
      {
        v16 = *v14++;
        v15 = v16;
        v17 = (v16 - v13) * v10;
        if (v11 <= v17)
        {
          v11 = v17;
        }

        v13 = v15;
        --v12;
      }

      while (v12);
      v18 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = 0;
  v18 = 1;
LABEL_24:
  v91 = v11;
  v114 = v4;
  if (v115 == 3)
  {
    v19 = 48;
  }

  else
  {
    v19 = 32;
  }

  if (!v115)
  {
    v19 = 16;
  }

  v20 = *(v3 + 2172);
  if (*(v3 + 98))
  {
    v21 = v20 == 8;
  }

  else
  {
    v21 = 1;
  }

  v22 = !v21;
  v100 = v3;
  v108 = (v7 + 9) & 0x1FE;
  v90 = v5;
  if (v18)
  {
    v106 = 0;
    v105 = 0;
    v104 = 0;
    *&v103 = 0;
  }

  else
  {
    v23 = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v24 = 0;
    v96 = (v8 * v19) >> 3;
    if (v5 == 15)
    {
      v25 = 7;
    }

    else
    {
      v25 = 6;
    }

    v98 = *(v3 + 2172);
    v101 = v25;
    v26 = (v20 << v25) >> 3;
    if (!v22)
    {
      v26 = v113;
    }

    v94 = v26;
    v103 = 0u;
    do
    {
      v27 = v22;
      v28 = v9 - 1;
      v29 = v3 + 4 * v23;
      if (v23 == v28)
      {
        v30 = v109 - v24;
      }

      else
      {
        v30 = (*(v29 + 2628) - *(v29 + 2624)) << v101;
      }

      if (v30 > 4096)
      {
        this = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (this)
        {
          *buf = 136315394;
          v117 = "getPPSWorkBufSize";
          v118 = 1024;
          v119 = 1933;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
          v9 = *(v3 + 13932);
          v28 = v9 - 1;
        }
      }

      if (v30 >= -15)
      {
        v31 = v30 + 15;
      }

      else
      {
        v31 = v30 + 30;
      }

      v32 = v31 >> 4;
      v33 = v104;
      if (v104 <= ((v31 >> 4) * v96))
      {
        v33 = (v32 * v96);
      }

      v104 = v33;
      v34 = v23 + 1;
      v35 = *(v29 + 2628);
      v36 = *(v29 + 2624);
      v37 = *(*(*(v99 + 32) + 37616) + 2164);
      if (v37 <= v109)
      {
        v37 = v109;
      }

      v38 = v36 << v101;
      v22 = v27;
      if (v27)
      {
        v38 = ((v36 << v101) * v98) >> 3;
      }

      v39 = v38 + v94 + v94 * (v35 - v36);
      if (v37 < v39)
      {
        v39 = v37;
      }

      *(&v40 + 1) = *(&v103 + 1);
      *&v40 = vadd_s32((*&vmla_s32(0x7F0000007FLL, __PAIR64__(((v39 + 63) >> 6) - (v38 >> 6), (v35 - v36) << v107), 0xC0000002CLL) & 0xFFFFFF80FFFFFF80), *&v103);
      v103 = v40;
      this = CAHDecTansyAvx::calc_lf_above_pix_tile_size(this, v108, v115, v109, v107, v23 == 0, v23 == v28, v36, v35);
      v105 += this;
      v24 += v30;
      v41 = 4 * v32;
      v3 = v100;
      v42 = v106;
      if (v106 <= 4 * (v41 + (v31 >> 4)))
      {
        v42 = 4 * (v41 + (v31 >> 4));
      }

      v106 = v42;
      ++v23;
    }

    while (v34 < v9);
  }

  v43 = *(v3 + 13928);
  v97 = v43;
  if (!v43)
  {
    v64 = 0;
    v72 = 0;
    v95 = 0;
    v112 = 0;
    v69 = v114;
    goto LABEL_81;
  }

  v44 = v3 + 2884;
  v45 = *(v3 + 2884 + 4 * v43);
  v46 = *(v3 + 2884);
  v47 = 0uLL;
  v48 = (v3 + 2888);
  do
  {
    *v110 = v47;
    v50 = *v48++;
    v49 = v50;
    this = CAHDecTansyAvx::calc_lf_left_tile_size(this, 11, 7, v108, v115, v113, v46, v50, v114, v45);
    *(&v47 + 1) = *&v110[2];
    v51 = ((v114 + 63) >> 6) - (v46 << v107);
    v52 = (v50 - v46) << v107;
    if (v50 != v45)
    {
      v51 = v52;
    }

    *&v47 = vmax_s32(*v110, __PAIR64__(72 * v51, this));
    v46 = v49;
    --v43;
  }

  while (v43);
  v95 = *&vadd_s32(*&v47, 0x7F0000007FLL) & 0xFFFFFF80FFFFFF80;
  v53 = v97;
  v89 = v44;
  v54 = *(v44 + 4 * v97);
  v55 = 0;
  v102 = (v114 + 7) >> 6;
  v56 = *(v100 + 2884);
  v57 = 0uLL;
  v58 = (v100 + 2888);
  do
  {
    *v111 = v57;
    v60 = *v58++;
    v59 = v60;
    v61 = CAHDecTansyAvx::calc_lr_left_tile_size(this, 13, 12, v108, v115, v113, v56, v60, v114, v54);
    v62 = v61;
    this = CAHDecTansyAvx::calc_lr_left_tile_size(v61, 6, 6, v108, v115, v113, v56, v60, v114, v54);
    if (v60 == v54)
    {
      v57 = *v111;
      if (v55 > (24 * (v102 - (v56 << v107)) + 24))
      {
        goto LABEL_74;
      }

      v63 = 3 * (v102 + 1 - (v56 << v107));
    }

    else
    {
      v63 = 3 * ((v59 - v56) << v107);
      v57 = *v111;
      if (v55 > (24 * ((v59 - v56) << v107)))
      {
        goto LABEL_74;
      }
    }

    v55 = 8 * v63;
LABEL_74:
    *&v57 = vmax_s32(*&v57, __PAIR64__(this, v62));
    v56 = v59;
    --v53;
  }

  while (v53);
  v64 = (v55 + 127) & 0xFFFFFF80;
  v112 = *&vadd_s32(*&v57, 0x7F0000007FLL) & 0xFFFFFF80FFFFFF80;
  v65 = v97;
  v66 = *(v89 + 4 * v97);
  v67 = *(v100 + 2884);
  v68 = (v100 + 2888);
  v69 = v114;
  do
  {
    v71 = *v68++;
    v70 = v71;
    this = CAHDecIxoraAvx::calc_az_left_tile_size(this, v115, v113, v22, v108, v67, v71, v114, v66);
    if (v53 <= this)
    {
      LODWORD(v53) = this;
    }

    v67 = v70;
    --v65;
  }

  while (v65);
  v72 = (v53 + 127) & 0xFFFFFF80;
  v3 = v100;
LABEL_81:
  v73 = *(*(v99 + 32) + 2644) != 1 || v92 == 0;
  if (v73 || (v115 != 1 ? (v74 = 32) : (v74 = 24), v115 ? (v75 = v74) : (v75 = 16), !CAHDecTansyAvx::isLfPadDis(v99) ? (v76 = 8) : (v76 = 0), v77 = v97, !v97))
  {
    v78 = 0;
    v84 = v106;
    v85 = v105;
    v86 = v104;
    v81 = v91;
  }

  else
  {
    v78 = 0;
    v79 = (v69 + v76 + 15) >> 4;
    v80 = (v97 - 1);
    v81 = v91;
    if (v90 == 15)
    {
      v82 = 3;
    }

    else
    {
      v82 = 2;
    }

    v83 = (v3 + 2888);
    v84 = v106;
    v85 = v105;
    v86 = v104;
    do
    {
      v87 = v79;
      if (v80)
      {
        v87 = *v83 << v82;
      }

      v88 = ((v87 - (*(v83 - 1) << v82)) * v75 + 133) & 0xFFFFFF80;
      if (v78 <= v88)
      {
        v78 = v88;
      }

      ++v83;
      --v80;
      --v77;
    }

    while (v77);
  }

  *a3 = v81;
  if (HIDWORD(v86) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v117 = "getPPSWorkBufSize";
    v118 = 1024;
    v119 = 2023;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
  }

  *(a3 + 1) = v86;
  *(a3 + 2) = v85;
  *(a3 + 12) = v103;
  if (HIDWORD(v84) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v117 = "getPPSWorkBufSize";
    v118 = 1024;
    v119 = 2027;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
  }

  *(a3 + 5) = v84;
  *(a3 + 3) = v95;
  *(a3 + 4) = v112;
  *(a3 + 10) = v64;
  *(a3 + 11) = v72;
  *(a3 + 12) = v78;
}

uint64_t CAHDecIxoraAvx::calc_az_left_tile_size(CAHDecIxoraAvx *this, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9)
{
  if (a3 == 128)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = a7 >= a9 || a6 != 0;
  if (a6 != 0 && a7 >= a9)
  {
    v11 = 8;
  }

  else
  {
    v11 = 0;
  }

  if (!v10)
  {
    v11 = -8;
  }

  v12 = (a8 + 1) >> 1;
  if (a2 == 1)
  {
    v13 = 2;
  }

  else
  {
    v12 = a8;
    v13 = 3;
  }

  v14 = v13 + v9;
  if (a7 < a9)
  {
    v12 = a7 << v14;
  }

  v15 = (v12 - (a6 << v14) + (v11 >> 1) + 3) >> 2;
  if (!a2)
  {
    v15 = 0;
  }

  v16 = v9 + 3;
  if (a7 < a9)
  {
    v17 = a7 << v16;
  }

  else
  {
    v17 = a8;
  }

  v18 = (v17 - (a6 << v16) + v11 + 7) >> 3;
  if (a4)
  {
    v19 = 4;
  }

  else
  {
    v19 = 3;
  }

  return (v15 * ((4 * a5 + 15) & 0xFFFFFFF0) + 8 * a5 * v18) * v19;
}

uint64_t CAHDecIxoraAvx::allocWorkBuf_PPS(CAHDecIxoraAvx *this, void *a2, void *a3, int *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = *(this + 32);
  v7 = *(v6 + 15112);
  if (*a4 > v7[19809])
  {
    v8 = 0;
    v9 = 1;
    while (1)
    {
      v10 = v9;
      v11 = *a4;
      if (v11)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), this + 11 * v8 + 194, v11, 7, 1, 0))
        {
          break;
        }
      }

      v9 = 0;
      v8 = 1;
      if ((v10 & 1) == 0)
      {
        v6 = *(this + 32);
        v7 = *(v6 + 15112);
        v7[19809] = *a4;
        goto LABEL_7;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_103;
    }

    v38 = 136315650;
    v39 = "allocWorkBuf_PPS";
    v40 = 1024;
    v41 = 2082;
    v42 = 2080;
    v43 = "OvpAboveInfo";
    v13 = MEMORY[0x277D86220];
    goto LABEL_102;
  }

LABEL_7:
  v12 = a4[1];
  if (v12 > v7[19810])
  {
    if (v12)
    {
      if (CAVDDecoder::allocAVDMem(v6, this + 216, v12, 7, 1, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v38 = 136315650;
          v39 = "allocWorkBuf_PPS";
          v40 = 1024;
          v41 = 2090;
          v42 = 2080;
          v43 = "IPAbovePixel";
          v13 = MEMORY[0x277D86220];
LABEL_102:
          _os_log_impl(&dword_277606000, v13, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v38, 0x1Cu);
          goto LABEL_103;
        }

        goto LABEL_103;
      }

      v14 = a4[1];
      v6 = *(this + 32);
      v7 = *(v6 + 15112);
    }

    else
    {
      v14 = 0;
    }

    v7[19810] = v14;
  }

  v15 = a4[2];
  if (v15 <= v7[19811])
  {
LABEL_25:
    v17 = a4[3];
    if (v17 > v7[19812])
    {
      if (v17)
      {
        if (CAVDDecoder::allocAVDMem(v6, this + 238, v17, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315650;
            v39 = "allocWorkBuf_PPS";
            v40 = 1024;
            v41 = 2104;
            v42 = 2080;
            v43 = "LfAboveInfo";
            v13 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v18 = a4[3];
        v6 = *(this + 32);
        v7 = *(v6 + 15112);
      }

      else
      {
        v18 = 0;
      }

      v7[19812] = v18;
    }

    v19 = a4[4];
    if (v19 > v7[19813])
    {
      if (v19)
      {
        if (CAVDDecoder::allocAVDMem(v6, this + 282, v19, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315650;
            v39 = "allocWorkBuf_PPS";
            v40 = 1024;
            v41 = 2111;
            v42 = 2080;
            v43 = "RfAboveInfo";
            v13 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v20 = a4[4];
        v6 = *(this + 32);
        v7 = *(v6 + 15112);
      }

      else
      {
        v20 = 0;
      }

      v7[19813] = v20;
    }

    v21 = a4[5];
    if (v21 > v7[19814])
    {
      if (v21)
      {
        if (CAVDDecoder::allocAVDMem(v6, this + 348, v21, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315650;
            v39 = "allocWorkBuf_PPS";
            v40 = 1024;
            v41 = 2118;
            v42 = 2080;
            v43 = "MvAboveInfo";
            v13 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v22 = a4[5];
        v6 = *(this + 32);
        v7 = *(v6 + 15112);
      }

      else
      {
        v22 = 0;
      }

      v7[19814] = v22;
    }

    v23 = a4[6];
    if (v23 > v7[19815])
    {
      if (v23)
      {
        if (CAVDDecoder::allocAVDMem(v6, this + 249, v23, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315650;
            v39 = "allocWorkBuf_PPS";
            v40 = 1024;
            v41 = 2125;
            v42 = 2080;
            v43 = "LfLeftPixel";
            v13 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v24 = a4[6];
        v6 = *(this + 32);
        v7 = *(v6 + 15112);
      }

      else
      {
        v24 = 0;
      }

      v7[19815] = v24;
    }

    v25 = a4[7];
    if (v25 > v7[19816])
    {
      if (v25)
      {
        if (CAVDDecoder::allocAVDMem(v6, this + 260, v25, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315650;
            v39 = "allocWorkBuf_PPS";
            v40 = 1024;
            v41 = 2132;
            v42 = 2080;
            v43 = "LfLeftInfo";
            v13 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v26 = a4[7];
        v6 = *(this + 32);
        v7 = *(v6 + 15112);
      }

      else
      {
        v26 = 0;
      }

      v7[19816] = v26;
    }

    v27 = a4[8];
    if (v27 > v7[19817])
    {
      if (v27)
      {
        if (CAVDDecoder::allocAVDMem(v6, this + 271, v27, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315650;
            v39 = "allocWorkBuf_PPS";
            v40 = 1024;
            v41 = 2139;
            v42 = 2080;
            v43 = "SrLeftPixel";
            v13 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v28 = a4[8];
        v6 = *(this + 32);
        v7 = *(v6 + 15112);
      }

      else
      {
        v28 = 0;
      }

      v7[19817] = v28;
    }

    v29 = a4[9];
    if (v29 > v7[19818])
    {
      if (v29)
      {
        if (CAVDDecoder::allocAVDMem(v6, this + 293, v29, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315650;
            v39 = "allocWorkBuf_PPS";
            v40 = 1024;
            v41 = 2146;
            v42 = 2080;
            v43 = "RfLeftPixel";
            v13 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v30 = a4[9];
        v6 = *(this + 32);
        v7 = *(v6 + 15112);
      }

      else
      {
        v30 = 0;
      }

      v7[19818] = v30;
    }

    v31 = a4[10];
    if (v31 > v7[19819])
    {
      if (v31)
      {
        if (CAVDDecoder::allocAVDMem(v6, this + 304, v31, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315650;
            v39 = "allocWorkBuf_PPS";
            v40 = 1024;
            v41 = 2153;
            v42 = 2080;
            v43 = "RfLeftInfo";
            v13 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v32 = a4[10];
        v6 = *(this + 32);
        v7 = *(v6 + 15112);
      }

      else
      {
        v32 = 0;
      }

      v7[19819] = v32;
    }

    v33 = a4[11];
    if (v33 > v7[19820])
    {
      if (v33)
      {
        if (CAVDDecoder::allocAVDMem(v6, this + 337, v33, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315650;
            v39 = "allocWorkBuf_PPS";
            v40 = 1024;
            v41 = 2160;
            v42 = 2080;
            v43 = "AzLeftPixel";
            v13 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v34 = a4[11];
        v6 = *(this + 32);
        v7 = *(v6 + 15112);
      }

      else
      {
        v34 = 0;
      }

      v7[19820] = v34;
    }

    v35 = a4[12];
    if (v35 <= v7[19821])
    {
      return 0;
    }

    if (v35)
    {
      if (CAVDDecoder::allocAVDMem(v6, this + 326, v35, 7, 1, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v38 = 136315650;
          v39 = "allocWorkBuf_PPS";
          v40 = 1024;
          v41 = 2167;
          v42 = 2080;
          v43 = "SWrLeftPixel";
          v13 = MEMORY[0x277D86220];
          goto LABEL_102;
        }

        goto LABEL_103;
      }

      v37 = a4[12];
      v7 = *(*(this + 32) + 15112);
    }

    else
    {
      v37 = 0;
    }

    result = 0;
    v7[19821] = v37;
    return result;
  }

  if (!v15)
  {
    v16 = 0;
LABEL_24:
    v7[19811] = v16;
    goto LABEL_25;
  }

  if (!CAVDDecoder::allocAVDMem(v6, this + 227, v15, 7, 1, 0))
  {
    v16 = a4[2];
    v6 = *(this + 32);
    v7 = *(v6 + 15112);
    goto LABEL_24;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v38 = 136315650;
    v39 = "allocWorkBuf_PPS";
    v40 = 1024;
    v41 = 2097;
    v42 = 2080;
    v43 = "LfAbovePixel";
    v13 = MEMORY[0x277D86220];
    goto LABEL_102;
  }

LABEL_103:
  (*(*this + 160))(this, a4);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecIxoraAvx::freeWorkBuf_SPS(CAHDecIxoraAvx *this)
{
  if (!*(*(this + 32) + 2648))
  {
    v2 = 5600;
    v3 = 15;
    do
    {
      v4 = *(this + 32);
      v5 = (v4 + v2 - 2640);
      if (*v5)
      {
        CAVDDecoder::deallocAVDMem(v4, v5);
        v6 = (*(this + 32) + v2 - 2640);
        *v6 = 0u;
        v6[1] = 0u;
        v6[2] = 0u;
        v6[3] = 0u;
        v6[4] = 0u;
        v6[5] = 0u;
        v6[6] = 0u;
        v6[7] = 0u;
        v6[8] = 0u;
        v6[9] = 0u;
        v6[10] = 0u;
        v4 = *(this + 32);
      }

      if (*(v4 + v2))
      {
        CAVDDecoder::deallocAVDMem(v4, (v4 + v2));
        v7 = (*(this + 32) + v2);
        *v7 = 0u;
        v7[1] = 0u;
        v7[2] = 0u;
        v7[3] = 0u;
        v7[4] = 0u;
        v7[5] = 0u;
        v7[6] = 0u;
        v7[7] = 0u;
        v7[8] = 0u;
        v7[9] = 0u;
        v7[10] = 0u;
      }

      v2 += 176;
      --v3;
    }

    while (v3);
  }

  v8 = 8248;
  v9 = 11;
  do
  {
    v10 = *(this + 32);
    if (*(v10 + v8))
    {
      CAVDDecoder::deallocAVDMem(v10, (v10 + v8));
      v11 = (*(this + 32) + v8);
      *v11 = 0u;
      v11[1] = 0u;
      v11[2] = 0u;
      v11[3] = 0u;
      v11[4] = 0u;
      v11[5] = 0u;
      v11[6] = 0u;
      v11[7] = 0u;
      v11[8] = 0u;
      v11[9] = 0u;
      v11[10] = 0u;
    }

    v8 += 176;
    --v9;
  }

  while (v9);
  v12 = 12944;
  v13 = 11;
  do
  {
    result = *(this + 32);
    if (*(result + v12))
    {
      result = CAVDDecoder::deallocAVDMem(result, (result + v12));
      v15 = (*(this + 32) + v12);
      *v15 = 0u;
      v15[1] = 0u;
      v15[2] = 0u;
      v15[3] = 0u;
      v15[4] = 0u;
      v15[5] = 0u;
      v15[6] = 0u;
      v15[7] = 0u;
      v15[8] = 0u;
      v15[9] = 0u;
      v15[10] = 0u;
    }

    v12 += 176;
    --v13;
  }

  while (v13);
  return result;
}

double CAHDecIxoraAvx::freeWorkBuf_PPS(CAHDecIxoraAvx *this, _DWORD *a2)
{
  if (!a2 || (v4 = *(*(this + 32) + 15112), *a2 > v4[19809]))
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v6;
      v8 = (this + 176 * v5 + 3104);
      if (*v8)
      {
        CAVDDecoder::deallocAVDMem(*(this + 32), v8);
        result = 0.0;
        *v8 = 0u;
        *(v8 + 1) = 0u;
        *(v8 + 2) = 0u;
        *(v8 + 3) = 0u;
        *(v8 + 4) = 0u;
        *(v8 + 5) = 0u;
        *(v8 + 6) = 0u;
        *(v8 + 7) = 0u;
        *(v8 + 8) = 0u;
        *(v8 + 9) = 0u;
        *(v8 + 10) = 0u;
      }

      v6 = 0;
      v5 = 1;
    }

    while ((v7 & 1) != 0);
    if (!a2)
    {
      goto LABEL_10;
    }

    v4 = *(*(this + 32) + 15112);
  }

  if (a2[1] <= v4[19810])
  {
    goto LABEL_14;
  }

LABEL_10:
  if (*(this + 432))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 432);
    result = 0.0;
    *(this + 216) = 0u;
    *(this + 217) = 0u;
    *(this + 218) = 0u;
    *(this + 219) = 0u;
    *(this + 220) = 0u;
    *(this + 221) = 0u;
    *(this + 222) = 0u;
    *(this + 223) = 0u;
    *(this + 224) = 0u;
    *(this + 225) = 0u;
    *(this + 226) = 0u;
  }

  if (a2)
  {
    v4 = *(*(this + 32) + 15112);
LABEL_14:
    if (a2[2] <= v4[19811])
    {
      goto LABEL_19;
    }
  }

  if (*(this + 454))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 454);
    result = 0.0;
    *(this + 227) = 0u;
    *(this + 228) = 0u;
    *(this + 229) = 0u;
    *(this + 230) = 0u;
    *(this + 231) = 0u;
    *(this + 232) = 0u;
    *(this + 233) = 0u;
    *(this + 234) = 0u;
    *(this + 235) = 0u;
    *(this + 236) = 0u;
    *(this + 237) = 0u;
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  v4 = *(*(this + 32) + 15112);
LABEL_19:
  if (a2[3] <= v4[19812])
  {
    goto LABEL_24;
  }

LABEL_20:
  if (*(this + 476))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 476);
    result = 0.0;
    *(this + 238) = 0u;
    *(this + 239) = 0u;
    *(this + 240) = 0u;
    *(this + 241) = 0u;
    *(this + 242) = 0u;
    *(this + 243) = 0u;
    *(this + 244) = 0u;
    *(this + 245) = 0u;
    *(this + 246) = 0u;
    *(this + 247) = 0u;
    *(this + 248) = 0u;
  }

  if (a2)
  {
    v4 = *(*(this + 32) + 15112);
LABEL_24:
    if (a2[4] <= v4[19813])
    {
      goto LABEL_29;
    }
  }

  if (*(this + 564))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 564);
    result = 0.0;
    *(this + 282) = 0u;
    *(this + 283) = 0u;
    *(this + 284) = 0u;
    *(this + 285) = 0u;
    *(this + 286) = 0u;
    *(this + 287) = 0u;
    *(this + 288) = 0u;
    *(this + 289) = 0u;
    *(this + 290) = 0u;
    *(this + 291) = 0u;
    *(this + 292) = 0u;
  }

  if (!a2)
  {
    goto LABEL_30;
  }

  v4 = *(*(this + 32) + 15112);
LABEL_29:
  if (a2[5] <= v4[19814])
  {
    goto LABEL_34;
  }

LABEL_30:
  if (*(this + 696))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 696);
    result = 0.0;
    *(this + 348) = 0u;
    *(this + 349) = 0u;
    *(this + 350) = 0u;
    *(this + 351) = 0u;
    *(this + 352) = 0u;
    *(this + 353) = 0u;
    *(this + 354) = 0u;
    *(this + 355) = 0u;
    *(this + 356) = 0u;
    *(this + 357) = 0u;
    *(this + 358) = 0u;
  }

  if (a2)
  {
    v4 = *(*(this + 32) + 15112);
LABEL_34:
    if (a2[6] <= v4[19815])
    {
      goto LABEL_39;
    }
  }

  if (*(this + 498))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 498);
    result = 0.0;
    *(this + 249) = 0u;
    *(this + 250) = 0u;
    *(this + 251) = 0u;
    *(this + 252) = 0u;
    *(this + 253) = 0u;
    *(this + 254) = 0u;
    *(this + 255) = 0u;
    *(this + 256) = 0u;
    *(this + 257) = 0u;
    *(this + 258) = 0u;
    *(this + 259) = 0u;
  }

  if (!a2)
  {
    goto LABEL_40;
  }

  v4 = *(*(this + 32) + 15112);
LABEL_39:
  if (a2[7] <= v4[19816])
  {
    goto LABEL_44;
  }

LABEL_40:
  if (*(this + 520))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 520);
    result = 0.0;
    *(this + 260) = 0u;
    *(this + 261) = 0u;
    *(this + 262) = 0u;
    *(this + 263) = 0u;
    *(this + 264) = 0u;
    *(this + 265) = 0u;
    *(this + 266) = 0u;
    *(this + 267) = 0u;
    *(this + 268) = 0u;
    *(this + 269) = 0u;
    *(this + 270) = 0u;
  }

  if (a2)
  {
    v4 = *(*(this + 32) + 15112);
LABEL_44:
    if (a2[8] <= v4[19817])
    {
      goto LABEL_49;
    }
  }

  if (*(this + 542))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 542);
    result = 0.0;
    *(this + 271) = 0u;
    *(this + 272) = 0u;
    *(this + 273) = 0u;
    *(this + 274) = 0u;
    *(this + 275) = 0u;
    *(this + 276) = 0u;
    *(this + 277) = 0u;
    *(this + 278) = 0u;
    *(this + 279) = 0u;
    *(this + 280) = 0u;
    *(this + 281) = 0u;
  }

  if (!a2)
  {
    goto LABEL_50;
  }

  v4 = *(*(this + 32) + 15112);
LABEL_49:
  if (a2[9] <= v4[19818])
  {
    goto LABEL_54;
  }

LABEL_50:
  if (*(this + 586))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 586);
    result = 0.0;
    *(this + 293) = 0u;
    *(this + 294) = 0u;
    *(this + 295) = 0u;
    *(this + 296) = 0u;
    *(this + 297) = 0u;
    *(this + 298) = 0u;
    *(this + 299) = 0u;
    *(this + 300) = 0u;
    *(this + 301) = 0u;
    *(this + 302) = 0u;
    *(this + 303) = 0u;
  }

  if (a2)
  {
    v4 = *(*(this + 32) + 15112);
LABEL_54:
    if (a2[10] <= v4[19819])
    {
      goto LABEL_59;
    }
  }

  if (*(this + 608))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 608);
    result = 0.0;
    *(this + 304) = 0u;
    *(this + 305) = 0u;
    *(this + 306) = 0u;
    *(this + 307) = 0u;
    *(this + 308) = 0u;
    *(this + 309) = 0u;
    *(this + 310) = 0u;
    *(this + 311) = 0u;
    *(this + 312) = 0u;
    *(this + 313) = 0u;
    *(this + 314) = 0u;
  }

  if (!a2)
  {
    goto LABEL_60;
  }

  v4 = *(*(this + 32) + 15112);
LABEL_59:
  if (a2[11] <= v4[19820])
  {
    goto LABEL_64;
  }

LABEL_60:
  if (*(this + 674))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 674);
    result = 0.0;
    *(this + 337) = 0u;
    *(this + 338) = 0u;
    *(this + 339) = 0u;
    *(this + 340) = 0u;
    *(this + 341) = 0u;
    *(this + 342) = 0u;
    *(this + 343) = 0u;
    *(this + 344) = 0u;
    *(this + 345) = 0u;
    *(this + 346) = 0u;
    *(this + 347) = 0u;
  }

  if (a2)
  {
    v4 = *(*(this + 32) + 15112);
LABEL_64:
    if (a2[12] <= v4[19821])
    {
      return result;
    }
  }

  if (*(this + 652))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 652);
    result = 0.0;
    *(this + 326) = 0u;
    *(this + 327) = 0u;
    *(this + 328) = 0u;
    *(this + 329) = 0u;
    *(this + 330) = 0u;
    *(this + 331) = 0u;
    *(this + 332) = 0u;
    *(this + 333) = 0u;
    *(this + 334) = 0u;
    *(this + 335) = 0u;
    *(this + 336) = 0u;
  }

  return result;
}

uint64_t CAHDecIxoraAvx::setVPInstrFifo(uint64_t this, int a2)
{
  v2 = 0;
  v3 = (this + 620);
  do
  {
    *v3 = 1;
    *(v3 - 39) = v2++;
    v3 += 44;
  }

  while (v2 != 15);
  *(this + 5760) = a2;
  return this;
}

uint64_t createRadishAvcDecoder(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "createRadishAvcDecoder";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Radish AVD is not supported in this AppleAVD driver!!!", &v2, 0xCu);
  }

  return 0;
}

uint64_t createRadishHevcDecoder(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "createRadishHevcDecoder";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Radish AVD is not supported in this AppleAVD driver!!!", &v2, 0xCu);
  }

  return 0;
}

CAHDec *createDaisyHevcDecoder(void *a1)
{
  v2 = operator new(0x3468uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDec::CAHDec(v2);
    *v3 = &unk_288668AF8;
    *(v3 + 32) = a1;
    *(v3 + 114) = 420436;
    *(v3 + 2) = 3028;
    *(v3 + 1) = xmmword_27775BBF0;
    *(v3 + 8) = 4;
    *(v3 + 7) = a1;
    bzero(v3 + 528, 0x3230uLL);
  }

  return v3;
}

void CAHDecDaisyHevc::~CAHDecDaisyHevc(CAHDecDaisyHevc *this)
{
  *this = &unk_288668AF8;
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecDaisyHevc::~CAHDecDaisyHevc(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecDaisyHevc::init(CAHDecDaisyHevc *this)
{
  v11 = *MEMORY[0x277D85DE8];
  result = CAVDDecoder::allocAVDMem(*(this + 32), (this + 280), *(this + 114), 6, 1, 0);
  if (result)
  {
    v3 = result;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = "init";
      v7 = 1024;
      v8 = 0;
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Failed to allocate m_decodeBufferMemInfo[%d]! Got %d\n", &v5, 0x18u);
    }

    return 301;
  }

  else
  {
    v4 = *(this + 35);
    *(this + 13) = 0;
    *(this + 33) = v4;
    *(this + 34) = v4;
  }

  return result;
}

uint64_t CAHDecDaisyHevc::initPicture(CAHDecDaisyHevc *this, int a2, __int16 a3)
{
  v13 = *MEMORY[0x277D85DE8];
  *(this + 114) = 420436;
  *(this + 13) = 0;
  v4 = *(this + 34);
  *(this + 33) = v4;
  if (v4)
  {
    bzero(v4, 0x66A54uLL);
    v7 = *(this + *(this + 13) + 34);
    *(v7 + 16) = a2;
    *(v7 + 24) = 257;
    *(v7 + 26) = a3;
    bzero(*(this + 9), 48 * *(this + 17));
    result = 0;
    *(this + 16) = 0;
    *(this + 3351) = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "initPicture";
      v11 = 1024;
      v12 = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): decode buffer at index %d is NULL!\n", &v9, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t CAHDecDaisyHevc::populateSlices(CAHDecDaisyHevc *this, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = *(this + *(this + 13) + 34) + 3028;
    v5 = a2;
    do
    {
      CAHDecDaisyHevc::populateSliceRegisters(this, v4, v3++);
      v4 += 368;
    }

    while (v5 != v3);
  }

  return 0;
}

uint64_t CAHDecDaisyHevc::populateSliceRegisters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v102 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 256);
  v7 = *(v6 + 8184) + 2360 * a3;
  v8 = *(v6 + 8168) + 23176 * *(v6 + 8208);
  v9 = *(v6 + 8176) + 9856 * *(v6 + 8212);
  *(a1 + 460) = 6 * *(v8 + 3636);
  v10 = *(v8 + 22880);
  *(a2 + 352) = 0x1000000;
  v11 = (((*(v7 + 36) / v10) & 0xFFF) << 12) | 0x1000000;
  *(a2 + 352) = v11;
  *(a2 + 352) = v11 & 0xFFFFF000 | (*(v7 + 36) % v10) & 0xFFF;
  *(a2 + 4) = 0;
  v12 = *(v9 + 6477);
  if (*(v9 + 6477))
  {
    v12 = *(v7 + 1880) & 1;
  }

  *(a2 + 4) = v12;
  if (*(v7 + 44) == 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = (10 - 2 * *(v7 + 1864)) & 0xE;
  }

  v14 = v13 | v12;
  *(a2 + 4) = v14;
  if (*(v7 + 44))
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v7 + 616);
    if (*(v7 + 616))
    {
      v15 = 16 * (*(v7 + 762) == 0);
    }
  }

  v16 = v15 | v14;
  *(a2 + 4) = v16;
  if (*(v7 + 44) == 2)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v9 + 17);
    if (*(v9 + 17))
    {
      v17 = 32 * (*(v7 + 761) & 1);
    }
  }

  v18 = v17 | v16;
  *(a2 + 4) = v18;
  if (*(v7 + 44))
  {
    v19 = 0;
  }

  else
  {
    v19 = (*(v7 + 760) == 0) << 6;
  }

  v20 = v19 | v18;
  *(a2 + 4) = v20;
  if (*(v7 + 624) == -1)
  {
    v21 = 0;
  }

  else
  {
    v21 = (*(v7 + 624) & 0xF) << 7;
  }

  v22 = v21 | v20;
  *(a2 + 4) = v22;
  if (*(v7 + 620) == -1)
  {
    v23 = 0;
  }

  else
  {
    v23 = (*(v7 + 620) & 0xF) << 11;
  }

  v24 = v23 | v22;
  *(a2 + 4) = v24;
  if (*(v7 + 44) == 2)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v8 + 22284);
    if (*(v8 + 22284))
    {
      v25 = (*(v7 + 616) & 1) << 15;
    }
  }

  v26 = v25 | v24;
  *(a2 + 4) = v26;
  *(a2 + 4) = v26 & 0xFFFCFFFF | ((*(v7 + 44) & 3) << 16);
  *(a2 + 336) = 0;
  if (*(v7 + 44) <= 1u)
  {
    if (*(v7 + 2344))
    {
      if (!*(a1 + 13404))
      {
        (*(**(a1 + 256) + 352))(*(a1 + 256), a3);
        v27 = *(a1 + 256);
        if (!*(v27 + 8920))
        {
          *(a1 + 13404) = 1;
          *(a2 + 4) |= 0x40000u;
          v95 = 368 * a3;
          if (*(v27 + 8744) || *(v27 + 8896) || *(v27 + 8900))
          {
            result = CAHDec::addToPatcherList(a1, (v27 + 8744), v95 + 3364, 0, 0xFFFFFFFFLL, 8, -256, 4);
            if (result)
            {
              return result;
            }

            if (*(v27 + 8744))
            {
              goto LABEL_136;
            }
          }

          if (*(v27 + 8896) || *(v27 + 8900))
          {
LABEL_136:
            result = CAHDec::addToPatcherList(a1, (v27 + 8744), v95 + 3392, 0, 0x3FFFFFFFFFFLL, 32, 1023, 4);
            if (result)
            {
              return result;
            }
          }
        }
      }
    }
  }

  *(a2 + 4) = *(a2 + 4) & 0x77FFFF | 0x2D000000;
  (*(**(a1 + 256) + 360))(*(a1 + 256), 0, a3);
  v28 = *(v7 + 44);
  if (v28 <= 1)
  {
    v29 = v6 + 8344;
    if ((*(v7 + 620) & 0x80000000) != 0)
    {
      v31 = 0;
      if (v28)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v30 = 0;
      v31 = 0;
      v32 = a2 + 8;
      do
      {
        v33 = v31;
        *(v32 + 4 * v31) = v30 & 0xF0 | 0x2DC00000;
        *(v32 + 4 * v31) = v30 & 0xF0 | 0x2DC00000 | *(v29 + 4 * v31) & 0xF;
        ++v31;
        v30 += 16;
      }

      while (v33 < *(v7 + 620));
      if (*(v7 + 44))
      {
        goto LABEL_41;
      }
    }

    (*(**(a1 + 256) + 360))(*(a1 + 256), 1, a3);
    if ((*(v7 + 624) & 0x80000000) == 0)
    {
      v34 = 0;
      v35 = 0;
      v36 = a2 + 4 * v31 + 8;
      do
      {
        *(v36 + 4 * v35) = v34 & 0xF0 | 0x2DC00100;
        *(v36 + 4 * v35) = v34 & 0xF0 | 0x2DC00100 | *(v29 + 4 * v35) & 0xF;
        v34 += 16;
        v37 = v35++ < *(v7 + 624);
      }

      while (v37);
    }
  }

LABEL_41:
  *(a2 + 128) = 0x2DD0000000000000;
  v38 = *(v7 + 44);
  if (v38 == 1)
  {
    v39 = *(v9 + 49);
    if (!v39)
    {
      goto LABEL_62;
    }
  }

  else
  {
    if (v38)
    {
      goto LABEL_62;
    }

    v39 = *(v9 + 50);
    if (!v39)
    {
      goto LABEL_62;
    }
  }

  v40 = 0;
  v41 = 0;
  *(a2 + 132) = ((v39 & 1) << 6) | 0x2DD00000;
  v42 = *(v7 + 768);
  v43 = ((v39 & 1) << 6) | 0x2DD00000 | (8 * (*(v7 + 768) & 7));
  *(a2 + 132) = v43;
  v44 = (*(v7 + 772) + *(v7 + 768)) & 7;
  v45 = a2 + 136;
  *(a2 + 132) = v43 & 0xFFFFFFF8 | v44;
  v46 = 1 << (v42 & 7);
  v47 = a2 + 232;
  v48 = 1 << v44;
  do
  {
    if (*(v7 + 776 + v41))
    {
      v49 = ((v41 & 0xF) << 9) | 0x2DE04000;
      *(v45 + 4 * v40) = v49;
      *(v45 + 4 * v40) = (*(v7 + 808 + 4 * v41) + v46) & 0x1FF | v49;
      *(v47 + 4 * v40) = 770703360;
      *(v47 + 4 * v40++) = *(v7 + 872 + 4 * v41) | 0x2DF00000;
    }

    if (*(v7 + 792 + v41))
    {
      v50 = 0;
      v51 = 1;
      do
      {
        v52 = v51;
        v53 = (((v41 & 0xF) << 9) | (v50 << 14)) + 769687552;
        *(v45 + 4 * v40) = v53;
        *(v45 + 4 * v40) = (*(v7 + 936 + 8 * v41 + 4 * v50) + v48) & 0x1FF | v53;
        *(v47 + 4 * v40) = 770703360;
        *(v47 + 4 * v40++) = *(v7 + 1608 + 8 * v41 + 4 * v50) | 0x2DF00000;
        v50 = 1;
        v51 = 0;
      }

      while ((v52 & 1) != 0);
    }

    ++v41;
  }

  while (v41 <= *(v7 + 620));
  if (!*(v7 + 44))
  {
    v54 = 0;
    do
    {
      if (*(v7 + 1192 + v54))
      {
        v55 = ((v54 & 0xF) << 9) + 769679360;
        *(v45 + 4 * v40) = v55;
        *(v45 + 4 * v40) = (*(v7 + 1224 + 4 * v54) + v46) & 0x1FF | v55;
        *(v47 + 4 * v40) = 770703360;
        *(v47 + 4 * v40++) = *(v7 + 1288 + 4 * v54) | 0x2DF00000;
      }

      if (*(v7 + 1208 + v54))
      {
        v56 = 0;
        v57 = 1;
        do
        {
          v58 = v57;
          v59 = (((v54 & 0xF) << 9) | (v56 << 14)) + 769695744;
          *(v45 + 4 * v40) = v59;
          *(v45 + 4 * v40) = (*(v7 + 1352 + 8 * v54 + 4 * v56) + v48) & 0x1FF | v59;
          *(v47 + 4 * v40) = 770703360;
          *(v47 + 4 * v40++) = *(v7 + 1736 + 8 * v54 + 4 * v56) | 0x2DF00000;
          v56 = 1;
          v57 = 0;
        }

        while ((v58 & 1) != 0);
      }

      ++v54;
    }

    while (v54 <= *(v7 + 624));
  }

  *(a2 + 128) = v40;
LABEL_62:
  LOBYTE(v60) = *(v9 + 48);
  if (v60)
  {
    v60 = *(v7 + 1876);
  }

  v61 = *(a2 + 328) & 0xFFFFFFE0 | (v60 + *(v9 + 44)) & 0x1F;
  *(a2 + 328) = v61;
  LOBYTE(v62) = *(v9 + 48);
  if (v62)
  {
    v62 = *(v7 + 1872);
  }

  v63 = v61 & 0xFFFFFC1F | (32 * ((v62 + *(v9 + 40)) & 0x1F));
  *(a2 + 328) = v63;
  v64 = *(v9 + 28) + *(v7 + 1868) + 26;
  *(a2 + 328) = v63 & 0xE03FF | ((v64 & 0x7F) << 10) | 0x2D900000;
  *(*(a1 + 256) + 2760) = *(a1 + 460) + (v64 << 25 >> 25);
  *(a2 + 332) = 0;
  v65 = *(v9 + 6540) & 7;
  *(a2 + 332) = v65;
  v66 = v65 & 0xFFFFFFC7 | (8 * (*(v9 + 6536) & 7));
  *(a2 + 332) = v66;
  v67 = *(v8 + 10649);
  if (*(v8 + 10649))
  {
    v67 = (*(v7 + 618) & 1) << 6;
  }

  v68 = v67 | v66;
  *(a2 + 332) = v68;
  v69 = *(v8 + 10649);
  if (*(v8 + 10649))
  {
    v69 = (*(v7 + 617) & 1) << 7;
  }

  v70 = v69 | v68;
  *(a2 + 332) = v69 | v68;
  if (*(v7 + 1881))
  {
    v71 = (v7 + 1888);
  }

  else
  {
    v71 = (v9 + 248);
  }

  v72 = v70 & 0xFFFFF0FF | ((*v71 & 0xF) << 8);
  *(a2 + 332) = v72;
  if (*(v7 + 1881))
  {
    v73 = (v7 + 1884);
  }

  else
  {
    v73 = (v9 + 244);
  }

  v74 = v72 & 0xFFFF0FFF | ((*v73 & 0xF) << 12);
  *(a2 + 332) = v74;
  if (*(v9 + 239) && *(v7 + 1881))
  {
    v75 = (v7 + 1882);
  }

  else
  {
    v75 = (v9 + 240);
  }

  v76 = *v75 == 0;
  v77 = v74 | (v76 << 16);
  *(a2 + 332) = v77;
  v37 = v69 > 0x7F;
  v78 = (v70 >> 6) & 1;
  if (v37)
  {
    LOBYTE(v78) = 1;
  }

  if ((v78 | v76))
  {
    v79 = (v7 + 1892);
  }

  else
  {
    v79 = (v9 + 237);
  }

  v80 = v77 & 0xFFFDFFFF | ((*v79 & 1) << 17);
  *(a2 + 332) = v80;
  if (*(v9 + 52))
  {
    v81 = (*(v9 + 236) & 1) << 18;
  }

  else
  {
    v81 = 0x40000;
  }

  v82 = v81 | v80;
  *(a2 + 332) = v82;
  v83 = *(v8 + 10650);
  if (*(v8 + 10650))
  {
    v83 = (*(v8 + 10668) == 0) << 19;
  }

  *(a2 + 332) = v82 | v83 | 0x2DA00000;
  v84 = *(a1 + 256);
  v85 = v84[626];
  if (v84[590] != 1)
  {
    v96 = 0;
    v97 = 0;
    if ((*(*v84 + 440))(v84, a3, &v97, &v96))
    {
      v86 = 368 * a3;
      *(a2 + 340) = 0;
      v87 = v97;
      if (!*v97 && !*(v97 + 152) && !*(v97 + 156))
      {
        goto LABEL_116;
      }

      v92 = v96;
      if (HIDWORD(v96) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v99 = "populateSliceRegisters";
        v100 = 1024;
        v101 = 1685;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v92 = v96;
      }

      result = CAHDec::addToPatcherList(a1, v87, v86 + 3368, v92, 0x3FFFFFFFFFFLL, 32, 1023, 4);
      if (result)
      {
        return result;
      }

      v87 = v97;
      if (!*v97)
      {
LABEL_116:
        if (!*(v87 + 152) && !*(v87 + 156))
        {
          goto LABEL_122;
        }
      }

      v90 = v96;
      if (HIDWORD(v96) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v99 = "populateSliceRegisters";
        v100 = 1024;
        v101 = 1686;
        v91 = MEMORY[0x277D86220];
        goto LABEL_120;
      }

LABEL_121:
      result = CAHDec::addToPatcherList(a1, v87, v86 + 3372, v90, 0xFFFFFFFFLL, 0, -1, 4);
      if (result)
      {
        return result;
      }

      goto LABEL_122;
    }

    return 0xFFFFFFFFLL;
  }

  v96 = 0;
  v97 = 0;
  if (!(*(*v84 + 440))(v84, a3, &v97, &v96))
  {
    return 0xFFFFFFFFLL;
  }

  v86 = 368 * a3;
  *(a2 + 340) = 0;
  v87 = v97;
  if (!*v97 && !*(v97 + 152) && !*(v97 + 156))
  {
    goto LABEL_101;
  }

  v88 = v96;
  if (HIDWORD(v96) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v99 = "populateSliceRegisters";
    v100 = 1024;
    v101 = 1666;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v88 = v96;
  }

  result = CAHDec::addToPatcherList(a1, v87, v86 + 3368, v88, 0x3FFFFFFFFFFLL, 32, 1023, 4);
  if (!result)
  {
    v87 = v97;
    if (*v97)
    {
      goto LABEL_103;
    }

LABEL_101:
    if (*(v87 + 152) || *(v87 + 156))
    {
LABEL_103:
      v90 = v96;
      if (HIDWORD(v96) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v99 = "populateSliceRegisters";
        v100 = 1024;
        v101 = 1667;
        v91 = MEMORY[0x277D86220];
LABEL_120:
        _os_log_impl(&dword_277606000, v91, OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v90 = v96;
        goto LABEL_121;
      }

      goto LABEL_121;
    }

LABEL_122:
    v93 = *(v7 + 16) - (*(v7 + 2080) >> 3);
    *(a2 + 348) = v93;
    if (v84[590] == 1)
    {
      *(a2 + 356) = 0;
      if (v93 >= *(v7 + 2352))
      {
        v93 = *(v7 + 2352);
      }

      result = 0;
      if (v84[605])
      {
        v94 = v93 | v85 & 0x10000;
      }

      else
      {
        v94 = v85 | (v93 << 22);
      }

      *(a2 + 360) = v94;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CAHDecDaisyHevc::updateCommonRegisters(CAHDecDaisyHevc *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecDaisyHevc::populateSequenceRegisters(CAHDecDaisyHevc *this)
{
  v1 = *(this + 33);
  v2 = *(*(this + 32) + 8168) + 23176 * *(*(this + 32) + 8208);
  v1[13] = 0;
  v3 = (*(v2 + 3608) >> 3) - 1;
  v1[13] = v3 & 0x1FFF;
  v1[13] = ((*(v2 + 3612) << 13) + 536805376) & 0x1FFF0000 | v3 & 0x1FFF;
  v1[14] = 0;
  v4 = *(v2 + 10648) & 1;
  v1[14] = v4;
  v5 = v4 & 0xFFFFFFF1 | (2 * (*(v2 + 4440) & 7));
  v1[14] = v5;
  v6 = v5 & 0xFFFFFF8F | (16 * (*(v2 + 4436) & 7));
  v1[14] = v6;
  v7 = v6 & 0xFFFFFE7F | (((*(v2 + 4428) + *(v2 + 4432)) & 3) << 7);
  v1[14] = v7;
  v8 = v7 & 0xFFFFF9FF | ((*(v2 + 4428) & 3) << 9);
  v1[14] = v8;
  v9 = v8 & 0xFFFFE7FF | (((*(v2 + 4424) + *(v2 + 4420)) & 3) << 11);
  v1[14] = v9;
  v10 = v9 & 0xFFFF9FFF | ((*(v2 + 4420) & 3) << 13);
  v1[14] = v10;
  v11 = v10 & 0xFFF87FFF | ((*(v2 + 3640) & 0xF) << 15);
  v1[14] = v11;
  v12 = v11 & 0xFF87FFFF | ((*(v2 + 3636) & 0xF) << 19);
  v1[14] = v12;
  v13 = v12 & 0xFF7FFFFF | ((*(v2 + 3604) & 1) << 23);
  v1[14] = v13;
  v1[14] = v13 & 0xFCFFFFFF | ((*(v2 + 3600) & 3) << 24);
  v1[15] = 0;
  if (*(v2 + 10650))
  {
    v1[15] = 4096;
    v14 = (*(v2 + 10664) + *(v2 + 10660)) & 3 | 0x1000;
    v1[15] = v14;
    v15 = v14 & 0xFFFFFFF3 | (4 * (*(v2 + 10660) & 3));
    v1[15] = v15;
    v16 = v15 & 0xFFFFFF0F | (16 * (*(v2 + 10656) & 0xF));
    v1[15] = v16;
    v1[15] = v16 & 0xFFFFF0FF | ((*(v2 + 10652) & 0xF) << 8);
  }

  v1[16] = 0;
  if (*(v2 + 22833))
  {
    v17 = *(v2 + 22844) & 1;
    v1[16] = v17;
    v18 = v17 & 0xFFFFFFFD | (2 * (*(v2 + 22843) & 1));
    v1[16] = v18;
    v19 = v18 & 0xFFFFFFFB | (4 * (*(v2 + 22842) & 1));
    v1[16] = v19;
    v20 = v19 | (8 * (*(v2 + 22841) == 0));
    v1[16] = v20;
    v21 = v20 & 0xFFFFFFEF | (16 * (*(v2 + 22840) & 1));
    v1[16] = v21;
    v22 = v21 & 0xFFFFFFDF | (32 * (*(v2 + 22839) & 1));
    v1[16] = v22;
    v23 = v22 & 0xFFFFFFBF | ((*(v2 + 22838) & 1) << 6);
    v1[16] = v23;
    v24 = v23 | ((*(v2 + 22837) & 1) << 7);
    v1[16] = v24;
    v25 = v24 | ((*(v2 + 22836) & 1) << 8);
  }

  else
  {
    v25 = 8;
  }

  v1[16] = v25;
  v1[16] = v25 & 0xFFFFFDFF | ((*(v2 + 22285) & 1) << 9);
  if (*(v2 + 4444))
  {
    CAHDecTansyHevc::copyScalingList(this, (v1 + 17), *(this + 33) + 892, *(v2 + 3600), v2 + 4448);
  }

  return 0;
}

uint64_t CAHDecDaisyHevc::getTileHdrMemInfo(uint64_t result, int a2, void *a3)
{
  v3 = result + 176 * a2;
  *a3 = v3 + 528;
  a3[1] = v3 + 3344;
  return result;
}

__n128 CAHDecDaisyHevc::getMVmemInfo(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  v4 = a1 + 176 * a2;
  v5 = *(v4 + 8976);
  v6 = *(v4 + 9008);
  *(a3 + 16) = *(v4 + 8992);
  *(a3 + 32) = v6;
  *a3 = v5;
  v7 = *(v4 + 9024);
  v8 = *(v4 + 9040);
  v9 = *(v4 + 9072);
  *(a3 + 80) = *(v4 + 9056);
  *(a3 + 96) = v9;
  *(a3 + 48) = v7;
  *(a3 + 64) = v8;
  result = *(v4 + 9088);
  v11 = *(v4 + 9104);
  v12 = *(v4 + 9136);
  *(a3 + 144) = *(v4 + 9120);
  *(a3 + 160) = v12;
  *(a3 + 112) = result;
  *(a3 + 128) = v11;
  *a4 = *(a1 + 4 * a2 + 464);
  return result;
}

uint64_t CAHDecDaisyHevc::populatePictureRegisters(CAHDecDaisyHevc *this)
{
  v529 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(v2 + 8208);
  v4 = *(v2 + 8212);
  v5 = *(v2 + 8168);
  v6 = *(v2 + 8176);
  v7 = *(v2 + 8924);
  v8 = *(v2 + 2964);
  v508 = *(v2 + 2948);
  v509 = *(v2 + 2960);
  v504 = *(v2 + 2952);
  v505 = *(v2 + 2924);
  v499 = *(v2 + 2088);
  v500 = *(v2 + 8280);
  v502 = *(v2 + 3548);
  v503 = *(v2 + 8994);
  v514 = *(v2 + 2644);
  v507 = *(v2 + 8312);
  v506 = *(v2 + 8);
  v9 = *(v2 + 8424);
  v528[0] = *(v2 + 8408);
  v528[1] = v9;
  v10 = *(v2 + 8456);
  v528[2] = *(v2 + 8440);
  v528[3] = v10;
  v501 = *(v2 + 8608);
  v11 = (*(*v2 + 184))(v2);
  v12 = *(this + 32);
  v513 = v11 && (v12[689] || v12[4] == 1);
  v13 = *(this + 33);
  v14 = v5 + 23176 * v3;
  v15 = *(v14 + 4424) + *(v14 + 4420);
  memset(v527, 0, sizeof(v527));
  memset(v526, 0, sizeof(v526));
  (*(*v12 + 344))();
  v16 = 0;
  v17 = *(this + 32);
  v18 = (v17 + 8616);
  do
  {
    v530 = vld2q_f64(v18);
    v18 += 4;
    v527[v16] = v530.val[0];
    v526[v16++] = v530.val[1];
  }

  while (v16 != 4);
  v19 = v6 + 9856 * v4;
  if (*(v19 + 52))
  {
    v20 = 0;
    v21 = *(v19 + 56) + 1;
    v22 = *(this + 33);
    *(v22 + 788) = v21;
    do
    {
      *(v22 + 792 + 2 * v20) = *(v19 + 9676 + 4 * v20);
      v23 = v20++ >= v21;
    }

    while (!v23);
    v24 = 0;
    v25 = *(v19 + 60) + 1;
    *(v22 + 790) = v25;
    do
    {
      *(v22 + 834 + 2 * v24) = *(v19 + 9760 + 4 * v24);
      v23 = v24++ >= v25;
    }

    while (!v23);
    v26 = v21 * v25;
  }

  else
  {
    v27 = *(this + 33);
    *(v27 + 788) = 65537;
    *(v27 + 792) = 0;
    *(v27 + 794) = *(v14 + 22880);
    *(v27 + 834) = 0;
    *(v27 + 836) = *(v14 + 22888);
    v26 = 1;
  }

  v511 = v26;
  v28 = v17[2675];
  v29 = v17[2674];
  if (v28 | v29)
  {
    v30 = v15;
    v31 = *(v14 + 3636);
    if (v31 <= *(v14 + 3640))
    {
      v31 = *(v14 + 3640);
    }

    v32 = (v31 + 9) & 0xFFFFFFFE;
    if (v32 == 8)
    {
      v41 = 1;
      v40 = 8;
      if (!v17[2675])
      {
        goto LABEL_52;
      }
    }

    else
    {
      v33 = v17[2672];
      if (v33)
      {
        v34 = 12;
      }

      else
      {
        v34 = 11;
      }

      if (v33)
      {
        v35 = 5;
      }

      else
      {
        v35 = 4;
      }

      v36 = v33 == 0;
      if (v33)
      {
        v37 = 10;
      }

      else
      {
        v37 = 9;
      }

      if (v36)
      {
        v38 = 2;
      }

      else
      {
        v38 = 3;
      }

      if (v32 == 10)
      {
        v39 = v38;
      }

      else
      {
        v37 = 27;
        v39 = 27;
      }

      if (v32 == 12)
      {
        v40 = v34;
      }

      else
      {
        v40 = v37;
      }

      if (v32 == 12)
      {
        v41 = v35;
      }

      else
      {
        v41 = v39;
      }

      if (!v28)
      {
LABEL_52:
        LOBYTE(v15) = v30;
        if (v29 && (v29 == 3 && v41 - 9 < 2 || v41 <= 0x1A && ((1 << v41) & 0x4C00000) != 0 && v29 <= 2))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "populatePictureRegisters";
            *&buf[12] = 1024;
            *&buf[14] = v41;
            *&buf[18] = 1024;
            *&buf[20] = v29;
            v42 = MEMORY[0x277D86220];
            v43 = "AppleAVD: [ERROR] %s(): luma compression format %d lossy level %d not supported\n";
            goto LABEL_275;
          }

          return 0xFFFFFFFFLL;
        }

        goto LABEL_60;
      }
    }

    if (*(v14 + 3600) && (v28 == 2 && v40 == 8 || v28 == 3 && (v40 - 9) <= 1))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "populatePictureRegisters";
        *&buf[12] = 1024;
        *&buf[14] = v40;
        *&buf[18] = 1024;
        *&buf[20] = v28;
        v42 = MEMORY[0x277D86220];
        v43 = "AppleAVD: [ERROR] %s(): chroma compression format %d lossy level %d not supported\n";
LABEL_275:
        v254 = buf;
        v255 = 24;
LABEL_276:
        _os_log_impl(&dword_277606000, v42, OS_LOG_TYPE_DEFAULT, v43, v254, v255);
      }

      return 0xFFFFFFFFLL;
    }

    goto LABEL_52;
  }

LABEL_60:
  *(v13 + 88) = 766509056;
  v44 = (*(**(this + 32) + 232))(*(this + 32));
  if (v44)
  {
    v45 = (*(*(this + 32) + 2980) == 2) << 13;
  }

  else
  {
    v45 = 0;
  }

  v46 = v7 >> 28;
  v47 = ((v514 != 0) << 12) | ((v514 == 1) << 10) | v45 | *(v13 + 88) & 0xFFFFC15F;
  v48 = v47 & 0xFFFFF500 | 0x2A0;
  v49 = v47 | 0x2B0;
  if (!v513)
  {
    v49 = v48;
  }

  *(v13 + 88) = v29 & 3 | (4 * (v28 & 3)) | v49 & 0xFFFFFFF0 | 0x40;
  v50 = *(this + 32);
  v51 = v29 & 3 | (4 * (v28 & 3)) | v49 & 0xFFF7FFF0 | 0x40 | ((v50[2652] & 1) << 19);
  *(v13 + 88) = v51;
  v52 = v51 & 0xFFFBFFFF | ((v50[2653] & 1) << 18);
  *(v13 + 88) = v52;
  *(v13 + 88) = v52 & 0xFFFDFFFF | ((v50[2654] & 1) << 17);
  if ((v7 & 1) != 0 && *(v19 + 53) && *(v14 + 22888) > v46 + 1 || (v7 & 2) != 0 && !*(v19 + 53) && *(v19 + 52) && v511 > v46 + 1)
  {
    goto LABEL_78;
  }

  if ((v7 & 0x20) == 0 || (v53 = *(v19 + 53), *(v19 + 53)))
  {
    v53 = 0;
    goto LABEL_79;
  }

  if (!*(v19 + 52) && v509 > v46 + 1)
  {
LABEL_78:
    v53 = (v8 == 0) << 27;
  }

LABEL_79:
  *(v13 + 92) = v53;
  *(v13 + 96) = 0;
  v54 = *(v14 + 3608) - 1;
  *(v13 + 96) = v54;
  v55 = *(v14 + 3612);
  *(v13 + 100) = 0;
  *(v13 + 104) = 0;
  *(v13 + 96) = (v54 | (v55 << 16)) - 0x10000;
  if (*(v19 + 6466))
  {
    v56 = 32 * (*(v19 + 6477) & 1);
    *(v13 + 104) = v56;
    if (*(v19 + 6477))
    {
      v57 = *(v19 + 6484) & 7;
    }

    else
    {
      v57 = 0;
    }

    v59 = v57 | v56;
    *(v13 + 104) = v57 | v56;
    if (v56)
    {
      v60 = (v19 + 6512);
      v61 = (v13 + 112);
      v62 = -1;
      do
      {
        v63 = *v61 & 0xFFFFFFE0 | *v60 & 0x1F;
        *v61 = v63;
        *v61++ = v63 & 0xFFFFFC1F | (32 * (*(v60 - 6) & 0x1F));
        ++v62;
        ++v60;
      }

      while (v62 < v57);
    }

    LOBYTE(v64) = *(v19 + 6477);
    if (v64)
    {
      v64 = *(v19 + 6480);
    }

    v65 = (8 * ((v15 - v64) & 3)) | v59;
    *(v13 + 104) = v65;
    v66 = v65 & 0xFFFFFFBF | ((*(v19 + 6476) & 1) << 6);
    *(v13 + 104) = v66;
    v58 = v66 & 0xFFFFFE7F | ((*(v19 + 6472) & 3) << 7);
  }

  else
  {
    v58 = 8 * (v15 & 3);
  }

  *(v13 + 104) = v58;
  LOBYTE(v67) = *(v19 + 34);
  if (v67)
  {
    v67 = *(v19 + 36);
  }

  v68 = v58 & 0xFFFE7FFF | (((v15 - v67) & 3) << 15);
  *(v13 + 104) = v68;
  v69 = v68 & 0xFFFFF1FF | ((*(v19 + 6460) & 7) << 9);
  *(v13 + 104) = v69;
  v70 = v69 & 0xFFFFEFFF | ((*(v19 + 53) & 1) << 12);
  *(v13 + 104) = v70;
  v71 = v70 & 0xFFFFDFFF | ((*(v19 + 52) & 1) << 13);
  *(v13 + 104) = v71;
  v72 = v71 & 0xFFFFBFFF | ((*(v19 + 51) & 1) << 14);
  *(v13 + 104) = v72;
  v73 = v72 & 0xFFFDFFFF | ((*(v19 + 34) & 1) << 17);
  *(v13 + 104) = v73;
  v74 = v73 & 0xFFFBFFFF | ((*(v19 + 33) & 1) << 18);
  *(v13 + 104) = v74;
  v75 = v74 & 0xFFF7FFFF | ((*(v19 + 32) & 1) << 19);
  *(v13 + 104) = v75;
  v76 = v75 & 0xFFEFFFFF | ((*(v19 + 16) & 1) << 20);
  *(v13 + 104) = v76;
  if ((v49 & 0x2000) != 0)
  {
    v77 = 0;
  }

  else
  {
    v77 = (*(v14 + 22284) != 0) << 21;
  }

  *(v13 + 104) = v77 | v76 & 0xFFDFFFFF;
  v78 = *(v13 + 108) & 0xFFFFFFE0 | *(v19 + 44) & 0x1F;
  *(v13 + 108) = v78;
  v79 = v78 & 0xFFFFFC1F | (32 * (*(v19 + 40) & 0x1F));
  *(v13 + 108) = v79;
  v80 = *(this + 32);
  if (*(v80 + 12) == 1 && *(v14 + 22864) == 5 && !*(v19 + 52) && *(v14 + 3600) == 1 && (*(v14 + 3636) | 2) == 2 && (*(v14 + 3640) | 2) == 2)
  {
    v81 = *(v80 + 8184);
    v82 = v79 | 0x80000000;
    *(v13 + 108) = v82;
    v83 = *(v19 + 28) + *(v81 + 1868);
    v84 = v83 + 26;
    v85 = v83 + 11;
    if (v84 > 51)
    {
      v85 = 36;
    }

    if (v84 < 15)
    {
      v85 = 0;
    }

    v86 = v82 & 0xFFFF83FF | ((kTable_8_11_tc[v85] & 0x1F) << 10);
    *(v13 + 108) = v86;
    v87 = *(v19 + 28) + *(v81 + 1868);
    v88 = v87 + 26;
    v89 = v87 + 11;
    if (v88 > 51)
    {
      v89 = 36;
    }

    if (v88 < 15)
    {
      v89 = 0;
    }

    *(v13 + 108) = v86 & 0xFFC07FFF | ((kTable_8_11_beta[v89] & 0x7F) << 15);
    v90 = *(this + 32);
    v91 = 2;
  }

  else
  {
    *(v13 + 108) = v79 & 0x7FC003FF;
    v90 = *(this + 32);
    v91 = *(v90 + 12);
  }

  *(v90 + 16) = v91;
  if (*(v19 + 252))
  {
    CAHDecTansyHevc::copyScalingList(v44, v13 + 136, *(this + 33) + 1888, *(v14 + 3600), v19 + 256);
    v90 = *(this + 32);
  }

  v92 = *(v13 + 88);
  if ((~v92 & 0xC0000) != 0)
  {
    v96 = 0;
    v98 = 0;
    *(v13 + 156) = 0;
    *(v13 + 160) = 0;
  }

  else
  {
    v93 = *(v90 + 2656);
    if (!v93 || !*(v90 + 2660))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v253 = *(v90 + 2660);
        *buf = 136315650;
        *&buf[4] = "populatePictureRegisters";
        *&buf[12] = 1024;
        *&buf[14] = v93;
        *&buf[18] = 1024;
        *&buf[20] = v253;
        v42 = MEMORY[0x277D86220];
        v43 = "AppleAVD: %s(): invalid stat crop width/height %d/%d";
        goto LABEL_275;
      }

      return 0xFFFFFFFFLL;
    }

    v94 = *(v90 + 2664);
    *(v13 + 156) = v94;
    v95 = *(v90 + 2668);
    v96 = v95 << 16;
    *(v13 + 156) = v94 | (v95 << 16);
    v97 = *(v90 + 2664) + *(v90 + 2656) - 1;
    *(v13 + 160) = *(v90 + 2664) + *(v90 + 2656) - 1;
    v98 = ((*(v90 + 2660) + *(v90 + 2668)) << 16) - 0x10000;
    *(v13 + 160) = v98 & 0xFFFF0000 | v97;
  }

  if (v8)
  {
    v99 = 7340080;
  }

  else
  {
    v99 = 3145776;
  }

  *(v13 + 164) = v99;
  if (!*(*(this + 32) + 2892))
  {
    v100 = *(v14 + 3608) - 1;
    *(v13 + 160) = v98 | v100;
    v101 = (*(v14 + 3612) << 16) - 0x10000;
    *(v13 + 160) = v101 & 0xFFFF0000 | v100;
    if (*(v14 + 3616))
    {
      if ((v92 & 0x800) != 0)
      {
        v102 = *(v14 + 3620) * *(v14 + 22852);
        *(v13 + 156) = v96 | v102;
        *(v13 + 156) = v102 | ((*(v14 + 22856) * *(v14 + 3628)) << 16);
        v103 = *(v14 + 3608) + ~(*(v14 + 3624) * *(v14 + 22852));
        *(v13 + 160) = v103 | v101;
        *(v13 + 160) = v103 | ((*(v14 + 3612) + ~(*(v14 + 3632) * *(v14 + 22856))) << 16);
      }
    }
  }

  v104 = 0;
  v105 = this + 6160;
  do
  {
    *(*(this + 33) + v104 + 168) = 0;
    v106 = *(this + 33) + v104;
    v107 = *(v106 + 168);
    *(v106 + 168) = 0;
    *(*(this + 33) + v104 + 168) ^= 0xFFFFFF00;
    v108 = *(this + 33) + v104;
    v109 = *(v108 + 168);
    *(v108 + 168) = v107;
    if (*v105 || *(v105 + 38) || *(v105 + 39))
    {
      result = CAHDec::addToPatcherList(this, v105, v104 + 168, 0, 0xFFFFFFFFLL, 8, v109, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + v104 + 228) = 0;
    *(*(this + 33) + v104 + 228) = *(*(this + 33) + v104 + 228) & 0x800001FF | (((*(this + 3348) >> 9) & 0x3FFFFF) << 9);
    *(*(this + 33) + v104 + 528) = 0;
    v111 = *(this + 33) + v104;
    v112 = *(v111 + 528);
    *(v111 + 528) = 0;
    *(*(this + 33) + v104 + 528) ^= 0x3FFu;
    v113 = *(this + 33) + v104;
    v114 = *(v113 + 528);
    *(v113 + 528) = v112;
    if (*v105 || *(v105 + 38) || *(v105 + 39))
    {
      result = CAHDec::addToPatcherList(this, v105, v104 + 528, 0, 0x3FFFFFFFFFFLL, 32, v114, 4);
      if (result)
      {
        return result;
      }
    }

    v104 += 4;
    v105 += 176;
  }

  while (v104 != 60);
  *(*(this + 33) + 288) = 0;
  *(*(this + 33) + 588) = 0;
  if ((*(v13 + 90) & 8) != 0)
  {
    v115 = *(this + 33);
    v116 = *(*(this + 32) + 2680);
    v524 = 0u;
    v525 = 0u;
    v522 = 0u;
    v523 = 0u;
    v520 = 0u;
    v521 = 0u;
    v518 = 0u;
    v519 = 0u;
    v517 = 0u;
    memset(buf, 0, sizeof(buf));
    v117 = (*(v115 + 16) & 0xF) << 9;
    *buf = v116;
    v118 = *(v115 + 288);
    *(v115 + 288) = 0;
    *(*(this + 33) + 288) ^= 0xFFFFFF00;
    v119 = *(this + 33);
    v120 = *(v119 + 288);
    *(v119 + 288) = v118;
    if (v116)
    {
      result = CAHDec::addToPatcherList(this, buf, 288, v117, 0xFFFFFFFFLL, 8, v120, 4);
      if (result)
      {
        return result;
      }

      if (*buf)
      {
        v121 = 0;
      }

      else
      {
        v121 = DWORD2(v524) == 0;
      }

      LODWORD(v116) = !v121 || HIDWORD(v524) != 0;
    }

    *(*(this + 33) + 588) = 0;
    v123 = *(this + 33);
    v124 = *(v123 + 588);
    *(v123 + 588) = 0;
    *(*(this + 33) + 588) ^= 0x3FFu;
    v125 = *(this + 33);
    v126 = *(v125 + 588);
    *(v125 + 588) = v124;
    if (v116)
    {
      result = CAHDec::addToPatcherList(this, buf, 588, v117, 0x3FFFFFFFFFFLL, 32, v126, 4);
      if (result)
      {
        return result;
      }
    }
  }

  *(*(this + 33) + 292) = 0;
  v127 = *(this + 33);
  v128 = *(v127 + 292);
  *(v127 + 292) = 0;
  *(*(this + 33) + 292) ^= 0xFFFFFF00;
  v129 = *(this + 33);
  v130 = *(v129 + 292);
  *(v129 + 292) = v128;
  if (*(this + 1474) || *(this + 2986) || *(this + 2987))
  {
    result = CAHDec::addToPatcherList(this, this + 1474, 292, 0, 0xFFFFFFFFLL, 8, v130, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 592) = 0;
  v131 = *(this + 33);
  v132 = *(v131 + 592);
  *(v131 + 592) = 0;
  *(*(this + 33) + 592) ^= 0x3FFu;
  v133 = *(this + 33);
  v134 = *(v133 + 592);
  *(v133 + 592) = v132;
  if (*(this + 1474) || *(this + 2986) || *(this + 2987))
  {
    result = CAHDec::addToPatcherList(this, this + 1474, 592, 0, 0x3FFFFFFFFFFLL, 32, v134, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 296) = 0;
  v135 = *(this + 33);
  v136 = *(v135 + 296);
  *(v135 + 296) = 0;
  *(*(this + 33) + 296) ^= 0xFFFFFF00;
  v137 = *(this + 33);
  v138 = *(v137 + 296);
  *(v137 + 296) = v136;
  if (*(this + 1496) || *(this + 3030) || *(this + 3031))
  {
    result = CAHDec::addToPatcherList(this, this + 1496, 296, 0, 0xFFFFFFFFLL, 8, v138, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 596) = 0;
  v139 = *(this + 33);
  v140 = *(v139 + 596);
  *(v139 + 596) = 0;
  *(*(this + 33) + 596) ^= 0x3FFu;
  v141 = *(this + 33);
  v142 = *(v141 + 596);
  *(v141 + 596) = v140;
  if (*(this + 1496) || *(this + 3030) || *(this + 3031))
  {
    result = CAHDec::addToPatcherList(this, this + 1496, 596, 0, 0x3FFFFFFFFFFLL, 32, v142, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 300) = 0;
  v143 = *(this + 33);
  v144 = *(v143 + 300);
  *(v143 + 300) = 0;
  *(*(this + 33) + 300) ^= 0xFFFFFF00;
  v145 = *(this + 33);
  v146 = *(v145 + 300);
  *(v145 + 300) = v144;
  if (*(this + 1518) || *(this + 3074) || *(this + 3075))
  {
    result = CAHDec::addToPatcherList(this, this + 1518, 300, 0, 0xFFFFFFFFLL, 8, v146, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 600) = 0;
  v147 = *(this + 33);
  v148 = *(v147 + 600);
  *(v147 + 600) = 0;
  *(*(this + 33) + 600) ^= 0x3FFu;
  v149 = *(this + 33);
  v150 = *(v149 + 600);
  *(v149 + 600) = v148;
  if (*(this + 1518) || *(this + 3074) || *(this + 3075))
  {
    result = CAHDec::addToPatcherList(this, this + 1518, 600, 0, 0x3FFFFFFFFFFLL, 32, v150, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 304) = 0;
  v151 = *(this + 33);
  v152 = *(v151 + 304);
  *(v151 + 304) = 0;
  *(*(this + 33) + 304) ^= 0xFFFFFF00;
  v153 = *(this + 33);
  v154 = *(v153 + 304);
  *(v153 + 304) = v152;
  if (*(this + 1540) || *(this + 3118) || *(this + 3119))
  {
    result = CAHDec::addToPatcherList(this, this + 1540, 304, 0, 0xFFFFFFFFLL, 8, v154, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 604) = 0;
  v155 = *(this + 33);
  v156 = *(v155 + 604);
  *(v155 + 604) = 0;
  *(*(this + 33) + 604) ^= 0x3FFu;
  v157 = *(this + 33);
  v158 = *(v157 + 604);
  *(v157 + 604) = v156;
  if (*(this + 1540) || *(this + 3118) || *(this + 3119))
  {
    result = CAHDec::addToPatcherList(this, this + 1540, 604, 0, 0x3FFFFFFFFFFLL, 32, v158, 4);
    if (result)
    {
      return result;
    }
  }

  v510 = v13;
  v512 = v14;
  *(*(this + 33) + 308) = 0;
  v159 = *(this + 33);
  v160 = *(v159 + 308);
  *(v159 + 308) = 0;
  *(*(this + 33) + 308) ^= 0xFFFFFF00;
  v161 = *(this + 33);
  v162 = *(v161 + 308);
  *(v161 + 308) = v160;
  if (*(this + 1562) || *(this + 3162) || *(this + 3163))
  {
    result = CAHDec::addToPatcherList(this, this + 1562, 308, 0, 0xFFFFFFFFLL, 8, v162, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 608) = 0;
  v163 = *(this + 33);
  v164 = *(v163 + 608);
  *(v163 + 608) = 0;
  *(*(this + 33) + 608) ^= 0x3FFu;
  v165 = *(this + 33);
  v166 = *(v165 + 608);
  *(v165 + 608) = v164;
  if (*(this + 1562) || *(this + 3162) || *(this + 3163))
  {
    result = CAHDec::addToPatcherList(this, this + 1562, 608, 0, 0x3FFFFFFFFFFLL, 32, v166, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 332) = 0;
  *(*(this + 33) + 632) = 0;
  if (*(*(this + 32) + 16) == 2)
  {
    v167 = *(this + 33);
    v168 = *(v167 + 332);
    *(v167 + 332) = 0;
    *(*(this + 33) + 332) ^= 0xFFFFFF00;
    v169 = *(this + 33);
    v170 = *(v169 + 332);
    *(v169 + 332) = v168;
    if (*(this + 1650) || *(this + 3338) || *(this + 3339))
    {
      result = CAHDec::addToPatcherList(this, this + 1650, 332, 0, 0xFFFFFFFFLL, 8, v170, 4);
      if (result)
      {
        return result;
      }
    }

    v171 = *(this + 33);
    v172 = *(v171 + 632);
    *(v171 + 632) = 0;
    *(*(this + 33) + 632) ^= 0x3FFu;
    v173 = *(this + 33);
    v174 = *(v173 + 632);
    *(v173 + 632) = v172;
    if (*(this + 1650) || *(this + 3338) || *(this + 3339))
    {
      result = CAHDec::addToPatcherList(this, this + 1650, 632, 0, 0x3FFFFFFFFFFLL, 32, v174, 4);
      if (result)
      {
        return result;
      }
    }
  }

  *(*(this + 33) + 312) = 0;
  *(*(this + 33) + 612) = 0;
  v175 = *(this + 33);
  v176 = *(v175 + 312);
  *(v175 + 312) = 0;
  *(*(this + 33) + 312) ^= 0xFFFFFF00;
  v177 = *(this + 33);
  v178 = *(v177 + 312);
  *(v177 + 312) = v176;
  if (*(this + 1584) || *(this + 3206) || *(this + 3207))
  {
    result = CAHDec::addToPatcherList(this, this + 1584, 312, 0, 0xFFFFFFFFLL, 8, v178, 4);
    if (result)
    {
      return result;
    }
  }

  v179 = *(this + 33);
  v180 = *(v179 + 612);
  *(v179 + 612) = 0;
  *(*(this + 33) + 612) ^= 0x3FFu;
  v181 = *(this + 33);
  v182 = *(v181 + 612);
  *(v181 + 612) = v180;
  if (*(this + 1584) || *(this + 3206) || *(this + 3207))
  {
    result = CAHDec::addToPatcherList(this, this + 1584, 612, 0, 0x3FFFFFFFFFFLL, 32, v182, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 316) = 0;
  v183 = *(this + 33);
  v184 = *(v183 + 316);
  *(v183 + 316) = 0;
  *(*(this + 33) + 316) ^= 0xFFFFFF00;
  v185 = *(this + 33);
  v186 = *(v185 + 316);
  *(v185 + 316) = v184;
  if (*(this + 1100) || *(this + 2238) || *(this + 2239))
  {
    result = CAHDec::addToPatcherList(this, this + 1100, 316, 0, 0xFFFFFFFFLL, 8, v186, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 616) = 0;
  v187 = *(this + 33);
  v188 = *(v187 + 616);
  *(v187 + 616) = 0;
  *(*(this + 33) + 616) ^= 0x3FFu;
  v189 = *(this + 33);
  v190 = *(v189 + 616);
  *(v189 + 616) = v188;
  if (*(this + 1100) || *(this + 2238) || *(this + 2239))
  {
    result = CAHDec::addToPatcherList(this, this + 1100, 616, 0, 0x3FFFFFFFFFFLL, 32, v190, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 320) = 0;
  v191 = *(this + 33);
  v192 = *(v191 + 320);
  *(v191 + 320) = 0;
  *(*(this + 33) + 320) ^= 0xFFFFFF00;
  v193 = *(this + 33);
  v194 = *(v193 + 320);
  *(v193 + 320) = v192;
  v195 = (this + 176 * v507 + 8976);
  if (*v195 || *(this + 44 * v507 + 2282) || *(this + 44 * v507 + 2283))
  {
    result = CAHDec::addToPatcherList(this, this + 22 * v507 + 1122, 320, 0, 0xFFFFFFFFLL, 8, v194, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 620) = 0;
  v196 = *(this + 33);
  v197 = *(v196 + 620);
  *(v196 + 620) = 0;
  *(*(this + 33) + 620) ^= 0x3FFu;
  v198 = *(this + 33);
  v199 = *(v198 + 620);
  *(v198 + 620) = v197;
  if (*v195 || *(this + 44 * v507 + 2282) || *(this + 44 * v507 + 2283))
  {
    result = CAHDec::addToPatcherList(this, this + 22 * v507 + 1122, 620, 0, 0x3FFFFFFFFFFLL, 32, v199, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 324) = 0;
  v200 = *(this + 33);
  v201 = *(v200 + 324);
  *(v200 + 324) = 0;
  *(*(this + 33) + 324) ^= 0xFFFFFF00;
  v202 = *(this + 33);
  v203 = *(v202 + 324);
  *(v202 + 324) = v201;
  if (*(this + 1606) || *(this + 3250) || *(this + 3251))
  {
    result = CAHDec::addToPatcherList(this, this + 1606, 324, 0, 0xFFFFFFFFLL, 8, v203, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 624) = 0;
  v204 = *(this + 33);
  v205 = *(v204 + 624);
  *(v204 + 624) = 0;
  *(*(this + 33) + 624) ^= 0x3FFu;
  v206 = *(this + 33);
  v207 = *(v206 + 624);
  *(v206 + 624) = v205;
  if (*(this + 1606) || *(this + 3250) || *(this + 3251))
  {
    result = CAHDec::addToPatcherList(this, this + 1606, 624, 0, 0x3FFFFFFFFFFLL, 32, v207, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 328) = 0;
  v208 = *(this + 33);
  v209 = *(v208 + 328);
  *(v208 + 328) = 0;
  *(*(this + 33) + 328) ^= 0xFFFFFF00;
  v210 = *(this + 33);
  v211 = *(v210 + 328);
  *(v210 + 328) = v209;
  if (*(this + 1628) || *(this + 3294) || *(this + 3295))
  {
    result = CAHDec::addToPatcherList(this, this + 1628, 328, 0, 0xFFFFFFFFLL, 8, v211, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 628) = 0;
  v212 = *(this + 33);
  v213 = *(v212 + 628);
  *(v212 + 628) = 0;
  *(*(this + 33) + 628) ^= 0x3FFu;
  v214 = *(this + 33);
  v215 = *(v214 + 628);
  *(v214 + 628) = v213;
  if (*(this + 1628) || *(this + 3294) || *(this + 3295))
  {
    result = CAHDec::addToPatcherList(this, this + 1628, 628, 0, 0x3FFFFFFFFFFLL, 32, v215, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 336) = 0;
  *(*(this + 33) + 636) = 0;
  *(*(this + 33) + 340) = 0;
  *(*(this + 33) + 640) = 0;
  *(*(this + 33) + 344) = 0;
  *(*(this + 33) + 644) = 0;
  *(*(this + 33) + 348) = 0;
  *(*(this + 33) + 648) = 0;
  v216 = *(this + 33);
  if (*(*(this + 32) + 2648) == 1)
  {
    v217 = *(v216 + 340);
    *(v216 + 340) = 0;
    *(*(this + 33) + 340) ^= 0xFFFFFF80;
    v218 = *(this + 33);
    v219 = *(v218 + 340);
    *(v218 + 340) = v217;
    v221 = (v499 + 8);
    v220 = *(v499 + 8);
    if (v503)
    {
      if (v220 || *(v499 + 160) || *(v499 + 164))
      {
        result = CAHDec::addToPatcherList(this, (v499 + 8), 340, *(v499 + 68), 0xFFFFFFFFLL, 7, v219, 4);
        if (result)
        {
          return result;
        }
      }

      v222 = *(this + 33);
      v223 = *(v222 + 640);
      *(v222 + 640) = 0;
      *(*(this + 33) + 640) ^= 0x3FFu;
      v224 = *(this + 33);
      v225 = *(v224 + 640);
      *(v224 + 640) = v223;
      if (*v221 || *(v499 + 160) || *(v499 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 640, *(v499 + 68), 0x3FFFFFFFFFFLL, 32, v225, 4);
        if (result)
        {
          return result;
        }
      }

      v226 = *(this + 33);
      v227 = *(v226 + 336);
      *(v226 + 336) = 0;
      *(*(this + 33) + 336) ^= 0xFFFFFF80;
      v228 = *(this + 33);
      v229 = *(v228 + 336);
      *(v228 + 336) = v227;
      if (*v221 || *(v499 + 160) || *(v499 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 336, *(v499 + 80), 0xFFFFFFFFLL, 7, v229, 4);
        if (result)
        {
          return result;
        }
      }

      v230 = *(this + 33);
      v231 = *(v230 + 636);
      *(v230 + 636) = 0;
      *(*(this + 33) + 636) ^= 0x3FFu;
      v232 = *(this + 33);
      v233 = *(v232 + 636);
      *(v232 + 636) = v231;
      if (*v221 || *(v499 + 160) || *(v499 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 636, *(v499 + 80), 0x3FFFFFFFFFFLL, 32, v233, 4);
        if (result)
        {
          return result;
        }
      }

      if (v505)
      {
        v234 = *(this + 33);
        v235 = *(v234 + 348);
        *(v234 + 348) = 0;
        *(*(this + 33) + 348) ^= 0xFFFFFF80;
        v236 = *(this + 33);
        v237 = *(v236 + 348);
        *(v236 + 348) = v235;
        if (*v500 || *(v500 + 152) || *(v500 + 156))
        {
          result = CAHDec::addToPatcherList(this, v500, 348, *(v500 + 56), 0xFFFFFFFFLL, 7, v237, 4);
          if (result)
          {
            return result;
          }
        }

        v238 = *(this + 33);
        v239 = *(v238 + 648);
        *(v238 + 648) = 0;
        *(*(this + 33) + 648) ^= 0x3FFu;
        v240 = *(this + 33);
        v241 = *(v240 + 648);
        *(v240 + 648) = v239;
        if (*v500 || *(v500 + 152) || *(v500 + 156))
        {
          result = CAHDec::addToPatcherList(this, v500, 648, *(v500 + 56), 0x3FFFFFFFFFFLL, 32, v241, 4);
          if (result)
          {
            return result;
          }
        }

        v242 = *(this + 33);
        v243 = *(v242 + 344);
        *(v242 + 344) = 0;
        *(*(this + 33) + 344) ^= 0xFFFFFF80;
        v244 = *(this + 33);
        v245 = *(v244 + 344);
        *(v244 + 344) = v243;
        if (*v500 || *(v500 + 152) || *(v500 + 156))
        {
          result = CAHDec::addToPatcherList(this, v500, 344, *(v500 + 68), 0xFFFFFFFFLL, 7, v245, 4);
          if (result)
          {
            return result;
          }
        }

        v246 = *(this + 33);
        v247 = *(v246 + 644);
        *(v246 + 644) = 0;
        *(*(this + 33) + 644) ^= 0x3FFu;
        v248 = *(this + 33);
        v249 = *(v248 + 644);
        *(v248 + 644) = v247;
        if (*v500 || *(v500 + 152) || *(v500 + 156))
        {
          v250 = v500;
          v251 = *(v500 + 68);
          v252 = this;
LABEL_343:
          v289 = 644;
LABEL_344:
          result = CAHDec::addToPatcherList(v252, v250, v289, v251, 0x3FFFFFFFFFFLL, 32, v249, 4);
          if (result)
          {
            return result;
          }
        }
      }
    }

    else
    {
      if (v220 || *(v499 + 160) || *(v499 + 164))
      {
        result = CAHDec::addToPatcherList(this, (v499 + 8), 340, *(v499 + 60), 0xFFFFFFFFLL, 7, v219, 4);
        if (result)
        {
          return result;
        }
      }

      v290 = *(this + 33);
      v291 = *(v290 + 348);
      *(v290 + 348) = 0;
      *(*(this + 33) + 348) ^= 0xFFFFFF80;
      v292 = *(this + 33);
      v293 = *(v292 + 348);
      *(v292 + 348) = v291;
      if (*v221 || *(v499 + 160) || *(v499 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 348, *(v499 + 64), 0xFFFFFFFFLL, 7, v293, 4);
        if (result)
        {
          return result;
        }
      }

      v294 = *(this + 33);
      v295 = *(v294 + 336);
      *(v294 + 336) = 0;
      *(*(this + 33) + 336) ^= 0xFFFFFF80;
      v296 = *(this + 33);
      v297 = *(v296 + 336);
      *(v296 + 336) = v295;
      if (*v221 || *(v499 + 160) || *(v499 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 336, *(v499 + 72), 0xFFFFFFFFLL, 7, v297, 4);
        if (result)
        {
          return result;
        }
      }

      v298 = *(this + 33);
      v299 = *(v298 + 344);
      *(v298 + 344) = 0;
      *(*(this + 33) + 344) ^= 0xFFFFFF80;
      v300 = *(this + 33);
      v301 = *(v300 + 344);
      *(v300 + 344) = v299;
      if (*v221 || *(v499 + 160) || *(v499 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 344, *(v499 + 76), 0xFFFFFFFFLL, 7, v301, 4);
        if (result)
        {
          return result;
        }
      }

      v302 = *(this + 33);
      v303 = *(v302 + 640);
      *(v302 + 640) = 0;
      *(*(this + 33) + 640) ^= 0x3FFu;
      v304 = *(this + 33);
      v305 = *(v304 + 640);
      *(v304 + 640) = v303;
      if (*v221 || *(v499 + 160) || *(v499 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 640, *(v499 + 60), 0x3FFFFFFFFFFLL, 32, v305, 4);
        if (result)
        {
          return result;
        }
      }

      v306 = *(this + 33);
      v307 = *(v306 + 648);
      *(v306 + 648) = 0;
      *(*(this + 33) + 648) ^= 0x3FFu;
      v308 = *(this + 33);
      v309 = *(v308 + 648);
      *(v308 + 648) = v307;
      if (*v221 || *(v499 + 160) || *(v499 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 648, *(v499 + 64), 0x3FFFFFFFFFFLL, 32, v309, 4);
        if (result)
        {
          return result;
        }
      }

      v310 = *(this + 33);
      v311 = *(v310 + 636);
      *(v310 + 636) = 0;
      *(*(this + 33) + 636) ^= 0x3FFu;
      v312 = *(this + 33);
      v313 = *(v312 + 636);
      *(v312 + 636) = v311;
      if (*v221 || *(v499 + 160) || *(v499 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 636, *(v499 + 72), 0x3FFFFFFFFFFLL, 32, v313, 4);
        if (result)
        {
          return result;
        }
      }

      v314 = *(this + 33);
      v315 = *(v314 + 644);
      *(v314 + 644) = 0;
      *(*(this + 33) + 644) ^= 0x3FFu;
      v316 = *(this + 33);
      v249 = *(v316 + 644);
      *(v316 + 644) = v315;
      if (*v221 || *(v499 + 160) || *(v499 + 164))
      {
        v251 = *(v499 + 76);
        v252 = this;
        v250 = (v499 + 8);
        goto LABEL_343;
      }
    }
  }

  else
  {
    v256 = *(v216 + 336);
    *(v216 + 336) = 0;
    *(*(this + 33) + 336) ^= 0xFFFFFF80;
    v257 = *(this + 33);
    v258 = *(v257 + 336);
    *(v257 + 336) = v256;
    v259 = (this + 176 * v507 + 528);
    if (*v259 || *(this + 44 * v507 + 170) || *(this + 44 * v507 + 171))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v507 + 66, 336, 0, 0xFFFFFFFFLL, 7, v258, 4);
      if (result)
      {
        return result;
      }
    }

    v260 = *(this + 33);
    v261 = *(v260 + 636);
    *(v260 + 636) = 0;
    *(*(this + 33) + 636) ^= 0x3FFu;
    v262 = *(this + 33);
    v263 = *(v262 + 636);
    *(v262 + 636) = v261;
    if (*v259 || *(this + 44 * v507 + 170) || *(this + 44 * v507 + 171))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v507 + 66, 636, 0, 0x3FFFFFFFFFFLL, 32, v263, 4);
      if (result)
      {
        return result;
      }
    }

    v264 = *(this + 33);
    v265 = *(v264 + 340);
    *(v264 + 340) = 0;
    *(*(this + 33) + 340) ^= 0xFFFFFF80;
    v266 = *(this + 33);
    v267 = *(v266 + 340);
    *(v266 + 340) = v265;
    v268 = (v499 + 8);
    if (*(v499 + 8) || *(v499 + 160) || *(v499 + 164))
    {
      result = CAHDec::addToPatcherList(this, (v499 + 8), 340, *(v499 + 60), 0xFFFFFFFFLL, 7, v267, 4);
      if (result)
      {
        return result;
      }
    }

    v269 = *(this + 33);
    v270 = *(v269 + 640);
    *(v269 + 640) = 0;
    *(*(this + 33) + 640) ^= 0x3FFu;
    v271 = *(this + 33);
    v272 = *(v271 + 640);
    *(v271 + 640) = v270;
    if (*v268 || *(v499 + 160) || *(v499 + 164))
    {
      result = CAHDec::addToPatcherList(this, v268, 640, *(v499 + 60), 0x3FFFFFFFFFFLL, 32, v272, 4);
      if (result)
      {
        return result;
      }
    }

    v273 = *(this + 33);
    v274 = *(v273 + 344);
    *(v273 + 344) = 0;
    *(*(this + 33) + 344) ^= 0xFFFFFF80;
    v275 = *(this + 33);
    v276 = *(v275 + 344);
    *(v275 + 344) = v274;
    v277 = (this + 176 * v507 + 3344);
    if (*v277 || *(this + 44 * v507 + 874) || *(this + 44 * v507 + 875))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v507 + 418, 344, 0, 0xFFFFFFFFLL, 7, v276, 4);
      if (result)
      {
        return result;
      }
    }

    v278 = *(this + 33);
    v279 = *(v278 + 644);
    *(v278 + 644) = 0;
    *(*(this + 33) + 644) ^= 0x3FFu;
    v280 = *(this + 33);
    v281 = *(v280 + 644);
    *(v280 + 644) = v279;
    if (*v277 || *(this + 44 * v507 + 874) || *(this + 44 * v507 + 875))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v507 + 418, 644, 0, 0x3FFFFFFFFFFLL, 32, v281, 4);
      if (result)
      {
        return result;
      }
    }

    v282 = *(this + 33);
    v283 = *(v282 + 348);
    *(v282 + 348) = 0;
    *(*(this + 33) + 348) ^= 0xFFFFFF80;
    v284 = *(this + 33);
    v285 = *(v284 + 348);
    *(v284 + 348) = v283;
    if (*v268 || *(v499 + 160) || *(v499 + 164))
    {
      result = CAHDec::addToPatcherList(this, v268, 348, *(v499 + 64), 0xFFFFFFFFLL, 7, v285, 4);
      if (result)
      {
        return result;
      }
    }

    v286 = *(this + 33);
    v287 = *(v286 + 648);
    *(v286 + 648) = 0;
    *(*(this + 33) + 648) ^= 0x3FFu;
    v288 = *(this + 33);
    v249 = *(v288 + 648);
    *(v288 + 648) = v287;
    if (*v268 || *(v499 + 160) || *(v499 + 164))
    {
      v251 = *(v499 + 64);
      v252 = this;
      v250 = (v499 + 8);
      v289 = 648;
      goto LABEL_344;
    }
  }

  if (*(v510 + 88) & 0x2000 | v501)
  {
    *(this + v507 + 116) = 0;
    *(*(this + 33) + 352) = 0;
    if (!v501)
    {
      goto LABEL_465;
    }

    v317 = 0;
    if (v513)
    {
      v318 = 0x2000000;
    }

    else
    {
      v318 = 0;
    }

    v319 = v528;
    v320 = v527;
    v321 = v526;
    while (1)
    {
      v322 = *v319;
      if (!*v319 || !*(v322 + 48))
      {
        return 0xFFFFFFFFLL;
      }

      v323 = *(v322 + 44);
      if ((*(**(this + 32) + 184))(*(this + 32)))
      {
        v324 = *(this + 32);
        if (v324[689])
        {
          *buf = 0;
          if (((*(*v324 + 312))(v324, v323, buf) & 1) == 0)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 0xFFFFFFFFLL;
            }

            v515 = 0;
            v42 = MEMORY[0x277D86220];
            v43 = "AppleAVD: decodeGetRenderTargetRef RETURNED ERROR\n";
            v254 = &v515;
            v255 = 2;
            goto LABEL_276;
          }

          *(v322 + 48) = *buf + 8;
        }
      }

      *(*(this + 33) + v317 + 352) = 0;
      *(*(this + 33) + v317 + 352) = *(*(this + 33) + v317 + 352) & 0xFFFFFFF | ((v501 << 28) - 0x10000000);
      *(*(this + 33) + v317 + 352) &= 0xF3FFFFFF;
      *(*(this + 33) + v317 + 352) = *(*(this + 33) + v317 + 352) & 0xFDFFFFFF | v318;
      *(*(this + 33) + v317 + 352) |= 0x1000000u;
      v325 = v502 - *(v322 + 12);
      v326 = v325 & 0x1FFFF;
      if (v325 < -32768)
      {
        v326 = 98304;
      }

      if (v325 <= 0x8000)
      {
        v327 = v326;
      }

      else
      {
        v327 = 0x8000;
      }

      *(*(this + 33) + v317 + 352) = *(*(this + 33) + v317 + 352) & 0xFFFE0000 | v327;
      *(*(this + 33) + v317 + 352) = *(*(this + 33) + v317 + 352) & 0xFFFDFFFF | ((*(v322 + 20) == 2) << 17);
      *(*(this + 33) + v317 + 384) = 0;
      *(*(this + 33) + v317 + 652) = 0;
      *(*(this + 33) + v317 + 416) = 0;
      *(*(this + 33) + v317 + 684) = 0;
      *(*(this + 33) + v317 + 448) = 0;
      *(*(this + 33) + v317 + 716) = 0;
      *(*(this + 33) + v317 + 480) = 0;
      *(*(this + 33) + v317 + 748) = 0;
      v328 = *(this + 33);
      if (*(*(this + 32) + 2648) == 1)
      {
        v329 = v317 + 416;
        v330 = v328 + v317;
        v331 = *(v330 + 416);
        *(v330 + 416) = 0;
        *(*(this + 33) + v317 + 416) ^= 0xFFFFFF80;
        v332 = *(this + 33) + v317;
        v333 = *(v332 + 416);
        *(v332 + 416) = v331;
        v334 = *(v322 + 48);
        v335 = *v334;
        if (v503)
        {
          if (v335 || *(v334 + 38) || *(v334 + 39))
          {
            result = CAHDec::addToPatcherList(this, v334, v329, *(v334 + 15), 0xFFFFFFFFLL, 7, v333, 4);
            if (result)
            {
              return result;
            }
          }

          v336 = *(this + 33) + v317;
          v337 = *(v336 + 684);
          *(v336 + 684) = 0;
          *(*(this + 33) + v317 + 684) ^= 0x3FFu;
          v338 = *(this + 33) + v317;
          v339 = *(v338 + 684);
          *(v338 + 684) = v337;
          v340 = *(v322 + 48);
          if (*v340 || *(v340 + 152) || *(v340 + 156))
          {
            result = CAHDec::addToPatcherList(this, v340, v317 + 684, *(v340 + 60), 0x3FFFFFFFFFFLL, 32, v339, 4);
            if (result)
            {
              return result;
            }
          }

          v341 = *(this + 33) + v317;
          v342 = *(v341 + 384);
          *(v341 + 384) = 0;
          *(*(this + 33) + v317 + 384) ^= 0xFFFFFF80;
          v343 = *(this + 33) + v317;
          v344 = *(v343 + 384);
          *(v343 + 384) = v342;
          v345 = *(v322 + 48);
          if (*v345 || *(v345 + 152) || *(v345 + 156))
          {
            result = CAHDec::addToPatcherList(this, v345, v317 + 384, *(v345 + 72), 0xFFFFFFFFLL, 7, v344, 4);
            if (result)
            {
              return result;
            }
          }

          v346 = *(this + 33) + v317;
          v347 = *(v346 + 652);
          *(v346 + 652) = 0;
          *(*(this + 33) + v317 + 652) ^= 0x3FFu;
          v348 = *(this + 33) + v317;
          v349 = *(v348 + 652);
          *(v348 + 652) = v347;
          v350 = *(v322 + 48);
          if (*v350 || *(v350 + 152) || *(v350 + 156))
          {
            result = CAHDec::addToPatcherList(this, v350, v317 + 652, *(v350 + 72), 0x3FFFFFFFFFFLL, 32, v349, 4);
            if (result)
            {
              return result;
            }
          }

          if (v505)
          {
            v351 = *(this + 33) + v317;
            v352 = *(v351 + 480);
            *(v351 + 480) = 0;
            *(*(this + 33) + v317 + 480) ^= 0xFFFFFF80;
            v353 = *(this + 33) + v317;
            v354 = *(v353 + 480);
            *(v353 + 480) = v352;
            if (*v500 || *(v500 + 152) || *(v500 + 156))
            {
              result = CAHDec::addToPatcherList(this, v500, v317 + 480, *(v500 + 56), 0xFFFFFFFFLL, 7, v354, 4);
              if (result)
              {
                return result;
              }
            }

            v355 = *(this + 33) + v317;
            v356 = *(v355 + 748);
            *(v355 + 748) = 0;
            *(*(this + 33) + v317 + 748) ^= 0x3FFu;
            v357 = *(this + 33) + v317;
            v358 = *(v357 + 748);
            *(v357 + 748) = v356;
            if (*v500 || *(v500 + 152) || *(v500 + 156))
            {
              result = CAHDec::addToPatcherList(this, v500, v317 + 748, *(v500 + 56), 0x3FFFFFFFFFFLL, 32, v358, 4);
              if (result)
              {
                return result;
              }
            }

            v359 = *(this + 33) + v317;
            v360 = *(v359 + 448);
            *(v359 + 448) = 0;
            *(*(this + 33) + v317 + 448) ^= 0xFFFFFF80;
            v361 = *(this + 33) + v317;
            v362 = *(v361 + 448);
            *(v361 + 448) = v360;
            if (*v500 || *(v500 + 152) || *(v500 + 156))
            {
              result = CAHDec::addToPatcherList(this, v500, v317 + 448, *(v500 + 68), 0xFFFFFFFFLL, 7, v362, 4);
              if (result)
              {
                return result;
              }
            }

            v363 = *(this + 33) + v317;
            v364 = *(v363 + 716);
            *(v363 + 716) = 0;
            *(*(this + 33) + v317 + 716) ^= 0x3FFu;
            v365 = *(this + 33) + v317;
            v366 = *(v365 + 716);
            *(v365 + 716) = v364;
            if (*v500 || *(v500 + 152) || *(v500 + 156))
            {
              v367 = v317 + 716;
              v368 = v500;
LABEL_462:
              v405 = *(v368 + 68);
LABEL_463:
              result = CAHDec::addToPatcherList(this, v368, v367, v405, 0x3FFFFFFFFFFLL, 32, v366, 4);
              if (result)
              {
                return result;
              }
            }
          }
        }

        else
        {
          if (v335 || *(v334 + 38) || *(v334 + 39))
          {
            result = CAHDec::addToPatcherList(this, v334, v329, *(v334 + 13), 0xFFFFFFFFLL, 7, v333, 4);
            if (result)
            {
              return result;
            }
          }

          v406 = *(this + 33) + v317;
          v407 = *(v406 + 480);
          *(v406 + 480) = 0;
          *(*(this + 33) + v317 + 480) ^= 0xFFFFFF80;
          v408 = *(this + 33) + v317;
          v409 = *(v408 + 480);
          *(v408 + 480) = v407;
          v410 = *(v322 + 48);
          if (*v410 || *(v410 + 152) || *(v410 + 156))
          {
            result = CAHDec::addToPatcherList(this, v410, v317 + 480, *(v410 + 56), 0xFFFFFFFFLL, 7, v409, 4);
            if (result)
            {
              return result;
            }
          }

          v411 = *(this + 33) + v317;
          v412 = *(v411 + 384);
          *(v411 + 384) = 0;
          *(*(this + 33) + v317 + 384) ^= 0xFFFFFF80;
          v413 = *(this + 33) + v317;
          v414 = *(v413 + 384);
          *(v413 + 384) = v412;
          v415 = *(v322 + 48);
          if (*v415 || *(v415 + 152) || *(v415 + 156))
          {
            result = CAHDec::addToPatcherList(this, v415, v317 + 384, *(v415 + 64), 0xFFFFFFFFLL, 7, v414, 4);
            if (result)
            {
              return result;
            }
          }

          v416 = *(this + 33) + v317;
          v417 = *(v416 + 448);
          *(v416 + 448) = 0;
          *(*(this + 33) + v317 + 448) ^= 0xFFFFFF80;
          v418 = *(this + 33) + v317;
          v419 = *(v418 + 448);
          *(v418 + 448) = v417;
          v420 = *(v322 + 48);
          if (*v420 || *(v420 + 152) || *(v420 + 156))
          {
            result = CAHDec::addToPatcherList(this, v420, v317 + 448, *(v420 + 68), 0xFFFFFFFFLL, 7, v419, 4);
            if (result)
            {
              return result;
            }
          }

          v421 = *(this + 33) + v317;
          v422 = *(v421 + 684);
          *(v421 + 684) = 0;
          *(*(this + 33) + v317 + 684) ^= 0x3FFu;
          v423 = *(this + 33) + v317;
          v424 = *(v423 + 684);
          *(v423 + 684) = v422;
          v425 = *(v322 + 48);
          if (*v425 || *(v425 + 152) || *(v425 + 156))
          {
            result = CAHDec::addToPatcherList(this, v425, v317 + 684, *(v425 + 52), 0x3FFFFFFFFFFLL, 32, v424, 4);
            if (result)
            {
              return result;
            }
          }

          v426 = *(this + 33) + v317;
          v427 = *(v426 + 748);
          *(v426 + 748) = 0;
          *(*(this + 33) + v317 + 748) ^= 0x3FFu;
          v428 = *(this + 33) + v317;
          v429 = *(v428 + 748);
          *(v428 + 748) = v427;
          v430 = *(v322 + 48);
          if (*v430 || *(v430 + 152) || *(v430 + 156))
          {
            result = CAHDec::addToPatcherList(this, v430, v317 + 748, *(v430 + 56), 0x3FFFFFFFFFFLL, 32, v429, 4);
            if (result)
            {
              return result;
            }
          }

          v431 = *(this + 33) + v317;
          v432 = *(v431 + 652);
          *(v431 + 652) = 0;
          *(*(this + 33) + v317 + 652) ^= 0x3FFu;
          v433 = *(this + 33) + v317;
          v434 = *(v433 + 652);
          *(v433 + 652) = v432;
          v435 = *(v322 + 48);
          if (*v435 || *(v435 + 152) || *(v435 + 156))
          {
            result = CAHDec::addToPatcherList(this, v435, v317 + 652, *(v435 + 64), 0x3FFFFFFFFFFLL, 32, v434, 4);
            if (result)
            {
              return result;
            }
          }

          v436 = *(this + 33) + v317;
          v437 = *(v436 + 716);
          *(v436 + 716) = 0;
          *(*(this + 33) + v317 + 716) ^= 0x3FFu;
          v438 = *(this + 33) + v317;
          v366 = *(v438 + 716);
          *(v438 + 716) = v437;
          v368 = *(v322 + 48);
          if (*v368 || *(v368 + 152) || *(v368 + 156))
          {
            v367 = v317 + 716;
            goto LABEL_462;
          }
        }
      }

      else
      {
        v369 = v328 + v317;
        v370 = *(v369 + 384);
        *(v369 + 384) = 0;
        *(*(this + 33) + v317 + 384) ^= 0xFFFFFF80;
        v371 = *(this + 33) + v317;
        v372 = *(v371 + 384);
        *(v371 + 384) = v370;
        v373 = *v320;
        if (**v320 || *(v373 + 152) || *(v373 + 156))
        {
          result = CAHDec::addToPatcherList(this, *v320, v317 + 384, 0, 0xFFFFFFFFLL, 7, v372, 4);
          if (result)
          {
            return result;
          }
        }

        v374 = *(this + 33) + v317;
        v375 = *(v374 + 652);
        *(v374 + 652) = 0;
        *(*(this + 33) + v317 + 652) ^= 0x3FFu;
        v376 = *(this + 33) + v317;
        v377 = *(v376 + 652);
        *(v376 + 652) = v375;
        if (*v373 || *(v373 + 152) || *(v373 + 156))
        {
          result = CAHDec::addToPatcherList(this, v373, v317 + 652, 0, 0x3FFFFFFFFFFLL, 32, v377, 4);
          if (result)
          {
            return result;
          }
        }

        v378 = *(this + 33) + v317;
        v379 = *(v378 + 416);
        *(v378 + 416) = 0;
        *(*(this + 33) + v317 + 416) ^= 0xFFFFFF80;
        v380 = *(this + 33) + v317;
        v381 = *(v380 + 416);
        *(v380 + 416) = v379;
        v382 = *(v322 + 48);
        if (*v382 || *(v382 + 152) || *(v382 + 156))
        {
          result = CAHDec::addToPatcherList(this, v382, v317 + 416, *(v382 + 52), 0xFFFFFFFFLL, 7, v381, 4);
          if (result)
          {
            return result;
          }
        }

        v383 = *(this + 33) + v317;
        v384 = *(v383 + 684);
        *(v383 + 684) = 0;
        *(*(this + 33) + v317 + 684) ^= 0x3FFu;
        v385 = *(this + 33) + v317;
        v386 = *(v385 + 684);
        *(v385 + 684) = v384;
        v387 = *(v322 + 48);
        if (*v387 || *(v387 + 152) || *(v387 + 156))
        {
          result = CAHDec::addToPatcherList(this, v387, v317 + 684, *(v387 + 52), 0x3FFFFFFFFFFLL, 32, v386, 4);
          if (result)
          {
            return result;
          }
        }

        v388 = *(this + 33) + v317;
        v389 = *(v388 + 448);
        *(v388 + 448) = 0;
        *(*(this + 33) + v317 + 448) ^= 0xFFFFFF80;
        v390 = *(this + 33) + v317;
        v391 = *(v390 + 448);
        *(v390 + 448) = v389;
        v392 = *v321;
        if (**v321 || *(v392 + 152) || *(v392 + 156))
        {
          result = CAHDec::addToPatcherList(this, *v321, v317 + 448, 0, 0xFFFFFFFFLL, 7, v391, 4);
          if (result)
          {
            return result;
          }
        }

        v393 = *(this + 33) + v317;
        v394 = *(v393 + 716);
        *(v393 + 716) = 0;
        *(*(this + 33) + v317 + 716) ^= 0x3FFu;
        v395 = *(this + 33) + v317;
        v396 = *(v395 + 716);
        *(v395 + 716) = v394;
        if (*v392 || *(v392 + 152) || *(v392 + 156))
        {
          result = CAHDec::addToPatcherList(this, v392, v317 + 716, 0, 0x3FFFFFFFFFFLL, 32, v396, 4);
          if (result)
          {
            return result;
          }
        }

        v397 = *(this + 33) + v317;
        v398 = *(v397 + 480);
        *(v397 + 480) = 0;
        *(*(this + 33) + v317 + 480) ^= 0xFFFFFF80;
        v399 = *(this + 33) + v317;
        v400 = *(v399 + 480);
        *(v399 + 480) = v398;
        v401 = *(v322 + 48);
        if (*v401 || *(v401 + 152) || *(v401 + 156))
        {
          result = CAHDec::addToPatcherList(this, v401, v317 + 480, *(v401 + 56), 0xFFFFFFFFLL, 7, v400, 4);
          if (result)
          {
            return result;
          }
        }

        v402 = *(this + 33) + v317;
        v403 = *(v402 + 748);
        *(v402 + 748) = 0;
        *(*(this + 33) + v317 + 748) ^= 0x3FFu;
        v404 = *(this + 33) + v317;
        v366 = *(v404 + 748);
        *(v404 + 748) = v403;
        v368 = *(v322 + 48);
        if (*v368 || *(v368 + 152) || *(v368 + 156))
        {
          v367 = v317 + 748;
          v405 = *(v368 + 56);
          goto LABEL_463;
        }
      }

      v317 += 4;
      ++v319;
      ++v320;
      ++v321;
      if (4 * v501 == v317)
      {
        goto LABEL_465;
      }
    }
  }

  *(v510 + 88) |= 0x2000u;
  *(this + v507 + 116) = 1;
  *(*(this + 33) + 352) = 0;
LABEL_465:
  *(*(this + 33) + 512) = 0;
  *(*(this + 33) + 516) = 0;
  *(*(this + 33) + 520) = 0;
  *(*(this + 33) + 524) = 0;
  if (!v514)
  {
    goto LABEL_529;
  }

  v439 = *(this + 32);
  if (v508 && v504 == 2)
  {
    v440 = *(*(v439 + 8248) + 60);
    v441 = *(this + 33);
    v442 = *(v441 + 512);
    *(v441 + 512) = 0;
    *(*(this + 33) + 512) ^= 0xFFFFFFC0;
    v443 = *(this + 33);
    v444 = *(v443 + 512);
    *(v443 + 512) = v442;
    v445 = *(*(this + 32) + 8248);
    if (*v445 || *(v445 + 152) || *(v445 + 156))
    {
      result = CAHDec::addToPatcherList(this, v445, 512, v440, 0xFFFFFFFFLL, 6, v444, 4);
      if (result)
      {
        return result;
      }
    }

    v446 = *(this + 33);
    v447 = *(v446 + 780);
    *(v446 + 780) = 0;
    *(*(this + 33) + 780) ^= 0x3FFu;
    v448 = *(this + 33);
    v449 = *(v448 + 780);
    *(v448 + 780) = v447;
    v450 = *(*(this + 32) + 8248);
    if (*v450 || *(v450 + 152) || *(v450 + 156))
    {
      result = CAHDec::addToPatcherList(this, v450, 780, v440, 0x3FFFFFFFFFFLL, 32, v449, 4);
      if (result)
      {
        return result;
      }
    }

    if (v505)
    {
      v451 = *(v500 + 56);
      v452 = *(this + 33);
      v453 = *(v452 + 516);
      *(v452 + 516) = 0;
      *(*(this + 33) + 516) ^= 0xFFFFFFC0;
      v454 = *(this + 33);
      v455 = *(v454 + 516);
      *(v454 + 516) = v453;
      if (*v500 || *(v500 + 152) || *(v500 + 156))
      {
        result = CAHDec::addToPatcherList(this, v500, 516, v451, 0xFFFFFFFFLL, 6, v455, 4);
        if (result)
        {
          return result;
        }
      }

      v456 = *(this + 33);
      v457 = *(v456 + 784);
      *(v456 + 784) = 0;
      *(*(this + 33) + 784) ^= 0x3FFu;
      v458 = *(this + 33);
      v459 = *(v458 + 784);
      *(v458 + 784) = v457;
      if (*v500 || *(v500 + 152) || *(v500 + 156))
      {
        result = CAHDec::addToPatcherList(this, v500, 784, v451, 0x3FFFFFFFFFFLL, 32, v459, 4);
        if (result)
        {
          return result;
        }
      }
    }

    if (v506)
    {
      *(*(this + 33) + 520) = *(*(this + 33) + 520) & 0xFFFC003F | (((*(*(*(this + 32) + 8248) + 84) >> 6) & 0xFFF) << 6);
      if (v505)
      {
        v460 = v500;
LABEL_488:
        v461 = (v460 + 80);
LABEL_528:
        *(*(this + 33) + 524) = *(*(this + 33) + 524) & 0xFFF8003F | (((*v461 >> 6) & 0x1FFF) << 6);
      }

LABEL_529:
      v491 = *(this + 32);
      if (*(v491 + 2360) != 1)
      {
        return 0;
      }

      v492 = *(this + 33);
      *(v492 + 884) = *(v492 + 884) & 0xFFFFFFFE | *(v491 + 2508) & 1;
      if (*(v491 + 2508))
      {
        *(v492 + 2884) = 0x10000000;
        *(v492 + 2888) = *(v491 + 2368);
        *(v492 + 2896) = 0;
        *(v492 + 2892) = 0;
        *(v492 + 2904) = *(v491 + 2372);
        v493 = *(v491 + 2404);
        *(v492 + 2920) = *(v491 + 2388);
        *(v492 + 2936) = v493;
      }

      *(*(this + 33) + 884) = *(*(this + 33) + 884) & 0xFFFFFFFD | (2 * (*(v491 + 2512) & 1));
      if (*(v491 + 2512))
      {
        *(v492 + 2952) = 0;
        v494 = *(v491 + 2424);
        *(v492 + 2952) = (*(v491 + 2424) & 1) << 22;
        v495 = ((*(v491 + 2420) & 1) << 23) | ((v494 & 1) << 22) | 0x20000000;
        *(v492 + 2952) = v495;
        if (!*(v491 + 2364))
        {
          ++v495;
        }

        *(v492 + 2952) = v495;
        v496 = *(v491 + 2428);
        v497 = *(v491 + 2460);
        *(v492 + 2972) = *(v491 + 2444);
        *(v492 + 2988) = v497;
        *(v492 + 2956) = v496;
      }

      *(*(this + 33) + 884) = *(*(this + 33) + 884) & 0xFFFFFFFB | (4 * (*(v491 + 2516) & 1));
      *(*(this + 33) + 884) = *(*(this + 33) + 884) & 0xFFFFFFF7 | (8 * (*(v491 + 2520) & 1));
      *(*(this + 33) + 884) = *(*(this + 33) + 884) & 0xFFFFFFEF | (16 * (*(v491 + 2524) & 1));
      *(v492 + 3008) = 0;
      v498 = *(v491 + 2476) == 2 ? 805306368 : 813694976;
      *(v492 + 3008) = v498;
      memcpy((v492 + 3012), (v491 + 2480), 4 * *(v491 + 2476));
      if (!*(v491 + 2516))
      {
        return 0;
      }

      result = 0;
      *(v491 + 2516) = 0;
      return result;
    }

    if (CAHDecDaisyHevc::getSWRStride(this, *(v510 + 160) - *(v510 + 156) + 1, v512[909], v512[910], v512[5713]))
    {
      return 0xFFFFFFFFLL;
    }

    *(*(this + 33) + 520) = *(*(this + 33) + 520) & 0xFFFC003F | (((*(this + 3352) >> 6) & 0xFFF) << 6);
    if (!v505)
    {
      goto LABEL_529;
    }

LABEL_527:
    v461 = (this + 13412);
    goto LABEL_528;
  }

  v462 = *(v439 + 2892);
  if (*(v439 + 2892))
  {
    v463 = *(v439 + 2904);
    v462 = *(v439 + 2908);
  }

  else
  {
    v463 = 0;
  }

  v464 = *(v439 + 8248);
  v466 = *(v464 + 52);
  v465 = *(v464 + 56);
  v467 = v466 + v463;
  v468 = __CFADD__(v466, v463);
  v469 = v465 + v462;
  if (__CFADD__(v465, v462))
  {
    v470 = 2;
  }

  else
  {
    v470 = v468;
  }

  if (v470)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 136315394;
    *&buf[4] = "populatePictureRegisters";
    *&buf[12] = 1024;
    *&buf[14] = v470;
    v42 = MEMORY[0x277D86220];
    v43 = "AppleAVD: %s(): failKind = %d";
    v254 = buf;
    v255 = 18;
    goto LABEL_276;
  }

  v471 = *(this + 33);
  v472 = *(v471 + 512);
  *(v471 + 512) = 0;
  *(*(this + 33) + 512) ^= 0xFFFFFFC0;
  v473 = *(this + 33);
  v474 = *(v473 + 512);
  *(v473 + 512) = v472;
  v475 = *(*(this + 32) + 8248);
  if (!*v475 && !*(v475 + 152) && !*(v475 + 156) || (result = CAHDec::addToPatcherList(this, v475, 512, v467, 0xFFFFFFFFLL, 6, v474, 4), !result))
  {
    if ((v476 = *(this + 33), v477 = *(v476 + 780), *(v476 + 780) = 0, *(*(this + 33) + 780) ^= 0x3FFu, v478 = *(this + 33), v479 = *(v478 + 780), *(v478 + 780) = v477, v480 = *(*(this + 32) + 8248), !*v480) && !*(v480 + 152) && !*(v480 + 156) || (result = CAHDec::addToPatcherList(this, v480, 780, v467, 0x3FFFFFFFFFFLL, 32, v479, 4), !result))
    {
      if ((v481 = *(this + 33), v482 = *(v481 + 516), *(v481 + 516) = 0, *(*(this + 33) + 516) ^= 0xFFFFFFC0, v483 = *(this + 33), v484 = *(v483 + 516), *(v483 + 516) = v482, v485 = *(*(this + 32) + 8248), !*v485) && !*(v485 + 152) && !*(v485 + 156) || (result = CAHDec::addToPatcherList(this, v485, 516, v469, 0xFFFFFFFFLL, 6, v484, 4), !result))
      {
        if ((v486 = *(this + 33), v487 = *(v486 + 784), *(v486 + 784) = 0, *(*(this + 33) + 784) ^= 0x3FFu, v488 = *(this + 33), v489 = *(v488 + 784), *(v488 + 784) = v487, v490 = *(*(this + 32) + 8248), !*v490) && !*(v490 + 152) && !*(v490 + 156) || (result = CAHDec::addToPatcherList(this, v490, 784, v469, 0x3FFFFFFFFFFLL, 32, v489, 4), !result))
        {
          if (v506)
          {
            *(*(this + 33) + 520) = *(*(this + 33) + 520) & 0xFFFC003F | (((*(*(*(this + 32) + 8248) + 76) >> 6) & 0xFFF) << 6);
            v460 = *(*(this + 32) + 8248);
            goto LABEL_488;
          }

          if (CAHDecDaisyHevc::getSWRStride(this, *(v510 + 160) - *(v510 + 156) + 1, v512[909], v512[910], v512[5713]))
          {
            return 0xFFFFFFFFLL;
          }

          *(*(this + 33) + 520) = *(*(this + 33) + 520) & 0xFFFC003F | (((*(this + 3352) >> 6) & 0xFFF) << 6);
          goto LABEL_527;
        }
      }
    }
  }

  return result;
}