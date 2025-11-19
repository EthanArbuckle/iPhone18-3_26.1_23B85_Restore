uint64_t CAHDecDahliaLgh::populateAvdWork(CAHDecDahliaLgh *this)
{
  v56 = *MEMORY[0x277D85DE8];
  v1 = *(this + 33);
  v2 = *(*(this + 32) + 17800);
  v40 = *(v2 + 16);
  v44 = 0;
  v45 = 0;
  v3 = *(v2 + 312);
  if (!v3)
  {
    LOWORD(v7) = 0;
    goto LABEL_44;
  }

  v41 = 0;
  v5 = 0;
  LODWORD(v6) = 0;
  v7 = 0;
  v8 = v1 + 3812;
  v9 = *(v2 + 316);
  v10 = 2786;
  v11 = v9;
  v39 = v8;
  while (1)
  {
    v38 = v10;
    if (v11)
    {
      break;
    }

LABEL_41:
    v10 = v38 + 1792;
    if (++v41 >= v3)
    {
      v1 = *(this + 33);
LABEL_44:
      result = 0;
      *(v1 + 26) = v7;
      *(v1 + 32) = 3812;
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
      goto LABEL_40;
    }

    *(v8 + 4) = v7;
    *(v8 + 6) = 0;
    *(v8 + 10) = v5;
    if (!CAVDAvxDecoder::GetTileMemInfo(v13, v40 + *(v15 - 6), &v45, &v44))
    {
      return 0xFFFFFFFFLL;
    }

    v42 = v5;
    v43 = v7;
    v16 = 36 * v6;
    v17 = v45;
    if (*v45 || *(v45 + 152) || *(v45 + 156))
    {
      v18 = v44;
      if (HIDWORD(v44) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v47 = "populateAvdWork";
        v48 = 1024;
        v49 = 1058;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v18 = v44;
      }

      result = CAHDec::addToPatcherList(this, v17, v16 + 3830, v18, 0xFFFFFFFFFLL, 32, -1, 2);
      if (result)
      {
        return result;
      }

      v17 = v45;
      if (*v45)
      {
        goto LABEL_17;
      }
    }

    if (*(v17 + 152) || *(v17 + 156))
    {
LABEL_17:
      v20 = v44;
      if (HIDWORD(v44) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v47 = "populateAvdWork";
        v48 = 1024;
        v49 = 1059;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v20 = v44;
      }

      result = CAHDec::addToPatcherList(this, v17, v16 + 3832, v20, 0xFFFFFFFFLL, 0, -1, 4);
      if (result)
      {
        return result;
      }
    }

    v21 = *(v8 + 18);
    if (*(v8 + 18) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v22 = v44 + *(v45 + 16);
      *buf = 136316162;
      v47 = "populateAvdWork";
      v48 = 1024;
      v49 = v41;
      v50 = 1024;
      v51 = v12;
      v52 = 1024;
      v53 = v21;
      v54 = 2048;
      v55 = v22;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): [%4d, %4d] w->dataAddrHi = %08x, from %llx", buf, 0x28u);
    }

    v23 = v14 + v10;
    *(v8 + 24) = *(v14 + v10 - 10);
    v24 = *(v15 - 26);
    v25 = v24 + 7;
    if (v24 >= 0)
    {
      v25 = *(v15 - 26);
    }

    v26 = *(v23 - 18);
    *(v8 + 28) = (v25 << 13) & 0xFFFF0000 | (v26 / 8);
    v27 = *(v23 - 22);
    v29 = v27 - 1;
    v28 = v27 < 1;
    v30 = v27 + 6;
    if (!v28)
    {
      v30 = v29;
    }

    v31 = (v30 << 13) & 0xFFFF0000;
    v32 = *(v23 - 14);
    v33 = v32 - 1;
    v28 = v32 < 1;
    v34 = v32 + 6;
    if (!v28)
    {
      v34 = v33;
    }

    *(v8 + 32) = v31 | (v34 >> 3);
    if (v24 + v26)
    {
      v35 = 4;
    }

    else
    {
      v35 = 5;
    }

    *(v8 + 12) = v35;
    v3 = *(v2 + 312);
    v9 = *(v2 + 316);
    if (v12 == v9 && v41 == v3)
    {
      v37 = 5;
    }

    else
    {
      v37 = 4;
    }

    *(v8 + 14) = v37;
    v5 = v42 + 1;
    v7 = v43 + 1;
    v8 += 36;
    v6 = 0x8E38E38E38E38E39 * ((v8 - v39) >> 2);
LABEL_40:
    ++v12;
    v10 += 28;
    v11 = v9;
    if (v12 >= v9)
    {
      goto LABEL_41;
    }
  }
}

uint64_t CAHDecDahliaLgh::allocWorkBuf_SPS(CAHDecDahliaLgh *this, int *a2)
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
        v37 = 1292;
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
    v37 = 1297;
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
        v37 = 1276;
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
    v37 = 1281;
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

uint64_t CAHDecDahliaLgh::allocWorkBuf_PPS(CAHDecDahliaLgh *this, void *a2, void *a3, void *a4)
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
        v26 = 1373;
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
        v26 = 1376;
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
        v26 = 1382;
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
        v26 = 1388;
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
        v26 = 1396;
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
      v26 = 1404;
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
    v26 = 1410;
    v27 = 2080;
    v28 = "AZLeftPix";
    v16 = MEMORY[0x277D86220];
    goto LABEL_34;
  }

  return result;
}

uint64_t CAHDecDahliaLgh::freeWorkBuf_SPS(CAHDecDahliaLgh *this)
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

uint64_t *CAHDecDahliaLgh::freeWorkBuf_PPS(uint64_t *this, void *a2)
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

uint64_t CAHDecDahliaLgh::setVPInstrFifo(uint64_t this, int a2)
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

uint64_t createCactusHevcDecoder(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "createCactusHevcDecoder";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Cactus AVD is not supported in this AppleAVD driver!!!", &v2, 0xCu);
  }

  return 0;
}

void HEVC_RBSP::releaseScanOrder(HEVC_RBSP *this)
{
  for (i = 0; i != 4; ++i)
  {
    for (j = 8; j != 32; j += 8)
    {
      v4 = *(this + j);
      if (v4)
      {
        free(v4);
        *(this + j) = 0;
      }
    }

    this = (this + 24);
  }
}

void HEVC_RBSP::~HEVC_RBSP(HEVC_RBSP *this)
{
  *this = &unk_2886653C8;
  HEVC_RBSP::releaseScanOrder(this);
}

{
  *this = &unk_2886653C8;
  HEVC_RBSP::releaseScanOrder(this);

  JUMPOUT(0x277CAEC20);
}

BOOL HEVC_RBSP::more_rbsp_data(int8x8_t *this)
{
  v1 = vaddlv_u8(vcnt_s8(this[19])) & 0x78;
  if (!*&this[19])
  {
    v1 = 0;
  }

  return this[14].i32[0] + v1 + 8 * (this[20].i32[0] + this[17].i32[0] - this[15].i32[0]) + 32 > 8;
}

uint64_t HEVC_RBSP::initVPSExtension(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 4448);
  v4 = *(v3 + 512);
  v5 = *(v3 + 520);
  v6 = v3 + 2810;
  LODWORD(v7) = *(a2 + 12);
  do
  {
    v8 = (v6 + 16 * v2);
    if (v2)
    {
      v9 = -1;
    }

    else
    {
      v9 = 0;
    }

    v10 = v4 + 28 * v2;
    *(v10 + 26) = v9;
    *(v10 + 18) = 0;
    *(v10 + 4) = 0;
    *(v10 + 25) = 0;
    *v10 = 0;
    v11 = (v7 + 1);
    result = *(v5 + 8 * v2) + 5;
    do
    {
      *(result - 3) = 0xFFFFFFFF0000FFFFLL;
      *(result + 5) = -1;
      *(result - 5) = 7;
      result += 14;
      --v11;
    }

    while (v11);
    *v8 = 0;
    v8[1] = 0;
    v7 = *(a2 + 12);
  }

  while (v2++ < v7);
  return result;
}

uint64_t HEVC_RBSP::parseVPSextension(uint64_t a1, uint64_t a2)
{
  v222 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  if (v3 != 1 || *(a2 + 9) != 1)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    v29 = *(a2 + 9);
    *buf = 67109376;
    *v213 = v3;
    *&v213[4] = 1024;
    *&v213[6] = v29;
    v26 = MEMORY[0x277D86220];
    v27 = "AppleAVD: ERROR : vps base layer %d, available %d";
LABEL_28:
    v28 = 14;
LABEL_38:
    _os_log_impl(&dword_277606000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, v28);
    return 0xFFFFFFFFLL;
  }

  v5 = *(a2 + 4448);
  v6 = malloc_type_calloc(0x1CuLL, (*(a2 + 12) + 1), 0x1000040685FEA37uLL);
  *(v5 + 512) = v6;
  if (!v6)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 0;
    v26 = MEMORY[0x277D86220];
    v27 = "AppleAVD: ERROR: vpsext->vps_layers bad alloc ";
    goto LABEL_37;
  }

  v7 = malloc_type_calloc(8uLL, (*(a2 + 12) + 1), 0x2004093837F09uLL);
  *(v5 + 520) = v7;
  if (!v7)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 0;
    v26 = MEMORY[0x277D86220];
    v27 = "AppleAVD: ERROR: vpsext->vps_layers_2d bad alloc ";
    goto LABEL_37;
  }

  v8 = 0;
  LODWORD(v9) = *(a2 + 12);
  do
  {
    v10 = malloc_type_calloc(0xEuLL, (v9 + 1), 0x1000040BA4C5CDDuLL);
    *(*(v5 + 520) + 8 * v8) = v10;
    if (!*(*(v5 + 520) + 8 * v8))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      *buf = 0;
      v26 = MEMORY[0x277D86220];
      v27 = "AppleAVD: ERROR: vpsext->vps_layers_2d[i] bad alloc ";
      goto LABEL_37;
    }

    v9 = *(a2 + 12);
    v134 = v8++ >= v9;
  }

  while (!v134);
  HEVC_RBSP::initVPSExtension(v10, a2);
  if (*(a2 + 12) && *(a2 + 8))
  {
    v11 = malloc_type_calloc(0xDF8uLL, 1uLL, 0x1000040A5E72E2BuLL);
    *v5 = v11;
    if (!v11)
    {
      return 0xFFFFFFFFLL;
    }

    HEVC_RBSP::parseProfileTierLevel(a1, v11, 0, *(a2 + 16));
  }

  v12 = *(a1 + 104);
  ++*(a1 + 164);
  v13 = v12 >> 63;
  HEVC_RBSP::flush_bits(a1, 1);
  v14 = 0;
  *(v5 + 544) = v13;
  *(v5 + 760) = 0;
  do
  {
    v15 = *(a1 + 104);
    ++*(a1 + 164);
    v16 = v15 >> 63;
    HEVC_RBSP::flush_bits(a1, 1);
    *(v5 + 545 + v14) = v16;
    v17 = *(v5 + 760) + v16;
    *(v5 + 760) = v17;
    ++v14;
  }

  while (v14 != 16);
  if (*(v5 + 544))
  {
    v18 = v17 == 0;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 0;
    v26 = MEMORY[0x277D86220];
    v27 = "AppleAVD: ERROR: vpsext->vps_splitting_flag && vpsext->vps_num_scalability_types == 0 ";
    goto LABEL_37;
  }

  if (*(v5 + 544) < v17)
  {
    v19 = 0;
    do
    {
      v20 = *(a1 + 104);
      *(a1 + 164) += 3;
      v21 = v20 >> 61;
      HEVC_RBSP::flush_bits(a1, 3);
      *(v5 + 561 + v19++) = v21;
    }

    while (*(v5 + 760) - *(v5 + 544) > v19);
  }

  v22 = *(a1 + 104);
  ++*(a1 + 164);
  v23 = v22 >> 63;
  v24 = HEVC_RBSP::flush_bits(a1, 1);
  *(v5 + 577) = v23;
  v25 = *(a2 + 12);
  if (v25 > 0x3F)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      *v213 = "parseVPSextension";
      *&v213[8] = 1024;
      v214 = 690;
      v215 = 2080;
      *v216 = "vps->vps_max_layers_minus1";
      *&v216[8] = 1024;
      v217 = v25;
      v218 = 1024;
      v219 = 0;
      v220 = 1024;
      v221 = 63;
      v26 = MEMORY[0x277D86220];
      v27 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
      goto LABEL_25;
    }

    return 0xFFFFFFFFLL;
  }

  if (v25)
  {
    v31 = 1;
    v32 = 1;
    do
    {
      if (*(v5 + 577))
      {
        v33 = *(a1 + 104);
        *(a1 + 164) += 6;
        v34 = v33 >> 58;
        v24 = HEVC_RBSP::flush_bits(a1, 6);
        v35 = *(v5 + 512);
        v36 = v32;
        *(v35 + 28 * v32 + 26) = v34;
        v37 = *(v35 + 28 * v31 - 2);
        if (v34 <= v37 || *(a2 + 4376) < v34)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return 0xFFFFFFFFLL;
          }

          *buf = 67109376;
          *v213 = v34;
          *&v213[4] = 1024;
          *&v213[6] = v37;
          v26 = MEMORY[0x277D86220];
          v27 = "AppleAVD: ERROR : vps->vps_layer_id_in_nuh[i] %d, vps->vps_layer_id_in_nuh[i-1] %d";
          goto LABEL_28;
        }
      }

      else
      {
        v36 = v32;
        *(*(v5 + 512) + 28 * v32 + 26) = v32;
        if (v32 >= 0x40u)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316418;
            *v213 = "parseVPSextension";
            *&v213[8] = 1024;
            v214 = 709;
            v215 = 2080;
            *v216 = "vpsext->vps_layers[i].vps_layer_id_in_nuh";
            *&v216[8] = 1024;
            v217 = v32;
            v218 = 1024;
            v219 = 0;
            v220 = 1024;
            v221 = 63;
            v26 = MEMORY[0x277D86220];
            v27 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
            goto LABEL_25;
          }

          return 0xFFFFFFFFLL;
        }

        LOBYTE(v34) = v32;
      }

      *(v5 + 580 + 2 * v34) = v32;
      v38 = *(v5 + 760);
      if (v38)
      {
        v39 = 0;
        v40 = v5 + 2810 + 16 * v36;
        do
        {
          if (!*(v5 + 544))
          {
            v41 = *(v5 + 561 + v39);
            v42 = *(a1 + 108);
            *(a1 + 164) += v41 + 1;
            v43 = v42 >> ~v41;
            v24 = HEVC_RBSP::flush_bits(a1, v41 + 1);
            *(v40 + v39) = v43;
            v38 = *(v5 + 760);
          }

          ++v39;
        }

        while (v39 < v38);
      }

      v31 = ++v32;
    }

    while (*(a2 + 12) >= v32);
  }

  if (!HEVC_RBSP::calcVPSNumViews(v24, a2))
  {
    return 0xFFFFFFFFLL;
  }

  v44 = *(a1 + 104);
  *(a1 + 164) += 4;
  v45 = v44 >> 60;
  v46 = HEVC_RBSP::flush_bits(a1, 4);
  *(v5 + 578) = v45;
  v47 = *(v5 + 3834);
  if (v47 >= 0x41)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      *v213 = "parseVPSextension";
      *&v213[8] = 1024;
      v214 = 733;
      v215 = 2080;
      *v216 = "vpsext->vps_num_views";
      *&v216[8] = 1024;
      v217 = v47;
      v218 = 1024;
      v219 = 0;
      v220 = 1024;
      v221 = 64;
      v26 = MEMORY[0x277D86220];
      v27 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
      goto LABEL_25;
    }

    return 0xFFFFFFFFLL;
  }

  if (v45)
  {
    if (*(v5 + 3834))
    {
      v64 = 0;
      v65 = 0;
      do
      {
        v66 = *(v5 + 578);
        v67 = *(a1 + 108);
        *(a1 + 164) += v66;
        v68 = v67 >> -v66;
        v46 = HEVC_RBSP::flush_bits(a1, v66);
        *(*(v5 + 512) + v64) = v68;
        ++v65;
        v64 += 28;
      }

      while (v65 < *(v5 + 3834));
    }
  }

  else if (*(v5 + 3834))
  {
    v48 = (v47 + 15) & 0xF0;
    v49 = vdupq_n_s64(v47 - 1);
    v50 = xmmword_27775CC30;
    v51 = xmmword_27775CC40;
    v52 = xmmword_27775CC50;
    v53 = xmmword_27775CC60;
    v54 = xmmword_27775CC70;
    v55 = xmmword_27775CC80;
    v56 = xmmword_27775BCE0;
    v57 = xmmword_27775BCD0;
    v58 = (*(v5 + 512) + 224);
    v59 = vdupq_n_s64(0x10uLL);
    do
    {
      v60 = vmovn_s64(vcgeq_u64(v49, v57));
      if (vuzp1_s8(vuzp1_s16(v60, *v49.i8), *v49.i8).u8[0])
      {
        *(v58 - 224) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v60, *&v49), *&v49).i8[1])
      {
        *(v58 - 196) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v49, vmovn_s64(vcgeq_u64(v49, *&v56))), *&v49).i8[2])
      {
        *(v58 - 168) = 0;
        *(v58 - 140) = 0;
      }

      v61 = vmovn_s64(vcgeq_u64(v49, v55));
      if (vuzp1_s8(*&v49, vuzp1_s16(v61, *&v49)).i32[1])
      {
        *(v58 - 112) = 0;
      }

      if (vuzp1_s8(*&v49, vuzp1_s16(v61, *&v49)).i8[5])
      {
        *(v58 - 84) = 0;
      }

      if (vuzp1_s8(*&v49, vuzp1_s16(*&v49, vmovn_s64(vcgeq_u64(v49, *&v54)))).i8[6])
      {
        *(v58 - 56) = 0;
        *(v58 - 28) = 0;
      }

      v62 = vmovn_s64(vcgeq_u64(v49, v53));
      if (vuzp1_s8(vuzp1_s16(v62, *v49.i8), *v49.i8).u8[0])
      {
        *v58 = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v62, *&v49), *&v49).i8[1])
      {
        v58[28] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v49, vmovn_s64(vcgeq_u64(v49, *&v52))), *&v49).i8[2])
      {
        v58[56] = 0;
        v58[84] = 0;
      }

      v63 = vmovn_s64(vcgeq_u64(v49, v51));
      if (vuzp1_s8(*&v49, vuzp1_s16(v63, *&v49)).i32[1])
      {
        v58[112] = 0;
      }

      if (vuzp1_s8(*&v49, vuzp1_s16(v63, *&v49)).i8[5])
      {
        v58[140] = 0;
      }

      if (vuzp1_s8(*&v49, vuzp1_s16(*&v49, vmovn_s64(vcgeq_u64(v49, *&v50)))).i8[6])
      {
        v58[168] = 0;
        v58[196] = 0;
      }

      v55 = vaddq_s64(v55, v59);
      v56 = vaddq_s64(v56, v59);
      v57 = vaddq_s64(v57, v59);
      v54 = vaddq_s64(v54, v59);
      v53 = vaddq_s64(v53, v59);
      v52 = vaddq_s64(v52, v59);
      v51 = vaddq_s64(v51, v59);
      v58 += 448;
      v50 = vaddq_s64(v50, v59);
      v48 -= 16;
    }

    while (v48);
  }

  v69 = 0;
  do
  {
    v70 = v69;
    if (v69)
    {
      v71 = v69;
      v72 = 4;
      do
      {
        v73 = *(a1 + 104);
        ++*(a1 + 164);
        v74 = v73 >> 63;
        v46 = HEVC_RBSP::flush_bits(a1, 1);
        *(*(*(v5 + 520) + 8 * v70) + v72) = v74;
        v72 += 14;
        --v71;
      }

      while (v71);
    }

    v69 = v70 + 1;
  }

  while (*(a2 + 12) >= (v70 + 1));
  v75 = HEVC_RBSP::calcRefLayers(v46, a2);
  *(v5 + 3838) = 0;
  if (*(v5 + 3836) > 1u)
  {
    v75 = HEVC_RBSP::ue_v(a1);
    *(v5 + 3838) = v75;
    if ((v75 & 0xFC00) != 0)
    {
      v76 = v75;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        *v213 = "parseVPSextension";
        *&v213[8] = 1024;
        v214 = 766;
        v215 = 2080;
        *v216 = "vpsext->vps_num_add_layer_sets";
        *&v216[8] = 1024;
        v217 = v76;
        v218 = 1024;
        v219 = 0;
        v220 = 1024;
        v221 = 1023;
        v26 = MEMORY[0x277D86220];
        v27 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
        goto LABEL_25;
      }

      return 0xFFFFFFFFLL;
    }
  }

  if (!HEVC_RBSP::calcLayerSetLayerIdList(v75, a2))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 0;
    v26 = MEMORY[0x277D86220];
    v27 = "AppleAVD: ERROR: calcLayerSetLayerIdList ";
