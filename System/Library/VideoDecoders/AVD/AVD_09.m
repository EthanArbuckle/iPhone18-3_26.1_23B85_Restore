uint64_t CAHDecThymeAvc::getTileIdxAbove(CAHDecThymeAvc *this, unsigned int a2)
{
  v2 = *(*(this + 33) + 888);
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

uint64_t CAHDecThymeAvc::populateAvdWork(CAHDecThymeAvc *this, unsigned int a2)
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
    v9 = (v2 + 3144);
    v10 = (v4 + 20);
    v22 = a2;
    v11 = 44 * a2;
    v12 = v2 + 956 * v5;
    while (1)
    {
      v13 = v12 + v7;
      *(v13 + 2212) = v8;
      *(v13 + 2214) = 0;
      *(v13 + 2216) = v8;
      *(v12 + v7 + 2218) = 0;
      v14 = *v9;
      if (!CAVDAvcDecoder::GetSDataMemInfo(*(this + 32), v8, &v24, &v23))
      {
        return 0xFFFFFFFFLL;
      }

      v15 = *v10;
      *(v13 + 2240) = *v10;
      *(v13 + 2244) = v15;
      *(v13 + 2248) = 0;
      if (v7)
      {
        v16 = 0;
      }

      else
      {
        v16 = 15;
      }

      *(v13 + 2222) = v16;
      v17 = v24;
      if (*v24 || *(v24 + 152) || *(v24 + 156))
      {
        v18 = v23;
        if (HIDWORD(v23) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v26 = "populateAvdWork";
          v27 = 1024;
          v28 = 2034;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v18 = v23;
        }

        result = CAHDec::addToPatcherList(this, v17, v7 + 862630, v18, 0x3FFFFFFFFFFLL, 32, -1, 2);
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
            v28 = 2035;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v20 = v23;
          }
        }

        result = CAHDec::addToPatcherList(this, v17, v7 + 862632, v20, 0xFFFFFFFFLL, 0, -1, 4);
        if (result)
        {
          return result;
        }
      }

      v9 += 239;
      *(v12 + v7 + 2236) = v14;
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
    *(v2 + 32) = 862608;
  }

  return result;
}

uint64_t CAHDecThymeAvc::allocWorkBuf_SPS(CAHDecThymeAvc *this, _BYTE *a2)
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

  *(this + 3968) = v10;
  *(this + 3969) = v17;
  *(this + 1985) = 0;
  v18 = 76 * v4 + 76;
  *(this + 3974) = v18;
  *(this + 3973) = v18 + v18 * v6;
  if (!*(*(this + 32) + 2648))
  {
    v19 = (this + 560);
    v20 = (this + 4784);
    v21 = 24;
    while (1)
    {
      v22 = *(this + 3968);
      if (v22 && CAVDDecoder::allocAVDMem(*(this + 32), v19, v22, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_37;
        }

        v29 = 136315650;
        v30 = "allocWorkBuf_SPS";
        v31 = 1024;
        v32 = 2273;
        v33 = 2080;
        v34 = "HdrY";
        v28 = MEMORY[0x277D86220];
        goto LABEL_36;
      }

      v23 = *(this + 3969);
      if (v23)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), v20, v23, 7, 1, 0))
        {
          break;
        }
      }

      v19 += 11;
      v20 += 11;
      if (!--v21)
      {
        goto LABEL_25;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    v29 = 136315650;
    v30 = "allocWorkBuf_SPS";
    v31 = 1024;
    v32 = 2274;
    v33 = 2080;
    v34 = "HdrC";
    v28 = MEMORY[0x277D86220];
    goto LABEL_36;
  }

LABEL_25:
  v24 = (this + 10416);
  v25 = 24;
  while (1)
  {
    v26 = *(this + 3973);
    if (v26)
    {
      if (CAVDDecoder::allocAVDMem(*(this + 32), v24, v26, 7, 1, 0))
      {
        break;
      }
    }

    v24 += 11;
    if (!--v25)
    {
      result = 0;
      *(this + 3978) = 0;
      *(this + 3979) = v5 | (v6 << 20) | 0xF000F;
      return result;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v29 = 136315650;
    v30 = "allocWorkBuf_SPS";
    v31 = 1024;
    v32 = 2280;
    v33 = 2080;
    v34 = "MvColo";
    v28 = MEMORY[0x277D86220];
LABEL_36:
    _os_log_impl(&dword_277606000, v28, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v29, 0x1Cu);
  }

LABEL_37:
  (*(*this + 144))(this);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecThymeAvc::allocWorkBuf_PPS(CAHDecThymeAvc *this, _BYTE *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
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

  if (a2[4])
  {
    v10 = v8;
  }

  else
  {
    v10 = 16;
  }

  if (a2[4])
  {
    v11 = v9;
  }

  else
  {
    v11 = 64;
  }

  if (CAVDDecoder::allocAVDMem(*(this + 32), this + 915, 20 * *(a2 + 779) + 20, 7, 1, 0))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_20:
      (*(*this + 160))(this, 0);
      return 0xFFFFFFFFLL;
    }

    v15 = 136315650;
    v16 = "allocWorkBuf_PPS";
    v17 = 1024;
    v18 = 2399;
    v19 = 2080;
    v20 = "AvpAboveInfo";
    v12 = MEMORY[0x277D86220];
LABEL_19:
    _os_log_impl(&dword_277606000, v12, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v15, 0x1Cu);
    goto LABEL_20;
  }

  v14 = v6 + 1;
  if (v7)
  {
    if (CAVDDecoder::allocAVDMem(*(this + 32), this + 926, ((v7 * v10) >> 3) * v14, 7, 1, 0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v15 = 136315650;
      v16 = "allocWorkBuf_PPS";
      v17 = 1024;
      v18 = 2403;
      v19 = 2080;
      v20 = "IpAbove";
      v12 = MEMORY[0x277D86220];
      goto LABEL_19;
    }

    if (CAVDDecoder::allocAVDMem(*(this + 32), this + 937, ((v7 * v11) >> 3) * v14, 7, 1, 0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v15 = 136315650;
      v16 = "allocWorkBuf_PPS";
      v17 = 1024;
      v18 = 2404;
      v19 = 2080;
      v20 = "LfAbovePix";
      v12 = MEMORY[0x277D86220];
      goto LABEL_19;
    }
  }

  if (CAVDDecoder::allocAVDMem(*(this + 32), this + 948, 36 * v14, 7, 1, 0))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v15 = 136315650;
    v16 = "allocWorkBuf_PPS";
    v17 = 1024;
    v18 = 2405;
    v19 = 2080;
    v20 = "LfAboveInfo";
    v12 = MEMORY[0x277D86220];
    goto LABEL_19;
  }

  result = CAVDDecoder::allocAVDMem(*(this + 32), this + 640, 36 * v14, 7, 1, 0);
  if (result)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v15 = 136315650;
    v16 = "allocWorkBuf_PPS";
    v17 = 1024;
    v18 = 2408;
    v19 = 2080;
    v20 = "MvAboveInfo";
    v12 = MEMORY[0x277D86220];
    goto LABEL_19;
  }

  return result;
}

uint64_t CAHDecThymeAvc::freeWorkBuf_SPS(CAHDecThymeAvc *this)
{
  v2 = (this + 560);
  v3 = (this + 4784);
  v4 = (this + 10416);
  v5 = 24;
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

    if (v3[704])
    {
      result = CAVDDecoder::deallocAVDMem(*(this + 32), v4);
      v3[704] = 0;
    }

    v4 += 22;
    v2 += 22;
    v3 += 22;
    --v5;
  }

  while (v5);
  return result;
}

uint64_t *CAHDecThymeAvc::freeWorkBuf_PPS(uint64_t *this, void *a2)
{
  v2 = this;
  if (this[1830])
  {
    this = CAVDDecoder::deallocAVDMem(this[32], this + 1830);
    v2[1830] = 0;
  }

  if (v2[1852])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1852);
    v2[1852] = 0;
  }

  if (v2[1280])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1280);
    v2[1280] = 0;
  }

  if (v2[1874])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1874);
    v2[1874] = 0;
  }

  if (v2[1896])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1896);
    v2[1896] = 0;
  }

  if (v2[1918])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1918);
    v2[1918] = 0;
  }

  if (v2[1940])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1940);
    v2[1940] = 0;
  }

  if (v2[1962])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1962);
    v2[1962] = 0;
  }

  return this;
}

uint64_t CAHDecThymeAvc::setVPInstrFifo(uint64_t this, int a2)
{
  v2 = 0;
  v3 = (this + 9164);
  do
  {
    *v3 = 1;
    *(v3 - 39) = v2++;
    v3 += 44;
  }

  while (v2 != 7);
  *(this + 15888) = a2;
  return this;
}

CAHDec *createIxoraAvcDecoder(uint64_t a1)
{
  v2 = operator new(0x36A0uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecIxoraAvc::CAHDecIxoraAvc(v2, a1);
  }

  return v3;
}

CAHDec *CAHDecIxoraAvc::CAHDecIxoraAvc(CAHDec *a1, uint64_t a2)
{
  CAHDec::CAHDec(a1);
  *v4 = &unk_288668440;
  *(v4 + 256) = a2;
  *(v4 + 456) = 956 * *(a2 + 7388) + 182448;
  *(v4 + 8) = 2224;
  *(v4 + 16) = xmmword_27775BAD0;
  *(v4 + 32) = 1;
  *(v4 + 56) = a2;
  *(v4 + 13808) = 0u;
  *(v4 + 13824) = 0u;
  *(v4 + 13840) = 0u;
  *(v4 + 13856) = 0u;
  *(v4 + 13872) = 0u;
  *(v4 + 13888) = 0u;
  *(v4 + 13904) = 0u;
  *(v4 + 13920) = 0u;
  *(v4 + 13936) = 0u;
  *(v4 + 13952) = 0u;
  *(v4 + 13968) = 0u;
  bzero((v4 + 560), 0x3390uLL);
  return a1;
}

void CAHDecIxoraAvc::~CAHDecIxoraAvc(CAHDecIxoraAvc *this)
{
  *this = &unk_288668440;
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecIxoraAvc::~CAHDecIxoraAvc(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecIxoraAvc::init(CAHDecIxoraAvc *this)
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

uint64_t CAHDecIxoraAvc::initPicture(CAHDecIxoraAvc *this, int a2, __int16 a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = 956 * *(*(this + 32) + 7388) + 182448;
  *(this + 114) = v5;
  *(this + 13) = 0;
  v6 = *(this + 34);
  *(this + 33) = v6;
  if (v6)
  {
    bzero(v6, v5);
    v8 = *(this + *(this + 13) + 34);
    *(v8 + 16) = a2;
    *(v8 + 24) = 257;
    *(v8 + 26) = a3;
    bzero(*(this + 9), 48 * *(this + 17));
    result = 0;
    *(this + 16) = 0;
    *(this + 3447) = 0;
    *(this + 1731) = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "initPicture";
      v12 = 1024;
      v13 = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): decode buffer at index %d is NULL!\n", &v10, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t CAHDecIxoraAvc::populateSlices(CAHDecIxoraAvc *this, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = *(this + *(this + 13) + 34) + 2224;
    v5 = a2;
    do
    {
      CAHDecIxoraAvc::populateSliceRegisters(this, v4, v3++);
      v4 += 956;
    }

    while (v5 != v3);
  }

  return 0;
}

uint64_t CAHDecIxoraAvc::populateSliceRegisters(uint64_t a1, uint64_t a2, signed int a3)
{
  v3 = a3;
  v4 = 0;
  v97 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 256);
  v6 = *(v5 + 3504);
  v7 = *(v5 + 3192);
  v87 = *(v5 + 3184);
  v88 = *(v5 + 3500);
  v8 = *(v5 + 6952);
  v9 = *(v5 + 3208);
  v10 = *(v5 + 3200) + 1848 * a3;
  *(a2 + 4) = 0;
  v11 = 32 * (*(v10 + 1424) & 3);
  *(a2 + 4) = v11;
  if (*(v10 + 24) != 2)
  {
    v4 = (*(v10 + 63) & 0xF) << 11;
  }

  v12 = v4 | v11;
  *(a2 + 4) = v12;
  if (*(v10 + 24) == 1)
  {
    v13 = (*(v10 + 64) & 0xF) << 7;
  }

  else
  {
    v13 = 0;
  }

  v15 = v13 | v12;
  *(a2 + 4) = v15;
  if (*(v10 + 24) == 1)
  {
    v16 = (*(v10 + 61) == 0) << 15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 | v15 & 0x7FFF7FE0;
  *(a2 + 4) = v17;
  if (*(v10 + 24))
  {
    v18 = 0x20000;
  }

  else
  {
    v18 = 0x10000;
  }

  if (*(v10 + 24) == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  *(a2 + 4) = v19 | v17 & 0xFFFFFFE0;
  if (*(v10 + 24) != 1)
  {
    goto LABEL_20;
  }

  v20 = v9 + 13040 * a3 + 7224;
  *(v10 + 1832) = v20;
  if ((*(v9 + 13040 * a3 + 7227) & 1) != 0 || (v21 = *(v9 + 13040 * a3 + 7256), *(a1 + 4 * v21 + 464)))
  {
    v22 = 16;
  }

  else
  {
    if (!*(a1 + 13788))
    {
      *(a1 + 13848) = *(v9 + 13040 * a3 + 7264);
      *(a1 + 13840) = v21;
      *(a1 + 13788) = 1;
      *(a2 + 4) |= 0x40000u;
      v20 = *(v10 + 1832);
      if (!v20 || !*(a1 + 13788))
      {
        goto LABEL_20;
      }
    }

    v83 = *(v20 + 40);
    if (v83 == *(a1 + 13848))
    {
      goto LABEL_20;
    }

    *(a1 + 13848) = v83;
    *(a1 + 13840) = *(v20 + 32);
    v22 = 0x40000;
  }

  *(a2 + 4) |= v22;
LABEL_20:
  *(a2 + 920) = 0;
  *(a2 + 952) = 0;
  if (*(v10 + 24) == 1 && (*(a2 + 6) & 4) != 0)
  {
    v33 = *(*(v10 + 1832) + 32);
    *(a1 + 13788) = 1;
    v34 = *(a1 + 13780) * v33;
    v35 = 956 * a3;
    if (*(a1 + 13584) || *(a1 + 13736) || *(a1 + 13740))
    {
      v89 = v7;
      v36 = v6;
      v37 = v9;
      result = CAHDec::addToPatcherList(a1, (a1 + 13584), v35 + 3144, v34, 0xFFFFFFFFLL, 8, -256, 4);
      if (result)
      {
        return result;
      }

      v3 = a3;
      v9 = v37;
      v6 = v36;
      v7 = v89;
      if (*(a1 + 13584))
      {
        goto LABEL_41;
      }
    }

    if (*(a1 + 13736) || *(a1 + 13740))
    {
LABEL_41:
      result = CAHDec::addToPatcherList(a1, (a1 + 13584), v35 + 3176, v34, 0x3FFFFFFFFFFLL, 32, 1023, 4);
      if (result)
      {
        return result;
      }
    }
  }

  v85 = (v7 + 604 * v6);
  v86 = v3;
  *(a2 + 4) = *(a2 + 4) & 0x77FFFF | 0x2D000000;
  v23 = *(v10 + 24);
  if (v23 <= 1)
  {
    v24 = v5 + 6760;
    v25 = v9 + 13040 * a3;
    if (*(v25 + 13032))
    {
      v26 = 0;
      v27 = a2 + 8;
      v28 = v25 + 1416;
      v29 = MEMORY[0x277D86220];
      do
      {
        v30 = (16 * (v26 & 0xF)) | 0x2DC00000;
        *(v27 + 4 * v26) = v30;
        if (v8)
        {
          v31 = 0;
          while (*(*(v24 + 8 * v31) + 12) != *(v28 + 176 * v26 + 12))
          {
            if (v8 == ++v31)
            {
              goto LABEL_29;
            }
          }

          *(v27 + 4 * v26) = v31 & 0xF | v30;
        }

        else
        {
LABEL_29:
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(v28 + 176 * v26 + 32);
            *buf = 67109632;
            *v95 = v26;
            *&v95[4] = 1024;
            *&v95[6] = v32;
            LOWORD(v96[0]) = 1024;
            *(v96 + 2) = v8;
            _os_log_impl(&dword_277606000, v29, OS_LOG_TYPE_DEFAULT, "AppleAVD: Error: list-0 slice(%2d) RefIdx[%2d] not found in %d ref_pics!!\n", buf, 0x14u);
          }
        }

        ++v26;
      }

      while (v26 < *(v25 + 13032));
      v23 = *(v10 + 24);
    }

    else
    {
      LODWORD(v26) = 0;
    }

    if (v23 == 1 && *(v25 + 13036))
    {
      v40 = 0;
      v41 = a2 + 8;
      v42 = v25 + 7224;
      v43 = MEMORY[0x277D86220];
      do
      {
        v44 = (16 * (v40 & 0xF)) | 0x2DC00100;
        *(v41 + 4 * v26) = v44;
        if (v8)
        {
          v45 = 0;
          while (*(*(v24 + 8 * v45) + 12) != *(v42 + 176 * v40 + 12))
          {
            if (v8 == ++v45)
            {
              goto LABEL_51;
            }
          }

          *(v41 + 4 * v26) = v45 & 0xF | v44;
        }

        else
        {
LABEL_51:
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v46 = *(v42 + 176 * v40 + 32);
            *buf = 67109632;
            *v95 = v26;
            *&v95[4] = 1024;
            *&v95[6] = v46;
            LOWORD(v96[0]) = 1024;
            *(v96 + 2) = v8;
            _os_log_impl(&dword_277606000, v43, OS_LOG_TYPE_DEFAULT, "AppleAVD: Error: list-1 slice(%2d) RefIdx[%2d] not found in %d ref_pics!!\n", buf, 0x14u);
          }
        }

        LODWORD(v26) = v26 + 1;
        ++v40;
      }

      while (v40 < *(v25 + 13036));
    }
  }

  *(a2 + 136) = 0x2DD0000000000000;
  v47 = 87;
  if (*(v10 + 24) == 1)
  {
    v47 = 88;
  }

  v48 = ((v85[v47] & 3) << 6) | 0x2DD00000;
  *(a2 + 140) = v48;
  v49 = v48 & 0xFFFFFFC7 | (8 * (*(v10 + 376) & 7));
  *(a2 + 140) = v49;
  v50 = *(v87 + 2224 * v88 + 4);
  if (*(v87 + 2224 * v88 + 4))
  {
    v50 = *(v10 + 377) & 7;
  }

  v51 = v50 | v49;
  *(a2 + 140) = v51;
  v52 = *(v10 + 24);
  if (v52 != 1)
  {
    goto LABEL_139;
  }

  v53 = v85[88];
  if (v53 != 2)
  {
    goto LABEL_63;
  }

  *(a2 + 140) = v51 & 0x2DD000C0 | 0x2D;
  v52 = *(v10 + 24);
  if (v52 != 1)
  {
LABEL_139:
    if (v52 || !v85[87])
    {
      goto LABEL_83;
    }

    goto LABEL_67;
  }

  v53 = v85[88];
LABEL_63:
  if (v53 != 1)
  {
    goto LABEL_83;
  }

LABEL_67:
  v54 = 0;
  v55 = 0;
  v56 = a2 + 144;
  v57 = a2 + 528;
  do
  {
    if (*(v10 + 378 + v55))
    {
      v58 = ((v55 & 0xF) << 9) | 0x2DE04000;
      *(v56 + 4 * v54) = v58;
      *(v56 + 4 * v54) = v58 | *(v10 + 394 + 2 * v55) & 0x1FF;
      *(v57 + 4 * v54) = 770703360;
      *(v57 + 4 * v54++) = *(v10 + 426 + 2 * v55) | 0x2DF00000;
    }

    if (*(v10 + 458 + v55))
    {
      v59 = 0;
      v60 = 1;
      do
      {
        v61 = v60;
        v62 = (((v55 & 0xF) << 9) | (v59 << 14)) + 769687552;
        *(v56 + 4 * v54) = v62;
        *(v56 + 4 * v54) = v62 | *(v10 + 474 + 4 * v55 + 2 * v59) & 0x1FF;
        *(v57 + 4 * v54) = 770703360;
        *(v57 + 4 * v54++) = *(v10 + 538 + 4 * v55 + 2 * v59) | 0x2DF00000;
        v59 = 1;
        v60 = 0;
      }

      while ((v61 & 1) != 0);
    }

    ++v55;
  }

  while (v55 <= *(v10 + 63));
  if (*(v10 + 24) == 1)
  {
    v63 = 0;
    do
    {
      if (*(v10 + 602 + v63))
      {
        v64 = ((v63 & 0xF) << 9) + 769679360;
        *(v56 + 4 * v54) = v64;
        *(v56 + 4 * v54) = v64 | *(v10 + 618 + 2 * v63) & 0x1FF;
        *(v57 + 4 * v54) = 770703360;
        *(v57 + 4 * v54++) = *(v10 + 650 + 2 * v63) | 0x2DF00000;
      }

      if (*(v10 + 682 + v63))
      {
        v65 = 0;
        v66 = 1;
        do
        {
          v67 = v66;
          v68 = (((v63 & 0xF) << 9) | (v65 << 14)) + 769695744;
          *(v56 + 4 * v54) = v68;
          *(v56 + 4 * v54) = v68 | *(v10 + 698 + 4 * v63 + 2 * v65) & 0x1FF;
          *(v57 + 4 * v54) = 770703360;
          *(v57 + 4 * v54++) = *(v10 + 762 + 4 * v63 + 2 * v65) | 0x2DF00000;
          v65 = 1;
          v66 = 0;
        }

        while ((v67 & 1) != 0);
      }

      ++v63;
    }

    while (v63 <= *(v10 + 64));
  }

  *(a2 + 136) = v54;
LABEL_83:
  *(a2 + 912) = 0;
  *(a2 + 912) = (((v85[89] + *(v10 + 1425)) << 10) + 26624) & 0x1FC00 | 0x2D900000;
  *(a2 + 916) = 0;
  v69 = (*(v10 + 1428) == 0) << 17;
  *(a2 + 916) = v69;
  if (*(v10 + 1428) != 1)
  {
    v70 = v69 | 0x10000;
    *(a2 + 916) = v70;
    v71 = v70 | ((*(v10 + 1429) & 0xF) << 8);
    *(a2 + 916) = v71;
    v69 = v71 | ((*(v10 + 1430) & 0xF) << 12);
  }

  *(a2 + 916) = v69 | 0x2DA00000;
  v72 = *(v10 + 1436);
  if (v85[3])
  {
    v73 = 0;
    if ((v72 & 7) != 0)
    {
      *(v10 + 1436) = (v72 + 7) & 0xFFFFFFF8;
    }
  }

  else
  {
    v73 = *(v10 + 1436) & 7;
  }

  *(a2 + 924) = (v73 << 15) | 0x2D800000;
  v74 = *(a1 + 256);
  v75 = *(v74 + 626);
  v92 = 0;
  v93 = 0;
  if (!CAVDAvcDecoder::GetSDataMemInfo(v74, v86, &v93, &v92))
  {
    return 0xFFFFFFFFLL;
  }

  v76 = 956 * v86;
  v77 = v93;
  if (!*v93 && !*(v93 + 152) && !*(v93 + 156))
  {
    goto LABEL_99;
  }

  v78 = v92;
  if (HIDWORD(v92) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v95 = "populateSliceRegisters";
    *&v95[8] = 1024;
    v96[0] = 1747;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v78 = v92;
  }

  result = CAHDec::addToPatcherList(a1, v77, v76 + 3148, v78, 0x3FFFFFFFFFFLL, 32, 1023, 4);
  if (result)
  {
    return result;
  }

  v77 = v93;
  if (!*v93)
  {
LABEL_99:
    if (!*(v77 + 152) && !*(v77 + 156))
    {
LABEL_104:
      v80 = *(v10 + 16) - (*(v10 + 1436) >> 3);
      *(a2 + 936) = v80;
      if (*(v74 + 590) != 1)
      {
        return 0;
      }

      *(a2 + 944) = 0;
      v81 = *(v10 + 1840);
      if (*(v74 + 605))
      {
        result = 0;
        if (v80 < v81)
        {
          v81 = v80;
        }

        if (v73)
        {
          v82 = v81 == 0;
        }

        else
        {
          v82 = 0;
        }

        if (v82)
        {
          v81 = 1;
        }

        *(a2 + 948) = v75 & 0x10000 | v81;
      }

      else
      {
        v84 = 0;
        if ((v75 & 0x200000) != 0)
        {
          if (v73 && !*(v10 + 1840))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *v95 = "int CAHDecIxoraAvc::populateSliceRegisters(AvcSliceRegisters *, int)";
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: expect off_to_prot_data to be set when slice header is not byte aligned\n", buf, 0xCu);
              v80 = *(a2 + 936);
              v84 = *(a2 + 948) & 0x1F0000;
            }

            else
            {
              v84 = 0;
            }

            v81 = 1;
          }
        }

        else if (v73)
        {
          ++v81;
        }

        result = 0;
        if (v81 >= v80)
        {
          v81 = v80;
        }

        *(a2 + 948) = v84 & 0xFFDFFFFF | (v81 << 22) | v75 | (((v75 >> 20) & 1) << 21);
      }

      return result;
    }
  }

  v79 = v92;
  if (HIDWORD(v92) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v95 = "populateSliceRegisters";
    *&v95[8] = 1024;
    v96[0] = 1748;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v79 = v92;
  }

  result = CAHDec::addToPatcherList(a1, v77, v76 + 3156, v79, 0xFFFFFFFFLL, 0, -1, 4);
  if (!result)
  {
    goto LABEL_104;
  }

  return result;
}

uint64_t CAHDecIxoraAvc::updateCommonRegisters(CAHDecIxoraAvc *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -889266515;
  return 0;
}

void CAHDecIxoraAvc::copyScalingList(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = 0;
  v8 = *a2 & 0xFEFFFFC0 | 0x1000000;
  *a2 = v8;
  do
  {
    v8 |= (*(a4 + v7) == 0) << v7;
    *a2 = v8;
    ++v7;
  }

  while (v7 != 6);
  v9 = v8 & 0xFFFFF03F;
  *a2 = v8 & 0xFFFFF03F;
  v10 = (a7 - 6);
  if (a7 > 6)
  {
    v11 = (a4 + 6);
    v12 = &dword_27775C29C;
    do
    {
      v13 = *v11++;
      v14 = v13 == 0;
      v16 = *v12++;
      v15 = v16;
      v17 = v14;
      v9 |= ((v17 << v15) & 0x3F) << 6;
      *a2 = v9;
      --v10;
    }

    while (v10);
  }

  v18 = 0;
  v19 = (a5 + 1);
  v20 = a3;
  do
  {
    v21 = 0;
    v22 = v19;
    do
    {
      v23 = *(v20 + 4 * v21) & 0xFFFFFF | (*(v22 - 1) << 24);
      *(v20 + 4 * v21) = v23;
      v24 = v23 & 0xFF00FFFF | (*v22 << 16);
      *(v20 + 4 * v21) = v24;
      v25 = v24 & 0xFFFF00FF | (v22[1] << 8);
      *(v20 + 4 * v21) = v25;
      *(v20 + 4 * v21++) = v25 & 0xFFFFFF00 | v22[2];
      v22 += 4;
    }

    while (v21 != 4);
    ++v18;
    v20 += 16;
    v19 += 16;
  }

  while (v18 != 6);
  v26 = 0;
  v27 = a3 + 96;
  do
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = a6 + (dword_27775C2B4[v26] << 6);
    do
    {
      v32 = (v31 + (v29 & 0x20 | v30 & 4 | v28 & 0x18));
      v33 = *(v27 + v29) & 0xFFFFFF | (*v32 << 24);
      *(v27 + v29) = v33;
      v34 = v33 & 0xFF00FFFF | (v32[1] << 16);
      *(v27 + v29) = v34;
      v35 = v34 & 0xFFFF00FF | (v32[2] << 8);
      *(v27 + v29) = v35;
      *(v27 + v29) = v35 & 0xFFFFFF00 | v32[3];
      ++v30;
      v29 += 4;
      v28 += 8;
    }

    while (v29 != 64);
    ++v26;
    v27 += 64;
  }

  while (v26 != 6);
}

void CAHDecIxoraAvc::AvcSeqScalingListFallBack(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 9))
  {
    v2 = 0;
    v3 = 8;
    if (*(a2 + 4) == 3)
    {
      v3 = 12;
    }

    v4 = (a2 - 382);
    v5 = 18;
    while (v2 > 5)
    {
      if (*(a2 + v2 + 10))
      {
        if (*(a2 + v2 + 22) == 2)
        {
          if (v2 == 6 || (v2 & 0x7FFFFFFD) == 8)
          {
            v4[8] = avcDefaultIntraScalingList8x8;
            v4[9] = unk_27775C31C;
            v10 = xmmword_27775C32C;
            v11 = unk_27775C33C;
          }

          else
          {
            v4[8] = avcDefaultInterScalingList8x8;
            v4[9] = unk_27775C2DC;
            v10 = xmmword_27775C2EC;
            v11 = unk_27775C2FC;
          }

          v4[10] = v10;
          v4[11] = v11;
        }

        goto LABEL_24;
      }

      if (v2 - 8 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v12 = v4[1];
        v4[8] = *v4;
        v4[9] = v12;
        v13 = v4[3];
        v4[10] = v4[2];
        v4[11] = v13;
        v8 = a2 + v2;
        v9 = *(a2 + v2 + 20);
LABEL_21:
        *(v8 + 22) = v9;
      }

LABEL_24:
      ++v2;
      v4 += 4;
      v5 += 16;
      if (v3 == v2)
      {
        return;
      }
    }

    if (*(a2 + v2 + 10))
    {
      v6 = 1;
    }

    else
    {
      v6 = v2 == 0;
    }

    if (v6 || v2 == 3)
    {
      goto LABEL_24;
    }

    *(a2 + v5 + 16) = *(a2 + v5);
    v8 = a2 + v2;
    v9 = *(a2 + v2 + 21);
    goto LABEL_21;
  }
}

void CAHDecIxoraAvc::AvcPicScalingListFallBack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 96))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 8;
    if (*(a2 + 4) == 3)
    {
      v6 = 12;
    }

    do
    {
      if (v5 > 5)
      {
        if (*(a3 + v5 + 97))
        {
          if (*(a3 + v5 + 109) == 2)
          {
            v8 = (a3 + v4 - 167);
            if (v5 == 6 || (v5 & 0x7FFFFFFD) == 8)
            {
              *v8 = avcDefaultIntraScalingList8x8;
              *(a3 + v4 - 151) = unk_27775C31C;
              v9 = xmmword_27775C32C;
              v10 = unk_27775C33C;
            }

            else
            {
              *v8 = avcDefaultInterScalingList8x8;
              *(a3 + v4 - 151) = unk_27775C2DC;
              v9 = xmmword_27775C2EC;
              v10 = unk_27775C2FC;
            }

            *(a3 + v4 - 135) = v9;
            *(a3 + v4 - 119) = v10;
          }

          goto LABEL_29;
        }

        if (v5 - 8 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v11 = a3 + v4;
          *(v11 - 119) = *(a3 + v4 - 247);
          v12 = *(a3 + v4 - 279);
          *(v11 - 167) = *(a3 + v4 - 295);
          *(v11 - 151) = v12;
          *(v11 - 135) = *(a3 + v4 - 263);
          v13 = a3 + v5;
          v14 = *(a3 + v5 + 107);
LABEL_28:
          *(v13 + 109) = v14;
          goto LABEL_29;
        }

        if (*(a2 + 9))
        {
          v15 = a3 + v4;
          v16 = *(a2 + v4 - 254);
          v17 = *(a2 + v4 - 238);
          v18 = *(a2 + v4 - 222);
          *(v15 - 119) = *(a2 + v4 - 206);
          *(v15 - 135) = v18;
          *(v15 - 151) = v17;
          *(v15 - 167) = v16;
          goto LABEL_22;
        }
      }

      else
      {
        if (*(a3 + v5 + 97))
        {
          if ((*(a3 + v5 + 109) & 2) != 0)
          {
            if (v5 > 2)
            {
              v7 = avcDefaultInterScalingList4x4;
            }

            else
            {
              v7 = avcDefaultIntraScalingList4x4;
            }

            *(a3 + v3 + 121) = v7;
          }

          goto LABEL_29;
        }

        if (v5 && v5 != 3)
        {
          *(a3 + v3 + 121) = *(a3 + v3 + 105);
          v13 = a3 + v5;
          v14 = *(a3 + v5 + 108);
          goto LABEL_28;
        }

        if (*(a2 + 9))
        {
          *(a3 + v3 + 121) = *(a2 + v3 + 34);
LABEL_22:
          *(a3 + v5 + 109) = *(a2 + v5 + 22);
        }
      }

LABEL_29:
      ++v5;
      v4 += 64;
      v3 += 16;
    }

    while (v6 != v5);
  }
}

