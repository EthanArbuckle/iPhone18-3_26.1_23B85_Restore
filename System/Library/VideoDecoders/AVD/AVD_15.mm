void CAHDecHibiscusAvx::getPPSWorkBufSize(uint64_t this, unsigned __int8 *a2, char *a3)
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
    v119 = 1945;
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
          v119 = 1979;
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
    v119 = 2069;
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
    v119 = 2073;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
  }

  *(a3 + 5) = v84;
  *(a3 + 3) = v95;
  *(a3 + 4) = v112;
  *(a3 + 10) = v64;
  *(a3 + 11) = v72;
  *(a3 + 12) = v78;
}

uint64_t CAHDecHibiscusAvx::allocWorkBuf_PPS(CAHDecHibiscusAvx *this, void *a2, void *a3, int *a4)
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = *(this + 32);
  v7 = *(v6 + 15112);
  if (*a4 > v7[19809])
  {
    v8 = (this + 3104);
    v9 = 3;
    while (1)
    {
      v10 = *a4;
      if (v10)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), v8, v10, 7, 1, 0))
        {
          break;
        }
      }

      if (*v8)
      {
        bzero(*v8, *a4);
      }

      v8 += 22;
      if (!--v9)
      {
        v6 = *(this + 32);
        v7 = *(v6 + 15112);
        v7[19809] = *a4;
        goto LABEL_9;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_127;
    }

    v49 = 136315650;
    v50 = "allocWorkBuf_PPS";
    v51 = 1024;
    v52 = 2128;
    v53 = 2080;
    v54 = "OvpAboveInfo";
    v12 = MEMORY[0x277D86220];
    goto LABEL_126;
  }

LABEL_9:
  v11 = a4[1];
  if (v11 > v7[19810])
  {
    if (v11)
    {
      if (CAVDDecoder::allocAVDMem(v6, this + 227, v11, 7, 1, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v49 = 136315650;
          v50 = "allocWorkBuf_PPS";
          v51 = 1024;
          v52 = 2136;
          v53 = 2080;
          v54 = "IPAbovePixel";
          v12 = MEMORY[0x277D86220];
LABEL_126:
          _os_log_impl(&dword_277606000, v12, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v49, 0x1Cu);
          goto LABEL_127;
        }

        goto LABEL_127;
      }

      v13 = a4[1];
    }

    else
    {
      v13 = 0;
    }

    v14 = *(this + 454);
    if (v14)
    {
      bzero(v14, v13);
      v13 = a4[1];
    }

    v6 = *(this + 32);
    v7 = *(v6 + 15112);
    v7[19810] = v13;
  }

  v15 = a4[2];
  if (v15 > v7[19811])
  {
    if (v15)
    {
      if (CAVDDecoder::allocAVDMem(v6, this + 238, v15, 7, 1, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v49 = 136315650;
          v50 = "allocWorkBuf_PPS";
          v51 = 1024;
          v52 = 2143;
          v53 = 2080;
          v54 = "LfAbovePixel";
          v12 = MEMORY[0x277D86220];
          goto LABEL_126;
        }

LABEL_127:
        (*(*this + 160))(this, a4);
        return 0xFFFFFFFFLL;
      }

      v16 = a4[2];
    }

    else
    {
      v16 = 0;
    }

    v17 = *(this + 476);
    if (v17)
    {
      bzero(v17, v16);
      v16 = a4[2];
    }

    v6 = *(this + 32);
    v7 = *(v6 + 15112);
    v7[19811] = v16;
  }

  v18 = a4[3];
  if (v18 > v7[19812])
  {
    if (v18)
    {
      if (CAVDDecoder::allocAVDMem(v6, this + 249, v18, 7, 1, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v49 = 136315650;
          v50 = "allocWorkBuf_PPS";
          v51 = 1024;
          v52 = 2150;
          v53 = 2080;
          v54 = "LfAboveInfo";
          v12 = MEMORY[0x277D86220];
          goto LABEL_126;
        }

        goto LABEL_127;
      }

      v19 = a4[3];
    }

    else
    {
      v19 = 0;
    }

    v20 = *(this + 498);
    if (v20)
    {
      bzero(v20, v19);
      v19 = a4[3];
    }

    v6 = *(this + 32);
    v7 = *(v6 + 15112);
    v7[19812] = v19;
  }

  v21 = a4[4];
  if (v21 > v7[19813])
  {
    if (v21)
    {
      if (CAVDDecoder::allocAVDMem(v6, this + 293, v21, 7, 1, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v49 = 136315650;
          v50 = "allocWorkBuf_PPS";
          v51 = 1024;
          v52 = 2157;
          v53 = 2080;
          v54 = "RfAboveInfo";
          v12 = MEMORY[0x277D86220];
          goto LABEL_126;
        }

        goto LABEL_127;
      }

      v22 = a4[4];
    }

    else
    {
      v22 = 0;
    }

    v23 = *(this + 586);
    if (v23)
    {
      bzero(v23, v22);
      v22 = a4[4];
    }

    v6 = *(this + 32);
    v7 = *(v6 + 15112);
    v7[19813] = v22;
  }

  v24 = a4[5];
  if (v24 > v7[19814])
  {
    if (v24)
    {
      if (CAVDDecoder::allocAVDMem(v6, this + 359, v24, 7, 1, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v49 = 136315650;
          v50 = "allocWorkBuf_PPS";
          v51 = 1024;
          v52 = 2164;
          v53 = 2080;
          v54 = "MvAboveInfo";
          v12 = MEMORY[0x277D86220];
          goto LABEL_126;
        }

        goto LABEL_127;
      }

      v25 = a4[5];
    }

    else
    {
      v25 = 0;
    }

    v26 = *(this + 718);
    if (v26)
    {
      bzero(v26, v25);
      v25 = a4[5];
    }

    v6 = *(this + 32);
    v7 = *(v6 + 15112);
    v7[19814] = v25;
  }

  v27 = a4[6];
  if (v27 > v7[19815])
  {
    if (v27)
    {
      if (CAVDDecoder::allocAVDMem(v6, this + 260, v27, 7, 1, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v49 = 136315650;
          v50 = "allocWorkBuf_PPS";
          v51 = 1024;
          v52 = 2171;
          v53 = 2080;
          v54 = "LfLeftPixel";
          v12 = MEMORY[0x277D86220];
          goto LABEL_126;
        }

        goto LABEL_127;
      }

      v28 = a4[6];
    }

    else
    {
      v28 = 0;
    }

    v29 = *(this + 520);
    if (v29)
    {
      bzero(v29, v28);
      v28 = a4[6];
    }

    v6 = *(this + 32);
    v7 = *(v6 + 15112);
    v7[19815] = v28;
  }

  v30 = a4[7];
  if (v30 > v7[19816])
  {
    if (v30)
    {
      if (CAVDDecoder::allocAVDMem(v6, this + 271, v30, 7, 1, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v49 = 136315650;
          v50 = "allocWorkBuf_PPS";
          v51 = 1024;
          v52 = 2178;
          v53 = 2080;
          v54 = "LfLeftInfo";
          v12 = MEMORY[0x277D86220];
          goto LABEL_126;
        }

        goto LABEL_127;
      }

      v31 = a4[7];
    }

    else
    {
      v31 = 0;
    }

    v32 = *(this + 542);
    if (v32)
    {
      bzero(v32, v31);
      v31 = a4[7];
    }

    v6 = *(this + 32);
    v7 = *(v6 + 15112);
    v7[19816] = v31;
  }

  v33 = a4[8];
  if (v33 > v7[19817])
  {
    if (v33)
    {
      if (CAVDDecoder::allocAVDMem(v6, this + 282, v33, 7, 1, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v49 = 136315650;
          v50 = "allocWorkBuf_PPS";
          v51 = 1024;
          v52 = 2185;
          v53 = 2080;
          v54 = "SrLeftPixel";
          v12 = MEMORY[0x277D86220];
          goto LABEL_126;
        }

        goto LABEL_127;
      }

      v34 = a4[8];
    }

    else
    {
      v34 = 0;
    }

    v35 = *(this + 564);
    if (v35)
    {
      bzero(v35, v34);
      v34 = a4[8];
    }

    v6 = *(this + 32);
    v7 = *(v6 + 15112);
    v7[19817] = v34;
  }

  v36 = a4[9];
  if (v36 > v7[19818])
  {
    if (v36)
    {
      if (CAVDDecoder::allocAVDMem(v6, this + 304, v36, 7, 1, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v49 = 136315650;
          v50 = "allocWorkBuf_PPS";
          v51 = 1024;
          v52 = 2192;
          v53 = 2080;
          v54 = "RfLeftPixel";
          v12 = MEMORY[0x277D86220];
          goto LABEL_126;
        }

        goto LABEL_127;
      }

      v37 = a4[9];
    }

    else
    {
      v37 = 0;
    }

    v38 = *(this + 608);
    if (v38)
    {
      bzero(v38, v37);
      v37 = a4[9];
    }

    v6 = *(this + 32);
    v7 = *(v6 + 15112);
    v7[19818] = v37;
  }

  v39 = a4[10];
  if (v39 > v7[19819])
  {
    if (v39)
    {
      if (CAVDDecoder::allocAVDMem(v6, this + 315, v39, 7, 1, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v49 = 136315650;
          v50 = "allocWorkBuf_PPS";
          v51 = 1024;
          v52 = 2199;
          v53 = 2080;
          v54 = "RfLeftInfo";
          v12 = MEMORY[0x277D86220];
          goto LABEL_126;
        }

        goto LABEL_127;
      }

      v40 = a4[10];
    }

    else
    {
      v40 = 0;
    }

    v41 = *(this + 630);
    if (v41)
    {
      bzero(v41, v40);
      v40 = a4[10];
    }

    v6 = *(this + 32);
    v7 = *(v6 + 15112);
    v7[19819] = v40;
  }

  v42 = a4[11];
  if (v42 > v7[19820])
  {
    if (v42)
    {
      if (CAVDDecoder::allocAVDMem(v6, this + 348, v42, 7, 1, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v49 = 136315650;
          v50 = "allocWorkBuf_PPS";
          v51 = 1024;
          v52 = 2206;
          v53 = 2080;
          v54 = "AzLeftPixel";
          v12 = MEMORY[0x277D86220];
          goto LABEL_126;
        }

        goto LABEL_127;
      }

      v43 = a4[11];
    }

    else
    {
      v43 = 0;
    }

    v44 = *(this + 696);
    if (v44)
    {
      bzero(v44, v43);
      v43 = a4[11];
    }

    v6 = *(this + 32);
    v7 = *(v6 + 15112);
    v7[19820] = v43;
  }

  v45 = a4[12];
  if (v45 <= v7[19821])
  {
    return 0;
  }

  if (v45)
  {
    if (CAVDDecoder::allocAVDMem(v6, this + 337, v45, 7, 1, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v49 = 136315650;
        v50 = "allocWorkBuf_PPS";
        v51 = 1024;
        v52 = 2213;
        v53 = 2080;
        v54 = "SWrLeftPixel";
        v12 = MEMORY[0x277D86220];
        goto LABEL_126;
      }

      goto LABEL_127;
    }

    v47 = a4[12];
  }

  else
  {
    v47 = 0;
  }

  v48 = *(this + 674);
  if (v48)
  {
    bzero(v48, v47);
    v47 = a4[12];
  }

  result = 0;
  *(*(*(this + 32) + 15112) + 79284) = v47;
  return result;
}

uint64_t CAHDecHibiscusAvx::freeWorkBuf_SPS(CAHDecHibiscusAvx *this)
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

double CAHDecHibiscusAvx::freeWorkBuf_PPS(CAHDecHibiscusAvx *this, _DWORD *a2)
{
  if (!a2 || (v4 = *(*(this + 32) + 15112), *a2 > v4[19809]))
  {
    v5 = (this + 3104);
    v6 = 3;
    do
    {
      if (*v5)
      {
        CAVDDecoder::deallocAVDMem(*(this + 32), v5);
        result = 0.0;
        *v5 = 0u;
        *(v5 + 1) = 0u;
        *(v5 + 2) = 0u;
        *(v5 + 3) = 0u;
        *(v5 + 4) = 0u;
        *(v5 + 5) = 0u;
        *(v5 + 6) = 0u;
        *(v5 + 7) = 0u;
        *(v5 + 8) = 0u;
        *(v5 + 9) = 0u;
        *(v5 + 10) = 0u;
      }

      v5 += 22;
      --v6;
    }

    while (v6);
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

  if (a2)
  {
    v4 = *(*(this + 32) + 15112);
LABEL_14:
    if (a2[2] <= v4[19811])
    {
      goto LABEL_19;
    }
  }

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
LABEL_24:
    if (a2[4] <= v4[19813])
    {
      goto LABEL_29;
    }
  }

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
  if (*(this + 718))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 718);
    result = 0.0;
    *(this + 359) = 0u;
    *(this + 360) = 0u;
    *(this + 361) = 0u;
    *(this + 362) = 0u;
    *(this + 363) = 0u;
    *(this + 364) = 0u;
    *(this + 365) = 0u;
    *(this + 366) = 0u;
    *(this + 367) = 0u;
    *(this + 368) = 0u;
    *(this + 369) = 0u;
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

  if (a2)
  {
    v4 = *(*(this + 32) + 15112);
LABEL_44:
    if (a2[8] <= v4[19817])
    {
      goto LABEL_49;
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
    goto LABEL_50;
  }

  v4 = *(*(this + 32) + 15112);
LABEL_49:
  if (a2[9] <= v4[19818])
  {
    goto LABEL_54;
  }

LABEL_50:
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

  if (a2)
  {
    v4 = *(*(this + 32) + 15112);
LABEL_54:
    if (a2[10] <= v4[19819])
    {
      goto LABEL_59;
    }
  }

  if (*(this + 630))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 630);
    result = 0.0;
    *(this + 315) = 0u;
    *(this + 316) = 0u;
    *(this + 317) = 0u;
    *(this + 318) = 0u;
    *(this + 319) = 0u;
    *(this + 320) = 0u;
    *(this + 321) = 0u;
    *(this + 322) = 0u;
    *(this + 323) = 0u;
    *(this + 324) = 0u;
    *(this + 325) = 0u;
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
LABEL_64:
    if (a2[12] <= v4[19821])
    {
      return result;
    }
  }

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

  return result;
}

uint64_t CAHDecHibiscusAvx::setVPInstrFifo(uint64_t this, int a2)
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
  *(this + 5936) = a2;
  return this;
}

void *createSalviaLghDecoder(uint64_t a1)
{
  v2 = operator new(0xC48uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecSalviaLgh::CAHDecSalviaLgh(v2, a1);
  }

  return v3;
}

