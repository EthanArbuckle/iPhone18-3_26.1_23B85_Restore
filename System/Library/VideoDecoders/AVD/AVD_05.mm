void CAVDMvHevcDecoder::flushMV_RLM(CAVDMvHevcDecoder *this)
{
  v2 = this + 9720;
  v3 = 16;
  v4 = this + 9720;
  do
  {
    v5 = *v4;
    v4 += 40;
    if (v5 == 1)
    {
      *(v2 - 4) = 0;
      *(v2 - 1) = 0;
      *v2 = 0;
      bzero(*(v2 - 3), *(this + 931) + 1);
      --*(this + 2582);
    }

    v2 = v4;
    --v3;
  }

  while (v3);
  v6 = (this + 3016);
  v7 = -1;
  do
  {
    if (*v6)
    {
      HEVC_RLM::releaseAllPictures(*v6);
    }

    ++v7;
    ++v6;
  }

  while (v7 < *(this + 931));
}

uint64_t CAVDMvHevcDecoder::VADecodeFrame(uint64_t a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a4;
  v242 = *MEMORY[0x277D85DE8];
  *(a1 + 2960) = 0;
  v227 = 0;
  v228 = 0;
  v226 = 0;
  v223 = (a1 + 0x2000);
  *(a1 + 8994) = 0;
  *(a1 + 8948) = 0;
  *(a1 + 2968) = *(*(a1 + 2336) + 5668);
  v16 = a4 == 1;
  if (a4 == 1)
  {
    (*(*a1 + 256))(a1, 1);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(*(a1 + 2336) + 5672);
      *buf = 136315394;
      *&buf[4] = "VADecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v17;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s MultiView client %d", buf, 0x12u);
    }

    if (!*(*(a1 + 2336) + 5672))
    {
      v223[800] = 0;
    }
  }

  v18 = *(a1 + 8160);
  if (!v18)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *buf = 136315138;
    *&buf[4] = "VADecodeFrame";
    v19 = MEMORY[0x277D86220];
    v20 = "AppleAVD: ERROR: %s: VPS extension missing!\n";
    goto LABEL_13;
  }

  *(a1 + 2972) = *(v18 + 2 * *(a1 + 2968) + 580);
  if (a5 == -1)
  {
    *(a1 + 8248) = 0;
    *(a1 + 8240) = 0xFFFFFFFF00000000;
  }

  else
  {
    CAVDHevcDecoder::setPixelBuffer(a1, a1 + 8240, a5, 1, &v228);
    if (!*(a1 + 8248))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v19 = MEMORY[0x277D86220];
        v20 = "AppleAVD: Error getting display buffer!";
LABEL_23:
        v21 = buf;
        v22 = 2;
        goto LABEL_24;
      }

      goto LABEL_25;
    }
  }

  CAVDHevcDecoder::setPixelBuffer(a1, a1 + 8224, a6, 0, (a1 + 2088));
  if (!*(a1 + 8232))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v19 = MEMORY[0x277D86220];
      v20 = "AppleAVD: Error getting decoder buffer!";
      goto LABEL_23;
    }

LABEL_25:
    v25 = 305;
    goto LABEL_26;
  }

  *(*(a1 + 2088) + 204) = *(a1 + 2744);
  v23 = (*(*a1 + 184))(a1);
  if (a7 != -1 && v23)
  {
    CAVDHevcDecoder::setPixelBuffer(a1, a1 + 8256, a7, 0, &v227);
    if (!*(a1 + 8264))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_38;
      }

      *buf = 136315394;
      *&buf[4] = "VADecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v12;
      v27 = MEMORY[0x277D86220];
      v28 = "AppleAVD: ERROR: %s(): Error getting second decoder buffer for scaling! (frameNum :%d)";
      goto LABEL_37;
    }

    v24 = v227;
    if (v227)
    {
      *(v227 + 204) = 0;
      *(v24 + 208) = 0;
      goto LABEL_38;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "VADecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v12;
      v27 = MEMORY[0x277D86220];
      v28 = "AppleAVD: ERROR: %s(): vSurfInfoScalerRef was not set! (frameNum :%d)";
LABEL_37:
      _os_log_impl(&dword_277606000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 0x12u);
    }
  }

LABEL_38:
  *(a1 + 2648) = *(*(a1 + 8232) + 160);
  v29 = *(a1 + 8248);
  if (*(a1 + 9) == 1)
  {
    if (v29)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (!v29)
  {
LABEL_43:
    v30 = 0;
    goto LABEL_44;
  }

  v30 = (*(*a1 + 432))(a1, *(v29 + 148));
LABEL_44:
  *(a1 + 2644) = v30;
LABEL_45:
  if (*(a1 + 2948) == 1 && *(a1 + 2952) == 2 && !*(a1 + 2892))
  {
    if (*(a1 + 2924))
    {
      CAVDHevcDecoder::setPixelBuffer(a1, a1 + 8272, 125, 0, &v226);
      if (!*(a1 + 8280))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        *buf = 0;
        v19 = MEMORY[0x277D86220];
        v20 = "AppleAVD: Error getting chroma scratch buffer!";
        goto LABEL_23;
      }
    }

    if (!*(a1 + 2644) && *(a1 + 2648) == 1)
    {
      v223[802] = 1;
    }
  }

  v222 = a2;
  v31 = *(a1 + 8248);
  if (!v31)
  {
    v31 = *(a1 + 8232);
  }

  (*(*a1 + 104))(a1, 22, v31 + 148);
  LODWORD(v32) = *(a1 + 2996);
  if (v32 > a3)
  {
    CAVDHevcDecoder::setHevcVideoParsingMode(a1);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    goto LABEL_57;
  }

  v217 = 0;
  v218 = v12;
  v33 = 0;
  v216 = 0;
  v43 = 0;
  v44 = 0;
  v45 = v222 + a3;
  v219 = (a1 + 3712);
  v212 = 0;
  v46 = v222;
  v214 = a6;
  v213 = v45;
LABEL_63:
  switch(v32)
  {
    case 1:
      v47 = v16;
      v53 = *v46;
      v48 = v46 + 1;
      v50 = v53;
      v51 = v53 + 1;
      break;
    case 2:
      v47 = v16;
      v52 = *v46;
      v48 = v46 + 2;
      v50 = __rev16(v52);
      v51 = v50 + 2;
      break;
    case 4:
      v47 = v16;
      v49 = *v46;
      v48 = (v46 + 1);
      v50 = bswap32(v49);
      v51 = v50 + 4;
      break;
    default:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AVC_Decoder::ParseHeader unsupported naluLengthSize ", buf, 2u);
      }

      v25 = 317;
      goto LABEL_362;
  }

  if (v50)
  {
    v54 = &v48[v50] > v45;
  }

  else
  {
    v54 = 1;
  }

  if (v54)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "VADecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v50;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s NALU bad size! %d", buf, 0x12u);
    }

    v25 = 318;
    goto LABEL_362;
  }

  v55 = v43;
  v215 = v48;
  HEVC_RBSP::setRBSP(*(a1 + 3000), v48, v50);
  if ((HEVC_RBSP::parseNAL(*(a1 + 3000), &v229, 0) & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_361;
    }

    *buf = 136315394;
    *&buf[4] = "VADecodeFrame";
    *&buf[12] = 1024;
    *&buf[14] = v50;
    v157 = MEMORY[0x277D86220];
    v158 = "AppleAVD: %s parse NAL error ! %d";
    v159 = 18;
    goto LABEL_242;
  }

  if (*v219 == -1)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_361;
    }

    *buf = 136315138;
    *&buf[4] = "VADecodeFrame";
    v157 = MEMORY[0x277D86220];
    v158 = "AppleAVD: %s invalid VPS id!";
LABEL_241:
    v159 = 12;
    goto LABEL_242;
  }

  v56 = v44;
  v220 = v33;
  v57 = v231;
  v58 = *(a1 + 8088);
  if (v231 > v58)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_361;
    }

    *buf = 136315650;
    *&buf[4] = "VADecodeFrame";
    *&buf[12] = 1024;
    *&buf[14] = v57;
    *&buf[18] = 1024;
    *&buf[20] = v58;
    v157 = MEMORY[0x277D86220];
    v158 = "AppleAVD: %s nuh_layer_id > max layer ! %d %d";
    v159 = 24;
    goto LABEL_242;
  }

  v59 = 0;
  v43 = v51 + v55;
  v60 = v32 + v56;
  v16 = v47;
  v33 = v220;
  do
  {
    if (v231 == *(*(*(a1 + 8160) + 512) + 28 * v59 + 26))
    {
      v61 = v230;
      v62 = v217;
      if ((0x7003F03FFuLL >> v230))
      {
        v63 = 0x7FFC0FC00uLL >> v230;
      }

      else
      {
        v63 = v217;
      }

      if (v230 <= 0x22)
      {
        v62 = v63;
      }

      v217 = v62;
      v64 = *(a1 + 2968);
      if (v231 != v64 && v223[801] != 1)
      {
        a6 = v214;
        v67 = v222;
        v65 = v50;
        goto LABEL_233;
      }

      LODWORD(v12) = v218;
      if (v230 <= 15)
      {
        v65 = v50;
        if (v230 < 0xA)
        {
          if (*(a1 + 2892))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *&buf[4] = v61;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: Rejecting non-IRAP frame in tiled decode %d", buf, 8u);
            }

            goto LABEL_330;
          }

LABEL_93:
          if (*(a1 + 2688))
          {
            v66 = a1 + 10832;
          }

          else
          {
            v68 = &v215[v50 - 1];
            v69 = v65 + 1;
            v66 = a1 + 10832;
            do
            {
              v70 = *v68--;
              v65 = v69 - 1;
              if (v70)
              {
                v71 = 1;
              }

              else
              {
                v71 = v69 == 1;
              }

              --v69;
            }

            while (!v71);
          }

          v209 = v43;
          if (v220)
          {
            if (v220 > 599)
            {
              goto LABEL_372;
            }
          }

          else if (*(a1 + 2725))
          {
            v98 = (v230 & 0xFFFFFFF8) == 0x10 && v64 == 0;
            if (v218 != 1 && !v98)
            {
              v25 = 406;
              goto LABEL_26;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *&buf[4] = v218;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: FOUND IRAP-- SETTING m_skipToIdr FALSE! %d", buf, 8u);
            }

            *(a1 + 2725) = 0;
            *(a1 + 8948) = 1;
            v99 = *(a1 + 3016 + 8 * *(a1 + 2972));
            if (v99)
            {
              HEVC_RLM::releaseAllPictures(v99);
            }
          }

          v211 = v65;
          v72 = *(a1 + 8184) + 2360 * v220;
          HevcReleaseSliceHeader(v72 + 24);
          bzero((v72 + 24), 0x808uLL);
          if (v223[800] == 1 && (v223[2176] & 1) == 0)
          {
            CAVDMvHevcDecoder::initOutputDecodeLayerSetInfo(a1);
            if (!CAVDMvHevcDecoder::InitMultiViewDpbInfo(a1))
            {
              goto LABEL_330;
            }

            v223[2176] = 1;
            v223[3868] = 1;
            if (*(a1 + 3724) != -1)
            {
              v73 = 0;
              v74 = *(a1 + 8984);
              do
              {
                *(v66 + 4 * v73) = 0x80000000;
                v75 = (a1 + 10434 + v73);
                v75[718] = 0;
                *(v74 + 4 * v73) = 0;
                v75[654] = 1;
                *v75 = 0;
                v75[64] = 0;
                ++v73;
              }

              while (v73 < (*(a1 + 3724) + 1));
            }
          }

          if (HEVC_RBSP::parseSliceHeader(*(a1 + 3000), (v72 + 24), &v229, *(a1 + 8168), *(a1 + 8176), v219, 1, 0))
          {
            if (v220 >= 1 && *(v72 + 32))
            {
              HevcCopyDependentSliceHeader((v72 + 24), (*(a1 + 8184) + 2360 * v220 - 2336));
            }

            else
            {
              ++*(a1 + 2960);
            }

            if (CAVDHevcDecoder::activatePS(a1, v72 + 24))
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = "VADecodeFrame";
                v19 = MEMORY[0x277D86220];
                v20 = "AppleAVD: %s(): fail to activate parameter set for slice";
                goto LABEL_13;
              }

              goto LABEL_330;
            }

            v76 = *(a1 + 8176);
            v77 = *(a1 + 8212);
            v78 = *(a1 + 8168) + 23176 * *(a1 + 8208);
            if (CAVDMvHevcDecoder::deriveSpsParamsFromActiveVps(a1, v78, *(a1 + 2968)))
            {
              goto LABEL_361;
            }

            v208 = v16;
            v79 = *(a1 + 8184) + 2360 * v220;
            *(v79 + 8) = v215;
            *(v79 + 16) = v211;
            *v79 = v230;
            *(v79 + 2084) = v232;
            NumberOfBitsParsed = HEVC_RBSP::getNumberOfBitsParsed(*(a1 + 3000));
            v81 = *(a1 + 8184) + 2360 * v220;
            *(v81 + 2080) = NumberOfBitsParsed;
            v82 = *(v81 + 16);
            if (NumberOfBitsParsed <= 8 * v82)
            {
              if (CAVDDecoder::isADSDecryption(a1) && (*(a1 + 10) & 1) == 0)
              {
                v83 = CAVDDecoder::calculateClearBytes(a1, v60, v211, *(*(a1 + 8184) + 2360 * v220 + 2080), *(a1 + 2944), *(a1 + 2928), *(a1 + 2936));
                if (v83 == -1)
                {
                  v84 = 1023;
                }

                else
                {
                  v84 = v83;
                }

                *(*(a1 + 8184) + 2360 * v220 + 2352) = v84;
                if (*(a1 + 2420))
                {
                  v85 = 0x10000;
                }

                else
                {
                  v85 = 0x200000;
                }

                *(a1 + 2504) |= v85;
              }

              v216 = v76 + 9856 * v77;
              if (*(v216 + 52))
              {
                v86 = *(v216 + 56);
                v87 = v86 + 1;
                if (v86 != -1)
                {
                  v88 = 0;
                  v89 = v76 + 9856 * v77 + 9680;
                  v90 = -v86;
                  v91 = -v87;
                  while (1)
                  {
                    v92 = (v90 == v88 ? v78 + 22880 : v89);
                    v93 = *v92 - *(v89 - 4);
                    if (v93 <= 1)
                    {
                      break;
                    }

                    v89 += 4;
                    if (v91 == --v88)
                    {
                      goto LABEL_135;
                    }
                  }

                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    *&buf[4] = "virtual int CAVDMvHevcDecoder::VADecodeFrame(unsigned char *, int, uint32_t, int, int, int, avd_seq_params *)";
                    *&buf[12] = 1024;
                    *&buf[14] = -v88;
                    *&buf[18] = 1024;
                    *&buf[20] = v93;
                    v173 = MEMORY[0x277D86220];
                    v174 = "AppleAVD: %s() tile[%d] width %d, need at least two CTU wide";
                    v175 = 24;
LABEL_267:
                    _os_log_impl(&dword_277606000, v173, OS_LOG_TYPE_DEFAULT, v174, buf, v175);
                    v25 = 310;
                    goto LABEL_362;
                  }

                  goto LABEL_369;
                }
              }

LABEL_135:
              if (*(v72 + 24))
              {
                v12 = v218;
                v67 = v222;
                if (!v220)
                {
                  *(a1 + 2976) = HEVC_RBSP::calcViewId(*(a1 + 3000), v219, v231);
                  v94 = *(a1 + 2972);
                  if (v94 <= 63 && (v95 = *(a1 + 9136 + 8 * v94)) != 0)
                  {
                    *(a1 + 2096) = v95;
                    if (*(*(a1 + 8976) + 4 * v94))
                    {
                      v96 = *(*(a1 + 8984) + 4 * v94) != 0;
                    }

                    else
                    {
                      v96 = 1;
                    }

                    if (!(*(*a1 + 320))(a1, v219, &v229, v78, v72 + 24, a1 + 3536, v96))
                    {
                      *(*(a1 + 8984) + 4 * *(a1 + 2972)) = 0;
                      ++*(*(a1 + 8976) + 4 * *(a1 + 2972));
                      v223[3288] = 0;
                      v223[3868] = 0;
                      *(a1 + 11476) = *(v72 + 328);
                      v223[3870] = 0;
LABEL_164:
                      if ((*(*a1 + 400))(a1, a1 + 3536, *(*(a1 + 8184) + 2360 * v220 + 44), v12))
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                        {
                          v179 = *(a1 + 3540);
                          v180 = *(a1 + 3548);
                          v181 = *(a1 + 8220);
                          v182 = *(a1 + 8944);
                          v183 = *(a1 + 8948);
                          v184 = *(*(a1 + 8184) + 2360 * v220 + 44);
                          *buf = 136316930;
                          *&buf[4] = "VADecodeFrame";
                          *&buf[12] = 1024;
                          *&buf[14] = v179;
                          *&buf[18] = 1024;
                          *&buf[20] = v180;
                          *&buf[24] = 1024;
                          *&buf[26] = v181;
                          *&buf[30] = 1024;
                          *&buf[32] = v182;
                          *&buf[36] = 1024;
                          *&buf[38] = v183;
                          *&buf[42] = 1024;
                          *&buf[44] = v184;
                          *&buf[48] = 1024;
                          *&buf[50] = v12;
                          v185 = MEMORY[0x277D86220];
                          v186 = "AppleAVD: %s(): RandomAccessSkipPic nal %d poc %d rapoc %d crasbla %d recov %d slice %d frame %d";
                          v187 = buf;
                          v188 = 54;
LABEL_322:
                          _os_log_impl(&dword_277606000, v185, OS_LOG_TYPE_DEFAULT, v186, v187, v188);
                        }

                        return 409;
                      }

                      v103 = *(v78 + 3600);
                      v104 = v78;
                      v105 = *(v78 + 3604);
                      v106 = *(v104 + 3636);
                      v107 = *(v104 + 3640);
                      *&v108 = *(v104 + 3608);
                      v109 = *(v104 + 3616);
                      v110 = *(v104 + 3620);
                      v111 = *(v104 + 3628);
                      v112 = *(v104 + 22872);
                      v212 = v104;
                      v113 = *(v104 + 23172);
                      v114 = *(a1 + 2968);
                      if (*(a1 + 10))
                      {
                        v115 = *(a1 + 8964);
                        if (v113 > v115)
                        {
                          goto LABEL_317;
                        }

LABEL_176:
                        v122 = *(a1 + 2972);
                        v123 = *(a1 + 0x2000);
                        v207 = 0;
                        if (*(*(a1 + 8928) + 4 * v122))
                        {
                          v124 = v123 + 104 * v122;
                          if (*(v124 + 32) != v103 || v105 != *(v124 + 30) || *(v124 + 33) != v106 || *(v124 + 34) != v107 || v108 != *v124 || v112 != *(v124 + 24))
                          {
                            v207 = 1;
                          }
                        }

                        v125 = v123 + 104 * v122;
                        *(&v108 + 1) = v110;
                        *v125 = v108;
                        *(v125 + 16) = v111;
                        *(v125 + 24) = v112;
                        *(v125 + 30) = v105;
                        *(v125 + 31) = v109;
                        *(v125 + 32) = v103;
                        *(v125 + 33) = v106;
                        *(v125 + 34) = v107;
                        *(v125 + 35) = v113;
                        *(v125 + 36) = v114;
                        (*(*a1 + 104))(a1, 21, 0);
                        memset(&buf[8], 0, 172);
                        v126 = *(v216 + 52);
                        *buf = v126;
                        v127 = *(v216 + 56);
                        *&buf[4] = v127;
                        if (v127 + 1 > 1)
                        {
                          v128 = v127 + 1;
                        }

                        else
                        {
                          v128 = 1;
                        }

                        memcpy(&buf[8], (v216 + 68), 4 * v128);
                        v129 = *(v216 + 60);
                        *&buf[88] = v129;
                        if (v129 + 1 > 1)
                        {
                          v130 = v129 + 1;
                        }

                        else
                        {
                          v130 = 1;
                        }

                        memcpy(&buf[92], (v216 + 148), 4 * v130);
                        v131 = *(a1 + 2972);
                        v132 = *(a1 + 8200);
                        if (*(*(a1 + 8936) + 4 * v131))
                        {
                          v133 = v132 + 180 * v131;
                          v71 = *v133 == v126;
                          LODWORD(v12) = v218;
                          v134 = v208;
                          v135 = v220;
                          if (!v71 || v127 != *(v133 + 4) || v129 != *(v133 + 88))
                          {
                            goto LABEL_200;
                          }

                          v136 = 1;
                          do
                          {
                            v137 = *&buf[4 * v136 + 4];
                            v138 = *(v132 + 180 * v131 + 4 * (v136 - 1) + 8);
                            if (v136 > v127)
                            {
                              break;
                            }

                            ++v136;
                          }

                          while (v137 == v138);
                          if (v137 != v138)
                          {
LABEL_200:
                            *(v133 + 128) = *&buf[128];
                            *(v133 + 144) = *&buf[144];
                            *(v133 + 160) = *&buf[160];
                            *(v133 + 176) = *&buf[176];
                            *(v133 + 64) = *&buf[64];
                            *(v133 + 80) = *&buf[80];
                            *(v133 + 96) = *&buf[96];
                            *(v133 + 112) = *&buf[112];
                            *v133 = *buf;
                            *(v133 + 16) = *&buf[16];
                            *(v133 + 32) = *&buf[32];
                            *(v133 + 48) = *&buf[48];
                            LOBYTE(v139) = 1;
                            goto LABEL_203;
                          }

                          v153 = 1;
                          do
                          {
                            v154 = *&buf[4 * v153 + 88];
                            v155 = *(v132 + 180 * v131 + 4 * (v153 - 1) + 92);
                            v139 = v154 != v155;
                            if (v153 > v129)
                            {
                              break;
                            }

                            ++v153;
                          }

                          while (v154 == v155);
                        }

                        else
                        {
                          v139 = 0;
                          LODWORD(v12) = v218;
                          v134 = v208;
                          v135 = v220;
                        }

                        v140 = v132 + 180 * v131;
                        *(v140 + 128) = *&buf[128];
                        *(v140 + 144) = *&buf[144];
                        *(v140 + 160) = *&buf[160];
                        *(v140 + 176) = *&buf[176];
                        *(v140 + 64) = *&buf[64];
                        *(v140 + 80) = *&buf[80];
                        *(v140 + 96) = *&buf[96];
                        *(v140 + 112) = *&buf[112];
                        *v140 = *buf;
                        *(v140 + 16) = *&buf[16];
                        *(v140 + 32) = *&buf[32];
                        *(v140 + 48) = *&buf[48];
                        v141 = v207;
                        if (!v207 && !v139)
                        {
                          v142 = 0;
                          goto LABEL_212;
                        }

LABEL_203:
                        v142 = 1;
                        v143 = AppleAVDCommandBuilder::waitNumInFlight(*(a1 + 2344), 1u);
                        if (v143)
                        {
                          v144 = v143;
                          v145 = MEMORY[0x277D86220];
                          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                          {
                            *v235 = 136315394;
                            v236 = "VADecodeFrame";
                            v237 = 1024;
                            v238 = v144;
                            _os_log_impl(&dword_277606000, v145, OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s(): timeout status: %d", v235, 0x12u);
                          }

                          v142 = 1;
                        }

                        v141 = v207;
LABEL_212:
                        v147 = *(a1 + 2972);
                        if (((*(*(a1 + 8928) + 4 * v147) != 0) & ~v141) == 0)
                        {
                          (*(**(a1 + 2096) + 144))(*(a1 + 2096));
                          *(*(a1 + 8928) + 4 * *(a1 + 2972)) = 0;
                          if ((*(**(a1 + 2096) + 136))(*(a1 + 2096), v212))
                          {
                            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                            {
                              *v235 = 136315138;
                              v236 = "virtual int CAVDMvHevcDecoder::VADecodeFrame(unsigned char *, int, uint32_t, int, int, int, avd_seq_params *)";
                              v201 = MEMORY[0x277D86220];
                              v202 = "AppleAVD: %s fail to allocate work buffer for sps";
LABEL_338:
                              _os_log_impl(&dword_277606000, v201, OS_LOG_TYPE_DEFAULT, v202, v235, 0xCu);
                              v25 = 304;
                              goto LABEL_26;
                            }

LABEL_339:
                            v25 = 304;
                            goto LABEL_26;
                          }

                          *(*(a1 + 8928) + 4 * *(a1 + 2972)) = 1;
                          v147 = *(a1 + 2972);
                        }

                        if (*(*(a1 + 8936) + 4 * v147))
                        {
                          v148 = v141;
                        }

                        else
                        {
                          v148 = 1;
                        }

                        v149 = v148 | v139;
                        v65 = v211;
                        if ((v149 & 1) == 0)
                        {
LABEL_221:
                          v150 = (*(*a1 + 328))(a1, v216, *(a1 + 8184) + 2360 * v220, a1 + 3536);
                          if (!v150)
                          {
                            v16 = v142 | v134;
                            v33 = (v135 + 1);
                            a6 = v214;
                            v43 = v209;
                            goto LABEL_233;
                          }

                          v25 = v150;
                          if (v150 == 410)
                          {
                            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                            {
                              *v235 = 136315394;
                              v236 = "VADecodeFrame";
                              v237 = 1024;
                              v238 = 410;
                              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): fail to create reference picture list - result: %d\n", v235, 0x12u);
                            }

                            goto LABEL_26;
                          }

                          v193 = v230 & 0xFFFFFFFE;
                          v194 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                          if (v193 != 8)
                          {
                            if (!v194)
                            {
                              goto LABEL_25;
                            }

                            *v235 = 136315394;
                            v236 = "VADecodeFrame";
                            v237 = 1024;
                            v238 = v25;
                            v19 = MEMORY[0x277D86220];
                            v20 = "AppleAVD: %s(): fail to create reference picture list - result: %d\n";
                            v21 = v235;
                            v22 = 18;
                            goto LABEL_24;
                          }

                          if (v194)
                          {
                            v195 = *(a1 + 8944);
                            *v235 = 136315650;
                            v236 = "VADecodeFrame";
                            v237 = 1024;
                            v238 = v25;
                            v239 = 1024;
                            v240 = v195;
                            v185 = MEMORY[0x277D86220];
                            v186 = "AppleAVD: %s(): missing ref - skip RASL picture: %d crasbla %d \n";
                            v187 = v235;
                            v188 = 24;
                            goto LABEL_322;
                          }

                          return 409;
                        }

                        (*(**(a1 + 2096) + 160))(*(a1 + 2096), 0);
                        *(*(a1 + 8936) + 4 * *(a1 + 2972)) = 0;
                        if (!(*(**(a1 + 2096) + 152))(*(a1 + 2096), v212, v216, 0))
                        {
                          *(*(a1 + 8936) + 4 * *(a1 + 2972)) = 1;
                          goto LABEL_221;
                        }

                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                        {
                          *v235 = 136315138;
                          v236 = "virtual int CAVDMvHevcDecoder::VADecodeFrame(unsigned char *, int, uint32_t, int, int, int, avd_seq_params *)";
                          v201 = MEMORY[0x277D86220];
                          v202 = "AppleAVD: %s fail to allocate work buffer for pps";
                          goto LABEL_338;
                        }

                        goto LABEL_339;
                      }

                      v116 = *(a1 + 2912);
                      v117 = *(v104 + 3608);
                      if (v108 == v116)
                      {
                        if (DWORD1(v108) == *(a1 + 2916))
                        {
                          v115 = *(a1 + 8964);
                          if (v113 > v115)
                          {
LABEL_317:
                            LODWORD(v12) = v218;
                            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_25;
                            }

                            v192 = *(*(a1 + 0x2000) + 104 * *(a1 + 2972) + 35);
                            *buf = 67109632;
                            *&buf[4] = v115;
                            *&buf[8] = 1024;
                            *&buf[10] = v113;
                            *&buf[14] = 1024;
                            *&buf[16] = v192;
                            v19 = MEMORY[0x277D86220];
                            v20 = "AppleAVD: #### <WARNING> DPB Size Requirement Changed: origDpbSize: %d -> curDpbSize: %d, prevDpbSize: %d";
                            v21 = buf;
                            v22 = 20;
                            goto LABEL_24;
                          }

                          v118 = *(a1 + 2924);
                          if (v103 == v118)
                          {
                            v119 = *(a1 + 2920);
                            if (v106 == v119)
                            {
                              if (v107 == *(a1 + 8956))
                              {
                                v120 = *(a1 + 8960);
                                if (v112 == v120)
                                {
                                  v67 = v222;
                                  v121 = v223[776];
                                  if (v105 == v121)
                                  {
                                    goto LABEL_176;
                                  }

                                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                  {
                                    goto LABEL_361;
                                  }

                                  *buf = 67109376;
                                  *&buf[4] = v105;
                                  *&buf[8] = 1024;
                                  *&buf[10] = v121;
                                  v157 = MEMORY[0x277D86220];
                                  v158 = "AppleAVD: #### <WARNING> new_separate_colour_plane_flag:%d m_orig_separate_colour_plane_flag:%d";
                                }

                                else
                                {
                                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                  {
                                    goto LABEL_361;
                                  }

                                  *buf = 67109376;
                                  *&buf[4] = v112;
                                  *&buf[8] = 1024;
                                  *&buf[10] = v120;
                                  v157 = MEMORY[0x277D86220];
                                  v158 = "AppleAVD: #### <WARNING> CTB size changed new_CtbSizeY:%d m_orig_CtbSizeY:%d";
                                }

                                goto LABEL_360;
                              }

                              v205 = *(v104 + 3636);
                              v119 = v205;
                            }

                            else
                            {
                              v205 = *(v104 + 3636);
                            }

                            LODWORD(v12) = v218;
                            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_25;
                            }

                            v206 = *(a1 + 8956);
                            *buf = 67109888;
                            *&buf[4] = v205;
                            *&buf[8] = 1024;
                            *&buf[10] = v119;
                            *&buf[14] = 1024;
                            *&buf[16] = v107;
                            *&buf[20] = 1024;
                            *&buf[22] = v206;
                            v19 = MEMORY[0x277D86220];
                            v20 = "AppleAVD: #### <WARNING> Bit depth changed: new_bit_depth_luma_minus8:%d m_orig_bit_depth_luma_minus8:%d new_bit_depth_chroma_minus8:%d m_orig_bit_depth_chroma_minus8:%d";
                            v21 = buf;
                            v22 = 26;
                            goto LABEL_24;
                          }

                          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_361;
                          }

                          *buf = 67109376;
                          *&buf[4] = v103;
                          *&buf[8] = 1024;
                          *&buf[10] = v118;
                          v157 = MEMORY[0x277D86220];
                          v158 = "AppleAVD: #### <WARNING> Chroma format Changed: %d -> %d";
LABEL_360:
                          v159 = 14;
LABEL_242:
                          _os_log_impl(&dword_277606000, v157, OS_LOG_TYPE_DEFAULT, v158, buf, v159);
                          v25 = 305;
                          goto LABEL_362;
                        }

                        v225 = HIDWORD(*(v104 + 3608));
                        v116 = *(v104 + 3608);
                      }

                      else
                      {
                        v225 = HIDWORD(*(v104 + 3608));
                      }

                      LODWORD(v12) = v218;
                      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_25;
                      }

                      v204 = *(a1 + 2916);
                      *buf = 67110144;
                      *&buf[4] = v218;
                      *&buf[8] = 1024;
                      *&buf[10] = v116;
                      *&buf[14] = 1024;
                      *&buf[16] = v204;
                      *&buf[20] = 1024;
                      *&buf[22] = v117;
                      *&buf[26] = 1024;
                      *&buf[28] = v225;
                      v19 = MEMORY[0x277D86220];
                      v20 = "AppleAVD: #### <WARNING> Frame resolution change not supported Frame %d old %d %d new %d %d";
                      v21 = buf;
                      v22 = 32;
                      goto LABEL_24;
                    }

                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315138;
                      *&buf[4] = "VADecodeFrame";
                      v19 = MEMORY[0x277D86220];
                      v20 = "AppleAVD: caught initPicture error in %s";
                      goto LABEL_13;
                    }
                  }

                  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315138;
                    *&buf[4] = "VADecodeFrame";
                    v19 = MEMORY[0x277D86220];
                    v20 = "AppleAVD: getHwDecoder error in %s";
                    goto LABEL_13;
                  }