uint64_t CAHDecIxoraAvc::populateSequenceRegisters(CAHDecIxoraAvc *this)
{
  v2 = *(this + 32);
  v3 = *(this + 33);
  v4 = *(v2 + 3500);
  v5 = *(v2 + 3504);
  v6 = *(v2 + 3184);
  v7 = *(v2 + 3192);
  v8 = v6 + 2224 * v4;
  v3[10] = 0;
  LOWORD(v4) = *(v8 + 1558);
  v3[10] = (2 * (v4 & 0xFFF)) | 1;
  v3[10] = ((*(v8 + 1560) & 0xFFF) << 17) | (2 * (v4 & 0xFFF)) | 0x10001;
  v3[11] = 0;
  v9 = *(v8 + 1564) & 1;
  v3[11] = v9;
  v10 = v9 | ((*(v7 + 604 * v5 + 95) != 0) << 7) | 0x2800;
  v3[11] = v10;
  v11 = *(v8 + 4);
  if (*(v8 + 4))
  {
    v11 = (*(v8 + 7) & 0xF) << 15;
  }

  v12 = v11 | v10;
  v3[11] = v12;
  v13 = v12 & 0x7F87A881 | ((*(v8 + 6) & 0xF) << 19);
  v3[11] = v13;
  v14 = v13 & 0xFF7FFFFF | ((*(v8 + 5) & 1) << 23);
  v3[11] = v14;
  v3[11] = v14 & 0xFCFFFFFF | ((*(v8 + 4) & 3) << 24);
  if (*(v8 + 9))
  {
    if (*(v8 + 4) == 3)
    {
      v15 = 12;
    }

    else
    {
      v15 = 8;
    }

    CAHDecIxoraAvc::AvcSeqScalingListFallBack(this, v8);
    CAHDecIxoraAvc::copyScalingList(v16, v3 + 12, *(this + 33) + 1112, v8 + 22, v8 + 34, v8 + 130, v15);
  }

  return 0;
}

