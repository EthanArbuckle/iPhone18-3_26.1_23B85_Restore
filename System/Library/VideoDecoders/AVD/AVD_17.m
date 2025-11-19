uint64_t CAHDecHibiscusHevc::getTileHdrMemInfo(uint64_t result, int a2, void *a3)
{
  v3 = result + 176 * a2;
  *a3 = v3 + 528;
  a3[1] = v3 + 3344;
  return result;
}

__n128 CAHDecHibiscusHevc::getMVmemInfo(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
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

uint64_t CAHDecHibiscusHevc::populatePictureRegisters(CAHDecHibiscusHevc *this)
{
  v531 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(v2 + 8208);
  v4 = *(v2 + 8212);
  v5 = *(v2 + 8168);
  v6 = *(v2 + 8176);
  v7 = *(v2 + 8924);
  v8 = *(v2 + 2964);
  v510 = *(v2 + 2948);
  v511 = *(v2 + 2960);
  v506 = *(v2 + 2952);
  v507 = *(v2 + 2924);
  v501 = *(v2 + 2088);
  v502 = *(v2 + 8280);
  v504 = *(v2 + 3548);
  v505 = *(v2 + 8994);
  v516 = *(v2 + 2644);
  v509 = *(v2 + 8312);
  v508 = *(v2 + 8);
  v9 = *(v2 + 8424);
  v530[0] = *(v2 + 8408);
  v530[1] = v9;
  v10 = *(v2 + 8456);
  v530[2] = *(v2 + 8440);
  v530[3] = v10;
  v503 = *(v2 + 8608);
  v11 = (*(*v2 + 184))(v2);
  v12 = *(this + 32);
  v515 = v11 && (v12[689] || v12[4] == 1);
  v13 = *(this + 33);
  v14 = v5 + 23176 * v3;
  v15 = *(v14 + 4424) + *(v14 + 4420);
  memset(v529, 0, sizeof(v529));
  memset(v528, 0, sizeof(v528));
  (*(*v12 + 344))();
  v16 = 0;
  v17 = *(this + 32);
  v18 = (v17 + 8616);
  do
  {
    v532 = vld2q_f64(v18);
    v18 += 4;
    v529[v16] = v532.val[0];
    v528[v16++] = v532.val[1];
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

  v513 = v26;
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
  v47 = ((v516 != 0) << 12) | ((v516 == 1) << 10) | v45 | *(v13 + 88) & 0xFFFFC15F;
  v48 = v47 & 0xFFFFF500 | 0x2A0;
  v49 = v47 | 0x2B0;
  if (!v515)
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
  if ((v7 & 1) != 0 && *(v19 + 53) && *(v14 + 22888) > v46 + 1 || (v7 & 2) != 0 && !*(v19 + 53) && *(v19 + 52) && v513 > v46 + 1)
  {
    goto LABEL_78;
  }

  if ((v7 & 0x20) == 0 || (v53 = *(v19 + 53), *(v19 + 53)))
  {
    v53 = 0;
    goto LABEL_79;
  }

  if (!*(v19 + 52) && v511 > v46 + 1)
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
  if (*(v80 + 12) == 1 && *(v14 + 22864) >= 5u && !*(v19 + 52) && *(v14 + 3600) == 1 && (*(v14 + 3636) | 2) == 2 && (*(v14 + 3640) | 2) == 2)
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
    v526 = 0u;
    v527 = 0u;
    v524 = 0u;
    v525 = 0u;
    v522 = 0u;
    v523 = 0u;
    v520 = 0u;
    v521 = 0u;
    v519 = 0u;
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
        v121 = DWORD2(v526) == 0;
      }

      LODWORD(v116) = !v121 || HIDWORD(v526) != 0;
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

  v512 = v13;
  v514 = v14;
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
  v195 = (this + 176 * v509 + 8976);
  if (*v195 || *(this + 44 * v509 + 2282) || *(this + 44 * v509 + 2283))
  {
    result = CAHDec::addToPatcherList(this, this + 22 * v509 + 1122, 320, 0, 0xFFFFFFFFLL, 8, v194, 4);
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
  if (*v195 || *(this + 44 * v509 + 2282) || *(this + 44 * v509 + 2283))
  {
    result = CAHDec::addToPatcherList(this, this + 22 * v509 + 1122, 620, 0, 0x3FFFFFFFFFFLL, 32, v199, 4);
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
    v221 = (v501 + 8);
    v220 = *(v501 + 8);
    if (v505)
    {
      if (v220 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, (v501 + 8), 340, *(v501 + 68), 0xFFFFFFFFLL, 7, v219, 4);
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
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 640, *(v501 + 68), 0x3FFFFFFFFFFLL, 32, v225, 4);
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
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 336, *(v501 + 80), 0xFFFFFFFFLL, 7, v229, 4);
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
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 636, *(v501 + 80), 0x3FFFFFFFFFFLL, 32, v233, 4);
        if (result)
        {
          return result;
        }
      }

      if (v507)
      {
        v234 = *(this + 33);
        v235 = *(v234 + 348);
        *(v234 + 348) = 0;
        *(*(this + 33) + 348) ^= 0xFFFFFF80;
        v236 = *(this + 33);
        v237 = *(v236 + 348);
        *(v236 + 348) = v235;
        if (*v502 || *(v502 + 152) || *(v502 + 156))
        {
          result = CAHDec::addToPatcherList(this, v502, 348, *(v502 + 56), 0xFFFFFFFFLL, 7, v237, 4);
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
        if (*v502 || *(v502 + 152) || *(v502 + 156))
        {
          result = CAHDec::addToPatcherList(this, v502, 648, *(v502 + 56), 0x3FFFFFFFFFFLL, 32, v241, 4);
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
        if (*v502 || *(v502 + 152) || *(v502 + 156))
        {
          result = CAHDec::addToPatcherList(this, v502, 344, *(v502 + 68), 0xFFFFFFFFLL, 7, v245, 4);
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
        if (*v502 || *(v502 + 152) || *(v502 + 156))
        {
          v250 = v502;
          v251 = *(v502 + 68);
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
      if (v220 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, (v501 + 8), 340, *(v501 + 60), 0xFFFFFFFFLL, 7, v219, 4);
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
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 348, *(v501 + 64), 0xFFFFFFFFLL, 7, v293, 4);
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
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 336, *(v501 + 72), 0xFFFFFFFFLL, 7, v297, 4);
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
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 344, *(v501 + 76), 0xFFFFFFFFLL, 7, v301, 4);
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
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 640, *(v501 + 60), 0x3FFFFFFFFFFLL, 32, v305, 4);
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
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 648, *(v501 + 64), 0x3FFFFFFFFFFLL, 32, v309, 4);
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
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 636, *(v501 + 72), 0x3FFFFFFFFFFLL, 32, v313, 4);
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
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        v251 = *(v501 + 76);
        v252 = this;
        v250 = (v501 + 8);
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
    v259 = (this + 176 * v509 + 528);
    if (*v259 || *(this + 44 * v509 + 170) || *(this + 44 * v509 + 171))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v509 + 66, 336, 0, 0xFFFFFFFFLL, 7, v258, 4);
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
    if (*v259 || *(this + 44 * v509 + 170) || *(this + 44 * v509 + 171))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v509 + 66, 636, 0, 0x3FFFFFFFFFFLL, 32, v263, 4);
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
    v268 = (v501 + 8);
    if (*(v501 + 8) || *(v501 + 160) || *(v501 + 164))
    {
      result = CAHDec::addToPatcherList(this, (v501 + 8), 340, *(v501 + 60), 0xFFFFFFFFLL, 7, v267, 4);
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
    if (*v268 || *(v501 + 160) || *(v501 + 164))
    {
      result = CAHDec::addToPatcherList(this, v268, 640, *(v501 + 60), 0x3FFFFFFFFFFLL, 32, v272, 4);
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
    v277 = (this + 176 * v509 + 3344);
    if (*v277 || *(this + 44 * v509 + 874) || *(this + 44 * v509 + 875))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v509 + 418, 344, 0, 0xFFFFFFFFLL, 7, v276, 4);
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
    if (*v277 || *(this + 44 * v509 + 874) || *(this + 44 * v509 + 875))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v509 + 418, 644, 0, 0x3FFFFFFFFFFLL, 32, v281, 4);
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
    if (*v268 || *(v501 + 160) || *(v501 + 164))
    {
      result = CAHDec::addToPatcherList(this, v268, 348, *(v501 + 64), 0xFFFFFFFFLL, 7, v285, 4);
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
    if (*v268 || *(v501 + 160) || *(v501 + 164))
    {
      v251 = *(v501 + 64);
      v252 = this;
      v250 = (v501 + 8);
      v289 = 648;
      goto LABEL_344;
    }
  }

  if (!(*(v512 + 88) & 0x2000 | v503))
  {
    *(v512 + 88) |= 0x2000u;
    *(this + v509 + 116) = 1;
    *(*(this + 33) + 352) = 0;
    goto LABEL_465;
  }

  *(this + v509 + 116) = 0;
  *(*(this + 33) + 352) = 0;
  if (v503)
  {
    v317 = 0;
    if (v515)
    {
      v318 = 0x2000000;
    }

    else
    {
      v318 = 0;
    }

    v319 = v530;
    v320 = v529;
    v321 = v528;
    do
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

            v517 = 0;
            v42 = MEMORY[0x277D86220];
            v43 = "AppleAVD: decodeGetRenderTargetRef RETURNED ERROR\n";
            v254 = &v517;
            v255 = 2;
            goto LABEL_276;
          }

          *(v322 + 48) = *buf + 8;
        }
      }

      *(*(this + 33) + v317 + 352) = 0;
      *(*(this + 33) + v317 + 352) = *(*(this + 33) + v317 + 352) & 0xFFFFFFF | ((v503 << 28) - 0x10000000);
      *(*(this + 33) + v317 + 352) &= 0xF3FFFFFF;
      *(*(this + 33) + v317 + 352) = *(*(this + 33) + v317 + 352) & 0xFDFFFFFF | v318;
      *(*(this + 33) + v317 + 352) |= 0x1000000u;
      v325 = v504 - *(v322 + 12);
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
        if (v505)
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

          if (v507)
          {
            v351 = *(this + 33) + v317;
            v352 = *(v351 + 480);
            *(v351 + 480) = 0;
            *(*(this + 33) + v317 + 480) ^= 0xFFFFFF80;
            v353 = *(this + 33) + v317;
            v354 = *(v353 + 480);
            *(v353 + 480) = v352;
            if (*v502 || *(v502 + 152) || *(v502 + 156))
            {
              result = CAHDec::addToPatcherList(this, v502, v317 + 480, *(v502 + 56), 0xFFFFFFFFLL, 7, v354, 4);
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
            if (*v502 || *(v502 + 152) || *(v502 + 156))
            {
              result = CAHDec::addToPatcherList(this, v502, v317 + 748, *(v502 + 56), 0x3FFFFFFFFFFLL, 32, v358, 4);
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
            if (*v502 || *(v502 + 152) || *(v502 + 156))
            {
              result = CAHDec::addToPatcherList(this, v502, v317 + 448, *(v502 + 68), 0xFFFFFFFFLL, 7, v362, 4);
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
            if (*v502 || *(v502 + 152) || *(v502 + 156))
            {
              v367 = v317 + 716;
              v368 = v502;
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

        *(*(this + 33) + v317 + 684) = 0;
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
    }

    while (4 * v503 != v317);
  }

LABEL_465:
  *(*(this + 33) + 512) = 0;
  *(*(this + 33) + 516) = 0;
  *(*(this + 33) + 520) = 0;
  *(*(this + 33) + 524) = 0;
  if (!v516)
  {
    goto LABEL_527;
  }

  v439 = *(this + 32);
  if (v510 && v506 == 2)
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
    if (!*v445 && !*(v445 + 152) && !*(v445 + 156) || (result = CAHDec::addToPatcherList(this, v445, 512, v440, 0xFFFFFFFFLL, 6, v444, 4), !result))
    {
      if ((v446 = *(this + 33), v447 = *(v446 + 780), *(v446 + 780) = 0, *(*(this + 33) + 780) ^= 0x3FFu, v448 = *(this + 33), v449 = *(v448 + 780), *(v448 + 780) = v447, v450 = *(*(this + 32) + 8248), !*v450) && !*(v450 + 152) && !*(v450 + 156) || (result = CAHDec::addToPatcherList(this, v450, 780, v440, 0x3FFFFFFFFFFLL, 32, v449, 4), !result))
      {
        if (!v507 || ((v451 = *(v502 + 56), v452 = *(this + 33), v453 = *(v452 + 516), *(v452 + 516) = 0, *(*(this + 33) + 516) ^= 0xFFFFFFC0, v454 = *(this + 33), v455 = *(v454 + 516), *(v454 + 516) = v453, !*v502) && !*(v502 + 152) && !*(v502 + 156) || (result = CAHDec::addToPatcherList(this, v502, 516, v451, 0xFFFFFFFFLL, 6, v455, 4), !result)) && ((v456 = *(this + 33), v457 = *(v456 + 784), *(v456 + 784) = 0, *(*(this + 33) + 784) ^= 0x3FFu, v458 = *(this + 33), v459 = *(v458 + 784), *(v458 + 784) = v457, !*v502) && !*(v502 + 152) && !*(v502 + 156) || (result = CAHDec::addToPatcherList(this, v502, 784, v451, 0x3FFFFFFFFFFLL, 32, v459, 4), !result)))
        {
          if (v508)
          {
            *(*(this + 33) + 520) = *(*(this + 33) + 520) & 0xFFFC003F | (((*(*(*(this + 32) + 8248) + 84) >> 6) & 0xFFF) << 6);
            if (!v507)
            {
              goto LABEL_527;
            }

            v460 = v502;
            goto LABEL_488;
          }

          if (CAHDecDaisyHevc::getSWRStride(this, *(v512 + 160) - *(v512 + 156) + 1, v514[909], v514[910], v514[5713]))
          {
            return 0xFFFFFFFFLL;
          }

          *(*(this + 33) + 520) = *(*(this + 33) + 520) & 0xFFFC003F | (((*(this + 3352) >> 6) & 0xFFF) << 6);
          if (!v507)
          {
LABEL_527:
            v490 = *(this + 32);
            if (*(v490 + 2360) == 1)
            {
              v491 = *(this + 33);
              *(v491 + 884) = *(v491 + 884) & 0xFFFFFFFE | *(v490 + 2508) & 1;
              if (*(v490 + 2508))
              {
                *(v491 + 2884) = 0x10000000;
                *(v491 + 2888) = *(v490 + 2368);
                *(v491 + 2896) = 0;
                *(v491 + 2892) = 0;
                *(v491 + 2904) = *(v490 + 2372);
                v492 = *(v490 + 2404);
                *(v491 + 2920) = *(v490 + 2388);
                *(v491 + 2936) = v492;
              }

              *(*(this + 33) + 884) = *(*(this + 33) + 884) & 0xFFFFFFFD | (2 * (*(v490 + 2512) & 1));
              if (*(v490 + 2512))
              {
                *(v491 + 2952) = 0;
                if (!*(v490 + 2424))
                {
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    return 0xFFFFFFFFLL;
                  }

                  *buf = 136315138;
                  *&buf[4] = "populatePictureRegisters";
                  v42 = MEMORY[0x277D86220];
                  v43 = "AppleAVD: %s(): H13A descrambler is not supported\n";
LABEL_549:
                  v254 = buf;
                  v255 = 12;
                  goto LABEL_276;
                }

                *(v490 + 2640) = 0;
                v493 = *(v491 + 2952) & 0xF7FFFFF | ((*(v490 + 2420) & 1) << 23) | 0x20000000;
                *(v491 + 2952) = v493;
                *(v491 + 2952) = v493 & 0xFFC00000 | (*(v490 + 2364) == 0);
                v494 = *(v490 + 2428);
                v495 = *(v490 + 2460);
                *(v491 + 2972) = *(v490 + 2444);
                *(v491 + 2988) = v495;
                *(v491 + 2956) = v494;
              }

              *(*(this + 33) + 884) = *(*(this + 33) + 884) & 0xFFFFFFFB | (4 * (*(v490 + 2516) & 1));
              *(*(this + 33) + 884) = *(*(this + 33) + 884) & 0xFFFFFFF7 | (8 * (*(v490 + 2520) & 1));
              *(*(this + 33) + 884) = *(*(this + 33) + 884) & 0xFFFFFFEF | (16 * (*(v490 + 2524) & 1));
              *(v491 + 3112) = 0;
              if (*(v490 + 2476) == 2)
              {
                v496 = 805306368;
              }

              else
              {
                v496 = 813694976;
              }

              *(v491 + 3112) = v496;
              memcpy((v491 + 3116), (v490 + 2480), 4 * *(v490 + 2476));
              if (*(v490 + 2516))
              {
                *(v490 + 2516) = 0;
              }

              *(*(this + 33) + 884) = *(*(this + 33) + 884) & 0xFFFFFFDF | (32 * (*(v490 + 2632) & 1));
              if (*(v490 + 2632))
              {
                *(v491 + 3004) = 0x80000000;
                v497 = ((*(v490 + 2528) & 1) << 27) | 0x80000000;
                *(v491 + 3004) = v497;
                *(v491 + 3004) = v497 | (((2 * *(v490 + 2528)) & 4 | (*(v490 + 2528) >> 1) & 2 | (*(v490 + 2528) >> 3) & 1) << 24);
                v498 = *(v490 + 2532);
                v499 = *(v490 + 2548);
                *(v491 + 3040) = *(v490 + 2564);
                *(v491 + 3024) = v499;
                *(v491 + 3008) = v498;
                *(v491 + 3056) = *(v490 + 2580);
                *(v491 + 3064) = *(v490 + 2588);
                v500 = *(v490 + 2528);
                if ((v500 & 6) != 0 && (v500 & 8) == 0)
                {
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    return 0xFFFFFFFFLL;
                  }

                  *buf = 136315138;
                  *&buf[4] = "populatePictureRegisters";
                  v42 = MEMORY[0x277D86220];
                  v43 = "AppleAVD: %s(): chip id is not used while ecid and/or board id is used\n";
                  goto LABEL_549;
                }

                *(v491 + 3072) = *(v490 + 2596);
              }

              *(*(this + 33) + 884) = *(*(this + 33) + 884) & 0xFFFFFFBF | ((*(v490 + 2636) & 1) << 6);
              if (*(v490 + 2636))
              {
                result = 0;
                *(v491 + 3088) = -1879048192;
                *(v491 + 3088) = ((*(v490 + 2612) & 1) << 23) | 0x90000000;
                *(v491 + 3092) = *(v490 + 2616);
                *(v490 + 2640) = 1;
                return result;
              }
            }

            return 0;
          }

          goto LABEL_525;
        }
      }
    }

    return result;
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
  v465 = *(v464 + 52);
  v466 = v465 + v463;
  if (__CFADD__(v465, v463))
  {
    v467 = 1;
LABEL_498:
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 136315394;
    *&buf[4] = "populatePictureRegisters";
    *&buf[12] = 1024;
    *&buf[14] = v467;
    v42 = MEMORY[0x277D86220];
    v43 = "AppleAVD: %s(): failKind = %d";
    v254 = buf;
    v255 = 18;
    goto LABEL_276;
  }

  v468 = *(v464 + 56);
  v469 = v468 + v462;
  if (__CFADD__(v468, v462))
  {
    v467 = 2;
    goto LABEL_498;
  }

  v470 = *(this + 33);
  v471 = *(v470 + 512);
  *(v470 + 512) = 0;
  *(*(this + 33) + 512) ^= 0xFFFFFFC0;
  v472 = *(this + 33);
  v473 = *(v472 + 512);
  *(v472 + 512) = v471;
  v474 = *(*(this + 32) + 8248);
  if (!*v474 && !*(v474 + 152) && !*(v474 + 156) || (result = CAHDec::addToPatcherList(this, v474, 512, v466, 0xFFFFFFFFLL, 6, v473, 4), !result))
  {
    if ((v475 = *(this + 33), v476 = *(v475 + 780), *(v475 + 780) = 0, *(*(this + 33) + 780) ^= 0x3FFu, v477 = *(this + 33), v478 = *(v477 + 780), *(v477 + 780) = v476, v479 = *(*(this + 32) + 8248), !*v479) && !*(v479 + 152) && !*(v479 + 156) || (result = CAHDec::addToPatcherList(this, v479, 780, v466, 0x3FFFFFFFFFFLL, 32, v478, 4), !result))
    {
      if ((v480 = *(this + 33), v481 = *(v480 + 516), *(v480 + 516) = 0, *(*(this + 33) + 516) ^= 0xFFFFFFC0, v482 = *(this + 33), v483 = *(v482 + 516), *(v482 + 516) = v481, v484 = *(*(this + 32) + 8248), !*v484) && !*(v484 + 152) && !*(v484 + 156) || (result = CAHDec::addToPatcherList(this, v484, 516, v469, 0xFFFFFFFFLL, 6, v483, 4), !result))
      {
        if ((v485 = *(this + 33), v486 = *(v485 + 784), *(v485 + 784) = 0, *(*(this + 33) + 784) ^= 0x3FFu, v487 = *(this + 33), v488 = *(v487 + 784), *(v487 + 784) = v486, v489 = *(*(this + 32) + 8248), !*v489) && !*(v489 + 152) && !*(v489 + 156) || (result = CAHDec::addToPatcherList(this, v489, 784, v469, 0x3FFFFFFFFFFLL, 32, v488, 4), !result))
        {
          if (v508)
          {
            *(*(this + 33) + 520) = *(*(this + 33) + 520) & 0xFFFC003F | (((*(*(*(this + 32) + 8248) + 76) >> 6) & 0xFFF) << 6);
            v460 = *(*(this + 32) + 8248);
LABEL_488:
            v461 = (v460 + 80);
LABEL_526:
            *(*(this + 33) + 524) = *(*(this + 33) + 524) & 0xFFF8003F | (((*v461 >> 6) & 0x1FFF) << 6);
            goto LABEL_527;
          }

          if (CAHDecDaisyHevc::getSWRStride(this, *(v512 + 160) - *(v512 + 156) + 1, v514[909], v514[910], v514[5713]))
          {
            return 0xFFFFFFFFLL;
          }

          *(*(this + 33) + 520) = *(*(this + 33) + 520) & 0xFFFC003F | (((*(this + 3352) >> 6) & 0xFFF) << 6);
LABEL_525:
          v461 = (this + 13412);
          goto LABEL_526;
        }
      }
    }
  }

  return result;
}