LABEL_330:
                  v25 = 305;
                  goto LABEL_26;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  *&buf[4] = "VADecodeFrame";
                  *&buf[12] = 1024;
                  *&buf[14] = v220;
                  v196 = MEMORY[0x277D86220];
                  v197 = "AppleAVD: %s(): ERROR! Bad Bitstream! first_slice_segment_in_pic_flag set on slice_count: %d";
LABEL_344:
                  _os_log_impl(&dword_277606000, v196, OS_LOG_TYPE_DEFAULT, v197, buf, 0x12u);
                  v25 = 310;
                  goto LABEL_26;
                }
              }

              else
              {
                v12 = v218;
                v67 = v222;
                if (v220)
                {
                  goto LABEL_164;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  *&buf[4] = "VADecodeFrame";
                  *&buf[12] = 1024;
                  *&buf[14] = 0;
                  v196 = MEMORY[0x277D86220];
                  v197 = "AppleAVD: %s(): ERROR! Bad Bitstream! first_slice_segment_in_pic_flag NOT set on slice_count: %d";
                  goto LABEL_344;
                }
              }

LABEL_372:
              v25 = 310;
              goto LABEL_26;
            }

            v178 = NumberOfBitsParsed;
            LODWORD(v12) = v218;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_330;
            }

            *buf = 136315650;
            *&buf[4] = "VADecodeFrame";
            *&buf[12] = 1024;
            *&buf[14] = 8 * v82;
            *&buf[18] = 1024;
            *&buf[20] = v178;
            v19 = MEMORY[0x277D86220];
            v20 = "AppleAVD: %s(): rbsp return invalid bitUsed %d nalL_inBits = %d";
          }

          else
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_330;
            }

            *buf = 136315650;
            *&buf[4] = "VADecodeFrame";
            *&buf[12] = 1024;
            *&buf[14] = v220;
            *&buf[18] = 1024;
            *&buf[20] = v230;
            v19 = MEMORY[0x277D86220];
            v20 = "AppleAVD: %s() slice header parsing error - slice_count: %d - nal_unit_type: %d";
          }

          v21 = buf;
          v22 = 24;
          goto LABEL_24;
        }

        goto LABEL_231;
      }

      if (v230 <= 31)
      {
        v65 = v50;
        if ((v230 - 16) < 6)
        {
          goto LABEL_93;
        }

LABEL_231:
        a6 = v214;
LABEL_232:
        v67 = v222;
        goto LABEL_233;
      }

      if (v230 > 33)
      {
        a6 = v214;
        if (v230 != 34)
        {
          v65 = v50;
          if (v230 == 36)
          {
            *(*(a1 + 8984) + 4 * *(a1 + 2972)) = 1;
            v146 = v43;
            (*(*a1 + 416))(a1, 0x7FFFFFFFLL);
            v43 = v146;
          }

          goto LABEL_232;
        }

        v210 = v60;
        v100 = v43;
        v151 = HEVC_RBSP::parsePPS(*(a1 + 3000), *(a1 + 8176), *(a1 + 8168));
        v65 = v50;
        if ((v151 & 0x80000000) != 0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "VADecodeFrame";
            *&buf[12] = 1024;
            *&buf[14] = v50;
            v196 = MEMORY[0x277D86220];
            v197 = "AppleAVD: %s parse PPS error ! %d";
            goto LABEL_344;
          }

          goto LABEL_372;
        }

        v67 = v222;
        if (*(*(a1 + 8176) + 9856 * v151 + 6465))
        {
          v152 = CAVDHevcDecoder::areUnsupportedSPSExtensionFeaturesPresent(a1);
          v43 = v100;
          v60 = v210;
          if (v152)
          {
            goto LABEL_369;
          }

LABEL_233:
          v46 = (v67 + v43);
          v44 = v65 + v60;
          v32 = *(a1 + 2996);
          v45 = v213;
          if (v46 + v32 <= v213)
          {
            goto LABEL_63;
          }

          CAVDHevcDecoder::setHevcVideoParsingMode(a1);
          v12 = v218;
          v35 = v212;
          v34 = v216;
          if (v217)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_25;
            }

            *buf = 136315138;
            *&buf[4] = "VADecodeFrame";
            v19 = MEMORY[0x277D86220];
            v20 = "AppleAVD: ERROR: %s(): mvhevc - unpermitted non-VCL NAL following last VCL NAL\n";
            goto LABEL_13;
          }

LABEL_57:
          if (a8)
          {
            v36 = *(a1 + 0x2000) + 104 * *(a1 + 2972);
            v38 = *(v36 + 64);
            v37 = *(v36 + 80);
            v39 = *(v36 + 48);
            *(a8 + 96) = *(v36 + 96);
            *(a8 + 64) = v38;
            *(a8 + 80) = v37;
            *(a8 + 48) = v39;
            v40 = *v36;
            v41 = *(v36 + 32);
            *(a8 + 16) = *(v36 + 16);
            *(a8 + 32) = v41;
            *a8 = v40;
          }

          if (!v33)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = "VADecodeFrame";
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): slice count for frame is 0", buf, 0xCu);
            }

            v25 = 403;
            goto LABEL_26;
          }

          v42 = v34[51] == 1 && v34[33] == 1;
          *(a1 + 2700) = v42;
          *(a1 + 2701) = *(v35 + 10650) == 1;
          *(a1 + 2696) = v33;
          if ((*(*a1 + 336))(a1, v35, a1 + 3536, v33))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = "VADecodeFrame";
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): createDPB fail", buf, 0xCu);
            }

            v25 = 317;
            goto LABEL_26;
          }

          v160 = v34[53] && !(*(*a1 + 408))(a1, *(v35 + 22880), v33);
          *(a1 + 2964) = v160;
          while (!(*(*a1 + 392))(a1, v233))
          {
            (*(*a1 + 88))(a1, v234);
          }

          if (*(a1 + 2892))
          {
            if (!v228)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_25;
              }

              *buf = 136315138;
              *&buf[4] = "vSurfInfoDisp is NULL";
              v19 = MEMORY[0x277D86220];
              v20 = "AppleAVD: ERROR: [CAVDMvHevcDecErr] %s";
              goto LABEL_13;
            }

            v161 = v16;
            v16 = a6;
            v162 = IOSurfaceLookup(*(v228 + 160));
            if (!v162)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_25;
              }

              *buf = 0;
              v19 = MEMORY[0x277D86220];
              v20 = "AppleAVD: bad IOSurface* in tile offset check";
              goto LABEL_23;
            }

            v163 = v162;
            v221 = v33;
            SizeOfPlane = IOSurfaceGetSizeOfPlane();
            CFRelease(v163);
            v164 = *(a1 + 2896);
            v165 = *(a1 + 8168);
            v166 = *(a1 + 8208);
            v167 = *(v165 + 23176 * v166 + 3608);
            v218 = v12;
            if (__CFADD__(v164, v167 - 1))
            {
              v168 = v164 + v167 - 1;
              v169 = 0;
              v170 = 0;
              LODWORD(v171) = 0;
              v172 = 1;
            }

            else
            {
              v176 = *(a1 + 2900);
              v177 = *(v165 + 23176 * v166 + 3612) - 1;
              v170 = v176 + v177;
              if (!__CFADD__(v176, v177))
              {
                v171 = *(v228 + 84) * v170;
                if ((v171 & 0xFFFFFFFF00000000) != 0)
                {
                  v168 = v164 + v167 - 1;
                  v169 = 0;
                  v172 = 4;
                  goto LABEL_332;
                }

                v169 = v171 + (v164 + v167 - 1);
                if (v169 >= SizeOfPlane)
                {
                  v168 = v164 + v167 - 1;
                  v172 = 6;
                  goto LABEL_332;
                }

                v12 = v218;
                a6 = v16;
                LOBYTE(v16) = v161;
                v33 = v221;
                if ((CAVDDecoder::calcLumaChromaTileOffset(a1, v164, v176, *(*(a1 + 8248) + 76), *(*(a1 + 8248) + 80), *(a1 + 3640), (a1 + 2904), (a1 + 2908)) & 1) == 0)
                {
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_25;
                  }

                  *buf = 136315138;
                  *&buf[4] = "VADecodeFrame";
                  v19 = MEMORY[0x277D86220];
                  v20 = "AppleAVD: %s(): calcLumaChromaTileOffset returns fail";
                  goto LABEL_13;
                }

                goto LABEL_307;
              }

              v168 = v164 + v167 - 1;
              v169 = 0;
              LODWORD(v171) = 0;
              v172 = 2;
            }

LABEL_332:
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_361;
            }

            v198 = *(a1 + 2900);
            v199 = *(v165 + 23176 * v166 + 3612);
            v200 = *(v228 + 84);
            *buf = 67111680;
            *&buf[4] = v164;
            *&buf[8] = 1024;
            *&buf[10] = v198;
            *&buf[14] = 1024;
            *&buf[16] = v167;
            *&buf[20] = 1024;
            *&buf[22] = v199;
            *&buf[26] = 1024;
            *&buf[28] = v200;
            *&buf[32] = 2048;
            *&buf[34] = v169;
            *&buf[42] = 2048;
            *&buf[44] = SizeOfPlane;
            *&buf[52] = 1024;
            *&buf[54] = v172;
            *&buf[58] = 1024;
            *&buf[60] = v168;
            *&buf[64] = 1024;
            *&buf[66] = v170;
            *&buf[70] = 1024;
            *&buf[72] = v171;
            v157 = MEMORY[0x277D86220];
            v158 = "AppleAVD: tile offset out of bounds! [%u %u] + [%u %u], %u, %zu >= %zu ?, %u; %u %u %u";
            v159 = 76;
            goto LABEL_242;
          }

LABEL_307:
          if (*(a1 + 2356) == 1)
          {
            (*(*a1 + 224))(a1, v12, a6);
          }

          v189 = (*(*a1 + 304))(a1, v33, v12, v16 & 1);
          (*(*a1 + 256))(a1, 0);
          v190 = *(a1 + 2096);
          *(v190 + 12) = v33;
          AppleAVDCommandBuilder::setDecodeBufferSections(*(a1 + 2344), v190 + 8);
          if (*(a1 + 2356) == 1)
          {
            *(a1 + 2332) = CAHDec::getDecBufIndex(*(a1 + 2096));
          }

          if (!v189)
          {
            return 0;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_25;
          }

          *buf = 136315138;
          *&buf[4] = "VADecodeFrame";
          v19 = MEMORY[0x277D86220];
          v20 = "AppleAVD: %s(): DecodePicture fail";
LABEL_13:
          v21 = buf;
          v22 = 12;
LABEL_24:
          _os_log_impl(&dword_277606000, v19, OS_LOG_TYPE_DEFAULT, v20, v21, v22);
          goto LABEL_25;
        }
      }

      else
      {
        v210 = v60;
        v100 = v43;
        a6 = v214;
        if (v230 != 32)
        {
          v101 = HEVC_RBSP::parseSPS(*(a1 + 3000), v219, *(a1 + 8168), v231, 1);
          v67 = v222;
          if ((v101 & 0x80000000) != 0)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "VADecodeFrame";
              *&buf[12] = 1024;
              *&buf[14] = v50;
              v196 = MEMORY[0x277D86220];
              v197 = "AppleAVD: %s parse SPS error ! %d";
              goto LABEL_344;
            }

            goto LABEL_372;
          }

          v102 = v101;
          if (CAVDHevcDecoder::areUnsupportedSPSExtensionFeaturesPresent(a1))
          {
            goto LABEL_372;
          }

          (*(*a1 + 424))(a1, *(a1 + 8168) + 23176 * v102);
          *(*(a1 + 8168) + 23176 * v102 + 23172) = CAVDHevcDecoder::DpbMaxSize(a1, (*(a1 + 8168) + 23176 * v102));
          a6 = v214;
          v43 = v100;
          v65 = v50;
          goto LABEL_230;
        }

        v67 = v222;
        v65 = v50;
        if ((HEVC_RBSP::parseVPS(*(a1 + 3000), v219, 1, 1) & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "VADecodeFrame";
            *&buf[12] = 1024;
            *&buf[14] = v50;
            v173 = MEMORY[0x277D86220];
            v174 = "AppleAVD: %s parse VPS error ! %d";
            v175 = 18;
            goto LABEL_267;
          }

LABEL_369:
          v25 = 310;
          goto LABEL_362;
        }

        v223[2176] = 0;
      }

      v43 = v100;
LABEL_230:
      v60 = v210;
      goto LABEL_233;
    }

    ++v59;
  }

  while (*(a1 + 3724) >= v59);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "VADecodeFrame";
    v157 = MEMORY[0x277D86220];
    v158 = "AppleAVD: %s layer id not found in vps_layer_id_in_nuh";
    goto LABEL_241;
  }

LABEL_361:
  v25 = 305;
LABEL_362:
  LODWORD(v12) = v218;
LABEL_26:
  if (*(a1 + 2724))
  {
    *(a1 + 2725) = 0;
    if (v25 == 410)
    {
      return 410;
    }

    else
    {
      return 305;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v12;
      *&buf[8] = 1024;
      *&buf[10] = v25;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: SETTING m_skipToIdr TRUE! fno=%d, err=%d", buf, 0xEu);
    }

    *(a1 + 2725) = 1;
    CAVDMvHevcDecoder::flushMV_RLM(a1);
    return 406;
  }
}

uint64_t CAVDMvHevcDecoder::initOutputDecodeLayerSetInfo(CAVDMvHevcDecoder *this)
{
  v2 = *(this + 2583);
  if (v2 == -1)
  {
    v2 = *(this + *(this + 743) + 2871);
    *(this + 2583) = v2;
  }

  *(this + 2584) = HEVC_RBSP::convOlsIdxToLsIdx(*(this + 375), this + 3712, v2);
  result = HEVC_RBSP::decodeTargetLayerIdlist(*(this + 375), this + 3712, *(this + 2583));
  *(this + 1295) = result;
  *(this + 2587) = *(*(this + 1021) + 23176 * *(this + 2052) + 4);
  *(this + 2586) = *(this + *(this + 743) + 2935);
  if (!*(this + 3720))
  {
    if (*(this + 3721))
    {
      v4 = *(this + 2584);
      if ((v4 & 0x80000000) == 0 && v4 <= *(this + 2023))
      {
        v5 = this + 10498;
        v6 = (*(this + 2022) + 1);
        do
        {
          *v5 = 0;
          *(v5 - 64) = 0;
          ++v5;
          --v6;
        }

        while (v6);
      }
    }
  }

  return result;
}

BOOL CAVDMvHevcDecoder::InitMultiViewDpbInfo(CAVDMvHevcDecoder *this)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(this + 2587);
  v2 = *(this + 932);
  if (v1 > v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "InitMultiViewDpbInfo";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): m_highestTid > vps_max_sub_layers_minus1\n", &v18, 0xCu);
    }
  }

  else
  {
    v4 = *(this + 1020);
    v5 = *(this + 2583);
    v6 = *(*(v4[492] + 8 * v5) + 4 * v1);
    *(this + 2641) = v6;
    LODWORD(v5) = *(*(v4[493] + 8 * v5) + 4 * v1);
    *(this + 2642) = v5;
    *(this + 2643) = v6 + v5 - 1;
    v7 = this + 10576;
    memset_pattern16(this + 10576, &unk_27775BD60, 0x100uLL);
    v8 = 0;
    v9 = v4[64];
    v10 = *(this + 2584);
    v11 = *(v4[482] + 2 * v10);
    v12 = (*(this + 931) + 1);
    do
    {
      if (v11)
      {
        v13 = 0;
        v14 = *(v9 + 28 * v8 + 26);
        v15 = *(v4 + *(v9 + 28 * v8 + 26) + 290);
        v16 = *(v4[481] + 8 * v10);
        do
        {
          if (*(v16 + 2 * v13) == v14)
          {
            *&v7[4 * v15] = *(*(*(v4[491] + 8 * v10) + 8 * v13) + 4 * v1);
          }

          ++v13;
        }

        while (v11 != v13);
      }

      ++v8;
    }

    while (v8 != v12);
  }

  return v1 <= v2;
}

uint64_t CAVDMvHevcDecoder::DecodePicture(CAVDMvHevcDecoder *this, uint64_t a2, uint64_t a3)
{
  if ((*(**(this + 262) + 24))(*(this + 262), a3, a2))
  {
    return 1;
  }

  (*(**(this + 262) + 40))(*(this + 262));
  (*(**(this + 262) + 56))(*(this + 262));
  if ((*(**(this + 262) + 64))(*(this + 262)) || (*(**(this + 262) + 32))(*(this + 262), a2))
  {
    return 4;
  }

  (*(**(this + 262) + 96))(*(this + 262), a2);
  (*(**(this + 262) + 48))(*(this + 262), *(this + 882));
  return 0;
}