LABEL_37:
    v28 = 2;
    goto LABEL_38;
  }

  v77 = malloc_type_calloc(8uLL, *(v5 + 3838), 0x10040436913F5uLL);
  *(v5 + 3840) = v77;
  if (!v77)
  {
    return 0xFFFFFFFFLL;
  }

  LOWORD(v78) = *(v5 + 3838);
  if (v78)
  {
    v79 = 0;
    do
    {
      v80 = malloc_type_calloc(2uLL, (*(a2 + 12) + 1), 0x1000040BDFB0063uLL);
      *(*(v5 + 3840) + 8 * v79) = v80;
      if (!*(*(v5 + 3840) + 8 * v79))
      {
        return 0xFFFFFFFFLL;
      }

      ++v79;
      v78 = *(v5 + 3838);
    }

    while (v79 < v78);
    if (*(v5 + 3838))
    {
      v81 = 0;
      do
      {
        if (*(v5 + 3836) >= 2u)
        {
          v82 = *(v5 + 512);
          v83 = 44;
          v84 = 1;
          do
          {
            v85 = *(v82 + v83);
            v86 = 32 - __clz(v85);
            if (v85)
            {
              v87 = v86;
            }

            else
            {
              v87 = 0;
            }

            v88 = *(a1 + 108);
            *(a1 + 164) += v87;
            v89 = v88 >> -v87;
            v80 = HEVC_RBSP::flush_bits(a1, v87);
            *(*(*(v5 + 3840) + 8 * v81) + 2 * v84) = v89;
            v82 = *(v5 + 512);
            v90 = *(v82 + v83);
            if (v89 > v90)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316418;
                *v213 = "parseVPSextension";
                *&v213[8] = 1024;
                v214 = 800;
                v215 = 2080;
                *v216 = "vpsext->vps_highest_layer_idx_plus1[i][j]";
                *&v216[8] = 1024;
                v217 = v89;
                v218 = 1024;
                v219 = 0;
                v220 = 1024;
                v221 = v90;
                v26 = MEMORY[0x277D86220];
                v27 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
                goto LABEL_25;
              }

              return 0xFFFFFFFFLL;
            }

            ++v84;
            v83 += 28;
          }

          while (v84 < *(v5 + 3836));
        }

        LOBYTE(v80) = HEVC_RBSP::calcAddLayerSetLayerIdList(v80, a2, v81);
        if (v80)
        {
          return 0xFFFFFFFFLL;
        }

        ++v81;
        v78 = *(v5 + 3838);
      }

      while (v81 < v78);
    }
  }

  *(v5 + 3864) = *(a2 + 4380) + v78 + 1;
  v91 = *(a1 + 104);
  ++*(a1 + 164);
  HEVC_RBSP::flush_bits(a1, 1);
  *(v5 + 712) = v91 < 0;
  if (v91 < 0)
  {
    v96 = 0;
    do
    {
      v97 = *(a1 + 104);
      *(a1 + 164) += 3;
      v98 = v97 >> 61;
      HEVC_RBSP::flush_bits(a1, 3);
      *(*(v5 + 512) + 28 * v96 + 24) = v98;
      v99 = *(a2 + 16);
      if (v99 < v98)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          *v213 = "parseVPSextension";
          *&v213[8] = 1024;
          v214 = 817;
          v215 = 2080;
          *v216 = "vpsext->vps_layers[i].vps_sub_layers_vps_max_minus1";
          *&v216[8] = 1024;
          v217 = v98;
          v218 = 1024;
          v219 = 0;
          v220 = 1024;
          v221 = v99;
          v26 = MEMORY[0x277D86220];
          v27 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
          goto LABEL_25;
        }

        return 0xFFFFFFFFLL;
      }

      ++v96;
    }

    while (*(a2 + 12) >= v96);
  }

  else
  {
    v92 = 0;
    v93 = *(a2 + 12);
    v94 = *(a2 + 16);
    v95 = *(v5 + 512);
    do
    {
      *(v95 + 28 * v92++ + 24) = v94;
    }

    while (v93 >= v92);
  }

  v100 = *(a1 + 104);
  ++*(a1 + 164);
  HEVC_RBSP::flush_bits(a1, 1);
  *(v5 + 713) = v100 < 0;
  if (v100 < 0)
  {
    v101 = *(a2 + 12);
    if (v101)
    {
      v102 = 0;
      do
      {
        v103 = v102 + 1;
        if (v101 >= (v102 + 1))
        {
          v104 = v102;
          v105 = *(v5 + 520);
          v106 = v103;
          do
          {
            v107 = v106;
            if (*(*(v105 + 8 * v106) + 14 * v104 + 4))
            {
              v108 = *(a1 + 104);
              *(a1 + 164) += 3;
              v109 = v108 >> 61;
              HEVC_RBSP::flush_bits(a1, 3);
              v105 = *(v5 + 520);
              *(*(v105 + 8 * v104) + 14 * v107) = v109;
              v101 = *(a2 + 12);
            }

            v106 = v107 + 1;
          }

          while (v101 >= (v107 + 1));
        }

        v102 = v103;
      }

      while (v101 > v103);
    }
  }

  v110 = *(a1 + 104);
  ++*(a1 + 164);
  HEVC_RBSP::flush_bits(a1, 1);
  *(v5 + 714) = v110 < 0;
  v111 = HEVC_RBSP::ue_v(a1);
  v112 = v111;
  *(v5 + 708) = v111;
  if (v111 >= 0x40)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      *v213 = "parseVPSextension";
      *&v213[8] = 1024;
      v214 = 843;
      v215 = 2080;
      *v216 = "vpsext->vps_num_profile_tier_level_minus1";
      *&v216[8] = 1024;
      v217 = v112;
      v218 = 1024;
      v219 = 0;
      v220 = 1024;
      v221 = 63;
      v26 = MEMORY[0x277D86220];
      v27 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
      goto LABEL_25;
    }

    return 0xFFFFFFFFLL;
  }

  if (v111 <= 1 && *(a2 + 12))
  {
    return 0xFFFFFFFFLL;
  }

  v113 = malloc_type_calloc(1uLL, v111 + 1, 0x100004077774924uLL);
  *(v5 + 720) = v113;
  if (!v113)
  {
    return 0xFFFFFFFFLL;
  }

  v114 = 1;
  if (*(a2 + 12))
  {
    if (*(a2 + 9))
    {
      v114 = 2;
    }

    else
    {
      v114 = 1;
    }
  }

  if (*(v5 + 708) >= v114)
  {
    do
    {
      v115 = *(a1 + 104);
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      *(*(v5 + 720) + v114) = v115 < 0;
      v116 = malloc_type_calloc(0xDF8uLL, 1uLL, 0x1000040A5E72E2BuLL);
      *(v5 + 8 * v114) = v116;
      if (!v116)
      {
        return 0xFFFFFFFFLL;
      }

      v113 = HEVC_RBSP::parseProfileTierLevel(a1, v116, *(*(v5 + 720) + v114++), *(a2 + 16));
    }

    while (*(v5 + 708) >= v114);
  }

  *(v5 + 728) = 0;
  v117 = *(v5 + 3864);
  if (v117 < 2)
  {
    v120 = 0;
  }

  else
  {
    v118 = HEVC_RBSP::ue_v(a1);
    *(v5 + 728) = v118;
    if ((v118 & 0xFC00) != 0)
    {
      v119 = v118;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        *v213 = "parseVPSextension";
        *&v213[8] = 1024;
        v214 = 880;
        v215 = 2080;
        *v216 = "vpsext->vps_num_add_olss";
        *&v216[8] = 1024;
        v217 = v119;
        v218 = 1024;
        v219 = 0;
        v220 = 1024;
        v221 = 1023;
        v26 = MEMORY[0x277D86220];
        v27 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
        goto LABEL_25;
      }

      return 0xFFFFFFFFLL;
    }

    v121 = *(a1 + 104);
    *(a1 + 164) += 2;
    v122 = v121 >> 62;
    v113 = HEVC_RBSP::flush_bits(a1, 2);
    if (v122 == 3)
    {
      v123 = 2;
    }

    else
    {
      v123 = v122;
    }

    *(v5 + 730) = v123;
    v120 = *(v5 + 728);
    LOWORD(v117) = *(v5 + 3864);
  }

  v124 = v117 + v120;
  *(v5 + 3866) = v117 + v120;
  if ((v117 + v120) >= 0xC01u)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      *v213 = "parseVPSextension";
      *&v213[8] = 1024;
      v214 = 886;
      v215 = 2080;
      *v216 = "vpsext->vps_num_output_layer_sets";
      *&v216[8] = 1024;
      v217 = v124;
      v218 = 1024;
      v219 = 0;
      v220 = 1024;
      v221 = 3072;
      v26 = MEMORY[0x277D86220];
      v27 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
      goto LABEL_25;
    }

    return 0xFFFFFFFFLL;
  }

  if (!HEVC_RBSP::allocTargetLayerIdLists(v113, a2))
  {
    return 0xFFFFFFFFLL;
  }

  v125 = malloc_type_calloc(0xCuLL, *(v5 + 3866), 0x10000408195852FuLL);
  *(v5 + 528) = v125;
  if (!v125)
  {
    return 0xFFFFFFFFLL;
  }

  v126 = malloc_type_calloc(8uLL, *(v5 + 3866), 0x2004093837F09uLL);
  *(v5 + 536) = v126;
  if (!v126)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v5 + 3866))
  {
    v127 = 0;
    do
    {
      v126 = malloc_type_calloc(8uLL, (*(a2 + 12) + 1), 0x1000040CE7E837CuLL);
      *(*(v5 + 536) + 8 * v127) = v126;
      v128 = *(v5 + 536);
      if (!v128[v127])
      {
        return 0xFFFFFFFFLL;
      }

      ++v127;
    }

    while (v127 < *(v5 + 3866));
  }

  else
  {
    v128 = v126;
  }

  v129 = HEVC_RBSP::calcOutputLayerFlag(v126, a2, 0, 0);
  **v128 = v129;
  *(*(v5 + 528) + 8) = -1;
  HEVC_RBSP::calcNecessaryLayerFlags(v129, a2, 0);
  HEVC_RBSP::calcTargetLayerIdList(v130, a2, 0);
  if (!**(v5 + 3896))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 136315138;
    *v213 = "parseVPSextension";
    v26 = MEMORY[0x277D86220];
    v27 = "AppleAVD: %s: vpsext->vps_num_target_opt_layer_id_lists[0] == 0\n";
    v28 = 12;
    goto LABEL_38;
  }

  if (*(a2 + 8))
  {
    *(**(v5 + 536) + 4) = *(a2 + 12) != 0;
  }

  if (*(v5 + 3866) < 2u)
  {
LABEL_217:
    v156 = HEVC_RBSP::ue_v(a1);
    v157 = v156;
    *(v5 + 3904) = v156;
    if (v156 >= 0x100)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        *v213 = "parseVPSextension";
        *&v213[8] = 1024;
        v214 = 1016;
        v215 = 2080;
        *v216 = "vpsext->vps_num_rep_formats_minus1";
        *&v216[8] = 1024;
        v217 = v157;
        v218 = 1024;
        v219 = 0;
        v220 = 1024;
        v221 = 255;
        v26 = MEMORY[0x277D86220];
        v27 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
        goto LABEL_25;
      }

      return 0xFFFFFFFFLL;
    }

    v158 = malloc_type_calloc(0x30uLL, v156 + 1, 0x10000405F9CC9FBuLL);
    *(v5 + 736) = v158;
    if (!v158)
    {
      return 0xFFFFFFFFLL;
    }

    v160 = 0;
    v161 = -1;
    do
    {
      v162 = *(v5 + 736) + v160;
      if (v160)
      {
        v163 = v162 - 48;
      }

      else
      {
        v163 = 0;
      }

      if (HEVC_RBSP::parseRepformat(a1, v159, v161 + 1, v162, v163))
      {
        return 0xFFFFFFFFLL;
      }

      v164 = *(v5 + 3904);
      ++v161;
      v160 += 48;
    }

    while (v161 < v164);
    if (v164)
    {
      v165 = *(a1 + 104);
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      *(v5 + 744) = v165 < 0;
      if (v165 >> 63 == 1)
      {
        goto LABEL_233;
      }
    }

    else if (*(v5 + 744))
    {
LABEL_233:
      v166 = *(v5 + 3904);
      v167 = 32 - __clz(v166);
      if (v166)
      {
        v168 = v167;
      }

      else
      {
        v168 = 0;
      }

      if (*(a2 + 12) || !*(a2 + 8))
      {
        if (*(a2 + 8))
        {
          v169 = 0;
        }

        else
        {
          v169 = -1;
        }

        v170 = 28 * (*(a2 + 8) != 0) + 4;
        do
        {
          v171 = *(a1 + 108);
          *(a1 + 164) += v168;
          v172 = v171 >> (32 - v168);
          HEVC_RBSP::flush_bits(a1, v168);
          *(*(v5 + 512) + v170) = v172;
          ++v169;
          v170 += 28;
        }

        while (v169 < *(a2 + 12));
      }

LABEL_259:
      v186 = *(a1 + 104);
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      *(v5 + 745) = v186 < 0;
      v187 = *(a1 + 104);
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      *(v5 + 746) = v187 < 0;
      v188 = *(a2 + 12);
      if (v188)
      {
        v189 = 0;
        v190 = 0;
        v191 = *(v5 + 512);
        do
        {
          if (!*(v191 + v189 + 46))
          {
            v192 = *(a1 + 104);
            ++*(a1 + 164);
            HEVC_RBSP::flush_bits(a1, 1);
            v191 = *(v5 + 512);
            *(v191 + v189 + 53) = v192 < 0;
            v188 = *(a2 + 12);
          }

          ++v190;
          v189 += 28;
        }

        while (v190 < v188);
      }

      if ((HEVC_RBSP::parseVPSDpbSize(a1, a2) & 1) == 0)
      {
        return 0xFFFFFFFFLL;
      }

      *(v5 + 748) = HEVC_RBSP::ue_v(a1);
      v193 = *(a1 + 104);
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      *(v5 + 750) = v193 < 0;
      if (v193 < 0)
      {
        v194 = *(v5 + 748);
        v195 = *(a1 + 108);
        *(a1 + 164) += v194 + 2;
        v196 = v195 >> (30 - v194);
        HEVC_RBSP::flush_bits(a1, v194 + 2);
        *(v5 + 752) = v196;
      }

      if (*(a2 + 8))
      {
        v197 = 1;
      }

      else
      {
        v197 = 2;
      }

      v198 = *(a2 + 12);
      if (v197 <= v198)
      {
        do
        {
          v199 = *(a2 + 8) == 0;
          if (v197 > v199)
          {
            v200 = *(v5 + 520);
            v201 = 14 * v199;
            do
            {
              v202 = *(v200 + 8 * v197);
              if (*(v202 + v201 + 4))
              {
                if (*(v5 + 750) == 1)
                {
                  *(v202 + v201 + 2) = *(v5 + 752);
                }

                else
                {
                  v203 = *(v5 + 748);
                  v204 = *(a1 + 108);
                  *(a1 + 164) += v203 + 2;
                  v205 = v204 >> (30 - v203);
                  HEVC_RBSP::flush_bits(a1, v203 + 2);
                  v200 = *(v5 + 520);
                  *(*(v200 + 8 * v197) + v201 + 2) = v205;
                }
              }

              ++v199;
              v201 += 14;
            }

            while (v199 < v197);
            v198 = *(a2 + 12);
          }

          v134 = v197++ >= v198;
        }

        while (!v134);
      }

      v206 = HEVC_RBSP::ue_v(a1);
      *(v5 + 754) = v206;
      v207 = v206;
      if (v206 <= 0x1000u)
      {
        if (v206 >= 2u)
        {
          v208 = 1;
          do
          {
            v209 = *(a1 + 111);
            *(a1 + 164) += 8;
            HEVC_RBSP::flush_bits(a1, 8);
            *(v5 + 756) = v209;
            ++v208;
          }

          while (v208 < *(v5 + 754));
        }

        v210 = *(a1 + 104);
        ++*(a1 + 164);
        HEVC_RBSP::flush_bits(a1, 1);
        result = 0;
        *(v5 + 758) = v210 < 0;
        *(v5 + 759) = 0;
        return result;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      *buf = 136316418;
      *v213 = "parseVPSextension";
      *&v213[8] = 1024;
      v214 = 1105;
      v215 = 2080;
      *v216 = "vpsext->vps_non_vui_extension_length";
      *&v216[8] = 1024;
      v217 = v207;
      v218 = 1024;
      v219 = 0;
      v220 = 1024;
      v221 = 4096;
      v26 = MEMORY[0x277D86220];
      v27 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
      goto LABEL_25;
    }

    v173 = *(a2 + 12);
    if (v173 || !*(a2 + 8))
    {
      v174 = 0;
      v175 = *(a2 + 8) != 0;
      v176 = (v173 + 1) - v175;
      v177 = (v5 + 3904);
      v178 = vaddq_s32(vdupq_n_s32(v175), xmmword_27775DC50);
      v179 = vdupq_n_s64(v176 - 1);
      v180 = vld1q_dup_f32(v177);
      v181 = (*(v5 + 512) + 28 * v175 + 60);
      v182.i64[0] = 0x400000004;
      v182.i64[1] = 0x400000004;
      do
      {
        v183 = vdupq_n_s64(v174);
        v184 = vmovn_s64(vcgeq_u64(v179, vorrq_s8(v183, xmmword_27775BCD0)));
        v185 = vminq_u32(v178, v180);
        if (vuzp1_s16(v184, *v178.i8).u8[0])
        {
          *(v181 - 14) = v185.i32[0];
        }

        if (vuzp1_s16(v184, *&v178).i8[2])
        {
          *(v181 - 7) = v185.i32[1];
        }

        if (vuzp1_s16(*&v178, vmovn_s64(vcgeq_u64(v179, vorrq_s8(v183, xmmword_27775BCE0)))).i32[1])
        {
          *v181 = v185.i32[2];
          v181[7] = v185.i32[3];
        }

        v174 += 4;
        v178 = vaddq_s32(v178, v182);
        v181 += 28;
      }

      while (((v176 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v174);
    }

    goto LABEL_259;
  }

  v132 = 1;
  while (1)
  {
    v133 = *(v5 + 3864);
    v134 = v133 >= 3 && v132 >= v133;
    if (v134)
    {
      v135 = __clz(v133 - 2);
      v136 = *(a1 + 108);
      *(a1 + 164) += 32 - v135;
      v137 = v136 >> v135;
      v131 = HEVC_RBSP::flush_bits(a1, 32 - v135);
      *(*(v5 + 528) + 12 * v132 + 8) = v137;
      if (v137 > *(v5 + 3864) - 2)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 0xFFFFFFFFLL;
        }

        v211 = *(v5 + 3864) - 2;
        *buf = 136316418;
        *v213 = "parseVPSextension";
        *&v213[8] = 1024;
        v214 = 942;
        v215 = 2080;
        *v216 = "vpsext->vps_ols[i].vps_layer_set_idx_for_ols_minus1";
        *&v216[8] = 1024;
        v217 = v137;
        v218 = 1024;
        v219 = 0;
        v220 = 1024;
        v221 = v211;
        v26 = MEMORY[0x277D86220];
        v27 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
LABEL_25:
        v28 = 46;
        goto LABEL_38;
      }
    }

    v138 = *(a2 + 4448);
    v139 = v132;
    if (v132 >= *(v138 + 3864))
    {
      v139 = *(*(v138 + 528) + 12 * v132 + 8) + 1;
    }

    v140 = *(*(v5 + 3856) + 2 * v139);
    if (v140 >= 0x41)
    {
      break;
    }

    if (v132 > *(a2 + 4380) || *(v5 + 730) == 2)
    {
      if (*(*(v5 + 3856) + 2 * v139))
      {
        v141 = 0;
        LODWORD(v142) = 0;
        while (1)
        {
          v143 = *(a1 + 104);
          ++*(a1 + 164);
          v131 = HEVC_RBSP::flush_bits(a1, 1);
          *(*(*(v5 + 536) + 8 * v132) + v141) = v143 < 0;
          if (v140 == 2 && (v143 & 0x8000000000000000) == 0)
          {
            break;
          }

          LODWORD(v142) = v142 + 1;
          v141 += 8;
          if (8 * v140 == v141)
          {
            goto LABEL_203;
          }
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_245;
      }
    }

    else if (*(*(v5 + 3856) + 2 * v139))
    {
      v142 = 0;
      v144 = *(*(v5 + 536) + 8 * v132);
      while (1)
      {
        v131 = HEVC_RBSP::calcOutputLayerFlag(v131, a2, v132, v142);
        *v144 = v131;
        if (v140 == 2 && (v131 & 1) == 0)
        {
          break;
        }

        ++v142;
        v144 += 8;
        if (v140 == v142)
        {
          goto LABEL_203;
        }
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

LABEL_245:
      *buf = 136315906;
      *v213 = "parseVPSextension";
      *&v213[8] = 1024;
      v214 = 2;
      v215 = 1024;
      *v216 = v132;
      *&v216[4] = 1024;
      *&v216[6] = v142;
      v26 = MEMORY[0x277D86220];
      v27 = "AppleAVD: ERROR: %s: numLayersInIdList=%d, vps_ols_2d[%d][%d].vps_output_layer_flag == 0\n";
      v28 = 30;
      goto LABEL_38;
    }

LABEL_203:
    HEVC_RBSP::calcNecessaryLayerFlags(v131, a2, v132);
    HEVC_RBSP::calcTargetLayerIdList(v145, a2, v132);
    v146 = *(*(v5 + 3896) + 2 * v132);
    if (!*(*(v5 + 3896) + 2 * v132))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      *buf = 136315394;
      *v213 = "parseVPSextension";
      *&v213[8] = 1024;
      v214 = v132;
      v26 = MEMORY[0x277D86220];
      v27 = "AppleAVD: %s: vpsext->vps_num_target_opt_layer_id_lists[%d] == 0\n";
      v28 = 18;
      goto LABEL_38;
    }

    if (v140)
    {
      v147 = 0;
      v148 = 8 * v140;
      do
      {
        if (*(*(*(v5 + 536) + 8 * v132) + v147 + 1) == 1)
        {
          v149 = *(v5 + 708);
          if (!v149 || (v150 = __clz(v149), v151 = *(a1 + 108), *(a1 + 164) += 32 - v150, v152 = v151 >> v150, v131 = HEVC_RBSP::flush_bits(a1, 32 - v150), v153 = *(*(v5 + 536) + 8 * v132) + v147, *(v153 + 4) = v152, (*(v153 + 1) & 1) != 0))
          {
            if (!*(v5 + 708))
            {
              v131 = HEVC_RBSP::flush_bits(a1, 0);
            }
          }
        }

        v147 += 8;
      }

      while (v148 != v147);
      v146 = *(*(v5 + 3896) + 2 * v132);
    }

    if (v146 == 1)
    {
      v154 = *(v5 + 512);
      v131 = HEVC_RBSP::calcOlshighestOutputLayerId(v131, a2, v132);
      if (*(v154 + 28 * *(v5 + 580 + 2 * v131) + 18))
      {
        v155 = *(a1 + 104);
        ++*(a1 + 164);
        v131 = HEVC_RBSP::flush_bits(a1, 1);
        *(*(v5 + 528) + 12 * v132) = v155 < 0;
      }
    }

    if (++v132 >= *(v5 + 3866))
    {
      goto LABEL_217;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    *v213 = "parseVPSextension";
    *&v213[8] = 1024;
    v214 = 947;
    v215 = 2080;
    *v216 = "numLayersInIdList";
    *&v216[8] = 1024;
    v217 = v140;
    v218 = 1024;
    v219 = 0;
    v220 = 1024;
    v221 = 64;
    v26 = MEMORY[0x277D86220];
    v27 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
    goto LABEL_25;
  }

  return 0xFFFFFFFFLL;
}

BOOL HEVC_RBSP::calcVPSNumViews(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v28 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 4448);
  *(v3 + 3834) = 1;
  v4 = *(a2 + 12);
  v5 = v3 + 545;
  v6 = *(v3 + 512);
  v7 = (v4 + 1);
  v8 = v3 + 762;
  do
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(v5 + v9);
      if (*(v5 + v9))
      {
        v11 = *(v3 + 2810 + 16 * v2 + v10++);
      }

      *(v8 + 2 * v9++) = v11;
    }

    while (v9 != 16);
    v12 = (v3 + 762 + 32 * v2);
    v13 = (v6 + 28 * v2);
    v13[4] = *v12;
    v14 = v12[1];
    v13[5] = v14;
    v13[6] = v12[2];
    v13[7] = v12[3];
    if (v2)
    {
      v15 = 1;
      v16 = v2;
      v17 = (v6 + 10);
      do
      {
        v18 = *v17;
        v17 += 14;
        v15 &= v14 != v18;
        --v16;
      }

      while (v16);
      if (v15)
      {
        ++*(v3 + 3834);
      }
    }

    ++v2;
    v8 += 32;
  }

  while (v2 != v7);
  v19 = *(v3 + 3834);
  if (*(v6 + 10) >= v19)
  {
    v24 = 0;
LABEL_18:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136315138;
      v27 = "calcVPSNumViews";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s: vps_view_order_idx >= vps_num_views\n", &v26, 0xCu);
    }
  }

  else
  {
    v20 = 0;
    v21 = (v6 + 38);
    v22 = v7 - 1;
    while (v22 != v20)
    {
      v23 = *v21;
      v21 += 14;
      ++v20;
      if (v23 >= v19)
      {
        v24 = v20 - 1 >= v4;
        goto LABEL_18;
      }
    }

    return v20 >= v4;
  }

  return v24;
}

uint64_t HEVC_RBSP::calcRefLayers(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v35 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 4448);
  v4 = *(a2 + 12);
  v5 = *(v3 + 520);
  do
  {
    v6 = 0;
    v7 = *(v5 + 8 * v2);
    do
    {
      *(v7 + 14 * v6 + 5) = *(v7 + 14 * v6 + 4) != 0;
      if (v2)
      {
        LOBYTE(v8) = 0;
        do
        {
          v8 = v8;
          if (*(v7 + 14 * v8 + 4) && *(*(v5 + 8 * v8) + 14 * v6 + 5) == 1)
          {
            *(v7 + 14 * v6 + 5) = 1;
          }

          LOBYTE(v8) = v8 + 1;
        }

        while (v2 > v8);
      }

      ++v6;
    }

    while (v4 >= v6);
    ++v2;
  }

  while (v4 >= v2);
  v9 = 0;
  v10 = *(v3 + 512);
  do
  {
    LOWORD(v11) = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = *(v5 + 8 * v9);
    do
    {
      v11 = v11;
      v16 = *(v10 + 28 * v11 + 26);
      if (*(v15 + 14 * v11 + 4))
      {
        v17 = v14++;
        *(v15 + 14 * v17 + 6) = v16;
      }

      if (*(v15 + 14 * v11 + 5) == 1)
      {
        v18 = v13++;
        *(v15 + 14 * v18 + 8) = v16;
      }

      if (*(*(v5 + 8 * v11) + 14 * v9 + 5) == 1)
      {
        v19 = v12++;
        *(v15 + 14 * v19 + 10) = v16;
      }

      LOWORD(v11) = v11 + 1;
    }

    while (v4 >= v11);
    v20 = (v10 + 28 * v9);
    v20[9] = v14;
    v20[10] = v13;
    v20[11] = v12;
    ++v9;
  }

  while (v4 >= v9);
  LOWORD(v21) = 0;
  v22 = 0;
  memset(v34, 0, sizeof(v34));
  do
  {
    v21 = v21;
    result = v10 + 28 * v21;
    if (!*(result + 18))
    {
      v24 = *(result + 26);
      v25 = v22;
      v26 = *(v5 + 8 * v22);
      *(v26 + 12) = v24;
      v27 = v10 + 28 * v21;
      v28 = *(v27 + 22);
      if (*(v27 + 22))
      {
        v29 = 0;
        v30 = *(v5 + 8 * v21);
        v31 = 1;
        do
        {
          v32 = *(v30 + 14 * v29 + 10);
          if ((*(v34 + v32) & 1) == 0)
          {
            v33 = v31++;
            *(v26 + 14 * v33 + 12) = v32;
            *(v34 + v32) = 1;
          }

          ++v29;
        }

        while (v28 > v29);
      }

      else
      {
        v31 = 1;
      }

      ++v22;
      result = v10 + 28 * v25;
      *(result + 16) = v31;
    }

    LOWORD(v21) = v21 + 1;
  }

  while (v4 >= v21);
  *(v3 + 3836) = v22;
  return result;
}

BOOL HEVC_RBSP::calcLayerSetLayerIdList(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 4448);
  v4 = malloc_type_calloc(2uLL, *(a2 + 4380) + *(v3 + 3838) + 1, 0x1000040BDFB0063uLL);
  *(v3 + 3856) = v4;
  if (!v4)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v21) = 0;
    v17 = MEMORY[0x277D86220];
    v18 = "AppleAVD: ERROR: vpsext->vps_num_layers_in_id_list bad alloc ";
LABEL_22:
    v19 = 2;
LABEL_23:
    _os_log_impl(&dword_277606000, v17, OS_LOG_TYPE_DEFAULT, v18, &v21, v19);
    return 0;
  }

  v5 = malloc_type_calloc(8uLL, *(a2 + 4380) + *(v3 + 3838) + 1, 0x10040436913F5uLL);
  *(v3 + 3848) = v5;
  if (!v5)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v21) = 0;
    v17 = MEMORY[0x277D86220];
    v18 = "AppleAVD: ERROR: vpsext->vps_layer_set_layer_id_list bad alloc ";
    goto LABEL_22;
  }

  v6 = 0;
  do
  {
    *(*(v3 + 3848) + 8 * v6) = malloc_type_malloc(2 * (*(a2 + 4376) + 1), 0x1000040BDFB0063uLL);
    v7 = *(v3 + 3848);
    if (!v7[v6])
    {
      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      LOWORD(v21) = 0;
      v17 = MEMORY[0x277D86220];
      v18 = "AppleAVD: ERROR: vpsext->vps_layer_set_layer_id_list[m] bad alloc ";
      goto LABEL_22;
    }

    ++v6;
    v8 = *(a2 + 4380);
  }

  while (v8 >= v6);
  v9 = *(v3 + 3856);
  result = 1;
  *v9 = 1;
  **v7 = 0;
  if (v8)
  {
    v11 = *(a2 + 4376);
    v12 = *(a2 + 4384);
    v13 = 1;
    while (1)
    {
      v14 = 0;
      v15 = 0;
      v16 = *(v12 + 8 * v13);
      do
      {
        if (*(v16 + v14))
        {
          v7[v13][v15++] = v14;
        }

        v9[v13] = v15;
        ++v14;
      }

      while (v11 >= v14);
      if (!v15 || *(a2 + 12) + 1 < v15)
      {
        break;
      }

      if (v8 < ++v13)
      {
        return 1;
      }
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v20 = *(a2 + 12) + 1;
      v21 = 136316418;
      v22 = "calcLayerSetLayerIdList";
      v23 = 1024;
      v24 = 1484;
      v25 = 2080;
      v26 = "vpsext->vps_num_layers_in_id_list[i]";
      v27 = 1024;
      v28 = v15;
      v29 = 1024;
      v30 = 1;
      v31 = 1024;
      v32 = v20;
      v17 = MEMORY[0x277D86220];
      v18 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
      v19 = 46;
      goto LABEL_23;
    }
  }

  return result;
}

BOOL HEVC_RBSP::calcAddLayerSetLayerIdList(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 4380) + 1 + a3;
  v6 = *(a2 + 4448);
  v7 = malloc_type_malloc(2 * (*(a2 + 4380) + 1), 0x1000040BDFB0063uLL);
  v8 = v5;
  *(*(v6 + 3848) + 8 * v5) = v7;
  v9 = *(*(v6 + 3848) + 8 * v5);
  if (!v9)
  {
    return 0;
  }

  v10 = *(v6 + 3836);
  if (v10 < 2)
  {
    v11 = 0;
LABEL_12:
    *(*(v6 + 3856) + 2 * v8) = v11;
    return v11 != 0;
  }

  else
  {
    v11 = 0;
    v12 = *(*(v6 + 3840) + 8 * a3);
    v13 = 1;
    while (!*(v12 + 2 * v13))
    {
LABEL_9:
      if (++v13 >= v10)
      {
        goto LABEL_12;
      }
    }

    v14 = 0;
    v15 = *(a2 + 4380);
    v16 = 12;
    while (1)
    {
      v17 = v11;
      if (v15 < v11)
      {
        break;
      }

      *(v9 + 2 * v11++) = *(*(*(v6 + 520) + 8 * v13) + v16);
      ++v14;
      v16 += 14;
      if (v14 >= *(v12 + 2 * v13))
      {
        v10 = *(v6 + 3836);
        goto LABEL_9;
      }
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v19 = 136316418;
      v20 = "calcAddLayerSetLayerIdList";
      v21 = 1024;
      v22 = 1538;
      v23 = 2080;
      v24 = "layerNum";
      v25 = 1024;
      v26 = v17;
      v27 = 1024;
      v28 = 0;
      v29 = 1024;
      v30 = v15;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n", &v19, 0x2Eu);
      return 0;
    }
  }

  return result;
}

void *HEVC_RBSP::allocTargetLayerIdLists(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 4448);
  result = malloc_type_calloc(8uLL, *(v3 + 3866), 0x10040436913F5uLL);
  *(v3 + 3872) = result;
  if (result)
  {
    if (*(v3 + 3866))
    {
      v5 = 0;
      while (1)
      {
        *(*(v3 + 3872) + 8 * v5) = malloc_type_malloc(2 * (*(a2 + 12) + 1), 0x1000040BDFB0063uLL);
        if (!*(*(v3 + 3872) + 8 * v5))
        {
          return 0;
        }

        ++v5;
        v6 = *(v3 + 3866);
        if (v5 >= v6)
        {
          goto LABEL_8;
        }
      }
    }

    v6 = 0;
LABEL_8:
    result = malloc_type_calloc(8uLL, v6, 0x10040436913F5uLL);
    *(v3 + 3888) = result;
    if (result)
    {
      if (*(v3 + 3866))
      {
        v7 = 0;
        while (1)
        {
          *(*(v3 + 3888) + 8 * v7) = malloc_type_malloc(2 * (*(a2 + 12) + 1), 0x1000040BDFB0063uLL);
          if (!*(*(v3 + 3888) + 8 * v7))
          {
            return 0;
          }

          ++v7;
          v8 = *(v3 + 3866);
          if (v7 >= v8)
          {
            goto LABEL_16;
          }
        }
      }

      v8 = 0;
LABEL_16:
      result = malloc_type_calloc(2uLL, v8, 0x1000040BDFB0063uLL);
      *(v3 + 3880) = result;
      if (result)
      {
        v9 = malloc_type_calloc(2uLL, *(v3 + 3866), 0x1000040BDFB0063uLL);
        *(v3 + 3896) = v9;
        return (v9 != 0);
      }
    }
  }

  return result;
}

BOOL HEVC_RBSP::calcOutputLayerFlag(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 4448);
  v5 = *(v4 + 730);
  if (v5 == 2)
  {
    return (a4 | a3) == 0;
  }

  else
  {
    if (v5 != 1)
    {
      return v5 == 0;
    }

    if (*(v4 + 3864) <= a3)
    {
      a3 = *(*(v4 + 528) + 12 * a3 + 8) + 1;
    }

    return *(*(v4 + 3856) + 2 * a3) - 1 == a4;
  }
}

