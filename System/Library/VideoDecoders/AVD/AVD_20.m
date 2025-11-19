uint64_t calcAvcDpbMaxSize(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 2);
  v3 = (*(a1 + 1558) + 1 + (*(a1 + 1558) + 1) * *(a1 + 1560)) << (*(a1 + 1562) == 0);
  if (v2 > 0x27)
  {
    if (*(a1 + 2) > 0x32u)
    {
      if (v2 - 60 < 3)
      {
        v5 = 696320;
        goto LABEL_39;
      }

      if (v2 - 51 < 2)
      {
        v5 = 184320;
        goto LABEL_39;
      }

      if (v2 == 80)
      {
        v5 = 10485760;
        goto LABEL_39;
      }
    }

    else
    {
      if (v2 - 40 < 2)
      {
        v5 = 0x8000;
        goto LABEL_39;
      }

      if (v2 == 42)
      {
        v5 = 34816;
        goto LABEL_39;
      }

      if (v2 == 50)
      {
        v5 = 110400;
        goto LABEL_39;
      }
    }

    goto LABEL_37;
  }

  if (*(a1 + 2) > 0x14u)
  {
    if (*(a1 + 2) <= 0x1Du)
    {
      if (v2 == 21)
      {
        v5 = 4752;
        goto LABEL_39;
      }

      if (v2 != 22)
      {
        goto LABEL_37;
      }
    }

    else if (v2 != 30)
    {
      if (v2 == 31)
      {
        v5 = 18000;
        goto LABEL_39;
      }

      if (v2 == 32)
      {
        v5 = 20480;
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v5 = 8100;
    goto LABEL_39;
  }

  if (*(a1 + 2) <= 0xBu)
  {
    if (v2 == 10)
    {
      v5 = 396;
      goto LABEL_39;
    }

    if (v2 == 11)
    {
      v5 = 900;
      goto LABEL_39;
    }
  }

  else if (v2 - 12 < 2 || v2 == 20)
  {
    v5 = 2376;
    goto LABEL_39;
  }

LABEL_37:
  v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  v5 = 0;
  if (v6)
  {
    v9 = 136315394;
    v10 = "calcAvcDpbMaxSize";
    v11 = 1024;
    v12 = v2;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Level %d is not defined", &v9, 0x12u);
    v5 = 0;
  }

LABEL_39:
  v7 = v5 / v3;
  if (*(a1 + 1574) && *(a1 + 2202) && v7 <= *(a1 + 2209))
  {
    v7 = *(a1 + 2209);
  }

  if (v7 <= *(a1 + 1556))
  {
    v7 = *(a1 + 1556);
  }

  if (v7 >= 0x17)
  {
    v7 = 23;
  }

  return v7 + 1;
}

uint64_t calcHevcDpbMaxSize(unsigned int *a1)
{
  v1 = a1[16];
  if (v1)
  {
    v2 = a1[903] * a1[902];
    v3 = v1 / 3;
    if (v3 <= 29)
    {
      v10 = 36864;
      if (v3 == 21)
      {
        v11 = 245760;
      }

      else
      {
        v11 = 0;
      }

      if (v3 == 20)
      {
        v12 = 122880;
      }

      else
      {
        v12 = v11;
      }

      v13 = v3 == 10;
    }

    else
    {
      if (v3 <= 0x3E)
      {
        if (((1 << v3) & 0x1C000000000000) != 0)
        {
          v4 = 8912896;
          goto LABEL_32;
        }

        if (((1 << v3) & 0x7000000000000000) != 0)
        {
          v4 = 35651584;
          goto LABEL_32;
        }

        if (((1 << v3) & 0x30000000000) != 0)
        {
          v4 = 2228224;
LABEL_32:
          if (v2 <= v4 >> 2)
          {
            return 16;
          }

          if (v2 <= v4 >> 1)
          {
            return 12;
          }

          if (v2 <= (3 * v4) >> 2)
          {
            return 8;
          }

          return 6;
        }
      }

      v10 = 552960;
      if (v3 == 31)
      {
        v12 = 983040;
      }

      else
      {
        v12 = 0;
      }

      v13 = v3 == 30;
    }

    if (v13)
    {
      v4 = v10;
    }

    else
    {
      v4 = v12;
    }

    goto LABEL_32;
  }

  v5 = &a1[a1[1]];
  v6 = v5[977];
  v7 = v5[913];
  if (v6 <= v7 + 1)
  {
    v6 = v7 + 1;
  }

  if (v5[1041])
  {
    v8 = v5[5729];
    if (v6 <= v8)
    {
      v6 = v8;
    }
  }

  if (v6 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v6;
  }
}

uint64_t parseHevcSps(unsigned __int8 *a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v90 = *MEMORY[0x277D85DE8];
  v12 = operator new(0xB0uLL, MEMORY[0x277D826F0]);
  if (!v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v86 = "parseHevcSps";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): rbsp allocation error", buf, 0xCu);
    }

    v27 = 4294967290;
    goto LABEL_35;
  }

  v13 = v12;
  HEVC_RBSP::HEVC_RBSP(v12);
  v14 = operator new(0x1168uLL, MEMORY[0x277D826F0]);
  v81 = v14;
  if (!v14)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v86 = "parseHevcSps";
      v28 = MEMORY[0x277D86220];
      v29 = "AppleAVD: %s(): vps allocation error";
LABEL_20:
      _os_log_impl(&dword_277606000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 0xCu);
    }

LABEL_21:
    v22 = 0;
    v17 = 0;
LABEL_22:
    v26 = 0;
    v27 = 4294967290;
    goto LABEL_23;
  }

  v74 = a4;
  v15 = v14;
  bzero(v14, 0x1168uLL);
  v16 = operator new[](0x5A880uLL, MEMORY[0x277D826F0]);
  if (!v16)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v86 = "parseHevcSps";
      v28 = MEMORY[0x277D86220];
      v29 = "AppleAVD: %s(): sps allocation error";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v17 = v16;
  v73 = a6;
  v18 = a2 & 0xFFFFFF;
  v80 = &a1[v18];
  v78 = a2 >> 24;
  bzero(v16, 0x5A880uLL);
  *v15 = -1;
  v19 = 3588;
  v20 = 16;
  do
  {
    *(v17 + v19) = -1;
    v19 += 23176;
    --v20;
  }

  while (v20);
  v21 = operator new[](0x9A000uLL, MEMORY[0x277D826F0]);
  if (!v21)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v86 = "parseHevcSps";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): pps allocation error", buf, 0xCu);
    }

    v22 = 0;
    goto LABEL_22;
  }

  v22 = v21;
  bzero(v21, 0x9A000uLL);
  if (v78 > v18)
  {
LABEL_8:
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 136315138;
    *v86 = "parseHevcSps";
    v23 = MEMORY[0x277D86220];
    v24 = "AppleAVD: %s(): cannot find SPS";
    goto LABEL_10;
  }

  if (v78 > 4 || ((1 << v78) & 0x16) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v86 = "parseHevcSps";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ParseHeader unsupported naluLengthSize ", buf, 0xCu);
    }

    v26 = 0;
    v27 = 317;
    goto LABEL_23;
  }

  v67 = a3;
  v68 = 0;
  v71 = 0;
  v72 = 0;
  v34 = 0;
  v75 = 0;
  v76 = 0;
  v69 = 0;
  v70 = 0;
  v35 = a1;
  do
  {
    v36 = *v35;
    if (v78 == 2)
    {
      v36 = v35[1] | (v36 << 8);
      v37 = v35 + 2;
      v38 = v36 + 2;
    }

    else if (v78 == 4)
    {
      v36 = v35[3] | (((v36 << 16) | (v35[1] << 8) | v35[2]) << 8);
      v37 = v35 + 4;
      v38 = v36 + 4;
    }

    else
    {
      v37 = v35 + 1;
      v38 = v36 + 1;
    }

    v79 = v38;
    if (&v37[v36] > v80)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *v86 = "parseHevcSps";
        *&v86[8] = 1024;
        *&v86[10] = v36;
        v87 = 2048;
        *v88 = v37;
        *&v88[8] = 2048;
        v89 = v80;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s NALU too big! %d nal_ptr:%p, buf_end:%p", buf, 0x26u);
      }

      v26 = 0;
      v27 = 318;
      goto LABEL_23;
    }

    HEVC_RBSP::setRBSP(v13, v37, v36);
    if ((HEVC_RBSP::parseNAL(v13, &v82, 0) & 1) == 0)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      *buf = 136315138;
      *v86 = "parseHevcSps";
      v23 = MEMORY[0x277D86220];
      v24 = "AppleAVD: %s(): rbsp parseNAL return error";
LABEL_10:
      v25 = 12;
LABEL_11:
      _os_log_impl(&dword_277606000, v23, OS_LOG_TYPE_DEFAULT, v24, buf, v25);
      goto LABEL_12;
    }

    if (!v84)
    {
      switch(v83)
      {
        case '""':
          v72 = HEVC_RBSP::parsePPS(v13, v22, v17);
          if ((v72 & 0x80000000) == 0)
          {
            LODWORD(v76) = 1;
            goto LABEL_52;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_12;
          }

          *buf = 136315394;
          *v86 = "parseHevcSps";
          *&v86[8] = 1024;
          *&v86[10] = v36;
          v23 = MEMORY[0x277D86220];
          v24 = "AppleAVD: %s parse PPS error ! %d";
          break;
        case '!':
          v40 = HEVC_RBSP::parseSPS(v13, v81, v17, 0, v74);
          if ((v40 & 0x80000000) == 0)
          {
            v41 = v17 + 23176 * v40;
            v42 = *(v41 + 3608);
            if ((v76 & 0x100000000) != 0)
            {
              if (HIDWORD(v71) == v42)
              {
                v43 = *(v41 + 3612);
                if (v71 == v43)
                {
                  v44 = *(v41 + 22872);
                  if (HIDWORD(v70) == v44)
                  {
                    v45 = *(v41 + 3604);
                    if (v70 == v45)
                    {
                      v46 = *(v41 + 3600);
                      if (HIDWORD(v69) == v46)
                      {
                        v47 = *(v41 + 3636);
                        if (v69 == v47)
                        {
                          v77 = v40;
                          v48 = *(v41 + 3640);
                          if (HIDWORD(v68) == v48)
                          {
                            v49 = calcHevcDpbMaxSize((v17 + 23176 * v40));
                            if (v68 == v49)
                            {
                              HIDWORD(v76) = 1;
                              goto LABEL_52;
                            }

                            v66 = v49;
                            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_12;
                            }

                            *buf = 136315906;
                            *v86 = "parseHevcSps";
                            *&v86[8] = 1024;
                            *&v86[10] = v68;
                            v87 = 1024;
                            *v88 = v77;
                            *&v88[4] = 1024;
                            *&v88[6] = v66;
                            v23 = MEMORY[0x277D86220];
                            v24 = "AppleAVD: %s(): maxDpbSize inconsistent. First SPS = %d. Subsequent SPS with sps_id %d = %d";
                          }

                          else
                          {
                            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_12;
                            }

                            *buf = 136315906;
                            *v86 = "parseHevcSps";
                            *&v86[8] = 1024;
                            *&v86[10] = HIDWORD(v68);
                            v87 = 1024;
                            *v88 = v77;
                            *&v88[4] = 1024;
                            *&v88[6] = v48;
                            v23 = MEMORY[0x277D86220];
                            v24 = "AppleAVD: %s(): bit_depth_chroma_minus8 inconsistent. First SPS = %d. Subsequent SPS with sps_id %d = %d";
                          }
                        }

                        else
                        {
                          v65 = v40;
                          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_12;
                          }

                          *buf = 136315906;
                          *v86 = "parseHevcSps";
                          *&v86[8] = 1024;
                          *&v86[10] = v69;
                          v87 = 1024;
                          *v88 = v65;
                          *&v88[4] = 1024;
                          *&v88[6] = v47;
                          v23 = MEMORY[0x277D86220];
                          v24 = "AppleAVD: %s(): bit_depth_luma_minus8 inconsistent. First SPS = %d. Subsequent SPS with sps_id %d = %d";
                        }
                      }

                      else
                      {
                        v64 = v40;
                        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_12;
                        }

                        *buf = 136315906;
                        *v86 = "parseHevcSps";
                        *&v86[8] = 1024;
                        *&v86[10] = HIDWORD(v69);
                        v87 = 1024;
                        *v88 = v64;
                        *&v88[4] = 1024;
                        *&v88[6] = v46;
                        v23 = MEMORY[0x277D86220];
                        v24 = "AppleAVD: %s(): chroma_format_idc inconsistent. First SPS = %d. Subsequent SPS with sps_id %d = %d";
                      }
                    }

                    else
                    {
                      v63 = v40;
                      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_12;
                      }

                      *buf = 136315906;
                      *v86 = "parseHevcSps";
                      *&v86[8] = 1024;
                      *&v86[10] = v70;
                      v87 = 1024;
                      *v88 = v63;
                      *&v88[4] = 1024;
                      *&v88[6] = v45;
                      v23 = MEMORY[0x277D86220];
                      v24 = "AppleAVD: %s(): separate_colour_plane_flag inconsistent. First SPS = %d. Subsequent SPS with sps_id %d = %d";
                    }
                  }

                  else
                  {
                    v62 = v40;
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_12;
                    }

                    *buf = 136315906;
                    *v86 = "parseHevcSps";
                    *&v86[8] = 1024;
                    *&v86[10] = HIDWORD(v70);
                    v87 = 1024;
                    *v88 = v62;
                    *&v88[4] = 1024;
                    *&v88[6] = v44;
                    v23 = MEMORY[0x277D86220];
                    v24 = "AppleAVD: %s(): ctbYSize inconsistent. First SPS = %d. Subsequent SPS with sps_id %d = %d";
                  }
                }

                else
                {
                  v61 = v40;
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_12;
                  }

                  *buf = 136315906;
                  *v86 = "parseHevcSps";
                  *&v86[8] = 1024;
                  *&v86[10] = v71;
                  v87 = 1024;
                  *v88 = v61;
                  *&v88[4] = 1024;
                  *&v88[6] = v43;
                  v23 = MEMORY[0x277D86220];
                  v24 = "AppleAVD: %s(): height inconsistent. First SPS = %d. Subsequent SPS with sps_id %d = %d";
                }
              }

              else
              {
                v60 = v40;
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_12;
                }

                *buf = 136315906;
                *v86 = "parseHevcSps";
                *&v86[8] = 1024;
                *&v86[10] = HIDWORD(v71);
                v87 = 1024;
                *v88 = v60;
                *&v88[4] = 1024;
                *&v88[6] = v42;
                v23 = MEMORY[0x277D86220];
                v24 = "AppleAVD: %s(): width inconsistent. First SPS = %d. Subsequent SPS with sps_id %d = %d";
              }

              v25 = 30;
              goto LABEL_11;
            }

            HIDWORD(v70) = *(v41 + 22872);
            LODWORD(v71) = *(v41 + 3612);
            LODWORD(v69) = *(v41 + 3636);
            HIDWORD(v69) = *(v41 + 3600);
            HIDWORD(v68) = *(v41 + 3640);
            LODWORD(v68) = calcHevcDpbMaxSize((v17 + 23176 * v40));
            LODWORD(v70) = *(v41 + 3604);
            if (*(v41 + 22286))
            {
              *(v67 + 89) = *(v41 + 22312);
            }

            HIDWORD(v76) = 1;
            HIDWORD(v71) = v42;
            goto LABEL_52;
          }

          v58 = v40;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_12;
          }

          *buf = 67109378;
          *v86 = v58;
          *&v86[4] = 2080;
          *&v86[6] = "OSStatus parseHevcSps(unsigned char *, int, avd_seq_params *, int, sHevcVpsLayerDependency *, int)";
          v23 = MEMORY[0x277D86220];
          v24 = "AppleAVD: bad SPS index %d %s\n";
          break;
        case ' ':
          if ((HEVC_RBSP::parseVPS(v13, v81, v74, 0) & 1) == 0)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_12;
            }

            *buf = 136315138;
            *v86 = "parseHevcSps";
            v23 = MEMORY[0x277D86220];
            v24 = "AppleAVD: %s(): VPS parsing error";
            goto LABEL_10;
          }

          v39 = *(v81 + 12);
          if (v73)
          {
            if (v39 >= 4)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_12;
              }

              goto LABEL_130;
            }
          }

          else if (v39 >= 2)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_12;
            }