uint64_t CAHDecHibiscusHevc::getTileIdxAbove(CAHDecHibiscusHevc *this, unsigned int a2)
{
  v2 = *(*(this + 33) + 788);
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

uint64_t CAHDecHibiscusHevc::populateAvdWork(CAHDecHibiscusHevc *this, unsigned int a2)
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

  v108 = *(v4 + 790) * *(v4 + 788);
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
  v20 = v4 + 223932;
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
  v106 = v4 + 3480;
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
            if (v40 >= *(*(this + 33) + 2 * (HIDWORD(v104) + 1) + 834))
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
            *(&buf[1] + 6) = 2010;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v54 = v123;
          }

          result = CAHDec::addToPatcherList(this, v53, v52 + 223954, HIDWORD(v122) + v54, 0x3FFFFFFFFFFLL, 32, -1, 2);
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
            *(&buf[1] + 6) = 2011;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v55 = v123;
          }

          result = CAHDec::addToPatcherList(this, v53, v52 + 223956, HIDWORD(v122) + v55, 0xFFFFFFFFLL, 0, -1, 4);
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
              v65 = *(v64 + 788);
              LODWORD(v104) = (v33 - *(v64 + 834 + 2 * (v56 / v65)) + *(v64 + 834 + 2 * (v56 / v65 + 1))) % v51;
              HIDWORD(v104) = v56 / v65;
              v100 = *(v64 + 2 * (v56 % v65) + 792);
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
          v67 = *(*(this + 33) + 788);
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
          *(&buf[1] + 6) = 1934;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v46 = v123;
        }

        result = CAHDec::addToPatcherList(this, v45, v44 + 223954, HIDWORD(v122) + v46, 0x3FFFFFFFFFFLL, 32, -1, 2);
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
        *(&buf[1] + 6) = 1935;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v49 = v123;
      }

      result = CAHDec::addToPatcherList(this, v45, v44 + 223956, v47 + v49, 0xFFFFFFFFLL, 0, -1, 4);
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
      v78 = v74 + 223954;
      v79 = v123;
      if ((v123 + v76) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "populateAvdWork";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = 2106;
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
      *(v90 + 4 * v80) = (v80 - v95) * v93 + 223932;
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
    *(&buf[1] + 6) = 2105;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v75 = v123;
  }

  result = CAHDec::addToPatcherList(this, v73, v74 + 223954, HIDWORD(v122) + v75, 0x3FFFFFFFFFFLL, 32, -1, 2);
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

uint64_t CAHDecHibiscusHevc::allocWorkBuf_SPS(CAHDecHibiscusHevc *this, _DWORD *a2)
{
  v61 = *MEMORY[0x277D85DE8];
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
      v51 = 136316418;
      v52 = "allocWorkBuf_SPS";
      v53 = 1024;
      v54 = v11;
      v55 = 1024;
      *v56 = v12;
      *&v56[4] = 1024;
      *&v56[6] = v13;
      v57 = 1024;
      v58 = v14;
      v59 = 1024;
      v60 = v15;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): unsupported bit stream w %d h %d bd %d %d CtbSizeY %d\n", &v51, 0x2Au);
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

  *(this + 3344) = v26;
  *(this + 3345) = v40;
  *(this + 1673) = 0;
  v41 = (v17 & 0xFFFFFFF0) * (v17 >> 4) * v4[600];
  *(this + 3350) = v41;
  *(this + 3349) = v4[602] * v41;
  if (*(*(this + 32) + 2648))
  {
LABEL_48:
    v47 = (this + 8976);
    v48 = 16;
    while (1)
    {
      v49 = *(this + 3349);
      if (v49)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), v47, v49, 7, 1, 0))
        {
          break;
        }
      }

      if (*v47)
      {
        bzero(*v47, *(this + 3349));
      }

      result = 0;
      v47 += 22;
      if (!--v48)
      {
        return result;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_62;
    }

    v51 = 136315650;
    v52 = "allocWorkBuf_SPS";
    v53 = 1024;
    v54 = 2372;
    v55 = 2080;
    *v56 = "MvColo";
    v50 = MEMORY[0x277D86220];
  }

  else
  {
    v42 = (this + 3344);
    v43 = 16;
    while (1)
    {
      v44 = *(this + 3344);
      if (v44 && CAVDDecoder::allocAVDMem(*(this + 32), v42 - 176, v44, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_62;
        }

        v51 = 136315650;
        v52 = "allocWorkBuf_SPS";
        v53 = 1024;
        v54 = 2363;
        v55 = 2080;
        *v56 = "HdrY";
        v50 = MEMORY[0x277D86220];
        goto LABEL_61;
      }

      v45 = *(v42 - 352);
      if (v45)
      {
        bzero(v45, *(this + 3344));
      }

      v46 = *(this + 3345);
      if (v46)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), v42, v46, 7, 1, 0))
        {
          break;
        }
      }

      if (*v42)
      {
        bzero(*v42, *(this + 3345));
      }

      v42 += 11;
      if (!--v43)
      {
        goto LABEL_48;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_62;
    }

    v51 = 136315650;
    v52 = "allocWorkBuf_SPS";
    v53 = 1024;
    v54 = 2364;
    v55 = 2080;
    *v56 = "HdrC";
    v50 = MEMORY[0x277D86220];
  }

LABEL_61:
  _os_log_impl(&dword_277606000, v50, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v51, 0x1Cu);
LABEL_62:
  (*(*this + 144))(this);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecHibiscusHevc::allocWorkBuf_PPS(CAHDecHibiscusHevc *this, _DWORD *a2, _DWORD *a3, void *a4)
{
  v89 = *MEMORY[0x277D85DE8];
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
    v10 = 32;
  }

  else
  {
    v10 = v9;
  }

  v11 = v8 != 3;
  if (*(a3 + 52))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = a2[1106] + a2[1105];
    v18 = a3[14];
    v19 = a2[5718];
    v20 = a2[902];
    do
    {
      v21 = a3[v12 + 17] + 1;
      v22 = v21 * v19;
      if (v21 * v19 + v15 > v20)
      {
        v22 = v20 - v15;
      }

      if (v13 <= v22)
      {
        v13 = v22;
      }

      if (v8)
      {
        v23 = (v21 << v17) >> v11;
        if (v18 == v12)
        {
          v23 = (((v20 >> 3) - (v16 << v17)) >> v11) + 1;
        }

        v14 += ((v23 + 2 * (v12 != 0)) * v10 + 127) & 0xFFFFFF80;
      }

      v15 += v22;
      v16 += v21;
      ++v12;
    }

    while (v18 + 1 != v12);
  }

  else
  {
    v20 = a2[902];
    v24 = (v10 + v10 * (v20 >> 3 >> v11) + 127) & 0x7FFFFF80;
    if (v8)
    {
      v14 = v24;
    }

    else
    {
      v14 = 0;
    }

    v13 = a2[902];
  }

  v25 = 0;
  v26 = *(this + 32);
  if (v13 >= -15)
  {
    v27 = v13 + 15;
  }

  else
  {
    v27 = v13 + 30;
  }

  if (*(a3 + 52))
  {
    v28 = a3[14];
  }

  else
  {
    v28 = 0;
  }

  v79 = v28;
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

  v32 = (v27 >> 4) * v31;
  if (v5)
  {
    v33 = 60;
  }

  else
  {
    v33 = 48;
  }

  v77 = v33;
  v78 = v30;
  v80 = a3[14];
  v34 = 0;
  v35 = 0;
  if (!*(a3 + 52))
  {
    v60 = 0;
LABEL_88:
    v81 = v60;
    goto LABEL_89;
  }

  v81 = 0;
  if (a3[14])
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v25 = 0;
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
    v52 = *(v26 + 2644) == 1 && v47 != 0;
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

      v57 = 36 * (v54 >> 4);
      if (v34 <= v57)
      {
        v34 = v57;
      }

      if (v52)
      {
        v58 = v48 == v36 ? 23 : 15;
        v59 = ((v58 + v53) / 16 * v43) | 6;
        if (v25 <= v59)
        {
          v25 = v59;
        }
      }

      v37 += v53;
      ++v36;
    }

    while (v48 + 1 != v36);
    v60 = (((3 * v7) & 0x7FFFFF) << 6) + (((v44 + 7) >> 3) + 2) * ((((v7 >> 1) & 0x1FFFFF) << 8) | 8);
    goto LABEL_88;
  }

LABEL_89:
  if (v32 && CAVDDecoder::allocAVDMem(v26, this + 737, v32, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v84 = "allocWorkBuf_PPS";
      v85 = 1024;
      v86 = 2546;
      v87 = 2080;
      v88 = "IpAbove";
      v61 = MEMORY[0x277D86220];
LABEL_147:
      _os_log_impl(&dword_277606000, v61, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", buf, 0x1Cu);
      goto LABEL_148;
    }

    goto LABEL_148;
  }

  v62 = *(this + 1474);
  if (v62)
  {
    bzero(v62, v32);
  }

  v63 = 20 * (v27 >> 4);
  if ((v13 + 30) >= 0x1F && CAVDDecoder::allocAVDMem(*(this + 32), this + 550, v63, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v84 = "allocWorkBuf_PPS";
      v85 = 1024;
      v86 = 2547;
      v87 = 2080;
      v88 = "MvAboveInfo";
      v61 = MEMORY[0x277D86220];
      goto LABEL_147;
    }

LABEL_148:
    (*(*this + 160))(this, 0);
    return 0xFFFFFFFFLL;
  }

  v64 = v79 + ((v20 + 15) >> 4);
  v65 = v64 * ((((v78 * v7) >> 3) + 7) & 0x3FFFFFF8) + (v80 << 7);
  v66 = *(this + 1100);
  if (v66)
  {
    bzero(v66, v63);
  }

  if (v65 && CAVDDecoder::allocAVDMem(*(this + 32), this + 748, v65, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v84 = "allocWorkBuf_PPS";
      v85 = 1024;
      v86 = 2548;
      v87 = 2080;
      v88 = "LfAbovePix";
      v61 = MEMORY[0x277D86220];
      goto LABEL_147;
    }

    goto LABEL_148;
  }

  v67 = 36 * v64 + (v80 << 7);
  v68 = *(this + 1496);
  if (v68)
  {
    bzero(v68, v65);
  }

  if (v67 && CAVDDecoder::allocAVDMem(*(this + 32), this + 759, v67, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v84 = "allocWorkBuf_PPS";
      v85 = 1024;
      v86 = 2549;
      v87 = 2080;
      v88 = "LfAboveInfo";
      v61 = MEMORY[0x277D86220];
      goto LABEL_147;
    }

    goto LABEL_148;
  }

  v69 = *(this + 1518);
  if (v69)
  {
    bzero(v69, v67);
  }

  if (v35 && CAVDDecoder::allocAVDMem(*(this + 32), this + 770, v35, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v84 = "allocWorkBuf_PPS";
      v85 = 1024;
      v86 = 2550;
      v87 = 2080;
      v88 = "LfLeftPix";
      v61 = MEMORY[0x277D86220];
      goto LABEL_147;
    }

    goto LABEL_148;
  }

  v70 = *(this + 1540);
  if (v70)
  {
    bzero(v70, v35);
  }

  if (v34 && CAVDDecoder::allocAVDMem(*(this + 32), this + 781, v34, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v84 = "allocWorkBuf_PPS";
      v85 = 1024;
      v86 = 2551;
      v87 = 2080;
      v88 = "LfLeftInfo";
      v61 = MEMORY[0x277D86220];
      goto LABEL_147;
    }

    goto LABEL_148;
  }

  v71 = *(this + 1562);
  if (v71)
  {
    bzero(v71, v34);
  }

  if (v25 && CAVDDecoder::allocAVDMem(*(this + 32), this + 792, v25, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v84 = "allocWorkBuf_PPS";
      v85 = 1024;
      v86 = 2552;
      v87 = 2080;
      v88 = "SwLeftPix";
      v61 = MEMORY[0x277D86220];
      goto LABEL_147;
    }

    goto LABEL_148;
  }

  v72 = *(this + 1584);
  if (v72)
  {
    bzero(v72, v25);
  }

  if (v14 && CAVDDecoder::allocAVDMem(*(this + 32), this + 803, v14, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v84 = "allocWorkBuf_PPS";
      v85 = 1024;
      v86 = 2553;
      v87 = 2080;
      v88 = "AZAbovePix";
      v61 = MEMORY[0x277D86220];
      goto LABEL_147;
    }

    goto LABEL_148;
  }

  v73 = *(this + 1606);
  if (v73)
  {
    bzero(v73, v14);
  }

  if (v81 && CAVDDecoder::allocAVDMem(*(this + 32), this + 814, v81, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v84 = "allocWorkBuf_PPS";
      v85 = 1024;
      v86 = 2554;
      v87 = 2080;
      v88 = "AZLeftPix";
      v61 = MEMORY[0x277D86220];
      goto LABEL_147;
    }

    goto LABEL_148;
  }

  v74 = (v20 >> 3) * v77;
  v75 = *(this + 1628);
  if (v75)
  {
    bzero(v75, v81);
  }

  if (v74 && CAVDDecoder::allocAVDMem(*(this + 32), this + 825, v74, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v84 = "allocWorkBuf_PPS";
      v85 = 1024;
      v86 = 2556;
      v87 = 2080;
      v88 = "RfAboveInfo";
      v61 = MEMORY[0x277D86220];
      goto LABEL_147;
    }

    goto LABEL_148;
  }

  result = *(this + 1650);
  if (result)
  {
    bzero(result, v74);
    return 0;
  }

  return result;
}

uint64_t CAHDecHibiscusHevc::freeWorkBuf_SPS(uint64_t this)
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

uint64_t *CAHDecHibiscusHevc::freeWorkBuf_PPS(uint64_t *this, void *a2)
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

  if (v2[1650])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1650);
    v2[1650] = 0;
  }

  return this;
}

uint64_t CAHDecHibiscusHevc::setVPInstrFifo(uint64_t this, int a2)
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
  *(this + 13392) = a2;
  return this;
}

CAHDecLotusAvc *createLotusAvcDecoder(CAVDAvcDecoder *a1)
{
  v2 = operator new(0x3EE0uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecLotusAvc::CAHDecLotusAvc(v2, a1);
  }

  return v3;
}

void CAHDecLotusAvc::CAHDecLotusAvc(CAHDecLotusAvc *this, CAVDAvcDecoder *a2)
{
  CAHDec::CAHDec(this);
  *v3 = &unk_288666E78;
  *(v3 + 256) = a2;
  *(v3 + 456) = 948 * *(a2 + 3694) + 165600;
  *(v3 + 8) = 1760;
  *(v3 + 16) = xmmword_27775C5E0;
  *(v3 + 32) = 1;
  *(v3 + 56) = a2;
  *(v3 + 15920) = 0u;
  *(v3 + 15936) = 0u;
  *(v3 + 15952) = 0u;
  *(v3 + 15968) = 0u;
  *(v3 + 15984) = 0u;
  *(v3 + 16000) = 0u;
  *(v3 + 16016) = 0u;
  *(v3 + 16032) = 0u;
  *(v3 + 16048) = 0u;
  *(v3 + 16064) = 0u;
  *(v3 + 16080) = 0u;
  bzero((v3 + 560), 0x3BD0uLL);
}

