void webrtc::VideoRtpDepacketizerVp9::Parse(void *a1@<X1>, webrtc::RTPVideoHeader *a2@<X8>)
{
  v176 = *MEMORY[0x277D85DE8];
  bzero(v136, 0x7F8uLL);
  v142 = 1;
  v145 = 0;
  *&v146[6] = 0xFF000000000000;
  *v146 = 0;
  v147 = 0;
  v172 = 0;
  v173 = 0;
  v174 = 0uLL;
  v175 = 1;
  if (!*a1)
  {
    v131 = a1;
    v8 = a1[2];
    v9 = 0;
    if (((v8 >> 28) & 0x1FFFFFFFFLL) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/numerics/safe_conversions.h", 36, "IsValueInRangeForNumericType<Dst>(value)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v4, v5, v6, v7, v131);
    goto LABEL_10;
  }

  v8 = a1[2];
  v131 = a1;
  if (v8)
  {
    v9 = (*(*a1 + 16) + a1[1]);
  }

  else
  {
    v9 = 0;
  }

  if (((v8 >> 28) & 0x1FFFFFFFFLL) != 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v132 = *a1;
  v133 = a2;
  v135 = v8;
  if (8 * v8)
  {
    v10 = 8 * v8 - 8;
    v11 = *v9;
    v134 = v9 + 1;
    goto LABEL_11;
  }

LABEL_10:
  v134 = v9;
  v11 = 0;
  v10 = -1;
LABEL_11:
  v139 = 0;
  v143 = 0;
  v144 = 2;
  bzero(&v157, 0x658uLL);
  v171 = 2;
  v154 = 0x7FFFFFFF;
  LOWORD(v12) = -1;
  v155 = -1;
  v156 = 0xFFFF;
  v157 = -1;
  v165 = 1;
  v170[771] = 1;
  v148 = (v11 & 0x40) != 0;
  v149 = (v11 & 0x10) != 0;
  v150 = (v11 & 8) != 0;
  v151 = (v11 & 4) != 0;
  v152 = (v11 & 2) != 0;
  v153 = v11 & 1;
  if ((v11 & 0x80) != 0)
  {
    v17 = v10 - 1;
    if (v10 < 1)
    {
      LOWORD(v12) = 0;
      v10 = -1;
      v21 = 127;
      v15 = v134;
      v14 = v135;
      goto LABEL_39;
    }

    v18 = v17 & 7;
    v15 = v134;
    if ((v17 & 7) != 0)
    {
      v19 = *v134;
      if (((1 << v18) & v19) != 0)
      {
        v20 = 15;
      }

      else
      {
        v20 = 7;
      }

      if (((1 << v18) & v19) != 0)
      {
        v21 = 0x7FFF;
      }

      else
      {
        v21 = 127;
      }

      v10 = -1;
      v14 = v135;
      if (v17 < v20)
      {
        LOWORD(v12) = 0;
        goto LABEL_39;
      }

      v24 = v20 - v18;
      v12 = (v19 & ~(-1 << v18)) << (v20 - v18);
      v22 = v134 + 1;
      v10 = v17 - v20;
      if (v24 >= 8)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0;
      v22 = v134 + 1;
      if (*v134)
      {
        v23 = 15;
      }

      else
      {
        v23 = 7;
      }

      if (*v134)
      {
        v21 = 0x7FFF;
      }

      else
      {
        v21 = 127;
      }

      v14 = v135;
      if (v17 < v23)
      {
        v10 = -1;
        v15 = v134 + 1;
        goto LABEL_39;
      }

      v24 = v23;
      v10 = v17 - v23;
      if (v23 >= 8)
      {
LABEL_34:
        v24 -= 8;
        v12 |= v134[1] << v24;
        v15 = v134 + 2;
        if (!v24)
        {
LABEL_39:
          LOWORD(v154) = v12;
          HIWORD(v154) = v21;
          v13 = v21 + 1;
          v16 = v11 & 2;
          if ((v11 & 0x20) == 0)
          {
            goto LABEL_45;
          }

LABEL_40:
          if (v10 <= 2)
          {
            LOBYTE(v156) = 0;
LABEL_42:
            BYTE2(v156) = 0;
            goto LABEL_43;
          }

          v30 = v10 & 7;
          if (v30 >= 4)
          {
            LOBYTE(v156) = (*v15 >> (v30 - 3)) & 7;
            goto LABEL_67;
          }

          v33 = 3;
          if ((v10 & 7) != 0)
          {
            v33 = 3 - v30;
            v34 = *v15++;
            v35 = (v34 & ~(-1 << v30)) << (3 - v30);
            if (v30 == 3)
            {
LABEL_66:
              LOBYTE(v156) = v35;
              if (v10 == 3)
              {
                goto LABEL_42;
              }

LABEL_67:
              v38 = v10 - 4;
              v39 = (v10 - 4) & 7;
              if (v39)
              {
                BYTE2(v156) = (*v15 >> v39) & 1;
                if (v38 >= 3)
                {
                  if (v39 >= 4)
                  {
                    LODWORD(v40) = (*v15 >> (v39 - 3)) & 7;
                    goto LABEL_75;
                  }

                  v42 = 3 - v39;
                  v43 = *v15++;
                  v40 = (v43 & ~(-1 << v39)) << (3 - v39);
                  if (v39 == 3)
                  {
LABEL_75:
                    BYTE1(v156) = v40;
                    if (v10 == 7)
                    {
                      v10 = -1;
                      HIBYTE(v156) = 0;
                      if (v40 > 4u)
                      {
LABEL_77:
                        v10 = -1;
                        goto LABEL_45;
                      }
                    }

                    else
                    {
                      v10 -= 8;
                      if (v30)
                      {
                        HIBYTE(v156) = (*v15 >> v30) & 1;
                        if (v40 > 4u)
                        {
                          goto LABEL_77;
                        }
                      }

                      else
                      {
                        v53 = *v15++;
                        HIBYTE(v156) = v53 & 1;
                        if (v40 > 4u)
                        {
                          goto LABEL_77;
                        }
                      }
                    }

                    if ((v11 & 0x10) != 0)
                    {
                      goto LABEL_45;
                    }

                    v26 = v10 - 8;
                    if (v10 >= 8)
                    {
                      if ((v10 & 7) != 0)
                      {
                        v64 = *v15;
                        v65 = *++v15;
                        v25 = ((v64 & ~(-1 << (v10 & 7))) << (8 - (v10 & 7))) | (v65 >> (v10 & 7));
                      }

                      else
                      {
                        v130 = *v15++;
                        LOBYTE(v25) = v130;
                      }
                    }

                    else
                    {
                      LOBYTE(v25) = 0;
                      v26 = -1;
                    }

LABEL_44:
                    v155 = v25;
                    v10 = v26;
                    goto LABEL_45;
                  }

LABEL_74:
                  LODWORD(v40) = v40 | (*v15 >> (8 - v42));
                  goto LABEL_75;
                }
              }

              else
              {
                v41 = *v15++;
                BYTE2(v156) = v41 & 1;
                if (v38 >= 3)
                {
                  LODWORD(v40) = 0;
                  v42 = 3;
                  goto LABEL_74;
                }
              }

LABEL_43:
              LOBYTE(v25) = 0;
              BYTE1(v156) = 0;
              HIBYTE(v156) = 0;
              v26 = -1;
              v10 = -1;
              if ((v11 & 0x10) != 0)
              {
                goto LABEL_45;
              }

              goto LABEL_44;
            }
          }

          else
          {
            LODWORD(v35) = 0;
          }

          LODWORD(v35) = v35 | (*v15 >> (8 - v33));
          goto LABEL_66;
        }

LABEL_38:
        LODWORD(v12) = v12 | (*v15 >> (8 - v24));
        goto LABEL_39;
      }
    }

    v15 = v22;
    if (!v24)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v13 = 0x8000;
  v15 = v134;
  v14 = v135;
  v16 = v11 & 2;
  if ((v11 & 0x20) != 0)
  {
    goto LABEL_40;
  }

LABEL_45:
  if ((~v11 & 0x50) != 0)
  {
    goto LABEL_127;
  }

  if (v12 == 0xFFFF)
  {
    if (!v16)
    {
      goto LABEL_131;
    }

    goto LABEL_129;
  }

  v158 = 0;
  if (v10 < 7)
  {
    LOBYTE(v27) = 0;
    LOBYTE(v28) = 0;
LABEL_49:
    v29 = 0;
    v10 = -1;
    goto LABEL_85;
  }

  v31 = v10 & 7;
  if ((v10 & 7) != 0)
  {
    v32 = *v15++;
    v27 = (v32 & ~(-1 << v31)) << (v31 ^ 7u);
    if (v31 == 7)
    {
      if (v10 == 7)
      {
        v29 = 0;
        v10 = -1;
        LOBYTE(v28) = v27;
        goto LABEL_85;
      }

      v37 = *v15;
    }

    else
    {
      v37 = *v15;
      LODWORD(v27) = v27 | (v37 >> (8 - (v31 ^ 7)));
    }

    LOBYTE(v28) = v27;
    v10 -= 8;
    v29 = (v37 >> v31) & 1;
  }

  else
  {
    v36 = *v15;
    v28 = v36 >> 1;
    v27 = v36 >> 1;
    if (v10 == 7)
    {
      goto LABEL_49;
    }

    v10 -= 8;
    ++v15;
    v29 = v36 & 1;
  }

LABEL_85:
  v159 = v27;
  v44 = v12 - v28;
  if (v12 >= v28)
  {
    v45 = 0;
  }

  else
  {
    v45 = v13;
  }

  v158 = 1;
  v162 = v44 + v45;
  if (!v29)
  {
    goto LABEL_127;
  }

  if (v10 < 7)
  {
    LOBYTE(v46) = 0;
    LOBYTE(v47) = 0;
LABEL_91:
    v48 = 0;
    v10 = -1;
    goto LABEL_103;
  }

  v49 = v10 & 7;
  if ((v10 & 7) != 0)
  {
    v50 = *v15++;
    v46 = (v50 & ~(-1 << v49)) << (v49 ^ 7u);
    if (v49 == 7)
    {
      if (v10 == 7)
      {
        v48 = 0;
        v10 = -1;
        LOBYTE(v47) = v46;
        goto LABEL_103;
      }

      v52 = *v15;
    }

    else
    {
      v52 = *v15;
      LODWORD(v46) = v46 | (v52 >> (8 - (v49 ^ 7)));
    }

    LOBYTE(v47) = v46;
    v10 -= 8;
    v48 = (v52 >> v49) & 1;
  }

  else
  {
    v51 = *v15;
    v47 = v51 >> 1;
    v46 = v51 >> 1;
    if (v10 == 7)
    {
      goto LABEL_91;
    }

    v10 -= 8;
    ++v15;
    v48 = v51 & 1;
  }

LABEL_103:
  v160 = v46;
  v54 = v12 - v47;
  if (v12 >= v47)
  {
    v55 = 0;
  }

  else
  {
    v55 = v13;
  }

  v158 = 2;
  v163 = v54 + v55;
  if (!v48)
  {
    goto LABEL_127;
  }

  if (v10 >= 7)
  {
    v60 = v10 & 7;
    if ((v10 & 7) != 0)
    {
      v61 = *v15++;
      v56 = (v61 & ~(-1 << v60)) << (v60 ^ 7u);
      if (v60 == 7)
      {
        if (v10 == 7)
        {
          v58 = 0;
          v59 = -1;
          LOBYTE(v57) = v56;
          goto LABEL_121;
        }

        v63 = *v15;
      }

      else
      {
        v63 = *v15;
        LODWORD(v56) = v56 | (v63 >> (8 - (v60 ^ 7)));
      }

      LOBYTE(v57) = v56;
      v59 = v10 - 8;
      v58 = (v63 >> v60) & 1;
      goto LABEL_121;
    }

    v62 = *v15;
    v57 = v62 >> 1;
    v56 = v62 >> 1;
    if (v10 != 7)
    {
      v59 = v10 - 8;
      ++v15;
      v58 = v62 & 1;
      goto LABEL_121;
    }
  }

  else
  {
    LOBYTE(v56) = 0;
    LOBYTE(v57) = 0;
  }

  v58 = 0;
  v59 = -1;
LABEL_121:
  v161 = v56;
  v66 = v12 >= v57;
  v67 = v12 - v57;
  if (v66)
  {
    v13 = 0;
  }

  v158 = 3;
  v164 = v67 + v13;
  if (v58)
  {
    v10 = -1;
  }

  else
  {
    v10 = v59;
  }

LABEL_127:
  if (!v16)
  {
    goto LABEL_132;
  }

  if (v10 <= 2)
  {
LABEL_129:
    v165 = 1;
LABEL_130:
    v166 = 0;
    v168 = 0;
LABEL_131:
    v10 = -1;
    goto LABEL_132;
  }

  v78 = v10 & 7;
  if (v78 >= 4)
  {
    v79 = (*v15 >> (v78 - 3)) & 7;
    v165 = v79 + 1;
    goto LABEL_168;
  }

  v80 = 3;
  if ((v10 & 7) == 0)
  {
    v79 = 0;
    goto LABEL_166;
  }

  v80 = 3 - v78;
  v81 = *v15++;
  v79 = (v81 & ~(-1 << v78)) << (3 - v78);
  if (v78 != 3)
  {
LABEL_166:
    v79 |= *v15 >> (8 - v80);
  }

  v165 = v79 + 1;
  if (v10 == 3)
  {
    goto LABEL_130;
  }

LABEL_168:
  if (((v10 - 4) & 7) != 0)
  {
    v82 = *v15 >> ((v10 - 4) & 7);
    v83 = v82 & 1;
    v166 = v82 & 1;
  }

  else
  {
    v84 = *v15++;
    LOBYTE(v82) = v84;
    v83 = v84 & 1;
    v166 = v84 & 1;
    if (v10 == 4)
    {
      v10 = -1;
      v86 = 1;
      v168 = 0;
      if (!v83)
      {
        goto LABEL_199;
      }

      goto LABEL_179;
    }
  }

  v85 = v10 - 5;
  if (((v10 - 5) & 7) != 0)
  {
    v86 = ((*v15 >> ((v10 - 5) & 7)) & 1) == 0;
    if (v85 < 3)
    {
      goto LABEL_173;
    }

LABEL_176:
    v88 = (v10 + 2) >> 3;
    v89 = v10 - 1;
    v10 -= 8;
    v15 += (v88 - (v89 >> 3));
    v168 = 0;
    if (!v83)
    {
      goto LABEL_199;
    }

    goto LABEL_179;
  }

  v87 = *v15++;
  v86 = (v87 & 1) == 0;
  if (v85 >= 3)
  {
    goto LABEL_176;
  }

LABEL_173:
  v10 = -1;
  v168 = 0;
  if (v83)
  {
LABEL_179:
    v90 = v167;
    v91 = v79 + 1;
    while (1)
    {
      if (v10 <= 15)
      {
        LOWORD(v92) = 0;
        *v90 = 0;
        goto LABEL_181;
      }

      v93 = v10 & 7;
      if ((v10 & 7) == 0)
      {
        break;
      }

      v94 = (16 - v93);
      v95 = *v15++;
      v96 = v94 - 8;
      v97 = (*v15 << (8 - v93)) | ((v95 & ~(-1 << v93)) << (16 - v93));
      v98 = v94 - 16;
      if (v94 >= 0x10)
      {
        goto LABEL_186;
      }

LABEL_187:
      v99 = &v15[(v94 - 8) >> 3];
      v15 = v99 + 1;
      if (v96)
      {
        LOWORD(v97) = v97 | (*v15 >> (8 - v96));
      }

      *v90 = v97;
      v100 = __OFSUB__(v10, 32);
      v10 -= 32;
      if (v10 < 0 == v100)
      {
        if (v93)
        {
          v101 = (16 - v93);
          v102 = (*v15 & ~(-1 << v93)) << (16 - v93);
          v15 = v99 + 2;
          v103 = v101 - 8;
          v92 = (v99[2] << (v101 - 8)) | v102;
          v104 = v101 - 16;
          if (v101 >= 0x10)
          {
            goto LABEL_194;
          }
        }

        else
        {
          LODWORD(v101) = 16;
          v92 = *v15 << 8;
          v104 = 0;
LABEL_194:
          v92 |= v15[1] << v104;
          v103 = v104;
        }

        v15 += ((v101 - 8) >> 3) + 1;
        if (v103 >= 1)
        {
          LOWORD(v92) = v92 | (*v15 >> (8 - v103));
        }

        goto LABEL_182;
      }

      LOWORD(v92) = 0;
LABEL_181:
      v10 = -1;
LABEL_182:
      v90[8] = v92;
      ++v90;
      if (!--v91)
      {
        goto LABEL_199;
      }
    }

    LODWORD(v94) = 16;
    v97 = *v15 << 8;
    v98 = 0;
LABEL_186:
    v97 |= v15[1] << v98;
    v96 = v98;
    goto LABEL_187;
  }

LABEL_199:
  if (v86)
  {
    goto LABEL_243;
  }

  if (v10 > 7)
  {
    v105 = v10 & 7;
    v10 -= 8;
    if (v105)
    {
      v106 = *v15;
      v108 = v15[1];
      v107 = (v15 + 1);
      v109 = ((v106 & ~(-1 << v105)) << (8 - v105)) | (v108 >> v105);
    }

    else
    {
      v110 = *v15;
      v107 = (v15 + 1);
      LOBYTE(v109) = v110;
    }

    v168 = v109;
    if (!v109)
    {
LABEL_243:
      if ((v82 & 1) == 0)
      {
        goto LABEL_132;
      }

      goto LABEL_244;
    }

    v111 = 0;
    v112 = v170;
    while (1)
    {
      if (v10 <= 2)
      {
        v169[v111] = 0;
LABEL_209:
        v169[v111 + 255] = 0;
        goto LABEL_210;
      }

      v113 = v10 & 7;
      if (v113 >= 4)
      {
        v169[v111] = (*v107 >> (v113 - 3)) & 7;
        goto LABEL_221;
      }

      if ((v10 & 7) != 0)
      {
        v114 = 3 - v113;
        v115 = *v107++;
        v116 = (v115 & ~(-1 << v113)) << (3 - v113);
        if (v113 == 3)
        {
          v169[v111] = v116;
          if (v10 == 3)
          {
            goto LABEL_209;
          }

          goto LABEL_221;
        }
      }

      else
      {
        LOBYTE(v116) = 0;
        v114 = 3;
      }

      v169[v111] = v116 | (*v107 >> (8 - v114));
      if (v10 == 3)
      {
        goto LABEL_209;
      }

LABEL_221:
      v117 = v10 - 4;
      v118 = (v10 - 4) & 7;
      if (v118)
      {
        v169[v111 + 255] = (*v107 >> v118) & 1;
        if (v117 >= 2)
        {
          if (v118 < 3)
          {
            v122 = *v107++;
            v119 = (v122 & ~(-1 << v118)) << (2 - v118);
            if (v118 != 2)
            {
              v121 = 7;
LABEL_229:
              LODWORD(v119) = v119 | (*v107 >> v121);
            }
          }

          else
          {
            LODWORD(v119) = (*v107 >> (v118 - 2)) & 3;
          }

          v169[v111 + 510] = v119;
          if ((v10 & 0x7FFFFFFE) == 6)
          {
            v123 = -1;
          }

          else
          {
            v107 += (((v10 + 1) >> 3) - ((v10 - 1) >> 3));
            v123 = v10 - 8;
          }

          if (v119)
          {
            v124 = 0;
            do
            {
              v10 = v123 - 8;
              if (v123 < 8)
              {
                LOBYTE(v125) = 0;
                v10 = -1;
              }

              else
              {
                v126 = v123 & 7;
                if (v126)
                {
                  v127 = *v107;
                  v128 = *++v107;
                  v125 = ((v127 & ~(-1 << v126)) << (8 - v126)) | (v128 >> v126);
                }

                else
                {
                  v129 = *v107++;
                  LOBYTE(v125) = v129;
                }
              }

              v112[v124++] = v125;
              v123 = v10;
            }

            while (v124 < v169[v111 + 510]);
          }

          else
          {
            v10 = v123;
          }

          goto LABEL_211;
        }
      }

      else
      {
        v120 = *v107++;
        v169[v111 + 255] = v120 & 1;
        if (v117 >= 2)
        {
          LODWORD(v119) = 0;
          v121 = 6;
          goto LABEL_229;
        }
      }

LABEL_210:
      v169[v111 + 510] = 0;
      v10 = -1;
LABEL_211:
      ++v111;
      v112 += 3;
      if (v111 >= v168)
      {
        LOBYTE(v82) = v166;
        goto LABEL_243;
      }
    }
  }

  v168 = 0;
  v10 = -1;
  if ((v82 & 1) == 0)
  {
    goto LABEL_132;
  }

LABEL_244:
  v138 = v167[0];
  v139 = v167[8];
LABEL_132:
  if ((v156 & 0x1000000) != 0)
  {
    v68 = 4;
  }

  else
  {
    v68 = 3;
  }

  if ((v11 & 0x40) != 0)
  {
    v69 = 4;
  }

  else
  {
    v69 = v68;
  }

  v137 = v69;
  v140 = (v11 & 8) != 0;
  v141 = (v11 & 4) != 0;
  if (v10 < 1 || (v70 = v14 - (v10 >> 3), v14 == v10 >> 3))
  {
    *v133 = 0;
    *(v133 + 2064) = 0;
    if (v175 != 1)
    {
      return;
    }

    goto LABEL_152;
  }

  if (v132)
  {
    atomic_fetch_add_explicit((v132 + 24), 1u, memory_order_relaxed);
  }

  if ((v175 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v71 = v14 - v70;
  v72 = *(v131 + 8) + v70;
  v73 = v173;
  v173 = v132;
  if (v73 && atomic_fetch_add((v73 + 24), 0xFFFFFFFF) == 1)
  {
    v74 = *(v73 + 16);
    *(v73 + 16) = 0;
    if (v74)
    {
      MEMORY[0x2743DA520](v74, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v73, 0x1010C40EE34DA14);
  }

  *&v174 = v72;
  *(&v174 + 1) = v71;
  *v133 = 0;
  *(v133 + 2064) = 0;
  if (v175 == 1)
  {
    webrtc::RTPVideoHeader::RTPVideoHeader(v133, v136);
    v75 = v173;
    v173 = 0;
    *(v133 + 255) = v75;
    *(v133 + 128) = v174;
    v174 = 0uLL;
    *(v133 + 2064) = 1;
    if (v175 == 1)
    {
LABEL_152:
      v76 = v173;
      if (v173 && atomic_fetch_add((v173 + 24), 0xFFFFFFFF) == 1)
      {
        v77 = *(v76 + 16);
        *(v76 + 16) = 0;
        if (v77)
        {
          MEMORY[0x2743DA520](v77, 0x1000C8077774924);
        }

        MEMORY[0x2743DA540](v76, 0x1010C40EE34DA14);
      }

      webrtc::RTPVideoHeader::~RTPVideoHeader(v136);
    }
  }
}

void webrtc::VideoRtpReceiver::VideoRtpReceiver(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  *v7 = *a4;
  v8 = *(a4 + 16);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  webrtc::RtpReceiverInternal::CreateStreamsFromIds(v7, &__p);
  webrtc::VideoRtpReceiver::VideoRtpReceiver(a1, a2, a3);
}

void webrtc::VideoRtpReceiver::VideoRtpReceiver(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a1 = &unk_2882A2900;
  *(a1 + 8) = &unk_2882A2A00;
  *(a1 + 16) = &unk_2882A2A28;
  *(a1 + 24) = a1;
  *(a1 + 32) = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a3, *(a3 + 1));
  }

  else
  {
    v4 = *a3;
    *(a1 + 56) = *(a3 + 2);
    *(a1 + 40) = v4;
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  operator new();
}

void webrtc::VideoRtpReceiver::~VideoRtpReceiver(webrtc::VideoRtpReceiver *this)
{
  *this = &unk_2882A2900;
  *(this + 1) = &unk_2882A2A00;
  v2 = *(this + 19);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 17);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    v6 = *(this + 13);
    v7 = *(this + 12);
    if (v6 != v5)
    {
      do
      {
        v9 = *(v6 - 8);
        v6 -= 8;
        v8 = v9;
        if (v9)
        {
          (*(*v8 + 8))(v8);
        }
      }

      while (v6 != v5);
      v7 = *(this + 12);
    }

    *(this + 13) = v5;
    operator delete(v7);
  }

  v10 = *(this + 11);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 10);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }
}

uint64_t webrtc::VideoRtpReceiver::stream_ids@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 96);
  v4 = *(this + 104);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v4 != v3)
  {
    if (((v4 - v3) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return this;
}

uint64_t (***webrtc::VideoRtpReceiver::dtls_transport@<X0>(webrtc::VideoRtpReceiver *this@<X0>, void *a2@<X8>))(void)
{
  result = *(this + 18);
  *a2 = result;
  if (result)
  {
    return (**result)(result);
  }

  return result;
}

uint64_t webrtc::VideoRtpReceiver::streams@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 96);
  v3 = *(this + 104);
  if (v3 != v2)
  {
    if (((v3 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return this;
}

void *webrtc::VideoRtpReceiver::GetParameters@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  if (this[8])
  {
    v2 = this;
    v3 = (*(*this + 200))();
    v4 = v2[8];
    if ((v3 & 0x100000000) != 0)
    {
      v6 = *(*v4 + 152);

      return v6();
    }

    else
    {
      v5 = *(*v4 + 168);

      return v5();
    }
  }

  else
  {
    *(a2 + 124) = 0;
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 128) = 0;
    *(a2 + 152) = 256;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 105) = 0u;
    *(a2 + 160) = 0;
    *(a2 + 164) = 0;
  }

  return this;
}

uint64_t webrtc::VideoRtpReceiver::SetFrameDecryptor(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 136);
  *(a1 + 136) = v3;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 76) == 1)
  {
    v6 = *(a1 + 72);
    v7 = *(a1 + 136);
    v8 = v7;
    if (v7)
    {
      (**v7)(v7);
    }

    (*(*v5 + 112))(v5, v6, &v8);
    result = v8;
    if (v8)
    {
      return ((*v8)[1])(v8);
    }
  }

  return result;
}

uint64_t (***webrtc::VideoRtpReceiver::GetFrameDecryptor@<X0>(webrtc::VideoRtpReceiver *this@<X0>, void *a2@<X8>))(void)
{
  result = *(this + 17);
  *a2 = result;
  if (result)
  {
    return (**result)(result);
  }

  return result;
}