void HEVC_RBSP::calcNecessaryLayerFlags(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 4448);
  v4 = a3;
  if (*(v3 + 3864) <= a3)
  {
    v4 = *(*(v3 + 528) + 12 * a3 + 8) + 1;
  }

  v5 = *(*(v3 + 3856) + 2 * v4);
  if (*(*(v3 + 3856) + 2 * v4))
  {
    v6 = a3;
    v7 = (v5 + 15) & 0x1FFF0;
    v8 = vdupq_n_s64(v5 - 1);
    v9 = (*(*(v3 + 536) + 8 * a3) + 65);
    v10 = xmmword_27775CC30;
    v11 = xmmword_27775CC40;
    v12 = xmmword_27775CC50;
    v13 = xmmword_27775CC60;
    v14 = xmmword_27775CC70;
    v15 = xmmword_27775CC80;
    v16 = xmmword_27775BCE0;
    v17 = xmmword_27775BCD0;
    v18 = vdupq_n_s64(0x10uLL);
    do
    {
      v19 = vmovn_s64(vcgeq_u64(v8, v17));
      if (vuzp1_s8(vuzp1_s16(v19, *v8.i8), *v8.i8).u8[0])
      {
        *(v9 - 64) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v19, *&v8), *&v8).i8[1])
      {
        *(v9 - 56) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v16))), *&v8).i8[2])
      {
        *(v9 - 48) = 0;
        *(v9 - 40) = 0;
      }

      v20 = vmovn_s64(vcgeq_u64(v8, v15));
      if (vuzp1_s8(*&v8, vuzp1_s16(v20, *&v8)).i32[1])
      {
        *(v9 - 32) = 0;
      }

      if (vuzp1_s8(*&v8, vuzp1_s16(v20, *&v8)).i8[5])
      {
        *(v9 - 24) = 0;
      }

      if (vuzp1_s8(*&v8, vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v14)))).i8[6])
      {
        *(v9 - 16) = 0;
        *(v9 - 8) = 0;
      }

      v21 = vmovn_s64(vcgeq_u64(v8, v13));
      if (vuzp1_s8(vuzp1_s16(v21, *v8.i8), *v8.i8).u8[0])
      {
        *v9 = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v21, *&v8), *&v8).i8[1])
      {
        v9[8] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v12))), *&v8).i8[2])
      {
        v9[16] = 0;
        v9[24] = 0;
      }

      v22 = vmovn_s64(vcgeq_u64(v8, v11));
      if (vuzp1_s8(*&v8, vuzp1_s16(v22, *&v8)).i32[1])
      {
        v9[32] = 0;
      }

      if (vuzp1_s8(*&v8, vuzp1_s16(v22, *&v8)).i8[5])
      {
        v9[40] = 0;
      }

      if (vuzp1_s8(*&v8, vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v10)))).i8[6])
      {
        v9[48] = 0;
        v9[56] = 0;
      }

      v15 = vaddq_s64(v15, v18);
      v16 = vaddq_s64(v16, v18);
      v17 = vaddq_s64(v17, v18);
      v14 = vaddq_s64(v14, v18);
      v13 = vaddq_s64(v13, v18);
      v12 = vaddq_s64(v12, v18);
      v11 = vaddq_s64(v11, v18);
      v9 += 128;
      v10 = vaddq_s64(v10, v18);
      v7 -= 16;
    }

    while (v7);
    v23 = *(*(v3 + 536) + 8 * a3);
    v24 = v3 + 580;
    do
    {
      v25 = (v23 + 8 * v7);
      if (*v25 == 1)
      {
        v25[1] = 1;
        if (v7)
        {
          v26 = 0;
          v27 = *(*(v3 + 3848) + 8 * v4);
          v28 = *(*(v3 + 520) + 8 * *(v24 + 2 * *(v27 + 2 * v7)));
          v29 = (v23 + 1);
          do
          {
            if (*(v28 + 14 * *(v24 + 2 * *(v27 + 2 * v26)) + 5) == 1)
            {
              *v29 = 1;
            }

            ++v26;
            v29 += 8;
          }

          while (v7 != v26);
        }
      }

      ++v7;
    }

    while (v7 != v5);
    v30 = 0;
    v31 = *(v3 + 528) + 12 * v6;
    *(v31 + 4) = 0;
    v32 = (v31 + 4);
    v33 = (*(*(v3 + 536) + 8 * v6) + 1);
    do
    {
      v34 = *v33;
      v33 += 8;
      v30 += v34;
      --v5;
    }

    while (v5);
    *v32 = v30;
  }

  else
  {
    *(*(v3 + 528) + 12 * a3 + 4) = 0;
  }
}

void HEVC_RBSP::calcTargetLayerIdList(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 4448);
  v4 = a3;
  if (*(v3 + 3864) <= a3)
  {
    v4 = *(*(v3 + 528) + 12 * a3 + 8) + 1;
  }

  v5 = *(v3 + 3856);
  if (*(v5 + 2 * v4))
  {
    v6 = 0;
    v7 = (*(*(v3 + 536) + 8 * a3) + 1);
    do
    {
      if (*v7 == 1)
      {
        *(*(*(v3 + 3872) + 8 * a3) + 2 * v6) = *(*(*(v3 + 3848) + 8 * v4) + 2 * v6);
        ++*(*(v3 + 3880) + 2 * a3);
      }

      if (*(v7 - 1) == 1)
      {
        *(*(*(v3 + 3888) + 8 * a3) + 2 * v6) = *(*(*(v3 + 3848) + 8 * v4) + 2 * v6);
        ++*(*(v3 + 3896) + 2 * a3);
      }

      ++v6;
      v7 += 8;
    }

    while (v6 < *(v5 + 2 * v4));
  }
}

uint64_t HEVC_RBSP::convOlsIdxToLsIdx(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = a3;
  v4 = *(a2 + 4448);
  if (*(v4 + 3864) <= a3)
  {
    return (*(*(v4 + 528) + 12 * a3 + 8) + 1);
  }

  return result;
}

uint64_t HEVC_RBSP::calcOlshighestOutputLayerId(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 4448);
  v4 = a3;
  if (*(v3 + 3864) <= a3)
  {
    v4 = *(*(v3 + 528) + 12 * a3 + 8) + 1;
  }

  v5 = *(v3 + 3856);
  v6 = *(v5 + 2 * v4);
  if (!*(v5 + 2 * v4))
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = *(*(v3 + 536) + 8 * a3);
  v10 = 2 * v6;
  do
  {
    v11 = *v9;
    v9 += 8;
    if (v11 == 1)
    {
      v8 = *(*(*(v3 + 3848) + 8 * v4) + v7);
    }

    v7 += 2;
  }

  while (v10 != v7);
  return v8;
}

uint64_t HEVC_RBSP::parseRepformat(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v9 = *(a1 + 110);
  *(a1 + 164) += 16;
  HEVC_RBSP::flush_bits(a1, 16);
  *(a4 + 12) = v9;
  v10 = *(a1 + 110);
  *(a1 + 164) += 16;
  HEVC_RBSP::flush_bits(a1, 16);
  *(a4 + 16) = v10;
  v11 = *(a1 + 104);
  ++*(a1 + 164);
  HEVC_RBSP::flush_bits(a1, 1);
  *a4 = v11 < 0;
  if (!a3 && (v11 & 0x8000000000000000) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v53 = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: chroma_and_bit_depth_vps_present_flags is 0 for first rep format", v53, 2u);
    }

    return 0xFFFFFFFFLL;
  }

  if (v11 < 0)
  {
    v14 = *(a1 + 104);
    *(a1 + 164) += 2;
    v15 = v14 >> 62;
    HEVC_RBSP::flush_bits(a1, 2);
    *(a4 + 4) = v15;
    if (v15 == 3)
    {
      v16 = *(a1 + 104);
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      *(a4 + 8) = v16 < 0;
    }

    v17 = *(a1 + 104);
    *(a1 + 164) += 4;
    v18 = v17 >> 60;
    HEVC_RBSP::flush_bits(a1, 4);
    *(a4 + 20) = v18;
    v19 = *(a1 + 104);
    *(a1 + 164) += 4;
    a5 = v19 >> 60;
    HEVC_RBSP::flush_bits(a1, 4);
  }

  else
  {
    if (!a5)
    {
      goto LABEL_13;
    }

    *(a4 + 4) = *(a5 + 4);
    *a4 = *a5;
    *(a4 + 8) = *(a5 + 8);
    v13 = *(a5 + 20);
    LODWORD(a5) = *(a5 + 24);
    *(a4 + 20) = v13;
  }

  *(a4 + 24) = a5;
LABEL_13:
  v20 = *(a1 + 104);
  ++*(a1 + 164);
  HEVC_RBSP::flush_bits(a1, 1);
  result = 0;
  *(a4 + 28) = v20 < 0;
  if (v20 < 0)
  {
    v21 = *(a1 + 104);
    if ((v21 & 0x8000000000000000) != 0)
    {
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      v28 = 0;
    }

    else
    {
      v22 = HIDWORD(v21);
      v23 = -32;
      do
      {
        LODWORD(v22) = 2 * v22;
        v24 = v23 + 1;
        if ((v22 & 0x80000000) != 0)
        {
          break;
        }

        v25 = v23 + 32;
        ++v23;
      }

      while (v25 < 0x1E);
      *(a1 + 164) += v24 + 33;
      HEVC_RBSP::flush_bits(a1, v24 + 33);
      v26 = *(a1 + 108);
      *(a1 + 164) += v24 + 32;
      v27 = v26 >> -v24;
      HEVC_RBSP::flush_bits(a1, v24 + 32);
      v28 = v27 + ~(-2 << (v24 + 31));
    }

    *(a4 + 32) = v28;
    v29 = *(a1 + 104);
    if ((v29 & 0x8000000000000000) != 0)
    {
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      v36 = 0;
    }

    else
    {
      v30 = HIDWORD(v29);
      v31 = -32;
      do
      {
        LODWORD(v30) = 2 * v30;
        v32 = v31 + 1;
        if ((v30 & 0x80000000) != 0)
        {
          break;
        }

        v33 = v31 + 32;
        ++v31;
      }

      while (v33 < 0x1E);
      *(a1 + 164) += v32 + 33;
      HEVC_RBSP::flush_bits(a1, v32 + 33);
      v34 = *(a1 + 108);
      *(a1 + 164) += v32 + 32;
      v35 = v34 >> -v32;
      HEVC_RBSP::flush_bits(a1, v32 + 32);
      v36 = v35 + ~(-2 << (v32 + 31));
    }

    *(a4 + 36) = v36;
    v37 = *(a1 + 104);
    if ((v37 & 0x8000000000000000) != 0)
    {
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      v44 = 0;
    }

    else
    {
      v38 = HIDWORD(v37);
      v39 = -32;
      do
      {
        LODWORD(v38) = 2 * v38;
        v40 = v39 + 1;
        if ((v38 & 0x80000000) != 0)
        {
          break;
        }

        v41 = v39 + 32;
        ++v39;
      }

      while (v41 < 0x1E);
      *(a1 + 164) += v40 + 33;
      HEVC_RBSP::flush_bits(a1, v40 + 33);
      v42 = *(a1 + 108);
      *(a1 + 164) += v40 + 32;
      v43 = v42 >> -v40;
      HEVC_RBSP::flush_bits(a1, v40 + 32);
      v44 = v43 + ~(-2 << (v40 + 31));
    }

    *(a4 + 40) = v44;
    v45 = *(a1 + 104);
    if ((v45 & 0x8000000000000000) != 0)
    {
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      v52 = 0;
    }

    else
    {
      v46 = HIDWORD(v45);
      v47 = -32;
      do
      {
        LODWORD(v46) = 2 * v46;
        v48 = v47 + 1;
        if ((v46 & 0x80000000) != 0)
        {
          break;
        }

        v49 = v47 + 32;
        ++v47;
      }

      while (v49 < 0x1E);
      *(a1 + 164) += v48 + 33;
      HEVC_RBSP::flush_bits(a1, v48 + 33);
      v50 = *(a1 + 108);
      *(a1 + 164) += v48 + 32;
      v51 = v50 >> -v48;
      HEVC_RBSP::flush_bits(a1, v48 + 32);
      v52 = v51 + ~(-2 << (v48 + 31));
    }

    result = 0;
    *(a4 + 44) = v52;
  }

  return result;
}

uint64_t HEVC_RBSP::parseVPSDpbSize(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4448);
  v5 = *(v4 + 3866);
  v57 = HEVC_RBSP::vpsDpbInit(a1, a2, *(v4 + 3866), *(a2 + 4376) + 1, *(a2 + 16) + 1);
  v58 = v5;
  if (v57)
  {
    v6 = v5 >= 2;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = *(a2 + 4448);
    for (i = 1; i != v58; ++i)
    {
      v9 = i;
      if (i >= *(v7 + 3864))
      {
        v9 = *(*(v7 + 528) + 12 * i + 8) + 1;
      }

      v10 = *(a1 + 104);
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      v11 = 0;
      *(v4 + 747) = v10 < 0;
      while (1)
      {
        v7 = *(a2 + 4448);
        v12 = *(v7 + 3856);
        v13 = *(v12 + 2 * v9);
        if (*(v12 + 2 * v9))
        {
          LODWORD(v14) = 0;
          v15 = *(*(v7 + 3848) + 8 * v9);
          do
          {
            v16 = *v15++;
            v17 = *(*(v7 + 512) + 28 * *(v7 + 580 + 2 * v16) + 24);
            if (v14 <= v17)
            {
              v14 = v17;
            }

            else
            {
              v14 = v14;
            }

            --v13;
          }

          while (v13);
        }

        else
        {
          v14 = 0;
        }

        if (v11 > v14)
        {
          break;
        }

        if (v11)
        {
          if (*(*(v4 + 3912) + i))
          {
            v18 = *(a1 + 104);
            ++*(a1 + 164);
            HEVC_RBSP::flush_bits(a1, 1);
            v19 = v18 >> 63;
            *(*(*(v4 + 3920) + 8 * i) + v11) = v18 < 0;
          }

          else
          {
            LOBYTE(v19) = *(*(*(v4 + 3920) + 8 * i) + v11);
          }

          v20 = *(v4 + 3856);
          if ((v19 & 1) == 0)
          {
            v40 = *(v20 + 2 * v9);
            if (*(v20 + 2 * v9))
            {
              v41 = 0;
              v42 = *(*(v4 + 536) + 8 * i) + 1;
              v43 = 8 * v40;
              do
              {
                if (*(v42 + v41) == 1)
                {
                  v44 = (*(*(*(v4 + 3928) + 8 * i) + v41) + 4 * v11);
                  *v44 = *(v44 - 1);
                }

                v41 += 8;
              }

              while (v43 != v41);
            }

            v45 = *(*(v4 + 3936) + 8 * i);
            v46 = 4 * v11 - 4;
            *(v45 + 4 * v11) = *(v45 + v46);
            v47 = *(*(v4 + 3944) + 8 * i);
            v48 = *(v47 + v46);
            goto LABEL_63;
          }
        }

        else
        {
          if (**(*(v4 + 3920) + 8 * i) != 1)
          {
            goto LABEL_64;
          }

          v20 = *(v4 + 3856);
        }

        if (*(v20 + 2 * v9))
        {
          v21 = 0;
          do
          {
            if (*(*(*(v4 + 536) + 8 * i) + 8 * v21 + 1) == 1)
            {
              if (*(a2 + 8))
              {
                goto LABEL_33;
              }

              v22 = *(a2 + 4448);
              v23 = i;
              if (i >= *(v22 + 3864))
              {
                v23 = *(*(v22 + 528) + 12 * i + 8) + 1;
              }

              if (*(*(*(v4 + 3848) + 8 * v23) + 2 * v21))
              {
LABEL_33:
                v24 = *(a1 + 104);
                if ((v24 & 0x8000000000000000) != 0)
                {
                  ++*(a1 + 164);
                  HEVC_RBSP::flush_bits(a1, 1);
                  v31 = 0;
                }

                else
                {
                  v25 = HIDWORD(v24);
                  v26 = -32;
                  do
                  {
                    LODWORD(v25) = 2 * v25;
                    v27 = v26 + 1;
                    if ((v25 & 0x80000000) != 0)
                    {
                      break;
                    }

                    v28 = v26 + 32;
                    ++v26;
                  }

                  while (v28 < 0x1E);
                  *(a1 + 164) += v27 + 33;
                  HEVC_RBSP::flush_bits(a1, v27 + 33);
                  v29 = *(a1 + 108);
                  *(a1 + 164) += v27 + 32;
                  v30 = v29 >> -v27;
                  HEVC_RBSP::flush_bits(a1, v27 + 32);
                  v31 = v30 + ~(-2 << (v27 + 31));
                }

                *(*(*(*(v4 + 3928) + 8 * i) + 8 * v21) + 4 * v11) = v31;
                v20 = *(v4 + 3856);
              }

              else if (!(v21 | v11))
              {
                *(*(*(*(v4 + 3928) + 8 * i) + 8 * v21) + 4 * v11) = 0;
              }
            }

            ++v21;
          }

          while (v21 < *(v20 + 2 * v9));
        }

        v32 = *(a1 + 104);
        if ((v32 & 0x8000000000000000) != 0)
        {
          ++*(a1 + 164);
          HEVC_RBSP::flush_bits(a1, 1);
          v39 = 0;
        }

        else
        {
          v33 = HIDWORD(v32);
          v34 = -32;
          do
          {
            LODWORD(v33) = 2 * v33;
            v35 = v34 + 1;
            if ((v33 & 0x80000000) != 0)
            {
              break;
            }

            v36 = v34 + 32;
            ++v34;
          }

          while (v36 < 0x1E);
          *(a1 + 164) += v35 + 33;
          HEVC_RBSP::flush_bits(a1, v35 + 33);
          v37 = *(a1 + 108);
          *(a1 + 164) += v35 + 32;
          v38 = v37 >> -v35;
          HEVC_RBSP::flush_bits(a1, v35 + 32);
          v39 = v38 + ~(-2 << (v35 + 31));
        }

        *(*(*(v4 + 3936) + 8 * i) + 4 * v11) = v39;
        v49 = *(a1 + 104);
        if ((v49 & 0x8000000000000000) != 0)
        {
          ++*(a1 + 164);
          HEVC_RBSP::flush_bits(a1, 1);
          v48 = 0;
        }

        else
        {
          v50 = HIDWORD(v49);
          v51 = -32;
          do
          {
            LODWORD(v50) = 2 * v50;
            v52 = v51 + 1;
            if ((v50 & 0x80000000) != 0)
            {
              break;
            }

            v53 = v51 + 32;
            ++v51;
          }

          while (v53 < 0x1E);
          *(a1 + 164) += v52 + 33;
          HEVC_RBSP::flush_bits(a1, v52 + 33);
          v54 = *(a1 + 108);
          *(a1 + 164) += v52 + 32;
          v55 = v54 >> -v52;
          HEVC_RBSP::flush_bits(a1, v52 + 32);
          v48 = v55 + ~(-2 << (v52 + 31));
        }

        v47 = *(*(v4 + 3944) + 8 * i);
LABEL_63:
        *(v47 + 4 * v11) = v48;
LABEL_64:
        ++v11;
      }
    }
  }

  return v57;
}

uint64_t releaseVpsDpb(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 4448);
  if (a2 >= 1)
  {
    v5 = 0;
    v6 = 8 * a3;
    v7 = a2;
    do
    {
      v8 = v3[490];
      if (v8)
      {
        free(v8[v5]);
        *(v3[490] + v5) = 0;
      }

      v9 = v3[492];
      if (v9)
      {
        free(v9[v5]);
        *(v3[492] + v5) = 0;
      }

      v10 = v3[493];
      if (v10)
      {
        free(v10[v5]);
        *(v3[493] + v5) = 0;
      }

      v11 = v3[491];
      if (v11)
      {
        if (a3 >= 1)
        {
          v12 = 0;
          do
          {
            v13 = *(v3[491] + v5);
            if (v13)
            {
              free(*(v13 + v12));
              *(*(v3[491] + v5) + v12) = 0;
            }

            v12 += 8;
          }

          while (v6 != v12);
          v11 = v3[491];
        }

        free(v11[v5]);
        *(v3[491] + v5) = 0;
      }

      ++v5;
    }

    while (v5 != v7);
  }

  free(v3[489]);
  v3[489] = 0;
  free(v3[490]);
  v3[490] = 0;
  free(v3[491]);
  v3[491] = 0;
  free(v3[492]);
  v3[492] = 0;
  free(v3[493]);
  v3[493] = 0;
  return 0;
}

