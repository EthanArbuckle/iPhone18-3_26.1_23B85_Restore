void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::NamedLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **,0>(md::Label **a1, md::Label **a2, md::Label **a3, md::Label **a4, float32x2_t *a5)
{
  v10 = *a2;
  v11 = *a1;
  v12 = *(*a2 + 1297);
  v13 = *(*a1 + 1297);
  if (v12 == v13)
  {
    v14 = 0;
    v15 = 0;
    v16 = a5 + 1;
    while (1)
    {
      v17 = *(v10 + v15 + 172);
      if (v17 < a5->f32[v15])
      {
        break;
      }

      v18 = v16->f32[v15];
      v15 = 1;
      v19 = (v17 < v18) & ~v14;
      v14 = 1;
      if ((v19 & 1) == 0)
      {
        v20 = v17 < v18;
        goto LABEL_8;
      }
    }

    v20 = 0;
LABEL_8:
    v22 = 0;
    v23 = 0;
    while (1)
    {
      v24 = *(v11 + v23 + 172);
      if (v24 < a5->f32[v23])
      {
        break;
      }

      v25 = v16->f32[v23];
      v23 = 1;
      v26 = (v24 < v25) & ~v22;
      v22 = 1;
      if ((v26 & 1) == 0)
      {
        v27 = v24 < v25;
        goto LABEL_13;
      }
    }

    v27 = 0;
LABEL_13:
    if (*(v10 + 844) == 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (*(v11 + 844) == 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    if (((v21 | v28) & 1) == 0 || ((v21 ^ v28) & 1) == 0)
    {
      if (v20 == v27)
      {
        v29.f32[0] = md::Label::boundsForStaging(*a2);
        v31.i32[1] = v30;
        v29.i32[1] = v32;
        v33 = vmla_f32(vsub_f32(a5[2], v29), 0xBF000000BF000000, vsub_f32(v31, v29));
        v34 = vmul_f32(v33, v33);
        v35.f32[0] = md::Label::boundsForStaging(v11);
        v37.i32[1] = v36;
        v35.i32[1] = v38;
        v39 = vmla_f32(vsub_f32(a5[2], v35), 0xBF000000BF000000, vsub_f32(v37, v35));
        v40 = vmul_f32(v39, v39);
        v41 = vadd_f32(vzip2_s32(v34, v40), vzip1_s32(v34, v40));
        LOBYTE(v21) = vcgt_f32(vdup_lane_s32(v41, 1), v41).u8[0];
        v10 = *a2;
        v12 = *(*a2 + 1297);
      }

      else
      {
        LOBYTE(v21) = v20;
      }
    }
  }

  else
  {
    LOBYTE(v21) = v12 < v13;
  }

  v42 = *a3;
  v43 = *(*a3 + 1297);
  if (v43 == v12)
  {
    v44 = 0;
    v45 = 0;
    v46 = a5 + 1;
    while (1)
    {
      v47 = *(v42 + v45 + 172);
      if (v47 < a5->f32[v45])
      {
        break;
      }

      v48 = v46->f32[v45];
      v45 = 1;
      v49 = (v47 < v48) & ~v44;
      v44 = 1;
      if ((v49 & 1) == 0)
      {
        v50 = v47 < v48;
        goto LABEL_31;
      }
    }

    v50 = 0;
LABEL_31:
    v51 = 0;
    v52 = 0;
    while (1)
    {
      v53 = *(v10 + v52 + 172);
      if (v53 < a5->f32[v52])
      {
        break;
      }

      v54 = v46->f32[v52];
      v52 = 1;
      v55 = (v53 < v54) & ~v51;
      v51 = 1;
      if ((v55 & 1) == 0)
      {
        v56 = v53 < v54;
        goto LABEL_36;
      }
    }

    v56 = 0;
LABEL_36:
    if (*(v42 + 844) == 2)
    {
      v12 = v50;
    }

    else
    {
      v12 = 0;
    }

    if (*(v10 + 844) == 2)
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    if (((v12 | v57) & 1) == 0 || ((v12 ^ v57) & 1) == 0)
    {
      LOBYTE(v12) = v50;
      if (v50 == v56)
      {
        v58.f32[0] = md::Label::boundsForStaging(v42);
        v60.i32[1] = v59;
        v58.i32[1] = v61;
        v62 = vmla_f32(vsub_f32(a5[2], v58), 0xBF000000BF000000, vsub_f32(v60, v58));
        v63 = vmul_f32(v62, v62);
        v64.f32[0] = md::Label::boundsForStaging(v10);
        v66.i32[1] = v65;
        v64.i32[1] = v67;
        v68 = vmla_f32(vsub_f32(a5[2], v64), 0xBF000000BF000000, vsub_f32(v66, v64));
        v69 = vmul_f32(v68, v68);
        v70 = vadd_f32(vzip2_s32(v63, v69), vzip1_s32(v63, v69));
        LOBYTE(v12) = vcgt_f32(vdup_lane_s32(v70, 1), v70).u8[0];
      }
    }
  }

  else
  {
    LOBYTE(v12) = v43 < v12;
  }

  if ((v21 & 1) == 0)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_105;
    }

    v72 = *a2;
    *a2 = *a3;
    *a3 = v72;
    v73 = *a2;
    v74 = *a1;
    v75 = *(*a2 + 1297);
    v76 = *(*a1 + 1297);
    if (v75 == v76)
    {
      v77 = 0;
      v78 = 0;
      v79 = a5 + 1;
      while (1)
      {
        v80 = *(v73 + v78 + 172);
        if (v80 < a5->f32[v78])
        {
          break;
        }

        v81 = v79->f32[v78];
        v78 = 1;
        v82 = (v80 < v81) & ~v77;
        v77 = 1;
        if ((v82 & 1) == 0)
        {
          v83 = v80 < v81;
          goto LABEL_65;
        }
      }

      v83 = 0;
LABEL_65:
      v94 = 0;
      v95 = 0;
      while (1)
      {
        v96 = *(v74 + v95 + 172);
        if (v96 < a5->f32[v95])
        {
          break;
        }

        v97 = v79->f32[v95];
        v95 = 1;
        v98 = (v96 < v97) & ~v94;
        v94 = 1;
        if ((v98 & 1) == 0)
        {
          v99 = v96 < v97;
          goto LABEL_75;
        }
      }

      v99 = 0;
LABEL_75:
      if (*(v73 + 844) == 2)
      {
        v106 = v83;
      }

      else
      {
        v106 = 0;
      }

      if (*(v74 + 844) == 2)
      {
        v107 = v99;
      }

      else
      {
        v107 = 0;
      }

      if (((v106 | v107) & 1) != 0 && ((v106 ^ v107) & 1) != 0 || (v106 = v83, v83 != v99))
      {
        if (!v106)
        {
          goto LABEL_105;
        }
      }

      else
      {
        v110.f32[0] = md::Label::boundsForStaging(v73);
        v112.i32[1] = v111;
        v110.i32[1] = v113;
        v114 = vmla_f32(vsub_f32(a5[2], v110), 0xBF000000BF000000, vsub_f32(v112, v110));
        v115 = vmul_f32(v114, v114);
        v116.f32[0] = md::Label::boundsForStaging(v74);
        v118.i32[1] = v117;
        v116.i32[1] = v119;
        v120 = vmla_f32(vsub_f32(a5[2], v116), 0xBF000000BF000000, vsub_f32(v118, v116));
        v121 = vmul_f32(v120, v120);
        v122 = vadd_f32(vzip2_s32(v115, v121), vzip1_s32(v115, v121));
        if ((vcgt_f32(vdup_lane_s32(v122, 1), v122).u32[0] & 1) == 0)
        {
          goto LABEL_105;
        }

        v74 = *a1;
        v73 = *a2;
      }
    }

    else if (v75 >= v76)
    {
      goto LABEL_105;
    }

    *a1 = v73;
    *a2 = v74;
    goto LABEL_105;
  }

  v71 = *a1;
  if (v12)
  {
    *a1 = *a3;
LABEL_104:
    *a3 = v71;
    goto LABEL_105;
  }

  *a1 = *a2;
  *a2 = v71;
  v84 = *a3;
  v85 = *(*a3 + 1297);
  v86 = *(v71 + 1297);
  if (v85 != v86)
  {
    if (v85 >= v86)
    {
      goto LABEL_105;
    }

    goto LABEL_103;
  }

  v87 = 0;
  v88 = 0;
  v89 = a5 + 1;
  while (1)
  {
    v90 = *(v84 + v88 + 172);
    if (v90 < a5->f32[v88])
    {
      break;
    }

    v91 = v89->f32[v88];
    v88 = 1;
    v92 = (v90 < v91) & ~v87;
    v87 = 1;
    if ((v92 & 1) == 0)
    {
      v93 = v90 < v91;
      goto LABEL_70;
    }
  }

  v93 = 0;
LABEL_70:
  v100 = 0;
  v101 = 0;
  while (1)
  {
    v102 = *(v71 + v101 + 172);
    if (v102 < a5->f32[v101])
    {
      break;
    }

    v103 = v89->f32[v101];
    v101 = 1;
    v104 = (v102 < v103) & ~v100;
    v100 = 1;
    if ((v104 & 1) == 0)
    {
      v105 = v102 < v103;
      goto LABEL_87;
    }
  }

  v105 = 0;
LABEL_87:
  if (*(v84 + 844) == 2)
  {
    v108 = v93;
  }

  else
  {
    v108 = 0;
  }

  if (*(v71 + 844) == 2)
  {
    v109 = v105;
  }

  else
  {
    v109 = 0;
  }

  if (((v108 | v109) & 1) == 0 || ((v108 ^ v109) & 1) == 0)
  {
    v108 = v93;
    if (v93 == v105)
    {
      v123.f32[0] = md::Label::boundsForStaging(v84);
      v125.i32[1] = v124;
      v123.i32[1] = v126;
      v127 = vmla_f32(vsub_f32(a5[2], v123), 0xBF000000BF000000, vsub_f32(v125, v123));
      v128 = vmul_f32(v127, v127);
      v129.f32[0] = md::Label::boundsForStaging(v71);
      v131.i32[1] = v130;
      v129.i32[1] = v132;
      v133 = vmla_f32(vsub_f32(a5[2], v129), 0xBF000000BF000000, vsub_f32(v131, v129));
      v134 = vmul_f32(v133, v133);
      v135 = vadd_f32(vzip2_s32(v128, v134), vzip1_s32(v128, v134));
      if ((vcgt_f32(vdup_lane_s32(v135, 1), v135).u32[0] & 1) == 0)
      {
        goto LABEL_105;
      }

      v71 = *a2;
      v84 = *a3;
      goto LABEL_103;
    }
  }

  if (v108)
  {
LABEL_103:
    *a2 = v84;
    goto LABEL_104;
  }

LABEL_105:
  v136 = *a4;
  v137 = *a3;
  v138 = *(*a4 + 1297);
  v139 = *(*a3 + 1297);
  if (v138 == v139)
  {
    v140 = 0;
    v141 = 0;
    v142 = a5 + 1;
    while (1)
    {
      v143 = *(v136 + v141 + 172);
      if (v143 < a5->f32[v141])
      {
        break;
      }

      v144 = v142->f32[v141];
      v141 = 1;
      v145 = (v143 < v144) & ~v140;
      v140 = 1;
      if ((v145 & 1) == 0)
      {
        v146 = v143 < v144;
        goto LABEL_113;
      }
    }

    v146 = 0;
LABEL_113:
    v147 = 0;
    v148 = 0;
    while (1)
    {
      v149 = *(v137 + v148 + 172);
      if (v149 < a5->f32[v148])
      {
        break;
      }

      v150 = v142->f32[v148];
      v148 = 1;
      v151 = (v149 < v150) & ~v147;
      v147 = 1;
      if ((v151 & 1) == 0)
      {
        v152 = v149 < v150;
        goto LABEL_118;
      }
    }

    v152 = 0;
LABEL_118:
    if (*(v136 + 844) == 2)
    {
      v153 = v146;
    }

    else
    {
      v153 = 0;
    }

    if (*(v137 + 844) == 2)
    {
      v154 = v152;
    }

    else
    {
      v154 = 0;
    }

    if (((v153 | v154) & 1) != 0 && ((v153 ^ v154) & 1) != 0 || (v153 = v146, v146 != v152))
    {
      if (!v153)
      {
        return;
      }
    }

    else
    {
      v155.f32[0] = md::Label::boundsForStaging(v136);
      v157.i32[1] = v156;
      v155.i32[1] = v158;
      v159 = vmla_f32(vsub_f32(a5[2], v155), 0xBF000000BF000000, vsub_f32(v157, v155));
      v160 = vmul_f32(v159, v159);
      v161.f32[0] = md::Label::boundsForStaging(v137);
      v163.i32[1] = v162;
      v161.i32[1] = v164;
      v165 = vmla_f32(vsub_f32(a5[2], v161), 0xBF000000BF000000, vsub_f32(v163, v161));
      v166 = vmul_f32(v165, v165);
      v167 = vadd_f32(vzip2_s32(v160, v166), vzip1_s32(v160, v166));
      if ((vcgt_f32(vdup_lane_s32(v167, 1), v167).u32[0] & 1) == 0)
      {
        return;
      }

      v137 = *a3;
      v136 = *a4;
    }
  }

  else if (v138 >= v139)
  {
    return;
  }

  *a3 = v136;
  *a4 = v137;
  v168 = *a3;
  v169 = *a2;
  v170 = *(*a3 + 1297);
  v171 = *(*a2 + 1297);
  if (v170 == v171)
  {
    v172 = 0;
    v173 = 0;
    v174 = a5 + 1;
    while (1)
    {
      v175 = *(v168 + v173 + 172);
      if (v175 < a5->f32[v173])
      {
        break;
      }

      v176 = v174->f32[v173];
      v173 = 1;
      v177 = (v175 < v176) & ~v172;
      v172 = 1;
      if ((v177 & 1) == 0)
      {
        v178 = v175 < v176;
        goto LABEL_139;
      }
    }

    v178 = 0;
LABEL_139:
    v179 = 0;
    v180 = 0;
    while (1)
    {
      v181 = *(v169 + v180 + 172);
      if (v181 < a5->f32[v180])
      {
        break;
      }

      v182 = v174->f32[v180];
      v180 = 1;
      v183 = (v181 < v182) & ~v179;
      v179 = 1;
      if ((v183 & 1) == 0)
      {
        v184 = v181 < v182;
        goto LABEL_144;
      }
    }

    v184 = 0;
LABEL_144:
    if (*(v168 + 844) == 2)
    {
      v185 = v178;
    }

    else
    {
      v185 = 0;
    }

    if (*(v169 + 844) == 2)
    {
      v186 = v184;
    }

    else
    {
      v186 = 0;
    }

    if (((v185 | v186) & 1) != 0 && ((v185 ^ v186) & 1) != 0 || (v185 = v178, v178 != v184))
    {
      if (!v185)
      {
        return;
      }
    }

    else
    {
      v187.f32[0] = md::Label::boundsForStaging(v168);
      v189.i32[1] = v188;
      v187.i32[1] = v190;
      v191 = vmla_f32(vsub_f32(a5[2], v187), 0xBF000000BF000000, vsub_f32(v189, v187));
      v192 = vmul_f32(v191, v191);
      v193.f32[0] = md::Label::boundsForStaging(v169);
      v195.i32[1] = v194;
      v193.i32[1] = v196;
      v197 = vmla_f32(vsub_f32(a5[2], v193), 0xBF000000BF000000, vsub_f32(v195, v193));
      v198 = vmul_f32(v197, v197);
      v199 = vadd_f32(vzip2_s32(v192, v198), vzip1_s32(v192, v198));
      if ((vcgt_f32(vdup_lane_s32(v199, 1), v199).u32[0] & 1) == 0)
      {
        return;
      }

      v169 = *a2;
      v168 = *a3;
    }
  }

  else if (v170 >= v171)
  {
    return;
  }

  *a2 = v168;
  *a3 = v169;
  v200 = *a2;
  v201 = *a1;
  v202 = *(*a2 + 1297);
  v203 = *(*a1 + 1297);
  if (v202 != v203)
  {
    if (v202 >= v203)
    {
      return;
    }

    goto LABEL_183;
  }

  v204 = 0;
  v205 = 0;
  v206 = a5 + 1;
  while (1)
  {
    v207 = *(v200 + v205 + 172);
    if (v207 < a5->f32[v205])
    {
      break;
    }

    v208 = v206->f32[v205];
    v205 = 1;
    v209 = (v207 < v208) & ~v204;
    v204 = 1;
    if ((v209 & 1) == 0)
    {
      v210 = v207 < v208;
      goto LABEL_165;
    }
  }

  v210 = 0;
LABEL_165:
  v211 = 0;
  v212 = 0;
  while (1)
  {
    v213 = *(v201 + v212 + 172);
    if (v213 < a5->f32[v212])
    {
      break;
    }

    v214 = v206->f32[v212];
    v212 = 1;
    v215 = (v213 < v214) & ~v211;
    v211 = 1;
    if ((v215 & 1) == 0)
    {
      v216 = v213 < v214;
      goto LABEL_170;
    }
  }

  v216 = 0;
LABEL_170:
  if (*(v200 + 844) == 2)
  {
    v217 = v210;
  }

  else
  {
    v217 = 0;
  }

  if (*(v201 + 844) == 2)
  {
    v218 = v216;
  }

  else
  {
    v218 = 0;
  }

  if (((v217 | v218) & 1) == 0 || ((v217 ^ v218) & 1) == 0)
  {
    v217 = v210;
    if (v210 == v216)
    {
      v219.f32[0] = md::Label::boundsForStaging(v200);
      v221.i32[1] = v220;
      v219.i32[1] = v222;
      v223 = vmla_f32(vsub_f32(a5[2], v219), 0xBF000000BF000000, vsub_f32(v221, v219));
      v224 = vmul_f32(v223, v223);
      v225.f32[0] = md::Label::boundsForStaging(v201);
      v227.i32[1] = v226;
      v225.i32[1] = v228;
      v229 = vmla_f32(vsub_f32(a5[2], v225), 0xBF000000BF000000, vsub_f32(v227, v225));
      v230 = vmul_f32(v229, v229);
      v231 = vadd_f32(vzip2_s32(v224, v230), vzip1_s32(v224, v230));
      if ((vcgt_f32(vdup_lane_s32(v231, 1), v231).u32[0] & 1) == 0)
      {
        return;
      }

      v201 = *a1;
      v200 = *a2;
      goto LABEL_183;
    }
  }

  if (v217)
  {
LABEL_183:
    *a1 = v200;
    *a2 = v201;
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::NamedLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **>(md::Label **a1, md::Label **a2, float32x2_t *a3)
{
  v5 = a1;
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v30 = *a1;
        v29 = a1[1];
        v31 = *(v29 + 1297);
        v32 = *(*a1 + 1297);
        if (v31 == v32)
        {
          v33 = 0;
          v34 = 0;
          v35 = a3 + 1;
          while (1)
          {
            v36 = *(v29 + v34 + 172);
            if (v36 < a3->f32[v34])
            {
              break;
            }

            v37 = v35->f32[v34];
            v34 = 1;
            v38 = (v36 < v37) & ~v33;
            v33 = 1;
            if ((v38 & 1) == 0)
            {
              v39 = v36 < v37;
              goto LABEL_35;
            }
          }

          v39 = 0;
LABEL_35:
          v54 = 0;
          v55 = 0;
          while (1)
          {
            v56 = *(v30 + v55 + 172);
            if (v56 < a3->f32[v55])
            {
              break;
            }

            v57 = v35->f32[v55];
            v55 = 1;
            v58 = (v56 < v57) & ~v54;
            v54 = 1;
            if ((v58 & 1) == 0)
            {
              v59 = v56 < v57;
              goto LABEL_40;
            }
          }

          v59 = 0;
LABEL_40:
          if (*(v29 + 844) == 2)
          {
            v52 = v39;
          }

          else
          {
            v52 = 0;
          }

          if (*(v30 + 844) == 2)
          {
            v60 = v59;
          }

          else
          {
            v60 = 0;
          }

          if (((v52 | v60) & 1) == 0 || ((v52 ^ v60) & 1) == 0)
          {
            if (v39 == v59)
            {
              v84.f32[0] = md::Label::boundsForStaging(a1[1]);
              v86.i32[1] = v85;
              v84.i32[1] = v87;
              v88 = vmla_f32(vsub_f32(a3[2], v84), 0xBF000000BF000000, vsub_f32(v86, v84));
              v89 = vmul_f32(v88, v88);
              v90.f32[0] = md::Label::boundsForStaging(v30);
              v5 = a1;
              v92.i32[1] = v91;
              v90.i32[1] = v93;
              v94 = vmla_f32(vsub_f32(a3[2], v90), 0xBF000000BF000000, vsub_f32(v92, v90));
              v95 = vmul_f32(v94, v94);
              v96 = vadd_f32(vzip2_s32(v89, v95), vzip1_s32(v89, v95));
              LOBYTE(v52) = vcgt_f32(vdup_lane_s32(v96, 1), v96).u8[0];
              v29 = a1[1];
              v31 = *(v29 + 1297);
            }

            else
            {
              LOBYTE(v52) = v39;
            }
          }
        }

        else
        {
          LOBYTE(v52) = v31 < v32;
        }

        v97 = *(a2 - 1);
        v98 = *(v97 + 1297);
        if (v98 == v31)
        {
          v99 = 0;
          v100 = 0;
          v101 = a3 + 1;
          while (1)
          {
            v102 = *(v97 + v100 + 172);
            if (v102 < a3->f32[v100])
            {
              break;
            }

            v103 = v101->f32[v100];
            v100 = 1;
            v104 = (v102 < v103) & ~v99;
            v99 = 1;
            if ((v104 & 1) == 0)
            {
              v105 = v102 < v103;
              goto LABEL_108;
            }
          }

          v105 = 0;
LABEL_108:
          v106 = 0;
          v107 = 0;
          while (1)
          {
            v108 = *(v29 + v107 + 172);
            if (v108 < a3->f32[v107])
            {
              break;
            }

            v109 = v101->f32[v107];
            v107 = 1;
            v110 = (v108 < v109) & ~v106;
            v106 = 1;
            if ((v110 & 1) == 0)
            {
              v111 = v108 < v109;
              goto LABEL_113;
            }
          }

          v111 = 0;
LABEL_113:
          if (*(v97 + 844) == 2)
          {
            v31 = v105;
          }

          else
          {
            v31 = 0;
          }

          if (*(v29 + 844) == 2)
          {
            v112 = v111;
          }

          else
          {
            v112 = 0;
          }

          if (((v31 | v112) & 1) == 0 || ((v31 ^ v112) & 1) == 0)
          {
            LOBYTE(v31) = v105;
            if (v105 == v111)
            {
              v113.f32[0] = md::Label::boundsForStaging(v97);
              v115.i32[1] = v114;
              v113.i32[1] = v116;
              v117 = vmla_f32(vsub_f32(a3[2], v113), 0xBF000000BF000000, vsub_f32(v115, v113));
              v118 = vmul_f32(v117, v117);
              v119.f32[0] = md::Label::boundsForStaging(v29);
              v5 = a1;
              v121.i32[1] = v120;
              v119.i32[1] = v122;
              v123 = vmla_f32(vsub_f32(a3[2], v119), 0xBF000000BF000000, vsub_f32(v121, v119));
              v124 = vmul_f32(v123, v123);
              v125 = vadd_f32(vzip2_s32(v118, v124), vzip1_s32(v118, v124));
              LOBYTE(v31) = vcgt_f32(vdup_lane_s32(v125, 1), v125).u8[0];
            }
          }
        }

        else
        {
          LOBYTE(v31) = v98 < v31;
        }

        if (v52)
        {
          v8 = *v5;
          if (v31)
          {
            *v5 = *(a2 - 1);
          }

          else
          {
            *v5 = v5[1];
            v5[1] = v8;
            v138 = *(a2 - 1);
            v139 = *(v138 + 1297);
            v140 = *(v8 + 1297);
            if (v139 == v140)
            {
              v141 = 0;
              v142 = 0;
              v143 = a3 + 1;
              while (1)
              {
                v144 = *(v138 + v142 + 172);
                if (v144 < a3->f32[v142])
                {
                  break;
                }

                v145 = v143->f32[v142];
                v142 = 1;
                v146 = (v144 < v145) & ~v141;
                v141 = 1;
                if ((v146 & 1) == 0)
                {
                  v147 = v144 < v145;
                  goto LABEL_216;
                }
              }

              v147 = 0;
LABEL_216:
              v262 = 0;
              v263 = 0;
              while (1)
              {
                v264 = *(v8 + v263 + 172);
                if (v264 < a3->f32[v263])
                {
                  break;
                }

                v265 = v143->f32[v263];
                v263 = 1;
                v266 = (v264 < v265) & ~v262;
                v262 = 1;
                if ((v266 & 1) == 0)
                {
                  v267 = v264 < v265;
                  goto LABEL_221;
                }
              }

              v267 = 0;
LABEL_221:
              if (*(v138 + 844) == 2)
              {
                v268 = v147;
              }

              else
              {
                v268 = 0;
              }

              if (*(v8 + 844) == 2)
              {
                v269 = v267;
              }

              else
              {
                v269 = 0;
              }

              if (((v268 | v269) & 1) != 0 && ((v268 ^ v269) & 1) != 0 || (v268 = v147, v147 != v267))
              {
                if (!v268)
                {
                  return 1;
                }
              }

              else
              {
                v316.f32[0] = md::Label::boundsForStaging(v138);
                v318.i32[1] = v317;
                v316.i32[1] = v319;
                v320 = vmla_f32(vsub_f32(a3[2], v316), 0xBF000000BF000000, vsub_f32(v318, v316));
                v321 = vmul_f32(v320, v320);
                v322.f32[0] = md::Label::boundsForStaging(v8);
                v324.i32[1] = v323;
                v322.i32[1] = v325;
                v326 = vmla_f32(vsub_f32(a3[2], v322), 0xBF000000BF000000, vsub_f32(v324, v322));
                v327 = vmul_f32(v326, v326);
                v328 = vadd_f32(vzip2_s32(v321, v327), vzip1_s32(v321, v327));
                if ((vcgt_f32(vdup_lane_s32(v328, 1), v328).u32[0] & 1) == 0)
                {
                  return 1;
                }

                v5 = a1;
                v8 = a1[1];
                v138 = *(a2 - 1);
              }
            }

            else if (v139 >= v140)
            {
              return 1;
            }

            v5[1] = v138;
          }

          goto LABEL_183;
        }

        if ((v31 & 1) == 0)
        {
          return 1;
        }

        v126 = v5[1];
        v5[1] = *(a2 - 1);
        *(a2 - 1) = v126;
        v128 = *v5;
        v127 = v5[1];
        LODWORD(v126) = *(v127 + 1297);
        v129 = *(*v5 + 1297);
        v130 = v126 >= v129;
        if (v126 == v129)
        {
          v131 = 0;
          v132 = 0;
          v133 = a3 + 1;
          while (1)
          {
            v134 = *(v127 + v132 + 172);
            if (v134 < a3->f32[v132])
            {
              break;
            }

            v135 = v133->f32[v132];
            v132 = 1;
            v136 = (v134 < v135) & ~v131;
            v131 = 1;
            if ((v136 & 1) == 0)
            {
              v137 = v134 < v135;
              goto LABEL_211;
            }
          }

          v137 = 0;
LABEL_211:
          v257 = 0;
          v258 = 0;
          while (1)
          {
            v259 = *(v128 + v258 + 172);
            if (v259 < a3->f32[v258])
            {
              break;
            }

            v260 = v133->f32[v258];
            v258 = 1;
            v261 = (v259 < v260) & ~v257;
            v257 = 1;
            if ((v261 & 1) == 0)
            {
LABEL_375:
              v445 = v259 < v260;
              goto LABEL_377;
            }
          }

LABEL_376:
          v445 = 0;
LABEL_377:
          if (*(v127 + 844) == 2)
          {
            v446 = v137;
          }

          else
          {
            v446 = 0;
          }

          if (*(v128 + 844) == 2)
          {
            v447 = v445;
          }

          else
          {
            v447 = 0;
          }

          if (((v446 | v447) & 1) != 0 && ((v446 ^ v447) & 1) != 0 || (v446 = v137, v137 != v445))
          {
            if (!v446)
            {
              return 1;
            }
          }

          else
          {
            v448.f32[0] = md::Label::boundsForStaging(v127);
            v450.i32[1] = v449;
            v448.i32[1] = v451;
            v452 = vmla_f32(vsub_f32(a3[2], v448), 0xBF000000BF000000, vsub_f32(v450, v448));
            v453 = vmul_f32(v452, v452);
            v454.f32[0] = md::Label::boundsForStaging(v128);
            v5 = a1;
            v456.i32[1] = v455;
            v454.i32[1] = v457;
            v458 = vmla_f32(vsub_f32(a3[2], v454), 0xBF000000BF000000, vsub_f32(v456, v454));
            v459 = vmul_f32(v458, v458);
            v460 = vadd_f32(vzip2_s32(v453, v459), vzip1_s32(v453, v459));
            if ((vcgt_f32(vdup_lane_s32(v460, 1), v460).u32[0] & 1) == 0)
            {
              return 1;
            }
          }

          goto LABEL_369;
        }

        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::NamedLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::NamedLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        v5 = a1;
        v18 = *(a2 - 1);
        v19 = a1[3];
        v20 = *(v18 + 1297);
        v21 = *(v19 + 1297);
        if (v20 == v21)
        {
          v22 = 0;
          v23 = 0;
          v24 = a3 + 1;
          while (1)
          {
            v25 = *(v18 + v23 + 172);
            if (v25 < a3->f32[v23])
            {
              break;
            }

            v26 = v24->f32[v23];
            v23 = 1;
            v27 = (v25 < v26) & ~v22;
            v22 = 1;
            if ((v27 & 1) == 0)
            {
              v28 = v25 < v26;
              goto LABEL_84;
            }
          }

          v28 = 0;
LABEL_84:
          v76 = 0;
          v77 = 0;
          while (1)
          {
            v78 = *(v19 + v77 + 172);
            if (v78 < a3->f32[v77])
            {
              break;
            }

            v79 = v24->f32[v77];
            v77 = 1;
            v80 = (v78 < v79) & ~v76;
            v76 = 1;
            if ((v80 & 1) == 0)
            {
              v81 = v78 < v79;
              goto LABEL_89;
            }
          }

          v81 = 0;
LABEL_89:
          if (*(v18 + 844) == 2)
          {
            v82 = v28;
          }

          else
          {
            v82 = 0;
          }

          if (*(v19 + 844) == 2)
          {
            v83 = v81;
          }

          else
          {
            v83 = 0;
          }

          if (((v82 | v83) & 1) != 0 && ((v82 ^ v83) & 1) != 0 || (v82 = v28, v28 != v81))
          {
            if (!v82)
            {
              return 1;
            }
          }

          else
          {
            v226.f32[0] = md::Label::boundsForStaging(v18);
            v228.i32[1] = v227;
            v226.i32[1] = v229;
            v230 = vmla_f32(vsub_f32(a3[2], v226), 0xBF000000BF000000, vsub_f32(v228, v226));
            v231 = vmul_f32(v230, v230);
            v232.f32[0] = md::Label::boundsForStaging(v19);
            v234.i32[1] = v233;
            v232.i32[1] = v235;
            v236 = vmla_f32(vsub_f32(a3[2], v232), 0xBF000000BF000000, vsub_f32(v234, v232));
            v237 = vmul_f32(v236, v236);
            v238 = vadd_f32(vzip2_s32(v231, v237), vzip1_s32(v231, v237));
            if ((vcgt_f32(vdup_lane_s32(v238, 1), v238).u32[0] & 1) == 0)
            {
              return 1;
            }

            v5 = a1;
            v19 = a1[3];
            v18 = *(a2 - 1);
          }
        }

        else if (v20 >= v21)
        {
          return 1;
        }

        v5[3] = v18;
        *(a2 - 1) = v19;
        v239 = v5[2];
        v127 = v5[3];
        v240 = *(v127 + 1297);
        v241 = *(v239 + 1297);
        if (v240 == v241)
        {
          v242 = 0;
          v243 = 0;
          v244 = a3 + 1;
          while (1)
          {
            v245 = *(v127 + v243 + 172);
            if (v245 < a3->f32[v243])
            {
              break;
            }

            v246 = v244->f32[v243];
            v243 = 1;
            v247 = (v245 < v246) & ~v242;
            v242 = 1;
            if ((v247 & 1) == 0)
            {
              v248 = v245 < v246;
              goto LABEL_194;
            }
          }

          v248 = 0;
LABEL_194:
          v249 = 0;
          v250 = 0;
          while (1)
          {
            v251 = *(v239 + v250 + 172);
            if (v251 < a3->f32[v250])
            {
              break;
            }

            v252 = v244->f32[v250];
            v250 = 1;
            v253 = (v251 < v252) & ~v249;
            v249 = 1;
            if ((v253 & 1) == 0)
            {
              v254 = v251 < v252;
              goto LABEL_199;
            }
          }

          v254 = 0;
LABEL_199:
          if (*(v127 + 844) == 2)
          {
            v255 = v248;
          }

          else
          {
            v255 = 0;
          }

          if (*(v239 + 844) == 2)
          {
            v256 = v254;
          }

          else
          {
            v256 = 0;
          }

          if (((v255 | v256) & 1) != 0 && ((v255 ^ v256) & 1) != 0 || (v255 = v248, v248 != v254))
          {
            if (!v255)
            {
              return 1;
            }
          }

          else
          {
            v286.f32[0] = md::Label::boundsForStaging(v127);
            v288.i32[1] = v287;
            v286.i32[1] = v289;
            v290 = vmla_f32(vsub_f32(a3[2], v286), 0xBF000000BF000000, vsub_f32(v288, v286));
            v291 = vmul_f32(v290, v290);
            v292.f32[0] = md::Label::boundsForStaging(v239);
            v294.i32[1] = v293;
            v292.i32[1] = v295;
            v296 = vmla_f32(vsub_f32(a3[2], v292), 0xBF000000BF000000, vsub_f32(v294, v292));
            v297 = vmul_f32(v296, v296);
            v298 = vadd_f32(vzip2_s32(v291, v297), vzip1_s32(v291, v297));
            if ((vcgt_f32(vdup_lane_s32(v298, 1), v298).u32[0] & 1) == 0)
            {
              return 1;
            }

            v5 = a1;
            v239 = a1[2];
            v127 = a1[3];
            v240 = *(v127 + 1297);
          }
        }

        else if (v240 >= v241)
        {
          return 1;
        }

        v5[2] = v127;
        v5[3] = v239;
        v299 = v5[1];
        v300 = *(v299 + 1297);
        if (v240 == v300)
        {
          v301 = 0;
          v302 = 0;
          v303 = a3 + 1;
          while (1)
          {
            v304 = *(v127 + v302 + 172);
            if (v304 < a3->f32[v302])
            {
              break;
            }

            v305 = v303->f32[v302];
            v302 = 1;
            v306 = (v304 < v305) & ~v301;
            v301 = 1;
            if ((v306 & 1) == 0)
            {
              v307 = v304 < v305;
              goto LABEL_276;
            }
          }

          v307 = 0;
LABEL_276:
          v308 = 0;
          v309 = 0;
          while (1)
          {
            v310 = *(v299 + v309 + 172);
            if (v310 < a3->f32[v309])
            {
              break;
            }

            v311 = v303->f32[v309];
            v309 = 1;
            v312 = (v310 < v311) & ~v308;
            v308 = 1;
            if ((v312 & 1) == 0)
            {
              v313 = v310 < v311;
              goto LABEL_281;
            }
          }

          v313 = 0;
LABEL_281:
          if (*(v127 + 844) == 2)
          {
            v314 = v307;
          }

          else
          {
            v314 = 0;
          }

          if (*(v299 + 844) == 2)
          {
            v315 = v313;
          }

          else
          {
            v315 = 0;
          }

          if (((v314 | v315) & 1) != 0 && ((v314 ^ v315) & 1) != 0 || (v314 = v307, v307 != v313))
          {
            if (!v314)
            {
              return 1;
            }
          }

          else
          {
            v422.f32[0] = md::Label::boundsForStaging(v127);
            v424.i32[1] = v423;
            v422.i32[1] = v425;
            v426 = vmla_f32(vsub_f32(a3[2], v422), 0xBF000000BF000000, vsub_f32(v424, v422));
            v427 = vmul_f32(v426, v426);
            v428.f32[0] = md::Label::boundsForStaging(v299);
            v430.i32[1] = v429;
            v428.i32[1] = v431;
            v432 = vmla_f32(vsub_f32(a3[2], v428), 0xBF000000BF000000, vsub_f32(v430, v428));
            v433 = vmul_f32(v432, v432);
            v434 = vadd_f32(vzip2_s32(v427, v433), vzip1_s32(v427, v433));
            if ((vcgt_f32(vdup_lane_s32(v434, 1), v434).u32[0] & 1) == 0)
            {
              return 1;
            }

            v5 = a1;
            v299 = a1[1];
            v127 = a1[2];
            v240 = *(v127 + 1297);
          }
        }

        else if (v240 >= v300)
        {
          return 1;
        }

        v5[1] = v127;
        v5[2] = v299;
        v128 = *v5;
        v435 = *(*v5 + 1297);
        v130 = v240 >= v435;
        if (v240 == v435)
        {
          v436 = 0;
          v437 = 0;
          v438 = a3 + 1;
          while (1)
          {
            v439 = *(v127 + v437 + 172);
            if (v439 < a3->f32[v437])
            {
              break;
            }

            v440 = v438->f32[v437];
            v437 = 1;
            v441 = (v439 < v440) & ~v436;
            v436 = 1;
            if ((v441 & 1) == 0)
            {
              v137 = v439 < v440;
              goto LABEL_372;
            }
          }

          v137 = 0;
LABEL_372:
          v442 = 0;
          v443 = 0;
          while (1)
          {
            v259 = *(v128 + v443 + 172);
            if (v259 < a3->f32[v443])
            {
              goto LABEL_376;
            }

            v260 = v438->f32[v443];
            v443 = 1;
            v444 = (v259 < v260) & ~v442;
            v442 = 1;
            if ((v444 & 1) == 0)
            {
              goto LABEL_375;
            }
          }
        }

        break;
      default:
        goto LABEL_22;
    }

    if (v130)
    {
      return 1;
    }

LABEL_369:
    *v5 = vextq_s8(*v5, *v5, 8uLL);
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 != 2)
  {
LABEL_22:
    v40 = a1 + 2;
    v42 = *a1;
    v41 = a1[1];
    v43 = *(v41 + 1297);
    v44 = *(*a1 + 1297);
    if (v43 == v44)
    {
      v45 = 0;
      v46 = 0;
      v47 = a3 + 1;
      while (1)
      {
        v48 = *(v41 + v46 + 172);
        if (v48 < a3->f32[v46])
        {
          break;
        }

        v49 = v47->f32[v46];
        v46 = 1;
        v50 = (v48 < v49) & ~v45;
        v45 = 1;
        if ((v50 & 1) == 0)
        {
          v51 = v48 < v49;
          goto LABEL_51;
        }
      }

      v51 = 0;
LABEL_51:
      v61 = 0;
      v62 = 0;
      while (1)
      {
        v63 = *(v42 + v62 + 172);
        if (v63 < a3->f32[v62])
        {
          break;
        }

        v64 = v47->f32[v62];
        v62 = 1;
        v65 = (v63 < v64) & ~v61;
        v61 = 1;
        if ((v65 & 1) == 0)
        {
          v66 = v63 < v64;
          goto LABEL_56;
        }
      }

      v66 = 0;
LABEL_56:
      if (*(v41 + 844) == 2)
      {
        v53 = v51;
      }

      else
      {
        v53 = 0;
      }

      if (*(v42 + 844) == 2)
      {
        v67 = v66;
      }

      else
      {
        v67 = 0;
      }

      if (((v53 | v67) & 1) == 0 || ((v53 ^ v67) & 1) == 0)
      {
        if (v51 == v66)
        {
          v148.f32[0] = md::Label::boundsForStaging(a1[1]);
          v150.i32[1] = v149;
          v148.i32[1] = v151;
          v152 = vmla_f32(vsub_f32(a3[2], v148), 0xBF000000BF000000, vsub_f32(v150, v148));
          v153 = vmul_f32(v152, v152);
          v154.f32[0] = md::Label::boundsForStaging(v42);
          v5 = a1;
          v156.i32[1] = v155;
          v154.i32[1] = v157;
          v158 = vmla_f32(vsub_f32(a3[2], v154), 0xBF000000BF000000, vsub_f32(v156, v154));
          v159 = vmul_f32(v158, v158);
          v160 = vadd_f32(vzip2_s32(v153, v159), vzip1_s32(v153, v159));
          LOBYTE(v53) = vcgt_f32(vdup_lane_s32(v160, 1), v160).u8[0];
          v41 = a1[1];
          v43 = *(v41 + 1297);
        }

        else
        {
          LOBYTE(v53) = v51;
        }
      }
    }

    else
    {
      LOBYTE(v53) = v43 < v44;
    }

    v161 = *v40;
    v162 = *(*v40 + 1297);
    if (v162 == v43)
    {
      v163 = 0;
      v164 = 0;
      v165 = a3 + 1;
      while (1)
      {
        v166 = *(v161 + v164 + 172);
        if (v166 < a3->f32[v164])
        {
          break;
        }

        v167 = v165->f32[v164];
        v164 = 1;
        v168 = (v166 < v167) & ~v163;
        v163 = 1;
        if ((v168 & 1) == 0)
        {
          v169 = v166 < v167;
          goto LABEL_145;
        }
      }

      v169 = 0;
LABEL_145:
      v170 = 0;
      v171 = 0;
      while (1)
      {
        v172 = *(v41 + v171 + 172);
        if (v172 < a3->f32[v171])
        {
          break;
        }

        v173 = v165->f32[v171];
        v171 = 1;
        v174 = (v172 < v173) & ~v170;
        v170 = 1;
        if ((v174 & 1) == 0)
        {
          v175 = v172 < v173;
          goto LABEL_150;
        }
      }

      v175 = 0;
LABEL_150:
      if (*(v161 + 844) == 2)
      {
        v43 = v169;
      }

      else
      {
        v43 = 0;
      }

      if (*(v41 + 844) == 2)
      {
        v176 = v175;
      }

      else
      {
        v176 = 0;
      }

      if (((v43 | v176) & 1) == 0 || ((v43 ^ v176) & 1) == 0)
      {
        LOBYTE(v43) = v169;
        if (v169 == v175)
        {
          v177.f32[0] = md::Label::boundsForStaging(v161);
          v179.i32[1] = v178;
          v177.i32[1] = v180;
          v181 = vmla_f32(vsub_f32(a3[2], v177), 0xBF000000BF000000, vsub_f32(v179, v177));
          v182 = vmul_f32(v181, v181);
          v183.f32[0] = md::Label::boundsForStaging(v41);
          v5 = a1;
          v185.i32[1] = v184;
          v183.i32[1] = v186;
          v187 = vmla_f32(vsub_f32(a3[2], v183), 0xBF000000BF000000, vsub_f32(v185, v183));
          v188 = vmul_f32(v187, v187);
          v189 = vadd_f32(vzip2_s32(v182, v188), vzip1_s32(v182, v188));
          LOBYTE(v43) = vcgt_f32(vdup_lane_s32(v189, 1), v189).u8[0];
        }
      }
    }

    else
    {
      LOBYTE(v43) = v162 < v43;
    }

    if (v53)
    {
      v190 = *v5;
      if ((v43 & 1) == 0)
      {
        v203 = v5[2];
        *v5 = v5[1];
        v5[1] = v190;
        v204 = *(v203 + 1297);
        v205 = *(v190 + 1297);
        if (v204 == v205)
        {
          v206 = 0;
          v207 = 0;
          v208 = a3 + 1;
          while (1)
          {
            v209 = *(v203 + v207 + 172);
            if (v209 < a3->f32[v207])
            {
              break;
            }

            v210 = v208->f32[v207];
            v207 = 1;
            v211 = (v209 < v210) & ~v206;
            v206 = 1;
            if ((v211 & 1) == 0)
            {
              v212 = v209 < v210;
              goto LABEL_238;
            }
          }

          v212 = 0;
LABEL_238:
          v276 = 0;
          v277 = 0;
          while (1)
          {
            v278 = *(v190 + v277 + 172);
            if (v278 < a3->f32[v277])
            {
              break;
            }

            v279 = v208->f32[v277];
            v277 = 1;
            v280 = (v278 < v279) & ~v276;
            v276 = 1;
            if ((v280 & 1) == 0)
            {
              v281 = v278 < v279;
              goto LABEL_255;
            }
          }

          v281 = 0;
LABEL_255:
          if (*(v203 + 844) == 2)
          {
            v284 = v212;
          }

          else
          {
            v284 = 0;
          }

          if (*(v190 + 844) == 2)
          {
            v285 = v281;
          }

          else
          {
            v285 = 0;
          }

          if (((v284 | v285) & 1) != 0 && ((v284 ^ v285) & 1) != 0 || (v284 = v212, v212 != v281))
          {
            if (!v284)
            {
              goto LABEL_299;
            }
          }

          else
          {
            v342.f32[0] = md::Label::boundsForStaging(v203);
            v344.i32[1] = v343;
            v342.i32[1] = v345;
            v346 = vmla_f32(vsub_f32(a3[2], v342), 0xBF000000BF000000, vsub_f32(v344, v342));
            v347 = vmul_f32(v346, v346);
            v348.f32[0] = md::Label::boundsForStaging(v190);
            v5 = a1;
            v350.i32[1] = v349;
            v348.i32[1] = v351;
            v352 = vmla_f32(vsub_f32(a3[2], v348), 0xBF000000BF000000, vsub_f32(v350, v348));
            v353 = vmul_f32(v352, v352);
            v354 = vadd_f32(vzip2_s32(v347, v353), vzip1_s32(v347, v353));
            if ((vcgt_f32(vdup_lane_s32(v354, 1), v354).u32[0] & 1) == 0)
            {
              goto LABEL_299;
            }
          }
        }

        else if (v204 >= v205)
        {
          goto LABEL_299;
        }

        *(v5 + 1) = vextq_s8(*(v5 + 1), *(v5 + 1), 8uLL);
        goto LABEL_299;
      }

      *v5 = v5[2];
      v5[2] = v190;
    }

    else if (v43)
    {
      v192 = v5[1];
      v191 = v5[2];
      v193 = *v5;
      v5[1] = v191;
      v5[2] = v192;
      v194 = *(v191 + 1297);
      v195 = *(v193 + 1297);
      if (v194 == v195)
      {
        v196 = 0;
        v197 = 0;
        v198 = a3 + 1;
        while (1)
        {
          v199 = *(v191 + v197 + 172);
          if (v199 < a3->f32[v197])
          {
            break;
          }

          v200 = v198->f32[v197];
          v197 = 1;
          v201 = (v199 < v200) & ~v196;
          v196 = 1;
          if ((v201 & 1) == 0)
          {
            v202 = v199 < v200;
            goto LABEL_233;
          }
        }

        v202 = 0;
LABEL_233:
        v270 = 0;
        v271 = 0;
        while (1)
        {
          v272 = *(v193 + v271 + 172);
          if (v272 < a3->f32[v271])
          {
            break;
          }

          v273 = v198->f32[v271];
          v271 = 1;
          v274 = (v272 < v273) & ~v270;
          v270 = 1;
          if ((v274 & 1) == 0)
          {
            v275 = v272 < v273;
            goto LABEL_243;
          }
        }

        v275 = 0;
LABEL_243:
        if (*(v191 + 844) == 2)
        {
          v282 = v202;
        }

        else
        {
          v282 = 0;
        }

        if (*(v193 + 844) == 2)
        {
          v283 = v275;
        }

        else
        {
          v283 = 0;
        }

        if (((v282 | v283) & 1) != 0 && ((v282 ^ v283) & 1) != 0 || (v282 = v202, v202 != v275))
        {
          if (!v282)
          {
            goto LABEL_299;
          }
        }

        else
        {
          v329.f32[0] = md::Label::boundsForStaging(v191);
          v331.i32[1] = v330;
          v329.i32[1] = v332;
          v333 = vmla_f32(vsub_f32(a3[2], v329), 0xBF000000BF000000, vsub_f32(v331, v329));
          v334 = vmul_f32(v333, v333);
          v335.f32[0] = md::Label::boundsForStaging(v193);
          v5 = a1;
          v337.i32[1] = v336;
          v335.i32[1] = v338;
          v339 = vmla_f32(vsub_f32(a3[2], v335), 0xBF000000BF000000, vsub_f32(v337, v335));
          v340 = vmul_f32(v339, v339);
          v341 = vadd_f32(vzip2_s32(v334, v340), vzip1_s32(v334, v340));
          if ((vcgt_f32(vdup_lane_s32(v341, 1), v341).u32[0] & 1) == 0)
          {
            goto LABEL_299;
          }
        }
      }

      else if (v194 >= v195)
      {
        goto LABEL_299;
      }

      *v5 = vextq_s8(*v5, *v5, 8uLL);
    }

LABEL_299:
    v355 = v5 + 3;
    if (v5 + 3 == a2)
    {
      return 1;
    }

    v356 = 0;
    v357 = a3 + 1;
    while (1)
    {
      v358 = *v355;
      v359 = *v40;
      v360 = *(*v355 + 1297);
      v361 = *(*v40 + 1297);
      if (v360 == v361)
      {
        v362 = 0;
        v363 = 0;
        while (1)
        {
          v364 = *(v358 + v363 + 172);
          if (v364 < a3->f32[v363])
          {
            break;
          }

          v365 = v357->f32[v363];
          v363 = 1;
          v366 = (v364 < v365) & ~v362;
          v362 = 1;
          if ((v366 & 1) == 0)
          {
            v367 = v364 < v365;
            goto LABEL_309;
          }
        }

        v367 = 0;
LABEL_309:
        v368 = 0;
        v369 = 0;
        while (1)
        {
          v370 = *(v359 + v369 + 172);
          if (v370 < a3->f32[v369])
          {
            break;
          }

          v371 = v357->f32[v369];
          v369 = 1;
          v372 = (v370 < v371) & ~v368;
          v368 = 1;
          if ((v372 & 1) == 0)
          {
            v373 = v370 < v371;
            goto LABEL_314;
          }
        }

        v373 = 0;
LABEL_314:
        if (*(v358 + 844) == 2)
        {
          v374 = v367;
        }

        else
        {
          v374 = 0;
        }

        if (*(v359 + 844) == 2)
        {
          v375 = v373;
        }

        else
        {
          v375 = 0;
        }

        if (((v374 | v375) & 1) != 0 && ((v374 ^ v375) & 1) != 0 || (v374 = v367, v367 != v373))
        {
          if (!v374)
          {
            goto LABEL_357;
          }
        }

        else
        {
          v376.f32[0] = md::Label::boundsForStaging(*v355);
          v378.i32[1] = v377;
          v376.i32[1] = v379;
          v380 = vmla_f32(vsub_f32(a3[2], v376), 0xBF000000BF000000, vsub_f32(v378, v376));
          v381 = vmul_f32(v380, v380);
          v382.f32[0] = md::Label::boundsForStaging(v359);
          v384.i32[1] = v383;
          v382.i32[1] = v385;
          v386 = vmla_f32(vsub_f32(a3[2], v382), 0xBF000000BF000000, vsub_f32(v384, v382));
          v387 = vmul_f32(v386, v386);
          v388 = vadd_f32(vzip2_s32(v381, v387), vzip1_s32(v381, v387));
          if ((vcgt_f32(vdup_lane_s32(v388, 1), v388).u32[0] & 1) == 0)
          {
            v5 = a1;
            goto LABEL_357;
          }

          v358 = *v355;
          v5 = a1;
        }
      }

      else if (v360 >= v361)
      {
        goto LABEL_357;
      }

      v389 = v355;
      while (1)
      {
        *v389 = *v40;
        if (v40 == v5)
        {
          break;
        }

        v389 = v40;
        v391 = *--v40;
        v390 = v391;
        v392 = *(v358 + 1297);
        v393 = *(v391 + 1297);
        if (v392 == v393)
        {
          v394 = 0;
          v395 = 0;
          while (1)
          {
            v396 = *(v358 + v395 + 172);
            if (v396 < a3->f32[v395])
            {
              break;
            }

            v397 = v357->f32[v395];
            v395 = 1;
            v398 = (v396 < v397) & ~v394;
            v394 = 1;
            if ((v398 & 1) == 0)
            {
              v399 = v396 < v397;
              goto LABEL_337;
            }
          }

          v399 = 0;
LABEL_337:
          v400 = 0;
          v401 = 0;
          while (1)
          {
            v402 = *(v390 + v401 + 172);
            if (v402 < a3->f32[v401])
            {
              break;
            }

            v403 = v357->f32[v401];
            v401 = 1;
            v404 = (v402 < v403) & ~v400;
            v400 = 1;
            if ((v404 & 1) == 0)
            {
              v405 = v402 < v403;
              goto LABEL_342;
            }
          }

          v405 = 0;
LABEL_342:
          if (*(v358 + 844) == 2)
          {
            v406 = v399;
          }

          else
          {
            v406 = 0;
          }

          if (*(v390 + 844) == 2)
          {
            v407 = v405;
          }

          else
          {
            v407 = 0;
          }

          if (((v406 | v407) & 1) != 0 && ((v406 ^ v407) & 1) != 0 || (LOBYTE(v406) = v399, v399 != v405))
          {
            if ((v406 & 1) == 0)
            {
              goto LABEL_356;
            }
          }

          else
          {
            v408.f32[0] = md::Label::boundsForStaging(v358);
            v410.i32[1] = v409;
            v408.i32[1] = v411;
            v412 = vmla_f32(vsub_f32(a3[2], v408), 0xBF000000BF000000, vsub_f32(v410, v408));
            v413 = vmul_f32(v412, v412);
            v414.f32[0] = md::Label::boundsForStaging(v390);
            v5 = a1;
            v416.i32[1] = v415;
            v414.i32[1] = v417;
            v418 = vmla_f32(vsub_f32(a3[2], v414), 0xBF000000BF000000, vsub_f32(v416, v414));
            v419 = vmul_f32(v418, v418);
            v420 = vadd_f32(vzip2_s32(v413, v419), vzip1_s32(v413, v419));
            if ((vcgt_f32(vdup_lane_s32(v420, 1), v420).u32[0] & 1) == 0)
            {
              goto LABEL_356;
            }
          }
        }

        else if (v392 >= v393)
        {
          goto LABEL_356;
        }
      }

      v389 = v5;
LABEL_356:
      *v389 = v358;
      if (++v356 == 8)
      {
        return v355 + 1 == a2;
      }

LABEL_357:
      v40 = v355++;
      if (v355 == a2)
      {
        return 1;
      }
    }
  }

  v7 = *(a2 - 1);
  v8 = *v5;
  v9 = *(v7 + 1297);
  v10 = *(*v5 + 1297);
  if (v9 != v10)
  {
    if (v9 >= v10)
    {
      return 1;
    }

    goto LABEL_182;
  }

  v11 = 0;
  v12 = 0;
  v13 = a3 + 1;
  while (1)
  {
    v14 = *(v7 + v12 + 172);
    if (v14 < a3->f32[v12])
    {
      break;
    }

    v15 = v13->f32[v12];
    v12 = 1;
    v16 = (v14 < v15) & ~v11;
    v11 = 1;
    if ((v16 & 1) == 0)
    {
      v17 = v14 < v15;
      goto LABEL_67;
    }
  }

  v17 = 0;
LABEL_67:
  v68 = 0;
  v69 = 0;
  while (1)
  {
    v70 = *(v8 + v69 + 172);
    if (v70 < a3->f32[v69])
    {
      break;
    }

    v71 = v13->f32[v69];
    v69 = 1;
    v72 = (v70 < v71) & ~v68;
    v68 = 1;
    if ((v72 & 1) == 0)
    {
      v73 = v70 < v71;
      goto LABEL_72;
    }
  }

  v73 = 0;
LABEL_72:
  if (*(v7 + 844) == 2)
  {
    v74 = v17;
  }

  else
  {
    v74 = 0;
  }

  if (*(v8 + 844) == 2)
  {
    v75 = v73;
  }

  else
  {
    v75 = 0;
  }

  if (((v74 | v75) & 1) != 0 && ((v74 ^ v75) & 1) != 0 || (v74 = v17, v17 != v73))
  {
    if (!v74)
    {
      return 1;
    }

    goto LABEL_182;
  }

  v213.f32[0] = md::Label::boundsForStaging(v7);
  v215.i32[1] = v214;
  v213.i32[1] = v216;
  v217 = vmla_f32(vsub_f32(a3[2], v213), 0xBF000000BF000000, vsub_f32(v215, v213));
  v218 = vmul_f32(v217, v217);
  v219.f32[0] = md::Label::boundsForStaging(v8);
  v221.i32[1] = v220;
  v219.i32[1] = v222;
  v223 = vmla_f32(vsub_f32(a3[2], v219), 0xBF000000BF000000, vsub_f32(v221, v219));
  v224 = vmul_f32(v223, v223);
  v225 = vadd_f32(vzip2_s32(v218, v224), vzip1_s32(v218, v224));
  if (vcgt_f32(vdup_lane_s32(v225, 1), v225).u32[0])
  {
    v5 = a1;
    v8 = *a1;
    v7 = *(a2 - 1);
LABEL_182:
    *v5 = v7;
LABEL_183:
    *(a2 - 1) = v8;
  }

  return 1;
}