LABEL_130:
            *buf = 136315394;
            *v86 = "parseHevcSps";
            *&v86[8] = 1024;
            *&v86[10] = v39 + 1;
            v23 = MEMORY[0x277D86220];
            v24 = "AppleAVD: %s(): VPS layers %d not supported";
            break;
          }

          if (v39)
          {
            v50 = *(v81 + 4448);
            if (v50)
            {
              for (i = 0; i != 128; i += 2)
              {
                *(a5 + i) = *(v50 + 580 + i);
              }

              LOWORD(v52) = 0;
              v53 = *(v50 + 520);
              v54 = *(v50 + 512);
              do
              {
                v52 = v52;
                v55 = *(v53 + 8 * v52);
                if (v55)
                {
                  v56 = 0;
                  do
                  {
                    *(a5 + 384 + (v52 << 7) + 2 * v56) = *(v55 + 14 * v56 + 8);
                    ++v56;
                  }

                  while (v39 >= v56);
                }

                if (v54)
                {
                  v57 = v54 + 28 * v52;
                  *(a5 + 256 + 2 * v52) = *(v57 + 22);
                  *(a5 + 128 + 2 * v52) = *(v57 + 20);
                }

                LOWORD(v52) = v52 + 1;
              }

              while (v39 >= v52);
            }
          }

          v75 = 1;
          goto LABEL_52;
        default:
          goto LABEL_52;
      }

      v25 = 18;
      goto LABEL_11;
    }

LABEL_52:
    v34 += v79;
    v35 = &a1[v34];
  }

  while (&v35[v78] <= v80 && (v75 & HIDWORD(v76) & v76 & 1) == 0);
  if ((v76 & 0x100000000) == 0)
  {
    goto LABEL_8;
  }

  *v67 = HIDWORD(v71);
  *(v67 + 4) = v71;
  *(v67 + 32) = BYTE4(v69);
  *(v67 + 33) = v69;
  *(v67 + 34) = BYTE4(v68);
  *(v67 + 24) = HIDWORD(v70);
  *(v67 + 35) = v68;
  *(v67 + 30) = v70;
  if (v76)
  {
    v27 = 0;
    *(v67 + 90) = *(v22 + 9856 * v72 + 51) != 0;
    v26 = 1;
    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v86 = "parseHevcSps";
    v23 = MEMORY[0x277D86220];
    v24 = "AppleAVD: %s(): cannot find PPS";
    goto LABEL_10;
  }

LABEL_12:
  v26 = 0;
  v27 = 305;
LABEL_23:
  (*(*v13 + 8))(v13);
  if (v81)
  {
    HEVCReleaseVPS(v81);
    MEMORY[0x277CAEC20](v81, 0x10B0C40C5306D43);
  }

  if (v17)
  {
    v30 = 16;
    v31 = v17;
    do
    {
      HEVCReleaseSPS(v31);
      v31 += 23176;
      --v30;
    }

    while (v30);
    MEMORY[0x277CAEC00](v17, 0x1020C80B352C60DLL);
  }

  if (v22)
  {
    for (j = 0; j != 630784; j += 9856)
    {
      HEVCReleasePPS(v22 + j);
    }

    MEMORY[0x277CAEC00](v22, 0x1010C80C250A272);
  }

  if (v26)
  {
    return 0;
  }

LABEL_35:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v86 = "parseHevcSps";
    *&v86[8] = 1024;
    *&v86[10] = v27;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
  }

  return v27;
}

uint64_t RemoveEPB(unsigned __int8 *a1, unsigned int a2, unsigned __int8 *a3)
{
  v3 = a3;
  if (a2)
  {
    v4 = 0;
    v5 = a3;
    do
    {
      v6 = *a1;
      if ((*a1 & 0xFCFFFF) != 0)
      {
        ++a1;
        v3 = v5 + 1;
        v7 = 1;
      }

      else
      {
        LOBYTE(v6) = 0;
        *(v5 + 1) = 768;
        v3 = v5 + 3;
        a1 += 2;
        v7 = 2;
      }

      v4 += v7;
      *v5 = v6;
      v5 = v3;
    }

    while (v4 < a2);
  }

  if ((v3 - a3) >> 32)
  {
    panic("%s %d 64->32 conversion problem!", "RemoveEPB", 2240);
  }

  return v3 - a3;
}

unsigned __int8 *parseSEI(unsigned __int8 *result, unsigned int a2, unsigned __int8 *__dst, unsigned int *a4)
{
  v5 = 0;
  v17[2] = *MEMORY[0x277D85DE8];
  *a4 = 0;
  v6 = *result;
  v7 = 0;
  if (a2 && v6 == 255)
  {
    v5 = 0;
    v8 = 1;
    do
    {
      v7 = v8;
      v5 += 255;
      v6 = result[v8];
      if (v8 >= a2)
      {
        break;
      }

      ++v8;
    }

    while (v6 == 255);
  }

  v9 = v7 + 1;
  v10 = -271;
  do
  {
    v11 = result[v9];
    v10 += 255;
  }

  while (v11 == 255 && v9++ < a2);
  if (v5 + v6 == 5)
  {
    for (i = 0; i != 16; ++i)
    {
      v14 = v9 + 1;
      *(v17 + i) = result[v9++];
    }

    if (v17[0] == 0x5646C3E2DC8DF223 && v17[1] == 0xDE4FDE1CA55751BCLL)
    {
      v16 = v11 + v10;
      result = memcpy(__dst, &result[v14], (v11 + v10));
      *a4 = v16;
    }
  }

  return result;
}

CAHDecThymeLgh *createThymeLghDecoder(CAVDLghDecoder *a1)
{
  v2 = operator new(0xC48uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecThymeLgh::CAHDecThymeLgh(v2, a1);
  }

  return v3;
}

void CAHDecThymeLgh::CAHDecThymeLgh(CAHDecThymeLgh *this, CAVDLghDecoder *a2)
{
  CAHDec::CAHDec(this);
  *v4 = &unk_288669308;
  *(v4 + 256) = a2;
  *(v4 + 456) = 151468;
  *(v4 + 8) = 940;
  *(v4 + 16) = xmmword_27775BC80;
  *(v4 + 32) = 1;
  *(v4 + 56) = a2;
  *(a2 + 4448) = 0;
  bzero(a2 + 12032, 0xB00uLL);
  *(a2 + 372) = 0u;
  bzero((*(this + 32) + 14848), 0xB00uLL);
  bzero(this + 464, 0x4D0uLL);
  bzero((*(this + 32) + 5248), 0x2C0uLL);
  bzero(this + 1696, 0x580uLL);
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

void CAHDecThymeLgh::~CAHDecThymeLgh(CAHDecThymeLgh *this)
{
  *this = &unk_288669308;
  CAHDecThymeLgh::freeWorkBuf_SPS(this);
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
  CAHDecThymeLgh::~CAHDecThymeLgh(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecThymeLgh::init(CAHDecThymeLgh *this)
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

uint64_t CAHDecThymeLgh::DecodePicture(CAHDecThymeLgh *this, uint64_t a2)
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

uint64_t CAHDecThymeLgh::updateCommonRegisters(CAHDecThymeLgh *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecThymeLgh::populateSequenceRegisters(CAHDecThymeLgh *this)
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

uint64_t CAHDecThymeLgh::populatePictureRegisters(CAHDecThymeLgh *this)
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

uint64_t CAHDecThymeLgh::populateAvdWork(CAHDecThymeLgh *this)
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

uint64_t CAHDecThymeLgh::allocWorkBuf_SPS(CAHDecThymeLgh *this, int *a2)
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

uint64_t CAHDecThymeLgh::allocWorkBuf_PPS(CAHDecThymeLgh *this, void *a2, void *a3, void *a4)
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

uint64_t CAHDecThymeLgh::freeWorkBuf_SPS(CAHDecThymeLgh *this)
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

uint64_t *CAHDecThymeLgh::freeWorkBuf_PPS(uint64_t *this, void *a2)
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

uint64_t CAHDecThymeLgh::setVPInstrFifo(uint64_t this, int a2)
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

uint64_t AppleAVDDestroyDecodeDeviceInternal(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  outputStructCnt = 3528;
  bzero(outputStruct, 0xDC8uLL);
  v2 = IOConnectCallStructMethod(*a1, 1u, inputStruct, 4uLL, outputStruct, &outputStructCnt);
  if (v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "AppleAVDDestroyDecodeDeviceInternal";
    v16 = 1024;
    v17 = v2;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed error: %d \n", buf, 0x12u);
  }

  v3 = *(a1 + 3824);
  if (v3)
  {
    AppleAVDCommandBuilder::destroyDecoder(v3, inputStruct, outputStruct);
  }

  v4 = 0;
  v5 = 0;
  v6 = 1;
  do
  {
    v7 = v6;
    if ((*(a1 + 228) - 3) >= 2)
    {
      if ((*(a1 + 848) & 1) == 0)
      {
        v4 &= *(a1 + 16) != 0;
      }

      if (v4)
      {
        break;
      }
    }

    if (outputStruct[v5 + 1])
    {
      v8 = 0;
      do
      {
        AppleAVDReleaseCVPixelBuffer(a1, outputStruct[32 * v5 + 3 + v8++], v5, 0xFFFFFFFF, 1);
      }

      while (v8 < outputStruct[v5 + 1]);
    }

    v6 = 0;
    v4 = 1;
    v5 = 1;
  }

  while ((v7 & 1) != 0);
  v9 = *(a1 + 3824);
  if (v9)
  {
    AppleAVDCommandBuilder::~AppleAVDCommandBuilder(v9);
    MEMORY[0x277CAEC20]();
    *(a1 + 3824) = 0;
  }

  return v2;
}

uint64_t AppleAVDGetSecondPixelBufferFromBufferPoolAndLink(uint64_t a1, unsigned int a2, unsigned int *a3, int a4, uint64_t a5, uint64_t a6)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 8 * a4 + 200);
  if (v7)
  {
    v8 = *(a1 + 224);

    return BufferPool::getSecondBufferAndLink(v7, a2, a3, v8, a5, a6);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "AppleAVDGetSecondPixelBufferFromBufferPoolAndLink";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Trying to allocate a second buffer without the pool being initialized! Error!\n", &v10, 0xCu);
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t AppleAVDUnmapCVPixelBuffer(uint64_t a1, uint64_t a2, int a3, unsigned int a4, char a5)
{
  v5 = a2;
  v12 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 8 * a3 + 200);
  if (v6)
  {

    return BufferPool::unmapBuffer(v6, a2, a4, a5);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109376;
      v9[1] = a3;
      v10 = 1024;
      v11 = v5;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: pBufferPool[%d] is NULL cvPixBufIndex:%d!", v9, 0xEu);
    }

    return 314;
  }
}

uint64_t AppleAVDChangeVTResolutionInternal(int a1, void *a2, CFDictionaryRef theDict, int a4, int a5)
{
  v29 = a5;
  v30 = a4;
  v8 = (a4 + 15) & 0xFFFFFFF0;
  v9 = (a5 + 15) & 0xFFFFFFF0;
  v10 = v8 - a4;
  v11 = v9 - a5;
  v27 = v9 - a5;
  v28 = v8 - a4;
  value = 0;
  valuePtr = 0;
  v12 = *MEMORY[0x277CC4DA0];
  ValueIfPresent = CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x277CC4DA0], &value);
  v14 = MEMORY[0x277CC4EC8];
  v15 = MEMORY[0x277CC4DD8];
  if (!ValueIfPresent || (CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr) ? (v16 = valuePtr == v11) : (v16 = 1), v16))
  {
    v18 = *MEMORY[0x277CC4DB8];
    if ((!CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x277CC4DB8], &value) || !CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr) || valuePtr == v10) && (!CFDictionaryGetValueIfPresent(theDict, *v14, &value) || !CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr) || valuePtr == a4) && (!CFDictionaryGetValueIfPresent(theDict, *v15, &value) || !CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr) || valuePtr == a5))
    {
      return 0;
    }
  }

  else
  {
    v18 = *MEMORY[0x277CC4DB8];
  }

  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &v30);
  v20 = CFNumberCreate(0, kCFNumberSInt32Type, &v29);
  v21 = v14;
  v22 = v20;
  CFDictionaryReplaceValue(theDict, *v21, v19);
  CFDictionaryReplaceValue(theDict, *v15, v22);
  CFDictionaryRemoveValue(theDict, v18);
  CFDictionaryRemoveValue(theDict, v12);
  if (v8 != a4)
  {
    v23 = CFNumberCreate(0, kCFNumberSInt32Type, &v28);
    CFDictionaryAddValue(theDict, v18, v23);
    if (v23)
    {
      CFRelease(v23);
    }
  }

  if (v9 != a5)
  {
    v24 = CFNumberCreate(0, kCFNumberSInt32Type, &v27);
    CFDictionaryAddValue(theDict, v12, v24);
    if (v24)
    {
      CFRelease(v24);
    }
  }

  v17 = VTDecoderSessionSetPixelBufferAttributes();
  *a2 = 0;
  if (v19)
  {
    CFRelease(v19);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v17;
}