uint64_t HEVC_RBSP::vpsDpbInit(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v8 = *(a2 + 4448);
  result = malloc_type_calloc(1uLL, a3, 0x100004077774924uLL);
  v8[489] = result;
  if (result)
  {
    result = malloc_type_calloc(8uLL, a3, 0x10040436913F5uLL);
    v8[490] = result;
    if (result)
    {
      result = malloc_type_calloc(8uLL, a3, 0x80040B8603338uLL);
      v8[491] = result;
      if (result)
      {
        result = malloc_type_calloc(8uLL, a3, 0x10040436913F5uLL);
        v8[492] = result;
        if (result)
        {
          result = malloc_type_calloc(8uLL, a3, 0x10040436913F5uLL);
          v8[493] = result;
          if (result)
          {
            if (a3 < 1)
            {
              return 1;
            }

            else
            {
              v10 = 0;
              v16 = a3;
              while (1)
              {
                *(v8[490] + 8 * v10) = malloc_type_calloc(1uLL, a5, 0x100004077774924uLL);
                if (!*(v8[490] + 8 * v10))
                {
                  return 0;
                }

                *(v8[492] + 8 * v10) = malloc_type_calloc(4uLL, a5, 0x100004052888210uLL);
                if (!*(v8[492] + 8 * v10))
                {
                  return 0;
                }

                *(v8[493] + 8 * v10) = malloc_type_calloc(4uLL, a5, 0x100004052888210uLL);
                if (!*(v8[493] + 8 * v10))
                {
                  return 0;
                }

                *(v8[491] + 8 * v10) = malloc_type_calloc(8uLL, a4, 0x10040436913F5uLL);
                if (!*(v8[491] + 8 * v10))
                {
                  return 0;
                }

                if (a5 >= 1)
                {
                  v11 = 0;
                  v12 = *(v8[490] + 8 * v10);
                  v13 = *(v8[492] + 8 * v10);
                  v14 = *(v8[493] + 8 * v10);
                  do
                  {
                    *(v12 + v11) = v11 == 0;
                    *(v13 + 4 * v11) = 0;
                    *(v14 + 4 * v11++) = 0;
                  }

                  while (a5 != v11);
                }

                if (a4 >= 1)
                {
                  break;
                }

LABEL_21:
                ++v10;
                result = 1;
                if (v10 == v16)
                {
                  return result;
                }
              }

              v15 = 0;
              while (1)
              {
                *(*(v8[491] + 8 * v10) + v15) = malloc_type_malloc(4 * a5, 0x100004052888210uLL);
                result = *(*(v8[491] + 8 * v10) + v15);
                if (!result)
                {
                  break;
                }

                if (a5 >= 1)
                {
                  memset(result, 255, 4 * a5);
                }

                v15 += 8;
                if (8 * a4 == v15)
                {
                  goto LABEL_21;
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

uint64_t HEVC_RBSP::calcViewId(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 4448);
  if (*(v3 + 546))
  {
    v4 = v3 + 16 * *(v3 + 2 * a3 + 580);
    if (*(v3 + 545))
    {
      ++v4;
    }

    v5 = *(v4 + 2810);
  }

  else
  {
    v5 = 0;
  }

  return *(*(v3 + 512) + 28 * v5);
}

uint64_t HEVC_RBSP::parseHRD(HEVC_RBSP *this, uint64_t a2, int a3, unsigned int a4)
{
  *(a2 + 416) = 0;
  *(a2 + 384) = 0u;
  *(a2 + 400) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 368) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0x1700000017;
  *(a2 + 40) = 23;
  if (!a3)
  {
    goto LABEL_12;
  }

  v7 = *(this + 13);
  ++*(this + 41);
  v8 = v7 >> 63;
  HEVC_RBSP::flush_bits(this, 1);
  *a2 = v8;
  v9 = *(this + 13);
  ++*(this + 41);
  HEVC_RBSP::flush_bits(this, 1);
  *(a2 + 1) = v9 < 0;
  if (!*a2)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  *(a2 + 421) = 1;
  if (v9 < 0)
  {
LABEL_6:
    *(a2 + 422) = 1;
  }

  *(a2 + 420) = 1;
  v10 = *(this + 13);
  ++*(this + 41);
  HEVC_RBSP::flush_bits(this, 1);
  *(a2 + 2) = v10 < 0;
  if (v10 < 0)
  {
    v11 = *(this + 111);
    *(this + 41) += 8;
    HEVC_RBSP::flush_bits(this, 8);
    *(a2 + 4) = v11;
    v12 = *(this + 13);
    *(this + 41) += 5;
    v13 = v12 >> 59;
    HEVC_RBSP::flush_bits(this, 5);
    *(a2 + 8) = v13;
    v14 = *(this + 13);
    ++*(this + 41);
    v15 = v14 >> 63;
    HEVC_RBSP::flush_bits(this, 1);
    *(a2 + 12) = v15;
    v16 = *(this + 13);
    *(this + 41) += 5;
    v17 = v16 >> 59;
    HEVC_RBSP::flush_bits(this, 5);
    *(a2 + 16) = v17;
  }

  v18 = *(this + 13);
  *(this + 41) += 4;
  v19 = v18 >> 60;
  HEVC_RBSP::flush_bits(this, 4);
  *(a2 + 20) = v19;
  v20 = *(this + 13);
  *(this + 41) += 4;
  v21 = v20 >> 60;
  HEVC_RBSP::flush_bits(this, 4);
  *(a2 + 24) = v21;
  if (*(a2 + 2))
  {
    v22 = *(this + 13);
    *(this + 41) += 4;
    v23 = v22 >> 60;
    HEVC_RBSP::flush_bits(this, 4);
    *(a2 + 28) = v23;
  }

  v24 = *(this + 13);
  *(this + 41) += 5;
  v25 = v24 >> 59;
  HEVC_RBSP::flush_bits(this, 5);
  *(a2 + 32) = v25;
  v26 = *(this + 13);
  *(this + 41) += 5;
  v27 = v26 >> 59;
  HEVC_RBSP::flush_bits(this, 5);
  *(a2 + 36) = v27;
  v28 = *(this + 13);
  *(this + 41) += 5;
  v29 = v28 >> 59;
  HEVC_RBSP::flush_bits(this, 5);
  *(a2 + 40) = v29;
LABEL_12:
  v30 = a4 + 1;
  *(a2 + 416) = v30;
  result = malloc_type_calloc(0x30uLL, v30, 0x1010040BFFE42E9uLL);
  *(a2 + 400) = result;
  if (result)
  {
    result = malloc_type_calloc(0x30uLL, *(a2 + 416), 0x1010040BFFE42E9uLL);
    *(a2 + 408) = result;
    if (result)
    {
      v32 = 0;
      v33 = a2 + 76;
      v34 = a2 + 236;
      v35 = a2 + 268;
      while (1)
      {
        v36 = *(this + 13);
        ++*(this + 41);
        HEVC_RBSP::flush_bits(this, 1);
        *(a2 + 44 + v32) = v36 < 0;
        if (v36 < 0)
        {
          *(v33 + v32) = 1;
        }

        else
        {
          v37 = *(this + 13);
          ++*(this + 41);
          HEVC_RBSP::flush_bits(this, 1);
          *(v33 + v32) = v37 < 0;
          if ((v37 & 0x8000000000000000) == 0)
          {
            v38 = *(this + 13);
            ++*(this + 41);
            v39 = v38 >> 63;
            HEVC_RBSP::flush_bits(this, 1);
            *(v34 + v32) = v39;
            if (!v39)
            {
              goto LABEL_27;
            }

            goto LABEL_34;
          }
        }

        v41 = *(this + 13);
        if ((v41 & 0x8000000000000000) != 0)
        {
          ++*(this + 41);
          HEVC_RBSP::flush_bits(this, 1);
          v48 = 0;
        }

        else
        {
          v42 = HIDWORD(v41);
          v43 = -32;
          do
          {
            LODWORD(v42) = 2 * v42;
            v44 = v43 + 1;
            if ((v42 & 0x80000000) != 0)
            {
              break;
            }

            v45 = v43 + 32;
            ++v43;
          }

          while (v45 < 0x1E);
          *(this + 41) += v44 + 33;
          HEVC_RBSP::flush_bits(this, v44 + 33);
          v46 = *(this + 27);
          *(this + 41) += v44 + 32;
          v47 = v46 >> -v44;
          HEVC_RBSP::flush_bits(this, v44 + 32);
          v48 = v47 + ~(-2 << (v44 + 31));
        }

        *(a2 + 108 + 4 * v32) = v48;
        if (!*(v34 + v32))
        {
LABEL_27:
          v49 = *(this + 13);
          if ((v49 & 0x8000000000000000) != 0)
          {
            ++*(this + 41);
            HEVC_RBSP::flush_bits(this, 1);
            *(v35 + 4 * v32) = 0;
          }

          else
          {
            v50 = HIDWORD(v49);
            v51 = -32;
            do
            {
              LODWORD(v50) = 2 * v50;
              v52 = v51 + 1;
              if ((v50 & 0x80000000) != 0)
              {
                break;
              }

              v53 = v51 + 32;
              ++v51;
            }

            while (v53 < 0x1E);
            *(this + 41) += v52 + 33;
            HEVC_RBSP::flush_bits(this, v52 + 33);
            v54 = *(this + 27);
            *(this + 41) += v52 + 32;
            v55 = v54 >> -v52;
            HEVC_RBSP::flush_bits(this, v52 + 32);
            v56 = v55 + ~(-2 << (v52 + 31));
            *(v35 + 4 * v32) = v56;
            if (v56 > 0x1F)
            {
              return 0;
            }
          }
        }

LABEL_34:
        if (*a2)
        {
          result = HEVC_RBSP::parseSubLayerHRD(this, *(a2 + 400) + 48 * v32, v40, *(v35 + 4 * v32), *(a2 + 2));
          if (!result)
          {
            return result;
          }
        }

        if (*(a2 + 1))
        {
          result = HEVC_RBSP::parseSubLayerHRD(this, *(a2 + 408) + 48 * v32, v40, *(v35 + 4 * v32), *(a2 + 2));
          if (!result)
          {
            return result;
          }
        }

        if (++v32 > a4)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t HEVC_RBSP::parseSubLayerHRD(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v5 = a4 + 1;
  if (v5 != v5 << 31 >> 31)
  {
    return 0;
  }

  result = malloc_type_calloc(4uLL, v5, 0x100004052888210uLL);
  *a2 = result;
  if (result)
  {
    result = malloc_type_calloc(4uLL, v5, 0x100004052888210uLL);
    *(a2 + 8) = result;
    if (result)
    {
      result = malloc_type_calloc(1uLL, v5, 0x100004077774924uLL);
      *(a2 + 32) = result;
      if (result)
      {
        if (!a5 || (result = malloc_type_calloc(4uLL, v5, 0x100004052888210uLL), (*(a2 + 16) = result) != 0) && (result = malloc_type_calloc(4uLL, v5, 0x100004052888210uLL), (*(a2 + 24) = result) != 0))
        {
          v11 = 0;
          do
          {
            v12 = *(a1 + 104);
            if ((v12 & 0x8000000000000000) != 0)
            {
              ++*(a1 + 164);
              HEVC_RBSP::flush_bits(a1, 1);
              v19 = 0;
            }

            else
            {
              v13 = HIDWORD(v12);
              v14 = -32;
              do
              {
                LODWORD(v13) = 2 * v13;
                v15 = v14 + 1;
                if ((v13 & 0x80000000) != 0)
                {
                  break;
                }

                v16 = v14 + 32;
                ++v14;
              }

              while (v16 < 0x1E);
              *(a1 + 164) += v15 + 33;
              HEVC_RBSP::flush_bits(a1, v15 + 33);
              v17 = *(a1 + 108);
              *(a1 + 164) += v15 + 32;
              v18 = v17 >> -v15;
              HEVC_RBSP::flush_bits(a1, v15 + 32);
              v19 = v18 + ~(-2 << (v15 + 31));
            }

            *(*a2 + 4 * v11) = v19;
            v20 = *(a1 + 104);
            if ((v20 & 0x8000000000000000) != 0)
            {
              ++*(a1 + 164);
              HEVC_RBSP::flush_bits(a1, 1);
              v27 = 0;
            }

            else
            {
              v21 = HIDWORD(v20);
              v22 = -32;
              do
              {
                LODWORD(v21) = 2 * v21;
                v23 = v22 + 1;
                if ((v21 & 0x80000000) != 0)
                {
                  break;
                }

                v24 = v22 + 32;
                ++v22;
              }

              while (v24 < 0x1E);
              *(a1 + 164) += v23 + 33;
              HEVC_RBSP::flush_bits(a1, v23 + 33);
              v25 = *(a1 + 108);
              *(a1 + 164) += v23 + 32;
              v26 = v25 >> -v23;
              HEVC_RBSP::flush_bits(a1, v23 + 32);
              v27 = v26 + ~(-2 << (v23 + 31));
            }

            *(*(a2 + 8) + 4 * v11) = v27;
            if (a5)
            {
              v28 = *(a1 + 104);
              if ((v28 & 0x8000000000000000) != 0)
              {
                ++*(a1 + 164);
                HEVC_RBSP::flush_bits(a1, 1);
                v35 = 0;
              }

              else
              {
                v29 = HIDWORD(v28);
                v30 = -32;
                do
                {
                  LODWORD(v29) = 2 * v29;
                  v31 = v30 + 1;
                  if ((v29 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v32 = v30 + 32;
                  ++v30;
                }

                while (v32 < 0x1E);
                *(a1 + 164) += v31 + 33;
                HEVC_RBSP::flush_bits(a1, v31 + 33);
                v33 = *(a1 + 108);
                *(a1 + 164) += v31 + 32;
                v34 = v33 >> -v31;
                HEVC_RBSP::flush_bits(a1, v31 + 32);
                v35 = v34 + ~(-2 << (v31 + 31));
              }

              *(*(a2 + 16) + 4 * v11) = v35;
              v36 = *(a1 + 104);
              if ((v36 & 0x8000000000000000) != 0)
              {
                ++*(a1 + 164);
                HEVC_RBSP::flush_bits(a1, 1);
                v43 = 0;
              }

              else
              {
                v37 = HIDWORD(v36);
                v38 = -32;
                do
                {
                  LODWORD(v37) = 2 * v37;
                  v39 = v38 + 1;
                  if ((v37 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v40 = v38 + 32;
                  ++v38;
                }

                while (v40 < 0x1E);
                *(a1 + 164) += v39 + 33;
                HEVC_RBSP::flush_bits(a1, v39 + 33);
                v41 = *(a1 + 108);
                *(a1 + 164) += v39 + 32;
                v42 = v41 >> -v39;
                HEVC_RBSP::flush_bits(a1, v39 + 32);
                v43 = v42 + ~(-2 << (v39 + 31));
              }

              *(*(a2 + 24) + 4 * v11) = v43;
            }

            v44 = *(a1 + 104);
            ++*(a1 + 164);
            v45 = v44 >> 63;
            HEVC_RBSP::flush_bits(a1, 1);
            *(*(a2 + 32) + v11++) = v45;
          }

          while (v11 <= a4);
          *(a2 + 40) = v5;
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t HEVC_RBSP::calcRepFormat(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*a2 == -1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "calcRepFormat";
      v6 = MEMORY[0x277D86220];
      v7 = "AppleAVD: %s: VPS doesn't exist to calc rep format!\n";
LABEL_14:
      _os_log_impl(&dword_277606000, v6, OS_LOG_TYPE_DEFAULT, v7, &v12, 0xCu);
    }
  }

  else
  {
    if (!*(a3 + 22847))
    {
      return 0;
    }

    v4 = *(a2 + 4448);
    v5 = (*(a3 + 3592) ? a3 + 3596 : *(v4 + 512) + 28 * *(v4 + 2 * a4 + 580) + 4);
    v8 = *(v4 + 736);
    if (!v8)
    {
      return 0;
    }

    v9 = *v5;
    if (v9 < *(v4 + 3904) + 1)
    {
      result = 0;
      v11 = v8 + 48 * v9;
      *(a3 + 3600) = *(v11 + 4);
      *(a3 + 3608) = *(v11 + 12);
      *(a3 + 3636) = *(v11 + 20);
      *(a3 + 3620) = *(v11 + 32);
      return result;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "calcRepFormat";
      v6 = MEMORY[0x277D86220];
      v7 = "AppleAVD: %s - bad repFormatIdx ";
      goto LABEL_14;
    }
  }

  return 0xFFFFFFFFLL;
}

void HEVC_RBSP::calcSpsMaxDecPicBufferingMinus1(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (*(a3 + 22847))
  {
    v5 = *(a2 + 4448);
    if (*(v5 + 3864) <= a4)
    {
      v8 = *(*(v5 + 528) + 12 * a4 + 8);
      v7 = (*(v5 + 3872) + 8 * v8 + 8);
      v6 = v8 + 1;
    }

    else
    {
      v6 = a4;
      v7 = (*(v5 + 3872) + 8 * a4);
    }

    v9 = *(*(v5 + 3880) + 2 * v6);
    if (*(*(v5 + 3880) + 2 * v6))
    {
      v10 = 0;
      v11 = *v7;
      while (*(v11 + 2 * v10) != a5)
      {
        if (v9 == ++v10)
        {
          LODWORD(v10) = v9;
          break;
        }
      }

      v10 = v10;
    }

    else
    {
      v10 = 0;
    }

    v12 = *(*(*(v5 + 3928) + 8 * a4) + 8 * v10);
    v13 = *(*(v5 + 3936) + 8 * a4);
    v14 = *(*(v5 + 3944) + 8 * a4);
    v15 = (a3 + 3652);
    v16 = (*(a3 + 4) + 1);
    do
    {
      v18 = *v12++;
      v17 = v18;
      v20 = *v13++;
      v19 = v20;
      v21 = *v14++;
      *v15 = v17;
      v15[64] = v19;
      v15[128] = v21;
      ++v15;
      --v16;
    }

    while (v16);
  }
}

uint64_t HEVC_RBSP::parseScalingListData(HEVC_RBSP *this, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v67 = *MEMORY[0x277D85DE8];
  *(a2 + 6192) = 16191;
  *(a2 + 6195) = 265;
  v56 = a2 + 6192;
  *(a2 + 6194) = 63;
  v58 = a2 + 6144;
  v6 = a2;
  while (2)
  {
    v55 = v5;
    v7 = 0;
    v8 = 16 << (2 * v4);
    if (v8 >= 0x40)
    {
      v8 = 64;
    }

    v9 = 32;
    if (!v4)
    {
      v9 = 8;
    }

    v10 = *(this + v9);
    if (v8 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v8;
    }

    v12 = 6;
    if (v4 == 3)
    {
      v12 = 2;
    }

    v59 = v6;
    v60 = v12;
    v62 = 1;
    v57 = v4 - 2;
    v61 = v6;
    do
    {
      v13 = *(this + 13);
      ++*(this + 41);
      HEVC_RBSP::flush_bits(this, 1);
      if (v13 < 0)
      {
        if (v4 < 2)
        {
          LOBYTE(v36) = 8;
        }

        else
        {
          v27 = *(this + 13);
          if ((v27 & 0x8000000000000000) != 0)
          {
            ++*(this + 41);
            HEVC_RBSP::flush_bits(this, 1);
            v34 = 0;
          }

          else
          {
            v28 = HIDWORD(v27);
            v29 = -32;
            do
            {
              LODWORD(v28) = 2 * v28;
              v30 = v29 + 1;
              if ((v28 & 0x80000000) != 0)
              {
                break;
              }

              v31 = v29 + 32;
              ++v29;
            }

            while (v31 < 0x1E);
            *(this + 41) += v30 + 33;
            HEVC_RBSP::flush_bits(this, v30 + 33);
            v32 = *(this + 27);
            *(this + 41) += v30 + 32;
            v33 = v32 >> -v30;
            HEVC_RBSP::flush_bits(this, v30 + 32);
            v34 = v33 + ~(-2 << (v30 + 31));
          }

          v36 = (((v34 | 0xFFFFFFFE) + 1) ^ ((v34 + 1) >> 1)) - (v34 & 1) + 9;
          *(v58 + 24 * v57 + 4 * v7) = v36;
        }

        for (i = 0; i != v11; ++i)
        {
          v45 = *(this + 13);
          if ((v45 & 0x8000000000000000) != 0)
          {
            ++*(this + 41);
            HEVC_RBSP::flush_bits(this, 1);
            v52 = 0;
          }

          else
          {
            v46 = HIDWORD(v45);
            v47 = -32;
            do
            {
              LODWORD(v46) = 2 * v46;
              v48 = v47 + 1;
              if ((v46 & 0x80000000) != 0)
              {
                break;
              }

              v49 = v47 + 32;
              ++v47;
            }

            while (v49 < 0x1E);
            *(this + 41) += v48 + 33;
            HEVC_RBSP::flush_bits(this, v48 + 33);
            v50 = *(this + 27);
            *(this + 41) += v48 + 32;
            v51 = v50 >> -v48;
            HEVC_RBSP::flush_bits(this, v48 + 32);
            v52 = v51 + ~(-2 << (v48 + 31));
          }

          v36 = (((v52 & 1) == 0) + v36 + (-((v52 & 1) == 0) ^ ((v52 + 1) >> 1)));
          *(a2 + 1536 * v4 + (v7 << 8) + 4 * v10[i]) = v36;
        }
      }

      else
      {
        v14 = *(this + 13);
        if ((v14 & 0x8000000000000000) != 0)
        {
          ++*(this + 41);
          HEVC_RBSP::flush_bits(this, 1);
          *(v56 + v4) &= ~(1 << v7);
          if (v4)
          {
            if (v4 == 1 || (*(v58 + 24 * v57 + 4 * v7) = 16, v4 != 3))
            {
              v35 = v7 < 3;
            }

            else
            {
              v35 = v7 == 0;
            }

            v37 = !v35;
            v38 = &defaultInterScalingList8x8;
            if (!v37)
            {
              v38 = &defaultIntraScalingList8x8;
            }

            v39 = v11;
            v40 = v10;
            do
            {
              v42 = *v38++;
              v41 = v42;
              v43 = *v40++;
              *(a2 + 1536 * v4 + (v7 << 8) + 4 * v43) = v41;
              --v39;
            }

            while (v39);
          }

          else
          {
            memset_pattern16((a2 + (v7 << 8)), &unk_27775DC60, (4 * v11));
          }
        }

        else
        {
          v15 = HIDWORD(v14);
          v16 = -32;
          do
          {
            LODWORD(v15) = 2 * v15;
            v17 = v16 + 1;
            if ((v15 & 0x80000000) != 0)
            {
              break;
            }

            v18 = v16 + 32;
            ++v16;
          }

          while (v18 < 0x1E);
          *(this + 41) += v17 + 33;
          HEVC_RBSP::flush_bits(this, v17 + 33);
          v19 = *(this + 27);
          *(this + 41) += v17 + 32;
          v20 = v19 >> -v17;
          HEVC_RBSP::flush_bits(this, v17 + 32);
          v21 = -2 << (v17 + 31);
          v22 = v20 + ~v21;
          if (v7 < v22)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              v64 = v7;
              v65 = 1024;
              v66 = v22;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: matrixId %d < scaling_list_pred_matrix_id_delta %d", buf, 0xEu);
            }

            v53 = v55;
            return v53 & 1;
          }

          if (v4 >= 2)
          {
            *(v58 + 24 * (v4 - 2) + 4 * v7) = *(v58 + 24 * (v4 - 2) + 4 * (v7 - v22));
          }

          v23 = &v59[64 * (v21 + v62 - v20)];
          v24 = v11;
          v25 = v61;
          do
          {
            v26 = *v23++;
            *v25++ = v26;
            --v24;
          }

          while (v24);
        }
      }

      ++v7;
      ++v62;
      v61 += 64;
    }

    while (v7 != v60);
    v5 = v4 > 2;
    v6 = v59 + 384;
    if (++v4 != 4)
    {
      continue;
    }

    break;
  }

  v53 = 1;
  return v53 & 1;
}

uint64_t HEVC_RBSP::parseShortTermRefPicSet(HEVC_RBSP *this, uint64_t a2, unsigned int a3, int a4)
{
  v106 = *MEMORY[0x277D85DE8];
  v5 = (a2 + 176 * a3);
  if (a3)
  {
    v9 = *(this + 13);
    ++*(this + 41);
    HEVC_RBSP::flush_bits(this, 1);
    if (v9 < 0)
    {
      if (a3 == a4)
      {
        v52 = *(this + 13);
        if ((v52 & 0x8000000000000000) == 0)
        {
          v53 = HIDWORD(v52);
          v54 = -32;
          do
          {
            LODWORD(v53) = 2 * v53;
            v55 = v54 + 1;
            if ((v53 & 0x80000000) != 0)
            {
              break;
            }

            v56 = v54 + 32;
            ++v54;
          }

          while (v56 < 0x1E);
          *(this + 41) += v55 + 33;
          HEVC_RBSP::flush_bits(this, v55 + 33);
          v57 = *(this + 27);
          *(this + 41) += v55 + 32;
          v58 = v57 >> -v55;
          HEVC_RBSP::flush_bits(this, v55 + 32);
          v59 = v58 + ~(-2 << (v55 + 31));
          if (v59 > a3 - 1)
          {
            return 0;
          }

LABEL_52:
          v60 = *(this + 13);
          ++*(this + 41);
          HEVC_RBSP::flush_bits(this, 1);
          v61 = *(this + 13);
          if ((v61 & 0x8000000000000000) != 0)
          {
            ++*(this + 41);
            HEVC_RBSP::flush_bits(this, 1);
            v68 = 0;
          }

          else
          {
            v62 = HIDWORD(v61);
            v63 = -32;
            do
            {
              LODWORD(v62) = 2 * v62;
              v64 = v63 + 1;
              if ((v62 & 0x80000000) != 0)
              {
                break;
              }

              v65 = v63 + 32;
              ++v63;
            }

            while (v65 < 0x1E);
            *(this + 41) += v64 + 33;
            HEVC_RBSP::flush_bits(this, v64 + 33);
            v66 = *(this + 27);
            *(this + 41) += v64 + 32;
            v67 = v66 >> -v64;
            HEVC_RBSP::flush_bits(this, v64 + 32);
            v68 = v67 + ~(-2 << (v64 + 31));
            if (v68 >= 0x8000)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316418;
                v94 = "parseShortTermRefPicSet";
                v95 = 1024;
                v96 = 2879;
                v97 = 2080;
                v98 = "abs_delta_rps_minus1";
                v99 = 1024;
                v100 = v68;
                v101 = 1024;
                v102 = 0;
                v103 = 1024;
                v104 = 0x7FFF;
                _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n", buf, 0x2Eu);
              }

              return 0;
            }
          }

          v69 = 0;
          v70 = ~v59 + a3;
          *v5 = v70;
          v71 = (a2 + 176 * v70);
          do
          {
            v72 = *(this + 13);
            ++*(this + 41);
            LOBYTE(v73) = 1;
            HEVC_RBSP::flush_bits(this, 1);
            v105[v69 + 16] = v72 < 0;
            if ((v72 & 0x8000000000000000) == 0)
            {
              v74 = *(this + 13);
              ++*(this + 41);
              v73 = v74 >> 63;
              HEVC_RBSP::flush_bits(this, 1);
            }

            v105[v69++] = v73;
          }

          while (v69 <= v71[3]);
          v75 = v68 + 1 - (v68 + 1) * ((v60 >> 62) & 2);
          v76 = v71[2];
          v77 = (v76 - 1);
          if (v76 - 1 < 0)
          {
            v78 = 0;
            if ((v75 & 0x80000000) == 0)
            {
              goto LABEL_76;
            }
          }

          else
          {
            v78 = 0;
            do
            {
              v79 = v71[v77 + 28] + v75;
              if (v79 < 0 && v105[(v77 + v71[1])])
              {
                v5[v78 + 12] = v79;
                *(v5 + v78++ + 16) = v105[(v77 + v71[1]) + 16];
              }

              v80 = v77-- <= 0;
            }

            while (!v80);
            if ((v75 & 0x80000000) == 0)
            {
LABEL_76:
              v82 = v71[1];
              if (v82)
              {
                for (i = 0; i < v82; ++i)
                {
                  v84 = v71[i + 12] + v75;
                  if (v84 < 0 && v105[i])
                  {
                    v5[v78 + 12] = v84;
                    *(v5 + v78++ + 16) = v105[i + 16];
                    v82 = v71[1];
                  }
                }
              }

              v5[1] = v78;
              if (v78 <= 0xF)
              {
                v85 = v71[1];
                v86 = (v85 - 1);
                if (v85 - 1 < 0)
                {
                  v87 = 0;
                }

                else
                {
                  v87 = 0;
                  do
                  {
                    v88 = v71[v86 + 12] + v75;
                    if (v88 >= 1 && v105[v86])
                    {
                      v5[v87 + 28] = v88;
                      *(v5 + v87++ + 32) = v105[v86 + 16];
                    }

                    v80 = v86-- <= 0;
                  }

                  while (!v80);
                }

                if (v75 > 0 && v105[v71[3]])
                {
                  v5[v87 + 28] = v75;
                  v89 = v5 + v87++;
                  v89[32] = v105[v71[3] + 16];
                }

                v90 = v71[2];
                if (v90)
                {
                  for (j = 0; j < v90; ++j)
                  {
                    v92 = v71[j + 28] + v75;
                    if (v92 >= 1 && v105[(j + v71[1])])
                    {
                      v5[v87 + 28] = v92;
                      *(v5 + v87++ + 32) = v105[(j + v71[1]) + 16];
                      v90 = v71[2];
                    }
                  }
                }

                v5[2] = v87;
                v5[3] = v78 + v87;
                if (v87 <= 0xF && v78 + v87 < 0x10)
                {
                  return 1;
                }
              }

              return 0;
            }
          }

          if (v105[v71[3]])
          {
            v5[v78 + 12] = v75;
            v81 = v5 + v78++;
            v81[16] = v105[v71[3] + 16];
          }

          goto LABEL_76;
        }

        ++*(this + 41);
        HEVC_RBSP::flush_bits(this, 1);
      }

      v59 = 0;
      goto LABEL_52;
    }
  }

  v10 = *(this + 13);
  if ((v10 & 0x8000000000000000) != 0)
  {
    ++*(this + 41);
    HEVC_RBSP::flush_bits(this, 1);
    v17 = 0;
  }

  else
  {
    v11 = HIDWORD(v10);
    v12 = -32;
    do
    {
      LODWORD(v11) = 2 * v11;
      v13 = v12 + 1;
      if ((v11 & 0x80000000) != 0)
      {
        break;
      }

      v14 = v12 + 32;
      ++v12;
    }

    while (v14 < 0x1E);
    *(this + 41) += v13 + 33;
    HEVC_RBSP::flush_bits(this, v13 + 33);
    v15 = *(this + 27);
    *(this + 41) += v13 + 32;
    v16 = v15 >> -v13;
    HEVC_RBSP::flush_bits(this, v13 + 32);
    v17 = v16 + ~(-2 << (v13 + 31));
  }

  v5[1] = v17;
  v18 = *(this + 13);
  if ((v18 & 0x8000000000000000) != 0)
  {
    ++*(this + 41);
    HEVC_RBSP::flush_bits(this, 1);
    v25 = 0;
  }

  else
  {
    v19 = HIDWORD(v18);
    v20 = -32;
    do
    {
      LODWORD(v19) = 2 * v19;
      v21 = v20 + 1;
      if ((v19 & 0x80000000) != 0)
      {
        break;
      }

      v22 = v20 + 32;
      ++v20;
    }

    while (v22 < 0x1E);
    *(this + 41) += v21 + 33;
    HEVC_RBSP::flush_bits(this, v21 + 33);
    v23 = *(this + 27);
    *(this + 41) += v21 + 32;
    v24 = v23 >> -v21;
    HEVC_RBSP::flush_bits(this, v21 + 32);
    v25 = v24 + ~(-2 << (v21 + 31));
  }

  result = 0;
  v27 = v5[1];
  v5[2] = v25;
  v5[3] = v27 + v25;
  if (v27 <= 0xF && ((v27 + v25) | v25) <= 0xF)
  {
    if (v27)
    {
      v28 = 0;
      v29 = (v5 + 12);
      do
      {
        v30 = *(this + 13);
        if ((v30 & 0x8000000000000000) != 0)
        {
          ++*(this + 41);
          HEVC_RBSP::flush_bits(this, 1);
          v37 = -1;
        }

        else
        {
          v31 = HIDWORD(v30);
          v32 = -32;
          do
          {
            LODWORD(v31) = 2 * v31;
            v33 = v32 + 1;
            if ((v31 & 0x80000000) != 0)
            {
              break;
            }

            v34 = v32 + 32;
            ++v32;
          }

          while (v34 < 0x1E);
          *(this + 41) += v33 + 33;
          HEVC_RBSP::flush_bits(this, v33 + 33);
          v35 = *(this + 27);
          *(this + 41) += v33 + 32;
          v36 = v35 >> -v33;
          HEVC_RBSP::flush_bits(this, v33 + 32);
          v37 = (-2 << (v33 + 31)) - v36;
        }

        v38 = *(this + 13);
        ++*(this + 41);
        v39 = v38 >> 63;
        HEVC_RBSP::flush_bits(this, 1);
        *(v5 + v28 + 16) = v39;
        if (v28)
        {
          v29[v28] = v29[v28 - 1] + v37;
        }

        else
        {
          *v29 = v37;
        }

        ++v28;
      }

      while (v28 < v5[1]);
      v25 = v5[2];
    }

    if (v25)
    {
      v40 = 0;
      v41 = (v5 + 28);
      do
      {
        v42 = *(this + 13);
        if ((v42 & 0x8000000000000000) != 0)
        {
          ++*(this + 41);
          v49 = 1;
          HEVC_RBSP::flush_bits(this, 1);
        }

        else
        {
          v43 = HIDWORD(v42);
          v44 = -32;
          do
          {
            LODWORD(v43) = 2 * v43;
            v45 = v44 + 1;
            if ((v43 & 0x80000000) != 0)
            {
              break;
            }

            v46 = v44 + 32;
            ++v44;
          }

          while (v46 < 0x1E);
          *(this + 41) += v45 + 33;
          HEVC_RBSP::flush_bits(this, v45 + 33);
          v47 = *(this + 27);
          *(this + 41) += v45 + 32;
          v48 = v47 >> -v45;
          HEVC_RBSP::flush_bits(this, v45 + 32);
          v49 = v48 + (2 << (v45 + 31));
        }

        v50 = *(this + 13);
        ++*(this + 41);
        v51 = v50 >> 63;
        HEVC_RBSP::flush_bits(this, 1);
        *(v5 + v40 + 32) = v51;
        if (v40)
        {
          v41[v40] = v41[v40 - 1] + v49;
        }

        else
        {
          *v41 = v49;
        }

        ++v40;
      }

      while (v40 < v5[2]);
    }

    return 1;
  }

  return result;
}

uint64_t HEVC_RBSP::parseSpsRangeExtension(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 104);
  ++*(a1 + 164);
  v5 = v4 >> 63;
  HEVC_RBSP::flush_bits(a1, 1);
  *a2 = v5;
  v6 = *(a1 + 104);
  ++*(a1 + 164);
  v7 = v6 >> 63;
  HEVC_RBSP::flush_bits(a1, 1);
  a2[1] = v7;
  v8 = *(a1 + 104);
  ++*(a1 + 164);
  v9 = v8 >> 63;
  HEVC_RBSP::flush_bits(a1, 1);
  a2[2] = v9;
  v10 = *(a1 + 104);
  ++*(a1 + 164);
  v11 = v10 >> 63;
  HEVC_RBSP::flush_bits(a1, 1);
  a2[3] = v11;
  v12 = *(a1 + 104);
  ++*(a1 + 164);
  v13 = v12 >> 63;
  HEVC_RBSP::flush_bits(a1, 1);
  a2[4] = v13;
  v14 = *(a1 + 104);
  ++*(a1 + 164);
  v15 = v14 >> 63;
  HEVC_RBSP::flush_bits(a1, 1);
  a2[5] = v15;
  v16 = *(a1 + 104);
  ++*(a1 + 164);
  v17 = v16 >> 63;
  HEVC_RBSP::flush_bits(a1, 1);
  a2[6] = v17;
  v18 = *(a1 + 104);
  ++*(a1 + 164);
  v19 = v18 >> 63;
  HEVC_RBSP::flush_bits(a1, 1);
  a2[7] = v19;
  v20 = *(a1 + 104);
  ++*(a1 + 164);
  v21 = v20 >> 63;
  result = HEVC_RBSP::flush_bits(a1, 1);
  a2[8] = v21;
  return result;
}

uint64_t calcTilePositions(uint64_t result, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(result + 64))
  {
    v2 = 0;
    v3 = *(result + 56);
    v4 = v3 + 1;
    if ((v3 + 1) > 1)
    {
      v5 = (v3 + 1);
    }

    else
    {
      v5 = 1;
    }

    do
    {
      v6 = *(a2 + 22880) * (v2 + 1) / v4 - *(a2 + 22880) * v2 / v4;
      v33[v2] = v6;
      *(result + 68 + 4 * v2++) = v6 - 1;
    }

    while (v5 != v2);
    v7 = 0;
    v8 = *(result + 60);
    v9 = v8 + 1;
    if ((v8 + 1) > 1)
    {
      v10 = (v8 + 1);
    }

    else
    {
      v10 = 1;
    }

    do
    {
      v11 = *(a2 + 22888) * (v7 + 1) / v9 - *(a2 + 22888) * v7 / v9;
      *&v32[4 * v7] = v11;
      *(result + 148 + 4 * v7++) = v11 - 1;
    }

    while (v10 != v7);
  }

  else
  {
    v12 = *(a2 + 22880);
    v13 = *(result + 56);
    v33[v13] = v12;
    if (v13)
    {
      v14 = (result + 68);
      v15 = v13;
      v16 = v33;
      do
      {
        v17 = *v14++;
        *v16++ = v17 + 1;
        v12 = v33[v13] - (v17 + 1);
        v33[v13] = v12;
        --v15;
      }

      while (v15);
    }

    *(result + 4 * v13 + 68) = v12 - 1;
    v18 = *(a2 + 22888);
    v19 = *(result + 60);
    *&v32[4 * v19] = v18;
    if (v19)
    {
      v20 = (result + 148);
      v21 = v19;
      v22 = v32;
      do
      {
        v23 = *v20++;
        *v22++ = v23 + 1;
        v18 = *&v32[4 * v19] - (v23 + 1);
        *&v32[4 * v19] = v18;
        --v21;
      }

      while (v21);
    }

    *(result + 4 * v19 + 148) = v18 - 1;
    if ((v13 + 1) > 1)
    {
      v5 = (v13 + 1);
    }

    else
    {
      v5 = 1;
    }
  }

  v24 = 0;
  v25 = 0;
  *(result + 9676) = 0;
  *(result + 9760) = 0;
  v26 = 4 * v5;
  do
  {
    v25 += v33[v24 / 4];
    *(result + 9680 + v24) = v25;
    v24 += 4;
  }

  while (v26 != v24);
  v27 = 0;
  v28 = *(result + 60);
  if ((v28 + 1) > 1)
  {
    v29 = v28 + 1;
  }

  else
  {
    v29 = 1;
  }

  v30 = *(result + 9760);
  v31 = 4 * v29;
  do
  {
    v30 += *&v32[v27];
    *(result + 9764 + v27) = v30;
    v27 += 4;
  }

  while (v31 != v27);
  return result;
}

uint64_t HEVC_RBSP::parsePpsRangeExtension(HEVC_RBSP *this, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 33))
  {
    v5 = *(this + 13);
    if ((v5 & 0x8000000000000000) != 0)
    {
      ++*(this + 41);
      HEVC_RBSP::flush_bits(this, 1);
      v12 = 0;
    }

    else
    {
      v6 = HIDWORD(v5);
      v7 = -32;
      do
      {
        LODWORD(v6) = 2 * v6;
        v8 = v7 + 1;
        if ((v6 & 0x80000000) != 0)
        {
          break;
        }

        v9 = v7 + 32;
        ++v7;
      }

      while (v9 < 0x1E);
      *(this + 41) += v8 + 33;
      HEVC_RBSP::flush_bits(this, v8 + 33);
      v10 = *(this + 27);
      *(this + 41) += v8 + 32;
      v11 = v10 >> -v8;
      HEVC_RBSP::flush_bits(this, v8 + 32);
      v12 = v11 + ~(-2 << (v8 + 31));
    }

    *a3 = v12;
  }

  v13 = *(this + 13);
  ++*(this + 41);
  v14 = v13 >> 63;
  HEVC_RBSP::flush_bits(this, 1);
  *(a3 + 4) = v14;
  v15 = *(this + 13);
  ++*(this + 41);
  HEVC_RBSP::flush_bits(this, 1);
  *(a3 + 5) = v15 < 0;
  if (v15 < 0)
  {
    v16 = *(this + 13);
    if ((v16 & 0x8000000000000000) != 0)
    {
      ++*(this + 41);
      HEVC_RBSP::flush_bits(this, 1);
      v23 = 0;
    }

    else
    {
      v17 = HIDWORD(v16);
      v18 = -32;
      do
      {
        LODWORD(v17) = 2 * v17;
        v19 = v18 + 1;
        if ((v17 & 0x80000000) != 0)
        {
          break;
        }

        v20 = v18 + 32;
        ++v18;
      }

      while (v20 < 0x1E);
      *(this + 41) += v19 + 33;
      HEVC_RBSP::flush_bits(this, v19 + 33);
      v21 = *(this + 27);
      *(this + 41) += v19 + 32;
      v22 = v21 >> -v19;
      HEVC_RBSP::flush_bits(this, v19 + 32);
      v23 = v22 + ~(-2 << (v19 + 31));
    }

    *(a3 + 8) = v23;
    v24 = *(this + 13);
    if ((v24 & 0x8000000000000000) != 0)
    {
      ++*(this + 41);
      HEVC_RBSP::flush_bits(this, 1);
      *(a3 + 12) = 0;
      v33 = (a3 + 12);
    }

    else
    {
      v25 = HIDWORD(v24);
      v26 = -32;
      do
      {
        LODWORD(v25) = 2 * v25;
        v27 = v26 + 1;
        if ((v25 & 0x80000000) != 0)
        {
          break;
        }

        v28 = v26 + 32;
        ++v26;
      }

      while (v28 < 0x1E);
      *(this + 41) += v27 + 33;
      HEVC_RBSP::flush_bits(this, v27 + 33);
      v29 = *(this + 27);
      *(this + 41) += v27 + 32;
      v30 = v29 >> -v27;
      HEVC_RBSP::flush_bits(this, v27 + 32);
      result = 0;
      v32 = v30 + ~(-2 << (v27 + 31));
      *(a3 + 12) = v32;
      v33 = (a3 + 12);
      if (v32 > 5)
      {
        return result;
      }
    }

    v34 = 0;
    do
    {
      v35 = *(this + 13);
      if ((v35 & 0x8000000000000000) != 0)
      {
        ++*(this + 41);
        HEVC_RBSP::flush_bits(this, 1);
        v42 = 0;
      }

      else
      {
        v36 = HIDWORD(v35);
        v37 = -32;
        do
        {
          LODWORD(v36) = 2 * v36;
          v38 = v37 + 1;
          if ((v36 & 0x80000000) != 0)
          {
            break;
          }

          v39 = v37 + 32;
          ++v37;
        }

        while (v39 < 0x1E);
        *(this + 41) += v38 + 33;
        HEVC_RBSP::flush_bits(this, v38 + 33);
        v40 = *(this + 27);
        *(this + 41) += v38 + 32;
        v41 = v40 >> -v38;
        HEVC_RBSP::flush_bits(this, v38 + 32);
        v42 = v41 + ~(-2 << (v38 + 31));
      }

      *(a3 + 16 + 4 * v34) = (-((v42 & 1) == 0) ^ ((v42 + 1) >> 1)) + ((v42 & 1) == 0);
      v43 = *(this + 13);
      if ((v43 & 0x8000000000000000) != 0)
      {
        ++*(this + 41);
        HEVC_RBSP::flush_bits(this, 1);
        v50 = 0;
      }

      else
      {
        v44 = HIDWORD(v43);
        v45 = -32;
        do
        {
          LODWORD(v44) = 2 * v44;
          v46 = v45 + 1;
          if ((v44 & 0x80000000) != 0)
          {
            break;
          }

          v47 = v45 + 32;
          ++v45;
        }

        while (v47 < 0x1E);
        *(this + 41) += v46 + 33;
        HEVC_RBSP::flush_bits(this, v46 + 33);
        v48 = *(this + 27);
        *(this + 41) += v46 + 32;
        v49 = v48 >> -v46;
        HEVC_RBSP::flush_bits(this, v46 + 32);
        v50 = v49 + ~(-2 << (v46 + 31));
      }

      *(a3 + 40 + 4 * v34++) = (-((v50 & 1) == 0) ^ ((v50 + 1) >> 1)) + ((v50 & 1) == 0);
    }

    while (v34 <= *v33);
  }

  v51 = *(this + 13);
  if ((v51 & 0x8000000000000000) != 0)
  {
    ++*(this + 41);
    HEVC_RBSP::flush_bits(this, 1);
    v58 = 0;
  }

  else
  {
    v52 = HIDWORD(v51);
    v53 = -32;
    do
    {
      LODWORD(v52) = 2 * v52;
      v54 = v53 + 1;
      if ((v52 & 0x80000000) != 0)
      {
        break;
      }

      v55 = v53 + 32;
      ++v53;
    }

    while (v55 < 0x1E);
    *(this + 41) += v54 + 33;
    HEVC_RBSP::flush_bits(this, v54 + 33);
    v56 = *(this + 27);
    *(this + 41) += v54 + 32;
    v57 = v56 >> -v54;
    HEVC_RBSP::flush_bits(this, v54 + 32);
    v58 = v57 + ~(-2 << (v54 + 31));
  }

  *(a3 + 64) = v58;
  v59 = *(this + 13);
  if ((v59 & 0x8000000000000000) != 0)
  {
    ++*(this + 41);
    HEVC_RBSP::flush_bits(this, 1);
    v66 = 0;
  }

  else
  {
    v60 = HIDWORD(v59);
    v61 = -32;
    do
    {
      LODWORD(v60) = 2 * v60;
      v62 = v61 + 1;
      if ((v60 & 0x80000000) != 0)
      {
        break;
      }

      v63 = v61 + 32;
      ++v61;
    }

    while (v63 < 0x1E);
    *(this + 41) += v62 + 33;
    HEVC_RBSP::flush_bits(this, v62 + 33);
    v64 = *(this + 27);
    *(this + 41) += v62 + 32;
    v65 = v64 >> -v62;
    HEVC_RBSP::flush_bits(this, v62 + 32);
    v66 = v65 + ~(-2 << (v62 + 31));
  }

  *(a3 + 68) = v66;
  return 1;
}

uint64_t HEVC_RBSP::parsePpsMultiLayerExtension(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  ++*(a1 + 164);
  v5 = v4 >> 63;
  HEVC_RBSP::flush_bits(a1, 1);
  *a2 = v5;
  v6 = *(a1 + 104);
  ++*(a1 + 164);
  HEVC_RBSP::flush_bits(a1, 1);
  *(a2 + 1) = v6 < 0;
  if (v6 < 0)
  {
    v7 = *(a1 + 104);
    *(a1 + 164) += 6;
    v8 = v7 >> 58;
    HEVC_RBSP::flush_bits(a1, 6);
    *(a2 + 4) = v8;
  }

  v9 = *(a1 + 104);
  if ((v9 & 0x8000000000000000) != 0)
  {
    ++*(a1 + 164);
    HEVC_RBSP::flush_bits(a1, 1);
    v16 = 0;
    *(a2 + 8) = 0;
    v17 = (a2 + 8);
  }

  else
  {
    v10 = HIDWORD(v9);
    v11 = -32;
    do
    {
      LODWORD(v10) = 2 * v10;
      v12 = v11 + 1;
      if ((v10 & 0x80000000) != 0)
      {
        break;
      }

      v13 = v11 + 32;
      ++v11;
    }

    while (v13 < 0x1E);
    *(a1 + 164) += v12 + 33;
    HEVC_RBSP::flush_bits(a1, v12 + 33);
    v14 = *(a1 + 108);
    *(a1 + 164) += v12 + 32;
    v15 = v14 >> -v12;
    HEVC_RBSP::flush_bits(a1, v12 + 32);
    v16 = v15 + ~(-2 << (v12 + 31));
    *(a2 + 8) = v16;
    v17 = (a2 + 8);
    if (v16 > 0x3F)
    {
      return 0;
    }
  }

  v18 = malloc_type_malloc(4 * v16, 0x100004052888210uLL);
  *(a2 + 16) = v18;
  if (!v18)
  {
    return 0;
  }

  v19 = malloc_type_malloc(*(a2 + 8), 0x100004077774924uLL);
  *(a2 + 24) = v19;
  if (!v19)
  {
    return 0;
  }

  v20 = malloc_type_malloc(*(a2 + 8), 0x100004077774924uLL);
  *(a2 + 1056) = v20;
  if (!v20)
  {
    return 0;
  }

  v21 = malloc_type_malloc(*(a2 + 8), 0x100004077774924uLL);
  *(a2 + 2088) = v21;
  if (!v21)
  {
    return 0;
  }

  if (*v17)
  {
    v22 = 0;
    do
    {
      v23 = *(a1 + 104);
      *(a1 + 164) += 6;
      v24 = v23 >> 58;
      HEVC_RBSP::flush_bits(a1, 6);
      *(*(a2 + 16) + 4 * v22) = v24;
      v25 = *(a1 + 104);
      ++*(a1 + 164);
      v26 = v25 >> 63;
      HEVC_RBSP::flush_bits(a1, 1);
      *(*(a2 + 24) + v22) = v26;
      if (*(*(a2 + 24) + v22))
      {
        v27 = *(a1 + 104);
        if ((v27 & 0x8000000000000000) != 0)
        {
          ++*(a1 + 164);
          HEVC_RBSP::flush_bits(a1, 1);
          v34 = 0;
        }

        else
        {
          v28 = HIDWORD(v27);
          v29 = -32;
          do
          {
            LODWORD(v28) = 2 * v28;
            v30 = v29 + 1;
            if ((v28 & 0x80000000) != 0)
            {
              break;
            }

            v31 = v29 + 32;
            ++v29;
          }

          while (v31 < 0x1E);
          *(a1 + 164) += v30 + 33;
          HEVC_RBSP::flush_bits(a1, v30 + 33);
          v32 = *(a1 + 108);
          *(a1 + 164) += v30 + 32;
          v33 = v32 >> -v30;
          HEVC_RBSP::flush_bits(a1, v30 + 32);
          v34 = v33 + ~(-2 << (v30 + 31));
        }

        *(a2 + 32 + 4 * *(*(a2 + 16) + 4 * v22)) = (-((v34 & 1) == 0) ^ ((v34 + 1) >> 1)) + ((v34 & 1) == 0);
        v35 = *(a1 + 104);
        if ((v35 & 0x8000000000000000) != 0)
        {
          ++*(a1 + 164);
          HEVC_RBSP::flush_bits(a1, 1);
          v42 = 0;
        }

        else
        {
          v36 = HIDWORD(v35);
          v37 = -32;
          do
          {
            LODWORD(v36) = 2 * v36;
            v38 = v37 + 1;
            if ((v36 & 0x80000000) != 0)
            {
              break;
            }

            v39 = v37 + 32;
            ++v37;
          }

          while (v39 < 0x1E);
          *(a1 + 164) += v38 + 33;
          HEVC_RBSP::flush_bits(a1, v38 + 33);
          v40 = *(a1 + 108);
          *(a1 + 164) += v38 + 32;
          v41 = v40 >> -v38;
          HEVC_RBSP::flush_bits(a1, v38 + 32);
          v42 = v41 + ~(-2 << (v38 + 31));
        }

        *(a2 + 288 + 4 * *(*(a2 + 16) + 4 * v22)) = (-((v42 & 1) == 0) ^ ((v42 + 1) >> 1)) + ((v42 & 1) == 0);
        v43 = *(a1 + 104);
        if ((v43 & 0x8000000000000000) != 0)
        {
          ++*(a1 + 164);
          HEVC_RBSP::flush_bits(a1, 1);
          v50 = 0;
        }

        else
        {
          v44 = HIDWORD(v43);
          v45 = -32;
          do
          {
            LODWORD(v44) = 2 * v44;
            v46 = v45 + 1;
            if ((v44 & 0x80000000) != 0)
            {
              break;
            }

            v47 = v45 + 32;
            ++v45;
          }

          while (v47 < 0x1E);
          *(a1 + 164) += v46 + 33;
          HEVC_RBSP::flush_bits(a1, v46 + 33);
          v48 = *(a1 + 108);
          *(a1 + 164) += v46 + 32;
          v49 = v48 >> -v46;
          HEVC_RBSP::flush_bits(a1, v46 + 32);
          v50 = v49 + ~(-2 << (v46 + 31));
        }

        *(a2 + 544 + 4 * *(*(a2 + 16) + 4 * v22)) = (-((v50 & 1) == 0) ^ ((v50 + 1) >> 1)) + ((v50 & 1) == 0);
        v51 = *(a1 + 104);
        if ((v51 & 0x8000000000000000) != 0)
        {
          ++*(a1 + 164);
          HEVC_RBSP::flush_bits(a1, 1);
          v58 = 0;
        }

        else
        {
          v52 = HIDWORD(v51);
          v53 = -32;
          do
          {
            LODWORD(v52) = 2 * v52;
            v54 = v53 + 1;
            if ((v52 & 0x80000000) != 0)
            {
              break;
            }

            v55 = v53 + 32;
            ++v53;
          }

          while (v55 < 0x1E);
          *(a1 + 164) += v54 + 33;
          HEVC_RBSP::flush_bits(a1, v54 + 33);
          v56 = *(a1 + 108);
          *(a1 + 164) += v54 + 32;
          v57 = v56 >> -v54;
          HEVC_RBSP::flush_bits(a1, v54 + 32);
          v58 = v57 + ~(-2 << (v54 + 31));
        }

        *(a2 + 800 + 4 * *(*(a2 + 16) + 4 * v22)) = (-((v58 & 1) == 0) ^ ((v58 + 1) >> 1)) + ((v58 & 1) == 0);
      }

      v59 = *(a1 + 104);
      ++*(a1 + 164);
      v60 = v59 >> 63;
      HEVC_RBSP::flush_bits(a1, 1);
      *(*(a2 + 1056) + v22) = v60;
      if (*(*(a2 + 1056) + v22))
      {
        v61 = *(a1 + 104);
        if ((v61 & 0x8000000000000000) != 0)
        {
          ++*(a1 + 164);
          HEVC_RBSP::flush_bits(a1, 1);
          v68 = 0;
        }

        else
        {
          v62 = HIDWORD(v61);
          v63 = -32;
          do
          {
            LODWORD(v62) = 2 * v62;
            v64 = v63 + 1;
            if ((v62 & 0x80000000) != 0)
            {
              break;
            }

            v65 = v63 + 32;
            ++v63;
          }

          while (v65 < 0x1E);
          *(a1 + 164) += v64 + 33;
          HEVC_RBSP::flush_bits(a1, v64 + 33);
          v66 = *(a1 + 108);
          *(a1 + 164) += v64 + 32;
          v67 = v66 >> -v64;
          HEVC_RBSP::flush_bits(a1, v64 + 32);
          v68 = v67 + ~(-2 << (v64 + 31));
        }

        *(a2 + 1064 + 4 * *(*(a2 + 16) + 4 * v22)) = (-((v68 & 1) == 0) ^ ((v68 + 1) >> 1)) + ((v68 & 1) == 0);
        v69 = *(a1 + 104);
        if ((v69 & 0x8000000000000000) != 0)
        {
          ++*(a1 + 164);
          HEVC_RBSP::flush_bits(a1, 1);
          v76 = 0;
        }

        else
        {
          v70 = HIDWORD(v69);
          v71 = -32;
          do
          {
            LODWORD(v70) = 2 * v70;
            v72 = v71 + 1;
            if ((v70 & 0x80000000) != 0)
            {
              break;
            }

            v73 = v71 + 32;
            ++v71;
          }

          while (v73 < 0x1E);
          *(a1 + 164) += v72 + 33;
          HEVC_RBSP::flush_bits(a1, v72 + 33);
          v74 = *(a1 + 108);
          *(a1 + 164) += v72 + 32;
          v75 = v74 >> -v72;
          HEVC_RBSP::flush_bits(a1, v72 + 32);
          v76 = v75 + ~(-2 << (v72 + 31));
        }

        *(a2 + 1320 + 4 * *(*(a2 + 16) + 4 * v22)) = (-((v76 & 1) == 0) ^ ((v76 + 1) >> 1)) + ((v76 & 1) == 0);
        v77 = *(a1 + 104);
        if ((v77 & 0x8000000000000000) != 0)
        {
          ++*(a1 + 164);
          HEVC_RBSP::flush_bits(a1, 1);
          v84 = 0;
        }

        else
        {
          v78 = HIDWORD(v77);
          v79 = -32;
          do
          {
            LODWORD(v78) = 2 * v78;
            v80 = v79 + 1;
            if ((v78 & 0x80000000) != 0)
            {
              break;
            }

            v81 = v79 + 32;
            ++v79;
          }

          while (v81 < 0x1E);
          *(a1 + 164) += v80 + 33;
          HEVC_RBSP::flush_bits(a1, v80 + 33);
          v82 = *(a1 + 108);
          *(a1 + 164) += v80 + 32;
          v83 = v82 >> -v80;
          HEVC_RBSP::flush_bits(a1, v80 + 32);
          v84 = v83 + ~(-2 << (v80 + 31));
        }

        *(a2 + 1576 + 4 * *(*(a2 + 16) + 4 * v22)) = (-((v84 & 1) == 0) ^ ((v84 + 1) >> 1)) + ((v84 & 1) == 0);
        v85 = *(a1 + 104);
        if ((v85 & 0x8000000000000000) != 0)
        {
          ++*(a1 + 164);
          HEVC_RBSP::flush_bits(a1, 1);
          v92 = 0;
        }

        else
        {
          v86 = HIDWORD(v85);
          v87 = -32;
          do
          {
            LODWORD(v86) = 2 * v86;
            v88 = v87 + 1;
            if ((v86 & 0x80000000) != 0)
            {
              break;
            }

            v89 = v87 + 32;
            ++v87;
          }

          while (v89 < 0x1E);
          *(a1 + 164) += v88 + 33;
          HEVC_RBSP::flush_bits(a1, v88 + 33);
          v90 = *(a1 + 108);
          *(a1 + 164) += v88 + 32;
          v91 = v90 >> -v88;
          HEVC_RBSP::flush_bits(a1, v88 + 32);
          v92 = v91 + ~(-2 << (v88 + 31));
        }

        *(a2 + 1832 + 4 * *(*(a2 + 16) + 4 * v22)) = (-((v92 & 1) == 0) ^ ((v92 + 1) >> 1)) + ((v92 & 1) == 0);
      }

      v93 = *(a1 + 104);
      ++*(a1 + 164);
      v94 = v93 >> 63;
      HEVC_RBSP::flush_bits(a1, 1);
      *(*(a2 + 2088) + v22) = v94;
      if (*(*(a2 + 2088) + v22))
      {
        v95 = *(a1 + 104);
        if ((v95 & 0x8000000000000000) != 0)
        {
          ++*(a1 + 164);
          HEVC_RBSP::flush_bits(a1, 1);
          v102 = 0;
        }

        else
        {
          v96 = HIDWORD(v95);
          v97 = -32;
          do
          {
            LODWORD(v96) = 2 * v96;
            v98 = v97 + 1;
            if ((v96 & 0x80000000) != 0)
            {
              break;
            }

            v99 = v97 + 32;
            ++v97;
          }

          while (v99 < 0x1E);
          *(a1 + 164) += v98 + 33;
          HEVC_RBSP::flush_bits(a1, v98 + 33);
          v100 = *(a1 + 108);
          *(a1 + 164) += v98 + 32;
          v101 = v100 >> -v98;
          HEVC_RBSP::flush_bits(a1, v98 + 32);
          v102 = v101 + ~(-2 << (v98 + 31));
        }

        *(a2 + 2096 + 4 * *(*(a2 + 16) + 4 * v22)) = (-((v102 & 1) == 0) ^ ((v102 + 1) >> 1)) + ((v102 & 1) == 0);
        v103 = *(a1 + 104);
        if ((v103 & 0x8000000000000000) != 0)
        {
          ++*(a1 + 164);
          HEVC_RBSP::flush_bits(a1, 1);
          v110 = 0;
        }

        else
        {
          v104 = HIDWORD(v103);
          v105 = -32;
          do
          {
            LODWORD(v104) = 2 * v104;
            v106 = v105 + 1;
            if ((v104 & 0x80000000) != 0)
            {
              break;
            }

            v107 = v105 + 32;
            ++v105;
          }

          while (v107 < 0x1E);
          *(a1 + 164) += v106 + 33;
          HEVC_RBSP::flush_bits(a1, v106 + 33);
          v108 = *(a1 + 108);
          *(a1 + 164) += v106 + 32;
          v109 = v108 >> -v106;
          HEVC_RBSP::flush_bits(a1, v106 + 32);
          v110 = v109 + ~(-2 << (v106 + 31));
        }

        *(a2 + 2352 + 4 * *(*(a2 + 16) + 4 * v22)) = (-((v110 & 1) == 0) ^ ((v110 + 1) >> 1)) + ((v110 & 1) == 0);
        v111 = *(a1 + 104);
        if ((v111 & 0x8000000000000000) != 0)
        {
          ++*(a1 + 164);
          HEVC_RBSP::flush_bits(a1, 1);
          v118 = 0;
        }

        else
        {
          v112 = HIDWORD(v111);
          v113 = -32;
          do
          {
            LODWORD(v112) = 2 * v112;
            v114 = v113 + 1;
            if ((v112 & 0x80000000) != 0)
            {
              break;
            }

            v115 = v113 + 32;
            ++v113;
          }

          while (v115 < 0x1E);
          *(a1 + 164) += v114 + 33;
          HEVC_RBSP::flush_bits(a1, v114 + 33);
          v116 = *(a1 + 108);
          *(a1 + 164) += v114 + 32;
          v117 = v116 >> -v114;
          HEVC_RBSP::flush_bits(a1, v114 + 32);
          v118 = v117 + ~(-2 << (v114 + 31));
        }

        *(a2 + 2608 + 4 * *(*(a2 + 16) + 4 * v22)) = (-((v118 & 1) == 0) ^ ((v118 + 1) >> 1)) + ((v118 & 1) == 0);
        v119 = *(a1 + 104);
        if ((v119 & 0x8000000000000000) != 0)
        {
          ++*(a1 + 164);
          HEVC_RBSP::flush_bits(a1, 1);
          v126 = 0;
        }

        else
        {
          v120 = HIDWORD(v119);
          v121 = -32;
          do
          {
            LODWORD(v120) = 2 * v120;
            v122 = v121 + 1;
            if ((v120 & 0x80000000) != 0)
            {
              break;
            }

            v123 = v121 + 32;
            ++v121;
          }

          while (v123 < 0x1E);
          *(a1 + 164) += v122 + 33;
          HEVC_RBSP::flush_bits(a1, v122 + 33);
          v124 = *(a1 + 108);
          *(a1 + 164) += v122 + 32;
          v125 = v124 >> -v122;
          HEVC_RBSP::flush_bits(a1, v122 + 32);
          v126 = v125 + ~(-2 << (v122 + 31));
        }

        *(a2 + 2864 + 4 * *(*(a2 + 16) + 4 * v22)) = (-((v126 & 1) == 0) ^ ((v126 + 1) >> 1)) + ((v126 & 1) == 0);
      }

      ++v22;
    }

    while (v22 < *v17);
  }

  v127 = *(a1 + 104);
  ++*(a1 + 164);
  v128 = v127 >> 63;
  v129 = 1;
  HEVC_RBSP::flush_bits(a1, 1);
  *(a2 + 3120) = v128;
  return v129;
}

uint64_t HEVC_RBSP::calcNumActiveRefLayerPics(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = 0;
  if (a3)
  {
    v6 = *(a2 + 4448);
    if (v6)
    {
      result = HEVC_RBSP::calcNumReflayerPics(0, a2, a3, a4);
      if (result)
      {
        if ((*(v6 + 714) & 1) == 0)
        {
          if (*(a5 + 38))
          {
            if ((*(v6 + 745) & 1) != 0 || *(*(v6 + 512) + 28 * *(v6 + 2 * a3 + 580) + 18) == 1)
            {
              return 1;
            }

            else
            {
              return (*(a5 + 40) + 1);
            }
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t HEVC_RBSP::calcNumReflayerPics(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 4448);
  v5 = *(v4 + 512);
  v6 = v4 + 580;
  v7 = *(v4 + 580 + 2 * a3);
  v8 = *(v5 + 28 * v7 + 18);
  if (!*(v5 + 28 * v7 + 18))
  {
    return 0;
  }

  LODWORD(result) = 0;
  v10 = *(v4 + 520);
  v11 = (*(v10 + 8 * v7) + 6);
  do
  {
    v12 = *v11;
    v11 += 7;
    v13 = *(v6 + 2 * v12);
    v14 = *(v5 + 28 * v13 + 24);
    v15 = v14 < a4;
    v16 = v14 >= a4;
    if (!v15 && a4 != 0)
    {
      v16 = *(*(v10 + 8 * v13) + 14 * v7) > a4;
    }

    result = (result + v16);
    --v8;
  }

  while (v8);
  return result;
}

uint64_t HEVC_RBSP::calcReflayerPicIdc(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v5 = *(a2 + 4448);
  v6 = *(v5 + 512);
  v7 = v5 + 580;
  v8 = *(v5 + 580 + 2 * a3);
  if (*(v6 + 28 * v8 + 18))
  {
    result = 0;
    v10 = 0;
    v11 = *(v5 + 520);
    v12 = (*(v11 + 8 * v8) + 6);
    do
    {
      v13 = *v12;
      v12 += 7;
      v14 = *(v7 + 2 * v13);
      if (*(v6 + 28 * v14 + 24) >= a5 && (!a5 || *(*(v11 + 8 * v14) + 14 * v8) > a5))
      {
        if (v10 == a4)
        {
          return result;
        }

        ++v10;
      }

      ++result;
    }

    while (*(v6 + 28 * v8 + 18) != result);
  }

  return 0xFFFFFFFFLL;
}

uint64_t HEVC_RBSP::parseRefPicListsModification(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 104);
  ++*(a1 + 164);
  HEVC_RBSP::flush_bits(a1, 1);
  *(a2 + 604) = v4 < 0;
  v5 = 32 - __clz(*(a2 + 1900) - 1);
  if (*(a2 + 1900) == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (v4 < 0 && (*(a2 + 596) & 0x80000000) == 0)
  {
    v8 = (a2 + 608);
    v9 = -1;
    while (1)
    {
      v10 = *(a1 + 108);
      *(a1 + 164) += v6;
      v11 = v10 >> (32 - v6);
      HEVC_RBSP::flush_bits(a1, v6);
      *v8 = v11;
      if (v11 >= 8)
      {
        break;
      }

      ++v9;
      ++v8;
      if (v9 >= *(a2 + 596))
      {
        goto LABEL_5;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v19 = 136316418;
    v20 = "parseRefPicListsModification";
    v21 = 1024;
    v22 = 4158;
    v23 = 2080;
    v24 = "slice->list_entry_l0[ i ]";
    v25 = 1024;
    v26 = v11;
    v27 = 1024;
    v28 = 0;
    v29 = 1024;
    v30 = 7;
    v17 = MEMORY[0x277D86220];
    goto LABEL_22;
  }

LABEL_5:
  if (*(a2 + 20))
  {
    return 1;
  }

  v12 = *(a1 + 104);
  ++*(a1 + 164);
  v7 = 1;
  HEVC_RBSP::flush_bits(a1, 1);
  *(a2 + 605) = v12 < 0;
  if (v12 < 0 && (*(a2 + 600) & 0x80000000) == 0)
  {
    v13 = (a2 + 672);
    v14 = -1;
    while (1)
    {
      v15 = *(a1 + 108);
      *(a1 + 164) += v6;
      v16 = v15 >> (32 - v6);
      HEVC_RBSP::flush_bits(a1, v6);
      *v13 = v16;
      if (v16 >= 8)
      {
        break;
      }

      ++v14;
      ++v13;
      if (v14 >= *(a2 + 600))
      {
        return 1;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v19 = 136316418;
    v20 = "parseRefPicListsModification";
    v21 = 1024;
    v22 = 4168;
    v23 = 2080;
    v24 = "slice->list_entry_l1[ i ]";
    v25 = 1024;
    v26 = v16;
    v27 = 1024;
    v28 = 0;
    v29 = 1024;
    v30 = 7;
    v17 = MEMORY[0x277D86220];
LABEL_22:
    _os_log_impl(&dword_277606000, v17, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n", &v19, 0x2Eu);
    return 0;
  }

  return v7;
}

BOOL HEVC_RBSP::parsePredWeightTable(HEVC_RBSP *this, uint64_t a2, _DWORD *a3, int a4)
{
  if (*(a2 + 22842))
  {
    v7 = 1 << (*(a2 + 3636) + 7);
    v8 = 1 << (*(a2 + 3640) + 7);
  }

  else
  {
    v8 = 128;
    v7 = 128;
  }

  v9 = *(this + 13);
  if ((v9 & 0x8000000000000000) != 0)
  {
    ++*(this + 41);
    HEVC_RBSP::flush_bits(this, 1);
    a3[186] = 0;
    if (!a4)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = HIDWORD(v9);
    v11 = -32;
    do
    {
      LODWORD(v10) = 2 * v10;
      v12 = v11 + 1;
      if ((v10 & 0x80000000) != 0)
      {
        break;
      }

      v13 = v11 + 32;
      ++v11;
    }

    while (v13 < 0x1E);
    *(this + 41) += v12 + 33;
    HEVC_RBSP::flush_bits(this, v12 + 33);
    v14 = *(this + 27);
    *(this + 41) += v12 + 32;
    v15 = v14 >> -v12;
    HEVC_RBSP::flush_bits(this, v12 + 32);
    v16 = v15 + ~(-2 << (v12 + 31));
    a3[186] = v16;
    if (v16 > 7)
    {
      return 0;
    }

    if (!a4)
    {
      goto LABEL_19;
    }
  }

  v17 = *(this + 13);
  if ((v17 & 0x8000000000000000) != 0)
  {
    ++*(this + 41);
    HEVC_RBSP::flush_bits(this, 1);
    v24 = 0;
  }

  else
  {
    v18 = HIDWORD(v17);
    v19 = -32;
    do
    {
      LODWORD(v18) = 2 * v18;
      v20 = v19 + 1;
      if ((v18 & 0x80000000) != 0)
      {
        break;
      }

      v21 = v19 + 32;
      ++v19;
    }

    while (v21 < 0x1E);
    *(this + 41) += v20 + 33;
    HEVC_RBSP::flush_bits(this, v20 + 33);
    v22 = *(this + 27);
    *(this + 41) += v20 + 32;
    v23 = v22 >> -v20;
    HEVC_RBSP::flush_bits(this, v20 + 32);
    v24 = v23 + ~(-2 << (v20 + 31));
  }

  v25 = (-((v24 & 1) == 0) ^ ((v24 + 1) >> 1)) + ((v24 & 1) == 0);
  a3[187] = v25;
  if (v25 + a3[186] > 7)
  {
    return 0;
  }

LABEL_19:
  LODWORD(v26) = a3[149];
  if ((v26 & 0x80000000) == 0)
  {
    v27 = 752;
    do
    {
      v28 = *(this + 13);
      ++*(this + 41);
      v29 = v28 >> 63;
      HEVC_RBSP::flush_bits(this, 1);
      *(a3 + v27) = v29;
      v26 = a3[149];
      v30 = v27 - 752;
      ++v27;
    }

    while (v30 < v26);
  }

  v160 = v8;
  v145 = a4;
  if (a4)
  {
    if ((v26 & 0x80000000) != 0)
    {
LABEL_78:
      v36 = 0;
LABEL_79:
      if (a3[5])
      {
        return v36 < 0x19;
      }

      LODWORD(v86) = a3[150];
      if ((v86 & 0x80000000) == 0)
      {
        v87 = 1168;
        do
        {
          v88 = *(this + 13);
          ++*(this + 41);
          v89 = v88 >> 63;
          HEVC_RBSP::flush_bits(this, 1);
          *(a3 + v87) = v89;
          v86 = a3[150];
          v90 = v87 - 1168;
          ++v87;
        }

        while (v90 < v86);
      }

      if (v145)
      {
        if ((v86 & 0x80000000) != 0)
        {
          return v36 < 0x19;
        }

        v91 = 1184;
        do
        {
          v92 = *(this + 13);
          ++*(this + 41);
          v93 = v92 >> 63;
          HEVC_RBSP::flush_bits(this, 1);
          *(a3 + v91) = v93;
          v86 = a3[150];
          v94 = v91 - 1184;
          ++v91;
        }

        while (v94 < v86);
      }

      if ((v86 & 0x80000000) == 0)
      {
        v95 = 0;
        v96 = a3 + 292;
        v149 = -v7;
        v155 = a3 + 300;
        v157 = -v8;
        v159 = v8 - 1;
        v153 = v7;
        while (1)
        {
          if (*(v96 + v95))
          {
            v97 = *(this + 13);
            if ((v97 & 0x8000000000000000) != 0)
            {
              ++*(this + 41);
              HEVC_RBSP::flush_bits(this, 1);
              v104 = 0;
            }

            else
            {
              v98 = HIDWORD(v97);
              v99 = -32;
              do
              {
                LODWORD(v98) = 2 * v98;
                v100 = v99 + 1;
                if ((v98 & 0x80000000) != 0)
                {
                  break;
                }

                v101 = v99 + 32;
                ++v99;
              }

              while (v101 < 0x1E);
              *(this + 41) += v100 + 33;
              HEVC_RBSP::flush_bits(this, v100 + 33);
              v102 = *(this + 27);
              *(this + 41) += v100 + 32;
              v103 = v102 >> -v100;
              HEVC_RBSP::flush_bits(this, v100 + 32);
              v104 = v103 + ~(-2 << (v100 + 31));
            }

            v155[v95] = (-((v104 & 1) == 0) ^ ((v104 + 1) >> 1)) + ((v104 & 1) == 0);
            v105 = *(this + 13);
            if ((v105 & 0x8000000000000000) != 0)
            {
              ++*(this + 41);
              HEVC_RBSP::flush_bits(this, 1);
              v112 = 0;
            }

            else
            {
              v106 = HIDWORD(v105);
              v107 = -32;
              do
              {
                LODWORD(v106) = 2 * v106;
                v108 = v107 + 1;
                if ((v106 & 0x80000000) != 0)
                {
                  break;
                }

                v109 = v107 + 32;
                ++v107;
              }

              while (v109 < 0x1E);
              *(this + 41) += v108 + 33;
              HEVC_RBSP::flush_bits(this, v108 + 33);
              v110 = *(this + 27);
              *(this + 41) += v108 + 32;
              v111 = v110 >> -v108;
              HEVC_RBSP::flush_bits(this, v108 + 32);
              v112 = v111 + ~(-2 << (v108 + 31));
            }

            result = 0;
            v113 = (-((v112 & 1) == 0) ^ ((v112 + 1) >> 1)) + ((v112 & 1) == 0);
            a3[v95 + 316] = v113;
            if (v155[v95] != v155[v95])
            {
              return result;
            }

            if (v113 < v149 || v113 >= v7)
            {
              return result;
            }

            ++v36;
          }

          if (*(a3 + v95 + 1184))
          {
            break;
          }

          v7 = v153;
LABEL_138:
          v57 = v95++ < a3[150];
          v96 = a3 + 292;
          if (!v57)
          {
            return v36 < 0x19;
          }
        }

        v115 = 0;
        v116 = v95;
        v117 = &a3[2 * v95 + 332];
        v151 = v36 + 2;
        v118 = 1;
        v119 = &a3[2 * v116 + 364];
        v147 = v116;
        v120 = &a3[2 * v116 + 428];
        while (1)
        {
          v121 = v118;
          v122 = *(this + 13);
          if ((v122 & 0x8000000000000000) != 0)
          {
            ++*(this + 41);
            HEVC_RBSP::flush_bits(this, 1);
            v129 = 0;
          }

          else
          {
            v123 = HIDWORD(v122);
            v124 = -32;
            do
            {
              LODWORD(v123) = 2 * v123;
              v125 = v124 + 1;
              if ((v123 & 0x80000000) != 0)
              {
                break;
              }

              v126 = v124 + 32;
              ++v124;
            }

            while (v126 < 0x1E);
            *(this + 41) += v125 + 33;
            HEVC_RBSP::flush_bits(this, v125 + 33);
            v127 = *(this + 27);
            *(this + 41) += v125 + 32;
            v128 = v127 >> -v125;
            HEVC_RBSP::flush_bits(this, v125 + 32);
            v129 = v128 + ~(-2 << (v125 + 31));
          }

          *(v117 + 4 * v115) = (-((v129 & 1) == 0) ^ ((v129 + 1) >> 1)) + ((v129 & 1) == 0);
          v130 = *(this + 13);
          if ((v130 & 0x8000000000000000) != 0)
          {
            ++*(this + 41);
            HEVC_RBSP::flush_bits(this, 1);
            v137 = 0;
          }

          else
          {
            v131 = HIDWORD(v130);
            v132 = -32;
            do
            {
              LODWORD(v131) = 2 * v131;
              v133 = v132 + 1;
              if ((v131 & 0x80000000) != 0)
              {
                break;
              }

              v134 = v132 + 32;
              ++v132;
            }

            while (v134 < 0x1E);
            *(this + 41) += v133 + 33;
            HEVC_RBSP::flush_bits(this, v133 + 33);
            v135 = *(this + 27);
            *(this + 41) += v133 + 32;
            v136 = v135 >> -v133;
            HEVC_RBSP::flush_bits(this, v133 + 32);
            v137 = v136 + ~(-2 << (v133 + 31));
          }

          result = 0;
          v138 = (-((v137 & 1) == 0) ^ ((v137 + 1) >> 1)) + ((v137 & 1) == 0);
          v139 = *(v117 + 4 * v115);
          v140 = a3[187] + a3[186];
          v141 = (((1 << v140) + v139) * v160) >> v140;
          *(v119 + 4 * v115) = v138;
          v57 = v138 < v141;
          v142 = v138 - v141 + v160;
          v143 = v159;
          if (v57)
          {
            v143 = v142;
          }

          if (v142 < v157)
          {
            v143 = v157;
          }

          if (v139 != v139)
          {
            return result;
          }

          if (v143 < v157 || v143 >= v160)
          {
            return result;
          }

          v118 = 0;
          *(v120 + 4 * v115) = v143;
          v115 = 1;
          if ((v121 & 1) == 0)
          {
            v36 = v151;
            v7 = v153;
            v95 = v147;
            goto LABEL_138;
          }
        }
      }

      return v36 < 0x19;
    }

    v31 = 768;
    do
    {
      v32 = *(this + 13);
      ++*(this + 41);
      v33 = v32 >> 63;
      HEVC_RBSP::flush_bits(this, 1);
      *(a3 + v31) = v33;
      v26 = a3[149];
      v34 = v31 - 768;
      ++v31;
    }

    while (v34 < v26);
  }

  if ((v26 & 0x80000000) != 0)
  {
    goto LABEL_78;
  }

  v35 = 0;
  v36 = 0;
  v37 = a3 + 188;
  v148 = -v7;
  v154 = a3 + 196;
  v38 = -v8;
  v158 = v8 - 1;
  v152 = v7;
  while (1)
  {
    if (*(v37 + v35))
    {
      v39 = *(this + 13);
      if ((v39 & 0x8000000000000000) != 0)
      {
        ++*(this + 41);
        HEVC_RBSP::flush_bits(this, 1);
        v46 = 0;
      }

      else
      {
        v40 = HIDWORD(v39);
        v41 = -32;
        do
        {
          LODWORD(v40) = 2 * v40;
          v42 = v41 + 1;
          if ((v40 & 0x80000000) != 0)
          {
            break;
          }

          v43 = v41 + 32;
          ++v41;
        }

        while (v43 < 0x1E);
        *(this + 41) += v42 + 33;
        HEVC_RBSP::flush_bits(this, v42 + 33);
        v44 = *(this + 27);
        *(this + 41) += v42 + 32;
        v45 = v44 >> -v42;
        HEVC_RBSP::flush_bits(this, v42 + 32);
        v46 = v45 + ~(-2 << (v42 + 31));
        v8 = v160;
      }

      v154[v35] = (-((v46 & 1) == 0) ^ ((v46 + 1) >> 1)) + ((v46 & 1) == 0);
      v47 = *(this + 13);
      if ((v47 & 0x8000000000000000) != 0)
      {
        ++*(this + 41);
        HEVC_RBSP::flush_bits(this, 1);
        v54 = 0;
      }

      else
      {
        v48 = HIDWORD(v47);
        v49 = -32;
        do
        {
          LODWORD(v48) = 2 * v48;
          v50 = v49 + 1;
          if ((v48 & 0x80000000) != 0)
          {
            break;
          }

          v51 = v49 + 32;
          ++v49;
        }

        while (v51 < 0x1E);
        *(this + 41) += v50 + 33;
        HEVC_RBSP::flush_bits(this, v50 + 33);
        v52 = *(this + 27);
        *(this + 41) += v50 + 32;
        v53 = v52 >> -v50;
        HEVC_RBSP::flush_bits(this, v50 + 32);
        v54 = v53 + ~(-2 << (v50 + 31));
        v8 = v160;
      }

      result = 0;
      v56 = (-((v54 & 1) == 0) ^ ((v54 + 1) >> 1)) + ((v54 & 1) == 0);
      a3[v35 + 212] = v56;
      if (v154[v35] != v154[v35])
      {
        return result;
      }

      v57 = v56 >= v148 && v56 < v7;
      if (!v57)
      {
        return result;
      }

      ++v36;
    }

    if (*(a3 + v35 + 768))
    {
      break;
    }

    v7 = v152;
LABEL_75:
    v57 = v35++ < a3[149];
    v37 = a3 + 188;
    if (!v57)
    {
      goto LABEL_79;
    }
  }

  v58 = 0;
  v59 = &a3[2 * v35 + 228];
  v150 = v36 + 2;
  v60 = 1;
  v61 = &a3[2 * v35 + 260];
  v146 = v35;
  v156 = &a3[2 * v35 + 396];
  while (1)
  {
    v62 = v60;
    v63 = *(this + 13);
    if ((v63 & 0x8000000000000000) != 0)
    {
      ++*(this + 41);
      HEVC_RBSP::flush_bits(this, 1);
      v70 = 0;
    }

    else
    {
      v64 = HIDWORD(v63);
      v65 = -32;
      do
      {
        LODWORD(v64) = 2 * v64;
        v66 = v65 + 1;
        if ((v64 & 0x80000000) != 0)
        {
          break;
        }

        v67 = v65 + 32;
        ++v65;
      }

      while (v67 < 0x1E);
      *(this + 41) += v66 + 33;
      HEVC_RBSP::flush_bits(this, v66 + 33);
      v68 = *(this + 27);
      *(this + 41) += v66 + 32;
      v69 = v68 >> -v66;
      HEVC_RBSP::flush_bits(this, v66 + 32);
      v70 = v69 + ~(-2 << (v66 + 31));
    }

    *(v59 + 4 * v58) = (-((v70 & 1) == 0) ^ ((v70 + 1) >> 1)) + ((v70 & 1) == 0);
    v71 = *(this + 13);
    if ((v71 & 0x8000000000000000) != 0)
    {
      ++*(this + 41);
      HEVC_RBSP::flush_bits(this, 1);
      v78 = 0;
    }

    else
    {
      v72 = HIDWORD(v71);
      v73 = -32;
      do
      {
        LODWORD(v72) = 2 * v72;
        v74 = v73 + 1;
        if ((v72 & 0x80000000) != 0)
        {
          break;
        }

        v75 = v73 + 32;
        ++v73;
      }

      while (v75 < 0x1E);
      *(this + 41) += v74 + 33;
      HEVC_RBSP::flush_bits(this, v74 + 33);
      v76 = *(this + 27);
      *(this + 41) += v74 + 32;
      v77 = v76 >> -v74;
      HEVC_RBSP::flush_bits(this, v74 + 32);
      v78 = v77 + ~(-2 << (v74 + 31));
    }

    result = 0;
    v79 = (-((v78 & 1) == 0) ^ ((v78 + 1) >> 1)) + ((v78 & 1) == 0);
    v80 = *(v59 + 4 * v58);
    v81 = a3[187] + a3[186];
    v8 = v160;
    v82 = (((1 << v81) + v80) * v160) >> v81;
    *(v61 + 4 * v58) = v79;
    v57 = v79 < v82;
    v83 = v79 - v82 + v160;
    v84 = v158;
    if (v57)
    {
      v84 = v83;
    }

    if (v83 < v38)
    {
      v84 = v38;
    }

    if (v80 != v80)
    {
      return result;
    }

    if (v84 < v38 || v84 >= v160)
    {
      return result;
    }

    v60 = 0;
    *(v156 + 4 * v58) = v84;
    v58 = 1;
    if ((v62 & 1) == 0)
    {
      v36 = v150;
      v7 = v152;
      v35 = v146;
      goto LABEL_75;
    }
  }
}

void *HevcCopyDependentSliceHeader(__int16 *a1, const void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = *(a1 + 8);
  v6 = *(a1 + 3);
  v7 = *(a1 + 235);
  v8 = *(a1 + 234);
  result = memcpy(a1, a2, 0x808uLL);
  *a1 = v3;
  *(a1 + 1) = v4;
  *(a1 + 8) = v5;
  *(a1 + 3) = v6;
  *(a1 + 234) = v8;
  *(a1 + 235) = v7;
  return result;
}

uint64_t releaseTargetLayerIdLists(uint64_t a1)
{
  v1 = *(a1 + 4448);
  v2 = *(v1 + 3872);
  if (v2)
  {
    if (*(v1 + 3866))
    {
      v3 = 0;
      do
      {
        free(*(*(v1 + 3872) + 8 * v3));
        *(*(v1 + 3872) + 8 * v3++) = 0;
      }

      while (v3 < *(v1 + 3866));
      v2 = *(v1 + 3872);
    }

    free(v2);
    *(v1 + 3872) = 0;
  }

  v4 = *(v1 + 3888);
  if (v4)
  {
    if (*(v1 + 3866))
    {
      v5 = 0;
      do
      {
        free(*(*(v1 + 3888) + 8 * v5));
        *(*(v1 + 3888) + 8 * v5++) = 0;
      }

      while (v5 < *(v1 + 3866));
      v4 = *(v1 + 3888);
    }

    free(v4);
    *(v1 + 3888) = 0;
  }

  free(*(v1 + 3880));
  *(v1 + 3880) = 0;
  free(*(v1 + 3896));
  *(v1 + 3896) = 0;
  return 0;
}

double HEVCReleaseSubLayerHRD(void **a1, int a2)
{
  if (a1)
  {
    if (a2)
    {
      free(a1[3]);
      a1[3] = 0;
      free(a1[2]);
      a1[2] = 0;
    }

    free(a1[4]);
    a1[4] = 0;
    free(a1[1]);
    a1[1] = 0;
    free(*a1);
    result = 0.0;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t AppleAVDWrapperH264DecoderCreateInstance(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  VTVideoDecoderGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "AppleAVDWrapperH264DecoderCreateInstance";
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
  }

  *a3 = 0;
  return v4;
}

void h264_createSupportedPropertyDictionary()
{
  v42 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v0 = *MEMORY[0x277CE2A10];
  v1 = *MEMORY[0x277CE29C8];
  keys = *MEMORY[0x277CE2A00];
  v29 = v1;
  v2 = *MEMORY[0x277CE29D8];
  v20 = v0;
  v21 = v2;
  *values = h264_createFrameTypesArrayElement(*MEMORY[0x277CE2748]);
  *&values[8] = h264_createFrameTypesArrayElement(*MEMORY[0x277CE2760]);
  *&values[16] = h264_createFrameTypesArrayElement(*MEMORY[0x277CE2750]);
  FrameTypesArrayElement = h264_createFrameTypesArrayElement(*MEMORY[0x277CE2758]);
  v3 = *MEMORY[0x277CBECE8];
  sH264OnlyTheseFrames = CFArrayCreate(*MEMORY[0x277CBECE8], values, 4, MEMORY[0x277CBF128]);
  if (!sH264OnlyTheseFrames && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v37 = "h264_createOnlyTheseFramesArray";
    v38 = 2080;
    v39 = "sH264OnlyTheseFrames";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %s\n", buf, 0x16u);
  }

  for (i = 0; i != 32; i += 8)
  {
    v5 = *&values[i];
    if (v5)
    {
      CFRelease(v5);
      *&values[i] = 0;
    }
  }

  if (sH264OnlyTheseFrames)
  {
    *&v30 = *MEMORY[0x277CE29E8];
    *&v22 = sH264OnlyTheseFrames;
    v6 = CFDictionaryCreate(v3, &keys, &v20, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v6)
    {
      v7 = MEMORY[0x277CBF138];
      v8 = MEMORY[0x277CBF150];
      v9 = CFDictionaryCreate(v3, 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v10 = *MEMORY[0x277CE2A18];
      v11 = *MEMORY[0x277CE2768];
      keys = *MEMORY[0x277CE2770];
      v29 = v11;
      v20 = v10;
      v21 = v10;
      v12 = *MEMORY[0x277CE29E0];
      *&v30 = v1;
      *(&v30 + 1) = v12;
      v13 = *MEMORY[0x277CE2620];
      *&v22 = v2;
      *(&v22 + 1) = v13;
      v14 = CFDictionaryCreate(v3, &keys, &v20, 4, v7, v8);
      v15 = *MEMORY[0x277CE2708];
      keys = *MEMORY[0x277CE2698];
      v29 = v15;
      v20 = v6;
      v21 = v9;
      v16 = *MEMORY[0x277CE2638];
      *&v30 = *MEMORY[0x277CE2718];
      *(&v30 + 1) = v16;
      *&v22 = v9;
      *(&v22 + 1) = v14;
      v17 = *MEMORY[0x277CE2658];
      *&v31 = *MEMORY[0x277CE26E0];
      *(&v31 + 1) = v17;
      *&v23 = v9;
      *(&v23 + 1) = v9;
      v18 = *MEMORY[0x277CE2690];
      *&v32 = *MEMORY[0x277CE26B8];
      *(&v32 + 1) = v18;
      *&v24 = v9;
      *(&v24 + 1) = v9;
      *&v33 = *MEMORY[0x277CE2710];
      *(&v33 + 1) = @"NegotiationDetails";
      *&v25 = v9;
      *(&v25 + 1) = v9;
      v19 = *MEMORY[0x277CE2688];
      *&v34 = *MEMORY[0x277CE2650];
      *(&v34 + 1) = v19;
      *&v26 = v9;
      *(&v26 + 1) = v9;
      *&v35 = @"EnableSliceQpExtraction";
      *&v27 = *MEMORY[0x277CE2A08];
      sH264VideoDecoderSupportedPropertyDictionary = CFDictionaryCreate(v3, &keys, &v20, 13, v7, v8);
    }

    else
    {
      v9 = 0;
      v14 = 0;
    }

    if (sH264OnlyTheseFrames)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v6 = 0;
    v14 = 0;
    v9 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *values = 136315394;
    *&values[4] = "h264_createSupportedPropertyDictionary";
    *&values[12] = 2080;
    *&values[14] = "sH264OnlyTheseFrames";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %s\n", values, 0x16u);
  }

LABEL_16:
  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *values = 136315394;
    *&values[4] = "h264_createSupportedPropertyDictionary";
    *&values[12] = 2080;
    *&values[14] = "onlyTheseFramesDict";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %s\n", values, 0x16u);
  }

  if (!sH264VideoDecoderSupportedPropertyDictionary && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *values = 136315394;
    *&values[4] = "h264_createSupportedPropertyDictionary";
    *&values[12] = 2080;
    *&values[14] = "sH264VideoDecoderSupportedPropertyDictionary";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %s\n", values, 0x16u);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

uint64_t AppleAVDWrapperH264DecoderInvalidate()
{
  v18 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    pthread_mutex_lock((DerivedStorage + 6432));
    v2 = *(v1 + 8816);
    if ((v2 - 1) >= 2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "AppleAVDWrapperH264DecoderInvalidate";
        v10 = 1024;
        v11 = v2;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s called but plugin state is %d", &v8, 0x12u);
      }
    }

    else
    {
      *(v1 + 8816) = 3;
      AppleAVDWrapperH264DecoderCleanUp();
    }

    pthread_mutex_unlock((v1 + 6432));
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v4)
    {
      v5 = *(v1 + 6604);
      v6 = *(v1 + 5208);
      v7 = *(v1 + 5212);
      v8 = 136316162;
      v9 = "AppleAVDWrapperH264DecoderInvalidate";
      v10 = 1024;
      v11 = v5;
      v12 = 1024;
      v13 = v6;
      v14 = 1024;
      v15 = v7;
      v16 = 2048;
      v17 = v1;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s() codecType: AVC, encryptionScheme %d, %d x %d, session: %p", &v8, 0x28u);
      return 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "AppleAVDWrapperH264DecoderInvalidate";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s called with invalid storage", &v8, 0xCu);
    }

    return 4294954393;
  }

  return result;
}

void AppleAVDWrapperH264DecoderFinalize()
{
  v19 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = 136315138;
    v10 = "AppleAVDWrapperH264DecoderFinalize";
    v3 = MEMORY[0x277D86220];
    v4 = "AppleAVD: %s called with invalid storage";
    v5 = 12;
    goto LABEL_11;
  }

  v1 = DerivedStorage;
  pthread_mutex_lock((DerivedStorage + 6432));
  v2 = *(v1 + 8816);
  if ((v2 - 1) >= 3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "AppleAVDWrapperH264DecoderFinalize";
      v11 = 1024;
      v12 = v2;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s called but plugin state is %d", &v9, 0x12u);
    }
  }

  else if (v2 != 3)
  {
    AppleAVDWrapperH264DecoderCleanUp();
  }

  pthread_mutex_unlock((v1 + 6432));
  pthread_mutex_destroy((v1 + 6432));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v1 + 6604);
    v7 = *(v1 + 5208);
    v8 = *(v1 + 5212);
    v9 = 136316162;
    v10 = "AppleAVDWrapperH264DecoderFinalize";
    v11 = 1024;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 2048;
    v18 = v1;
    v3 = MEMORY[0x277D86220];
    v4 = "AppleAVD: %s() codecType: AVC, encryptionScheme %d, %d x %d, session: %p";
    v5 = 40;
LABEL_11:
    _os_log_impl(&dword_277606000, v3, OS_LOG_TYPE_DEFAULT, v4, &v9, v5);
  }
}

__CFString *AppleAVDWrapperH264DecoderCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<AppleAVD_H264VideoDecoder %p>", a1);
  return Mutable;
}

uint64_t AppleAVDWrapperH264DecoderCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, *MEMORY[0x277CE2698]))
  {
    if (CFEqual(a2, *MEMORY[0x277CE2650]))
    {
LABEL_7:
      v11 = *MEMORY[0x277CBED28];
LABEL_8:
      v12 = CFRetain(v11);
LABEL_9:
      v13 = v12;
      result = 0;
      *a4 = v13;
      return result;
    }

    if (CFEqual(a2, *MEMORY[0x277CE2688]))
    {
      LODWORD(v19) = 0;
      v14 = *(DerivedStorage + 5184);
      if (!v14)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          HIDWORD(v19) = 136315138;
          v20 = "AppleAVDWrapperH264DecoderCopyProperty";
          v15 = MEMORY[0x277D86220];
          v16 = "AppleAVD: WARNING: %s() - trying to get FrameReceiverThreadPriority before videoContext was created!\n";
          goto LABEL_29;
        }

        return 4294954385;
      }

      if (AppleAVDGetParameter(v14, 74, &v19))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          HIDWORD(v19) = 136315138;
          v20 = "AppleAVDWrapperH264DecoderCopyProperty";
          v15 = MEMORY[0x277D86220];
          v16 = "AppleAVD: ERROR: %s() - AppleAVDGetParameter call for kAppleAVDGetFrameReceiverThreadPriority returned ERROR\n";
LABEL_29:
          _os_log_impl(&dword_277606000, v15, OS_LOG_TYPE_DEFAULT, v16, &v19 + 4, 0xCu);
          return 4294954385;
        }

        return 4294954385;
      }

      v18 = &v19;
    }

    else
    {
      if (CFEqual(a2, *MEMORY[0x277CE26E0]))
      {
        pthread_once(&sCreateSuggestedQualityOfServiceTiersOnce_0, myCreateSuggestedQualityOfServiceTiers_0);
        v11 = myVideoDecoderSuggestedQualityOfServiceTiers_0;
        if (!myVideoDecoderSuggestedQualityOfServiceTiers_0)
        {

          return FigSignalErrorAtGM();
        }

        goto LABEL_8;
      }

      if (!CFEqual(a2, *MEMORY[0x277CE2708]))
      {
        if (!CFEqual(a2, *MEMORY[0x277CE2710]))
        {
          return 4294954396;
        }

        goto LABEL_7;
      }

      v18 = (DerivedStorage + 6600);
    }

    v12 = CFNumberCreate(a3, kCFNumberSInt32Type, v18);
    goto LABEL_9;
  }

  v8 = *(DerivedStorage + 6716);
  result = 4294954396;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v10 = MEMORY[0x277CE2750];
    }

    else
    {
      if (v8 != 3)
      {
        return result;
      }

      v10 = MEMORY[0x277CE2758];
    }
  }

  else if (v8)
  {
    if (v8 != 1)
    {
      return result;
    }

    v10 = MEMORY[0x277CE2760];
  }

  else
  {
    v10 = MEMORY[0x277CE2748];
  }

  v17 = *v10;
  CFRetain(*v10);
  result = 0;
  *a4 = v17;
  return result;
}

uint64_t AppleAVDWrapperH264DecoderSetProperty(uint64_t a1, const void *a2, const __CFString *a3)
{
  valuePtr[1] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x277CE2698]))
  {
    if (!a3 || CFEqual(a3, *MEMORY[0x277CE2748]))
    {
      result = 0;
      *(DerivedStorage + 6716) = 0;
      return result;
    }

    if (CFEqual(a3, *MEMORY[0x277CE2760]))
    {
      result = 0;
      v7 = 1;
LABEL_36:
      *(DerivedStorage + 6716) = v7;
      return result;
    }

    if (CFEqual(a3, *MEMORY[0x277CE2750]))
    {
      result = 0;
      v7 = 2;
      goto LABEL_36;
    }

    if (CFEqual(a3, *MEMORY[0x277CE2758]))
    {
      result = 0;
      v7 = 3;
      goto LABEL_36;
    }

    return 4294954396;
  }

  if (!CFEqual(a2, *MEMORY[0x277CE26E0]))
  {
    v8 = (DerivedStorage + 6600);
    if (CFEqual(a2, *MEMORY[0x277CE2708]))
    {
      LODWORD(valuePtr[0]) = 0;
      CFNumberGetValue(a3, kCFNumberSInt32Type, valuePtr);
      if (LODWORD(valuePtr[0]) <= 0x2A && ((1 << SLOBYTE(valuePtr[0])) & 0x40000100002) != 0)
      {
        *v8 = valuePtr[0];
        v9 = *(DerivedStorage + 5184);
        if (!v9)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v44 = "AppleAVDWrapperH264DecoderSetProperty";
            v10 = MEMORY[0x277D86220];
            v11 = "AppleAVD: WARNING: %s() - trying to set kAppleAVDSetUsageMode before videoContext was created!\n";
            goto LABEL_31;
          }

          return 4294954385;
        }

        if (AppleAVDSetParameter(v9, 17, (DerivedStorage + 6600)))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v44 = "AppleAVDWrapperH264DecoderSetProperty";
            v10 = MEMORY[0x277D86220];
            v11 = "AppleAVD: ERROR: %s() - AppleAVDSetParameter call for kAppleAVDSetUsageMode returned ERROR\n";
LABEL_31:
            v16 = 12;
LABEL_32:
            _os_log_impl(&dword_277606000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, v16);
            return 4294954385;
          }

          return 4294954385;
        }
      }

      v15 = *(DerivedStorage + 8840);
      if (v15)
      {
        fprintf(v15, "%d usage %d\n");
      }

      return 0;
    }

    if (CFEqual(a2, *MEMORY[0x277CE2718]))
    {
      LODWORD(valuePtr[0]) = 0;
      if (a3)
      {
        CFNumberGetValue(a3, kCFNumberSInt32Type, valuePtr);
        if (LODWORD(valuePtr[0]) != 2)
        {
          v23 = *(DerivedStorage + 5184);
          if (!v23)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 4294954385;
            }

            *buf = 136315138;
            v44 = "AppleAVDWrapperH264DecoderSetProperty";
            v10 = MEMORY[0x277D86220];
            v11 = "AppleAVD: WARNING: %s() - trying to set kAppleAVDSetVRAType before videoContext was created!\n";
            goto LABEL_31;
          }

          if (AppleAVDSetParameter(v23, 30, valuePtr))
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 4294954385;
            }

            *buf = 136315138;
            v44 = "AppleAVDWrapperH264DecoderSetProperty";
            v10 = MEMORY[0x277D86220];
            v11 = "AppleAVD: ERROR: %s() - AppleAVDSetParameter call for kAppleAVDSetVRAType returned ERROR\n";
            goto LABEL_31;
          }

          v28 = *(DerivedStorage + 8840);
          if (v28)
          {
            fprintf(v28, "%d vratype %d\n");
          }

          return 0;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v12 = MEMORY[0x277D86220];
          v13 = "AppleAVD: ERROR: AppleAVD_H264VideoDecoder - AppleAVDSetParameter kAppleAVDSetVRAType: Unsupported VRA Type 2\n";
          v14 = 2;