void *CAHDecSalviaLgh::CAHDecSalviaLgh(void *a1, uint64_t a2)
{
  CAHDec::CAHDec(a1);
  *v4 = &unk_288665C90;
  *(v4 + 256) = a2;
  *(v4 + 456) = 147980;
  *(v4 + 8) = 524;
  *(v4 + 16) = xmmword_27775BD70;
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

void CAHDecSalviaLgh::~CAHDecSalviaLgh(CAHDecSalviaLgh *this)
{
  *this = &unk_288665C90;
  CAHDecSalviaLgh::freeWorkBuf_SPS(this);
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
  CAHDecSalviaLgh::~CAHDecSalviaLgh(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecSalviaLgh::init(CAHDecSalviaLgh *this)
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
        v13 = 207;
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
      v13 = 209;
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

uint64_t CAHDecSalviaLgh::startPicture(CAHDecSalviaLgh *this, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *(this + 13) = 0;
  v3 = *(this + 34);
  *(this + 33) = v3;
  if (v3)
  {
    bzero(v3, 0x2420CuLL);
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

uint64_t CAHDecSalviaLgh::DecodePicture(CAHDecSalviaLgh *this, int a2)
{
  if (CAHDecSalviaLgh::startPicture(this, a2))
  {
    return 1;
  }

  (*(*this + 40))(this);
  (*(*this + 56))(this);
  (*(*this + 64))(this);
  (*(*this + 96))(this, 0);
  (*(*this + 48))(this, *(this + 114));
  return 0;
}

uint64_t CAHDecSalviaLgh::updateCommonRegisters(CAHDecSalviaLgh *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecSalviaLgh::populateSequenceRegisters(CAHDecSalviaLgh *this)
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

uint64_t CAHDecSalviaLgh::populatePictureRegisters(CAHDecSalviaLgh *this)
{
  v223 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(this + 33);
  v4 = *(v2 + 17800);
  if (!*(v4 + 37))
  {
    v8 = *(v4 + 100);
    v218 = *(v2 + 11988);
    v214 = 1 << v8;
    v215 = 1 << *(v4 + 96);
    v213 = v215 << v8;
    goto LABEL_5;
  }

  v5 = *(v4 + 100);
  v218 = *(v2 + 11988);
  v214 = 1 << v5;
  v215 = 1 << *(v4 + 96);
  v213 = v215 << v5;
  if (*(v4 + 40))
  {
LABEL_5:
    v7 = 766517248;
    v6 = 1;
    goto LABEL_6;
  }

  v6 = 0;
  v7 = 766509056;
LABEL_6:
  *(v3 + 48) = v7;
  v9 = v7 | ((*(*(this + 32) + 2644) != 0) << 12);
  *(v3 + 48) = v9;
  *(v3 + 48) = v9 | ((*(*(this + 32) + 2644) == 1) << 10) | 0x2E0;
  *(v3 + 52) = 0x2000000;
  LOWORD(v9) = *(v4 + 108) - 1;
  *(v3 + 56) = v9;
  *(v3 + 56) = (v9 | (*(v4 + 112) << 16)) - 0x10000;
  *(v3 + 60) = 0;
  v10 = *(*(*(this + 32) + 17800) + 2688) & 7;
  *(v3 + 64) = v10;
  v11 = v10 & 0xFFFFFFF7 | (8 * (*(*(*(this + 32) + 17800) + 2692) & 1));
  *(v3 + 64) = v11;
  v12 = v11 & 0xFFFFFF8F | (16 * (*(*(*(this + 32) + 17800) + 2696) & 7));
  *(v3 + 64) = v12;
  v13 = v12 & 0xFFFFFF7F | ((*(*(*(this + 32) + 17800) + 2700) & 1) << 7);
  *(v3 + 64) = v13;
  v14 = v13 & 0xFFFFF8FF | ((*(*(*(this + 32) + 17800) + 2704) & 7) << 8);
  *(v3 + 64) = v14;
  v15 = v14 & 0xFFFFF7FF | ((*(*(*(this + 32) + 17800) + 2708) & 1) << 11);
  *(v3 + 64) = v15;
  v16 = v15 & 0xFFFFCFFF | ((*(*(*(this + 32) + 17800) + 2712) & 3) << 12);
  *(v3 + 64) = v16;
  v17 = v16 & 0xFFFFBFFF | ((*(*(*(this + 32) + 17800) + 2716) & 1) << 14);
  *(v3 + 64) = v17;
  v18 = v17 & 0xFFFF7FFF | ((*(*(*(this + 32) + 17800) + 2720) & 1) << 15);
  *(v3 + 64) = v18;
  v19 = v18 & 0xFFF8FFFF | ((*(*(*(this + 32) + 17800) + 2724) & 7) << 16);
  *(v3 + 64) = v19;
  v20 = v19 & 0xFFF7FFFF | ((*(*(*(this + 32) + 17800) + 2728) & 1) << 19);
  *(v3 + 64) = v20;
  v21 = v20 & 0xFFEFFFFF | ((*(*(*(this + 32) + 17800) + 2732) & 1) << 20);
  *(v3 + 64) = v21;
  v22 = v21 & 0xFFDFFFFF | ((*(*(*(this + 32) + 17800) + 2736) & 1) << 21);
  *(v3 + 64) = v22;
  v23 = v22 & 0xFFBFFFFF | ((*(*(*(this + 32) + 17800) + 2740) & 1) << 22);
  *(v3 + 64) = v23;
  v24 = v23 & 0xFF7FFFFF | ((*(*(*(this + 32) + 17800) + 2744) & 1) << 23);
  *(v3 + 64) = v24;
  v25 = v24 & 0xFEFFFFFF | ((*(*(*(this + 32) + 17800) + 2748) & 1) << 24);
  *(v3 + 64) = v25;
  v26 = v25 & 0xFDFFFFFF | ((*(*(*(this + 32) + 17800) + 2752) & 1) << 25);
  *(v3 + 64) = v26;
  *(v3 + 64) = v26 & 0xFBFFFFFF | ((*(*(*(this + 32) + 17800) + 2756) & 1) << 26);
  *(v3 + 68) = 0;
  if (*(v4 + 60))
  {
    v27 = *(v4 + 69) & 0x7F;
    *(v3 + 68) = v27;
    v28 = v27 & 0xFFFFC07F | ((*(v4 + 68) & 0x7F) << 7);
    *(v3 + 68) = v28;
    v29 = v28 & 0xFFE03FFF | ((*(v4 + 67) & 0x7F) << 14);
    *(v3 + 68) = v29;
    v30 = v29 & 0xF01FFFFF | ((*(v4 + 66) & 0x7F) << 21);
    *(v3 + 68) = v30;
    *(v3 + 68) = v30 & 0x8FFFFFFF | ((*(v4 + 59) & 7) << 28);
    v31 = *(v4 + 73) & 0x7F;
    *(v3 + 72) = v31;
    v32 = v31 & 0xFFFFC07F | ((*(v4 + 72) & 0x7F) << 7);
    *(v3 + 72) = v32;
    v33 = v32 & 0xFFF03FFF | ((*(v4 + 58) & 0x3F) << 14);
  }

  else
  {
    *(v3 + 68) = (*(v4 + 59) & 7) << 28;
    v33 = (*(v4 + 58) & 0x3F) << 14;
  }

  v34 = 0;
  *(v3 + 72) = v33;
  *(v3 + 76) = 0;
  v35 = *(v4 + 77) & 0x1F;
  *(v3 + 76) = v35;
  v36 = v35 & 0xFFFFFC1F | (32 * (*(v4 + 76) & 0x1F));
  *(v3 + 76) = v36;
  v37 = v36 & 0xFFFF83FF | ((*(v4 + 75) & 0x1F) << 10);
  *(v3 + 76) = v37;
  *(v3 + 76) = v37 | (*(v4 + 74) << 15);
  v38 = v3 + 80;
  v39 = (v4 + 208);
  v40 = (v4 + 242);
  do
  {
    v41 = *(v4 + 78);
    *(v38 + 4 * v34) = 0;
    if (v41)
    {
      v42 = *v39 != 0;
      *(v38 + 4 * v34) = v42;
      v43 = v42 | (8 * (*(v39 - 1) != 0));
    }

    else
    {
      v43 = 0;
    }

    *(v38 + 4 * v34) = v43;
    v44 = v43 & 0xFFFFFFF9 | (2 * (*v40 & 3));
    *(v38 + 4 * v34) = v44;
    if (v41)
    {
      if (*(v39 - 2))
      {
        *(v38 + 4 * v34) = v44 | 0x800;
        v45 = v44 & 0xFFFFF00F | 0x800 | (16 * (*(v40 - 1) & 0x7F));
      }

      else
      {
        v45 = v44 & 0xFFFFF00F;
      }

      *(v38 + 4 * v34) = v45;
      if (*(v39 - 3))
      {
        v46 = v45 | 0x200000;
        *(v38 + 4 * v34) = v46;
        v47 = (*(v40 - 2) & 0x1FF) << 12;
        goto LABEL_21;
      }
    }

    else
    {
      v45 = v44 & 0xFFFFF00F;
    }

    v47 = 0;
    v46 = v45 & 0xFFDFFFFF;
LABEL_21:
    *(v38 + 4 * v34++) = v46 & 0xFFE00FFF | v47;
    v39 += 4;
    v40 += 4;
  }

  while (v34 != 8);
  *(v3 + 152) = 0x20000;
  v216 = v6;
  if (v6)
  {
    v217 = 8;
  }

  else
  {
    v212 = v3;
    v48 = (v3 + 112);
    v49 = 2208;
    v217 = 3;
    v50 = MEMORY[0x277D86220];
    do
    {
      v48[11] = 0x1000000;
      *v48 = 0;
      v51 = **(*(this + 32) + 8 * v49) - 1;
      *v48 = v51;
      *v48 = (v51 | (*(*(*(this + 32) + 8 * v49) + 4) << 16)) - 0x10000;
      v48[3] = 0;
      v52 = ((**(*(this + 32) + 8 * v49) << 14) / *(v4 + 108));
      v48[3] = v52;
      v53 = v52 | (((*(*(*(this + 32) + 8 * v49) + 4) << 14) / *(v4 + 112)) << 16);
      v48[3] = v53;
      if ((v52 - 1024) >= 0x7C01 && os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v220 = "populatePictureRegisters";
        v221 = 1024;
        v222 = 516;
        _os_log_impl(&dword_277606000, v50, OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
        v53 = v48[3];
      }

      if ((v53 - 0x4000000) >= 0x7C010000 && os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v220 = "populatePictureRegisters";
        v221 = 1024;
        v222 = 517;
        _os_log_impl(&dword_277606000, v50, OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
      }

      ++v49;
      ++v48;
    }

    while (v49 != 2211);
    v3 = v212;
  }

  *(v3 + 144) = 0;
  v54 = *(v4 + 2672);
  *(v3 + 144) = v54;
  *(v3 + 144) = v54 | (*(v4 + 2676) << 16);
  v55 = *(v4 + 2680);
  *(v3 + 148) = v55;
  *(v3 + 148) = v55 | (*(v4 + 2684) << 16);
  v56 = this + 464;
  for (i = 168; i != 196; i += 4)
  {
    *(*(this + 33) + i) = 0;
    v58 = *(this + 33);
    v59 = *(v58 + i);
    *(v58 + i) = 0;
    *(*(this + 33) + i) ^= 0xFFFFFFu;
    v60 = *(this + 33);
    v61 = *(v60 + i);
    *(v60 + i) = v59;
    if (*v56 || *(v56 + 38) || *(v56 + 39))
    {
      result = CAHDec::addToPatcherList(this, v56, i, 0, 0xFFFFFFFFLL, 8, v61, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + i + 28) = 0;
    *(*(this + 33) + i + 28) = *(*(this + 33) + i + 28) & 0x800001FF | (((*(this + 780) >> 9) & 0x3FFFFF) << 9);
    v56 += 176;
  }

  *(*(this + 33) + 224) = 0;
  v63 = *(this + 33);
  v64 = *(v63 + 224);
  *(v63 + 224) = 0;
  *(*(this + 33) + 224) ^= 0xFFFFFFu;
  v65 = *(this + 33);
  v66 = *(v65 + 224);
  *(v65 + 224) = v64;
  v67 = *(this + 32);
  if (*(v67 + 5072) || *(v67 + 5224) || *(v67 + 5228))
  {
    result = CAHDec::addToPatcherList(this, (v67 + 5072), 224, 0, 0xFFFFFFFFLL, 8, v66, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 228) = 0;
  *(*(this + 33) + 280) = 0;
  v68 = *(this + 33);
  v69 = *(v68 + 280);
  *(v68 + 280) = 0;
  *(*(this + 33) + 280) ^= 0xFFFFFFu;
  v70 = *(this + 33);
  v71 = *(v70 + 280);
  *(v70 + 280) = v69;
  if (*(this + 278) || *(this + 594) || *(this + 595))
  {
    result = CAHDec::addToPatcherList(this, this + 278, 280, 0, 0xFFFFFFFFLL, 8, v71, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 232) = 0;
  v72 = *(this + 33);
  v73 = *(v72 + 232);
  *(v72 + 232) = 0;
  *(*(this + 33) + 232) ^= 0xFFFFFFu;
  v74 = *(this + 33);
  v75 = *(v74 + 232);
  *(v74 + 232) = v73;
  if (*(this + 234) || *(this + 506) || *(this + 507))
  {
    result = CAHDec::addToPatcherList(this, this + 234, 232, 0, 0xFFFFFFFFLL, 8, v75, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 236) = 0;
  v76 = *(this + 33);
  v77 = *(v76 + 236);
  *(v76 + 236) = 0;
  *(*(this + 33) + 236) ^= 0xFFFFFFu;
  v78 = *(this + 33);
  v79 = *(v78 + 236);
  *(v78 + 236) = v77;
  if (*(this + 256) || *(this + 550) || *(this + 551))
  {
    result = CAHDec::addToPatcherList(this, this + 256, 236, 0, 0xFFFFFFFFLL, 8, v79, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 240) = 0;
  *(*(this + 33) + 244) = 0;
  v80 = *(this + 33);
  v81 = *(v80 + 244);
  *(v80 + 244) = 0;
  *(*(this + 33) + 244) ^= 0xFFFFFFu;
  v82 = *(this + 33);
  v83 = *(v82 + 244);
  *(v82 + 244) = v81;
  if (*(this + 300) || *(this + 638) || *(this + 639))
  {
    result = CAHDec::addToPatcherList(this, this + 300, 244, 0, 0xFFFFFFFFLL, 8, v83, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 248) = 0;
  v84 = *(this + 33);
  v85 = *(v84 + 248);
  *(v84 + 248) = 0;
  *(*(this + 33) + 248) ^= 0xFFFFFFu;
  v86 = *(this + 33);
  v87 = *(v86 + 248);
  *(v86 + 248) = v85;
  if (*(this + 322) || *(this + 682) || *(this + 683))
  {
    result = CAHDec::addToPatcherList(this, this + 322, 248, 0, 0xFFFFFFFFLL, 8, v87, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 252) = 0;
  v88 = *(this + 33);
  v89 = *(v88 + 252);
  *(v88 + 252) = 0;
  *(*(this + 33) + 252) ^= 0xFFFFFFu;
  v90 = *(this + 33);
  v91 = *(v90 + 252);
  *(v90 + 252) = v89;
  if (*(this + 344) || *(this + 726) || *(this + 727))
  {
    result = CAHDec::addToPatcherList(this, this + 344, 252, 0, 0xFFFFFFFFLL, 8, v91, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 256) = 0;
  v92 = *(this + 33);
  v93 = *(v92 + 256);
  *(v92 + 256) = 0;
  *(*(this + 33) + 256) ^= 0xFFFFFFu;
  v94 = *(this + 33);
  v95 = *(v94 + 256);
  *(v94 + 256) = v93;
  if (*(this + 366) || *(this + 770) || *(this + 771))
  {
    result = CAHDec::addToPatcherList(this, this + 366, 256, 0, 0xFFFFFFFFLL, 8, v95, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 260) = 0;
  v96 = *(this + 33);
  v97 = *(v96 + 260);
  *(v96 + 260) = 0;
  *(*(this + 33) + 260) ^= 0xFFFFFFu;
  v98 = *(this + 33);
  v99 = *(v98 + 260);
  *(v98 + 260) = v97;
  v100 = (*(this + 32) + 176 * *(*(this + 32) + 17808) + 2960);
  if (*v100 || *(*(this + 32) + 176 * *(*(this + 32) + 17808) + 3112) || *(*(this + 32) + 176 * *(*(this + 32) + 17808) + 3116))
  {
    result = CAHDec::addToPatcherList(this, v100, 260, 0, 0xFFFFFFFFLL, 8, v99, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 264) = *(*(this + 33) + 267) << 24;
  v101 = *(this + 33);
  v102 = *(v101 + 264);
  *(v101 + 264) = 0;
  *(*(this + 33) + 264) ^= 0xFFFFFFu;
  v103 = *(this + 33);
  v104 = *(v103 + 264);
  *(v103 + 264) = v102;
  v105 = (*(this + 32) + 176 * *(*(this + 32) + 5964) + 3664);
  if (*v105 || *(*(this + 32) + 176 * *(*(this + 32) + 5964) + 3816) || *(*(this + 32) + 176 * *(*(this + 32) + 5964) + 3820))
  {
    result = CAHDec::addToPatcherList(this, v105, 264, 0, 0xFFFFFFFFLL, 8, v104, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 268) = *(*(this + 33) + 271) << 24;
  v106 = *(this + 33);
  v107 = *(v106 + 268);
  *(v106 + 268) = 0;
  *(*(this + 33) + 268) ^= 0xFFFFFFu;
  v108 = *(this + 33);
  v109 = *(v108 + 268);
  *(v108 + 268) = v107;
  v110 = (*(this + 32) + 176 * *(*(this + 32) + 5960) + 3664);
  if (*v110 || *(*(this + 32) + 176 * *(*(this + 32) + 5960) + 3816) || *(*(this + 32) + 176 * *(*(this + 32) + 5960) + 3820))
  {
    result = CAHDec::addToPatcherList(this, v110, 268, 0, 0xFFFFFFFFLL, 8, v109, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 272) = 0;
  v111 = *(this + 33);
  v112 = *(v111 + 272);
  *(v111 + 272) = 0;
  *(*(this + 33) + 272) ^= 0xFFFFFFu;
  v113 = *(this + 33);
  v114 = *(v113 + 272);
  *(v113 + 272) = v112;
  v115 = (*(this + 32) + 176 * *(*(this + 32) + 5956) + 5248);
  if (*v115 || *(*(this + 32) + 176 * *(*(this + 32) + 5956) + 5400) || *(*(this + 32) + 176 * *(*(this + 32) + 5956) + 5404))
  {
    result = CAHDec::addToPatcherList(this, v115, 272, 0, 0xFFFFFFFFLL, 8, v114, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 276) = 0;
  v116 = *(this + 33);
  v117 = *(v116 + 276);
  *(v116 + 276) = 0;
  *(*(this + 33) + 276) ^= 0xFFFFFFu;
  v118 = *(this + 33);
  v119 = *(v118 + 276);
  *(v118 + 276) = v117;
  v120 = (*(this + 32) + 176 * *(*(this + 32) + 5952) + 5248);
  if (*v120 || *(*(this + 32) + 176 * *(*(this + 32) + 5952) + 5400) || *(*(this + 32) + 176 * *(*(this + 32) + 5952) + 5404))
  {
    result = CAHDec::addToPatcherList(this, v120, 276, 0, 0xFFFFFFFFLL, 8, v119, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 284) = 0;
  *(*(this + 33) + 288) = 0;
  *(*(this + 33) + 292) = 0;
  *(*(this + 33) + 296) = 0;
  v121 = *(this + 33);
  v122 = *(v121 + 288);
  *(v121 + 288) = 0;
  *(*(this + 33) + 288) ^= 0x1FFFFFFu;
  v123 = *(this + 33);
  v124 = *(v123 + 288);
  *(v123 + 288) = v122;
  v125 = *(*(this + 32) + 376 * v218 + 5976);
  if (*v125 || *(v125 + 152) || *(v125 + 156))
  {
    result = CAHDec::addToPatcherList(this, v125, 288, *(v125 + 52), 0xFFFFFFFFLL, 7, v124, 4);
    if (result)
    {
      return result;
    }
  }

  v126 = *(this + 33);
  v127 = *(v126 + 296);
  *(v126 + 296) = 0;
  *(*(this + 33) + 296) ^= 0x1FFFFFFu;
  v128 = *(this + 33);
  v129 = *(v128 + 296);
  *(v128 + 296) = v127;
  v130 = *(this + 32);
  v131 = *(v130 + 376 * v218 + 5976);
  if (*v131 || *(v131 + 152) || *(v131 + 156))
  {
    result = CAHDec::addToPatcherList(this, v131, 296, *(v131 + 56), 0xFFFFFFFFLL, 7, v129, 4);
    if (result)
    {
      return result;
    }

    v130 = *(this + 32);
  }

  v132 = *(v130 + 2648);
  v133 = *(this + 33);
  v134 = *(v133 + 284);
  *(v133 + 284) = 0;
  *(*(this + 33) + 284) ^= 0x1FFFFFFu;
  v135 = *(this + 33);
  v136 = *(v135 + 284);
  *(v135 + 284) = v134;
  v137 = *(this + 32) + 5968;
  if (v132 == 1)
  {
    v138 = *(v137 + 376 * v218 + 8);
    if (!*v138 && !*(v138 + 152) && !*(v138 + 156) || (result = CAHDec::addToPatcherList(this, v138, 284, *(v138 + 64), 0xFFFFFFFFLL, 7, v136, 4), !result))
    {
      v139 = *(this + 33);
      v140 = *(v139 + 292);
      *(v139 + 292) = 0;
      *(*(this + 33) + 292) ^= 0x1FFFFFFu;
      v141 = *(this + 33);
      v142 = *(v141 + 292);
      *(v141 + 292) = v140;
      v143 = *(*(this + 32) + 376 * v218 + 5976);
      if (*v143 || *(v143 + 152) || *(v143 + 156))
      {
        v144 = *(v143 + 68);
        v145 = this;
        goto LABEL_118;
      }

      goto LABEL_119;
    }

    return result;
  }

  v146 = v137 + 376 * v218;
  v148 = *(v146 + 24);
  v147 = v146 + 24;
  if (v148 || *(v147 + 152) || *(v147 + 156))
  {
    result = CAHDec::addToPatcherList(this, v147, 284, 0, 0xFFFFFFFFLL, 7, v136, 4);
    if (result)
    {
      return result;
    }
  }

  v149 = *(this + 33);
  v150 = *(v149 + 292);
  *(v149 + 292) = 0;
  *(*(this + 33) + 292) ^= 0x1FFFFFFu;
  v151 = *(this + 33);
  v142 = *(v151 + 292);
  *(v151 + 292) = v150;
  v143 = *(this + 32) + 376 * v218 + 6168;
  if (*v143 || *(*(this + 32) + 376 * v218 + 6320) || *(*(this + 32) + 376 * v218 + 6324))
  {
    v145 = this;
    v144 = 0;
LABEL_118:
    result = CAHDec::addToPatcherList(v145, v143, 292, v144, 0xFFFFFFFFLL, 7, v142, 4);
    if (result)
    {
      return result;
    }
  }

LABEL_119:
  if ((v216 & 1) == 0)
  {
    v175 = 0;
    v176 = 17664;
    do
    {
      v177 = *(*(*(this + 32) + v176) + 40);
      *(*(this + 33) + v175 + 312) = 0;
      *(*(this + 33) + v175 + 324) = 0;
      *(*(this + 33) + v175 + 336) = 0;
      *(*(this + 33) + v175 + 348) = 0;
      v178 = *(this + 33) + v175;
      v179 = *(v178 + 324);
      *(v178 + 324) = 0;
      *(*(this + 33) + v175 + 324) ^= 0x1FFFFFFu;
      v180 = *(this + 33) + v175;
      v181 = *(v180 + 324);
      *(v180 + 324) = v179;
      v182 = *(v177 + 8);
      if (*v182 || *(v182 + 152) || *(v182 + 156))
      {
        result = CAHDec::addToPatcherList(this, v182, v175 + 324, *(v182 + 52), 0xFFFFFFFFLL, 7, v181, 4);
        if (result)
        {
          return result;
        }
      }

      v183 = *(this + 33) + v175;
      v184 = *(v183 + 348);
      *(v183 + 348) = 0;
      *(*(this + 33) + v175 + 348) ^= 0x1FFFFFFu;
      v185 = *(this + 33) + v175;
      v186 = *(v185 + 348);
      *(v185 + 348) = v184;
      v187 = *(v177 + 8);
      if (*v187 || *(v187 + 152) || *(v187 + 156))
      {
        result = CAHDec::addToPatcherList(this, v187, v175 + 348, *(v187 + 56), 0xFFFFFFFFLL, 7, v186, 4);
        if (result)
        {
          return result;
        }
      }

      v188 = *(*(this + 32) + 2648);
      v189 = *(this + 33) + v175;
      v190 = *(v189 + 312);
      *(v189 + 312) = 0;
      *(*(this + 33) + v175 + 312) ^= 0x1FFFFFFu;
      v191 = *(this + 33) + v175;
      v192 = *(v191 + 312);
      *(v191 + 312) = v190;
      if (v188 == 1)
      {
        v193 = *(v177 + 8);
        if (*v193 || *(v193 + 152) || *(v193 + 156))
        {
          result = CAHDec::addToPatcherList(this, v193, v175 + 312, *(v193 + 64), 0xFFFFFFFFLL, 7, v192, 4);
          if (result)
          {
            return result;
          }
        }

        v194 = *(this + 33) + v175;
        v195 = *(v194 + 336);
        *(v194 + 336) = 0;
        *(*(this + 33) + v175 + 336) ^= 0x1FFFFFFu;
        v196 = *(this + 33) + v175;
        v197 = *(v196 + 336);
        *(v196 + 336) = v195;
        v198 = *(v177 + 8);
        if (*v198 || *(v198 + 152) || *(v198 + 156))
        {
          v199 = *(v198 + 68);
          v200 = v175 | 0x150;
          v201 = this;
          goto LABEL_166;
        }
      }

      else
      {
        if (*(v177 + 24) || *(v177 + 176) || *(v177 + 180))
        {
          result = CAHDec::addToPatcherList(this, (v177 + 24), v175 + 312, 0, 0xFFFFFFFFLL, 7, v192, 4);
          if (result)
          {
            return result;
          }
        }

        v202 = *(this + 33) + v175;
        v203 = *(v202 + 336);
        *(v202 + 336) = 0;
        *(*(this + 33) + v175 + 336) ^= 0x1FFFFFFu;
        v204 = *(this + 33) + v175;
        v197 = *(v204 + 336);
        *(v204 + 336) = v203;
        v198 = v177 + 200;
        if (*(v177 + 200) || *(v177 + 352) || *(v177 + 356))
        {
          v200 = v175 | 0x150;
          v201 = this;
          v199 = 0;
LABEL_166:
          result = CAHDec::addToPatcherList(v201, v198, v200, v199, 0xFFFFFFFFLL, 7, v197, 4);
          if (result)
          {
            return result;
          }
        }
      }

      v176 += 8;
      v175 += 4;
    }

    while (v175 != 12);
  }

  v152 = subWidth[*(*(*(this + 32) + 17800) + 4)];
  *(*(this + 33) + 360) = 0;
  *(*(this + 33) + 364) = 0;
  *(*(this + 33) + 368) = 0;
  *(*(this + 33) + 372) = 0;
  if (*(*(this + 32) + 2644))
  {
    v153 = *(this + 33);
    v154 = *(v153 + 360);
    *(v153 + 360) = 0;
    *(*(this + 33) + 360) ^= 0xFFFFFFu;
    v155 = *(this + 33);
    v156 = *(v155 + 360);
    *(v155 + 360) = v154;
    v157 = *(*(this + 32) + 12008);
    if (*v157 || *(v157 + 152) || *(v157 + 156))
    {
      result = CAHDec::addToPatcherList(this, v157, 360, *(v157 + 52), 0xFFFFFFFFLL, 8, v156, 4);
      if (result)
      {
        return result;
      }
    }

    v158 = *(this + 33);
    v159 = *(v158 + 364);
    *(v158 + 364) = 0;
    *(*(this + 33) + 364) ^= 0xFFFFFFu;
    v160 = *(this + 33);
    v161 = *(v160 + 364);
    *(v160 + 364) = v159;
    v162 = *(*(this + 32) + 12008);
    if (*v162 || *(v162 + 152) || *(v162 + 156))
    {
      result = CAHDec::addToPatcherList(this, v162, 364, *(v162 + 56), 0xFFFFFFFFLL, 8, v161, 4);
      if (result)
      {
        return result;
      }
    }

    v163 = *(this + 33);
    v164 = *(v163 + 368);
    *(v163 + 368) = 0;
    *(*(this + 33) + 368) ^= 0xC0000000;
    v165 = *(this + 33);
    v166 = *(v165 + 368);
    *(v165 + 368) = v164;
    v167 = *(*(this + 32) + 12008);
    if (*v167 || *(v167 + 152) || *(v167 + 156))
    {
      result = CAHDec::addToPatcherList(this, v167, 368, *(v167 + 52), 192, 6, v166, 4);
      if (result)
      {
        return result;
      }
    }

    v168 = *(this + 33);
    v169 = *(v168 + 372);
    *(v168 + 372) = 0;
    *(*(this + 33) + 372) ^= 0xC0000000;
    v170 = *(this + 33);
    v171 = *(v170 + 372);
    *(v170 + 372) = v169;
    v172 = *(this + 32);
    v173 = *(v172 + 12008);
    if (*v173 || *(v173 + 152) || *(v173 + 156))
    {
      result = CAHDec::addToPatcherList(this, v173, 372, *(v173 + 56), 192, 6, v171, 4);
      if (result)
      {
        return result;
      }

      v172 = *(this + 32);
    }

    if (*(v172 + 8) == 1)
    {
      *(*(this + 33) + 368) = *(*(this + 33) + 368) & 0xFFFFC003 | (4 * ((*(*(v172 + 12008) + 76) >> 6) & 0xFFF));
      v174 = (*(*(this + 32) + 12008) + 80);
    }

    else
    {
      if (CAHDecTansyLgh::getSWRStride(this, *(v3 + 148) + 1, *(v4 + 105) - 8, *(v4 + 105) - 8, v152))
      {
        return 0xFFFFFFFFLL;
      }

      *(*(this + 33) + 368) = *(*(this + 33) + 368) & 0xFFFFC003 | (4 * ((*(this + 783) >> 6) & 0xFFF));
      v174 = (this + 3136);
    }

    *(*(this + 33) + 372) = *(*(this + 33) + 372) & 0xFFFF8003 | (4 * ((*v174 >> 6) & 0x1FFF));
  }

  if (v213 < 2)
  {
    result = 0;
    v211 = *(this + 33);
    *(v211 + 376) = 65537;
    *(v211 + 380) = 0;
    *(v211 + 382) = *(v4 + 108) >> 6;
    *(v211 + 510) = 0;
    *(v211 + 512) = *(v4 + 112) >> 6;
  }

  else
  {
    v205 = *(this + 33);
    *(v205 + 376) = v215;
    if (v214 >= 1)
    {
      v206 = v214;
      v207 = (*(*(this + 32) + 17800) + 2786);
      do
      {
        if ((*v207 & 1) == 0)
        {
          *(v205 + 510 + 2 * v217) = *(v207 - 26) >> 3;
        }

        v207 += 1792;
        --v206;
      }

      while (v206);
    }

    *(v205 + 378) = v214;
    if (v215 < 1)
    {
      return 0;
    }

    else
    {
      v208 = v205 + 380;
      v209 = v215;
      v210 = *(*(this + 32) + 17800) + 2768;
      result = 0;
      do
      {
        if ((*(v210 + 18) & 1) == 0)
        {
          *(v208 + 2 * v217) = *v210 >> 3;
        }

        v210 += 28;
        --v209;
      }

      while (v209);
    }
  }

  return result;
}

uint64_t CAHDecSalviaLgh::populateAvdWork(CAHDecSalviaLgh *this)
{
  v48 = *MEMORY[0x277D85DE8];
  v1 = *(this + 32);
  v2 = *(this + 33);
  v42 = 0;
  v3 = *(v1 + 17800);
  v38 = *(v3 + 16);
  v43 = 0;
  v4 = *(v3 + 312);
  if (!v4)
  {
    LOWORD(v7) = 0;
    goto LABEL_34;
  }

  v39 = 0;
  v5 = 0;
  LODWORD(v6) = 0;
  v7 = 0;
  v8 = v2 + 524;
  v9 = *(v3 + 316);
  v10 = 2786;
  v11 = v9;
  v37 = v8;
  while (1)
  {
    v36 = v10;
    if (v11)
    {
      break;
    }

LABEL_31:
    v10 = v36 + 1792;
    if (++v39 >= v4)
    {
      v2 = *(this + 33);
LABEL_34:
      result = 0;
      *(v2 + 26) = v7;
      *(v2 + 32) = 524;
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
      goto LABEL_30;
    }

    *(v8 + 4) = v7;
    *(v8 + 6) = 0;
    *(v8 + 10) = v5;
    if (!CAVDAvxDecoder::GetTileMemInfo(v13, v38 + *(v15 - 6), &v43, &v42))
    {
      return 0xFFFFFFFFLL;
    }

    v16 = v43;
    if (*v43 || *(v43 + 152) || *(v43 + 156))
    {
      v40 = v5;
      v17 = v7;
      v18 = v3;
      v19 = v42;
      if (HIDWORD(v42) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v45 = "populateAvdWork";
        v46 = 1024;
        v47 = 876;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v19 = v42;
      }

      result = CAHDec::addToPatcherList(this, v16, 36 * v6 + 544, v19, 0xFFFFFFFFLL, 0, -1, 4);
      v3 = v18;
      v7 = v17;
      v5 = v40;
      if (result)
      {
        return result;
      }
    }

    v21 = v14 + v10;
    v22 = *(v15 - 26);
    v23 = v22 + 7;
    if (v22 >= 0)
    {
      v23 = *(v15 - 26);
    }

    v24 = *(v21 - 18);
    *(v8 + 24) = *(v21 - 10);
    *(v8 + 28) = (v23 << 13) & 0xFFFF0000 | (v24 / 8);
    v25 = *(v21 - 22);
    v27 = v25 - 1;
    v26 = v25 < 1;
    v28 = v25 + 6;
    if (!v26)
    {
      v28 = v27;
    }

    v29 = (v28 << 13) & 0xFFFF0000;
    v30 = *(v21 - 14);
    v31 = v30 - 1;
    v26 = v30 < 1;
    v32 = v30 + 6;
    if (!v26)
    {
      v32 = v31;
    }

    *(v8 + 32) = v29 | (v32 >> 3);
    if (v22 + v24)
    {
      v33 = 4;
    }

    else
    {
      v33 = 5;
    }

    *(v8 + 12) = v33;
    v4 = *(v3 + 312);
    v9 = *(v3 + 316);
    if (v12 == v9 && v39 == v4)
    {
      v35 = 5;
    }

    else
    {
      v35 = 4;
    }

    *(v8 + 14) = v35;
    ++v5;
    ++v7;
    v8 += 36;
    v6 = 0x8E38E38E38E38E39 * ((v8 - v37) >> 2);
LABEL_30:
    ++v12;
    v10 += 28;
    v11 = v9;
    if (v12 >= v9)
    {
      goto LABEL_31;
    }
  }
}

uint64_t CAHDecSalviaLgh::allocWorkBuf_SPS(CAHDecSalviaLgh *this, int *a2)
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
        v37 = 1105;
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
    v37 = 1111;
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
        v37 = 1089;
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
    v37 = 1094;
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

uint64_t CAHDecSalviaLgh::allocWorkBuf_PPS(CAHDecSalviaLgh *this, void *a2, void *a3, void *a4)
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
        v26 = 1187;
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
        v26 = 1190;
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
        v26 = 1196;
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
        v26 = 1202;
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
        v26 = 1210;
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
      v26 = 1218;
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
    v26 = 1224;
    v27 = 2080;
    v28 = "AZLeftPix";
    v16 = MEMORY[0x277D86220];
    goto LABEL_34;
  }

  return result;
}

uint64_t CAHDecSalviaLgh::freeWorkBuf_SPS(CAHDecSalviaLgh *this)
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

uint64_t *CAHDecSalviaLgh::freeWorkBuf_PPS(uint64_t *this, void *a2)
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

uint64_t CAHDecSalviaLgh::setVPInstrFifo(uint64_t this, int a2)
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

uint64_t createCactusAvcDecoder(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "createCactusAvcDecoder";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Cactus AVD is not supported in this AppleAVD driver!!!", &v2, 0xCu);
  }

  return 0;
}

uint64_t lgh_fb_rel_cb(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  (*(*a2 + 48))(a2, *v3, 0);
  v4 = v3[1];
  v5 = *(*a2 + 48);

  return v5(a2, v4, 1);
}

void CAVDLghDecoder::CAVDLghDecoder(CAVDLghDecoder *this, void *a2, int a3, int a4)
{
  v6 = this + 0x4000;
  CAVDDecoder::CAVDDecoder(this, a2, a3);
  *v7 = &unk_2886667D0;
  *(v7 + 17664) = 0;
  *(v7 + 17672) = 0u;
  *(v6 + 352) = 0;
  *(v7 + 17800) = 0;
  *(v6 + 356) = 0;
  *(v7 + 5952) = 0u;
  *(v7 + 17816) = 0u;
  *(v7 + 19052) = 0u;
  *(v7 + 19044) = 0;
  *(v7 + 2344) = a2;
  v6[2656] = 1;
  *(v6 + 668) = 0;
  *(v7 + 2892) = 0u;
  *(v7 + 2908) = 0;
  *(v7 + 12000) = 0u;
  if (a4)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  *(v7 + 19032) = 0;
  *(v7 + 18584) = 0uLL;
  *(v7 + 18600) = 0uLL;
  *(v7 + 18616) = 0uLL;
  *(v7 + 18632) = 0uLL;
  *(v7 + 18648) = 0uLL;
  *(v7 + 18664) = 0uLL;
  *(v7 + 18680) = 0uLL;
  *(v7 + 18696) = 0uLL;
  *(v7 + 18712) = 0uLL;
  *(v7 + 18728) = 0uLL;
  *(v7 + 18744) = 0uLL;
  *(v7 + 18760) = 0uLL;
  *(v7 + 18776) = 0uLL;
  *(v7 + 18792) = 0uLL;
  *(v7 + 18808) = 0uLL;
  *(v7 + 18824) = 0uLL;
  *(v7 + 18840) = 0uLL;
  *(v7 + 18856) = 0uLL;
  *(v7 + 18872) = 0uLL;
  *(v7 + 18888) = 0uLL;
  *(v7 + 18904) = 0uLL;
  *(v7 + 18920) = 0uLL;
  *(v7 + 18936) = 0uLL;
  *(v7 + 18952) = 0uLL;
  *(v7 + 18968) = 0uLL;
  *(v7 + 18984) = 0uLL;
  *(v7 + 19000) = 0uLL;
  *(v7 + 19016) = 0uLL;
  *(v7 + 2644) = v8;
  bzero((v7 + 24), 0x810uLL);
}

uint64_t CAVDLghDecoder::VAInit(CAVDLghDecoder *this)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = operator new(0x1ED0uLL, MEMORY[0x277D826F0]);
  if (!v2)
  {
    *(this + 2227) = 0;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 301;
    }

    v12 = 136315138;
    v13 = "VAInit";
    v10 = MEMORY[0x277D86220];
    v11 = "AppleAVD: ERROR: %s(): Error creating LGH parser!\n";
LABEL_20:
    _os_log_impl(&dword_277606000, v10, OS_LOG_TYPE_DEFAULT, v11, &v12, 0xCu);
    return 301;
  }

  v3 = v2;
  LGH_Syntax::LGH_Syntax(v2, 196608);
  *(this + 2227) = v3;
  v4 = malloc_type_calloc(0x26C8uLL, 1uLL, 0x101004094798BEEuLL);
  *(this + 2225) = v4;
  if (!v4)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 301;
    }

    v12 = 136315138;
    v13 = "VAInit";
    v10 = MEMORY[0x277D86220];
    v11 = "AppleAVD: ERROR: %s(): m_cur_pic_info allocation failed\n";
    goto LABEL_20;
  }

  v5 = malloc_type_calloc(0xB08uLL, 1uLL, 0x1020040C521D5D0uLL);
  *(this + 2381) = v5;
  if (!v5)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 301;
    }

    v12 = 136315138;
    v13 = "VAInit";
    v10 = MEMORY[0x277D86220];
    v11 = "AppleAVD: ERROR: %s(): m_out_q allocation failed\n";
    goto LABEL_20;
  }

  *(this + 2319) = 0xF00000000;
  bzero(this + 17832, 0x2D0uLL);
  *(this + 2320) = this + 17832;
  *(this + 2321) = this;
  *(this + 2322) = lgh_fb_rel_cb;
  v6 = operator new(0x68uLL, MEMORY[0x277D826F0]);
  if (!v6)
  {
    *(this + 2228) = 0;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 301;
    }

    v12 = 136315138;
    v13 = "VAInit";
    v10 = MEMORY[0x277D86220];
    v11 = "AppleAVD: ERROR: %s(): Failed to create RLM\n";
    goto LABEL_20;
  }

  v7 = v6;
  LGH_RLM::LGH_RLM(v6, 0x30000u, this + 18552);
  *(this + 2228) = v7;
  HwDecoder = CAVDLghDecoder::allocateHwDecoder(this);
  *(this + 262) = HwDecoder;
  if (!HwDecoder)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "VAInit";
      v10 = MEMORY[0x277D86220];
      v11 = "AppleAVD: ERROR: %s(): Failed to create HW Decoder object!\n";
      goto LABEL_20;
    }

    return 301;
  }

  if (!(*(*HwDecoder + 16))(HwDecoder))
  {
    if ((*(**(this + 262) + 168))(*(this + 262)))
    {
      return 0;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 301;
    }

    v12 = 136315138;
    v13 = "VAInit";
    v10 = MEMORY[0x277D86220];
    v11 = "AppleAVD: ERROR: %s(): HW Decoder failed to allocate decodeBuffer!\n";
    goto LABEL_20;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "VAInit";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Failed to initialize HW Decoder object!\n", &v12, 0xCu);
  }

  return 307;
}

CAHDecDahliaLgh *CAVDLghDecoder::allocateHwDecoder(CAVDLghDecoder *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(this + 588);
  if (v1 <= 399)
  {
    if (v1 <= 300)
    {
      if (v1 <= 20)
      {
        if (v1 != 14 && v1 != 16)
        {
          goto LABEL_85;
        }

        return createCloverLghDecoder(this);
      }

      else
      {
        switch(v1)
        {
          case 21:

            return createSalviaLghDecoder(this);
          case 26:

            return createViolaLghDecoder(this);
          case 28:

            return createLotusLghDecoder(this);
          default:
            goto LABEL_85;
        }
      }
    }

    else if (v1 > 323)
    {
      switch(v1)
      {
        case 324:

          return createClaryLghDecoder(this);
        case 328:

          return createCactusLghDecoder(this);
        case 332:

          return createNarcissusLghDecoder(this);
        default:
          goto LABEL_85;
      }
    }

    else
    {
      switch(v1)
      {
        case 301:

          return createLilyDLghDecoder(this);
        case 308:

          return createDahliaLghDecoder(this);
        case 316:

          return createRadishLghDecoder(this);
        default:
          goto LABEL_85;
      }
    }
  }

  else
  {
    if (v1 <= 423)
    {
      if (v1 <= 407)
      {
        if ((v1 - 400) < 3 || v1 == 404)
        {

          return createIxoraLghDecoder(this);
        }

        goto LABEL_85;
      }

      if ((v1 - 416) < 2)
      {

        return createDaisyLghDecoder(this);
      }

      if (v1 == 408)
      {

        return createCatnipLghDecoder(this);
      }

LABEL_85:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v4 = 136315394;
        v5 = "allocateHwDecoder";
        v6 = 1024;
        v7 = v1;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Invalid AVD device type %d!\n", &v4, 0x12u);
      }

      return 0;
    }

    if (v1 > 439)
    {
      switch(v1)
      {
        case 440:

          return createThymeLghDecoder(this);
        case 448:

          return createKopsiaLghDecoder(this);
        case 456:

          return createBorageLghDecoder(this);
        default:
          goto LABEL_85;
      }
    }

    else if ((v1 - 432) >= 2)
    {
      if (v1 != 424)
      {
        goto LABEL_85;
      }

      return createTansyLghDecoder(this);
    }

    else
    {

      return createHibiscusLghDecoder(this);
    }
  }
}

void CAVDLghDecoder::~CAVDLghDecoder(CAVDLghDecoder *this)
{
  *this = &unk_2886667D0;
  for (i = 24; i != 1056; i += 8)
  {
    v3 = *(this + i);
    if (v3)
    {
      CAVDDecoder::unmapAVDMemory(this, *(this + 293), (v3 + 8), 1);
      free(v3);
    }

    *(this + i) = 0;
  }

  do
  {
    v4 = *(this + i);
    if (v4)
    {
      CAVDDecoder::unmapAVDMemory(this, *(this + 293), (v4 + 8), *(v4 + 169));
      free(v4);
    }

    *(this + i) = 0;
    i += 8;
  }

  while (i != 2088);
  v5 = *(this + 262);
  if (v5)
  {
    (*(*v5 + 144))(v5);
    (*(**(this + 262) + 160))(*(this + 262), 0);
    v6 = *(this + 262);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    *(this + 262) = 0;
  }

  *(this + 2320) = 0;
  v7 = *(this + 2227);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(this + 2227) = 0;
  v8 = *(this + 2228);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *(this + 2228) = 0;
  free(*(this + 2225));
  *(this + 2225) = 0;
  free(*(this + 2381));
  *(this + 2381) = 0;

  CAVDDecoder::~CAVDDecoder(this);
}

{
  CAVDLghDecoder::~CAVDLghDecoder(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAVDLghDecoder::VAStartDecode(CAVDLghDecoder *this, unsigned __int8 *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *(this + 2225);
  *v9 = 0;
  *v10 = 0;
  *(this + 2716) = 0;
  AppleAVDCommandBuilder::getWidthAndHeight(*(this + 293), &v10[1], v10);
  v4 = v10[0];
  v5 = v10[1];
  if (v10[0] * v10[1] < 0x2200001)
  {
    AppleAVDCommandBuilder::getLumaDepthMinus8(*(this + 293), &v9[1]);
    AppleAVDCommandBuilder::getChromaFormat(*(this + 293), v9);
    v7 = v10[0];
    *(this + 728) = v10[1];
    *(this + 729) = v7;
    v8 = v9[0];
    *(this + 730) = v9[1];
    *(this + 731) = v8;
    *(this + 680) = 16;
    *(this + 4452) = 0;
    LGH_Syntax::Set_Frame_Context(*(this + 2227), *(this + 370));
    *(v3 + 56) = 0;
    *(v3 + 39) = 0;
    CAVDDecoder::isADSDecryption(this);
    result = 0;
    *(this + 685) = 0;
    *(this + 2716) = 1;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v12 = "VAStartDecode";
      v13 = 1024;
      v14 = v5;
      v15 = 1024;
      v16 = v4;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): unsupported resolution, Lgh Codec, width : %d, height : %d \n", buf, 0x18u);
    }

    return 305;
  }

  return result;
}

uint64_t CAVDLghDecoder::VAStopDecode(LGH_RLM **this)
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(this + 2716))
  {
    LGH_RLM::flush_RLM(this[2228]);
    return 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136315138;
      v3 = "VAStopDecode";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: bailing out of %s because start didn't complete", &v2, 0xCu);
    }

    return 305;
  }
}

uint64_t CAVDLghDecoder::calculateClearBytes(CAVDLghDecoder *this, unsigned int a2, int a3)
{
  if (*(this + 10))
  {
    return *(this + 1252);
  }

  v4 = *(this + 736);
  if (v4)
  {
    v5 = 0;
    v6 = -1;
    do
    {
      if (*(*(this + 366) + v5))
      {
        v7 = *(*(this + 367) + v5);
        if (v7 < a3 + a2 && v7 >= a2)
        {
          v6 = v7 - a2;
        }
      }

      v5 += 4;
    }

    while (4 * v4 != v5);
  }

  else
  {
    v6 = -1;
  }

  if (v6 == -1 && v4 == 0)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t CAVDLghDecoder::initPicture(CAVDLghDecoder *this)
{
  v2 = *(this + 2225);
  v3 = *(v2 + 96);
  v4 = *(v2 + 100);
  if (!*(v2 + 37))
  {
    *v2 = 1;
    *(this + 1488) = *(this + 1489);
    goto LABEL_8;
  }

  v5 = *(v2 + 40);
  *v2 = *(v2 + 40) != 0;
  v6 = *(this + 1489);
  *(this + 1488) = v6;
  if (v5)
  {
LABEL_8:
    LOBYTE(v5) = 1;
LABEL_9:
    v11 = (*(this + 1491) + 1) & 7;
    *(this + 1491) = v11;
    goto LABEL_10;
  }

  v7 = v6 + 1;
  v8 = -v7 < 0;
  v9 = -v7 & 3;
  v10 = v7 & 3;
  if (!v8)
  {
    v10 = -v9;
  }

  *(this + 1489) = v10;
  if (*(v2 + 39))
  {
    goto LABEL_9;
  }

  LOBYTE(v5) = 0;
  v11 = *(this + 1491);
LABEL_10:
  *(this + 1490) = v11;
  if (*(v2 + 78) && *(v2 + 79))
  {
    *(this + 1491) = (v11 + 1) & 7;
  }

  *(v2 + 4) = chroma_format_array[2 * *(v2 + 43) + *(v2 + 44)];
  v12 = !*(v2 + 39) && *(v2 + 108) == *(this + 4650) && *(v2 + 112) == *(this + 4651) && !*(this + 4647) && *(this + 4649) && *(this + 4648) != 0;
  *(v2 + 8) = v12;
  if ((v5 & 1) == 0)
  {
    Ref_Pic_List = LGH_RLM::Get_Ref_Pic_List(*(this + 2228));
    for (i = 0; i != 24; i += 8)
    {
      *(this + i + 17664) = *(Ref_Pic_List + i);
    }
  }

  if (v4 == 31)
  {
    CAVDDecoder::isADSDecryption(this);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 1 << v4;
    v19 = *(v2 + 116);
    v18 = *(v2 + 120);
    v20 = (v18 + 7) >> 3;
    if (1 << v3 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = (1 << v3);
    }

    if (v17 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v17;
    }

    do
    {
      if (v3 == 31)
      {
        v23 = v15 + 1;
      }

      else
      {
        v24 = 0;
        v25 = 0;
        if (8 * ((v20 * v15) >> v4) >= v18)
        {
          v26 = v18;
        }

        else
        {
          v26 = 8 * ((v20 * v15) >> v4);
        }

        v23 = v15 + 1;
        v27 = 8 * ((v20 * (v15 + 1)) >> v4);
        if (v27 >= v18)
        {
          v27 = v18;
        }

        v28 = (*(this + 2225) + 1792 * v15 + 2786);
        do
        {
          v29 = 8 * (v24 >> v3);
          if (v29 >= v19)
          {
            v29 = v19;
          }

          v24 += (v19 + 7) >> 3;
          v30 = 8 * (v24 >> v3);
          if (v30 >= v19)
          {
            v30 = v19;
          }

          *(v28 - 26) = v26;
          *(v28 - 22) = v27;
          *(v28 - 18) = v29;
          v31 = v2 + 4 * v16 + 4 * v25++;
          *(v28 - 14) = v30;
          v33 = v26 == v27 || v29 == v30;
          *v28 = v33;
          *(v28 - 10) = *(v31 + 1344);
          *(v28 - 6) = *(v31 + 320);
          v28 += 28;
        }

        while (v21 != v25);
        v16 += v25;
      }

      v15 = v23;
    }

    while (v23 != v22);
    if (CAVDDecoder::isADSDecryption(this))
    {
      v34 = 0;
      v35 = 2784;
      do
      {
        if (v3 != 31)
        {
          v36 = *(this + 10);
          v37 = (*(this + 2225) + v35);
          v38 = v21;
          do
          {
            if ((v36 & 1) == 0)
            {
              v39 = CAVDLghDecoder::calculateClearBytes(this, *(v37 - 1), *(v37 - 2));
              if (v39 == -1)
              {
                v40 = 1023;
              }

              else
              {
                v40 = v39;
              }

              *v37 = v40;
              v41 = *(this + 626);
              v42 = v41 & 0xFFDFFFFF;
              v43 = v41 | 0x10000;
              if (*(this + 605))
              {
                v44 = v43;
              }

              else
              {
                v44 = v42;
              }

              *(this + 626) = v44;
            }

            v37 += 14;
            --v38;
          }

          while (v38);
        }

        ++v34;
        v35 += 1792;
      }

      while (v34 != v22);
    }
  }

  return CAVDLghDecoder::preparePicParms(this);
}

uint64_t CAVDLghDecoder::preparePicParms(CAVDLghDecoder *this)
{
  v1 = this + 0x4000;
  v2 = *(this + 2225);
  v3 = *(v2 + 37);
  if (*(v2 + 37))
  {
    v4 = *(v2 + 40) != 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *(v2 + 39);
  v6 = *(v2 + 108);
  v7 = v6 != *(this + 4650) || *(v2 + 112) != *(this + 4651);
  v8 = *(v2 + 78);
  if (*(v2 + 78))
  {
    if (*(v2 + 39))
    {
      v9 = 1;
    }

    else
    {
      v9 = v4;
    }

    v10 = (v9 & 1) != 0 || *(this + 4448) == 0 || v7;
    *(v2 + 2756) = v10;
    *(v2 + 2752) = v8;
    v13 = *(v2 + 79);
    v12 = *(v2 + 79) == 0;
    *(v2 + 2748) = v13;
    if (v13)
    {
      v13 = *(v2 + 87);
    }

    *(v2 + 2744) = v13;
    v11 = *(v2 + 92);
  }

  else
  {
    v11 = 0;
    *(v2 + 2744) = 0u;
    v12 = 1;
  }

  *(v2 + 2740) = v11;
  *(v2 + 2736) = *(v2 + 8) != 0 && !v4;
  *(v2 + 2732) = v5;
  if (v4)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *(v2 + 53);
    v15 = *(v2 + 54);
  }

  *(v2 + 2728) = v14;
  *(v2 + 2724) = v15;
  *(v2 + 2720) = *(v2 + 55);
  *(v2 + 2716) = *(v2 + 56);
  *(v2 + 2712) = *(v2 + 306);
  if (v4)
  {
    v16 = 0;
    *(v2 + 2696) = xmmword_27775D910;
  }

  else
  {
    *(v2 + 2708) = *(v2 + 52);
    v17 = *(*(this + 2210) + 40);
    v18 = *(*(this + 2208) + 40);
    v19 = *(*(this + 2209) + 40);
    if (v17 == v19)
    {
      v20 = 2;
    }

    else
    {
      v20 = 3;
    }

    if (v17 == v18)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }

    *(v2 + 2704) = v21;
    *(v2 + 2700) = *(v2 + 51);
    if (v19 == v18)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    *(v2 + 2696) = v22;
    v16 = *(v2 + 50);
  }

  v23 = v3 == 0;
  *(v2 + 2692) = v16;
  v24 = 1;
  *(v2 + 2688) = 1;
  *(v2 + 2648) = v6;
  v25 = *(v2 + 112);
  *(v2 + 2652) = v25;
  *(v2 + 2656) = 1;
  v26 = *(v2 + 105) - 8;
  *(v2 + 2660) = v26;
  *(v2 + 2664) = v26;
  *(v2 + 2668) = v23;
  v28 = *(v2 + 132);
  result = *(v2 + 136);
  v29 = v6 >= v28;
  v31 = v6 - v28;
  v30 = v31 != 0 && v29;
  v32 = v31 & 0xFFFFFFFE;
  if (!v30)
  {
    v32 = 0;
  }

  *(v2 + 2672) = v32;
  v33 = (v25 - result) & 0xFFFFFFFE;
  if (v25 <= result)
  {
    v33 = 0;
  }

  *(v2 + 2676) = v33;
  *(v2 + 2680) = ((v6 + 1) & 0xFFFFFFFE) - 1;
  *(v2 + 2684) = ((v25 + 1) & 0xFFFFFFFE) - 1;
  if (v12)
  {
    if (v5)
    {
      v34 = 1;
    }

    else
    {
      v34 = v4;
    }

    v24 = (v34 & 1) == 0 && *(v1 + 352) && !v7;
  }

  *(v1 + 352) = v24;
  return result;
}

uint64_t CAVDLghDecoder::VADecodeFrame(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a4;
  v114 = *MEMORY[0x277D85DE8];
  v16 = *(a1 + 17800);
  v16[2] = a2;
  if (a4 >= 2 && !v16[7].i8[0])
  {
    v17 = AppleAVDCommandBuilder::waitNumInFlight(*(a1 + 2344), 1u);
    if (v17)
    {
      v18 = v17;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "VADecodeFrame";
        v102 = 1024;
        v103 = v18;
        v19 = MEMORY[0x277D86220];
        v20 = "AppleAVD: WARNING: %s(): timeout status: %d";
LABEL_6:
        v21 = 18;
LABEL_57:
        _os_log_impl(&dword_277606000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, v21);
      }

LABEL_58:
      if (*(a1 + 2724))
      {
        *(a1 + 2725) = 0;
        v39 = 305;
      }

      else
      {
        *(a1 + 2725) = 1;
        LGH_RLM::flush_RLM(*(a1 + 17824));
        v39 = 316;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v40 = *(a1 + 2725);
        v41 = v16[4].u8[5];
        *buf = 136316418;
        *&buf[4] = "VADecodeFrame";
        v102 = 1024;
        v103 = 0;
        v104 = 1024;
        v105 = v39;
        v106 = 1024;
        v107 = v40;
        v108 = 1024;
        v109 = v41;
        v110 = 1024;
        v111 = v12;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s():clientID: %2d,DecodeError: %d,skipToIDR:%d,frameType: %d,frameNum :%d", buf, 0x2Au);
      }

      return v39;
    }
  }

  if (*(a1 + 19040))
  {
    *(a1 + 19040) = 0;
  }

  else if (!v16[7].i8[0])
  {
    LGH_Syntax::Set_Context_Counter(*(a1 + 17816), *(a1 + 5072) + 4);
  }

  LGH_Syntax::Set_Frame_Context(*(a1 + 17816), *(a1 + 176 * *(a1 + 17808) + 2960));
  if (a5 == -1)
  {
    *(a1 + 12008) = 0;
    *(a1 + 12000) = 0xFFFFFFFF00000000;
  }

  else
  {
    *buf = 0;
    if (!(*(*a1 + 112))(a1, a5, buf, 1))
    {
      *(a1 + 12008) = 0;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      *buf = 136315650;
      *&buf[4] = "VADecodeFrame";
      v102 = 1024;
      v103 = 0;
      v104 = 1024;
      v105 = v12;
      v19 = MEMORY[0x277D86220];
      v20 = "AppleAVD: %s() : clientID: %2d Error getting display buffer!, frameNum : %d";
      goto LABEL_25;
    }

    *(a1 + 12000) = 1;
    *(a1 + 12004) = a5;
    *(a1 + 12008) = *buf + 8;
  }

  *buf = 0;
  if (((*(*a1 + 112))(a1, a6, buf, 0) & 1) == 0)
  {
    *(a1 + 11992) = 0;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_58;
    }

    *buf = 136315650;
    *&buf[4] = "VADecodeFrame";
    v102 = 1024;
    v103 = 0;
    v104 = 1024;
    v105 = v12;
    v19 = MEMORY[0x277D86220];
    v20 = "AppleAVD: %s() : clientID: %2d Error getting decoder buffer!, frameNum : %d";
    goto LABEL_25;
  }

  *(a1 + 11984) = 0;
  *(a1 + 11988) = a6;
  v22 = *buf;
  v23 = *buf + 8;
  *(a1 + 2088) = *buf;
  *(a1 + 11992) = v23;
  *(v22 + 204) = *(a1 + 2744);
  v24 = *(a1 + 11988);
  v25 = (*(*a1 + 184))(a1);
  if (a7 != -1 && v25)
  {
    *buf = 0;
    if (!(*(*a1 + 112))(a1, a7, buf, 0))
    {
      *(a1 + 12024) = 0;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      *buf = 136315394;
      *&buf[4] = "VADecodeFrame";
      v102 = 1024;
      v103 = v12;
      v27 = MEMORY[0x277D86220];
      v28 = "AppleAVD: ERROR: %s(): Error getting second decoder buffer for scaling! (frameNum :%d)";
      goto LABEL_30;
    }

    *(a1 + 12016) = 0;
    *(a1 + 12020) = a7;
    v26 = *buf;
    *(a1 + 12024) = *buf + 8;
    if (v26)
    {
      *(v26 + 204) = 0;
      *(v26 + 208) = 0;
      goto LABEL_31;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "VADecodeFrame";
      v102 = 1024;
      v103 = v12;
      v27 = MEMORY[0x277D86220];
      v28 = "AppleAVD: ERROR: %s(): vSurfInfoScalerRef was not set! (frameNum :%d)";
LABEL_30:
      _os_log_impl(&dword_277606000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 0x12u);
    }
  }

LABEL_31:
  v29 = *(a1 + 11992);
  *(a1 + 2648) = *(v29 + 160);
  v30 = *(a1 + 12008);
  if (*(a1 + 9))
  {
    if (v30)
    {
      goto LABEL_47;
    }

    goto LABEL_40;
  }

  if (!v30)
  {
    *(a1 + 2644) = 0;
LABEL_40:
    v30 = v29;
    goto LABEL_47;
  }

  v31 = *(v30 + 148);
  v32 = 1;
  if (v31 > 1885745711)
  {
    if (v31 != 1885745712 && v31 != 1885745714)
    {
      v33 = 1885746228;
LABEL_44:
      if (v31 != v33)
      {
        v32 = 2;
      }
    }
  }

  else if (v31 != 1882468912 && v31 != 1882468914)
  {
    v33 = 1882469428;
    goto LABEL_44;
  }

  *(a1 + 2644) = v32;
LABEL_47:
  (*(*a1 + 104))(a1, 22, v30 + 148);
  if (LGH_Syntax::Parse_Header(*(a1 + 17816), a2, a3, (*(a1 + 17800) + 32)))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "VADecodeFrame";
      v19 = MEMORY[0x277D86220];
      v20 = "AppleAVD: %s(): LGH frame header parsing error !";
      v21 = 12;
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  *(a1 + 2703) |= v16[7].i8[0] == 0;
  v35 = v16[13].i32[1];
  v34 = v16[14].i32[0];
  if ((v34 * v35) >= 0x2200001)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_58;
    }

    *buf = 136316162;
    *&buf[4] = "VADecodeFrame";
    v102 = 1024;
    v103 = 0;
    v104 = 1024;
    v105 = v35;
    v106 = 1024;
    v107 = v34;
    v108 = 1024;
    v109 = v12;
    v19 = MEMORY[0x277D86220];
    v20 = "AppleAVD: %s : clientID:%2d, LGH Decoder frameWidth : %d, frameHeight : %d is out of range, frameNum :%d";
LABEL_56:
    v21 = 36;
    goto LABEL_57;
  }

  v36 = *(a1 + 17800);
  v37 = *(v36 + 104);
  if ((v37 | 2) == 3)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_58;
    }

    v38 = v16[4].u8[5];
    *buf = 136316162;
    *&buf[4] = "VADecodeFrame";
    v102 = 1024;
    v103 = 0;
    v104 = 1024;
    v105 = v37;
    v106 = 1024;
    v107 = v38;
    v108 = 1024;
    v109 = v12;
    v19 = MEMORY[0x277D86220];
    v20 = "AppleAVD: %s: clientID:%2d, LGH, unsupported profile : %d !, frameType :%d, frameNum :%d";
    goto LABEL_56;
  }

  if (*(a1 + 2725))
  {
    if (*(v36 + 37))
    {
      goto LABEL_58;
    }

    *(a1 + 2725) = 0;
  }

  *(v36 + 4) = chroma_format_array[2 * v16[5].u8[3] + v16[5].u8[4]];
  if (LGH_RLM::Update_Frame_Bufs(*(a1 + 17824), v36 + 32, a1 + 376 * v24 + 5968))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_58;
    }

    v43 = v16[4].u8[5];
    *buf = 136315906;
    *&buf[4] = "VADecodeFrame";
    v102 = 1024;
    v103 = 0;
    v104 = 1024;
    v105 = v43;
    v106 = 1024;
    v107 = v12;
    v19 = MEMORY[0x277D86220];
    v20 = "AppleAVD: %s(): clientID:%2d LGH, reference list creation - invalid reference frames, frameType :%d, frameNum :%d !";
    goto LABEL_70;
  }

  if (v16[4].i8[0])
  {
    LGH_RLM::Swap_Frame_Bufs(*(a1 + 17824), (*(a1 + 17800) + 32));
    Disp_Buf = LGH_RLM::Get_Disp_Buf(*(a1 + 17824));
    if (Disp_Buf)
    {
      CAVDLghDecoder::insertFrame(a1, Disp_Buf);
    }

    v45 = *(a1 + 19048);
    for (i = *v45; *v45 < v45[1]; i = *v45)
    {
      v12 = v45[88 * (i & 7) + 15];
      *v45 = i + 1;
      (*(*a1 + 88))(a1, v12);
      v45 = *(a1 + 19048);
    }

    if (Disp_Buf && *(a1 + 18552))
    {
      LGH_RLM::Rel_Disp_Buf(*(a1 + 17824), Disp_Buf);
    }

    (*(*a1 + 48))(a1, v24, 0);
    (*(*a1 + 48))(a1, *(a1 + 12004), 1);
    *(*(a1 + 2344) + 6252) = v12;
    if (*(a1 + 10) == 1)
    {
      usleep(0x2710u);
    }

    return 51;
  }

  if (v16[7].i8[0])
  {
    LGH_Syntax::Update_Frame_Context_Parallel(*(a1 + 17816), v16[7].u8[1]);
  }

  CAVDLghDecoder::initPicture(a1);
  if (*(a1 + 10))
  {
    v47 = *(*(a1 + 17800) + 4);
  }

  else
  {
    v97 = v16[13].i32[1];
    v58 = *(a1 + 2912);
    if (((v58 + 15) ^ (v97 + 15)) > 0xF || ((*(a1 + 2916) + 15) ^ (v16[14].i32[0] + 15)) >= 0x10)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      v59 = *(a1 + 2916);
      v60 = v16[14].i32[0];
      *buf = 136316674;
      *&buf[4] = "VADecodeFrame";
      v102 = 1024;
      v103 = 0;
      v104 = 1024;
      v105 = v12;
      v106 = 1024;
      v107 = v58;
      v108 = 1024;
      v109 = v59;
      v110 = 1024;
      v111 = v97;
      v112 = 1024;
      v113 = v60;
      v19 = MEMORY[0x277D86220];
      v20 = "AppleAVD: %s(): clientID : %2d, #### <WARNING> Frame resolution change not supported frameNum:%d old (%dx%d) new (%dx%d)";
      v21 = 48;
      goto LABEL_57;
    }

    v47 = *(*(a1 + 17800) + 4);
    v98 = *(a1 + 2924);
    if (v47 != v98)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      *buf = 136316162;
      *&buf[4] = "VADecodeFrame";
      v102 = 1024;
      v103 = 0;
      v104 = 1024;
      v105 = v12;
      v106 = 1024;
      v107 = v47;
      v108 = 1024;
      v109 = v98;
      v19 = MEMORY[0x277D86220];
      v20 = "AppleAVD: %s(): clientID : %2d, #### <WARNING> frameNum:%d m_cur_pic_info->chroma_format:%d m_orig_chroma_format_idc:%d";
      goto LABEL_56;
    }

    v95 = *(a1 + 2920) + 8;
    v99 = v16[13].u8[1];
    if (v95 != v99)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      *buf = 136316162;
      *&buf[4] = "VADecodeFrame";
      v102 = 1024;
      v103 = 0;
      v104 = 1024;
      v105 = v12;
      v106 = 1024;
      v107 = v99;
      v108 = 1024;
      v109 = v95;
      v19 = MEMORY[0x277D86220];
      v20 = "AppleAVD: %s(): clientID : %2d, #### <WARNING> frameNum:%d pHeader->BitDepth:%d m_orig_bit_depth_luma_minus8+8:%d";
      goto LABEL_56;
    }
  }

  if (v47 > *(a1 + 18968))
  {
    *(a1 + 18968) = v47;
  }

  v48 = (a1 + 18936);
  v49 = v16[13].u8[1];
  v50 = v49 - 8;
  if (v49 - 8 > *(a1 + 18969))
  {
    *(a1 + 18969) = v50;
    *(a1 + 18970) = v50;
  }

  v51 = v16[13].u32[1];
  if (*v48 < v51)
  {
    *v48 = v51;
  }

  v52 = v16[14].u32[0];
  if (*(a1 + 18940) < v52)
  {
    *(a1 + 18940) = v52;
  }

  v96 = a1 + 18936;
  if (a8)
  {
    v53 = *v48;
    v54 = *(a1 + 18968);
    *(a8 + 16) = *(a1 + 18952);
    *(a8 + 32) = v54;
    *a8 = v53;
    v55 = *(a1 + 18984);
    v56 = *(a1 + 19000);
    v57 = *(a1 + 19016);
    *(a8 + 96) = *(a1 + 19032);
    *(a8 + 64) = v56;
    *(a8 + 80) = v57;
    *(a8 + 48) = v55;
    *a8 = *(v16 + 108);
    v49 = v16[13].u8[1];
    *(a8 + 34) = v49 - 8;
    *(a8 + 33) = v49 - 8;
    *(a8 + 36) = 0;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v61 = v16[4].u8[5];
    *buf = 136315906;
    *&buf[4] = "VADecodeFrame";
    v102 = 1024;
    v103 = 0;
    v104 = 1024;
    v105 = v61;
    v106 = 1024;
    v107 = v12;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): clientID : %2d, frameInfoOut is NULL!!!, frameType :%d, frameNum:%d", buf, 0x1Eu);
    v49 = v16[13].u8[1];
  }

  v62 = *(*(a1 + 17800) + 4);
  if (*(a1 + 18608) >= v62)
  {
    v63 = v49 - 8;
    if (*(a1 + 18612) >= v49 - 8 && *(a1 + 18600) >= v16[13].i32[1] && *(a1 + 18604) >= v16[14].i32[0] && *(a1 + 18616) >= v16[12].i32[1] && *(a1 + 18620) >= v16[12].i32[0])
    {
      v64 = 0;
      goto LABEL_121;
    }
  }

  else
  {
    v63 = v49 - 8;
  }

  *(a1 + 18608) = v62;
  *(a1 + 18612) = v63;
  *(a1 + 18616) = vrev64_s32(v16[12]);
  if (v12 < 2)
  {
    v64 = 1;
  }

  else
  {
    v64 = 1;
    v65 = AppleAVDCommandBuilder::waitNumInFlight(*(a1 + 2344), 1u);
    if (v65)
    {
      v66 = v65;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      *buf = 136315394;
      *&buf[4] = "VADecodeFrame";
      v102 = 1024;
      v103 = v66;
      v19 = MEMORY[0x277D86220];
      v20 = "AppleAVD: WARNING: %s(): timeout status: %d";
      goto LABEL_6;
    }
  }

