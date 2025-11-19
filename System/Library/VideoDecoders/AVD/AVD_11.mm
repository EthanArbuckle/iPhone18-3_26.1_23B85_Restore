uint64_t CAHDecDaisyHevc::getSWRStride(CAHDecDaisyHevc *this, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(*(this + 32) + 2644);
  *(this + 1676) = 0;
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
        *(this + 3352) = (((2 * ((2863311531u * (a2 + 2)) >> 32)) & 0xFFFFFFFC) + 63) & 0xFFFFFFC0;
        v9 = (2 * ((2863311531u * (2 * a2 / a5 + 5)) >> 32)) & 0xFFFFFFF8;
LABEL_21:
        *(this + 3353) = (v9 + 63) & 0xFFFFFFC0;
        return v5;
      }

      goto LABEL_15;
    }

    v5 = 0;
    *(this + 3352) = (a2 + 63) & 0xFFFFFFC0;
    v10 = 2 * a2;
LABEL_19:
    v9 = v10 / a5;
    goto LABEL_21;
  }

  if (v8 == 4)
  {
    v5 = 0;
    *(this + 3352) = (((2 * ((3435973837u * (a2 + 4)) >> 32)) & 0xFFFFFFF8) + 63) & 0xFFFFFFC0;
    v9 = (2 * ((3435973837u * (2 * a2 / a5 + 9)) >> 32)) & 0xFFFFFFF0;
    goto LABEL_21;
  }

  if (v8 == 8)
  {
    v5 = 0;
    *(this + 3352) = (2 * a2 + 63) & 0xFFFFFFC0;
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

uint64_t CAHDecDaisyHevc::getTileIdxAbove(CAHDecDaisyHevc *this, unsigned int a2)
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

uint64_t CAHDecDaisyHevc::populateAvdWork(CAHDecDaisyHevc *this, unsigned int a2)
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
  v20 = v4 + 223828;
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
  v106 = v4 + 3376;
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
            *(&buf[1] + 6) = 1939;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v54 = v123;
          }

          result = CAHDec::addToPatcherList(this, v53, v52 + 223850, HIDWORD(v122) + v54, 0x3FFFFFFFFFFLL, 32, -1, 2);
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
            *(&buf[1] + 6) = 1940;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v55 = v123;
          }

          result = CAHDec::addToPatcherList(this, v53, v52 + 223852, HIDWORD(v122) + v55, 0xFFFFFFFFLL, 0, -1, 4);
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
          *(&buf[1] + 6) = 1863;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v46 = v123;
        }

        result = CAHDec::addToPatcherList(this, v45, v44 + 223850, HIDWORD(v122) + v46, 0x3FFFFFFFFFFLL, 32, -1, 2);
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
        *(&buf[1] + 6) = 1864;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v49 = v123;
      }

      result = CAHDec::addToPatcherList(this, v45, v44 + 223852, v47 + v49, 0xFFFFFFFFLL, 0, -1, 4);
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
      v78 = v74 + 223850;
      v79 = v123;
      if ((v123 + v76) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "populateAvdWork";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = 2035;
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
      *(v90 + 4 * v80) = (v80 - v95) * v93 + 223828;
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
    *(&buf[1] + 6) = 2034;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v75 = v123;
  }

  result = CAHDec::addToPatcherList(this, v73, v74 + 223850, HIDWORD(v122) + v75, 0x3FFFFFFFFFFLL, 32, -1, 2);
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

uint64_t CAHDecDaisyHevc::allocWorkBuf_SPS(CAHDecDaisyHevc *this, _DWORD *a2)
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

  *(this + 3344) = v26;
  *(this + 3345) = v40;
  *(this + 1673) = 0;
  v41 = (v17 & 0xFFFFFFF0) * (v17 >> 4) * v4[600];
  *(this + 3350) = v41;
  *(this + 3349) = v4[602] * v41;
  if (*(*(this + 32) + 2648))
  {
LABEL_44:
    v46 = (this + 8976);
    v47 = 16;
    while (1)
    {
      v48 = *(this + 3349);
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
    v53 = 2301;
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
      v44 = *(this + 3344);
      if (v44 && CAVDDecoder::allocAVDMem(*(this + 32), v42 - 176, v44, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_56;
        }

        v50 = 136315650;
        v51 = "allocWorkBuf_SPS";
        v52 = 1024;
        v53 = 2292;
        v54 = 2080;
        *v55 = "HdrY";
        v49 = MEMORY[0x277D86220];
        goto LABEL_55;
      }

      v45 = *(this + 3345);
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
    v53 = 2293;
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

uint64_t CAHDecDaisyHevc::allocWorkBuf_PPS(CAHDecDaisyHevc *this, _DWORD *a2, _DWORD *a3, void *a4)
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
  if (v32 && CAVDDecoder::allocAVDMem(v25, this + 737, v32, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2475;
      v75 = 2080;
      v76 = "IpAbove";
      v60 = MEMORY[0x277D86220];
LABEL_128:
      _os_log_impl(&dword_277606000, v60, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", buf, 0x1Cu);
      goto LABEL_129;
    }

    goto LABEL_129;
  }

  if ((v12 + 30) >= 0x1F && CAVDDecoder::allocAVDMem(*(this + 32), this + 550, 20 * (v26 >> 4), 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2476;
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
  if (v62 && CAVDDecoder::allocAVDMem(*(this + 32), this + 748, v62, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2477;
      v75 = 2080;
      v76 = "LfAbovePix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  v63 = 36 * v61 + (v27 << 7);
  if (v63 && CAVDDecoder::allocAVDMem(*(this + 32), this + 759, v63, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2478;
      v75 = 2080;
      v76 = "LfAboveInfo";
      v60 = MEMORY[0x277D86220];
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  if (v35 && CAVDDecoder::allocAVDMem(*(this + 32), this + 770, v35, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2479;
      v75 = 2080;
      v76 = "LfLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  if (v34 && CAVDDecoder::allocAVDMem(*(this + 32), this + 781, v34, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2480;
      v75 = 2080;
      v76 = "LfLeftInfo";
      v60 = MEMORY[0x277D86220];
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  if (v24 && CAVDDecoder::allocAVDMem(*(this + 32), this + 792, v24, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2481;
      v75 = 2080;
      v76 = "SwLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  if (v13 && CAVDDecoder::allocAVDMem(*(this + 32), this + 803, v13, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2482;
      v75 = 2080;
      v76 = "AZAbovePix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  if (v69 && CAVDDecoder::allocAVDMem(*(this + 32), this + 814, v69, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2483;
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

  result = CAVDDecoder::allocAVDMem(*(this + 32), this + 825, v64, 7, 1, 0);
  if (result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2485;
      v75 = 2080;
      v76 = "RfAboveInfo";
      v60 = MEMORY[0x277D86220];
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  return result;
}

uint64_t CAHDecDaisyHevc::freeWorkBuf_SPS(uint64_t this)
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

uint64_t *CAHDecDaisyHevc::freeWorkBuf_PPS(uint64_t *this, void *a2)
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

uint64_t CAHDecDaisyHevc::setVPInstrFifo(uint64_t this, int a2)
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

uint64_t createRadishLghDecoder(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "createRadishLghDecoder";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Radish AVD is not supported in this AppleAVD driver!!!", &v2, 0xCu);
  }

  return 0;
}

uint64_t AppleAVDWrapperFghrnDecoderCreateInstance(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  VTVideoDecoderGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    buf = 136315394;
    buf_4 = "AppleAVDWrapperFghrnDecoderCreateInstance";
    buf_12 = 1024;
    buf_14 = v4;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", &buf, 0x12u);
  }

  *a3 = 0;
  return v4;
}

void Fghrn_createSupportedPropertyDictionary()
{
  v34 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v16 = 0u;
  v17 = 0u;
  v0 = *MEMORY[0x277CE2A10];
  v1 = *MEMORY[0x277CE29C8];
  keys = *MEMORY[0x277CE2A00];
  v22 = v1;
  v2 = *MEMORY[0x277CE29D8];
  v14 = v0;
  v15 = v2;
  *values = Fghrn_createFrameTypesArrayElement(*MEMORY[0x277CE2748]);
  *&values[8] = Fghrn_createFrameTypesArrayElement(*MEMORY[0x277CE2760]);
  *&values[16] = Fghrn_createFrameTypesArrayElement(*MEMORY[0x277CE2750]);
  FrameTypesArrayElement = Fghrn_createFrameTypesArrayElement(*MEMORY[0x277CE2758]);
  v3 = *MEMORY[0x277CBECE8];
  sFghrnOnlyTheseFrames = CFArrayCreate(*MEMORY[0x277CBECE8], values, 4, MEMORY[0x277CBF128]);
  if (!sFghrnOnlyTheseFrames && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v29 = "Fghrn_createOnlyTheseFramesArray";
    v30 = 2080;
    v31 = "sFghrnOnlyTheseFrames";
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

  if (sFghrnOnlyTheseFrames)
  {
    v6 = MEMORY[0x277CBF138];
    v7 = MEMORY[0x277CBF150];
    v8 = CFDictionaryCreate(v3, 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v9 = *MEMORY[0x277CE2710];
    keys = *MEMORY[0x277CE26E0];
    v22 = v9;
    v14 = v8;
    v15 = v8;
    v10 = *MEMORY[0x277CE26F0];
    *&v23 = *MEMORY[0x277CE2630];
    *(&v23 + 1) = v10;
    *&v16 = v8;
    *(&v16 + 1) = v8;
    v11 = *MEMORY[0x277CE2688];
    *&v24 = *MEMORY[0x277CE2650];
    *(&v24 + 1) = v11;
    *&v17 = v8;
    *(&v17 + 1) = v8;
    v12 = *MEMORY[0x277CE2640];
    *&v25 = @"RequestedMVAV1SpatialIDs";
    *(&v25 + 1) = v12;
    *&v18 = v8;
    *(&v18 + 1) = v8;
    v13 = CFDictionaryCreate(v3, &keys, &v14, 8, v6, v7);
    sFghrnVideoDecoderSupportedPropertyDictionary = v13;
    if (sFghrnOnlyTheseFrames)
    {
      if (v13)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v8 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *values = 136315394;
    *&values[4] = "Fghrn_createSupportedPropertyDictionary";
    *&values[12] = 2080;
    *&values[14] = "sFghrnOnlyTheseFrames";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %s\n", values, 0x16u);
  }

  if (!sFghrnVideoDecoderSupportedPropertyDictionary)
  {
LABEL_16:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *values = 136315394;
      *&values[4] = "Fghrn_createSupportedPropertyDictionary";
      *&values[12] = 2080;
      *&values[14] = "sFghrnVideoDecoderSupportedPropertyDictionary";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %s\n", values, 0x16u);
    }
  }

LABEL_18:
  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t populateDecoderCryptor(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    v5 = *a5;
    if (v5)
    {
      v6 = 0;
      v7 = (a2 + 4);
      v8 = *a5;
      do
      {
        v6 += *(v7 - 1) + *v7;
        v7 += 2;
        --v8;
      }

      while (v8);
    }

    else
    {
      v6 = 0;
    }

    if (v5 >= a3)
    {
      v9 = 0;
    }

    else
    {
      v11 = 0;
      v12 = (a2 + 8 * v5 + 4);
      v13 = a1;
      while (1)
      {
        v14 = *(v12 - 1) + v6;
        if (v14 >= a4)
        {
          break;
        }

        *(v13 + 56) = v14;
        v16 = *v12;
        v12 += 2;
        v15 = v16;
        *(v13 + 1080) = v16;
        ++v5;
        v9 = v11 + 1;
        if (v5 < a3)
        {
          v6 = v15 + v14;
          v13 += 4;
          if (v11++ < 0xFF)
          {
            continue;
          }
        }

        goto LABEL_17;
      }

      v9 = v11;
    }

LABEL_17:
    *a5 = v5;
    v10 = 2104;
  }

  else
  {
    v9 = 0;
    *(a1 + 2104) = 0;
    *(a1 + 56) = 0;
    v10 = 1080;
  }

  *(a1 + v10) = v9;
  return 0;
}

uint64_t AppleAVDWrapperFghrnDecoderInvalidate()
{
  v18 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    pthread_mutex_lock(DerivedStorage + 82);
    v2 = *&v1[86].__opaque[40];
    if ((v2 - 1) >= 2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "AppleAVDWrapperFghrnDecoderInvalidate";
        v10 = 1024;
        v11 = v2;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s called but plugin state is %d", &v8, 0x12u);
      }
    }

    else
    {
      *&v1[86].__opaque[40] = 3;
      AppleAVDWrapperFghrnDecoderCleanUp();
    }

    pthread_mutex_unlock(v1 + 82);
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v4)
    {
      v5 = *&v1[84].__opaque[32];
      v6 = *&v1[81].__opaque[16];
      v7 = *&v1[81].__opaque[20];
      v8 = 136316162;
      v9 = "AppleAVDWrapperFghrnDecoderInvalidate";
      v10 = 1024;
      v11 = v5;
      v12 = 1024;
      v13 = v6;
      v14 = 1024;
      v15 = v7;
      v16 = 2048;
      v17 = v1;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s() codecType: Fghrn, encryptionScheme %d, %d x %d, session : %p", &v8, 0x28u);
      return 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "AppleAVDWrapperFghrnDecoderInvalidate";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s called with invalid storage", &v8, 0xCu);
    }

    return 4294954393;
  }

  return result;
}

void AppleAVDWrapperFghrnDecoderFinalize()
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
    v10 = "AppleAVDWrapperFghrnDecoderFinalize";
    v3 = MEMORY[0x277D86220];
    v4 = "AppleAVD: %s called with invalid storage";
    v5 = 12;
    goto LABEL_11;
  }

  v1 = DerivedStorage;
  pthread_mutex_lock(DerivedStorage + 82);
  v2 = *&v1[86].__opaque[40];
  if ((v2 - 1) >= 3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "AppleAVDWrapperFghrnDecoderFinalize";
      v11 = 1024;
      v12 = v2;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s called but plugin state is %d", &v9, 0x12u);
    }
  }

  else if (v2 != 3)
  {
    AppleAVDWrapperFghrnDecoderCleanUp();
  }

  pthread_mutex_unlock(v1 + 82);
  pthread_mutex_destroy(v1 + 82);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *&v1[84].__opaque[32];
    v7 = *&v1[81].__opaque[16];
    v8 = *&v1[81].__opaque[20];
    v9 = 136316162;
    v10 = "AppleAVDWrapperFghrnDecoderFinalize";
    v11 = 1024;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 2048;
    v18 = v1;
    v3 = MEMORY[0x277D86220];
    v4 = "AppleAVD: %s() codecType: Fghrn, encryptionScheme %d, %d x %d, session : %p";
    v5 = 40;
LABEL_11:
    _os_log_impl(&dword_277606000, v3, OS_LOG_TYPE_DEFAULT, v4, &v9, v5);
  }
}

__CFString *AppleAVDWrapperFghrnDecoderCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<AppleAVD_FghrnVideoDecoder %p>", a1);
  return Mutable;
}

uint64_t AppleAVDWrapperFghrnDecoderCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x277CE2698]))
  {
    v8 = *(DerivedStorage + 5536);
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

    goto LABEL_20;
  }

  if (CFEqual(a2, *MEMORY[0x277CE2650]))
  {
    goto LABEL_7;
  }

  if (CFEqual(a2, *MEMORY[0x277CE2688]))
  {
    valuePtr = 0;
    v13 = *(DerivedStorage + 5184);
    if (v13)
    {
      if (!AppleAVDGetParameter(v13, 74, &valuePtr))
      {
        v11 = CFNumberCreate(a3, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_9;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "AppleAVDWrapperFghrnDecoderCopyProperty";
        v14 = MEMORY[0x277D86220];
        v15 = "AppleAVD: ERROR: %s() - AppleAVDGetParameter call for kAppleAVDGetFrameReceiverThreadPriority returned ERROR\n";
LABEL_28:
        _os_log_impl(&dword_277606000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "AppleAVDWrapperFghrnDecoderCopyProperty";
      v14 = MEMORY[0x277D86220];
      v15 = "AppleAVD: WARNING: %s() - trying to get FrameReceiverThreadPriority before videoContext was created!\n";
      goto LABEL_28;
    }

    return 4294954385;
  }

  if (!CFEqual(a2, @"RequestedMVAV1SpatialIDs"))
  {
    if (CFEqual(a2, *MEMORY[0x277CE26E0]))
    {
      pthread_once(&sCreateSuggestedQualityOfServiceTiersOnce, myCreateSuggestedQualityOfServiceTiers);
      result = myVideoDecoderSuggestedQualityOfServiceTiers;
      if (myVideoDecoderSuggestedQualityOfServiceTiers)
      {
        goto LABEL_8;
      }

      return FigSignalErrorAtGM();
    }

    if (!CFEqual(a2, *MEMORY[0x277CE2710]))
    {
      if (CFEqual(a2, *MEMORY[0x277CE2630]))
      {
        v17 = *(DerivedStorage + 5628);
        switch(v17)
        {
          case 2:
            v10 = MEMORY[0x277CE24F8];
            goto LABEL_20;
          case 1:
            v10 = MEMORY[0x277CE24F0];
            goto LABEL_20;
          case 0:
            v10 = MEMORY[0x277CE24E8];
LABEL_20:
            v16 = *v10;
            CFRetain(*v10);
LABEL_21:
            result = 0;
            *a4 = v16;
            return result;
        }

        return 4294954396;
      }

      if (CFEqual(a2, *MEMORY[0x277CE26F0]))
      {
        v18 = *MEMORY[0x277CBECE8];
        *buf = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, (DerivedStorage + 5656));
        v16 = CFArrayCreate(v18, buf, 1, 0);
        if (*buf)
        {
          CFRelease(*buf);
        }

        goto LABEL_21;
      }

      if (!CFEqual(a2, *MEMORY[0x277CE2640]))
      {
        return 4294954396;
      }

      if (*(DerivedStorage + 5669) != 1)
      {
        result = 0;
        *a4 = 0;
        return result;
      }
    }

LABEL_7:
    result = *MEMORY[0x277CBED28];
LABEL_8:
    v11 = CFRetain(result);
LABEL_9:
    v12 = v11;
    result = 0;
    *a4 = v12;
    return result;
  }

  result = *(DerivedStorage + 5608);
  if (result)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t AppleAVDWrapperFghrnDecoderSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x277CE26E0]))
  {

    return FigSignalErrorAtGM();
  }

  if (CFEqual(a2, *MEMORY[0x277CE2710]))
  {
    return 4294954395;
  }

  if (CFEqual(a2, @"RequestedMVAV1SpatialIDs"))
  {
    if (a3)
    {
      TypeID = CFArrayGetTypeID();
      if (TypeID != CFGetTypeID(a3))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v26 = 136315138;
          v27 = "AppleAVDWrapperFghrnDecoderSetProperty";
          v15 = MEMORY[0x277D86220];
          v16 = "AppleAVD: %s - kVTDecompressionPropertyKey_RequestedMVAV1SpatialVideoLayerIDs error";
          goto LABEL_58;
        }

        return 4294954385;
      }

      Copy = CFArrayCreateCopy(*MEMORY[0x277CBECE8], a3);
      *(DerivedStorage + 5608) = Copy;
      if (!Copy)
      {
        return 0;
      }
    }

    else
    {
      Copy = *(DerivedStorage + 5608);
      if (!Copy)
      {
        return 0;
      }
    }

    v18 = *(DerivedStorage + 5184);
    if (!v18)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v26 = 136315138;
        v27 = "AppleAVDWrapperFghrnDecoderSetProperty";
        v15 = MEMORY[0x277D86220];
        v16 = "AppleAVD: WARNING: %s() - trying to set kAppleAVDSetMVAV1DisplayLayerIDs before videoContext was created!\n";
        goto LABEL_58;
      }

      return 4294954385;
    }

    if (AppleAVDSetParameter(v18, 69, Copy))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v26 = 136315138;
        v27 = "AppleAVDWrapperFghrnDecoderSetProperty";
        v15 = MEMORY[0x277D86220];
        v16 = "AppleAVD: ERROR: %s() - AppleAVDSetParameter call for kAppleAVDSetMVAV1DisplayLayerIDs returned ERROR\n";