uint64_t webrtc::VideoRtpReceiver::SetFrameTransformer(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 152);
  *(a1 + 152) = v3;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    if (*(a1 + 76) == 1)
    {
      v6 = *(a1 + 72);
      v7 = *(a1 + 152);
      v8 = v7;
      if (!v7)
      {
LABEL_9:
        (*(*v5 + 120))(v5, v6, &v8);
        result = v8;
        if (v8)
        {
          return ((*v8)[1])(v8);
        }

        return result;
      }
    }

    else
    {
      v6 = 0;
      v7 = *(a1 + 152);
      v8 = v7;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    (**v7)(v7);
    goto LABEL_9;
  }

  return result;
}

uint64_t non-virtual thunk towebrtc::VideoRtpReceiver::SetFrameTransformer(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 144);
  *(a1 + 144) = v3;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    if (*(a1 + 68) == 1)
    {
      v6 = *(a1 + 64);
      v7 = *(a1 + 144);
      v8 = v7;
      if (!v7)
      {
LABEL_9:
        (*(*v5 + 120))(v5, v6, &v8);
        result = v8;
        if (v8)
        {
          return ((*v8)[1])(v8);
        }

        return result;
      }
    }

    else
    {
      v6 = 0;
      v7 = *(a1 + 144);
      v8 = v7;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    (**v7)(v7);
    goto LABEL_9;
  }

  return result;
}

uint64_t webrtc::VideoRtpReceiver::GenerateKeyFrame(webrtc::VideoRtpReceiver *this)
{
  v1 = *(this + 4);
  v4 = this;
  return (*(*v1 + 96))(v1, &v4, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::VideoRtpReceiver::GenerateKeyFrame(void)::$_0>, &v3);
}

uint64_t webrtc::VideoRtpReceiver::Stop(webrtc::VideoRtpReceiver *this)
{
  v2 = *(this + 10);
  if (*(v2 + 48) != 2)
  {
    *(v2 + 48) = 2;
    webrtc::Notifier<webrtc::VideoTrackInterface>::FireOnChanged(v2);
  }

  result = *(*(this + 11) + 40);
  v4 = *(result + 80);
  *(result + 80) = 1;
  if (v4 != 1)
  {

    return webrtc::Notifier<webrtc::VideoTrackInterface>::FireOnChanged(result);
  }

  return result;
}

uint64_t webrtc::VideoRtpReceiver::RestartMediaChannel_w(uint64_t a1, unint64_t a2, int a3)
{
  result = *(a1 + 64);
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 177);
  v6 = HIDWORD(a2);
  if (!a3)
  {
    *(a1 + 72) = a2;
    v8 = (a1 + 72);
    *(a1 + 76) = BYTE4(a2);
    v7 = (a1 + 76);
    v9 = *(a1 + 80) + 88;
    if ((a2 & 0x100000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_8:
    (*(*result + 176))(result);
    if (!v5)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v7 = (a1 + 76);
  v8 = (a1 + 72);
  if (a2 & 0x100000000) != 0 && (*(a1 + 76))
  {
    if (*v8 == a2)
    {
      return result;
    }
  }

  else if ((BYTE4(a2) & 1) == (*(a1 + 76) & 1))
  {
    return result;
  }

  v10 = a2;
  if (*(a1 + 76))
  {
    (*(*result + 176))(result, *v8, 0);
    result = *(a1 + 64);
    v11 = v10;
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    (*(*result + 184))(result, 0);
    result = *(a1 + 64);
    v11 = v10;
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  if (result)
  {
    if (*v7 == 1)
    {
      v12 = *v8;
    }

    else
    {
      v12 = 0;
    }

    (*(*result + 216))(result, v12);
    result = *(a1 + 64);
    v11 = v10;
  }

LABEL_20:
  *(a1 + 72) = v11;
  *(a1 + 76) = v6;
  v9 = *(a1 + 80) + 88;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_21:
  (*(*result + 184))(result, v9);
  if (v5)
  {
LABEL_22:
    webrtc::VideoRtpReceiver::SetEncodedSinkEnabled(a1, 1);
  }

LABEL_23:
  result = *(a1 + 152);
  if (result)
  {
    v13 = *(a1 + 64);
    if (!v13)
    {
      return result;
    }

    if (*v7 == 1)
    {
      v14 = *v8;
    }

    else
    {
      v14 = 0;
    }

    v23 = *(a1 + 152);
    (**result)(result);
    (*(*v13 + 120))(v13, v14, &v23);
    result = v23;
    if (v23)
    {
      result = (*(*v23 + 8))(v23);
    }
  }

  v15 = *(a1 + 64);
  if (v15 && *v7 == 1)
  {
    v16 = *(a1 + 136);
    if (v16)
    {
      v17 = *v8;
      v22 = *(a1 + 136);
      (**v16)(v16);
      (*(*v15 + 112))(v15, v17, &v22);
      v16 = v22;
      if (v22)
      {
        v16 = (*(*v22 + 8))(v22);
      }
    }

    if (*v7)
    {
      v18 = 0.0;
      if (*(a1 + 168) == 1)
      {
        v18 = *(a1 + 160) * 1000.0;
      }

      v16 = *(a1 + 64);
      v19 = (v18 < -2147483650.0) | (2 * (v18 > 2147483650.0));
      if (v19 <= 1)
      {
        if (v19 || ((v20 = v18, v18 >= 0x2710) ? (v21 = 10000) : (v21 = v20), v20 < 1))
        {
          v21 = 0;
        }

        return (*(*v16 + 128))(v16, *(a1 + 72), v21);
      }

      if (v19 == 2)
      {
        v21 = 10000;
        return (*(*v16 + 128))(v16, *(a1 + 72), v21);
      }
    }

    else
    {
      __break(1u);
    }

    webrtc::webrtc_checks_impl::UnreachableCodeReached(v16);
  }

  return result;
}

uint64_t webrtc::VideoRtpReceiver::SetEncodedSinkEnabled(uint64_t this, int a2)
{
  v2 = *(this + 64);
  if (!v2)
  {
    return this;
  }

  if (*(this + 76) != 1)
  {
    v3 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

LABEL_8:
    v6 = *(this + 80);
    if (v6)
    {
      (**v6)(*(this + 80));
    }

    operator new();
  }

  v3 = *(this + 72);
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *(*v2 + 216);
  v5 = *(this + 64);

  return v4(v5, v3);
}

uint64_t webrtc::VideoRtpReceiver::SetupMediaChannel(webrtc::VideoRtpReceiver *this, unsigned int a2)
{
  v8 = a2 | 0x100000000;
  v7 = (*(**(this + 10) + 32))(*(this + 10));
  v3 = *(this + 4);
  v6[0] = this;
  v6[1] = &v8;
  v6[2] = &v7;
  (*(*v3 + 96))(v3, v6, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::VideoRtpReceiver::RestartMediaChannel(std::optional<unsigned int>)::$_0>, &v5);
  result = *(this + 10);
  if (*(result + 48) != 1)
  {
    *(result + 48) = 1;
    return webrtc::Notifier<webrtc::VideoTrackInterface>::FireOnChanged(result);
  }

  return result;
}

uint64_t webrtc::VideoRtpReceiver::SetupUnsignaledMediaChannel(webrtc::VideoRtpReceiver *this)
{
  v7 = 0;
  v6 = (*(**(this + 10) + 32))(*(this + 10));
  v2 = *(this + 4);
  v5[0] = this;
  v5[1] = &v7;
  v5[2] = &v6;
  (*(*v2 + 96))(v2, v5, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::VideoRtpReceiver::RestartMediaChannel(std::optional<unsigned int>)::$_0>, &v4);
  result = *(this + 10);
  if (*(result + 48) != 1)
  {
    *(result + 48) = 1;
    return webrtc::Notifier<webrtc::VideoTrackInterface>::FireOnChanged(result);
  }

  return result;
}

uint64_t webrtc::VideoRtpReceiver::ssrc(webrtc::VideoRtpReceiver *this)
{
  if (*(this + 76))
  {
    return (*(this + 77) << 40) | (*(this + 79) << 56) | (*(this + 18) | (*(this + 76) << 32)) & 0xFFFFFFFFFFLL;
  }

  v1 = *(this + 8);
  if (!v1)
  {
    return (*(this + 77) << 40) | (*(this + 79) << 56) | (*(this + 18) | (*(this + 76) << 32)) & 0xFFFFFFFFFFLL;
  }

  else
  {
    return (*(*v1 + 80))(*(this + 8)) & 0xFFFFFFFFFFLL;
  }
}

void webrtc::VideoRtpReceiver::set_stream_ids(uint64_t a1, uint64_t a2)
{
  *v12 = *a2;
  v13 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  webrtc::RtpReceiverInternal::CreateStreamsFromIds(v12, &__p);
  (*(*a1 + 224))(a1, &__p);
  v3 = __p;
  if (__p)
  {
    v4 = v15;
    v5 = __p;
    if (v15 != __p)
    {
      do
      {
        v7 = *(v4 - 1);
        v4 -= 8;
        v6 = v7;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v3);
      v5 = __p;
    }

    v15 = v3;
    operator delete(v5);
  }

  v8 = v12[0];
  if (v12[0])
  {
    v9 = v12[1];
    v10 = v12[0];
    if (v12[1] != v12[0])
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v12[0];
    }

    v12[1] = v8;
    operator delete(v10);
  }
}

uint64_t webrtc::VideoRtpReceiver::set_transport(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 144);
  *(a1 + 144) = v3;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t **webrtc::VideoRtpReceiver::SetStreams(void *a1, uint64_t **a2)
{
  v4 = a1[12];
  v29 = (a1 + 12);
  v30 = a1[13];
  if (v4 != v30)
  {
    v5 = *a2;
    v6 = a2[1];
    if (*a2 != v6)
    {
      goto LABEL_6;
    }

    while (1)
    {
LABEL_27:
      v14 = *v4;
      v15 = a1[11];
      v33 = v15;
      if (v15)
      {
        (**v15)(v15);
      }

      (*(*v14 + 96))(v14, &v33);
      if (v33)
      {
        (*v33)[1](v33);
      }

LABEL_4:
      if (++v4 == v30)
      {
        break;
      }

      v5 = *a2;
      v6 = a2[1];
      if (*a2 != v6)
      {
        while (1)
        {
LABEL_6:
          (*(**v4 + 32))(&v37);
          (*(**v5 + 32))(&__p);
          v7 = v39;
          if ((v39 & 0x80u) == 0)
          {
            v8 = v39;
          }

          else
          {
            v8 = v38;
          }

          v9 = v36;
          v10 = v36;
          if ((v36 & 0x80u) != 0)
          {
            v9 = v35;
          }

          if (v8 == v9)
          {
            break;
          }

          v13 = 0;
          if (v36 < 0)
          {
            goto LABEL_21;
          }

LABEL_22:
          if ((v7 & 0x80) != 0)
          {
            operator delete(v37);
            if (v13)
            {
              goto LABEL_4;
            }
          }

          else if (v13)
          {
            goto LABEL_4;
          }

          if (++v5 == v6)
          {
            goto LABEL_27;
          }
        }

        if ((v39 & 0x80u) == 0)
        {
          v11 = &v37;
        }

        else
        {
          v11 = v37;
        }

        if ((v36 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        v13 = memcmp(v11, p_p, v8) == 0;
        if ((v10 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

LABEL_21:
        operator delete(__p);
        v7 = v39;
        goto LABEL_22;
      }
    }
  }

  v16 = *a2;
  v31 = a2[1];
  if (*a2 != v31)
  {
    v17 = a1[12];
    v18 = a1[13];
    if (v17 != v18)
    {
      goto LABEL_36;
    }

    while (1)
    {
LABEL_57:
      v26 = *v16;
      v27 = a1[11];
      v32 = v27;
      if (v27)
      {
        (**v27)(v27);
      }

      (*(*v26 + 80))(v26, &v32);
      if (v32)
      {
        (*v32)[1](v32);
      }

LABEL_34:
      if (++v16 == v31)
      {
        break;
      }

      v17 = a1[12];
      v18 = a1[13];
      if (v17 != v18)
      {
        while (1)
        {
LABEL_36:
          (*(**v16 + 32))(&v37);
          (*(**v17 + 32))(&__p);
          v19 = v39;
          if ((v39 & 0x80u) == 0)
          {
            v20 = v39;
          }

          else
          {
            v20 = v38;
          }

          v21 = v36;
          v22 = v36;
          if ((v36 & 0x80u) != 0)
          {
            v21 = v35;
          }

          if (v20 == v21)
          {
            break;
          }

          v25 = 0;
          if (v36 < 0)
          {
            goto LABEL_51;
          }

LABEL_52:
          if ((v19 & 0x80) != 0)
          {
            operator delete(v37);
            if (v25)
            {
              goto LABEL_34;
            }
          }

          else if (v25)
          {
            goto LABEL_34;
          }

          v17 += 8;
          if (v17 == v18)
          {
            goto LABEL_57;
          }
        }

        if ((v39 & 0x80u) == 0)
        {
          v23 = &v37;
        }

        else
        {
          v23 = v37;
        }

        if ((v36 & 0x80u) == 0)
        {
          v24 = &__p;
        }

        else
        {
          v24 = __p;
        }

        v25 = memcmp(v23, v24, v20) == 0;
        if ((v22 & 0x80000000) == 0)
        {
          goto LABEL_52;
        }

LABEL_51:
        operator delete(__p);
        v19 = v39;
        goto LABEL_52;
      }
    }
  }

  result = v29;
  if (v29 != a2)
  {
    return std::vector<webrtc::scoped_refptr<webrtc::MediaStreamInterface>>::__assign_with_size[abi:sn200100]<webrtc::scoped_refptr<webrtc::MediaStreamInterface>*,webrtc::scoped_refptr<webrtc::MediaStreamInterface>*>(v29, *a2, a2[1], a2[1] - *a2);
  }

  return result;
}

uint64_t webrtc::VideoRtpReceiver::SetObserver(uint64_t result, uint64_t (***a2)(void, uint64_t))
{
  *(result + 120) = a2;
  if (a2 && (*(result + 128) & 1) != 0)
  {
    v3 = (*(*result + 64))(result);
    v4 = **a2;

    return v4(a2, v3);
  }

  return result;
}

webrtc::webrtc_checks_impl *webrtc::VideoRtpReceiver::SetJitterBufferMinimumDelay(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 160) = *&a2;
  *(a1 + 168) = a3;
  result = *(a1 + 64);
  if (result && *(a1 + 76) == 1)
  {
    v6 = *&a2 * 1000.0;
    if ((a3 & 1) == 0)
    {
      v6 = 0.0;
    }

    v7 = (v6 < -2147483650.0) | (2 * (v6 > 2147483650.0));
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        webrtc::webrtc_checks_impl::UnreachableCodeReached(result);
      }

      v8 = *(*result + 128);
    }

    else if (v7 || v6 < 1)
    {
      v8 = *(*result + 128);
    }

    else
    {
      v8 = *(*result + 128);
    }

    return v8();
  }

  return result;
}

uint64_t webrtc::VideoRtpReceiver::SetMediaChannel_w(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 64);
  if (result == a2)
  {
    return result;
  }

  if (!a2)
  {
    if (*(a1 + 76) != 1)
    {
      result = (*(*result + 184))(result, 0);
      v5 = *(a1 + 177);
      if (v5 != 1)
      {
        goto LABEL_13;
      }

      goto LABEL_6;
    }

    result = (*(*result + 176))(result, *(a1 + 72), 0);
  }

  v5 = *(a1 + 177);
  if (v5 != 1)
  {
    goto LABEL_13;
  }

LABEL_6:
  result = *(a1 + 64);
  if (result)
  {
    if (*(a1 + 76) == 1)
    {
      v6 = *(a1 + 72);
    }

    else
    {
      v6 = 0;
    }

    result = (*(*result + 216))(result, v6);
  }

LABEL_13:
  if (!a2)
  {
    *(a1 + 64) = 0;
    *(*(a1 + 80) + 368) = 0;
    return result;
  }

  result = (*(*a2 + 16))(a2);
  *(a1 + 64) = result;
  if (result)
  {
    if (*(a1 + 176) == 1)
    {
      if (*(a1 + 76) == 1)
      {
        v7 = *(a1 + 72);
      }

      else
      {
        v7 = 0;
      }

      (*(*result + 192))(result, v7);
      *(a1 + 176) = 0;
      if (!v5)
      {
LABEL_17:
        result = *(a1 + 152);
        if (!result)
        {
          return result;
        }

LABEL_25:
        v8 = *(a1 + 64);
        if (*(a1 + 76) == 1)
        {
          v9 = *(a1 + 72);
        }

        else
        {
          v9 = 0;
        }

        v10 = result;
        (**result)(result);
        (*(*v8 + 120))(v8, v9, &v10);
        result = v10;
        if (v10)
        {
          return (*(*v10 + 8))(v10);
        }

        return result;
      }
    }

    else if (!v5)
    {
      goto LABEL_17;
    }

    webrtc::VideoRtpReceiver::SetEncodedSinkEnabled(a1, 1);
    result = *(a1 + 152);
    if (!result)
    {
      return result;
    }

    goto LABEL_25;
  }

  return result;
}

void *webrtc::VideoRtpReceiver::NotifyFirstPacketReceived(void *this)
{
  v1 = this;
  v2 = this[15];
  if (v2)
  {
    v3 = (*(*this + 64))(this);
    this = (**v2)(v2, v3);
  }

  *(v1 + 128) = 1;
  return this;
}

uint64_t webrtc::VideoRtpReceiver::GetSources@<X0>(webrtc::VideoRtpReceiver *this@<X0>, void *a2@<X8>)
{
  v4 = (*(*this + 200))(this);
  result = *(this + 8);
  if (result)
  {
    v6 = (v4 & 0x100000000) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v7 = *(*result + 200);

    return v7();
  }

  return result;
}

uint64_t webrtc::VideoRtpReceiver::SetupMediaChannel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a3;
  v10 = a2;
  v8 = (*(**(a1 + 80) + 32))(*(a1 + 80));
  v4 = *(a1 + 32);
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  v7[3] = &v8;
  (*(*v4 + 96))(v4, v7, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::VideoRtpReceiver::SetupMediaChannel(std::optional<unsigned int>,webrtc::MediaReceiveChannelInterface *)::$_0>, &v6);
  result = *(a1 + 80);
  if (*(result + 48) != 1)
  {
    *(result + 48) = 1;
    return webrtc::Notifier<webrtc::VideoTrackInterface>::FireOnChanged(result);
  }

  return result;
}

void webrtc::VideoRtpReceiver::SourceCallback::OnGenerateKeyFrame(webrtc::VideoRtpReceiver::SourceCallback *this)
{
  v1 = *(this + 1);
  v2 = *(v1 + 64);
  if (v2)
  {
    if (*(v1 + 76) == 1)
    {
      v3 = *(v1 + 72);
    }

    else
    {
      v3 = 0;
    }

    (*(*v2 + 192))(v2, v3);
    *(v1 + 176) = 1;
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/video_rtp_receiver.cc");
  }
}

uint64_t webrtc::VideoRtpReceiver::SourceCallback::OnEncodedSinkEnabled(webrtc::VideoRtpReceiver::SourceCallback *this, int a2)
{
  v2 = a2;
  v3 = *(this + 1);
  result = webrtc::VideoRtpReceiver::SetEncodedSinkEnabled(v3, a2);
  *(v3 + 177) = v2;
  return result;
}

BOOL webrtc::RefCountedObject<webrtc::VideoRtpTrackSource>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 94, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void webrtc::RefCountedObject<webrtc::VideoRtpTrackSource>::~RefCountedObject(uint64_t a1)
{
  webrtc::RefCountedObject<webrtc::VideoRtpTrackSource>::~RefCountedObject(a1);

  JUMPOUT(0x2743DA540);
}

uint64_t non-virtual thunk towebrtc::RefCountedObject<webrtc::VideoRtpTrackSource>::~RefCountedObject(uint64_t a1)
{
  return webrtc::RefCountedObject<webrtc::VideoRtpTrackSource>::~RefCountedObject(a1 - 8);
}

{
  return webrtc::RefCountedObject<webrtc::VideoRtpTrackSource>::~RefCountedObject(a1 - 16);
}

void non-virtual thunk towebrtc::RefCountedObject<webrtc::VideoRtpTrackSource>::~RefCountedObject(uint64_t a1)
{
  webrtc::RefCountedObject<webrtc::VideoRtpTrackSource>::~RefCountedObject(a1 - 8);

  JUMPOUT(0x2743DA540);
}

{
  webrtc::RefCountedObject<webrtc::VideoRtpTrackSource>::~RefCountedObject(a1 - 16);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::RefCountedObject<webrtc::VideoRtpTrackSource>::~RefCountedObject(uint64_t a1)
{
  *a1 = &unk_2882A2DC0;
  *(a1 + 8) = &unk_2882A2E68;
  *(a1 + 16) = &unk_2882A2E98;
  v2 = *(a1 + 344);
  if (v2)
  {
    *(a1 + 352) = v2;
    operator delete(v2);
  }

  pthread_mutex_destroy((a1 + 280));
  webrtc::VideoBroadcaster::~VideoBroadcaster((a1 + 56));
  *a1 = &unk_28828CB90;
  *(a1 + 8) = &unk_28828CC20;
  *(a1 + 16) = &unk_28828CC50;
  if (*(a1 + 40))
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 24) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(a1 + 40) = 0;
    if (v3 != (a1 + 24))
    {
      do
      {
        v6 = v3[1];
        operator delete(v3);
        v3 = v6;
      }

      while (v6 != (a1 + 24));
    }
  }

  return a1;
}

BOOL webrtc::RefCountedObject<webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrack>>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 12, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrack>>::~RefCountedObject(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2882A2C78;
  a1[1] = &unk_2882A2D10;
  a1[2] = &unk_2882A2D40;
  v14 = a1;
  v15 = webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrack>::DestroyInternal;
  v16 = 0;
  webrtc::Event::Event(&v17, 0, 0);
  v2 = a1[3];
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v15(v14 + (v16 >> 1));
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrack>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v17, v4, v5);
  }

  pthread_mutex_destroy(&v17);
  pthread_cond_destroy(&v18);
  v6 = a1[5];
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

void webrtc::RefCountedObject<webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrack>>::~RefCountedObject(void *a1)
{
  webrtc::RefCountedObject<webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrack>>::~RefCountedObject(a1);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrack>::enabled(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 40);
  v15 = webrtc::MediaStreamTrackInterface::enabled;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 24);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::VideoTrackInterface,BOOL>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6 & 1;
}

uint64_t webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrack>::set_enabled(uint64_t a1, char a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6[0] = *(a1 + 40);
  v6[1] = webrtc::MediaStreamTrackInterface::set_enabled;
  v6[2] = 0;
  v6[4] = &v5;
  webrtc::Event::Event(&v7, 0, 0);
  v3 = webrtc::MethodCall<webrtc::VideoTrackInterface,BOOL,BOOL>::Marshal(v6, *(a1 + 24));
  pthread_mutex_destroy(&v7);
  pthread_cond_destroy(&v8);
  return v3;
}

uint64_t webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrack>::state(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 40);
  v15 = webrtc::MediaStreamTrackInterface::state;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 32);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::VideoTrackInterface,webrtc::MediaStreamTrackInterface::TrackState>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrack>::AddOrUpdateSink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = a2;
  v18 = *(a1 + 40);
  v19 = webrtc::VideoTrackInterface::AddOrUpdateSink;
  v20 = 0;
  v21 = &v12;
  v22 = a3;
  webrtc::Event::Event(&v23, 0, 0);
  v4 = *(a1 + 32);
  v5 = &unk_280905000;
  {
    v5 = &unk_280905000;
    if (v11)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v5[403] + 88)) == v4)
  {
    v8 = v19;
    v9 = (v18 + (v20 >> 1));
    if (v20)
    {
      v8 = *(*v9 + v19);
    }

    (v8)(v9, *v21, v22);
  }

  else
  {
    v15.n128_u64[0] = &v18;
    v16 = absl::internal_any_invocable::LocalManagerTrivial;
    v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackInterface,void,webrtc::VideoSinkInterface<webrtc::VideoFrame> *,webrtc::VideoSinkWants const&>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v4 + 8))(v4, &v15, &v14, &v13);
    v16(1, &v15, &v15);
    v6.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v7.var0 = 3000000;
    webrtc::Event::Wait(&v23, v6, v7);
  }

  pthread_mutex_destroy(&v23);
  return pthread_cond_destroy(&v24);
}

uint64_t webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrack>::RemoveSink(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 40);
  v18 = webrtc::VideoTrackInterface::RemoveSink;
  v19 = 0;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 32);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    (v7)(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackInterface,void,webrtc::VideoSinkInterface<webrtc::VideoFrame> *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrack>::content_hint(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 40);
  v15 = webrtc::VideoTrackInterface::content_hint;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 24);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::VideoTrackInterface,webrtc::VideoTrackInterface::ContentHint>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrack>::set_content_hint(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 40);
  v18 = webrtc::VideoTrackInterface::set_content_hint;
  v19 = 0;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 24);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    (v7)(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackInterface,void,webrtc::VideoTrackInterface::ContentHint>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrack>::RequestRefreshFrame(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = *(a1 + 40);
  v14 = webrtc::VideoSourceInterface<webrtc::VideoFrame>::RequestRefreshFrame;
  v15 = 32;
  webrtc::Event::Event(&v16, 0, 0);
  v2 = *(a1 + 32);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v7)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v14(v13 + (v15 >> 1));
  }

  else
  {
    v10.n128_u64[0] = &v13;
    v11 = absl::internal_any_invocable::LocalManagerTrivial;
    v12 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackInterface,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v10, &v9, &v8);
    v11(1, &v10, &v10);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v16, v4, v5);
  }

  pthread_mutex_destroy(&v16);
  return pthread_cond_destroy(&v17);
}

