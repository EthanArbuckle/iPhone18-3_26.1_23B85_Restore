_OWORD *sub_1DCE846D0(_OWORD *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = sub_1DD0DB04C();
  v233 = *(v3 - 8);
  v234 = v3;
  v246 = *(v233 + 64);
  v230 = *(sub_1DD0DC76C() - 8);
  v4 = *(v230 + 80);
  v244 = *(sub_1DD0DB1EC() - 8);
  v229 = v244;
  v237 = *(v244 + 80) | v4;
  v232 = sub_1DD0DB4BC();
  v241 = *(v232 - 8);
  v254 = v241;
  v5 = *(v241 + 80) & 0xF8;
  v231 = sub_1DD0DB3EC();
  v6 = *(v231 - 8);
  v7 = *(v6 + 80);
  v8 = v5 | v7 | 7;
  v239 = *(sub_1DD0DD12C() - 8);
  v228 = v239;
  v9 = *(v239 + 80);
  v10 = *(sub_1DD0DD08C() - 8);
  v243 = v10;
  v11 = (v237 | (v9 | *(v10 + 80))) & 0xF8 | v8;
  v12 = v246 + v11;
  v13 = *(v230 + 64);
  v238 = v13 + 7;
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v13 <= *(v244 + 64))
  {
    v13 = *(v244 + 64);
  }

  if (v13 <= 0x18)
  {
    v14 = 24;
  }

  else
  {
    v14 = v13;
  }

  v247 = *(v241 + 64) + v7;
  v15 = v7;
  v16 = v247 & ~v7;
  v227 = v6;
  v17 = *(v6 + 84);
  v18 = *(v6 + 64);
  if (v17)
  {
    v19 = *(v6 + 64);
  }

  else
  {
    v19 = v18 + 1;
  }

  v20 = (v19 + 7 + v16) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v21 <= v14)
  {
    v22 = v14;
  }

  else
  {
    v22 = (v20 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v23 = v20 + 31;
  v24 = ((((v23 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = v24 + 16;
  if (v24 + 16 > v22)
  {
    v22 = v24 + 16;
  }

  v26 = *(v239 + 64);
  v242 = v8 + 16;
  v27 = v8;
  v28 = *(v254 + 84);
  v240 = *(v6 + 84);
  v185 = v17 != 0;
  v29 = v17 - 1;
  if (v185)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (v30 <= v28)
  {
    v31 = *(v254 + 84);
  }

  else
  {
    v31 = v30;
  }

  if (v31 <= 0x7FFFFFFE)
  {
    v31 = 2147483646;
  }

  v245 = v31;
  v32 = (v23 + ((v8 + 16 + ((v26 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8;
  v33 = v32 + 8;
  if (v32 + 8 <= v22)
  {
    v34 = v22;
  }

  else
  {
    v34 = v32 + 8;
  }

  if (*(v10 + 64) <= v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = *(v10 + 64);
  }

  v36 = ((((v35 + (v12 & ~v11) + 8) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 41;
  v249 = *(*(a3 + 24) - 8);
  if (*(v249 + 64) <= 9uLL)
  {
    v37 = 9;
  }

  else
  {
    v37 = *(v249 + 64);
  }

  if (v36 <= v37 + 1)
  {
    v36 = v37 + 1;
  }

  if (v36 <= 0x29)
  {
    v38 = 41;
  }

  else
  {
    v38 = v36;
  }

  v39 = a2[v38];
  v40 = v39 - 7;
  if (v39 < 7)
  {
    v42 = a1;
  }

  else
  {
    if (v38 <= 3)
    {
      v41 = v38;
    }

    else
    {
      v41 = 4;
    }

    v42 = a1;
    switch(v41)
    {
      case 1:
        v43 = *a2;
        goto LABEL_48;
      case 2:
        v43 = *a2;
        goto LABEL_48;
      case 3:
        v43 = *a2 | (a2[2] << 16);
        goto LABEL_48;
      case 4:
        v43 = *a2;
LABEL_48:
        if (v38 < 4)
        {
          v43 |= v40 << (8 * v38);
        }

        v39 = v43 + 7;
        break;
      default:
        break;
    }
  }

  v226 = v18;
  v253 = *(v10 + 64);
  v44 = ~v11;
  v45 = ~v27;
  switch(v39)
  {
    case 0u:
      v46 = *(a2 + 1);
      *v42 = *a2;
      v42[1] = v46;
      *(v42 + 25) = *(a2 + 25);
      *(v42 + v38) = 0;
      return v42;
    case 1u:
      v66 = *(a2 + 1);
      *v42 = *a2;
      v42[1] = v66;
      *(v42 + 25) = *(a2 + 25);
      v48 = 1;
      goto LABEL_106;
    case 2u:
      v218 = v19 + 7;
      v220 = ~v15;
      v210 = v33;
      v212 = v25;
      v214 = v14;
      __n = v19;
      v222 = v35 + 1;
      v224 = (v35 + (v12 & ~v11) + 8) & 0xFFFFFFFFFFFFFFF8;
      v250 = v38;
      v49 = v35;
      (*(v233 + 32))(v42, a2, v234);
      v50 = a2;
      v51 = ((v42 + v12) & v44);
      v52 = (&a2[v12] & v44);
      v53 = v52[v49];
      v54 = v53 - 10;
      if (v53 >= 0xA)
      {
        if (v49 <= 3)
        {
          v55 = v49;
        }

        else
        {
          v55 = 4;
        }

        switch(v55)
        {
          case 1:
            v56 = *v52;
            goto LABEL_81;
          case 2:
            v56 = *v52;
            goto LABEL_81;
          case 3:
            v56 = *v52 | (v52[2] << 16);
            goto LABEL_81;
          case 4:
            v56 = *v52;
LABEL_81:
            if (v49 < 4)
            {
              v53 = (v56 | (v54 << (8 * v49))) + 10;
            }

            else
            {
              v53 = v56 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v53)
      {
        case 0u:
          v71 = v42;
          v72 = v51;
          (*(v230 + 32))();
          v51 = v72;
          v50 = a2;
          *(v72 + v49) = 0;
          goto LABEL_152;
        case 1u:
          v71 = v42;
          v76 = v51;
          (*(v230 + 32))();
          v51 = v76;
          v50 = a2;
          *((v76 + v238) & 0xFFFFFFFFFFFFFFF8) = *(&v52[v238] & 0xFFFFFFFFFFFFFFF8);
          v77 = 1;
          goto LABEL_117;
        case 2u:
          v71 = v42;
          v80 = *v52;
          v51[2] = *(v52 + 2);
          *v51 = v80;
          v81 = 2;
          goto LABEL_124;
        case 3u:
          v71 = v42;
          *v51 = *v52;
          v81 = 3;
          goto LABEL_124;
        case 4u:
          v71 = v42;
          v76 = v51;
          (*(v229 + 32))();
          v51 = v76;
          v50 = a2;
          v77 = 4;
          goto LABEL_117;
        case 5u:
          v71 = v42;
          *v51 = *v52;
          v81 = 5;
LABEL_124:
          *(v51 + v49) = v81;
          goto LABEL_152;
        case 6u:
          v71 = v42;
          v92 = v51;
          (*(v254 + 32))();
          v85 = v92;
          v93 = ((v92 + v247) & v220);
          v94 = (&v52[v247] & v220);
          if (__swift_getEnumTagSinglePayload(v94, 1, v231))
          {
            memcpy(v93, v94, __n);
          }

          else
          {
            (*(v227 + 32))(v93, v94, v231);
            __swift_storeEnumTagSinglePayload(v93, 0, 1, v231);
          }

          v151 = ((v93 + v218) & 0xFFFFFFFFFFFFFFF8);
          v152 = ((v94 + v218) & 0xFFFFFFFFFFFFFFF8);
          *v151 = *v152;
          v153 = (v151 + 19) & 0xFFFFFFFFFFFFFFF8;
          v154 = (v152 + 19) & 0xFFFFFFFFFFFFFFF8;
          v155 = *v154;
          *(v153 + 4) = *(v154 + 4);
          *v153 = v155;
          v140 = 6;
          v51 = v92;
          goto LABEL_151;
        case 7u:
          v71 = v42;
          v84 = v51;
          (*(v254 + 32))();
          v85 = v84;
          v86 = ((v84 + v247) & v220);
          v87 = (&v52[v247] & v220);
          if (__swift_getEnumTagSinglePayload(v87, 1, v231))
          {
            memcpy(v86, v87, __n);
          }

          else
          {
            (*(v227 + 32))(v86, v87, v231);
            __swift_storeEnumTagSinglePayload(v86, 0, 1, v231);
          }

          v131 = ((v86 + v218) & 0xFFFFFFFFFFFFFFF8);
          v132 = ((v87 + v218) & 0xFFFFFFFFFFFFFFF8);
          *v131 = *v132;
          v133 = (v131 + 19) & 0xFFFFFFFFFFFFFFF8;
          v134 = (v132 + 19) & 0xFFFFFFFFFFFFFFF8;
          v135 = *v134;
          *(v133 + 4) = *(v134 + 4);
          *v133 = v135;
          v51 = v84;
          v136 = ((v84 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
          v137 = (&v52[v21 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v136 = *v137;
          v138 = ((v136 + 23) & 0xFFFFFFFFFFFFFFF8);
          v139 = ((v137 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v138 = *v139;
          *((v138 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v139 + 23) & 0xFFFFFFFFFFFFFFF8);
          v140 = 7;
LABEL_151:
          *(v85 + v49) = v140;
          v50 = a2;
          goto LABEL_152;
        case 8u:
          v99 = v51;
          (*(v228 + 32))();
          v100 = ((v99 + v26 + 7) & 0xFFFFFFFFFFFFFFF8);
          v101 = (&v52[v26 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v100 = *v101;
          v102 = ((v100 + v242) & v45);
          v103 = ((v101 + v242) & v45);
          v235 = v52;
          v71 = v42;
          if (v28 != v245)
          {
            v106 = v247;
            v108 = ((v103 + v247) & v220);
            if (v30 == v245)
            {
              v110 = v240;
              v109 = v231;
              if (v240 < 2)
              {
                v104 = v232;
                goto LABEL_170;
              }

              v185 = __swift_getEnumTagSinglePayload((v103 + v247) & v220, v240, v231) >= 2;
            }

            else
            {
              v184 = *(((v108 + v218) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v184 >= 0xFFFFFFFF)
              {
                LODWORD(v184) = -1;
              }

              v185 = (v184 + 1) >= 2;
            }

            v104 = v232;
            if (v185)
            {
              goto LABEL_173;
            }

            v109 = v231;
            v110 = v240;
LABEL_170:
            v111 = v254;
            v107 = v220;
            goto LABEL_171;
          }

          v104 = v232;
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v103, v28, v232);
          v106 = v247;
          if (EnumTagSinglePayload)
          {
LABEL_173:
            memcpy(v102, v103, v21);
            v50 = a2;
            v97 = v250;
            v96 = v222;
            v98 = v224;
            v189 = v214;
            v188 = __n;
            v191 = v210;
            v190 = v212;
            v51 = v99;
LABEL_176:
            v197 = v188;
            goto LABEL_177;
          }

          v107 = v220;
          v108 = ((v103 + v247) & v220);
          v109 = v231;
          v110 = v240;
          v111 = v254;
LABEL_171:
          (*(v111 + 32))(v102, v103, v104);
          if (__swift_getEnumTagSinglePayload(v108, 1, v109))
          {
            memcpy(((v102 + v106) & v107), v108, __n);
          }

          else
          {
            (*(v227 + 32))((v102 + v106) & v107, v108, v109);
            __swift_storeEnumTagSinglePayload((v102 + v106) & v107, 0, 1, v109);
          }

          v188 = __n;
          v192 = ((v218 + ((v102 + v106) & v107)) & 0xFFFFFFFFFFFFFFF8);
          v193 = ((v108 + v218) & 0xFFFFFFFFFFFFFFF8);
          *v192 = *v193;
          v194 = (v193 + 19) & 0xFFFFFFFFFFFFFFF8;
          v195 = *v194;
          v196 = (v192 + 19) & 0xFFFFFFFFFFFFFFF8;
          *(v196 + 4) = *(v194 + 4);
          *v196 = v195;
          v50 = a2;
          v97 = v250;
          v96 = v222;
          v98 = v224;
          v190 = v212;
          v189 = v214;
          v191 = v210;
          v197 = v226;
          v51 = v99;
          if (!v110)
          {
            goto LABEL_176;
          }

LABEL_177:
          *((v102 + ((((v16 + 7 + v197) & 0xFFFFFFFFFFFFFFF8) + 19) | 5) + 7) & 0xFFFFFFFFFFFFFFF8) = *((v103 + ((((v16 + 7 + v197) & 0xFFFFFFFFFFFFFFF8) + 19) | 5) + 7) & 0xFFFFFFFFFFFFFFF8);
          v198 = (((v16 + 7 + v188) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
          if (v198 <= v189)
          {
            v198 = v189;
          }

          if (v190 > v198)
          {
            v198 = v190;
          }

          if (v191 > v198)
          {
            v198 = v191;
          }

          if (v253 > v198)
          {
            v198 = v253;
          }

          *(v51 + v198) = 8;
          v52 = v235;
LABEL_153:
          v156 = ((v51 + v96 + 7) & 0xFFFFFFFFFFFFFFF8);
          v157 = (&v52[v96 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v156 = *v157;
          v158 = (v156 + 15) & 0xFFFFFFFFFFFFFFF8;
          v159 = (v157 + 15) & 0xFFFFFFFFFFFFFFF8;
          v160 = *v159;
          v161 = *(v159 + 16);
          *(v158 + 32) = *(v159 + 32);
          *v158 = v160;
          *(v158 + 16) = v161;
          *(v158 + 40) = *(v159 + 40);
          v162 = ((v98 + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
          v42 = v71;
          v163 = ((v71 + v162 + 7) & 0xFFFFFFFFFFFFFFF8);
          v164 = (&v50[v162 + 7] & 0xFFFFFFFFFFFFFFF8);
          v165 = *v164;
          v166 = v164[1];
          *(v163 + 25) = *(v164 + 25);
          *v163 = v165;
          v163[1] = v166;
          v167 = 2;
LABEL_159:
          *(v71 + v97) = v167;
          return v42;
        case 9u:
          v71 = v42;
          v76 = v51;
          (*(v243 + 32))();
          v51 = v76;
          v50 = a2;
          v77 = 9;
LABEL_117:
          *(v76 + v49) = v77;
LABEL_152:
          v97 = v250;
          v96 = v222;
          v98 = v224;
          goto LABEL_153;
        default:
          v71 = v42;
          v95 = v51;
          v96 = v222;
          memcpy(v51, v52, v222);
          v51 = v95;
          v50 = a2;
          v97 = v250;
          v98 = v224;
          goto LABEL_153;
      }

    case 3u:
      v219 = v19 + 7;
      v221 = ~v15;
      v211 = v33;
      v213 = v25;
      v215 = v14;
      __na = v19;
      v223 = v35 + 1;
      v225 = (v35 + (v12 & ~v11) + 8) & 0xFFFFFFFFFFFFFFF8;
      v251 = v38;
      v57 = v35;
      (*(v233 + 32))(v42, a2, v234);
      v58 = a2;
      v59 = ((v42 + v12) & v44);
      v60 = (&a2[v12] & v44);
      v61 = v60[v57];
      v62 = v61 - 10;
      if (v61 >= 0xA)
      {
        if (v57 <= 3)
        {
          v63 = v57;
        }

        else
        {
          v63 = 4;
        }

        switch(v63)
        {
          case 1:
            v64 = *v60;
            goto LABEL_89;
          case 2:
            v64 = *v60;
            goto LABEL_89;
          case 3:
            v64 = *v60 | (v60[2] << 16);
            goto LABEL_89;
          case 4:
            v64 = *v60;
LABEL_89:
            if (v57 < 4)
            {
              v61 = (v64 | (v62 << (8 * v57))) + 10;
            }

            else
            {
              v61 = v64 + 10;
            }

            break;
          default:
            goto LABEL_92;
        }
      }

      break;
    case 4u:
      v47 = *(a2 + 1);
      *v42 = *a2;
      v42[1] = v47;
      *(v42 + 25) = *(a2 + 25);
      v48 = 4;
      goto LABEL_106;
    case 5u:
      v67 = a2[v37];
      v68 = v67 - 2;
      if (v67 >= 2)
      {
        if (v37 <= 3)
        {
          v69 = v37;
        }

        else
        {
          v69 = 4;
        }

        switch(v69)
        {
          case 1:
            v70 = *a2;
            goto LABEL_96;
          case 2:
            v70 = *a2;
            goto LABEL_96;
          case 3:
            v70 = *a2 | (a2[2] << 16);
            goto LABEL_96;
          case 4:
            v70 = *a2;
LABEL_96:
            if (v37 < 4)
            {
              v67 = (v70 | (v68 << (8 * v37))) + 2;
            }

            else
            {
              v67 = v70 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v67 == 1)
      {
        *v42 = *a2;
        *(v42 + 8) = a2[8];
        *(v42 + v37) = 1;
      }

      else
      {
        v74 = v42;
        v75 = v38;
        if (v67)
        {
          memcpy(v74, a2, v37 + 1);
        }

        else
        {
          (*(v249 + 32))(v74);
          *(v74 + v37) = 0;
        }

        v38 = v75;
        v42 = v74;
      }

      v48 = 5;
      goto LABEL_106;
    case 6u:
      *v42 = *a2;
      *(v42 + 8) = a2[8];
      v48 = 6;
LABEL_106:
      *(v42 + v38) = v48;
      return v42;
    default:

      return memcpy(v42, a2, v38 + 1);
  }

LABEL_92:
  switch(v61)
  {
    case 0u:
      v71 = v42;
      v73 = v59;
      (*(v230 + 32))();
      v59 = v73;
      v58 = a2;
      *(v73 + v57) = 0;
      goto LABEL_157;
    case 1u:
      v71 = v42;
      v78 = v59;
      (*(v230 + 32))();
      v59 = v78;
      v58 = a2;
      *((v78 + v238) & 0xFFFFFFFFFFFFFFF8) = *(&v60[v238] & 0xFFFFFFFFFFFFFFF8);
      v79 = 1;
      goto LABEL_122;
    case 2u:
      v71 = v42;
      v82 = *v60;
      v59[2] = *(v60 + 2);
      *v59 = v82;
      v83 = 2;
      goto LABEL_132;
    case 3u:
      v71 = v42;
      *v59 = *v60;
      v83 = 3;
      goto LABEL_132;
    case 4u:
      v71 = v42;
      v78 = v59;
      (*(v229 + 32))();
      v59 = v78;
      v58 = a2;
      v79 = 4;
      goto LABEL_122;
    case 5u:
      v71 = v42;
      *v59 = *v60;
      v83 = 5;
LABEL_132:
      *(v59 + v57) = v83;
      goto LABEL_157;
    case 6u:
      v71 = v42;
      v112 = v59;
      (*(v254 + 32))();
      v89 = v112;
      v113 = ((v112 + v247) & v221);
      v114 = (&v60[v247] & v221);
      if (__swift_getEnumTagSinglePayload(v114, 1, v231))
      {
        memcpy(v113, v114, __na);
      }

      else
      {
        (*(v227 + 32))(v113, v114, v231);
        __swift_storeEnumTagSinglePayload(v113, 0, 1, v231);
      }

      v168 = ((v113 + v219) & 0xFFFFFFFFFFFFFFF8);
      v169 = ((v114 + v219) & 0xFFFFFFFFFFFFFFF8);
      *v168 = *v169;
      v170 = (v168 + 19) & 0xFFFFFFFFFFFFFFF8;
      v171 = (v169 + 19) & 0xFFFFFFFFFFFFFFF8;
      v172 = *v171;
      *(v170 + 4) = *(v171 + 4);
      *v170 = v172;
      v150 = 6;
      v59 = v112;
      goto LABEL_156;
    case 7u:
      v71 = v42;
      v88 = v59;
      (*(v254 + 32))();
      v89 = v88;
      v90 = ((v88 + v247) & v221);
      v91 = (&v60[v247] & v221);
      if (__swift_getEnumTagSinglePayload(v91, 1, v231))
      {
        memcpy(v90, v91, __na);
      }

      else
      {
        (*(v227 + 32))(v90, v91, v231);
        __swift_storeEnumTagSinglePayload(v90, 0, 1, v231);
      }

      v141 = ((v90 + v219) & 0xFFFFFFFFFFFFFFF8);
      v142 = ((v91 + v219) & 0xFFFFFFFFFFFFFFF8);
      *v141 = *v142;
      v143 = (v141 + 19) & 0xFFFFFFFFFFFFFFF8;
      v144 = (v142 + 19) & 0xFFFFFFFFFFFFFFF8;
      v145 = *v144;
      *(v143 + 4) = *(v144 + 4);
      *v143 = v145;
      v59 = v88;
      v146 = ((v88 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
      v147 = (&v60[v21 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v146 = *v147;
      v148 = ((v146 + 23) & 0xFFFFFFFFFFFFFFF8);
      v149 = ((v147 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v148 = *v149;
      *((v148 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v149 + 23) & 0xFFFFFFFFFFFFFFF8);
      v150 = 7;
LABEL_156:
      *(v89 + v57) = v150;
      v58 = a2;
      goto LABEL_157;
    case 8u:
      v118 = v59;
      (*(v228 + 32))();
      v119 = ((v118 + v26 + 7) & 0xFFFFFFFFFFFFFFF8);
      v120 = (&v60[v26 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v119 = *v120;
      v121 = ((v119 + v242) & v45);
      v122 = ((v120 + v242) & v45);
      v236 = v60;
      v71 = v42;
      if (v28 == v245)
      {
        v123 = v232;
        v124 = __swift_getEnumTagSinglePayload(v122, v28, v232);
        v125 = v247;
        if (!v124)
        {
          v126 = v221;
          v127 = ((v122 + v247) & v221);
          v128 = v231;
          v129 = v240;
          v130 = v254;
          goto LABEL_190;
        }

LABEL_192:
        memcpy(v121, v122, v21);
        v58 = a2;
        v97 = v251;
        v116 = v223;
        v117 = v225;
        v200 = v215;
        v199 = __na;
        v202 = v211;
        v201 = v213;
        v59 = v118;
        goto LABEL_195;
      }

      v125 = v247;
      v127 = ((v122 + v247) & v221);
      if (v30 == v245)
      {
        v129 = v240;
        v128 = v231;
        if (v240 < 2)
        {
          v123 = v232;
          goto LABEL_189;
        }

        v187 = __swift_getEnumTagSinglePayload((v122 + v247) & v221, v240, v231) >= 2;
      }

      else
      {
        v186 = *(((v127 + v219) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v186 >= 0xFFFFFFFF)
        {
          LODWORD(v186) = -1;
        }

        v187 = (v186 + 1) >= 2;
      }

      v123 = v232;
      if (v187)
      {
        goto LABEL_192;
      }

      v128 = v231;
      v129 = v240;
LABEL_189:
      v130 = v254;
      v126 = v221;
LABEL_190:
      (*(v130 + 32))(v121, v122, v123);
      if (__swift_getEnumTagSinglePayload(v127, 1, v128))
      {
        memcpy(((v121 + v125) & v126), v127, __na);
      }

      else
      {
        (*(v227 + 32))((v121 + v125) & v126, v127, v128);
        __swift_storeEnumTagSinglePayload((v121 + v125) & v126, 0, 1, v128);
      }

      v199 = __na;
      v203 = ((v219 + ((v121 + v125) & v126)) & 0xFFFFFFFFFFFFFFF8);
      v204 = ((v127 + v219) & 0xFFFFFFFFFFFFFFF8);
      *v203 = *v204;
      v205 = (v204 + 19) & 0xFFFFFFFFFFFFFFF8;
      v206 = *v205;
      v207 = (v203 + 19) & 0xFFFFFFFFFFFFFFF8;
      *(v207 + 4) = *(v205 + 4);
      *v207 = v206;
      v58 = a2;
      v97 = v251;
      v116 = v223;
      v117 = v225;
      v201 = v213;
      v200 = v215;
      v202 = v211;
      v208 = v226;
      v59 = v118;
      if (v129)
      {
LABEL_196:
        *((v121 + ((((v16 + 7 + v208) & 0xFFFFFFFFFFFFFFF8) + 19) | 5) + 7) & 0xFFFFFFFFFFFFFFF8) = *((v122 + ((((v16 + 7 + v208) & 0xFFFFFFFFFFFFFFF8) + 19) | 5) + 7) & 0xFFFFFFFFFFFFFFF8);
        v209 = (((v16 + 7 + v199) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
        if (v209 <= v200)
        {
          v209 = v200;
        }

        if (v201 > v209)
        {
          v209 = v201;
        }

        if (v202 > v209)
        {
          v209 = v202;
        }

        if (v253 > v209)
        {
          v209 = v253;
        }

        *(v59 + v209) = 8;
        v60 = v236;
LABEL_158:
        v173 = ((v59 + v116 + 7) & 0xFFFFFFFFFFFFFFF8);
        v174 = (&v60[v116 + 7] & 0xFFFFFFFFFFFFFFF8);
        *v173 = *v174;
        v175 = (v173 + 15) & 0xFFFFFFFFFFFFFFF8;
        v176 = (v174 + 15) & 0xFFFFFFFFFFFFFFF8;
        v177 = *v176;
        v178 = *(v176 + 16);
        *(v175 + 32) = *(v176 + 32);
        *v175 = v177;
        *(v175 + 16) = v178;
        *(v175 + 40) = *(v176 + 40);
        v179 = ((v117 + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
        v42 = v71;
        v180 = ((v71 + v179 + 7) & 0xFFFFFFFFFFFFFFF8);
        v181 = (&v58[v179 + 7] & 0xFFFFFFFFFFFFFFF8);
        v182 = *v181;
        v183 = v181[1];
        *(v180 + 25) = *(v181 + 25);
        *v180 = v182;
        v180[1] = v183;
        v167 = 3;
        goto LABEL_159;
      }

LABEL_195:
      v208 = v199;
      goto LABEL_196;
    case 9u:
      v71 = v42;
      v78 = v59;
      (*(v243 + 32))();
      v59 = v78;
      v58 = a2;
      v79 = 9;
LABEL_122:
      *(v78 + v57) = v79;
LABEL_157:
      v97 = v251;
      v116 = v223;
      v117 = v225;
      goto LABEL_158;
    default:
      v71 = v42;
      v115 = v59;
      v116 = v223;
      memcpy(v59, v60, v223);
      v59 = v115;
      v58 = a2;
      v97 = v251;
      v117 = v225;
      goto LABEL_158;
  }
}

unsigned __int8 *sub_1DCE85C94(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  v4 = sub_1DD0DB04C();
  v251 = *(v4 - 8);
  v252 = v4;
  v265 = *(v251 + 64);
  v248 = sub_1DD0DC76C();
  v261 = *(v248 - 8);
  v275 = v3;
  v247 = v261;
  v5 = *(v261 + 80);
  v243 = sub_1DD0DB1EC();
  v263 = *(v243 - 8);
  v242 = v263;
  v253 = *(v263 + 80) | v5;
  v249 = sub_1DD0DB4BC();
  v257 = *(v249 - 8);
  v276 = v257;
  v6 = *(v257 + 80) & 0xF8;
  v250 = sub_1DD0DB3EC();
  v7 = *(v250 - 8);
  v8 = *(v7 + 80);
  v9 = v6 | v8 | 7;
  v241 = sub_1DD0DD12C();
  v255 = *(v241 - 8);
  v240 = v255;
  v10 = *(v255 + 80);
  v11 = sub_1DD0DD08C();
  v12 = v9;
  v239 = v11;
  v13 = v11;
  v14 = v8;
  v15 = *(v13 - 8);
  v238 = v15;
  v16 = (v253 | (v10 | *(v15 + 80))) & 0xF8 | v9;
  v266 = v265 + v16;
  v17 = *(v261 + 64);
  v237 = v17 + 7;
  if (((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v17)
  {
    v17 = ((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v17 <= *(v263 + 64))
  {
    v17 = *(v263 + 64);
  }

  if (v17 <= 0x18)
  {
    v18 = 24;
  }

  else
  {
    v18 = v17;
  }

  v264 = *(v257 + 64) + v8;
  v232 = v7;
  v19 = *(v7 + 84);
  v20 = *(v7 + 64);
  v3 = v275;
  v231 = v20;
  if (!v19)
  {
    ++v20;
  }

  v254 = v20;
  v262 = v20 + 7;
  v245 = v264 & ~v8;
  v21 = (v20 + 7 + v245) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  v228 = v18;
  if (v22 <= v18)
  {
    v23 = v18;
  }

  else
  {
    v23 = (v21 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v24 = v21 + 31;
  v230 = (((((v24 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v230 > v23)
  {
    v23 = (((((v24 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v234 = *(v255 + 64);
  v235 = v9 + 16;
  v25 = *(v257 + 84);
  v244 = *(v7 + 84);
  v142 = v19 != 0;
  v26 = v19 - 1;
  if (v142)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v27 <= v25)
  {
    v28 = *(v257 + 84);
  }

  else
  {
    v28 = v27;
  }

  if (v28 <= 0x7FFFFFFE)
  {
    v28 = 2147483646;
  }

  v236 = v28;
  v29 = ((v24 + ((v9 + 16 + ((v234 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v229 = v29;
  if (v29 <= v23)
  {
    v29 = v23;
  }

  v30 = *(v15 + 64);
  v227 = v30;
  if (v30 <= v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = v30;
  }

  v32 = (v31 + (v266 & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8;
  v258 = *(a3 + 24);
  v256 = *(v258 - 8);
  if (*(v256 + 64) <= 9uLL)
  {
    v33 = 9;
  }

  else
  {
    v33 = *(*(v258 - 8) + 64);
  }

  if (((v32 + 63) & 0xFFFFFFFFFFFFFFF8) + 41 <= v33 + 1)
  {
    v34 = v33 + 1;
  }

  else
  {
    v34 = ((v32 + 63) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  if (v34 <= 0x29)
  {
    v35 = 41;
  }

  else
  {
    v35 = v34;
  }

  v36 = v275[v35];
  v37 = v36 - 7;
  if (v36 < 7)
  {
    v39 = a2;
  }

  else
  {
    if (v35 <= 3)
    {
      v38 = v35;
    }

    else
    {
      v38 = 4;
    }

    v39 = a2;
    switch(v38)
    {
      case 1:
        v40 = *v275;
        goto LABEL_48;
      case 2:
        v40 = *v275;
        goto LABEL_48;
      case 3:
        v40 = *v275 | (v275[2] << 16);
        goto LABEL_48;
      case 4:
        v40 = *v275;
LABEL_48:
        if (v35 < 4)
        {
          v40 |= v37 << (8 * v35);
        }

        v36 = v40 + 7;
        break;
      default:
        break;
    }
  }

  v41 = ~v16;
  v272 = ~v14;
  v274 = v31 + 1;
  v233 = ~v12;
  v246 = 8 * v33;
  switch(v36)
  {
    case 0u:
    case 1u:
    case 4u:
      v42 = *v275;
      goto LABEL_132;
    case 2u:
      (*(v251 + 8))(v275, v252);
      v43 = (&v275[v266] & v41);
      v48 = v43[v31];
      v49 = v48 - 10;
      if (v48 >= 0xA)
      {
        if (v31 <= 3)
        {
          v50 = v31;
        }

        else
        {
          v50 = 4;
        }

        switch(v50)
        {
          case 1:
            v51 = *v43;
            goto LABEL_82;
          case 2:
            v51 = *v43;
            goto LABEL_82;
          case 3:
            v51 = *v43 | (*((&v275[v266] & v41) + 2) << 16);
            goto LABEL_82;
          case 4:
            v51 = *v43;
LABEL_82:
            if (v31 < 4)
            {
              v48 = (v51 | (v49 << (8 * v31))) + 10;
            }

            else
            {
              v48 = v51 + 10;
            }

            break;
          default:
            break;
        }
      }

      v226 = v32;
      switch(v48)
      {
        case 0u:
          goto LABEL_86;
        case 1u:
          goto LABEL_97;
        case 2u:
          goto LABEL_90;
        case 3u:
          goto LABEL_91;
        case 4u:
          goto LABEL_87;
        case 5u:
          goto LABEL_98;
        case 6u:
          goto LABEL_100;
        case 7u:
          goto LABEL_92;
        case 8u:
          goto LABEL_104;
        case 9u:
          goto LABEL_88;
        default:
          goto LABEL_129;
      }

      goto LABEL_129;
    case 3u:
      (*(v251 + 8))(v275, v252);
      v43 = (&v275[v266] & v41);
      v44 = v43[v31];
      v45 = v44 - 10;
      if (v44 >= 0xA)
      {
        if (v31 <= 3)
        {
          v46 = v31;
        }

        else
        {
          v46 = 4;
        }

        switch(v46)
        {
          case 1:
            v47 = *v43;
            goto LABEL_74;
          case 2:
            v47 = *v43;
            goto LABEL_74;
          case 3:
            v47 = *v43 | (*((&v275[v266] & v41) + 2) << 16);
            goto LABEL_74;
          case 4:
            v47 = *v43;
LABEL_74:
            if (v31 < 4)
            {
              v44 = (v47 | (v45 << (8 * v31))) + 10;
            }

            else
            {
              v44 = v47 + 10;
            }

            break;
          default:
            goto LABEL_77;
        }
      }

      break;
    case 5u:
      v52 = v275[v33];
      v53 = v52 - 2;
      if (v52 >= 2)
      {
        if (v33 <= 3)
        {
          v54 = v33;
        }

        else
        {
          v54 = 4;
        }

        switch(v54)
        {
          case 1:
            v55 = *v275;
            goto LABEL_109;
          case 2:
            v55 = *v275;
            goto LABEL_109;
          case 3:
            v55 = *v275 | (v275[2] << 16);
            goto LABEL_109;
          case 4:
            v55 = *v275;
LABEL_109:
            if (v33 < 4)
            {
              v52 = (v55 | (v53 << v246)) + 2;
            }

            else
            {
              v52 = v55 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v52 == 1)
      {
        goto LABEL_115;
      }

      if (!v52)
      {
        (*(v256 + 8))(v275, v258);
      }

      goto LABEL_133;
    case 6u:
LABEL_115:

      goto LABEL_133;
    default:
      goto LABEL_133;
  }

LABEL_77:
  v226 = v32;
  switch(v44)
  {
    case 0u:
LABEL_86:
      v57 = v247;
      v56 = v248;
      goto LABEL_89;
    case 1u:
LABEL_97:
      v58 = v43;
      (*(v247 + 8))(v43, v248);
      v70 = *(&v58[v237] & 0xFFFFFFFFFFFFFFF8);

      goto LABEL_99;
    case 2u:
LABEL_90:
      v58 = v43;
      v59 = *(v43 + 1);

      v60 = *(v58 + 2);

      goto LABEL_99;
    case 3u:
LABEL_91:
      v58 = v43;
      v61 = *v43;
      swift_unknownObjectRelease();
      goto LABEL_99;
    case 4u:
LABEL_87:
      v57 = v242;
      v56 = v243;
      goto LABEL_89;
    case 5u:
LABEL_98:
      v58 = v43;

      goto LABEL_99;
    case 6u:
LABEL_100:
      v71 = v43;
      (*(v276 + 8))(v43, v249);
      v225 = v71;
      v72 = &v71[v264] & v272;
      if (!__swift_getEnumTagSinglePayload(v72, 1, v250))
      {
        (*(v232 + 8))(v72, v250);
      }

      v69 = v262 + v72;
      goto LABEL_103;
    case 7u:
LABEL_92:
      v62 = v43;
      (*(v276 + 8))(v43, v249);
      v224 = &v62[v264] & v272;
      if (!__swift_getEnumTagSinglePayload(v224, 1, v250))
      {
        (*(v232 + 8))(v224, v250);
      }

      v63 = 7;
      if (!v244)
      {
        v63 = 8;
      }

      v64 = *(((v231 + v63 + v224) & 0xFFFFFFFFFFFFFFF8) + 8);

      v225 = v62;
      v65 = &v62[((((v245 + v254 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 12] & 0xFFFFFFFFFFFFFFF8;
      v66 = *(v65 + 8);

      v67 = (v65 + 23) & 0xFFFFFFFFFFFFFFF8;
      v68 = *(v67 + 8);

      v69 = v67 + 23;
LABEL_103:
      v73 = *((v69 & 0xFFFFFFFFFFFFFFF8) + 8);

      goto LABEL_128;
    case 8u:
LABEL_104:
      v74 = v43;
      (*(v240 + 8))(v43, v241);
      v225 = v74;
      v75 = &v74[v234 + 7] & 0xFFFFFFFFFFFFFFF8;
      v76 = *(v75 + 8);

      v77 = (v235 + v75) & v233;
      if (v25 == v236)
      {
        if (__swift_getEnumTagSinglePayload(v77, v25, v249))
        {
          goto LABEL_127;
        }

        v223 = (v264 + v77) & v272;
        goto LABEL_124;
      }

      if (v27 == v236)
      {
        v223 = (v264 + v77) & v272;
        if (v244 >= 2 && __swift_getEnumTagSinglePayload(v223, v244, v250) >= 2)
        {
          goto LABEL_127;
        }

        goto LABEL_124;
      }

      v78 = *(((v262 + ((v264 + v77) & v272)) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v78 >= 0xFFFFFFFF)
      {
        LODWORD(v78) = -1;
      }

      if ((v78 + 1) < 2)
      {
        v223 = (v264 + v77) & v272;
LABEL_124:
        (*(v276 + 8))(v77, v249);
        if (!__swift_getEnumTagSinglePayload(v223, 1, v250))
        {
          (*(v232 + 8))(v223, v250);
        }

        v79 = *(((v262 + v223) & 0xFFFFFFFFFFFFFFF8) + 8);
      }

LABEL_127:

LABEL_128:
      v43 = v225;
LABEL_129:
      v80 = &v43[v274 + 7];
      v82 = (v80 & 0xFFFFFFFFFFFFFFF8) + 15;
      v81 = *(v80 & 0xFFFFFFFFFFFFFFF8);

      if (*((v82 & 0xFFFFFFFFFFFFFFF8) + 24) >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v82 & 0xFFFFFFFFFFFFFFF8));
      }

      v32 = v226;
      v83 = *(&v275[((v226 + 15) & 0xFFFFFFFFFFFFFFF8) + 48] & 0xFFFFFFFFFFFFFFF8);
LABEL_132:

LABEL_133:
      v84 = v39[v35];
      v85 = v84 - 7;
      if (v84 >= 7)
      {
        if (v35 <= 3)
        {
          v86 = v35;
        }

        else
        {
          v86 = 4;
        }

        switch(v86)
        {
          case 1:
            v87 = *v39;
            goto LABEL_142;
          case 2:
            v87 = *v39;
            goto LABEL_142;
          case 3:
            v87 = *v39 | (v39[2] << 16);
            goto LABEL_142;
          case 4:
            v87 = *v39;
LABEL_142:
            if (v35 < 4)
            {
              v84 = (v87 | (v85 << (8 * v35))) + 7;
            }

            else
            {
              v84 = v87 + 7;
            }

            break;
          default:
            goto LABEL_145;
        }
      }

      break;
    case 9u:
LABEL_88:
      v57 = v238;
      v56 = v239;
LABEL_89:
      v58 = v43;
      (*(v57 + 8))(v43, v56);
LABEL_99:
      v43 = v58;
      goto LABEL_129;
    default:
      goto LABEL_129;
  }

LABEL_145:
  switch(v84)
  {
    case 0u:
      v88 = *(v39 + 1);
      *v275 = *v39;
      *(v275 + 1) = v88;
      *(v275 + 25) = *(v39 + 25);
      v275[v35] = 0;
      return v3;
    case 1u:
      v104 = *(v39 + 1);
      *v275 = *v39;
      *(v275 + 1) = v104;
      *(v275 + 25) = *(v39 + 25);
      v90 = 1;
      goto LABEL_243;
    case 2u:
      (*(v251 + 32))(v275, v39, v252);
      v91 = (&v275[v266] & v41);
      v92 = (&v39[v266] & v41);
      v93 = v92[v31];
      v94 = v93 - 10;
      if (v93 >= 0xA)
      {
        if (v31 <= 3)
        {
          v95 = v31;
        }

        else
        {
          v95 = 4;
        }

        switch(v95)
        {
          case 1:
            v96 = *v92;
            goto LABEL_175;
          case 2:
            v96 = *v92;
            goto LABEL_175;
          case 3:
            v96 = *v92 | (*((&v39[v266] & v41) + 2) << 16);
            goto LABEL_175;
          case 4:
            v96 = *v92;
LABEL_175:
            if (v31 < 4)
            {
              v93 = (v96 | (v94 << (8 * v31))) + 10;
            }

            else
            {
              v93 = v96 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v93)
      {
        case 0u:
          (*(v247 + 32))(&v275[v266] & v41, &v39[v266] & v41, v248);
          v91 = (&v275[v266] & v41);
          *(v91 + v31) = 0;
          goto LABEL_238;
        case 1u:
          v109 = (&v275[v266] & v41);
          (*(v247 + 32))(v109, &v39[v266] & v41, v248);
          v91 = v109;
          *((v109 + v237) & 0xFFFFFFFFFFFFFFF8) = *(&v92[v237] & 0xFFFFFFFFFFFFFFF8);
          v110 = 1;
          goto LABEL_209;
        case 2u:
          v113 = *v92;
          *((&v275[v266] & v41) + 0x10) = *((&v39[v266] & v41) + 0x10);
          *v91 = v113;
          v114 = 2;
          goto LABEL_237;
        case 3u:
          *v91 = *v92;
          v114 = 3;
          goto LABEL_237;
        case 4u:
          v109 = (&v275[v266] & v41);
          (*(v242 + 32))(v109, &v39[v266] & v41, v243);
          v91 = v109;
          v110 = 4;
          goto LABEL_209;
        case 5u:
          *v91 = *v92;
          v114 = 5;
          goto LABEL_237;
        case 6u:
          (*(v276 + 32))(&v275[v266] & v41, &v39[v266] & v41, v249);
          v121 = &v275[v266] & v41;
          v122 = ((v264 + v121) & v272);
          v123 = (&v92[v264] & v272);
          if (__swift_getEnumTagSinglePayload(v123, 1, v250))
          {
            memcpy(v122, v123, v254);
          }

          else
          {
            (*(v232 + 32))(v122, v123, v250);
            __swift_storeEnumTagSinglePayload(v122, 0, 1, v250);
          }

          v184 = ((v122 + v262) & 0xFFFFFFFFFFFFFFF8);
          v185 = ((v123 + v262) & 0xFFFFFFFFFFFFFFF8);
          *v184 = *v185;
          v186 = (v184 + 19) & 0xFFFFFFFFFFFFFFF8;
          v187 = (v185 + 19) & 0xFFFFFFFFFFFFFFF8;
          v188 = *v187;
          *(v186 + 4) = *(v187 + 4);
          *v186 = v188;
          v91 = (&v275[v266] & v41);
          *(v121 + v31) = 6;
          goto LABEL_238;
        case 7u:
          (*(v276 + 32))(&v275[v266] & v41, &v39[v266] & v41, v249);
          v267 = (&v275[v266] & v41);
          v117 = ((v267 + v264) & v272);
          v118 = (&v92[v264] & v272);
          if (__swift_getEnumTagSinglePayload(v118, 1, v250))
          {
            memcpy(v117, v118, v254);
          }

          else
          {
            (*(v232 + 32))(v117, v118, v250);
            __swift_storeEnumTagSinglePayload(v117, 0, 1, v250);
          }

          v144 = ((v117 + v262) & 0xFFFFFFFFFFFFFFF8);
          v145 = ((v118 + v262) & 0xFFFFFFFFFFFFFFF8);
          *v144 = *v145;
          v146 = (v144 + 19) & 0xFFFFFFFFFFFFFFF8;
          v147 = (v145 + 19) & 0xFFFFFFFFFFFFFFF8;
          v148 = *v147;
          *(v146 + 4) = *(v147 + 4);
          *v146 = v148;
          v91 = v267;
          v149 = ((v267 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
          v150 = (&v92[v22 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v149 = *v150;
          v151 = ((v149 + 23) & 0xFFFFFFFFFFFFFFF8);
          v152 = ((v150 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v151 = *v152;
          *((v151 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v152 + 23) & 0xFFFFFFFFFFFFFFF8);
          v114 = 7;
LABEL_237:
          *(v91 + v31) = v114;
          goto LABEL_238;
        case 8u:
          v269 = (&v275[v266] & v41);
          (*(v240 + 32))(v91, v92, v241);
          v124 = ((v269 + v234 + 7) & 0xFFFFFFFFFFFFFFF8);
          v125 = (&v92[v234 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v124 = *v125;
          v259 = ((v124 + v235) & v233);
          v126 = ((v125 + v235) & v233);
          if (v25 == v236)
          {
            v127 = v254;
            v128 = ((v124 + v235) & v233);
            if (!__swift_getEnumTagSinglePayload(v126, v25, v249))
            {
              v129 = v264;
              v130 = ((v126 + v264) & v272);
              v131 = v250;
LABEL_255:
              (*(v276 + 32))(v128, v126, v249);
              v195 = ((v128 + v129) & v272);
              if (__swift_getEnumTagSinglePayload(v130, 1, v131))
              {
                v127 = v254;
                memcpy(v195, v130, v254);
                v196 = v227;
              }

              else
              {
                (*(v232 + 32))(v195, v130, v131);
                __swift_storeEnumTagSinglePayload(v195, 0, 1, v131);
                v196 = v227;
                v127 = v254;
              }

              v207 = ((v195 + v262) & 0xFFFFFFFFFFFFFFF8);
              v208 = ((v130 + v262) & 0xFFFFFFFFFFFFFFF8);
              *v207 = *v208;
              v209 = (v208 + 19) & 0xFFFFFFFFFFFFFFF8;
              v210 = *v209;
              v211 = (v207 + 19) & 0xFFFFFFFFFFFFFFF8;
              *(v211 + 4) = *(v209 + 4);
              *v211 = v210;
              v198 = v228;
              v197 = v229;
              v199 = v230;
              v212 = v231;
              v91 = v269;
              v128 = v259;
              if (!v244)
              {
                goto LABEL_269;
              }

LABEL_270:
              v213 = (((v245 + 7 + v212) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
              *((v128 + v213 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v126 + v213 + 7) & 0xFFFFFFFFFFFFFFF8);
              v214 = (((v245 + 7 + v127) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
              if (v214 <= v198)
              {
                v214 = v198;
              }

              if (v199 > v214)
              {
                v214 = v199;
              }

              if (v197 > v214)
              {
                v214 = v197;
              }

              if (v196 > v214)
              {
                v214 = v196;
              }

              *(v91 + v214) = 8;
LABEL_238:
              v153 = ((v91 + v274 + 7) & 0xFFFFFFFFFFFFFFF8);
              v154 = (&v92[v274 + 7] & 0xFFFFFFFFFFFFFFF8);
              *v153 = *v154;
              v155 = (v153 + 15) & 0xFFFFFFFFFFFFFFF8;
              v156 = (v154 + 15) & 0xFFFFFFFFFFFFFFF8;
              v157 = *v156;
              v158 = *(v156 + 16);
              *(v155 + 32) = *(v156 + 32);
              *v155 = v157;
              *(v155 + 16) = v158;
              *(v155 + 40) = *(v156 + 40);
              v159 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
              v160 = (&v275[v159 + 7] & 0xFFFFFFFFFFFFFFF8);
              v161 = (&v39[v159 + 7] & 0xFFFFFFFFFFFFFFF8);
              v162 = *v161;
              v163 = v161[1];
              *(v160 + 25) = *(v161 + 25);
              *v160 = v162;
              v160[1] = v163;
              v90 = 2;
              goto LABEL_243;
            }

LABEL_257:
            memcpy(v128, v126, v22);
            v198 = v228;
            v197 = v229;
            v199 = v230;
            v196 = v227;
            v91 = v269;
LABEL_269:
            v212 = v127;
            goto LABEL_270;
          }

          v130 = ((v126 + v264) & v272);
          if (v27 == v236)
          {
            v131 = v250;
            v128 = ((v124 + v235) & v233);
            if (v244 < 2)
            {
              goto LABEL_254;
            }

            v142 = __swift_getEnumTagSinglePayload((v126 + v264) & v272, v244, v250) >= 2;
          }

          else
          {
            v128 = ((v124 + v235) & v233);
            v194 = *(((v130 + v262) & 0xFFFFFFFFFFFFFFF8) + 8);
            if (v194 >= 0xFFFFFFFF)
            {
              LODWORD(v194) = -1;
            }

            v142 = (v194 + 1) >= 2;
          }

          v127 = v254;
          if (v142)
          {
            goto LABEL_257;
          }

          v131 = v250;
LABEL_254:
          v129 = v264;
          goto LABEL_255;
        case 9u:
          v109 = (&v275[v266] & v41);
          (*(v238 + 32))(v109, &v39[v266] & v41, v239);
          v91 = v109;
          v110 = 9;
LABEL_209:
          *(v109 + v31) = v110;
          goto LABEL_238;
        default:
          memcpy((&v275[v266] & v41), (&v39[v266] & v41), v274);
          v91 = (&v275[v266] & v41);
          goto LABEL_238;
      }

    case 3u:
      (*(v251 + 32))(v275, v39, v252);
      v97 = (&v275[v266] & v41);
      v98 = (&v39[v266] & v41);
      v99 = v98[v31];
      v100 = v99 - 10;
      if (v99 >= 0xA)
      {
        if (v31 <= 3)
        {
          v101 = v31;
        }

        else
        {
          v101 = 4;
        }

        switch(v101)
        {
          case 1:
            v102 = *v98;
            goto LABEL_183;
          case 2:
            v102 = *v98;
            goto LABEL_183;
          case 3:
            v102 = *v98 | (*((&v39[v266] & v41) + 2) << 16);
            goto LABEL_183;
          case 4:
            v102 = *v98;
LABEL_183:
            if (v31 < 4)
            {
              v99 = (v102 | (v100 << (8 * v31))) + 10;
            }

            else
            {
              v99 = v102 + 10;
            }

            break;
          default:
            goto LABEL_186;
        }
      }

      break;
    case 4u:
      v89 = *(v39 + 1);
      *v275 = *v39;
      *(v275 + 1) = v89;
      *(v275 + 25) = *(v39 + 25);
      v90 = 4;
      goto LABEL_243;
    case 5u:
      v105 = v39[v33];
      v106 = v105 - 2;
      if (v105 >= 2)
      {
        if (v33 <= 3)
        {
          v107 = v33;
        }

        else
        {
          v107 = 4;
        }

        switch(v107)
        {
          case 1:
            v108 = *v39;
            goto LABEL_190;
          case 2:
            v108 = *v39;
            goto LABEL_190;
          case 3:
            v108 = *v39 | (v39[2] << 16);
            goto LABEL_190;
          case 4:
            v108 = *v39;
LABEL_190:
            if (v33 < 4)
            {
              v105 = (v108 | (v106 << v246)) + 2;
            }

            else
            {
              v105 = v108 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v105 == 1)
      {
        *v275 = *v39;
        v275[8] = v39[8];
        v275[v33] = 1;
      }

      else if (v105)
      {
        memcpy(v275, v39, v33 + 1);
      }

      else
      {
        (*(v256 + 32))(v275, v39, v258);
        v275[v33] = 0;
      }

      v90 = 5;
      goto LABEL_243;
    case 6u:
      *v275 = *v39;
      v275[8] = v39[8];
      v90 = 6;
      goto LABEL_243;
    default:

      return memcpy(v275, v39, v35 + 1);
  }

LABEL_186:
  switch(v99)
  {
    case 0u:
      (*(v247 + 32))(&v275[v266] & v41, &v39[v266] & v41, v248);
      v97 = (&v275[v266] & v41);
      *(v97 + v31) = 0;
      goto LABEL_242;
    case 1u:
      v111 = (&v275[v266] & v41);
      (*(v247 + 32))(v111, &v39[v266] & v41, v248);
      v97 = v111;
      *((v111 + v237) & 0xFFFFFFFFFFFFFFF8) = *(&v98[v237] & 0xFFFFFFFFFFFFFFF8);
      v112 = 1;
      goto LABEL_214;
    case 2u:
      v115 = *v98;
      *((&v275[v266] & v41) + 0x10) = *((&v39[v266] & v41) + 0x10);
      *v97 = v115;
      v116 = 2;
      goto LABEL_241;
    case 3u:
      *v97 = *v98;
      v116 = 3;
      goto LABEL_241;
    case 4u:
      v111 = (&v275[v266] & v41);
      (*(v242 + 32))(v111, &v39[v266] & v41, v243);
      v97 = v111;
      v112 = 4;
      goto LABEL_214;
    case 5u:
      *v97 = *v98;
      v116 = 5;
      goto LABEL_241;
    case 6u:
      (*(v276 + 32))(&v275[v266] & v41, &v39[v266] & v41, v249);
      v132 = &v275[v266] & v41;
      v133 = ((v264 + v132) & v272);
      v134 = (&v98[v264] & v272);
      if (__swift_getEnumTagSinglePayload(v134, 1, v250))
      {
        memcpy(v133, v134, v254);
      }

      else
      {
        (*(v232 + 32))(v133, v134, v250);
        __swift_storeEnumTagSinglePayload(v133, 0, 1, v250);
      }

      v189 = ((v133 + v262) & 0xFFFFFFFFFFFFFFF8);
      v190 = ((v134 + v262) & 0xFFFFFFFFFFFFFFF8);
      *v189 = *v190;
      v191 = (v189 + 19) & 0xFFFFFFFFFFFFFFF8;
      v192 = (v190 + 19) & 0xFFFFFFFFFFFFFFF8;
      v193 = *v192;
      *(v191 + 4) = *(v192 + 4);
      *v191 = v193;
      v97 = (&v275[v266] & v41);
      *(v132 + v31) = 6;
      goto LABEL_242;
    case 7u:
      (*(v276 + 32))(&v275[v266] & v41, &v39[v266] & v41, v249);
      v268 = (&v275[v266] & v41);
      v119 = ((v268 + v264) & v272);
      v120 = (&v98[v264] & v272);
      if (__swift_getEnumTagSinglePayload(v120, 1, v250))
      {
        memcpy(v119, v120, v254);
      }

      else
      {
        (*(v232 + 32))(v119, v120, v250);
        __swift_storeEnumTagSinglePayload(v119, 0, 1, v250);
      }

      v164 = ((v119 + v262) & 0xFFFFFFFFFFFFFFF8);
      v165 = ((v120 + v262) & 0xFFFFFFFFFFFFFFF8);
      *v164 = *v165;
      v166 = (v164 + 19) & 0xFFFFFFFFFFFFFFF8;
      v167 = (v165 + 19) & 0xFFFFFFFFFFFFFFF8;
      v168 = *v167;
      *(v166 + 4) = *(v167 + 4);
      *v166 = v168;
      v97 = v268;
      v169 = ((v268 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
      v170 = (&v98[v22 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v169 = *v170;
      v171 = ((v169 + 23) & 0xFFFFFFFFFFFFFFF8);
      v172 = ((v170 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v171 = *v172;
      *((v171 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v172 + 23) & 0xFFFFFFFFFFFFFFF8);
      v116 = 7;
LABEL_241:
      *(v97 + v31) = v116;
      goto LABEL_242;
    case 8u:
      v270 = (&v275[v266] & v41);
      (*(v240 + 32))(v97, v98, v241);
      v135 = ((v270 + v234 + 7) & 0xFFFFFFFFFFFFFFF8);
      v136 = (&v98[v234 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v135 = *v136;
      v260 = ((v135 + v235) & v233);
      v137 = ((v136 + v235) & v233);
      if (v25 == v236)
      {
        v138 = v254;
        if (!__swift_getEnumTagSinglePayload(v137, v25, v249))
        {
          v139 = v264;
          v140 = ((v137 + v264) & v272);
          v141 = v250;
          goto LABEL_264;
        }

LABEL_266:
        v203 = v260;
        memcpy(v260, v137, v22);
        v205 = v228;
        v204 = v229;
        v206 = v230;
        v202 = v227;
        v97 = v270;
LABEL_281:
        v220 = v138;
        goto LABEL_282;
      }

      v140 = ((v137 + v264) & v272);
      if (v27 == v236)
      {
        v141 = v250;
        if (v244 < 2)
        {
          goto LABEL_263;
        }

        v143 = __swift_getEnumTagSinglePayload((v137 + v264) & v272, v244, v250) >= 2;
      }

      else
      {
        v200 = *(((v140 + v262) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v200 >= 0xFFFFFFFF)
        {
          LODWORD(v200) = -1;
        }

        v143 = (v200 + 1) >= 2;
      }

      v138 = v254;
      if (v143)
      {
        goto LABEL_266;
      }

      v141 = v250;
LABEL_263:
      v139 = v264;
LABEL_264:
      (*(v276 + 32))(v260, v137, v249);
      v201 = ((v260 + v139) & v272);
      if (__swift_getEnumTagSinglePayload(v140, 1, v141))
      {
        v138 = v254;
        memcpy(v201, v140, v254);
        v202 = v227;
      }

      else
      {
        (*(v232 + 32))(v201, v140, v141);
        __swift_storeEnumTagSinglePayload(v201, 0, 1, v141);
        v202 = v227;
        v138 = v254;
      }

      v215 = ((v201 + v262) & 0xFFFFFFFFFFFFFFF8);
      v216 = ((v140 + v262) & 0xFFFFFFFFFFFFFFF8);
      *v215 = *v216;
      v217 = (v216 + 19) & 0xFFFFFFFFFFFFFFF8;
      v218 = *v217;
      v219 = (v215 + 19) & 0xFFFFFFFFFFFFFFF8;
      *(v219 + 4) = *(v217 + 4);
      *v219 = v218;
      v205 = v228;
      v204 = v229;
      v206 = v230;
      v220 = v231;
      v97 = v270;
      v203 = v260;
      if (!v244)
      {
        goto LABEL_281;
      }

LABEL_282:
      v221 = (((v245 + 7 + v220) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
      *((v203 + v221 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v137 + v221 + 7) & 0xFFFFFFFFFFFFFFF8);
      v222 = (((v245 + 7 + v138) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
      if (v222 <= v205)
      {
        v222 = v205;
      }

      if (v206 > v222)
      {
        v222 = v206;
      }

      if (v204 > v222)
      {
        v222 = v204;
      }

      if (v202 > v222)
      {
        v222 = v202;
      }

      *(v97 + v222) = 8;
LABEL_242:
      v173 = ((v97 + v274 + 7) & 0xFFFFFFFFFFFFFFF8);
      v174 = (&v98[v274 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v173 = *v174;
      v175 = (v173 + 15) & 0xFFFFFFFFFFFFFFF8;
      v176 = (v174 + 15) & 0xFFFFFFFFFFFFFFF8;
      v177 = *v176;
      v178 = *(v176 + 16);
      *(v175 + 32) = *(v176 + 32);
      *v175 = v177;
      *(v175 + 16) = v178;
      *(v175 + 40) = *(v176 + 40);
      v179 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
      v180 = (&v275[v179 + 7] & 0xFFFFFFFFFFFFFFF8);
      v181 = (&v39[v179 + 7] & 0xFFFFFFFFFFFFFFF8);
      v182 = *v181;
      v183 = v181[1];
      *(v180 + 25) = *(v181 + 25);
      *v180 = v182;
      v180[1] = v183;
      v90 = 3;
LABEL_243:
      v275[v35] = v90;
      return v3;
    case 9u:
      v111 = (&v275[v266] & v41);
      (*(v238 + 32))(v111, &v39[v266] & v41, v239);
      v97 = v111;
      v112 = 9;
LABEL_214:
      *(v111 + v31) = v112;
      goto LABEL_242;
    default:
      memcpy((&v275[v266] & v41), (&v39[v266] & v41), v274);
      v97 = (&v275[v266] & v41);
      goto LABEL_242;
  }
}

uint64_t sub_1DCE87850(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v35 = *(*(sub_1DD0DB04C() - 8) + 64);
  v32 = *(sub_1DD0DC76C() - 8);
  v3 = *(v32 + 80);
  v33 = *(sub_1DD0DB1EC() - 8);
  v29 = *(v33 + 80) | v3;
  v31 = *(sub_1DD0DB4BC() - 8);
  v4 = *(v31 + 80) & 0xF8;
  v5 = *(sub_1DD0DB3EC() - 8);
  v6 = *(v5 + 80);
  v7 = v4 | v6 | 7;
  v30 = *(sub_1DD0DD12C() - 8);
  v8 = *(v30 + 80);
  v9 = *(sub_1DD0DD08C() - 8);
  v10 = (v29 | (v8 | *(v9 + 80))) & 0xF8 | v7;
  v11 = (v35 + v10) & ~v10;
  v12 = *(v32 + 64);
  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v12)
  {
    v12 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v12 <= *(v33 + 64))
  {
    v12 = *(v33 + 64);
  }

  v13 = *(v5 + 64) + ((*(v31 + 64) + v6) & ~v6);
  if (!*(v5 + 84))
  {
    ++v13;
  }

  v14 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 19) | 5;
  if (v12 <= v15)
  {
    v12 = (v14 + 19) | 5;
  }

  v16 = ((((((v14 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 <= v16)
  {
    v12 = v16;
  }

  if (v12 <= ((v15 + ((v7 + ((*(v30 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v12 = ((v15 + ((v7 + ((*(v30 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v17 = *(v9 + 64);
  if (v12 > v17)
  {
    v17 = v12;
  }

  if (v17 <= 0x18)
  {
    v17 = 24;
  }

  v18 = ((((v11 + v17 + 8) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 41;
  v19 = *(*(*(a3 + 24) - 8) + 64);
  if (v19 <= 9)
  {
    v19 = 9;
  }

  if (v18 <= v19 + 1)
  {
    v18 = v19 + 1;
  }

  v20 = 41;
  if (v18 > 0x29)
  {
    v20 = v18;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_42;
  }

  v21 = v20 + 1;
  v22 = 8 * (v20 + 1);
  if ((v20 + 1) <= 3)
  {
    v25 = ((a2 + ~(-1 << v22) - 248) >> v22) + 1;
    if (HIWORD(v25))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_42;
      }

      goto LABEL_34;
    }

    if (v25 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_42;
      }

      goto LABEL_34;
    }

    if (v25 < 2)
    {
LABEL_42:
      v27 = *(a1 + v20);
      if (v27 >= 8)
      {
        return (v27 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_42;
  }

LABEL_34:
  v26 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v26 = 0;
  }

  if (v21)
  {
    if (v21 > 3)
    {
      LODWORD(v21) = 4;
    }

    switch(v21)
    {
      case 2:
        LODWORD(v21) = *a1;
        break;
      case 3:
        LODWORD(v21) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v21) = *a1;
        break;
      default:
        LODWORD(v21) = *a1;
        break;
    }
  }

  return (v21 | v26) + 249;
}

void sub_1DCE87CD0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v37 = *(*(sub_1DD0DB04C() - 8) + 64);
  v34 = *(sub_1DD0DC76C() - 8);
  v4 = *(v34 + 80);
  v35 = *(sub_1DD0DB1EC() - 8);
  v31 = *(v35 + 80) | v4;
  v33 = *(sub_1DD0DB4BC() - 8);
  v5 = *(v33 + 80) & 0xF8;
  v6 = *(sub_1DD0DB3EC() - 8);
  v7 = *(v6 + 80);
  v8 = v5 | v7 | 7;
  v32 = *(sub_1DD0DD12C() - 8);
  v9 = *(v32 + 80);
  v10 = *(sub_1DD0DD08C() - 8);
  v11 = (v31 | (v9 | *(v10 + 80))) & 0xF8 | v8;
  v12 = (v37 + v11) & ~v11;
  v13 = *(v34 + 64);
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v13 <= *(v35 + 64))
  {
    v13 = *(v35 + 64);
  }

  v14 = *(v6 + 64) + ((*(v33 + 64) + v7) & ~v7);
  if (!*(v6 + 84))
  {
    ++v14;
  }

  v15 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 19) | 5;
  if (v13 <= v16)
  {
    v13 = (v15 + 19) | 5;
  }

  v17 = ((((((v15 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 <= v17)
  {
    v13 = v17;
  }

  if (v13 <= ((v16 + ((v8 + ((*(v32 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v13 = ((v16 + ((v8 + ((*(v32 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v18 = *(v10 + 64);
  if (v13 > v18)
  {
    v18 = v13;
  }

  if (v18 <= 0x18)
  {
    v18 = 24;
  }

  v19 = ((((v12 + v18 + 8) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 41;
  v20 = *(*(*(a4 + 24) - 8) + 64);
  if (v20 <= 9)
  {
    v20 = 9;
  }

  if (v19 <= v20 + 1)
  {
    v19 = v20 + 1;
  }

  if (v19 <= 0x29)
  {
    v19 = 41;
  }

  v21 = v19 + 1;
  v22 = 8 * (v19 + 1);
  if (a3 < 0xF9)
  {
    v25 = 0;
    v23 = a1;
    v24 = a2;
  }

  else
  {
    v23 = a1;
    v24 = a2;
    if (v21 <= 3)
    {
      v28 = ((a3 + ~(-1 << v22) - 248) >> v22) + 1;
      if (HIWORD(v28))
      {
        v25 = 4;
      }

      else
      {
        if (v28 < 0x100)
        {
          v29 = 1;
        }

        else
        {
          v29 = 2;
        }

        if (v28 >= 2)
        {
          v25 = v29;
        }

        else
        {
          v25 = 0;
        }
      }
    }

    else
    {
      v25 = 1;
    }
  }

  if (v24 > 0xF8)
  {
    v26 = v24 - 249;
    if (v21 < 4)
    {
      v27 = (v26 >> v22) + 1;
      if (v19 != -1)
      {
        v30 = v26 & ~(-1 << v22);
        bzero(v23, v21);
        if (v21 == 3)
        {
          *v23 = v30;
          v23[2] = BYTE2(v30);
        }

        else if (v21 == 2)
        {
          *v23 = v30;
        }

        else
        {
          *v23 = v26;
        }
      }
    }

    else
    {
      bzero(v23, v19 + 1);
      *v23 = v26;
      v27 = 1;
    }

    switch(v25)
    {
      case 1:
        v23[v21] = v27;
        break;
      case 2:
        *&v23[v21] = v27;
        break;
      case 3:
LABEL_57:
        __break(1u);
        break;
      case 4:
        *&v23[v21] = v27;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v25)
    {
      case 1:
        v23[v21] = 0;
        if (!v24)
        {
          return;
        }

        goto LABEL_46;
      case 2:
        *&v23[v21] = 0;
        goto LABEL_45;
      case 3:
        goto LABEL_57;
      case 4:
        *&v23[v21] = 0;
        if (!v24)
        {
          return;
        }

        goto LABEL_46;
      default:
LABEL_45:
        if (v24)
        {
LABEL_46:
          v23[v19] = -v24;
        }

        break;
    }
  }
}

uint64_t sub_1DCE881D4(unsigned __int8 *a1, uint64_t a2)
{
  v27 = *(*(sub_1DD0DB04C() - 8) + 64);
  v25 = *(sub_1DD0DC76C() - 8);
  v2 = *(v25 + 80);
  v26 = *(sub_1DD0DB1EC() - 8);
  v22 = *(v26 + 80) | v2;
  v24 = *(sub_1DD0DB4BC() - 8);
  v3 = *(v24 + 80) & 0xF8;
  v4 = *(sub_1DD0DB3EC() - 8);
  v5 = *(v4 + 80);
  v6 = v3 | v5 | 7;
  v23 = *(sub_1DD0DD12C() - 8);
  v7 = *(v23 + 80);
  v8 = *(sub_1DD0DD08C() - 8);
  v9 = (v22 | (v7 | *(v8 + 80))) & 0xF8 | v6;
  v10 = (v27 + v9) & ~v9;
  v11 = *(v25 + 64);
  if (((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v11)
  {
    v11 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v11 <= *(v26 + 64))
  {
    v11 = *(v26 + 64);
  }

  v12 = *(v4 + 64) + ((*(v24 + 64) + v5) & ~v5);
  if (!*(v4 + 84))
  {
    ++v12;
  }

  v13 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 19) | 5;
  if (v11 <= v14)
  {
    v11 = (v13 + 19) | 5;
  }

  v15 = ((((((v13 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v11 <= v15)
  {
    v11 = v15;
  }

  if (v11 <= ((v14 + ((v6 + ((*(v23 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v11 = ((v14 + ((v6 + ((*(v23 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v16 = *(v8 + 64);
  if (v11 > v16)
  {
    v16 = v11;
  }

  if (v16 <= 0x18)
  {
    v16 = 24;
  }

  v17 = ((((v10 + v16 + 8) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 41;
  v18 = *(*(*(a2 + 24) - 8) + 64);
  if (v18 <= 9)
  {
    v18 = 9;
  }

  if (v17 <= v18 + 1)
  {
    v17 = v18 + 1;
  }

  if (v17 <= 0x29)
  {
    v17 = 41;
  }

  result = a1[v17];
  if (result >= 7)
  {
    if (v17 <= 3)
    {
      v20 = v17;
    }

    else
    {
      v20 = 4;
    }

    switch(v20)
    {
      case 1:
        v21 = *a1;
        goto LABEL_32;
      case 2:
        v21 = *a1;
        goto LABEL_32;
      case 3:
        v21 = *a1 | (a1[2] << 16);
        goto LABEL_32;
      case 4:
        v21 = *a1;
LABEL_32:
        if (v17 < 4)
        {
          result = (v21 | ((result - 7) << (8 * v17))) + 7;
        }

        else
        {
          result = (v21 + 7);
        }

        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1DCE885C4(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v28 = *(*(sub_1DD0DB04C() - 8) + 64);
  v26 = *(sub_1DD0DC76C() - 8);
  v3 = *(v26 + 80);
  v27 = *(sub_1DD0DB1EC() - 8);
  v23 = *(v27 + 80) | v3;
  v25 = *(sub_1DD0DB4BC() - 8);
  v4 = *(v25 + 80) & 0xF8;
  v5 = *(sub_1DD0DB3EC() - 8);
  v6 = *(v5 + 80);
  v7 = v4 | v6 | 7;
  v24 = *(sub_1DD0DD12C() - 8);
  v8 = *(v24 + 80);
  v9 = *(sub_1DD0DD08C() - 8);
  v10 = (v23 | (v8 | *(v9 + 80))) & 0xF8 | v7;
  v11 = (v28 + v10) & ~v10;
  v12 = *(v26 + 64);
  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v12)
  {
    v12 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v12 <= *(v27 + 64))
  {
    v12 = *(v27 + 64);
  }

  v13 = *(v5 + 64) + ((*(v25 + 64) + v6) & ~v6);
  if (!*(v5 + 84))
  {
    ++v13;
  }

  v14 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 19) | 5;
  if (v12 <= v15)
  {
    v12 = (v14 + 19) | 5;
  }

  v16 = ((((((v14 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 <= v16)
  {
    v12 = v16;
  }

  if (v12 <= ((v15 + ((v7 + ((*(v24 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v12 = ((v15 + ((v7 + ((*(v24 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v17 = *(v9 + 64);
  if (v12 > v17)
  {
    v17 = v12;
  }

  if (v17 <= 0x18)
  {
    v17 = 24;
  }

  v18 = ((((v11 + v17 + 8) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 41;
  v19 = *(*(*(a3 + 24) - 8) + 64);
  if (v19 <= 9)
  {
    v19 = 9;
  }

  if (v18 <= v19 + 1)
  {
    v18 = v19 + 1;
  }

  if (v18 <= 0x29)
  {
    v20 = 41;
  }

  else
  {
    v20 = v18;
  }

  if (a2 <= 6)
  {
    a1[v20] = a2;
    return;
  }

  v21 = a2 - 7;
  if (v20 < 4)
  {
    a1[v20] = (v21 >> (8 * v20)) + 7;
    if (!v20)
    {
      return;
    }

    v21 &= ~(-1 << (8 * v20));
  }

  else
  {
    a1[v20] = 7;
  }

  if (v20 >= 4)
  {
    v22 = 4;
  }

  else
  {
    v22 = v20;
  }

  bzero(a1, v20);
  switch(v22)
  {
    case 2:
      *a1 = v21;
      break;
    case 3:
      *a1 = v21;
      a1[2] = BYTE2(v21);
      break;
    case 4:
      *a1 = v21;
      break;
    default:
      *a1 = v21;
      break;
  }
}

uint64_t sub_1DCE889F0(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_1DCE88A84(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) <= 9uLL)
  {
    v5 = 9;
  }

  else
  {
    v5 = *(*(*(a3 + 24) - 8) + 64);
  }

  if ((*(v4 + 80) & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v7 = a2[v5];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v5 <= 3)
    {
      v9 = v5;
    }

    else
    {
      v9 = 4;
    }

    switch(v9)
    {
      case 1:
        v10 = *a2;
        goto LABEL_19;
      case 2:
        v10 = *a2;
        goto LABEL_19;
      case 3:
        v10 = *a2 | (a2[2] << 16);
        goto LABEL_19;
      case 4:
        v10 = *a2;
LABEL_19:
        v11 = (v10 | (v8 << (8 * v5))) + 2;
        v7 = v10 + 2;
        if (v5 < 4)
        {
          v7 = v11;
        }

        break;
      default:
        break;
    }
  }

  if (v7 == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = a2[8];
    *(a1 + v5) = 1;
  }

  else
  {
    (*(v4 + 16))(a1);
    *(a1 + v5) = 0;
  }

  return a1;
}

unsigned __int8 *sub_1DCE88BF0(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(*(*(a2 + 24) - 8) + 64);
  if (v2 <= 9)
  {
    v2 = 9;
  }

  v3 = result[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    switch(v5)
    {
      case 1:
        v6 = *result;
        goto LABEL_12;
      case 2:
        v6 = *result;
        goto LABEL_12;
      case 3:
        v6 = *result | (result[2] << 16);
        goto LABEL_12;
      case 4:
        v6 = *result;
LABEL_12:
        v7 = (v6 | (v4 << (8 * v2))) + 2;
        v3 = v6 + 2;
        if (v2 < 4)
        {
          v3 = v7;
        }

        break;
      default:
        break;
    }
  }

  if (v3 != 1)
  {
    return (*(*(*(a2 + 24) - 8) + 8))();
  }

  return result;
}

uint64_t sub_1DCE88CD8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 24) - 8) + 64) <= 9uLL)
  {
    v4 = 9;
  }

  else
  {
    v4 = *(*(*(a3 + 24) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    switch(v7)
    {
      case 1:
        v8 = *a2;
        goto LABEL_13;
      case 2:
        v8 = *a2;
        goto LABEL_13;
      case 3:
        v8 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v8 = *a2;
LABEL_13:
        v9 = (v8 | (v6 << (8 * v4))) + 2;
        v5 = v8 + 2;
        if (v4 < 4)
        {
          v5 = v9;
        }

        break;
      default:
        break;
    }
  }

  if (v5 == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = a2[8];
    v10 = 1;
  }

  else
  {
    (*(*(*(a3 + 24) - 8) + 16))(a1);
    v10 = 0;
  }

  *(a1 + v4) = v10;
  return a1;
}

unsigned __int8 *sub_1DCE88E04(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 24);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 9uLL)
    {
      v7 = 9;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      switch(v10)
      {
        case 1:
          v11 = *a1;
          goto LABEL_14;
        case 2:
          v11 = *a1;
          goto LABEL_14;
        case 3:
          v11 = *a1 | (a1[2] << 16);
          goto LABEL_14;
        case 4:
          v11 = *a1;
LABEL_14:
          v12 = (v11 | (v9 << (8 * v7))) + 2;
          v8 = v11 + 2;
          if (v7 < 4)
          {
            v8 = v12;
          }

          break;
        default:
          break;
      }
    }

    if (v8 != 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 >= 2)
    {
      if (v7 <= 3)
      {
        v15 = v7;
      }

      else
      {
        v15 = 4;
      }

      switch(v15)
      {
        case 1:
          v16 = *a2;
          goto LABEL_27;
        case 2:
          v16 = *a2;
          goto LABEL_27;
        case 3:
          v16 = *a2 | (a2[2] << 16);
          goto LABEL_27;
        case 4:
          v16 = *a2;
LABEL_27:
          v17 = (v16 | (v14 << (8 * v7))) + 2;
          v13 = v16 + 2;
          if (v7 < 4)
          {
            v13 = v17;
          }

          break;
        default:
          break;
      }
    }

    if (v13 == 1)
    {
      v18 = *a2;
      a1[8] = a2[8];
      *a1 = v18;
      v19 = 1;
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      v19 = 0;
    }

    a1[v7] = v19;
  }

  return a1;
}

uint64_t sub_1DCE88FF0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 24) - 8) + 64) <= 9uLL)
  {
    v4 = 9;
  }

  else
  {
    v4 = *(*(*(a3 + 24) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    switch(v7)
    {
      case 1:
        v8 = *a2;
        goto LABEL_13;
      case 2:
        v8 = *a2;
        goto LABEL_13;
      case 3:
        v8 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v8 = *a2;
LABEL_13:
        v9 = (v8 | (v6 << (8 * v4))) + 2;
        v5 = v8 + 2;
        if (v4 < 4)
        {
          v5 = v9;
        }

        break;
      default:
        break;
    }
  }

  if (v5 == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = a2[8];
    v10 = 1;
  }

  else
  {
    (*(*(*(a3 + 24) - 8) + 32))(a1);
    v10 = 0;
  }

  *(a1 + v4) = v10;
  return a1;
}

unsigned __int8 *sub_1DCE8911C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 24);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 9uLL)
    {
      v7 = 9;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      switch(v10)
      {
        case 1:
          v11 = *a1;
          goto LABEL_14;
        case 2:
          v11 = *a1;
          goto LABEL_14;
        case 3:
          v11 = *a1 | (a1[2] << 16);
          goto LABEL_14;
        case 4:
          v11 = *a1;
LABEL_14:
          v12 = (v11 | (v9 << (8 * v7))) + 2;
          v8 = v11 + 2;
          if (v7 < 4)
          {
            v8 = v12;
          }

          break;
        default:
          break;
      }
    }

    if (v8 != 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 >= 2)
    {
      if (v7 <= 3)
      {
        v15 = v7;
      }

      else
      {
        v15 = 4;
      }

      switch(v15)
      {
        case 1:
          v16 = *a2;
          goto LABEL_27;
        case 2:
          v16 = *a2;
          goto LABEL_27;
        case 3:
          v16 = *a2 | (a2[2] << 16);
          goto LABEL_27;
        case 4:
          v16 = *a2;
LABEL_27:
          v17 = (v16 | (v14 << (8 * v7))) + 2;
          v13 = v16 + 2;
          if (v7 < 4)
          {
            v13 = v17;
          }

          break;
        default:
          break;
      }
    }

    if (v13 == 1)
    {
      *a1 = *a2;
      a1[8] = a2[8];
      v18 = 1;
    }

    else
    {
      (*(v6 + 32))(a1, a2, v5);
      v18 = 0;
    }

    a1[v7] = v18;
  }

  return a1;
}

uint64_t sub_1DCE89308(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = 9;
  if (*(v3 + 64) > 9uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1DCE8942C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 9)
  {
    v5 = 9;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1DCE895F0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 24) - 8);
  v3 = 9;
  if (*(v2 + 64) > 9uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    switch(v6)
    {
      case 1:
        v7 = *a1;
        goto LABEL_12;
      case 2:
        v7 = *a1;
        goto LABEL_12;
      case 3:
        v7 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v7 = *a1;
LABEL_12:
        v8 = (v7 | (v5 << (8 * v3))) + 2;
        LODWORD(v4) = v7 + 2;
        if (v3 >= 4)
        {
          v4 = v4;
        }

        else
        {
          v4 = v8;
        }

        break;
      default:
        return v4;
    }
  }

  return v4;
}

void sub_1DCE89694(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 24) - 8) + 64) <= 9uLL)
  {
    v4 = 9;
  }

  else
  {
    v4 = *(*(*(a3 + 24) - 8) + 64);
  }

  if (a2 > 1)
  {
    v5 = a2 - 2;
    if (v4 < 4)
    {
      a1[v4] = (v5 >> (8 * v4)) + 2;
      if (v4)
      {
        v6 = v5 & ~(-1 << (8 * v4));
        bzero(a1, v4);
        if (v4 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v4 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v5;
        }
      }
    }

    else
    {
      a1[v4] = 2;
      bzero(a1, v4);
      *a1 = v5;
    }
  }

  else
  {
    a1[v4] = a2;
  }
}

uint64_t sub_1DCE89770()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_90_9();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_0_84(v3);
  OUTLINED_FUNCTION_26_14();

  return sub_1DCE7B54C(v5, v6, v7, v8, v9, v10, v0, v1);
}

uint64_t sub_1DCE8981C()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE7BA38(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE898A8()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE7BE34(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE89934()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE7C274(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE899C0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_4();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_13_17(v3);
  OUTLINED_FUNCTION_92_7();
  OUTLINED_FUNCTION_26_14();

  return sub_1DCE7C4F8(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DCE89A64()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE7C764(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE89B74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 80);
  return sub_1DCE7C1D4();
}

uint64_t sub_1DCE89BF4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  type metadata accessor for DisambiguationResult();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v7 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 80);

  return sub_1DCE7B9C4(a1);
}

uint64_t sub_1DCE89D1C()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE7B194(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE89DA8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_4();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_13_17(v3);
  OUTLINED_FUNCTION_92_7();
  OUTLINED_FUNCTION_26_14();

  return sub_1DCE7AFDC(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DCE89E4C()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE7ADF4(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE89ED8()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE7AC0C(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE89F64()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE7AA24(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE89FF0()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_90_9();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_0_84(v3);
  OUTLINED_FUNCTION_26_14();

  return sub_1DCE7A718(v5, v6, v7, v8, v9, v10, v0, v1);
}

uint64_t sub_1DCE8A0F4()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_17(v2);

  return sub_1DCE79DB0(v4, v0);
}

uint64_t sub_1DCE8A17C()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_15(v4);

  return sub_1DCE79E5C(v6, v7, v1);
}

uint64_t sub_1DCE8A210()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_15(v4);

  return sub_1DCE79C48(v6, v7, v1);
}

uint64_t sub_1DCE8A2A4()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_15(v4);

  return sub_1DCE79CFC(v6, v7, v1);
}

uint64_t sub_1DCE8A338()
{
  OUTLINED_FUNCTION_21();
  v2 = v1(0);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_33_1();
  v6(v5);
  return v0;
}

uint64_t sub_1DCE8A390(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_106_4(uint64_t a1)
{
  *(v2 + 184) = a1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  result = *(v1 + 25);
  *(v2 + 41) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_117_3()
{
  v2 = v0[33];
  v3 = v0[30];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  v7 = v0[23];
}

uint64_t OUTLINED_FUNCTION_120_1()
{
  result = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = *(v2 + 24);
  return result;
}

void sub_1DCE8A52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v18 - v14;
  v16 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a6;
  v17[5] = 0;
  v17[6] = a1;
  v17[7] = a2;
  sub_1DD0DCF8C();
}

void PromptForValueFlowStrategy.makeErrorResponse(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v14 - v10;
  v12 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1DD0FDE28;
  v13[5] = 0;
  v13[6] = a2;
  v13[7] = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE8A724()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()();
}

uint64_t PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()()
{
  OUTLINED_FUNCTION_33();
  v3 = *(OUTLINED_FUNCTION_73_0(v0, v1, v2) + 32);
  OUTLINED_FUNCTION_25_1();
  v12 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_0_84(v8);

  return v12(v10);
}

uint64_t sub_1DCE8A8D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()();
}

uint64_t PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDBBA0();
}

uint64_t sub_1DCE8A9EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return PromptForValueFlowStrategyAsync.makeFlowCancelledResponse()();
}

uint64_t PromptForValueFlowStrategyAsync.makeFlowCancelledResponse()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDCA70();
}

uint64_t sub_1DCE8AB08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return PromptForValueFlowStrategyAsync.makeErrorResponse(_:)();
}

uint64_t PromptForValueFlowStrategyAsync.makeErrorResponse(_:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDC444();
}

uint64_t PromptForValueFlowStrategyAsync.actionForInputWrapper(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE8AC40()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[6];
  v2 = v0[2];
  (*(v0[5] + 16))(v0[3], v0[4]);
  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t PromptForValueFlowAsync.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  OUTLINED_FUNCTION_80_8();
  v5 = type metadata accessor for PromptForValueFlowAsync.State();
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v20 - v12;
  v14 = *(v3 + 112);
  OUTLINED_FUNCTION_156();
  (*(v7 + 16))(v13, v1 + v14, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v19 = v13[8];
    *a1 = *v13;
    *(a1 + 8) = v19;
    OUTLINED_FUNCTION_80_8();
    type metadata accessor for PromptResult();
    return swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload == 2)
  {
    OUTLINED_FUNCTION_80_8();
    v16 = type metadata accessor for PromptResult();
    OUTLINED_FUNCTION_2(v16);
    return (*(v17 + 32))(a1, v13);
  }

  else
  {
    *a1 = sub_1DCE8C0C0();
    *(a1 + 8) = 0;
    OUTLINED_FUNCTION_80_8();
    type metadata accessor for PromptResult();
    swift_storeEnumTagMultiPayload();
    return (*(v7 + 8))(v13, v5);
  }
}

uint64_t PromptForValueFlow.__allocating_init(strategy:outputPublisher:)(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  PromptForValueFlow.init(strategy:outputPublisher:)(a1, a2);
  return v4;
}

uint64_t PromptForValueFlow.init(strategy:outputPublisher:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_24_17();
  v8 = type metadata accessor for PromptForValueFlowAsync();
  OUTLINED_FUNCTION_24_17();
  type metadata accessor for AnyPromptForValueFlowStrategy();
  OUTLINED_FUNCTION_52_1();
  v9 = swift_unknownObjectRetain();
  v10 = sub_1DCE8B02C(v9, v6, v5);
  sub_1DCB17CA0(a2, &v15);
  v11 = type metadata accessor for OutputPublisherAsyncAdapter();
  v12 = swift_allocObject();
  sub_1DCAFF9E8(&v15, v12 + 16);
  v16 = v11;
  v17 = &protocol witness table for OutputPublisherAsyncAdapter;
  *&v15 = v12;
  WitnessTable = swift_getWitnessTable();
  PromptForValueFlowAsync.__allocating_init<A>(strategy:outputPublisher:)(v10, &v15, AssociatedTypeWitness, WitnessTable);
  OUTLINED_FUNCTION_52_1();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  *(v3 + 16) = v8;
  return v3;
}

uint64_t sub_1DCE8B02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_63_12();
  swift_allocObject();
  v6 = OUTLINED_FUNCTION_52_1();
  sub_1DCE8DD40(v6, a2, a3);
  return v3;
}

uint64_t PromptForValueFlow.on(input:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  PromptForValueFlowAsync.on(input:)(a1);
  return v3 & 1;
}

void PromptForValueFlowAsync.on(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for Parse(0);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v59[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v4 + 80);
  v13 = type metadata accessor for PromptForValueFlowAsync.State();
  v14 = OUTLINED_FUNCTION_9(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v20 = MEMORY[0x1EEE9AC00](v14, v19);
  v22 = &v59[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v59[-v24];
  v26 = *(v4 + 112);
  OUTLINED_FUNCTION_156();
  (*(v16 + 16))(v25, v1 + v26, v13);
  LODWORD(v26) = swift_getEnumCaseMultiPayload();
  (*(v16 + 8))(v25, v13);
  if (v26 != 5)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v34 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v34, qword_1EDE57E00);
    v35 = sub_1DD0DD8EC();
    v36 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_14;
    }

    v37 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v37);
    v38 = "PromptForValueFlow received input but is not in the promptSent state. Ignoring.";
    goto LABEL_13;
  }

  v27 = type metadata accessor for Input(0);
  sub_1DCB2479C(a1 + *(v27 + 20), v11, type metadata accessor for Parse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1DCB28690(v11, type metadata accessor for Parse);
  if (EnumCaseMultiPayload == 10)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v29 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v29, qword_1EDE57E00);
    v30 = sub_1DD0DD8EC();
    v31 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v31))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v32, v33, "PromptForValueFlow received empty parse. Will handle and reprompt.");
      OUTLINED_FUNCTION_80();
    }

LABEL_7:

    OUTLINED_FUNCTION_131();
LABEL_8:
    swift_storeEnumTagMultiPayload();
    sub_1DCB753CC(v22);
    goto LABEL_15;
  }

  if (sub_1DCE967E0(a1))
  {
    v39 = v2[2];
    v40 = *(v39 + 24);
    (*(v39 + 16))(&v60, a1);
    if (!v60)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v53 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v53, qword_1EDE57E00);
      v30 = sub_1DD0DD8EC();
      v54 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v54))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v55, v56, "PromptForValueFlow received cancel action from delegate. Transitioning to cancelled state.");
        OUTLINED_FUNCTION_80();
      }

      goto LABEL_7;
    }

    if (v60 == 1)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v41 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v41, qword_1EDE57E00);
      v42 = sub_1DD0DD8EC();
      v43 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v43))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v44, v45, "PromptForValueFlow received handle action from delegate. Transitioning to responseReceived state.");
        OUTLINED_FUNCTION_80();
      }

      OUTLINED_FUNCTION_13_57();
      sub_1DCB2479C(a1, v22, v46);
      OUTLINED_FUNCTION_131();
      goto LABEL_8;
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v57 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v57, qword_1EDE57E00);
    v35 = sub_1DD0DD8EC();
    v36 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v35, v36))
    {
LABEL_14:

      goto LABEL_15;
    }

    v58 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v58);
    v38 = "PromptForValueFlow received ignore action from delegate. Ignoring.";
LABEL_13:
    _os_log_impl(&dword_1DCAFC000, v35, v36, v38, v22, 2u);
    OUTLINED_FUNCTION_62();
    goto LABEL_14;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v47 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v47, qword_1EDE57E00);
  v48 = sub_1DD0DD8EC();
  v49 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v49))
  {
    *OUTLINED_FUNCTION_50_0() = 0;
    OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v50, v51, "PromptForValueFlow received low confidence input. Treating as misunderstood and will reprompt.");
    OUTLINED_FUNCTION_80();
  }

  OUTLINED_FUNCTION_13_57();
  sub_1DCB2479C(a1, v22, v52);
  OUTLINED_FUNCTION_131();
  swift_storeEnumTagMultiPayload();
  sub_1DCB753CC(v22);
LABEL_15:
  OUTLINED_FUNCTION_49();
}

uint64_t PromptForValueFlow.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE8B638()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_101_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_31_1(v1);

  return PromptForValueFlowAsync.execute()();
}

uint64_t sub_1DCE8B6BC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE8B7B8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE8B8B4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_6_60();
  sub_1DCB28690(v2, v3);
  OUTLINED_FUNCTION_62_10();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCE8B934()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 160) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE8BA30()
{
  OUTLINED_FUNCTION_39();
  (*(v0[10] + 8))(v0[12], v0[9]);
  OUTLINED_FUNCTION_62_10();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCE8BABC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE8BBB8()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 112);
  OUTLINED_FUNCTION_12_52();
  v3 = v2;
  sub_1DCB753CC(v0);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_62_10();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCE8BC54()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 128);
  OUTLINED_FUNCTION_12_52();
  v3 = v2;
  sub_1DCB753CC(v0);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_62_10();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCE8BCF0()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_6_60();
  sub_1DCB28690(v3, v4);
  v5 = *(v1 + 144);
  OUTLINED_FUNCTION_12_52();
  v6 = v5;
  sub_1DCB753CC(v0);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_62_10();

  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t sub_1DCE8BD98()
{
  OUTLINED_FUNCTION_39();
  (*(v1[10] + 8))(v1[12], v1[9]);
  v2 = v1[20];
  OUTLINED_FUNCTION_12_52();
  v3 = v2;
  sub_1DCB753CC(v0);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_62_10();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCE8BE4C()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 176);
  OUTLINED_FUNCTION_12_52();
  v3 = v2;
  sub_1DCB753CC(v0);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_62_10();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t PromptForValueFlow.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PromptForValueFlow.__deallocating_deinit()
{
  PromptForValueFlow.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCE8BF3C(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCE8C000(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AD3C;

  return PromptForValueFlow.execute()(a1);
}

uint64_t sub_1DCE8C0C0()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for PromptForValueFlowAsync.State();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v15 - v7;
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1DD0DEC1C();
  v18 = v16;
  v19 = v17;
  MEMORY[0x1E12A6780](0xD000000000000020, 0x80000001DD113180);
  v9 = *(*v0 + 112);
  swift_beginAccess();
  (*(v4 + 16))(v8, v1 + v9, v3);
  swift_getWitnessTable();
  sub_1DD0DF08C();
  (*(v4 + 8))(v8, v3);
  v10 = v18;
  v11 = v19;
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v12 = CommandFailure.init(errorCode:reason:)(-1, v10, v11);
  sub_1DCC7AE30();
  result = swift_allocError();
  *v14 = v12;
  return result;
}

uint64_t sub_1DCE8C2B8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_44_19(v1);
  v3 = *(v2 + 80);
  v4 = OUTLINED_FUNCTION_80_9();
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64);
  *(v0 + 80) = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE8C33C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_24_5();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 88) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_115(v1);
  v3 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE8C3E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_44_19(v1);
  v0[9] = *(v2 + 80);
  v3 = type metadata accessor for PromptForValueFlowAsync.State();
  v0[10] = v3;
  OUTLINED_FUNCTION_20_0(v3);
  v5 = *(v4 + 64);
  v0[11] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCE8C470()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_24_5();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 96) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_115(v1);
  v3 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE8C514()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE8C614()
{
  OUTLINED_FUNCTION_39();
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  type metadata accessor for PromptResult();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1DCB753CC(v1);
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCE8C6BC()
{
  OUTLINED_FUNCTION_42();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  OUTLINED_FUNCTION_66();
  v5 = *(v4 + 80);
  v1[10] = v5;
  OUTLINED_FUNCTION_24_17();
  v6 = type metadata accessor for PromptForValueFlowAsync.State();
  v1[11] = v6;
  OUTLINED_FUNCTION_20_0(v6);
  v8 = *(v7 + 64);
  v1[12] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24_17();
  v9 = sub_1DD0DE97C();
  v1[13] = v9;
  v10 = *(v9 - 8);
  OUTLINED_FUNCTION_24_0();
  v1[14] = v11;
  v13 = *(v12 + 64);
  v1[15] = OUTLINED_FUNCTION_38();
  v14 = *(v5 - 8);
  v1[16] = v14;
  v15 = *(v14 + 64);
  v1[17] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1DCE8C7EC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0[9] + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[18] = v2;
  *v2 = v3;
  v2[1] = sub_1DCE8C884;
  v4 = v0[15];
  v5 = v0[8];

  return sub_1DCE8EE30(v4, v5);
}

uint64_t sub_1DCE8C884()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 152) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE8C980()
{
  OUTLINED_FUNCTION_41();
  v1 = v0[15];
  v2 = v0[10];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v7 = v0[7];
  if (EnumTagSinglePayload == 1)
  {
    (*(v0[14] + 8))(v1, v0[13]);
    OUTLINED_FUNCTION_80_8();
    type metadata accessor for PromptResult();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1DCB753CC(v4);
  }

  else
  {
    v9 = v0[16];
    v8 = v0[17];
    (*(v9 + 32))(v8, v1, v2);
    (*(v9 + 16))(v4, v8, v2);
    OUTLINED_FUNCTION_80_8();
    type metadata accessor for PromptResult();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1DCB753CC(v4);
    (*(v9 + 8))(v8, v2);
  }

  static ExecuteResponse.complete()();
  v10 = v0[17];
  v11 = v0[15];
  v12 = v0[12];

  OUTLINED_FUNCTION_29();

  return v13();
}

uint64_t sub_1DCE8CB18()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[19];
  v2 = v0[9];
  v4 = v2[6];
  v3 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[21] = v6;
  *v6 = v7;
  v6[1] = sub_1DCE8CC08;

  return sub_1DCB63BBC((v0 + 2), &unk_1DD0FE320, v5, v4, v3);
}

uint64_t sub_1DCE8CC08()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v3[22] = v0;

  if (!v0)
  {
    v9 = v3[20];
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 2);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE8CD14()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v1 = v0[19];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  *v3 = v1;
  *(v3 + 8) = 1;
  type metadata accessor for PromptResult();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v7 = v1;
  sub_1DCB753CC(v3);

  static ExecuteResponse.complete()();
  v8 = v0[17];
  v9 = v0[15];
  v10 = v0[12];

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1DCE8CDF4()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[12];

  swift_willThrow();

  OUTLINED_FUNCTION_29();
  v7 = v0[22];
  OUTLINED_FUNCTION_152();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1DCE8CE8C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_44_19(v1);
  v3 = *(v2 + 80);
  v4 = OUTLINED_FUNCTION_80_9();
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64);
  *(v0 + 80) = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE8CF10()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_24_5();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 88) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_115(v1);
  v3 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE8CFB4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE8D0B4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_44_19(v1);
  v3 = *(v2 + 80);
  v4 = OUTLINED_FUNCTION_80_9();
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64);
  *(v0 + 80) = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE8D138()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_24_5();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 88) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_115(v1);
  v3 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE8D1DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE8D1FC, 0, 0);
}

uint64_t sub_1DCE8D1FC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_101_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_1(v1);

  return sub_1DCE8EF28(v3);
}

uint64_t sub_1DCE8D280(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE8D2A0, 0, 0);
}

uint64_t sub_1DCE8D2A0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_101_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_1(v1);

  return sub_1DCE8EFF0(v3);
}

uint64_t sub_1DCE8D324(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE8D344, 0, 0);
}

uint64_t sub_1DCE8D344()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_101_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_1(v1);

  return sub_1DCE8F0B8(v3);
}

uint64_t sub_1DCE8D3C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE8D3E8, 0, 0);
}

uint64_t sub_1DCE8D3E8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_101_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_1(v1);

  return sub_1DCE8F180(v3);
}

uint64_t sub_1DCE8D46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE8D490, 0, 0);
}

uint64_t sub_1DCE8D490()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_101_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[5] = v1;
  *v1 = v2;
  v1[1] = sub_1DCBEA100;
  v3 = v0[4];
  v4 = v0[2];

  return sub_1DCE8F248(v4, v3);
}

void sub_1DCE8D528(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCE8D5A0(uint64_t a1)
{
  v2 = *v1;
  PromptForValueFlowAsync.on(input:)(a1);
  return v3 & 1;
}

uint64_t sub_1DCE8D610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCB4AE1C;

  return v15(a1, a2, a5, a6);
}

uint64_t sub_1DCE8D748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DCB4AE1C;

  return v13(a1, a4, a5);
}

uint64_t sub_1DCE8D878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DCB4AE1C;

  return v13(a1, a4, a5);
}

uint64_t sub_1DCE8D9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DCB4AE1C;

  return v13(a1, a4, a5);
}

uint64_t sub_1DCE8DAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DCB4AE1C;

  return v13(a1, a4, a5);
}

uint64_t sub_1DCE8DC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 + 64);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCB4AE1C;

  return v15(a1, a2, a5, a6);
}

uint64_t *sub_1DCE8DD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v3[16] = swift_getObjectType();
  v3[2] = sub_1DCE8DEB0(a1, *(v7 + 80), a2, a3);
  v3[3] = v8;
  OUTLINED_FUNCTION_136();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_58_13(v9);
  v3[4] = &unk_1DD0FE350;
  v3[5] = v10;
  OUTLINED_FUNCTION_136();
  v11 = swift_allocObject();
  v12 = OUTLINED_FUNCTION_58_13(v11);
  v3[6] = &unk_1DD0FE360;
  v3[7] = v12;
  OUTLINED_FUNCTION_136();
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_58_13(v13);
  v3[8] = &unk_1DD0FE370;
  v3[9] = v14;
  OUTLINED_FUNCTION_136();
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_58_13(v15);
  v3[10] = &unk_1DD0FE380;
  v3[11] = v16;
  OUTLINED_FUNCTION_136();
  v17 = swift_allocObject();
  v18 = OUTLINED_FUNCTION_58_13(v17);
  v3[12] = &unk_1DD0FE390;
  v3[13] = v18;
  OUTLINED_FUNCTION_136();
  v19 = swift_allocObject();
  v20 = OUTLINED_FUNCTION_58_13(v19);
  v3[14] = &unk_1DD0FE3A0;
  v3[15] = v20;
  swift_unknownObjectRetain_n();
  return v3;
}

uint64_t (*sub_1DCE8DEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;
  swift_unknownObjectRetain();
  return sub_1DCE967B0;
}

uint64_t sub_1DCE8DF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE8DF58, 0, 0);
}

uint64_t sub_1DCE8DF58()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v1;
  *(v2 + 40) = vextq_s8(v3, v3, 8uLL);
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_17();
  *v5 = v6;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v7);
}

uint64_t sub_1DCE8E03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[1] = a2;
  sub_1DD0DE97C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v11 = sub_1DD0DE47C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v20 - v15;
  (*(v12 + 16))(v20 - v15, a1, v11);
  v17 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a4;
  *(v18 + 3) = a5;
  *(v18 + 4) = a6;
  (*(v12 + 32))(&v18[v17], v16, v11);
  (*(a6 + 24))(a3, sub_1DCE966EC, v18, a5, a6);
}

uint64_t sub_1DCE8E1F0(uint64_t a1)
{
  sub_1DD0DE97C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v2 = sub_1DD0DE47C();
  return sub_1DD05EBE4(a1, v2);
}

uint64_t sub_1DCE8E264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE8E28C, 0, 0);
}

uint64_t sub_1DCE8E28C()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_51_22();
  OUTLINED_FUNCTION_21_34(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCE8E348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v17 - v12;
  (*(v9 + 16))(&v17 - v12, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v13, v8);
  (*(a5 + 32))(sub_1DCE706A4, v15, a4, a5);
}

uint64_t sub_1DCE8E4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE8E4E0, 0, 0);
}

uint64_t sub_1DCE8E4E0()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_51_22();
  OUTLINED_FUNCTION_21_34(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCE8E59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v17 - v12;
  (*(v9 + 16))(&v17 - v12, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v13, v8);
  (*(a5 + 40))(sub_1DCE706A4, v15, a4, a5);
}

uint64_t sub_1DCE8E70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE8E734, 0, 0);
}

uint64_t sub_1DCE8E734()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_51_22();
  OUTLINED_FUNCTION_21_34(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCE8E7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v17 - v12;
  (*(v9 + 16))(&v17 - v12, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v13, v8);
  (*(a5 + 48))(sub_1DCE706A4, v15, a4, a5);
}

uint64_t sub_1DCE8E960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE8E988, 0, 0);
}

uint64_t sub_1DCE8E988()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_51_22();
  OUTLINED_FUNCTION_21_34(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCE8EA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v17 - v12;
  (*(v9 + 16))(&v17 - v12, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v13, v8);
  (*(a5 + 56))(sub_1DCE706A4, v15, a4, a5);
}

uint64_t sub_1DCE8EBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE8EBDC, 0, 0);
}

uint64_t sub_1DCE8EBDC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v1;
  *(v2 + 40) = vextq_s8(v3, v3, 8uLL);
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v5 = v6;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v7);
}

uint64_t sub_1DCE8ECB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v19 - v14;
  (*(v11 + 16))(&v19 - v14, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v15, v10);
  (*(a6 + 64))(a3, sub_1DCE6FBE8, v17, a5, a6);
}

uint64_t sub_1DCE8EE30(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE8EE48()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 32);
  v2 = *(v1 + 40);
  v9 = *(v1 + 32) + **(v1 + 32);
  v3 = *(*(v1 + 32) + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 40) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_46_1(v4);

  return v7(v6);
}

uint64_t sub_1DCE8EF28(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE8EF3C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 24);
  v2 = *(v1 + 56);
  OUTLINED_FUNCTION_1_4(*(v1 + 48));
  v11 = v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_33_3(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_31_1(v7);

  return v11(v9);
}

uint64_t sub_1DCE8EFF0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE8F004()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 24);
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_1_4(*(v1 + 64));
  v11 = v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_33_3(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_31_1(v7);

  return v11(v9);
}

uint64_t sub_1DCE8F0B8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE8F0CC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 24);
  v2 = *(v1 + 88);
  OUTLINED_FUNCTION_1_4(*(v1 + 80));
  v11 = v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_33_3(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_31_1(v7);

  return v11(v9);
}

uint64_t sub_1DCE8F180(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE8F194()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 24);
  v2 = *(v1 + 104);
  OUTLINED_FUNCTION_1_4(*(v1 + 96));
  v11 = v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_33_3(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_31_1(v7);

  return v11(v9);
}

uint64_t sub_1DCE8F248(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE8F260()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 32);
  v2 = *(v1 + 120);
  v9 = *(v1 + 112) + **(v1 + 112);
  v3 = *(*(v1 + 112) + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 40) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_46_1(v4);

  return v7(v6);
}

uint64_t sub_1DCE8F340()
{
  if (*(v0 + 128))
  {
    v5 = *(v0 + 128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC360, &qword_1DD0FE290);
    v1 = sub_1DD0DE02C();
    v3 = v2;
  }

  else
  {
    v3 = 0xEB00000000656C62;
    v1 = 0x616C696176616E75;
  }

  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD000000000000030, 0x80000001DD120320);
  MEMORY[0x1E12A6780](v1, v3);

  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1DCE8F428(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE8EE30(a1, a2);
}

uint64_t sub_1DCE8F4D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCE8EF28(a1);
}

uint64_t sub_1DCE8F568(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCE8EFF0(a1);
}

uint64_t sub_1DCE8F600(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCE8F0B8(a1);
}

uint64_t sub_1DCE8F698(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCE8F180(a1);
}

uint64_t sub_1DCE8F730(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE8F248(a1, a2);
}

uint64_t sub_1DCE8F7FC()
{
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_84(v1);

  return PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()();
}

uint64_t sub_1DCE8F890()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()();
}

uint64_t dispatch thunk of PromptForValueFlowStrategyAsync.parseValueResponse(input:)()
{
  OUTLINED_FUNCTION_41();
  v4 = *(OUTLINED_FUNCTION_56_0(v0, v1, v2, v3) + 24);
  OUTLINED_FUNCTION_24_0();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_11_0(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_1(v9);

  return v12(v11);
}

uint64_t dispatch thunk of PromptForValueFlowStrategyAsync.makePromptForValue()()
{
  OUTLINED_FUNCTION_33();
  v3 = *(OUTLINED_FUNCTION_73_0(v0, v1, v2) + 32);
  OUTLINED_FUNCTION_25_1();
  v12 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_0_84(v8);

  return v12(v10);
}

uint64_t dispatch thunk of PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()()
{
  OUTLINED_FUNCTION_33();
  v3 = *(OUTLINED_FUNCTION_73_0(v0, v1, v2) + 40);
  OUTLINED_FUNCTION_25_1();
  v12 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_0_84(v8);

  return v12(v10);
}

uint64_t dispatch thunk of PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()()
{
  OUTLINED_FUNCTION_33();
  v3 = *(OUTLINED_FUNCTION_73_0(v0, v1, v2) + 48);
  OUTLINED_FUNCTION_25_1();
  v12 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_0_84(v8);

  return v12(v10);
}

uint64_t dispatch thunk of PromptForValueFlowStrategyAsync.makeFlowCancelledResponse()()
{
  OUTLINED_FUNCTION_33();
  v3 = *(OUTLINED_FUNCTION_73_0(v0, v1, v2) + 56);
  OUTLINED_FUNCTION_25_1();
  v12 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_0_84(v8);

  return v12(v10);
}

uint64_t dispatch thunk of PromptForValueFlowStrategyAsync.makeErrorResponse(_:)()
{
  OUTLINED_FUNCTION_41();
  v4 = *(OUTLINED_FUNCTION_56_0(v0, v1, v2, v3) + 64);
  OUTLINED_FUNCTION_24_0();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_11_0(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_1(v9);

  return v12(v11);
}

uint64_t sub_1DCE90028(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for PromptForValueFlowAsync.State();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DCE90168(uint64_t a1)
{
  result = type metadata accessor for Input(319);
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 16);
    result = type metadata accessor for PromptResult();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

_BYTE *sub_1DCE90238(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v212 = sub_1DD0DB04C();
  v236 = *(v212 - 8);
  v241 = *(v236 + 64);
  v209 = sub_1DD0DC76C();
  v228 = *(v209 - 8);
  v208 = v228;
  v3 = *(v228 + 80);
  v207 = sub_1DD0DB1EC();
  v230 = *(v207 - 8);
  v206 = v230;
  v218 = *(v230 + 80) | v3;
  v211 = sub_1DD0DB4BC();
  v226 = *(v211 - 8);
  v240 = v226;
  v215 = *(v226 + 80);
  v210 = sub_1DD0DB3EC();
  v221 = *(v210 - 8);
  v4 = *(v221 + 80);
  v5 = v215 & 0xF8 | v4 | 7u;
  v6 = sub_1DD0DD12C();
  v224 = *(v6 - 8);
  v204 = v224;
  v205 = v6;
  v7 = *(v224 + 80);
  v8 = sub_1DD0DD08C();
  v9 = *(v8 - 8);
  v10 = v7 | *(v9 + 80);
  v11 = (v218 | (v7 | *(v9 + 80))) & 0xF8 | v5;
  v12 = *(v228 + 64);
  v13 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 <= v12)
  {
    v13 = *(v228 + 64);
  }

  if (v13 <= *(v230 + 64))
  {
    v13 = *(v230 + 64);
  }

  v14 = v4;
  v15 = *(v226 + 64) + v4;
  v231 = v4;
  v203 = v221;
  v16 = *(v221 + 84);
  v17 = *(v221 + 64);
  if (v16)
  {
    v18 = *(v221 + 64);
  }

  else
  {
    v18 = v17 + 1;
  }

  v229 = v15 & ~v4;
  v19 = (v18 + 7 + v229) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v13 <= v20)
  {
    v13 = (v19 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v21 = v19 + 31;
  if (v13 <= (((((v21 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v13 = (((((v21 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v22 = *(v224 + 64);
  v23 = v5 + 16;
  v24 = v215 & 0xF8 | v4 | 7u;
  v25 = *(v226 + 84);
  v26 = v16 - 1;
  if (!v16)
  {
    v26 = 0;
  }

  v225 = v26;
  if (v26 <= v25)
  {
    v26 = *(v226 + 84);
  }

  if (v26 <= 0x7FFFFFFE)
  {
    v26 = 2147483646;
  }

  v227 = v26;
  v27 = ((v21 + ((v5 + 16 + ((v22 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 <= v27)
  {
    v13 = v27;
  }

  v28 = *(*(v8 - 8) + 64);
  if (v13 > v28)
  {
    v28 = v13;
  }

  if (v28 <= 0x18)
  {
    v29 = 24;
  }

  else
  {
    v29 = v28;
  }

  v30 = ((((v29 + ((v241 + v11) & ~v11) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v31 = *(a3 + 16);
  v32 = *(v31 - 8);
  if (*(v32 + 64) <= 9uLL)
  {
    v33 = 9;
  }

  else
  {
    v33 = *(v32 + 64);
  }

  v34 = v33 + 1;
  if (v33 + 1 > v30)
  {
    v30 = v33 + 1;
  }

  if (v30 <= 9)
  {
    v35 = 9;
  }

  else
  {
    v35 = v30;
  }

  v36 = *(v236 + 80);
  v37 = *(v32 + 80);
  if (((v37 | v36) & 0xF8 | v11) != 7 || ((v218 | v215 | v14 | v10 | v36 | v37) & 0x100000) != 0 || (v35 + 1) > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v235 = v22;
  v38 = a2[v35];
  v39 = v38 - 4;
  if (v38 >= 4)
  {
    if (v35 <= 3)
    {
      v40 = v35;
    }

    else
    {
      v40 = 4;
    }

    switch(v40)
    {
      case 1:
        v41 = *a2;
        goto LABEL_46;
      case 2:
        v41 = *a2;
        goto LABEL_46;
      case 3:
        v41 = *a2 | (a2[2] << 16);
        goto LABEL_46;
      case 4:
        v41 = *a2;
LABEL_46:
        if (v35 < 4)
        {
          v41 |= v39 << (8 * v35);
        }

        v38 = v41 + 4;
        break;
      default:
        break;
    }
  }

  switch(v38)
  {
    case 0u:
      v197 = ~v24;
      v42 = v35;
      v219 = ~v231;
      v222 = *(v8 - 8);
      v43 = v8;
      v216 = v15;
      v195 = v18 + 7;
      v193 = v16;
      v191 = v17;
      __n = v18;
      v232 = v29 + 1;
      v44 = *(v236 + 16);
      v237 = v29;
      v44(a1, a2, v212);
      v213 = &a1[v241 + 7];
      v45 = (v213 & 0xFFFFFFFFFFFFFFF8);
      v242 = &a2[v241 + 7];
      v46 = (v242 & 0xFFFFFFFFFFFFFFF8);
      v47 = *((v242 & 0xFFFFFFFFFFFFFFF8) + v237);
      v48 = v47 - 10;
      if (v47 < 0xA)
      {
        v50 = v222;
      }

      else
      {
        if (v237 <= 3)
        {
          v49 = v237;
        }

        else
        {
          v49 = 4;
        }

        v50 = v222;
        switch(v49)
        {
          case 1:
            v51 = *v46;
            goto LABEL_92;
          case 2:
            v51 = *v46;
            goto LABEL_92;
          case 3:
            v51 = *v46 | (v46[2] << 16);
            goto LABEL_92;
          case 4:
            v51 = *v46;
LABEL_92:
            if (v237 < 4)
            {
              v47 = (v51 | (v48 << (8 * v237))) + 10;
            }

            else
            {
              v47 = v51 + 10;
            }

            break;
          default:
            break;
        }
      }

      v201 = v42;
      switch(v47)
      {
        case 0u:
          (*(v208 + 16))(v45, v46, v209);
          *((v213 & 0xFFFFFFFFFFFFFFF8) + v237) = 0;
          goto LABEL_120;
        case 1u:
          (*(v208 + 16))(v45, v46, v209);
          *(((v213 | 7) + v12) & 0xFFFFFFFFFFFFFFF8) = *(((v242 | 7) + v12) & 0xFFFFFFFFFFFFFFF8);
          *((v213 & 0xFFFFFFFFFFFFFFF8) + v237) = 1;
          sub_1DD0DCF8C();
        case 2u:
          *v45 = *v46;
          v45[1] = *(v46 + 1);
          v45[2] = *(v46 + 2);
          *(v45 + v237) = 2;

          goto LABEL_120;
        case 3u:
          *v45 = *v46;
          *(v45 + v237) = 3;
          swift_unknownObjectRetain();
          goto LABEL_120;
        case 4u:
          v73 = v237;
          v74 = v213 & 0xFFFFFFFFFFFFFFF8;
          (*(v206 + 16))(v45, v46, v207);
          v75 = 4;
          goto LABEL_106;
        case 5u:
          v87 = *v46;
          *v45 = *v46;
          *(v45 + v237) = 5;
          v88 = v87;
          goto LABEL_120;
        case 6u:
          (*(v240 + 16))(v45, v46, v211);
          v109 = ((v216 + (v213 & 0xFFFFFFFFFFFFFFF8)) & v219);
          v110 = (&v46[v216] & v219);
          if (__swift_getEnumTagSinglePayload(v110, 1, v210))
          {
            v111 = __n;
            memcpy(v109, v110, __n);
            v82 = v232;
          }

          else
          {
            (*(v203 + 16))(v109, v110, v210);
            __swift_storeEnumTagSinglePayload(v109, 0, 1, v210);
            v82 = v232;
            v111 = __n;
          }

          v89 = v213;
          v90 = v242;
          v58 = a1;
          v159 = ((v109 + v111 + 7) & 0xFFFFFFFFFFFFFFF8);
          v160 = ((v110 + v111 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v159 = *v160;
          v159[1] = v160[1];
          v161 = (v159 + 19) & 0xFFFFFFFFFFFFFFF8;
          v162 = (v160 + 19) & 0xFFFFFFFFFFFFFFF8;
          v163 = *v162;
          *(v161 + 4) = *(v162 + 4);
          *v161 = v163;
          *((v213 & 0xFFFFFFFFFFFFFFF8) + v237) = 6;

          goto LABEL_123;
        case 7u:
          (*(v240 + 16))(v45, v46, v211);
          v79 = ((v216 + (v213 & 0xFFFFFFFFFFFFFFF8)) & v219);
          v80 = (&v46[v216] & v219);
          if (__swift_getEnumTagSinglePayload(v80, 1, v210))
          {
            v81 = __n;
            memcpy(v79, v80, __n);
            v82 = v232;
          }

          else
          {
            (*(v203 + 16))(v79, v80, v210);
            __swift_storeEnumTagSinglePayload(v79, 0, 1, v210);
            v82 = v232;
            v81 = __n;
          }

          v89 = v213;
          v90 = v242;
          v137 = ((v79 + v81 + 7) & 0xFFFFFFFFFFFFFFF8);
          v138 = ((v80 + v81 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v137 = *v138;
          v137[1] = v138[1];
          v139 = (v137 + 19) & 0xFFFFFFFFFFFFFFF8;
          v140 = (v138 + 19) & 0xFFFFFFFFFFFFFFF8;
          v141 = *v140;
          *(v139 + 4) = *(v140 + 4);
          *v139 = v141;
          v142 = (((v213 | 7) + v20) & 0xFFFFFFFFFFFFFFF8);
          v143 = (((v242 | 7) + v20) & 0xFFFFFFFFFFFFFFF8);
          *v142 = *v143;
          v142[1] = v143[1];
          v144 = ((v142 + 23) & 0xFFFFFFFFFFFFFFF8);
          v145 = ((v143 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v144 = *v145;
          v144[1] = v145[1];
          v146 = ((v144 + 23) & 0xFFFFFFFFFFFFFFF8);
          v147 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v146 = *v147;
          v146[1] = v147[1];
          *((v213 & 0xFFFFFFFFFFFFFFF8) + v237) = 7;

          goto LABEL_122;
        case 8u:
          (*(v204 + 16))(v45, v46, v205);
          v115 = (((v213 | 7) + v235) & 0xFFFFFFFFFFFFFFF8);
          v116 = (((v242 | 7) + v235) & 0xFFFFFFFFFFFFFFF8);
          *v115 = *v116;
          v115[1] = v116[1];
          v117 = ((v115 + v23) & v197);
          v118 = ((v116 + v23) & v197);

          if (v25 != v227)
          {
            v123 = ((v118 + v216) & v219);
            v82 = v232;
            if (v225 == v227)
            {
              v124 = v210;
              v89 = v213;
              if (v193 < 2)
              {
                v120 = v211;
LABEL_166:
                v125 = v240;
                v122 = v216;
                v121 = v219;
                goto LABEL_167;
              }

              v120 = v211;
              if (__swift_getEnumTagSinglePayload((v118 + v216) & v219, v193, v210) >= 2)
              {
                goto LABEL_183;
              }
            }

            else
            {
              v169 = *(((v123 + v195) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v169 >= 0xFFFFFFFF)
              {
                LODWORD(v169) = -1;
              }

              v120 = v211;
              v89 = v213;
              if ((v169 + 1) >= 2)
              {
                goto LABEL_183;
              }
            }

            v124 = v210;
            goto LABEL_166;
          }

          v119 = v25;
          v120 = v211;
          v82 = v232;
          v89 = v213;
          if (__swift_getEnumTagSinglePayload(v118, v119, v211))
          {
LABEL_183:
            memcpy(v117, v118, v20);
            v90 = v242;
            v58 = a1;
LABEL_184:
            v176 = __n;
            goto LABEL_185;
          }

          v122 = v216;
          v121 = v219;
          v123 = ((v118 + v216) & v219);
          v124 = v210;
          v125 = v240;
LABEL_167:
          (*(v125 + 16))(v117, v118, v120);
          if (__swift_getEnumTagSinglePayload(v123, 1, v124))
          {
            memcpy(((v117 + v122) & v121), v123, __n);
          }

          else
          {
            (*(v203 + 16))((v117 + v122) & v121, v123, v124);
            __swift_storeEnumTagSinglePayload((v117 + v122) & v121, 0, 1, v124);
          }

          v90 = v242;
          v58 = a1;
          v171 = ((v195 + ((v117 + v122) & v121)) & 0xFFFFFFFFFFFFFFF8);
          v172 = ((v123 + v195) & 0xFFFFFFFFFFFFFFF8);
          *v171 = *v172;
          v171[1] = v172[1];
          v173 = (v171 + 19) & 0xFFFFFFFFFFFFFFF8;
          v174 = (v172 + 19) & 0xFFFFFFFFFFFFFFF8;
          v175 = *v174;
          *(v173 + 4) = *(v174 + 4);
          *v173 = v175;

          v82 = v232;
          v176 = v191;
          if (!v193)
          {
            goto LABEL_184;
          }

LABEL_185:
          v183 = (((v229 + v176 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          v184 = ((v117 + v183 + 7) & 0xFFFFFFFFFFFFFFF8);
          v185 = *((v118 + v183 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v184 = v185;
          *((v213 & 0xFFFFFFFFFFFFFFF8) + v237) = 8;
          v186 = v185;
LABEL_123:
          v91 = (((v90 | 7) + v82) & 0xFFFFFFFFFFFFFFF8);
          v92 = (((v89 | 7) + v82) & 0xFFFFFFFFFFFFFFF8);
          *v92 = *v91;
          v93 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
          v94 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
          v95 = *(v94 + 24);

          if (v95 < 0xFFFFFFFF)
          {
            v96 = *v94;
            v97 = *(v94 + 16);
            *(v93 + 32) = *(v94 + 32);
            *v93 = v96;
            *(v93 + 16) = v97;
          }

          else
          {
            *(v93 + 24) = v95;
            *(v93 + 32) = *(v94 + 32);
            (**(v95 - 8))(v93, v94, v95);
          }

          *(v93 + 40) = *(v94 + 40);
          v58[v201] = 0;
          return v58;
        case 9u:
          v73 = v237;
          v74 = v213 & 0xFFFFFFFFFFFFFFF8;
          (*(v50 + 16))(v45, v46, v43);
          v75 = 9;
LABEL_106:
          *(v74 + v73) = v75;
LABEL_120:
          v82 = v232;
          goto LABEL_121;
        default:
          v82 = v232;
          memcpy(v45, (v242 & 0xFFFFFFFFFFFFFFF8), v232);
LABEL_121:
          v89 = v213;
          v90 = v242;
LABEL_122:
          v58 = a1;
          goto LABEL_123;
      }

    case 1u:
      v198 = ~v24;
      v60 = v35;
      v220 = ~v231;
      v223 = *(v8 - 8);
      v61 = v8;
      v217 = v15;
      v196 = v18 + 7;
      v194 = v16;
      v192 = v17;
      __na = v18;
      v233 = v29 + 1;
      v62 = *(v236 + 16);
      v238 = v29;
      v62(a1, a2, v212);
      v214 = &a1[v241 + 7];
      v63 = (v214 & 0xFFFFFFFFFFFFFFF8);
      v243 = &a2[v241 + 7];
      v64 = (v243 & 0xFFFFFFFFFFFFFFF8);
      v65 = *((v243 & 0xFFFFFFFFFFFFFFF8) + v238);
      v66 = v65 - 10;
      if (v65 < 0xA)
      {
        v68 = v223;
      }

      else
      {
        if (v238 <= 3)
        {
          v67 = v238;
        }

        else
        {
          v67 = 4;
        }

        v68 = v223;
        switch(v67)
        {
          case 1:
            v69 = *v64;
            goto LABEL_98;
          case 2:
            v69 = *v64;
            goto LABEL_98;
          case 3:
            v69 = *v64 | (v64[2] << 16);
            goto LABEL_98;
          case 4:
            v69 = *v64;
LABEL_98:
            if (v238 < 4)
            {
              v65 = (v69 | (v66 << (8 * v238))) + 10;
            }

            else
            {
              v65 = v69 + 10;
            }

            break;
          default:
            goto LABEL_101;
        }
      }

      break;
    case 2u:
      v52 = a2[v33];
      v53 = v52 - 2;
      if (v52 >= 2)
      {
        if (v33 <= 3)
        {
          v54 = v33;
        }

        else
        {
          v54 = 4;
        }

        switch(v54)
        {
          case 1:
            v55 = *a2;
            goto LABEL_79;
          case 2:
            v55 = *a2;
            goto LABEL_79;
          case 3:
            v55 = *a2 | (a2[2] << 16);
            goto LABEL_79;
          case 4:
            v55 = *a2;
LABEL_79:
            if (v33 < 4)
            {
              v52 = (v55 | (v53 << (8 * v33))) + 2;
            }

            else
            {
              v52 = v55 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v52 == 1)
      {
        v71 = *a2;
        v72 = *a2;
        *a1 = v71;
        a1[8] = a2[8];
        a1[v33] = 1;
        v58 = a1;
      }

      else if (v52)
      {
        v58 = a1;
        memcpy(a1, a2, v34);
      }

      else
      {
        (*(v32 + 16))(a1, a2, v31);
        a1[v33] = 0;
        v58 = a1;
      }

      v59 = 2;
      goto LABEL_88;
    case 3u:
      v56 = *a2;
      v57 = *a2;
      v58 = a1;
      *a1 = v56;
      a1[8] = a2[8];
      v59 = 3;
LABEL_88:
      v58[v35] = v59;
      return v58;
    default:

      return memcpy(a1, a2, v29 + 1);
  }

LABEL_101:
  v202 = v60;
  switch(v65)
  {
    case 0u:
      (*(v208 + 16))(v63, v64, v209);
      *((v214 & 0xFFFFFFFFFFFFFFF8) + v238) = 0;
      goto LABEL_128;
    case 1u:
      (*(v208 + 16))(v63, v64, v209);
      *(((v214 | 7) + v12) & 0xFFFFFFFFFFFFFFF8) = *(((v243 | 7) + v12) & 0xFFFFFFFFFFFFFFF8);
      *((v214 & 0xFFFFFFFFFFFFFFF8) + v238) = 1;
      sub_1DD0DCF8C();
    case 2u:
      *v63 = *v64;
      v63[1] = *(v64 + 1);
      v63[2] = *(v64 + 2);
      *(v63 + v238) = 2;

      goto LABEL_128;
    case 3u:
      *v63 = *v64;
      *(v63 + v238) = 3;
      swift_unknownObjectRetain();
      goto LABEL_128;
    case 4u:
      v76 = v238;
      v77 = v214 & 0xFFFFFFFFFFFFFFF8;
      (*(v206 + 16))(v63, v64, v207);
      v78 = 4;
      goto LABEL_108;
    case 5u:
      v98 = *v64;
      *v63 = *v64;
      *(v63 + v238) = 5;
      v99 = v98;
      goto LABEL_128;
    case 6u:
      (*(v240 + 16))(v63, v64, v211);
      v112 = ((v217 + (v214 & 0xFFFFFFFFFFFFFFF8)) & v220);
      v113 = (&v64[v217] & v220);
      if (__swift_getEnumTagSinglePayload(v113, 1, v210))
      {
        v114 = __na;
        memcpy(v112, v113, __na);
        v86 = v233;
      }

      else
      {
        (*(v203 + 16))(v112, v113, v210);
        __swift_storeEnumTagSinglePayload(v112, 0, 1, v210);
        v86 = v233;
        v114 = __na;
      }

      v100 = v214;
      v101 = v243;
      v58 = a1;
      v164 = ((v112 + v114 + 7) & 0xFFFFFFFFFFFFFFF8);
      v165 = ((v113 + v114 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v164 = *v165;
      v164[1] = v165[1];
      v166 = (v164 + 19) & 0xFFFFFFFFFFFFFFF8;
      v167 = (v165 + 19) & 0xFFFFFFFFFFFFFFF8;
      v168 = *v167;
      *(v166 + 4) = *(v167 + 4);
      *v166 = v168;
      *((v214 & 0xFFFFFFFFFFFFFFF8) + v238) = 6;

      goto LABEL_131;
    case 7u:
      (*(v240 + 16))(v63, v64, v211);
      v83 = ((v217 + (v214 & 0xFFFFFFFFFFFFFFF8)) & v220);
      v84 = (&v64[v217] & v220);
      if (__swift_getEnumTagSinglePayload(v84, 1, v210))
      {
        v85 = __na;
        memcpy(v83, v84, __na);
        v86 = v233;
      }

      else
      {
        (*(v203 + 16))(v83, v84, v210);
        __swift_storeEnumTagSinglePayload(v83, 0, 1, v210);
        v86 = v233;
        v85 = __na;
      }

      v100 = v214;
      v101 = v243;
      v148 = ((v83 + v85 + 7) & 0xFFFFFFFFFFFFFFF8);
      v149 = ((v84 + v85 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v148 = *v149;
      v148[1] = v149[1];
      v150 = (v148 + 19) & 0xFFFFFFFFFFFFFFF8;
      v151 = (v149 + 19) & 0xFFFFFFFFFFFFFFF8;
      v152 = *v151;
      *(v150 + 4) = *(v151 + 4);
      *v150 = v152;
      v153 = (((v214 | 7) + v20) & 0xFFFFFFFFFFFFFFF8);
      v154 = (((v243 | 7) + v20) & 0xFFFFFFFFFFFFFFF8);
      *v153 = *v154;
      v153[1] = v154[1];
      v155 = ((v153 + 23) & 0xFFFFFFFFFFFFFFF8);
      v156 = ((v154 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v155 = *v156;
      v155[1] = v156[1];
      v157 = ((v155 + 23) & 0xFFFFFFFFFFFFFFF8);
      v158 = ((v156 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v157 = *v158;
      v157[1] = v158[1];
      *((v214 & 0xFFFFFFFFFFFFFFF8) + v238) = 7;

      goto LABEL_130;
    case 8u:
      (*(v204 + 16))(v63, v64, v205);
      v126 = (((v214 | 7) + v235) & 0xFFFFFFFFFFFFFFF8);
      v127 = (((v243 | 7) + v235) & 0xFFFFFFFFFFFFFFF8);
      *v126 = *v127;
      v126[1] = v127[1];
      v128 = ((v126 + v23) & v198);
      v129 = ((v127 + v23) & v198);

      if (v25 == v227)
      {
        v130 = v25;
        v131 = v211;
        v86 = v233;
        v100 = v214;
        if (!__swift_getEnumTagSinglePayload(v129, v130, v211))
        {
          v133 = v217;
          v132 = v220;
          v134 = ((v129 + v217) & v220);
          v135 = v210;
          v136 = v240;
          goto LABEL_174;
        }

LABEL_187:
        memcpy(v128, v129, v20);
        v101 = v243;
        v58 = a1;
        goto LABEL_188;
      }

      v134 = ((v129 + v217) & v220);
      v86 = v233;
      if (v225 == v227)
      {
        v135 = v210;
        v100 = v214;
        if (v194 < 2)
        {
          v131 = v211;
LABEL_173:
          v136 = v240;
          v133 = v217;
          v132 = v220;
LABEL_174:
          (*(v136 + 16))(v128, v129, v131);
          if (__swift_getEnumTagSinglePayload(v134, 1, v135))
          {
            memcpy(((v128 + v133) & v132), v134, __na);
          }

          else
          {
            (*(v203 + 16))((v128 + v133) & v132, v134, v135);
            __swift_storeEnumTagSinglePayload((v128 + v133) & v132, 0, 1, v135);
          }

          v101 = v243;
          v58 = a1;
          v177 = ((v196 + ((v128 + v133) & v132)) & 0xFFFFFFFFFFFFFFF8);
          v178 = ((v134 + v196) & 0xFFFFFFFFFFFFFFF8);
          *v177 = *v178;
          v177[1] = v178[1];
          v179 = (v177 + 19) & 0xFFFFFFFFFFFFFFF8;
          v180 = (v178 + 19) & 0xFFFFFFFFFFFFFFF8;
          v181 = *v180;
          *(v179 + 4) = *(v180 + 4);
          *v179 = v181;

          v86 = v233;
          v182 = v192;
          if (v194)
          {
LABEL_189:
            v187 = (((v229 + v182 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
            v188 = ((v128 + v187 + 7) & 0xFFFFFFFFFFFFFFF8);
            v189 = *((v129 + v187 + 7) & 0xFFFFFFFFFFFFFFF8);
            *v188 = v189;
            *((v214 & 0xFFFFFFFFFFFFFFF8) + v238) = 8;
            v190 = v189;
LABEL_131:
            v102 = (((v101 | 7) + v86) & 0xFFFFFFFFFFFFFFF8);
            v103 = (((v100 | 7) + v86) & 0xFFFFFFFFFFFFFFF8);
            *v103 = *v102;
            v104 = (v103 + 15) & 0xFFFFFFFFFFFFFFF8;
            v105 = (v102 + 15) & 0xFFFFFFFFFFFFFFF8;
            v106 = *(v105 + 24);

            if (v106 < 0xFFFFFFFF)
            {
              v107 = *v105;
              v108 = *(v105 + 16);
              *(v104 + 32) = *(v105 + 32);
              *v104 = v107;
              *(v104 + 16) = v108;
            }

            else
            {
              *(v104 + 24) = v106;
              *(v104 + 32) = *(v105 + 32);
              (**(v106 - 8))(v104, v105, v106);
            }

            *(v104 + 40) = *(v105 + 40);
            v58[v202] = 1;
            return v58;
          }

LABEL_188:
          v182 = __na;
          goto LABEL_189;
        }

        v131 = v211;
        if (__swift_getEnumTagSinglePayload((v129 + v217) & v220, v194, v210) >= 2)
        {
          goto LABEL_187;
        }
      }

      else
      {
        v170 = *(((v134 + v196) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v170 >= 0xFFFFFFFF)
        {
          LODWORD(v170) = -1;
        }

        v131 = v211;
        v100 = v214;
        if ((v170 + 1) >= 2)
        {
          goto LABEL_187;
        }
      }

      v135 = v210;
      goto LABEL_173;
    case 9u:
      v76 = v238;
      v77 = v214 & 0xFFFFFFFFFFFFFFF8;
      (*(v68 + 16))(v63, v64, v61);
      v78 = 9;
LABEL_108:
      *(v77 + v76) = v78;
LABEL_128:
      v86 = v233;
      goto LABEL_129;
    default:
      v86 = v233;
      memcpy(v63, (v243 & 0xFFFFFFFFFFFFFFF8), v233);
LABEL_129:
      v100 = v214;
      v101 = v243;
LABEL_130:
      v58 = a1;
      goto LABEL_131;
  }
}

_BYTE *sub_1DCE919CC(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v225 = *(sub_1DD0DB04C() - 8);
  v238 = *(v225 + 64);
  v222 = sub_1DD0DC76C();
  v232 = *(v222 - 8);
  v221 = v232;
  v3 = *(v232 + 80);
  v220 = sub_1DD0DB1EC();
  v236 = *(v220 - 8);
  v219 = v236;
  v226 = *(v236 + 80) | v3;
  v224 = sub_1DD0DB4BC();
  v230 = *(v224 - 8);
  v246 = v230;
  v4 = *(v230 + 80) & 0xF8;
  v223 = sub_1DD0DB3EC();
  v5 = *(v223 - 8);
  v6 = *(v5 + 80);
  v7 = v4 | v6 | 7;
  v218 = sub_1DD0DD12C();
  v228 = *(v218 - 8);
  v217 = v228;
  v8 = *(v228 + 80);
  v216 = sub_1DD0DD08C();
  v9 = *(v216 - 8);
  v10 = v232;
  v233 = v9;
  v11 = (v226 | (v8 | *(v9 + 80))) & 0xF8 | v7;
  v12 = v238 + v11;
  v13 = *(v10 + 64);
  v227 = v13 + 7;
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v13 <= *(v236 + 64))
  {
    v13 = *(v236 + 64);
  }

  if (v13 <= 0x18)
  {
    v14 = 24;
  }

  else
  {
    v14 = v13;
  }

  v239 = *(v230 + 64) + v6;
  v214 = v5;
  v15 = *(v5 + 84);
  if (v15)
  {
    v16 = *(v5 + 64);
  }

  else
  {
    v16 = *(v5 + 64) + 1;
  }

  v17 = (v16 + 7 + (v239 & ~v6)) & 0xFFFFFFFFFFFFFFF8;
  v237 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v237 <= v14)
  {
    v18 = v14;
  }

  else
  {
    v18 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v19 = v17 + 31;
  v20 = ((((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = v20 + 16;
  if (v20 + 16 > v18)
  {
    v18 = v20 + 16;
  }

  v215 = *(v228 + 64);
  v229 = v7 + 16;
  v22 = v4 | v6 | 7;
  v23 = (v7 + 16 + ((v215 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v7;
  v24 = *(v230 + 84);
  v25 = v15 - 1;
  if (!v15)
  {
    v25 = 0;
  }

  v213 = v25;
  if (v25 <= v24)
  {
    v25 = *(v230 + 84);
  }

  if (v25 <= 0x7FFFFFFE)
  {
    v25 = 2147483646;
  }

  v231 = v25;
  v26 = (v19 + v23) & 0xFFFFFFFFFFFFFFF8;
  v27 = v26 + 8;
  if (v26 + 8 <= v18)
  {
    v28 = v18;
  }

  else
  {
    v28 = v26 + 8;
  }

  if (*(v9 + 64) <= v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = *(v9 + 64);
  }

  v30 = a2;
  v31 = ((((v29 + (v12 & ~v11) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v32 = *(*(a3 + 16) - 8);
  if (*(v32 + 64) <= 9uLL)
  {
    v33 = 9;
  }

  else
  {
    v33 = *(v32 + 64);
  }

  if (v33 + 1 > v31)
  {
    v31 = v33 + 1;
  }

  if (v31 <= 9)
  {
    v34 = 9;
  }

  else
  {
    v34 = v31;
  }

  v35 = a2[v34];
  v36 = v35 - 4;
  if (v35 < 4)
  {
    result = a1;
  }

  else
  {
    if (v34 <= 3)
    {
      v37 = v34;
    }

    else
    {
      v37 = 4;
    }

    result = a1;
    switch(v37)
    {
      case 1:
        v39 = *a2;
        goto LABEL_46;
      case 2:
        v39 = *a2;
        goto LABEL_46;
      case 3:
        v39 = *a2 | (a2[2] << 16);
        goto LABEL_46;
      case 4:
        v39 = *a2;
LABEL_46:
        if (v34 < 4)
        {
          v39 |= v36 << (8 * v34);
        }

        v35 = v39 + 4;
        break;
      default:
        break;
    }
  }

  v40 = ~v11;
  switch(v35)
  {
    case 0u:
      v41 = ~v22;
      v241 = ~v6;
      v197 = *(v5 + 64);
      v199 = v239 & ~v6;
      v201 = *(v9 + 64);
      v203 = v27;
      v205 = v21;
      v207 = v14;
      __n = v16;
      v211 = v16 + 7;
      v244 = v29 + 1;
      v42 = v29;
      v43 = v30;
      (*(v225 + 32))(result);
      result = a1;
      v44 = v42;
      v45 = (&a1[v12] & v40);
      v46 = (&v43[v12] & v40);
      v47 = v46[v42];
      v48 = v47 - 10;
      if (v47 >= 0xA)
      {
        if (v42 <= 3)
        {
          v49 = v42;
        }

        else
        {
          v49 = 4;
        }

        switch(v49)
        {
          case 1:
            v50 = *v46;
            goto LABEL_89;
          case 2:
            v50 = *v46;
            goto LABEL_89;
          case 3:
            v50 = *v46 | (*((&v43[v12] & v40) + 2) << 16);
            goto LABEL_89;
          case 4:
            v50 = *v46;
LABEL_89:
            if (v42 < 4)
            {
              v47 = (v50 | (v48 << (8 * v42))) + 10;
            }

            else
            {
              v47 = v50 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v47)
      {
        case 0u:
          v67 = (&a1[v12] & v40);
          v68 = &v43[v12] & v40;
          v69 = v44;
          (*(v221 + 32))(v67, v68, v222);
          result = a1;
          v45 = v67;
          *(v67 + v69) = 0;
          goto LABEL_118;
        case 1u:
          v73 = (&a1[v12] & v40);
          v95 = &v43[v12] & v40;
          v75 = v44;
          (*(v221 + 32))(v73, v95, v222);
          result = a1;
          v45 = v73;
          *((v73 + v227) & 0xFFFFFFFFFFFFFFF8) = *(&v46[v227] & 0xFFFFFFFFFFFFFFF8);
          v76 = 1;
          goto LABEL_113;
        case 2u:
          v83 = *v46;
          *((&a1[v12] & v40) + 0x10) = *((&v43[v12] & v40) + 0x10);
          *v45 = v83;
          v84 = 2;
          goto LABEL_117;
        case 3u:
          *v45 = *v46;
          v84 = 3;
          goto LABEL_117;
        case 4u:
          v73 = (&a1[v12] & v40);
          v74 = &v43[v12] & v40;
          v75 = v44;
          (*(v219 + 32))(v73, v74, v220);
          result = a1;
          v45 = v73;
          v76 = 4;
          goto LABEL_113;
        case 5u:
          *v45 = *v46;
          v84 = 5;
LABEL_117:
          *(v45 + v42) = v84;
          goto LABEL_118;
        case 6u:
          v99 = v34;
          (*(v246 + 32))(v45, v46, v224);
          v100 = (&a1[v12] & v40);
          v101 = ((v100 + v239) & v241);
          v102 = (&v46[v239] & v241);
          if (__swift_getEnumTagSinglePayload(v102, 1, v223))
          {
            memcpy(v101, v102, __n);
          }

          else
          {
            (*(v214 + 32))(v101, v102, v223);
            __swift_storeEnumTagSinglePayload(v101, 0, 1, v223);
          }

          v155 = ((v101 + v211) & 0xFFFFFFFFFFFFFFF8);
          v156 = ((v102 + v211) & 0xFFFFFFFFFFFFFFF8);
          *v155 = *v156;
          v157 = (v155 + 19) & 0xFFFFFFFFFFFFFFF8;
          v158 = (v156 + 19) & 0xFFFFFFFFFFFFFFF8;
          v159 = *v158;
          *(v157 + 4) = *(v158 + 4);
          *v157 = v159;
          v45 = v100;
          *(v100 + v42) = 6;
          v34 = v99;
          goto LABEL_148;
        case 7u:
          v87 = v34;
          (*(v246 + 32))(v45, v46, v224);
          v88 = (&a1[v12] & v40);
          v89 = ((v88 + v239) & v241);
          v90 = (&v46[v239] & v241);
          if (__swift_getEnumTagSinglePayload(v90, 1, v223))
          {
            memcpy(v89, v90, __n);
          }

          else
          {
            (*(v214 + 32))(v89, v90, v223);
            __swift_storeEnumTagSinglePayload(v89, 0, 1, v223);
          }

          v137 = ((v89 + v211) & 0xFFFFFFFFFFFFFFF8);
          v138 = ((v90 + v211) & 0xFFFFFFFFFFFFFFF8);
          *v137 = *v138;
          v139 = (v137 + 19) & 0xFFFFFFFFFFFFFFF8;
          v140 = (v138 + 19) & 0xFFFFFFFFFFFFFFF8;
          v141 = *v140;
          *(v139 + 4) = *(v140 + 4);
          *v139 = v141;
          v45 = v88;
          v142 = ((v88 + v237 + 7) & 0xFFFFFFFFFFFFFFF8);
          v143 = (&v46[v237 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v142 = *v143;
          v144 = ((v142 + 23) & 0xFFFFFFFFFFFFFFF8);
          v145 = ((v143 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v144 = *v145;
          *((v144 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
          *(v88 + v42) = 7;
          v34 = v87;
LABEL_148:
          v97 = v244;
          goto LABEL_176;
        case 8u:
          v234 = v34;
          v107 = (&a1[v12] & v40);
          (*(v217 + 32))(v45, v46, v218);
          v108 = ((v107 + v215 + 7) & 0xFFFFFFFFFFFFFFF8);
          v109 = (&v46[v215 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v108 = *v109;
          v110 = ((v108 + v229) & v41);
          v111 = ((v109 + v229) & v41);
          if (v24 != v231)
          {
            v112 = v239;
            v114 = ((v111 + v239) & v241);
            if (v213 == v231)
            {
              if (v15 >= 2 && __swift_getEnumTagSinglePayload((v111 + v239) & v241, v15, v223) >= 2)
              {
                goto LABEL_137;
              }
            }

            else
            {
              v165 = *(((v114 + v211) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v165 >= 0xFFFFFFFF)
              {
                LODWORD(v165) = -1;
              }

              if ((v165 + 1) >= 2)
              {
                goto LABEL_137;
              }
            }

            v115 = v246;
            v113 = v241;
            goto LABEL_156;
          }

          v112 = v239;
          if (__swift_getEnumTagSinglePayload((v109 + v229) & v41, v24, v224))
          {
LABEL_137:
            memcpy(v110, v111, v237);
            v97 = v244;
            v126 = v207;
            v125 = __n;
            v128 = v203;
            v127 = v205;
            v129 = v199;
            v130 = v201;
            v45 = v107;
LABEL_166:
            v174 = v125;
            goto LABEL_167;
          }

          v113 = v241;
          v114 = ((v111 + v239) & v241);
          v115 = v246;
LABEL_156:
          (*(v115 + 32))(v110, v111, v224);
          v166 = ((v110 + v112) & v113);
          if (__swift_getEnumTagSinglePayload(v114, 1, v223))
          {
            memcpy(v166, v114, __n);
          }

          else
          {
            (*(v214 + 32))(v166, v114, v223);
            __swift_storeEnumTagSinglePayload(v166, 0, 1, v223);
          }

          v125 = __n;
          v169 = ((v166 + v211) & 0xFFFFFFFFFFFFFFF8);
          v170 = ((v114 + v211) & 0xFFFFFFFFFFFFFFF8);
          *v169 = *v170;
          v171 = (v170 + 19) & 0xFFFFFFFFFFFFFFF8;
          v172 = *v171;
          v173 = (v169 + 19) & 0xFFFFFFFFFFFFFFF8;
          *(v173 + 4) = *(v171 + 4);
          *v173 = v172;
          v97 = v244;
          v127 = v205;
          v126 = v207;
          v130 = v201;
          v128 = v203;
          v129 = v199;
          v174 = v197;
          v45 = v107;
          if (!v15)
          {
            goto LABEL_166;
          }

LABEL_167:
          v175 = v129 + 7;
          *((v110 + ((((v175 + v174) & 0xFFFFFFFFFFFFFFF8) + 19) | 5) + 7) & 0xFFFFFFFFFFFFFFF8) = *((v111 + ((((v175 + v174) & 0xFFFFFFFFFFFFFFF8) + 19) | 5) + 7) & 0xFFFFFFFFFFFFFFF8);
          v176 = (((v175 + v125) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
          if (v176 <= v126)
          {
            v176 = v126;
          }

          if (v127 > v176)
          {
            v176 = v127;
          }

          if (v128 > v176)
          {
            v176 = v128;
          }

          if (v130 > v176)
          {
            v176 = v130;
          }

          *(v45 + v176) = 8;
          v34 = v234;
LABEL_176:
          result = a1;
LABEL_177:
          v177 = ((v45 + v97 + 7) & 0xFFFFFFFFFFFFFFF8);
          v178 = (&v46[v97 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v177 = *v178;
          v179 = (v177 + 15) & 0xFFFFFFFFFFFFFFF8;
          v180 = (v178 + 15) & 0xFFFFFFFFFFFFFFF8;
          v181 = *v180;
          v182 = *(v180 + 16);
          *(v179 + 32) = *(v180 + 32);
          *v179 = v181;
          *(v179 + 16) = v182;
          *(v179 + 40) = *(v180 + 40);
          result[v34] = 0;
          return result;
        case 9u:
          v73 = (&a1[v12] & v40);
          v81 = &v43[v12] & v40;
          v75 = v44;
          (*(v233 + 32))(v73, v81, v216);
          result = a1;
          v45 = v73;
          v76 = 9;
LABEL_113:
          *(v73 + v75) = v76;
LABEL_118:
          v97 = v244;
          goto LABEL_177;
        default:
          memcpy((&a1[v12] & v40), (&v43[v12] & v40), v244);
          result = a1;
          v45 = (&a1[v12] & v40);
          v97 = v244;
          goto LABEL_177;
      }

    case 1u:
      v56 = ~v22;
      v242 = ~v6;
      v198 = *(v5 + 64);
      v200 = v239 & ~v6;
      v202 = *(v9 + 64);
      v204 = v27;
      v206 = v21;
      v208 = v14;
      __na = v16;
      v212 = v16 + 7;
      v245 = v29 + 1;
      v57 = v29;
      v58 = v30;
      (*(v225 + 32))(result);
      result = a1;
      v59 = v57;
      v60 = (&a1[v12] & v40);
      v61 = (&v58[v12] & v40);
      v62 = v61[v57];
      v63 = v62 - 10;
      if (v62 >= 0xA)
      {
        if (v57 <= 3)
        {
          v64 = v57;
        }

        else
        {
          v64 = 4;
        }

        switch(v64)
        {
          case 1:
            v65 = *v61;
            goto LABEL_95;
          case 2:
            v65 = *v61;
            goto LABEL_95;
          case 3:
            v65 = *v61 | (*((&v58[v12] & v40) + 2) << 16);
            goto LABEL_95;
          case 4:
            v65 = *v61;
LABEL_95:
            if (v57 < 4)
            {
              v62 = (v65 | (v63 << (8 * v57))) + 10;
            }

            else
            {
              v62 = v65 + 10;
            }

            break;
          default:
            goto LABEL_98;
        }
      }

      break;
    case 2u:
      v51 = a2[v33];
      v52 = v51 - 2;
      if (v51 >= 2)
      {
        if (v33 <= 3)
        {
          v53 = v33;
        }

        else
        {
          v53 = 4;
        }

        switch(v53)
        {
          case 1:
            v54 = *a2;
            goto LABEL_77;
          case 2:
            v54 = *a2;
            goto LABEL_77;
          case 3:
            v54 = *a2 | (a2[2] << 16);
            goto LABEL_77;
          case 4:
            v54 = *a2;
LABEL_77:
            if (v33 < 4)
            {
              v51 = (v54 | (v52 << (8 * v33))) + 2;
            }

            else
            {
              v51 = v54 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v51 == 1)
      {
        *result = *a2;
        result[8] = a2[8];
        result[v33] = 1;
      }

      else
      {
        v66 = result;
        if (v51)
        {
          memcpy(result, a2, v33 + 1);
          result = v66;
        }

        else
        {
          (*(v32 + 32))();
          result = v66;
          v66[v33] = 0;
        }
      }

      v55 = 2;
      goto LABEL_192;
    case 3u:
      *result = *a2;
      result[8] = a2[8];
      v55 = 3;
      goto LABEL_192;
    default:

      return memcpy(result, a2, v34 + 1);
  }

LABEL_98:
  switch(v62)
  {
    case 0u:
      v70 = (&a1[v12] & v40);
      v71 = &v58[v12] & v40;
      v72 = v59;
      (*(v221 + 32))(v70, v71, v222);
      result = a1;
      v60 = v70;
      *(v70 + v72) = 0;
      goto LABEL_121;
    case 1u:
      v77 = (&a1[v12] & v40);
      v96 = &v58[v12] & v40;
      v79 = v59;
      (*(v221 + 32))(v77, v96, v222);
      result = a1;
      v60 = v77;
      *((v77 + v227) & 0xFFFFFFFFFFFFFFF8) = *(&v61[v227] & 0xFFFFFFFFFFFFFFF8);
      v80 = 1;
      goto LABEL_115;
    case 2u:
      v85 = *v61;
      *((&a1[v12] & v40) + 0x10) = *((&v58[v12] & v40) + 0x10);
      *v60 = v85;
      v86 = 2;
      goto LABEL_120;
    case 3u:
      *v60 = *v61;
      v86 = 3;
      goto LABEL_120;
    case 4u:
      v77 = (&a1[v12] & v40);
      v78 = &v58[v12] & v40;
      v79 = v59;
      (*(v219 + 32))(v77, v78, v220);
      result = a1;
      v60 = v77;
      v80 = 4;
      goto LABEL_115;
    case 5u:
      *v60 = *v61;
      v86 = 5;
LABEL_120:
      *(v60 + v57) = v86;
      goto LABEL_121;
    case 6u:
      v103 = v34;
      (*(v246 + 32))(v60, v61, v224);
      v104 = (&a1[v12] & v40);
      v105 = ((v104 + v239) & v242);
      v106 = (&v61[v239] & v242);
      if (__swift_getEnumTagSinglePayload(v106, 1, v223))
      {
        memcpy(v105, v106, __na);
      }

      else
      {
        (*(v214 + 32))(v105, v106, v223);
        __swift_storeEnumTagSinglePayload(v105, 0, 1, v223);
      }

      v160 = ((v105 + v212) & 0xFFFFFFFFFFFFFFF8);
      v161 = ((v106 + v212) & 0xFFFFFFFFFFFFFFF8);
      *v160 = *v161;
      v162 = (v160 + 19) & 0xFFFFFFFFFFFFFFF8;
      v163 = (v161 + 19) & 0xFFFFFFFFFFFFFFF8;
      v164 = *v163;
      *(v162 + 4) = *(v163 + 4);
      *v162 = v164;
      v60 = v104;
      *(v104 + v57) = 6;
      v34 = v103;
      goto LABEL_151;
    case 7u:
      v91 = v34;
      (*(v246 + 32))(v60, v61, v224);
      v92 = (&a1[v12] & v40);
      v93 = ((v92 + v239) & v242);
      v94 = (&v61[v239] & v242);
      if (__swift_getEnumTagSinglePayload(v94, 1, v223))
      {
        memcpy(v93, v94, __na);
      }

      else
      {
        (*(v214 + 32))(v93, v94, v223);
        __swift_storeEnumTagSinglePayload(v93, 0, 1, v223);
      }

      v146 = ((v93 + v212) & 0xFFFFFFFFFFFFFFF8);
      v147 = ((v94 + v212) & 0xFFFFFFFFFFFFFFF8);
      *v146 = *v147;
      v148 = (v146 + 19) & 0xFFFFFFFFFFFFFFF8;
      v149 = (v147 + 19) & 0xFFFFFFFFFFFFFFF8;
      v150 = *v149;
      *(v148 + 4) = *(v149 + 4);
      *v148 = v150;
      v60 = v92;
      v151 = ((v92 + v237 + 7) & 0xFFFFFFFFFFFFFFF8);
      v152 = (&v61[v237 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v151 = *v152;
      v153 = ((v151 + 23) & 0xFFFFFFFFFFFFFFF8);
      v154 = ((v152 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v153 = *v154;
      *((v153 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v154 + 23) & 0xFFFFFFFFFFFFFFF8);
      *(v92 + v57) = 7;
      v34 = v91;
LABEL_151:
      v98 = v245;
      goto LABEL_190;
    case 8u:
      v235 = v34;
      v116 = (&a1[v12] & v40);
      (*(v217 + 32))(v60, v61, v218);
      v117 = ((v116 + v215 + 7) & 0xFFFFFFFFFFFFFFF8);
      v118 = (&v61[v215 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v117 = *v118;
      v119 = ((v117 + v229) & v56);
      v120 = ((v118 + v229) & v56);
      if (v24 == v231)
      {
        v121 = v239;
        if (!__swift_getEnumTagSinglePayload((v118 + v229) & v56, v24, v224))
        {
          v122 = v242;
          v123 = ((v120 + v239) & v242);
          v124 = v246;
          goto LABEL_162;
        }

LABEL_141:
        memcpy(v119, v120, v237);
        v98 = v245;
        v132 = v208;
        v131 = __na;
        v134 = v204;
        v133 = v206;
        v135 = v200;
        v136 = v202;
        v60 = v116;
        goto LABEL_180;
      }

      v121 = v239;
      v123 = ((v120 + v239) & v242);
      if (v213 == v231)
      {
        if (v15 >= 2 && __swift_getEnumTagSinglePayload((v120 + v239) & v242, v15, v223) >= 2)
        {
          goto LABEL_141;
        }
      }

      else
      {
        v167 = *(((v123 + v212) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v167 >= 0xFFFFFFFF)
        {
          LODWORD(v167) = -1;
        }

        if ((v167 + 1) >= 2)
        {
          goto LABEL_141;
        }
      }

      v124 = v246;
      v122 = v242;
LABEL_162:
      (*(v124 + 32))(v119, v120, v224);
      v168 = ((v119 + v121) & v122);
      if (__swift_getEnumTagSinglePayload(v123, 1, v223))
      {
        memcpy(v168, v123, __na);
      }

      else
      {
        (*(v214 + 32))(v168, v123, v223);
        __swift_storeEnumTagSinglePayload(v168, 0, 1, v223);
      }

      v131 = __na;
      v183 = ((v168 + v212) & 0xFFFFFFFFFFFFFFF8);
      v184 = ((v123 + v212) & 0xFFFFFFFFFFFFFFF8);
      *v183 = *v184;
      v185 = (v184 + 19) & 0xFFFFFFFFFFFFFFF8;
      v186 = *v185;
      v187 = (v183 + 19) & 0xFFFFFFFFFFFFFFF8;
      *(v187 + 4) = *(v185 + 4);
      *v187 = v186;
      v98 = v245;
      v133 = v206;
      v132 = v208;
      v136 = v202;
      v134 = v204;
      v135 = v200;
      v188 = v198;
      v60 = v116;
      if (v15)
      {
LABEL_181:
        v189 = v135 + 7;
        *((v119 + ((((v189 + v188) & 0xFFFFFFFFFFFFFFF8) + 19) | 5) + 7) & 0xFFFFFFFFFFFFFFF8) = *((v120 + ((((v189 + v188) & 0xFFFFFFFFFFFFFFF8) + 19) | 5) + 7) & 0xFFFFFFFFFFFFFFF8);
        v190 = (((v189 + v131) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
        if (v190 <= v132)
        {
          v190 = v132;
        }

        if (v133 > v190)
        {
          v190 = v133;
        }

        if (v134 > v190)
        {
          v190 = v134;
        }

        if (v136 > v190)
        {
          v190 = v136;
        }

        *(v60 + v190) = 8;
        v34 = v235;
LABEL_190:
        result = a1;
LABEL_191:
        v191 = ((v60 + v98 + 7) & 0xFFFFFFFFFFFFFFF8);
        v192 = (&v61[v98 + 7] & 0xFFFFFFFFFFFFFFF8);
        *v191 = *v192;
        v193 = (v191 + 15) & 0xFFFFFFFFFFFFFFF8;
        v194 = (v192 + 15) & 0xFFFFFFFFFFFFFFF8;
        v195 = *v194;
        v196 = *(v194 + 16);
        *(v193 + 32) = *(v194 + 32);
        *v193 = v195;
        *(v193 + 16) = v196;
        *(v193 + 40) = *(v194 + 40);
        v55 = 1;
LABEL_192:
        result[v34] = v55;
        return result;
      }

LABEL_180:
      v188 = v131;
      goto LABEL_181;
    case 9u:
      v77 = (&a1[v12] & v40);
      v82 = &v58[v12] & v40;
      v79 = v59;
      (*(v233 + 32))(v77, v82, v216);
      result = a1;
      v60 = v77;
      v80 = 9;
LABEL_115:
      *(v77 + v79) = v80;
LABEL_121:
      v98 = v245;
      goto LABEL_191;
    default:
      memcpy((&a1[v12] & v40), (&v58[v12] & v40), v245);
      result = a1;
      v60 = (&a1[v12] & v40);
      v98 = v245;
      goto LABEL_191;
  }
}

unsigned __int8 *sub_1DCE92E78(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  v4 = sub_1DD0DB04C();
  v238 = *(v4 - 8);
  v239 = v4;
  v249 = *(v238 + 64);
  v235 = sub_1DD0DC76C();
  v246 = *(v235 - 8);
  v5 = *(v246 + 80);
  v232 = sub_1DD0DB1EC();
  v247 = *(v232 - 8);
  v231 = v247;
  v240 = *(v247 + 80) | v5;
  v236 = sub_1DD0DB4BC();
  v244 = *(v236 - 8);
  v254 = v3;
  v255 = v244;
  v6 = *(v244 + 80) & 0xF8;
  v237 = sub_1DD0DB3EC();
  v7 = *(v237 - 8);
  v8 = *(v7 + 80);
  v9 = v6 | v8 | 7;
  v230 = sub_1DD0DD12C();
  v242 = *(v230 - 8);
  v229 = v242;
  v10 = *(v242 + 80);
  v11 = sub_1DD0DD08C();
  v12 = v9;
  v228 = v11;
  v13 = v11;
  v14 = v8;
  v15 = *(v13 - 8);
  v227 = v15;
  v16 = (v240 | (v10 | *(v15 + 80))) & 0xF8 | v9;
  v17 = v249 + v16;
  v18 = *(v246 + 64);
  v226 = v18 + 7;
  if (((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v18)
  {
    v18 = ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v18 <= *(v247 + 64))
  {
    v18 = *(v247 + 64);
  }

  if (v18 <= 0x18)
  {
    v19 = 24;
  }

  else
  {
    v19 = v18;
  }

  v250 = *(v244 + 64) + v8;
  v221 = v7;
  v20 = *(v7 + 84);
  v21 = *(v7 + 64);
  v220 = v21;
  if (!v20)
  {
    ++v21;
  }

  v241 = v21;
  v22 = v21 + 7;
  v233 = v250 & ~v8;
  v23 = (v21 + 7 + v233) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  v219 = v19;
  if (v24 <= v19)
  {
    v25 = v19;
  }

  else
  {
    v25 = (v23 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v26 = v23 + 31;
  v218 = (((((v26 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v218 > v25)
  {
    v25 = (((((v26 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v3 = v254;
  v223 = *(v242 + 64);
  v224 = v9 + 16;
  v27 = *(v244 + 84);
  v234 = *(v7 + 84);
  v28 = v20 != 0;
  v29 = v20 - 1;
  if (!v28)
  {
    v29 = 0;
  }

  v215 = v29;
  if (v29 <= v27)
  {
    v29 = *(v244 + 84);
  }

  if (v29 <= 0x7FFFFFFE)
  {
    v29 = 2147483646;
  }

  v225 = v29;
  v30 = ((v26 + ((v9 + 16 + ((v223 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v217 = v30;
  if (v30 <= v25)
  {
    v30 = v25;
  }

  v31 = *(v15 + 64);
  if (v31 <= v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = *(v15 + 64);
  }

  v33 = *(a3 + 16);
  v245 = *(v33 - 8);
  if (*(v245 + 64) <= 9uLL)
  {
    v34 = 9;
  }

  else
  {
    v34 = *(v245 + 64);
  }

  if (v34 + 1 > ((((v32 + (v17 & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41)
  {
    v35 = v34 + 1;
  }

  else
  {
    v35 = ((((v32 + (v17 & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  if (v35 <= 9)
  {
    v36 = 9;
  }

  else
  {
    v36 = v35;
  }

  v37 = v254[v36];
  v38 = v37 - 4;
  if (v37 >= 4)
  {
    if (v36 <= 3)
    {
      v39 = v36;
    }

    else
    {
      v39 = 4;
    }

    switch(v39)
    {
      case 1:
        v40 = *v254;
        goto LABEL_45;
      case 2:
        v40 = *v254;
        goto LABEL_45;
      case 3:
        v40 = *v254 | (v254[2] << 16);
        goto LABEL_45;
      case 4:
        v40 = *v254;
LABEL_45:
        if (v36 < 4)
        {
          v40 |= v38 << (8 * v36);
        }

        v37 = v40 + 4;
        break;
      default:
        break;
    }
  }

  v216 = v31;
  v252 = v32 + 1;
  v41 = ~v16;
  v248 = ~v14;
  v222 = ~v12;
  v243 = 8 * v34;
  switch(v37)
  {
    case 0u:
      (*(v238 + 8))(v254, v239);
      v42 = (&v254[v17] & v41);
      v43 = v42[v32];
      v44 = v43 - 10;
      if (v43 >= 0xA)
      {
        if (v32 <= 3)
        {
          v45 = v32;
        }

        else
        {
          v45 = 4;
        }

        switch(v45)
        {
          case 1:
            v46 = *v42;
            goto LABEL_82;
          case 2:
            v46 = *v42;
            goto LABEL_82;
          case 3:
            v46 = *v42 | (*((&v254[v17] & v41) + 2) << 16);
            goto LABEL_82;
          case 4:
            v46 = *v42;
LABEL_82:
            if (v32 < 4)
            {
              v43 = (v46 | (v44 << (8 * v32))) + 10;
            }

            else
            {
              v43 = v46 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v43)
      {
        case 0u:
          goto LABEL_91;
        case 1u:
          goto LABEL_102;
        case 2u:
          goto LABEL_95;
        case 3u:
          goto LABEL_96;
        case 4u:
          goto LABEL_92;
        case 5u:
          goto LABEL_103;
        case 6u:
          goto LABEL_104;
        case 7u:
          goto LABEL_97;
        case 8u:
          goto LABEL_108;
        case 9u:
          goto LABEL_93;
        default:
          goto LABEL_124;
      }

      goto LABEL_124;
    case 1u:
      (*(v238 + 8))(v254, v239);
      v42 = (&v254[v17] & v41);
      v51 = v42[v32];
      v52 = v51 - 10;
      if (v51 >= 0xA)
      {
        if (v32 <= 3)
        {
          v53 = v32;
        }

        else
        {
          v53 = 4;
        }

        switch(v53)
        {
          case 1:
            v54 = *v42;
            goto LABEL_87;
          case 2:
            v54 = *v42;
            goto LABEL_87;
          case 3:
            v54 = *v42 | (*((&v254[v17] & v41) + 2) << 16);
            goto LABEL_87;
          case 4:
            v54 = *v42;
LABEL_87:
            if (v32 < 4)
            {
              v51 = (v54 | (v52 << (8 * v32))) + 10;
            }

            else
            {
              v51 = v54 + 10;
            }

            break;
          default:
            goto LABEL_90;
        }
      }

      break;
    case 2u:
      v47 = v254[v34];
      v48 = v47 - 2;
      if (v47 >= 2)
      {
        if (v34 <= 3)
        {
          v49 = v34;
        }

        else
        {
          v49 = 4;
        }

        switch(v49)
        {
          case 1:
            v50 = *v254;
            goto LABEL_74;
          case 2:
            v50 = *v254;
            goto LABEL_74;
          case 3:
            v50 = *v254 | (v254[2] << 16);
            goto LABEL_74;
          case 4:
            v50 = *v254;
LABEL_74:
            if (v34 < 4)
            {
              v47 = (v50 | (v48 << v243)) + 2;
            }

            else
            {
              v47 = v50 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v47 == 1)
      {
        goto LABEL_80;
      }

      if (!v47)
      {
        (*(v245 + 8))(v254, v33);
      }

      goto LABEL_126;
    case 3u:
LABEL_80:

      goto LABEL_126;
    default:
      goto LABEL_126;
  }

LABEL_90:
  switch(v51)
  {
    case 0u:
LABEL_91:
      v56 = v246;
      v55 = v235;
      goto LABEL_94;
    case 1u:
LABEL_102:
      (*(v246 + 8))(v42, v235);
      v68 = *(&v42[v226] & 0xFFFFFFFFFFFFFFF8);

      goto LABEL_124;
    case 2u:
LABEL_95:
      v57 = *(v42 + 1);

      v58 = *(v42 + 2);
      goto LABEL_107;
    case 3u:
LABEL_96:
      v59 = *v42;
      swift_unknownObjectRelease();
      goto LABEL_124;
    case 4u:
LABEL_92:
      v56 = v231;
      v55 = v232;
      goto LABEL_94;
    case 5u:
LABEL_103:
      v69 = *v42;
      goto LABEL_123;
    case 6u:
LABEL_104:
      (*(v255 + 8))(v42, v236);
      v211 = &v42[v250] & v248;
      if (!__swift_getEnumTagSinglePayload(v211, 1, v237))
      {
        (*(v221 + 8))(v211, v237);
      }

      v70 = *(((v22 + v211) & 0xFFFFFFFFFFFFFFF8) + 8);
LABEL_107:

      goto LABEL_124;
    case 7u:
LABEL_97:
      v210 = v22;
      (*(v255 + 8))(v42, v236);
      v60 = &v42[v250] & v248;
      if (!__swift_getEnumTagSinglePayload(v60, 1, v237))
      {
        (*(v221 + 8))(v60, v237);
      }

      v61 = 7;
      if (!v234)
      {
        v61 = 8;
      }

      v62 = *(((v220 + v61 + v60) & 0xFFFFFFFFFFFFFFF8) + 8);

      v63 = &v42[((((v233 + v241 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 12] & 0xFFFFFFFFFFFFFFF8;
      v64 = *(v63 + 8);

      v65 = (v63 + 23) & 0xFFFFFFFFFFFFFFF8;
      v66 = *(v65 + 8);

      v67 = *(((v65 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

      v22 = v210;
      goto LABEL_124;
    case 8u:
LABEL_108:
      v212 = v22;
      (*(v229 + 8))(v42, v230);
      v71 = &v42[v223 + 7] & 0xFFFFFFFFFFFFFFF8;
      v72 = *(v71 + 8);

      v73 = (v224 + v71) & v222;
      if (v27 == v225)
      {
        v74 = (v224 + v71) & v222;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v74, v27, v236);
        v73 = v74;
        v22 = v212;
        if (EnumTagSinglePayload)
        {
          goto LABEL_122;
        }

        v209 = (v250 + v73) & v248;
        goto LABEL_119;
      }

      v76 = (v250 + v73) & v248;
      v22 = v212;
      if (v215 == v225)
      {
        v209 = (v250 + v73) & v248;
        if (v234 >= 2)
        {
          v207 = v73;
          v77 = __swift_getEnumTagSinglePayload(v76, v234, v237);
          v73 = v207;
          if (v77 >= 2)
          {
            goto LABEL_122;
          }
        }

        goto LABEL_119;
      }

      v78 = *(((v212 + v76) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v78 >= 0xFFFFFFFF)
      {
        LODWORD(v78) = -1;
      }

      if ((v78 + 1) < 2)
      {
        v209 = (v250 + v73) & v248;
LABEL_119:
        v208 = v73;
        (*(v255 + 8))(v73, v236);
        if (!__swift_getEnumTagSinglePayload(v209, 1, v237))
        {
          (*(v221 + 8))(v209, v237);
        }

        v79 = *(((v22 + v209) & 0xFFFFFFFFFFFFFFF8) + 8);

        v73 = v208;
      }

LABEL_122:
      v69 = *((v24 + v73 + 7) & 0xFFFFFFFFFFFFFFF8);
LABEL_123:

LABEL_124:
      v80 = &v42[v252 + 7];
      v81 = v22;
      v83 = (v80 & 0xFFFFFFFFFFFFFFF8) + 15;
      v82 = *(v80 & 0xFFFFFFFFFFFFFFF8);

      v84 = (v83 & 0xFFFFFFFFFFFFFFF8);
      v22 = v81;
      if (v84[3] >= 0xFFFFFFFF)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v84);
      }

LABEL_126:
      v85 = a2[v36];
      v86 = v85 - 4;
      if (v85 >= 4)
      {
        if (v36 <= 3)
        {
          v87 = v36;
        }

        else
        {
          v87 = 4;
        }

        switch(v87)
        {
          case 1:
            v88 = *a2;
            goto LABEL_135;
          case 2:
            v88 = *a2;
            goto LABEL_135;
          case 3:
            v88 = *a2 | (a2[2] << 16);
            goto LABEL_135;
          case 4:
            v88 = *a2;
LABEL_135:
            if (v36 < 4)
            {
              v85 = (v88 | (v86 << (8 * v36))) + 4;
            }

            else
            {
              v85 = v88 + 4;
            }

            break;
          default:
            goto LABEL_138;
        }
      }

      break;
    case 9u:
LABEL_93:
      v56 = v227;
      v55 = v228;
LABEL_94:
      (*(v56 + 8))(v42, v55);
      goto LABEL_124;
    default:
      goto LABEL_124;
  }

LABEL_138:
  switch(v85)
  {
    case 0u:
      (*(v238 + 32))(v254);
      v89 = (&v254[v17] & v41);
      v90 = (&a2[v17] & v41);
      v91 = v90[v32];
      v92 = v91 - 10;
      if (v91 >= 0xA)
      {
        if (v32 <= 3)
        {
          v93 = v32;
        }

        else
        {
          v93 = 4;
        }

        switch(v93)
        {
          case 1:
            v94 = *v90;
            goto LABEL_178;
          case 2:
            v94 = *v90;
            goto LABEL_178;
          case 3:
            v94 = *(&a2[v17] & v41) | (*((&a2[v17] & v41) + 2) << 16);
            goto LABEL_178;
          case 4:
            v94 = *v90;
LABEL_178:
            if (v32 < 4)
            {
              v91 = (v94 | (v92 << (8 * v32))) + 10;
            }

            else
            {
              v91 = v94 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v91)
      {
        case 0u:
          (*(v246 + 32))(&v254[v17] & v41, v90, v235);
          *(v89 + v32) = 0;
          goto LABEL_232;
        case 1u:
          (*(v246 + 32))(&v254[v17] & v41, v90, v235);
          *((v89 + v226) & 0xFFFFFFFFFFFFFFF8) = *(&v90[v226] & 0xFFFFFFFFFFFFFFF8);
          v107 = 1;
          goto LABEL_231;
        case 2u:
          v109 = *v90;
          *((&v254[v17] & v41) + 0x10) = *((&a2[v17] & v41) + 0x10);
          *v89 = v109;
          v107 = 2;
          goto LABEL_231;
        case 3u:
          *v89 = *v90;
          v107 = 3;
          goto LABEL_231;
        case 4u:
          (*(v231 + 32))(&v254[v17] & v41, v90, v232);
          v107 = 4;
          goto LABEL_231;
        case 5u:
          *v89 = *v90;
          v107 = 5;
          goto LABEL_231;
        case 6u:
          (*(v255 + 32))(&v254[v17] & v41, v90, v236);
          v115 = ((v89 + v250) & v248);
          v116 = (&v90[v250] & v248);
          if (__swift_getEnumTagSinglePayload(v116, 1, v237))
          {
            memcpy(v115, v116, v241);
          }

          else
          {
            (*(v221 + 32))(v115, v116, v237);
            __swift_storeEnumTagSinglePayload(v115, 0, 1, v237);
          }

          v163 = ((v115 + v22) & 0xFFFFFFFFFFFFFFF8);
          v164 = ((v116 + v22) & 0xFFFFFFFFFFFFFFF8);
          *v163 = *v164;
          v165 = (v163 + 19) & 0xFFFFFFFFFFFFFFF8;
          v166 = (v164 + 19) & 0xFFFFFFFFFFFFFFF8;
          v167 = *v166;
          *(v165 + 4) = *(v166 + 4);
          *v165 = v167;
          v107 = 6;
          goto LABEL_231;
        case 7u:
          (*(v255 + 32))(&v254[v17] & v41, v90, v236);
          v111 = ((v89 + v250) & v248);
          v112 = (&v90[v250] & v248);
          if (__swift_getEnumTagSinglePayload(v112, 1, v237))
          {
            memcpy(v111, v112, v241);
          }

          else
          {
            (*(v221 + 32))(v111, v112, v237);
            __swift_storeEnumTagSinglePayload(v111, 0, 1, v237);
          }

          v145 = ((v111 + v22) & 0xFFFFFFFFFFFFFFF8);
          v146 = ((v112 + v22) & 0xFFFFFFFFFFFFFFF8);
          *v145 = *v146;
          v147 = (v145 + 19) & 0xFFFFFFFFFFFFFFF8;
          v148 = (v146 + 19) & 0xFFFFFFFFFFFFFFF8;
          v149 = *v148;
          *(v147 + 4) = *(v148 + 4);
          *v147 = v149;
          v150 = ((v89 + v24 + 7) & 0xFFFFFFFFFFFFFFF8);
          v151 = (&v90[v24 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v150 = *v151;
          v152 = ((v150 + 23) & 0xFFFFFFFFFFFFFFF8);
          v153 = ((v151 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v152 = *v153;
          *((v152 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v153 + 23) & 0xFFFFFFFFFFFFFFF8);
          v107 = 7;
          goto LABEL_231;
        case 8u:
          v213 = v22;
          (*(v229 + 32))(&v254[v17] & v41, v90, v230);
          v119 = ((v89 + v223 + 7) & 0xFFFFFFFFFFFFFFF8);
          v120 = (&v90[v223 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v119 = *v120;
          v121 = ((v119 + v224) & v222);
          v122 = ((v120 + v224) & v222);
          if (v27 == v225)
          {
            v123 = __swift_getEnumTagSinglePayload(v122, v27, v236);
            v125 = v248;
            v124 = v250;
            if (!v123)
            {
              v126 = ((v122 + v250) & v248);
              goto LABEL_242;
            }

LABEL_220:
            memcpy(v121, v122, v24);
            v135 = v241;
            v137 = v218;
            v136 = v219;
            v139 = v216;
            v138 = v217;
LABEL_251:
            v191 = v135;
            goto LABEL_252;
          }

          v125 = v248;
          v124 = v250;
          v126 = ((v122 + v250) & v248);
          if (v215 != v225)
          {
            v185 = *(((v126 + v213) & 0xFFFFFFFFFFFFFFF8) + 8);
            if (v185 >= 0xFFFFFFFF)
            {
              LODWORD(v185) = -1;
            }

            if ((v185 + 1) < 2)
            {
              goto LABEL_242;
            }

            goto LABEL_220;
          }

          if (v234 >= 2 && __swift_getEnumTagSinglePayload((v122 + v250) & v248, v234, v237) >= 2)
          {
            goto LABEL_220;
          }

LABEL_242:
          (*(v255 + 32))(v121, v122, v236);
          v186 = v121;
          v187 = ((v121 + v124) & v125);
          if (__swift_getEnumTagSinglePayload(v126, 1, v237))
          {
            memcpy(v187, v126, v241);
          }

          else
          {
            (*(v221 + 32))(v187, v126, v237);
            __swift_storeEnumTagSinglePayload(v187, 0, 1, v237);
          }

          v136 = v219;
          v191 = v220;
          v192 = ((v187 + v213) & 0xFFFFFFFFFFFFFFF8);
          v193 = ((v126 + v213) & 0xFFFFFFFFFFFFFFF8);
          *v192 = *v193;
          v194 = (v193 + 19) & 0xFFFFFFFFFFFFFFF8;
          v195 = *v194;
          v196 = (v192 + 19) & 0xFFFFFFFFFFFFFFF8;
          *(v196 + 4) = *(v194 + 4);
          *v196 = v195;
          v135 = v241;
          v138 = v217;
          v137 = v218;
          v139 = v216;
          v121 = v186;
          if (!v234)
          {
            goto LABEL_251;
          }

LABEL_252:
          v197 = (((v233 + 7 + v191) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          *((v121 + v197 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v122 + v197 + 7) & 0xFFFFFFFFFFFFFFF8);
          v198 = (((v233 + 7 + v135) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
          if (v198 <= v136)
          {
            v198 = v136;
          }

          if (v137 > v198)
          {
            v198 = v137;
          }

          if (v138 > v198)
          {
            v198 = v138;
          }

          if (v139 > v198)
          {
            v198 = v139;
          }

          *(v89 + v198) = 8;
LABEL_232:
          v168 = ((v89 + v252 + 7) & 0xFFFFFFFFFFFFFFF8);
          v169 = (&v90[v252 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v168 = *v169;
          v170 = (v168 + 15) & 0xFFFFFFFFFFFFFFF8;
          v171 = (v169 + 15) & 0xFFFFFFFFFFFFFFF8;
          v172 = *v171;
          v173 = *(v171 + 16);
          *(v170 + 32) = *(v171 + 32);
          *v170 = v172;
          *(v170 + 16) = v173;
          *(v170 + 40) = *(v171 + 40);
          v254[v36] = 0;
          return v3;
        case 9u:
          (*(v227 + 32))(&v254[v17] & v41, v90, v228);
          v107 = 9;
LABEL_231:
          *(v89 + v32) = v107;
          goto LABEL_232;
        default:
          memcpy((&v254[v17] & v41), v90, v252);
          goto LABEL_232;
      }

    case 1u:
      (*(v238 + 32))(v254);
      v100 = (&v254[v17] & v41);
      v101 = (&a2[v17] & v41);
      v102 = v101[v32];
      v103 = v102 - 10;
      if (v102 >= 0xA)
      {
        if (v32 <= 3)
        {
          v104 = v32;
        }

        else
        {
          v104 = 4;
        }

        switch(v104)
        {
          case 1:
            v105 = *v101;
            goto LABEL_184;
          case 2:
            v105 = *v101;
            goto LABEL_184;
          case 3:
            v105 = *(&a2[v17] & v41) | (*((&a2[v17] & v41) + 2) << 16);
            goto LABEL_184;
          case 4:
            v105 = *v101;
LABEL_184:
            if (v32 < 4)
            {
              v102 = (v105 | (v103 << (8 * v32))) + 10;
            }

            else
            {
              v102 = v105 + 10;
            }

            break;
          default:
            goto LABEL_187;
        }
      }

      break;
    case 2u:
      v95 = a2[v34];
      v96 = v95 - 2;
      if (v95 >= 2)
      {
        if (v34 <= 3)
        {
          v97 = v34;
        }

        else
        {
          v97 = 4;
        }

        switch(v97)
        {
          case 1:
            v98 = *a2;
            goto LABEL_166;
          case 2:
            v98 = *a2;
            goto LABEL_166;
          case 3:
            v98 = *a2 | (a2[2] << 16);
            goto LABEL_166;
          case 4:
            v98 = *a2;
LABEL_166:
            if (v34 < 4)
            {
              v95 = (v98 | (v96 << v243)) + 2;
            }

            else
            {
              v95 = v98 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v95 == 1)
      {
        *v254 = *a2;
        v254[8] = a2[8];
        v254[v34] = 1;
      }

      else if (v95)
      {
        memcpy(v254, a2, v34 + 1);
      }

      else
      {
        (*(v245 + 32))(v254);
        v254[v34] = 0;
      }

      v99 = 2;
      goto LABEL_237;
    case 3u:
      *v254 = *a2;
      v254[8] = a2[8];
      v99 = 3;
      goto LABEL_237;
    default:

      return memcpy(v254, a2, v36 + 1);
  }

LABEL_187:
  switch(v102)
  {
    case 0u:
      (*(v246 + 32))(&v254[v17] & v41, v101, v235);
      *(v100 + v32) = 0;
      goto LABEL_236;
    case 1u:
      (*(v246 + 32))(&v254[v17] & v41, v101, v235);
      *((v100 + v226) & 0xFFFFFFFFFFFFFFF8) = *(&v101[v226] & 0xFFFFFFFFFFFFFFF8);
      v108 = 1;
      goto LABEL_235;
    case 2u:
      v110 = *v101;
      *((&v254[v17] & v41) + 0x10) = *((&a2[v17] & v41) + 0x10);
      *v100 = v110;
      v108 = 2;
      goto LABEL_235;
    case 3u:
      *v100 = *v101;
      v108 = 3;
      goto LABEL_235;
    case 4u:
      (*(v231 + 32))(&v254[v17] & v41, v101, v232);
      v108 = 4;
      goto LABEL_235;
    case 5u:
      *v100 = *v101;
      v108 = 5;
      goto LABEL_235;
    case 6u:
      (*(v255 + 32))(&v254[v17] & v41, v101, v236);
      v117 = ((v100 + v250) & v248);
      v118 = (&v101[v250] & v248);
      if (__swift_getEnumTagSinglePayload(v118, 1, v237))
      {
        memcpy(v117, v118, v241);
      }

      else
      {
        (*(v221 + 32))(v117, v118, v237);
        __swift_storeEnumTagSinglePayload(v117, 0, 1, v237);
      }

      v174 = ((v117 + v22) & 0xFFFFFFFFFFFFFFF8);
      v175 = ((v118 + v22) & 0xFFFFFFFFFFFFFFF8);
      *v174 = *v175;
      v176 = (v174 + 19) & 0xFFFFFFFFFFFFFFF8;
      v177 = (v175 + 19) & 0xFFFFFFFFFFFFFFF8;
      v178 = *v177;
      *(v176 + 4) = *(v177 + 4);
      *v176 = v178;
      v108 = 6;
      goto LABEL_235;
    case 7u:
      (*(v255 + 32))(&v254[v17] & v41, v101, v236);
      v113 = ((v100 + v250) & v248);
      v114 = (&v101[v250] & v248);
      if (__swift_getEnumTagSinglePayload(v114, 1, v237))
      {
        memcpy(v113, v114, v241);
      }

      else
      {
        (*(v221 + 32))(v113, v114, v237);
        __swift_storeEnumTagSinglePayload(v113, 0, 1, v237);
      }

      v154 = ((v113 + v22) & 0xFFFFFFFFFFFFFFF8);
      v155 = ((v114 + v22) & 0xFFFFFFFFFFFFFFF8);
      *v154 = *v155;
      v156 = (v154 + 19) & 0xFFFFFFFFFFFFFFF8;
      v157 = (v155 + 19) & 0xFFFFFFFFFFFFFFF8;
      v158 = *v157;
      *(v156 + 4) = *(v157 + 4);
      *v156 = v158;
      v159 = ((v100 + v24 + 7) & 0xFFFFFFFFFFFFFFF8);
      v160 = (&v101[v24 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v159 = *v160;
      v161 = ((v159 + 23) & 0xFFFFFFFFFFFFFFF8);
      v162 = ((v160 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v161 = *v162;
      *((v161 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v162 + 23) & 0xFFFFFFFFFFFFFFF8);
      v108 = 7;
      goto LABEL_235;
    case 8u:
      v214 = v22;
      (*(v229 + 32))(&v254[v17] & v41, v101, v230);
      v127 = ((v100 + v223 + 7) & 0xFFFFFFFFFFFFFFF8);
      v128 = (&v101[v223 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v127 = *v128;
      v129 = ((v127 + v224) & v222);
      v130 = ((v128 + v224) & v222);
      if (v27 == v225)
      {
        v131 = __swift_getEnumTagSinglePayload(v130, v27, v236);
        v133 = v248;
        v132 = v250;
        if (!v131)
        {
          v134 = ((v130 + v250) & v248);
          goto LABEL_247;
        }
      }

      else
      {
        v133 = v248;
        v132 = v250;
        v134 = ((v130 + v250) & v248);
        if (v215 == v225)
        {
          if (v234 < 2 || __swift_getEnumTagSinglePayload((v130 + v250) & v248, v234, v237) < 2)
          {
            goto LABEL_247;
          }
        }

        else
        {
          v188 = *(((v134 + v214) & 0xFFFFFFFFFFFFFFF8) + 8);
          if (v188 >= 0xFFFFFFFF)
          {
            LODWORD(v188) = -1;
          }

          if ((v188 + 1) < 2)
          {
LABEL_247:
            (*(v255 + 32))(v129, v130, v236);
            v189 = v129;
            v190 = ((v129 + v132) & v133);
            if (__swift_getEnumTagSinglePayload(v134, 1, v237))
            {
              memcpy(v190, v134, v241);
            }

            else
            {
              (*(v221 + 32))(v190, v134, v237);
              __swift_storeEnumTagSinglePayload(v190, 0, 1, v237);
            }

            v141 = v219;
            v199 = v220;
            v200 = ((v190 + v214) & 0xFFFFFFFFFFFFFFF8);
            v201 = ((v134 + v214) & 0xFFFFFFFFFFFFFFF8);
            *v200 = *v201;
            v202 = (v201 + 19) & 0xFFFFFFFFFFFFFFF8;
            v203 = *v202;
            v204 = (v200 + 19) & 0xFFFFFFFFFFFFFFF8;
            *(v204 + 4) = *(v202 + 4);
            *v204 = v203;
            v140 = v241;
            v143 = v217;
            v142 = v218;
            v144 = v216;
            v129 = v189;
            if (v234)
            {
LABEL_264:
              v205 = (((v233 + 7 + v199) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
              *((v129 + v205 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v130 + v205 + 7) & 0xFFFFFFFFFFFFFFF8);
              v206 = (((v233 + 7 + v140) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
              if (v206 <= v141)
              {
                v206 = v141;
              }

              if (v142 > v206)
              {
                v206 = v142;
              }

              if (v143 > v206)
              {
                v206 = v143;
              }

              if (v144 > v206)
              {
                v206 = v144;
              }

              *(v100 + v206) = 8;
LABEL_236:
              v179 = ((v100 + v252 + 7) & 0xFFFFFFFFFFFFFFF8);
              v180 = (&v101[v252 + 7] & 0xFFFFFFFFFFFFFFF8);
              *v179 = *v180;
              v181 = (v179 + 15) & 0xFFFFFFFFFFFFFFF8;
              v182 = (v180 + 15) & 0xFFFFFFFFFFFFFFF8;
              v183 = *v182;
              v184 = *(v182 + 16);
              *(v181 + 32) = *(v182 + 32);
              *v181 = v183;
              *(v181 + 16) = v184;
              *(v181 + 40) = *(v182 + 40);
              v99 = 1;
LABEL_237:
              v254[v36] = v99;
              return v3;
            }

LABEL_263:
            v199 = v140;
            goto LABEL_264;
          }
        }
      }

      memcpy(v129, v130, v24);
      v140 = v241;
      v142 = v218;
      v141 = v219;
      v144 = v216;
      v143 = v217;
      goto LABEL_263;
    case 9u:
      (*(v227 + 32))(&v254[v17] & v41, v101, v228);
      v108 = 9;
LABEL_235:
      *(v100 + v32) = v108;
      goto LABEL_236;
    default:
      memcpy((&v254[v17] & v41), v101, v252);
      goto LABEL_236;
  }
}

uint64_t sub_1DCE94800(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v36 = *(*(sub_1DD0DB04C() - 8) + 64);
  v33 = *(sub_1DD0DC76C() - 8);
  v3 = *(v33 + 80);
  v34 = *(sub_1DD0DB1EC() - 8);
  v30 = *(v34 + 80) | v3;
  v32 = *(sub_1DD0DB4BC() - 8);
  v4 = *(v32 + 80) & 0xF8;
  v5 = *(sub_1DD0DB3EC() - 8);
  v6 = *(v5 + 80);
  v7 = v4 | v6 | 7;
  v31 = *(sub_1DD0DD12C() - 8);
  v8 = *(v31 + 80);
  v9 = *(sub_1DD0DD08C() - 8);
  v10 = (v30 | (v8 | *(v9 + 80))) & 0xF8 | v7;
  v11 = (v36 + v10) & ~v10;
  v12 = *(v33 + 64);
  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v12)
  {
    v12 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v12 <= *(v34 + 64))
  {
    v12 = *(v34 + 64);
  }

  v13 = *(v5 + 64) + ((*(v32 + 64) + v6) & ~v6);
  if (!*(v5 + 84))
  {
    ++v13;
  }

  v14 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 19) | 5;
  if (v12 <= v15)
  {
    v12 = (v14 + 19) | 5;
  }

  v16 = ((((((v14 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 <= v16)
  {
    v12 = v16;
  }

  if (v12 <= ((v15 + ((v7 + ((*(v31 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v12 = ((v15 + ((v7 + ((*(v31 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v17 = *(v9 + 64);
  if (v12 > v17)
  {
    v17 = v12;
  }

  if (v17 <= 0x18)
  {
    v17 = 24;
  }

  v18 = ((((v11 + v17 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v19 = *(*(*(a3 + 16) - 8) + 64);
  if (v19 <= 9)
  {
    v19 = 9;
  }

  if (v19 + 1 > v18)
  {
    v18 = v19 + 1;
  }

  if (v18 <= 9)
  {
    v20 = 9;
  }

  else
  {
    v20 = v18;
  }

  v21 = (3u >> (8 * v20)) ^ 0xFB;
  if (v20 > 3)
  {
    v21 = 251;
  }

  if (!a2)
  {
    return 0;
  }

  if (v21 >= a2)
  {
    goto LABEL_45;
  }

  v22 = v20 + 1;
  v23 = 8 * (v20 + 1);
  if ((v20 + 1) <= 3)
  {
    v26 = ((~(-1 << v23) + a2 - v21) >> v23) + 1;
    if (HIWORD(v26))
    {
      v24 = *(a1 + v22);
      if (!v24)
      {
        goto LABEL_45;
      }

      goto LABEL_37;
    }

    if (v26 > 0xFF)
    {
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_45;
      }

      goto LABEL_37;
    }

    if (v26 < 2)
    {
LABEL_45:
      v28 = *(a1 + v20);
      if (v21 <= (v28 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v28);
      }
    }
  }

  v24 = *(a1 + v22);
  if (!*(a1 + v22))
  {
    goto LABEL_45;
  }

LABEL_37:
  v27 = (v24 - 1) << v23;
  if (v22 > 3)
  {
    v27 = 0;
  }

  if (v22)
  {
    if (v22 > 3)
    {
      LODWORD(v22) = 4;
    }

    switch(v22)
    {
      case 2:
        LODWORD(v22) = *a1;
        break;
      case 3:
        LODWORD(v22) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v22) = *a1;
        break;
      default:
        LODWORD(v22) = *a1;
        break;
    }
  }

  return v21 + (v22 | v27) + 1;
}

void sub_1DCE94CA4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v38 = *(*(sub_1DD0DB04C() - 8) + 64);
  v35 = *(sub_1DD0DC76C() - 8);
  v4 = *(v35 + 80);
  v36 = *(sub_1DD0DB1EC() - 8);
  v32 = *(v36 + 80) | v4;
  v34 = *(sub_1DD0DB4BC() - 8);
  v5 = *(v34 + 80) & 0xF8;
  v6 = *(sub_1DD0DB3EC() - 8);
  v7 = *(v6 + 80);
  v8 = v5 | v7 | 7;
  v33 = *(sub_1DD0DD12C() - 8);
  v9 = *(v33 + 80);
  v10 = *(sub_1DD0DD08C() - 8);
  v11 = (v32 | (v9 | *(v10 + 80))) & 0xF8 | v8;
  v12 = (v38 + v11) & ~v11;
  v13 = *(v35 + 64);
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v13 <= *(v36 + 64))
  {
    v13 = *(v36 + 64);
  }

  v14 = *(v6 + 64) + ((*(v34 + 64) + v7) & ~v7);
  if (!*(v6 + 84))
  {
    ++v14;
  }

  v15 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 19) | 5;
  if (v13 <= v16)
  {
    v13 = (v15 + 19) | 5;
  }

  v17 = ((((((v15 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 <= v17)
  {
    v13 = v17;
  }

  if (v13 <= ((v16 + ((v8 + ((*(v33 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v13 = ((v16 + ((v8 + ((*(v33 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v18 = *(v10 + 64);
  if (v13 > v18)
  {
    v18 = v13;
  }

  if (v18 <= 0x18)
  {
    v18 = 24;
  }

  v19 = ((((v12 + v18 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v20 = *(*(*(a4 + 16) - 8) + 64);
  if (v20 <= 9)
  {
    v20 = 9;
  }

  if (v20 + 1 > v19)
  {
    v19 = v20 + 1;
  }

  if (v19 <= 9)
  {
    v19 = 9;
  }

  if (v19 <= 3)
  {
    v21 = (3u >> (8 * v19)) ^ 0xFB;
  }

  else
  {
    v21 = 251;
  }

  v22 = v19 + 1;
  v23 = 8 * (v19 + 1);
  if (v21 >= a3)
  {
    v26 = 0;
    v24 = a1;
    v25 = a2;
  }

  else
  {
    v24 = a1;
    v25 = a2;
    if (v22 <= 3)
    {
      v29 = ((~(-1 << v23) + a3 - v21) >> v23) + 1;
      if (HIWORD(v29))
      {
        v26 = 4;
      }

      else
      {
        if (v29 < 0x100)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29 >= 2)
        {
          v26 = v30;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 1;
    }
  }

  if (v21 >= v25)
  {
    switch(v26)
    {
      case 1:
        v24[v22] = 0;
        if (v25)
        {
          goto LABEL_49;
        }

        break;
      case 2:
        *&v24[v22] = 0;
        if (v25)
        {
          goto LABEL_49;
        }

        break;
      case 3:
LABEL_60:
        __break(1u);
        break;
      case 4:
        *&v24[v22] = 0;
        goto LABEL_48;
      default:
LABEL_48:
        if (v25)
        {
LABEL_49:
          v24[v19] = -v25;
        }

        break;
    }
  }

  else
  {
    v27 = ~v21 + v25;
    if (v22 < 4)
    {
      v28 = (v27 >> v23) + 1;
      if (v19 != -1)
      {
        v31 = v27 & ~(-1 << v23);
        bzero(v24, v22);
        if (v22 == 3)
        {
          *v24 = v31;
          v24[2] = BYTE2(v31);
        }

        else if (v22 == 2)
        {
          *v24 = v31;
        }

        else
        {
          *v24 = v27;
        }
      }
    }

    else
    {
      bzero(v24, v22);
      *v24 = v27;
      v28 = 1;
    }

    switch(v26)
    {
      case 1:
        v24[v22] = v28;
        break;
      case 2:
        *&v24[v22] = v28;
        break;
      case 3:
        goto LABEL_60;
      case 4:
        *&v24[v22] = v28;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCE951C4(unsigned __int8 *a1, uint64_t a2)
{
  v28 = *(*(sub_1DD0DB04C() - 8) + 64);
  v26 = *(sub_1DD0DC76C() - 8);
  v2 = *(v26 + 80);
  v27 = *(sub_1DD0DB1EC() - 8);
  v23 = *(v27 + 80) | v2;
  v25 = *(sub_1DD0DB4BC() - 8);
  v3 = *(v25 + 80) & 0xF8;
  v4 = *(sub_1DD0DB3EC() - 8);
  v5 = *(v4 + 80);
  v6 = v3 | v5 | 7;
  v24 = *(sub_1DD0DD12C() - 8);
  v7 = *(v24 + 80);
  v8 = *(sub_1DD0DD08C() - 8);
  v9 = (v23 | (v7 | *(v8 + 80))) & 0xF8 | v6;
  v10 = (v28 + v9) & ~v9;
  v11 = *(v26 + 64);
  if (((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v11)
  {
    v11 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v11 <= *(v27 + 64))
  {
    v11 = *(v27 + 64);
  }

  v12 = *(v4 + 64) + ((*(v25 + 64) + v5) & ~v5);
  if (!*(v4 + 84))
  {
    ++v12;
  }

  v13 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 19) | 5;
  if (v11 <= v14)
  {
    v11 = (v13 + 19) | 5;
  }

  v15 = ((((((v13 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v11 <= v15)
  {
    v11 = v15;
  }

  if (v11 <= ((v14 + ((v6 + ((*(v24 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v11 = ((v14 + ((v6 + ((*(v24 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v16 = *(v8 + 64);
  if (v11 > v16)
  {
    v16 = v11;
  }

  if (v16 <= 0x18)
  {
    v16 = 24;
  }

  v17 = ((((v10 + v16 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v18 = *(*(*(a2 + 16) - 8) + 64);
  if (v18 <= 9)
  {
    v18 = 9;
  }

  if (v18 + 1 > v17)
  {
    v17 = v18 + 1;
  }

  if (v17 <= 9)
  {
    v19 = 9;
  }

  else
  {
    v19 = v17;
  }

  result = a1[v19];
  if (result >= 4)
  {
    if (v19 <= 3)
    {
      v21 = v19;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 1:
        v22 = *a1;
        goto LABEL_33;
      case 2:
        v22 = *a1;
        goto LABEL_33;
      case 3:
        v22 = *a1 | (a1[2] << 16);
        goto LABEL_33;
      case 4:
        v22 = *a1;
LABEL_33:
        if (v19 < 4)
        {
          result = (v22 | ((result - 4) << (8 * v19))) + 4;
        }

        else
        {
          result = (v22 + 4);
        }

        break;
      default:
        return result;
    }
  }

  return result;
}