void geo::small_vector_base<md::Label *>::grow(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = (1 << -__clz(v5 + 1));
  if (v5 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = v8;
  }

  v10 = malloc_type_malloc(8 * v9, 0x2004093837F09uLL);
  v11 = v10;
  v12 = *a1;
  v13 = *(a1 + 8);
  if (*a1 != v13)
  {
    v14 = v10;
    do
    {
      v15 = *v12++;
      *v14++ = v15;
    }

    while (v12 != v13);
  }

  if (v3 != v6)
  {
    free(*a1);
  }

  *a1 = v11;
  *(a1 + 8) = v11 + v4 - v3;
  *(a1 + 24) = v9;
}

void md::NamedLabelDedupingGroup::~NamedLabelDedupingGroup(md::NamedLabelDedupingGroup *this)
{
  *this = off_1F2A55B58;
  v1 = (this + 8);
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 40));
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);

  JUMPOUT(0x1B8C62190);
}

{
  *this = off_1F2A55B58;
  v1 = (this + 8);
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 40));
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);
}

void md::MuninPointLabelDedupingGroup::prepareForCollision(md::MuninPointLabelDedupingGroup *this, md::LabelManager *a2)
{
  *(this + 6) = *(this + 5);
  *(this + 9) = 0;
  v4 = v21;
  v17 = v21;
  v18 = v21;
  v19 = v21;
  v20 = 5;
  v5 = *(this + 1);
  v6 = *(this + 2);
  if (v5 == v6)
  {
    v8 = v21;
  }

  else
  {
    do
    {
      v7 = *v5;
      if ((*(**v5 + 16))(*v5))
      {
        v22 = v7;
        geo::small_vector_base<md::Label *>::push_back(&v17, &v22);
      }

      ++v5;
    }

    while (v5 != v6);
    v4 = v17;
    v8 = v18;
  }

  if (v8 - v4 == 8)
  {
    v9 = *v4;
  }

  else
  {
    v10 = (v8 - v4) >> 3;
    if (v10 < 2)
    {
      goto LABEL_22;
    }

    v22 = *(a2 + 53) + 1120;
    v11 = 126 - 2 * __clz(v10);
    if (v8 == v4)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    std::__introsort<std::_ClassicAlgPolicy,md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **,false>(v4, v8, &v22, v12, 1);
    v4 = v17;
    v13 = v18;
    if (v17 == v18)
    {
      v9 = 0;
    }

    else
    {
      v14 = 0;
      v9 = 0;
      v15 = v17;
      do
      {
        v16 = *v15;
        *(*v15 + 8) = v14;
        if (!v9 || *(v16 + 201) < v9[201])
        {
          v9 = v16;
        }

        ++v15;
        ++v14;
      }

      while (v15 != v13);
    }
  }

  *(this + 9) = v9;
LABEL_22:
  if (v4 != v19)
  {
    free(v4);
  }
}