uint64_t webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrack>::RegisterObserver(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 40);
  v18 = webrtc::NotifierInterface::RegisterObserver;
  v19 = 16;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 24);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    v7(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackInterface,void,webrtc::ObserverInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrack>::UnregisterObserver(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 40);
  v18 = webrtc::NotifierInterface::UnregisterObserver;
  v19 = 16;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 24);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    (v7)(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackInterface,void,webrtc::ObserverInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

void *non-virtual thunk towebrtc::RefCountedObject<webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrack>>::~RefCountedObject(uint64_t a1)
{
  return webrtc::RefCountedObject<webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrack>>::~RefCountedObject((a1 - 8));
}

{
  return webrtc::RefCountedObject<webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrack>>::~RefCountedObject((a1 - 16));
}

void non-virtual thunk towebrtc::RefCountedObject<webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrack>>::~RefCountedObject(uint64_t a1)
{
  webrtc::RefCountedObject<webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrack>>::~RefCountedObject((a1 - 8));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::RefCountedObject<webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrack>>::~RefCountedObject((a1 - 16));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrack>::DestroyInternal(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 40) = 0;
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::VideoTrackProxyWithInternal<webrtc::VideoTrack>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::VideoRtpReceiver::GenerateKeyFrame(void)::$_0>(uint64_t *a1)
{
  v1 = *a1;
  result = *(*a1 + 64);
  if (result)
  {
    if (*(v1 + 76) == 1)
    {
      return (*(*result + 192))(result, *(v1 + 72));
    }

    else
    {
      return (*(*result + 192))(result, 0);
    }
  }

  return result;
}

uint64_t webrtc::Notifier<webrtc::VideoTrackInterface>::FireOnChanged(uint64_t result)
{
  v1[0] = v1;
  v1[1] = v1;
  v1[2] = 0;
  if (*(result + 32) != result + 24)
  {
    operator new();
  }

  return result;
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::VideoRtpReceiver::SetupMediaChannel(std::optional<unsigned int>,webrtc::MediaReceiveChannelInterface *)::$_0>(uint64_t a1)
{
  v2 = *a1;
  webrtc::VideoRtpReceiver::SetMediaChannel_w(*a1, **(a1 + 8));
  v3 = **(a1 + 16);
  v4 = **(a1 + 24);

  return webrtc::VideoRtpReceiver::RestartMediaChannel_w(v2, v3, v4);
}

void *std::__function::__func<webrtc::VideoRtpReceiver::SetEncodedSinkEnabled(BOOL)::$_0,std::allocator<webrtc::VideoRtpReceiver::SetEncodedSinkEnabled(BOOL)::$_0>,void ()(webrtc::RecordableEncodedFrame const&)>::~__func(void *result)
{
  *result = &unk_2882A2D78;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void std::__function::__func<webrtc::VideoRtpReceiver::SetEncodedSinkEnabled(BOOL)::$_0,std::allocator<webrtc::VideoRtpReceiver::SetEncodedSinkEnabled(BOOL)::$_0>,void ()(webrtc::RecordableEncodedFrame const&)>::~__func(void *a1)
{
  *a1 = &unk_2882A2D78;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t (***std::__function::__func<webrtc::VideoRtpReceiver::SetEncodedSinkEnabled(BOOL)::$_0,std::allocator<webrtc::VideoRtpReceiver::SetEncodedSinkEnabled(BOOL)::$_0>,void ()(webrtc::RecordableEncodedFrame const&)>::__clone(uint64_t a1, void *a2))(void)
{
  result = *(a1 + 8);
  *a2 = &unk_2882A2D78;
  a2[1] = result;
  if (result)
  {
    return (**result)(result);
  }

  return result;
}

uint64_t std::__function::__func<webrtc::VideoRtpReceiver::SetEncodedSinkEnabled(BOOL)::$_0,std::allocator<webrtc::VideoRtpReceiver::SetEncodedSinkEnabled(BOOL)::$_0>,void ()(webrtc::RecordableEncodedFrame const&)>::destroy(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__function::__func<webrtc::VideoRtpReceiver::SetEncodedSinkEnabled(BOOL)::$_0,std::allocator<webrtc::VideoRtpReceiver::SetEncodedSinkEnabled(BOOL)::$_0>,void ()(webrtc::RecordableEncodedFrame const&)>::destroy_deallocate(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 8))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__function::__func<webrtc::VideoRtpReceiver::SetEncodedSinkEnabled(BOOL)::$_0,std::allocator<webrtc::VideoRtpReceiver::SetEncodedSinkEnabled(BOOL)::$_0>,void ()(webrtc::RecordableEncodedFrame const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  pthread_mutex_lock((v3 + 280));
  v4 = *(v3 + 344);
  v5 = *(v3 + 352);
  while (v4 != v5)
  {
    v6 = *v4++;
    (*(*v6 + 16))(v6, a2);
  }

  return pthread_mutex_unlock((v3 + 280));
}

uint64_t webrtc::VideoRtpTrackSource::VideoRtpTrackSource(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  *(a1 + 24) = a1 + 24;
  *(a1 + 32) = a1 + 24;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 52) = 1;
  *a1 = &unk_2882A2DC0;
  *(a1 + 8) = &unk_2882A2E68;
  *(a1 + 16) = &unk_2882A2E98;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 56) = &unk_2882A19D8;
  *(a1 + 64) = 0;
  *(a1 + 88) = &unk_2882A1A20;
  pthread_mutexattr_init(&v5);
  pthread_mutexattr_setpolicy_np(&v5, 3);
  pthread_mutex_init((a1 + 96), &v5);
  pthread_mutexattr_destroy(&v5);
  *(a1 + 160) = 0;
  *(a1 + 164) = 0x7FFFFFFF;
  *(a1 + 168) = 0;
  *(a1 + 172) = 0;
  *(a1 + 176) = 0x17FFFFFFFLL;
  *(a1 + 216) = 0;
  *(a1 + 220) = 0;
  *(a1 + 222) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 208) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 1;
  *(a1 + 240) = 0;
  *(a1 + 272) = 0;
  pthread_mutexattr_init(&v5);
  pthread_mutexattr_setpolicy_np(&v5, 3);
  pthread_mutex_init((a1 + 280), &v5);
  pthread_mutexattr_destroy(&v5);
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = a2;
  return a1;
}

uint64_t webrtc::VideoRtpTrackSource::GenerateKeyFrame(webrtc::VideoRtpTrackSource *this)
{
  result = *(this + 46);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t webrtc::VideoRtpTrackSource::AddEncodedSink(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 280));
  v5 = *(a1 + 352);
  v4 = *(a1 + 360);
  if (v5 >= v4)
  {
    v7 = *(a1 + 344);
    v8 = ((v5 - v7) >> 3) + 1;
    if (v8 >> 61)
    {
      goto LABEL_19;
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= v8)
    {
      v10 = v8;
    }

    v11 = v9 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_18:
    __break(1u);
LABEL_19:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v5)
  {
    goto LABEL_18;
  }

  *v5 = a2;
  v6 = v5 + 1;
  *(a1 + 352) = v6;
  v13 = v6 - *(a1 + 344);
  result = pthread_mutex_unlock((a1 + 280));
  if (v13 == 8)
  {
    result = *(a1 + 368);
    if (result)
    {
      v15 = *(*result + 24);

      return v15();
    }
  }

  return result;
}

uint64_t webrtc::VideoRtpTrackSource::RemoveEncodedSink(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 280));
  v4 = *(a1 + 344);
  v5 = *(a1 + 352);
  v6 = v4;
  if (v4 != v5)
  {
    v7 = *(a1 + 344);
    while (*v7 != a2)
    {
      ++v7;
      v6 += 8;
      if (v7 == v5)
      {
        v6 = *(a1 + 352);
        break;
      }
    }
  }

  if (v5 != v6)
  {
    v8 = v5 - v6 - 8;
    if (v5 != (v6 + 8))
    {
      memmove(v6, (v6 + 8), v5 - v6 - 8);
      v4 = *(a1 + 344);
    }

    --v5;
    *(a1 + 352) = &v8[v6];
  }

  result = pthread_mutex_unlock((a1 + 280));
  if (v5 == v4)
  {
    result = *(a1 + 368);
    if (result)
    {
      v10 = *(*result + 24);

      return v10();
    }
  }

  return result;
}

void *webrtc::VideoSendStream::Stats::ToString@<X0>(webrtc::VideoSendStream::Stats *this@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v121 = *MEMORY[0x277D85DE8];
  v114 = v118;
  strcpy(v118, "VideoSendStream stats: ");
  v115 = xmmword_273BA6250;
  webrtc::SimpleStringBuilder::AppendFormat(&v114, "%lld", a2);
  if (v115 + ~*(&v115 + 1) >= 3uLL)
  {
    v4 = 3;
  }

  else
  {
    v4 = v115 + ~*(&v115 + 1);
  }

  memcpy(&v114[*(&v115 + 1)], ", {", v4);
  *(&v115 + 1) += v4;
  v114[*(&v115 + 1)] = 0;
  if (v115 + ~*(&v115 + 1) >= 0xBuLL)
  {
    v5 = 11;
  }

  else
  {
    v5 = v115 + ~*(&v115 + 1);
  }

  memcpy(&v114[*(&v115 + 1)], "input_fps: ", v5);
  *(&v115 + 1) += v5;
  v114[*(&v115 + 1)] = 0;
  webrtc::StringFormat("%.1f", __p, *(this + 4));
  v6 = v120;
  if ((v120 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v120 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  if (v6 >= v115 + ~*(&v115 + 1))
  {
    v8 = v115 + ~*(&v115 + 1);
  }

  else
  {
    v8 = v6;
  }

  memcpy(&v114[*(&v115 + 1)], v7, v8);
  *(&v115 + 1) += v8;
  v114[*(&v115 + 1)] = 0;
  if (v115 + ~*(&v115 + 1) >= 2uLL)
  {
    v9 = 2;
  }

  else
  {
    v9 = v115 + ~*(&v115 + 1);
  }

  memcpy(&v114[*(&v115 + 1)], ", ", v9);
  *(&v115 + 1) += v9;
  v114[*(&v115 + 1)] = 0;
  if (v120 < 0)
  {
    operator delete(__p[0]);
  }

  if (v115 + ~*(&v115 + 1) >= 0xCuLL)
  {
    v10 = 12;
  }

  else
  {
    v10 = v115 + ~*(&v115 + 1);
  }

  memcpy(&v114[*(&v115 + 1)], "encode_fps: ", v10);
  *(&v115 + 1) += v10;
  v114[*(&v115 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v114, "%d", *(this + 10));
  if (v115 + ~*(&v115 + 1) >= 2uLL)
  {
    v11 = 2;
  }

  else
  {
    v11 = v115 + ~*(&v115 + 1);
  }

  memcpy(&v114[*(&v115 + 1)], ", ", v11);
  *(&v115 + 1) += v11;
  v114[*(&v115 + 1)] = 0;
  if (v115 + ~*(&v115 + 1) >= 0xBuLL)
  {
    v12 = 11;
  }

  else
  {
    v12 = v115 + ~*(&v115 + 1);
  }

  memcpy(&v114[*(&v115 + 1)], "encode_ms: ", v12);
  *(&v115 + 1) += v12;
  v114[*(&v115 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v114, "%d", *(this + 11));
  if (v115 + ~*(&v115 + 1) >= 2uLL)
  {
    v13 = 2;
  }

  else
  {
    v13 = v115 + ~*(&v115 + 1);
  }

  memcpy(&v114[*(&v115 + 1)], ", ", v13);
  *(&v115 + 1) += v13;
  v114[*(&v115 + 1)] = 0;
  if (v115 + ~*(&v115 + 1) >= 0x13uLL)
  {
    v14 = 19;
  }

  else
  {
    v14 = v115 + ~*(&v115 + 1);
  }

  memcpy(&v114[*(&v115 + 1)], "encode_usage_perc: ", v14);
  *(&v115 + 1) += v14;
  v114[*(&v115 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v114, "%d", *(this + 12));
  if (v115 + ~*(&v115 + 1) >= 2uLL)
  {
    v15 = 2;
  }

  else
  {
    v15 = v115 + ~*(&v115 + 1);
  }

  memcpy(&v114[*(&v115 + 1)], ", ", v15);
  *(&v115 + 1) += v15;
  v114[*(&v115 + 1)] = 0;
  if (v115 + ~*(&v115 + 1) >= 0xCuLL)
  {
    v16 = 12;
  }

  else
  {
    v16 = v115 + ~*(&v115 + 1);
  }

  memcpy(&v114[*(&v115 + 1)], "target_bps: ", v16);
  *(&v115 + 1) += v16;
  v114[*(&v115 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v114, "%d", *(this + 25));
  if (v115 + ~*(&v115 + 1) >= 2uLL)
  {
    v17 = 2;
  }

  else
  {
    v17 = v115 + ~*(&v115 + 1);
  }

  memcpy(&v114[*(&v115 + 1)], ", ", v17);
  *(&v115 + 1) += v17;
  v114[*(&v115 + 1)] = 0;
  if (v115 + ~*(&v115 + 1) >= 0xBuLL)
  {
    v18 = 11;
  }

  else
  {
    v18 = v115 + ~*(&v115 + 1);
  }

  memcpy(&v114[*(&v115 + 1)], "media_bps: ", v18);
  *(&v115 + 1) += v18;
  v114[*(&v115 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v114, "%d", *(this + 26));
  if (v115 + ~*(&v115 + 1) >= 2uLL)
  {
    v19 = 2;
  }

  else
  {
    v19 = v115 + ~*(&v115 + 1);
  }

  memcpy(&v114[*(&v115 + 1)], ", ", v19);
  *(&v115 + 1) += v19;
  v114[*(&v115 + 1)] = 0;
  if (v115 + ~*(&v115 + 1) >= 0xBuLL)
  {
    v20 = 11;
  }

  else
  {
    v20 = v115 + ~*(&v115 + 1);
  }

  memcpy(&v114[*(&v115 + 1)], "suspended: ", v20);
  *(&v115 + 1) += v20;
  v114[*(&v115 + 1)] = 0;
  if (*(this + 108))
  {
    v21 = 4;
  }

  else
  {
    v21 = 5;
  }

  if (*(this + 108))
  {
    v22 = "true";
  }

  else
  {
    v22 = "false";
  }

  if (v21 >= v115 + ~*(&v115 + 1))
  {
    v23 = v115 + ~*(&v115 + 1);
  }

  else
  {
    v23 = v21;
  }

  memcpy(&v114[*(&v115 + 1)], v22, v23);
  *(&v115 + 1) += v23;
  v114[*(&v115 + 1)] = 0;
  if (v115 + ~*(&v115 + 1) >= 2uLL)
  {
    v24 = 2;
  }

  else
  {
    v24 = v115 + ~*(&v115 + 1);
  }

  memcpy(&v114[*(&v115 + 1)], ", ", v24);
  *(&v115 + 1) += v24;
  v114[*(&v115 + 1)] = 0;
  if (v115 + ~*(&v115 + 1) >= 0x10uLL)
  {
    v25 = 16;
  }

  else
  {
    v25 = v115 + ~*(&v115 + 1);
  }

  memcpy(&v114[*(&v115 + 1)], "bw_adapted_res: ", v25);
  *(&v115 + 1) += v25;
  v114[*(&v115 + 1)] = 0;
  if (*(this + 109))
  {
    v26 = 4;
  }

  else
  {
    v26 = 5;
  }

  if (*(this + 109))
  {
    v27 = "true";
  }

  else
  {
    v27 = "false";
  }

  if (v26 >= v115 + ~*(&v115 + 1))
  {
    v28 = v115 + ~*(&v115 + 1);
  }

  else
  {
    v28 = v26;
  }

  memcpy(&v114[*(&v115 + 1)], v27, v28);
  *(&v115 + 1) += v28;
  v114[*(&v115 + 1)] = 0;
  if (v115 + ~*(&v115 + 1) >= 2uLL)
  {
    v29 = 2;
  }

  else
  {
    v29 = v115 + ~*(&v115 + 1);
  }

  memcpy(&v114[*(&v115 + 1)], ", ", v29);
  *(&v115 + 1) += v29;
  v114[*(&v115 + 1)] = 0;
  if (v115 + ~*(&v115 + 1) >= 0x11uLL)
  {
    v30 = 17;
  }

  else
  {
    v30 = v115 + ~*(&v115 + 1);
  }

  memcpy(&v114[*(&v115 + 1)], "cpu_adapted_res: ", v30);
  *(&v115 + 1) += v30;
  v114[*(&v115 + 1)] = 0;
  if (*(this + 110))
  {
    v31 = 4;
  }

  else
  {
    v31 = 5;
  }

  if (*(this + 110))
  {
    v32 = "true";
  }

  else
  {
    v32 = "false";
  }

  if (v31 >= v115 + ~*(&v115 + 1))
  {
    v33 = v115 + ~*(&v115 + 1);
  }

  else
  {
    v33 = v31;
  }

  memcpy(&v114[*(&v115 + 1)], v32, v33);
  *(&v115 + 1) += v33;
  v114[*(&v115 + 1)] = 0;
  if (v115 + ~*(&v115 + 1) >= 2uLL)
  {
    v34 = 2;
  }

  else
  {
    v34 = v115 + ~*(&v115 + 1);
  }

  memcpy(&v114[*(&v115 + 1)], ", ", v34);
  *(&v115 + 1) += v34;
  v114[*(&v115 + 1)] = 0;
  if (v115 + ~*(&v115 + 1) >= 0x10uLL)
  {
    v35 = 16;
  }

  else
  {
    v35 = v115 + ~*(&v115 + 1);
  }

  memcpy(&v114[*(&v115 + 1)], "bw_adapted_fps: ", v35);
  *(&v115 + 1) += v35;
  v114[*(&v115 + 1)] = 0;
  if (*(this + 111))
  {
    v36 = 4;
  }

  else
  {
    v36 = 5;
  }

  if (*(this + 111))
  {
    v37 = "true";
  }

  else
  {
    v37 = "false";
  }

  if (v36 >= v115 + ~*(&v115 + 1))
  {
    v38 = v115 + ~*(&v115 + 1);
  }

  else
  {
    v38 = v36;
  }

  memcpy(&v114[*(&v115 + 1)], v37, v38);
  *(&v115 + 1) += v38;
  v114[*(&v115 + 1)] = 0;
  if (v115 + ~*(&v115 + 1) >= 2uLL)
  {
    v39 = 2;
  }

  else
  {
    v39 = v115 + ~*(&v115 + 1);
  }

  memcpy(&v114[*(&v115 + 1)], ", ", v39);
  *(&v115 + 1) += v39;
  v114[*(&v115 + 1)] = 0;
  if (v115 + ~*(&v115 + 1) >= 0x11uLL)
  {
    v40 = 17;
  }

  else
  {
    v40 = v115 + ~*(&v115 + 1);
  }

  memcpy(&v114[*(&v115 + 1)], "cpu_adapted_fps: ", v40);
  *(&v115 + 1) += v40;
  v114[*(&v115 + 1)] = 0;
  if (*(this + 112))
  {
    v41 = "true";
  }

  else
  {
    v41 = "false";
  }

  if (*(this + 112))
  {
    v42 = 4;
  }

  else
  {
    v42 = 5;
  }

  if (v42 >= v115 + ~*(&v115 + 1))
  {
    v43 = v115 + ~*(&v115 + 1);
  }

  else
  {
    v43 = v42;
  }

  memcpy(&v114[*(&v115 + 1)], v41, v43);
  *(&v115 + 1) += v43;
  v114[*(&v115 + 1)] = 0;
  if (v115 + ~*(&v115 + 1) >= 2uLL)
  {
    v44 = 2;
  }

  else
  {
    v44 = v115 + ~*(&v115 + 1);
  }

  memcpy(&v114[*(&v115 + 1)], ", ", v44);
  *(&v115 + 1) += v44;
  v114[*(&v115 + 1)] = 0;
  if (v115 + ~*(&v115 + 1) >= 0x12uLL)
  {
    v45 = 18;
  }

  else
  {
    v45 = v115 + ~*(&v115 + 1);
  }

  memcpy(&v114[*(&v115 + 1)], "#cpu_adaptations: ", v45);
  *(&v115 + 1) += v45;
  v114[*(&v115 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v114, "%d", *(this + 37));
  if (v115 + ~*(&v115 + 1) >= 2uLL)
  {
    v46 = 2;
  }

  else
  {
    v46 = v115 + ~*(&v115 + 1);
  }

  memcpy(&v114[*(&v115 + 1)], ", ", v46);
  *(&v115 + 1) += v46;
  v114[*(&v115 + 1)] = 0;
  if (v115 + ~*(&v115 + 1) >= 0x16uLL)
  {
    v47 = 22;
  }

  else
  {
    v47 = v115 + ~*(&v115 + 1);
  }

  memcpy(&v114[*(&v115 + 1)], "#quality_adaptations: ", v47);
  *(&v115 + 1) += v47;
  v114[*(&v115 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v114, "%d", *(this + 38));
  LOBYTE(__p[0]) = 125;
  v48 = v115;
  v49 = *(&v115 + 1) + 1;
  memcpy(&v114[*(&v115 + 1)], __p, v115 != *(&v115 + 1) + 1);
  v50 = *(&v115 + 1);
  if (v48 != v49)
  {
    v50 = *(&v115 + 1) + 1;
  }

  *(&v115 + 1) = v50;
  v114[v50] = 0;
  v51 = *(this + 20);
  v52 = this + 168;
  if (v51 != this + 168)
  {
    do
    {
      if (*(v51 + 10))
      {
        v53 = *(v51 + 1);
        if (v53)
        {
          goto LABEL_262;
        }
      }

      else
      {
        if (v115 + ~*(&v115 + 1) >= 8uLL)
        {
          v54 = 8;
        }

        else
        {
          v54 = v115 + ~*(&v115 + 1);
        }

        memcpy(&v114[*(&v115 + 1)], " {ssrc: ", v54);
        *(&v115 + 1) += v54;
        v114[*(&v115 + 1)] = 0;
        webrtc::SimpleStringBuilder::AppendFormat(&v114, "%u", *(v51 + 8));
        if (v115 + ~*(&v115 + 1) >= 2uLL)
        {
          v55 = 2;
        }

        else
        {
          v55 = v115 + ~*(&v115 + 1);
        }

        v56 = memcpy(&v114[*(&v115 + 1)], ", ", v55);
        *(&v115 + 1) += v55;
        v114[*(&v115 + 1)] = 0;
        __s = __p;
        strcpy(__p, "type: ");
        v117 = xmmword_273BA6260;
        v57 = *(v51 + 10);
        if (v57 >= 3)
        {
          webrtc::webrtc_checks_impl::UnreachableCodeReached(v56);
        }

        v58 = off_279E95B40[v57];
        v59 = strlen(v58);
        if (v59 >= 0x3F9)
        {
          v60 = 1017;
        }

        else
        {
          v60 = v59;
        }

        memcpy(__p + 6, v58, v60);
        v61 = v60 + 6;
        *(&v117 + 1) = v61;
        v62 = __p;
        *(__p + v61) = 0;
        if (v51[48] == 1)
        {
          if (1017 - v60 >= 7)
          {
            v63 = 7;
          }

          else
          {
            v63 = 1017 - v60;
          }

          memcpy(__p + v61, " (for: ", v63);
          *(&v117 + 1) = v63 + v61;
          *(__p + *(&v117 + 1)) = 0;
          webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", *(v51 + 11));
          v64 = v117;
          v65 = *(&v117 + 1) + 1;
          memcpy(&__s[*(&v117 + 1)], ")", v117 != *(&v117 + 1) + 1);
          v66 = *(&v117 + 1);
          if (v64 != v65)
          {
            v66 = *(&v117 + 1) + 1;
          }

          *(&v117 + 1) = v66;
          __s[v66] = 0;
          v61 = *(&v117 + 1);
          v67 = v117;
          v62 = __s;
        }

        else
        {
          v67 = 1024;
        }

        v68 = v67 + ~v61;
        if (v68 >= 2)
        {
          v69 = 2;
        }

        else
        {
          v69 = v68;
        }

        memcpy(&v62[v61], ", ", v69);
        *(&v117 + 1) += v69;
        __s[*(&v117 + 1)] = 0;
        if (v117 + ~*(&v117 + 1) >= 7uLL)
        {
          v70 = 7;
        }

        else
        {
          v70 = v117 + ~*(&v117 + 1);
        }

        memcpy(&__s[*(&v117 + 1)], "width: ", v70);
        *(&v117 + 1) += v70;
        __s[*(&v117 + 1)] = 0;
        webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v51 + 15));
        if (v117 + ~*(&v117 + 1) >= 2uLL)
        {
          v71 = 2;
        }

        else
        {
          v71 = v117 + ~*(&v117 + 1);
        }

        memcpy(&__s[*(&v117 + 1)], ", ", v71);
        *(&v117 + 1) += v71;
        __s[*(&v117 + 1)] = 0;
        if (v117 + ~*(&v117 + 1) >= 8uLL)
        {
          v72 = 8;
        }

        else
        {
          v72 = v117 + ~*(&v117 + 1);
        }

        memcpy(&__s[*(&v117 + 1)], "height: ", v72);
        *(&v117 + 1) += v72;
        __s[*(&v117 + 1)] = 0;
        webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v51 + 16));
        if (v117 + ~*(&v117 + 1) >= 2uLL)
        {
          v73 = 2;
        }

        else
        {
          v73 = v117 + ~*(&v117 + 1);
        }

        memcpy(&__s[*(&v117 + 1)], ", ", v73);
        *(&v117 + 1) += v73;
        __s[*(&v117 + 1)] = 0;
        if (v117 + ~*(&v117 + 1) >= 5uLL)
        {
          v74 = 5;
        }

        else
        {
          v74 = v117 + ~*(&v117 + 1);
        }

        memcpy(&__s[*(&v117 + 1)], "key: ", v74);
        *(&v117 + 1) += v74;
        __s[*(&v117 + 1)] = 0;
        webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v51 + 13));
        if (v117 + ~*(&v117 + 1) >= 2uLL)
        {
          v75 = 2;
        }

        else
        {
          v75 = v117 + ~*(&v117 + 1);
        }

        memcpy(&__s[*(&v117 + 1)], ", ", v75);
        *(&v117 + 1) += v75;
        __s[*(&v117 + 1)] = 0;
        if (v117 + ~*(&v117 + 1) >= 7uLL)
        {
          v76 = 7;
        }

        else
        {
          v76 = v117 + ~*(&v117 + 1);
        }

        memcpy(&__s[*(&v117 + 1)], "delta: ", v76);
        *(&v117 + 1) += v76;
        __s[*(&v117 + 1)] = 0;
        webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v51 + 14));
        if (v117 + ~*(&v117 + 1) >= 2uLL)
        {
          v77 = 2;
        }

        else
        {
          v77 = v117 + ~*(&v117 + 1);
        }

        memcpy(&__s[*(&v117 + 1)], ", ", v77);
        *(&v117 + 1) += v77;
        __s[*(&v117 + 1)] = 0;
        if (v117 + ~*(&v117 + 1) >= 0xBuLL)
        {
          v78 = 11;
        }

        else
        {
          v78 = v117 + ~*(&v117 + 1);
        }

        memcpy(&__s[*(&v117 + 1)], "total_bps: ", v78);
        *(&v117 + 1) += v78;
        __s[*(&v117 + 1)] = 0;
        webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v51 + 17));
        if (v117 + ~*(&v117 + 1) >= 2uLL)
        {
          v79 = 2;
        }

        else
        {
          v79 = v117 + ~*(&v117 + 1);
        }

        memcpy(&__s[*(&v117 + 1)], ", ", v79);
        *(&v117 + 1) += v79;
        __s[*(&v117 + 1)] = 0;
        if (v117 + ~*(&v117 + 1) >= 0x10uLL)
        {
          v80 = 16;
        }

        else
        {
          v80 = v117 + ~*(&v117 + 1);
        }

        memcpy(&__s[*(&v117 + 1)], "retransmit_bps: ", v80);
        *(&v117 + 1) += v80;
        __s[*(&v117 + 1)] = 0;
        webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v51 + 18));
        if (v117 + ~*(&v117 + 1) >= 2uLL)
        {
          v81 = 2;
        }

        else
        {
          v81 = v117 + ~*(&v117 + 1);
        }

        memcpy(&__s[*(&v117 + 1)], ", ", v81);
        *(&v117 + 1) += v81;
        __s[*(&v117 + 1)] = 0;
        if (v117 + ~*(&v117 + 1) >= 0xEuLL)
        {
          v82 = 14;
        }

        else
        {
          v82 = v117 + ~*(&v117 + 1);
        }

        memcpy(&__s[*(&v117 + 1)], "avg_delay_ms: ", v82);
        *(&v117 + 1) += v82;
        __s[*(&v117 + 1)] = 0;
        webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v51 + 19));
        if (v117 + ~*(&v117 + 1) >= 2uLL)
        {
          v83 = 2;
        }

        else
        {
          v83 = v117 + ~*(&v117 + 1);
        }

        memcpy(&__s[*(&v117 + 1)], ", ", v83);
        *(&v117 + 1) += v83;
        __s[*(&v117 + 1)] = 0;
        if (v117 + ~*(&v117 + 1) >= 0xEuLL)
        {
          v84 = 14;
        }

        else
        {
          v84 = v117 + ~*(&v117 + 1);
        }

        memcpy(&__s[*(&v117 + 1)], "max_delay_ms: ", v84);
        *(&v117 + 1) += v84;
        __s[*(&v117 + 1)] = 0;
        webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v51 + 20));
        if (v117 + ~*(&v117 + 1) >= 2uLL)
        {
          v85 = 2;
        }

        else
        {
          v85 = v117 + ~*(&v117 + 1);
        }

        memcpy(&__s[*(&v117 + 1)], ", ", v85);
        *(&v117 + 1) += v85;
        __s[*(&v117 + 1)] = 0;
        if (v51[304] == 1)
        {
          if (v117 + ~*(&v117 + 1) >= 0xAuLL)
          {
            v86 = 10;
          }

          else
          {
            v86 = v117 + ~*(&v117 + 1);
          }

          memcpy(&__s[*(&v117 + 1)], "cum_loss: ", v86);
          *(&v117 + 1) += v86;
          __s[*(&v117 + 1)] = 0;
          if ((v51[304] & 1) == 0)
          {
            goto LABEL_279;
          }

          webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v51 + 63));
          v87 = v117 + ~*(&v117 + 1) >= 2uLL ? 2 : v117 + ~*(&v117 + 1);
          memcpy(&__s[*(&v117 + 1)], ", ", v87);
          *(&v117 + 1) += v87;
          __s[*(&v117 + 1)] = 0;
          v88 = v117 + ~*(&v117 + 1) >= 0xDuLL ? 13 : v117 + ~*(&v117 + 1);
          memcpy(&__s[*(&v117 + 1)], "max_ext_seq: ", v88);
          *(&v117 + 1) += v88;
          __s[*(&v117 + 1)] = 0;
          if ((v51[304] & 1) == 0)
          {
            goto LABEL_279;
          }

          webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", *(v51 + 64));
          if (v117 + ~*(&v117 + 1) >= 2uLL)
          {
            v89 = 2;
          }

          else
          {
            v89 = v117 + ~*(&v117 + 1);
          }

          memcpy(&__s[*(&v117 + 1)], ", ", v89);
          *(&v117 + 1) += v89;
          __s[*(&v117 + 1)] = 0;
        }

        if (v117 + ~*(&v117 + 1) >= 6uLL)
        {
          v90 = 6;
        }

        else
        {
          v90 = v117 + ~*(&v117 + 1);
        }

        memcpy(&__s[*(&v117 + 1)], "nack: ", v90);
        *(&v117 + 1) += v90;
        __s[*(&v117 + 1)] = 0;
        webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", *(v51 + 54));
        if (v117 + ~*(&v117 + 1) >= 2uLL)
        {
          v91 = 2;
        }

        else
        {
          v91 = v117 + ~*(&v117 + 1);
        }

        memcpy(&__s[*(&v117 + 1)], ", ", v91);
        *(&v117 + 1) += v91;
        __s[*(&v117 + 1)] = 0;
        if (v117 + ~*(&v117 + 1) >= 5uLL)
        {
          v92 = 5;
        }

        else
        {
          v92 = v117 + ~*(&v117 + 1);
        }

        memcpy(&__s[*(&v117 + 1)], "fir: ", v92);
        *(&v117 + 1) += v92;
        __s[*(&v117 + 1)] = 0;
        webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", *(v51 + 55));
        if (v117 + ~*(&v117 + 1) >= 2uLL)
        {
          v93 = 2;
        }

        else
        {
          v93 = v117 + ~*(&v117 + 1);
        }

        memcpy(&__s[*(&v117 + 1)], ", ", v93);
        *(&v117 + 1) += v93;
        __s[*(&v117 + 1)] = 0;
        if (v117 + ~*(&v117 + 1) >= 5uLL)
        {
          v94 = 5;
        }

        else
        {
          v94 = v117 + ~*(&v117 + 1);
        }

        memcpy(&__s[*(&v117 + 1)], "pli: ", v94);
        *(&v117 + 1) += v94;
        __s[*(&v117 + 1)] = 0;
        webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", *(v51 + 56));
        if (!__s)
        {
          goto LABEL_279;
        }

        v95 = strlen(__s);
        if (v95 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_280;
        }

        if (v95 > 0x16)
        {
          operator new();
        }

        v113 = v95;
        v96 = v112 + v95;
        if (v112 <= __s && v96 > __s)
        {
          goto LABEL_279;
        }

        if (v95)
        {
          memmove(v112, __s, v95);
        }

        *v96 = 0;
        v97 = v113;
        if ((v113 & 0x80u) == 0)
        {
          v98 = v112;
        }

        else
        {
          v97 = v112[1];
          v98 = v112[0];
        }

        if (v97 >= v115 + ~*(&v115 + 1))
        {
          v99 = v115 + ~*(&v115 + 1);
        }

        else
        {
          v99 = v97;
        }

        memcpy(&v114[*(&v115 + 1)], v98, v99);
        *(&v115 + 1) += v99;
        v114[*(&v115 + 1)] = 0;
        if (v113 < 0)
        {
          operator delete(v112[0]);
        }

        LOBYTE(__p[0]) = 125;
        v100 = v115;
        v101 = *(&v115 + 1) + 1;
        memcpy(&v114[*(&v115 + 1)], __p, v115 != *(&v115 + 1) + 1);
        v102 = *(&v115 + 1);
        if (v100 != v101)
        {
          v102 = *(&v115 + 1) + 1;
        }

        *(&v115 + 1) = v102;
        v114[v102] = 0;
        v53 = *(v51 + 1);
        if (v53)
        {
          do
          {
LABEL_262:
            v103 = v53;
            v53 = *v53;
          }

          while (v53);
          goto LABEL_138;
        }
      }

      do
      {
        v103 = *(v51 + 2);
        v104 = *v103 == v51;
        v51 = v103;
      }

      while (!v104);