LABEL_121:
  if (!*(a1 + 19064))
  {
    v100 = *(a1 + 18968);
    *(a1 + 18936) = *(a1 + 2744);
    *(a1 + 18968) = 3;
    if (!(*(**(a1 + 2096) + 136))(*(a1 + 2096), v96))
    {
      *(a1 + 19064) = 1;
      *(a1 + 18968) = v100;
      goto LABEL_122;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_58;
    }

    *buf = 136315650;
    *&buf[4] = "virtual int CAVDLghDecoder::VADecodeFrame(unsigned char *, int, uint32_t, int, int, int, avd_seq_params *)";
    v102 = 1024;
    v103 = 0;
    v104 = 1024;
    v105 = v12;
    v19 = MEMORY[0x277D86220];
    v20 = "AppleAVD: %s : clientID : %2d fail to alloc work buffer for sps frameNum:%d \n";
LABEL_25:
    v21 = 24;
    goto LABEL_57;
  }

LABEL_122:
  if (((*(a1 + 19060) != 0) & ~v64) == 0)
  {
    (*(**(a1 + 2096) + 160))(*(a1 + 2096), 0);
    *(a1 + 19060) = 0;
    if ((*(**(a1 + 2096) + 152))(*(a1 + 2096), v96, 0, 0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      v67 = v16[4].u8[5];
      *buf = 136315906;
      *&buf[4] = "virtual int CAVDLghDecoder::VADecodeFrame(unsigned char *, int, uint32_t, int, int, int, avd_seq_params *)";
      v102 = 1024;
      v103 = 0;
      v104 = 1024;
      v105 = v67;
      v106 = 1024;
      v107 = v12;
      v19 = MEMORY[0x277D86220];
      v20 = "AppleAVD: %s clientID : %2d fail to alloc work buffer for pps frame_type %d, frameNum:%d \n";
LABEL_70:
      v21 = 30;
      goto LABEL_57;
    }

    *(a1 + 19060) = 1;
  }

  v68 = *(a1 + 11992);
  *(a1 + 376 * v24 + 5976) = v68;
  *(a1 + 376 * v24 + 5968) = v24;
  *(*(a1 + 17800) + 24) = v24;
  v69 = (a1 + 176 * v24);
  v70 = v69[762];
  v71 = v69[761];
  v72 = v69[760];
  *(a1 + 376 * v24 + 6104) = v69[759];
  *(a1 + 376 * v24 + 6120) = v72;
  *(a1 + 376 * v24 + 6136) = v71;
  *(a1 + 376 * v24 + 6152) = v70;
  v73 = v69[755];
  v74 = v69[756];
  v75 = v69[757];
  *(a1 + 376 * v24 + 6088) = v69[758];
  *(a1 + 376 * v24 + 6072) = v75;
  *(a1 + 376 * v24 + 6056) = v74;
  *(a1 + 376 * v24 + 6040) = v73;
  v76 = v69[752];
  v77 = v69[753];
  *(a1 + 376 * v24 + 6024) = v69[754];
  *(a1 + 376 * v24 + 6008) = v77;
  *(a1 + 376 * v24 + 5992) = v76;
  v78 = v69[928];
  v79 = v69[929];
  *(a1 + 376 * v24 + 6200) = v69[930];
  *(a1 + 376 * v24 + 6184) = v79;
  *(a1 + 376 * v24 + 6168) = v78;
  v80 = v69[931];
  v81 = v69[932];
  v82 = v69[934];
  *(a1 + 376 * v24 + 6248) = v69[933];
  *(a1 + 376 * v24 + 6264) = v82;
  *(a1 + 376 * v24 + 6232) = v81;
  *(a1 + 376 * v24 + 6216) = v80;
  v83 = v69[935];
  v84 = v69[936];
  v85 = v69[938];
  *(a1 + 376 * v24 + 6312) = v69[937];
  *(a1 + 376 * v24 + 6328) = v85;
  *(a1 + 376 * v24 + 6280) = v83;
  *(a1 + 376 * v24 + 6296) = v84;
  if (*(a1 + 2644))
  {
    v86 = (a1 + 12004);
    v68 = *(a1 + 12008);
  }

  else
  {
    v86 = (a1 + 11988);
  }

  v87 = *v86;
  v88 = *(a1 + 17800);
  *(v88 + 28) = v87;
  *(a1 + 376 * v24 + 5972) = v87;
  *(a1 + 376 * v24 + 5984) = v68;
  if ((*v88 & 1) != 0 || v16[4].i8[7])
  {
    (*(**(a1 + 2096) + 232))(*(a1 + 2096));
  }

  if (*(a1 + 2356) == 1)
  {
    (*(*a1 + 224))(a1, v12, a6);
  }

  v89 = (*(**(a1 + 2096) + 240))(*(a1 + 2096), v12);
  v90 = *(a1 + 2096);
  *(v90 + 12) = *(*(a1 + 17800) + 316) * *(*(a1 + 17800) + 312);
  AppleAVDCommandBuilder::setDecodeBufferSections(*(a1 + 2344), v90 + 8);
  if (*(a1 + 2356) == 1)
  {
    *(a1 + 2332) = CAHDec::getDecBufIndex(*(a1 + 2096));
  }

  if (v89)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_58;
    }

    *buf = 136315394;
    *&buf[4] = "VADecodeFrame";
    v102 = 1024;
    v103 = v89;
    v19 = MEMORY[0x277D86220];
    v20 = "AppleAVD: %s(): hwD->DecodePicture return %d";
    goto LABEL_6;
  }

  LGH_RLM::Swap_Frame_Bufs(*(a1 + 17824), (*(a1 + 17800) + 32));
  v91 = LGH_RLM::Get_Disp_Buf(*(a1 + 17824));
  if (v91)
  {
    CAVDLghDecoder::insertFrame(a1, v91);
  }

  v92 = *(a1 + 19048);
  for (j = *v92; *v92 < v92[1]; j = *v92)
  {
    v94 = v92[88 * (j & 7) + 15];
    *v92 = j + 1;
    (*(*a1 + 88))(a1, v94);
    v92 = *(a1 + 19048);
  }

  if (v91 && *(a1 + 18552))
  {
    LGH_RLM::Rel_Disp_Buf(*(a1 + 17824), v91);
  }

  v39 = 0;
  *(a1 + 18588) = **(a1 + 17800);
  *(a1 + 18592) = v16[4].u8[5];
  *(a1 + 18596) = v16[4].u8[6];
  *(a1 + 18600) = *(v16 + 108);
  *(a1 + 18616) = vrev64_s32(v16[12]);
  *(a1 + 17808) = (*(a1 + 17808) + 1) & 3;
  return v39;
}