void sub_1B2E60A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11)
{
  if (a9 != a11)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **,false>(uint64_t result, md::Label **a2, uint64_t *a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 1;
  v10 = v8;
  v124 = a2;
  while (1)
  {
    v8 = v10;
    v11 = a2 - v10;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v9, *v10);
      if (result)
      {
        v78 = *v10;
        *v10 = *v9;
LABEL_103:
        *v9 = v78;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v81 = (v10 + 1);
      v83 = v10 == a2 || v81 == a2;
      if (a5)
      {
        if (!v83)
        {
          v84 = 0;
          v85 = v10;
          do
          {
            v87 = *v85;
            v86 = v85[1];
            v85 = v81;
            result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v86, v87);
            if (result)
            {
              v88 = *v85;
              v89 = v84;
              while (1)
              {
                *(v10 + v89 + 8) = *(v10 + v89);
                if (!v89)
                {
                  break;
                }

                result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v88, *(v10 + v89 - 8));
                v89 -= 8;
                if ((result & 1) == 0)
                {
                  v90 = (v10 + v89 + 8);
                  goto LABEL_125;
                }
              }

              v90 = v10;
LABEL_125:
              *v90 = v88;
            }

            v81 = v85 + 1;
            v84 += 8;
          }

          while (v85 + 1 != a2);
        }
      }

      else if (!v83)
      {
        do
        {
          v119 = *v8;
          v118 = *(v8 + 8);
          v8 = v81;
          result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v118, v119);
          if (result)
          {
            v120 = *v8;
            v121 = v8;
            do
            {
              v122 = v121;
              v123 = *--v121;
              *v122 = v123;
              result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v120, *(v122 - 2));
            }

            while ((result & 1) != 0);
            *v121 = v120;
          }

          v81 = (v8 + 8);
        }

        while ((v8 + 8) != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v91 = (v11 - 2) >> 1;
        v126 = v91;
        do
        {
          v92 = v91;
          if (v126 >= v91)
          {
            v93 = (2 * v91) | 1;
            v94 = v8 + 8 * v93;
            if (2 * v91 + 2 < v11 && md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v94, *(v94 + 8)))
            {
              v94 += 8;
              v93 = 2 * v92 + 2;
            }

            v95 = (v8 + 8 * v92);
            result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v94, *v95);
            if ((result & 1) == 0)
            {
              v96 = *v95;
              do
              {
                v97 = v94;
                *v95 = *v94;
                if (v126 < v93)
                {
                  break;
                }

                v98 = (2 * v93) | 1;
                v94 = v8 + 8 * v98;
                v99 = 2 * v93 + 2;
                if (v99 < v11 && md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v94, *(v94 + 8)))
                {
                  v94 += 8;
                  v98 = v99;
                }

                result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v94, v96);
                v95 = v97;
                v93 = v98;
              }

              while (!result);
              *v97 = v96;
            }
          }

          v91 = v92 - 1;
        }

        while (v92);
        v100 = v124;
        do
        {
          v101 = v100;
          v102 = 0;
          v127 = *v8;
          v103 = v8;
          do
          {
            v104 = &v103[v102];
            v105 = v104 + 1;
            v106 = (2 * v102) | 1;
            v107 = 2 * v102 + 2;
            if (v107 >= v11)
            {
              v102 = (2 * v102) | 1;
            }

            else
            {
              v109 = v104[2];
              v108 = v104 + 2;
              result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(v108 - 1), v109);
              if (result)
              {
                v105 = v108;
                v102 = v107;
              }

              else
              {
                v102 = v106;
              }
            }

            *v103 = *v105;
            v103 = v105;
          }

          while (v102 <= ((v11 - 2) >> 1));
          v100 = v101 - 1;
          if (v105 == v101 - 1)
          {
            *v105 = v127;
          }

          else
          {
            *v105 = *v100;
            *v100 = v127;
            v110 = (v105 - v8 + 8) >> 3;
            v111 = v110 < 2;
            v112 = v110 - 2;
            if (!v111)
            {
              v113 = v112 >> 1;
              v114 = (v8 + 8 * (v112 >> 1));
              result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v114, *v105);
              if (result)
              {
                v115 = *v105;
                do
                {
                  v116 = v114;
                  *v105 = *v114;
                  if (!v113)
                  {
                    break;
                  }

                  v113 = (v113 - 1) >> 1;
                  v114 = (v8 + 8 * v113);
                  result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v114, v115);
                  v105 = v116;
                }

                while ((result & 1) != 0);
                *v116 = v115;
              }
            }
          }

          v111 = v11-- <= 2;
        }

        while (!v111);
      }

      return result;
    }

    v12 = v11 >> 1;
    if (v11 < 0x81)
    {
      v16 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v10, v10[v12]);
      v17 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v9, *v10);
      if (v16)
      {
        v18 = v10[v12];
        if (v17)
        {
          v10[v12] = *v9;
          *v9 = v18;
        }

        else
        {
          v10[v12] = *v10;
          *v10 = v18;
          if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v9, v18))
          {
            v30 = *v10;
            *v10 = *v9;
            *v9 = v30;
          }
        }
      }

      else if (v17)
      {
        v21 = *v10;
        *v10 = *v9;
        *v9 = v21;
        if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v10, v10[v12]))
        {
          v22 = v10[v12];
          v10[v12] = *v10;
          *v10 = v22;
        }
      }

      goto LABEL_55;
    }

    v13 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v10[v12], *v10);
    v14 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v9, v10[v12]);
    if (v13)
    {
      v15 = *v10;
      if (v14)
      {
        *v10 = *v9;
        *v9 = v15;
      }

      else
      {
        *v10 = v10[v12];
        v10[v12] = v15;
        if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v9, v15))
        {
          v23 = v10[v12];
          v10[v12] = *v9;
          *v9 = v23;
        }
      }
    }

    else if (v14)
    {
      v19 = v10[v12];
      v10[v12] = *v9;
      *v9 = v19;
      if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v10[v12], *v10))
      {
        v20 = *v10;
        *v10 = v10[v12];
        v10[v12] = v20;
      }
    }

    v24 = v12 - 1;
    v25 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(v8 + 8 * (v12 - 1)), *(v8 + 8));
    v26 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(a2 - 2), *(v8 + 8 * (v12 - 1)));
    if (v25)
    {
      v27 = *(v8 + 8);
      if (v26)
      {
        *(v8 + 8) = *(a2 - 2);
        *(a2 - 2) = v27;
      }

      else
      {
        *(v8 + 8) = *(v8 + 8 * v24);
        *(v8 + 8 * v24) = v27;
        if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(a2 - 2), v27))
        {
          v31 = *(v8 + 8 * v24);
          *(v8 + 8 * v24) = *(a2 - 2);
          *(a2 - 2) = v31;
        }
      }
    }

    else if (v26)
    {
      v28 = *(v8 + 8 * v24);
      *(v8 + 8 * v24) = *(a2 - 2);
      *(a2 - 2) = v28;
      if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(v8 + 8 * v24), *(v8 + 8)))
      {
        v29 = *(v8 + 8);
        *(v8 + 8) = *(v8 + 8 * v24);
        *(v8 + 8 * v24) = v29;
      }
    }

    v32 = a2;
    v33 = v12 + 1;
    v34 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(v8 + 8 * (v12 + 1)), *(v8 + 16));
    v35 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(v32 - 3), *(v8 + 8 * (v12 + 1)));
    if (v34)
    {
      v36 = *(v8 + 16);
      if (v35)
      {
        *(v8 + 16) = *(v124 - 3);
        *(v124 - 3) = v36;
      }

      else
      {
        *(v8 + 16) = *(v8 + 8 * v33);
        *(v8 + 8 * v33) = v36;
        if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(v124 - 3), v36))
        {
          v39 = *(v8 + 8 * v33);
          *(v8 + 8 * v33) = *(v124 - 3);
          *(v124 - 3) = v39;
        }
      }
    }

    else if (v35)
    {
      v37 = *(v8 + 8 * v33);
      *(v8 + 8 * v33) = *(v124 - 3);
      *(v124 - 3) = v37;
      if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(v8 + 8 * v33), *(v8 + 16)))
      {
        v38 = *(v8 + 16);
        *(v8 + 16) = *(v8 + 8 * v33);
        *(v8 + 8 * v33) = v38;
      }
    }

    v40 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(v8 + 8 * v12), *(v8 + 8 * v24));
    v41 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(v8 + 8 * v33), *(v8 + 8 * v12));
    if (!v40)
    {
      v43 = *(v8 + 8 * v12);
      if (!v41)
      {
        goto LABEL_54;
      }

      v44 = *(v8 + 8 * v33);
      *(v8 + 8 * v12) = v44;
      *(v8 + 8 * v33) = v43;
      v45 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v44, *(v8 + 8 * v24));
      v43 = *(v8 + 8 * v12);
      if (!v45)
      {
        goto LABEL_54;
      }

      v46 = *(v8 + 8 * v24);
      *(v8 + 8 * v24) = v43;
      *(v8 + 8 * v12) = v46;
      goto LABEL_53;
    }

    v42 = *(v8 + 8 * v24);
    if (v41)
    {
      *(v8 + 8 * v24) = *(v8 + 8 * v33);
      *(v8 + 8 * v33) = v42;
      v43 = *(v8 + 8 * v12);
    }

    else
    {
      *(v8 + 8 * v24) = *(v8 + 8 * v12);
      *(v8 + 8 * v12) = v42;
      v47 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(v8 + 8 * v33), v42);
      v43 = *(v8 + 8 * v12);
      if (v47)
      {
        v46 = *(v8 + 8 * v33);
        *(v8 + 8 * v12) = v46;
        *(v8 + 8 * v33) = v43;
LABEL_53:
        v43 = v46;
      }
    }

