uint64_t CAHDecTansyHevc::allocWorkBuf_SPS(CAHDecTansyHevc *this, _DWORD *a2)
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

  *(this + 2992) = v26;
  *(this + 2993) = v40;
  *(this + 1497) = 0;
  v41 = (v17 & 0xFFFFFFF0) * (v17 >> 4) * v4[600];
  *(this + 2998) = v41;
  *(this + 2997) = v4[602] * v41;
  if (*(*(this + 32) + 2648))
  {
LABEL_44:
    v46 = (this + 7568);
    v47 = 16;
    while (1)
    {
      v48 = *(this + 2997);
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
    v53 = 2391;
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
      v44 = *(this + 2992);
      if (v44 && CAVDDecoder::allocAVDMem(*(this + 32), v42 - 176, v44, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_56;
        }

        v50 = 136315650;
        v51 = "allocWorkBuf_SPS";
        v52 = 1024;
        v53 = 2382;
        v54 = 2080;
        *v55 = "HdrY";
        v49 = MEMORY[0x277D86220];
        goto LABEL_55;
      }

      v45 = *(this + 2993);
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
    v53 = 2383;
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

uint64_t CAHDecTansyHevc::allocWorkBuf_PPS(CAHDecTansyHevc *this, _DWORD *a2, _DWORD *a3, void *a4)
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = (a2[909] + 9) & 0xFFFFFFFE;
  v5 = a2[910];
  v6 = (v5 + 9) & 0xFFFFFFFE;
  if (v4 <= v6)
  {
    v7 = (v5 + 9) & 0xFFFFFFFE;
  }

  else
  {
    v7 = (a2[909] + 9) & 0xFFFFFFFE;
  }

  v8 = a2[900];
  if (v7 == 10)
  {
    v9 = 40;
  }

  else
  {
    v9 = 48;
  }

  if (v7 == 8)
  {
    v9 = 32;
  }

  v10 = v8 != 3;
  if (*(a3 + 52))
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = a2[1106] + a2[1105];
    v17 = a3[14];
    v18 = a2[5718];
    v19 = a2[902];
    do
    {
      v20 = a3[v11 + 17] + 1;
      v21 = v20 * v18;
      if (v20 * v18 + v14 > v19)
      {
        v21 = v19 - v14;
      }

      if (v12 <= v21)
      {
        v12 = v21;
      }

      if (v8)
      {
        v22 = (v20 << v16) >> v10;
        if (v17 == v11)
        {
          v22 = (((v19 >> 3) - (v15 << v16)) >> v10) + 1;
        }

        v13 += ((v22 + 2 * (v11 != 0)) * v9 + 127) & 0xFFFFFF80;
      }

      v14 += v21;
      v15 += v20;
      ++v11;
    }

    while (v17 + 1 != v11);
  }

  else
  {
    v19 = a2[902];
    v23 = (v9 + v9 * (v19 >> 3 >> v10) + 127) & 0x7FFFFF80;
    if (v8)
    {
      v13 = v23;
    }

    else
    {
      v13 = 0;
    }

    v12 = a2[902];
  }

  v24 = 0;
  v25 = *(this + 32);
  if (v12 >= -15)
  {
    v26 = v12 + 15;
  }

  else
  {
    v26 = v12 + 30;
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

  v68 = v28;
  if (v8 == 3)
  {
    v29 = 48;
  }

  else
  {
    v29 = 32;
  }

  if (v8 == 3)
  {
    v30 = 176;
  }

  else
  {
    v30 = 128;
  }

  if (!v8)
  {
    v29 = 16;
  }

  v31 = (v29 * v7) >> 3;
  if (!v8)
  {
    v30 = 80;
  }

  v32 = (v26 >> 4) * v31;
  if (v5)
  {
    v33 = 60;
  }

  else
  {
    v33 = 48;
  }

  v66 = v33;
  v67 = v30;
  v34 = 0;
  v35 = 0;
  if (!*(a3 + 52))
  {
    v59 = 0;
LABEL_87:
    v69 = v59;
    goto LABEL_88;
  }

  v69 = 0;
  if (v27)
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v24 = 0;
    v37 = 0;
    if (v8 == 1)
    {
      v38 = 144;
    }

    else
    {
      v38 = 192;
    }

    if (v8 == 1)
    {
      v39 = 24;
    }

    else
    {
      v39 = 32;
    }

    v40 = v8 == 0;
    if (v8)
    {
      v41 = v38;
    }

    else
    {
      v41 = 96;
    }

    v42 = (((v41 * v7) >> 3) + 7) & 0x3FFFFFF8;
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
    v46 = v6 - 8;
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
        if (v24 <= v58)
        {
          v24 = v58;
        }
      }

      v37 += v53;
      ++v36;
    }

    while (v48 + 1 != v36);
    v59 = (((3 * v7) & 0x7FFFFF) << 6) + (((v44 + 7) >> 3) + 2) * ((((v7 >> 1) & 0x1FFFFF) << 8) | 8);
    goto LABEL_87;
  }