LABEL_138:
      v51 = v103;
    }

    while (v103 != v52);
  }

  v105 = v114;
  if (!v114)
  {
    goto LABEL_279;
  }

  v106 = strlen(v114);
  if (v106 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_280;
  }

  v107 = v106;
  if (v106 > 0x16)
  {
    operator new();
  }

  result = a3;
  a3[23] = v107;
  v109 = &a3[v107];
  if (a3 <= v105 && v109 > v105)
  {
LABEL_279:
    __break(1u);
LABEL_280:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v107)
  {
    result = memmove(a3, v105, v107);
  }

  *v109 = 0;
  return result;
}

uint64_t webrtc::VideoSendStream::Config::Config(uint64_t a1, uint64_t a2)
{
  v4 = webrtc::RtpConfig::RtpConfig(a1, a2);
  *(v4 + 296) = *(a2 + 296);
  v5 = *(a2 + 312);
  v6 = *(a2 + 328);
  v7 = *(a2 + 344);
  *(v4 + 180) = *(a2 + 360);
  *(v4 + 328) = v6;
  *(v4 + 344) = v7;
  *(v4 + 312) = v5;
  v8 = *(a2 + 368);
  *(a1 + 368) = v8;
  if (v8)
  {
    (**v8)(v8);
  }

  *(a1 + 376) = *(a2 + 376);
  v9 = *(a2 + 384);
  *(a1 + 388) = *(a2 + 388);
  *(a1 + 384) = v9;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0;
  v11 = *(a2 + 392);
  v10 = *(a2 + 400);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v12 = *(a2 + 416);
  *(a1 + 416) = v12;
  if (v12)
  {
    (**v12)(v12);
  }

  return a1;
}

unint64_t webrtc::VideoSendStream::Config::ToString@<X0>(webrtc::VideoSendStream::Config *this@<X0>, char *a2@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  __s = v41;
  v39 = 2048;
  strcpy(v41, "{encoder_settings: { experiment_cpu_load_estimator: ");
  if (*(this + 296))
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  if (*(this + 296))
  {
    v5 = "on";
  }

  else
  {
    v5 = "off";
  }

  if (*(this + 296))
  {
    v6 = 56;
  }

  else
  {
    v6 = 57;
  }

  memcpy(&v41[52], v5, v4);
  v40 = v4 | 0x34;
  *&v41[v4 | 0x34] = 32125;
  v7 = &v41[v6];
  *(v7 + 3) = 540700788;
  *v7 = 1953636396;
  v8 = v4 + 61;
  v41[v4 + 61] = 0;
  webrtc::RtpConfig::ToString(this, v9, v10);
  v11 = v37;
  v13 = __src[0];
  v12 = __src[1];
  if (v37 >= 0)
  {
    v14 = __src;
  }

  else
  {
    v14 = __src[0];
  }

  if (v37 >= 0)
  {
    v12 = v37;
  }

  if (v12 >= 1986 - v4)
  {
    v15 = 1986 - v4;
  }

  else
  {
    v15 = v12;
  }

  memcpy(&v41[v8], v14, v15);
  v16 = v8 + v15;
  v41[v16] = 0;
  if (v11 < 0)
  {
    operator delete(v13);
  }

  if (2047 - v16 >= 0x1B)
  {
    v17 = 27;
  }

  else
  {
    v17 = 2047 - v16;
  }

  memcpy(&v41[v16], ", rtcp_report_interval_ms: ", v17);
  v40 = v16 + v17;
  v41[v40] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 84));
  if ((v39 + ~v40) >= 0x12)
  {
    v18 = 18;
  }

  else
  {
    v18 = v39 + ~v40;
  }

  memcpy(&__s[v40], ", send_transport: ", v18);
  v40 += v18;
  __s[v40] = 0;
  v19 = *(this + 43);
  v20 = v19 == 0;
  if (v19)
  {
    v21 = "(Transport)";
  }

  else
  {
    v21 = "nullptr";
  }

  v22 = 11;
  if (v20)
  {
    v22 = 7;
  }

  if (v22 >= v39 + ~v40)
  {
    v23 = v39 + ~v40;
  }

  else
  {
    v23 = v22;
  }

  memcpy(&__s[v40], v21, v23);
  v40 += v23;
  __s[v40] = 0;
  if ((v39 + ~v40) >= 0x13)
  {
    v24 = 19;
  }

  else
  {
    v24 = v39 + ~v40;
  }

  memcpy(&__s[v40], ", render_delay_ms: ", v24);
  v40 += v24;
  __s[v40] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 88));
  if ((v39 + ~v40) >= 0x13)
  {
    v25 = 19;
  }

  else
  {
    v25 = v39 + ~v40;
  }

  memcpy(&__s[v40], ", target_delay_ms: ", v25);
  v40 += v25;
  __s[v40] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 89));
  if ((v39 + ~v40) >= 0x1D)
  {
    v26 = 29;
  }

  else
  {
    v26 = v39 + ~v40;
  }

  memcpy(&__s[v40], ", suspend_below_min_bitrate: ", v26);
  v40 += v26;
  __s[v40] = 0;
  if (*(this + 360))
  {
    v27 = "on";
  }

  else
  {
    v27 = "off";
  }

  v28 = 2;
  if (!*(this + 360))
  {
    v28 = 3;
  }

  if (v28 >= v39 + ~v40)
  {
    v29 = v39 + ~v40;
  }

  else
  {
    v29 = v28;
  }

  memcpy(&__s[v40], v27, v29);
  v40 += v29;
  __s[v40] = 0;
  LOBYTE(__src[0]) = 125;
  v30 = v39;
  v31 = v40 + 1;
  memcpy(&__s[v40], __src, v39 != v40 + 1);
  v32 = v40;
  if (v30 != v31)
  {
    v32 = v40 + 1;
  }

  v40 = v32;
  __s[v32] = 0;
  v33 = __s;
  if (!__s)
  {
    goto LABEL_63;
  }

  result = strlen(__s);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_64;
  }

  if (result > 0x16)
  {
    operator new();
  }

  a2[23] = result;
  v35 = &a2[result];
  if (a2 <= v33 && v35 > v33)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (result)
  {
    result = memmove(a2, v33, result);
  }

  *v35 = 0;
  return result;
}

void webrtc::internal::VideoSendStreamImpl::VideoSendStreamImpl(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, webrtc::RtpConfig *a9, uint64_t a10)
{
  *a1 = &unk_2882A2ED0;
  *(a1 + 8) = &unk_2882A2F80;
  *(a1 + 16) = &unk_2882A2FB0;
  v10 = *a2;
  *(a1 + 24) = *a2;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
  }

  v11 = *(a2 + 3);
  *(a1 + 32) = *(a2 + 1);
  *(a1 + 48) = v11;
  *(a1 + 64) = a5;
  webrtc::SendStatisticsProxy::SendStatisticsProxy(a1 + 72, *(a1 + 40), a9, *(a10 + 136), *(a1 + 32));
}

void webrtc::internal::VideoSendStreamImpl::~VideoSendStreamImpl(webrtc::internal::VideoSendStreamImpl *this)
{
  *this = &unk_2882A2ED0;
  *(this + 1) = &unk_2882A2F80;
  *(this + 2) = &unk_2882A2FB0;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::VideoSendStream::Config::ToString((this + 1104), &__p);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_send_stream_impl.cc");
    if (v19 < 0)
    {
      operator delete(__p);
    }
  }

  (*(**(this + 8) + 32))(*(this + 8), *(this + 213));
  v9 = *(this + 242);
  *(v9 + 4) = 0;
  if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v10 = *(this + 234);
  if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  *(this + 224) = &unk_288293910;
  if (*(this + 1847) < 0)
  {
    operator delete(*(this + 228));
  }

  v11 = *(this + 225);
  if (v11)
  {
    *(this + 226) = v11;
    operator delete(v11);
  }

  *(this + 215) = &unk_288293910;
  if (*(this + 1775) < 0)
  {
    operator delete(*(this + 219));
  }

  v12 = *(this + 216);
  if (v12)
  {
    *(this + 217) = v12;
    operator delete(v12);
  }

  webrtc::EncoderRtcpFeedback::~EncoderRtcpFeedback((this + 1544));
  v13 = *(this + 192);
  *(this + 192) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 190);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 187);
  if (v15)
  {
    *(this + 188) = v15;
    operator delete(v15);
  }

  v16 = *(this + 184);
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  webrtc::RtpConfig::~RtpConfig(this + 138);
  webrtc::SendStatisticsProxy::~SendStatisticsProxy((this + 72));
  v17 = *(this + 3);
  if (v17)
  {
    if (atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v17 + 8))(v17);
    }
  }
}

{
  webrtc::internal::VideoSendStreamImpl::~VideoSendStreamImpl(this);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::internal::VideoSendStreamImpl::~VideoSendStreamImpl(webrtc::internal::VideoSendStreamImpl *this)
{
  webrtc::internal::VideoSendStreamImpl::~VideoSendStreamImpl((this - 8));
}

{
  webrtc::internal::VideoSendStreamImpl::~VideoSendStreamImpl((this - 16));
}

{
  webrtc::internal::VideoSendStreamImpl::~VideoSendStreamImpl((this - 8));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::internal::VideoSendStreamImpl::~VideoSendStreamImpl((this - 16));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::internal::VideoSendStreamImpl::AddAdaptationResource(uint64_t a1, void (****a2)(void))
{
  v2 = *(a1 + 1536);
  v3 = *a2;
  v5 = v3;
  if (v3)
  {
    (**v3)(v3);
  }

  (*(*v2 + 16))(v2, &v5);
  result = v5;
  if (v5)
  {
    return ((*v5)[1])(v5);
  }

  return result;
}

void webrtc::internal::VideoSendStreamImpl::ReconfigureVideoEncoder(uint64_t a1, int *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v15 = *a2;
  v16 = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v2 = *(a2 + 3);
  v3 = *(a2 + 4);
  *(a2 + 3) = 0;
  v17 = v2;
  v18 = v3;
  v4 = a2 + 10;
  v5 = *(a2 + 5);
  v6 = *(a2 + 6);
  v19[0] = v5;
  v19[1] = v6;
  if (v6)
  {
    *(v5 + 16) = v19;
    *(a2 + 4) = v4;
    *v4 = 0;
    *(a2 + 6) = 0;
  }

  else
  {
    v18 = v19;
  }

  v19[2] = *(a2 + 7);
  v7 = *(a2 + 5);
  v20 = *(a2 + 4);
  v21 = v7;
  v22 = *(a2 + 12);
  *(a2 + 7) = 0;
  v8 = *(a2 + 26);
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  v23 = v8;
  v24 = *(a2 + 30);
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  v9 = a2[34];
  v26 = *(a2 + 140);
  v25 = v9;
  v10 = *(a2 + 18);
  *(a2 + 18) = 0;
  v28 = *(a2 + 38);
  v29 = *(a2 + 42);
  v11 = *(a2 + 23);
  v27 = v10;
  v30 = v11;
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  *(a2 + 23) = 0;
  v31 = *(a2 + 12);
  v13 = absl::internal_any_invocable::EmptyManager;
  v14 = 0;
  (*(*a1 + 56))(a1, &v15, v12);
  (v13)(1, v12, v12);
  webrtc::VideoEncoderConfig::~VideoEncoderConfig(&v15);
}

void webrtc::internal::VideoSendStreamImpl::ReconfigureVideoEncoder(uint64_t a1, int *a2, uint64_t a3)
{
  v95 = *MEMORY[0x277D85DE8];
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
  {
    goto LABEL_4;
  }

  webrtc::VideoEncoderConfig::ToString(a2, v93);
  webrtc::VideoSendStream::Config::ToString((a1 + 1104), &__p);
  webrtc::webrtc_logging_impl::Log("\r\t\n\t\n", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_send_stream_impl.cc");
  if (v75 < 0)
  {
    operator delete(__p);
    if (v94 < 0)
    {
      goto LABEL_153;
    }

LABEL_4:
    v13 = *(a2 + 21);
    v14 = *(a2 + 22);
    v15 = a2 + 42;
    if (v13 != v14)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  if ((v94 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

LABEL_153:
  operator delete(*v93);
  v13 = *(a2 + 21);
  v14 = *(a2 + 22);
  v15 = a2 + 42;
  if (v13 == v14)
  {
LABEL_7:
    v16 = (a1 + 1896);
    *(a1 + 1896) = 0;
    goto LABEL_8;
  }

LABEL_5:
  while ((*(v13 + 82) & 1) == 0)
  {
    v13 += 96;
    if (v13 == v14)
    {
      goto LABEL_7;
    }
  }

  v16 = (a1 + 1896);
  *(a1 + 1896) = 1;
  if ((*(**(a1 + 1704) + 40))(*(a1 + 1704)) && !*(a1 + 1872))
  {
    webrtc::internal::VideoSendStreamImpl::StartupVideoSendStream(a1);
  }

LABEL_8:
  if ((*v16 & 1) == 0 && *(a1 + 1872))
  {
    (*(**(a1 + 1888) + 8))(*(a1 + 1888), a1 + 8);
    v17 = *(a1 + 1872);
    if (v17)
    {
      *(v17 + 4) = 0;
      if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
      {
        MEMORY[0x2743DA540]();
      }

      *(a1 + 1872) = 0;
    }

    (*(**(a1 + 1536) + 72))(*(a1 + 1536), 0, 0, 0, 0, 0, 0.0);
    webrtc::SendStatisticsProxy::OnSetEncoderTargetRate((a1 + 72), 0);
  }

  v18 = *(a1 + 1536);
  v76 = *a2;
  v77 = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v19 = *(a2 + 3);
  v20 = *(a2 + 4);
  *(a2 + 3) = 0;
  v78 = v19;
  v79 = v20;
  v21 = a2 + 10;
  v22 = *(a2 + 5);
  v23 = *(a2 + 6);
  v80[0] = v22;
  v80[1] = v23;
  if (v23)
  {
    *(v22 + 16) = v80;
    *(a2 + 4) = v21;
    *v21 = 0;
    *(a2 + 6) = 0;
  }

  else
  {
    v79 = v80;
  }

  v24 = *(a2 + 5);
  v81 = *(a2 + 4);
  v80[2] = *(a2 + 7);
  v82 = v24;
  v83 = *(a2 + 12);
  *(a2 + 7) = 0;
  v25 = *(a2 + 26);
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  v84 = v25;
  v85 = *(a2 + 30);
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  v26 = a2[34];
  v87 = *(a2 + 140);
  v86 = v26;
  v27 = *(a2 + 18);
  *(a2 + 18) = 0;
  v89 = *(a2 + 38);
  v90 = *(a2 + 42);
  v28 = *(a2 + 23);
  v88 = v27;
  v91 = v28;
  *v15 = 0;
  v15[1] = 0;
  v15[2] = 0;
  v92 = *(a2 + 12);
  v29 = *(a1 + 1184);
  v30 = *(a1 + 1200);
  v31 = *(a1 + 1208);
  if (v30 == v31)
  {
    v60 = 0;
    v61 = 12;
    if ((*(a1 + 1304) & 0x80000000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_157;
  }

  memset(v93, 0, sizeof(v93));
  do
  {
    while (1)
    {
      v32 = *(v30 + 23);
      if (v32 < 0)
      {
        break;
      }

      webrtc::RtpHeaderExtensionMap::RegisterByUri(v93, *(v30 + 6), v30, v32);
      v30 += 4;
      if (v30 == v31)
      {
        goto LABEL_23;
      }
    }

    webrtc::RtpHeaderExtensionMap::RegisterByUri(v93, *(v30 + 6), *v30, v30[1]);
    v30 += 4;
  }

  while (v30 != v31);
LABEL_23:
  if (v93[5] <= 0xEu)
  {
    v33 = 1;
  }

  else
  {
    v33 = 2;
  }

  if (v93[6] <= 0xEu)
  {
    v34 = v33;
  }

  else
  {
    v34 = 2;
  }

  v35 = v93[5] != 0;
  if (v93[5])
  {
    v36 = 3;
  }

  else
  {
    v36 = 0;
  }

  if (v93[5])
  {
    v37 = 2;
  }

  else
  {
    v37 = 1;
  }

  if (v93[6])
  {
    v38 = v34;
  }

  else
  {
    v38 = v33;
  }

  if (v93[6])
  {
    v39 = v37;
  }

  else
  {
    v39 = v93[5] != 0;
  }

  if (v93[6])
  {
    v40 = v36 | 0x10;
  }

  else
  {
    v40 = v36;
  }

  v41 = v40 + 3;
  if (v93[1])
  {
    v42 = v39 + 1;
  }

  else
  {
    v42 = v39;
  }

  if (!v93[1])
  {
    v41 = v40;
  }

  v43 = v41 + 2;
  if (v93[8])
  {
    v44 = v42 + 1;
  }

  else
  {
    v44 = v42;
  }

  if (!v93[8])
  {
    v43 = v41;
  }

  if (v93[10])
  {
    ++v44;
    v43 += 3;
  }

  if (v93[7])
  {
    ++v44;
    ++v43;
  }

  if (v93[11])
  {
    ++v44;
    v45 = v43 + 1;
  }

  else
  {
    v45 = v43;
  }

  if (v93[13])
  {
    ++v44;
    v45 += 13;
  }

  if (v93[14])
  {
    ++v44;
    v45 += 16;
  }

  v46 = v45 + 16;
  if (v93[15])
  {
    v47 = v44 + 1;
  }

  else
  {
    v47 = v44;
  }

  if (!v93[15])
  {
    v46 = v45;
  }

  if (v93[16])
  {
    ++v47;
    v46 += 16;
  }

  if (v93[21] > 0xEu || v93[16] > 0xEu || v93[15] > 0xEu || v93[14] > 0xEu || v93[13] > 0xEu || v93[11] > 0xEu || v93[7] > 0xEu || v93[10] > 0xEu || v93[8] > 0xEu || v93[1] > 0xEu)
  {
    v38 = 2;
  }

  if (v93[21])
  {
    v58 = v47 + 1;
  }

  else
  {
    v58 = v47;
  }

  if (v93[21])
  {
    v59 = v46 + 16;
  }

  else
  {
    v59 = v46;
  }

  if (v93[17])
  {
    if (v93[17] > 0xEu)
    {
      v38 = 2;
    }

    v59 += 16;
    ++v58;
  }

  else if (!v59)
  {
    v61 = 12;
    goto LABEL_121;
  }

  v61 = ((v59 + v58 * v38 + 7) & 0xFFFFFFFC) + 12;
LABEL_121:
  if (v93[1])
  {
    v35 = v37;
    v36 += 3;
  }

  if (v93[8])
  {
    v36 += 2;
  }

  if (v93[10])
  {
    v36 += 3;
  }

  v65 = v93[5] > 0xEu || v93[1] > 0xEu || v93[8] > 0xEu || v93[10] > 0xEu || v93[16] > 0xEu;
  v66 = v35 + (v93[8] != 0) + (v93[10] != 0);
  if (v65)
  {
    v67 = 2;
  }

  else
  {
    v67 = 1;
  }

  v68 = v66 + (v93[16] != 0);
  if (v93[16])
  {
    v36 += 16;
  }

  if (v93[13])
  {
    if (v93[13] > 0xEu)
    {
      v67 = 2;
    }

    v60 = (v36 + 13 + (v68 + 1) * v67 + 7) & 0xFFFFFFFC;
    if ((*(a1 + 1304) & 0x80000000) != 0)
    {
      goto LABEL_157;
    }

LABEL_151:
    v69 = v60 + v61 + 32;
    goto LABEL_160;
  }

  if (v36)
  {
    v60 = (v36 + v68 * v67 + 7) & 0xFFFFFFFC;
    if ((*(a1 + 1304) & 0x80000000) == 0)
    {
      goto LABEL_151;
    }
  }

  else
  {
    v60 = 0;
    if ((*(a1 + 1304) & 0x80000000) == 0)
    {
      goto LABEL_151;
    }
  }

LABEL_157:
  v70 = v60 + 18;
  if (*(a1 + 1288) < 0)
  {
    v70 = 0;
  }

  v69 = v70 + v61 + (*(a1 + 1292) >= 0);
LABEL_160:
  if (*(a1 + 1360) >= 0)
  {
    v69 += 2;
  }

  v71 = v29 - v69;
  (*(a3 + 16))(0, a3, v72);
  v73 = *(a3 + 16);
  *(a3 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a3 + 24) = 0;
  (*(*v18 + 96))(v18, &v76, v71, v72);
  (v73)(1, v72, v72);
  webrtc::VideoEncoderConfig::~VideoEncoderConfig(&v76);
}

void webrtc::internal::VideoSendStreamImpl::StartupVideoSendStream(webrtc::internal::VideoSendStreamImpl *this)
{
  v2 = *(this + 236);
  __p = *(this + 238);
  if (*(this + 1897))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(this + 475);
  }

  LODWORD(v6) = v3;
  v7 = *(this + 482);
  v8 = *(this + 1464) ^ 1;
  v9 = *(this + 240);
  if (*(this + 382))
  {
    v4 = 0;
    LOBYTE(v10) = 0;
  }

  else
  {
    v4 = 1;
    v10 = 1;
  }

  v11 = v4;
  (**v2)(v2, this + 8, &__p);
  atomic_store(0, this + 1880);
  *(this + 1881) = 0;
  {
    {
      operator new();
    }
  }

  webrtc::RepeatingTaskHandle::DelayedStart();
}

uint64_t webrtc::internal::VideoSendStreamImpl::SetStats(webrtc::internal::VideoSendStreamImpl *this, const webrtc::VideoSendStream::Stats *a2)
{
  pthread_mutex_lock((this + 464));
  std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(this + 544, a2);
  v4 = *(a2 + 3);
  *(this + 36) = *(a2 + 2);
  *(this + 37) = v4;
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  *(this + 82) = *(a2 + 14);
  *(this + 39) = v6;
  *(this + 40) = v7;
  *(this + 38) = v5;
  if ((this + 544) == a2)
  {
    v9 = *(a2 + 18);
    *(this + 693) = *(a2 + 149);
    *(this + 86) = v9;
  }

  else
  {
    std::__tree<std::__value_type<webrtc::QualityLimitationReason,long long>,std::__map_value_compare<webrtc::QualityLimitationReason,std::__value_type<webrtc::QualityLimitationReason,long long>,std::less<webrtc::QualityLimitationReason>,true>,std::allocator<std::__value_type<webrtc::QualityLimitationReason,long long>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<webrtc::QualityLimitationReason,long long>,std::__tree_node<std::__value_type<webrtc::QualityLimitationReason,long long>,void *> *,long>>(this + 664, *(a2 + 15), a2 + 16);
    v8 = *(a2 + 18);
    *(this + 693) = *(a2 + 149);
    *(this + 86) = v8;
    std::__tree<std::__value_type<unsigned int,webrtc::VideoSendStream::StreamStats>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,webrtc::VideoSendStream::StreamStats>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,webrtc::VideoSendStream::StreamStats>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned int,webrtc::VideoSendStream::StreamStats>,std::__tree_node<std::__value_type<unsigned int,webrtc::VideoSendStream::StreamStats>,void *> *,long>>(this + 704, *(a2 + 20), a2 + 21);
  }

  v10 = *(a2 + 23);
  *(this + 734) = *(a2 + 190);
  *(this + 91) = v10;

  return pthread_mutex_unlock((this + 464));
}

void webrtc::internal::VideoSendStreamImpl::StopPermanentlyAndGetRtpStates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**(a1 + 1536) + 104))(*(a1 + 1536));
  *(a1 + 1712) = 0;
  (*(*a1 + 8))(a1);
  (*(**(a1 + 1704) + 56))(&v12);
  v6 = a2 + 8;
  std::__tree<sigslot::_signal_base_interface *>::destroy(a2, *(a2 + 8));
  v7 = v13;
  *a2 = v12;
  *(a2 + 8) = v7;
  v8 = v14;
  *(a2 + 16) = v14;
  if (v8)
  {
    v7[2] = v6;
    v12 = &v13;
    v13 = 0;
    v14 = 0;
    v7 = 0;
  }

  else
  {
    *a2 = v6;
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(&v12, v7);
  (*(**(a1 + 1704) + 64))(&v12);
  v9 = a3 + 8;
  std::__tree<sigslot::_signal_base_interface *>::destroy(a3, *(a3 + 8));
  v10 = v13;
  *a3 = v12;
  *(a3 + 8) = v10;
  v11 = v14;
  *(a3 + 16) = v14;
  if (v11)
  {
    v10[2] = v9;
    v12 = &v13;
    v13 = 0;
    v14 = 0;
    v10 = 0;
  }

  else
  {
    *a3 = v9;
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(&v12, v10);
}

void webrtc::internal::VideoSendStreamImpl::GenerateKeyFrame(void *a1, const void ***a2)
{
  v3 = a1[139];
  v4 = a1[138];
  v22 = 0;
  v23 = 0;
  v21 = 0;
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_39;
  }

  v5 = 0;
  v6 = a1[141];
  v7 = a1[142];
  if (v6 != v7)
  {
    v8 = a2[1];
    v9 = *a2;
    if (*a2 != v8)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3) <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3);
      }

      while (1)
      {
        v11 = *(v9 + 23) >= 0 ? *(v9 + 23) : v9[1];
        v12 = 0;
        v13 = v6;
        if ((*(v9 + 23) & 0x80) != 0)
        {
          break;
        }

        do
        {
          v14 = *(v13 + 23);
          v15 = v14;
          if ((v14 & 0x80u) != 0)
          {
            v14 = *(v13 + 8);
          }

          if (v14 == v11)
          {
            v16 = v15 >= 0 ? v13 : *v13;
            if (!memcmp(v16, v9, v11))
            {
              goto LABEL_38;
            }
          }

          ++v12;
          v13 += 24;
        }

        while (v10 != v12);
LABEL_9:
        v9 += 3;
        if (v9 == v8)
        {
          goto LABEL_33;
        }
      }

      while (1)
      {
        v17 = *(v13 + 23);
        v18 = v17;
        if ((v17 & 0x80u) != 0)
        {
          v17 = *(v13 + 8);
        }

        if (v17 == v11)
        {
          v19 = v18 >= 0 ? v13 : *v13;
          if (!memcmp(v19, *v9, v11))
          {
            break;
          }
        }

        ++v12;
        v13 += 24;
        if (v10 == v12)
        {
          goto LABEL_9;
        }
      }

LABEL_38:
      __break(1u);
LABEL_39:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

LABEL_33:
  v20 = a1[192];
  if (v20)
  {
    (*(*v20 + 56))(v20, &v21);
    v5 = v21;
  }

  if (v5)
  {
    v22 = v5;
    operator delete(v5);
  }
}

uint64_t webrtc::internal::VideoSendStreamImpl::Start(webrtc::internal::VideoSendStreamImpl *this)
{
  result = (*(**(this + 213) + 32))(*(this + 213), 1);
  if (!*(this + 234) && *(this + 1896) == 1)
  {

    webrtc::internal::VideoSendStreamImpl::StartupVideoSendStream(this);
  }

  return result;
}

uint64_t webrtc::internal::VideoSendStreamImpl::Stop(webrtc::internal::VideoSendStreamImpl *this)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_send_stream_impl.cc");
  }

  result = (*(**(this + 213) + 40))(*(this + 213));
  if (result)
  {
    result = (*(**(this + 213) + 32))(*(this + 213), 0);
    if (*(this + 234))
    {
      (*(**(this + 236) + 8))(*(this + 236), this + 8);
      v10 = *(this + 234);
      if (v10)
      {
        *(v10 + 4) = 0;
        if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
        {
          MEMORY[0x2743DA540]();
        }

        *(this + 234) = 0;
      }

      (*(**(this + 192) + 72))(*(this + 192), 0, 0, 0, 0, 0, 0.0);

      return webrtc::SendStatisticsProxy::OnSetEncoderTargetRate((this + 72), 0);
    }
  }

  return result;
}

double webrtc::internal::VideoSendStreamImpl::OnBitrateAllocationUpdated(webrtc::internal::VideoSendStreamImpl *this, const webrtc::VideoBitrateAllocation *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 7);
  *&v26[104] = *(a2 + 6);
  *&v26[120] = v8;
  v9 = *(a2 + 9);
  *&v26[136] = *(a2 + 8);
  *&v26[152] = v9;
  v10 = *(a2 + 2);
  v11 = *(a2 + 4);
  v12 = *(a2 + 5);
  *&v26[56] = *(a2 + 3);
  *&v26[72] = v11;
  *&v26[88] = v12;
  v13 = *(a2 + 1);
  *&v26[8] = *a2;
  *&v26[24] = v13;
  *v26 = this;
  *&v26[165] = *(a2 + 157);
  *&v26[40] = v10;
  v14 = *(this + 233);
  {
    v17 = *(v15 + 1936);
    if (v17)
    {
      atomic_fetch_add_explicit(v17, 1u, memory_order_relaxed);
    }

    v18 = operator new(0xB0uLL);
    v19 = *&v26[144];
    v18[8] = *&v26[128];
    v18[9] = v19;
    v18[10] = *&v26[160];
    v20 = *&v26[80];
    v18[4] = *&v26[64];
    v18[5] = v20;
    v21 = *&v26[112];
    v18[6] = *&v26[96];
    v18[7] = v21;
    v22 = *&v26[16];
    *v18 = *v26;
    v18[1] = v22;
    v23 = *&v26[48];
    v18[2] = *&v26[32];
    v18[3] = v23;
    operator new();
  }

  *&result = webrtc::internal::VideoSendStreamImpl::OnBitrateAllocationUpdated(webrtc::VideoBitrateAllocation const&)::$_0::operator()(v26, v16).n128_u64[0];
  return result;
}