LABEL_54:
    a2 = v124;
    v48 = *v8;
    *v8 = v43;
    *(v8 + 8 * v12) = v48;
LABEL_55:
    --a4;
    v49 = *v8;
    if ((a5 & 1) != 0 || (v50 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(v8 - 8), *v8), v49 = *v8, v50))
    {
      v51 = v8;
      do
      {
        v52 = v51;
        v53 = v51[1];
        ++v51;
      }

      while (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v53, v49));
      v54 = a2;
      if (v52 == v8)
      {
        v54 = a2;
        do
        {
          if (v51 >= v54)
          {
            break;
          }

          v56 = *--v54;
        }

        while (!md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v56, v49));
      }

      else
      {
        do
        {
          v55 = *--v54;
        }

        while (!md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v55, v49));
      }

      if (v51 < v54)
      {
        v57 = v51;
        v58 = v54;
        do
        {
          v59 = *v57;
          *v57 = *v58;
          *v58 = v59;
          do
          {
            v52 = v57;
            v60 = v57[1];
            ++v57;
          }

          while (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v60, v49));
          do
          {
            v61 = *--v58;
          }

          while (!md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v61, v49));
        }

        while (v57 < v58);
      }

      if (v52 != v8)
      {
        *v8 = *v52;
      }

      *v52 = v49;
      a2 = v124;
      if (v51 < v54)
      {
        goto LABEL_76;
      }

      v62 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **>(v8, v52, a3);
      v10 = v52 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **>((v52 + 1), v124, a3);
      if (result)
      {
        a2 = v52;
        if (!v62)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v62)
      {
LABEL_76:
        result = std::__introsort<std::_ClassicAlgPolicy,md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **,false>(v8, v52, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v52 + 1;
      }
    }

    else
    {
      result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v8, *v9);
      if (result)
      {
        v10 = v8;
        do
        {
          v63 = v10[1];
          ++v10;
          result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v49, v63);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v64 = v8 + 8;
        do
        {
          v10 = v64;
          if (v64 >= a2)
          {
            break;
          }

          v64 += 8;
          result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v49, *v10);
        }

        while (!result);
      }

      v65 = a2;
      if (v10 < a2)
      {
        v65 = a2;
        do
        {
          v66 = *--v65;
          result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v49, v66);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v65)
      {
        v67 = *v10;
        *v10 = *v65;
        *v65 = v67;
        do
        {
          v68 = v10[1];
          ++v10;
        }

        while (!md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v49, v68));
        do
        {
          v69 = *--v65;
          result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v49, v69);
        }

        while ((result & 1) != 0);
      }

      v70 = v10 - 1;
      if (v10 - 1 != v8)
      {
        *v8 = *v70;
      }

      a5 = 0;
      *v70 = v49;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **,0>(v10, v10 + 1, v10 + 2, v9, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **,0>(v10, v10 + 1, v10 + 2, v10 + 3, a3);
      result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v9, v10[3]);
      if (!result)
      {
        return result;
      }

      v71 = v10[3];
      v10[3] = *v9;
      *v9 = v71;
      result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v10[3], v10[2]);
      if (!result)
      {
        return result;
      }

      v73 = v10[2];
      v72 = v10[3];
      v74 = v10[1];
      v10[2] = v72;
      v10[3] = v73;
      result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v72, v74);
      if (!result)
      {
        return result;
      }

      v76 = v10[1];
      v75 = v10[2];
      v77 = *v10;
      v10[1] = v75;
      v10[2] = v76;
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v79 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v10[1], *v10);
  result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v9, v10[1]);
  if (!v79)
  {
    if (!result)
    {
      return result;
    }

    v117 = v10[1];
    v10[1] = *v9;
    *v9 = v117;
    v77 = *v10;
    v75 = v10[1];
LABEL_164:
    result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v75, v77);
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v80 = *v10;
  if (result)
  {
    *v10 = *v9;
    *v9 = v80;
  }

  else
  {
    *v10 = v10[1];
    v10[1] = v80;
    result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v9, v80);
    if (result)
    {
      v78 = v10[1];
      v10[1] = *v9;
      goto LABEL_103;
    }
  }

  return result;
}

BOOL md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(uint64_t *a1, md::Label *this, unint64_t a3)
{
  result = *(this + 1291) == 18;
  if (result != (*(a3 + 1291) != 18))
  {
    v7 = &v37;
    v8 = *(this + 197);
    v9 = *(a3 + 788);
    v10 = *a1;
    v11 = md::Label::boundsForStaging(this);
    v12 = 0;
    v13 = 0;
    v37 = v11;
    v38 = v14;
    v39 = v15;
    v40 = v16;
    while (*(v10 + 8 + 4 * v13) > *v7)
    {
      v17 = *(v10 + 4 * v13);
      v18 = *(&v39 + v13);
      v13 = 1;
      v19 = (v17 < v18) & ~v12;
      v12 = 1;
      v7 = &v38;
      if ((v19 & 1) == 0)
      {
        v20 = v17 < v18;
        goto LABEL_7;
      }
    }

    v20 = 0;
LABEL_7:
    v21 = *a1;
    v22 = md::Label::boundsForStaging(a3);
    v23 = 0;
    v24 = 0;
    v37 = v22;
    v38 = v25;
    v26 = &v37;
    v39 = v27;
    v40 = v28;
    while (*(v21 + 8 + 4 * v24) > *v26)
    {
      v29 = *(v21 + 4 * v24);
      v30 = *(&v39 + v24);
      v24 = 1;
      v31 = (v29 < v30) & ~v23;
      v23 = 1;
      v26 = &v38;
      if ((v31 & 1) == 0)
      {
        v32 = v29 < v30;
        goto LABEL_12;
      }
    }

    v32 = 0;
LABEL_12:
    v33 = *(this + 844) == 2 && v20;
    result = v33 & (v8 > 0.0);
    v34 = *(a3 + 844) == 2 && v32;
    if (result == (v34 && v9 > 0.0))
    {
      result = v20;
      if (v20 == v32)
      {
        v35 = *(this + 197);
        v36 = *(a3 + 788);
        if (v35 == v36)
        {
          return this < a3;
        }

        else
        {
          return v35 > v36;
        }
      }
    }
  }

  return result;
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **,0>(unint64_t *a1, md::Label **a2, md::Label **a3, md::Label **a4, uint64_t *a5)
{
  v10 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a5, *a2, *a1);
  v11 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a5, *a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a5, *a3, v12))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a5, *a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a5, *a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a5, *a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a5, *a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **>(uint64_t a1, md::Label **a2, uint64_t *a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(a1 + 8), *a1);
        v16 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(a2 - 1), *(a1 + 8));
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = *(a1 + 8);
          *(a1 + 8) = v17;
          if (!md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(a2 - 1), v17))
          {
            return 1;
          }

          v7 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = *(a1 + 8);
        *(a1 + 8) = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = *a1;
        v12 = *(a1 + 8);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), a3);
        if (!md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(a2 - 1), *(a1 + 24)))
        {
          return 1;
        }

        v8 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(a1 + 24), *(a1 + 16)))
        {
          return 1;
        }

        v10 = *(a1 + 16);
        v9 = *(a1 + 24);
        v11 = *(a1 + 8);
        *(a1 + 16) = v9;
        *(a1 + 24) = v10;
        if (!md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v9, v11))
        {
          return 1;
        }

        v13 = *(a1 + 8);
        v12 = *(a1 + 16);
        v14 = *a1;
        *(a1 + 8) = v12;
        *(a1 + 16) = v13;
        break;
      default:
        goto LABEL_17;
    }

    if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v12, v14))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v18 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(a1 + 8), *a1);
  v19 = (a1 + 16);
  v20 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(a1 + 16), *(a1 + 8));
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v21;
    }

    else
    {
      v26 = *(a1 + 16);
      *a1 = *(a1 + 8);
      *(a1 + 8) = v21;
      if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v26, v21))
      {
        *(a1 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
      }
    }
  }

  else if (v20)
  {
    v24 = *(a1 + 8);
    v23 = *(a1 + 16);
    v25 = *a1;
    *(a1 + 8) = v23;
    *(a1 + 16) = v24;
    if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v23, v25))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v27 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v27, *v19))
    {
      v30 = *v27;
      v31 = v28;
      while (1)
      {
        v32 = a1 + v31;
        *(a1 + v31 + 24) = *(a1 + v31 + 16);
        if (v31 == -16)
        {
          break;
        }

        v31 -= 8;
        if (!md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v30, *(v32 + 8)))
        {
          v33 = (a1 + v31 + 24);
          goto LABEL_40;
        }
      }

      v33 = a1;
LABEL_40:
      *v33 = v30;
      if (++v29 == 8)
      {
        return v27 + 1 == a2;
      }
    }

    v19 = v27;
    v28 += 8;
    if (++v27 == a2)
    {
      return 1;
    }
  }
}

void md::MuninPointLabelDedupingGroup::~MuninPointLabelDedupingGroup(md::MuninPointLabelDedupingGroup *this)
{
  *this = off_1F2A55B58;
  v1 = (this + 8);
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 40));
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);

  JUMPOUT(0x1B8C62190);
}

{
  *this = off_1F2A55B58;
  v1 = (this + 8);
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 40));
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);
}

void md::MuninRoadLabelDedupingGroup::prepareForCollision(md::MuninRoadLabelDedupingGroup *this, md::LabelManager *a2)
{
  v2 = a2;
  *(this + 6) = *(this + 5);
  *(this + 9) = 0;
  v4 = v30;
  v27 = v30;
  v28 = v30;
  v29 = 5;
  v5 = *(this + 1);
  v6 = *(this + 2);
  if (v5 == v6)
  {
    v18 = v30;
  }

  else
  {
    do
    {
      v7 = *v5;
      if ((*(**v5 + 16))(*v5))
      {
        v8 = v28;
        v9 = v28 - v27;
        v10 = v28 - v27 + 1;
        if (v29 < v10)
        {
          v11 = (1 << -__clz(v29 + 1));
          if (v29 >= 0xFFFFFFFFFFFFFFFELL)
          {
            v11 = 1;
          }

          if (v11 <= v10)
          {
            v12 = v28 - v27 + 1;
          }

          else
          {
            v12 = v11;
          }

          v13 = malloc_type_malloc(8 * v12, 0x2004093837F09uLL);
          v14 = v13;
          v15 = v27;
          if (v27 != v28)
          {
            v16 = v13;
            do
            {
              v17 = *v15++;
              *v16++ = v17;
            }

            while (v15 != v28);
          }

          if (v27 != v30)
          {
            free(v27);
          }

          v8 = (v14 + v9);
          v27 = v14;
          v28 = (v14 + v9);
          v29 = v12;
        }

        *v8 = v7;
        ++v28;
      }

      ++v5;
    }

    while (v5 != v6);
    v4 = v27;
    v18 = v28;
    v2 = a2;
  }

  if (v18 - v4 != 8)
  {
    v19 = v18 - v4;
    if (v19 < 2)
    {
      goto LABEL_28;
    }

    v20 = *(*(v2 + 53) + 1072);
    v31 = v20;
    v21 = 126 - 2 * __clz(v19);
    if (v18 == v4)
    {
      v22 = 0;
    }

    else
    {
      v22 = v21;
    }

    std::__introsort<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,false>(v4, v18, &v31, v22, 1, *&v20);
    v4 = v27;
    if (v27 != v28)
    {
      v23 = 0;
      v24 = v27;
      do
      {
        v25 = *v24++;
        *(v25 + 32) = v23++;
      }

      while (v24 != v28);
    }
  }

  *(this + 9) = *v4;
LABEL_28:
  if (v4 != v30)
  {
    free(v4);
  }
}