void CAHDecLotusAvc::~CAHDecLotusAvc(CAHDecLotusAvc *this)
{
  *this = &unk_288666E78;
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecLotusAvc::~CAHDecLotusAvc(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecLotusAvc::init(CAHDecLotusAvc *this)
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

uint64_t CAHDecLotusAvc::initPicture(CAHDecLotusAvc *this, int a2, __int16 a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = 948 * *(*(this + 32) + 7388) + 165600;
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

uint64_t CAHDecLotusAvc::populateSlices(CAHDecLotusAvc *this, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = *(this + *(this + 13) + 34) + 1760;
    v5 = a2;
    do
    {
      CAHDecLotusAvc::populateSliceRegisters(this, v4, v3++);
      v4 += 948;
    }

    while (v5 != v3);
  }

  return 0;
}

uint64_t CAHDecLotusAvc::populateSliceRegisters(uint64_t a1, uint64_t a2, signed int a3)
{
  v6 = 0;
  v108 = *MEMORY[0x277D85DE8];
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
  v94 = v11;
  v95 = v8;
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

    v88 = *(v24 + 40);
    if (v88 == *(a1 + 15960))
    {
      goto LABEL_20;
    }

    *(a1 + 15960) = v88;
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
    v105 = v29[659];
    v106 = v31;
    v107 = v29[661];
    v32 = v29[654];
    v33 = v29[656];
    v101 = v29[655];
    v102 = v33;
    v103 = v29[657];
    v104 = v30;
    v34 = v29[652];
    *buf = v29[651];
    *&buf[16] = v34;
    v99 = v29[653];
    v100 = v32;
    *(a1 + 15900) = 1;
    if (*buf || *(&v106 + 1))
    {
      result = CAHDec::addToPatcherList(a1, buf, 948 * a3 + 2680, 0, 0xFFFFFFFFLL, 8, 0xFFFFFF, 4);
      if (result)
      {
        return result;
      }
    }

    v27 = *(a2 + 4);
  }

  v92 = a3;
  v93 = a1;
  v91 = (v10 + 604 * v9);
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

  v54 = ((v91[v53] & 3) << 6) | 0x2DD00000;
  *(a2 + 140) = v54;
  v55 = v54 & 0xFFFFFFC7 | (8 * (*(v14 + 376) & 7));
  *(a2 + 140) = v55;
  v56 = *(v94 + 2224 * v95 + 4);
  if (*(v94 + 2224 * v95 + 4))
  {
    v56 = *(v14 + 377) & 7;
  }

  v57 = v56 | v55;
  *(a2 + 140) = v57;
  v58 = *(v14 + 24);
  if (v58 != 1)
  {
    goto LABEL_130;
  }

  v59 = v91[88];
  if (v59 != 2)
  {
    goto LABEL_60;
  }

  *(a2 + 140) = v57 & 0x2DD000C0 | 0x2D;
  v58 = *(v14 + 24);
  if (v58 != 1)
  {
LABEL_130:
    if (v58 || !v91[87])
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
      if (*(v14 + 378 + v61))
      {
        v64 = ((v61 & 0xF) << 9) | 0x2DE04000;
        *(v62 + 4 * v60) = v64;
        *(v62 + 4 * v60) = v64 | *(v14 + 394 + 2 * v61) & 0x1FF;
        *(v63 + 4 * v60) = 770703360;
        *(v63 + 4 * v60++) = *(v14 + 426 + 2 * v61) | 0x2DF00000;
      }

      if (*(v14 + 458 + v61))
      {
        v65 = 0;
        v66 = 1;
        do
        {
          v67 = v66;
          v68 = (((v61 & 0xF) << 9) | (v65 << 14)) + 769687552;
          *(v62 + 4 * v60) = v68;
          *(v62 + 4 * v60) = v68 | *(v14 + 474 + 4 * v61 + 2 * v65) & 0x1FF;
          *(v63 + 4 * v60) = 770703360;
          *(v63 + 4 * v60++) = *(v14 + 538 + 4 * v61 + 2 * v65) | 0x2DF00000;
          v65 = 1;
          v66 = 0;
        }

        while ((v67 & 1) != 0);
      }

      ++v61;
    }

    while (v61 <= *(v14 + 63));
    if (*(v14 + 24) == 1)
    {
      v69 = 0;
      do
      {
        if (*(v14 + 602 + v69))
        {
          v70 = ((v69 & 0xF) << 9) + 769679360;
          *(v62 + 4 * v60) = v70;
          *(v62 + 4 * v60) = v70 | *(v14 + 618 + 2 * v69) & 0x1FF;
          *(v63 + 4 * v60) = 770703360;
          *(v63 + 4 * v60++) = *(v14 + 650 + 2 * v69) | 0x2DF00000;
        }

        if (*(v14 + 682 + v69))
        {
          v71 = 0;
          v72 = 1;
          do
          {
            v73 = v72;
            v74 = (((v69 & 0xF) << 9) | (v71 << 14)) + 769695744;
            *(v62 + 4 * v60) = v74;
            *(v62 + 4 * v60) = v74 | *(v14 + 698 + 4 * v69 + 2 * v71) & 0x1FF;
            *(v63 + 4 * v60) = 770703360;
            *(v63 + 4 * v60++) = *(v14 + 762 + 4 * v69 + 2 * v71) | 0x2DF00000;
            v71 = 1;
            v72 = 0;
          }

          while ((v73 & 1) != 0);
        }

        ++v69;
      }

      while (v69 <= *(v14 + 64));
    }

    *(a2 + 136) = v60;
    goto LABEL_80;
  }

  v59 = v91[88];
LABEL_60:
  if (v59 == 1)
  {
    goto LABEL_64;
  }

LABEL_80:
  *(a2 + 912) = 0;
  *(a2 + 912) = (((v91[89] + *(v14 + 1425)) << 10) + 26624) & 0x1FC00 | 0x2D900000;
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
  if (v91[3])
  {
    v79 = 0;
    if ((v78 & 7) != 0)
    {
      *(v14 + 1436) = (v78 + 7) & 0xFFFFFFF8;
    }
  }

  else
  {
    v79 = *(v14 + 1436) & 7;
  }

  *(a2 + 924) = (v79 << 15) | 0x2D800000;
  v80 = *(v93 + 256);
  v81 = *(v80 + 626);
  v96 = 0;
  v97 = 0;
  if (!CAVDAvcDecoder::GetSDataMemInfo(v80, v92, &v97, &v96))
  {
    return 0xFFFFFFFFLL;
  }

  v82 = v97;
  if (!*v97 && !*(v97 + 152) && !*(v97 + 156))
  {
    goto LABEL_94;
  }

  v83 = v96;
  if (HIDWORD(v96) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "populateSliceRegisters";
    *&buf[12] = 1024;
    *&buf[14] = 1631;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v83 = v96;
  }

  result = CAHDec::addToPatcherList(v93, v82, 948 * v92 + 2692, v83, 0xFFFFFFFFLL, 0, -1, 4);
  if (!result)
  {
LABEL_94:
    v84 = *(v14 + 16) - (*(v14 + 1436) >> 3);
    *(a2 + 936) = v84;
    if (*(v80 + 590) == 1)
    {
      *(a2 + 944) = 0;
      if (*(v80 + 605))
      {
        if (v84 >= v81)
        {
          v84 = *(v80 + 1252);
        }

        if (v79)
        {
          v85 = v84 == 0;
        }

        else
        {
          v85 = 0;
        }

        if (v85)
        {
          v86 = 1;
        }

        else
        {
          v86 = v84;
        }

        v87 = 0x10000;
      }

      else
      {
        v89 = v81 >> 22;
        v90 = 0;
        if ((v81 & 0x200000) != 0)
        {
          if (v79 && !v89)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = "int CAHDecLotusAvc::populateSliceRegisters(AvcSliceRegisters *, int)";
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: expect off_to_prot_data to be set when slice header is not byte aligned\n", buf, 0xCu);
              v84 = *(a2 + 936);
              v90 = *(a2 + 944) & 0x3F0000;
            }

            else
            {
              v90 = 0;
            }

            v89 = 1;
          }
        }

        else if (v79)
        {
          ++v89;
        }

        if (v89 >= v84)
        {
          v89 = v84;
        }

        v86 = v90 | (v89 << 22);
        v87 = 0xFFFF;
      }

      result = 0;
      *(a2 + 944) = v86 | v81 & v87;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CAHDecLotusAvc::updateCommonRegisters(CAHDecLotusAvc *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

void CAHDecLotusAvc::copyScalingList(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
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
    v12 = &dword_27775DB2C;
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
    v31 = a6 + (dword_27775DB44[v26] << 6);
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

void CAHDecLotusAvc::AvcSeqScalingListFallBack(uint64_t a1, uint64_t a2)
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
            v4[9] = unk_27775DBAC;
            v10 = xmmword_27775DBBC;
            v11 = unk_27775DBCC;
          }

          else
          {
            v4[8] = avcDefaultInterScalingList8x8;
            v4[9] = unk_27775DB6C;
            v10 = xmmword_27775DB7C;
            v11 = unk_27775DB8C;
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

void CAHDecLotusAvc::AvcPicScalingListFallBack(uint64_t a1, uint64_t a2, uint64_t a3)
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
              *(a3 + v4 - 151) = unk_27775DBAC;
              v9 = xmmword_27775DBBC;
              v10 = unk_27775DBCC;
            }

            else
            {
              *v8 = avcDefaultInterScalingList8x8;
              *(a3 + v4 - 151) = unk_27775DB6C;
              v9 = xmmword_27775DB7C;
              v10 = unk_27775DB8C;
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

uint64_t CAHDecLotusAvc::populateSequenceRegisters(CAHDecLotusAvc *this)
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

    CAHDecLotusAvc::AvcSeqScalingListFallBack(this, v8);
    CAHDecLotusAvc::copyScalingList(v16, v3 + 12, *(this + 33) + 648, v8 + 22, v8 + 34, v8 + 130, v15);
  }

  return 0;
}

uint64_t CAHDecLotusAvc::populatePictureRegisters(CAHDecLotusAvc *this)
{
  v244 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(v2 + 3500);
  v4 = *(v2 + 3504);
  v5 = *(v2 + 3184);
  v6 = *(v2 + 3192);
  v224 = *(v2 + 3020);
  v226 = *(v2 + 2088);
  v227 = *(v2 + 3040);
  v229 = *(v2 + 2644);
  v7 = *(v2 + 8);
  v8 = *(v2 + 6904);
  v243[8] = *(v2 + 6888);
  v243[9] = v8;
  v9 = *(v2 + 6936);
  v243[10] = *(v2 + 6920);
  v243[11] = v9;
  v10 = *(v2 + 6840);
  v243[4] = *(v2 + 6824);
  v243[5] = v10;
  v11 = *(v2 + 6872);
  v243[6] = *(v2 + 6856);
  v243[7] = v11;
  v12 = *(v2 + 6776);
  v243[0] = *(v2 + 6760);
  v243[1] = v12;
  v13 = *(v2 + 6808);
  v243[2] = *(v2 + 6792);
  v243[3] = v13;
  v225 = *(v2 + 6952);
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
    goto LABEL_41;
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
  }

  else
  {
    v23 = *(v15 + 2672);
    v24 = v7;
    if (v22 == 12)
    {
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

      if (!v19)
      {
        goto LABEL_33;
      }

      goto LABEL_26;
    }

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
    goto LABEL_139;
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
    goto LABEL_139;
  }

LABEL_41:
  v31 = (v6 + 604 * v4);
  *(v17 + 52) = 766509056;
  if (**(*(this + 32) + 3200) == 5)
  {
    v32 = 766517248;
  }

  else
  {
    v32 = 766509056;
  }

  if (v16)
  {
    v33 = 688;
  }

  else
  {
    v33 = 672;
  }

  if (v229)
  {
    v34 = 4160;
  }

  else
  {
    v34 = 64;
  }

  v35 = v34 & 0xFFFFFFF0 | ((v229 == 1) << 10) | v33 & 0xFFFFFFF0 | (4 * (v19 & 3)) | v20 & 3 | v32;
  *(v17 + 52) = v35;
  v36 = *(this + 32);
  v37 = v35 | ((v36[2652] & 1) << 19);
  *(v17 + 52) = v37;
  v38 = v37 & 0xFFFBFFFF | ((v36[2653] & 1) << 18);
  *(v17 + 52) = v38;
  v39 = v38 & 0xFFFDFFFF | ((v36[2654] & 1) << 17);
  *(v17 + 52) = v39;
  *(v17 + 56) = 0x1000000;
  v40 = (16 * (*(v18 + 1558) & 0xFFF)) | 0xF;
  *(v17 + 60) = v40;
  LODWORD(v36) = v40 | (*(v18 + 1560) << 20) | 0xF0000;
  *(v17 + 64) = 0;
  *(v17 + 60) = v36;
  LODWORD(v36) = (*(v18 + 8) & 1) << 18;
  *(v17 + 68) = v36;
  LODWORD(v36) = v36 & 0xFFF7FFFF | ((v31[93] & 1) << 19);
  *(v17 + 68) = v36;
  LODWORD(v36) = v36 & 0xFFEFFFFF | ((v31[3] & 1) << 20);
  *(v17 + 68) = v36;
  *(v17 + 68) = v36 | ((**(*(this + 32) + 3200) != 5) << 21);
  v41 = *(v17 + 72) & 0xFFFFFC1F | (32 * (v31[91] & 0x1F));
  *(v17 + 72) = v41;
  *(v17 + 72) = v41 & 0xFFFFFFE0 | v31[601] & 0x1F;
  if (v31[96])
  {
    if (*(v18 + 4) == 3)
    {
      v42 = 12;
    }

    else
    {
      v42 = 8;
    }

    v43 = *(this + 33);
    CAHDecLotusAvc::AvcPicScalingListFallBack(v14, v18, v31);
    CAHDecLotusAvc::copyScalingList(v44, (v17 + 76), v43 + 1132, (v31 + 109), (v31 + 121), (v31 + 217), v42);
    v39 = *(v17 + 52);
  }

  if ((~v39 & 0xC0000) != 0)
  {
    *(v17 + 80) = *(this + 3978);
    v49 = *(this + 3979);
  }

  else
  {
    v45 = *(this + 32);
    v46 = v45[664];
    if (!v46 || !v45[665])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      v131 = v45[665];
      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = "populatePictureRegisters";
      WORD2(buf[1]) = 1024;
      *(&buf[1] + 6) = v46;
      WORD1(buf[2]) = 1024;
      HIDWORD(buf[2]) = v131;
      v29 = MEMORY[0x277D86220];
      v30 = "AppleAVD: %s(): invalid stat crop width/height %d/%d";
LABEL_139:
      v132 = buf;
      v133 = 24;
      goto LABEL_140;
    }

    v47 = v45[666];
    *(v17 + 80) = v47;
    *(v17 + 80) = v47 | (v45[667] << 16);
    v48 = v45[666] + v45[664] - 1;
    *(v17 + 84) = v48;
    v49 = (v48 | ((v45[665] + *(v45 + 1334)) << 16)) - 0x10000;
  }

  *(v17 + 84) = v49;
  *(v17 + 88) = 3145786;
  v50 = this + 9008;
  for (i = 92; i != 120; i += 4)
  {
    *(*(this + 33) + i) = 0;
    v52 = *(this + 33);
    v53 = *(v52 + i);
    *(v52 + i) = 0;
    *(*(this + 33) + i) ^= 0xFFFFFFu;
    v54 = *(this + 33);
    v55 = *(v54 + i);
    *(v54 + i) = v53;
    if (*v50 || *(v50 + 38) || *(v50 + 39))
    {
      result = CAHDec::addToPatcherList(this, v50, i, 0, 0xFFFFFFFFLL, 8, v55, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + i + 28) = 0;
    *(*(this + 33) + i + 28) = *(*(this + 33) + i + 28) & 0x800001FF | (((*(this + 3972) >> 9) & 0x3FFFFF) << 9);
    v50 += 176;
  }

  *(*(this + 33) + 148) = 0;
  *(*(this + 33) + 152) = 0;
  if ((*(v17 + 54) & 8) == 0 || (v57 = *(this + 33), v58 = *(*(this + 32) + 2680), v240 = 0u, v241 = 0u, v238 = 0u, v239 = 0u, v236 = 0u, v237 = 0u, v234 = 0u, v235 = 0u, v233 = 0u, memset(buf, 0, sizeof(buf)), v59 = *(v57 + 16), buf[0] = v58, v60 = *(v57 + 152), *(v57 + 152) = 0, *(*(this + 33) + 152) ^= 0xFFFFFFu, v61 = *(this + 33), v62 = *(v61 + 152), *(v61 + 152) = v60, !v58) && !*(&v240 + 1) || (result = CAHDec::addToPatcherList(this, buf, 152, (v59 & 0xF) << 9, 0xFFFFFFFFLL, 8, v62, 4), !result))
  {
    if ((*(*(this + 33) + 156) = 0, v63 = *(this + 33), v64 = *(v63 + 156), *(v63 + 156) = 0, *(*(this + 33) + 156) ^= 0xFFFFFFu, v65 = *(this + 33), v66 = *(v65 + 156), *(v65 + 156) = v64, !*(this + 1830)) && !*(this + 3698) && !*(this + 3699) || (result = CAHDec::addToPatcherList(this, this + 1830, 156, 0, 0xFFFFFFFFLL, 8, v66, 4), !result))
    {
      if ((*(*(this + 33) + 160) = 0, v67 = *(this + 33), v68 = *(v67 + 160), *(v67 + 160) = 0, *(*(this + 33) + 160) ^= 0xFFFFFFu, v69 = *(this + 33), v70 = *(v69 + 160), *(v69 + 160) = v68, !*(this + 1852)) && !*(this + 3742) && !*(this + 3743) || (result = CAHDec::addToPatcherList(this, this + 1852, 160, 0, 0xFFFFFFFFLL, 8, v70, 4), !result))
      {
        if ((*(*(this + 33) + 164) = 0, v71 = *(this + 33), v72 = *(v71 + 164), *(v71 + 164) = 0, *(*(this + 33) + 164) ^= 0xFFFFFFu, v73 = *(this + 33), v74 = *(v73 + 164), *(v73 + 164) = v72, !*(this + 1874)) && !*(this + 3786) && !*(this + 3787) || (result = CAHDec::addToPatcherList(this, this + 1874, 164, 0, 0xFFFFFFFFLL, 8, v74, 4), !result))
        {
          if ((*(*(this + 33) + 168) = 0, v75 = *(this + 33), v76 = *(v75 + 168), *(v75 + 168) = 0, *(*(this + 33) + 168) ^= 0xFFFFFFu, v77 = *(this + 33), v78 = *(v77 + 168), *(v77 + 168) = v76, !*(this + 1896)) && !*(this + 3830) && !*(this + 3831) || (result = CAHDec::addToPatcherList(this, this + 1896, 168, 0, 0xFFFFFFFFLL, 8, v78, 4), !result))
          {
            if ((*(*(this + 33) + 172) = 0, v79 = *(this + 33), v80 = *(v79 + 172), *(v79 + 172) = 0, *(*(this + 33) + 172) ^= 0xFFFFFFu, v81 = *(this + 33), v82 = *(v81 + 172), *(v81 + 172) = v80, !*(this + 1918)) && !*(this + 3874) && !*(this + 3875) || (result = CAHDec::addToPatcherList(this, this + 1918, 172, 0, 0xFFFFFFFFLL, 8, v82, 4), !result))
            {
              if ((*(*(this + 33) + 176) = 0, v83 = *(this + 33), v84 = *(v83 + 176), *(v83 + 176) = 0, *(*(this + 33) + 176) ^= 0xFFFFFFu, v85 = *(this + 33), v86 = *(v85 + 176), *(v85 + 176) = v84, !*(this + 1940)) && !*(this + 3918) && !*(this + 3919) || (result = CAHDec::addToPatcherList(this, this + 1940, 176, 0, 0xFFFFFFFFLL, 8, v86, 4), !result))
              {
                if ((*(*(this + 33) + 180) = 0, *(*(this + 33) + 184) = 0, v87 = *(this + 33), v88 = *(v87 + 184), *(v87 + 184) = 0, *(*(this + 33) + 184) ^= 0xFFFFFFu, v89 = *(this + 33), v90 = *(v89 + 184), *(v89 + 184) = v88, !*(this + 1280)) && !*(this + 2598) && !*(this + 2599) || (result = CAHDec::addToPatcherList(this, this + 1280, 184, 0, 0xFFFFFFFFLL, 8, v90, 4), !result))
                {
                  if ((*(*(this + 33) + 188) = 0, v91 = *(this + 33), v92 = *(v91 + 188), *(v91 + 188) = 0, *(*(this + 33) + 188) ^= 0xFFFFFFu, v93 = *(this + 33), v94 = *(v93 + 188), *(v93 + 188) = v92, v95 = (this + 176 * v227 + 10416), !*v95) && !*(this + 44 * v227 + 2642) && !*(this + 44 * v227 + 2643) || (result = CAHDec::addToPatcherList(this, v95, 188, 0, 0xFFFFFFFFLL, 8, v94, 4), !result))
                  {
                    if ((*(*(this + 33) + 192) = 0, v96 = *(this + 33), v97 = *(v96 + 192), *(v96 + 192) = 0, *(*(this + 33) + 192) ^= 0x1FFFFFFu, v98 = *(this + 33), v99 = *(v98 + 192), *(v98 + 192) = v97, v100 = this + 176 * v227 + 560, !*v100) && !*(v100 + 38) && !*(v100 + 39) || (result = CAHDec::addToPatcherList(this, v100, 192, 0, 0xFFFFFFFFLL, 7, v99, 4), !result))
                    {
                      if ((*(*(this + 33) + 196) = 0, v101 = *(this + 33), v102 = *(v101 + 196), *(v101 + 196) = 0, *(*(this + 33) + 196) ^= 0x1FFFFFFu, v103 = *(this + 33), v104 = *(v103 + 196), *(v103 + 196) = v102, v105 = (v226 + 8), !*(v226 + 8)) && !*(v226 + 160) && !*(v226 + 164) || (result = CAHDec::addToPatcherList(this, (v226 + 8), 196, *(v226 + 60), 0xFFFFFFFFLL, 7, v104, 4), !result))
                      {
                        if ((*(*(this + 33) + 200) = 0, v106 = *(this + 33), v107 = *(v106 + 200), *(v106 + 200) = 0, *(*(this + 33) + 200) ^= 0x1FFFFFFu, v108 = *(this + 33), v109 = *(v108 + 200), *(v108 + 200) = v107, v110 = this + 176 * v227 + 4784, !*v110) && !*(v110 + 38) && !*(v110 + 39) || (result = CAHDec::addToPatcherList(this, v110, 200, 0, 0xFFFFFFFFLL, 7, v109, 4), !result))
                        {
                          if ((*(*(this + 33) + 204) = 0, v111 = *(this + 33), v112 = *(v111 + 204), *(v111 + 204) = 0, *(*(this + 33) + 204) ^= 0x1FFFFFFu, v113 = *(this + 33), v114 = *(v113 + 204), *(v113 + 204) = v112, !*v105) && !*(v226 + 160) && !*(v226 + 164) || (result = CAHDec::addToPatcherList(this, v105, 204, *(v226 + 64), 0xFFFFFFFFLL, 7, v114, 4), !result))
                          {
                            if (*(*(this + 32) + 2648) != 1 || ((v115 = *(this + 33), v116 = *(v115 + 196), *(v115 + 196) = 0, *(*(this + 33) + 196) ^= 0x1FFFFFFu, v117 = *(this + 33), v118 = *(v117 + 196), *(v117 + 196) = v116, !*v105) && !*(v226 + 160) && !*(v226 + 164) || (result = CAHDec::addToPatcherList(this, v105, 196, *(v226 + 60), 0xFFFFFFFFLL, 7, v118, 4), !result)) && ((v119 = *(this + 33), v120 = *(v119 + 204), *(v119 + 204) = 0, *(*(this + 33) + 204) ^= 0x1FFFFFFu, v121 = *(this + 33), v122 = *(v121 + 204), *(v121 + 204) = v120, !*v105) && !*(v226 + 160) && !*(v226 + 164) || (result = CAHDec::addToPatcherList(this, v105, 204, *(v226 + 64), 0xFFFFFFFFLL, 7, v122, 4), !result)) && ((v123 = *(this + 33), v124 = *(v123 + 192), *(v123 + 192) = 0, *(*(this + 33) + 192) ^= 0x1FFFFFFu, v125 = *(this + 33), v126 = *(v125 + 192), *(v125 + 192) = v124, !*v105) && !*(v226 + 160) && !*(v226 + 164) || (result = CAHDec::addToPatcherList(this, v105, 192, *(v226 + 72), 0xFFFFFFFFLL, 7, v126, 4), !result)) && ((v127 = *(this + 33), v128 = *(v127 + 200), *(v127 + 200) = 0, *(*(this + 33) + 200) ^= 0x1FFFFFFu, v129 = *(this + 33), v130 = *(v129 + 200), *(v129 + 200) = v128, !*v105) && !*(v226 + 160) && !*(v226 + 164) || (result = CAHDec::addToPatcherList(this, v105, 200, *(v226 + 76), 0xFFFFFFFFLL, 7, v130, 4), !result)))
                            {
                              if (*(v17 + 52) & 0x2000 | v225)
                              {
                                *(this + v227 + 116) = 0;
                                *(*(this + 33) + 208) = 0;
                                if (v225)
                                {
                                  v134 = 0;
                                  if (v16)
                                  {
                                    v135 = 0x2000000;
                                  }

                                  else
                                  {
                                    v135 = 0;
                                  }

                                  v228 = v135;
                                  do
                                  {
                                    v136 = *(v243 + v134);
                                    v137 = *(v136 + 32);
                                    *(*(this + 33) + 4 * v134 + 208) = 0;
                                    *(*(this + 33) + 4 * v134 + 208) = *(*(this + 33) + 4 * v134 + 208) & 0xFFFFFFF | ((v225 << 28) - 0x10000000);
                                    *(*(this + 33) + 4 * v134 + 208) &= 0xF3FFFFFF;
                                    *(*(this + 33) + 4 * v134 + 208) = *(*(this + 33) + 4 * v134 + 208) & 0xFDFFFFFF | v228;
                                    *(*(this + 33) + 4 * v134 + 208) |= 0x1000000u;
                                    v138 = v224 - *(v136 + 12);
                                    v139 = v138 & 0x1FFFF;
                                    if (v138 < -32768)
                                    {
                                      v139 = 98304;
                                    }

                                    if (v138 < 0x8000)
                                    {
                                      v140 = v139;
                                    }

                                    else
                                    {
                                      v140 = 0x7FFF;
                                    }

                                    *(*(this + 33) + 4 * v134 + 208) = *(*(this + 33) + 4 * v134 + 208) & 0xFFFE0000 | v140;
                                    *(*(this + 33) + 4 * v134 + 208) = *(*(this + 33) + 4 * v134 + 208) & 0xFFFDFFFF | ((*(v136 + 1) & 1) << 17);
                                    v141 = *(this + 32);
                                    if (*(v136 + 28) == 1)
                                    {
                                      v241 = 0u;
                                      v242 = 0u;
                                      v239 = 0u;
                                      v240 = 0u;
                                      v237 = 0u;
                                      v238 = 0u;
                                      v235 = 0u;
                                      v236 = 0u;
                                      v233 = 0u;
                                      v234 = 0u;
                                      memset(buf, 0, sizeof(buf));
                                      DPB = AVC_RLM::getDPB(*(v141 + 2992), buf);
                                      if (DPB < 1)
                                      {
                                        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                        {
                                          return 0xFFFFFFFFLL;
                                        }

                                        v230 = 136315138;
                                        v231 = "populatePictureRegisters";
                                        v29 = MEMORY[0x277D86220];
                                        v30 = "AppleAVD: ERROR: %s: No ref pics found!\n";
                                      }

                                      else
                                      {
                                        v143 = DPB;
                                        while (v143 >= 1)
                                        {
                                          v136 = buf[--v143];
                                          if (!*(v136 + 28))
                                          {
                                            v137 = *(v136 + 32);
                                            v141 = *(this + 32);
                                            *(v141 + 2702) = 1;
                                            goto LABEL_159;
                                          }
                                        }

                                        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                        {
                                          return 0xFFFFFFFFLL;
                                        }

                                        v230 = 136315138;
                                        v231 = "populatePictureRegisters";
                                        v29 = MEMORY[0x277D86220];
                                        v30 = "AppleAVD: ERROR: %s: No non-existing ref frames found!\n";
                                      }

                                      v132 = &v230;
                                      v133 = 12;
                                      goto LABEL_140;
                                    }

LABEL_159:
                                    if ((*(*v141 + 184))(v141))
                                    {
                                      v144 = *(this + 32);
                                      if (*(v144 + 2756))
                                      {
                                        buf[0] = 0;
                                        if ((CAVDAvcDecoder::decodeGetRenderTargetRef(v144, v137, *(v136 + 56), *(v136 + 64), buf) & 1) == 0)
                                        {
                                          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                          {
                                            LOWORD(v230) = 0;
                                            v29 = MEMORY[0x277D86220];
                                            v30 = "AppleAVD: decodeGetRenderTargetRef RETURNED ERROR\n";
                                            v132 = &v230;
                                            v133 = 2;
LABEL_140:
                                            _os_log_impl(&dword_277606000, v29, OS_LOG_TYPE_DEFAULT, v30, v132, v133);
                                          }

                                          return 0xFFFFFFFFLL;
                                        }

                                        *(v136 + 40) = buf[0] + 8;
                                      }
                                    }

                                    *(*(this + 33) + 4 * v134 + 272) = 0;
                                    v145 = 4 * v134;
                                    v146 = *(this + 33) + 4 * v134;
                                    v147 = *(v146 + 272);
                                    *(v146 + 272) = 0;
                                    *(*(this + 33) + 4 * v134 + 272) ^= 0x1FFFFFFu;
                                    v148 = *(this + 33) + 4 * v134;
                                    v149 = *(v148 + 272);
                                    *(v148 + 272) = v147;
                                    v150 = this + 176 * v137 + 560;
                                    if (*v150 || *(v150 + 38) || *(v150 + 39))
                                    {
                                      result = CAHDec::addToPatcherList(this, v150, v145 + 272, 0, 0xFFFFFFFFLL, 7, v149, 4);
                                      if (result)
                                      {
                                        return result;
                                      }
                                    }

                                    *(*(this + 33) + 4 * v134 + 336) = 0;
                                    v151 = *(this + 33) + 4 * v134;
                                    v152 = *(v151 + 336);
                                    *(v151 + 336) = 0;
                                    *(*(this + 33) + 4 * v134 + 336) ^= 0x1FFFFFFu;
                                    v153 = *(this + 33) + 4 * v134;
                                    v154 = *(v153 + 336);
                                    *(v153 + 336) = v152;
                                    v155 = *(v136 + 40);
                                    if (*v155 || *(v155 + 152) || *(v155 + 156))
                                    {
                                      result = CAHDec::addToPatcherList(this, v155, v145 + 336, *(v155 + 52), 0xFFFFFFFFLL, 7, v154, 4);
                                      if (result)
                                      {
                                        return result;
                                      }
                                    }

                                    *(*(this + 33) + 4 * v134 + 400) = 0;
                                    v156 = *(this + 33) + 4 * v134;
                                    v157 = *(v156 + 400);
                                    *(v156 + 400) = 0;
                                    *(*(this + 33) + 4 * v134 + 400) ^= 0x1FFFFFFu;
                                    v158 = *(this + 33) + 4 * v134;
                                    v159 = *(v158 + 400);
                                    *(v158 + 400) = v157;
                                    v160 = this + 176 * v137 + 4784;
                                    if (*v160 || *(v160 + 38) || *(v160 + 39))
                                    {
                                      result = CAHDec::addToPatcherList(this, v160, v145 + 400, 0, 0xFFFFFFFFLL, 7, v159, 4);
                                      if (result)
                                      {
                                        return result;
                                      }
                                    }

                                    *(*(this + 33) + 4 * v134 + 464) = 0;
                                    v161 = *(this + 33) + 4 * v134;
                                    v162 = *(v161 + 464);
                                    *(v161 + 464) = 0;
                                    *(*(this + 33) + 4 * v134 + 464) ^= 0x1FFFFFFu;
                                    v163 = *(this + 33) + 4 * v134;
                                    v164 = *(v163 + 464);
                                    *(v163 + 464) = v162;
                                    v165 = *(v136 + 40);
                                    if (*v165 || *(v165 + 152) || *(v165 + 156))
                                    {
                                      result = CAHDec::addToPatcherList(this, v165, v145 + 464, *(v165 + 56), 0xFFFFFFFFLL, 7, v164, 4);
                                      if (result)
                                      {
                                        return result;
                                      }
                                    }

                                    if (*(*(this + 32) + 2648) == 1)
                                    {
                                      v166 = *(this + 33) + 4 * v134;
                                      v167 = *(v166 + 336);
                                      *(v166 + 336) = 0;
                                      *(*(this + 33) + 4 * v134 + 336) ^= 0x1FFFFFFu;
                                      v168 = *(this + 33) + 4 * v134;
                                      v169 = *(v168 + 336);
                                      *(v168 + 336) = v167;
                                      v170 = *(v136 + 40);
                                      if (*v170 || *(v170 + 152) || *(v170 + 156))
                                      {
                                        result = CAHDec::addToPatcherList(this, v170, v145 + 336, *(v170 + 52), 0xFFFFFFFFLL, 7, v169, 4);
                                        if (result)
                                        {
                                          return result;
                                        }
                                      }

                                      v171 = *(this + 33) + 4 * v134;
                                      v172 = *(v171 + 464);
                                      *(v171 + 464) = 0;
                                      *(*(this + 33) + 4 * v134 + 464) ^= 0x1FFFFFFu;
                                      v173 = *(this + 33) + 4 * v134;
                                      v174 = *(v173 + 464);
                                      *(v173 + 464) = v172;
                                      v175 = *(v136 + 40);
                                      if (*v175 || *(v175 + 152) || *(v175 + 156))
                                      {
                                        result = CAHDec::addToPatcherList(this, v175, v145 + 464, *(v175 + 56), 0xFFFFFFFFLL, 7, v174, 4);
                                        if (result)
                                        {
                                          return result;
                                        }
                                      }

                                      v176 = *(this + 33) + 4 * v134;
                                      v177 = *(v176 + 272);
                                      *(v176 + 272) = 0;
                                      *(*(this + 33) + 4 * v134 + 272) ^= 0x1FFFFFFu;
                                      v178 = *(this + 33) + 4 * v134;
                                      v179 = *(v178 + 272);
                                      *(v178 + 272) = v177;
                                      v180 = *(v136 + 40);
                                      if (*v180 || *(v180 + 152) || *(v180 + 156))
                                      {
                                        result = CAHDec::addToPatcherList(this, v180, v145 + 272, *(v180 + 64), 0xFFFFFFFFLL, 7, v179, 4);
                                        if (result)
                                        {
                                          return result;
                                        }
                                      }

                                      v181 = *(this + 33) + 4 * v134;
                                      v182 = *(v181 + 400);
                                      *(v181 + 400) = 0;
                                      *(*(this + 33) + 4 * v134 + 400) ^= 0x1FFFFFFu;
                                      v183 = *(this + 33) + 4 * v134;
                                      v184 = *(v183 + 400);
                                      *(v183 + 400) = v182;
                                      v185 = *(v136 + 40);
                                      if (*v185 || *(v185 + 152) || *(v185 + 156))
                                      {
                                        result = CAHDec::addToPatcherList(this, v185, v145 + 400, *(v185 + 68), 0xFFFFFFFFLL, 7, v184, 4);
                                        if (result)
                                        {
                                          return result;
                                        }
                                      }
                                    }

                                    ++v134;
                                  }

                                  while (v134 != v225);
                                }
                              }

                              else
                              {
                                *(v17 + 52) |= 0x2000u;
                                *(this + v227 + 116) = 1;
                                *(*(this + 33) + 208) = 0;
                              }

                              *(*(this + 33) + 528) = 0;
                              *(*(this + 33) + 532) = 0;
                              *(*(this + 33) + 536) = 0;
                              *(*(this + 33) + 540) = 0;
                              if (v229)
                              {
                                v186 = *(this + 32);
                                v187 = *(v186 + 2892);
                                if (*(v186 + 2892))
                                {
                                  v188 = *(v186 + 2904);
                                  v187 = *(v186 + 2908);
                                }

                                else
                                {
                                  v188 = 0;
                                }

                                v189 = *(v186 + 3544);
                                v190 = *(v189 + 52);
                                v191 = v190 + v188;
                                if (__CFADD__(v190, v188))
                                {
                                  v192 = 1;
                                }

                                else
                                {
                                  v193 = *(v189 + 56);
                                  v194 = v193 + v187;
                                  if (!__CFADD__(v193, v187))
                                  {
                                    v195 = *(this + 33);
                                    v196 = *(v195 + 528);
                                    *(v195 + 528) = 0;
                                    *(*(this + 33) + 528) ^= 0xFFFFFFu;
                                    v197 = *(this + 33);
                                    v198 = *(v197 + 528);
                                    *(v197 + 528) = v196;
                                    v199 = *(*(this + 32) + 3544);
                                    if (*v199 || *(v199 + 152) || *(v199 + 156))
                                    {
                                      result = CAHDec::addToPatcherList(this, v199, 528, v191, 0xFFFFFFFFLL, 8, v198, 4);
                                      if (result)
                                      {
                                        return result;
                                      }
                                    }

                                    v200 = *(this + 33);
                                    v201 = *(v200 + 532);
                                    *(v200 + 532) = 0;
                                    *(*(this + 33) + 532) ^= 0xFFFFFFu;
                                    v202 = *(this + 33);
                                    v203 = *(v202 + 532);
                                    *(v202 + 532) = v201;
                                    v204 = *(*(this + 32) + 3544);
                                    if (*v204 || *(v204 + 152) || *(v204 + 156))
                                    {
                                      result = CAHDec::addToPatcherList(this, v204, 532, v194, 0xFFFFFFFFLL, 8, v203, 4);
                                      if (result)
                                      {
                                        return result;
                                      }
                                    }

                                    v205 = *(this + 33);
                                    v206 = *(v205 + 536);
                                    *(v205 + 536) = 0;
                                    *(*(this + 33) + 536) ^= 0xC0000000;
                                    v207 = *(this + 33);
                                    v208 = *(v207 + 536);
                                    *(v207 + 536) = v206;
                                    v209 = *(*(this + 32) + 3544);
                                    if (*v209 || *(v209 + 152) || *(v209 + 156))
                                    {
                                      result = CAHDec::addToPatcherList(this, v209, 536, v191, 192, 6, v208, 4);
                                      if (result)
                                      {
                                        return result;
                                      }
                                    }

                                    v210 = *(this + 33);
                                    v211 = *(v210 + 540);
                                    *(v210 + 540) = 0;
                                    *(*(this + 33) + 540) ^= 0xC0000000;
                                    v212 = *(this + 33);
                                    v213 = *(v212 + 540);
                                    *(v212 + 540) = v211;
                                    v214 = *(*(this + 32) + 3544);
                                    if (*v214 || *(v214 + 152) || *(v214 + 156))
                                    {
                                      result = CAHDec::addToPatcherList(this, v214, 540, v194, 192, 6, v213, 4);
                                      if (result)
                                      {
                                        return result;
                                      }
                                    }

                                    if (v7)
                                    {
                                      *(*(this + 33) + 536) = *(*(this + 33) + 536) & 0xFFFFC003 | (4 * ((*(*(*(this + 32) + 3544) + 76) >> 6) & 0xFFF));
                                      v215 = (*(*(this + 32) + 3544) + 80);
                                    }

                                    else
                                    {
                                      if (CAHDecCloverAvc::getSWRStride(this, *(v17 + 84) - *(v17 + 80) + 1, *(v18 + 6), *(v18 + 7), *(v18 + 2212)))
                                      {
                                        return 0xFFFFFFFFLL;
                                      }

                                      *(*(this + 33) + 536) = *(*(this + 33) + 536) & 0xFFFFC003 | (4 * ((*(this + 3976) >> 6) & 0xFFF));
                                      v215 = (this + 15908);
                                    }

                                    *(*(this + 33) + 540) = *(*(this + 33) + 540) & 0xFFFF8003 | (4 * ((*v215 >> 6) & 0x1FFF));
                                    goto LABEL_237;
                                  }

                                  v192 = 2;
                                }

                                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                {
                                  LODWORD(buf[0]) = 136315394;
                                  *(buf + 4) = "populatePictureRegisters";
                                  WORD2(buf[1]) = 1024;
                                  *(&buf[1] + 6) = v192;
                                  v29 = MEMORY[0x277D86220];
                                  v30 = "AppleAVD: %s(): failKind = %d";
                                  v132 = buf;
                                  v133 = 18;
                                  goto LABEL_140;
                                }

                                return 0xFFFFFFFFLL;
                              }

LABEL_237:
                              v216 = *(this + 32);
                              if (*(v216 + 2360) != 1)
                              {
                                return 0;
                              }

                              v217 = *(this + 33);
                              *(v217 + 640) = *(v217 + 640) & 0xFFFFFFFE | *(v216 + 2508) & 1;
                              if (*(v216 + 2508))
                              {
                                *(v217 + 1616) = 0x10000000;
                                *(v217 + 1620) = *(v216 + 2368);
                                *(v217 + 1632) = 0;
                                *(v217 + 1624) = 0;
                                *(v217 + 1636) = *(v216 + 2372);
                                v218 = *(v216 + 2404);
                                *(v217 + 1652) = *(v216 + 2388);
                                *(v217 + 1668) = v218;
                              }

                              *(*(this + 33) + 640) = *(*(this + 33) + 640) & 0xFFFFFFFD | (2 * (*(v216 + 2512) & 1));
                              if (*(v216 + 2512))
                              {
                                *(v217 + 1684) = 0;
                                v219 = *(v216 + 2424);
                                *(v217 + 1684) = (*(v216 + 2424) & 1) << 22;
                                v220 = ((*(v216 + 2420) & 1) << 23) | ((v219 & 1) << 22) | 0x20000000;
                                *(v217 + 1684) = v220;
                                if (!*(v216 + 2364))
                                {
                                  ++v220;
                                }

                                *(v217 + 1684) = v220;
                                v221 = *(v216 + 2428);
                                v222 = *(v216 + 2460);
                                *(v217 + 1704) = *(v216 + 2444);
                                *(v217 + 1720) = v222;
                                *(v217 + 1688) = v221;
                              }

                              *(*(this + 33) + 640) = *(*(this + 33) + 640) & 0xFFFFFFFB | (4 * (*(v216 + 2516) & 1));
                              *(*(this + 33) + 640) = *(*(this + 33) + 640) & 0xFFFFFFF7 | (8 * (*(v216 + 2520) & 1));
                              *(*(this + 33) + 640) = *(*(this + 33) + 640) & 0xFFFFFFEF | (16 * (*(v216 + 2524) & 1));
                              *(v217 + 1740) = 0;
                              v223 = *(v216 + 2476) == 2 ? 805306368 : 813694976;
                              *(v217 + 1740) = v223;
                              memcpy((v217 + 1744), (v216 + 2480), 4 * *(v216 + 2476));
                              if (*(v216 + 2516))
                              {
                                result = 0;
                                *(v216 + 2516) = 0;
                              }

                              else
                              {
                                return 0;
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

uint64_t CAHDecLotusAvc::getTileIdxAbove(CAHDecLotusAvc *this, unsigned int a2)
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

uint64_t CAHDecLotusAvc::populateAvdWork(CAHDecLotusAvc *this, unsigned int a2)
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
    v9 = (v2 + 2696);
    v10 = (v4 + 20);
    v21 = a2;
    v11 = 40 * a2;
    v12 = v2 + 948 * v5;
    while (1)
    {
      v13 = v12 + v7;
      *(v13 + 1764) = v8;
      *(v13 + 1766) = 0;
      *(v13 + 1768) = v8;
      *(v12 + v7 + 1770) = 0;
      v14 = *v9;
      if (!CAVDAvcDecoder::GetSDataMemInfo(*(this + 32), v8, &v23, &v22))
      {
        return 0xFFFFFFFFLL;
      }

      v15 = *v10;
      *(v13 + 1788) = *v10;
      *(v13 + 1792) = v15;
      *(v13 + 1796) = 0;
      if (v7)
      {
        v16 = 0;
      }

      else
      {
        v16 = 15;
      }

      *(v13 + 1774) = v16;
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
            v27 = 1772;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v18 = v22;
          }
        }

        result = CAHDec::addToPatcherList(this, v17, v7 + 570580, v18, 0xFFFFFFFFLL, 0, -1, 4);
        if (result)
        {
          return result;
        }
      }

      v9 += 237;
      *(v12 + v7 + 1784) = v14;
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
    *(v2 + 32) = 570560;
  }

  return result;
}

uint64_t CAHDecLotusAvc::allocWorkBuf_SPS(CAHDecLotusAvc *this, _BYTE *a2)
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
        v32 = 2010;
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
    v32 = 2011;
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
    v32 = 2017;
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

uint64_t CAHDecLotusAvc::allocWorkBuf_PPS(CAHDecLotusAvc *this, _BYTE *a2, void *a3, void *a4)
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
    v18 = 2134;
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
      v18 = 2137;
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
      v18 = 2138;
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
    v18 = 2139;
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
    v18 = 2142;
    v19 = 2080;
    v20 = "MvAboveInfo";
    v12 = MEMORY[0x277D86220];
    goto LABEL_19;
  }

  return result;
}

uint64_t CAHDecLotusAvc::freeWorkBuf_SPS(CAHDecLotusAvc *this)
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

uint64_t *CAHDecLotusAvc::freeWorkBuf_PPS(uint64_t *this, void *a2)
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

uint64_t CAHDecLotusAvc::setVPInstrFifo(uint64_t this, int a2)
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

void AVDRegister()
{
  v35 = *MEMORY[0x277D85DE8];
  v30 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v1 = Mutable;
    v2 = AppleAVDCheckPlatform(&v30);
    if (v2)
    {
      v3 = v2;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v32 = "AVDRegister";
        v33 = 1024;
        LODWORD(v34) = v3;
        v4 = MEMORY[0x277D86220];
        v5 = "AppleAVD: ERROR: %s() - AppleAVDCheckPlatform() returned error %d\n";
        v6 = 18;
LABEL_42:
        _os_log_impl(&dword_277606000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, v6);
        goto LABEL_43;
      }

      goto LABEL_43;
    }

    v7 = *MEMORY[0x277CBED28];
    CFDictionarySetValue(v1, *MEMORY[0x277CE2B70], *MEMORY[0x277CBED28]);
    CFDictionarySetValue(v1, *MEMORY[0x277CE2B78], v7);
    v8 = registerDecoder(0x68766331u);
    v9 = registerDecoder(0x71687663u);
    v10 = registerDecoder(0x63687663u);
    v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v8 || v9 || v10)
    {
      if (!v11)
      {
        goto LABEL_15;
      }

      *buf = 136315394;
      v32 = "AVDRegister";
      v33 = 2048;
      v34 = v30;
      v12 = MEMORY[0x277D86220];
      v13 = "AppleAVD: ERROR: %s() - AppleAVD HEVC codec registration FAILED. CheckPlatform 0x%llx\n";
    }

    else
    {
      if (!v11)
      {
        goto LABEL_15;
      }

      *buf = 136315394;
      v32 = "AVDRegister";
      v33 = 2048;
      v34 = v30;
      v12 = MEMORY[0x277D86220];
      v13 = "AppleAVD: INFO: %s() - AppleAVD HEVC codec registered. CheckPlatform 0x%llx\n";
    }

    _os_log_impl(&dword_277606000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0x16u);
LABEL_15:
    if ((v30 & 2) == 0)
    {
      goto LABEL_26;
    }

    v14 = registerDecoder(0x61766331u);
    v15 = registerDecoder(0x64726D69u);
    v16 = registerDecoder(0x7A617663u);
    v17 = registerDecoder(0x63617663u);
    v18 = registerDecoder(0x71617663u);
    v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v14 || v15 || v16 || v17 || v18)
    {
      if (!v19)
      {
        goto LABEL_26;
      }

      *buf = 136315138;
      v32 = "AVDRegister";
      v20 = MEMORY[0x277D86220];
      v21 = "AppleAVD: ERROR: %s() - AppleAVD H264 codec registration FAILED\n";
    }

    else
    {
      if (!v19)
      {
        goto LABEL_26;
      }

      *buf = 136315138;
      v32 = "AVDRegister";
      v20 = MEMORY[0x277D86220];
      v21 = "AppleAVD: INFO: %s() - AppleAVD H264 codec registered\n";
    }

    _os_log_impl(&dword_277606000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
LABEL_26:
    if ((v30 & 4) == 0)
    {
      goto LABEL_34;
    }

    v22 = registerDecoder(0x76703039u);
    v23 = registerDecoder(0x71767039u);
    v24 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v22 || v23)
    {
      if (!v24)
      {
        goto LABEL_34;
      }

      *buf = 136315138;
      v32 = "AVDRegister";
      v25 = MEMORY[0x277D86220];
      v26 = "AppleAVD: ERROR: %s() - AppleAVD Leghorn codec registration FAILED\n";
    }

    else
    {
      if (!v24)
      {
        goto LABEL_34;
      }

      *buf = 136315138;
      v32 = "AVDRegister";
      v25 = MEMORY[0x277D86220];
      v26 = "AppleAVD: INFO: %s() - AppleAVD Leghorn codec registered\n";
    }

    _os_log_impl(&dword_277606000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);
LABEL_34:
    if ((v30 & 8) != 0)
    {
      v27 = registerDecoder(0x61763031u);
      v28 = registerDecoder(0x71617631u);
      v29 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v27 || v28)
      {
        if (!v29)
        {
          goto LABEL_43;
        }

        *buf = 136315138;
        v32 = "AVDRegister";
        v4 = MEMORY[0x277D86220];
        v5 = "AppleAVD: ERROR: %s() - AppleAVD Foghorn codec registration FAILED\n";
      }

      else
      {
        if (!v29)
        {
          goto LABEL_43;
        }

        *buf = 136315138;
        v32 = "AVDRegister";
        v4 = MEMORY[0x277D86220];
        v5 = "AppleAVD: INFO: %s() - AppleAVD Foghorn codec registered\n";
      }

      v6 = 12;
      goto LABEL_42;
    }

LABEL_43:
    CFRelease(v1);
    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v32 = "AVDRegister";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() - infoDict creation failed!\n", buf, 0xCu);
  }
}

BOOL registerDecoder(unsigned int a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = VTRegisterVideoDecoderWithInfo();
  if (v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136316418;
    v5 = "registerDecoder";
    v6 = 1024;
    v7 = HIBYTE(a1);
    v8 = 1024;
    v9 = BYTE2(a1);
    v10 = 1024;
    v11 = BYTE1(a1);
    v12 = 1024;
    v13 = a1;
    v14 = 1024;
    v15 = v2;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Registration for %c%c%c%c failed with status %d\n", &v4, 0x2Au);
  }

  return v2 != 0;
}

uint64_t DumpHevcStream(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  *(a1 + 8064) = 0;
  *(a1 + 8048) = 0u;
  *(a1 + 8032) = 0u;
  v14 = 0;
  setlocale(0, &unk_27777977E);
  time(&v14);
  v2 = localtime(&v14);
  strftime(__s, 0x14uLL, "%m%d%g_%H%M%S", v2);
  v13.tv_sec = 0;
  *&v13.tv_usec = 0;
  v12 = 0;
  gettimeofday(&v13, &v12);
  snprintf(__str, 5uLL, "_%03d", v13.tv_usec / 1000);
  strlen(__str);
  __strncat_chk();
  strcpy(v32, "-decOutput.265");
  qmemcpy(v11, "/var/mobile/Libr/com.apple.applepple.videocodecdary/Caches/com.a", sizeof(v11));
  strcpy(__filename, "/var/mobile/Library/Caches/com.apple.videocodecd/com.apple.appleavd/");
  strlen(__s);
  __strncat_chk();
  strlen(v32);
  __strncat_chk();
  strcpy(v29, "-decEncrOut.265");
  v30[1] = v11[3];
  v30[2] = v11[2];
  v31[0] = v11[1];
  strcpy(v31 + 13, "pleavd/");
  v30[0] = v11[0];
  strlen(__s);
  __strncat_chk();
  strlen(v29);
  __strncat_chk();
  strcpy(v24, "-decPropertyLog.txt");
  v25[1] = v11[3];
  v25[2] = v11[2];
  v26[0] = v11[1];
  strcpy(v26 + 13, "pleavd/");
  v25[0] = v11[0];
  strlen(__s);
  __strncat_chk();
  strlen(v24);
  __strncat_chk();
  strcpy(v28, "-preDRM.dat");
  v22[2] = v11[2];
  v23[0] = v11[1];
  strcpy(v23 + 13, "pleavd/");
  v22[0] = v11[0];
  v22[1] = v11[3];
  strlen(__s);
  __strncat_chk();
  strlen(v28);
  __strncat_chk();
  strcpy(v27, "-postDRM.dat");
  v20 = v11[2];
  v21[0] = v11[1];
  strcpy(v21 + 13, "pleavd/");
  *v18 = v11[0];
  v19 = v11[3];
  strlen(__s);
  __strncat_chk();
  strlen(v27);
  __strncat_chk();
  v3 = fopen(__filename, "wbx");
  *(a1 + 8032) = v3;
  if (!v3)
  {
    *(a1 + 8032) = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = __filename;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AVD hevc dump: could not open file %s\n", buf, 0xCu);
    }
  }

  v4 = fopen(v30, "wbx");
  *(a1 + 8040) = v4;
  if (!v4)
  {
    *(a1 + 8040) = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = v30;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AVD hevc dump: could not open file %s\n", buf, 0xCu);
    }
  }

  v5 = fopen(v25, "wbx");
  *(a1 + 8048) = v5;
  if (!v5)
  {
    *(a1 + 8048) = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = v25;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AVD hevc dump: could not open property log file %s\n", buf, 0xCu);
    }
  }

  v6 = fopen(v22, "wbx");
  *(a1 + 8056) = v6;
  if (!v6)
  {
    *(a1 + 8056) = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = v22;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AVD hevc dump: could not open pre DRM file %s\n", buf, 0xCu);
    }
  }

  v7 = fopen(v18, "wbx");
  *(a1 + 8064) = v7;
  if (!v7)
  {
    *(a1 + 8064) = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = v18;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AVD hevc dump: could not open post DRM file %s\n", buf, 0xCu);
    }
  }

  v8 = *(a1 + 8032);
  if (v8)
  {
    WriteNAL(v8, *(a1 + 5632), *(a1 + 5640) & 0xFFFFFF);
  }

  v9 = *(a1 + 8040);
  if (v9)
  {
    WriteNAL(v9, *(a1 + 5632), *(a1 + 5640) & 0xFFFFFF);
  }

  return 0;
}