LABEL_58:
        v17 = 12;
        goto LABEL_59;
      }

      return 4294954385;
    }

    Count = CFArrayGetCount(*(DerivedStorage + 5608));
    if (Count >= 1)
    {
      v21 = Count;
      for (i = 0; i != v21; ++i)
      {
        v26 = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 5608), i);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &v26);
        result = 0;
      }

      return result;
    }

    return 0;
  }

  v9 = DerivedStorage + 4096;
  if (!CFEqual(a2, *MEMORY[0x277CE26A0]))
  {
    if (CFEqual(a2, *MEMORY[0x277CE2630]))
    {
      if (!a3)
      {
        goto LABEL_47;
      }

      if (CFEqual(a3, *MEMORY[0x277CE24E8]))
      {
        v19 = 0;
        goto LABEL_48;
      }

      if (CFEqual(a3, *MEMORY[0x277CE24F0]))
      {
LABEL_47:
        v19 = 1;
        goto LABEL_48;
      }

      if (CFEqual(a3, *MEMORY[0x277CE24F8]))
      {
        v19 = 2;
LABEL_48:
        *(DerivedStorage + 5628) = v19;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v26 = 136315394;
          v27 = "AppleAVDWrapperFghrnDecoderSetProperty";
          v28 = 1024;
          *v29 = v19;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Requesting setting filmGrainMode to: %d\n", &v26, 0x12u);
          v19 = *(DerivedStorage + 5628);
        }

        CFPreferenceNumber = VideoDecoder_getCFPreferenceNumber(@"AVD_AvdFilmGrainMode", @"com.apple.coremedia", v19);
        *(DerivedStorage + 5628) = CFPreferenceNumber;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v26 = 136315394;
          v27 = "AppleAVDWrapperFghrnDecoderSetProperty";
          v28 = 1024;
          *v29 = CFPreferenceNumber;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): After considering defaults write, setting filmGrainMode to: %d\n", &v26, 0x12u);
        }

        v25 = *(DerivedStorage + 5184);
        if (v25)
        {
          result = AppleAVDSetParameter(v25, 65, (DerivedStorage + 5628));
          if (!result)
          {
            return result;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return 4294954385;
          }

          v26 = 136315138;
          v27 = "AppleAVDWrapperFghrnDecoderSetProperty";
          v15 = MEMORY[0x277D86220];
          v16 = "AppleAVD: ERROR: %s() - AppleAVDSetParameter call for kAppleAVDSetAv1FilmGrainMode returned ERROR\n";
          goto LABEL_58;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v26 = 136315138;
          v27 = "AppleAVDWrapperFghrnDecoderSetProperty";
          v15 = MEMORY[0x277D86220];
          v16 = "AppleAVD: WARNING: %s() - trying to set kAppleAVDSetAv1FilmGrainMode before videoContext was created!\n";
          goto LABEL_58;
        }

        return 4294954385;
      }
    }

    else if (CFEqual(a2, *MEMORY[0x277CE2640]))
    {
      result = CFEqual(a3, *MEMORY[0x277CBED28]);
      if (!result)
      {
        *(DerivedStorage + 5669) = 0;
        return result;
      }

      *(DerivedStorage + 5669) = 1;
      result = AppleAVDSetParameter(*(DerivedStorage + 5184), 75, (DerivedStorage + 5669));
      if (result)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v26 = 136315138;
          v27 = "AppleAVDWrapperFghrnDecoderSetProperty";
          v15 = MEMORY[0x277D86220];
          v16 = "AppleAVD: %s(): ERROR setting kAppleAVDSetAllowBitstreamToChangeFrameDimensions failed";
          goto LABEL_58;
        }

        return 4294954385;
      }

      return result;
    }

    return 4294954396;
  }

  if (a3)
  {
    v10 = CFBooleanGetTypeID();
    if (v10 == CFGetTypeID(a3))
    {
      Value = CFBooleanGetValue(a3);
      v12 = Value;
      v13 = *(DerivedStorage + 5552);
      if (v13 >= 2)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(v9 + 1548);
          v26 = 136315906;
          v27 = "AppleAVDWrapperFghrnDecoderSetProperty";
          v28 = 1024;
          *v29 = v13;
          *&v29[4] = 1024;
          *&v29[6] = v14;
          v30 = 1024;
          v31 = v12 != 0;
          v15 = MEMORY[0x277D86220];
          v16 = "AppleAVD: ERROR: %s(): pluginState (%d) was already started! current: %d - requested: %d";
          v17 = 30;
LABEL_59:
          _os_log_impl(&dword_277606000, v15, OS_LOG_TYPE_DEFAULT, v16, &v26, v17);
          return 4294954385;
        }

        return 4294954385;
      }

      *(v9 + 1548) = Value != 0;
      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v26 = 136315394;
      v27 = "AppleAVDWrapperFghrnDecoderSetProperty";
      v28 = 1024;
      *v29 = v12 != 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): kVTDecompressionPropertyKey_Paravirtualized - paravirtualizedSession: %d", &v26, 0x12u);
      return 0;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v26 = 136315394;
    v27 = "AppleAVDWrapperFghrnDecoderSetProperty";
    v28 = 2048;
    *v29 = a3;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): propertyValue (%p) is invalid!", &v26, 0x16u);
  }

  return 4294954394;
}

uint64_t AppleAVDWrapperFghrnDecoderCleanUp()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  v2 = *(v1 + 5184);
  if (v2)
  {
    if (AppleAVDTerminateDecoder(v2) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_FghrnDecoder - ERROR terminate decoder", buf, 2u);
    }

    if (AppleAVDCloseConnection((v1 + 5184)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_FghrnDecoder - ERROR closing connection", v14, 2u);
    }
  }

  v3 = *(v1 + 5632);
  if (v3)
  {
    CFRelease(v3);
    *(v1 + 5632) = 0;
  }

  v4 = DerivedStorage[696];
  if (v4)
  {
    fclose(v4);
    DerivedStorage[696] = 0;
  }

  v5 = DerivedStorage[697];
  if (v5)
  {
    fclose(v5);
    DerivedStorage[697] = 0;
  }

  v6 = DerivedStorage[698];
  if (v6)
  {
    fclose(v6);
    DerivedStorage[698] = 0;
  }

  v7 = DerivedStorage[654];
  if (v7)
  {
    free(v7);
    DerivedStorage[654] = 0;
  }

  v8 = DerivedStorage[4];
  if (v8)
  {
    CVPixelBufferPoolRelease(v8);
  }

  DerivedStorage[4] = 0;
  v9 = DerivedStorage[5];
  if (v9)
  {
    CVPixelBufferPoolRelease(v9);
  }

  DerivedStorage[5] = 0;
  v10 = DerivedStorage[6];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[6] = 0;
  }

  v11 = DerivedStorage[7];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[7] = 0;
  }

  v12 = DerivedStorage[649];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[649] = 0;
  }

  AppleAVDWrapperFghrnDecoderCleanUpMVAV1Resources(DerivedStorage);
  *DerivedStorage = 0;
  result = DerivedStorage[3];
  if (result)
  {
    result = FigFormatDescriptionRelease();
    DerivedStorage[3] = 0;
  }

  return result;
}

void AppleAVDWrapperFghrnDecoderCleanUpMVAV1Resources(uint64_t a1)
{
  v2 = *(a1 + 5608);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 5608) = 0;
  }

  v3 = *(a1 + 5616);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 5616), i);
        if (ValueAtIndex)
        {
          CFRelease(ValueAtIndex);
        }
      }
    }

    v8 = *(a1 + 5616);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 5616) = 0;
    }
  }
}