void sub_1B2E61DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12)
{
  if (a10 != a12)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

float std::__introsort<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,false>(unint64_t *i, unint64_t *a2, uint64_t a3, uint64_t a4, char a5, float result)
{
  v9 = a3 + 8;
LABEL_2:
  v520 = a2 - 1;
  while (1)
  {
    v10 = i;
    v11 = a2 - i;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(i, i + 1, v520, a3);
          return result;
        case 4:

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(i, i + 1, i + 2, v520, a3);
        case 5:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(i, i + 1, i + 2, i + 3, v520, a3);
      }

      goto LABEL_10;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      break;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v264 = i + 1;
      v265 = i == a2 || v264 == a2;
      v266 = v265;
      if (a5)
      {
        if (v266)
        {
          return result;
        }

        v267 = i;
        while (1)
        {
          v268 = v267;
          v267 = v264;
          v270 = *v268;
          v269 = v268[1];
          v271 = (*(**(v269 + 64) + 256))(*(v269 + 64));
          v272 = 0;
          v273 = 0;
          while (*(v9 + 4 * v273) > *(v271 + 4 * v273))
          {
            v274 = *(a3 + 4 * v273);
            v275 = *(v271 + 8 + 4 * v273);
            v273 = 1;
            v276 = (v274 < v275) & ~v272;
            v272 = 1;
            if ((v276 & 1) == 0)
            {
              v277 = v274 < v275;
              goto LABEL_372;
            }
          }

          v277 = 0;
LABEL_372:
          v278 = (*(**(v270 + 64) + 256))(*(v270 + 64));
          v279 = 0;
          v280 = 0;
          while (1)
          {
            result = *(v9 + 4 * v280);
            if (result <= *(v278 + 4 * v280))
            {
              break;
            }

            result = *(a3 + 4 * v280);
            v281 = *(v278 + 8 + 4 * v280);
            v280 = 1;
            v282 = (result < v281) & ~v279;
            v279 = 1;
            if ((v282 & 1) == 0)
            {
              v283 = result < v281;
              goto LABEL_377;
            }
          }

          v283 = 0;
LABEL_377:
          if (*(v269 + 493) == 2)
          {
            v284 = v277;
          }

          else
          {
            v284 = 0;
          }

          if (*(v270 + 493) == 2)
          {
            v285 = v283;
          }

          else
          {
            v285 = 0;
          }

          if (((v284 | v285) & 1) != 0 && ((v284 ^ v285) & 1) != 0 || (v284 = v277, v277 != v283))
          {
            if (v284)
            {
              goto LABEL_387;
            }
          }

          else
          {
            result = *(v269 + 476);
            v306 = *(v270 + 476);
            if (result == v306)
            {
              if (v269 < v270)
              {
LABEL_387:
                v286 = v268[1];
                v268[1] = *v268;
                v287 = i;
                if (v268 != i)
                {
                  do
                  {
                    v287 = v268;
                    v289 = *--v268;
                    v288 = v289;
                    v290 = (*(**(v286 + 64) + 256))(*(v286 + 64));
                    v291 = 0;
                    v292 = 0;
                    while (*(v9 + 4 * v292) > *(v290 + 4 * v292))
                    {
                      v293 = *(a3 + 4 * v292);
                      v294 = *(v290 + 8 + 4 * v292);
                      v292 = 1;
                      v295 = (v293 < v294) & ~v291;
                      v291 = 1;
                      if ((v295 & 1) == 0)
                      {
                        v296 = v293 < v294;
                        goto LABEL_393;
                      }
                    }

                    v296 = 0;
LABEL_393:
                    v297 = (*(**(v288 + 64) + 256))(*(v288 + 64));
                    v298 = 0;
                    v299 = 0;
                    while (1)
                    {
                      result = *(v9 + 4 * v299);
                      if (result <= *(v297 + 4 * v299))
                      {
                        break;
                      }

                      result = *(a3 + 4 * v299);
                      v300 = *(v297 + 8 + 4 * v299);
                      v299 = 1;
                      v301 = (result < v300) & ~v298;
                      v298 = 1;
                      if ((v301 & 1) == 0)
                      {
                        v302 = result < v300;
                        goto LABEL_398;
                      }
                    }

                    v302 = 0;
LABEL_398:
                    if (*(v286 + 493) == 2)
                    {
                      v303 = v296;
                    }

                    else
                    {
                      v303 = 0;
                    }

                    if (*(v288 + 493) == 2)
                    {
                      v304 = v302;
                    }

                    else
                    {
                      v304 = 0;
                    }

                    if (((v303 | v304) & 1) != 0 && ((v303 ^ v304) & 1) != 0 || (v303 = v296, v296 != v302))
                    {
                      if (!v303)
                      {
                        goto LABEL_418;
                      }
                    }

                    else
                    {
                      result = *(v286 + 476);
                      v305 = *(v288 + 476);
                      if (result == v305)
                      {
                        if (v286 >= v288)
                        {
                          goto LABEL_418;
                        }
                      }

                      else if (result <= v305)
                      {
                        goto LABEL_418;
                      }
                    }

                    *v287 = *(v287 - 1);
                  }

                  while (v268 != i);
                  v287 = i;
                }

LABEL_418:
                *v287 = v286;
              }
            }

            else if (result > v306)
            {
              goto LABEL_387;
            }
          }

          v264 = v267 + 1;
          if (v267 + 1 == a2)
          {
            return result;
          }
        }
      }

      if (v266)
      {
        return result;
      }

      while (1)
      {
        v473 = v10;
        v10 = v264;
        v475 = *v473;
        v474 = v473[1];
        v476 = (*(**(v474 + 64) + 256))(*(v474 + 64));
        v477 = 0;
        v478 = 0;
        while (*(v9 + 4 * v478) > *(v476 + 4 * v478))
        {
          v479 = *(a3 + 4 * v478);
          v480 = *(v476 + 8 + 4 * v478);
          v478 = 1;
          v481 = (v479 < v480) & ~v477;
          v477 = 1;
          if ((v481 & 1) == 0)
          {
            v482 = v479 < v480;
            goto LABEL_654;
          }
        }

        v482 = 0;
LABEL_654:
        v483 = (*(**(v475 + 64) + 256))(*(v475 + 64));
        v484 = 0;
        v485 = 0;
        while (1)
        {
          result = *(v9 + 4 * v485);
          if (result <= *(v483 + 4 * v485))
          {
            break;
          }

          result = *(a3 + 4 * v485);
          v486 = *(v483 + 8 + 4 * v485);
          v485 = 1;
          v487 = (result < v486) & ~v484;
          v484 = 1;
          if ((v487 & 1) == 0)
          {
            v488 = result < v486;
            goto LABEL_659;
          }
        }

        v488 = 0;
LABEL_659:
        if (*(v474 + 493) == 2)
        {
          v489 = v482;
        }

        else
        {
          v489 = 0;
        }

        if (*(v475 + 493) == 2)
        {
          v490 = v488;
        }

        else
        {
          v490 = 0;
        }

        if (((v489 | v490) & 1) != 0 && ((v489 ^ v490) & 1) != 0 || (v489 = v482, v482 != v488))
        {
          if (v489)
          {
            goto LABEL_669;
          }
        }

        else
        {
          result = *(v474 + 476);
          v512 = *(v475 + 476);
          if (result == v512)
          {
            if (v474 < v475)
            {
LABEL_669:
              v491 = *v10;
              v492 = v10;
              do
              {
                while (1)
                {
                  while (1)
                  {
                    v493 = v492;
                    v492 = v473;
                    *v493 = *v473;
                    v495 = *--v473;
                    v494 = v495;
                    v496 = (*(**(v491 + 64) + 256))(*(v491 + 64));
                    v497 = 0;
                    v498 = 0;
                    while (*(v9 + 4 * v498) > *(v496 + 4 * v498))
                    {
                      v499 = *(a3 + 4 * v498);
                      v500 = *(v496 + 8 + 4 * v498);
                      v498 = 1;
                      v501 = (v499 < v500) & ~v497;
                      v497 = 1;
                      if ((v501 & 1) == 0)
                      {
                        v502 = v499 < v500;
                        goto LABEL_675;
                      }
                    }

                    v502 = 0;
LABEL_675:
                    v503 = (*(**(v494 + 64) + 256))(*(v494 + 64));
                    v504 = 0;
                    v505 = 0;
                    while (1)
                    {
                      result = *(v9 + 4 * v505);
                      if (result <= *(v503 + 4 * v505))
                      {
                        break;
                      }

                      result = *(a3 + 4 * v505);
                      v506 = *(v503 + 8 + 4 * v505);
                      v505 = 1;
                      v507 = (result < v506) & ~v504;
                      v504 = 1;
                      if ((v507 & 1) == 0)
                      {
                        v508 = result < v506;
                        goto LABEL_680;
                      }
                    }

                    v508 = 0;
LABEL_680:
                    v509 = *(v491 + 493) == 2 ? v502 : 0;
                    v510 = *(v494 + 493) == 2 ? v508 : 0;
                    if (((v509 | v510) & 1) == 0 || ((v509 ^ v510) & 1) == 0)
                    {
                      LOBYTE(v509) = v502;
                      if (v502 == v508)
                      {
                        break;
                      }
                    }

                    if ((v509 & 1) == 0)
                    {
                      goto LABEL_695;
                    }
                  }

                  result = *(v491 + 476);
                  v511 = *(v494 + 476);
                  if (result == v511)
                  {
                    break;
                  }

                  if (result <= v511)
                  {
                    goto LABEL_695;
                  }
                }
              }

              while (v491 < v494);
LABEL_695:
              *v492 = v491;
            }
          }

          else if (result > v512)
          {
            goto LABEL_669;
          }
        }

        v264 = v10 + 1;
        if (v10 + 1 == a2)
        {
          return result;
        }
      }
    }

    v519 = i;
    if (!a4)
    {
      if (i == a2)
      {
        return result;
      }

      v307 = (v11 - 2) >> 1;
      v521 = v307;
      v524 = a2 - i;
      while (1)
      {
        v308 = v307;
        if (v521 < v307)
        {
          goto LABEL_529;
        }

        v309 = (2 * v307) | 1;
        v310 = &v10[v309];
        v311 = 2 * v307 + 2;
        v514 = v307;
        if (v311 < v11)
        {
          v312 = v310[1];
          v313 = *v310;
          v314 = (*(**(*v310 + 64) + 256))(*(*v310 + 64));
          v315 = 0;
          v316 = 0;
          do
          {
            if (*(v9 + 4 * v316) <= *(v314 + 4 * v316))
            {
              v320 = 0;
              goto LABEL_432;
            }

            v317 = *(a3 + 4 * v316);
            v318 = *(v314 + 8 + 4 * v316);
            v316 = 1;
            v319 = (v317 < v318) & ~v315;
            v315 = 1;
          }

          while ((v319 & 1) != 0);
          v320 = v317 < v318;
LABEL_432:
          v321 = (*(**(v312 + 64) + 256))(*(v312 + 64));
          v322 = 0;
          v323 = 0;
          while (*(v9 + 4 * v323) > *(v321 + 4 * v323))
          {
            v324 = *(a3 + 4 * v323);
            v325 = *(v321 + 8 + 4 * v323);
            v323 = 1;
            v326 = (v324 < v325) & ~v322;
            v322 = 1;
            if ((v326 & 1) == 0)
            {
              v327 = v324 < v325;
              goto LABEL_437;
            }
          }

          v327 = 0;
LABEL_437:
          if (*(v313 + 493) == 2)
          {
            v328 = v320;
          }

          else
          {
            v328 = 0;
          }

          if (*(v312 + 493) == 2)
          {
            v329 = v327;
          }

          else
          {
            v329 = 0;
          }

          if (((v328 | v329) & 1) != 0 && ((v328 ^ v329) & 1) != 0 || (v328 = v320, v320 != v327))
          {
            v11 = v524;
            v308 = v514;
            if (!v328)
            {
              goto LABEL_448;
            }

LABEL_447:
            ++v310;
            v309 = v311;
            goto LABEL_448;
          }

          v391 = *(v313 + 476);
          v392 = *(v312 + 476);
          if (v391 == v392)
          {
            v389 = v313 >= v312;
            v11 = v524;
            v308 = v514;
            if (!v389)
            {
              goto LABEL_447;
            }
          }

          else
          {
            v11 = v524;
            v308 = v514;
            if (v391 > v392)
            {
              goto LABEL_447;
            }
          }
        }

LABEL_448:
        v330 = v10[v308];
        v331 = *v310;
        v332 = (*(**(*v310 + 64) + 256))(*(*v310 + 64));
        v333 = 0;
        v334 = 0;
        do
        {
          if (*(v9 + 4 * v334) <= *(v332 + 4 * v334))
          {
            v338 = 0;
            goto LABEL_453;
          }

          v335 = *(a3 + 4 * v334);
          v336 = *(v332 + 8 + 4 * v334);
          v334 = 1;
          v337 = (v335 < v336) & ~v333;
          v333 = 1;
        }

        while ((v337 & 1) != 0);
        v338 = v335 < v336;
LABEL_453:
        v339 = (*(**(v330 + 64) + 256))(*(v330 + 64));
        v340 = 0;
        v341 = 0;
        while (1)
        {
          result = *(v9 + 4 * v341);
          if (result <= *(v339 + 4 * v341))
          {
            break;
          }

          result = *(a3 + 4 * v341);
          v342 = *(v339 + 8 + 4 * v341);
          v341 = 1;
          v343 = (result < v342) & ~v340;
          v340 = 1;
          if ((v343 & 1) == 0)
          {
            v344 = result < v342;
            goto LABEL_458;
          }
        }

        v344 = 0;
LABEL_458:
        if (*(v331 + 493) == 2)
        {
          v345 = v338;
        }

        else
        {
          v345 = 0;
        }

        if (*(v330 + 493) == 2)
        {
          v346 = v344;
        }

        else
        {
          v346 = 0;
        }

        if (((v345 | v346) & 1) != 0 && ((v345 ^ v346) & 1) != 0 || (LOBYTE(v345) = v338, v338 != v344))
        {
          if (v345)
          {
            goto LABEL_529;
          }
        }

        else
        {
          result = *(v331 + 476);
          v390 = *(v330 + 476);
          if (result == v390)
          {
            if (v331 < v330)
            {
              goto LABEL_529;
            }
          }

          else if (result > v390)
          {
            goto LABEL_529;
          }
        }

        v347 = v10;
        v348 = v10[v308];
        v347[v308] = *v310;
        while (1)
        {
          if (v521 < v309)
          {
            goto LABEL_528;
          }

          v349 = v310;
          v350 = 2 * v309;
          v309 = (2 * v309) | 1;
          v310 = &v519[v309];
          v351 = v350 + 2;
          if (v350 + 2 < v11)
          {
            v516 = v349;
            v352 = v310[1];
            v353 = *v310;
            v354 = (*(**(*v310 + 64) + 256))(*(*v310 + 64));
            v355 = 0;
            v356 = 0;
            do
            {
              if (*(v9 + 4 * v356) <= *(v354 + 4 * v356))
              {
                v360 = 0;
                goto LABEL_476;
              }

              v357 = *(a3 + 4 * v356);
              v358 = *(v354 + 8 + 4 * v356);
              v356 = 1;
              v359 = (v357 < v358) & ~v355;
              v355 = 1;
            }

            while ((v359 & 1) != 0);
            v360 = v357 < v358;
LABEL_476:
            v361 = (*(**(v352 + 64) + 256))(*(v352 + 64));
            v362 = 0;
            v363 = 0;
            while (*(v9 + 4 * v363) > *(v361 + 4 * v363))
            {
              v364 = *(a3 + 4 * v363);
              v365 = *(v361 + 8 + 4 * v363);
              v363 = 1;
              v366 = (v364 < v365) & ~v362;
              v362 = 1;
              if ((v366 & 1) == 0)
              {
                v367 = v364 < v365;
                goto LABEL_481;
              }
            }

            v367 = 0;
LABEL_481:
            if (*(v353 + 493) == 2)
            {
              v368 = v360;
            }

            else
            {
              v368 = 0;
            }

            if (*(v352 + 493) == 2)
            {
              v369 = v367;
            }

            else
            {
              v369 = 0;
            }

            if (((v368 | v369) & 1) == 0 || ((v368 ^ v369) & 1) == 0)
            {
              v368 = v360;
              if (v360 == v367)
              {
                v387 = *(v353 + 476);
                v388 = *(v352 + 476);
                if (v387 == v388)
                {
                  v389 = v353 >= v352;
                  v11 = v524;
                  v349 = v516;
                  if (v389)
                  {
                    goto LABEL_492;
                  }
                }

                else
                {
                  v11 = v524;
                  v349 = v516;
                  if (v387 <= v388)
                  {
                    goto LABEL_492;
                  }
                }

LABEL_491:
                ++v310;
                v309 = v351;
                goto LABEL_492;
              }
            }

            v11 = v524;
            v349 = v516;
            if (v368)
            {
              goto LABEL_491;
            }
          }

LABEL_492:
          v370 = *v310;
          v371 = (*(**(*v310 + 64) + 256))(*(*v310 + 64));
          v372 = 0;
          v373 = 0;
          do
          {
            if (*(v9 + 4 * v373) <= *(v371 + 4 * v373))
            {
              v377 = 0;
              goto LABEL_497;
            }

            v374 = *(a3 + 4 * v373);
            v375 = *(v371 + 8 + 4 * v373);
            v373 = 1;
            v376 = (v374 < v375) & ~v372;
            v372 = 1;
          }

          while ((v376 & 1) != 0);
          v377 = v374 < v375;
LABEL_497:
          v378 = (*(**(v348 + 64) + 256))(*(v348 + 64));
          v379 = 0;
          v380 = 0;
          while (1)
          {
            result = *(v9 + 4 * v380);
            if (result <= *(v378 + 4 * v380))
            {
              break;
            }

            result = *(a3 + 4 * v380);
            v381 = *(v378 + 8 + 4 * v380);
            v380 = 1;
            v382 = (result < v381) & ~v379;
            v379 = 1;
            if ((v382 & 1) == 0)
            {
              v383 = result < v381;
              goto LABEL_502;
            }
          }

          v383 = 0;
LABEL_502:
          if (*(v370 + 493) == 2)
          {
            v384 = v377;
          }

          else
          {
            v384 = 0;
          }

          if (*(v348 + 493) == 2)
          {
            v385 = v383;
          }

          else
          {
            v385 = 0;
          }

          if (((v384 | v385) & 1) != 0 && ((v384 ^ v385) & 1) != 0 || (LOBYTE(v384) = v377, v377 != v383))
          {
            if (v384)
            {
              goto LABEL_527;
            }

            goto LABEL_512;
          }

          result = *(v370 + 476);
          v386 = *(v348 + 476);
          if (result == v386)
          {
            break;
          }

          if (result > v386)
          {
            goto LABEL_527;
          }

LABEL_512:
          *v349 = *v310;
        }

        if (v370 >= v348)
        {
          goto LABEL_512;
        }

LABEL_527:
        v310 = v349;
LABEL_528:
        *v310 = v348;
        v10 = v519;
        v308 = v514;
LABEL_529:
        v307 = v308 - 1;
        if (!v308)
        {
LABEL_545:
          v394 = 0;
          v517 = *v10;
          v395 = (v11 - 2) >> 1;
          v396 = v10;
          v522 = v395;
          v525 = v11;
          while (1)
          {
            v397 = v396;
            v398 = &v396[v394];
            v396 = v398 + 1;
            v399 = 2 * v394;
            v394 = (2 * v394) | 1;
            v400 = v399 + 2;
            if (v399 + 2 < v11)
            {
              v403 = v398[2];
              v402 = v398 + 2;
              v401 = v403;
              v404 = *(v402 - 1);
              v405 = (*(**(v404 + 64) + 256))(*(v404 + 64));
              v406 = 0;
              v407 = 0;
              while (*(v9 + 4 * v407) > *(v405 + 4 * v407))
              {
                v408 = *(a3 + 4 * v407);
                v409 = *(v405 + 8 + 4 * v407);
                v407 = 1;
                v410 = (v408 < v409) & ~v406;
                v406 = 1;
                if ((v410 & 1) == 0)
                {
                  v411 = v408 < v409;
                  goto LABEL_552;
                }
              }

              v411 = 0;
LABEL_552:
              v412 = (*(**(v401 + 64) + 256))(*(v401 + 64));
              v413 = 0;
              v414 = 0;
              while (1)
              {
                result = *(v9 + 4 * v414);
                if (result <= *(v412 + 4 * v414))
                {
                  break;
                }

                result = *(a3 + 4 * v414);
                v415 = *(v412 + 8 + 4 * v414);
                v414 = 1;
                v416 = (result < v415) & ~v413;
                v413 = 1;
                if ((v416 & 1) == 0)
                {
                  v417 = result < v415;
                  goto LABEL_557;
                }
              }

              v417 = 0;
LABEL_557:
              if (*(v404 + 493) == 2)
              {
                v418 = v411;
              }

              else
              {
                v418 = 0;
              }

              if (*(v401 + 493) == 2)
              {
                v419 = v417;
              }

              else
              {
                v419 = 0;
              }

              if (((v418 | v419) & 1) == 0 || ((v418 ^ v419) & 1) == 0)
              {
                v418 = v411;
                if (v411 == v417)
                {
                  result = *(v404 + 476);
                  v420 = *(v401 + 476);
                  if (result == v420)
                  {
                    v389 = v404 >= v401;
                    v395 = v522;
                    v11 = v525;
                    if (v389)
                    {
                      goto LABEL_568;
                    }
                  }

                  else
                  {
                    v395 = v522;
                    v11 = v525;
                    if (result <= v420)
                    {
                      goto LABEL_568;
                    }
                  }

LABEL_567:
                  v396 = v402;
                  v394 = v400;
                  goto LABEL_568;
                }
              }

              v395 = v522;
              v11 = v525;
              if (v418)
              {
                goto LABEL_567;
              }
            }

LABEL_568:
            *v397 = *v396;
            if (v394 > v395)
            {
              v421 = a2 - 1;
              v265 = v396 == --a2;
              if (v265)
              {
                *v396 = v517;
                v10 = v519;
                goto LABEL_628;
              }

              *v396 = *v421;
              *v421 = v517;
              v10 = v519;
              v422 = (v396 - v519 + 8) >> 3;
              v423 = v422 - 2;
              if (v422 < 2)
              {
                goto LABEL_628;
              }

              v424 = v423 >> 1;
              v425 = &v519[v423 >> 1];
              v426 = *v425;
              v427 = *v396;
              v428 = (*(**(*v425 + 64) + 256))(*(*v425 + 64));
              v429 = 0;
              v430 = 0;
              while (*(v9 + 4 * v430) > *(v428 + 4 * v430))
              {
                v431 = *(a3 + 4 * v430);
                v432 = *(v428 + 8 + 4 * v430);
                v430 = 1;
                v433 = (v431 < v432) & ~v429;
                v429 = 1;
                if ((v433 & 1) == 0)
                {
                  v434 = v431 < v432;
                  goto LABEL_584;
                }
              }

              v434 = 0;
LABEL_584:
              v435 = (*(**(v427 + 64) + 256))(*(v427 + 64));
              v436 = 0;
              v437 = 0;
              while (1)
              {
                result = *(v9 + 4 * v437);
                if (result <= *(v435 + 4 * v437))
                {
                  break;
                }

                result = *(a3 + 4 * v437);
                v438 = *(v435 + 8 + 4 * v437);
                v437 = 1;
                v439 = (result < v438) & ~v436;
                v436 = 1;
                if ((v439 & 1) == 0)
                {
                  v440 = result < v438;
                  goto LABEL_589;
                }
              }

              v440 = 0;
LABEL_589:
              if (*(v426 + 493) == 2)
              {
                v441 = v434;
              }

              else
              {
                v441 = 0;
              }

              if (*(v427 + 493) == 2)
              {
                v442 = v440;
              }

              else
              {
                v442 = 0;
              }

              if (((v441 | v442) & 1) != 0 && ((v441 ^ v442) & 1) != 0 || (v441 = v434, v434 != v440))
              {
                v11 = v525;
                if (!v441)
                {
                  goto LABEL_628;
                }
              }

              else
              {
                result = *(v426 + 476);
                v393 = *(v427 + 476);
                if (result == v393)
                {
                  v389 = v426 >= v427;
                  v11 = v525;
                  if (v389)
                  {
                    goto LABEL_628;
                  }
                }

                else
                {
                  v11 = v525;
                  if (result <= v393)
                  {
                    goto LABEL_628;
                  }
                }
              }

              v443 = *v396;
              *v396 = *v425;
              if (v423 < 2)
              {
                goto LABEL_627;
              }

              while (2)
              {
                v444 = v425;
                v445 = v424 - 1;
                v424 = (v424 - 1) >> 1;
                v425 = &v519[v424];
                v446 = *v425;
                v447 = (*(**(*v425 + 64) + 256))(*(*v425 + 64));
                v448 = 0;
                v449 = 0;
                while (*(v9 + 4 * v449) > *(v447 + 4 * v449))
                {
                  v450 = *(a3 + 4 * v449);
                  v451 = *(v447 + 8 + 4 * v449);
                  v449 = 1;
                  v452 = (v450 < v451) & ~v448;
                  v448 = 1;
                  if ((v452 & 1) == 0)
                  {
                    v453 = v450 < v451;
                    goto LABEL_605;
                  }
                }

                v453 = 0;
LABEL_605:
                v454 = (*(**(v443 + 64) + 256))(*(v443 + 64));
                v455 = 0;
                v456 = 0;
                while (1)
                {
                  result = *(v9 + 4 * v456);
                  if (result <= *(v454 + 4 * v456))
                  {
                    break;
                  }

                  result = *(a3 + 4 * v456);
                  v457 = *(v454 + 8 + 4 * v456);
                  v456 = 1;
                  v458 = (result < v457) & ~v455;
                  v455 = 1;
                  if ((v458 & 1) == 0)
                  {
                    v459 = result < v457;
                    goto LABEL_610;
                  }
                }

                v459 = 0;
LABEL_610:
                if (*(v446 + 493) == 2)
                {
                  v460 = v453;
                }

                else
                {
                  v460 = 0;
                }

                if (*(v443 + 493) == 2)
                {
                  v461 = v459;
                }

                else
                {
                  v461 = 0;
                }

                if (((v460 | v461) & 1) != 0 && ((v460 ^ v461) & 1) != 0 || (v460 = v453, v453 != v459))
                {
                  if (!v460)
                  {
                    break;
                  }

                  goto LABEL_620;
                }

                result = *(v446 + 476);
                v462 = *(v443 + 476);
                if (result != v462)
                {
                  if (result <= v462)
                  {
                    break;
                  }

                  goto LABEL_620;
                }

                if (v446 < v443)
                {
LABEL_620:
                  *v444 = *v425;
                  if (v445 <= 1)
                  {
                    goto LABEL_627;
                  }

                  continue;
                }

                break;
              }

              v425 = v444;
LABEL_627:
              *v425 = v443;
              v11 = v525;
LABEL_628:
              if (v11-- <= 2)
              {
                return result;
              }

              goto LABEL_545;
            }
          }
        }
      }
    }

    v12 = &i[v11 >> 1];
    if (v11 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(&v10[v11 >> 1], v10, v520, a3);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(v10, &v10[v11 >> 1], v520, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(v10 + 1, v12 - 1, a2 - 2, a3);
      v13 = &v10[(v11 >> 1) + 1];
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(v519 + 2, v13, a2 - 3, a3);
      v10 = v519;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(v12 - 1, v12, v13, a3);
      v14 = *v519;
      *v519 = *v12;
      *v12 = v14;
    }

    --a4;
    if (a5)
    {
      goto LABEL_36;
    }

    v15 = *(v10 - 1);
    v16 = *v10;
    v17 = (*(**(v15 + 64) + 256))(*(v15 + 64));
    v18 = 0;
    v19 = 0;
    while (*(v9 + 4 * v19) > *(v17 + 4 * v19))
    {
      v20 = *(a3 + 4 * v19);
      v21 = *(v17 + 8 + 4 * v19);
      v19 = 1;
      v22 = (v20 < v21) & ~v18;
      v18 = 1;
      if ((v22 & 1) == 0)
      {
        v23 = v20 < v21;
        goto LABEL_21;
      }
    }

    v23 = 0;
LABEL_21:
    v24 = (*(**(v16 + 64) + 256))(*(v16 + 64));
    v25 = 0;
    v26 = 0;
    while (*(v9 + 4 * v26) > *(v24 + 4 * v26))
    {
      v27 = *(a3 + 4 * v26);
      v28 = *(v24 + 8 + 4 * v26);
      v26 = 1;
      v29 = (v27 < v28) & ~v25;
      v25 = 1;
      if ((v29 & 1) == 0)
      {
        v30 = v27 < v28;
        goto LABEL_26;
      }
    }

    v30 = 0;
LABEL_26:
    if (*(v15 + 493) == 2)
    {
      v31 = v23;
    }

    else
    {
      v31 = 0;
    }

    if (*(v16 + 493) == 2)
    {
      v32 = v30;
    }

    else
    {
      v32 = 0;
    }

    if (((v31 | v32) & 1) != 0 && ((v31 ^ v32) & 1) != 0 || (LOBYTE(v31) = v23, v23 != v30))
    {
      if ((v31 & 1) == 0)
      {
        goto LABEL_181;
      }

LABEL_36:
      v33 = *v10;
      v34 = v10;
      do
      {
        while (1)
        {
          while (1)
          {
            v35 = v34;
            v37 = v34[1];
            ++v34;
            v36 = v37;
            v38 = (*(**(v37 + 64) + 256))(*(v37 + 64));
            v39 = 0;
            v40 = 0;
            while (*(v9 + 4 * v40) > *(v38 + 4 * v40))
            {
              v41 = *(a3 + 4 * v40);
              v42 = *(v38 + 8 + 4 * v40);
              v40 = 1;
              v43 = (v41 < v42) & ~v39;
              v39 = 1;
              if ((v43 & 1) == 0)
              {
                v44 = v41 < v42;
                goto LABEL_42;
              }
            }

            v44 = 0;
LABEL_42:
            v45 = (*(**(v33 + 64) + 256))(*(v33 + 64));
            v46 = 0;
            v47 = 0;
            while (*(v9 + 4 * v47) > *(v45 + 4 * v47))
            {
              v48 = *(a3 + 4 * v47);
              v49 = *(v45 + 8 + 4 * v47);
              v47 = 1;
              v50 = (v48 < v49) & ~v46;
              v46 = 1;
              if ((v50 & 1) == 0)
              {
                v51 = v48 < v49;
                goto LABEL_47;
              }
            }

            v51 = 0;
LABEL_47:
            v52 = *(v36 + 493) == 2 ? v44 : 0;
            v53 = *(v33 + 493) == 2 ? v51 : 0;
            if (((v52 | v53) & 1) == 0 || ((v52 ^ v53) & 1) == 0)
            {
              LOBYTE(v52) = v44;
              if (v44 == v51)
              {
                break;
              }
            }

            if ((v52 & 1) == 0)
            {
              goto LABEL_62;
            }
          }

          v54 = *(v36 + 476);
          v55 = *(v33 + 476);
          if (v54 == v55)
          {
            break;
          }

          if (v54 <= v55)
          {
            goto LABEL_62;
          }
        }
      }

      while (v36 < v33);
LABEL_62:
      v56 = a2;
      if (v35 == v519)
      {
        v56 = a2;
        if (v34 < a2)
        {
          v56 = a2;
          do
          {
            while (1)
            {
              while (1)
              {
                v78 = *--v56;
                v77 = v78;
                v79 = (*(**(v78 + 64) + 256))(*(v78 + 64));
                v80 = 0;
                v81 = 0;
                while (*(v9 + 4 * v81) > *(v79 + 4 * v81))
                {
                  v82 = *(a3 + 4 * v81);
                  v83 = *(v79 + 8 + 4 * v81);
                  v81 = 1;
                  v84 = (v82 < v83) & ~v80;
                  v80 = 1;
                  if ((v84 & 1) == 0)
                  {
                    v85 = v82 < v83;
                    goto LABEL_96;
                  }
                }

                v85 = 0;
LABEL_96:
                v86 = (*(**(v33 + 64) + 256))(*(v33 + 64));
                v87 = 0;
                v88 = 0;
                while (*(v9 + 4 * v88) > *(v86 + 4 * v88))
                {
                  v89 = *(a3 + 4 * v88);
                  v90 = *(v86 + 8 + 4 * v88);
                  v88 = 1;
                  v91 = (v89 < v90) & ~v87;
                  v87 = 1;
                  if ((v91 & 1) == 0)
                  {
                    v92 = v89 < v90;
                    goto LABEL_101;
                  }
                }

                v92 = 0;
LABEL_101:
                v93 = *(v77 + 493) == 2 ? v85 : 0;
                v94 = *(v33 + 493) == 2 ? v92 : 0;
                if (((v93 | v94) & 1) == 0 || ((v93 ^ v94) & 1) == 0)
                {
                  LOBYTE(v93) = v85;
                  if (v85 == v92)
                  {
                    break;
                  }
                }

                if (v34 >= v56 || (v93 & 1) != 0)
                {
                  goto LABEL_119;
                }
              }

              v95 = *(v77 + 476);
              v96 = *(v33 + 476);
              if (v95 == v96)
              {
                break;
              }

              if (v34 >= v56 || v95 > v96)
              {
                goto LABEL_119;
              }
            }
          }

          while (v77 >= v33 && v34 < v56);
        }
      }

      else
      {
        do
        {
          while (1)
          {
            while (1)
            {
              v58 = *--v56;
              v57 = v58;
              v59 = (*(**(v58 + 64) + 256))(*(v58 + 64));
              v60 = 0;
              v61 = 0;
              while (*(v9 + 4 * v61) > *(v59 + 4 * v61))
              {
                v62 = *(a3 + 4 * v61);
                v63 = *(v59 + 8 + 4 * v61);
                v61 = 1;
                v64 = (v62 < v63) & ~v60;
                v60 = 1;
                if ((v64 & 1) == 0)
                {
                  v65 = v62 < v63;
                  goto LABEL_68;
                }
              }

              v65 = 0;
LABEL_68:
              v66 = (*(**(v33 + 64) + 256))(*(v33 + 64));
              v67 = 0;
              v68 = 0;
              while (*(v9 + 4 * v68) > *(v66 + 4 * v68))
              {
                v69 = *(a3 + 4 * v68);
                v70 = *(v66 + 8 + 4 * v68);
                v68 = 1;
                v71 = (v69 < v70) & ~v67;
                v67 = 1;
                if ((v71 & 1) == 0)
                {
                  v72 = v69 < v70;
                  goto LABEL_73;
                }
              }

              v72 = 0;
LABEL_73:
              v73 = *(v57 + 493) == 2 ? v65 : 0;
              v74 = *(v33 + 493) == 2 ? v72 : 0;
              if (((v73 | v74) & 1) == 0 || ((v73 ^ v74) & 1) == 0)
              {
                v73 = v65;
                if (v65 == v72)
                {
                  break;
                }
              }

              if (v73)
              {
                goto LABEL_119;
              }
            }

            v75 = *(v57 + 476);
            v76 = *(v33 + 476);
            if (v75 == v76)
            {
              break;
            }

            if (v75 > v76)
            {
              goto LABEL_119;
            }
          }
        }

        while (v57 >= v33);
      }

LABEL_119:
      v523 = a4;
      if (v34 < v56)
      {
        v97 = v34;
        v98 = v56;
        do
        {
          v99 = *v97;
          *v97 = *v98;
          *v98 = v99;
          do
          {
            while (1)
            {
              v35 = v97;
              v101 = v97[1];
              ++v97;
              v100 = v101;
              v102 = (*(**(v101 + 64) + 256))(*(v101 + 64));
              v103 = 0;
              v104 = 0;
              while (*(v9 + 4 * v104) > *(v102 + 4 * v104))
              {
                v105 = *(a3 + 4 * v104);
                v106 = *(v102 + 8 + 4 * v104);
                v104 = 1;
                v107 = (v105 < v106) & ~v103;
                v103 = 1;
                if ((v107 & 1) == 0)
                {
                  v108 = v105 < v106;
                  goto LABEL_127;
                }
              }

              v108 = 0;
LABEL_127:
              v109 = (*(**(v33 + 64) + 256))(*(v33 + 64));
              v110 = 0;
              v111 = 0;
              while (*(v9 + 4 * v111) > *(v109 + 4 * v111))
              {
                v112 = *(a3 + 4 * v111);
                v113 = *(v109 + 8 + 4 * v111);
                v111 = 1;
                v114 = (v112 < v113) & ~v110;
                v110 = 1;
                if ((v114 & 1) == 0)
                {
                  v115 = v112 < v113;
                  goto LABEL_132;
                }
              }

              v115 = 0;
LABEL_132:
              v116 = *(v100 + 493) == 2 ? v108 : 0;
              v117 = *(v33 + 493) == 2 ? v115 : 0;
              if ((v116 | v117) & 1) != 0 && ((v116 ^ v117))
              {
                break;
              }

              LOBYTE(v116) = v108;
              if (v108 != v115)
              {
                break;
              }

              v118 = *(v100 + 476);
              v119 = *(v33 + 476);
              if (v118 == v119)
              {
                if (v100 >= v33)
                {
                  goto LABEL_152;
                }
              }

              else if (v118 <= v119)
              {
                goto LABEL_152;
              }
            }
          }

          while ((v116 & 1) != 0);
          do
          {
LABEL_152:
            while (1)
            {
              v123 = *--v98;
              v122 = v123;
              v124 = (*(**(v123 + 64) + 256))(*(v123 + 64));
              v125 = 0;
              v126 = 0;
              while (*(v9 + 4 * v126) > *(v124 + 4 * v126))
              {
                v127 = *(a3 + 4 * v126);
                v128 = *(v124 + 8 + 4 * v126);
                v126 = 1;
                v129 = (v127 < v128) & ~v125;
                v125 = 1;
                if ((v129 & 1) == 0)
                {
                  v130 = v127 < v128;
                  goto LABEL_157;
                }
              }

              v130 = 0;
LABEL_157:
              v131 = (*(**(v33 + 64) + 256))(*(v33 + 64));
              v132 = 0;
              v133 = 0;
              while (*(v9 + 4 * v133) > *(v131 + 4 * v133))
              {
                v134 = *(a3 + 4 * v133);
                v135 = *(v131 + 8 + 4 * v133);
                v133 = 1;
                v136 = (v134 < v135) & ~v132;
                v132 = 1;
                if ((v136 & 1) == 0)
                {
                  v137 = v134 < v135;
                  goto LABEL_162;
                }
              }

              v137 = 0;
LABEL_162:
              v138 = *(v122 + 493) == 2 ? v130 : 0;
              v139 = *(v33 + 493) == 2 ? v137 : 0;
              if ((v138 | v139) & 1) != 0 && ((v138 ^ v139))
              {
                break;
              }

              v138 = v130;
              if (v130 != v137)
              {
                break;
              }

              v120 = *(v122 + 476);
              v121 = *(v33 + 476);
              if (v120 == v121)
              {
                if (v122 < v33)
                {
                  goto LABEL_172;
                }
              }

              else if (v120 > v121)
              {
                goto LABEL_172;
              }
            }
          }

          while (!v138);
LABEL_172:
          ;
        }

        while (v97 < v98);
      }

      if (v35 != v519)
      {
        *v519 = *v35;
      }

      *v35 = v33;
      a4 = v523;
      if (v34 < v56)
      {
LABEL_178:
        std::__introsort<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,false>(v519, v35, a3, v523, a5 & 1);
        a5 = 0;
        i = v35 + 1;
      }

      else
      {
        v140 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **>(v519, v35, a3);
        i = v35 + 1;
        if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **>(v35 + 1, a2, a3))
        {
          a2 = v35;
          i = v519;
          if (v140)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v140)
        {
          goto LABEL_178;
        }
      }
    }

    else
    {
      v141 = *(v15 + 476);
      v142 = *(v16 + 476);
      if (v141 == v142)
      {
        if (v15 < v16)
        {
          goto LABEL_36;
        }
      }

      else if (v141 > v142)
      {
        goto LABEL_36;
      }

LABEL_181:
      v143 = *v10;
      v144 = *v520;
      v145 = (*(**(*v10 + 64) + 256))(*(*v10 + 64));
      v146 = 0;
      v147 = 0;
      while (*(v9 + 4 * v147) > *(v145 + 4 * v147))
      {
        v148 = *(a3 + 4 * v147);
        v149 = *(v145 + 8 + 4 * v147);
        v147 = 1;
        v150 = (v148 < v149) & ~v146;
        v146 = 1;
        if ((v150 & 1) == 0)
        {
          v151 = v148 < v149;
          goto LABEL_188;
        }
      }

      v151 = 0;
LABEL_188:
      v152 = (*(**(v144 + 64) + 256))(*(v144 + 64));
      v153 = 0;
      v154 = 0;
      while (1)
      {
        result = *(v9 + 4 * v154);
        if (result <= *(v152 + 4 * v154))
        {
          break;
        }

        result = *(a3 + 4 * v154);
        v155 = *(v152 + 8 + 4 * v154);
        v154 = 1;
        v156 = (result < v155) & ~v153;
        v153 = 1;
        if ((v156 & 1) == 0)
        {
          v157 = result < v155;
          goto LABEL_193;
        }
      }

      v157 = 0;
LABEL_193:
      if (*(v143 + 493) == 2)
      {
        v158 = v151;
      }

      else
      {
        v158 = 0;
      }

      if (*(v144 + 493) == 2)
      {
        v159 = v157;
      }

      else
      {
        v159 = 0;
      }

      if (((v158 | v159) & 1) != 0 && ((v158 ^ v159) & 1) != 0 || (v158 = v151, v151 != v157))
      {
        if (v158)
        {
          goto LABEL_203;
        }
      }

      else
      {
        result = *(v143 + 476);
        v178 = *(v144 + 476);
        if (result == v178)
        {
          if (v143 < v144)
          {
LABEL_203:
            i = v10;
            do
            {
              while (1)
              {
                while (1)
                {
                  v161 = i[1];
                  ++i;
                  v160 = v161;
                  v162 = (*(**(v143 + 64) + 256))(*(v143 + 64));
                  v163 = 0;
                  v164 = 0;
                  while (*(v9 + 4 * v164) > *(v162 + 4 * v164))
                  {
                    v165 = *(a3 + 4 * v164);
                    v166 = *(v162 + 8 + 4 * v164);
                    v164 = 1;
                    v167 = (v165 < v166) & ~v163;
                    v163 = 1;
                    if ((v167 & 1) == 0)
                    {
                      v168 = v165 < v166;
                      goto LABEL_209;
                    }
                  }

                  v168 = 0;
LABEL_209:
                  v169 = (*(**(v160 + 64) + 256))(*(v160 + 64));
                  v170 = 0;
                  v171 = 0;
                  while (1)
                  {
                    result = *(v9 + 4 * v171);
                    if (result <= *(v169 + 4 * v171))
                    {
                      break;
                    }

                    result = *(a3 + 4 * v171);
                    v172 = *(v169 + 8 + 4 * v171);
                    v171 = 1;
                    v173 = (result < v172) & ~v170;
                    v170 = 1;
                    if ((v173 & 1) == 0)
                    {
                      v174 = result < v172;
                      goto LABEL_214;
                    }
                  }

                  v174 = 0;
LABEL_214:
                  v175 = *(v143 + 493) == 2 ? v168 : 0;
                  v176 = *(v160 + 493) == 2 ? v174 : 0;
                  if (((v175 | v176) & 1) == 0 || ((v175 ^ v176) & 1) == 0)
                  {
                    LOBYTE(v175) = v168;
                    if (v168 == v174)
                    {
                      break;
                    }
                  }

                  if (v175)
                  {
                    goto LABEL_259;
                  }
                }

                result = *(v143 + 476);
                v177 = *(v160 + 476);
                if (result == v177)
                {
                  break;
                }

                if (result > v177)
                {
                  goto LABEL_259;
                }
              }
            }

            while (v143 >= v160);
            goto LABEL_259;
          }
        }

        else if (result > v178)
        {
          goto LABEL_203;
        }
      }

      for (i = v10 + 1; i < a2; ++i)
      {
        v179 = *i;
        v180 = (*(**(v143 + 64) + 256))(*(v143 + 64));
        v181 = 0;
        v182 = 0;
        while (*(v9 + 4 * v182) > *(v180 + 4 * v182))
        {
          v183 = *(a3 + 4 * v182);
          v184 = *(v180 + 8 + 4 * v182);
          v182 = 1;
          v185 = (v183 < v184) & ~v181;
          v181 = 1;
          if ((v185 & 1) == 0)
          {
            v186 = v183 < v184;
            goto LABEL_239;
          }
        }

        v186 = 0;
LABEL_239:
        v187 = (*(**(v179 + 64) + 256))(*(v179 + 64));
        v188 = 0;
        v189 = 0;
        while (1)
        {
          result = *(v9 + 4 * v189);
          if (result <= *(v187 + 4 * v189))
          {
            break;
          }

          result = *(a3 + 4 * v189);
          v190 = *(v187 + 8 + 4 * v189);
          v189 = 1;
          v191 = (result < v190) & ~v188;
          v188 = 1;
          if ((v191 & 1) == 0)
          {
            v192 = result < v190;
            goto LABEL_244;
          }
        }

        v192 = 0;
LABEL_244:
        if (*(v143 + 493) == 2)
        {
          v193 = v186;
        }

        else
        {
          v193 = 0;
        }

        if (*(v179 + 493) == 2)
        {
          v194 = v192;
        }

        else
        {
          v194 = 0;
        }

        if (((v193 | v194) & 1) != 0 && ((v193 ^ v194) & 1) != 0 || (LOBYTE(v193) = v186, v186 != v192))
        {
          if (v193)
          {
            break;
          }
        }

        else
        {
          result = *(v143 + 476);
          v195 = *(v179 + 476);
          if (result == v195)
          {
            if (v143 < v179)
            {
              break;
            }
          }

          else if (result > v195)
          {
            break;
          }
        }
      }

LABEL_259:
      v196 = a2;
      if (i < a2)
      {
        v196 = a2;
        do
        {
          while (1)
          {
            while (1)
            {
              v198 = *--v196;
              v197 = v198;
              v199 = (*(**(v143 + 64) + 256))(*(v143 + 64));
              v200 = 0;
              v201 = 0;
              while (*(v9 + 4 * v201) > *(v199 + 4 * v201))
              {
                v202 = *(a3 + 4 * v201);
                v203 = *(v199 + 8 + 4 * v201);
                v201 = 1;
                v204 = (v202 < v203) & ~v200;
                v200 = 1;
                if ((v204 & 1) == 0)
                {
                  v205 = v202 < v203;
                  goto LABEL_266;
                }
              }

              v205 = 0;
LABEL_266:
              v206 = (*(**(v197 + 64) + 256))(*(v197 + 64));
              v207 = 0;
              v208 = 0;
              while (1)
              {
                result = *(v9 + 4 * v208);
                if (result <= *(v206 + 4 * v208))
                {
                  break;
                }

                result = *(a3 + 4 * v208);
                v209 = *(v206 + 8 + 4 * v208);
                v208 = 1;
                v210 = (result < v209) & ~v207;
                v207 = 1;
                if ((v210 & 1) == 0)
                {
                  v211 = result < v209;
                  goto LABEL_271;
                }
              }

              v211 = 0;
LABEL_271:
              v212 = *(v143 + 493) == 2 ? v205 : 0;
              v213 = *(v197 + 493) == 2 ? v211 : 0;
              if (((v212 | v213) & 1) == 0 || ((v212 ^ v213) & 1) == 0)
              {
                LOBYTE(v212) = v205;
                if (v205 == v211)
                {
                  break;
                }
              }

              if ((v212 & 1) == 0)
              {
                goto LABEL_338;
              }
            }

            result = *(v143 + 476);
            v214 = *(v197 + 476);
            if (result == v214)
            {
              break;
            }

            if (result <= v214)
            {
              goto LABEL_338;
            }
          }
        }

        while (v143 < v197);
      }

LABEL_338:
      while (i < v196)
      {
        v215 = *i;
        *i = *v196;
        *v196 = v215;
        do
        {
          while (1)
          {
            v217 = i[1];
            ++i;
            v216 = v217;
            v218 = (*(**(v143 + 64) + 256))(*(v143 + 64));
            v219 = 0;
            v220 = 0;
            while (*(v9 + 4 * v220) > *(v218 + 4 * v220))
            {
              v221 = *(a3 + 4 * v220);
              v222 = *(v218 + 8 + 4 * v220);
              v220 = 1;
              v223 = (v221 < v222) & ~v219;
              v219 = 1;
              if ((v223 & 1) == 0)
              {
                v224 = v221 < v222;
                goto LABEL_293;
              }
            }

            v224 = 0;
LABEL_293:
            v225 = (*(**(v216 + 64) + 256))(*(v216 + 64));
            v226 = 0;
            v227 = 0;
            while (*(v9 + 4 * v227) > *(v225 + 4 * v227))
            {
              v228 = *(a3 + 4 * v227);
              v229 = *(v225 + 8 + 4 * v227);
              v227 = 1;
              v230 = (v228 < v229) & ~v226;
              v226 = 1;
              if ((v230 & 1) == 0)
              {
                v231 = v228 < v229;
                goto LABEL_298;
              }
            }

            v231 = 0;
LABEL_298:
            v232 = *(v143 + 493) == 2 ? v224 : 0;
            v233 = *(v216 + 493) == 2 ? v231 : 0;
            if ((v232 | v233) & 1) != 0 && ((v232 ^ v233))
            {
              break;
            }

            v232 = v224;
            if (v224 != v231)
            {
              break;
            }

            v234 = *(v143 + 476);
            v235 = *(v216 + 476);
            if (v234 == v235)
            {
              if (v143 < v216)
              {
                goto LABEL_318;
              }
            }

            else if (v234 > v235)
            {
              goto LABEL_318;
            }
          }
        }

        while (!v232);
        do
        {
LABEL_318:
          while (1)
          {
            v238 = *--v196;
            v237 = v238;
            v239 = (*(**(v143 + 64) + 256))(*(v143 + 64));
            v240 = 0;
            v241 = 0;
            while (*(v9 + 4 * v241) > *(v239 + 4 * v241))
            {
              v242 = *(a3 + 4 * v241);
              v243 = *(v239 + 8 + 4 * v241);
              v241 = 1;
              v244 = (v242 < v243) & ~v240;
              v240 = 1;
              if ((v244 & 1) == 0)
              {
                v245 = v242 < v243;
                goto LABEL_323;
              }
            }

            v245 = 0;
LABEL_323:
            v246 = (*(**(v237 + 64) + 256))(*(v237 + 64));
            v247 = 0;
            v248 = 0;
            while (1)
            {
              result = *(v9 + 4 * v248);
              if (result <= *(v246 + 4 * v248))
              {
                break;
              }

              result = *(a3 + 4 * v248);
              v249 = *(v246 + 8 + 4 * v248);
              v248 = 1;
              v250 = (result < v249) & ~v247;
              v247 = 1;
              if ((v250 & 1) == 0)
              {
                v251 = result < v249;
                goto LABEL_328;
              }
            }

            v251 = 0;
LABEL_328:
            v252 = *(v143 + 493) == 2 ? v245 : 0;
            v253 = *(v237 + 493) == 2 ? v251 : 0;
            if ((v252 | v253) & 1) != 0 && ((v252 ^ v253))
            {
              break;
            }

            LOBYTE(v252) = v245;
            if (v245 != v251)
            {
              break;
            }

            result = *(v143 + 476);
            v236 = *(v237 + 476);
            if (result == v236)
            {
              if (v143 >= v237)
              {
                goto LABEL_338;
              }
            }

            else if (result <= v236)
            {
              goto LABEL_338;
            }
          }
        }

        while ((v252 & 1) != 0);
      }

      v254 = i - 1;
      if (i - 1 != v10)
      {
        *v10 = *v254;
      }

      a5 = 0;
      *v254 = v143;
    }
  }

  v255 = *v520;
  v256 = *i;
  v257 = (*(**(*v520 + 64) + 256))(*(*v520 + 64));
  v258 = 0;
  v259 = 0;
  while (*(v9 + 4 * v259) > *(v257 + 4 * v259))
  {
    v260 = *(a3 + 4 * v259);
    v261 = *(v257 + 8 + 4 * v259);
    v259 = 1;
    v262 = (v260 < v261) & ~v258;
    v258 = 1;
    if ((v262 & 1) == 0)
    {
      v263 = v260 < v261;
      goto LABEL_632;
    }
  }

  v263 = 0;