uint64_t WriteNAL(FILE *__stream, uint64_t a2, unsigned int a3)
{
  v21 = *MEMORY[0x277D85DE8];
  __ptr = 0x1000000;
  if (a3 < 4)
  {
    return 0;
  }

  v7 = 0;
  v8 = 1;
  v9 = MEMORY[0x277D86220];
  while (1)
  {
    v10 = (a2 + v7);
    v12 = *v10;
    v11 = (v10 + 1);
    v13 = bswap32(v12);
    v7 += v13 + 4;
    if (v7 > a3)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 318;
      }

      *buf = 0;
      v17 = MEMORY[0x277D86220];
      goto LABEL_23;
    }

    if (v13 > a3)
    {
      break;
    }

    v14 = (*v11 >> 1) & 0x3F;
    if (v14 == 34 || v14 == 33 || v14 == 32)
    {
      fwrite(&__ptr, 1uLL, 4uLL, __stream);
      fwrite(v11, 1uLL, v13, __stream);
    }

    else if (v14 > 0x17)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v20 = v14;
        _os_log_impl(&dword_277606000, v9, OS_LOG_TYPE_DEFAULT, "AppleAVD: Bad NAL type %d. Skipping.\n", buf, 8u);
      }
    }

    else
    {
      if (v8)
      {
        p_ptr = &__ptr;
        v16 = 4;
      }

      else
      {
        p_ptr = (&__ptr + 1);
        v16 = 3;
      }

      fwrite(p_ptr, 1uLL, v16, __stream);
      fwrite(v11, 1uLL, v13, __stream);
      v8 = 0;
    }

    if (v7 + 4 > a3)
    {
      return 0;
    }
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    return 318;
  }

  *buf = 0;
  v17 = MEMORY[0x277D86220];