uint64_t CAVDMvHevcDecoder::initPicture(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, _DWORD *a5, uint64_t a6, int a7)
{
  v13 = a3[1];
  *(a6 + 144) = 0u;
  *(a6 + 160) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *a6 = 0u;
  v14 = a3[4];
  v15 = a3[3] - 1;
  *(a6 + 4) = v13;
  *(a6 + 8) = v15;
  *(a6 + 16) = a5[8];
  v16 = *(a1 + 8232);
  *(a6 + 48) = v16;
  v17 = *(a1 + 2976);
  *(a6 + 28) = *(a1 + 2968);
  *(a6 + 32) = v17;
  v18 = *(a1 + 8228);
  *(a6 + 64) = v18;
  *(a6 + 36) = v14;
  if (*(a1 + 2644))
  {
    v16 = *(a1 + 8248);
    v18 = *(a1 + 8244);
  }

  *(a6 + 56) = v16;
  *(a6 + 68) = v18;
  *(a6 + 104) = *(a4 + 3600);
  *(a6 + 102) = *(a4 + 3604);
  *(a6 + 72) = *(a4 + 3608);
  *(a6 + 103) = *(a4 + 3616);
  *(a6 + 80) = *(a4 + 3620);
  *(a6 + 105) = *(a4 + 3636);
  *(a6 + 106) = *(a4 + 3640);
  if (*(a1 + 8992) == 1)
  {
    CAVDMvHevcDecoder::checkNewPocResettingPeriod(a1, a3, a5);
    if (CAVDMvHevcDecoder::deriveMvHevcOutputControlFlags(a1, a3, a5, a6, a7))
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    CAVDHevcDecoder::deriveHevcOutputControlFlags(a1, a3, a5, a6, a7);
  }

  v19 = *(a1 + 2968);
  if (*(a1 + 8992) == 1)
  {
    *(a6 + 12) = CAVDMvHevcDecoder::decodeMultiViewPictureOrderCount(a1, a4);
    CAVDMvHevcDecoder::handlePOCResetPicture(a1);
  }

  else
  {
    *(a6 + 12) = HEVC_RLM::decodePicOrderCnt(*(a1 + 8 * *(a1 + 2972) + 3016), a3, a4, a5, *(a6 + 1));
  }

  v20 = *(a1 + 2972);
  result = 0xFFFFFFFFLL;
  if (v20 <= *(a1 + 8088) && (v19 & 0x80000000) == 0)
  {
    HEVC_RLM::decodeReferencePictureSet(*(a1 + 8 * v20 + 3016), a6, a4, a5);
    *&v23 = -1;
    *(&v23 + 1) = -1;
    *(a1 + 8376) = v23;
    *(a1 + 8392) = v23;
    *(a1 + 8344) = v23;
    *(a1 + 8360) = v23;
    *(a1 + 8608) = 0;
    *(a1 + 8408) = 0u;
    *(a1 + 8424) = 0u;
    *(a1 + 8440) = 0u;
    *(a1 + 8456) = 0u;
    if (*(a1 + 8992) == 1)
    {
      if (CAVDMvHevcDecoder::mvhevcOutputBumping(a1, a3, v22, a5, a6))
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      CAVDHevcDecoder::hevcOutputBumping(a1, a3, a4, a5, a6);
    }

    return 0;
  }

  return result;
}

uint64_t CAVDMvHevcDecoder::checkNewPocResettingPeriod(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result + 10832;
  if (*(a3 + 1893))
  {
    v4 = *(a3 + 304);
    *(v3 + 4 * *(result + 2972)) = v4;
  }

  else
  {
    *(a3 + 304) = 0;
    v4 = *(v3 + 4 * *(result + 2972));
    if (v4 == 0x80000000)
    {
      v4 = 0;
    }

    *(a3 + 304) = v4;
  }

  if (*(result + 11480))
  {
    v5 = 0x80000000;
  }

  else
  {
    v5 = *(result + 11476);
  }

  if ((*(a3 + 300) - 3) < 0xFFFFFFFE || v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    *(result + 11136) = 0u;
    *(result + 11120) = 0u;
    *(result + 11104) = 0u;
    *(result + 11088) = 0u;
    v7 = 1;
  }

  *(result + 11472) = v7;
  v8 = *(*(result + 8160) + 2 * *(a2 + 8) + 580);
  if (*(result + 11088 + v8))
  {
    *(result + 11473) = 0;
  }

  else
  {
    *(result + 11473) = 1;
    *(result + 11088 + v8) = 1;
  }

  return result;
}

uint64_t CAVDMvHevcDecoder::deriveMvHevcOutputControlFlags(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, int a5)
{
  v7 = *(a2 + 4);
  v8 = v7 & 0xFFFFFFF8;
  if ((v7 & 0xFFFFFFF8) != 0x10)
  {
    goto LABEL_19;
  }

  v9 = *(a1 + 2968);
  v10 = *(a1 + 10344);
  if (v9 != v10)
  {
    goto LABEL_9;
  }

  a4[40] = 0;
  if (*(a1 + 12062))
  {
    goto LABEL_7;
  }

  v11 = *(a1 + 8984);
  if (*v11 || v11[*(a1 + 2972)] || (v7 - 16) < 3)
  {
    goto LABEL_7;
  }

  if (v7 == 21)
  {
    if (!*(a1 + 8944))
    {
      goto LABEL_81;
    }
  }

  else if ((v7 - 19) > 1 || !*(a3 + 17))
  {
LABEL_81:
    if (!*(a1 + 8944))
    {
      goto LABEL_9;
    }
  }

LABEL_7:
  a4[40] = 1;
  v12 = (a1 + 10498);
  v13 = (*(a1 + 8088) + 1);
  do
  {
    *v12 = 0;
    *(v12 - 64) = 0;
    ++v12;
    --v13;
  }

  while (v13);
LABEL_9:
  if (v9 <= v10)
  {
LABEL_19:
    v14 = a5;
    *(a1 + 10562) = 0;
    goto LABEL_20;
  }

  v14 = a5;
  *(a1 + 10562) = 0;
  if (!*(*(a1 + 8984) + 4 * *(a1 + 2972)))
  {
    if (v7 == 21)
    {
      if (!*(a1 + 8944))
      {
        goto LABEL_20;
      }
    }

    else if ((v7 - 19) > 1)
    {
      if ((v7 - 16) > 2)
      {
        goto LABEL_20;
      }
    }

    else if (!*(a3 + 17))
    {
      goto LABEL_20;
    }
  }

  *(a1 + 10562) = 1;
  if (v9 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = *(a1 + 8160);
  v16 = *(v15 + 580 + 2 * v9);
  v17 = *(*(v15 + 512) + 28 * v16 + 22);
  if (*(*(v15 + 512) + 28 * v16 + 22))
  {
    v18 = (*(*(v15 + 520) + 8 * v16) + 10);
    do
    {
      v19 = *v18;
      v18 += 7;
      v20 = *(v15 + 580 + 2 * v19);
      *(a1 + 10498 + v20) = 0;
      *(a1 + 10434 + v20) = 0;
      --v17;
    }

    while (v17);
  }

  HEVC_RLM::markAllRefPicturesasUnused(*(a1 + 3016 + 8 * v16));
  v21 = *(a1 + 8160);
  v22 = *(v21 + 2 * v9 + 580);
  if (*(*(v21 + 512) + 28 * v22 + 22))
  {
    v23 = 0;
    v24 = 10;
    do
    {
      HEVC_RLM::markAllRefPicturesasUnused(*(a1 + 3016 + 8 * *(v21 + 2 * *(*(*(v21 + 520) + 8 * v22) + v24) + 580)));
      ++v23;
      v21 = *(a1 + 8160);
      v22 = *(v21 + 2 * v9 + 580);
      v24 += 14;
    }

    while (v23 < *(*(v21 + 512) + 28 * v22 + 22));
  }

LABEL_20:
  if (!*(a1 + 3724))
  {
    goto LABEL_27;
  }

  if (v8 != 16)
  {
    a4[1] = 0;
    if (*(a1 + 2968))
    {
      goto LABEL_70;
    }

    goto LABEL_48;
  }

  v25 = v7 - 16;
  if ((v7 - 16) < 5 || (v26 = *(a1 + 2972), !*(*(a1 + 8976) + 4 * v26)) || *(*(a1 + 8984) + 4 * v26))
  {
    LOBYTE(v27) = 1;
LABEL_26:
    a4[1] = v27;
LABEL_27:
    v28 = *(a1 + 2968);
    if (v28)
    {
      if (v8 != 16)
      {
        goto LABEL_70;
      }

      v29 = 0;
      if (!a4[1])
      {
LABEL_84:
        v39 = *(a3 + 24);
        a4[3] = v39;
        v40 = a4 + 3;
        if (v29)
        {
          goto LABEL_72;
        }

        goto LABEL_71;
      }

      goto LABEL_38;
    }

    if (v8 == 16)
    {
      v25 = v7 - 16;
      goto LABEL_35;
    }

LABEL_48:
    a4[1] = 0;
LABEL_54:
    v39 = *(a3 + 24);
    a4[3] = v39;
    v40 = a4 + 3;
    goto LABEL_72;
  }

  if ((*(a1 + v26 + 10498) & 1) != 0 || (v28 = *(a1 + 2968), (CAVDMvHevcDecoder::checkRefLayersInitialized(a1, v28) & 1) == 0))
  {
    v27 = *(a1 + 8944);
    goto LABEL_26;
  }

  a4[1] = 1;
  if (!v28)
  {
LABEL_35:
    if (v25 < 5 || v14)
    {
      a4[1] = 1;
LABEL_53:
      *(a1 + *(a1 + 2972) + 10498) = 1;
      goto LABEL_54;
    }

    v28 = 0;
    v30 = *(a1 + 8944);
    a4[1] = v30;
    v29 = 1;
    if (!v30)
    {
      goto LABEL_84;
    }

LABEL_38:
    if (!v29)
    {
      goto LABEL_39;
    }

    goto LABEL_53;
  }

LABEL_39:
  v31 = a1 + 10498;
  v32 = *(a1 + 2972);
  if ((*(a1 + 10498 + v32) & 1) == 0)
  {
    v33 = *(a1 + 8160);
    v34 = *(v33 + 512);
    v35 = v33 + 580;
    if (*(v34 + 28 * *(v33 + 580 + 2 * v28) + 18))
    {
      v36 = *(v34 + 28 * *(v35 + 2 * v28) + 18);
      if (v36)
      {
        v37 = 0;
        v38 = 1;
        do
        {
          while ((v38 & 1) == 0)
          {
            v38 = 0;
            if (++v37 == v36)
            {
              goto LABEL_70;
            }
          }

          v38 = *(v31 + *(v35 + 2 * *(*(*(v33 + 520) + 8 * *(v35 + 2 * v28)) + 14 * v37++ + 6)));
        }

        while (v37 != v36);
        if ((v38 & 1) == 0)
        {
          LOBYTE(v29) = 0;
          goto LABEL_84;
        }
      }
    }

    *(v31 + v32) = 1;
  }

LABEL_70:
  v39 = *(a3 + 24);
  a4[3] = v39;
  v40 = a4 + 3;
LABEL_71:
  if ((*(a1 + *(a1 + 2972) + 10498) & 1) == 0)
  {
LABEL_75:
    result = 0;
    *v40 = 0;
    return result;
  }

LABEL_72:
  if ((v7 & 0xFFFFFFFE) != 8)
  {
    result = 0;
    *v40 = v39;
    return result;
  }

  v41 = *(*(a1 + 8 * *(a1 + 2972) + 3016) + 2840);
  if (!v41)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v41 + 1))
  {
    goto LABEL_75;
  }

  return 0;
}

