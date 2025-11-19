uint64_t CAHDecClaryHevc::allocWorkBuf_SPS(CAHDecClaryHevc *this, _DWORD *a2)
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

  *(this + 2948) = v26;
  *(this + 2949) = v40;
  *(this + 1475) = 0;
  v41 = (v17 & 0xFFFFFFF0) * (v17 >> 4) * v4[600];
  *(this + 2954) = v41;
  *(this + 2953) = v4[602] * v41;
  if (*(*(this + 32) + 2648))
  {
LABEL_44:
    v46 = (this + 7568);
    v47 = 16;
    while (1)
    {
      v48 = *(this + 2953);
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
    v53 = 2245;
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
      v44 = *(this + 2948);
      if (v44 && CAVDDecoder::allocAVDMem(*(this + 32), v42 - 176, v44, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_56;
        }

        v50 = 136315650;
        v51 = "allocWorkBuf_SPS";
        v52 = 1024;
        v53 = 2236;
        v54 = 2080;
        *v55 = "HdrY";
        v49 = MEMORY[0x277D86220];
        goto LABEL_55;
      }

      v45 = *(this + 2949);
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
    v53 = 2237;
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

uint64_t CAHDecClaryHevc::allocWorkBuf_PPS(CAHDecClaryHevc *this, _DWORD *a2, _DWORD *a3, void *a4)
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
  if (v33 && CAVDDecoder::allocAVDMem(v25, this + 649, v33, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2415;
      v73 = 2080;
      v74 = "IpAbove";
      v60 = MEMORY[0x277D86220];
LABEL_121:
      _os_log_impl(&dword_277606000, v60, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", buf, 0x1Cu);
      goto LABEL_122;
    }

    goto LABEL_122;
  }

  if ((v11 + 30) >= 0x1F && CAVDDecoder::allocAVDMem(*(this + 32), this + 462, 4 * (4 * v32 + (v65 >> 4)), 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2416;
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
  if (v62 && CAVDDecoder::allocAVDMem(*(this + 32), this + 660, v62, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2417;
      v73 = 2080;
      v74 = "LfAbovePix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  v63 = 36 * v61 + (v27 << 7);
  if (v63 && CAVDDecoder::allocAVDMem(*(this + 32), this + 671, v63, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2418;
      v73 = 2080;
      v74 = "LfAboveInfo";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (v35 && CAVDDecoder::allocAVDMem(*(this + 32), this + 682, v35, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2419;
      v73 = 2080;
      v74 = "LfLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (v34 && CAVDDecoder::allocAVDMem(*(this + 32), this + 693, v34, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2420;
      v73 = 2080;
      v74 = "LfLeftInfo";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (v23 && CAVDDecoder::allocAVDMem(*(this + 32), this + 704, v23, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2421;
      v73 = 2080;
      v74 = "SwLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (v12 && CAVDDecoder::allocAVDMem(*(this + 32), this + 715, v12, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2422;
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

  result = CAVDDecoder::allocAVDMem(*(this + 32), this + 726, v68, 7, 1, 0);
  if (result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2423;
      v73 = 2080;
      v74 = "AZLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  return result;
}

uint64_t CAHDecClaryHevc::freeWorkBuf_SPS(uint64_t this)
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

  v4 = (v1 + 7568);
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

uint64_t *CAHDecClaryHevc::freeWorkBuf_PPS(uint64_t *this, void *a2)
{
  v2 = this;
  if (this[1298])
  {
    this = CAVDDecoder::deallocAVDMem(this[32], this + 1298);
    v2[1298] = 0;
  }

  if (v2[924])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 924);
    v2[924] = 0;
  }

  if (v2[1320])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1320);
    v2[1320] = 0;
  }

  if (v2[1342])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1342);
    v2[1342] = 0;
  }

  if (v2[1364])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1364);
    v2[1364] = 0;
  }

  if (v2[1386])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1386);
    v2[1386] = 0;
  }

  if (v2[1408])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1408);
    v2[1408] = 0;
  }

  if (v2[1430])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1430);
    v2[1430] = 0;
  }

  if (v2[1452])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1452);
    v2[1452] = 0;
  }

  return this;
}

uint64_t CAHDecClaryHevc::setVPInstrFifo(uint64_t this, int a2)
{
  v2 = 0;
  v3 = (this + 6316);
  do
  {
    *v3 = 1;
    *(v3 - 39) = v2++;
    v3 += 44;
  }

  while (v2 != 7);
  *(this + 11808) = a2;
  return this;
}

void *createCatnipAvxDecoder(void **a1)
{
  v2 = operator new(0x1060uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecCatnipAvx::CAHDecCatnipAvx(v2, a1);
  }

  return v3;
}

uint64_t CAHDecCatnipAvx::CAHDecCatnipAvx(uint64_t a1, void **a2)
{
  CAHDec::CAHDec(a1);
  *v4 = &unk_288666550;
  *(v4 + 256) = a2;
  *(v4 + 456) = 198040;
  *(v4 + 8) = 1432;
  *(v4 + 16) = xmmword_27775BC80;
  *(v4 + 32) = 1;
  *(v4 + 56) = a2;
  bzero(a2 + 370, 0x14A0uLL);
  bzero(a2[1030], 0x1680uLL);
  bzero((a1 + 464), 0xE70uLL);
  bzero(a2 + 1031, 0x19E8uLL);
  *(a1 + 4160) = 0;
  *(a1 + 4176) = 0u;
  return a1;
}