LABEL_23:
  _os_log_impl(&dword_277606000, v17, OS_LOG_TYPE_DEFAULT, "AppleAVD: WriteNAL AVD_HEVC_ERROR_BAD_NAL_LENGTH ", buf, 2u);
  return 318;
}

void hevc_createSupportedPropertyDictionary()
{
  v43 = *MEMORY[0x277D85DE8];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v0 = *MEMORY[0x277CE29C8];
  v1 = *MEMORY[0x277CE29D8];
  v2 = *MEMORY[0x277CBECE8];
  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  v5 = CFDictionaryCreate(*MEMORY[0x277CBECE8], 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = *MEMORY[0x277CE2A18];
  v7 = *MEMORY[0x277CE2768];
  keys = *MEMORY[0x277CE2770];
  v34 = v7;
  values = v6;
  v24 = v6;
  v8 = *MEMORY[0x277CE29E0];
  v35 = v0;
  v36 = v8;
  v9 = *MEMORY[0x277CE2620];
  v25 = v1;
  v26 = v9;
  v10 = CFDictionaryCreate(v2, &keys, &values, 4, v3, v4);
  v11 = *MEMORY[0x277CE2718];
  keys = *MEMORY[0x277CE2708];
  v34 = v11;
  values = v5;
  v24 = v5;
  v12 = *MEMORY[0x277CE2668];
  v35 = *MEMORY[0x277CE2638];
  v36 = v12;
  v25 = v10;
  v26 = v5;
  v13 = *MEMORY[0x277CE26B8];
  *&v37 = *MEMORY[0x277CE2660];
  *(&v37 + 1) = v13;
  *&v27 = v5;
  *(&v27 + 1) = v5;
  v14 = *MEMORY[0x277CE2710];
  *&v38 = *MEMORY[0x277CE2690];
  *(&v38 + 1) = v14;
  *&v28 = v5;
  *(&v28 + 1) = v5;
  v15 = *MEMORY[0x277CE26D0];
  *&v39 = @"NegotiationDetails";
  *(&v39 + 1) = v15;
  *&v29 = v5;
  *(&v29 + 1) = v5;
  v16 = *MEMORY[0x277CE2A08];
  v17 = *MEMORY[0x277CE2720];
  *&v40 = *MEMORY[0x277CE26D8];
  *(&v40 + 1) = v17;
  *&v30 = v16;
  *(&v30 + 1) = v6;
  v18 = *MEMORY[0x277CE2688];
  *&v41 = *MEMORY[0x277CE2650];
  *(&v41 + 1) = v18;
  *&v31 = v5;
  *(&v31 + 1) = v5;
  *&v42 = @"EnableSliceQpExtraction";
  *&v32 = v16;
  sHEVCVideoDecoderSupportedPropertyDictionary = CFDictionaryCreate(v2, &keys, &values, 15, v3, v4);
  if (!sHEVCVideoDecoderSupportedPropertyDictionary)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT) || (LOWORD(v19) = 0, _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_HEVCVideoDecoder Error:: CFDictionaryCreate (sHEVCVideoDecoderSupportedPropertyDictionary) failed", &v19, 2u), !sHEVCVideoDecoderSupportedPropertyDictionary))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315394;
        v20 = "hevc_createSupportedPropertyDictionary";
        v21 = 2080;
        v22 = "sHEVCVideoDecoderSupportedPropertyDictionary";
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %s\n", &v19, 0x16u);
      }
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t AppleAVDWrapperHEVCDecoderInvalidate()
{
  v18 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    pthread_mutex_lock((DerivedStorage + 5648));
    v2 = *(v1 + 5204);
    if ((v2 - 1) >= 2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "AppleAVDWrapperHEVCDecoderInvalidate";
        v10 = 1024;
        v11 = v2;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s called but plugin state is %d", &v8, 0x12u);
      }
    }

    else
    {
      *(v1 + 5204) = 3;
      AppleAVDWrapperHEVCDecoderCleanUp();
    }

    pthread_mutex_unlock((v1 + 5648));
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v4)
    {
      v5 = *(v1 + 5832);
      v6 = *(v1 + 5212);
      v7 = *(v1 + 5216);
      v8 = 136316162;
      v9 = "AppleAVDWrapperHEVCDecoderInvalidate";
      v10 = 1024;
      v11 = v5;
      v12 = 1024;
      v13 = v6;
      v14 = 1024;
      v15 = v7;
      v16 = 2048;
      v17 = v1;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s() codecType: HEVC, encryptionScheme %d, %d x %d, session: %p", &v8, 0x28u);
      return 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "AppleAVDWrapperHEVCDecoderInvalidate";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s called with invalid storage", &v8, 0xCu);
    }

    return 4294954393;
  }

  return result;
}

void AppleAVDWrapperHEVCDecoderFinalize()
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
    v10 = "AppleAVDWrapperHEVCDecoderFinalize";
    v3 = MEMORY[0x277D86220];
    v4 = "AppleAVD: %s called with invalid storage";
    v5 = 12;
    goto LABEL_11;
  }

  v1 = DerivedStorage;
  pthread_mutex_lock((DerivedStorage + 5648));
  v2 = *(v1 + 5204);
  if ((v2 - 1) >= 3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "AppleAVDWrapperHEVCDecoderFinalize";
      v11 = 1024;
      v12 = v2;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s called but plugin state is %d", &v9, 0x12u);
    }
  }

  else if (v2 != 3)
  {
    AppleAVDWrapperHEVCDecoderCleanUp();
  }

  pthread_mutex_unlock((v1 + 5648));
  pthread_mutex_destroy((v1 + 5648));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v1 + 5832);
    v7 = *(v1 + 5212);
    v8 = *(v1 + 5216);
    v9 = 136316162;
    v10 = "AppleAVDWrapperHEVCDecoderFinalize";
    v11 = 1024;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 2048;
    v18 = v1;
    v3 = MEMORY[0x277D86220];
    v4 = "AppleAVD: %s() codecType: HEVC, encryptionScheme %d, %d x %d, session: %p";
    v5 = 40;
LABEL_11:
    _os_log_impl(&dword_277606000, v3, OS_LOG_TYPE_DEFAULT, v4, &v9, v5);
  }
}

__CFString *AppleAVDWrapperHEVCDecoderCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<AppleAVD_HEVCVideoDecoder %p>", a1);
  return Mutable;
}

uint64_t AppleAVDWrapperHEVCDecoderSetProperty(uint64_t a1, const void *a2, const __CFNumber *a3)
{
  valuePtr[1] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = (DerivedStorage + 5816);
  if (CFEqual(a2, *MEMORY[0x277CE2708]))
  {
    LODWORD(valuePtr[0]) = 0;
    CFNumberGetValue(a3, kCFNumberSInt32Type, valuePtr);
    v7 = valuePtr[0];
    if (LODWORD(valuePtr[0]) <= 0x2A && ((1 << SLOBYTE(valuePtr[0])) & 0x40000100002) != 0)
    {
      *v6 = valuePtr[0];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v61 = "AppleAVDWrapperHEVCDecoderSetProperty";
        v62 = 1024;
        *v63 = v7;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s() - setting storage->usageMode to %d\n", buf, 0x12u);
      }

      v8 = *(DerivedStorage + 5184);
      if (!v8)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v61 = "AppleAVDWrapperHEVCDecoderSetProperty";
          v9 = MEMORY[0x277D86220];
          v10 = "AppleAVD: WARNING: %s() - trying to set kAppleAVDSetUsageMode before videoContext was created!\n";
          goto LABEL_22;
        }

        return 4294954385;
      }

      if (AppleAVDSetParameter(v8, 17, v6))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v61 = "AppleAVDWrapperHEVCDecoderSetProperty";
          v9 = MEMORY[0x277D86220];
          v10 = "AppleAVD: ERROR: %s() - AppleAVDSetParameter call for kAppleAVDSetUsageMode returned ERROR\n";
LABEL_22:
          v15 = 12;
LABEL_23:
          _os_log_impl(&dword_277606000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, v15);
          return 4294954385;
        }

        return 4294954385;
      }
    }

    v14 = *(DerivedStorage + 8048);
    if (v14)
    {
      fprintf(v14, "%d usage %d\n", *(DerivedStorage + 5208), LODWORD(valuePtr[0]));
    }

    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x277CE2718]))
  {
    LODWORD(valuePtr[0]) = 0;
    if (a3)
    {
      CFNumberGetValue(a3, kCFNumberSInt32Type, valuePtr);
      v11 = valuePtr[0];
      if (LODWORD(valuePtr[0]) == 3)
      {
        v12 = *(DerivedStorage + 5184);
        if (!v12)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return 4294954385;
          }

          *buf = 136315138;
          v61 = "AppleAVDWrapperHEVCDecoderSetProperty";
          v9 = MEMORY[0x277D86220];
          v10 = "AppleAVD: WARNING: %s() - trying to set kAppleAVDSetVRAType before videoContext was created!\n";
          goto LABEL_22;
        }

        result = AppleAVDSetParameter(v12, 30, valuePtr);
        if (result)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v61 = "AppleAVDWrapperHEVCDecoderSetProperty";
            v9 = MEMORY[0x277D86220];
            v10 = "AppleAVD: ERROR: %s() - AppleAVDSetParameter call for kAppleAVDSetVRAType returned ERROR\n";
            goto LABEL_22;
          }

          return 4294954385;
        }

        return result;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v61) = v11;
        v22 = MEMORY[0x277D86220];
        v23 = "AppleAVD: ERROR: AppleAVD_HEVCDecoder - AppleAVDSetParameter kAppleAVDSetVRAType: Unsupported VRA Type:%d\n";
        v24 = 8;
LABEL_43:
        _os_log_impl(&dword_277606000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, v24);
      }
    }

    return 4294954394;
  }

  if (CFEqual(a2, *MEMORY[0x277CE2638]))
  {
    valuePtr[0] = 0;
    if (a3)
    {
      v16 = CFGetTypeID(a3);
      if (v16 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(a3, *MEMORY[0x277CE2770]);
        if (Value)
        {
          CFNumberGetValue(Value, kCFNumberIntType, valuePtr);
          v18 = CFDictionaryGetValue(a3, *MEMORY[0x277CE2768]);
          if (v18)
          {
            CFNumberGetValue(v18, kCFNumberIntType, valuePtr + 4);
            v19 = valuePtr[0];
            if (LODWORD(valuePtr[0]) != 1080)
            {
              v20 = HIDWORD(valuePtr[0]);
              if (HIDWORD(valuePtr[0]) != 1080 && ((LOBYTE(valuePtr[0]) | BYTE4(valuePtr[0])) & 0xF) != 0)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v61 = "AppleAVDWrapperHEVCDecoderSetProperty";
                  v62 = 1024;
                  *v63 = v19;
                  *&v63[4] = 1024;
                  *&v63[6] = v20;
                  _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() - Non-mod16 VRA dimensions with width %d, height %d\n", buf, 0x18u);
                }

                if (*(DerivedStorage + 5204) == 2 && valuePtr[0] != *(DerivedStorage + 5224))
                {
                  return 4294954385;
                }
              }
            }

            v21 = *(DerivedStorage + 5184);
            if (!v21)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                return 4294954385;
              }

              *buf = 136315138;
              v61 = "AppleAVDWrapperHEVCDecoderSetProperty";
              v9 = MEMORY[0x277D86220];
              v10 = "AppleAVD: WARNING: %s() - trying to set kAppleAVDSetVRADimensions before videoContext was created!\n";
              goto LABEL_22;
            }

            result = AppleAVDSetParameter(v21, 31, valuePtr);
            if (result)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                return 4294954385;
              }

              *buf = 136315138;
              v61 = "AppleAVDWrapperHEVCDecoderSetProperty";
              v9 = MEMORY[0x277D86220];
              v10 = "AppleAVD: ERROR: %s() - AppleAVDSetParameter call for kAppleAVDSetVRADimensions returned ERROR\n";
              goto LABEL_22;
            }

            return result;
          }
        }
      }
    }

    return 4294954394;
  }

  if (CFEqual(a2, *MEMORY[0x277CE2668]))
  {
    LODWORD(valuePtr[0]) = 0;
    if (a3)
    {
      CFNumberGetValue(a3, kCFNumberSInt32Type, valuePtr);
      *(DerivedStorage + 5828) = valuePtr[0];
      v25 = *(DerivedStorage + 5184);
      if (!v25)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 4294954385;
        }

        *buf = 136315138;
        v61 = "AppleAVDWrapperHEVCDecoderSetProperty";
        v9 = MEMORY[0x277D86220];
        v10 = "AppleAVD: WARNING: %s() - trying to set kAppleAVDExtraInloopFilter before videoContext was created!\n";
        goto LABEL_22;
      }

      result = AppleAVDSetParameter(v25, 19, valuePtr);
      if (result)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 4294954385;
        }

        *buf = 136315138;
        v61 = "AppleAVDWrapperHEVCDecoderSetProperty";
        v9 = MEMORY[0x277D86220];
        v10 = "AppleAVD: ERROR: %s() - AppleAVDSetParameter call for kAppleAVDExtraInloopFilter returned ERROR\n";
        goto LABEL_22;
      }

      return result;
    }

    return 4294954394;
  }

  if (CFEqual(a2, *MEMORY[0x277CE26B8]))
  {
    if (a3)
    {
      v26 = CFBooleanGetValue(a3);
      result = 0;
      *(DerivedStorage + 8024) = v26;
      return result;
    }

    return 4294954394;
  }

  if (CFEqual(a2, *MEMORY[0x277CE2690]))
  {
    if (a3)
    {
      v27 = CFBooleanGetValue(a3);
      result = 0;
      *(DerivedStorage + 8020) = v27;
      return result;
    }

    return 4294954394;
  }

  if (!CFEqual(a2, *MEMORY[0x277CE26D0]))
  {
    if (CFEqual(a2, @"NegotiationDetails"))
    {
      result = malloc_type_malloc(0x3E9uLL, 0x100004077774924uLL);
      if (result)
      {
        v28 = result;
        LODWORD(valuePtr[0]) = 0;
        TypeID = CFStringGetTypeID();
        if (TypeID == CFGetTypeID(a3) && CFStringGetCString(a3, v28, 1001, 0x8000100u))
        {
          v30 = strnlen(v28, 0x3E9uLL);
          if (strnstr(v28, "RVRA1:", v30))
          {
            v31 = 1;
            LODWORD(valuePtr[0]) = 1;
          }

          else
          {
            v31 = 0;
          }

          v48 = strnlen(v28, 0x3E9uLL);
          v35 = strnstr(v28, "CF:", v48) != 0;
        }

        else
        {
          v31 = 0;
          v35 = 0;
        }

        free(v28);
        *(DerivedStorage + 5820) = v31;
        *(DerivedStorage + 5824) = v35;
        v49 = *(DerivedStorage + 5184);
        if (!v49)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return 4294954385;
          }

          *buf = 136315138;
          v61 = "AppleAVDWrapperHEVCDecoderSetProperty";
          v9 = MEMORY[0x277D86220];
          v10 = "AppleAVD: WARNING: %s() - trying to set kAppleAVDEnableRVRA before videoContext was created!\n";
          goto LABEL_22;
        }

        result = AppleAVDSetParameter(v49, 35, valuePtr);
        if (result)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return 4294954385;
          }

          *buf = 136315138;
          v61 = "AppleAVDWrapperHEVCDecoderSetProperty";
          v9 = MEMORY[0x277D86220];
          v10 = "AppleAVD: ERROR: %s() - AppleAVDSetParameter call for kAppleAVDEnableRVRA returned ERROR\n";
          goto LABEL_22;
        }
      }

      return result;
    }

    if (CFEqual(a2, *MEMORY[0x277CE2710]))
    {
      return 4294954395;
    }

    v36 = (DerivedStorage + 16840);
    if (CFEqual(a2, *MEMORY[0x277CE26A0]))
    {
      if (a3)
      {
        v37 = CFBooleanGetTypeID();
        if (v37 == CFGetTypeID(a3))
        {
          v38 = CFBooleanGetValue(a3);
          v39 = v38;
          v40 = *(DerivedStorage + 5204);
          if (v40 >= 2)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 4294954385;
            }

            v41 = *v36;
            *buf = 136315906;
            v61 = "AppleAVDWrapperHEVCDecoderSetProperty";
            v62 = 1024;
            *v63 = v40;
            *&v63[4] = 1024;
            *&v63[6] = v41;
            v64 = 1024;
            v65 = v39 != 0;
            v9 = MEMORY[0x277D86220];
            v10 = "AppleAVD: ERROR: %s(): pluginState (%d) was already started! current: %d - requested: %d";
            v15 = 30;
            goto LABEL_23;
          }

          *v36 = v38 != 0;
          result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (!result)
          {
            return result;
          }

          *buf = 136315394;
          v61 = "AppleAVDWrapperHEVCDecoderSetProperty";
          v62 = 1024;
          *v63 = v39 != 0;
          v53 = MEMORY[0x277D86220];
          v54 = "AppleAVD: %s(): kVTDecompressionPropertyKey_Paravirtualized - paravirtualizedSession: %d";
          goto LABEL_126;
        }
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 4294954394;
      }

      goto LABEL_102;
    }

    if (CFEqual(a2, *MEMORY[0x277CE26D8]))
    {
      v47 = *(DerivedStorage + 5204);
      if (v47 < 2)
      {
        if (a3)
        {
          v51 = CFBooleanGetTypeID();
          if (v51 == CFGetTypeID(a3))
          {
            v52 = CFBooleanGetValue(a3);
            v36[8] = v52 != 0;
            result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (!result)
            {
              return result;
            }

            *buf = 136315394;
            v61 = "AppleAVDWrapperHEVCDecoderSetProperty";
            v62 = 1024;
            *v63 = v52 != 0;
            v53 = MEMORY[0x277D86220];
            v54 = "AppleAVD: %s(): kVTDecompressionPropertyKey_SelectPixelFormatWithAlpha storage->decodeToBufferWithAlpha:%d";
            goto LABEL_126;
          }
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 4294954394;
        }

        goto LABEL_102;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 4294954385;
      }

      *buf = 136315394;
      v61 = "AppleAVDWrapperHEVCDecoderSetProperty";
      v62 = 1024;
      *v63 = v47;
      v9 = MEMORY[0x277D86220];
      v10 = "AppleAVD: %s(): WARNING! pluginState (%d) was already started! Trying to change kVTDecompressionPropertyKey_SelectPixelFormatWithAlpha";
    }

    else
    {
      if (!CFEqual(a2, *MEMORY[0x277CE2720]))
      {
        if (CFEqual(a2, @"EnableSliceQpExtraction"))
        {
          if (a3)
          {
            LOBYTE(valuePtr[0]) = CFBooleanGetValue(a3);
            v55 = *(DerivedStorage + 5184);
            if (!v55)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                return 4294954385;
              }

              *buf = 136315138;
              v61 = "AppleAVDWrapperHEVCDecoderSetProperty";
              v9 = MEMORY[0x277D86220];
              v10 = "AppleAVD: WARNING: %s() - trying to set kAppleAVDSetAttachQPs before videoContext was created!\n";
              goto LABEL_22;
            }

            result = AppleAVDSetParameter(v55, 78, valuePtr);
            if (result)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                return 4294954385;
              }

              *buf = 136315138;
              v61 = "AppleAVDWrapperHEVCDecoderSetProperty";
              v9 = MEMORY[0x277D86220];
              v10 = "AppleAVD: ERROR: %s() - AppleAVDSetParameter call for kAppleAVDSetAttachQPs returned ERROR\n";
              goto LABEL_22;
            }

            return result;
          }

          return 4294954394;
        }

        return 4294954396;
      }

      v50 = *(DerivedStorage + 5204);
      if (v50 < 2)
      {
        if (a3)
        {
          v56 = CFNumberGetTypeID();
          if (v56 == CFGetTypeID(a3))
          {
            LODWORD(valuePtr[0]) = 0;
            v57 = v36[8];
            CFNumberGetValue(a3, kCFNumberSInt32Type, valuePtr);
            v58 = valuePtr[0];
            if (v57)
            {
              v59 = 2;
            }

            else
            {
              v59 = 1;
            }

            if ((valuePtr[0] & 0x80000000) != 0 || SLODWORD(valuePtr[0]) > v59)
            {
              return 4294954394;
            }

            v36[16] = 1;
            *(v36 + 5) = v58;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 0;
            }

            *buf = 136315394;
            v61 = "AppleAVDWrapperHEVCDecoderSetProperty";
            v62 = 1024;
            *v63 = v58;
            v53 = MEMORY[0x277D86220];
            v54 = "AppleAVD: %s(): kVTDecompressionPropertyKey_WriteDirectlyToPlanesOfTargetCVPixelBuffer storage->startingPlaneOffset:%d";
LABEL_126:
            _os_log_impl(&dword_277606000, v53, OS_LOG_TYPE_DEFAULT, v54, buf, 0x12u);
            return 0;
          }
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 4294954394;
        }