uint64_t CAVDLghDecoder::insertFrame(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 19048);
  v5 = v4[1];
  if ((v5 - *v4) >= 8 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "insertFrame";
    v14 = 1024;
    v15 = 1979;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v12, 0x12u);
    v4 = *(a1 + 19048);
  }

  v6 = &v4[88 * (v5 & 7)];
  v6[12] = 1;
  v7 = *(a2 + 40);
  v8 = 8;
  if (*(a1 + 2644))
  {
    v8 = 16;
  }

  v9 = *(v7 + v8);
  v10 = *(v7 + 4 * (*(a1 + 2644) != 0));
  v6[14] = *(a1 + 2644) != 0;
  v6[15] = v10;
  *(v6 + 8) = v9;
  ++v4[1];
  return 0;
}

uint64_t CAVDLghDecoder::VAReleaseOutputSurface(AppleAVDCommandBuilder **this, int a2, unsigned int a3)
{
  if (a3 != 1 || *(this + 661))
  {
    AppleAVDCommandBuilder::setReleaseCVPixelBufferIndex(this[292], a2, a3);
  }

  return 0;
}

BOOL CAVDLghDecoder::VAIsSurfaceListIndexMapped(CAVDLghDecoder *this, int a2, int a3)
{
  if (a2 > 128)
  {
    return 0;
  }

  v3 = 1056;
  if (a3 == 1)
  {
    v3 = 24;
  }

  return *(this + 8 * a2 + v3) != 0;
}

uint64_t CAVDLghDecoder::VAGetIOSurfaceIDForBufferIndex(CAVDLghDecoder *this, unsigned int a2, int a3)
{
  if (a2 > 0x80)
  {
    return 0;
  }

  v3 = 1056;
  if (a3 == 1)
  {
    v3 = 24;
  }

  v4 = *(this + 8 * a2 + v3);
  if (v4)
  {
    return *(v4 + 160);
  }

  else
  {
    return 0;
  }
}

uint64_t CAVDLghDecoder::VAGetParams(CAVDLghDecoder *this, int a2, unsigned int *__dst)
{
  result = 0;
  if (a2 > 3)
  {
    if (a2 <= 7)
    {
      if (a2 == 4)
      {
        result = 0;
        v6 = 1;
        goto LABEL_24;
      }

      if (a2 != 7)
      {
        return result;
      }

      if (__dst)
      {
        result = 0;
        v6 = *(this + 690);
        goto LABEL_24;
      }
    }

    else
    {
      if (a2 == 8)
      {
        result = 0;
        v6 = *(this + 12);
        goto LABEL_24;
      }

      if (a2 == 9)
      {
        result = 0;
        v6 = *(this + 4);
        goto LABEL_24;
      }

      if (a2 != 22)
      {
        return result;
      }

      if (__dst)
      {
        result = 0;
        v6 = *(this + 722);
LABEL_24:
        *__dst = v6;
        return result;
      }
    }

    return 0;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      *__dst = (*(**(this + 262) + 168))(*(this + 262));
      v8 = (*(**(this + 262) + 176))(*(this + 262));
      result = 0;
      __dst[2] = v8;
    }

    else
    {
      result = 0;
      *(__dst + 44) = 0;
      *(__dst + 1) = 0;
      *(__dst + 2) = 0;
      *(__dst + 16) = *(this + 9484);
      *(__dst + 34) = *(this + 18970);
      *__dst = *(this + 2367);
    }
  }

  else
  {
    if (!a2)
    {
      result = 0;
      v6 = 8;
      goto LABEL_24;
    }

    if (a2 == 1)
    {
      v7 = *(this + 2381);
      if (*v7 >= v7[1])
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        memcpy(__dst, &v7[88 * (*v7 & 7) + 2], 0x160uLL);
        result = 0;
        ++**(this + 2381);
      }
    }
  }

  return result;
}

uint64_t CAVDLghDecoder::VASetParams(CAVDLghDecoder *this, int a2, unsigned int *a3)
{
  result = 0;
  switch(a2)
  {
    case 11:
      result = 0;
      *(this + 2724) = *a3;
      break;
    case 12:
      result = 0;
      *(this + 686) = *a3;
      *(this + 687) = a3[1];
      break;
    case 15:
      result = 0;
      *(this + 343) = *(a3 + 1);
      *(this + 688) = *a3;
      break;
    case 16:
      result = 0;
      *(this + 341) = a3;
      break;
    case 17:
      result = 0;
      *(this + 684) = *a3;
      break;
    case 18:
      if (*(this + 2724))
      {
        goto LABEL_19;
      }

      result = 0;
      *(this + 2725) = *a3;
      break;
    case 20:
      result = 0;
      *(this + 2892) = *a3;
      *(this + 362) = *(a3 + 1);
      break;
    case 21:
    case 27:
    case 55:
    case 56:
    case 58:
      return result;
    case 22:
      if (!a3)
      {
        goto LABEL_19;
      }

      result = 0;
      *(this + 722) = *a3;
      break;
    case 23:
      result = 0;
      *(this + 673) = *a3;
      break;
    case 24:
      result = 0;
      v13 = *a3;
      *(this + 12) = v13;
      goto LABEL_16;
    case 25:
      result = 0;
      v13 = *a3;
LABEL_16:
      *(this + 4) = v13;
      break;
    case 26:
      if (a3[5] <= *(*(this + 260) + 56))
      {
        v14 = **(this + 292);
        v15 = *(v14 + 3648);
        IOSurfaceLock(*(v14 + 3640), 0, 0);
        memcpy(v15, *(a3 + 1), a3[5]);
        IOSurfaceUnlock(*(**(this + 292) + 3640), 0, 0);
      }

LABEL_19:
      result = 0;
      break;
    case 28:
      result = 0;
      *(this + 696) = *a3;
      *(this + 346) = *(a3 + 1);
      v6 = *(a3 + 18);
      v7 = *(a3 + 26);
      v8 = *(a3 + 14);
      *(this + 2856) = *(a3 + 22);
      *(this + 2872) = v7;
      *(this + 2824) = v8;
      *(this + 2840) = v6;
      v9 = *(a3 + 10);
      *(this + 2792) = *(a3 + 6);
      *(this + 2808) = v9;
      break;
    case 30:
      result = 0;
      *(this + 10) = *a3;
      break;
    case 33:
      *(this + 672) = *a3;
      isADSDecryption = CAVDDecoder::isADSDecryption(this);
      result = 0;
      *(this + 590) = isADSDecryption;
      break;
    case 34:
      result = 0;
      v10 = *a3;
      v11 = *(a3 + 1);
      v12 = *(a3 + 2);
      *(this + 2412) = *(a3 + 6);
      *(this + 2380) = v11;
      *(this + 2396) = v12;
      *(this + 2364) = v10;
      *(this + 627) = 1;
      break;
    case 35:
      result = 0;
      v16 = *a3;
      v17 = *(a3 + 1);
      v18 = *(a3 + 2);
      *(this + 2468) = *(a3 + 6);
      *(this + 2436) = v17;
      *(this + 2452) = v18;
      *(this + 2420) = v16;
      *(this + 628) = 1;
      break;
    case 36:
      result = 0;
      v24 = *a3;
      *(this + 2488) = *(a3 + 3);
      *(this + 2476) = v24;
      *(this + 629) = 1;
      *(this + 315) = *(this + 312);
      break;
    case 37:
      result = 0;
      *(this + 629) = 1;
      break;
    case 38:
      result = 0;
      *(this + 626) = *a3;
      break;
    case 39:
      result = 0;
      *(this + 736) = *a3;
      break;
    case 40:
      result = 0;
      *(this + 366) = a3;
      break;
    case 41:
      result = 0;
      *(this + 367) = a3;
      break;
    case 43:
      result = 0;
      v19 = *a3;
      *(this + 159) = *(a3 + 1);
      *(this + 158) = v19;
      v20 = *(a3 + 2);
      v21 = *(a3 + 3);
      v22 = *(a3 + 4);
      *(this + 652) = a3[20];
      *(this + 658) = 1;
      *(this + 162) = v22;
      *(this + 161) = v21;
      *(this + 160) = v20;
      break;
    case 44:
      result = 0;
      v23 = *a3;
      *(this + 657) = a3[4];
      *(this + 2612) = v23;
      *(this + 659) = 1;
      break;
    case 45:
      result = 0;
      *(this + 2948) = *a3;
      *(this + 738) = a3[1];
      break;
    case 47:
      result = 0;
      *(this + 663) = *a3;
      break;
    case 48:
      result = 0;
      *(this + 166) = *a3;
      break;
    case 49:
      result = 0;
      *(this + 2674) = *a3;
      break;
    case 50:
      result = 0;
      *(this + 2675) = *a3;
      break;
    case 51:
      result = 0;
      *(this + 335) = a3;
      break;
    case 59:
      result = 0;
      *(this + 689) = *a3;
      break;
    default:
      result = 308;
      break;
  }

  return result;
}

BOOL CAVDLghDecoder::decodeGetRenderTarget(uint64_t a1, unsigned int a2, void *a3, int a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2 > 0x80)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "decodeGetRenderTarget";
      v11 = 1024;
      v12 = a2;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s bad index %u", &v9, 0x12u);
    }

    v7 = 0;
  }

  else
  {
    v6 = a1 + 24;
    if (a4 != 1)
    {
      v6 = a1 + 1056;
    }

    v7 = *(v6 + 8 * a2);
  }

  *a3 = v7;
  return v7 != 0;
}

__n128 CAVDLghDecoder::populateSnapshotStruct(CAVDLghDecoder *this, unsigned int a2, int a3)
{
  v3 = *(this + 2225);
  if (v3[37])
  {
    v4 = v3[40] != 0;
  }

  else
  {
    v4 = 1;
  }

  *(this + 17788) = v4;
  *(this + 4446) = 0;
  if ((*v3 & 1) == 0)
  {
    v5 = (this + 17664);
    v6 = (this + 17696);
    v7 = 3;
    do
    {
      v8 = *v5++;
      v9 = *(v8 + 40);
      *(v6 - 1) = *(v9 + 8);
      *v6 = *v9;
      v6 += 4;
      --v7;
    }

    while (v7);
    v10 = *(*(this + 2208) + 40);
    *(this + 2217) = *(v10 + 8);
    *(this + 4436) = *v10;
    v11 = 1;
    *(this + 4446) = 1;
    v12 = *(*(this + 2209) + 40);
    if (v12 != v10)
    {
      *(this + 2219) = *(v12 + 8);
      *(this + 4440) = *v12;
      v11 = 2;
      *(this + 4446) = 2;
    }

    v13 = *(*(this + 2210) + 40);
    if (v13 != v10 && v13 != v12)
    {
      v15 = this + 16 * v11 + 17736;
      *v15 = *(v13 + 8);
      *(v15 + 2) = *v13;
      *(this + 4446) = v11 + 1;
    }
  }

  v16 = *(this + 261);
  v17 = *(v16 + 16);
  *(this + 2104) = *v16;
  *(this + 2120) = v17;
  v18 = *(v16 + 32);
  v19 = *(v16 + 48);
  v20 = *(v16 + 80);
  *(this + 2168) = *(v16 + 64);
  *(this + 2184) = v20;
  *(this + 2136) = v18;
  *(this + 2152) = v19;
  v21 = *(v16 + 96);
  v22 = *(v16 + 112);
  v23 = *(v16 + 144);
  *(this + 2232) = *(v16 + 128);
  *(this + 2248) = v23;
  *(this + 2200) = v21;
  *(this + 2216) = v22;
  result = *(v16 + 160);
  v25 = *(v16 + 176);
  v26 = *(v16 + 208);
  *(this + 2296) = *(v16 + 192);
  *(this + 2312) = v26;
  *(this + 2264) = result;
  *(this + 2280) = v25;
  *(this + 582) = a3;
  return result;
}

uint64_t CAVDLghDecoder::getRefPicsNum(CAVDLghDecoder *this)
{
  if (*(this + 17788))
  {
    return 0;
  }

  else
  {
    return *(this + 4446);
  }
}

uint64_t createNarcissusAvcDecoder(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "createNarcissusAvcDecoder";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Narcissus AVD is not supported in this AppleAVD driver!!!", &v2, 0xCu);
  }

  return 0;
}

uint64_t createNarcissusLghDecoder(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "createNarcissusLghDecoder";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Narcissus AVD is not supported in this AppleAVD driver!!!", &v2, 0xCu);
  }

  return 0;
}

uint64_t createNarcissusHevcDecoder(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "createNarcissusHevcDecoder";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Narcissus AVD is not supported in this AppleAVD driver!!!", &v2, 0xCu);
  }

  return 0;
}