LABEL_25:
          _os_log_impl(&dword_277606000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, v14);
        }
      }
    }

    else if (CFEqual(a2, *MEMORY[0x277CE2638]))
    {
      valuePtr[0] = 0;
      if (a3)
      {
        v17 = CFGetTypeID(a3);
        if (v17 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(a3, *MEMORY[0x277CE2770]);
          if (Value)
          {
            CFNumberGetValue(Value, kCFNumberIntType, valuePtr);
            v19 = CFDictionaryGetValue(a3, *MEMORY[0x277CE2768]);
            if (v19)
            {
              CFNumberGetValue(v19, kCFNumberIntType, valuePtr + 4);
              v20 = valuePtr[0];
              if (LODWORD(valuePtr[0]) != 1080)
              {
                v21 = HIDWORD(valuePtr[0]);
                if (HIDWORD(valuePtr[0]) != 1080 && ((LOBYTE(valuePtr[0]) | BYTE4(valuePtr[0])) & 0xF) != 0)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    v44 = "AppleAVDWrapperH264DecoderSetProperty";
                    v45 = 1024;
                    *v46 = v20;
                    *&v46[4] = 1024;
                    *&v46[6] = v21;
                    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() - Non-mod16 VRA dimensions with width %d, height %d\n", buf, 0x18u);
                  }

                  if (*(DerivedStorage + 8816) == 2 && valuePtr[0] != *(DerivedStorage + 5216))
                  {
                    return 4294954385;
                  }
                }
              }

              v22 = *(DerivedStorage + 5184);
              if (!v22)
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  return 4294954385;
                }

                *buf = 136315138;
                v44 = "AppleAVDWrapperH264DecoderSetProperty";
                v10 = MEMORY[0x277D86220];
                v11 = "AppleAVD: WARNING: %s() - trying to set kAppleAVDSetVRADimensions before videoContext was created!\n";
                goto LABEL_31;
              }

              if (AppleAVDSetParameter(v22, 31, valuePtr))
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  return 4294954385;
                }

                *buf = 136315138;
                v44 = "AppleAVDWrapperH264DecoderSetProperty";
                v10 = MEMORY[0x277D86220];
                v11 = "AppleAVD: ERROR: %s() - AppleAVDSetParameter call for kAppleAVDSetVRADimensions returned ERROR\n";
                goto LABEL_31;
              }

              v35 = *(DerivedStorage + 8840);
              if (v35)
              {
                fprintf(v35, "%d vra_res %d %d\n");
              }

              return 0;
            }
          }
        }
      }
    }

    else if (CFEqual(a2, *MEMORY[0x277CE2658]))
    {
      LODWORD(valuePtr[0]) = 0;
      if (a3)
      {
        v24 = CFGetTypeID(a3);
        if (v24 == CFNumberGetTypeID())
        {
          CFNumberGetValue(a3, kCFNumberSInt32Type, valuePtr);
          v25 = valuePtr[0];
          *(DerivedStorage + 8800) = valuePtr[0];
          if (v25)
          {
            v26 = *(DerivedStorage + 5184);
            if (!v26)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                return 4294954385;
              }

              *buf = 136315138;
              v44 = "AppleAVDWrapperH264DecoderSetProperty";
              v10 = MEMORY[0x277D86220];
              v11 = "AppleAVD: WARNING: %s() - trying to set kAppleAVDEnableIOFence before videoContext was created!\n";
              goto LABEL_31;
            }

            if (AppleAVDSetParameter(v26, 21, (DerivedStorage + 8800)))
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                return 4294954385;
              }

              *buf = 136315138;
              v44 = "AppleAVDWrapperH264DecoderSetProperty";
              v10 = MEMORY[0x277D86220];
              v11 = "AppleAVD: ERROR: %s() - AppleAVDSetParameter call for kAppleAVDEnableIOFence returned ERROR\n";
              goto LABEL_31;
            }
          }

          v30 = *(DerivedStorage + 8840);
          if (v30)
          {
            fprintf(v30, "%d enableIOFenceMode %d\n");
          }

          return 0;
        }
      }
    }

    else
    {
      if (CFEqual(a2, *MEMORY[0x277CE26B8]))
      {
        if (a3)
        {
          v27 = CFBooleanGetValue(a3);
          result = 0;
          *(DerivedStorage + 8808) = v27;
          return result;
        }

        return 4294954394;
      }

      if (CFEqual(a2, *MEMORY[0x277CE2690]))
      {
        if (a3)
        {
          v29 = CFBooleanGetValue(a3);
          result = 0;
          *(DerivedStorage + 8804) = v29;
          return result;
        }

        return 4294954394;
      }

      if (CFEqual(a2, @"NegotiationDetails"))
      {
        result = malloc_type_malloc(0x3E9uLL, 0x100004077774924uLL);
        if (!result)
        {
          return result;
        }

        v31 = result;
        LODWORD(valuePtr[0]) = 0;
        TypeID = CFStringGetTypeID();
        if (TypeID == CFGetTypeID(a3) && CFStringGetCString(a3, v31, 1001, 0x8000100u) && (v33 = strnlen(v31, 0x3E9uLL), strnstr(v31, "RVRA1:", v33)))
        {
          v34 = 1;
          LODWORD(valuePtr[0]) = 1;
        }

        else
        {
          v34 = 0;
        }

        free(v31);
        *(DerivedStorage + 6608) = v34;
        v36 = *(DerivedStorage + 5184);
        if (!v36)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return 4294954385;
          }

          *buf = 136315138;
          v44 = "AppleAVDWrapperH264DecoderSetProperty";
          v10 = MEMORY[0x277D86220];
          v11 = "AppleAVD: WARNING: %s() - trying to set kAppleAVDEnableRVRA before videoContext was created!\n";
          goto LABEL_31;
        }

        result = AppleAVDSetParameter(v36, 35, valuePtr);
        if (!result)
        {
          return result;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v44 = "AppleAVDWrapperH264DecoderSetProperty";
          v10 = MEMORY[0x277D86220];
          v11 = "AppleAVD: ERROR: %s() - AppleAVDSetParameter call for kAppleAVDEnableRVRA returned ERROR\n";
          goto LABEL_31;
        }

        return 4294954385;
      }

      if (CFEqual(a2, *MEMORY[0x277CE2710]))
      {
        return 4294954395;
      }

      if (CFEqual(a2, *MEMORY[0x277CE26A0]))
      {
        if (a3)
        {
          v37 = CFBooleanGetTypeID();
          if (v37 == CFGetTypeID(a3))
          {
            v38 = CFBooleanGetValue(a3);
            v39 = v38;
            v40 = *(DerivedStorage + 8816);
            if (v40 >= 2)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                return 4294954385;
              }

              v41 = v8[2288];
              *buf = 136315906;
              v44 = "AppleAVDWrapperH264DecoderSetProperty";
              v45 = 1024;
              *v46 = v40;
              *&v46[4] = 1024;
              *&v46[6] = v41;
              v47 = 1024;
              v48 = v39 != 0;
              v10 = MEMORY[0x277D86220];
              v11 = "AppleAVD: ERROR: %s(): pluginState (%d) was already started! current: %d - requested: %d";
              v16 = 30;
              goto LABEL_32;
            }

            v8[2288] = v38 != 0;
            result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (!result)
            {
              return result;
            }

            *buf = 136315394;
            v44 = "AppleAVDWrapperH264DecoderSetProperty";
            v45 = 1024;
            *v46 = v39 != 0;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): kVTDecompressionPropertyKey_Paravirtualized - paravirtualizedSession: %d", buf, 0x12u);
            return 0;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v44 = "AppleAVDWrapperH264DecoderSetProperty";
          v45 = 2048;
          *v46 = a3;
          v12 = MEMORY[0x277D86220];
          v13 = "AppleAVD: %s(): propertyValue (%p) is invalid!";
          v14 = 22;
          goto LABEL_25;
        }
      }

      else
      {
        if (!CFEqual(a2, @"EnableSliceQpExtraction"))
        {
          return 4294954396;
        }

        if (a3)
        {
          LOBYTE(valuePtr[0]) = CFBooleanGetValue(a3);
          v42 = *(DerivedStorage + 5184);
          if (!v42)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 4294954385;
            }

            *buf = 136315138;
            v44 = "AppleAVDWrapperH264DecoderSetProperty";
            v10 = MEMORY[0x277D86220];
            v11 = "AppleAVD: WARNING: %s() - trying to set kAppleAVDSetAttachQPs before videoContext was created!\n";
            goto LABEL_31;
          }

          result = AppleAVDSetParameter(v42, 78, valuePtr);
          if (!result)
          {
            return result;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v44 = "AppleAVDWrapperH264DecoderSetProperty";
            v10 = MEMORY[0x277D86220];
            v11 = "AppleAVD: ERROR: %s() - AppleAVDSetParameter call for kAppleAVDSetAttachQPs returned ERROR\n";
            goto LABEL_31;
          }

          return 4294954385;
        }
      }
    }

    return 4294954394;
  }

  return FigSignalErrorAtGM();
}