void myCreateSuggestedQualityOfServiceTiers()
{
  values[4] = *MEMORY[0x277D85DE8];
  values[0] = createQualityOfServiceTier(*MEMORY[0x277CE2748]);
  values[1] = createQualityOfServiceTier(*MEMORY[0x277CE2760]);
  values[2] = createQualityOfServiceTier(*MEMORY[0x277CE2750]);
  values[3] = createQualityOfServiceTier(*MEMORY[0x277CE2758]);
  myVideoDecoderSuggestedQualityOfServiceTiers = CFArrayCreate(*MEMORY[0x277CBECE8], values, 4, MEMORY[0x277CBF128]);
  if (!myVideoDecoderSuggestedQualityOfServiceTiers)
  {
    FigSignalErrorAtGM();
    if (!myVideoDecoderSuggestedQualityOfServiceTiers && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
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

CFDictionaryRef createQualityOfServiceTier(void *a1)
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

uint64_t AppleAVDWrapperFghrnDecoderStartSession(uint64_t a1, uint64_t a2, const opaqueCMFormatDescription *a3)
{
  v82 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v6 = DerivedStorage;
    v7 = *(DerivedStorage + 5552);
    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AppleAVDWrapperFghrnDecoderStartSession";
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

    v12 = *(DerivedStorage + 5680);
    pthread_mutex_init((DerivedStorage + 5248), 0);
    pthread_mutex_lock((v6 + 5248));
    *(v6 + 5648) = 0;
    *(v6 + 5232) = 0;
    *(v6 + 5240) = 0;
    *v6 = a2;
    *(v6 + 16) = 0;
    FigFormatDescriptionRelease();
    *(v6 + 24) = FigFormatDescriptionRetain();
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    *(v6 + 5616) = Mutable;
    if (!Mutable)
    {
      v11 = 4294954392;
      goto LABEL_27;
    }

    Dimensions = CMVideoFormatDescriptionGetDimensions(*(v6 + 24));
    v15 = Dimensions;
    v16 = HIDWORD(Dimensions);
    Extension = CMFormatDescriptionGetExtension(a3, *MEMORY[0x277CC0318]);
    if (Extension)
    {
      LOBYTE(Extension) = CFBooleanGetValue(Extension);
    }

    v64 = (v6 + 4096);
    *(v6 + 5401) = Extension;
    *(v6 + 5208) = v15;
    *(v6 + 5212) = v16;
    *(v6 + 5204) = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(v6 + 5416);
      *buf = 136316418;
      *&buf[4] = "AppleAVDWrapperFghrnDecoderStartSession";
      *&buf[12] = 1024;
      *&buf[14] = v18;
      *&buf[18] = 1024;
      *&buf[20] = v15;
      *&buf[24] = 1024;
      *&buf[26] = v16;
      *&buf[30] = 2080;
      *&buf[32] = "06:37:34";
      *&buf[40] = 2080;
      *&buf[42] = "Oct 23 2025";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s() codecType: Fghrn, encryptionScheme %d, %d x %d, built %s %s", buf, 0x32u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(v6 + 5604);
      *buf = 67109120;
      *&buf[4] = v19;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVDWrapperFghrnDecoderStartSession: storage->miscPreferences %d ", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(v6 + 5416);
      v21 = *(v6 + 5592);
      *buf = 136316930;
      *&buf[4] = "AppleAVDWrapperFghrnDecoderStartSession";
      *&buf[12] = 1024;
      *&buf[14] = v20;
      *&buf[18] = 1024;
      *&buf[20] = v15;
      *&buf[24] = 1024;
      *&buf[26] = v16;
      *&buf[30] = 1024;
      *&buf[32] = v21;
      *&buf[36] = 2048;
      *&buf[38] = v6;
      *&buf[46] = 2080;
      *&buf[48] = "06:37:34";
      *&buf[56] = 2080;
      *&buf[58] = "Oct 23 2025";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s() codecType: Fghrn, encryptionScheme %d, %d x %d, tryAllFrames = %d, session : %p, built %s %s", buf, 0x42u);
    }

    HeaderBuffer = CreateHeaderBuffer(v6, a3);
    if (HeaderBuffer)
    {
      v11 = HeaderBuffer;
      goto LABEL_27;
    }

    AVDFghrnInstance = CreateAVDFghrnInstance(v6, v12);
    if (AVDFghrnInstance)
    {
      v24 = AVDFghrnInstance;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_FghrnVideoDecoder ERROR: createAppleAVDHW_FghrnDecoderInstance returned error", buf, 2u);
      }

      if (v24 == -536870210)
      {
        v11 = 4294954383;
      }

      else
      {
        v11 = 4294954385;
      }

      goto LABEL_27;
    }

    if (MGGetBoolAnswer() && v64[1574] == 1)
    {
      *buf = 0;
      PrepareHistogramDump(buf);
      AppleAVDSetParameter(*(v6 + 5184), 62, *buf);
    }

    v26 = *(v6 + 5312);
    if (v64[1573] == 1)
    {
      if (v26 <= v15)
      {
        v26 = v15;
      }

      *(v6 + 5208) = v26;
      v27 = *(v6 + 5316);
      if (v27 <= v16)
      {
        v27 = v16;
      }

      *(v6 + 5212) = v27;
    }

    else
    {
      v27 = *(v6 + 5316);
    }

    v28 = (v26 + 1 + ((v26 + 1) >> 31)) & 0xFFFFFFFE;
    *(v6 + 5216) = v28;
    v29 = (v27 + 1 + ((v27 + 1) >> 31)) & 0xFFFFFFFE;
    *(v6 + 5220) = v29;
    if ((v28 > v15 || v29 > v16) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "AppleAVDWrapperFghrnDecoderStartSession";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): WARNING, coded size has changed!", buf, 0xCu);
    }

    v30 = *(v6 + 5208);
    v31 = *(v6 + 5212);
    if ((v31 * v30) > 0x41F8000)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = "AppleAVDWrapperFghrnDecoderStartSession";
        *&buf[12] = 1024;
        *&buf[14] = v30;
        *&buf[18] = 1024;
        *&buf[20] = v31;
        *&buf[24] = 2048;
        *&buf[26] = 69173248;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): error: width (%d) * height (%d) exceeds limit (%llu).\n", buf, 0x22u);
      }

      v11 = 4294954387;
      goto LABEL_27;
    }

    if (*(v6 + 5560))
    {
      v67 = 0;
      setlocale(0, &unk_27777977E);
      time(&v67);
      v32 = localtime(&v67);
      strftime(__s, 0x14uLL, "%m%d%g_%H%M%S", v32);
      v66.tv_sec = 0;
      *&v66.tv_usec = 0;
      v65 = 0;
      gettimeofday(&v66, &v65);
      snprintf(__str, 5uLL, "_%03d", v66.tv_usec / 1000);
      strlen(__str);
      __strncat_chk();
      strcpy(v79, "-decOutput.ivf");
      qmemcpy(v63, "/var/mobile/Library/Caches/com.a/com.apple.applepple.videocodecd", sizeof(v63));
      strcpy(buf, "/var/mobile/Library/Caches/com.apple.videocodecd/com.apple.appleavd/");
      strlen(__s);
      __strncat_chk();
      strlen(v79);
      __strncat_chk();
      strcpy(v76, "-decEncrOut.ivf");
      __filename[1] = v63[1];
      __filename[2] = v63[3];
      v78[0] = v63[2];
      strcpy(v78 + 13, "pleavd/");
      __filename[0] = v63[0];
      strlen(__s);
      __strncat_chk();
      strlen(v76);
      __strncat_chk();
      strcpy(v71, "-decPropertyLog.txt");
      v75[0] = v63[2];
      strcpy(v75 + 13, "pleavd/");
      v73 = v63[1];
      v74 = v63[3];
      *v72 = v63[0];
      strlen(__s);
      __strncat_chk();
      strlen(v71);
      __strncat_chk();
      v33 = fopen(buf, "wbx");
      *(v6 + 5568) = v33;
      if (!v33)
      {
        *(v6 + 5568) = 0;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v69 = 136315138;
          v70 = buf;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AVD Fghrn dump: could not open file %s\n", v69, 0xCu);
        }
      }

      v34 = fopen(__filename, "wbx");
      *(v6 + 5576) = v34;
      if (!v34)
      {
        *(v6 + 5576) = 0;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v69 = 136315138;
          v70 = __filename;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AVD Fghrn dump: could not open file %s\n", v69, 0xCu);
        }
      }

      v35 = fopen(v72, "wbx");
      *(v6 + 5584) = v35;
      if (!v35)
      {
        *(v6 + 5584) = 0;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v69 = 136315138;
          v70 = v72;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AVD Fghrn dump: could not open property log file %s\n", v69, 0xCu);
        }
      }

      v36 = *(v6 + 5576);
      if (v36)
      {
        WriteIVFHeader(v36, *(v6 + 5208), *(v6 + 5212));
      }

      v37 = *(v6 + 5568);
      if (v37)
      {
        WriteIVFHeader(v37, *(v6 + 5208), *(v6 + 5212));
      }
    }

    else
    {
      *(v6 + 5584) = 0;
      *(v6 + 5568) = 0u;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v38 = *(v6 + 5312) >> 4;
      v39 = v64[1304];
      v40 = *(v6 + 5320);
      v41 = *(v6 + 5324);
      v42 = *(v6 + 5328);
      v43 = *(v6 + 5332);
      v44 = v64[1305];
      v45 = v64[1248];
      v46 = v64[1249];
      v47 = v64[1250];
      *buf = 67111680;
      *&buf[4] = v38;
      *&buf[8] = 1024;
      *&buf[10] = v38;
      *&buf[14] = 1024;
      *&buf[16] = v39;
      *&buf[20] = 1024;
      *&buf[22] = v40;
      *&buf[26] = 1024;
      *&buf[28] = v41;
      *&buf[32] = 1024;
      *&buf[34] = v42;
      *&buf[38] = 1024;
      *&buf[40] = v43;
      *&buf[44] = 1024;
      *&buf[46] = v44;
      *&buf[50] = 1024;
      *&buf[52] = v45;
      *&buf[56] = 1024;
      *&buf[58] = v46;
      *&buf[62] = 1024;
      *&buf[64] = v47;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_FghrnVideoDecoder  %d %d %d %d %d %d %d %d %d %d %d\n", buf, 0x44u);
    }

    v48 = v64;
    v49 = v64[1249];
    if ((v49 | 2) != 2 || v49 != v64[1250])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v58 = v64[1250];
        *buf = 136315650;
        *&buf[4] = "AppleAVDWrapperFghrnDecoderStartSession";
        *&buf[12] = 1024;
        *&buf[14] = v49;
        *&buf[18] = 1024;
        *&buf[20] = v58;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): invalid bit depth [luma depth minus 8 = %d, chroma depth minus 8 = %d]\n", buf, 0x18u);
      }

      v11 = 4294954385;
      goto LABEL_27;
    }

    v64[1105] = 1;
    *(v6 + 5204) = 1;
    v48[1572] = 1;
    if (isEligibleToUseCompression(*(v6 + 5224), *(v6 + 5208), *(v6 + 5212), *(v6 + 5216), *(v6 + 5220), *(v6 + 5672), v48[1548]))
    {
      inited = InitPixelBufferCompressionSupported(*v6, *(v6 + 5184), *(v6 + 5224), *(v6 + 5208), *(v6 + 5212), *(v6 + 5216), *(v6 + 5220), v48[1249], v48[1248], v48[1305], *(v6 + 5528), 8, 0, 0, 0, (v6 + 40), (v6 + 56), 0, 0, 0, 0);
      if (inited || (inited = GetIOSurfaceTypeFromSessionPixelBufferAttributes(*v6, (v6 + 5556)), inited))
      {
LABEL_87:
        v11 = inited;
LABEL_27:
        FigFormatDescriptionRelease();
        *(v6 + 24) = 0;
        AppleAVDWrapperFghrnDecoderCleanUpMVAV1Resources(v6);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "AppleAVDWrapperFghrnDecoderStartSession";
          *&buf[12] = 1024;
          *&buf[14] = v11;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
        }

LABEL_29:
        pthread_mutex_unlock((v6 + 5248));
        kdebug_trace();
        return v11;
      }

      v51 = *(v6 + 5556);
      if (v51)
      {
        v64[1572] = 1;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v52 = v64[1249] + 8;
          v53 = v64[1248];
          *buf = 67109632;
          *&buf[4] = v51;
          *&buf[8] = 1024;
          *&buf[10] = v52;
          *&buf[14] = 1024;
          *&buf[16] = v53;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD:  Compressed buffers enabled! CompressionType:%d. luma depth %d chroma format %d", buf, 0x14u);
        }

        v54 = v64;
        if (*(v6 + 5224) == 20 && v64[1249] == 2)
        {
          v55 = v64[1248];
          if (v64[1248])
          {
            v56 = *(v6 + 5216);
            v57 = *(v6 + 5220);
            if (v55 == 2)
            {
              v56 >>= 1;
            }

            else if (v55 == 1)
            {
              v56 >>= 1;
              v57 >>= 1;
            }

            v54 = v64;
            if (((((v57 + 15) >> 4) * ((v56 + 15) >> 4)) & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: FGH chroma plane with odd number of IMBs is unspported on Salvia A0", buf, 2u);
            }
          }
        }

        goto LABEL_89;
      }
    }

    else
    {
      *(v6 + 5556) = 0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v59 = v64[1249] + 8;
      v60 = v64[1248];
      *buf = 67109376;
      *&buf[4] = v59;
      *&buf[8] = 1024;
      *&buf[10] = v60;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD:  Compressed buffers disabled! luma depth %d chroma format %d", buf, 0xEu);
    }

    inited = InitPixelBufferCompressionNotSupported(v6);
    if (!inited)
    {
      v54 = v64;
      v64[1572] = 0;
LABEL_89:
      v11 = 0;
      if (v54[1249])
      {
        v61 = 2019963440;
      }

      else
      {
        v61 = 875704422;
      }

      if (v54[1249])
      {
        v62 = 2016686640;
      }

      else
      {
        v62 = 875704438;
      }

      if (v54[1305])
      {
        v62 = v61;
      }

      *(v6 + 5656) = v62;
      *(v6 + 5552) = 2;
      goto LABEL_29;
    }

    goto LABEL_87;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "AppleAVDWrapperFghrnDecoderStartSession";
    v8 = MEMORY[0x277D86220];
    v9 = "AppleAVD: ERROR: %s no instance storage!";
    v10 = 12;
    goto LABEL_7;
  }

  return 4294954387;
}

uint64_t AppleAVDWrapperFghrnDecoderDecodeFrame(uint64_t a1, uint64_t a2, void *a3, char a4, _DWORD *a5)
{
  v137 = *MEMORY[0x277D85DE8];
  memset(v113, 0, 512);
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVDWrapperFghrnDecoderDecodeFrame - ERROR! storage is NULL\n", buf, 2u);
    }

    return 311;
  }

  v10 = DerivedStorage;
  kdebug_trace();
  kdebug_trace();
  pthread_mutex_lock((v10 + 5248));
  ++*(v10 + 5648);
  v11 = *(v10 + 5552);
  if (v11 != 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AppleAVDWrapperFghrnDecoderDecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v11;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s called on plugin in state %d", buf, 0x12u);
    }

    pthread_mutex_unlock((v10 + 5248));
    return 311;
  }

  if (!Fghrn_shouldDecodeFrame(v10, a3))
  {
    kdebug_trace();
    VTDecoderSessionEmitDecodedFrame();
    if (a5)
    {
      *a5 = 2;
    }

    goto LABEL_127;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(a3);
  v13 = DataBuffer;
  if (!DataBuffer || (DataLength = CMBlockBufferGetDataLength(DataBuffer)) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      *&buf[14] = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR:  either dataBuffer=%p is invalid or dataLength=%zu is invalid!", buf, 0x16u);
    }

    kdebug_trace();
    v16 = -12909;
    VTDecoderSessionEmitDecodedFrame();
    if (a5)
    {
      *a5 = 2;
    }

    goto LABEL_124;
  }

  theSourceBuffer = v13;
  v14 = v10 + 4096;
  if (*(v10 + 5416) == 6)
  {
    v98 = 0;
    BytePtr = 0;
    goto LABEL_76;
  }

  v17 = a5;
  Decryptor = FigSampleBufferGetDecryptor();
  v19 = Decryptor;
  if (*(v10 + 5204) == 1 && !Decryptor)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_25:
      kdebug_trace();
      VTDecoderSessionEmitDecodedFrame();
      goto LABEL_127;
    }

    *buf = 136315650;
    *&buf[4] = "AppleAVDWrapperFghrnDecoderDecodeFrame";
    *&buf[12] = 1024;
    *&buf[14] = 1;
    *&buf[18] = 2048;
    *&buf[20] = v10;
    v20 = MEMORY[0x277D86220];
    v21 = "AppleAVD: ERROR: %s(): frame# %d, session: %p, decryptor attachment is NULL\n";
    v22 = 28;
LABEL_24:
    _os_log_impl(&dword_277606000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, v22);
    goto LABEL_25;
  }

  if (Decryptor && Decryptor != *(v10 + 5192))
  {
    LODWORD(rhs.value) = *(v10 + 5416);
    lhs.value = 0;
    NativeSession = FigCPECryptorGetNativeSession(Decryptor, &lhs);
    if (NativeSession)
    {
      v16 = NativeSession;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(v10 + 5204);
        *buf = 136315650;
        *&buf[4] = "AppleAVDWrapperFghrnDecoderDecodeFrame";
        *&buf[12] = 1024;
        *&buf[14] = v24;
        *&buf[18] = 1024;
        *&buf[20] = v16;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): frame# %d, FigCPECryptorGetNativeSession returned err %d\n", buf, 0x18u);
      }

      kdebug_trace();
      goto LABEL_123;
    }

    v25 = AppleAVDSetParameter(*(v10 + 5184), 24, &rhs);
    if (v25)
    {
      v16 = v25;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_119;
      }

      v26 = *(v10 + 5204);
      *buf = 136315650;
      *&buf[4] = "AppleAVDWrapperFghrnDecoderDecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v26;
      *&buf[18] = 1024;
      *&buf[20] = v16;
      v27 = MEMORY[0x277D86220];
      v28 = "AppleAVD: ERROR: %s(): frame# %d, AppleAVDSetParameter [kAppleAVDSetCryptScheme] failed with %d\n";
LABEL_41:
      v33 = 24;