__n128 webrtc::internal::VideoSendStreamImpl::OnBitrateAllocationUpdated(webrtc::VideoBitrateAllocation const&)::$_0::operator()(uint64_t *a1, __n128 result)
{
  v2 = *a1;
  if (*(*a1 + 1912))
  {
    v4 = (*(**(v2 + 40) + 16))(*(v2 + 40));
    v5 = v4 / 0x3E8uLL;
    if (v4 % 0x3E8uLL > 0x1F3)
    {
      ++v5;
    }

    if (-v4 % 0x3E8uLL <= 0x1F4)
    {
      v6 = 0;
    }

    else
    {
      v6 = -1;
    }

    if (v4 < 0)
    {
      v5 = v6 - -v4 / 0x3E8uLL;
    }

    v7 = (v2 + 1944);
    if (*(v2 + 2296) == 1)
    {
      v8 = *(a1 + 2);
      v9 = v8 < *v7 || v8 >= 110 * *v7 / 0x64;
      if (!v9 && *(a1 + 16) == *(v2 + 1952) && *(a1 + 24) == *(v2 + 1960) && *(a1 + 32) == *(v2 + 1968) && *(a1 + 40) == *(v2 + 1976) && *(a1 + 48) == *(v2 + 1984) && *(a1 + 56) == *(v2 + 1992) && *(a1 + 64) == *(v2 + 2000) && *(a1 + 72) == *(v2 + 2008) && *(a1 + 80) == *(v2 + 2016) && *(a1 + 88) == *(v2 + 2024) && *(a1 + 96) == *(v2 + 2032) && *(a1 + 104) == *(v2 + 2040) && *(a1 + 112) == *(v2 + 2048) && *(a1 + 120) == *(v2 + 2056) && *(a1 + 128) == *(v2 + 2064) && *(a1 + 136) == *(v2 + 2072) && *(a1 + 144) == *(v2 + 2080) && *(a1 + 152) == *(v2 + 2088) && *(a1 + 160) == *(v2 + 2096) && *(a1 + 168) == *(v2 + 2104) && (v5 - *(v2 + 2288)) <= 499)
      {
        v10 = (v2 + 2112);
        v11 = *(a1 + 1);
        v12 = *(a1 + 5);
        if (*(v2 + 2280) == 1)
        {
          *(v2 + 2128) = *(a1 + 3);
          *(v2 + 2144) = v12;
          *v10 = v11;
          v13 = *(a1 + 7);
          v14 = *(a1 + 9);
          v15 = *(a1 + 13);
          *(v2 + 2192) = *(a1 + 11);
          *(v2 + 2208) = v15;
          *(v2 + 2160) = v13;
          *(v2 + 2176) = v14;
          result = *(a1 + 15);
          v16 = *(a1 + 17);
          v17 = *(a1 + 19);
          *(v2 + 2269) = *(a1 + 165);
          *(v2 + 2240) = v16;
          *(v2 + 2256) = v17;
          *(v2 + 2224) = result;
        }

        else
        {
          *(v2 + 2128) = *(a1 + 3);
          *(v2 + 2144) = v12;
          *v10 = v11;
          v27 = *(a1 + 7);
          v28 = *(a1 + 9);
          v29 = *(a1 + 13);
          *(v2 + 2192) = *(a1 + 11);
          *(v2 + 2208) = v29;
          *(v2 + 2160) = v27;
          *(v2 + 2176) = v28;
          result = *(a1 + 15);
          v30 = *(a1 + 17);
          v31 = *(a1 + 19);
          *(v2 + 2272) = a1[21];
          *(v2 + 2240) = v30;
          *(v2 + 2256) = v31;
          *(v2 + 2224) = result;
          *(v2 + 2280) = 1;
        }

        return result;
      }
    }

    else
    {
      *(v2 + 2264) = 0u;
      *(v2 + 2280) = 0u;
      *(v2 + 2232) = 0u;
      *(v2 + 2248) = 0u;
      *(v2 + 2200) = 0u;
      *(v2 + 2216) = 0u;
      *(v2 + 2168) = 0u;
      *(v2 + 2184) = 0u;
      *(v2 + 2136) = 0u;
      *(v2 + 2152) = 0u;
      *(v2 + 2104) = 0u;
      *(v2 + 2120) = 0u;
      *(v2 + 2072) = 0u;
      *(v2 + 2088) = 0u;
      *(v2 + 2040) = 0u;
      *(v2 + 2056) = 0u;
      *(v2 + 2008) = 0u;
      *(v2 + 2024) = 0u;
      *(v2 + 1976) = 0u;
      *(v2 + 1992) = 0u;
      *v7 = 0u;
      *(v2 + 1960) = 0u;
      *(v2 + 2296) = 1;
    }

    v18 = *(a1 + 1);
    v19 = *(a1 + 5);
    *(v2 + 1960) = *(a1 + 3);
    *(v2 + 1976) = v19;
    *v7 = v18;
    v20 = *(a1 + 7);
    v21 = *(a1 + 9);
    v22 = *(a1 + 13);
    *(v2 + 2024) = *(a1 + 11);
    *(v2 + 2040) = v22;
    *(v2 + 1992) = v20;
    *(v2 + 2008) = v21;
    v23 = *(a1 + 15);
    v24 = *(a1 + 17);
    v25 = *(a1 + 19);
    *(v2 + 2101) = *(a1 + 165);
    *(v2 + 2072) = v24;
    *(v2 + 2088) = v25;
    *(v2 + 2056) = v23;
    if (*(v2 + 2280) == 1)
    {
      *(v2 + 2280) = 0;
    }

    *(v2 + 2288) = v5;
    v26 = *(**(v2 + 1704) + 80);

    v26();
  }

  return result;
}

void webrtc::internal::VideoSendStreamImpl::OnEncoderConfigurationChanged(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v2 = *(a1 + 1936);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  }

  operator new();
}

void non-virtual thunk towebrtc::internal::VideoSendStreamImpl::OnEncoderConfigurationChanged(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v2 = *(a1 + 1920);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  }

  operator new();
}

void webrtc::internal::VideoSendStreamImpl::OnEncodedImage(webrtc::internal::VideoSendStreamImpl *this, const webrtc::EncodedImage *a2, const webrtc::CodecSpecificInfo *a3)
{
  atomic_store(1u, this + 1880);
  v3 = *(this + 242);
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 1u, memory_order_relaxed);
  }

  operator new();
}

void non-virtual thunk towebrtc::internal::VideoSendStreamImpl::OnEncodedImage(webrtc::internal::VideoSendStreamImpl *this, const webrtc::EncodedImage *a2, const webrtc::CodecSpecificInfo *a3)
{
  atomic_store(1u, this + 1864);
  v3 = *(this + 240);
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 1u, memory_order_relaxed);
  }

  operator new();
}

uint64_t webrtc::internal::VideoSendStreamImpl::OnBitrateUpdated(uint64_t a1, uint64_t *a2)
{
  if (!a2[1])
  {
    a2[1] = *a2;
  }

  v5 = *(a1 + 1704);
  v6 = *(a2 + 1);
  v30[0] = *a2;
  v30[1] = v6;
  v30[2] = *(a2 + 2);
  pthread_mutex_lock((a1 + 464));
  LODWORD(v2) = llround(webrtc::RateTracker::ComputeRateForInterval((a1 + 872), *(a1 + 888) * *(a1 + 880)));
  pthread_mutex_unlock((a1 + 464));
  (*(*v5 + 96))(v5, v30, v2);
  *(a1 + 1912) = (*(**(a1 + 1704) + 112))(*(a1 + 1704));
  v7 = (*(**(a1 + 1704) + 120))(*(a1 + 1704));
  v9 = *(a1 + 1912);
  v10 = *a2;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  v12 = v9;
  if (*a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = v10 - v9;
    if (v10 == 0x8000000000000000)
    {
      v13 = 0x8000000000000000;
    }

    v14 = a2[1];
    if (v14 != 0x7FFFFFFFFFFFFFFFLL && v13 != 0x8000000000000000)
    {
      v11 = v14 - v13;
    }

    if (v14 > v13)
    {
      v12 = v11;
    }

    else
    {
      v12 = *(a1 + 1912);
    }
  }

  v16 = *(a1 + 1908);
  v17 = 1908;
  if (v9 < v16)
  {
    v17 = 1912;
  }

  v18 = *(a1 + v17);
  *(a1 + 1912) = v18;
  v19 = a2[3];
  v20 = v19 / 0x3E8uLL;
  if (v19 % 0x3E8uLL > 0x1F3)
  {
    ++v20;
  }

  if (-v19 % 0x3E8uLL <= 0x1F4)
  {
    v21 = 0;
  }

  else
  {
    v21 = -1;
  }

  LODWORD(v8) = vcvtd_n_s64_f64(*(a2 + 2), 8uLL);
  if (v19 < 0)
  {
    v22 = v21 - -v19 / 0x3E8uLL;
  }

  else
  {
    v22 = v20;
  }

  v23 = v9 >= v7;
  v24 = v9 - v7;
  if (!v23)
  {
    v24 = 0;
  }

  if (v18 <= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v18;
  }

  if (v12 >= v16)
  {
    v26 = v16;
  }

  else
  {
    v26 = v12;
  }

  v27 = *(a2 + 5);
  v28 = v7;
  (*(**(a1 + 1536) + 72))(*(a1 + 1536), v18, v26, v25, v8, v22, v27);
  webrtc::SendStatisticsProxy::OnSetEncoderTargetRate((a1 + 72), *(a1 + 1912));
  return v28;
}

uint64_t webrtc::internal::VideoSendStreamImpl::OnSendPacketObserver::OnSendPacket(uint64_t a1, int a2, Timestamp a3, unsigned int a4)
{
  result = webrtc::SendStatisticsProxy::OnSendPacket(*(a1 + 8), a4, a3);
  if ((a2 & 0x10000) != 0)
  {
    v9 = *(a1 + 16);
    v10.var0 = a3.var0;

    return webrtc::SendDelayStats::OnSendPacket(v9, a2, v10, a4);
  }

  return result;
}

uint64_t std::__function::__func<webrtc::internal::VideoSendStreamImpl::VideoSendStreamImpl(webrtc::Environment const&,int,webrtc::RtcpRttStats *,webrtc::RtpTransportControllerSendInterface *,webrtc::Metronome *,webrtc::BitrateAllocatorInterface *,webrtc::SendDelayStats *,webrtc::VideoSendStream::Config,webrtc::VideoEncoderConfig,std::map<unsigned int,webrtc::RtpState> const&,std::map<unsigned int,webrtc::RtpPayloadState> const&,std::unique_ptr<webrtc::FecController>,std::unique_ptr<webrtc::VideoStreamEncoderInterface>)::$_0,std::allocator<webrtc::internal::VideoSendStreamImpl::VideoSendStreamImpl(webrtc::Environment const&,int,webrtc::RtcpRttStats *,webrtc::RtpTransportControllerSendInterface *,webrtc::Metronome *,webrtc::BitrateAllocatorInterface *,webrtc::SendDelayStats *,webrtc::VideoSendStream::Config,webrtc::VideoEncoderConfig,std::map<unsigned int,webrtc::RtpState> const&,std::map<unsigned int,webrtc::RtpPayloadState> const&,std::unique_ptr<webrtc::FecController>,std::unique_ptr<webrtc::VideoStreamEncoderInterface>)::$_0>,std::vector<webrtc::RtpSequenceNumberMap::Info> ()(unsigned int,std::vector<unsigned short> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882A3020;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<webrtc::internal::VideoSendStreamImpl::VideoSendStreamImpl(webrtc::Environment const&,int,webrtc::RtcpRttStats *,webrtc::RtpTransportControllerSendInterface *,webrtc::Metronome *,webrtc::BitrateAllocatorInterface *,webrtc::SendDelayStats *,webrtc::VideoSendStream::Config,webrtc::VideoEncoderConfig,std::map<unsigned int,webrtc::RtpState> const&,std::map<unsigned int,webrtc::RtpPayloadState> const&,std::unique_ptr<webrtc::FecController>,std::unique_ptr<webrtc::VideoStreamEncoderInterface>)::$_0,std::allocator<webrtc::internal::VideoSendStreamImpl::VideoSendStreamImpl(webrtc::Environment const&,int,webrtc::RtcpRttStats *,webrtc::RtpTransportControllerSendInterface *,webrtc::Metronome *,webrtc::BitrateAllocatorInterface *,webrtc::SendDelayStats *,webrtc::VideoSendStream::Config,webrtc::VideoEncoderConfig,std::map<unsigned int,webrtc::RtpState> const&,std::map<unsigned int,webrtc::RtpPayloadState> const&,std::unique_ptr<webrtc::FecController>,std::unique_ptr<webrtc::VideoStreamEncoderInterface>)::$_0>,std::vector<webrtc::RtpSequenceNumberMap::Info> ()(unsigned int,std::vector<unsigned short> const&)>::operator()(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a3[1];
  v5 = *(*(a1 + 8) + 1704);
  v6 = (v4 - *a3) >> 1;
  if (v4 == *a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = *a3;
  }

  return (*(*v5 + 136))(v5, v3, v7, v6);
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,webrtc::TimeDelta,webrtc::internal::VideoSendStreamImpl::StartupVideoSendStream(void)::$_0 &>(uint64_t *a1)
{
  v1 = *a1;
  v2 = atomic_load((*a1 + 1880));
  if (v2)
  {
    if (*(v1 + 1881))
    {
      if (*(v1 + 1872))
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_send_stream_impl.cc");
        }

        v10 = *(v1 + 1888);
        v21 = *(v1 + 1904);
        if (*(v1 + 1897))
        {
          v11 = 0;
        }

        else
        {
          v11 = *(v1 + 1900);
        }

        v22 = v11;
        v23 = *(v1 + 1928);
        v24 = *(v1 + 1464) ^ 1;
        v25 = *(v1 + 1920);
        if (*(v1 + 1528))
        {
          v19 = 0;
          LOBYTE(v26) = 0;
        }

        else
        {
          v19 = 1;
          v26 = 1;
        }

        v27 = v19;
        (**v10)(v10, v1 + 8, &v21);
      }

      *(v1 + 1881) = 0;
    }
  }

  else
  {
    if ((*(v1 + 1881) & 1) == 0 && *(v1 + 1912))
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_send_stream_impl.cc");
      }

      (*(**(v1 + 1888) + 8))(*(v1 + 1888), v1 + 8);
    }

    *(v1 + 1881) = 1;
    *(v1 + 1897) = 1;
  }

  atomic_store(0, (v1 + 1880));
  return 2000000;
}