uint64_t CAHDecIxoraAvc::populatePictureRegisters(CAHDecIxoraAvc *this)
{
  v354 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(v2 + 3500);
  v4 = *(v2 + 3504);
  v5 = *(v2 + 3184);
  v6 = *(v2 + 3192);
  v333 = *(v2 + 2088);
  v338 = *(v2 + 3040);
  v336 = *(v2 + 3020);
  v337 = *(v2 + 2644);
  v7 = *(v2 + 8);
  v8 = *(v2 + 6904);
  v353[8] = *(v2 + 6888);
  v353[9] = v8;
  v9 = *(v2 + 6936);
  v353[10] = *(v2 + 6920);
  v353[11] = v9;
  v10 = *(v2 + 6840);
  v353[4] = *(v2 + 6824);
  v353[5] = v10;
  v11 = *(v2 + 6872);
  v353[6] = *(v2 + 6856);
  v353[7] = v11;
  v12 = *(v2 + 6776);
  v353[0] = *(v2 + 6760);
  v353[1] = v12;
  v13 = *(v2 + 6808);
  v353[2] = *(v2 + 6792);
  v353[3] = v13;
  v335 = *(v2 + 6952);
  v14 = (*(*v2 + 184))(v2);
  v15 = *(this + 32);
  if (v14)
  {
    v16 = *(v15 + 2756) != 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(this + 33);
  v18 = v5 + 2224 * v3;
  v19 = *(v15 + 2675);
  v20 = *(v15 + 2674);
  if (!(v19 | v20))
  {
    goto LABEL_45;
  }

  v21 = *(v18 + 6);
  if (v21 <= *(v18 + 7))
  {
    LOWORD(v21) = *(v18 + 7);
  }

  v22 = (v21 + 9) & 0x1FE;
  if (v22 == 8)
  {
    v24 = v7;
    v28 = 1;
    v26 = 8;
    if (!*(v15 + 2675))
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  v23 = *(v15 + 2672);
  v24 = v7;
  if (v22 != 12)
  {
    if (v22 == 10)
    {
      v25 = v23 == 0;
      if (v23)
      {
        v26 = 10;
      }

      else
      {
        v26 = 9;
      }

      v27 = 2;
      goto LABEL_18;
    }

    v26 = 27;
    v28 = 27;
    if (!v19)
    {
      goto LABEL_33;
    }

LABEL_26:
    if (*(v18 + 4) && (v19 == 2 && v26 == 8 || v19 == 3 && (v26 - 9) <= 1))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = "populatePictureRegisters";
      WORD2(buf[1]) = 1024;
      *(&buf[1] + 6) = v26;
      WORD1(buf[2]) = 1024;
      HIDWORD(buf[2]) = v19;
      v29 = MEMORY[0x277D86220];
      v30 = "AppleAVD: [ERROR] %s(): chroma compression format %d lossy level %d not supported\n";
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  v25 = v23 == 0;
  if (v23)
  {
    v26 = 12;
  }

  else
  {
    v26 = 11;
  }

  v27 = 4;
LABEL_18:
  if (v25)
  {
    v28 = v27;
  }

  else
  {
    v28 = v27 + 1;
  }

  if (v19)
  {
    goto LABEL_26;
  }

LABEL_33:
  v7 = v24;
  if (v20 && (v20 == 3 && v28 - 9 < 2 || v28 <= 0x1A && ((1 << v28) & 0x4C00000) != 0 && v20 <= 2))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    LODWORD(buf[0]) = 136315650;
    *(buf + 4) = "populatePictureRegisters";
    WORD2(buf[1]) = 1024;
    *(&buf[1] + 6) = v28;
    WORD1(buf[2]) = 1024;
    HIDWORD(buf[2]) = v20;
    v29 = MEMORY[0x277D86220];
    v30 = "AppleAVD: [ERROR] %s(): luma compression format %d lossy level %d not supported\n";
LABEL_41:
    v31 = buf;
    v32 = 24;
    goto LABEL_42;
  }

LABEL_45:
  v34 = *(this + 3445) * v338;
  v35 = (v6 + 604 * v4);
  *(v17 + 52) = 766509056;
  if (**(*(this + 32) + 3200) == 5)
  {
    v36 = 766517248;
  }

  else
  {
    v36 = 766509056;
  }

  if (v16)
  {
    v37 = 688;
  }

  else
  {
    v37 = 672;
  }

  if (v337)
  {
    v38 = 4160;
  }

  else
  {
    v38 = 64;
  }

  v39 = v38 & 0xFFFFFFF0 | ((v337 == 1) << 10) | v37 & 0xFFFFFFF0 | (4 * (v19 & 3)) | v20 & 3 | v36;
  *(v17 + 52) = v39;
  v40 = *(this + 32);
  v41 = v39 | ((v40[2652] & 1) << 19);
  *(v17 + 52) = v41;
  v42 = v41 & 0xFFFBFFFF | ((v40[2653] & 1) << 18);
  *(v17 + 52) = v42;
  *(v17 + 52) = v42 & 0xFFFDFFFF | ((v40[2654] & 1) << 17);
  *(v17 + 56) = 0x1000000;
  LODWORD(v40) = (16 * (*(v18 + 1558) & 0xFFF)) | 0xF;
  *(v17 + 60) = v40;
  v43 = v40 | (*(v18 + 1560) << 20) | 0xF0000;
  *(v17 + 64) = 0;
  *(v17 + 60) = v43;
  v44 = (*(v18 + 8) & 1) << 18;
  *(v17 + 68) = v44;
  v45 = v44 & 0xFFF7FFFF | ((v35[93] & 1) << 19);
  *(v17 + 68) = v45;
  v46 = v45 & 0xFFEFFFFF | ((v35[3] & 1) << 20);
  *(v17 + 68) = v46;
  *(v17 + 68) = v46 | ((**(*(this + 32) + 3200) != 5) << 21);
  LODWORD(v40) = *(v17 + 72) & 0xFFFFFC1F | (32 * (v35[91] & 0x1F));
  *(v17 + 72) = v40;
  *(v17 + 72) = v40 & 0xFFFFFFE0 | v35[601] & 0x1F;
  if (v35[96])
  {
    if (*(v18 + 4) == 3)
    {
      v47 = 12;
    }

    else
    {
      v47 = 8;
    }

    v48 = *(this + 33);
    CAHDecIxoraAvc::AvcPicScalingListFallBack(v14, v18, v35);
    CAHDecIxoraAvc::copyScalingList(v49, (v17 + 76), v48 + 1596, (v35 + 109), (v35 + 121), (v35 + 217), v47);
  }

  v50 = 0;
  *(v17 + 80) = *(this + 3450);
  *(v17 + 84) = *(this + 3451);
  *(v17 + 88) = 3145786;
  v51 = this + 9008;
  do
  {
    *(*(this + 33) + v50 + 92) = 0;
    v52 = *(this + 33) + v50;
    v53 = *(v52 + 92);
    *(v52 + 92) = 0;
    *(*(this + 33) + v50 + 92) ^= 0xFFFFFF00;
    v54 = *(this + 33) + v50;
    v55 = *(v54 + 92);
    *(v54 + 92) = v53;
    if (*v51 || *(v51 + 38) || *(v51 + 39))
    {
      result = CAHDec::addToPatcherList(this, v51, v50 + 92, 0, 0xFFFFFFFFLL, 8, v55, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + v50 + 152) = 0;
    *(*(this + 33) + v50 + 152) = *(*(this + 33) + v50 + 152) & 0x800001FF | (((*(this + 3444) >> 9) & 0x3FFFFF) << 9);
    *(*(this + 33) + v50 + 616) = 0;
    v56 = *(this + 33) + v50;
    v57 = *(v56 + 616);
    *(v56 + 616) = 0;
    *(*(this + 33) + v50 + 616) ^= 0x3FFu;
    v58 = *(this + 33) + v50;
    v59 = *(v58 + 616);
    *(v58 + 616) = v57;
    if (*v51 || *(v51 + 38) || *(v51 + 39))
    {
      result = CAHDec::addToPatcherList(this, v51, v50 + 616, 0, 0x3FFFFFFFFFFLL, 32, v59, 4);
      if (result)
      {
        return result;
      }
    }

    v50 += 4;
    v51 += 176;
  }

  while (v50 != 60);
  *(*(this + 33) + 212) = 0;
  *(*(this + 33) + 676) = 0;
  if ((*(v17 + 54) & 8) == 0)
  {
    goto LABEL_83;
  }

  v60 = *(this + 33);
  v61 = *(*(this + 32) + 2680);
  v350 = 0u;
  v351 = 0u;
  v348 = 0u;
  v349 = 0u;
  v346 = 0u;
  v347 = 0u;
  v344 = 0u;
  v345 = 0u;
  v343 = 0u;
  memset(buf, 0, sizeof(buf));
  v62 = (*(v60 + 16) & 0xF) << 9;
  buf[0] = v61;
  v63 = *(v60 + 212);
  *(v60 + 212) = 0;
  *(*(this + 33) + 212) ^= 0xFFFFFF00;
  v64 = *(this + 33);
  v65 = *(v64 + 212);
  *(v64 + 212) = v63;
  if (v61)
  {
    result = CAHDec::addToPatcherList(this, buf, 212, v62, 0xFFFFFFFFLL, 8, v65, 4);
    if (result)
    {
      return result;
    }

    if (buf[0])
    {
      v66 = 0;
    }

    else
    {
      v66 = DWORD2(v350) == 0;
    }

    LODWORD(v61) = !v66 || HIDWORD(v350) != 0;
  }

  v68 = *(this + 33);
  v69 = *(v68 + 676);
  *(v68 + 676) = 0;
  *(*(this + 33) + 676) ^= 0x3FFu;
  v70 = *(this + 33);
  v71 = *(v70 + 676);
  *(v70 + 676) = v69;
  if (!v61 || (result = CAHDec::addToPatcherList(this, buf, 676, v62, 0x3FFFFFFFFFFLL, 32, v71, 4), !result))
  {
LABEL_83:
    v72 = 0;
    v73 = this + 11824;
    do
    {
      *(*(this + 33) + v72 + 216) = 0;
      v74 = *(this + 33) + v72;
      v75 = *(v74 + 216);
      *(v74 + 216) = 0;
      *(*(this + 33) + v72 + 216) ^= 0xFFFFFF00;
      v76 = *(this + 33) + v72;
      v77 = *(v76 + 216);
      *(v76 + 216) = v75;
      if (*v73 || *(v73 + 38) || *(v73 + 39))
      {
        result = CAHDec::addToPatcherList(this, v73, v72 + 216, 0, 0xFFFFFFFFLL, 8, v77, 4);
        if (result)
        {
          return result;
        }
      }

      *(*(this + 33) + v72 + 680) = 0;
      v78 = *(this + 33) + v72;
      v79 = *(v78 + 680);
      *(v78 + 680) = 0;
      *(*(this + 33) + v72 + 680) ^= 0x3FFu;
      v80 = *(this + 33) + v72;
      v81 = *(v80 + 680);
      *(v80 + 680) = v79;
      if (*v73 || *(v73 + 38) || *(v73 + 39))
      {
        result = CAHDec::addToPatcherList(this, v73, v72 + 680, 0, 0x3FFFFFFFFFFLL, 32, v81, 4);
        if (result)
        {
          return result;
        }
      }

      v72 += 4;
      v73 += 176;
    }

    while (v72 != 16);
    *(*(this + 33) + 232) = 0;
    v82 = *(this + 33);
    v83 = *(v82 + 232);
    *(v82 + 232) = 0;
    *(*(this + 33) + 232) ^= 0xFFFFFF00;
    v84 = *(this + 33);
    v85 = *(v84 + 232);
    *(v84 + 232) = v83;
    if (*(this + 1566) || *(this + 3170) || *(this + 3171))
    {
      result = CAHDec::addToPatcherList(this, this + 1566, 232, 0, 0xFFFFFFFFLL, 8, v85, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 696) = 0;
    v86 = *(this + 33);
    v87 = *(v86 + 696);
    *(v86 + 696) = 0;
    *(*(this + 33) + 696) ^= 0x3FFu;
    v88 = *(this + 33);
    v89 = *(v88 + 696);
    *(v88 + 696) = v87;
    if (*(this + 1566) || *(this + 3170) || *(this + 3171))
    {
      result = CAHDec::addToPatcherList(this, this + 1566, 696, 0, 0x3FFFFFFFFFFLL, 32, v89, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 236) = 0;
    v90 = *(this + 33);
    v91 = *(v90 + 236);
    *(v90 + 236) = 0;
    *(*(this + 33) + 236) ^= 0xFFFFFF00;
    v92 = *(this + 33);
    v93 = *(v92 + 236);
    *(v92 + 236) = v91;
    if (*(this + 1588) || *(this + 3214) || *(this + 3215))
    {
      result = CAHDec::addToPatcherList(this, this + 1588, 236, 0, 0xFFFFFFFFLL, 8, v93, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 700) = 0;
    v94 = *(this + 33);
    v95 = *(v94 + 700);
    *(v94 + 700) = 0;
    *(*(this + 33) + 700) ^= 0x3FFu;
    v96 = *(this + 33);
    v97 = *(v96 + 700);
    *(v96 + 700) = v95;
    if (*(this + 1588) || *(this + 3214) || *(this + 3215))
    {
      result = CAHDec::addToPatcherList(this, this + 1588, 700, 0, 0x3FFFFFFFFFFLL, 32, v97, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 240) = 0;
    v98 = *(this + 33);
    v99 = *(v98 + 240);
    *(v98 + 240) = 0;
    *(*(this + 33) + 240) ^= 0xFFFFFF00;
    v100 = *(this + 33);
    v101 = *(v100 + 240);
    *(v100 + 240) = v99;
    if (*(this + 1610) || *(this + 3258) || *(this + 3259))
    {
      result = CAHDec::addToPatcherList(this, this + 1610, 240, 0, 0xFFFFFFFFLL, 8, v101, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 704) = 0;
    v102 = *(this + 33);
    v103 = *(v102 + 704);
    *(v102 + 704) = 0;
    *(*(this + 33) + 704) ^= 0x3FFu;
    v104 = *(this + 33);
    v105 = *(v104 + 704);
    *(v104 + 704) = v103;
    if (*(this + 1610) || *(this + 3258) || *(this + 3259))
    {
      result = CAHDec::addToPatcherList(this, this + 1610, 704, 0, 0x3FFFFFFFFFFLL, 32, v105, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 244) = 0;
    v106 = *(this + 33);
    v107 = *(v106 + 244);
    *(v106 + 244) = 0;
    *(*(this + 33) + 244) ^= 0xFFFFFF00;
    v108 = *(this + 33);
    v109 = *(v108 + 244);
    *(v108 + 244) = v107;
    if (*(this + 1632) || *(this + 3302) || *(this + 3303))
    {
      result = CAHDec::addToPatcherList(this, this + 1632, 244, 0, 0xFFFFFFFFLL, 8, v109, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 708) = 0;
    v110 = *(this + 33);
    v111 = *(v110 + 708);
    *(v110 + 708) = 0;
    *(*(this + 33) + 708) ^= 0x3FFu;
    v112 = *(this + 33);
    v113 = *(v112 + 708);
    *(v112 + 708) = v111;
    if (*(this + 1632) || *(this + 3302) || *(this + 3303))
    {
      result = CAHDec::addToPatcherList(this, this + 1632, 708, 0, 0x3FFFFFFFFFFLL, 32, v113, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 248) = 0;
    v114 = *(this + 33);
    v115 = *(v114 + 248);
    *(v114 + 248) = 0;
    *(*(this + 33) + 248) ^= 0xFFFFFF00;
    v116 = *(this + 33);
    v117 = *(v116 + 248);
    *(v116 + 248) = v115;
    if (*(this + 1654) || *(this + 3346) || *(this + 3347))
    {
      result = CAHDec::addToPatcherList(this, this + 1654, 248, 0, 0xFFFFFFFFLL, 8, v117, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 712) = 0;
    v118 = *(this + 33);
    v119 = *(v118 + 712);
    *(v118 + 712) = 0;
    *(*(this + 33) + 712) ^= 0x3FFu;
    v120 = *(this + 33);
    v121 = *(v120 + 712);
    *(v120 + 712) = v119;
    if (*(this + 1654) || *(this + 3346) || *(this + 3347))
    {
      result = CAHDec::addToPatcherList(this, this + 1654, 712, 0, 0x3FFFFFFFFFFLL, 32, v121, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 252) = 0;
    *(*(this + 33) + 716) = 0;
    *(*(this + 33) + 256) = 0;
    v122 = *(this + 33);
    v123 = *(v122 + 256);
    *(v122 + 256) = 0;
    *(*(this + 33) + 256) ^= 0xFFFFFF00;
    v124 = *(this + 33);
    v125 = *(v124 + 256);
    *(v124 + 256) = v123;
    if (*(this + 1456) || *(this + 2950) || *(this + 2951))
    {
      result = CAHDec::addToPatcherList(this, this + 1456, 256, 0, 0xFFFFFFFFLL, 8, v125, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 720) = 0;
    v126 = *(this + 33);
    v127 = *(v126 + 720);
    *(v126 + 720) = 0;
    *(*(this + 33) + 720) ^= 0x3FFu;
    v128 = *(this + 33);
    v129 = *(v128 + 720);
    *(v128 + 720) = v127;
    if (*(this + 1456) || *(this + 2950) || *(this + 2951))
    {
      result = CAHDec::addToPatcherList(this, this + 1456, 720, 0, 0x3FFFFFFFFFFLL, 32, v129, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 260) = 0;
    v130 = *(this + 33);
    v131 = *(v130 + 260);
    *(v130 + 260) = 0;
    *(*(this + 33) + 260) ^= 0xFFFFFF00;
    v132 = *(this + 33);
    v133 = *(v132 + 260);
    *(v132 + 260) = v131;
    if (*(this + 1698) || *(this + 3434) || *(this + 3435))
    {
      result = CAHDec::addToPatcherList(this, this + 1698, 260, v34, 0xFFFFFFFFLL, 8, v133, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 724) = 0;
    v134 = *(this + 33);
    v135 = *(v134 + 724);
    *(v134 + 724) = 0;
    *(*(this + 33) + 724) ^= 0x3FFu;
    v136 = *(this + 33);
    v137 = *(v136 + 724);
    *(v136 + 724) = v135;
    if (*(this + 1698) || *(this + 3434) || *(this + 3435))
    {
      result = CAHDec::addToPatcherList(this, this + 1698, 724, v34, 0x3FFFFFFFFFFLL, 32, v137, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 264) = 0;
    v138 = *(this + 33);
    v139 = *(v138 + 264);
    *(v138 + 264) = 0;
    *(*(this + 33) + 264) ^= 0xFFFFFF80;
    v140 = *(this + 33);
    v141 = *(v140 + 264);
    *(v140 + 264) = v139;
    v143 = this + 176 * v338 + 560;
    if (*v143 || *(v143 + 38) || *(v143 + 39))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v338 + 70, 264, 0, 0xFFFFFFFFLL, 7, v141, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 728) = 0;
    v144 = *(this + 33);
    v145 = *(v144 + 728);
    *(v144 + 728) = 0;
    *(*(this + 33) + 728) ^= 0x3FFu;
    v146 = *(this + 33);
    v147 = *(v146 + 728);
    *(v146 + 728) = v145;
    if (*v143 || *(v143 + 38) || *(v143 + 39))
    {
      result = CAHDec::addToPatcherList(this, v143, 728, 0, 0x3FFFFFFFFFFLL, 32, v147, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 268) = 0;
    v148 = *(this + 33);
    v149 = *(v148 + 268);
    *(v148 + 268) = 0;
    *(*(this + 33) + 268) ^= 0xFFFFFF80;
    v150 = *(this + 33);
    v151 = *(v150 + 268);
    *(v150 + 268) = v149;
    v152 = (v333 + 8);
    if (*(v333 + 8) || *(v333 + 160) || *(v333 + 164))
    {
      result = CAHDec::addToPatcherList(this, (v333 + 8), 268, *(v333 + 60), 0xFFFFFFFFLL, 7, v151, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 732) = 0;
    v153 = *(this + 33);
    v154 = *(v153 + 732);
    *(v153 + 732) = 0;
    *(*(this + 33) + 732) ^= 0x3FFu;
    v155 = *(this + 33);
    v156 = *(v155 + 732);
    *(v155 + 732) = v154;
    if (*v152 || *(v333 + 160) || *(v333 + 164))
    {
      result = CAHDec::addToPatcherList(this, v152, 732, *(v333 + 60), 0x3FFFFFFFFFFLL, 32, v156, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 272) = 0;
    v157 = *(this + 33);
    v158 = *(v157 + 272);
    *(v157 + 272) = 0;
    *(*(this + 33) + 272) ^= 0xFFFFFF80;
    v159 = *(this + 33);
    v160 = *(v159 + 272);
    *(v159 + 272) = v158;
    v161 = this + 176 * v338 + 4784;
    if (*v161 || *(v161 + 38) || *(v161 + 39))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v338 + 598, 272, 0, 0xFFFFFFFFLL, 7, v160, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 736) = 0;
    v162 = *(this + 33);
    v163 = *(v162 + 736);
    *(v162 + 736) = 0;
    *(*(this + 33) + 736) ^= 0x3FFu;
    v164 = *(this + 33);
    v165 = *(v164 + 736);
    *(v164 + 736) = v163;
    if (*v161 || *(v161 + 38) || *(v161 + 39))
    {
      result = CAHDec::addToPatcherList(this, v161, 736, 0, 0x3FFFFFFFFFFLL, 32, v165, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 276) = 0;
    v166 = *(this + 33);
    v167 = *(v166 + 276);
    *(v166 + 276) = 0;
    *(*(this + 33) + 276) ^= 0xFFFFFF80;
    v168 = *(this + 33);
    v169 = *(v168 + 276);
    *(v168 + 276) = v167;
    if (*v152 || *(v333 + 160) || *(v333 + 164))
    {
      result = CAHDec::addToPatcherList(this, v152, 276, *(v333 + 64), 0xFFFFFFFFLL, 7, v169, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 740) = 0;
    v170 = *(this + 33);
    v171 = *(v170 + 740);
    *(v170 + 740) = 0;
    *(*(this + 33) + 740) ^= 0x3FFu;
    v172 = *(this + 33);
    v173 = *(v172 + 740);
    *(v172 + 740) = v171;
    if (*v152 || *(v333 + 160) || *(v333 + 164))
    {
      result = CAHDec::addToPatcherList(this, v152, 740, *(v333 + 64), 0x3FFFFFFFFFFLL, 32, v173, 4);
      if (result)
      {
        return result;
      }
    }

    if (*(*(this + 32) + 2648) == 1)
    {
      v174 = *(this + 33);
      v175 = *(v174 + 268);
      *(v174 + 268) = 0;
      *(*(this + 33) + 268) ^= 0xFFFFFF80;
      v176 = *(this + 33);
      v177 = *(v176 + 268);
      *(v176 + 268) = v175;
      if (*v152 || *(v333 + 160) || *(v333 + 164))
      {
        result = CAHDec::addToPatcherList(this, v152, 268, *(v333 + 60), 0xFFFFFFFFLL, 7, v177, 4);
        if (result)
        {
          return result;
        }
      }

      v178 = *(this + 33);
      v179 = *(v178 + 732);
      *(v178 + 732) = 0;
      *(*(this + 33) + 732) ^= 0x3FFu;
      v180 = *(this + 33);
      v181 = *(v180 + 732);
      *(v180 + 732) = v179;
      if (*v152 || *(v333 + 160) || *(v333 + 164))
      {
        result = CAHDec::addToPatcherList(this, v152, 732, *(v333 + 60), 0x3FFFFFFFFFFLL, 32, v181, 4);
        if (result)
        {
          return result;
        }
      }

      v182 = *(this + 33);
      v183 = *(v182 + 276);
      *(v182 + 276) = 0;
      *(*(this + 33) + 276) ^= 0xFFFFFF80;
      v184 = *(this + 33);
      v185 = *(v184 + 276);
      *(v184 + 276) = v183;
      if (*v152 || *(v333 + 160) || *(v333 + 164))
      {
        result = CAHDec::addToPatcherList(this, v152, 276, *(v333 + 64), 0xFFFFFFFFLL, 7, v185, 4);
        if (result)
        {
          return result;
        }
      }

      v186 = *(this + 33);
      v187 = *(v186 + 740);
      *(v186 + 740) = 0;
      *(*(this + 33) + 740) ^= 0x3FFu;
      v188 = *(this + 33);
      v189 = *(v188 + 740);
      *(v188 + 740) = v187;
      if (*v152 || *(v333 + 160) || *(v333 + 164))
      {
        result = CAHDec::addToPatcherList(this, v152, 740, *(v333 + 64), 0x3FFFFFFFFFFLL, 32, v189, 4);
        if (result)
        {
          return result;
        }
      }

      v190 = *(this + 33);
      v191 = *(v190 + 264);
      *(v190 + 264) = 0;
      *(*(this + 33) + 264) ^= 0xFFFFFF80;
      v192 = *(this + 33);
      v193 = *(v192 + 264);
      *(v192 + 264) = v191;
      if (*v152 || *(v333 + 160) || *(v333 + 164))
      {
        result = CAHDec::addToPatcherList(this, v152, 264, *(v333 + 72), 0xFFFFFFFFLL, 7, v193, 4);
        if (result)
        {
          return result;
        }
      }

      v194 = *(this + 33);
      v195 = *(v194 + 728);
      *(v194 + 728) = 0;
      *(*(this + 33) + 728) ^= 0x3FFu;
      v196 = *(this + 33);
      v197 = *(v196 + 728);
      *(v196 + 728) = v195;
      if (*v152 || *(v333 + 160) || *(v333 + 164))
      {
        result = CAHDec::addToPatcherList(this, v152, 728, *(v333 + 72), 0x3FFFFFFFFFFLL, 32, v197, 4);
        if (result)
        {
          return result;
        }
      }

      v198 = *(this + 33);
      v199 = *(v198 + 272);
      *(v198 + 272) = 0;
      *(*(this + 33) + 272) ^= 0xFFFFFF80;
      v200 = *(this + 33);
      v201 = *(v200 + 272);
      *(v200 + 272) = v199;
      if (*v152 || *(v333 + 160) || *(v333 + 164))
      {
        result = CAHDec::addToPatcherList(this, v152, 272, *(v333 + 76), 0xFFFFFFFFLL, 7, v201, 4);
        if (result)
        {
          return result;
        }
      }

      v202 = *(this + 33);
      v203 = *(v202 + 736);
      *(v202 + 736) = 0;
      *(*(this + 33) + 736) ^= 0x3FFu;
      v204 = *(this + 33);
      v205 = *(v204 + 736);
      *(v204 + 736) = v203;
      if (*v152 || *(v333 + 160) || *(v333 + 164))
      {
        result = CAHDec::addToPatcherList(this, v152, 736, *(v333 + 76), 0x3FFFFFFFFFFLL, 32, v205, 4);
        if (result)
        {
          return result;
        }
      }
    }

    if (*(v17 + 52) & 0x2000 | v335)
    {
      *(this + v338 + 116) = 0;
      *(*(this + 33) + 280) = 0;
      if (v335)
      {
        v339 = 0;
        if (v16)
        {
          v206 = 0x2000000;
        }

        else
        {
          v206 = 0;
        }

        v334 = v206;
        do
        {
          v207 = *(v353 + v339);
          v208 = *(v207 + 32);
          *(*(this + 33) + 4 * v339 + 280) = 0;
          *(*(this + 33) + 4 * v339 + 280) = *(*(this + 33) + 4 * v339 + 280) & 0xFFFFFFF | ((v335 << 28) - 0x10000000);
          *(*(this + 33) + 4 * v339 + 280) &= 0xF3FFFFFF;
          *(*(this + 33) + 4 * v339 + 280) = *(*(this + 33) + 4 * v339 + 280) & 0xFDFFFFFF | v334;
          *(*(this + 33) + 4 * v339 + 280) |= 0x1000000u;
          v209 = v336 - *(v207 + 12);
          v210 = v209 & 0x1FFFF;
          if (v209 < -32768)
          {
            v210 = 98304;
          }

          if (v209 < 0x8000)
          {
            v211 = v210;
          }

          else
          {
            v211 = 0x7FFF;
          }

          *(*(this + 33) + 4 * v339 + 280) = *(*(this + 33) + 4 * v339 + 280) & 0xFFFE0000 | v211;
          *(*(this + 33) + 4 * v339 + 280) = *(*(this + 33) + 4 * v339 + 280) & 0xFFFDFFFF | ((*(v207 + 1) & 1) << 17);
          v212 = *(this + 32);
          if (*(v207 + 28) == 1)
          {
            v351 = 0u;
            v352 = 0u;
            v349 = 0u;
            v350 = 0u;
            v347 = 0u;
            v348 = 0u;
            v345 = 0u;
            v346 = 0u;
            v343 = 0u;
            v344 = 0u;
            memset(buf, 0, sizeof(buf));
            DPB = AVC_RLM::getDPB(*(v212 + 2992), buf);
            if (DPB < 1)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                return 0xFFFFFFFFLL;
              }

              v340 = 136315138;
              v341 = "populatePictureRegisters";
              v29 = MEMORY[0x277D86220];
              v30 = "AppleAVD: ERROR: %s: No ref pics found!\n";
            }

            else
            {
              v214 = DPB;
              while (v214 >= 1)
              {
                v207 = buf[--v214];
                if (!*(v207 + 28))
                {
                  v208 = *(v207 + 32);
                  v212 = *(this + 32);
                  *(v212 + 2702) = 1;
                  goto LABEL_232;
                }
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                return 0xFFFFFFFFLL;
              }

              v340 = 136315138;
              v341 = "populatePictureRegisters";
              v29 = MEMORY[0x277D86220];
              v30 = "AppleAVD: ERROR: %s: No non-existing ref frames found!\n";
            }

            v31 = &v340;
            v32 = 12;
            goto LABEL_42;
          }

LABEL_232:
          if ((*(*v212 + 184))(v212))
          {
            v215 = *(this + 32);
            if (*(v215 + 2756))
            {
              buf[0] = 0;
              if ((CAVDAvcDecoder::decodeGetRenderTargetRef(v215, v208, *(v207 + 56), *(v207 + 64), buf) & 1) == 0)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v340) = 0;
                  v29 = MEMORY[0x277D86220];
                  v30 = "AppleAVD: decodeGetRenderTargetRef RETURNED ERROR\n";
                  v31 = &v340;
                  v32 = 2;
LABEL_42:
                  _os_log_impl(&dword_277606000, v29, OS_LOG_TYPE_DEFAULT, v30, v31, v32);
                }

                return 0xFFFFFFFFLL;
              }

              *(v207 + 40) = buf[0] + 8;
            }
          }

          *(*(this + 33) + 4 * v339 + 344) = 0;
          v216 = 4 * v339;
          v217 = *(this + 33) + 4 * v339;
          v218 = *(v217 + 344);
          *(v217 + 344) = 0;
          *(*(this + 33) + 4 * v339 + 344) ^= 0xFFFFFF80;
          v219 = *(this + 33) + 4 * v339;
          v220 = *(v219 + 344);
          *(v219 + 344) = v218;
          v142 = this + 560;
          v221 = this + 176 * v208 + 560;
          if (*v221 || *(v221 + 38) || *(v221 + 39))
          {
            result = CAHDec::addToPatcherList(this, &v142[176 * v208], v216 + 344, 0, 0xFFFFFFFFLL, 7, v220, 4);
            if (result)
            {
              return result;
            }
          }

          *(*(this + 33) + 4 * v339 + 744) = 0;
          v222 = *(this + 33) + 4 * v339;
          v223 = *(v222 + 744);
          *(v222 + 744) = 0;
          *(*(this + 33) + 4 * v339 + 744) ^= 0x3FFu;
          v224 = *(this + 33) + 4 * v339;
          v225 = *(v224 + 744);
          *(v224 + 744) = v223;
          if (*v221 || *(v221 + 38) || *(v221 + 39))
          {
            result = CAHDec::addToPatcherList(this, &v142[176 * v208], v216 + 744, 0, 0x3FFFFFFFFFFLL, 32, v225, 4);
            if (result)
            {
              return result;
            }
          }

          *(*(this + 33) + 4 * v339 + 408) = 0;
          v226 = *(this + 33) + 4 * v339;
          v227 = *(v226 + 408);
          *(v226 + 408) = 0;
          *(*(this + 33) + 4 * v339 + 408) ^= 0xFFFFFF80;
          v228 = *(this + 33) + 4 * v339;
          v229 = *(v228 + 408);
          *(v228 + 408) = v227;
          v230 = *(v207 + 40);
          if (*v230 || *(v230 + 152) || *(v230 + 156))
          {
            result = CAHDec::addToPatcherList(this, v230, v216 + 408, *(v230 + 52), 0xFFFFFFFFLL, 7, v229, 4);
            if (result)
            {
              return result;
            }
          }

          *(*(this + 33) + 4 * v339 + 808) = 0;
          v231 = *(this + 33) + 4 * v339;
          v232 = *(v231 + 808);
          *(v231 + 808) = 0;
          *(*(this + 33) + 4 * v339 + 808) ^= 0x3FFu;
          v233 = *(this + 33) + 4 * v339;
          v234 = *(v233 + 808);
          *(v233 + 808) = v232;
          v235 = *(v207 + 40);
          if (*v235 || *(v235 + 152) || *(v235 + 156))
          {
            result = CAHDec::addToPatcherList(this, v235, v216 + 808, *(v235 + 52), 0x3FFFFFFFFFFLL, 32, v234, 4);
            if (result)
            {
              return result;
            }
          }

          *(*(this + 33) + 4 * v339 + 472) = 0;
          v236 = *(this + 33) + 4 * v339;
          v237 = *(v236 + 472);
          *(v236 + 472) = 0;
          *(*(this + 33) + 4 * v339 + 472) ^= 0xFFFFFF80;
          v238 = *(this + 33) + 4 * v339;
          v239 = *(v238 + 472);
          *(v238 + 472) = v237;
          v240 = this + 176 * v208 + 4784;
          if (*v240 || *(v240 + 38) || *(v240 + 39))
          {
            result = CAHDec::addToPatcherList(this, v240, v216 + 472, 0, 0xFFFFFFFFLL, 7, v239, 4);
            if (result)
            {
              return result;
            }
          }

          *(*(this + 33) + 4 * v339 + 872) = 0;
          v241 = *(this + 33) + 4 * v339;
          v242 = *(v241 + 872);
          *(v241 + 872) = 0;
          *(*(this + 33) + 4 * v339 + 872) ^= 0x3FFu;
          v243 = *(this + 33) + 4 * v339;
          v244 = *(v243 + 872);
          *(v243 + 872) = v242;
          if (*v240 || *(v240 + 38) || *(v240 + 39))
          {
            result = CAHDec::addToPatcherList(this, v240, v216 + 872, 0, 0x3FFFFFFFFFFLL, 32, v244, 4);
            if (result)
            {
              return result;
            }
          }

          *(*(this + 33) + 4 * v339 + 536) = 0;
          v245 = *(this + 33) + 4 * v339;
          v246 = *(v245 + 536);
          *(v245 + 536) = 0;
          *(*(this + 33) + 4 * v339 + 536) ^= 0xFFFFFF80;
          v247 = *(this + 33) + 4 * v339;
          v248 = *(v247 + 536);
          *(v247 + 536) = v246;
          v249 = *(v207 + 40);
          if (*v249 || *(v249 + 152) || *(v249 + 156))
          {
            result = CAHDec::addToPatcherList(this, v249, v216 + 536, *(v249 + 56), 0xFFFFFFFFLL, 7, v248, 4);
            if (result)
            {
              return result;
            }
          }

          *(*(this + 33) + 4 * v339 + 936) = 0;
          v250 = *(this + 33) + 4 * v339;
          v251 = *(v250 + 936);
          *(v250 + 936) = 0;
          *(*(this + 33) + 4 * v339 + 936) ^= 0x3FFu;
          v252 = *(this + 33) + 4 * v339;
          v253 = *(v252 + 936);
          *(v252 + 936) = v251;
          v254 = *(v207 + 40);
          if (*v254 || *(v254 + 152) || *(v254 + 156))
          {
            result = CAHDec::addToPatcherList(this, v254, v216 + 936, *(v254 + 56), 0x3FFFFFFFFFFLL, 32, v253, 4);
            if (result)
            {
              return result;
            }
          }

          if (*(*(this + 32) + 2648) == 1)
          {
            v255 = *(this + 33) + 4 * v339;
            v256 = *(v255 + 408);
            *(v255 + 408) = 0;
            *(*(this + 33) + 4 * v339 + 408) ^= 0xFFFFFF80;
            v257 = *(this + 33) + 4 * v339;
            v258 = *(v257 + 408);
            *(v257 + 408) = v256;
            v259 = *(v207 + 40);
            if (*v259 || *(v259 + 152) || *(v259 + 156))
            {
              result = CAHDec::addToPatcherList(this, v259, v216 + 408, *(v259 + 52), 0xFFFFFFFFLL, 7, v258, 4);
              if (result)
              {
                return result;
              }
            }

            v260 = *(this + 33) + 4 * v339;
            v261 = *(v260 + 808);
            *(v260 + 808) = 0;
            *(*(this + 33) + 4 * v339 + 808) ^= 0x3FFu;
            v262 = *(this + 33) + 4 * v339;
            v263 = *(v262 + 808);
            *(v262 + 808) = v261;
            v264 = *(v207 + 40);
            if (*v264 || *(v264 + 152) || *(v264 + 156))
            {
              result = CAHDec::addToPatcherList(this, v264, v216 + 808, *(v264 + 52), 0x3FFFFFFFFFFLL, 32, v263, 4);
              if (result)
              {
                return result;
              }
            }

            v265 = *(this + 33) + 4 * v339;
            v266 = *(v265 + 536);
            *(v265 + 536) = 0;
            *(*(this + 33) + 4 * v339 + 536) ^= 0xFFFFFF80;
            v267 = *(this + 33) + 4 * v339;
            v268 = *(v267 + 536);
            *(v267 + 536) = v266;
            v269 = *(v207 + 40);
            if (*v269 || *(v269 + 152) || *(v269 + 156))
            {
              result = CAHDec::addToPatcherList(this, v269, v216 + 536, *(v269 + 56), 0xFFFFFFFFLL, 7, v268, 4);
              if (result)
              {
                return result;
              }
            }

            v270 = *(this + 33) + 4 * v339;
            v271 = *(v270 + 936);
            *(v270 + 936) = 0;
            *(*(this + 33) + 4 * v339 + 936) ^= 0x3FFu;
            v272 = *(this + 33) + 4 * v339;
            v273 = *(v272 + 936);
            *(v272 + 936) = v271;
            v274 = *(v207 + 40);
            if (*v274 || *(v274 + 152) || *(v274 + 156))
            {
              result = CAHDec::addToPatcherList(this, v274, v216 + 936, *(v274 + 56), 0x3FFFFFFFFFFLL, 32, v273, 4);
              if (result)
              {
                return result;
              }
            }

            v275 = *(this + 33) + 4 * v339;
            v276 = *(v275 + 344);
            *(v275 + 344) = 0;
            *(*(this + 33) + 4 * v339 + 344) ^= 0xFFFFFF80;
            v277 = *(this + 33) + 4 * v339;
            v278 = *(v277 + 344);
            *(v277 + 344) = v276;
            v279 = *(v207 + 40);
            if (*v279 || *(v279 + 152) || *(v279 + 156))
            {
              result = CAHDec::addToPatcherList(this, v279, v216 + 344, *(v279 + 64), 0xFFFFFFFFLL, 7, v278, 4);
              if (result)
              {
                return result;
              }
            }

            v280 = *(this + 33) + 4 * v339;
            v281 = *(v280 + 744);
            *(v280 + 744) = 0;
            *(*(this + 33) + 4 * v339 + 744) ^= 0x3FFu;
            v282 = *(this + 33) + 4 * v339;
            v283 = *(v282 + 744);
            *(v282 + 744) = v281;
            v284 = *(v207 + 40);
            if (*v284 || *(v284 + 152) || *(v284 + 156))
            {
              result = CAHDec::addToPatcherList(this, v284, v216 + 744, *(v284 + 64), 0x3FFFFFFFFFFLL, 32, v283, 4);
              if (result)
              {
                return result;
              }
            }

            v285 = *(this + 33) + 4 * v339;
            v286 = *(v285 + 472);
            *(v285 + 472) = 0;
            *(*(this + 33) + 4 * v339 + 472) ^= 0xFFFFFF80;
            v287 = *(this + 33) + 4 * v339;
            v288 = *(v287 + 472);
            *(v287 + 472) = v286;
            v289 = *(v207 + 40);
            if (*v289 || *(v289 + 152) || *(v289 + 156))
            {
              result = CAHDec::addToPatcherList(this, v289, v216 + 472, *(v289 + 68), 0xFFFFFFFFLL, 7, v288, 4);
              if (result)
              {
                return result;
              }
            }

            v290 = *(this + 33) + 4 * v339;
            v291 = *(v290 + 872);
            *(v290 + 872) = 0;
            *(*(this + 33) + 4 * v339 + 872) ^= 0x3FFu;
            v292 = *(this + 33) + 4 * v339;
            v293 = *(v292 + 872);
            *(v292 + 872) = v291;
            v294 = *(v207 + 40);
            if (*v294 || *(v294 + 152) || *(v294 + 156))
            {
              result = CAHDec::addToPatcherList(this, v294, v216 + 872, *(v294 + 68), 0x3FFFFFFFFFFLL, 32, v293, 4);
              if (result)
              {
                return result;
              }
            }
          }

          ++v339;
        }

        while (v339 != v335);
      }
    }

    else
    {
      *(v17 + 52) |= 0x2000u;
      *(this + v338 + 116) = 1;
      *(*(this + 33) + 280) = 0;
    }

    *(*(this + 33) + 600) = 0;
    *(*(this + 33) + 1000) = 0;
    *(*(this + 33) + 604) = 0;
    *(*(this + 33) + 1004) = 0;
    *(*(this + 33) + 608) = 0;
    *(*(this + 33) + 612) = 0;
    if (v337)
    {
      v295 = *(this + 32);
      v296 = *(v295 + 2892);
      if (*(v295 + 2892))
      {
        v297 = *(v295 + 2904);
        v296 = *(v295 + 2908);
      }

      else
      {
        v297 = 0;
      }

      v298 = *(v295 + 3544);
      v299 = *(v298 + 52);
      v300 = v299 + v297;
      if (__CFADD__(v299, v297))
      {
        v301 = 1;
      }

      else
      {
        v302 = *(v298 + 56);
        v303 = v302 + v296;
        if (!__CFADD__(v302, v296))
        {
          v304 = *(this + 33);
          v305 = *(v304 + 600);
          *(v304 + 600) = 0;
          *(*(this + 33) + 600) ^= 0xFFFFFFC0;
          v306 = *(this + 33);
          v307 = *(v306 + 600);
          *(v306 + 600) = v305;
          v308 = *(*(this + 32) + 3544);
          if (*v308 || *(v308 + 152) || *(v308 + 156))
          {
            result = CAHDec::addToPatcherList(this, v308, 600, v300, 0xFFFFFFFFLL, 6, v307, 4);
            if (result)
            {
              return result;
            }
          }

          v309 = *(this + 33);
          v310 = *(v309 + 1000);
          *(v309 + 1000) = 0;
          *(*(this + 33) + 1000) ^= 0x3FFu;
          v311 = *(this + 33);
          v312 = *(v311 + 1000);
          *(v311 + 1000) = v310;
          v313 = *(*(this + 32) + 3544);
          if (*v313 || *(v313 + 152) || *(v313 + 156))
          {
            result = CAHDec::addToPatcherList(this, v313, 1000, v300, 0x3FFFFFFFFFFLL, 32, v312, 4);
            if (result)
            {
              return result;
            }
          }

          v314 = *(this + 33);
          v315 = *(v314 + 604);
          *(v314 + 604) = 0;
          *(*(this + 33) + 604) ^= 0xFFFFFFC0;
          v316 = *(this + 33);
          v317 = *(v316 + 604);
          *(v316 + 604) = v315;
          v318 = *(*(this + 32) + 3544);
          if (*v318 || *(v318 + 152) || *(v318 + 156))
          {
            result = CAHDec::addToPatcherList(this, v318, 604, v303, 0xFFFFFFFFLL, 6, v317, 4);
            if (result)
            {
              return result;
            }
          }

          v319 = *(this + 33);
          v320 = *(v319 + 1004);
          *(v319 + 1004) = 0;
          *(*(this + 33) + 1004) ^= 0x3FFu;
          v321 = *(this + 33);
          v322 = *(v321 + 1004);
          *(v321 + 1004) = v320;
          v323 = *(*(this + 32) + 3544);
          if (*v323 || *(v323 + 152) || *(v323 + 156))
          {
            result = CAHDec::addToPatcherList(this, v323, 1004, v303, 0x3FFFFFFFFFFLL, 32, v322, 4);
            if (result)
            {
              return result;
            }
          }

          if (v7)
          {
            *(*(this + 33) + 608) = *(*(this + 33) + 608) & 0xFFFC003F | (((*(*(*(this + 32) + 3544) + 76) >> 6) & 0xFFF) << 6);
            v324 = (*(*(this + 32) + 3544) + 80);
          }

          else
          {
            if (CAHDecIxoraAvc::getSWRStride(this, *(v17 + 84) - *(v17 + 80) + 1, *(v18 + 6), *(v18 + 7), *(v18 + 2212)))
            {
              return 0xFFFFFFFFLL;
            }

            *(*(this + 33) + 608) = *(*(this + 33) + 608) & 0xFFFC003F | (((*(this + 3448) >> 6) & 0xFFF) << 6);
            v324 = (this + 13796);
          }

          *(*(this + 33) + 612) = *(*(this + 33) + 612) & 0xFFF8003F | (((*v324 >> 6) & 0x1FFF) << 6);
          goto LABEL_342;
        }

        v301 = 2;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "populatePictureRegisters";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = v301;
        v29 = MEMORY[0x277D86220];
        v30 = "AppleAVD: %s(): failKind = %d";
        v31 = buf;
        v32 = 18;
        goto LABEL_42;
      }

      return 0xFFFFFFFFLL;
    }

LABEL_342:
    v325 = *(this + 32);
    if (*(v325 + 2360) != 1)
    {
      return 0;
    }

    v326 = *(this + 33);
    *(v326 + 1104) = *(v326 + 1104) & 0xFFFFFFFE | *(v325 + 2508) & 1;
    if (*(v325 + 2508))
    {
      *(v326 + 2080) = 0x10000000;
      *(v326 + 2084) = *(v325 + 2368);
      *(v326 + 2096) = 0;
      *(v326 + 2088) = 0;
      *(v326 + 2100) = *(v325 + 2372);
      v327 = *(v325 + 2404);
      *(v326 + 2116) = *(v325 + 2388);
      *(v326 + 2132) = v327;
    }

    *(*(this + 33) + 1104) = *(*(this + 33) + 1104) & 0xFFFFFFFD | (2 * (*(v325 + 2512) & 1));
    if (*(v325 + 2512))
    {
      *(v326 + 2148) = 0;
      v328 = *(v325 + 2424);
      *(v326 + 2148) = (*(v325 + 2424) & 1) << 22;
      v329 = ((*(v325 + 2420) & 1) << 23) | ((v328 & 1) << 22) | 0x20000000;
      *(v326 + 2148) = v329;
      if (!*(v325 + 2364))
      {
        ++v329;
      }

      *(v326 + 2148) = v329;
      v330 = *(v325 + 2428);
      v331 = *(v325 + 2460);
      *(v326 + 2168) = *(v325 + 2444);
      *(v326 + 2184) = v331;
      *(v326 + 2152) = v330;
    }

    *(*(this + 33) + 1104) = *(*(this + 33) + 1104) & 0xFFFFFFFB | (4 * (*(v325 + 2516) & 1));
    *(*(this + 33) + 1104) = *(*(this + 33) + 1104) & 0xFFFFFFF7 | (8 * (*(v325 + 2520) & 1));
    *(*(this + 33) + 1104) = *(*(this + 33) + 1104) & 0xFFFFFFEF | (16 * (*(v325 + 2524) & 1));
    *(v326 + 2204) = 0;
    v332 = *(v325 + 2476) == 2 ? 805306368 : 813694976;
    *(v326 + 2204) = v332;
    memcpy((v326 + 2208), (v325 + 2480), 4 * *(v325 + 2476));
    if (*(v325 + 2516))
    {
      result = 0;
      *(v325 + 2516) = 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CAHDecIxoraAvc::getSWRStride(CAHDecIxoraAvc *this, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(*(this + 32) + 2644);
  *(this + 1724) = 0;
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
        *(this + 3448) = (((2 * ((2863311531u * (a2 + 2)) >> 32)) & 0xFFFFFFFC) + 63) & 0xFFFFFFC0;
        v9 = (2 * ((2863311531u * (2 * a2 / a5 + 5)) >> 32)) & 0xFFFFFFF8;
LABEL_21:
        *(this + 3449) = (v9 + 63) & 0xFFFFFFC0;
        return v5;
      }

      goto LABEL_15;
    }

    v5 = 0;
    *(this + 3448) = (a2 + 63) & 0xFFFFFFC0;
    v10 = 2 * a2;
LABEL_19:
    v9 = v10 / a5;
    goto LABEL_21;
  }

  if (v8 == 4)
  {
    v5 = 0;
    *(this + 3448) = (((2 * ((3435973837u * (a2 + 4)) >> 32)) & 0xFFFFFFF8) + 63) & 0xFFFFFFC0;
    v9 = (2 * ((3435973837u * (2 * a2 / a5 + 9)) >> 32)) & 0xFFFFFFF0;
    goto LABEL_21;
  }

  if (v8 == 8)
  {
    v5 = 0;
    *(this + 3448) = (2 * a2 + 63) & 0xFFFFFFC0;
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

uint64_t CAHDecIxoraAvc::getTileIdxAbove(CAHDecIxoraAvc *this, unsigned int a2)
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

uint64_t CAHDecIxoraAvc::populateAvdWork(CAHDecIxoraAvc *this, unsigned int a2)
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

uint64_t CAHDecIxoraAvc::allocWorkBuf_SPS(CAHDecIxoraAvc *this, _BYTE *a2)
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

uint64_t CAHDecIxoraAvc::allocWorkBuf_PPS(CAHDecIxoraAvc *this, _BYTE *a2, void *a3, void *a4)
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

uint64_t CAHDecIxoraAvc::freeWorkBuf_SPS(CAHDecIxoraAvc *this)
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

uint64_t *CAHDecIxoraAvc::freeWorkBuf_PPS(uint64_t *this, void *a2)
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

uint64_t CAHDecIxoraAvc::setVPInstrFifo(uint64_t this, int a2)
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

CAHDec *createIxoraHevcDecoder(void *a1)
{
  v2 = operator new(0x33B8uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDec::CAHDec(v2);
    *v3 = &unk_288668598;
    *(v3 + 32) = a1;
    *(v3 + 114) = 420428;
    *(v3 + 2) = 3020;
    *(v3 + 1) = xmmword_27775BBF0;
    *(v3 + 8) = 4;
    *(v3 + 7) = a1;
    bzero(v3 + 528, 0x3180uLL);
  }

  return v3;
}

void CAHDecIxoraHevc::~CAHDecIxoraHevc(CAHDecIxoraHevc *this)
{
  *this = &unk_288668598;
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecIxoraHevc::~CAHDecIxoraHevc(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecIxoraHevc::init(CAHDecIxoraHevc *this)
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

uint64_t CAHDecIxoraHevc::initPicture(CAHDecIxoraHevc *this, int a2, __int16 a3)
{
  v13 = *MEMORY[0x277D85DE8];
  *(this + 114) = 420428;
  *(this + 13) = 0;
  v4 = *(this + 34);
  *(this + 33) = v4;
  if (v4)
  {
    bzero(v4, 0x66A4CuLL);
    v7 = *(this + *(this + 13) + 34);
    *(v7 + 16) = a2;
    *(v7 + 24) = 257;
    *(v7 + 26) = a3;
    bzero(*(this + 9), 48 * *(this + 17));
    result = 0;
    *(this + 16) = 0;
    *(this + 3307) = 0;
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

uint64_t CAHDecIxoraHevc::populateSlices(CAHDecIxoraHevc *this, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = *(this + *(this + 13) + 34) + 3020;
    v5 = a2;
    do
    {
      CAHDecIxoraHevc::populateSliceRegisters(this, v4, v3++);
      v4 += 368;
    }

    while (v5 != v3);
  }

  return 0;
}

uint64_t CAHDecIxoraHevc::populateSliceRegisters(uint64_t a1, uint64_t a2, uint64_t a3)
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
      if (!*(a1 + 13228))
      {
        (*(**(a1 + 256) + 352))(*(a1 + 256), a3);
        v27 = *(a1 + 256);
        if (!*(v27 + 8920))
        {
          *(a1 + 13228) = 1;
          *(a2 + 4) |= 0x40000u;
          v95 = 368 * a3;
          if (*(v27 + 8744) || *(v27 + 8896) || *(v27 + 8900))
          {
            result = CAHDec::addToPatcherList(a1, (v27 + 8744), v95 + 3356, 0, 0xFFFFFFFFLL, 8, -256, 4);
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
            result = CAHDec::addToPatcherList(a1, (v27 + 8744), v95 + 3384, 0, 0x3FFFFFFFFFFLL, 32, 1023, 4);
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
        v101 = 1636;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v92 = v96;
      }

      result = CAHDec::addToPatcherList(a1, v87, v86 + 3360, v92, 0x3FFFFFFFFFFLL, 32, 1023, 4);
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
        v101 = 1637;
        v91 = MEMORY[0x277D86220];
        goto LABEL_120;
      }

LABEL_121:
      result = CAHDec::addToPatcherList(a1, v87, v86 + 3364, v90, 0xFFFFFFFFLL, 0, -1, 4);
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
    v101 = 1617;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v88 = v96;
  }

  result = CAHDec::addToPatcherList(a1, v87, v86 + 3360, v88, 0x3FFFFFFFFFFLL, 32, 1023, 4);
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
        v101 = 1618;
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

uint64_t CAHDecIxoraHevc::updateCommonRegisters(CAHDecIxoraHevc *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -889266515;
  return 0;
}

uint64_t CAHDecIxoraHevc::populateSequenceRegisters(CAHDecIxoraHevc *this)
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
    CAHDecTansyHevc::copyScalingList(this, (v1 + 17), *(this + 33) + 884, *(v2 + 3600), v2 + 4448);
  }

  return 0;
}

uint64_t CAHDecIxoraHevc::getTileHdrMemInfo(uint64_t result, int a2, void *a3)
{
  v3 = result + 176 * a2;
  *a3 = v3 + 528;
  a3[1] = v3 + 3344;
  return result;
}

__n128 CAHDecIxoraHevc::getMVmemInfo(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
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

uint64_t CAHDecIxoraHevc::populatePictureRegisters(CAHDecIxoraHevc *this)
{
  v510 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(v2 + 8208);
  v4 = *(v2 + 8212);
  v5 = *(v2 + 8168);
  v6 = *(v2 + 8176);
  v7 = *(v2 + 8924);
  v8 = *(v2 + 2964);
  v489 = *(v2 + 2948);
  v490 = *(v2 + 2960);
  v485 = *(v2 + 2952);
  v486 = *(v2 + 2924);
  v480 = *(v2 + 2088);
  v481 = *(v2 + 8280);
  v483 = *(v2 + 3548);
  v484 = *(v2 + 8994);
  v495 = *(v2 + 2644);
  v488 = *(v2 + 8312);
  v487 = *(v2 + 8);
  v9 = *(v2 + 8424);
  v509[0] = *(v2 + 8408);
  v509[1] = v9;
  v10 = *(v2 + 8456);
  v509[2] = *(v2 + 8440);
  v509[3] = v10;
  v482 = *(v2 + 8608);
  v11 = (*(*v2 + 184))(v2);
  v12 = *(this + 32);
  v494 = v11 && (v12[689] || v12[4] == 1);
  v13 = *(this + 33);
  v14 = v5 + 23176 * v3;
  v15 = *(v14 + 4424) + *(v14 + 4420);
  memset(v508, 0, sizeof(v508));
  memset(v507, 0, sizeof(v507));
  (*(*v12 + 344))();
  v16 = 0;
  v17 = *(this + 32);
  v18 = (v17 + 8616);
  do
  {
    v511 = vld2q_f64(v18);
    v18 += 4;
    v508[v16] = v511.val[0];
    v507[v16++] = v511.val[1];
  }

  while (v16 != 4);
  v19 = v6 + 9856 * v4;
  if (*(v19 + 52))
  {
    v20 = 0;
    v21 = *(v19 + 56) + 1;
    v22 = *(this + 33);
    *(v22 + 780) = v21;
    do
    {
      *(v22 + 784 + 2 * v20) = *(v19 + 9676 + 4 * v20);
      v23 = v20++ >= v21;
    }

    while (!v23);
    v24 = 0;
    v25 = *(v19 + 60) + 1;
    *(v22 + 782) = v25;
    do
    {
      *(v22 + 826 + 2 * v24) = *(v19 + 9760 + 4 * v24);
      v23 = v24++ >= v25;
    }

    while (!v23);
    v26 = v21 * v25;
  }

  else
  {
    v27 = *(this + 33);
    *(v27 + 780) = 65537;
    *(v27 + 784) = 0;
    *(v27 + 786) = *(v14 + 22880);
    *(v27 + 826) = 0;
    *(v27 + 828) = *(v14 + 22888);
    v26 = 1;
  }

  v492 = v26;
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
            goto LABEL_250;
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
LABEL_250:
        v234 = buf;
        v235 = 24;
LABEL_251:
        _os_log_impl(&dword_277606000, v42, OS_LOG_TYPE_DEFAULT, v43, v234, v235);
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
  v47 = ((v495 != 0) << 12) | ((v495 == 1) << 10) | v45 | *(v13 + 88) & 0xFFFFC15F;
  v48 = v47 & 0xFFFFF500 | 0x2A0;
  v49 = v47 | 0x2B0;
  if (v494)
  {
    v48 = v49;
  }

  *(v13 + 88) = v29 & 3 | (4 * (v28 & 3)) | v48 & 0xFFFFFFF0 | 0x40;
  v50 = *(this + 32);
  v51 = v29 & 3 | (4 * (v28 & 3)) | v48 & 0xFFF7FFF0 | 0x40 | ((v50[2652] & 1) << 19);
  *(v13 + 88) = v51;
  v52 = v51 & 0xFFFBFFFF | ((v50[2653] & 1) << 18);
  *(v13 + 88) = v52;
  v53 = v52 & 0xFFFDFFFF | ((v50[2654] & 1) << 17);
  *(v13 + 88) = v53;
  if ((v7 & 1) != 0 && *(v19 + 53) && *(v14 + 22888) > v46 + 1 || (v7 & 2) != 0 && !*(v19 + 53) && *(v19 + 52) && v492 > v46 + 1)
  {
    goto LABEL_78;
  }

  if ((v7 & 0x20) == 0 || (v54 = *(v19 + 53), *(v19 + 53)))
  {
    v54 = 0;
    goto LABEL_79;
  }

  if (!*(v19 + 52) && v490 > v46 + 1)
  {
LABEL_78:
    v54 = (v8 == 0) << 27;
  }

LABEL_79:
  *(v13 + 92) = v54;
  *(v13 + 96) = 0;
  v55 = *(v14 + 3608) - 1;
  *(v13 + 96) = v55;
  v56 = *(v14 + 3612);
  *(v13 + 100) = 0;
  *(v13 + 104) = 0;
  *(v13 + 96) = (v55 | (v56 << 16)) - 0x10000;
  if (*(v19 + 6466))
  {
    v57 = 32 * (*(v19 + 6477) & 1);
    *(v13 + 104) = v57;
    if (*(v19 + 6477))
    {
      v58 = *(v19 + 6484) & 7;
    }

    else
    {
      v58 = 0;
    }

    v60 = v58 | v57;
    *(v13 + 104) = v58 | v57;
    if (v57)
    {
      v61 = (v19 + 6512);
      v62 = (v13 + 112);
      v63 = -1;
      do
      {
        v64 = *v62 & 0xFFFFFFE0 | *v61 & 0x1F;
        *v62 = v64;
        *v62++ = v64 & 0xFFFFFC1F | (32 * (*(v61 - 6) & 0x1F));
        ++v63;
        ++v61;
      }

      while (v63 < v58);
    }

    LOBYTE(v65) = *(v19 + 6477);
    if (v65)
    {
      v65 = *(v19 + 6480);
    }

    v66 = (8 * ((v15 - v65) & 3)) | v60;
    *(v13 + 104) = v66;
    v67 = v66 & 0xFFFFFFBF | ((*(v19 + 6476) & 1) << 6);
    *(v13 + 104) = v67;
    v59 = v67 & 0xFFFFFE7F | ((*(v19 + 6472) & 3) << 7);
  }

  else
  {
    v59 = 8 * (v15 & 3);
  }

  *(v13 + 104) = v59;
  LOBYTE(v68) = *(v19 + 34);
  if (v68)
  {
    v68 = *(v19 + 36);
  }

  v69 = v59 & 0xFFFE7FFF | (((v15 - v68) & 3) << 15);
  *(v13 + 104) = v69;
  v70 = v69 & 0xFFFFF1FF | ((*(v19 + 6460) & 7) << 9);
  *(v13 + 104) = v70;
  v71 = v70 & 0xFFFFEFFF | ((*(v19 + 53) & 1) << 12);
  *(v13 + 104) = v71;
  v72 = v71 & 0xFFFFDFFF | ((*(v19 + 52) & 1) << 13);
  *(v13 + 104) = v72;
  v73 = v72 & 0xFFFFBFFF | ((*(v19 + 51) & 1) << 14);
  *(v13 + 104) = v73;
  v74 = v73 & 0xFFFDFFFF | ((*(v19 + 34) & 1) << 17);
  *(v13 + 104) = v74;
  v75 = v74 & 0xFFFBFFFF | ((*(v19 + 33) & 1) << 18);
  *(v13 + 104) = v75;
  v76 = v75 & 0xFFF7FFFF | ((*(v19 + 32) & 1) << 19);
  *(v13 + 104) = v76;
  v77 = v76 & 0xFFEFFFFF | ((*(v19 + 16) & 1) << 20);
  *(v13 + 104) = v77;
  if ((v48 & 0x2000) != 0)
  {
    v78 = 0;
  }

  else
  {
    v78 = (*(v14 + 22284) != 0) << 21;
  }

  *(v13 + 104) = v78 | v77 & 0xFFDFFFFF;
  v79 = *(v13 + 108) & 0xFFFFFFE0 | *(v19 + 44) & 0x1F;
  *(v13 + 108) = v79;
  *(v13 + 108) = v79 & 0xFFFFFC1F | (32 * (*(v19 + 40) & 0x1F));
  if (*(v19 + 252))
  {
    CAHDecTansyHevc::copyScalingList(v44, v13 + 136, *(this + 33) + 1880, *(v14 + 3600), v19 + 256);
    v53 = *(v13 + 88);
  }

  if ((~v53 & 0xC0000) != 0)
  {
    v84 = 0;
    v86 = 0;
    *(v13 + 156) = 0;
    *(v13 + 160) = 0;
  }

  else
  {
    v80 = *(this + 32);
    v81 = v80[664];
    if (!v81 || !v80[665])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v233 = v80[665];
        *buf = 136315650;
        *&buf[4] = "populatePictureRegisters";
        *&buf[12] = 1024;
        *&buf[14] = v81;
        *&buf[18] = 1024;
        *&buf[20] = v233;
        v42 = MEMORY[0x277D86220];
        v43 = "AppleAVD: %s(): invalid stat crop width/height %d/%d";
        goto LABEL_250;
      }

      return 0xFFFFFFFFLL;
    }

    v82 = v80[666];
    *(v13 + 156) = v82;
    v83 = v80[667];
    v84 = v83 << 16;
    *(v13 + 156) = v82 | (v83 << 16);
    v85 = v80[666] + v80[664] - 1;
    *(v13 + 160) = *(v80 + 1332) + *(v80 + 1328) - 1;
    v86 = ((v80[665] + v80[667]) << 16) - 0x10000;
    *(v13 + 160) = v86 & 0xFFFF0000 | v85;
  }

  if (v8)
  {
    v87 = 7340080;
  }

  else
  {
    v87 = 3145776;
  }

  *(v13 + 164) = v87;
  if (!*(*(this + 32) + 2892))
  {
    v88 = *(v14 + 3608) - 1;
    *(v13 + 160) = v86 | v88;
    v89 = (*(v14 + 3612) << 16) - 0x10000;
    *(v13 + 160) = v89 & 0xFFFF0000 | v88;
    if (*(v14 + 3616))
    {
      if ((v53 & 0x800) != 0)
      {
        v90 = *(v14 + 3620) * *(v14 + 22852);
        *(v13 + 156) = v84 | v90;
        *(v13 + 156) = v90 | ((*(v14 + 22856) * *(v14 + 3628)) << 16);
        v91 = *(v14 + 3608) + ~(*(v14 + 3624) * *(v14 + 22852));
        *(v13 + 160) = v91 | v89;
        *(v13 + 160) = v91 | ((*(v14 + 3612) + ~(*(v14 + 3632) * *(v14 + 22856))) << 16);
      }
    }
  }

  v92 = 0;
  v93 = this + 6160;
  do
  {
    *(*(this + 33) + v92 + 168) = 0;
    v94 = *(this + 33) + v92;
    v95 = *(v94 + 168);
    *(v94 + 168) = 0;
    *(*(this + 33) + v92 + 168) ^= 0xFFFFFF00;
    v96 = *(this + 33) + v92;
    v97 = *(v96 + 168);
    *(v96 + 168) = v95;
    if (*v93 || *(v93 + 38) || *(v93 + 39))
    {
      result = CAHDec::addToPatcherList(this, v93, v92 + 168, 0, 0xFFFFFFFFLL, 8, v97, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + v92 + 228) = 0;
    *(*(this + 33) + v92 + 228) = *(*(this + 33) + v92 + 228) & 0x800001FF | (((*(this + 3304) >> 9) & 0x3FFFFF) << 9);
    *(*(this + 33) + v92 + 524) = 0;
    v99 = *(this + 33) + v92;
    v100 = *(v99 + 524);
    *(v99 + 524) = 0;
    *(*(this + 33) + v92 + 524) ^= 0x3FFu;
    v101 = *(this + 33) + v92;
    v102 = *(v101 + 524);
    *(v101 + 524) = v100;
    if (*v93 || *(v93 + 38) || *(v93 + 39))
    {
      result = CAHDec::addToPatcherList(this, v93, v92 + 524, 0, 0x3FFFFFFFFFFLL, 32, v102, 4);
      if (result)
      {
        return result;
      }
    }

    v92 += 4;
    v93 += 176;
  }

  while (v92 != 60);
  *(*(this + 33) + 288) = 0;
  *(*(this + 33) + 584) = 0;
  if ((*(v13 + 90) & 8) != 0)
  {
    v103 = *(this + 33);
    v104 = *(*(this + 32) + 2680);
    v505 = 0u;
    v506 = 0u;
    v503 = 0u;
    v504 = 0u;
    v501 = 0u;
    v502 = 0u;
    v499 = 0u;
    v500 = 0u;
    v498 = 0u;
    memset(buf, 0, sizeof(buf));
    v105 = (*(v103 + 16) & 0xF) << 9;
    *buf = v104;
    v106 = *(v103 + 288);
    *(v103 + 288) = 0;
    *(*(this + 33) + 288) ^= 0xFFFFFF00;
    v107 = *(this + 33);
    v108 = *(v107 + 288);
    *(v107 + 288) = v106;
    if (v104)
    {
      result = CAHDec::addToPatcherList(this, buf, 288, v105, 0xFFFFFFFFLL, 8, v108, 4);
      if (result)
      {
        return result;
      }

      if (*buf)
      {
        v109 = 0;
      }

      else
      {
        v109 = DWORD2(v505) == 0;
      }

      LODWORD(v104) = !v109 || HIDWORD(v505) != 0;
    }

    v111 = *(this + 33);
    v112 = *(v111 + 584);
    *(v111 + 584) = 0;
    *(*(this + 33) + 584) ^= 0x3FFu;
    v113 = *(this + 33);
    v114 = *(v113 + 584);
    *(v113 + 584) = v112;
    if (v104)
    {
      result = CAHDec::addToPatcherList(this, buf, 584, v105, 0x3FFFFFFFFFFLL, 32, v114, 4);
      if (result)
      {
        return result;
      }
    }
  }

  *(*(this + 33) + 292) = 0;
  v115 = *(this + 33);
  v116 = *(v115 + 292);
  *(v115 + 292) = 0;
  *(*(this + 33) + 292) ^= 0xFFFFFF00;
  v117 = *(this + 33);
  v118 = *(v117 + 292);
  *(v117 + 292) = v116;
  if (*(this + 1474) || *(this + 2986) || *(this + 2987))
  {
    result = CAHDec::addToPatcherList(this, this + 1474, 292, 0, 0xFFFFFFFFLL, 8, v118, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 588) = 0;
  v119 = *(this + 33);
  v120 = *(v119 + 588);
  *(v119 + 588) = 0;
  *(*(this + 33) + 588) ^= 0x3FFu;
  v121 = *(this + 33);
  v122 = *(v121 + 588);
  *(v121 + 588) = v120;
  if (*(this + 1474) || *(this + 2986) || *(this + 2987))
  {
    result = CAHDec::addToPatcherList(this, this + 1474, 588, 0, 0x3FFFFFFFFFFLL, 32, v122, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 296) = 0;
  v123 = *(this + 33);
  v124 = *(v123 + 296);
  *(v123 + 296) = 0;
  *(*(this + 33) + 296) ^= 0xFFFFFF00;
  v125 = *(this + 33);
  v126 = *(v125 + 296);
  *(v125 + 296) = v124;
  if (*(this + 1496) || *(this + 3030) || *(this + 3031))
  {
    result = CAHDec::addToPatcherList(this, this + 1496, 296, 0, 0xFFFFFFFFLL, 8, v126, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 592) = 0;
  v127 = *(this + 33);
  v128 = *(v127 + 592);
  *(v127 + 592) = 0;
  *(*(this + 33) + 592) ^= 0x3FFu;
  v129 = *(this + 33);
  v130 = *(v129 + 592);
  *(v129 + 592) = v128;
  if (*(this + 1496) || *(this + 3030) || *(this + 3031))
  {
    result = CAHDec::addToPatcherList(this, this + 1496, 592, 0, 0x3FFFFFFFFFFLL, 32, v130, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 300) = 0;
  v131 = *(this + 33);
  v132 = *(v131 + 300);
  *(v131 + 300) = 0;
  *(*(this + 33) + 300) ^= 0xFFFFFF00;
  v133 = *(this + 33);
  v134 = *(v133 + 300);
  *(v133 + 300) = v132;
  if (*(this + 1518) || *(this + 3074) || *(this + 3075))
  {
    result = CAHDec::addToPatcherList(this, this + 1518, 300, 0, 0xFFFFFFFFLL, 8, v134, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 596) = 0;
  v135 = *(this + 33);
  v136 = *(v135 + 596);
  *(v135 + 596) = 0;
  *(*(this + 33) + 596) ^= 0x3FFu;
  v137 = *(this + 33);
  v138 = *(v137 + 596);
  *(v137 + 596) = v136;
  if (*(this + 1518) || *(this + 3074) || *(this + 3075))
  {
    result = CAHDec::addToPatcherList(this, this + 1518, 596, 0, 0x3FFFFFFFFFFLL, 32, v138, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 304) = 0;
  v139 = *(this + 33);
  v140 = *(v139 + 304);
  *(v139 + 304) = 0;
  *(*(this + 33) + 304) ^= 0xFFFFFF00;
  v141 = *(this + 33);
  v142 = *(v141 + 304);
  *(v141 + 304) = v140;
  if (*(this + 1540) || *(this + 3118) || *(this + 3119))
  {
    result = CAHDec::addToPatcherList(this, this + 1540, 304, 0, 0xFFFFFFFFLL, 8, v142, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 600) = 0;
  v143 = *(this + 33);
  v144 = *(v143 + 600);
  *(v143 + 600) = 0;
  *(*(this + 33) + 600) ^= 0x3FFu;
  v145 = *(this + 33);
  v146 = *(v145 + 600);
  *(v145 + 600) = v144;
  if (*(this + 1540) || *(this + 3118) || *(this + 3119))
  {
    result = CAHDec::addToPatcherList(this, this + 1540, 600, 0, 0x3FFFFFFFFFFLL, 32, v146, 4);
    if (result)
    {
      return result;
    }
  }

  v491 = v14;
  v493 = v13;
  *(*(this + 33) + 308) = 0;
  v147 = *(this + 33);
  v148 = *(v147 + 308);
  *(v147 + 308) = 0;
  *(*(this + 33) + 308) ^= 0xFFFFFF00;
  v149 = *(this + 33);
  v150 = *(v149 + 308);
  *(v149 + 308) = v148;
  if (*(this + 1562) || *(this + 3162) || *(this + 3163))
  {
    result = CAHDec::addToPatcherList(this, this + 1562, 308, 0, 0xFFFFFFFFLL, 8, v150, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 604) = 0;
  v151 = *(this + 33);
  v152 = *(v151 + 604);
  *(v151 + 604) = 0;
  *(*(this + 33) + 604) ^= 0x3FFu;
  v153 = *(this + 33);
  v154 = *(v153 + 604);
  *(v153 + 604) = v152;
  if (*(this + 1562) || *(this + 3162) || *(this + 3163))
  {
    result = CAHDec::addToPatcherList(this, this + 1562, 604, 0, 0x3FFFFFFFFFFLL, 32, v154, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 312) = 0;
  *(*(this + 33) + 608) = 0;
  v155 = *(this + 33);
  v156 = *(v155 + 312);
  *(v155 + 312) = 0;
  *(*(this + 33) + 312) ^= 0xFFFFFF00;
  v157 = *(this + 33);
  v158 = *(v157 + 312);
  *(v157 + 312) = v156;
  if (*(this + 1584) || *(this + 3206) || *(this + 3207))
  {
    result = CAHDec::addToPatcherList(this, this + 1584, 312, 0, 0xFFFFFFFFLL, 8, v158, 4);
    if (result)
    {
      return result;
    }
  }

  v159 = *(this + 33);
  v160 = *(v159 + 608);
  *(v159 + 608) = 0;
  *(*(this + 33) + 608) ^= 0x3FFu;
  v161 = *(this + 33);
  v162 = *(v161 + 608);
  *(v161 + 608) = v160;
  if (*(this + 1584) || *(this + 3206) || *(this + 3207))
  {
    result = CAHDec::addToPatcherList(this, this + 1584, 608, 0, 0x3FFFFFFFFFFLL, 32, v162, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 316) = 0;
  v163 = *(this + 33);
  v164 = *(v163 + 316);
  *(v163 + 316) = 0;
  *(*(this + 33) + 316) ^= 0xFFFFFF00;
  v165 = *(this + 33);
  v166 = *(v165 + 316);
  *(v165 + 316) = v164;
  if (*(this + 1100) || *(this + 2238) || *(this + 2239))
  {
    result = CAHDec::addToPatcherList(this, this + 1100, 316, 0, 0xFFFFFFFFLL, 8, v166, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 612) = 0;
  v167 = *(this + 33);
  v168 = *(v167 + 612);
  *(v167 + 612) = 0;
  *(*(this + 33) + 612) ^= 0x3FFu;
  v169 = *(this + 33);
  v170 = *(v169 + 612);
  *(v169 + 612) = v168;
  if (*(this + 1100) || *(this + 2238) || *(this + 2239))
  {
    result = CAHDec::addToPatcherList(this, this + 1100, 612, 0, 0x3FFFFFFFFFFLL, 32, v170, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 320) = 0;
  v171 = *(this + 33);
  v172 = *(v171 + 320);
  *(v171 + 320) = 0;
  *(*(this + 33) + 320) ^= 0xFFFFFF00;
  v173 = *(this + 33);
  v174 = *(v173 + 320);
  *(v173 + 320) = v172;
  v175 = (this + 176 * v488 + 8976);
  if (*v175 || *(this + 44 * v488 + 2282) || *(this + 44 * v488 + 2283))
  {
    result = CAHDec::addToPatcherList(this, this + 22 * v488 + 1122, 320, 0, 0xFFFFFFFFLL, 8, v174, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 616) = 0;
  v176 = *(this + 33);
  v177 = *(v176 + 616);
  *(v176 + 616) = 0;
  *(*(this + 33) + 616) ^= 0x3FFu;
  v178 = *(this + 33);
  v179 = *(v178 + 616);
  *(v178 + 616) = v177;
  if (*v175 || *(this + 44 * v488 + 2282) || *(this + 44 * v488 + 2283))
  {
    result = CAHDec::addToPatcherList(this, this + 22 * v488 + 1122, 616, 0, 0x3FFFFFFFFFFLL, 32, v179, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 324) = 0;
  v180 = *(this + 33);
  v181 = *(v180 + 324);
  *(v180 + 324) = 0;
  *(*(this + 33) + 324) ^= 0xFFFFFF00;
  v182 = *(this + 33);
  v183 = *(v182 + 324);
  *(v182 + 324) = v181;
  if (*(this + 1606) || *(this + 3250) || *(this + 3251))
  {
    result = CAHDec::addToPatcherList(this, this + 1606, 324, 0, 0xFFFFFFFFLL, 8, v183, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 620) = 0;
  v184 = *(this + 33);
  v185 = *(v184 + 620);
  *(v184 + 620) = 0;
  *(*(this + 33) + 620) ^= 0x3FFu;
  v186 = *(this + 33);
  v187 = *(v186 + 620);
  *(v186 + 620) = v185;
  if (*(this + 1606) || *(this + 3250) || *(this + 3251))
  {
    result = CAHDec::addToPatcherList(this, this + 1606, 620, 0, 0x3FFFFFFFFFFLL, 32, v187, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 328) = 0;
  v188 = *(this + 33);
  v189 = *(v188 + 328);
  *(v188 + 328) = 0;
  *(*(this + 33) + 328) ^= 0xFFFFFF00;
  v190 = *(this + 33);
  v191 = *(v190 + 328);
  *(v190 + 328) = v189;
  if (*(this + 1628) || *(this + 3294) || *(this + 3295))
  {
    result = CAHDec::addToPatcherList(this, this + 1628, 328, 0, 0xFFFFFFFFLL, 8, v191, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 624) = 0;
  v192 = *(this + 33);
  v193 = *(v192 + 624);
  *(v192 + 624) = 0;
  *(*(this + 33) + 624) ^= 0x3FFu;
  v194 = *(this + 33);
  v195 = *(v194 + 624);
  *(v194 + 624) = v193;
  if (*(this + 1628) || *(this + 3294) || *(this + 3295))
  {
    result = CAHDec::addToPatcherList(this, this + 1628, 624, 0, 0x3FFFFFFFFFFLL, 32, v195, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 332) = 0;
  *(*(this + 33) + 628) = 0;
  *(*(this + 33) + 336) = 0;
  *(*(this + 33) + 632) = 0;
  *(*(this + 33) + 340) = 0;
  *(*(this + 33) + 636) = 0;
  *(*(this + 33) + 344) = 0;
  *(*(this + 33) + 640) = 0;
  v196 = *(this + 33);
  if (*(*(this + 32) + 2648) == 1)
  {
    v197 = *(v196 + 336);
    *(v196 + 336) = 0;
    *(*(this + 33) + 336) ^= 0xFFFFFF80;
    v198 = *(this + 33);
    v199 = *(v198 + 336);
    *(v198 + 336) = v197;
    v201 = (v480 + 8);
    v200 = *(v480 + 8);
    if (v484)
    {
      if (v200 || *(v480 + 160) || *(v480 + 164))
      {
        result = CAHDec::addToPatcherList(this, (v480 + 8), 336, *(v480 + 68), 0xFFFFFFFFLL, 7, v199, 4);
        if (result)
        {
          return result;
        }
      }

      v202 = *(this + 33);
      v203 = *(v202 + 632);
      *(v202 + 632) = 0;
      *(*(this + 33) + 632) ^= 0x3FFu;
      v204 = *(this + 33);
      v205 = *(v204 + 632);
      *(v204 + 632) = v203;
      if (*v201 || *(v480 + 160) || *(v480 + 164))
      {
        result = CAHDec::addToPatcherList(this, v201, 632, *(v480 + 68), 0x3FFFFFFFFFFLL, 32, v205, 4);
        if (result)
        {
          return result;
        }
      }

      v206 = *(this + 33);
      v207 = *(v206 + 332);
      *(v206 + 332) = 0;
      *(*(this + 33) + 332) ^= 0xFFFFFF80;
      v208 = *(this + 33);
      v209 = *(v208 + 332);
      *(v208 + 332) = v207;
      if (*v201 || *(v480 + 160) || *(v480 + 164))
      {
        result = CAHDec::addToPatcherList(this, v201, 332, *(v480 + 80), 0xFFFFFFFFLL, 7, v209, 4);
        if (result)
        {
          return result;
        }
      }

      v210 = *(this + 33);
      v211 = *(v210 + 628);
      *(v210 + 628) = 0;
      *(*(this + 33) + 628) ^= 0x3FFu;
      v212 = *(this + 33);
      v213 = *(v212 + 628);
      *(v212 + 628) = v211;
      if (*v201 || *(v480 + 160) || *(v480 + 164))
      {
        result = CAHDec::addToPatcherList(this, v201, 628, *(v480 + 80), 0x3FFFFFFFFFFLL, 32, v213, 4);
        if (result)
        {
          return result;
        }
      }

      if (v486)
      {
        v214 = *(this + 33);
        v215 = *(v214 + 344);
        *(v214 + 344) = 0;
        *(*(this + 33) + 344) ^= 0xFFFFFF80;
        v216 = *(this + 33);
        v217 = *(v216 + 344);
        *(v216 + 344) = v215;
        if (*v481 || *(v481 + 152) || *(v481 + 156))
        {
          result = CAHDec::addToPatcherList(this, v481, 344, *(v481 + 56), 0xFFFFFFFFLL, 7, v217, 4);
          if (result)
          {
            return result;
          }
        }

        v218 = *(this + 33);
        v219 = *(v218 + 640);
        *(v218 + 640) = 0;
        *(*(this + 33) + 640) ^= 0x3FFu;
        v220 = *(this + 33);
        v221 = *(v220 + 640);
        *(v220 + 640) = v219;
        if (*v481 || *(v481 + 152) || *(v481 + 156))
        {
          result = CAHDec::addToPatcherList(this, v481, 640, *(v481 + 56), 0x3FFFFFFFFFFLL, 32, v221, 4);
          if (result)
          {
            return result;
          }
        }

        v222 = *(this + 33);
        v223 = *(v222 + 340);
        *(v222 + 340) = 0;
        *(*(this + 33) + 340) ^= 0xFFFFFF80;
        v224 = *(this + 33);
        v225 = *(v224 + 340);
        *(v224 + 340) = v223;
        if (*v481 || *(v481 + 152) || *(v481 + 156))
        {
          result = CAHDec::addToPatcherList(this, v481, 340, *(v481 + 68), 0xFFFFFFFFLL, 7, v225, 4);
          if (result)
          {
            return result;
          }
        }

        v226 = *(this + 33);
        v227 = *(v226 + 636);
        *(v226 + 636) = 0;
        *(*(this + 33) + 636) ^= 0x3FFu;
        v228 = *(this + 33);
        v229 = *(v228 + 636);
        *(v228 + 636) = v227;
        if (*v481 || *(v481 + 152) || *(v481 + 156))
        {
          v230 = v481;
          v231 = *(v481 + 68);
          v232 = this;
LABEL_318:
          v269 = 636;
LABEL_319:
          result = CAHDec::addToPatcherList(v232, v230, v269, v231, 0x3FFFFFFFFFFLL, 32, v229, 4);
          if (result)
          {
            return result;
          }
        }
      }
    }

    else
    {
      if (v200 || *(v480 + 160) || *(v480 + 164))
      {
        result = CAHDec::addToPatcherList(this, (v480 + 8), 336, *(v480 + 60), 0xFFFFFFFFLL, 7, v199, 4);
        if (result)
        {
          return result;
        }
      }

      v270 = *(this + 33);
      v271 = *(v270 + 344);
      *(v270 + 344) = 0;
      *(*(this + 33) + 344) ^= 0xFFFFFF80;
      v272 = *(this + 33);
      v273 = *(v272 + 344);
      *(v272 + 344) = v271;
      if (*v201 || *(v480 + 160) || *(v480 + 164))
      {
        result = CAHDec::addToPatcherList(this, v201, 344, *(v480 + 64), 0xFFFFFFFFLL, 7, v273, 4);
        if (result)
        {
          return result;
        }
      }

      v274 = *(this + 33);
      v275 = *(v274 + 332);
      *(v274 + 332) = 0;
      *(*(this + 33) + 332) ^= 0xFFFFFF80;
      v276 = *(this + 33);
      v277 = *(v276 + 332);
      *(v276 + 332) = v275;
      if (*v201 || *(v480 + 160) || *(v480 + 164))
      {
        result = CAHDec::addToPatcherList(this, v201, 332, *(v480 + 72), 0xFFFFFFFFLL, 7, v277, 4);
        if (result)
        {
          return result;
        }
      }

      v278 = *(this + 33);
      v279 = *(v278 + 340);
      *(v278 + 340) = 0;
      *(*(this + 33) + 340) ^= 0xFFFFFF80;
      v280 = *(this + 33);
      v281 = *(v280 + 340);
      *(v280 + 340) = v279;
      if (*v201 || *(v480 + 160) || *(v480 + 164))
      {
        result = CAHDec::addToPatcherList(this, v201, 340, *(v480 + 76), 0xFFFFFFFFLL, 7, v281, 4);
        if (result)
        {
          return result;
        }
      }

      v282 = *(this + 33);
      v283 = *(v282 + 632);
      *(v282 + 632) = 0;
      *(*(this + 33) + 632) ^= 0x3FFu;
      v284 = *(this + 33);
      v285 = *(v284 + 632);
      *(v284 + 632) = v283;
      if (*v201 || *(v480 + 160) || *(v480 + 164))
      {
        result = CAHDec::addToPatcherList(this, v201, 632, *(v480 + 60), 0x3FFFFFFFFFFLL, 32, v285, 4);
        if (result)
        {
          return result;
        }
      }

      v286 = *(this + 33);
      v287 = *(v286 + 640);
      *(v286 + 640) = 0;
      *(*(this + 33) + 640) ^= 0x3FFu;
      v288 = *(this + 33);
      v289 = *(v288 + 640);
      *(v288 + 640) = v287;
      if (*v201 || *(v480 + 160) || *(v480 + 164))
      {
        result = CAHDec::addToPatcherList(this, v201, 640, *(v480 + 64), 0x3FFFFFFFFFFLL, 32, v289, 4);
        if (result)
        {
          return result;
        }
      }

      v290 = *(this + 33);
      v291 = *(v290 + 628);
      *(v290 + 628) = 0;
      *(*(this + 33) + 628) ^= 0x3FFu;
      v292 = *(this + 33);
      v293 = *(v292 + 628);
      *(v292 + 628) = v291;
      if (*v201 || *(v480 + 160) || *(v480 + 164))
      {
        result = CAHDec::addToPatcherList(this, v201, 628, *(v480 + 72), 0x3FFFFFFFFFFLL, 32, v293, 4);
        if (result)
        {
          return result;
        }
      }

      v294 = *(this + 33);
      v295 = *(v294 + 636);
      *(v294 + 636) = 0;
      *(*(this + 33) + 636) ^= 0x3FFu;
      v296 = *(this + 33);
      v229 = *(v296 + 636);
      *(v296 + 636) = v295;
      if (*v201 || *(v480 + 160) || *(v480 + 164))
      {
        v231 = *(v480 + 76);
        v232 = this;
        v230 = (v480 + 8);
        goto LABEL_318;
      }
    }
  }

  else
  {
    v236 = *(v196 + 332);
    *(v196 + 332) = 0;
    *(*(this + 33) + 332) ^= 0xFFFFFF80;
    v237 = *(this + 33);
    v238 = *(v237 + 332);
    *(v237 + 332) = v236;
    v239 = (this + 176 * v488 + 528);
    if (*v239 || *(this + 44 * v488 + 170) || *(this + 44 * v488 + 171))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v488 + 66, 332, 0, 0xFFFFFFFFLL, 7, v238, 4);
      if (result)
      {
        return result;
      }
    }

    v240 = *(this + 33);
    v241 = *(v240 + 628);
    *(v240 + 628) = 0;
    *(*(this + 33) + 628) ^= 0x3FFu;
    v242 = *(this + 33);
    v243 = *(v242 + 628);
    *(v242 + 628) = v241;
    if (*v239 || *(this + 44 * v488 + 170) || *(this + 44 * v488 + 171))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v488 + 66, 628, 0, 0x3FFFFFFFFFFLL, 32, v243, 4);
      if (result)
      {
        return result;
      }
    }

    v244 = *(this + 33);
    v245 = *(v244 + 336);
    *(v244 + 336) = 0;
    *(*(this + 33) + 336) ^= 0xFFFFFF80;
    v246 = *(this + 33);
    v247 = *(v246 + 336);
    *(v246 + 336) = v245;
    v248 = (v480 + 8);
    if (*(v480 + 8) || *(v480 + 160) || *(v480 + 164))
    {
      result = CAHDec::addToPatcherList(this, (v480 + 8), 336, *(v480 + 60), 0xFFFFFFFFLL, 7, v247, 4);
      if (result)
      {
        return result;
      }
    }

    v249 = *(this + 33);
    v250 = *(v249 + 632);
    *(v249 + 632) = 0;
    *(*(this + 33) + 632) ^= 0x3FFu;
    v251 = *(this + 33);
    v252 = *(v251 + 632);
    *(v251 + 632) = v250;
    if (*v248 || *(v480 + 160) || *(v480 + 164))
    {
      result = CAHDec::addToPatcherList(this, v248, 632, *(v480 + 60), 0x3FFFFFFFFFFLL, 32, v252, 4);
      if (result)
      {
        return result;
      }
    }

    v253 = *(this + 33);
    v254 = *(v253 + 340);
    *(v253 + 340) = 0;
    *(*(this + 33) + 340) ^= 0xFFFFFF80;
    v255 = *(this + 33);
    v256 = *(v255 + 340);
    *(v255 + 340) = v254;
    v257 = (this + 176 * v488 + 3344);
    if (*v257 || *(this + 44 * v488 + 874) || *(this + 44 * v488 + 875))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v488 + 418, 340, 0, 0xFFFFFFFFLL, 7, v256, 4);
      if (result)
      {
        return result;
      }
    }

    v258 = *(this + 33);
    v259 = *(v258 + 636);
    *(v258 + 636) = 0;
    *(*(this + 33) + 636) ^= 0x3FFu;
    v260 = *(this + 33);
    v261 = *(v260 + 636);
    *(v260 + 636) = v259;
    if (*v257 || *(this + 44 * v488 + 874) || *(this + 44 * v488 + 875))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v488 + 418, 636, 0, 0x3FFFFFFFFFFLL, 32, v261, 4);
      if (result)
      {
        return result;
      }
    }

    v262 = *(this + 33);
    v263 = *(v262 + 344);
    *(v262 + 344) = 0;
    *(*(this + 33) + 344) ^= 0xFFFFFF80;
    v264 = *(this + 33);
    v265 = *(v264 + 344);
    *(v264 + 344) = v263;
    if (*v248 || *(v480 + 160) || *(v480 + 164))
    {
      result = CAHDec::addToPatcherList(this, v248, 344, *(v480 + 64), 0xFFFFFFFFLL, 7, v265, 4);
      if (result)
      {
        return result;
      }
    }

    v266 = *(this + 33);
    v267 = *(v266 + 640);
    *(v266 + 640) = 0;
    *(*(this + 33) + 640) ^= 0x3FFu;
    v268 = *(this + 33);
    v229 = *(v268 + 640);
    *(v268 + 640) = v267;
    if (*v248 || *(v480 + 160) || *(v480 + 164))
    {
      v231 = *(v480 + 64);
      v232 = this;
      v230 = (v480 + 8);
      v269 = 640;
      goto LABEL_319;
    }
  }

  v297 = this + 4 * v488;
  if (*(v493 + 88) & 0x2000 | v482)
  {
    *(v297 + 116) = 0;
    *(*(this + 33) + 348) = 0;
    if (!v482)
    {
      goto LABEL_440;
    }

    v298 = 0;
    if (v494)
    {
      v299 = 0x2000000;
    }

    else
    {
      v299 = 0;
    }

    v300 = v509;
    v301 = v508;
    v302 = v507;
    while (1)
    {
      v303 = *v300;
      if (!*v300 || !*(v303 + 48))
      {
        return 0xFFFFFFFFLL;
      }

      v304 = *(v303 + 44);
      if ((*(**(this + 32) + 184))(*(this + 32)))
      {
        v305 = *(this + 32);
        if (v305[689])
        {
          *buf = 0;
          if (((*(*v305 + 312))(v305, v304, buf) & 1) == 0)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 0xFFFFFFFFLL;
            }

            v496 = 0;
            v42 = MEMORY[0x277D86220];
            v43 = "AppleAVD: decodeGetRenderTargetRef RETURNED ERROR\n";
            v234 = &v496;
            v235 = 2;
            goto LABEL_251;
          }

          *(v303 + 48) = *buf + 8;
        }
      }

      *(*(this + 33) + v298 + 348) = 0;
      *(*(this + 33) + v298 + 348) = *(*(this + 33) + v298 + 348) & 0xFFFFFFF | ((v482 << 28) - 0x10000000);
      *(*(this + 33) + v298 + 348) &= 0xF3FFFFFF;
      *(*(this + 33) + v298 + 348) = *(*(this + 33) + v298 + 348) & 0xFDFFFFFF | v299;
      *(*(this + 33) + v298 + 348) |= 0x1000000u;
      v306 = v483 - *(v303 + 12);
      v307 = v306 & 0x1FFFF;
      if (v306 < -32768)
      {
        v307 = 98304;
      }

      if (v306 <= 0x8000)
      {
        v308 = v307;
      }

      else
      {
        v308 = 0x8000;
      }

      *(*(this + 33) + v298 + 348) = *(*(this + 33) + v298 + 348) & 0xFFFE0000 | v308;
      *(*(this + 33) + v298 + 348) = *(*(this + 33) + v298 + 348) & 0xFFFDFFFF | ((*(v303 + 20) == 2) << 17);
      *(*(this + 33) + v298 + 380) = 0;
      *(*(this + 33) + v298 + 644) = 0;
      *(*(this + 33) + v298 + 412) = 0;
      *(*(this + 33) + v298 + 676) = 0;
      *(*(this + 33) + v298 + 444) = 0;
      *(*(this + 33) + v298 + 708) = 0;
      *(*(this + 33) + v298 + 476) = 0;
      *(*(this + 33) + v298 + 740) = 0;
      v309 = *(this + 33);
      if (*(*(this + 32) + 2648) == 1)
      {
        v310 = v298 + 412;
        v311 = v309 + v298;
        v312 = *(v311 + 412);
        *(v311 + 412) = 0;
        *(*(this + 33) + v298 + 412) ^= 0xFFFFFF80;
        v313 = *(this + 33) + v298;
        v314 = *(v313 + 412);
        *(v313 + 412) = v312;
        v315 = *(v303 + 48);
        v316 = *v315;
        if (v484)
        {
          if (v316 || *(v315 + 38) || *(v315 + 39))
          {
            result = CAHDec::addToPatcherList(this, v315, v310, *(v315 + 15), 0xFFFFFFFFLL, 7, v314, 4);
            if (result)
            {
              return result;
            }
          }

          v317 = *(this + 33) + v298;
          v318 = *(v317 + 676);
          *(v317 + 676) = 0;
          *(*(this + 33) + v298 + 676) ^= 0x3FFu;
          v319 = *(this + 33) + v298;
          v320 = *(v319 + 676);
          *(v319 + 676) = v318;
          v321 = *(v303 + 48);
          if (*v321 || *(v321 + 152) || *(v321 + 156))
          {
            result = CAHDec::addToPatcherList(this, v321, v298 + 676, *(v321 + 60), 0x3FFFFFFFFFFLL, 32, v320, 4);
            if (result)
            {
              return result;
            }
          }

          v322 = *(this + 33) + v298;
          v323 = *(v322 + 380);
          *(v322 + 380) = 0;
          *(*(this + 33) + v298 + 380) ^= 0xFFFFFF80;
          v324 = *(this + 33) + v298;
          v325 = *(v324 + 380);
          *(v324 + 380) = v323;
          v326 = *(v303 + 48);
          if (*v326 || *(v326 + 152) || *(v326 + 156))
          {
            result = CAHDec::addToPatcherList(this, v326, v298 + 380, *(v326 + 72), 0xFFFFFFFFLL, 7, v325, 4);
            if (result)
            {
              return result;
            }
          }

          v327 = *(this + 33) + v298;
          v328 = *(v327 + 644);
          *(v327 + 644) = 0;
          *(*(this + 33) + v298 + 644) ^= 0x3FFu;
          v329 = *(this + 33) + v298;
          v330 = *(v329 + 644);
          *(v329 + 644) = v328;
          v331 = *(v303 + 48);
          if (*v331 || *(v331 + 152) || *(v331 + 156))
          {
            result = CAHDec::addToPatcherList(this, v331, v298 + 644, *(v331 + 72), 0x3FFFFFFFFFFLL, 32, v330, 4);
            if (result)
            {
              return result;
            }
          }

          if (v486)
          {
            v332 = *(this + 33) + v298;
            v333 = *(v332 + 476);
            *(v332 + 476) = 0;
            *(*(this + 33) + v298 + 476) ^= 0xFFFFFF80;
            v334 = *(this + 33) + v298;
            v335 = *(v334 + 476);
            *(v334 + 476) = v333;
            if (*v481 || *(v481 + 152) || *(v481 + 156))
            {
              result = CAHDec::addToPatcherList(this, v481, v298 + 476, *(v481 + 56), 0xFFFFFFFFLL, 7, v335, 4);
              if (result)
              {
                return result;
              }
            }

            v336 = *(this + 33) + v298;
            v337 = *(v336 + 740);
            *(v336 + 740) = 0;
            *(*(this + 33) + v298 + 740) ^= 0x3FFu;
            v338 = *(this + 33) + v298;
            v339 = *(v338 + 740);
            *(v338 + 740) = v337;
            if (*v481 || *(v481 + 152) || *(v481 + 156))
            {
              result = CAHDec::addToPatcherList(this, v481, v298 + 740, *(v481 + 56), 0x3FFFFFFFFFFLL, 32, v339, 4);
              if (result)
              {
                return result;
              }
            }

            v340 = *(this + 33) + v298;
            v341 = *(v340 + 444);
            *(v340 + 444) = 0;
            *(*(this + 33) + v298 + 444) ^= 0xFFFFFF80;
            v342 = *(this + 33) + v298;
            v343 = *(v342 + 444);
            *(v342 + 444) = v341;
            if (*v481 || *(v481 + 152) || *(v481 + 156))
            {
              result = CAHDec::addToPatcherList(this, v481, v298 + 444, *(v481 + 68), 0xFFFFFFFFLL, 7, v343, 4);
              if (result)
              {
                return result;
              }
            }

            v344 = *(this + 33) + v298;
            v345 = *(v344 + 708);
            *(v344 + 708) = 0;
            *(*(this + 33) + v298 + 708) ^= 0x3FFu;
            v346 = *(this + 33) + v298;
            v347 = *(v346 + 708);
            *(v346 + 708) = v345;
            if (*v481 || *(v481 + 152) || *(v481 + 156))
            {
              v348 = v298 + 708;
              v349 = v481;
LABEL_437:
              v386 = *(v349 + 68);
LABEL_438:
              result = CAHDec::addToPatcherList(this, v349, v348, v386, 0x3FFFFFFFFFFLL, 32, v347, 4);
              if (result)
              {
                return result;
              }
            }
          }
        }

        else
        {
          if (v316 || *(v315 + 38) || *(v315 + 39))
          {
            result = CAHDec::addToPatcherList(this, v315, v310, *(v315 + 13), 0xFFFFFFFFLL, 7, v314, 4);
            if (result)
            {
              return result;
            }
          }

          v387 = *(this + 33) + v298;
          v388 = *(v387 + 476);
          *(v387 + 476) = 0;
          *(*(this + 33) + v298 + 476) ^= 0xFFFFFF80;
          v389 = *(this + 33) + v298;
          v390 = *(v389 + 476);
          *(v389 + 476) = v388;
          v391 = *(v303 + 48);
          if (*v391 || *(v391 + 152) || *(v391 + 156))
          {
            result = CAHDec::addToPatcherList(this, v391, v298 + 476, *(v391 + 56), 0xFFFFFFFFLL, 7, v390, 4);
            if (result)
            {
              return result;
            }
          }

          v392 = *(this + 33) + v298;
          v393 = *(v392 + 380);
          *(v392 + 380) = 0;
          *(*(this + 33) + v298 + 380) ^= 0xFFFFFF80;
          v394 = *(this + 33) + v298;
          v395 = *(v394 + 380);
          *(v394 + 380) = v393;
          v396 = *(v303 + 48);
          if (*v396 || *(v396 + 152) || *(v396 + 156))
          {
            result = CAHDec::addToPatcherList(this, v396, v298 + 380, *(v396 + 64), 0xFFFFFFFFLL, 7, v395, 4);
            if (result)
            {
              return result;
            }
          }

          v397 = *(this + 33) + v298;
          v398 = *(v397 + 444);
          *(v397 + 444) = 0;
          *(*(this + 33) + v298 + 444) ^= 0xFFFFFF80;
          v399 = *(this + 33) + v298;
          v400 = *(v399 + 444);
          *(v399 + 444) = v398;
          v401 = *(v303 + 48);
          if (*v401 || *(v401 + 152) || *(v401 + 156))
          {
            result = CAHDec::addToPatcherList(this, v401, v298 + 444, *(v401 + 68), 0xFFFFFFFFLL, 7, v400, 4);
            if (result)
            {
              return result;
            }
          }

          v402 = *(this + 33) + v298;
          v403 = *(v402 + 676);
          *(v402 + 676) = 0;
          *(*(this + 33) + v298 + 676) ^= 0x3FFu;
          v404 = *(this + 33) + v298;
          v405 = *(v404 + 676);
          *(v404 + 676) = v403;
          v406 = *(v303 + 48);
          if (*v406 || *(v406 + 152) || *(v406 + 156))
          {
            result = CAHDec::addToPatcherList(this, v406, v298 + 676, *(v406 + 52), 0x3FFFFFFFFFFLL, 32, v405, 4);
            if (result)
            {
              return result;
            }
          }

          v407 = *(this + 33) + v298;
          v408 = *(v407 + 740);
          *(v407 + 740) = 0;
          *(*(this + 33) + v298 + 740) ^= 0x3FFu;
          v409 = *(this + 33) + v298;
          v410 = *(v409 + 740);
          *(v409 + 740) = v408;
          v411 = *(v303 + 48);
          if (*v411 || *(v411 + 152) || *(v411 + 156))
          {
            result = CAHDec::addToPatcherList(this, v411, v298 + 740, *(v411 + 56), 0x3FFFFFFFFFFLL, 32, v410, 4);
            if (result)
            {
              return result;
            }
          }

          v412 = *(this + 33) + v298;
          v413 = *(v412 + 644);
          *(v412 + 644) = 0;
          *(*(this + 33) + v298 + 644) ^= 0x3FFu;
          v414 = *(this + 33) + v298;
          v415 = *(v414 + 644);
          *(v414 + 644) = v413;
          v416 = *(v303 + 48);
          if (*v416 || *(v416 + 152) || *(v416 + 156))
          {
            result = CAHDec::addToPatcherList(this, v416, v298 + 644, *(v416 + 64), 0x3FFFFFFFFFFLL, 32, v415, 4);
            if (result)
            {
              return result;
            }
          }

          v417 = *(this + 33) + v298;
          v418 = *(v417 + 708);
          *(v417 + 708) = 0;
          *(*(this + 33) + v298 + 708) ^= 0x3FFu;
          v419 = *(this + 33) + v298;
          v347 = *(v419 + 708);
          *(v419 + 708) = v418;
          v349 = *(v303 + 48);
          if (*v349 || *(v349 + 152) || *(v349 + 156))
          {
            v348 = v298 + 708;
            goto LABEL_437;
          }
        }
      }

      else
      {
        v350 = v309 + v298;
        v351 = *(v350 + 380);
        *(v350 + 380) = 0;
        *(*(this + 33) + v298 + 380) ^= 0xFFFFFF80;
        v352 = *(this + 33) + v298;
        v353 = *(v352 + 380);
        *(v352 + 380) = v351;
        v354 = *v301;
        if (**v301 || *(v354 + 152) || *(v354 + 156))
        {
          result = CAHDec::addToPatcherList(this, *v301, v298 + 380, 0, 0xFFFFFFFFLL, 7, v353, 4);
          if (result)
          {
            return result;
          }
        }

        v355 = *(this + 33) + v298;
        v356 = *(v355 + 644);
        *(v355 + 644) = 0;
        *(*(this + 33) + v298 + 644) ^= 0x3FFu;
        v357 = *(this + 33) + v298;
        v358 = *(v357 + 644);
        *(v357 + 644) = v356;
        if (*v354 || *(v354 + 152) || *(v354 + 156))
        {
          result = CAHDec::addToPatcherList(this, v354, v298 + 644, 0, 0x3FFFFFFFFFFLL, 32, v358, 4);
          if (result)
          {
            return result;
          }
        }

        v359 = *(this + 33) + v298;
        v360 = *(v359 + 412);
        *(v359 + 412) = 0;
        *(*(this + 33) + v298 + 412) ^= 0xFFFFFF80;
        v361 = *(this + 33) + v298;
        v362 = *(v361 + 412);
        *(v361 + 412) = v360;
        v363 = *(v303 + 48);
        if (*v363 || *(v363 + 152) || *(v363 + 156))
        {
          result = CAHDec::addToPatcherList(this, v363, v298 + 412, *(v363 + 52), 0xFFFFFFFFLL, 7, v362, 4);
          if (result)
          {
            return result;
          }
        }

        v364 = *(this + 33) + v298;
        v365 = *(v364 + 676);
        *(v364 + 676) = 0;
        *(*(this + 33) + v298 + 676) ^= 0x3FFu;
        v366 = *(this + 33) + v298;
        v367 = *(v366 + 676);
        *(v366 + 676) = v365;
        v368 = *(v303 + 48);
        if (*v368 || *(v368 + 152) || *(v368 + 156))
        {
          result = CAHDec::addToPatcherList(this, v368, v298 + 676, *(v368 + 52), 0x3FFFFFFFFFFLL, 32, v367, 4);
          if (result)
          {
            return result;
          }
        }

        v369 = *(this + 33) + v298;
        v370 = *(v369 + 444);
        *(v369 + 444) = 0;
        *(*(this + 33) + v298 + 444) ^= 0xFFFFFF80;
        v371 = *(this + 33) + v298;
        v372 = *(v371 + 444);
        *(v371 + 444) = v370;
        v373 = *v302;
        if (**v302 || *(v373 + 152) || *(v373 + 156))
        {
          result = CAHDec::addToPatcherList(this, *v302, v298 + 444, 0, 0xFFFFFFFFLL, 7, v372, 4);
          if (result)
          {
            return result;
          }
        }

        v374 = *(this + 33) + v298;
        v375 = *(v374 + 708);
        *(v374 + 708) = 0;
        *(*(this + 33) + v298 + 708) ^= 0x3FFu;
        v376 = *(this + 33) + v298;
        v377 = *(v376 + 708);
        *(v376 + 708) = v375;
        if (*v373 || *(v373 + 152) || *(v373 + 156))
        {
          result = CAHDec::addToPatcherList(this, v373, v298 + 708, 0, 0x3FFFFFFFFFFLL, 32, v377, 4);
          if (result)
          {
            return result;
          }
        }

        v378 = *(this + 33) + v298;
        v379 = *(v378 + 476);
        *(v378 + 476) = 0;
        *(*(this + 33) + v298 + 476) ^= 0xFFFFFF80;
        v380 = *(this + 33) + v298;
        v381 = *(v380 + 476);
        *(v380 + 476) = v379;
        v382 = *(v303 + 48);
        if (*v382 || *(v382 + 152) || *(v382 + 156))
        {
          result = CAHDec::addToPatcherList(this, v382, v298 + 476, *(v382 + 56), 0xFFFFFFFFLL, 7, v381, 4);
          if (result)
          {
            return result;
          }
        }

        v383 = *(this + 33) + v298;
        v384 = *(v383 + 740);
        *(v383 + 740) = 0;
        *(*(this + 33) + v298 + 740) ^= 0x3FFu;
        v385 = *(this + 33) + v298;
        v347 = *(v385 + 740);
        *(v385 + 740) = v384;
        v349 = *(v303 + 48);
        if (*v349 || *(v349 + 152) || *(v349 + 156))
        {
          v348 = v298 + 740;
          v386 = *(v349 + 56);
          goto LABEL_438;
        }
      }

      v298 += 4;
      ++v300;
      ++v301;
      ++v302;
      if (4 * v482 == v298)
      {
        goto LABEL_440;
      }
    }
  }

  *(v493 + 88) |= 0x2000u;
  *(v297 + 116) = 1;
  *(*(this + 33) + 348) = 0;
LABEL_440:
  *(*(this + 33) + 508) = 0;
  *(*(this + 33) + 512) = 0;
  *(*(this + 33) + 516) = 0;
  *(*(this + 33) + 520) = 0;
  if (!v495)
  {
    goto LABEL_500;
  }

  v420 = *(this + 32);
  if (v489 && v485 == 2)
  {
    v421 = *(*(v420 + 8248) + 60);
    v422 = *(this + 33);
    v423 = *(v422 + 508);
    *(v422 + 508) = 0;
    *(*(this + 33) + 508) ^= 0xFFFFFFC0;
    v424 = *(this + 33);
    v425 = *(v424 + 508);
    *(v424 + 508) = v423;
    v426 = *(*(this + 32) + 8248);
    if (*v426 || *(v426 + 152) || *(v426 + 156))
    {
      result = CAHDec::addToPatcherList(this, v426, 508, v421, 0xFFFFFFFFLL, 6, v425, 4);
      if (result)
      {
        return result;
      }
    }

    v427 = *(this + 33);
    v428 = *(v427 + 772);
    *(v427 + 772) = 0;
    *(*(this + 33) + 772) ^= 0x3FFu;
    v429 = *(this + 33);
    v430 = *(v429 + 772);
    *(v429 + 772) = v428;
    v431 = *(*(this + 32) + 8248);
    if (*v431 || *(v431 + 152) || *(v431 + 156))
    {
      result = CAHDec::addToPatcherList(this, v431, 772, v421, 0x3FFFFFFFFFFLL, 32, v430, 4);
      if (result)
      {
        return result;
      }
    }

    if (v486)
    {
      v432 = *(v481 + 56);
      v433 = *(this + 33);
      v434 = *(v433 + 512);
      *(v433 + 512) = 0;
      *(*(this + 33) + 512) ^= 0xFFFFFFC0;
      v435 = *(this + 33);
      v436 = *(v435 + 512);
      *(v435 + 512) = v434;
      if (*v481 || *(v481 + 152) || *(v481 + 156))
      {
        result = CAHDec::addToPatcherList(this, v481, 512, v432, 0xFFFFFFFFLL, 6, v436, 4);
        if (result)
        {
          return result;
        }
      }

      v437 = *(this + 33);
      v438 = *(v437 + 776);
      *(v437 + 776) = 0;
      *(*(this + 33) + 776) ^= 0x3FFu;
      v439 = *(this + 33);
      v440 = *(v439 + 776);
      *(v439 + 776) = v438;
      if (*v481 || *(v481 + 152) || *(v481 + 156))
      {
        result = CAHDec::addToPatcherList(this, v481, 776, v432, 0x3FFFFFFFFFFLL, 32, v440, 4);
        if (result)
        {
          return result;
        }
      }
    }

    if (v487)
    {
      *(*(this + 33) + 516) = *(*(this + 33) + 516) & 0xFFFC003F | (((*(*(*(this + 32) + 8248) + 84) >> 6) & 0xFFF) << 6);
      if (v486)
      {
        v441 = v481;
LABEL_463:
        v442 = (v441 + 80);
LABEL_499:
        *(*(this + 33) + 520) = *(*(this + 33) + 520) & 0xFFF8003F | (((*v442 >> 6) & 0x1FFF) << 6);
      }

LABEL_500:
      v472 = *(this + 32);
      if (*(v472 + 2360) != 1)
      {
        return 0;
      }

      v473 = *(this + 33);
      *(v473 + 876) = *(v473 + 876) & 0xFFFFFFFE | *(v472 + 2508) & 1;
      if (*(v472 + 2508))
      {
        *(v473 + 2876) = 0x10000000;
        *(v473 + 2880) = *(v472 + 2368);
        *(v473 + 2888) = 0;
        *(v473 + 2884) = 0;
        *(v473 + 2896) = *(v472 + 2372);
        v474 = *(v472 + 2388);
        *(v473 + 2928) = *(v472 + 2404);
        *(v473 + 2912) = v474;
      }

      *(*(this + 33) + 876) = *(*(this + 33) + 876) & 0xFFFFFFFD | (2 * (*(v472 + 2512) & 1));
      if (*(v472 + 2512))
      {
        *(v473 + 2944) = 0;
        v475 = *(v472 + 2424);
        *(v473 + 2944) = (*(v472 + 2424) & 1) << 22;
        v476 = ((*(v472 + 2420) & 1) << 23) | ((v475 & 1) << 22) | 0x20000000;
        *(v473 + 2944) = v476;
        if (!*(v472 + 2364))
        {
          ++v476;
        }

        *(v473 + 2944) = v476;
        v477 = *(v472 + 2428);
        v478 = *(v472 + 2460);
        *(v473 + 2964) = *(v472 + 2444);
        *(v473 + 2980) = v478;
        *(v473 + 2948) = v477;
      }

      *(*(this + 33) + 876) = *(*(this + 33) + 876) & 0xFFFFFFFB | (4 * (*(v472 + 2516) & 1));
      *(*(this + 33) + 876) = *(*(this + 33) + 876) & 0xFFFFFFF7 | (8 * (*(v472 + 2520) & 1));
      *(*(this + 33) + 876) = *(*(this + 33) + 876) & 0xFFFFFFEF | (16 * (*(v472 + 2524) & 1));
      *(v473 + 3000) = 0;
      v479 = *(v472 + 2476) == 2 ? 805306368 : 813694976;
      *(v473 + 3000) = v479;
      memcpy((v473 + 3004), (v472 + 2480), 4 * *(v472 + 2476));
      if (!*(v472 + 2516))
      {
        return 0;
      }

      result = 0;
      *(v472 + 2516) = 0;
      return result;
    }

    if (CAHDecIxoraHevc::getSWRStride(this, *(v493 + 160) - *(v493 + 156) + 1, v491[909], v491[910], v491[5713]))
    {
      return 0xFFFFFFFFLL;
    }

    *(*(this + 33) + 516) = *(*(this + 33) + 516) & 0xFFFC003F | (((*(this + 3308) >> 6) & 0xFFF) << 6);
    if (!v486)
    {
      goto LABEL_500;
    }

LABEL_498:
    v442 = (this + 13236);
    goto LABEL_499;
  }

  v443 = *(v420 + 2892);
  if (*(v420 + 2892))
  {
    v444 = *(v420 + 2904);
    v443 = *(v420 + 2908);
  }

  else
  {
    v444 = 0;
  }

  v445 = *(v420 + 8248);
  v447 = *(v445 + 52);
  v446 = *(v445 + 56);
  v448 = v447 + v444;
  v449 = __CFADD__(v447, v444);
  v450 = v446 + v443;
  if (__CFADD__(v446, v443))
  {
    v451 = 2;
  }

  else
  {
    v451 = v449;
  }

  if (v451)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 136315394;
    *&buf[4] = "populatePictureRegisters";
    *&buf[12] = 1024;
    *&buf[14] = v451;
    v42 = MEMORY[0x277D86220];
    v43 = "AppleAVD: %s(): failKind = %d";
    v234 = buf;
    v235 = 18;
    goto LABEL_251;
  }

  v452 = *(this + 33);
  v453 = *(v452 + 508);
  *(v452 + 508) = 0;
  *(*(this + 33) + 508) ^= 0xFFFFFFC0;
  v454 = *(this + 33);
  v455 = *(v454 + 508);
  *(v454 + 508) = v453;
  v456 = *(*(this + 32) + 8248);
  if (!*v456 && !*(v456 + 152) && !*(v456 + 156) || (result = CAHDec::addToPatcherList(this, v456, 508, v448, 0xFFFFFFFFLL, 6, v455, 4), !result))
  {
    if ((v457 = *(this + 33), v458 = *(v457 + 772), *(v457 + 772) = 0, *(*(this + 33) + 772) ^= 0x3FFu, v459 = *(this + 33), v460 = *(v459 + 772), *(v459 + 772) = v458, v461 = *(*(this + 32) + 8248), !*v461) && !*(v461 + 152) && !*(v461 + 156) || (result = CAHDec::addToPatcherList(this, v461, 772, v448, 0x3FFFFFFFFFFLL, 32, v460, 4), !result))
    {
      if ((v462 = *(this + 33), v463 = *(v462 + 512), *(v462 + 512) = 0, *(*(this + 33) + 512) ^= 0xFFFFFFC0, v464 = *(this + 33), v465 = *(v464 + 512), *(v464 + 512) = v463, v466 = *(*(this + 32) + 8248), !*v466) && !*(v466 + 152) && !*(v466 + 156) || (result = CAHDec::addToPatcherList(this, v466, 512, v450, 0xFFFFFFFFLL, 6, v465, 4), !result))
      {
        if ((v467 = *(this + 33), v468 = *(v467 + 776), *(v467 + 776) = 0, *(*(this + 33) + 776) ^= 0x3FFu, v469 = *(this + 33), v470 = *(v469 + 776), *(v469 + 776) = v468, v471 = *(*(this + 32) + 8248), !*v471) && !*(v471 + 152) && !*(v471 + 156) || (result = CAHDec::addToPatcherList(this, v471, 776, v450, 0x3FFFFFFFFFFLL, 32, v470, 4), !result))
        {
          if (v487)
          {
            *(*(this + 33) + 516) = *(*(this + 33) + 516) & 0xFFFC003F | (((*(*(*(this + 32) + 8248) + 76) >> 6) & 0xFFF) << 6);
            v441 = *(*(this + 32) + 8248);
            goto LABEL_463;
          }

          if (CAHDecIxoraHevc::getSWRStride(this, *(v493 + 160) - *(v493 + 156) + 1, v491[909], v491[910], v491[5713]))
          {
            return 0xFFFFFFFFLL;
          }

          *(*(this + 33) + 516) = *(*(this + 33) + 516) & 0xFFFC003F | (((*(this + 3308) >> 6) & 0xFFF) << 6);
          goto LABEL_498;
        }
      }
    }
  }

  return result;
}

uint64_t CAHDecIxoraHevc::getSWRStride(CAHDecIxoraHevc *this, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(*(this + 32) + 2644);
  *(this + 1654) = 0;
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
        *(this + 3308) = (((2 * ((2863311531u * (a2 + 2)) >> 32)) & 0xFFFFFFFC) + 63) & 0xFFFFFFC0;
        v9 = (2 * ((2863311531u * (2 * a2 / a5 + 5)) >> 32)) & 0xFFFFFFF8;
LABEL_21:
        *(this + 3309) = (v9 + 63) & 0xFFFFFFC0;
        return v5;
      }

      goto LABEL_15;
    }

    v5 = 0;
    *(this + 3308) = (a2 + 63) & 0xFFFFFFC0;
    v10 = 2 * a2;
LABEL_19:
    v9 = v10 / a5;
    goto LABEL_21;
  }

  if (v8 == 4)
  {
    v5 = 0;
    *(this + 3308) = (((2 * ((3435973837u * (a2 + 4)) >> 32)) & 0xFFFFFFF8) + 63) & 0xFFFFFFC0;
    v9 = (2 * ((3435973837u * (2 * a2 / a5 + 9)) >> 32)) & 0xFFFFFFF0;
    goto LABEL_21;
  }

  if (v8 == 8)
  {
    v5 = 0;
    *(this + 3308) = (2 * a2 + 63) & 0xFFFFFFC0;
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

uint64_t CAHDecIxoraHevc::getTileIdxAbove(CAHDecIxoraHevc *this, unsigned int a2)
{
  v2 = *(*(this + 33) + 780);
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

uint64_t CAHDecIxoraHevc::populateAvdWork(CAHDecIxoraHevc *this, unsigned int a2)
{
  v129 = *MEMORY[0x277D85DE8];
  v3 = *(this + 32);
  v4 = *(this + 33);
  v5 = *(v3 + 8208);
  v6 = *(v3 + 8168);
  v98 = *(v3 + 8184);
  v7 = *(v3 + 8924);
  v8 = *(v3 + 2960);
  v9 = *(v3 + 2964);
  v10 = *(v3 + 8176) + 9856 * *(v3 + 8212);
  memset(v128, 0, sizeof(v128));
  v127[0] = 0;
  v127[1] = 0;
  v11 = v7 >> 28;
  v99 = v6 + 23176 * v5;
  if (v7)
  {
    if (*(v10 + 53))
    {
      v13 = *(v99 + 22888) > v11 + 1;
    }

    else
    {
      v13 = 0;
    }

    v12 = v13 && v9 == 0;
  }

  else
  {
    v12 = 0;
  }

  v108 = *(v4 + 782) * *(v4 + 780);
  if ((v7 & 2) != 0 && *(v10 + 52))
  {
    if (*(v10 + 53) | v9)
    {
      v15 = 0;
    }

    else
    {
      v15 = v108 > v11 + 1;
    }

    v16 = v15;
    v118 = v16;
  }

  else
  {
    v118 = 0;
  }

  v101 = *(v99 + 22888);
  if ((v7 & 0x20) != 0 && !*(v10 + 53))
  {
    if (*(v10 + 52) | v9)
    {
      v71 = 0;
    }

    else
    {
      v71 = v8 > v11 + 1;
    }

    v72 = v71;
    v110 = v72;
  }

  else
  {
    v110 = 0;
  }

  v17 = 0;
  v121 = *(v99 + 22880);
  v18 = v11 + 2;
  v113 = v12;
  v19 = v12 | v118;
  if (!(((v7 & 4) == 0) | (v12 | v118) & 1) && (v110 & 1) == 0)
  {
    v17 = *(*(this + *(this + 13) + 34) + 16) & (v11 + 1);
  }

  v111 = v10;
  v123 = 0;
  v124 = 0;
  memset_pattern16(__b, &unk_27775BC00, 0x10uLL);
  v20 = v4 + 223820;
  v91 = v19 | v110;
  if ((v19 | v110))
  {
    v21 = v18;
  }

  else
  {
    v21 = 1;
  }

  v22 = v17 + v21;
  v107 = v21;
  v23 = 48 * (0x1000 / v21);
  v95 = v17;
  v24 = v17;
  v25 = v17;
  do
  {
    *(v128 + v25) = v20 + (v25 - v17) * v23;
    ++v25;
  }

  while (v25 < v22);
  v93 = v23;
  v94 = v22;
  v116 = 0;
  v26 = 0;
  v112 = 0;
  v122 = 0;
  v27 = 0;
  v117 = 0;
  v114 = 0;
  v104 = 0;
  v100 = 0;
  v28 = *(v128 + v24);
  v29 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v20) >> 4);
  LOBYTE(v30) = v113;
  if (v113)
  {
    v31 = 12;
  }

  else
  {
    v31 = 4;
  }

  v103 = v31;
  v92 = v24;
  v97 = &__b[v24];
  v32 = 0;
  v106 = v4 + 3368;
  v33 = v95;
  v105 = v20;
  do
  {
    v34 = v98 + 2360 * v32;
    if (!((*(v111 + 52) != 0) | v30 & 1))
    {
      v37 = 1;
LABEL_43:
      v38 = 0;
      v102 = 0;
      v109 = 368 * v32;
      v115 = v37;
      v119 = v32;
      v120 = v98 + 2360 * v32;
      while (1)
      {
        if (!(v38 | v32))
        {
          *(v28 + 4) = 0;
          *(v28 + 6) = v33;
          *(v28 + 8) = 0;
          *(v28 + 12) = 0;
          v112 = *(v106 + v109);
          if (!(*(**(this + 32) + 440))())
          {
            return 0xFFFFFFFFLL;
          }

          v42 = *(v34 + 36);
          *(v28 + 32) = v42;
          *(v28 + 36) = v42;
          HIDWORD(v122) = 0;
          *(v28 + 44) = (*(*this + 80))(this, v26, v121);
          v43 = 271;
          v32 = v119;
          goto LABEL_146;
        }

        if (!v38)
        {
          break;
        }

        v30 = *(*(v34 + 1904) + 4 * v38 - 4) + 1;
        if (*(v111 + 52))
        {
          if (*(v111 + 53))
          {
            v39 = *(v99 + 22880);
            v40 = (v39 + v122) / v39;
            v30 += v102;
            if (v40 >= *(*(this + 33) + 2 * (HIDWORD(v104) + 1) + 826))
            {
              LODWORD(v122) = (*(*this + 72))(this, (v26 + 1), v121);
              v102 = 0;
              v27 = v103;
            }

            else
            {
              LODWORD(v122) = v100 + v40 * v39;
              if (!v113)
              {
                v102 = v30;
                LOBYTE(v30) = 0;
                v32 = v119;
                goto LABEL_147;
              }

              v102 = 0;
              v41 = __b[v33];
              __b[v33] = 0;
              if (v41)
              {
                v27 = 72;
              }

              else
              {
                v27 = 8;
              }
            }
          }

          else
          {
            LODWORD(v122) = (*(*this + 72))(this, (v26 + 1), v121);
            v27 = 4;
          }
        }

        else if (v113)
        {
          LODWORD(v122) = (*(v99 + 22880) + v122) / *(v99 + 22880) * *(v99 + 22880);
          v27 = 8;
        }

        v52 = 48 * v29;
        v53 = v124;
        if (*v124 || *(v124 + 152) || *(v124 + 156))
        {
          v54 = v123;
          if ((v123 + HIDWORD(v122)) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0]) = 136315394;
            *(buf + 4) = "populateAvdWork";
            WORD2(buf[1]) = 1024;
            *(&buf[1] + 6) = 1890;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v54 = v123;
          }

          result = CAHDec::addToPatcherList(this, v53, v52 + 223842, HIDWORD(v122) + v54, 0x3FFFFFFFFFFLL, 32, -1, 2);
          if (result)
          {
            return result;
          }

          v53 = v124;
          if (*v124)
          {
            goto LABEL_92;
          }
        }

        if (*(v53 + 152) || *(v53 + 156))
        {
LABEL_92:
          v55 = v123;
          if ((v123 + HIDWORD(v122)) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0]) = 136315394;
            *(buf + 4) = "populateAvdWork";
            WORD2(buf[1]) = 1024;
            *(&buf[1] + 6) = 1891;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v55 = v123;
          }

          result = CAHDec::addToPatcherList(this, v53, v52 + 223844, HIDWORD(v122) + v55, 0xFFFFFFFFLL, 0, -1, 4);
          if (result)
          {
            return result;
          }
        }

        *(v28 + 28) = v30;
        HIDWORD(v122) += v30;
        v51 = v107;
        v20 = v105;
        v30 = v113;
LABEL_97:
        v56 = v26 + 1;
        if (v26 + 1 < v108)
        {
          v57 = (*(*this + 72))(this, (v26 + 1), v121);
          v58 = v103;
          if (v122 != v57)
          {
            v58 = 0;
          }

          v27 |= v58;
        }

        *(v28 + 16) = v27;
        if (v116 == a2 - 1)
        {
          *(v28 + 18) |= 2u;
        }

        if (v26 == v108 - 1)
        {
          *(v28 + 18) |= 4u;
        }

        v59 = v118;
        if (v26 != v108 - 2)
        {
          v59 = 0;
        }

        if (v59 == 1)
        {
          *(v28 + 18) |= 4u;
        }

        if (v30 && ((v60 = *(v28 + 10), v101 > 1) ? (v61 = v101 - 2 == v60) : (v61 = 0), !v61 ? (v62 = 0) : (v62 = 1), v101 - 1 == v60 || v62))
        {
          *(v28 + 18) |= 8u;
          if ((v27 & 4) != 0)
          {
LABEL_121:
            v63 = v117;
            if (*(v111 + 52) && *(v111 + 53))
            {
              v64 = *(this + 33);
              v65 = *(v64 + 780);
              LODWORD(v104) = (v33 - *(v64 + 826 + 2 * (v56 / v65)) + *(v64 + 826 + 2 * (v56 / v65 + 1))) % v51;
              HIDWORD(v104) = v56 / v65;
              v100 = *(v64 + 2 * (v56 % v65) + 784);
              memset_pattern16(v97, &unk_27775BC00, 4 * (v107 - 1) + 4);
            }

            v26 = (v26 + 1);
            goto LABEL_125;
          }
        }

        else if ((v27 & 4) != 0)
        {
          goto LABEL_121;
        }

        v63 = v117;
LABEL_125:
        if ((v27 & 0x44) != 0 && v63 <= (*(*this + 88))(this, v26))
        {
          v27 |= 0x20u;
        }

        if (!v38)
        {
          v66 = v114;
          if (!*(v120 + 32))
          {
            v66 = v122;
          }

          v114 = v66;
          if (!*(v120 + 32))
          {
            v63 = v26;
          }
        }

        if ((v27 & 0x44) != 0)
        {
          v67 = *(*(this + 33) + 780);
          if (v63 / v67 + 1 == v26 / v67)
          {
            v27 |= 0x10u;
          }
        }

        ++*(v127 + v33);
        *(v128 + v33) += 48;
        v68 = v122 / v121;
        if (v30)
        {
          v33 = (v104 + v68 - HIDWORD(v104)) % v51;
        }

        if (v118)
        {
          v33 = v26 % v51;
        }

        v69 = v110 ^ 1;
        if (v38)
        {
          v69 = 1;
        }

        v117 = v63;
        if ((v69 & 1) == 0 && !*(v120 + 32))
        {
          v33 = (v33 + 1) % v51;
        }

        v28 = *(v128 + v33);
        v29 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v20) >> 4);
        *(v28 + 4) = *(v127 + v33);
        *(v28 + 6) = v33;
        *(v28 + 8) = v119;
        *(v28 + 10) = v68;
        *(v28 + 12) = v26;
        *(v28 + 32) = v122;
        *(v28 + 36) = v114;
        v70 = (*(*this + 80))(this, v26, v121);
        v32 = v119;
        *(v28 + 44) = v70;
        v43 = v27;
        v116 = v119;
        v34 = v120;
LABEL_146:
        *(v28 + 14) = v43;
LABEL_147:
        if (v115 == ++v38)
        {
          goto LABEL_40;
        }
      }

      v44 = 48 * v29;
      v45 = v124;
      if (*v124 || *(v124 + 152) || *(v124 + 156))
      {
        v46 = v123;
        v47 = HIDWORD(v122);
        if ((v123 + HIDWORD(v122)) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf[0]) = 136315394;
          *(buf + 4) = "populateAvdWork";
          WORD2(buf[1]) = 1024;
          *(&buf[1] + 6) = 1814;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v46 = v123;
        }

        result = CAHDec::addToPatcherList(this, v45, v44 + 223842, HIDWORD(v122) + v46, 0x3FFFFFFFFFFLL, 32, -1, 2);
        if (result)
        {
          return result;
        }

        v45 = v124;
        if (*v124)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v47 = HIDWORD(v122);
      }

      if (!*(v45 + 152) && !*(v45 + 156))
      {
LABEL_69:
        *(v28 + 28) = v112 - v47;
        v50 = *(v106 + v109);
        if (!(*(**(this + 32) + 440))(*(this + 32), v119, &v124, &v123))
        {
          return 0xFFFFFFFFLL;
        }

        v112 = v50;
        if (*(v120 + 32))
        {
          v27 = 2;
        }

        else
        {
          v27 = 258;
        }

        v30 = v113;
        LODWORD(v122) = *(v120 + 36);
        if (v113)
        {
          v51 = v107;
          v20 = v105;
          if (*(v120 + 36) % v121 == v100)
          {
            HIDWORD(v122) = 0;
            if (__b[v33])
            {
              v27 |= 0x48u;
              __b[v33] = 0;
            }

            else
            {
              v27 |= 8u;
            }
          }

          else
          {
            HIDWORD(v122) = 0;
          }
        }

        else
        {
          HIDWORD(v122) = 0;
          v51 = v107;
          v20 = v105;
        }

        goto LABEL_97;
      }

LABEL_65:
      v49 = v123;
      if ((v123 + v47) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "populateAvdWork";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = 1815;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v49 = v123;
      }

      result = CAHDec::addToPatcherList(this, v45, v44 + 223844, v47 + v49, 0xFFFFFFFFLL, 0, -1, 4);
      if (result)
      {
        return result;
      }

      goto LABEL_69;
    }

    v35 = *(v34 + 1896);
    v36 = __CFADD__(v35, 1);
    v37 = v35 + 1;
    if (!v36)
    {
      goto LABEL_43;
    }

LABEL_40:
    ++v32;
  }

  while (v32 != a2);
  v73 = v124;
  v74 = 48 * v29;
  if (!*v124 && !*(v124 + 152) && !*(v124 + 156))
  {
    v76 = HIDWORD(v122);
    v77 = v107;
LABEL_172:
    if (*(v73 + 152) || *(v73 + 156))
    {
LABEL_174:
      v78 = v74 + 223842;
      v79 = v123;
      if ((v123 + v76) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "populateAvdWork";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = 1986;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v79 = v123;
      }

      result = CAHDec::addToPatcherList(this, v73, v78 + 2, v76 + v79, 0xFFFFFFFFLL, 0, -1, 4);
      if (result)
      {
        return result;
      }
    }

    *(v28 + 28) = v112 - v76;
    *(v28 + 16) = 917519;
    ++*(v127 + v33);
    v80 = v92;
    if (v110)
    {
      v81 = 0;
      memset(buf, 0, sizeof(buf));
      do
      {
        buf[v81] = v20 + v81 * v93;
        ++v81;
      }

      while (v77 != v81);
      v82 = buf[0];
      v83 = *(buf[0] + 8) + 1;
      if (v83 >= a2)
      {
        v84 = 0;
        v87 = buf;
      }

      else
      {
        v84 = 0;
        v85 = 0;
        v86 = v91 & 1;
        v87 = buf;
        do
        {
          if (*(v82 + 4) + 1 == *(v127 + v84))
          {
            v84 = v86;
            *(v82 + 40) = *(buf[v86] + 36);
          }

          else if (v83 == *(v82 + 56))
          {
            *v87 = v82 + 48;
            v84 = v85;
            v86 = v85;
          }

          else
          {
            v84 = v86;
            *(v82 + 40) = *(buf[v86] + 36);
            *v87 = v82 + 48;
          }

          v85 = v86;
          v86 = (v86 + 1) % v77;
          v87 = &buf[v84];
          v82 = *v87;
          v83 = *(*v87 + 8) + 1;
        }

        while (v83 < a2);
      }

      v88 = *(v127 + v84);
      if (*(v82 + 4) + 1 != v88)
      {
        do
        {
          v89 = *(v82 + 52);
          v82 += 48;
        }

        while (v89 + 1 != v88);
        *v87 = v82;
      }

      *(v82 + 40) = *(v82 + 44) + 1;
    }

    v90 = *(this + 33) + 36;
    do
    {
      result = 0;
      *(v90 + 2 * v80 - 8) = *(v127 + v80);
      *(v90 + 4 * v80) = (v80 - v95) * v93 + 223820;
      ++v80;
    }

    while (v80 < v94);
    return result;
  }

  v75 = v123;
  v76 = HIDWORD(v122);
  v77 = v107;
  if ((v123 + HIDWORD(v122)) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 136315394;
    *(buf + 4) = "populateAvdWork";
    WORD2(buf[1]) = 1024;
    *(&buf[1] + 6) = 1985;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v75 = v123;
  }

  result = CAHDec::addToPatcherList(this, v73, v74 + 223842, HIDWORD(v122) + v75, 0x3FFFFFFFFFFLL, 32, -1, 2);
  if (!result)
  {
    v73 = v124;
    if (!*v124)
    {
      goto LABEL_172;
    }

    goto LABEL_174;
  }

  return result;
}

uint64_t CAHDecIxoraHevc::allocWorkBuf_SPS(CAHDecIxoraHevc *this, _DWORD *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a2 + 5120;
  v5 = a2[902];
  v6 = a2[903];
  v7 = a2[900];
  if (v5 < (*(*this + 104))(this) || (v8 = a2[903], v8 < (*(*this + 112))(this)) || (v9 = a2[909], v9 > (*(*this + 120))(this) - 8) || (v10 = a2[910], v10 > (*(*this + 128))(this) - 8) || (v17 = v4[598], v17 - 16 > 0x30) || ((1 << (v17 - 16)) & 0x1000000010001) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = a2[902];
      v12 = a2[903];
      v13 = a2[909];
      v14 = a2[910];
      v15 = v4[598];
      v50 = 136316418;
      v51 = "allocWorkBuf_SPS";
      v52 = 1024;
      v53 = v11;
      v54 = 1024;
      *v55 = v12;
      *&v55[4] = 1024;
      *&v55[6] = v13;
      v56 = 1024;
      v57 = v14;
      v58 = 1024;
      v59 = v15;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): unsupported bit stream w %d h %d bd %d %d CtbSizeY %d\n", &v50, 0x2Au);
    }

    return 0xFFFFFFFFLL;
  }

  v18 = v5 + 31;
  if (v5 < -31)
  {
    v18 = v5 + 62;
  }

  v19 = v18 >> 5;
  v20 = v6 + 31;
  if (v6 < -31)
  {
    v20 = v6 + 62;
  }

  v21 = v20 >> 5;
  v22 = 32 - __clz(v19 - 1);
  if (v19 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = 32 - __clz(v21 - 1);
  if (v21 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = ((32 << (v25 + v23)) + 127) & 0xFFFFFF80;
  if (v7)
  {
    v27 = v5 << (v7 == 3);
    v28 = v27 + 31;
    v29 = v27 + 62;
    if (v28 >= 0)
    {
      v29 = v28;
    }

    v30 = v29 >> 5;
    if (v7 == 1)
    {
      v31 = v6 + 1;
    }

    else
    {
      v31 = v6;
    }

    v32 = v31 >> (v7 == 1);
    v34 = v32 + 15;
    v33 = v32 < -15;
    v35 = v32 + 30;
    if (!v33)
    {
      v35 = v34;
    }

    v36 = v35 >> 4;
    if (v30 > 1)
    {
      v37 = 32 - __clz(v30 - 1);
      goto LABEL_32;
    }
  }

  else
  {
    v36 = 0;
  }

  LOBYTE(v37) = 0;
LABEL_32:
  v38 = 32 - __clz(v36 - 1);
  if (v36 >= 2)
  {
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  v40 = ((8 << (v39 + v37)) + 127) & 0xFFFFFF80;
  if (!v7)
  {
    v40 = 0;
  }

  *(this + 3300) = v26;
  *(this + 3301) = v40;
  *(this + 1651) = 0;
  v41 = (v17 & 0xFFFFFFF0) * (v17 >> 4) * v4[600];
  *(this + 3306) = v41;
  *(this + 3305) = v4[602] * v41;
  if (*(*(this + 32) + 2648))
  {
LABEL_44:
    v46 = (this + 8976);
    v47 = 16;
    while (1)
    {
      v48 = *(this + 3305);
      if (v48)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), v46, v48, 7, 1, 0))
        {
          break;
        }
      }

      result = 0;
      v46 += 11;
      if (!--v47)
      {
        return result;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    v50 = 136315650;
    v51 = "allocWorkBuf_SPS";
    v52 = 1024;
    v53 = 2252;
    v54 = 2080;
    *v55 = "MvColo";
    v49 = MEMORY[0x277D86220];
  }

  else
  {
    v42 = (this + 3344);
    v43 = 16;
    while (1)
    {
      v44 = *(this + 3300);
      if (v44 && CAVDDecoder::allocAVDMem(*(this + 32), v42 - 176, v44, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_56;
        }

        v50 = 136315650;
        v51 = "allocWorkBuf_SPS";
        v52 = 1024;
        v53 = 2243;
        v54 = 2080;
        *v55 = "HdrY";
        v49 = MEMORY[0x277D86220];
        goto LABEL_55;
      }

      v45 = *(this + 3301);
      if (v45)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), v42, v45, 7, 1, 0))
        {
          break;
        }
      }

      v42 += 11;
      if (!--v43)
      {
        goto LABEL_44;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    v50 = 136315650;
    v51 = "allocWorkBuf_SPS";
    v52 = 1024;
    v53 = 2244;
    v54 = 2080;
    *v55 = "HdrC";
    v49 = MEMORY[0x277D86220];
  }

LABEL_55:
  _os_log_impl(&dword_277606000, v49, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v50, 0x1Cu);
LABEL_56:
  (*(*this + 144))(this);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecIxoraHevc::allocWorkBuf_PPS(CAHDecIxoraHevc *this, _DWORD *a2, _DWORD *a3, void *a4)
{
  v75 = *MEMORY[0x277D85DE8];
  v4 = (a2[909] + 9) & 0xFFFFFFFE;
  v5 = (a2[910] + 9) & 0xFFFFFFFE;
  if (v4 <= v5)
  {
    v6 = (a2[910] + 9) & 0xFFFFFFFE;
  }

  else
  {
    v6 = (a2[909] + 9) & 0xFFFFFFFE;
  }

  v7 = a2[900];
  if (v6 == 10)
  {
    v8 = 40;
  }

  else
  {
    v8 = 48;
  }

  if (v6 == 8)
  {
    v8 = 32;
  }

  v9 = v7 != 3;
  if (*(a3 + 52))
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = a2[1106] + a2[1105];
    v16 = a3[14];
    v17 = a2[5718];
    v18 = a2[902];
    do
    {
      v19 = a3[v10 + 17] + 1;
      v20 = v19 * v17;
      if (v19 * v17 + v13 > v18)
      {
        v20 = v18 - v13;
      }

      if (v11 <= v20)
      {
        v11 = v20;
      }

      if (v7)
      {
        v21 = (v19 << v15) >> v9;
        if (v16 == v10)
        {
          v21 = (((v18 >> 3) - (v14 << v15)) >> v9) + 1;
        }

        v12 += ((v21 + 2 * (v10 != 0)) * v8 + 127) & 0xFFFFFF80;
      }

      v13 += v20;
      v14 += v19;
      ++v10;
    }

    while (v16 + 1 != v10);
  }

  else
  {
    v18 = a2[902];
    v22 = (v8 + v8 * (v18 >> 3 >> v9) + 127) & 0x7FFFFF80;
    if (v7)
    {
      v12 = v22;
    }

    else
    {
      v12 = 0;
    }

    v11 = a2[902];
  }

  v23 = 0;
  v25 = *(this + 32);
  if (v11 >= -15)
  {
    v26 = v11 + 15;
  }

  else
  {
    v26 = v11 + 30;
  }

  v27 = a3[14];
  if (*(a3 + 52))
  {
    v28 = a3[14];
  }

  else
  {
    v28 = 0;
  }

  v67 = v28;
  if (v7 == 3)
  {
    v29 = 48;
  }

  else
  {
    v29 = 32;
  }

  if (v7 == 3)
  {
    v30 = 176;
  }

  else
  {
    v30 = 128;
  }

  if (!v7)
  {
    v29 = 16;
  }

  v31 = (v29 * v6) >> 3;
  if (!v7)
  {
    v30 = 80;
  }

  v65 = v26;
  v66 = v30;
  v32 = v26 >> 4;
  v33 = (v26 >> 4) * v31;
  v34 = 0;
  v35 = 0;
  if (!*(a3 + 52))
  {
    v59 = 0;
LABEL_84:
    v68 = v59;
    goto LABEL_85;
  }

  v68 = 0;
  if (v27)
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v23 = 0;
    v37 = 0;
    if (v7 == 1)
    {
      v38 = 144;
    }

    else
    {
      v38 = 192;
    }

    if (v7 == 1)
    {
      v39 = 24;
    }

    else
    {
      v39 = 32;
    }

    v40 = v7 == 0;
    if (v7)
    {
      v41 = v38;
    }

    else
    {
      v41 = 96;
    }

    v42 = (((v41 * v6) >> 3) + 7) & 0x3FFFFFF8;
    if (v40)
    {
      v43 = 16;
    }

    else
    {
      v43 = v39;
    }

    v44 = a2[903];
    v45 = v4 - 8;
    v46 = v5 - 8;
    if (v45 <= v46)
    {
      v47 = v46;
    }

    else
    {
      v47 = v45;
    }

    v48 = a3[15];
    v49 = a2[5718];
    v50 = (a3 + 37);
    v52 = *(v25 + 2644) == 1 && v47 != 0;
    do
    {
      v53 = v49 + v49 * *&v50[4 * v36];
      if (v53 + v37 > v44)
      {
        v53 = v44 - v37;
      }

      v54 = v53 + 15;
      if (v53 < -15)
      {
        v54 = v53 + 30;
      }

      if (v36)
      {
        v55 = (v54 >> 4) + 1;
      }

      else
      {
        v55 = v54 >> 4;
      }

      v56 = v55 * v42;
      if (v35 <= v56)
      {
        v35 = v56;
      }

      if (v34 <= (36 * (v54 >> 4)))
      {
        v34 = 36 * (v54 >> 4);
      }

      if (v52)
      {
        if (v48 == v36)
        {
          v57 = 23;
        }

        else
        {
          v57 = 15;
        }

        v58 = ((v57 + v53) / 16 * v43) | 6;
        if (v23 <= v58)
        {
          v23 = v58;
        }
      }

      v37 += v53;
      ++v36;
    }

    while (v48 + 1 != v36);
    v59 = (((3 * v6) & 0x7FFFFF) << 6) + (((v44 + 7) >> 3) + 2) * ((((v6 >> 1) & 0x1FFFFF) << 8) | 8);
    goto LABEL_84;
  }

LABEL_85:
  if (v33 && CAVDDecoder::allocAVDMem(v25, this + 737, v33, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2422;
      v73 = 2080;
      v74 = "IpAbove";
      v60 = MEMORY[0x277D86220];
LABEL_121:
      _os_log_impl(&dword_277606000, v60, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", buf, 0x1Cu);
      goto LABEL_122;
    }

    goto LABEL_122;
  }

  if ((v11 + 30) >= 0x1F && CAVDDecoder::allocAVDMem(*(this + 32), this + 550, 4 * (4 * v32 + (v65 >> 4)), 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2423;
      v73 = 2080;
      v74 = "MvAboveInfo";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

LABEL_122:
    (*(*this + 160))(this, 0);
    return 0xFFFFFFFFLL;
  }

  v61 = v67 + ((v18 + 15) >> 4);
  v62 = v61 * ((((v66 * v6) >> 3) + 7) & 0x3FFFFFF8) + (v27 << 7);
  if (v62 && CAVDDecoder::allocAVDMem(*(this + 32), this + 748, v62, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2424;
      v73 = 2080;
      v74 = "LfAbovePix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  v63 = 36 * v61 + (v27 << 7);
  if (v63 && CAVDDecoder::allocAVDMem(*(this + 32), this + 759, v63, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2425;
      v73 = 2080;
      v74 = "LfAboveInfo";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (v35 && CAVDDecoder::allocAVDMem(*(this + 32), this + 770, v35, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2426;
      v73 = 2080;
      v74 = "LfLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (v34 && CAVDDecoder::allocAVDMem(*(this + 32), this + 781, v34, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2427;
      v73 = 2080;
      v74 = "LfLeftInfo";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (v23 && CAVDDecoder::allocAVDMem(*(this + 32), this + 792, v23, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2428;
      v73 = 2080;
      v74 = "SwLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (v12 && CAVDDecoder::allocAVDMem(*(this + 32), this + 803, v12, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2429;
      v73 = 2080;
      v74 = "AZAbovePix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (!v68)
  {
    return 0;
  }

  result = CAVDDecoder::allocAVDMem(*(this + 32), this + 814, v68, 7, 1, 0);
  if (result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2430;
      v73 = 2080;
      v74 = "AZLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  return result;
}

uint64_t CAHDecIxoraHevc::freeWorkBuf_SPS(uint64_t this)
{
  v1 = this;
  if (!*(*(this + 256) + 2648))
  {
    v2 = (this + 3344);
    v3 = 16;
    do
    {
      if (*(v2 - 352))
      {
        this = CAVDDecoder::deallocAVDMem(*(v1 + 256), v2 - 352);
        *(v2 - 352) = 0;
      }

      if (*v2)
      {
        this = CAVDDecoder::deallocAVDMem(*(v1 + 256), v2);
        *v2 = 0;
      }

      v2 += 22;
      --v3;
    }

    while (v3);
  }

  v4 = (v1 + 8976);
  v5 = 16;
  do
  {
    if (*v4)
    {
      this = CAVDDecoder::deallocAVDMem(*(v1 + 256), v4);
      *v4 = 0;
    }

    v4 += 22;
    --v5;
  }

  while (v5);
  return this;
}

uint64_t *CAHDecIxoraHevc::freeWorkBuf_PPS(uint64_t *this, void *a2)
{
  v2 = this;
  if (this[1474])
  {
    this = CAVDDecoder::deallocAVDMem(this[32], this + 1474);
    v2[1474] = 0;
  }

  if (v2[1100])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1100);
    v2[1100] = 0;
  }

  if (v2[1496])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1496);
    v2[1496] = 0;
  }

  if (v2[1518])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1518);
    v2[1518] = 0;
  }

  if (v2[1540])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1540);
    v2[1540] = 0;
  }

  if (v2[1562])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1562);
    v2[1562] = 0;
  }

  if (v2[1584])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1584);
    v2[1584] = 0;
  }

  if (v2[1606])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1606);
    v2[1606] = 0;
  }

  if (v2[1628])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1628);
    v2[1628] = 0;
  }

  return this;
}

uint64_t CAHDecIxoraHevc::setVPInstrFifo(uint64_t this, int a2)
{
  v2 = 0;
  v3 = (this + 6316);
  do
  {
    *v3 = 1;
    *(v3 - 39) = v2++;
    v3 += 44;
  }

  while (v2 != 15);
  *(this + 13216) = a2;
  return this;
}

CAHDec *createDaisyAvcDecoder(uint64_t a1)
{
  v2 = operator new(0x36A0uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecDaisyAvc::CAHDecDaisyAvc(v2, a1);
  }

  return v3;
}

CAHDec *CAHDecDaisyAvc::CAHDecDaisyAvc(CAHDec *a1, uint64_t a2)
{
  CAHDec::CAHDec(a1);
  *v4 = &unk_2886686F0;
  *(v4 + 256) = a2;
  *(v4 + 456) = 956 * *(a2 + 7388) + 182448;
  *(v4 + 8) = 2224;
  *(v4 + 16) = xmmword_27775BAD0;
  *(v4 + 32) = 1;
  *(v4 + 56) = a2;
  *(v4 + 13808) = 0u;
  *(v4 + 13824) = 0u;
  *(v4 + 13840) = 0u;
  *(v4 + 13856) = 0u;
  *(v4 + 13872) = 0u;
  *(v4 + 13888) = 0u;
  *(v4 + 13904) = 0u;
  *(v4 + 13920) = 0u;
  *(v4 + 13936) = 0u;
  *(v4 + 13952) = 0u;
  *(v4 + 13968) = 0u;
  bzero((v4 + 560), 0x3390uLL);
  return a1;
}

void CAHDecDaisyAvc::~CAHDecDaisyAvc(CAHDecDaisyAvc *this)
{
  *this = &unk_2886686F0;
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecDaisyAvc::~CAHDecDaisyAvc(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecDaisyAvc::init(CAHDecDaisyAvc *this)
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

uint64_t CAHDecDaisyAvc::initPicture(CAHDecDaisyAvc *this, int a2, __int16 a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = 956 * *(*(this + 32) + 7388) + 182448;
  *(this + 114) = v5;
  *(this + 13) = 0;
  v6 = *(this + 34);
  *(this + 33) = v6;
  if (v6)
  {
    bzero(v6, v5);
    v8 = *(this + *(this + 13) + 34);
    *(v8 + 16) = a2;
    *(v8 + 24) = 257;
    *(v8 + 26) = a3;
    bzero(*(this + 9), 48 * *(this + 17));
    result = 0;
    *(this + 16) = 0;
    *(this + 3447) = 0;
    *(this + 1731) = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "initPicture";
      v12 = 1024;
      v13 = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): decode buffer at index %d is NULL!\n", &v10, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t CAHDecDaisyAvc::populateSlices(CAHDecDaisyAvc *this, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = *(this + *(this + 13) + 34) + 2224;
    v5 = a2;
    do
    {
      CAHDecDaisyAvc::populateSliceRegisters(this, v4, v3++);
      v4 += 956;
    }

    while (v5 != v3);
  }

  return 0;
}

uint64_t CAHDecDaisyAvc::populateSliceRegisters(uint64_t a1, uint64_t a2, signed int a3)
{
  v3 = a3;
  v4 = 0;
  v97 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 256);
  v6 = *(v5 + 3504);
  v7 = *(v5 + 3192);
  v87 = *(v5 + 3184);
  v88 = *(v5 + 3500);
  v8 = *(v5 + 6952);
  v9 = *(v5 + 3208);
  v10 = *(v5 + 3200) + 1848 * a3;
  *(a2 + 4) = 0;
  v11 = 32 * (*(v10 + 1424) & 3);
  *(a2 + 4) = v11;
  if (*(v10 + 24) != 2)
  {
    v4 = (*(v10 + 63) & 0xF) << 11;
  }

  v12 = v4 | v11;
  *(a2 + 4) = v12;
  if (*(v10 + 24) == 1)
  {
    v13 = (*(v10 + 64) & 0xF) << 7;
  }

  else
  {
    v13 = 0;
  }

  v15 = v13 | v12;
  *(a2 + 4) = v15;
  if (*(v10 + 24) == 1)
  {
    v16 = (*(v10 + 61) == 0) << 15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 | v15 & 0x7FFF7FE0;
  *(a2 + 4) = v17;
  if (*(v10 + 24))
  {
    v18 = 0x20000;
  }

  else
  {
    v18 = 0x10000;
  }

  if (*(v10 + 24) == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  *(a2 + 4) = v19 | v17 & 0xFFFFFFE0;
  if (*(v10 + 24) != 1)
  {
    goto LABEL_20;
  }

  v20 = v9 + 13040 * a3 + 7224;
  *(v10 + 1832) = v20;
  if ((*(v9 + 13040 * a3 + 7227) & 1) != 0 || (v21 = *(v9 + 13040 * a3 + 7256), *(a1 + 4 * v21 + 464)))
  {
    v22 = 16;
  }

  else
  {
    if (!*(a1 + 13788))
    {
      *(a1 + 13848) = *(v9 + 13040 * a3 + 7264);
      *(a1 + 13840) = v21;
      *(a1 + 13788) = 1;
      *(a2 + 4) |= 0x40000u;
      v20 = *(v10 + 1832);
      if (!v20 || !*(a1 + 13788))
      {
        goto LABEL_20;
      }
    }

    v83 = *(v20 + 40);
    if (v83 == *(a1 + 13848))
    {
      goto LABEL_20;
    }

    *(a1 + 13848) = v83;
    *(a1 + 13840) = *(v20 + 32);
    v22 = 0x40000;
  }

  *(a2 + 4) |= v22;
LABEL_20:
  *(a2 + 920) = 0;
  *(a2 + 952) = 0;
  if (*(v10 + 24) == 1 && (*(a2 + 6) & 4) != 0)
  {
    v33 = *(*(v10 + 1832) + 32);
    *(a1 + 13788) = 1;
    v34 = *(a1 + 13780) * v33;
    v35 = 956 * a3;
    if (*(a1 + 13584) || *(a1 + 13736) || *(a1 + 13740))
    {
      v89 = v7;
      v36 = v6;
      v37 = v9;
      result = CAHDec::addToPatcherList(a1, (a1 + 13584), v35 + 3144, v34, 0xFFFFFFFFLL, 8, -256, 4);
      if (result)
      {
        return result;
      }

      v3 = a3;
      v9 = v37;
      v6 = v36;
      v7 = v89;
      if (*(a1 + 13584))
      {
        goto LABEL_41;
      }
    }

    if (*(a1 + 13736) || *(a1 + 13740))
    {
LABEL_41:
      result = CAHDec::addToPatcherList(a1, (a1 + 13584), v35 + 3176, v34, 0x3FFFFFFFFFFLL, 32, 1023, 4);
      if (result)
      {
        return result;
      }
    }
  }

  v85 = (v7 + 604 * v6);
  v86 = v3;
  *(a2 + 4) = *(a2 + 4) & 0x77FFFF | 0x2D000000;
  v23 = *(v10 + 24);
  if (v23 <= 1)
  {
    v24 = v5 + 6760;
    v25 = v9 + 13040 * a3;
    if (*(v25 + 13032))
    {
      v26 = 0;
      v27 = a2 + 8;
      v28 = v25 + 1416;
      v29 = MEMORY[0x277D86220];
      do
      {
        v30 = (16 * (v26 & 0xF)) | 0x2DC00000;
        *(v27 + 4 * v26) = v30;
        if (v8)
        {
          v31 = 0;
          while (*(*(v24 + 8 * v31) + 12) != *(v28 + 176 * v26 + 12))
          {
            if (v8 == ++v31)
            {
              goto LABEL_29;
            }
          }

          *(v27 + 4 * v26) = v31 & 0xF | v30;
        }

        else
        {
LABEL_29:
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(v28 + 176 * v26 + 32);
            *buf = 67109632;
            *v95 = v26;
            *&v95[4] = 1024;
            *&v95[6] = v32;
            LOWORD(v96[0]) = 1024;
            *(v96 + 2) = v8;
            _os_log_impl(&dword_277606000, v29, OS_LOG_TYPE_DEFAULT, "AppleAVD: Error: list-0 slice(%2d) RefIdx[%2d] not found in %d ref_pics!!\n", buf, 0x14u);
          }
        }

        ++v26;
      }

      while (v26 < *(v25 + 13032));
      v23 = *(v10 + 24);
    }

    else
    {
      LODWORD(v26) = 0;
    }

    if (v23 == 1 && *(v25 + 13036))
    {
      v40 = 0;
      v41 = a2 + 8;
      v42 = v25 + 7224;
      v43 = MEMORY[0x277D86220];
      do
      {
        v44 = (16 * (v40 & 0xF)) | 0x2DC00100;
        *(v41 + 4 * v26) = v44;
        if (v8)
        {
          v45 = 0;
          while (*(*(v24 + 8 * v45) + 12) != *(v42 + 176 * v40 + 12))
          {
            if (v8 == ++v45)
            {
              goto LABEL_51;
            }
          }

          *(v41 + 4 * v26) = v45 & 0xF | v44;
        }

        else
        {
LABEL_51:
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v46 = *(v42 + 176 * v40 + 32);
            *buf = 67109632;
            *v95 = v26;
            *&v95[4] = 1024;
            *&v95[6] = v46;
            LOWORD(v96[0]) = 1024;
            *(v96 + 2) = v8;
            _os_log_impl(&dword_277606000, v43, OS_LOG_TYPE_DEFAULT, "AppleAVD: Error: list-1 slice(%2d) RefIdx[%2d] not found in %d ref_pics!!\n", buf, 0x14u);
          }
        }

        LODWORD(v26) = v26 + 1;
        ++v40;
      }

      while (v40 < *(v25 + 13036));
    }
  }

  *(a2 + 136) = 0x2DD0000000000000;
  v47 = 87;
  if (*(v10 + 24) == 1)
  {
    v47 = 88;
  }

  v48 = ((v85[v47] & 3) << 6) | 0x2DD00000;
  *(a2 + 140) = v48;
  v49 = v48 & 0xFFFFFFC7 | (8 * (*(v10 + 376) & 7));
  *(a2 + 140) = v49;
  v50 = *(v87 + 2224 * v88 + 4);
  if (*(v87 + 2224 * v88 + 4))
  {
    v50 = *(v10 + 377) & 7;
  }

  v51 = v50 | v49;
  *(a2 + 140) = v51;
  v52 = *(v10 + 24);
  if (v52 != 1)
  {
    goto LABEL_139;
  }

  v53 = v85[88];
  if (v53 != 2)
  {
    goto LABEL_63;
  }

  *(a2 + 140) = v51 & 0x2DD000C0 | 0x2D;
  v52 = *(v10 + 24);
  if (v52 != 1)
  {
LABEL_139:
    if (v52 || !v85[87])
    {
      goto LABEL_83;
    }

    goto LABEL_67;
  }

  v53 = v85[88];
LABEL_63:
  if (v53 != 1)
  {
    goto LABEL_83;
  }

LABEL_67:
  v54 = 0;
  v55 = 0;
  v56 = a2 + 144;
  v57 = a2 + 528;
  do
  {
    if (*(v10 + 378 + v55))
    {
      v58 = ((v55 & 0xF) << 9) | 0x2DE04000;
      *(v56 + 4 * v54) = v58;
      *(v56 + 4 * v54) = v58 | *(v10 + 394 + 2 * v55) & 0x1FF;
      *(v57 + 4 * v54) = 770703360;
      *(v57 + 4 * v54++) = *(v10 + 426 + 2 * v55) | 0x2DF00000;
    }

    if (*(v10 + 458 + v55))
    {
      v59 = 0;
      v60 = 1;
      do
      {
        v61 = v60;
        v62 = (((v55 & 0xF) << 9) | (v59 << 14)) + 769687552;
        *(v56 + 4 * v54) = v62;
        *(v56 + 4 * v54) = v62 | *(v10 + 474 + 4 * v55 + 2 * v59) & 0x1FF;
        *(v57 + 4 * v54) = 770703360;
        *(v57 + 4 * v54++) = *(v10 + 538 + 4 * v55 + 2 * v59) | 0x2DF00000;
        v59 = 1;
        v60 = 0;
      }

      while ((v61 & 1) != 0);
    }

    ++v55;
  }

  while (v55 <= *(v10 + 63));
  if (*(v10 + 24) == 1)
  {
    v63 = 0;
    do
    {
      if (*(v10 + 602 + v63))
      {
        v64 = ((v63 & 0xF) << 9) + 769679360;
        *(v56 + 4 * v54) = v64;
        *(v56 + 4 * v54) = v64 | *(v10 + 618 + 2 * v63) & 0x1FF;
        *(v57 + 4 * v54) = 770703360;
        *(v57 + 4 * v54++) = *(v10 + 650 + 2 * v63) | 0x2DF00000;
      }

      if (*(v10 + 682 + v63))
      {
        v65 = 0;
        v66 = 1;
        do
        {
          v67 = v66;
          v68 = (((v63 & 0xF) << 9) | (v65 << 14)) + 769695744;
          *(v56 + 4 * v54) = v68;
          *(v56 + 4 * v54) = v68 | *(v10 + 698 + 4 * v63 + 2 * v65) & 0x1FF;
          *(v57 + 4 * v54) = 770703360;
          *(v57 + 4 * v54++) = *(v10 + 762 + 4 * v63 + 2 * v65) | 0x2DF00000;
          v65 = 1;
          v66 = 0;
        }

        while ((v67 & 1) != 0);
      }

      ++v63;
    }

    while (v63 <= *(v10 + 64));
  }

  *(a2 + 136) = v54;
LABEL_83:
  *(a2 + 912) = 0;
  *(a2 + 912) = (((v85[89] + *(v10 + 1425)) << 10) + 26624) & 0x1FC00 | 0x2D900000;
  *(a2 + 916) = 0;
  v69 = (*(v10 + 1428) == 0) << 17;
  *(a2 + 916) = v69;
  if (*(v10 + 1428) != 1)
  {
    v70 = v69 | 0x10000;
    *(a2 + 916) = v70;
    v71 = v70 | ((*(v10 + 1429) & 0xF) << 8);
    *(a2 + 916) = v71;
    v69 = v71 | ((*(v10 + 1430) & 0xF) << 12);
  }

  *(a2 + 916) = v69 | 0x2DA00000;
  v72 = *(v10 + 1436);
  if (v85[3])
  {
    v73 = 0;
    if ((v72 & 7) != 0)
    {
      *(v10 + 1436) = (v72 + 7) & 0xFFFFFFF8;
    }
  }

  else
  {
    v73 = *(v10 + 1436) & 7;
  }

  *(a2 + 924) = (v73 << 15) | 0x2D800000;
  v74 = *(a1 + 256);
  v75 = *(v74 + 626);
  v92 = 0;
  v93 = 0;
  if (!CAVDAvcDecoder::GetSDataMemInfo(v74, v86, &v93, &v92))
  {
    return 0xFFFFFFFFLL;
  }

  v76 = 956 * v86;
  v77 = v93;
  if (!*v93 && !*(v93 + 152) && !*(v93 + 156))
  {
    goto LABEL_99;
  }

  v78 = v92;
  if (HIDWORD(v92) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v95 = "populateSliceRegisters";
    *&v95[8] = 1024;
    v96[0] = 1747;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v78 = v92;
  }

  result = CAHDec::addToPatcherList(a1, v77, v76 + 3148, v78, 0x3FFFFFFFFFFLL, 32, 1023, 4);
  if (result)
  {
    return result;
  }

  v77 = v93;
  if (!*v93)
  {
LABEL_99:
    if (!*(v77 + 152) && !*(v77 + 156))
    {
LABEL_104:
      v80 = *(v10 + 16) - (*(v10 + 1436) >> 3);
      *(a2 + 936) = v80;
      if (*(v74 + 590) != 1)
      {
        return 0;
      }

      *(a2 + 944) = 0;
      v81 = *(v10 + 1840);
      if (*(v74 + 605))
      {
        result = 0;
        if (v80 < v81)
        {
          v81 = v80;
        }

        if (v73)
        {
          v82 = v81 == 0;
        }

        else
        {
          v82 = 0;
        }

        if (v82)
        {
          v81 = 1;
        }

        *(a2 + 948) = v75 & 0x10000 | v81;
      }

      else
      {
        v84 = 0;
        if ((v75 & 0x200000) != 0)
        {
          if (v73 && !*(v10 + 1840))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *v95 = "int CAHDecDaisyAvc::populateSliceRegisters(AvcSliceRegisters *, int)";
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: expect off_to_prot_data to be set when slice header is not byte aligned\n", buf, 0xCu);
              v80 = *(a2 + 936);
              v84 = *(a2 + 948) & 0x1F0000;
            }

            else
            {
              v84 = 0;
            }

            v81 = 1;
          }
        }

        else if (v73)
        {
          ++v81;
        }

        result = 0;
        if (v81 >= v80)
        {
          v81 = v80;
        }

        *(a2 + 948) = v84 & 0xFFDFFFFF | (v81 << 22) | v75 | (((v75 >> 20) & 1) << 21);
      }

      return result;
    }
  }

  v79 = v92;
  if (HIDWORD(v92) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v95 = "populateSliceRegisters";
    *&v95[8] = 1024;
    v96[0] = 1748;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v79 = v92;
  }

  result = CAHDec::addToPatcherList(a1, v77, v76 + 3156, v79, 0xFFFFFFFFLL, 0, -1, 4);
  if (!result)
  {
    goto LABEL_104;
  }

  return result;
}

uint64_t CAHDecDaisyAvc::updateCommonRegisters(CAHDecDaisyAvc *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

void CAHDecDaisyAvc::copyScalingList(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = 0;
  v8 = *a2 & 0xFEFFFFC0 | 0x1000000;
  *a2 = v8;
  do
  {
    v8 |= (*(a4 + v7) == 0) << v7;
    *a2 = v8;
    ++v7;
  }

  while (v7 != 6);
  v9 = v8 & 0xFFFFF03F;
  *a2 = v8 & 0xFFFFF03F;
  v10 = (a7 - 6);
  if (a7 > 6)
  {
    v11 = (a4 + 6);
    v12 = &dword_27775C390;
    do
    {
      v13 = *v11++;
      v14 = v13 == 0;
      v16 = *v12++;
      v15 = v16;
      v17 = v14;
      v9 |= ((v17 << v15) & 0x3F) << 6;
      *a2 = v9;
      --v10;
    }

    while (v10);
  }

  v18 = 0;
  v19 = (a5 + 1);
  v20 = a3;
  do
  {
    v21 = 0;
    v22 = v19;
    do
    {
      v23 = *(v20 + 4 * v21) & 0xFFFFFF | (*(v22 - 1) << 24);
      *(v20 + 4 * v21) = v23;
      v24 = v23 & 0xFF00FFFF | (*v22 << 16);
      *(v20 + 4 * v21) = v24;
      v25 = v24 & 0xFFFF00FF | (v22[1] << 8);
      *(v20 + 4 * v21) = v25;
      *(v20 + 4 * v21++) = v25 & 0xFFFFFF00 | v22[2];
      v22 += 4;
    }

    while (v21 != 4);
    ++v18;
    v20 += 16;
    v19 += 16;
  }

  while (v18 != 6);
  v26 = 0;
  v27 = a3 + 96;
  do
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = a6 + (dword_27775C3A8[v26] << 6);
    do
    {
      v32 = (v31 + (v29 & 0x20 | v30 & 4 | v28 & 0x18));
      v33 = *(v27 + v29) & 0xFFFFFF | (*v32 << 24);
      *(v27 + v29) = v33;
      v34 = v33 & 0xFF00FFFF | (v32[1] << 16);
      *(v27 + v29) = v34;
      v35 = v34 & 0xFFFF00FF | (v32[2] << 8);
      *(v27 + v29) = v35;
      *(v27 + v29) = v35 & 0xFFFFFF00 | v32[3];
      ++v30;
      v29 += 4;
      v28 += 8;
    }

    while (v29 != 64);
    ++v26;
    v27 += 64;
  }

  while (v26 != 6);
}

void CAHDecDaisyAvc::AvcSeqScalingListFallBack(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 9))
  {
    v2 = 0;
    v3 = 8;
    if (*(a2 + 4) == 3)
    {
      v3 = 12;
    }

    v4 = (a2 - 382);
    v5 = 18;
    while (v2 > 5)
    {
      if (*(a2 + v2 + 10))
      {
        if (*(a2 + v2 + 22) == 2)
        {
          if (v2 == 6 || (v2 & 0x7FFFFFFD) == 8)
          {
            v4[8] = avcDefaultIntraScalingList8x8;
            v4[9] = unk_27775C410;
            v10 = xmmword_27775C420;
            v11 = unk_27775C430;
          }

          else
          {
            v4[8] = avcDefaultInterScalingList8x8;
            v4[9] = unk_27775C3D0;
            v10 = xmmword_27775C3E0;
            v11 = unk_27775C3F0;
          }

          v4[10] = v10;
          v4[11] = v11;
        }

        goto LABEL_24;
      }

      if (v2 - 8 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v12 = v4[1];
        v4[8] = *v4;
        v4[9] = v12;
        v13 = v4[3];
        v4[10] = v4[2];
        v4[11] = v13;
        v8 = a2 + v2;
        v9 = *(a2 + v2 + 20);
LABEL_21:
        *(v8 + 22) = v9;
      }

LABEL_24:
      ++v2;
      v4 += 4;
      v5 += 16;
      if (v3 == v2)
      {
        return;
      }
    }

    if (*(a2 + v2 + 10))
    {
      v6 = 1;
    }

    else
    {
      v6 = v2 == 0;
    }

    if (v6 || v2 == 3)
    {
      goto LABEL_24;
    }

    *(a2 + v5 + 16) = *(a2 + v5);
    v8 = a2 + v2;
    v9 = *(a2 + v2 + 21);
    goto LABEL_21;
  }
}

void CAHDecDaisyAvc::AvcPicScalingListFallBack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 96))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 8;
    if (*(a2 + 4) == 3)
    {
      v6 = 12;
    }

    do
    {
      if (v5 > 5)
      {
        if (*(a3 + v5 + 97))
        {
          if (*(a3 + v5 + 109) == 2)
          {
            v8 = (a3 + v4 - 167);
            if (v5 == 6 || (v5 & 0x7FFFFFFD) == 8)
            {
              *v8 = avcDefaultIntraScalingList8x8;
              *(a3 + v4 - 151) = unk_27775C410;
              v9 = xmmword_27775C420;
              v10 = unk_27775C430;
            }

            else
            {
              *v8 = avcDefaultInterScalingList8x8;
              *(a3 + v4 - 151) = unk_27775C3D0;
              v9 = xmmword_27775C3E0;
              v10 = unk_27775C3F0;
            }

            *(a3 + v4 - 135) = v9;
            *(a3 + v4 - 119) = v10;
          }

          goto LABEL_29;
        }

        if (v5 - 8 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v11 = a3 + v4;
          *(v11 - 119) = *(a3 + v4 - 247);
          v12 = *(a3 + v4 - 279);
          *(v11 - 167) = *(a3 + v4 - 295);
          *(v11 - 151) = v12;
          *(v11 - 135) = *(a3 + v4 - 263);
          v13 = a3 + v5;
          v14 = *(a3 + v5 + 107);
LABEL_28:
          *(v13 + 109) = v14;
          goto LABEL_29;
        }

        if (*(a2 + 9))
        {
          v15 = a3 + v4;
          v16 = *(a2 + v4 - 254);
          v17 = *(a2 + v4 - 238);
          v18 = *(a2 + v4 - 222);
          *(v15 - 119) = *(a2 + v4 - 206);
          *(v15 - 135) = v18;
          *(v15 - 151) = v17;
          *(v15 - 167) = v16;
          goto LABEL_22;
        }
      }

      else
      {
        if (*(a3 + v5 + 97))
        {
          if ((*(a3 + v5 + 109) & 2) != 0)
          {
            if (v5 > 2)
            {
              v7 = avcDefaultInterScalingList4x4;
            }

            else
            {
              v7 = avcDefaultIntraScalingList4x4;
            }

            *(a3 + v3 + 121) = v7;
          }

          goto LABEL_29;
        }

        if (v5 && v5 != 3)
        {
          *(a3 + v3 + 121) = *(a3 + v3 + 105);
          v13 = a3 + v5;
          v14 = *(a3 + v5 + 108);
          goto LABEL_28;
        }

        if (*(a2 + 9))
        {
          *(a3 + v3 + 121) = *(a2 + v3 + 34);
LABEL_22:
          *(a3 + v5 + 109) = *(a2 + v5 + 22);
        }
      }

LABEL_29:
      ++v5;
      v4 += 64;
      v3 += 16;
    }

    while (v6 != v5);
  }
}