LABEL_632:
  v464 = (*(**(v256 + 64) + 256))(*(v256 + 64));
  v465 = 0;
  v466 = 0;
  while (1)
  {
    result = *(v9 + 4 * v466);
    if (result <= *(v464 + 4 * v466))
    {
      break;
    }

    result = *(a3 + 4 * v466);
    v467 = *(v464 + 8 + 4 * v466);
    v466 = 1;
    v468 = (result < v467) & ~v465;
    v465 = 1;
    if ((v468 & 1) == 0)
    {
      v469 = result < v467;
      goto LABEL_637;
    }
  }

  v469 = 0;
LABEL_637:
  if (*(v255 + 493) == 2)
  {
    v470 = v263;
  }

  else
  {
    v470 = 0;
  }

  if (*(v256 + 493) == 2)
  {
    v471 = v469;
  }

  else
  {
    v471 = 0;
  }

  if (((v470 | v471) & 1) == 0 || ((v470 ^ v471) & 1) == 0)
  {
    v470 = v263;
    if (v263 == v469)
    {
      result = *(v255 + 476);
      v513 = *(v256 + 476);
      if (result == v513)
      {
        if (v255 >= v256)
        {
          return result;
        }
      }

      else if (result <= v513)
      {
        return result;
      }

LABEL_647:
      v472 = *i;
      *i = *v520;
      *v520 = v472;
      return result;
    }
  }

  if (v470)
  {
    goto LABEL_647;
  }

  return result;
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  v6 = a2;
  v7 = a1;
  v8 = *a2;
  v9 = *a1;
  v10 = (*(**(*a2 + 64) + 256))(*(*a2 + 64));
  v11 = 0;
  v12 = 0;
  v13 = a4 + 8;
  while (*(v13 + 4 * v12) > *(v10 + 4 * v12))
  {
    v14 = *(a4 + 4 * v12);
    v15 = *(v10 + 8 + 4 * v12);
    v12 = 1;
    v16 = (v14 < v15) & ~v11;
    v11 = 1;
    if ((v16 & 1) == 0)
    {
      v17 = v14 < v15;
      goto LABEL_6;
    }
  }

  v17 = 0;
LABEL_6:
  v18 = (*(**(v9 + 64) + 256))(*(v9 + 64));
  v19 = 0;
  v20 = 0;
  while (*(v13 + 4 * v20) > *(v18 + 4 * v20))
  {
    v21 = *(a4 + 4 * v20);
    v22 = *(v18 + 8 + 4 * v20);
    v20 = 1;
    v23 = (v21 < v22) & ~v19;
    v19 = 1;
    if ((v23 & 1) == 0)
    {
      v24 = v21 < v22;
      goto LABEL_11;
    }
  }

  v24 = 0;
LABEL_11:
  if (*(v8 + 493) == 2)
  {
    v25 = v17;
  }

  else
  {
    v25 = 0;
  }

  if (*(v9 + 493) == 2)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  if (((v25 | v26) & 1) == 0 || ((v25 ^ v26) & 1) == 0)
  {
    LOBYTE(v25) = v17;
    if (v17 == v24)
    {
      v45 = *(v8 + 476);
      v46 = *(v9 + 476);
      if (v45 == v46)
      {
        if (v8 >= v9)
        {
          goto LABEL_44;
        }
      }

      else if (v45 <= v46)
      {
        goto LABEL_44;
      }

LABEL_21:
      v27 = *a3;
      v28 = *v6;
      v29 = (*(**(*a3 + 64) + 256))(*(*a3 + 64));
      v30 = 0;
      v31 = 0;
      while (*(v13 + 4 * v31) > *(v29 + 4 * v31))
      {
        v32 = *(a4 + 4 * v31);
        v33 = *(v29 + 8 + 4 * v31);
        v31 = 1;
        v34 = (v32 < v33) & ~v30;
        v30 = 1;
        if ((v34 & 1) == 0)
        {
          v35 = v32 < v33;
          goto LABEL_26;
        }
      }

      v35 = 0;
LABEL_26:
      result = (*(**(v28 + 64) + 256))(*(v28 + 64));
      v37 = 0;
      v38 = 0;
      while (*(v13 + 4 * v38) > *(result + 4 * v38))
      {
        v39 = *(a4 + 4 * v38);
        v40 = *(result + 8 + 4 * v38);
        v38 = 1;
        v41 = (v39 < v40) & ~v37;
        v37 = 1;
        if ((v41 & 1) == 0)
        {
          v42 = v39 < v40;
          goto LABEL_31;
        }
      }

      v42 = 0;
LABEL_31:
      if (*(v27 + 493) == 2)
      {
        v43 = v35;
      }

      else
      {
        v43 = 0;
      }

      if (*(v28 + 493) == 2)
      {
        v44 = v42;
      }

      else
      {
        v44 = 0;
      }

      if (((v43 | v44) & 1) != 0 && ((v43 ^ v44) & 1) != 0 || (LOBYTE(v43) = v35, v35 != v42))
      {
        if (v43)
        {
LABEL_41:
          v6 = a3;
LABEL_125:
          v108 = *v7;
          *v7 = *v6;
          *v6 = v108;
          return result;
        }
      }

      else
      {
        v82 = *(v27 + 476);
        v83 = *(v28 + 476);
        if (v82 == v83)
        {
          if (v27 < v28)
          {
            goto LABEL_41;
          }
        }

        else if (v82 > v83)
        {
          goto LABEL_41;
        }
      }

      v84 = *v7;
      *v7 = *v6;
      *v6 = v84;
      v85 = *a3;
      v86 = (*(**(*a3 + 64) + 256))(*(*a3 + 64));
      v87 = 0;
      v88 = 0;
      while (*(v13 + 4 * v88) > *(v86 + 4 * v88))
      {
        v89 = *(a4 + 4 * v88);
        v90 = *(v86 + 8 + 4 * v88);
        v88 = 1;
        v91 = (v89 < v90) & ~v87;
        v87 = 1;
        if ((v91 & 1) == 0)
        {
          v92 = v89 < v90;
          goto LABEL_92;
        }
      }

      v92 = 0;
LABEL_92:
      result = (*(**(v84 + 64) + 256))(*(v84 + 64));
      v93 = 0;
      v94 = 0;
      while (*(v13 + 4 * v94) > *(result + 4 * v94))
      {
        v95 = *(a4 + 4 * v94);
        v96 = *(result + 8 + 4 * v94);
        v94 = 1;
        v97 = (v95 < v96) & ~v93;
        v93 = 1;
        if ((v97 & 1) == 0)
        {
          v98 = v95 < v96;
          goto LABEL_97;
        }
      }

      v98 = 0;
LABEL_97:
      if (*(v85 + 493) == 2)
      {
        v99 = v92;
      }

      else
      {
        v99 = 0;
      }

      if (*(v84 + 493) == 2)
      {
        v100 = v98;
      }

      else
      {
        v100 = 0;
      }

      if (((v99 | v100) & 1) != 0 && ((v99 ^ v100) & 1) != 0 || (v99 = v92, v92 != v98))
      {
        v7 = v6;
        v6 = a3;
        if (v99)
        {
          goto LABEL_125;
        }

        return result;
      }

      v106 = *(v85 + 476);
      v107 = *(v84 + 476);
      v7 = v6;
      v6 = a3;
      v105 = v106 <= v107;
      if (v106 == v107)
      {
        if (v85 >= v84)
        {
          return result;
        }

        goto LABEL_125;
      }

LABEL_117:
      if (!v105)
      {
        goto LABEL_125;
      }

      return result;
    }
  }

  if (v25)
  {
    goto LABEL_21;
  }