LABEL_118:
      _os_log_impl(&dword_277606000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, v33);
      goto LABEL_119;
    }

    v29 = AppleAVDSetParameter(*(v10 + 5184), 25, lhs.value);
    if (v29)
    {
      v16 = v29;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_119;
      }

      v30 = *(v10 + 5204);
      *buf = 136315650;
      *&buf[4] = "AppleAVDWrapperFghrnDecoderDecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v30;
      *&buf[18] = 1024;
      *&buf[20] = v16;
      v27 = MEMORY[0x277D86220];
      v28 = "AppleAVD: ERROR: %s(): frame# %d, AppleAVDSetParameter [kAppleAVDSetCryptRef] failed with %d\n";
      goto LABEL_41;
    }

    v99 = *(v10 + 5528);
    v112 = 0;
    ExternalProtectionMethods = FigCPECryptorGetExternalProtectionMethods(v19, &v112);
    if (ExternalProtectionMethods)
    {
      v16 = ExternalProtectionMethods;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_119;
      }

      v32 = *(v10 + 5204);
      *buf = 136315650;
      *&buf[4] = "AppleAVDWrapperFghrnDecoderDecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v32;
      *&buf[18] = 1024;
      *&buf[20] = v16;
      v27 = MEMORY[0x277D86220];
      v28 = "AppleAVD: ERROR: %s(): frame# %d, FigCPECryptorGetExternalProtectionMethods, err %d\n";
      goto LABEL_41;
    }

    v34 = 3;
    if ((v112 & 1) == 0)
    {
      v34 = 1;
    }

    v35 = 7;
    if ((v112 & 2) == 0)
    {
      v35 = v34;
    }

    if (*(v10 + 5528) == v35)
    {
      goto LABEL_58;
    }

    *(v10 + 5528) = v35;
    if (*(v10 + 5556))
    {
      inited = InitPixelBufferCompressionSupported(*v10, *(v10 + 5184), *(v10 + 5224), *(v10 + 5208), *(v10 + 5212), *(v10 + 5216), *(v10 + 5220), *(v10 + 5345), *(v10 + 5344), *(v10 + 5401), v35, 8, 0, 0, 0, (v10 + 40), (v10 + 56), 0, 0, 0, 0);
      if (!inited)
      {
        v37 = 1;
LABEL_57:
        *(v10 + 5668) = v37;
LABEL_58:
        v38 = *(v10 + 5192);
        if (v19 != v38)
        {
          if (v38)
          {
            CFRelease(v38);
          }

          *(v10 + 5192) = v19;
          CFRetain(v19);
        }

        goto LABEL_62;
      }
    }

    else
    {
      inited = InitPixelBufferCompressionNotSupported(v10);
      if (!inited)
      {
        v37 = 0;
        goto LABEL_57;
      }
    }

    v16 = inited;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AppleAVDWrapperFghrnDecoderDecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v16;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): initializing pixel buffer failed with %d\n", buf, 0x12u);
    }

    *(v10 + 5528) = v99;
    kdebug_trace();
    VTDecoderSessionEmitDecodedFrame();
    if (v17)
    {
      *v17 = 2;
    }

    goto LABEL_124;
  }

LABEL_62:
  if (*(v10 + 5416) == 4)
  {
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a3, 0);
    a5 = v17;
    if (SampleAttachmentsArray && (ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0)) != 0)
    {
      v41 = ValueAtIndex;
      Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x277CC0630]);
      if (Value)
      {
        v43 = Value;
        Length = CFDataGetLength(Value);
        if (Length >= 0x11)
        {
          v45 = Length;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "AppleAVDWrapperFghrnDecoderDecodeFrame";
            *&buf[12] = 1024;
            *&buf[14] = v45;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s oversized iv %d", buf, 0x12u);
          }

          v16 = 313;
          goto LABEL_124;
        }

        v100 = Length;
        v138.length = CFDataGetLength(v43);
        v138.location = 0;
        CFDataGetBytes(v43, v138, (v10 + 5508));
        *(v10 + 5504) = v100;
      }

      v46 = CFDictionaryGetValue(v41, *MEMORY[0x277CC0638]);
      if (!v46)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        *buf = 136315138;
        *&buf[4] = "AppleAVDWrapperFghrnDecoderDecodeFrame";
        v20 = MEMORY[0x277D86220];
        v21 = "AppleAVD: %s() ERROR: CryptorSubsampleAuxiliaryData is NULL";
        v22 = 12;
        goto LABEL_24;
      }

      v47 = v46;
      a5 = v17;
      BytePtr = CFDataGetBytePtr(v46);
      v98 = CFDataGetLength(v47) >> 3;
    }

    else
    {
      v98 = 0;
      BytePtr = 0;
    }
  }

  else
  {
    v98 = 0;
    BytePtr = 0;
    a5 = v17;
  }

  v14 = v10 + 4096;
LABEL_76:
  v111 = **&MEMORY[0x277CC08F0];
  v110 = v111;
  v48 = v14 + 1372;
  CMSampleBufferGetOutputDuration(buf, a3);
  v49 = *buf;
  *(v48 + 16) = *&buf[16];
  *v48 = v49;
  if ((*(v10 + 5480) & 0x1D) == 1)
  {
    if ((*(v10 + 5432) & 0x1D) == 1)
    {
      v50 = v10 + 5420;
      CMSampleBufferGetDecodeTimeStamp(&v111, a3);
      lhs = v111;
      rhs = *(v10 + 5420);
      CMTimeSubtract(buf, &lhs, &rhs);
      v51 = *buf;
      *(v48 + 16) = *&buf[16];
      *v48 = v51;
      *(v10 + 5420) = *&v111.value;
      epoch = v111.epoch;
    }

    else
    {
      CMSampleBufferGetPresentationTimeStamp(&v110, a3);
      v50 = v10 + 5444;
      lhs = v110;
      rhs = *(v10 + 5444);
      CMTimeSubtract(buf, &lhs, &rhs);
      v54 = *buf;
      *(v48 + 16) = *&buf[16];
      *v48 = v54;
      *(v10 + 5444) = *&v110.value;
      epoch = v110.epoch;
    }

    *(v50 + 16) = epoch;
    if (*v48 < 1)
    {
      v53 = 0.0;
    }

    else
    {
      v53 = *(v10 + 5476) / *v48;
    }

    *(v10 + 5496) = v53;
  }

  else
  {
    v53 = *(v10 + 5496);
  }

  if (((v53 + 0.5) - 1025) < 0xFFFFFC00)
  {
    v55 = 1;
  }

  else
  {
    v55 = (v53 + 0.5);
  }

  bzero(v115, 0x888uLL);
  if (!*(v10 + 5548))
  {
    v56 = v10 + 4096;
    if (*(v10 + 5544))
    {
      v57 = 2;
LABEL_94:
      v117 = v57;
      goto LABEL_95;
    }

LABEL_93:
    v57 = 1;
    goto LABEL_94;
  }

  v56 = v10 + 4096;
  if ((a4 & 4) == 0)
  {
    goto LABEL_93;
  }

LABEL_95:
  v125 = v55;
  v120 = 0;
  v119 = 0;
  v127 = 0;
  v126 = 0;
  v128 = 0;
  v124 = 0;
  v131 = *v10;
  v132 = a2;
  v133 = 0;
  v134 = *(v56 + 1572);
  if (a4)
  {
    v118 = 0;
    v58 = theSourceBuffer;
    if (a5)
    {
      *a5 |= 1u;
    }
  }

  else
  {
    v118 = 1;
    v58 = theSourceBuffer;
  }

  if (*(v10 + 5204) == 1)
  {
    v59 = *(v10 + 5608);
    if (!v59)
    {
      goto LABEL_110;
    }

    Count = CFArrayGetCount(v59);
    v61 = Count - 1;
    if (Count >= 1)
    {
      v62 = 0;
      do
      {
        *buf = 0;
        v63 = CFArrayGetValueAtIndex(*(v10 + 5608), v62);
        CFNumberGetValue(v63, kCFNumberSInt32Type, buf);
        if (*buf)
        {
          v64 = 1;
        }

        else
        {
          v64 = v61 == v62;
        }

        ++v62;
      }

      while (!v64);
    }

    v58 = theSourceBuffer;
    if (*(v10 + 5608))
    {
      v65 = 1;
    }

    else
    {
LABEL_110:
      v65 = 0;
    }

    *(v10 + 5624) = v65;
  }

  v106 = 0;
  v107 = 0;
  destination = 0;
  v105 = 0;
  DecoderSuperFrameOffsetInfo = getDecoderSuperFrameOffsetInfo(v58, v113, *(v10 + 5412));
  if (DecoderSuperFrameOffsetInfo < 0)
  {
    v16 = DecoderSuperFrameOffsetInfo;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AppleAVDWrapperFghrnDecoderDecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v16;
      v27 = MEMORY[0x277D86220];
      v28 = "AppleAVD: ERROR: %s(): Bad Bitstream, failed with %d\n";
      v33 = 18;
      goto LABEL_118;
    }

LABEL_119:
    kdebug_trace();
LABEL_123:
    VTDecoderSessionEmitDecodedFrame();
    goto LABEL_124;
  }

  v67 = v113[0];
  if (!v113[0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_FghrnVideoDecoder ERROR, there's no frame to decode\n", buf, 2u);
    }

    kdebug_trace();
    v16 = -12909;
    goto LABEL_123;
  }

  v96 = a5;
  if (*(v10 + 5416) == 4)
  {
    v122 = *(v10 + 5508);
    v68 = *(v10 + 5504);
  }

  else
  {
    v68 = 0;
  }

  v72 = 0;
  v73 = 0;
  v121 = v68;
  v103 = 0;
  v94 = v113[0];
  v114[1] = 0;
  v114[0] = 0;
  v95 = (v113[0] - 1);
  while (1)
  {
    v74 = v113[v72 + 69];
    v75 = *(v114 + v74);
    if (*(v10 + 5624) == 1)
    {
      v76 = v113[v74 + 1];
      if (v76 == v75 + 1)
      {
        v77 = 2;
      }

      else
      {
        v77 = 1;
      }

      if (v76 == 1)
      {
        v78 = 0;
      }

      else
      {
        v78 = v77;
      }
    }

    else if (v67 == 1)
    {
      v78 = 0;
    }

    else if (v72 + 1 == v67)
    {
      v78 = 2;
    }

    else
    {
      v78 = 1;
    }

    v79 = v113[8 * v74 + 37 + v75];
    v80 = v113[8 * v74 + 5 + v75];
    v107 = __PAIR64__(v78, DataLength);
    v81 = *(v10 + 5204);
    *(v10 + 64 + 8 * v81) = a2;
    v82 = v96;
    if (v96)
    {
      v82 = *v96;
    }

    v83 = v80 + v79;
    *(v10 + 4160 + 4 * v81) = v82;
    destination = 0;
    v105 = v80 + v79 - v73;
    LODWORD(v106) = v81;
    v84 = AppleAVDGetParameter(*(v10 + 5184), 55, &destination);
    if (v84)
    {
      v16 = v84;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AppleAVDWrapperFghrnDecoderDecodeFrame";
        *&buf[12] = 1024;
        *&buf[14] = v16;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): AppleAVDGetParameter [kAppleAVDGetCompressedPictureBuffer] failed with %d\n", buf, 0x12u);
      }

      kdebug_trace();
      VTDecoderSessionEmitDecodedFrame();
      if (v96)
      {
        *v96 = 2;
      }

      goto LABEL_124;
    }

    v85 = destination;
    if (CMBlockBufferCopyDataBytes(theSourceBuffer, v73, v83 - v73, destination))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING, fail to copy data bytes, nothing to decode", buf, 2u);
      }

      kdebug_trace();
      VTDecoderSessionEmitDecodedFrame();
      AppleAVDReleaseOneCPBWithFrameworkError(*(v10 + 5184), *(v10 + 5204));
      if (v96)
      {
        *v96 = 0;
      }

      goto LABEL_172;
    }

    v115[0] = v85;
    v115[1] = v83 - v73;
    v116 = *(v10 + 5204);
    v135 = 0;
    AppleAVDSetParameter(*(v10 + 5184), 38, &v107);
    v124 = 0;
    v129 = v74;
    v130 = v72 == v95;
    if (v98 && *(v10 + 5416) == 4 && BytePtr)
    {
      populateDecoderCryptor(v115, BytePtr, v98, v83, &v103);
      v86 = v124;
      *(v114 + v74) = v75 + 1;
      if (v86)
      {
        v87 = 0;
        while (1)
        {
          v88 = v123[v87];
          if (v88 < v73)
          {
            break;
          }

          v123[v87++] = v88 - v73;
          if (v87 >= v124)
          {
            goto LABEL_155;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *&buf[4] = v88;
          *&buf[8] = 1024;
          *&buf[10] = v73;
          v69 = MEMORY[0x277D86220];
          v70 = "AppleAVD: AppleAVD_FghrnVideoDecoder ERROR: Slice Offset = %d < %d is invalid\n";
          v71 = 14;
          goto LABEL_126;
        }

        goto LABEL_127;
      }
    }

    else
    {
      *(v114 + v74) = v75 + 1;
    }

LABEL_155:
    v89 = *(v10 + 5576);
    if (v89)
    {
      WriteFrame(v89, v85, v83 - v73, v83 - v73, *(v10 + 5204));
    }

    if (AppleAVDDecodeFrame(*(v10 + 5184), v115))
    {
      break;
    }

    v90 = *(v10 + 5568);
    if (v90)
    {
      WriteFrame(v90, v85, v83 - v73, v83 - v73, *(v10 + 5204));
    }

    ++*(v10 + 5204);
    v121 = 0;
    ++v72;
    v73 = v83;
    v67 = v94;
    if (v72 == v94)
    {
      goto LABEL_127;
    }
  }

  kdebug_trace();
  VTDecoderSessionEmitDecodedFrame();
  AppleAVDReleaseOneCPBWithFrameworkError(*(v10 + 5184), *(v10 + 5204));
  if (v96)
  {
    *v96 = 2;
  }

  v16 = v119;
  v91 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (!v16)
  {
    if (v91)
    {
      v93 = *(v10 + 5204);
      *buf = 67109120;
      *&buf[4] = v93;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_FghVideoDecoder_DecodeFrame ERROR: framenum %d kVTVideoDecoderMalfunctionErr", buf, 8u);
    }

LABEL_172:
    v16 = -12911;
    goto LABEL_124;
  }

  if (v91)
  {
    v92 = *(v10 + 5204);
    *buf = 67109376;
    *&buf[4] = v92;
    *&buf[8] = 1024;
    *&buf[10] = v16;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_FghVideoDecoder_DecodeFrame ERROR: framenum %d decryptError %x", buf, 0xEu);
    v16 = v119;
    if (!v119)
    {
      goto LABEL_127;
    }
  }

LABEL_124:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AppleAVDWrapperFghrnDecoderDecodeFrame";
    *&buf[12] = 1024;
    *&buf[14] = v16;
    v69 = MEMORY[0x277D86220];
    v70 = "AppleAVD: %s(): failed with error %d\n";
    v71 = 18;
LABEL_126:
    _os_log_impl(&dword_277606000, v69, OS_LOG_TYPE_DEFAULT, v70, buf, v71);
  }

LABEL_127:
  pthread_mutex_unlock((v10 + 5248));
  kdebug_trace();
  return 0;
}

uint64_t AppleAVDWrapperFghrnDecoderCopySupportedPropertyDictionary(uint64_t a1, void *a2)
{
  pthread_once(&sCreateSupportedPropertyDictionaryOnce, Fghrn_createSupportedPropertyDictionary);
  result = 4294954392;
  if (a2)
  {
    if (sFghrnVideoDecoderSupportedPropertyDictionary)
    {
      v4 = CFRetain(sFghrnVideoDecoderSupportedPropertyDictionary);
      result = 0;
      *a2 = v4;
    }
  }

  return result;
}