uint64_t CAHDecDaisyAvc::populateSequenceRegisters(CAHDecDaisyAvc *this)
{
  v2 = *(this + 32);
  v3 = *(this + 33);
  v4 = *(v2 + 3500);
  v5 = *(v2 + 3504);
  v6 = *(v2 + 3184);
  v7 = *(v2 + 3192);
  v8 = v6 + 2224 * v4;
  v3[10] = 0;
  LOWORD(v4) = *(v8 + 1558);
  v3[10] = (2 * (v4 & 0xFFF)) | 1;
  v3[10] = ((*(v8 + 1560) & 0xFFF) << 17) | (2 * (v4 & 0xFFF)) | 0x10001;
  v3[11] = 0;
  v9 = *(v8 + 1564) & 1;
  v3[11] = v9;
  v10 = v9 | ((*(v7 + 604 * v5 + 95) != 0) << 7) | 0x2800;
  v3[11] = v10;
  v11 = *(v8 + 4);
  if (*(v8 + 4))
  {
    v11 = (*(v8 + 7) & 0xF) << 15;
  }

  v12 = v11 | v10;
  v3[11] = v12;
  v13 = v12 & 0x7F87A881 | ((*(v8 + 6) & 0xF) << 19);
  v3[11] = v13;
  v14 = v13 & 0xFF7FFFFF | ((*(v8 + 5) & 1) << 23);
  v3[11] = v14;
  v3[11] = v14 & 0xFCFFFFFF | ((*(v8 + 4) & 3) << 24);
  if (*(v8 + 9))
  {
    if (*(v8 + 4) == 3)
    {
      v15 = 12;
    }

    else
    {
      v15 = 8;
    }

    CAHDecDaisyAvc::AvcSeqScalingListFallBack(this, v8);
    CAHDecDaisyAvc::copyScalingList(v16, v3 + 12, *(this + 33) + 1112, v8 + 22, v8 + 34, v8 + 130, v15);
  }

  return 0;
}