void CPBManager::~CPBManager(CPBManager *this)
{
  v24 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(this);
  if (*(this + 244) == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(this + 32) / 0xF4240uLL;
    *buf = 136315394;
    v17 = "~CPBManager";
    v18 = 2048;
    *v19 = v2;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: INFO: %s(): longest wait: %llums (100ms intervals)\n", buf, 0x16u);
  }

  v3 = *(this + 24);
  if (*(v3 + 980))
  {
    v4 = 0;
    v5 = 0;
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D85F48];
    do
    {
      v8 = *(this + 25);
      v9 = *(v8 + v4);
      if ((v9 - 1) <= 1)
      {
        if (v9 == 1 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v17 = "~CPBManager";
          _os_log_impl(&dword_277606000, v6, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Unmapping and deallocating CPB cache slot that is still in use!", buf, 0xCu);
          v3 = *(this + 24);
          v8 = *(this + 25);
        }

        AppleAVDUnmapPixelBuffer(v3, *(v8 + v4 + 8));
        v10 = MEMORY[0x277CAF070](*v7, *(*(this + 25) + v4 + 16), *(this + 52));
        if (v10 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(this + 25) + v4;
          v12 = *(v11 + 4);
          v13 = *(v11 + 16);
          v14 = *(this + 52);
          *buf = 136316162;
          v17 = "~CPBManager";
          v18 = 1024;
          *v19 = v10;
          *&v19[4] = 1024;
          *&v19[6] = v12;
          v20 = 2048;
          v21 = v13;
          v22 = 1024;
          v23 = v14;
          _os_log_impl(&dword_277606000, v6, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): WARNING! vm_deallocate failed! status: 0x%x Check for leaks! frameNumber: %d - addr = 0x%llx - roundedUpSize: 0x%x", buf, 0x28u);
        }
      }

      ++v5;
      v3 = *(this + 24);
      v4 += 24;
    }

    while (v5 < *(v3 + 980));
  }

  v15 = *(this + 25);
  if (v15)
  {
    free(v15);
  }

  pthread_mutex_unlock(this);
  pthread_mutex_destroy(this);
  pthread_cond_destroy((this + 64));
}

void sub_27773426C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t CPBManager::evictFromCache(CPBManager *this)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(this + 24);
  v3 = *(v2 + 980);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(this + 25);
  if (*v4 != 2)
  {
    v6 = 0;
    while (v3 - 1 != v6)
    {
      v7 = *(v4 + 24);
      v4 += 24;
      ++v6;
      if (v7 == 2)
      {
        if (v6 < v3)
        {
          v5 = 0;
        }

        else
        {
          v5 = 0xFFFFFFFFLL;
        }

        goto LABEL_10;
      }
    }

    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  v6 = 0;
LABEL_10:
  AppleAVDUnmapPixelBuffer(v2, *(v4 + 8));
  v8 = *(this + 25) + 24 * v6;
  *(this + *(v8 + 8) + 93) = 0;
  v9 = MEMORY[0x277CAF070](*MEMORY[0x277D85F48], *(v8 + 16), *(this + 52));
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(this + 25) + 24 * v6;
      v12 = *(v11 + 4);
      v13 = *(v11 + 16);
      v14 = *(this + 52);
      v16 = 136316162;
      v17 = "evictFromCache";
      v18 = 1024;
      v19 = v10;
      v20 = 1024;
      v21 = v12;
      v22 = 2048;
      v23 = v13;
      v24 = 1024;
      v25 = v14;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): WARNING! vm_deallocate failed! status: 0x%x Check for leaks! frameNumber: %d - addr = 0x%llx - roundedUpSize: 0x%x", &v16, 0x28u);
    }
  }

  *(*(this + 25) + 24 * v6) = 0;
  --*(this + 53);
  ++*(this + 60);
  return v5;
}

uint64_t CPBManager::waitForCPBsOutstanding(CPBManager *this, unsigned int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(this);
  v4 = *(this + 112);
  if (v4 <= a2)
  {
    v6 = 0;
LABEL_11:
    v8 = 0;
  }

  else
  {
    v5 = *(this + 31);
    if (v5)
    {
      v6 = 0;
      while (1)
      {
        v10 = xmmword_27775E080;
        v7 = pthread_cond_timedwait_relative_np((this + 64), this, &v10);
        if (v7)
        {
          v8 = v7;
          if (v7 != 60)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v12 = "waitForCPBsOutstanding";
              v13 = 1024;
              LODWORD(v14) = v8;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): pthread_cond_timedwait exited with error: %d", buf, 0x12u);
            }

            goto LABEL_21;
          }

          v6 += 100000000;
        }

        v4 = *(this + 112);
        if (v4 <= a2)
        {
          goto LABEL_11;
        }

        v5 = *(this + 31);
        if (v6 >= v5)
        {
          goto LABEL_13;
        }
      }
    }

    v6 = 0;
LABEL_13:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v12 = "waitForCPBsOutstanding";
      v13 = 2048;
      v14 = v6 / 0xF4240;
      v15 = 1024;
      v16 = v4;
      v17 = 2048;
      v18 = v5 / 0xF4240;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s(): Timed out, waited at least %llums! m_num_CPBs_on_the_fly=%u timeoutMS=%llu", buf, 0x26u);
    }

    if (*(this + 244) == 1 && *(*(this + 24) + 984))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v12 = "waitForCPBsOutstanding";
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Forcing panic due to SW timeout.\n", buf, 0xCu);
      }

      MEMORY[0x277CAEFA0](3072, "Timeout hit while waiting for outstanding CPBs - panicking!\n");
    }

    v8 = 60;
  }

LABEL_21:
  if (*(this + 244) == 1 && *(this + 32) < v6)
  {
    *(this + 32) = v6;
  }

  pthread_mutex_unlock(this);
  return v8;
}

uint64_t createKopsiaLghDecoder(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "createKopsiaLghDecoder";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Kopsia AVD is not supported in this AppleAVD driver!!!", &v2, 0xCu);
  }

  return 0;
}

uint64_t createKopsiaAvxDecoder(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "createKopsiaAvxDecoder";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Kopsia AVD is not supported in this AppleAVD driver!!!", &v2, 0xCu);
  }

  return 0;
}

uint64_t createKopsiaAvcDecoder(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "createKopsiaAvcDecoder";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Kopsia AVD is not supported in this AppleAVD driver!!!", &v2, 0xCu);
  }

  return 0;
}

uint64_t createKopsiaHevcDecoder(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "createKopsiaHevcDecoder";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Kopsia AVD is not supported in this AppleAVD driver!!!", &v2, 0xCu);
  }

  return 0;
}

CAHDecDaisyLgh *createDaisyLghDecoder(CAVDLghDecoder *a1)
{
  v2 = operator new(0x11C8uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecDaisyLgh::CAHDecDaisyLgh(v2, a1);
  }

  return v3;
}

void CAHDecDaisyLgh::CAHDecDaisyLgh(CAHDecDaisyLgh *this, CAVDLghDecoder *a2)
{
  CAHDec::CAHDec(this);
  *v4 = &unk_288669460;
  *(v4 + 256) = a2;
  *(v4 + 456) = 151460;
  *(v4 + 8) = 932;
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

void CAHDecDaisyLgh::~CAHDecDaisyLgh(CAHDecDaisyLgh *this)
{
  *this = &unk_288669460;
  CAHDecDaisyLgh::freeWorkBuf_SPS(this);
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
  CAHDecDaisyLgh::~CAHDecDaisyLgh(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecDaisyLgh::init(CAHDecDaisyLgh *this)
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

uint64_t CAHDecDaisyLgh::DecodePicture(CAHDecDaisyLgh *this, uint64_t a2)
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

uint64_t CAHDecDaisyLgh::updateCommonRegisters(CAHDecDaisyLgh *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecDaisyLgh::populateSequenceRegisters(CAHDecDaisyLgh *this)
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

uint64_t CAHDecDaisyLgh::populatePictureRegisters(CAHDecDaisyLgh *this)
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
    *(*(this + 33) + 504) = 0;
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

uint64_t CAHDecDaisyLgh::populateAvdWork(CAHDecDaisyLgh *this)
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
        v48 = 1119;
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
        v48 = 1120;
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

uint64_t CAHDecDaisyLgh::allocWorkBuf_SPS(CAHDecDaisyLgh *this, int *a2)
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
        v37 = 1352;
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
    v37 = 1357;
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
        v37 = 1336;
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
    v37 = 1341;
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

uint64_t CAHDecDaisyLgh::allocWorkBuf_PPS(CAHDecDaisyLgh *this, void *a2, void *a3, void *a4)
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
        v26 = 1433;
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
        v26 = 1436;
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
        v26 = 1442;
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
        v26 = 1448;
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
        v26 = 1456;
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
      v26 = 1464;
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
    v26 = 1470;
    v27 = 2080;
    v28 = "AZLeftPix";
    v16 = MEMORY[0x277D86220];
    goto LABEL_34;
  }

  return result;
}

uint64_t CAHDecDaisyLgh::freeWorkBuf_SPS(CAHDecDaisyLgh *this)
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

uint64_t *CAHDecDaisyLgh::freeWorkBuf_PPS(uint64_t *this, void *a2)
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

uint64_t CAHDecDaisyLgh::setVPInstrFifo(uint64_t this, int a2)
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

uint64_t AVDFrameReceiver::MakeCurrentThreadTimeConstraintThread(AVDFrameReceiver *this)
{
  mach_timebase_info(&info);
  LODWORD(v2) = info.numer;
  LODWORD(v1) = info.denom;
  *policy_info = vmovn_s64(vcvtq_u64_f64(vmulq_n_f64(xmmword_27775E0C0, v1 / v2 * 1000000.0)));
  v8 = policy_info[0];
  v9 = 1;
  v3 = pthread_self();
  v4 = pthread_mach_thread_np(v3);
  return thread_policy_set(v4, 2u, policy_info, 4u);
}

uint64_t AVDFrameReceiver::RemoveIODispatcherFromRunLoop(AVDFrameReceiver *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    CFRunLoopRemoveSource(*this, v2, *MEMORY[0x277CBF058]);
    v3 = *(this + 2);
    if (v3)
    {
      CFRelease(v3);
      *(this + 2) = 0;
    }
  }

  v4 = *(this + 4);
  if (v4)
  {
    CFMachPortInvalidate(v4);
    v5 = *(this + 4);
    if (v5)
    {
      CFRelease(v5);
      *(this + 4) = 0;
    }
  }

  v6 = *MEMORY[0x277D85F48];
  v7 = *(this + 6);

  return mach_port_mod_refs(v6, v7, 1u, -1);
}

uint64_t StopAVDFrameReceiver(__CFRunLoop **this, pthread_t *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (this)
  {
    v3 = *this;
    if (*this)
    {
      AVDFrameReceiver::RemoveIODispatcherFromRunLoop(this);
      CFRunLoopStop(v3);
      v5 = pthread_self();
      if (pthread_equal(v5, *a2))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "StopAVDFrameReceiver";
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): FrameReceiver->Emit thread called Invalidate|Finalize!", buf, 0xCu);
        }
      }

      else
      {
        *buf = 0;
        pthread_join(*a2, buf);
      }

      v10 = CFGetRetainCount(v3);
      if (v10 != 1)
      {
        v11 = v10;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "StopAVDFrameReceiver";
          v14 = 2048;
          v15 = v11;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s retain count is %ld", buf, 0x16u);
        }
      }

      CFRelease(v3);
      v7 = 0;
      *this = 0;
      return v7;
    }

    v7 = 3758097084;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return v7;
    }

    *buf = 0;
    v8 = MEMORY[0x277D86220];
    v9 = "AppleAVD: AVDFrameReceiver ERROR: runLoopRef NULL\n";
LABEL_12:
    _os_log_impl(&dword_277606000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
    return v7;
  }

  v6 = MEMORY[0x277D85DF8];
  fprintf(*MEMORY[0x277D85DF8], "Assert - (%s) - f: %s l: %d\n", "pFrameReceiver != NULL", "/Library/Caches/com.apple.xbs/Sources/AppleAVD/framework/AppleAVDFrameReceiver.cpp", 459);
  fwrite("AVDFrameReceiver ERROR: StopAVDFrameReceiver called with pFrameReceiver NULL.\n", 0x4EuLL, 1uLL, *v6);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "pFrameReceiver != NULL";
    v14 = 2080;
    v15 = "/Library/Caches/com.apple.xbs/Sources/AppleAVD/framework/AppleAVDFrameReceiver.cpp";
    v16 = 1024;
    v17 = 459;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert - (%s) - f: %s l: %d\n", buf, 0x1Cu);
  }

  v7 = 3758097084;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v8 = MEMORY[0x277D86220];
    v9 = "AVDFrameReceiver ERROR: StopAVDFrameReceiver called with pFrameReceiver NULL.\n";
    goto LABEL_12;
  }

  return v7;
}

uint64_t DestroyAVDFrameReceiver(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    MEMORY[0x277CAEC20](a1, 0x10A0C40FE0E7621);
    if (a2)
    {
      pthread_attr_destroy(a2);
      return 0;
    }
  }

  else
  {
    v3 = MEMORY[0x277D85DF8];
    fprintf(*MEMORY[0x277D85DF8], "Assert - (%s) - f: %s l: %d\n", "pFrameReceiver != NULL", "/Library/Caches/com.apple.xbs/Sources/AppleAVD/framework/AppleAVDFrameReceiver.cpp", 517);
    fwrite("AVDFrameReceiver ERROR: DestroyAVDFrameReceiver called with pFrameReceiver NULL.\n", 0x51uLL, 1uLL, *v3);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v6 = "pFrameReceiver != NULL";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/AppleAVD/framework/AppleAVDFrameReceiver.cpp";
      v9 = 1024;
      v10 = 517;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert - (%s) - f: %s l: %d\n", buf, 0x1Cu);
    }

    a2 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AVDFrameReceiver ERROR: DestroyAVDFrameReceiver called with pFrameReceiver NULL.\n", buf, 2u);
    }
  }

  return a2;
}

void AV1_Syntax::assign_frame_buffer(uint64_t a1, int **a2, int *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*a2)
  {
    v6 = *v5;
    if (*v5 > 0 || os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT) && (v7 = 136315394, v8 = "assign_frame_buffer", v9 = 1024, v10 = 1446, _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v7, 0x12u), v6 = *v5, *v5 >= 1))
    {
      *v5 = v6 - 1;
    }
  }

  *a2 = a3;
  ++*a3;
}

uint64_t AV1_Syntax::setup_frame_buf_refs(uint64_t this)
{
  v1 = 0;
  v2 = *(this + 96);
  v3 = *(v2 + 120);
  v4 = *(v2 + 76);
  LODWORD(v2) = *(v2 + 80);
  *(v3 + 4) = v4;
  *(v3 + 36) = v2;
  do
  {
    v5 = *(this + 96);
    v6 = *(v5 + 4 * v1 + 1692);
    if (v6 == -1)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v5 + 8 * v6 + 1848);
      if (v7)
      {
        v8 = *(v5 + 120) + 4 * v1;
        *(v8 + 8) = *(v7 + 4);
        *(v8 + 40) = *(v7 + 36);
      }
    }

    *(*(v5 + 120) + 8 * v1++ + 72) = v7;
  }

  while (v1 != 7);
  return this;
}

void AV1_Syntax::show_existing_frame_reset(AV1_Syntax *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(this + 12);
  if (!*v1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "show_existing_frame_reset";
    v7 = 1024;
    v8 = 1482;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v5, 0x12u);
    v1 = *(this + 12);
  }

  *(v1 + 68) = 0;
  *(v1 + 104) = 255;
  *(v1 + 1692) = -1;
  *(v1 + 1700) = -1;
  *(v1 + 1708) = -1;
  *(v1 + 1716) = -1;
  *(v1 + 172) = *(v1 + 4 * *(v1 + 1672) + 4);
  v3 = (v1 + 36);
  v4 = 8;
  do
  {
    *(v3 - 8) = *(v1 + 172);
    *v3++ = 1;
    --v4;
  }

  while (v4);
}