LABEL_88:
  if (v32 && CAVDDecoder::allocAVDMem(v25, this + 649, v32, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2565;
      v75 = 2080;
      v76 = "IpAbove";
      v60 = MEMORY[0x277D86220];
LABEL_128:
      _os_log_impl(&dword_277606000, v60, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", buf, 0x1Cu);
      goto LABEL_129;
    }

    goto LABEL_129;
  }

  if ((v12 + 30) >= 0x1F && CAVDDecoder::allocAVDMem(*(this + 32), this + 462, 20 * (v26 >> 4), 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2566;
      v75 = 2080;
      v76 = "MvAboveInfo";
      v60 = MEMORY[0x277D86220];
      goto LABEL_128;
    }

LABEL_129:
    (*(*this + 160))(this, 0);
    return 0xFFFFFFFFLL;
  }

  v61 = v68 + ((v19 + 15) >> 4);
  v62 = v61 * ((((v67 * v7) >> 3) + 7) & 0x3FFFFFF8) + (v27 << 7);
  if (v62 && CAVDDecoder::allocAVDMem(*(this + 32), this + 660, v62, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2567;
      v75 = 2080;
      v76 = "LfAbovePix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  v63 = 36 * v61 + (v27 << 7);
  if (v63 && CAVDDecoder::allocAVDMem(*(this + 32), this + 671, v63, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2568;
      v75 = 2080;
      v76 = "LfAboveInfo";
      v60 = MEMORY[0x277D86220];
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  if (v35 && CAVDDecoder::allocAVDMem(*(this + 32), this + 682, v35, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2569;
      v75 = 2080;
      v76 = "LfLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  if (v34 && CAVDDecoder::allocAVDMem(*(this + 32), this + 693, v34, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2570;
      v75 = 2080;
      v76 = "LfLeftInfo";
      v60 = MEMORY[0x277D86220];
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  if (v24 && CAVDDecoder::allocAVDMem(*(this + 32), this + 704, v24, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2571;
      v75 = 2080;
      v76 = "SwLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  if (v13 && CAVDDecoder::allocAVDMem(*(this + 32), this + 715, v13, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2572;
      v75 = 2080;
      v76 = "AZAbovePix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  if (v69 && CAVDDecoder::allocAVDMem(*(this + 32), this + 726, v69, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2573;
      v75 = 2080;
      v76 = "AZLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  v64 = (v19 >> 3) * v66;
  if (!v64)
  {
    return 0;
  }

  result = CAVDDecoder::allocAVDMem(*(this + 32), this + 737, v64, 7, 1, 0);
  if (result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2575;
      v75 = 2080;
      v76 = "RfAboveInfo";
      v60 = MEMORY[0x277D86220];
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  return result;
}

uint64_t CAHDecTansyHevc::freeWorkBuf_SPS(uint64_t this)
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

uint64_t *CAHDecTansyHevc::freeWorkBuf_PPS(uint64_t *this, void *a2)
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

  if (v2[1474])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1474);
    v2[1474] = 0;
  }

  return this;
}

uint64_t CAHDecTansyHevc::setVPInstrFifo(uint64_t this, int a2)
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
  *(this + 11984) = a2;
  return this;
}

void *createTansyLghDecoder(uint64_t a1)
{
  v2 = operator new(0xC48uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecTansyLgh::CAHDecTansyLgh(v2, a1);
  }

  return v3;
}

void *CAHDecTansyLgh::CAHDecTansyLgh(void *a1, uint64_t a2)
{
  CAHDec::CAHDec(a1);
  *v4 = &unk_288667A30;
  *(v4 + 256) = a2;
  *(v4 + 456) = 151468;
  *(v4 + 8) = 940;
  *(v4 + 16) = xmmword_27775BC80;
  *(v4 + 32) = 1;
  *(v4 + 56) = a2;
  *(a2 + 17792) = 0;
  bzero((a2 + 12032), 0xB00uLL);
  *(a2 + 5952) = 0u;
  bzero((a1[32] + 14848), 0xB00uLL);
  bzero(a1 + 58, 0x4D0uLL);
  bzero((a1[32] + 5248), 0x2C0uLL);
  bzero(a1 + 212, 0x580uLL);
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

void CAHDecTansyLgh::~CAHDecTansyLgh(CAHDecTansyLgh *this)
{
  *this = &unk_288667A30;
  CAHDecTansyLgh::freeWorkBuf_SPS(this);
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
  CAHDecTansyLgh::~CAHDecTansyLgh(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecTansyLgh::init(CAHDecTansyLgh *this)
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

uint64_t CAHDecTansyLgh::startPicture(CAHDecTansyLgh *this, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *(this + 13) = 0;
  v3 = *(this + 34);
  *(this + 33) = v3;
  if (v3)
  {
    bzero(v3, 0x24FACuLL);
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

uint64_t CAHDecTansyLgh::DecodePicture(CAHDecTansyLgh *this, uint64_t a2)
{
  if (CAHDecTansyLgh::startPicture(this, a2))
  {
    return 1;
  }

  (*(*this + 40))(this);
  (*(*this + 56))(this);
  (*(*this + 64))(this);
  CAHDecTansyLgh::populateTiles(this);
  (*(*this + 96))(this, a2);
  (*(*this + 48))(this, *(this + 114));
  return 0;
}

uint64_t CAHDecTansyLgh::populateTiles(CAHDecTansyLgh *this)
{
  v1 = (*(*(*(this + 32) + 17800) + 316) * *(*(*(this + 32) + 17800) + 312));
  if (v1)
  {
    v3 = *(this + *(this + 13) + 34) + 940;
    do
    {
      CAHDecTansyLgh::populateTileRegisters(this, v3);
      v3 += 12;
      --v1;
    }

    while (v1);
  }

  return 0;
}

uint64_t CAHDecTansyLgh::updateCommonRegisters(CAHDecTansyLgh *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecTansyLgh::populateSequenceRegisters(CAHDecTansyLgh *this)
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

uint64_t CAHDecTansyLgh::populatePictureRegisters(CAHDecTansyLgh *this)
{
  v373 = *MEMORY[0x277D85DE8];
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

  v360 = *(v2 + 11988);
  v6 = *(v4 + 100);
  v367 = *(v4 + 96);
  v366 = 1 << v6;
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
  v368 = 1 << v367;
  v365 = v6;
  v363 = 1 << v367 << v6;
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
  v369 = v4;
  v361 = v5;
  if (v5)
  {
    v362 = 8;
  }

  else
  {
    v364 = v3;
    v54 = (v3 + 112);
    v55 = 2208;
    v362 = 3;
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
      v4 = v369;
    }

    while (v55 != 2211);
    v3 = v364;
  }

  *(v3 + 144) = 0;
  v60 = *(v4 + 2672);
  *(v3 + 144) = v60;
  *(v3 + 144) = v60 | (*(v4 + 2676) << 16);
  v61 = *(v4 + 2680);
  *(v3 + 148) = v61;
  *(v3 + 148) = v61 | (*(v4 + 2684) << 16);
  v62 = this + 464;
  for (i = 196; i != 224; i += 4)
  {
    *(*(this + 33) + i - 28) = 0;
    v64 = *(this + 33) + i;
    v65 = *(v64 - 28);
    *(v64 - 28) = 0;
    *(*(this + 33) + i - 28) ^= 0xFFFFFF00;
    v66 = *(this + 33) + i;
    v67 = *(v66 - 28);
    *(v66 - 28) = v65;
    if (*v62 || *(v62 + 38) || *(v62 + 39))
    {
      result = CAHDec::addToPatcherList(this, v62, i - 28, 0, 0xFFFFFFFFLL, 8, v67, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + i) = 0;
    *(*(this + 33) + i) = *(*(this + 33) + i) & 0x800001FF | (((*(this + 780) >> 9) & 0x3FFFFF) << 9);
    *(*(this + 33) + i + 180) = 0;
    v69 = *(this + 33) + i;
    v70 = *(v69 + 180);
    *(v69 + 180) = 0;
    *(*(this + 33) + i + 180) ^= 0x3FFu;
    v71 = *(this + 33) + i;
    v72 = *(v71 + 180);
    *(v71 + 180) = v70;
    if (*v62 || *(v62 + 38) || *(v62 + 39))
    {
      result = CAHDec::addToPatcherList(this, v62, i + 180, 0, 0x3FFFFFFFFFFLL, 32, v72, 4);
      if (result)
      {
        return result;
      }
    }

    v62 += 176;
  }

  *(*(this + 33) + 224) = 0;
  v73 = *(this + 33);
  v74 = *(v73 + 224);
  *(v73 + 224) = 0;
  *(*(this + 33) + 224) ^= 0xFFFFFF00;
  v75 = *(this + 33);
  v76 = *(v75 + 224);
  *(v75 + 224) = v74;
  v77 = *(this + 32);
  if (*(v77 + 5072) || *(v77 + 5224) || *(v77 + 5228))
  {
    result = CAHDec::addToPatcherList(this, (v77 + 5072), 224, 0, 0xFFFFFFFFLL, 8, v76, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 404) = 0;
  v78 = *(this + 33);
  v79 = *(v78 + 404);
  *(v78 + 404) = 0;
  *(*(this + 33) + 404) ^= 0x3FFu;
  v80 = *(this + 33);
  v81 = *(v80 + 404);
  *(v80 + 404) = v79;
  v82 = *(this + 32);
  if (*(v82 + 5072) || *(v82 + 5224) || *(v82 + 5228))
  {
    result = CAHDec::addToPatcherList(this, (v82 + 5072), 404, 0, 0x3FFFFFFFFFFLL, 32, v81, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 228) = 0;
  *(*(this + 33) + 408) = 0;
  if ((*(v3 + 50) & 8) != 0)
  {
    v83 = *(this + 33);
    v84 = *(*(this + 32) + 2680);
    v371 = 0u;
    v372 = 0u;
    memset(buf, 0, sizeof(buf));
    v85 = (*(v83 + 16) & 0xF) << 9;
    *&buf[0] = v84;
    v86 = *(v83 + 228);
    *(v83 + 228) = 0;
    *(*(this + 33) + 228) ^= 0xFFFFFF00;
    v87 = *(this + 33);
    v88 = *(v87 + 228);
    *(v87 + 228) = v86;
    if (!v84)
    {
      goto LABEL_67;
    }

    result = CAHDec::addToPatcherList(this, buf, 228, v85, 0xFFFFFFFFLL, 8, v88, 4);
    if (result)
    {
      return result;
    }

    v89 = !*&buf[0] && DWORD2(v371) == 0;
    v90 = v89 && HIDWORD(v371) == 0;
    LODWORD(v84) = !v90;
LABEL_67:
    *(*(this + 33) + 408) = 0;
    v91 = *(this + 33);
    v92 = *(v91 + 408);
    *(v91 + 408) = 0;
    *(*(this + 33) + 408) ^= 0x3FFu;
    v93 = *(this + 33);
    v94 = *(v93 + 408);
    *(v93 + 408) = v92;
    if (v84)
    {
      result = CAHDec::addToPatcherList(this, buf, 408, v85, 0x3FFFFFFFFFFLL, 32, v94, 4);
      if (result)
      {
        return result;
      }
    }
  }

  *(*(this + 33) + 280) = 0;
  v95 = *(this + 33);
  v96 = *(v95 + 280);
  *(v95 + 280) = 0;
  *(*(this + 33) + 280) ^= 0xFFFFFF00;
  v97 = *(this + 33);
  v98 = *(v97 + 280);
  *(v97 + 280) = v96;
  if (*(this + 278) || *(this + 594) || *(this + 595))
  {
    result = CAHDec::addToPatcherList(this, this + 278, 280, 0, 0xFFFFFFFFLL, 8, v98, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 460) = 0;
  v99 = *(this + 33);
  v100 = *(v99 + 460);
  *(v99 + 460) = 0;
  *(*(this + 33) + 460) ^= 0x3FFu;
  v101 = *(this + 33);
  v102 = *(v101 + 460);
  *(v101 + 460) = v100;
  if (*(this + 278) || *(this + 594) || *(this + 595))
  {
    result = CAHDec::addToPatcherList(this, this + 278, 460, 0, 0x3FFFFFFFFFFLL, 32, v102, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 232) = 0;
  v103 = *(this + 33);
  v104 = *(v103 + 232);
  *(v103 + 232) = 0;
  *(*(this + 33) + 232) ^= 0xFFFFFF00;
  v105 = *(this + 33);
  v106 = *(v105 + 232);
  *(v105 + 232) = v104;
  if (*(this + 234) || *(this + 506) || *(this + 507))
  {
    result = CAHDec::addToPatcherList(this, this + 234, 232, 0, 0xFFFFFFFFLL, 8, v106, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 412) = 0;
  v107 = *(this + 33);
  v108 = *(v107 + 412);
  *(v107 + 412) = 0;
  *(*(this + 33) + 412) ^= 0x3FFu;
  v109 = *(this + 33);
  v110 = *(v109 + 412);
  *(v109 + 412) = v108;
  if (*(this + 234) || *(this + 506) || *(this + 507))
  {
    result = CAHDec::addToPatcherList(this, this + 234, 412, 0, 0x3FFFFFFFFFFLL, 32, v110, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 236) = 0;
  v111 = *(this + 33);
  v112 = *(v111 + 236);
  *(v111 + 236) = 0;
  *(*(this + 33) + 236) ^= 0xFFFFFF00;
  v113 = *(this + 33);
  v114 = *(v113 + 236);
  *(v113 + 236) = v112;
  if (*(this + 256) || *(this + 550) || *(this + 551))
  {
    result = CAHDec::addToPatcherList(this, this + 256, 236, 0, 0xFFFFFFFFLL, 8, v114, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 416) = 0;
  v115 = *(this + 33);
  v116 = *(v115 + 416);
  *(v115 + 416) = 0;
  *(*(this + 33) + 416) ^= 0x3FFu;
  v117 = *(this + 33);
  v118 = *(v117 + 416);
  *(v117 + 416) = v116;
  if (*(this + 256) || *(this + 550) || *(this + 551))
  {
    result = CAHDec::addToPatcherList(this, this + 256, 416, 0, 0x3FFFFFFFFFFLL, 32, v118, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 240) = 0;
  *(*(this + 33) + 420) = 0;
  *(*(this + 33) + 244) = 0;
  v119 = *(this + 33);
  v120 = *(v119 + 244);
  *(v119 + 244) = 0;
  *(*(this + 33) + 244) ^= 0xFFFFFF00;
  v121 = *(this + 33);
  v122 = *(v121 + 244);
  *(v121 + 244) = v120;
  if (*(this + 300) || *(this + 638) || *(this + 639))
  {
    result = CAHDec::addToPatcherList(this, this + 300, 244, 0, 0xFFFFFFFFLL, 8, v122, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 424) = 0;
  v123 = *(this + 33);
  v124 = *(v123 + 424);
  *(v123 + 424) = 0;
  *(*(this + 33) + 424) ^= 0x3FFu;
  v125 = *(this + 33);
  v126 = *(v125 + 424);
  *(v125 + 424) = v124;
  if (*(this + 300) || *(this + 638) || *(this + 639))
  {
    result = CAHDec::addToPatcherList(this, this + 300, 424, 0, 0x3FFFFFFFFFFLL, 32, v126, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 248) = 0;
  v127 = *(this + 33);
  v128 = *(v127 + 248);
  *(v127 + 248) = 0;
  *(*(this + 33) + 248) ^= 0xFFFFFF00;
  v129 = *(this + 33);
  v130 = *(v129 + 248);
  *(v129 + 248) = v128;
  if (*(this + 322) || *(this + 682) || *(this + 683))
  {
    result = CAHDec::addToPatcherList(this, this + 322, 248, 0, 0xFFFFFFFFLL, 8, v130, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 428) = 0;
  v131 = *(this + 33);
  v132 = *(v131 + 428);
  *(v131 + 428) = 0;
  *(*(this + 33) + 428) ^= 0x3FFu;
  v133 = *(this + 33);
  v134 = *(v133 + 428);
  *(v133 + 428) = v132;
  if (*(this + 322) || *(this + 682) || *(this + 683))
  {
    result = CAHDec::addToPatcherList(this, this + 322, 428, 0, 0x3FFFFFFFFFFLL, 32, v134, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 252) = 0;
  *(*(this + 33) + 432) = 0;
  v135 = *(this + 33);
  v136 = *(v135 + 252);
  *(v135 + 252) = 0;
  *(*(this + 33) + 252) ^= 0xFFFFFF00;
  v137 = *(this + 33);
  v138 = *(v137 + 252);
  *(v137 + 252) = v136;
  if (*(this + 344) || *(this + 726) || *(this + 727))
  {
    result = CAHDec::addToPatcherList(this, this + 344, 252, 0, 0xFFFFFFFFLL, 8, v138, 4);
    if (result)
    {
      return result;
    }
  }

  v139 = *(this + 33);
  v140 = *(v139 + 432);
  *(v139 + 432) = 0;
  *(*(this + 33) + 432) ^= 0x3FFu;
  v141 = *(this + 33);
  v142 = *(v141 + 432);
  *(v141 + 432) = v140;
  if (*(this + 344) || *(this + 726) || *(this + 727))
  {
    result = CAHDec::addToPatcherList(this, this + 344, 432, 0, 0x3FFFFFFFFFFLL, 32, v142, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 256) = 0;
  v143 = *(this + 33);
  v144 = *(v143 + 256);
  *(v143 + 256) = 0;
  *(*(this + 33) + 256) ^= 0xFFFFFF00;
  v145 = *(this + 33);
  v146 = *(v145 + 256);
  *(v145 + 256) = v144;
  if (*(this + 366) || *(this + 770) || *(this + 771))
  {
    result = CAHDec::addToPatcherList(this, this + 366, 256, 0, 0xFFFFFFFFLL, 8, v146, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 436) = 0;
  v147 = *(this + 33);
  v148 = *(v147 + 436);
  *(v147 + 436) = 0;
  *(*(this + 33) + 436) ^= 0x3FFu;
  v149 = *(this + 33);
  v150 = *(v149 + 436);
  *(v149 + 436) = v148;
  if (*(this + 366) || *(this + 770) || *(this + 771))
  {
    result = CAHDec::addToPatcherList(this, this + 366, 436, 0, 0x3FFFFFFFFFFLL, 32, v150, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 260) = 0;
  v151 = *(this + 33);
  v152 = *(v151 + 260);
  *(v151 + 260) = 0;
  *(*(this + 33) + 260) ^= 0xFFFFFF00;
  v153 = *(this + 33);
  v154 = *(v153 + 260);
  *(v153 + 260) = v152;
  v155 = (*(this + 32) + 176 * *(*(this + 32) + 17808) + 2960);
  if (*v155 || *(*(this + 32) + 176 * *(*(this + 32) + 17808) + 3112) || *(*(this + 32) + 176 * *(*(this + 32) + 17808) + 3116))
  {
    result = CAHDec::addToPatcherList(this, v155, 260, 0, 0xFFFFFFFFLL, 8, v154, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 440) = 0;
  v156 = *(this + 33);
  v157 = *(v156 + 440);
  *(v156 + 440) = 0;
  *(*(this + 33) + 440) ^= 0x3FFu;
  v158 = *(this + 33);
  v159 = *(v158 + 440);
  *(v158 + 440) = v157;
  v160 = (*(this + 32) + 176 * *(*(this + 32) + 17808) + 2960);
  if (*v160 || *(*(this + 32) + 176 * *(*(this + 32) + 17808) + 3112) || *(*(this + 32) + 176 * *(*(this + 32) + 17808) + 3116))
  {
    result = CAHDec::addToPatcherList(this, v160, 440, 0, 0x3FFFFFFFFFFLL, 32, v159, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 264) = 0;
  v161 = *(this + 33);
  v162 = *(v161 + 264);
  *(v161 + 264) = 0;
  *(*(this + 33) + 264) ^= 0xFFFFFF00;
  v163 = *(this + 33);
  v164 = *(v163 + 264);
  *(v163 + 264) = v162;
  v165 = (*(this + 32) + 176 * *(*(this + 32) + 5964) + 3664);
  if (*v165 || *(*(this + 32) + 176 * *(*(this + 32) + 5964) + 3816) || *(*(this + 32) + 176 * *(*(this + 32) + 5964) + 3820))
  {
    result = CAHDec::addToPatcherList(this, v165, 264, 0, 0xFFFFFFFFLL, 8, v164, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 444) = 0;
  v166 = *(this + 33);
  v167 = *(v166 + 444);
  *(v166 + 444) = 0;
  *(*(this + 33) + 444) ^= 0x3FFu;
  v168 = *(this + 33);
  v169 = *(v168 + 444);
  *(v168 + 444) = v167;
  v170 = (*(this + 32) + 176 * *(*(this + 32) + 5964) + 3664);
  if (*v170 || *(*(this + 32) + 176 * *(*(this + 32) + 5964) + 3816) || *(*(this + 32) + 176 * *(*(this + 32) + 5964) + 3820))
  {
    result = CAHDec::addToPatcherList(this, v170, 444, 0, 0x3FFFFFFFFFFLL, 32, v169, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 268) = 0;
  v171 = *(this + 33);
  v172 = *(v171 + 268);
  *(v171 + 268) = 0;
  *(*(this + 33) + 268) ^= 0xFFFFFF00;
  v173 = *(this + 33);
  v174 = *(v173 + 268);
  *(v173 + 268) = v172;
  v175 = (*(this + 32) + 176 * *(*(this + 32) + 5960) + 3664);
  if (*v175 || *(*(this + 32) + 176 * *(*(this + 32) + 5960) + 3816) || *(*(this + 32) + 176 * *(*(this + 32) + 5960) + 3820))
  {
    result = CAHDec::addToPatcherList(this, v175, 268, 0, 0xFFFFFFFFLL, 8, v174, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 448) = 0;
  v176 = *(this + 33);
  v177 = *(v176 + 448);
  *(v176 + 448) = 0;
  *(*(this + 33) + 448) ^= 0x3FFu;
  v178 = *(this + 33);
  v179 = *(v178 + 448);
  *(v178 + 448) = v177;
  v180 = (*(this + 32) + 176 * *(*(this + 32) + 5960) + 3664);
  if (*v180 || *(*(this + 32) + 176 * *(*(this + 32) + 5960) + 3816) || *(*(this + 32) + 176 * *(*(this + 32) + 5960) + 3820))
  {
    result = CAHDec::addToPatcherList(this, v180, 448, 0, 0x3FFFFFFFFFFLL, 32, v179, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 272) = 0;
  v181 = *(this + 33);
  v182 = *(v181 + 272);
  *(v181 + 272) = 0;
  *(*(this + 33) + 272) ^= 0xFFFFFF00;
  v183 = *(this + 33);
  v184 = *(v183 + 272);
  *(v183 + 272) = v182;
  v185 = (*(this + 32) + 176 * *(*(this + 32) + 5956) + 5248);
  if (*v185 || *(*(this + 32) + 176 * *(*(this + 32) + 5956) + 5400) || *(*(this + 32) + 176 * *(*(this + 32) + 5956) + 5404))
  {
    result = CAHDec::addToPatcherList(this, v185, 272, 0, 0xFFFFFFFFLL, 8, v184, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 452) = 0;
  v186 = *(this + 33);
  v187 = *(v186 + 452);
  *(v186 + 452) = 0;
  *(*(this + 33) + 452) ^= 0x3FFu;
  v188 = *(this + 33);
  v189 = *(v188 + 452);
  *(v188 + 452) = v187;
  v190 = (*(this + 32) + 176 * *(*(this + 32) + 5956) + 5248);
  if (*v190 || *(*(this + 32) + 176 * *(*(this + 32) + 5956) + 5400) || *(*(this + 32) + 176 * *(*(this + 32) + 5956) + 5404))
  {
    result = CAHDec::addToPatcherList(this, v190, 452, 0, 0x3FFFFFFFFFFLL, 32, v189, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 276) = 0;
  v191 = *(this + 33);
  v192 = *(v191 + 276);
  *(v191 + 276) = 0;
  *(*(this + 33) + 276) ^= 0xFFFFFF00;
  v193 = *(this + 33);
  v194 = *(v193 + 276);
  *(v193 + 276) = v192;
  v195 = (*(this + 32) + 176 * *(*(this + 32) + 5952) + 5248);
  if (*v195 || *(*(this + 32) + 176 * *(*(this + 32) + 5952) + 5400) || *(*(this + 32) + 176 * *(*(this + 32) + 5952) + 5404))
  {
    result = CAHDec::addToPatcherList(this, v195, 276, 0, 0xFFFFFFFFLL, 8, v194, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 456) = 0;
  v196 = *(this + 33);
  v197 = *(v196 + 456);
  *(v196 + 456) = 0;
  *(*(this + 33) + 456) ^= 0x3FFu;
  v198 = *(this + 33);
  v199 = *(v198 + 456);
  *(v198 + 456) = v197;
  v200 = (*(this + 32) + 176 * *(*(this + 32) + 5952) + 5248);
  if (*v200 || *(*(this + 32) + 176 * *(*(this + 32) + 5952) + 5400) || *(*(this + 32) + 176 * *(*(this + 32) + 5952) + 5404))
  {
    result = CAHDec::addToPatcherList(this, v200, 456, 0, 0x3FFFFFFFFFFLL, 32, v199, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 284) = 0;
  *(*(this + 33) + 464) = 0;
  *(*(this + 33) + 288) = 0;
  *(*(this + 33) + 468) = 0;
  *(*(this + 33) + 292) = 0;
  *(*(this + 33) + 472) = 0;
  *(*(this + 33) + 296) = 0;
  *(*(this + 33) + 476) = 0;
  v201 = *(this + 33);
  v202 = *(v201 + 288);
  *(v201 + 288) = 0;
  *(*(this + 33) + 288) ^= 0xFFFFFF80;
  v203 = *(this + 33);
  v204 = *(v203 + 288);
  *(v203 + 288) = v202;
  v205 = *(*(this + 32) + 376 * v360 + 5976);
  if (*v205 || *(v205 + 152) || *(v205 + 156))
  {
    result = CAHDec::addToPatcherList(this, v205, 288, *(v205 + 52), 0xFFFFFFFFLL, 7, v204, 4);
    if (result)
    {
      return result;
    }
  }

  v206 = *(this + 33);
  v207 = *(v206 + 468);
  *(v206 + 468) = 0;
  *(*(this + 33) + 468) ^= 0x3FFu;
  v208 = *(this + 33);
  v209 = *(v208 + 468);
  *(v208 + 468) = v207;
  v210 = *(*(this + 32) + 376 * v360 + 5976);
  if (*v210 || *(v210 + 152) || *(v210 + 156))
  {
    result = CAHDec::addToPatcherList(this, v210, 468, *(v210 + 52), 0x3FFFFFFFFFFLL, 32, v209, 4);
    if (result)
    {
      return result;
    }
  }

  v211 = *(this + 33);
  v212 = *(v211 + 296);
  *(v211 + 296) = 0;
  *(*(this + 33) + 296) ^= 0xFFFFFF80;
  v213 = *(this + 33);
  v214 = *(v213 + 296);
  *(v213 + 296) = v212;
  v215 = *(*(this + 32) + 376 * v360 + 5976);
  if (*v215 || *(v215 + 152) || *(v215 + 156))
  {
    result = CAHDec::addToPatcherList(this, v215, 296, *(v215 + 56), 0xFFFFFFFFLL, 7, v214, 4);
    if (result)
    {
      return result;
    }
  }

  v216 = *(this + 33);
  v217 = *(v216 + 476);
  *(v216 + 476) = 0;
  *(*(this + 33) + 476) ^= 0x3FFu;
  v218 = *(this + 33);
  v219 = *(v218 + 476);
  *(v218 + 476) = v217;
  v220 = *(this + 32);
  v221 = *(v220 + 376 * v360 + 5976);
  if (*v221 || *(v221 + 152) || *(v221 + 156))
  {
    result = CAHDec::addToPatcherList(this, v221, 476, *(v221 + 56), 0x3FFFFFFFFFFLL, 32, v219, 4);
    if (result)
    {
      return result;
    }

    v220 = *(this + 32);
  }

  v222 = *(v220 + 2648);
  v223 = *(this + 33);
  v224 = *(v223 + 284);
  *(v223 + 284) = 0;
  *(*(this + 33) + 284) ^= 0xFFFFFF80;
  v225 = *(this + 33);
  v226 = *(v225 + 284);
  *(v225 + 284) = v224;
  v227 = *(this + 32) + 5968;
  if (v222 != 1)
  {
    v246 = v227 + 376 * v360;
    v248 = *(v246 + 24);
    v247 = v246 + 24;
    if (v248 || *(v247 + 152) || *(v247 + 156))
    {
      result = CAHDec::addToPatcherList(this, v247, 284, 0, 0xFFFFFFFFLL, 7, v226, 4);
      if (result)
      {
        return result;
      }
    }

    v249 = *(this + 33);
    v250 = *(v249 + 464);
    *(v249 + 464) = 0;
    *(*(this + 33) + 464) ^= 0x3FFu;
    v251 = *(this + 33);
    v252 = *(v251 + 464);
    *(v251 + 464) = v250;
    v253 = (*(this + 32) + 376 * v360 + 5992);
    if (*v253 || *(*(this + 32) + 376 * v360 + 6144) || *(*(this + 32) + 376 * v360 + 6148))
    {
      result = CAHDec::addToPatcherList(this, v253, 464, 0, 0x3FFFFFFFFFFLL, 32, v252, 4);
      if (result)
      {
        return result;
      }
    }

    v254 = *(this + 33);
    v255 = *(v254 + 292);
    *(v254 + 292) = 0;
    *(*(this + 33) + 292) ^= 0xFFFFFF80;
    v256 = *(this + 33);
    v257 = *(v256 + 292);
    *(v256 + 292) = v255;
    v258 = (*(this + 32) + 376 * v360 + 6168);
    if (*v258 || *(*(this + 32) + 376 * v360 + 6320) || *(*(this + 32) + 376 * v360 + 6324))
    {
      result = CAHDec::addToPatcherList(this, v258, 292, 0, 0xFFFFFFFFLL, 7, v257, 4);
      if (result)
      {
        return result;
      }
    }

    v259 = *(this + 33);
    v260 = *(v259 + 472);
    *(v259 + 472) = 0;
    *(*(this + 33) + 472) ^= 0x3FFu;
    v261 = *(this + 33);
    v242 = *(v261 + 472);
    *(v261 + 472) = v260;
    v243 = *(this + 32) + 376 * v360 + 6168;
    if (*v243 || *(*(this + 32) + 376 * v360 + 6320) || *(*(this + 32) + 376 * v360 + 6324))
    {
      v245 = this;
      v244 = 0;
      goto LABEL_210;
    }

LABEL_211:
    if (!v361)
    {
      v262 = 0;
      v263 = 17664;
      do
      {
        v264 = *(*(*(this + 32) + v263) + 40);
        *(*(this + 33) + v262 + 312) = 0;
        *(*(this + 33) + v262 + 480) = 0;
        *(*(this + 33) + v262 + 324) = 0;
        *(*(this + 33) + v262 + 492) = 0;
        *(*(this + 33) + v262 + 336) = 0;
        *(*(this + 33) + v262 + 504) = 0;
        *(*(this + 33) + v262 + 348) = 0;
        *(*(this + 33) + v262 + 516) = 0;
        v265 = *(this + 33) + v262;
        v266 = *(v265 + 324);
        *(v265 + 324) = 0;
        *(*(this + 33) + v262 + 324) ^= 0xFFFFFF80;
        v267 = *(this + 33) + v262;
        v268 = *(v267 + 324);
        *(v267 + 324) = v266;
        v269 = *(v264 + 8);
        if (*v269 || *(v269 + 152) || *(v269 + 156))
        {
          result = CAHDec::addToPatcherList(this, v269, v262 + 324, *(v269 + 52), 0xFFFFFFFFLL, 7, v268, 4);
          if (result)
          {
            return result;
          }
        }

        v270 = *(this + 33) + v262;
        v271 = *(v270 + 492);
        *(v270 + 492) = 0;
        *(*(this + 33) + v262 + 492) ^= 0x3FFu;
        v272 = *(this + 33) + v262;
        v273 = *(v272 + 492);
        *(v272 + 492) = v271;
        v274 = *(v264 + 8);
        if (*v274 || *(v274 + 152) || *(v274 + 156))
        {
          result = CAHDec::addToPatcherList(this, v274, v262 + 492, *(v274 + 52), 0x3FFFFFFFFFFLL, 32, v273, 4);
          if (result)
          {
            return result;
          }
        }

        v275 = *(this + 33) + v262;
        v276 = *(v275 + 348);
        *(v275 + 348) = 0;
        *(*(this + 33) + v262 + 348) ^= 0xFFFFFF80;
        v277 = *(this + 33) + v262;
        v278 = *(v277 + 348);
        *(v277 + 348) = v276;
        v279 = *(v264 + 8);
        if (*v279 || *(v279 + 152) || *(v279 + 156))
        {
          result = CAHDec::addToPatcherList(this, v279, v262 + 348, *(v279 + 56), 0xFFFFFFFFLL, 7, v278, 4);
          if (result)
          {
            return result;
          }
        }

        v280 = *(this + 33) + v262;
        v281 = *(v280 + 516);
        *(v280 + 516) = 0;
        *(*(this + 33) + v262 + 516) ^= 0x3FFu;
        v282 = *(this + 33) + v262;
        v283 = *(v282 + 516);
        *(v282 + 516) = v281;
        v284 = *(v264 + 8);
        if (*v284 || *(v284 + 152) || *(v284 + 156))
        {
          result = CAHDec::addToPatcherList(this, v284, v262 + 516, *(v284 + 56), 0x3FFFFFFFFFFLL, 32, v283, 4);
          if (result)
          {
            return result;
          }
        }

        v285 = *(*(this + 32) + 2648);
        v286 = *(this + 33) + v262;
        v287 = *(v286 + 312);
        *(v286 + 312) = 0;
        *(*(this + 33) + v262 + 312) ^= 0xFFFFFF80;
        v288 = *(this + 33) + v262;
        v289 = *(v288 + 312);
        *(v288 + 312) = v287;
        if (v285 == 1)
        {
          v290 = *(v264 + 8);
          if (*v290 || *(v290 + 152) || *(v290 + 156))
          {
            result = CAHDec::addToPatcherList(this, v290, v262 + 312, *(v290 + 64), 0xFFFFFFFFLL, 7, v289, 4);
            if (result)
            {
              return result;
            }
          }

          v291 = *(this + 33) + v262;
          v292 = *(v291 + 480);
          *(v291 + 480) = 0;
          *(*(this + 33) + v262 + 480) ^= 0x3FFu;
          v293 = *(this + 33) + v262;
          v294 = *(v293 + 480);
          *(v293 + 480) = v292;
          v295 = *(v264 + 8);
          if (*v295 || *(v295 + 152) || *(v295 + 156))
          {
            result = CAHDec::addToPatcherList(this, v295, v262 | 0x1E0, *(v295 + 64), 0x3FFFFFFFFFFLL, 32, v294, 4);
            if (result)
            {
              return result;
            }
          }

          v296 = *(this + 33) + v262;
          v297 = *(v296 + 336);
          *(v296 + 336) = 0;
          *(*(this + 33) + v262 + 336) ^= 0xFFFFFF80;
          v298 = *(this + 33) + v262;
          v299 = *(v298 + 336);
          *(v298 + 336) = v297;
          v300 = *(v264 + 8);
          if (*v300 || *(v300 + 152) || *(v300 + 156))
          {
            result = CAHDec::addToPatcherList(this, v300, v262 | 0x150, *(v300 + 68), 0xFFFFFFFFLL, 7, v299, 4);
            if (result)
            {
              return result;
            }
          }

          v301 = *(this + 33) + v262;
          v302 = *(v301 + 504);
          *(v301 + 504) = 0;
          *(*(this + 33) + v262 + 504) ^= 0x3FFu;
          v303 = *(this + 33) + v262;
          v304 = *(v303 + 504);
          *(v303 + 504) = v302;
          v305 = *(v264 + 8);
          if (*v305 || *(v305 + 152) || *(v305 + 156))
          {
            v306 = *(v305 + 68);
            v307 = v262 + 504;
            v308 = this;
            goto LABEL_262;
          }
        }

        else
        {
          if (*(v264 + 24) || *(v264 + 176) || *(v264 + 180))
          {
            result = CAHDec::addToPatcherList(this, (v264 + 24), v262 + 312, 0, 0xFFFFFFFFLL, 7, v289, 4);
            if (result)
            {
              return result;
            }
          }

          v309 = *(this + 33) + v262;
          v310 = *(v309 + 480);
          *(v309 + 480) = 0;
          *(*(this + 33) + v262 + 480) ^= 0x3FFu;
          v311 = *(this + 33) + v262;
          v312 = *(v311 + 480);
          *(v311 + 480) = v310;
          if (*(v264 + 24) || *(v264 + 176) || *(v264 + 180))
          {
            result = CAHDec::addToPatcherList(this, (v264 + 24), v262 | 0x1E0, 0, 0x3FFFFFFFFFFLL, 32, v312, 4);
            if (result)
            {
              return result;
            }
          }

          v313 = *(this + 33) + v262;
          v314 = *(v313 + 336);
          *(v313 + 336) = 0;
          *(*(this + 33) + v262 + 336) ^= 0xFFFFFF80;
          v315 = *(this + 33) + v262;
          v316 = *(v315 + 336);
          *(v315 + 336) = v314;
          if (*(v264 + 200) || *(v264 + 352) || *(v264 + 356))
          {
            result = CAHDec::addToPatcherList(this, (v264 + 200), v262 | 0x150, 0, 0xFFFFFFFFLL, 7, v316, 4);
            if (result)
            {
              return result;
            }
          }

          v317 = *(this + 33) + v262;
          v318 = *(v317 + 504);
          *(v317 + 504) = 0;
          *(*(this + 33) + v262 + 504) ^= 0x3FFu;
          v319 = *(this + 33) + v262;
          v304 = *(v319 + 504);
          *(v319 + 504) = v318;
          if (*(v264 + 200) || *(v264 + 352) || *(v264 + 356))
          {
            v307 = v262 + 504;
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
    *(*(this + 33) + 360) = 0;
    *(*(this + 33) + 528) = 0;
    *(*(this + 33) + 364) = 0;
    *(*(this + 33) + 532) = 0;
    *(*(this + 33) + 368) = 0;
    *(*(this + 33) + 372) = 0;
    if (*(*(this + 32) + 2644))
    {
      v321 = *(this + 33);
      v322 = *(v321 + 360);
      *(v321 + 360) = 0;
      *(*(this + 33) + 360) ^= 0xFFFFFFC0;
      v323 = *(this + 33);
      v324 = *(v323 + 360);
      *(v323 + 360) = v322;
      v325 = *(*(this + 32) + 12008);
      if (*v325 || *(v325 + 152) || *(v325 + 156))
      {
        result = CAHDec::addToPatcherList(this, v325, 360, *(v325 + 52), 0xFFFFFFFFLL, 6, v324, 4);
        if (result)
        {
          return result;
        }
      }

      v326 = *(this + 33);
      v327 = *(v326 + 528);
      *(v326 + 528) = 0;
      *(*(this + 33) + 528) ^= 0x3FFu;
      v328 = *(this + 33);
      v329 = *(v328 + 528);
      *(v328 + 528) = v327;
      v330 = *(*(this + 32) + 12008);
      if (*v330 || *(v330 + 152) || *(v330 + 156))
      {
        result = CAHDec::addToPatcherList(this, v330, 528, *(v330 + 52), 0x3FFFFFFFFFFLL, 32, v329, 4);
        if (result)
        {
          return result;
        }
      }

      v331 = *(this + 33);
      v332 = *(v331 + 364);
      *(v331 + 364) = 0;
      *(*(this + 33) + 364) ^= 0xFFFFFFC0;
      v333 = *(this + 33);
      v334 = *(v333 + 364);
      *(v333 + 364) = v332;
      v335 = *(*(this + 32) + 12008);
      if (*v335 || *(v335 + 152) || *(v335 + 156))
      {
        result = CAHDec::addToPatcherList(this, v335, 364, *(v335 + 56), 0xFFFFFFFFLL, 6, v334, 4);
        if (result)
        {
          return result;
        }
      }

      v336 = *(this + 33);
      v337 = *(v336 + 532);
      *(v336 + 532) = 0;
      *(*(this + 33) + 532) ^= 0x3FFu;
      v338 = *(this + 33);
      v339 = *(v338 + 532);
      *(v338 + 532) = v337;
      v340 = *(this + 32);
      v341 = *(v340 + 12008);
      if (*v341 || *(v341 + 152) || *(v341 + 156))
      {
        result = CAHDec::addToPatcherList(this, v341, 532, *(v341 + 56), 0x3FFFFFFFFFFLL, 32, v339, 4);
        if (result)
        {
          return result;
        }

        v340 = *(this + 32);
      }

      if (*(v340 + 8) == 1)
      {
        *(*(this + 33) + 368) = *(*(this + 33) + 368) & 0xFFFC003F | (((*(*(v340 + 12008) + 76) >> 6) & 0xFFF) << 6);
        v342 = (*(*(this + 32) + 12008) + 80);
      }

      else
      {
        if (CAHDecTansyLgh::getSWRStride(this, *(v3 + 148) + 1, *(v369 + 105) - 8, *(v369 + 105) - 8, v320))
        {
          return 0xFFFFFFFFLL;
        }

        *(*(this + 33) + 368) = *(*(this + 33) + 368) & 0xFFFC003F | (((*(this + 783) >> 6) & 0xFFF) << 6);
        v342 = (this + 3136);
      }

      *(*(this + 33) + 372) = *(*(this + 33) + 372) & 0xFFF8003F | (((*v342 >> 6) & 0x1FFF) << 6);
    }

    if (v363 < 2)
    {
      v343 = *(this + 33);
      *(v343 + 536) = 65537;
      *(v343 + 540) = 0;
      *(v343 + 542) = *(v369 + 108) >> 6;
      *(v343 + 670) = 0;
      *(v343 + 672) = *(v369 + 112) >> 6;
      v344 = *(this + 32);
    }

    else
    {
      v343 = *(this + 33);
      *(v343 + 536) = v368;
      v344 = *(this + 32);
      if (v365 != 31)
      {
        if (v366 <= 1)
        {
          v345 = 1;
        }

        else
        {
          v345 = v366;
        }

        v346 = (*(v344 + 17800) + 2786);
        do
        {
          if ((*v346 & 1) == 0)
          {
            *(v343 + 670 + 2 * v362) = *(v346 - 26) >> 3;
          }

          v346 += 1792;
          --v345;
        }

        while (v345);
      }

      *(v343 + 538) = v366;
      if (v367 != 31)
      {
        if (v368 <= 1)
        {
          v347 = 1;
        }

        else
        {
          v347 = v368;
        }

        v348 = *(v344 + 17800) + 2768;
        do
        {
          if ((*(v348 + 18) & 1) == 0)
          {
            *(v343 + 540 + 2 * v362) = *v348 >> 3;
          }

          v348 += 28;
          --v347;
        }

        while (v347);
      }
    }

    if (*(v344 + 2360) == 1)
    {
      *(v343 + 684) = *(v343 + 684) & 0xFFFFFFFE | *(v344 + 2508) & 1;
      if (*(v344 + 2508))
      {
        *(v343 + 692) = 0x10000000;
        *(v343 + 696) = *(v344 + 2368);
        *(v343 + 704) = 0;
        *(v343 + 700) = 0;
        *(v343 + 712) = *(v344 + 2372);
        v349 = *(v344 + 2404);
        *(v343 + 728) = *(v344 + 2388);
        *(v343 + 744) = v349;
      }

      *(*(this + 33) + 684) = *(*(this + 33) + 684) & 0xFFFFFFFD | (2 * (*(v344 + 2512) & 1));
      if (*(v344 + 2512))
      {
        *(v343 + 760) = 0;
        if (!*(v344 + 2424))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0]) = 136315138;
            *(buf + 4) = "populatePictureRegisters";
            v358 = MEMORY[0x277D86220];
            v359 = "AppleAVD: %s(): H13A descrambler is not supported\n";
            goto LABEL_334;
          }

          return 0xFFFFFFFFLL;
        }

        *(v344 + 2640) = 0;
        v350 = *(v343 + 760) & 0xF7FFFFF | ((*(v344 + 2420) & 1) << 23) | 0x20000000;
        *(v343 + 760) = v350;
        *(v343 + 760) = v350 & 0xFFC00000 | (*(v344 + 2364) == 0);
        v351 = *(v344 + 2428);
        v352 = *(v344 + 2460);
        *(v343 + 780) = *(v344 + 2444);
        *(v343 + 796) = v352;
        *(v343 + 764) = v351;
      }

      *(*(this + 33) + 684) = *(*(this + 33) + 684) & 0xFFFFFFFB | (4 * (*(v344 + 2516) & 1));
      *(*(this + 33) + 684) = *(*(this + 33) + 684) & 0xFFFFFFF7 | (8 * (*(v344 + 2520) & 1));
      *(*(this + 33) + 684) = *(*(this + 33) + 684) & 0xFFFFFFEF | (16 * (*(v344 + 2524) & 1));
      *(v343 + 920) = 0;
      if (*(v344 + 2476) == 2)
      {
        v353 = 805306368;
      }

      else
      {
        v353 = 813694976;
      }

      *(v343 + 920) = v353;
      memcpy((v343 + 924), (v344 + 2480), 4 * *(v344 + 2476));
      if (*(v344 + 2516))
      {
        *(v344 + 2516) = 0;
      }

      *(*(this + 33) + 684) = *(*(this + 33) + 684) & 0xFFFFFFDF | (32 * (*(v344 + 2632) & 1));
      if (*(v344 + 2632))
      {
        *(v343 + 812) = 0x80000000;
        v354 = ((*(v344 + 2528) & 1) << 27) | 0x80000000;
        *(v343 + 812) = v354;
        *(v343 + 812) = v354 | (((2 * *(v344 + 2528)) & 4 | (*(v344 + 2528) >> 1) & 2 | (*(v344 + 2528) >> 3) & 1) << 24);
        v355 = *(v344 + 2532);
        v356 = *(v344 + 2564);
        *(v343 + 832) = *(v344 + 2548);
        *(v343 + 848) = v356;
        *(v343 + 816) = v355;
        *(v343 + 864) = *(v344 + 2580);
        *(v343 + 872) = *(v344 + 2588);
        v357 = *(v344 + 2528);
        if ((v357 & 6) != 0 && (v357 & 8) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0]) = 136315138;
            *(buf + 4) = "populatePictureRegisters";
            v358 = MEMORY[0x277D86220];
            v359 = "AppleAVD: %s(): chip id is not used while ecid and/or board id is used\n";
LABEL_334:
            _os_log_impl(&dword_277606000, v358, OS_LOG_TYPE_DEFAULT, v359, buf, 0xCu);
            return 0xFFFFFFFFLL;
          }

          return 0xFFFFFFFFLL;
        }

        *(v343 + 880) = *(v344 + 2596);
      }

      *(*(this + 33) + 684) = *(*(this + 33) + 684) & 0xFFFFFFBF | ((*(v344 + 2636) & 1) << 6);
      if (*(v344 + 2636))
      {
        result = 0;
        *(v343 + 896) = -1879048192;
        *(v343 + 896) = ((*(v344 + 2612) & 1) << 23) | 0x90000000;
        *(v343 + 900) = *(v344 + 2616);
        *(v344 + 2640) = 1;
        return result;
      }
    }

    return 0;
  }

  v228 = *(v227 + 376 * v360 + 8);
  if (!*v228 && !*(v228 + 152) && !*(v228 + 156) || (result = CAHDec::addToPatcherList(this, v228, 284, *(v228 + 64), 0xFFFFFFFFLL, 7, v226, 4), !result))
  {
    if ((v229 = *(this + 33), v230 = *(v229 + 464), *(v229 + 464) = 0, *(*(this + 33) + 464) ^= 0x3FFu, v231 = *(this + 33), v232 = *(v231 + 464), *(v231 + 464) = v230, v233 = *(*(this + 32) + 376 * v360 + 5976), !*v233) && !*(v233 + 152) && !*(v233 + 156) || (result = CAHDec::addToPatcherList(this, v233, 464, *(v233 + 64), 0x3FFFFFFFFFFLL, 32, v232, 4), !result))
    {
      if ((v234 = *(this + 33), v235 = *(v234 + 292), *(v234 + 292) = 0, *(*(this + 33) + 292) ^= 0xFFFFFF80, v236 = *(this + 33), v237 = *(v236 + 292), *(v236 + 292) = v235, v238 = *(*(this + 32) + 376 * v360 + 5976), !*v238) && !*(v238 + 152) && !*(v238 + 156) || (result = CAHDec::addToPatcherList(this, v238, 292, *(v238 + 68), 0xFFFFFFFFLL, 7, v237, 4), !result))
      {
        v239 = *(this + 33);
        v240 = *(v239 + 472);
        *(v239 + 472) = 0;
        *(*(this + 33) + 472) ^= 0x3FFu;
        v241 = *(this + 33);
        v242 = *(v241 + 472);
        *(v241 + 472) = v240;
        v243 = *(*(this + 32) + 376 * v360 + 5976);
        if (!*v243 && !*(v243 + 152) && !*(v243 + 156))
        {
          goto LABEL_211;
        }

        v244 = *(v243 + 68);
        v245 = this;
LABEL_210:
        result = CAHDec::addToPatcherList(v245, v243, 472, v244, 0x3FFFFFFFFFFLL, 32, v242, 4);
        if (!result)
        {
          goto LABEL_211;
        }
      }
    }
  }

  return result;
}

uint64_t CAHDecTansyLgh::getSWRStride(CAHDecTansyLgh *this, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(*(this + 32) + 2644);
  *(this + 3132) = 0;
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
        *(this + 783) = (((2 * ((2863311531u * (a2 + 2)) >> 32)) & 0xFFFFFFFC) + 63) & 0xFFFFFFC0;
        v9 = (2 * ((2863311531u * (2 * a2 / a5 + 5)) >> 32)) & 0xFFFFFFF8;
LABEL_21:
        *(this + 784) = (v9 + 63) & 0xFFFFFFC0;
        return v5;
      }

      goto LABEL_15;
    }

    v5 = 0;
    *(this + 783) = (a2 + 63) & 0xFFFFFFC0;
    v10 = 2 * a2;
LABEL_19:
    v9 = v10 / a5;
    goto LABEL_21;
  }

  if (v8 == 4)
  {
    v5 = 0;
    *(this + 783) = (((2 * ((3435973837u * (a2 + 4)) >> 32)) & 0xFFFFFFF8) + 63) & 0xFFFFFFC0;
    v9 = (2 * ((3435973837u * (2 * a2 / a5 + 9)) >> 32)) & 0xFFFFFFF0;
    goto LABEL_21;
  }

  if (v8 == 8)
  {
    v5 = 0;
    *(this + 783) = (2 * a2 + 63) & 0xFFFFFFC0;
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

uint64_t CAHDecTansyLgh::populateTileRegisters(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 256);
  if (*(v2 + 2360) == 1)
  {
    *(a2 + 4) = 0;
    if (*(v2 + 2640))
    {
      if ((*(v2 + 2612) & 1) == 0)
      {
LABEL_4:
        *(a2 + 8) = 0;
        v3 = (a2 + 8);
        v4 = *(v2 + 2504);
        *v3 = v4;
        v5 = 65280;
LABEL_7:
        *v3 = v4 | *(v2 + 2504) & v5;
        return 0;
      }
    }

    else if (!*(v2 + 2420))
    {
      goto LABEL_4;
    }

    v4 = *(v2 + 2504);
    *(a2 + 8) = v4;
    v3 = (a2 + 8);
    v5 = 0x10000;
    goto LABEL_7;
  }

  return 0;
}

uint64_t CAHDecTansyLgh::populateAvdWork(CAHDecTansyLgh *this)
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
  v8 = v1 + 4012;
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
      *(v1 + 32) = 4012;
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
        v48 = 1177;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v19 = v43;
      }

      result = CAHDec::addToPatcherList(this, v18, v17 + 4030, v19, 0x3FFFFFFFFFFLL, 32, -1, 2);
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
        v48 = 1178;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v21 = v43;
      }

      result = CAHDec::addToPatcherList(this, v18, v17 + 4032, v21, 0xFFFFFFFFLL, 0, -1, 4);
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

uint64_t CAHDecTansyLgh::allocWorkBuf_SPS(CAHDecTansyLgh *this, int *a2)
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

  *(this + 776) = v13;
  *(this + 777) = ((8 << (v19 + v21)) + 127) & 0xFFFFFF80;
  v22 = ((v4 + 63) >> 6) * ((v3 + 63) >> 6);
  *(this + 781) = 576 * v22;
  if (*(*(this + 32) + 2648))
  {
LABEL_28:
    v27 = 5248;
    v28 = 4;
    do
    {
      v29 = *(this + 781);
      if (v29 && CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v27), v29, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_47;
        }

        v34 = 136315650;
        v35 = "allocWorkBuf_SPS";
        v36 = 1024;
        v37 = 1411;
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
    *(this + 785) = 24 * v22;
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
        v30 = *(this + 785);
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
    v37 = 1416;
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
      v25 = *(this + 776);
      if (v25 && CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v23 - 2816), v25, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_47;
        }

        v34 = 136315650;
        v35 = "allocWorkBuf_SPS";
        v36 = 1024;
        v37 = 1395;
        v38 = 2080;
        v39 = "HdrY";
        v32 = MEMORY[0x277D86220];
        goto LABEL_46;
      }

      v26 = *(this + 777);
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
    v37 = 1400;
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

uint64_t CAHDecTansyLgh::allocWorkBuf_PPS(CAHDecTansyLgh *this, void *a2, void *a3, void *a4)
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
    if (CAVDDecoder::allocAVDMem(v5, this + 117, v15, 7, 1, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = "allocWorkBuf_PPS";
        v25 = 1024;
        v26 = 1492;
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
    if (CAVDDecoder::allocAVDMem(v5, this + 128, ((192 << v8) + ((v12 + 7) >> 3) * 16 * v9 - 192), 7, 1, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = "allocWorkBuf_PPS";
        v25 = 1024;
        v26 = 1495;
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
    if (CAVDDecoder::allocAVDMem(v5, this + 139, v18, 7, 1, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = "allocWorkBuf_PPS";
        v25 = 1024;
        v26 = 1501;
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
    if (CAVDDecoder::allocAVDMem(v5, this + 150, (v19 * v17), 7, 1, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = "allocWorkBuf_PPS";
        v25 = 1024;
        v26 = 1507;
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
    if (CAVDDecoder::allocAVDMem(v5, this + 161, v20, 7, 1, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = "allocWorkBuf_PPS";
        v25 = 1024;
        v26 = 1515;
        v27 = 2080;
        v28 = "LfLeftInfo";
        v16 = MEMORY[0x277D86220];
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    v5 = *(this + 32);
  }

  if (CAVDDecoder::allocAVDMem(v5, this + 172, (24 * v13 + 30), 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315650;
      v24 = "allocWorkBuf_PPS";
      v25 = 1024;
      v26 = 1523;
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

  result = CAVDDecoder::allocAVDMem(*(this + 32), this + 183, v22, 7, 1, 0);
  if (result)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    v23 = 136315650;
    v24 = "allocWorkBuf_PPS";
    v25 = 1024;
    v26 = 1529;
    v27 = 2080;
    v28 = "AZLeftPix";
    v16 = MEMORY[0x277D86220];
    goto LABEL_34;
  }

  return result;
}

uint64_t CAHDecTansyLgh::freeWorkBuf_SPS(CAHDecTansyLgh *this)
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

uint64_t *CAHDecTansyLgh::freeWorkBuf_PPS(uint64_t *this, void *a2)
{
  v2 = this;
  if (this[256])
  {
    this = CAVDDecoder::deallocAVDMem(this[32], this + 256);
    v2[256] = 0;
  }

  if (v2[278])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 278);
    v2[278] = 0;
  }

  if (v2[234])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 234);
    v2[234] = 0;
  }

  if (v2[300])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 300);
    v2[300] = 0;
  }

  if (v2[322])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 322);
    v2[322] = 0;
  }

  if (v2[344])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 344);
    v2[344] = 0;
  }

  if (v2[366])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 366);
    v2[366] = 0;
  }

  return this;
}

uint64_t CAHDecTansyLgh::setVPInstrFifo(uint64_t this, int a2)
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
  *(this + 3120) = a2;
  return this;
}

void *createTansyAvxDecoder(void **a1)
{
  v2 = operator new(0x1060uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecTansyAvx::CAHDecTansyAvx(v2, a1);
  }

  return v3;
}

uint64_t CAHDecTansyAvx::CAHDecTansyAvx(uint64_t a1, void **a2)
{
  CAHDec::CAHDec(a1);
  *v4 = &unk_288667B88;
  *(v4 + 256) = a2;
  *(v4 + 456) = 198144;
  *(v4 + 8) = 1536;
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

void CAHDecTansyAvx::~CAHDecTansyAvx(CAHDecTansyAvx *this)
{
  *this = &unk_288667B88;
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
  CAHDecTansyAvx::~CAHDecTansyAvx(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecTansyAvx::init(CAHDecTansyAvx *this)
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
      v30 = 212;
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
    v30 = 227;
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

uint64_t CAHDecTansyAvx::startPicture(CAHDecTansyAvx *this, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *(this + 13) = 0;
  v3 = *(this + 34);
  *(this + 33) = v3;
  if (v3)
  {
    bzero(v3, 0x30600uLL);
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

uint64_t CAHDecTansyAvx::DecodePicture(CAHDecTansyAvx *this, uint64_t a2)
{
  if (CAHDecTansyAvx::startPicture(this, a2))
  {
    return 1;
  }

  (*(*this + 40))(this);
  (*(*this + 56))(this);
  if ((*(*this + 64))(this) || CAHDecTansyAvx::populateAddressRegisters(this) || CAHDecTansyAvx::populateDecryptionRegisters(this))
  {
    return 4;
  }

  CAHDecTansyAvx::populateTiles(this);
  CAHDecTansyAvx::populateAvxVPDependency(this);
  (*(*this + 96))(this, a2);
  (*(*this + 48))(this, *(this + 114));
  return 0;
}

uint64_t CAHDecTansyAvx::populateAddressRegisters(CAHDecTansyAvx *this)
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

    *(*(this + 33) + 624) = 0;
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

uint64_t CAHDecTansyAvx::populateDecryptionRegisters(CAHDecTansyAvx *this)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(this + 32);
  if (*(v1 + 2360) != 1)
  {
    return 0;
  }

  v3 = *(this + 33);
  *(v3 + 1276) = *(v3 + 1276) & 0xFFFFFFFE | *(v1 + 2508) & 1;
  if (*(v1 + 2508))
  {
    *(v3 + 1288) = 0x10000000;
    *(v3 + 1292) = *(v1 + 2368);
    *(v3 + 1304) = 0;
    *(v3 + 1296) = 0;
    *(v3 + 1308) = *(v1 + 2372);
    v4 = *(v1 + 2404);
    *(v3 + 1324) = *(v1 + 2388);
    *(v3 + 1340) = v4;
  }

  *(*(this + 33) + 1276) = *(*(this + 33) + 1276) & 0xFFFFFFFD | (2 * (*(v1 + 2512) & 1));
  if (!*(v1 + 2512))
  {
LABEL_7:
    *(*(this + 33) + 1276) = *(*(this + 33) + 1276) & 0xFFFFFFFB | (4 * (*(v1 + 2516) & 1));
    *(*(this + 33) + 1276) = *(*(this + 33) + 1276) & 0xFFFFFFF7 | (8 * (*(v1 + 2520) & 1));
    *(*(this + 33) + 1276) = *(*(this + 33) + 1276) & 0xFFFFFFEF | (16 * (*(v1 + 2524) & 1));
    *(v3 + 1516) = 0;
    if (*(v1 + 2476) == 2)
    {
      v8 = 805306368;
    }

    else
    {
      v8 = 813694976;
    }

    *(v3 + 1516) = v8;
    memcpy((v3 + 1520), (v1 + 2480), 4 * *(v1 + 2476));
    if (*(v1 + 2516))
    {
      *(v1 + 2516) = 0;
    }

    *(*(this + 33) + 1276) = *(*(this + 33) + 1276) & 0xFFFEFFFF | ((*(v1 + 2632) & 1) << 16);
    if (*(v1 + 2632))
    {
      *(v3 + 1408) = 0x80000000;
      v9 = ((*(v1 + 2528) & 1) << 27) | 0x80000000;
      *(v3 + 1408) = v9;
      *(v3 + 1408) = v9 | (((2 * *(v1 + 2528)) & 4 | (*(v1 + 2528) >> 1) & 2 | (*(v1 + 2528) >> 3) & 1) << 24);
      v10 = *(v1 + 2532);
      v11 = *(v1 + 2564);
      *(v3 + 1428) = *(v1 + 2548);
      *(v3 + 1444) = v11;
      *(v3 + 1412) = v10;
      *(v3 + 1460) = *(v1 + 2580);
      *(v3 + 1468) = *(v1 + 2588);
      v12 = *(v1 + 2528);
      if ((v12 & 6) != 0 && (v12 & 8) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315138;
          v17 = "populateDecryptionRegisters";
          v13 = MEMORY[0x277D86220];
          v14 = "AppleAVD: %s(): chip id is not used while ecid and/or board id is used\n";
LABEL_23:
          _os_log_impl(&dword_277606000, v13, OS_LOG_TYPE_DEFAULT, v14, &v16, 0xCu);
          return 0xFFFFFFFFLL;
        }

        return 0xFFFFFFFFLL;
      }

      *(v3 + 1476) = *(v1 + 2596);
    }

    *(*(this + 33) + 1276) = *(*(this + 33) + 1276) & 0xFFFDFFFF | ((*(v1 + 2636) & 1) << 17);
    if (*(v1 + 2636))
    {
      result = 0;
      *(v3 + 1492) = -1879048192;
      *(v3 + 1492) = ((*(v1 + 2612) & 1) << 23) | 0x90000000;
      *(v3 + 1496) = *(v1 + 2616);
      *(v1 + 2640) = 1;
      return result;
    }

    return 0;
  }

  *(v3 + 1356) = 0;
  if (*(v1 + 2424))
  {
    *(v1 + 2640) = 0;
    v5 = *(v3 + 1356) & 0xF7FFFFF | ((*(v1 + 2420) & 1) << 23) | 0x20000000;
    *(v3 + 1356) = v5;
    *(v3 + 1356) = v5 & 0xFFC00000 | (*(v1 + 2364) == 0);
    v6 = *(v1 + 2428);
    v7 = *(v1 + 2444);
    *(v3 + 1392) = *(v1 + 2460);
    *(v3 + 1376) = v7;
    *(v3 + 1360) = v6;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "populateDecryptionRegisters";
    v13 = MEMORY[0x277D86220];
    v14 = "AppleAVD: %s(): H13A descrambler is not supported\n";
    goto LABEL_23;
  }

  return 0xFFFFFFFFLL;
}

uint64_t CAHDecTansyAvx::populateTiles(CAHDecTansyAvx *this)
{
  v2 = (*(*(*(this + 32) + 15112) + 140) * *(*(*(this + 32) + 15112) + 136));
  v3 = *(this + *(this + 13) + 34);
  CAHDecTansyAvx::populateClearTiles(this);
  if (v2)
  {
    v4 = 0;
    v5 = v3 + 1536;
    do
    {
      CAHDecTansyAvx::populateTileRegisters(this, v5, v4++);
      v5 += 12;
    }

    while (v2 != v4);
  }

  return 0;
}

uint64_t CAHDecTansyAvx::populateAvxVPDependency(CAVDAvxDecoder **this)
{
  if (CAVDAvxDecoder::isParallelDecode(this[32]))
  {
    v2 = 0;
  }

  else
  {
    v2 = 32;
  }

  *(this[33] + 319) = *(this[33] + 319) & 0xFFFFFFDF | v2;
  *(this[33] + 319) &= 0xFFFFF83F;
  *(this[33] + 319) &= 0xFFFF07FF;
  *(this[33] + 320) = 0;
  return 0;
}

uint64_t CAHDecTansyAvx::updateCommonRegisters(CAHDecTansyAvx *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecTansyAvx::populateSequenceRegisters(CAHDecTansyAvx *this)
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

uint64_t CAHDecTansyAvx::getUpscaleConvolveStep(CAHDecTansyAvx *this, int a2, int a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    return ((a3 / 2 + (a2 << 14)) / a3);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "int32_t CAHDecTansyAvx::getUpscaleConvolveStep(int, int)";
    v6 = 1024;
    v7 = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: invalid out_length %d\n", &v4, 0x12u);
  }

  return 0xFFFFFFFFLL;
}

uint64_t CAHDecTansyAvx::getUpscaleConvolveX0(CAHDecTansyAvx *this, int a2, int a3, int a4)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    return ((((a2 - a3) << 13) + a3 / 2) / a3 - ((a4 * a3 - (a2 << 14) + ((a4 * a3 - (a2 << 14)) >> 31)) >> 1) + 128) & 0x3FFF;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "int32_t CAHDecTansyAvx::getUpscaleConvolveX0(int, int, int32_t)";
    v7 = 1024;
    v8 = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: invalid out_length %d\n", &v5, 0x12u);
  }

  return 0xFFFFFFFFLL;
}

uint64_t CAHDecTansyAvx::populatePictureRegisters(CAHDecTansyAvx *this)
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
  UpscaleConvolveStep = CAHDecTansyAvx::getUpscaleConvolveStep(this, *(v4 + 2176), *(v4 + 2164));
  v169 = UpscaleConvolveStep;
  UpscaleConvolveX0 = CAHDecTansyAvx::getUpscaleConvolveX0(UpscaleConvolveStep, *(v4 + 2176), *(v4 + 2164), UpscaleConvolveStep);
  *(v2 + 208) = v169 & 0x3FFF | ((UpscaleConvolveX0 & 0x3FFF) << 14);
  v171 = (*(v4 + 2176) + 1) >> 1;
  v172 = (*(v4 + 2164) + 1) >> 1;
  v173 = CAHDecTansyAvx::getUpscaleConvolveStep(UpscaleConvolveX0, v171, v172);
  *(v2 + 212) = v173 & 0x3FFF | ((CAHDecTansyAvx::getUpscaleConvolveX0(v173, v171, v172, v173) & 0x3FFF) << 14);
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
        v204 = "virtual int CAHDecTansyAvx::populatePictureRegisters()";
        v205 = 1024;
        v206 = v197;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: invalid reference buffer %d\n", &v203, 0x12u);
      }
    }

    return (v202 << 31 >> 31);
  }

  return result;
}

uint64_t CAHDecTansyAvx::populateTileRegisters(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 256);
  if (*(v3 + 2360) == 1)
  {
    v4 = *(v3 + 15112);
    *(a2 + 4) = 0;
    if (*(v3 + 2640))
    {
      if ((*(v3 + 2612) & 1) == 0)
      {
LABEL_4:
        v5 = *(a2 + 8) & 0x3FFFFF | (*(v4 + 2 * a3 + 66200) << 22);
        *(a2 + 8) = v5;
        v6 = *(v4 + a3 + 74392);
        if (v6)
        {
          v6 = *(v3 + 2504);
        }

        v7 = v6 | v5 & 0xFFFFFF00;
        *(a2 + 8) = v7;
        v8 = v7 & 0xFFFF00FF | (*(v3 + 2505) << 8);
        goto LABEL_9;
      }
    }

    else if (!*(v3 + 2420))
    {
      goto LABEL_4;
    }

    v9 = *(v3 + 2504) | (*(a2 + 10) << 16);
    *(a2 + 8) = v9;
    v8 = v9 & 0xFFFEFFFF | ((HIWORD(*(v3 + 2504)) & 1) << 16);
LABEL_9:
    *(a2 + 8) = v8;
  }

  return 0;
}

uint64_t CAHDecTansyAvx::populateClearTiles(CAHDecTansyAvx *this)
{
  v2 = *(this + 32);
  v3 = *(this + 33);
  v4 = *(v2 + 1889);
  v5 = v4[34];
  *(v3 + 1004) = v4[35];
  *(v3 + 1006) = v5;
  if (CAVDAvxDecoder::isParallelDecode(v2))
  {
    v6 = -1;
  }

  else
  {
    v6 = *(*(*(this + 32) + 37616) + 3156);
  }

  v7 = *(this + 33);
  *(v7 + 1268) = v6;
  v8 = v4[35];
  if (v8)
  {
    v9 = v4 + 16485;
    v10 = (v7 + 1008);
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
    v14 = (v7 + 1138);
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

uint64_t CAHDecTansyAvx::populateAvdWork(CAHDecTansyAvx *this)
{
  v1 = 0;
  v63 = *MEMORY[0x277D85DE8];
  v3 = *(this + 32);
  v2 = v3 + 36864;
  v51 = *(v3 + 15112);
  v4 = *(v51 + 34);
  LODWORD(v3) = *(v51 + 35);
  v5 = *(v2 + 1048);
  v45 = (v5 >> 28) + 2;
  v6 = (v3 * v4 > (v5 >> 28) + 1) & (v5 >> 1);
  if ((v5 & 4) != 0 && ((v3 * v4 > (v5 >> 28) + 1) & (v5 >> 1)) == 0)
  {
    v1 = (*(*(this + *(this + 13) + 34) + 16) - 1) % v45;
  }

  v7 = *(*(v2 + 752) + 60);
  if (v6)
  {
    v8 = (v5 >> 28) + 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = 36 * (0x1000u / v8);
  if (v7 == 15)
  {
    v10 = 5;
  }

  else
  {
    v10 = 4;
  }

  v47 = v10;
  if (v4)
  {
    v53 = 0;
    v11 = 0;
    v50 = 0;
    v12 = *(this + 33);
    v39 = v8;
    v40 = 36 * (0x1000u / v8);
    LODWORD(v13) = 954437177 * ((v9 * (v8 - 1)) >> 2);
    v14 = v12 + 50688 + v9 * (v8 - 1);
    v48 = *v51;
    v52 = v51 + 4114;
    v46 = v51 + 8210;
    v15 = -50652 - v12;
    v16 = v51 + 8243;
    v44 = -(v3 * v4);
    v41 = v1;
    v17 = v1;
    v18 = v14;
    v42 = v15;
    while (!v3)
    {
      v32 = v53 + 1;
LABEL_49:
      v53 = v32;
      if (v32 >= v4)
      {
        v33 = v50;
        v9 = v40;
        v1 = v41;
        v8 = v39;
        goto LABEL_52;
      }
    }

    v19 = 0;
    v20 = v15 + v18;
    v49 = v44 + v11;
    v43 = v11;
    v54 = v11;
    while (1)
    {
      v21 = v54 + v19;
      v22 = v49 + v19;
      v58 = 0;
      *(v14 + 4) = v50 + v19;
      *(v14 + 6) = v17;
      *(v14 + 10) = v54 + v19;
      v23 = v54 + v19 ? 4 : 5;
      *(v14 + 12) = v23;
      if (v22 == -1)
      {
        *(v14 + 14) = 262149;
      }

      else
      {
        v24 = v22 == -2 ? v6 : 0;
        *(v14 + 14) = 4;
        *(v14 + 16) = v24 == 1 ? 4 : 0;
      }

      v57 = 0;
      if (!CAVDAvxDecoder::GetTileMemInfo(*(this + 32), v48 + v51[v21 + 18], &v58, &v57))
      {
        return 0xFFFFFFFFLL;
      }

      v55 = v17;
      v25 = v6;
      v26 = 36 * v13;
      v27 = v58;
      if (*v58 || *(v58 + 152) || *(v58 + 156))
      {
        v28 = v57;
        if (HIDWORD(v57) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v60 = "populateAvdWork";
          v61 = 1024;
          v62 = 1697;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v28 = v57;
        }

        result = CAHDec::addToPatcherList(this, v27, v26 + 50708, v28, 0xFFFFFFFFLL, 0, -1, 4);
        if (result)
        {
          return result;
        }

        v27 = v58;
        if (*v58)
        {
          goto LABEL_36;
        }
      }

      if (*(v27 + 152) || *(v27 + 156))
      {
LABEL_36:
        v30 = v57;
        if (HIDWORD(v57) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v60 = "populateAvdWork";
          v61 = 1024;
          v62 = 1698;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v30 = v57;
        }

        result = CAHDec::addToPatcherList(this, v27, v26 + 50706, v30, 0x3FFFFFFFFFFLL, 32, -1, 2);
        if (result)
        {
          return result;
        }
      }

      v31 = v52[v21];
      if (HIDWORD(v31))
      {
        v6 = v25;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v60 = "populateAvdWork";
          v61 = 1024;
          v62 = 1700;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v31 = v52[v21];
        }
      }

      else
      {
        v6 = v25;
      }

      *(v14 + 24) = v31;
      v32 = v53 + 1;
      *(v14 + 28) = (*(v16 - 1) >> v47) | (*(v46 + v53) >> v47 << 16);
      ++v19;
      *(v14 + 32) = ((*v16 - 1) >> v47) | ((*(v46 + v53 + 1) - 1) >> v47 << 16);
      v17 = v55;
      if (v6)
      {
        v17 = (v19 + v54) % v45;
      }

      v18 += 36;
      *(v14 + 8) = v17;
      v13 = 0x8E38E38E38E38E39 * (v20 >> 2);
      v3 = *(v51 + 35);
      v20 += 36;
      ++v16;
      v14 = v18;
      if (v19 >= v3)
      {
        v4 = *(v51 + 34);
        v11 = v43 + v19;
        v50 += v19;
        v14 = v18;
        v16 = v51 + 8243;
        v15 = v42;
        goto LABEL_49;
      }
    }
  }

  else
  {
    v33 = 0;
LABEL_52:
    v34 = *(this + 33);
    v35 = v1;
    v36 = (v34 + 2 * v1 + 26);
    v37 = (v34 + 4 * v1 + 32);
    v38 = v1 + v8 - v1;
    do
    {
      *v36++ = v33;
      *v37++ = (v35 - v1) * v9 + 50688;
      ++v35;
      --v38;
    }

    while (v38);
    return 0;
  }
}

uint64_t CAHDecTansyAvx::allocWorkBuf_SPS(CAHDecTansyAvx *this, int *a2)
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
    v53 = 1814;
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
        v53 = 1916;
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
      v53 = 1922;
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
      v53 = 1857;
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
    v53 = 1862;
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

void CAHDecTansyAvx::getPPSWorkBufSize(uint64_t this, unsigned __int8 *a2, char *a3)
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
    v119 = 1953;
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
          v119 = 1987;
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
    v119 = 2077;
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
    v119 = 2081;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
  }

  *(a3 + 5) = v84;
  *(a3 + 3) = v95;
  *(a3 + 4) = v112;
  *(a3 + 10) = v64;
  *(a3 + 11) = v72;
  *(a3 + 12) = v78;
}

uint64_t CAHDecTansyAvx::calc_lf_above_pix_tile_size(CAHDecTansyAvx *this, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9)
{
  v9 = (a4 + 7) >> 3;
  if (a5)
  {
    v10 = 4;
  }

  else
  {
    v10 = 3;
  }

  v11 = (a9 - a8) << (v10 - 3);
  v12 = (v9 - (a8 << v10)) >> 3;
  if (a7)
  {
    v11 = v12;
  }

  v13 = (a4 + 7) >> 6;
  if (v13 <= 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = 8 * v13;
  }

  v15 = a2 + a2 * (v9 - v14);
  v16 = (6 * v15 + 15) & 0xFFFFFFF0;
  if (a2 == 8)
  {
    v17 = 32;
  }

  else
  {
    v17 = 48;
  }

  if (a2 == 8)
  {
    v18 = 16;
  }

  else
  {
    v18 = 32;
  }

  if (a3 != 1)
  {
    v16 = 0;
    v17 = 0;
  }

  v19 = v16 + ((10 * v15 + 15) & 0xFFFFFFF0);
  v20 = v17 + v18;
  v21 = 48 * a2;
  if (a3 != 1)
  {
    v21 = 0;
  }

  v22 = v20 + 127;
  if (!a7)
  {
    v19 = 0;
  }

  if (a6)
  {
    v22 = 127;
  }

  return (v22 + v19 + v11 * (v21 + 80 * a2)) & 0xFFFFFF80;
}

uint64_t CAHDecTansyAvx::calc_lf_left_tile_size(CAHDecTansyAvx *this, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  if (a6 == 128)
  {
    v10 = 4;
  }

  else
  {
    v10 = 3;
  }

  v11 = v10 - 3;
  v12 = (a8 - a7) << v11;
  v13 = ~(a7 << v11) + ((a9 + 63) >> 6);
  if (a8 != a10)
  {
    v13 = v12;
  }

  v14 = ((((a9 + 7) & 0x38) >> 1) + 5) & 0x3C;
  if (((a9 + 7) & 0x38) == 0)
  {
    v14 = 36;
  }

  v15 = (v14 * 2 * a3 * a4 + 63) >> 6;
  v16 = a4 * a2;
  v17 = (((a9 + 7) & 0x38) + 13) & 0x78;
  if (((a9 + 7) & 0x38) == 0)
  {
    v17 = 72;
  }

  v18 = v17 * v16 + 63;
  if (!a5)
  {
    v15 = 0;
  }

  v19 = v15 + (v18 >> 6);
  v20 = (a3 * a4) & 0x7FFFFFFF;
  if (!a5)
  {
    v20 = 0;
  }

  if (a8 == a10)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  return (8 * (v21 + v13 * (v20 + v16)));
}

uint64_t CAHDecTansyAvx::calc_lr_left_tile_size(CAHDecTansyAvx *this, int a2, int a3, int a4, int a5, int a6, unsigned int a7, int a8, int a9, int a10)
{
  if (a6 == 128)
  {
    v10 = 4;
  }

  else
  {
    v10 = 3;
  }

  v11 = a9 + 7;
  v12 = (__PAIR64__((a8 - a7) << (v10 - 3), a7) - 1) >> 32;
  v13 = (((a9 + 7) >> 3) - (a7 << v10)) >> 3;
  if (a7)
  {
    v14 = 1;
  }

  else
  {
    v14 = a9 <= 56;
  }

  v15 = !v14;
  v16 = v13 - v15;
  if (a8 != a10)
  {
    v16 = v12;
  }

  v17 = 2 * a3 * a4;
  v18 = (v11 & 0x38) + 8;
  if (a9 <= 56)
  {
    v18 = 0;
  }

  v19 = (((v18 >> 1) & 0xFFFFFFFD | (2 * (a9 > 56))) * v17 + 63) >> 6;
  v20 = a4 * a2;
  v21 = (v18 | (2 * (a9 > 56))) * a4 * a2 + 63;
  v22 = v11 & 0xFFFFFFF8;
  v23 = v22 >> 1;
  if (a9 > 56)
  {
    v23 = 30;
  }

  v24 = (v23 * v17 + 63) >> 6;
  if (a9 > 56)
  {
    v22 = 58;
  }

  v25 = v22 * v20 + 63;
  if (!a5)
  {
    v24 = 0;
  }

  v26 = v24 + (v25 >> 6);
  if (a5)
  {
    v27 = v19;
  }

  else
  {
    v27 = 0;
  }

  v28 = (72 * a3 * a4 + 63) >> 6;
  if (!a5)
  {
    v28 = 0;
  }

  v29 = v27 + (v21 >> 6);
  if (a7)
  {
    v26 = 0;
  }

  if (a8 != a10)
  {
    v29 = 0;
  }

  return (8 * (v29 + v26 + v16 * (v28 + ((68 * v20 + 63) >> 6))));
}

uint64_t CAHDecTansyAvx::calc_az_left_tile_size(CAHDecTansyAvx *this, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9)
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

  v15 = (v12 - (a6 << v14) + (v11 >> 1) + 3) & 0xFFFFFFFC;
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

  v18 = (v17 - (a6 << v16) + v11 + 7) & 0xFFFFFFF8;
  if (a4)
  {
    v19 = 4;
  }

  else
  {
    v19 = 3;
  }

  return v19 * a5 * (v15 + v18);
}

BOOL CAHDecTansyAvx::isLfPadDis(CAHDecTansyAvx *this)
{
  v1 = *(*(this + 32) + 37616);
  if (*(v1 + 2196))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v1 + 2200) != 0;
  }

  if (*(v1 + 1962) == 1)
  {
    v3 = 0;
    if ((*(v1 + 1956) & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_9:
    v4 = 1;
    goto LABEL_14;
  }

  if (*(v1 + 1956))
  {
    v3 = 0;
    goto LABEL_9;
  }

  v3 = *(v1 + 99) != 0;
LABEL_11:
  v4 = !*(v1 + 3448) && !*(v1 + 3452) && *(v1 + 3456) == 0;
LABEL_14:
  if (v2 || v3)
  {
    return 0;
  }

  if (*(v1 + 2164) == *(v1 + 2176))
  {
    return v4;
  }

  return 0;
}

uint64_t CAHDecTansyAvx::allocWorkBuf_PPS(CAHDecTansyAvx *this, void *a2, void *a3, int *a4)
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
          v39 = 2136;
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
            v39 = 2151;
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
            v39 = 2158;
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
            v39 = 2165;
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
            v39 = 2172;
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
            v39 = 2179;
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
            v39 = 2186;
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
            v39 = 2193;
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
            v39 = 2200;
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
            v39 = 2207;
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
            v39 = 2214;
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
          v39 = 2221;
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
    v39 = 2144;
    v40 = 2080;
    v41 = "IPAbovePixel";
    v9 = MEMORY[0x277D86220];
    goto LABEL_102;
  }

LABEL_103:
  (*(*this + 160))(this, a4);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecTansyAvx::freeWorkBuf_SPS(CAHDecTansyAvx *this)
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

double CAHDecTansyAvx::freeWorkBuf_PPS(CAHDecTansyAvx *this, _DWORD *a2)
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

uint64_t CAHDecTansyAvx::setVPInstrFifo(uint64_t this, int a2)
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

void CAVDMvHevcDecoder::CAVDMvHevcDecoder(CAVDMvHevcDecoder *this, void *a2, int a3, int a4)
{
  CAVDHevcDecoder::CAVDHevcDecoder(this, a2, a3, a4);
  *v5 = &unk_288667CE0;
  *(v5 + 11476) = 0;
  *(v5 + 11480) = 0;
  *(v5 + 9648) = 0u;
  *(v5 + 10328) = 0;
  *(v5 + 10344) = 0;
  *(v5 + 10336) = 0;
  *(v5 + 10352) = 0;
  *(v5 + 10360) = 0u;
  *(v5 + 10376) = 0u;
  *(v5 + 10392) = 0u;
  *(v5 + 10408) = 0u;
  *(v5 + 10424) = 0u;
  *(v5 + 10440) = 0u;
  *(v5 + 10456) = 0u;
  *(v5 + 10472) = 0u;
  *(v5 + 10488) = 0u;
  *(v5 + 10504) = 0u;
  *(v5 + 10520) = 0u;
  *(v5 + 10536) = 0u;
  *(v5 + 10547) = 0u;
  bzero((v5 + 10564), 0x38EuLL);
  *(this + 12060) = 0;
  v6 = -640;
  do
  {
    *(this + v6 + 10328) = 0uLL;
    v6 += 40;
  }

  while (v6);
  *(this + 602) = 0u;
  *(this + 601) = 0u;
  *(this + 600) = 0u;
  *(this + 599) = 0u;
  *(this + 598) = 0u;
  *(this + 597) = 0u;
  *(this + 596) = 0u;
  *(this + 595) = 0u;
  *(this + 594) = 0u;
  *(this + 593) = 0u;
  *(this + 592) = 0u;
  *(this + 591) = 0u;
  *(this + 590) = 0u;
  *(this + 589) = 0u;
  *(this + 588) = 0u;
  *(this + 587) = 0u;
  *(this + 586) = 0u;
  *(this + 585) = 0u;
  *(this + 584) = 0u;
  *(this + 583) = 0u;
  *(this + 582) = 0u;
  *(this + 581) = 0u;
  *(this + 580) = 0u;
  *(this + 579) = 0u;
  *(this + 578) = 0u;
  *(this + 577) = 0u;
  *(this + 576) = 0u;
  *(this + 575) = 0u;
  *(this + 574) = 0u;
  *(this + 573) = 0u;
  *(this + 572) = 0u;
  *(this + 571) = 0u;
  *(this + 10530) = 0u;
  *(this + 10546) = 0u;
  *(this + 10498) = 0u;
  *(this + 10514) = 0u;
  *(this + 10466) = 0u;
  *(this + 10482) = 0u;
  *(this + 10434) = 0u;
  *(this + 10450) = 0u;
  *(this + 10402) = 0u;
  *(this + 10418) = 0u;
  *(this + 10370) = 0u;
  *(this + 10386) = 0u;
  bzero(this + 10576, 0x380uLL);
  bzero(this + 11484, 0x240uLL);
}

_DWORD *CAVDMvHevcDecoder::getInterLayerShortTermPic(HEVC_RLM **this, int a2, unsigned int a3)
{
  if (*(this + 2022) >= a3)
  {
    return HEVC_RLM::findShortTermReferencePictureByPicOrderCntVal(this[*(this[1020] + a3 + 290) + 377], a2);
  }

  else
  {
    return 0;
  }
}

uint64_t CAVDMvHevcDecoder::allocateMultiViewHwDecoders(CAVDMvHevcDecoder *this, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2 < 1)
  {
LABEL_7:
    v6 = *(this + 743);
    v7 = *(this + v6 + 1142);
    if (v6 > 63 || v7 == 0)
    {
      return 304;
    }

    else
    {
      result = 0;
      *(this + 262) = v7;
    }
  }

  else
  {
    v3 = -a2;
    v4 = 1142;
    while (1)
    {
      HwDecoder = CAVDHevcDecoder::allocateHwDecoder(this);
      *(this + v4) = HwDecoder;
      if (!HwDecoder)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 304;
        }

        v12 = 136315394;
        v13 = "allocateMultiViewHwDecoders";
        v14 = 1024;
        v15 = v4 - 1142;
        v10 = MEMORY[0x277D86220];
        v11 = "AppleAVD: ERROR: %s(): [layer %d] Failed to create HW Decoder object!\n";
LABEL_19:
        _os_log_impl(&dword_277606000, v10, OS_LOG_TYPE_DEFAULT, v11, &v12, 0x12u);
        return 304;
      }

      if ((*(*HwDecoder + 16))(HwDecoder))
      {
        break;
      }

      if (!(*(**(this + v4) + 168))(*(this + v4)))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 304;
        }

        v12 = 136315394;
        v13 = "allocateMultiViewHwDecoders";
        v14 = 1024;
        v15 = v4 - 1142;
        v10 = MEMORY[0x277D86220];
        v11 = "AppleAVD: ERROR: %s(): [layer %d] HW Decoder failed to allocate decodeBuffer!\n";
        goto LABEL_19;
      }

      ++v4;
      if (v3 + v4 == 1142)
      {
        goto LABEL_7;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "allocateMultiViewHwDecoders";
      v14 = 1024;
      v15 = v4 - 1142;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): [layer %d] Failed to initialize HW Decoder object!\n", &v12, 0x12u);
    }

    return 307;
  }

  return result;
}

void CAVDMvHevcDecoder::~CAVDMvHevcDecoder(void **this)
{
  *this = &unk_288667CE0;
  free(this[1207]);
  this[1207] = 0;
  free(this[1206]);
  this[1206] = 0;
  v2 = 0x1FFFFFFFFFFFFFB0;
  do
  {
    v3 = &this[v2];
    free(this[v2 + 1291]);
    v3[1291] = 0;
    free(this[v2 + 1292]);
    v3[1292] = 0;
    v2 += 5;
  }

  while (v2 * 8);
  v4 = 1142;
  do
  {
    v5 = this[v4];
    this[262] = v5;
    if (v5)
    {
      (*(*v5 + 144))(v5);
      (*(*this[262] + 160))(this[262], 0);
      v6 = this[262];
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      this[262] = 0;
      this[v4] = 0;
    }

    v7 = v4 - 1142;
    ++v4;
  }

  while (v7 < *(this + 931));

  CAVDHevcDecoder::~CAVDHevcDecoder(this);
}

{
  CAVDMvHevcDecoder::~CAVDMvHevcDecoder(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAVDMvHevcDecoder::VAStartDecode(CAVDMvHevcDecoder *this, unsigned __int8 *a2, int a3)
{
  v93 = *MEMORY[0x277D85DE8];
  *(this + 2716) = 0;
  *(this + 749) = a3 >> 24;
  *(this + 746) = *(*(this + 292) + 5664);
  v6 = operator new(0xB0uLL, MEMORY[0x277D826F0]);
  if (!v6)
  {
    *(this + 375) = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v87 = "VAStartDecode";
      v14 = MEMORY[0x277D86220];
      v15 = "AppleAVD: ERROR: %s: error creating rbsp!\n";
      goto LABEL_9;
    }

    return 304;
  }

  v7 = v6;
  HEVC_RBSP::HEVC_RBSP(v6);
  v8 = a3 & 0xFFFFFF;
  *(this + 375) = v7;
  LODWORD(v9) = *(this + 749);
  if (v9 > v8)
  {
LABEL_3:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v87 = "VAStartDecode";
      v88 = 1024;
      v89 = 0;
      v10 = MEMORY[0x277D86220];
      v11 = "AppleAVD: %s Parameter Set missing %d";
      v12 = 18;
      goto LABEL_5;
    }

    return 305;
  }

  v16 = 0;
  v17 = 0;
  v18 = this + 8152;
  v19 = &a2[v8];
  v20 = a2;
  while (1)
  {
    switch(v9)
    {
      case 1:
        v26 = *v20;
        v21 = v20 + 1;
        v23 = v26;
        v24 = v26 + 1;
        break;
      case 2:
        v25 = *v20;
        v21 = v20 + 2;
        v23 = __rev16(v25);
        v24 = v23 + 2;
        break;
      case 4:
        v22 = *v20;
        v21 = v20 + 4;
        v23 = bswap32(v22);
        v24 = v23 + 4;
        break;
      default:
        return 317;
    }

    if (&v21[v23] > v19)
    {
      break;
    }

    HEVC_RBSP::setRBSP(*(this + 375), v21, v23);
    if (!HEVC_RBSP::parseNAL(*(this + 375), &v83, 0))
    {
      return 305;
    }

    v16 += v24;
    if (v84 == 32)
    {
      if ((HEVC_RBSP::parseVPS(*(this + 375), this + 928, 1, 0) & 1) == 0)
      {
        return 305;
      }

      v20 = &a2[v16];
      v9 = *(this + 749);
      v17 = 1;
      if (&v20[v9] > v19)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v20 = &a2[v16];
      v9 = *(this + 749);
      if (&v20[v9] > v19)
      {
        if ((v17 & 1) == 0)
        {
          goto LABEL_3;
        }

LABEL_31:
        MultiViewHwDecoders = (*(*this + 288))(this, (*(this + 931) + 1));
        if (MultiViewHwDecoders)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v87 = "VAStartDecode";
            v88 = 1024;
            v89 = MultiViewHwDecoders;
            v28 = MEMORY[0x277D86220];
            v29 = "AppleAVD: ERROR: %s(): Failed to allocate members (error = %u)!\n";
LABEL_34:
            _os_log_impl(&dword_277606000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 0x12u);
          }

          return MultiViewHwDecoders;
        }

        v30 = *(this + 931) + 1;
        *(this + 2588) = v30;
        v31 = *(this + 10);
        if (v31 == 1)
        {
          if (v30 >= 7)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 305;
            }

            *buf = 0;
            v10 = MEMORY[0x277D86220];
            v11 = "AppleAVD: CAVDMvHevcDecoder: Not supported!";
LABEL_42:
            v12 = 2;
            goto LABEL_5;
          }
        }

        else if (v30 >= 5)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return 305;
          }

          *buf = 0;
          v10 = MEMORY[0x277D86220];
          v11 = "AppleAVD: CAVDMvHevcDecoder: Not supported!";
          goto LABEL_42;
        }

        v32 = 0;
        *(this + 11480) = 1;
        *(this + 12060) = 0;
        *(this + 5184) = 0;
        *(this + 2583) = -1;
        *(this + 6031) = 1;
        *(this + 3016) = 0;
        v33 = *(this + 1122);
        v34 = this + 10370;
        v35 = 10832;
        v36 = *(this + 1123);
        do
        {
          v37 = (this + v35);
          v37[163] = *(this + 2583);
          v37[227] = -1;
          *(v33 + 4 * v32) = 0;
          *v37 = 0x80000000;
          v38 = &v34[v32];
          v38[782] = 0;
          *(v36 + 4 * v32) = 0;
          v38[718] = 1;
          v34[v32] = 0;
          v38[64] = 0;
          v38[128] = 0;
          v39 = *(this + 931);
          v35 += 4;
          v40 = v32++ >= v39;
        }

        while (!v40);
        *(this + 8993) = v31;
        if (v39)
        {
          v41 = *v18;
          v79 = this + 8992;
          *(this + 8992) = *v18 != 0;
          if (v41)
          {
            v42 = -1;
            do
            {
              CAVDMvHevcDecoder::calcSmallestLayerId(this, ++v42);
              v43 = *(this + 931);
            }

            while (v42 < v43);
            *(this + 371) = 0;
            if (!v43)
            {
              v44 = 0;
              goto LABEL_55;
            }
          }

          else
          {
            *(this + 371) = 0;
          }

          v44 = *v18 != 0;
        }

        else
        {
          v44 = 0;
          v79 = this + 8992;
          *(this + 8992) = 0;
          *(this + 371) = 0;
        }

LABEL_55:
        LODWORD(v45) = *(this + 749);
        if (v45 > v8)
        {
          v46 = 0;
          v47 = 0;
LABEL_57:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v87 = "VAStartDecode";
            v88 = 1024;
            v89 = 1;
            v90 = 1024;
            *v91 = v46 & 1;
            *&v91[4] = 1024;
            *&v91[6] = v47 & 1;
            v10 = MEMORY[0x277D86220];
            v11 = "AppleAVD: %s Parameter Set missing %d %d %d";
            v12 = 30;
LABEL_5:
            _os_log_impl(&dword_277606000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, v12);
          }

          return 305;
        }

        v82 = 0;
        v48 = 0;
        v78 = 0;
        v80 = 0;
        v81 = 0;
        v49 = a2;
        do
        {
          switch(v45)
          {
            case 1:
              v55 = *v49;
              v50 = v49 + 1;
              v52 = v55;
              v53 = v55 + 1;
              break;
            case 2:
              v54 = *v49;
              v50 = v49 + 2;
              v52 = __rev16(v54);
              v53 = v52 + 2;
              break;
            case 4:
              v51 = *v49;
              v50 = v49 + 4;
              v52 = bswap32(v51);
              v53 = v52 + 4;
              break;
            default:
              return 317;
          }

          if (&v50[v52] > v19)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 318;
            }

            *buf = 136315906;
            v87 = "VAStartDecode";
            v88 = 1024;
            v89 = v52;
            v90 = 2048;
            *v91 = v50;
            *&v91[8] = 2048;
            v92 = v19;
            v27 = MEMORY[0x277D86220];
            goto LABEL_28;
          }

          HEVC_RBSP::setRBSP(*(this + 375), v50, v52);
          if (!HEVC_RBSP::parseNAL(*(this + 375), &v83, 0))
          {
            return 305;
          }

          if (v85 == 0 || v44)
          {
            if (v84 == 34)
            {
              v57 = HEVC_RBSP::parsePPS(*(this + 375), *(this + 1022), *(this + 1021));
              if ((v57 & 0x80000000) != 0)
              {
                return 305;
              }

              if (*(*(this + 1022) + 9856 * v57 + 6465) && (CAVDHevcDecoder::areUnsupportedSPSExtensionFeaturesPresent(this) & 1) != 0)
              {
                return 310;
              }

              HIDWORD(v78) = 1;
            }

            else if (v84 == 33)
            {
              v82 = HEVC_RBSP::parseSPS(*(this + 375), this + 3712, *(this + 1021), v85, 1);
              if ((v82 & 0x80000000) != 0)
              {
                return 305;
              }

              if (CAVDHevcDecoder::areUnsupportedSPSExtensionFeaturesPresent(this))
              {
                return 310;
              }

              if ((*v79 & 1) != 0 && CAVDMvHevcDecoder::deriveSpsParamsFromActiveVps(this, *(this + 1021) + 23176 * v82, v85))
              {
                return 305;
              }

              (*(*this + 424))(this, *(this + 1021) + 23176 * v82);
              *(*(this + 1021) + 23176 * v82 + 23172) = CAVDHevcDecoder::DpbMaxSize(this, (*(this + 1021) + 23176 * v82));
              if (v85)
              {
                v56 = v81;
              }

              else
              {
                v56 = v82;
              }

              v81 = v56;
              v80 |= v85 == 0;
              LODWORD(v78) = 1;
            }
          }

          v48 += v53;
          v49 = &a2[v48];
          v45 = *(this + 749);
        }

        while (&v49[v45] <= v19);
        v46 = v78;
        v47 = BYTE4(v78);
        if ((v78 & HIDWORD(v78) & 1) == 0)
        {
          goto LABEL_57;
        }

        v58 = 0;
        v59 = *(this + 1116);
        v60 = *(this + 1117);
        do
        {
          *(v59 + 4 * v58) = 0;
          *(v60 + 4 * v58) = 0;
          v61 = *(this + 931);
          v40 = v58++ >= v61;
        }

        while (!v40);
        MultiViewHwDecoders = CAVDMvHevcDecoder::allocateMultiViewHwDecoders(this, v61 + 1);
        if (MultiViewHwDecoders)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return MultiViewHwDecoders;
          }

          *buf = 136315394;
          v87 = "VAStartDecode";
          v88 = 1024;
          v89 = MultiViewHwDecoders;
          v28 = MEMORY[0x277D86220];
          v29 = "AppleAVD: ERROR: %s(): allocateMultiViewHwDecoders failed with %u\n";
          goto LABEL_34;
        }

        v63 = malloc_type_calloc(8uLL, (*(this + 931) + 1), 0x2004093837F09uLL);
        *(this + 1206) = v63;
        if (v63)
        {
          v64 = malloc_type_malloc((*(this + 931) + 1), 0x100004077774924uLL);
          *(this + 1207) = v64;
          if (v64)
          {
            v65 = 0;
            *(this + 1208) = 0;
            *(this + 2419) = 0;
            *(this + 9680) = 0;
            v66 = *(this + 931);
            while (1)
            {
              v67 = malloc_type_calloc(8uLL, (v66 + 1), 0x2004093837F09uLL);
              v68 = this + 40 * v65 + 9688;
              *v68 = v67;
              if (!v67)
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  return 304;
                }

                *buf = 136315138;
                v87 = "VAStartDecode";
                v14 = MEMORY[0x277D86220];
                v15 = "AppleAVD: %s m_auList mem alloc failed ";
                goto LABEL_9;
              }

              v69 = malloc_type_malloc((*(this + 931) + 1), 0x100004077774924uLL);
              *(v68 + 1) = v69;
              if (!v69)
              {
                break;
              }

              v70 = 0;
              v66 = *(this + 931);
              do
              {
                *(*v68 + 8 * v70) = 0;
                *(*(v68 + 1) + v70++) = 0;
              }

              while (v66 + 1 != v70);
              *(v68 + 2) = 0;
              v68[32] = 0;
              *(v68 + 7) = 0;
              if (++v65 == 16)
              {
                *(this + 2582) = 0;
                if (!v66 || ((*v18 != 0) & v80) == 0)
                {
                  v81 = v82;
                }

                *(this + 2052) = v81;
                v71 = *(this + 1021);
                v72 = v71 + 23176 * v81;
                *&v73 = *(v72 + 3608);
                v74 = (v72 + 3636);
                v75 = *(v72 + 3600);
                DWORD2(v73) = *v74;
                HIDWORD(v73) = v75;
                *(this + 182) = v73;
                if (v75)
                {
                  v75 = *(v71 + 23176 * v81 + 3640);
                }

                *(this + 2239) = v75;
                v76 = v71 + 23176 * v81;
                *(this + 2240) = *(v76 + 22872);
                v77 = *(v76 + 23172);
                *(this + 2241) = v77;
                *(this + 8968) = *(v76 + 3604);
                *(this + 748) = v77 + 6;
                (*(*this + 240))(this);
                CAVDDecoder::isADSDecryption(this);
                MultiViewHwDecoders = 0;
                *(this + 685) = 0;
                *(this + 2716) = 1;
                return MultiViewHwDecoders;
              }
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 304;
            }

            *buf = 136315138;
            v87 = "VAStartDecode";
            v14 = MEMORY[0x277D86220];
            v15 = "AppleAVD: %s layerActive mem alloc failed";
          }

          else
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 304;
            }

            *buf = 136315138;
            v87 = "VAStartDecode";
            v14 = MEMORY[0x277D86220];
            v15 = "AppleAVD: %s m_curAu layerActive alloc failed";
          }
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return 304;
          }

          *buf = 136315138;
          v87 = "VAStartDecode";
          v14 = MEMORY[0x277D86220];
          v15 = "AppleAVD: %s m_curAu mem alloc failed ";
        }

LABEL_9:
        _os_log_impl(&dword_277606000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
        return 304;
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v87 = "VAStartDecode";
    v88 = 1024;
    v89 = v23;
    v90 = 2048;
    *v91 = v21;
    *&v91[8] = 2048;
    v92 = &a2[v8];
    v27 = MEMORY[0x277D86220];
LABEL_28:
    _os_log_impl(&dword_277606000, v27, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s NALU too big! %d nal_ptr:%p, buf_end:%p", buf, 0x26u);
  }

  return 318;
}

uint64_t CAVDMvHevcDecoder::calcSmallestLayerId(CAVDMvHevcDecoder *this, int a2)
{
  v3 = *(this + 2023);
  v4 = this + 11484;
  v5 = a2;
  v6 = *(this + a2 + 2871);
  if (v6 == -1)
  {
    *&v4[4 * a2] = v3;
    v6 = v3;
  }

  v7 = HEVC_RBSP::convOlsIdxToLsIdx(*(this + 375), this + 3712, v6);
  if (v7 > v3 && (v8 = *(*(this + 1020) + 3872)) != 0 && (v9 = *(v8 + 8 * v7)) != 0)
  {
    v10 = *v9;
  }

  else
  {
    v10 = 0;
  }

  result = HEVC_RBSP::convOlsIdxToLsIdx(*(this + 375), this + 3712, *&v4[4 * v5]);
  *(this + v5 + 2935) = v10;
  return result;
}

uint64_t CAVDMvHevcDecoder::deriveSpsParamsFromActiveVps(uint64_t a1, uint64_t a2, int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8088);
  if (v4 >= a3)
  {
    if (*(a2 + 22847))
    {
      HEVC_RBSP::calcSpsMaxDecPicBufferingMinus1(*(a1 + 3000), a1 + 3712, a2, *(a1 + 4 * *(*(a1 + 8160) + 2 * a3 + 580) + 11484), a3);
    }

    return 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = "deriveSpsParamsFromActiveVps";
      v8 = 1024;
      v9 = a3;
      v10 = 1024;
      v11 = v4;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s: layerID %d > vps_max_layer_id %d!\n", &v6, 0x18u);
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t CAVDMvHevcDecoder::VAStopDecode(CAVDMvHevcDecoder *this)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(this + 2716))
  {
    if (*(this + 8152))
    {
      v2 = 0;
      do
      {
        if (!CAVDMvHevcDecoder::AccessUnitBumpingProcess(this))
        {
          break;
        }

        v5 = v2++ >= 0x10;
      }

      while (!v5);
    }

    else
    {
      LOBYTE(v16[0]) = 0;
      if (HEVC_RLM::bumpingProcess(*(this + 377), v16))
      {
        v4 = 1;
        do
        {
          if (LOBYTE(v16[0]) != 1)
          {
            break;
          }

          if (BYTE2(v16[0]))
          {
            (*(*this + 368))(this, v16);
          }

          LOBYTE(v16[0]) = 0;
          v5 = !HEVC_RLM::bumpingProcess(*(this + 377), v16) || v4++ >= 0x10;
        }

        while (!v5);
      }
    }

    while (!(*(*this + 392))(this, v16))
    {
      (*(*this + 88))(this, HIDWORD(v16[0]));
    }

    v6 = 377;
    do
    {
      v7 = *(this + v6);
      if (v7)
      {
        HEVC_RLM::releaseAllPictures(v7);
      }

      v8 = v6 - 377;
      ++v6;
    }

    while (v8 < *(this + 931));
    free(*(this + 1207));
    *(this + 1207) = 0;
    free(*(this + 1206));
    *(this + 1206) = 0;
    v9 = -640;
    do
    {
      v10 = this + v9;
      free(*(this + v9 + 10328));
      *(v10 + 1291) = 0;
      free(*(this + v9 + 10336));
      *(v10 + 1292) = 0;
      v9 += 40;
    }

    while (v9);
    v11 = 1142;
    do
    {
      v12 = *(this + v11);
      *(this + 262) = v12;
      if (v12)
      {
        (*(*v12 + 144))(v12);
        (*(**(this + 262) + 160))(*(this + 262), 0);
        v13 = *(this + 262);
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }

        *(this + 262) = 0;
        *(this + v11) = 0;
      }

      v14 = *(this + 931);
      v15 = v11 - 1142;
      ++v11;
    }

    while (v15 < v14);
    (*(*this + 296))(this, (v14 + 1));
    return 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v16[0]) = 136315138;
      *(v16 + 4) = "VAStopDecode";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: bailing out of %s because start didn't complete", v16, 0xCu);
    }

    return 305;
  }
}