uint64_t LGH_RLM::find_available_frame_buffer(LGH_RLM *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(*(this + 2) + 4);
  if (v2)
  {
    result = 0;
    v4 = (*(this + 3) + 36);
    while (1)
    {
      v5 = *v4;
      v4 += 12;
      if (!v5)
      {
        break;
      }

      if (v2 == ++result)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if ((*(this + 10) & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "find_available_frame_buffer";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: no frame buffer available\n", &v6, 0xCu);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void LGH_RLM::dump_fb_info(LGH_RLM *this)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((*(this + 2) & 0x40002) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "dump_fb_info";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: ref frame map\n", buf, 0xCu);
  }

  v2 = 0;
  v3 = MEMORY[0x277D86220];
  do
  {
    if ((*(this + 2) & 0x40002) != 0 && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(this + v2 + 48);
      *buf = 67109120;
      LODWORD(v11) = v4;
      _os_log_impl(&dword_277606000, v3, OS_LOG_TYPE_DEFAULT, "AppleAVD:  %2d", buf, 8u);
    }

    v2 += 4;
  }

  while (v2 != 32);
  if ((*(this + 2) & 0x40002) != 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT) || (*buf = 0, _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: \n", buf, 2u), (*(this + 2) & 0x40002) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v11 = "dump_fb_info";
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: fb refcnt\n", buf, 0xCu);
      }
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    v6 = -1;
    v7 = 36;
    v8 = MEMORY[0x277D86220];
    do
    {
      if (++v6 >= *(v5 + 4))
      {
        break;
      }

      if ((*(this + 2) & 0x40002) != 0 && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(this + 3);
        if (v9)
        {
          LODWORD(v9) = *(v9 + v7);
        }

        *buf = 67109120;
        LODWORD(v11) = v9;
        _os_log_impl(&dword_277606000, v8, OS_LOG_TYPE_DEFAULT, "AppleAVD:  %2d", buf, 8u);
        v5 = *(this + 2);
      }

      v7 += 48;
    }

    while (v5);
  }

  if ((*(this + 2) & 0x40002) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: \n", buf, 2u);
  }
}

__n128 LGH_RLM::LGH_RLM(__n128 *a1, unsigned __int32 a2, unint64_t a3)
{
  a1->n128_u64[0] = &unk_288665428;
  a1->n128_u32[2] = a2;
  a1[1].n128_u64[0] = a3;
  if (a3)
  {
    v3 = *(a3 + 8);
  }

  else
  {
    v3 = 0;
  }

  a1[1].n128_u64[1] = v3;
  a1[2].n128_u32[0] = -1;
  a1[2].n128_u64[1] = 0;
  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  a1[3] = result;
  a1[4] = result;
  a1[5].n128_u64[0] = 0;
  a1[5].n128_u32[2] = 0;
  return result;
}

__n128 LGH_RLM::flush_RLM(LGH_RLM *this)
{
  v2 = 0;
  v3 = (this + 48);
  do
  {
    v4 = *(this + 3);
    if (!v4)
    {
      break;
    }

    v5 = v3->n128_i32[v2];
    if (v5 != -1)
    {
      v6 = v4 + 48 * v5;
      v7 = *(v6 + 36);
      if (v7)
      {
        v8 = v7 - 1;
        *(v6 + 36) = v7 - 1;
        v9 = *(this + 2);
        if (v9)
        {
          v10 = *(v9 + 24);
          if (v8)
          {
            v11 = 1;
          }

          else
          {
            v11 = v10 == 0;
          }

          if (!v11)
          {
            v10();
          }
        }
      }
    }

    ++v2;
  }

  while (v2 != 8);
  *(this + 8) = -1;
  *(this + 5) = 0;
  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  *v3 = result;
  v3[1] = result;
  *(this + 10) = 0;
  *(this + 22) = 0;
  return result;
}

void LGH_RLM::~LGH_RLM(LGH_RLM *this)
{
  *this = &unk_288665428;
  LGH_RLM::flush_RLM(this);
}

{
  LGH_RLM::~LGH_RLM(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t LGH_RLM::Update_Frame_Bufs(LGH_RLM *this, uint64_t a2, uint64_t a3)
{
  v48 = *MEMORY[0x277D85DE8];
  *(this + 8) = -1;
  *(this + 5) = 0;
  if (!a2 || !a3 || (v6 = *(this + 3)) == 0)
  {
    if ((*(this + 10) & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    v10 = *(this + 3);
    v40 = 136315906;
    v41 = "Update_Frame_Bufs";
    v42 = 2048;
    *v43 = a2;
    *&v43[8] = 2048;
    v44 = a3;
    *v45 = 2048;
    *&v45[2] = v10;
    v11 = MEMORY[0x277D86220];
    v12 = "AppleAVD: %s: invalid hdr %p buffer pointer %p pool %p\n";
    v13 = 42;
    goto LABEL_11;
  }

  if (*a2)
  {
    v7 = *(a2 + 1);
    v8 = *(this + v7 + 12);
    if (v8 != -1 && *(v6 + 48 * v8 + 36))
    {
      v9 = 0;
      *(this + 8) = v8;
      *(this + 5) = v6 + 48 * v8;
      return v9;
    }

    if ((*(this + 10) & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v40 = 136315394;
      v41 = "Update_Frame_Bufs";
      v42 = 1024;
      *v43 = v7;
      v11 = MEMORY[0x277D86220];
      v12 = "AppleAVD: %s: invalid frame to show map idx %d\n";
      v13 = 18;
LABEL_11:
      _os_log_impl(&dword_277606000, v11, OS_LOG_TYPE_DEFAULT, v12, &v40, v13);
    }

    return 0xFFFFFFFFLL;
  }

  available_frame_buffer = LGH_RLM::find_available_frame_buffer(this);
  *(this + 8) = available_frame_buffer;
  if (available_frame_buffer != -1)
  {
    v16 = *(this + 3);
    if (*(a2 + 6))
    {
      *(this + 5) = v16 + 48 * available_frame_buffer;
    }

    v17 = v16 + 48 * available_frame_buffer;
    v18 = *(a2 + 76);
    *v17 = v18;
    v19 = *(a2 + 73);
    *(v17 + 8) = v19;
    v15.i32[0] = *(a2 + 9);
    v20 = vmovl_u8(v15).u64[0];
    *(v17 + 12) = vmovl_u16(v20);
    *(v17 + 28) = *(a2 + 100);
    *(v17 + 36) = 0;
    *(v17 + 40) = a3;
    if (!*(a2 + 5))
    {
      v9 = 0;
      *(this + 10) = 0;
      *(this + 11) = 0;
      *(this + 12) = 0;
      return v9;
    }

    if (*(a2 + 8))
    {
      return 0;
    }

    v22 = 0;
    v23 = 0;
    v24 = a2 + 14;
    v25 = this + 48;
    v26 = v20.u16[2];
    v27 = v20.u16[3];
    do
    {
      v28 = *(v24 + v22);
      v29 = *&v25[4 * v28];
      if (v29 == -1)
      {
        if ((*(this + 10) & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v40 = 136315650;
          v41 = "Update_Frame_Bufs";
          v42 = 1024;
          *v43 = v22;
          *&v43[4] = 1024;
          *&v43[6] = v28;
          v11 = MEMORY[0x277D86220];
          v12 = "AppleAVD: %s: invalid ref_frame_idx[%d] %d\n";
          v13 = 24;
          goto LABEL_11;
        }

        return 0xFFFFFFFFLL;
      }

      v30 = (v16 + 48 * v29);
      v31 = v30[2];
      if (v31 != v19 || *(v30 + 5) != __PAIR64__(v20.u16[3], v20.u16[2]))
      {
        if ((*(this + 10) & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v38 = v30[5];
          v39 = v30[6];
          v40 = 136316674;
          v41 = "Update_Frame_Bufs";
          v42 = 1024;
          *v43 = v19;
          *&v43[4] = 1024;
          *&v43[6] = v31;
          LOWORD(v44) = 1024;
          *(&v44 + 2) = v26;
          HIWORD(v44) = 1024;
          *v45 = v38;
          *&v45[4] = 1024;
          *&v45[6] = v27;
          v46 = 1024;
          v47 = v39;
          v11 = MEMORY[0x277D86220];
          v12 = "AppleAVD: %s: cur and ref frame format mismatch bd %d-%d ssx %d-%d ssy %d-%d\n";
          v13 = 48;
          goto LABEL_11;
        }

        return 0xFFFFFFFFLL;
      }

      if ((2 * v18) >= *v30)
      {
        v32 = v30[1];
        v33 = 2 * HIDWORD(v18) >= v32;
        v34 = 16 * v32;
        if (v33 && HIDWORD(v18) <= v34 && v18 <= 16 * *v30)
        {
          v23 = 1;
        }
      }

      ++v22;
    }

    while (v22 != 3);
    if (v23)
    {
      for (i = 0; i != 3; ++i)
      {
        v9 = 0;
        *(this + i + 10) = v16 + 48 * *&v25[4 * *(v24 + i)];
      }

      return v9;
    }

    if ((*(this + 10) & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v40 = 136315138;
      v41 = "Update_Frame_Bufs";
      v11 = MEMORY[0x277D86220];
      v12 = "AppleAVD: %s: no reference frame has valid dimensions\n";
      v13 = 12;
      goto LABEL_11;
    }

    return 0xFFFFFFFFLL;
  }

  if ((*(this + 10) & 1) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = 0xFFFFFFFFLL;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v40 = 136315394;
    v41 = "Update_Frame_Bufs";
    v42 = 1024;
    *v43 = -1;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: LGH Internal bufferpool is full, invalid index %d\n", &v40, 0x12u);
  }

  return v9;
}

void LGH_RLM::Swap_Frame_Bufs(LGH_RLM *this, _BYTE *a2)
{
  v2 = *(this + 3);
  if (v2)
  {
    v4 = *(this + 8);
    if (v4 != -1)
    {
      v6 = a2[4];
      for (i = 48; i != 80; i += 4)
      {
        if (*a2)
        {
          break;
        }

        if (v6)
        {
          v8 = *(this + i);
          if ((v8 & 0x80000000) == 0)
          {
            v9 = v2 + 48 * v8;
            v10 = *(v9 + 36);
            if (v10)
            {
              v11 = v10 - 1;
              *(v9 + 36) = v10 - 1;
              v12 = *(this + 2);
              if (v12)
              {
                v13 = *(v12 + 24);
                if (!v11 && v13 != 0)
                {
                  v13();
                  v4 = *(this + 8);
                  v2 = *(this + 3);
                }
              }
            }
          }

          *(this + i) = v4;
          ++*(v2 + 48 * v4 + 36);
        }

        v6 >>= 1;
      }

      if (!a2[4])
      {
        v15 = *(this + 2);
        if (v15)
        {
          v16 = *(v2 + 48 * v4 + 36);
          v17 = *(v15 + 24);
          if (v17 && v16 == 0)
          {
            v17();
          }
        }
      }

      LGH_RLM::dump_fb_info(this);
    }
  }
}

uint64_t LGH_RLM::Rel_Disp_Buf(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 36);
    if (v2)
    {
      v3 = *(result + 16);
      if (v3)
      {
        if (*v3)
        {
          v4 = v2 - 1;
          *(a2 + 36) = v4;
          if (!v4)
          {
            v5 = *(v3 + 24);
            if (v5)
            {
              return v5(a2, *(v3 + 16));
            }
          }
        }
      }
    }
  }

  return result;
}

unsigned __int8 *med3(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t (*a4)(void))
{
  v8 = a4();
  v9 = (a4)(a2, a3);
  if (v8 < 0)
  {
    if ((v9 & 0x80000000) == 0)
    {
      if ((a4)(a1, a3) >= 0)
      {
        return a1;
      }

      else
      {
        return a3;
      }
    }
  }

  else if (v9 <= 0)
  {
    if ((a4)(a1, a3) <= 0)
    {
      return a1;
    }

    else
    {
      return a3;
    }
  }

  return a2;
}

uint64_t qSort(uint64_t result, unsigned int a2, unsigned int a3, uint64_t (*a4)(void))
{
  v7 = result;
  v69 = 0;
  v8 = a3;
  v9 = -a3;
  v67 = (a3 | result) & 7;
  if (((a3 | result) & 7) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = a3 > 8;
  }

  v68 = v10;
  if (a2 > 6)
  {
    v24 = (result + (a2 >> 1) * a3);
    if (a2 != 7)
    {
      v25 = (result + (a2 - 1) * a3);
      if (a2 < 0x29)
      {
        v27 = result;
      }

      else
      {
        v26 = (a2 >> 3) * a3;
        v27 = med3(result, (result + v26), (result + 2 * v26), a4);
        v24 = med3(&v24[-v26], &v7[(a2 >> 1) * a3], &v24[v26], a4);
        v25 = med3(&v25[-2 * v26], &v25[-v26], v25, a4);
      }

      result = med3(v27, v24, v25, a4);
      v24 = result;
    }

    if (v68)
    {
      v28 = v67;
      if (v67)
      {
        v29 = 0;
        do
        {
          v30 = v7[v29];
          v7[v29] = v24[v29];
          v24[v29++] = v30;
        }

        while (v8 != v29);
      }

      else
      {
        do
        {
          v31 = *&v7[v28];
          *&v7[v28] = *&v24[v28];
          *&v24[v28] = v31;
          v28 += 8;
        }

        while (v8 != v28);
      }

      v32 = v7;
    }

    else
    {
      v69 = *v24;
      v32 = &v69;
    }

    v66 = a2;
    v33 = &v7[(a2 - 1) * a3];
    v34 = v7;
    v35 = v7;
    v36 = v33;
LABEL_35:
    while (v35 <= v33)
    {
      result = (a4)(v35, v32);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v68)
        {
          v37 = v67;
          if (v67)
          {
            v38 = 0;
            do
            {
              v39 = v34[v38];
              v34[v38] = v35[v38];
              v35[v38++] = v39;
            }

            while (v8 != v38);
          }

          else
          {
            do
            {
              v40 = *&v34[v37];
              *&v34[v37] = *&v35[v37];
              *&v35[v37] = v40;
              v37 += 8;
            }

            while (v8 != v37);
          }
        }

        else
        {
          v50 = *v34;
          *v34 = *v35;
          *v35 = v50;
        }

        v34 += v8;
      }

      v35 += v8;
    }

    while (v35 <= v33)
    {
      result = (a4)(v33, v32);
      if ((result & 0x80000000) != 0)
      {
        if (v68)
        {
          v46 = v67;
          if (v67)
          {
            v47 = 0;
            do
            {
              v48 = v35[v47];
              v35[v47] = v33[v47];
              v33[v47++] = v48;
            }

            while (v8 != v47);
          }

          else
          {
            do
            {
              v49 = *&v35[v46];
              *&v35[v46] = *&v33[v46];
              *&v33[v46] = v49;
              v46 += 8;
            }

            while (v8 != v46);
          }
        }

        else
        {
          v51 = *v35;
          *v35 = *v33;
          *v33 = v51;
        }

        v35 += v8;
        v33 += v9;
        goto LABEL_35;
      }

      if (!result)
      {
        if (v68)
        {
          v41 = v67;
          if (v67)
          {
            v42 = 0;
            do
            {
              v43 = v33[v42];
              v33[v42] = v36[v42];
              v36[v42++] = v43;
            }

            while (v8 != v42);
          }

          else
          {
            do
            {
              v44 = *&v33[v41];
              *&v33[v41] = *&v36[v41];
              *&v36[v41] = v44;
              v41 += 8;
            }

            while (v8 != v41);
          }
        }

        else
        {
          v45 = *v33;
          *v33 = *v36;
          *v36 = v45;
        }

        v36 += v9;
      }

      v33 += v9;
    }

    v52 = &v7[a3 * v66];
    v53 = v34 - v7;
    v54 = v35 - v34;
    if (v34 - v7 >= v35 - v34)
    {
      v53 = v35 - v34;
    }

    if (v53)
    {
      v55 = -v53;
      if (v67)
      {
        v56 = v7;
        do
        {
          v57 = *v56;
          *v56++ = v35[v55];
          v35[v55] = v57;
          v58 = __CFADD__(v55++, 1);
        }

        while (!v58);
      }

      else
      {
        v59 = v7;
        do
        {
          v60 = *v59;
          *v59 = *&v35[v55];
          v59 += 8;
          *&v35[v55] = v60;
          v55 += 8;
        }

        while (v55);
      }
    }

    v61 = v36 - v33;
    v62 = v52 - &v36[v8];
    if (v36 - v33 < v62)
    {
      v62 = v36 - v33;
    }

    if (v62)
    {
      v63 = -v62;
      if (v67)
      {
        do
        {
          v64 = *v35;
          *v35++ = v52[v63];
          v52[v63] = v64;
          v58 = __CFADD__(v63++, 1);
        }

        while (!v58);
      }

      else
      {
        do
        {
          v65 = *v35;
          *v35 = *&v52[v63];
          v35 += 8;
          *&v52[v63] = v65;
          v63 += 8;
        }

        while (v63);
      }
    }

    if (v54 > v8)
    {
      result = qSort(v7, v54 / v8, a3, a4);
    }

    if (v61 > v8)
    {
      return qSort(&v52[-v61], v61 / v8, a3, a4);
    }
  }

  else
  {
    v11 = a3 * a2;
    if (a3 < v11)
    {
      v12 = result + v11;
      v13 = (result + a3);
      v14 = result;
      do
      {
        if (v13 > v7)
        {
          v15 = v14;
          v16 = v13;
          do
          {
            v17 = v16;
            v16 += v9;
            result = (a4)(v16, v17);
            if (result < 1)
            {
              break;
            }

            if (v68)
            {
              v18 = v67;
              if (v67)
              {
                v19 = 0;
                do
                {
                  v20 = v17[v19];
                  v17[v19] = *(v15 + v19);
                  *(v15 + v19++) = v20;
                }

                while (v8 != v19);
              }

              else
              {
                v22 = v15 + v8;
                do
                {
                  v23 = *(v22 + v18);
                  *(v22 + v18) = *(v15 + v18);
                  *(v15 + v18) = v23;
                  v18 += 8;
                }

                while (v8 != v18);
              }
            }

            else
            {
              v21 = *v17;
              *v17 = *v16;
              *v16 = v21;
            }

            v15 += v9;
          }

          while (v16 > v7);
        }

        v13 += v8;
        v14 += v8;
      }

      while (v13 < v12);
    }
  }

  return result;
}

CAHDec *createSalviaAvcDecoder(uint64_t a1)
{
  v2 = operator new(0x3EE0uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecSalviaAvc::CAHDecSalviaAvc(v2, a1);
  }

  return v3;
}

CAHDec *CAHDecSalviaAvc::CAHDecSalviaAvc(CAHDec *a1, uint64_t a2)
{
  CAHDec::CAHDec(a1);
  *v4 = &unk_288665DD0;
  *(v4 + 256) = a2;
  *(v4 + 456) = 944 * *(a2 + 7388) + 165448;
  *(v4 + 8) = 1608;
  *(v4 + 16) = xmmword_27775BDE0;
  *(v4 + 32) = 1;
  *(v4 + 56) = a2;
  *(v4 + 15920) = 0u;
  *(v4 + 15936) = 0u;
  *(v4 + 15952) = 0u;
  *(v4 + 15968) = 0u;
  *(v4 + 15984) = 0u;
  *(v4 + 16000) = 0u;
  *(v4 + 16016) = 0u;
  *(v4 + 16032) = 0u;
  *(v4 + 16048) = 0u;
  *(v4 + 16064) = 0u;
  *(v4 + 16080) = 0u;
  bzero((v4 + 560), 0x3BD0uLL);
  return a1;
}

void CAHDecSalviaAvc::~CAHDecSalviaAvc(CAHDecSalviaAvc *this)
{
  *this = &unk_288665DD0;
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecSalviaAvc::~CAHDecSalviaAvc(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecSalviaAvc::init(CAHDecSalviaAvc *this)
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

uint64_t CAHDecSalviaAvc::initPicture(CAHDecSalviaAvc *this, int a2, __int16 a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = 944 * *(*(this + 32) + 7388) + 165448;
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
    *(this + 3975) = 0;
    *(this + 1995) = 0;
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

uint64_t CAHDecSalviaAvc::populateSlices(CAHDecSalviaAvc *this, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = *(this + *(this + 13) + 34) + 1608;
    v5 = a2;
    do
    {
      CAHDecSalviaAvc::populateSliceRegisters(this, v4, v3++);
      v4 += 944;
    }

    while (v5 != v3);
  }

  return 0;
}

uint64_t CAHDecSalviaAvc::populateSliceRegisters(uint64_t a1, uint64_t a2, signed int a3)
{
  v6 = 0;
  v100 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 256);
  v8 = *(v7 + 3500);
  v9 = *(v7 + 3504);
  v10 = *(v7 + 3192);
  v11 = *(v7 + 3184);
  v12 = *(v7 + 6952);
  v13 = *(v7 + 3208);
  v14 = *(v7 + 3200) + 1848 * a3;
  *(a2 + 4) = 0;
  v15 = 32 * (*(v14 + 1424) & 3);
  *(a2 + 4) = v15;
  if (*(v14 + 24) != 2)
  {
    v6 = (*(v14 + 63) & 0xF) << 11;
  }

  v16 = v6 | v15;
  *(a2 + 4) = v16;
  v86 = v11;
  v87 = v8;
  if (*(v14 + 24) == 1)
  {
    v17 = (*(v14 + 64) & 0xF) << 7;
  }

  else
  {
    v17 = 0;
  }

  v19 = v17 | v16;
  *(a2 + 4) = v19;
  if (*(v14 + 24) == 1)
  {
    v20 = (*(v14 + 61) == 0) << 15;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20 | v19 & 0x7FFF7FE0;
  *(a2 + 4) = v21;
  if (*(v14 + 24))
  {
    v22 = 0x20000;
  }

  else
  {
    v22 = 0x10000;
  }

  if (*(v14 + 24) == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  *(a2 + 4) = v23 | v21 & 0xFFFFFFE0;
  if (*(v14 + 24) != 1)
  {
    goto LABEL_20;
  }

  v24 = v13 + 13040 * a3 + 7224;
  *(v14 + 1832) = v24;
  if ((*(v13 + 13040 * a3 + 7227) & 1) != 0 || (v25 = *(v13 + 13040 * a3 + 7256), *(a1 + 4 * v25 + 464)))
  {
    v26 = 16;
  }

  else
  {
    if (!*(a1 + 15900))
    {
      *(a1 + 15960) = *(v13 + 13040 * a3 + 7264);
      *(a1 + 15952) = v25;
      *(a1 + 15900) = 1;
      *(a2 + 4) |= 0x40000u;
      v24 = *(v14 + 1832);
      if (!v24 || !*(a1 + 15900))
      {
        goto LABEL_20;
      }
    }

    v82 = *(v24 + 40);
    if (v82 == *(a1 + 15960))
    {
      goto LABEL_20;
    }

    *(a1 + 15960) = v82;
    *(a1 + 15952) = *(v24 + 32);
    v26 = 0x40000;
  }

  *(a2 + 4) |= v26;
LABEL_20:
  *(a2 + 920) = 0;
  v27 = *(a2 + 4);
  if (*(v14 + 24) == 1 && (v27 & 0x40000) != 0)
  {
    v29 = (a1 + 176 * *(*(v14 + 1832) + 32));
    v30 = v29[658];
    v31 = v29[660];
    v97 = v29[659];
    v98 = v31;
    v99 = v29[661];
    v32 = v29[654];
    v33 = v29[656];
    v93 = v29[655];
    v94 = v33;
    v95 = v29[657];
    v96 = v30;
    v34 = v29[652];
    *buf = v29[651];
    *&buf[16] = v34;
    v91 = v29[653];
    v92 = v32;
    *(a1 + 15900) = 1;
    if (*buf || *(&v98 + 1))
    {
      result = CAHDec::addToPatcherList(a1, buf, 944 * a3 + 2528, 0, 0xFFFFFFFFLL, 8, 0xFFFFFF, 4);
      if (result)
      {
        return result;
      }
    }

    v27 = *(a2 + 4);
  }

  v84 = a3;
  v85 = a1;
  v83 = (v10 + 604 * v9);
  *(a2 + 4) = v27 & 0x77FFFF | 0x2D000000;
  v36 = *(v14 + 24);
  if (v36 <= 1)
  {
    v37 = v7 + 6760;
    v38 = v13 + 13040 * a3;
    if (*(v38 + 13032))
    {
      v39 = 0;
      v40 = a2 + 8;
      v41 = v38 + 1416;
      v42 = MEMORY[0x277D86220];
      do
      {
        v43 = (16 * (v39 & 0xF)) | 0x2DC00000;
        *(v40 + 4 * v39) = v43;
        if (v12)
        {
          v44 = 0;
          while (*(*(v37 + 8 * v44) + 12) != *(v41 + 176 * v39 + 12))
          {
            if (v12 == ++v44)
            {
              goto LABEL_35;
            }
          }

          *(v40 + 4 * v39) = v44 & 0xF | v43;
        }

        else
        {
LABEL_35:
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v45 = *(v41 + 176 * v39 + 32);
            *buf = 67109632;
            *&buf[4] = v39;
            *&buf[8] = 1024;
            *&buf[10] = v45;
            *&buf[14] = 1024;
            *&buf[16] = v12;
            _os_log_impl(&dword_277606000, v42, OS_LOG_TYPE_DEFAULT, "AppleAVD: Error: list-0 slice(%2d) RefIdx[%2d] not found in %d ref_pics!!\n", buf, 0x14u);
          }
        }

        ++v39;
      }

      while (v39 < *(v38 + 13032));
      v36 = *(v14 + 24);
    }

    else
    {
      LODWORD(v39) = 0;
    }

    if (v36 == 1 && *(v38 + 13036))
    {
      v46 = 0;
      v47 = a2 + 8;
      v48 = v38 + 7224;
      v49 = MEMORY[0x277D86220];
      do
      {
        v50 = (16 * (v46 & 0xF)) | 0x2DC00100;
        *(v47 + 4 * v39) = v50;
        if (v12)
        {
          v51 = 0;
          while (*(*(v37 + 8 * v51) + 12) != *(v48 + 176 * v46 + 12))
          {
            if (v12 == ++v51)
            {
              goto LABEL_48;
            }
          }

          *(v47 + 4 * v39) = v51 & 0xF | v50;
        }

        else
        {
LABEL_48:
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v52 = *(v48 + 176 * v46 + 32);
            *buf = 67109632;
            *&buf[4] = v39;
            *&buf[8] = 1024;
            *&buf[10] = v52;
            *&buf[14] = 1024;
            *&buf[16] = v12;
            _os_log_impl(&dword_277606000, v49, OS_LOG_TYPE_DEFAULT, "AppleAVD: Error: list-1 slice(%2d) RefIdx[%2d] not found in %d ref_pics!!\n", buf, 0x14u);
          }
        }

        LODWORD(v39) = v39 + 1;
        ++v46;
      }

      while (v46 < *(v38 + 13036));
    }
  }

  *(a2 + 136) = 0x2DD0000000000000;
  v53 = 87;
  if (*(v14 + 24) == 1)
  {
    v53 = 88;
  }

  v54 = ((v83[v53] & 3) << 6) | 0x2DD00000;
  *(a2 + 140) = v54;
  v55 = v54 & 0xFFFFFFC7 | (8 * (*(v14 + 376) & 7));
  *(a2 + 140) = v55;
  v56 = *(v86 + 2224 * v87 + 4);
  if (*(v86 + 2224 * v87 + 4))
  {
    v56 = *(v14 + 377) & 7;
  }

  v57 = v56 | v55;
  *(a2 + 140) = v57;
  v58 = *(v14 + 24);
  if (v58 != 1)
  {
    goto LABEL_106;
  }

  v59 = v83[88];
  if (v59 != 2)
  {
    goto LABEL_60;
  }

  *(a2 + 140) = v57 & 0x2DD000C0 | 0x2D;
  v58 = *(v14 + 24);
  if (v58 != 1)
  {
LABEL_106:
    if (v58 || !v83[87])
    {
      goto LABEL_80;
    }

LABEL_64:
    v60 = 0;
    v61 = 0;
    v62 = a2 + 144;
    v63 = a2 + 528;
    do
    {
      if (*(v14 + 378 + v60))
      {
        v64 = ((v60 & 0xF) << 9) | 0x2DE04000;
        *(v62 + 4 * v61) = v64;
        *(v62 + 4 * v61) = v64 | *(v14 + 394 + 2 * v60) & 0x1FF;
        *(v63 + 4 * v61) = 770703360;
        *(v63 + 4 * v61++) = *(v14 + 426 + 2 * v60) | 0x2DF00000;
      }

      if (*(v14 + 458 + v60))
      {
        v65 = 0;
        v66 = 1;
        do
        {
          v67 = v66;
          v68 = (((v60 & 0xF) << 9) | (v65 << 14)) + 769687552;
          *(v62 + 4 * v61) = v68;
          *(v62 + 4 * v61) = v68 | *(v14 + 474 + 4 * v60 + 2 * v65) & 0x1FF;
          *(v63 + 4 * v61) = 770703360;
          *(v63 + 4 * v61++) = *(v14 + 538 + 4 * v60 + 2 * v65) | 0x2DF00000;
          v65 = 1;
          v66 = 0;
        }

        while ((v67 & 1) != 0);
      }

      ++v60;
    }

    while (v60 <= *(v14 + 63));
    if (*(v14 + 24) == 1)
    {
      v69 = 0;
      do
      {
        if (*(v14 + 602 + v69))
        {
          v70 = ((v69 & 0xF) << 9) + 769679360;
          *(v62 + 4 * v61) = v70;
          *(v62 + 4 * v61) = v70 | *(v14 + 618 + 2 * v69) & 0x1FF;
          *(v63 + 4 * v61) = 770703360;
          *(v63 + 4 * v61++) = *(v14 + 650 + 2 * v69) | 0x2DF00000;
        }

        if (*(v14 + 682 + v69))
        {
          v71 = 0;
          v72 = 1;
          do
          {
            v73 = v72;
            v74 = (((v69 & 0xF) << 9) | (v71 << 14)) + 769695744;
            *(v62 + 4 * v61) = v74;
            *(v62 + 4 * v61) = v74 | *(v14 + 698 + 4 * v69 + 2 * v71) & 0x1FF;
            *(v63 + 4 * v61) = 770703360;
            *(v63 + 4 * v61++) = *(v14 + 762 + 4 * v69 + 2 * v71) | 0x2DF00000;
            v71 = 1;
            v72 = 0;
          }

          while ((v73 & 1) != 0);
        }

        ++v69;
      }

      while (v69 <= *(v14 + 64));
    }

    *(a2 + 136) = v61;
    goto LABEL_80;
  }

  v59 = v83[88];
LABEL_60:
  if (v59 == 1)
  {
    goto LABEL_64;
  }

LABEL_80:
  *(a2 + 912) = 0;
  *(a2 + 912) = (((v83[89] + *(v14 + 1425)) << 10) + 26624) & 0x1FC00 | 0x2D900000;
  *(a2 + 916) = 0;
  v75 = (*(v14 + 1428) == 0) << 17;
  *(a2 + 916) = v75;
  if (*(v14 + 1428) != 1)
  {
    v76 = v75 | 0x10000;
    *(a2 + 916) = v76;
    v77 = v76 | ((*(v14 + 1429) & 0xF) << 8);
    *(a2 + 916) = v77;
    v75 = v77 | ((*(v14 + 1430) & 0xF) << 12);
  }

  *(a2 + 916) = v75 | 0x2DA00000;
  v78 = *(v14 + 1436);
  if (v83[3])
  {
    if ((v78 & 7) != 0)
    {
      *(v14 + 1436) = (v78 + 7) & 0xFFFFFFF8;
    }

    v79 = 763363328;
  }

  else
  {
    v79 = ((*(v14 + 1436) & 7) << 15) | 0x2D800000;
  }

  *(a2 + 924) = v79;
  v88 = 0;
  v89 = 0;
  if (!CAVDAvcDecoder::GetSDataMemInfo(*(v85 + 256), v84, &v89, &v88))
  {
    return 0xFFFFFFFFLL;
  }

  v80 = v89;
  if (!*v89 && !*(v89 + 152) && !*(v89 + 156))
  {
    goto LABEL_95;
  }

  v81 = v88;
  if (HIDWORD(v88))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "populateSliceRegisters";
      *&buf[12] = 1024;
      *&buf[14] = 1502;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
      v81 = v88;
    }
  }

  result = CAHDec::addToPatcherList(v85, v80, 944 * v84 + 2540, v81, 0xFFFFFFFFLL, 0, -1, 4);
  if (!result)
  {
LABEL_95:
    result = 0;
    *(a2 + 936) = *(v14 + 16) - (*(v14 + 1436) >> 3);
  }

  return result;
}

uint64_t CAHDecSalviaAvc::updateCommonRegisters(CAHDecSalviaAvc *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

void CAHDecSalviaAvc::copyScalingList(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
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
    v12 = &dword_27775D94C;
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
    v31 = a6 + (dword_27775D964[v26] << 6);
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

void CAHDecSalviaAvc::AvcSeqScalingListFallBack(uint64_t a1, uint64_t a2)
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
            v4[9] = unk_27775D9CC;
            v10 = xmmword_27775D9DC;
            v11 = unk_27775D9EC;
          }

          else
          {
            v4[8] = avcDefaultInterScalingList8x8;
            v4[9] = unk_27775D98C;
            v10 = xmmword_27775D99C;
            v11 = unk_27775D9AC;
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

void CAHDecSalviaAvc::AvcPicScalingListFallBack(uint64_t a1, uint64_t a2, uint64_t a3)
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
              *(a3 + v4 - 151) = unk_27775D9CC;
              v9 = xmmword_27775D9DC;
              v10 = unk_27775D9EC;
            }

            else
            {
              *v8 = avcDefaultInterScalingList8x8;
              *(a3 + v4 - 151) = unk_27775D98C;
              v9 = xmmword_27775D99C;
              v10 = unk_27775D9AC;
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

uint64_t CAHDecSalviaAvc::populateSequenceRegisters(CAHDecSalviaAvc *this)
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

    CAHDecSalviaAvc::AvcSeqScalingListFallBack(this, v8);
    CAHDecSalviaAvc::copyScalingList(v16, v3 + 12, *(this + 33) + 644, v8 + 22, v8 + 34, v8 + 130, v15);
  }

  return 0;
}

uint64_t CAHDecSalviaAvc::populatePictureRegisters(CAHDecSalviaAvc *this)
{
  v213 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(v2 + 3500);
  v4 = *(v2 + 3504);
  v5 = *(v2 + 3184);
  v6 = *(v2 + 3192);
  v7 = *(v2 + 2088);
  v8 = *(v2 + 3040);
  v9 = *(v2 + 2644);
  v196 = *(v2 + 8);
  v197 = *(v2 + 3020);
  v10 = *(v2 + 6904);
  v212[8] = *(v2 + 6888);
  v212[9] = v10;
  v11 = *(v2 + 6936);
  v212[10] = *(v2 + 6920);
  v212[11] = v11;
  v12 = *(v2 + 6840);
  v212[4] = *(v2 + 6824);
  v212[5] = v12;
  v13 = *(v2 + 6872);
  v212[6] = *(v2 + 6856);
  v212[7] = v13;
  v14 = *(v2 + 6776);
  v212[0] = *(v2 + 6760);
  v212[1] = v14;
  v15 = *(v2 + 6808);
  v212[2] = *(v2 + 6792);
  v212[3] = v15;
  v198 = *(v2 + 6952);
  v16 = (*(*v2 + 184))(v2);
  if (v16)
  {
    v17 = *(*(this + 32) + 2756) != 0;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(this + 33);
  v19 = v5 + 2224 * v3;
  v20 = (v6 + 604 * v4);
  *(v18 + 52) = 766509056;
  if (**(*(this + 32) + 3200) == 5)
  {
    v21 = 766517248;
  }

  else
  {
    v21 = 766509056;
  }

  if (v17)
  {
    v22 = 688;
  }

  else
  {
    v22 = 672;
  }

  if (v9)
  {
    v23 = 4160;
  }

  else
  {
    v23 = 64;
  }

  *(v18 + 52) = v23 | ((v9 == 1) << 10) | v22 | v21;
  *(v18 + 56) = 0x1000000;
  v24 = (16 * (*(v19 + 1558) & 0xFFF)) | 0xF;
  *(v18 + 60) = v24;
  v25 = v24 | (*(v19 + 1560) << 20) | 0xF0000;
  *(v18 + 64) = 0;
  *(v18 + 60) = v25;
  v26 = (*(v19 + 8) & 1) << 18;
  *(v18 + 68) = v26;
  v27 = v26 & 0xFFF7FFFF | ((v20[93] & 1) << 19);
  *(v18 + 68) = v27;
  v28 = v27 & 0xFFEFFFFF | ((v20[3] & 1) << 20);
  *(v18 + 68) = v28;
  *(v18 + 68) = v28 | ((**(*(this + 32) + 3200) != 5) << 21);
  v29 = *(v18 + 72) & 0xFFFFFC1F | (32 * (v20[91] & 0x1F));
  *(v18 + 72) = v29;
  *(v18 + 72) = v29 & 0xFFFFFFE0 | v20[601] & 0x1F;
  if (v20[96])
  {
    if (*(v19 + 4) == 3)
    {
      v30 = 12;
    }

    else
    {
      v30 = 8;
    }

    v31 = *(this + 33);
    CAHDecSalviaAvc::AvcPicScalingListFallBack(v16, v19, v20);
    CAHDecSalviaAvc::copyScalingList(v32, (v18 + 76), v31 + 1128, (v20 + 109), (v20 + 121), (v20 + 217), v30);
  }

  *(v18 + 80) = *(this + 3978);
  *(v18 + 84) = *(this + 3979);
  *(v18 + 88) = 3145738;
  v33 = this + 9008;
  for (i = 92; i != 120; i += 4)
  {
    *(*(this + 33) + i) = 0;
    v35 = *(this + 33);
    v36 = *(v35 + i);
    *(v35 + i) = 0;
    *(*(this + 33) + i) ^= 0xFFFFFFu;
    v37 = *(this + 33);
    v38 = *(v37 + i);
    *(v37 + i) = v36;
    if (*v33 || *(v33 + 38) || *(v33 + 39))
    {
      result = CAHDec::addToPatcherList(this, v33, i, 0, 0xFFFFFFFFLL, 8, v38, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + i + 28) = 0;
    *(*(this + 33) + i + 28) = *(*(this + 33) + i + 28) & 0x800001FF | (((*(this + 3972) >> 9) & 0x3FFFFF) << 9);
    v33 += 176;
  }

  *(*(this + 33) + 148) = 0;
  *(*(this + 33) + 152) = 0;
  *(*(this + 33) + 156) = 0;
  v40 = *(this + 33);
  v41 = *(v40 + 156);
  *(v40 + 156) = 0;
  *(*(this + 33) + 156) ^= 0xFFFFFFu;
  v42 = *(this + 33);
  v43 = *(v42 + 156);
  *(v42 + 156) = v41;
  if (!*(this + 1830) && !*(this + 3698) && !*(this + 3699) || (result = CAHDec::addToPatcherList(this, this + 1830, 156, 0, 0xFFFFFFFFLL, 8, v43, 4), !result))
  {
    if ((*(*(this + 33) + 160) = 0, v44 = *(this + 33), v45 = *(v44 + 160), *(v44 + 160) = 0, *(*(this + 33) + 160) ^= 0xFFFFFFu, v46 = *(this + 33), v47 = *(v46 + 160), *(v46 + 160) = v45, !*(this + 1852)) && !*(this + 3742) && !*(this + 3743) || (result = CAHDec::addToPatcherList(this, this + 1852, 160, 0, 0xFFFFFFFFLL, 8, v47, 4), !result))
    {
      if ((*(*(this + 33) + 164) = 0, v48 = *(this + 33), v49 = *(v48 + 164), *(v48 + 164) = 0, *(*(this + 33) + 164) ^= 0xFFFFFFu, v50 = *(this + 33), v51 = *(v50 + 164), *(v50 + 164) = v49, !*(this + 1874)) && !*(this + 3786) && !*(this + 3787) || (result = CAHDec::addToPatcherList(this, this + 1874, 164, 0, 0xFFFFFFFFLL, 8, v51, 4), !result))
      {
        if ((*(*(this + 33) + 168) = 0, v52 = *(this + 33), v53 = *(v52 + 168), *(v52 + 168) = 0, *(*(this + 33) + 168) ^= 0xFFFFFFu, v54 = *(this + 33), v55 = *(v54 + 168), *(v54 + 168) = v53, !*(this + 1896)) && !*(this + 3830) && !*(this + 3831) || (result = CAHDec::addToPatcherList(this, this + 1896, 168, 0, 0xFFFFFFFFLL, 8, v55, 4), !result))
        {
          if ((*(*(this + 33) + 172) = 0, v56 = *(this + 33), v57 = *(v56 + 172), *(v56 + 172) = 0, *(*(this + 33) + 172) ^= 0xFFFFFFu, v58 = *(this + 33), v59 = *(v58 + 172), *(v58 + 172) = v57, !*(this + 1918)) && !*(this + 3874) && !*(this + 3875) || (result = CAHDec::addToPatcherList(this, this + 1918, 172, 0, 0xFFFFFFFFLL, 8, v59, 4), !result))
          {
            if ((*(*(this + 33) + 176) = 0, v60 = *(this + 33), v61 = *(v60 + 176), *(v60 + 176) = 0, *(*(this + 33) + 176) ^= 0xFFFFFFu, v62 = *(this + 33), v63 = *(v62 + 176), *(v62 + 176) = v61, !*(this + 1940)) && !*(this + 3918) && !*(this + 3919) || (result = CAHDec::addToPatcherList(this, this + 1940, 176, 0, 0xFFFFFFFFLL, 8, v63, 4), !result))
            {
              if ((*(*(this + 33) + 180) = 0, *(*(this + 33) + 184) = 0, v64 = *(this + 33), v65 = *(v64 + 184), *(v64 + 184) = 0, *(*(this + 33) + 184) ^= 0xFFFFFFu, v66 = *(this + 33), v67 = *(v66 + 184), *(v66 + 184) = v65, !*(this + 1280)) && !*(this + 2598) && !*(this + 2599) || (result = CAHDec::addToPatcherList(this, this + 1280, 184, 0, 0xFFFFFFFFLL, 8, v67, 4), !result))
              {
                if ((*(*(this + 33) + 188) = 0, v68 = *(this + 33), v69 = *(v68 + 188), *(v68 + 188) = 0, *(*(this + 33) + 188) ^= 0xFFFFFFu, v70 = *(this + 33), v71 = *(v70 + 188), *(v70 + 188) = v69, v72 = (this + 176 * v8 + 10416), !*v72) && !*(this + 44 * v8 + 2642) && !*(this + 44 * v8 + 2643) || (result = CAHDec::addToPatcherList(this, v72, 188, 0, 0xFFFFFFFFLL, 8, v71, 4), !result))
                {
                  if ((*(*(this + 33) + 192) = 0, v73 = *(this + 33), v74 = *(v73 + 192), *(v73 + 192) = 0, *(*(this + 33) + 192) ^= 0x1FFFFFFu, v75 = *(this + 33), v76 = *(v75 + 192), *(v75 + 192) = v74, v77 = this + 176 * v8 + 560, !*v77) && !*(v77 + 38) && !*(v77 + 39) || (result = CAHDec::addToPatcherList(this, v77, 192, 0, 0xFFFFFFFFLL, 7, v76, 4), !result))
                  {
                    if ((*(*(this + 33) + 196) = 0, v78 = *(this + 33), v79 = *(v78 + 196), *(v78 + 196) = 0, *(*(this + 33) + 196) ^= 0x1FFFFFFu, v80 = *(this + 33), v81 = *(v80 + 196), *(v80 + 196) = v79, v82 = (v7 + 8), !*(v7 + 8)) && !*(v7 + 160) && !*(v7 + 164) || (result = CAHDec::addToPatcherList(this, (v7 + 8), 196, *(v7 + 60), 0xFFFFFFFFLL, 7, v81, 4), !result))
                    {
                      if ((*(*(this + 33) + 200) = 0, v83 = *(this + 33), v84 = *(v83 + 200), *(v83 + 200) = 0, *(*(this + 33) + 200) ^= 0x1FFFFFFu, v85 = *(this + 33), v86 = *(v85 + 200), *(v85 + 200) = v84, v87 = this + 176 * v8 + 4784, !*v87) && !*(v87 + 38) && !*(v87 + 39) || (result = CAHDec::addToPatcherList(this, v87, 200, 0, 0xFFFFFFFFLL, 7, v86, 4), !result))
                      {
                        if ((*(*(this + 33) + 204) = 0, v88 = *(this + 33), v89 = *(v88 + 204), *(v88 + 204) = 0, *(*(this + 33) + 204) ^= 0x1FFFFFFu, v90 = *(this + 33), v91 = *(v90 + 204), *(v90 + 204) = v89, !*v82) && !*(v7 + 160) && !*(v7 + 164) || (result = CAHDec::addToPatcherList(this, (v7 + 8), 204, *(v7 + 64), 0xFFFFFFFFLL, 7, v91, 4), !result))
                        {
                          if (*(*(this + 32) + 2648) != 1 || ((v92 = *(this + 33), v93 = *(v92 + 196), *(v92 + 196) = 0, *(*(this + 33) + 196) ^= 0x1FFFFFFu, v94 = *(this + 33), v95 = *(v94 + 196), *(v94 + 196) = v93, !*v82) && !*(v7 + 160) && !*(v7 + 164) || (result = CAHDec::addToPatcherList(this, (v7 + 8), 196, *(v7 + 60), 0xFFFFFFFFLL, 7, v95, 4), !result)) && ((v96 = *(this + 33), v97 = *(v96 + 204), *(v96 + 204) = 0, *(*(this + 33) + 204) ^= 0x1FFFFFFu, v98 = *(this + 33), v99 = *(v98 + 204), *(v98 + 204) = v97, !*v82) && !*(v7 + 160) && !*(v7 + 164) || (result = CAHDec::addToPatcherList(this, (v7 + 8), 204, *(v7 + 64), 0xFFFFFFFFLL, 7, v99, 4), !result)) && ((v100 = *(this + 33), v101 = *(v100 + 192), *(v100 + 192) = 0, *(*(this + 33) + 192) ^= 0x1FFFFFFu, v102 = *(this + 33), v103 = *(v102 + 192), *(v102 + 192) = v101, !*v82) && !*(v7 + 160) && !*(v7 + 164) || (result = CAHDec::addToPatcherList(this, (v7 + 8), 192, *(v7 + 72), 0xFFFFFFFFLL, 7, v103, 4), !result)) && ((v104 = *(this + 33), v105 = *(v104 + 200), *(v104 + 200) = 0, *(*(this + 33) + 200) ^= 0x1FFFFFFu, v106 = *(this + 33), v107 = *(v106 + 200), *(v106 + 200) = v105, !*v82) && !*(v7 + 160) && !*(v7 + 164) || (result = CAHDec::addToPatcherList(this, (v7 + 8), 200, *(v7 + 76), 0xFFFFFFFFLL, 7, v107, 4), !result)))
                          {
                            if (*(v18 + 52) & 0x2000 | v198)
                            {
                              *(this + v8 + 116) = 0;
                              *(*(this + 33) + 208) = 0;
                              if (v198)
                              {
                                v108 = 0;
                                if (v17)
                                {
                                  v109 = 0x2000000;
                                }

                                else
                                {
                                  v109 = 0;
                                }

                                v195 = v109;
                                do
                                {
                                  v110 = *(v212 + v108);
                                  v111 = *(v110 + 32);
                                  *(*(this + 33) + 4 * v108 + 208) = 0;
                                  *(*(this + 33) + 4 * v108 + 208) = *(*(this + 33) + 4 * v108 + 208) & 0xFFFFFFF | ((v198 << 28) - 0x10000000);
                                  *(*(this + 33) + 4 * v108 + 208) &= 0xF3FFFFFF;
                                  *(*(this + 33) + 4 * v108 + 208) = *(*(this + 33) + 4 * v108 + 208) & 0xFDFFFFFF | v195;
                                  *(*(this + 33) + 4 * v108 + 208) |= 0x1000000u;
                                  v112 = v197 - *(v110 + 12);
                                  v113 = v112 & 0x1FFFF;
                                  if (v112 < -32768)
                                  {
                                    v113 = 98304;
                                  }

                                  if (v112 < 0x8000)
                                  {
                                    v114 = v113;
                                  }

                                  else
                                  {
                                    v114 = 0x7FFF;
                                  }

                                  *(*(this + 33) + 4 * v108 + 208) = *(*(this + 33) + 4 * v108 + 208) & 0xFFFE0000 | v114;
                                  *(*(this + 33) + 4 * v108 + 208) = *(*(this + 33) + 4 * v108 + 208) & 0xFFFDFFFF | ((*(v110 + 1) & 1) << 17);
                                  v115 = *(this + 32);
                                  if (*(v110 + 28) == 1)
                                  {
                                    v210 = 0u;
                                    v211 = 0u;
                                    v208 = 0u;
                                    v209 = 0u;
                                    v206 = 0u;
                                    v207 = 0u;
                                    v204 = 0u;
                                    v205 = 0u;
                                    v202 = 0u;
                                    v203 = 0u;
                                    memset(buf, 0, sizeof(buf));
                                    DPB = AVC_RLM::getDPB(*(v115 + 2992), buf);
                                    if (DPB < 1)
                                    {
                                      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                      {
                                        return 0xFFFFFFFFLL;
                                      }

                                      v199 = 136315138;
                                      v200 = "populatePictureRegisters";
                                      v163 = MEMORY[0x277D86220];
                                      v164 = "AppleAVD: ERROR: %s: No ref pics found!\n";
                                    }

                                    else
                                    {
                                      v117 = DPB;
                                      while (v117 >= 1)
                                      {
                                        v110 = buf[--v117];
                                        if (!*(v110 + 28))
                                        {
                                          v111 = *(v110 + 32);
                                          v115 = *(this + 32);
                                          *(v115 + 2702) = 1;
                                          goto LABEL_108;
                                        }
                                      }

                                      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                      {
                                        return 0xFFFFFFFFLL;
                                      }

                                      v199 = 136315138;
                                      v200 = "populatePictureRegisters";
                                      v163 = MEMORY[0x277D86220];
                                      v164 = "AppleAVD: ERROR: %s: No non-existing ref frames found!\n";
                                    }

                                    v165 = &v199;
                                    v166 = 12;
                                    goto LABEL_162;
                                  }

LABEL_108:
                                  if ((*(*v115 + 184))(v115))
                                  {
                                    v118 = *(this + 32);
                                    if (*(v118 + 2756))
                                    {
                                      buf[0] = 0;
                                      if ((CAVDAvcDecoder::decodeGetRenderTargetRef(v118, v111, *(v110 + 56), *(v110 + 64), buf) & 1) == 0)
                                      {
                                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                        {
                                          LOWORD(v199) = 0;
                                          v163 = MEMORY[0x277D86220];
                                          v164 = "AppleAVD: decodeGetRenderTargetRef RETURNED ERROR\n";
                                          v165 = &v199;
                                          v166 = 2;
LABEL_162:
                                          _os_log_impl(&dword_277606000, v163, OS_LOG_TYPE_DEFAULT, v164, v165, v166);
                                        }

                                        return 0xFFFFFFFFLL;
                                      }

                                      *(v110 + 40) = buf[0] + 8;
                                    }
                                  }

                                  *(*(this + 33) + 4 * v108 + 272) = 0;
                                  v119 = 4 * v108;
                                  v120 = *(this + 33) + 4 * v108;
                                  v121 = *(v120 + 272);
                                  *(v120 + 272) = 0;
                                  *(*(this + 33) + 4 * v108 + 272) ^= 0x1FFFFFFu;
                                  v122 = *(this + 33) + 4 * v108;
                                  v123 = *(v122 + 272);
                                  *(v122 + 272) = v121;
                                  v124 = this + 176 * v111 + 560;
                                  if (*v124 || *(v124 + 38) || *(v124 + 39))
                                  {
                                    result = CAHDec::addToPatcherList(this, v124, v119 + 272, 0, 0xFFFFFFFFLL, 7, v123, 4);
                                    if (result)
                                    {
                                      return result;
                                    }
                                  }

                                  *(*(this + 33) + 4 * v108 + 336) = 0;
                                  v125 = *(this + 33) + 4 * v108;
                                  v126 = *(v125 + 336);
                                  *(v125 + 336) = 0;
                                  *(*(this + 33) + 4 * v108 + 336) ^= 0x1FFFFFFu;
                                  v127 = *(this + 33) + 4 * v108;
                                  v128 = *(v127 + 336);
                                  *(v127 + 336) = v126;
                                  v129 = *(v110 + 40);
                                  if (*v129 || *(v129 + 152) || *(v129 + 156))
                                  {
                                    result = CAHDec::addToPatcherList(this, v129, v119 + 336, *(v129 + 52), 0xFFFFFFFFLL, 7, v128, 4);
                                    if (result)
                                    {
                                      return result;
                                    }
                                  }

                                  *(*(this + 33) + 4 * v108 + 400) = 0;
                                  v130 = *(this + 33) + 4 * v108;
                                  v131 = *(v130 + 400);
                                  *(v130 + 400) = 0;
                                  *(*(this + 33) + 4 * v108 + 400) ^= 0x1FFFFFFu;
                                  v132 = *(this + 33) + 4 * v108;
                                  v133 = *(v132 + 400);
                                  *(v132 + 400) = v131;
                                  v134 = this + 176 * v111 + 4784;
                                  if (*v134 || *(v134 + 38) || *(v134 + 39))
                                  {
                                    result = CAHDec::addToPatcherList(this, v134, v119 + 400, 0, 0xFFFFFFFFLL, 7, v133, 4);
                                    if (result)
                                    {
                                      return result;
                                    }
                                  }

                                  *(*(this + 33) + 4 * v108 + 464) = 0;
                                  v135 = *(this + 33) + 4 * v108;
                                  v136 = *(v135 + 464);
                                  *(v135 + 464) = 0;
                                  *(*(this + 33) + 4 * v108 + 464) ^= 0x1FFFFFFu;
                                  v137 = *(this + 33) + 4 * v108;
                                  v138 = *(v137 + 464);
                                  *(v137 + 464) = v136;
                                  v139 = *(v110 + 40);
                                  if (*v139 || *(v139 + 152) || *(v139 + 156))
                                  {
                                    result = CAHDec::addToPatcherList(this, v139, v119 + 464, *(v139 + 56), 0xFFFFFFFFLL, 7, v138, 4);
                                    if (result)
                                    {
                                      return result;
                                    }
                                  }

                                  if (*(*(this + 32) + 2648) == 1)
                                  {
                                    v140 = *(this + 33) + 4 * v108;
                                    v141 = *(v140 + 336);
                                    *(v140 + 336) = 0;
                                    *(*(this + 33) + 4 * v108 + 336) ^= 0x1FFFFFFu;
                                    v142 = *(this + 33) + 4 * v108;
                                    v143 = *(v142 + 336);
                                    *(v142 + 336) = v141;
                                    v144 = *(v110 + 40);
                                    if (*v144 || *(v144 + 152) || *(v144 + 156))
                                    {
                                      result = CAHDec::addToPatcherList(this, v144, v119 + 336, *(v144 + 52), 0xFFFFFFFFLL, 7, v143, 4);
                                      if (result)
                                      {
                                        return result;
                                      }
                                    }

                                    v145 = *(this + 33) + 4 * v108;
                                    v146 = *(v145 + 464);
                                    *(v145 + 464) = 0;
                                    *(*(this + 33) + 4 * v108 + 464) ^= 0x1FFFFFFu;
                                    v147 = *(this + 33) + 4 * v108;
                                    v148 = *(v147 + 464);
                                    *(v147 + 464) = v146;
                                    v149 = *(v110 + 40);
                                    if (*v149 || *(v149 + 152) || *(v149 + 156))
                                    {
                                      result = CAHDec::addToPatcherList(this, v149, v119 + 464, *(v149 + 56), 0xFFFFFFFFLL, 7, v148, 4);
                                      if (result)
                                      {
                                        return result;
                                      }
                                    }

                                    v150 = *(this + 33) + 4 * v108;
                                    v151 = *(v150 + 272);
                                    *(v150 + 272) = 0;
                                    *(*(this + 33) + 4 * v108 + 272) ^= 0x1FFFFFFu;
                                    v152 = *(this + 33) + 4 * v108;
                                    v153 = *(v152 + 272);
                                    *(v152 + 272) = v151;
                                    v154 = *(v110 + 40);
                                    if (*v154 || *(v154 + 152) || *(v154 + 156))
                                    {
                                      result = CAHDec::addToPatcherList(this, v154, v119 + 272, *(v154 + 64), 0xFFFFFFFFLL, 7, v153, 4);
                                      if (result)
                                      {
                                        return result;
                                      }
                                    }

                                    v155 = *(this + 33) + 4 * v108;
                                    v156 = *(v155 + 400);
                                    *(v155 + 400) = 0;
                                    *(*(this + 33) + 4 * v108 + 400) ^= 0x1FFFFFFu;
                                    v157 = *(this + 33) + 4 * v108;
                                    v158 = *(v157 + 400);
                                    *(v157 + 400) = v156;
                                    v159 = *(v110 + 40);
                                    if (*v159 || *(v159 + 152) || *(v159 + 156))
                                    {
                                      result = CAHDec::addToPatcherList(this, v159, v119 + 400, *(v159 + 68), 0xFFFFFFFFLL, 7, v158, 4);
                                      if (result)
                                      {
                                        return result;
                                      }
                                    }
                                  }

                                  ++v108;
                                }

                                while (v108 != v198);
                              }
                            }

                            else
                            {
                              *(v18 + 52) |= 0x2000u;
                              *(this + v8 + 116) = 1;
                              *(*(this + 33) + 208) = 0;
                            }

                            *(*(this + 33) + 528) = 0;
                            *(*(this + 33) + 532) = 0;
                            *(*(this + 33) + 536) = 0;
                            *(*(this + 33) + 540) = 0;
                            if (!v9)
                            {
                              return 0;
                            }

                            v160 = *(this + 32);
                            v161 = *(v160 + 2892);
                            if (*(v160 + 2892))
                            {
                              v162 = *(v160 + 2904);
                              v161 = *(v160 + 2908);
                            }

                            else
                            {
                              v162 = 0;
                            }

                            v167 = *(v160 + 3544);
                            v168 = *(v167 + 52);
                            v169 = v168 + v162;
                            if (__CFADD__(v168, v162))
                            {
                              v170 = 1;
                            }

                            else
                            {
                              v171 = *(v167 + 56);
                              v172 = v171 + v161;
                              if (!__CFADD__(v171, v161))
                              {
                                v173 = *(this + 33);
                                v174 = *(v173 + 528);
                                *(v173 + 528) = 0;
                                *(*(this + 33) + 528) ^= 0xFFFFFFu;
                                v175 = *(this + 33);
                                v176 = *(v175 + 528);
                                *(v175 + 528) = v174;
                                v177 = *(*(this + 32) + 3544);
                                if (!*v177 && !*(v177 + 152) && !*(v177 + 156) || (result = CAHDec::addToPatcherList(this, v177, 528, v169, 0xFFFFFFFFLL, 8, v176, 4), !result))
                                {
                                  if ((v178 = *(this + 33), v179 = *(v178 + 532), *(v178 + 532) = 0, *(*(this + 33) + 532) ^= 0xFFFFFFu, v180 = *(this + 33), v181 = *(v180 + 532), *(v180 + 532) = v179, v182 = *(*(this + 32) + 3544), !*v182) && !*(v182 + 152) && !*(v182 + 156) || (result = CAHDec::addToPatcherList(this, v182, 532, v172, 0xFFFFFFFFLL, 8, v181, 4), !result))
                                  {
                                    if ((v183 = *(this + 33), v184 = *(v183 + 536), *(v183 + 536) = 0, *(*(this + 33) + 536) ^= 0xC0000000, v185 = *(this + 33), v186 = *(v185 + 536), *(v185 + 536) = v184, v187 = *(*(this + 32) + 3544), !*v187) && !*(v187 + 152) && !*(v187 + 156) || (result = CAHDec::addToPatcherList(this, v187, 536, v169, 192, 6, v186, 4), !result))
                                    {
                                      if ((v188 = *(this + 33), v189 = *(v188 + 540), *(v188 + 540) = 0, *(*(this + 33) + 540) ^= 0xC0000000, v190 = *(this + 33), v191 = *(v190 + 540), *(v190 + 540) = v189, v192 = *(*(this + 32) + 3544), !*v192) && !*(v192 + 152) && !*(v192 + 156) || (result = CAHDec::addToPatcherList(this, v192, 540, v172, 192, 6, v191, 4), !result))
                                      {
                                        if (v196)
                                        {
                                          result = 0;
                                          *(*(this + 33) + 536) = *(*(this + 33) + 536) & 0xFFFFC003 | (4 * ((*(*(*(this + 32) + 3544) + 76) >> 6) & 0xFFF));
                                          v193 = *(this + 33);
                                          v194 = *(*(*(this + 32) + 3544) + 80);
                                        }

                                        else
                                        {
                                          result = CAHDecCloverAvc::getSWRStride(this, *(v18 + 84) - *(v18 + 80) + 1, *(v19 + 6), *(v19 + 7), *(v19 + 2212));
                                          if (result)
                                          {
                                            return 0xFFFFFFFFLL;
                                          }

                                          *(*(this + 33) + 536) = *(*(this + 33) + 536) & 0xFFFFC003 | (4 * ((*(this + 3976) >> 6) & 0xFFF));
                                          v194 = *(this + 3977);
                                          v193 = *(this + 33);
                                        }

                                        *(v193 + 540) = *(v193 + 540) & 0xFFFF8003 | (4 * ((v194 >> 6) & 0x1FFF));
                                      }
                                    }
                                  }
                                }

                                return result;
                              }

                              v170 = 2;
                            }

                            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                            {
                              LODWORD(buf[0]) = 136315394;
                              *(buf + 4) = "populatePictureRegisters";
                              WORD2(buf[1]) = 1024;
                              *(&buf[1] + 6) = v170;
                              v163 = MEMORY[0x277D86220];
                              v164 = "AppleAVD: %s(): failKind = %d";
                              v165 = buf;
                              v166 = 18;
                              goto LABEL_162;
                            }

                            return 0xFFFFFFFFLL;
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

uint64_t CAHDecSalviaAvc::getTileIdxAbove(CAHDecSalviaAvc *this, unsigned int a2)
{
  v2 = *(*(this + 33) + 544);
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

uint64_t CAHDecSalviaAvc::populateAvdWork(CAHDecSalviaAvc *this, unsigned int a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *(this + 32);
  v2 = *(this + 33);
  v4 = *(v3 + 3200);
  v5 = *(v3 + 7388);
  v22 = 0;
  v23 = 0;
  if (a2)
  {
    v7 = 0;
    v8 = 0;
    v9 = (v2 + 2544);
    v10 = (v4 + 20);
    v21 = a2;
    v11 = 40 * a2;
    v12 = v2 + 944 * v5;
    while (1)
    {
      v13 = v12 + v7;
      *(v13 + 1612) = v8;
      *(v13 + 1614) = 0;
      *(v13 + 1616) = v8;
      *(v12 + v7 + 1618) = 0;
      v14 = *v9;
      if (!CAVDAvcDecoder::GetSDataMemInfo(*(this + 32), v8, &v23, &v22))
      {
        return 0xFFFFFFFFLL;
      }

      v15 = *v10;
      *(v13 + 1636) = *v10;
      *(v13 + 1640) = v15;
      *(v13 + 1644) = 0;
      if (v7)
      {
        v16 = 0;
      }

      else
      {
        v16 = 15;
      }

      *(v13 + 1622) = v16;
      v17 = v23;
      if (*v23 || *(v23 + 152) || *(v23 + 156))
      {
        v18 = v22;
        if (HIDWORD(v22))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v25 = "populateAvdWork";
            v26 = 1024;
            v27 = 1612;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v18 = v22;
          }
        }

        result = CAHDec::addToPatcherList(this, v17, v7 + 568028, v18, 0xFFFFFFFFLL, 0, -1, 4);
        if (result)
        {
          return result;
        }
      }

      v9 += 236;
      *(v12 + v7 + 1632) = v14;
      ++v8;
      v7 += 40;
      v10 += 462;
      if (v11 == v7)
      {
        v2 = *(this + 33);
        v20 = v21;
        goto LABEL_17;
      }
    }
  }

  else
  {
    v20 = 0;
LABEL_17:
    result = 0;
    *(v2 + 28) = v20;
    *(v2 + 32) = 568008;
  }

  return result;
}

uint64_t CAHDecSalviaAvc::allocWorkBuf_SPS(CAHDecSalviaAvc *this, _BYTE *a2)
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
  v18 = (v4 << 6) + 64;
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
        v32 = 1850;
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
    v32 = 1851;
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
    v32 = 1857;
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

uint64_t CAHDecSalviaAvc::allocWorkBuf_PPS(CAHDecSalviaAvc *this, _BYTE *a2, void *a3, void *a4)
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
    v18 = 1974;
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
      v18 = 1977;
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
      v18 = 1978;
      v19 = 2080;
      v20 = "LfAbovePix";
      v12 = MEMORY[0x277D86220];
      goto LABEL_19;
    }
  }

  if (CAVDDecoder::allocAVDMem(*(this + 32), this + 948, 32 * v14, 7, 1, 0))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v15 = 136315650;
    v16 = "allocWorkBuf_PPS";
    v17 = 1024;
    v18 = 1979;
    v19 = 2080;
    v20 = "LfAboveInfo";
    v12 = MEMORY[0x277D86220];
    goto LABEL_19;
  }

  result = CAVDDecoder::allocAVDMem(*(this + 32), this + 640, 32 * v14, 7, 1, 0);
  if (result)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v15 = 136315650;
    v16 = "allocWorkBuf_PPS";
    v17 = 1024;
    v18 = 1982;
    v19 = 2080;
    v20 = "MvAboveInfo";
    v12 = MEMORY[0x277D86220];
    goto LABEL_19;
  }

  return result;
}

uint64_t CAHDecSalviaAvc::freeWorkBuf_SPS(CAHDecSalviaAvc *this)
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

uint64_t *CAHDecSalviaAvc::freeWorkBuf_PPS(uint64_t *this, void *a2)
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

uint64_t CAHDecSalviaAvc::setVPInstrFifo(uint64_t this, int a2)
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

void CAVDAvcDecoder::CAVDAvcDecoder(CAVDAvcDecoder *this, void *a2, unsigned int a3, int a4)
{
  CAVDDecoder::CAVDDecoder(this, a2, a3);
  *v8 = &unk_2886669C0;
  *(v8 + 2960) = 0;
  *(v8 + 2964) = 0;
  *(v8 + 2992) = 0;
  *(v8 + 3000) = 0;
  *(v8 + 3568) = 0;
  *(v8 + 2968) = 0u;
  if (a3 <= 0x1AF)
  {
    v9 = 600;
  }

  else
  {
    v9 = 900;
  }

  *(v8 + 2984) = 0;
  *(v8 + 3184) = 0uLL;
  *(v8 + 3200) = 0uLL;
  *(v8 + 3504) = 0;
  *(v8 + 6656) = 0uLL;
  *(v8 + 6672) = 0uLL;
  *(v8 + 6688) = 0uLL;
  *(v8 + 6704) = 0uLL;
  *(v8 + 6720) = 0uLL;
  *(v8 + 6736) = 0uLL;
  *(v8 + 6752) = 0;
  *(v8 + 6952) = 0;
  *(v8 + 6920) = 0uLL;
  *(v8 + 6936) = 0uLL;
  *(v8 + 6888) = 0uLL;
  *(v8 + 6904) = 0uLL;
  *(v8 + 6856) = 0uLL;
  *(v8 + 6872) = 0uLL;
  *(v8 + 6824) = 0uLL;
  *(v8 + 6840) = 0uLL;
  *(v8 + 6792) = 0uLL;
  *(v8 + 6808) = 0uLL;
  *(v8 + 6760) = 0uLL;
  *(v8 + 6776) = 0uLL;
  *(v8 + 7365) = 0;
  *(v8 + 7352) = 0uLL;
  *(v8 + 7383) = 0;
  *(v8 + 7376) = 0;
  *(v8 + 7388) = v9;
  *(v8 + 2908) = 0;
  *(v8 + 2892) = 0uLL;
  bzero((v8 + 3576), 0xC08uLL);
  *(this + 221) = 0u;
  *(this + 201) = 0u;
  *(this + 202) = 0u;
  *(this + 203) = 0u;
  *(this + 204) = 0u;
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
  *(this + 216) = 0u;
  *(this + 217) = 0u;
  *(this + 3484) = 0u;
  *(this + 293) = a2;
  *(this + 875) = -1;
  *(this + 878) = 0x7FFFFFFF;
  *(this + 1846) = -1;
  if (a4)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  *(this + 661) = v10;
  bzero(this + 24, 0x810uLL);
}

void CAVDAvcDecoder::~CAVDAvcDecoder(CAVDAvcDecoder *this)
{
  *this = &unk_2886669C0;
  for (i = 24; i != 1056; i += 8)
  {
    v3 = *(this + i);
    if (v3)
    {
      CAVDDecoder::unmapAVDMemory(this, *(this + 293), (v3 + 8), 1);
      free(v3);
    }

    *(this + i) = 0;
  }

  do
  {
    v4 = *(this + i);
    if (v4)
    {
      CAVDDecoder::unmapAVDMemory(this, *(this + 293), (v4 + 8), *(v4 + 169));
      free(v4);
    }

    *(this + i) = 0;
    i += 8;
  }

  while (i != 2088);
  if (*(this + 400) && *(this + 3694))
  {
    v5 = 0;
    v6 = 20;
    do
    {
      AvcReleaseSliceHeader(*(this + 400) + v6);
      ++v5;
      v6 += 1848;
    }

    while (v5 < *(this + 3694));
  }

  v7 = *(this + 262);
  if (v7)
  {
    (*(*v7 + 144))(v7);
    (*(**(this + 262) + 160))(*(this + 262), 0);
    v8 = *(this + 262);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    *(this + 262) = 0;
  }

  v9 = *(this + 372);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(this + 372) = 0;
  free(*(this + 398));
  *(this + 398) = 0;
  free(*(this + 399));
  *(this + 399) = 0;
  free(*(this + 400));
  *(this + 400) = 0;
  free(*(this + 401));
  *(this + 401) = 0;
  v10 = *(this + 374);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  *(this + 374) = 0;

  CAVDDecoder::~CAVDDecoder(this);
}

{
  CAVDAvcDecoder::~CAVDAvcDecoder(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAVDAvcDecoder::VAInit(CAVDAvcDecoder *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = operator new(0x48uLL, MEMORY[0x277D826F0]);
  if (!v2)
  {
    *(this + 372) = 0;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 301;
    }

    v17 = 136315138;
    v18 = "VAInit";
    v15 = MEMORY[0x277D86220];
    v16 = "AppleAVD: ERROR: %s(): error creating parser!\n";
LABEL_30:
    _os_log_impl(&dword_277606000, v15, OS_LOG_TYPE_DEFAULT, v16, &v17, 0xCu);
    return 301;
  }

  v3 = v2;
  AVC_RBSP::AVC_RBSP(v2);
  *(this + 372) = v3;
  v4 = operator new(0x2AB8uLL, MEMORY[0x277D826F0]);
  if (!v4)
  {
    *(this + 374) = 0;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 301;
    }

    v17 = 136315138;
    v18 = "VAInit";
    v15 = MEMORY[0x277D86220];
    v16 = "AppleAVD: ERROR: %s(): error creating rlm!\n";
    goto LABEL_30;
  }

  v5 = v4;
  AVC_RLM::AVC_RLM(v4, this);
  *(this + 374) = v5;
  v6 = malloc_type_calloc(0x8B0uLL, 0x20uLL, 0x1000040FEE9FA54uLL);
  *(this + 398) = v6;
  if (!v6)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 301;
    }

    v17 = 136315138;
    v18 = "VAInit";
    v15 = MEMORY[0x277D86220];
    v16 = "AppleAVD: ERROR: %s(): m_sps_list mem alloc failed\n";
    goto LABEL_30;
  }

  v7 = v6 + 3;
  v8 = 32;
  do
  {
    *v7 = -1;
    v7 += 2224;
    --v8;
  }

  while (v8);
  v9 = malloc_type_calloc(0x25CuLL, 0x100uLL, 0x10000407CDE6A40uLL);
  *(this + 399) = v9;
  if (!v9)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 301;
    }

    v17 = 136315138;
    v18 = "VAInit";
    v15 = MEMORY[0x277D86220];
    v16 = "AppleAVD: ERROR: %s(): m_pps_list mem alloc failed\n";
    goto LABEL_30;
  }

  v10 = 256;
  do
  {
    *v9 = -1;
    v9 += 302;
    --v10;
  }

  while (v10);
  v11 = malloc_type_calloc(0x738uLL, *(this + 3694), 0x1030040393D39BEuLL);
  *(this + 400) = v11;
  if (!v11)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 301;
    }

    v17 = 136315138;
    v18 = "VAInit";
    v15 = MEMORY[0x277D86220];
    v16 = "AppleAVD: ERROR: %s(): m_slices mem alloc failed\n";
    goto LABEL_30;
  }

  v12 = malloc_type_calloc(0x32F0uLL, *(this + 3694), 0x1020040D46B496DuLL);
  *(this + 401) = v12;
  if (!v12)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 301;
    }

    v17 = 136315138;
    v18 = "VAInit";
    v15 = MEMORY[0x277D86220];
    v16 = "AppleAVD: ERROR: %s(): m_sliceInfo mem alloc failed\n";
    goto LABEL_30;
  }

  HwDecoder = CAVDAvcDecoder::allocateHwDecoder(this);
  *(this + 262) = HwDecoder;
  if (!HwDecoder)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "VAInit";
      v15 = MEMORY[0x277D86220];
      v16 = "AppleAVD: ERROR: %s(): Failed to create HW Decoder object!\n";
      goto LABEL_30;
    }

    return 301;
  }

  if (!(*(*HwDecoder + 16))(HwDecoder))
  {
    if ((*(**(this + 262) + 168))(*(this + 262)))
    {
      return 0;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 301;
    }

    v17 = 136315138;
    v18 = "VAInit";
    v15 = MEMORY[0x277D86220];
    v16 = "AppleAVD: ERROR: %s(): HW Decoder failed to allocate decodeBuffer!\n";
    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "VAInit";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Failed to initialize HW Decoder object!\n", &v17, 0xCu);
  }

  return 307;
}

CAHDecLotusAvc *CAVDAvcDecoder::allocateHwDecoder(CAVDAvcDecoder *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(this + 588);
  if (v1 <= 399)
  {
    if (v1 <= 300)
    {
      if (v1 <= 20)
      {
        if (v1 != 14 && v1 != 16)
        {
          goto LABEL_85;
        }

        return createCloverAvcDecoder(this);
      }

      else
      {
        switch(v1)
        {
          case 21:

            return createSalviaAvcDecoder(this);
          case 26:

            return createViolaAvcDecoder(this);
          case 28:

            return createLotusAvcDecoder(this);
          default:
            goto LABEL_85;
        }
      }
    }

    else if (v1 > 323)
    {
      switch(v1)
      {
        case 324:

          return createClaryAvcDecoder(this);
        case 328:

          return createCactusAvcDecoder(this);
        case 332:

          return createNarcissusAvcDecoder(this);
        default:
          goto LABEL_85;
      }
    }

    else
    {
      switch(v1)
      {
        case 301:

          return createLilyDAvcDecoder(this);
        case 308:

          return createDahliaAvcDecoder(this);
        case 316:

          return createRadishAvcDecoder(this);
        default:
          goto LABEL_85;
      }
    }
  }

  else
  {
    if (v1 <= 423)
    {
      if (v1 <= 407)
      {
        if ((v1 - 400) < 3 || v1 == 404)
        {

          return createIxoraAvcDecoder(this);
        }

        goto LABEL_85;
      }

      if ((v1 - 416) < 2)
      {

        return createDaisyAvcDecoder(this);
      }

      if (v1 == 408)
      {

        return createCatnipAvcDecoder(this);
      }

LABEL_85:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v4 = 136315394;
        v5 = "allocateHwDecoder";
        v6 = 1024;
        v7 = v1;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Invalid AVD device type %d!\n", &v4, 0x12u);
      }

      return 0;
    }

    if (v1 > 439)
    {
      switch(v1)
      {
        case 440:

          return createThymeAvcDecoder(this);
        case 448:

          return createKopsiaAvcDecoder(this);
        case 456:

          return createBorageAvcDecoder(this);
        default:
          goto LABEL_85;
      }
    }

    else if ((v1 - 432) >= 2)
    {
      if (v1 != 424)
      {
        goto LABEL_85;
      }

      return createTansyAvcDecoder(this);
    }

    else
    {

      return createHibiscusAvcDecoder(this);
    }
  }
}

uint64_t CAVDAvcDecoder::VAStartDecode(CAVDAvcDecoder *this, unsigned __int8 *a2, int a3)
{
  LOBYTE(v3) = 0;
  v4 = 0;
  v54 = *MEMORY[0x277D85DE8];
  *(this + 2716) = 0;
  *(this + 1664) = 0;
  v5 = a3 & 0xFFFFFF;
  LODWORD(v6) = a3 >> 24;
  *(this + 743) = a3 >> 24;
  if (a3 >> 24 > v5)
  {
LABEL_2:
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 305;
    }

    *buf = 136315650;
    *v52 = "VAStartDecode";
    *&v52[8] = 1024;
    *&v52[10] = v3 & 1;
    *&v52[14] = 1024;
    *&v52[16] = v4 & 1;
    v7 = MEMORY[0x277D86220];
    v8 = "AppleAVD: %s Parameter Set missing %d %d";
    goto LABEL_4;
  }

  LODWORD(v10) = 0;
  v14 = 0;
  v15 = 0;
  v3 = 0;
  v49 = 0;
  v16 = &a2[v5];
  v17 = a2;
  do
  {
    switch(v6)
    {
      case 1:
        v23 = *v17;
        v18 = v17 + 1;
        v20 = v23;
        v21 = v23 + 1;
        break;
      case 2:
        v22 = *v17;
        v18 = v17 + 2;
        v20 = __rev16(v22);
        v21 = v20 + 2;
        break;
      case 4:
        v19 = *v17;
        v18 = v17 + 4;
        v20 = bswap32(v19);
        v21 = v20 + 4;
        break;
      default:
        return 317;
    }

    if (&v18[v20] > v16)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *v52 = "VAStartDecode";
        *&v52[8] = 1024;
        *&v52[10] = v20;
        *&v52[14] = 2048;
        *&v52[16] = v18;
        *&v52[24] = 2048;
        v53 = v16;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s NALU too big! %d nal_ptr:%p, buf_end:%p", buf, 0x26u);
      }

      return 318;
    }

    v24 = AVC_RBSP::removeNalTrailingZeros(*(this + 372), v18, v20);
    AVC_RBSP::setRBSP(*(this + 372), v18, v24);
    v25 = AVC_RBSP::parseNAL(*(this + 372), v50, 0);
    if ((v25 & 1) == 0)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 305;
      }

      *buf = 136315138;
      *v52 = "VAStartDecode";
      v7 = MEMORY[0x277D86220];
      v8 = "AppleAVD: %s(): rbsp parseNAL return error";
      v9 = 12;
      goto LABEL_5;
    }

    v26 = v50[0] >> 3;
    if (v26 == 8)
    {
      v25 = AVC_RBSP::parsePPS(*(this + 372), *(this + 399), *(this + 398));
      if (v25 == -1)
      {
        v10 = 0xFFFFFFFFLL;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return v10;
        }

        *buf = 67109378;
        *v52 = -1;
        *&v52[4] = 2080;
        *&v52[6] = "virtual int CAVDAvcDecoder::VAStartDecode(unsigned char *, int)";
        v38 = MEMORY[0x277D86220];
        v39 = "AppleAVD: bad PPS index %d %s\n";
        goto LABEL_40;
      }

      v14 = v25;
      v49 = 1;
    }

    else
    {
      if (v26 != 7)
      {
        goto LABEL_24;
      }

      v27 = AVC_RBSP::parseSPS(*(this + 372), *(this + 398));
      v10 = v27;
      if (v27 == -1)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return v10;
        }

        *buf = 67109378;
        *v52 = v10;
        *&v52[4] = 2080;
        *&v52[6] = "virtual int CAVDAvcDecoder::VAStartDecode(unsigned char *, int)";
        v38 = MEMORY[0x277D86220];
        v39 = "AppleAVD: bad SPS index %d %s\n";