void AV1_Syntax::setup_scale_factors_for_frame(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = -1;
  if (a3 > 2 * a5 || 2 * a6 < a4 || 16 * a3 < a5)
  {
    v7 = -1;
  }

  else
  {
    v7 = -1;
    if (16 * a4 >= a6)
    {
      v6 = (a5 / 2 + (a3 << 14)) / a5;
      v7 = (a6 / 2 + (a4 << 14)) / a6;
      a2[2] = (v6 + 8) >> 4;
      a2[3] = (v7 + 8) >> 4;
    }
  }

  *a2 = v6;
  a2[1] = v7;
}

uint64_t AV1_Syntax::setup_frame_sign_bias(uint64_t this)
{
  v1 = this;
  v2 = *(this + 96);
  for (i = 1692; i != 1720; i += 4)
  {
    v4 = *(v2 + i);
    if (v4 == -1 || ((v5 = *(v2 + 8 * v4 + 1848), v6 = *(v1 + 88), v8 = *(v6 + 40), v7 = (v6 + 40), v8) ? (v9 = v5 == 0) : (v9 = 1), v9))
    {
      v10 = 0;
    }

    else
    {
      this = AV1_Syntax::get_relative_dist(v1, v7, *(v5 + 4), *(v2 + 76));
      v10 = this > 0;
      v2 = *(v1 + 96);
    }

    *(v2 + i - 1376) = v10;
  }

  return this;
}

uint64_t AV1_Syntax::get_relative_dist(uint64_t a1, _DWORD *a2, int a3, int a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!*a2)
  {
    return 0;
  }

  v6 = a2[1];
  if (v6 < 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "get_relative_dist";
    v11 = 1024;
    v12 = 3364;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v9, 0x12u);
  }

  v7 = 1 << (v6 + 1);
  if ((a3 < 0 || v7 <= a3) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "get_relative_dist";
    v11 = 1024;
    v12 = 3365;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v9, 0x12u);
  }

  if ((a4 < 0 || v7 <= a4) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "get_relative_dist";
    v11 = 1024;
    v12 = 3366;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v9, 0x12u);
  }

  return (((1 << v6) - 1) & (a3 - a4)) - ((1 << v6) & (a3 - a4));
}

uint64_t AV1_Syntax::uncompressed_header(AV1_Syntax *this)
{
  v156 = *MEMORY[0x277D85DE8];
  v1 = *(this + 4);
  v2 = *(this + 2);
  v3 = *(this + 11);
  v4 = *(this + 12);
  *(this + 15516) = 0;
  if (!*(this + 3873))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v151 = "uncompressed_header";
      v152 = 1024;
      v153 = 1588;
      v11 = MEMORY[0x277D86220];
      v12 = "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n";
      goto LABEL_14;
    }

    return 0xFFFFFFFFLL;
  }

  if (*(*(this + 11) + 58))
  {
    *v4 = 0;
    *(v4 + 132) = 1;
    *(v4 + 68) = 0;
    *(v4 + 2948) = 1;
    if (*(this + 3874))
    {
      *(this + 1937) = 0x100000000;
    }

    *(v4 + 140) = 1;
    v6 = v4;
LABEL_6:
    if (!*(v4 + 68) && *(v6 + 132))
    {
      *(v6 + 52) = 0u;
      *(v6 + 36) = 0u;
    }

    v7 = AV1_Syntax::get_bits(this, "disable_cdf_update", 1u) != 0;
    v8 = *(this + 12);
    *(v8 + 141) = v7;
    v9 = *(*(this + 11) + 56);
    if (v9 == 2)
    {
      bits = AV1_Syntax::get_bits(this, "allow_screen_content_tools", 1u);
      v8 = *(this + 12);
      *(v8 + 142) = bits != 0;
      if (!bits)
      {
LABEL_11:
        *(v8 + 148) = 0;
LABEL_27:
        *(v8 + 1680) = 0;
        *(v8 + 156) = 0;
        *(v8 + 152) = 7;
        v18 = *(this + 11);
        if (*(v18 + 58))
        {
LABEL_28:
          if (*(v18 + 268))
          {
            v19 = AV1_Syntax::get_bits(this, "buffer_removal_time_present_flag", 1u);
            v8 = *(this + 12);
            *(v8 + 176) = v19 != 0;
            if (v19)
            {
              v20 = *(this + 11);
              if ((*(v20 + 116) & 0x80000000) == 0)
              {
                v21 = 0;
                v22 = 448;
                v23 = v8;
                while (1)
                {
                  v24 = v8;
                  if (!*(v20 + v22))
                  {
                    break;
                  }

                  v25 = *(v20 + 4 * v21 + 120);
                  if ((v25 >> *(v23 + 348)))
                  {
                    if (v25)
                    {
                      v26 = ((1 << (*(v23 + 352) + 8)) & v25) == 0;
                    }

                    else
                    {
                      v26 = 0;
                    }

                    v24 = v23;
                    if (v26)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v24 = v23;
                    if (v25)
                    {
                      break;
                    }
                  }

                  v27 = AV1_Syntax::get_bits(this, "buffer_removal_time", *(v20 + 277));
                  v8 = *(this + 12);
                  *(v8 + 4 * v21 + 180) = v27;
                  v20 = *(this + 11);
                  if (v27 >> *(v20 + 277))
                  {
                    v46 = v27;
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_352;
                    }

                    return 0xFFFFFFFFLL;
                  }

                  v24 = v8;
LABEL_42:
                  v22 += 40;
                  v23 = v24;
                  v55 = v21++ < *(v20 + 116);
                  if (!v55)
                  {
                    goto LABEL_43;
                  }
                }

                *(v24 + 4 * v21 + 180) = 0;
                goto LABEL_42;
              }
            }
          }

LABEL_43:
          v28 = *(v4 + 68);
          if (v28 == 2)
          {
            v32 = AV1_Syntax::get_bits(this, "refresh_frame_flags", 8u);
            v33 = v32;
            *(v4 + 104) = v32;
            if (v32 >= 0x100)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                return 0xFFFFFFFFLL;
              }

              goto LABEL_192;
            }

            if (v32 == 255)
            {
              return 0xFFFFFFFFLL;
            }
          }

          else if (v28)
          {
            if (*(v8 + 68) == 3)
            {
              *(v4 + 104) = 255;
            }

            else
            {
              v38 = AV1_Syntax::get_bits(this, "refresh_frame_flags", 8u);
              *(v4 + 104) = v38;
              if (v38 >= 0x100)
              {
                v33 = v38;
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  return 0xFFFFFFFFLL;
                }

                goto LABEL_192;
              }
            }
          }

          else
          {
            if (*(v8 + 132))
            {
              *(v4 + 104) = 255;
            }

            else
            {
              v49 = AV1_Syntax::get_bits(this, "refresh_frame_flags", 8u);
              *(v4 + 104) = v49;
              if (v49 > 0xFF)
              {
                v33 = v49;
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  return 0xFFFFFFFFLL;
                }

                goto LABEL_192;
              }

              v8 = *(this + 12);
            }

            *(v8 + 1716) = -1;
            *(v8 + 1700) = -1;
            *(v8 + 1708) = -1;
            *(v8 + 1692) = -1;
            if ((~*(this + 3881) & 0x80002) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v151 = "uncompressed_header";
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: reset all ref_frame_idx to AV1_INVALID_IDX for key frame\n", buf, 0xCu);
            }
          }

          v65 = *(this + 12);
          if ((!*(v65 + 2948) || *(v4 + 104) != 255) && *(v65 + 140) == 1 && *(*(this + 11) + 40))
          {
            v66 = 1912;
            while (1)
            {
              v67 = AV1_Syntax::get_bits(this, "ref_order_hint", *(*(this + 11) + 44) + 1);
              v65 = *(this + 12);
              *(v65 + v66) = v67;
              if (v67 >= 0x100)
              {
                break;
              }

              v66 += 4;
              if (v66 == 1944)
              {
                goto LABEL_141;
              }
            }

            v33 = v67;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 0xFFFFFFFFLL;
            }

LABEL_192:
            *buf = 136315394;
            v151 = "uncompressed_header";
            v152 = 1024;
            v153 = v33;
            v11 = MEMORY[0x277D86220];
            v12 = "AppleAVD: %s: value %d out of range!\n";
            goto LABEL_14;
          }

LABEL_141:
          v68 = *(v4 + 68);
          if (!v68)
          {
            AV1_Syntax::frame_size(this);
            if (v72 == -1)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v151 = "uncompressed_header";
                v152 = 1024;
                v153 = 1938;
                v11 = MEMORY[0x277D86220];
                v12 = "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n";
                goto LABEL_14;
              }

              return 0xFFFFFFFFLL;
            }

            v73 = *(this + 12);
            if (*(v73 + 142) == 1 && *(v73 + 364) == *(v73 + 376))
            {
              v74 = AV1_Syntax::get_bits(this, "allow_intrabc", 1u) != 0;
              v73 = *(this + 12);
              *(v73 + 156) = v74;
            }

            *(v73 + 157) = 0;
            *(v73 + 112) = 0;
            goto LABEL_262;
          }

          *(v65 + 157) = 0;
          v69 = *(this + 11);
          if (v68 == 2)
          {
            *(*(v65 + 120) + 1088) = *(v69 + 113);
            AV1_Syntax::frame_size(this);
            if (v70 == -1)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v151 = "uncompressed_header";
                v152 = 1024;
                v153 = 1958;
                v11 = MEMORY[0x277D86220];
                v12 = "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n";
                goto LABEL_14;
              }

              return 0xFFFFFFFFLL;
            }

            v71 = *(this + 12);
            if (*(v71 + 142) == 1 && *(v71 + 364) == *(v71 + 376))
            {
              v70 = AV1_Syntax::get_bits(this, "allow_intrabc", 1u);
              v71 = *(this + 12);
              *(v71 + 156) = v70 != 0;
            }

LABEL_238:
            v105 = *(v71 + 152);
            v106 = v105 != 7 && (*(v71 + 152) & 0xF8) == 0;
            if (!v106 || (v107 = *(v71 + 4 * (v105 & 7) + 1692), v107 == -1))
            {
              v108 = 0;
            }

            else
            {
              v108 = *(v71 + 8 * v107 + 1848);
            }

            *(v71 + 112) = v108;
            if (*(v4 + 68) != 2)
            {
              if ((*(v71 + 140) & 1) == 0 && (v109 = *(this + 11), *(v109 + 52)) && *(v109 + 40) && (*(v71 + 68) & 0xFFFFFFFD) != 0)
              {
                v70 = AV1_Syntax::get_bits(this, "use_ref_frame_mvs", 1u);
                *(*(this + 12) + 157) = v70 != 0;
              }

              else
              {
                *(v71 + 157) = 0;
              }

              for (i = 1692; i != 1720; i += 4)
              {
                v111 = *(this + 12);
                v112 = *(v111 + i);
                if (v112 != -1)
                {
                  v113 = *(v111 + 8 * v112 + 1848);
                  if (v113)
                  {
                    v114 = v112 >= 8 ? 0 : (v111 + 16 * v112 + 1720);
                    AV1_Syntax::setup_scale_factors_for_frame(v70, v114, *(v113 + 1760), *(v113 + 1768), *(v111 + 376), *(v111 + 380));
                    if (*v114 == -1 || v114[1] == -1)
                    {
                      return 0xFFFFFFFFLL;
                    }
                  }
                }
              }
            }