uint64_t CAVDMvHevcDecoder::decodeMultiViewPictureOrderCount(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = a1 + 0x2000;
  v4 = *(a1 + 2968);
  v5 = *(a1 + 8184);
  v6 = *(v5 + 2072);
  if (*(a1 + 11472) == 1)
  {
    *(a1 + 11184) = 0u;
    *(a1 + 11168) = 0u;
    *(a1 + 11152) = 0u;
    *(a1 + 11199) = 0u;
  }

  v7 = v4;
  v8 = *(a1 + 8160);
  v9 = *(v8 + 746);
  if (*(a1 + 11473) == 1)
  {
    if (!*(v8 + 746))
    {
      memset(v58 + 4, 0, 248);
      v13 = 1;
      LODWORD(v58[0]) = v4;
      goto LABEL_16;
    }

    v10 = *(a1 + *(v8 + 2 * v4 + 580) + 11152) ^ 1;
    memset(v58 + 4, 0, 248);
  }

  else
  {
    memset(v58, 0, 252);
    if (!v9)
    {
      LODWORD(v58[0]) = v4;
      v13 = 1;
      goto LABEL_22;
    }

    v10 = 0;
  }

  LODWORD(v58[0]) = v4;
  v11 = *(*(v8 + 512) + 28 * *(v8 + 2 * v4 + 580) + 22);
  if (!*(*(v8 + 512) + 28 * *(v8 + 2 * v7 + 580) + 22))
  {
    v13 = 1;
    if (v10)
    {
      goto LABEL_16;
    }

LABEL_22:
    if (*(v5 + 340) == 1)
    {
      v19 = *(a2 + 22912) * *(v5 + 344);
    }

    else
    {
      if (*(a1 + *(v8 + 2 * v7 + 580) + 10434))
      {
        v20 = (v6 - 19) >= 2;
      }

      else
      {
        v20 = 0;
      }

      if (v20)
      {
        v40 = *(a1 + 4 * v7 + 11216);
        v41 = *(a2 + 22912);
        v42 = (v41 - 1) & v40;
        v43 = v40 - v42;
        v44 = *(v5 + 56);
        if (v42 - v44 >= v41 / 2)
        {
          v19 = v43 + v41;
        }

        else
        {
          if (v44 - v42 <= v41 / 2)
          {
            v41 = 0;
          }

          v19 = v43 - v41;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    v45 = *(v5 + 56);
    goto LABEL_66;
  }

  v12 = (*(*(v8 + 520) + 8 * *(v8 + 2 * v7 + 580)) + 10);
  v13 = 1;
  do
  {
    v14 = *v12;
    v12 += 7;
    *(v58 + v13++) = v14;
    --v11;
  }

  while (v11);
  if ((v10 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_16:
  if (*(a1 + *(v8 + 2 * v7 + 580) + 10434) == 1)
  {
    v15 = *(v5 + 324);
    v16 = 56;
    if (v15 == 3)
    {
      v16 = 336;
    }

    v17 = *(v5 + v16);
    if (*(v5 + 340) == 1)
    {
      v18 = *(a2 + 22912) * *(v5 + 344);
    }

    else
    {
      v21 = *(a1 + 4 * v7 + 11216);
      v22 = *(a2 + 22912);
      v23 = (v22 - 1) & v21;
      v24 = v21 - v23;
      v25 = v23 - v17;
      if (v17 - v23 <= v22 / 2)
      {
        v26 = 0;
      }

      else
      {
        v26 = *(a2 + 22912);
      }

      v27 = v24 - v26;
      v18 = v24 + v22;
      if (v25 < v22 / 2)
      {
        v18 = v27;
      }
    }

    v56 = v6;
    v57 = v18;
    v55 = a2;
    if (v15 != 2 && (v15 != 3 || *(v5 + 332) != 1))
    {
      v17 = 0;
    }

    v28 = a1 + 11152;
    v29 = v58;
    v30 = v13;
    do
    {
      v32 = *v29++;
      v31 = v32;
      if (v32 >= 1)
      {
        v33 = *(*(a1 + 8160) + 2 * v31 + 580);
        if ((*(v28 + v33) & 1) == 0 && *(a1 + 8088) >= v31)
        {
          HEVC_RLM::decrementPOCvalues(*(a1 + 3016 + 8 * v33), v17 + v57);
        }
      }

      --v30;
    }

    while (v30);
    v8 = *(a1 + 8160);
    v34 = v58;
    v35 = v13;
    a2 = v55;
    do
    {
      v36 = *v34++;
      *(v28 + *(v8 + 580 + 2 * v36)) = 1;
      --v35;
    }

    while (v35);
    v6 = v56;
  }

  v37 = *(v5 + 324);
  if (v37 == 2)
  {
    result = 0;
  }

  else
  {
    if (v37 != 1)
    {
      v19 = *(v5 + 56);
      if (*(v5 + 332))
      {
        v39 = 0;
      }

      else
      {
        v39 = *(v5 + 336);
      }

      v46 = *(a2 + 22912);
      v47 = v39 - v19;
      if (v19 - v39 <= v46 / 2)
      {
        v48 = 0;
      }

      else
      {
        v48 = *(a2 + 22912);
      }

      if (v47 < v46 / 2)
      {
        v45 = -v48;
      }

      else
      {
        v45 = *(a2 + 22912);
      }

LABEL_66:
      result = (v45 + v19);
      goto LABEL_67;
    }

    result = *(v5 + 56);
  }

LABEL_67:
  v49 = 0;
  v50 = v6 & 0xFFFFFFFE;
  v51 = a1 + 10434;
  v52 = v8 + 580;
  do
  {
    if (v50 != 6 && v50 != 8 && (v6 & 0xFFFFFFF1) != 0 && !*(v5 + 2076))
    {
      v53 = result;
      if (!*(v5 + 40))
      {
        goto LABEL_79;
      }
    }

    if (*(v5 + 324) == 3 && (!*(v51 + *(v52 + 2 * v7)) || *(v3 + 3281) == 1))
    {
      if (*(v5 + 332))
      {
        v53 = 0;
      }

      else
      {
        v53 = *(v5 + 336);
      }

LABEL_79:
      *(a1 + 11216 + 4 * *(v58 + v49)) = v53;
    }

    v49 += 4;
  }

  while (4 * v13 != v49);
  v54 = *(a1 + 2972);
  if ((*(v51 + v54) & 1) == 0)
  {
    *(v51 + v54) = 1;
  }

  return result;
}

void CAVDMvHevcDecoder::handlePOCResetPicture(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 8976) + 4 * *(a1 + 2972)))
  {
    if (*(a1 + 11473) == 1)
    {
      v2 = *(a1 + 10328);
      if (v2)
      {
        v3 = 0;
        v11 = a1 + 9688;
        v4 = MEMORY[0x277D86220];
        do
        {
          v5 = v11 + 40 * v3;
          v6 = *(v5 + 28);
          if (v6)
          {
            for (i = 0; i < v6; ++i)
            {
              if (*(v5 + 32) == 1 && *(a1 + 9676))
              {
                v8 = 0;
                v9 = *(*v5 + 8 * i);
                do
                {
                  v10 = *(*(a1 + 9648) + 8 * v8);
                  if (v10)
                  {
                    if (v9)
                    {
                      if (*(v10 + 28) != *(v9 + 28) && *v9 == 1 && *v10 == 1)
                      {
                        (*(*a1 + 368))(a1, v9);
                        *(v9 + 2) = 0;
                      }
                    }

                    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315138;
                      v13 = "handlePOCResetPicture";
                      _os_log_impl(&dword_277606000, v4, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): WARNING, frame insertion is aborted because pic=NULL\n", buf, 0xCu);
                    }
                  }

                  ++v8;
                }

                while (v8 < *(a1 + 9676));
                v6 = *(v5 + 28);
              }
            }

            v2 = *(a1 + 10328);
          }

          ++v3;
        }

        while (v3 < v2);
      }
    }
  }
}

uint64_t CAVDMvHevcDecoder::mvhevcOutputBumping(CAVDMvHevcDecoder *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = *(this + 742);
  v8 = v7;
  memset(v50, 0, sizeof(v50));
  v9 = *(a2 + 4);
  if (*(this + 12060))
  {
    goto LABEL_2;
  }

  if ((v9 & 0xFFFFFFF8) != 0x10)
  {
    goto LABEL_19;
  }

  v15 = *(this + 2586);
  if (v7 == v15 && *(a5 + 1) && *(a5 + 40) == 1)
  {
LABEL_2:
    LODWORD(v10) = *(this + 931) + 1;
    v11 = (*(*(this + 1020) + 512) + 26);
    v12 = v50;
    v13 = v10;
    do
    {
      v14 = *v11;
      v11 += 28;
      *v12++ = v14;
      --v13;
    }

    while (v13);
    goto LABEL_21;
  }

  v16 = *(this + 1020);
  v17 = *(v16 + 512);
  v18 = *(v16 + 2 * v7 + 580);
  v19 = *(v17 + 28 * v18 + 18) || v7 <= v15;
  if (v19 || !*(a5 + 1) || *(this + 10562) != 1)
  {
LABEL_19:
    LODWORD(v50[0]) = v7;
    goto LABEL_20;
  }

  LODWORD(v50[0]) = v7;
  v20 = *(v17 + 28 * v18 + 22);
  if (!*(v17 + 28 * v18 + 22))
  {
LABEL_20:
    LODWORD(v10) = 1;
    goto LABEL_21;
  }

  v21 = (*(*(v16 + 520) + 8 * v18) + 10);
  v10 = 1;
  do
  {
    v22 = *v21;
    v21 += 7;
    *(v50 + v10++) = v22;
    --v20;
  }

  while (v20);
LABEL_21:
  v23 = *(this + 2582);
  if (v23 >= 0x11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v46 = 136315394;
      v47 = "mvhevcOutputBumping";
      v48 = 1024;
      v49 = v23;
      v24 = MEMORY[0x277D86220];
      v25 = "AppleAVD: %s -- m_numActiveAccessUnits out of range %d";
      v26 = 18;
      goto LABEL_24;
    }

    return 0xFFFFFFFFLL;
  }

  if ((v9 & 0xFFFFFFF8) == 0x10)
  {
    if (*(a5 + 1))
    {
      v28 = *(this + 2586);
      if (v7 == v28 || v7 > v28 && !*(*(*(this + 1020) + 512) + 28 * *(*(this + 1020) + 2 * v7 + 580) + 18))
      {
        if (v9 == 21 || *(a4 + 1))
        {
          CAVDMvHevcDecoder::releaseUnusedPicturesFromAllSubDpbs(this);
          if (v10 <= 1)
          {
            v29 = 1;
          }

          else
          {
            v29 = v10;
          }

          v30 = v50;
          while (1)
          {
            v32 = *v30++;
            v31 = v32;
            v33 = *(*(this + 1020) + 2 * v32 + 580);
            if (*(this + 931) < v33)
            {
              break;
            }

            CAVDMvHevcDecoder::removeSubDpbPicturesInAuList(this, v31, v33);
            if (!--v29)
            {
              return 0;
            }
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v46 = 136315138;
            v47 = "mvhevcOutputBumping";
            v24 = MEMORY[0x277D86220];
            v25 = "AppleAVD: %s -- emptyLayer out of range";
            goto LABEL_69;
          }

          return 0xFFFFFFFFLL;
        }

        v38 = 0;
        if (v10 <= 1)
        {
          v39 = 1;
        }

        else
        {
          v39 = v10;
        }

        v40 = SLODWORD(v50[0]);
LABEL_53:
        v41 = *(*(this + 1020) + 2 * v40 + 580);
        if (*(this + 931) >= v41)
        {
          v42 = 0;
          v43 = 1;
          do
          {
            if (v43)
            {
              NumberOfPicturesNeededForOutput = HEVC_RLM::getNumberOfPicturesNeededForOutput(*(this + v41 + 377));
              v43 = NumberOfPicturesNeededForOutput == 0;
              CAVDMvHevcDecoder::releaseUnusedPicturesFromOneSubDpb(this, v41);
              if (++v42 == v39)
              {
                if (!NumberOfPicturesNeededForOutput)
                {
                  return 0;
                }

LABEL_63:
                v45 = CAVDMvHevcDecoder::AccessUnitBumpingProcess(this);
                result = 0;
                if (!v45)
                {
                  return result;
                }

                v37 = v38++ >= 0x10;
                if (v37)
                {
                  return result;
                }

                goto LABEL_53;
              }
            }

            else
            {
              CAVDMvHevcDecoder::releaseUnusedPicturesFromOneSubDpb(this, v41);
              if (++v42 == v39)
              {
                goto LABEL_63;
              }

              v43 = 0;
            }

            v41 = *(*(this + 1020) + 2 * *(v50 + v42) + 580);
          }

          while (*(this + 931) >= v41);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v46 = 136315138;
          v47 = "mvhevcOutputBumping";
          v24 = MEMORY[0x277D86220];
          v25 = "AppleAVD: %s -- emptyLayer out of range";
LABEL_69:
          v26 = 12;
LABEL_24:
          _os_log_impl(&dword_277606000, v24, OS_LOG_TYPE_DEFAULT, v25, &v46, v26);
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  CAVDMvHevcDecoder::releaseUnusedPicturesFromOneSubDpb(this, v7);
  v34 = 0;
  while (1)
  {
    if ((CAVDMvHevcDecoder::isAuBumpingNeeded(this) & 1) == 0)
    {
      v35 = *(*(this + 1020) + 2 * v8 + 580);
      if (*(*(this + v35 + 377) + 2832) < (*(this + v35 + 2644) + 1))
      {
        break;
      }
    }

    v36 = CAVDMvHevcDecoder::AccessUnitBumpingProcess(this);
    result = 0;
    if (v36)
    {
      v37 = v34++ >= 0x10;
      if (!v37)
      {
        continue;
      }
    }

    return result;
  }

  return 0;
}

uint64_t CAVDMvHevcDecoder::createRefPicList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(a3 + 44) <= 1u)
  {
    v5 = *(a1 + 8 * *(a1 + 2972) + 3016);
    v6 = a3 + 2088;
    v7 = a3 + 2216;
    v8 = (*(*a1 + 184))(a1);
    result = HEVC_RLM::getReferencePictureList(v5, a3 + 24, (a3 + 2088), (a3 + 2216), v8);
    if (result)
    {
      return result;
    }

    v10 = *(a3 + 44);
    if (v10 <= 1)
    {
      v11 = 0;
      v12 = *(a3 + 620);
      v13 = a1 + 8408;
      while (2)
      {
        v14 = 0;
        v15 = *(v6 + 8 * v11);
        do
        {
          if (v15 == *(v13 + v14))
          {
            goto LABEL_14;
          }

          v14 += 8;
        }

        while (v14 != 64);
        v16 = *(a1 + 8608);
        if (v16 <= 7)
        {
          if (*(v15 + 48))
          {
            if (!*(*(*(a1 + 8160) + 512) + 28 * *(a1 + 2972) + 10) || (v17 = *(a1 + 8168) + 23176 * *(a1 + 8208), *(v15 + 72) == *(v17 + 3608)) && *(v15 + 76) == *(v17 + 3612))
            {
              *(v13 + 8 * v16) = v15;
              *(a1 + 8608) = v16 + 1;
LABEL_14:
              if (++v11 <= v12)
              {
                continue;
              }

              if (v10)
              {
LABEL_16:
                *(a3 + 2344) = 0;
                if (!*(a3 + 616))
                {
                  return 0;
                }

                v18 = *(a3 + 764);
                if (*(a3 + 762))
                {
                  if (v18 <= *(a3 + 620))
                  {
                    v19 = 2088;
LABEL_43:
                    v28 = *(a3 + v19 + 8 * v18);
                    goto LABEL_44;
                  }
                }

                else if (v18 <= *(a3 + 624))
                {
                  v19 = 2216;
                  goto LABEL_43;
                }

                v28 = 0;
LABEL_44:
                if (*(a1 + 8152) && *(a1 + 3724))
                {
                  if (!v28 || *(v28 + 41) != 1)
                  {
                    return 0;
                  }
                }

                else if (!v28 || (*(v28 + 4) - 24) > 0xFFFFFFF7)
                {
                  return 0;
                }

                result = 0;
                *(a3 + 2344) = v28;
                return result;
              }

              v22 = 0;
              v23 = *(a3 + 624);
              while (2)
              {
                v24 = 0;
                v25 = *(v7 + 8 * v22);
                do
                {
                  if (v25 == *(v13 + v24))
                  {
                    goto LABEL_38;
                  }

                  v24 += 8;
                }

                while (v24 != 64);
                v26 = *(a1 + 8608);
                if (v26 > 7)
                {
                  return 0xFFFFFFFFLL;
                }

                if (*(v25 + 48))
                {
                  if (!*(*(*(a1 + 8160) + 512) + 28 * *(a1 + 2972) + 10) || (v27 = *(a1 + 8168) + 23176 * *(a1 + 8208), *(v25 + 72) == *(v27 + 3608)) && *(v25 + 76) == *(v27 + 3612))
                  {
                    *(v13 + 8 * v26) = v25;
                    *(a1 + 8608) = v26 + 1;
LABEL_38:
                    if (++v22 <= v23)
                    {
                      continue;
                    }

                    goto LABEL_16;
                  }

                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    return 0xFFFFFFFFLL;
                  }

                  v29 = 136315394;
                  v30 = "createRefPicList";
                  v31 = 1024;
                  v32 = v22;
                  v20 = MEMORY[0x277D86220];
                  v21 = "AppleAVD: ERROR: %s(): ref pic list1[%d] has dimension mismatch\n";
                }

                else
                {
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    return 0xFFFFFFFFLL;
                  }

                  v29 = 136315394;
                  v30 = "createRefPicList";
                  v31 = 1024;
                  v32 = v22;
                  v20 = MEMORY[0x277D86220];
                  v21 = "AppleAVD: %s(): bad ref list1[%d]";
                }

                goto LABEL_26;
              }
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v29 = 136315394;
              v30 = "createRefPicList";
              v31 = 1024;
              v32 = v11;
              v20 = MEMORY[0x277D86220];
              v21 = "AppleAVD: ERROR: %s(): ref pic list0[%d] has dimension mismatch\n";
LABEL_26:
              _os_log_impl(&dword_277606000, v20, OS_LOG_TYPE_DEFAULT, v21, &v29, 0x12u);
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v29 = 136315394;
            v30 = "createRefPicList";
            v31 = 1024;
            v32 = v11;
            v20 = MEMORY[0x277D86220];
            v21 = "AppleAVD: %s(): bad ref list0[%d]";
            goto LABEL_26;
          }
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  result = 0;
  *(a3 + 2344) = 0;
  return result;
}

uint64_t CAVDMvHevcDecoder::getRefTileHdrsInfo(uint64_t this)
{
  if (*(this + 8608))
  {
    v1 = this;
    v2 = 0;
    v3 = this + 8408;
    v4 = this + 9136;
    v5 = this + 8616;
    do
    {
      this = (*(**(v4 + 8 * *(*(v1 + 8160) + 2 * *(*(v3 + 8 * v2++) + 28) + 580)) + 264))();
      v5 += 16;
    }

    while (v2 < *(v1 + 8608));
  }

  return this;
}

uint64_t CAVDMvHevcDecoder::getCollocMVInfo(CAVDMvHevcDecoder *this, int a2)
{
  v2 = *(*(this + 1023) + 2360 * a2 + 2344);
  v3 = *(v2 + 44);
  v4 = *(this + *(*(this + 1020) + 2 * *(v2 + 28) + 580) + 1142);
  return (*(*v4 + 272))(v4, v3, this + 8744, this + 8920);
}

uint64_t CAVDMvHevcDecoder::getSliceRefIDmap(uint64_t result, int a2, int a3)
{
  v3 = (*(result + 8184) + 2360 * a3);
  v4 = v3[11];
  if (a2)
  {
    if (!v4)
    {
      v5 = 0;
      do
      {
        for (i = 0; i != 8; ++i)
        {
          if (*&v3[2 * v5 + 554] == *(result + 8408 + 8 * i))
          {
            break;
          }
        }

        *(result + 8344 + 4 * v5++) = i;
      }

      while (v5 <= v3[156]);
    }
  }

  else if (v4 <= 1)
  {
    v7 = 0;
    do
    {
      for (j = 0; j != 8; ++j)
      {
        if (*&v3[2 * v7 + 522] == *(result + 8408 + 8 * j))
        {
          break;
        }
      }

      *(result + 8344 + 4 * v7++) = j;
    }

    while (v7 <= v3[155]);
  }

  return result;
}

uint64_t CAVDMvHevcDecoder::createDPB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  (*(*a1 + 456))(a1, a4);
  v6 = a1 + 3016;
  v7 = HEVC_RLM::addNewReferencePicture(*(a1 + 3016 + 8 * *(a1 + 2972)), a3);
  if (v7 > 0xF)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v7;
  *(*(*(a1 + 8288) + 8 * *(a1 + 2972)) + 4 * v7) = *(a1 + 8228);
  *(*(*(a1 + 8296) + 8 * *(a1 + 2972)) + 4 * v7) = *(a1 + 8244);
  *(a1 + 8312) = v7;
  if ((*(*a1 + 184))(a1))
  {
    *(*(*(a1 + 8304) + 8 * *(a1 + 2972)) + 4 * v9) = *(a1 + 8260);
  }

  if (*(a1 + 8992) != 1)
  {
    return 0;
  }

  DPBEntry = HEVC_RLM::getDPBEntry(*(v6 + 8 * *(a1 + 2972)), v9);
  if (CAVDMvHevcDecoder::insertCurPicIntoAuList(a1, DPBEntry))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v25 = 136315138;
      v26 = "createDPB";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): insertCurPicIntoAuList fail", &v25, 0xCu);
    }

    return 0xFFFFFFFFLL;
  }

  v11 = *(a1 + 2972);
  if (v11 <= *(a1 + 3724))
  {
    *(*(a1 + 9648) + 8 * *(a1 + 2972)) = HEVC_RLM::getDPBEntry(*(v6 + 8 * v11), v9);
    ++*(a1 + 9676);
    v12 = *(a1 + 12064) + 1;
    *(a1 + 12064) = v12;
  }

  else
  {
    v12 = *(a1 + 12064);
  }

  if (v12 != *(a1 + 8996) && (*(a1 + 12063) & 1) == 0)
  {
    return 0;
  }

  v13 = 0;
  v14 = 0;
  v15 = *(a1 + 9648);
  v16 = (*(a1 + 3724) + 1);
  do
  {
    while (1)
    {
      v17 = *(v15 + 8 * v13);
      if (!v17 || !*(v17 + 3))
      {
        break;
      }

      v14 = 1;
      *(v17 + 2) = 1;
      if (v16 - 1 == v13++)
      {
        goto LABEL_24;
      }
    }

    ++v13;
  }

  while (v16 != v13);
  if ((v14 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_24:
  for (i = 0; i != 16; ++i)
  {
    v20 = a1 + 9688 + 40 * i;
    if (*(v20 + 32) == 1)
    {
      v21 = *(v20 + 28);
      if (v21)
      {
        v22 = 0;
        v23 = *v20;
        do
        {
          if (*v23)
          {
            v22 = (*(*v23 + 2) | v22) != 0;
          }

          v23 += 8;
          --v21;
        }

        while (v21);
        if (v22 && *(v20 + 16) > *(a3 + 12))
        {
          ++*(v20 + 20);
        }
      }
    }
  }

LABEL_35:
  v24 = 0;
  do
  {
    *(*(a1 + 9648) + 8 * v24++) = 0;
  }

  while (v16 != v24);
  result = 0;
  *(a1 + 12064) = 0;
  *(a1 + 9676) = 0;
  *(a1 + 9680) = 0;
  *(a1 + 9664) = 0;
  *(a1 + 12063) = 0;
  return result;
}

uint64_t CAVDMvHevcDecoder::insertCurPicIntoAuList(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v35 = *MEMORY[0x277D85DE8];
  v5 = a1 + 0x2000;
  v6 = a1 + 9688;
  v7 = *(a2 + 12);
  v8 = (a1 + 8998);
  while (1)
  {
    v9 = v6 + 40 * v3;
    if (*(v9 + 16) == v7 && *(v9 + 32) == 1)
    {
      v10 = *(v5 + 804);
      if (*(v5 + 804))
      {
        v11 = *(v9 + 8);
        v12 = 1;
        v13 = v8;
        do
        {
          v14 = *v13++;
          v12 &= *(v11 + *(*(a1 + 8160) + 580 + 2 * v14));
          --v10;
        }

        while (v10);
        if ((v12 & 1) == 0)
        {
          break;
        }
      }
    }

    v4 = v3++ > 0xE;
    if (v3 == 16)
    {
      LODWORD(v3) = -1;
      break;
    }
  }

  if (v4)
  {
    v15 = 0;
    v16 = (v5 + 1528);
    while (1)
    {
      v17 = *v16;
      v16 += 40;
      if (!v17)
      {
        break;
      }

      if (++v15 == 16)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v3) = v15;
    goto LABEL_21;
  }

LABEL_14:
  if (v3 != -1)
  {
    if (v3 >= 16)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      v18 = *(a1 + 10328);
      v29 = 136315650;
      v30 = "insertCurPicIntoAuList";
      v31 = 1024;
      v32 = v18;
      v33 = 1024;
      v34 = v3;
      v19 = MEMORY[0x277D86220];
      v20 = "AppleAVD: %s -- DPB is full numAus %d auIndex %d";
      v21 = 24;
LABEL_29:
      _os_log_impl(&dword_277606000, v19, OS_LOG_TYPE_DEFAULT, v20, &v29, v21);
      return 0xFFFFFFFFLL;
    }

LABEL_21:
    v23 = *(*(a1 + 8160) + 2 * *(a2 + 28) + 580);
    v24 = v6 + 40 * v3;
    *(v24 + 16) = v7;
    *(v24 + 20) = *(a2 + 24);
    v25 = *(v24 + 28);
    *(*v24 + 8 * v25) = a2;
    *(v24 + 32) = 1;
    *(v24 + 24) |= *(a2 + 2);
    v26 = *(v24 + 8);
    if ((*(v26 + v23) & 1) == 0)
    {
      LODWORD(v25) = v25 + 1;
      *(v24 + 28) = v25;
    }

    *(v26 + v23) = 1;
    if (v25 > *(v5 + 804))
    {
      return 0xFFFFFFFFLL;
    }

    v27 = *(a1 + 10328);
    if (v4)
    {
      *(a1 + 10328) = ++v27;
    }

    if (v27 < 0x11)
    {
      return 0;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    v29 = 136315394;
    v30 = "insertCurPicIntoAuList";
    v31 = 1024;
    v32 = v27;
    v19 = MEMORY[0x277D86220];
    v20 = "AppleAVD: %s -- m_numActiveAccessUnits out of range %d";
    v21 = 18;
    goto LABEL_29;
  }

  v22 = 0xFFFFFFFFLL;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v29 = 136315394;
    v30 = "insertCurPicIntoAuList";
    v31 = 1024;
    v32 = -1;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s -- DPB is full auIndex %d", &v29, 0x12u);
  }

  return v22;
}

uint64_t CAVDMvHevcDecoder::insertFrame(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8324);
  v5 = *(a1 + 8336);
  if (v4 - *(a1 + 8320) >= v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315394;
    v24 = "insertFrame";
    v25 = 1024;
    v26 = 2455;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v23, 0x12u);
  }

  v6 = *(a1 + 8328);
  if (v6)
  {
    v7 = *(a2 + 28);
    v8 = *(*(a1 + 8160) + 2 * v7 + 580);
    v9 = v6 + ((v4 % v5) << 7);
    *v9 = 1;
    *(v9 + 4) = v7;
    v10 = *(a1 + 2644);
    v11 = v10 == 0;
    v12 = v10 != 0;
    v13 = 8288;
    if (!v11)
    {
      v13 = 8296;
    }

    v14 = 48;
    if (!v11)
    {
      v14 = 56;
    }

    *(v9 + 8) = v12;
    v15 = *(*(a1 + v13) + 8 * v8);
    v16 = *(a2 + v14);
    *(v9 + 12) = *(v15 + 4 * *(a2 + 44));
    *(v9 + 16) = v16;
    v17 = *(a2 + 168);
    v18 = *(a2 + 152);
    v19 = *(a2 + 136);
    *(v9 + 72) = *(a2 + 120);
    *(v9 + 88) = v19;
    *(v9 + 104) = v18;
    *(v9 + 120) = v17;
    v20 = *(a2 + 72);
    v21 = *(a2 + 88);
    *(v9 + 56) = *(a2 + 104);
    *(v9 + 40) = v21;
    *(v9 + 24) = v20;
    ++*(a1 + 8324);
  }

  return 0;
}

uint64_t CAVDMvHevcDecoder::removeFrame(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 8320);
  if (v2 >= *(a1 + 8324))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 8328);
  if (v3)
  {
    v4 = (v3 + ((v2 % *(a1 + 8336)) << 7));
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[3];
    a2[2] = v4[2];
    a2[3] = v7;
    *a2 = v5;
    a2[1] = v6;
    v8 = v4[4];
    v9 = v4[5];
    v10 = v4[7];
    a2[6] = v4[6];
    a2[7] = v10;
    a2[4] = v8;
    a2[5] = v9;
    v2 = *(a1 + 8320);
  }

  v11 = 0;
  *(a1 + 8320) = v2 + 1;
  return v11;
}

uint64_t CAVDMvHevcDecoder::getFrameParams(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8232))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a2 = *(a1 + 3538);
  *(a2 + 8) = *(a1 + 8224);
  return result;
}

uint64_t CAVDMvHevcDecoder::getDispFrameParams(HEVC_RLM **this, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(this + 8152))
  {
    v4 = 0;
    do
    {
      if (!CAVDMvHevcDecoder::isAuBumpingNeeded(this))
      {
        break;
      }

      if (!CAVDMvHevcDecoder::AccessUnitBumpingProcess(this))
      {
        break;
      }
    }

    while (v4++ < 0x10);
  }

  else
  {
    v6 = this[1021] + 23176 * *(this + 2052);
    if (HEVC_RLM::isBumpingNeeded(this[377], v6))
    {
      v7 = 0;
      do
      {
        if (!HEVC_RLM::bumpingProcess(this[377], v10) || v7 > 0xF)
        {
          break;
        }

        ++v7;
        (*(*this + 46))(this, v10);
      }

      while ((HEVC_RLM::isBumpingNeeded(this[377], v6) & 1) != 0);
    }
  }

  return (*(*this + 47))(this, a2);
}