LABEL_40:
        _os_log_impl(&dword_277606000, v38, OS_LOG_TYPE_DEFAULT, v39, buf, 0x12u);
        return v10;
      }

      v28 = *(this + 398) + 2224 * v27;
      v25 = CAVDAvcDecoder::DpbMaxSize(v27, v28);
      *(v28 + 2220) = v25;
      v29 = *(v28 + 1556);
      if (v25 < v29)
      {
        v40 = v25;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 305;
        }

        *buf = 136315650;
        *v52 = "VAStartDecode";
        *&v52[8] = 1024;
        *&v52[10] = v29;
        *&v52[14] = 1024;
        *&v52[16] = v40;
        v7 = MEMORY[0x277D86220];
        v8 = "AppleAVD: ERROR: %s: max_num_ref_frames %d > nMaxDpbSize %d!\n";
LABEL_4:
        v9 = 24;
LABEL_5:
        _os_log_impl(&dword_277606000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, v9);
        return 305;
      }

      v3 = 1;
    }

LABEL_24:
    v15 += v21;
    v17 = &a2[v15];
    v6 = *(this + 743);
  }

  while (&v17[v6] <= v16);
  v4 = v49;
  if ((v3 & v49 & 1) == 0)
  {
    goto LABEL_2;
  }

  v30 = *(this + 398);
  v31 = v30 + 2224 * v10;
  v32 = CAVDAvcDecoder::DpbMaxSize(v25, v31);
  *(this + 742) = v32 + 6;
  *(this + 680) = v32 + 6;
  *(this + 875) = v10;
  *(this + 876) = v14;
  v33 = *(v31 + 1562);
  if (v33 != 1)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 310;
    }

    *buf = 67109378;
    *v52 = v33;
    *&v52[4] = 2080;
    *&v52[6] = "VAStartDecode";
    v36 = MEMORY[0x277D86220];
    v37 = "AppleAVD: AVC sps.frame_mbs_only_flag = %d (shall be 1) %s\n";