LABEL_44:
  v47 = *a3;
  v48 = *v6;
  v49 = (*(**(*a3 + 64) + 256))(*(*a3 + 64));
  v50 = 0;
  v51 = 0;
  while (*(v13 + 4 * v51) > *(v49 + 4 * v51))
  {
    v52 = *(a4 + 4 * v51);
    v53 = *(v49 + 8 + 4 * v51);
    v51 = 1;
    v54 = (v52 < v53) & ~v50;
    v50 = 1;
    if ((v54 & 1) == 0)
    {
      v55 = v52 < v53;
      goto LABEL_49;
    }
  }

  v55 = 0;
LABEL_49:
  result = (*(**(v48 + 64) + 256))(*(v48 + 64));
  v56 = 0;
  v57 = 0;
  while (*(v13 + 4 * v57) > *(result + 4 * v57))
  {
    v58 = *(a4 + 4 * v57);
    v59 = *(result + 8 + 4 * v57);
    v57 = 1;
    v60 = (v58 < v59) & ~v56;
    v56 = 1;
    if ((v60 & 1) == 0)
    {
      v61 = v58 < v59;
      goto LABEL_54;
    }
  }

  v61 = 0;
LABEL_54:
  if (*(v47 + 493) == 2)
  {
    v62 = v55;
  }

  else
  {
    v62 = 0;
  }

  if (*(v48 + 493) == 2)
  {
    v63 = v61;
  }

  else
  {
    v63 = 0;
  }

  if (((v62 | v63) & 1) != 0 && ((v62 ^ v63) & 1) != 0 || (v62 = v55, v55 != v61))
  {
    if (!v62)
    {
      return result;
    }
  }

  else
  {
    v101 = *(v47 + 476);
    v102 = *(v48 + 476);
    if (v101 == v102)
    {
      if (v47 >= v48)
      {
        return result;
      }
    }

    else if (v101 <= v102)
    {
      return result;
    }
  }

  v64 = *v6;
  *v6 = *a3;
  *a3 = v64;
  v65 = *v6;
  v66 = *v7;
  v67 = (*(**(*v6 + 64) + 256))(*(*v6 + 64));
  v68 = 0;
  v69 = 0;
  while (*(v13 + 4 * v69) > *(v67 + 4 * v69))
  {
    v70 = *(a4 + 4 * v69);
    v71 = *(v67 + 8 + 4 * v69);
    v69 = 1;
    v72 = (v70 < v71) & ~v68;
    v68 = 1;
    if ((v72 & 1) == 0)
    {
      v73 = v70 < v71;
      goto LABEL_69;
    }
  }

  v73 = 0;
LABEL_69:
  result = (*(**(v66 + 64) + 256))(*(v66 + 64));
  v74 = 0;
  v75 = 0;
  while (*(v13 + 4 * v75) > *(result + 4 * v75))
  {
    v76 = *(a4 + 4 * v75);
    v77 = *(result + 8 + 4 * v75);
    v75 = 1;
    v78 = (v76 < v77) & ~v74;
    v74 = 1;
    if ((v78 & 1) == 0)
    {
      v79 = v76 < v77;
      goto LABEL_74;
    }
  }

  v79 = 0;
LABEL_74:
  if (*(v65 + 493) == 2)
  {
    v80 = v73;
  }

  else
  {
    v80 = 0;
  }

  if (*(v66 + 493) == 2)
  {
    v81 = v79;
  }

  else
  {
    v81 = 0;
  }

  if (((v80 | v81) & 1) == 0 || ((v80 ^ v81) & 1) == 0)
  {
    LOBYTE(v80) = v73;
    if (v73 == v79)
    {
      v103 = *(v65 + 476);
      v104 = *(v66 + 476);
      v105 = v103 <= v104;
      if (v103 == v104)
      {
        if (v65 < v66)
        {
          goto LABEL_125;
        }

        return result;
      }

      goto LABEL_117;
    }
  }

  if (v80)
  {
    goto LABEL_125;
  }

  return result;
}

float std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(a1, a2, a3, a5);
  v10 = *a4;
  v11 = *a3;
  v12 = (*(**(*a4 + 64) + 256))();
  v13 = 0;
  v14 = 0;
  v15 = a5 + 8;
  while (*(v15 + 4 * v14) > *(v12 + 4 * v14))
  {
    v16 = *(a5 + 4 * v14);
    v17 = *(v12 + 8 + 4 * v14);
    v14 = 1;
    v18 = (v16 < v17) & ~v13;
    v13 = 1;
    if ((v18 & 1) == 0)
    {
      v19 = v16 < v17;
      goto LABEL_6;
    }
  }

  v19 = 0;
LABEL_6:
  v20 = (*(**(v11 + 64) + 256))(*(v11 + 64));
  v21 = 0;
  v22 = 0;
  while (1)
  {
    result = *(v15 + 4 * v22);
    if (result <= *(v20 + 4 * v22))
    {
      break;
    }

    result = *(a5 + 4 * v22);
    v24 = *(v20 + 8 + 4 * v22);
    v22 = 1;
    v25 = (result < v24) & ~v21;
    v21 = 1;
    if ((v25 & 1) == 0)
    {
      v26 = result < v24;
      goto LABEL_11;
    }
  }

  v26 = 0;
LABEL_11:
  if (*(v10 + 493) == 2)
  {
    v27 = v19;
  }

  else
  {
    v27 = 0;
  }

  if (*(v11 + 493) == 2)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  if (((v27 | v28) & 1) != 0 && ((v27 ^ v28) & 1) != 0 || (v27 = v19, v19 != v26))
  {
    if (!v27)
    {
      return result;
    }
  }

  else
  {
    result = *(v10 + 476);
    v57 = *(v11 + 476);
    if (result == v57)
    {
      if (v10 >= v11)
      {
        return result;
      }
    }

    else if (result <= v57)
    {
      return result;
    }
  }

  v29 = *a3;
  *a3 = *a4;
  *a4 = v29;
  v30 = *a3;
  v31 = *a2;
  v32 = (*(**(*a3 + 64) + 256))(*(*a3 + 64));
  v33 = 0;
  v34 = 0;
  while (*(v15 + 4 * v34) > *(v32 + 4 * v34))
  {
    v35 = *(a5 + 4 * v34);
    v36 = *(v32 + 8 + 4 * v34);
    v34 = 1;
    v37 = (v35 < v36) & ~v33;
    v33 = 1;
    if ((v37 & 1) == 0)
    {
      v38 = v35 < v36;
      goto LABEL_26;
    }
  }

  v38 = 0;
LABEL_26:
  v39 = (*(**(v31 + 64) + 256))(*(v31 + 64));
  v40 = 0;
  v41 = 0;
  while (1)
  {
    result = *(v15 + 4 * v41);
    if (result <= *(v39 + 4 * v41))
    {
      break;
    }

    result = *(a5 + 4 * v41);
    v42 = *(v39 + 8 + 4 * v41);
    v41 = 1;
    v43 = (result < v42) & ~v40;
    v40 = 1;
    if ((v43 & 1) == 0)
    {
      v44 = result < v42;
      goto LABEL_31;
    }
  }

  v44 = 0;
LABEL_31:
  if (*(v30 + 493) == 2)
  {
    v45 = v38;
  }

  else
  {
    v45 = 0;
  }

  if (*(v31 + 493) == 2)
  {
    v46 = v44;
  }

  else
  {
    v46 = 0;
  }

  if (((v45 | v46) & 1) != 0 && ((v45 ^ v46) & 1) != 0 || (v45 = v38, v38 != v44))
  {
    if (!v45)
    {
      return result;
    }

    goto LABEL_41;
  }

  result = *(v30 + 476);
  v67 = *(v31 + 476);
  if (result != v67)
  {
    if (result <= v67)
    {
      return result;
    }

LABEL_41:
    v47 = *a2;
    *a2 = *a3;
    *a3 = v47;
    v48 = *a2;
    v49 = *a1;
    v50 = (*(**(*a2 + 64) + 256))(*(*a2 + 64));
    v51 = 0;
    v52 = 0;
    while (*(v15 + 4 * v52) > *(v50 + 4 * v52))
    {
      v53 = *(a5 + 4 * v52);
      v54 = *(v50 + 8 + 4 * v52);
      v52 = 1;
      v55 = (v53 < v54) & ~v51;
      v51 = 1;
      if ((v55 & 1) == 0)
      {
        v56 = v53 < v54;
        goto LABEL_49;
      }
    }

    v56 = 0;
LABEL_49:
    v58 = (*(**(v49 + 64) + 256))(*(v49 + 64));
    v59 = 0;
    v60 = 0;
    while (1)
    {
      result = *(v15 + 4 * v60);
      if (result <= *(v58 + 4 * v60))
      {
        break;
      }

      result = *(a5 + 4 * v60);
      v61 = *(v58 + 8 + 4 * v60);
      v60 = 1;
      v62 = (result < v61) & ~v59;
      v59 = 1;
      if ((v62 & 1) == 0)
      {
        v63 = result < v61;
        goto LABEL_54;
      }
    }

    v63 = 0;
LABEL_54:
    if (*(v48 + 493) == 2)
    {
      v64 = v56;
    }

    else
    {
      v64 = 0;
    }

    if (*(v49 + 493) == 2)
    {
      v65 = v63;
    }

    else
    {
      v65 = 0;
    }

    if (((v64 | v65) & 1) != 0 && ((v64 ^ v65) & 1) != 0 || (v64 = v56, v56 != v63))
    {
      if (!v64)
      {
        return result;
      }

      goto LABEL_64;
    }

    result = *(v48 + 476);
    v68 = *(v49 + 476);
    if (result == v68)
    {
      if (v48 >= v49)
      {
        return result;
      }
    }

    else if (result <= v68)
    {
      return result;
    }

LABEL_64:
    v66 = *a1;
    *a1 = *a2;
    *a2 = v66;
    return result;
  }

  if (v30 < v31)
  {
    goto LABEL_41;
  }

  return result;
}

float std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, uint64_t a6)
{
  v12.n128_f32[0] = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(a1, a2, a3, a4, a6);
  v13 = *a5;
  v14 = *a4;
  v15 = (*(**(*a5 + 64) + 256))(v12);
  v16 = 0;
  v17 = 0;
  v18 = a6 + 8;
  while (*(v18 + 4 * v17) > *(v15 + 4 * v17))
  {
    v19 = *(a6 + 4 * v17);
    v20 = *(v15 + 8 + 4 * v17);
    v17 = 1;
    v21 = (v19 < v20) & ~v16;
    v16 = 1;
    if ((v21 & 1) == 0)
    {
      v22 = v19 < v20;
      goto LABEL_6;
    }
  }

  v22 = 0;
LABEL_6:
  v23 = (*(**(v14 + 64) + 256))(*(v14 + 64));
  v24 = 0;
  v25 = 0;
  while (1)
  {
    result = *(v18 + 4 * v25);
    if (result <= *(v23 + 4 * v25))
    {
      break;
    }

    result = *(a6 + 4 * v25);
    v27 = *(v23 + 8 + 4 * v25);
    v25 = 1;
    v28 = (result < v27) & ~v24;
    v24 = 1;
    if ((v28 & 1) == 0)
    {
      v29 = result < v27;
      goto LABEL_11;
    }
  }

  v29 = 0;
LABEL_11:
  if (*(v13 + 493) == 2)
  {
    v30 = v22;
  }

  else
  {
    v30 = 0;
  }

  if (*(v14 + 493) == 2)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0;
  }

  if (((v30 | v31) & 1) != 0 && ((v30 ^ v31) & 1) != 0 || (v30 = v22, v22 != v29))
  {
    if (!v30)
    {
      return result;
    }
  }

  else
  {
    result = *(v13 + 476);
    v60 = *(v14 + 476);
    if (result == v60)
    {
      if (v13 >= v14)
      {
        return result;
      }
    }

    else if (result <= v60)
    {
      return result;
    }
  }

  v32 = *a4;
  *a4 = *a5;
  *a5 = v32;
  v33 = *a4;
  v34 = *a3;
  v35 = (*(**(*a4 + 64) + 256))(*(*a4 + 64));
  v36 = 0;
  v37 = 0;
  while (*(v18 + 4 * v37) > *(v35 + 4 * v37))
  {
    v38 = *(a6 + 4 * v37);
    v39 = *(v35 + 8 + 4 * v37);
    v37 = 1;
    v40 = (v38 < v39) & ~v36;
    v36 = 1;
    if ((v40 & 1) == 0)
    {
      v41 = v38 < v39;
      goto LABEL_26;
    }
  }

  v41 = 0;
LABEL_26:
  v42 = (*(**(v34 + 64) + 256))(*(v34 + 64));
  v43 = 0;
  v44 = 0;
  while (1)
  {
    result = *(v18 + 4 * v44);
    if (result <= *(v42 + 4 * v44))
    {
      break;
    }

    result = *(a6 + 4 * v44);
    v45 = *(v42 + 8 + 4 * v44);
    v44 = 1;
    v46 = (result < v45) & ~v43;
    v43 = 1;
    if ((v46 & 1) == 0)
    {
      v47 = result < v45;
      goto LABEL_31;
    }
  }

  v47 = 0;
LABEL_31:
  if (*(v33 + 493) == 2)
  {
    v48 = v41;
  }

  else
  {
    v48 = 0;
  }

  if (*(v34 + 493) == 2)
  {
    v49 = v47;
  }

  else
  {
    v49 = 0;
  }

  if (((v48 | v49) & 1) != 0 && ((v48 ^ v49) & 1) != 0 || (v48 = v41, v41 != v47))
  {
    if (!v48)
    {
      return result;
    }
  }

  else
  {
    result = *(v33 + 476);
    v79 = *(v34 + 476);
    if (result == v79)
    {
      if (v33 >= v34)
      {
        return result;
      }
    }

    else if (result <= v79)
    {
      return result;
    }
  }

  v50 = *a3;
  *a3 = *a4;
  *a4 = v50;
  v51 = *a3;
  v52 = *a2;
  v53 = (*(**(*a3 + 64) + 256))(*(*a3 + 64));
  v54 = 0;
  v55 = 0;
  while (*(v18 + 4 * v55) > *(v53 + 4 * v55))
  {
    v56 = *(a6 + 4 * v55);
    v57 = *(v53 + 8 + 4 * v55);
    v55 = 1;
    v58 = (v56 < v57) & ~v54;
    v54 = 1;
    if ((v58 & 1) == 0)
    {
      v59 = v56 < v57;
      goto LABEL_49;
    }
  }

  v59 = 0;
LABEL_49:
  v61 = (*(**(v52 + 64) + 256))(*(v52 + 64));
  v62 = 0;
  v63 = 0;
  while (1)
  {
    result = *(v18 + 4 * v63);
    if (result <= *(v61 + 4 * v63))
    {
      break;
    }

    result = *(a6 + 4 * v63);
    v64 = *(v61 + 8 + 4 * v63);
    v63 = 1;
    v65 = (result < v64) & ~v62;
    v62 = 1;
    if ((v65 & 1) == 0)
    {
      v66 = result < v64;
      goto LABEL_54;
    }
  }

  v66 = 0;
LABEL_54:
  if (*(v51 + 493) == 2)
  {
    v67 = v59;
  }

  else
  {
    v67 = 0;
  }

  if (*(v52 + 493) == 2)
  {
    v68 = v66;
  }

  else
  {
    v68 = 0;
  }

  if (((v67 | v68) & 1) != 0 && ((v67 ^ v68) & 1) != 0 || (v67 = v59, v59 != v66))
  {
    if (!v67)
    {
      return result;
    }

    goto LABEL_64;
  }

  result = *(v51 + 476);
  v89 = *(v52 + 476);
  if (result != v89)
  {
    if (result <= v89)
    {
      return result;
    }

LABEL_64:
    v69 = *a2;
    *a2 = *a3;
    *a3 = v69;
    v70 = *a2;
    v71 = *a1;
    v72 = (*(**(*a2 + 64) + 256))(*(*a2 + 64));
    v73 = 0;
    v74 = 0;
    while (*(v18 + 4 * v74) > *(v72 + 4 * v74))
    {
      v75 = *(a6 + 4 * v74);
      v76 = *(v72 + 8 + 4 * v74);
      v74 = 1;
      v77 = (v75 < v76) & ~v73;
      v73 = 1;
      if ((v77 & 1) == 0)
      {
        v78 = v75 < v76;
        goto LABEL_74;
      }
    }

    v78 = 0;
LABEL_74:
    v80 = (*(**(v71 + 64) + 256))(*(v71 + 64));
    v81 = 0;
    v82 = 0;
    while (1)
    {
      result = *(v18 + 4 * v82);
      if (result <= *(v80 + 4 * v82))
      {
        break;
      }

      result = *(a6 + 4 * v82);
      v83 = *(v80 + 8 + 4 * v82);
      v82 = 1;
      v84 = (result < v83) & ~v81;
      v81 = 1;
      if ((v84 & 1) == 0)
      {
        v85 = result < v83;
        goto LABEL_79;
      }
    }

    v85 = 0;
LABEL_79:
    if (*(v70 + 493) == 2)
    {
      v86 = v78;
    }

    else
    {
      v86 = 0;
    }

    if (*(v71 + 493) == 2)
    {
      v87 = v85;
    }

    else
    {
      v87 = 0;
    }

    if (((v86 | v87) & 1) != 0 && ((v86 ^ v87) & 1) != 0 || (v86 = v78, v78 != v85))
    {
      if (!v86)
      {
        return result;
      }

      goto LABEL_89;
    }

    result = *(v70 + 476);
    v90 = *(v71 + 476);
    if (result == v90)
    {
      if (v70 >= v71)
      {
        return result;
      }
    }

    else if (result <= v90)
    {
      return result;
    }

LABEL_89:
    v88 = *a1;
    *a1 = *a2;
    *a2 = v88;
    return result;
  }

  if (v51 < v52)
  {
    goto LABEL_64;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v5 = a2 - a1;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(a1, a1 + 1, a2 - 1, a3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v5 < 2)
    {
      return 1;
    }

    if (v5 == 2)
    {
      v6 = *(a2 - 1);
      v7 = *a1;
      v8 = (*(**(v6 + 64) + 256))(*(v6 + 64));
      v9 = 0;
      v10 = 0;
      v11 = a3 + 8;
      while (*(v11 + 4 * v10) > *(v8 + 4 * v10))
      {
        v12 = *(a3 + 4 * v10);
        v13 = *(v8 + 8 + 4 * v10);
        v10 = 1;
        v14 = (v12 < v13) & ~v9;
        v9 = 1;
        if ((v14 & 1) == 0)
        {
          v15 = v12 < v13;
          goto LABEL_73;
        }
      }

      v15 = 0;
LABEL_73:
      v62 = (*(**(v7 + 64) + 256))(*(v7 + 64));
      v63 = 0;
      v64 = 0;
      while (*(v11 + 4 * v64) > *(v62 + 4 * v64))
      {
        v65 = *(a3 + 4 * v64);
        v66 = *(v62 + 8 + 4 * v64);
        v64 = 1;
        v67 = (v65 < v66) & ~v63;
        v63 = 1;
        if ((v67 & 1) == 0)
        {
          v68 = v65 < v66;
          goto LABEL_78;
        }
      }

      v68 = 0;
LABEL_78:
      if (*(v6 + 493) == 2)
      {
        v69 = v15;
      }

      else
      {
        v69 = 0;
      }

      if (*(v7 + 493) == 2)
      {
        v70 = v68;
      }

      else
      {
        v70 = 0;
      }

      if (((v69 | v70) & 1) == 0 || ((v69 ^ v70) & 1) == 0)
      {
        v69 = v15;
        if (v15 == v68)
        {
          v73 = *(v6 + 476);
          v74 = *(v7 + 476);
          if (v73 == v74)
          {
            if (v6 >= v7)
            {
              return 1;
            }
          }

          else if (v73 <= v74)
          {
            return 1;
          }

          goto LABEL_88;
        }
      }

      if (v69)
      {
LABEL_88:
        v71 = *a1;
        *a1 = *(a2 - 1);
        *(a2 - 1) = v71;
      }

      return 1;
    }
  }

  v16 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(a1, a1 + 1, a1 + 2, a3);
  v17 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v18 = 0;
  v19 = a3 + 8;
  while (1)
  {
    v20 = *v17;
    v21 = *v16;
    v22 = (*(**(*v17 + 64) + 256))(*(*v17 + 64));
    v23 = 0;
    v24 = 0;
    while (*(v19 + 4 * v24) > *(v22 + 4 * v24))
    {
      v25 = *(a3 + 4 * v24);
      v26 = *(v22 + 8 + 4 * v24);
      v24 = 1;
      v27 = (v25 < v26) & ~v23;
      v23 = 1;
      if ((v27 & 1) == 0)
      {
        v28 = v25 < v26;
        goto LABEL_20;
      }
    }

    v28 = 0;
LABEL_20:
    v29 = (*(**(v21 + 64) + 256))(*(v21 + 64));
    v30 = 0;
    v31 = 0;
    while (*(v19 + 4 * v31) > *(v29 + 4 * v31))
    {
      v32 = *(a3 + 4 * v31);
      v33 = *(v29 + 8 + 4 * v31);
      v31 = 1;
      v34 = (v32 < v33) & ~v30;
      v30 = 1;
      if ((v34 & 1) == 0)
      {
        v35 = v32 < v33;
        goto LABEL_25;
      }
    }

    v35 = 0;
LABEL_25:
    if (*(v20 + 493) == 2)
    {
      v36 = v28;
    }

    else
    {
      v36 = 0;
    }

    if (*(v21 + 493) == 2)
    {
      v37 = v35;
    }

    else
    {
      v37 = 0;
    }

    if (((v36 | v37) & 1) != 0 && ((v36 ^ v37) & 1) != 0 || (v36 = v28, v28 != v35))
    {
      if (v36)
      {
        goto LABEL_35;
      }

      goto LABEL_67;
    }

    v60 = *(v20 + 476);
    v61 = *(v21 + 476);
    if (v60 == v61)
    {
      break;
    }

    if (v60 > v61)
    {
      goto LABEL_35;
    }

LABEL_67:
    v16 = v17++;
    if (v17 == a2)
    {
      return 1;
    }
  }

  if (v20 >= v21)
  {
    goto LABEL_67;
  }