LABEL_262:
            AV1_Syntax::setup_frame_buf_refs(this);
            AV1_Syntax::setup_frame_sign_bias(this);
            v115 = 0;
            v116 = *(this + 12);
            v117 = *(v116 + 120);
            *(v117 + 1944) = *(v4 + 68);
            v118 = *(v116 + 104);
            do
            {
              if ((v118 >> v115))
              {
                v119 = v116 + 4 * v115;
                *(v119 + 4) = *(v116 + 172);
                *(v119 + 36) = 1;
              }

              ++v115;
            }

            while (v115 != 8);
            v120 = *(this + 11);
            if (*(v120 + 58) || (*(v116 + 141) & 1) != 0)
            {
              *(v116 + 144) = 0;
            }

            else
            {
              v126 = AV1_Syntax::get_bits(this, "refresh_frame_context", 1u) == 0;
              v116 = *(this + 12);
              *(v116 + 144) = v126;
              v120 = *(this + 11);
              v117 = *(v116 + 120);
            }

            *(v117 + 1896) = *(v120 + 76);
            *(v117 + 1900) = *(v120 + 84);
            *(v117 + 1908) = *(v120 + 92);
            *(v117 + 1912) = *(v120 + 81);
            *(v117 + 1916) = *(v120 + 108);
            *(v117 + 1920) = *(v120 + 96);
            *(v117 + 1924) = *(v116 + 356);
            *(v117 + 1928) = *(v116 + 360);
            if (*(v116 + 156) == 1)
            {
              *(v116 + 396) = 0;
              *(v116 + 1392) = 0;
              *(v116 + 1456) = 0;
              *(v116 + 1384) = 0x100000000;
              *(v116 + 1520) = 0;
              *(v116 + 1584) = 0;
              *(v116 + 1648) = 0;
              *(v116 + 1656) = 0;
            }

            if (AV1_Syntax::tile_info(this))
            {
              return 0xFFFFFFFFLL;
            }

            v121 = *(this + 12);
            if (v121[191] != 1 && 64 << (v121[94] != v121[91]) > 4 * v121[195])
            {
              return 0xFFFFFFFFLL;
            }

            AV1_Syntax::quantization_params(this);
            *(v4 + 688) = *(*(this + 11) + 76);
            if (*(*(this + 12) + 152) == 7)
            {
              AV1_Syntax::setup_past_independence(this);
            }

            AV1_Syntax::segmentation_params(this);
            v122 = *(this + 12);
            *(v122 + 1360) = xmmword_27775E110;
            *(v122 + 1376) = 0;
            if (*(v122 + 444) < 1)
            {
              goto LABEL_297;
            }

            v123 = AV1_Syntax::get_bits(this, "delta_q_present", 1u);
            v122 = *(this + 12);
            *(v122 + 1360) = v123;
            if (!v123)
            {
              goto LABEL_297;
            }

            *(v4 + 756) = *(v122 + 444);
            v124 = AV1_Syntax::get_bits(this, "delta_q_res", 2u);
            v46 = 1 << v124;
            v122 = *(this + 12);
            *(v122 + 1364) = 1 << v124;
            if (v124 == 31 || v46 >= 9)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_352;
              }

              return 0xFFFFFFFFLL;
            }

            if (*(v122 + 156) == 1)
            {
              v125 = *(v122 + 1368);
            }

            else
            {
              v125 = AV1_Syntax::get_bits(this, "delta_lf_present", 1u);
              v122 = *(this + 12);
              *(v122 + 1368) = v125;
            }

            if (!v125)
            {
LABEL_297:
              v129 = 0;
              *(v4 + 760) = *(v122 + 148);
              v130 = *(v122 + 484);
              v131 = (v4 + 724);
              v132 = v122 + 558;
              do
              {
                v133 = *(v122 + 444);
                if (v130 && *(v132 + v129 - 65))
                {
                  v134 = v133 + *(v132 + 2 * v129);
                  if (v134 >= 255)
                  {
                    v134 = 255;
                  }

                  v133 = v134 & ~(v134 >> 31);
                }

                v135 = !v133 && !*(v122 + 448) && !*(v122 + 452) && !*(v122 + 460) && !*(v122 + 456) && *(v122 + 464) == 0;
                *v131 = v135;
                *(v131 - 8) = v133;
                v129 += 8;
                ++v131;
              }

              while (v129 != 64);
              if (v130)
              {
                v136 = 0;
                while (*(v122 + 724 + v136))
                {
                  v136 += 4;
                  if (v136 == 32)
                  {
                    *(v122 + 162) = 1;
                    goto LABEL_318;
                  }
                }

                *(v122 + 162) = 0;
              }

              else
              {
                v137 = *(v122 + 724);
                *(v122 + 162) = v137 != 0;
                if (v137)
                {
LABEL_318:
                  v138 = *(v122 + 364);
                  v139 = *(v122 + 376);
                  *(v122 + 396) = 0;
                  *(v122 + 1384) = 0;
                  *(v122 + 1392) = 0;
                  *(v122 + 1456) = 0;
                  *(v122 + 1520) = 0;
                  *(v122 + 1584) = 0;
                  *(v122 + 163) = v138 == v139;
                  if (v138 == v139)
                  {
                    goto LABEL_324;
                  }

                  v140 = *(this + 11);
LABEL_323:
                  if (*(v140 + 68))
                  {
LABEL_325:
                    AV1_Syntax::loop_filter_params(this);
                    v141 = *(this + 12);
                    if ((*(v141 + 162) & 1) == 0 && *(*(this + 11) + 67))
                    {
                      AV1_Syntax::cdef_params(this);
                      v141 = *(this + 12);
                    }

                    if ((*(v141 + 163) & 1) == 0 && *(*(this + 11) + 68))
                    {
                      AV1_Syntax::lr_params(this);
                    }

                    AV1_Syntax::read_tx_mode(this);
                    AV1_Syntax::frame_reference_mode(this);
                    AV1_Syntax::skip_mode_params(this);
                    v142 = *(this + 12);
                    if (*(v142 + 88))
                    {
                      v143 = AV1_Syntax::get_bits(this, "skip_mode_present", 1u);
                      v142 = *(this + 12);
                    }

                    else
                    {
                      v143 = 0;
                    }

                    *(v142 + 92) = v143;
                    if (*(v142 + 2948) || (*(v142 + 140) & 1) != 0 || !*(*(this + 11) + 65))
                    {
                      *(v142 + 160) = 0;
                    }

                    else
                    {
                      *(*(this + 12) + 160) = AV1_Syntax::get_bits(this, "allow_warped_motion", 1u) != 0;
                    }

                    v144 = AV1_Syntax::get_bits(this, "reduced_tx_set", 1u) != 0;
                    v145 = *(this + 12);
                    *(v145 + 161) = v144;
                    if ((*(v145 + 68) | 2) != 2)
                    {
                      AV1_Syntax::global_motion_params(this);
                      v145 = *(this + 12);
                    }

                    v146 = *(*(this + 11) + 113);
                    *(*(v145 + 120) + 1088) = v146;
                    if (v146 && (*(v145 + 132) || *(v145 + 136)))
                    {
                      result = AV1_Syntax::film_grain_params(this);
                      if (result == -1)
                      {
                        return result;
                      }
                    }

                    else
                    {
                      bzero((v145 + 2296), 0x28CuLL);
                    }

                    v147 = *(this + 12);
                    *(v147 + 2944) = *(*(this + 11) + 76);
                    memcpy((*(v147 + 120) + 1092), (v147 + 2296), 0x28CuLL);
                    AV1_Syntax::setup_motion_field_info(this);
                    return (*(this + 4) - *(this + 2) + ((v3 + 8 * (v2 - v1) - *(this + 11) + 7) >> 3)) & 0x1FFFFFFF;
                  }

LABEL_324:
                  *(v122 + 1648) = 0;
                  *(v122 + 1656) = 0;
                  goto LABEL_325;
                }
              }

              *(v122 + 163) = 0;
              v140 = *(this + 11);
              if (!*(v140 + 67))
              {
                *(v122 + 1384) = 0;
                *(v122 + 1392) = 0;
                *(v122 + 1456) = 0;
                *(v122 + 1520) = 0;
                *(v122 + 1584) = 0;
              }

              goto LABEL_323;
            }

            v127 = AV1_Syntax::get_bits(this, "delta_lf_res", 2u);
            v46 = 1 << v127;
            *(*(this + 12) + 1372) = 1 << v127;
            if (v127 != 31 && v46 < 9)
            {
              v128 = AV1_Syntax::get_bits(this, "delta_lf_multi", 1u);
              v122 = *(this + 12);
              *(v122 + 1376) = v128;
              goto LABEL_297;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 0xFFFFFFFFLL;
            }

LABEL_352:
            *buf = 136315394;
            v151 = "uncompressed_header";
            v152 = 1024;
            v153 = v46;
            v11 = MEMORY[0x277D86220];
            v12 = "AppleAVD: %s: value %d out of range!\n";
            goto LABEL_14;
          }

          if (!*(v69 + 40))
          {
            v148 = v3;
            v75 = 1;
            goto LABEL_169;
          }

          v75 = 1;
          if (!AV1_Syntax::get_bits(this, "frame_refs_short_signaling", 1u))
          {
            v148 = v3;
            goto LABEL_169;
          }

          v76 = AV1_Syntax::get_bits(this, "last_frame_idx", 3u);
          v33 = v76;
          v77 = *(this + 12);
          *(v77 + 1684) = v76;
          if (v76 >= 8)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 0xFFFFFFFFLL;
            }

            goto LABEL_192;
          }

          v94 = *(v77 + 8 * v76 + 1848);
          v95 = AV1_Syntax::get_bits(this, "gold_frame_idx", 3u);
          v33 = v95;
          v96 = *(this + 12);
          *(v96 + 1688) = v95;
          if (v95 >= 8)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 0xFFFFFFFFLL;
            }

            goto LABEL_192;
          }

          if (v94)
          {
            if (*(v96 + 8 * v95 + 1848))
            {
              v148 = v3;
              AV1_Syntax::set_frame_refs(this);
              v75 = 0;
LABEL_169:
              v78 = 0;
              v79 = MEMORY[0x277D86220];
              v149 = v4;
              do
              {
                if (v75)
                {
                  v80 = AV1_Syntax::get_bits(this, "ref_frame_idx", 3u);
                  v81 = v80;
                  if (v80 >= 8)
                  {
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      return 0xFFFFFFFFLL;
                    }

                    *buf = 136315394;
                    v151 = "uncompressed_header";
                    v152 = 1024;
                    v153 = v81;
                    v11 = MEMORY[0x277D86220];
                    v12 = "AppleAVD: %s: value %d out of range!\n";
                    goto LABEL_14;
                  }

                  v82 = *(this + 12);
                  *(v82 + 4 * v78 + 1692) = v80;
                  if ((~*(this + 3881) & 0x80002) == 0 && os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    v151 = "uncompressed_header";
                    v152 = 1024;
                    v153 = v78;
                    v154 = 1024;
                    v155 = v81;
                    _os_log_impl(&dword_277606000, v79, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: !frame_refs_short_signaling, ref_frame_idx[%d] = %d\n", buf, 0x18u);
                    v82 = *(this + 12);
                  }
                }

                else
                {
                  v82 = *(this + 12);
                  v81 = *(v82 + 4 * v78 + 1692);
                }

                if (!*(v82 + 4 * v81 + 36))
                {
                  return 0xFFFFFFFFLL;
                }

                *(v82 + 4 * v78 + 316) = 0;
                v83 = *(this + 11);
                if (*(v83 + 16))
                {
                  v84 = v75;
                  v85 = v2;
                  v86 = v1;
                  v87 = v79;
                  v88 = *(v83 + 20);
                  v89 = *(v83 + 24);
                  v90 = AV1_Syntax::get_bits(this, "delta_frame_id_minus_1", v89);
                  v91 = v90;
                  if ((v90 & 0x80000000) != 0 || v90 >> v89)
                  {
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      return 0xFFFFFFFFLL;
                    }

                    *buf = 136315394;
                    v151 = "uncompressed_header";
                    v152 = 1024;
                    v153 = v91;
                    v11 = MEMORY[0x277D86220];
                    v12 = "AppleAVD: %s: value %d out of range!\n";
                    goto LABEL_14;
                  }

                  v82 = *(this + 12);
                  v92 = ((1 << v88) + *(v82 + 172) + ~v90) % (1 << v88);
                  v79 = v87;
                  v1 = v86;
                  v2 = v85;
                  v75 = v84;
                  v4 = v149;
                  if (v92 != *(v82 + 4 * v81 + 4))
                  {
                    return 0xFFFFFFFFLL;
                  }
                }

                ++v78;
              }

              while (v78 != 7);
              if ((*(v82 + 140) & 1) == 0 && *(v82 + 1680))
              {
                AV1_Syntax::frame_size_with_refs(this);
                if (v93 == -1)
                {
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    return 0xFFFFFFFFLL;
                  }

                  *buf = 136315394;
                  v151 = "uncompressed_header";
                  v152 = 1024;
                  v153 = 2050;
                  v11 = MEMORY[0x277D86220];
                  v12 = "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n";
                  goto LABEL_14;
                }

LABEL_198:
                v98 = *(this + 12);
                if (*(v98 + 148) == 1)
                {
                  *(v98 + 158) = 0;
                }

                else
                {
                  *(*(this + 12) + 158) = AV1_Syntax::get_bits(this, "allow_high_precision_mv", 1u) != 0;
                }

                v3 = v148;
                AV1_Syntax::read_interpolation_filter(this);
                v70 = AV1_Syntax::get_bits(this, "is_motion_mode_switchable", 1u);
                v71 = *(this + 12);
                *(v71 + 159) = v70 != 0;
                goto LABEL_238;
              }

              AV1_Syntax::frame_size(this);
              if (v97 != -1)
              {
                goto LABEL_198;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                return 0xFFFFFFFFLL;
              }

              *buf = 136315394;
              v151 = "uncompressed_header";
              v152 = 1024;
              v153 = 2058;
              v11 = MEMORY[0x277D86220];
              v12 = "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n";
LABEL_14:
              v13 = 18;
              goto LABEL_15;
            }

            if ((*(this + 15526) & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 0xFFFFFFFFLL;
            }

            *buf = 136315138;
            v151 = "uncompressed_header";
            v11 = MEMORY[0x277D86220];
            v12 = "AppleAVD: %s: Corrupted frame. Inter frame requests nonexistent reference.\n";
          }

          else
          {
            if ((*(this + 15526) & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 0xFFFFFFFFLL;
            }

            *buf = 136315138;
            v151 = "uncompressed_header";
            v11 = MEMORY[0x277D86220];
            v12 = "AppleAVD: %s: Corrupted frame. Inter frame requests nonexistent reference.\n";
          }

LABEL_196:
          v13 = 12;
LABEL_15:
          _os_log_impl(&dword_277606000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, v13);
          return 0xFFFFFFFFLL;
        }

        if (!*(v18 + 16))
        {
LABEL_109:
          if (*(v8 + 68) == 3)
          {
            v57 = 1;
          }

          else
          {
            v57 = AV1_Syntax::get_bits(this, "frame_size_override_flag", 1u);
            v8 = *(this + 12);
          }

          *(v8 + 1680) = v57;
          v58 = AV1_Syntax::get_bits(this, "order_hint", *(*(this + 11) + 44) + 1);
          v33 = v58;
          v8 = *(this + 12);
          *(v8 + 76) = v58;
          v18 = *(this + 11);
          if (v58 >> (*(v18 + 44) + 1))
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 0xFFFFFFFFLL;
            }

            goto LABEL_192;
          }

          *(v8 + 84) = v58;
          if ((*(v8 + 140) & 1) == 0 && !*(v8 + 2948))
          {
            v59 = AV1_Syntax::get_bits(this, "primary_ref_frame", 3u);
            v8 = *(this + 12);
            *(v8 + 152) = v59;
            if (v59 > 7)
            {
              v33 = v59;
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                return 0xFFFFFFFFLL;
              }

              goto LABEL_192;
            }

            v18 = *(this + 11);
          }

          goto LABEL_28;
        }

        v29 = *(v18 + 20);
        if (*(this + 3875) || !*(v4 + 68) && *(v8 + 132))
        {
          v30 = 0;
          v31 = 0;
        }

        else
        {
          v31 = *(v8 + 172);
          v30 = 1;
        }

        v44 = *(v18 + 24);
        v45 = AV1_Syntax::get_bits(this, "current_frame_id", *(v18 + 20));
        v46 = v45;
        v8 = *(this + 12);
        *(v8 + 172) = v45;
        if (v45 < 0 || v45 >> v29)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_352;
        }

        if (v30)
        {
          if (v45 == v31)
          {
            return 0xFFFFFFFFLL;
          }

          v47 = 1 << v29;
          v48 = v45 <= v31 ? 1 << v29 : 0;
          if (v45 - v31 + v48 >= 1 << (v29 - 1))
          {
            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          v47 = 1 << v29;
        }

        v50 = 0;
        v51 = 1 << v44;
        v52 = v47 - (1 << v44);
        while (1)
        {
          v53 = *(v8 + 172);
          v54 = *(v8 + v50 + 4);
          if (v53 - v51 < 1)
          {
            if (v54 <= v53 || v54 >= v52 + v53)
            {
              goto LABEL_102;
            }
          }

          else
          {
            v55 = v54 > v53 || v54 < v53 - v51;
            if (!v55)
            {
              goto LABEL_102;
            }
          }

          *(v8 + v50 + 36) = 0;
LABEL_102:
          v50 += 4;
          if (v50 == 32)
          {
            goto LABEL_109;
          }
        }
      }
    }

    else
    {
      *(v8 + 142) = v9 != 0;
      if (!v9)
      {
        goto LABEL_11;
      }
    }

    v16 = *(*(this + 11) + 59);
    if (v16 == 2)
    {
      v17 = AV1_Syntax::get_bits(this, "force_integer_mv", 1u) != 0;
      v8 = *(this + 12);
    }

    else
    {
      v17 = v16 != 0;
    }

    *(v8 + 148) = v17;
    goto LABEL_27;
  }

  v15 = AV1_Syntax::get_bits(this, "show_existing_frame", 1u);
  **(this + 12) = v15;
  *(this + 3876) = 0;
  if (!v15)
  {
    v34 = AV1_Syntax::get_bits(this, "frame_type", 2u);
    v33 = v34;
    *(v4 + 68) = v34;
    if (v34 >= 4)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_192;
    }

    v40 = v34 == 2 || v34 == 0;
    *(*(this + 12) + 2948) = v40;
    if (*(this + 3874))
    {
      if (v34)
      {
        return 0xFFFFFFFFLL;
      }

      *(this + 1937) = 0x100000000;
    }

    v41 = AV1_Syntax::get_bits(this, "show_frame", 1u);
    v42 = v41;
    v6 = *(this + 12);
    *(v6 + 132) = v41;
    if (v41)
    {
      v43 = *(v6 + 68);
    }

    else
    {
      *(this + 3877) = 1;
      v43 = *(v6 + 68);
      if (!v43)
      {
        *(this + 3878) = 1;
        goto LABEL_220;
      }
    }

    if (v43 == 3)
    {
      *(this + 3879) = 1;
      *(this + 3880) = v41 == 0;
    }