LABEL_45:
    v41 = 18;
    goto LABEL_46;
  }

  v34 = *(this + 399) + 604 * v14;
  v35 = *(v34 + 5);
  if (!*(v34 + 5))
  {
    v42 = *(v31 + 2);
    if (v42 < 0x51)
    {
      v43 = *(v31 + 1558);
      v44 = 16 * v43 + 16;
      *(this + 728) = v44;
      v45 = *(v30 + 2224 * v10 + 1560);
      v46 = 16 * v45 + 16;
      *(this + 729) = v46;
      if (*(this + 10) != 1 || (*(this + 7390) & 1) != 0 || v43 <= 0xFF && v45 < 0x100)
      {
        v47 = v30 + 2224 * v10;
        *(this + 730) = *(v47 + 6);
        v48 = *(v47 + 4);
        *(this + 731) = v48;
        if (v48)
        {
          v48 = *(v30 + 2224 * v10 + 7);
        }

        *(this + 1844) = v48;
        *(this + 1845) = *(v30 + 2224 * v10 + 2220);
        *(this + 2985) = 0;
        *(this + 1842) = 0;
        CAVDDecoder::isADSDecryption(this);
        v10 = 0;
        *(this + 685) = 0;
        *(this + 2716) = 1;
        return v10;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 310;
      }

      *buf = 67109890;
      *v52 = v10;
      *&v52[4] = 1024;
      *&v52[6] = v44;
      *&v52[10] = 1024;
      *&v52[12] = v46;
      *&v52[16] = 2080;
      *&v52[18] = "VAStartDecode";
      v36 = MEMORY[0x277D86220];
      v37 = "AppleAVD: AVC sps[%d] width %d height %d over size in %s\n";
      v41 = 30;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 310;
      }

      *buf = 67109634;
      *v52 = v42;
      *&v52[4] = 1024;
      *&v52[6] = 80;
      *&v52[10] = 2080;
      *&v52[12] = "VAStartDecode";
      v36 = MEMORY[0x277D86220];
      v37 = "AppleAVD: AVC sps.level_idc = %d (max is %d) %s\n";
      v41 = 24;
    }

LABEL_46:
    _os_log_impl(&dword_277606000, v36, OS_LOG_TYPE_DEFAULT, v37, buf, v41);
    return 310;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v52 = v35;
    *&v52[4] = 2080;
    *&v52[6] = "VAStartDecode";
    v36 = MEMORY[0x277D86220];
    v37 = "AppleAVD: AVC pps.num_slice_groups_minus1 = %d (shall be 0) %s\n";
    goto LABEL_45;
  }

  return 310;
}

uint64_t CAVDAvcDecoder::DpbMaxSize(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 2);
  if (v2 > 0x27)
  {
    if (v2 == 80)
    {
      v8 = 10485760;
    }

    else
    {
      v8 = 0;
    }

    if ((v2 - 51) >= 2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 184320;
    }

    if ((v2 - 60) >= 3)
    {
      v4 = v9;
    }

    else
    {
      v4 = 696320;
    }

    if (v2 == 50)
    {
      v10 = 110400;
    }

    else
    {
      v10 = 0;
    }

    if (v2 == 42)
    {
      v11 = 34816;
    }

    else
    {
      v11 = v10;
    }

    if ((v2 - 40) >= 2)
    {
      v6 = v11;
    }

    else
    {
      v6 = 0x8000;
    }

    v7 = v2 <= 50;
    goto LABEL_35;
  }

  if (*(a2 + 2) <= 0x14u)
  {
    if ((v2 - 12) < 2 || v2 == 20)
    {
      v4 = 2376;
    }

    else
    {
      v4 = 0;
    }

    if (v2 == 11)
    {
      v5 = 900;
    }

    else
    {
      v5 = 0;
    }

    if (v2 == 10)
    {
      v6 = 396;
    }

    else
    {
      v6 = v5;
    }

    v7 = v2 <= 11;
LABEL_35:
    if (v7)
    {
      v12 = v6;
    }

    else
    {
      v12 = v4;
    }

    goto LABEL_38;
  }

  if (*(a2 + 2) <= 0x1Du)
  {
    if (v2 == 21)
    {
      v12 = 4752;
      goto LABEL_38;
    }

    if (v2 != 22)
    {
      v12 = 0;
      goto LABEL_38;
    }

    goto LABEL_57;
  }

  if (v2 == 30)
  {
LABEL_57:
    v12 = 8100;
    goto LABEL_38;
  }

  if (v2 == 32)
  {
    v15 = 20480;
  }

  else
  {
    v15 = 0;
  }

  if (v2 == 31)
  {
    v12 = 18000;
  }

  else
  {
    v12 = v15;
  }

LABEL_38:
  v13 = v12 / ((*(a2 + 1558) + 1 + (*(a2 + 1558) + 1) * *(a2 + 1560)) << (*(a2 + 1562) == 0));
  if (*(a2 + 1574) && *(a2 + 2202) && v13 <= *(a2 + 2209))
  {
    v13 = *(a2 + 2209);
  }

  if (v13 <= *(a2 + 1556))
  {
    v13 = *(a2 + 1556);
  }

  if (v13 >= 0x17)
  {
    v13 = 23;
  }

  return v13 + 1;
}

uint64_t CAVDAvcDecoder::VAStopDecode(CAVDAvcDecoder *this)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(this + 2716))
  {
    CAVDAvcDecoder::FlushDPB(this);
    for (i = *(this + 894); i < *(this + 895); i = *(this + 894))
    {
      v3 = *(this + 32 * (i % 0x18) + 899);
      *(this + 894) = i + 1;
      (*(*this + 88))(this, v3);
    }

    return 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "VAStopDecode";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: bailing out of %s because start didn't complete", &v5, 0xCu);
    }

    return 305;
  }
}

uint64_t CAVDAvcDecoder::FlushDPB(uint64_t this)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(this + 2992);
  if (v1)
  {
    v2 = this;
    AVC_RLM::invalidateDpb(*(this + 2992));
    AVC_RLM::truncateDpb(v1, 1u);
    while (1)
    {
      this = AVC_RLM::getOutputFrame(*(v2 + 2992), v3);
      if ((this & 0x80000000) != 0)
      {
        break;
      }

      CAVDAvcDecoder::insertFrame(v2, v3);
    }
  }

  return this;
}

void CAVDAvcDecoder::attachQPs(CAVDAvcDecoder *this, __CVBuffer *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt8Type, (*(this + 399) + 604 * *(this + 876) + 89));
  CVBufferSetAttachment(a2, @"InitQpMinus26", v5, kCVAttachmentMode_ShouldPropagate);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = malloc_type_malloc(8 * *(this + 674), 0x6004044C4A2DFuLL);
  if (v6)
  {
    v7 = v6;
    if (*(this + 674))
    {
      v8 = 0;
      v9 = 1425;
      do
      {
        v7[v8++] = CFNumberCreate(0, kCFNumberSInt8Type, (*(this + 400) + v9));
        v10 = *(this + 674);
        v9 += 1848;
      }

      while (v8 < v10);
    }

    else
    {
      v10 = 0;
    }

    v11 = CFArrayCreate(v4, v7, v10, MEMORY[0x277CBF128]);
    v12 = *(this + 674);
    if (v12)
    {
      for (i = 0; i < v12; ++i)
      {
        v14 = v7[i];
        if (v14)
        {
          CFRelease(v14);
          v7[i] = 0;
          v12 = *(this + 674);
        }
      }
    }

    free(v7);
    CVBufferSetAttachment(a2, @"SliceQPData", v11, kCVAttachmentMode_ShouldPropagate);
    if (v11)
    {

      CFRelease(v11);
    }
  }
}

uint64_t CAVDAvcDecoder::VADecodeFrame(uint64_t a1, unsigned int *a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a5;
  v170 = *MEMORY[0x277D85DE8];
  if (a4 == 1)
  {
    *(a1 + 2964) = 1;
  }

  if (a5 == -1)
  {
    v16 = 0;
    *(a1 + 3544) = 0;
    *(a1 + 3536) = 0xFFFFFFFF00000000;
  }

  else
  {
    *buf = 0;
    if (!(*(*a1 + 112))(a1, a5, buf, 1))
    {
      *(a1 + 3544) = 0;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 136315138;
      *&buf[4] = "Error getting display buffer!";
      v21 = MEMORY[0x277D86220];
      v22 = "AppleAVD: ERROR: [CAVDAvcDecErr] %s";
      goto LABEL_17;
    }

    *(a1 + 3536) = 1;
    *(a1 + 3540) = v11;
    v16 = *buf;
    *(a1 + 3544) = *buf + 8;
  }

  *buf = 0;
  if (((*(*a1 + 112))(a1, a6, buf, 0) & 1) == 0)
  {
    *(a1 + 3528) = 0;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315138;
    *&buf[4] = "Error getting decoder buffer!";
    v21 = MEMORY[0x277D86220];
    v22 = "AppleAVD: ERROR: [CAVDAvcDecErr] %s";
    goto LABEL_17;
  }

  v138 = a8;
  v139 = v16;
  *(a1 + 3520) = 0;
  *(a1 + 3524) = a6;
  v17 = *buf;
  v18 = *buf + 8;
  *(a1 + 2088) = *buf;
  *(a1 + 3528) = v18;
  *(v17 + 204) = *(a1 + 2744);
  v19 = (*(*a1 + 184))(a1);
  if (a7 != -1 && v19)
  {
    *buf = 0;
    if (!(*(*a1 + 112))(a1, a7, buf, 0))
    {
      *(a1 + 3560) = 0;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      *buf = 136315394;
      *&buf[4] = "VADecodeFrame";
      *&buf[12] = 1024;
      *v157 = a4;
      v28 = MEMORY[0x277D86220];
      v29 = "AppleAVD: ERROR: %s(): Error getting second decoder buffer for scaling! (frameNum :%d)";
      goto LABEL_31;
    }

    *(a1 + 3552) = 0;
    *(a1 + 3556) = a7;
    v20 = *buf;
    *(a1 + 3560) = *buf + 8;
    if (v20)
    {
      *(v20 + 204) = 0;
      *(v20 + 208) = 0;
      goto LABEL_32;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "VADecodeFrame";
      *&buf[12] = 1024;
      *v157 = a4;
      v28 = MEMORY[0x277D86220];
      v29 = "AppleAVD: ERROR: %s(): vSurfInfoScalerRef was not set! (frameNum :%d)";
LABEL_31:
      _os_log_impl(&dword_277606000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 0x12u);
    }
  }

LABEL_32:
  v30 = *(a1 + 3528);
  *(a1 + 2648) = *(v30 + 160);
  v31 = *(a1 + 3544);
  if (*(a1 + 9) != 1)
  {
    if (v31)
    {
      v32 = *(v31 + 148);
      v33 = 1;
      if (v32 > 1885745711)
      {
        if (v32 == 1885745712 || v32 == 1885745714)
        {
          goto LABEL_41;
        }

        v34 = 1885746228;
      }

      else
      {
        if (v32 == 1882468912 || v32 == 1882468914)
        {
          goto LABEL_41;
        }

        v34 = 1882469428;
      }

      if (v32 != v34)
      {
        v33 = 2;
      }

      goto LABEL_41;
    }

LABEL_40:
    v33 = 0;
    v31 = v30;
LABEL_41:
    *(a1 + 2644) = v33;
    goto LABEL_42;
  }

  if (!v31)
  {
    goto LABEL_40;
  }

LABEL_42:
  v151 = a2 + a3;
  (*(*a1 + 104))(a1, 22, v31 + 148);
  if (*(a1 + 7368))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "VADecodeFrame";
      *&buf[12] = 1024;
      *v157 = a4;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s() : received reset Before Decoding - Flush DPB, framenumber %d", buf, 0x12u);
    }

    CAVDAvcDecoder::FlushDPB(a1);
    *(a1 + 7368) = 0;
  }

  v140 = a3;
  v144 = a4;
  v35 = 0;
  v36 = 0;
  v152 = 0;
  v142 = 0;
  v143 = 0;
  v141 = (a1 + 3216);
  v150 = a2;
  v37 = a2;
  v137 = a6;
  while (1)
  {
    v38 = *(a1 + 2972);
    v39 = v37 + v38 > v151;
    if (v37 + v38 > v151)
    {
      if (v35 < 1)
      {
        v102 = v144;
        if (*(a1 + 2985))
        {
          goto LABEL_197;
        }
      }

      else
      {
        v99 = v35;
        v100 = (*(a1 + 3200) + 24);
        LOBYTE(v101) = 2;
        v102 = v144;
        do
        {
          v101 = (v101 & *v100);
          v100 += 1848;
          --v99;
        }

        while (v99);
        if (*(a1 + 2985))
        {
          if (!*(a1 + 2725))
          {
            goto LABEL_201;
          }

          if (v101 != 2)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_19;
            }

            *buf = 136315138;
            *&buf[4] = "skip to keyframe";
            v21 = MEMORY[0x277D86220];
            v22 = "AppleAVD: ERROR: [CAVDAvcDecErr] %s";
            goto LABEL_17;
          }

LABEL_198:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "VADecodeFrame";
            *&buf[12] = 1024;
            *v157 = v102;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): all intra frame found, reset m_skipToIdr to false; frm# %d", buf, 0x12u);
          }

          *(a1 + 2725) = 0;
          v142 = 1;