uint64_t absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::internal::VideoSendStreamImpl::OnEncoderConfigurationChanged(std::vector<webrtc::VideoStream>,BOOL,webrtc::VideoEncoderConfig::ContentType,int)::$_0 &&>(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = webrtc::PayloadStringToCodecType((v2 + 1224));
  webrtc::GetExperimentalMinVideoBitrate(*(v2 + 32), v3);
  if ((v5 & 1) == 0)
  {
    v6 = v1[1];
    v7 = v1[2];
    if (v7 == v6)
    {
      goto LABEL_47;
    }

    if (v3 == 3)
    {
      v12 = 15000;
    }

    else
    {
      v12 = 30000;
    }

    if (*(v6 + 20) <= v12)
    {
      v4 = v12;
    }

    else
    {
      v4 = *(v6 + 20);
    }

    *(v2 + 1904) = v4;
    if (v6 != v7)
    {
      goto LABEL_3;
    }

LABEL_27:
    *(v2 + 1920) = 0;
    v11 = *(v1 + 10);
    goto LABEL_28;
  }

  v6 = v1[1];
  v7 = v1[2];
  *(v2 + 1904) = v4;
  if (v6 == v7)
  {
    goto LABEL_27;
  }

LABEL_3:
  v8 = 0;
  v9 = 0.0;
  v10 = v6;
  do
  {
    if (*(v10 + 82) == 1)
    {
      v8 += *(v10 + 28);
      if (*(v10 + 72) != 1)
      {
        goto LABEL_4;
      }
    }

    else if (*(v10 + 72) != 1)
    {
      goto LABEL_4;
    }

    v9 = v9 + *(v10 + 64);
LABEL_4:
    v10 += 96;
  }

  while (v10 != v7);
  *(v2 + 1920) = v9;
  if (v8)
  {
    if (v4 > v8)
    {
      v8 = v4;
    }

    *(v2 + 1908) = v8;
  }

  do
  {
    if (*(v6 + 82) == 1)
    {
      operator new();
    }

    v6 += 96;
  }

  while (v6 != v7);
  v11 = *(v1 + 10);
LABEL_28:
  *(v2 + 1900) = v11 & ~(v11 >> 31);
  v13 = v1[1];
  v14 = v1[2];
  v15 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 5);
  v16 = *(v2 + 1104);
  if (v15 < (*(v2 + 1112) - v16) >> 2)
  {
    do
    {
      v17 = *(v16 + 4 * v15);
      pthread_mutex_lock((v2 + 464));
      StatsEntry = webrtc::SendStatisticsProxy::GetStatsEntry((v2 + 72), v17);
      if (StatsEntry)
      {
        *(StatsEntry + 7) = 0;
        *(StatsEntry + 5) = 0;
      }

      pthread_mutex_unlock((v2 + 464));
      ++v15;
      v16 = *(v2 + 1104);
    }

    while (v15 < (*(v2 + 1112) - v16) >> 2);
    v13 = v1[1];
    v14 = v1[2];
  }

  if (v13 == v14)
  {
LABEL_47:
    __break(1u);
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (*(v14 - 40) == 1)
  {
    v19 = *(v14 - 6);
  }

  else
  {
    v19 = 1;
  }

  result = (*(**(v2 + 1704) + 128))(*(v2 + 1704), *v13, *(v13 + 1), v19);
  if (*(v2 + 1872))
  {
    v21 = *(v2 + 1888);
    v24 = *(v2 + 1904);
    if (*(v2 + 1897))
    {
      v22 = 0;
    }

    else
    {
      v22 = *(v2 + 1900);
    }

    v25 = v22;
    v26 = *(v2 + 1928);
    v27 = *(v2 + 1464) ^ 1;
    v28 = *(v2 + 1920);
    if (*(v2 + 1528))
    {
      v23 = 0;
      LOBYTE(v29) = 0;
    }

    else
    {
      v23 = 1;
      v29 = 1;
    }

    v30 = v23;
    return (**v21)(v21, v2 + 8, &v24);
  }

  return result;
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::internal::VideoSendStreamImpl::OnEncoderConfigurationChanged(std::vector<webrtc::VideoStream>,BOOL,webrtc::VideoEncoderConfig::ContentType,int)::$_0>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        *(v3 + 16) = v4;
        operator delete(v4);
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::internal::VideoSendStreamImpl::OnEncodedImage(webrtc::EncodedImage const&,webrtc::CodecSpecificInfo const*)::$_0 &&>(uint64_t result)
{
  v1 = *result;
  if (*(*result + 1897) == 1)
  {
    *(v1 + 1897) = 0;
    if (*(v1 + 1872))
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_send_stream_impl.cc");
      }

      v9 = *(v1 + 1888);
      v13 = *(v1 + 1904);
      if (*(v1 + 1897))
      {
        v10 = 0;
      }

      else
      {
        v10 = *(v1 + 1900);
      }

      v14 = v10;
      v15 = *(v1 + 1928);
      v16 = *(v1 + 1464) ^ 1;
      v17 = *(v1 + 1920);
      if (*(v1 + 1528))
      {
        v11 = 0;
        LOBYTE(v18) = 0;
      }

      else
      {
        v11 = 1;
        v18 = 1;
      }

      v19 = v11;
      result = (**v9)(v9, v1 + 8, &v13);
    }
  }

  if (*(v1 + 2296) == 1 && *(v1 + 2280) == 1)
  {
    v12 = *(*v1 + 128);

    return v12(v1, v1 + 2112);
  }

  return result;
}

void webrtc::VideoSourceBase::~VideoSourceBase(webrtc::VideoSourceBase *this)
{
  *this = &unk_2882A3068;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 40);
        if (v5)
        {
          *(v3 - 32) = v5;
          operator delete(v5);
        }

        v3 -= 72;
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }
}

{
  *this = &unk_2882A3068;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 40);
        if (v5)
        {
          *(v3 - 32) = v5;
          operator delete(v5);
        }

        v3 -= 72;
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::VideoSourceBase::AddOrUpdateSink(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 72;
      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 == v4 || v5 == 0)
  {
LABEL_10:
    v13 = *a3;
    v7 = *(a3 + 3);
    v14 = *(a3 + 2);
    v8 = *(a3 + 4);
    if (v8 == v7)
    {
      *v12 = *(a3 + 6);
      *&v12[7] = *(a3 + 55);
      v15 = *v12;
      HIBYTE(v15) = v12[7];
      v11 = a1[2];
      if (v11 >= a1[3])
      {
        std::vector<webrtc::VideoSourceBase::SinkPair>::__emplace_back_slow_path<webrtc::VideoSourceBase::SinkPair>(a1 + 1);
      }

      if (v11)
      {
        *v11 = a2;
        *(v11 + 8) = v13;
        *(v11 + 24) = v14;
        *(v11 + 32) = 0;
        *(v11 + 40) = 0;
        *(v11 + 48) = 0;
        *(v11 + 63) = *&v12[7];
        *(v11 + 56) = v15;
        a1[2] = v11 + 72;
        return;
      }

      __break(1u);
    }

    else if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v9 = *a3;
  *(v5 + 24) = *(a3 + 2);
  *(v5 + 8) = v9;
  if ((v5 + 8) != a3)
  {
    std::vector<double>::__assign_with_size[abi:sn200100]<double *,double *>((v5 + 32), *(a3 + 3), *(a3 + 4), (*(a3 + 4) - *(a3 + 3)) >> 3);
  }

  v10 = *(a3 + 6);
  *(v5 + 63) = *(a3 + 55);
  *(v5 + 56) = v10;
}

void webrtc::VideoSourceBase::RemoveSink(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 != v4)
  {
    while (*v3 != a2)
    {
      v3 += 72;
      if (v3 == v4)
      {
        return;
      }
    }

    if (v3 != v4)
    {
      v6 = v3 + 72;
      if (v3 + 72 != v4)
      {
        do
        {
          if (*v6 != a2)
          {
            *v3 = *v6;
            v8 = *(v6 + 8);
            *(v3 + 24) = *(v6 + 24);
            *(v3 + 8) = v8;
            if (v6 != v3)
            {
              std::vector<double>::__assign_with_size[abi:sn200100]<double *,double *>((v3 + 32), *(v6 + 32), *(v6 + 40), (*(v6 + 40) - *(v6 + 32)) >> 3);
            }

            v7 = *(v6 + 56);
            *(v3 + 63) = *(v6 + 63);
            *(v3 + 56) = v7;
            v3 += 72;
          }

          v6 += 72;
        }

        while (v6 != v4);
        v4 = *(a1 + 16);
      }
    }
  }

  if (v3 > v4)
  {
    __break(1u);
  }

  else if (v3 != v4)
  {
    while (v4 != v3)
    {
      v9 = *(v4 - 40);
      if (v9)
      {
        *(v4 - 32) = v9;
        operator delete(v9);
      }

      v4 -= 72;
    }

    *(a1 + 16) = v3;
  }
}

void webrtc::VideoSourceBaseGuarded::~VideoSourceBaseGuarded(webrtc::VideoSourceBaseGuarded *this)
{
  *this = &unk_2882A30A0;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 40);
        if (v5)
        {
          *(v3 - 32) = v5;
          operator delete(v5);
        }

        v3 -= 72;
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }
}

{
  *this = &unk_2882A30A0;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 40);
        if (v5)
        {
          *(v3 - 32) = v5;
          operator delete(v5);
        }

        v3 -= 72;
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::VideoSourceBaseGuarded::AddOrUpdateSink(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 72;
      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 == v4 || v5 == 0)
  {
LABEL_10:
    v13 = *a3;
    v7 = *(a3 + 3);
    v14 = *(a3 + 2);
    v8 = *(a3 + 4);
    if (v8 == v7)
    {
      *v12 = *(a3 + 6);
      *&v12[7] = *(a3 + 55);
      v15 = *v12;
      HIBYTE(v15) = v12[7];
      v11 = a1[2];
      if (v11 >= a1[3])
      {
        std::vector<webrtc::VideoSourceBase::SinkPair>::__emplace_back_slow_path<webrtc::VideoSourceBase::SinkPair>(a1 + 1);
      }

      if (v11)
      {
        *v11 = a2;
        *(v11 + 8) = v13;
        *(v11 + 24) = v14;
        *(v11 + 32) = 0;
        *(v11 + 40) = 0;
        *(v11 + 48) = 0;
        *(v11 + 63) = *&v12[7];
        *(v11 + 56) = v15;
        a1[2] = v11 + 72;
        return;
      }

      __break(1u);
    }

    else if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v9 = *a3;
  *(v5 + 24) = *(a3 + 2);
  *(v5 + 8) = v9;
  if ((v5 + 8) != a3)
  {
    std::vector<double>::__assign_with_size[abi:sn200100]<double *,double *>((v5 + 32), *(a3 + 3), *(a3 + 4), (*(a3 + 4) - *(a3 + 3)) >> 3);
  }

  v10 = *(a3 + 6);
  *(v5 + 63) = *(a3 + 55);
  *(v5 + 56) = v10;
}

void webrtc::VideoSourceBaseGuarded::RemoveSink(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 != v4)
  {
    while (*v3 != a2)
    {
      v3 += 72;
      if (v3 == v4)
      {
        return;
      }
    }

    if (v3 != v4)
    {
      v6 = v3 + 72;
      if (v3 + 72 != v4)
      {
        do
        {
          if (*v6 != a2)
          {
            *v3 = *v6;
            v8 = *(v6 + 8);
            *(v3 + 24) = *(v6 + 24);
            *(v3 + 8) = v8;
            if (v6 != v3)
            {
              std::vector<double>::__assign_with_size[abi:sn200100]<double *,double *>((v3 + 32), *(v6 + 32), *(v6 + 40), (*(v6 + 40) - *(v6 + 32)) >> 3);
            }

            v7 = *(v6 + 56);
            *(v3 + 63) = *(v6 + 63);
            *(v3 + 56) = v7;
            v3 += 72;
          }

          v6 += 72;
        }

        while (v6 != v4);
        v4 = *(a1 + 16);
      }
    }
  }

  if (v3 > v4)
  {
    __break(1u);
  }

  else if (v3 != v4)
  {
    while (v4 != v3)
    {
      v9 = *(v4 - 40);
      if (v9)
      {
        *(v4 - 32) = v9;
        operator delete(v9);
      }

      v4 -= 72;
    }

    *(a1 + 16) = v3;
  }
}

