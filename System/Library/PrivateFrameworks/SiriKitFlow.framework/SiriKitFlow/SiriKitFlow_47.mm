_BYTE *sub_1DCF8B65C(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v201 = *(sub_1DD0DB04C() - 8);
  v219 = *(v201 + 64);
  v198 = sub_1DD0DC76C();
  v208 = *(v198 - 8);
  v197 = v208;
  v3 = *(v208 + 80);
  v193 = sub_1DD0DB1EC();
  v210 = *(v193 - 8);
  v192 = v210;
  v202 = *(v210 + 80) | v3;
  v200 = sub_1DD0DB4BC();
  v206 = *(v200 - 8);
  v218 = v206;
  v4 = *(v206 + 80) & 0xF8;
  v199 = sub_1DD0DB3EC();
  v5 = *(v199 - 8);
  v6 = *(v5 + 80);
  v7 = v4 | v6 | 7;
  v191 = sub_1DD0DD12C();
  v204 = *(v191 - 8);
  v190 = v204;
  v8 = *(v204 + 80);
  v189 = sub_1DD0DD08C();
  v9 = v208;
  v188 = *(v189 - 8);
  v10 = (v202 | (v8 | *(v188 + 80))) & 0xF8 | v7;
  v209 = v219 + v10;
  v11 = (v219 + v10) & ~v10;
  v12 = *(v9 + 64);
  v187 = v12 + 7;
  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v12)
  {
    v12 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v12 <= *(v210 + 64))
  {
    v12 = *(v210 + 64);
  }

  if (v12 <= 0x18)
  {
    v13 = 24;
  }

  else
  {
    v13 = v12;
  }

  v207 = *(v206 + 64) + v6;
  v211 = v6;
  v184 = v5;
  v14 = *(v5 + 84);
  v182 = *(v5 + 64);
  if (v14)
  {
    v15 = *(v5 + 64);
  }

  else
  {
    v15 = *(v5 + 64) + 1;
  }

  v16 = v15 + 7;
  v194 = v207 & ~v6;
  v17 = (v15 + 7 + v194) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  v203 = v13;
  if (v18 <= v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v20 = v17 + 31;
  v196 = (((((v20 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v196 > v19)
  {
    v19 = (((((v20 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v21 = *(v204 + 64);
  v185 = v7 + 16;
  v22 = v7;
  v23 = (v7 + 16 + ((v21 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v7;
  v24 = *(v218 + 84);
  v183 = v14;
  v25 = v14 != 0;
  v26 = v14 - 1;
  if (v25)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v27 <= v24)
  {
    v28 = *(v218 + 84);
  }

  else
  {
    v28 = v27;
  }

  if (v28 <= 0x7FFFFFFE)
  {
    v28 = 2147483646;
  }

  v186 = v28;
  v29 = ((v20 + v23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v205 = v29;
  if (v29 <= v19)
  {
    v29 = v19;
  }

  v30 = *(*(v189 - 8) + 64);
  v195 = v30;
  if (v30 <= v29)
  {
    v30 = v29;
  }

  v220 = v30;
  v31 = ((((v30 + v11 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v33 = *(a3 + 16);
  v32 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (*(*(AssociatedTypeWitness - 8) + 64) <= 9uLL)
  {
    v35 = 9;
  }

  else
  {
    v35 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v35 + 1 > v31)
  {
    v36 = v35 + 1;
  }

  else
  {
    v36 = v31;
  }

  if (v36 <= 9)
  {
    v37 = 9;
  }

  else
  {
    v37 = v36;
  }

  v38 = a2[v37];
  v39 = v38 - 4;
  if (v38 >= 4)
  {
    if (v37 <= 3)
    {
      v40 = v37;
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
        if (v37 < 4)
        {
          v41 |= v39 << (8 * v37);
        }

        v38 = v41 + 4;
        break;
      default:
        break;
    }
  }

  v215 = v15;
  v42 = ~v10;
  v43 = ~v22;
  switch(v38)
  {
    case 0u:
      v44 = v37;
      v45 = ~v211;
      v180 = v16;
      v212 = v220 + 1;
      v46 = a1;
      (*(v201 + 32))(a1);
      v47 = (&a1[v209] & v42);
      v48 = (&a2[v209] & v42);
      v49 = v48[v220];
      v50 = v49 - 10;
      if (v49 >= 0xA)
      {
        if (v220 <= 3)
        {
          v51 = v220;
        }

        else
        {
          v51 = 4;
        }

        switch(v51)
        {
          case 1:
            v52 = *v48;
            goto LABEL_91;
          case 2:
            v52 = *v48;
            goto LABEL_91;
          case 3:
            v52 = *(&a2[v209] & v42) | (*((&a2[v209] & v42) + 2) << 16);
            goto LABEL_91;
          case 4:
            v52 = *v48;
LABEL_91:
            if (v220 < 4)
            {
              v49 = (v52 | (v50 << (8 * v220))) + 10;
            }

            else
            {
              v49 = v52 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v49)
      {
        case 0u:
          (*(v197 + 32))(v47, v48, v198);
          v47 = (&a1[v209] & v42);
          *(v47 + v220) = 0;
          goto LABEL_148;
        case 1u:
          v68 = (&a1[v209] & v42);
          v69 = v220;
          (*(v197 + 32))(v47, v48, v198);
          v47 = v68;
          *((v68 + v187) & 0xFFFFFFFFFFFFFFF8) = *(&v48[v187] & 0xFFFFFFFFFFFFFFF8);
          v70 = 1;
          goto LABEL_115;
        case 2u:
          v74 = *v48;
          *((&a1[v209] & v42) + 0x10) = *((&a2[v209] & v42) + 0x10);
          *v47 = v74;
          v75 = 2;
          goto LABEL_119;
        case 3u:
          *v47 = *v48;
          v75 = 3;
          goto LABEL_119;
        case 4u:
          v68 = (&a1[v209] & v42);
          v69 = v220;
          (*(v192 + 32))(v47, v48, v193);
          v47 = v68;
          v70 = 4;
          goto LABEL_115;
        case 5u:
          *v47 = *v48;
          v75 = 5;
LABEL_119:
          *(v47 + v220) = v75;
          goto LABEL_148;
        case 6u:
          (*(v218 + 32))(v47, v48, v200);
          v84 = (&a1[v209] & v42);
          v85 = ((v84 + v207) & v45);
          v86 = (&v48[v207] & v45);
          if (__swift_getEnumTagSinglePayload(v86, 1, v199))
          {
            memcpy(v85, v86, v215);
          }

          else
          {
            (*(v184 + 32))(v85, v86, v199);
            __swift_storeEnumTagSinglePayload(v85, 0, 1, v199);
          }

          v138 = ((v85 + v180) & 0xFFFFFFFFFFFFFFF8);
          v139 = ((v86 + v180) & 0xFFFFFFFFFFFFFFF8);
          *v138 = *v139;
          v140 = (v138 + 19) & 0xFFFFFFFFFFFFFFF8;
          v141 = (v139 + 19) & 0xFFFFFFFFFFFFFFF8;
          v142 = *v141;
          *(v140 + 4) = *(v141 + 4);
          *v140 = v142;
          v47 = v84;
          *(v84 + v220) = 6;
          goto LABEL_148;
        case 7u:
          (*(v218 + 32))(v47, v48, v200);
          v78 = (&a1[v209] & v42);
          v79 = ((v78 + v207) & v45);
          v80 = (&v48[v207] & v45);
          if (__swift_getEnumTagSinglePayload(v80, 1, v199))
          {
            memcpy(v79, v80, v215);
          }

          else
          {
            (*(v184 + 32))(v79, v80, v199);
            __swift_storeEnumTagSinglePayload(v79, 0, 1, v199);
          }

          v120 = ((v79 + v180) & 0xFFFFFFFFFFFFFFF8);
          v121 = ((v80 + v180) & 0xFFFFFFFFFFFFFFF8);
          *v120 = *v121;
          v122 = (v120 + 19) & 0xFFFFFFFFFFFFFFF8;
          v123 = (v121 + 19) & 0xFFFFFFFFFFFFFFF8;
          v124 = *v123;
          *(v122 + 4) = *(v123 + 4);
          *v122 = v124;
          v47 = v78;
          v125 = ((v78 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
          v126 = (&v48[v18 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v125 = *v126;
          v127 = ((v125 + 23) & 0xFFFFFFFFFFFFFFF8);
          v128 = ((v126 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v127 = *v128;
          *((v127 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v128 + 23) & 0xFFFFFFFFFFFFFFF8);
          *(v78 + v220) = 7;
          goto LABEL_148;
        case 8u:
          v221 = (&a1[v209] & v42);
          (*(v190 + 32))(v47, v48, v191);
          v92 = ((v221 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
          v93 = (&v48[v21 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v92 = *v93;
          v94 = ((v92 + v185) & v43);
          v95 = ((v93 + v185) & v43);
          if (v24 == v186)
          {
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v93 + v185) & v43, v24, v200);
            v97 = v207;
            if (!EnumTagSinglePayload)
            {
              v98 = ((v95 + v207) & v45);
LABEL_158:
              v106 = v199;
              goto LABEL_159;
            }

LABEL_137:
            memcpy(v94, v95, v18);
            v90 = v212;
            v107 = v215;
            v108 = v203;
            v109 = v205;
            v111 = v195;
            v110 = v196;
            v112 = v194;
LABEL_169:
            v164 = v107;
            goto LABEL_170;
          }

          v97 = v207;
          v98 = ((v95 + v207) & v45);
          if (v27 != v186)
          {
            v160 = *(((v98 + v180) & 0xFFFFFFFFFFFFFFF8) + 8);
            if (v160 >= 0xFFFFFFFF)
            {
              LODWORD(v160) = -1;
            }

            if ((v160 + 1) < 2)
            {
              goto LABEL_158;
            }

            goto LABEL_137;
          }

          v106 = v199;
          if (v183 >= 2)
          {
            if (__swift_getEnumTagSinglePayload((v95 + v207) & v45, v183, v199) < 2)
            {
              goto LABEL_158;
            }

            goto LABEL_137;
          }

LABEL_159:
          (*(v218 + 32))(v94, v95, v200);
          v161 = ((v94 + v97) & v45);
          if (__swift_getEnumTagSinglePayload(v98, 1, v106))
          {
            memcpy(v161, v98, v215);
          }

          else
          {
            (*(v184 + 32))(v161, v98, v106);
            __swift_storeEnumTagSinglePayload(v161, 0, 1, v106);
          }

          v108 = v203;
          v109 = v205;
          v111 = v195;
          v110 = v196;
          v112 = v194;
          v164 = v182;
          v165 = ((v161 + v180) & 0xFFFFFFFFFFFFFFF8);
          v166 = ((v98 + v180) & 0xFFFFFFFFFFFFFFF8);
          *v165 = *v166;
          v167 = (v166 + 19) & 0xFFFFFFFFFFFFFFF8;
          v168 = *v167;
          v169 = (v165 + 19) & 0xFFFFFFFFFFFFFFF8;
          *(v169 + 4) = *(v167 + 4);
          *v169 = v168;
          v90 = v212;
          v107 = v215;
          if (!v183)
          {
            goto LABEL_169;
          }

LABEL_170:
          v170 = (((v112 + 7 + v164) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          *((v94 + v170 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v95 + v170 + 7) & 0xFFFFFFFFFFFFFFF8);
          v171 = (((v112 + 7 + v107) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
          if (v171 <= v108)
          {
            v171 = v108;
          }

          if (v110 > v171)
          {
            v171 = v110;
          }

          if (v109 > v171)
          {
            v171 = v109;
          }

          if (v111 > v171)
          {
            v171 = v111;
          }

          v47 = v221;
          *(v221 + v171) = 8;
LABEL_149:
          v143 = ((v47 + v90 + 7) & 0xFFFFFFFFFFFFFFF8);
          v144 = (&v48[v90 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v143 = *v144;
          v145 = (v143 + 15) & 0xFFFFFFFFFFFFFFF8;
          v146 = (v144 + 15) & 0xFFFFFFFFFFFFFFF8;
          v147 = *v146;
          v148 = *(v146 + 16);
          *(v145 + 32) = *(v146 + 32);
          *v145 = v147;
          *(v145 + 16) = v148;
          *(v145 + 40) = *(v146 + 40);
          a1[v44] = 0;
          return v46;
        case 9u:
          v68 = (&a1[v209] & v42);
          v69 = v220;
          (*(v188 + 32))(v47, v48, v189);
          v47 = v68;
          v70 = 9;
LABEL_115:
          *(v68 + v69) = v70;
LABEL_148:
          v90 = v220 + 1;
          goto LABEL_149;
        default:
          memcpy(v47, v48, v212);
          v47 = (&a1[v209] & v42);
          v90 = v220 + 1;
          goto LABEL_149;
      }

    case 1u:
      v58 = v37;
      v59 = ~v211;
      v181 = v16;
      v213 = v220 + 1;
      v46 = a1;
      (*(v201 + 32))(a1);
      v60 = (&a1[v209] & v42);
      v61 = (&a2[v209] & v42);
      v62 = v61[v220];
      v63 = v62 - 10;
      if (v62 >= 0xA)
      {
        if (v220 <= 3)
        {
          v64 = v220;
        }

        else
        {
          v64 = 4;
        }

        switch(v64)
        {
          case 1:
            v65 = *v61;
            goto LABEL_97;
          case 2:
            v65 = *v61;
            goto LABEL_97;
          case 3:
            v65 = *(&a2[v209] & v42) | (*((&a2[v209] & v42) + 2) << 16);
            goto LABEL_97;
          case 4:
            v65 = *v61;
LABEL_97:
            if (v220 < 4)
            {
              v62 = (v65 | (v63 << (8 * v220))) + 10;
            }

            else
            {
              v62 = v65 + 10;
            }

            break;
          default:
            goto LABEL_100;
        }
      }

      break;
    case 2u:
      v53 = a2[v35];
      v54 = v53 - 2;
      v46 = a1;
      if (v53 >= 2)
      {
        if (v35 <= 3)
        {
          v55 = v35;
        }

        else
        {
          v55 = 4;
        }

        switch(v55)
        {
          case 1:
            v56 = *a2;
            goto LABEL_77;
          case 2:
            v56 = *a2;
            goto LABEL_77;
          case 3:
            v56 = *a2 | (a2[2] << 16);
            goto LABEL_77;
          case 4:
            v56 = *a2;
LABEL_77:
            if (v35 < 4)
            {
              v53 = (v56 | (v54 << (8 * v35))) + 2;
            }

            else
            {
              v53 = v56 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v53 == 1)
      {
        *a1 = *a2;
        a1[8] = a2[8];
        a1[v35] = 1;
      }

      else
      {
        v67 = v37;
        if (v53)
        {
          memcpy(a1, a2, v35 + 1);
        }

        else
        {
          (*(*(AssociatedTypeWitness - 8) + 32))(a1);
          a1[v35] = 0;
        }

        v37 = v67;
      }

      v57 = 2;
      goto LABEL_87;
    case 3u:
      v46 = a1;
      *a1 = *a2;
      a1[8] = a2[8];
      v57 = 3;
LABEL_87:
      v46[v37] = v57;
      return v46;
    default:

      return memcpy(a1, a2, v37 + 1);
  }

LABEL_100:
  switch(v62)
  {
    case 0u:
      (*(v197 + 32))(v60, v61, v198);
      v60 = (&a1[v209] & v42);
      *(v60 + v220) = 0;
      goto LABEL_152;
    case 1u:
      v71 = (&a1[v209] & v42);
      v72 = v220;
      (*(v197 + 32))(v60, v61, v198);
      v60 = v71;
      *((v71 + v187) & 0xFFFFFFFFFFFFFFF8) = *(&v61[v187] & 0xFFFFFFFFFFFFFFF8);
      v73 = 1;
      goto LABEL_117;
    case 2u:
      v76 = *v61;
      *((&a1[v209] & v42) + 0x10) = *((&a2[v209] & v42) + 0x10);
      *v60 = v76;
      v77 = 2;
      goto LABEL_121;
    case 3u:
      *v60 = *v61;
      v77 = 3;
      goto LABEL_121;
    case 4u:
      v71 = (&a1[v209] & v42);
      v72 = v220;
      (*(v192 + 32))(v60, v61, v193);
      v60 = v71;
      v73 = 4;
      goto LABEL_117;
    case 5u:
      *v60 = *v61;
      v77 = 5;
LABEL_121:
      *(v60 + v220) = v77;
      goto LABEL_152;
    case 6u:
      (*(v218 + 32))(v60, v61, v200);
      v87 = (&a1[v209] & v42);
      v88 = ((v87 + v207) & v59);
      v89 = (&v61[v207] & v59);
      if (__swift_getEnumTagSinglePayload(v89, 1, v199))
      {
        memcpy(v88, v89, v215);
      }

      else
      {
        (*(v184 + 32))(v88, v89, v199);
        __swift_storeEnumTagSinglePayload(v88, 0, 1, v199);
      }

      v149 = ((v88 + v181) & 0xFFFFFFFFFFFFFFF8);
      v150 = ((v89 + v181) & 0xFFFFFFFFFFFFFFF8);
      *v149 = *v150;
      v151 = (v149 + 19) & 0xFFFFFFFFFFFFFFF8;
      v152 = (v150 + 19) & 0xFFFFFFFFFFFFFFF8;
      v153 = *v152;
      *(v151 + 4) = *(v152 + 4);
      *v151 = v153;
      v60 = v87;
      *(v87 + v220) = 6;
      goto LABEL_152;
    case 7u:
      (*(v218 + 32))(v60, v61, v200);
      v81 = (&a1[v209] & v42);
      v82 = ((v81 + v207) & v59);
      v83 = (&v61[v207] & v59);
      if (__swift_getEnumTagSinglePayload(v83, 1, v199))
      {
        memcpy(v82, v83, v215);
      }

      else
      {
        (*(v184 + 32))(v82, v83, v199);
        __swift_storeEnumTagSinglePayload(v82, 0, 1, v199);
      }

      v129 = ((v82 + v181) & 0xFFFFFFFFFFFFFFF8);
      v130 = ((v83 + v181) & 0xFFFFFFFFFFFFFFF8);
      *v129 = *v130;
      v131 = (v129 + 19) & 0xFFFFFFFFFFFFFFF8;
      v132 = (v130 + 19) & 0xFFFFFFFFFFFFFFF8;
      v133 = *v132;
      *(v131 + 4) = *(v132 + 4);
      *v131 = v133;
      v60 = v81;
      v134 = ((v81 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
      v135 = (&v61[v18 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v134 = *v135;
      v136 = ((v134 + 23) & 0xFFFFFFFFFFFFFFF8);
      v137 = ((v135 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v136 = *v137;
      *((v136 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v137 + 23) & 0xFFFFFFFFFFFFFFF8);
      *(v81 + v220) = 7;
      goto LABEL_152;
    case 8u:
      v222 = (&a1[v209] & v42);
      (*(v190 + 32))(v60, v61, v191);
      v99 = ((v222 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
      v100 = (&v61[v21 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v99 = *v100;
      v101 = ((v99 + v185) & v43);
      v102 = ((v100 + v185) & v43);
      if (v24 == v186)
      {
        v103 = __swift_getEnumTagSinglePayload((v100 + v185) & v43, v24, v200);
        v104 = v207;
        if (!v103)
        {
          v105 = ((v102 + v207) & v59);
          goto LABEL_164;
        }
      }

      else
      {
        v104 = v207;
        v105 = ((v102 + v207) & v59);
        if (v27 == v186)
        {
          v113 = v199;
          if (v183 < 2)
          {
            goto LABEL_165;
          }

          if (__swift_getEnumTagSinglePayload((v102 + v207) & v59, v183, v199) < 2)
          {
LABEL_164:
            v113 = v199;
LABEL_165:
            (*(v218 + 32))(v101, v102, v200);
            v163 = ((v101 + v104) & v59);
            if (__swift_getEnumTagSinglePayload(v105, 1, v113))
            {
              memcpy(v163, v105, v215);
            }

            else
            {
              (*(v184 + 32))(v163, v105, v113);
              __swift_storeEnumTagSinglePayload(v163, 0, 1, v113);
            }

            v115 = v203;
            v116 = v205;
            v118 = v195;
            v117 = v196;
            v119 = v194;
            v172 = v182;
            v173 = ((v163 + v181) & 0xFFFFFFFFFFFFFFF8);
            v174 = ((v105 + v181) & 0xFFFFFFFFFFFFFFF8);
            *v173 = *v174;
            v175 = (v174 + 19) & 0xFFFFFFFFFFFFFFF8;
            v176 = *v175;
            v177 = (v173 + 19) & 0xFFFFFFFFFFFFFFF8;
            *(v177 + 4) = *(v175 + 4);
            *v177 = v176;
            v91 = v213;
            v114 = v215;
            if (v183)
            {
LABEL_182:
              v178 = (((v119 + 7 + v172) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
              *((v101 + v178 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v102 + v178 + 7) & 0xFFFFFFFFFFFFFFF8);
              v179 = (((v119 + 7 + v114) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
              if (v179 <= v115)
              {
                v179 = v115;
              }

              if (v117 > v179)
              {
                v179 = v117;
              }

              if (v116 > v179)
              {
                v179 = v116;
              }

              if (v118 > v179)
              {
                v179 = v118;
              }

              v60 = v222;
              *(v222 + v179) = 8;
LABEL_153:
              v154 = ((v60 + v91 + 7) & 0xFFFFFFFFFFFFFFF8);
              v155 = (&v61[v91 + 7] & 0xFFFFFFFFFFFFFFF8);
              *v154 = *v155;
              v156 = (v154 + 15) & 0xFFFFFFFFFFFFFFF8;
              v157 = (v155 + 15) & 0xFFFFFFFFFFFFFFF8;
              v158 = *v157;
              v159 = *(v157 + 16);
              *(v156 + 32) = *(v157 + 32);
              *v156 = v158;
              *(v156 + 16) = v159;
              *(v156 + 40) = *(v157 + 40);
              a1[v58] = 1;
              return v46;
            }

LABEL_181:
            v172 = v114;
            goto LABEL_182;
          }
        }

        else
        {
          v162 = *(((v105 + v181) & 0xFFFFFFFFFFFFFFF8) + 8);
          if (v162 >= 0xFFFFFFFF)
          {
            LODWORD(v162) = -1;
          }

          if ((v162 + 1) < 2)
          {
            goto LABEL_164;
          }
        }
      }

      memcpy(v101, v102, v18);
      v91 = v213;
      v114 = v215;
      v115 = v203;
      v116 = v205;
      v118 = v195;
      v117 = v196;
      v119 = v194;
      goto LABEL_181;
    case 9u:
      v71 = (&a1[v209] & v42);
      v72 = v220;
      (*(v188 + 32))(v60, v61, v189);
      v60 = v71;
      v73 = 9;
LABEL_117:
      *(v71 + v72) = v73;
LABEL_152:
      v91 = v220 + 1;
      goto LABEL_153;
    default:
      memcpy(v60, v61, v213);
      v60 = (&a1[v209] & v42);
      v91 = v220 + 1;
      goto LABEL_153;
  }
}

unsigned __int8 *sub_1DCF8CAA0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  v4 = sub_1DD0DB04C();
  v226 = *(v4 - 8);
  v227 = v4;
  v237 = *(v226 + 64);
  v223 = sub_1DD0DC76C();
  v233 = *(v223 - 8);
  v222 = v233;
  v5 = *(v233 + 80);
  v217 = sub_1DD0DB1EC();
  v235 = *(v217 - 8);
  v216 = v235;
  v228 = *(v235 + 80) | v5;
  v224 = sub_1DD0DB4BC();
  v232 = *(v224 - 8);
  v241 = v3;
  v6 = *(v232 + 80) & 0xF8;
  v225 = sub_1DD0DB3EC();
  v7 = *(v225 - 8);
  v8 = *(v7 + 80);
  v9 = v6 | v8 | 7;
  v215 = sub_1DD0DD12C();
  v230 = *(v215 - 8);
  v214 = v230;
  v10 = *(v230 + 80);
  v213 = sub_1DD0DD08C();
  v212 = *(v213 - 8);
  v11 = (v228 | (v10 | *(v212 + 80))) & 0xF8 | v9;
  v238 = v237 + v11;
  v12 = *(v233 + 64);
  v211 = v12 + 7;
  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v12)
  {
    v12 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v12 <= *(v235 + 64))
  {
    v12 = *(v235 + 64);
  }

  if (v12 <= 0x18)
  {
    v13 = 24;
  }

  else
  {
    v13 = v12;
  }

  v236 = *(v232 + 64) + v8;
  v14 = v8;
  v205 = v7;
  v15 = *(v7 + 84);
  v16 = *(v7 + 64);
  v204 = v16;
  if (!v15)
  {
    ++v16;
  }

  v221 = v16;
  v229 = v16 + 7;
  v218 = v236 & ~v8;
  v17 = (v16 + 7 + v218) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  v203 = v13;
  if (v18 <= v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v20 = v17 + 31;
  v202 = (((((v20 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v202 > v19)
  {
    v19 = (((((v20 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v3 = v241;
  v208 = *(v230 + 64);
  v209 = v9 + 16;
  v21 = v9;
  v219 = *(v7 + 84);
  v22 = v15 != 0;
  v23 = v15 - 1;
  if (!v22)
  {
    v23 = 0;
  }

  v199 = v23;
  v206 = *(v232 + 84);
  if (v23 <= v206)
  {
    v23 = *(v232 + 84);
  }

  if (v23 <= 0x7FFFFFFE)
  {
    v23 = 2147483646;
  }

  v210 = v23;
  v24 = ((v20 + ((v9 + 16 + ((v208 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v201 = v24;
  if (v24 <= v19)
  {
    v24 = v19;
  }

  v200 = *(*(v213 - 8) + 64);
  if (v200 <= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = *(*(v213 - 8) + 64);
  }

  v27 = *(a3 + 16);
  v26 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = AssociatedTypeWitness;
  v231 = *(AssociatedTypeWitness - 8);
  if (*(v231 + 64) <= 9uLL)
  {
    v30 = 9;
  }

  else
  {
    v30 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v30 + 1 > ((((v25 + (v238 & ~v11) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41)
  {
    v31 = v30 + 1;
  }

  else
  {
    v31 = ((((v25 + (v238 & ~v11) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  if (v31 <= 9)
  {
    v32 = 9;
  }

  else
  {
    v32 = v31;
  }

  v33 = v241[v32];
  v34 = v33 - 4;
  if (v33 < 4)
  {
    v36 = a2;
  }

  else
  {
    if (v32 <= 3)
    {
      v35 = v32;
    }

    else
    {
      v35 = 4;
    }

    v36 = a2;
    switch(v35)
    {
      case 1:
        v37 = *v241;
        goto LABEL_46;
      case 2:
        v37 = *v241;
        goto LABEL_46;
      case 3:
        v37 = *v241 | (v241[2] << 16);
        goto LABEL_46;
      case 4:
        v37 = *v241;
LABEL_46:
        if (v32 < 4)
        {
          v37 |= v34 << (8 * v32);
        }

        v33 = v37 + 4;
        break;
      default:
        break;
    }
  }

  v240 = v25 + 1;
  v38 = ~v11;
  v234 = ~v14;
  v207 = ~v21;
  v220 = 8 * v30;
  switch(v33)
  {
    case 0u:
      v198 = AssociatedTypeWitness;
      (*(v226 + 8))(v241, v227);
      v39 = (&v241[v238] & v38);
      v40 = v39[v25];
      v41 = v40 - 10;
      if (v40 >= 0xA)
      {
        if (v25 <= 3)
        {
          v42 = v25;
        }

        else
        {
          v42 = 4;
        }

        switch(v42)
        {
          case 1:
            v43 = *v39;
            goto LABEL_83;
          case 2:
            v43 = *v39;
            goto LABEL_83;
          case 3:
            v43 = *v39 | (*((&v241[v238] & v38) + 2) << 16);
            goto LABEL_83;
          case 4:
            v43 = *v39;
LABEL_83:
            if (v25 < 4)
            {
              v40 = (v43 | (v41 << (8 * v25))) + 10;
            }

            else
            {
              v40 = v43 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v40)
      {
        case 0u:
          goto LABEL_92;
        case 1u:
          goto LABEL_103;
        case 2u:
          goto LABEL_96;
        case 3u:
          goto LABEL_97;
        case 4u:
          goto LABEL_93;
        case 5u:
          goto LABEL_104;
        case 6u:
          goto LABEL_105;
        case 7u:
          goto LABEL_98;
        case 8u:
          goto LABEL_110;
        case 9u:
          goto LABEL_94;
        default:
          goto LABEL_125;
      }

      goto LABEL_125;
    case 1u:
      v198 = AssociatedTypeWitness;
      (*(v226 + 8))(v241, v227);
      v39 = (&v241[v238] & v38);
      v48 = v39[v25];
      v49 = v48 - 10;
      if (v48 >= 0xA)
      {
        if (v25 <= 3)
        {
          v50 = v25;
        }

        else
        {
          v50 = 4;
        }

        switch(v50)
        {
          case 1:
            v51 = *v39;
            goto LABEL_88;
          case 2:
            v51 = *v39;
            goto LABEL_88;
          case 3:
            v51 = *v39 | (*((&v241[v238] & v38) + 2) << 16);
            goto LABEL_88;
          case 4:
            v51 = *v39;
LABEL_88:
            if (v25 < 4)
            {
              v48 = (v51 | (v49 << (8 * v25))) + 10;
            }

            else
            {
              v48 = v51 + 10;
            }

            break;
          default:
            goto LABEL_91;
        }
      }

      break;
    case 2u:
      v44 = v241[v30];
      v45 = v44 - 2;
      if (v44 >= 2)
      {
        if (v30 <= 3)
        {
          v46 = v30;
        }

        else
        {
          v46 = 4;
        }

        switch(v46)
        {
          case 1:
            v47 = *v241;
            goto LABEL_75;
          case 2:
            v47 = *v241;
            goto LABEL_75;
          case 3:
            v47 = *v241 | (v241[2] << 16);
            goto LABEL_75;
          case 4:
            v47 = *v241;
LABEL_75:
            if (v30 < 4)
            {
              v44 = (v47 | (v45 << v220)) + 2;
            }

            else
            {
              v44 = v47 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v44 == 1)
      {
        goto LABEL_81;
      }

      if (!v44)
      {
        (*(v231 + 8))(v241, AssociatedTypeWitness);
      }

      goto LABEL_127;
    case 3u:
LABEL_81:

      goto LABEL_127;
    default:
      goto LABEL_127;
  }

LABEL_91:
  switch(v48)
  {
    case 0u:
LABEL_92:
      v53 = v222;
      v52 = v223;
      goto LABEL_95;
    case 1u:
LABEL_103:
      (*(v222 + 8))(v39, v223);
      v65 = *(&v39[v211] & 0xFFFFFFFFFFFFFFF8);

      goto LABEL_125;
    case 2u:
LABEL_96:
      v54 = *(v39 + 1);

      v55 = *(v39 + 2);
      goto LABEL_109;
    case 3u:
LABEL_97:
      v56 = *v39;
      swift_unknownObjectRelease();
      goto LABEL_125;
    case 4u:
LABEL_93:
      v53 = v216;
      v52 = v217;
      goto LABEL_95;
    case 5u:
LABEL_104:
      v66 = *v39;
      goto LABEL_124;
    case 6u:
LABEL_105:
      (*(v232 + 8))(v39, v224);
      v67 = &v39[v236] & v234;
      if (!__swift_getEnumTagSinglePayload(v67, 1, v225))
      {
        (*(v205 + 8))(v67, v225);
      }

      v64 = v229 + v67;
      goto LABEL_108;
    case 7u:
LABEL_98:
      (*(v232 + 8))(v39, v224);
      v57 = &v39[v236] & v234;
      if (!__swift_getEnumTagSinglePayload(v57, 1, v225))
      {
        (*(v205 + 8))(v57, v225);
      }

      v58 = 7;
      if (!v219)
      {
        v58 = 8;
      }

      v59 = *(((v204 + v58 + v57) & 0xFFFFFFFFFFFFFFF8) + 8);

      v60 = &v39[((((v218 + v221 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 12] & 0xFFFFFFFFFFFFFFF8;
      v61 = *(v60 + 8);

      v62 = (v60 + 23) & 0xFFFFFFFFFFFFFFF8;
      v63 = *(v62 + 8);

      v64 = v62 + 23;
LABEL_108:
      v68 = *((v64 & 0xFFFFFFFFFFFFFFF8) + 8);
LABEL_109:

      goto LABEL_125;
    case 8u:
LABEL_110:
      (*(v214 + 8))(v39, v215);
      v69 = &v39[v208 + 7] & 0xFFFFFFFFFFFFFFF8;
      v70 = *(v69 + 8);

      v71 = (v209 + v69) & v207;
      if (v206 == v210)
      {
        if (__swift_getEnumTagSinglePayload(v71, v206, v224))
        {
          goto LABEL_123;
        }

        v72 = (v236 + v71) & v234;
        goto LABEL_120;
      }

      v72 = (v236 + v71) & v234;
      if (v199 == v210)
      {
        if (v219 >= 2 && __swift_getEnumTagSinglePayload((v236 + v71) & v234, v219, v225) >= 2)
        {
          goto LABEL_123;
        }

        goto LABEL_120;
      }

      v73 = *(((v229 + v72) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v73 >= 0xFFFFFFFF)
      {
        LODWORD(v73) = -1;
      }

      if ((v73 + 1) < 2)
      {
LABEL_120:
        (*(v232 + 8))(v71, v224);
        if (!__swift_getEnumTagSinglePayload(v72, 1, v225))
        {
          (*(v205 + 8))(v72, v225);
        }

        v74 = *(((v229 + v72) & 0xFFFFFFFFFFFFFFF8) + 8);
      }

LABEL_123:
      v66 = *((v18 + v71 + 7) & 0xFFFFFFFFFFFFFFF8);
LABEL_124:

LABEL_125:
      v75 = &v39[v240 + 7];
      v77 = (v75 & 0xFFFFFFFFFFFFFFF8) + 15;
      v76 = *(v75 & 0xFFFFFFFFFFFFFFF8);

      v78 = (v77 & 0xFFFFFFFFFFFFFFF8);
      v79 = *((v77 & 0xFFFFFFFFFFFFFFF8) + 24);
      v36 = a2;
      v29 = v198;
      if (v79 >= 0xFFFFFFFF)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v78);
      }

LABEL_127:
      v80 = v36[v32];
      v81 = v80 - 4;
      if (v80 >= 4)
      {
        if (v32 <= 3)
        {
          v82 = v32;
        }

        else
        {
          v82 = 4;
        }

        switch(v82)
        {
          case 1:
            v83 = *v36;
            goto LABEL_136;
          case 2:
            v83 = *v36;
            goto LABEL_136;
          case 3:
            v83 = *v36 | (v36[2] << 16);
            goto LABEL_136;
          case 4:
            v83 = *v36;
LABEL_136:
            if (v32 < 4)
            {
              v80 = (v83 | (v81 << (8 * v32))) + 4;
            }

            else
            {
              v80 = v83 + 4;
            }

            break;
          default:
            goto LABEL_139;
        }
      }

      break;
    case 9u:
LABEL_94:
      v53 = v212;
      v52 = v213;
LABEL_95:
      (*(v53 + 8))(v39, v52);
      goto LABEL_125;
    default:
      goto LABEL_125;
  }

LABEL_139:
  switch(v80)
  {
    case 0u:
      (*(v226 + 32))(v241, v36, v227);
      v84 = (&v241[v238] & v38);
      v85 = (&v36[v238] & v38);
      v86 = v85[v25];
      v87 = v86 - 10;
      if (v86 >= 0xA)
      {
        if (v25 <= 3)
        {
          v88 = v25;
        }

        else
        {
          v88 = 4;
        }

        switch(v88)
        {
          case 1:
            v89 = *v85;
            goto LABEL_179;
          case 2:
            v89 = *v85;
            goto LABEL_179;
          case 3:
            v89 = *v85 | (*((&v36[v238] & v38) + 2) << 16);
            goto LABEL_179;
          case 4:
            v89 = *v85;
LABEL_179:
            if (v25 < 4)
            {
              v86 = (v89 | (v87 << (8 * v25))) + 10;
            }

            else
            {
              v86 = v89 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v86)
      {
        case 0u:
          (*(v222 + 32))(&v241[v238] & v38, &v36[v238] & v38, v223);
          *(v84 + v25) = 0;
          goto LABEL_233;
        case 1u:
          (*(v222 + 32))(&v241[v238] & v38, &v36[v238] & v38, v223);
          *((v84 + v211) & 0xFFFFFFFFFFFFFFF8) = *(&v85[v211] & 0xFFFFFFFFFFFFFFF8);
          v102 = 1;
          goto LABEL_232;
        case 2u:
          v104 = *v85;
          *((&v241[v238] & v38) + 0x10) = *((&v36[v238] & v38) + 0x10);
          *v84 = v104;
          v102 = 2;
          goto LABEL_232;
        case 3u:
          *v84 = *v85;
          v102 = 3;
          goto LABEL_232;
        case 4u:
          (*(v216 + 32))(&v241[v238] & v38, &v36[v238] & v38, v217);
          v102 = 4;
          goto LABEL_232;
        case 5u:
          *v84 = *v85;
          v102 = 5;
          goto LABEL_232;
        case 6u:
          (*(v232 + 32))(&v241[v238] & v38, &v36[v238] & v38, v224);
          v110 = ((v84 + v236) & v234);
          v111 = (&v85[v236] & v234);
          if (__swift_getEnumTagSinglePayload(v111, 1, v225))
          {
            memcpy(v110, v111, v221);
          }

          else
          {
            (*(v205 + 32))(v110, v111, v225);
            __swift_storeEnumTagSinglePayload(v110, 0, 1, v225);
          }

          v156 = ((v110 + v229) & 0xFFFFFFFFFFFFFFF8);
          v157 = ((v111 + v229) & 0xFFFFFFFFFFFFFFF8);
          *v156 = *v157;
          v158 = (v156 + 19) & 0xFFFFFFFFFFFFFFF8;
          v159 = (v157 + 19) & 0xFFFFFFFFFFFFFFF8;
          v160 = *v159;
          *(v158 + 4) = *(v159 + 4);
          *v158 = v160;
          v102 = 6;
          goto LABEL_232;
        case 7u:
          (*(v232 + 32))(&v241[v238] & v38, &v36[v238] & v38, v224);
          v106 = ((v84 + v236) & v234);
          v107 = (&v85[v236] & v234);
          if (__swift_getEnumTagSinglePayload(v107, 1, v225))
          {
            memcpy(v106, v107, v221);
          }

          else
          {
            (*(v205 + 32))(v106, v107, v225);
            __swift_storeEnumTagSinglePayload(v106, 0, 1, v225);
          }

          v138 = ((v106 + v229) & 0xFFFFFFFFFFFFFFF8);
          v139 = ((v107 + v229) & 0xFFFFFFFFFFFFFFF8);
          *v138 = *v139;
          v140 = (v138 + 19) & 0xFFFFFFFFFFFFFFF8;
          v141 = (v139 + 19) & 0xFFFFFFFFFFFFFFF8;
          v142 = *v141;
          *(v140 + 4) = *(v141 + 4);
          *v140 = v142;
          v143 = ((v84 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
          v144 = (&v85[v18 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v143 = *v144;
          v145 = ((v143 + 23) & 0xFFFFFFFFFFFFFFF8);
          v146 = ((v144 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v145 = *v146;
          *((v145 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v146 + 23) & 0xFFFFFFFFFFFFFFF8);
          v102 = 7;
          goto LABEL_232;
        case 8u:
          (*(v214 + 32))(&v241[v238] & v38, &v36[v238] & v38, v215);
          v114 = ((v84 + v208 + 7) & 0xFFFFFFFFFFFFFFF8);
          v115 = (&v85[v208 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v114 = *v115;
          v116 = ((v114 + v209) & v207);
          v117 = ((v115 + v209) & v207);
          if (v206 == v210)
          {
            v118 = v236;
            if (!__swift_getEnumTagSinglePayload(v117, v206, v224))
            {
              v119 = v234;
              v120 = ((v117 + v236) & v234);
              goto LABEL_243;
            }

LABEL_221:
            memcpy(v116, v117, v18);
            v128 = v221;
            v130 = v202;
            v129 = v203;
            v132 = v200;
            v131 = v201;
LABEL_252:
            v182 = v128;
            goto LABEL_253;
          }

          v118 = v236;
          v119 = v234;
          v120 = ((v117 + v236) & v234);
          if (v199 != v210)
          {
            v178 = *(((v120 + v229) & 0xFFFFFFFFFFFFFFF8) + 8);
            if (v178 >= 0xFFFFFFFF)
            {
              LODWORD(v178) = -1;
            }

            if ((v178 + 1) < 2)
            {
              goto LABEL_243;
            }

            goto LABEL_221;
          }

          if (v219 >= 2 && __swift_getEnumTagSinglePayload((v117 + v236) & v234, v219, v225) >= 2)
          {
            goto LABEL_221;
          }

LABEL_243:
          (*(v232 + 32))(v116, v117, v224);
          v179 = ((v116 + v118) & v119);
          if (__swift_getEnumTagSinglePayload(v120, 1, v225))
          {
            memcpy(v179, v120, v221);
          }

          else
          {
            (*(v205 + 32))(v179, v120, v225);
            __swift_storeEnumTagSinglePayload(v179, 0, 1, v225);
          }

          v129 = v203;
          v182 = v204;
          v183 = ((v179 + v229) & 0xFFFFFFFFFFFFFFF8);
          v184 = ((v120 + v229) & 0xFFFFFFFFFFFFFFF8);
          *v183 = *v184;
          v185 = (v184 + 19) & 0xFFFFFFFFFFFFFFF8;
          v186 = *v185;
          v187 = (v183 + 19) & 0xFFFFFFFFFFFFFFF8;
          *(v187 + 4) = *(v185 + 4);
          *v187 = v186;
          v128 = v221;
          v131 = v201;
          v130 = v202;
          v132 = v200;
          if (!v219)
          {
            goto LABEL_252;
          }

LABEL_253:
          v188 = (((v218 + 7 + v182) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          *((v116 + v188 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v117 + v188 + 7) & 0xFFFFFFFFFFFFFFF8);
          v189 = (((v218 + 7 + v128) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
          if (v189 <= v129)
          {
            v189 = v129;
          }

          if (v130 > v189)
          {
            v189 = v130;
          }

          if (v131 > v189)
          {
            v189 = v131;
          }

          if (v132 > v189)
          {
            v189 = v132;
          }

          *(v84 + v189) = 8;
LABEL_233:
          v161 = ((v84 + v240 + 7) & 0xFFFFFFFFFFFFFFF8);
          v162 = (&v85[v240 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v161 = *v162;
          v163 = (v161 + 15) & 0xFFFFFFFFFFFFFFF8;
          v164 = (v162 + 15) & 0xFFFFFFFFFFFFFFF8;
          v165 = *v164;
          v166 = *(v164 + 16);
          *(v163 + 32) = *(v164 + 32);
          *v163 = v165;
          *(v163 + 16) = v166;
          *(v163 + 40) = *(v164 + 40);
          v241[v32] = 0;
          return v3;
        case 9u:
          (*(v212 + 32))(&v241[v238] & v38, &v36[v238] & v38, v213);
          v102 = 9;
LABEL_232:
          *(v84 + v25) = v102;
          goto LABEL_233;
        default:
          memcpy((&v241[v238] & v38), (&v36[v238] & v38), v240);
          goto LABEL_233;
      }

    case 1u:
      (*(v226 + 32))(v241, v36, v227);
      v95 = (&v241[v238] & v38);
      v96 = (&v36[v238] & v38);
      v97 = v96[v25];
      v98 = v97 - 10;
      if (v97 >= 0xA)
      {
        if (v25 <= 3)
        {
          v99 = v25;
        }

        else
        {
          v99 = 4;
        }

        switch(v99)
        {
          case 1:
            v100 = *v96;
            goto LABEL_185;
          case 2:
            v100 = *v96;
            goto LABEL_185;
          case 3:
            v100 = *v96 | (*((&v36[v238] & v38) + 2) << 16);
            goto LABEL_185;
          case 4:
            v100 = *v96;
LABEL_185:
            if (v25 < 4)
            {
              v97 = (v100 | (v98 << (8 * v25))) + 10;
            }

            else
            {
              v97 = v100 + 10;
            }

            break;
          default:
            goto LABEL_188;
        }
      }

      break;
    case 2u:
      v90 = v36[v30];
      v91 = v90 - 2;
      if (v90 >= 2)
      {
        if (v30 <= 3)
        {
          v92 = v30;
        }

        else
        {
          v92 = 4;
        }

        switch(v92)
        {
          case 1:
            v93 = *v36;
            goto LABEL_167;
          case 2:
            v93 = *v36;
            goto LABEL_167;
          case 3:
            v93 = *v36 | (v36[2] << 16);
            goto LABEL_167;
          case 4:
            v93 = *v36;
LABEL_167:
            if (v30 < 4)
            {
              v90 = (v93 | (v91 << v220)) + 2;
            }

            else
            {
              v90 = v93 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v90 == 1)
      {
        *v241 = *v36;
        v241[8] = v36[8];
        v241[v30] = 1;
      }

      else if (v90)
      {
        memcpy(v241, v36, v30 + 1);
      }

      else
      {
        (*(v231 + 32))(v241, v36, v29);
        v241[v30] = 0;
      }

      v94 = 2;
      goto LABEL_238;
    case 3u:
      *v241 = *v36;
      v241[8] = v36[8];
      v94 = 3;
      goto LABEL_238;
    default:

      return memcpy(v241, v36, v32 + 1);
  }

LABEL_188:
  switch(v97)
  {
    case 0u:
      (*(v222 + 32))(&v241[v238] & v38, &v36[v238] & v38, v223);
      *(v95 + v25) = 0;
      goto LABEL_237;
    case 1u:
      (*(v222 + 32))(&v241[v238] & v38, &v36[v238] & v38, v223);
      *((v95 + v211) & 0xFFFFFFFFFFFFFFF8) = *(&v96[v211] & 0xFFFFFFFFFFFFFFF8);
      v103 = 1;
      goto LABEL_236;
    case 2u:
      v105 = *v96;
      *((&v241[v238] & v38) + 0x10) = *((&v36[v238] & v38) + 0x10);
      *v95 = v105;
      v103 = 2;
      goto LABEL_236;
    case 3u:
      *v95 = *v96;
      v103 = 3;
      goto LABEL_236;
    case 4u:
      (*(v216 + 32))(&v241[v238] & v38, &v36[v238] & v38, v217);
      v103 = 4;
      goto LABEL_236;
    case 5u:
      *v95 = *v96;
      v103 = 5;
      goto LABEL_236;
    case 6u:
      (*(v232 + 32))(&v241[v238] & v38, &v36[v238] & v38, v224);
      v112 = ((v95 + v236) & v234);
      v113 = (&v96[v236] & v234);
      if (__swift_getEnumTagSinglePayload(v113, 1, v225))
      {
        memcpy(v112, v113, v221);
      }

      else
      {
        (*(v205 + 32))(v112, v113, v225);
        __swift_storeEnumTagSinglePayload(v112, 0, 1, v225);
      }

      v167 = ((v112 + v229) & 0xFFFFFFFFFFFFFFF8);
      v168 = ((v113 + v229) & 0xFFFFFFFFFFFFFFF8);
      *v167 = *v168;
      v169 = (v167 + 19) & 0xFFFFFFFFFFFFFFF8;
      v170 = (v168 + 19) & 0xFFFFFFFFFFFFFFF8;
      v171 = *v170;
      *(v169 + 4) = *(v170 + 4);
      *v169 = v171;
      v103 = 6;
      goto LABEL_236;
    case 7u:
      (*(v232 + 32))(&v241[v238] & v38, &v36[v238] & v38, v224);
      v108 = ((v95 + v236) & v234);
      v109 = (&v96[v236] & v234);
      if (__swift_getEnumTagSinglePayload(v109, 1, v225))
      {
        memcpy(v108, v109, v221);
      }

      else
      {
        (*(v205 + 32))(v108, v109, v225);
        __swift_storeEnumTagSinglePayload(v108, 0, 1, v225);
      }

      v147 = ((v108 + v229) & 0xFFFFFFFFFFFFFFF8);
      v148 = ((v109 + v229) & 0xFFFFFFFFFFFFFFF8);
      *v147 = *v148;
      v149 = (v147 + 19) & 0xFFFFFFFFFFFFFFF8;
      v150 = (v148 + 19) & 0xFFFFFFFFFFFFFFF8;
      v151 = *v150;
      *(v149 + 4) = *(v150 + 4);
      *v149 = v151;
      v152 = ((v95 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
      v153 = (&v96[v18 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v152 = *v153;
      v154 = ((v152 + 23) & 0xFFFFFFFFFFFFFFF8);
      v155 = ((v153 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v154 = *v155;
      *((v154 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v155 + 23) & 0xFFFFFFFFFFFFFFF8);
      v103 = 7;
      goto LABEL_236;
    case 8u:
      (*(v214 + 32))(&v241[v238] & v38, &v36[v238] & v38, v215);
      v121 = ((v95 + v208 + 7) & 0xFFFFFFFFFFFFFFF8);
      v122 = (&v96[v208 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v121 = *v122;
      v123 = ((v121 + v209) & v207);
      v124 = ((v122 + v209) & v207);
      if (v206 == v210)
      {
        v125 = v236;
        if (!__swift_getEnumTagSinglePayload(v124, v206, v224))
        {
          v126 = v234;
          v127 = ((v124 + v236) & v234);
          goto LABEL_248;
        }
      }

      else
      {
        v125 = v236;
        v126 = v234;
        v127 = ((v124 + v236) & v234);
        if (v199 == v210)
        {
          if (v219 < 2 || __swift_getEnumTagSinglePayload((v124 + v236) & v234, v219, v225) < 2)
          {
            goto LABEL_248;
          }
        }

        else
        {
          v180 = *(((v127 + v229) & 0xFFFFFFFFFFFFFFF8) + 8);
          if (v180 >= 0xFFFFFFFF)
          {
            LODWORD(v180) = -1;
          }

          if ((v180 + 1) < 2)
          {
LABEL_248:
            (*(v232 + 32))(v123, v124, v224);
            v181 = ((v123 + v125) & v126);
            if (__swift_getEnumTagSinglePayload(v127, 1, v225))
            {
              memcpy(v181, v127, v221);
            }

            else
            {
              (*(v205 + 32))(v181, v127, v225);
              __swift_storeEnumTagSinglePayload(v181, 0, 1, v225);
            }

            v134 = v203;
            v190 = v204;
            v191 = ((v181 + v229) & 0xFFFFFFFFFFFFFFF8);
            v192 = ((v127 + v229) & 0xFFFFFFFFFFFFFFF8);
            *v191 = *v192;
            v193 = (v192 + 19) & 0xFFFFFFFFFFFFFFF8;
            v194 = *v193;
            v195 = (v191 + 19) & 0xFFFFFFFFFFFFFFF8;
            *(v195 + 4) = *(v193 + 4);
            *v195 = v194;
            v133 = v221;
            v136 = v201;
            v135 = v202;
            v137 = v200;
            if (v219)
            {
LABEL_265:
              v196 = (((v218 + 7 + v190) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
              *((v123 + v196 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v124 + v196 + 7) & 0xFFFFFFFFFFFFFFF8);
              v197 = (((v218 + 7 + v133) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
              if (v197 <= v134)
              {
                v197 = v134;
              }

              if (v135 > v197)
              {
                v197 = v135;
              }

              if (v136 > v197)
              {
                v197 = v136;
              }

              if (v137 > v197)
              {
                v197 = v137;
              }

              *(v95 + v197) = 8;
LABEL_237:
              v172 = ((v95 + v240 + 7) & 0xFFFFFFFFFFFFFFF8);
              v173 = (&v96[v240 + 7] & 0xFFFFFFFFFFFFFFF8);
              *v172 = *v173;
              v174 = (v172 + 15) & 0xFFFFFFFFFFFFFFF8;
              v175 = (v173 + 15) & 0xFFFFFFFFFFFFFFF8;
              v176 = *v175;
              v177 = *(v175 + 16);
              *(v174 + 32) = *(v175 + 32);
              *v174 = v176;
              *(v174 + 16) = v177;
              *(v174 + 40) = *(v175 + 40);
              v94 = 1;
LABEL_238:
              v241[v32] = v94;
              return v3;
            }

LABEL_264:
            v190 = v133;
            goto LABEL_265;
          }
        }
      }

      memcpy(v123, v124, v18);
      v133 = v221;
      v135 = v202;
      v134 = v203;
      v137 = v200;
      v136 = v201;
      goto LABEL_264;
    case 9u:
      (*(v212 + 32))(&v241[v238] & v38, &v36[v238] & v38, v213);
      v103 = 9;
LABEL_236:
      *(v95 + v25) = v103;
      goto LABEL_237;
    default:
      memcpy((&v241[v238] & v38), (&v36[v238] & v38), v240);
      goto LABEL_237;
  }
}

uint64_t sub_1DCF8E448(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v38 = *(*(sub_1DD0DB04C() - 8) + 64);
  v36 = *(sub_1DD0DC76C() - 8);
  v3 = *(v36 + 80);
  v37 = *(sub_1DD0DB1EC() - 8);
  v33 = *(v37 + 80) | v3;
  v35 = *(sub_1DD0DB4BC() - 8);
  v4 = *(v35 + 80) & 0xF8;
  v5 = *(sub_1DD0DB3EC() - 8);
  v6 = *(v5 + 80);
  v7 = v4 | v6 | 7;
  v34 = *(sub_1DD0DD12C() - 8);
  v8 = *(v34 + 80);
  v9 = *(sub_1DD0DD08C() - 8);
  v10 = (v33 | (v8 | *(v9 + 80))) & 0xF8 | v7;
  v11 = (v38 + v10) & ~v10;
  v12 = *(v36 + 64);
  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v12)
  {
    v12 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v12 <= *(v37 + 64))
  {
    v12 = *(v37 + 64);
  }

  v13 = *(v5 + 64) + ((*(v35 + 64) + v6) & ~v6);
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

  if (v12 <= ((v15 + ((v7 + ((*(v34 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v12 = ((v15 + ((v7 + ((*(v34 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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
  v20 = *(a3 + 16);
  v19 = *(a3 + 24);
  v21 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v22 = 9;
  if (v21 <= 9)
  {
    v21 = 9;
  }

  if (v21 + 1 > v18)
  {
    v23 = v21 + 1;
  }

  else
  {
    v23 = v18;
  }

  if (v23 > 9)
  {
    v22 = v23;
  }

  v24 = (3u >> (8 * v22)) ^ 0xFB;
  if (v22 > 3)
  {
    v24 = 251;
  }

  if (!a2)
  {
    return 0;
  }

  if (v24 >= a2)
  {
    goto LABEL_45;
  }

  v25 = v22 + 1;
  v26 = 8 * (v22 + 1);
  if ((v22 + 1) <= 3)
  {
    v29 = ((~(-1 << v26) + a2 - v24) >> v26) + 1;
    if (HIWORD(v29))
    {
      v27 = *(a1 + v25);
      if (!v27)
      {
        goto LABEL_45;
      }

      goto LABEL_37;
    }

    if (v29 > 0xFF)
    {
      v27 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_45;
      }

      goto LABEL_37;
    }

    if (v29 < 2)
    {
LABEL_45:
      v31 = *(a1 + v22);
      if (v24 <= (v31 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v31);
      }
    }
  }

  v27 = *(a1 + v25);
  if (!*(a1 + v25))
  {
    goto LABEL_45;
  }

LABEL_37:
  v30 = (v27 - 1) << v26;
  if (v25 > 3)
  {
    v30 = 0;
  }

  if (v25)
  {
    if (v25 > 3)
    {
      LODWORD(v25) = 4;
    }

    switch(v25)
    {
      case 2:
        LODWORD(v25) = *a1;
        break;
      case 3:
        LODWORD(v25) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v25) = *a1;
        break;
      default:
        LODWORD(v25) = *a1;
        break;
    }
  }

  return v24 + (v25 | v30) + 1;
}

void sub_1DCF8E904(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v40 = *(*(sub_1DD0DB04C() - 8) + 64);
  v38 = *(sub_1DD0DC76C() - 8);
  v4 = *(v38 + 80);
  v39 = *(sub_1DD0DB1EC() - 8);
  v35 = *(v39 + 80) | v4;
  v37 = *(sub_1DD0DB4BC() - 8);
  v5 = *(v37 + 80) & 0xF8;
  v6 = *(sub_1DD0DB3EC() - 8);
  v7 = *(v6 + 80);
  v8 = v5 | v7 | 7;
  v36 = *(sub_1DD0DD12C() - 8);
  v9 = *(v36 + 80);
  v10 = *(sub_1DD0DD08C() - 8);
  v11 = (v35 | (v9 | *(v10 + 80))) & 0xF8 | v8;
  v12 = (v40 + v11) & ~v11;
  v13 = *(v38 + 64);
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v13 <= *(v39 + 64))
  {
    v13 = *(v39 + 64);
  }

  v14 = *(v6 + 64) + ((*(v37 + 64) + v7) & ~v7);
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

  if (v13 <= ((v16 + ((v8 + ((*(v36 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v13 = ((v16 + ((v8 + ((*(v36 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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
  v21 = *(a4 + 16);
  v20 = *(a4 + 24);
  v22 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v22 <= 9)
  {
    v22 = 9;
  }

  if (v22 + 1 > v19)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = v19;
  }

  if (v23 <= 9)
  {
    v23 = 9;
  }

  if (v23 <= 3)
  {
    v24 = (3u >> (8 * v23)) ^ 0xFB;
  }

  else
  {
    v24 = 251;
  }

  v25 = v23 + 1;
  v26 = 8 * (v23 + 1);
  if (v24 >= a3)
  {
    v29 = 0;
    v27 = a1;
    v28 = a2;
  }

  else
  {
    v27 = a1;
    v28 = a2;
    if (v25 <= 3)
    {
      v32 = ((~(-1 << v26) + a3 - v24) >> v26) + 1;
      if (HIWORD(v32))
      {
        v29 = 4;
      }

      else
      {
        if (v32 < 0x100)
        {
          v33 = 1;
        }

        else
        {
          v33 = 2;
        }

        if (v32 >= 2)
        {
          v29 = v33;
        }

        else
        {
          v29 = 0;
        }
      }
    }

    else
    {
      v29 = 1;
    }
  }

  if (v24 >= v28)
  {
    switch(v29)
    {
      case 1:
        v27[v25] = 0;
        if (v28)
        {
          goto LABEL_50;
        }

        break;
      case 2:
        *&v27[v25] = 0;
        if (v28)
        {
          goto LABEL_50;
        }

        break;
      case 3:
LABEL_61:
        __break(1u);
        break;
      case 4:
        *&v27[v25] = 0;
        goto LABEL_49;
      default:
LABEL_49:
        if (v28)
        {
LABEL_50:
          v27[v23] = -v28;
        }

        break;
    }
  }

  else
  {
    v30 = ~v24 + v28;
    if (v25 < 4)
    {
      v31 = (v30 >> v26) + 1;
      if (v23 != -1)
      {
        v34 = v30 & ~(-1 << v26);
        bzero(v27, v25);
        if (v25 == 3)
        {
          *v27 = v34;
          v27[2] = BYTE2(v34);
        }

        else if (v25 == 2)
        {
          *v27 = v34;
        }

        else
        {
          *v27 = v30;
        }
      }
    }

    else
    {
      bzero(v27, v25);
      *v27 = v30;
      v31 = 1;
    }

    switch(v29)
    {
      case 1:
        v27[v25] = v31;
        break;
      case 2:
        *&v27[v25] = v31;
        break;
      case 3:
        goto LABEL_61;
      case 4:
        *&v27[v25] = v31;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCF8EE38(unsigned __int8 *a1, uint64_t a2)
{
  v31 = *(*(sub_1DD0DB04C() - 8) + 64);
  v29 = *(sub_1DD0DC76C() - 8);
  v2 = *(v29 + 80);
  v30 = *(sub_1DD0DB1EC() - 8);
  v26 = *(v30 + 80) | v2;
  v28 = *(sub_1DD0DB4BC() - 8);
  v3 = *(v28 + 80) & 0xF8;
  v4 = *(sub_1DD0DB3EC() - 8);
  v5 = *(v4 + 80);
  v6 = v3 | v5 | 7;
  v27 = *(sub_1DD0DD12C() - 8);
  v7 = *(v27 + 80);
  v8 = *(sub_1DD0DD08C() - 8);
  v9 = (v26 | (v7 | *(v8 + 80))) & 0xF8 | v6;
  v10 = (v31 + v9) & ~v9;
  v11 = *(v29 + 64);
  if (((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v11)
  {
    v11 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v11 <= *(v30 + 64))
  {
    v11 = *(v30 + 64);
  }

  v12 = *(v4 + 64) + ((*(v28 + 64) + v5) & ~v5);
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

  if (v11 <= ((v14 + ((v6 + ((*(v27 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v11 = ((v14 + ((v6 + ((*(v27 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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
  v19 = *(a2 + 16);
  v18 = *(a2 + 24);
  v20 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v21 = 9;
  if (v20 <= 9)
  {
    v20 = 9;
  }

  if (v20 + 1 > v17)
  {
    v22 = v20 + 1;
  }

  else
  {
    v22 = v17;
  }

  if (v22 > 9)
  {
    v21 = v22;
  }

  result = a1[v21];
  if (result >= 4)
  {
    if (v21 <= 3)
    {
      v24 = v21;
    }

    else
    {
      v24 = 4;
    }

    switch(v24)
    {
      case 1:
        v25 = *a1;
        goto LABEL_33;
      case 2:
        v25 = *a1;
        goto LABEL_33;
      case 3:
        v25 = *a1 | (a1[2] << 16);
        goto LABEL_33;
      case 4:
        v25 = *a1;
LABEL_33:
        if (v21 < 4)
        {
          result = (v25 | ((result - 4) << (8 * v21))) + 4;
        }

        else
        {
          result = (v25 + 4);
        }

        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1DCF8F240(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(sub_1DD0DB04C() - 8);
  v6 = v5;
  v59 = a2;
  if (a2 > 3)
  {
    v57 = *(v5 + 64);
    v53 = *(sub_1DD0DC76C() - 8);
    v22 = *(v53 + 80);
    v55 = *(sub_1DD0DB1EC() - 8);
    v47 = *(v55 + 80) | v22;
    v51 = *(sub_1DD0DB4BC() - 8);
    v23 = *(v51 + 80) & 0xF8;
    v24 = *(sub_1DD0DB3EC() - 8);
    v25 = *(v24 + 80);
    v26 = v23 | v25 | 7;
    v49 = *(sub_1DD0DD12C() - 8);
    v27 = *(v49 + 80);
    v28 = *(sub_1DD0DD08C() - 8);
    v29 = (v47 | (v27 | *(v28 + 80))) & 0xF8 | v26;
    v30 = (v57 + v29) & ~v29;
    v31 = *(v53 + 64);
    if (((v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v31)
    {
      v31 = ((v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    if (v31 <= *(v55 + 64))
    {
      v31 = *(v55 + 64);
    }

    v32 = *(v24 + 64) + ((*(v51 + 64) + v25) & ~v25);
    if (!*(v24 + 84))
    {
      ++v32;
    }

    v33 = (v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v33 + 19) | 5;
    if (v31 <= v34)
    {
      v31 = (v33 + 19) | 5;
    }

    v35 = ((((((v33 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    if (v31 <= v35)
    {
      v31 = v35;
    }

    if (v31 <= ((v34 + ((v26 + ((*(v49 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v26) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
    {
      v31 = ((v34 + ((v26 + ((*(v49 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v26) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    v36 = *(v28 + 64);
    if (v31 > v36)
    {
      v36 = v31;
    }

    if (v36 <= 0x18)
    {
      v36 = 24;
    }

    v37 = ((((v30 + v36 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
    v39 = *(a3 + 16);
    v38 = *(a3 + 24);
    v40 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
    if (v40 <= 9)
    {
      v40 = 9;
    }

    if (v40 + 1 > v37)
    {
      v41 = v40 + 1;
    }

    else
    {
      v41 = v37;
    }

    if (v41 <= 9)
    {
      v42 = 9;
    }

    else
    {
      v42 = v41;
    }

    v43 = v59 - 4;
    if (v42 < 4)
    {
      v44 = a1;
      a1[v42] = (v43 >> (8 * v42)) + 4;
      if (!v42)
      {
        return;
      }

      v43 &= ~(-1 << (8 * v42));
    }

    else
    {
      v44 = a1;
      a1[v42] = 4;
    }

    if (v42 >= 4)
    {
      v45 = 4;
    }

    else
    {
      v45 = v42;
    }

    bzero(v44, v42);
    switch(v45)
    {
      case 2:
        *v44 = v43;
        break;
      case 3:
        *v44 = v43;
        v44[2] = BYTE2(v43);
        break;
      case 4:
        *v44 = v43;
        break;
      default:
        *v44 = v43;
        break;
    }
  }

  else
  {
    v56 = *(sub_1DD0DC76C() - 8);
    v54 = *(sub_1DD0DB1EC() - 8);
    v48 = *(sub_1DD0DB4BC() - 8);
    v46 = *(sub_1DD0DB3EC() - 8);
    v50 = *(sub_1DD0DD12C() - 8);
    v52 = *(sub_1DD0DD08C() - 8);
    v8 = *(a3 + 16);
    v7 = *(a3 + 24);
    v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
    v10 = 9;
    if (v9 <= 9)
    {
      v9 = 9;
    }

    v11 = *(v46 + 80);
    v12 = v11 | *(v48 + 80) & 0xF8 | 7;
    v13 = v12 | ((*(v54 + 80) | *(v56 + 80)) | (*(v50 + 80) | *(v52 + 80))) & 0xF8;
    v14 = (*(v6 + 64) + v13) & ~v13;
    v15 = *(v56 + 64);
    if (((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v15)
    {
      v15 = ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    if (v15 <= *(v54 + 64))
    {
      v15 = *(v54 + 64);
    }

    v16 = *(v46 + 64) + ((*(v48 + 64) + v11) & ~v11);
    if (!*(v46 + 84))
    {
      ++v16;
    }

    v17 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v17 + 19) | 5;
    if (v15 <= v18)
    {
      v15 = (v17 + 19) | 5;
    }

    v19 = ((((((v17 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    if (v15 <= v19)
    {
      v15 = v19;
    }

    if (v15 <= ((v18 + ((v12 + ((*(v50 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
    {
      v15 = ((v18 + ((v12 + ((*(v50 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    if (v15 <= *(v52 + 64))
    {
      v15 = *(v52 + 64);
    }

    if (v15 <= 0x18)
    {
      v15 = 24;
    }

    v20 = ((((v14 + v15 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
    if (v9 + 1 > v20)
    {
      v21 = v9 + 1;
    }

    else
    {
      v21 = v20;
    }

    if (v21 > 9)
    {
      v10 = v21;
    }

    a1[v10] = a2;
  }
}

void sub_1DCF8F9DC(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCF8FA54(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCF8FB00()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCF82FF8();
}

uint64_t sub_1DCF8FBD8()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCF85798(v3, v4);
}

uint64_t sub_1DCF8FC5C()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCF85B64(v3, v4);
}

uint64_t sub_1DCF8FCE0()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v6[1] = sub_1DCB4AE1C;

  return sub_1DCF85CC0(v2, v4, v3);
}

uint64_t sub_1DCF8FD80()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCF858DC(v3, v4);
}

uint64_t sub_1DCF8FE04()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCF85A20(v3, v4);
}

_BYTE *sub_1DCF8FE88(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t SimpleOutputFlowAsync.__allocating_init(outputPublisher:outputGenerator:)()
{
  OUTLINED_FUNCTION_58_1();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_13_36();
  SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)(v1, v2, v3);
  return v0;
}

uint64_t SimpleOutputFlow.__allocating_init(outputGenerator:outputPublisher:)()
{
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_15_60();
  swift_allocObject();
  OUTLINED_FUNCTION_13_36();
  SimpleOutputFlow.init(outputGenerator:outputPublisher:)();
  return v0;
}

uint64_t SimpleOutputFlow.init(outputGenerator:outputPublisher:)()
{
  OUTLINED_FUNCTION_58_1();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v1 + 16) = &unk_1DD105868;
  *(v1 + 24) = v4;
  sub_1DCB17CA0(v0, &v8);
  v5 = type metadata accessor for OutputPublisherAsyncAdapter();
  v6 = swift_allocObject();
  sub_1DCAFF9E8(&v8, v6 + 16);
  v9 = v5;
  v10 = &protocol witness table for OutputPublisherAsyncAdapter;
  *&v8 = v6;
  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  sub_1DCAFF9E8(&v8, v1 + 32);
  return v1;
}

uint64_t sub_1DCF9009C(uint64_t a1, void (*a2)(void))
{
  a2();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t SimpleOutputFlow.__allocating_init(outputPublisher:_:)()
{
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_15_60();
  swift_allocObject();
  OUTLINED_FUNCTION_13_36();
  SimpleOutputFlow.init(outputPublisher:_:)();
  return v0;
}

uint64_t SimpleOutputFlow.init(outputPublisher:_:)()
{
  OUTLINED_FUNCTION_58_1();
  sub_1DCB17CA0(v4, &v9);
  v5 = type metadata accessor for OutputPublisherAsyncAdapter();
  v6 = swift_allocObject();
  sub_1DCAFF9E8(&v9, v6 + 16);
  v10 = v5;
  v11 = &protocol witness table for OutputPublisherAsyncAdapter;
  *&v9 = v6;
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  sub_1DCAFF9E8(&v9, v1 + 32);
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v0;
  *(v1 + 16) = &unk_1DD105878;
  *(v1 + 24) = v7;
  return v1;
}

uint64_t sub_1DCF901FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF90220, 0, 0);
}

uint64_t sub_1DCF90220()
{
  OUTLINED_FUNCTION_39();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x1E69E88D0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v3 = v0;
  v3[1] = sub_1DCF90324;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0](v5, 0, 0, 0xD000000000000018, 0x80000001DD126440, sub_1DCF91C18, v1, v4);
}

uint64_t sub_1DCF90324()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCF90420(uint64_t a1, void (*a2)(uint64_t (*)(uint64_t a1), uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB488, &qword_1DD1059E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - v8;
  (*(v5 + 16))(&v13 - v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v9, v4);
  a2(sub_1DCF91C20, v11);
}

uint64_t sub_1DCF90570(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26[-v9 - 8];
  sub_1DCB28B08(a1, v29, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  if (v30)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1DD0DEC1C();
    MEMORY[0x1E12A6780](0xD000000000000046, 0x80000001DD126460);
    swift_getErrorValue();
    v12 = sub_1DD0DF18C();
    MEMORY[0x1E12A6780](v12);

    v13 = v27;
    v14 = v28;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v15 = sub_1DD0DD8FC();
    v16 = __swift_project_value_buffer(v15, qword_1EDE57E00);
    v17 = *(v15 - 8);
    (*(v17 + 16))(v10, v16, v15);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v15);
    sub_1DCB28B08(v10, v7, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v7, 1, v15) == 1)
    {
      sub_1DCBCF738(v7);
    }

    else
    {

      v18 = sub_1DD0DD8EC();
      v19 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v27 = v25;
        *v20 = 136315650;
        v21 = sub_1DD0DEC3C();
        v23 = sub_1DCB10E9C(v21, v22, &v27);

        *(v20 + 4) = v23;
        *(v20 + 12) = 2048;
        *(v20 + 14) = 45;
        *(v20 + 22) = 2080;
        *(v20 + 24) = sub_1DCB10E9C(v13, v14, &v27);
        _os_log_impl(&dword_1DCAFC000, v18, v19, "FatalError at %s:%lu - %s", v20, 0x20u);
        v24 = v25;
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v24, -1, -1);
        MEMORY[0x1E12A8390](v20, -1, -1);
      }

      (*(v17 + 8))(v7, v15);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(v13, v14);
  }

  sub_1DCAFF9E8(v29, &v27);
  sub_1DCB17CA0(&v27, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB488, &qword_1DD1059E8);
  sub_1DD0DE46C();
  return __swift_destroy_boxed_opaque_existential_1Tm(&v27);
}

uint64_t SimpleOutputFlow.execute()(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF90988()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  v0[9] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "Publishing output...");
    OUTLINED_FUNCTION_62();
  }

  v7 = v0[8];

  v9 = *(v7 + 56);
  v8 = *(v7 + 64);
  __swift_project_boxed_opaque_existential_1((v7 + 32), v9);
  v10 = swift_task_alloc();
  v11 = *(v7 + 16);
  v0[10] = v10;
  *(v10 + 16) = v11;
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_1DCF90AF4;

  return sub_1DCB63BBC((v0 + 2), &unk_1DD105890, v10, v9, v8);
}

uint64_t sub_1DCF90AF4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = v2[11];
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  v3[12] = v0;

  if (v0)
  {
    v7 = sub_1DCF90CAC;
  }

  else
  {
    v8 = v3[10];
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 2);

    v7 = sub_1DCF90C0C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCF90C0C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 72);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "Output successfully published. Exiting...");
    OUTLINED_FUNCTION_62();
  }

  v7 = *(v0 + 56);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v8();
}

uint64_t sub_1DCF90CAC()
{
  OUTLINED_FUNCTION_39();
  v2 = v0[9];
  v1 = v0[10];

  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6EC();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_50_0();
    *v7 = 0;
    _os_log_impl(&dword_1DCAFC000, v3, v4, "SimpleOutputFlow received an unexpected error while publishing output.", v7, 2u);
    MEMORY[0x1E12A8390](v7, -1, -1);
  }

  v8 = v0[7];
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v9();
}

uint64_t sub_1DCF90D88(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCCE3F80;

  return v7(a1);
}

uint64_t SimpleOutputFlow.deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  return v0;
}

uint64_t SimpleOutputFlow.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  OUTLINED_FUNCTION_15_60();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF90F04()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = *v0;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v5[1] = sub_1DCB4AD3C;

  return SimpleOutputFlow.execute()(v2);
}

uint64_t SimpleOutputFlowAsync.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = sub_1DCF917B8((v1 + 72), v6);
  if (v7)
  {
    if (v7 == 1)
    {
      *a1 = *&v6[0];
    }

    else
    {
      sub_1DCF917F0();
      result = swift_allocError();
      *v5 = 0xD00000000000002DLL;
      v5[1] = 0x80000001DD1263B0;
      *a1 = result;
    }

    v4 = 1;
  }

  else
  {
    result = sub_1DCAFF9E8(v6, a1);
    v4 = 0;
  }

  *(a1 + 40) = v4;
  return result;
}

uint64_t SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  sub_1DCAFF9E8(a1, v3 + 32);
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0;
  *(v3 + 112) = 2;
  return v3;
}

uint64_t sub_1DCF9108C()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AE1C;
  v6 = OUTLINED_FUNCTION_20_7();

  return v7(v6);
}

uint64_t sub_1DCF9112C()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AD3C;
  v6 = OUTLINED_FUNCTION_20_7();

  return sub_1DCF901FC(v6, v7, v8);
}

uint64_t SimpleOutputFlowAsync.execute()(uint64_t a1)
{
  *(v2 + 200) = a1;
  *(v2 + 208) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF911DC()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  v0[27] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "Publishing output...");
    OUTLINED_FUNCTION_62();
  }

  v7 = v0[26];

  v9 = v7[7];
  v8 = v7[8];
  __swift_project_boxed_opaque_existential_1(v7 + 4, v9);
  v10 = v7[2];
  v11 = v7[3];
  v12 = swift_task_alloc();
  v0[28] = v12;
  *v12 = v0;
  v12[1] = sub_1DCF91324;

  return sub_1DCB63BBC((v0 + 14), v10, v11, v9, v8);
}

uint64_t sub_1DCF91324()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = *(v2 + 224);
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 232) = v0;

  if (v0)
  {
    v7 = sub_1DCF91500;
  }

  else
  {
    v7 = sub_1DCF91428;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCF91428()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 216);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "Output successfully published. Exiting...");
    OUTLINED_FUNCTION_62();
  }

  v7 = *(v0 + 208);

  sub_1DCAFF9E8((v0 + 112), v0 + 64);
  *(v0 + 104) = 0;
  swift_beginAccess();
  sub_1DCF91844(v0 + 64, v7 + 72);
  swift_endAccess();
  v8 = *(v0 + 200);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v9();
}

uint64_t sub_1DCF91500()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 216);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "SimpleOutputFlow received an unexpected error while publishing output.");
    OUTLINED_FUNCTION_62();
  }

  v7 = *(v0 + 232);
  v8 = *(v0 + 208);

  *(v0 + 16) = v7;
  *(v0 + 56) = 1;
  swift_beginAccess();
  sub_1DCF91844(v0 + 16, v8 + 72);
  swift_endAccess();
  v9 = *(v0 + 200);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v10();
}

uint64_t SimpleOutputFlowAsync.deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  sub_1DCF9187C(v0 + 72);
  return v0;
}

uint64_t SimpleOutputFlowAsync.__deallocating_deinit()
{
  SimpleOutputFlowAsync.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF91664()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = *v0;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v5[1] = sub_1DCB4AE1C;

  return SimpleOutputFlowAsync.execute()(v2);
}

uint64_t sub_1DCF91718()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AD3C;
  v6 = OUTLINED_FUNCTION_20_7();

  return v7(v6);
}

unint64_t sub_1DCF917F0()
{
  result = qword_1ECCAB480;
  if (!qword_1ECCAB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB480);
  }

  return result;
}

void destroy for SimpleOutputFlowAsync.State(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 2)
  {
    v1 = *a1 + 2;
  }

  if (v1 == 1)
  {
  }

  else if (!v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t initializeWithCopy for SimpleOutputFlowAsync.State(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 40);
  if (v3 >= 2)
  {
    v3 = *a2 + 2;
  }

  if (v3 == 1)
  {
    v5 = *a2;
    v6 = *a2;
    *a1 = v5;
    *(a1 + 40) = 1;
  }

  else if (v3)
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 25) = *(a2 + 25);
  }

  else
  {
    v4 = *(a2 + 3);
    *(a1 + 24) = v4;
    (**(v4 - 8))(a1);
    *(a1 + 40) = 0;
  }

  return a1;
}

uint64_t assignWithCopy for SimpleOutputFlowAsync.State(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
    }

    else if (!v4)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      v7 = *a2;
      v8 = v7;
      *a1 = v7;
      *(a1 + 40) = 1;
    }

    else if (v5)
    {
      v9 = *a2;
      v10 = a2[1];
      *(a1 + 25) = *(a2 + 25);
      *a1 = v9;
      *(a1 + 16) = v10;
    }

    else
    {
      v6 = *(a2 + 3);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 4);
      (**(v6 - 8))(a1, a2);
      *(a1 + 40) = 0;
    }
  }

  return a1;
}

uint64_t assignWithTake for SimpleOutputFlowAsync.State(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
    }

    else if (!v4)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      *a1 = *a2;
      *(a1 + 40) = 1;
    }

    else
    {
      v6 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v6;
      if (v5)
      {
        *(a1 + 25) = *(a2 + 25);
      }

      else
      {
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 0;
      }
    }
  }

  return a1;
}

uint64_t sub_1DCF91C20(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB488, &qword_1DD1059E8) - 8) + 80);

  return sub_1DCF90570(a1);
}

uint64_t SimpleYesNoPromptFlowStrategy.__allocating_init(baseManifest:responseGenerator:rejectionOutputProducer:cancellationOutputProducer:promptPatternExecutionProducer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_25_30(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = v8;
  v11 = v10;
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v17 = v9[3];
  v16 = v9[4];
  __swift_mutable_project_boxed_opaque_existential_1(v9, v17);
  OUTLINED_FUNCTION_0_1();
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = OUTLINED_FUNCTION_17_48(v22, v34);
  v24(v23);
  v32 = OUTLINED_FUNCTION_24_35(v11, v25, v26, v27, v28, v29, v30, v31, v15, v17, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return v32;
}

uint64_t sub_1DCF91DB4()
{
  v1 = *(v0 + 16);
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  OUTLINED_FUNCTION_43();
  return v2();
}

uint64_t SimpleYesNoPromptFlowStrategy.init(baseManifest:responseGenerator:rejectionOutputProducer:cancellationOutputProducer:promptPatternExecutionProducer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_25_30(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v14 = *(v9 + 24);
  v13 = *(v9 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v9, v14);
  OUTLINED_FUNCTION_0_1();
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = OUTLINED_FUNCTION_17_48(v19, v31);
  v21(v20);
  v29 = OUTLINED_FUNCTION_24_35(v12, v22, v23, v24, v25, v26, v27, v28, v8, v14, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v29;
}

uint64_t SimpleYesNoPromptFlowStrategy.makePromptForYesNoResponse()()
{
  OUTLINED_FUNCTION_42();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1DD0DB6EC();
  v1[4] = v3;
  OUTLINED_FUNCTION_99(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_38();
  v7 = sub_1DD0DB50C();
  v1[7] = v7;
  OUTLINED_FUNCTION_99(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_118();
  v1[10] = swift_task_alloc();
  v11 = sub_1DD0DB5BC();
  v1[11] = v11;
  OUTLINED_FUNCTION_99(v11);
  v1[12] = v12;
  v14 = *(v13 + 64);
  v1[13] = OUTLINED_FUNCTION_118();
  v1[14] = swift_task_alloc();
  v15 = sub_1DD0DB4DC();
  v1[15] = v15;
  OUTLINED_FUNCTION_99(v15);
  v1[16] = v16;
  v18 = *(v17 + 64);
  v1[17] = OUTLINED_FUNCTION_118();
  v1[18] = swift_task_alloc();
  v19 = type metadata accessor for NLContextUpdate();
  v1[19] = v19;
  OUTLINED_FUNCTION_20_0(v19);
  v21 = *(v20 + 64);
  v1[20] = OUTLINED_FUNCTION_38();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v22);
  v24 = *(v23 + 64);
  v1[21] = OUTLINED_FUNCTION_38();
  v25 = type metadata accessor for OutputGenerationManifest();
  v1[22] = v25;
  OUTLINED_FUNCTION_20_0(v25);
  v27 = *(v26 + 64);
  v1[23] = OUTLINED_FUNCTION_38();

  return MEMORY[0x1EEE6DFA0](sub_1DCF9210C, 0, 0);
}

uint64_t sub_1DCF9210C()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[19];
  sub_1DCF94404(v0[3] + OBJC_IVAR____TtC11SiriKitFlow29SimpleYesNoPromptFlowStrategy_baseManifest, v2, type metadata accessor for OutputGenerationManifest);
  v5 = *(v1 + 48);
  sub_1DCDB1604(v2 + v5, v3);
  LODWORD(v4) = __swift_getEnumTagSinglePayload(v3, 1, v4);
  sub_1DCB0E9D8(v3, &unk_1ECCA3270, &qword_1DD0E0F70);
  if (v4 == 1)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v36 = v5;
    v37 = v2;
    v6 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v6, qword_1EDE57E00);
    v7 = sub_1DD0DD8EC();
    v8 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DCAFC000, v7, v8, "OutputGenerationManifest does not include an NL context update. Will send a standard UserAccepted offer.", v9, 2u);
      MEMORY[0x1E12A8390](v9, -1, -1);
    }

    v10 = v0[20];
    v35 = v0[19];
    v12 = v0[17];
    v11 = v0[18];
    v13 = v0[15];
    v14 = v0[16];
    v15 = v0[13];
    v16 = v0[14];
    v28 = v0[12];
    v29 = v0[11];
    v27 = v0[10];
    v31 = v0[8];
    v32 = v0[9];
    v33 = v0[7];
    v17 = v0[5];
    v30 = v0[6];
    v34 = v0[4];

    NLContextUpdate.init()(v10);
    sub_1DD0DB4CC();
    sub_1DD0DB5AC();
    (*(v14 + 16))(v12, v11, v13);
    sub_1DD0DB59C();
    sub_1DD0DB4FC();
    (*(v28 + 16))(v15, v16, v29);
    sub_1DD0DB4EC();
    sub_1DD0DB6DC();
    (*(v31 + 16))(v32, v27, v33);
    sub_1DD0DB6AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA1800, &qword_1DD0F9820);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1DD0E07C0;
    (*(v17 + 32))(v20 + v19, v30, v34);
    (*(v31 + 8))(v27, v33);
    (*(v28 + 8))(v16, v29);
    (*(v14 + 8))(v11, v13);
    v21 = *(v10 + 216);

    *(v10 + 216) = v20;
    sub_1DCB0E9D8(v37 + v36, &unk_1ECCA3270, &qword_1DD0E0F70);
    sub_1DCF94404(v10, v37 + v36, type metadata accessor for NLContextUpdate);
    __swift_storeEnumTagSinglePayload(v37 + v36, 0, 1, v35);
    sub_1DCF94464(v10, type metadata accessor for NLContextUpdate);
  }

  v22 = (v0[3] + OBJC_IVAR____TtC11SiriKitFlow29SimpleYesNoPromptFlowStrategy_promptPatternExecutionProducer);
  v23 = v22[1];
  v38 = (*v22 + **v22);
  v24 = (*v22)[1];
  v25 = swift_task_alloc();
  v0[24] = v25;
  *v25 = v0;
  v25[1] = sub_1DCF9257C;

  return v38();
}

uint64_t sub_1DCF9257C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 192);
  *v3 = *v1;
  *(v2 + 200) = v6;
  *(v2 + 208) = v0;

  if (v0)
  {
    v7 = sub_1DCF929B4;
  }

  else
  {
    v7 = sub_1DCF92684;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCF92684()
{
  v1 = (v0[3] + OBJC_IVAR____TtC11SiriKitFlow29SimpleYesNoPromptFlowStrategy_responseGenerator);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v12 = (v4 + *v4);
  v5 = v4[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[27] = v6;
  *v6 = v7;
  v6[1] = sub_1DCF927C0;
  v8 = v0[25];
  v9 = v0[23];
  v10 = v0[2];

  return v12(v10, v8, v9, v2, v3);
}

uint64_t sub_1DCF927C0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 224) = v0;

  if (v0)
  {
    v9 = sub_1DCF92AAC;
  }

  else
  {
    v9 = sub_1DCF928C0;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DCF928C0()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v13 = *(v0 + 48);

  OUTLINED_FUNCTION_2_107();
  sub_1DCF94464(v1, v10);

  OUTLINED_FUNCTION_43();

  return v11();
}

uint64_t sub_1DCF929B4()
{
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[9];
  v9 = v0[10];
  v13 = v0[6];
  v14 = v0[26];
  OUTLINED_FUNCTION_2_107();
  sub_1DCF94464(v1, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1DCF92AAC()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  v13 = *(v0 + 48);
  v14 = *(v0 + 224);
  OUTLINED_FUNCTION_2_107();
  sub_1DCF94464(v1, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t SimpleYesNoPromptFlowStrategy.actionForInput(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v99 = a2;
  v3 = sub_1DD0DB5BC();
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  v7 = *(v6 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v97 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v97 - v14;
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v97 - v17;
  v19 = type metadata accessor for USOParse();
  v20 = OUTLINED_FUNCTION_20_0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  v98 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Parse(0);
  v26 = OUTLINED_FUNCTION_2(v25);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = (&v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v36 = (&v97 - v35);
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v40 = &v97 - v39;
  MEMORY[0x1EEE9AC00](v38, v41);
  v43 = &v97 - v42;
  v44 = *(type metadata accessor for Input(0) + 20);
  OUTLINED_FUNCTION_0_114();
  sub_1DCF94404(a1 + v45, v43, v46);
  v100 = v43;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_0_114();
      v56 = v100;
      sub_1DCF94404(v100, v36, v57);
      v58 = *v36;
      objc_opt_self();
      v59 = swift_dynamicCastObjCClass();
      v48 = v99;
      if (v59)
      {
        swift_unknownObjectRelease();
        *v48 = 0;
        OUTLINED_FUNCTION_4_107();
        v61 = v56;
        return sub_1DCF94464(v61, v60);
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        swift_unknownObjectRelease();
      }

      else
      {
        objc_opt_self();
        v88 = swift_dynamicCastObjCClass();
        swift_unknownObjectRelease();
        if (!v88)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_56;
    }

    v48 = v99;
    if (EnumCaseMultiPayload != 6)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_0_114();
    sub_1DCF94404(v100, v40, v49);
    OUTLINED_FUNCTION_11_66();
    sub_1DCF945E8(v40, v98, v50);
    v51 = sub_1DD0DB46C();
    v52 = 0;
    v53 = *(v51 + 16);
    while (1)
    {
      if (v53 == v52)
      {

        v71 = sub_1DD0DB46C();
        v72 = 0;
        v18 = *(v71 + 16);
        v73 = v97;
        while (v18 != v72)
        {
          if (v72 >= *(v71 + 16))
          {
            goto LABEL_58;
          }

          OUTLINED_FUNCTION_23_32();
          (*(v5 + 16))(v15, v71 + v74 + *(v5 + 72) * v72++, v3);
          v75 = sub_1DD0DB53C();
          (*(v5 + 8))(v15, v3);
          if (v75)
          {
            goto LABEL_22;
          }
        }

        v15 = sub_1DD0DB46C();
        v78 = 0;
        v18 = *(v15 + 2);
        while (v18 != v78)
        {
          if (v78 >= *(v15 + 2))
          {
            goto LABEL_59;
          }

          OUTLINED_FUNCTION_23_32();
          (*(v5 + 16))(v73, &v15[v79 + *(v5 + 72) * v78++], v3);
          v80 = sub_1DD0DB54C();
          (*(v5 + 8))(v73, v3);
          if (v80)
          {
            OUTLINED_FUNCTION_1_123();
            sub_1DCF94464(v98, v81);

            *v99 = 0;
            goto LABEL_52;
          }
        }

        OUTLINED_FUNCTION_1_123();
        sub_1DCF94464(v98, v89);

        v77 = 2;
        goto LABEL_23;
      }

      if (v52 >= *(v51 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_23_32();
      (*(v5 + 16))(v18, v51 + v54 + *(v5 + 72) * v52++, v3);
      v55 = sub_1DD0DB52C();
      (*(v5 + 8))(v18, v3);
      if (v55)
      {
LABEL_22:

        OUTLINED_FUNCTION_1_123();
        sub_1DCF94464(v98, v76);
        v77 = 1;
LABEL_23:
        *v99 = v77;
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v15 = v99;
  v18 = v100;
  OUTLINED_FUNCTION_0_114();
  sub_1DCF94404(v18, v32, v62);
  v5 = *v32;
  v3 = v32[1];
  v63 = v32[2];
  if (qword_1ECCA12E0 != -1)
  {
LABEL_60:
    swift_once();
  }

  v64 = [qword_1ECCA5FD8 identifier];
  v65 = sub_1DD0DDFBC();
  v67 = v66;

  if (v5 == v65 && v3 == v67)
  {

    v70 = v15;
    goto LABEL_25;
  }

  v69 = OUTLINED_FUNCTION_16_55();

  if (v69)
  {
    v70 = v15;
LABEL_25:

    *v70 = 0;
    OUTLINED_FUNCTION_4_107();
    v61 = v18;
    return sub_1DCF94464(v61, v60);
  }

  if (qword_1ECCA12D0 != -1)
  {
    OUTLINED_FUNCTION_15_61();
  }

  v82 = [qword_1ECCA5FC8 identifier];
  v83 = sub_1DD0DDFBC();
  v85 = v84;

  if (v5 == v83 && v3 == v85)
  {
    goto LABEL_54;
  }

  v87 = OUTLINED_FUNCTION_16_55();

  if (v87)
  {
    v48 = v15;
LABEL_55:

    goto LABEL_56;
  }

  if (qword_1ECCA12D8 != -1)
  {
    OUTLINED_FUNCTION_14_58();
  }

  v90 = [qword_1ECCA5FD0 identifier];
  v91 = sub_1DD0DDFBC();
  v93 = v92;

  if (v5 == v91 && v3 == v93)
  {
LABEL_54:
    v48 = v15;

    goto LABEL_55;
  }

  v95 = OUTLINED_FUNCTION_16_55();

  v48 = v15;
  if ((v95 & 1) == 0)
  {
LABEL_51:
    *v48 = 2;
LABEL_52:
    v60 = type metadata accessor for Parse;
    v61 = v100;
    return sub_1DCF94464(v61, v60);
  }

LABEL_56:
  result = sub_1DCF94464(v100, type metadata accessor for Parse);
  *v48 = 1;
  return result;
}

uint64_t SimpleYesNoPromptFlowStrategy.parseConfirmationResponse(input:)()
{
  OUTLINED_FUNCTION_42();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1DD0DB5BC();
  v0[4] = v3;
  OUTLINED_FUNCTION_99(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = OUTLINED_FUNCTION_118();
  v0[7] = swift_task_alloc();
  v7 = type metadata accessor for USOParse();
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 64);
  v0[8] = OUTLINED_FUNCTION_38();
  v10 = type metadata accessor for Parse(0);
  v0[9] = v10;
  OUTLINED_FUNCTION_20_0(v10);
  v12 = *(v11 + 64);
  v0[10] = OUTLINED_FUNCTION_118();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF933F4, 0, 0);
}

uint64_t sub_1DCF933F4()
{
  v2 = *(v0 + 104);
  v3 = *(v0 + 72);
  v4 = *(v0 + 24);
  v5 = *(type metadata accessor for Input(0) + 20);
  OUTLINED_FUNCTION_0_114();
  sub_1DCF94404(v4 + v6, v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v31 = *(v0 + 104);
    v32 = *(v0 + 80);
    OUTLINED_FUNCTION_0_114();
    sub_1DCF94404(v33, v32, v34);
    v36 = *v32;
    v35 = v32[1];
    v37 = v32[2];
    if (qword_1ECCA12D0 != -1)
    {
      OUTLINED_FUNCTION_15_61();
    }

    v38 = [qword_1ECCA5FC8 identifier];
    v39 = sub_1DD0DDFBC();
    v41 = v40;

    if (v36 == v39 && v35 == v41)
    {
    }

    else
    {
      v43 = OUTLINED_FUNCTION_26_34();

      if ((v43 & 1) == 0)
      {
        if (qword_1ECCA12D8 != -1)
        {
          OUTLINED_FUNCTION_14_58();
        }

        v65 = [qword_1ECCA5FD0 identifier];
        v66 = sub_1DD0DDFBC();
        v68 = v67;

        if (v36 == v66 && v35 == v68)
        {
        }

        else
        {
          v70 = OUTLINED_FUNCTION_26_34();

          if ((v70 & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        goto LABEL_47;
      }
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v10 = *(v0 + 96);
      v9 = *(v0 + 104);
      v11 = *(v0 + 64);
      v12 = *(v0 + 40);
      OUTLINED_FUNCTION_0_114();
      sub_1DCF94404(v13, v10, v14);
      OUTLINED_FUNCTION_11_66();
      sub_1DCF945E8(v10, v11, v15);
      v16 = sub_1DD0DB46C();
      v17 = 0;
      v18 = *(v16 + 16);
      while (v18 != v17)
      {
        if (v17 >= *(v16 + 16))
        {
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v19 = *(v0 + 56);
        v20 = OUTLINED_FUNCTION_12_64();
        v21(v20);
        ++v17;
        sub_1DD0DB52C();
        v22 = OUTLINED_FUNCTION_29_1();
        v23(v22);
        if (v1)
        {
          v24 = *(v0 + 64);

          OUTLINED_FUNCTION_1_123();
          sub_1DCF94464(v24, v25);
          goto LABEL_26;
        }
      }

      v44 = *(v0 + 64);

      v45 = sub_1DD0DB46C();
      v46 = 0;
      v47 = *(v45 + 16);
      while (v47 != v46)
      {
        if (v46 >= *(v45 + 16))
        {
          goto LABEL_52;
        }

        v48 = *(v0 + 48);
        v49 = OUTLINED_FUNCTION_12_64();
        v50(v49);
        ++v46;
        sub_1DD0DB53C();
        v51 = OUTLINED_FUNCTION_29_1();
        v52(v51);
        if (v1)
        {
          v53 = *(v0 + 64);

          OUTLINED_FUNCTION_1_123();
          sub_1DCF94464(v53, v54);
          goto LABEL_47;
        }
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v57 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v57, qword_1EDE57E00);
      v58 = sub_1DD0DD8EC();
      v59 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v61, v62, "Unable to parse a confirmation response from the given USO parse");
        MEMORY[0x1E12A8390](v60, -1, -1);
      }

      v63 = *(v0 + 64);

      OUTLINED_FUNCTION_1_123();
      sub_1DCF94464(v63, v64);
LABEL_45:
      v55 = 2;
      goto LABEL_48;
    }

LABEL_41:
    if (qword_1EDE4F900 != -1)
    {
LABEL_53:
      OUTLINED_FUNCTION_0_0();
    }

    v71 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v71, qword_1EDE57E00);
    v72 = sub_1DD0DD8EC();
    v73 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v75, v76, "Unable to parse a confirmation response from the given parse");
      MEMORY[0x1E12A8390](v74, -1, -1);
    }

    goto LABEL_45;
  }

  v26 = *(v0 + 104);
  v27 = *(v0 + 88);
  OUTLINED_FUNCTION_0_114();
  sub_1DCF94404(v28, v27, v29);
  v30 = *v27;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
LABEL_26:
    v55 = 0;
    goto LABEL_48;
  }

  objc_opt_self();
  v56 = swift_dynamicCastObjCClass();
  swift_unknownObjectRelease();
  if (!v56)
  {
    goto LABEL_41;
  }

LABEL_47:
  v55 = 1;
LABEL_48:
  v77 = *(v0 + 96);
  v78 = *(v0 + 104);
  v80 = *(v0 + 80);
  v79 = *(v0 + 88);
  v82 = *(v0 + 56);
  v81 = *(v0 + 64);
  v83 = *(v0 + 48);
  **(v0 + 16) = v55;
  OUTLINED_FUNCTION_4_107();
  sub_1DCF94464(v78, v84);

  OUTLINED_FUNCTION_43();

  return v85();
}

uint64_t SimpleYesNoPromptFlowStrategy.makeConfirmationRejectedResponse()(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF93950()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_6_72(*(v0 + 104));
  v2 = *(v1 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 112) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_30_39(v3);

  return v6(v5);
}

uint64_t sub_1DCF93A08()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 120) = v0;

  if (v0)
  {
    v9 = sub_1DCF94654;
  }

  else
  {
    v9 = sub_1DCF93B08;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DCF93B08()
{
  OUTLINED_FUNCTION_42();
  if (*(v0 + 80))
  {
    v1 = *(v0 + 96);
    sub_1DCB18FF0((v0 + 56), v0 + 16);
    sub_1DCB18FF0((v0 + 16), v1);
    OUTLINED_FUNCTION_43();

    return v2();
  }

  else
  {
    sub_1DCB0E9D8(v0 + 56, &qword_1ECCA1810, &dword_1DD0E0F78);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 128) = v4;
    *v4 = v5;
    v4[1] = sub_1DCF94648;
    v6 = *(v0 + 96);

    return sub_1DCCDCA70();
  }
}

uint64_t SimpleYesNoPromptFlowStrategy.makeFlowCancelledResponse()(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF93C10()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_6_72(*(v0 + 104));
  v2 = *(v1 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 112) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_30_39(v3);

  return v6(v5);
}

uint64_t sub_1DCF93CC8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 120) = v0;

  if (v0)
  {
    v9 = sub_1DCF93FA0;
  }

  else
  {
    v9 = sub_1DCF93DC8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DCF93DC8()
{
  OUTLINED_FUNCTION_42();
  if (*(v0 + 80))
  {
    v1 = *(v0 + 96);
    sub_1DCB18FF0((v0 + 56), v0 + 16);
    sub_1DCB18FF0((v0 + 16), v1);
    OUTLINED_FUNCTION_43();

    return v2();
  }

  else
  {
    sub_1DCB0E9D8(v0 + 56, &qword_1ECCA1810, &dword_1DD0E0F78);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 128) = v4;
    *v4 = v5;
    v4[1] = sub_1DCF93EBC;
    v6 = *(v0 + 96);

    return sub_1DCCDCA70();
  }
}

uint64_t sub_1DCF93EBC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t SimpleYesNoPromptFlowStrategy.deinit()
{
  OUTLINED_FUNCTION_2_107();
  sub_1DCF94464(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC11SiriKitFlow29SimpleYesNoPromptFlowStrategy_responseGenerator));
  v3 = *(v0 + OBJC_IVAR____TtC11SiriKitFlow29SimpleYesNoPromptFlowStrategy_rejectionOutputProducer + 8);

  v4 = *(v0 + OBJC_IVAR____TtC11SiriKitFlow29SimpleYesNoPromptFlowStrategy_cancellationOutputProducer + 8);

  v5 = *(v0 + OBJC_IVAR____TtC11SiriKitFlow29SimpleYesNoPromptFlowStrategy_promptPatternExecutionProducer + 8);

  return v0;
}

uint64_t SimpleYesNoPromptFlowStrategy.__deallocating_deinit()
{
  SimpleYesNoPromptFlowStrategy.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF94088()
{
  OUTLINED_FUNCTION_42();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1DCC467A0;

  return SimpleYesNoPromptFlowStrategy.makePromptForYesNoResponse()();
}

uint64_t sub_1DCF94130()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCF9464C;

  return SimpleYesNoPromptFlowStrategy.parseConfirmationResponse(input:)();
}

uint64_t sub_1DCF941D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCF9464C;

  return SimpleYesNoPromptFlowStrategy.makeConfirmationRejectedResponse()(a1);
}

uint64_t sub_1DCF94268(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCF9464C;

  return SimpleYesNoPromptFlowStrategy.makeFlowCancelledResponse()(a1);
}

uint64_t sub_1DCF94300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = (a9 + OBJC_IVAR____TtC11SiriKitFlow29SimpleYesNoPromptFlowStrategy_responseGenerator);
  v19[3] = a10;
  v19[4] = a11;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v19);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1Tm, a2, a10);
  sub_1DCF945E8(a1, a9 + OBJC_IVAR____TtC11SiriKitFlow29SimpleYesNoPromptFlowStrategy_baseManifest, type metadata accessor for OutputGenerationManifest);
  v21 = (a9 + OBJC_IVAR____TtC11SiriKitFlow29SimpleYesNoPromptFlowStrategy_rejectionOutputProducer);
  *v21 = a3;
  v21[1] = a4;
  v22 = (a9 + OBJC_IVAR____TtC11SiriKitFlow29SimpleYesNoPromptFlowStrategy_cancellationOutputProducer);
  *v22 = a5;
  v22[1] = a6;
  v23 = (a9 + OBJC_IVAR____TtC11SiriKitFlow29SimpleYesNoPromptFlowStrategy_promptPatternExecutionProducer);
  *v23 = a7;
  v23[1] = a8;
  return a9;
}

uint64_t sub_1DCF94404(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DCF94464(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for SimpleYesNoPromptFlowStrategy()
{
  result = qword_1ECCAB4B8;
  if (!qword_1ECCAB4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DCF94510()
{
  result = type metadata accessor for OutputGenerationManifest();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DCF945E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t static CorrectionsExitValue.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    sub_1DCF94794(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    sub_1DCF94794(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v17 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v19 = sub_1DD0DF0AC();
      v20 = OUTLINED_FUNCTION_54_1();
      sub_1DCF94780(v20, v21);
      v22 = OUTLINED_FUNCTION_20();
      sub_1DCF94780(v22, v23);
      v24 = OUTLINED_FUNCTION_20();
      sub_1DCF94794(v24, v25);
      v26 = OUTLINED_FUNCTION_54_1();
      sub_1DCF94794(v26, v27);
      return v19 & 1;
    }

    sub_1DCF94780(v17, v3);
    v29 = OUTLINED_FUNCTION_20();
    sub_1DCF94780(v29, v30);
    v31 = OUTLINED_FUNCTION_20();
    sub_1DCF94794(v31, v32);
    v7 = OUTLINED_FUNCTION_20();
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    v9 = OUTLINED_FUNCTION_54_1();
    sub_1DCF94780(v9, v10);
    v11 = OUTLINED_FUNCTION_20();
    sub_1DCF94780(v11, v12);
    v13 = OUTLINED_FUNCTION_20();
    sub_1DCF94794(v13, v14);
    v15 = OUTLINED_FUNCTION_54_1();
    sub_1DCF94794(v15, v16);
    return 0;
  }

  v6 = 1;
  sub_1DCF94794(*a1, 1uLL);
  sub_1DCF94794(v4, 1uLL);
  return v6;
}

uint64_t sub_1DCF94780(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1DCF94794(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

void sub_1DCF947AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1DD0DCF8C();
}

void SiriEnvironment.correctionsClientProvider.modify(void *a1)
{
  a1[1] = v1;
  a1[2] = type metadata accessor for SiriCorrectionsClientProvider();
  a1[3] = OUTLINED_FUNCTION_0_115(&qword_1EDE4B5E0);
  sub_1DD0DCA7C();
}

void sub_1DCF94874(uint64_t a1, uint64_t *a2)
{
  sub_1DCB514AC(a1, v4);
  v3 = *a2;
  sub_1DCB4DD44(v4);
}

void sub_1DCF948B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4C8, &qword_1DD105AC0);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_124(qword_1EDE4B5E8);
  OUTLINED_FUNCTION_54_1();
  sub_1DD0DCEDC();
}

void sub_1DCF94958(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4C8, &qword_1DD105AC0);
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  OUTLINED_FUNCTION_1_124(qword_1EDE4B5E8);
  sub_1DD0DCECC();
}

void sub_1DCF94A20(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4D8, &qword_1DD105B18);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  v10 = *a2;
  sub_1DCF94AF4(v8);
}

void sub_1DCF94AF4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4D8, &qword_1DD105B18);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  swift_beginAccess();
  v9 = *(v1 + 24);
  (*(v4 + 16))(v8, a1, v3);
  sub_1DD0DCF8C();
}

void sub_1DCF94C10(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4D8, &qword_1DD105B18);
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  sub_1DCE0FD04();
}

void sub_1DCF94CF0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  if (a2)
  {
    v4 = *v2;
    (*(v2[2] + 16))((*a1)[3], (*a1)[4], v2[1]);
    sub_1DCF94AF4(v3);
  }

  v5 = *v2;
  sub_1DCF94AF4((*a1)[4]);
}

void SiriCorrectionsClientProvider.__allocating_init()()
{
  OUTLINED_FUNCTION_5_2();
  v0 = swift_allocObject();
  SiriCorrectionsClientProvider.init()(v0, v1, v2, v3, v4, v5, v6, v7);
}

void SiriCorrectionsClientProvider.__allocating_init(storage:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_2();
  swift_allocObject();
  SiriCorrectionsClientProvider.init(storage:)(a1, v2, v3, v4, v5, v6, v7, v8);
}

void SiriCorrectionsClientProvider.init(storage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_5_105(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12, v13, v14, v15, v16, v17, v18, v19);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4C8, &qword_1DD105AC0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1DD0DCE9C();
}

void sub_1DCF94FB0()
{
  type metadata accessor for SiriCorrectionsClientProvider();

    ;
  }
}

void sub_1DCF94FFC()
{
  type metadata accessor for SiriCorrectionsClientProvider();

  sub_1DD0DCF8C();
}

uint64_t destroy for CorrectionsActionOutcome(uint64_t result)
{
  v1 = result;
  v2 = *(result + 56);
  if (v2 >= 3)
  {
    v2 = *result + 3;
  }

  v3 = *(result + 24);
  if (v2 == 1)
  {
    if (v3)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(result);
    }

    v4 = *(v1 + 48);
  }

  else if (v3)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(result);
  }

  return result;
}

uint64_t initializeWithCopy for CorrectionsActionOutcome(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4 >= 3)
  {
    v4 = *a2 + 3;
  }

  v5 = *(a2 + 24);
  if (v4 == 2)
  {
    if (v5)
    {
      v7 = *(a2 + 32);
      *(a1 + 24) = v5;
      *(a1 + 32) = v7;
      (**(v5 - 8))(a1, a2);
    }

    else
    {
      v11 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v11;
      *(a1 + 32) = *(a2 + 32);
    }

    *(a1 + 56) = 2;
  }

  else if (v4 == 1)
  {
    if (v5)
    {
      v6 = *(a2 + 32);
      *(a1 + 24) = v5;
      *(a1 + 32) = v6;
      (**(v5 - 8))(a1, a2);
    }

    else
    {
      v9 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v9;
      *(a1 + 32) = *(a2 + 32);
    }

    v10 = *(a2 + 48);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = v10;
    *(a1 + 56) = 1;
  }

  else
  {
    if (v5)
    {
      v8 = *(a2 + 32);
      *(a1 + 24) = v5;
      *(a1 + 32) = v8;
      (**(v5 - 8))(a1, a2);
    }

    else
    {
      v12 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v12;
      *(a1 + 32) = *(a2 + 32);
    }

    *(a1 + 56) = 0;
  }

  return a1;
}

uint64_t assignWithCopy for CorrectionsActionOutcome(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 56);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    v5 = *(a1 + 24);
    if (v4 == 1)
    {
      if (v5)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }

      v6 = *(a1 + 48);
    }

    else if (v5)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v7 = *(a2 + 56);
    if (v7 >= 3)
    {
      v7 = *a2 + 3;
    }

    v8 = *(a2 + 3);
    if (v7 == 2)
    {
      if (v8)
      {
        *(a1 + 24) = v8;
        *(a1 + 32) = *(a2 + 4);
        (**(v8 - 8))(a1, a2);
      }

      else
      {
        v11 = *a2;
        v12 = a2[1];
        *(a1 + 32) = *(a2 + 4);
        *a1 = v11;
        *(a1 + 16) = v12;
      }

      *(a1 + 56) = 2;
    }

    else if (v7 == 1)
    {
      if (v8)
      {
        *(a1 + 24) = v8;
        *(a1 + 32) = *(a2 + 4);
        (**(v8 - 8))(a1, a2);
      }

      else
      {
        v9 = *a2;
        v10 = a2[1];
        *(a1 + 32) = *(a2 + 4);
        *a1 = v9;
        *(a1 + 16) = v10;
      }

      *(a1 + 40) = *(a2 + 5);
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 56) = 1;
    }

    else
    {
      if (v8)
      {
        *(a1 + 24) = v8;
        *(a1 + 32) = *(a2 + 4);
        (**(v8 - 8))(a1, a2);
      }

      else
      {
        v13 = *a2;
        v14 = a2[1];
        *(a1 + 32) = *(a2 + 4);
        *a1 = v13;
        *(a1 + 16) = v14;
      }

      *(a1 + 56) = 0;
    }
  }

  return a1;
}

uint64_t assignWithTake for CorrectionsActionOutcome(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 56);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    v5 = *(a1 + 24);
    if (v4 == 1)
    {
      if (v5)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }

      v6 = *(a1 + 48);
    }

    else if (v5)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v7 = *(a2 + 56);
    if (v7 >= 3)
    {
      v7 = *a2 + 3;
    }

    if (v7 == 2)
    {
      v10 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v10;
      *(a1 + 32) = *(a2 + 32);
      v9 = 2;
    }

    else if (v7 == 1)
    {
      v8 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v8;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      v9 = 1;
    }

    else
    {
      v9 = 0;
      v11 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v11;
      *(a1 + 32) = *(a2 + 32);
    }

    *(a1 + 56) = v9;
  }

  return a1;
}

uint64_t sub_1DCF95590(uint64_t a1)
{
  result = *(a1 + 56);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

uint64_t sub_1DCF955AC(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CorrectionsExitValue(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CorrectionsExitValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void sub_1DCF95810(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1DD0DCF8C();
}

void SiriEnvironment.flowTask.modify(uint64_t a1)
{
  *(a1 + 8) = v1;
  type metadata accessor for FlowTaskProvider();
  OUTLINED_FUNCTION_1_125(&qword_1EDE4B0C0);
  sub_1DD0DCA7C();
}

void sub_1DCF958AC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;
    sub_1DD0DCF8C();
  }

  v5 = *a1;
  SiriEnvironment.flowTask.setter();
}

void sub_1DCF95930(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  sub_1DCB6CF38();
}

void sub_1DCF95970()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA67F8, &qword_1DD0F6840);
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_4();
  v6 = *(v0 + 24);
  v7 = OUTLINED_FUNCTION_3_8();
  v8(v7);
  sub_1DD0DCF8C();
}

void sub_1DCF95A80(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_1DCB71A54();
}

void sub_1DCF95AA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4E0, &qword_1DD105D00);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_116(&qword_1EDE4B0C8);
  OUTLINED_FUNCTION_12_65();
}

void sub_1DCF95B38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4F8, &qword_1DD105F10);
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_4();
  v6 = *(v0 + 32);
  v7 = OUTLINED_FUNCTION_3_8();
  v8(v7);
  sub_1DD0DCF8C();
}

void sub_1DCF95C40(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v10 - v7;
  sub_1DCB54EBC(a1, &v10 - v7);
  v9 = *a2;
  sub_1DCB71B4C(v8);
}

void sub_1DCF95CD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4E8, &qword_1DD105D08);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_116(&qword_1EDE4B0C8);
  sub_1DD0DCEDC();
}

uint64_t sub_1DCF95D80(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_9(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_4_1();
  (*(v16 + 16))(v7, a1);
  v17 = *a2;
  return a7(v7);
}

void sub_1DCF95E3C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4F0, &qword_1DD105F08);
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_4();
  v6 = *(v0 + 40);
  v7 = OUTLINED_FUNCTION_3_8();
  v8(v7);
  sub_1DD0DCF8C();
}

void sub_1DCF95F98()
{
  type metadata accessor for FlowTaskProvider();

    ;
  }
}

void sub_1DCF95FE4()
{
  type metadata accessor for FlowTaskProvider();

  sub_1DD0DCF8C();
}

void SiriEnvironmentProperty.wrappedValue.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v1 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v0 - 8, v2);
  MEMORY[0x1EEE9AC00](v3, v4);
  sub_1DD0DCA6C();
}

_BYTE *storeEnumTagSinglePayload for SiriEnvironmentProperty(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

id sub_1DCF965C0(unint64_t a1, uint64_t (*a2)(unint64_t), void (*a3)(void, BOOL, unint64_t))
{
  v5 = a1;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!sub_1DD0DEB3C())
  {
    return 0;
  }

LABEL_3:
  if (a2(v5) == 1)
  {
    a3(0, (v5 & 0xC000000000000001) == 0, v5);
    if ((v5 & 0xC000000000000001) != 0)
    {
      return MEMORY[0x1E12A72C0](0, v5);
    }

    else
    {
      return *(v5 + 32);
    }
  }

  else
  {
  }

  return v5;
}

void *sub_1DCF96688(uint64_t a1)
{
  sub_1DCB17CA0(a1, v9);
  type metadata accessor for SiriKitAceViewBuilder();
  swift_allocObject();
  v1 = v10;
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2, v2);
  (*(v5 + 16))(&v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_17_1();
  v6 = sub_1DCF97FA8();
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return v6;
}

void sub_1DCF967AC()
{
  OUTLINED_FUNCTION_58_1();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  sub_1DCB4E718(v0);
  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  sub_1DD0DCF8C();
}

void sub_1DCF9683C()
{
  OUTLINED_FUNCTION_5_106();
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = OUTLINED_FUNCTION_9_74();

  sub_1DCF98548(v2, v3, v4, v5, v6, v7);
}

void SiriKitAceViewBuilder.__allocating_init()()
{
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  v0 = qword_1EDE46630;
  sub_1DCB4E718(v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  type metadata accessor for SiriKitAceViewBuilder();
  v1 = swift_allocObject();
  sub_1DCF97F3C(v0, v1);
  sub_1DD0DCF8C();
}

void sub_1DCF9691C()
{
  OUTLINED_FUNCTION_15_62();
  OUTLINED_FUNCTION_10_9();
  v3 = v1;
  MEMORY[0x1E12A6920]();
  OUTLINED_FUNCTION_10_76(*(v0 + 16));
  sub_1DCBBF95C(v2);
  OUTLINED_FUNCTION_19();
  sub_1DD0DE3AC();
  swift_endAccess();
  sub_1DD0DCF8C();
}

void sub_1DCF96994()
{
  OUTLINED_FUNCTION_10_9();

  sub_1DCBB91E0(v0);
  swift_endAccess();
  sub_1DD0DCF8C();
}

void sub_1DCF969F0(void *a1)
{
  v2 = *(v1 + 64);
  *(v1 + 64) = a1;
  v3 = a1;

  sub_1DD0DCF8C();
}

void sub_1DCF96A30()
{
  OUTLINED_FUNCTION_15_62();
  OUTLINED_FUNCTION_10_9();
  v3 = v1;
  MEMORY[0x1E12A6920]();
  OUTLINED_FUNCTION_10_76(*(v0 + 56));
  sub_1DCBBF95C(v2);
  OUTLINED_FUNCTION_19();
  sub_1DD0DE3AC();
  swift_endAccess();
  sub_1DD0DCF8C();
}

void sub_1DCF96AA8(void *a1)
{
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
  v3 = a1;

  sub_1DD0DCF8C();
}

void sub_1DCF96AE8(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (a1 >> 62)
  {
    sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);

    v5 = sub_1DD0DEE0C();

    v3 = v5;
  }

  else
  {

    sub_1DD0DF0CC();
    sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);
  }

  OUTLINED_FUNCTION_13_70();
  v4 = *(v2 + 56);
  *(v2 + 56) = v3;

  sub_1DD0DCF8C();
}

void sub_1DCF96BB8(uint64_t a1)
{
  OUTLINED_FUNCTION_13_70();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;

  sub_1DD0DCF8C();
}

void sub_1DCF96C10()
{
  OUTLINED_FUNCTION_15_62();
  OUTLINED_FUNCTION_10_9();
  v3 = v1;
  MEMORY[0x1E12A6920]();
  OUTLINED_FUNCTION_10_76(*(v0 + 24));
  sub_1DCBBF95C(v2);
  OUTLINED_FUNCTION_19();
  sub_1DD0DE3AC();
  swift_endAccess();
  sub_1DD0DCF8C();
}

void sub_1DCF96C88(uint64_t a1)
{
  OUTLINED_FUNCTION_13_70();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;

  sub_1DD0DCF8C();
}

void sub_1DCF96CE0()
{
  OUTLINED_FUNCTION_15_62();
  OUTLINED_FUNCTION_10_9();
  v3 = v1;
  MEMORY[0x1E12A6920]();
  OUTLINED_FUNCTION_10_76(*(v0 + 32));
  sub_1DCBBF95C(v2);
  OUTLINED_FUNCTION_19();
  sub_1DD0DE3AC();
  swift_endAccess();
  sub_1DD0DCF8C();
}

void sub_1DCF96D58()
{
  OUTLINED_FUNCTION_58_1();
  swift_getObjectType();
  v2 = OUTLINED_FUNCTION_19();

  sub_1DCF97914(v2, v3, v0, v1);
}

void sub_1DCF96DA8()
{
  OUTLINED_FUNCTION_58_1();
  swift_getObjectType();
  v2 = OUTLINED_FUNCTION_19();

  sub_1DCF97A18(v2, v3, v0, v1);
}

uint64_t sub_1DCF96DF8()
{
  v1 = v0;
  v2 = sub_1DD0DB04C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7CC0];
  v80 = MEMORY[0x1E69E7CC0];
  v9 = *(v0 + 96);
  v10 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_1((v0 + 72), v9);
  if ((*(v10 + 40))(v9, v10))
  {
    OUTLINED_FUNCTION_156();
    v11 = *(v0 + 32);

    v13 = sub_1DCF965C0(v12, sub_1DCB08B14, sub_1DCB35460);
    v15 = v14;

    if (v15)
    {
      if (v15 != 1)
      {
        OUTLINED_FUNCTION_7_72();
        OUTLINED_FUNCTION_14_59();

        sub_1DCC341E0(v64);
        OUTLINED_FUNCTION_6_73();

        sub_1DCBB95CC(v13);
        goto LABEL_48;
      }

      v16 = [objc_allocWithZone(MEMORY[0x1E69C7B58]) init];
      sub_1DD0DB03C();
      v17 = sub_1DD0DAFFC();
      v19 = v18;
      (*(v3 + 8))(v7, v2);
      sub_1DCB4D8E8(v17, v19, v16);

      v20 = sub_1DCB08B14(v13);
      if (!v20)
      {
        sub_1DCF98814(v13, 1);
        v32 = MEMORY[0x1E69E7CC0];
        goto LABEL_44;
      }

      v21 = v20;
      v76 = v16;
      v79 = v8;
      sub_1DD0DED0C();
      if ((v21 & 0x8000000000000000) == 0)
      {
        v22 = 0;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x1E12A72C0](v22, v13);
          }

          else
          {
            v23 = *(v13 + 8 * v22 + 32);
          }

          v24 = v23;
          v25 = [objc_allocWithZone(MEMORY[0x1E69C7B70]) init];
          sub_1DCB35468(v24, &selRef_text);
          if (v26)
          {
            v27 = sub_1DD0DDF8C();
          }

          else
          {
            v27 = 0;
          }

          [v25 setTitle_];

          sub_1DCB35468(v24, &selRef_secondaryText);
          if (v28)
          {
            v29 = sub_1DD0DDF8C();
          }

          else
          {
            v29 = 0;
          }

          [v25 setLabel_];

          if (sub_1DCF978A8(v24))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA1C80, &qword_1DD0E1D90);
            v30 = sub_1DD0DE2DC();
          }

          else
          {
            v30 = 0;
          }

          v22 = v22 + 1;
          [v25 setCommands_];

          sub_1DD0DECDC();
          v31 = *(v79 + 16);
          sub_1DD0DED1C();
          sub_1DD0DED2C();
          sub_1DD0DECEC();
        }

        while (v21 != v22);
        sub_1DCF98814(v13, 1);
        v32 = v79;
        v8 = MEMORY[0x1E69E7CC0];
        v16 = v76;
LABEL_44:
        sub_1DCC363A4(v32, v16);
        v52 = v16;
        MEMORY[0x1E12A6920]();
        OUTLINED_FUNCTION_3_116();
        if (!v34)
        {
LABEL_45:
          OUTLINED_FUNCTION_17_1();
          sub_1DD0DE3AC();
          OUTLINED_FUNCTION_7_72();
          v65 = *(v1 + 5);

          v13 = sub_1DCC341E0(v66);

          sub_1DCBB95CC(v13);

          goto LABEL_48;
        }

LABEL_63:
        OUTLINED_FUNCTION_0_117();
        goto LABEL_45;
      }

      __break(1u);
    }

    else
    {
      v21 = [objc_allocWithZone(MEMORY[0x1E69C7B50]) init];
      sub_1DD0DB03C();
      v48 = sub_1DD0DAFFC();
      v8 = v49;
      (*(v3 + 8))(v7, v2);
      sub_1DCB4D8E8(v48, v8, v21);

      [v21 setButtonView_];
      OUTLINED_FUNCTION_7_72();
      v50 = OUTLINED_FUNCTION_14_59();
      if (!sub_1DCB08B14(v50))
      {
LABEL_34:
        v52 = v21;
        MEMORY[0x1E12A6920]();
        if (*(v80 + 16) >= *(v80 + 24) >> 1)
        {
          sub_1DD0DE33C();
        }

        sub_1DD0DE3AC();
        v53 = *(v1 + 5);

        sub_1DCE1871C(1, v53);
        v57 = v56 >> 1;
        v58 = (v56 >> 1) - v55;
        if (!__OFSUB__(v56 >> 1, v55))
        {
          if (v58)
          {
            v59 = v54;
            v8 = v55;
            v78 = MEMORY[0x1E69E7CC0];
            result = sub_1DD0DED0C();
            if (v58 < 0)
            {
              __break(1u);
              return result;
            }

            while (v8 < v57)
            {
              v61 = *(v59 + 8 * v8);
              sub_1DD0DECDC();
              v62 = *(v78 + 16);
              sub_1DD0DED1C();
              sub_1DD0DED2C();
              sub_1DD0DECEC();
              if (v57 == ++v8)
              {
                swift_unknownObjectRelease();
                v63 = v78;
                goto LABEL_47;
              }
            }

LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          swift_unknownObjectRelease();
          v63 = MEMORY[0x1E69E7CC0];
LABEL_47:
          sub_1DCBB95CC(v63);

          sub_1DCF98814(v13, 0);
          v8 = MEMORY[0x1E69E7CC0];
LABEL_48:
          OUTLINED_FUNCTION_156();
          v67 = *(v1 + 2);

          sub_1DCC341F4(v68);
          OUTLINED_FUNCTION_6_73();

          sub_1DCBB95CC(v13);
          v69 = *(v1 + 6);
          MEMORY[0x1E12A6920]();
          OUTLINED_FUNCTION_3_116();
          if (!v34)
          {
LABEL_49:
            OUTLINED_FUNCTION_17_1();
            sub_1DD0DE3AC();
            OUTLINED_FUNCTION_156();
            v70 = *(v1 + 7);

            v36 = sub_1DCC34354(v71);
LABEL_50:
            v1 = v36;

            sub_1DCBB95CC(v1);
            goto LABEL_51;
          }

LABEL_61:
          OUTLINED_FUNCTION_0_117();
          goto LABEL_49;
        }

        __break(1u);
        goto LABEL_63;
      }

      sub_1DCB35460(0, (v7 & 0xC000000000000001) == 0, v7);
      if ((v7 & 0xC000000000000001) == 0)
      {
        v51 = *(v7 + 4);
LABEL_33:
        [v21 setUtteranceView_];

        goto LABEL_34;
      }
    }

    v51 = MEMORY[0x1E12A72C0](0, v7);

    goto LABEL_33;
  }

  if (sub_1DCF976D4())
  {
    v33 = *(v0 + 48);
    MEMORY[0x1E12A6920]();
    OUTLINED_FUNCTION_3_116();
    if (v34)
    {
      OUTLINED_FUNCTION_0_117();
    }

    OUTLINED_FUNCTION_17_1();
    sub_1DD0DE3AC();
    OUTLINED_FUNCTION_156();
    OUTLINED_FUNCTION_14_59();

    v36 = sub_1DCC341E0(v35);
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_14_59();

  sub_1DCC341E0(v37);
  OUTLINED_FUNCTION_6_73();

  sub_1DCBB95CC(v9);
  OUTLINED_FUNCTION_156();
  v38 = *(v0 + 16);

  sub_1DCC341F4(v39);
  OUTLINED_FUNCTION_6_73();

  sub_1DCBB95CC(v9);
  OUTLINED_FUNCTION_156();
  v40 = *(v0 + 24);

  sub_1DCC34368(v41);
  OUTLINED_FUNCTION_6_73();

  sub_1DCBB95CC(v9);
  OUTLINED_FUNCTION_156();
  v42 = *(v0 + 32);

  sub_1DCC3437C(v43);
  OUTLINED_FUNCTION_6_73();

  sub_1DCBB95CC(v9);
  v44 = *(v0 + 48);
  MEMORY[0x1E12A6920]();
  OUTLINED_FUNCTION_3_116();
  if (v34)
  {
    OUTLINED_FUNCTION_0_117();
  }

  OUTLINED_FUNCTION_17_1();
  sub_1DD0DE3AC();
  OUTLINED_FUNCTION_156();
  v45 = *(v0 + 56);

  sub_1DCC34354(v46);
  OUTLINED_FUNCTION_6_73();

  sub_1DCBB95CC(v9);
  v47 = *(v0 + 64);
  MEMORY[0x1E12A6920]();
  v1 = *(v80 + 16);
  if (v1 >= *(v80 + 24) >> 1)
  {
    sub_1DD0DE33C();
  }

  sub_1DD0DE3AC();
LABEL_51:
  v72 = 0;
  v73 = v80;
  v77 = v8;
  v74 = *(v80 + 16);
  while (v74 != v72)
  {
    if (v72 >= *(v73 + 16))
    {
      __break(1u);
      goto LABEL_60;
    }

    v75 = *(v73 + 8 * v72++ + 32);
    if (v75)
    {
      v1 = v75;
      MEMORY[0x1E12A6920]();
      if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        OUTLINED_FUNCTION_0_117();
      }

      OUTLINED_FUNCTION_19();
      sub_1DD0DE3AC();
      v8 = v77;
    }
  }

  return v8;
}

uint64_t sub_1DCF976D4()
{
  v1 = v0[12];
  v2 = v0[13];
  __swift_project_boxed_opaque_existential_1(v0 + 9, v1);
  if (((*(v2 + 32))(v1, v2) & 1) == 0)
  {
    return 0;
  }

  v3 = v0[6];
  if (!v3)
  {
    return 0;
  }

  result = sub_1DCF97830(v3);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = sub_1DCB08B14(result);

  if (!v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_156();
  result = sub_1DCB08B14(v0[5]);
  if (result)
  {
    OUTLINED_FUNCTION_156();
    return sub_1DCB08B14(v0[2]) == 0;
  }

  return result;
}

uint64_t SiriKitAceViewBuilder.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  return v0;
}

uint64_t SiriKitAceViewBuilder.__deallocating_deinit()
{
  SiriKitAceViewBuilder.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF97830(void *a1)
{
  v2 = [a1 items];

  if (!v2)
  {
    return 0;
  }

  sub_1DCB10E5C(0, &qword_1ECCAB500, 0x1E69C7B70);
  v3 = sub_1DD0DE2EC();

  return v3;
}

uint64_t sub_1DCF978A8(void *a1)
{
  v1 = [a1 commands];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA1C80, &qword_1DD0E1D90);
  v3 = sub_1DD0DE2EC();

  return v3;
}

void sub_1DCF97914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = a4[12];
  v9 = a4[13];
  __swift_project_boxed_opaque_existential_1(a4 + 9, v8);
  if ((*(v9 + 16))(v8, v9))
  {
    sub_1DCF97A18(a1, a2, a3, a4);
  }

  type metadata accessor for SiriKitAceViewBuilder();
  sub_1DCF97B6C(a3, a1, a2);
  v10 = OUTLINED_FUNCTION_10_9();
  MEMORY[0x1E12A6920](v10);
  OUTLINED_FUNCTION_10_76(a4[4]);
  sub_1DCBBF95C(a2);
  OUTLINED_FUNCTION_19();
  sub_1DD0DE3AC();
  swift_endAccess();
  sub_1DD0DCF8C();
}

void sub_1DCF97A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SiriKitAceViewBuilder();
  sub_1DCF97DAC(a3, a1, a2);
  v8 = OUTLINED_FUNCTION_10_9();
  MEMORY[0x1E12A6920](v8);
  OUTLINED_FUNCTION_10_76(*(a4 + 24));
  sub_1DCBBF95C(a2);
  OUTLINED_FUNCTION_17_1();
  sub_1DD0DE3AC();
  swift_endAccess();
  sub_1DD0DCF8C();
}

id sub_1DCF97AC4()
{
  OUTLINED_FUNCTION_5_106();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DD0E15D0;
  *(v3 + 32) = v2;
  v4 = objc_allocWithZone(MEMORY[0x1E69C7B10]);
  v5 = v2;
  v6 = [v4 init];
  sub_1DCB72D80(v1, v0, v6);
  v7 = OUTLINED_FUNCTION_19();
  sub_1DCC9DC0C(v7, v8);
  return v6;
}

id sub_1DCF97B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DD0E15D0;
  *(v6 + 32) = a1;
  v7 = objc_allocWithZone(MEMORY[0x1E69C7B10]);
  swift_unknownObjectRetain();
  v8 = [v7 init];
  sub_1DCB72D80(a2, a3, v8);
  sub_1DCC9DC0C(v6, v8);
  return v8;
}

id sub_1DCF97C28(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD0E15D0;
  *(v4 + 32) = a1;
  v5 = objc_allocWithZone(MEMORY[0x1E69C7A18]);
  v6 = a1;
  v7 = [v5 init];
  sub_1DCFA3860(v4, v7);
  v8 = [objc_allocWithZone(MEMORY[0x1E69C7A08]) init];
  [v8 setCentered_];
  v9 = [objc_allocWithZone(MEMORY[0x1E69C7B38]) init];
  v10 = OUTLINED_FUNCTION_19();
  sub_1DCB72D80(v10, v11, v9);
  [v8 setDecoratedLabel_];
  [v8 setAction_];
  v12 = [objc_allocWithZone(MEMORY[0x1E69C7A20]) init];
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DD0E15D0;
  *(v13 + 32) = v8;
  v14 = v8;
  v15 = OUTLINED_FUNCTION_6_73();
  sub_1DCFA387C(v15, v12);

  return v12;
}

id sub_1DCF97DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DD0E15D0;
  *(v6 + 32) = a1;
  v7 = objc_allocWithZone(MEMORY[0x1E69C7A18]);
  swift_unknownObjectRetain();
  v8 = [v7 init];
  sub_1DCFA3860(v6, v8);
  v9 = [objc_allocWithZone(MEMORY[0x1E69C7A08]) init];
  [v9 setCentered_];
  v10 = [objc_allocWithZone(MEMORY[0x1E69C7B38]) init];
  sub_1DCB72D80(a2, a3, v10);
  [v9 setDecoratedLabel_];
  [v9 setAction_];
  v11 = [objc_allocWithZone(MEMORY[0x1E69C7A20]) init];
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DD0E15D0;
  *(v12 + 32) = v9;
  v13 = v9;
  sub_1DCFA387C(v12, v11);

  return v11;
}

void *sub_1DCF97F3C(uint64_t a1, void *a2)
{
  v7 = type metadata accessor for RefreshableDeviceState();
  v8 = &protocol witness table for RefreshableDeviceState;
  *&v6 = a1;
  v4 = MEMORY[0x1E69E7CC0];
  a2[2] = MEMORY[0x1E69E7CC0];
  a2[3] = v4;
  a2[4] = v4;
  a2[5] = v4;
  a2[6] = 0;
  a2[7] = v4;
  a2[8] = 0;
  sub_1DCB18FF0(&v6, (a2 + 9));
  return a2;
}

void *sub_1DCF97FA8()
{
  OUTLINED_FUNCTION_5_106();
  v9 = v3;
  v10 = v4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v8);
  (*(*(v0 - 8) + 32))(boxed_opaque_existential_1Tm, v2, v0);
  v6 = MEMORY[0x1E69E7CC0];
  v1[2] = MEMORY[0x1E69E7CC0];
  v1[3] = v6;
  v1[4] = v6;
  v1[5] = v6;
  v1[6] = 0;
  v1[7] = v6;
  v1[8] = 0;
  sub_1DCB18FF0(&v8, (v1 + 9));
  return v1;
}

void sub_1DCF9803C(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4[3];
  v8 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v7);
  if ((*(v8 + 16))(v7, v8))
  {
    sub_1DCB17CA0(a4, v20);
    type metadata accessor for SiriKitAceViewBuilder();
    swift_allocObject();
    v9 = v21;
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v11 = *(*(v9 - 8) + 64);
    MEMORY[0x1EEE9AC00](v10, v10);
    (*(v13 + 16))(&v20[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_1DCF97FA8();
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    sub_1DCF97C28(a1, a2);
    sub_1DCF96C10();
  }

  sub_1DCB17CA0(a4, v20);
  type metadata accessor for SiriKitAceViewBuilder();
  swift_allocObject();
  v14 = v21;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15, v15);
  (*(v18 + 16))(&v20[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DCF97FA8();
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  sub_1DCF97AC4();
  sub_1DCF96CE0();
}

void sub_1DCF982BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *a4;
  v6 = &protocol witness table for RefreshableDeviceState;
  v4 = a4;
  sub_1DD0DCF8C();
}

void sub_1DCF98548(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[3] = a5;
  v24[4] = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v24);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1Tm, a4, a5);
  if ((*(a6 + 16))(a5, a6))
  {
    sub_1DCB17CA0(v24, v22);
    type metadata accessor for SiriKitAceViewBuilder();
    swift_allocObject();
    v12 = v23;
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    v14 = *(*(v12 - 8) + 64);
    MEMORY[0x1EEE9AC00](v13, v13);
    (*(v16 + 16))(v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_1DCF97FA8();
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    sub_1DCF97C28(a1, a2);
    sub_1DCF96C10();
  }

  sub_1DCB17CA0(v24, v22);
  type metadata accessor for SiriKitAceViewBuilder();
  swift_allocObject();
  v17 = v23;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18, v18);
  (*(v21 + 16))(v22 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DCF97FA8();
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  sub_1DCF97AC4();
  sub_1DCF96CE0();
}

void sub_1DCF98814(id a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

uint64_t dispatch thunk of static SiriKitAceViewBuilder.makeBuilderFromLaunchAppCommand(launchAppCommand:buttonLabel:deviceState:)()
{
  return (*(v0 + 160))();
}

{
  return (*(v0 + 168))();
}

void sub_1DCF98AD4(uint64_t a1@<X8>)
{
  v4 = *(v1 + 256);
  v3 = *(v1 + 264);
  v5 = *(v1 + 272);
  if (v5 == 3)
  {
    *a1 = v4;
    *(a1 + 8) = v3 & 1 | 0x40;

    v8 = v4;
  }

  else
  {
    if (v5 != 4)
    {
      goto LABEL_6;
    }

    if (!(v4 ^ 2 | v3))
    {
      v9 = *__swift_project_boxed_opaque_existential_1((v1 + 216), *(v1 + 240));
      sub_1DCC56B70();
    }

    if (v4 ^ 3 | v3)
    {
LABEL_6:
      sub_1DCF9D570();
      v6 = swift_allocError();
      *v7 = v4;
      *(v7 + 8) = v3;
      *(v7 + 16) = v5;
      *a1 = v6;
      *(a1 + 8) = 64;

      sub_1DCF9D0F0(v4, v3, v5);
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0x80;
    }
  }
}

void sub_1DCF98CFC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_project_boxed_opaque_existential_1((v3 + 216), *(v3 + 240));
  v10 = *(*v8 + 64);
  v9 = *(*v8 + 72);
  v11 = sub_1DCF997A4(a1, a2, a3);
  v13 = v12;
  if (v11 == sub_1DCF997A4(*(v4 + 256), *(v4 + 264), *(v4 + 272)) && v13 == v14)
  {
  }

  else
  {
    v16 = sub_1DD0DF0AC();

    if ((v16 & 1) == 0)
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v17 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v17, qword_1EDE57E00);

      sub_1DD0DCF8C();
    }
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v18 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v18, qword_1EDE57E00);

  sub_1DD0DCF8C();
}

unint64_t sub_1DCF997A4(uint64_t a1, uint64_t a2, char a3)
{
  result = 0x726F7272652ELL;
  switch(a3)
  {
    case 1:
      result = 0xD00000000000001CLL;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      return result;
    case 4:
      result = 0x6F4679646165722ELL;
      switch(a1)
      {
        case 1:
          return result;
        case 2:
          result = 0x74656C706D6F632ELL;
          break;
        case 3:
          result = 0x6C6C65636E61632ELL;
          break;
        default:
          result = 0xD000000000000012;
          break;
      }

      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1DCF998D4(void *a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 256);
  v5 = *(v3 + 264);
  *(v3 + 256) = a1;
  *(v3 + 264) = a2;
  v6 = *(v3 + 272);
  *(v3 + 272) = a3;
  sub_1DCF9D0F0(a1, a2, a3);
  sub_1DCF98CFC(v4, v5, v6);
}

uint64_t sub_1DCF99964()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_12_42(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    _os_log_impl(&dword_1DCAFC000, v2, v3, "The synchronous version of on was called. Unexpected...", v0, 2u);
    OUTLINED_FUNCTION_62();
  }

  return 0;
}

uint64_t sub_1DCF99A0C()
{
  OUTLINED_FUNCTION_42();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  v3 = *(*(type metadata accessor for Input(0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCF99AC4()
{
  v46 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = v0[6];
  v3 = v0[2];
  v4 = sub_1DD0DD8FC();
  v0[7] = __swift_project_value_buffer(v4, qword_1EDE57E00);
  sub_1DCC174D4(v3, v2);
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[6];
  if (v7)
  {
    v9 = v0[4];
    v1 = OUTLINED_FUNCTION_83();
    v45 = swift_slowAlloc();
    *v1 = 136315650;
    v10 = sub_1DD0DF2AC();
    v12 = sub_1DCB10E9C(v10, v11, &v45);

    *(v1 + 4) = v12;
    *(v1 + 12) = 2080;
    *(v1 + 14) = sub_1DCB10E9C(0x28636E7973416E6FLL, 0xEF293A7475706E69, &v45);
    *(v1 + 22) = 2080;
    v13 = Input.description.getter();
    v15 = v14;
    OUTLINED_FUNCTION_1_126();
    v16 = sub_1DCB10E9C(v13, v15, &v45);

    *(v1 + 24) = v16;
    _os_log_impl(&dword_1DCAFC000, v5, v6, "%s %s: %s", v1, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {

    OUTLINED_FUNCTION_1_126();
  }

  v17 = v0[3];
  if (*(v17 + 272) != 4)
  {
    goto LABEL_12;
  }

  v18 = *(v17 + 256);
  v19 = *(v17 + 264);
  if (v18 != 1 || v19 != 0)
  {
    if (!(v19 | v18))
    {
      sub_1DCC174D4(v0[2], v0[5]);
      v35 = sub_1DD0DD8EC();
      v36 = sub_1DD0DE6DC();
      v37 = OUTLINED_FUNCTION_12_42(v36);
      v38 = v0[5];
      if (v37)
      {
        OUTLINED_FUNCTION_151();
        OUTLINED_FUNCTION_52_0();
        OUTLINED_FUNCTION_93();
        *v1 = 136315138;
        v39 = Input.description.getter();
        v41 = v40;
        OUTLINED_FUNCTION_1_126();
        v42 = sub_1DCB10E9C(v39, v41, &v45);

        *(v1 + 4) = v42;
        OUTLINED_FUNCTION_88(&dword_1DCAFC000, v43, v44, "AuthoredFlow accepting input %s as it has not started execution and may have been pushed as the first Flow on the Runtime. If this is not desired please investigate why this input was sent to the AuthoredFlow");
        OUTLINED_FUNCTION_60_0();
        OUTLINED_FUNCTION_92_0();
      }

      else
      {

        OUTLINED_FUNCTION_1_126();
      }

      goto LABEL_15;
    }

LABEL_12:
    v21 = sub_1DD0DD8EC();
    v22 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v22))
    {
      v23 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v23);
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v24, v25, "Received input but we are not in the expected state. Ignoring...");
      OUTLINED_FUNCTION_62();
    }

LABEL_15:
    v27 = v0[5];
    v26 = v0[6];

    OUTLINED_FUNCTION_129();
    OUTLINED_FUNCTION_96_0();

    __asm { BRAA            X2, X16 }
  }

  v30 = *__swift_project_boxed_opaque_existential_1((v17 + 216), *(v17 + 240));
  v31 = swift_task_alloc();
  v0[8] = v31;
  *v31 = v0;
  v31[1] = sub_1DCF99E58;
  v32 = v0[2];
  OUTLINED_FUNCTION_96_0();

  return sub_1DCC538AC();
}

uint64_t sub_1DCF99E58()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 64);
  *v2 = *v0;
  *(v1 + 72) = v5;
  *(v1 + 80) = v6;

  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF99F40()
{
  OUTLINED_FUNCTION_33();
  v2 = v1[9];
  v3 = v1[7];
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();
  v6 = os_log_type_enabled(v4, v5);
  if (v2)
  {
    if (v6)
    {
      v7 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v7);
      _os_log_impl(&dword_1DCAFC000, v4, v5, "Parser indicates that it will produce an event for the current input. Will process input.", v0, 2u);
      OUTLINED_FUNCTION_62();
    }

    v9 = v1[9];
    v8 = v1[10];
    v10 = v1[3];

    sub_1DCB02C48(v9);
    sub_1DCF998D4(v9, v8, 0);
  }

  if (v6)
  {
    v11 = OUTLINED_FUNCTION_50_0();
    *v11 = 0;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "Received input that we cannot process. Ignoring...", v11, 2u);
    OUTLINED_FUNCTION_80();
  }

  v13 = v1[5];
  v12 = v1[6];

  v14 = OUTLINED_FUNCTION_129();

  return v15(v14);
}

uint64_t sub_1DCF9A090()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v1[6] = v2;
  v1[7] = v0;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v1[8] = v4;
  *v4 = v5;
  v4[1] = sub_1DCF9A124;

  return sub_1DCF9A538(v3);
}

uint64_t sub_1DCF9A124()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DCF9A238()
{
  v23 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[9];
  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_33_25(4.8149e-34);
    v8 = v0[2];
    v7 = v0[3];
    v9 = v0[4];
    v10 = sub_1DD0DF18C();
    v12 = sub_1DCB10E9C(v10, v11, &v22);

    *(v1 + 4) = v12;
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v13, v14, "Unexpected error while executing: %s");
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_92_0();
  }

  v0[10] = sub_1DD0DDE9C();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[11] = v15;
  *v15 = v16;
  v15[1] = sub_1DCF9A3E0;
  v17 = v0[9];
  v18 = v0[6];
  v19 = v0[7];
  OUTLINED_FUNCTION_48();

  return sub_1DCF9BA48();
}

uint64_t sub_1DCF9A3E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF9A4E0()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCF9A538(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  v2[40] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCF9A578);
}

uint64_t sub_1DCF9A578()
{
  v29 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_12_42(v3))
  {
    v4 = v0[40];
    v5 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = sub_1DD0DF2AC();
    v8 = sub_1DCB10E9C(v6, v7, v28);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_1DCB10E9C(0xD000000000000013, 0x80000001DD1268B0, v28);
    _os_log_impl(&dword_1DCAFC000, v2, v3, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_62();
  }

  v9 = v0[39];
  v10 = *(v9 + 256);
  v0[41] = v10;
  v11 = *(v9 + 264);
  v0[42] = v11;
  switch(*(v9 + 272))
  {
    case 1:
      OUTLINED_FUNCTION_36_38();

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[46] = v16;
      *v16 = v17;
      v16[1] = sub_1DCF9ADA8;
      OUTLINED_FUNCTION_96_0();

      return sub_1DCC54C64();
    case 2:
      goto LABEL_12;
    case 3:
      if (v11)
      {
        goto LABEL_14;
      }

      v19 = v10;
      v20 = sub_1DD0DD8EC();
      v21 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v21))
      {
        v22 = OUTLINED_FUNCTION_50_0();
        *v22 = 0;
        _os_log_impl(&dword_1DCAFC000, v20, v9, "Attempting to handle error with generic dialog.", v22, 2u);
        OUTLINED_FUNCTION_92_0();
      }

      v0[52] = sub_1DD0DDE9C();
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[53] = v23;
      *v23 = v24;
      v23[1] = sub_1DCF9B390;
      v25 = v0[38];
      v26 = v0[39];
      OUTLINED_FUNCTION_96_0();

      result = sub_1DCF9BA48();
      break;
    case 4:
      if (__PAIR128__((v10 >= 2) + v11 - 1, v10 - 2) < 2)
      {
LABEL_14:
        sub_1DD0DCF8C();
      }

      if (v10 | v11)
      {
LABEL_12:
        sub_1DD0DCF8C();
      }

      OUTLINED_FUNCTION_36_38();
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[49] = v12;
      *v12 = v13;
      v12[1] = sub_1DCF9B030;
      OUTLINED_FUNCTION_96_0();

      result = sub_1DCC530C0();
      break;
    default:
      OUTLINED_FUNCTION_36_38();
      sub_1DD0DCF8C();
  }

  return result;
}

uint64_t sub_1DCF9AB5C()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  v4 = v1[43];
  v5 = *v0;
  *v3 = *v0;

  v6 = swift_task_alloc();
  v2[44] = v6;
  *v6 = v5;
  v6[1] = sub_1DCF9ACB0;
  v7 = v1[39];
  v8 = v1[38];

  return sub_1DCF9C1A8(v8, (v2 + 14));
}

uint64_t sub_1DCF9ACB0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 352);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 360) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCF9ADA8()
{
  OUTLINED_FUNCTION_33();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  v4 = v1[46];
  v5 = v1[42];
  v6 = v1[41];
  v7 = *v0;
  *v3 = *v0;

  v8 = swift_task_alloc();
  v2[47] = v8;
  *v8 = v7;
  v8[1] = sub_1DCF9AF38;
  v9 = v1[39];
  v10 = v1[38];

  return sub_1DCF9C1A8(v10, (v2 + 2));
}

uint64_t sub_1DCF9AF38()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 376);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 384) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCF9B030()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  v4 = v1[49];
  v5 = *v0;
  *v3 = *v0;

  v6 = swift_task_alloc();
  v2[50] = v6;
  *v6 = v5;
  v6[1] = sub_1DCF9B184;
  v7 = v1[39];
  v8 = v1[38];

  return sub_1DCF9C1A8(v8, (v2 + 26));
}

uint64_t sub_1DCF9B184()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 400);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 408) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCF9B27C()
{
  OUTLINED_FUNCTION_42();
  sub_1DCC5BF24(v0 + 208);
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1DCF9B2D4()
{
  OUTLINED_FUNCTION_42();
  sub_1DCF9D1B0(*(v0 + 328), *(v0 + 336), 0);
  sub_1DCC5BF24(v0 + 112);
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1DCF9B338()
{
  OUTLINED_FUNCTION_42();
  sub_1DCC5BF24(v0 + 16);
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1DCF9B390()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 424);
  v3 = *(v1 + 416);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF9B490()
{
  OUTLINED_FUNCTION_42();
  sub_1DCF9D1B0(*(v0 + 328), *(v0 + 336), 3);
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1DCF9B4EC()
{
  OUTLINED_FUNCTION_42();
  sub_1DCC5BF24(v0 + 208);
  v1 = *(v0 + 408);
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCF9B548()
{
  OUTLINED_FUNCTION_42();
  sub_1DCF9D1B0(*(v0 + 328), *(v0 + 336), 0);
  sub_1DCC5BF24(v0 + 112);
  v1 = *(v0 + 360);
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCF9B5B0()
{
  OUTLINED_FUNCTION_42();
  sub_1DCC5BF24(v0 + 16);
  v1 = *(v0 + 384);
  OUTLINED_FUNCTION_29();

  return v2();
}

void sub_1DCF9B60C(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v4 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_50_0();
    *v7 = 0;
    _os_log_impl(&dword_1DCAFC000, v5, v6, "Authored Flow received response from child flow", v7, 2u);
    OUTLINED_FUNCTION_80();
  }

  if (*(v1 + 272) == 2)
  {
    if (v3 >> 6)
    {
      if (v3 >> 6 == 1)
      {
        sub_1DCC5F868(v2, v3);
        v8 = sub_1DD0DD8EC();
        v9 = sub_1DD0DE6DC();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = OUTLINED_FUNCTION_151();
          v11 = OUTLINED_FUNCTION_83();
          v27 = v11;
          *v10 = 136315138;
          swift_getErrorValue();
          v12 = sub_1DD0DF18C();
          v14 = sub_1DCB10E9C(v12, v13, &v27);

          *(v10 + 4) = v14;
          _os_log_impl(&dword_1DCAFC000, v8, v9, "Child flow encountered an error: %s", v10, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v11);
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_80();
        }

        sub_1DCC5F868(v2, v3);
        sub_1DCF998D4(v2, v3 & 1, 3);
      }

      v24 = sub_1DD0DD8EC();
      v25 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = OUTLINED_FUNCTION_50_0();
        *v26 = 0;
        _os_log_impl(&dword_1DCAFC000, v24, v25, "Child flow indicated user cancelled prompt.", v26, 2u);
        OUTLINED_FUNCTION_80();
      }

      OUTLINED_FUNCTION_29_33();
    }

    else
    {
      v15 = *(v1 + 256);

      v16 = sub_1DD0DD8EC();
      v17 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = OUTLINED_FUNCTION_50_0();
        *v18 = 0;
        _os_log_impl(&dword_1DCAFC000, v16, v17, "Received a Dictionary of values from the Prompt Flow. Setting variableNames based on key names.", v18, 2u);
        OUTLINED_FUNCTION_80();
      }

      v27 = v2;
      v28 = v3;
      v19 = sub_1DD0DDE9C();
      v20 = AuthoredValueProvidingResult.extractVariables(variableNameMap:)(v19);

      v21 = v20;
      v22 = v15;
      v23 = 1;
    }

    sub_1DCF998D4(v21, v22, v23);
  }

  sub_1DD0DCF8C();
}

uint64_t sub_1DCF9BA48()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  *(v1 + 144) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  v6 = sub_1DD0DB04C();
  *(v1 + 80) = v6;
  v7 = *(v6 - 8);
  *(v1 + 88) = v7;
  v8 = *(v7 + 64) + 15;
  *(v1 + 96) = swift_task_alloc();
  v9 = type metadata accessor for OutputGenerationManifest();
  *(v1 + 104) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v1 + 112) = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCF9BB34()
{
  OUTLINED_FUNCTION_42();
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 72) + 136), *(*(v0 + 72) + 160));
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1DCF9BBDC;
  v3 = *(v0 + 64);
  v4 = *(v0 + 144);

  return sub_1DCC710FC(v4, v3);
}

uint64_t sub_1DCF9BBDC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 120);
  *v3 = *v1;
  *(v2 + 128) = v6;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCF9BCDC()
{
  v1 = v0[9];
  v29 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  if (qword_1EDE4EBE0 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v24 = v0[10];
  v25 = v0[16];
  v26 = v0[7];
  v27 = v0[9];
  v28 = v0[6];
  v6 = qword_1EDE4EBE8;
  v7 = unk_1EDE4EBF0;
  *(v3 + v2[6]) = 0;
  *(v3 + v2[7]) = 0;
  v22 = v6;
  v23 = v2[8];
  *(v3 + v2[9]) = 256;
  v21 = v2[10];
  *(v3 + v2[11]) = 0;
  v8 = v2[12];
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_34_37();
  v20 = v2[13];
  v9 = (v3 + v2[14]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v3 + v2[15]);
  *v10 = 0;
  v10[1] = 0;
  *(v3 + v2[16]) = 0;
  *(v3 + v2[18]) = 0;
  v11 = v3 + v2[19];
  *v11 = 0;
  *(v11 + 4) = 512;
  *(v3 + v2[20]) = 0;
  *(v3 + v2[21]) = 0;
  *(v3 + v2[22]) = 0;
  *(v3 + v2[23]) = 0;
  *(v3 + v2[24]) = 0;
  *(v3 + v2[25]) = 0;
  v12 = (v3 + v2[26]);
  *v12 = 0;
  v12[1] = 0;
  *(v3 + v2[27]) = 0;
  *(v3 + v2[28]) = MEMORY[0x1E69E7CC0];
  v13 = v2[29];
  v14 = *MEMORY[0x1E69D0678];
  v15 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_2(v15);
  (*(v16 + 104))(v3 + v13, v14);
  v17 = v2[30];
  v18 = sub_1DD0DD10C();
  __swift_storeEnumTagSinglePayload(v3 + v17, 1, 1, v18);
  *(v3 + v2[31]) = 2;
  *v3 = v22;
  v3[1] = v7;
  v19 = v2[5];

  sub_1DCB67914();
}

void sub_1DCF9C030()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[17];
  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_33_25(4.8149e-34);
    v8 = v0[2];
    v7 = v0[3];
    v9 = v0[4];
    v10 = sub_1DD0DF18C();
    v12 = sub_1DCB10E9C(v10, v11, &v19);

    *(v1 + 4) = v12;
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v13, v14, "Unable to generate Error response due to unexpected error: %s. Completing with unhandled error.");
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_92_0();
  }

  v15 = v0[17];
  v16 = v0[9];
  v17 = v0[6];
  v18 = v15;
  sub_1DCF998D4(v15, 0, 3);
}

uint64_t sub_1DCF9C1A8(uint64_t a1, uint64_t a2)
{
  v3[47] = a2;
  v3[48] = v2;
  v3[46] = a1;
  return OUTLINED_FUNCTION_0_12(sub_1DCF9C1C4);
}

uint64_t sub_1DCF9C1C4()
{
  v29 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = *(v0 + 376);
  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  sub_1DCC5BEEC(v1, (v0 + 16));
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_12_42(v4))
  {
    v5 = OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_93();
    *v5 = 136315138;
    v6 = sub_1DCC51DD8();
    v8 = v7;
    sub_1DCC5BF24(v0 + 16);
    v9 = sub_1DCB10E9C(v6, v8, &v28);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DCAFC000, v3, v4, "Handling next AuthoredFlowRunner action: %s", v5, 0xCu);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_62();
  }

  else
  {

    sub_1DCC5BF24(v0 + 16);
  }

  sub_1DCC5BEEC(*(v0 + 376), (v0 + 112));
  switch(*(v0 + 200))
  {
    case 1:
      v23 = *(v0 + 128);
      *(v0 + 328) = *(v0 + 112);
      *(v0 + 344) = v23;
      *(v0 + 360) = *(v0 + 144);
      v11 = swift_task_alloc();
      *(v0 + 392) = v11;
      *v11 = v0;
      v12 = sub_1DCF9C4F4;
      goto LABEL_12;
    case 2:
      v16 = *(v0 + 128);
      *(v0 + 208) = *(v0 + 112);
      *(v0 + 224) = v16;
      *(v0 + 240) = *(v0 + 144);
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 432) = v17;
      *v17 = v18;
      v17[1] = sub_1DCF9C85C;
      v19 = *(v0 + 384);
      goto LABEL_13;
    case 3:
      OUTLINED_FUNCTION_25_31();
      v20 = *(v0 + 112);
      v21 = *(v0 + 120);
      v22 = v20;
      sub_1DCF998D4(v20, v21, 3);
    case 4:
      OUTLINED_FUNCTION_25_31();
      OUTLINED_FUNCTION_29_33();
      sub_1DCF998D4(v13, v14, v15);
    default:
      *(v0 + 408) = *(v0 + 192);
      v10 = *(v0 + 128);
      *(v0 + 248) = *(v0 + 112);
      *(v0 + 264) = v10;
      *(v0 + 280) = *(v0 + 144);
      sub_1DCAFF9E8((v0 + 152), v0 + 288);
      v11 = swift_task_alloc();
      *(v0 + 416) = v11;
      *v11 = v0;
      v12 = sub_1DCF9C670;
LABEL_12:
      v11[1] = v12;
      v24 = *(v0 + 384);
LABEL_13:
      OUTLINED_FUNCTION_48();

      return sub_1DCF9CB60(v25);
  }
}

uint64_t sub_1DCF9C4F4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 392);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 400) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCF9C5EC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_25_31();
  OUTLINED_FUNCTION_29_33();
  sub_1DCF998D4(v0, v1, v2);
}

uint64_t sub_1DCF9C670()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = *(v2 + 416);
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 424) = v0;

  if (v0)
  {
    v7 = *(v3 + 408);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1DCF9C778()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 408);
  OUTLINED_FUNCTION_25_31();
  sub_1DCF998D4(v2, 0, 2);
}

uint64_t sub_1DCF9C85C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 432);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 440) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCF9C954()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_25_31();
  OUTLINED_FUNCTION_29_33();
  sub_1DCF998D4(v0, v1, v2);
}

uint64_t sub_1DCF9C9D4()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB0E9D8(v0 + 328, &qword_1ECCA1810, &dword_1DD0E0F78);
  v1 = *(v0 + 400);
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCF9CA40()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB0E9D8(v0 + 248, &qword_1ECCA1810, &dword_1DD0E0F78);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 288));
  v1 = *(v0 + 424);
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCF9CAB4()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB0E9D8(v0 + 208, &qword_1ECCA1810, &dword_1DD0E0F78);
  v1 = *(v0 + 440);
  OUTLINED_FUNCTION_29();

  return v2();
}

void sub_1DCF9CB20(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = v1;
  sub_1DCF9B60C(&v2);
}

uint64_t sub_1DCF9CB60(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCF9CB78);
}

uint64_t sub_1DCF9CB78()
{
  OUTLINED_FUNCTION_33();
  sub_1DCF9D4F8(*(v0 + 96), v0 + 56);
  if (*(v0 + 80))
  {
    sub_1DCAFF9E8((v0 + 56), v0 + 16);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v1 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
    v2 = sub_1DD0DD8EC();
    v3 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v3))
    {
      v4 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v4);
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "Output was provided. Publishing...");
      OUTLINED_FUNCTION_62();
    }

    v7 = *(v0 + 104);

    v8 = v7[15];
    v9 = v7[16];
    __swift_project_boxed_opaque_existential_1(v7 + 12, v8);
    v10 = *(v9 + 8);
    v16 = (v10 + *v10);
    v11 = v10[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 112) = v12;
    *v12 = v13;
    v12[1] = sub_1DCF9CD80;

    return v16(v0 + 16, v8, v9);
  }

  else
  {
    sub_1DCB0E9D8(v0 + 56, &qword_1ECCA1810, &dword_1DD0E0F78);
    OUTLINED_FUNCTION_43();

    return v15();
  }
}

uint64_t sub_1DCF9CD80()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCF9CE78()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1DCF9CED0()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 120);

  return v1();
}

uint64_t sub_1DCF9CF38(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
    sub_1DD0DEC1C();

    strcpy(v8, ".unsupported(");
    HIWORD(v8[1]) = -4864;
    MEMORY[0x1E12A6780](a1, a2);
  }

  else
  {
    sub_1DD0DEC1C();

    v8[0] = 0xD000000000000011;
    v8[1] = 0x80000001DD1268D0;
    v6 = sub_1DCF997A4(a1, a2, a3);
    MEMORY[0x1E12A6780](v6);
  }

  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return v8[0];
}

uint64_t sub_1DCF9D044()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
  sub_1DCF9D1B0(*(v0 + 256), *(v0 + 264), *(v0 + 272));
  return v0;
}

uint64_t sub_1DCF9D098()
{
  sub_1DCF9D044();

  return swift_deallocClassInstance();
}

id sub_1DCF9D0F0(id result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:

      sub_1DD0DCF8C();
    case 1:

      goto LABEL_6;
    case 2:
LABEL_6:

      break;
    case 3:

      result = result;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DCF9D1B0(void *a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:

      break;
    case 1:

      goto LABEL_6;
    case 2:
LABEL_6:

      break;
    case 3:

      break;
    default:
      return;
  }
}

uint64_t getEnumTagSinglePayload for SiriKitAuthoredFlow.State(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriKitAuthoredFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCF9D328(uint64_t a1)
{
  if (*(a1 + 16) <= 3u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1DCF9D340(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1DCF9D384()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB47434;

  return sub_1DCF99A0C();
}

uint64_t sub_1DCF9D440()
{
  OUTLINED_FUNCTION_42();
  v2 = *v0;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCF9A090();
}

uint64_t sub_1DCF9D4F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1810, &dword_1DD0E0F78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DCF9D570()
{
  result = qword_1ECCAB508;
  if (!qword_1ECCAB508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB508);
  }

  return result;
}

uint64_t sub_1DCF9D5C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

id sub_1DCF9D61C(void *a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  else
  {
    return sub_1DCF9D0F0(a1, a2, a3);
  }
}

void sub_1DCF9D63C(void *a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  else
  {
    sub_1DCF9D1B0(a1, a2, a3);
  }
}

uint64_t sub_1DCF9D64C(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t))
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  a4(*a2, v6, v7);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  return a1;
}

uint64_t *sub_1DCF9D6C8(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  a4(*a2, v8, v9);
  v10 = *a1;
  v11 = a1[1];
  *a1 = v7;
  a1[1] = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v9;
  a5(v10, v11, v12);
  return a1;
}

uint64_t *sub_1DCF9D74C(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2 + 16);
  v6 = *a1;
  v7 = a1[1];
  *a1 = *a2;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  a4(v6, v7, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for SiriKitAuthoredFlow.AuthoredFlowError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1F && *(a1 + 17))
    {
      v2 = *a1 + 30;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 2) & 0x1E | (*(a1 + 16) >> 7)) ^ 0x1F;
      if (v2 >= 0x1E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for SiriKitAuthoredFlow.AuthoredFlowError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1E)
  {
    *(result + 16) = 0;
    *result = a2 - 31;
    *(result + 8) = 0;
    if (a3 >= 0x1F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1DCF9D884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for SiriKitEventPayload(0);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = v31 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2278, &qword_1DD0E4830);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v24 = v31 - v23;
  (*(a7 + 32))(v33, a6, a7);
  v25 = sub_1DD0DD2FC();
  (*(*(v25 - 8) + 16))(v24, a3, v25);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v25);
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  sub_1DCE0669C(25, 10);
  sub_1DCE0669C(25, 10);
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60) + 112);
  *v19 = 25;
  *(v19 + 1) = 0x54746E6572727543;
  *(v19 + 2) = 0xEB000000006B7361;
  v19[24] = 29;
  sub_1DCB28B08(v31, (v19 + 32), &unk_1ECCA3280, &unk_1DD0E23D0);
  *(v19 + 9) = a4;
  sub_1DCB28B08(v24, &v19[v26], &qword_1ECCA2278, &qword_1DD0E4830);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SiriKitEvent(0);
  sub_1DCB22FCC(v19, v16);

  v27 = SiriKitEvent.__allocating_init(_:builder:)(v16, 0);
  sub_1DCB22AA4(v19);
  v28 = v34;
  v29 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  (*(v29 + 8))(v27, v28, v29);

  sub_1DCB16D50(v31, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB16D50(v24, &qword_1ECCA2278, &qword_1DD0E4830);
  return __swift_destroy_boxed_opaque_existential_1Tm(v33);
}

uint64_t SiriKitConfirmationState.rawValue.getter()
{
  result = 0x5445534E55;
  switch(*v0)
  {
    case 1:
      result = 0x454C4C45434E4143;
      break;
    case 2:
      result = 0x454D5249464E4F43;
      break;
    case 3:
      result = 0x44455443454A4552;
      break;
    default:
      return result;
  }

  return result;
}

SiriKitFlow::SiriKitConfirmationState_optional __swiftcall SiriKitConfirmationState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD0DEE9C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1DCF9DCE4()
{
  result = qword_1ECCAB510;
  if (!qword_1ECCAB510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB510);
  }

  return result;
}

uint64_t sub_1DCF9DD5C@<X0>(uint64_t *a1@<X8>)
{
  result = SiriKitConfirmationState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double SiriKitDisambiguationItem.__allocating_init(components:utterance:allowLineWrapForDisplayText:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  OUTLINED_FUNCTION_0_119();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 48) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = 0;
  return OUTLINED_FUNCTION_1_128(v8);
}

uint64_t SiriKitDisambiguationItemComponent.print.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t SiriKitDisambiguationItemComponent.printOnLockScreen.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t SiriKitDisambiguationItemComponent.speak.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t SiriKitDisambiguationItemComponent.speakOnLockScreen.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCF9DEB4(char a1)
{
  v2 = 16;
  if (a1)
  {
    v2 = 32;
  }

  v3 = 24;
  if (a1)
  {
    v3 = 40;
  }

  v4 = *(v1 + v2);
  v5 = *(v1 + v3);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCF9DF00(char a1)
{
  v2 = 48;
  if (a1)
  {
    v2 = 64;
  }

  v3 = 56;
  if (a1)
  {
    v3 = 72;
  }

  v4 = *(v1 + v2);
  v5 = *(v1 + v3);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCF9DF4C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SiriKitDisambiguationItemComponent.Builder();
  v4 = swift_allocObject();
  sub_1DCF9DFA8(a1, a2);

  return v4;
}

uint64_t sub_1DCF9DFA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  *(v2 + 80) = 1;
  swift_bridgeObjectRetain_n();
  return v2;
}

void sub_1DCF9DFE4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  sub_1DD0DCF8C();
}

void sub_1DCF9E02C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  sub_1DD0DCF8C();
}

void sub_1DCF9E074(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;

  sub_1DD0DCF8C();
}

void sub_1DCF9E0BC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;

  sub_1DD0DCF8C();
}

uint64_t sub_1DCF9E130()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = *(v0 + 80);
  v12 = *(v0 + 81);
  type metadata accessor for SiriKitDisambiguationItemComponent();
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = v1;
  *(v10 + 32) = v4;
  *(v10 + 40) = v3;
  *(v10 + 48) = v6;
  *(v10 + 56) = v5;
  *(v10 + 64) = v8;
  *(v10 + 72) = v7;
  *(v10 + 80) = v9;
  *(v10 + 81) = v12;

  return v10;
}

uint64_t SiriKitDisambiguationItemComponent.Builder.__deallocating_deinit()
{
  SiriKitDisambiguationItemComponent.Builder.deinit();

  return swift_deallocClassInstance();
}

void *_s11SiriKitFlow0aB27DisambiguationItemComponentC7BuilderCfd_0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return v0;
}

uint64_t ImageSize.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

uint64_t SiriKitDisambiguationItem.utterance.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_33_1();
}

void *SiriKitDisambiguationItem.directInvocation.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *SiriKitDisambiguationItem.displayImage.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t SiriKitDisambiguationItem.monogramLetters.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_33_1();
}

void SiriKitDisambiguationItem.__allocating_init(components:directInvocation:allowLineWrapForDisplayText:)(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_0_119();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = 0;
  *(v6 + 48) = a3;
  OUTLINED_FUNCTION_1_128(v6);
  *(v7 + 32) = v8;
  *(v7 + 40) = a2;
}

uint64_t SiriKitDisambiguationItem.init(components:directInvocation:allowLineWrapForDisplayText:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  *(v3 + 48) = a3;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 32) = 0xE000000000000000;
  *(v3 + 40) = a2;
  return OUTLINED_FUNCTION_96_2();
}

uint64_t SiriKitDisambiguationItem.init(components:utterance:allowLineWrapForDisplayText:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 48) = a4;
  *(v4 + 32) = a3;
  *(v4 + 40) = 0;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  return OUTLINED_FUNCTION_96_2();
}

uint64_t SiriKitDisambiguationItem.__allocating_init(components:displayImage:utterance:allowLineWrapForDisplayText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  OUTLINED_FUNCTION_0_119();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a3;
  *(result + 48) = a5;
  *(result + 32) = a4;
  *(result + 40) = 0;
  *(result + 56) = a2;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  return result;
}

uint64_t SiriKitDisambiguationItem.init(components:displayImage:utterance:allowLineWrapForDisplayText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  *(v5 + 48) = a5;
  *(v5 + 32) = a4;
  *(v5 + 40) = 0;
  *(v5 + 56) = a2;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  return OUTLINED_FUNCTION_96_2();
}

uint64_t SiriKitDisambiguationItem.__allocating_init(components:image:directInvocation:allowLineWrapForDisplayText:)(uint64_t a1, __int128 *a2, uint64_t a3, char a4)
{
  OUTLINED_FUNCTION_0_119();
  v8 = swift_allocObject();
  SiriKitDisambiguationItem.init(components:image:directInvocation:allowLineWrapForDisplayText:)(a1, a2, a3, a4);
  return v8;
}

uint64_t SiriKitDisambiguationItem.init(components:image:directInvocation:allowLineWrapForDisplayText:)(uint64_t a1, __int128 *a2, uint64_t a3, char a4)
{
  v5 = *a2;
  v6 = *(a2 + 16);
  *(v4 + 16) = a1;
  *(v4 + 24) = 0;
  *(v4 + 48) = a4;
  *(v4 + 32) = 0xE000000000000000;
  *(v4 + 40) = a3;
  switch(v6)
  {
    case 1:
      *(v4 + 80) = v5;
      *(v4 + 64) = 0;
      *(v4 + 72) = 0;
      *(v4 + 56) = 0;
      break;
    case 2:
      *(v4 + 80) = 0;
      *(v4 + 56) = 0;
      *(v4 + 64) = v5;
      break;
    case 3:
      *(v4 + 72) = 0u;
      *(v4 + 56) = 0u;
      break;
    default:
      *(v4 + 56) = v5;
      *(v4 + 72) = 0;
      *(v4 + 80) = 0;
      *(v4 + 64) = 0;
      break;
  }

  return OUTLINED_FUNCTION_96_2();
}

uint64_t SiriKitDisambiguationItem.__allocating_init(components:image:directInvocation:utterance:allowLineWrapForDisplayText:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  OUTLINED_FUNCTION_0_119();
  v12 = swift_allocObject();
  SiriKitDisambiguationItem.init(components:image:directInvocation:utterance:allowLineWrapForDisplayText:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t SiriKitDisambiguationItem.init(components:image:directInvocation:utterance:allowLineWrapForDisplayText:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = *a2;
  v8 = *(a2 + 16);
  *(v6 + 16) = a1;
  *(v6 + 24) = a4;
  *(v6 + 48) = a6;
  *(v6 + 32) = a5;
  *(v6 + 40) = a3;
  switch(v8)
  {
    case 1:
      *(v6 + 80) = v7;
      *(v6 + 64) = 0;
      *(v6 + 72) = 0;
      *(v6 + 56) = 0;
      break;
    case 2:
      *(v6 + 80) = 0;
      *(v6 + 56) = 0;
      *(v6 + 64) = v7;
      break;
    case 3:
      *(v6 + 72) = 0u;
      *(v6 + 56) = 0u;
      break;
    default:
      *(v6 + 56) = v7;
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *(v6 + 64) = 0;
      break;
  }

  return OUTLINED_FUNCTION_96_2();
}

uint64_t SiriKitDisambiguationItem.__allocating_init(components:image:utterance:allowLineWrapForDisplayText:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  OUTLINED_FUNCTION_0_119();
  v10 = swift_allocObject();
  SiriKitDisambiguationItem.init(components:image:utterance:allowLineWrapForDisplayText:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t SiriKitDisambiguationItem.init(components:image:utterance:allowLineWrapForDisplayText:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = *a2;
  v7 = *(a2 + 16);
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  *(v5 + 48) = a5;
  *(v5 + 32) = a4;
  *(v5 + 40) = 0;
  switch(v7)
  {
    case 1:
      *(v5 + 80) = v6;
      *(v5 + 64) = 0;
      *(v5 + 72) = 0;
      *(v5 + 56) = 0;
      break;
    case 2:
      *(v5 + 80) = 0;
      *(v5 + 56) = 0;
      *(v5 + 64) = v6;
      break;
    case 3:
      *(v5 + 72) = 0u;
      *(v5 + 56) = 0u;
      break;
    default:
      *(v5 + 56) = v6;
      *(v5 + 72) = 0;
      *(v5 + 80) = 0;
      *(v5 + 64) = 0;
      break;
  }

  return OUTLINED_FUNCTION_96_2();
}

double SiriKitDisambiguationItem.__allocating_init(components:optionalDisplayImage:utterance:allowLineWrapForDisplayText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  type metadata accessor for SiriKitDisambiguationItem();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 48) = a5;
  *(v10 + 40) = 0;
  if (!a2)
  {
    return OUTLINED_FUNCTION_1_128(v10);
  }

  *(v10 + 56) = a2;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 80) = 0;
  return result;
}

uint64_t sub_1DCF9E828(unint64_t a1, char a2)
{
  v2 = a1;
  if ((a2 & 1) == 0)
  {

    return v2;
  }

  if (a1 >> 62)
  {
    v3 = OUTLINED_FUNCTION_5_107();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = MEMORY[0x1E69E7CC0];
  result = sub_1DD0DED0C();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) == 0)
      {
        v6 = *(v2 + 8 * v5 + 32);
        sub_1DD0DCF8C();
      }

      MEMORY[0x1E12A72C0](v5++, v2);
      sub_1DCF9ED40();

      sub_1DD0DECDC();
      v7 = *(v8 + 16);
      sub_1DD0DED1C();
      sub_1DD0DED2C();
      sub_1DD0DECEC();
    }

    while (v3 != v5);
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DCF9E948()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = OUTLINED_FUNCTION_5_107();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 < 1)
  {
    return 0;
  }

  sub_1DCB35460(0, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) == 0)
  {
    v3 = *(v1 + 32);
    sub_1DD0DCF8C();
  }

  return MEMORY[0x1E12A72C0](0, v1);
}

uint64_t sub_1DCF9E9C0()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = OUTLINED_FUNCTION_5_107();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 < 2)
  {
    return 0;
  }

  sub_1DCB35460(1, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) == 0)
  {
    v4 = *(v1 + 40);
    sub_1DD0DCF8C();
  }

  return MEMORY[0x1E12A72C0](1, v1);
}

uint64_t sub_1DCF9EA38()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = OUTLINED_FUNCTION_5_107();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 < 3)
  {
    return 0;
  }

  sub_1DCB35460(2, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) == 0)
  {
    v4 = *(v1 + 48);
    sub_1DD0DCF8C();
  }

  return MEMORY[0x1E12A72C0](2, v1);
}

uint64_t sub_1DCF9EAB0(char a1)
{
  v3 = *(v1 + 16);
  result = sub_1DCB08B14(v3);
  v5 = result;
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {
      return 0;
    }

    if ((v3 & 0xC000000000000001) == 0)
    {
      break;
    }

    result = MEMORY[0x1E12A72C0](i, v3);
    if (__OFADD__(i, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if ((a1 & 1) != 0 && (*(result + 80) & 1) == 0)
    {
    }

    else
    {
      OUTLINED_FUNCTION_6_74();
      if (v8)
      {
        MEMORY[0x1E12A6780](0x209480E220, 0xA500000000000000);
      }

      v9 = sub_1DCF9DEB4(a1 & 1);
      MEMORY[0x1E12A6780](v9);
    }
  }

  if (i < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v3 + 8 * i + 32);
    sub_1DD0DCF8C();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1DCF9ED40()
{
  v1 = v0;
  v2 = v0[2];
  *&v20 = MEMORY[0x1E69E7CC0];
  result = sub_1DCB08B14(v2);
  v4 = result;
  for (i = 0; v4 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) == 0)
    {
      if (i < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v6 = *(v2 + 8 * i + 32);
        sub_1DD0DCF8C();
      }

      goto LABEL_17;
    }

    result = MEMORY[0x1E12A72C0](i, v2);
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    if (*(result + 80))
    {
      sub_1DD0DECDC();
      v7 = *(v20 + 16);
      sub_1DD0DED1C();
      sub_1DD0DED2C();
      result = sub_1DD0DECEC();
    }

    else
    {
    }
  }

  v8 = v20;
  v9 = v1[9];
  if (v9)
  {
    *&v20 = v1[8];
    *(&v20 + 1) = v9;
    v21 = 2;
    v10 = v1[3];
    v13 = v1 + 4;
    v11 = v1[4];
    v12 = v13[1];
    type metadata accessor for SiriKitDisambiguationItem();
    v14 = swift_allocObject();
    SiriKitDisambiguationItem.init(components:image:directInvocation:utterance:allowLineWrapForDisplayText:)(v8, &v20, v12, v10, v11, 0);
  }

  else
  {
    v15 = v1[3];
    v17 = v1 + 4;
    v16 = v1[4];
    v12 = v17[1];
    type metadata accessor for SiriKitDisambiguationItem();
    v14 = swift_allocObject();
    *(v14 + 16) = v20;
    *(v14 + 24) = v15;
    *(v14 + 48) = 0;
    OUTLINED_FUNCTION_1_128(v14);
    *(v18 + 32) = v16;
    *(v18 + 40) = v12;
  }

  v19 = v12;

  return v14;
}

uint64_t sub_1DCF9EEEC()
{
  sub_1DD0DEC1C();

  v0 = sub_1DD0DF03C();
  MEMORY[0x1E12A6780](v0);

  MEMORY[0x1E12A6780](8224092, 0xE300000000000000);
  return 0x5C1B237374747B40;
}

uint64_t SiriKitDisambiguationItem.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 72);

  v4 = *(v0 + 80);

  return v0;
}

uint64_t SiriKitDisambiguationItem.__deallocating_deinit()
{
  SiriKitDisambiguationItem.deinit();
  OUTLINED_FUNCTION_0_119();

  return swift_deallocClassInstance();
}

unint64_t sub_1DCF9F014()
{
  result = qword_1ECCAB518;
  if (!qword_1ECCAB518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB518);
  }

  return result;
}

id sub_1DCF9F280(id result, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  if (!a3)
  {
    return result;
  }

  return result;
}

void sub_1DCF9F2BC(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_1DCF9F2E8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCF9F280(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for Image(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCF9F280(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_1DCF9F2BC(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for Image(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_1DCF9F2BC(v4, v5, v6);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ImageSize(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t SiriKitDisambiguationList.__allocating_init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 33) = a4;
  return result;
}

_OWORD *SiriKitDisambiguationItemPair.init(rawItem:formattedItem:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1DCB20B30(a1, (a3 + 8));
  *a3 = a2;
  return result;
}

uint64_t sub_1DCF9F6C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v43 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v42 = &v42 - v7;
  v8 = 0;
  v9 = *(v0 + 16);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v8 == v10)
    {
      v12 = 0;
      v13 = 0uLL;
      v8 = v10;
      v14 = 0uLL;
    }

    else
    {
      if (v8 >= *(v9 + 16))
      {
        goto LABEL_26;
      }

      *&v46 = v8;
      sub_1DCB0DF6C(v9 + 32 + 32 * v8, &v46 + 8);
      v13 = v46;
      v14 = v47;
      ++v8;
      v12 = v48;
    }

    v49[0] = v13;
    v49[1] = v14;
    v50 = v12;
    if (!v12)
    {
      return v11;
    }

    v44 = v13;
    sub_1DCB20B30((v49 + 8), v45);
    v15 = *(v0 + 24);
    if (v15 >> 62)
    {
      if (v15 < 0)
      {
        v24 = *(v0 + 24);
      }

      v16 = sub_1DD0DEB3C();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v44;
    if (v44 >= v16)
    {
      goto LABEL_27;
    }

    sub_1DCB0DF6C(v45, &v46 + 8);
    if ((v15 & 0xC000000000000001) == 0)
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v17 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v18 = *(v15 + 8 * v17 + 32);
        sub_1DD0DCF8C();
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v29 = sub_1DD0DD8FC();
      v30 = __swift_project_value_buffer(v29, qword_1EDE57E00);
      v31 = *(v29 - 8);
      v32 = v42;
      (*(v31 + 16))(v42, v30, v29);
      __swift_storeEnumTagSinglePayload(v32, 0, 1, v29);
      v33 = v32;
      v34 = v43;
      sub_1DCBCF6C8(v33, v43);
      if (__swift_getEnumTagSinglePayload(v34, 1, v29) == 1)
      {
        sub_1DCBCF738(v43);
      }

      else
      {
        v35 = sub_1DD0DD8EC();
        v36 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          *&v46 = v38;
          *v37 = 136315650;
          v39 = sub_1DD0DEC3C();
          v41 = sub_1DCB10E9C(v39, v40, &v46);

          *(v37 + 4) = v41;
          *(v37 + 12) = 2048;
          *(v37 + 14) = 42;
          *(v37 + 22) = 2080;
          *(v37 + 24) = sub_1DCB10E9C(0xD00000000000004DLL, 0x80000001DD126B10, &v46);
          _os_log_impl(&dword_1DCAFC000, v35, v36, "FatalError at %s:%lu - %s", v37, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1E12A8390](v38, -1, -1);
          MEMORY[0x1E12A8390](v37, -1, -1);
        }

        (*(v31 + 8))(v43, v29);
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000004DLL, 0x80000001DD126B10);
    }

    *&v46 = MEMORY[0x1E12A72C0](v17, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = *(v11 + 16);
      sub_1DCE18D60();
      v11 = v26;
    }

    v20 = *(v11 + 16);
    v19 = *(v11 + 24);
    if (v20 >= v19 >> 1)
    {
      OUTLINED_FUNCTION_21_0(v19);
      sub_1DCE18D60();
      v11 = v27;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    *(v11 + 16) = v20 + 1;
    v21 = v11 + 40 * v20;
    v22 = v46;
    v23 = v47;
    *(v21 + 64) = v48;
    *(v21 + 32) = v22;
    *(v21 + 48) = v23;
  }
}

uint64_t SiriKitDisambiguationList.init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 33) = a4;
  return v4;
}

uint64_t SiriKitDisambiguationList.__allocating_init<A>(rawItems:itemConverter:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  v12 = sub_1DD0DEDAC();
  v19[7] = a1;
  v19[2] = a6;
  v19[3] = a2;
  v19[4] = a3;
  v13 = sub_1DD0DE40C();
  v14 = type metadata accessor for SiriKitDisambiguationItem();
  WitnessTable = swift_getWitnessTable();
  v17 = sub_1DCCEFBC4(sub_1DCF9FCC4, v19, v13, v14, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v16);

  type metadata accessor for SiriKitDisambiguationList();
  result = swift_allocObject();
  *(result + 16) = v12;
  *(result + 24) = v17;
  *(result + 32) = a4;
  *(result + 33) = a5;
  return result;
}

uint64_t sub_1DCF9FCC4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  result = v3();
  *a1 = result;
  return result;
}

void sub_1DCF9FD28(char a1)
{
  v3 = sub_1DCFA0018(*(v1 + 24), a1);
  if (sub_1DCB08B14(v3) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
    *(swift_allocObject() + 16) = xmmword_1DD0E07C0;
    sub_1DCB35460(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) == 0)
    {
      v4 = *(v3 + 32);
      sub_1DD0DCF8C();
    }

    MEMORY[0x1E12A72C0](0, v3);

    sub_1DCF9EBDC();
  }

  type metadata accessor for SiriKitDisambiguationList();
  sub_1DCFA0554(v3, a1 & 1);
  v6 = v5;

  v7 = sub_1DCB08B14(v6);
  if (v7)
  {
    v8 = v7;
    sub_1DCB38954();
    if ((v8 & 0x8000000000000000) == 0)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12A72C0](0, v6);
        sub_1DCF9EBDC();
      }

      v9 = *(v6 + 32);
      sub_1DD0DCF8C();
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1DCF9FF44(char a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  type metadata accessor for SiriKitDisambiguationItem();
  v5 = sub_1DCF9E828(v4, a1);
  type metadata accessor for SiriKitDisambiguationList();
  v6 = sub_1DCFA0958(v5, 1);
  v7 = sub_1DCFA0958(v4, 0);
  if ((a1 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v7 < v6)
  {

    return 1;
  }

  if (*(v2 + 33) == 1)
  {
    v9 = sub_1DCFA0B08(v5);

    if (v9)
    {
      return 1;
    }

    return sub_1DCFA0BEC(v4, 1) & 1;
  }

  else
  {
LABEL_8:

    return 0;
  }
}

uint64_t sub_1DCFA0018(unint64_t a1, char a2)
{
  LOBYTE(v2) = a2;
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_78;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v4 <= 1)
  {
LABEL_70:

    return v3;
  }

  sub_1DCB35460(0, (v3 & 0xC000000000000001) == 0, v3);
  v42 = v3 & 0xC000000000000001;
  if ((v3 & 0xC000000000000001) == 0)
  {
    v5 = *(v3 + 32);
    sub_1DD0DCF8C();
  }

  MEMORY[0x1E12A72C0](0, v3);
  v6 = sub_1DCF9E948();

  v41 = v4;
  if (v6)
  {
    v7 = sub_1DCF9DF00(v2 & 1);
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = sub_1DCB08B14(v3);
  for (i = 0; v10 != i; ++i)
  {
    if (!v42)
    {
      if (i < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v12 = *(v3 + 8 * i + 32);
        sub_1DD0DCF8C();
      }

      goto LABEL_77;
    }

    MEMORY[0x1E12A72C0](i, v3);
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      v4 = sub_1DD0DEB3C();
      goto LABEL_3;
    }

    if (!sub_1DCF9E948())
    {
      goto LABEL_26;
    }

    v13 = sub_1DCF9DF00(v2 & 1);
    v15 = v14;

    if (v7 == v13 && v9 == v15)
    {
    }

    else
    {
      v17 = sub_1DD0DF0AC();

      if ((v17 & 1) == 0)
      {
LABEL_26:

        goto LABEL_70;
      }
    }

    v18 = sub_1DCF9E9C0();

    if (!v18)
    {

      goto LABEL_70;
    }
  }

  v43 = MEMORY[0x1E69E7CC0];
  sub_1DD0DED0C();
  v2 = 0;
  while (1)
  {
    if (!v42)
    {
      v20 = *(v3 + 32 + 8 * v2);
      sub_1DD0DCF8C();
    }

    v19 = MEMORY[0x1E12A72C0](v2, v3);
    v21 = v19[2];
    if (v21 >> 62)
    {
      if (v21 < 0)
      {
        v36 = v19[2];
      }

      result = sub_1DD0DEB3C();
      if (result < 1)
      {
        goto LABEL_81;
      }

      v22 = result;
      result = sub_1DD0DEB3C();
      if (result < 1)
      {
        goto LABEL_82;
      }

      if (sub_1DD0DEB3C() < v22)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        goto LABEL_73;
      }
    }

    if ((v21 & 0xC000000000000001) == 0 || v22 == 1)
    {
    }

    else
    {
      type metadata accessor for SiriKitDisambiguationItemComponent();

      v24 = 1;
      do
      {
        v25 = v24 + 1;
        sub_1DD0DEC4C();
        v24 = v25;
      }

      while (v22 != v25);
    }

    if (v21 >> 62)
    {

      sub_1DD0DEE4C();
      v27 = v28;
    }

    else
    {
      v26 = (2 * v22) | 1;
      v27 = 1;
    }

    v29 = v26 >> 1;
    if ((v26 & 1) == 0)
    {
      v30 = v29 - v27;
      if (__OFSUB__(v29, v27))
      {
        goto LABEL_75;
      }

      if (v30)
      {
        goto LABEL_46;
      }

LABEL_64:
      v31 = MEMORY[0x1E69E7CC0];
LABEL_65:
      v35 = v41;
LABEL_66:
      swift_unknownObjectRelease();
      goto LABEL_67;
    }

    sub_1DD0DF0DC();
    swift_unknownObjectRetain_n();
    v33 = swift_dynamicCastClass();
    if (!v33)
    {
      swift_unknownObjectRelease();
      v33 = MEMORY[0x1E69E7CC0];
    }

    v34 = *(v33 + 16);

    v30 = v29 - v27;
    if (__OFSUB__(v29, v27))
    {
      goto LABEL_76;
    }

    if (v34 != v30)
    {
      break;
    }

    v31 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v35 = v41;
    if (!v31)
    {
      v31 = MEMORY[0x1E69E7CC0];
      goto LABEL_66;
    }

LABEL_67:
    ++v2;
    v38 = v19[3];
    v39 = v19[4];

    type metadata accessor for SiriKitDisambiguationItem();
    swift_allocObject();
    SiriKitDisambiguationItem.init(components:utterance:allowLineWrapForDisplayText:)(v31, v38, v39, 0);
    sub_1DD0DECDC();
    v40 = *(v43 + 16);
    sub_1DD0DED1C();
    sub_1DD0DED2C();
    sub_1DD0DECEC();
    if (v2 == v35)
    {
      return v43;
    }
  }

  swift_unknownObjectRelease();
  if (!v30)
  {
    goto LABEL_64;
  }

LABEL_46:
  if (v30 < 1)
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
    v31 = swift_allocObject();
    v32 = _swift_stdlib_malloc_size(v31);
    v31[2] = v30;
    v31[3] = (2 * ((v32 - 32) / 8)) | 1;
  }

  if (v27 != v29)
  {
    type metadata accessor for SiriKitDisambiguationItemComponent();
    swift_arrayInitWithCopy();
    goto LABEL_65;
  }

  result = swift_unknownObjectRelease();
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
  return result;
}