uint64_t AppleAVDWrapperFghrnDecoderStartTileSession(uint64_t a1, uint64_t a2, const opaqueCMFormatDescription *a3)
{
  v59 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v45 = "AppleAVDWrapperFghrnDecoderStartTileSession";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): enter", buf, 0xCu);
  }

  v42 = 0;
  cf = 0;
  v58[0] = 875704438;
  v41 = 1;
  v39 = 0;
  pixelBufferOut = 0;
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 5680);
  pthread_mutex_init((DerivedStorage + 5248), 0);
  pthread_mutex_lock((DerivedStorage + 5248));
  *(DerivedStorage + 8) = a2;
  *(DerivedStorage + 16) = 1;
  FigFormatDescriptionRelease();
  v7 = FigFormatDescriptionRetain();
  *(DerivedStorage + 24) = v7;
  Dimensions = CMVideoFormatDescriptionGetDimensions(v7);
  *(DerivedStorage + 5232) = 0;
  *(DerivedStorage + 5240) = 0;
  *(DerivedStorage + 5208) = Dimensions;
  *(DerivedStorage + 5216) = Dimensions;
  *(DerivedStorage + 5312) = Dimensions;
  *(DerivedStorage + 5212) = HIDWORD(Dimensions);
  *(DerivedStorage + 5220) = HIDWORD(Dimensions);
  *(DerivedStorage + 5316) = HIDWORD(Dimensions);
  Extension = CMFormatDescriptionGetExtension(a3, *MEMORY[0x277CC0318]);
  if (Extension)
  {
    LOBYTE(Extension) = CFBooleanGetValue(Extension);
  }

  *(DerivedStorage + 5401) = Extension;
  *(DerivedStorage + 5204) = 1;
  *(DerivedStorage + 5628) = 3;
  *(DerivedStorage + 5668) = 1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(DerivedStorage + 5208);
    v11 = *(DerivedStorage + 5212);
    *buf = 136316418;
    v45 = "AppleAVDWrapperFghrnDecoderStartTileSession";
    v46 = 1024;
    v47 = v10;
    v48 = 1024;
    v49 = v11;
    v50 = 2048;
    *v51 = DerivedStorage;
    *&v51[8] = 2080;
    v52 = "06:37:34";
    *v53 = 2080;
    *&v53[2] = "Oct 23 2025";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s() codecType: AV1, %d x %d, session: %p, built %s %s", buf, 0x36u);
  }

  HeaderBuffer = CreateHeaderBuffer(DerivedStorage, a3);
  if (HeaderBuffer)
  {
    v13 = HeaderBuffer;
    Mutable = 0;
    goto LABEL_34;
  }

  if (*(DerivedStorage + 5345))
  {
    v15 = 69173248;
  }

  else
  {
    v15 = 276692992;
  }

  if (Dimensions * SHIDWORD(Dimensions) > v15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v45 = "AppleAVDWrapperFghrnDecoderStartTileSession";
      v46 = 1024;
      v47 = Dimensions;
      v48 = 1024;
      v49 = HIDWORD(Dimensions);
      v50 = 2048;
      *v51 = v15;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): error: width (%d) * height (%d) exceeds limit (%llu).\n", buf, 0x22u);
    }

    Mutable = 0;
    v13 = 4294954387;
    goto LABEL_34;
  }

  AVDFghrnInstance = CreateAVDFghrnInstance(DerivedStorage, v6);
  v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (AVDFghrnInstance)
  {
    if (v17)
    {
      *buf = 136315138;
      v45 = "AppleAVDWrapperFghrnDecoderStartTileSession";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR: CreateAVDFghrnInstance returned error", buf, 0xCu);
    }

    Mutable = 0;
    if (AVDFghrnInstance == -536870210)
    {
      v13 = 4294954383;
    }

    else
    {
      v13 = 4294954385;
    }

    goto LABEL_34;
  }

  if (v17)
  {
    v18 = *(DerivedStorage + 5400);
    v19 = *(DerivedStorage + 5320);
    v20 = *(DerivedStorage + 5324);
    v21 = *(DerivedStorage + 5328);
    v22 = *(DerivedStorage + 5332);
    v23 = *(DerivedStorage + 5401);
    v24 = *(DerivedStorage + 5344);
    v25 = *(DerivedStorage + 5345);
    v26 = *(DerivedStorage + 5346);
    *buf = 136317442;
    v45 = "AppleAVDWrapperFghrnDecoderStartTileSession";
    v46 = 1024;
    v47 = v18;
    v48 = 1024;
    v49 = v19;
    v50 = 1024;
    *v51 = v20;
    *&v51[4] = 1024;
    *&v51[6] = v21;
    LOWORD(v52) = 1024;
    *(&v52 + 2) = v22;
    HIWORD(v52) = 1024;
    *v53 = v23;
    *&v53[4] = 1024;
    *&v53[6] = v24;
    v54 = 1024;
    v55 = v25;
    v56 = 1024;
    v57 = v26;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s():  %d %d %d %d %d %d %d %d %d\n", buf, 0x42u);
  }

  v27 = *(DerivedStorage + 5345);
  if ((v27 | 2) == 2 && v27 == *(DerivedStorage + 5346))
  {
    createPixelFormatList(v27, *(DerivedStorage + 5344), *(DerivedStorage + 5401), 1, v58, &v41, 0, *(DerivedStorage + 5224), 0, 0, 0, 0);
    v28 = (*(DerivedStorage + 5216) + 1 + ((*(DerivedStorage + 5216) + 1) >> 31)) & 0xFFFFFFFE;
    *(DerivedStorage + 5216) = v28;
    v29 = (*(DerivedStorage + 5220) + 1 + ((*(DerivedStorage + 5220) + 1) >> 31)) & 0xFFFFFFFE;
    *(DerivedStorage + 5220) = v29;
    if (CreateDispPixelBufferAttributesDictionary(*(DerivedStorage + 5224), Dimensions, SHIDWORD(Dimensions), v28, v29, v58, v41, 0, &cf))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v45 = "AppleAVDWrapperFghrnDecoderStartTileSession";
        v30 = MEMORY[0x277D86220];
        v31 = "AppleAVD: %s(): ERROR: CreateDispPixelBufferAttributesDictionary failed";
        v32 = 12;
LABEL_31:
        _os_log_impl(&dword_277606000, v30, OS_LOG_TYPE_DEFAULT, v31, buf, v32);
        goto LABEL_32;
      }

      goto LABEL_32;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    setSIntValue(Mutable, *MEMORY[0x277CE2AF0], 8);
    setSIntValue(Mutable, *MEMORY[0x277CE2AE8], 8);
    setSIntValue(Mutable, *MEMORY[0x277CE2AE0], 64);
    setSIntValue(Mutable, *MEMORY[0x277CE2AB0], 0x10000);
    setSIntValue(Mutable, *MEMORY[0x277CE2AD0], 64);
    setSIntValue(Mutable, *MEMORY[0x277CE2AB8], 0x10000);
    setSIntValue(Mutable, *MEMORY[0x277CE2AD8], 64);
    setSIntValue(Mutable, *MEMORY[0x277CE2AA0], 262080);
    setSIntValue(Mutable, *MEMORY[0x277CE2AC8], 64);
    setSIntValue(Mutable, *MEMORY[0x277CE2AC0], 64);
    VTTileDecoderSessionSetTileDecodeRequirements();
    if (CreateUncompressedPixelBufferAttributesDictionary(*(DerivedStorage + 5224), Dimensions, SHIDWORD(Dimensions), *(DerivedStorage + 5216), *(DerivedStorage + 5220), v58, v41, 0, &v42))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      *buf = 136315138;
      v45 = "AppleAVDWrapperFghrnDecoderStartTileSession";
      v35 = MEMORY[0x277D86220];
      v36 = "AppleAVD: %s(): ERROR: CreatePixelBufferAttributesDictionary failed";
    }

    else
    {
      v37 = *MEMORY[0x277CBECE8];
      if (!CVPixelBufferCreate(*MEMORY[0x277CBECE8], Dimensions, Dimensions >> 32, v58[0], v42, &pixelBufferOut))
      {
        if (AppleAVDSetParameter(*(DerivedStorage + 5184), 28, pixelBufferOut))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v45 = "AppleAVDWrapperFghrnDecoderStartTileSession";
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR: AppleAVDSetParameter:kAppleAVDSetTileCVPixelBufRefDecode failed", buf, 0xCu);
          }

          v38 = pixelBufferOut;
          if (!pixelBufferOut)
          {
            goto LABEL_33;
          }
        }

        else
        {
          if (CVPixelBufferCreate(v37, Dimensions, Dimensions >> 32, v58[0], v42, &v39))
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_33;
            }

            *buf = 136315138;
            v45 = "AppleAVDWrapperFghrnDecoderStartTileSession";
            v35 = MEMORY[0x277D86220];
            v36 = "AppleAVD: %s(): ERROR: CVPixelBufferCreate failed";
            goto LABEL_49;
          }

          if (!AppleAVDSetParameter(*(DerivedStorage + 5184), 29, v39))
          {
            v13 = 0;
            *(DerivedStorage + 5201) = 1;
            *(DerivedStorage + 5552) = 2;
            goto LABEL_36;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v45 = "AppleAVDWrapperFghrnDecoderStartTileSession";
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR: AppleAVDSetParameter:kAppleAVDSetTileCVPixelBufPostProcess failed", buf, 0xCu);
          }

          v38 = v39;
          if (!v39)
          {
            goto LABEL_33;
          }
        }

        CVPixelBufferRelease(v38);
        goto LABEL_33;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      *buf = 136315138;
      v45 = "AppleAVDWrapperFghrnDecoderStartTileSession";
      v35 = MEMORY[0x277D86220];
      v36 = "AppleAVD: %s(): ERROR: CVPixelBufferCreate failed";
    }

LABEL_49:
    _os_log_impl(&dword_277606000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, 0xCu);
    goto LABEL_33;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v33 = *(DerivedStorage + 5346);
    *buf = 136315650;
    v45 = "AppleAVDWrapperFghrnDecoderStartTileSession";
    v46 = 1024;
    v47 = v27;
    v48 = 1024;
    v49 = v33;
    v30 = MEMORY[0x277D86220];
    v31 = "AppleAVD: ERROR: %s(): invalid bit depth [luma depth minus 8 = %d, chroma depth minus 8 = %d]\n";
    v32 = 24;
    goto LABEL_31;
  }

LABEL_32:
  Mutable = 0;
LABEL_33:
  v13 = 4294954385;
LABEL_34:
  FigFormatDescriptionRelease();
  *(DerivedStorage + 24) = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v45 = "AppleAVDWrapperFghrnDecoderStartTileSession";
    v46 = 1024;
    v47 = v13;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
  }

LABEL_36:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v42)
  {
    CFRelease(v42);
    v42 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  pthread_mutex_unlock((DerivedStorage + 5248));
  return v13;
}

uint64_t AppleAVDWrapperFghrnDecoderDecodeTile(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, _DWORD *a9)
{
  v86 = *MEMORY[0x277D85DE8];
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 136315138;
      *&buf[1] = "AppleAVDWrapperFghrnDecoderDecodeTile";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s() - ERROR! storage is NULL\n", buf, 0xCu);
    }

    return 311;
  }

  v15 = DerivedStorage;
  pthread_mutex_lock(DerivedStorage + 82);
  v16 = *(v15 + 5552);
  if (v16 != 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 136315394;
      *&buf[1] = "AppleAVDWrapperFghrnDecoderDecodeTile";
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = v16;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s called on plugin in state %d", buf, 0x12u);
    }

    pthread_mutex_unlock((v15 + 5248));
    return 311;
  }

  if (!Fghrn_shouldDecodeFrame(v15, a3))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(v15 + 5204);
      buf[0] = 136315394;
      *&buf[1] = "AppleAVDWrapperFghrnDecoderDecodeTile";
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = v22;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s(): should not decode frame %d!\n", buf, 0x12u);
    }

    MEMORY[0x277CAEB50](*(v15 + 8), a2, 4294954385, 2, 0);
    if (a9)
    {
      *a9 = 2;
    }

    goto LABEL_29;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(a3);
  v18 = DataBuffer;
  if (!DataBuffer)
  {
    goto LABEL_77;
  }

  DataLength = CMBlockBufferGetDataLength(DataBuffer);
  if (CMBlockBufferGetDataLength(v18) != DataLength && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315394;
    *&buf[1] = "AppleAVDWrapperFghrnDecoderDecodeTile";
    LOWORD(buf[3]) = 1024;
    *(&buf[3] + 2) = 3312;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
  }

  v45 = CMBlockBufferGetDataLength(v18);
  if (!v45)
  {
LABEL_77:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 134218240;
      *&buf[1] = v18;
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR:  either tile dataBuffer=%p is invalid or dataLength=%u is invalid!", buf, 0x12u);
    }

    v21 = -12909;
    MEMORY[0x277CAEB50](*(v15 + 8), a2, 4294954387, 2, 0);
    goto LABEL_21;
  }

  bzero(v55, 0x888uLL);
  if (*(v15 + 5548))
  {
    if ((a8 & 4) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (!*(v15 + 5544))
  {
LABEL_32:
    v23 = 1;
    goto LABEL_33;
  }

  v23 = 2;
LABEL_33:
  v57 = v23;
LABEL_34:
  v60 = 0;
  v59 = 0;
  v61 = 0x100000000;
  v63 = 1;
  v67 = 0;
  v62 = a7;
  v64 = a6;
  if (a8)
  {
    v58 = 0;
    v24 = a9;
    if (a9)
    {
      *a9 |= 1u;
    }
  }

  else
  {
    v58 = 1;
    v24 = a9;
  }

  memset(v85, 0, 240);
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v76 = 0u;
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  memset(buf, 0, sizeof(buf));
  v48 = 0;
  v49 = 0;
  destination = 0;
  v47 = 0;
  DecoderSuperFrameOffsetInfo = getDecoderSuperFrameOffsetInfo(v18, buf, 0);
  if (DecoderSuperFrameOffsetInfo < 0)
  {
    v21 = DecoderSuperFrameOffsetInfo;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v51 = 136315394;
      v52 = "AppleAVDWrapperFghrnDecoderDecodeTile";
      v53 = 1024;
      v54 = v21;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Bad Bitstream, failed with %d\n", v51, 0x12u);
    }

    MEMORY[0x277CAEB50](*(v15 + 8), a2, 4294954385, 2, 0);
    if (v24)
    {
      *v24 = 2;
    }

    goto LABEL_23;
  }

  v26 = buf[0];
  if (!buf[0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v51 = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_FghrnVideoDecoder ERROR, there's no frame to decode\n", v51, 2u);
    }

    MEMORY[0x277CAEB50](*(v15 + 8), a2, 4294954385, 0, 0);
    v21 = -12909;
    goto LABEL_23;
  }

  v27 = 0;
  v28 = v85 + 4;
  v50[0] = 0;
  v50[1] = 0;
  v44 = a2;
  v29 = (buf[0] - 1);
  v30 = v85 + 4;
  while (1)
  {
    v32 = *v30;
    v30 += 4;
    v31 = v32;
    v33 = buf[v32 + 1];
    if (v33 == 1)
    {
      v34 = 0;
    }

    else
    {
      v34 = v33 == *(v50 + v31) + 1 ? 2 : 1;
    }

    v35 = &v28[32 * v31];
    v36 = *(v35 - 32);
    v37 = *(v35 - 64);
    v49 = __PAIR64__(v34, v45);
    v38 = *(v15 + 5204);
    *(v15 + 2112 + 8 * v38) = v44;
    v39 = v24 ? *v24 : 0;
    v40 = v37 + v36;
    *(v15 + 4160 + 4 * v38) = v39;
    destination = 0;
    v47 = v37 + v36 - v27;
    LODWORD(v48) = v38;
    v41 = AppleAVDGetParameter(*(v15 + 5184), 55, &destination);
    if (v41)
    {
      break;
    }

    v42 = destination;
    if (CMBlockBufferCopyDataBytes(v18, v27, v40 - v27, destination))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v51 = 0;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING, fail to copy data bytes, nothing to decode", v51, 2u);
      }

      MEMORY[0x277CAEB50](*(v15 + 8), v44, 4294954385, 2, 0);
      AppleAVDReleaseOneCPBWithFrameworkError(*(v15 + 5184), *(v15 + 5204));
      if (a9)
      {
        *a9 = 2;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
LABEL_73:
        v43 = *(v15 + 5204);
        *v51 = 67109120;
        LODWORD(v52) = v43;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_FghVideoDecoder_DecodeTile ERROR: framenum %d kVTVideoDecoderMalfunctionErr", v51, 8u);
      }

LABEL_74:
      v21 = -12911;
      goto LABEL_23;
    }

    v55[0] = v42;
    v55[1] = v40 - v27;
    v56 = *(v15 + 5204);
    v68 = 0;
    AppleAVDSetParameter(*(v15 + 5184), 38, &v49);
    v65 = v31;
    v66 = v29 == 0;
    ++*(v50 + v31);
    if (AppleAVDDecodeFrame(*(v15 + 5184), v55))
    {
      MEMORY[0x277CAEB50](*(v15 + 8), v44, 4294954385, 2, 0);
      AppleAVDReleaseOneCPBWithFrameworkError(*(v15 + 5184), *(v15 + 5204));
      if (a9)
      {
        *a9 = 2;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_73;
      }

      goto LABEL_74;
    }

    ++*(v15 + 5204);
    --v29;
    v28 = v30;
    v27 = v40;
    --v26;
    v24 = a9;
    if (!v26)
    {
      goto LABEL_29;
    }
  }

  v21 = v41;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v51 = 136315394;
    v52 = "AppleAVDWrapperFghrnDecoderDecodeTile";
    v53 = 1024;
    v54 = v21;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): AppleAVDGetParameter [kAppleAVDGetCompressedPictureBuffer] failed with %d\n", v51, 0x12u);
  }

  MEMORY[0x277CAEB50](*(v15 + 8), v44, 4294954385, 2, 0);