LABEL_102:
        *buf = 136315394;
        v61 = "AppleAVDWrapperHEVCDecoderSetProperty";
        v62 = 2048;
        *v63 = a3;
        v22 = MEMORY[0x277D86220];
        v23 = "AppleAVD: %s(): propertyValue (%p) is invalid!";
        v24 = 22;
        goto LABEL_43;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 4294954385;
      }

      *buf = 136315394;
      v61 = "AppleAVDWrapperHEVCDecoderSetProperty";
      v62 = 1024;
      *v63 = v50;
      v9 = MEMORY[0x277D86220];
      v10 = "AppleAVD: %s(): WARNING! pluginState (%d) was already started! Trying to change kVTDecompressionPropertyKey_WriteDirectlyToPlanesOfTargetCVPixelBuffer";
    }

    v15 = 18;
    goto LABEL_23;
  }

  if (*(DerivedStorage + 8153) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v61 = "AppleAVDWrapperHEVCDecoderSetProperty";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s - kVTDecompressionPropertyKey_RequestedMVHEVCVideoLayerIDs not supported for hevc stream", buf, 0xCu);
    }

    return 4294954396;
  }

  if (a3)
  {
    v32 = CFArrayGetTypeID();
    if (v32 != CFGetTypeID(a3))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 4294954385;
      }

      *buf = 136315138;
      v61 = "AppleAVDWrapperHEVCDecoderSetProperty";
      v9 = MEMORY[0x277D86220];
      v10 = "AppleAVD: %s - kVTDecompressionPropertyKey_RequestedMVHEVCVideoLayerIDs error";
      goto LABEL_22;
    }

    Copy = CFArrayCreateCopy(*MEMORY[0x277CBECE8], a3);
    *(DerivedStorage + 16816) = Copy;
  }

  else
  {
    Copy = *(DerivedStorage + 16816);
  }

  if (!Copy)
  {
    return 0;
  }

  v34 = *(DerivedStorage + 5184);
  if (!v34)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 4294954385;
    }

    *buf = 136315138;
    v61 = "AppleAVDWrapperHEVCDecoderSetProperty";
    v9 = MEMORY[0x277D86220];
    v10 = "AppleAVD: WARNING: %s() - trying to set kAppleAVDSetMVHEVCDisplayLayerIDs before videoContext was created!\n";
    goto LABEL_22;
  }

  if (AppleAVDSetParameter(v34, 68, Copy))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 4294954385;
    }

    *buf = 136315138;
    v61 = "AppleAVDWrapperHEVCDecoderSetProperty";
    v9 = MEMORY[0x277D86220];
    v10 = "AppleAVD: ERROR: %s() - AppleAVDSetParameter call for kAppleAVDSetMVHEVCDisplayLayerIDs returned ERROR\n";
    goto LABEL_22;
  }

  Count = CFArrayGetCount(*(DerivedStorage + 16816));
  if (Count < 1)
  {
    return 0;
  }

  v43 = Count;
  v44 = 0;
  v45 = MEMORY[0x277D86220];
  do
  {
    LODWORD(valuePtr[0]) = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 16816), v44);
    CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, valuePtr);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v61 = "AppleAVDWrapperHEVCDecoderSetProperty";
      v62 = 1024;
      *v63 = valuePtr[0];
      *&v63[4] = 1024;
      *&v63[6] = v44;
      _os_log_impl(&dword_277606000, v45, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s videoLayerID %d index %d", buf, 0x18u);
    }

    result = 0;
    ++v44;
  }

  while (v43 != v44);
  return result;
}

void AppleAVDWrapperHEVCDecoderCleanUp()
{
  v16 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  v2 = *(v1 + 5184);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = AppleAVDTerminateDecoder(v2);
  if (!v3)
  {
    v5 = AppleAVDCloseConnection((v1 + 5184));
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v4 = v3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_HEVCDecoder - ERROR terminate decoder", &v12, 2u);
  }

  v5 = AppleAVDCloseConnection((v1 + 5184));
  if (v5)
  {
LABEL_8:
    v6 = v5;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_HEVCDecoder - ERROR closing connection", &v12, 2u);
    }

    goto LABEL_10;
  }

  v6 = v4;
LABEL_10:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "AppleAVDWrapperHEVCDecoderCleanUp";
    v14 = 1024;
    v15 = v6;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR :: closeAppleAVDHW_HEVCDecoderInstance returned error %d", &v12, 0x12u);
  }

LABEL_12:
  ReleaseHeaderBufferAndCloseFileIO(DerivedStorage);
  v7 = DerivedStorage[4];
  if (v7)
  {
    CVPixelBufferPoolRelease(v7);
  }

  DerivedStorage[4] = 0;
  v8 = DerivedStorage[5];
  if (v8)
  {
    CVPixelBufferPoolRelease(v8);
  }

  DerivedStorage[5] = 0;
  v9 = DerivedStorage[6];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[6] = 0;
  }

  v10 = DerivedStorage[7];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[7] = 0;
  }

  *DerivedStorage = 0;
  FigFormatDescriptionRelease();
  DerivedStorage[3] = 0;
  v11 = DerivedStorage[649];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[649] = 0;
  }

  if (DerivedStorage[743])
  {
    FigHEVCBridge_HLSfMP4ParsingInfoDestroy();
    DerivedStorage[743] = 0;
  }

  AppleAVDWrapperHEVCDecoderCleanUpMVHEVCResources(DerivedStorage);
}

void ReleaseHeaderBufferAndCloseFileIO(void *a1)
{
  v2 = a1[1004];
  if (v2)
  {
    fclose(v2);
    a1[1004] = 0;
  }

  v3 = a1[1005];
  if (v3)
  {
    fclose(v3);
    a1[1005] = 0;
  }

  v4 = a1[1006];
  if (v4)
  {
    fclose(v4);
    a1[1006] = 0;
  }

  v5 = a1[1007];
  if (v5)
  {
    fclose(v5);
    a1[1007] = 0;
  }

  v6 = a1[1008];
  if (v6)
  {
    fclose(v6);
    a1[1008] = 0;
  }

  v7 = a1[704];
  if (v7)
  {
    free(v7);
  }

  a1[704] = 0;
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
  v10 = a1[656];
  if (v10)
  {
    free(v10);
  }

  a1[656] = 0;
}

void AppleAVDWrapperHEVCDecoderCleanUpMVHEVCResources(uint64_t a1)
{
  v2 = *(a1 + 16816);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16816) = 0;
  }

  v3 = *(a1 + 16824);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16824), i);
        if (ValueAtIndex)
        {
          CFRelease(ValueAtIndex);
        }
      }
    }

    v8 = *(a1 + 16824);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 16824) = 0;
    }
  }
}

uint64_t AppleAVDWrapperHEVCDecoderStartSession(uint64_t a1, uint64_t a2, const opaqueCMFormatDescription *a3)
{
  v88[1] = *MEMORY[0x277D85DE8];
  v87 = 0;
  v86 = 0u;
  memset(v85, 0, sizeof(v85));
  kdebug_trace();
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v6 = DerivedStorage;
    v7 = *(DerivedStorage + 5204);
    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AppleAVDWrapperHEVCDecoderStartSession";
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

    v84 = 0;
    v12 = (DerivedStorage + 16840);
    v13 = DerivedStorage + 5201;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    memset(buf, 0, sizeof(buf));
    readPreferences(buf);
    v14 = buf[12];
    *(v6 + 16872) = DWORD1(v83);
    pthread_mutex_init((v6 + 5648), 0);
    pthread_mutex_lock((v6 + 5648));
    *v6 = a2;
    *(v6 + 16) = 0;
    FigFormatDescriptionRelease();
    v15 = FigFormatDescriptionRetain();
    *(v6 + 24) = v15;
    *(v6 + 5212) = CMVideoFormatDescriptionGetDimensions(v15);
    *(v6 + 5208) = 1;
    *(v6 + 5632) = 0;
    *(v6 + 5644) = 0;
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    *(v6 + 16824) = Mutable;
    if (!Mutable)
    {
      v11 = 4294954392;
      goto LABEL_61;
    }

    v68 = v14;
    v17 = (v6 + 16848);
    if (*(v6 + 16848) == 1)
    {
      DestinationPixelBufferAttributes = VTDecoderSessionGetDestinationPixelBufferAttributes();
      if (DestinationPixelBufferAttributes)
      {
        Value = CFDictionaryGetValue(DestinationPixelBufferAttributes, *MEMORY[0x277CC4E30]);
        if (Value)
        {
          ValueAtIndex = Value;
          v21 = CFGetTypeID(Value);
          if (v21 == CFArrayGetTypeID() && CFArrayGetCount(ValueAtIndex) == 1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0);
          }

          v22 = CFGetTypeID(ValueAtIndex);
          if (v22 == CFNumberGetTypeID())
          {
            CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, (v6 + 16852));
          }

          else
          {
            *(v6 + 16852) = 0;
          }

          v17 = v12 + 8;
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v69 = 136315138;
          *&v69[4] = "AppleAVDWrapperHEVCDecoderStartSession";
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): preconfiguredPixBufAttrs is NULL!", v69, 0xCu);
        }

        *(v6 + 16852) = 0;
      }
    }

    Extensions = CMFormatDescriptionGetExtensions(*(v6 + 24));
    if (Extensions)
    {
      *(v6 + 8153) = CFDictionaryContainsKey(Extensions, *MEMORY[0x277CC0368]) != 0;
    }

    if (MGGetBoolAnswer())
    {
      *(v6 + 8028) = DWORD1(v80);
    }

    v24 = HIDWORD(v82);
    *(v6 + 8072) = HIDWORD(v82);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(v6 + 5832);
      v26 = *(v6 + 5212);
      v27 = *(v6 + 5216);
      v28 = *(v6 + 5816);
      *v69 = 136317186;
      *&v69[4] = "AppleAVDWrapperHEVCDecoderStartSession";
      *&v69[12] = 1024;
      *v70 = v25;
      *&v70[4] = 1024;
      *&v70[6] = v26;
      LOWORD(v71) = 1024;
      *(&v71 + 2) = v27;
      HIWORD(v71) = 1024;
      *v72 = v24;
      *&v72[4] = 1024;
      *&v72[6] = v28;
      v73 = 2048;
      v74 = v6;
      v75 = 2080;
      v76 = "06:37:33";
      v77 = 2080;
      v78 = "Oct 23 2025";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s() codecType: HEVC, encryptionScheme %d, %d x %d, tryAllFrames = %d, usageMode: %d, session: %p, built %s %s", v69, 0x48u);
    }

    if (MGGetBoolAnswer() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      if (_os_feature_enabled_impl())
      {
        v29 = "True";
      }

      else
      {
        v29 = "False";
      }

      v67 = v29;
      if (_os_feature_enabled_impl())
      {
        v30 = "True";
      }

      else
      {
        v30 = "False";
      }

      if (_os_feature_enabled_impl())
      {
        v31 = "True";
      }

      else
      {
        v31 = "False";
      }

      v32 = _os_feature_enabled_impl();
      *v69 = 136315906;
      if (v32)
      {
        v33 = "True";
      }

      else
      {
        v33 = "False";
      }

      *&v69[4] = v67;
      *&v69[12] = 2080;
      *v70 = v30;
      *&v70[8] = 2080;
      v71 = v31;
      v13 = v6 + 5201;
      *v72 = 2080;
      *&v72[2] = v33;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: FeatureFlagIsPWDEnabled: %s FeatureFlagIsHEVCWithAlphaCompressedIOSurfaces: %s MVHEVCAlpha: %s FeatureFlagIsFaceTimeCompressedIOSurfacesEnabled: %s", v69, 0x2Au);
    }

    v34 = _os_feature_enabled_impl();
    if (v84 == 44524)
    {
      v35 = 1;
    }

    else
    {
      v35 = v34;
    }

    *(v6 + 16867) = v35;
    *(v6 + 16866) = _os_feature_enabled_impl();
    *(v6 + 16868) = _os_feature_enabled_impl();
    *(v6 + 16869) = DWORD2(v82) != 0;
    *(v6 + 16844) = *&buf[8];
    *(v13 + 2875) = v82;
    v36 = v83;
    v37 = DWORD1(v81) != 0;
    v38 = *buf;
    if (DWORD1(v81))
    {
      v39 = 5;
    }

    else
    {
      v39 = 4;
    }

    *(v6 + 16832) = *&buf[24];
    if (v38)
    {
      v37 = v39;
    }

    if (v36)
    {
      v37 |= 8u;
    }

    *(v6 + 8084) = v37;
    *(v6 + 16876) = HIDWORD(v84);
    v40 = *(v6 + 8028);
    if (v40 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v69 = 67109120;
      *&v69[4] = v40;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_HEVCVideoDecoder enableFileDump %d", v69, 8u);
    }

    HeaderBuffer_0 = CreateHeaderBuffer_0(v6, a3);
    if (HeaderBuffer_0)
    {
      goto LABEL_60;
    }

    HeaderBuffer_0 = parseHevcSps(*(v6 + 5632), *(v6 + 5640), v85, *(v6 + 8164), v6 + 8236, *(v6 + 16867));
    if (HeaderBuffer_0)
    {
      goto LABEL_60;
    }

    if (*(v6 + 8028))
    {
      DumpHevcStream(v6);
    }

    else
    {
      *(v6 + 8064) = 0;
      *(v6 + 8048) = 0u;
      *(v6 + 8032) = 0u;
    }

    *(v13 + 443) = BYTE10(v86);
    AVDHEVCInstance = CreateAVDHEVCInstance(v6, v68);
    if (AVDHEVCInstance)
    {
      v44 = AVDHEVCInstance;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v69 = 0;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_HEVCVideoDecoder ERROR: CreateAVDHEVCInstance returned error", v69, 2u);
      }

      if (*(v6 + 5204) != 1)
      {
        ReleaseHeaderBufferAndCloseFileIO(v6);
      }

      if (v44 == -536870210)
      {
        v11 = 4294954383;
      }

      else
      {
        v11 = 4294954385;
      }

      goto LABEL_61;
    }

    if (MGGetBoolAnswer() && HIDWORD(v83))
    {
      *v69 = 0;
      PrepareHistogramDump(v69);
      AppleAVDSetParameter(*(v6 + 5184), 62, *v69);
    }

    AppleAVDSetParameter(*(v6 + 5184), 78, &v83 + 8);
    v45 = *(v13 + 544);
    if ((v45 | 2) != 2 || v45 != *(v13 + 545))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v49 = *(v13 + 545);
        *v69 = 136315650;
        *&v69[4] = "AppleAVDWrapperHEVCDecoderStartSession";
        *&v69[12] = 1024;
        *v70 = v45;
        *&v70[4] = 1024;
        *&v70[6] = v49;
        v46 = MEMORY[0x277D86220];
        v47 = "AppleAVD: ERROR: %s(): invalid bit depth [luma depth minus 8 = %d, chroma depth minus 8 = %d]\n";
        v48 = 24;
        goto LABEL_90;
      }