uint64_t AppleAVDWrapperH264DecoderCleanUp()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  v2 = *(v1 + 5184);
  if (v2)
  {
    if (AppleAVDTerminateDecoder(v2) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_H264Decoder - ERROR terminate decoder", buf, 2u);
    }

    if (AppleAVDCloseConnection((v1 + 5184)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_H264Decoder - ERROR closing connection", v9, 2u);
    }
  }

  ReleaseHeaderBufferAndCloseFileIO_0(DerivedStorage);
  v3 = DerivedStorage[4];
  if (v3)
  {
    CVPixelBufferPoolRelease(v3);
  }

  DerivedStorage[4] = 0;
  v4 = DerivedStorage[5];
  if (v4)
  {
    CVPixelBufferPoolRelease(v4);
  }

  DerivedStorage[5] = 0;
  v5 = DerivedStorage[6];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[6] = 0;
  }

  v6 = DerivedStorage[7];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[7] = 0;
  }

  *DerivedStorage = 0;
  FigFormatDescriptionRelease();
  DerivedStorage[3] = 0;
  v7 = DerivedStorage[649];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[649] = 0;
  }

  result = DerivedStorage[841];
  if (result)
  {
    result = FigH264Bridge_HLSfMP4ParsingInfoDestroy();
    DerivedStorage[841] = 0;
  }

  return result;
}