void CAHDecCatnipAvx::~CAHDecCatnipAvx(CAHDecCatnipAvx *this)
{
  *this = &unk_288666550;
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
  CAHDecCatnipAvx::~CAHDecCatnipAvx(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecCatnipAvx::init(CAHDecCatnipAvx *this)
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
  *(this + 1045) = 9168;
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
      v30 = 219;
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

    v8 = *(this + 1045);
    v10 += 184;
    --v11;
    if (*(this + 1045))
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
    v21 = *(this + 1045);
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
    v30 = 234;
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

uint64_t CAHDecCatnipAvx::startPicture(CAHDecCatnipAvx *this, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *(this + 13) = 0;
  v3 = *(this + 34);
  *(this + 33) = v3;
  if (v3)
  {
    bzero(v3, 0x30598uLL);
    bzero(*(this + 9), 48 * *(this + 17));
    result = 0;
    *(this + 16) = 0;
    v6 = *(this + *(this + 13) + 34);
    *(v6 + 16) = a2;
    *(v6 + 24) = 257;
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

uint64_t CAHDecCatnipAvx::DecodePicture(CAHDecCatnipAvx *this, uint64_t a2)
{
  if (CAHDecCatnipAvx::startPicture(this, a2))
  {
    return 1;
  }

  (*(*this + 40))(this);
  (*(*this + 56))(this);
  if ((*(*this + 64))(this) || CAHDecCatnipAvx::populateAddressRegisters(this))
  {
    return 4;
  }

  CAHDecCatnipAvx::populateDecryptionRegisters(this);
  CAHDecCatnipAvx::populateTiles(this);
  CAHDecTansyAvx::populateAvxVPDependency(this);
  (*(*this + 96))(this, a2);
  (*(*this + 48))(this, *(this + 114));
  return 0;
}

uint64_t CAHDecCatnipAvx::populateAddressRegisters(CAHDecCatnipAvx *this)
{
  v2 = 0;
  v362 = *MEMORY[0x277D85DE8];
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

    *(*(this + 33) + v2 + 492) = 0;
    v9 = *(this + 33) + v2;
    v10 = *(v9 + 492);
    *(v9 + 492) = 0;
    *(*(this + 33) + v2 + 492) ^= 0x3FFu;
    v11 = *(this + 33) + v2;
    v12 = *(v11 + 492);
    *(v11 + 492) = v10;
    if (*v3 || *(v3 + 38) || *(v3 + 39))
    {
      result = CAHDec::addToPatcherList(this, v3, v2 + 492, 0, 0x3FFFFFFFFFFLL, 32, v12, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + v2 + 520) = 0;
    *(*(this + 33) + v2 + 520) = *(*(this + 33) + v2 + 520) & 0x800001FF | (((*(this + 1044) >> 9) & 0x3FFFFF) << 9);
    v2 += 4;
    v3 += 176;
  }

  while (v2 != 28);
  v13 = *(this + 32);
  v14 = *(*(v13 + 15112) + 79288);
  v15 = *(*(*(v13 + 37616) + 1920) + 1960);
  *(*(this + 33) + 548) = 0;
  v16 = *(this + 33);
  v17 = *(v16 + 548);
  *(v16 + 548) = 0;
  *(*(this + 33) + 548) ^= 0xFFFFFF00;
  v18 = *(this + 33);
  v19 = *(v18 + 548);
  *(v18 + 548) = v17;
  if (*(v15 + 8) || *(v15 + 160) || *(v15 + 164))
  {
    result = CAHDec::addToPatcherList(this, (v15 + 8), 548, 0, 0xFFFFFFFFLL, 8, v19, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 552) = 0;
  v20 = *(this + 33);
  v21 = *(v20 + 552);
  *(v20 + 552) = 0;
  *(*(this + 33) + 552) ^= 0x3FFu;
  v22 = *(this + 33);
  v23 = *(v22 + 552);
  *(v22 + 552) = v21;
  if (*(v15 + 8) || *(v15 + 160) || *(v15 + 164))
  {
    result = CAHDec::addToPatcherList(this, (v15 + 8), 552, 0, 0x3FFFFFFFFFFLL, 32, v23, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 556) = 0;
  v24 = *(this + 33);
  v25 = *(v24 + 556);
  *(v24 + 556) = 0;
  *(*(this + 33) + 556) ^= 0xFFFFFF00;
  v26 = *(this + 33);
  v27 = *(v26 + 556);
  *(v26 + 556) = v25;
  if (*(v14 + 8) || *(v14 + 160) || *(v14 + 164))
  {
    result = CAHDec::addToPatcherList(this, (v14 + 8), 556, 0, 0xFFFFFFFFLL, 8, v27, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 560) = 0;
  v28 = *(this + 33);
  v29 = *(v28 + 560);
  *(v28 + 560) = 0;
  *(*(this + 33) + 560) ^= 0x3FFu;
  v30 = *(this + 33);
  v31 = *(v30 + 560);
  *(v30 + 560) = v29;
  if (*(v14 + 8) || *(v14 + 160) || *(v14 + 164))
  {
    result = CAHDec::addToPatcherList(this, (v14 + 8), 560, 0, 0x3FFFFFFFFFFLL, 32, v31, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 564) = 0;
  v32 = *(this + 33);
  v33 = *(v32 + 564);
  *(v32 + 564) = 0;
  *(*(this + 33) + 564) ^= 0xFFFFFF00;
  v34 = *(this + 33);
  v35 = *(v34 + 564);
  *(v34 + 564) = v33;
  if (*(this + 212) || *(this + 462) || *(this + 463))
  {
    result = CAHDec::addToPatcherList(this, this + 212, 564, 0, 0xFFFFFFFFLL, 8, v35, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 568) = 0;
  v36 = *(this + 33);
  v37 = *(v36 + 568);
  *(v36 + 568) = 0;
  *(*(this + 33) + 568) ^= 0x3FFu;
  v38 = *(this + 33);
  v39 = *(v38 + 568);
  *(v38 + 568) = v37;
  if (*(this + 212) || *(this + 462) || *(this + 463))
  {
    result = CAHDec::addToPatcherList(this, this + 212, 568, 0, 0x3FFFFFFFFFFLL, 32, v39, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 572) = 0;
  *(*(this + 33) + 576) = 0;
  if (*(*(*(this + 32) + 15112) + 79312))
  {
    v40 = *(this + 33);
    v41 = *(v40 + 572);
    *(v40 + 572) = 0;
    *(*(this + 33) + 572) ^= 0xFFFFFF00;
    v42 = *(this + 33);
    v43 = *(v42 + 572);
    *(v42 + 572) = v41;
    v44 = *(*(*(this + 32) + 15112) + 79312);
    if (*(v44 + 8) || *(v44 + 160) || *(v44 + 164))
    {
      result = CAHDec::addToPatcherList(this, (v44 + 8), 572, 0, 0xFFFFFFFFLL, 8, v43, 4);
      if (result)
      {
        return result;
      }
    }

    v45 = *(this + 33);
    v46 = *(v45 + 576);
    *(v45 + 576) = 0;
    *(*(this + 33) + 576) ^= 0x3FFu;
    v47 = *(this + 33);
    v48 = *(v47 + 576);
    *(v47 + 576) = v46;
    v49 = *(*(*(this + 32) + 15112) + 79312);
    if (*(v49 + 8) || *(v49 + 160) || *(v49 + 164))
    {
      result = CAHDec::addToPatcherList(this, (v49 + 8), 576, 0, 0x3FFFFFFFFFFLL, 32, v48, 4);
      if (result)
      {
        return result;
      }
    }
  }

  *(*(this + 33) + 580) = 0;
  *(*(this + 33) + 584) = 0;
  if (*(*(*(this + 32) + 15112) + 79304))
  {
    v50 = *(this + 33);
    v51 = *(v50 + 580);
    *(v50 + 580) = 0;
    *(*(this + 33) + 580) ^= 0xFFFFFF00;
    v52 = *(this + 33);
    v53 = *(v52 + 580);
    *(v52 + 580) = v51;
    v54 = *(*(*(this + 32) + 15112) + 79304);
    if (*(v54 + 8) || *(v54 + 160) || *(v54 + 164))
    {
      result = CAHDec::addToPatcherList(this, (v54 + 8), 580, 0, 0xFFFFFFFFLL, 8, v53, 4);
      if (result)
      {
        return result;
      }
    }

    v55 = *(this + 33);
    v56 = *(v55 + 584);
    *(v55 + 584) = 0;
    *(*(this + 33) + 584) ^= 0x3FFu;
    v57 = *(this + 33);
    v58 = *(v57 + 584);
    *(v57 + 584) = v56;
    v59 = *(*(*(this + 32) + 15112) + 79304);
    if (*(v59 + 8) || *(v59 + 160) || *(v59 + 164))
    {
      result = CAHDec::addToPatcherList(this, (v59 + 8), 584, 0, 0x3FFFFFFFFFFLL, 32, v58, 4);
      if (result)
      {
        return result;
      }
    }
  }

  *(*(this + 33) + 588) = 0;
  v60 = *(this + 33);
  v61 = *(v60 + 588);
  *(v60 + 588) = 0;
  *(*(this + 33) + 588) ^= 0xFFFFFF00;
  v62 = *(this + 33);
  v63 = *(v62 + 588);
  *(v62 + 588) = v61;
  v64 = *(*(*(this + 32) + 37616) + 1920);
  if (*(v64 + 136) || *(v64 + 288) || *(v64 + 292))
  {
    result = CAHDec::addToPatcherList(this, (v64 + 136), 588, 0, 0xFFFFFFFFLL, 8, v63, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 592) = 0;
  v65 = *(this + 33);
  v66 = *(v65 + 592);
  *(v65 + 592) = 0;
  *(*(this + 33) + 592) ^= 0x3FFu;
  v67 = *(this + 33);
  v68 = *(v67 + 592);
  *(v67 + 592) = v66;
  v69 = *(*(*(this + 32) + 37616) + 1920);
  if (*(v69 + 136) || *(v69 + 288) || *(v69 + 292))
  {
    result = CAHDec::addToPatcherList(this, (v69 + 136), 592, 0, 0x3FFFFFFFFFFLL, 32, v68, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 596) = 0;
  v70 = *(this + 33);
  v71 = *(v70 + 596);
  *(v70 + 596) = 0;
  *(*(this + 33) + 596) ^= 0xFFFFFF00;
  v72 = *(this + 33);
  v73 = *(v72 + 596);
  *(v72 + 596) = v71;
  if (*(*(*(this + 32) + 15112) + 78568) || *(*(*(this + 32) + 15112) + 78720) || *(*(*(this + 32) + 15112) + 78724))
  {
    result = CAHDec::addToPatcherList(this, (*(*(this + 32) + 15112) + 78568), 596, 0, 0xFFFFFFFFLL, 8, v73, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 600) = 0;
  v74 = *(this + 33);
  v75 = *(v74 + 600);
  *(v74 + 600) = 0;
  *(*(this + 33) + 600) ^= 0x3FFu;
  v76 = *(this + 33);
  v77 = *(v76 + 600);
  *(v76 + 600) = v75;
  if (*(*(*(this + 32) + 15112) + 78568) || *(*(*(this + 32) + 15112) + 78720) || *(*(*(this + 32) + 15112) + 78724))
  {
    result = CAHDec::addToPatcherList(this, (*(*(this + 32) + 15112) + 78568), 600, 0, 0x3FFFFFFFFFFLL, 32, v77, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 604) = 0;
  v78 = *(this + 33);
  v79 = *(v78 + 604);
  *(v78 + 604) = 0;
  *(*(this + 33) + 604) ^= 0xFFFFFF00;
  v80 = *(this + 33);
  v81 = *(v80 + 604);
  *(v80 + 604) = v79;
  if (*(*(*(this + 32) + 15112) + 78792) || *(*(*(this + 32) + 15112) + 78944) || *(*(*(this + 32) + 15112) + 78948))
  {
    result = CAHDec::addToPatcherList(this, (*(*(this + 32) + 15112) + 78792), 604, 0, 0xFFFFFFFFLL, 8, v81, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 608) = 0;
  v82 = *(this + 33);
  v83 = *(v82 + 608);
  *(v82 + 608) = 0;
  *(*(this + 33) + 608) ^= 0x3FFu;
  v84 = *(this + 33);
  v85 = *(v84 + 608);
  *(v84 + 608) = v83;
  if (*(*(*(this + 32) + 15112) + 78792) || *(*(*(this + 32) + 15112) + 78944) || *(*(*(this + 32) + 15112) + 78948))
  {
    result = CAHDec::addToPatcherList(this, (*(*(this + 32) + 15112) + 78792), 608, 0, 0x3FFFFFFFFFFLL, 32, v85, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 612) = 0;
  v86 = *(this + 33);
  v87 = *(v86 + 612);
  *(v86 + 612) = 0;
  *(*(this + 33) + 612) ^= 0xFFFFFF00;
  v88 = *(this + 33);
  v89 = *(v88 + 612);
  *(v88 + 612) = v87;
  if (*(*(*(this + 32) + 15112) + 79016) || *(*(*(this + 32) + 15112) + 79168) || *(*(*(this + 32) + 15112) + 79172))
  {
    result = CAHDec::addToPatcherList(this, (*(*(this + 32) + 15112) + 79016), 612, 0, 0xFFFFFFFFLL, 8, v89, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 616) = 0;
  v90 = *(this + 33);
  v91 = *(v90 + 616);
  *(v90 + 616) = 0;
  *(*(this + 33) + 616) ^= 0x3FFu;
  v92 = *(this + 33);
  v93 = *(v92 + 616);
  *(v92 + 616) = v91;
  if (*(*(*(this + 32) + 15112) + 79016) || *(*(*(this + 32) + 15112) + 79168) || *(*(*(this + 32) + 15112) + 79172))
  {
    result = CAHDec::addToPatcherList(this, (*(*(this + 32) + 15112) + 79016), 616, 0, 0x3FFFFFFFFFFLL, 32, v93, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 620) = 0;
  *(*(this + 33) + 624) = 0;
  v94 = *(this + 32);
  if (*(v94 + 2652))
  {
    v95 = *(v94 + 2680);
    v360 = 0u;
    v361 = 0u;
    memset(v359, 0, sizeof(v359));
    v96 = *(this + 33);
    v97 = (*(v96 + 16) & 0xF) << 9;
    *&v359[0] = v95;
    v98 = *(v96 + 620);
    *(v96 + 620) = 0;
    *(*(this + 33) + 620) ^= 0xFFFFFF00;
    v99 = *(this + 33);
    v100 = *(v99 + 620);
    *(v99 + 620) = v98;
    if (v95)
    {
      result = CAHDec::addToPatcherList(this, v359, 620, v97, 0xFFFFFFFFLL, 8, v100, 4);
      if (result)
      {
        return result;
      }

      if (*&v359[0])
      {
        v101 = 0;
      }

      else
      {
        v101 = DWORD2(v360) == 0;
      }

      LODWORD(v95) = !v101 || HIDWORD(v360) != 0;
    }

    v103 = *(this + 33);
    v104 = *(v103 + 624);
    *(v103 + 624) = 0;
    *(*(this + 33) + 624) ^= 0x3FFu;
    v105 = *(this + 33);
    v106 = *(v105 + 624);
    *(v105 + 624) = v104;
    if (v95)
    {
      result = CAHDec::addToPatcherList(this, v359, 624, v97, 0x3FFFFFFFFFFLL, 32, v106, 4);
      if (result)
      {
        return result;
      }
    }
  }

  *(*(this + 33) + 628) = 0;
  v107 = *(this + 33);
  v108 = *(v107 + 628);
  *(v107 + 628) = 0;
  *(*(this + 33) + 628) ^= 0xFFFFFF00;
  v109 = *(this + 33);
  v110 = *(v109 + 628);
  *(v109 + 628) = v108;
  if (*(this + 234) || *(this + 506) || *(this + 507))
  {
    result = CAHDec::addToPatcherList(this, this + 234, 628, 0, 0xFFFFFFFFLL, 8, v110, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 632) = 0;
  v111 = *(this + 33);
  v112 = *(v111 + 632);
  *(v111 + 632) = 0;
  *(*(this + 33) + 632) ^= 0x3FFu;
  v113 = *(this + 33);
  v114 = *(v113 + 632);
  *(v113 + 632) = v112;
  if (*(this + 234) || *(this + 506) || *(this + 507))
  {
    result = CAHDec::addToPatcherList(this, this + 234, 632, 0, 0x3FFFFFFFFFFLL, 32, v114, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 636) = 0;
  v115 = *(this + 33);
  v116 = *(v115 + 636);
  *(v115 + 636) = 0;
  *(*(this + 33) + 636) ^= 0xFFFFFF00;
  v117 = *(this + 33);
  v118 = *(v117 + 636);
  *(v117 + 636) = v116;
  if (*(this + 256) || *(this + 550) || *(this + 551))
  {
    result = CAHDec::addToPatcherList(this, this + 256, 636, 0, 0xFFFFFFFFLL, 8, v118, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 640) = 0;
  v119 = *(this + 33);
  v120 = *(v119 + 640);
  *(v119 + 640) = 0;
  *(*(this + 33) + 640) ^= 0x3FFu;
  v121 = *(this + 33);
  v122 = *(v121 + 640);
  *(v121 + 640) = v120;
  if (*(this + 256) || *(this + 550) || *(this + 551))
  {
    result = CAHDec::addToPatcherList(this, this + 256, 640, 0, 0x3FFFFFFFFFFLL, 32, v122, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 644) = 0;
  v123 = *(this + 33);
  v124 = *(v123 + 644);
  *(v123 + 644) = 0;
  *(*(this + 33) + 644) ^= 0xFFFFFF00;
  v125 = *(this + 33);
  v126 = *(v125 + 644);
  *(v125 + 644) = v124;
  if (*(this + 278) || *(this + 594) || *(this + 595))
  {
    result = CAHDec::addToPatcherList(this, this + 278, 644, 0, 0xFFFFFFFFLL, 8, v126, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 648) = 0;
  v127 = *(this + 33);
  v128 = *(v127 + 648);
  *(v127 + 648) = 0;
  *(*(this + 33) + 648) ^= 0x3FFu;
  v129 = *(this + 33);
  v130 = *(v129 + 648);
  *(v129 + 648) = v128;
  if (*(this + 278) || *(this + 594) || *(this + 595))
  {
    result = CAHDec::addToPatcherList(this, this + 278, 648, 0, 0x3FFFFFFFFFFLL, 32, v130, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 652) = 0;
  v131 = *(this + 33);
  v132 = *(v131 + 652);
  *(v131 + 652) = 0;
  *(*(this + 33) + 652) ^= 0xFFFFFF00;
  v133 = *(this + 33);
  v134 = *(v133 + 652);
  *(v133 + 652) = v132;
  if (*(this + 300) || *(this + 638) || *(this + 639))
  {
    result = CAHDec::addToPatcherList(this, this + 300, 652, 0, 0xFFFFFFFFLL, 8, v134, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 656) = 0;
  v135 = *(this + 33);
  v136 = *(v135 + 656);
  *(v135 + 656) = 0;
  *(*(this + 33) + 656) ^= 0x3FFu;
  v137 = *(this + 33);
  v138 = *(v137 + 656);
  *(v137 + 656) = v136;
  if (*(this + 300) || *(this + 638) || *(this + 639))
  {
    result = CAHDec::addToPatcherList(this, this + 300, 656, 0, 0x3FFFFFFFFFFLL, 32, v138, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 660) = 0;
  v139 = *(this + 33);
  v140 = *(v139 + 660);
  *(v139 + 660) = 0;
  *(*(this + 33) + 660) ^= 0xFFFFFF00;
  v141 = *(this + 33);
  v142 = *(v141 + 660);
  *(v141 + 660) = v140;
  if (*(this + 322) || *(this + 682) || *(this + 683))
  {
    result = CAHDec::addToPatcherList(this, this + 322, 660, 0, 0xFFFFFFFFLL, 8, v142, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 664) = 0;
  v143 = *(this + 33);
  v144 = *(v143 + 664);
  *(v143 + 664) = 0;
  *(*(this + 33) + 664) ^= 0x3FFu;
  v145 = *(this + 33);
  v146 = *(v145 + 664);
  *(v145 + 664) = v144;
  if (*(this + 322) || *(this + 682) || *(this + 683))
  {
    result = CAHDec::addToPatcherList(this, this + 322, 664, 0, 0x3FFFFFFFFFFLL, 32, v146, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 668) = 0;
  v147 = *(this + 33);
  v148 = *(v147 + 668);
  *(v147 + 668) = 0;
  *(*(this + 33) + 668) ^= 0xFFFFFF00;
  v149 = *(this + 33);
  v150 = *(v149 + 668);
  *(v149 + 668) = v148;
  if (*(this + 344) || *(this + 726) || *(this + 727))
  {
    result = CAHDec::addToPatcherList(this, this + 344, 668, 0, 0xFFFFFFFFLL, 8, v150, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 672) = 0;
  v151 = *(this + 33);
  v152 = *(v151 + 672);
  *(v151 + 672) = 0;
  *(*(this + 33) + 672) ^= 0x3FFu;
  v153 = *(this + 33);
  v154 = *(v153 + 672);
  *(v153 + 672) = v152;
  if (*(this + 344) || *(this + 726) || *(this + 727))
  {
    result = CAHDec::addToPatcherList(this, this + 344, 672, 0, 0x3FFFFFFFFFFLL, 32, v154, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 676) = 0;
  v155 = *(this + 33);
  v156 = *(v155 + 676);
  *(v155 + 676) = 0;
  *(*(this + 33) + 676) ^= 0xFFFFFF00;
  v157 = *(this + 33);
  v158 = *(v157 + 676);
  *(v157 + 676) = v156;
  if (*(this + 366) || *(this + 770) || *(this + 771))
  {
    result = CAHDec::addToPatcherList(this, this + 366, 676, 0, 0xFFFFFFFFLL, 8, v158, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 680) = 0;
  v159 = *(this + 33);
  v160 = *(v159 + 680);
  *(v159 + 680) = 0;
  *(*(this + 33) + 680) ^= 0x3FFu;
  v161 = *(this + 33);
  v162 = *(v161 + 680);
  *(v161 + 680) = v160;
  if (*(this + 366) || *(this + 770) || *(this + 771))
  {
    result = CAHDec::addToPatcherList(this, this + 366, 680, 0, 0x3FFFFFFFFFFLL, 32, v162, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 684) = 0;
  v163 = *(this + 33);
  v164 = *(v163 + 684);
  *(v163 + 684) = 0;
  *(*(this + 33) + 684) ^= 0xFFFFFF00;
  v165 = *(this + 33);
  v166 = *(v165 + 684);
  *(v165 + 684) = v164;
  if (*(this + 388) || *(this + 814) || *(this + 815))
  {
    result = CAHDec::addToPatcherList(this, this + 388, 684, 0, 0xFFFFFFFFLL, 8, v166, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 688) = 0;
  v167 = *(this + 33);
  v168 = *(v167 + 688);
  *(v167 + 688) = 0;
  *(*(this + 33) + 688) ^= 0x3FFu;
  v169 = *(this + 33);
  v170 = *(v169 + 688);
  *(v169 + 688) = v168;
  if (*(this + 388) || *(this + 814) || *(this + 815))
  {
    result = CAHDec::addToPatcherList(this, this + 388, 688, 0, 0x3FFFFFFFFFFLL, 32, v170, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 692) = 0;
  v171 = *(this + 33);
  v172 = *(v171 + 692);
  *(v171 + 692) = 0;
  *(*(this + 33) + 692) ^= 0xFFFFFF00;
  v173 = *(this + 33);
  v174 = *(v173 + 692);
  *(v173 + 692) = v172;
  if (*(this + 410) || *(this + 858) || *(this + 859))
  {
    result = CAHDec::addToPatcherList(this, this + 410, 692, 0, 0xFFFFFFFFLL, 8, v174, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 696) = 0;
  v175 = *(this + 33);
  v176 = *(v175 + 696);
  *(v175 + 696) = 0;
  *(*(this + 33) + 696) ^= 0x3FFu;
  v177 = *(this + 33);
  v178 = *(v177 + 696);
  *(v177 + 696) = v176;
  if (*(this + 410) || *(this + 858) || *(this + 859))
  {
    result = CAHDec::addToPatcherList(this, this + 410, 696, 0, 0x3FFFFFFFFFFLL, 32, v178, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 700) = 0;
  v179 = *(this + 33);
  v180 = *(v179 + 700);
  *(v179 + 700) = 0;
  *(*(this + 33) + 700) ^= 0xFFFFFF00;
  v181 = *(this + 33);
  v182 = *(v181 + 700);
  *(v181 + 700) = v180;
  if (*(this + 476) || *(this + 990) || *(this + 991))
  {
    result = CAHDec::addToPatcherList(this, this + 476, 700, 0, 0xFFFFFFFFLL, 8, v182, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 704) = 0;
  v183 = *(this + 33);
  v184 = *(v183 + 704);
  *(v183 + 704) = 0;
  *(*(this + 33) + 704) ^= 0x3FFu;
  v185 = *(this + 33);
  v186 = *(v185 + 704);
  *(v185 + 704) = v184;
  if (*(this + 476) || *(this + 990) || *(this + 991))
  {
    result = CAHDec::addToPatcherList(this, this + 476, 704, 0, 0x3FFFFFFFFFFLL, 32, v186, 4);
    if (result)
    {
      return result;
    }
  }

  v187 = *(*(this + 32) + 37868);
  *(*(this + 33) + 708) = 0;
  *(*(this + 33) + 712) = 0;
  *(*(this + 33) + 716) = 0;
  *(*(this + 33) + 720) = 0;
  *(*(this + 33) + 724) = 0;
  *(*(this + 33) + 728) = 0;
  *(*(this + 33) + 732) = 0;
  *(*(this + 33) + 736) = 0;
  v188 = *(this + 33);
  v189 = *(v188 + 716);
  *(v188 + 716) = 0;
  *(*(this + 33) + 716) ^= 0xFFFFFF80;
  v190 = *(this + 33);
  v191 = *(v190 + 716);
  *(v190 + 716) = v189;
  v192 = *(*(*(this + 32) + 8240) + 384 * v187 + 8);
  if (*v192 || *(v192 + 152) || *(v192 + 156))
  {
    result = CAHDec::addToPatcherList(this, v192, 716, *(v192 + 52), 0xFFFFFFFFLL, 7, v191, 4);
    if (result)
    {
      return result;
    }
  }

  v193 = *(this + 33);
  v194 = *(v193 + 720);
  *(v193 + 720) = 0;
  *(*(this + 33) + 720) ^= 0x3FFu;
  v195 = *(this + 33);
  v196 = *(v195 + 720);
  *(v195 + 720) = v194;
  v197 = *(*(*(this + 32) + 8240) + 384 * v187 + 8);
  if (*v197 || *(v197 + 152) || *(v197 + 156))
  {
    result = CAHDec::addToPatcherList(this, v197, 720, *(v197 + 52), 0x3FFFFFFFFFFLL, 32, v196, 4);
    if (result)
    {
      return result;
    }
  }

  v198 = *(this + 33);
  v199 = *(v198 + 732);
  *(v198 + 732) = 0;
  *(*(this + 33) + 732) ^= 0xFFFFFF80;
  v200 = *(this + 33);
  v201 = *(v200 + 732);
  *(v200 + 732) = v199;
  v202 = *(*(*(this + 32) + 8240) + 384 * v187 + 8);
  if (*v202 || *(v202 + 152) || *(v202 + 156))
  {
    result = CAHDec::addToPatcherList(this, v202, 732, *(v202 + 56), 0xFFFFFFFFLL, 7, v201, 4);
    if (result)
    {
      return result;
    }
  }

  v203 = *(this + 33);
  v204 = *(v203 + 736);
  *(v203 + 736) = 0;
  *(*(this + 33) + 736) ^= 0x3FFu;
  v205 = *(this + 33);
  v206 = *(v205 + 736);
  *(v205 + 736) = v204;
  v207 = *(this + 32);
  v208 = *(*(v207 + 8240) + 384 * v187 + 8);
  if (*v208 || *(v208 + 152) || *(v208 + 156))
  {
    result = CAHDec::addToPatcherList(this, v208, 736, *(v208 + 56), 0x3FFFFFFFFFFLL, 32, v206, 4);
    if (result)
    {
      return result;
    }

    v207 = *(this + 32);
  }

  v209 = *(v207 + 2648);
  v210 = *(this + 33);
  v211 = *(v210 + 708);
  *(v210 + 708) = 0;
  *(*(this + 33) + 708) ^= 0xFFFFFF80;
  v212 = *(this + 33);
  v213 = *(v212 + 708);
  *(v212 + 708) = v211;
  v214 = *(this + 32);
  if (v209 == 1)
  {
    v215 = *(*(v214 + 8240) + 384 * v187 + 8);
    if (*v215 || *(v215 + 152) || *(v215 + 156))
    {
      result = CAHDec::addToPatcherList(this, v215, 708, *(v215 + 64), 0xFFFFFFFFLL, 7, v213, 4);
      if (result)
      {
        return result;
      }
    }

    v216 = *(this + 33);
    v217 = *(v216 + 712);
    *(v216 + 712) = 0;
    *(*(this + 33) + 712) ^= 0x3FFu;
    v218 = *(this + 33);
    v219 = *(v218 + 712);
    *(v218 + 712) = v217;
    v220 = *(*(*(this + 32) + 8240) + 384 * v187 + 8);
    if (*v220 || *(v220 + 152) || *(v220 + 156))
    {
      result = CAHDec::addToPatcherList(this, v220, 712, *(v220 + 64), 0x3FFFFFFFFFFLL, 32, v219, 4);
      if (result)
      {
        return result;
      }
    }

    v221 = *(this + 33);
    v222 = *(v221 + 724);
    *(v221 + 724) = 0;
    *(*(this + 33) + 724) ^= 0xFFFFFF80;
    v223 = *(this + 33);
    v224 = *(v223 + 724);
    *(v223 + 724) = v222;
    v225 = *(*(*(this + 32) + 8240) + 384 * v187 + 8);
    if (*v225 || *(v225 + 152) || *(v225 + 156))
    {
      result = CAHDec::addToPatcherList(this, v225, 724, *(v225 + 68), 0xFFFFFFFFLL, 7, v224, 4);
      if (result)
      {
        return result;
      }
    }

    v226 = *(this + 33);
    v227 = *(v226 + 728);
    *(v226 + 728) = 0;
    *(*(this + 33) + 728) ^= 0x3FFu;
    v228 = *(this + 33);
    v229 = *(v228 + 728);
    *(v228 + 728) = v227;
    v230 = *(*(*(this + 32) + 8240) + 384 * v187 + 8);
    if (*v230 || *(v230 + 152) || *(v230 + 156))
    {
      v231 = *(v230 + 68);
      v232 = this;
      goto LABEL_230;
    }
  }

  else
  {
    v233 = (v214 + 176 * v187 + 2960);
    if (*v233 || *(v214 + 176 * v187 + 3112) || *(v214 + 176 * v187 + 3116))
    {
      result = CAHDec::addToPatcherList(this, v233, 708, 0, 0xFFFFFFFFLL, 7, v213, 4);
      if (result)
      {
        return result;
      }
    }

    v234 = *(this + 33);
    v235 = *(v234 + 712);
    *(v234 + 712) = 0;
    *(*(this + 33) + 712) ^= 0x3FFu;
    v236 = *(this + 33);
    v237 = *(v236 + 712);
    *(v236 + 712) = v235;
    v238 = (*(this + 32) + 176 * v187 + 2960);
    if (*v238 || *(*(this + 32) + 176 * v187 + 3112) || *(*(this + 32) + 176 * v187 + 3116))
    {
      result = CAHDec::addToPatcherList(this, v238, 712, 0, 0x3FFFFFFFFFFLL, 32, v237, 4);
      if (result)
      {
        return result;
      }
    }

    v239 = *(this + 33);
    v240 = *(v239 + 724);
    *(v239 + 724) = 0;
    *(*(this + 33) + 724) ^= 0xFFFFFF80;
    v241 = *(this + 33);
    v242 = *(v241 + 724);
    *(v241 + 724) = v240;
    v243 = (*(this + 32) + 176 * v187 + 5600);
    if (*v243 || *(*(this + 32) + 176 * v187 + 5752) || *(*(this + 32) + 176 * v187 + 5756))
    {
      result = CAHDec::addToPatcherList(this, v243, 724, 0, 0xFFFFFFFFLL, 7, v242, 4);
      if (result)
      {
        return result;
      }
    }

    v244 = *(this + 33);
    v245 = *(v244 + 728);
    *(v244 + 728) = 0;
    *(*(this + 33) + 728) ^= 0x3FFu;
    v246 = *(this + 33);
    v229 = *(v246 + 728);
    *(v246 + 728) = v245;
    v230 = *(this + 32) + 176 * v187 + 5600;
    if (*v230 || *(*(this + 32) + 176 * v187 + 5752) || *(*(this + 32) + 176 * v187 + 5756))
    {
      v232 = this;
      v231 = 0;
LABEL_230:
      result = CAHDec::addToPatcherList(v232, v230, 728, v231, 0x3FFFFFFFFFFLL, 32, v229, 4);
      if (result)
      {
        return result;
      }
    }
  }

  *(*(this + 33) + 740) = 0;
  *(*(this + 33) + 744) = 0;
  *(*(this + 33) + 748) = 0;
  *(*(this + 33) + 752) = 0;
  *(*(this + 33) + 756) = 0;
  *(*(this + 33) + 760) = 0;
  *(*(this + 33) + 764) = 0;
  *(*(this + 33) + 768) = 0;
  if (*(*(this + 32) + 2644))
  {
    v247 = *(this + 33);
    v248 = *(v247 + 740);
    *(v247 + 740) = 0;
    *(*(this + 33) + 740) ^= 0xFFFFFF00;
    v249 = *(this + 33);
    v250 = *(v249 + 740);
    *(v249 + 740) = v248;
    if (*(this + 454) || *(this + 946) || *(this + 947))
    {
      result = CAHDec::addToPatcherList(this, this + 454, 740, 0, 0xFFFFFFFFLL, 8, v250, 4);
      if (result)
      {
        return result;
      }
    }

    v251 = *(this + 33);
    v252 = *(v251 + 744);
    *(v251 + 744) = 0;
    *(*(this + 33) + 744) ^= 0x3FFu;
    v253 = *(this + 33);
    v254 = *(v253 + 744);
    *(v253 + 744) = v252;
    if (*(this + 454) || *(this + 946) || *(this + 947))
    {
      result = CAHDec::addToPatcherList(this, this + 454, 744, 0, 0x3FFFFFFFFFFLL, 32, v254, 4);
      if (result)
      {
        return result;
      }
    }

    v255 = *(this + 32);
    v256 = *(v255 + 2892);
    if (*(v255 + 2892))
    {
      v257 = *(v255 + 2904);
      v256 = *(v255 + 2908);
    }

    else
    {
      v257 = 0;
    }

    v258 = *(v255 + 37888);
    v259 = *(v258 + 52);
    v260 = v259 + v257;
    if (__CFADD__(v259, v257))
    {
      v261 = 1;
    }

    else
    {
      v262 = *(v258 + 56);
      v263 = v262 + v256;
      if (!__CFADD__(v262, v256))
      {
        v267 = *(this + 33);
        v268 = *(v267 + 748);
        *(v267 + 748) = 0;
        *(*(this + 33) + 748) ^= 0xFFFFFFC0;
        v269 = *(this + 33);
        v270 = *(v269 + 748);
        *(v269 + 748) = v268;
        v271 = *(*(this + 32) + 37888);
        if (*v271 || *(v271 + 152) || *(v271 + 156))
        {
          result = CAHDec::addToPatcherList(this, v271, 748, v260, 0xFFFFFFFFLL, 6, v270, 4);
          if (result)
          {
            return result;
          }
        }

        v272 = *(this + 33);
        v273 = *(v272 + 752);
        *(v272 + 752) = 0;
        *(*(this + 33) + 752) ^= 0x3FFu;
        v274 = *(this + 33);
        v275 = *(v274 + 752);
        *(v274 + 752) = v273;
        v276 = *(*(this + 32) + 37888);
        if (*v276 || *(v276 + 152) || *(v276 + 156))
        {
          result = CAHDec::addToPatcherList(this, v276, 752, v260, 0x3FFFFFFFFFFLL, 32, v275, 4);
          if (result)
          {
            return result;
          }
        }

        v277 = *(this + 33);
        v278 = *(v277 + 760);
        *(v277 + 760) = 0;
        *(*(this + 33) + 760) ^= 0xFFFFFFC0;
        v279 = *(this + 33);
        v280 = *(v279 + 760);
        *(v279 + 760) = v278;
        v281 = *(*(this + 32) + 37888);
        if (*v281 || *(v281 + 152) || *(v281 + 156))
        {
          result = CAHDec::addToPatcherList(this, v281, 760, v263, 0xFFFFFFFFLL, 6, v280, 4);
          if (result)
          {
            return result;
          }
        }

        v282 = *(this + 33);
        v283 = *(v282 + 764);
        *(v282 + 764) = 0;
        *(*(this + 33) + 764) ^= 0x3FFu;
        v284 = *(this + 33);
        v285 = *(v284 + 764);
        *(v284 + 764) = v283;
        v286 = *(this + 32);
        v287 = *(v286 + 37888);
        if (*v287 || *(v287 + 152) || *(v287 + 156))
        {
          result = CAHDec::addToPatcherList(this, v287, 764, v263, 0x3FFFFFFFFFFLL, 32, v285, 4);
          if (result)
          {
            return result;
          }

          v286 = *(this + 32);
        }

        v288 = 15112;
        if (*(v286 + 8))
        {
          v288 = 37888;
        }

        v289 = 76;
        if (!*(v286 + 8))
        {
          v289 = 78508;
        }

        v290 = 78512;
        if (*(v286 + 8))
        {
          v290 = 80;
        }

        *(*(this + 33) + 756) = *(*(this + 33) + 756) & 0xFFFC003F | (((*(*(v286 + v288) + v289) >> 6) & 0xFFF) << 6);
        *(*(this + 33) + 768) = *(*(this + 33) + 768) & 0xFFF8003F | (((*(*(*(this + 32) + v288) + v290) >> 6) & 0x1FFF) << 6);
        goto LABEL_275;
      }

      v261 = 2;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v359[0]) = 136315394;
      *(v359 + 4) = "populateAddressRegisters";
      WORD6(v359[0]) = 1024;
      *(v359 + 14) = v261;
      v264 = MEMORY[0x277D86220];
      v265 = "AppleAVD: %s(): failKind = %d";
      v266 = 18;
      goto LABEL_344;
    }

    return 0xFFFFFFFFLL;
  }

LABEL_275:
  v291 = *(this + 32);
  if (*(*(v291 + 15112) + 128) == 1 && !*(*(v291 + 37616) + 1956))
  {
    return 0;
  }

  *(*(this + 33) + 772) = 0;
  v292 = *(this + 33);
  v293 = *(v292 + 772);
  *(v292 + 772) = 0;
  *(*(this + 33) + 772) ^= 0xFFFFFF00;
  v294 = *(this + 33);
  v295 = *(v294 + 772);
  *(v294 + 772) = v293;
  if (!*(this + 498) && !*(this + 1034) && !*(this + 1035) || (result = CAHDec::addToPatcherList(this, this + 498, 772, 0, 0xFFFFFFFFLL, 8, v295, 4), !result))
  {
    if ((*(*(this + 33) + 776) = 0, v296 = *(this + 33), v297 = *(v296 + 776), *(v296 + 776) = 0, *(*(this + 33) + 776) ^= 0x3FFu, v298 = *(this + 33), v299 = *(v298 + 776), *(v298 + 776) = v297, !*(this + 498)) && !*(this + 1034) && !*(this + 1035) || (result = CAHDec::addToPatcherList(this, this + 498, 776, 0, 0x3FFFFFFFFFFLL, 32, v299, 4), !result))
    {
      if (*(*(*(this + 32) + 15112) + 128))
      {
        return 0;
      }

      v300 = 0;
      v301 = 0;
      do
      {
        v302 = *(*(*(*(this + 32) + 15112) + 79224) + v301);
        if (!v302 || (v303 = *(v302 + 2016)) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v359[0]) = 136315138;
            *(v359 + 4) = "populateAddressRegisters";
            v264 = MEMORY[0x277D86220];
            v265 = "AppleAVD: %s(): Unexpected. av1_fb->buffer is 0x0!";
            v266 = 12;
LABEL_344:
            _os_log_impl(&dword_277606000, v264, OS_LOG_TYPE_DEFAULT, v265, v359, v266);
          }

          return 0xFFFFFFFFLL;
        }

        *(*(this + 33) + v300 + 780) = 0;
        *(*(this + 33) + v300 + 808) = 0;
        *(*(this + 33) + v300 + 836) = 0;
        *(*(this + 33) + v300 + 864) = 0;
        *(*(this + 33) + v300 + 892) = 0;
        *(*(this + 33) + v300 + 920) = 0;
        *(*(this + 33) + v300 + 948) = 0;
        *(*(this + 33) + v300 + 976) = 0;
        v304 = *(this + 33) + v300;
        v305 = *(v304 + 836);
        *(v304 + 836) = 0;
        *(*(this + 33) + v300 + 836) ^= 0xFFFFFF80;
        v306 = *(this + 33) + v300;
        v307 = *(v306 + 836);
        *(v306 + 836) = v305;
        v308 = *(v303 + 8);
        if (*v308 || *(v308 + 152) || *(v308 + 156))
        {
          result = CAHDec::addToPatcherList(this, v308, v300 + 836, *(v308 + 52), 0xFFFFFFFFLL, 7, v307, 4);
          if (result)
          {
            return result;
          }
        }

        v309 = *(this + 33) + v300;
        v310 = *(v309 + 864);
        *(v309 + 864) = 0;
        *(*(this + 33) + v300 + 864) ^= 0x3FFu;
        v311 = *(this + 33) + v300;
        v312 = *(v311 + 864);
        *(v311 + 864) = v310;
        v313 = *(v303 + 8);
        if (*v313 || *(v313 + 152) || *(v313 + 156))
        {
          result = CAHDec::addToPatcherList(this, v313, v300 | 0x360, *(v313 + 52), 0x3FFFFFFFFFFLL, 32, v312, 4);
          if (result)
          {
            return result;
          }
        }

        v314 = *(this + 33) + v300;
        v315 = *(v314 + 948);
        *(v314 + 948) = 0;
        *(*(this + 33) + v300 + 948) ^= 0xFFFFFF80;
        v316 = *(this + 33) + v300;
        v317 = *(v316 + 948);
        *(v316 + 948) = v315;
        v318 = *(v303 + 8);
        if (*v318 || *(v318 + 152) || *(v318 + 156))
        {
          result = CAHDec::addToPatcherList(this, v318, v300 + 948, *(v318 + 56), 0xFFFFFFFFLL, 7, v317, 4);
          if (result)
          {
            return result;
          }
        }

        v319 = *(this + 33) + v300;
        v320 = *(v319 + 976);
        *(v319 + 976) = 0;
        *(*(this + 33) + v300 + 976) ^= 0x3FFu;
        v321 = *(this + 33) + v300;
        v322 = *(v321 + 976);
        *(v321 + 976) = v320;
        v323 = *(v303 + 8);
        if (*v323 || *(v323 + 152) || *(v323 + 156))
        {
          result = CAHDec::addToPatcherList(this, v323, v300 + 976, *(v323 + 56), 0x3FFFFFFFFFFLL, 32, v322, 4);
          if (result)
          {
            return result;
          }
        }

        v324 = *(*(this + 32) + 2648);
        v325 = *(this + 33) + v300;
        v326 = *(v325 + 780);
        *(v325 + 780) = 0;
        *(*(this + 33) + v300 + 780) ^= 0xFFFFFF80;
        v327 = *(this + 33) + v300;
        v328 = *(v327 + 780);
        *(v327 + 780) = v326;
        if (v324 == 1)
        {
          v329 = *(v303 + 8);
          if (*v329 || *(v329 + 152) || *(v329 + 156))
          {
            result = CAHDec::addToPatcherList(this, v329, v300 + 780, *(v329 + 64), 0xFFFFFFFFLL, 7, v328, 4);
            if (result)
            {
              return result;
            }
          }

          v330 = *(this + 33) + v300;
          v331 = *(v330 + 808);
          *(v330 + 808) = 0;
          *(*(this + 33) + v300 + 808) ^= 0x3FFu;
          v332 = *(this + 33) + v300;
          v333 = *(v332 + 808);
          *(v332 + 808) = v331;
          v334 = *(v303 + 8);
          if (*v334 || *(v334 + 152) || *(v334 + 156))
          {
            result = CAHDec::addToPatcherList(this, v334, v300 + 808, *(v334 + 64), 0x3FFFFFFFFFFLL, 32, v333, 4);
            if (result)
            {
              return result;
            }
          }

          v335 = *(this + 33) + v300;
          v336 = *(v335 + 892);
          *(v335 + 892) = 0;
          *(*(this + 33) + v300 + 892) ^= 0xFFFFFF80;
          v337 = *(this + 33) + v300;
          v338 = *(v337 + 892);
          *(v337 + 892) = v336;
          v339 = *(v303 + 8);
          if (*v339 || *(v339 + 152) || *(v339 + 156))
          {
            result = CAHDec::addToPatcherList(this, v339, v300 + 892, *(v339 + 68), 0xFFFFFFFFLL, 7, v338, 4);
            if (result)
            {
              return result;
            }
          }

          v340 = *(this + 33) + v300;
          v341 = *(v340 + 920);
          *(v340 + 920) = 0;
          *(*(this + 33) + v300 + 920) ^= 0x3FFu;
          v342 = *(this + 33) + v300;
          v343 = *(v342 + 920);
          *(v342 + 920) = v341;
          v344 = *(v303 + 8);
          if (*v344 || *(v344 + 152) || *(v344 + 156))
          {
            v345 = *(v344 + 68);
            v346 = v300 + 920;
            v347 = this;
            goto LABEL_339;
          }
        }

        else
        {
          if (*(v303 + 24) || *(v303 + 176) || *(v303 + 180))
          {
            result = CAHDec::addToPatcherList(this, (v303 + 24), v300 + 780, 0, 0xFFFFFFFFLL, 7, v328, 4);
            if (result)
            {
              return result;
            }
          }

          v348 = *(this + 33) + v300;
          v349 = *(v348 + 808);
          *(v348 + 808) = 0;
          *(*(this + 33) + v300 + 808) ^= 0x3FFu;
          v350 = *(this + 33) + v300;
          v351 = *(v350 + 808);
          *(v350 + 808) = v349;
          if (*(v303 + 24) || *(v303 + 176) || *(v303 + 180))
          {
            result = CAHDec::addToPatcherList(this, (v303 + 24), v300 + 808, 0, 0x3FFFFFFFFFFLL, 32, v351, 4);
            if (result)
            {
              return result;
            }
          }

          v352 = *(this + 33) + v300;
          v353 = *(v352 + 892);
          *(v352 + 892) = 0;
          *(*(this + 33) + v300 + 892) ^= 0xFFFFFF80;
          v354 = *(this + 33) + v300;
          v355 = *(v354 + 892);
          *(v354 + 892) = v353;
          if (*(v303 + 200) || *(v303 + 352) || *(v303 + 356))
          {
            result = CAHDec::addToPatcherList(this, (v303 + 200), v300 + 892, 0, 0xFFFFFFFFLL, 7, v355, 4);
            if (result)
            {
              return result;
            }
          }

          v356 = *(this + 33) + v300;
          v357 = *(v356 + 920);
          *(v356 + 920) = 0;
          *(*(this + 33) + v300 + 920) ^= 0x3FFu;
          v358 = *(this + 33) + v300;
          v343 = *(v358 + 920);
          *(v358 + 920) = v357;
          if (*(v303 + 200) || *(v303 + 352) || *(v303 + 356))
          {
            v346 = v300 + 920;
            v347 = this;
            v344 = v303 + 200;
            v345 = 0;
LABEL_339:
            result = CAHDec::addToPatcherList(v347, v344, v346, v345, 0x3FFFFFFFFFFLL, 32, v343, 4);
            if (result)
            {
              return result;
            }
          }
        }

        result = 0;
        v301 += 8;
        v300 += 4;
      }

      while (v300 != 28);
    }
  }

  return result;
}

uint64_t CAHDecCatnipAvx::populateDecryptionRegisters(CAHDecCatnipAvx *this)
{
  v1 = *(this + 32);
  if (*(v1 + 2360) == 1)
  {
    v2 = *(this + 33);
    *(v2 + 1276) = *(v2 + 1276) & 0xFFFFFFFE | *(v1 + 2508) & 1;
    if (*(v1 + 2508))
    {
      *(v2 + 1288) = 0x10000000;
      *(v2 + 1292) = *(v1 + 2368);
      *(v2 + 1304) = 0;
      *(v2 + 1296) = 0;
      *(v2 + 1308) = *(v1 + 2372);
      v3 = *(v1 + 2404);
      *(v2 + 1324) = *(v1 + 2388);
      *(v2 + 1340) = v3;
    }

    *(*(this + 33) + 1276) = *(*(this + 33) + 1276) & 0xFFFFFFFD | (2 * (*(v1 + 2512) & 1));
    if (*(v1 + 2512))
    {
      *(v2 + 1356) = 0;
      v4 = *(v1 + 2424);
      *(v2 + 1356) = (*(v1 + 2424) & 1) << 22;
      v5 = ((*(v1 + 2420) & 1) << 23) | ((v4 & 1) << 22) | 0x20000000;
      *(v2 + 1356) = v5;
      if (!*(v1 + 2364))
      {
        ++v5;
      }

      *(v2 + 1356) = v5;
      v6 = *(v1 + 2428);
      v7 = *(v1 + 2444);
      *(v2 + 1392) = *(v1 + 2460);
      *(v2 + 1376) = v7;
      *(v2 + 1360) = v6;
    }

    *(*(this + 33) + 1276) = *(*(this + 33) + 1276) & 0xFFFFFFFB | (4 * (*(v1 + 2516) & 1));
    *(*(this + 33) + 1276) = *(*(this + 33) + 1276) & 0xFFFFFFF7 | (8 * (*(v1 + 2520) & 1));
    *(*(this + 33) + 1276) = *(*(this + 33) + 1276) & 0xFFFFFFEF | (16 * (*(v1 + 2524) & 1));
    *(v2 + 1412) = 0;
    if (*(v1 + 2476) == 2)
    {
      v8 = 805306368;
    }

    else
    {
      v8 = 813694976;
    }

    *(v2 + 1412) = v8;
    memcpy((v2 + 1416), (v1 + 2480), 4 * *(v1 + 2476));
    if (*(v1 + 2516))
    {
      *(v1 + 2516) = 0;
    }
  }

  return 0;
}

uint64_t CAHDecCatnipAvx::populateTiles(CAHDecCatnipAvx *this)
{
  v2 = (*(*(*(this + 32) + 15112) + 140) * *(*(*(this + 32) + 15112) + 136));
  v3 = *(this + *(this + 13) + 34);
  CAHDecTansyAvx::populateClearTiles(this);
  if (v2)
  {
    v4 = 0;
    v5 = v3 + 1432;
    do
    {
      CAHDecCatnipAvx::populateTileRegisters(this, v5, v4++);
      v5 += 12;
    }

    while (v2 != v4);
  }

  return 0;
}

uint64_t CAHDecCatnipAvx::updateCommonRegisters(CAHDecCatnipAvx *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecCatnipAvx::populateSequenceRegisters(CAHDecCatnipAvx *this)
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

uint64_t CAHDecCatnipAvx::getUpscaleConvolveStep(CAHDecCatnipAvx *this, int a2, int a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    return ((a3 / 2 + (a2 << 14)) / a3);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "int32_t CAHDecCatnipAvx::getUpscaleConvolveStep(int, int)";
    v6 = 1024;
    v7 = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: invalid out_length %d\n", &v4, 0x12u);
  }

  return 0xFFFFFFFFLL;
}

uint64_t CAHDecCatnipAvx::getUpscaleConvolveX0(CAHDecCatnipAvx *this, int a2, int a3, int a4)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    return ((((a2 - a3) << 13) + a3 / 2) / a3 - ((a4 * a3 - (a2 << 14) + ((a4 * a3 - (a2 << 14)) >> 31)) >> 1) + 128) & 0x3FFF;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "int32_t CAHDecCatnipAvx::getUpscaleConvolveX0(int, int, int32_t)";
    v7 = 1024;
    v8 = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: invalid out_length %d\n", &v5, 0x12u);
  }

  return 0xFFFFFFFFLL;
}

uint64_t CAHDecCatnipAvx::populatePictureRegisters(CAHDecCatnipAvx *this)
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
  UpscaleConvolveStep = CAHDecCatnipAvx::getUpscaleConvolveStep(this, *(v4 + 2176), *(v4 + 2164));
  v169 = UpscaleConvolveStep;
  UpscaleConvolveX0 = CAHDecCatnipAvx::getUpscaleConvolveX0(UpscaleConvolveStep, *(v4 + 2176), *(v4 + 2164), UpscaleConvolveStep);
  *(v2 + 208) = v169 & 0x3FFF | ((UpscaleConvolveX0 & 0x3FFF) << 14);
  v171 = (*(v4 + 2176) + 1) >> 1;
  v172 = (*(v4 + 2164) + 1) >> 1;
  v173 = CAHDecCatnipAvx::getUpscaleConvolveStep(UpscaleConvolveX0, v171, v172);
  *(v2 + 212) = v173 & 0x3FFF | ((CAHDecCatnipAvx::getUpscaleConvolveX0(v173, v171, v172, v173) & 0x3FFF) << 14);
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
        v204 = "virtual int CAHDecCatnipAvx::populatePictureRegisters()";
        v205 = 1024;
        v206 = v197;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: invalid reference buffer %d\n", &v203, 0x12u);
      }
    }

    return (v202 << 31 >> 31);
  }

  return result;
}

uint64_t CAHDecCatnipAvx::populateTileRegisters(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 256);
  if (*(v3 + 2360) == 1)
  {
    v4 = *(v3 + 15112);
    *(a2 + 4) = 0;
    if (*(v3 + 2420))
    {
      v5 = *(v3 + 2504) | (*(a2 + 10) << 16);
      *(a2 + 8) = v5;
      v6 = v5 & 0xFFFEFFFF | ((HIWORD(*(v3 + 2504)) & 1) << 16);
    }

    else
    {
      v7 = *(a2 + 8) & 0x3FFFFF | (*(v4 + 2 * a3 + 66200) << 22);
      *(a2 + 8) = v7;
      v8 = *(v4 + a3 + 74392);
      if (v8)
      {
        v8 = *(v3 + 2504);
      }

      v9 = v8 | v7 & 0xFFFFFF00;
      *(a2 + 8) = v9;
      v6 = v9 & 0xFFFF00FF | (*(v3 + 2505) << 8);
    }

    *(a2 + 8) = v6;
  }

  return 0;
}

uint64_t CAHDecCatnipAvx::populateAvdWork(CAHDecCatnipAvx *this)
{
  v51 = *MEMORY[0x277D85DE8];
  v1 = *(this + 32);
  v2 = *(this + 33);
  v3 = v1 + 36864;
  v4 = *(v1 + 15112);
  v5 = *(v4 + 34);
  if (*(*(v3 + 752) + 60) == 15)
  {
    v6 = 5;
  }

  else
  {
    v6 = 4;
  }

  if (v5)
  {
    v7 = 0;
    LODWORD(v8) = 0;
    v41 = 0;
    v9 = v2 + 50584;
    LODWORD(v10) = *(v4 + 35);
    v33 = v10 * v5;
    v34 = *(v3 + 1048);
    v38 = *v4;
    v37 = v4 + 18;
    v42 = v4 + 4114;
    v43 = 0;
    v35 = v4 + 8210;
    v11 = -50548 - v2;
    v12 = (v4 + 8243);
    v13 = -(v10 * v5);
    v36 = v4;
    v30 = (v4 + 8243);
    v31 = -50548 - v2;
    v29 = v13;
    while (!v10)
    {
      v26 = v43 + 1;
LABEL_39:
      v43 = v26;
      if (v26 >= v5)
      {
        v2 = *(this + 33);
        v28 = v41;
        goto LABEL_42;
      }
    }

    v14 = 0;
    v15 = v11 + v9;
    v40 = v13 + v7;
    v32 = v7;
    v39 = v7;
    while (1)
    {
      v16 = v9;
      v17 = v39 + v14;
      v18 = v40 + v14;
      v46 = 0;
      *(v9 + 4) = (v41 + v14);
      *(v9 + 10) = v39 + v14;
      v19 = v39 + v14 ? 4 : 5;
      *(v9 + 12) = v19;
      if (v18 == -1)
      {
        *(v9 + 14) = 262149;
      }

      else
      {
        *(v9 + 14) = 4;
        if ((v34 & 2) != 0 && v33 >= 2 && v18 == -2)
        {
          *(v9 + 16) = 4;
        }

        else
        {
          *(v9 + 16) = 0;
        }
      }

      v45 = 0;
      if (!CAVDAvxDecoder::GetTileMemInfo(*(this + 32), v38 + v37[v17], &v46, &v45))
      {
        return 0xFFFFFFFFLL;
      }

      v20 = 36 * v8;
      v21 = v46;
      if (*v46 || *(v46 + 152) || *(v46 + 156))
      {
        v22 = v45;
        if (HIDWORD(v45) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v48 = "populateAvdWork";
          v49 = 1024;
          v50 = 1641;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v22 = v45;
        }

        result = CAHDec::addToPatcherList(this, v21, v20 + 50604, v22, 0xFFFFFFFFLL, 0, -1, 4);
        if (result)
        {
          return result;
        }

        v21 = v46;
        if (*v46)
        {
          goto LABEL_29;
        }
      }

      if (*(v21 + 152) || *(v21 + 156))
      {
LABEL_29:
        v24 = v45;
        if (HIDWORD(v45) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v48 = "populateAvdWork";
          v49 = 1024;
          v50 = 1642;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v24 = v45;
        }

        result = CAHDec::addToPatcherList(this, v21, v20 + 50602, v24, 0x3FFFFFFFFFFLL, 32, -1, 2);
        if (result)
        {
          return result;
        }
      }

      v25 = v42[v17];
      if (HIDWORD(v25))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v48 = "populateAvdWork";
          v49 = 1024;
          v50 = 1644;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v25 = v42[v17];
        }
      }

      *(v9 + 24) = v25;
      *(v9 + 28) = (*(v12 - 1) >> v6) | (*(v35 + v43) >> v6 << 16);
      v26 = v43 + 1;
      ++v14;
      v27 = *v12++;
      *(v9 + 32) = ((v27 - 1) >> v6) | ((*(v35 + v43 + 1) - 1) >> v6 << 16);
      v9 += 36;
      *(v16 + 8) = 0;
      v8 = 0x8E38E38E38E38E39 * (v15 >> 2);
      v10 = *(v36 + 35);
      v15 += 36;
      if (v14 >= v10)
      {
        v5 = *(v36 + 34);
        v7 = v32 + v14;
        v41 += v14;
        v12 = v30;
        v11 = v31;
        v13 = v29;
        goto LABEL_39;
      }
    }
  }

  else
  {
    v28 = 0;
LABEL_42:
    result = 0;
    *(v2 + 26) = v28;
    *(v2 + 32) = 50584;
  }

  return result;
}

uint64_t CAHDecCatnipAvx::allocWorkBuf_SPS(CAHDecCatnipAvx *this, int *a2)
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
    v53 = 1757;
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

  *(this + 1040) = v18;
  *(this + 1041) = v31;
  *(this + 1045) = 9168;
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
  *(this + 1047) = v35 * v33;
  *(this + 1046) = v35 << v34;
  if (v7[662])
  {
LABEL_51:
    v41 = 12944;
    v42 = 11;
    do
    {
      v43 = *(this + 1047);
      if (v43 && CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v41), v43, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_69;
        }

        v50 = 136315650;
        v51 = "allocWorkBuf_SPS";
        v52 = 1024;
        v53 = 1857;
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
      v46 = *(this + 1046);
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
      v53 = 1863;
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
    v38 = *(this + 1040);
    if (v38 && CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v36 - 2640), v38, 7, 1, 0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_69;
      }

      v50 = 136315650;
      v51 = "allocWorkBuf_SPS";
      v52 = 1024;
      v53 = 1799;
      v54 = 2080;
      v55 = "HdrY";
      v48 = MEMORY[0x277D86220];
      goto LABEL_68;
    }

    v39 = *(this + 1041);
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
    v53 = 1804;
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

void CAHDecCatnipAvx::getPPSWorkBufSize(uint64_t this, unsigned __int8 *a2, char *a3)
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
    v119 = 1894;
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
          v119 = 1928;
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
    this = CAHDecTansyAvx::calc_az_left_tile_size(this, v115, v113, v22, v108, v67, v71, v114, v66);
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
    v119 = 2018;
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
    v119 = 2022;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
  }

  *(a3 + 5) = v84;
  *(a3 + 3) = v95;
  *(a3 + 4) = v112;
  *(a3 + 10) = v64;
  *(a3 + 11) = v72;
  *(a3 + 12) = v78;
}

uint64_t CAHDecCatnipAvx::allocWorkBuf_PPS(CAHDecCatnipAvx *this, void *a2, void *a3, int *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = *a4;
  v7 = *(this + 32);
  v8 = *(v7 + 15112);
  if (v6 > v8[19809])
  {
    if (v6)
    {
      if (CAVDDecoder::allocAVDMem(v7, this + 106, v6, 7, 1, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v36 = 136315650;
          v37 = "allocWorkBuf_PPS";
          v38 = 1024;
          v39 = 2077;
          v40 = 2080;
          v41 = "OvpAboveInfo";
          v9 = MEMORY[0x277D86220];
LABEL_102:
          _os_log_impl(&dword_277606000, v9, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v36, 0x1Cu);
          goto LABEL_103;
        }

        goto LABEL_103;
      }

      v10 = *a4;
      v7 = *(this + 32);
      v8 = *(v7 + 15112);
    }

    else
    {
      v10 = 0;
    }

    v8[19809] = v10;
  }

  v11 = a4[1];
  if (v11 <= v8[19810])
  {
LABEL_17:
    v13 = a4[2];
    if (v13 > v8[19811])
    {
      if (v13)
      {
        if (CAVDDecoder::allocAVDMem(v7, this + 128, v13, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v36 = 136315650;
            v37 = "allocWorkBuf_PPS";
            v38 = 1024;
            v39 = 2092;
            v40 = 2080;
            v41 = "LfAbovePixel";
            v9 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v14 = a4[2];
        v7 = *(this + 32);
        v8 = *(v7 + 15112);
      }

      else
      {
        v14 = 0;
      }

      v8[19811] = v14;
    }

    v15 = a4[3];
    if (v15 > v8[19812])
    {
      if (v15)
      {
        if (CAVDDecoder::allocAVDMem(v7, this + 139, v15, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v36 = 136315650;
            v37 = "allocWorkBuf_PPS";
            v38 = 1024;
            v39 = 2099;
            v40 = 2080;
            v41 = "LfAboveInfo";
            v9 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v16 = a4[3];
        v7 = *(this + 32);
        v8 = *(v7 + 15112);
      }

      else
      {
        v16 = 0;
      }

      v8[19812] = v16;
    }

    v17 = a4[4];
    if (v17 > v8[19813])
    {
      if (v17)
      {
        if (CAVDDecoder::allocAVDMem(v7, this + 183, v17, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v36 = 136315650;
            v37 = "allocWorkBuf_PPS";
            v38 = 1024;
            v39 = 2106;
            v40 = 2080;
            v41 = "RfAboveInfo";
            v9 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v18 = a4[4];
        v7 = *(this + 32);
        v8 = *(v7 + 15112);
      }

      else
      {
        v18 = 0;
      }

      v8[19813] = v18;
    }

    v19 = a4[5];
    if (v19 > v8[19814])
    {
      if (v19)
      {
        if (CAVDDecoder::allocAVDMem(v7, this + 249, v19, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v36 = 136315650;
            v37 = "allocWorkBuf_PPS";
            v38 = 1024;
            v39 = 2113;
            v40 = 2080;
            v41 = "MvAboveInfo";
            v9 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v20 = a4[5];
        v7 = *(this + 32);
        v8 = *(v7 + 15112);
      }

      else
      {
        v20 = 0;
      }

      v8[19814] = v20;
    }

    v21 = a4[6];
    if (v21 > v8[19815])
    {
      if (v21)
      {
        if (CAVDDecoder::allocAVDMem(v7, this + 150, v21, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v36 = 136315650;
            v37 = "allocWorkBuf_PPS";
            v38 = 1024;
            v39 = 2120;
            v40 = 2080;
            v41 = "LfLeftPixel";
            v9 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v22 = a4[6];
        v7 = *(this + 32);
        v8 = *(v7 + 15112);
      }

      else
      {
        v22 = 0;
      }

      v8[19815] = v22;
    }

    v23 = a4[7];
    if (v23 > v8[19816])
    {
      if (v23)
      {
        if (CAVDDecoder::allocAVDMem(v7, this + 161, v23, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v36 = 136315650;
            v37 = "allocWorkBuf_PPS";
            v38 = 1024;
            v39 = 2127;
            v40 = 2080;
            v41 = "LfLeftInfo";
            v9 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v24 = a4[7];
        v7 = *(this + 32);
        v8 = *(v7 + 15112);
      }

      else
      {
        v24 = 0;
      }

      v8[19816] = v24;
    }

    v25 = a4[8];
    if (v25 > v8[19817])
    {
      if (v25)
      {
        if (CAVDDecoder::allocAVDMem(v7, this + 172, v25, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v36 = 136315650;
            v37 = "allocWorkBuf_PPS";
            v38 = 1024;
            v39 = 2134;
            v40 = 2080;
            v41 = "SrLeftPixel";
            v9 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v26 = a4[8];
        v7 = *(this + 32);
        v8 = *(v7 + 15112);
      }

      else
      {
        v26 = 0;
      }

      v8[19817] = v26;
    }

    v27 = a4[9];
    if (v27 > v8[19818])
    {
      if (v27)
      {
        if (CAVDDecoder::allocAVDMem(v7, this + 194, v27, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v36 = 136315650;
            v37 = "allocWorkBuf_PPS";
            v38 = 1024;
            v39 = 2141;
            v40 = 2080;
            v41 = "RfLeftPixel";
            v9 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v28 = a4[9];
        v7 = *(this + 32);
        v8 = *(v7 + 15112);
      }

      else
      {
        v28 = 0;
      }

      v8[19818] = v28;
    }

    v29 = a4[10];
    if (v29 > v8[19819])
    {
      if (v29)
      {
        if (CAVDDecoder::allocAVDMem(v7, this + 205, v29, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v36 = 136315650;
            v37 = "allocWorkBuf_PPS";
            v38 = 1024;
            v39 = 2148;
            v40 = 2080;
            v41 = "RfLeftInfo";
            v9 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v30 = a4[10];
        v7 = *(this + 32);
        v8 = *(v7 + 15112);
      }

      else
      {
        v30 = 0;
      }

      v8[19819] = v30;
    }

    v31 = a4[11];
    if (v31 > v8[19820])
    {
      if (v31)
      {
        if (CAVDDecoder::allocAVDMem(v7, this + 238, v31, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v36 = 136315650;
            v37 = "allocWorkBuf_PPS";
            v38 = 1024;
            v39 = 2155;
            v40 = 2080;
            v41 = "AzLeftPixel";
            v9 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v32 = a4[11];
        v7 = *(this + 32);
        v8 = *(v7 + 15112);
      }

      else
      {
        v32 = 0;
      }

      v8[19820] = v32;
    }

    v33 = a4[12];
    if (v33 <= v8[19821])
    {
      return 0;
    }

    if (v33)
    {
      if (CAVDDecoder::allocAVDMem(v7, this + 227, v33, 7, 1, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v36 = 136315650;
          v37 = "allocWorkBuf_PPS";
          v38 = 1024;
          v39 = 2162;
          v40 = 2080;
          v41 = "SWrLeftPixel";
          v9 = MEMORY[0x277D86220];
          goto LABEL_102;
        }

        goto LABEL_103;
      }

      v35 = a4[12];
      v8 = *(*(this + 32) + 15112);
    }

    else
    {
      v35 = 0;
    }

    result = 0;
    v8[19821] = v35;
    return result;
  }

  if (!v11)
  {
    v12 = 0;
LABEL_16:
    v8[19810] = v12;
    goto LABEL_17;
  }

  if (!CAVDDecoder::allocAVDMem(v7, this + 117, v11, 7, 1, 0))
  {
    v12 = a4[1];
    v7 = *(this + 32);
    v8 = *(v7 + 15112);
    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v36 = 136315650;
    v37 = "allocWorkBuf_PPS";
    v38 = 1024;
    v39 = 2085;
    v40 = 2080;
    v41 = "IPAbovePixel";
    v9 = MEMORY[0x277D86220];
    goto LABEL_102;
  }

LABEL_103:
  (*(*this + 160))(this, a4);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecCatnipAvx::freeWorkBuf_SPS(CAHDecCatnipAvx *this)
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

double CAHDecCatnipAvx::freeWorkBuf_PPS(CAHDecCatnipAvx *this, _DWORD *a2)
{
  if (!a2 || (v4 = *(*(this + 32) + 15112), *a2 > v4[19809]))
  {
    if (*(this + 212))
    {
      v5 = (this + 1696);
      CAVDDecoder::deallocAVDMem(*(this + 32), this + 212);
      result = 0.0;
      *v5 = 0u;
      *(this + 107) = 0u;
      *(this + 108) = 0u;
      *(this + 109) = 0u;
      *(this + 110) = 0u;
      *(this + 111) = 0u;
      *(this + 112) = 0u;
      *(this + 113) = 0u;
      *(this + 114) = 0u;
      *(this + 115) = 0u;
      *(this + 116) = 0u;
    }

    if (!a2)
    {
      goto LABEL_8;
    }

    v4 = *(*(this + 32) + 15112);
  }

  if (a2[1] <= v4[19810])
  {
    goto LABEL_12;
  }

LABEL_8:
  if (*(this + 234))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 234);
    result = 0.0;
    *(this + 117) = 0u;
    *(this + 118) = 0u;
    *(this + 119) = 0u;
    *(this + 120) = 0u;
    *(this + 121) = 0u;
    *(this + 122) = 0u;
    *(this + 123) = 0u;
    *(this + 124) = 0u;
    *(this + 125) = 0u;
    *(this + 126) = 0u;
    *(this + 127) = 0u;
  }

  if (a2)
  {
    v4 = *(*(this + 32) + 15112);
LABEL_12:
    if (a2[2] <= v4[19811])
    {
      goto LABEL_17;
    }
  }

  if (*(this + 256))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 256);
    result = 0.0;
    *(this + 128) = 0u;
    *(this + 129) = 0u;
    *(this + 130) = 0u;
    *(this + 131) = 0u;
    *(this + 132) = 0u;
    *(this + 133) = 0u;
    *(this + 134) = 0u;
    *(this + 135) = 0u;
    *(this + 136) = 0u;
    *(this + 137) = 0u;
    *(this + 138) = 0u;
  }

  if (!a2)
  {
    goto LABEL_18;
  }

  v4 = *(*(this + 32) + 15112);
LABEL_17:
  if (a2[3] <= v4[19812])
  {
    goto LABEL_22;
  }

LABEL_18:
  if (*(this + 278))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 278);
    result = 0.0;
    *(this + 139) = 0u;
    *(this + 140) = 0u;
    *(this + 141) = 0u;
    *(this + 142) = 0u;
    *(this + 143) = 0u;
    *(this + 144) = 0u;
    *(this + 145) = 0u;
    *(this + 146) = 0u;
    *(this + 147) = 0u;
    *(this + 148) = 0u;
    *(this + 149) = 0u;
  }

  if (a2)
  {
    v4 = *(*(this + 32) + 15112);
LABEL_22:
    if (a2[4] <= v4[19813])
    {
      goto LABEL_27;
    }
  }

  if (*(this + 366))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 366);
    result = 0.0;
    *(this + 183) = 0u;
    *(this + 184) = 0u;
    *(this + 185) = 0u;
    *(this + 186) = 0u;
    *(this + 187) = 0u;
    *(this + 188) = 0u;
    *(this + 189) = 0u;
    *(this + 190) = 0u;
    *(this + 191) = 0u;
    *(this + 192) = 0u;
    *(this + 193) = 0u;
  }

  if (!a2)
  {
    goto LABEL_28;
  }

  v4 = *(*(this + 32) + 15112);
LABEL_27:
  if (a2[5] <= v4[19814])
  {
    goto LABEL_32;
  }

LABEL_28:
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

  if (a2)
  {
    v4 = *(*(this + 32) + 15112);
LABEL_32:
    if (a2[6] <= v4[19815])
    {
      goto LABEL_37;
    }
  }

  if (*(this + 300))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 300);
    result = 0.0;
    *(this + 150) = 0u;
    *(this + 151) = 0u;
    *(this + 152) = 0u;
    *(this + 153) = 0u;
    *(this + 154) = 0u;
    *(this + 155) = 0u;
    *(this + 156) = 0u;
    *(this + 157) = 0u;
    *(this + 158) = 0u;
    *(this + 159) = 0u;
    *(this + 160) = 0u;
  }

  if (!a2)
  {
    goto LABEL_38;
  }

  v4 = *(*(this + 32) + 15112);
LABEL_37:
  if (a2[7] <= v4[19816])
  {
    goto LABEL_42;
  }

LABEL_38:
  if (*(this + 322))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 322);
    result = 0.0;
    *(this + 161) = 0u;
    *(this + 162) = 0u;
    *(this + 163) = 0u;
    *(this + 164) = 0u;
    *(this + 165) = 0u;
    *(this + 166) = 0u;
    *(this + 167) = 0u;
    *(this + 168) = 0u;
    *(this + 169) = 0u;
    *(this + 170) = 0u;
    *(this + 171) = 0u;
  }

  if (a2)
  {
    v4 = *(*(this + 32) + 15112);
LABEL_42:
    if (a2[8] <= v4[19817])
    {
      goto LABEL_47;
    }
  }

  if (*(this + 344))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 344);
    result = 0.0;
    *(this + 172) = 0u;
    *(this + 173) = 0u;
    *(this + 174) = 0u;
    *(this + 175) = 0u;
    *(this + 176) = 0u;
    *(this + 177) = 0u;
    *(this + 178) = 0u;
    *(this + 179) = 0u;
    *(this + 180) = 0u;
    *(this + 181) = 0u;
    *(this + 182) = 0u;
  }

  if (!a2)
  {
    goto LABEL_48;
  }

  v4 = *(*(this + 32) + 15112);
LABEL_47:
  if (a2[9] <= v4[19818])
  {
    goto LABEL_52;
  }

LABEL_48:
  if (*(this + 388))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 388);
    result = 0.0;
    *(this + 194) = 0u;
    *(this + 195) = 0u;
    *(this + 196) = 0u;
    *(this + 197) = 0u;
    *(this + 198) = 0u;
    *(this + 199) = 0u;
    *(this + 200) = 0u;
    *(this + 201) = 0u;
    *(this + 202) = 0u;
    *(this + 203) = 0u;
    *(this + 204) = 0u;
  }

  if (a2)
  {
    v4 = *(*(this + 32) + 15112);
LABEL_52:
    if (a2[10] <= v4[19819])
    {
      goto LABEL_57;
    }
  }

  if (*(this + 410))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 410);
    result = 0.0;
    *(this + 205) = 0u;
    *(this + 206) = 0u;
    *(this + 207) = 0u;
    *(this + 208) = 0u;
    *(this + 209) = 0u;
    *(this + 210) = 0u;
    *(this + 211) = 0u;
    *(this + 212) = 0u;
    *(this + 213) = 0u;
    *(this + 214) = 0u;
    *(this + 215) = 0u;
  }

  if (!a2)
  {
    goto LABEL_58;
  }

  v4 = *(*(this + 32) + 15112);
LABEL_57:
  if (a2[11] <= v4[19820])
  {
    goto LABEL_62;
  }

LABEL_58:
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
LABEL_62:
    if (a2[12] <= v4[19821])
    {
      return result;
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

  return result;
}

uint64_t CAHDecCatnipAvx::setVPInstrFifo(uint64_t this, int a2)
{
  v2 = 0;
  v3 = (this + 620);
  do
  {
    *v3 = 1;
    *(v3 - 39) = v2++;
    v3 += 44;
  }

  while (v2 != 7);
  *(this + 4176) = a2;
  return this;
}

void CAHDecCatnipHevc::~CAHDecCatnipHevc(CAHDecCatnipHevc *this)
{
  *this = &unk_288665828;
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecCatnipHevc::~CAHDecCatnipHevc(this);

  JUMPOUT(0x277CAEC20);
}

__n128 CAHDecCatnipHevc::getMVmemInfo(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  v4 = a1 + 176 * a2;
  v5 = *(v4 + 7568);
  v6 = *(v4 + 7600);
  *(a3 + 16) = *(v4 + 7584);
  *(a3 + 32) = v6;
  *a3 = v5;
  v7 = *(v4 + 7616);
  v8 = *(v4 + 7632);
  v9 = *(v4 + 7664);
  *(a3 + 80) = *(v4 + 7648);
  *(a3 + 96) = v9;
  *(a3 + 48) = v7;
  *(a3 + 64) = v8;
  result = *(v4 + 7680);
  v11 = *(v4 + 7696);
  v12 = *(v4 + 7728);
  *(a3 + 144) = *(v4 + 7712);
  *(a3 + 160) = v12;
  *(a3 + 112) = result;
  *(a3 + 128) = v11;
  *a4 = *(a1 + 4 * a2 + 464);
  return result;
}

uint64_t CAHDecCatnipHevc::getTileIdxAbove(CAHDecCatnipHevc *this, unsigned int a2)
{
  v2 = *(*(this + 33) + 684);
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

CAHDec *createLotusHevcDecoder(void *a1)
{
  v2 = operator new(0x2E38uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDec::CAHDec(v2);
    *v3 = &unk_288665F10;
    *(v3 + 32) = a1;
    *(v3 + 114) = 396516;
    *(v3 + 2) = 2692;
    *(v3 + 1) = xmmword_27775C010;
    *(v3 + 8) = 2;
    *(v3 + 7) = a1;
    bzero(v3 + 528, 0x2C00uLL);
  }

  return v3;
}

void CAHDecLotusHevc::~CAHDecLotusHevc(CAHDecLotusHevc *this)
{
  *this = &unk_288665F10;
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecLotusHevc::~CAHDecLotusHevc(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecLotusHevc::init(CAHDecLotusHevc *this)
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

uint64_t CAHDecLotusHevc::initPicture(CAHDecLotusHevc *this, int a2, __int16 a3)
{
  v13 = *MEMORY[0x277D85DE8];
  *(this + 114) = 396516;
  *(this + 13) = 0;
  v4 = *(this + 34);
  *(this + 33) = v4;
  if (v4)
  {
    bzero(v4, 0x60CE4uLL);
    v7 = *(this + *(this + 13) + 34);
    *(v7 + 16) = a2;
    *(v7 + 24) = 257;
    *(v7 + 26) = a3;
    bzero(*(this + 9), 48 * *(this + 17));
    result = 0;
    *(this + 16) = 0;
    *(this + 2955) = 0;
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

uint64_t CAHDecLotusHevc::populateSlices(CAHDecLotusHevc *this, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = *(this + *(this + 13) + 34) + 2692;
    v5 = a2;
    do
    {
      CAHDecLotusHevc::populateSliceRegisters(this, v4, v3++);
      v4 += 356;
    }

    while (v5 != v3);
  }

  return 0;
}

uint64_t CAHDecLotusHevc::populateSliceRegisters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v99 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 256);
  v7 = *(v6 + 8184) + 2360 * a3;
  v8 = *(v6 + 8168) + 23176 * *(v6 + 8208);
  v9 = *(v6 + 8176) + 9856 * *(v6 + 8212);
  *(a1 + 460) = 6 * *(v8 + 3636);
  v10 = *(v8 + 22880);
  *(a2 + 348) = 0x1000000;
  v11 = (((*(v7 + 36) / v10) & 0xFFF) << 12) | 0x1000000;
  *(a2 + 348) = v11;
  *(a2 + 348) = v11 & 0xFFFFF000 | (*(v7 + 36) % v10) & 0xFFF;
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
  if (*(v7 + 44) > 1u || !*(v7 + 2344) || *(a1 + 11820) || ((*(**(a1 + 256) + 352))(*(a1 + 256), a3), v27 = *(a1 + 256), *(v27 + 8920)) || (*(a1 + 11820) = 1, *(a2 + 4) |= 0x40000u, !*(v27 + 8744)) && !*(v27 + 8896) && !*(v27 + 8900) || (result = CAHDec::addToPatcherList(a1, (v27 + 8744), 356 * a3 + 3028, 0, 0xFFFFFFFFLL, 8, 0xFFFFFF, 4), !result))
  {
    *(a2 + 4) = *(a2 + 4) & 0x77FFFF | 0x2D000000;
    (*(**(a1 + 256) + 360))(*(a1 + 256), 0, a3);
    v28 = *(v7 + 44);
    if (v28 > 1)
    {
      goto LABEL_41;
    }

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
    if (v84[590] == 1)
    {
      v93 = 0;
      v94 = 0;
      if ((*(*v84 + 440))(v84, a3, &v94, &v93))
      {
        v86 = v94;
        if (*v94 || *(v94 + 152) || *(v94 + 156))
        {
          v87 = 356 * a3;
          v88 = v93;
          if (HIDWORD(v93) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v96 = "populateSliceRegisters";
            v97 = 1024;
            v98 = 1493;
            v89 = MEMORY[0x277D86220];
LABEL_106:
            _os_log_impl(&dword_277606000, v89, OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v88 = v93;
            goto LABEL_107;
          }

          goto LABEL_107;
        }

        goto LABEL_108;
      }
    }

    else
    {
      v93 = 0;
      v94 = 0;
      if ((*(*v84 + 440))(v84, a3, &v94, &v93))
      {
        v86 = v94;
        if (*v94 || *(v94 + 152) || *(v94 + 156))
        {
          v87 = 356 * a3;
          v88 = v93;
          if (HIDWORD(v93) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v96 = "populateSliceRegisters";
            v97 = 1024;
            v98 = 1507;
            v89 = MEMORY[0x277D86220];
            goto LABEL_106;
          }

LABEL_107:
          result = CAHDec::addToPatcherList(a1, v86, v87 + 3032, v88, 0xFFFFFFFFLL, 0, -1, 4);
          if (result)
          {
            return result;
          }
        }

LABEL_108:
        v91 = *(v7 + 16) - (*(v7 + 2080) >> 3);
        *(a2 + 344) = v91;
        if (v84[590] != 1)
        {
          return 0;
        }

        *(a2 + 352) = 0;
        if (v84[605])
        {
          result = 0;
          if (v91 >= *(v7 + 2352))
          {
            v91 = *(v7 + 2352);
          }

          v92 = v91 | v85 & 0x10000;
        }

        else
        {
          result = 0;
          if (v85 >> 22 <= v91)
          {
            v91 = v85 >> 22;
          }

          v92 = v85 | (v91 << 22);
        }

        *(a2 + 352) = v92;
        return result;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t CAHDecLotusHevc::updateCommonRegisters(CAHDecLotusHevc *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecLotusHevc::populateSequenceRegisters(CAHDecLotusHevc *this)
{
  v1 = *(this + 33);
  v2 = *(*(this + 32) + 8168) + 23176 * *(*(this + 32) + 8208);
  v1[10] = 0;
  v3 = (*(v2 + 3608) >> 3) - 1;
  v1[10] = v3 & 0x1FFF;
  v1[10] = ((*(v2 + 3612) << 13) + 536805376) & 0x1FFF0000 | v3 & 0x1FFF;
  v1[11] = 0;
  v4 = *(v2 + 10648) & 1;
  v1[11] = v4;
  v5 = v4 & 0xFFFFFFF1 | (2 * (*(v2 + 4440) & 7));
  v1[11] = v5;
  v6 = v5 & 0xFFFFFF8F | (16 * (*(v2 + 4436) & 7));
  v1[11] = v6;
  v7 = v6 & 0xFFFFFE7F | (((*(v2 + 4428) + *(v2 + 4432)) & 3) << 7);
  v1[11] = v7;
  v8 = v7 & 0xFFFFF9FF | ((*(v2 + 4428) & 3) << 9);
  v1[11] = v8;
  v9 = v8 & 0xFFFFE7FF | (((*(v2 + 4424) + *(v2 + 4420)) & 3) << 11);
  v1[11] = v9;
  v10 = v9 & 0xFFFF9FFF | ((*(v2 + 4420) & 3) << 13);
  v1[11] = v10;
  v11 = v10 & 0xFFF87FFF | ((*(v2 + 3640) & 0xF) << 15);
  v1[11] = v11;
  v12 = v11 & 0xFF87FFFF | ((*(v2 + 3636) & 0xF) << 19);
  v1[11] = v12;
  v13 = v12 & 0xFF7FFFFF | ((*(v2 + 3604) & 1) << 23);
  v1[11] = v13;
  v1[11] = v13 & 0xFCFFFFFF | ((*(v2 + 3600) & 3) << 24);
  v1[12] = 0;
  if (*(v2 + 10650))
  {
    v1[12] = 4096;
    v14 = (*(v2 + 10664) + *(v2 + 10660)) & 3 | 0x1000;
    v1[12] = v14;
    v15 = v14 & 0xFFFFFFF3 | (4 * (*(v2 + 10660) & 3));
    v1[12] = v15;
    v16 = v15 & 0xFFFFFF0F | (16 * (*(v2 + 10656) & 0xF));
    v1[12] = v16;
    v1[12] = v16 & 0xFFFFF0FF | ((*(v2 + 10652) & 0xF) << 8);
  }

  v1[13] = 0;
  if (*(v2 + 22833))
  {
    v17 = *(v2 + 22844) & 1;
    v1[13] = v17;
    v18 = v17 & 0xFFFFFFFD | (2 * (*(v2 + 22843) & 1));
    v1[13] = v18;
    v19 = v18 & 0xFFFFFFFB | (4 * (*(v2 + 22842) & 1));
    v1[13] = v19;
    v20 = v19 | (8 * (*(v2 + 22841) == 0));
    v1[13] = v20;
    v21 = v20 & 0xFFFFFFEF | (16 * (*(v2 + 22840) & 1));
    v1[13] = v21;
    v22 = v21 & 0xFFFFFFDF | (32 * (*(v2 + 22839) & 1));
    v1[13] = v22;
    v23 = v22 & 0xFFFFFFBF | ((*(v2 + 22838) & 1) << 6);
    v1[13] = v23;
    v24 = v23 | ((*(v2 + 22837) & 1) << 7);
    v1[13] = v24;
    v25 = v24 | ((*(v2 + 22836) & 1) << 8);
  }

  else
  {
    v25 = 8;
  }

  v1[13] = v25;
  v1[13] = v25 & 0xFFFFFDFF | ((*(v2 + 22285) & 1) << 9);
  if (*(v2 + 4444))
  {
    CAHDecTansyHevc::copyScalingList(this, (v1 + 14), *(this + 33) + 556, *(v2 + 3600), v2 + 4448);
  }

  return 0;
}

uint64_t CAHDecLotusHevc::getTileHdrMemInfo(uint64_t result, int a2, void *a3)
{
  v3 = result + 176 * a2;
  *a3 = v3 + 528;
  a3[1] = v3 + 3344;
  return result;
}

__n128 CAHDecLotusHevc::getMVmemInfo(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  v4 = a1 + 176 * a2;
  v5 = *(v4 + 7568);
  v6 = *(v4 + 7600);
  *(a3 + 16) = *(v4 + 7584);
  *(a3 + 32) = v6;
  *a3 = v5;
  v7 = *(v4 + 7616);
  v8 = *(v4 + 7632);
  v9 = *(v4 + 7664);
  *(a3 + 80) = *(v4 + 7648);
  *(a3 + 96) = v9;
  *(a3 + 48) = v7;
  *(a3 + 64) = v8;
  result = *(v4 + 7680);
  v11 = *(v4 + 7696);
  v12 = *(v4 + 7728);
  *(a3 + 144) = *(v4 + 7712);
  *(a3 + 160) = v12;
  *(a3 + 112) = result;
  *(a3 + 128) = v11;
  *a4 = *(a1 + 4 * a2 + 464);
  return result;
}

uint64_t CAHDecLotusHevc::populatePictureRegisters(CAHDecLotusHevc *this)
{
  v346 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(v2 + 8208);
  v4 = *(v2 + 8212);
  v5 = *(v2 + 8168);
  v6 = *(v2 + 8176);
  v7 = *(v2 + 8924);
  v326 = *(v2 + 2960);
  v8 = *(v2 + 2964);
  v317 = *(v2 + 2952);
  v318 = *(v2 + 2948);
  v322 = *(v2 + 8280);
  v323 = *(v2 + 8994);
  v319 = *(v2 + 3548);
  v320 = *(v2 + 2924);
  v331 = *(v2 + 2644);
  v324 = *(v2 + 2088);
  v325 = *(v2 + 8312);
  v316 = *(v2 + 8);
  v9 = *(v2 + 8424);
  v345[0] = *(v2 + 8408);
  v345[1] = v9;
  v10 = *(v2 + 8456);
  v345[2] = *(v2 + 8440);
  v345[3] = v10;
  v321 = *(v2 + 8608);
  v11 = (*(*v2 + 184))(v2);
  v12 = *(this + 32);
  v329 = v11 && (v12[689] || v12[4] == 1);
  v13 = *(this + 33);
  v14 = v5 + 23176 * v3;
  v328 = *(v14 + 4420);
  v327 = *(v14 + 4424);
  memset(v344, 0, sizeof(v344));
  memset(v343, 0, sizeof(v343));
  (*(*v12 + 344))();
  v15 = 0;
  v16 = *(this + 32);
  v17 = (v16 + 8616);
  do
  {
    v347 = vld2q_f64(v17);
    v17 += 4;
    v344[v15] = v347.val[0];
    v343[v15++] = v347.val[1];
  }

  while (v15 != 4);
  v18 = v16[2675];
  v19 = v16[2674];
  if (v18 | v19)
  {
    v20 = *(v14 + 3636);
    if (v20 <= *(v14 + 3640))
    {
      v20 = *(v14 + 3640);
    }

    v21 = (v20 + 9) & 0xFFFFFFFE;
    v22 = v14;
    if (v21 == 8)
    {
      v28 = 1;
      v27 = 8;
      if (!v16[2675])
      {
        goto LABEL_43;
      }
    }

    else
    {
      v23 = v16[2672];
      if (v21 == 12)
      {
        if (v23)
        {
          v27 = 12;
        }

        else
        {
          v27 = 11;
        }

        if (v23)
        {
          v28 = 5;
        }

        else
        {
          v28 = 4;
        }

        if (!v18)
        {
LABEL_43:
          v14 = v22;
          if (v19 && (v19 == 3 && v28 - 9 < 2 || v28 <= 0x1A && ((1 << v28) & 0x4C00000) != 0 && v19 <= 2))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              *&buf[4] = "populatePictureRegisters";
              *&buf[12] = 1024;
              *&buf[14] = v28;
              *&buf[18] = 1024;
              *&buf[20] = v19;
              v29 = MEMORY[0x277D86220];
              v30 = "AppleAVD: [ERROR] %s(): luma compression format %d lossy level %d not supported\n";
              goto LABEL_169;
            }

            return 0xFFFFFFFFLL;
          }

          goto LABEL_51;
        }
      }

      else
      {
        v24 = v23 == 0;
        if (v23)
        {
          v25 = 10;
        }

        else
        {
          v25 = 9;
        }

        if (v24)
        {
          v26 = 2;
        }

        else
        {
          v26 = 3;
        }

        if (v21 == 10)
        {
          v27 = v25;
        }

        else
        {
          v27 = 27;
        }

        if (v21 == 10)
        {
          v28 = v26;
        }

        else
        {
          v28 = 27;
        }

        if (!v18)
        {
          goto LABEL_43;
        }
      }
    }

    if (*(v22 + 3600) && (v18 == 2 && v27 == 8 || v18 == 3 && (v27 - 9) <= 1))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "populatePictureRegisters";
        *&buf[12] = 1024;
        *&buf[14] = v27;
        *&buf[18] = 1024;
        *&buf[20] = v18;
        v29 = MEMORY[0x277D86220];
        v30 = "AppleAVD: [ERROR] %s(): chroma compression format %d lossy level %d not supported\n";
LABEL_169:
        v157 = buf;
        v158 = 24;
LABEL_170:
        _os_log_impl(&dword_277606000, v29, OS_LOG_TYPE_DEFAULT, v30, v157, v158);
      }

      return 0xFFFFFFFFLL;
    }

    goto LABEL_43;
  }

LABEL_51:
  v31 = v6 + 9856 * v4;
  *(v13 + 76) = 766509056;
  v32 = (*(**(this + 32) + 232))(*(this + 32));
  if (v32)
  {
    v33 = (*(*(this + 32) + 2980) == 2) << 13;
  }

  else
  {
    v33 = 0;
  }

  v34 = ((v331 != 0) << 12) | ((v331 == 1) << 10) | v33 | *(v13 + 76) & 0xFFFFC15F;
  v35 = v34 & 0xFFFFF500 | 0x2A0;
  v36 = v34 | 0x2B0;
  if (v329)
  {
    v35 = v36;
  }

  *(v13 + 76) = v19 & 3 | (4 * (v18 & 3)) | v35 & 0xFFFFFFF0 | 0x40;
  v37 = *(this + 32);
  v38 = v19 & 3 | (4 * (v18 & 3)) | v35 & 0xFFF7FFF0 | 0x40 | ((v37[2652] & 1) << 19);
  *(v13 + 76) = v38;
  v39 = v38 & 0xFFFBFFFF | ((v37[2653] & 1) << 18);
  *(v13 + 76) = v39;
  v40 = v39 & 0xFFFDFFFF | ((v37[2654] & 1) << 17);
  *(v13 + 76) = v40;
  if ((v7 & 1) != 0 && *(v31 + 53) && *(v14 + 22888) > 1u || (v7 & 2) != 0 && !*(v31 + 53) && *(v31 + 52))
  {
    goto LABEL_68;
  }

  if ((v7 & 0x20) == 0 || *(v31 + 53))
  {
    v41 = 0;
    goto LABEL_69;
  }

  v41 = 0;
  if (!*(v31 + 52) && v326 >= 2)
  {
LABEL_68:
    v41 = (v8 == 0) << 27;
  }

LABEL_69:
  v42 = v327 + v328;
  *(v13 + 80) = v41;
  *(v13 + 84) = 0;
  v43 = *(v14 + 3608) - 1;
  *(v13 + 84) = v43;
  v44 = *(v14 + 3612);
  *(v13 + 88) = 0;
  *(v13 + 84) = (v43 | (v44 << 16)) - 0x10000;
  if (*(v31 + 6466))
  {
    v45 = 32 * (*(v31 + 6477) & 1);
    *(v13 + 92) = v45;
    if (*(v31 + 6477))
    {
      v46 = *(v31 + 6484) & 7;
    }

    else
    {
      v46 = 0;
    }

    v48 = v46 | v45;
    *(v13 + 92) = v46 | v45;
    if (v45)
    {
      v49 = (v31 + 6512);
      v50 = (v13 + 100);
      v51 = -1;
      do
      {
        v52 = *v50 & 0xFFFFFFE0 | *v49 & 0x1F;
        *v50 = v52;
        v32 = v52 & 0xFFFFFC1F | (32 * (*(v49 - 6) & 0x1F));
        *v50++ = v32;
        ++v51;
        ++v49;
      }

      while (v51 < v46);
    }

    LOBYTE(v53) = *(v31 + 6477);
    if (v53)
    {
      v53 = *(v31 + 6480);
    }

    v54 = (8 * ((v42 - v53) & 3)) | v48;
    *(v13 + 92) = v54;
    v55 = v54 & 0xFFFFFFBF | ((*(v31 + 6476) & 1) << 6);
    *(v13 + 92) = v55;
    v47 = v55 & 0xFFFFFE7F | ((*(v31 + 6472) & 3) << 7);
  }

  else
  {
    v47 = 8 * (v42 & 3);
  }

  *(v13 + 92) = v47;
  LOBYTE(v56) = *(v31 + 34);
  if (v56)
  {
    v56 = *(v31 + 36);
  }

  v57 = v47 & 0xFFFE7FFF | (((v42 - v56) & 3) << 15);
  *(v13 + 92) = v57;
  v58 = v57 & 0xFFFFF1FF | ((*(v31 + 6460) & 7) << 9);
  *(v13 + 92) = v58;
  v59 = v58 & 0xFFFFEFFF | ((*(v31 + 53) & 1) << 12);
  *(v13 + 92) = v59;
  v60 = v59 & 0xFFFFDFFF | ((*(v31 + 52) & 1) << 13);
  *(v13 + 92) = v60;
  v61 = v60 & 0xFFFFBFFF | ((*(v31 + 51) & 1) << 14);
  *(v13 + 92) = v61;
  v62 = v61 & 0xFFFDFFFF | ((*(v31 + 34) & 1) << 17);
  *(v13 + 92) = v62;
  v63 = v62 & 0xFFFBFFFF | ((*(v31 + 33) & 1) << 18);
  *(v13 + 92) = v63;
  v64 = v63 & 0xFFF7FFFF | ((*(v31 + 32) & 1) << 19);
  *(v13 + 92) = v64;
  v65 = v64 & 0xFFEFFFFF | ((*(v31 + 16) & 1) << 20);
  *(v13 + 92) = v65;
  if ((v35 & 0x2000) != 0)
  {
    v66 = 0;
  }

  else
  {
    v66 = (*(v14 + 22284) != 0) << 21;
  }

  *(v13 + 92) = v66 | v65 & 0xFFDFFFFF;
  v67 = *(v13 + 96) & 0xFFFFFFE0 | *(v31 + 44) & 0x1F;
  *(v13 + 96) = v67;
  *(v13 + 96) = v67 & 0xFFFFFC1F | (32 * (*(v31 + 40) & 0x1F));
  if (*(v31 + 252))
  {
    CAHDecTansyHevc::copyScalingList(v32, v13 + 124, *(this + 33) + 1552, *(v14 + 3600), v31 + 256);
    v40 = *(v13 + 76);
  }

  if ((~v40 & 0xC0000) != 0)
  {
    v72 = 0;
    v74 = 0;
    *(v13 + 144) = 0;
  }

  else
  {
    v68 = *(this + 32);
    v69 = v68[664];
    if (!v69 || !v68[665])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v156 = v68[665];
        *buf = 136315650;
        *&buf[4] = "populatePictureRegisters";
        *&buf[12] = 1024;
        *&buf[14] = v69;
        *&buf[18] = 1024;
        *&buf[20] = v156;
        v29 = MEMORY[0x277D86220];
        v30 = "AppleAVD: %s(): invalid stat crop width/height %d/%d";
        goto LABEL_169;
      }

      return 0xFFFFFFFFLL;
    }

    v70 = v68[666];
    *(v13 + 144) = v70;
    v71 = v68[667];
    v72 = v71 << 16;
    *(v13 + 144) = v70 | (v71 << 16);
    v73 = v68[666] + v68[664] - 1;
    *(v13 + 148) = *(v68 + 1332) + *(v68 + 1328) - 1;
    v74 = ((v68[665] + v68[667]) << 16) - 0x10000;
    *(v13 + 148) = v74 & 0xFFFF0000 | v73;
  }

  if (v8)
  {
    v75 = 7340080;
  }

  else
  {
    v75 = 3145776;
  }

  *(v13 + 152) = v75;
  if (!*(*(this + 32) + 2892))
  {
    v76 = *(v14 + 3608) - 1;
    *(v13 + 148) = v74 | v76;
    v77 = (*(v14 + 3612) << 16) - 0x10000;
    *(v13 + 148) = v77 & 0xFFFF0000 | v76;
    if (*(v14 + 3616))
    {
      if ((v40 & 0x800) != 0)
      {
        v78 = *(v14 + 3620) * *(v14 + 22852);
        *(v13 + 144) = v72 | v78;
        *(v13 + 144) = v78 | ((*(v14 + 22856) * *(v14 + 3628)) << 16);
        v79 = *(v14 + 3608) + ~(*(v14 + 3624) * *(v14 + 22852));
        *(v13 + 148) = v79 | v77;
        *(v13 + 148) = v79 | ((*(v14 + 3612) + ~(*(v14 + 3632) * *(v14 + 22856))) << 16);
      }
    }
  }

  v80 = this + 6160;
  for (i = 156; i != 184; i += 4)
  {
    *(*(this + 33) + i) = 0;
    v82 = *(this + 33);
    v83 = *(v82 + i);
    *(v82 + i) = 0;
    *(*(this + 33) + i) ^= 0xFFFFFFu;
    v84 = *(this + 33);
    v85 = *(v84 + i);
    *(v84 + i) = v83;
    if (*v80 || *(v80 + 38) || *(v80 + 39))
    {
      result = CAHDec::addToPatcherList(this, v80, i, 0, 0xFFFFFFFFLL, 8, v85, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + i + 28) = 0;
    *(*(this + 33) + i + 28) = *(*(this + 33) + i + 28) & 0x800001FF | (((*(this + 2952) >> 9) & 0x3FFFFF) << 9);
    v80 += 176;
  }

  *(*(this + 33) + 212) = 0;
  *(*(this + 33) + 216) = 0;
  if ((*(v13 + 78) & 8) == 0 || (v87 = *(this + 33), v88 = *(*(this + 32) + 2680), v341 = 0u, v342 = 0u, v339 = 0u, v340 = 0u, v337 = 0u, v338 = 0u, v335 = 0u, v336 = 0u, v334 = 0u, memset(buf, 0, sizeof(buf)), v89 = *(v87 + 16), *buf = v88, v90 = *(v87 + 216), *(v87 + 216) = 0, *(*(this + 33) + 216) ^= 0xFFFFFFu, v91 = *(this + 33), v92 = *(v91 + 216), *(v91 + 216) = v90, !v88) || (result = CAHDec::addToPatcherList(this, buf, 216, (v89 & 0xF) << 9, 0xFFFFFFFFLL, 8, v92, 4), !result))
  {
    if ((*(*(this + 33) + 220) = 0, v93 = *(this + 33), v94 = *(v93 + 220), *(v93 + 220) = 0, *(*(this + 33) + 220) ^= 0xFFFFFFu, v95 = *(this + 33), v96 = *(v95 + 220), *(v95 + 220) = v94, !*(this + 1298)) && !*(this + 2634) && !*(this + 2635) || (result = CAHDec::addToPatcherList(this, this + 1298, 220, 0, 0xFFFFFFFFLL, 8, v96, 4), !result))
    {
      if ((*(*(this + 33) + 224) = 0, v97 = *(this + 33), v98 = *(v97 + 224), *(v97 + 224) = 0, *(*(this + 33) + 224) ^= 0xFFFFFFu, v99 = *(this + 33), v100 = *(v99 + 224), *(v99 + 224) = v98, !*(this + 1320)) && !*(this + 2678) && !*(this + 2679) || (result = CAHDec::addToPatcherList(this, this + 1320, 224, 0, 0xFFFFFFFFLL, 8, v100, 4), !result))
      {
        if ((*(*(this + 33) + 228) = 0, v101 = *(this + 33), v102 = *(v101 + 228), *(v101 + 228) = 0, *(*(this + 33) + 228) ^= 0xFFFFFFu, v103 = *(this + 33), v104 = *(v103 + 228), *(v103 + 228) = v102, !*(this + 1342)) && !*(this + 2722) && !*(this + 2723) || (result = CAHDec::addToPatcherList(this, this + 1342, 228, 0, 0xFFFFFFFFLL, 8, v104, 4), !result))
        {
          if ((*(*(this + 33) + 232) = 0, v105 = *(this + 33), v106 = *(v105 + 232), *(v105 + 232) = 0, *(*(this + 33) + 232) ^= 0xFFFFFFu, v107 = *(this + 33), v108 = *(v107 + 232), *(v107 + 232) = v106, !*(this + 1364)) && !*(this + 2766) && !*(this + 2767) || (result = CAHDec::addToPatcherList(this, this + 1364, 232, 0, 0xFFFFFFFFLL, 8, v108, 4), !result))
          {
            if ((*(*(this + 33) + 236) = 0, v109 = *(this + 33), v110 = *(v109 + 236), *(v109 + 236) = 0, *(*(this + 33) + 236) ^= 0xFFFFFFu, v111 = *(this + 33), v112 = *(v111 + 236), *(v111 + 236) = v110, !*(this + 1386)) && !*(this + 2810) && !*(this + 2811) || (result = CAHDec::addToPatcherList(this, this + 1386, 236, 0, 0xFFFFFFFFLL, 8, v112, 4), !result))
            {
              if ((*(*(this + 33) + 240) = 0, v113 = *(this + 33), v114 = *(v113 + 240), *(v113 + 240) = 0, *(*(this + 33) + 240) ^= 0xFFFFFFu, v115 = *(this + 33), v116 = *(v115 + 240), *(v115 + 240) = v114, !*(this + 1408)) && !*(this + 2854) && !*(this + 2855) || (result = CAHDec::addToPatcherList(this, this + 1408, 240, 0, 0xFFFFFFFFLL, 8, v116, 4), !result))
              {
                if ((*(*(this + 33) + 244) = 0, v117 = *(this + 33), v118 = *(v117 + 244), *(v117 + 244) = 0, *(*(this + 33) + 244) ^= 0xFFFFFFu, v119 = *(this + 33), v120 = *(v119 + 244), *(v119 + 244) = v118, !*(this + 924)) && !*(this + 1886) && !*(this + 1887) || (result = CAHDec::addToPatcherList(this, this + 924, 244, 0, 0xFFFFFFFFLL, 8, v120, 4), !result))
                {
                  if ((*(*(this + 33) + 248) = 0, v121 = *(this + 33), v122 = *(v121 + 248), *(v121 + 248) = 0, *(*(this + 33) + 248) ^= 0xFFFFFFu, v123 = *(this + 33), v124 = *(v123 + 248), *(v123 + 248) = v122, v125 = (this + 176 * v325 + 7568), !*v125) && !*(this + 44 * v325 + 1930) && !*(this + 44 * v325 + 1931) || (result = CAHDec::addToPatcherList(this, v125, 248, 0, 0xFFFFFFFFLL, 8, v124, 4), !result))
                  {
                    if ((*(*(this + 33) + 252) = 0, v126 = *(this + 33), v127 = *(v126 + 252), *(v126 + 252) = 0, *(*(this + 33) + 252) ^= 0xFFFFFFu, v128 = *(this + 33), v129 = *(v128 + 252), *(v128 + 252) = v127, !*(this + 1430)) && !*(this + 2898) && !*(this + 2899) || (result = CAHDec::addToPatcherList(this, this + 1430, 252, 0, 0xFFFFFFFFLL, 8, v129, 4), !result))
                    {
                      if ((v130 = v14, *(*(this + 33) + 256) = 0, v131 = *(this + 33), v132 = *(v131 + 256), *(v131 + 256) = 0, *(*(this + 33) + 256) ^= 0xFFFFFFu, v133 = *(this + 33), v134 = *(v133 + 256), *(v133 + 256) = v132, !*(this + 1452)) && !*(this + 2942) && !*(this + 2943) || (result = CAHDec::addToPatcherList(this, this + 1452, 256, 0, 0xFFFFFFFFLL, 8, v134, 4), !result))
                      {
                        *(*(this + 33) + 260) = 0;
                        *(*(this + 33) + 264) = 0;
                        *(*(this + 33) + 268) = 0;
                        *(*(this + 33) + 272) = 0;
                        v135 = *(this + 33);
                        if (*(*(this + 32) + 2648) == 1)
                        {
                          v136 = *(v135 + 264);
                          *(v135 + 264) = 0;
                          *(*(this + 33) + 264) ^= 0x1FFFFFFu;
                          v137 = *(this + 33);
                          v138 = *(v137 + 264);
                          *(v137 + 264) = v136;
                          v140 = (v324 + 8);
                          v139 = *(v324 + 8);
                          if (v323)
                          {
                            if (v139 || *(v324 + 160) || *(v324 + 164))
                            {
                              result = CAHDec::addToPatcherList(this, (v324 + 8), 264, *(v324 + 68), 0xFFFFFFFFLL, 7, v138, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            v141 = *(this + 33);
                            v142 = *(v141 + 260);
                            *(v141 + 260) = 0;
                            *(*(this + 33) + 260) ^= 0x1FFFFFFu;
                            v143 = *(this + 33);
                            v144 = *(v143 + 260);
                            *(v143 + 260) = v142;
                            if (*v140 || *(v324 + 160) || *(v324 + 164))
                            {
                              result = CAHDec::addToPatcherList(this, v140, 260, *(v324 + 80), 0xFFFFFFFFLL, 7, v144, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            if (!v320)
                            {
                              goto LABEL_207;
                            }

                            v145 = *(this + 33);
                            v146 = *(v145 + 272);
                            *(v145 + 272) = 0;
                            *(*(this + 33) + 272) ^= 0x1FFFFFFu;
                            v147 = *(this + 33);
                            v148 = *(v147 + 272);
                            *(v147 + 272) = v146;
                            if (*v322 || *(v322 + 152) || *(v322 + 156))
                            {
                              result = CAHDec::addToPatcherList(this, v322, 272, *(v322 + 56), 0xFFFFFFFFLL, 7, v148, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            v149 = *(this + 33);
                            v150 = *(v149 + 268);
                            *(v149 + 268) = 0;
                            *(*(this + 33) + 268) ^= 0x1FFFFFFu;
                            v151 = *(this + 33);
                            v152 = *(v151 + 268);
                            *(v151 + 268) = v150;
                            if (!*v322 && !*(v322 + 152) && !*(v322 + 156))
                            {
                              goto LABEL_207;
                            }

                            v153 = v322;
                            v154 = *(v322 + 68);
                            v155 = this;
                          }

                          else
                          {
                            if (v139 || *(v324 + 160) || *(v324 + 164))
                            {
                              result = CAHDec::addToPatcherList(this, (v324 + 8), 264, *(v324 + 60), 0xFFFFFFFFLL, 7, v138, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            v176 = *(this + 33);
                            v177 = *(v176 + 272);
                            *(v176 + 272) = 0;
                            *(*(this + 33) + 272) ^= 0x1FFFFFFu;
                            v178 = *(this + 33);
                            v179 = *(v178 + 272);
                            *(v178 + 272) = v177;
                            if (*v140 || *(v324 + 160) || *(v324 + 164))
                            {
                              result = CAHDec::addToPatcherList(this, v140, 272, *(v324 + 64), 0xFFFFFFFFLL, 7, v179, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            v180 = *(this + 33);
                            v181 = *(v180 + 260);
                            *(v180 + 260) = 0;
                            *(*(this + 33) + 260) ^= 0x1FFFFFFu;
                            v182 = *(this + 33);
                            v183 = *(v182 + 260);
                            *(v182 + 260) = v181;
                            if (*v140 || *(v324 + 160) || *(v324 + 164))
                            {
                              result = CAHDec::addToPatcherList(this, v140, 260, *(v324 + 72), 0xFFFFFFFFLL, 7, v183, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            v184 = *(this + 33);
                            v185 = *(v184 + 268);
                            *(v184 + 268) = 0;
                            *(*(this + 33) + 268) ^= 0x1FFFFFFu;
                            v186 = *(this + 33);
                            v152 = *(v186 + 268);
                            *(v186 + 268) = v185;
                            if (!*v140 && !*(v324 + 160) && !*(v324 + 164))
                            {
                              goto LABEL_207;
                            }

                            v154 = *(v324 + 76);
                            v155 = this;
                            v153 = (v324 + 8);
                          }

                          v175 = 268;
                        }

                        else
                        {
                          v159 = *(v135 + 260);
                          *(v135 + 260) = 0;
                          *(*(this + 33) + 260) ^= 0x1FFFFFFu;
                          v160 = *(this + 33);
                          v161 = *(v160 + 260);
                          *(v160 + 260) = v159;
                          v162 = (this + 176 * v325 + 528);
                          if (*v162 || *(this + 44 * v325 + 170) || *(this + 44 * v325 + 171))
                          {
                            result = CAHDec::addToPatcherList(this, v162, 260, 0, 0xFFFFFFFFLL, 7, v161, 4);
                            if (result)
                            {
                              return result;
                            }
                          }

                          v163 = *(this + 33);
                          v164 = *(v163 + 264);
                          *(v163 + 264) = 0;
                          *(*(this + 33) + 264) ^= 0x1FFFFFFu;
                          v165 = *(this + 33);
                          v166 = *(v165 + 264);
                          *(v165 + 264) = v164;
                          if (*(v324 + 8) || *(v324 + 160) || *(v324 + 164))
                          {
                            result = CAHDec::addToPatcherList(this, (v324 + 8), 264, *(v324 + 60), 0xFFFFFFFFLL, 7, v166, 4);
                            if (result)
                            {
                              return result;
                            }
                          }

                          v167 = *(this + 33);
                          v168 = *(v167 + 268);
                          *(v167 + 268) = 0;
                          *(*(this + 33) + 268) ^= 0x1FFFFFFu;
                          v169 = *(this + 33);
                          v170 = *(v169 + 268);
                          *(v169 + 268) = v168;
                          v171 = (this + 176 * v325 + 3344);
                          if (*v171 || *(this + 44 * v325 + 874) || *(this + 44 * v325 + 875))
                          {
                            result = CAHDec::addToPatcherList(this, v171, 268, 0, 0xFFFFFFFFLL, 7, v170, 4);
                            if (result)
                            {
                              return result;
                            }
                          }

                          v172 = *(this + 33);
                          v173 = *(v172 + 272);
                          *(v172 + 272) = 0;
                          *(*(this + 33) + 272) ^= 0x1FFFFFFu;
                          v174 = *(this + 33);
                          v152 = *(v174 + 272);
                          *(v174 + 272) = v173;
                          if (!*(v324 + 8) && !*(v324 + 160) && !*(v324 + 164))
                          {
                            goto LABEL_207;
                          }

                          v154 = *(v324 + 64);
                          v155 = this;
                          v153 = (v324 + 8);
                          v175 = 272;
                        }

                        result = CAHDec::addToPatcherList(v155, v153, v175, v154, 0xFFFFFFFFLL, 7, v152, 4);
                        if (result)
                        {
                          return result;
                        }

LABEL_207:
                        if (!(*(v13 + 76) & 0x2000 | v321))
                        {
                          *(v13 + 76) |= 0x2000u;
                          *(this + v325 + 116) = 1;
                          *(*(this + 33) + 276) = 0;
                          goto LABEL_279;
                        }

                        *(this + v325 + 116) = 0;
                        *(*(this + 33) + 276) = 0;
                        if (!v321)
                        {
LABEL_279:
                          *(*(this + 33) + 436) = 0;
                          *(*(this + 33) + 440) = 0;
                          *(*(this + 33) + 444) = 0;
                          *(*(this + 33) + 448) = 0;
                          if (!v331)
                          {
                            goto LABEL_338;
                          }

                          v252 = *(this + 32);
                          if (v318 && v317 == 2)
                          {
                            v253 = *(*(v252 + 8248) + 60);
                            v254 = *(this + 33);
                            v255 = *(v254 + 436);
                            *(v254 + 436) = 0;
                            *(*(this + 33) + 436) ^= 0xFFFFFFu;
                            v256 = *(this + 33);
                            v257 = *(v256 + 436);
                            *(v256 + 436) = v255;
                            v258 = *(*(this + 32) + 8248);
                            if (*v258 || *(v258 + 152) || *(v258 + 156))
                            {
                              result = CAHDec::addToPatcherList(this, v258, 436, v253, 0xFFFFFFFFLL, 8, v257, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            v259 = *(this + 33);
                            v260 = *(v259 + 444);
                            *(v259 + 444) = 0;
                            *(*(this + 33) + 444) ^= 0xC0000000;
                            v261 = *(this + 33);
                            v262 = *(v261 + 444);
                            *(v261 + 444) = v260;
                            v263 = *(*(this + 32) + 8248);
                            if (*v263 || *(v263 + 152) || *(v263 + 156))
                            {
                              result = CAHDec::addToPatcherList(this, v263, 444, v253, 192, 6, v262, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            if (v320)
                            {
                              v264 = *(v322 + 56);
                              v265 = *(this + 33);
                              v266 = *(v265 + 440);
                              *(v265 + 440) = 0;
                              *(*(this + 33) + 440) ^= 0xFFFFFFu;
                              v267 = *(this + 33);
                              v268 = *(v267 + 440);
                              *(v267 + 440) = v266;
                              if (*v322 || *(v322 + 152) || *(v322 + 156))
                              {
                                result = CAHDec::addToPatcherList(this, v322, 440, v264, 0xFFFFFFFFLL, 8, v268, 4);
                                if (result)
                                {
                                  return result;
                                }
                              }

                              v269 = *(this + 33);
                              v270 = *(v269 + 448);
                              *(v269 + 448) = 0;
                              *(*(this + 33) + 448) ^= 0xC0000000;
                              v271 = *(this + 33);
                              v272 = *(v271 + 448);
                              *(v271 + 448) = v270;
                              if (*v322 || *(v322 + 152) || *(v322 + 156))
                              {
                                result = CAHDec::addToPatcherList(this, v322, 448, v264, 192, 6, v272, 4);
                                if (result)
                                {
                                  return result;
                                }
                              }
                            }

                            if (v316)
                            {
                              *(*(this + 33) + 444) = *(*(this + 33) + 444) & 0xFFFFC003 | (4 * ((*(*(*(this + 32) + 8248) + 84) >> 6) & 0xFFF));
                              if (v320)
                              {
                                v273 = v322;
LABEL_302:
                                v274 = (v273 + 80);
LABEL_337:
                                *(*(this + 33) + 448) = *(*(this + 33) + 448) & 0xFFFF8003 | (4 * ((*v274 >> 6) & 0x1FFF));
                              }

LABEL_338:
                              if (*(v31 + 52))
                              {
                                v303 = 0;
                                v304 = *(v31 + 56) + 1;
                                v305 = *(this + 33);
                                *(v305 + 452) = v304;
                                do
                                {
                                  *(v305 + 2 * v303 + 456) = *(v31 + 9676 + 4 * v303);
                                  v306 = v303++ >= v304;
                                }

                                while (!v306);
                                v307 = 0;
                                v308 = *(v31 + 60) + 1;
                                *(v305 + 454) = v308;
                                do
                                {
                                  *(v305 + 2 * v307 + 498) = *(v31 + 9760 + 4 * v307);
                                  v306 = v307++ >= v308;
                                }

                                while (!v306);
                              }

                              else
                              {
                                v305 = *(this + 33);
                                *(v305 + 452) = 65537;
                                *(v305 + 456) = 0;
                                *(v305 + 458) = v130[5720];
                                *(v305 + 498) = 0;
                                *(v305 + 500) = v130[5722];
                              }

                              v309 = *(this + 32);
                              if (*(v309 + 2360) != 1)
                              {
                                return 0;
                              }

                              *(v305 + 548) = *(v305 + 548) & 0xFFFFFFFE | *(v309 + 2508) & 1;
                              if (*(v309 + 2508))
                              {
                                *(v305 + 2548) = 0x10000000;
                                *(v305 + 2552) = *(v309 + 2368);
                                *(v305 + 2560) = 0;
                                *(v305 + 2556) = 0;
                                *(v305 + 2568) = *(v309 + 2372);
                                v310 = *(v309 + 2404);
                                *(v305 + 2584) = *(v309 + 2388);
                                *(v305 + 2600) = v310;
                              }

                              *(*(this + 33) + 548) = *(*(this + 33) + 548) & 0xFFFFFFFD | (2 * (*(v309 + 2512) & 1));
                              if (*(v309 + 2512))
                              {
                                *(v305 + 2616) = 0;
                                v311 = *(v309 + 2424);
                                *(v305 + 2616) = (*(v309 + 2424) & 1) << 22;
                                v312 = ((*(v309 + 2420) & 1) << 23) | ((v311 & 1) << 22) | 0x20000000;
                                *(v305 + 2616) = v312;
                                if (!*(v309 + 2364))
                                {
                                  ++v312;
                                }

                                *(v305 + 2616) = v312;
                                v313 = *(v309 + 2428);
                                v314 = *(v309 + 2460);
                                *(v305 + 2636) = *(v309 + 2444);
                                *(v305 + 2652) = v314;
                                *(v305 + 2620) = v313;
                              }

                              *(*(this + 33) + 548) = *(*(this + 33) + 548) & 0xFFFFFFFB | (4 * (*(v309 + 2516) & 1));
                              *(*(this + 33) + 548) = *(*(this + 33) + 548) & 0xFFFFFFF7 | (8 * (*(v309 + 2520) & 1));
                              *(*(this + 33) + 548) = *(*(this + 33) + 548) & 0xFFFFFFEF | (16 * (*(v309 + 2524) & 1));
                              *(v305 + 2672) = 0;
                              v315 = *(v309 + 2476) == 2 ? 805306368 : 813694976;
                              *(v305 + 2672) = v315;
                              memcpy((v305 + 2676), (v309 + 2480), 4 * *(v309 + 2476));
                              if (!*(v309 + 2516))
                              {
                                return 0;
                              }

                              result = 0;
                              *(v309 + 2516) = 0;
                              return result;
                            }

                            if (CAHDecClaryHevc::getSWRStride(this, *(v13 + 148) - *(v13 + 144) + 1, v130[909], v130[910], v130[5713]))
                            {
                              return 0xFFFFFFFFLL;
                            }

                            *(*(this + 33) + 444) = *(*(this + 33) + 444) & 0xFFFFC003 | (4 * ((*(this + 2956) >> 6) & 0xFFF));
                            if (!v320)
                            {
                              goto LABEL_338;
                            }

LABEL_336:
                            v274 = (this + 11828);
                            goto LABEL_337;
                          }

                          v275 = *(v252 + 2892);
                          if (*(v252 + 2892))
                          {
                            v276 = *(v252 + 2904);
                            v275 = *(v252 + 2908);
                          }

                          else
                          {
                            v276 = 0;
                          }

                          v277 = *(v252 + 8248);
                          v278 = *(v277 + 52);
                          v279 = v278 + v276;
                          if (__CFADD__(v278, v276))
                          {
                            v280 = 1;
                          }

                          else
                          {
                            v281 = *(v277 + 56);
                            v282 = v281 + v275;
                            if (!__CFADD__(v281, v275))
                            {
                              v283 = *(this + 33);
                              v284 = *(v283 + 436);
                              *(v283 + 436) = 0;
                              *(*(this + 33) + 436) ^= 0xFFFFFFu;
                              v285 = *(this + 33);
                              v286 = *(v285 + 436);
                              *(v285 + 436) = v284;
                              v287 = *(*(this + 32) + 8248);
                              if (*v287 || *(v287 + 152) || *(v287 + 156))
                              {
                                result = CAHDec::addToPatcherList(this, v287, 436, v279, 0xFFFFFFFFLL, 8, v286, 4);
                                if (result)
                                {
                                  return result;
                                }
                              }

                              v288 = *(this + 33);
                              v289 = *(v288 + 440);
                              *(v288 + 440) = 0;
                              *(*(this + 33) + 440) ^= 0xFFFFFFu;
                              v290 = *(this + 33);
                              v291 = *(v290 + 440);
                              *(v290 + 440) = v289;
                              v292 = *(*(this + 32) + 8248);
                              if (*v292 || *(v292 + 152) || *(v292 + 156))
                              {
                                result = CAHDec::addToPatcherList(this, v292, 440, v282, 0xFFFFFFFFLL, 8, v291, 4);
                                if (result)
                                {
                                  return result;
                                }
                              }

                              v293 = *(this + 33);
                              v294 = *(v293 + 444);
                              *(v293 + 444) = 0;
                              *(*(this + 33) + 444) ^= 0xC0000000;
                              v295 = *(this + 33);
                              v296 = *(v295 + 444);
                              *(v295 + 444) = v294;
                              v297 = *(*(this + 32) + 8248);
                              if (*v297 || *(v297 + 152) || *(v297 + 156))
                              {
                                result = CAHDec::addToPatcherList(this, v297, 444, v279, 192, 6, v296, 4);
                                if (result)
                                {
                                  return result;
                                }
                              }

                              v298 = *(this + 33);
                              v299 = *(v298 + 448);
                              *(v298 + 448) = 0;
                              *(*(this + 33) + 448) ^= 0xC0000000;
                              v300 = *(this + 33);
                              v301 = *(v300 + 448);
                              *(v300 + 448) = v299;
                              v302 = *(*(this + 32) + 8248);
                              if (*v302 || *(v302 + 152) || *(v302 + 156))
                              {
                                result = CAHDec::addToPatcherList(this, v302, 448, v282, 192, 6, v301, 4);
                                if (result)
                                {
                                  return result;
                                }
                              }

                              if (v316)
                              {
                                *(*(this + 33) + 444) = *(*(this + 33) + 444) & 0xFFFFC003 | (4 * ((*(*(*(this + 32) + 8248) + 76) >> 6) & 0xFFF));
                                v273 = *(*(this + 32) + 8248);
                                goto LABEL_302;
                              }

                              if (CAHDecClaryHevc::getSWRStride(this, *(v13 + 148) - *(v13 + 144) + 1, v130[909], v130[910], v130[5713]))
                              {
                                return 0xFFFFFFFFLL;
                              }

                              *(*(this + 33) + 444) = *(*(this + 33) + 444) & 0xFFFFC003 | (4 * ((*(this + 2956) >> 6) & 0xFFF));
                              goto LABEL_336;
                            }

                            v280 = 2;
                          }

                          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                          {
                            return 0xFFFFFFFFLL;
                          }

                          *buf = 136315394;
                          *&buf[4] = "populatePictureRegisters";
                          *&buf[12] = 1024;
                          *&buf[14] = v280;
                          v29 = MEMORY[0x277D86220];
                          v30 = "AppleAVD: %s(): failKind = %d";
                          v157 = buf;
                          v158 = 18;
                          goto LABEL_170;
                        }

                        v187 = 0;
                        if (v329)
                        {
                          v188 = 0x2000000;
                        }

                        else
                        {
                          v188 = 0;
                        }

                        v189 = v345;
                        v190 = v344;
                        v330 = v343;
                        while (1)
                        {
                          v191 = *v189;
                          if (!*v189 || !*(v191 + 48))
                          {
                            return 0xFFFFFFFFLL;
                          }

                          v192 = *(v191 + 44);
                          if ((*(**(this + 32) + 184))(*(this + 32)))
                          {
                            v193 = *(this + 32);
                            if (v193[689])
                            {
                              *buf = 0;
                              if (((*(*v193 + 312))(v193, v192, buf) & 1) == 0)
                              {
                                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                {
                                  return 0xFFFFFFFFLL;
                                }

                                v332 = 0;
                                v29 = MEMORY[0x277D86220];
                                v30 = "AppleAVD: decodeGetRenderTargetRef RETURNED ERROR\n";
                                v157 = &v332;
                                v158 = 2;
                                goto LABEL_170;
                              }

                              *(v191 + 48) = *buf + 8;
                            }
                          }

                          *(*(this + 33) + v187 + 276) = 0;
                          *(*(this + 33) + v187 + 276) = *(*(this + 33) + v187 + 276) & 0xFFFFFFF | ((v321 << 28) - 0x10000000);
                          *(*(this + 33) + v187 + 276) &= 0xF3FFFFFF;
                          *(*(this + 33) + v187 + 276) = *(*(this + 33) + v187 + 276) & 0xFDFFFFFF | v188;
                          *(*(this + 33) + v187 + 276) |= 0x1000000u;
                          v194 = v319 - *(v191 + 12);
                          v195 = v194 & 0x1FFFF;
                          if (v194 < -32768)
                          {
                            v195 = 98304;
                          }

                          if (v194 <= 0x8000)
                          {
                            v196 = v195;
                          }

                          else
                          {
                            v196 = 0x8000;
                          }

                          *(*(this + 33) + v187 + 276) = *(*(this + 33) + v187 + 276) & 0xFFFE0000 | v196;
                          *(*(this + 33) + v187 + 276) = *(*(this + 33) + v187 + 276) & 0xFFFDFFFF | ((*(v191 + 20) == 2) << 17);
                          *(*(this + 33) + v187 + 308) = 0;
                          *(*(this + 33) + v187 + 340) = 0;
                          *(*(this + 33) + v187 + 372) = 0;
                          *(*(this + 33) + v187 + 404) = 0;
                          v197 = *(this + 33);
                          if (*(*(this + 32) + 2648) == 1)
                          {
                            v198 = v187 + 340;
                            v199 = v197 + v187;
                            v200 = *(v199 + 340);
                            *(v199 + 340) = 0;
                            *(*(this + 33) + v187 + 340) ^= 0x1FFFFFFu;
                            v201 = *(this + 33) + v187;
                            v202 = *(v201 + 340);
                            *(v201 + 340) = v200;
                            v203 = *(v191 + 48);
                            v204 = *v203;
                            if (v323)
                            {
                              if (v204 || *(v203 + 38) || *(v203 + 39))
                              {
                                result = CAHDec::addToPatcherList(this, v203, v198, *(v203 + 15), 0xFFFFFFFFLL, 7, v202, 4);
                                if (result)
                                {
                                  return result;
                                }
                              }

                              v205 = *(this + 33) + v187;
                              v206 = *(v205 + 308);
                              *(v205 + 308) = 0;
                              *(*(this + 33) + v187 + 308) ^= 0x1FFFFFFu;
                              v207 = *(this + 33) + v187;
                              v208 = *(v207 + 308);
                              *(v207 + 308) = v206;
                              v209 = *(v191 + 48);
                              if (*v209 || *(v209 + 152) || *(v209 + 156))
                              {
                                result = CAHDec::addToPatcherList(this, v209, v187 + 308, *(v209 + 72), 0xFFFFFFFFLL, 7, v208, 4);
                                if (result)
                                {
                                  return result;
                                }
                              }

                              if (v320)
                              {
                                v210 = *(this + 33) + v187;
                                v211 = *(v210 + 404);
                                *(v210 + 404) = 0;
                                *(*(this + 33) + v187 + 404) ^= 0x1FFFFFFu;
                                v212 = *(this + 33) + v187;
                                v213 = *(v212 + 404);
                                *(v212 + 404) = v211;
                                if (*v322 || *(v322 + 152) || *(v322 + 156))
                                {
                                  result = CAHDec::addToPatcherList(this, v322, v187 + 404, *(v322 + 56), 0xFFFFFFFFLL, 7, v213, 4);
                                  if (result)
                                  {
                                    return result;
                                  }
                                }

                                v214 = *(this + 33) + v187;
                                v215 = *(v214 + 372);
                                *(v214 + 372) = 0;
                                *(*(this + 33) + v187 + 372) ^= 0x1FFFFFFu;
                                v216 = *(this + 33) + v187;
                                v217 = *(v216 + 372);
                                *(v216 + 372) = v215;
                                if (*v322 || *(v322 + 152) || *(v322 + 156))
                                {
                                  v218 = v187 + 372;
                                  v219 = v322;
LABEL_276:
                                  v238 = *(v219 + 68);
LABEL_277:
                                  result = CAHDec::addToPatcherList(this, v219, v218, v238, 0xFFFFFFFFLL, 7, v217, 4);
                                  if (result)
                                  {
                                    return result;
                                  }
                                }
                              }
                            }

                            else
                            {
                              if (v204 || *(v203 + 38) || *(v203 + 39))
                              {
                                result = CAHDec::addToPatcherList(this, v203, v198, *(v203 + 13), 0xFFFFFFFFLL, 7, v202, 4);
                                if (result)
                                {
                                  return result;
                                }
                              }

                              v239 = *(this + 33) + v187;
                              v240 = *(v239 + 404);
                              *(v239 + 404) = 0;
                              *(*(this + 33) + v187 + 404) ^= 0x1FFFFFFu;
                              v241 = *(this + 33) + v187;
                              v242 = *(v241 + 404);
                              *(v241 + 404) = v240;
                              v243 = *(v191 + 48);
                              if (*v243 || *(v243 + 152) || *(v243 + 156))
                              {
                                result = CAHDec::addToPatcherList(this, v243, v187 + 404, *(v243 + 56), 0xFFFFFFFFLL, 7, v242, 4);
                                if (result)
                                {
                                  return result;
                                }
                              }

                              v244 = *(this + 33) + v187;
                              v245 = *(v244 + 308);
                              *(v244 + 308) = 0;
                              *(*(this + 33) + v187 + 308) ^= 0x1FFFFFFu;
                              v246 = *(this + 33) + v187;
                              v247 = *(v246 + 308);
                              *(v246 + 308) = v245;
                              v248 = *(v191 + 48);
                              if (*v248 || *(v248 + 152) || *(v248 + 156))
                              {
                                result = CAHDec::addToPatcherList(this, v248, v187 + 308, *(v248 + 64), 0xFFFFFFFFLL, 7, v247, 4);
                                if (result)
                                {
                                  return result;
                                }
                              }

                              v249 = *(this + 33) + v187;
                              v250 = *(v249 + 372);
                              *(v249 + 372) = 0;
                              *(*(this + 33) + v187 + 372) ^= 0x1FFFFFFu;
                              v251 = *(this + 33) + v187;
                              v217 = *(v251 + 372);
                              *(v251 + 372) = v250;
                              v219 = *(v191 + 48);
                              if (*v219 || *(v219 + 152) || *(v219 + 156))
                              {
                                v218 = v187 + 372;
                                goto LABEL_276;
                              }
                            }
                          }

                          else
                          {
                            v220 = v197 + v187;
                            v221 = *(v220 + 308);
                            *(v220 + 308) = 0;
                            *(*(this + 33) + v187 + 308) ^= 0x1FFFFFFu;
                            v222 = *(this + 33) + v187;
                            v223 = *(v222 + 308);
                            *(v222 + 308) = v221;
                            v224 = *v190;
                            if (**v190 || *(v224 + 38) || *(v224 + 39))
                            {
                              result = CAHDec::addToPatcherList(this, v224, v187 + 308, 0, 0xFFFFFFFFLL, 7, v223, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            v225 = *(this + 33) + v187;
                            v226 = *(v225 + 340);
                            *(v225 + 340) = 0;
                            *(*(this + 33) + v187 + 340) ^= 0x1FFFFFFu;
                            v227 = *(this + 33) + v187;
                            v228 = *(v227 + 340);
                            *(v227 + 340) = v226;
                            v229 = *(v191 + 48);
                            if (*v229 || *(v229 + 152) || *(v229 + 156))
                            {
                              result = CAHDec::addToPatcherList(this, v229, v187 + 340, *(v229 + 52), 0xFFFFFFFFLL, 7, v228, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            v230 = *(this + 33) + v187;
                            v231 = *(v230 + 372);
                            *(v230 + 372) = 0;
                            *(*(this + 33) + v187 + 372) ^= 0x1FFFFFFu;
                            v232 = *(this + 33) + v187;
                            v233 = *(v232 + 372);
                            *(v232 + 372) = v231;
                            v234 = *v330;
                            if (**v330 || *(v234 + 38) || *(v234 + 39))
                            {
                              result = CAHDec::addToPatcherList(this, v234, v187 + 372, 0, 0xFFFFFFFFLL, 7, v233, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            v235 = *(this + 33) + v187;
                            v236 = *(v235 + 404);
                            *(v235 + 404) = 0;
                            *(*(this + 33) + v187 + 404) ^= 0x1FFFFFFu;
                            v237 = *(this + 33) + v187;
                            v217 = *(v237 + 404);
                            *(v237 + 404) = v236;
                            v219 = *(v191 + 48);
                            if (*v219 || *(v219 + 152) || *(v219 + 156))
                            {
                              v218 = v187 + 404;
                              v238 = *(v219 + 56);
                              goto LABEL_277;
                            }
                          }

                          v187 += 4;
                          ++v189;
                          ++v190;
                          ++v330;
                          if (4 * v321 == v187)
                          {
                            goto LABEL_279;
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

uint64_t CAHDecLotusHevc::getTileIdxAbove(CAHDecLotusHevc *this, unsigned int a2)
{
  v2 = *(*(this + 33) + 452);
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

uint64_t CAHDecLotusHevc::populateAvdWork(CAHDecLotusHevc *this, unsigned int a2)
{
  v2 = this;
  v118[2] = *MEMORY[0x277D85DE8];
  v3 = *(this + 32);
  v4 = *(this + 33);
  v5 = *(v3 + 8208);
  v6 = *(v3 + 8212);
  v7 = *(v3 + 8168);
  v8 = *(v3 + 8176);
  v84 = *(v3 + 8184);
  v9 = *(v3 + 8924);
  v10 = *(v3 + 2960);
  v11 = *(v3 + 2964);
  v12 = v8 + 9856 * v6;
  v98 = v4 + 216292;
  v118[0] = v4 + 216292;
  v118[1] = v4 + 306404;
  v117 = 0;
  v86 = v7 + 23176 * v5;
  v82 = v4;
  if (v9)
  {
    if (*(v12 + 53))
    {
      v14 = *(v86 + 22888) > 1u;
    }

    else
    {
      v14 = 0;
    }

    v13 = v14 && v11 == 0;
  }

  else
  {
    v13 = 0;
  }

  v96 = *(v4 + 454) * *(v4 + 452);
  if ((v9 & 2) != 0 && *(v12 + 52))
  {
    if (*(v12 + 53) | v11)
    {
      v16 = 0;
    }

    else
    {
      v16 = v96 > 1;
    }

    v17 = v16;
    v110 = v17;
  }

  else
  {
    v110 = 0;
  }

  v81 = v4 + 306404;
  if ((v9 & 0x20) != 0 && !*(v12 + 53))
  {
    v18 = *(v86 + 22888);
    if (*(v12 + 52) | v11)
    {
      v67 = 0;
    }

    else
    {
      v67 = v10 > 1;
    }

    v68 = v67;
    v94 = v68;
  }

  else
  {
    v18 = *(v86 + 22888);
    v94 = 0;
  }

  v19 = 0;
  v20 = *(v86 + 22880);
  v100 = v12;
  if (((v9 & 4) == 0) | (v13 | v110) & 1)
  {
    v21 = v4 + 216292;
  }

  else
  {
    v21 = v4 + 216292;
    if ((v94 & 1) == 0)
    {
      v19 = *(*(this + *(this + 13) + 34) + 16) & 1;
      v21 = v118[v19];
    }
  }

  v22 = 0;
  v108 = 0;
  v23 = 0;
  v103 = 0;
  v24 = 0;
  v113 = 0;
  v25 = 0;
  v109 = 0;
  v104 = 0;
  v85 = 0;
  v90 = 0;
  v99 = 0;
  v107 = 0x2E8BA2E8BA2E8BA3 * ((v21 - v98) >> 2);
  v114 = 0;
  v115 = 0;
  if (v13)
  {
    v26 = 12;
  }

  else
  {
    v26 = 4;
  }

  v92 = v26;
  v93 = a2 - 1;
  v88 = v18 - 1;
  v89 = v18;
  v87 = v18 - 2;
  v95 = v4 + 3036;
  v101 = v20;
  do
  {
    v27 = v84 + 2360 * v22;
    if (!((*(v100 + 52) != 0) | v13 & 1))
    {
      v30 = 1;
LABEL_39:
      v31 = 0;
      v91 = 0;
      v97 = 356 * v22;
      v105 = v30;
      v106 = v84 + 2360 * v22;
      v102 = v22;
      while (1)
      {
        if (!(v31 | v22))
        {
          v36 = v2;
          v37 = v27;
          v38 = v13;
          *(v21 + 4) = 0;
          v39 = v19;
          *(v21 + 6) = v19;
          *(v21 + 8) = 0;
          *(v21 + 12) = 0;
          v103 = *(v95 + v97);
          if (!(*(**(v36 + 32) + 440))())
          {
            return 0xFFFFFFFFLL;
          }

          v40 = *(v37 + 36);
          *(v21 + 28) = v40;
          *(v21 + 32) = v40;
          v41 = (*(*v36 + 80))(v36, v23, v20);
          v24 = 0;
          *(v21 + 40) = v41;
          v42 = 271;
          v19 = v39;
          v13 = v38;
          v27 = v37;
          goto LABEL_132;
        }

        v111 = v19;
        v32 = v13;
        if (v31)
        {
          v33 = *(*(v27 + 1904) + 4 * v31 - 4) + 1;
          if (*(v100 + 52))
          {
            if (*(v100 + 53))
            {
              v34 = *(v86 + 22880);
              v35 = (v34 + v113) / v34;
              v33 += v91;
              if (v35 >= *(*(v2 + 33) + 2 * (HIDWORD(v85) + 1) + 498))
              {
                v113 = (*(*v2 + 72))(v2, (v23 + 1), v101);
                v91 = 0;
                v25 = v92;
              }

              else
              {
                v113 = v90 + v35 * v34;
                if (!v32)
                {
                  v91 = v33;
                  v13 = v32;
                  v20 = v101;
                  goto LABEL_133;
                }

                v91 = 0;
                if (v35 == v85 + 1)
                {
                  v25 = 72;
                }

                else
                {
                  v25 = 8;
                }
              }
            }

            else
            {
              v113 = (*(*v2 + 72))(v2, (v23 + 1), v101);
              v25 = 4;
            }
          }

          else if (v32)
          {
            v113 = (*(v86 + 22880) + v113) / *(v86 + 22880) * *(v86 + 22880);
            v25 = 8;
          }

          v49 = v115;
          if (*v115 || *(v115 + 152) || *(v115 + 156))
          {
            v50 = v114;
            if ((v114 + v24) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf[0]) = 136315394;
              *(buf + 4) = "populateAvdWork";
              WORD2(buf[1]) = 1024;
              *(&buf[1] + 6) = 1728;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
              v50 = v114;
            }

            v51 = v24 + v50;
            v2 = this;
            result = CAHDec::addToPatcherList(this, v49, 44 * v107 + 216312, v51, 0xFFFFFFFFLL, 0, -1, 4);
            if (result)
            {
              return result;
            }
          }

          *(v21 + 24) = v33;
          v24 += v33;
          v13 = v32;
        }

        else
        {
          v43 = v115;
          if (*v115 || *(v115 + 152) || *(v115 + 156))
          {
            v44 = v114;
            if ((v114 + v24) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf[0]) = 136315394;
              *(buf + 4) = "populateAvdWork";
              WORD2(buf[1]) = 1024;
              *(&buf[1] + 6) = 1658;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
              v44 = v114;
            }

            result = CAHDec::addToPatcherList(v2, v43, 44 * v107 + 216312, v24 + v44, 0xFFFFFFFFLL, 0, -1, 4);
            if (result)
            {
              return result;
            }
          }

          *(v21 + 24) = v103 - v24;
          v46 = *(v95 + v97);
          if (!(*(**(v2 + 32) + 440))(*(v2 + 32), v102, &v115, &v114))
          {
            return 0xFFFFFFFFLL;
          }

          v103 = v46;
          v47 = *(v27 + 36);
          if (*(v27 + 32))
          {
            v25 = 2;
          }

          else
          {
            v25 = 258;
          }

          v13 = v32;
          v113 = *(v27 + 36);
          if (v32)
          {
            v20 = v101;
            if (v47 % v101 == v90)
            {
              v24 = 0;
              if (v47 / v101 == v85 + 1)
              {
                v48 = 72;
              }

              else
              {
                v48 = 8;
              }

              v25 |= v48;
            }

            else
            {
              v24 = 0;
            }

            goto LABEL_82;
          }

          v24 = 0;
        }

        v20 = v101;
LABEL_82:
        v52 = v23 + 1;
        if (v23 + 1 < v96)
        {
          v53 = (*(*v2 + 72))(v2, (v23 + 1), v20);
          v54 = v92;
          if (v113 != v53)
          {
            v54 = 0;
          }

          v25 |= v54;
        }

        *(v21 + 16) = v25;
        if (v108 == v93)
        {
          *(v21 + 18) |= 2u;
        }

        if (v23 == v96 - 1)
        {
          *(v21 + 18) |= 4u;
        }

        v55 = v110;
        if (v23 != v96 - 2)
        {
          v55 = 0;
        }

        if (v55 == 1)
        {
          *(v21 + 18) |= 4u;
        }

        if (v13)
        {
          v56 = *(v21 + 10);
          v57 = v89 > 1 && v87 == v56;
          v58 = v57;
          if (v88 == v56 || v58)
          {
            *(v21 + 18) |= 8u;
          }
        }

        if ((v25 & 4) != 0)
        {
          if (*(v100 + 52) && *(v100 + 53))
          {
            v59 = *(v2 + 33);
            v60 = *(v59 + 452);
            HIDWORD(v85) = v52 / v60;
            v90 = *(v59 + 2 * (v52 % v60) + 456);
            LODWORD(v85) = *(v59 + 2 * (v52 / v60) + 498);
            v99 = (v111 + v85) ^ 1;
          }

          v23 = (v23 + 1);
        }

        if ((v25 & 0x44) != 0 && v109 <= (*(*v2 + 88))(v2, v23))
        {
          v25 |= 0x20u;
        }

        if (!v31)
        {
          v61 = v104;
          if (!*(v106 + 32))
          {
            v61 = v113;
          }

          v104 = v61;
          v62 = v109;
          if (!*(v106 + 32))
          {
            v62 = v23;
          }

          v109 = v62;
        }

        if ((v25 & 0x44) != 0)
        {
          v63 = *(*(v2 + 33) + 452);
          if (v109 / v63 + 1 == v23 / v63)
          {
            v25 |= 0x10u;
          }
        }

        v64 = (v99 + (v113 / v20)) & 1;
        if (!v13)
        {
          v64 = v111;
        }

        if (v110)
        {
          v65 = v23 & 1;
        }

        else
        {
          v65 = v64;
        }

        ++*(&v118[-1] + v111);
        v118[v111] += 44;
        v66 = v94 ^ 1;
        if (v31)
        {
          v66 = 1;
        }

        if ((v66 & 1) == 0 && !*(v106 + 32))
        {
          v65 = v65 == 0;
        }

        v21 = v118[v65];
        v107 = 0x2E8BA2E8BA2E8BA3 * ((v21 - v98) >> 2);
        *(v21 + 4) = *(&v118[-1] + v65);
        *(v21 + 6) = v65;
        *(v21 + 8) = v102;
        *(v21 + 10) = v113 / v20;
        *(v21 + 12) = v23;
        *(v21 + 28) = v113;
        *(v21 + 32) = v104;
        *(v21 + 40) = (*(*this + 80))(this, v23, v20);
        v42 = v25;
        v19 = v65;
        v22 = v102;
        v108 = v102;
        v27 = v106;
LABEL_132:
        *(v21 + 14) = v42;
        v2 = this;
LABEL_133:
        if (v105 == ++v31)
        {
          goto LABEL_36;
        }
      }
    }

    v28 = *(v27 + 1896);
    v29 = __CFADD__(v28, 1);
    v30 = v28 + 1;
    if (!v29)
    {
      goto LABEL_39;
    }

LABEL_36:
    ++v22;
  }

  while (v22 != a2);
  v69 = v19;
  v70 = v115;
  if (!*v115 && !*(v115 + 152) && !*(v115 + 156))
  {
    goto LABEL_153;
  }

  v71 = v114;
  if ((v114 + v24) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 136315394;
    *(buf + 4) = "populateAvdWork";
    WORD2(buf[1]) = 1024;
    *(&buf[1] + 6) = 1818;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v71 = v114;
  }

  v2 = this;
  result = CAHDec::addToPatcherList(this, v70, 44 * v107 + 216312, v24 + v71, 0xFFFFFFFFLL, 0, -1, 4);
  if (!result)
  {
LABEL_153:
    *(v21 + 24) = v103 - v24;
    *(v21 + 16) = 917519;
    ++*(&v118[-1] + v69);
    if (v94)
    {
      v72 = v98;
      buf[0] = v98;
      buf[1] = v81;
      v73 = *(v82 + 216300) + 1;
      if (v73 >= a2)
      {
        v74 = 0;
        v76 = buf;
      }

      else
      {
        v74 = 0;
        v75 = 0;
        v76 = buf;
        do
        {
          if (*(v72 + 4) + 1 == *(&v118[-1] + v74))
          {
            v75 = !v75;
            *(v72 + 36) = *(buf[v75] + 32);
          }

          else
          {
            if (v73 != *(v72 + 52))
            {
              v75 = !v75;
              *(v72 + 36) = *(buf[v75] + 32);
            }

            *v76 = v72 + 44;
          }

          v74 = v75;
          v76 = &buf[v75];
          v72 = *v76;
          v73 = *(*v76 + 8) + 1;
        }

        while (v73 < a2);
      }

      v77 = *(&v118[-1] + v74);
      if (*(v72 + 4) + 1 != v77)
      {
        do
        {
          v78 = *(v72 + 48);
          v72 += 44;
        }

        while (v78 + 1 != v77);
        *v76 = v72;
      }

      *(v72 + 36) = *(v72 + 40) + 1;
    }

    result = 0;
    v79 = *(v2 + 33);
    v80 = WORD2(v117);
    *(v79 + 28) = v117;
    *(v79 + 30) = v80;
    *(v79 + 32) = 216292;
    *(v79 + 36) = 306404;
  }

  return result;
}

uint64_t CAHDecLotusHevc::allocWorkBuf_SPS(CAHDecLotusHevc *this, _DWORD *a2)
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

  *(this + 2948) = v26;
  *(this + 2949) = v40;
  *(this + 1475) = 0;
  v41 = (v17 & 0xFFFFFFF0) * (v17 >> 4) * v4[600];
  *(this + 2954) = v41;
  *(this + 2953) = v4[602] * v41;
  if (*(*(this + 32) + 2648))
  {
LABEL_44:
    v46 = (this + 7568);
    v47 = 16;
    while (1)
    {
      v48 = *(this + 2953);
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
    v53 = 2079;
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
      v44 = *(this + 2948);
      if (v44 && CAVDDecoder::allocAVDMem(*(this + 32), v42 - 176, v44, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_56;
        }

        v50 = 136315650;
        v51 = "allocWorkBuf_SPS";
        v52 = 1024;
        v53 = 2070;
        v54 = 2080;
        *v55 = "HdrY";
        v49 = MEMORY[0x277D86220];
        goto LABEL_55;
      }

      v45 = *(this + 2949);
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
    v53 = 2071;
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

uint64_t CAHDecLotusHevc::allocWorkBuf_PPS(CAHDecLotusHevc *this, _DWORD *a2, _DWORD *a3, void *a4)
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
  if (v33 && CAVDDecoder::allocAVDMem(v25, this + 649, v33, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2249;
      v73 = 2080;
      v74 = "IpAbove";
      v60 = MEMORY[0x277D86220];
LABEL_121:
      _os_log_impl(&dword_277606000, v60, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", buf, 0x1Cu);
      goto LABEL_122;
    }

    goto LABEL_122;
  }

  if ((v11 + 30) >= 0x1F && CAVDDecoder::allocAVDMem(*(this + 32), this + 462, 4 * (4 * v32 + (v65 >> 4)), 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2250;
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
  if (v62 && CAVDDecoder::allocAVDMem(*(this + 32), this + 660, v62, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2251;
      v73 = 2080;
      v74 = "LfAbovePix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  v63 = 36 * v61 + (v27 << 7);
  if (v63 && CAVDDecoder::allocAVDMem(*(this + 32), this + 671, v63, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2252;
      v73 = 2080;
      v74 = "LfAboveInfo";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (v35 && CAVDDecoder::allocAVDMem(*(this + 32), this + 682, v35, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2253;
      v73 = 2080;
      v74 = "LfLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (v34 && CAVDDecoder::allocAVDMem(*(this + 32), this + 693, v34, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2254;
      v73 = 2080;
      v74 = "LfLeftInfo";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (v23 && CAVDDecoder::allocAVDMem(*(this + 32), this + 704, v23, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2255;
      v73 = 2080;
      v74 = "SwLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (v12 && CAVDDecoder::allocAVDMem(*(this + 32), this + 715, v12, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2256;
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

  result = CAVDDecoder::allocAVDMem(*(this + 32), this + 726, v68, 7, 1, 0);
  if (result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2257;
      v73 = 2080;
      v74 = "AZLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  return result;
}

uint64_t CAHDecLotusHevc::freeWorkBuf_SPS(uint64_t this)
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

  v4 = (v1 + 7568);
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

uint64_t *CAHDecLotusHevc::freeWorkBuf_PPS(uint64_t *this, void *a2)
{
  v2 = this;
  if (this[1298])
  {
    this = CAVDDecoder::deallocAVDMem(this[32], this + 1298);
    v2[1298] = 0;
  }

  if (v2[924])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 924);
    v2[924] = 0;
  }

  if (v2[1320])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1320);
    v2[1320] = 0;
  }

  if (v2[1342])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1342);
    v2[1342] = 0;
  }

  if (v2[1364])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1364);
    v2[1364] = 0;
  }

  if (v2[1386])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1386);
    v2[1386] = 0;
  }

  if (v2[1408])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1408);
    v2[1408] = 0;
  }

  if (v2[1430])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1430);
    v2[1430] = 0;
  }

  if (v2[1452])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1452);
    v2[1452] = 0;
  }

  return this;
}

uint64_t CAHDecLotusHevc::setVPInstrFifo(uint64_t this, int a2)
{
  v2 = 0;
  v3 = (this + 6316);
  do
  {
    *v3 = 1;
    *(v3 - 39) = v2++;
    v3 += 44;
  }

  while (v2 != 7);
  *(this + 11808) = a2;
  return this;
}

CAHDec *createCatnipAvcDecoder(uint64_t a1)
{
  v2 = operator new(0x2F10uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecCatnipAvc::CAHDecCatnipAvc(v2, a1);
  }

  return v3;
}

CAHDec *CAHDecCatnipAvc::CAHDecCatnipAvc(CAHDec *a1, uint64_t a2)
{
  CAHDec::CAHDec(a1);
  *v4 = &unk_288666690;
  *(v4 + 256) = a2;
  *(v4 + 456) = 956 * *(a2 + 7388) + 182328;
  *(v4 + 8) = 2104;
  *(v4 + 16) = xmmword_27775BAD0;
  *(v4 + 32) = 1;
  *(v4 + 56) = a2;
  *(v4 + 11872) = 0u;
  *(v4 + 11888) = 0u;
  *(v4 + 11904) = 0u;
  *(v4 + 11920) = 0u;
  *(v4 + 11936) = 0u;
  *(v4 + 11952) = 0u;
  *(v4 + 11968) = 0u;
  *(v4 + 11984) = 0u;
  *(v4 + 12000) = 0u;
  *(v4 + 12016) = 0u;
  *(v4 + 12032) = 0u;
  bzero((v4 + 560), 0x2C00uLL);
  return a1;
}

void CAHDecCatnipAvc::~CAHDecCatnipAvc(CAHDecCatnipAvc *this)
{
  *this = &unk_288666690;
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecCatnipAvc::~CAHDecCatnipAvc(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecCatnipAvc::init(CAHDecCatnipAvc *this)
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

uint64_t CAHDecCatnipAvc::initPicture(CAHDecCatnipAvc *this, int a2, __int16 a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = 956 * *(*(this + 32) + 7388) + 182328;
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
    *(this + 2963) = 0;
    *(this + 1489) = 0;
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

uint64_t CAHDecCatnipAvc::populateSlices(CAHDecCatnipAvc *this, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = *(this + *(this + 13) + 34) + 2104;
    v5 = a2;
    do
    {
      CAHDecCatnipAvc::populateSliceRegisters(this, v4, v3++);
      v4 += 956;
    }

    while (v5 != v3);
  }

  return 0;
}

uint64_t CAHDecCatnipAvc::populateSliceRegisters(uint64_t a1, uint64_t a2, signed int a3)
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
    if (!*(a1 + 11852))
    {
      *(a1 + 11912) = *(v9 + 13040 * a3 + 7264);
      *(a1 + 11904) = v21;
      *(a1 + 11852) = 1;
      *(a2 + 4) |= 0x40000u;
      v20 = *(v10 + 1832);
      if (!v20 || !*(a1 + 11852))
      {
        goto LABEL_20;
      }
    }

    v83 = *(v20 + 40);
    if (v83 == *(a1 + 11912))
    {
      goto LABEL_20;
    }

    *(a1 + 11912) = v83;
    *(a1 + 11904) = *(v20 + 32);
    v22 = 0x40000;
  }

  *(a2 + 4) |= v22;
LABEL_20:
  *(a2 + 920) = 0;
  *(a2 + 952) = 0;
  if (*(v10 + 24) == 1 && (*(a2 + 6) & 4) != 0)
  {
    v33 = *(*(v10 + 1832) + 32);
    *(a1 + 11852) = 1;
    v34 = *(a1 + 11844) * v33;
    v35 = 956 * a3;
    if (*(a1 + 11648) || *(a1 + 11800) || *(a1 + 11804))
    {
      v89 = v7;
      v36 = v6;
      v37 = v9;
      result = CAHDec::addToPatcherList(a1, (a1 + 11648), v35 + 3024, v34, 0xFFFFFFFFLL, 8, -256, 4);
      if (result)
      {
        return result;
      }

      v3 = a3;
      v9 = v37;
      v6 = v36;
      v7 = v89;
      if (*(a1 + 11648))
      {
        goto LABEL_41;
      }
    }

    if (*(a1 + 11800) || *(a1 + 11804))
    {
LABEL_41:
      result = CAHDec::addToPatcherList(a1, (a1 + 11648), v35 + 3056, v34, 0x3FFFFFFFFFFLL, 32, 1023, 4);
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
    v96[0] = 1739;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v78 = v92;
  }

  result = CAHDec::addToPatcherList(a1, v77, v76 + 3028, v78, 0x3FFFFFFFFFFLL, 32, 1023, 4);
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
              *v95 = "int CAHDecCatnipAvc::populateSliceRegisters(AvcSliceRegisters *, int)";
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
    v96[0] = 1740;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v79 = v92;
  }

  result = CAHDec::addToPatcherList(a1, v77, v76 + 3036, v79, 0xFFFFFFFFLL, 0, -1, 4);
  if (!result)
  {
    goto LABEL_104;
  }

  return result;
}