uint64_t CAVDMvHevcDecoder::isAuBumpingNeeded(CAVDMvHevcDecoder *this)
{
  if (CAVDMvHevcDecoder::getNumAusMarkedforOutput(this) > *(this + 2641))
  {
    return 1;
  }

  v3 = *(this + 2643);
  if (v3 >= 1)
  {
    v4 = 0;
    while (1)
    {
      if (*(this + 2642))
      {
        v5 = this + 40 * v4 + 9688;
        if (v5[32] == 1 && *(v5 + 5) > v3)
        {
          v6 = *(v5 + 7);
          if (v6)
          {
            v7 = 0;
            v8 = *v5;
            do
            {
              if (*v8)
              {
                v7 = (*(*v8 + 2) | v7) != 0;
              }

              v8 += 8;
              --v6;
            }

            while (v6);
            if (v7)
            {
              break;
            }
          }
        }
      }

      if (++v4 == 16)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

__n128 CAVDMvHevcDecoder::populateSnapshotStruct(CAVDMvHevcDecoder *this, unsigned int a2, int a3)
{
  v3 = *(this + 2152);
  if (v3)
  {
    v4 = (this + 8408);
    v5 = (this + 8484);
    v6 = *(this + 2152);
    do
    {
      v7 = *v4++;
      *(v5 - 3) = *(v7 + 48);
      v8 = *(v7 + 28);
      *(v5 - 1) = *(v7 + 64);
      *v5 = v8;
      v5 += 4;
      --v6;
    }

    while (v6);
  }

  *(this + 2150) = v3;
  v9 = *(this + 261);
  v10 = *(v9 + 16);
  *(this + 2104) = *v9;
  *(this + 2120) = v10;
  v11 = *(v9 + 32);
  v12 = *(v9 + 48);
  v13 = *(v9 + 80);
  *(this + 2168) = *(v9 + 64);
  *(this + 2184) = v13;
  *(this + 2136) = v11;
  *(this + 2152) = v12;
  v14 = *(v9 + 96);
  v15 = *(v9 + 112);
  v16 = *(v9 + 144);
  *(this + 2232) = *(v9 + 128);
  *(this + 2248) = v16;
  *(this + 2200) = v14;
  *(this + 2216) = v15;
  result = *(v9 + 160);
  v18 = *(v9 + 176);
  v19 = *(v9 + 208);
  *(this + 2296) = *(v9 + 192);
  *(this + 2312) = v19;
  *(this + 2264) = result;
  *(this + 2280) = v18;
  *(this + 582) = a3;
  return result;
}

uint64_t CAVDMvHevcDecoder::checkRefLayersInitialized(CAVDMvHevcDecoder *this, int a2)
{
  v2 = *(this + 1020);
  v3 = *(*(v2 + 512) + 28 * *(v2 + 580 + 2 * a2) + 18);
  if (*(*(v2 + 512) + 28 * *(v2 + 580 + 2 * a2) + 18))
  {
    v4 = 1;
    v5 = 6;
    do
    {
      if (v4)
      {
        v4 = *(this + *(v2 + 580 + 2 * *(*(*(v2 + 520) + 8 * *(v2 + 580 + 2 * a2)) + v5)) + 10498);
      }

      else
      {
        v4 = 0;
      }

      v5 += 14;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

void CAVDMvHevcDecoder::releaseUnusedPicturesFromOneSubDpb(CAVDMvHevcDecoder *this, int a2)
{
  v4 = 0;
  v5 = *(this + 10);
  v6 = this + 9688;
  do
  {
    v7 = &v6[40 * v4];
    v8 = *(v7 + 7);
    if (!v8)
    {
      if ((v7[32] & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_21:
      *(v7 + 4) = 0;
      *(v7 + 3) = 0;
      v7[32] = 0;
      bzero(*(v7 + 1), *(this + 931) + 1);
      --*(this + 2582);
      goto LABEL_22;
    }

    v9 = 0;
    do
    {
      v10 = *(*v7 + v9);
      if (v10 && !*(v10 + 20) && (!v5 || !*(v10 + 2)) && *(v10 + 28) == a2 && *v10 == 1)
      {
        *(*v7 + v9) = 0;
      }

      v9 += 8;
    }

    while (8 * v8 != v9);
    if (v7[32])
    {
      v11 = 0;
      v12 = *v7;
      do
      {
        if (*v12++)
        {
          ++v11;
        }

        --v8;
      }

      while (v8);
      if (!v11)
      {
        goto LABEL_21;
      }
    }

LABEL_22:
    ++v4;
  }

  while (v4 != 16);
  v14 = *(*(this + 1020) + 2 * a2 + 580);
  if (*(this + 2022) >= v14)
  {
    v15 = *(this + v14 + 377);

    HEVC_RLM::releaseUnusedPictures(v15);
  }
}

void CAVDMvHevcDecoder::releaseUnusedPicturesFromAllSubDpbs(CAVDMvHevcDecoder *this)
{
  v2 = 0;
  v3 = *(this + 10);
  v4 = this + 9688;
  do
  {
    v5 = &v4[40 * v2];
    v6 = *(v5 + 7);
    if (!v6)
    {
      if ((v5[32] & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      *(v5 + 4) = 0;
      *(v5 + 3) = 0;
      v5[32] = 0;
      bzero(*(v5 + 1), *(this + 931) + 1);
      --*(this + 2582);
      goto LABEL_19;
    }

    v7 = 0;
    do
    {
      v8 = *(*v5 + v7);
      if (v8 && !*(v8 + 20) && (!v3 || !*(v8 + 2)))
      {
        *(*v5 + v7) = 0;
      }

      v7 += 8;
    }

    while (8 * v6 != v7);
    if (v5[32])
    {
      v9 = 0;
      v10 = *v5;
      do
      {
        if (*v10++)
        {
          ++v9;
        }

        --v6;
      }

      while (v6);
      if (!v9)
      {
        goto LABEL_18;
      }
    }

LABEL_19:
    ++v2;
  }

  while (v2 != 16);
  v12 = (this + 3016);
  v13 = -1;
  do
  {
    v14 = *v12++;
    HEVC_RLM::releaseUnusedPictures(v14);
    ++v13;
  }

  while (v13 < *(this + 931));
}

void CAVDMvHevcDecoder::removeSubDpbPicturesInAuList(CAVDMvHevcDecoder *this, int a2, int a3)
{
  v6 = 0;
  v7 = this + 9688;
  do
  {
    v8 = &v7[40 * v6];
    if (v8[32] == 1)
    {
      v9 = *(v8 + 7);
      if (!v9)
      {
        goto LABEL_15;
      }

      v10 = 0;
      do
      {
        v11 = *(*v8 + v10);
        if (v11 && *(v11 + 28) == a2 && *v11 == 1)
        {
          *(*v8 + v10) = 0;
        }

        v10 += 8;
      }

      while (8 * v9 != v10);
      v12 = 0;
      v13 = *v8;
      do
      {
        if (*v13++)
        {
          ++v12;
        }

        --v9;
      }

      while (v9);
      if (!v12)
      {
LABEL_15:
        *(v8 + 4) = 0;
        *(v8 + 3) = 0;
        v8[32] = 0;
        bzero(*(v8 + 1), *(this + 931) + 1);
        --*(this + 2582);
      }
    }

    ++v6;
  }

  while (v6 != 16);
  v15 = *(this + a3 + 377);

  HEVC_RLM::releaseAllPictures(v15);
}

uint64_t CAVDMvHevcDecoder::getNumAusMarkedforOutput(CAVDMvHevcDecoder *this)
{
  v2 = 0;
  result = 0;
  v4 = this + 9688;
  do
  {
    if (v4[40 * v2 + 32] == 1)
    {
      v5 = &v4[40 * v2];
      v6 = *(v5 + 7);
      if (v6)
      {
        v7 = 0;
        v8 = *v5;
        do
        {
          if (*v8)
          {
            v7 = (*(*v8 + 2) | v7) != 0;
          }

          v8 += 8;
          --v6;
        }

        while (v6);
        result = result + v7;
      }
    }

    ++v2;
  }

  while (v2 != 16);
  return result;
}

uint64_t CAVDMvHevcDecoder::setAVDSharedMem(uint64_t this, uint64_t a2)
{
  if (*(this + 10352))
  {
    v3 = this;
    v4 = 0;
    v5 = this + 9136;
    do
    {
      this = (*(**(v5 + 8 * v4) + 296))(*(v5 + 8 * v4), a2);
      ++v4;
    }

    while (v4 < *(v3 + 10352));
  }

  return this;
}

void *createCloverLghDecoder(uint64_t a1)
{
  v2 = operator new(0xB98uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecCloverLgh::CAHDecCloverLgh(v2, a1);
  }

  return v3;
}

void *CAHDecCloverLgh::CAHDecCloverLgh(void *a1, uint64_t a2)
{
  CAHDec::CAHDec(a1);
  *v4 = &unk_288667EE0;
  *(v4 + 256) = a2;
  *(v4 + 456) = 147956;
  *(v4 + 8) = 500;
  *(v4 + 16) = xmmword_27775BD70;
  *(v4 + 32) = 1;
  *(v4 + 56) = a2;
  *(a2 + 17792) = 0;
  bzero((a2 + 12032), 0xB00uLL);
  *(a2 + 5952) = 0u;
  bzero((a1[32] + 14848), 0xB00uLL);
  bzero(a1 + 58, 0x4D0uLL);
  bzero((a1[32] + 5248), 0x2C0uLL);
  bzero(a1 + 212, 0x4D0uLL);
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

void CAHDecCloverLgh::~CAHDecCloverLgh(CAHDecCloverLgh *this)
{
  *this = &unk_288667EE0;
  CAHDecCloverLgh::freeWorkBuf_SPS(this);
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
  CAHDecCloverLgh::~CAHDecCloverLgh(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecCloverLgh::init(CAHDecCloverLgh *this)
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
        v13 = 201;
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
      v13 = 203;
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

uint64_t CAHDecCloverLgh::startPicture(CAHDecCloverLgh *this, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *(this + 13) = 0;
  v3 = *(this + 34);
  *(this + 33) = v3;
  if (v3)
  {
    bzero(v3, 0x241F4uLL);
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

uint64_t CAHDecCloverLgh::DecodePicture(CAHDecCloverLgh *this, int a2)
{
  if (CAHDecCloverLgh::startPicture(this, a2))
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

uint64_t CAHDecCloverLgh::updateCommonRegisters(CAHDecCloverLgh *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecCloverLgh::populateSequenceRegisters(CAHDecCloverLgh *this)
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

uint64_t CAHDecCloverLgh::populatePictureRegisters(CAHDecCloverLgh *this)
{
  v220 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(this + 33);
  v4 = *(v2 + 17800);
  if (!*(v4 + 37))
  {
    v8 = *(v4 + 100);
    v215 = *(v2 + 11988);
    v210 = 1 << v8;
    v211 = 1 << *(v4 + 96);
    v212 = v211 << v8;
    goto LABEL_5;
  }

  v5 = *(v4 + 100);
  v215 = *(v2 + 11988);
  v210 = 1 << v5;
  v211 = 1 << *(v4 + 96);
  v212 = v211 << v5;
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
  if (*(*(this + 32) + 2644) == 1)
  {
    v10 = 1024;
  }

  else
  {
    v10 = 1;
  }

  *(v3 + 48) = v9 | v10 | 0x2AB;
  *(v3 + 52) = 0x2000000;
  v11 = *(*(*(this + 32) + 17800) + 2688) & 7;
  *(v3 + 56) = v11;
  v12 = v11 & 0xFFFFFFF7 | (8 * (*(*(*(this + 32) + 17800) + 2692) & 1));
  *(v3 + 56) = v12;
  v13 = v12 & 0xFFFFFF8F | (16 * (*(*(*(this + 32) + 17800) + 2696) & 7));
  *(v3 + 56) = v13;
  v14 = v13 & 0xFFFFFF7F | ((*(*(*(this + 32) + 17800) + 2700) & 1) << 7);
  *(v3 + 56) = v14;
  v15 = v14 & 0xFFFFF8FF | ((*(*(*(this + 32) + 17800) + 2704) & 7) << 8);
  *(v3 + 56) = v15;
  v16 = v15 & 0xFFFFF7FF | ((*(*(*(this + 32) + 17800) + 2708) & 1) << 11);
  *(v3 + 56) = v16;
  v17 = v16 & 0xFFFFCFFF | ((*(*(*(this + 32) + 17800) + 2712) & 3) << 12);
  *(v3 + 56) = v17;
  v18 = v17 & 0xFFFFBFFF | ((*(*(*(this + 32) + 17800) + 2716) & 1) << 14);
  *(v3 + 56) = v18;
  v19 = v18 & 0xFFFF7FFF | ((*(*(*(this + 32) + 17800) + 2720) & 1) << 15);
  *(v3 + 56) = v19;
  v20 = v19 & 0xFFF8FFFF | ((*(*(*(this + 32) + 17800) + 2724) & 7) << 16);
  *(v3 + 56) = v20;
  v21 = v20 & 0xFFF7FFFF | ((*(*(*(this + 32) + 17800) + 2728) & 1) << 19);
  *(v3 + 56) = v21;
  v22 = v21 & 0xFFEFFFFF | ((*(*(*(this + 32) + 17800) + 2732) & 1) << 20);
  *(v3 + 56) = v22;
  v23 = v22 & 0xFFDFFFFF | ((*(*(*(this + 32) + 17800) + 2736) & 1) << 21);
  *(v3 + 56) = v23;
  v24 = v23 & 0xFFBFFFFF | ((*(*(*(this + 32) + 17800) + 2740) & 1) << 22);
  *(v3 + 56) = v24;
  v25 = v24 & 0xFF7FFFFF | ((*(*(*(this + 32) + 17800) + 2744) & 1) << 23);
  *(v3 + 56) = v25;
  v26 = v25 & 0xFEFFFFFF | ((*(*(*(this + 32) + 17800) + 2748) & 1) << 24);
  *(v3 + 56) = v26;
  v27 = v26 & 0xFDFFFFFF | ((*(*(*(this + 32) + 17800) + 2752) & 1) << 25);
  *(v3 + 56) = v27;
  v28 = *(*(*(this + 32) + 17800) + 2756);
  *(v3 + 60) = 0;
  *(v3 + 64) = 0;
  *(v3 + 56) = v27 & 0xFBFFFFFF | ((v28 & 1) << 26);
  if (*(v4 + 60))
  {
    v29 = *(v4 + 69) & 0x7F;
    *(v3 + 60) = v29;
    v30 = v29 & 0xFFFFC07F | ((*(v4 + 68) & 0x7F) << 7);
    *(v3 + 60) = v30;
    v31 = v30 & 0xFFE03FFF | ((*(v4 + 67) & 0x7F) << 14);
    *(v3 + 60) = v31;
    v32 = v31 & 0xF01FFFFF | ((*(v4 + 66) & 0x7F) << 21);
    *(v3 + 60) = v32;
    *(v3 + 60) = v32 & 0x8FFFFFFF | ((*(v4 + 59) & 7) << 28);
    v33 = *(v4 + 73) & 0x7F;
    *(v3 + 64) = v33;
    v34 = v33 & 0xFFFFC07F | ((*(v4 + 72) & 0x7F) << 7);
    *(v3 + 64) = v34;
    v35 = v34 & 0xFFF03FFF | ((*(v4 + 58) & 0x3F) << 14);
  }

  else
  {
    *(v3 + 60) = (*(v4 + 59) & 7) << 28;
    v35 = (*(v4 + 58) & 0x3F) << 14;
  }

  v36 = 0;
  *(v3 + 64) = v35;
  *(v3 + 68) = 0;
  v37 = *(v4 + 77) & 0x1F;
  *(v3 + 68) = v37;
  v38 = v37 & 0xFFFFFC1F | (32 * (*(v4 + 76) & 0x1F));
  *(v3 + 68) = v38;
  v39 = v38 & 0xFFFF83FF | ((*(v4 + 75) & 0x1F) << 10);
  *(v3 + 68) = v39;
  *(v3 + 68) = v39 | (*(v4 + 74) << 15);
  v40 = v3 + 72;
  v41 = (v4 + 208);
  v42 = (v4 + 242);
  do
  {
    v43 = *(v4 + 78);
    *(v40 + 4 * v36) = 0;
    if (v43)
    {
      v44 = *v41 != 0;
      *(v40 + 4 * v36) = v44;
      v45 = v44 | (8 * (*(v41 - 1) != 0));
    }

    else
    {
      v45 = 0;
    }

    *(v40 + 4 * v36) = v45;
    v46 = v45 & 0xFFFFFFF9 | (2 * (*v42 & 3));
    *(v40 + 4 * v36) = v46;
    if (v43)
    {
      if (*(v41 - 2))
      {
        *(v40 + 4 * v36) = v46 | 0x800;
        v47 = v46 & 0xFFFFF00F | 0x800 | (16 * (*(v42 - 1) & 0x7F));
      }

      else
      {
        v47 = v46 & 0xFFFFF00F;
      }

      *(v40 + 4 * v36) = v47;
      if (*(v41 - 3))
      {
        v48 = v47 | 0x200000;
        *(v40 + 4 * v36) = v48;
        v49 = (*(v42 - 2) & 0x1FF) << 12;
        goto LABEL_24;
      }
    }

    else
    {
      v47 = v46 & 0xFFFFF00F;
    }

    v49 = 0;
    v48 = v47 & 0xFFDFFFFF;
LABEL_24:
    *(v40 + 4 * v36++) = v48 & 0xFFE00FFF | v49;
    v41 += 4;
    v42 += 4;
  }

  while (v36 != 8);
  *(v3 + 144) = 0x20000;
  v213 = v6;
  if (v6)
  {
    v214 = 8;
  }

  else
  {
    v50 = (v3 + 116);
    v51 = 2208;
    v214 = 3;
    v52 = MEMORY[0x277D86220];
    do
    {
      *(v50 - 3) = 0;
      v53 = **(*(this + 32) + 8 * v51) - 1;
      *(v50 - 3) = v53;
      *(v50 - 3) = (v53 | (*(*(*(this + 32) + 8 * v51) + 4) << 16)) - 0x10000;
      *v50 = 0;
      v54 = ((**(*(this + 32) + 8 * v51) << 14) / *(v4 + 108));
      *v50 = v54;
      v55 = v54 | (((*(*(*(this + 32) + 8 * v51) + 4) << 14) / *(v4 + 112)) << 16);
      *v50 = v55;
      if ((v54 - 1024) >= 0x7C01 && os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v217 = "populatePictureRegisters";
        v218 = 1024;
        v219 = 497;
        _os_log_impl(&dword_277606000, v52, OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
        v55 = *v50;
      }

      if ((v55 - 0x4000000) >= 0x7C010000 && os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v217 = "populatePictureRegisters";
        v218 = 1024;
        v219 = 498;
        _os_log_impl(&dword_277606000, v52, OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
      }

      ++v51;
      ++v50;
    }

    while (v51 != 2211);
  }

  *(v3 + 136) = 0;
  v56 = *(v4 + 2672);
  *(v3 + 136) = v56;
  *(v3 + 136) = v56 | (*(v4 + 2676) << 16);
  v57 = *(v4 + 2680);
  *(v3 + 140) = v57;
  *(v3 + 140) = v57 | (*(v4 + 2684) << 16);
  v58 = this + 464;
  for (i = 148; i != 176; i += 4)
  {
    *(*(this + 33) + i) = 0;
    v60 = *(this + 33);
    v61 = *(v60 + i);
    *(v60 + i) = 0;
    *(*(this + 33) + i) ^= 0xFFFFFFu;
    v62 = *(this + 33);
    v63 = *(v62 + i);
    *(v62 + i) = v61;
    if (*v58 || *(v58 + 38) || *(v58 + 39))
    {
      result = CAHDec::addToPatcherList(this, v58, i, 0, 0xFFFFFFFFLL, 8, v63, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + i + 28) = 0;
    *(*(this + 33) + i + 28) = *(*(this + 33) + i + 28) & 0x800001FF | (((*(this + 736) >> 9) & 0x3FFFFF) << 9);
    v58 += 176;
  }

  *(*(this + 33) + 204) = 0;
  v65 = *(this + 33);
  v66 = *(v65 + 204);
  *(v65 + 204) = 0;
  *(*(this + 33) + 204) ^= 0xFFFFFFu;
  v67 = *(this + 33);
  v68 = *(v67 + 204);
  *(v67 + 204) = v66;
  v69 = *(this + 32);
  if (*(v69 + 5072) || *(v69 + 5224) || *(v69 + 5228))
  {
    result = CAHDec::addToPatcherList(this, (v69 + 5072), 204, 0, 0xFFFFFFFFLL, 8, v68, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 208) = 0;
  *(*(this + 33) + 256) = 0;
  v70 = *(this + 33);
  v71 = *(v70 + 256);
  *(v70 + 256) = 0;
  *(*(this + 33) + 256) ^= 0xFFFFFFu;
  v72 = *(this + 33);
  v73 = *(v72 + 256);
  *(v72 + 256) = v71;
  if (*(this + 278) || *(this + 594) || *(this + 595))
  {
    result = CAHDec::addToPatcherList(this, this + 278, 256, 0, 0xFFFFFFFFLL, 8, v73, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 212) = 0;
  v74 = *(this + 33);
  v75 = *(v74 + 212);
  *(v74 + 212) = 0;
  *(*(this + 33) + 212) ^= 0xFFFFFFu;
  v76 = *(this + 33);
  v77 = *(v76 + 212);
  *(v76 + 212) = v75;
  if (*(this + 234) || *(this + 506) || *(this + 507))
  {
    result = CAHDec::addToPatcherList(this, this + 234, 212, 0, 0xFFFFFFFFLL, 8, v77, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 216) = 0;
  v78 = *(this + 33);
  v79 = *(v78 + 216);
  *(v78 + 216) = 0;
  *(*(this + 33) + 216) ^= 0xFFFFFFu;
  v80 = *(this + 33);
  v81 = *(v80 + 216);
  *(v80 + 216) = v79;
  if (*(this + 256) || *(this + 550) || *(this + 551))
  {
    result = CAHDec::addToPatcherList(this, this + 256, 216, 0, 0xFFFFFFFFLL, 8, v81, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 220) = 0;
  *(*(this + 33) + 224) = 0;
  v82 = *(this + 33);
  v83 = *(v82 + 224);
  *(v82 + 224) = 0;
  *(*(this + 33) + 224) ^= 0xFFFFFFu;
  v84 = *(this + 33);
  v85 = *(v84 + 224);
  *(v84 + 224) = v83;
  if (*(this + 300) || *(this + 638) || *(this + 639))
  {
    result = CAHDec::addToPatcherList(this, this + 300, 224, 0, 0xFFFFFFFFLL, 8, v85, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 228) = 0;
  v86 = *(this + 33);
  v87 = *(v86 + 228);
  *(v86 + 228) = 0;
  *(*(this + 33) + 228) ^= 0xFFFFFFu;
  v88 = *(this + 33);
  v89 = *(v88 + 228);
  *(v88 + 228) = v87;
  if (*(this + 322) || *(this + 682) || *(this + 683))
  {
    result = CAHDec::addToPatcherList(this, this + 322, 228, 0, 0xFFFFFFFFLL, 8, v89, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 232) = 0;
  v90 = *(this + 33);
  v91 = *(v90 + 232);
  *(v90 + 232) = 0;
  *(*(this + 33) + 232) ^= 0xFFFFFFu;
  v92 = *(this + 33);
  v93 = *(v92 + 232);
  *(v92 + 232) = v91;
  if (*(this + 344) || *(this + 726) || *(this + 727))
  {
    result = CAHDec::addToPatcherList(this, this + 344, 232, 0, 0xFFFFFFFFLL, 8, v93, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 236) = 0;
  v94 = *(this + 33);
  v95 = *(v94 + 236);
  *(v94 + 236) = 0;
  *(*(this + 33) + 236) ^= 0xFFFFFFu;
  v96 = *(this + 33);
  v97 = *(v96 + 236);
  *(v96 + 236) = v95;
  v98 = (*(this + 32) + 176 * *(*(this + 32) + 17808) + 2960);
  if (*v98 || *(*(this + 32) + 176 * *(*(this + 32) + 17808) + 3112) || *(*(this + 32) + 176 * *(*(this + 32) + 17808) + 3116))
  {
    result = CAHDec::addToPatcherList(this, v98, 236, 0, 0xFFFFFFFFLL, 8, v97, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 240) = *(*(this + 33) + 243) << 24;
  v99 = *(this + 33);
  v100 = *(v99 + 240);
  *(v99 + 240) = 0;
  *(*(this + 33) + 240) ^= 0xFFFFFFu;
  v101 = *(this + 33);
  v102 = *(v101 + 240);
  *(v101 + 240) = v100;
  v103 = (*(this + 32) + 176 * *(*(this + 32) + 5964) + 3664);
  if (*v103 || *(*(this + 32) + 176 * *(*(this + 32) + 5964) + 3816) || *(*(this + 32) + 176 * *(*(this + 32) + 5964) + 3820))
  {
    result = CAHDec::addToPatcherList(this, v103, 240, 0, 0xFFFFFFFFLL, 8, v102, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 244) = *(*(this + 33) + 247) << 24;
  v104 = *(this + 33);
  v105 = *(v104 + 244);
  *(v104 + 244) = 0;
  *(*(this + 33) + 244) ^= 0xFFFFFFu;
  v106 = *(this + 33);
  v107 = *(v106 + 244);
  *(v106 + 244) = v105;
  v108 = (*(this + 32) + 176 * *(*(this + 32) + 5960) + 3664);
  if (*v108 || *(*(this + 32) + 176 * *(*(this + 32) + 5960) + 3816) || *(*(this + 32) + 176 * *(*(this + 32) + 5960) + 3820))
  {
    result = CAHDec::addToPatcherList(this, v108, 244, 0, 0xFFFFFFFFLL, 8, v107, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 248) = 0;
  v109 = *(this + 33);
  v110 = *(v109 + 248);
  *(v109 + 248) = 0;
  *(*(this + 33) + 248) ^= 0xFFFFFFu;
  v111 = *(this + 33);
  v112 = *(v111 + 248);
  *(v111 + 248) = v110;
  v113 = (*(this + 32) + 176 * *(*(this + 32) + 5956) + 5248);
  if (*v113 || *(*(this + 32) + 176 * *(*(this + 32) + 5956) + 5400) || *(*(this + 32) + 176 * *(*(this + 32) + 5956) + 5404))
  {
    result = CAHDec::addToPatcherList(this, v113, 248, 0, 0xFFFFFFFFLL, 8, v112, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 252) = 0;
  v114 = *(this + 33);
  v115 = *(v114 + 252);
  *(v114 + 252) = 0;
  *(*(this + 33) + 252) ^= 0xFFFFFFu;
  v116 = *(this + 33);
  v117 = *(v116 + 252);
  *(v116 + 252) = v115;
  v118 = (*(this + 32) + 176 * *(*(this + 32) + 5952) + 5248);
  if (*v118 || *(*(this + 32) + 176 * *(*(this + 32) + 5952) + 5400) || *(*(this + 32) + 176 * *(*(this + 32) + 5952) + 5404))
  {
    result = CAHDec::addToPatcherList(this, v118, 252, 0, 0xFFFFFFFFLL, 8, v117, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 260) = 0;
  *(*(this + 33) + 264) = 0;
  *(*(this + 33) + 268) = 0;
  *(*(this + 33) + 272) = 0;
  v119 = *(this + 33);
  v120 = *(v119 + 264);
  *(v119 + 264) = 0;
  *(*(this + 33) + 264) ^= 0xFFFFFFu;
  v121 = *(this + 33);
  v122 = *(v121 + 264);
  *(v121 + 264) = v120;
  v123 = *(*(this + 32) + 376 * v215 + 5976);
  if (*v123 || *(v123 + 152) || *(v123 + 156))
  {
    result = CAHDec::addToPatcherList(this, v123, 264, *(v123 + 52), 0xFFFFFFFFLL, 8, v122, 4);
    if (result)
    {
      return result;
    }
  }

  v124 = *(this + 33);
  v125 = *(v124 + 272);
  *(v124 + 272) = 0;
  *(*(this + 33) + 272) ^= 0xFFFFFFu;
  v126 = *(this + 33);
  v127 = *(v126 + 272);
  *(v126 + 272) = v125;
  v128 = *(this + 32);
  v129 = *(v128 + 376 * v215 + 5976);
  if (*v129 || *(v129 + 152) || *(v129 + 156))
  {
    result = CAHDec::addToPatcherList(this, v129, 272, *(v129 + 56), 0xFFFFFFFFLL, 8, v127, 4);
    if (result)
    {
      return result;
    }

    v128 = *(this + 32);
  }

  v130 = *(v128 + 2648);
  v131 = *(this + 33);
  v132 = *(v131 + 260);
  *(v131 + 260) = 0;
  *(*(this + 33) + 260) ^= 0xFFFFFFu;
  v133 = *(this + 33);
  v134 = *(v133 + 260);
  *(v133 + 260) = v132;
  v135 = *(this + 32) + 5968;
  if (v130 == 1)
  {
    v136 = *(v135 + 376 * v215 + 8);
    if (!*v136 && !*(v136 + 152) && !*(v136 + 156) || (result = CAHDec::addToPatcherList(this, v136, 260, *(v136 + 64), 0xFFFFFFFFLL, 8, v134, 4), !result))
    {
      v137 = *(this + 33);
      v138 = *(v137 + 268);
      *(v137 + 268) = 0;
      *(*(this + 33) + 268) ^= 0xFFFFFFu;
      v139 = *(this + 33);
      v140 = *(v139 + 268);
      *(v139 + 268) = v138;
      v141 = *(*(this + 32) + 376 * v215 + 5976);
      if (*v141 || *(v141 + 152) || *(v141 + 156))
      {
        v142 = *(v141 + 68);
        v143 = this;
        goto LABEL_116;
      }

      goto LABEL_117;
    }

    return result;
  }

  v144 = v135 + 376 * v215;
  v146 = *(v144 + 24);
  v145 = v144 + 24;
  if (v146 || *(v145 + 152) || *(v145 + 156))
  {
    result = CAHDec::addToPatcherList(this, v145, 260, 0, 0xFFFFFFFFLL, 8, v134, 4);
    if (result)
    {
      return result;
    }
  }

  v147 = *(this + 33);
  v148 = *(v147 + 268);
  *(v147 + 268) = 0;
  *(*(this + 33) + 268) ^= 0xFFFFFFu;
  v149 = *(this + 33);
  v140 = *(v149 + 268);
  *(v149 + 268) = v148;
  v141 = *(this + 32) + 376 * v215 + 6168;
  if (*v141 || *(*(this + 32) + 376 * v215 + 6320) || *(*(this + 32) + 376 * v215 + 6324))
  {
    v143 = this;
    v142 = 0;
LABEL_116:
    result = CAHDec::addToPatcherList(v143, v141, 268, v142, 0xFFFFFFFFLL, 8, v140, 4);
    if (result)
    {
      return result;
    }
  }

LABEL_117:
  if ((v213 & 1) == 0)
  {
    v173 = 0;
    v174 = 17664;
    do
    {
      v175 = *(*(*(this + 32) + v174) + 40);
      *(*(this + 33) + v173 + 288) = 0;
      *(*(this + 33) + v173 + 300) = 0;
      *(*(this + 33) + v173 + 312) = 0;
      *(*(this + 33) + v173 + 324) = 0;
      v176 = *(this + 33) + v173;
      v177 = *(v176 + 300);
      *(v176 + 300) = 0;
      *(*(this + 33) + v173 + 300) ^= 0xFFFFFFu;
      v178 = *(this + 33) + v173;
      v179 = *(v178 + 300);
      *(v178 + 300) = v177;
      v180 = *(v175 + 8);
      if (*v180 || *(v180 + 152) || *(v180 + 156))
      {
        result = CAHDec::addToPatcherList(this, v180, v173 + 300, *(v180 + 52), 0xFFFFFFFFLL, 8, v179, 4);
        if (result)
        {
          return result;
        }
      }

      v181 = *(this + 33) + v173;
      v182 = *(v181 + 324);
      *(v181 + 324) = 0;
      *(*(this + 33) + v173 + 324) ^= 0xFFFFFFu;
      v183 = *(this + 33) + v173;
      v184 = *(v183 + 324);
      *(v183 + 324) = v182;
      v185 = *(v175 + 8);
      if (*v185 || *(v185 + 152) || *(v185 + 156))
      {
        result = CAHDec::addToPatcherList(this, v185, v173 + 324, *(v185 + 56), 0xFFFFFFFFLL, 8, v184, 4);
        if (result)
        {
          return result;
        }
      }

      v186 = *(*(this + 32) + 2648);
      v187 = *(this + 33) + v173;
      v188 = *(v187 + 288);
      *(v187 + 288) = 0;
      *(*(this + 33) + v173 + 288) ^= 0xFFFFFFu;
      v189 = *(this + 33) + v173;
      v190 = *(v189 + 288);
      *(v189 + 288) = v188;
      if (v186 == 1)
      {
        v191 = *(v175 + 8);
        if (*v191 || *(v191 + 152) || *(v191 + 156))
        {
          result = CAHDec::addToPatcherList(this, v191, v173 | 0x120, *(v191 + 64), 0xFFFFFFFFLL, 8, v190, 4);
          if (result)
          {
            return result;
          }
        }

        v192 = *(this + 33) + v173;
        v193 = *(v192 + 312);
        *(v192 + 312) = 0;
        *(*(this + 33) + v173 + 312) ^= 0xFFFFFFu;
        v194 = *(this + 33) + v173;
        v195 = *(v194 + 312);
        *(v194 + 312) = v193;
        v196 = *(v175 + 8);
        if (*v196 || *(v196 + 152) || *(v196 + 156))
        {
          v197 = *(v196 + 68);
          v198 = v173 + 312;
          v199 = this;
          goto LABEL_164;
        }
      }

      else
      {
        if (*(v175 + 24) || *(v175 + 176) || *(v175 + 180))
        {
          result = CAHDec::addToPatcherList(this, (v175 + 24), v173 | 0x120, 0, 0xFFFFFFFFLL, 8, v190, 4);
          if (result)
          {
            return result;
          }
        }

        v200 = *(this + 33) + v173;
        v201 = *(v200 + 312);
        *(v200 + 312) = 0;
        *(*(this + 33) + v173 + 312) ^= 0xFFFFFFu;
        v202 = *(this + 33) + v173;
        v195 = *(v202 + 312);
        *(v202 + 312) = v201;
        v196 = v175 + 200;
        if (*(v175 + 200) || *(v175 + 352) || *(v175 + 356))
        {
          v198 = v173 + 312;
          v199 = this;
          v197 = 0;
LABEL_164:
          result = CAHDec::addToPatcherList(v199, v196, v198, v197, 0xFFFFFFFFLL, 8, v195, 4);
          if (result)
          {
            return result;
          }
        }
      }

      v174 += 8;
      v173 += 4;
    }

    while (v173 != 12);
  }

  v150 = subWidth[*(*(*(this + 32) + 17800) + 4)];
  *(*(this + 33) + 336) = 0;
  *(*(this + 33) + 340) = 0;
  *(*(this + 33) + 344) = 0;
  *(*(this + 33) + 348) = 0;
  if (*(*(this + 32) + 2644))
  {
    v151 = *(this + 33);
    v152 = *(v151 + 336);
    *(v151 + 336) = 0;
    *(*(this + 33) + 336) ^= 0xFFFFFFu;
    v153 = *(this + 33);
    v154 = *(v153 + 336);
    *(v153 + 336) = v152;
    v155 = *(*(this + 32) + 12008);
    if (*v155 || *(v155 + 152) || *(v155 + 156))
    {
      result = CAHDec::addToPatcherList(this, v155, 336, *(v155 + 52), 0xFFFFFFFFLL, 8, v154, 4);
      if (result)
      {
        return result;
      }
    }

    v156 = *(this + 33);
    v157 = *(v156 + 340);
    *(v156 + 340) = 0;
    *(*(this + 33) + 340) ^= 0xFFFFFFu;
    v158 = *(this + 33);
    v159 = *(v158 + 340);
    *(v158 + 340) = v157;
    v160 = *(*(this + 32) + 12008);
    if (*v160 || *(v160 + 152) || *(v160 + 156))
    {
      result = CAHDec::addToPatcherList(this, v160, 340, *(v160 + 56), 0xFFFFFFFFLL, 8, v159, 4);
      if (result)
      {
        return result;
      }
    }

    v161 = *(this + 33);
    v162 = *(v161 + 344);
    *(v161 + 344) = 0;
    *(*(this + 33) + 344) ^= 0xC0000000;
    v163 = *(this + 33);
    v164 = *(v163 + 344);
    *(v163 + 344) = v162;
    v165 = *(*(this + 32) + 12008);
    if (*v165 || *(v165 + 152) || *(v165 + 156))
    {
      result = CAHDec::addToPatcherList(this, v165, 344, *(v165 + 52), 192, 6, v164, 4);
      if (result)
      {
        return result;
      }
    }

    v166 = *(this + 33);
    v167 = *(v166 + 348);
    *(v166 + 348) = 0;
    *(*(this + 33) + 348) ^= 0xC0000000;
    v168 = *(this + 33);
    v169 = *(v168 + 348);
    *(v168 + 348) = v167;
    v170 = *(this + 32);
    v171 = *(v170 + 12008);
    if (*v171 || *(v171 + 152) || *(v171 + 156))
    {
      result = CAHDec::addToPatcherList(this, v171, 348, *(v171 + 56), 192, 6, v169, 4);
      if (result)
      {
        return result;
      }

      v170 = *(this + 32);
    }

    if (*(v170 + 8) == 1)
    {
      *(*(this + 33) + 344) = *(*(this + 33) + 344) & 0xFFFFC003 | (4 * ((*(*(v170 + 12008) + 76) >> 6) & 0xFFF));
      v172 = (*(*(this + 32) + 12008) + 80);
    }

    else
    {
      if (CAHDecCloverLgh::getSWRStride(this, *(v3 + 140) + 1, *(v4 + 105) - 8, *(v4 + 105) - 8, v150))
      {
        return 0xFFFFFFFFLL;
      }

      *(*(this + 33) + 344) = *(*(this + 33) + 344) & 0xFFFFC003 | (4 * ((*(this + 739) >> 6) & 0xFFF));
      v172 = (this + 2960);
    }

    *(*(this + 33) + 348) = *(*(this + 33) + 348) & 0xFFFF8003 | (4 * ((*v172 >> 6) & 0x1FFF));
  }

  if (v212 < 2)
  {
    result = 0;
    v209 = *(this + 33);
    *(v209 + 352) = 65537;
    *(v209 + 356) = 0;
    *(v209 + 358) = *(v4 + 108) >> 6;
    *(v209 + 486) = 0;
    *(v209 + 488) = *(v4 + 112) >> 6;
  }

  else
  {
    v203 = *(this + 33);
    *(v203 + 352) = v211;
    if (v210 >= 1)
    {
      v204 = v210;
      v205 = (*(*(this + 32) + 17800) + 2786);
      do
      {
        if ((*v205 & 1) == 0)
        {
          *(v203 + 486 + 2 * v214) = *(v205 - 26) >> 3;
        }

        v205 += 1792;
        --v204;
      }

      while (v204);
    }

    *(v203 + 354) = v210;
    if (v211 < 1)
    {
      return 0;
    }

    else
    {
      v206 = v203 + 356;
      v207 = v211;
      v208 = *(*(this + 32) + 17800) + 2768;
      result = 0;
      do
      {
        if ((*(v208 + 18) & 1) == 0)
        {
          *(v206 + 2 * v214) = *v208 >> 3;
        }

        v208 += 28;
        --v207;
      }

      while (v207);
    }
  }

  return result;
}

uint64_t CAHDecCloverLgh::getSWRStride(CAHDecCloverLgh *this, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(*(this + 32) + 2644);
  *(this + 2956) = 0;
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
        *(this + 739) = (((2 * ((2863311531u * (a2 + 2)) >> 32)) & 0xFFFFFFFC) + 63) & 0xFFFFFFC0;
        v9 = (2 * ((2863311531u * (2 * a2 / a5 + 5)) >> 32)) & 0xFFFFFFF8;
LABEL_21:
        *(this + 740) = (v9 + 63) & 0xFFFFFFC0;
        return v5;
      }

      goto LABEL_15;
    }

    v5 = 0;
    *(this + 739) = (a2 + 63) & 0xFFFFFFC0;
    v10 = 2 * a2;
LABEL_19:
    v9 = v10 / a5;
    goto LABEL_21;
  }

  if (v8 == 4)
  {
    v5 = 0;
    *(this + 739) = (((2 * ((3435973837u * (a2 + 4)) >> 32)) & 0xFFFFFFF8) + 63) & 0xFFFFFFC0;
    v9 = (2 * ((3435973837u * (2 * a2 / a5 + 9)) >> 32)) & 0xFFFFFFF0;
    goto LABEL_21;
  }

  if (v8 == 8)
  {
    v5 = 0;
    *(this + 739) = (2 * a2 + 63) & 0xFFFFFFC0;
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

uint64_t CAHDecCloverLgh::populateAvdWork(CAHDecCloverLgh *this)
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
  v8 = v2 + 500;
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
      *(v2 + 32) = 500;
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
        v47 = 853;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v19 = v42;
      }

      result = CAHDec::addToPatcherList(this, v16, 36 * v6 + 520, v19, 0xFFFFFFFFLL, 0, -1, 4);
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

uint64_t CAHDecCloverLgh::allocWorkBuf_SPS(CAHDecCloverLgh *this, int *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = a2[1];
  *(this + 366) = *&vmla_s32(0x7F0000007FLL, vdup_n_s32((((v4 + 7) >> 3) + 8) >> 3), vadd_s32((*&vshl_u32(vdup_n_s32(*a2 + 7), 0x200000001) & 0xFFFFFFE1FFFFFFE1), 0x2000000020)) & 0xFFFFFF80FFFFFF80;
  v5 = ((v4 + 63) >> 6) * ((v3 + 63) >> 6);
  *(this + 737) = 576 * v5;
  if (*(*(this + 32) + 2648))
  {
LABEL_8:
    v10 = 5248;
    v11 = 4;
    do
    {
      v12 = *(this + 737);
      if (v12 && CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v10), v12, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        v17 = 136315650;
        v18 = "allocWorkBuf_SPS";
        v19 = 1024;
        v20 = 1027;
        v21 = 2080;
        v22 = "MvColo";
        v15 = MEMORY[0x277D86220];
        goto LABEL_26;
      }

      v10 += 176;
      --v11;
    }

    while (v11);
    v13 = 24 * v5;
    *(this + 741) = 24 * v5;
    v14 = 3664;
    if (!v13)
    {
      goto LABEL_14;
    }

LABEL_13:
    if (!CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v14), v13, 7, 1, 0))
    {
LABEL_14:
      while (v14 != 4896)
      {
        v13 = *(this + 741);
        v14 += 176;
        if (v13)
        {
          goto LABEL_13;
        }
      }

      return 0;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v17 = 136315650;
    v18 = "allocWorkBuf_SPS";
    v19 = 1024;
    v20 = 1033;
    v21 = 2080;
    v22 = "segMap";
    v15 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = 14848;
    v7 = 16;
    while (1)
    {
      v8 = *(this + 732);
      if (v8 && CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v6 - 2816), v8, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        v17 = 136315650;
        v18 = "allocWorkBuf_SPS";
        v19 = 1024;
        v20 = 1011;
        v21 = 2080;
        v22 = "HdrY";
        v15 = MEMORY[0x277D86220];
        goto LABEL_26;
      }

      v9 = *(this + 733);
      if (v9)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v6), v9, 7, 1, 0))
        {
          break;
        }
      }

      v6 += 176;
      if (!--v7)
      {
        goto LABEL_8;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v17 = 136315650;
    v18 = "allocWorkBuf_SPS";
    v19 = 1024;
    v20 = 1016;
    v21 = 2080;
    v22 = "HdrC";
    v15 = MEMORY[0x277D86220];
  }

LABEL_26:
  _os_log_impl(&dword_277606000, v15, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v17, 0x1Cu);
LABEL_27:
  (*(*this + 144))(this);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecCloverLgh::allocWorkBuf_PPS(CAHDecCloverLgh *this, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
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
        v22 = 136315650;
        v23 = "allocWorkBuf_PPS";
        v24 = 1024;
        v25 = 1106;
        v26 = 2080;
        v27 = "IpAbove";
        v16 = MEMORY[0x277D86220];
LABEL_34:
        _os_log_impl(&dword_277606000, v16, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v22, 0x1Cu);
        goto LABEL_35;
      }

      goto LABEL_35;
    }

    v5 = *(this + 32);
  }

  v17 = 16 * v9;
  if ((192 << v8) + ((v12 + 7) >> 3) * v17 == 192)
  {
LABEL_16:
    v18 = 288 * ((v12 + 63) >> 6) + (v14 << 7);
    if (v18)
    {
      if (CAVDDecoder::allocAVDMem(v5, this + 139, v18, 7, 1, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136315650;
          v23 = "allocWorkBuf_PPS";
          v24 = 1024;
          v25 = 1115;
          v26 = 2080;
          v27 = "LfAboveInfo";
          v16 = MEMORY[0x277D86220];
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      v5 = *(this + 32);
    }

    v19 = ((v11 + 7) >> 3) * v17;
    if (v19)
    {
      if (CAVDDecoder::allocAVDMem(v5, this + 150, v19, 7, 1, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136315650;
          v23 = "allocWorkBuf_PPS";
          v24 = 1024;
          v25 = 1121;
          v26 = 2080;
          v27 = "LfLeftPix";
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
          v22 = 136315650;
          v23 = "allocWorkBuf_PPS";
          v24 = 1024;
          v25 = 1129;
          v26 = 2080;
          v27 = "LfLeftInfo";
          v16 = MEMORY[0x277D86220];
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      v5 = *(this + 32);
    }

    result = CAVDDecoder::allocAVDMem(v5, this + 172, (24 * v13 + 30), 7, 1, 0);
    if (!result)
    {
      return result;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315650;
      v23 = "allocWorkBuf_PPS";
      v24 = 1024;
      v25 = 1137;
      v26 = 2080;
      v27 = "SwLeftPix";
      v16 = MEMORY[0x277D86220];
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (!CAVDDecoder::allocAVDMem(v5, this + 128, ((192 << v8) + ((v12 + 7) >> 3) * v17 - 192), 7, 1, 0))
  {
    v5 = *(this + 32);
    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315650;
    v23 = "allocWorkBuf_PPS";
    v24 = 1024;
    v25 = 1109;
    v26 = 2080;
    v27 = "LfAbovePix";
    v16 = MEMORY[0x277D86220];
    goto LABEL_34;
  }

LABEL_35:
  (*(*this + 160))(this, 0);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecCloverLgh::freeWorkBuf_SPS(CAHDecCloverLgh *this)
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

uint64_t *CAHDecCloverLgh::freeWorkBuf_PPS(uint64_t *this, void *a2)
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

  return this;
}

uint64_t CAHDecCloverLgh::setVPInstrFifo(uint64_t this, int a2)
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
  *(this + 2944) = a2;
  return this;
}

CAHDec *createCloverHevcDecoder(void *a1)
{
  v2 = operator new(0x2CD8uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDec::CAHDec(v2);
    *v3 = &unk_288668038;
    *(v3 + 32) = a1;
    *(v3 + 114) = 393948;
    *(v3 + 2) = 2524;
    *(v3 + 1) = xmmword_27775BDB0;
    *(v3 + 8) = 2;
    *(v3 + 7) = a1;
    bzero(v3 + 528, 0x2AA0uLL);
  }

  return v3;
}

void CAHDecCloverHevc::~CAHDecCloverHevc(CAHDecCloverHevc *this)
{
  *this = &unk_288668038;
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecCloverHevc::~CAHDecCloverHevc(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecCloverHevc::init(CAHDecCloverHevc *this)
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

uint64_t CAHDecCloverHevc::initPicture(CAHDecCloverHevc *this, int a2, __int16 a3)
{
  v13 = *MEMORY[0x277D85DE8];
  *(this + 114) = 393948;
  *(this + 13) = 0;
  v4 = *(this + 34);
  *(this + 33) = v4;
  if (v4)
  {
    bzero(v4, 0x602DCuLL);
    v7 = *(this + *(this + 13) + 34);
    *(v7 + 16) = a2;
    *(v7 + 24) = 257;
    *(v7 + 26) = a3;
    bzero(*(this + 9), 48 * *(this + 17));
    result = 0;
    *(this + 16) = 0;
    *(this + 2867) = 0;
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

uint64_t CAHDecCloverHevc::populateSlices(CAHDecCloverHevc *this, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = *(this + *(this + 13) + 34) + 2524;
    v5 = a2;
    do
    {
      CAHDecCloverHevc::populateSliceRegisters(this, v4, v3++);
      v4 += 352;
    }

    while (v5 != v3);
  }

  return 0;
}

uint64_t CAHDecCloverHevc::populateSliceRegisters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = *MEMORY[0x277D85DE8];
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
  if (*(v7 + 44) > 1u || !*(v7 + 2344) || *(a1 + 11468) || ((*(**(a1 + 256) + 352))(*(a1 + 256), a3), v27 = *(a1 + 256), *(v27 + 8920)) || (*(a1 + 11468) = 1, *(a2 + 4) |= 0x40000u, !*(v27 + 8744)) && !*(v27 + 8896) && !*(v27 + 8900) || (result = CAHDec::addToPatcherList(a1, (v27 + 8744), 352 * a3 + 2860, 0, 0xFFFFFFFFLL, 8, 0xFFFFFF, 4), !result))
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
        if (!(*(**(a1 + 256) + 440))())
        {
          return 0xFFFFFFFFLL;
        }

        if (!MEMORY[0] && !MEMORY[0x98] && !MEMORY[0x9C] || (result = CAHDec::addToPatcherList(a1, 0, 352 * a3 + 2864, 0, 0xFFFFFFFFLL, 0, -1, 4), !result))
        {
          result = 0;
          *(a2 + 344) = *(v7 + 16) - (*(v7 + 2080) >> 3);
        }

        return result;
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
    goto LABEL_62;
  }

  return result;
}

uint64_t CAHDecCloverHevc::updateCommonRegisters(CAHDecCloverHevc *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecCloverHevc::populateSequenceRegisters(CAHDecCloverHevc *this)
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
    CAHDecTansyHevc::copyScalingList(this, (v1 + 14), *(this + 33) + 536, *(v2 + 3600), v2 + 4448);
  }

  return 0;
}

uint64_t CAHDecCloverHevc::getTileHdrMemInfo(uint64_t result, int a2, void *a3)
{
  v3 = result + 176 * a2;
  *a3 = v3 + 528;
  a3[1] = v3 + 3344;
  return result;
}

__n128 CAHDecCloverHevc::getMVmemInfo(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
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

uint64_t CAHDecCloverHevc::populatePictureRegisters(CAHDecCloverHevc *this)
{
  v289 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(v2 + 8208);
  v4 = *(v2 + 8212);
  v5 = *(v2 + 8168);
  v6 = *(v2 + 8176);
  v7 = *(v2 + 8924);
  v8 = *(v2 + 2960);
  v9 = *(v2 + 2964);
  v271 = *(v2 + 2952);
  v272 = *(v2 + 2948);
  v277 = *(v2 + 8994);
  v273 = *(v2 + 2924);
  v274 = *(v2 + 3548);
  v281 = *(v2 + 2644);
  v278 = *(v2 + 2088);
  v279 = *(v2 + 8312);
  v270 = *(v2 + 8);
  v275 = *(v2 + 8608);
  v276 = *(v2 + 8280);
  v10 = (*(*v2 + 184))(v2);
  v11 = *(this + 32);
  v12 = v10 && (*(v11 + 2756) || *(v11 + 16) == 1);
  v13 = *(this + 33);
  v14 = v5 + 23176 * v3;
  v15 = *(v14 + 4420);
  v16 = v6 + 9856 * v4;
  v17 = *(v14 + 4424);
  v18 = *(v11 + 8424);
  v288[0] = *(v11 + 8408);
  v288[1] = v18;
  v19 = *(v11 + 8456);
  v288[2] = *(v11 + 8440);
  v288[3] = v19;
  memset(v287, 0, sizeof(v287));
  memset(v286, 0, sizeof(v286));
  (*(*v11 + 344))();
  v20 = 0;
  v21 = (*(this + 32) + 8616);
  do
  {
    v290 = vld2q_f64(v21);
    v21 += 4;
    v287[v20] = v290.val[0];
    v286[v20++] = v290.val[1];
  }

  while (v20 != 4);
  *(v13 + 76) = 766509056;
  v22 = (*(**(this + 32) + 232))(*(this + 32));
  if (v22)
  {
    v23 = (*(*(this + 32) + 2980) == 2) << 13;
  }

  else
  {
    v23 = 0;
  }

  v24 = ((v281 != 0) << 12) | ((v281 == 1) << 10) | v23 | *(v13 + 76) & 0xFFFFC11F;
  v25 = v24 & 0xFFFFF500 | 0x2A0;
  v26 = v24 | 0x2B0;
  if (!v12)
  {
    v26 = v25;
  }

  *(v13 + 76) = v26 & 0xFFFFFFF0 | 0xB;
  if ((v7 & 1) != 0 && *(v16 + 53) && *(v14 + 22888) > 1u || (v7 & 2) != 0 && !*(v16 + 53) && *(v16 + 52))
  {
LABEL_25:
    v27 = (v9 == 0) << 27;
    goto LABEL_26;
  }

  if ((v7 & 0x20) != 0 && !*(v16 + 53))
  {
    v27 = 0;
    if (*(v16 + 52) || v8 < 2)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v27 = 0;
LABEL_26:
  v28 = v17 + v15;
  *(v13 + 80) = v27;
  *(v13 + 84) = 0;
  if (*(v16 + 6466))
  {
    v29 = 32 * (*(v16 + 6477) & 1);
    *(v13 + 84) = v29;
    if (*(v16 + 6477))
    {
      v30 = *(v16 + 6484) & 7;
    }

    else
    {
      v30 = 0;
    }

    v32 = v30 | v29;
    *(v13 + 84) = v30 | v29;
    if (v29)
    {
      v33 = (v16 + 6512);
      v34 = (v13 + 92);
      v35 = -1;
      do
      {
        v36 = *v34 & 0xFFFFFFE0 | *v33 & 0x1F;
        *v34 = v36;
        *v34++ = v36 & 0xFFFFFC1F | (32 * (*(v33 - 6) & 0x1F));
        ++v35;
        ++v33;
      }

      while (v35 < v30);
    }

    LOBYTE(v37) = *(v16 + 6477);
    if (v37)
    {
      v37 = *(v16 + 6480);
    }

    v38 = (8 * ((v28 - v37) & 3)) | v32;
    *(v13 + 84) = v38;
    v39 = v38 & 0xFFFFFFBF | ((*(v16 + 6476) & 1) << 6);
    *(v13 + 84) = v39;
    v31 = v39 & 0xFFFFFE7F | ((*(v16 + 6472) & 3) << 7);
  }

  else
  {
    v31 = 8 * (v28 & 3);
  }

  *(v13 + 84) = v31;
  LOBYTE(v40) = *(v16 + 34);
  if (v40)
  {
    v40 = *(v16 + 36);
  }

  v41 = v31 & 0xFFFE7FFF | (((v28 - v40) & 3) << 15);
  *(v13 + 84) = v41;
  v42 = v41 & 0xFFFFF1FF | ((*(v16 + 6460) & 7) << 9);
  *(v13 + 84) = v42;
  v43 = v42 & 0xFFFFEFFF | ((*(v16 + 53) & 1) << 12);
  *(v13 + 84) = v43;
  v44 = v43 & 0xFFFFDFFF | ((*(v16 + 52) & 1) << 13);
  *(v13 + 84) = v44;
  v45 = v44 & 0xFFFFBFFF | ((*(v16 + 51) & 1) << 14);
  *(v13 + 84) = v45;
  v46 = v45 & 0xFFFDFFFF | ((*(v16 + 34) & 1) << 17);
  *(v13 + 84) = v46;
  v47 = v46 & 0xFFFBFFFF | ((*(v16 + 33) & 1) << 18);
  *(v13 + 84) = v47;
  v48 = v47 & 0xFFF7FFFF | ((*(v16 + 32) & 1) << 19);
  *(v13 + 84) = v48;
  v49 = v48 & 0xFFEFFFFF | ((*(v16 + 16) & 1) << 20);
  *(v13 + 84) = v49;
  if ((v26 & 0x2000) != 0)
  {
    v50 = 0;
  }

  else
  {
    v50 = (*(v14 + 22284) != 0) << 21;
  }

  *(v13 + 84) = v50 | v49 & 0xFFDFFFFF;
  v51 = *(v13 + 88) & 0xFFFFFFE0 | *(v16 + 44) & 0x1F;
  *(v13 + 88) = v51;
  *(v13 + 88) = v51 & 0xFFFFFC1F | (32 * (*(v16 + 40) & 0x1F));
  if (*(v16 + 252))
  {
    CAHDecTansyHevc::copyScalingList(v22, v13 + 116, *(this + 33) + 1532, *(v14 + 3600), v16 + 256);
  }

  *(v13 + 136) = 0;
  if (v9)
  {
    v52 = 7340032;
  }

  else
  {
    v52 = 3145728;
  }

  *(v13 + 144) = v52;
  if (!*(*(this + 32) + 2892))
  {
    v93 = *(v14 + 3608) - 1;
    *(v13 + 140) = v93;
    v94 = (*(v14 + 3612) << 16) - 0x10000;
    *(v13 + 140) = v94 & 0xFFFF0000 | v93;
    if (*(v14 + 3616))
    {
      if ((*(v13 + 77) & 8) != 0)
      {
        v95 = *(v14 + 3620) * *(v14 + 22852);
        *(v13 + 136) = v95;
        *(v13 + 136) = v95 | ((*(v14 + 22856) * *(v14 + 3628)) << 16);
        v96 = *(v14 + 3608) + ~(*(v14 + 3624) * *(v14 + 22852));
        *(v13 + 140) = v96 | v94;
        *(v13 + 140) = v96 | ((*(v14 + 3612) + ~(*(v14 + 3632) * *(v14 + 22856))) << 16);
      }
    }
  }

  v53 = this + 6160;
  for (i = 148; i != 176; i += 4)
  {
    *(*(this + 33) + i) = 0;
    v55 = *(this + 33);
    v56 = *(v55 + i);
    *(v55 + i) = 0;
    *(*(this + 33) + i) ^= 0xFFFFFFu;
    v57 = *(this + 33);
    v58 = *(v57 + i);
    *(v57 + i) = v56;
    if (*v53 || *(v53 + 38) || *(v53 + 39))
    {
      result = CAHDec::addToPatcherList(this, v53, i, 0, 0xFFFFFFFFLL, 8, v58, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + i + 28) = 0;
    *(*(this + 33) + i + 28) = *(*(this + 33) + i + 28) & 0x800001FF | (((*(this + 2864) >> 9) & 0x3FFFFF) << 9);
    v53 += 176;
  }

  *(*(this + 33) + 204) = 0;
  *(*(this + 33) + 208) = 0;
  *(*(this + 33) + 212) = 0;
  v60 = *(this + 33);
  v61 = *(v60 + 212);
  *(v60 + 212) = 0;
  *(*(this + 33) + 212) ^= 0xFFFFFFu;
  v62 = *(this + 33);
  v63 = *(v62 + 212);
  *(v62 + 212) = v61;
  if (!*(this + 1298) && !*(this + 2634) && !*(this + 2635) || (result = CAHDec::addToPatcherList(this, this + 1298, 212, 0, 0xFFFFFFFFLL, 8, v63, 4), !result))
  {
    if ((*(*(this + 33) + 216) = 0, v64 = *(this + 33), v65 = *(v64 + 216), *(v64 + 216) = 0, *(*(this + 33) + 216) ^= 0xFFFFFFu, v66 = *(this + 33), v67 = *(v66 + 216), *(v66 + 216) = v65, !*(this + 1320)) && !*(this + 2678) && !*(this + 2679) || (result = CAHDec::addToPatcherList(this, this + 1320, 216, 0, 0xFFFFFFFFLL, 8, v67, 4), !result))
    {
      if ((*(*(this + 33) + 220) = 0, v68 = *(this + 33), v69 = *(v68 + 220), *(v68 + 220) = 0, *(*(this + 33) + 220) ^= 0xFFFFFFu, v70 = *(this + 33), v71 = *(v70 + 220), *(v70 + 220) = v69, !*(this + 1342)) && !*(this + 2722) && !*(this + 2723) || (result = CAHDec::addToPatcherList(this, this + 1342, 220, 0, 0xFFFFFFFFLL, 8, v71, 4), !result))
      {
        if ((*(*(this + 33) + 224) = 0, v72 = *(this + 33), v73 = *(v72 + 224), *(v72 + 224) = 0, *(*(this + 33) + 224) ^= 0xFFFFFFu, v74 = *(this + 33), v75 = *(v74 + 224), *(v74 + 224) = v73, !*(this + 1364)) && !*(this + 2766) && !*(this + 2767) || (result = CAHDec::addToPatcherList(this, this + 1364, 224, 0, 0xFFFFFFFFLL, 8, v75, 4), !result))
        {
          if ((*(*(this + 33) + 228) = 0, v76 = *(this + 33), v77 = *(v76 + 228), *(v76 + 228) = 0, *(*(this + 33) + 228) ^= 0xFFFFFFu, v78 = *(this + 33), v79 = *(v78 + 228), *(v78 + 228) = v77, !*(this + 1386)) && !*(this + 2810) && !*(this + 2811) || (result = CAHDec::addToPatcherList(this, this + 1386, 228, 0, 0xFFFFFFFFLL, 8, v79, 4), !result))
          {
            if ((*(*(this + 33) + 232) = 0, v80 = *(this + 33), v81 = *(v80 + 232), *(v80 + 232) = 0, *(*(this + 33) + 232) ^= 0xFFFFFFu, v82 = *(this + 33), v83 = *(v82 + 232), *(v82 + 232) = v81, !*(this + 1408)) && !*(this + 2854) && !*(this + 2855) || (result = CAHDec::addToPatcherList(this, this + 1408, 232, 0, 0xFFFFFFFFLL, 8, v83, 4), !result))
            {
              if ((*(*(this + 33) + 236) = 0, v84 = *(this + 33), v85 = *(v84 + 236), *(v84 + 236) = 0, *(*(this + 33) + 236) ^= 0xFFFFFFu, v86 = *(this + 33), v87 = *(v86 + 236), *(v86 + 236) = v85, !*(this + 924)) && !*(this + 1886) && !*(this + 1887) || (result = CAHDec::addToPatcherList(this, this + 924, 236, 0, 0xFFFFFFFFLL, 8, v87, 4), !result))
              {
                if ((*(*(this + 33) + 240) = 0, v88 = *(this + 33), v89 = *(v88 + 240), *(v88 + 240) = 0, *(*(this + 33) + 240) ^= 0xFFFFFFu, v90 = *(this + 33), v91 = *(v90 + 240), *(v90 + 240) = v89, v92 = (this + 176 * v279 + 7568), !*v92) && !*(this + 44 * v279 + 1930) && !*(this + 44 * v279 + 1931) || (result = CAHDec::addToPatcherList(this, v92, 240, 0, 0xFFFFFFFFLL, 8, v91, 4), !result))
                {
                  *(*(this + 33) + 244) = 0;
                  *(*(this + 33) + 248) = 0;
                  *(*(this + 33) + 252) = 0;
                  *(*(this + 33) + 256) = 0;
                  v97 = *(this + 33);
                  if (*(*(this + 32) + 2648) == 1)
                  {
                    v98 = *(v97 + 248);
                    *(v97 + 248) = 0;
                    *(*(this + 33) + 248) ^= 0xFFFFFFu;
                    v99 = *(this + 33);
                    v100 = *(v99 + 248);
                    *(v99 + 248) = v98;
                    v102 = (v278 + 8);
                    v101 = *(v278 + 8);
                    if (v277)
                    {
                      if (v101 || *(v278 + 160) || *(v278 + 164))
                      {
                        result = CAHDec::addToPatcherList(this, (v278 + 8), 248, *(v278 + 68), 0xFFFFFFFFLL, 8, v100, 4);
                        if (result)
                        {
                          return result;
                        }
                      }

                      v103 = *(this + 33);
                      v104 = *(v103 + 244);
                      *(v103 + 244) = 0;
                      *(*(this + 33) + 244) ^= 0xFFFFFFu;
                      v105 = *(this + 33);
                      v106 = *(v105 + 244);
                      *(v105 + 244) = v104;
                      if (*v102 || *(v278 + 160) || *(v278 + 164))
                      {
                        result = CAHDec::addToPatcherList(this, v102, 244, *(v278 + 80), 0xFFFFFFFFLL, 8, v106, 4);
                        if (result)
                        {
                          return result;
                        }
                      }

                      if (!v273)
                      {
                        goto LABEL_143;
                      }

                      v107 = *(this + 33);
                      v108 = *(v107 + 256);
                      *(v107 + 256) = 0;
                      *(*(this + 33) + 256) ^= 0xFFFFFFu;
                      v109 = *(this + 33);
                      v110 = *(v109 + 256);
                      *(v109 + 256) = v108;
                      if (*v276 || *(v276 + 152) || *(v276 + 156))
                      {
                        result = CAHDec::addToPatcherList(this, v276, 256, *(v276 + 56), 0xFFFFFFFFLL, 8, v110, 4);
                        if (result)
                        {
                          return result;
                        }
                      }

                      v111 = *(this + 33);
                      v112 = *(v111 + 252);
                      *(v111 + 252) = 0;
                      *(*(this + 33) + 252) ^= 0xFFFFFFu;
                      v113 = *(this + 33);
                      v114 = *(v113 + 252);
                      *(v113 + 252) = v112;
                      if (!*v276 && !*(v276 + 152) && !*(v276 + 156))
                      {
                        goto LABEL_143;
                      }

                      v115 = v276;
                      v116 = *(v276 + 68);
                      v117 = this;
                    }

                    else
                    {
                      if (v101 || *(v278 + 160) || *(v278 + 164))
                      {
                        result = CAHDec::addToPatcherList(this, (v278 + 8), 248, *(v278 + 60), 0xFFFFFFFFLL, 8, v100, 4);
                        if (result)
                        {
                          return result;
                        }
                      }

                      v135 = *(this + 33);
                      v136 = *(v135 + 256);
                      *(v135 + 256) = 0;
                      *(*(this + 33) + 256) ^= 0xFFFFFFu;
                      v137 = *(this + 33);
                      v138 = *(v137 + 256);
                      *(v137 + 256) = v136;
                      if (*v102 || *(v278 + 160) || *(v278 + 164))
                      {
                        result = CAHDec::addToPatcherList(this, v102, 256, *(v278 + 64), 0xFFFFFFFFLL, 8, v138, 4);
                        if (result)
                        {
                          return result;
                        }
                      }

                      v139 = *(this + 33);
                      v140 = *(v139 + 244);
                      *(v139 + 244) = 0;
                      *(*(this + 33) + 244) ^= 0xFFFFFFu;
                      v141 = *(this + 33);
                      v142 = *(v141 + 244);
                      *(v141 + 244) = v140;
                      if (*v102 || *(v278 + 160) || *(v278 + 164))
                      {
                        result = CAHDec::addToPatcherList(this, v102, 244, *(v278 + 72), 0xFFFFFFFFLL, 8, v142, 4);
                        if (result)
                        {
                          return result;
                        }
                      }

                      v143 = *(this + 33);
                      v144 = *(v143 + 252);
                      *(v143 + 252) = 0;
                      *(*(this + 33) + 252) ^= 0xFFFFFFu;
                      v145 = *(this + 33);
                      v114 = *(v145 + 252);
                      *(v145 + 252) = v144;
                      if (!*v102 && !*(v278 + 160) && !*(v278 + 164))
                      {
                        goto LABEL_143;
                      }

                      v116 = *(v278 + 76);
                      v117 = this;
                      v115 = (v278 + 8);
                    }

                    v134 = 252;
                  }

                  else
                  {
                    v118 = *(v97 + 244);
                    *(v97 + 244) = 0;
                    *(*(this + 33) + 244) ^= 0xFFFFFFu;
                    v119 = *(this + 33);
                    v120 = *(v119 + 244);
                    *(v119 + 244) = v118;
                    v121 = (this + 176 * v279 + 528);
                    if (*v121 || *(this + 44 * v279 + 170) || *(this + 44 * v279 + 171))
                    {
                      result = CAHDec::addToPatcherList(this, v121, 244, 0, 0xFFFFFFFFLL, 8, v120, 4);
                      if (result)
                      {
                        return result;
                      }
                    }

                    v122 = *(this + 33);
                    v123 = *(v122 + 248);
                    *(v122 + 248) = 0;
                    *(*(this + 33) + 248) ^= 0xFFFFFFu;
                    v124 = *(this + 33);
                    v125 = *(v124 + 248);
                    *(v124 + 248) = v123;
                    if (*(v278 + 8) || *(v278 + 160) || *(v278 + 164))
                    {
                      result = CAHDec::addToPatcherList(this, (v278 + 8), 248, *(v278 + 60), 0xFFFFFFFFLL, 8, v125, 4);
                      if (result)
                      {
                        return result;
                      }
                    }

                    v126 = *(this + 33);
                    v127 = *(v126 + 252);
                    *(v126 + 252) = 0;
                    *(*(this + 33) + 252) ^= 0xFFFFFFu;
                    v128 = *(this + 33);
                    v129 = *(v128 + 252);
                    *(v128 + 252) = v127;
                    v130 = (this + 176 * v279 + 3344);
                    if (*v130 || *(this + 44 * v279 + 874) || *(this + 44 * v279 + 875))
                    {
                      result = CAHDec::addToPatcherList(this, v130, 252, 0, 0xFFFFFFFFLL, 8, v129, 4);
                      if (result)
                      {
                        return result;
                      }
                    }

                    v131 = *(this + 33);
                    v132 = *(v131 + 256);
                    *(v131 + 256) = 0;
                    *(*(this + 33) + 256) ^= 0xFFFFFFu;
                    v133 = *(this + 33);
                    v114 = *(v133 + 256);
                    *(v133 + 256) = v132;
                    if (!*(v278 + 8) && !*(v278 + 160) && !*(v278 + 164))
                    {
                      goto LABEL_143;
                    }

                    v116 = *(v278 + 64);
                    v117 = this;
                    v115 = (v278 + 8);
                    v134 = 256;
                  }

                  result = CAHDec::addToPatcherList(v117, v115, v134, v116, 0xFFFFFFFFLL, 8, v114, 4);
                  if (result)
                  {
                    return result;
                  }

LABEL_143:
                  if (!(*(v13 + 76) & 0x2000 | v275))
                  {
                    *(v13 + 76) |= 0x2000u;
                    *(this + v279 + 116) = 1;
                    *(*(this + 33) + 260) = 0;
                    goto LABEL_207;
                  }

                  *(this + v279 + 116) = 0;
                  *(*(this + 33) + 260) = 0;
                  if (!v275)
                  {
LABEL_207:
                    *(*(this + 33) + 420) = 0;
                    *(*(this + 33) + 424) = 0;
                    *(*(this + 33) + 428) = 0;
                    *(*(this + 33) + 432) = 0;
                    if (!v281)
                    {
                      goto LABEL_268;
                    }

                    v207 = *(this + 32);
                    if (v272 && v271 == 2)
                    {
                      v208 = *(*(v207 + 8248) + 60);
                      v209 = *(this + 33);
                      v210 = *(v209 + 420);
                      *(v209 + 420) = 0;
                      *(*(this + 33) + 420) ^= 0xFFFFFFu;
                      v211 = *(this + 33);
                      v212 = *(v211 + 420);
                      *(v211 + 420) = v210;
                      v213 = *(*(this + 32) + 8248);
                      if (*v213 || *(v213 + 152) || *(v213 + 156))
                      {
                        result = CAHDec::addToPatcherList(this, v213, 420, v208, 0xFFFFFFFFLL, 8, v212, 4);
                        if (result)
                        {
                          return result;
                        }
                      }

                      v214 = *(this + 33);
                      v215 = *(v214 + 428);
                      *(v214 + 428) = 0;
                      *(*(this + 33) + 428) ^= 0xC0000000;
                      v216 = *(this + 33);
                      v217 = *(v216 + 428);
                      *(v216 + 428) = v215;
                      v218 = *(*(this + 32) + 8248);
                      if (*v218 || *(v218 + 152) || *(v218 + 156))
                      {
                        result = CAHDec::addToPatcherList(this, v218, 428, v208, 192, 6, v217, 4);
                        if (result)
                        {
                          return result;
                        }
                      }

                      if (v273)
                      {
                        v219 = *(v276 + 56);
                        v220 = *(this + 33);
                        v221 = *(v220 + 424);
                        *(v220 + 424) = 0;
                        *(*(this + 33) + 424) ^= 0xFFFFFFu;
                        v222 = *(this + 33);
                        v223 = *(v222 + 424);
                        *(v222 + 424) = v221;
                        if (*v276 || *(v276 + 152) || *(v276 + 156))
                        {
                          result = CAHDec::addToPatcherList(this, v276, 424, v219, 0xFFFFFFFFLL, 8, v223, 4);
                          if (result)
                          {
                            return result;
                          }
                        }

                        v224 = *(this + 33);
                        v225 = *(v224 + 432);
                        *(v224 + 432) = 0;
                        *(*(this + 33) + 432) ^= 0xC0000000;
                        v226 = *(this + 33);
                        v227 = *(v226 + 432);
                        *(v226 + 432) = v225;
                        if (*v276 || *(v276 + 152) || *(v276 + 156))
                        {
                          result = CAHDec::addToPatcherList(this, v276, 432, v219, 192, 6, v227, 4);
                          if (result)
                          {
                            return result;
                          }
                        }
                      }

                      if (v270)
                      {
                        *(*(this + 33) + 428) = *(*(this + 33) + 428) & 0xFFFFC003 | (4 * ((*(*(*(this + 32) + 8248) + 84) >> 6) & 0xFFF));
                        if (!v273)
                        {
                          goto LABEL_268;
                        }

                        v228 = v276;
                        goto LABEL_230;
                      }

                      if (!CAHDecCloverHevc::getSWRStride(this, *(v13 + 140) - *(v13 + 136) + 1, *(v14 + 3636), *(v14 + 3640), *(v14 + 22852)))
                      {
                        *(*(this + 33) + 428) = *(*(this + 33) + 428) & 0xFFFFC003 | (4 * ((*(this + 2868) >> 6) & 0xFFF));
                        if (!v273)
                        {
                          goto LABEL_268;
                        }

                        goto LABEL_266;
                      }

                      return 0xFFFFFFFFLL;
                    }

                    v230 = *(v207 + 2892);
                    if (*(v207 + 2892))
                    {
                      v231 = *(v207 + 2904);
                      v230 = *(v207 + 2908);
                    }

                    else
                    {
                      v231 = 0;
                    }

                    v232 = *(v207 + 8248);
                    v233 = *(v232 + 52);
                    v234 = v233 + v231;
                    if (__CFADD__(v233, v231))
                    {
                      v235 = 1;
                    }

                    else
                    {
                      v236 = *(v232 + 56);
                      v237 = v236 + v230;
                      if (!__CFADD__(v236, v230))
                      {
                        v242 = *(this + 33);
                        v243 = *(v242 + 420);
                        *(v242 + 420) = 0;
                        *(*(this + 33) + 420) ^= 0xFFFFFFu;
                        v244 = *(this + 33);
                        v245 = *(v244 + 420);
                        *(v244 + 420) = v243;
                        v246 = *(*(this + 32) + 8248);
                        if (*v246 || *(v246 + 152) || *(v246 + 156))
                        {
                          result = CAHDec::addToPatcherList(this, v246, 420, v234, 0xFFFFFFFFLL, 8, v245, 4);
                          if (result)
                          {
                            return result;
                          }
                        }

                        v247 = *(this + 33);
                        v248 = *(v247 + 424);
                        *(v247 + 424) = 0;
                        *(*(this + 33) + 424) ^= 0xFFFFFFu;
                        v249 = *(this + 33);
                        v250 = *(v249 + 424);
                        *(v249 + 424) = v248;
                        v251 = *(*(this + 32) + 8248);
                        if (*v251 || *(v251 + 152) || *(v251 + 156))
                        {
                          result = CAHDec::addToPatcherList(this, v251, 424, v237, 0xFFFFFFFFLL, 8, v250, 4);
                          if (result)
                          {
                            return result;
                          }
                        }

                        v252 = *(this + 33);
                        v253 = *(v252 + 428);
                        *(v252 + 428) = 0;
                        *(*(this + 33) + 428) ^= 0xC0000000;
                        v254 = *(this + 33);
                        v255 = *(v254 + 428);
                        *(v254 + 428) = v253;
                        v256 = *(*(this + 32) + 8248);
                        if (*v256 || *(v256 + 152) || *(v256 + 156))
                        {
                          result = CAHDec::addToPatcherList(this, v256, 428, v234, 192, 6, v255, 4);
                          if (result)
                          {
                            return result;
                          }
                        }

                        v257 = *(this + 33);
                        v258 = *(v257 + 432);
                        *(v257 + 432) = 0;
                        *(*(this + 33) + 432) ^= 0xC0000000;
                        v259 = *(this + 33);
                        v260 = *(v259 + 432);
                        *(v259 + 432) = v258;
                        v261 = *(*(this + 32) + 8248);
                        if (*v261 || *(v261 + 152) || *(v261 + 156))
                        {
                          result = CAHDec::addToPatcherList(this, v261, 432, v237, 192, 6, v260, 4);
                          if (result)
                          {
                            return result;
                          }
                        }

                        if (v270)
                        {
                          *(*(this + 33) + 428) = *(*(this + 33) + 428) & 0xFFFFC003 | (4 * ((*(*(*(this + 32) + 8248) + 76) >> 6) & 0xFFF));
                          v228 = *(*(this + 32) + 8248);
LABEL_230:
                          v229 = (v228 + 80);
LABEL_267:
                          *(*(this + 33) + 432) = *(*(this + 33) + 432) & 0xFFFF8003 | (4 * ((*v229 >> 6) & 0x1FFF));
LABEL_268:
                          if (*(v16 + 52))
                          {
                            v262 = 0;
                            v263 = *(v16 + 56) + 1;
                            v264 = *(this + 33);
                            *(v264 + 436) = v263;
                            do
                            {
                              *(v264 + 440 + 2 * v262) = *(v16 + 9676 + 4 * v262);
                              v265 = v262++ >= v263;
                            }

                            while (!v265);
                            v266 = 0;
                            v267 = *(v16 + 60) + 1;
                            *(v264 + 438) = v267;
                            v268 = v264 + 482;
                            do
                            {
                              result = 0;
                              *(v268 + 2 * v266) = *(v16 + 9760 + 4 * v266);
                              v265 = v266++ >= v267;
                            }

                            while (!v265);
                          }

                          else
                          {
                            result = 0;
                            v269 = *(this + 33);
                            *(v269 + 436) = 65537;
                            *(v269 + 440) = 0;
                            *(v269 + 442) = *(v14 + 22880);
                            *(v269 + 482) = 0;
                            *(v269 + 484) = *(v14 + 22888);
                          }

                          return result;
                        }

                        if (!CAHDecCloverHevc::getSWRStride(this, *(v13 + 140) - *(v13 + 136) + 1, *(v14 + 3636), *(v14 + 3640), *(v14 + 22852)))
                        {
                          *(*(this + 33) + 428) = *(*(this + 33) + 428) & 0xFFFFC003 | (4 * ((*(this + 2868) >> 6) & 0xFFF));
LABEL_266:
                          v229 = (this + 11476);
                          goto LABEL_267;
                        }

                        return 0xFFFFFFFFLL;
                      }

                      v235 = 2;
                    }

                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      *&buf[4] = "populatePictureRegisters";
                      v284 = 1024;
                      v285 = v235;
                      v238 = MEMORY[0x277D86220];
                      v239 = "AppleAVD: %s(): failKind = %d";
                      v240 = buf;
                      v241 = 18;
LABEL_242:
                      _os_log_impl(&dword_277606000, v238, OS_LOG_TYPE_DEFAULT, v239, v240, v241);
                    }

                    return 0xFFFFFFFFLL;
                  }

                  v146 = 0;
                  v147 = v288;
                  v148 = v287;
                  v280 = v286;
                  while (1)
                  {
                    v149 = *v147;
                    if (!*v147 || !*(v149 + 48))
                    {
                      return 0xFFFFFFFFLL;
                    }

                    v150 = *(v149 + 44);
                    if ((*(**(this + 32) + 184))(*(this + 32)))
                    {
                      v151 = *(this + 32);
                      if (v151[689])
                      {
                        *buf = 0;
                        if (((*(*v151 + 312))(v151, v150, buf) & 1) == 0)
                        {
                          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                          {
                            return 0xFFFFFFFFLL;
                          }

                          v282 = 0;
                          v238 = MEMORY[0x277D86220];
                          v239 = "AppleAVD: decodeGetRenderTargetRef RETURNED ERROR\n";
                          v240 = &v282;
                          v241 = 2;
                          goto LABEL_242;
                        }

                        *(v149 + 48) = *buf + 8;
                      }
                    }

                    *(*(this + 33) + v146 + 260) = 0;
                    *(*(this + 33) + v146 + 260) = *(*(this + 33) + v146 + 260) & 0xFFFFFFF | ((v275 << 28) - 0x10000000);
                    *(*(this + 33) + v146 + 260) &= 0xF3FFFFFF;
                    *(*(this + 33) + v146 + 260) = v274 - *(v149 + 12);
                    *(*(this + 33) + v146 + 260) = *(*(this + 33) + v146 + 260) & 0xFFFEFFFF | ((*(v149 + 20) == 2) << 16);
                    *(*(this + 33) + v146 + 292) = 0;
                    *(*(this + 33) + v146 + 324) = 0;
                    *(*(this + 33) + v146 + 356) = 0;
                    *(*(this + 33) + v146 + 388) = 0;
                    v152 = *(this + 33);
                    if (*(*(this + 32) + 2648) == 1)
                    {
                      v153 = v146 + 324;
                      v154 = v152 + v146;
                      v155 = *(v154 + 324);
                      *(v154 + 324) = 0;
                      *(*(this + 33) + v146 + 324) ^= 0xFFFFFFu;
                      v156 = *(this + 33) + v146;
                      v157 = *(v156 + 324);
                      *(v156 + 324) = v155;
                      v158 = *(v149 + 48);
                      v159 = *v158;
                      if (v277)
                      {
                        if (v159 || *(v158 + 38) || *(v158 + 39))
                        {
                          result = CAHDec::addToPatcherList(this, v158, v153, *(v158 + 15), 0xFFFFFFFFLL, 8, v157, 4);
                          if (result)
                          {
                            return result;
                          }
                        }

                        v160 = *(this + 33) + v146;
                        v161 = *(v160 + 292);
                        *(v160 + 292) = 0;
                        *(*(this + 33) + v146 + 292) ^= 0xFFFFFFu;
                        v162 = *(this + 33) + v146;
                        v163 = *(v162 + 292);
                        *(v162 + 292) = v161;
                        v164 = *(v149 + 48);
                        if (*v164 || *(v164 + 152) || *(v164 + 156))
                        {
                          result = CAHDec::addToPatcherList(this, v164, v146 + 292, *(v164 + 72), 0xFFFFFFFFLL, 8, v163, 4);
                          if (result)
                          {
                            return result;
                          }
                        }

                        if (v273)
                        {
                          v165 = *(this + 33) + v146;
                          v166 = *(v165 + 388);
                          *(v165 + 388) = 0;
                          *(*(this + 33) + v146 + 388) ^= 0xFFFFFFu;
                          v167 = *(this + 33) + v146;
                          v168 = *(v167 + 388);
                          *(v167 + 388) = v166;
                          if (*v276 || *(v276 + 152) || *(v276 + 156))
                          {
                            result = CAHDec::addToPatcherList(this, v276, v146 + 388, *(v276 + 56), 0xFFFFFFFFLL, 8, v168, 4);
                            if (result)
                            {
                              return result;
                            }
                          }

                          v169 = *(this + 33) + v146;
                          v170 = *(v169 + 356);
                          *(v169 + 356) = 0;
                          *(*(this + 33) + v146 + 356) ^= 0xFFFFFFu;
                          v171 = *(this + 33) + v146;
                          v172 = *(v171 + 356);
                          *(v171 + 356) = v170;
                          if (*v276 || *(v276 + 152) || *(v276 + 156))
                          {
                            v173 = v146 + 356;
                            v174 = v276;
LABEL_204:
                            v193 = *(v174 + 68);
LABEL_205:
                            result = CAHDec::addToPatcherList(this, v174, v173, v193, 0xFFFFFFFFLL, 8, v172, 4);
                            if (result)
                            {
                              return result;
                            }
                          }
                        }
                      }

                      else
                      {
                        if (v159 || *(v158 + 38) || *(v158 + 39))
                        {
                          result = CAHDec::addToPatcherList(this, v158, v153, *(v158 + 13), 0xFFFFFFFFLL, 8, v157, 4);
                          if (result)
                          {
                            return result;
                          }
                        }

                        v194 = *(this + 33) + v146;
                        v195 = *(v194 + 388);
                        *(v194 + 388) = 0;
                        *(*(this + 33) + v146 + 388) ^= 0xFFFFFFu;
                        v196 = *(this + 33) + v146;
                        v197 = *(v196 + 388);
                        *(v196 + 388) = v195;
                        v198 = *(v149 + 48);
                        if (*v198 || *(v198 + 152) || *(v198 + 156))
                        {
                          result = CAHDec::addToPatcherList(this, v198, v146 + 388, *(v198 + 56), 0xFFFFFFFFLL, 8, v197, 4);
                          if (result)
                          {
                            return result;
                          }
                        }

                        v199 = *(this + 33) + v146;
                        v200 = *(v199 + 292);
                        *(v199 + 292) = 0;
                        *(*(this + 33) + v146 + 292) ^= 0xFFFFFFu;
                        v201 = *(this + 33) + v146;
                        v202 = *(v201 + 292);
                        *(v201 + 292) = v200;
                        v203 = *(v149 + 48);
                        if (*v203 || *(v203 + 152) || *(v203 + 156))
                        {
                          result = CAHDec::addToPatcherList(this, v203, v146 + 292, *(v203 + 64), 0xFFFFFFFFLL, 8, v202, 4);
                          if (result)
                          {
                            return result;
                          }
                        }

                        v204 = *(this + 33) + v146;
                        v205 = *(v204 + 356);
                        *(v204 + 356) = 0;
                        *(*(this + 33) + v146 + 356) ^= 0xFFFFFFu;
                        v206 = *(this + 33) + v146;
                        v172 = *(v206 + 356);
                        *(v206 + 356) = v205;
                        v174 = *(v149 + 48);
                        if (*v174 || *(v174 + 152) || *(v174 + 156))
                        {
                          v173 = v146 + 356;
                          goto LABEL_204;
                        }
                      }
                    }

                    else
                    {
                      v175 = v152 + v146;
                      v176 = *(v175 + 292);
                      *(v175 + 292) = 0;
                      *(*(this + 33) + v146 + 292) ^= 0xFFFFFFu;
                      v177 = *(this + 33) + v146;
                      v178 = *(v177 + 292);
                      *(v177 + 292) = v176;
                      v179 = *v148;
                      if (**v148 || *(v179 + 38) || *(v179 + 39))
                      {
                        result = CAHDec::addToPatcherList(this, v179, v146 + 292, 0, 0xFFFFFFFFLL, 8, v178, 4);
                        if (result)
                        {
                          return result;
                        }
                      }

                      v180 = *(this + 33) + v146;
                      v181 = *(v180 + 324);
                      *(v180 + 324) = 0;
                      *(*(this + 33) + v146 + 324) ^= 0xFFFFFFu;
                      v182 = *(this + 33) + v146;
                      v183 = *(v182 + 324);
                      *(v182 + 324) = v181;
                      v184 = *(v149 + 48);
                      if (*v184 || *(v184 + 152) || *(v184 + 156))
                      {
                        result = CAHDec::addToPatcherList(this, v184, v146 + 324, *(v184 + 52), 0xFFFFFFFFLL, 8, v183, 4);
                        if (result)
                        {
                          return result;
                        }
                      }

                      v185 = *(this + 33) + v146;
                      v186 = *(v185 + 356);
                      *(v185 + 356) = 0;
                      *(*(this + 33) + v146 + 356) ^= 0xFFFFFFu;
                      v187 = *(this + 33) + v146;
                      v188 = *(v187 + 356);
                      *(v187 + 356) = v186;
                      v189 = *v280;
                      if (**v280 || *(v189 + 38) || *(v189 + 39))
                      {
                        result = CAHDec::addToPatcherList(this, v189, v146 + 356, 0, 0xFFFFFFFFLL, 8, v188, 4);
                        if (result)
                        {
                          return result;
                        }
                      }

                      v190 = *(this + 33) + v146;
                      v191 = *(v190 + 388);
                      *(v190 + 388) = 0;
                      *(*(this + 33) + v146 + 388) ^= 0xFFFFFFu;
                      v192 = *(this + 33) + v146;
                      v172 = *(v192 + 388);
                      *(v192 + 388) = v191;
                      v174 = *(v149 + 48);
                      if (*v174 || *(v174 + 152) || *(v174 + 156))
                      {
                        v173 = v146 + 388;
                        v193 = *(v174 + 56);
                        goto LABEL_205;
                      }
                    }

                    ++v147;
                    v146 += 4;
                    ++v148;
                    ++v280;
                    if (4 * v275 == v146)
                    {
                      goto LABEL_207;
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

uint64_t CAHDecCloverHevc::getSWRStride(CAHDecCloverHevc *this, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(*(this + 32) + 2644);
  *(this + 1434) = 0;
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
        *(this + 2868) = (((2 * ((2863311531u * (a2 + 2)) >> 32)) & 0xFFFFFFFC) + 63) & 0xFFFFFFC0;
        v9 = (2 * ((2863311531u * (2 * a2 / a5 + 5)) >> 32)) & 0xFFFFFFF8;
LABEL_21:
        *(this + 2869) = (v9 + 63) & 0xFFFFFFC0;
        return v5;
      }

      goto LABEL_15;
    }

    v5 = 0;
    *(this + 2868) = (a2 + 63) & 0xFFFFFFC0;
    v10 = 2 * a2;
LABEL_19:
    v9 = v10 / a5;
    goto LABEL_21;
  }

  if (v8 == 4)
  {
    v5 = 0;
    *(this + 2868) = (((2 * ((3435973837u * (a2 + 4)) >> 32)) & 0xFFFFFFF8) + 63) & 0xFFFFFFC0;
    v9 = (2 * ((3435973837u * (2 * a2 / a5 + 9)) >> 32)) & 0xFFFFFFF0;
    goto LABEL_21;
  }

  if (v8 == 8)
  {
    v5 = 0;
    *(this + 2868) = (2 * a2 + 63) & 0xFFFFFFC0;
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

uint64_t CAHDecCloverHevc::getTileIdxAbove(CAHDecCloverHevc *this, unsigned int a2)
{
  v2 = *(*(this + 33) + 436);
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

uint64_t CAHDecCloverHevc::populateAvdWork(CAHDecCloverHevc *this, unsigned int a2)
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
  v98 = v4 + 213724;
  v118[0] = v4 + 213724;
  v118[1] = v4 + 303836;
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

  v96 = *(v4 + 438) * *(v4 + 436);
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

  v81 = v4 + 303836;
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
    v21 = v4 + 213724;
  }

  else
  {
    v21 = v4 + 213724;
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
  v95 = v4 + 2868;
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
      v97 = 352 * v22;
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
              if (v35 >= *(*(v2 + 33) + 2 * (HIDWORD(v85) + 1) + 482))
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
              *(&buf[1] + 6) = 1499;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
              v50 = v114;
            }

            v51 = v24 + v50;
            v2 = this;
            result = CAHDec::addToPatcherList(this, v49, 44 * v107 + 213744, v51, 0xFFFFFFFFLL, 0, -1, 4);
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
              *(&buf[1] + 6) = 1429;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
              v44 = v114;
            }

            result = CAHDec::addToPatcherList(v2, v43, 44 * v107 + 213744, v24 + v44, 0xFFFFFFFFLL, 0, -1, 4);
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
            v60 = *(v59 + 436);
            HIDWORD(v85) = v52 / v60;
            v90 = *(v59 + 2 * (v52 % v60) + 440);
            LODWORD(v85) = *(v59 + 2 * (v52 / v60) + 482);
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
          v63 = *(*(v2 + 33) + 436);
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
    *(&buf[1] + 6) = 1589;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v71 = v114;
  }

  v2 = this;
  result = CAHDec::addToPatcherList(this, v70, 44 * v107 + 213744, v24 + v71, 0xFFFFFFFFLL, 0, -1, 4);
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
      v73 = *(v82 + 213732) + 1;
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
    *(v79 + 32) = 213724;
    *(v79 + 36) = 303836;
  }

  return result;
}

uint64_t CAHDecCloverHevc::allocWorkBuf_SPS(CAHDecCloverHevc *this, _DWORD *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a2 + 5120;
  v5 = a2[902];
  v6 = a2[903];
  v7 = a2[900];
  v8 = a2[5713];
  v9 = a2[5714];
  if (v5 < (*(*this + 104))(this) || (v10 = a2[903], v10 < (*(*this + 112))(this)) || (v11 = a2[909], v11 > (*(*this + 120))(this) - 8) || (v12 = a2[910], v12 > (*(*this + 128))(this) - 8) || (v19 = v4[598], v19 - 16 > 0x30) || ((1 << (v19 - 16)) & 0x1000000010001) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = a2[902];
      v14 = a2[903];
      v15 = a2[909];
      v16 = a2[910];
      v17 = v4[598];
      v33 = 136316418;
      v34 = "allocWorkBuf_SPS";
      v35 = 1024;
      v36 = v13;
      v37 = 1024;
      *v38 = v14;
      *&v38[4] = 1024;
      *&v38[6] = v15;
      v39 = 1024;
      v40 = v16;
      v41 = 1024;
      v42 = v17;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): unsupported bit stream w %d h %d bd %d %d CtbSizeY %d\n", &v33, 0x2Au);
    }

    return 0xFFFFFFFFLL;
  }

  v20 = (v6 + 7) >> 3;
  v21 = ((2 * (v5 + 7)) & 0xFFFFFFE0) + 32;
  *(this + 2862) = v21;
  *(this + 2860) = (((v20 + 8) >> 3) * v21 + 127) & 0xFFFFFF80;
  v22 = ((16 * ((((v5 + 7) >> 2) & 0x3FFFFFFE) / v8)) & 0xFFFFFFE0) + 32;
  *(this + 2863) = v22;
  v23 = (((v20 / v9 + 8) >> 3) * v22 + 127) & 0xFFFFFF80;
  if (!v7)
  {
    v23 = 0;
  }

  *(this + 2861) = v23;
  v24 = (v19 & 0xFFFFFFF0) * (v19 >> 4) * v4[600];
  *(this + 2866) = v24;
  *(this + 2865) = v4[602] * v24;
  if (*(*(this + 32) + 2648))
  {
LABEL_19:
    v29 = (this + 7568);
    v30 = 16;
    while (1)
    {
      v31 = *(this + 2865);
      if (v31)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), v29, v31, 7, 1, 0))
        {
          break;
        }
      }

      result = 0;
      v29 += 11;
      if (!--v30)
      {
        return result;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v33 = 136315650;
    v34 = "allocWorkBuf_SPS";
    v35 = 1024;
    v36 = 1791;
    v37 = 2080;
    *v38 = "MvColo";
    v32 = MEMORY[0x277D86220];
  }

  else
  {
    v25 = (this + 3344);
    v26 = 16;
    while (1)
    {
      v27 = *(this + 2860);
      if (v27 && CAVDDecoder::allocAVDMem(*(this + 32), v25 - 176, v27, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_31;
        }

        v33 = 136315650;
        v34 = "allocWorkBuf_SPS";
        v35 = 1024;
        v36 = 1779;
        v37 = 2080;
        *v38 = "HdrY";
        v32 = MEMORY[0x277D86220];
        goto LABEL_30;
      }

      v28 = *(this + 2861);
      if (v28)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), v25, v28, 7, 1, 0))
        {
          break;
        }
      }

      v25 += 11;
      if (!--v26)
      {
        goto LABEL_19;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v33 = 136315650;
    v34 = "allocWorkBuf_SPS";
    v35 = 1024;
    v36 = 1780;
    v37 = 2080;
    *v38 = "HdrC";
    v32 = MEMORY[0x277D86220];
  }

LABEL_30:
  _os_log_impl(&dword_277606000, v32, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v33, 0x1Cu);
LABEL_31:
  (*(*this + 144))(this);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecCloverHevc::allocWorkBuf_PPS(CAHDecCloverHevc *this, _DWORD *a2, _DWORD *a3, void *a4)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = (a2[909] + 9) & 0xFFFFFFFE;
  v6 = (a2[910] + 9) & 0xFFFFFFFE;
  if (v5 <= v6)
  {
    v7 = (a2[910] + 9) & 0xFFFFFFFE;
  }

  else
  {
    v7 = (a2[909] + 9) & 0xFFFFFFFE;
  }

  v8 = a2[900];
  if (*(a3 + 52))
  {
    v9 = 0;
    v10 = 0;
    v11 = a3 + 17;
    v12 = a2[902];
    v13 = (a3[14] + 1);
    do
    {
      v14 = *v11++;
      v15 = a2[5718] + a2[5718] * v14;
      if (v15 + v10 > v12)
      {
        v15 = v12 - v10;
      }

      if (v9 <= v15)
      {
        v9 = v15;
      }

      v10 += v15;
      --v13;
    }

    while (v13);
  }

  else
  {
    v12 = a2[902];
    v9 = v12;
  }

  v16 = 0;
  v17 = *(this + 32);
  if (v9 >= -15)
  {
    v18 = v9 + 15;
  }

  else
  {
    v18 = v9 + 30;
  }

  v19 = a3[14];
  if (*(a3 + 52))
  {
    v20 = a3[14];
  }

  else
  {
    v20 = 0;
  }

  v55 = v20;
  if (v8 == 3)
  {
    v21 = 48;
  }

  else
  {
    v21 = 32;
  }

  if (v8 == 3)
  {
    v22 = 176;
  }

  else
  {
    v22 = 128;
  }

  if (!v8)
  {
    v21 = 16;
  }

  v23 = (v21 * v7) >> 3;
  if (!v8)
  {
    v22 = 80;
  }

  v54 = v22;
  v24 = (v18 >> 4) * v23;
  v25 = 0;
  v26 = 0;
  if (*(a3 + 52) && v19)
  {
    v27 = 0;
    v26 = 0;
    v25 = 0;
    v16 = 0;
    v28 = 0;
    if (v8 == 1)
    {
      v29 = 144;
    }

    else
    {
      v29 = 192;
    }

    if (v8 == 1)
    {
      v30 = 24;
    }

    else
    {
      v30 = 32;
    }

    v31 = v8 == 0;
    if (v8)
    {
      v32 = v29;
    }

    else
    {
      v32 = 96;
    }

    v33 = (((v32 * v7) >> 3) + 7) & 0x3FFFFFF8;
    if (v31)
    {
      v34 = 16;
    }

    else
    {
      v34 = v30;
    }

    v35 = v5 - 8;
    v36 = v6 - 8;
    if (v35 <= v36)
    {
      v37 = v36;
    }

    else
    {
      v37 = v35;
    }

    v38 = a3[15];
    v39 = a2[903];
    v41 = *(v17 + 2644) == 1 && v37 != 0;
    do
    {
      v42 = a2[5718] + a2[5718] * a3[v27 + 37];
      if (v42 + v28 > v39)
      {
        v42 = v39 - v28;
      }

      v43 = v42 + 15;
      if (v42 < -15)
      {
        v43 = v42 + 30;
      }

      if (v27)
      {
        v44 = (v43 >> 4) + 1;
      }

      else
      {
        v44 = v43 >> 4;
      }

      v45 = v44 * v33;
      if (v26 <= v45)
      {
        v26 = v45;
      }

      if (v25 <= (36 * (v43 >> 4)))
      {
        v25 = 36 * (v43 >> 4);
      }

      if (v41)
      {
        if (v38 == v27)
        {
          v46 = 23;
        }

        else
        {
          v46 = 15;
        }

        v47 = ((v46 + v42) / 16 * v34) | 6;
        if (v16 <= v47)
        {
          v16 = v47;
        }
      }

      v28 += v42;
      ++v27;
    }

    while (v38 + 1 != v27);
  }

  if (v24 && CAVDDecoder::allocAVDMem(v17, this + 649, v24, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v57 = "allocWorkBuf_PPS";
      v58 = 1024;
      v59 = 1905;
      v60 = 2080;
      v61 = "IpAbove";
      v48 = MEMORY[0x277D86220];
LABEL_98:
      _os_log_impl(&dword_277606000, v48, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", buf, 0x1Cu);
      goto LABEL_99;
    }

    goto LABEL_99;
  }

  if ((v9 + 30) >= 0x1F && CAVDDecoder::allocAVDMem(*(this + 32), this + 462, 20 * (v18 >> 4), 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v57 = "allocWorkBuf_PPS";
      v58 = 1024;
      v59 = 1906;
      v60 = 2080;
      v61 = "MvAboveInfo";
      v48 = MEMORY[0x277D86220];
      goto LABEL_98;
    }

LABEL_99:
    (*(*this + 160))(this, 0);
    return 0xFFFFFFFFLL;
  }

  v49 = ((v54 * v7) >> 3) + 7;
  v50 = v55 + ((v12 + 15) >> 4);
  v51 = v50 * (v49 & 0x3FFFFFF8) + (v19 << 7);
  if (v51 && CAVDDecoder::allocAVDMem(*(this + 32), this + 660, v51, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v57 = "allocWorkBuf_PPS";
      v58 = 1024;
      v59 = 1907;
      v60 = 2080;
      v61 = "LfAbovePix";
      v48 = MEMORY[0x277D86220];
      goto LABEL_98;
    }

    goto LABEL_99;
  }

  v52 = 36 * v50 + (v19 << 7);
  if (v52 && CAVDDecoder::allocAVDMem(*(this + 32), this + 671, v52, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v57 = "allocWorkBuf_PPS";
      v58 = 1024;
      v59 = 1908;
      v60 = 2080;
      v61 = "LfAboveInfo";
      v48 = MEMORY[0x277D86220];
      goto LABEL_98;
    }

    goto LABEL_99;
  }

  if (v26 && CAVDDecoder::allocAVDMem(*(this + 32), this + 682, v26, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v57 = "allocWorkBuf_PPS";
      v58 = 1024;
      v59 = 1909;
      v60 = 2080;
      v61 = "LfLeftPix";
      v48 = MEMORY[0x277D86220];
      goto LABEL_98;
    }

    goto LABEL_99;
  }

  if (v25 && CAVDDecoder::allocAVDMem(*(this + 32), this + 693, v25, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v57 = "allocWorkBuf_PPS";
      v58 = 1024;
      v59 = 1910;
      v60 = 2080;
      v61 = "LfLeftInfo";
      v48 = MEMORY[0x277D86220];
      goto LABEL_98;
    }

    goto LABEL_99;
  }

  if (!v16)
  {
    return 0;
  }

  result = CAVDDecoder::allocAVDMem(*(this + 32), this + 704, v16, 7, 1, 0);
  if (result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v57 = "allocWorkBuf_PPS";
      v58 = 1024;
      v59 = 1911;
      v60 = 2080;
      v61 = "SwLeftPix";
      v48 = MEMORY[0x277D86220];
      goto LABEL_98;
    }

    goto LABEL_99;
  }

  return result;
}

uint64_t CAHDecCloverHevc::freeWorkBuf_SPS(uint64_t this)
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

uint64_t *CAHDecCloverHevc::freeWorkBuf_PPS(uint64_t *this, void *a2)
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

  return this;
}

uint64_t CAHDecCloverHevc::setVPInstrFifo(uint64_t this, int a2)
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
  *(this + 11456) = a2;
  return this;
}

CAHDec *createCloverAvcDecoder(uint64_t a1)
{
  v2 = operator new(0x3EE0uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecCloverAvc::CAHDecCloverAvc(v2, a1);
  }

  return v3;
}

CAHDec *CAHDecCloverAvc::CAHDecCloverAvc(CAHDec *a1, uint64_t a2)
{
  CAHDec::CAHDec(a1);
  *v4 = &unk_288668190;
  *(v4 + 256) = a2;
  *(v4 + 456) = 944 * *(a2 + 7388) + 165440;
  *(v4 + 8) = 1600;
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

void CAHDecCloverAvc::~CAHDecCloverAvc(CAHDecCloverAvc *this)
{
  *this = &unk_288668190;
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecCloverAvc::~CAHDecCloverAvc(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecCloverAvc::init(CAHDecCloverAvc *this)
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

uint64_t CAHDecCloverAvc::initPicture(CAHDecCloverAvc *this, int a2, __int16 a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = 944 * *(*(this + 32) + 7388) + 165440;
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

uint64_t CAHDecCloverAvc::populateSlices(CAHDecCloverAvc *this, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = *(this + *(this + 13) + 34) + 1600;
    v5 = a2;
    do
    {
      CAHDecCloverAvc::populateSliceRegisters(this, v4, v3++);
      v4 += 944;
    }

    while (v5 != v3);
  }

  return 0;
}

uint64_t CAHDecCloverAvc::populateSliceRegisters(uint64_t a1, uint64_t a2, signed int a3)
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
      result = CAHDec::addToPatcherList(a1, buf, 944 * a3 + 2520, 0, 0xFFFFFFFFLL, 8, 0xFFFFFF, 4);
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
      *&buf[14] = 1473;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
      v81 = v88;
    }
  }

  result = CAHDec::addToPatcherList(v85, v80, 944 * v84 + 2532, v81, 0xFFFFFFFFLL, 0, -1, 4);
  if (!result)
  {
LABEL_95:
    result = 0;
    *(a2 + 936) = *(v14 + 16) - (*(v14 + 1436) >> 3);
  }

  return result;
}

uint64_t CAHDecCloverAvc::updateCommonRegisters(CAHDecCloverAvc *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

void CAHDecCloverAvc::copyScalingList(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
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
    v12 = &dword_27775BDF0;
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
    v31 = a6 + (dword_27775BE08[v26] << 6);
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

void CAHDecCloverAvc::AvcSeqScalingListFallBack(uint64_t a1, uint64_t a2)
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
            v4[9] = unk_27775BE70;
            v10 = xmmword_27775BE80;
            v11 = unk_27775BE90;
          }

          else
          {
            v4[8] = avcDefaultInterScalingList8x8;
            v4[9] = unk_27775BE30;
            v10 = xmmword_27775BE40;
            v11 = unk_27775BE50;
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

void CAHDecCloverAvc::AvcPicScalingListFallBack(uint64_t a1, uint64_t a2, uint64_t a3)
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
              *(a3 + v4 - 151) = unk_27775BE70;
              v9 = xmmword_27775BE80;
              v10 = unk_27775BE90;
            }

            else
            {
              *v8 = avcDefaultInterScalingList8x8;
              *(a3 + v4 - 151) = unk_27775BE30;
              v9 = xmmword_27775BE40;
              v10 = unk_27775BE50;
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