LABEL_35:
  v38 = *v17;
  *v17 = *v16;
  do
  {
    v39 = v16;
    v41 = *--v16;
    v40 = v41;
    v42 = (*(**(v38 + 64) + 256))(*(v38 + 64));
    v43 = 0;
    v44 = 0;
    while (*(v19 + 4 * v44) > *(v42 + 4 * v44))
    {
      v45 = *(a3 + 4 * v44);
      v46 = *(v42 + 8 + 4 * v44);
      v44 = 1;
      v47 = (v45 < v46) & ~v43;
      v43 = 1;
      if ((v47 & 1) == 0)
      {
        v48 = v45 < v46;
        goto LABEL_41;
      }
    }

    v48 = 0;
LABEL_41:
    v49 = (*(**(v40 + 64) + 256))(*(v40 + 64));
    v50 = 0;
    v51 = 0;
    while (*(v19 + 4 * v51) > *(v49 + 4 * v51))
    {
      v52 = *(a3 + 4 * v51);
      v53 = *(v49 + 8 + 4 * v51);
      v51 = 1;
      v54 = (v52 < v53) & ~v50;
      v50 = 1;
      if ((v54 & 1) == 0)
      {
        v55 = v52 < v53;
        goto LABEL_46;
      }
    }

    v55 = 0;
LABEL_46:
    if (*(v38 + 493) == 2)
    {
      v56 = v48;
    }

    else
    {
      v56 = 0;
    }

    if (*(v40 + 493) == 2)
    {
      v57 = v55;
    }

    else
    {
      v57 = 0;
    }

    if (((v56 | v57) & 1) != 0 && ((v56 ^ v57) & 1) != 0 || (v56 = v48, v48 != v55))
    {
      if (!v56)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v58 = *(v38 + 476);
      v59 = *(v40 + 476);
      if (v58 == v59)
      {
        if (v38 >= v40)
        {
          goto LABEL_66;
        }
      }

      else if (v58 <= v59)
      {
        goto LABEL_66;
      }
    }

    *v39 = *(v39 - 1);
  }

  while (v16 != a1);
  v39 = a1;
LABEL_66:
  *v39 = v38;
  if (++v18 != 8)
  {
    goto LABEL_67;
  }

  return v17 + 1 == a2;
}

void md::MuninRoadLabelDedupingGroup::~MuninRoadLabelDedupingGroup(md::MuninRoadLabelDedupingGroup *this)
{
  *this = off_1F2A55B58;
  v1 = (this + 8);
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 40));
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);

  JUMPOUT(0x1B8C62190);
}

{
  *this = off_1F2A55B58;
  v1 = (this + 8);
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 40));
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::AppliedWantsDynamicShadowBounds>(ecs2::Entity,md::ls::AppliedWantsDynamicShadowBounds &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedWantsDynamicShadowBounds>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedWantsDynamicShadowBounds>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::AppliedWantsDynamicShadowBounds>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedWantsDynamicShadowBounds>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedWantsDynamicShadowBounds>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::AppliedWantsDynamicShadowBounds>(ecs2::Entity,md::ls::AppliedWantsDynamicShadowBounds &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A072C0;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::AppliedUsesIdentityMatrix>(ecs2::Entity,md::ls::AppliedUsesIdentityMatrix &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedUsesIdentityMatrix>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedUsesIdentityMatrix>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::AppliedUsesIdentityMatrix>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedUsesIdentityMatrix>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedUsesIdentityMatrix>(void)::metadata) = *(a2 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedUsesIdentityMatrix>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::AppliedUsesIdentityMatrix>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedUsesIdentityMatrix>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::AppliedUsesIdentityMatrix>(void)::localId;
    unk_1EB82D750 = 0xD26E29C5780B3C99;
    qword_1EB82D758 = "md::ls::AppliedUsesIdentityMatrix]";
    qword_1EB82D760 = 33;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::AppliedUsesIdentityMatrix>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedUsesIdentityMatrix>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedUsesIdentityMatrix>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedUsesIdentityMatrix>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls25AppliedUsesIdentityMatrixEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedUsesIdentityMatrix>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedUsesIdentityMatrix>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::AppliedUsesIdentityMatrix>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedUsesIdentityMatrix>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedUsesIdentityMatrix>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls25AppliedUsesIdentityMatrixEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A07398;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::AppliedUsesIdentityMatrix,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A07378;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::AppliedUsesIdentityMatrix,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A07378;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::AppliedUsesIdentityMatrix>(ecs2::Entity,md::ls::AppliedUsesIdentityMatrix &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A07330;
  a2[1] = *(result + 8);
  return result;
}

uint64_t *ecs2::ExecutionTask<md::MaterialResourceStore *>::service<md::MaterialResourceStore>(uint64_t **a1)
{
  v1 = a1[1];
  if (!v1)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_5;
    }

    while (*v4 != 0x4EDAD23DFB014132)
    {
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    if (v4 == v5)
    {
LABEL_5:
      v1 = 0;
    }

    else
    {
      v1 = v4[3];
      v6 = v4[4];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }
    }

    a1[1] = v1;
  }

  return v1;
}

uint64_t *ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *,md::MaterialResourceStore *,mre::GGLResourceStore *>::service<md::MaterialResourceStore>(uint64_t **a1)
{
  v1 = a1[3];
  if (!v1)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_5;
    }

    while (*v4 != 0x4EDAD23DFB014132)
    {
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    if (v4 == v5)
    {
LABEL_5:
      v1 = 0;
    }

    else
    {
      v1 = v4[3];
      v6 = v4[4];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }
    }

    a1[3] = v1;
  }

  return v1;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28UniqueMaterialDiffuseTextureEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialDiffuseTexture>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialDiffuseTexture>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialDiffuseTexture>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialDiffuseTexture>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialDiffuseTexture>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialDiffuseTexture,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41130;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialDiffuseTexture,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialDiffuseTexture,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41150;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialDiffuseTexture,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialDiffuseTexture,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialDiffuseTexture,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41130;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialDiffuseTexture,64ul>::~storage(a1);
}

void std::__function::__func<md::ita::ResolveMaterialDiffuseTexture::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialDiffuseTexture &>,ecs2::Query<md::ls::SharedMaterialDiffuseTexture &,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> &>)::$_0,std::allocator<md::ita::ResolveMaterialDiffuseTexture::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialDiffuseTexture &>,ecs2::Query<md::ls::SharedMaterialDiffuseTexture &,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> &>)::$_0>,void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialDiffuseTexture &)>::operator()(uint64_t a1, unint64_t *a2, TextureHandle *a3)
{
  md::MaterialResourceStore::getMaterial(&v21, **(a1 + 8), *a2);
  v20 = a2[1];
  v6 = v21;
  v7 = **(v21 + 48);
  v8 = *(v21 + 16);
  if (v8)
  {
    if (gms::_Material<ggl::Texture2D>::zoomable(v8, 1u) && v7 < 1.0)
    {
LABEL_5:
      v11 = **(a1 + 16);
      goto LABEL_6;
    }
  }

  v9 = *(v6 + 32);
  if (v9)
  {
    v10 = gms::_Material<ggl::Texture2D>::zoomable(v9, 1u);
    v11 = 0;
    if (!v10 || v7 <= 0.0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = 0;
LABEL_6:
  v12 = **(a1 + 24);
  v18 = 1;
  md::MaterialTextureManager::textureFromMaterial(v19, v12, &v21, &v20, &v18, v11);
  v14 = v19[0];
  v13 = v19[1];
  if (v19[0])
  {
    md::SharedResource::addFrameRef(v19[0], **(a1 + 32));
    v15 = *(v14 + 4);
  }

  else
  {
    v15 = 0;
  }

  mre::GGLResourceStore::updateUnmanagedTexture(**(a1 + 40), *a3, v15);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v16 = v22;
  if (v22)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }
}

void sub_1B2E66EA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::ita::ResolveMaterialDiffuseTexture::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialDiffuseTexture &>,ecs2::Query<md::ls::SharedMaterialDiffuseTexture &,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> &>)::$_0,std::allocator<md::ita::ResolveMaterialDiffuseTexture::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialDiffuseTexture &>,ecs2::Query<md::ls::SharedMaterialDiffuseTexture &,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> &>)::$_0>,void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialDiffuseTexture &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A073E0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls29UniqueMaterialEmissiveTextureEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialEmissiveTexture>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialEmissiveTexture>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialEmissiveTexture>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialEmissiveTexture>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialEmissiveTexture>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialEmissiveTexture,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A413C8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialEmissiveTexture,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialEmissiveTexture,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A413E8;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialEmissiveTexture,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialEmissiveTexture,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialEmissiveTexture,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A413C8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialEmissiveTexture,64ul>::~storage(a1);
}

__n128 std::__function::__func<md::ita::ResolveMaterialEmissiveTexture::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialEmissiveTexture &>,ecs2::Query<md::ls::SharedMaterialEmissiveTexture &,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> &>)::$_0,std::allocator<md::ita::ResolveMaterialEmissiveTexture::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialEmissiveTexture &>,ecs2::Query<md::ls::SharedMaterialEmissiveTexture &,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> &>)::$_0>,void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialEmissiveTexture &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A07428;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<md::ita::KeepMaterialAlbedoTextureAlive::operator()(ecs2::Query<md::ls::UniqueMaterialAlbedoTexture &>)::$_0,std::allocator<md::ita::KeepMaterialAlbedoTextureAlive::operator()(ecs2::Query<md::ls::UniqueMaterialAlbedoTexture &>)::$_0>,void ()(md::ls::UniqueMaterialAlbedoTexture &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A07470;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::ita::ResolveMaterialAlbedoTexture::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::MaterialPendingProcessing const&,md::ls::UniqueMaterialAlbedoTexture &>,ecs2::Query<md::ls::SharedMaterialAlbedoTexture &>)::$_0,std::allocator<md::ita::ResolveMaterialAlbedoTexture::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::MaterialPendingProcessing const&,md::ls::UniqueMaterialAlbedoTexture &>,ecs2::Query<md::ls::SharedMaterialAlbedoTexture &>)::$_0>,void ()(md::ls::UniqueMaterialData const&,md::ls::MaterialPendingProcessing const&,md::ls::UniqueMaterialAlbedoTexture &)>::operator()(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  md::MaterialResourceStore::getMaterial(&v28, **(a1 + 8), *a2);
  v27 = a2[1];
  v7 = v28;
  v8 = **(v28 + 48);
  v9 = *(v28 + 16);
  if (v9 && (gms::_Material<ggl::Texture2D>::zoomable(v9, 1u) ? (v23 = v8 < 1.0) : (v23 = 0), v23) || (v10 = v7[4]) != 0 && gms::_Material<ggl::Texture2D>::zoomable(v10, 1u) && v8 > 0.0)
  {
    v11 = (*(*v7 + 888))(v7, **(a1 + 24));
    if (v11 & 0x100) != 0 && (v11)
    {
      v12 = **(a1 + 16);
      v14 = *(v12 + 312);
      v13 = *(v12 + 320);
      if (v13)
      {
        v15 = 1;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v13);
        v16 = 0;
        v17 = 0;
        goto LABEL_18;
      }

      v16 = 0;
      v17 = 0;
      goto LABEL_17;
    }

    v19 = *(a1 + 24);
    v20 = **(a1 + 16);
    v24 = 1;
    md::MaterialTextureManager::textureFromMaterial(&v25, v20, &v28, &v27, &v24, *v19);
  }

  else
  {
    v18 = **(a1 + 16);
    v24 = 1;
    md::MaterialTextureManager::textureFromMaterial(&v25, v18, &v28, &v27, &v24, 0);
  }

  v17 = v25;
  v16 = v26;
  if (v25)
  {
    md::SharedResource::addFrameRef(v25, **(a1 + 32));
    v14 = *(v17 + 4);
    if (!v16)
    {
      goto LABEL_17;
    }

LABEL_15:
    v15 = 0;
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_18;
  }

  v14 = 0;
  if (v26)
  {
    goto LABEL_15;
  }

LABEL_17:
  v15 = 1;
LABEL_18:
  v21 = *(a4 + 24);
  *(a4 + 16) = v17;
  *(a4 + 24) = v16;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  mre::GGLResourceStore::updateUnmanagedTexture(**(a1 + 40), *a4, v14);
  if ((v15 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  v22 = v29;
  if (v29)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }
}

void sub_1B2E6768C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::ita::ResolveMaterialAlbedoTexture::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::MaterialPendingProcessing const&,md::ls::UniqueMaterialAlbedoTexture &>,ecs2::Query<md::ls::SharedMaterialAlbedoTexture &>)::$_0,std::allocator<md::ita::ResolveMaterialAlbedoTexture::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::MaterialPendingProcessing const&,md::ls::UniqueMaterialAlbedoTexture &>,ecs2::Query<md::ls::SharedMaterialAlbedoTexture &>)::$_0>,void ()(md::ls::UniqueMaterialData const&,md::ls::MaterialPendingProcessing const&,md::ls::UniqueMaterialAlbedoTexture &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A074B8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RenderableAlbedoTextureEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableAlbedoTexture>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableAlbedoTexture>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableAlbedoTexture>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 32 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 32 * (v13 & 0x3F);
        v18 = *v17;
        v19 = *(v17 + 8);
        *v17 = 0;
        *(v17 + 8) = 0;
        v25 = *(v17 + 16);
        v20 = *v16;
        *v16 = 0;
        *(v16 + 8) = 0;
        v21 = *(v17 + 8);
        *v17 = v20;
        if (v21)
        {
          v22 = v18;
          std::__shared_weak_count::__release_shared[abi:nn200100](v21);
          v18 = v22;
        }

        v23 = *(v16 + 16);
        *(v17 + 24) = *(v16 + 24);
        *(v17 + 16) = v23;
        v24 = *(v16 + 8);
        *v16 = v18;
        *(v16 + 8) = v19;
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v24);
          v19 = *(v16 + 8);
        }

        *(v16 + 16) = v25;
        *(v16 + 24) = BYTE8(v25);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v19);
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableAlbedoTexture>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableAlbedoTexture>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderableAlbedoTexture,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42C98;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RenderableAlbedoTexture,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RenderableAlbedoTexture,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A42CB8;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 32 * (v4 & 0x3F) + 8);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[7];
  v7 = a1[8];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[10];
  if (v8)
  {
    a1[11] = v8;
    operator delete(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    a1[8] = v9;
    operator delete(v9);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::RenderableAlbedoTexture,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RenderableAlbedoTexture,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderableAlbedoTexture,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42C98;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RenderableAlbedoTexture,64ul>::~storage(a1);
}

__n128 std::__function::__func<md::ita::ResolveRenderableAlbedoTextureFallbacks::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderableAlbedoTexture const&>)::$_1,std::allocator<md::ita::ResolveRenderableAlbedoTextureFallbacks::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderableAlbedoTexture const&>)::$_1>,void ()(md::ls::MeshRenderableID const&,md::ls::RenderableAlbedoTexture const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A075F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls27SharedMaterialAlbedoTextureEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialAlbedoTexture>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialAlbedoTexture>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SharedMaterialAlbedoTexture>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialAlbedoTexture>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialAlbedoTexture>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedMaterialAlbedoTexture,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42D68;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::SharedMaterialAlbedoTexture,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::SharedMaterialAlbedoTexture,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A42D88;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::SharedMaterialAlbedoTexture,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::SharedMaterialAlbedoTexture,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedMaterialAlbedoTexture,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42D68;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::SharedMaterialAlbedoTexture,64ul>::~storage(a1);
}

__n128 std::__function::__func<md::ita::ResolveRenderableAlbedoTextureFallbacks::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderableAlbedoTexture const&>)::$_0,std::allocator<md::ita::ResolveRenderableAlbedoTextureFallbacks::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderableAlbedoTexture const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::SharedMaterialAlbedoTexture const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A07500;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::ita::ResolveRenderableAlbedoTextureFallbacksForPendingProcessing::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::RenderableAlbedoTexture const&>)::$_1,std::allocator<md::ita::ResolveRenderableAlbedoTextureFallbacksForPendingProcessing::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::RenderableAlbedoTexture const&>)::$_1>,void ()(md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::RenderableAlbedoTexture const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, TextureHandle *a4)
{
  v5 = *(a1 + 24);
  TextureStorageTracked = mre::GGLResourceStore::getTextureStorageTracked(**(a1 + 8), a4[1]);
  if (TextureStorageTracked)
  {
    v7 = *TextureStorageTracked;
  }

  else
  {
    v7 = 0;
  }

  v8 = **(a1 + 16);
  v10 = *(v8 + 312);
  v9 = *(v8 + 320);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  if (v10 != v7)
  {
    v11 = *v5;
    v12 = ecs2::ExecutionTaskContext::currentEntity(v9);

    ecs2::addComponent<md::ls::CanEnableTexture>(v11, v12);
  }
}

__n128 std::__function::__func<md::ita::ResolveRenderableAlbedoTextureFallbacksForPendingProcessing::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::RenderableAlbedoTexture const&>)::$_1,std::allocator<md::ita::ResolveRenderableAlbedoTextureFallbacksForPendingProcessing::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::RenderableAlbedoTexture const&>)::$_1>,void ()(md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::RenderableAlbedoTexture const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A07688;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::ita::ResolveRenderableAlbedoTextureFallbacksForPendingProcessing::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::RenderableAlbedoTexture const&>)::$_0,std::allocator<md::ita::ResolveRenderableAlbedoTextureFallbacksForPendingProcessing::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::RenderableAlbedoTexture const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::SharedMaterialAlbedoTexture const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, TextureHandle *a4)
{
  v5 = *(a1 + 24);
  TextureStorageTracked = mre::GGLResourceStore::getTextureStorageTracked(**(a1 + 8), *a4);
  if (TextureStorageTracked)
  {
    v7 = *TextureStorageTracked;
  }

  else
  {
    v7 = 0;
  }

  v8 = **(a1 + 16);
  v10 = *(v8 + 312);
  v9 = *(v8 + 320);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  if (v10 != v7)
  {
    v11 = *v5;
    v12 = ecs2::ExecutionTaskContext::currentEntity(v9);

    ecs2::addComponent<md::ls::CanEnableTexture>(v11, v12);
  }
}

__n128 std::__function::__func<md::ita::ResolveRenderableAlbedoTextureFallbacksForPendingProcessing::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::RenderableAlbedoTexture const&>)::$_0,std::allocator<md::ita::ResolveRenderableAlbedoTextureFallbacksForPendingProcessing::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::RenderableAlbedoTexture const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::SharedMaterialAlbedoTexture const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A07640;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void ecs2::addComponent<md::ls::PositionScaleInfoConstantDataHandle>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  v4 = *(a3 + 8);
  operator new();
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PositionScaleInfoConstantDataHandle>(ecs2::Entity,md::ls::PositionScaleInfoConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PositionScaleInfoConstantDataHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PositionScaleInfoConstantDataHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PositionScaleInfoConstantDataHandle>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v55 = *(a1 + 8);
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 16 * (v13 & 0x3F);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v55;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v58 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v57 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v57;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v58;
  *(v51 + 16 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PositionScaleInfoConstantDataHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PositionScaleInfoConstantDataHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PositionScaleInfoConstantDataHandle>(ecs2::Entity,md::ls::PositionScaleInfoConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A50728;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31UniqueColorCorrectionDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorCorrectionDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorCorrectionDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueColorCorrectionDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorCorrectionDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorCorrectionDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueColorCorrectionDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41678;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UniqueColorCorrectionDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UniqueColorCorrectionDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41698;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::UniqueColorCorrectionDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UniqueColorCorrectionDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueColorCorrectionDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41678;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UniqueColorCorrectionDataHandle,64ul>::~storage(a1);
}

void std::__function::__func<md::ita::UpdateColorCorrectionData::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueColorCorrectionDataHandle const&,md::ls::MaterialPendingProcessing const&>)::$_0,std::allocator<md::ita::UpdateColorCorrectionData::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueColorCorrectionDataHandle const&,md::ls::MaterialPendingProcessing const&>)::$_0>,void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueColorCorrectionDataHandle const&,md::ls::MaterialPendingProcessing const&)>::operator()(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  md::MaterialResourceStore::getMaterial(&v17, **(a1 + 8), *a2);
  v5 = v17;
  v6.n128_u32[0] = **(a1 + 16);
  v7 = (*(*v17 + 752))(v17, v6);
  v9 = v8;
  v10 = (*(*v5 + 784))(v5, **(a1 + 16));
  v11 = v10;
  v13 = v12;
  v14 = HIDWORD(v10);
  ColorCorrectionData = md::MaterialResourceStore::getColorCorrectionData(**(a1 + 8), *a3);
  if (*(ColorCorrectionData + 20) == v13)
  {
    if (*(ColorCorrectionData + 20))
    {
      *(ColorCorrectionData + 12) = v11;
      *(ColorCorrectionData + 16) = v14;
    }
  }

  else if (*(ColorCorrectionData + 20))
  {
    *(ColorCorrectionData + 20) = 0;
  }

  else
  {
    *(ColorCorrectionData + 12) = v11;
    *(ColorCorrectionData + 16) = v14;
    *(ColorCorrectionData + 20) = 1;
  }

  if (*(ColorCorrectionData + 8) == v9)
  {
    if (*(ColorCorrectionData + 8))
    {
      *ColorCorrectionData = v7;
    }
  }

  else if (*(ColorCorrectionData + 8))
  {
    *(ColorCorrectionData + 8) = 0;
  }

  else
  {
    *ColorCorrectionData = v7;
    *(ColorCorrectionData + 8) = 1;
  }

  v16 = v18;
  if (v18)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }
}

void sub_1B2E68FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::ita::UpdateColorCorrectionData::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueColorCorrectionDataHandle const&,md::ls::MaterialPendingProcessing const&>)::$_0,std::allocator<md::ita::UpdateColorCorrectionData::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueColorCorrectionDataHandle const&,md::ls::MaterialPendingProcessing const&>)::$_0>,void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueColorCorrectionDataHandle const&,md::ls::MaterialPendingProcessing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A076D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls24CheckIfRequiresDepthPeelEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfRequiresDepthPeel>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfRequiresDepthPeel>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::CheckIfRequiresDepthPeel>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfRequiresDepthPeel>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfRequiresDepthPeel>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls24CheckIfRequiresDepthPeelEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A077C8;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::CheckIfRequiresDepthPeel,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A077A8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::CheckIfRequiresDepthPeel,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A077A8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}