LABEL_21:
  if (a9)
  {
    *a9 = 2;
  }

LABEL_23:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v51 = 136315394;
    v52 = "AppleAVDWrapperFghrnDecoderDecodeTile";
    v53 = 1024;
    v54 = v21;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", v51, 0x12u);
  }

LABEL_29:
  pthread_mutex_unlock((v15 + 5248));
  return 0;
}

uint64_t CreateAVDFghrnInstance(uint64_t a1, unsigned __int8 a2)
{
  v33 = *MEMORY[0x277D85DE8];
  *v27 = 0;
  v3 = AppleAVDOpenConnection(v27, 4, 1, a2);
  if (v3)
  {
    return v3;
  }

  v5 = *v27;
  *(a1 + 5184) = *v27;
  *(a1 + 5552) = 1;
  if (*(a1 + 5596) != -1)
  {
    *v28 = *(a1 + 5596);
    if (AppleAVDSetParameter(v5, 40, v28) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_FghVideoDecoder ERROR: kAppleAVDMemCacheMode set failed", buf, 2u);
    }

    v5 = *(a1 + 5184);
  }

  v26 = *(a1 + 5592);
  if (AppleAVDSetParameter(v5, 49, &v26) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v28 = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: CreateAVDFghrnInstance ERROR: kAppleAVDSetTryEveryFrame set failed", v28, 2u);
  }

  v25 = *(a1 + 5416);
  v6 = AppleAVDSetParameter(*(a1 + 5184), 24, &v25);
  if (v6)
  {
    v3 = v6;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return v3;
    }

    v7 = *(a1 + 5204);
    *v28 = 67109376;
    *v29 = v7;
    *&v29[4] = 1024;
    *&v29[6] = v3;
    v8 = MEMORY[0x277D86220];
    v9 = "AppleAVD: AppleAVD_LgrnVideoDecoder: frame# %d, Could not set kAppleAVDSetCryptScheme, err %d\n";
    v10 = v28;
    v11 = 14;
LABEL_14:
    _os_log_impl(&dword_277606000, v8, OS_LOG_TYPE_DEFAULT, v9, v10, v11);
    return v3;
  }

  *buf = DisplayCallBack;
  v3 = AppleAVDSetParameter(*v27, 1, buf);
  if (v3)
  {
    return v3;
  }

  if (*(a1 + 5644))
  {
    v12 = PostEmitCleanUpCallBack;
  }

  else
  {
    v12 = 0;
  }

  v23 = v12;
  v13 = AppleAVDSetParameter(*v27, 71, &v23);
  if (v13)
  {
    v3 = v13;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return v3;
    }

    *v28 = 0;
    v8 = MEMORY[0x277D86220];
    v9 = "AppleAVD: AppleAVD_FghrnDecoder - ERROR setting parameter kAppleAVDPostEmitCleanUpCallBack";
    goto LABEL_25;
  }

  v14 = AppleAVDSetParameter(*v27, 70, (a1 + 5644));
  if (v14)
  {
    v3 = v14;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return v3;
    }

    *v28 = 0;
    v8 = MEMORY[0x277D86220];
    v9 = "AppleAVD: AppleAVD_FghrnDecoder - ERROR setting parameter kAppleAVDSetParavirtualizedSession";
LABEL_25:
    v10 = v28;
LABEL_26:
    v11 = 2;
    goto LABEL_14;
  }

  if (AppleAVDSetParameter(*v27, 67, *(a1 + 5616)))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_FghrnDecoder - AppleAVDSetParameter kAppleAVDSetTaggedBufGroupArray returned ERROR", v28, 2u);
    }

    return 4294954385;
  }

  v3 = AppleAVDSetParameter(*v27, 2, a1);
  if (v3)
  {
    return v3;
  }

  if (AppleAVDSetParameter(*(a1 + 5184), 51, (a1 + 5600)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v28 = 136315138;
    *v29 = "CreateAVDFghrnInstance";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR setting kAppleAVDSetOnDemandDVAMap failed", v28, 0xCu);
  }

  if (AppleAVDSetParameter(*(a1 + 5184), 52, (a1 + 5652)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v28 = 136315138;
    *v29 = "CreateAVDFghrnInstance";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR setting kAppleAVDSetAVDCoreControlPerfWeight failed", v28, 0xCu);
  }

  if (AppleAVDSetParameter(*(a1 + 5184), 57, (a1 + 5684)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v28 = 136315138;
    *v29 = "CreateAVDFghrnInstance";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR setting kAppleAVDSetCPBCacheBufferSizeFactor failed", v28, 0xCu);
  }

  if (AppleAVDSetParameter(*(a1 + 5184), 58, (a1 + 5688)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v28 = 136315138;
    *v29 = "CreateAVDFghrnInstance";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR setting kAppleAVDSetCPBCacheNumBuffers failed", v28, 0xCu);
  }

  if (AppleAVDSetParameter(*(a1 + 5184), 59, (a1 + 5604)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v28 = 136315138;
    *v29 = "CreateAVDFghrnInstance";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR setting kAppleAVDSetMiscPreferences failed", v28, 0xCu);
  }

  v22 = 256;
  AppleAVDSetParameter(*v27, 13, &v22);
  *(a1 + 5632) = 0;
  v15 = IOSurfaceAcceleratorCreate();
  if (v15)
  {
    v16 = v15;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 136315394;
      *v29 = "CreateAVDFghrnInstance";
      *&v29[8] = 1024;
      *&v29[10] = v16;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Error (0x%x) creating IOSurfaceAccelerator client.", v28, 0x12u);
    }

    *(a1 + 5632) = 0;
  }

  if (AppleAVDSetParameter(*(a1 + 5184), 64, (a1 + 5632)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v28 = 136315138;
    *v29 = "CreateAVDFghrnInstance";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR setting kAppleAVDSetMsrRef failed", v28, 0xCu);
  }

  if (AppleAVDSetParameter(*(a1 + 5184), 65, (a1 + 5628)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v28 = 136315138;
    *v29 = "CreateAVDFghrnInstance";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR setting kAppleAVDSetAv1FilmGrainMode failed", v28, 0xCu);
  }

  if (AppleAVDSetParameter(*(a1 + 5184), 75, (a1 + 5669)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v28 = 136315138;
    *v29 = "CreateAVDFghrnInstance";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR setting kAppleAVDSetAllowBitstreamToChangeFrameDimensions failed", v28, 0xCu);
  }

  *&v29[4] = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0;
  *v28 = 4;
  *v29 = *(a1 + 5208);
  *&v29[12] = *(a1 + 5232);
  LODWORD(v30) = *(a1 + 5240);
  v17 = *(a1 + 5344);
  LODWORD(v31) = *(a1 + 5345);
  DWORD1(v31) = v17;
  HIDWORD(v31) = *(a1 + 5640);
  BYTE2(v32) = *(a1 + 16) == 1;
  v18 = AppleAVDInitializeDecoder(*(a1 + 5184), v28);
  if (v18)
  {
    v3 = v18;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return v3;
    }

    *v21 = 0;
    v8 = MEMORY[0x277D86220];
    v9 = "AppleAVD: AppleAVD_FghrnVideoDecoder ERROR: AppleAVDInitializeDecoder : init decoder device";
    goto LABEL_66;
  }

  v19 = AppleAVDGetParameter(*v27, 8, (a1 + 5224));
  if (v19)
  {
    v3 = v19;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return v3;
    }

    *v21 = 0;
    v8 = MEMORY[0x277D86220];
    v9 = "AppleAVD: AppleAVD_FghrnDecoder - AppleAVDDeviceType returned ERROR";
    goto LABEL_66;
  }

  if (*(a1 + 16) != 1)
  {
    v20 = AppleAVDGetParameter(*(a1 + 5184), 12, (a1 + 5312));
    if (v20)
    {
      v3 = v20;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v3;
      }

      *v21 = 0;
      v8 = MEMORY[0x277D86220];
      v9 = "AppleAVD: AppleAVD_FghrnDecoder ERROR: kAppleAVDGetSequenceParams : Could not get Params";
LABEL_66:
      v10 = v21;
      goto LABEL_26;
    }
  }

  if (*(a1 + 5312) >= 0x40u && *(a1 + 5316) > 0x3Fu)
  {
    return 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_FghrnVideoDecoder ERROR: Unsupported picture size!", v21, 2u);
  }

  return 305;
}

size_t WriteIVFHeader(FILE *__stream, __int16 a2, __int16 a3)
{
  __ptr = 1179208516;
  v10[3] = 0;
  strcpy(v10, "AV01 ");
  v9 = a2;
  v8 = a3;
  v7 = 90000;
  v6 = 1;
  v5 = 26999942;
  fwrite(&__ptr, 1uLL, 4uLL, __stream);
  fwrite(&v10[3], 1uLL, 2uLL, __stream);
  fwrite(&v10[2], 1uLL, 2uLL, __stream);
  fwrite(v10, 1uLL, 4uLL, __stream);
  fwrite(&v9, 1uLL, 2uLL, __stream);
  fwrite(&v8, 1uLL, 2uLL, __stream);
  fwrite(&v7, 1uLL, 4uLL, __stream);
  fwrite(&v6, 1uLL, 4uLL, __stream);
  fwrite(&v5, 1uLL, 4uLL, __stream);
  return fwrite(&v10[3], 1uLL, 4uLL, __stream);
}

uint64_t InitPixelBufferCompressionNotSupported(uint64_t a1)
{
  result = InitDisplayPixelBufferCompressionNotSupported(*a1, *(a1 + 5184), *(a1 + 5224), *(a1 + 5208), *(a1 + 5212), *(a1 + 5216), *(a1 + 5220), *(a1 + 5345), *(a1 + 5344), *(a1 + 5401), *(a1 + 5528), (a1 + 32), (a1 + 48), 0, 0);
  if (!result)
  {
    return InitReferencePixelBufferCompressionNotSupported(*a1, *(a1 + 5184), *(a1 + 5224), *(a1 + 5208), *(a1 + 5212), *(a1 + 5216), *(a1 + 5220), *(a1 + 5345), *(a1 + 5344), *(a1 + 5401), *(a1 + 5528), 0, 8, 0, 0, 0, (a1 + 40), (a1 + 56));
  }

  return result;
}

uint64_t PostEmitCleanUpCallBack(uint64_t a1)
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

uint64_t Fghrn_shouldDecodeFrame(uint64_t a1, void *target)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = CMGetAttachment(target, *MEMORY[0x277CC1AA0], 0);
  if (v4 && CFEqual(v4, *MEMORY[0x277CBED28]))
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v5)
    {
      v23 = 136315138;
      v24 = "Fghrn_shouldDecodeFrame";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(), found incomplete progressive sample! Quitting.", &v23, 0xCu);
      return 0;
    }

    return result;
  }

  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(target, 0);
  if (!SampleAttachmentsArray || (ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0)) == 0)
  {
    *(a1 + 5540) = 0;
    return 1;
  }

  v9 = ValueAtIndex;
  Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x277CC0690]);
  v11 = CFDictionaryGetValue(v9, *MEMORY[0x277CC06A0]);
  v12 = CFDictionaryGetValue(v9, *MEMORY[0x277CC06A8]);
  v13 = *(a1 + 5536);
  if (v13 == 3)
  {
    if (v11)
    {
      v14 = MEMORY[0x277CBED10];
      v15 = v11;
      goto LABEL_19;
    }

LABEL_20:
    v16 = 1;
    goto LABEL_21;
  }

  if (v13 == 2)
  {
    if (v11 && !CFEqual(v11, *MEMORY[0x277CBED10]))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_21;
      }

      v14 = MEMORY[0x277CBED28];
      v15 = v12;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (v13 != 1 || !Value)
  {
    goto LABEL_20;
  }

  v14 = MEMORY[0x277CBED28];
  v15 = Value;
LABEL_19:
  v16 = CFEqual(v15, *v14) != 0;
LABEL_21:
  v17 = *MEMORY[0x277CBED28];
  v19 = v11 != *MEMORY[0x277CBED28] || v12 == v17;
  v20 = v19 && v16;
  if (*(a1 + 5540) == 1)
  {
    result = v20;
  }

  else
  {
    result = v16;
  }

  if (v11 != v17 || v12 == v17)
  {
    *(a1 + 5540) = 0;
  }

  else
  {
    if (Value == *MEMORY[0x277CBED10])
    {
      v22 = 1;
    }

    else
    {
      v22 = result;
    }

    if ((v22 & 1) == 0)
    {
      result = 0;
      *(a1 + 5540) = 1;
    }
  }

  return result;
}

uint64_t FigCPECryptorGetNativeSession(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigCPECryptorGetExternalProtectionMethods(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t getDecoderSuperFrameOffsetInfo(OpaqueCMBlockBuffer *a1, int *a2, unsigned int a3)
{
  v37 = *MEMORY[0x277D85DE8];
  DataLength = CMBlockBufferGetDataLength(a1);
  v24 = 0;
  if (!DataLength)
  {
    return 0;
  }

  v7 = DataLength;
  *a2 = 0;
  v8 = malloc_type_malloc(DataLength, 0x100004077774924uLL);
  if (!v8)
  {
    return 4294954392;
  }

  v9 = v8;
  if (CMBlockBufferCopyDataBytes(a1, 0, v7, v8))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v28 = "getDecoderSuperFrameOffsetInfo";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: ERROR, fail to copy data bytes", buf, 0xCu);
    }

    return 4294954387;
  }

  *(a2 + 1) = 0;
  v11 = a2 + 1;
  *(a2 + 3) = 0;
  v12 = v7;
  v13 = v9;
  while (1)
  {
    v25 = 0;
    v26 = 0;
    next_frame = av1_get_next_frame(v13, v12, 0, 0, a3, &v25, &v26, &v24);
    if ((next_frame & 0x80000000) != 0)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v20 = MEMORY[0x277D86220];
      v21 = "AppleAVD: ERROR: Parser av1_get_next_frame() function return fail!\n";
      v22 = 2;
LABEL_23:
      _os_log_impl(&dword_277606000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, v22);
      goto LABEL_24;
    }

    v14 = v25;
    if (!v25)
    {
      goto LABEL_24;
    }

    v15 = v26;
    v13 = &v25[v26];
    v16 = (&v25[v26] - v9);
    if (v7 < v16)
    {
      break;
    }

    v17 = *a2;
    v18 = v24;
    v19 = v11[v24];
    a2[8 * v24 + 37 + v19] = v25 - v9;
    a2[8 * v18 + 5 + v19] = v15;
    a2[v17 + 69] = v18;
    LODWORD(v17) = v11[v18] + 1;
    v11[v18] = v17;
    ++*a2;
    if (v17 >= 8)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 136315394;
      v28 = "getDecoderSuperFrameOffsetInfo";
      v29 = 1024;
      LODWORD(v30) = 2240;
      v20 = MEMORY[0x277D86220];
      v21 = "AppleAVD: %s: Warning, out of memory on line %d\n";
      v22 = 18;
      goto LABEL_23;
    }

    v12 = v7 - v16;
    if (v7 == v16)
    {
      goto LABEL_24;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v28 = "getDecoderSuperFrameOffsetInfo";
    v29 = 2048;
    v30 = v15;
    v31 = 2048;
    v32 = v13;
    v33 = 2048;
    v34 = v9;
    v35 = 2048;
    v36 = v14;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: ERROR, frame size %llu is probably bogus, pBuff=%p pBuffBegin=%p frameStart=%p\n", buf, 0x34u);
  }

  next_frame = 4294954387;