LABEL_220:
    v100 = *(this + 11);
    v101 = *(v4 + 68);
    if (*(v100 + 57))
    {
      result = 0xFFFFFFFFLL;
      if (!v42 || v101)
      {
        return result;
      }

      *(v6 + 136) = 0;
    }

    else
    {
      *(v6 + 136) = v101 != 0;
      if (!v41)
      {
        v102 = AV1_Syntax::get_bits(this, "showable_frame", 1u);
        v6 = *(this + 12);
        *(v6 + 136) = v102;
LABEL_229:
        *(*(v6 + 120) + 1084) = *(v6 + 136);
        v103 = *(v6 + 68);
        if (v103 == 3 || !v103 && *(v6 + 132))
        {
          v104 = 1;
        }

        else
        {
          v104 = AV1_Syntax::get_bits(this, "error_resilient_mode", 1u) != 0;
          v6 = *(this + 12);
        }

        *(v6 + 140) = v104;
        goto LABEL_6;
      }
    }

    if (*(v100 + 268) && !*(v100 + 260))
    {
      AV1_Syntax::temporal_point_info(this);
      v6 = *(this + 12);
    }

    goto LABEL_229;
  }

  if (*(this + 3874))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v151 = "uncompressed_header";
      v152 = 1024;
      v153 = 1614;
      v11 = MEMORY[0x277D86220];
      v12 = "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n";
      goto LABEL_14;
    }

    return 0xFFFFFFFFLL;
  }

  v35 = AV1_Syntax::get_bits(this, "frame_to_show_map_idx", 3u);
  v36 = v35;
  v37 = *(this + 12);
  *(v37 + 1672) = v35;
  if ((v35 & 0xF8) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v151 = "uncompressed_header";
      v152 = 1024;
      v153 = v36;
      v11 = MEMORY[0x277D86220];
      v12 = "AppleAVD: %s: value %d out of range!\n";
      goto LABEL_14;
    }

    return 0xFFFFFFFFLL;
  }

  v60 = *(v37 + 8 * (v35 & 7) + 1848);
  if (!v60)
  {
    if ((*(this + 15526) & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 136315138;
    v151 = "uncompressed_header";
    v11 = MEMORY[0x277D86220];
    v12 = "AppleAVD: %s: Unsupported bitstream. Buffer does not contain a decoded frame.\n";
    goto LABEL_196;
  }

  v61 = *(this + 11);
  if (*(v61 + 268) && !*(v61 + 260))
  {
    v35 = AV1_Syntax::temporal_point_info(this);
    v61 = *(this + 11);
  }

  if (*(v61 + 16))
  {
    v62 = *(v61 + 20);
    v35 = AV1_Syntax::get_bits(this, "display_frame_id", v62);
    v46 = v35;
    v63 = *(this + 12);
    *(v63 + 1676) = v35;
    if ((v35 & 0x80000000) != 0 || v35 >> v62)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_352;
      }

      return 0xFFFFFFFFLL;
    }

    v64 = v63 + 4 * *(v63 + 1672);
    if (v35 != *(v64 + 4) || !*(v64 + 36))
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v63 = *(this + 12);
  }

  if (**(v63 + 120) != 1)
  {
    v35 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v35)
    {
      *buf = 136315394;
      v151 = "uncompressed_header";
      v152 = 1024;
      v153 = 1646;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
    }
  }

  if (*v60 <= 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v151 = "uncompressed_header";
      v152 = 1024;
      v153 = 1649;
      v11 = MEMORY[0x277D86220];
      v12 = "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n";
      goto LABEL_14;
    }

    return 0xFFFFFFFFLL;
  }

  AV1_Syntax::assign_frame_buffer(v35, (*(this + 12) + 120), v60);
  *(this + 3876) = v60[486] == 0;
  v99 = *(this + 12);
  *(v99 + 396) = 0;
  *(v99 + 132) = 1;
  if (!v60[271])
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 3876))
  {
    v60[271] = 0;
  }

  memcpy((v99 + 2296), v60 + 273, 0x28CuLL);
  if (*(this + 3876))
  {
    AV1_Syntax::show_existing_frame_reset(this);
    return 0;
  }

  else
  {
    result = 0;
    *(v4 + 104) = 0;
  }

  return result;
}

uint64_t AV1_Syntax::temporal_point_info(AV1_Syntax *this)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(*(this + 11) + 278);
  bits = AV1_Syntax::get_bits(this, "frame_presentation_time", v2);
  *(*(this + 12) + 344) = bits;
  if (!(bits >> v2))
  {
    return 0;
  }

  v4 = bits;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "temporal_point_info";
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: value %d out of range!\n", &v6, 0x12u);
  }

  return 0xFFFFFFFFLL;
}

double AV1_Syntax::frame_size(AV1_Syntax *this)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *(this + 11);
  if (!*(*(this + 12) + 1680))
  {
    v11 = v2[2];
    v26 = v2[3];
    v27 = v11;
    goto LABEL_9;
  }

  v4 = *v2;
  v3 = v2[1];
  bits = AV1_Syntax::get_bits(this, "frame_width_minus_1", *v2);
  v6 = bits + 1;
  v27 = bits + 1;
  if (bits > 0x7FFFFFFE || v6 >> v4 != 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return result;
    }

    *buf = 136315394;
    v29 = "frame_size";
    v30 = 1024;
    v31 = v6;
    v9 = MEMORY[0x277D86220];
    v10 = "AppleAVD: %s: value %d out of range!\n";
LABEL_18:
    v19 = 18;
LABEL_19:
    _os_log_impl(&dword_277606000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, v19);
    return result;
  }

  v16 = AV1_Syntax::get_bits(this, "frame_height_minus_1", v3);
  v17 = v16 + 1;
  v26 = v16 + 1;
  if (v16 > 0x7FFFFFFE || v17 >> v3 != 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return result;
    }

    *buf = 136315394;
    v29 = "frame_size";
    v30 = 1024;
    v31 = v17;
    v9 = MEMORY[0x277D86220];
    v10 = "AppleAVD: %s: value %d out of range!\n";
    goto LABEL_18;
  }

  v25 = *(this + 11);
  if (v6 <= *(v25 + 8) && v17 <= *(v25 + 12))
  {
LABEL_9:
    AV1_Syntax::superres_params(this, &v27, &v26);
    v13 = v26;
    v12 = v27;
    v14 = *(this + 12);
    if (*(v14 + 376) == v27 && *(v14 + 380) == v26)
    {
      v15 = *(v14 + 388);
    }

    else
    {
      *(v14 + 384) = ((v27 + 7) >> 2) & 0xFFFFFFFE;
      v15 = ((v13 + 7) >> 2) & 0xFFFFFFFE;
      *(v14 + 388) = v15;
      *(v14 + 376) = v12;
      *(v14 + 380) = v13;
    }

    v20 = *(v14 + 120);
    if (v20[179] == v15)
    {
      v21 = *(v14 + 384);
      if (v20[180] == v21)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v21 = *(v14 + 384);
    }

    v20[179] = v15;
    v20[180] = v21;
LABEL_27:
    v20[181] = v12;
    v20[182] = v13;
    AV1_Syntax::render_size(this);
    *(*(*(this + 12) + 120) + 1760) = *(*(this + 12) + 364);
    *(*(*(this + 12) + 120) + 1768) = *(*(this + 12) + 368);
    v22 = *(this + 11);
    v23 = *(this + 12);
    v24 = *(v23 + 120);
    *(v24 + 1888) = *(v22 + 100);
    *(v24 + 1896) = *(v22 + 76);
    result = *(v22 + 84);
    *(v24 + 1900) = result;
    *(v24 + 1908) = *(v22 + 92);
    *(v24 + 1912) = *(v22 + 81);
    *(v24 + 1916) = *(v22 + 108);
    *(v24 + 1920) = *(v22 + 96);
    *(v24 + 1924) = *(v23 + 356);
    *(v24 + 1928) = *(v23 + 360);
    return result;
  }

  if ((*(this + 15526) & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v29 = "frame_size";
    v30 = 1024;
    v31 = v6;
    v32 = 1024;
    v33 = v17;
    v9 = MEMORY[0x277D86220];
    v10 = "AppleAVD: %s: Frame dimensions are larger than the maximum values: width %d height %d\n";
    v19 = 24;
    goto LABEL_19;
  }

  return result;
}