BOOL CAVDMvHevcDecoder::AccessUnitBumpingProcess(HEVC_RLM **this)
{
  v2 = 0;
  v3 = (this + 1211);
  v4 = 0x7FFFFFFF;
  v5 = -1;
  do
  {
    v6 = &v3[40 * v2];
    if (v6[32] == 1)
    {
      v7 = *(v6 + 7);
      if (v7)
      {
        v8 = 0;
        v9 = *v6;
        do
        {
          if (*v9)
          {
            v8 = (*(*v9 + 2) | v8) != 0;
          }

          v9 += 8;
          --v7;
        }

        while (v7);
        if (v8)
        {
          v10 = *(v6 + 4);
          if (v10 < v4)
          {
            v4 = v10;
            v5 = v2;
          }
        }
      }
    }

    ++v2;
  }

  while (v2 != 16);
  if (v5 != -1)
  {
    v11 = &v3[40 * v5];
    if (!*(v11 + 7))
    {
      goto LABEL_27;
    }

    v12 = 0;
    do
    {
      v13 = *(*v11 + 8 * v12);
      if (v13)
      {
        v14 = *(v13 + 28);
        v15 = *(v13 + 44);
        if (*(v13 + 2))
        {
          *(v13 + 2) = 0;
          (*(*this + 46))(this, v13);
        }

        if (!*(v13 + 20))
        {
          HEVC_RLM::removeEntry(this[*(this[1020] + v14 + 290) + 377], v15);
          *(*v11 + 8 * v12) = 0;
        }
      }

      ++v12;
      v16 = *(v11 + 7);
    }

    while (v12 < v16);
    if (!v16)
    {
      goto LABEL_27;
    }

    v17 = 0;
    v18 = *v11;
    do
    {
      if (*v18++)
      {
        ++v17;
      }

      --v16;
    }

    while (v16);
    if (!v17)
    {
LABEL_27:
      if (v11[32] == 1)
      {
        *(v11 + 4) = 0;
        *(v11 + 3) = 0;
        v11[32] = 0;
        bzero(*(v11 + 1), *(this + 931) + 1);
        --*(this + 2582);
      }
    }
  }

  return v5 != -1;
}