LABEL_24:
  free(v9);
  return next_frame;
}

size_t WriteFrame(FILE *__stream, const void *a2, int a3, unsigned int a4, int a5)
{
  v10 = 33 * a5;
  __ptr = a3;
  v9 = 0;
  fwrite(&__ptr, 1uLL, 4uLL, __stream);
  fwrite(&v10, 1uLL, 4uLL, __stream);
  fwrite(&v9, 1uLL, 4uLL, __stream);
  return fwrite(a2, 1uLL, a4, __stream);
}

CFDictionaryRef Fghrn_createFrameTypesArrayElement(const void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277CE2698];
  v4 = a1;
  keys = v1;
  v2 = CFDictionaryCreate(*MEMORY[0x277CBECE8], &keys, &v4, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "Fghrn_createFrameTypesArrayElement";
    v8 = 2080;
    v9 = "frameTypeDict";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %s\n", buf, 0x16u);
  }

  return v2;
}

void *createViolaLghDecoder(uint64_t a1)
{
  v2 = operator new(0xC48uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecViolaLgh::CAHDecViolaLgh(v2, a1);
  }

  return v3;
}

void *CAHDecViolaLgh::CAHDecViolaLgh(void *a1, uint64_t a2)
{
  CAHDec::CAHDec(a1);
  *v4 = &unk_288666AB8;
  *(v4 + 256) = a2;
  *(v4 + 456) = 150180;
  *(v4 + 8) = 676;
  *(v4 + 16) = xmmword_27775C520;
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

void CAHDecViolaLgh::~CAHDecViolaLgh(CAHDecViolaLgh *this)
{
  *this = &unk_288666AB8;
  CAHDecViolaLgh::freeWorkBuf_SPS(this);
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
  CAHDecViolaLgh::~CAHDecViolaLgh(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecViolaLgh::init(CAHDecViolaLgh *this)
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
        v13 = 215;
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
      v13 = 217;
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

uint64_t CAHDecViolaLgh::startPicture(CAHDecViolaLgh *this, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *(this + 13) = 0;
  v3 = *(this + 34);
  *(this + 33) = v3;
  if (v3)
  {
    bzero(v3, 0x24AA4uLL);
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

uint64_t CAHDecViolaLgh::DecodePicture(CAHDecViolaLgh *this, int a2)
{
  if (CAHDecViolaLgh::startPicture(this, a2))
  {
    return 1;
  }

  (*(*this + 40))(this);
  (*(*this + 56))(this);
  (*(*this + 64))(this);
  CAHDecViolaLgh::populateTiles(this);
  (*(*this + 96))(this, 0);
  (*(*this + 48))(this, *(this + 114));
  return 0;
}

uint64_t CAHDecViolaLgh::populateTiles(CAHDecViolaLgh *this)
{
  v1 = *(*(this + 32) + 17800);
  v2 = *(v1 + 312);
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    LODWORD(v6) = *(v1 + 316);
    v7 = *(this + *(this + 13) + 34) + 676;
    v8 = 2760;
    do
    {
      if (v6)
      {
        v9 = 0;
        v10 = v7 + 8 * v5;
        v11 = v8;
        do
        {
          CAHDecViolaLgh::populateTileRegisters(this, v10, *(*(this + 32) + 17800) + v11);
          ++v9;
          v6 = *(v1 + 316);
          v10 += 8;
          ++v5;
          v11 += 28;
        }

        while (v9 < v6);
        v2 = *(v1 + 312);
      }

      ++v4;
      v8 += 1792;
    }

    while (v4 < v2);
  }

  return 0;
}

uint64_t CAHDecViolaLgh::updateCommonRegisters(CAHDecViolaLgh *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecViolaLgh::populateSequenceRegisters(CAHDecViolaLgh *this)
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

uint64_t CAHDecViolaLgh::populateDARTAddr(uint64_t this, unsigned int a2)
{
  v2 = *(this + 256);
  v3 = *(v2 + 104 * a2 + 17788);
  v4 = (v2 + 232 * a2);
  v5 = *(this + 8 * v4[583] + 272);
  v5[72] = v5[72] & 0xFE000000 | ((v4[541] + v4[532]) >> 7);
  v5[74] = v5[74] & 0xFE000000 | ((v4[542] + v4[532]) >> 7);
  if (*(*(this + 256) + 2648) == 1)
  {
    v6 = v4 + 526;
    v5[71] = v5[71] & 0xFE000000 | ((v6[18] + v6[6]) >> 7);
    v5[73] = v5[73] & 0xFE000000 | ((v6[19] + v6[6]) >> 7);
  }

  if (!v3)
  {
    v7 = v5 + 78;
    v8 = 104 * a2 + 17688;
    v9 = 3;
    do
    {
      v10 = *(this + 256);
      v7[3] = v7[3] & 0xFE000000 | ((*(*(v10 + v8) + 52) + *(*(v10 + v8) + 16)) >> 7);
      v7[9] = v7[9] & 0xFE000000 | ((*(*(v10 + v8) + 56) + *(*(v10 + v8) + 16)) >> 7);
      if (*(*(this + 256) + 2648) == 1)
      {
        *v7 = *v7 & 0xFE000000 | ((*(*(v10 + v8) + 64) + *(*(v10 + v8) + 16)) >> 7);
        v7[6] = v7[6] & 0xFE000000 | ((*(*(v10 + v8) + 68) + *(*(v10 + v8) + 16)) >> 7);
      }

      v8 += 16;
      ++v7;
      --v9;
    }

    while (v9);
  }

  return this;
}

uint64_t CAHDecViolaLgh::populatePictureRegisters(CAHDecViolaLgh *this)
{
  v228 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(this + 33);
  v4 = *(v2 + 17800);
  if (!*(v4 + 37))
  {
    v8 = *(v4 + 100);
    v223 = *(v2 + 11988);
    v219 = 1 << v8;
    v220 = 1 << *(v4 + 96);
    v218 = v220 << v8;
    goto LABEL_5;
  }

  v5 = *(v4 + 100);
  v223 = *(v2 + 11988);
  v219 = 1 << v5;
  v220 = 1 << *(v4 + 96);
  v218 = v220 << v5;
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
  v221 = v6;
  if (v6)
  {
    v222 = 8;
  }

  else
  {
    v217 = v3;
    v48 = (v3 + 112);
    v49 = 2208;
    v222 = 3;
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
        v225 = "populatePictureRegisters";
        v226 = 1024;
        v227 = 563;
        _os_log_impl(&dword_277606000, v50, OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
        v53 = v48[3];
      }

      if ((v53 - 0x4000000) >= 0x7C010000 && os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v225 = "populatePictureRegisters";
        v226 = 1024;
        v227 = 564;
        _os_log_impl(&dword_277606000, v50, OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
      }

      ++v49;
      ++v48;
    }

    while (v49 != 2211);
    v3 = v217;
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
  v125 = *(*(this + 32) + 376 * v223 + 5976);
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
  v131 = *(v130 + 376 * v223 + 5976);
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
    v138 = *(v137 + 376 * v223 + 8);
    if (!*v138 && !*(v138 + 152) && !*(v138 + 156) || (result = CAHDec::addToPatcherList(this, v138, 284, *(v138 + 64), 0xFFFFFFFFLL, 7, v136, 4), !result))
    {
      v139 = *(this + 33);
      v140 = *(v139 + 292);
      *(v139 + 292) = 0;
      *(*(this + 33) + 292) ^= 0x1FFFFFFu;
      v141 = *(this + 33);
      v142 = *(v141 + 292);
      *(v141 + 292) = v140;
      v143 = *(*(this + 32) + 376 * v223 + 5976);
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

  v146 = v137 + 376 * v223;
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
  v143 = *(this + 32) + 376 * v223 + 6168;
  if (*v143 || *(*(this + 32) + 376 * v223 + 6320) || *(*(this + 32) + 376 * v223 + 6324))
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
  if ((v221 & 1) == 0)
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

  if (v218 < 2)
  {
    v205 = *(this + 33);
    *(v205 + 376) = 65537;
    *(v205 + 380) = 0;
    *(v205 + 382) = *(v4 + 108) >> 6;
    *(v205 + 510) = 0;
    *(v205 + 512) = *(v4 + 112) >> 6;
    v206 = *(this + 32);
  }

  else
  {
    v205 = *(this + 33);
    *(v205 + 376) = v220;
    v206 = *(this + 32);
    if (v219 >= 1)
    {
      v207 = v219;
      v208 = (*(v206 + 17800) + 2786);
      do
      {
        if ((*v208 & 1) == 0)
        {
          *(v205 + 510 + 2 * v222) = *(v208 - 26) >> 3;
        }

        v208 += 1792;
        --v207;
      }

      while (v207);
    }

    *(v205 + 378) = v219;
    if (v220 >= 1)
    {
      v209 = v220;
      v210 = *(v206 + 17800) + 2768;
      do
      {
        if ((*(v210 + 18) & 1) == 0)
        {
          *(v205 + 380 + 2 * v222) = *v210 >> 3;
        }

        v210 += 28;
        --v209;
      }

      while (v209);
    }
  }

  if (*(v206 + 2360) != 1)
  {
    return 0;
  }

  *(v205 + 524) = *(v205 + 524) & 0xFFFFFFFE | *(v206 + 2508) & 1;
  if (*(v206 + 2508))
  {
    *(v205 + 532) = 0x10000000;
    *(v205 + 536) = *(v206 + 2368);
    *(v205 + 544) = 0;
    *(v205 + 540) = 0;
    *(v205 + 552) = *(v206 + 2372);
    v211 = *(v206 + 2404);
    *(v205 + 568) = *(v206 + 2388);
    *(v205 + 584) = v211;
  }

  *(*(this + 33) + 524) = *(*(this + 33) + 524) & 0xFFFFFFFD | (2 * (*(v206 + 2512) & 1));
  if (*(v206 + 2512))
  {
    *(v205 + 600) = 0;
    v212 = *(v206 + 2424);
    *(v205 + 600) = (*(v206 + 2424) & 1) << 22;
    v213 = ((*(v206 + 2420) & 1) << 23) | ((v212 & 1) << 22) | 0x20000000;
    *(v205 + 600) = v213;
    if (!*(v206 + 2364))
    {
      ++v213;
    }

    *(v205 + 600) = v213;
    v214 = *(v206 + 2428);
    v215 = *(v206 + 2460);
    *(v205 + 620) = *(v206 + 2444);
    *(v205 + 636) = v215;
    *(v205 + 604) = v214;
  }

  *(*(this + 33) + 524) = *(*(this + 33) + 524) & 0xFFFFFFFB | (4 * (*(v206 + 2516) & 1));
  *(*(this + 33) + 524) = *(*(this + 33) + 524) & 0xFFFFFFF7 | (8 * (*(v206 + 2520) & 1));
  *(*(this + 33) + 524) = *(*(this + 33) + 524) & 0xFFFFFFEF | (16 * (*(v206 + 2524) & 1));
  *(v205 + 656) = 0;
  v216 = *(v206 + 2476) == 2 ? 805306368 : 813694976;
  *(v205 + 656) = v216;
  memcpy((v205 + 660), (v206 + 2480), 4 * *(v206 + 2476));
  if (!*(v206 + 2516))
  {
    return 0;
  }

  result = 0;
  *(v206 + 2516) = 0;
  return result;
}

uint64_t CAHDecViolaLgh::populateTileRegisters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 256);
  if (*(v3 + 2360) == 1)
  {
    *(a2 + 4) = 0;
    if (*(v3 + 2420))
    {
      v4 = *(v3 + 2504);
      v5 = 0x10000;
    }

    else
    {
      v6 = *(a3 + 16);
      if (v6 >= *(a3 + 24))
      {
        v6 = *(a3 + 24);
      }

      *(a2 + 4) = v6 << 22;
      v4 = *(v3 + 2504) | (v6 << 22);
      v5 = 65280;
    }

    *(a2 + 4) = v4;
    *(a2 + 4) = *(v3 + 2504) & v5 | v4;
  }

  return 0;
}

uint64_t CAHDecViolaLgh::populateAvdWork(CAHDecViolaLgh *this)
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
  v8 = v2 + 2724;
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
      *(v2 + 32) = 2724;
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
        v47 = 1041;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v19 = v42;
      }

      result = CAHDec::addToPatcherList(this, v16, 36 * v6 + 2744, v19, 0xFFFFFFFFLL, 0, -1, 4);
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

uint64_t CAHDecViolaLgh::allocWorkBuf_SPS(CAHDecViolaLgh *this, int *a2)
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
        v37 = 1270;
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
    v37 = 1275;
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
        v37 = 1254;
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
    v37 = 1259;
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

uint64_t CAHDecViolaLgh::allocWorkBuf_PPS(CAHDecViolaLgh *this, void *a2, void *a3, void *a4)
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
        v26 = 1349;
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
        v26 = 1352;
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
        v26 = 1358;
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
        v26 = 1364;
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
        v26 = 1372;
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
      v26 = 1380;
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
    v26 = 1386;
    v27 = 2080;
    v28 = "AZLeftPix";
    v16 = MEMORY[0x277D86220];
    goto LABEL_34;
  }

  return result;
}

uint64_t CAHDecViolaLgh::freeWorkBuf_SPS(CAHDecViolaLgh *this)
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

uint64_t *CAHDecViolaLgh::freeWorkBuf_PPS(uint64_t *this, void *a2)
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

uint64_t CAHDecViolaLgh::setVPInstrFifo(uint64_t this, int a2)
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

void *createHibiscusLghDecoder(uint64_t a1)
{
  v2 = operator new(0x11C8uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecHibiscusLgh::CAHDecHibiscusLgh(v2, a1);
  }

  return v3;
}

void *CAHDecHibiscusLgh::CAHDecHibiscusLgh(void *a1, uint64_t a2)
{
  CAHDec::CAHDec(a1);
  *v4 = &unk_288668C50;
  *(v4 + 256) = a2;
  *(v4 + 456) = 151564;
  *(v4 + 8) = 1036;
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

void CAHDecHibiscusLgh::~CAHDecHibiscusLgh(CAHDecHibiscusLgh *this)
{
  *this = &unk_288668C50;
  CAHDecHibiscusLgh::freeWorkBuf_SPS(this);
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
  CAHDecHibiscusLgh::~CAHDecHibiscusLgh(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecHibiscusLgh::init(CAHDecHibiscusLgh *this)
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
        v13 = 214;
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
      v13 = 216;
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

uint64_t CAHDecHibiscusLgh::startPicture(CAHDecHibiscusLgh *this, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *(this + 13) = 0;
  v3 = *(this + 34);
  *(this + 33) = v3;
  if (v3)
  {
    bzero(v3, 0x2500CuLL);
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

uint64_t CAHDecHibiscusLgh::DecodePicture(CAHDecHibiscusLgh *this, uint64_t a2)
{
  if (CAHDecHibiscusLgh::startPicture(this, a2))
  {
    return 1;
  }

  (*(*this + 40))(this);
  (*(*this + 56))(this);
  (*(*this + 64))(this);
  CAHDecHibiscusLgh::populateTiles(this);
  (*(*this + 96))(this, a2);
  (*(*this + 48))(this, *(this + 114));
  return 0;
}

uint64_t CAHDecHibiscusLgh::populateTiles(CAHDecHibiscusLgh *this)
{
  v1 = (*(*(*(this + 32) + 17800) + 316) * *(*(*(this + 32) + 17800) + 312));
  if (v1)
  {
    v3 = *(this + *(this + 13) + 34) + 1036;
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

uint64_t CAHDecHibiscusLgh::updateCommonRegisters(CAHDecHibiscusLgh *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecHibiscusLgh::populateSequenceRegisters(CAHDecHibiscusLgh *this)
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

uint64_t CAHDecHibiscusLgh::populatePictureRegisters(CAHDecHibiscusLgh *this)
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
        *(buf + 14) = 555;
        _os_log_impl(&dword_277606000, v56, OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
        v59 = v54[3];
      }

      if ((v59 - 0x4000000) >= 0x7C010000 && os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "populatePictureRegisters";
        WORD6(buf[0]) = 1024;
        *(buf + 14) = 556;
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
    v371 = 0u;
    v372 = 0u;
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

    v89 = !*&buf[0] && DWORD2(v371) == 0;
    v90 = v89 && HIDWORD(v371) == 0;
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
  v205 = *(*(this + 32) + 376 * v360 + 5976);
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
  v210 = *(*(this + 32) + 376 * v360 + 5976);
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
  v215 = *(*(this + 32) + 376 * v360 + 5976);
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
  v221 = *(v220 + 376 * v360 + 5976);
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
  if (v222 != 1)
  {
    v246 = v227 + 376 * v360;
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
    v253 = (*(this + 32) + 376 * v360 + 5992);
    if (*v253 || *(*(this + 32) + 376 * v360 + 6144) || *(*(this + 32) + 376 * v360 + 6148))
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
    v258 = (*(this + 32) + 376 * v360 + 6168);
    if (*v258 || *(*(this + 32) + 376 * v360 + 6320) || *(*(this + 32) + 376 * v360 + 6324))
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
        if (CAHDecIxoraLgh::getSWRStride(this, *(v3 + 148) + 1, *(v369 + 105) - 8, *(v369 + 105) - 8, v320))
        {
          return 0xFFFFFFFFLL;
        }

        *(*(this + 33) + 432) = *(*(this + 33) + 432) & 0xFFFC003F | (((*(this + 1135) >> 6) & 0xFFF) << 6);
        v342 = (this + 4544);
      }

      *(*(this + 33) + 436) = *(*(this + 33) + 436) & 0xFFF8003F | (((*v342 >> 6) & 0x1FFF) << 6);
    }

    if (v363 < 2)
    {
      v343 = *(this + 33);
      *(v343 + 632) = 65537;
      *(v343 + 636) = 0;
      *(v343 + 638) = *(v369 + 108) >> 6;
      *(v343 + 766) = 0;
      *(v343 + 768) = *(v369 + 112) >> 6;
      v344 = *(this + 32);
    }

    else
    {
      v343 = *(this + 33);
      *(v343 + 632) = v368;
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
            *(v343 + 766 + 2 * v362) = *(v346 - 26) >> 3;
          }

          v346 += 1792;
          --v345;
        }

        while (v345);
      }

      *(v343 + 634) = v366;
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
            *(v343 + 636 + 2 * v362) = *v348 >> 3;
          }

          v348 += 28;
          --v347;
        }

        while (v347);
      }
    }

    if (*(v344 + 2360) == 1)
    {
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
        v350 = *(v343 + 856) & 0xF7FFFFF | ((*(v344 + 2420) & 1) << 23) | 0x20000000;
        *(v343 + 856) = v350;
        *(v343 + 856) = v350 & 0xFFC00000 | (*(v344 + 2364) == 0);
        v351 = *(v344 + 2428);
        v352 = *(v344 + 2460);
        *(v343 + 876) = *(v344 + 2444);
        *(v343 + 892) = v352;
        *(v343 + 860) = v351;
      }

      *(*(this + 33) + 780) = *(*(this + 33) + 780) & 0xFFFFFFFB | (4 * (*(v344 + 2516) & 1));
      *(*(this + 33) + 780) = *(*(this + 33) + 780) & 0xFFFFFFF7 | (8 * (*(v344 + 2520) & 1));
      *(*(this + 33) + 780) = *(*(this + 33) + 780) & 0xFFFFFFEF | (16 * (*(v344 + 2524) & 1));
      *(v343 + 1016) = 0;
      if (*(v344 + 2476) == 2)
      {
        v353 = 805306368;
      }

      else
      {
        v353 = 813694976;
      }

      *(v343 + 1016) = v353;
      memcpy((v343 + 1020), (v344 + 2480), 4 * *(v344 + 2476));
      if (*(v344 + 2516))
      {
        *(v344 + 2516) = 0;
      }

      *(*(this + 33) + 780) = *(*(this + 33) + 780) & 0xFFFFFFDF | (32 * (*(v344 + 2632) & 1));
      if (*(v344 + 2632))
      {
        *(v343 + 908) = 0x80000000;
        v354 = ((*(v344 + 2528) & 1) << 27) | 0x80000000;
        *(v343 + 908) = v354;
        *(v343 + 908) = v354 | (((2 * *(v344 + 2528)) & 4 | (*(v344 + 2528) >> 1) & 2 | (*(v344 + 2528) >> 3) & 1) << 24);
        v355 = *(v344 + 2532);
        v356 = *(v344 + 2564);
        *(v343 + 928) = *(v344 + 2548);
        *(v343 + 944) = v356;
        *(v343 + 912) = v355;
        *(v343 + 960) = *(v344 + 2580);
        *(v343 + 968) = *(v344 + 2588);
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

        *(v343 + 976) = *(v344 + 2596);
      }

      *(*(this + 33) + 780) = *(*(this + 33) + 780) & 0xFFFFFFBF | ((*(v344 + 2636) & 1) << 6);
      if (*(v344 + 2636))
      {
        result = 0;
        *(v343 + 992) = -1879048192;
        *(v343 + 992) = ((*(v344 + 2612) & 1) << 23) | 0x90000000;
        *(v343 + 996) = *(v344 + 2616);
        *(v344 + 2640) = 1;
        return result;
      }
    }

    return 0;
  }

  v228 = *(v227 + 376 * v360 + 8);
  if (!*v228 && !*(v228 + 152) && !*(v228 + 156) || (result = CAHDec::addToPatcherList(this, v228, 348, *(v228 + 64), 0xFFFFFFFFLL, 7, v226, 4), !result))
  {
    if ((v229 = *(this + 33), v230 = *(v229 + 560), *(v229 + 560) = 0, *(*(this + 33) + 560) ^= 0x3FFu, v231 = *(this + 33), v232 = *(v231 + 560), *(v231 + 560) = v230, v233 = *(*(this + 32) + 376 * v360 + 5976), !*v233) && !*(v233 + 152) && !*(v233 + 156) || (result = CAHDec::addToPatcherList(this, v233, 560, *(v233 + 64), 0x3FFFFFFFFFFLL, 32, v232, 4), !result))
    {
      if ((v234 = *(this + 33), v235 = *(v234 + 356), *(v234 + 356) = 0, *(*(this + 33) + 356) ^= 0xFFFFFF80, v236 = *(this + 33), v237 = *(v236 + 356), *(v236 + 356) = v235, v238 = *(*(this + 32) + 376 * v360 + 5976), !*v238) && !*(v238 + 152) && !*(v238 + 156) || (result = CAHDec::addToPatcherList(this, v238, 356, *(v238 + 68), 0xFFFFFFFFLL, 7, v237, 4), !result))
      {
        v239 = *(this + 33);
        v240 = *(v239 + 568);
        *(v239 + 568) = 0;
        *(*(this + 33) + 568) ^= 0x3FFu;
        v241 = *(this + 33);
        v242 = *(v241 + 568);
        *(v241 + 568) = v240;
        v243 = *(*(this + 32) + 376 * v360 + 5976);
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

uint64_t CAHDecHibiscusLgh::populateAvdWork(CAHDecHibiscusLgh *this)
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
  v8 = v1 + 4108;
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
      *(v1 + 32) = 4108;
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
        v48 = 1179;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v19 = v43;
      }

      result = CAHDec::addToPatcherList(this, v18, v17 + 4126, v19, 0x3FFFFFFFFFFLL, 32, -1, 2);
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
        v48 = 1180;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v21 = v43;
      }

      result = CAHDec::addToPatcherList(this, v18, v17 + 4128, v21, 0xFFFFFFFFLL, 0, -1, 4);
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

uint64_t CAHDecHibiscusLgh::allocWorkBuf_SPS(CAHDecHibiscusLgh *this, int *a2)
{
  v47 = *MEMORY[0x277D85DE8];
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
  if (!*(*(this + 32) + 2648))
  {
    v23 = 14848;
    for (i = 16; i; --i)
    {
      v25 = *(this + 1128);
      v26 = *(this + 32);
      if (v25)
      {
        if (CAVDDecoder::allocAVDMem(v26, (v26 + v23 - 2816), v25, 7, 1, 0))
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_58;
          }

          v41 = 136315650;
          v42 = "allocWorkBuf_SPS";
          v43 = 1024;
          v44 = 1396;
          v45 = 2080;
          v46 = "HdrY";
          v39 = MEMORY[0x277D86220];
LABEL_57:
          _os_log_impl(&dword_277606000, v39, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v41, 0x1Cu);
          goto LABEL_58;
        }

        v26 = *(this + 32);
      }

      v27 = *(v26 + v23 - 2816);
      if (v27)
      {
        bzero(v27, *(this + 1128));
      }

      v28 = *(this + 1129);
      if (v28)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v23), v28, 7, 1, 0))
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_58;
          }

          v41 = 136315650;
          v42 = "allocWorkBuf_SPS";
          v43 = 1024;
          v44 = 1401;
          v45 = 2080;
          v46 = "HdrC";
          v39 = MEMORY[0x277D86220];
          goto LABEL_57;
        }

        v29 = *(*(this + 32) + v23);
        if (v29)
        {
          bzero(v29, *(this + 1129));
        }
      }

      v23 += 176;
    }
  }

  v30 = 5248;
  v31 = 4;
  do
  {
    v32 = *(this + 1133);
    v33 = *(this + 32);
    if (v32)
    {
      if (CAVDDecoder::allocAVDMem(v33, (v33 + v30), v32, 7, 1, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v41 = 136315650;
          v42 = "allocWorkBuf_SPS";
          v43 = 1024;
          v44 = 1412;
          v45 = 2080;
          v46 = "MvColo";
          v39 = MEMORY[0x277D86220];
          goto LABEL_57;
        }

        goto LABEL_58;
      }

      v33 = *(this + 32);
    }

    v34 = *(v33 + v30);
    if (v34)
    {
      bzero(v34, *(this + 1133));
    }

    v30 += 176;
    --v31;
  }

  while (v31);
  v35 = 24 * v22;
  *(this + 1137) = 24 * v22;
  for (j = 3664; ; j += 176)
  {
    v37 = *(this + 32);
    if (!v35)
    {
      goto LABEL_44;
    }

    if (CAVDDecoder::allocAVDMem(v37, (v37 + j), v35, 7, 1, 0))
    {
      break;
    }

    v37 = *(this + 32);
LABEL_44:
    v38 = *(v37 + j);
    if (v38)
    {
      bzero(v38, *(this + 1137));
    }

    if (j == 4896)
    {
      return 0;
    }

    v35 = *(this + 1137);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v41 = 136315650;
    v42 = "allocWorkBuf_SPS";
    v43 = 1024;
    v44 = 1417;
    v45 = 2080;
    v46 = "segMap";
    v39 = MEMORY[0x277D86220];
    goto LABEL_57;
  }