uint64_t CAHDecDaisyAvc::populatePictureRegisters(CAHDecDaisyAvc *this)
{
  v354 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(v2 + 3500);
  v4 = *(v2 + 3504);
  v5 = *(v2 + 3184);
  v6 = *(v2 + 3192);
  v333 = *(v2 + 2088);
  v338 = *(v2 + 3040);
  v336 = *(v2 + 3020);
  v337 = *(v2 + 2644);
  v7 = *(v2 + 8);
  v8 = *(v2 + 6904);
  v353[8] = *(v2 + 6888);
  v353[9] = v8;
  v9 = *(v2 + 6936);
  v353[10] = *(v2 + 6920);
  v353[11] = v9;
  v10 = *(v2 + 6840);
  v353[4] = *(v2 + 6824);
  v353[5] = v10;
  v11 = *(v2 + 6872);
  v353[6] = *(v2 + 6856);
  v353[7] = v11;
  v12 = *(v2 + 6776);
  v353[0] = *(v2 + 6760);
  v353[1] = v12;
  v13 = *(v2 + 6808);
  v353[2] = *(v2 + 6792);
  v353[3] = v13;
  v335 = *(v2 + 6952);
  v14 = (*(*v2 + 184))(v2);
  v15 = *(this + 32);
  if (v14)
  {
    v16 = *(v15 + 2756) != 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(this + 33);
  v18 = v5 + 2224 * v3;
  v19 = *(v15 + 2675);
  v20 = *(v15 + 2674);
  if (!(v19 | v20))
  {
    goto LABEL_45;
  }

  v21 = *(v18 + 6);
  if (v21 <= *(v18 + 7))
  {
    LOWORD(v21) = *(v18 + 7);
  }

  v22 = (v21 + 9) & 0x1FE;
  if (v22 == 8)
  {
    v24 = v7;
    v28 = 1;
    v26 = 8;
    if (!*(v15 + 2675))
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  v23 = *(v15 + 2672);
  v24 = v7;
  if (v22 != 12)
  {
    if (v22 == 10)
    {
      v25 = v23 == 0;
      if (v23)
      {
        v26 = 10;
      }

      else
      {
        v26 = 9;
      }

      v27 = 2;
      goto LABEL_18;
    }

    v26 = 27;
    v28 = 27;
    if (!v19)
    {
      goto LABEL_33;
    }

LABEL_26:
    if (*(v18 + 4) && (v19 == 2 && v26 == 8 || v19 == 3 && (v26 - 9) <= 1))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = "populatePictureRegisters";
      WORD2(buf[1]) = 1024;
      *(&buf[1] + 6) = v26;
      WORD1(buf[2]) = 1024;
      HIDWORD(buf[2]) = v19;
      v29 = MEMORY[0x277D86220];
      v30 = "AppleAVD: [ERROR] %s(): chroma compression format %d lossy level %d not supported\n";
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  v25 = v23 == 0;
  if (v23)
  {
    v26 = 12;
  }

  else
  {
    v26 = 11;
  }

  v27 = 4;
LABEL_18:
  if (v25)
  {
    v28 = v27;
  }

  else
  {
    v28 = v27 + 1;
  }

  if (v19)
  {
    goto LABEL_26;
  }

LABEL_33:
  v7 = v24;
  if (v20 && (v20 == 3 && v28 - 9 < 2 || v28 <= 0x1A && ((1 << v28) & 0x4C00000) != 0 && v20 <= 2))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    LODWORD(buf[0]) = 136315650;
    *(buf + 4) = "populatePictureRegisters";
    WORD2(buf[1]) = 1024;
    *(&buf[1] + 6) = v28;
    WORD1(buf[2]) = 1024;
    HIDWORD(buf[2]) = v20;
    v29 = MEMORY[0x277D86220];
    v30 = "AppleAVD: [ERROR] %s(): luma compression format %d lossy level %d not supported\n";
LABEL_41:
    v31 = buf;
    v32 = 24;
    goto LABEL_42;
  }

LABEL_45:
  v34 = *(this + 3445) * v338;
  v35 = (v6 + 604 * v4);
  *(v17 + 52) = 766509056;
  if (**(*(this + 32) + 3200) == 5)
  {
    v36 = 766517248;
  }

  else
  {
    v36 = 766509056;
  }

  if (v16)
  {
    v37 = 688;
  }

  else
  {
    v37 = 672;
  }

  if (v337)
  {
    v38 = 4160;
  }

  else
  {
    v38 = 64;
  }

  v39 = v38 & 0xFFFFFFF0 | ((v337 == 1) << 10) | v37 & 0xFFFFFFF0 | (4 * (v19 & 3)) | v20 & 3 | v36;
  *(v17 + 52) = v39;
  v40 = *(this + 32);
  v41 = v39 | ((v40[2652] & 1) << 19);
  *(v17 + 52) = v41;
  v42 = v41 & 0xFFFBFFFF | ((v40[2653] & 1) << 18);
  *(v17 + 52) = v42;
  *(v17 + 52) = v42 & 0xFFFDFFFF | ((v40[2654] & 1) << 17);
  *(v17 + 56) = 0x1000000;
  LODWORD(v40) = (16 * (*(v18 + 1558) & 0xFFF)) | 0xF;
  *(v17 + 60) = v40;
  v43 = v40 | (*(v18 + 1560) << 20) | 0xF0000;
  *(v17 + 64) = 0;
  *(v17 + 60) = v43;
  v44 = (*(v18 + 8) & 1) << 18;
  *(v17 + 68) = v44;
  v45 = v44 & 0xFFF7FFFF | ((v35[93] & 1) << 19);
  *(v17 + 68) = v45;
  v46 = v45 & 0xFFEFFFFF | ((v35[3] & 1) << 20);
  *(v17 + 68) = v46;
  *(v17 + 68) = v46 | ((**(*(this + 32) + 3200) != 5) << 21);
  LODWORD(v40) = *(v17 + 72) & 0xFFFFFC1F | (32 * (v35[91] & 0x1F));
  *(v17 + 72) = v40;
  *(v17 + 72) = v40 & 0xFFFFFFE0 | v35[601] & 0x1F;
  if (v35[96])
  {
    if (*(v18 + 4) == 3)
    {
      v47 = 12;
    }

    else
    {
      v47 = 8;
    }

    v48 = *(this + 33);
    CAHDecDaisyAvc::AvcPicScalingListFallBack(v14, v18, v35);
    CAHDecDaisyAvc::copyScalingList(v49, (v17 + 76), v48 + 1596, (v35 + 109), (v35 + 121), (v35 + 217), v47);
  }

  v50 = 0;
  *(v17 + 80) = *(this + 3450);
  *(v17 + 84) = *(this + 3451);
  *(v17 + 88) = 3145786;
  v51 = this + 9008;
  do
  {
    *(*(this + 33) + v50 + 92) = 0;
    v52 = *(this + 33) + v50;
    v53 = *(v52 + 92);
    *(v52 + 92) = 0;
    *(*(this + 33) + v50 + 92) ^= 0xFFFFFF00;
    v54 = *(this + 33) + v50;
    v55 = *(v54 + 92);
    *(v54 + 92) = v53;
    if (*v51 || *(v51 + 38) || *(v51 + 39))
    {
      result = CAHDec::addToPatcherList(this, v51, v50 + 92, 0, 0xFFFFFFFFLL, 8, v55, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + v50 + 152) = 0;
    *(*(this + 33) + v50 + 152) = *(*(this + 33) + v50 + 152) & 0x800001FF | (((*(this + 3444) >> 9) & 0x3FFFFF) << 9);
    *(*(this + 33) + v50 + 616) = 0;
    v56 = *(this + 33) + v50;
    v57 = *(v56 + 616);
    *(v56 + 616) = 0;
    *(*(this + 33) + v50 + 616) ^= 0x3FFu;
    v58 = *(this + 33) + v50;
    v59 = *(v58 + 616);
    *(v58 + 616) = v57;
    if (*v51 || *(v51 + 38) || *(v51 + 39))
    {
      result = CAHDec::addToPatcherList(this, v51, v50 + 616, 0, 0x3FFFFFFFFFFLL, 32, v59, 4);
      if (result)
      {
        return result;
      }
    }

    v50 += 4;
    v51 += 176;
  }

  while (v50 != 60);
  *(*(this + 33) + 212) = 0;
  *(*(this + 33) + 676) = 0;
  if ((*(v17 + 54) & 8) == 0)
  {
    goto LABEL_83;
  }

  v60 = *(this + 33);
  v61 = *(*(this + 32) + 2680);
  v350 = 0u;
  v351 = 0u;
  v348 = 0u;
  v349 = 0u;
  v346 = 0u;
  v347 = 0u;
  v344 = 0u;
  v345 = 0u;
  v343 = 0u;
  memset(buf, 0, sizeof(buf));
  v62 = (*(v60 + 16) & 0xF) << 9;
  buf[0] = v61;
  v63 = *(v60 + 212);
  *(v60 + 212) = 0;
  *(*(this + 33) + 212) ^= 0xFFFFFF00;
  v64 = *(this + 33);
  v65 = *(v64 + 212);
  *(v64 + 212) = v63;
  if (v61)
  {
    result = CAHDec::addToPatcherList(this, buf, 212, v62, 0xFFFFFFFFLL, 8, v65, 4);
    if (result)
    {
      return result;
    }

    if (buf[0])
    {
      v66 = 0;
    }

    else
    {
      v66 = DWORD2(v350) == 0;
    }

    LODWORD(v61) = !v66 || HIDWORD(v350) != 0;
  }

  *(*(this + 33) + 676) = 0;
  v68 = *(this + 33);
  v69 = *(v68 + 676);
  *(v68 + 676) = 0;
  *(*(this + 33) + 676) ^= 0x3FFu;
  v70 = *(this + 33);
  v71 = *(v70 + 676);
  *(v70 + 676) = v69;
  if (!v61 || (result = CAHDec::addToPatcherList(this, buf, 676, v62, 0x3FFFFFFFFFFLL, 32, v71, 4), !result))
  {
LABEL_83:
    v72 = 0;
    v73 = this + 11824;
    do
    {
      *(*(this + 33) + v72 + 216) = 0;
      v74 = *(this + 33) + v72;
      v75 = *(v74 + 216);
      *(v74 + 216) = 0;
      *(*(this + 33) + v72 + 216) ^= 0xFFFFFF00;
      v76 = *(this + 33) + v72;
      v77 = *(v76 + 216);
      *(v76 + 216) = v75;
      if (*v73 || *(v73 + 38) || *(v73 + 39))
      {
        result = CAHDec::addToPatcherList(this, v73, v72 + 216, 0, 0xFFFFFFFFLL, 8, v77, 4);
        if (result)
        {
          return result;
        }
      }

      *(*(this + 33) + v72 + 680) = 0;
      v78 = *(this + 33) + v72;
      v79 = *(v78 + 680);
      *(v78 + 680) = 0;
      *(*(this + 33) + v72 + 680) ^= 0x3FFu;
      v80 = *(this + 33) + v72;
      v81 = *(v80 + 680);
      *(v80 + 680) = v79;
      if (*v73 || *(v73 + 38) || *(v73 + 39))
      {
        result = CAHDec::addToPatcherList(this, v73, v72 + 680, 0, 0x3FFFFFFFFFFLL, 32, v81, 4);
        if (result)
        {
          return result;
        }
      }

      v72 += 4;
      v73 += 176;
    }

    while (v72 != 16);
    *(*(this + 33) + 232) = 0;
    v82 = *(this + 33);
    v83 = *(v82 + 232);
    *(v82 + 232) = 0;
    *(*(this + 33) + 232) ^= 0xFFFFFF00;
    v84 = *(this + 33);
    v85 = *(v84 + 232);
    *(v84 + 232) = v83;
    if (*(this + 1566) || *(this + 3170) || *(this + 3171))
    {
      result = CAHDec::addToPatcherList(this, this + 1566, 232, 0, 0xFFFFFFFFLL, 8, v85, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 696) = 0;
    v86 = *(this + 33);
    v87 = *(v86 + 696);
    *(v86 + 696) = 0;
    *(*(this + 33) + 696) ^= 0x3FFu;
    v88 = *(this + 33);
    v89 = *(v88 + 696);
    *(v88 + 696) = v87;
    if (*(this + 1566) || *(this + 3170) || *(this + 3171))
    {
      result = CAHDec::addToPatcherList(this, this + 1566, 696, 0, 0x3FFFFFFFFFFLL, 32, v89, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 236) = 0;
    v90 = *(this + 33);
    v91 = *(v90 + 236);
    *(v90 + 236) = 0;
    *(*(this + 33) + 236) ^= 0xFFFFFF00;
    v92 = *(this + 33);
    v93 = *(v92 + 236);
    *(v92 + 236) = v91;
    if (*(this + 1588) || *(this + 3214) || *(this + 3215))
    {
      result = CAHDec::addToPatcherList(this, this + 1588, 236, 0, 0xFFFFFFFFLL, 8, v93, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 700) = 0;
    v94 = *(this + 33);
    v95 = *(v94 + 700);
    *(v94 + 700) = 0;
    *(*(this + 33) + 700) ^= 0x3FFu;
    v96 = *(this + 33);
    v97 = *(v96 + 700);
    *(v96 + 700) = v95;
    if (*(this + 1588) || *(this + 3214) || *(this + 3215))
    {
      result = CAHDec::addToPatcherList(this, this + 1588, 700, 0, 0x3FFFFFFFFFFLL, 32, v97, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 240) = 0;
    v98 = *(this + 33);
    v99 = *(v98 + 240);
    *(v98 + 240) = 0;
    *(*(this + 33) + 240) ^= 0xFFFFFF00;
    v100 = *(this + 33);
    v101 = *(v100 + 240);
    *(v100 + 240) = v99;
    if (*(this + 1610) || *(this + 3258) || *(this + 3259))
    {
      result = CAHDec::addToPatcherList(this, this + 1610, 240, 0, 0xFFFFFFFFLL, 8, v101, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 704) = 0;
    v102 = *(this + 33);
    v103 = *(v102 + 704);
    *(v102 + 704) = 0;
    *(*(this + 33) + 704) ^= 0x3FFu;
    v104 = *(this + 33);
    v105 = *(v104 + 704);
    *(v104 + 704) = v103;
    if (*(this + 1610) || *(this + 3258) || *(this + 3259))
    {
      result = CAHDec::addToPatcherList(this, this + 1610, 704, 0, 0x3FFFFFFFFFFLL, 32, v105, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 244) = 0;
    v106 = *(this + 33);
    v107 = *(v106 + 244);
    *(v106 + 244) = 0;
    *(*(this + 33) + 244) ^= 0xFFFFFF00;
    v108 = *(this + 33);
    v109 = *(v108 + 244);
    *(v108 + 244) = v107;
    if (*(this + 1632) || *(this + 3302) || *(this + 3303))
    {
      result = CAHDec::addToPatcherList(this, this + 1632, 244, 0, 0xFFFFFFFFLL, 8, v109, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 708) = 0;
    v110 = *(this + 33);
    v111 = *(v110 + 708);
    *(v110 + 708) = 0;
    *(*(this + 33) + 708) ^= 0x3FFu;
    v112 = *(this + 33);
    v113 = *(v112 + 708);
    *(v112 + 708) = v111;
    if (*(this + 1632) || *(this + 3302) || *(this + 3303))
    {
      result = CAHDec::addToPatcherList(this, this + 1632, 708, 0, 0x3FFFFFFFFFFLL, 32, v113, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 248) = 0;
    v114 = *(this + 33);
    v115 = *(v114 + 248);
    *(v114 + 248) = 0;
    *(*(this + 33) + 248) ^= 0xFFFFFF00;
    v116 = *(this + 33);
    v117 = *(v116 + 248);
    *(v116 + 248) = v115;
    if (*(this + 1654) || *(this + 3346) || *(this + 3347))
    {
      result = CAHDec::addToPatcherList(this, this + 1654, 248, 0, 0xFFFFFFFFLL, 8, v117, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 712) = 0;
    v118 = *(this + 33);
    v119 = *(v118 + 712);
    *(v118 + 712) = 0;
    *(*(this + 33) + 712) ^= 0x3FFu;
    v120 = *(this + 33);
    v121 = *(v120 + 712);
    *(v120 + 712) = v119;
    if (*(this + 1654) || *(this + 3346) || *(this + 3347))
    {
      result = CAHDec::addToPatcherList(this, this + 1654, 712, 0, 0x3FFFFFFFFFFLL, 32, v121, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 252) = 0;
    *(*(this + 33) + 716) = 0;
    *(*(this + 33) + 256) = 0;
    v122 = *(this + 33);
    v123 = *(v122 + 256);
    *(v122 + 256) = 0;
    *(*(this + 33) + 256) ^= 0xFFFFFF00;
    v124 = *(this + 33);
    v125 = *(v124 + 256);
    *(v124 + 256) = v123;
    if (*(this + 1456) || *(this + 2950) || *(this + 2951))
    {
      result = CAHDec::addToPatcherList(this, this + 1456, 256, 0, 0xFFFFFFFFLL, 8, v125, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 720) = 0;
    v126 = *(this + 33);
    v127 = *(v126 + 720);
    *(v126 + 720) = 0;
    *(*(this + 33) + 720) ^= 0x3FFu;
    v128 = *(this + 33);
    v129 = *(v128 + 720);
    *(v128 + 720) = v127;
    if (*(this + 1456) || *(this + 2950) || *(this + 2951))
    {
      result = CAHDec::addToPatcherList(this, this + 1456, 720, 0, 0x3FFFFFFFFFFLL, 32, v129, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 260) = 0;
    v130 = *(this + 33);
    v131 = *(v130 + 260);
    *(v130 + 260) = 0;
    *(*(this + 33) + 260) ^= 0xFFFFFF00;
    v132 = *(this + 33);
    v133 = *(v132 + 260);
    *(v132 + 260) = v131;
    if (*(this + 1698) || *(this + 3434) || *(this + 3435))
    {
      result = CAHDec::addToPatcherList(this, this + 1698, 260, v34, 0xFFFFFFFFLL, 8, v133, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 724) = 0;
    v134 = *(this + 33);
    v135 = *(v134 + 724);
    *(v134 + 724) = 0;
    *(*(this + 33) + 724) ^= 0x3FFu;
    v136 = *(this + 33);
    v137 = *(v136 + 724);
    *(v136 + 724) = v135;
    if (*(this + 1698) || *(this + 3434) || *(this + 3435))
    {
      result = CAHDec::addToPatcherList(this, this + 1698, 724, v34, 0x3FFFFFFFFFFLL, 32, v137, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 264) = 0;
    v138 = *(this + 33);
    v139 = *(v138 + 264);
    *(v138 + 264) = 0;
    *(*(this + 33) + 264) ^= 0xFFFFFF80;
    v140 = *(this + 33);
    v141 = *(v140 + 264);
    *(v140 + 264) = v139;
    v143 = this + 176 * v338 + 560;
    if (*v143 || *(v143 + 38) || *(v143 + 39))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v338 + 70, 264, 0, 0xFFFFFFFFLL, 7, v141, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 728) = 0;
    v144 = *(this + 33);
    v145 = *(v144 + 728);
    *(v144 + 728) = 0;
    *(*(this + 33) + 728) ^= 0x3FFu;
    v146 = *(this + 33);
    v147 = *(v146 + 728);
    *(v146 + 728) = v145;
    if (*v143 || *(v143 + 38) || *(v143 + 39))
    {
      result = CAHDec::addToPatcherList(this, v143, 728, 0, 0x3FFFFFFFFFFLL, 32, v147, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 268) = 0;
    v148 = *(this + 33);
    v149 = *(v148 + 268);
    *(v148 + 268) = 0;
    *(*(this + 33) + 268) ^= 0xFFFFFF80;
    v150 = *(this + 33);
    v151 = *(v150 + 268);
    *(v150 + 268) = v149;
    v152 = (v333 + 8);
    if (*(v333 + 8) || *(v333 + 160) || *(v333 + 164))
    {
      result = CAHDec::addToPatcherList(this, (v333 + 8), 268, *(v333 + 60), 0xFFFFFFFFLL, 7, v151, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 732) = 0;
    v153 = *(this + 33);
    v154 = *(v153 + 732);
    *(v153 + 732) = 0;
    *(*(this + 33) + 732) ^= 0x3FFu;
    v155 = *(this + 33);
    v156 = *(v155 + 732);
    *(v155 + 732) = v154;
    if (*v152 || *(v333 + 160) || *(v333 + 164))
    {
      result = CAHDec::addToPatcherList(this, v152, 732, *(v333 + 60), 0x3FFFFFFFFFFLL, 32, v156, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 272) = 0;
    v157 = *(this + 33);
    v158 = *(v157 + 272);
    *(v157 + 272) = 0;
    *(*(this + 33) + 272) ^= 0xFFFFFF80;
    v159 = *(this + 33);
    v160 = *(v159 + 272);
    *(v159 + 272) = v158;
    v161 = this + 176 * v338 + 4784;
    if (*v161 || *(v161 + 38) || *(v161 + 39))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v338 + 598, 272, 0, 0xFFFFFFFFLL, 7, v160, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 736) = 0;
    v162 = *(this + 33);
    v163 = *(v162 + 736);
    *(v162 + 736) = 0;
    *(*(this + 33) + 736) ^= 0x3FFu;
    v164 = *(this + 33);
    v165 = *(v164 + 736);
    *(v164 + 736) = v163;
    if (*v161 || *(v161 + 38) || *(v161 + 39))
    {
      result = CAHDec::addToPatcherList(this, v161, 736, 0, 0x3FFFFFFFFFFLL, 32, v165, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 276) = 0;
    v166 = *(this + 33);
    v167 = *(v166 + 276);
    *(v166 + 276) = 0;
    *(*(this + 33) + 276) ^= 0xFFFFFF80;
    v168 = *(this + 33);
    v169 = *(v168 + 276);
    *(v168 + 276) = v167;
    if (*v152 || *(v333 + 160) || *(v333 + 164))
    {
      result = CAHDec::addToPatcherList(this, v152, 276, *(v333 + 64), 0xFFFFFFFFLL, 7, v169, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 740) = 0;
    v170 = *(this + 33);
    v171 = *(v170 + 740);
    *(v170 + 740) = 0;
    *(*(this + 33) + 740) ^= 0x3FFu;
    v172 = *(this + 33);
    v173 = *(v172 + 740);
    *(v172 + 740) = v171;
    if (*v152 || *(v333 + 160) || *(v333 + 164))
    {
      result = CAHDec::addToPatcherList(this, v152, 740, *(v333 + 64), 0x3FFFFFFFFFFLL, 32, v173, 4);
      if (result)
      {
        return result;
      }
    }

    if (*(*(this + 32) + 2648) == 1)
    {
      v174 = *(this + 33);
      v175 = *(v174 + 268);
      *(v174 + 268) = 0;
      *(*(this + 33) + 268) ^= 0xFFFFFF80;
      v176 = *(this + 33);
      v177 = *(v176 + 268);
      *(v176 + 268) = v175;
      if (*v152 || *(v333 + 160) || *(v333 + 164))
      {
        result = CAHDec::addToPatcherList(this, v152, 268, *(v333 + 60), 0xFFFFFFFFLL, 7, v177, 4);
        if (result)
        {
          return result;
        }
      }

      v178 = *(this + 33);
      v179 = *(v178 + 732);
      *(v178 + 732) = 0;
      *(*(this + 33) + 732) ^= 0x3FFu;
      v180 = *(this + 33);
      v181 = *(v180 + 732);
      *(v180 + 732) = v179;
      if (*v152 || *(v333 + 160) || *(v333 + 164))
      {
        result = CAHDec::addToPatcherList(this, v152, 732, *(v333 + 60), 0x3FFFFFFFFFFLL, 32, v181, 4);
        if (result)
        {
          return result;
        }
      }

      v182 = *(this + 33);
      v183 = *(v182 + 276);
      *(v182 + 276) = 0;
      *(*(this + 33) + 276) ^= 0xFFFFFF80;
      v184 = *(this + 33);
      v185 = *(v184 + 276);
      *(v184 + 276) = v183;
      if (*v152 || *(v333 + 160) || *(v333 + 164))
      {
        result = CAHDec::addToPatcherList(this, v152, 276, *(v333 + 64), 0xFFFFFFFFLL, 7, v185, 4);
        if (result)
        {
          return result;
        }
      }

      v186 = *(this + 33);
      v187 = *(v186 + 740);
      *(v186 + 740) = 0;
      *(*(this + 33) + 740) ^= 0x3FFu;
      v188 = *(this + 33);
      v189 = *(v188 + 740);
      *(v188 + 740) = v187;
      if (*v152 || *(v333 + 160) || *(v333 + 164))
      {
        result = CAHDec::addToPatcherList(this, v152, 740, *(v333 + 64), 0x3FFFFFFFFFFLL, 32, v189, 4);
        if (result)
        {
          return result;
        }
      }

      v190 = *(this + 33);
      v191 = *(v190 + 264);
      *(v190 + 264) = 0;
      *(*(this + 33) + 264) ^= 0xFFFFFF80;
      v192 = *(this + 33);
      v193 = *(v192 + 264);
      *(v192 + 264) = v191;
      if (*v152 || *(v333 + 160) || *(v333 + 164))
      {
        result = CAHDec::addToPatcherList(this, v152, 264, *(v333 + 72), 0xFFFFFFFFLL, 7, v193, 4);
        if (result)
        {
          return result;
        }
      }

      v194 = *(this + 33);
      v195 = *(v194 + 728);
      *(v194 + 728) = 0;
      *(*(this + 33) + 728) ^= 0x3FFu;
      v196 = *(this + 33);
      v197 = *(v196 + 728);
      *(v196 + 728) = v195;
      if (*v152 || *(v333 + 160) || *(v333 + 164))
      {
        result = CAHDec::addToPatcherList(this, v152, 728, *(v333 + 72), 0x3FFFFFFFFFFLL, 32, v197, 4);
        if (result)
        {
          return result;
        }
      }

      v198 = *(this + 33);
      v199 = *(v198 + 272);
      *(v198 + 272) = 0;
      *(*(this + 33) + 272) ^= 0xFFFFFF80;
      v200 = *(this + 33);
      v201 = *(v200 + 272);
      *(v200 + 272) = v199;
      if (*v152 || *(v333 + 160) || *(v333 + 164))
      {
        result = CAHDec::addToPatcherList(this, v152, 272, *(v333 + 76), 0xFFFFFFFFLL, 7, v201, 4);
        if (result)
        {
          return result;
        }
      }

      v202 = *(this + 33);
      v203 = *(v202 + 736);
      *(v202 + 736) = 0;
      *(*(this + 33) + 736) ^= 0x3FFu;
      v204 = *(this + 33);
      v205 = *(v204 + 736);
      *(v204 + 736) = v203;
      if (*v152 || *(v333 + 160) || *(v333 + 164))
      {
        result = CAHDec::addToPatcherList(this, v152, 736, *(v333 + 76), 0x3FFFFFFFFFFLL, 32, v205, 4);
        if (result)
        {
          return result;
        }
      }
    }

    if (*(v17 + 52) & 0x2000 | v335)
    {
      *(this + v338 + 116) = 0;
      *(*(this + 33) + 280) = 0;
      if (v335)
      {
        v339 = 0;
        if (v16)
        {
          v206 = 0x2000000;
        }

        else
        {
          v206 = 0;
        }

        v334 = v206;
        do
        {
          v207 = *(v353 + v339);
          v208 = *(v207 + 32);
          *(*(this + 33) + 4 * v339 + 280) = 0;
          *(*(this + 33) + 4 * v339 + 280) = *(*(this + 33) + 4 * v339 + 280) & 0xFFFFFFF | ((v335 << 28) - 0x10000000);
          *(*(this + 33) + 4 * v339 + 280) &= 0xF3FFFFFF;
          *(*(this + 33) + 4 * v339 + 280) = *(*(this + 33) + 4 * v339 + 280) & 0xFDFFFFFF | v334;
          *(*(this + 33) + 4 * v339 + 280) |= 0x1000000u;
          v209 = v336 - *(v207 + 12);
          v210 = v209 & 0x1FFFF;
          if (v209 < -32768)
          {
            v210 = 98304;
          }

          if (v209 < 0x8000)
          {
            v211 = v210;
          }

          else
          {
            v211 = 0x7FFF;
          }

          *(*(this + 33) + 4 * v339 + 280) = *(*(this + 33) + 4 * v339 + 280) & 0xFFFE0000 | v211;
          *(*(this + 33) + 4 * v339 + 280) = *(*(this + 33) + 4 * v339 + 280) & 0xFFFDFFFF | ((*(v207 + 1) & 1) << 17);
          v212 = *(this + 32);
          if (*(v207 + 28) == 1)
          {
            v351 = 0u;
            v352 = 0u;
            v349 = 0u;
            v350 = 0u;
            v347 = 0u;
            v348 = 0u;
            v345 = 0u;
            v346 = 0u;
            v343 = 0u;
            v344 = 0u;
            memset(buf, 0, sizeof(buf));
            DPB = AVC_RLM::getDPB(*(v212 + 2992), buf);
            if (DPB < 1)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                return 0xFFFFFFFFLL;
              }

              v340 = 136315138;
              v341 = "populatePictureRegisters";
              v29 = MEMORY[0x277D86220];
              v30 = "AppleAVD: ERROR: %s: No ref pics found!\n";
            }

            else
            {
              v214 = DPB;
              while (v214 >= 1)
              {
                v207 = buf[--v214];
                if (!*(v207 + 28))
                {
                  v208 = *(v207 + 32);
                  v212 = *(this + 32);
                  *(v212 + 2702) = 1;
                  goto LABEL_232;
                }
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                return 0xFFFFFFFFLL;
              }

              v340 = 136315138;
              v341 = "populatePictureRegisters";
              v29 = MEMORY[0x277D86220];
              v30 = "AppleAVD: ERROR: %s: No non-existing ref frames found!\n";
            }

            v31 = &v340;
            v32 = 12;
            goto LABEL_42;
          }

LABEL_232:
          if ((*(*v212 + 184))(v212))
          {
            v215 = *(this + 32);
            if (*(v215 + 2756))
            {
              buf[0] = 0;
              if ((CAVDAvcDecoder::decodeGetRenderTargetRef(v215, v208, *(v207 + 56), *(v207 + 64), buf) & 1) == 0)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v340) = 0;
                  v29 = MEMORY[0x277D86220];
                  v30 = "AppleAVD: decodeGetRenderTargetRef RETURNED ERROR\n";
                  v31 = &v340;
                  v32 = 2;
LABEL_42:
                  _os_log_impl(&dword_277606000, v29, OS_LOG_TYPE_DEFAULT, v30, v31, v32);
                }

                return 0xFFFFFFFFLL;
              }

              *(v207 + 40) = buf[0] + 8;
            }
          }

          *(*(this + 33) + 4 * v339 + 344) = 0;
          v216 = 4 * v339;
          v217 = *(this + 33) + 4 * v339;
          v218 = *(v217 + 344);
          *(v217 + 344) = 0;
          *(*(this + 33) + 4 * v339 + 344) ^= 0xFFFFFF80;
          v219 = *(this + 33) + 4 * v339;
          v220 = *(v219 + 344);
          *(v219 + 344) = v218;
          v142 = this + 560;
          v221 = this + 176 * v208 + 560;
          if (*v221 || *(v221 + 38) || *(v221 + 39))
          {
            result = CAHDec::addToPatcherList(this, &v142[176 * v208], v216 + 344, 0, 0xFFFFFFFFLL, 7, v220, 4);
            if (result)
            {
              return result;
            }
          }

          *(*(this + 33) + 4 * v339 + 744) = 0;
          v222 = *(this + 33) + 4 * v339;
          v223 = *(v222 + 744);
          *(v222 + 744) = 0;
          *(*(this + 33) + 4 * v339 + 744) ^= 0x3FFu;
          v224 = *(this + 33) + 4 * v339;
          v225 = *(v224 + 744);
          *(v224 + 744) = v223;
          if (*v221 || *(v221 + 38) || *(v221 + 39))
          {
            result = CAHDec::addToPatcherList(this, &v142[176 * v208], v216 + 744, 0, 0x3FFFFFFFFFFLL, 32, v225, 4);
            if (result)
            {
              return result;
            }
          }

          *(*(this + 33) + 4 * v339 + 408) = 0;
          v226 = *(this + 33) + 4 * v339;
          v227 = *(v226 + 408);
          *(v226 + 408) = 0;
          *(*(this + 33) + 4 * v339 + 408) ^= 0xFFFFFF80;
          v228 = *(this + 33) + 4 * v339;
          v229 = *(v228 + 408);
          *(v228 + 408) = v227;
          v230 = *(v207 + 40);
          if (*v230 || *(v230 + 152) || *(v230 + 156))
          {
            result = CAHDec::addToPatcherList(this, v230, v216 + 408, *(v230 + 52), 0xFFFFFFFFLL, 7, v229, 4);
            if (result)
            {
              return result;
            }
          }

          *(*(this + 33) + 4 * v339 + 808) = 0;
          v231 = *(this + 33) + 4 * v339;
          v232 = *(v231 + 808);
          *(v231 + 808) = 0;
          *(*(this + 33) + 4 * v339 + 808) ^= 0x3FFu;
          v233 = *(this + 33) + 4 * v339;
          v234 = *(v233 + 808);
          *(v233 + 808) = v232;
          v235 = *(v207 + 40);
          if (*v235 || *(v235 + 152) || *(v235 + 156))
          {
            result = CAHDec::addToPatcherList(this, v235, v216 + 808, *(v235 + 52), 0x3FFFFFFFFFFLL, 32, v234, 4);
            if (result)
            {
              return result;
            }
          }

          *(*(this + 33) + 4 * v339 + 472) = 0;
          v236 = *(this + 33) + 4 * v339;
          v237 = *(v236 + 472);
          *(v236 + 472) = 0;
          *(*(this + 33) + 4 * v339 + 472) ^= 0xFFFFFF80;
          v238 = *(this + 33) + 4 * v339;
          v239 = *(v238 + 472);
          *(v238 + 472) = v237;
          v240 = this + 176 * v208 + 4784;
          if (*v240 || *(v240 + 38) || *(v240 + 39))
          {
            result = CAHDec::addToPatcherList(this, v240, v216 + 472, 0, 0xFFFFFFFFLL, 7, v239, 4);
            if (result)
            {
              return result;
            }
          }

          *(*(this + 33) + 4 * v339 + 872) = 0;
          v241 = *(this + 33) + 4 * v339;
          v242 = *(v241 + 872);
          *(v241 + 872) = 0;
          *(*(this + 33) + 4 * v339 + 872) ^= 0x3FFu;
          v243 = *(this + 33) + 4 * v339;
          v244 = *(v243 + 872);
          *(v243 + 872) = v242;
          if (*v240 || *(v240 + 38) || *(v240 + 39))
          {
            result = CAHDec::addToPatcherList(this, v240, v216 + 872, 0, 0x3FFFFFFFFFFLL, 32, v244, 4);
            if (result)
            {
              return result;
            }
          }

          *(*(this + 33) + 4 * v339 + 536) = 0;
          v245 = *(this + 33) + 4 * v339;
          v246 = *(v245 + 536);
          *(v245 + 536) = 0;
          *(*(this + 33) + 4 * v339 + 536) ^= 0xFFFFFF80;
          v247 = *(this + 33) + 4 * v339;
          v248 = *(v247 + 536);
          *(v247 + 536) = v246;
          v249 = *(v207 + 40);
          if (*v249 || *(v249 + 152) || *(v249 + 156))
          {
            result = CAHDec::addToPatcherList(this, v249, v216 + 536, *(v249 + 56), 0xFFFFFFFFLL, 7, v248, 4);
            if (result)
            {
              return result;
            }
          }

          *(*(this + 33) + 4 * v339 + 936) = 0;
          v250 = *(this + 33) + 4 * v339;
          v251 = *(v250 + 936);
          *(v250 + 936) = 0;
          *(*(this + 33) + 4 * v339 + 936) ^= 0x3FFu;
          v252 = *(this + 33) + 4 * v339;
          v253 = *(v252 + 936);
          *(v252 + 936) = v251;
          v254 = *(v207 + 40);
          if (*v254 || *(v254 + 152) || *(v254 + 156))
          {
            result = CAHDec::addToPatcherList(this, v254, v216 + 936, *(v254 + 56), 0x3FFFFFFFFFFLL, 32, v253, 4);
            if (result)
            {
              return result;
            }
          }

          if (*(*(this + 32) + 2648) == 1)
          {
            v255 = *(this + 33) + 4 * v339;
            v256 = *(v255 + 408);
            *(v255 + 408) = 0;
            *(*(this + 33) + 4 * v339 + 408) ^= 0xFFFFFF80;
            v257 = *(this + 33) + 4 * v339;
            v258 = *(v257 + 408);
            *(v257 + 408) = v256;
            v259 = *(v207 + 40);
            if (*v259 || *(v259 + 152) || *(v259 + 156))
            {
              result = CAHDec::addToPatcherList(this, v259, v216 + 408, *(v259 + 52), 0xFFFFFFFFLL, 7, v258, 4);
              if (result)
              {
                return result;
              }
            }

            v260 = *(this + 33) + 4 * v339;
            v261 = *(v260 + 808);
            *(v260 + 808) = 0;
            *(*(this + 33) + 4 * v339 + 808) ^= 0x3FFu;
            v262 = *(this + 33) + 4 * v339;
            v263 = *(v262 + 808);
            *(v262 + 808) = v261;
            v264 = *(v207 + 40);
            if (*v264 || *(v264 + 152) || *(v264 + 156))
            {
              result = CAHDec::addToPatcherList(this, v264, v216 + 808, *(v264 + 52), 0x3FFFFFFFFFFLL, 32, v263, 4);
              if (result)
              {
                return result;
              }
            }

            v265 = *(this + 33) + 4 * v339;
            v266 = *(v265 + 536);
            *(v265 + 536) = 0;
            *(*(this + 33) + 4 * v339 + 536) ^= 0xFFFFFF80;
            v267 = *(this + 33) + 4 * v339;
            v268 = *(v267 + 536);
            *(v267 + 536) = v266;
            v269 = *(v207 + 40);
            if (*v269 || *(v269 + 152) || *(v269 + 156))
            {
              result = CAHDec::addToPatcherList(this, v269, v216 + 536, *(v269 + 56), 0xFFFFFFFFLL, 7, v268, 4);
              if (result)
              {
                return result;
              }
            }

            v270 = *(this + 33) + 4 * v339;
            v271 = *(v270 + 936);
            *(v270 + 936) = 0;
            *(*(this + 33) + 4 * v339 + 936) ^= 0x3FFu;
            v272 = *(this + 33) + 4 * v339;
            v273 = *(v272 + 936);
            *(v272 + 936) = v271;
            v274 = *(v207 + 40);
            if (*v274 || *(v274 + 152) || *(v274 + 156))
            {
              result = CAHDec::addToPatcherList(this, v274, v216 + 936, *(v274 + 56), 0x3FFFFFFFFFFLL, 32, v273, 4);
              if (result)
              {
                return result;
              }
            }

            v275 = *(this + 33) + 4 * v339;
            v276 = *(v275 + 344);
            *(v275 + 344) = 0;
            *(*(this + 33) + 4 * v339 + 344) ^= 0xFFFFFF80;
            v277 = *(this + 33) + 4 * v339;
            v278 = *(v277 + 344);
            *(v277 + 344) = v276;
            v279 = *(v207 + 40);
            if (*v279 || *(v279 + 152) || *(v279 + 156))
            {
              result = CAHDec::addToPatcherList(this, v279, v216 + 344, *(v279 + 64), 0xFFFFFFFFLL, 7, v278, 4);
              if (result)
              {
                return result;
              }
            }

            v280 = *(this + 33) + 4 * v339;
            v281 = *(v280 + 744);
            *(v280 + 744) = 0;
            *(*(this + 33) + 4 * v339 + 744) ^= 0x3FFu;
            v282 = *(this + 33) + 4 * v339;
            v283 = *(v282 + 744);
            *(v282 + 744) = v281;
            v284 = *(v207 + 40);
            if (*v284 || *(v284 + 152) || *(v284 + 156))
            {
              result = CAHDec::addToPatcherList(this, v284, v216 + 744, *(v284 + 64), 0x3FFFFFFFFFFLL, 32, v283, 4);
              if (result)
              {
                return result;
              }
            }

            v285 = *(this + 33) + 4 * v339;
            v286 = *(v285 + 472);
            *(v285 + 472) = 0;
            *(*(this + 33) + 4 * v339 + 472) ^= 0xFFFFFF80;
            v287 = *(this + 33) + 4 * v339;
            v288 = *(v287 + 472);
            *(v287 + 472) = v286;
            v289 = *(v207 + 40);
            if (*v289 || *(v289 + 152) || *(v289 + 156))
            {
              result = CAHDec::addToPatcherList(this, v289, v216 + 472, *(v289 + 68), 0xFFFFFFFFLL, 7, v288, 4);
              if (result)
              {
                return result;
              }
            }

            v290 = *(this + 33) + 4 * v339;
            v291 = *(v290 + 872);
            *(v290 + 872) = 0;
            *(*(this + 33) + 4 * v339 + 872) ^= 0x3FFu;
            v292 = *(this + 33) + 4 * v339;
            v293 = *(v292 + 872);
            *(v292 + 872) = v291;
            v294 = *(v207 + 40);
            if (*v294 || *(v294 + 152) || *(v294 + 156))
            {
              result = CAHDec::addToPatcherList(this, v294, v216 + 872, *(v294 + 68), 0x3FFFFFFFFFFLL, 32, v293, 4);
              if (result)
              {
                return result;
              }
            }
          }

          ++v339;
        }

        while (v339 != v335);
      }
    }

    else
    {
      *(v17 + 52) |= 0x2000u;
      *(this + v338 + 116) = 1;
      *(*(this + 33) + 280) = 0;
    }

    *(*(this + 33) + 600) = 0;
    *(*(this + 33) + 1000) = 0;
    *(*(this + 33) + 604) = 0;
    *(*(this + 33) + 1004) = 0;
    *(*(this + 33) + 608) = 0;
    *(*(this + 33) + 612) = 0;
    if (v337)
    {
      v295 = *(this + 32);
      v296 = *(v295 + 2892);
      if (*(v295 + 2892))
      {
        v297 = *(v295 + 2904);
        v296 = *(v295 + 2908);
      }

      else
      {
        v297 = 0;
      }

      v298 = *(v295 + 3544);
      v299 = *(v298 + 52);
      v300 = v299 + v297;
      if (__CFADD__(v299, v297))
      {
        v301 = 1;
      }

      else
      {
        v302 = *(v298 + 56);
        v303 = v302 + v296;
        if (!__CFADD__(v302, v296))
        {
          v304 = *(this + 33);
          v305 = *(v304 + 600);
          *(v304 + 600) = 0;
          *(*(this + 33) + 600) ^= 0xFFFFFFC0;
          v306 = *(this + 33);
          v307 = *(v306 + 600);
          *(v306 + 600) = v305;
          v308 = *(*(this + 32) + 3544);
          if (*v308 || *(v308 + 152) || *(v308 + 156))
          {
            result = CAHDec::addToPatcherList(this, v308, 600, v300, 0xFFFFFFFFLL, 6, v307, 4);
            if (result)
            {
              return result;
            }
          }

          v309 = *(this + 33);
          v310 = *(v309 + 1000);
          *(v309 + 1000) = 0;
          *(*(this + 33) + 1000) ^= 0x3FFu;
          v311 = *(this + 33);
          v312 = *(v311 + 1000);
          *(v311 + 1000) = v310;
          v313 = *(*(this + 32) + 3544);
          if (*v313 || *(v313 + 152) || *(v313 + 156))
          {
            result = CAHDec::addToPatcherList(this, v313, 1000, v300, 0x3FFFFFFFFFFLL, 32, v312, 4);
            if (result)
            {
              return result;
            }
          }

          v314 = *(this + 33);
          v315 = *(v314 + 604);
          *(v314 + 604) = 0;
          *(*(this + 33) + 604) ^= 0xFFFFFFC0;
          v316 = *(this + 33);
          v317 = *(v316 + 604);
          *(v316 + 604) = v315;
          v318 = *(*(this + 32) + 3544);
          if (*v318 || *(v318 + 152) || *(v318 + 156))
          {
            result = CAHDec::addToPatcherList(this, v318, 604, v303, 0xFFFFFFFFLL, 6, v317, 4);
            if (result)
            {
              return result;
            }
          }

          v319 = *(this + 33);
          v320 = *(v319 + 1004);
          *(v319 + 1004) = 0;
          *(*(this + 33) + 1004) ^= 0x3FFu;
          v321 = *(this + 33);
          v322 = *(v321 + 1004);
          *(v321 + 1004) = v320;
          v323 = *(*(this + 32) + 3544);
          if (*v323 || *(v323 + 152) || *(v323 + 156))
          {
            result = CAHDec::addToPatcherList(this, v323, 1004, v303, 0x3FFFFFFFFFFLL, 32, v322, 4);
            if (result)
            {
              return result;
            }
          }

          if (v7)
          {
            *(*(this + 33) + 608) = *(*(this + 33) + 608) & 0xFFFC003F | (((*(*(*(this + 32) + 3544) + 76) >> 6) & 0xFFF) << 6);
            v324 = (*(*(this + 32) + 3544) + 80);
          }

          else
          {
            if (CAHDecIxoraAvc::getSWRStride(this, *(v17 + 84) - *(v17 + 80) + 1, *(v18 + 6), *(v18 + 7), *(v18 + 2212)))
            {
              return 0xFFFFFFFFLL;
            }

            *(*(this + 33) + 608) = *(*(this + 33) + 608) & 0xFFFC003F | (((*(this + 3448) >> 6) & 0xFFF) << 6);
            v324 = (this + 13796);
          }

          *(*(this + 33) + 612) = *(*(this + 33) + 612) & 0xFFF8003F | (((*v324 >> 6) & 0x1FFF) << 6);
          goto LABEL_342;
        }

        v301 = 2;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "populatePictureRegisters";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = v301;
        v29 = MEMORY[0x277D86220];
        v30 = "AppleAVD: %s(): failKind = %d";
        v31 = buf;
        v32 = 18;
        goto LABEL_42;
      }

      return 0xFFFFFFFFLL;
    }

LABEL_342:
    v325 = *(this + 32);
    if (*(v325 + 2360) != 1)
    {
      return 0;
    }

    v326 = *(this + 33);
    *(v326 + 1104) = *(v326 + 1104) & 0xFFFFFFFE | *(v325 + 2508) & 1;
    if (*(v325 + 2508))
    {
      *(v326 + 2080) = 0x10000000;
      *(v326 + 2084) = *(v325 + 2368);
      *(v326 + 2096) = 0;
      *(v326 + 2088) = 0;
      *(v326 + 2100) = *(v325 + 2372);
      v327 = *(v325 + 2404);
      *(v326 + 2116) = *(v325 + 2388);
      *(v326 + 2132) = v327;
    }

    *(*(this + 33) + 1104) = *(*(this + 33) + 1104) & 0xFFFFFFFD | (2 * (*(v325 + 2512) & 1));
    if (*(v325 + 2512))
    {
      *(v326 + 2148) = 0;
      v328 = *(v325 + 2424);
      *(v326 + 2148) = (*(v325 + 2424) & 1) << 22;
      v329 = ((*(v325 + 2420) & 1) << 23) | ((v328 & 1) << 22) | 0x20000000;
      *(v326 + 2148) = v329;
      if (!*(v325 + 2364))
      {
        ++v329;
      }

      *(v326 + 2148) = v329;
      v330 = *(v325 + 2428);
      v331 = *(v325 + 2460);
      *(v326 + 2168) = *(v325 + 2444);
      *(v326 + 2184) = v331;
      *(v326 + 2152) = v330;
    }

    *(*(this + 33) + 1104) = *(*(this + 33) + 1104) & 0xFFFFFFFB | (4 * (*(v325 + 2516) & 1));
    *(*(this + 33) + 1104) = *(*(this + 33) + 1104) & 0xFFFFFFF7 | (8 * (*(v325 + 2520) & 1));
    *(*(this + 33) + 1104) = *(*(this + 33) + 1104) & 0xFFFFFFEF | (16 * (*(v325 + 2524) & 1));
    *(v326 + 2204) = 0;
    v332 = *(v325 + 2476) == 2 ? 805306368 : 813694976;
    *(v326 + 2204) = v332;
    memcpy((v326 + 2208), (v325 + 2480), 4 * *(v325 + 2476));
    if (*(v325 + 2516))
    {
      result = 0;
      *(v325 + 2516) = 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}