void ReleaseHeaderBufferAndCloseFileIO_0(void *a1)
{
  v2 = a1[1103];
  if (v2)
  {
    fclose(v2);
    a1[1103] = 0;
  }

  v3 = a1[1104];
  if (v3)
  {
    fclose(v3);
    a1[1104] = 0;
  }

  v4 = a1[1105];
  if (v4)
  {
    fclose(v4);
    a1[1105] = 0;
  }

  v5 = a1[1106];
  if (v5)
  {
    fclose(v5);
    a1[1106] = 0;
  }

  v6 = a1[1107];
  if (v6)
  {
    fclose(v6);
    a1[1107] = 0;
  }

  v7 = a1[802];
  if (v7)
  {
    free(v7);
  }

  a1[802] = 0;
  v8 = a1[654];
  if (v8)
  {
    free(v8);
  }

  a1[654] = 0;
  v9 = a1[655];
  if (v9)
  {
    free(v9);
  }

  a1[655] = 0;
}

void myCreateSuggestedQualityOfServiceTiers_0()
{
  values[4] = *MEMORY[0x277D85DE8];
  values[0] = createQualityOfServiceTier_0(*MEMORY[0x277CE2748]);
  values[1] = createQualityOfServiceTier_0(*MEMORY[0x277CE2760]);
  values[2] = createQualityOfServiceTier_0(*MEMORY[0x277CE2750]);
  values[3] = createQualityOfServiceTier_0(*MEMORY[0x277CE2758]);
  myVideoDecoderSuggestedQualityOfServiceTiers_0 = CFArrayCreate(*MEMORY[0x277CBECE8], values, 4, MEMORY[0x277CBF128]);
  if (!myVideoDecoderSuggestedQualityOfServiceTiers_0)
  {
    FigSignalErrorAtGM();
    if (!myVideoDecoderSuggestedQualityOfServiceTiers_0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136315394;
      v3 = "myCreateSuggestedQualityOfServiceTiers";
      v4 = 2080;
      v5 = "myVideoDecoderSuggestedQualityOfServiceTiers";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %s\n", &v2, 0x16u);
    }
  }

  for (i = 0; i != 4; ++i)
  {
    v1 = values[i];
    if (v1)
    {
      CFRelease(v1);
      values[i] = 0;
    }
  }
}

CFDictionaryRef createQualityOfServiceTier_0(void *a1)
{
  values[2] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CE2698];
  valuePtr = 0x3FF0000000000000;
  v2 = *MEMORY[0x277CBECE8];
  v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, &valuePtr);
  values[0] = a1;
  values[1] = v3;
  v4 = CFDictionaryCreate(v2, &v6, values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v4)
  {
    FigSignalErrorAtGM();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v9 = "createQualityOfServiceTier";
      v10 = 2080;
      v11 = "tier";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %s\n", buf, 0x16u);
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

uint64_t AppleAVDWrapperH264DecoderStartSession(uint64_t a1, uint64_t a2, const opaqueCMFormatDescription *a3)
{
  v78 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v6 = DerivedStorage;
    v7 = *(DerivedStorage + 8816);
    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AppleAVDWrapperH264DecoderStartSession";
        *&buf[12] = 1024;
        *&buf[14] = v7;
        v8 = MEMORY[0x277D86220];
        v9 = "AppleAVD: %s ERROR: pluginState isn't kPluginCreated, is %d";
        v10 = 18;
LABEL_7:
        _os_log_impl(&dword_277606000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, v10);
        return 4294954387;
      }

      return 4294954387;
    }

    v60 = 0;
    v12 = (DerivedStorage + 5201);
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    readPreferences(&v54);
    v13 = BYTE12(v54);
    *(v6 + 8916) = DWORD1(v59);
    pthread_mutex_init((v6 + 6432), 0);
    pthread_mutex_lock((v6 + 6432));
    *v6 = a2;
    *(v6 + 16) = 0;
    FigFormatDescriptionRelease();
    v14 = FigFormatDescriptionRetain();
    *(v6 + 24) = v14;
    *(v6 + 5208) = CMVideoFormatDescriptionGetDimensions(v14);
    *(v6 + 5204) = 0;
    *(v6 + 6416) = 0;
    *(v6 + 8912) = DWORD2(v58) != 0;
    if (MGGetBoolAnswer())
    {
      *(v6 + 8820) = DWORD1(v56);
    }

    v15 = HIDWORD(v58);
    *(v6 + 8864) = HIDWORD(v58);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(v6 + 6604);
      v17 = *(v6 + 5208);
      v18 = *(v6 + 5212);
      v19 = *(v6 + 6600);
      *buf = 136317186;
      *&buf[4] = "AppleAVDWrapperH264DecoderStartSession";
      *&buf[12] = 1024;
      *&buf[14] = v16;
      *&buf[18] = 1024;
      *&buf[20] = v17;
      *&buf[24] = 1024;
      *&buf[26] = v18;
      *&buf[30] = 1024;
      *&buf[32] = v15;
      *&buf[36] = 1024;
      *&buf[38] = v19;
      *&buf[42] = 2048;
      *&buf[44] = v6;
      *&buf[52] = 2080;
      *&buf[54] = "06:37:34";
      *&buf[62] = 2080;
      *&buf[64] = "Oct 23 2025";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s() codecType: AVC, encryptionScheme %d, %d x %d, tryAllFrames = %d, usageMode: %d, session: %p built %s %s", buf, 0x48u);
    }

    if (*(v6 + 6604) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "AppleAVDWrapperH264DecoderStartSession";
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): encryption mode 'eavc' is no longer supported\n", buf, 0xCu);
      }

      v11 = 4294954396;
      goto LABEL_78;
    }

    *(v6 + 8892) = DWORD2(v54);
    *(v6 + 8868) = v58;
    *(v6 + 8880) = *(&v55 + 1);
    *(v6 + 8908) = -1;
    if (MGGetBoolAnswer())
    {
      *(v6 + 8908) = HIDWORD(v57);
    }

    v20 = DWORD1(v57) != 0;
    if (DWORD1(v57))
    {
      v21 = 5;
    }

    else
    {
      v21 = 4;
    }

    if (v54)
    {
      v20 = v21;
    }

    if (v59)
    {
      v20 |= 8u;
    }

    *(v6 + 8876) = v20;
    HeaderBuffer_1 = CreateHeaderBuffer_1(v6, a3);
    if (HeaderBuffer_1)
    {
      goto LABEL_27;
    }

    AVDH264Instance = CreateAVDH264Instance(v6, v13);
    if (AVDH264Instance)
    {
      v24 = AVDH264Instance;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_H264VideoDecoder ERROR: createAppleAVDHW_H264DecoderInstance returned error", buf, 2u);
      }

      if (*(v6 + 8816) != 1)
      {
        ReleaseHeaderBufferAndCloseFileIO_0(v6);
      }

      if (v24 == -536870210)
      {
        v11 = 4294954383;
      }

      else
      {
        v11 = 4294954385;
      }

      goto LABEL_78;
    }

    if (MGGetBoolAnswer() && HIDWORD(v59))
    {
      *buf = 0;
      PrepareHistogramDump(buf);
      AppleAVDSetParameter(*(v6 + 5184), 62, *buf);
    }

    AppleAVDSetParameter(*(v6 + 5184), 78, &v59 + 8);
    if (*(v6 + 8820))
    {
      v52 = 0;
      setlocale(0, &unk_27777977E);
      time(&v52);
      v25 = localtime(&v52);
      strftime(__s, 0x28uLL, "%m%d%g_%H%M%S", v25);
      v51.tv_sec = 0;
      *&v51.tv_usec = 0;
      v50 = 0;
      gettimeofday(&v51, &v50);
      snprintf(__str, 5uLL, "_%03d", v51.tv_usec / 1000);
      strlen(__str);
      __strncat_chk();
      strcpy(v75, "-decOutput.264");
      qmemcpy(v49, "/var/mobile/Library/Caches/com.a/com.apple.applepple.videocodecd", sizeof(v49));
      strcpy(buf, "/var/mobile/Library/Caches/com.apple.videocodecd/com.apple.appleavd/");
      strlen(__s);
      __strncat_chk();
      strlen(v75);
      __strncat_chk();
      strcpy(v72, "-decEncrOut.264");
      __filename[1] = v49[1];
      __filename[2] = v49[3];
      v74[0] = v49[2];
      strcpy(v74 + 13, "pleavd/");
      __filename[0] = v49[0];
      strlen(__s);
      __strncat_chk();
      strlen(v72);
      __strncat_chk();
      strcpy(v67, "-decPropertyLog.txt");
      v68[1] = v49[1];
      v68[2] = v49[3];
      v69[0] = v49[2];
      strcpy(v69 + 13, "pleavd/");
      v68[0] = v49[0];
      strlen(__s);
      __strncat_chk();
      strlen(v67);
      __strncat_chk();
      strcpy(v71, "-preDRM.dat");
      v65[1] = v49[1];
      v65[2] = v49[3];
      v66[0] = v49[2];
      strcpy(v66 + 13, "pleavd/");
      v65[0] = v49[0];
      strlen(__s);
      __strncat_chk();
      strlen(v71);
      __strncat_chk();
      strcpy(v70, "-postDRM.dat");
      v63[2] = v49[3];
      v64[0] = v49[2];
      strcpy(v64 + 13, "pleavd/");
      v63[0] = v49[0];
      v63[1] = v49[1];
      strlen(__s);
      __strncat_chk();
      strlen(v70);
      __strncat_chk();
      v26 = fopen(buf, "wbx");
      *(v6 + 8824) = v26;
      if (!v26)
      {
        *(v6 + 8824) = 0;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v61 = 136315138;
          v62 = buf;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AVD h264 dump: could not open file %s\n", v61, 0xCu);
        }
      }

      v27 = fopen(__filename, "wbx");
      *(v6 + 8832) = v27;
      if (!v27)
      {
        *(v6 + 8832) = 0;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v61 = 136315138;
          v62 = __filename;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AVD h264 dump: could not open file %s\n", v61, 0xCu);
        }
      }

      v28 = fopen(v68, "wbx");
      *(v6 + 8840) = v28;
      if (!v28)
      {
        *(v6 + 8840) = 0;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v61 = 136315138;
          v62 = v68;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AVD h264 dump: could not open property log file %s\n", v61, 0xCu);
        }
      }

      v29 = fopen(v65, "wbx");
      *(v6 + 8848) = v29;
      if (!v29)
      {
        *(v6 + 8848) = 0;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v61 = 136315138;
          v62 = v65;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AVD h264 dump: could not open pre DRM file %s\n", v61, 0xCu);
        }
      }

      v30 = fopen(v63, "wbx");
      *(v6 + 8856) = v30;
      if (!v30)
      {
        *(v6 + 8856) = 0;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v61 = 136315138;
          v62 = v63;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AVD h264 dump: could not open post DRM file %s\n", v61, 0xCu);
        }
      }

      v31 = *(v6 + 8824);
      if (v31)
      {
        WriteNAL_0(v31, *(v6 + 6416), *(v6 + 6424) & 0xFFFFFF);
      }

      v32 = *(v6 + 8832);
      if (v32)
      {
        WriteNAL_0(v32, *(v6 + 6416), *(v6 + 6424) & 0xFFFFFF);
      }
    }

    else
    {
      *(v6 + 8856) = 0;
      *(v6 + 8824) = 0u;
      *(v6 + 8840) = 0u;
    }

    v33 = *(v6 + 6529);
    if ((v33 | 2) != 2 || v33 != *(v6 + 6530))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
LABEL_77:
        v11 = 4294954385;
LABEL_78:
        FigFormatDescriptionRelease();
        *(v6 + 24) = 0;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "AppleAVDWrapperH264DecoderStartSession";
          *&buf[12] = 1024;
          *&buf[14] = v11;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
        }

        goto LABEL_80;
      }

      v42 = *(v6 + 6530);
      *buf = 136315650;
      *&buf[4] = "AppleAVDWrapperH264DecoderStartSession";
      *&buf[12] = 1024;
      *&buf[14] = v33;
      *&buf[18] = 1024;
      *&buf[20] = v42;
      v43 = MEMORY[0x277D86220];
      v44 = "AppleAVD: ERROR: %s(): invalid bit depth [luma depth minus 8 = %d, chroma depth minus 8 = %d]\n";
      v45 = 24;
LABEL_76:
      _os_log_impl(&dword_277606000, v43, OS_LOG_TYPE_DEFAULT, v44, buf, v45);
      goto LABEL_77;
    }

    v34 = *(v6 + 6496);
    *(v6 + 5216) = v34;
    v35 = *(v6 + 6500);
    *(v6 + 5220) = v35;
    *(v6 + 5204) = 1;
    if (isEligibleToUseCompression(*(v6 + 5224), *(v6 + 5208), *(v6 + 5212), v34, v35, *(v6 + 8916), *(v6 + 8888)))
    {
      HeaderBuffer_1 = InitPixelBufferCompressionSupported(*v6, *(v6 + 5184), *(v6 + 5224), *(v6 + 5208), *(v6 + 5212), *(v6 + 5216), *(v6 + 5220), *(v6 + 6529), *(v6 + 6528), *(v6 + 6585), *(v6 + 8792), 4, 4, 4, 4, (v6 + 40), (v6 + 56), 0, 0, 0, 0);
      if (HeaderBuffer_1)
      {
        goto LABEL_27;
      }

      *v12 = 1;
      HeaderBuffer_1 = GetIOSurfaceTypeFromSessionPixelBufferAttributes(*v6, (v6 + 8812));
      if (HeaderBuffer_1)
      {
        goto LABEL_27;
      }

      v36 = *(v6 + 8812);
      if (v36)
      {
        *(v6 + 8904) = 1;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v37 = *(v6 + 6529) + 8;
          v38 = *(v6 + 6528);
          *buf = 136315906;
          *&buf[4] = "AppleAVDWrapperH264DecoderStartSession";
          *&buf[12] = 1024;
          *&buf[14] = v36;
          *&buf[18] = 1024;
          *&buf[20] = v37;
          *&buf[24] = 1024;
          *&buf[26] = v38;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: Compressed buffers enabled! CompressionType:%d. luma depth %d chroma format %d", buf, 0x1Eu);
        }

        if (*(v6 + 5224) == 20 && *(v6 + 6529) == 2)
        {
          v39 = *(v6 + 6528);
          if (*(v6 + 6528))
          {
            v40 = *(v6 + 5216);
            v41 = *(v6 + 5220);
            if (v39 == 2)
            {
              v40 >>= 1;
            }

            else if (v39 == 1)
            {
              v40 >>= 1;
              v41 >>= 1;
            }

            if (((((v41 + 15) >> 4) * ((v40 + 15) >> 4)) & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: AVC chroma plane with odd number of IMBs is unspported on Salvia A0", buf, 2u);
            }
          }
        }

        goto LABEL_87;
      }
    }

    else
    {
      *(v6 + 8812) = 0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v47 = *(v6 + 6529) + 8;
      v48 = *(v6 + 6528);
      *buf = 136315650;
      *&buf[4] = "AppleAVDWrapperH264DecoderStartSession";
      *&buf[12] = 1024;
      *&buf[14] = v47;
      *&buf[18] = 1024;
      *&buf[20] = v48;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: Compressed buffers disabled! luma depth %d chroma format %d", buf, 0x18u);
    }

    HeaderBuffer_1 = InitPixelBufferCompressionNotSupported_1(v6);
    if (!HeaderBuffer_1)
    {
      *(v6 + 8904) = 0;
LABEL_87:
      *&__filename[0] = *(v6 + 5216);
      if (!AppleAVDSetParameter(*(v6 + 5184), 33, __filename))
      {
        v11 = 0;
        *(v6 + 8816) = 2;
LABEL_80:
        pthread_mutex_unlock((v6 + 6432));
        kdebug_trace();
        return v11;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_77;
      }

      *buf = 0;
      v43 = MEMORY[0x277D86220];
      v44 = "AppleAVD: AppleAVD_H264VideoDecoder ERROR: AppleAVDSetSPSWidthHeight : Could not set SetSPSWidthHeight";
      v45 = 2;
      goto LABEL_76;
    }

