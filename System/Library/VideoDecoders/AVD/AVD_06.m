uint64_t CAHDecCloverAvc::populateSequenceRegisters(CAHDecCloverAvc *this)
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

    CAHDecCloverAvc::AvcSeqScalingListFallBack(this, v8);
    CAHDecCloverAvc::copyScalingList(v16, v3 + 12, *(this + 33) + 636, v8 + 22, v8 + 34, v8 + 130, v15);
  }

  return 0;
}

uint64_t CAHDecCloverAvc::populatePictureRegisters(CAHDecCloverAvc *this)
{
  v206 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(v2 + 3500);
  v4 = *(v2 + 3504);
  v5 = *(v2 + 3184);
  v6 = *(v2 + 3192);
  v7 = *(v2 + 2088);
  v8 = *(v2 + 3040);
  v9 = *(v2 + 2644);
  v190 = *(v2 + 8);
  v191 = *(v2 + 3020);
  v10 = *(v2 + 6904);
  v205[8] = *(v2 + 6888);
  v205[9] = v10;
  v11 = *(v2 + 6936);
  v205[10] = *(v2 + 6920);
  v205[11] = v11;
  v12 = *(v2 + 6840);
  v205[4] = *(v2 + 6824);
  v205[5] = v12;
  v13 = *(v2 + 6872);
  v205[6] = *(v2 + 6856);
  v205[7] = v13;
  v14 = *(v2 + 6776);
  v205[0] = *(v2 + 6760);
  v205[1] = v14;
  v15 = *(v2 + 6808);
  v205[2] = *(v2 + 6792);
  v205[3] = v15;
  v16 = *(v2 + 6952);
  v17 = (*(*v2 + 184))(v2);
  v18 = 672;
  if (v17)
  {
    if (*(*(this + 32) + 2756))
    {
      v18 = 688;
    }

    else
    {
      v18 = 672;
    }
  }

  v19 = *(this + 33);
  v20 = v5 + 2224 * v3;
  v21 = (v6 + 604 * v4);
  *(v19 + 52) = 766509056;
  if (**(*(this + 32) + 3200) == 5)
  {
    v22 = 766517248;
  }

  else
  {
    v22 = 766509056;
  }

  if (v9 == 1)
  {
    v23 = 1024;
  }

  else
  {
    v23 = 1;
  }

  if (v9)
  {
    v24 = 4107;
  }

  else
  {
    v24 = 11;
  }

  *(v19 + 52) = v24 | v23 | v18 | v22;
  *(v19 + 56) = 0x1000000;
  v25 = (*(v20 + 8) & 1) << 18;
  *(v19 + 60) = v25;
  v26 = v25 & 0xFFF7FFFF | ((v21[93] & 1) << 19);
  *(v19 + 60) = v26;
  v27 = v26 & 0xFFEFFFFF | ((v21[3] & 1) << 20);
  *(v19 + 60) = v27;
  *(v19 + 60) = v27 | ((**(*(this + 32) + 3200) != 5) << 21);
  v28 = *(v19 + 64) & 0xFFFFFC1F | (32 * (v21[91] & 0x1F));
  *(v19 + 64) = v28;
  *(v19 + 64) = v28 & 0xFFFFFFE0 | v21[601] & 0x1F;
  if (v21[96])
  {
    if (*(v20 + 4) == 3)
    {
      v29 = 12;
    }

    else
    {
      v29 = 8;
    }

    v30 = *(this + 33);
    CAHDecCloverAvc::AvcPicScalingListFallBack(v17, v20, v21);
    CAHDecCloverAvc::copyScalingList(v31, (v19 + 68), v30 + 1120, (v21 + 109), (v21 + 121), (v21 + 217), v29);
  }

  *(v19 + 72) = *(this + 3978);
  *(v19 + 76) = *(this + 3979);
  *(v19 + 80) = 3145738;
  v32 = this + 9008;
  for (i = 84; i != 112; i += 4)
  {
    *(*(this + 33) + i) = 0;
    v34 = *(this + 33);
    v35 = *(v34 + i);
    *(v34 + i) = 0;
    *(*(this + 33) + i) ^= 0xFFFFFFu;
    v36 = *(this + 33);
    v37 = *(v36 + i);
    *(v36 + i) = v35;
    if (*v32 || *(v32 + 38) || *(v32 + 39))
    {
      result = CAHDec::addToPatcherList(this, v32, i, 0, 0xFFFFFFFFLL, 8, v37, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + i + 28) = 0;
    *(*(this + 33) + i + 28) = *(*(this + 33) + i + 28) & 0x800001FF | (((*(this + 3972) >> 9) & 0x3FFFFF) << 9);
    v32 += 176;
  }

  *(*(this + 33) + 140) = 0;
  *(*(this + 33) + 144) = 0;
  *(*(this + 33) + 148) = 0;
  v39 = *(this + 33);
  v40 = *(v39 + 148);
  *(v39 + 148) = 0;
  *(*(this + 33) + 148) ^= 0xFFFFFFu;
  v41 = *(this + 33);
  v42 = *(v41 + 148);
  *(v41 + 148) = v40;
  if (!*(this + 1830) && !*(this + 3698) && !*(this + 3699) || (result = CAHDec::addToPatcherList(this, this + 1830, 148, 0, 0xFFFFFFFFLL, 8, v42, 4), !result))
  {
    if ((*(*(this + 33) + 152) = 0, v43 = *(this + 33), v44 = *(v43 + 152), *(v43 + 152) = 0, *(*(this + 33) + 152) ^= 0xFFFFFFu, v45 = *(this + 33), v46 = *(v45 + 152), *(v45 + 152) = v44, !*(this + 1852)) && !*(this + 3742) && !*(this + 3743) || (result = CAHDec::addToPatcherList(this, this + 1852, 152, 0, 0xFFFFFFFFLL, 8, v46, 4), !result))
    {
      if ((*(*(this + 33) + 156) = 0, v47 = *(this + 33), v48 = *(v47 + 156), *(v47 + 156) = 0, *(*(this + 33) + 156) ^= 0xFFFFFFu, v49 = *(this + 33), v50 = *(v49 + 156), *(v49 + 156) = v48, !*(this + 1874)) && !*(this + 3786) && !*(this + 3787) || (result = CAHDec::addToPatcherList(this, this + 1874, 156, 0, 0xFFFFFFFFLL, 8, v50, 4), !result))
      {
        if ((*(*(this + 33) + 160) = 0, v51 = *(this + 33), v52 = *(v51 + 160), *(v51 + 160) = 0, *(*(this + 33) + 160) ^= 0xFFFFFFu, v53 = *(this + 33), v54 = *(v53 + 160), *(v53 + 160) = v52, !*(this + 1896)) && !*(this + 3830) && !*(this + 3831) || (result = CAHDec::addToPatcherList(this, this + 1896, 160, 0, 0xFFFFFFFFLL, 8, v54, 4), !result))
        {
          if ((*(*(this + 33) + 164) = 0, v55 = *(this + 33), v56 = *(v55 + 164), *(v55 + 164) = 0, *(*(this + 33) + 164) ^= 0xFFFFFFu, v57 = *(this + 33), v58 = *(v57 + 164), *(v57 + 164) = v56, !*(this + 1918)) && !*(this + 3874) && !*(this + 3875) || (result = CAHDec::addToPatcherList(this, this + 1918, 164, 0, 0xFFFFFFFFLL, 8, v58, 4), !result))
          {
            if ((*(*(this + 33) + 168) = 0, v59 = *(this + 33), v60 = *(v59 + 168), *(v59 + 168) = 0, *(*(this + 33) + 168) ^= 0xFFFFFFu, v61 = *(this + 33), v62 = *(v61 + 168), *(v61 + 168) = v60, !*(this + 1940)) && !*(this + 3918) && !*(this + 3919) || (result = CAHDec::addToPatcherList(this, this + 1940, 168, 0, 0xFFFFFFFFLL, 8, v62, 4), !result))
            {
              if ((*(*(this + 33) + 172) = 0, *(*(this + 33) + 176) = 0, v63 = *(this + 33), v64 = *(v63 + 176), *(v63 + 176) = 0, *(*(this + 33) + 176) ^= 0xFFFFFFu, v65 = *(this + 33), v66 = *(v65 + 176), *(v65 + 176) = v64, !*(this + 1280)) && !*(this + 2598) && !*(this + 2599) || (result = CAHDec::addToPatcherList(this, this + 1280, 176, 0, 0xFFFFFFFFLL, 8, v66, 4), !result))
              {
                if ((*(*(this + 33) + 180) = 0, v67 = *(this + 33), v68 = *(v67 + 180), *(v67 + 180) = 0, *(*(this + 33) + 180) ^= 0xFFFFFFu, v69 = *(this + 33), v70 = *(v69 + 180), *(v69 + 180) = v68, v71 = (this + 176 * v8 + 10416), !*v71) && !*(this + 44 * v8 + 2642) && !*(this + 44 * v8 + 2643) || (result = CAHDec::addToPatcherList(this, v71, 180, 0, 0xFFFFFFFFLL, 8, v70, 4), !result))
                {
                  if ((*(*(this + 33) + 184) = 0, v72 = *(this + 33), v73 = *(v72 + 184), *(v72 + 184) = 0, *(*(this + 33) + 184) ^= 0xFFFFFFu, v74 = *(this + 33), v75 = *(v74 + 184), *(v74 + 184) = v73, v76 = this + 176 * v8 + 560, !*v76) && !*(v76 + 38) && !*(v76 + 39) || (result = CAHDec::addToPatcherList(this, v76, 184, 0, 0xFFFFFFFFLL, 8, v75, 4), !result))
                  {
                    if ((*(*(this + 33) + 188) = 0, v77 = *(this + 33), v78 = *(v77 + 188), *(v77 + 188) = 0, *(*(this + 33) + 188) ^= 0xFFFFFFu, v79 = *(this + 33), v80 = *(v79 + 188), *(v79 + 188) = v78, v81 = (v7 + 8), !*(v7 + 8)) && !*(v7 + 160) && !*(v7 + 164) || (result = CAHDec::addToPatcherList(this, (v7 + 8), 188, *(v7 + 60), 0xFFFFFFFFLL, 8, v80, 4), !result))
                    {
                      if ((*(*(this + 33) + 192) = 0, v82 = *(this + 33), v83 = *(v82 + 192), *(v82 + 192) = 0, *(*(this + 33) + 192) ^= 0xFFFFFFu, v84 = *(this + 33), v85 = *(v84 + 192), *(v84 + 192) = v83, v86 = this + 176 * v8 + 4784, !*v86) && !*(v86 + 38) && !*(v86 + 39) || (result = CAHDec::addToPatcherList(this, v86, 192, 0, 0xFFFFFFFFLL, 8, v85, 4), !result))
                      {
                        if ((*(*(this + 33) + 196) = 0, v87 = *(this + 33), v88 = *(v87 + 196), *(v87 + 196) = 0, *(*(this + 33) + 196) ^= 0xFFFFFFu, v89 = *(this + 33), v90 = *(v89 + 196), *(v89 + 196) = v88, !*v81) && !*(v7 + 160) && !*(v7 + 164) || (result = CAHDec::addToPatcherList(this, (v7 + 8), 196, *(v7 + 64), 0xFFFFFFFFLL, 8, v90, 4), !result))
                        {
                          if (*(*(this + 32) + 2648) != 1 || ((v91 = *(this + 33), v92 = *(v91 + 188), *(v91 + 188) = 0, *(*(this + 33) + 188) ^= 0xFFFFFFu, v93 = *(this + 33), v94 = *(v93 + 188), *(v93 + 188) = v92, !*v81) && !*(v7 + 160) && !*(v7 + 164) || (result = CAHDec::addToPatcherList(this, (v7 + 8), 188, *(v7 + 60), 0xFFFFFFFFLL, 8, v94, 4), !result)) && ((v95 = *(this + 33), v96 = *(v95 + 196), *(v95 + 196) = 0, *(*(this + 33) + 196) ^= 0xFFFFFFu, v97 = *(this + 33), v98 = *(v97 + 196), *(v97 + 196) = v96, !*v81) && !*(v7 + 160) && !*(v7 + 164) || (result = CAHDec::addToPatcherList(this, (v7 + 8), 196, *(v7 + 64), 0xFFFFFFFFLL, 8, v98, 4), !result)) && ((v99 = *(this + 33), v100 = *(v99 + 184), *(v99 + 184) = 0, *(*(this + 33) + 184) ^= 0xFFFFFFu, v101 = *(this + 33), v102 = *(v101 + 184), *(v101 + 184) = v100, !*v81) && !*(v7 + 160) && !*(v7 + 164) || (result = CAHDec::addToPatcherList(this, (v7 + 8), 184, *(v7 + 72), 0xFFFFFFFFLL, 8, v102, 4), !result)) && ((v103 = *(this + 33), v104 = *(v103 + 192), *(v103 + 192) = 0, *(*(this + 33) + 192) ^= 0xFFFFFFu, v105 = *(this + 33), v106 = *(v105 + 192), *(v105 + 192) = v104, !*v81) && !*(v7 + 160) && !*(v7 + 164) || (result = CAHDec::addToPatcherList(this, (v7 + 8), 192, *(v7 + 76), 0xFFFFFFFFLL, 8, v106, 4), !result)))
                          {
                            if (*(v19 + 52) & 0x2000 | v16)
                            {
                              *(this + v8 + 116) = 0;
                              *(*(this + 33) + 200) = 0;
                              if (v16)
                              {
                                for (j = 0; j != v16; ++j)
                                {
                                  v108 = *(v205 + j);
                                  v109 = *(v108 + 32);
                                  *(*(this + 33) + 4 * j + 200) = 0;
                                  *(*(this + 33) + 4 * j + 200) = *(*(this + 33) + 4 * j + 200) & 0xFFFFFFF | ((v16 << 28) - 0x10000000);
                                  *(*(this + 33) + 4 * j + 200) &= 0xF3FFFFFF;
                                  *(*(this + 33) + 4 * j + 200) = v191 - *(v108 + 12);
                                  *(*(this + 33) + 4 * j + 200) = *(*(this + 33) + 4 * j + 200) & 0xFFFEFFFF | ((*(v108 + 1) & 1) << 16);
                                  v110 = *(this + 32);
                                  if (*(v108 + 28) == 1)
                                  {
                                    v203 = 0u;
                                    v204 = 0u;
                                    v201 = 0u;
                                    v202 = 0u;
                                    v199 = 0u;
                                    v200 = 0u;
                                    v197 = 0u;
                                    v198 = 0u;
                                    v195 = 0u;
                                    v196 = 0u;
                                    memset(buf, 0, sizeof(buf));
                                    DPB = AVC_RLM::getDPB(*(v110 + 2992), buf);
                                    if (DPB < 1)
                                    {
                                      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                      {
                                        return 0xFFFFFFFFLL;
                                      }

                                      v192 = 136315138;
                                      v193 = "populatePictureRegisters";
                                      v157 = MEMORY[0x277D86220];
                                      v158 = "AppleAVD: ERROR: %s: No ref pics found!\n";
                                    }

                                    else
                                    {
                                      v112 = DPB;
                                      while (v112 >= 1)
                                      {
                                        v108 = buf[--v112];
                                        if (!*(v108 + 28))
                                        {
                                          v109 = *(v108 + 32);
                                          v110 = *(this + 32);
                                          *(v110 + 2702) = 1;
                                          goto LABEL_101;
                                        }
                                      }

                                      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                      {
                                        return 0xFFFFFFFFLL;
                                      }

                                      v192 = 136315138;
                                      v193 = "populatePictureRegisters";
                                      v157 = MEMORY[0x277D86220];
                                      v158 = "AppleAVD: ERROR: %s: No non-existing ref frames found!\n";
                                    }

                                    v159 = &v192;
                                    v160 = 12;
                                    goto LABEL_155;
                                  }

LABEL_101:
                                  if ((*(*v110 + 184))(v110))
                                  {
                                    v113 = *(this + 32);
                                    if (*(v113 + 2756))
                                    {
                                      buf[0] = 0;
                                      if ((CAVDAvcDecoder::decodeGetRenderTargetRef(v113, v109, *(v108 + 56), *(v108 + 64), buf) & 1) == 0)
                                      {
                                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                        {
                                          LOWORD(v192) = 0;
                                          v157 = MEMORY[0x277D86220];
                                          v158 = "AppleAVD: decodeGetRenderTargetRef RETURNED ERROR\n";
                                          v159 = &v192;
                                          v160 = 2;
LABEL_155:
                                          _os_log_impl(&dword_277606000, v157, OS_LOG_TYPE_DEFAULT, v158, v159, v160);
                                        }

                                        return 0xFFFFFFFFLL;
                                      }

                                      *(v108 + 40) = buf[0] + 8;
                                    }
                                  }

                                  *(*(this + 33) + 4 * j + 264) = 0;
                                  v189 = 4 * j;
                                  v114 = *(this + 33) + 4 * j;
                                  v115 = *(v114 + 264);
                                  *(v114 + 264) = 0;
                                  *(*(this + 33) + 4 * j + 264) ^= 0xFFFFFFu;
                                  v116 = *(this + 33) + 4 * j;
                                  v117 = *(v116 + 264);
                                  *(v116 + 264) = v115;
                                  v118 = this + 176 * v109 + 560;
                                  if (*v118 || *(v118 + 38) || *(v118 + 39))
                                  {
                                    result = CAHDec::addToPatcherList(this, v118, v189 + 264, 0, 0xFFFFFFFFLL, 8, v117, 4);
                                    if (result)
                                    {
                                      return result;
                                    }
                                  }

                                  *(*(this + 33) + 4 * j + 328) = 0;
                                  v119 = *(this + 33) + 4 * j;
                                  v120 = *(v119 + 328);
                                  *(v119 + 328) = 0;
                                  *(*(this + 33) + 4 * j + 328) ^= 0xFFFFFFu;
                                  v121 = *(this + 33) + 4 * j;
                                  v122 = *(v121 + 328);
                                  *(v121 + 328) = v120;
                                  v123 = *(v108 + 40);
                                  if (*v123 || *(v123 + 152) || *(v123 + 156))
                                  {
                                    result = CAHDec::addToPatcherList(this, v123, v189 + 328, *(v123 + 52), 0xFFFFFFFFLL, 8, v122, 4);
                                    if (result)
                                    {
                                      return result;
                                    }
                                  }

                                  *(*(this + 33) + 4 * j + 392) = 0;
                                  v124 = *(this + 33) + 4 * j;
                                  v125 = *(v124 + 392);
                                  *(v124 + 392) = 0;
                                  *(*(this + 33) + 4 * j + 392) ^= 0xFFFFFFu;
                                  v126 = *(this + 33) + 4 * j;
                                  v127 = *(v126 + 392);
                                  *(v126 + 392) = v125;
                                  v128 = this + 176 * v109 + 4784;
                                  if (*v128 || *(v128 + 38) || *(v128 + 39))
                                  {
                                    result = CAHDec::addToPatcherList(this, v128, v189 + 392, 0, 0xFFFFFFFFLL, 8, v127, 4);
                                    if (result)
                                    {
                                      return result;
                                    }
                                  }

                                  *(*(this + 33) + 4 * j + 456) = 0;
                                  v129 = *(this + 33) + 4 * j;
                                  v130 = *(v129 + 456);
                                  *(v129 + 456) = 0;
                                  *(*(this + 33) + 4 * j + 456) ^= 0xFFFFFFu;
                                  v131 = *(this + 33) + 4 * j;
                                  v132 = *(v131 + 456);
                                  *(v131 + 456) = v130;
                                  v133 = *(v108 + 40);
                                  if (*v133 || *(v133 + 152) || *(v133 + 156))
                                  {
                                    result = CAHDec::addToPatcherList(this, v133, v189 + 456, *(v133 + 56), 0xFFFFFFFFLL, 8, v132, 4);
                                    if (result)
                                    {
                                      return result;
                                    }
                                  }

                                  if (*(*(this + 32) + 2648) == 1)
                                  {
                                    v134 = *(this + 33) + 4 * j;
                                    v135 = *(v134 + 328);
                                    *(v134 + 328) = 0;
                                    *(*(this + 33) + 4 * j + 328) ^= 0xFFFFFFu;
                                    v136 = *(this + 33) + 4 * j;
                                    v137 = *(v136 + 328);
                                    *(v136 + 328) = v135;
                                    v138 = *(v108 + 40);
                                    if (*v138 || *(v138 + 152) || *(v138 + 156))
                                    {
                                      result = CAHDec::addToPatcherList(this, v138, v189 + 328, *(v138 + 52), 0xFFFFFFFFLL, 8, v137, 4);
                                      if (result)
                                      {
                                        return result;
                                      }
                                    }

                                    v139 = *(this + 33) + 4 * j;
                                    v140 = *(v139 + 456);
                                    *(v139 + 456) = 0;
                                    *(*(this + 33) + 4 * j + 456) ^= 0xFFFFFFu;
                                    v141 = *(this + 33) + 4 * j;
                                    v142 = *(v141 + 456);
                                    *(v141 + 456) = v140;
                                    v143 = *(v108 + 40);
                                    if (*v143 || *(v143 + 152) || *(v143 + 156))
                                    {
                                      result = CAHDec::addToPatcherList(this, v143, v189 + 456, *(v143 + 56), 0xFFFFFFFFLL, 8, v142, 4);
                                      if (result)
                                      {
                                        return result;
                                      }
                                    }

                                    v144 = *(this + 33) + 4 * j;
                                    v145 = *(v144 + 264);
                                    *(v144 + 264) = 0;
                                    *(*(this + 33) + 4 * j + 264) ^= 0xFFFFFFu;
                                    v146 = *(this + 33) + 4 * j;
                                    v147 = *(v146 + 264);
                                    *(v146 + 264) = v145;
                                    v148 = *(v108 + 40);
                                    if (*v148 || *(v148 + 152) || *(v148 + 156))
                                    {
                                      result = CAHDec::addToPatcherList(this, v148, v189 + 264, *(v148 + 64), 0xFFFFFFFFLL, 8, v147, 4);
                                      if (result)
                                      {
                                        return result;
                                      }
                                    }

                                    v149 = *(this + 33) + 4 * j;
                                    v150 = *(v149 + 392);
                                    *(v149 + 392) = 0;
                                    *(*(this + 33) + 4 * j + 392) ^= 0xFFFFFFu;
                                    v151 = *(this + 33) + 4 * j;
                                    v152 = *(v151 + 392);
                                    *(v151 + 392) = v150;
                                    v153 = *(v108 + 40);
                                    if (*v153 || *(v153 + 152) || *(v153 + 156))
                                    {
                                      result = CAHDec::addToPatcherList(this, v153, v189 + 392, *(v153 + 68), 0xFFFFFFFFLL, 8, v152, 4);
                                      if (result)
                                      {
                                        return result;
                                      }
                                    }
                                  }
                                }
                              }
                            }

                            else
                            {
                              *(v19 + 52) |= 0x2000u;
                              *(this + v8 + 116) = 1;
                              *(*(this + 33) + 200) = 0;
                            }

                            *(*(this + 33) + 520) = 0;
                            *(*(this + 33) + 524) = 0;
                            *(*(this + 33) + 528) = 0;
                            *(*(this + 33) + 532) = 0;
                            if (!v9)
                            {
                              return 0;
                            }

                            v154 = *(this + 32);
                            v155 = *(v154 + 2892);
                            if (*(v154 + 2892))
                            {
                              v156 = *(v154 + 2904);
                              v155 = *(v154 + 2908);
                            }

                            else
                            {
                              v156 = 0;
                            }

                            v161 = *(v154 + 3544);
                            v162 = *(v161 + 52);
                            v163 = v162 + v156;
                            if (__CFADD__(v162, v156))
                            {
                              v164 = 1;
                            }

                            else
                            {
                              v165 = *(v161 + 56);
                              v166 = v165 + v155;
                              if (!__CFADD__(v165, v155))
                              {
                                v167 = *(this + 33);
                                v168 = *(v167 + 520);
                                *(v167 + 520) = 0;
                                *(*(this + 33) + 520) ^= 0xFFFFFFu;
                                v169 = *(this + 33);
                                v170 = *(v169 + 520);
                                *(v169 + 520) = v168;
                                v171 = *(*(this + 32) + 3544);
                                if (!*v171 && !*(v171 + 152) && !*(v171 + 156) || (result = CAHDec::addToPatcherList(this, v171, 520, v163, 0xFFFFFFFFLL, 8, v170, 4), !result))
                                {
                                  if ((v172 = *(this + 33), v173 = *(v172 + 524), *(v172 + 524) = 0, *(*(this + 33) + 524) ^= 0xFFFFFFu, v174 = *(this + 33), v175 = *(v174 + 524), *(v174 + 524) = v173, v176 = *(*(this + 32) + 3544), !*v176) && !*(v176 + 152) && !*(v176 + 156) || (result = CAHDec::addToPatcherList(this, v176, 524, v166, 0xFFFFFFFFLL, 8, v175, 4), !result))
                                  {
                                    if ((v177 = *(this + 33), v178 = *(v177 + 528), *(v177 + 528) = 0, *(*(this + 33) + 528) ^= 0xC0000000, v179 = *(this + 33), v180 = *(v179 + 528), *(v179 + 528) = v178, v181 = *(*(this + 32) + 3544), !*v181) && !*(v181 + 152) && !*(v181 + 156) || (result = CAHDec::addToPatcherList(this, v181, 528, v163, 192, 6, v180, 4), !result))
                                    {
                                      if ((v182 = *(this + 33), v183 = *(v182 + 532), *(v182 + 532) = 0, *(*(this + 33) + 532) ^= 0xC0000000, v184 = *(this + 33), v185 = *(v184 + 532), *(v184 + 532) = v183, v186 = *(*(this + 32) + 3544), !*v186) && !*(v186 + 152) && !*(v186 + 156) || (result = CAHDec::addToPatcherList(this, v186, 532, v166, 192, 6, v185, 4), !result))
                                      {
                                        if (v190)
                                        {
                                          result = 0;
                                          *(*(this + 33) + 528) = *(*(this + 33) + 528) & 0xFFFFC003 | (4 * ((*(*(*(this + 32) + 3544) + 76) >> 6) & 0xFFF));
                                          v187 = *(this + 33);
                                          v188 = *(*(*(this + 32) + 3544) + 80);
                                        }

                                        else
                                        {
                                          result = CAHDecCloverAvc::getSWRStride(this, *(v19 + 76) - *(v19 + 72) + 1, *(v20 + 6), *(v20 + 7), *(v20 + 2212));
                                          if (result)
                                          {
                                            return 0xFFFFFFFFLL;
                                          }

                                          *(*(this + 33) + 528) = *(*(this + 33) + 528) & 0xFFFFC003 | (4 * ((*(this + 3976) >> 6) & 0xFFF));
                                          v188 = *(this + 3977);
                                          v187 = *(this + 33);
                                        }

                                        *(v187 + 532) = *(v187 + 532) & 0xFFFF8003 | (4 * ((v188 >> 6) & 0x1FFF));
                                      }
                                    }
                                  }
                                }

                                return result;
                              }

                              v164 = 2;
                            }

                            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                            {
                              LODWORD(buf[0]) = 136315394;
                              *(buf + 4) = "populatePictureRegisters";
                              WORD2(buf[1]) = 1024;
                              *(&buf[1] + 6) = v164;
                              v157 = MEMORY[0x277D86220];
                              v158 = "AppleAVD: %s(): failKind = %d";
                              v159 = buf;
                              v160 = 18;
                              goto LABEL_155;
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

uint64_t CAHDecCloverAvc::getSWRStride(CAHDecCloverAvc *this, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(*(this + 32) + 2644);
  *(this + 1988) = 0;
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
        *(this + 3976) = (((2 * ((2863311531u * (a2 + 2)) >> 32)) & 0xFFFFFFFC) + 63) & 0xFFFFFFC0;
        v9 = (2 * ((2863311531u * (2 * a2 / a5 + 5)) >> 32)) & 0xFFFFFFF8;
LABEL_21:
        *(this + 3977) = (v9 + 63) & 0xFFFFFFC0;
        return v5;
      }

      goto LABEL_15;
    }

    v5 = 0;
    *(this + 3976) = (a2 + 63) & 0xFFFFFFC0;
    v10 = 2 * a2;
LABEL_19:
    v9 = v10 / a5;
    goto LABEL_21;
  }

  if (v8 == 4)
  {
    v5 = 0;
    *(this + 3976) = (((2 * ((3435973837u * (a2 + 4)) >> 32)) & 0xFFFFFFF8) + 63) & 0xFFFFFFC0;
    v9 = (2 * ((3435973837u * (2 * a2 / a5 + 9)) >> 32)) & 0xFFFFFFF0;
    goto LABEL_21;
  }

  if (v8 == 8)
  {
    v5 = 0;
    *(this + 3976) = (2 * a2 + 63) & 0xFFFFFFC0;
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

uint64_t CAHDecCloverAvc::getTileIdxAbove(CAHDecCloverAvc *this, unsigned int a2)
{
  v2 = *(*(this + 33) + 536);
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

uint64_t CAHDecCloverAvc::populateAvdWork(CAHDecCloverAvc *this, unsigned int a2)
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
    v9 = (v2 + 2536);
    v10 = (v4 + 20);
    v21 = a2;
    v11 = 40 * a2;
    v12 = v2 + 944 * v5;
    while (1)
    {
      v13 = v12 + v7;
      *(v13 + 1604) = v8;
      *(v13 + 1606) = 0;
      *(v13 + 1608) = v8;
      *(v12 + v7 + 1610) = 0;
      v14 = *v9;
      if (!CAVDAvcDecoder::GetSDataMemInfo(*(this + 32), v8, &v23, &v22))
      {
        return 0xFFFFFFFFLL;
      }

      v15 = *v10;
      *(v13 + 1628) = *v10;
      *(v13 + 1632) = v15;
      *(v13 + 1636) = 0;
      if (v7)
      {
        v16 = 0;
      }

      else
      {
        v16 = 15;
      }

      *(v13 + 1614) = v16;
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
            v27 = 1582;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v18 = v22;
          }
        }

        result = CAHDec::addToPatcherList(this, v17, v7 + 568020, v18, 0xFFFFFFFFLL, 0, -1, 4);
        if (result)
        {
          return result;
        }
      }

      v9 += 236;
      *(v12 + v7 + 1624) = v14;
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
    *(v2 + 32) = 568000;
  }

  return result;
}

uint64_t CAHDecCloverAvc::allocWorkBuf_SPS(CAHDecCloverAvc *this, _DWORD *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 4);
  v4 = *(a2 + 779);
  v5 = 16 * v4;
  v6 = *(a2 + 780);
  v7 = a2[553];
  v8 = a2[554];
  v9 = (16 * v6 + 23) >> 3;
  v10 = ((2 * (16 * v4 + 23)) & 0x3FFFE0) + 32;
  *(this + 3970) = v10;
  *(this + 3968) = (((v9 + 8) >> 3) * v10 + 127) & 0xFFFFFF80;
  v11 = ((16 * ((((16 * v4 + 23) >> 2) & 0x7FFFC) / v7)) & 0x7FFFE0) + 32;
  *(this + 3971) = v11;
  if (v3)
  {
    v12 = (((v9 / v8 + 8) >> 3) * v11 + 127) & 0xFFFFFF80;
  }

  else
  {
    v12 = 0;
  }

  *(this + 3969) = v12;
  v13 = (v4 << 6) + 64;
  *(this + 3974) = v13;
  *(this + 3973) = v13 + v13 * v6;
  if (!*(*(this + 32) + 2648))
  {
    v14 = (this + 560);
    v15 = (this + 4784);
    v16 = 24;
    while (1)
    {
      v17 = *(this + 3968);
      if (v17 && CAVDDecoder::allocAVDMem(*(this + 32), v14, v17, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_23;
        }

        v24 = 136315650;
        v25 = "allocWorkBuf_SPS";
        v26 = 1024;
        v27 = 1756;
        v28 = 2080;
        v29 = "HdrY";
        v23 = MEMORY[0x277D86220];
        goto LABEL_22;
      }

      v18 = *(this + 3969);
      if (v18)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), v15, v18, 7, 1, 0))
        {
          break;
        }
      }

      v14 += 11;
      v15 += 11;
      if (!--v16)
      {
        goto LABEL_11;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v24 = 136315650;
    v25 = "allocWorkBuf_SPS";
    v26 = 1024;
    v27 = 1757;
    v28 = 2080;
    v29 = "HdrC";
    v23 = MEMORY[0x277D86220];
    goto LABEL_22;
  }

LABEL_11:
  v19 = (this + 10416);
  v20 = 24;
  while (1)
  {
    v21 = *(this + 3973);
    if (v21)
    {
      if (CAVDDecoder::allocAVDMem(*(this + 32), v19, v21, 7, 1, 0))
      {
        break;
      }
    }

    v19 += 11;
    if (!--v20)
    {
      result = 0;
      *(this + 3978) = 0;
      *(this + 3979) = v5 | (v6 << 20) | 0xF000F;
      return result;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315650;
    v25 = "allocWorkBuf_SPS";
    v26 = 1024;
    v27 = 1765;
    v28 = 2080;
    v29 = "MvColo";
    v23 = MEMORY[0x277D86220];
LABEL_22:
    _os_log_impl(&dword_277606000, v23, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v24, 0x1Cu);
  }

LABEL_23:
  (*(*this + 144))(this);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecCloverAvc::allocWorkBuf_PPS(CAHDecCloverAvc *this, _BYTE *a2, void *a3, void *a4)
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
    v18 = 1882;
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
      v18 = 1885;
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
      v18 = 1886;
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
    v18 = 1887;
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
    v18 = 1890;
    v19 = 2080;
    v20 = "MvAboveInfo";
    v12 = MEMORY[0x277D86220];
    goto LABEL_19;
  }

  return result;
}

uint64_t CAHDecCloverAvc::freeWorkBuf_SPS(CAHDecCloverAvc *this)
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

uint64_t *CAHDecCloverAvc::freeWorkBuf_PPS(uint64_t *this, void *a2)
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

uint64_t CAHDecCloverAvc::setVPInstrFifo(uint64_t this, int a2)
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

void *createClaryLghDecoder(uint64_t a1)
{
  v2 = operator new(0xC48uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecClaryLgh::CAHDecClaryLgh(v2, a1);
  }

  return v3;
}

void *CAHDecClaryLgh::CAHDecClaryLgh(void *a1, uint64_t a2)
{
  CAHDec::CAHDec(a1);
  *v4 = &unk_288666FB8;
  *(v4 + 256) = a2;
  *(v4 + 456) = 151364;
  *(v4 + 8) = 836;
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

void CAHDecClaryLgh::~CAHDecClaryLgh(CAHDecClaryLgh *this)
{
  *this = &unk_288666FB8;
  CAHDecClaryLgh::freeWorkBuf_SPS(this);
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
  CAHDecClaryLgh::~CAHDecClaryLgh(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecClaryLgh::init(CAHDecClaryLgh *this)
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
        v13 = 209;
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
      v13 = 211;
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

uint64_t CAHDecClaryLgh::startPicture(CAHDecClaryLgh *this, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *(this + 13) = 0;
  v3 = *(this + 34);
  *(this + 33) = v3;
  if (v3)
  {
    bzero(v3, 0x24F44uLL);
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

uint64_t CAHDecClaryLgh::DecodePicture(CAHDecClaryLgh *this, uint64_t a2)
{
  if (CAHDecClaryLgh::startPicture(this, a2))
  {
    return 1;
  }

  (*(*this + 40))(this);
  (*(*this + 56))(this);
  (*(*this + 64))(this);
  CAHDecClaryLgh::populateTiles(this);
  (*(*this + 96))(this, a2);
  (*(*this + 48))(this, *(this + 114));
  return 0;
}

uint64_t CAHDecClaryLgh::populateTiles(CAHDecClaryLgh *this)
{
  v1 = (*(*(*(this + 32) + 17800) + 316) * *(*(*(this + 32) + 17800) + 312));
  if (v1)
  {
    v3 = *(this + *(this + 13) + 34) + 836;
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

uint64_t CAHDecClaryLgh::updateCommonRegisters(CAHDecClaryLgh *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecClaryLgh::populateSequenceRegisters(CAHDecClaryLgh *this)
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

uint64_t CAHDecClaryLgh::populatePictureRegisters(CAHDecClaryLgh *this)
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
        *(buf + 14) = 550;
        _os_log_impl(&dword_277606000, v56, OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
        v59 = v54[3];
      }

      if ((v59 - 0x4000000) >= 0x7C010000 && os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "populatePictureRegisters";
        WORD6(buf[0]) = 1024;
        *(buf + 14) = 551;
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
    v366 = 0u;
    v367 = 0u;
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

    v89 = !*&buf[0] && DWORD2(v366) == 0;
    v90 = v89 && HIDWORD(v366) == 0;
    LODWORD(v84) = !v90;
LABEL_67:
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
  v205 = *(*(this + 32) + 376 * v355 + 5976);
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
  v210 = *(*(this + 32) + 376 * v355 + 5976);
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
  v215 = *(*(this + 32) + 376 * v355 + 5976);
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
  v221 = *(v220 + 376 * v355 + 5976);
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
  if (v222 == 1)
  {
    v228 = *(v227 + 376 * v355 + 8);
    if (!*v228 && !*(v228 + 152) && !*(v228 + 156) || (result = CAHDec::addToPatcherList(this, v228, 284, *(v228 + 64), 0xFFFFFFFFLL, 7, v226, 4), !result))
    {
      if ((v229 = *(this + 33), v230 = *(v229 + 464), *(v229 + 464) = 0, *(*(this + 33) + 464) ^= 0x3FFu, v231 = *(this + 33), v232 = *(v231 + 464), *(v231 + 464) = v230, v233 = *(*(this + 32) + 376 * v355 + 5976), !*v233) && !*(v233 + 152) && !*(v233 + 156) || (result = CAHDec::addToPatcherList(this, v233, 464, *(v233 + 64), 0x3FFFFFFFFFFLL, 32, v232, 4), !result))
      {
        if ((v234 = *(this + 33), v235 = *(v234 + 292), *(v234 + 292) = 0, *(*(this + 33) + 292) ^= 0xFFFFFF80, v236 = *(this + 33), v237 = *(v236 + 292), *(v236 + 292) = v235, v238 = *(*(this + 32) + 376 * v355 + 5976), !*v238) && !*(v238 + 152) && !*(v238 + 156) || (result = CAHDec::addToPatcherList(this, v238, 292, *(v238 + 68), 0xFFFFFFFFLL, 7, v237, 4), !result))
        {
          v239 = *(this + 33);
          v240 = *(v239 + 472);
          *(v239 + 472) = 0;
          *(*(this + 33) + 472) ^= 0x3FFu;
          v241 = *(this + 33);
          v242 = *(v241 + 472);
          *(v241 + 472) = v240;
          v243 = *(*(this + 32) + 376 * v355 + 5976);
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

  v246 = v227 + 376 * v355;
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
  v253 = (*(this + 32) + 376 * v355 + 5992);
  if (*v253 || *(*(this + 32) + 376 * v355 + 6144) || *(*(this + 32) + 376 * v355 + 6148))
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
  v258 = (*(this + 32) + 376 * v355 + 6168);
  if (*v258 || *(*(this + 32) + 376 * v355 + 6320) || *(*(this + 32) + 376 * v355 + 6324))
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
      if (CAHDecTansyLgh::getSWRStride(this, *(v3 + 148) + 1, *(v364 + 105) - 8, *(v364 + 105) - 8, v320))
      {
        return 0xFFFFFFFFLL;
      }

      *(*(this + 33) + 368) = *(*(this + 33) + 368) & 0xFFFC003F | (((*(this + 783) >> 6) & 0xFFF) << 6);
      v342 = (this + 3136);
    }

    *(*(this + 33) + 372) = *(*(this + 33) + 372) & 0xFFF8003F | (((*v342 >> 6) & 0x1FFF) << 6);
  }

  if (v358 < 2)
  {
    v343 = *(this + 33);
    *(v343 + 536) = 65537;
    *(v343 + 540) = 0;
    *(v343 + 542) = *(v364 + 108) >> 6;
    *(v343 + 670) = 0;
    *(v343 + 672) = *(v364 + 112) >> 6;
    v344 = *(this + 32);
  }

  else
  {
    v343 = *(this + 33);
    *(v343 + 536) = v363;
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
          *(v343 + 670 + 2 * v357) = *(v346 - 26) >> 3;
        }

        v346 += 1792;
        --v345;
      }

      while (v345);
    }

    *(v343 + 538) = v361;
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
          *(v343 + 540 + 2 * v357) = *v348 >> 3;
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
    v350 = *(v344 + 2424);
    *(v343 + 760) = (*(v344 + 2424) & 1) << 22;
    v351 = ((*(v344 + 2420) & 1) << 23) | ((v350 & 1) << 22) | 0x20000000;
    *(v343 + 760) = v351;
    if (!*(v344 + 2364))
    {
      ++v351;
    }

    *(v343 + 760) = v351;
    v352 = *(v344 + 2428);
    v353 = *(v344 + 2460);
    *(v343 + 780) = *(v344 + 2444);
    *(v343 + 796) = v353;
    *(v343 + 764) = v352;
  }

  *(*(this + 33) + 684) = *(*(this + 33) + 684) & 0xFFFFFFFB | (4 * (*(v344 + 2516) & 1));
  *(*(this + 33) + 684) = *(*(this + 33) + 684) & 0xFFFFFFF7 | (8 * (*(v344 + 2520) & 1));
  *(*(this + 33) + 684) = *(*(this + 33) + 684) & 0xFFFFFFEF | (16 * (*(v344 + 2524) & 1));
  *(v343 + 816) = 0;
  v354 = *(v344 + 2476) == 2 ? 805306368 : 813694976;
  *(v343 + 816) = v354;
  memcpy((v343 + 820), (v344 + 2480), 4 * *(v344 + 2476));
  if (!*(v344 + 2516))
  {
    return 0;
  }

  result = 0;
  *(v344 + 2516) = 0;
  return result;
}

uint64_t CAHDecClaryLgh::populateTileRegisters(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 256);
  if (*(v2 + 2360) == 1)
  {
    *(a2 + 4) = 0;
    if (*(v2 + 2420))
    {
      v3 = *(v2 + 2504);
      *(a2 + 8) = v3;
      v4 = (a2 + 8);
      v5 = 0x10000;
    }

    else
    {
      *(a2 + 8) = 0;
      v4 = (a2 + 8);
      v3 = *(v2 + 2504);
      *v4 = v3;
      v5 = 65280;
    }

    *v4 = v3 | *(v2 + 2504) & v5;
  }

  return 0;
}

uint64_t CAHDecClaryLgh::populateAvdWork(CAHDecClaryLgh *this)
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
  v8 = v1 + 3908;
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
      *(v1 + 32) = 3908;
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
        v48 = 1116;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v19 = v43;
      }

      result = CAHDec::addToPatcherList(this, v18, v17 + 3926, v19, 0x3FFFFFFFFFFLL, 32, -1, 2);
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
        v48 = 1117;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v21 = v43;
      }

      result = CAHDec::addToPatcherList(this, v18, v17 + 3928, v21, 0xFFFFFFFFLL, 0, -1, 4);
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

uint64_t CAHDecClaryLgh::allocWorkBuf_SPS(CAHDecClaryLgh *this, int *a2)
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
        v37 = 1349;
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
    v37 = 1354;
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
        v37 = 1333;
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
    v37 = 1338;
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

uint64_t CAHDecClaryLgh::allocWorkBuf_PPS(CAHDecClaryLgh *this, void *a2, void *a3, void *a4)
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
        v26 = 1430;
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
        v26 = 1433;
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
        v26 = 1439;
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
        v26 = 1445;
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
        v26 = 1453;
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
      v26 = 1461;
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
    v26 = 1467;
    v27 = 2080;
    v28 = "AZLeftPix";
    v16 = MEMORY[0x277D86220];
    goto LABEL_34;
  }

  return result;
}

uint64_t CAHDecClaryLgh::freeWorkBuf_SPS(CAHDecClaryLgh *this)
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

uint64_t *CAHDecClaryLgh::freeWorkBuf_PPS(uint64_t *this, void *a2)
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

uint64_t CAHDecClaryLgh::setVPInstrFifo(uint64_t this, int a2)
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

CAHDec *createClaryAvcDecoder(uint64_t a1)
{
  v2 = operator new(0x2F10uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecClaryAvc::CAHDecClaryAvc(v2, a1);
  }

  return v3;
}

CAHDec *CAHDecClaryAvc::CAHDecClaryAvc(CAHDec *a1, uint64_t a2)
{
  CAHDec::CAHDec(a1);
  *v4 = &unk_2886670F8;
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

void CAHDecClaryAvc::~CAHDecClaryAvc(CAHDecClaryAvc *this)
{
  *this = &unk_2886670F8;
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecClaryAvc::~CAHDecClaryAvc(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecClaryAvc::init(CAHDecClaryAvc *this)
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

uint64_t CAHDecClaryAvc::initPicture(CAHDecClaryAvc *this, int a2, __int16 a3)
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

uint64_t CAHDecClaryAvc::populateSlices(CAHDecClaryAvc *this, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = *(this + *(this + 13) + 34) + 2104;
    v5 = a2;
    do
    {
      CAHDecClaryAvc::populateSliceRegisters(this, v4, v3++);
      v4 += 956;
    }

    while (v5 != v3);
  }

  return 0;
}

uint64_t CAHDecClaryAvc::populateSliceRegisters(uint64_t a1, uint64_t a2, signed int a3)
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
    v96[0] = 1740;
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
              *v95 = "int CAHDecClaryAvc::populateSliceRegisters(AvcSliceRegisters *, int)";
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
    v96[0] = 1741;
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

uint64_t CAHDecClaryAvc::updateCommonRegisters(CAHDecClaryAvc *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

void CAHDecClaryAvc::copyScalingList(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
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
    v12 = &dword_27775BEF8;
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
    v31 = a6 + (dword_27775BF10[v26] << 6);
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

void CAHDecClaryAvc::AvcSeqScalingListFallBack(uint64_t a1, uint64_t a2)
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
            v4[9] = unk_27775BF78;
            v10 = xmmword_27775BF88;
            v11 = unk_27775BF98;
          }

          else
          {
            v4[8] = avcDefaultInterScalingList8x8;
            v4[9] = unk_27775BF38;
            v10 = xmmword_27775BF48;
            v11 = unk_27775BF58;
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

void CAHDecClaryAvc::AvcPicScalingListFallBack(uint64_t a1, uint64_t a2, uint64_t a3)
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
              *(a3 + v4 - 151) = unk_27775BF78;
              v9 = xmmword_27775BF88;
              v10 = unk_27775BF98;
            }

            else
            {
              *v8 = avcDefaultInterScalingList8x8;
              *(a3 + v4 - 151) = unk_27775BF38;
              v9 = xmmword_27775BF48;
              v10 = unk_27775BF58;
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

uint64_t CAHDecClaryAvc::populateSequenceRegisters(CAHDecClaryAvc *this)
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

    CAHDecClaryAvc::AvcSeqScalingListFallBack(this, v8);
    CAHDecClaryAvc::copyScalingList(v16, v3 + 12, *(this + 33) + 992, v8 + 22, v8 + 34, v8 + 130, v15);
  }

  return 0;
}

uint64_t CAHDecClaryAvc::populatePictureRegisters(CAHDecClaryAvc *this)
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
    goto LABEL_44;
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

LABEL_44:
  v34 = *(this + 2961) * v338;
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
    CAHDecClaryAvc::AvcPicScalingListFallBack(v14, v18, v35);
    CAHDecClaryAvc::copyScalingList(v49, (v17 + 76), v48 + 1476, (v35 + 109), (v35 + 121), (v35 + 217), v47);
  }

  v50 = 0;
  *(v17 + 80) = *(this + 2966);
  *(v17 + 84) = *(this + 2967);
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

    *(*(this + 33) + v50 + 120) = 0;
    *(*(this + 33) + v50 + 120) = *(*(this + 33) + v50 + 120) & 0x800001FF | (((*(this + 2960) >> 9) & 0x3FFFFF) << 9);
    *(*(this + 33) + v50 + 540) = 0;
    v56 = *(this + 33) + v50;
    v57 = *(v56 + 540);
    *(v56 + 540) = 0;
    *(*(this + 33) + v50 + 540) ^= 0x3FFu;
    v58 = *(this + 33) + v50;
    v59 = *(v58 + 540);
    *(v58 + 540) = v57;
    if (*v51 || *(v51 + 38) || *(v51 + 39))
    {
      result = CAHDec::addToPatcherList(this, v51, v50 + 540, 0, 0x3FFFFFFFFFFLL, 32, v59, 4);
      if (result)
      {
        return result;
      }
    }

    v50 += 4;
    v51 += 176;
  }

  while (v50 != 28);
  *(*(this + 33) + 148) = 0;
  *(*(this + 33) + 568) = 0;
  if ((*(v17 + 54) & 8) == 0)
  {
    goto LABEL_356;
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
  v63 = *(v60 + 148);
  *(v60 + 148) = 0;
  *(*(this + 33) + 148) ^= 0xFFFFFF00;
  v64 = *(this + 33);
  v65 = *(v64 + 148);
  *(v64 + 148) = v63;
  if (v61 || (v66 = DWORD2(v350), *(&v350 + 1)))
  {
    result = CAHDec::addToPatcherList(this, buf, 148, v62, 0xFFFFFFFFLL, 8, v65, 4);
    if (result)
    {
      return result;
    }

    if (buf[0])
    {
      v67 = 0;
    }

    else
    {
      v67 = DWORD2(v350) == 0;
    }

    v66 = !v67 || HIDWORD(v350) != 0;
  }

  v69 = *(this + 33);
  v70 = *(v69 + 568);
  *(v69 + 568) = 0;
  *(*(this + 33) + 568) ^= 0x3FFu;
  v71 = *(this + 33);
  v72 = *(v71 + 568);
  *(v71 + 568) = v70;
  if (!v66 || (result = CAHDec::addToPatcherList(this, buf, 568, v62, 0x3FFFFFFFFFFLL, 32, v72, 4), !result))
  {
LABEL_356:
    if ((*(*(this + 33) + 152) = 0, v73 = *(this + 33), v74 = *(v73 + 152), *(v73 + 152) = 0, *(*(this + 33) + 152) ^= 0xFFFFFF00, v75 = *(this + 33), v76 = *(v75 + 152), *(v75 + 152) = v74, !*(this + 1302)) && !*(this + 2642) && !*(this + 2643) || (result = CAHDec::addToPatcherList(this, this + 1302, 152, 0, 0xFFFFFFFFLL, 8, v76, 4), !result))
    {
      if ((*(*(this + 33) + 572) = 0, v77 = *(this + 33), v78 = *(v77 + 572), *(v77 + 572) = 0, *(*(this + 33) + 572) ^= 0x3FFu, v79 = *(this + 33), v80 = *(v79 + 572), *(v79 + 572) = v78, !*(this + 1302)) && !*(this + 2642) && !*(this + 2643) || (result = CAHDec::addToPatcherList(this, this + 1302, 572, 0, 0x3FFFFFFFFFFLL, 32, v80, 4), !result))
      {
        if ((*(*(this + 33) + 156) = 0, v81 = *(this + 33), v82 = *(v81 + 156), *(v81 + 156) = 0, *(*(this + 33) + 156) ^= 0xFFFFFF00, v83 = *(this + 33), v84 = *(v83 + 156), *(v83 + 156) = v82, !*(this + 1324)) && !*(this + 2686) && !*(this + 2687) || (result = CAHDec::addToPatcherList(this, this + 1324, 156, 0, 0xFFFFFFFFLL, 8, v84, 4), !result))
        {
          if ((*(*(this + 33) + 576) = 0, v85 = *(this + 33), v86 = *(v85 + 576), *(v85 + 576) = 0, *(*(this + 33) + 576) ^= 0x3FFu, v87 = *(this + 33), v88 = *(v87 + 576), *(v87 + 576) = v86, !*(this + 1324)) && !*(this + 2686) && !*(this + 2687) || (result = CAHDec::addToPatcherList(this, this + 1324, 576, 0, 0x3FFFFFFFFFFLL, 32, v88, 4), !result))
          {
            if ((*(*(this + 33) + 160) = 0, v89 = *(this + 33), v90 = *(v89 + 160), *(v89 + 160) = 0, *(*(this + 33) + 160) ^= 0xFFFFFF00, v91 = *(this + 33), v92 = *(v91 + 160), *(v91 + 160) = v90, !*(this + 1346)) && !*(this + 2730) && !*(this + 2731) || (result = CAHDec::addToPatcherList(this, this + 1346, 160, 0, 0xFFFFFFFFLL, 8, v92, 4), !result))
            {
              if ((*(*(this + 33) + 580) = 0, v93 = *(this + 33), v94 = *(v93 + 580), *(v93 + 580) = 0, *(*(this + 33) + 580) ^= 0x3FFu, v95 = *(this + 33), v96 = *(v95 + 580), *(v95 + 580) = v94, !*(this + 1346)) && !*(this + 2730) && !*(this + 2731) || (result = CAHDec::addToPatcherList(this, this + 1346, 580, 0, 0x3FFFFFFFFFFLL, 32, v96, 4), !result))
              {
                if ((*(*(this + 33) + 164) = 0, v97 = *(this + 33), v98 = *(v97 + 164), *(v97 + 164) = 0, *(*(this + 33) + 164) ^= 0xFFFFFF00, v99 = *(this + 33), v100 = *(v99 + 164), *(v99 + 164) = v98, !*(this + 1368)) && !*(this + 2774) && !*(this + 2775) || (result = CAHDec::addToPatcherList(this, this + 1368, 164, 0, 0xFFFFFFFFLL, 8, v100, 4), !result))
                {
                  if ((*(*(this + 33) + 584) = 0, v101 = *(this + 33), v102 = *(v101 + 584), *(v101 + 584) = 0, *(*(this + 33) + 584) ^= 0x3FFu, v103 = *(this + 33), v104 = *(v103 + 584), *(v103 + 584) = v102, !*(this + 1368)) && !*(this + 2774) && !*(this + 2775) || (result = CAHDec::addToPatcherList(this, this + 1368, 584, 0, 0x3FFFFFFFFFFLL, 32, v104, 4), !result))
                  {
                    if ((*(*(this + 33) + 168) = 0, v105 = *(this + 33), v106 = *(v105 + 168), *(v105 + 168) = 0, *(*(this + 33) + 168) ^= 0xFFFFFF00, v107 = *(this + 33), v108 = *(v107 + 168), *(v107 + 168) = v106, !*(this + 1390)) && !*(this + 2818) && !*(this + 2819) || (result = CAHDec::addToPatcherList(this, this + 1390, 168, 0, 0xFFFFFFFFLL, 8, v108, 4), !result))
                    {
                      if ((*(*(this + 33) + 588) = 0, v109 = *(this + 33), v110 = *(v109 + 588), *(v109 + 588) = 0, *(*(this + 33) + 588) ^= 0x3FFu, v111 = *(this + 33), v112 = *(v111 + 588), *(v111 + 588) = v110, !*(this + 1390)) && !*(this + 2818) && !*(this + 2819) || (result = CAHDec::addToPatcherList(this, this + 1390, 588, 0, 0x3FFFFFFFFFFLL, 32, v112, 4), !result))
                      {
                        if ((*(*(this + 33) + 172) = 0, v113 = *(this + 33), v114 = *(v113 + 172), *(v113 + 172) = 0, *(*(this + 33) + 172) ^= 0xFFFFFF00, v115 = *(this + 33), v116 = *(v115 + 172), *(v115 + 172) = v114, !*(this + 1412)) && !*(this + 2862) && !*(this + 2863) || (result = CAHDec::addToPatcherList(this, this + 1412, 172, 0, 0xFFFFFFFFLL, 8, v116, 4), !result))
                        {
                          if ((*(*(this + 33) + 592) = 0, v117 = *(this + 33), v118 = *(v117 + 592), *(v117 + 592) = 0, *(*(this + 33) + 592) ^= 0x3FFu, v119 = *(this + 33), v120 = *(v119 + 592), *(v119 + 592) = v118, !*(this + 1412)) && !*(this + 2862) && !*(this + 2863) || (result = CAHDec::addToPatcherList(this, this + 1412, 592, 0, 0x3FFFFFFFFFFLL, 32, v120, 4), !result))
                          {
                            if ((*(*(this + 33) + 176) = 0, *(*(this + 33) + 596) = 0, *(*(this + 33) + 180) = 0, v121 = *(this + 33), v122 = *(v121 + 180), *(v121 + 180) = 0, *(*(this + 33) + 180) ^= 0xFFFFFF00, v123 = *(this + 33), v124 = *(v123 + 180), *(v123 + 180) = v122, !*(this + 1280)) && !*(this + 2598) && !*(this + 2599) || (result = CAHDec::addToPatcherList(this, this + 1280, 180, 0, 0xFFFFFFFFLL, 8, v124, 4), !result))
                            {
                              if ((*(*(this + 33) + 600) = 0, v125 = *(this + 33), v126 = *(v125 + 600), *(v125 + 600) = 0, *(*(this + 33) + 600) ^= 0x3FFu, v127 = *(this + 33), v128 = *(v127 + 600), *(v127 + 600) = v126, !*(this + 1280)) && !*(this + 2598) && !*(this + 2599) || (result = CAHDec::addToPatcherList(this, this + 1280, 600, 0, 0x3FFFFFFFFFFLL, 32, v128, 4), !result))
                              {
                                if ((*(*(this + 33) + 184) = 0, v129 = *(this + 33), v130 = *(v129 + 184), *(v129 + 184) = 0, *(*(this + 33) + 184) ^= 0xFFFFFF00, v131 = *(this + 33), v132 = *(v131 + 184), *(v131 + 184) = v130, !*(this + 1456)) && !*(this + 2950) && !*(this + 2951) || (result = CAHDec::addToPatcherList(this, this + 1456, 184, v34, 0xFFFFFFFFLL, 8, v132, 4), !result))
                                {
                                  if ((*(*(this + 33) + 604) = 0, v133 = *(this + 33), v134 = *(v133 + 604), *(v133 + 604) = 0, *(*(this + 33) + 604) ^= 0x3FFu, v135 = *(this + 33), v136 = *(v135 + 604), *(v135 + 604) = v134, !*(this + 1456)) && !*(this + 2950) && !*(this + 2951) || (result = CAHDec::addToPatcherList(this, this + 1456, 604, v34, 0x3FFFFFFFFFFLL, 32, v136, 4), !result))
                                  {
                                    if ((*(*(this + 33) + 188) = 0, v137 = *(this + 33), v138 = *(v137 + 188), *(v137 + 188) = 0, *(*(this + 33) + 188) ^= 0xFFFFFF80, v139 = *(this + 33), v140 = *(v139 + 188), *(v139 + 188) = v138, v142 = this + 176 * v338 + 560, !*v142) && !*(v142 + 38) && !*(v142 + 39) || (result = CAHDec::addToPatcherList(this, this + 22 * v338 + 70, 188, 0, 0xFFFFFFFFLL, 7, v140, 4), !result))
                                    {
                                      if ((*(*(this + 33) + 608) = 0, v143 = *(this + 33), v144 = *(v143 + 608), *(v143 + 608) = 0, *(*(this + 33) + 608) ^= 0x3FFu, v145 = *(this + 33), v146 = *(v145 + 608), *(v145 + 608) = v144, !*v142) && !*(v142 + 38) && !*(v142 + 39) || (result = CAHDec::addToPatcherList(this, v142, 608, 0, 0x3FFFFFFFFFFLL, 32, v146, 4), !result))
                                      {
                                        if ((*(*(this + 33) + 192) = 0, v147 = *(this + 33), v148 = *(v147 + 192), *(v147 + 192) = 0, *(*(this + 33) + 192) ^= 0xFFFFFF80, v149 = *(this + 33), v150 = *(v149 + 192), *(v149 + 192) = v148, v151 = (v333 + 8), !*(v333 + 8)) && !*(v333 + 160) && !*(v333 + 164) || (result = CAHDec::addToPatcherList(this, (v333 + 8), 192, *(v333 + 60), 0xFFFFFFFFLL, 7, v150, 4), !result))
                                        {
                                          if ((*(*(this + 33) + 612) = 0, v152 = *(this + 33), v153 = *(v152 + 612), *(v152 + 612) = 0, *(*(this + 33) + 612) ^= 0x3FFu, v154 = *(this + 33), v155 = *(v154 + 612), *(v154 + 612) = v153, !*v151) && !*(v333 + 160) && !*(v333 + 164) || (result = CAHDec::addToPatcherList(this, v151, 612, *(v333 + 60), 0x3FFFFFFFFFFLL, 32, v155, 4), !result))
                                          {
                                            if ((*(*(this + 33) + 196) = 0, v156 = *(this + 33), v157 = *(v156 + 196), *(v156 + 196) = 0, *(*(this + 33) + 196) ^= 0xFFFFFF80, v158 = *(this + 33), v159 = *(v158 + 196), *(v158 + 196) = v157, v160 = this + 176 * v338 + 4784, !*v160) && !*(v160 + 38) && !*(v160 + 39) || (result = CAHDec::addToPatcherList(this, this + 22 * v338 + 598, 196, 0, 0xFFFFFFFFLL, 7, v159, 4), !result))
                                            {
                                              if ((*(*(this + 33) + 616) = 0, v161 = *(this + 33), v162 = *(v161 + 616), *(v161 + 616) = 0, *(*(this + 33) + 616) ^= 0x3FFu, v163 = *(this + 33), v164 = *(v163 + 616), *(v163 + 616) = v162, !*v160) && !*(v160 + 38) && !*(v160 + 39) || (result = CAHDec::addToPatcherList(this, v160, 616, 0, 0x3FFFFFFFFFFLL, 32, v164, 4), !result))
                                              {
                                                if ((*(*(this + 33) + 200) = 0, v165 = *(this + 33), v166 = *(v165 + 200), *(v165 + 200) = 0, *(*(this + 33) + 200) ^= 0xFFFFFF80, v167 = *(this + 33), v168 = *(v167 + 200), *(v167 + 200) = v166, !*v151) && !*(v333 + 160) && !*(v333 + 164) || (result = CAHDec::addToPatcherList(this, v151, 200, *(v333 + 64), 0xFFFFFFFFLL, 7, v168, 4), !result))
                                                {
                                                  if ((*(*(this + 33) + 620) = 0, v169 = *(this + 33), v170 = *(v169 + 620), *(v169 + 620) = 0, *(*(this + 33) + 620) ^= 0x3FFu, v171 = *(this + 33), v172 = *(v171 + 620), *(v171 + 620) = v170, !*v151) && !*(v333 + 160) && !*(v333 + 164) || (result = CAHDec::addToPatcherList(this, v151, 620, *(v333 + 64), 0x3FFFFFFFFFFLL, 32, v172, 4), !result))
                                                  {
                                                    if (*(*(this + 32) + 2648) != 1 || ((v173 = *(this + 33), v174 = *(v173 + 192), *(v173 + 192) = 0, *(*(this + 33) + 192) ^= 0xFFFFFF80, v175 = *(this + 33), v176 = *(v175 + 192), *(v175 + 192) = v174, !*v151) && !*(v333 + 160) && !*(v333 + 164) || (result = CAHDec::addToPatcherList(this, v151, 192, *(v333 + 60), 0xFFFFFFFFLL, 7, v176, 4), !result)) && ((v177 = *(this + 33), v178 = *(v177 + 612), *(v177 + 612) = 0, *(*(this + 33) + 612) ^= 0x3FFu, v179 = *(this + 33), v180 = *(v179 + 612), *(v179 + 612) = v178, !*v151) && !*(v333 + 160) && !*(v333 + 164) || (result = CAHDec::addToPatcherList(this, v151, 612, *(v333 + 60), 0x3FFFFFFFFFFLL, 32, v180, 4), !result)) && ((v181 = *(this + 33), v182 = *(v181 + 200), *(v181 + 200) = 0, *(*(this + 33) + 200) ^= 0xFFFFFF80, v183 = *(this + 33), v184 = *(v183 + 200), *(v183 + 200) = v182, !*v151) && !*(v333 + 160) && !*(v333 + 164) || (result = CAHDec::addToPatcherList(this, v151, 200, *(v333 + 64), 0xFFFFFFFFLL, 7, v184, 4), !result)) && ((v185 = *(this + 33), v186 = *(v185 + 620), *(v185 + 620) = 0, *(*(this + 33) + 620) ^= 0x3FFu, v187 = *(this + 33), v188 = *(v187 + 620), *(v187 + 620) = v186, !*v151) && !*(v333 + 160) && !*(v333 + 164) || (result = CAHDec::addToPatcherList(this, v151, 620, *(v333 + 64), 0x3FFFFFFFFFFLL, 32, v188, 4), !result)) && ((v189 = *(this + 33), v190 = *(v189 + 188), *(v189 + 188) = 0, *(*(this + 33) + 188) ^= 0xFFFFFF80, v191 = *(this + 33), v192 = *(v191 + 188), *(v191 + 188) = v190, !*v151) && !*(v333 + 160) && !*(v333 + 164) || (result = CAHDec::addToPatcherList(this, v151, 188, *(v333 + 72), 0xFFFFFFFFLL, 7, v192, 4), !result)) && ((v193 = *(this + 33), v194 = *(v193 + 608), *(v193 + 608) = 0, *(*(this + 33) + 608) ^= 0x3FFu, v195 = *(this + 33), v196 = *(v195 + 608), *(v195 + 608) = v194, !*v151) && !*(v333 + 160) && !*(v333 + 164) || (result = CAHDec::addToPatcherList(this, v151, 608, *(v333 + 72), 0x3FFFFFFFFFFLL, 32, v196, 4), !result)) && ((v197 = *(this + 33), v198 = *(v197 + 196), *(v197 + 196) = 0, *(*(this + 33) + 196) ^= 0xFFFFFF80, v199 = *(this + 33), v200 = *(v199 + 196), *(v199 + 196) = v198, !*v151) && !*(v333 + 160) && !*(v333 + 164) || (result = CAHDec::addToPatcherList(this, v151, 196, *(v333 + 76), 0xFFFFFFFFLL, 7, v200, 4), !result)) && ((v201 = *(this + 33), v202 = *(v201 + 616), *(v201 + 616) = 0, *(*(this + 33) + 616) ^= 0x3FFu, v203 = *(this + 33), v204 = *(v203 + 616), *(v203 + 616) = v202, !*v151) && !*(v333 + 160) && !*(v333 + 164) || (result = CAHDec::addToPatcherList(this, v151, 616, *(v333 + 76), 0x3FFFFFFFFFFLL, 32, v204, 4), !result)))
                                                    {
                                                      v205 = this + 4 * v338;
                                                      if (*(v17 + 52) & 0x2000 | v335)
                                                      {
                                                        *(v205 + 116) = 0;
                                                        *(*(this + 33) + 204) = 0;
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
                                                            *(*(this + 33) + 4 * v339 + 204) = 0;
                                                            *(*(this + 33) + 4 * v339 + 204) = *(*(this + 33) + 4 * v339 + 204) & 0xFFFFFFF | ((v335 << 28) - 0x10000000);
                                                            *(*(this + 33) + 4 * v339 + 204) &= 0xF3FFFFFF;
                                                            *(*(this + 33) + 4 * v339 + 204) = *(*(this + 33) + 4 * v339 + 204) & 0xFDFFFFFF | v334;
                                                            *(*(this + 33) + 4 * v339 + 204) |= 0x1000000u;
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

                                                            *(*(this + 33) + 4 * v339 + 204) = *(*(this + 33) + 4 * v339 + 204) & 0xFFFE0000 | v211;
                                                            *(*(this + 33) + 4 * v339 + 204) = *(*(this + 33) + 4 * v339 + 204) & 0xFFFDFFFF | ((*(v207 + 1) & 1) << 17);
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
                                                                    goto LABEL_231;
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

LABEL_231:
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

                                                            *(*(this + 33) + 4 * v339 + 268) = 0;
                                                            v216 = 4 * v339;
                                                            v217 = *(this + 33) + 4 * v339;
                                                            v218 = *(v217 + 268);
                                                            *(v217 + 268) = 0;
                                                            *(*(this + 33) + 4 * v339 + 268) ^= 0xFFFFFF80;
                                                            v219 = *(this + 33) + 4 * v339;
                                                            v220 = *(v219 + 268);
                                                            *(v219 + 268) = v218;
                                                            v141 = this + 560;
                                                            v221 = this + 176 * v208 + 560;
                                                            if (*v221 || *(v221 + 38) || *(v221 + 39))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, &v141[176 * v208], v216 + 268, 0, 0xFFFFFFFFLL, 7, v220, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            *(*(this + 33) + 4 * v339 + 624) = 0;
                                                            v222 = *(this + 33) + 4 * v339;
                                                            v223 = *(v222 + 624);
                                                            *(v222 + 624) = 0;
                                                            *(*(this + 33) + 4 * v339 + 624) ^= 0x3FFu;
                                                            v224 = *(this + 33) + 4 * v339;
                                                            v225 = *(v224 + 624);
                                                            *(v224 + 624) = v223;
                                                            if (*v221 || *(v221 + 38) || *(v221 + 39))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, &v141[176 * v208], v216 + 624, 0, 0x3FFFFFFFFFFLL, 32, v225, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            *(*(this + 33) + 4 * v339 + 332) = 0;
                                                            v226 = *(this + 33) + 4 * v339;
                                                            v227 = *(v226 + 332);
                                                            *(v226 + 332) = 0;
                                                            *(*(this + 33) + 4 * v339 + 332) ^= 0xFFFFFF80;
                                                            v228 = *(this + 33) + 4 * v339;
                                                            v229 = *(v228 + 332);
                                                            *(v228 + 332) = v227;
                                                            v230 = *(v207 + 40);
                                                            if (*v230 || *(v230 + 152) || *(v230 + 156))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v230, v216 + 332, *(v230 + 52), 0xFFFFFFFFLL, 7, v229, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            *(*(this + 33) + 4 * v339 + 688) = 0;
                                                            v231 = *(this + 33) + 4 * v339;
                                                            v232 = *(v231 + 688);
                                                            *(v231 + 688) = 0;
                                                            *(*(this + 33) + 4 * v339 + 688) ^= 0x3FFu;
                                                            v233 = *(this + 33) + 4 * v339;
                                                            v234 = *(v233 + 688);
                                                            *(v233 + 688) = v232;
                                                            v235 = *(v207 + 40);
                                                            if (*v235 || *(v235 + 152) || *(v235 + 156))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v235, v216 + 688, *(v235 + 52), 0x3FFFFFFFFFFLL, 32, v234, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            *(*(this + 33) + 4 * v339 + 396) = 0;
                                                            v236 = *(this + 33) + 4 * v339;
                                                            v237 = *(v236 + 396);
                                                            *(v236 + 396) = 0;
                                                            *(*(this + 33) + 4 * v339 + 396) ^= 0xFFFFFF80;
                                                            v238 = *(this + 33) + 4 * v339;
                                                            v239 = *(v238 + 396);
                                                            *(v238 + 396) = v237;
                                                            v240 = this + 176 * v208 + 4784;
                                                            if (*v240 || *(v240 + 38) || *(v240 + 39))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v240, v216 + 396, 0, 0xFFFFFFFFLL, 7, v239, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            *(*(this + 33) + 4 * v339 + 752) = 0;
                                                            v241 = *(this + 33) + 4 * v339;
                                                            v242 = *(v241 + 752);
                                                            *(v241 + 752) = 0;
                                                            *(*(this + 33) + 4 * v339 + 752) ^= 0x3FFu;
                                                            v243 = *(this + 33) + 4 * v339;
                                                            v244 = *(v243 + 752);
                                                            *(v243 + 752) = v242;
                                                            if (*v240 || *(v240 + 38) || *(v240 + 39))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v240, v216 + 752, 0, 0x3FFFFFFFFFFLL, 32, v244, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            *(*(this + 33) + 4 * v339 + 460) = 0;
                                                            v245 = *(this + 33) + 4 * v339;
                                                            v246 = *(v245 + 460);
                                                            *(v245 + 460) = 0;
                                                            *(*(this + 33) + 4 * v339 + 460) ^= 0xFFFFFF80;
                                                            v247 = *(this + 33) + 4 * v339;
                                                            v248 = *(v247 + 460);
                                                            *(v247 + 460) = v246;
                                                            v249 = *(v207 + 40);
                                                            if (*v249 || *(v249 + 152) || *(v249 + 156))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v249, v216 + 460, *(v249 + 56), 0xFFFFFFFFLL, 7, v248, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            *(*(this + 33) + 4 * v339 + 816) = 0;
                                                            v250 = *(this + 33) + 4 * v339;
                                                            v251 = *(v250 + 816);
                                                            *(v250 + 816) = 0;
                                                            *(*(this + 33) + 4 * v339 + 816) ^= 0x3FFu;
                                                            v252 = *(this + 33) + 4 * v339;
                                                            v253 = *(v252 + 816);
                                                            *(v252 + 816) = v251;
                                                            v254 = *(v207 + 40);
                                                            if (*v254 || *(v254 + 152) || *(v254 + 156))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v254, v216 + 816, *(v254 + 56), 0x3FFFFFFFFFFLL, 32, v253, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            if (*(*(this + 32) + 2648) == 1)
                                                            {
                                                              v255 = *(this + 33) + 4 * v339;
                                                              v256 = *(v255 + 332);
                                                              *(v255 + 332) = 0;
                                                              *(*(this + 33) + 4 * v339 + 332) ^= 0xFFFFFF80;
                                                              v257 = *(this + 33) + 4 * v339;
                                                              v258 = *(v257 + 332);
                                                              *(v257 + 332) = v256;
                                                              v259 = *(v207 + 40);
                                                              if (*v259 || *(v259 + 152) || *(v259 + 156))
                                                              {
                                                                result = CAHDec::addToPatcherList(this, v259, v216 + 332, *(v259 + 52), 0xFFFFFFFFLL, 7, v258, 4);
                                                                if (result)
                                                                {
                                                                  return result;
                                                                }
                                                              }

                                                              v260 = *(this + 33) + 4 * v339;
                                                              v261 = *(v260 + 688);
                                                              *(v260 + 688) = 0;
                                                              *(*(this + 33) + 4 * v339 + 688) ^= 0x3FFu;
                                                              v262 = *(this + 33) + 4 * v339;
                                                              v263 = *(v262 + 688);
                                                              *(v262 + 688) = v261;
                                                              v264 = *(v207 + 40);
                                                              if (*v264 || *(v264 + 152) || *(v264 + 156))
                                                              {
                                                                result = CAHDec::addToPatcherList(this, v264, v216 + 688, *(v264 + 52), 0x3FFFFFFFFFFLL, 32, v263, 4);
                                                                if (result)
                                                                {
                                                                  return result;
                                                                }
                                                              }

                                                              v265 = *(this + 33) + 4 * v339;
                                                              v266 = *(v265 + 460);
                                                              *(v265 + 460) = 0;
                                                              *(*(this + 33) + 4 * v339 + 460) ^= 0xFFFFFF80;
                                                              v267 = *(this + 33) + 4 * v339;
                                                              v268 = *(v267 + 460);
                                                              *(v267 + 460) = v266;
                                                              v269 = *(v207 + 40);
                                                              if (*v269 || *(v269 + 152) || *(v269 + 156))
                                                              {
                                                                result = CAHDec::addToPatcherList(this, v269, v216 + 460, *(v269 + 56), 0xFFFFFFFFLL, 7, v268, 4);
                                                                if (result)
                                                                {
                                                                  return result;
                                                                }
                                                              }

                                                              v270 = *(this + 33) + 4 * v339;
                                                              v271 = *(v270 + 816);
                                                              *(v270 + 816) = 0;
                                                              *(*(this + 33) + 4 * v339 + 816) ^= 0x3FFu;
                                                              v272 = *(this + 33) + 4 * v339;
                                                              v273 = *(v272 + 816);
                                                              *(v272 + 816) = v271;
                                                              v274 = *(v207 + 40);
                                                              if (*v274 || *(v274 + 152) || *(v274 + 156))
                                                              {
                                                                result = CAHDec::addToPatcherList(this, v274, v216 + 816, *(v274 + 56), 0x3FFFFFFFFFFLL, 32, v273, 4);
                                                                if (result)
                                                                {
                                                                  return result;
                                                                }
                                                              }

                                                              v275 = *(this + 33) + 4 * v339;
                                                              v276 = *(v275 + 268);
                                                              *(v275 + 268) = 0;
                                                              *(*(this + 33) + 4 * v339 + 268) ^= 0xFFFFFF80;
                                                              v277 = *(this + 33) + 4 * v339;
                                                              v278 = *(v277 + 268);
                                                              *(v277 + 268) = v276;
                                                              v279 = *(v207 + 40);
                                                              if (*v279 || *(v279 + 152) || *(v279 + 156))
                                                              {
                                                                result = CAHDec::addToPatcherList(this, v279, v216 + 268, *(v279 + 64), 0xFFFFFFFFLL, 7, v278, 4);
                                                                if (result)
                                                                {
                                                                  return result;
                                                                }
                                                              }

                                                              v280 = *(this + 33) + 4 * v339;
                                                              v281 = *(v280 + 624);
                                                              *(v280 + 624) = 0;
                                                              *(*(this + 33) + 4 * v339 + 624) ^= 0x3FFu;
                                                              v282 = *(this + 33) + 4 * v339;
                                                              v283 = *(v282 + 624);
                                                              *(v282 + 624) = v281;
                                                              v284 = *(v207 + 40);
                                                              if (*v284 || *(v284 + 152) || *(v284 + 156))
                                                              {
                                                                result = CAHDec::addToPatcherList(this, v284, v216 + 624, *(v284 + 64), 0x3FFFFFFFFFFLL, 32, v283, 4);
                                                                if (result)
                                                                {
                                                                  return result;
                                                                }
                                                              }

                                                              v285 = *(this + 33) + 4 * v339;
                                                              v286 = *(v285 + 396);
                                                              *(v285 + 396) = 0;
                                                              *(*(this + 33) + 4 * v339 + 396) ^= 0xFFFFFF80;
                                                              v287 = *(this + 33) + 4 * v339;
                                                              v288 = *(v287 + 396);
                                                              *(v287 + 396) = v286;
                                                              v289 = *(v207 + 40);
                                                              if (*v289 || *(v289 + 152) || *(v289 + 156))
                                                              {
                                                                result = CAHDec::addToPatcherList(this, v289, v216 + 396, *(v289 + 68), 0xFFFFFFFFLL, 7, v288, 4);
                                                                if (result)
                                                                {
                                                                  return result;
                                                                }
                                                              }

                                                              v290 = *(this + 33) + 4 * v339;
                                                              v291 = *(v290 + 752);
                                                              *(v290 + 752) = 0;
                                                              *(*(this + 33) + 4 * v339 + 752) ^= 0x3FFu;
                                                              v292 = *(this + 33) + 4 * v339;
                                                              v293 = *(v292 + 752);
                                                              *(v292 + 752) = v291;
                                                              v294 = *(v207 + 40);
                                                              if (*v294 || *(v294 + 152) || *(v294 + 156))
                                                              {
                                                                result = CAHDec::addToPatcherList(this, v294, v216 + 752, *(v294 + 68), 0x3FFFFFFFFFFLL, 32, v293, 4);
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
                                                        *(v205 + 116) = 1;
                                                        *(*(this + 33) + 204) = 0;
                                                      }

                                                      *(*(this + 33) + 524) = 0;
                                                      *(*(this + 33) + 880) = 0;
                                                      *(*(this + 33) + 528) = 0;
                                                      *(*(this + 33) + 884) = 0;
                                                      *(*(this + 33) + 532) = 0;
                                                      *(*(this + 33) + 536) = 0;
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
                                                            v305 = *(v304 + 524);
                                                            *(v304 + 524) = 0;
                                                            *(*(this + 33) + 524) ^= 0xFFFFFFC0;
                                                            v306 = *(this + 33);
                                                            v307 = *(v306 + 524);
                                                            *(v306 + 524) = v305;
                                                            v308 = *(*(this + 32) + 3544);
                                                            if (*v308 || *(v308 + 152) || *(v308 + 156))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v308, 524, v300, 0xFFFFFFFFLL, 6, v307, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            v309 = *(this + 33);
                                                            v310 = *(v309 + 880);
                                                            *(v309 + 880) = 0;
                                                            *(*(this + 33) + 880) ^= 0x3FFu;
                                                            v311 = *(this + 33);
                                                            v312 = *(v311 + 880);
                                                            *(v311 + 880) = v310;
                                                            v313 = *(*(this + 32) + 3544);
                                                            if (*v313 || *(v313 + 152) || *(v313 + 156))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v313, 880, v300, 0x3FFFFFFFFFFLL, 32, v312, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            v314 = *(this + 33);
                                                            v315 = *(v314 + 528);
                                                            *(v314 + 528) = 0;
                                                            *(*(this + 33) + 528) ^= 0xFFFFFFC0;
                                                            v316 = *(this + 33);
                                                            v317 = *(v316 + 528);
                                                            *(v316 + 528) = v315;
                                                            v318 = *(*(this + 32) + 3544);
                                                            if (*v318 || *(v318 + 152) || *(v318 + 156))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v318, 528, v303, 0xFFFFFFFFLL, 6, v317, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            v319 = *(this + 33);
                                                            v320 = *(v319 + 884);
                                                            *(v319 + 884) = 0;
                                                            *(*(this + 33) + 884) ^= 0x3FFu;
                                                            v321 = *(this + 33);
                                                            v322 = *(v321 + 884);
                                                            *(v321 + 884) = v320;
                                                            v323 = *(*(this + 32) + 3544);
                                                            if (*v323 || *(v323 + 152) || *(v323 + 156))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v323, 884, v303, 0x3FFFFFFFFFFLL, 32, v322, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            if (v7)
                                                            {
                                                              *(*(this + 33) + 532) = *(*(this + 33) + 532) & 0xFFFC003F | (((*(*(*(this + 32) + 3544) + 76) >> 6) & 0xFFF) << 6);
                                                              v324 = (*(*(this + 32) + 3544) + 80);
                                                            }

                                                            else
                                                            {
                                                              if (CAHDecTansyAvc::getSWRStride(this, *(v17 + 84) - *(v17 + 80) + 1, *(v18 + 6), *(v18 + 7), *(v18 + 2212)))
                                                              {
                                                                return 0xFFFFFFFFLL;
                                                              }

                                                              *(*(this + 33) + 532) = *(*(this + 33) + 532) & 0xFFFC003F | (((*(this + 2964) >> 6) & 0xFFF) << 6);
                                                              v324 = (this + 11860);
                                                            }

                                                            *(*(this + 33) + 536) = *(*(this + 33) + 536) & 0xFFF8003F | (((*v324 >> 6) & 0x1FFF) << 6);
                                                            goto LABEL_341;
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

LABEL_341:
                                                      v325 = *(this + 32);
                                                      if (*(v325 + 2360) != 1)
                                                      {
                                                        return 0;
                                                      }

                                                      v326 = *(this + 33);
                                                      *(v326 + 984) = *(v326 + 984) & 0xFFFFFFFE | *(v325 + 2508) & 1;
                                                      if (*(v325 + 2508))
                                                      {
                                                        *(v326 + 1960) = 0x10000000;
                                                        *(v326 + 1964) = *(v325 + 2368);
                                                        *(v326 + 1976) = 0;
                                                        *(v326 + 1968) = 0;
                                                        *(v326 + 1980) = *(v325 + 2372);
                                                        v327 = *(v325 + 2404);
                                                        *(v326 + 1996) = *(v325 + 2388);
                                                        *(v326 + 2012) = v327;
                                                      }

                                                      *(*(this + 33) + 984) = *(*(this + 33) + 984) & 0xFFFFFFFD | (2 * (*(v325 + 2512) & 1));
                                                      if (*(v325 + 2512))
                                                      {
                                                        *(v326 + 2028) = 0;
                                                        v328 = *(v325 + 2424);
                                                        *(v326 + 2028) = (*(v325 + 2424) & 1) << 22;
                                                        v329 = ((*(v325 + 2420) & 1) << 23) | ((v328 & 1) << 22) | 0x20000000;
                                                        *(v326 + 2028) = v329;
                                                        if (!*(v325 + 2364))
                                                        {
                                                          ++v329;
                                                        }

                                                        *(v326 + 2028) = v329;
                                                        v330 = *(v325 + 2428);
                                                        v331 = *(v325 + 2444);
                                                        *(v326 + 2064) = *(v325 + 2460);
                                                        *(v326 + 2048) = v331;
                                                        *(v326 + 2032) = v330;
                                                      }

                                                      *(*(this + 33) + 984) = *(*(this + 33) + 984) & 0xFFFFFFFB | (4 * (*(v325 + 2516) & 1));
                                                      *(*(this + 33) + 984) = *(*(this + 33) + 984) & 0xFFFFFFF7 | (8 * (*(v325 + 2520) & 1));
                                                      *(*(this + 33) + 984) = *(*(this + 33) + 984) & 0xFFFFFFEF | (16 * (*(v325 + 2524) & 1));
                                                      *(v326 + 2084) = 0;
                                                      v332 = *(v325 + 2476) == 2 ? 805306368 : 813694976;
                                                      *(v326 + 2084) = v332;
                                                      memcpy((v326 + 2088), (v325 + 2480), 4 * *(v325 + 2476));
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

uint64_t CAHDecClaryAvc::getTileIdxAbove(CAHDecClaryAvc *this, unsigned int a2)
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

uint64_t CAHDecClaryAvc::populateAvdWork(CAHDecClaryAvc *this, unsigned int a2)
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
    v9 = (v2 + 3040);
    v10 = (v4 + 20);
    v22 = a2;
    v11 = 44 * a2;
    v12 = v2 + 956 * v5;
    while (1)
    {
      v13 = v12 + v7;
      *(v13 + 2108) = v8;
      *(v13 + 2110) = 0;
      *(v13 + 2112) = v8;
      *(v12 + v7 + 2114) = 0;
      v14 = *v9;
      if (!CAVDAvcDecoder::GetSDataMemInfo(*(this + 32), v8, &v24, &v23))
      {
        return 0xFFFFFFFFLL;
      }

      v15 = *v10;
      *(v13 + 2136) = *v10;
      *(v13 + 2140) = v15;
      *(v13 + 2144) = 0;
      if (v7)
      {
        v16 = 0;
      }

      else
      {
        v16 = 15;
      }

      *(v13 + 2118) = v16;
      v17 = v24;
      if (*v24 || *(v24 + 152) || *(v24 + 156))
      {
        v18 = v23;
        if (HIDWORD(v23) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v26 = "populateAvdWork";
          v27 = 1024;
          v28 = 1918;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v18 = v23;
        }

        result = CAHDec::addToPatcherList(this, v17, v7 + 575726, v18, 0x3FFFFFFFFFFLL, 32, -1, 2);
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
            v28 = 1919;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v20 = v23;
          }
        }

        result = CAHDec::addToPatcherList(this, v17, v7 + 575728, v20, 0xFFFFFFFFLL, 0, -1, 4);
        if (result)
        {
          return result;
        }
      }

      v9 += 239;
      *(v12 + v7 + 2132) = v14;
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
    *(v2 + 32) = 575704;
  }

  return result;
}

uint64_t CAHDecClaryAvc::allocWorkBuf_SPS(CAHDecClaryAvc *this, _BYTE *a2)
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

  *(this + 2956) = v10;
  *(this + 2957) = v17;
  *(this + 1479) = 0;
  v18 = (v4 << 6) + 64;
  *(this + 2962) = v18;
  v19 = v18 + v18 * v6;
  *(this + 2961) = v19;
  if (!*(*(this + 32) + 2648))
  {
    v20 = (this + 560);
    v21 = (this + 4784);
    v22 = 24;
    while (1)
    {
      v23 = *(this + 2956);
      if (v23 && CAVDDecoder::allocAVDMem(*(this + 32), v20, v23, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_36;
        }

        v29 = 136315650;
        v30 = "allocWorkBuf_SPS";
        v31 = 1024;
        v32 = 2160;
        v33 = 2080;
        v34 = "HdrY";
        v27 = MEMORY[0x277D86220];
        goto LABEL_35;
      }

      v24 = *(this + 2957);
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
        v19 = *(this + 2961);
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
    v32 = 2161;
    v33 = 2080;
    v34 = "HdrC";
    v27 = MEMORY[0x277D86220];
    goto LABEL_35;
  }

LABEL_26:
  v25 = (*MEMORY[0x277D85F70] + v19) & ~*MEMORY[0x277D85F70];
  *(this + 2961) = v25;
  v26 = (24 * v25);
  if (!v26 || !CAVDDecoder::allocAVDMem(*(this + 32), this + 728, v26, 7, 1, 32))
  {
    result = 0;
    *(this + 2966) = 0;
    *(this + 2967) = v5 | (v6 << 20) | 0xF000F;
    return result;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v29 = 136315650;
    v30 = "allocWorkBuf_SPS";
    v31 = 1024;
    v32 = 2179;
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

uint64_t CAHDecClaryAvc::allocWorkBuf_PPS(CAHDecClaryAvc *this, _BYTE *a2, void *a3, void *a4)
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

  if (CAVDDecoder::allocAVDMem(*(this + 32), this + 651, 20 * *(a2 + 779) + 20, 7, 1, 0))
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
    v18 = 2302;
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
    if (CAVDDecoder::allocAVDMem(*(this + 32), this + 662, ((v7 * v10) >> 3) * v14, 7, 1, 0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v15 = 136315650;
      v16 = "allocWorkBuf_PPS";
      v17 = 1024;
      v18 = 2306;
      v19 = 2080;
      v20 = "IpAbove";
      v12 = MEMORY[0x277D86220];
      goto LABEL_19;
    }

    if (CAVDDecoder::allocAVDMem(*(this + 32), this + 673, ((v7 * v11) >> 3) * v14, 7, 1, 0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v15 = 136315650;
      v16 = "allocWorkBuf_PPS";
      v17 = 1024;
      v18 = 2307;
      v19 = 2080;
      v20 = "LfAbovePix";
      v12 = MEMORY[0x277D86220];
      goto LABEL_19;
    }
  }

  if (CAVDDecoder::allocAVDMem(*(this + 32), this + 684, 32 * v14, 7, 1, 0))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v15 = 136315650;
    v16 = "allocWorkBuf_PPS";
    v17 = 1024;
    v18 = 2308;
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
    v18 = 2311;
    v19 = 2080;
    v20 = "MvAboveInfo";
    v12 = MEMORY[0x277D86220];
    goto LABEL_19;
  }

  return result;
}

uint64_t CAHDecClaryAvc::freeWorkBuf_SPS(CAHDecClaryAvc *this)
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
  if (*(this + 1456))
  {
    result = CAVDDecoder::deallocAVDMem(*(this + 32), this + 1456);
    *(this + 1456) = 0;
  }

  return result;
}

uint64_t *CAHDecClaryAvc::freeWorkBuf_PPS(uint64_t *this, void *a2)
{
  v2 = this;
  if (this[1302])
  {
    this = CAVDDecoder::deallocAVDMem(this[32], this + 1302);
    v2[1302] = 0;
  }

  if (v2[1324])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1324);
    v2[1324] = 0;
  }

  if (v2[1280])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1280);
    v2[1280] = 0;
  }

  if (v2[1346])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1346);
    v2[1346] = 0;
  }

  if (v2[1368])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1368);
    v2[1368] = 0;
  }

  if (v2[1390])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1390);
    v2[1390] = 0;
  }

  if (v2[1412])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1412);
    v2[1412] = 0;
  }

  if (v2[1434])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1434);
    v2[1434] = 0;
  }

  return this;
}

uint64_t CAHDecClaryAvc::setVPInstrFifo(uint64_t this, int a2)
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
  *(this + 11840) = a2;
  return this;
}

CAHDec *createClaryHevcDecoder(void *a1)
{
  v2 = operator new(0x2E38uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDec::CAHDec(v2);
    *v3 = &unk_2886662D0;
    *(v3 + 32) = a1;
    *(v3 + 114) = 420332;
    *(v3 + 2) = 2924;
    *(v3 + 1) = xmmword_27775BBF0;
    *(v3 + 8) = 2;
    *(v3 + 7) = a1;
    bzero(v3 + 528, 0x2C00uLL);
  }

  return v3;
}

void CAHDecClaryHevc::~CAHDecClaryHevc(CAHDecClaryHevc *this)
{
  *this = &unk_2886662D0;
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecClaryHevc::~CAHDecClaryHevc(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecClaryHevc::init(CAHDecClaryHevc *this)
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

uint64_t CAHDecClaryHevc::initPicture(CAHDecClaryHevc *this, int a2, __int16 a3)
{
  v13 = *MEMORY[0x277D85DE8];
  *(this + 114) = 420332;
  *(this + 13) = 0;
  v4 = *(this + 34);
  *(this + 33) = v4;
  if (v4)
  {
    bzero(v4, 0x669ECuLL);
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

uint64_t CAHDecClaryHevc::populateSlices(CAHDecClaryHevc *this, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = *(this + *(this + 13) + 34) + 2924;
    v5 = a2;
    do
    {
      CAHDecClaryHevc::populateSliceRegisters(this, v4, v3++);
      v4 += 368;
    }

    while (v5 != v3);
  }

  return 0;
}

uint64_t CAHDecClaryHevc::populateSliceRegisters(uint64_t a1, uint64_t a2, uint64_t a3)
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
      if (!*(a1 + 11820))
      {
        (*(**(a1 + 256) + 352))(*(a1 + 256), a3);
        v27 = *(a1 + 256);
        if (!*(v27 + 8920))
        {
          *(a1 + 11820) = 1;
          *(a2 + 4) |= 0x40000u;
          v95 = 368 * a3;
          if (*(v27 + 8744) || *(v27 + 8896) || *(v27 + 8900))
          {
            result = CAHDec::addToPatcherList(a1, (v27 + 8744), v95 + 3260, 0, 0xFFFFFFFFLL, 8, -256, 4);
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
            result = CAHDec::addToPatcherList(a1, (v27 + 8744), v95 + 3288, 0, 0x3FFFFFFFFFFLL, 32, 1023, 4);
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
        v101 = 1629;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v92 = v96;
      }

      result = CAHDec::addToPatcherList(a1, v87, v86 + 3264, v92, 0x3FFFFFFFFFFLL, 32, 1023, 4);
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
        v101 = 1630;
        v91 = MEMORY[0x277D86220];
        goto LABEL_120;
      }

LABEL_121:
      result = CAHDec::addToPatcherList(a1, v87, v86 + 3268, v90, 0xFFFFFFFFLL, 0, -1, 4);
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
    v101 = 1610;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v88 = v96;
  }

  result = CAHDec::addToPatcherList(a1, v87, v86 + 3264, v88, 0x3FFFFFFFFFFLL, 32, 1023, 4);
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
        v101 = 1611;
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

uint64_t CAHDecClaryHevc::updateCommonRegisters(CAHDecClaryHevc *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecClaryHevc::populateSequenceRegisters(CAHDecClaryHevc *this)
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
    CAHDecTansyHevc::copyScalingList(this, (v1 + 17), *(this + 33) + 788, *(v2 + 3600), v2 + 4448);
  }

  return 0;
}

uint64_t CAHDecClaryHevc::getTileHdrMemInfo(uint64_t result, int a2, void *a3)
{
  v3 = result + 176 * a2;
  *a3 = v3 + 528;
  a3[1] = v3 + 3344;
  return result;
}

__n128 CAHDecClaryHevc::getMVmemInfo(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
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

uint64_t CAHDecClaryHevc::populatePictureRegisters(CAHDecClaryHevc *this)
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
    *(v22 + 684) = v21;
    do
    {
      *(v22 + 688 + 2 * v20) = *(v19 + 9676 + 4 * v20);
      v23 = v20++ >= v21;
    }

    while (!v23);
    v24 = 0;
    v25 = *(v19 + 60) + 1;
    *(v22 + 686) = v25;
    do
    {
      *(v22 + 730 + 2 * v24) = *(v19 + 9760 + 4 * v24);
      v23 = v24++ >= v25;
    }

    while (!v23);
    v26 = v21 * v25;
  }

  else
  {
    v27 = *(this + 33);
    *(v27 + 684) = 65537;
    *(v27 + 688) = 0;
    *(v27 + 690) = *(v14 + 22880);
    *(v27 + 730) = 0;
    *(v27 + 732) = *(v14 + 22888);
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
    CAHDecTansyHevc::copyScalingList(v44, v13 + 136, *(this + 33) + 1784, *(v14 + 3600), v19 + 256);
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

    *(*(this + 33) + v92 + 196) = 0;
    *(*(this + 33) + v92 + 196) = *(*(this + 33) + v92 + 196) & 0x800001FF | (((*(this + 2952) >> 9) & 0x3FFFFF) << 9);
    *(*(this + 33) + v92 + 460) = 0;
    v99 = *(this + 33) + v92;
    v100 = *(v99 + 460);
    *(v99 + 460) = 0;
    *(*(this + 33) + v92 + 460) ^= 0x3FFu;
    v101 = *(this + 33) + v92;
    v102 = *(v101 + 460);
    *(v101 + 460) = v100;
    if (*v93 || *(v93 + 38) || *(v93 + 39))
    {
      result = CAHDec::addToPatcherList(this, v93, v92 + 460, 0, 0x3FFFFFFFFFFLL, 32, v102, 4);
      if (result)
      {
        return result;
      }
    }

    v92 += 4;
    v93 += 176;
  }

  while (v92 != 28);
  *(*(this + 33) + 224) = 0;
  *(*(this + 33) + 488) = 0;
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
    v106 = *(v103 + 224);
    *(v103 + 224) = 0;
    *(*(this + 33) + 224) ^= 0xFFFFFF00;
    v107 = *(this + 33);
    v108 = *(v107 + 224);
    *(v107 + 224) = v106;
    if (v104)
    {
      result = CAHDec::addToPatcherList(this, buf, 224, v105, 0xFFFFFFFFLL, 8, v108, 4);
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
    v112 = *(v111 + 488);
    *(v111 + 488) = 0;
    *(*(this + 33) + 488) ^= 0x3FFu;
    v113 = *(this + 33);
    v114 = *(v113 + 488);
    *(v113 + 488) = v112;
    if (v104)
    {
      result = CAHDec::addToPatcherList(this, buf, 488, v105, 0x3FFFFFFFFFFLL, 32, v114, 4);
      if (result)
      {
        return result;
      }
    }
  }

  *(*(this + 33) + 228) = 0;
  v115 = *(this + 33);
  v116 = *(v115 + 228);
  *(v115 + 228) = 0;
  *(*(this + 33) + 228) ^= 0xFFFFFF00;
  v117 = *(this + 33);
  v118 = *(v117 + 228);
  *(v117 + 228) = v116;
  if (*(this + 1298) || *(this + 2634) || *(this + 2635))
  {
    result = CAHDec::addToPatcherList(this, this + 1298, 228, 0, 0xFFFFFFFFLL, 8, v118, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 492) = 0;
  v119 = *(this + 33);
  v120 = *(v119 + 492);
  *(v119 + 492) = 0;
  *(*(this + 33) + 492) ^= 0x3FFu;
  v121 = *(this + 33);
  v122 = *(v121 + 492);
  *(v121 + 492) = v120;
  if (*(this + 1298) || *(this + 2634) || *(this + 2635))
  {
    result = CAHDec::addToPatcherList(this, this + 1298, 492, 0, 0x3FFFFFFFFFFLL, 32, v122, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 232) = 0;
  v123 = *(this + 33);
  v124 = *(v123 + 232);
  *(v123 + 232) = 0;
  *(*(this + 33) + 232) ^= 0xFFFFFF00;
  v125 = *(this + 33);
  v126 = *(v125 + 232);
  *(v125 + 232) = v124;
  if (*(this + 1320) || *(this + 2678) || *(this + 2679))
  {
    result = CAHDec::addToPatcherList(this, this + 1320, 232, 0, 0xFFFFFFFFLL, 8, v126, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 496) = 0;
  v127 = *(this + 33);
  v128 = *(v127 + 496);
  *(v127 + 496) = 0;
  *(*(this + 33) + 496) ^= 0x3FFu;
  v129 = *(this + 33);
  v130 = *(v129 + 496);
  *(v129 + 496) = v128;
  if (*(this + 1320) || *(this + 2678) || *(this + 2679))
  {
    result = CAHDec::addToPatcherList(this, this + 1320, 496, 0, 0x3FFFFFFFFFFLL, 32, v130, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 236) = 0;
  v131 = *(this + 33);
  v132 = *(v131 + 236);
  *(v131 + 236) = 0;
  *(*(this + 33) + 236) ^= 0xFFFFFF00;
  v133 = *(this + 33);
  v134 = *(v133 + 236);
  *(v133 + 236) = v132;
  if (*(this + 1342) || *(this + 2722) || *(this + 2723))
  {
    result = CAHDec::addToPatcherList(this, this + 1342, 236, 0, 0xFFFFFFFFLL, 8, v134, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 500) = 0;
  v135 = *(this + 33);
  v136 = *(v135 + 500);
  *(v135 + 500) = 0;
  *(*(this + 33) + 500) ^= 0x3FFu;
  v137 = *(this + 33);
  v138 = *(v137 + 500);
  *(v137 + 500) = v136;
  if (*(this + 1342) || *(this + 2722) || *(this + 2723))
  {
    result = CAHDec::addToPatcherList(this, this + 1342, 500, 0, 0x3FFFFFFFFFFLL, 32, v138, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 240) = 0;
  v139 = *(this + 33);
  v140 = *(v139 + 240);
  *(v139 + 240) = 0;
  *(*(this + 33) + 240) ^= 0xFFFFFF00;
  v141 = *(this + 33);
  v142 = *(v141 + 240);
  *(v141 + 240) = v140;
  if (*(this + 1364) || *(this + 2766) || *(this + 2767))
  {
    result = CAHDec::addToPatcherList(this, this + 1364, 240, 0, 0xFFFFFFFFLL, 8, v142, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 504) = 0;
  v143 = *(this + 33);
  v144 = *(v143 + 504);
  *(v143 + 504) = 0;
  *(*(this + 33) + 504) ^= 0x3FFu;
  v145 = *(this + 33);
  v146 = *(v145 + 504);
  *(v145 + 504) = v144;
  if (*(this + 1364) || *(this + 2766) || *(this + 2767))
  {
    result = CAHDec::addToPatcherList(this, this + 1364, 504, 0, 0x3FFFFFFFFFFLL, 32, v146, 4);
    if (result)
    {
      return result;
    }
  }

  v491 = v14;
  v493 = v13;
  *(*(this + 33) + 244) = 0;
  v147 = *(this + 33);
  v148 = *(v147 + 244);
  *(v147 + 244) = 0;
  *(*(this + 33) + 244) ^= 0xFFFFFF00;
  v149 = *(this + 33);
  v150 = *(v149 + 244);
  *(v149 + 244) = v148;
  if (*(this + 1386) || *(this + 2810) || *(this + 2811))
  {
    result = CAHDec::addToPatcherList(this, this + 1386, 244, 0, 0xFFFFFFFFLL, 8, v150, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 508) = 0;
  v151 = *(this + 33);
  v152 = *(v151 + 508);
  *(v151 + 508) = 0;
  *(*(this + 33) + 508) ^= 0x3FFu;
  v153 = *(this + 33);
  v154 = *(v153 + 508);
  *(v153 + 508) = v152;
  if (*(this + 1386) || *(this + 2810) || *(this + 2811))
  {
    result = CAHDec::addToPatcherList(this, this + 1386, 508, 0, 0x3FFFFFFFFFFLL, 32, v154, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 248) = 0;
  *(*(this + 33) + 512) = 0;
  v155 = *(this + 33);
  v156 = *(v155 + 248);
  *(v155 + 248) = 0;
  *(*(this + 33) + 248) ^= 0xFFFFFF00;
  v157 = *(this + 33);
  v158 = *(v157 + 248);
  *(v157 + 248) = v156;
  if (*(this + 1408) || *(this + 2854) || *(this + 2855))
  {
    result = CAHDec::addToPatcherList(this, this + 1408, 248, 0, 0xFFFFFFFFLL, 8, v158, 4);
    if (result)
    {
      return result;
    }
  }

  v159 = *(this + 33);
  v160 = *(v159 + 512);
  *(v159 + 512) = 0;
  *(*(this + 33) + 512) ^= 0x3FFu;
  v161 = *(this + 33);
  v162 = *(v161 + 512);
  *(v161 + 512) = v160;
  if (*(this + 1408) || *(this + 2854) || *(this + 2855))
  {
    result = CAHDec::addToPatcherList(this, this + 1408, 512, 0, 0x3FFFFFFFFFFLL, 32, v162, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 252) = 0;
  v163 = *(this + 33);
  v164 = *(v163 + 252);
  *(v163 + 252) = 0;
  *(*(this + 33) + 252) ^= 0xFFFFFF00;
  v165 = *(this + 33);
  v166 = *(v165 + 252);
  *(v165 + 252) = v164;
  if (*(this + 924) || *(this + 1886) || *(this + 1887))
  {
    result = CAHDec::addToPatcherList(this, this + 924, 252, 0, 0xFFFFFFFFLL, 8, v166, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 516) = 0;
  v167 = *(this + 33);
  v168 = *(v167 + 516);
  *(v167 + 516) = 0;
  *(*(this + 33) + 516) ^= 0x3FFu;
  v169 = *(this + 33);
  v170 = *(v169 + 516);
  *(v169 + 516) = v168;
  if (*(this + 924) || *(this + 1886) || *(this + 1887))
  {
    result = CAHDec::addToPatcherList(this, this + 924, 516, 0, 0x3FFFFFFFFFFLL, 32, v170, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 256) = 0;
  v171 = *(this + 33);
  v172 = *(v171 + 256);
  *(v171 + 256) = 0;
  *(*(this + 33) + 256) ^= 0xFFFFFF00;
  v173 = *(this + 33);
  v174 = *(v173 + 256);
  *(v173 + 256) = v172;
  v175 = (this + 176 * v488 + 7568);
  if (*v175 || *(this + 44 * v488 + 1930) || *(this + 44 * v488 + 1931))
  {
    result = CAHDec::addToPatcherList(this, this + 22 * v488 + 946, 256, 0, 0xFFFFFFFFLL, 8, v174, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 520) = 0;
  v176 = *(this + 33);
  v177 = *(v176 + 520);
  *(v176 + 520) = 0;
  *(*(this + 33) + 520) ^= 0x3FFu;
  v178 = *(this + 33);
  v179 = *(v178 + 520);
  *(v178 + 520) = v177;
  if (*v175 || *(this + 44 * v488 + 1930) || *(this + 44 * v488 + 1931))
  {
    result = CAHDec::addToPatcherList(this, this + 22 * v488 + 946, 520, 0, 0x3FFFFFFFFFFLL, 32, v179, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 260) = 0;
  v180 = *(this + 33);
  v181 = *(v180 + 260);
  *(v180 + 260) = 0;
  *(*(this + 33) + 260) ^= 0xFFFFFF00;
  v182 = *(this + 33);
  v183 = *(v182 + 260);
  *(v182 + 260) = v181;
  if (*(this + 1430) || *(this + 2898) || *(this + 2899))
  {
    result = CAHDec::addToPatcherList(this, this + 1430, 260, 0, 0xFFFFFFFFLL, 8, v183, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 524) = 0;
  v184 = *(this + 33);
  v185 = *(v184 + 524);
  *(v184 + 524) = 0;
  *(*(this + 33) + 524) ^= 0x3FFu;
  v186 = *(this + 33);
  v187 = *(v186 + 524);
  *(v186 + 524) = v185;
  if (*(this + 1430) || *(this + 2898) || *(this + 2899))
  {
    result = CAHDec::addToPatcherList(this, this + 1430, 524, 0, 0x3FFFFFFFFFFLL, 32, v187, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 264) = 0;
  v188 = *(this + 33);
  v189 = *(v188 + 264);
  *(v188 + 264) = 0;
  *(*(this + 33) + 264) ^= 0xFFFFFF00;
  v190 = *(this + 33);
  v191 = *(v190 + 264);
  *(v190 + 264) = v189;
  if (*(this + 1452) || *(this + 2942) || *(this + 2943))
  {
    result = CAHDec::addToPatcherList(this, this + 1452, 264, 0, 0xFFFFFFFFLL, 8, v191, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 528) = 0;
  v192 = *(this + 33);
  v193 = *(v192 + 528);
  *(v192 + 528) = 0;
  *(*(this + 33) + 528) ^= 0x3FFu;
  v194 = *(this + 33);
  v195 = *(v194 + 528);
  *(v194 + 528) = v193;
  if (*(this + 1452) || *(this + 2942) || *(this + 2943))
  {
    result = CAHDec::addToPatcherList(this, this + 1452, 528, 0, 0x3FFFFFFFFFFLL, 32, v195, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 268) = 0;
  *(*(this + 33) + 272) = 0;
  *(*(this + 33) + 532) = 0;
  *(*(this + 33) + 536) = 0;
  *(*(this + 33) + 276) = 0;
  *(*(this + 33) + 540) = 0;
  *(*(this + 33) + 280) = 0;
  *(*(this + 33) + 544) = 0;
  v196 = *(this + 33);
  if (*(*(this + 32) + 2648) == 1)
  {
    v197 = *(v196 + 272);
    *(v196 + 272) = 0;
    *(*(this + 33) + 272) ^= 0xFFFFFF80;
    v198 = *(this + 33);
    v199 = *(v198 + 272);
    *(v198 + 272) = v197;
    v201 = (v480 + 8);
    v200 = *(v480 + 8);
    if (v484)
    {
      if (v200 || *(v480 + 160) || *(v480 + 164))
      {
        result = CAHDec::addToPatcherList(this, (v480 + 8), 272, *(v480 + 68), 0xFFFFFFFFLL, 7, v199, 4);
        if (result)
        {
          return result;
        }
      }

      v202 = *(this + 33);
      v203 = *(v202 + 536);
      *(v202 + 536) = 0;
      *(*(this + 33) + 536) ^= 0x3FFu;
      v204 = *(this + 33);
      v205 = *(v204 + 536);
      *(v204 + 536) = v203;
      if (*v201 || *(v480 + 160) || *(v480 + 164))
      {
        result = CAHDec::addToPatcherList(this, v201, 536, *(v480 + 68), 0x3FFFFFFFFFFLL, 32, v205, 4);
        if (result)
        {
          return result;
        }
      }

      v206 = *(this + 33);
      v207 = *(v206 + 268);
      *(v206 + 268) = 0;
      *(*(this + 33) + 268) ^= 0xFFFFFF80;
      v208 = *(this + 33);
      v209 = *(v208 + 268);
      *(v208 + 268) = v207;
      if (*v201 || *(v480 + 160) || *(v480 + 164))
      {
        result = CAHDec::addToPatcherList(this, v201, 268, *(v480 + 80), 0xFFFFFFFFLL, 7, v209, 4);
        if (result)
        {
          return result;
        }
      }

      v210 = *(this + 33);
      v211 = *(v210 + 532);
      *(v210 + 532) = 0;
      *(*(this + 33) + 532) ^= 0x3FFu;
      v212 = *(this + 33);
      v213 = *(v212 + 532);
      *(v212 + 532) = v211;
      if (*v201 || *(v480 + 160) || *(v480 + 164))
      {
        result = CAHDec::addToPatcherList(this, v201, 532, *(v480 + 80), 0x3FFFFFFFFFFLL, 32, v213, 4);
        if (result)
        {
          return result;
        }
      }

      if (v486)
      {
        v214 = *(this + 33);
        v215 = *(v214 + 280);
        *(v214 + 280) = 0;
        *(*(this + 33) + 280) ^= 0xFFFFFF80;
        v216 = *(this + 33);
        v217 = *(v216 + 280);
        *(v216 + 280) = v215;
        if (*v481 || *(v481 + 152) || *(v481 + 156))
        {
          result = CAHDec::addToPatcherList(this, v481, 280, *(v481 + 56), 0xFFFFFFFFLL, 7, v217, 4);
          if (result)
          {
            return result;
          }
        }

        v218 = *(this + 33);
        v219 = *(v218 + 544);
        *(v218 + 544) = 0;
        *(*(this + 33) + 544) ^= 0x3FFu;
        v220 = *(this + 33);
        v221 = *(v220 + 544);
        *(v220 + 544) = v219;
        if (*v481 || *(v481 + 152) || *(v481 + 156))
        {
          result = CAHDec::addToPatcherList(this, v481, 544, *(v481 + 56), 0x3FFFFFFFFFFLL, 32, v221, 4);
          if (result)
          {
            return result;
          }
        }

        v222 = *(this + 33);
        v223 = *(v222 + 276);
        *(v222 + 276) = 0;
        *(*(this + 33) + 276) ^= 0xFFFFFF80;
        v224 = *(this + 33);
        v225 = *(v224 + 276);
        *(v224 + 276) = v223;
        if (*v481 || *(v481 + 152) || *(v481 + 156))
        {
          result = CAHDec::addToPatcherList(this, v481, 276, *(v481 + 68), 0xFFFFFFFFLL, 7, v225, 4);
          if (result)
          {
            return result;
          }
        }

        v226 = *(this + 33);
        v227 = *(v226 + 540);
        *(v226 + 540) = 0;
        *(*(this + 33) + 540) ^= 0x3FFu;
        v228 = *(this + 33);
        v229 = *(v228 + 540);
        *(v228 + 540) = v227;
        if (*v481 || *(v481 + 152) || *(v481 + 156))
        {
          v230 = v481;
          v231 = *(v481 + 68);
          v232 = this;
LABEL_318:
          v269 = 540;
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
        result = CAHDec::addToPatcherList(this, (v480 + 8), 272, *(v480 + 60), 0xFFFFFFFFLL, 7, v199, 4);
        if (result)
        {
          return result;
        }
      }

      v270 = *(this + 33);
      v271 = *(v270 + 280);
      *(v270 + 280) = 0;
      *(*(this + 33) + 280) ^= 0xFFFFFF80;
      v272 = *(this + 33);
      v273 = *(v272 + 280);
      *(v272 + 280) = v271;
      if (*v201 || *(v480 + 160) || *(v480 + 164))
      {
        result = CAHDec::addToPatcherList(this, v201, 280, *(v480 + 64), 0xFFFFFFFFLL, 7, v273, 4);
        if (result)
        {
          return result;
        }
      }

      v274 = *(this + 33);
      v275 = *(v274 + 268);
      *(v274 + 268) = 0;
      *(*(this + 33) + 268) ^= 0xFFFFFF80;
      v276 = *(this + 33);
      v277 = *(v276 + 268);
      *(v276 + 268) = v275;
      if (*v201 || *(v480 + 160) || *(v480 + 164))
      {
        result = CAHDec::addToPatcherList(this, v201, 268, *(v480 + 72), 0xFFFFFFFFLL, 7, v277, 4);
        if (result)
        {
          return result;
        }
      }

      v278 = *(this + 33);
      v279 = *(v278 + 276);
      *(v278 + 276) = 0;
      *(*(this + 33) + 276) ^= 0xFFFFFF80;
      v280 = *(this + 33);
      v281 = *(v280 + 276);
      *(v280 + 276) = v279;
      if (*v201 || *(v480 + 160) || *(v480 + 164))
      {
        result = CAHDec::addToPatcherList(this, v201, 276, *(v480 + 76), 0xFFFFFFFFLL, 7, v281, 4);
        if (result)
        {
          return result;
        }
      }

      v282 = *(this + 33);
      v283 = *(v282 + 536);
      *(v282 + 536) = 0;
      *(*(this + 33) + 536) ^= 0x3FFu;
      v284 = *(this + 33);
      v285 = *(v284 + 536);
      *(v284 + 536) = v283;
      if (*v201 || *(v480 + 160) || *(v480 + 164))
      {
        result = CAHDec::addToPatcherList(this, v201, 536, *(v480 + 60), 0x3FFFFFFFFFFLL, 32, v285, 4);
        if (result)
        {
          return result;
        }
      }

      v286 = *(this + 33);
      v287 = *(v286 + 544);
      *(v286 + 544) = 0;
      *(*(this + 33) + 544) ^= 0x3FFu;
      v288 = *(this + 33);
      v289 = *(v288 + 544);
      *(v288 + 544) = v287;
      if (*v201 || *(v480 + 160) || *(v480 + 164))
      {
        result = CAHDec::addToPatcherList(this, v201, 544, *(v480 + 64), 0x3FFFFFFFFFFLL, 32, v289, 4);
        if (result)
        {
          return result;
        }
      }

      v290 = *(this + 33);
      v291 = *(v290 + 532);
      *(v290 + 532) = 0;
      *(*(this + 33) + 532) ^= 0x3FFu;
      v292 = *(this + 33);
      v293 = *(v292 + 532);
      *(v292 + 532) = v291;
      if (*v201 || *(v480 + 160) || *(v480 + 164))
      {
        result = CAHDec::addToPatcherList(this, v201, 532, *(v480 + 72), 0x3FFFFFFFFFFLL, 32, v293, 4);
        if (result)
        {
          return result;
        }
      }

      v294 = *(this + 33);
      v295 = *(v294 + 540);
      *(v294 + 540) = 0;
      *(*(this + 33) + 540) ^= 0x3FFu;
      v296 = *(this + 33);
      v229 = *(v296 + 540);
      *(v296 + 540) = v295;
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
    v236 = *(v196 + 268);
    *(v196 + 268) = 0;
    *(*(this + 33) + 268) ^= 0xFFFFFF80;
    v237 = *(this + 33);
    v238 = *(v237 + 268);
    *(v237 + 268) = v236;
    v239 = (this + 176 * v488 + 528);
    if (*v239 || *(this + 44 * v488 + 170) || *(this + 44 * v488 + 171))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v488 + 66, 268, 0, 0xFFFFFFFFLL, 7, v238, 4);
      if (result)
      {
        return result;
      }
    }

    v240 = *(this + 33);
    v241 = *(v240 + 532);
    *(v240 + 532) = 0;
    *(*(this + 33) + 532) ^= 0x3FFu;
    v242 = *(this + 33);
    v243 = *(v242 + 532);
    *(v242 + 532) = v241;
    if (*v239 || *(this + 44 * v488 + 170) || *(this + 44 * v488 + 171))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v488 + 66, 532, 0, 0x3FFFFFFFFFFLL, 32, v243, 4);
      if (result)
      {
        return result;
      }
    }

    v244 = *(this + 33);
    v245 = *(v244 + 272);
    *(v244 + 272) = 0;
    *(*(this + 33) + 272) ^= 0xFFFFFF80;
    v246 = *(this + 33);
    v247 = *(v246 + 272);
    *(v246 + 272) = v245;
    v248 = (v480 + 8);
    if (*(v480 + 8) || *(v480 + 160) || *(v480 + 164))
    {
      result = CAHDec::addToPatcherList(this, (v480 + 8), 272, *(v480 + 60), 0xFFFFFFFFLL, 7, v247, 4);
      if (result)
      {
        return result;
      }
    }

    v249 = *(this + 33);
    v250 = *(v249 + 536);
    *(v249 + 536) = 0;
    *(*(this + 33) + 536) ^= 0x3FFu;
    v251 = *(this + 33);
    v252 = *(v251 + 536);
    *(v251 + 536) = v250;
    if (*v248 || *(v480 + 160) || *(v480 + 164))
    {
      result = CAHDec::addToPatcherList(this, v248, 536, *(v480 + 60), 0x3FFFFFFFFFFLL, 32, v252, 4);
      if (result)
      {
        return result;
      }
    }

    v253 = *(this + 33);
    v254 = *(v253 + 276);
    *(v253 + 276) = 0;
    *(*(this + 33) + 276) ^= 0xFFFFFF80;
    v255 = *(this + 33);
    v256 = *(v255 + 276);
    *(v255 + 276) = v254;
    v257 = (this + 176 * v488 + 3344);
    if (*v257 || *(this + 44 * v488 + 874) || *(this + 44 * v488 + 875))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v488 + 418, 276, 0, 0xFFFFFFFFLL, 7, v256, 4);
      if (result)
      {
        return result;
      }
    }

    v258 = *(this + 33);
    v259 = *(v258 + 540);
    *(v258 + 540) = 0;
    *(*(this + 33) + 540) ^= 0x3FFu;
    v260 = *(this + 33);
    v261 = *(v260 + 540);
    *(v260 + 540) = v259;
    if (*v257 || *(this + 44 * v488 + 874) || *(this + 44 * v488 + 875))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v488 + 418, 540, 0, 0x3FFFFFFFFFFLL, 32, v261, 4);
      if (result)
      {
        return result;
      }
    }

    v262 = *(this + 33);
    v263 = *(v262 + 280);
    *(v262 + 280) = 0;
    *(*(this + 33) + 280) ^= 0xFFFFFF80;
    v264 = *(this + 33);
    v265 = *(v264 + 280);
    *(v264 + 280) = v263;
    if (*v248 || *(v480 + 160) || *(v480 + 164))
    {
      result = CAHDec::addToPatcherList(this, v248, 280, *(v480 + 64), 0xFFFFFFFFLL, 7, v265, 4);
      if (result)
      {
        return result;
      }
    }

    v266 = *(this + 33);
    v267 = *(v266 + 544);
    *(v266 + 544) = 0;
    *(*(this + 33) + 544) ^= 0x3FFu;
    v268 = *(this + 33);
    v229 = *(v268 + 544);
    *(v268 + 544) = v267;
    if (*v248 || *(v480 + 160) || *(v480 + 164))
    {
      v231 = *(v480 + 64);
      v232 = this;
      v230 = (v480 + 8);
      v269 = 544;
      goto LABEL_319;
    }
  }

  v297 = this + 4 * v488;
  if (*(v493 + 88) & 0x2000 | v482)
  {
    *(v297 + 116) = 0;
    *(*(this + 33) + 284) = 0;
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

      *(*(this + 33) + v298 + 284) = 0;
      *(*(this + 33) + v298 + 284) = *(*(this + 33) + v298 + 284) & 0xFFFFFFF | ((v482 << 28) - 0x10000000);
      *(*(this + 33) + v298 + 284) &= 0xF3FFFFFF;
      *(*(this + 33) + v298 + 284) = *(*(this + 33) + v298 + 284) & 0xFDFFFFFF | v299;
      *(*(this + 33) + v298 + 284) |= 0x1000000u;
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

      *(*(this + 33) + v298 + 284) = *(*(this + 33) + v298 + 284) & 0xFFFE0000 | v308;
      *(*(this + 33) + v298 + 284) = *(*(this + 33) + v298 + 284) & 0xFFFDFFFF | ((*(v303 + 20) == 2) << 17);
      *(*(this + 33) + v298 + 316) = 0;
      *(*(this + 33) + v298 + 548) = 0;
      *(*(this + 33) + v298 + 348) = 0;
      *(*(this + 33) + v298 + 580) = 0;
      *(*(this + 33) + v298 + 380) = 0;
      *(*(this + 33) + v298 + 612) = 0;
      *(*(this + 33) + v298 + 412) = 0;
      *(*(this + 33) + v298 + 644) = 0;
      v309 = *(this + 33);
      if (*(*(this + 32) + 2648) == 1)
      {
        v310 = v298 + 348;
        v311 = v309 + v298;
        v312 = *(v311 + 348);
        *(v311 + 348) = 0;
        *(*(this + 33) + v298 + 348) ^= 0xFFFFFF80;
        v313 = *(this + 33) + v298;
        v314 = *(v313 + 348);
        *(v313 + 348) = v312;
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
          v318 = *(v317 + 580);
          *(v317 + 580) = 0;
          *(*(this + 33) + v298 + 580) ^= 0x3FFu;
          v319 = *(this + 33) + v298;
          v320 = *(v319 + 580);
          *(v319 + 580) = v318;
          v321 = *(v303 + 48);
          if (*v321 || *(v321 + 152) || *(v321 + 156))
          {
            result = CAHDec::addToPatcherList(this, v321, v298 + 580, *(v321 + 60), 0x3FFFFFFFFFFLL, 32, v320, 4);
            if (result)
            {
              return result;
            }
          }

          v322 = *(this + 33) + v298;
          v323 = *(v322 + 316);
          *(v322 + 316) = 0;
          *(*(this + 33) + v298 + 316) ^= 0xFFFFFF80;
          v324 = *(this + 33) + v298;
          v325 = *(v324 + 316);
          *(v324 + 316) = v323;
          v326 = *(v303 + 48);
          if (*v326 || *(v326 + 152) || *(v326 + 156))
          {
            result = CAHDec::addToPatcherList(this, v326, v298 + 316, *(v326 + 72), 0xFFFFFFFFLL, 7, v325, 4);
            if (result)
            {
              return result;
            }
          }

          v327 = *(this + 33) + v298;
          v328 = *(v327 + 548);
          *(v327 + 548) = 0;
          *(*(this + 33) + v298 + 548) ^= 0x3FFu;
          v329 = *(this + 33) + v298;
          v330 = *(v329 + 548);
          *(v329 + 548) = v328;
          v331 = *(v303 + 48);
          if (*v331 || *(v331 + 152) || *(v331 + 156))
          {
            result = CAHDec::addToPatcherList(this, v331, v298 + 548, *(v331 + 72), 0x3FFFFFFFFFFLL, 32, v330, 4);
            if (result)
            {
              return result;
            }
          }

          if (v486)
          {
            v332 = *(this + 33) + v298;
            v333 = *(v332 + 412);
            *(v332 + 412) = 0;
            *(*(this + 33) + v298 + 412) ^= 0xFFFFFF80;
            v334 = *(this + 33) + v298;
            v335 = *(v334 + 412);
            *(v334 + 412) = v333;
            if (*v481 || *(v481 + 152) || *(v481 + 156))
            {
              result = CAHDec::addToPatcherList(this, v481, v298 + 412, *(v481 + 56), 0xFFFFFFFFLL, 7, v335, 4);
              if (result)
              {
                return result;
              }
            }

            v336 = *(this + 33) + v298;
            v337 = *(v336 + 644);
            *(v336 + 644) = 0;
            *(*(this + 33) + v298 + 644) ^= 0x3FFu;
            v338 = *(this + 33) + v298;
            v339 = *(v338 + 644);
            *(v338 + 644) = v337;
            if (*v481 || *(v481 + 152) || *(v481 + 156))
            {
              result = CAHDec::addToPatcherList(this, v481, v298 + 644, *(v481 + 56), 0x3FFFFFFFFFFLL, 32, v339, 4);
              if (result)
              {
                return result;
              }
            }

            v340 = *(this + 33) + v298;
            v341 = *(v340 + 380);
            *(v340 + 380) = 0;
            *(*(this + 33) + v298 + 380) ^= 0xFFFFFF80;
            v342 = *(this + 33) + v298;
            v343 = *(v342 + 380);
            *(v342 + 380) = v341;
            if (*v481 || *(v481 + 152) || *(v481 + 156))
            {
              result = CAHDec::addToPatcherList(this, v481, v298 + 380, *(v481 + 68), 0xFFFFFFFFLL, 7, v343, 4);
              if (result)
              {
                return result;
              }
            }

            v344 = *(this + 33) + v298;
            v345 = *(v344 + 612);
            *(v344 + 612) = 0;
            *(*(this + 33) + v298 + 612) ^= 0x3FFu;
            v346 = *(this + 33) + v298;
            v347 = *(v346 + 612);
            *(v346 + 612) = v345;
            if (*v481 || *(v481 + 152) || *(v481 + 156))
            {
              v348 = v298 + 612;
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
          v388 = *(v387 + 412);
          *(v387 + 412) = 0;
          *(*(this + 33) + v298 + 412) ^= 0xFFFFFF80;
          v389 = *(this + 33) + v298;
          v390 = *(v389 + 412);
          *(v389 + 412) = v388;
          v391 = *(v303 + 48);
          if (*v391 || *(v391 + 152) || *(v391 + 156))
          {
            result = CAHDec::addToPatcherList(this, v391, v298 + 412, *(v391 + 56), 0xFFFFFFFFLL, 7, v390, 4);
            if (result)
            {
              return result;
            }
          }

          v392 = *(this + 33) + v298;
          v393 = *(v392 + 316);
          *(v392 + 316) = 0;
          *(*(this + 33) + v298 + 316) ^= 0xFFFFFF80;
          v394 = *(this + 33) + v298;
          v395 = *(v394 + 316);
          *(v394 + 316) = v393;
          v396 = *(v303 + 48);
          if (*v396 || *(v396 + 152) || *(v396 + 156))
          {
            result = CAHDec::addToPatcherList(this, v396, v298 + 316, *(v396 + 64), 0xFFFFFFFFLL, 7, v395, 4);
            if (result)
            {
              return result;
            }
          }

          v397 = *(this + 33) + v298;
          v398 = *(v397 + 380);
          *(v397 + 380) = 0;
          *(*(this + 33) + v298 + 380) ^= 0xFFFFFF80;
          v399 = *(this + 33) + v298;
          v400 = *(v399 + 380);
          *(v399 + 380) = v398;
          v401 = *(v303 + 48);
          if (*v401 || *(v401 + 152) || *(v401 + 156))
          {
            result = CAHDec::addToPatcherList(this, v401, v298 + 380, *(v401 + 68), 0xFFFFFFFFLL, 7, v400, 4);
            if (result)
            {
              return result;
            }
          }

          v402 = *(this + 33) + v298;
          v403 = *(v402 + 580);
          *(v402 + 580) = 0;
          *(*(this + 33) + v298 + 580) ^= 0x3FFu;
          v404 = *(this + 33) + v298;
          v405 = *(v404 + 580);
          *(v404 + 580) = v403;
          v406 = *(v303 + 48);
          if (*v406 || *(v406 + 152) || *(v406 + 156))
          {
            result = CAHDec::addToPatcherList(this, v406, v298 + 580, *(v406 + 52), 0x3FFFFFFFFFFLL, 32, v405, 4);
            if (result)
            {
              return result;
            }
          }

          v407 = *(this + 33) + v298;
          v408 = *(v407 + 644);
          *(v407 + 644) = 0;
          *(*(this + 33) + v298 + 644) ^= 0x3FFu;
          v409 = *(this + 33) + v298;
          v410 = *(v409 + 644);
          *(v409 + 644) = v408;
          v411 = *(v303 + 48);
          if (*v411 || *(v411 + 152) || *(v411 + 156))
          {
            result = CAHDec::addToPatcherList(this, v411, v298 + 644, *(v411 + 56), 0x3FFFFFFFFFFLL, 32, v410, 4);
            if (result)
            {
              return result;
            }
          }

          v412 = *(this + 33) + v298;
          v413 = *(v412 + 548);
          *(v412 + 548) = 0;
          *(*(this + 33) + v298 + 548) ^= 0x3FFu;
          v414 = *(this + 33) + v298;
          v415 = *(v414 + 548);
          *(v414 + 548) = v413;
          v416 = *(v303 + 48);
          if (*v416 || *(v416 + 152) || *(v416 + 156))
          {
            result = CAHDec::addToPatcherList(this, v416, v298 + 548, *(v416 + 64), 0x3FFFFFFFFFFLL, 32, v415, 4);
            if (result)
            {
              return result;
            }
          }

          v417 = *(this + 33) + v298;
          v418 = *(v417 + 612);
          *(v417 + 612) = 0;
          *(*(this + 33) + v298 + 612) ^= 0x3FFu;
          v419 = *(this + 33) + v298;
          v347 = *(v419 + 612);
          *(v419 + 612) = v418;
          v349 = *(v303 + 48);
          if (*v349 || *(v349 + 152) || *(v349 + 156))
          {
            v348 = v298 + 612;
            goto LABEL_437;
          }
        }
      }

      else
      {
        v350 = v309 + v298;
        v351 = *(v350 + 316);
        *(v350 + 316) = 0;
        *(*(this + 33) + v298 + 316) ^= 0xFFFFFF80;
        v352 = *(this + 33) + v298;
        v353 = *(v352 + 316);
        *(v352 + 316) = v351;
        v354 = *v301;
        if (**v301 || *(v354 + 152) || *(v354 + 156))
        {
          result = CAHDec::addToPatcherList(this, *v301, v298 + 316, 0, 0xFFFFFFFFLL, 7, v353, 4);
          if (result)
          {
            return result;
          }
        }

        v355 = *(this + 33) + v298;
        v356 = *(v355 + 548);
        *(v355 + 548) = 0;
        *(*(this + 33) + v298 + 548) ^= 0x3FFu;
        v357 = *(this + 33) + v298;
        v358 = *(v357 + 548);
        *(v357 + 548) = v356;
        if (*v354 || *(v354 + 152) || *(v354 + 156))
        {
          result = CAHDec::addToPatcherList(this, v354, v298 + 548, 0, 0x3FFFFFFFFFFLL, 32, v358, 4);
          if (result)
          {
            return result;
          }
        }

        v359 = *(this + 33) + v298;
        v360 = *(v359 + 348);
        *(v359 + 348) = 0;
        *(*(this + 33) + v298 + 348) ^= 0xFFFFFF80;
        v361 = *(this + 33) + v298;
        v362 = *(v361 + 348);
        *(v361 + 348) = v360;
        v363 = *(v303 + 48);
        if (*v363 || *(v363 + 152) || *(v363 + 156))
        {
          result = CAHDec::addToPatcherList(this, v363, v298 + 348, *(v363 + 52), 0xFFFFFFFFLL, 7, v362, 4);
          if (result)
          {
            return result;
          }
        }

        v364 = *(this + 33) + v298;
        v365 = *(v364 + 580);
        *(v364 + 580) = 0;
        *(*(this + 33) + v298 + 580) ^= 0x3FFu;
        v366 = *(this + 33) + v298;
        v367 = *(v366 + 580);
        *(v366 + 580) = v365;
        v368 = *(v303 + 48);
        if (*v368 || *(v368 + 152) || *(v368 + 156))
        {
          result = CAHDec::addToPatcherList(this, v368, v298 + 580, *(v368 + 52), 0x3FFFFFFFFFFLL, 32, v367, 4);
          if (result)
          {
            return result;
          }
        }

        v369 = *(this + 33) + v298;
        v370 = *(v369 + 380);
        *(v369 + 380) = 0;
        *(*(this + 33) + v298 + 380) ^= 0xFFFFFF80;
        v371 = *(this + 33) + v298;
        v372 = *(v371 + 380);
        *(v371 + 380) = v370;
        v373 = *v302;
        if (**v302 || *(v373 + 152) || *(v373 + 156))
        {
          result = CAHDec::addToPatcherList(this, *v302, v298 + 380, 0, 0xFFFFFFFFLL, 7, v372, 4);
          if (result)
          {
            return result;
          }
        }

        v374 = *(this + 33) + v298;
        v375 = *(v374 + 612);
        *(v374 + 612) = 0;
        *(*(this + 33) + v298 + 612) ^= 0x3FFu;
        v376 = *(this + 33) + v298;
        v377 = *(v376 + 612);
        *(v376 + 612) = v375;
        if (*v373 || *(v373 + 152) || *(v373 + 156))
        {
          result = CAHDec::addToPatcherList(this, v373, v298 + 612, 0, 0x3FFFFFFFFFFLL, 32, v377, 4);
          if (result)
          {
            return result;
          }
        }

        v378 = *(this + 33) + v298;
        v379 = *(v378 + 412);
        *(v378 + 412) = 0;
        *(*(this + 33) + v298 + 412) ^= 0xFFFFFF80;
        v380 = *(this + 33) + v298;
        v381 = *(v380 + 412);
        *(v380 + 412) = v379;
        v382 = *(v303 + 48);
        if (*v382 || *(v382 + 152) || *(v382 + 156))
        {
          result = CAHDec::addToPatcherList(this, v382, v298 + 412, *(v382 + 56), 0xFFFFFFFFLL, 7, v381, 4);
          if (result)
          {
            return result;
          }
        }

        v383 = *(this + 33) + v298;
        v384 = *(v383 + 644);
        *(v383 + 644) = 0;
        *(*(this + 33) + v298 + 644) ^= 0x3FFu;
        v385 = *(this + 33) + v298;
        v347 = *(v385 + 644);
        *(v385 + 644) = v384;
        v349 = *(v303 + 48);
        if (*v349 || *(v349 + 152) || *(v349 + 156))
        {
          v348 = v298 + 644;
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
  *(*(this + 33) + 284) = 0;
LABEL_440:
  *(*(this + 33) + 444) = 0;
  *(*(this + 33) + 448) = 0;
  *(*(this + 33) + 452) = 0;
  *(*(this + 33) + 456) = 0;
  if (!v495)
  {
    goto LABEL_500;
  }

  v420 = *(this + 32);
  if (v489 && v485 == 2)
  {
    v421 = *(*(v420 + 8248) + 60);
    v422 = *(this + 33);
    v423 = *(v422 + 444);
    *(v422 + 444) = 0;
    *(*(this + 33) + 444) ^= 0xFFFFFFC0;
    v424 = *(this + 33);
    v425 = *(v424 + 444);
    *(v424 + 444) = v423;
    v426 = *(*(this + 32) + 8248);
    if (*v426 || *(v426 + 152) || *(v426 + 156))
    {
      result = CAHDec::addToPatcherList(this, v426, 444, v421, 0xFFFFFFFFLL, 6, v425, 4);
      if (result)
      {
        return result;
      }
    }

    v427 = *(this + 33);
    v428 = *(v427 + 676);
    *(v427 + 676) = 0;
    *(*(this + 33) + 676) ^= 0x3FFu;
    v429 = *(this + 33);
    v430 = *(v429 + 676);
    *(v429 + 676) = v428;
    v431 = *(*(this + 32) + 8248);
    if (*v431 || *(v431 + 152) || *(v431 + 156))
    {
      result = CAHDec::addToPatcherList(this, v431, 676, v421, 0x3FFFFFFFFFFLL, 32, v430, 4);
      if (result)
      {
        return result;
      }
    }

    if (v486)
    {
      v432 = *(v481 + 56);
      v433 = *(this + 33);
      v434 = *(v433 + 448);
      *(v433 + 448) = 0;
      *(*(this + 33) + 448) ^= 0xFFFFFFC0;
      v435 = *(this + 33);
      v436 = *(v435 + 448);
      *(v435 + 448) = v434;
      if (*v481 || *(v481 + 152) || *(v481 + 156))
      {
        result = CAHDec::addToPatcherList(this, v481, 448, v432, 0xFFFFFFFFLL, 6, v436, 4);
        if (result)
        {
          return result;
        }
      }

      v437 = *(this + 33);
      v438 = *(v437 + 680);
      *(v437 + 680) = 0;
      *(*(this + 33) + 680) ^= 0x3FFu;
      v439 = *(this + 33);
      v440 = *(v439 + 680);
      *(v439 + 680) = v438;
      if (*v481 || *(v481 + 152) || *(v481 + 156))
      {
        result = CAHDec::addToPatcherList(this, v481, 680, v432, 0x3FFFFFFFFFFLL, 32, v440, 4);
        if (result)
        {
          return result;
        }
      }
    }

    if (v487)
    {
      *(*(this + 33) + 452) = *(*(this + 33) + 452) & 0xFFFC003F | (((*(*(*(this + 32) + 8248) + 84) >> 6) & 0xFFF) << 6);
      if (v486)
      {
        v441 = v481;
LABEL_463:
        v442 = (v441 + 80);
LABEL_499:
        *(*(this + 33) + 456) = *(*(this + 33) + 456) & 0xFFF8003F | (((*v442 >> 6) & 0x1FFF) << 6);
      }

LABEL_500:
      v472 = *(this + 32);
      if (*(v472 + 2360) != 1)
      {
        return 0;
      }

      v473 = *(this + 33);
      *(v473 + 780) = *(v473 + 780) & 0xFFFFFFFE | *(v472 + 2508) & 1;
      if (*(v472 + 2508))
      {
        *(v473 + 2780) = 0x10000000;
        *(v473 + 2784) = *(v472 + 2368);
        *(v473 + 2792) = 0;
        *(v473 + 2788) = 0;
        *(v473 + 2800) = *(v472 + 2372);
        v474 = *(v472 + 2388);
        *(v473 + 2832) = *(v472 + 2404);
        *(v473 + 2816) = v474;
      }

      *(*(this + 33) + 780) = *(*(this + 33) + 780) & 0xFFFFFFFD | (2 * (*(v472 + 2512) & 1));
      if (*(v472 + 2512))
      {
        *(v473 + 2848) = 0;
        v475 = *(v472 + 2424);
        *(v473 + 2848) = (*(v472 + 2424) & 1) << 22;
        v476 = ((*(v472 + 2420) & 1) << 23) | ((v475 & 1) << 22) | 0x20000000;
        *(v473 + 2848) = v476;
        if (!*(v472 + 2364))
        {
          ++v476;
        }

        *(v473 + 2848) = v476;
        v477 = *(v472 + 2428);
        v478 = *(v472 + 2460);
        *(v473 + 2868) = *(v472 + 2444);
        *(v473 + 2884) = v478;
        *(v473 + 2852) = v477;
      }

      *(*(this + 33) + 780) = *(*(this + 33) + 780) & 0xFFFFFFFB | (4 * (*(v472 + 2516) & 1));
      *(*(this + 33) + 780) = *(*(this + 33) + 780) & 0xFFFFFFF7 | (8 * (*(v472 + 2520) & 1));
      *(*(this + 33) + 780) = *(*(this + 33) + 780) & 0xFFFFFFEF | (16 * (*(v472 + 2524) & 1));
      *(v473 + 2904) = 0;
      v479 = *(v472 + 2476) == 2 ? 805306368 : 813694976;
      *(v473 + 2904) = v479;
      memcpy((v473 + 2908), (v472 + 2480), 4 * *(v472 + 2476));
      if (!*(v472 + 2516))
      {
        return 0;
      }

      result = 0;
      *(v472 + 2516) = 0;
      return result;
    }

    if (CAHDecClaryHevc::getSWRStride(this, *(v493 + 160) - *(v493 + 156) + 1, v491[909], v491[910], v491[5713]))
    {
      return 0xFFFFFFFFLL;
    }

    *(*(this + 33) + 452) = *(*(this + 33) + 452) & 0xFFFC003F | (((*(this + 2956) >> 6) & 0xFFF) << 6);
    if (!v486)
    {
      goto LABEL_500;
    }

LABEL_498:
    v442 = (this + 11828);
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
  v453 = *(v452 + 444);
  *(v452 + 444) = 0;
  *(*(this + 33) + 444) ^= 0xFFFFFFC0;
  v454 = *(this + 33);
  v455 = *(v454 + 444);
  *(v454 + 444) = v453;
  v456 = *(*(this + 32) + 8248);
  if (!*v456 && !*(v456 + 152) && !*(v456 + 156) || (result = CAHDec::addToPatcherList(this, v456, 444, v448, 0xFFFFFFFFLL, 6, v455, 4), !result))
  {
    if ((v457 = *(this + 33), v458 = *(v457 + 676), *(v457 + 676) = 0, *(*(this + 33) + 676) ^= 0x3FFu, v459 = *(this + 33), v460 = *(v459 + 676), *(v459 + 676) = v458, v461 = *(*(this + 32) + 8248), !*v461) && !*(v461 + 152) && !*(v461 + 156) || (result = CAHDec::addToPatcherList(this, v461, 676, v448, 0x3FFFFFFFFFFLL, 32, v460, 4), !result))
    {
      if ((v462 = *(this + 33), v463 = *(v462 + 448), *(v462 + 448) = 0, *(*(this + 33) + 448) ^= 0xFFFFFFC0, v464 = *(this + 33), v465 = *(v464 + 448), *(v464 + 448) = v463, v466 = *(*(this + 32) + 8248), !*v466) && !*(v466 + 152) && !*(v466 + 156) || (result = CAHDec::addToPatcherList(this, v466, 448, v450, 0xFFFFFFFFLL, 6, v465, 4), !result))
      {
        if ((v467 = *(this + 33), v468 = *(v467 + 680), *(v467 + 680) = 0, *(*(this + 33) + 680) ^= 0x3FFu, v469 = *(this + 33), v470 = *(v469 + 680), *(v469 + 680) = v468, v471 = *(*(this + 32) + 8248), !*v471) && !*(v471 + 152) && !*(v471 + 156) || (result = CAHDec::addToPatcherList(this, v471, 680, v450, 0x3FFFFFFFFFFLL, 32, v470, 4), !result))
        {
          if (v487)
          {
            *(*(this + 33) + 452) = *(*(this + 33) + 452) & 0xFFFC003F | (((*(*(*(this + 32) + 8248) + 76) >> 6) & 0xFFF) << 6);
            v441 = *(*(this + 32) + 8248);
            goto LABEL_463;
          }

          if (CAHDecClaryHevc::getSWRStride(this, *(v493 + 160) - *(v493 + 156) + 1, v491[909], v491[910], v491[5713]))
          {
            return 0xFFFFFFFFLL;
          }

          *(*(this + 33) + 452) = *(*(this + 33) + 452) & 0xFFFC003F | (((*(this + 2956) >> 6) & 0xFFF) << 6);
          goto LABEL_498;
        }
      }
    }
  }

  return result;
}

uint64_t CAHDecClaryHevc::getTileIdxAbove(CAHDecClaryHevc *this, unsigned int a2)
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

uint64_t CAHDecClaryHevc::populateAvdWork(CAHDecClaryHevc *this, unsigned int a2)
{
  v128[2] = *MEMORY[0x277D85DE8];
  v3 = *(this + 32);
  v4 = *(this + 33);
  v5 = *(v3 + 8208);
  v6 = *(v3 + 8168);
  v98 = *(v3 + 8184);
  v7 = *(v3 + 8924);
  v8 = *(v3 + 2960);
  v9 = *(v3 + 2964);
  v10 = *(v3 + 8176) + 9856 * *(v3 + 8212);
  v128[0] = 0;
  v128[1] = 0;
  v127 = 0;
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

  v108 = *(v4 + 686) * *(v4 + 684);
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
  memset_pattern16(__b, &unk_27775BC00, 8uLL);
  v20 = v4 + 223724;
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
    v128[v25] = v20 + (v25 - v17) * v23;
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
  v28 = v128[v24];
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
  v106 = v4 + 3272;
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
            if (v40 >= *(*(this + 33) + 2 * (HIDWORD(v104) + 1) + 730))
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
            *(&buf[1] + 6) = 1883;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v54 = v123;
          }

          result = CAHDec::addToPatcherList(this, v53, v52 + 223746, HIDWORD(v122) + v54, 0x3FFFFFFFFFFLL, 32, -1, 2);
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
            *(&buf[1] + 6) = 1884;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v55 = v123;
          }

          result = CAHDec::addToPatcherList(this, v53, v52 + 223748, HIDWORD(v122) + v55, 0xFFFFFFFFLL, 0, -1, 4);
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
              v65 = *(v64 + 684);
              LODWORD(v104) = (v33 - *(v64 + 730 + 2 * (v56 / v65)) + *(v64 + 730 + 2 * (v56 / v65 + 1))) % v51;
              HIDWORD(v104) = v56 / v65;
              v100 = *(v64 + 2 * (v56 % v65) + 688);
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
          v67 = *(*(this + 33) + 684);
          if (v63 / v67 + 1 == v26 / v67)
          {
            v27 |= 0x10u;
          }
        }

        ++*(&v128[-1] + v33);
        v128[v33] += 48;
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

        v28 = v128[v33];
        v29 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v20) >> 4);
        *(v28 + 4) = *(&v128[-1] + v33);
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
          *(&buf[1] + 6) = 1807;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v46 = v123;
        }

        result = CAHDec::addToPatcherList(this, v45, v44 + 223746, HIDWORD(v122) + v46, 0x3FFFFFFFFFFLL, 32, -1, 2);
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
        *(&buf[1] + 6) = 1808;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v49 = v123;
      }

      result = CAHDec::addToPatcherList(this, v45, v44 + 223748, v47 + v49, 0xFFFFFFFFLL, 0, -1, 4);
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
      v78 = v74 + 223746;
      v79 = v123;
      if ((v123 + v76) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "populateAvdWork";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = 1979;
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
    ++*(&v128[-1] + v33);
    v80 = v92;
    if (v110)
    {
      v81 = 0;
      buf[0] = 0;
      buf[1] = 0;
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
          if (*(v82 + 4) + 1 == *(&v128[-1] + v84))
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

      v88 = *(&v128[-1] + v84);
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
      *(v90 + 2 * v80 - 8) = *(&v128[-1] + v80);
      *(v90 + 4 * v80) = (v80 - v95) * v93 + 223724;
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
    *(&buf[1] + 6) = 1978;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v75 = v123;
  }

  result = CAHDec::addToPatcherList(this, v73, v74 + 223746, HIDWORD(v122) + v75, 0x3FFFFFFFFFFLL, 32, -1, 2);
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