LABEL_91:
      v11 = 4294954385;
      goto LABEL_61;
    }

    *(v6 + 5224) = *(v6 + 5712);
    if (*v17 == 1 && (isEligibleToUseSharedDestPixelBuffer(*(v6 + 16860), *(v13 + 600), v45) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v69 = 136315138;
        *&v69[4] = "AppleAVDWrapperHEVCDecoderStartSession";
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s() - Disabling decodeToBufferWithAlpha!", v69, 0xCu);
      }

      *(v6 + 16848) = 0;
      *(v6 + 16856) = 0;
      if (AppleAVDSetParameter(*(v6 + 5184), 36, v17))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v69 = 136315138;
          *&v69[4] = "AppleAVDWrapperHEVCDecoderStartSession";
          v46 = MEMORY[0x277D86220];
          v47 = "AppleAVD: %s() - AppleAVDSetParameter kAppleAVDSetEnableMuxedAlpha returned ERROR";
          v48 = 12;
LABEL_90:
          _os_log_impl(&dword_277606000, v46, OS_LOG_TYPE_DEFAULT, v47, v69, v48);
          goto LABEL_91;
        }

        goto LABEL_91;
      }
    }

    if (*(v6 + 16868) != 1)
    {
      goto LABEL_97;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v50 = *(v13 + 615);
      v51 = *(v6 + 5820);
      v52 = *(v6 + 5824);
      *v69 = 67109632;
      *&v69[4] = v50;
      *&v69[8] = 1024;
      *&v69[10] = v51;
      *v70 = 1024;
      *&v70[2] = v52;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: storage->usageMode:%d storage->enableRVRA:%d storage->enableChromaFilter:%d", v69, 0x14u);
    }

    if (*(v13 + 615) == 1 && !*(v6 + 5820))
    {
      v53 = *(v6 + 5824) == 0;
    }

    else
    {
LABEL_97:
      v53 = 0;
    }

    if (isEligibleToUseCompression(*(v6 + 5220), *(v6 + 5212), *(v6 + 5216), *(v6 + 5224), *(v6 + 5228), *(v6 + 16872), *v12))
    {
      HeaderBuffer_0 = InitPixelBufferCompressionSupported(*v6, *(v6 + 5184), *(v6 + 5220), *(v6 + 5212), *(v6 + 5216), *(v6 + 5224), *(v6 + 5228), *(v13 + 544), *(v13 + 543), *(v13 + 600), *(v6 + 8008), 5, 4, 2, 2, (v6 + 40), (v6 + 56), *(v6 + 16848), *(v6 + 16852), *(v6 + 16866), v53);
      if (HeaderBuffer_0)
      {
        goto LABEL_60;
      }

      *v13 = 1;
      HeaderBuffer_0 = GetIOSurfaceTypeFromSessionPixelBufferAttributes(*v6, (v6 + 8016));
      if (HeaderBuffer_0)
      {
        goto LABEL_60;
      }

      v54 = *(v6 + 8016);
      if (v54)
      {
        *(v6 + 16865) = 1;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v55 = *(v13 + 544) + 8;
          v56 = *(v13 + 543);
          *v69 = 136315906;
          *&v69[4] = "AppleAVDWrapperHEVCDecoderStartSession";
          *&v69[12] = 1024;
          *v70 = v54;
          *&v70[4] = 1024;
          *&v70[6] = v55;
          LOWORD(v71) = 1024;
          *(&v71 + 2) = v56;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: Compressed buffers enabled! CompressionType:%d. luma depth %d chroma format %d", v69, 0x1Eu);
        }

        if (*(v6 + 5220) == 20 && *(v13 + 544) == 2)
        {
          v57 = *(v13 + 543);
          if (*(v13 + 543))
          {
            v58 = *(v6 + 5224);
            v59 = *(v6 + 5228);
            if (v57 == 2)
            {
              v58 >>= 1;
            }

            else if (v57 == 1)
            {
              v58 >>= 1;
              v59 >>= 1;
            }

            if (((((v58 + 15) >> 4) * ((v59 + 15) >> 4)) & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *v69 = 0;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: HEVC chroma plane with odd number of IMBs is unspported on Salvia A0", v69, 2u);
            }
          }
        }

LABEL_115:
        if (*v17 == 1 && *(v6 + 16860) == 2 && *(v13 + 543))
        {
          if (AppleAVDSetParameter(*(v6 + 5184), 77, (v6 + 16865)))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *v69 = 0;
              v62 = MEMORY[0x277D86220];
              v63 = "AppleAVD: AppleAVD_HEVCVideoDecoder ERROR: kAppleAVDSetNoSecondWrite: Could not set NoSecondWrite Flag!";
              v64 = 2;
LABEL_125:
              _os_log_impl(&dword_277606000, v62, OS_LOG_TYPE_DEFAULT, v63, v69, v64);
              goto LABEL_126;
            }

            goto LABEL_126;
          }

          v65 = AppleAVDAllocateCVPixelBuffer(*(v6 + 5184), 0x7Du);
          if (v65)
          {
            v66 = v65;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *v69 = 136315394;
              *&v69[4] = "AppleAVDWrapperHEVCDecoderStartSession";
              *&v69[12] = 1024;
              *v70 = v66;
              v62 = MEMORY[0x277D86220];
              v63 = "AppleAVD: ERROR: %s(): MUXED_ALPHA_CHROMA_SCRATCH_BUFF_INDEX map failed error: %d\n";
              v64 = 18;
              goto LABEL_125;
            }

LABEL_126:
            v11 = 4294954385;
LABEL_61:
            FigFormatDescriptionRelease();
            *(v6 + 24) = 0;
            AppleAVDWrapperHEVCDecoderCleanUpMVHEVCResources(v6);
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *v69 = 136315394;
              *&v69[4] = "AppleAVDWrapperHEVCDecoderStartSession";
              *&v69[12] = 1024;
              *v70 = v11;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", v69, 0x12u);
            }

            goto LABEL_63;
          }
        }

        v88[0] = *(v6 + 5224);
        if (!AppleAVDSetParameter(*(v6 + 5184), 33, v88))
        {
          v11 = 0;
          *(v6 + 5204) = 2;
LABEL_63:
          pthread_mutex_unlock((v6 + 5648));
          kdebug_trace();
          return v11;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_91;
        }

        *v69 = 0;
        v46 = MEMORY[0x277D86220];
        v47 = "AppleAVD: AppleAVD_HEVCVideoDecoder ERROR: AppleAVDSetSPSWidthHeight : Could not set SetSPSWidthHeight";
        v48 = 2;
        goto LABEL_90;
      }
    }

    else
    {
      *(v6 + 8016) = 0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v60 = *(v13 + 544) + 8;
      v61 = *(v13 + 543);
      *v69 = 136315650;
      *&v69[4] = "AppleAVDWrapperHEVCDecoderStartSession";
      *&v69[12] = 1024;
      *v70 = v60;
      *&v70[4] = 1024;
      *&v70[6] = v61;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: Compressed buffers disabled! luma depth %d chroma format %d", v69, 0x18u);
    }

    HeaderBuffer_0 = InitPixelBufferCompressionNotSupported_0(v6);
    if (!HeaderBuffer_0)
    {
      *(v6 + 16865) = 0;
      goto LABEL_115;
    }

LABEL_60:
    v11 = HeaderBuffer_0;
    goto LABEL_61;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "AppleAVDWrapperHEVCDecoderStartSession";
    v8 = MEMORY[0x277D86220];
    v9 = "AppleAVD: ERROR: %s no instance storage!";
    v10 = 12;
    goto LABEL_7;
  }

  return 4294954387;
}

uint64_t AppleAVDWrapperHEVCDecoderCanAcceptFormatDescription(uint64_t a1, const opaqueCMFormatDescription *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (MGGetBoolAnswer() && (*(DerivedStorage + 16869) & 1) != 0)
  {
    return 0;
  }

  if (*(DerivedStorage + 5832) != 6)
  {
    goto LABEL_22;
  }

  if (CMFormatDescriptionEqual(*(DerivedStorage + 24), a2))
  {
LABEL_6:
    v4 = 1;
    goto LABEL_23;
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions(a2);
  MediaSubType = CMFormatDescriptionGetMediaSubType(a2);
  if (MediaSubType != CMFormatDescriptionGetMediaSubType(*(DerivedStorage + 24)) || *(DerivedStorage + 5212) != Dimensions.width || *(DerivedStorage + 5216) != Dimensions.height)
  {
    goto LABEL_22;
  }

  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  v50 = 0u;
  BYTE9(v55) = *(DerivedStorage + 5801);
  if (!getBitDepthsAndChromaFormatFromFormatDesc() && v50 == *(DerivedStorage + 5712) && DWORD2(v51) == *(DerivedStorage + 5736) && BYTE14(v51) == *(DerivedStorage + 5742) && v52 == *(DerivedStorage + 5744) && BYTE1(v52) == *(DerivedStorage + 5745) && BYTE2(v52) == *(DerivedStorage + 5746) && !*(DerivedStorage + 5624) && BYTE9(v55) == *(DerivedStorage + 5801) && BYTE3(v52) <= *(DerivedStorage + 5747))
  {
    goto LABEL_6;
  }

  v4 = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(DerivedStorage + 5712);
    v8 = *(DerivedStorage + 5716);
    v9 = *(DerivedStorage + 5744);
    v10 = *(DerivedStorage + 5745);
    v11 = *(DerivedStorage + 5746);
    v12 = *(DerivedStorage + 5624);
    v13 = *(DerivedStorage + 5747);
    v14 = *(DerivedStorage + 5801);
    *buf = 136319234;
    v17 = "AppleAVDWrapperHEVCDecoderCanAcceptFormatDescription";
    v18 = 1024;
    v19 = v7;
    v20 = 1024;
    v21 = v8;
    v22 = 1024;
    v23 = v9;
    v24 = 1024;
    v25 = v10;
    v26 = 1024;
    v27 = v11;
    v28 = 1024;
    v29 = v12;
    v30 = 1024;
    v31 = v13;
    v32 = 1024;
    v33 = v14;
    v34 = 1024;
    v35 = v50;
    v36 = 1024;
    v37 = DWORD1(v50);
    v38 = 1024;
    v39 = v52;
    v40 = 1024;
    v41 = BYTE1(v52);
    v42 = 1024;
    v43 = BYTE2(v52);
    v44 = 1024;
    v45 = 0;
    v46 = 1024;
    v47 = BYTE3(v52);
    v48 = 1024;
    v49 = BYTE9(v55);
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): **mismatch** w %d h %d cf %d ybd %d cbd %d nSz %d DpbSz %d vRange %u **new** w %d h %d cf %d ybd %d cbd %d nSz %d DpbSz %d vRange %u", buf, 0x6Cu);
LABEL_22:
    v4 = 0;
  }

LABEL_23:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "AppleAVDWrapperHEVCDecoderCanAcceptFormatDescription";
    v18 = 1024;
    v19 = v4;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): returning %d (0: reject; 1: accept)", buf, 0x12u);
  }

  return v4;
}

uint64_t InitPixelBufferCompressionNotSupported_0(uint64_t a1)
{
  v2 = (a1 + 5744);
  result = InitDisplayPixelBufferCompressionNotSupported(*a1, *(a1 + 5184), *(a1 + 5220), *(a1 + 5212), *(a1 + 5216), *(a1 + 5224), *(a1 + 5228), *(a1 + 5745), *(a1 + 5744), *(a1 + 5801), *(a1 + 8008), (a1 + 32), (a1 + 48), *(a1 + 16848), *(a1 + 16852));
  if (!result)
  {
    return InitReferencePixelBufferCompressionNotSupported(*a1, *(a1 + 5184), *(a1 + 5220), *(a1 + 5212), *(a1 + 5216), *(a1 + 5224), *(a1 + 5228), *(a1 + 5745), *v2, *(a1 + 5801), *(a1 + 8008), *(a1 + 5816), 5, 4, 2, 2, (a1 + 40), (a1 + 56));
  }

  return result;
}

uint64_t PostEmitCleanUpCallBack_0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return MEMORY[0x282134FF0](*(a1 + 8));
  }

  else
  {
    return MEMORY[0x282134E58](*a1);
  }
}

uint64_t AppleAVDHEVCDecoderEmitErrorToVT(uint64_t a1)
{
  if (*(a1 + 16816))
  {
    return VTDecoderSessionEmitDecodedMultiImageFrame();
  }

  else
  {
    return VTDecoderSessionEmitDecodedFrame();
  }
}

uint64_t AppleAVDHEVCCheckEnableMultiViewDecode(uint64_t a1)
{
  result = *(a1 + 16816);
  if (result && (result = CFArrayGetCount(result), v3 = result - 1, result >= 1))
  {
    v4 = 0;
    do
    {
      valuePtr = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16816), v4);
      result = CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
      v6 = valuePtr == 0;
      if (valuePtr)
      {
        v7 = 1;
      }

      else
      {
        v7 = v3 == v4;
      }

      ++v4;
    }

    while (!v7);
  }

  else
  {
    v6 = 1;
  }

  if (*(a1 + 5208) != 1 || *(a1 + 8160) < 2u || (*(a1 + 8153) & 1) != 0)
  {
    goto LABEL_17;
  }

  if (!*(a1 + 16816))
  {
    v6 = 1;
  }

  if (v6)
  {
LABEL_17:
    *(a1 + 8164) = 0;
    *(a1 + 8088) = 1;
  }

  else
  {
    *(a1 + 8164) = 1;
  }

  return result;
}

uint64_t calcLayersToDecodeFromDisplayLayersList(uint64_t a1)
{
  result = *(a1 + 16816);
  if (result)
  {
    v3 = a1 + 8172;
    *(a1 + 8204) = 0u;
    *(a1 + 8220) = 0u;
    *(a1 + 8172) = 0u;
    *(a1 + 8188) = 0u;
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v4 = result;
      for (i = 0; i != v4; ++i)
      {
        valuePtr = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16816), i);
        result = CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        v7 = valuePtr;
        v8 = *(a1 + 8236 + 2 * valuePtr);
        if (!*(a1 + 8492 + 2 * v8))
        {
          if (*(a1 + 8364 + 2 * v8))
          {
            v9 = *(a1 + 8160);
            if (v9)
            {
              v10 = (a1 + 8620 + (v8 << 7));
              do
              {
                v12 = *v10++;
                v11 = v12;
                if (v12 != -1)
                {
                  *(v3 + v11) = 1;
                }

                --v9;
              }

              while (v9);
            }
          }
        }

        *(v3 + v7) = 1;
      }
    }

    v13 = 0;
    v14 = 0;
    *(a1 + 8088) = 0;
    do
    {
      if (*(v3 + v14) == 1)
      {
        *(a1 + 8089 + v13++) = v14;
        *(a1 + 8088) = v13;
      }

      ++v14;
    }

    while (v14 != 64);
  }

  return result;
}

uint64_t getMultiViewLayerOffsetInfo(uint64_t a1, CMBlockBufferRef theSourceBuffer, unint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x277D85DE8];
  destination = 0;
  v33 = 0;
  *(a1 + 8172) = 0u;
  *(a1 + 8188) = 0u;
  *(a1 + 8204) = 0u;
  *(a1 + 8220) = 0u;
  v32 = (a1 + 8172);
  LODWORD(v5) = *(a1 + 8088);
  if (!*(a1 + 8088))
  {
    result = 0;
    *(a1 + 8156) = 0;
    return result;
  }

  v8 = 0;
  LOWORD(v9) = 0;
  v10 = a1 + 8089;
  v30 = a1 + 4096;
  v31 = a4 + 48;
  v11 = a4 + 24;
  v28 = a4 + 24;
  v29 = a1 + 8089;
  while (1)
  {
    v12 = *(a1 + 5624);
    if (v12 < a3)
    {
      break;
    }

    v14 = 0;
LABEL_23:
    *(v11 + 4 * v8++) = v14;
    if (v8 >= v5)
    {
      *(a1 + 8156) = 0;
      if (!v5)
      {
        return 0;
      }

      v21 = 0;
      v5 = v5;
      LOBYTE(v22) = 1;
      do
      {
        v23 = *v32++;
        if (v23 == 1)
        {
          *(a1 + 8156) = ++v21;
        }

        v22 = v22 & (v23 != 0);
        --v5;
      }

      while (v5);
      return (v22 - 1);
    }
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = *(v10 + v8);
  while (1)
  {
    if (CMBlockBufferCopyDataBytes(theSourceBuffer, v13, v12, &destination))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      *buf = 136315138;
      v36 = "getMultiViewLayerOffsetInfo";
      v25 = MEMORY[0x277D86220];
      v26 = "AppleAVD: %s: ERROR, fail to copy data bytes";
      goto LABEL_37;
    }

    v17 = *(a1 + 5624);
    switch(v17)
    {
      case 1:
        v18 = destination;
        break;
      case 2:
        v18 = __rev16(destination);
        break;
      case 4:
        v18 = bswap32(destination);
        break;
      default:
        return 0xFFFFFFFFLL;
    }

    v19 = (v17 + v13);
    if ((v19 + 2) < a3)
    {
      if (!CMBlockBufferCopyDataBytes(theSourceBuffer, v19, 2uLL, &v33))
      {
        v9 = (bswap32(v33) >> 19) & 0x3F;
        goto LABEL_15;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      *buf = 136315138;
      v36 = "getMultiViewLayerOffsetInfo";
      v25 = MEMORY[0x277D86220];
      v26 = "AppleAVD: %s: ERROR, fail to copy data bytes";
LABEL_37:
      v27 = 12;
      goto LABEL_38;
    }

LABEL_15:
    if (v9 == v16)
    {
      v14 += v18 + *(a1 + 5624);
      if ((v15 & 1) == 0)
      {
        *(v31 + 4 * v8) = v13;
        v32[v8] = 1;
      }

      v15 = 1;
    }

    v20 = v18 + v13;
    if (v20 > a3)
    {
      break;
    }

    LODWORD(v12) = *(a1 + 5624);
    v13 = v12 + v20;
    if ((v12 + v12 + v20) >= a3)
    {
      v10 = v29;
      LODWORD(v5) = *(v30 + 3992);
      v11 = v28;
      goto LABEL_23;
    }
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    return 0xFFFFFFFFLL;
  }

  *buf = 136315394;
  v36 = "getMultiViewLayerOffsetInfo";
  v37 = 1024;
  v38 = v18;
  v25 = MEMORY[0x277D86220];
  v26 = "AppleAVD: %s NALU bad size! %d";
  v27 = 18;
LABEL_38:
  _os_log_impl(&dword_277606000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, v27);
  return 0xFFFFFFFFLL;
}

uint64_t getBitDepthsAndChromaFormatFromFormatDesc()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  *&v19[8644] = *MEMORY[0x277D85DE8];
  bzero(v15, 0x41F0uLL);
  HeaderBuffer_0 = CreateHeaderBuffer_0(v15, v7);
  if (!HeaderBuffer_0)
  {
    v9 = v17;
    *v4 = HIBYTE(v17);
    HeaderBuffer_0 = parseHevcSps(v16, v9, v6, v18, v19, v2);
  }

  if (v16)
  {
    free(v16);
  }

  if (HeaderBuffer_0 << 16 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "getBitDepthsAndChromaFormatFromFormatDesc";
    v13 = 1024;
    v14 = HeaderBuffer_0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", &v11, 0x12u);
  }

  return HeaderBuffer_0;
}

CAHDecDahliaLgh *createDahliaLghDecoder(CAVDLghDecoder *a1)
{
  v2 = operator new(0x11C8uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecDahliaLgh::CAHDecDahliaLgh(v2, a1);
  }

  return v3;
}