LABEL_201:
          if (!v35)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_19;
            }

            *buf = 136315138;
            *&buf[4] = "no slice data";
            v21 = MEMORY[0x277D86220];
            v22 = "AppleAVD: ERROR: [CAVDAvcDecErr] %s";
            goto LABEL_17;
          }

          *(a1 + 2696) = v35;
          if (AVC_RLM::createDPBIndex(*(a1 + 2992), a1 + 3008, (a1 + 3568)))
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_19;
            }

            *buf = 136315138;
            *&buf[4] = "fail to create DPB";
            v21 = MEMORY[0x277D86220];
            v22 = "AppleAVD: ERROR: [CAVDAvcDecErr] %s";
            goto LABEL_17;
          }

          *(a1 + 7364) = *(a1 + 3040);
          while ((AVC_RLM::getOutputFrame(*(a1 + 2992), buf) & 0x80000000) == 0)
          {
            CAVDAvcDecoder::insertFrame(a1, buf);
          }

          *(a1 + 6952) = AVC_RLM::getDPBRef(*(a1 + 2992), a1 + 6760);
          if (!*(a1 + 2892))
          {
            goto LABEL_249;
          }

          if (!v139)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_19;
            }

            *buf = 136315138;
            *&buf[4] = "vSurfInfoDisp is NULL";
            v21 = MEMORY[0x277D86220];
            v22 = "AppleAVD: ERROR: [CAVDAvcDecErr] %s";
            goto LABEL_17;
          }

          v105 = IOSurfaceLookup(*(v139 + 160));
          if (!v105)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_19;
            }

            *buf = 136315138;
            *&buf[4] = "bad IOSurface ptr in tile offset check";
            v21 = MEMORY[0x277D86220];
            v22 = "AppleAVD: ERROR: [CAVDAvcDecErr] %s";
            goto LABEL_17;
          }

          v106 = v105;
          v107 = v35;
          SizeOfPlane = IOSurfaceGetSizeOfPlane();
          CFRelease(v106);
          v108 = *(a1 + 2896);
          v109 = *(a1 + 3216);
          if (__CFADD__(v108, v109 - 1))
          {
            LODWORD(v110) = 0;
            v111 = 0;
            LODWORD(v112) = 0;
            v113 = 1;
          }

          else
          {
            v119 = *(a1 + 2900);
            v120 = *(a1 + 3220) - 1;
            v111 = v119 + v120;
            if (!__CFADD__(v119, v120))
            {
              v112 = *(v139 + 84) * v111;
              if ((v112 & 0xFFFFFFFF00000000) != 0)
              {
                LODWORD(v110) = 0;
                v113 = 4;
                goto LABEL_273;
              }

              v110 = v112 + (v108 + v109 - 1);
              if (v110 >= SizeOfPlane)
              {
                v113 = 6;
                goto LABEL_273;
              }

              v35 = v107;
              if ((CAVDDecoder::calcLumaChromaTileOffset(a1, *(a1 + 2896), v119, *(*(a1 + 3544) + 76), *(*(a1 + 3544) + 80), *(a1 + 3112), (a1 + 2904), (a1 + 2908)) & 1) == 0)
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_19;
                }

                *buf = 136315138;
                *&buf[4] = "calcLumaChromaTileOffset returns fail";
                v21 = MEMORY[0x277D86220];
                v22 = "AppleAVD: ERROR: [CAVDAvcDecErr] %s";
                goto LABEL_17;
              }

LABEL_249:
              v148 = v39;
              if (v35 >= 1 && (v142 & 1) != 0)
              {
                v121 = 0;
                v122 = 0;
                v123 = MEMORY[0x277D86220];
                do
                {
                  v124 = *(*(a1 + 3200) + v122);
                  if (v124 != 5 && os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109376;
                    *&buf[4] = v121;
                    *&buf[8] = 1024;
                    *&buf[10] = v124;
                    _os_log_impl(&dword_277606000, v123, OS_LOG_TYPE_DEFAULT, "AppleAVD: -- recover from error in KeyFrame -- slice[%4d].naluTupe = %d", buf, 0xEu);
                  }

                  v122 += 1848;
                  ++v121;
                }

                while (1848 * v35 != v122);
              }

              if (*(a1 + 2356) == 1)
              {
                (*(*a1 + 224))(a1, v144, v137);
              }

              v125 = CAVDAvcDecoder::DecodePicture(a1, v35, v144);
              v126 = *(a1 + 2096);
              *(v126 + 12) = v35;
              AppleAVDCommandBuilder::setDecodeBufferSections(*(a1 + 2344), v126 + 8);
              v24 = v148;
              if (*(a1 + 2356) == 1)
              {
                *(a1 + 2332) = CAHDec::getDecBufIndex(*(a1 + 2096));
              }

              if (*(a1 + 3011) == 1)
              {
                CAVDAvcDecoder::FlushDPB(a1);
              }

              for (i = *(a1 + 3576); i < *(a1 + 3580); i = *(a1 + 3576))
              {
                v128 = *(a1 + 3584 + ((i % 0x18) << 7) + 12);
                *(a1 + 3576) = i + 1;
                (*(*a1 + 88))(a1, v128);
              }

              if (AVC_RLM::dec_ref_pic_marking(*(a1 + 2992), *(a1 + 3200) + 20, (a1 + 3008)))
              {
                if (v138)
                {
                  v129 = *v141;
                  v130 = *(a1 + 3248);
                  *(v138 + 16) = *(a1 + 3232);
                  *(v138 + 32) = v130;
                  *v138 = v129;
                  v131 = *(a1 + 3264);
                  v132 = *(a1 + 3280);
                  v133 = *(a1 + 3296);
                  *(v138 + 96) = *(a1 + 3312);
                  *(v138 + 64) = v132;
                  *(v138 + 80) = v133;
                  *(v138 + 48) = v131;
                }

                if (v125)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315138;
                    *&buf[4] = "DecodePicture return failure";
                    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: [CAVDAvcDecErr] %s", buf, 0xCu);
                  }

                  v24 = 1;
                  goto LABEL_20;
                }

                goto LABEL_151;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_19;
              }

              *buf = 136315138;
              *&buf[4] = "VADecodeFrame";
              v21 = MEMORY[0x277D86220];
              v22 = "AppleAVD: ERROR: %s(): reference marking failed\n";
              goto LABEL_17;
            }

            LODWORD(v110) = 0;
            LODWORD(v112) = 0;
            v113 = 2;
          }

LABEL_273:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v134 = *(a1 + 2900);
            v135 = *(a1 + 3220);
            v136 = *(v139 + 84);
            *buf = 67111680;
            *&buf[4] = v108;
            *&buf[8] = 1024;
            *&buf[10] = v134;
            *v157 = 1024;
            *&v157[2] = v109;
            LOWORD(v158) = 1024;
            *(&v158 + 2) = v135;
            HIWORD(v158) = 1024;
            *v159 = v136;
            *&v159[4] = 1024;
            *&v159[6] = v110;
            v160 = 1024;
            v161 = SizeOfPlane;
            v162 = 1024;
            v163 = v113;
            v164 = 1024;
            v165 = v108 + v109 - 1;
            v166 = 1024;
            v167 = v111;
            v168 = 1024;
            v169 = v112;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: tile offset out of bounds! [%d %d] + [%d %d], %d, %u >= %u ?, %u; %u %u %u", buf, 0x44u);
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          *buf = 136315138;
          *&buf[4] = "tile offset out of bounds";
          v21 = MEMORY[0x277D86220];
          v22 = "AppleAVD: ERROR: [CAVDAvcDecErr] %s";
          goto LABEL_17;
        }

        if (v101 != 2)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          *buf = 136315138;
          *&buf[4] = "decode session not started with an I-frame";
          v21 = MEMORY[0x277D86220];
          v22 = "AppleAVD: ERROR: [CAVDAvcDecErr] %s";
          goto LABEL_17;
        }
      }

      *(a1 + 2985) = 1;
LABEL_197:
      if (!*(a1 + 2725))
      {
        goto LABEL_201;
      }

      goto LABEL_198;
    }

    switch(v38)
    {
      case 1:
        v45 = *v37;
        v40 = v37 + 1;
        LODWORD(v42) = v45;
        v43 = v45 + 1;
        break;
      case 2:
        v44 = *v37;
        v40 = v37 + 2;
        LODWORD(v42) = __rev16(v44);
        v43 = v42 + 2;
        break;
      case 4:
        v41 = *v37;
        v40 = (v37 + 1);
        LODWORD(v42) = bswap32(v41);
        v43 = v42 + 4;
        break;
      default:
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        *buf = 136315394;
        *&buf[4] = "unsupported naluLengthSize!";
        *&buf[12] = 1024;
        *v157 = v38;
        v21 = MEMORY[0x277D86220];
        v22 = "AppleAVD: [CAVDAvcDecErr] %s %d";
        goto LABEL_213;
    }

    if (&v40[v42] > v151)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        *&buf[4] = "VADecodeFrame";
        *&buf[12] = 1024;
        *v157 = v42;
        *&v157[4] = 2048;
        v158 = v40;
        *v159 = 2048;
        *&v159[2] = v151;
        v160 = 1024;
        v161 = v140;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s NALU too big! %d nal_ptr:%p, buf_end:%p; dataLength: %8d", buf, 0x2Cu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "NALU too big!";
        v21 = MEMORY[0x277D86220];
        v22 = "AppleAVD: ERROR: [CAVDAvcDecErr] %s";
        goto LABEL_17;
      }

      goto LABEL_19;
    }

    v46 = v36;
    if (!*(a1 + 2688))
    {
      v42 = AVC_RBSP::scanNalForEmulationPrevention(*(a1 + 2976), v40, v42, -96, 0);
      if (!*(a1 + 2688))
      {
        LODWORD(v42) = AVC_RBSP::removeNalTrailingZeros(*(a1 + 2976), v40, v42);
      }
    }

    AVC_RBSP::setRBSP(*(a1 + 2976), v40, v42);
    if ((AVC_RBSP::parseNAL(*(a1 + 2976), v155, 0) & 1) == 0)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 136315138;
      *&buf[4] = "parseNAL error!";
      v21 = MEMORY[0x277D86220];
      v22 = "AppleAVD: ERROR: [CAVDAvcDecErr] %s";
      goto LABEL_17;
    }

    v152 += v43;
    v47 = v38 + v46;
    v48 = v155[0] >> 3;
    if (v48 > 6)
    {
      v49 = v35;
      if (v48 != 8)
      {
        if (v48 == 7)
        {
          v50 = v47;
          v51 = AVC_RBSP::parseSPS(*(a1 + 2976), *(a1 + 3184));
          if (v51 == -1)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_19;
            }

            *buf = 136315394;
            *&buf[4] = "bas SPS index!";
            *&buf[12] = 1024;
            *v157 = -1;
            v21 = MEMORY[0x277D86220];
            v22 = "AppleAVD: [CAVDAvcDecErr] %s %d";
            goto LABEL_213;
          }

          v52 = *(a1 + 3184) + 2224 * v51;
          v53 = CAVDAvcDecoder::DpbMaxSize(v51, v52);
          *(v52 + 2220) = v53;
          v54 = *(v52 + 1556);
          v47 = v50;
          if (v53 < v54)
          {
            v114 = v53;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              *&buf[4] = "VADecodeFrame";
              *&buf[12] = 1024;
              *v157 = v54;
              *&v157[4] = 1024;
              LODWORD(v158) = v114;
              v21 = MEMORY[0x277D86220];
              v22 = "AppleAVD: ERROR: %s: max_num_ref_frames %d > nMaxDpbSize %d!\n";
              v23 = 24;
              goto LABEL_18;
            }

            goto LABEL_19;
          }
        }

        goto LABEL_149;
      }

      v82 = v47;
      v83 = AVC_RBSP::parsePPS(*(a1 + 2976), *(a1 + 3192), *(a1 + 3184));
      v47 = v82;
      if (v83 != -1)
      {
        goto LABEL_149;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 136315394;
      *&buf[4] = "bad PPS index";
      *&buf[12] = 1024;
      *v157 = -1;
      v21 = MEMORY[0x277D86220];
      v22 = "AppleAVD: [CAVDAvcDecErr] %s %d";
LABEL_213:
      v23 = 18;
      goto LABEL_18;
    }

    if (v48 == 1)
    {
      if (*(a1 + 2892))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        *buf = 67109120;
        *&buf[4] = 1;
        v21 = MEMORY[0x277D86220];
        v22 = "AppleAVD: Rejecting non-IDR frame in tiled decode %d";
        v23 = 8;
        goto LABEL_18;
      }
    }

    else if (v48 != 5)
    {
      v49 = v35;
      goto LABEL_149;
    }

    v149 = v38 + v46;
    AVC_RBSP::setLen(*(a1 + 2976), v40, (v42 + 2));
    if (v35 >= *(a1 + 7388))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 136315394;
      *&buf[4] = "Too many slices!";
      *&buf[12] = 1024;
      *v157 = v35;
      v21 = MEMORY[0x277D86220];
      v22 = "AppleAVD: [CAVDAvcDecErr] %s %d";
      goto LABEL_213;
    }

    if (!v35 && *(a1 + 2725) && (v155[0] & 0xF8) == 0x28)
    {
      *(a1 + 2725) = 0;
      v142 = 1;
    }

    v55 = *(a1 + 3200) + 1848 * v35;
    AvcReleaseSliceHeader(v55 + 20);
    bzero((v55 + 20), 0x588uLL);
    if (AVC_RBSP::parseSliceHeader(*(a1 + 2976), (v55 + 20), v155, *(a1 + 3192), *(a1 + 3184)))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 136315138;
      *&buf[4] = "invalid slice header";
      v21 = MEMORY[0x277D86220];
      v22 = "AppleAVD: ERROR: [CAVDAvcDecErr] %s";
      goto LABEL_17;
    }

    if (CAVDAvcDecoder::activatePS(a1, v55 + 20))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 136315138;
      *&buf[4] = "fail to activate parameter set for slice";
      v21 = MEMORY[0x277D86220];
      v22 = "AppleAVD: ERROR: [CAVDAvcDecErr] %s";
      goto LABEL_17;
    }

    v147 = v39;
    v56 = *(a1 + 3192);
    v57 = *(a1 + 3504);
    v58 = *(a1 + 3184) + 2224 * *(a1 + 3500);
    *(a1 + 2700) = *(v58 + 8) == 1;
    v59 = *(v55 + 20);
    if (v59 >= *(v58 + 1558) + 1 + (*(v58 + 1558) + 1) * *(v58 + 1560))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 136315394;
      *&buf[4] = "slice mbn out of bound";
      *&buf[12] = 1024;
      *v157 = v59;
      v21 = MEMORY[0x277D86220];
      v22 = "AppleAVD: [CAVDAvcDecErr] %s %d";
      goto LABEL_213;
    }

    v60 = *(v58 + 1562);
    if (v60 != 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 136315394;
      *&buf[4] = "sps.frame_mbs_only_flag != 1,";
      *&buf[12] = 1024;
      *v157 = v60;
      v21 = MEMORY[0x277D86220];
      v22 = "AppleAVD: [CAVDAvcDecErr] %s %d";
      goto LABEL_213;
    }

    v146 = v56 + 604 * v57;
    v61 = *(v146 + 5);
    if (*(v146 + 5))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 136315394;
      *&buf[4] = "pps.num_slice_groups_minus1 != 0,";
      *&buf[12] = 1024;
      *v157 = v61;
      v21 = MEMORY[0x277D86220];
      v22 = "AppleAVD: [CAVDAvcDecErr] %s %d";
      goto LABEL_213;
    }

    if (!v35 && v59)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 136315138;
      *&buf[4] = "first_mb_in_slice for slice0 isn't zero";
      v21 = MEMORY[0x277D86220];
      v22 = "AppleAVD: ERROR: [CAVDAvcDecErr] %s";
      goto LABEL_17;
    }

    v62 = *(a1 + 3200) + 1848 * v35;
    *(v62 + 8) = v40;
    *(v62 + 16) = v42;
    *v62 = v155[0] >> 3;
    NumberOfBitsParsed = AVC_RBSP::getNumberOfBitsParsed(*(a1 + 2976));
    *(*(a1 + 3200) + 1848 * v35 + 1436) = NumberOfBitsParsed;
    v64 = *(a1 + 7384);
    if ((v64 & 0x80000000) == 0)
    {
      v65 = NumberOfBitsParsed;
      if (NumberOfBitsParsed >= v64 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        *&buf[4] = v144;
        *&buf[8] = 1024;
        *&buf[10] = v65;
        *v157 = 1024;
        *&v157[2] = v65 >> 3;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: INFO: JumboSliceHeader at fnum %d bit_offset %d byte offset %d\n", buf, 0x14u);
      }
    }

    if (CAVDDecoder::isADSDecryption(a1) && (*(a1 + 10) & 1) == 0)
    {
      v66 = CAVDDecoder::calculateClearBytes(a1, v149, v42, *(*(a1 + 3200) + 1848 * v35 + 1436), *(a1 + 2944), *(a1 + 2928), *(a1 + 2936));
      if (v66 == -1)
      {
        v67 = 1023;
      }

      else
      {
        v67 = v66;
      }

      *(*(a1 + 3200) + 1848 * v35 + 1840) = v67;
      v68 = *(a1 + 2504);
      v69 = v68 | 0x10000;
      v70 = v68 & 0xFFDFFFFF;
      if (*(a1 + 2420))
      {
        v71 = v69;
      }

      else
      {
        v71 = v70;
      }

      *(a1 + 2504) = v71;
    }

    if (!*(v55 + 20))
    {
      if (v35 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "VADecodeFrame";
        *&buf[12] = 1024;
        *v157 = 1139;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
      }

      if (CAVDAvcDecoder::initPicture(a1, v155, v58, v55 + 20, a1 + 3008))
      {
        *(a1 + 3508) = 0;
        goto LABEL_97;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 136315138;
      *&buf[4] = "initPicture failed";
      v21 = MEMORY[0x277D86220];
      v22 = "AppleAVD: ERROR: [CAVDAvcDecErr] %s";
LABEL_17:
      v23 = 12;
      goto LABEL_18;
    }

LABEL_97:
    if (!AVC_RLM::initRefPicList(*(a1 + 2992), v55 + 20, (*(a1 + 3208) + 13040 * v35), a1 + 3008))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 136315138;
      *&buf[4] = "unable to initialize ref pic list";
      v21 = MEMORY[0x277D86220];
      v22 = "AppleAVD: ERROR: [CAVDAvcDecErr] %s";
      goto LABEL_17;
    }

    v145 = v35;
    AVC_RLM::ref_pic_list_modification(*(a1 + 2992), *(a1 + 3208) + 13040 * v35, a1 + 3008);
    v72 = *(v58 + 4);
    v73 = *(v58 + 5);
    v74 = *(v58 + 6);
    v75 = *(v58 + 7);
    v76 = 16 * *(v58 + 1558) + 16;
    v77 = 16 * *(v58 + 1560) + 16;
    v78 = *(v58 + 1565);
    v79 = *(v58 + 1566);
    v80 = *(v58 + 2220);
    if (*(a1 + 10))
    {
      v81 = *(a1 + 7380);
      if (v80 > v81)
      {
        goto LABEL_193;
      }

      goto LABEL_112;
    }

    v84 = *(a1 + 2912);
    if (v76 != v84)
    {
      goto LABEL_230;
    }

    if (v77 != *(a1 + 2916))
    {
      break;
    }

    v81 = *(a1 + 7380);
    if (v80 > v81)
    {
LABEL_193:
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v103 = *(a1 + 3251);
      *buf = 67109632;
      *&buf[4] = v81;
      *&buf[8] = 1024;
      *&buf[10] = v80;
      *v157 = 1024;
      *&v157[2] = v103;
      v21 = MEMORY[0x277D86220];
      v22 = "AppleAVD: #### <WARNING> DPB Size Requirement Changed: origDpbSize: %d -> curDpbSize: %d, prevDpbSize: %d";
      v23 = 20;
      goto LABEL_18;
    }

    v85 = *(a1 + 2924);
    if (v85 != v72)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 67109376;
      *&buf[4] = v72;
      *&buf[8] = 1024;
      *&buf[10] = v85;
      v21 = MEMORY[0x277D86220];
      v22 = "AppleAVD: #### <WARNING> new_chroma_format_idc:%d m_orig_chroma_format_idc:%d";
      v23 = 14;
      goto LABEL_18;
    }

    v86 = *(a1 + 2920);
    if (v86 != v74)
    {
      v117 = *(v58 + 7);
LABEL_236:
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v118 = *(a1 + 7376);
      *buf = 67109888;
      *&buf[4] = v74;
      *&buf[8] = 1024;
      *&buf[10] = v86;
      *v157 = 1024;
      *&v157[2] = v117;
      LOWORD(v158) = 1024;
      *(&v158 + 2) = v118;
      v21 = MEMORY[0x277D86220];
      v22 = "AppleAVD: #### <WARNING> new_bit_depth_luma_minus8:%d m_orig_bit_depth_luma_minus8:%d new_bit_depth_chroma_minus8:%d m_orig_bit_depth_chroma_minus8:%d";
      v23 = 26;
LABEL_18:
      _os_log_impl(&dword_277606000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, v23);
      goto LABEL_19;
    }

    if (*(a1 + 7376) != v75)
    {
      v117 = *(v58 + 7);
      v86 = *(v58 + 6);
      goto LABEL_236;
    }

LABEL_112:
    v87 = *(a1 + 7356) && (v72 != *(a1 + 3248) || v74 != *(a1 + 3249) || v75 != *(a1 + 3250) || v76 != *v141 || v77 != *(a1 + 3220) || *(a1 + 3240) != 16);
    *(a1 + 3216) = v76;
    *(a1 + 3220) = v77;
    *(a1 + 3224) = vmovl_u16(v79);
    *(a1 + 3240) = 16;
    *(a1 + 3246) = v73;
    *(a1 + 3247) = v78;
    *(a1 + 3248) = v72;
    *(a1 + 3249) = v74;
    *(a1 + 3250) = v75;
    *(a1 + 3251) = v80;
    *(a1 + 3252) = 0;
    v88 = *(a1 + 3184) + 2224 * *(v146 + 2);
    v89 = *(v88 + 1558);
    v90 = *(v88 + 1560);
    if (*(a1 + 7360))
    {
      v92 = *(a1 + 3412) != v90 || *(a1 + 3328) != v89;
    }

    else
    {
      v92 = 0;
    }

    *(a1 + 3320) = 0;
    *(a1 + 3328) = v89;
    *(a1 + 3332) = 0u;
    *(a1 + 3348) = 0u;
    *(a1 + 3364) = 0u;
    *(a1 + 3380) = 0u;
    *(a1 + 3396) = 0u;
    *(a1 + 3412) = v90;
    *(a1 + 3416) = 0u;
    *(a1 + 3432) = 0u;
    *(a1 + 3448) = 0u;
    *(a1 + 3464) = 0u;
    *(a1 + 3480) = 0u;
    *(a1 + 3496) = 0;
    if ((v87 | v92))
    {
      v93 = AppleAVDCommandBuilder::waitNumInFlight(*(a1 + 2344), 1u);
      if (v93)
      {
        v94 = v93;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "VADecodeFrame";
          *&buf[12] = 1024;
          *v157 = v94;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s(): timeout status: %d", buf, 0x12u);
        }
      }
    }

    if (((*(a1 + 7356) != 0) & ~v87) == 0)
    {
      v154 = 0;
      (*(*a1 + 96))(a1, 0, &v154);
      (*(**(a1 + 2096) + 144))(*(a1 + 2096));
      *(a1 + 7356) = 0;
      if ((*(**(a1 + 2096) + 136))(*(a1 + 2096), v58))
      {
        v95 = MEMORY[0x277D86220];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "fail to allocate work buffer for sps";
          _os_log_impl(&dword_277606000, v95, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: [CAVDAvcDecErr] %s", buf, 0xCu);
        }

        v143 = 304;
        v96 = 2;
        v24 = v147;
        goto LABEL_150;
      }

      *(a1 + 7356) = 1;
    }

    if (*(a1 + 7360))
    {
      v97 = v87;
    }

    else
    {
      v97 = 1;
    }

    if ((v97 | v92))
    {
      (*(**(a1 + 2096) + 160))(*(a1 + 2096), 0);
      *(a1 + 7360) = 0;
      if ((*(**(a1 + 2096) + 152))(*(a1 + 2096), v58, v146, 0))
      {
        v98 = MEMORY[0x277D86220];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "virtual int CAVDAvcDecoder::VADecodeFrame(unsigned char *, int, uint32_t, int, int, int, avd_seq_params *)";
          _os_log_impl(&dword_277606000, v98, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s fail to alloc work buffer for pps\n", buf, 0xCu);
        }

        v96 = 1;
        v24 = v147;
LABEL_150:
        if (v96 != 2)
        {
          return 0xFFFFFFFFLL;
        }

LABEL_151:
        if (v143)
        {
          goto LABEL_20;
        }

        return 0;
      }

      *(a1 + 7360) = 1;
    }

    v49 = (v145 + 1);
    v47 = v149;
LABEL_149:
    v37 = (v150 + v152);
    v36 = v42 + v47;
    v35 = v49;
  }

  v84 = 16 * *(v58 + 1558) + 16;
LABEL_230:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v116 = *(a1 + 2916);
    *buf = 67110144;
    *&buf[4] = v144;
    *&buf[8] = 1024;
    *&buf[10] = v84;
    *v157 = 1024;
    *&v157[2] = v116;
    LOWORD(v158) = 1024;
    *(&v158 + 2) = v76;
    HIWORD(v158) = 1024;
    *v159 = v77;
    v21 = MEMORY[0x277D86220];
    v22 = "AppleAVD: #### <WARNING> Frame resolution change not supported Frame %d old %d %d new %d %d";
    v23 = 32;
    goto LABEL_18;
  }

LABEL_19:
  v24 = 0;
LABEL_20:
  if (*(a1 + 2724))
  {
    if (v24)
    {
      AVC_RLM::removeCurrentFrameFromDPB(*(a1 + 2992));
    }

    *(a1 + 2725) = 0;
    return 305;
  }

  else
  {
    *(a1 + 2725) = 1;
    CAVDAvcDecoder::FlushDPB(a1);
    for (j = *(a1 + 3576); j < *(a1 + 3580); j = *(a1 + 3576))
    {
      v27 = *(a1 + 3584 + ((j % 0x18) << 7) + 12);
      *(a1 + 3576) = j + 1;
      (*(*a1 + 88))(a1, v27);
    }

    return 316;
  }
}