uint64_t AV1_Syntax::set_frame_refs(AV1_Syntax *this)
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = *(this + 11);
  v2 = *(this + 12);
  v4 = *(v2 + 1684);
  v5 = *(v2 + 1688);
  if (!*(v3 + 40) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v63 = "set_frame_refs";
    v64 = 1024;
    v65[0] = 5013;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
    v3 = *(this + 11);
  }

  v6 = *(v3 + 44);
  if (v6 < 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v63 = "set_frame_refs";
    v64 = 1024;
    v65[0] = 5014;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
    v6 = *(*(this + 11) + 44);
  }

  v7 = 0;
  v8 = 0;
  v50 = *(*(this + 12) + 76);
  v51 = 1 << v6;
  v58 = 0;
  v59 = 0;
  v61 = 0;
  v60 = 0;
  v47 = v5;
  v48 = v4;
  v9 = 24 * v5;
  v10 = 24 * v4;
  v11 = -1;
  v49 = -1;
  do
  {
    v12 = &buf[v7];
    *v12 = v8;
    *(v12 + 4) = -1;
    v13 = *(*(this + 12) + 8 * v8 + 1848);
    *(v12 + 1) = v13;
    if (v13)
    {
      if (*v13 <= 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v52 = 136315394;
        v53 = "set_frame_refs";
        v54 = 1024;
        v55 = 5033;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", v52, 0x12u);
      }

      v14 = v13[1];
      if (v14 == -1)
      {
        *(v12 + 4) = -1;
      }

      else
      {
        relative_dist = AV1_Syntax::get_relative_dist(this, (*(this + 11) + 40), v14, v50);
        *(v12 + 4) = relative_dist + v51;
        if (relative_dist + v51 <= -2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v52 = 136315394;
          v53 = "set_frame_refs";
          v54 = 1024;
          v55 = 5037;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", v52, 0x12u);
        }
      }

      if (v10 == v7)
      {
        v11 = *(v12 + 4);
      }

      if (v9 == v7)
      {
        v49 = *(v12 + 4);
      }
    }

    ++v8;
    v7 += 24;
  }

  while (v7 != 192);
  result = 0xFFFFFFFFLL;
  if (v11 == -1 || v11 >= v51)
  {
    return result;
  }

  if ((v49 == -1 || v49 >= v51) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v52 = 136315394;
    v53 = "set_frame_refs";
    v54 = 1024;
    v55 = 5052;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", v52, 0x12u);
  }

  qsort(buf, 8uLL, 0x18uLL, AV1_Syntax::set_frame_refs(void)::{lambda(void const*,void const*)#1}::__invoke);
  v17 = 0;
  v18 = 0;
  v19 = (v65 + 2);
  do
  {
    v21 = *v19;
    v19 += 6;
    v20 = v21;
    if (v21 == -1)
    {
      ++v18;
    }

    else if (v20 >= v51)
    {
      v22 = ~v17;
      goto LABEL_35;
    }

    --v17;
  }

  while (v17 != -8);
  v22 = 7;
LABEL_35:
  v23 = 0;
  v24 = MEMORY[0x277D86220];
  do
  {
    if ((~*(this + 3881) & 0x80002) == 0 && os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(*(this + 12) + 4 * v23 + 1692);
      *v52 = 136315650;
      v53 = "set_frame_refs";
      v54 = 1024;
      v55 = v23;
      v56 = 1024;
      v57 = v25;
      _os_log_impl(&dword_277606000, v24, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: begin ref_frame_idx[%d] = %d\n", v52, 0x18u);
    }

    ++v23;
  }

  while (v23 != 7);
  v26 = v22 + 1;
  if (v22 >= 7)
  {
    v27 = 7;
  }

  else
  {
    *(*(this + 12) + 1716) = *(&v65[38] + 2);
    v61 = 1;
    v27 = 6;
  }

  if (v22 < v27)
  {
    *(*(this + 12) + 1708) = *&buf[24 * v26];
    LODWORD(v60) = 1;
    LODWORD(v26) = v22 + 2;
  }

  if (v26 <= v27)
  {
    *(*(this + 12) + 1712) = *&buf[24 * v26];
    HIDWORD(v60) = 1;
  }

  if (v18 <= v22)
  {
    v28 = 0;
    v29 = 0;
    v30 = &buf[24 * v18];
    v31 = v22 - v18 + 1;
    do
    {
      v32 = *v30;
      if (*v30 == v48)
      {
        *(*(this + 12) + 1692) = v48;
        v32 = *v30;
        v29 = 1;
      }

      if (v32 == v47)
      {
        *(*(this + 12) + 1704) = v47;
        v28 = 1;
      }

      v30 += 24;
      --v31;
    }

    while (v31);
    HIDWORD(v59) = v28;
    LODWORD(v58) = v29;
    if (v29 == 1 && v28 == 1)
    {
      goto LABEL_59;
    }
  }

  else
  {
    LODWORD(v58) = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v52 = 136315394;
    v53 = "set_frame_refs";
    v54 = 1024;
    v55 = 5169;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", v52, 0x12u);
  }

LABEL_59:
  v33 = 0;
  while (1)
  {
    v34 = AV1_Syntax::set_frame_refs(void)::ref_frame_list[v33] - 1;
    if (*(&v58 + v34) != 1)
    {
      break;
    }

LABEL_70:
    if (++v33 == 5)
    {
      goto LABEL_76;
    }
  }

  if (v18 <= v22)
  {
    v35 = v22 << 32;
    v36 = &buf[24 * v22];
    v37 = v22 + 1;
    v22 = (v22 - 1);
    while (1)
    {
      v39 = *v36;
      v36 -= 24;
      v38 = v39;
      if (v39 != v48 && v38 != v47)
      {
        break;
      }

      v35 -= 0x100000000;
      v22 = (v22 - 1);
      if (--v37 <= v18)
      {
        goto LABEL_72;
      }
    }

    *(*(this + 12) + 4 * v34 + 1692) = *&buf[24 * SHIDWORD(v35)];
    *(&v58 + v34) = 1;
    goto LABEL_70;
  }

LABEL_72:
  if (v33 <= 4)
  {
    do
    {
      v41 = AV1_Syntax::set_frame_refs(void)::ref_frame_list[v33] - 1;
      if (*(&v58 + v41) != 1)
      {
        *(*(this + 12) + 4 * v41 + 1692) = *&buf[24 * v18];
        *(&v58 + v41) = 1;
      }

      ++v33;
    }

    while (v33 != 5);
  }

LABEL_76:
  v42 = 0;
  v43 = MEMORY[0x277D86220];
  do
  {
    if (*(&v58 + v42) != 1 && os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *v52 = 136315394;
      v53 = "set_frame_refs";
      v54 = 1024;
      v55 = 5223;
      _os_log_impl(&dword_277606000, v43, OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", v52, 0x12u);
    }

    v42 += 4;
  }

  while (v42 != 28);
  v44 = 0;
  v45 = MEMORY[0x277D86220];
  do
  {
    if ((~*(this + 3881) & 0x80002) == 0 && os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = *(*(this + 12) + 4 * v44 + 1692);
      *v52 = 136315650;
      v53 = "set_frame_refs";
      v54 = 1024;
      v55 = v44;
      v56 = 1024;
      v57 = v46;
      _os_log_impl(&dword_277606000, v45, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: end ref_frame_idx[%d] = %d\n", v52, 0x18u);
    }

    ++v44;
  }

  while (v44 != 7);
  return 0;
}

double AV1_Syntax::frame_size_with_refs(AV1_Syntax *this)
{
  v44 = *MEMORY[0x277D85DE8];
  *v39 = 0;
  v2 = 1692;
  do
  {
    if (AV1_Syntax::get_bits(this, "found_ref", 1u))
    {
      v12 = *(this + 12);
      v13 = *(v12 + v2);
      if (v13 == -1 || (v14 = *(v12 + 8 * v13 + 1848)) == 0)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return result;
        }

        *buf = 136315394;
        v41 = "frame_size_with_refs";
        v42 = 1024;
        v43 = 3457;
        v10 = MEMORY[0x277D86220];
        v11 = "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n";
        goto LABEL_23;
      }

      v15 = v14[440];
      v39[0] = v14[442];
      v39[1] = v15;
      *(v12 + 356) = v14[481];
      *(v12 + 360) = v14[482];
      AV1_Syntax::superres_params(this, &v39[1], v39);
      v16 = v39[0];
      v17 = v39[1];
      v18 = *(this + 12);
      if (*(v18 + 376) == v39[1] && *(v18 + 380) == v39[0])
      {
        v19 = *(v18 + 388);
      }

      else
      {
        *(v18 + 384) = ((v39[1] + 7) >> 2) & 0xFFFFFFFE;
        v19 = ((v16 + 7) >> 2) & 0xFFFFFFFE;
        *(v18 + 388) = v19;
        *(v18 + 376) = v17;
        *(v18 + 380) = v16;
      }

      v23 = *(v18 + 120);
      if (v23[179] == v19)
      {
        v24 = *(v18 + 384);
        if (v23[180] == v24)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v24 = *(v18 + 384);
      }

      v23[179] = v19;
      v23[180] = v24;
LABEL_34:
      v23[181] = v17;
      v23[182] = v16;
      goto LABEL_42;
    }

    v2 += 4;
  }

  while (v2 != 1720);
  v3 = *(this + 11);
  v5 = *v3;
  v4 = v3[1];
  bits = AV1_Syntax::get_bits(this, "frame_width_minus_1", *v3);
  v7 = bits + 1;
  v39[1] = bits + 1;
  if (bits > 0x7FFFFFFE || v7 >> v5 != 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return result;
    }

    *buf = 136315394;
    v41 = "frame_size_with_refs";
    v42 = 1024;
    v43 = v7;
    v10 = MEMORY[0x277D86220];
    v11 = "AppleAVD: %s: value %d out of range!\n";
LABEL_23:
    _os_log_impl(&dword_277606000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0x12u);
    return result;
  }

  v20 = AV1_Syntax::get_bits(this, "frame_height_minus_1", v4);
  v21 = v20 + 1;
  v39[0] = v20 + 1;
  if (v20 > 0x7FFFFFFE || v21 >> v4 != 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return result;
    }

    *buf = 136315394;
    v41 = "frame_size_with_refs";
    v42 = 1024;
    v43 = v21;
    v10 = MEMORY[0x277D86220];
    v11 = "AppleAVD: %s: value %d out of range!\n";
    goto LABEL_23;
  }

  AV1_Syntax::superres_params(this, &v39[1], v39);
  v26 = v39[0];
  v25 = v39[1];
  v27 = *(this + 12);
  if (*(v27 + 376) == v39[1] && *(v27 + 380) == v39[0])
  {
    v28 = *(v27 + 388);
  }

  else
  {
    *(v27 + 384) = ((v39[1] + 7) >> 2) & 0xFFFFFFFE;
    v28 = ((v26 + 7) >> 2) & 0xFFFFFFFE;
    *(v27 + 388) = v28;
    *(v27 + 376) = v25;
    *(v27 + 380) = v26;
  }

  v29 = *(v27 + 120);
  if (v29[179] == v28)
  {
    v30 = *(v27 + 384);
    if (v29[180] == v30)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v30 = *(v27 + 384);
  }

  v29[179] = v28;
  v29[180] = v30;
LABEL_41:
  v29[181] = v25;
  v29[182] = v26;
  AV1_Syntax::render_size(this);
  v16 = v39[0];
  v17 = v39[1];
LABEL_42:
  if ((v17 < 1 || v16 <= 0) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v41 = "frame_size_with_refs";
    v42 = 1024;
    v43 = 3490;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
  }

  v31 = 0;
  v32 = *(this + 12);
  while (1)
  {
    v33 = *(v32 + 1692 + v31);
    if (v33 != -1)
    {
      v34 = *(v32 + 1848 + 8 * v33);
      if (v34)
      {
        v35 = *(this + 11);
        if (v34[474] != v35[19] || v34[472] != v35[25] || v34[473] != v35[26])
        {
          break;
        }
      }
    }

    v31 += 4;
    if (v31 == 28)
    {
      *(*(v32 + 120) + 1760) = *(v32 + 364);
      *(*(*(this + 12) + 120) + 1768) = *(*(this + 12) + 368);
      v36 = *(this + 11);
      v37 = *(this + 12);
      v38 = *(v37 + 120);
      *(v38 + 1888) = *(v36 + 100);
      *(v38 + 1896) = *(v36 + 76);
      result = *(v36 + 84);
      *(v38 + 1900) = result;
      *(v38 + 1908) = *(v36 + 92);
      *(v38 + 1912) = *(v36 + 81);
      *(v38 + 1916) = *(v36 + 108);
      *(v38 + 1920) = *(v36 + 96);
      *(v38 + 1924) = *(v37 + 356);
      *(v38 + 1928) = *(v37 + 360);
      return result;
    }
  }

  return result;
}

uint64_t AV1_Syntax::read_interpolation_filter(AV1_Syntax *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (AV1_Syntax::get_bits(this, "is_filter_switchable", 1u))
  {
    result = 0;
    *(*(this + 12) + 392) = 4;
  }

  else
  {
    bits = AV1_Syntax::get_bits(this, "interpolation_filter", 2u);
    *(*(this + 12) + 392) = bits;
    if ((bits & 0xFC) != 0)
    {
      v4 = bits;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315394;
        v6 = "read_interpolation_filter";
        v7 = 1024;
        v8 = v4;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: value %d out of range!\n", &v5, 0x12u);
      }

      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AV1_Syntax::tile_info(AV1_Syntax *this)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(this + 12);
  AV1_Syntax::read_tile_info_max_tile(this);
  *(*(this + 12) + 1356) = 0;
  if (v2[191] * v2[192] >= 2)
  {
    bits = AV1_Syntax::get_bits(this, "context_update_tile_id", v2[198] + v2[197]);
    v4 = bits;
    *(*(this + 12) + 1356) = bits;
    if (bits < 0 || bits >> (v2[198] + *(v2 + 788)))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_5;
    }

    if (bits >= v2[191] * v2[192])
    {
      if ((*(this + 15526) & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      v9 = 136315394;
      v10 = "tile_info";
      v11 = 1024;
      v12 = v4;
      v5 = MEMORY[0x277D86220];
      v6 = "AppleAVD: %s: Corrupted frame. Invalid context_update_tile_id %d \n";
      goto LABEL_6;
    }

    v8 = AV1_Syntax::get_bits(this, "tile_size_bytes_minus_1", 2u);
    v4 = v8 + 1;
    *(*(this + 12) + 1352) = v8 + 1;
    if (v8 >= 4)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

LABEL_5:
      v9 = 136315394;
      v10 = "tile_info";
      v11 = 1024;
      v12 = v4;
      v5 = MEMORY[0x277D86220];
      v6 = "AppleAVD: %s: value %d out of range!\n";
LABEL_6:
      _os_log_impl(&dword_277606000, v5, OS_LOG_TYPE_DEFAULT, v6, &v9, 0x12u);
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

uint64_t AV1_Syntax::quantization_params(AV1_Syntax *this)
{
  v30 = *MEMORY[0x277D85DE8];
  bits = AV1_Syntax::get_bits(this, "base_q_idx", 8u);
  v3 = bits;
  *(*(this + 12) + 444) = bits;
  if (bits >= 0x100)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_72;
    }

    return 0xFFFFFFFFLL;
  }

  if (bits > 0x14)
  {
    if (bits > 0x3C)
    {
      if (bits > 0x78)
      {
        v4 = 3;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 1;
    }

    *(this + 3058) = v4;
  }

  else
  {
    *(this + 3058) = 0;
  }

  if (AV1_Syntax::get_bits(this, "delta_coded", 1u))
  {
    v5 = AV1_Syntax::get_bits(this, "delta_q", 7u);
    v6 = ((v5 << 25 >> 31) & 0xFFFFFF80) + v5;
    if (v6 != (((v5 << 25 >> 31) & 0x80) + v5))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v26 = 136315394;
        v27 = "read_delta_q";
        v28 = 1024;
        v29 = v6;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: value %d out of range!\n", &v26, 0x12u);
      }

      v6 = -1;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(this + 12);
  *(v7 + 448) = v6;
  if (*(v7 + 440) < 2)
  {
    *(v7 + 460) = 0;
    *(v7 + 452) = 0;
    goto LABEL_61;
  }

  if (!*(*(this + 11) + 112))
  {
    if (AV1_Syntax::get_bits(this, "delta_coded", 1u))
    {
      v11 = AV1_Syntax::get_bits(this, "delta_q", 7u);
      v12 = ((v11 << 25 >> 31) & 0xFFFFFF80) + v11;
      if (v12 != (((v11 << 25 >> 31) & 0x80) + v11))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v26 = 136315394;
          v27 = "read_delta_q";
          v28 = 1024;
          v29 = v12;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: value %d out of range!\n", &v26, 0x12u);
        }

        v12 = -1;
      }
    }

    else
    {
      v12 = 0;
    }

    *(*(this + 12) + 452) = v12;
    if (AV1_Syntax::get_bits(this, "delta_coded", 1u))
    {
      v20 = AV1_Syntax::get_bits(this, "delta_q", 7u);
      v14 = ((v20 << 25 >> 31) & 0xFFFFFF80) + v20;
      if (v14 != (((v20 << 25 >> 31) & 0x80) + v20))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v26 = 136315394;
          v27 = "read_delta_q";
          v28 = 1024;
          v29 = v14;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: value %d out of range!\n", &v26, 0x12u);
        }

        v14 = -1;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = *(this + 12);
    v15[115] = v14;
    goto LABEL_60;
  }

  v8 = AV1_Syntax::get_bits(this, "diff_uv_delta", 1u);
  if (AV1_Syntax::get_bits(this, "delta_coded", 1u))
  {
    v9 = AV1_Syntax::get_bits(this, "delta_q", 7u);
    v10 = ((v9 << 25 >> 31) & 0xFFFFFF80) + v9;
    if (v10 != (((v9 << 25 >> 31) & 0x80) + v9))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v26 = 136315394;
        v27 = "read_delta_q";
        v28 = 1024;
        v29 = v10;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: value %d out of range!\n", &v26, 0x12u);
      }

      v10 = -1;
    }
  }

  else
  {
    v10 = 0;
  }

  *(*(this + 12) + 452) = v10;
  if (AV1_Syntax::get_bits(this, "delta_coded", 1u))
  {
    v13 = AV1_Syntax::get_bits(this, "delta_q", 7u);
    v14 = ((v13 << 25 >> 31) & 0xFFFFFF80) + v13;
    if (v14 != (((v13 << 25 >> 31) & 0x80) + v13))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v26 = 136315394;
        v27 = "read_delta_q";
        v28 = 1024;
        v29 = v14;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: value %d out of range!\n", &v26, 0x12u);
      }

      v14 = -1;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = *(this + 12);
  v15[115] = v14;
  if (!v8)
  {
LABEL_60:
    v15[114] = v15[113];
    v15[116] = v14;
    goto LABEL_61;
  }

  if (AV1_Syntax::get_bits(this, "delta_coded", 1u))
  {
    v16 = AV1_Syntax::get_bits(this, "delta_q", 7u);
    v17 = ((v16 << 25 >> 31) & 0xFFFFFF80) + v16;
    if (v17 != (((v16 << 25 >> 31) & 0x80) + v16))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v26 = 136315394;
        v27 = "read_delta_q";
        v28 = 1024;
        v29 = v17;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: value %d out of range!\n", &v26, 0x12u);
      }

      v17 = -1;
    }
  }

  else
  {
    v17 = 0;
  }

  *(*(this + 12) + 456) = v17;
  if (AV1_Syntax::get_bits(this, "delta_coded", 1u))
  {
    v18 = AV1_Syntax::get_bits(this, "delta_q", 7u);
    v19 = ((v18 << 25 >> 31) & 0xFFFFFF80) + v18;
    if (v19 != (((v18 << 25 >> 31) & 0x80) + v18))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v26 = 136315394;
        v27 = "read_delta_q";
        v28 = 1024;
        v29 = v19;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: value %d out of range!\n", &v26, 0x12u);
      }

      v19 = -1;
    }
  }

  else
  {
    v19 = 0;
  }

  *(*(this + 12) + 464) = v19;