void CAHDecDahliaLgh::CAHDecDahliaLgh(CAHDecDahliaLgh *this, CAVDLghDecoder *a2)
{
  CAHDec::CAHDec(this);
  *v4 = &unk_288666050;
  *(v4 + 256) = a2;
  *(v4 + 456) = 151268;
  *(v4 + 8) = 740;
  *(v4 + 16) = xmmword_27775BC80;
  *(v4 + 32) = 1;
  *(v4 + 56) = a2;
  *(a2 + 4448) = 0;
  bzero(a2 + 12032, 0xB00uLL);
  *(a2 + 372) = 0u;
  bzero((*(this + 32) + 14848), 0xB00uLL);
  bzero(this + 464, 0xA50uLL);
  bzero((*(this + 32) + 5248), 0x2C0uLL);
  bzero(this + 3104, 0x580uLL);
  for (i = 2960; i != 3664; i += 176)
  {
    v6 = (*(this + 32) + i);
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
    v7 = (*(this + 32) + i);
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
  v8 = *(this + 32);
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
}

void CAHDecDahliaLgh::~CAHDecDahliaLgh(CAHDecDahliaLgh *this)
{
  *this = &unk_288666050;
  CAHDecDahliaLgh::freeWorkBuf_SPS(this);
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
  CAHDecDahliaLgh::~CAHDecDahliaLgh(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecDahliaLgh::init(CAHDecDahliaLgh *this)
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
        v13 = 210;
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
      v13 = 212;
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

uint64_t CAHDecDahliaLgh::startPicture(CAHDecDahliaLgh *this, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *(this + 13) = 0;
  v3 = *(this + 34);
  *(this + 33) = v3;
  if (v3)
  {
    bzero(v3, 0x24EE4uLL);
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

uint64_t CAHDecDahliaLgh::DecodePicture(CAHDecDahliaLgh *this, uint64_t a2)
{
  if (CAHDecDahliaLgh::startPicture(this, a2))
  {
    return 1;
  }

  (*(*this + 40))(this);
  (*(*this + 56))(this);
  (*(*this + 64))(this);
  CAHDecDahliaLgh::populateTiles(this);
  (*(*this + 96))(this, a2);
  (*(*this + 48))(this, *(this + 114));
  return 0;
}

uint64_t CAHDecDahliaLgh::populateTiles(CAHDecDahliaLgh *this)
{
  v1 = (*(*(*(this + 32) + 17800) + 316) * *(*(*(this + 32) + 17800) + 312));
  if (v1)
  {
    v3 = *(this + *(this + 13) + 34) + 740;
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

uint64_t CAHDecDahliaLgh::updateCommonRegisters(CAHDecDahliaLgh *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecDahliaLgh::populateSequenceRegisters(CAHDecDahliaLgh *this)
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

uint64_t CAHDecDahliaLgh::populatePictureRegisters(CAHDecDahliaLgh *this)
{
  v238 = *MEMORY[0x277D85DE8];
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

  v236 = *(v2 + 11988);
  v6 = *(v4 + 100);
  v232 = *(v4 + 96);
  v231 = 1 << v6;
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
  v233 = 1 << v232;
  v230 = v6;
  v229 = 1 << v232 << v6;
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
  v234 = v5;
  if (v5)
  {
    v235 = 8;
  }

  else
  {
    v54 = (v3 + 112);
    v55 = 2208;
    v235 = 3;
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
        *(buf + 14) = 551;
        _os_log_impl(&dword_277606000, v56, OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
        v59 = v54[3];
      }

      if ((v59 - 0x4000000) >= 0x7C010000 && os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "populatePictureRegisters";
        WORD6(buf[0]) = 1024;
        *(buf + 14) = 552;
        _os_log_impl(&dword_277606000, v56, OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
      }

      ++v55;
      ++v54;
    }

    while (v55 != 2211);
  }

  *(v3 + 144) = 0;
  v60 = *(v4 + 2672);
  *(v3 + 144) = v60;
  *(v3 + 144) = v60 | (*(v4 + 2676) << 16);
  v61 = *(v4 + 2680);
  *(v3 + 148) = v61;
  *(v3 + 148) = v61 | (*(v4 + 2684) << 16);
  v62 = this + 464;
  for (i = 168; i != 228; i += 4)
  {
    *(*(this + 33) + i) = 0;
    v64 = *(this + 33);
    v65 = *(v64 + i);
    *(v64 + i) = 0;
    *(*(this + 33) + i) ^= 0xFFFFFFFu;
    v66 = *(this + 33);
    v67 = *(v66 + i);
    *(v66 + i) = v65;
    if (*v62 || *(v62 + 38) || *(v62 + 39))
    {
      result = CAHDec::addToPatcherList(this, v62, i, 0, 0xFFFFFFFFFLL, 8, v67, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + i + 60) = 0;
    *(*(this + 33) + i + 60) = *(*(this + 33) + i + 60) & 0x800001FF | (((*(this + 1132) >> 9) & 0x3FFFFF) << 9);
    v62 += 176;
  }

  *(*(this + 33) + 288) = 0;
  v69 = *(this + 33);
  v70 = *(v69 + 288);
  *(v69 + 288) = 0;
  *(*(this + 33) + 288) ^= 0xFFFFFFFu;
  v71 = *(this + 33);
  v72 = *(v71 + 288);
  *(v71 + 288) = v70;
  v73 = *(this + 32);
  if (*(v73 + 5072) || *(v73 + 5224) || *(v73 + 5228))
  {
    result = CAHDec::addToPatcherList(this, (v73 + 5072), 288, 0, 0xFFFFFFFFFLL, 8, v72, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 292) = 0;
  if ((*(v3 + 50) & 8) != 0)
  {
    v74 = *(this + 33);
    v75 = *(*(this + 32) + 2680);
    memset(buf, 0, sizeof(buf));
    v76 = *(v74 + 16);
    *&buf[0] = v75;
    v77 = *(v74 + 292);
    *(v74 + 292) = 0;
    *(*(this + 33) + 292) ^= 0xFFFFFFFu;
    v78 = *(this + 33);
    v79 = *(v78 + 292);
    *(v78 + 292) = v77;
    if (v75)
    {
      result = CAHDec::addToPatcherList(this, buf, 292, (v76 & 0xF) << 9, 0xFFFFFFFFFLL, 8, v79, 4);
      if (result)
      {
        return result;
      }
    }
  }

  *(*(this + 33) + 344) = 0;
  v80 = *(this + 33);
  v81 = *(v80 + 344);
  *(v80 + 344) = 0;
  *(*(this + 33) + 344) ^= 0xFFFFFFFu;
  v82 = *(this + 33);
  v83 = *(v82 + 344);
  *(v82 + 344) = v81;
  if (*(this + 454) || *(this + 946) || *(this + 947))
  {
    result = CAHDec::addToPatcherList(this, this + 454, 344, 0, 0xFFFFFFFFFLL, 8, v83, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 296) = 0;
  v84 = *(this + 33);
  v85 = *(v84 + 296);
  *(v84 + 296) = 0;
  *(*(this + 33) + 296) ^= 0xFFFFFFFu;
  v86 = *(this + 33);
  v87 = *(v86 + 296);
  *(v86 + 296) = v85;
  if (*(this + 410) || *(this + 858) || *(this + 859))
  {
    result = CAHDec::addToPatcherList(this, this + 410, 296, 0, 0xFFFFFFFFFLL, 8, v87, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 300) = 0;
  v88 = *(this + 33);
  v89 = *(v88 + 300);
  *(v88 + 300) = 0;
  *(*(this + 33) + 300) ^= 0xFFFFFFFu;
  v90 = *(this + 33);
  v91 = *(v90 + 300);
  *(v90 + 300) = v89;
  if (*(this + 432) || *(this + 902) || *(this + 903))
  {
    result = CAHDec::addToPatcherList(this, this + 432, 300, 0, 0xFFFFFFFFFLL, 8, v91, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 304) = 0;
  *(*(this + 33) + 308) = 0;
  v92 = *(this + 33);
  v93 = *(v92 + 308);
  *(v92 + 308) = 0;
  *(*(this + 33) + 308) ^= 0xFFFFFFFu;
  v94 = *(this + 33);
  v95 = *(v94 + 308);
  *(v94 + 308) = v93;
  if (*(this + 476) || *(this + 990) || *(this + 991))
  {
    result = CAHDec::addToPatcherList(this, this + 476, 308, 0, 0xFFFFFFFFFLL, 8, v95, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 312) = 0;
  v96 = *(this + 33);
  v97 = *(v96 + 312);
  *(v96 + 312) = 0;
  *(*(this + 33) + 312) ^= 0xFFFFFFFu;
  v98 = *(this + 33);
  v99 = *(v98 + 312);
  *(v98 + 312) = v97;
  if (*(this + 498) || *(this + 1034) || *(this + 1035))
  {
    result = CAHDec::addToPatcherList(this, this + 498, 312, 0, 0xFFFFFFFFFLL, 8, v99, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 316) = 0;
  v100 = *(this + 33);
  v101 = *(v100 + 316);
  *(v100 + 316) = 0;
  *(*(this + 33) + 316) ^= 0xFFFFFFFu;
  v102 = *(this + 33);
  v103 = *(v102 + 316);
  *(v102 + 316) = v101;
  if (*(this + 520) || *(this + 1078) || *(this + 1079))
  {
    result = CAHDec::addToPatcherList(this, this + 520, 316, 0, 0xFFFFFFFFFLL, 8, v103, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 320) = 0;
  v104 = *(this + 33);
  v105 = *(v104 + 320);
  *(v104 + 320) = 0;
  *(*(this + 33) + 320) ^= 0xFFFFFFFu;
  v106 = *(this + 33);
  v107 = *(v106 + 320);
  *(v106 + 320) = v105;
  if (*(this + 542) || *(this + 1122) || *(this + 1123))
  {
    result = CAHDec::addToPatcherList(this, this + 542, 320, 0, 0xFFFFFFFFFLL, 8, v107, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 324) = 0;
  v108 = *(this + 33);
  v109 = *(v108 + 324);
  *(v108 + 324) = 0;
  *(*(this + 33) + 324) ^= 0xFFFFFFFu;
  v110 = *(this + 33);
  v111 = *(v110 + 324);
  *(v110 + 324) = v109;
  v112 = (*(this + 32) + 176 * *(*(this + 32) + 17808) + 2960);
  if (*v112 || *(*(this + 32) + 176 * *(*(this + 32) + 17808) + 3112) || *(*(this + 32) + 176 * *(*(this + 32) + 17808) + 3116))
  {
    result = CAHDec::addToPatcherList(this, v112, 324, 0, 0xFFFFFFFFFLL, 8, v111, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 328) &= 0xF0000000;
  v113 = *(this + 33);
  v114 = *(v113 + 328);
  *(v113 + 328) = 0;
  *(*(this + 33) + 328) ^= 0xFFFFFFFu;
  v115 = *(this + 33);
  v116 = *(v115 + 328);
  *(v115 + 328) = v114;
  v117 = (*(this + 32) + 176 * *(*(this + 32) + 5964) + 3664);
  if (*v117 || *(*(this + 32) + 176 * *(*(this + 32) + 5964) + 3816) || *(*(this + 32) + 176 * *(*(this + 32) + 5964) + 3820))
  {
    result = CAHDec::addToPatcherList(this, v117, 328, 0, 0xFFFFFFFFFLL, 8, v116, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 332) &= 0xF0000000;
  v118 = *(this + 33);
  v119 = *(v118 + 332);
  *(v118 + 332) = 0;
  *(*(this + 33) + 332) ^= 0xFFFFFFFu;
  v120 = *(this + 33);
  v121 = *(v120 + 332);
  *(v120 + 332) = v119;
  v122 = (*(this + 32) + 176 * *(*(this + 32) + 5960) + 3664);
  if (*v122 || *(*(this + 32) + 176 * *(*(this + 32) + 5960) + 3816) || *(*(this + 32) + 176 * *(*(this + 32) + 5960) + 3820))
  {
    result = CAHDec::addToPatcherList(this, v122, 332, 0, 0xFFFFFFFFFLL, 8, v121, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 336) = 0;
  v123 = *(this + 33);
  v124 = *(v123 + 336);
  *(v123 + 336) = 0;
  *(*(this + 33) + 336) ^= 0xFFFFFFFu;
  v125 = *(this + 33);
  v126 = *(v125 + 336);
  *(v125 + 336) = v124;
  v127 = (*(this + 32) + 176 * *(*(this + 32) + 5956) + 5248);
  if (*v127 || *(*(this + 32) + 176 * *(*(this + 32) + 5956) + 5400) || *(*(this + 32) + 176 * *(*(this + 32) + 5956) + 5404))
  {
    result = CAHDec::addToPatcherList(this, v127, 336, 0, 0xFFFFFFFFFLL, 8, v126, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 340) = 0;
  v128 = *(this + 33);
  v129 = *(v128 + 340);
  *(v128 + 340) = 0;
  *(*(this + 33) + 340) ^= 0xFFFFFFFu;
  v130 = *(this + 33);
  v131 = *(v130 + 340);
  *(v130 + 340) = v129;
  v132 = (*(this + 32) + 176 * *(*(this + 32) + 5952) + 5248);
  if (*v132 || *(*(this + 32) + 176 * *(*(this + 32) + 5952) + 5400) || *(*(this + 32) + 176 * *(*(this + 32) + 5952) + 5404))
  {
    result = CAHDec::addToPatcherList(this, v132, 340, 0, 0xFFFFFFFFFLL, 8, v131, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 348) = 0;
  *(*(this + 33) + 352) = 0;
  *(*(this + 33) + 356) = 0;
  *(*(this + 33) + 360) = 0;
  v133 = *(this + 33);
  v134 = *(v133 + 352);
  *(v133 + 352) = 0;
  *(*(this + 33) + 352) ^= 0x1FFFFFFFu;
  v135 = *(this + 33);
  v136 = *(v135 + 352);
  *(v135 + 352) = v134;
  v137 = *(*(this + 32) + 376 * v236 + 5976);
  if (*v137 || *(v137 + 152) || *(v137 + 156))
  {
    result = CAHDec::addToPatcherList(this, v137, 352, *(v137 + 52), 0xFFFFFFFFFLL, 7, v136, 4);
    if (result)
    {
      return result;
    }
  }

  v138 = *(this + 33);
  v139 = *(v138 + 360);
  *(v138 + 360) = 0;
  *(*(this + 33) + 360) ^= 0x1FFFFFFFu;
  v140 = *(this + 33);
  v141 = *(v140 + 360);
  *(v140 + 360) = v139;
  v142 = *(this + 32);
  v143 = *(v142 + 376 * v236 + 5976);
  if (*v143 || *(v143 + 152) || *(v143 + 156))
  {
    result = CAHDec::addToPatcherList(this, v143, 360, *(v143 + 56), 0xFFFFFFFFFLL, 7, v141, 4);
    if (result)
    {
      return result;
    }

    v142 = *(this + 32);
  }

  v144 = *(v142 + 2648);
  v145 = *(this + 33);
  v146 = *(v145 + 348);
  *(v145 + 348) = 0;
  *(*(this + 33) + 348) ^= 0x1FFFFFFFu;
  v147 = *(this + 33);
  v148 = *(v147 + 348);
  *(v147 + 348) = v146;
  v149 = *(this + 32) + 5968;
  if (v144 == 1)
  {
    v150 = *(v149 + 376 * v236 + 8);
    if (!*v150 && !*(v150 + 152) && !*(v150 + 156) || (result = CAHDec::addToPatcherList(this, v150, 348, *(v150 + 64), 0xFFFFFFFFFLL, 7, v148, 4), !result))
    {
      v151 = *(this + 33);
      v152 = *(v151 + 356);
      *(v151 + 356) = 0;
      *(*(this + 33) + 356) ^= 0x1FFFFFFFu;
      v153 = *(this + 33);
      v154 = *(v153 + 356);
      *(v153 + 356) = v152;
      v155 = *(*(this + 32) + 376 * v236 + 5976);
      if (*v155 || *(v155 + 152) || *(v155 + 156))
      {
        v156 = *(v155 + 68);
        v157 = this;
        goto LABEL_124;
      }

      goto LABEL_125;
    }

    return result;
  }

  v158 = v149 + 376 * v236;
  v160 = *(v158 + 24);
  v159 = v158 + 24;
  if (v160 || *(v159 + 152) || *(v159 + 156))
  {
    result = CAHDec::addToPatcherList(this, v159, 348, 0, 0xFFFFFFFFFLL, 7, v148, 4);
    if (result)
    {
      return result;
    }
  }

  v161 = *(this + 33);
  v162 = *(v161 + 356);
  *(v161 + 356) = 0;
  *(*(this + 33) + 356) ^= 0x1FFFFFFFu;
  v163 = *(this + 33);
  v154 = *(v163 + 356);
  *(v163 + 356) = v162;
  v155 = *(this + 32) + 376 * v236 + 6168;
  if (*v155 || *(*(this + 32) + 376 * v236 + 6320) || *(*(this + 32) + 376 * v236 + 6324))
  {
    v157 = this;
    v156 = 0;
LABEL_124:
    result = CAHDec::addToPatcherList(v157, v155, 356, v156, 0xFFFFFFFFFLL, 7, v154, 4);
    if (result)
    {
      return result;
    }
  }

LABEL_125:
  if (!v234)
  {
    v187 = 0;
    v188 = 17664;
    do
    {
      v189 = *(*(*(this + 32) + v188) + 40);
      *(*(this + 33) + v187 + 376) = 0;
      *(*(this + 33) + v187 + 388) = 0;
      *(*(this + 33) + v187 + 400) = 0;
      *(*(this + 33) + v187 + 412) = 0;
      v190 = *(this + 33) + v187;
      v191 = *(v190 + 388);
      *(v190 + 388) = 0;
      *(*(this + 33) + v187 + 388) ^= 0x1FFFFFFFu;
      v192 = *(this + 33) + v187;
      v193 = *(v192 + 388);
      *(v192 + 388) = v191;
      v194 = *(v189 + 8);
      if (*v194 || *(v194 + 152) || *(v194 + 156))
      {
        result = CAHDec::addToPatcherList(this, v194, v187 + 388, *(v194 + 52), 0xFFFFFFFFFLL, 7, v193, 4);
        if (result)
        {
          return result;
        }
      }

      v195 = *(this + 33) + v187;
      v196 = *(v195 + 412);
      *(v195 + 412) = 0;
      *(*(this + 33) + v187 + 412) ^= 0x1FFFFFFFu;
      v197 = *(this + 33) + v187;
      v198 = *(v197 + 412);
      *(v197 + 412) = v196;
      v199 = *(v189 + 8);
      if (*v199 || *(v199 + 152) || *(v199 + 156))
      {
        result = CAHDec::addToPatcherList(this, v199, v187 + 412, *(v199 + 56), 0xFFFFFFFFFLL, 7, v198, 4);
        if (result)
        {
          return result;
        }
      }

      v200 = *(*(this + 32) + 2648);
      v201 = *(this + 33) + v187;
      v202 = *(v201 + 376);
      *(v201 + 376) = 0;
      *(*(this + 33) + v187 + 376) ^= 0x1FFFFFFFu;
      v203 = *(this + 33) + v187;
      v204 = *(v203 + 376);
      *(v203 + 376) = v202;
      if (v200 == 1)
      {
        v205 = *(v189 + 8);
        if (*v205 || *(v205 + 152) || *(v205 + 156))
        {
          result = CAHDec::addToPatcherList(this, v205, v187 + 376, *(v205 + 64), 0xFFFFFFFFFLL, 7, v204, 4);
          if (result)
          {
            return result;
          }
        }

        v206 = *(this + 33) + v187;
        v207 = *(v206 + 400);
        *(v206 + 400) = 0;
        *(*(this + 33) + v187 + 400) ^= 0x1FFFFFFFu;
        v208 = *(this + 33) + v187;
        v209 = *(v208 + 400);
        *(v208 + 400) = v207;
        v210 = *(v189 + 8);
        if (*v210 || *(v210 + 152) || *(v210 + 156))
        {
          v211 = *(v210 + 68);
          v212 = v187 | 0x190;
          v213 = this;
          goto LABEL_172;
        }
      }

      else
      {
        if (*(v189 + 24) || *(v189 + 176) || *(v189 + 180))
        {
          result = CAHDec::addToPatcherList(this, (v189 + 24), v187 + 376, 0, 0xFFFFFFFFFLL, 7, v204, 4);
          if (result)
          {
            return result;
          }
        }

        v214 = *(this + 33) + v187;
        v215 = *(v214 + 400);
        *(v214 + 400) = 0;
        *(*(this + 33) + v187 + 400) ^= 0x1FFFFFFFu;
        v216 = *(this + 33) + v187;
        v209 = *(v216 + 400);
        *(v216 + 400) = v215;
        v210 = v189 + 200;
        if (*(v189 + 200) || *(v189 + 352) || *(v189 + 356))
        {
          v212 = v187 | 0x190;
          v213 = this;
          v211 = 0;
LABEL_172:
          result = CAHDec::addToPatcherList(v213, v210, v212, v211, 0xFFFFFFFFFLL, 7, v209, 4);
          if (result)
          {
            return result;
          }
        }
      }

      v188 += 8;
      v187 += 4;
    }

    while (v187 != 12);
  }

  v164 = subWidth[*(*(*(this + 32) + 17800) + 4)];
  *(*(this + 33) + 424) = 0;
  *(*(this + 33) + 428) = 0;
  *(*(this + 33) + 432) = 0;
  *(*(this + 33) + 436) = 0;
  if (*(*(this + 32) + 2644))
  {
    v165 = *(this + 33);
    v166 = *(v165 + 424);
    *(v165 + 424) = 0;
    *(*(this + 33) + 424) ^= 0xFFFFFFFu;
    v167 = *(this + 33);
    v168 = *(v167 + 424);
    *(v167 + 424) = v166;
    v169 = *(*(this + 32) + 12008);
    if (*v169 || *(v169 + 152) || *(v169 + 156))
    {
      result = CAHDec::addToPatcherList(this, v169, 424, *(v169 + 52), 0xFFFFFFFFFLL, 8, v168, 4);
      if (result)
      {
        return result;
      }
    }

    v170 = *(this + 33);
    v171 = *(v170 + 428);
    *(v170 + 428) = 0;
    *(*(this + 33) + 428) ^= 0xFFFFFFFu;
    v172 = *(this + 33);
    v173 = *(v172 + 428);
    *(v172 + 428) = v171;
    v174 = *(*(this + 32) + 12008);
    if (*v174 || *(v174 + 152) || *(v174 + 156))
    {
      result = CAHDec::addToPatcherList(this, v174, 428, *(v174 + 56), 0xFFFFFFFFFLL, 8, v173, 4);
      if (result)
      {
        return result;
      }
    }

    v175 = *(this + 33);
    v176 = *(v175 + 432);
    *(v175 + 432) = 0;
    *(*(this + 33) + 432) ^= 0xC0000000;
    v177 = *(this + 33);
    v178 = *(v177 + 432);
    *(v177 + 432) = v176;
    v179 = *(*(this + 32) + 12008);
    if (*v179 || *(v179 + 152) || *(v179 + 156))
    {
      result = CAHDec::addToPatcherList(this, v179, 432, *(v179 + 52), 192, 6, v178, 4);
      if (result)
      {
        return result;
      }
    }

    v180 = *(this + 33);
    v181 = *(v180 + 436);
    *(v180 + 436) = 0;
    *(*(this + 33) + 436) ^= 0xC0000000;
    v182 = *(this + 33);
    v183 = *(v182 + 436);
    *(v182 + 436) = v181;
    v184 = *(this + 32);
    v185 = *(v184 + 12008);
    if (*v185 || *(v185 + 152) || *(v185 + 156))
    {
      result = CAHDec::addToPatcherList(this, v185, 436, *(v185 + 56), 192, 6, v183, 4);
      if (result)
      {
        return result;
      }

      v184 = *(this + 32);
    }

    if (*(v184 + 8) == 1)
    {
      *(*(this + 33) + 432) = *(*(this + 33) + 432) & 0xFFFFC003 | (4 * ((*(*(v184 + 12008) + 76) >> 6) & 0xFFF));
      v186 = (*(*(this + 32) + 12008) + 80);
    }

    else
    {
      if (CAHDecIxoraLgh::getSWRStride(this, *(v3 + 148) + 1, *(v4 + 105) - 8, *(v4 + 105) - 8, v164))
      {
        return 0xFFFFFFFFLL;
      }

      *(*(this + 33) + 432) = *(*(this + 33) + 432) & 0xFFFFC003 | (4 * ((*(this + 1135) >> 6) & 0xFFF));
      v186 = (this + 4544);
    }

    *(*(this + 33) + 436) = *(*(this + 33) + 436) & 0xFFFF8003 | (4 * ((*v186 >> 6) & 0x1FFF));
  }

  if (v229 < 2)
  {
    v217 = *(this + 33);
    *(v217 + 440) = 65537;
    *(v217 + 444) = 0;
    *(v217 + 446) = *(v4 + 108) >> 6;
    *(v217 + 574) = 0;
    *(v217 + 576) = *(v4 + 112) >> 6;
    v218 = *(this + 32);
  }

  else
  {
    v217 = *(this + 33);
    *(v217 + 440) = v233;
    v218 = *(this + 32);
    if (v230 != 31)
    {
      if (v231 <= 1)
      {
        v219 = 1;
      }

      else
      {
        v219 = v231;
      }

      v220 = (*(v218 + 17800) + 2786);
      do
      {
        if ((*v220 & 1) == 0)
        {
          *(v217 + 574 + 2 * v235) = *(v220 - 26) >> 3;
        }

        v220 += 1792;
        --v219;
      }

      while (v219);
    }

    *(v217 + 442) = v231;
    if (v232 != 31)
    {
      if (v233 <= 1)
      {
        v221 = 1;
      }

      else
      {
        v221 = v233;
      }

      v222 = *(v218 + 17800) + 2768;
      do
      {
        if ((*(v222 + 18) & 1) == 0)
        {
          *(v217 + 444 + 2 * v235) = *v222 >> 3;
        }

        v222 += 28;
        --v221;
      }

      while (v221);
    }
  }

  if (*(v218 + 2360) != 1)
  {
    return 0;
  }

  *(v217 + 588) = *(v217 + 588) & 0xFFFFFFFE | *(v218 + 2508) & 1;
  if (*(v218 + 2508))
  {
    *(v217 + 596) = 0x10000000;
    *(v217 + 600) = *(v218 + 2368);
    *(v217 + 608) = 0;
    *(v217 + 604) = 0;
    *(v217 + 616) = *(v218 + 2372);
    v223 = *(v218 + 2404);
    *(v217 + 632) = *(v218 + 2388);
    *(v217 + 648) = v223;
  }

  *(*(this + 33) + 588) = *(*(this + 33) + 588) & 0xFFFFFFFD | (2 * (*(v218 + 2512) & 1));
  if (*(v218 + 2512))
  {
    *(v217 + 664) = 0;
    v224 = *(v218 + 2424);
    *(v217 + 664) = (*(v218 + 2424) & 1) << 22;
    v225 = ((*(v218 + 2420) & 1) << 23) | ((v224 & 1) << 22) | 0x20000000;
    *(v217 + 664) = v225;
    if (!*(v218 + 2364))
    {
      ++v225;
    }

    *(v217 + 664) = v225;
    v226 = *(v218 + 2428);
    v227 = *(v218 + 2460);
    *(v217 + 684) = *(v218 + 2444);
    *(v217 + 700) = v227;
    *(v217 + 668) = v226;
  }

  *(*(this + 33) + 588) = *(*(this + 33) + 588) & 0xFFFFFFFB | (4 * (*(v218 + 2516) & 1));
  *(*(this + 33) + 588) = *(*(this + 33) + 588) & 0xFFFFFFF7 | (8 * (*(v218 + 2520) & 1));
  *(*(this + 33) + 588) = *(*(this + 33) + 588) & 0xFFFFFFEF | (16 * (*(v218 + 2524) & 1));
  *(v217 + 720) = 0;
  v228 = *(v218 + 2476) == 2 ? 805306368 : 813694976;
  *(v217 + 720) = v228;
  memcpy((v217 + 724), (v218 + 2480), 4 * *(v218 + 2476));
  if (!*(v218 + 2516))
  {
    return 0;
  }

  result = 0;
  *(v218 + 2516) = 0;
  return result;
}