LABEL_27:
    v11 = HeaderBuffer_1;
    goto LABEL_78;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "AppleAVDWrapperH264DecoderStartSession";
    v8 = MEMORY[0x277D86220];
    v9 = "AppleAVD: ERROR: %s no instance storage!";
    v10 = 12;
    goto LABEL_7;
  }

  return 4294954387;
}

uint64_t AppleAVDWrapperH264DecoderDecodeFrame(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3, char a4, int *a5)
{
  v161 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  v137 = 0;
  theBuffer = 0;
  v136 = 0;
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVDWrapperH264DecoderDecodeFrame - ERROR! storage is NULL\n", buf, 2u);
    }

    return 311;
  }

  v10 = DerivedStorage;
  v11 = a4 & 1;
  kdebug_trace();
  kdebug_trace();
  pthread_mutex_lock((v10 + 6432));
  v12 = *(v10 + 8816);
  if (v12 != 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AppleAVDWrapperH264DecoderDecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v12;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s called on plugin in state %d", buf, 0x12u);
    }

    pthread_mutex_unlock((v10 + 6432));
    return 311;
  }

  v13 = AppleAVDSetParameter(*(v10 + 5184), 17, (v10 + 6600));
  if (v13 | AppleAVDSetParameter(*(v10 + 5184), 35, (v10 + 6608)))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v14 = MEMORY[0x277D86220];
    v15 = "AppleAVD: AppleAVDWrapperH264DecoderDecodeFrame - AppleAVDSetParameter kAppleAVDSetUsageMode or kAppleAVDEnableRVRA returned ERROR";
    goto LABEL_16;
  }

  if (!*(v10 + 8800) || !AppleAVDSetParameter(*(v10 + 5184), 21, (v10 + 8800)))
  {
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a3, 0);
    if (!SampleAttachmentsArray || (ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0)) == 0)
    {
      *(v10 + 6720) = 0;
      goto LABEL_28;
    }

    v19 = ValueAtIndex;
    Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x277CC0690]);
    v21 = CFDictionaryGetValue(v19, *MEMORY[0x277CC06A0]);
    v22 = CFDictionaryGetValue(v19, *MEMORY[0x277CC06A8]);
    v23 = *(v10 + 6716);
    v24 = MEMORY[0x277CBED28];
    if (v23 == 3)
    {
      if (v21)
      {
        v25 = MEMORY[0x277CBED10];
        v26 = v21;
        goto LABEL_48;
      }
    }

    else if (v23 == 2)
    {
      if (v21 && !CFEqual(v21, *MEMORY[0x277CBED10]))
      {
        if (!v22)
        {
          v35 = 0;
          goto LABEL_50;
        }

        v25 = MEMORY[0x277CBED28];
        v26 = v22;
        goto LABEL_48;
      }
    }

    else if (v23 == 1 && Value)
    {
      v25 = MEMORY[0x277CBED28];
      v26 = Value;
LABEL_48:
      v35 = CFEqual(v26, *v25) != 0;
LABEL_50:
      v36 = *v24;
      if (*(v10 + 6720) == 1)
      {
        v38 = v21 != v36 || v22 == v36;
        v35 &= v38;
      }

      if (v21 != v36 || v22 == v36)
      {
        *(v10 + 6720) = 0;
      }

      else
      {
        if (Value == *MEMORY[0x277CBED10])
        {
          v39 = 1;
        }

        else
        {
          v39 = v35;
        }

        if ((v39 & 1) == 0)
        {
          *(v10 + 6720) = 1;
          goto LABEL_67;
        }
      }

      if ((v35 & 1) == 0)
      {
LABEL_67:
        kdebug_trace();
        VTDecoderSessionEmitDecodedFrame();
        if (!a5)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

LABEL_28:
      AppleAVDSetParameter(*(v10 + 5184), 26, a3);
      DataBuffer = CMSampleBufferGetDataBuffer(a3);
      v28 = DataBuffer;
      if (!DataBuffer || (DataLength = CMBlockBufferGetDataLength(DataBuffer)) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v28;
          *&buf[12] = 2048;
          *&buf[14] = 0;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR:  either dataBuffer=%p is invalid or dataLength=%zu is invalid!", buf, 0x16u);
        }

        kdebug_trace();
        v33 = -12909;
        VTDecoderSessionEmitDecodedFrame();
        v34 = 0;
        if (a5)
        {
          *a5 = 2;
        }

LABEL_38:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "AppleAVDWrapperH264DecoderDecodeFrame";
          *&buf[12] = 1024;
          *&buf[14] = v33;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
          if ((v34 & 1) == 0)
          {
            goto LABEL_19;
          }

LABEL_251:
          if (theBuffer)
          {
            CFRelease(theBuffer);
            theBuffer = 0;
          }

          if (v136)
          {
            CFRelease(v136);
            v136 = 0;
          }

          goto LABEL_19;
        }

LABEL_250:
        if (!v34)
        {
          goto LABEL_19;
        }

        goto LABEL_251;
      }

      v30 = DataLength;
      if (*(v10 + 6604) == 6 && (FormatDescription = CMSampleBufferGetFormatDescription(a3)) != 0)
      {
        v32 = FormatDescription;
        if (CMFormatDescriptionEqual(*(v10 + 24), FormatDescription))
        {
          v126 = 0;
          v127 = v30;
        }

        else
        {
          FigFormatDescriptionRelease();
          *(v10 + 24) = FigFormatDescriptionRetain();
          CreateHeaderBuffer_1(v10, v32);
          v127 = (v30 + (*(v10 + 6424) & 0xFFFFFF));
          v126 = 1;
        }
      }

      else
      {
        v126 = 0;
        v127 = v30;
      }

      v40 = CMGetAttachment(a3, *MEMORY[0x277CC0718], 0);
      if (v40)
      {
        v41 = CFEqual(v40, *MEMORY[0x277CBED28]) != 0;
      }

      else
      {
        v41 = 0;
      }

      v135 = v41;
      if (AppleAVDSetParameter(*(v10 + 5184), 34, &v135))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
LABEL_77:
          kdebug_trace();
          VTDecoderSessionEmitDecodedFrame();
          goto LABEL_19;
        }

        *buf = 0;
        v42 = MEMORY[0x277D86220];
        v43 = "AppleAVD: AppleAVD_H264VideoDecoder - AppleAVDSetParameter kAppleAVDHandleCRAFrameAsBLA returned ERROR";
        v44 = 2;
LABEL_76:
        _os_log_impl(&dword_277606000, v42, OS_LOG_TYPE_DEFAULT, v43, buf, v44);
        goto LABEL_77;
      }

      if (*(v10 + 6604) == 6)
      {
        cf = 0;
        v118 = 0;
        v120 = 0;
        goto LABEL_80;
      }

      Decryptor = FigSampleBufferGetDecryptor();
      if (*(v10 + 5204) == 1 && !Decryptor)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_77;
        }

        *buf = 136315650;
        *&buf[4] = "AppleAVDWrapperH264DecoderDecodeFrame";
        *&buf[12] = 1024;
        *&buf[14] = 1;
        *&buf[18] = 2048;
        *&buf[20] = v10;
        v42 = MEMORY[0x277D86220];
        v43 = "AppleAVD: ERROR: %s(): frame# %d, session: %p, decryptor attachment is NULL\n";
        v44 = 28;
        goto LABEL_76;
      }

      if (!Decryptor || Decryptor == *(v10 + 5192))
      {
LABEL_196:
        LODWORD(lhs.value) = 0;
        AppleAVDGetParameter(*(v10 + 5184), 50, &lhs);
        v95 = *(v10 + 6604);
        if (v95 == 3)
        {
          v96 = CMSampleBufferGetSampleAttachmentsArray(a3, 0);
          if (v96 && (v97 = CFArrayGetValueAtIndex(v96, 0)) != 0)
          {
            cfb = v97;
            v98 = CFDictionaryGetValue(v97, *MEMORY[0x277CC0630]);
            if (!v98)
            {
              v33 = 312;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                v111 = *(v10 + 5204);
                *buf = 136315650;
                *&buf[4] = "AppleAVDWrapperH264DecoderDecodeFrame";
                *&buf[12] = 1024;
                *&buf[14] = v111;
                *&buf[18] = 1024;
                *&buf[20] = 312;
                _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): frame# %d, cryptorIV is NULL, err %d\n", buf, 0x18u);
              }

              v34 = 0;
              goto LABEL_248;
            }

            v99 = v98;
            Length = CFDataGetLength(v98);
            if (CFDataGetLength(v99) != Length && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "AppleAVDWrapperH264DecoderDecodeFrame";
              *&buf[12] = 1024;
              *&buf[14] = 3101;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            }

            v120 = CFDataGetLength(v99);
            if (v120 >= 0x11)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                *&buf[4] = "AppleAVDWrapperH264DecoderDecodeFrame";
                *&buf[12] = 1024;
                *&buf[14] = v120;
                _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): oversized iv %d\n", buf, 0x12u);
              }

              v34 = 0;
              v33 = 313;
              goto LABEL_248;
            }

            v162.length = CFDataGetLength(v99);
            v162.location = 0;
            CFDataGetBytes(v99, v162, (v10 + 6700));
            v112 = CFDictionaryGetValue(cfb, *MEMORY[0x277CC0628]);
            CFNumberGetValue(v112, kCFNumberSInt32Type, &valuePtr);
          }

          else
          {
            v120 = 0;
          }

          v95 = *(v10 + 6604);
        }

        else
        {
          v120 = 0;
        }

        v100 = v95 == 4;
        if (v95 == 4)
        {
          SliceDataForDecryptor_0 = GetSliceDataForDecryptor_0(v10);
          if (SliceDataForDecryptor_0)
          {
            v33 = SliceDataForDecryptor_0;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v114 = *(v10 + 5204);
              *buf = 136315650;
              *&buf[4] = "AppleAVDWrapperH264DecoderDecodeFrame";
              *&buf[12] = 1024;
              *&buf[14] = v114;
              *&buf[18] = 1024;
              *&buf[20] = v33;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): frame# %d, Could not get slice data for decryptor, err %d\n", buf, 0x18u);
            }

            v34 = 0;
            goto LABEL_248;
          }

          v116 = *(v10 + 8784);
          v100 = 1;
          if ((v116 - 257) <= 0xFFFFFEFF)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *&buf[4] = v116;
              *&buf[8] = 1024;
              *&buf[10] = 256;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_H264VideoDecoder ERROR: BAD encryptedSliceCount %d MAX_SLICES %d", buf, 0xEu);
            }

            v34 = 0;
            v33 = 0;
            goto LABEL_248;
          }
        }

        if (!LODWORD(lhs.value))
        {
          cf = 0;
          goto LABEL_218;
        }

        cf = 0;
        v101 = *(v10 + 6604);
        if (v101 > 3 || v101 == 1)
        {
          goto LABEL_218;
        }

        v102 = *(CMBaseObjectGetVTable() + 16);
        if (v102)
        {
          v103 = *(v10 + 6604);
          if (v103 > 3)
          {
            v104 = 0;
          }

          else
          {
            v104 = qword_27775DEA0[v103];
          }

          if (*(v102 + 240))
          {
            ProcessedBlockBufferAndSubsampleAuxiliaryDataWithOptions = FigCPECryptorCreateProcessedBlockBufferAndSubsampleAuxiliaryDataWithOptions(*(v10 + 5192), a3, v104, &theBuffer, &v137, &v136);
            if (ProcessedBlockBufferAndSubsampleAuxiliaryDataWithOptions)
            {
              v33 = ProcessedBlockBufferAndSubsampleAuxiliaryDataWithOptions;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                *&buf[4] = "AppleAVDWrapperH264DecoderDecodeFrame";
                *&buf[12] = 1024;
                *&buf[14] = v33;
                v108 = MEMORY[0x277D86220];
                v109 = "AppleAVD: ERROR: %s(): FigCPECryptorCreateProcessedBlockBufferAndSubsampleAuxiliaryDataWithOptions returned error %d\n";
                v110 = 18;
LABEL_246:
                _os_log_impl(&dword_277606000, v108, OS_LOG_TYPE_DEFAULT, v109, buf, v110);
                goto LABEL_247;
              }

              goto LABEL_247;
            }

            v115 = CMBlockBufferGetDataLength(theBuffer);
            if (v115 != v30)
            {
              v117 = v115;
              v33 = -536870212;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                *&buf[4] = "AppleAVDWrapperH264DecoderDecodeFrame";
                *&buf[12] = 2048;
                *&buf[14] = v117;
                *&buf[22] = 2048;
                *&buf[24] = v30;
                v108 = MEMORY[0x277D86220];
                v109 = "AppleAVD: ERROR: %s(): processed buffer length (%zu bytes) != sample buffer length (%zu bytes)\n";
                v110 = 32;
                goto LABEL_246;
              }

LABEL_247:
              v34 = 1;
              goto LABEL_248;
            }

            cf = 1;
            v28 = theBuffer;
            v100 = 1;
LABEL_218:
            v118 = v100;
LABEL_80:
            v133 = **&MEMORY[0x277CC08F0];
            v132 = v133;
            CMSampleBufferGetOutputDuration(buf, a3);
            v45 = *buf;
            *(v10 + 6676) = *&buf[16];
            *(v10 + 6660) = v45;
            if ((*(v10 + 6672) & 0x1D) == 1)
            {
              if ((*(v10 + 6624) & 0x1D) == 1)
              {
                CMSampleBufferGetDecodeTimeStamp(&v133, a3);
                lhs = v133;
                rhs = *(v10 + 6612);
                CMTimeSubtract(buf, &lhs, &rhs);
                v46 = *buf;
                v47 = v10 + 6528;
                *(v10 + 6676) = *&buf[16];
                *(v10 + 6660) = v46;
                *(v10 + 6612) = v133;
              }

              else
              {
                CMSampleBufferGetPresentationTimeStamp(&v132, a3);
                lhs = v132;
                rhs = *(v10 + 6636);
                CMTimeSubtract(buf, &lhs, &rhs);
                v53 = *buf;
                v47 = v10 + 6528;
                *(v10 + 6676) = *&buf[16];
                *(v10 + 6660) = v53;
                *(v10 + 6636) = v132;
              }

              v54 = *(v47 + 132);
              if (v54 < 1)
              {
                v49 = 0.0;
              }

              else
              {
                v49 = *(v10 + 6668) / v54;
              }

              v50 = v127;
              *(v10 + 6688) = v49;
            }

            else
            {
              v49 = *(v10 + 6688);
              v50 = v127;
            }

            if (((v49 + 0.5) - 1025) >= 0xFFFFFC00)
            {
              v55 = (v49 + 0.5);
            }

            else
            {
              v55 = 30;
            }

            v56 = *(v10 + 6696);
            if (v55 != v56)
            {
              v55 = filterSmallDeltaFPS(v56, v55);
            }

            *(v10 + 6696) = v55;
            __dst[1] = v50;
            v129 = 0;
            __dst[0] = 0;
            LODWORD(v129) = *(v10 + 5204);
            v57 = AppleAVDGetParameter(*(v10 + 5184), 55, __dst);
            if (v57)
            {
              v33 = v57;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                *&buf[4] = "AppleAVDWrapperH264DecoderDecodeFrame";
                *&buf[12] = 1024;
                *&buf[14] = v33;
                _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): AppleAVDGetParameter [kAppleAVDGetCompressedPictureBuffer] failed with %d\n", buf, 0x12u);
              }

              kdebug_trace();
              VTDecoderSessionEmitDecodedFrame();
              v34 = cf;
              if (a5)
              {
                *a5 = 2;
              }

              goto LABEL_38;
            }

            v58 = __dst[0];
            v59 = __dst[0];
            if (v126)
            {
              memcpy(__dst[0], *(v10 + 6416), *(v10 + 6424) & 0xFFFFFF);
              v59 = &v58[*(v10 + 6424) & 0xFFFFFF];
            }

            v60 = CMBlockBufferCopyDataBytes(v28, 0, v30, v59);
            if (v60)
            {
              v61 = v60;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                *&buf[4] = "AppleAVDWrapperH264DecoderDecodeFrame";
                *&buf[12] = 1024;
                *&buf[14] = v61;
                _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Failed to copy data bytes (err = %d), nothing to decode\n", buf, 0x12u);
              }

              kdebug_trace();
              VTDecoderSessionEmitDecodedFrame();
              AppleAVDReleaseOneCPBWithFrameworkError(*(v10 + 5184), *(v10 + 5204));
              v34 = cf;
              if (a5)
              {
                *a5 = 2;
              }

LABEL_116:
              v33 = -12911;
              goto LABEL_38;
            }

            if (*(v10 + 8848))
            {
              fprintf(*(v10 + 8840), "Dumping preDRM data bytes %d for frame %d\n", v30, *(v10 + 5204));
              fwrite(v58, 1uLL, v30, *(v10 + 8848));
            }

            bzero(v141, 0x878uLL);
            v140[0] = v58;
            v140[1] = v127;
            v62 = *(v10 + 5204);
            v141[0] = v62;
            v152 = *v10;
            v153 = a2;
            if (*(v10 + 8808))
            {
              v63 = v118;
              if ((a4 & 4) != 0)
              {
                goto LABEL_130;
              }
            }

            else
            {
              v63 = v118;
              if (*(v10 + 8804))
              {
                v68 = 2;
LABEL_129:
                v141[1] = v68;
LABEL_130:
                v148 = v55;
                v143 = 0;
                v144 = valuePtr;
                v145 = v120;
                v146 = *(v10 + 6700);
                v150 = 0;
                v149 = 0;
                v151 = 0;
                v154 = 0;
                v155 = *(v10 + 8904);
                if (v63)
                {
                  v69 = *(v10 + 8784);
                  if (v69 >= 0x101)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315650;
                      *&buf[4] = "AppleAVDWrapperH264DecoderDecodeFrame";
                      *&buf[12] = 1024;
                      *&buf[14] = v69;
                      *&buf[18] = 1024;
                      *&buf[20] = 256;
                      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): encryptedSliceCount (%d) exceeds MAX_SLICES (%d)\n", buf, 0x18u);
                    }

                    kdebug_trace();
                    VTDecoderSessionEmitDecodedFrame();
                    AppleAVDReleaseOneCPBWithFrameworkError(*(v10 + 5184), *(v10 + 5204));
                    if (a5)
                    {
                      *a5 = 2;
                    }

                    v33 = -12911;
                    v34 = cf;
                    goto LABEL_38;
                  }

                  v147 = *(v10 + 8784);
                  __memcpy_chk();
                  __memcpy_chk();
                }

                else
                {
                  v147 = 0;
                }

                if (v11)
                {
                  v142 = 0;
                  if (a5)
                  {
                    v70 = 0;
                    v72 = *a5 | 1;
                    *a5 = v72;
                    v71 = *(v10 + 5204);
                    *(v10 + 8 * v71 + 64) = a2;
                  }

                  else
                  {
                    v72 = 0;
                    v71 = v62;
                    *(v10 + 8 * v62 + 64) = a2;
                    v70 = 1;
                  }
                }

                else
                {
                  v70 = 1;
                  v142 = 1;
                  v71 = v62;
                  *(v10 + 8 * v62 + 64) = a2;
                  if (a5)
                  {
                    v70 = 0;
                    v72 = *a5;
                  }

                  else
                  {
                    v72 = 0;
                  }
                }

                *(v10 + 4 * v71 + 4160) = v72;
                v75 = *(v10 + 8832);
                if (v75)
                {
                  if (WriteNAL_0(v75, v58, v30))
                  {
                    v76 = *(v10 + 8840);
                    if (v76)
                    {
                      fprintf(v76, "Error writing decEncrOutput for frame %d \n", *(v10 + 5204));
                    }
                  }
                }

                v77 = AppleAVDDecodeFrame(*(v10 + 5184), v140);
                v78 = *(v10 + 8824);
                if (v78)
                {
                  if (WriteNAL_0(v78, v58, v30))
                  {
                    v79 = *(v10 + 8840);
                    if (v79)
                    {
                      fprintf(v79, "Error writing decOutput for frame %d \n", *(v10 + 5204));
                    }
                  }
                }

                v80 = *(v10 + 8856);
                if (v80)
                {
                  fwrite(v58, 1uLL, v30, v80);
                }

                if (!v77)
                {
                  ++*(v10 + 5204);
                  if ((cf & 1) == 0)
                  {
                    goto LABEL_19;
                  }

                  goto LABEL_251;
                }

                kdebug_trace();
                VTDecoderSessionEmitDecodedFrame();
                AppleAVDReleaseOneCPBWithFrameworkError(*(v10 + 5184), *(v10 + 5204));
                if ((v70 & 1) == 0)
                {
                  *a5 = 2;
                }

                v33 = v143;
                v81 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                if (!v33)
                {
                  v34 = cf;
                  if (v81)
                  {
                    v83 = *(v10 + 5204);
                    *buf = 67109120;
                    *&buf[4] = v83;
                    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_H264VideoDecoder_DecodeFrame ERROR: framenum %d kVTVideoDecoderMalfunctionErr", buf, 8u);
                  }

                  goto LABEL_116;
                }

                v34 = cf;
                if (!v81)
                {
                  goto LABEL_38;
                }

                v82 = *(v10 + 5204);
                *buf = 67109376;
                *&buf[4] = v82;
                *&buf[8] = 1024;
                *&buf[10] = v33;
                _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_H264VideoDecoder_DecodeFrame ERROR: framenum %d decryptError %x", buf, 0xEu);
                v33 = v143;
LABEL_249:
                if (!v33)
                {
                  goto LABEL_250;
                }

                goto LABEL_38;
              }
            }

            v68 = 1;
            goto LABEL_129;
          }

          v33 = -536870201;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "AppleAVDWrapperH264DecoderDecodeFrame";
            v105 = MEMORY[0x277D86220];
            v106 = "AppleAVD: ERROR: %s(): cryptor has NULL createProcessedBlockBufferAndSubsampleAuxiliaryDataWithOptions entry in vTable!\n";
            goto LABEL_228;
          }
        }

        else
        {
          v33 = -536870212;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "AppleAVDWrapperH264DecoderDecodeFrame";
            v105 = MEMORY[0x277D86220];
            v106 = "AppleAVD: ERROR: %s(): got NULL vTable from cryptor object!\n";
LABEL_228:
            _os_log_impl(&dword_277606000, v105, OS_LOG_TYPE_DEFAULT, v106, buf, 0xCu);
          }
        }

        v34 = 0;
LABEL_248:
        kdebug_trace();
        VTDecoderSessionEmitDecodedFrame();
        goto LABEL_249;
      }

      LODWORD(rhs.value) = *(v10 + 6604);
      lhs.value = 0;
      cfa = Decryptor;
      NativeSession = FigCPECryptorGetNativeSession(Decryptor, &lhs);
      if (NativeSession)
      {
        v33 = NativeSession;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v52 = *(v10 + 5204);
          *buf = 136315650;
          *&buf[4] = "AppleAVDWrapperH264DecoderDecodeFrame";
          *&buf[12] = 1024;
          *&buf[14] = v52;
          *&buf[18] = 1024;
          *&buf[20] = v33;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): frame# %d, FigCPECryptorGetNativeSession returned err %d\n", buf, 0x18u);
        }

        kdebug_trace();
        goto LABEL_174;
      }

      v64 = AppleAVDSetParameter(*(v10 + 5184), 24, &rhs);
      if (v64)
      {
        v33 = v64;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v65 = *(v10 + 5204);
          *buf = 136315650;
          *&buf[4] = "AppleAVDWrapperH264DecoderDecodeFrame";
          *&buf[12] = 1024;
          *&buf[14] = v65;
          *&buf[18] = 1024;
          *&buf[20] = v33;
          v66 = MEMORY[0x277D86220];
          v67 = "AppleAVD: ERROR: %s(): frame# %d, AppleAVDSetParameter [kAppleAVDSetCryptScheme] failed with %d\n";
LABEL_172:
          _os_log_impl(&dword_277606000, v66, OS_LOG_TYPE_DEFAULT, v67, buf, 0x18u);
          goto LABEL_173;
        }

        goto LABEL_173;
      }

      v73 = AppleAVDSetParameter(*(v10 + 5184), 25, lhs.value);
      if (v73)
      {
        v33 = v73;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v74 = *(v10 + 5204);
          *buf = 136315650;
          *&buf[4] = "AppleAVDWrapperH264DecoderDecodeFrame";
          *&buf[12] = 1024;
          *&buf[14] = v74;
          *&buf[18] = 1024;
          *&buf[20] = v33;
          v66 = MEMORY[0x277D86220];
          v67 = "AppleAVD: ERROR: %s(): frame# %d, AppleAVDSetParameter [kAppleAVDSetCryptRef] failed with %d\n";
          goto LABEL_172;
        }

LABEL_173:
        kdebug_trace();
LABEL_174:
        VTDecoderSessionEmitDecodedFrame();
LABEL_175:
        v34 = 0;
        goto LABEL_38;
      }

      v121 = *(v10 + 8792);
      v134 = 0;
      ExternalProtectionMethods = FigCPECryptorGetExternalProtectionMethods(cfa, &v134);
      if (ExternalProtectionMethods)
      {
        v33 = ExternalProtectionMethods;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v85 = *(v10 + 5204);
          *buf = 136315650;
          *&buf[4] = "AppleAVDWrapperH264DecoderDecodeFrame";
          *&buf[12] = 1024;
          *&buf[14] = v85;
          *&buf[18] = 1024;
          *&buf[20] = v33;
          v66 = MEMORY[0x277D86220];
          v67 = "AppleAVD: ERROR: %s(): frame# %d, FigCPECryptorGetExternalProtectionMethods, err %d\n";
          goto LABEL_172;
        }

        goto LABEL_173;
      }

      v86 = 3;
      if ((v134 & 1) == 0)
      {
        v86 = 1;
      }

      v87 = 7;
      if ((v134 & 2) == 0)
      {
        v87 = v86;
      }

      v88 = *(v10 + 8792);
      v119 = v87;
      if (v88 == v87)
      {
LABEL_192:
        v94 = *(v10 + 5192);
        if (cfa != v94)
        {
          if (v94)
          {
            CFRelease(v94);
          }

          *(v10 + 5192) = cfa;
          CFRetain(cfa);
        }

        goto LABEL_196;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v89 = *(v10 + 5204);
        *buf = 67109632;
        *&buf[4] = v89;
        *&buf[8] = 2048;
        *&buf[10] = v88;
        *&buf[18] = 2048;
        *&buf[20] = v119;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_H264VideoDecoder: frame# %d, new CVPixelBufferPool created protectionOptions %llu %llu \n", buf, 0x1Cu);
      }

      *(v10 + 8792) = v119;
      if (*(v10 + 8812))
      {
        inited = InitPixelBufferCompressionSupported(*v10, *(v10 + 5184), *(v10 + 5224), *(v10 + 5208), *(v10 + 5212), *(v10 + 5216), *(v10 + 5220), *(v10 + 6529), *(v10 + 6528), *(v10 + 6585), v119, 4, 4, 4, 4, (v10 + 40), (v10 + 56), 0, 0, 0, 0);
        if (!inited)
        {
          v91 = 1;
LABEL_191:
          *(v10 + 8904) = v91;
          goto LABEL_192;
        }
      }

      else
      {
        inited = InitPixelBufferCompressionNotSupported_1(v10);
        if (!inited)
        {
          v91 = 0;
          goto LABEL_191;
        }
      }

      v33 = inited;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v92 = *(v10 + 5204);
        v93 = *(v10 + 8812);
        *buf = 136316418;
        *&buf[4] = "AppleAVDWrapperH264DecoderDecodeFrame";
        *&buf[12] = 1024;
        *&buf[14] = v92;
        *&buf[18] = 2048;
        *&buf[20] = v121;
        *&buf[28] = 2048;
        *&buf[30] = v119;
        v157 = 1024;
        v158 = v93;
        v159 = 1024;
        v160 = v33;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): frame# %d, new CVPixelBufferPool created protectionOptions %llu %llu - ioSurfaceType: %d, err: %d\n", buf, 0x32u);
      }

      kdebug_trace();
      VTDecoderSessionEmitDecodedFrame();
      *(v10 + 8792) = v121;
      goto LABEL_175;
    }

    v35 = 1;
    goto LABEL_50;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_17;
  }

  *buf = 0;
  v14 = MEMORY[0x277D86220];
  v15 = "AppleAVD: AppleAVDWrapperH264DecoderDecodeFrame - AppleAVDSetParameter kAppleAVDEnableIOFence returned ERROR";
LABEL_16:
  _os_log_impl(&dword_277606000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
LABEL_17:
  kdebug_trace();
  VTDecoderSessionEmitDecodedFrame();
  if (a5)
  {
LABEL_18:
    *a5 = 2;
  }

LABEL_19:
  pthread_mutex_unlock((v10 + 6432));
  kdebug_trace();
  return 0;
}