LABEL_61:
  result = AV1_Syntax::get_bits(this, "using_qmatrix", 1u);
  v22 = *(this + 12);
  *(v22 + 468) = result != 0;
  if (!result)
  {
    *(v22 + 472) = 0;
    *(v22 + 480) = 0;
    return result;
  }

  v23 = AV1_Syntax::get_bits(this, "qm_y", 4u);
  *(*(this + 12) + 472) = v23;
  if (v23 >= 0x10)
  {
    v3 = v23;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_72;
    }

    return 0xFFFFFFFFLL;
  }

  v3 = AV1_Syntax::get_bits(this, "qm_u", 4u);
  v24 = *(this + 12);
  *(v24 + 476) = v3;
  if (v3 >= 0x10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_72;
    }

    return 0xFFFFFFFFLL;
  }

  if (*(*(this + 11) + 112))
  {
    v25 = AV1_Syntax::get_bits(this, "qm_v", 4u);
    *(*(this + 12) + 480) = v25;
    if (v25 >= 0x10)
    {
      v3 = v25;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
LABEL_72:
        v26 = 136315394;
        v27 = "quantization_params";
        v28 = 1024;
        v29 = v3;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: value %d out of range!\n", &v26, 0x12u);
      }

      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  else
  {
    result = 0;
    *(v24 + 480) = v3;
  }

  return result;
}

double AV1_Syntax::setup_past_independence(AV1_Syntax *this)
{
  v1 = 0;
  v2 = *(this + 12);
  v3 = 279;
  do
  {
    v4 = 8;
    v5 = v3;
    do
    {
      *(v2 + v5 + 214) = 0;
      v2 = *(this + 12);
      *(v2 + 2 * v5++) = 0;
      --v4;
    }

    while (v4);
    ++v1;
    v3 += 8;
  }

  while (v1 != 8);
  result = NAN;
  *(*(v2 + 120) + 1948) = 0xFFFF00FF00000001;
  *(*(*(this + 12) + 120) + 1956) = 0;
  v7 = *(this + 12);
  *(v7 + 416) = 257;
  *(v7 + 426) = 0xFFFF00FF00000001;
  *(*(this + 12) + 436) = 0;
  return result;
}

uint64_t AV1_Syntax::segmentation_params(AV1_Syntax *this)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = *(this + 12);
  *(v2 + 485) = 0;
  *(v2 + 487) = 0;
  bits = AV1_Syntax::get_bits(this, "segmentation_enabled", 1u);
  v4 = *(this + 12);
  *(v4 + 484) = bits;
  if (!bits)
  {
    v5 = 0;
    *(v4 + 492) = 0;
    *(v4 + 484) = 0;
    v6 = 279;
    do
    {
      v7 = 8;
      v8 = v6;
      do
      {
        *(v4 + v8 + 214) = 0;
        v4 = *(this + 12);
        *(v4 + 2 * v8++) = 0;
        --v7;
      }

      while (v7);
      ++v5;
      v6 += 8;
    }

    while (v5 != 8);
    v9 = 0;
    v10 = 0;
    v11 = *(v4 + 120);
    *(v11 + 516) = *(v4 + 488);
    *(v11 + 520) = *(v4 + 492);
    do
    {
      v12 = 8;
      v13 = v9;
      do
      {
        *(v11 + v13 + 521) = *(v4 + v13 + 493);
        v4 = *(this + 12);
        v11 = *(v4 + 120);
        *(v11 + 2 * v13 + 586) = *(v4 + 2 * v13 + 558);
        ++v13;
        --v12;
      }

      while (v12);
      ++v10;
      v9 += 8;
    }

    while (v10 != 8);
    return 0;
  }

  if (*(v4 + 152) == 7)
  {
    *(v4 + 485) = 257;
    *(v4 + 487) = 0;
  }

  else
  {
    v14 = AV1_Syntax::get_bits(this, "segmentation_update_map", 1u);
    v15 = *(this + 12);
    *(v15 + 485) = v14;
    if (v14)
    {
      v16 = AV1_Syntax::get_bits(this, "segmentation_temporal_update", 1u);
      v15 = *(this + 12);
    }

    else
    {
      v16 = 0;
    }

    *(v15 + 487) = v16;
    v17 = AV1_Syntax::get_bits(this, "segmentation_update_data", 1u);
    v4 = *(this + 12);
    *(v4 + 486) = v17;
    if (!v17)
    {
      v40 = *(v4 + 112);
      if (v40)
      {
        v41 = 0;
        v42 = 0;
        *(v4 + 488) = *(v40 + 516);
        *(v4 + 492) = *(v40 + 520);
        do
        {
          v43 = 8;
          v44 = v41;
          do
          {
            *(v4 + v44 + 493) = *(v40 + v44 + 521);
            v4 = *(this + 12);
            v40 = *(v4 + 112);
            *(v4 + 2 * v44 + 558) = *(v40 + 2 * v44 + 586);
            ++v44;
            --v43;
          }

          while (v43);
          ++v42;
          v41 += 8;
        }

        while (v42 != 8);
      }

      goto LABEL_55;
    }
  }

  v18 = 0;
  v19 = 279;
  do
  {
    v20 = 8;
    v21 = v19;
    do
    {
      *(v4 + v21 + 214) = 0;
      v4 = *(this + 12);
      *(v4 + 2 * v21++) = 0;
      --v20;
    }

    while (v20);
    ++v18;
    v19 += 8;
  }

  while (v18 != 8);
  v22 = 0;
  v23 = &segmentation_feature_data_max;
  v24 = &segmentation_feature_bits;
  v25 = 279;
  while (2)
  {
    v50 = v22;
    v26 = 0;
    v27 = v25;
    do
    {
      v28 = AV1_Syntax::get_bits(this, "feature_enabled", 1u);
      *(*(this + 12) + v27 + 214) = v28;
      if (v28 != 1)
      {
        LOWORD(v33) = 0;
        goto LABEL_36;
      }

      v29 = *v24;
      v30 = *v23;
      if (v26 > 4)
      {
        v34 = AV1_Syntax::get_bits(this, "feature_value", *v24);
        v32 = v34;
        if (v34 < 0x100)
        {
          if (v34 >= v30)
          {
            LOWORD(v33) = v30;
          }

          else
          {
            LOWORD(v33) = v34;
          }

          goto LABEL_36;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_48;
        }

        return 0xFFFFFFFFLL;
      }

      v31 = AV1_Syntax::get_bits(this, "feature_value", v29 + 1);
      v32 = (((v31 >> v29 << 31) >> 31) & (-2 << v29)) + v31;
      if ((v32 - 256) <= 0xFFFFFDFF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
LABEL_48:
          *buf = 136315394;
          v52 = "segmentation_params";
          v53 = 1024;
          v54 = v32;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: value %d out of range!\n", buf, 0x12u);
        }

        return 0xFFFFFFFFLL;
      }

      if (v32 >= v30)
      {
        LOWORD(v33) = v30;
      }

      else
      {
        LOWORD(v33) = v32;
      }

      if (v32 < -v30)
      {
        v33 = -v30;
      }

LABEL_36:
      v4 = *(this + 12);
      *(v4 + 2 * v27) = v33;
      ++v26;
      ++v23;
      ++v24;
      ++v27;
    }

    while (v26 != 8);
    v22 = v50 + 1;
    v25 += 8;
    v23 = &segmentation_feature_data_max;
    v24 = &segmentation_feature_bits;
    if (v50 != 7)
    {
      continue;
    }

    break;
  }

  v35 = 0;
  v36 = 0;
  *(v4 + 492) = 0;
  *(v4 + 488) = 0;
  v37 = v4 + 493;
  do
  {
    for (i = 0; i != 8; ++i)
    {
      if (*(v37 + i))
      {
        v35 |= i > 4;
        *(v4 + 492) = v35;
        *(v4 + 488) = v36;
      }
    }

    ++v36;
    v37 += 8;
  }

  while (v36 != 8);
LABEL_55:
  v45 = 0;
  v46 = 0;
  v47 = *(v4 + 120);
  *(v47 + 516) = *(v4 + 488);
  *(v47 + 520) = *(v4 + 492);
  do
  {
    v48 = 8;
    v49 = v45;
    do
    {
      *(v47 + v49 + 521) = *(v4 + v49 + 493);
      v4 = *(this + 12);
      v47 = *(v4 + 120);
      *(v47 + 2 * v49 + 586) = *(v4 + 2 * v49 + 558);
      ++v49;
      --v48;
    }

    while (v48);
    ++v46;
    v45 += 8;
  }

  while (v46 != 8);
  return 0;
}

uint64_t AV1_Syntax::loop_filter_params(AV1_Syntax *this)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(this + 12);
  if ((*(v2 + 162) & 1) != 0 || *(v2 + 156) == 1)
  {
    result = 0;
    *(*(v2 + 120) + 1948) = 0xFFFF00FF00000001;
    *(*(*(this + 12) + 120) + 1956) = 0;
    return result;
  }

  v4 = *(v2 + 112);
  v5 = (v2 + 426);
  if (v4)
  {
    *v5 = *(v4 + 1948);
    *(*(this + 12) + 436) = *(*(*(this + 12) + 112) + 1956);
  }

  else
  {
    *v5 = 0xFFFF00FF00000001;
    *(*(this + 12) + 436) = 0;
  }

  bits = AV1_Syntax::get_bits(this, "loop_filter_level_0", 6u);
  *(*(this + 12) + 396) = bits;
  if (bits >= 0x40)
  {
    v7 = bits;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    return 0xFFFFFFFFLL;
  }

  v8 = AV1_Syntax::get_bits(this, "loop_filter_level_1", 6u);
  v7 = v8;
  v9 = *(this + 12);
  v9[100] = v8;
  if (v8 >= 0x40)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

LABEL_23:
    v26 = 136315394;
    v27 = "loop_filter_params";
    v28 = 1024;
    v29 = v7;
    v14 = MEMORY[0x277D86220];
LABEL_24:
    _os_log_impl(&dword_277606000, v14, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: value %d out of range!\n", &v26, 0x12u);
    return 0xFFFFFFFFLL;
  }

  if (v9[110] >= 2 && v9[99] | v8)
  {
    v10 = AV1_Syntax::get_bits(this, "loop_filter_level_2", 6u);
    *(*(this + 12) + 404) = v10;
    if (v10 >= 0x40)
    {
      v7 = v10;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_23;
    }

    v11 = AV1_Syntax::get_bits(this, "loop_filter_level_3", 6u);
    *(*(this + 12) + 408) = v11;
    if (v11 >= 0x40)
    {
      v7 = v11;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_23;
    }
  }

  v12 = AV1_Syntax::get_bits(this, "loop_filter_sharpness", 3u);
  v13 = *(this + 12);
  *(v13 + 412) = v12;
  if (v12 >= 8)
  {
    v7 = v12;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    return 0xFFFFFFFFLL;
  }

  *(v13 + 417) = 0;
  v15 = AV1_Syntax::get_bits(this, "loop_filter_delta_enabled", 1u);
  v16 = *(this + 12);
  *(v16 + 416) = v15;
  if (v15)
  {
    v17 = AV1_Syntax::get_bits(this, "loop_filter_delta_update", 1u);
    v16 = *(this + 12);
    *(v16 + 417) = v17;
    if (v17)
    {
      for (i = 418; i != 426; ++i)
      {
        *(*(this + 12) + i) = AV1_Syntax::get_bits(this, "update_ref_delta", 1u);
        if (*(*(this + 12) + i) == 1)
        {
          v19 = AV1_Syntax::get_bits(this, "loop_filter_ref_deltas", 7u);
          *(*(this + 12) + i + 8) = ((2 * v19) & 0x80) + v19;
          v20 = *(*(this + 12) + i + 8);
          if (((v20 - 64) & 0x80) == 0)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 0xFFFFFFFFLL;
            }

            v26 = 136315394;
            v27 = "loop_filter_params";
            v28 = 1024;
            v29 = v20;
            v14 = MEMORY[0x277D86220];
            goto LABEL_24;
          }
        }
      }

      v21 = 0;
      v22 = 1;
      while (1)
      {
        v23 = v22;
        *(*(this + 12) + v21 + 434) = AV1_Syntax::get_bits(this, "update_mode_delta", 1u);
        v16 = *(this + 12);
        if (*(v16 + v21 + 434) == 1)
        {
          v24 = AV1_Syntax::get_bits(this, "loop_filter_mode_deltas", 7u);
          *(*(this + 12) + v21 + 436) = ((2 * v24) & 0x80) + v24;
          v16 = *(this + 12);
          v25 = *(v16 + v21 + 436);
          if (((v25 - 64) & 0x80) == 0)
          {
            break;
          }
        }

        v22 = 0;
        v21 = 1;
        if ((v23 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v26 = 136315394;
        v27 = "loop_filter_params";
        v28 = 1024;
        v29 = v25;
        v14 = MEMORY[0x277D86220];
        goto LABEL_24;
      }

      return 0xFFFFFFFFLL;
    }
  }

LABEL_36:
  result = 0;
  *(*(v16 + 120) + 1948) = *(v16 + 426);
  *(*(*(this + 12) + 120) + 1956) = *(*(this + 12) + 436);
  return result;
}

uint64_t AV1_Syntax::cdef_params(AV1_Syntax *this)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(*(this + 12) + 156))
  {
    return 0;
  }

  bits = AV1_Syntax::get_bits(this, "cdef_damping_minus_3", 2u);
  v4 = bits + 3;
  *(*(this + 12) + 1380) = bits + 3;
  if (bits >= 4)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

LABEL_5:
    v17 = 136315394;
    v18 = "cdef_params";
    v19 = 1024;
    v20 = v4;
    v5 = MEMORY[0x277D86220];
LABEL_27:
    _os_log_impl(&dword_277606000, v5, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: value %d out of range!\n", &v17, 0x12u);
    return 0xFFFFFFFFLL;
  }

  v6 = AV1_Syntax::get_bits(this, "cdef_bits", 2u);
  v4 = v6;
  v7 = *(this + 12);
  *(v7 + 1384) = v6;
  if (v6 >= 4)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_5;
  }

  v8 = 0;
  *(v7 + 1388) = 1 << v6;
  while (1)
  {
    v9 = AV1_Syntax::get_bits(this, "cdef_y_pri_strength", 4u);
    *(*(this + 12) + 4 * v8 + 1392) = v9;
    if (v9 >= 0x10)
    {
      v15 = v9;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_26;
    }

    v10 = AV1_Syntax::get_bits(this, "cdef_y_sec_strength", 2u);
    v11 = *(this + 12);
    v12 = (v11 + 4 * v8);
    v12[364] = v10;
    if (v10 >= 4)
    {
      v15 = v10;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_26;
    }

    if (*(v11 + 440) < 2)
    {
      v12[380] = 0;
      v12[396] = 0;
      goto LABEL_17;
    }

    v13 = AV1_Syntax::get_bits(this, "cdef_uv_pri_strength", 4u);
    *(*(this + 12) + 4 * v8 + 1520) = v13;
    if (v13 >= 0x10)
    {
      v15 = v13;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_26;
    }

    v14 = AV1_Syntax::get_bits(this, "cdef_uv_sec_strength", 2u);
    v11 = *(this + 12);
    *(v11 + 4 * v8 + 1584) = v14;
    if (v14 >= 4)
    {
      break;
    }

LABEL_17:
    if (++v8 >= 1 << *(v11 + 1384))
    {
      return 0;
    }
  }

  v15 = v14;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
LABEL_26:
    v17 = 136315394;
    v18 = "cdef_params";
    v19 = 1024;
    v20 = v15;
    v5 = MEMORY[0x277D86220];
    goto LABEL_27;
  }

  return 0xFFFFFFFFLL;
}