void std::vector<webrtc::VideoSourceBase::SinkPair>::__emplace_back_slow_path<webrtc::VideoSourceBase::SinkPair>(uint64_t *a1)
{
  v1 = *a1;
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3) + 1;
  if (v2 <= 0x38E38E38E38E38ELL)
  {
    if (0x1C71C71C71C71C72 * ((a1[2] - v1) >> 3) > v2)
    {
      v2 = 0x1C71C71C71C71C72 * ((a1[2] - v1) >> 3);
    }

    if (0x8E38E38E38E38E39 * ((a1[2] - v1) >> 3) >= 0x1C71C71C71C71C7)
    {
      v2 = 0x38E38E38E38E38ELL;
    }

    if (v2)
    {
      if (v2 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

double webrtc::VideoSinkWants::VideoSinkWants(webrtc::VideoSinkWants *this)
{
  *this = 0;
  *(this + 1) = 0x7FFFFFFF;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *&result = 0x17FFFFFFFLL;
  *(this + 2) = 0x17FFFFFFFLL;
  *(this + 56) = 0;
  *(this + 30) = 0;
  *(this + 62) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 48) = 0;
  return result;
}

void webrtc::VideoSinkWants::~VideoSinkWants(webrtc::VideoSinkWants *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    *(this + 4) = v1;
    operator delete(v1);
  }
}

double webrtc::VideoSourceRestrictions::ToString@<D0>(webrtc::VideoSourceRestrictions *this@<X0>, char *a2@<X1>, char *a3@<X2>, std::string *a4@<X8>)
{
  memset(&v39, 0, sizeof(v39));
  if (&v39 <= "{" && &v39.__r_.__value_.__l.__data_ + 1 > "{")
  {
    goto LABEL_99;
  }

  v39.__r_.__value_.__s.__data_[0] = 123;
  v7 = 1;
  *(&v39.__r_.__value_.__s + 23) = 1;
  if ((*(this + 40) & 1) == 0)
  {
    size = 0;
    v12 = v39.__r_.__value_.__r.__words[2];
    if (*(this + 8) != 1)
    {
      goto LABEL_58;
    }

LABEL_12:
    v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if ((v7 & 0x80u) == 0)
    {
      v14 = 22;
    }

    else
    {
      v14 = v13;
    }

    if ((v7 & 0x80u) == 0)
    {
      v15 = v7;
    }

    else
    {
      v15 = size;
    }

    if (v14 - v15 >= 0x16)
    {
      v16 = v39.__r_.__value_.__r.__words[0];
      if ((v7 & 0x80u) == 0)
      {
        v16 = &v39;
      }

      v17 = v16 + v15;
      if (v16 + v15 <= " max_pixels_per_frame=" && v17 + 22 > " max_pixels_per_frame=")
      {
        goto LABEL_99;
      }

      qmemcpy(v17, " max_pixels_per_frame=", 22);
      v18 = v15 + 22;
      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        v39.__r_.__value_.__l.__size_ = v15 + 22;
        v16->__r_.__value_.__s.__data_[v18] = 0;
        if ((*(this + 8) & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      else
      {
        *(&v39.__r_.__value_.__s + 23) = v18 & 0x7F;
        v16->__r_.__value_.__s.__data_[v18] = 0;
        if ((*(this + 8) & 1) == 0)
        {
          goto LABEL_91;
        }
      }
    }

    else
    {
      std::string::__grow_by_and_replace(&v39, v14, v15 - v14 + 22, v15, v15, 0, 0x16uLL, " max_pixels_per_frame=");
      if ((*(this + 8) & 1) == 0)
      {
        goto LABEL_91;
      }
    }

    webrtc::StringBuilder::operator<<(&v39, *this, a3);
    v7 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    v12 = v39.__r_.__value_.__r.__words[2];
    size = v39.__r_.__value_.__l.__size_;
    if (*(this + 24) != 1)
    {
      goto LABEL_71;
    }

    goto LABEL_62;
  }

  if (&v39.__r_.__value_.__l.__data_ + 1 <= " max_fps=" && &v39.__r_.__value_.__r.__words[1] + 2 > " max_fps=")
  {
    goto LABEL_99;
  }

  v39.__r_.__value_.__s.__data_[9] = 61;
  *(v39.__r_.__value_.__r.__words + 1) = *" max_fps=";
  *(&v39.__r_.__value_.__s + 23) = 10;
  v8 = *(this + 4);
  v41 = 0;
  v42 = 0x1000000000000000;
  __p = 0;
  v9 = absl::numbers_internal::SixDigitsToBuffer(&__p, v8, a2);
  if ((SHIBYTE(v42) & 0x8000000000000000) != 0)
  {
    if (v41 < v9)
    {
      goto LABEL_100;
    }

    p_p = __p;
    v41 = v9;
  }

  else
  {
    if (v9 > SHIBYTE(v42))
    {
      goto LABEL_100;
    }

    HIBYTE(v42) = v9;
    p_p = &__p;
  }

  p_p[v9] = 0;
  v19 = v42 >= 0 ? &__p : __p;
  v20 = v42 >= 0 ? HIBYTE(v42) : v41;
  if (!v19 && v20)
  {
    goto LABEL_99;
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = 22;
  }

  else
  {
    v21 = (v39.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = v39.__r_.__value_.__l.__size_;
  }

  if (v21 - v22 < v20)
  {
    std::string::__grow_by_and_replace(&v39, v21, v22 + v20 - v21, v22, v22, 0, v20, v19);
    if ((SHIBYTE(v42) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_46;
  }

  if (!v20)
  {
LABEL_56:
    if ((SHIBYTE(v42) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

LABEL_46:
    operator delete(__p);
    goto LABEL_57;
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v39;
  }

  else
  {
    v23 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_99;
  }

  v24 = v23 + v22;
  if (v23 + v22 <= v19 && &v24[v20] > v19)
  {
    goto LABEL_99;
  }

  v25 = v20;
  memmove(v24, v19, v20);
  v26 = v22 + v25;
  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v39.__r_.__value_.__s + 23) = v26 & 0x7F;
    v23->__r_.__value_.__s.__data_[v26] = 0;
    goto LABEL_56;
  }

  v39.__r_.__value_.__l.__size_ = v22 + v25;
  v23->__r_.__value_.__s.__data_[v26] = 0;
  if (SHIBYTE(v42) < 0)
  {
    goto LABEL_46;
  }

LABEL_57:
  v7 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  v12 = v39.__r_.__value_.__r.__words[2];
  size = v39.__r_.__value_.__l.__size_;
  if (*(this + 8) == 1)
  {
    goto LABEL_12;
  }

LABEL_58:
  if (*(this + 24) == 1)
  {
LABEL_62:
    if ((v7 & 0x80u) == 0)
    {
      v27 = 22;
    }

    else
    {
      v27 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v7 & 0x80u) == 0)
    {
      v28 = v7;
    }

    else
    {
      v28 = size;
    }

    if (v27 - v28 < 0x19)
    {
      std::string::__grow_by_and_replace(&v39, v27, v28 - v27 + 25, v28, v28, 0, 0x19uLL, " target_pixels_per_frame=");
      if (*(this + 24))
      {
LABEL_70:
        webrtc::StringBuilder::operator<<(&v39, *(this + 2), a3);
        v7 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
        v12 = v39.__r_.__value_.__r.__words[2];
        size = v39.__r_.__value_.__l.__size_;
        goto LABEL_71;
      }

LABEL_91:
      std::__throw_bad_optional_access[abi:sn200100]();
      goto LABEL_92;
    }

    v35 = v39.__r_.__value_.__r.__words[0];
    if ((v7 & 0x80u) == 0)
    {
      v35 = &v39;
    }

    v36 = v35 + v28;
    if (v35 + v28 > " target_pixels_per_frame=" || v36 + 25 <= " target_pixels_per_frame=")
    {
      qmemcpy(v36, " target_pixels_per_frame=", 25);
      v37 = v28 + 25;
      if ((v12 & 0x8000000000000000) != 0)
      {
        v39.__r_.__value_.__l.__size_ = v28 + 25;
        v35->__r_.__value_.__s.__data_[v37] = 0;
        if (*(this + 24))
        {
          goto LABEL_70;
        }
      }

      else
      {
        *(&v39.__r_.__value_.__s + 23) = v37 & 0x7F;
        v35->__r_.__value_.__s.__data_[v37] = 0;
        if (*(this + 24))
        {
          goto LABEL_70;
        }
      }

      goto LABEL_91;
    }

LABEL_99:
    __break(1u);
LABEL_100:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_71:
  v29 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if ((v7 & 0x80u) == 0)
  {
    v30 = 22;
  }

  else
  {
    v30 = v29;
  }

  if ((v7 & 0x80u) == 0)
  {
    v31 = v7;
  }

  else
  {
    v31 = size;
  }

  if (v30 - v31 >= 2)
  {
    v32 = v39.__r_.__value_.__r.__words[0];
    if ((v7 & 0x80u) == 0)
    {
      v32 = &v39;
    }

    v33 = (v32 + v31);
    if (v32 + v31 > " }" || v33 + 1 <= " }")
    {
      *v33 = 32032;
      v34 = v31 + 2;
      if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        *(&v39.__r_.__value_.__s + 23) = v34 & 0x7F;
LABEL_93:
        v32->__r_.__value_.__s.__data_[v34] = 0;
        goto LABEL_94;
      }

LABEL_92:
      v39.__r_.__value_.__l.__size_ = v34;
      goto LABEL_93;
    }

    goto LABEL_99;
  }

  std::string::__grow_by_and_replace(&v39, v30, v31 - v30 + 2, v31, v31, 0, 2uLL, " }");
LABEL_94:
  result = *&v39.__r_.__value_.__l.__data_;
  *a4 = v39;
  return result;
}

char *webrtc::VideoSourceSinkController::CurrentSettingsToSinkWants@<X0>(webrtc::VideoSourceSinkController *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 1) = 0;
  *(a2 + 24) = 0;
  result = (a2 + 24);
  *(a2 + 56) = 0;
  *(a2 + 60) = 0;
  *(a2 + 62) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *a2 = *(this + 96);
  if (*(this + 24))
  {
    v5 = *(this + 4);
  }

  else
  {
    v5 = 0x7FFFFFFF;
  }

  if (*(this + 40) == 1)
  {
    *(a2 + 8) = *(this + 8);
    *(a2 + 12) = 1;
    if (*(this + 56) != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 12) = 0;
    if (*(this + 56) != 1)
    {
LABEL_6:
      v6 = 0x7FFFFFFF;
      *(a2 + 20) = *(this + 25);
      if (*(this + 72) != 1)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  v6 = *(this + 6);
  *(a2 + 20) = *(this + 25);
  if (*(this + 72) != 1)
  {
LABEL_7:
    *(a2 + 4) = v5;
    if (*(this + 88) != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_12:
  if (*(this + 16) < v5)
  {
    v5 = *(this + 16);
  }

  *(a2 + 4) = v5;
  if (*(this + 88) != 1)
  {
LABEL_8:
    *(a2 + 16) = v6;
    if (result == this + 104)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_15:
  v7 = *(this + 10);
  if (v7 >= v6)
  {
    v7 = v6;
  }

  *(a2 + 16) = v7;
  if (result != this + 104)
  {
LABEL_18:
    result = std::vector<double>::__assign_with_size[abi:sn200100]<double *,double *>(result, *(this + 13), *(this + 14), (*(this + 14) - *(this + 13)) >> 3);
  }

LABEL_19:
  *(a2 + 60) = *(this + 128);
  *(a2 + 48) = *(this + 132);
  *(a2 + 56) = *(this + 140);
  return result;
}

uint64_t webrtc::VideoStreamAdapter::BroadcastVideoRestrictionsUpdate(uint64_t result, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, void (****a6)(void, __n128, __n128, __n128))
{
  v6 = result;
  v8 = (result + 208);
  v7 = *(result + 208);
  v9 = *(result + 216);
  v10 = *(result + 224);
  v11 = *(result + 232);
  a2.n128_u64[0] = *(result + 240);
  v12 = *(result + 248);
  v13 = *(result + 44);
  a3.n128_u64[0] = 0;
  if (v13 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(result + 248);
  }

  if (v13 == 1)
  {
    a4.n128_f64[0] = 0.0;
  }

  else
  {
    a4.n128_u64[0] = *(result + 240);
  }

  if (v13 == 2)
  {
    v11 = 0;
  }

  else
  {
    v12 = v14;
    a2.n128_f64[0] = a4.n128_f64[0];
  }

  if (v13 == 2)
  {
    v10 = 0;
    v9 = 0;
    v7 = 0;
  }

  if (!v13)
  {
    v12 = 0;
  }

  v27 = v12;
  v41[0] = *(result + 217);
  if (v13)
  {
    v15 = a2.n128_f64[0];
  }

  else
  {
    v15 = 0.0;
  }

  if (v13)
  {
    v16 = v11;
  }

  else
  {
    v16 = 0;
  }

  if (v13)
  {
    v17 = v10;
  }

  else
  {
    v17 = 0;
  }

  if (v13)
  {
    v18 = v9;
  }

  else
  {
    v18 = 0;
  }

  if (v13)
  {
    v19 = v7;
  }

  else
  {
    v19 = 0;
  }

  *(v41 + 3) = *(result + 220);
  v40[0] = *(result + 233);
  *(v40 + 3) = *(result + 236);
  v39[0] = *(result + 249);
  *(v39 + 3) = *(result + 252);
  if ((v18 & 1) != 0 && *(result + 120))
  {
    if (*(result + 112) != v19)
    {
      goto LABEL_44;
    }
  }

  else if ((v18 ^ *(result + 120)))
  {
    goto LABEL_44;
  }

  if ((v16 & 1) != 0 && *(result + 136))
  {
    if (*(result + 128) != v17)
    {
      goto LABEL_44;
    }
  }

  else if ((v16 ^ *(result + 136)))
  {
    goto LABEL_44;
  }

  if ((v12 & 1) != 0 && *(result + 152))
  {
    a2.n128_u64[0] = *(result + 144);
    if (a2.n128_f64[0] == v15)
    {
      return result;
    }
  }

  else if ((v12 & 1) == *(result + 152))
  {
    return result;
  }

LABEL_44:
  v21 = *(result + 160);
  for (i = *(result + 168); v21 != i; ++v21)
  {
    v22 = *v21;
    v30 = v19;
    v31 = v18;
    *v32 = v41[0];
    *&v32[3] = *(v41 + 3);
    v33 = v17;
    v34 = v16;
    *v35 = v40[0];
    *&v35[3] = *(v40 + 3);
    v36 = v15;
    v37 = v27;
    *v38 = v39[0];
    *&v38[3] = *(v39 + 3);
    v23 = *a6;
    v29 = v23;
    if (v23)
    {
      (**v23)(v23, a2, a3, a4);
    }

    v24 = v8[2];
    v28[1] = v8[1];
    v28[2] = v24;
    v28[0] = *v8;
    (*(*v22 + 16))(v22, &v30, v6 + 256, &v29, v28);
    result = v29;
    if (v29)
    {
      result = ((*v29)[1])(v29);
    }
  }

  v25 = v8[1];
  *(v6 + 64) = *v8;
  *(v6 + 80) = v25;
  *(v6 + 96) = v8[2];
  *(v6 + 112) = v19;
  *(v6 + 120) = v18;
  *(v6 + 121) = v41[0];
  *(v6 + 124) = *(v41 + 3);
  *(v6 + 128) = v17;
  *(v6 + 136) = v16;
  *(v6 + 140) = *(v40 + 3);
  *(v6 + 137) = v40[0];
  *(v6 + 144) = v15;
  *(v6 + 152) = v27;
  *(v6 + 156) = *(v39 + 3);
  *(v6 + 153) = v39[0];
  return result;
}

uint64_t webrtc::VideoStreamAdapter::SetDegradationPreference(uint64_t result, int a2)
{
  v4 = *(result + 44);
  if (v4 != a2)
  {
    v18[6] = v2;
    v18[7] = v3;
    v5 = result;
    ++*(result + 40);
    if (a2 == 3)
    {
      *(result + 44) = 3;
    }

    else
    {
      *(result + 44) = a2;
      if (v4 != 3)
      {
LABEL_9:
        (*(**v5 + 16))(v18);
        v17 = 0;
        return webrtc::VideoStreamAdapter::BroadcastVideoRestrictionsUpdate(v5, v14, v15, v16, v13, &v17);
      }
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/adaptation/video_stream_adapter.cc");
    }

    ++*(v5 + 40);
    *(v5 + 208) = 0;
    *(v5 + 216) = 0;
    *(v5 + 224) = 0;
    *(v5 + 232) = 0;
    *(v5 + 240) = 0;
    *(v5 + 248) = 0;
    *(v5 + 256) = 0;
    if (*(v5 + 56) == 1)
    {
      *(v5 + 56) = 0;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t webrtc::VideoStreamAdapter::GetAdaptationUp(uint64_t a1, char *a2)
{
  v4 = a1;
  v53 = *MEMORY[0x277D85DE8];
  if (*a2 != 1 || a2[8] != 1 || ((v5 = *(a1 + 44), v5 == 2) ? (v6 = *(a2 + 3) <= 1) : (v6 = 0), v6))
  {
    v8 = 3;
    goto LABEL_14;
  }

  if (*(a1 + 56) == 1 && v5 == 1 && (*(a1 + 48) & 1) != 0)
  {
    v7 = *(a2 + 4);
    if ((v7 & 0x100000000) == 0)
    {
LABEL_59:
      a1 = std::__throw_bad_optional_access[abi:sn200100]();
      goto LABEL_60;
    }

    if (*(a1 + 52) >= v7)
    {
      v8 = 2;
LABEL_14:
      *&v51[8] = v8;
      LODWORD(v52) = 1;
      goto LABEL_15;
    }

LABEL_24:
    v10 = *(a2 + 4);
    if ((v10 & 0x100000000) != 0)
    {
      v11 = *(v4 + 256);
      if (v11 == 1)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/adaptation/video_stream_adapter.cc");
        }
      }

      else if (v10 != 0x7FFFFFFF)
      {
        if (*(v4 + 216) == 1)
        {
          v21 = 5 * v10 / 3;
          v20 = 12 * v21 / 5;
          if (v20 > *(v4 + 208))
          {
            v19 = v21;
            goto LABEL_38;
          }
        }

LABEL_55:
        *&v51[8] = 1;
        LODWORD(v52) = 1;
        goto LABEL_15;
      }

      if (*(v4 + 216) == 1 && *(v4 + 208) != 0x7FFFFFFFLL)
      {
        v11 = *(v4 + 256);
        v19 = 0x7FFFFFFFLL;
        v20 = 0x7FFFFFFF;
LABEL_38:
        LODWORD(__p[0]) = *(v4 + 217);
        *(__p + 3) = *(v4 + 220);
        *v47 = *(v4 + 233);
        *&v47[15] = *(v4 + 248);
        v22 = *(v4 + 260);
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v23, v24, v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/adaptation/video_stream_adapter.cc");
        }

        if (v20 == 0x7FFFFFFF)
        {
          v30 = 0;
        }

        else
        {
          v30 = v20;
        }

        *&v51[8] = v30;
        v51[16] = v20 != 0x7FFFFFFF;
        if (v20 == 0x7FFFFFFF)
        {
          v31 = 0;
        }

        else
        {
          v31 = v19;
        }

        *&v51[17] = __p[0];
        *&v51[20] = *(__p + 3);
        *&v51[24] = v31;
        v51[32] = v20 != 0x7FFFFFFF;
        *&v51[33] = *v47;
        *&v51[48] = *&v47[15];
        *&v51[56] = v11 - 1;
        *&v51[60] = v22;
        goto LABEL_47;
      }

      goto LABEL_55;
    }

    goto LABEL_59;
  }

  if (v5 <= 1)
  {
    if (!v5)
    {
      v8 = 4;
      goto LABEL_14;
    }

    if (v5 == 1)
    {
      goto LABEL_24;
    }

LABEL_60:
    webrtc::webrtc_checks_impl::UnreachableCodeReached(a1);
  }

  if (v5 == 2)
  {
    webrtc::VideoStreamAdapter::IncreaseFramerate(v51, a1, a2, a1 + 208);
    if (v52)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

  if (v5 != 3)
  {
    goto LABEL_60;
  }

  webrtc::VideoStreamAdapter::IncreaseFramerate(v51, a1, a2, a1 + 208);
  if (v52)
  {
    goto LABEL_24;
  }

LABEL_47:
  *v47 = *&v51[8];
  *&v47[16] = *&v51[24];
  v48 = *&v51[40];
  *&v49 = *&v51[56];
  v32 = *(v4 + 184);
  v33 = *(v4 + 192);
  v34 = *&v51[8];
  if (v32 == v33)
  {
    v35 = 0;
  }

  else
  {
    v35 = 0;
    do
    {
      v36 = *v32;
      if (((*(**v32 + 24))(*v32, a2, v4 + 208, v47) & 1) == 0)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
        {
          v2 = v2 & 0xFFFFFFFF00000000 | 0xAD1;
          (*(*v36 + 16))(__p, v36);
          webrtc::webrtc_logging_impl::Log("\r\t\n\t", v37, v38, v39, v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/adaptation/video_stream_adapter.cc");
          if (v45 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v35 = 1;
        v34 = 5;
      }

      ++v32;
    }

    while (v32 != v33);
  }

  LODWORD(v52) = v35;
  *&v51[8] = v34;
LABEL_15:
  v48 = *&v51[32];
  v49 = *&v51[48];
  v50 = v52;
  *v47 = *v51;
  *&v47[16] = *&v51[16];
  LODWORD(__p[0]) = *(v4 + 40);
  __p[1] = a2;
  if (v52 == -1)
  {
    std::__throw_bad_variant_access[abi:sn200100]();
  }

  v46 = __p;
  return (off_2882A30C8[v52])(&v46, &v47[8]);
}

void webrtc::VideoStreamAdapter::IncreaseFramerate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 44) == 3)
  {
    if ((*(a3 + 4) & 0x100000000) == 0)
    {
LABEL_55:
      v43 = std::__throw_bad_optional_access[abi:sn200100]();
      webrtc::VideoStreamAdapter::GetAdaptationDown(v43);
      return;
    }

    if ((*(a3 + 24) & 0x100000000) != 0)
    {
      v28 = *(a3 + 24);
    }

    else
    {
      v28 = *(a3 + 4);
    }

    v29 = *(a2 + 16);
    v30 = 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 24) - v29) >> 3);
    if (v30 == 1)
    {
LABEL_45:
      if (*(a4 + 52) < 2)
      {
        v9 = 0x7FFFFFFF;
        if (*(a4 + 40) != 1)
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v36, v37, v38, v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/adaptation/video_stream_adapter.cc");
      }

      v9 = *(a4 + 52) ^ 0x7FFFFFFF;
LABEL_49:
      if (*(a4 + 40) != 1)
      {
        goto LABEL_53;
      }

LABEL_52:
      if (v9 > *(a4 + 32))
      {
        goto LABEL_5;
      }

LABEL_53:
      *(a1 + 8) = 1;
      *(a1 + 64) = 1;
      return;
    }

    v31 = *(a3 + 16);
    v32 = (v29 + 228);
    v33 = -1;
    v34 = v30;
    while (1)
    {
      if (!v34)
      {
        goto LABEL_54;
      }

      if (*(v32 - 57) >= v28)
      {
        break;
      }

      --v33;
      --v34;
      v32 += 30;
      if (v34 == 1)
      {
        goto LABEL_45;
      }
    }

    if (v30 <= -v33)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v9 = *(v32 - 26);
    if (v31 > 2)
    {
      switch(v31)
      {
        case 3:
          v35 = *(v32 - 5);
          break;
        case 4:
          v35 = *(v32 - 10);
          break;
        case 5:
          goto LABEL_35;
        default:
          goto LABEL_43;
      }
    }

    else
    {
      if (v31)
      {
        if (v31 == 1)
        {
          v35 = *(v32 - 20);
          if (v35 < 1)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }

        if (v31 != 2)
        {
          goto LABEL_43;
        }

LABEL_35:
        v35 = *(v32 - 15);
        goto LABEL_41;
      }

      v35 = *v32;
    }

LABEL_41:
    if (v35 > 0)
    {
LABEL_42:
      v9 = v35;
    }

LABEL_43:
    if (v9 != 0x7FFFFFFF && v9 != 100)
    {
      goto LABEL_49;
    }

    goto LABEL_45;
  }

  v6 = *(a3 + 12);
  v7 = v6 == 0x7FFFFFFF;
  v8 = 3 * v6 / 2;
  if (v7)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

LABEL_5:
  if (*(a4 + 52) == 1)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/adaptation/video_stream_adapter.cc");
    }

    v9 = 0x7FFFFFFF;
  }

  if (*(a4 + 40) != 1 || v9 <= *(a4 + 32))
  {
    goto LABEL_53;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/adaptation/video_stream_adapter.cc");
  }

  v24 = v9;
  v25 = *(a4 + 16);
  *(a1 + 8) = *a4;
  if (v9 == 0x7FFFFFFF)
  {
    v24 = 0.0;
  }

  *(a1 + 40) = v24;
  *(a1 + 48) = v9 != 0x7FFFFFFF;
  v26 = *(a4 + 48);
  v27 = *(a4 + 52) - 1;
  *(a1 + 24) = v25;
  *(a1 + 49) = *(a4 + 41);
  *(a1 + 56) = v26;
  *(a1 + 60) = v27;
}

void webrtc::VideoStreamAdapter::GetAdaptationDown(webrtc::VideoStreamAdapter *this)
{
  v24 = *MEMORY[0x277D85DE8];
  (*(**this + 16))(v12);
  ++*(this + 10);
  webrtc::VideoStreamAdapter::GetAdaptationDownStep(v22, this, v12, this + 13);
  v2 = v16;
  if ((v16 & 0x100000000) != 0 || (v2 = v13, (v13 & 0x100000000) != 0))
  {
    if (3 * v2 / 5 < v15)
    {
      (*(**(this + 1) + 88))(*(this + 1));
    }
  }

  if (*(this + 11) != 3 || v23 != 0)
  {
    goto LABEL_26;
  }

  if ((v13 & 0x100000000) == 0)
  {
    goto LABEL_29;
  }

  if ((v16 & 0x100000000) != 0)
  {
    v4 = v16;
  }

  else
  {
    v4 = v13;
  }

  v5 = *(this + 2);
  v6 = *(this + 3);
  if (v5 == v6)
  {
    goto LABEL_24;
  }

  while (*v5 < v4)
  {
    v5 += 30;
    if (v5 == v6)
    {
      goto LABEL_24;
    }
  }

  v7 = v5[4];
  if (v7 <= -100 || *(this + 65) >= *&v22[60] || v14 < 1)
  {
    goto LABEL_24;
  }

  if ((v22[48] & 1) == 0)
  {
LABEL_29:
    v8 = std::__throw_bad_optional_access[abi:sn200100]();
    webrtc::VideoStreamAdapter::GetAdaptationDownStep(v8, v9, v10, v11);
    return;
  }

  if (v7 <= (v14 - *&v22[40]))
  {
LABEL_24:
    *&v20[8] = *&v22[8];
    *&v20[24] = *&v22[24];
    *&v20[40] = *&v22[40];
    *&v20[56] = *&v22[56];
    LODWORD(v21) = 0;
    goto LABEL_25;
  }

  webrtc::VideoStreamAdapter::GetAdaptationDownStep(v20, this, v12, &v22[8]);
LABEL_25:
  *&v22[32] = *&v20[32];
  *&v22[48] = *&v20[48];
  v23 = v21;
  *v22 = *v20;
  *&v22[16] = *&v20[16];
LABEL_26:
  *&v20[32] = *&v22[32];
  *&v20[48] = *&v22[48];
  v21 = v23;
  *v20 = *v22;
  *&v20[16] = *&v22[16];
  v17 = *(this + 10);
  v18 = v12;
  if (v23 == -1)
  {
    std::__throw_bad_variant_access[abi:sn200100]();
  }

  v19 = &v17;
  (off_2882A30C8[v23])(&v19, &v20[8]);
}

void webrtc::VideoStreamAdapter::GetAdaptationDownStep(webrtc::webrtc_checks_impl *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (*a3 != 1 || *(a3 + 8) != 1 || ((v4 = *(a2 + 44), v4 == 2) ? (v5 = *(a3 + 12) <= 1) : (v5 = 0), v5))
  {
    v7 = 3;
    goto LABEL_14;
  }

  if (*(a2 + 56) == 1 && v4 == 1 && (*(a2 + 48) & 1) == 0)
  {
    v6 = *(a3 + 4);
    if ((v6 & 0x100000000) != 0)
    {
      if (*(a2 + 52) <= v6)
      {
        v7 = 2;
LABEL_14:
        *(a1 + 2) = v7;
        *(a1 + 16) = 1;
        return;
      }

      goto LABEL_23;
    }

    a1 = std::__throw_bad_optional_access[abi:sn200100]();
    goto LABEL_31;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      v7 = 4;
      goto LABEL_14;
    }

    if (v4 == 1)
    {
LABEL_23:

      webrtc::VideoStreamAdapter::DecreaseResolution(a1, a3, a4);
      return;
    }

LABEL_31:
    webrtc::webrtc_checks_impl::UnreachableCodeReached(a1);
  }

  if (v4 != 2)
  {
    if (v4 == 3)
    {
      v8 = a1;
      v9 = a3;
      v10 = a4;
      webrtc::VideoStreamAdapter::DecreaseFramerate(a1, a2, a3, a4);
      a3 = v9;
      a4 = v10;
      a1 = v8;
      if (!*(v8 + 16))
      {
        return;
      }

      goto LABEL_23;
    }

    goto LABEL_31;
  }

  webrtc::VideoStreamAdapter::DecreaseFramerate(a1, a2, a3, a4);
}

void webrtc::VideoStreamAdapter::DecreaseFramerate(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (*(a2 + 44) != 3)
  {
    v5 = 2 * *(a3 + 12) / 3;
    goto LABEL_30;
  }

  v6 = *(a3 + 4);
  if ((v6 & 0x100000000) == 0)
  {
    v23 = std::__throw_bad_optional_access[abi:sn200100]();
    webrtc::VideoStreamAdapter::DecreaseResolution(v23);
    return;
  }

  if ((*(a3 + 24) & 0x100000000) != 0)
  {
    LODWORD(v6) = *(a3 + 24);
  }

  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (v7 != v8)
  {
    v9 = *(a3 + 16);
    while (*v7 < v6)
    {
      v7 += 30;
      if (v7 == v8)
      {
        goto LABEL_10;
      }
    }

    v10 = v7[1];
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v11 = v7[22];
          break;
        case 4:
          v11 = v7[17];
          break;
        case 5:
LABEL_19:
          v11 = v7[12];
          break;
        default:
          goto LABEL_27;
      }
    }

    else
    {
      if (v9)
      {
        if (v9 == 1)
        {
          v11 = v7[7];
          if (v11 < 1)
          {
LABEL_27:
            if (v10 == 100)
            {
              v5 = 0x7FFFFFFF;
            }

            else
            {
              v5 = v10;
            }

            goto LABEL_30;
          }

LABEL_26:
          v10 = v11;
          goto LABEL_27;
        }

        if (v9 != 2)
        {
          goto LABEL_27;
        }

        goto LABEL_19;
      }

      v11 = v7[27];
    }

    if (v11 <= 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_10:
  v5 = 0x7FFFFFFF;
LABEL_30:
  if (v5 <= 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = v5;
  }

  if (*(a4 + 40))
  {
    v13 = *(a4 + 4);
  }

  else
  {
    v13 = 0x7FFFFFFF;
  }

  if (v12 >= v13)
  {
    *(a1 + 8) = 1;
    *(a1 + 64) = 1;
  }

  else
  {
    v24 = *a4;
    v25 = a4[1];
    *v26 = *(a4 + 41);
    v14 = *(a4 + 13);
    *&v26[7] = *(a4 + 12);
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/adaptation/video_stream_adapter.cc");
    }

    v22 = v12;
    *(a1 + 8) = v24;
    if (v5 == 0x7FFFFFFF)
    {
      v22 = 0.0;
    }

    *(a1 + 24) = v25;
    *(a1 + 40) = v22;
    *(a1 + 48) = v5 != 0x7FFFFFFF;
    *(a1 + 49) = *v26;
    *(a1 + 56) = *&v26[7];
    *(a1 + 60) = (v14 + 1);
  }
}

void webrtc::VideoStreamAdapter::DecreaseResolution(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 4);
  if ((v3 & 0x100000000) != 0)
  {
    v4 = 3 * v3 / 5;
    if (*(a3 + 8) == 1 && v4 >= *a3)
    {
      goto LABEL_10;
    }

    if ((*(a2 + 24) & 0x100000000) != 0)
    {
      LODWORD(v3) = *(a2 + 24);
    }

    if (*(a2 + 20) <= 3 * v3 / 5)
    {
      *v17 = *(a3 + 9);
      *&v17[3] = *(a3 + 12);
      *v18 = *(a3 + 25);
      *&v18[15] = *(a3 + 40);
      v8 = *(a3 + 48);
      v7 = *(a3 + 52);
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/adaptation/video_stream_adapter.cc");
      }

      *(a1 + 8) = v4;
      *(a1 + 16) = 1;
      *(a1 + 17) = *v17;
      *(a1 + 20) = *&v17[3];
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 33) = *v18;
      *(a1 + 48) = *&v18[15];
      *(a1 + 56) = v8 + 1;
      *(a1 + 60) = v7;
      *(a1 + 64) = 0;
    }

    else
    {
LABEL_10:
      *(a1 + 8) = 1;
      *(a1 + 64) = 1;
    }
  }

  else
  {
    v16 = std::__throw_bad_optional_access[abi:sn200100]();
    webrtc::VideoStreamAdapter::GetAdaptDownResolution(v16);
  }
}

void webrtc::VideoStreamAdapter::GetAdaptDownResolution(webrtc::VideoStreamAdapter *this@<X0>, uint64_t a2@<X8>)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = (*(**this + 16))(v24);
  v5 = *(this + 11);
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        webrtc::VideoStreamAdapter::GetAdaptationDown(this);
        return;
      }

LABEL_28:
      webrtc::webrtc_checks_impl::UnreachableCodeReached(v4);
    }

    v7 = *(this + 10);
    v8 = 4;
    goto LABEL_14;
  }

  if (v5 != 2)
  {
    if (v5 != 3)
    {
      goto LABEL_28;
    }

    webrtc::VideoStreamAdapter::GetAdaptationDownStep(&v43, this, v24, this + 13);
    if (v46 || (v6 = *&v45[24], *&v45[24] > *(this + 64)))
    {
      v30 = *v45;
      v31 = *&v45[16];
      v32 = v46;
      v28 = v43;
      v29 = v44;
    }

    else
    {
      if ((v25 & 0x100000000) == 0)
      {
LABEL_30:
        v23 = std::__throw_bad_optional_access[abi:sn200100]();
        webrtc::VideoStreamAdapter::ApplyAdaptation(v23);
        return;
      }

      v9 = *&v45[28];
      v10 = 3 * v25 / 5;
      if ((v44 & 1) != 0 && v10 >= SDWORD2(v43) || ((v27 & 0x100000000) != 0 ? (v11 = v27) : (v11 = v25), v26 > 3 * v11 / 5))
      {
        v12 = 1;
        LODWORD(v34) = 1;
        v13 = &v43;
      }

      else
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/adaptation/video_stream_adapter.cc");
        }

        v12 = 0;
        v34 = v10;
        v35 = 1;
        *v36 = *(&v44 + 1);
        *&v36[3] = DWORD1(v44);
        v37 = 0;
        v38 = 0;
        *v39 = *&v45[1];
        *&v39[15] = *&v45[16];
        v13 = &v33;
        v40 = v6 + 1;
        v41 = v9;
      }

      v42 = v12;
      v21 = v13[3];
      v30 = v13[2];
      v31 = v21;
      v22 = v13[1];
      v28 = *v13;
      v29 = v22;
      v32 = *(v13 + 8);
    }

    LODWORD(v43) = *(this + 10);
    *(&v43 + 1) = v24;
    if (v32 != -1)
    {
      v33 = &v43;
      (off_2882A30C8[v32])(&v33, &v28 + 8);
      return;
    }

    std::__throw_bad_variant_access[abi:sn200100]();
    goto LABEL_30;
  }

  v7 = *(this + 10);
  v8 = 1;
LABEL_14:
  *a2 = v7;
  *(a2 + 4) = v8;
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 0;
  *(a2 + 28) = 57600;
  *(a2 + 32) = 0;
  *(a2 + 36) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
}