LABEL_58:
  (*(*this + 144))(this);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecHibiscusLgh::allocWorkBuf_PPS(CAHDecHibiscusLgh *this, void *a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x277D85DE8];
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

  v11 = *(v6 + 108);
  v12 = *(v6 + 112);
  v13 = (v11 + 15) >> 4;
  v14 = ~(-1 << *(v6 + 96));
  v15 = v13 * ((v10 * v9) >> 3) + (v14 << 7);
  if (v15 && CAVDDecoder::allocAVDMem(v5, this + 205, v15, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v32 = 136315650;
      v33 = "allocWorkBuf_PPS";
      v34 = 1024;
      v35 = 1493;
      v36 = 2080;
      v37 = "IpAbove";
      v16 = MEMORY[0x277D86220];
LABEL_39:
      _os_log_impl(&dword_277606000, v16, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v32, 0x1Cu);
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  v17 = (192 << v8) + ((v11 + 7) >> 3) * 16 * v9 - 192;
  v18 = *(this + 410);
  if (v18)
  {
    bzero(v18, v15);
  }

  if (v17 && CAVDDecoder::allocAVDMem(*(this + 32), this + 216, v17, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v32 = 136315650;
      v33 = "allocWorkBuf_PPS";
      v34 = 1024;
      v35 = 1496;
      v36 = 2080;
      v37 = "LfAbovePix";
      v16 = MEMORY[0x277D86220];
      goto LABEL_39;
    }

LABEL_40:
    (*(*this + 160))(this, 0);
    return 0xFFFFFFFFLL;
  }

  v19 = 288 * ((v11 + 63) >> 6) + (v14 << 7);
  v20 = *(this + 432);
  if (v20)
  {
    bzero(v20, v17);
  }

  if (v19 && CAVDDecoder::allocAVDMem(*(this + 32), this + 227, v19, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v32 = 136315650;
      v33 = "allocWorkBuf_PPS";
      v34 = 1024;
      v35 = 1502;
      v36 = 2080;
      v37 = "LfAboveInfo";
      v16 = MEMORY[0x277D86220];
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  v21 = (v12 + 7) >> 3;
  v22 = v21 * 16 * v9;
  v23 = *(this + 454);
  if (v23)
  {
    bzero(v23, v19);
  }

  if (v22)
  {
    v24 = (this + 3808);
    if (CAVDDecoder::allocAVDMem(*(this + 32), this + 238, v22, 7, 1, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v32 = 136315650;
        v33 = "allocWorkBuf_PPS";
        v34 = 1024;
        v35 = 1508;
        v36 = 2080;
        v37 = "LfLeftPix";
        v16 = MEMORY[0x277D86220];
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (*v24)
    {
      bzero(*v24, v22);
    }
  }

  v25 = (v12 + 63) >> 2;
  v26 = v25 & 0x3FFFFFF0;
  if (v26)
  {
    v27 = (this + 3984);
    if (CAVDDecoder::allocAVDMem(*(this + 32), this + 249, v25 & 0x3FFFFFF0, 7, 1, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v32 = 136315650;
        v33 = "allocWorkBuf_PPS";
        v34 = 1024;
        v35 = 1516;
        v36 = 2080;
        v37 = "LfLeftInfo";
        v16 = MEMORY[0x277D86220];
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (*v27)
    {
      bzero(*v27, v26);
    }
  }

  v28 = (24 * v13 + 30);
  if (CAVDDecoder::allocAVDMem(*(this + 32), this + 260, v28, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v32 = 136315650;
      v33 = "allocWorkBuf_PPS";
      v34 = 1024;
      v35 = 1524;
      v36 = 2080;
      v37 = "SwLeftPix";
      v16 = MEMORY[0x277D86220];
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  v30 = 192 * v9 + (v21 + 2) * (((v9 >> 1) << 8) | 8);
  v31 = *(this + 520);
  if (v31)
  {
    bzero(v31, v28);
  }

  if (!v30)
  {
    return 0;
  }

  if (CAVDDecoder::allocAVDMem(*(this + 32), this + 271, v30, 7, 1, 0))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_40;
    }

    v32 = 136315650;
    v33 = "allocWorkBuf_PPS";
    v34 = 1024;
    v35 = 1530;
    v36 = 2080;
    v37 = "AZLeftPix";
    v16 = MEMORY[0x277D86220];
    goto LABEL_39;
  }

  result = *(this + 542);
  if (result)
  {
    bzero(result, v30);
    return 0;
  }

  return result;
}

uint64_t CAHDecHibiscusLgh::freeWorkBuf_SPS(CAHDecHibiscusLgh *this)
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