double webrtc::VideoStreamAdapter::ApplyAdaptation(uint64_t a1, uint64_t a2, void (****a3)(void, __n128, __n128, __n128), double result)
{
  if (*(a2 + 4))
  {
    return result;
  }

  v4 = *(a1 + 208);
  v5 = *(a2 + 40);
  if (*(a1 + 216))
  {
    if ((*(a2 + 48) & 1) == 0 || v5 > v4)
    {
      v7 = *(a2 + 12);
      if ((v7 & 0x100000000) != 0)
      {
        *(a1 + 48) = 1;
        *(a1 + 52) = v7;
        *(a1 + 56) = 1;
        goto LABEL_13;
      }

LABEL_16:
      v12 = std::__throw_bad_optional_access[abi:sn200100]();
      return webrtc::VideoStreamAdapter::GetSingleActiveLayerPixels(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    if (v5 >= v4)
    {
      goto LABEL_6;
    }
  }

  else if ((*(a2 + 48) & 1) == 0)
  {
LABEL_6:
    if (*(a1 + 56) == 1)
    {
      *(a1 + 56) = 0;
    }

    goto LABEL_13;
  }

  v6 = *(a2 + 12);
  if ((v6 & 0x100000000) == 0)
  {
    goto LABEL_16;
  }

  *(a1 + 48) = 0;
  *(a1 + 52) = v6;
  *(a1 + 56) = 1;
LABEL_13:
  v8 = *(a2 + 88);
  v9 = *(a2 + 40);
  v10 = *(a2 + 56);
  v11 = *(a2 + 72);
  *(a1 + 224) = v10;
  *(a1 + 240) = v11;
  *(a1 + 208) = v9;
  *(a1 + 256) = v8;

  webrtc::VideoStreamAdapter::BroadcastVideoRestrictionsUpdate(a1, v9, v10, v11, a2, a3);
  return result;
}

double webrtc::VideoStreamAdapter::GetSingleActiveLayerPixels(webrtc::VideoStreamAdapter *this, const webrtc::VideoCodec *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*this == 2)
  {
    v13 = *(this + 366);
    if (*(this + 366))
    {
      v14 = 0;
      v15 = 0;
      v16 = this + 144;
      do
      {
        if (v16[32] == 1)
        {
          ++v14;
          if ((v15 & 1) == 0)
          {
            v15 = 1;
          }
        }

        v16 += 36;
        --v13;
      }

      while (v13);
    }
  }

  else if (*this == 3 && (v8 = *(this + 186), (v8 & 0x100) != 0))
  {
    if (v8 > 0x21u)
    {
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/svc/scalability_mode_util.cc", 309, "index < kNumScalabilityModes", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, v8);
      *&result = std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::VideoStreamAdapter::RestrictionsOrStateVisitor> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,webrtc::VideoStreamAdapter::RestrictionsWithCounters,webrtc::Adaptation::Status> &>(v21, v22, v23).n128_u64[0];
    }

    else
    {
      if (v17 >= 1)
      {
        v18 = 0;
        v19 = 0;
        v20 = this + 144;
        do
        {
          if (v20[32] == 1)
          {
            ++v18;
            if ((v19 & 1) == 0)
            {
              v19 = 1;
            }
          }

          v20 += 36;
          --v17;
        }

        while (v17);
      }
    }
  }

  else
  {
    v9 = *(this + 32);
    if (*(this + 32))
    {
      v10 = 0;
      v11 = 0;
      v12 = this + 36;
      do
      {
        if (v12[32] == 1)
        {
          ++v10;
          if ((v11 & 1) == 0)
          {
            v11 = 1;
          }
        }

        v12 += 36;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::VideoStreamAdapter::RestrictionsOrStateVisitor> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,webrtc::VideoStreamAdapter::RestrictionsWithCounters,webrtc::Adaptation::Status> &>@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  *(a3 + 40) = *a2;
  *(a3 + 56) = v4;
  *(a3 + 72) = *(a2 + 32);
  v5 = *(v3 + 8);
  result = *v5;
  v7 = *(v5 + 16);
  *(a3 + 8) = *v5;
  LODWORD(v3) = *v3;
  v8 = *(a2 + 48);
  *(a3 + 24) = v7;
  *a3 = v3;
  *(a3 + 88) = v8;
  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::VideoStreamAdapter::RestrictionsOrStateVisitor> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,webrtc::VideoStreamAdapter::RestrictionsWithCounters,webrtc::Adaptation::Status> &>@<D0>(_DWORD **a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = **a1;
  *(a3 + 4) = v3;
  *(a3 + 8) = 0;
  *(a3 + 12) = 0;
  *(a3 + 16) = 0;
  result = 0.0;
  *(a3 + 20) = 0;
  *(a3 + 28) = 57600;
  *(a3 + 32) = 0;
  *(a3 + 36) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  return result;
}

void webrtc::VideoStreamBufferController::VideoStreamBufferController(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v11 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2882A30E8;
  *(a1 + 8) = a10;
  *(a1 + 16) = a2;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a4;
  v10 = *a9;
  *a9 = 0;
  *(a1 + 48) = v10;
  webrtc::JitterEstimator::JitterEstimator((a1 + 56), a2, a10);
}

uint64_t webrtc::VideoStreamBufferController::OnTimeout(uint64_t this, TimeDelta a2)
{
  v2 = *(this + 936);
  if (v2)
  {
    *(v2 + 4) = 0;
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      v3 = this;
      MEMORY[0x2743DA540](v2, 0x1000C4090D0E795);
      this = v3;
    }

    *(this + 936) = 0;
  }

  if (*(this + 976) == 1)
  {
    *(this + 976) = 0;
    v4 = *(**(this + 32) + 24);

    return v4();
  }

  return this;
}

uint64_t webrtc::VideoStreamBufferController::InsertFrame(uint64_t a1, unsigned int **a2)
{
  v4 = *a2;
  v5 = *(*a2 + 400);
  v6 = *(*a2 + 44);
  v22 = *(*a2 + 19);
  v7 = *(*a2 + 40);
  v8 = (*(**a2 + 32))(*a2);
  v9 = v4[40];
  v10 = (*(*v4 + 16))(v4);
  if (v10 < 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1000 * (*(*v4 + 16))(v4);
  }

  v12 = *(a1 + 848);
  v13 = *(v12 + 176);
  v14 = *a2;
  *a2 = 0;
  v23 = v14;
  inserted = webrtc::FrameBuffer::InsertFrame(v12, &v23);
  v16 = v23;
  v23 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  if (inserted)
  {
    if (v10 < 0)
    {
      v17 = 1;
    }

    else
    {
      v17 = v8;
    }

    if (v17)
    {
      goto LABEL_24;
    }

    (*(**(a1 + 8) + 16))(__p);
    v18 = v25;
    if ((v25 & 0x80u) != 0)
    {
      v18 = __p[1];
    }

    if (v18 >= 8)
    {
      v20 = __p[0];
      if ((v25 & 0x80u) == 0)
      {
        v20 = __p;
      }

      v19 = *v20 == 0x64656C6261736944;
      if (v25 < 0)
      {
LABEL_21:
        operator delete(__p[0]);
        if (!v19)
        {
LABEL_22:
          if (!v5)
          {
            goto LABEL_24;
          }
        }

LABEL_23:
        (*(**(a1 + 40) + 16))(*(a1 + 40), v9, v11);
LABEL_24:
        if (v13 < *(*(a1 + 848) + 176))
        {
          (*(**(a1 + 24) + 16))(*(a1 + 24), v6 == 0, v22, v7);
          webrtc::VideoStreamBufferController::MaybeScheduleFrameForRelease(a1);
        }

        return *(*(a1 + 848) + 80);
      }
    }

    else
    {
      v19 = 0;
      if (v25 < 0)
      {
        goto LABEL_21;
      }
    }

    if (!v19)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  return *(*(a1 + 848) + 80);
}

void webrtc::VideoStreamBufferController::MaybeScheduleFrameForRelease(webrtc::VideoStreamBufferController *this)
{
  v59[2] = *MEMORY[0x277D85DE8];
  if (*(this + 976) == 1)
  {
    v2 = *(this + 106);
    if (*(v2 + 72))
    {
      if (*(this + 840) == 1)
      {
        while (1)
        {
          v4 = *(this + 106);
          if ((*(v4 + 18) & 1) == 0)
          {
            return;
          }

          webrtc::FrameBuffer::ExtractNextDecodableTemporalUnit(v4, &v56);
          if (v56 >= 2)
          {
            break;
          }

          v3 = 0;
          if (v56)
          {
            goto LABEL_6;
          }

LABEL_7:
          if (v3)
          {
            return;
          }
        }

        v5 = v57;
        if (v56)
        {
          v5 = *v57;
          if (!*(*v57 + 352))
          {
LABEL_12:
            v6 = *(this + 5);
            v7 = *(v5 + 40);
            v8 = (*(**(this + 2) + 16))(*(this + 2));
            v9 = (*(*v6 + 24))(v6, v7, v8);
            v15 = v56;
            if (v56)
            {
              v54[0] = v57;
              v54[1] = v58;
              v53 = v56;
              v56 = 0;
              webrtc::VideoStreamBufferController::OnFrameReady(this, &v53, v9, v10, v11, v12, v13, v14);
              if (!v53)
              {
LABEL_27:
                v3 = 1;
                if (!v56)
                {
                  goto LABEL_7;
                }

                goto LABEL_6;
              }

LABEL_26:
              absl::inlined_vector_internal::Storage<std::unique_ptr<webrtc::RtpFrameObject>,3ul,std::allocator<std::unique_ptr<webrtc::RtpFrameObject>>>::DestroyContents(&v53);
              goto LABEL_27;
            }

            if (v56)
            {
              v16 = v56 >> 1;
              if (v56 < 8)
              {
                v17 = 0;
                v18 = &v56;
LABEL_23:
                v24 = v16 - v17;
                v25 = &v54[v17];
                v26 = (v18 + 1);
                do
                {
                  v27 = *v26;
                  *v26++ = 0;
                  *v25++ = v27;
                  --v24;
                }

                while (v24);
                goto LABEL_25;
              }

              v17 = v16 & 0x7FFFFFFFFFFFFFFCLL;
              v18 = &v56 + (v16 & 0x7FFFFFFFFFFFFFFCLL);
              v19 = v16 & 0x7FFFFFFFFFFFFFFCLL;
              v20 = &v55;
              v21 = v59;
              do
              {
                v22 = *(v21 - 1);
                v23 = *v21;
                *(v21 - 1) = 0uLL;
                *v21 = 0uLL;
                *(v20 - 1) = v22;
                *v20 = v23;
                v21 += 2;
                v20 += 4;
                v19 -= 4;
              }

              while (v19);
              if (v16 != v17)
              {
                goto LABEL_23;
              }
            }

LABEL_25:
            v53 = v15;
            webrtc::VideoStreamBufferController::OnFrameReady(this, &v53, v9, v10, v11, v12, v13, v14);
            if (!v53)
            {
              goto LABEL_27;
            }

            goto LABEL_26;
          }
        }

        else if (!v57[44])
        {
          goto LABEL_12;
        }

        v3 = 0;
LABEL_6:
        absl::inlined_vector_internal::Storage<std::unique_ptr<webrtc::RtpFrameObject>,3ul,std::allocator<std::unique_ptr<webrtc::RtpFrameObject>>>::DestroyContents(&v56);
        goto LABEL_7;
      }

      v28 = *(v2 + 64);
      v29 = (*(**(this + 6) + 16))(*(this + 6));
      if ((v29 & 0x100000000) == 0 || v29 != v28)
      {
        v30 = (*(**(this + 109) + 16))(*(this + 109));
        v31 = *(this + 119);
        v32 = v30 == 0x7FFFFFFFFFFFFFFFLL || v31 == 0x8000000000000000;
        v33 = (v31 - v30) & ~((v31 - v30) >> 63);
        if (v32)
        {
          v33 = 0;
        }

        v34 = v33 - 1000;
        if (v33 < 0x3E8)
        {
          v34 = 0;
        }

        if (v33 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v33 = v34;
        }

        if (v30 == 0x8000000000000000)
        {
          v35 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v35 = v33;
        }

        if (v31 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v36 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v35;
        }

        v37 = *(this + 106);
        while (1)
        {
          v38 = *(v37 + 32) > *(this + 261);
          v39 = (*(**(this + 107) + 16))(*(this + 107));
          v40 = (*(**(this + 108) + 24))(*(this + 108), v28, v39);
          v41 = (*(**(this + 108) + 32))(*(this + 108), v40, v39, v38);
          if (v28 == HIDWORD(v28) || v41 >= -4999)
          {
            break;
          }

          webrtc::FrameBuffer::DropNextDecodableTemporalUnit(*(this + 106));
          v37 = *(this + 106);
          v28 = *(v37 + 64);
          if ((*(v37 + 72) & 1) == 0)
          {
            return;
          }
        }

        v42 = v41;
        v43 = (*(**(this + 6) + 16))(*(this + 6));
        if ((v43 & 0x100000000) == 0 || v43 != v28)
        {
          if (v42 >= v36)
          {
            v44 = v36;
          }

          else
          {
            v44 = v42;
          }

          v45 = (v44 & ~(v44 >> 63)) + v39;
          if (v39 == 0x8000000000000000)
          {
            v45 = 0x8000000000000000;
          }

          if (v44 == 0x7FFFFFFFFFFFFFFFLL || v39 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v47 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v47 = v45;
          }

          (*(**(this + 6) + 32))(*(this + 6));
          v48 = *(this + 6);
          v49 = operator new(0x18uLL);
          *v49 = webrtc::VideoStreamBufferController::FrameReadyForDecode;
          v49[1] = 0;
          v49[2] = this;
          v50[0] = v49;
          v50[1] = 24;
          v51 = absl::internal_any_invocable::RemoteManagerTrivial;
          v52 = absl::internal_any_invocable::RemoteInvoker<false,void,std::__bind_front_t<void (webrtc::VideoStreamBufferController::*)(unsigned int,webrtc::Timestamp),webrtc::VideoStreamBufferController*> &&,unsigned int,webrtc::Timestamp>;
          (*(*v48 + 24))(v48, v28, v47, v40, v50);
          v51(1, v50, v50);
        }
      }
    }
  }
}

void webrtc::VideoStreamBufferController::StartNextDecode(webrtc::VideoStreamBufferController *this, int a2)
{
  if (!*(this + 117))
  {
    webrtc::VideoReceiveStreamTimeoutTracker::Start((this + 872), a2);
  }

  *(this + 840) = a2;
  if (a2)
  {
    *(this + 960) = 1;
    v3 = *(this + 111);
    v4 = (*(**(this + 109) + 16))(*(this + 109));
    if (v4 != 0x7FFFFFFFFFFFFFFFLL && v3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0x8000000000000000;
      if (v3 != 0x8000000000000000 && v4 != 0x8000000000000000)
      {
        v6 = v4 + v3;
      }

      if (v6 < *(this + 119))
      {
        v8 = *(this + 117);
        if (v8)
        {
          *(v8 + 4) = 0;
          if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
          {
            MEMORY[0x2743DA540]();
          }

          *(this + 117) = 0;
        }

        webrtc::VideoReceiveStreamTimeoutTracker::Start((this + 872), *(this + 960));
      }
    }
  }

  *(this + 976) = 1;

  webrtc::VideoStreamBufferController::MaybeScheduleFrameForRelease(this);
}

uint64_t webrtc::VideoStreamBufferController::OnFrameReady(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v171[2] = *MEMORY[0x277D85DE8];
  if (*a2 <= 1uLL)
  {
LABEL_228:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_buffer_controller.cc", 212, "!frames.empty()", "\t", a5, a6, a7, a8, "Callers must ensure there is at least one frame to decode.");
  }

  v9 = a2;
  v10 = a1;
  v11 = a1 + 872;
  *(a1 + 960) = 0;
  v12 = (*(**(a1 + 872) + 16))(*(a1 + 872));
  *(v10 + 944) = v12;
  v13 = 24;
  if (*(v10 + 960))
  {
    v13 = 16;
  }

  v14 = *(v11 + v13);
  v15 = 0x8000000000000000;
  if (v14 != 0x8000000000000000 && v12 != 0x8000000000000000)
  {
    v15 = v14 + v12;
  }

  if (v12 == 0x7FFFFFFFFFFFFFFFLL || v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v18 = v15;
  }

  *(v10 + 952) = v18;
  v19 = (*(**(v10 + 16) + 16))(*(v10 + 16));
  if (*v9 <= 1uLL)
  {
    goto LABEL_227;
  }

  v21 = v19;
  v22 = (v9 + 1);
  v23 = (v9 + 1);
  if (*v9)
  {
    v23 = *v22;
  }

  v24 = *v23;
  if ((*(*v24 + 16))(v24) < 0)
  {
LABEL_227:
    __break(1u);
    goto LABEL_228;
  }

  v26 = (*(*v24 + 16))(v24);
  v158 = v24;
  if (*(v24 + 44))
  {
    if (!a3)
    {
      goto LABEL_38;
    }
  }

  else
  {
    *(v10 + 840) = 0;
    if (!a3)
    {
      goto LABEL_38;
    }
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_70;
  }

  v27 = a3 - v21;
  if (v21 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = 0x8000000000000000;
  }

  if (v21 == 0x8000000000000000 || a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v29 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v29 = v27;
  }

  if (v29 >= 0)
  {
    v30 = v29;
  }

  else
  {
    v30 = -v29;
  }

  if (v30 > 0x989680)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_70;
    }

LABEL_69:
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v31, v32, v33, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/frame_helpers.cc");
LABEL_70:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v58, v59, v60, v61, v62, v63, v64, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_stream_buffer_controller.cc");
    }

    webrtc::JitterEstimator::Reset((v10 + 56));
    webrtc::VCMTiming::Reset(*(v10 + 40));
  }

LABEL_38:
  v38 = *(v10 + 40);
  pthread_mutex_lock((v38 + 8));
  v39 = *(v38 + 120);
  v40 = 0x7FFFFFFFFFFFFFFFLL;
  if (v39 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v41 = *(v38 + 88);
    if (*(v41 + 80))
    {
      v42 = 1000 * *(*(v41 + 88) + 32);
    }

    else
    {
      v42 = 0;
    }

    v43 = v42 + v39;
    if (v39 != 0x8000000000000000)
    {
      v39 = v43;
    }

    v40 = 0x7FFFFFFFFFFFFFFFLL;
    if (v39 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v44 = *(v38 + 96);
      if (v44 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v40 = 0x8000000000000000;
        v45 = v44 == 0x8000000000000000 || v39 == 0x8000000000000000;
        v46 = v39 + v44;
        if (!v45)
        {
          v40 = v46;
        }
      }
    }
  }

  if (*(v38 + 104) <= v40)
  {
    v47 = v40;
  }

  else
  {
    v47 = *(v38 + 104);
  }

  pthread_mutex_unlock((v38 + 8));
  if (v47 > 10000000)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

  v48 = 1000 * v26;
  v49 = *v9;
  if (*v9)
  {
    v22 = *v22;
    if (v49 < 2)
    {
LABEL_57:
      v50 = 0;
      v51 = *(v158 + 40);
      if (*(v10 + 836))
      {
        goto LABEL_58;
      }

      goto LABEL_122;
    }
  }

  else if (v49 < 2)
  {
    goto LABEL_57;
  }

  v155 = v9;
  v156 = v21;
  v157 = v10;
  v65 = v49 >> 1;
  v66 = a3 / 0x3E8;
  if (a3 % 0x3E8 > 0x1F3)
  {
    ++v66;
  }

  v159 = v66;
  if (-a3 % 0x3E8uLL <= 0x1F4)
  {
    v67 = 0;
  }

  else
  {
    v67 = -1;
  }

  v68 = 8 * v65;
  v69 = 0;
  v50 = 0;
  if ((a3 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v70 = *v22;
      *(v70 + 51) = v159;
      v71 = (*(*v70 + 32))(v70);
      if (v73 < v25)
      {
        v25 = v73;
      }

      v74 = *v22;
      if ((*(**v22 + 16))(*v22) < 0)
      {
        goto LABEL_227;
      }

      v69 |= v71;
      v75 = (*(*v74 + 16))(v74);
      if (v48 <= 1000 * v75)
      {
        v48 = 1000 * v75;
      }

      v76 = *v22++;
      v77 = *(v76 + 19);
      v78 = v77 == 0x8000000000000000 || v50 == 0x8000000000000000;
      v79 = v77 + v50;
      if (v78)
      {
        v79 = 0x8000000000000000;
      }

      if (v77 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v80 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v80 = v79;
      }

      if (v50 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v50 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v50 = v80;
      }

      v68 -= 8;
      if (!v68)
      {
        goto LABEL_116;
      }
    }
  }

  v160 = v67 - -a3 / 0x3E8uLL;
  do
  {
    v81 = *v22;
    *(v81 + 51) = v160;
    v82 = (*(*v81 + 32))(v81);
    if (v84 < v25)
    {
      v25 = v84;
    }

    v85 = *v22;
    if ((*(**v22 + 16))(*v22) < 0)
    {
      goto LABEL_227;
    }

    v69 |= v82;
    v86 = (*(*v85 + 16))(v85);
    if (v48 <= 1000 * v86)
    {
      v48 = 1000 * v86;
    }

    v87 = *v22++;
    v88 = *(v87 + 19);
    v89 = v88 == 0x8000000000000000 || v50 == 0x8000000000000000;
    v90 = v88 + v50;
    if (v89)
    {
      v90 = 0x8000000000000000;
    }

    if (v88 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v91 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v91 = v90;
    }

    if (v50 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v50 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v50 = v91;
    }

    v68 -= 8;
  }

  while (v68);
LABEL_116:
  if (v69)
  {
    v21 = v156;
    v10 = v157;
    v92 = *(v157 + 536);
    v9 = v155;
    if (v92 <= 2)
    {
      *(v157 + 536) = v92 + 1;
    }

    *(v157 + 528) = (*(**(v157 + 792) + 16))(*(v157 + 792));
    v93 = *(*(v157 + 848) + 180);
    if (v93 - *(v157 + 968) >= 1)
    {
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  v21 = v156;
  v10 = v157;
  v9 = v155;
  v51 = *(v158 + 40);
  if (*(v157 + 836))
  {
LABEL_58:
    v52 = *(v10 + 832);
    v53 = v51 >= v52;
    v54 = v51 - v52;
    v55 = v54 != 0 && v53;
    if (v54 != 0x80000000)
    {
      v55 = v54 >= 0;
    }

    if (!v55)
    {
      v54 |= 0xFFFFFFFF00000000;
    }

    v56 = v54 + *(v10 + 824);
    *(v10 + 824) = v56;
    *(v10 + 832) = v51;
    *(v10 + 836) = 1;
    if ((*(v10 + 808) & 1) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_123;
  }

LABEL_122:
  v56 = v51;
  *(v10 + 824) = v51;
  *(v10 + 832) = v51;
  *(v10 + 836) = 1;
  if ((*(v10 + 808) & 1) == 0)
  {
LABEL_66:
    v57 = 0;
    *(v10 + 808) = 1;
    goto LABEL_67;
  }

LABEL_123:
  v94 = *(v10 + 816);
  if (v56 < v94)
  {
    goto LABEL_124;
  }

  if (v51 - v94 == 0x80000000)
  {
    if (v51 <= v94)
    {
      goto LABEL_124;
    }

    goto LABEL_214;
  }

  if (v51 != v94 && ((v51 - v94) & 0x80000000) == 0)
  {
LABEL_214:
    v151 = *(v10 + 800);
    v57 = 0x7FFFFFFFFFFFFFFFLL;
    if (v48 == 0x7FFFFFFFFFFFFFFFLL || v151 == 0x8000000000000000)
    {
      goto LABEL_67;
    }

    if (v48 != 0x8000000000000000 && v151 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v154 = v48 - v151;
      if (v154 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_67;
      }

      if (v154 != 0x8000000000000000)
      {
        v57 = v154 + 1000000000 * (v56 - v94) / -90000000;
        goto LABEL_67;
      }
    }

    v57 = 0x8000000000000000;
LABEL_67:
    *(v10 + 800) = v48;
    *(v10 + 816) = v56;
    webrtc::JitterEstimator::UpdateEstimate((v10 + 56), v57, v50);
  }

LABEL_124:
  v95 = a3;
  v96 = *(v10 + 40);
  webrtc::JitterEstimator::GetJitterEstimate(v10 + 56);
  v98 = v97;
  pthread_mutex_lock((v96 + 8));
  if (*(v96 + 120) != v98)
  {
    *(v96 + 120) = v98;
    if (!*(v96 + 128))
    {
      *(v96 + 128) = v98;
    }
  }

  pthread_mutex_unlock((v96 + 8));
  v99.var0 = v95;
  v100.var0 = v21;
  webrtc::VCMTiming::UpdateCurrentDelay(*(v10 + 40), v99, v100);
  v93 = *(*(v10 + 848) + 180);
  if (v93 - *(v10 + 968) >= 1)
  {
LABEL_128:
    (*(**(v10 + 24) + 24))(*(v10 + 24));
    v93 = *(*(v10 + 848) + 180);
  }

LABEL_129:
  *(v10 + 968) = v93;
  webrtc::VCMTiming::GetTimings(*(v10 + 40), &v162);
  if (!v162)
  {
    goto LABEL_179;
  }

  if ((v163 & 0x8000000000000000) != 0)
  {
    if (-v163 % 0x3E8uLL <= 0x1F4)
    {
      v111 = 0;
    }

    else
    {
      v111 = -1;
    }

    v101 = v111 - -v163 / 0x3E8uLL;
    v102 = *(&v165 + 1);
    if ((*(&v165 + 1) & 0x8000000000000000) == 0)
    {
LABEL_135:
      if (v102 % 0x3E8 <= 0x1F3)
      {
        v103 = v102 / 0x3E8;
      }

      else
      {
        v103 = v102 / 0x3E8 + 1;
      }

      v104 = v165;
      if ((v165 & 0x8000000000000000) == 0)
      {
        goto LABEL_139;
      }

      goto LABEL_158;
    }
  }

  else
  {
    if (v163 % 0x3E8 <= 0x1F3)
    {
      v101 = v163 / 0x3E8;
    }

    else
    {
      v101 = v163 / 0x3E8 + 1;
    }

    v102 = *(&v165 + 1);
    if ((*(&v165 + 1) & 0x8000000000000000) == 0)
    {
      goto LABEL_135;
    }
  }

  v112 = -v102;
  v113 = v112 / 0x3E8;
  if (v112 % 0x3E8 <= 0x1F4)
  {
    v114 = 0;
  }

  else
  {
    v114 = -1;
  }

  v103 = v114 - v113;
  v104 = v165;
  if ((v165 & 0x8000000000000000) == 0)
  {
LABEL_139:
    if (v104 % 0x3E8 <= 0x1F3)
    {
      v105 = v104 / 0x3E8;
    }

    else
    {
      v105 = v104 / 0x3E8 + 1;
    }

    v106 = *(v10 + 24);
    v107 = *(&v162 + 1);
    if ((*(&v162 + 1) & 0x8000000000000000) == 0)
    {
      goto LABEL_143;
    }

LABEL_162:
    v118 = -v107;
    v119 = v118 / 0x3E8;
    if (v118 % 0x3E8 <= 0x1F4)
    {
      v120 = 0;
    }

    else
    {
      v120 = -1;
    }

    v108 = v120 - v119;
    v109 = v164;
    if ((v164 & 0x8000000000000000) == 0)
    {
      goto LABEL_147;
    }

LABEL_166:
    v121 = -v109;
    v122 = v121 / 0x3E8;
    if (v121 % 0x3E8 <= 0x1F4)
    {
      v123 = 0;
    }

    else
    {
      v123 = -1;
    }

    v110 = v123 - v122;
    goto LABEL_170;
  }

LABEL_158:
  v115 = -v104;
  v116 = v115 / 0x3E8;
  if (v115 % 0x3E8 <= 0x1F4)
  {
    v117 = 0;
  }

  else
  {
    v117 = -1;
  }

  v105 = v117 - v116;
  v106 = *(v10 + 24);
  v107 = *(&v162 + 1);
  if ((*(&v162 + 1) & 0x8000000000000000) != 0)
  {
    goto LABEL_162;
  }

LABEL_143:
  if (v107 % 0x3E8 <= 0x1F3)
  {
    v108 = v107 / 0x3E8;
  }

  else
  {
    v108 = v107 / 0x3E8 + 1;
  }

  v109 = v164;
  if ((v164 & 0x8000000000000000) != 0)
  {
    goto LABEL_166;
  }

LABEL_147:
  if (v109 % 0x3E8 <= 0x1F3)
  {
    v110 = v109 / 0x3E8;
  }

  else
  {
    v110 = v109 / 0x3E8 + 1;
  }

LABEL_170:
  v124 = *(&v163 + 1) / 0x3E8uLL;
  if (*(&v163 + 1) % 0x3E8uLL > 0x1F3)
  {
    ++v124;
  }

  if (-*(&v163 + 1) % 0x3E8uLL <= 0x1F4)
  {
    v125 = 0;
  }

  else
  {
    v125 = -1;
  }

  if (v163 < 0)
  {
    v126 = v125 - -*(&v163 + 1) / 0x3E8uLL;
  }

  else
  {
    v126 = v124;
  }

  (*(*v106 + 40))(v106, v101, v103, v105, v108, v110, v126);
LABEL_179:
  v127 = 0x7FFFFFFFFFFFFFFFLL;
  if (v21 != 0x7FFFFFFFFFFFFFFFLL && v25 != 0x8000000000000000)
  {
    v128 = v25 == 0x7FFFFFFFFFFFFFFFLL || v21 == 0x8000000000000000;
    v127 = v128 ? 0x8000000000000000 : v21 - v25;
    if (v127 < 1)
    {
      v127 = 0;
    }
  }

  (*(**(v10 + 24) + 32))(*(v10 + 24), v127, v165, *(&v162 + 1));
  v129 = *(v10 + 40);
  pthread_mutex_lock((v129 + 8));
  v130 = *(v129 + 224);
  v166 = *(v129 + 208);
  v167 = v130;
  v168 = *(v129 + 240);
  v169 = *(v129 + 256);
  v131 = *(v129 + 160);
  v162 = *(v129 + 144);
  v163 = v131;
  v132 = *(v129 + 192);
  v164 = *(v129 + 176);
  v165 = v132;
  pthread_mutex_unlock((v129 + 8));
  if (v169 == 1)
  {
    (*(**(v10 + 24) + 48))(*(v10 + 24), &v162);
  }

  v133 = *v9;
  if ((*v9 & 1) == 0)
  {
    if (!v133)
    {
      goto LABEL_205;
    }

    v134 = v133 >> 1;
    if (v133 >= 8)
    {
      v135 = v134 & 0x7FFFFFFFFFFFFFFCLL;
      v136 = &v9[v134 & 0x7FFFFFFFFFFFFFFCLL];
      v138 = (v9 + 3);
      v139 = v171;
      v140 = v134 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v141 = *(v138 - 1);
        v142 = *v138;
        *(v138 - 1) = 0uLL;
        *v138 = 0uLL;
        *(v139 - 1) = v141;
        *v139 = v142;
        v138 += 2;
        v139 += 2;
        v140 -= 4;
      }

      while (v140);
      if (v134 == v135)
      {
LABEL_205:
        v170[0] = v133;
        webrtc::CombineAndDeleteFrames(v170, &v162);
        if (!v170[0])
        {
          goto LABEL_207;
        }

        goto LABEL_206;
      }
    }

    else
    {
      v135 = 0;
      v136 = v9;
    }

    v143 = v134 - v135;
    v144 = &v170[v135 + 1];
    v145 = v136 + 1;
    do
    {
      v146 = *v145;
      *v145++ = 0;
      *v144++ = v146;
      --v143;
    }

    while (v143);
    goto LABEL_205;
  }

  v137 = v9[2];
  v170[1] = v9[1];
  v170[2] = v137;
  v170[0] = v133;
  *v9 = 0;
  webrtc::CombineAndDeleteFrames(v170, &v162);
  if (v170[0])
  {
LABEL_206:
    absl::inlined_vector_internal::Storage<std::unique_ptr<webrtc::RtpFrameObject>,3ul,std::allocator<std::unique_ptr<webrtc::RtpFrameObject>>>::DestroyContents(v170);
  }

LABEL_207:
  v147 = *(v10 + 40);
  pthread_mutex_lock((v147 + 8));
  *(v147 + 352) = v21;
  pthread_mutex_unlock((v147 + 8));
  *(v10 + 976) = 0;
  v148 = *(v10 + 32);
  v161 = v162;
  *&v162 = 0;
  (*(*v148 + 16))(v148, &v161);
  v149 = v161;
  v161 = 0;
  if (v149)
  {
    (*(*v149 + 8))(v149);
  }

  result = v162;
  *&v162 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}