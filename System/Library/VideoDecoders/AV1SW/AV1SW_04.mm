uint64_t sub_27759524C(int *a1, uint64_t a2, int a3, int a4, int a5)
{
  sub_277594CDC(a1, 2 * a2, a3, a4, a5);
  v10 = a1[a2];
  v11 = a1[3 * a2];
  v314 = 5 * a2;
  v12 = a1[5 * a2];
  v319 = 8 * a2;
  v318 = 7 * a2;
  v13 = a1[7 * a2];
  v14 = a1[9 * a2];
  v320 = 9 * a2;
  v321 = 11 * a2;
  v15 = a1[11 * a2];
  v322 = 13 * a2;
  v16 = a1[13 * a2];
  v324 = a2 << 6;
  v323 = 15 * a2;
  v17 = a1[15 * a2];
  if (a5)
  {
    v18 = (201 * v10 + 2048) >> 12;
    v19 = (2048 - 2751 * v17) >> 12;
    v20 = (1751 * v14 + 2048) >> 12;
    v21 = (2048 - 1380 * v13) >> 12;
    v22 = (995 * v12 + 2048) >> 12;
    v23 = (2048 - 2106 * v15) >> 12;
    v24 = vshr_n_s32(vmla_s32(0x80000000800, vdup_n_s32(v11), 0xFFFFFDA700000FD4), 0xCuLL);
    v25 = vshr_n_s32(vmla_s32(0x80000000800, vdup_n_s32(v16), 0x98800000CDALL), 0xCuLL);
    v26 = (3513 * v15 + 2048) >> 12;
    v27 = (3973 * v12 + 2048) >> 12;
    v28 = (3857 * v13 + 2048) >> 12;
    v29 = (3703 * v14 + 2048) >> 12;
    v30 = (3035 * v17 + 2048) >> 12;
    v31 = (4091 * v10 + 2048) >> 12;
    v309 = 17 * a2;
    v312 = 19 * a2;
    v313 = 21 * a2;
    v315 = 23 * a2;
    v316 = 25 * a2;
    v310 = 27 * a2;
    v317 = 31 * a2;
    v311 = 29 * a2;
  }

  else
  {
    v32 = a1[17 * a2];
    v312 = 19 * a2;
    v33 = &a1[19 * a2];
    v313 = 21 * a2;
    v34 = a1[21 * a2];
    v315 = 23 * a2;
    v35 = a1[23 * a2];
    v316 = 25 * a2;
    v36 = a1[25 * a2];
    v317 = 31 * a2;
    v37 = a1[31 * a2];
    v18 = ((5 * v37 + 201 * v10 + 2048) >> 12) - v37;
    v38 = vdup_n_s32(v16);
    v39.i32[0] = a1[3 * a2];
    v40 = vdup_n_s32(v11);
    v39.i32[1] = a1[29 * a2];
    v23 = v34 + ((-583 * v34 - 2106 * v15 + 2048) >> 12);
    v41 = vld1_dup_f32(v33);
    v310 = 27 * a2;
    v311 = 29 * a2;
    LODWORD(v33) = a1[27 * a2];
    v26 = v15 + ((2106 * v34 - 583 * v15 + 2048) >> 12);
    v22 = ((123 * v33 + 995 * v12 + 2048) >> 12) - v33;
    v21 = v36 + ((-239 * v36 - 1380 * v13 + 2048) >> 12);
    v27 = v12 + ((995 * v33 - 123 * v12 + 2048) >> 12);
    v28 = v13 + ((1380 * v36 - 239 * v13 + 2048) >> 12);
    v20 = ((393 * v35 + 1751 * v14 + 2048) >> 12) - v35;
    v42 = 1751 * v35 - 393 * v14;
    v19 = v32 + ((-1061 * v32 - 2751 * v17 + 2048) >> 12);
    v29 = v14 + ((v42 + 2048) >> 12);
    v30 = v17 + ((2751 * v32 - 1061 * v17 + 2048) >> 12);
    v31 = v10 + ((-5 * v10 + 201 * v37 + 2048) >> 12);
    v309 = 17 * a2;
    v24 = vsra_n_s32(v39, vadd_s32(vmla_s32(vmul_s32(vdup_n_s32(v39.u32[1]), 0xFFFFFFD400000259), v40, 0xFFFFFDA7FFFFFFD4), 0x80000000800), 0xCuLL);
    v25 = vshr_n_s32(vadd_s32(vmla_s32(vmul_s32(v41, 0xFFFFF993000004C4), v38, 0x4C40000066DLL), 0x40000000400), 0xBuLL);
  }

  v43 = v18 + v19;
  if (v18 + v19 >= a4)
  {
    v44 = a4;
  }

  else
  {
    v44 = v18 + v19;
  }

  v45 = v18 - v19;
  if (v43 < a3)
  {
    v44 = a3;
  }

  if (v45 >= a4)
  {
    v46 = a4;
  }

  else
  {
    v46 = v45;
  }

  if (v45 >= a3)
  {
    v47 = v46;
  }

  else
  {
    v47 = a3;
  }

  v48 = v21 - v20;
  if (v21 - v20 >= a4)
  {
    v49 = a4;
  }

  else
  {
    v49 = v21 - v20;
  }

  v50 = v20 + v21;
  if (v48 >= a3)
  {
    v51 = v49;
  }

  else
  {
    v51 = a3;
  }

  if (v50 >= a4)
  {
    v52 = a4;
  }

  else
  {
    v52 = v50;
  }

  if (v50 >= a3)
  {
    v53 = v52;
  }

  else
  {
    v53 = a3;
  }

  if (v22 - v23 >= a4)
  {
    v54 = a4;
  }

  else
  {
    v54 = v22 - v23;
  }

  v55 = __PAIR64__(v25.u32[1], v22);
  v56 = __PAIR64__(v24.u32[1], v23);
  if (v22 - v23 >= a3)
  {
    v57 = v54;
  }

  else
  {
    v57 = a3;
  }

  if (v27 - v26 >= a4)
  {
    v58 = a4;
  }

  else
  {
    v58 = v27 - v26;
  }

  v59 = __PAIR64__(v26, v24.u32[0]);
  v60 = __PAIR64__(v27, v25.u32[0]);
  if (v27 - v26 >= a3)
  {
    v61 = v58;
  }

  else
  {
    v61 = a3;
  }

  v62 = v28 + v29;
  if (v28 + v29 >= a4)
  {
    v63 = a4;
  }

  else
  {
    v63 = v28 + v29;
  }

  v64 = v28 - v29;
  if (v62 >= a3)
  {
    v65 = v63;
  }

  else
  {
    v65 = a3;
  }

  if (v64 >= a4)
  {
    v66 = a4;
  }

  else
  {
    v66 = v64;
  }

  if (v64 < a3)
  {
    v66 = a3;
  }

  if (v31 - v30 >= a4)
  {
    v67 = a4;
  }

  else
  {
    v67 = v31 - v30;
  }

  v68 = v30 + v31;
  if (v31 - v30 >= a3)
  {
    v69 = v67;
  }

  else
  {
    v69 = a3;
  }

  if (v68 >= a4)
  {
    v70 = a4;
  }

  else
  {
    v70 = v68;
  }

  v71 = v68 < a3;
  v72 = ((79 * v47 + 799 * v69 + 2048) >> 12) - v47;
  v73 = v69 + ((799 * v47 - 79 * v69 + 2048) >> 12);
  v74 = ((-799 * v51 + 79 * v66 + 2048) >> 12) - v66;
  v75 = vdup_n_s32(a3);
  v76 = vdup_n_s32(a4);
  v77 = ((79 * v51 + 799 * v66 + 2048) >> 12) - v51;
  v78 = vsub_s32(v24, v25);
  v79 = vbsl_s8(vcgt_s32(v75, v78), v75, vmin_s32(v78, v76));
  v80 = vdup_n_s32(0xFFFFFB8E);
  if (v71)
  {
    v81 = a3;
  }

  else
  {
    v81 = v70;
  }

  if (v44 + v53 >= a4)
  {
    v82 = a4;
  }

  else
  {
    v82 = v44 + v53;
  }

  if (v44 + v53 >= a3)
  {
    v83 = v82;
  }

  else
  {
    v83 = a3;
  }

  if (v72 - v74 >= a4)
  {
    v84 = a4;
  }

  else
  {
    v84 = v72 - v74;
  }

  v85 = v44 - v53;
  if (v72 - v74 >= a3)
  {
    v86 = v84;
  }

  else
  {
    v86 = a3;
  }

  if (v85 >= a4)
  {
    v87 = a4;
  }

  else
  {
    v87 = v85;
  }

  v88 = vadd_s32(v55, v56);
  v89 = vbsl_s8(vcgt_s32(v75, v88), v75, vmin_s32(v88, v76));
  if (v85 >= a3)
  {
    v90 = v87;
  }

  else
  {
    v90 = a3;
  }

  if (v89.i32[1] - v89.i32[0] >= a4)
  {
    v91 = a4;
  }

  else
  {
    v91 = v89.i32[1] - v89.i32[0];
  }

  v92 = v89.i32[0] + v89.i32[1];
  if (v89.i32[1] - v89.i32[0] >= a3)
  {
    v93 = v91;
  }

  else
  {
    v93 = a3;
  }

  if (v92 >= a4)
  {
    v94 = a4;
  }

  else
  {
    v94 = v89.i32[0] + v89.i32[1];
  }

  v95 = vadd_s32(v59, v60);
  v96 = vbsl_s8(vcgt_s32(v75, v95), v75, vmin_s32(v95, v76));
  if (v92 >= a3)
  {
    v97 = v94;
  }

  else
  {
    v97 = a3;
  }

  if (v96.i32[0] + v96.i32[1] >= a4)
  {
    v98 = a4;
  }

  else
  {
    v98 = v96.i32[0] + v96.i32[1];
  }

  v99 = v96.i32[0] - v96.i32[1];
  if (v96.i32[0] + v96.i32[1] >= a3)
  {
    v100 = v98;
  }

  else
  {
    v100 = a3;
  }

  if (v99 >= a4)
  {
    v101 = a4;
  }

  else
  {
    v101 = v96.i32[0] - v96.i32[1];
  }

  if (v99 >= a3)
  {
    v102 = v101;
  }

  else
  {
    v102 = a3;
  }

  if (v81 - v65 >= a4)
  {
    v103 = a4;
  }

  else
  {
    v103 = v81 - v65;
  }

  if (v81 - v65 >= a3)
  {
    v104 = v103;
  }

  else
  {
    v104 = a3;
  }

  v105 = v73 - v77;
  if (v73 - v77 >= a4)
  {
    v106 = a4;
  }

  else
  {
    v106 = v73 - v77;
  }

  v107 = v73 + v77;
  if (v105 >= a3)
  {
    v108 = v106;
  }

  else
  {
    v108 = a3;
  }

  if (v107 >= a4)
  {
    v109 = a4;
  }

  else
  {
    v109 = v107;
  }

  v71 = v107 < a3;
  v110 = v65 + v81;
  if (v71)
  {
    v111 = a3;
  }

  else
  {
    v111 = v109;
  }

  if (v110 >= a4)
  {
    v112 = a4;
  }

  else
  {
    v112 = v65 + v81;
  }

  v71 = v110 < a3;
  v113 = ((312 * v86 + 1567 * v108 + 2048) >> 12) - v86;
  v114 = v108 + ((-312 * v108 + 1567 * v86 + 2048) >> 12);
  v115 = ((312 * v90 + 1567 * v104 + 2048) >> 12) - v90;
  v116 = v104 + ((1567 * v90 - 312 * v104 + 2048) >> 12);
  v117 = ((-1567 * v93 + 312 * v102 + 2048) >> 12) - v102;
  v118.i32[0] = vdup_lane_s32(vmul_s32(v79, v80), 1).u32[0];
  v118.i32[1] = -1138 * v79.i32[0] + 1024;
  v119 = vshr_n_s32(vadd_s32(vmla_s32(vmul_s32(vdup_n_s32(v57), 0xFFFFFB8E000006A7), vdup_n_s32(v61), 0x6A700000472), 0x40000000400), 0xBuLL);
  v120 = __PAIR64__(v119.u32[1], v72);
  v121 = ((312 * v93 + 1567 * v102 + 2048) >> 12) - v93;
  v122.i32[0] = vmla_s32(0x40000000400, v79, vdup_n_s32(0x6A7u)).u32[0];
  v122.i32[1] = vmul_s32(v79, vdup_n_s32(0xFFFFF959)).i32[1];
  v123 = vadd_s32(v122, v118);
  v124 = vshr_n_s32(v123, 0xBuLL);
  v125 = __PAIR64__(v124.u32[1], v74);
  v126 = vsub_s32(v124, v119);
  if (v71)
  {
    v127 = a3;
  }

  else
  {
    v127 = v112;
  }

  v128 = vsra_n_s32(v119, v123, 0xBuLL).u32[0];
  if (v128 >= a4)
  {
    v129 = a4;
  }

  else
  {
    v129 = v128;
  }

  v130 = vbsl_s8(vcgt_s32(v75, v126), v75, vmin_s32(v126, v76));
  v131 = v130.i32[1];
  v132 = ((312 * v130.i32[0] - 1567 * v130.i32[1] + 2048) >> 12) - v130.i32[0];
  v133 = vmul_s32(v130, 0x1380000061FLL);
  v134 = ((v133.i32[0] + v133.i32[1] + 2048) >> 12) - v131;
  if (v128 >= a3)
  {
    v135 = v129;
  }

  else
  {
    v135 = a3;
  }

  if (v83 + v97 >= a4)
  {
    v136 = a4;
  }

  else
  {
    v136 = v83 + v97;
  }

  v137 = vadd_s32(v120, v125);
  v138 = vbsl_s8(vcgt_s32(v75, v137), v75, vmin_s32(v137, v76));
  if (v83 + v97 >= a3)
  {
    v139 = v136;
  }

  else
  {
    v139 = a3;
  }

  v308 = v139;
  if (v138.i32[0] + v138.i32[1] >= a4)
  {
    v140 = a4;
  }

  else
  {
    v140 = v138.i32[0] + v138.i32[1];
  }

  if (v138.i32[0] + v138.i32[1] >= a3)
  {
    v141 = v140;
  }

  else
  {
    v141 = a3;
  }

  v307 = v141;
  if (v113 + v132 >= a4)
  {
    v142 = a4;
  }

  else
  {
    v142 = v113 + v132;
  }

  if (v113 + v132 >= a3)
  {
    v143 = v142;
  }

  else
  {
    v143 = a3;
  }

  v306 = v143;
  v144 = v115 + v117;
  if (v115 + v117 >= a4)
  {
    v145 = a4;
  }

  else
  {
    v145 = v115 + v117;
  }

  v146 = v115 - v117;
  if (v144 >= a3)
  {
    v147 = v145;
  }

  else
  {
    v147 = a3;
  }

  v305 = v147;
  if (v146 >= a4)
  {
    v148 = a4;
  }

  else
  {
    v148 = v146;
  }

  v149 = v113 - v132;
  if (v146 >= a3)
  {
    v150 = v148;
  }

  else
  {
    v150 = a3;
  }

  v297 = v150;
  if (v149 >= a4)
  {
    v151 = a4;
  }

  else
  {
    v151 = v149;
  }

  v71 = v149 < a3;
  v152 = v138.i32[0] - v138.i32[1];
  if (v71)
  {
    v153 = a3;
  }

  else
  {
    v153 = v151;
  }

  v298 = v153;
  if (v152 >= a4)
  {
    v154 = a4;
  }

  else
  {
    v154 = v138.i32[0] - v138.i32[1];
  }

  v155 = v83 - v97;
  if (v152 >= a3)
  {
    v156 = v154;
  }

  else
  {
    v156 = a3;
  }

  v299 = v156;
  if (v155 >= a4)
  {
    v157 = a4;
  }

  else
  {
    v157 = v155;
  }

  if (v155 >= a3)
  {
    v158 = v157;
  }

  else
  {
    v158 = a3;
  }

  v302 = v158;
  if (v127 - v100 >= a4)
  {
    v159 = a4;
  }

  else
  {
    v159 = v127 - v100;
  }

  if (v127 - v100 >= a3)
  {
    v160 = v159;
  }

  else
  {
    v160 = a3;
  }

  v301 = v160;
  if (v111 - v135 >= a4)
  {
    v161 = a4;
  }

  else
  {
    v161 = v111 - v135;
  }

  if (v111 - v135 >= a3)
  {
    v162 = v161;
  }

  else
  {
    v162 = a3;
  }

  v293 = v162;
  if (v114 - v134 >= a4)
  {
    v163 = a4;
  }

  else
  {
    v163 = v114 - v134;
  }

  if (v114 - v134 >= a3)
  {
    v164 = v163;
  }

  else
  {
    v164 = a3;
  }

  v290 = v164;
  v165 = v116 - v121;
  if (v116 - v121 >= a4)
  {
    v166 = a4;
  }

  else
  {
    v166 = v116 - v121;
  }

  v167 = v116 + v121;
  if (v165 >= a3)
  {
    v168 = v166;
  }

  else
  {
    v168 = a3;
  }

  if (v167 >= a4)
  {
    v169 = a4;
  }

  else
  {
    v169 = v167;
  }

  v71 = v167 < a3;
  v170 = v114 + v134;
  if (v71)
  {
    v171 = a3;
  }

  else
  {
    v171 = v169;
  }

  v291 = v171;
  if (v170 >= a4)
  {
    v172 = a4;
  }

  else
  {
    v172 = v114 + v134;
  }

  v71 = v170 < a3;
  v173 = v111 + v135;
  if (v71)
  {
    v174 = a3;
  }

  else
  {
    v174 = v172;
  }

  if (v173 >= a4)
  {
    v175 = a4;
  }

  else
  {
    v175 = v111 + v135;
  }

  v176 = v100 + v127;
  if (v173 >= a3)
  {
    v177 = v175;
  }

  else
  {
    v177 = a3;
  }

  if (v176 >= a4)
  {
    v178 = a4;
  }

  else
  {
    v178 = v176;
  }

  if (v176 < a3)
  {
    v178 = a3;
  }

  v303 = v178;
  v304 = *a1;
  v179 = *a1 + v178;
  if (v179 >= a4)
  {
    v180 = a4;
  }

  else
  {
    v180 = *a1 + v178;
  }

  v181 = 6 * a2;
  v283 = 10 * a2;
  v284 = 12 * a2;
  v285 = 14 * a2;
  v286 = 18 * a2;
  v287 = 20 * a2;
  v288 = 22 * a2;
  v289 = 24 * a2;
  v294 = 26 * a2;
  v295 = 28 * a2;
  v300 = 30 * a2;
  v182 = a1[2 * a2];
  v296 = v182;
  if (v179 < a3)
  {
    v180 = a3;
  }

  v183 = 4 * a2;
  v184 = a1[4 * a2];
  v185 = a1[6 * a2];
  v292 = v185;
  v186 = a1[8 * a2];
  v187 = a1[10 * a2];
  v188 = a1[12 * a2];
  v189 = a1[14 * a2];
  v190 = a1[16 * a2];
  v281 = a1[18 * a2];
  v282 = a1[20 * a2];
  v191 = a1[22 * a2];
  v192 = a1[24 * a2];
  v193 = a1[26 * a2];
  result = a1[28 * a2];
  v195 = a1[30 * a2];
  *a1 = v180;
  if (v177 + v182 >= a4)
  {
    v196 = a4;
  }

  else
  {
    v196 = v177 + v182;
  }

  if (v177 + v182 < a3)
  {
    v196 = a3;
  }

  a1[a2] = v196;
  if (v174 + v184 >= a4)
  {
    v197 = a4;
  }

  else
  {
    v197 = v174 + v184;
  }

  if (v174 + v184 >= a3)
  {
    v198 = v197;
  }

  else
  {
    v198 = a3;
  }

  a1[2 * a2] = v198;
  if (v171 + v185 >= a4)
  {
    v199 = a4;
  }

  else
  {
    v199 = v171 + v185;
  }

  if (v171 + v185 >= a3)
  {
    v200 = v199;
  }

  else
  {
    v200 = a3;
  }

  a1[3 * a2] = v200;
  v201 = 181 * (v168 + v297) + 128;
  v202 = v186 + (v201 >> 8);
  if (v202 >= a4)
  {
    v203 = a4;
  }

  else
  {
    v203 = v186 + (v201 >> 8);
  }

  if (v202 >= a3)
  {
    v204 = v203;
  }

  else
  {
    v204 = a3;
  }

  a1[v183] = v204;
  v205 = 181 * (v290 + v298) + 128;
  v206 = v187 + (v205 >> 8);
  if (v206 >= a4)
  {
    v207 = a4;
  }

  else
  {
    v207 = v187 + (v205 >> 8);
  }

  if (v206 >= a3)
  {
    v208 = v207;
  }

  else
  {
    v208 = a3;
  }

  a1[v314] = v208;
  v209 = 181 * (v293 + v299) + 128;
  v210 = v188 + (v209 >> 8);
  if (v210 >= a4)
  {
    v211 = a4;
  }

  else
  {
    v211 = v188 + (v209 >> 8);
  }

  if (v210 >= a3)
  {
    v212 = v211;
  }

  else
  {
    v212 = a3;
  }

  a1[v181] = v212;
  v213 = 181 * (v168 - v297) + 128;
  v214 = 181 * (v290 - v298) + 128;
  v215 = 181 * (v293 - v299) + 128;
  v216 = 181 * (v301 - v302) + 128;
  v217 = 181 * (v302 + v301) + 128;
  v218 = v189 + (v217 >> 8);
  if (v218 >= a4)
  {
    v219 = a4;
  }

  else
  {
    v219 = v189 + (v217 >> 8);
  }

  if (v218 >= a3)
  {
    v220 = v219;
  }

  else
  {
    v220 = a3;
  }

  a1[v318] = v220;
  v221 = v190 + (v216 >> 8);
  if (v221 >= a4)
  {
    v222 = a4;
  }

  else
  {
    v222 = v190 + (v216 >> 8);
  }

  if (v221 >= a3)
  {
    v223 = v222;
  }

  else
  {
    v223 = a3;
  }

  a1[v319] = v223;
  v224 = v281 + (v215 >> 8);
  if (v224 >= a4)
  {
    v225 = a4;
  }

  else
  {
    v225 = v281 + (v215 >> 8);
  }

  if (v224 >= a3)
  {
    v226 = v225;
  }

  else
  {
    v226 = a3;
  }

  a1[v320] = v226;
  v227 = v282 + (v214 >> 8);
  if (v227 >= a4)
  {
    v228 = a4;
  }

  else
  {
    v228 = v282 + (v214 >> 8);
  }

  if (v227 >= a3)
  {
    v229 = v228;
  }

  else
  {
    v229 = a3;
  }

  a1[v283] = v229;
  v230 = v191 + (v213 >> 8);
  if (v230 >= a4)
  {
    v231 = a4;
  }

  else
  {
    v231 = v191 + (v213 >> 8);
  }

  if (v230 >= a3)
  {
    v232 = v231;
  }

  else
  {
    v232 = a3;
  }

  a1[v321] = v232;
  if (v192 + v305 >= a4)
  {
    v233 = a4;
  }

  else
  {
    v233 = v192 + v305;
  }

  if (v192 + v305 >= a3)
  {
    v234 = v233;
  }

  else
  {
    v234 = a3;
  }

  a1[v284] = v234;
  if (v306 + v193 >= a4)
  {
    v235 = a4;
  }

  else
  {
    v235 = v306 + v193;
  }

  if (v306 + v193 >= a3)
  {
    v236 = v235;
  }

  else
  {
    v236 = a3;
  }

  a1[v322] = v236;
  if (result + v307 >= a4)
  {
    v237 = a4;
  }

  else
  {
    v237 = result + v307;
  }

  if (result + v307 >= a3)
  {
    v238 = v237;
  }

  else
  {
    v238 = a3;
  }

  a1[v285] = v238;
  if (v195 + v308 >= a4)
  {
    v239 = a4;
  }

  else
  {
    v239 = v195 + v308;
  }

  if (v195 + v308 >= a3)
  {
    v240 = v239;
  }

  else
  {
    v240 = a3;
  }

  a1[v323] = v240;
  if (v195 - v308 >= a4)
  {
    v241 = a4;
  }

  else
  {
    v241 = v195 - v308;
  }

  if (v195 - v308 >= a3)
  {
    v242 = v241;
  }

  else
  {
    v242 = a3;
  }

  *(a1 + v324) = v242;
  if (result - v307 >= a4)
  {
    v243 = a4;
  }

  else
  {
    v243 = result - v307;
  }

  if (result - v307 >= a3)
  {
    v244 = v243;
  }

  else
  {
    v244 = a3;
  }

  a1[v309] = v244;
  if (v193 - v306 >= a4)
  {
    v245 = a4;
  }

  else
  {
    v245 = v193 - v306;
  }

  if (v193 - v306 >= a3)
  {
    v246 = v245;
  }

  else
  {
    v246 = a3;
  }

  a1[v286] = v246;
  if (v192 - v305 >= a4)
  {
    v247 = a4;
  }

  else
  {
    v247 = v192 - v305;
  }

  if (v192 - v305 >= a3)
  {
    v248 = v247;
  }

  else
  {
    v248 = a3;
  }

  a1[v312] = v248;
  v249 = v191 - (v213 >> 8);
  if (v249 >= a4)
  {
    v250 = a4;
  }

  else
  {
    v250 = v191 - (v213 >> 8);
  }

  if (v249 >= a3)
  {
    v251 = v250;
  }

  else
  {
    v251 = a3;
  }

  a1[v287] = v251;
  v252 = v282 - (v214 >> 8);
  if (v252 >= a4)
  {
    v253 = a4;
  }

  else
  {
    v253 = v282 - (v214 >> 8);
  }

  if (v252 >= a3)
  {
    v254 = v253;
  }

  else
  {
    v254 = a3;
  }

  a1[v313] = v254;
  v255 = v281 - (v215 >> 8);
  if (v255 >= a4)
  {
    v256 = a4;
  }

  else
  {
    v256 = v281 - (v215 >> 8);
  }

  if (v255 >= a3)
  {
    v257 = v256;
  }

  else
  {
    v257 = a3;
  }

  a1[v288] = v257;
  v258 = v190 - (v216 >> 8);
  if (v258 >= a4)
  {
    v259 = a4;
  }

  else
  {
    v259 = v190 - (v216 >> 8);
  }

  if (v258 >= a3)
  {
    v260 = v259;
  }

  else
  {
    v260 = a3;
  }

  a1[v315] = v260;
  v261 = v189 - (v217 >> 8);
  if (v261 >= a4)
  {
    v262 = a4;
  }

  else
  {
    v262 = v189 - (v217 >> 8);
  }

  if (v261 >= a3)
  {
    v263 = v262;
  }

  else
  {
    v263 = a3;
  }

  a1[v289] = v263;
  v264 = v188 - (v209 >> 8);
  if (v264 >= a4)
  {
    v265 = a4;
  }

  else
  {
    v265 = v188 - (v209 >> 8);
  }

  if (v264 >= a3)
  {
    v266 = v265;
  }

  else
  {
    v266 = a3;
  }

  a1[v316] = v266;
  v267 = v187 - (v205 >> 8);
  if (v267 >= a4)
  {
    v268 = a4;
  }

  else
  {
    v268 = v187 - (v205 >> 8);
  }

  if (v267 >= a3)
  {
    v269 = v268;
  }

  else
  {
    v269 = a3;
  }

  a1[v294] = v269;
  v270 = v186 - (v201 >> 8);
  if (v270 >= a4)
  {
    v271 = a4;
  }

  else
  {
    v271 = v186 - (v201 >> 8);
  }

  if (v270 >= a3)
  {
    v272 = v271;
  }

  else
  {
    v272 = a3;
  }

  a1[v310] = v272;
  if (v292 - v291 >= a4)
  {
    v273 = a4;
  }

  else
  {
    v273 = v292 - v291;
  }

  if (v292 - v291 >= a3)
  {
    v274 = v273;
  }

  else
  {
    v274 = a3;
  }

  a1[v295] = v274;
  if (v184 - v174 >= a4)
  {
    v275 = a4;
  }

  else
  {
    v275 = v184 - v174;
  }

  if (v184 - v174 >= a3)
  {
    v276 = v275;
  }

  else
  {
    v276 = a3;
  }

  a1[v311] = v276;
  if (v296 - v177 >= a4)
  {
    v277 = a4;
  }

  else
  {
    v277 = v296 - v177;
  }

  if (v296 - v177 >= a3)
  {
    v278 = v277;
  }

  else
  {
    v278 = a3;
  }

  a1[v300] = v278;
  if (v304 - v303 >= a4)
  {
    v279 = a4;
  }

  else
  {
    v279 = v304 - v303;
  }

  if (v304 - v303 >= a3)
  {
    v280 = v279;
  }

  else
  {
    v280 = a3;
  }

  a1[v317] = v280;
  return result;
}

uint64_t sub_277596070(int *a1, uint64_t a2, int a3, int a4)
{
  sub_27759524C(a1, 2 * a2, a3, a4, 1);
  v520 = 3 * a2;
  v522 = 5 * a2;
  v507 = 7 * a2;
  v513 = 9 * a2;
  v498 = 11 * a2;
  v8 = a1[11 * a2];
  v496 = 13 * a2;
  v9 = a1[13 * a2];
  v524 = 15 * a2;
  v526 = 17 * a2;
  v528 = 19 * a2;
  v10 = a1[19 * a2];
  v530 = 21 * a2;
  v11 = a1[21 * a2];
  v531 = 23 * a2;
  v532 = 27 * a2;
  v533 = 29 * a2;
  v12.i32[0] = a1[a2];
  v13.i32[0] = v12.i32[0];
  v12.i32[1] = a1[15 * a2];
  v518 = 25 * a2;
  v519 = 31 * a2;
  v14 = __PAIR64__(v8, v9);
  v15.i32[0] = a1[31 * a2];
  v16.i32[0] = v15.i32[0];
  v15.i32[1] = a1[17 * a2];
  v16.i32[1] = a1[29 * a2];
  v13.i32[1] = a1[3 * a2];
  v17.i32[0] = a1[7 * a2];
  v18.i32[0] = v17.i32[0];
  v18.i32[1] = a1[5 * a2];
  v19 = vmla_s32(0x80000000800, v18, 0xFE100000FC4);
  v20 = vshr_n_s32(v19, 0xCuLL);
  v21.i32[0] = a1[25 * a2];
  v18.i32[0] = v21.i32[0];
  v18.i32[1] = a1[27 * a2];
  v21.i32[1] = a1[23 * a2];
  v22 = vshr_n_s32(vmla_s32(0x80000000800, v18, 0xC9D00000D15), 0xCuLL);
  v23 = vshr_n_s32(vmla_s32(0x80000000800, __PAIR64__(v11, v21.u32[1]), 0xDEC00000D85), 0xCuLL);
  v17.i32[1] = a1[9 * a2];
  v24 = vmla_s32(0x80000000800, __PAIR64__(v8, v17.u32[1]), 0xF6C00000F9CLL);
  v25 = vshr_n_s32(v24, 0xCuLL);
  v26 = vmla_s32(0x80000000800, __PAIR64__(v9, v12.u32[1]), 0xF3100000EEELL);
  v27 = vshr_n_s32(v26, 0xCuLL);
  v28 = vshr_n_s32(vmla_s32(0x80000000800, __PAIR64__(v10, v15.u32[1]), 0xE4B00000EA1), 0xCuLL);
  v29 = vshr_n_s32(vmla_s32(0x80000000800, v16, 0xC1E00000B97), 0xCuLL);
  v30 = vmla_s32(0x80000000800, v13, 0xFF500000FFFLL);
  v31 = vshr_n_s32(v30, 0xCuLL);
  v32 = vzip1_s32(v22, v23);
  v33 = vzip2_s32(v29, v22);
  v34 = vsra_n_s32(v22, v19, 0xCuLL);
  v35 = vdup_n_s32(a3);
  v36 = vdup_n_s32(a4);
  v565 = vbsl_s8(vcgt_s32(v35, v34), v35, vmin_s32(v34, v36));
  v37 = vzip2_s32(v28, v23);
  v38 = vsra_n_s32(v23, v24, 0xCuLL);
  v563 = vbsl_s8(vcgt_s32(v35, v38), v35, vmin_s32(v38, v36));
  v39 = vzip1_s32(v29, v28);
  v40 = vsra_n_s32(v28, v26, 0xCuLL);
  v559 = vbsl_s8(vcgt_s32(v35, v40), v35, vmin_s32(v40, v36));
  v41 = vsra_n_s32(v29, v30, 0xCuLL);
  v42 = vbsl_s8(vcgt_s32(v35, v41), v35, vmin_s32(v41, v36));
  v43 = vshr_n_s32(vmla_s32(0x80000000800, v21, 0xFFFFF77100000937), 0xCuLL);
  v44 = vshr_n_s32(vmla_s32(0x80000000800, v17, 0x381FFFFFD44), 0xCuLL);
  v45 = vsub_s32(v44, v43);
  v46 = vbsl_s8(vcgt_s32(v35, v45), v35, vmin_s32(v45, v36));
  v47 = vsub_s32(vzip1_s32(v20, v25), v32);
  v48 = vbsl_s8(vcgt_s32(v35, v47), v35, vmin_s32(v47, v36));
  v49 = vshr_n_s32(vadd_s32(vmla_s32(vmul_s32(v46, 0xFFFFFAEDFFFFF9D1), v48, 0x62FFFFFFAEDLL), 0x40000000400), 0xBuLL);
  v50 = vadd_s32(vmla_s32(vmul_s32(v46, 0x62FFFFFFAEDLL), v48, 0x5130000062FLL), 0x40000000400);
  v51 = vshr_n_s32(vmla_s32(0x80000000800, v15, 0x67CFFFFF4F8), 0xCuLL);
  v52 = vshr_n_s32(vmla_s32(0x80000000800, v12, 0xFFFFFA3E00000065), 0xCuLL);
  v53 = vsub_s32(v52, v51);
  v54 = vbsl_s8(vcgt_s32(v35, v53), v35, vmin_s32(v53, v36));
  v55 = v54.i32[1];
  v56 = vsub_s32(vzip1_s32(v31, v27), v39);
  v57 = vbsl_s8(vcgt_s32(v35, v56), v35, vmin_s32(v56, v36));
  v58 = __PAIR64__(v54.u32[1], v57.u32[0]);
  v59 = v54.i32[0];
  v60 = vmla_s32(vmul_s32(v54, 0x1400000191), v57, 0x191FFFFFFECLL);
  v61 = vshr_n_s32(v50, 0xBuLL);
  v62 = -401 * v55;
  v63 = ((20 * v59 + 401 * v57.i32[0] + 2048) >> 12) - v59;
  v64 = ((v62 + 20 * v57.i32[1] + 2048) >> 12) - v57.i32[1];
  v65 = vadd_s32(v60, 0x80000000800);
  v66 = vsra_n_s32(v57, v65, 0xCuLL);
  v67 = vsub_s32(vshr_n_s32(v65, 0xCuLL), v58);
  v68 = vmla_s32(0x80000000800, v14, 0xFFFFFBBC00000505);
  v69 = vdup_lane_s32(v67, 1);
  v70 = vadd_s32(v66, v69).u32[0];
  v71.i32[0] = v66.i32[0];
  v72 = vshr_n_s32(vmla_s32(0x80000000800, __PAIR64__(v11, v10), 0x7E3FFFFF8CELL), 0xCuLL);
  v73 = vshr_n_s32(vmla_s32(0x80000000800, __PAIR64__(a1[27 * a2], a1[29 * a2]), 0xFFFFF62800000A73), 0xCuLL);
  v74 = vmla_s32(0x80000000800, __PAIR64__(a1[5 * a2], a1[3 * a2]), 0x1F5FFFFFED3);
  v75 = vsub_s32(vshr_n_s32(v68, 0xCuLL), v72);
  v76 = vbsl_s8(vcgt_s32(v35, v75), v35, vmin_s32(v75, v36));
  v77 = vsub_s32(vshr_n_s32(v74, 0xCuLL), v73);
  v78 = vbsl_s8(vcgt_s32(v35, v77), v35, vmin_s32(v77, v36));
  v79 = vsub_s32(vzip2_s32(v27, v25), v37);
  v80 = vbsl_s8(vcgt_s32(v35, v79), v35, vmin_s32(v79, v36));
  v81 = vsub_s32(vzip2_s32(v31, v20), v33);
  v82 = vbsl_s8(vcgt_s32(v35, v81), v35, vmin_s32(v81, v36));
  v83 = vadd_s32(vmla_s32(vmul_s32(v76, 0x1E4FFFFFF50), v80, 0x78B000004A5), 0x80000000800);
  v84 = vsub_s32(vshr_n_s32(v83, 0xCuLL), v76);
  v85 = vmul_s32(v76, 0xFFFFF875FFFFFB5BLL);
  v86.i32[0] = vsra_n_s32(v76, v83, 0xCuLL).u32[0];
  v86.i32[1] = v84.i32[1];
  v87 = vmla_s32(vmul_s32(v78, 0x1E4000000B0), v82, 0x78BFFFFFB5BLL);
  v88 = vsra_n_s32(v82, vadd_s32(vmla_s32(vmul_s32(v78, 0x78BFFFFFB5BLL), v82, 0xFFFFFE1CFFFFFF50), 0x80000000800), 0xCuLL);
  v89 = vadd_s32(v88, v86);
  v90 = vbsl_s8(vcgt_s32(v35, v89), v35, vmin_s32(v89, v36));
  v91 = vadd_s32(v565, v563);
  v92 = vbsl_s8(vcgt_s32(v35, v91), v35, vmin_s32(v91, v36));
  v93 = vsra_n_s32(vdup_lane_s32(v61, 1), v50, 0xBuLL).u32[0];
  if (v93 >= a4)
  {
    v94 = a4;
  }

  else
  {
    v94 = v93;
  }

  if (v93 >= a3)
  {
    v95 = v94;
  }

  else
  {
    v95 = a3;
  }

  if (v70 >= a4)
  {
    v96 = a4;
  }

  else
  {
    v96 = v70;
  }

  if (v70 >= a3)
  {
    v97 = v96;
  }

  else
  {
    v97 = a3;
  }

  v98 = vadd_s32(v42, v559);
  v99 = vbsl_s8(vcgt_s32(v35, v98), v35, vmin_s32(v98, v36));
  v100 = vsub_s32(vzip2_s32(v42, v565), vzip2_s32(v559, v563));
  v101 = vbsl_s8(vcgt_s32(v35, v100), v35, vmin_s32(v100, v36));
  v102 = vsra_n_s32(v72, v68, 0xCuLL);
  v103 = vbsl_s8(vcgt_s32(v35, v102), v35, vmin_s32(v102, v36));
  v104 = vsra_n_s32(v73, v74, 0xCuLL);
  v105 = vbsl_s8(vcgt_s32(v35, v104), v35, vmin_s32(v104, v36));
  v106 = vsub_s32(v105, v103);
  v107 = vbsl_s8(vcgt_s32(v35, v106), v35, vmin_s32(v106, v36));
  v108 = vmul_s32(v107, 0x6A7FFFFFB8ELL);
  v109 = vadd_s32(vmla_s32(v85, v80, 0x1E4FFFFFF50), 0x80000000800);
  v110 = vsub_s32(vshr_n_s32(v109, 0xCuLL), v80);
  v111 = vsra_n_s32(v80, v109, 0xCuLL);
  v112 = vdup_lane_s32(v111, 0);
  v111.i32[1] = v110.i32[1];
  v113 = vsub_s32(vshr_n_s32(vadd_s32(v87, 0x80000000800), 0xCuLL), v78);
  v114 = vsub_s32(v113, v111);
  v115 = vbsl_s8(vcgt_s32(v35, v114), v35, vmin_s32(v114, v36));
  v116 = vmla_s32(vmul_s32(v107, 0xFFFFFB8EFFFFF959), v101, 0x6A7FFFFFB8ELL);
  v117 = vsub_s32(v88, v86);
  v118 = vbsl_s8(vcgt_s32(v35, v117), v35, vmin_s32(v117, v36));
  v119 = vmla_s32(vmul_s32(v115, 0xFFFFFB8EFFFFF959), v118, 0x6A7FFFFFB8ELL);
  v120 = vmul_s32(v115, 0x6A7FFFFFB8ELL);
  v121 = vadd_s32(vzip1_s32(v51, v43), vzip1_s32(v52, v44));
  v122 = vbsl_s8(vcgt_s32(v35, v121), v35, vmin_s32(v121, v36));
  v123 = vadd_s32(vzip2_s32(v51, v43), vzip2_s32(v52, v44));
  v124 = vbsl_s8(vcgt_s32(v35, v123), v35, vmin_s32(v123, v36));
  v125 = vadd_s32(v99, v92);
  v126 = vbsl_s8(vcgt_s32(v35, v125), v35, vmin_s32(v125, v36));
  v127 = vadd_s32(vzip2_s32(v122, v105), vzip2_s32(v124, v103));
  v128 = vbsl_s8(vcgt_s32(v35, v127), v35, vmin_s32(v127, v36));
  v129 = vadd_s32(vzip1_s32(v122, v105), vzip1_s32(v124, v103));
  v130 = vbsl_s8(vcgt_s32(v35, v129), v35, vmin_s32(v129, v36));
  v131 = vadd_s32(v130, v128);
  v132 = vbsl_s8(vcgt_s32(v35, v131), v35, vmin_s32(v131, v36));
  v133 = vsub_s32(v130, v128);
  v134 = vbsl_s8(vcgt_s32(v35, v133), v35, vmin_s32(v133, v36));
  v135 = vsub_s32(v99, v92);
  v136 = vbsl_s8(vcgt_s32(v35, v135), v35, vmin_s32(v135, v36));
  v137 = vsub_s32(vshr_n_s32(vadd_s32(vmla_s32(vmul_s32(v134, 0xFFFFF9E100000138), v136, 0x1380000061FLL), 0x80000000800), 0xCuLL), __PAIR64__(v136.u32[1], v134.u32[0]));
  v138 = vzip2_s32(v49, v110);
  v139 = vzip1_s32(v49, v61);
  v140 = vzip2_s32(v49, v61);
  v49.i32[1] = v113.i32[1];
  v141 = vadd_s32(v49, v138);
  v142 = vbsl_s8(vcgt_s32(v35, v141), v35, vmin_s32(v141, v36));
  v143 = vdup_lane_s32(v113, 0);
  v143.i32[0] = v63;
  v112.i32[0] = v64;
  v144 = vadd_s32(v143, v112);
  v145 = vbsl_s8(vcgt_s32(v35, v144), v35, vmin_s32(v144, v36));
  v146 = vsub_s32(v145, v142);
  v147 = vdup_lane_s32(v90, 0);
  v147.i32[0] = v97;
  v148 = vbsl_s8(vcgt_s32(v35, v146), v35, vmin_s32(v146, v36));
  v149 = vsub_s32(v147, __PAIR64__(v90.u32[1], v95));
  v150 = vbsl_s8(vcgt_s32(v35, v149), v35, vmin_s32(v149, v36));
  v151 = vsub_s32(vshr_n_s32(vadd_s32(vmla_s32(vmul_s32(v148, 0xFFFFF9E100000138), v150, 0x1380000061FLL), 0x80000000800), 0xCuLL), __PAIR64__(v150.u32[1], v148.u32[0]));
  v152 = vsub_s32(v139, v140);
  v153 = vbsl_s8(vcgt_s32(v35, v152), v35, vmin_s32(v152, v36));
  v71.i32[1] = v63;
  v69.i32[1] = v64;
  v154 = vsub_s32(v71, v69);
  v155 = vbsl_s8(vcgt_s32(v35, v154), v35, vmin_s32(v154, v36));
  v156 = vsub_s32(vshr_n_s32(vadd_s32(vmla_lane_s32(vmul_n_s32(0xFFFFFCE10000004FLL, v153.i32[0]), 0x4F0000031FLL, v153, 1), 0x80000000800), 0xCuLL), v153);
  v157 = vadd_s32(vmla_lane_s32(vmul_lane_s32(0x4F0000031FLL, v155, 1), 0x31FFFFFFFB1, v155, 0), 0x80000000800);
  v158 = vsub_s32(vshr_n_s32(v157, 0xCuLL), v155);
  v159.i32[0] = vsra_n_s32(v155, v157, 0xCuLL).u32[0];
  v159.i32[1] = v158.i32[1];
  v160 = vsub_s32(v159, v156);
  v161 = vbsl_s8(vcgt_s32(v35, v160), v35, vmin_s32(v160, v36));
  v162 = v126.i32[1];
  v163 = v126.i32[0];
  if (v132.i32[0] + v132.i32[1] >= a4)
  {
    v164 = a4;
  }

  else
  {
    v164 = v132.i32[0] + v132.i32[1];
  }

  if (v132.i32[0] + v132.i32[1] >= a3)
  {
    v165 = v164;
  }

  else
  {
    v165 = a3;
  }

  v517 = v165;
  if (v151.i32[0] + v151.i32[1] >= a4)
  {
    v166 = a4;
  }

  else
  {
    v166 = v151.i32[0] + v151.i32[1];
  }

  if (v151.i32[0] + v151.i32[1] >= a3)
  {
    v167 = v166;
  }

  else
  {
    v167 = a3;
  }

  v516 = v167;
  if (v137.i32[0] + v137.i32[1] >= a4)
  {
    v168 = a4;
  }

  else
  {
    v168 = v137.i32[0] + v137.i32[1];
  }

  v169 = v137.i32[0] - v137.i32[1];
  if (v137.i32[0] + v137.i32[1] >= a3)
  {
    v170 = v168;
  }

  else
  {
    v170 = a3;
  }

  v515 = v170;
  if (v169 >= a4)
  {
    v171 = a4;
  }

  else
  {
    v171 = v137.i32[0] - v137.i32[1];
  }

  v172 = v151.i32[0] - v151.i32[1];
  if (v169 >= a3)
  {
    v173 = v171;
  }

  else
  {
    v173 = a3;
  }

  v562 = v173;
  if (v172 >= a4)
  {
    v174 = a4;
  }

  else
  {
    v174 = v151.i32[0] - v151.i32[1];
  }

  if (v172 >= a3)
  {
    v175 = v174;
  }

  else
  {
    v175 = a3;
  }

  v495 = v175;
  if (v132.i32[0] - v132.i32[1] >= a4)
  {
    v176 = a4;
  }

  else
  {
    v176 = v132.i32[0] - v132.i32[1];
  }

  if (v132.i32[0] - v132.i32[1] >= a3)
  {
    v177 = v176;
  }

  else
  {
    v177 = a3;
  }

  v509 = v177;
  if (v126.i32[0] - v126.i32[1] >= a4)
  {
    v178 = a4;
  }

  else
  {
    v178 = v126.i32[0] - v126.i32[1];
  }

  v179 = vext_s8(v145, v90, 4uLL);
  v180 = vzip2_s32(v142, v90);
  v181 = vshr_n_s32(vadd_s32(v119, 0x40000000400), 0xBuLL);
  v182 = vshr_n_s32(vadd_s32(vmla_s32(v120, v118, 0x472000006A7), 0x40000000400), 0xBuLL);
  if (v126.i32[0] - v126.i32[1] >= a3)
  {
    v183 = v178;
  }

  else
  {
    v183 = a3;
  }

  v505 = v183;
  v145.i32[1] = v97;
  v142.i32[1] = v95;
  v184 = vadd_s32(v145, v142);
  v185 = vbsl_s8(vcgt_s32(v35, v184), v35, vmin_s32(v184, v36));
  v186 = vadd_s32(v179, v180);
  v187 = vbsl_s8(vcgt_s32(v35, v186), v35, vmin_s32(v186, v36));
  v188 = vzip1_s32(v182, v181);
  v189 = vzip2_s32(v182, v181);
  v190 = vadd_s32(v188, v189);
  v191 = vbsl_s8(vcgt_s32(v35, v190), v35, vmin_s32(v190, v36));
  v192 = vadd_s32(v185, v187);
  if (v192.i32[0] >= a4)
  {
    v193 = a4;
  }

  else
  {
    v193 = v192.i32[0];
  }

  if (v192.i32[0] >= a3)
  {
    v194 = v193;
  }

  else
  {
    v194 = a3;
  }

  v512 = v194;
  v195 = vadd_s32(v159, v156);
  v196 = vbsl_s8(vcgt_s32(v35, v195), v35, vmin_s32(v195, v36));
  v197 = vadd_s32(v196, v191);
  if (v197.i32[1] >= a4)
  {
    v198 = a4;
  }

  else
  {
    v198 = v197.i32[1];
  }

  v199 = vshr_n_s32(vadd_s32(v116, 0x40000000400), 0xBuLL);
  v200 = vshr_n_s32(vadd_s32(vmla_s32(v108, v101, 0x472000006A7), 0x40000000400), 0xBuLL);
  v201 = vsub_s32(v122, v124);
  v202 = vbsl_s8(vcgt_s32(v35, v201), v35, vmin_s32(v201, v36));
  v203 = vsub_s32(vzip1_s32(v42, v565), vzip1_s32(v559, v563));
  v204 = vbsl_s8(vcgt_s32(v35, v203), v35, vmin_s32(v203, v36));
  v205 = vshr_n_s32(vadd_s32(vmla_s32(vmul_s32(v202, 0xFFFFFCE10000004FLL), v204, 0x4F0000031FLL), 0x80000000800), 0xCuLL);
  v206 = vadd_s32(vmla_s32(vmul_s32(v202, 0x4F0000031FLL), v204, 0x31FFFFFFFB1), 0x80000000800);
  v207 = vsub_s32(vshr_n_s32(v206, 0xCuLL), v202);
  v202.i32[1] = v204.i32[1];
  v208 = vsub_s32(v205, v202);
  v209 = vsra_n_s32(v204, v206, 0xCuLL);
  if (v197.i32[1] >= a3)
  {
    v210 = v198;
  }

  else
  {
    v210 = a3;
  }

  v511 = v210;
  v211 = vadd_s32(vzip1_s32(v199, v200), vzip2_s32(v199, v200));
  v212 = vbsl_s8(vcgt_s32(v35, v211), v35, vmin_s32(v211, v36));
  v213 = vzip1_s32(v208, v209);
  v214 = vzip2_s32(v208, v207);
  v215 = vadd_s32(v213, v214);
  v216 = vbsl_s8(vcgt_s32(v35, v215), v35, vmin_s32(v215, v36));
  v217 = vadd_s32(v216, v212);
  if (v217.i32[0] >= a4)
  {
    v218 = a4;
  }

  else
  {
    v218 = v217.i32[0];
  }

  v219 = vdup_n_s32(0x138u);
  v221 = vmul_s32(v161, 0x61FFFFFFEC8);
  v220 = vext_s8(v161, v221, 4uLL);
  v221.i32[0] = 1567 * v161.i32[0] + 2048;
  v222 = vsub_s32(vzip1_s32(v200, v199), vzip2_s32(v200, v199));
  v223 = vbsl_s8(vcgt_s32(v35, v222), v35, vmin_s32(v222, v36));
  v224 = vsub_s32(v213, v214);
  v225 = vbsl_s8(vcgt_s32(v35, v224), v35, vmin_s32(v224, v36));
  v226 = vsub_s32(vshr_n_s32(vadd_s32(vmla_lane_s32(vmul_lane_s32(0x138FFFFF9E1, v223, 1), 0x61F00000138, v223, 0), 0x80000000800), 0xCuLL), v223);
  v227 = vadd_s32(vmla_lane_s32(vmul_n_s32(0x61F00000138, v225.i32[0]), 0xFFFFFEC80000061FLL, v225, 1), 0x80000000800);
  v214.i32[0] = vsub_s32(vshr_n_s32(v227, 0xCuLL), v225).u32[0];
  v228 = vsra_n_s32(v225, v227, 0xCuLL);
  if (v217.i32[0] < a3)
  {
    v218 = a3;
  }

  v504 = v218;
  v214.i32[1] = v228.i32[1];
  v229 = vadd_s32(v214, v226);
  if (v229.i32[0] >= a4)
  {
    v230 = a4;
  }

  else
  {
    v230 = v229.i32[0];
  }

  v231 = vsub_s32(v188, v189);
  v232 = vbsl_s8(vcgt_s32(v35, v231), v35, vmin_s32(v231, v36));
  v233 = vsub_s32(vshr_n_s32(vadd_s32(vmla_lane_s32(vmul_lane_s32(0x138FFFFF9E1, v232, 1), 0x61F00000138, v232, 0), 0x80000000800), 0xCuLL), v232);
  v234 = vrev64_s32(v161);
  if (v229.i32[0] >= a3)
  {
    v235 = v230;
  }

  else
  {
    v235 = a3;
  }

  v501 = v235;
  v236.i32[0] = vmul_s32(v220, v219).u32[0];
  v236.i32[1] = vadd_s32(v220, 0x80000000800).i32[1];
  v237 = vadd_s32(v236, v221);
  v238.i32[0] = vsub_s32(vshr_n_s32(v237, 0xCuLL), v234).u32[0];
  v238.i32[1] = vsra_n_s32(v234, v237, 0xCuLL).i32[1];
  v239 = vadd_s32(v238, v233);
  if (v239.i32[0] >= a4)
  {
    v240 = a4;
  }

  else
  {
    v240 = v239.i32[0];
  }

  v241 = vadd_s32(vmla_s32(vmul_s32(v148, 0x1380000061FLL), v150, 0x61FFFFFFEC8), 0x80000000800);
  v242 = vsub_s32(vshr_n_s32(v241, 0xCuLL), v148);
  v243 = vsra_n_s32(v150, v241, 0xCuLL).u32[0];
  if (v239.i32[0] >= a3)
  {
    v244 = v240;
  }

  else
  {
    v244 = a3;
  }

  v500 = v244;
  if ((v243 - v242.i32[1]) >= a4)
  {
    v245 = a4;
  }

  else
  {
    v245 = v243 - v242.i32[1];
  }

  v246 = vadd_s32(vmla_s32(vmul_s32(v134, 0x1380000061FLL), v136, 0x61FFFFFFEC8), 0x80000000800);
  v247 = vsub_s32(vshr_n_s32(v246, 0xCuLL), v134);
  v248 = vsra_n_s32(v136, v246, 0xCuLL).u32[0];
  if ((v243 - v242.i32[1]) >= a3)
  {
    v249 = v245;
  }

  else
  {
    v249 = a3;
  }

  v483 = v249;
  if ((v248 - v247.i32[1]) >= a4)
  {
    v250 = a4;
  }

  else
  {
    v250 = v248 - v247.i32[1];
  }

  v251 = v248 + v247.i32[1];
  if ((v248 - v247.i32[1]) >= a3)
  {
    v252 = v250;
  }

  else
  {
    v252 = a3;
  }

  v566 = v252;
  if (v251 >= a4)
  {
    v253 = a4;
  }

  else
  {
    v253 = v248 + v247.i32[1];
  }

  v254 = v243 + v242.i32[1];
  if (v251 >= a3)
  {
    v255 = v253;
  }

  else
  {
    v255 = a3;
  }

  v564 = v255;
  if (v254 >= a4)
  {
    v256 = a4;
  }

  else
  {
    v256 = v243 + v242.i32[1];
  }

  if (v254 >= a3)
  {
    v257 = v256;
  }

  else
  {
    v257 = a3;
  }

  v560 = v257;
  if (v239.i32[1] >= a4)
  {
    v258 = a4;
  }

  else
  {
    v258 = v239.i32[1];
  }

  if (v239.i32[1] >= a3)
  {
    v259 = v258;
  }

  else
  {
    v259 = a3;
  }

  v558 = v259;
  if (v229.i32[1] >= a4)
  {
    v260 = a4;
  }

  else
  {
    v260 = v229.i32[1];
  }

  if (v229.i32[1] >= a3)
  {
    v261 = v260;
  }

  else
  {
    v261 = a3;
  }

  v556 = v261;
  if (v217.i32[1] >= a4)
  {
    v262 = a4;
  }

  else
  {
    v262 = v217.i32[1];
  }

  if (v217.i32[1] >= a3)
  {
    v263 = v262;
  }

  else
  {
    v263 = a3;
  }

  v555 = v263;
  if (v197.i32[0] >= a4)
  {
    v264 = a4;
  }

  else
  {
    v264 = v197.i32[0];
  }

  if (v197.i32[0] < a3)
  {
    v264 = a3;
  }

  v557 = v264;
  if (v192.i32[1] >= a4)
  {
    v265 = a4;
  }

  else
  {
    v265 = v192.i32[1];
  }

  v266 = v163 + v162;
  if (v192.i32[1] >= a3)
  {
    v267 = v265;
  }

  else
  {
    v267 = a3;
  }

  v561 = v267;
  if (v266 >= a4)
  {
    v268 = a4;
  }

  else
  {
    v268 = v266;
  }

  if (v266 < a3)
  {
    v268 = a3;
  }

  v502 = v268;
  v503 = *a1;
  v269 = v268 + *a1;
  if (v269 >= a4)
  {
    v270 = a4;
  }

  else
  {
    v270 = v268 + *a1;
  }

  v271 = a2;
  v534 = 6 * a2;
  v536 = 10 * a2;
  v458 = 12 * a2;
  v459 = 14 * a2;
  v461 = 18 * a2;
  v272 = 20 * a2;
  v466 = 22 * a2;
  v469 = 24 * a2;
  v472 = 26 * a2;
  v474 = 28 * a2;
  v475 = 30 * a2;
  v477 = 34 * a2;
  v478 = 36 * a2;
  v479 = 38 * a2;
  v480 = 40 * a2;
  v481 = 42 * a2;
  v482 = 44 * a2;
  v484 = 46 * a2;
  v485 = 48 * a2;
  v486 = 50 * a2;
  v487 = 52 * a2;
  v455 = 2 * a2;
  v273 = a1[2 * a2];
  v493 = v273;
  v456 = 4 * a2;
  v274 = a1[4 * a2];
  v491 = v274;
  v488 = 54 * a2;
  v489 = 56 * a2;
  v554 = a1[6 * a2];
  v457 = 8 * a2;
  v553 = a1[8 * a2];
  v551 = a1[12 * a2];
  v552 = a1[10 * a2];
  v550 = a1[14 * a2];
  v460 = a2 << 6;
  v547 = a1[16 * a2];
  v544 = a1[18 * a2];
  v490 = 58 * a2;
  v545 = a1[20 * a2];
  v548 = a1[22 * a2];
  v492 = 60 * a2;
  v549 = a1[24 * a2];
  v546 = a1[26 * a2];
  v494 = 62 * a2;
  v543 = a1[28 * a2];
  v542 = a1[30 * a2];
  v476 = a2 << 7;
  v541 = a1[32 * a2];
  v540 = a1[34 * a2];
  v539 = a1[36 * a2];
  v538 = a1[38 * a2];
  v275 = a1[40 * a2];
  v276 = a1[42 * a2];
  v277 = a1[46 * a2];
  v462 = a1[44 * v271];
  v463 = a1[48 * v271];
  v464 = a1[50 * v271];
  v465 = a1[52 * v271];
  v467 = a1[54 * v271];
  v468 = a1[56 * v271];
  v470 = a1[58 * v271];
  v471 = a1[60 * v271];
  if (v269 < a3)
  {
    v270 = a3;
  }

  v473 = a1[62 * v271];
  *a1 = v270;
  if (v561 + v273 >= a4)
  {
    v278 = a4;
  }

  else
  {
    v278 = v561 + v273;
  }

  if (v561 + v273 >= a3)
  {
    v279 = v278;
  }

  else
  {
    v279 = a3;
  }

  a1[v271] = v279;
  if (v557 + v274 >= a4)
  {
    v280 = a4;
  }

  else
  {
    v280 = v557 + v274;
  }

  if (v557 + v274 >= a3)
  {
    v281 = v280;
  }

  else
  {
    v281 = a3;
  }

  a1[v455] = v281;
  if (v263 + v554 >= a4)
  {
    v282 = a4;
  }

  else
  {
    v282 = v263 + v554;
  }

  if (v263 + v554 >= a3)
  {
    v283 = v282;
  }

  else
  {
    v283 = a3;
  }

  a1[v520] = v283;
  if (v556 + v553 >= a4)
  {
    v284 = a4;
  }

  else
  {
    v284 = v556 + v553;
  }

  if (v556 + v553 >= a3)
  {
    v285 = v284;
  }

  else
  {
    v285 = a3;
  }

  a1[v456] = v285;
  if (v558 + v552 >= a4)
  {
    v286 = a4;
  }

  else
  {
    v286 = v558 + v552;
  }

  if (v558 + v552 >= a3)
  {
    v287 = v286;
  }

  else
  {
    v287 = a3;
  }

  a1[v522] = v287;
  if (v560 + v551 >= a4)
  {
    v288 = a4;
  }

  else
  {
    v288 = v560 + v551;
  }

  if (v560 + v551 >= a3)
  {
    v289 = v288;
  }

  else
  {
    v289 = a3;
  }

  a1[v534] = v289;
  if (v564 + v550 >= a4)
  {
    v290 = a4;
  }

  else
  {
    v290 = v564 + v550;
  }

  if (v564 + v550 >= a3)
  {
    v291 = v290;
  }

  else
  {
    v291 = a3;
  }

  a1[v507] = v291;
  v535 = 181 * (v562 + v566) + 128;
  v292 = v547 + (v535 >> 8);
  if (v292 >= a4)
  {
    v293 = a4;
  }

  else
  {
    v293 = v547 + (v535 >> 8);
  }

  if (v292 >= a3)
  {
    v294 = v293;
  }

  else
  {
    v294 = a3;
  }

  a1[v457] = v294;
  v523 = 181 * (v495 + v483) + 128;
  v295 = v544 + (v523 >> 8);
  if (v295 >= a4)
  {
    v296 = a4;
  }

  else
  {
    v296 = v544 + (v523 >> 8);
  }

  if (v295 >= a3)
  {
    v297 = v296;
  }

  else
  {
    v297 = a3;
  }

  a1[v513] = v297;
  v298 = vsub_s32(v238, v233);
  v299 = vbsl_s8(vcgt_s32(v35, v298), v35, vmin_s32(v298, v36));
  v300 = v299.i32[1];
  v301 = v299.i32[0];
  v521 = 181 * (v299.i32[0] + v299.i32[1]) + 128;
  v302 = v545 + (v521 >> 8);
  if (v302 >= a4)
  {
    v303 = a4;
  }

  else
  {
    v303 = v545 + (v521 >> 8);
  }

  if (v302 >= a3)
  {
    v304 = v303;
  }

  else
  {
    v304 = a3;
  }

  a1[v536] = v304;
  v305 = vsub_s32(v214, v226);
  v306 = vbsl_s8(vcgt_s32(v35, v305), v35, vmin_s32(v305, v36));
  v537 = 181 * (v306.i32[0] + v306.i32[1]) + 128;
  v307 = v548 + (v537 >> 8);
  if (v307 >= a4)
  {
    v308 = a4;
  }

  else
  {
    v308 = v548 + (v537 >> 8);
  }

  if (v307 >= a3)
  {
    v309 = v308;
  }

  else
  {
    v309 = a3;
  }

  a1[v498] = v309;
  v310 = vsub_s32(v216, v212);
  v311 = vbsl_s8(vcgt_s32(v35, v310), v35, vmin_s32(v310, v36));
  v312 = v311.i32[1];
  v313 = v311.i32[0];
  v514 = 181 * (v311.i32[0] + v311.i32[1]) + 128;
  v314 = v549 + (v514 >> 8);
  if (v314 >= a4)
  {
    v315 = a4;
  }

  else
  {
    v315 = v549 + (v514 >> 8);
  }

  if (v314 >= a3)
  {
    v316 = v315;
  }

  else
  {
    v316 = a3;
  }

  a1[v458] = v316;
  v317 = vsub_s32(v196, v191);
  v318 = vbsl_s8(vcgt_s32(v35, v317), v35, vmin_s32(v317, v36));
  v319 = v318.i32[1];
  v320 = v318.i32[0];
  v508 = 181 * (v318.i32[1] + v318.i32[0]) + 128;
  v321 = v546 + (v508 >> 8);
  if (v321 >= a4)
  {
    v322 = a4;
  }

  else
  {
    v322 = v546 + (v508 >> 8);
  }

  if (v321 >= a3)
  {
    v323 = v322;
  }

  else
  {
    v323 = a3;
  }

  a1[v496] = v323;
  v324 = vsub_s32(v185, v187);
  v325 = vbsl_s8(vcgt_s32(v35, v324), v35, vmin_s32(v324, v36));
  v499 = 181 * (v325.i32[0] + v325.i32[1]) + 128;
  v326 = v543 + (v499 >> 8);
  if (v326 >= a4)
  {
    v327 = a4;
  }

  else
  {
    v327 = v543 + (v499 >> 8);
  }

  if (v326 >= a3)
  {
    v328 = v327;
  }

  else
  {
    v328 = a3;
  }

  a1[v459] = v328;
  v497 = 181 * (v509 + v505) + 128;
  v329 = v542 + (v497 >> 8);
  if (v329 >= a4)
  {
    v330 = a4;
  }

  else
  {
    v330 = v542 + (v497 >> 8);
  }

  if (v329 >= a3)
  {
    v331 = v330;
  }

  else
  {
    v331 = a3;
  }

  a1[v524] = v331;
  v525 = 181 * (v505 - v509) + 128;
  v332 = v541 + (v525 >> 8);
  if (v332 >= a4)
  {
    v333 = a4;
  }

  else
  {
    v333 = v541 + (v525 >> 8);
  }

  if (v332 < a3)
  {
    v333 = a3;
  }

  *(a1 + v460) = v333;
  v510 = 181 * (v325.i32[1] - v325.i32[0]) + 128;
  v334 = v540 + (v510 >> 8);
  if (v334 >= a4)
  {
    v335 = a4;
  }

  else
  {
    v335 = v540 + (v510 >> 8);
  }

  if (v334 >= a3)
  {
    v336 = v335;
  }

  else
  {
    v336 = a3;
  }

  a1[v526] = v336;
  v527 = 181 * (v320 - v319) + 128;
  v337 = v539 + (v527 >> 8);
  if (v337 >= a4)
  {
    v338 = a4;
  }

  else
  {
    v338 = v539 + (v527 >> 8);
  }

  if (v337 >= a3)
  {
    v339 = v338;
  }

  else
  {
    v339 = a3;
  }

  a1[v461] = v339;
  v506 = 181 * (v312 - v313) + 128;
  v340 = v538 + (v506 >> 8);
  if (v340 >= a4)
  {
    v341 = a4;
  }

  else
  {
    v341 = v538 + (v506 >> 8);
  }

  if (v340 >= a3)
  {
    v342 = v341;
  }

  else
  {
    v342 = a3;
  }

  a1[v528] = v342;
  v529 = 181 * (v306.i32[1] - v306.i32[0]) + 128;
  v343 = v275 + (v529 >> 8);
  if (v343 >= a4)
  {
    v344 = a4;
  }

  else
  {
    v344 = v275 + (v529 >> 8);
  }

  if (v343 >= a3)
  {
    v345 = v344;
  }

  else
  {
    v345 = a3;
  }

  a1[v272] = v345;
  v346 = 181 * (v300 - v301) + 128;
  v347 = v276 + (v346 >> 8);
  if (v347 >= a4)
  {
    v348 = a4;
  }

  else
  {
    v348 = v276 + (v346 >> 8);
  }

  if (v347 >= a3)
  {
    v349 = v348;
  }

  else
  {
    v349 = a3;
  }

  a1[v530] = v349;
  v350 = 181 * (v566 - v562) + 128;
  v351 = 181 * (v483 - v495) + 128;
  v352 = v462 + (v351 >> 8);
  if (v352 >= a4)
  {
    v353 = a4;
  }

  else
  {
    v353 = v462 + (v351 >> 8);
  }

  if (v352 >= a3)
  {
    v354 = v353;
  }

  else
  {
    v354 = a3;
  }

  a1[v466] = v354;
  v355 = v277 + (v350 >> 8);
  if (v355 >= a4)
  {
    v356 = a4;
  }

  else
  {
    v356 = v277 + (v350 >> 8);
  }

  if (v355 >= a3)
  {
    v357 = v356;
  }

  else
  {
    v357 = a3;
  }

  a1[v531] = v357;
  if (v463 + v515 >= a4)
  {
    v358 = a4;
  }

  else
  {
    v358 = v463 + v515;
  }

  if (v463 + v515 >= a3)
  {
    v359 = v358;
  }

  else
  {
    v359 = a3;
  }

  a1[v469] = v359;
  result = v464;
  if ((v464 + v516) >= a4)
  {
    v361 = a4;
  }

  else
  {
    v361 = v464 + v516;
  }

  if ((v464 + v516) >= a3)
  {
    v362 = v361;
  }

  else
  {
    v362 = a3;
  }

  a1[v518] = v362;
  if (v500 + v465 >= a4)
  {
    v363 = a4;
  }

  else
  {
    v363 = v500 + v465;
  }

  if (v500 + v465 >= a3)
  {
    v364 = v363;
  }

  else
  {
    v364 = a3;
  }

  a1[v472] = v364;
  if (v467 + v501 >= a4)
  {
    v365 = a4;
  }

  else
  {
    v365 = v467 + v501;
  }

  if (v467 + v501 >= a3)
  {
    v366 = v365;
  }

  else
  {
    v366 = a3;
  }

  a1[v532] = v366;
  if (v468 + v504 >= a4)
  {
    v367 = a4;
  }

  else
  {
    v367 = v468 + v504;
  }

  if (v468 + v504 >= a3)
  {
    v368 = v367;
  }

  else
  {
    v368 = a3;
  }

  a1[v474] = v368;
  if (v470 + v511 >= a4)
  {
    v369 = a4;
  }

  else
  {
    v369 = v470 + v511;
  }

  if (v470 + v511 >= a3)
  {
    v370 = v369;
  }

  else
  {
    v370 = a3;
  }

  a1[v533] = v370;
  if (v471 + v512 >= a4)
  {
    v371 = a4;
  }

  else
  {
    v371 = v471 + v512;
  }

  if (v471 + v512 >= a3)
  {
    v372 = v371;
  }

  else
  {
    v372 = a3;
  }

  a1[v475] = v372;
  if (v473 + v517 >= a4)
  {
    v373 = a4;
  }

  else
  {
    v373 = v473 + v517;
  }

  if (v473 + v517 >= a3)
  {
    v374 = v373;
  }

  else
  {
    v374 = a3;
  }

  a1[v519] = v374;
  if (v473 - v517 >= a4)
  {
    v375 = a4;
  }

  else
  {
    v375 = v473 - v517;
  }

  if (v473 - v517 >= a3)
  {
    v376 = v375;
  }

  else
  {
    v376 = a3;
  }

  *(a1 + v476) = v376;
  if (v471 - v512 >= a4)
  {
    v377 = a4;
  }

  else
  {
    v377 = v471 - v512;
  }

  if (v471 - v512 >= a3)
  {
    v378 = v377;
  }

  else
  {
    v378 = a3;
  }

  a1[33 * v271] = v378;
  if (v470 - v511 >= a4)
  {
    v379 = a4;
  }

  else
  {
    v379 = v470 - v511;
  }

  if (v470 - v511 >= a3)
  {
    v380 = v379;
  }

  else
  {
    v380 = a3;
  }

  a1[v477] = v380;
  if (v468 - v504 >= a4)
  {
    v381 = a4;
  }

  else
  {
    v381 = v468 - v504;
  }

  if (v468 - v504 >= a3)
  {
    v382 = v381;
  }

  else
  {
    v382 = a3;
  }

  a1[35 * v271] = v382;
  if (v467 - v501 >= a4)
  {
    v383 = a4;
  }

  else
  {
    v383 = v467 - v501;
  }

  if (v467 - v501 >= a3)
  {
    v384 = v383;
  }

  else
  {
    v384 = a3;
  }

  a1[v478] = v384;
  if (v465 - v500 >= a4)
  {
    v385 = a4;
  }

  else
  {
    v385 = v465 - v500;
  }

  if (v465 - v500 >= a3)
  {
    v386 = v385;
  }

  else
  {
    v386 = a3;
  }

  a1[37 * v271] = v386;
  if ((v464 - v516) >= a4)
  {
    v387 = a4;
  }

  else
  {
    v387 = v464 - v516;
  }

  if ((v464 - v516) >= a3)
  {
    v388 = v387;
  }

  else
  {
    v388 = a3;
  }

  a1[v479] = v388;
  if (v463 - v515 >= a4)
  {
    v389 = a4;
  }

  else
  {
    v389 = v463 - v515;
  }

  if (v463 - v515 >= a3)
  {
    v390 = v389;
  }

  else
  {
    v390 = a3;
  }

  a1[39 * v271] = v390;
  v391 = v277 - (v350 >> 8);
  if (v391 >= a4)
  {
    v392 = a4;
  }

  else
  {
    v392 = v277 - (v350 >> 8);
  }

  if (v391 >= a3)
  {
    v393 = v392;
  }

  else
  {
    v393 = a3;
  }

  a1[v480] = v393;
  v394 = v462 - (v351 >> 8);
  if (v394 >= a4)
  {
    v395 = a4;
  }

  else
  {
    v395 = v462 - (v351 >> 8);
  }

  if (v394 >= a3)
  {
    v396 = v395;
  }

  else
  {
    v396 = a3;
  }

  a1[41 * v271] = v396;
  v397 = v276 - (v346 >> 8);
  if (v397 >= a4)
  {
    v398 = a4;
  }

  else
  {
    v398 = v276 - (v346 >> 8);
  }

  if (v397 >= a3)
  {
    v399 = v398;
  }

  else
  {
    v399 = a3;
  }

  a1[v481] = v399;
  v400 = v275 - (v529 >> 8);
  if (v400 >= a4)
  {
    v401 = a4;
  }

  else
  {
    v401 = v275 - (v529 >> 8);
  }

  if (v400 >= a3)
  {
    v402 = v401;
  }

  else
  {
    v402 = a3;
  }

  a1[43 * v271] = v402;
  v403 = v538 - (v506 >> 8);
  if (v403 >= a4)
  {
    v404 = a4;
  }

  else
  {
    v404 = v538 - (v506 >> 8);
  }

  if (v403 >= a3)
  {
    v405 = v404;
  }

  else
  {
    v405 = a3;
  }

  a1[v482] = v405;
  v406 = v539 - (v527 >> 8);
  if (v406 >= a4)
  {
    v407 = a4;
  }

  else
  {
    v407 = v539 - (v527 >> 8);
  }

  if (v406 >= a3)
  {
    v408 = v407;
  }

  else
  {
    v408 = a3;
  }

  a1[45 * v271] = v408;
  v409 = v540 - (v510 >> 8);
  if (v409 >= a4)
  {
    v410 = a4;
  }

  else
  {
    v410 = v540 - (v510 >> 8);
  }

  if (v409 >= a3)
  {
    v411 = v410;
  }

  else
  {
    v411 = a3;
  }

  a1[v484] = v411;
  v412 = v541 - (v525 >> 8);
  if (v412 >= a4)
  {
    v413 = a4;
  }

  else
  {
    v413 = v541 - (v525 >> 8);
  }

  if (v412 >= a3)
  {
    v414 = v413;
  }

  else
  {
    v414 = a3;
  }

  a1[47 * v271] = v414;
  v415 = v542 - (v497 >> 8);
  if (v415 >= a4)
  {
    v416 = a4;
  }

  else
  {
    v416 = v542 - (v497 >> 8);
  }

  if (v415 >= a3)
  {
    v417 = v416;
  }

  else
  {
    v417 = a3;
  }

  a1[v485] = v417;
  v418 = v543 - (v499 >> 8);
  if (v418 >= a4)
  {
    v419 = a4;
  }

  else
  {
    v419 = v543 - (v499 >> 8);
  }

  if (v418 >= a3)
  {
    v420 = v419;
  }

  else
  {
    v420 = a3;
  }

  a1[49 * v271] = v420;
  v421 = v546 - (v508 >> 8);
  if (v421 >= a4)
  {
    v422 = a4;
  }

  else
  {
    v422 = v546 - (v508 >> 8);
  }

  if (v421 >= a3)
  {
    v423 = v422;
  }

  else
  {
    v423 = a3;
  }

  a1[v486] = v423;
  v424 = v549 - (v514 >> 8);
  if (v424 >= a4)
  {
    v425 = a4;
  }

  else
  {
    v425 = v549 - (v514 >> 8);
  }

  if (v424 >= a3)
  {
    v426 = v425;
  }

  else
  {
    v426 = a3;
  }

  a1[51 * v271] = v426;
  v427 = v548 - (v537 >> 8);
  if (v427 >= a4)
  {
    v428 = a4;
  }

  else
  {
    v428 = v548 - (v537 >> 8);
  }

  if (v427 >= a3)
  {
    v429 = v428;
  }

  else
  {
    v429 = a3;
  }

  a1[v487] = v429;
  v430 = v545 - (v521 >> 8);
  if (v430 >= a4)
  {
    v431 = a4;
  }

  else
  {
    v431 = v545 - (v521 >> 8);
  }

  if (v430 >= a3)
  {
    v432 = v431;
  }

  else
  {
    v432 = a3;
  }

  a1[53 * v271] = v432;
  v433 = v544 - (v523 >> 8);
  if (v433 >= a4)
  {
    v434 = a4;
  }

  else
  {
    v434 = v544 - (v523 >> 8);
  }

  if (v433 >= a3)
  {
    v435 = v434;
  }

  else
  {
    v435 = a3;
  }

  a1[v488] = v435;
  v436 = v547 - (v535 >> 8);
  if (v436 >= a4)
  {
    v437 = a4;
  }

  else
  {
    v437 = v547 - (v535 >> 8);
  }

  if (v436 >= a3)
  {
    v438 = v437;
  }

  else
  {
    v438 = a3;
  }

  a1[55 * v271] = v438;
  if (v550 - v564 >= a4)
  {
    v439 = a4;
  }

  else
  {
    v439 = v550 - v564;
  }

  if (v550 - v564 >= a3)
  {
    v440 = v439;
  }

  else
  {
    v440 = a3;
  }

  a1[v489] = v440;
  if (v551 - v560 >= a4)
  {
    v441 = a4;
  }

  else
  {
    v441 = v551 - v560;
  }

  if (v551 - v560 >= a3)
  {
    v442 = v441;
  }

  else
  {
    v442 = a3;
  }

  a1[57 * v271] = v442;
  if (v552 - v558 >= a4)
  {
    v443 = a4;
  }

  else
  {
    v443 = v552 - v558;
  }

  if (v552 - v558 >= a3)
  {
    v444 = v443;
  }

  else
  {
    v444 = a3;
  }

  a1[v490] = v444;
  if (v553 - v556 >= a4)
  {
    v445 = a4;
  }

  else
  {
    v445 = v553 - v556;
  }

  if (v553 - v556 >= a3)
  {
    v446 = v445;
  }

  else
  {
    v446 = a3;
  }

  a1[59 * v271] = v446;
  if (v554 - v555 >= a4)
  {
    v447 = a4;
  }

  else
  {
    v447 = v554 - v555;
  }

  if (v554 - v555 >= a3)
  {
    v448 = v447;
  }

  else
  {
    v448 = a3;
  }

  a1[v492] = v448;
  if (v491 - v557 >= a4)
  {
    v449 = a4;
  }

  else
  {
    v449 = v491 - v557;
  }

  if (v491 - v557 >= a3)
  {
    v450 = v449;
  }

  else
  {
    v450 = a3;
  }

  a1[61 * v271] = v450;
  if (v493 - v561 >= a4)
  {
    v451 = a4;
  }

  else
  {
    v451 = v493 - v561;
  }

  if (v493 - v561 >= a3)
  {
    v452 = v451;
  }

  else
  {
    v452 = a3;
  }

  a1[v494] = v452;
  if (v503 - v502 >= a4)
  {
    v453 = a4;
  }

  else
  {
    v453 = v503 - v502;
  }

  if (v503 - v502 >= a3)
  {
    v454 = v453;
  }

  else
  {
    v454 = a3;
  }

  a1[63 * v271] = v454;
  return result;
}

uint64_t sub_277597970(int *a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[a2];
  v6 = a1[2 * a2];
  v7 = a1[3 * a2];
  v8 = -752 * v5 + 2048;
  *a3 = v6 + v5 + v7 + ((v8 + 1321 * *a1 - 293 * v6 - 1614 * v7) >> 12);
  a3[a4] = v5 + v4 - v7 + ((v8 - 1614 * v4 - 1321 * v6 + 293 * v7) >> 12);
  result = 8 * a4;
  a3[2 * a4] = (209 * (v4 - v6 + v7) + 128) >> 8;
  a3[3 * a4] = v4 - v5 + v6 + ((752 * v5 - 293 * v4 - 1614 * v6 - 1321 * v7 + 2048) >> 12);
  return result;
}

uint64_t sub_277597A4C(int *a1, uint64_t a2, int a3, int a4, _DWORD *a5, uint64_t a6)
{
  v6 = a1[a2];
  v7 = a1[2 * a2];
  v8 = a1[3 * a2];
  v9 = a1[4 * a2];
  v10 = a1[5 * a2];
  v11 = a1[6 * a2];
  v12 = *a1;
  v13 = a1[7 * a2];
  v14 = v13 + ((-20 * v13 + 401 * v12 + 2048) >> 12);
  v15 = ((401 * v13 + 20 * v12 + 2048) >> 12) - v12;
  v16 = v10 + ((-484 * v10 + 1931 * v7 + 2048) >> 12);
  v17 = ((1931 * v10 + 484 * v7 + 2048) >> 12) - v7;
  v18 = 1583 * v9 + 1299 * v8 + 1024;
  v19 = -1299 * v9 + 1583 * v8 + 1024;
  v20 = v11 + ((-176 * v11 + 1189 * v6 + 2048) >> 12);
  v21 = v6 + ((-1189 * v11 - 176 * v6 + 2048) >> 12);
  v22 = v14 + (v18 >> 11);
  if (v22 >= a4)
  {
    v23 = a4;
  }

  else
  {
    v23 = v14 + (v18 >> 11);
  }

  if (v22 >= a3)
  {
    v24 = v23;
  }

  else
  {
    v24 = a3;
  }

  v25 = v15 + (v19 >> 11);
  if (v25 >= a4)
  {
    v26 = a4;
  }

  else
  {
    v26 = v15 + (v19 >> 11);
  }

  if (v25 >= a3)
  {
    v27 = v26;
  }

  else
  {
    v27 = a3;
  }

  if (v20 + v16 >= a4)
  {
    v28 = a4;
  }

  else
  {
    v28 = v20 + v16;
  }

  if (v20 + v16 >= a3)
  {
    v29 = v28;
  }

  else
  {
    v29 = a3;
  }

  if (v21 + v17 >= a4)
  {
    v30 = a4;
  }

  else
  {
    v30 = v21 + v17;
  }

  if (v21 + v17 >= a3)
  {
    v31 = v30;
  }

  else
  {
    v31 = a3;
  }

  v32 = v14 - (v18 >> 11);
  if (v32 >= a4)
  {
    v33 = a4;
  }

  else
  {
    v33 = v32;
  }

  if (v32 >= a3)
  {
    v34 = v33;
  }

  else
  {
    v34 = a3;
  }

  v35 = v15 - (v19 >> 11);
  if (v35 >= a4)
  {
    v36 = a4;
  }

  else
  {
    v36 = v35;
  }

  if (v35 >= a3)
  {
    v37 = v36;
  }

  else
  {
    v37 = a3;
  }

  v38 = v16 - v20;
  if (v38 >= a4)
  {
    v39 = a4;
  }

  else
  {
    v39 = v38;
  }

  if (v38 >= a3)
  {
    v40 = v39;
  }

  else
  {
    v40 = a3;
  }

  v41 = v17 - v21;
  if (v41 >= a4)
  {
    v42 = a4;
  }

  else
  {
    v42 = v41;
  }

  if (v41 >= a3)
  {
    v43 = v42;
  }

  else
  {
    v43 = a3;
  }

  v44 = v34 + ((-312 * v34 + 1567 * v37 + 2048) >> 12);
  result = (((312 * v37 + 1567 * v34 + 2048) >> 12) - v37);
  v46 = v43 + ((-1567 * v40 - 312 * v43 + 2048) >> 12);
  v47 = v40 + ((1567 * v43 - 312 * v40 + 2048) >> 12);
  if (v24 + v29 >= a4)
  {
    v48 = a4;
  }

  else
  {
    v48 = v24 + v29;
  }

  if (v24 + v29 >= a3)
  {
    v49 = v48;
  }

  else
  {
    v49 = a3;
  }

  *a5 = v49;
  if (v27 + v31 >= a4)
  {
    v50 = a4;
  }

  else
  {
    v50 = v27 + v31;
  }

  if (v27 + v31 >= a3)
  {
    v51 = v50;
  }

  else
  {
    v51 = a3;
  }

  a5[7 * a6] = -v51;
  v52 = v24 - v29;
  if (v24 - v29 >= a4)
  {
    v53 = a4;
  }

  else
  {
    v53 = v24 - v29;
  }

  if (v52 >= a3)
  {
    v54 = v53;
  }

  else
  {
    v54 = a3;
  }

  v55 = v27 - v31;
  if (v27 - v31 >= a4)
  {
    v56 = a4;
  }

  else
  {
    v56 = v27 - v31;
  }

  if (v55 >= a3)
  {
    v57 = v56;
  }

  else
  {
    v57 = a3;
  }

  if (v44 + v46 >= a4)
  {
    v58 = a4;
  }

  else
  {
    v58 = v44 + v46;
  }

  if (v44 + v46 >= a3)
  {
    v59 = v58;
  }

  else
  {
    v59 = a3;
  }

  a5[a6] = -v59;
  if (result + v47 >= a4)
  {
    v60 = a4;
  }

  else
  {
    v60 = result + v47;
  }

  if (result + v47 >= a3)
  {
    v61 = v60;
  }

  else
  {
    v61 = a3;
  }

  a5[6 * a6] = v61;
  if (v44 - v46 >= a4)
  {
    v62 = a4;
  }

  else
  {
    v62 = v44 - v46;
  }

  if (v44 - v46 >= a3)
  {
    v63 = v62;
  }

  else
  {
    v63 = a3;
  }

  if (result - v47 >= a4)
  {
    v64 = a4;
  }

  else
  {
    v64 = result - v47;
  }

  if (result - v47 >= a3)
  {
    v65 = v64;
  }

  else
  {
    v65 = a3;
  }

  a5[3 * a6] = -((181 * (v54 + v57) + 128) >> 8);
  a5[4 * a6] = (181 * (v54 - v57) + 128) >> 8;
  a5[2 * a6] = (181 * (v63 + v65) + 128) >> 8;
  a5[5 * a6] = -((181 * (v63 - v65) + 128) >> 8);
  return result;
}

uint64_t sub_277597D7C(int *a1, uint64_t a2, signed int a3, signed int a4, signed int *a5, uint64_t a6, double a7, double a8, double a9, double a10, int32x2_t a11)
{
  v11 = a1[a2];
  v12 = a1[2 * a2];
  v13 = a1[3 * a2];
  v14 = a1[4 * a2];
  v15 = a1[5 * a2];
  v16 = a1[7 * a2];
  v17 = a1[8 * a2];
  v18 = &a1[6 * a2];
  v19 = a1[10 * a2];
  v20 = a1[11 * a2];
  v21 = a1[12 * a2];
  v22 = a1[13 * a2];
  v23 = &a1[9 * a2];
  v24 = a1[14 * a2];
  v25 = a1[15 * a2];
  v26 = *a1;
  v27 = v25 + ((-5 * v25 + 201 * v26 + 2048) >> 12);
  v28 = ((5 * v26 + 201 * v25 + 2048) >> 12) - v26;
  v29 = v20 + ((-393 * v20 + 1751 * v14 + 2048) >> 12);
  v30 = ((1751 * v20 + 393 * v14 + 2048) >> 12) - v14;
  v31 = v17 + ((-1061 * v17 + 2751 * v16 + 2048) >> 12);
  v32 = v16 + ((-2751 * v17 - 1061 * v16 + 2048) >> 12);
  v33 = v21 + ((-239 * v21 + 1380 * v13 + 2048) >> 12);
  v34 = v13 + ((-1380 * v21 - 239 * v13 + 2048) >> 12);
  if (v27 + v31 >= a4)
  {
    v35 = a4;
  }

  else
  {
    v35 = v27 + v31;
  }

  if (v27 + v31 < a3)
  {
    v35 = a3;
  }

  if (v28 + v32 >= a4)
  {
    v36 = a4;
  }

  else
  {
    v36 = v28 + v32;
  }

  if (v28 + v32 >= a3)
  {
    v37 = v36;
  }

  else
  {
    v37 = a3;
  }

  if (v33 + v29 >= a4)
  {
    v38 = a4;
  }

  else
  {
    v38 = v33 + v29;
  }

  if (v33 + v29 >= a3)
  {
    v39 = v38;
  }

  else
  {
    v39 = a3;
  }

  if (v34 + v30 >= a4)
  {
    v40 = a4;
  }

  else
  {
    v40 = v34 + v30;
  }

  v41 = v27 - v31;
  if (v34 + v30 < a3)
  {
    v40 = a3;
  }

  if (v41 >= a4)
  {
    v42 = a4;
  }

  else
  {
    v42 = v27 - v31;
  }

  v43 = v41 < a3;
  v44 = v28 - v32;
  if (v43)
  {
    v42 = a3;
  }

  if (v44 >= a4)
  {
    v45 = a4;
  }

  else
  {
    v45 = v28 - v32;
  }

  v43 = v44 < a3;
  v46 = v29 - v33;
  if (v43)
  {
    v47 = a3;
  }

  else
  {
    v47 = v45;
  }

  if (v46 >= a4)
  {
    v48 = a4;
  }

  else
  {
    v48 = v46;
  }

  v43 = v46 < a3;
  v49 = v30 - v34;
  if (v43)
  {
    v48 = a3;
  }

  if (v49 >= a4)
  {
    v50 = a4;
  }

  else
  {
    v50 = v30 - v34;
  }

  v51 = v42 + ((-79 * v42 + 799 * v47 + 2048) >> 12);
  v52 = ((79 * v47 + 799 * v42 + 2048) >> 12) - v47;
  if (v49 >= a3)
  {
    v53 = v50;
  }

  else
  {
    v53 = a3;
  }

  v54 = v53 + ((-799 * v48 - 79 * v53 + 2048) >> 12);
  v55 = v48 + ((799 * v53 - 79 * v48 + 2048) >> 12);
  if (v37 + v40 >= a4)
  {
    v56 = a4;
  }

  else
  {
    v56 = v37 + v40;
  }

  if (v37 + v40 >= a3)
  {
    v57 = v56;
  }

  else
  {
    v57 = a3;
  }

  if (v35 - v39 >= a4)
  {
    v58 = a4;
  }

  else
  {
    v58 = v35 - v39;
  }

  v59 = v37 - v40;
  if (v35 - v39 >= a3)
  {
    v60 = v58;
  }

  else
  {
    v60 = a3;
  }

  if (v59 >= a4)
  {
    v61 = a4;
  }

  else
  {
    v61 = v59;
  }

  if (v59 >= a3)
  {
    v62 = v61;
  }

  else
  {
    v62 = a3;
  }

  if (v51 + v54 >= a4)
  {
    v63 = a4;
  }

  else
  {
    v63 = v51 + v54;
  }

  if (v51 + v54 < a3)
  {
    v63 = a3;
  }

  if (v52 + v55 >= a4)
  {
    v64 = a4;
  }

  else
  {
    v64 = v52 + v55;
  }

  v65 = v51 - v54;
  if (v52 + v55 >= a3)
  {
    v66 = v64;
  }

  else
  {
    v66 = a3;
  }

  if (v65 >= a4)
  {
    v67 = a4;
  }

  else
  {
    v67 = v65;
  }

  v68 = v52 - v55;
  if (v65 >= a3)
  {
    v69 = v67;
  }

  else
  {
    v69 = a3;
  }

  if (v68 >= a4)
  {
    v70 = a4;
  }

  else
  {
    v70 = v68;
  }

  a11.i32[0] = v12;
  v71 = vadd_s32(vmla_s32(vmul_s32(vdup_n_s32(v22), 0xFFFFFF85000003E3), vdup_n_s32(v12), 0x3E30000007BLL), 0x80000000800);
  v72.i32[0] = vsub_s32(vshr_n_s32(v71, 0xCuLL), a11).u32[0];
  v73.i32[1] = v22;
  if (v68 >= a3)
  {
    v74 = v70;
  }

  else
  {
    v74 = a3;
  }

  v72.i32[1] = vsra_n_s32(v73, v71, 0xCuLL).i32[1];
  v75 = vld1_dup_f32(v23);
  v76 = vld1_dup_f32(v18);
  v77 = vadd_s32(vmla_s32(vmul_s32(v75, 0x66D000004C4), v76, 0x4C4FFFFF993), 0x40000000400);
  v78 = vshr_n_s32(v77, 0xBuLL);
  v79 = vsra_n_s32(__PAIR64__(v19, v15), vadd_s32(vmla_s32(vmul_s32(vdup_n_s32(v19), 0xFFFFFDB9FFFFF7C6), vdup_n_s32(v15), 0x83AFFFFFDB9), 0x80000000800), 0xCuLL);
  v80 = vsra_n_s32(__PAIR64__(v24, v11), vadd_s32(vmla_s32(vmul_s32(vdup_n_s32(v24), 0xFFFFFFD4FFFFFDA7), vdup_n_s32(v11), 0x259FFFFFFD4), 0x80000000800), 0xCuLL);
  v81 = vadd_s32(v72, v79);
  v82 = vdup_n_s32(a3);
  v83 = vdup_n_s32(a4);
  v84 = vbsl_s8(vcgt_s32(v82, v81), v82, vmin_s32(v81, v83));
  v85 = vzip2_s32(v79, v80);
  v86 = vzip1_s32(v79, v80);
  v87 = vsra_n_s32(v80, v77, 0xBuLL);
  v88 = vbsl_s8(vcgt_s32(v82, v87), v82, vmin_s32(v87, v83));
  v89 = vsub_s32(vzip2_s32(v72, v78), v85);
  v90 = vbsl_s8(vcgt_s32(v82, v89), v82, vmin_s32(v89, v83));
  v91 = vsub_s32(vzip1_s32(v72, v78), v86);
  v92 = vbsl_s8(vcgt_s32(v82, v91), v82, vmin_s32(v91, v83));
  v93 = vadd_s32(vmla_s32(vmul_s32(v90, 0x2B2000008E4), v92, 0x8E4FFFFFD4ELL), 0x80000000800);
  v94 = vsub_s32(vshr_n_s32(v93, 0xCuLL), v90);
  v95 = vmla_s32(vmul_s32(v92, 0xFFFFFD4EFFFFF71CLL), v90, 0x8E4FFFFFD4ELL);
  v90.i32[1] = v92.i32[1];
  v96 = vsra_n_s32(v92, v93, 0xCuLL).u32[0];
  v97 = vsra_n_s32(v90, vadd_s32(v95, 0x80000000800), 0xCuLL);
  v98 = vadd_s32(v88, v84).u32[0];
  v99 = vsub_s32(v84, v88);
  v88.i32[0] = v35;
  v84.i32[0] = v39;
  v100 = vadd_s32(v88, v84);
  v101 = vbsl_s8(vcgt_s32(v82, v100), v82, vmin_s32(v100, v83));
  if (v98 >= a4)
  {
    v102 = a4;
  }

  else
  {
    v102 = v98;
  }

  if (v98 >= a3)
  {
    v103 = v102;
  }

  else
  {
    v103 = a3;
  }

  if ((v94.i32[1] + v96) >= a4)
  {
    v104 = a4;
  }

  else
  {
    v104 = v94.i32[1] + v96;
  }

  if ((v94.i32[1] + v96) >= a3)
  {
    v105 = v104;
  }

  else
  {
    v105 = a3;
  }

  if (v97.i32[1] + v97.i32[0] >= a4)
  {
    v106 = a4;
  }

  else
  {
    v106 = v97.i32[1] + v97.i32[0];
  }

  if (v97.i32[1] + v97.i32[0] >= a3)
  {
    v107 = v106;
  }

  else
  {
    v107 = a3;
  }

  if ((v96 - v94.i32[1]) >= a4)
  {
    v108 = a4;
  }

  else
  {
    v108 = v96 - v94.i32[1];
  }

  if ((v96 - v94.i32[1]) >= a3)
  {
    v109 = v108;
  }

  else
  {
    v109 = a3;
  }

  if (v97.i32[0] - v97.i32[1] >= a4)
  {
    v110 = a4;
  }

  else
  {
    v110 = v97.i32[0] - v97.i32[1];
  }

  if (v97.i32[0] - v97.i32[1] >= a3)
  {
    v111 = v110;
  }

  else
  {
    v111 = a3;
  }

  if (v101.i32[0] + v101.i32[1] >= a4)
  {
    v112 = a4;
  }

  else
  {
    v112 = v101.i32[0] + v101.i32[1];
  }

  if (v101.i32[0] + v101.i32[1] >= a3)
  {
    v113 = v112;
  }

  else
  {
    v113 = a3;
  }

  *a5 = v113;
  if (v57 + v103 >= a4)
  {
    v114 = a4;
  }

  else
  {
    v114 = v57 + v103;
  }

  v115 = vbsl_s8(vcgt_s32(v82, v99), v82, vmin_s32(v99, v83));
  v116 = vmul_s32(v115, 0xFFFFF9E1FFFFFEC8);
  if (v57 + v103 >= a3)
  {
    v117 = v114;
  }

  else
  {
    v117 = a3;
  }

  a5[15 * a6] = -v117;
  if (v101.i32[0] - v101.i32[1] >= a4)
  {
    v118 = a4;
  }

  else
  {
    v118 = v101.i32[0] - v101.i32[1];
  }

  v119 = v60 + ((-312 * v60 + 1567 * v62 + 2048) >> 12);
  if (v101.i32[0] - v101.i32[1] >= a3)
  {
    v120 = v118;
  }

  else
  {
    v120 = a3;
  }

  if (v57 - v103 >= a4)
  {
    v121 = a4;
  }

  else
  {
    v121 = v57 - v103;
  }

  v122 = v115.i32[0] + ((v116.i32[0] + v116.i32[1] + 2048) >> 12);
  if (v57 - v103 >= a3)
  {
    v123 = v121;
  }

  else
  {
    v123 = a3;
  }

  if (v119 + v122 >= a4)
  {
    v124 = a4;
  }

  else
  {
    v124 = v119 + v122;
  }

  if (v119 + v122 >= a3)
  {
    v125 = v124;
  }

  else
  {
    v125 = a3;
  }

  a5[3 * a6] = -v125;
  result = (((312 * v62 + 1567 * v60 + 2048) >> 12) - v62);
  v127 = v115.i32[1] + ((1567 * v115.i32[0] - 312 * v115.i32[1] + 2048) >> 12);
  if (result + v127 >= a4)
  {
    v128 = a4;
  }

  else
  {
    v128 = result + v127;
  }

  if (result + v127 >= a3)
  {
    v129 = v128;
  }

  else
  {
    v129 = a3;
  }

  a5[12 * a6] = v129;
  v130 = v119 - v122;
  if (v130 >= a4)
  {
    v131 = a4;
  }

  else
  {
    v131 = v130;
  }

  if (v130 >= a3)
  {
    v132 = v131;
  }

  else
  {
    v132 = a3;
  }

  v133 = result - v127;
  if (result - v127 >= a4)
  {
    v134 = a4;
  }

  else
  {
    v134 = result - v127;
  }

  if (v133 >= a3)
  {
    v135 = v134;
  }

  else
  {
    v135 = a3;
  }

  if (v63 + v105 >= a4)
  {
    v136 = a4;
  }

  else
  {
    v136 = v63 + v105;
  }

  if (v63 + v105 >= a3)
  {
    v137 = v136;
  }

  else
  {
    v137 = a3;
  }

  a5[a6] = -v137;
  if (v66 + v107 >= a4)
  {
    v138 = a4;
  }

  else
  {
    v138 = v66 + v107;
  }

  if (v66 + v107 >= a3)
  {
    v139 = v138;
  }

  else
  {
    v139 = a3;
  }

  a5[14 * a6] = v139;
  v140 = v69 + ((-312 * v69 + 1567 * v74 + 2048) >> 12);
  v141 = ((312 * v74 + 1567 * v69 + 2048) >> 12) - v74;
  v142 = v111 + ((-1567 * v109 - 312 * v111 + 2048) >> 12);
  v143 = v109 + ((1567 * v111 - 312 * v109 + 2048) >> 12);
  v144 = v63 - v105;
  if (v144 >= a4)
  {
    v145 = a4;
  }

  else
  {
    v145 = v144;
  }

  if (v144 >= a3)
  {
    v146 = v145;
  }

  else
  {
    v146 = a3;
  }

  v147 = v66 - v107;
  if (v147 >= a4)
  {
    v148 = a4;
  }

  else
  {
    v148 = v147;
  }

  if (v147 >= a3)
  {
    v149 = v148;
  }

  else
  {
    v149 = a3;
  }

  if (v140 + v142 >= a4)
  {
    v150 = a4;
  }

  else
  {
    v150 = v140 + v142;
  }

  if (v140 + v142 >= a3)
  {
    v151 = v150;
  }

  else
  {
    v151 = a3;
  }

  a5[2 * a6] = v151;
  if (v141 + v143 >= a4)
  {
    v152 = a4;
  }

  else
  {
    v152 = v141 + v143;
  }

  if (v141 + v143 >= a3)
  {
    v153 = v152;
  }

  else
  {
    v153 = a3;
  }

  a5[13 * a6] = -v153;
  a5[7 * a6] = -((181 * (v120 + v123) + 128) >> 8);
  a5[8 * a6] = (181 * (v120 - v123) + 128) >> 8;
  a5[4 * a6] = (181 * (v132 + v135) + 128) >> 8;
  a5[11 * a6] = -((181 * (v132 - v135) + 128) >> 8);
  a5[6 * a6] = (181 * (v146 + v149) + 128) >> 8;
  a5[9 * a6] = -((181 * (v146 - v149) + 128) >> 8);
  if (v140 - v142 >= a4)
  {
    v154 = a4;
  }

  else
  {
    v154 = v140 - v142;
  }

  v155 = v141 - v143;
  if (v140 - v142 < a3)
  {
    v154 = a3;
  }

  if (v155 >= a4)
  {
    v156 = a4;
  }

  else
  {
    v156 = v141 - v143;
  }

  if (v155 >= a3)
  {
    v157 = v156;
  }

  else
  {
    v157 = a3;
  }

  a5[5 * a6] = -((181 * (v154 + v157) + 128) >> 8);
  a5[10 * a6] = (181 * (v154 - v157) + 128) >> 8;
  return result;
}

_DWORD *sub_2775985A4(_DWORD *result, uint64_t a2)
{
  v2 = 4;
  do
  {
    *result += (1697 * *result + 2048) >> 12;
    result += a2;
    --v2;
  }

  while (v2);
  return result;
}

_DWORD *sub_2775985D4(_DWORD *result, uint64_t a2)
{
  v2 = 8;
  do
  {
    *result *= 2;
    result += a2;
    --v2;
  }

  while (v2);
  return result;
}

_DWORD *sub_2775985F8(_DWORD *result, uint64_t a2)
{
  v2 = 16;
  do
  {
    *result = ((1697 * *result + 1024) >> 11) + 2 * *result;
    result += a2;
    --v2;
  }

  while (v2);
  return result;
}

_DWORD *sub_27759862C(_DWORD *result, uint64_t a2)
{
  v2 = 32;
  do
  {
    *result *= 4;
    result += a2;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t sub_277598698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(_DWORD *, uint64_t, uint64_t, uint64_t), int a10)
{
  result = MEMORY[0x28223BE20]();
  v62 = v17;
  v18 = result;
  v64 = *MEMORY[0x277D85DE8];
  v20 = v15 == 2 * v14 || v14 == 2 * v15;
  if (v13 >= a10)
  {
    v58 = (1 << v16) >> 1;
    v59 = v16;
    v60 = v11;
    v28 = 0;
    v61 = v15;
    if (v15 >= 32)
    {
      v29 = 32;
    }

    else
    {
      v29 = v15;
    }

    if (v14 >= 32)
    {
      v30 = 32;
    }

    else
    {
      v30 = v14;
    }

    v54 = v29;
    v55 = v14;
    v53 = v30;
    if (v30 <= 1)
    {
      v31 = 1;
    }

    else
    {
      v31 = v30;
    }

    if (v29 <= 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = v29;
    }

    v33 = 4 * v31;
    v56 = v12;
    v57 = v14;
    v34 = 4 * v14;
    v35 = 2 * v29;
    v36 = v63;
    v37 = v12;
    v38 = v20;
    do
    {
      v39 = 0;
      v40 = v37;
      if (v20)
      {
        do
        {
          v36[v39 / 4] = (181 * *v40 + 128) >> 8;
          v39 += 4;
          v40 = (v40 + v35);
        }

        while (v33 != v39);
      }

      else
      {
        do
        {
          v36[v39 / 4] = *v40;
          v39 += 4;
          v40 = (v40 + v35);
        }

        while (v33 != v39);
      }

      v62(v36, 1, 4294934528, 0x7FFFLL);
      ++v28;
      v36 = (v36 + v34);
      ++v37;
      LOBYTE(v20) = v38;
    }

    while (v28 != v32);
    bzero(v56, 2 * v53 * v54);
    v41 = 0;
    do
    {
      v42 = (v63[v41] + v58) >> v59;
      if (v42 >= 0x7FFF)
      {
        v42 = 0x7FFF;
      }

      if (v42 <= -32768)
      {
        v42 = -32768;
      }

      v63[v41++] = v42;
    }

    while (v54 * v57 != v41);
    v43 = v63;
    v44 = v55;
    do
    {
      result = a9(v43++, v55, 4294934528, 0x7FFFLL);
      --v44;
    }

    while (v44);
    v45 = 0;
    v46 = v63;
    do
    {
      v47 = v18;
      v48 = v55;
      do
      {
        v49 = *v46++;
        v50 = *v47 + ((v49 + 8) >> 4);
        if (v50 >= 0xFF)
        {
          v51 = -1;
        }

        else
        {
          v51 = v50;
        }

        if (v50 >= 0)
        {
          v52 = v51;
        }

        else
        {
          v52 = 0;
        }

        *v47++ = v52;
        --v48;
      }

      while (v48);
      ++v45;
      v18 += v60;
    }

    while (v45 != v61);
  }

  else
  {
    v21 = 0;
    v22 = *v12;
    *v12 = 0;
    if (v20)
    {
      v22 = (181 * v22 + 128) >> 8;
    }

    v23 = (181 * ((((1 << v16) >> 1) + ((181 * v22 + 128) >> 8)) >> v16) + 2176) >> 12;
    do
    {
      v24 = 0;
      do
      {
        v25 = v23 + v18[v24];
        if (v25 >= 0xFF)
        {
          v26 = -1;
        }

        else
        {
          v26 = v23 + v18[v24];
        }

        if (v25 >= 0)
        {
          v27 = v26;
        }

        else
        {
          v27 = 0;
        }

        v18[v24++] = v27;
      }

      while (v14 != v24);
      ++v21;
      v18 += v11;
    }

    while (v21 != v15);
  }

  return result;
}

uint64_t sub_27759B96C(uint64_t result, uint64_t a2, _OWORD *a3)
{
  v3 = 0;
  v31 = *MEMORY[0x277D85DE8];
  v4 = &v27;
  v5 = a3;
  do
  {
    for (i = 0; i != 4; ++i)
    {
      v4->i32[i] = *(v5 + i * 4) >> 2;
    }

    v7 = v4->i32[1];
    v8 = v4->i32[3];
    v9 = v7 + v4->i32[0];
    v10 = v4->i32[2] - v8;
    v11 = (v9 - v10) >> 1;
    v12 = v11 - v8;
    v13 = v11 - v7;
    v4->i32[0] = v9 - v12;
    v4->i32[1] = v12;
    v4->i32[2] = v13;
    v4->i32[3] = v13 + v10;
    ++v3;
    ++v4;
    v5 = (v5 + 2);
  }

  while (v3 != 4);
  v14 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  v15 = vaddq_s32(v28, v27);
  v16 = vsubq_s32(v29, v30);
  v17 = vshrq_n_s32(vsubq_s32(v15, v16), 1uLL);
  v18 = vsubq_s32(v17, v30);
  v19 = vsubq_s32(v17, v28);
  v27 = vsubq_s32(v15, v18);
  v28 = v18;
  v29 = v19;
  v30 = vaddq_s32(v19, v16);
  v20 = &v27;
  do
  {
    v21 = -4;
    do
    {
      v22 = v20->i32[0];
      v20 = (v20 + 4);
      v23 = v22 + *(result + v21 + 4);
      if (v23 >= 0xFF)
      {
        v24 = -1;
      }

      else
      {
        v24 = v23;
      }

      if (v23 >= 0)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      *(result + v21 + 4) = v25;
    }

    while (!__CFADD__(v21++, 1));
    ++v14;
    result += a2;
  }

  while (v14 != 4);
  return result;
}

uint64_t sub_27759BAA4(uint64_t result, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v10 = a3;
  v60[138] = *MEMORY[0x277D85DE8];
  v12 = a7 != 0;
  v13 = *(result + 2440);
  v14 = *(result + 24);
  if (a7)
  {
    ++v14;
  }

  v15 = v13 == 1 && a7 != 0;
  v16 = 1 << *(v14 + 880);
  v17 = 8u >> v15;
  if (!a3)
  {
    v17 = 0;
  }

  v18 = v17 + a3;
  if (a3 <= 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = 6;
  }

  v20 = v18 & -v16;
  if (v20 + (v16 >> 1) <= a5)
  {
    v21 = 0;
  }

  else
  {
    v21 = v16;
  }

  v22 = v20 - v21;
  if ((v18 & -v16) != 0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(result + 8 * v12 + 2416);
  v25 = (v16 + (v16 >> 1));
  if (v12 && v13 != 3)
  {
    v26 = 6;
  }

  else
  {
    v26 = 7;
  }

  v27 = (v23 << v15 >> 7) * *(result + 3476);
  v28 = ((v23 << v15) >> 5) & 2;
  v60[0] = *(result + 4448) + 108 * v27 + 36 * v7 + (((v23 << v15) >> 5) & 2 | (16 * ((v28 >> 1) & 1)));
  v60[1] = 0;
  v29 = *v60[0] != 0;
  if (v25 > a4)
  {
    v30 = 0;
    v31 = 0;
    if (!*v60[0])
    {
      return result;
    }

    return sub_27759BDCC(result, a2, &v60[68 * (v31 == 0) + 2], v30, v10, v7, a4 - v30, a6, v60[v31], v19 & 0xFFFFFFFD);
  }

  v31 = 0;
  v32 = 0;
  v33 = v26 - 1;
  v34 = v16;
  v35 = a6 - v10;
  v36 = v19 | 1;
  v49 = a6 - v10 + 1;
  v50 = a6 - v10;
  v48 = v16 - 4;
  v58 = v7;
  v56 = v16;
  v54 = v27;
  v55 = v10;
  v53 = ((v23 << v15) >> 5) & 2;
  v51 = v26 - 1;
  v52 = v19 | 1;
  do
  {
    v30 = v32 + v16;
    v37 = (*(result + 4448) + 108 * ((v30 >> v26) + v27) + 36 * v58 + ((v30 >> v33) & 1 | v28 | (8 * ((v30 >> v33) & 1 | v28))));
    v60[v31 == 0] = v37;
    LODWORD(v37) = *v37;
    v59 = v37 != 0;
    if (v37)
    {
      v38 = v35 < 1;
    }

    else
    {
      v38 = 1;
    }

    if (!v38)
    {
      v39 = &v60[68 * v31 + 2];
      v40 = v48;
      v41 = v49;
      do
      {
        *v39++ = *(a2 + v40);
        --v41;
        v40 += v24;
      }

      while (v41 > 1);
    }

    if (v29)
    {
      v42 = result;
      v43 = a6;
      v57 = v32 + v16;
      v44 = v7;
      v45 = v25;
      v46 = v34;
      v47 = v26;
      sub_27759BDCC(result, a2, &v60[68 * (v31 == 0) + 2], v32, v10, v7, v16, a6, v60[v31], v19);
      LODWORD(v28) = v53;
      v27 = v54;
      v10 = v55;
      v26 = v47;
      v34 = v46;
      v25 = v45;
      v36 = v52;
      result = v42;
      v7 = v44;
      v30 = v57;
      a6 = v43;
      v35 = v50;
      v33 = v51;
      v16 = v56;
    }

    a2 += v34;
    v31 ^= 1uLL;
    v19 = v36;
    v29 = v59;
    v32 = v30;
  }

  while (v25 + v30 <= a4);
  v19 = v36;
  if (v59)
  {
    return sub_27759BDCC(result, a2, &v60[68 * (v31 == 0) + 2], v30, v10, v7, a4 - v30, a6, v60[v31], v19 & 0xFFFFFFFD);
  }

  return result;
}

uint64_t sub_27759BDCC(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6, unsigned int a7, int a8, char *a9, int a10)
{
  v47 = *MEMORY[0x277D85DE8];
  v13 = *(result + 3280);
  v14 = a6 != 0 && *(result + 2440) == 1;
  v15 = *(result + 8 * (a6 != 0) + 2416);
  v16 = 8 << v14;
  if (v14)
  {
    v17 = 5;
  }

  else
  {
    v17 = 6;
  }

  if (!a5)
  {
    v16 = 0;
  }

  v18 = *(*(result + 8) + 392);
  v19 = (v16 + a5) >> (v17 + v18);
  v43 = result;
  v20 = *(result + 8 * a6 + 5264);
  v21 = 4 << v18;
  if (a5)
  {
    v22 = 64;
  }

  else
  {
    v22 = 56;
  }

  v23 = v19 * v21 - 4;
  if (*(*(result + 3256) + 24) <= 1u)
  {
    v23 = 0;
  }

  if ((v22 >> v14) >= a8 - a5)
  {
    v24 = (a8 - a5);
  }

  else
  {
    v24 = v22 >> v14;
  }

  v45 = 0u;
  v46 = 0u;
  v25 = *a9;
  if (v25 == 2)
  {
    v26 = a9[1];
    WORD5(v45) = a9[2];
    WORD1(v45) = WORD5(v45);
    WORD4(v45) = a9[3];
    WORD2(v45) = WORD4(v45);
    WORD3(v45) = -2 * (WORD5(v45) + v26 + WORD4(v45));
    v27 = a9[4];
    WORD5(v46) = a9[5];
    WORD1(v46) = WORD5(v46);
    v28 = a9[6];
    WORD6(v45) = v26;
    LOWORD(v45) = v26;
    WORD6(v46) = v27;
    LOWORD(v46) = v27;
    WORD4(v46) = v28;
    WORD2(v46) = v28;
    WORD3(v46) = 128 - 2 * (WORD5(v46) + v27 + v28);
    v29 = (v13 + 8 * ((v27 | v26) == 0) + 3328);
  }

  else
  {
    v30 = (&unk_277601B00 + 4 * (v25 - 3));
    v31 = *v30;
    v32 = *v30 == 0;
    LODWORD(v30) = v30[1];
    *&v45 = __PAIR64__(v30, v31);
    WORD4(v45) = a9[7];
    WORD5(v45) = 128 - (WORD4(v45) + a9[8]);
    v29 = (v13 + 8 * (2 * (v30 != 0) - v32) + 3344);
  }

  v33 = v24 + a5;
  if (v24 + a5 <= a8)
  {
    v35 = v20 + v15 * v23 + a4;
    v42 = *v29;
    v41 = v19 + 1;
    v36 = 0x40u >> v14;
    do
    {
      if (v41 == *(v43 + 3464) && a8 == v33)
      {
        v38 = 0;
      }

      else
      {
        v38 = 8;
      }

      v39 = v38 | a10 & 0xFFFFFFF7;
      result = v42(a2, v15, a3, v35, a7, v24, &v45, v39);
      LODWORD(v40) = a8 - v33;
      if (a8 == v33)
      {
        break;
      }

      a3 += 4 * v24;
      v40 = v36 >= v40 ? v40 : v36;
      a10 = v39 | 4;
      a2 += v15 * v24;
      v35 += 4 * v15;
      v33 += v40;
      v24 = v40;
    }

    while (v33 <= a8);
  }

  return result;
}

void sub_27759C090(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8, signed int a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v49 = *MEMORY[0x277D85DE8];
  if (a4[53])
  {
    v14 = a9 <= 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v16 = vdupq_n_s64(v15 - 1);
  v17 = *a4;
  v18 = vcgeq_u64(v16, xmmword_2775ED490);
  v19 = vmovn_s64(v18);
  v20 = vuzp1_s16(v19, *v18.i8).u8[0];
  v21 = vdupq_n_s32(a9);
  if (v20)
  {
    v48[0] = ((9472 * a9 - 19968) & 0xFF00 | (-83 * a9 + 105)) ^ v17;
  }

  v22 = vaddq_s32(v21, xmmword_2775ED530);
  if (vuzp1_s16(v19, *&v22).i8[2])
  {
    v23 = vand_s8(vmla_lane_s32(0xB20000000069, 0x2500000000ADLL, *v22.i8, 1), 0xFF00000000FFLL);
    v48[1] = vorr_s8(v23, vdup_lane_s32(v23, 1)).u32[0] ^ v17;
  }

  if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v16, xmmword_2775ED480))).i32[1])
  {
    v24 = vand_s8(vmla_laneq_s32(0xB20000000069, 0x2500000000ADLL, v22, 2), 0xFF00000000FFLL);
    LODWORD(v49) = vorr_s8(v24, vdup_lane_s32(v24, 1)).u32[0] ^ v17;
    v25 = vand_s8(vmla_laneq_s32(0xB20000000069, 0x2500000000ADLL, v22, 3), 0xFF00000000FFLL);
    HIDWORD(v49) = vorr_s8(v25, vdup_lane_s32(v25, 1)).u32[0] ^ v17;
  }

  if (a5)
  {
    v26 = 0;
    v27 = 0;
    v28 = a8;
    do
    {
      v29 = a4[53];
      if (v27)
      {
        v30 = v29 == 0;
      }

      else
      {
        v30 = 1;
      }

      v31 = !v30;
      v32 = &v47;
      v33 = v15;
      if (!v30)
      {
        do
        {
          *v32 = *(v32 - 2);
          v32 = (v32 + 4);
          --v33;
        }

        while (v33);
      }

      for (i = 0; i != v15; ++i)
      {
        v35 = v48[i];
        v36 = (((((v35 >> 3) ^ (v35 >> 12) ^ v35) ^ (v35 >> 1)) & 1) << 15) | (v35 >> 1);
        v48[i] = v36;
        v46[i] = BYTE1(v36);
      }

      if (a9)
      {
        v37 = v29 == 0;
      }

      else
      {
        v37 = 1;
      }

      v38 = !v37;
      if (v37)
      {
        v39 = 2;
      }

      else
      {
        v39 = 3;
      }

      if (v31)
      {
        v38 = v39;
      }

      if (a4[9])
      {
        v38 |= 4u;
      }

      sub_277567A80(a1 + 2 * v26, a2 + 2 * v26, a3, a6, a4, a7, a10 + 2 * v26, a11, v46, v28, a12, a13, v38);
      v27 += 32;
      v26 = v27;
    }

    while (v27 < a5);
  }
}

void sub_27759C374(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8, signed int a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v49 = *MEMORY[0x277D85DE8];
  if (a4[53])
  {
    v14 = a9 <= 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v16 = vdupq_n_s64(v15 - 1);
  v17 = *a4;
  v18 = vcgeq_u64(v16, xmmword_2775ED490);
  v19 = vmovn_s64(v18);
  v20 = vuzp1_s16(v19, *v18.i8).u8[0];
  v21 = vdupq_n_s32(a9);
  if (v20)
  {
    v48[0] = ((9472 * a9 - 19968) & 0xFF00 | (-83 * a9 + 105)) ^ v17;
  }

  v22 = vaddq_s32(v21, xmmword_2775ED530);
  if (vuzp1_s16(v19, *&v22).i8[2])
  {
    v23 = vand_s8(vmla_lane_s32(0xB20000000069, 0x2500000000ADLL, *v22.i8, 1), 0xFF00000000FFLL);
    v48[1] = vorr_s8(v23, vdup_lane_s32(v23, 1)).u32[0] ^ v17;
  }

  if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v16, xmmword_2775ED480))).i32[1])
  {
    v24 = vand_s8(vmla_laneq_s32(0xB20000000069, 0x2500000000ADLL, v22, 2), 0xFF00000000FFLL);
    LODWORD(v49) = vorr_s8(v24, vdup_lane_s32(v24, 1)).u32[0] ^ v17;
    v25 = vand_s8(vmla_laneq_s32(0xB20000000069, 0x2500000000ADLL, v22, 3), 0xFF00000000FFLL);
    HIDWORD(v49) = vorr_s8(v25, vdup_lane_s32(v25, 1)).u32[0] ^ v17;
  }

  if (a5)
  {
    v26 = 0;
    v27 = 0;
    v28 = a8;
    do
    {
      v29 = a4[53];
      if (v27)
      {
        v30 = v29 == 0;
      }

      else
      {
        v30 = 1;
      }

      v31 = !v30;
      v32 = &v47;
      v33 = v15;
      if (!v30)
      {
        do
        {
          *v32 = *(v32 - 2);
          v32 = (v32 + 4);
          --v33;
        }

        while (v33);
      }

      for (i = 0; i != v15; ++i)
      {
        v35 = v48[i];
        v36 = (((((v35 >> 3) ^ (v35 >> 12) ^ v35) ^ (v35 >> 1)) & 1) << 15) | (v35 >> 1);
        v48[i] = v36;
        v46[i] = BYTE1(v36);
      }

      if (a9)
      {
        v37 = v29 == 0;
      }

      else
      {
        v37 = 1;
      }

      v38 = !v37;
      if (v37)
      {
        v39 = 2;
      }

      else
      {
        v39 = 3;
      }

      if (v31)
      {
        v38 = v39;
      }

      if (a4[9])
      {
        v38 |= 4u;
      }

      sub_27756792C(a1 + 2 * v26, a2 + 2 * v26, a3, a6, a4, a7, a10 + 4 * v27, a11, v46, v28, a12, a13, v38);
      v27 += 16;
      v26 = v27;
    }

    while (v27 < a5);
  }
}

void sub_27759C65C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8, signed int a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v49 = *MEMORY[0x277D85DE8];
  if (a4[53])
  {
    v14 = a9 <= 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v16 = vdupq_n_s64(v15 - 1);
  v17 = *a4;
  v18 = vcgeq_u64(v16, xmmword_2775ED490);
  v19 = vmovn_s64(v18);
  v20 = vuzp1_s16(v19, *v18.i8).u8[0];
  v21 = vdupq_n_s32(a9);
  if (v20)
  {
    v48[0] = ((9472 * a9 - 19968) & 0xFF00 | (-83 * a9 + 105)) ^ v17;
  }

  v22 = vaddq_s32(v21, xmmword_2775ED530);
  if (vuzp1_s16(v19, *&v22).i8[2])
  {
    v23 = vand_s8(vmla_lane_s32(0xB20000000069, 0x2500000000ADLL, *v22.i8, 1), 0xFF00000000FFLL);
    v48[1] = vorr_s8(v23, vdup_lane_s32(v23, 1)).u32[0] ^ v17;
  }

  if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v16, xmmword_2775ED480))).i32[1])
  {
    v24 = vand_s8(vmla_laneq_s32(0xB20000000069, 0x2500000000ADLL, v22, 2), 0xFF00000000FFLL);
    LODWORD(v49) = vorr_s8(v24, vdup_lane_s32(v24, 1)).u32[0] ^ v17;
    v25 = vand_s8(vmla_laneq_s32(0xB20000000069, 0x2500000000ADLL, v22, 3), 0xFF00000000FFLL);
    HIDWORD(v49) = vorr_s8(v25, vdup_lane_s32(v25, 1)).u32[0] ^ v17;
  }

  if (a5)
  {
    v26 = 0;
    v27 = 0;
    v28 = a8;
    do
    {
      v29 = a4[53];
      if (v27)
      {
        v30 = v29 == 0;
      }

      else
      {
        v30 = 1;
      }

      v31 = !v30;
      v32 = &v47;
      v33 = v15;
      if (!v30)
      {
        do
        {
          *v32 = *(v32 - 2);
          v32 = (v32 + 4);
          --v33;
        }

        while (v33);
      }

      for (i = 0; i != v15; ++i)
      {
        v35 = v48[i];
        v36 = (((((v35 >> 3) ^ (v35 >> 12) ^ v35) ^ (v35 >> 1)) & 1) << 15) | (v35 >> 1);
        v48[i] = v36;
        v46[i] = BYTE1(v36);
      }

      if (a9)
      {
        v37 = v29 == 0;
      }

      else
      {
        v37 = 1;
      }

      v38 = !v37;
      if (v37)
      {
        v39 = 2;
      }

      else
      {
        v39 = 3;
      }

      if (v31)
      {
        v38 = v39;
      }

      if (a4[9])
      {
        v38 |= 4u;
      }

      sub_2775677E4(a1 + 2 * v26, a2 + 2 * v26, a3, a6, a4, a7, a10 + 4 * v27, a11, v46, v28, a12, a13, v38);
      v27 += 16;
      v26 = v27;
    }

    while (v27 < a5);
  }
}

void sub_27759C944(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, unint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, signed int a9)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a4[53])
  {
    v12 = a9 <= 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v14 = vdupq_n_s64(v13 - 1);
  v15 = *a4;
  v16 = vcgeq_u64(v14, xmmword_2775ED490);
  v17 = vmovn_s64(v16);
  v18 = vuzp1_s16(v17, *v16.i8).u8[0];
  v19 = vdupq_n_s32(a9);
  if (v18)
  {
    v44[0] = ((9472 * a9 - 19968) & 0xFF00 | (-83 * a9 + 105)) ^ v15;
  }

  v20 = vaddq_s32(v19, xmmword_2775ED530);
  if (vuzp1_s16(v17, *&v20).i8[2])
  {
    v21 = vand_s8(vmla_lane_s32(0xB20000000069, 0x2500000000ADLL, *v20.i8, 1), 0xFF00000000FFLL);
    v44[1] = vorr_s8(v21, vdup_lane_s32(v21, 1)).u32[0] ^ v15;
  }

  if (vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v14, xmmword_2775ED480))).i32[1])
  {
    v22 = vand_s8(vmla_laneq_s32(0xB20000000069, 0x2500000000ADLL, v20, 2), 0xFF00000000FFLL);
    LODWORD(v45) = vorr_s8(v22, vdup_lane_s32(v22, 1)).u32[0] ^ v15;
    v23 = vand_s8(vmla_laneq_s32(0xB20000000069, 0x2500000000ADLL, v20, 3), 0xFF00000000FFLL);
    HIDWORD(v45) = vorr_s8(v23, vdup_lane_s32(v23, 1)).u32[0] ^ v15;
  }

  if (a5)
  {
    v24 = 0;
    for (i = 0; i < a5; v24 = i)
    {
      v26 = a4[53];
      if (i)
      {
        v27 = v26 == 0;
      }

      else
      {
        v27 = 1;
      }

      v28 = !v27;
      v29 = &v43;
      v30 = v13;
      if (!v27)
      {
        do
        {
          *v29 = *(v29 - 2);
          v29 = (v29 + 4);
          --v30;
        }

        while (v30);
      }

      for (j = 0; j != v13; ++j)
      {
        v32 = v44[j];
        v33 = (((((v32 >> 3) ^ (v32 >> 12) ^ v32) ^ (v32 >> 1)) & 1) << 15) | (v32 >> 1);
        v44[j] = v33;
        v42[j] = BYTE1(v33);
      }

      if (a9)
      {
        v34 = v26 == 0;
      }

      else
      {
        v34 = 1;
      }

      v35 = !v34;
      if (v34)
      {
        v36 = 2;
      }

      else
      {
        v36 = 3;
      }

      if (v28)
      {
        v35 = v36;
      }

      sub_277567294(a1 + 2 * v24, a2 + 2 * v24, a3, a6, a4[22], a7, v42, a8, a4[54], v35);
      i += 32;
    }
  }
}

uint64_t sub_27759CC24(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8, signed int a9, uint64_t a10, uint64_t a11, int a12, int a13, unsigned int a14, unsigned int a15, signed int a16)
{
  v187 = *MEMORY[0x277D85DE8];
  v16 = 24 - __clz(a16);
  v18 = a4[53];
  v17 = a4[54];
  if (a13)
  {
    v19 = 235;
  }

  else
  {
    v19 = 240;
  }

  v181 = v16;
  v20 = v19 << v16;
  if (v17)
  {
    v21 = v20;
  }

  else
  {
    v21 = a16;
  }

  v145 = a4[53];
  if (v18)
  {
    v22 = a9 <= 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    result = 1;
  }

  else
  {
    result = 2;
  }

  v24 = vdupq_n_s64(result - 1);
  v25 = *a4;
  v26 = vcgeq_u64(v24, xmmword_2775ED490);
  v27 = vmovn_s64(v26);
  v28 = vuzp1_s16(v27, *v26.i8).u8[0];
  v29 = vdupq_n_s32(a9);
  if (v28)
  {
    v186[0] = ((9472 * a9 - 19968) & 0xFF00 | (-83 * a9 + 105)) ^ v25;
  }

  v30 = vaddq_s32(v29, xmmword_2775ED530);
  if (vuzp1_s16(v27, *&v30).i8[2])
  {
    v31 = vand_s8(vmla_lane_s32(0xB20000000069, 0x2500000000ADLL, *v30.i8, 1), 0xFF00000000FFLL);
    v186[1] = vorr_s8(v31, vdup_lane_s32(v31, 1)).u32[0] ^ v25;
  }

  if (vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v24, xmmword_2775ED480))).i32[1])
  {
    v32 = vand_s8(vmla_laneq_s32(0xB20000000069, 0x2500000000ADLL, v30, 2), 0xFF00000000FFLL);
    LODWORD(v187) = vorr_s8(v32, vdup_lane_s32(v32, 1)).u32[0] ^ v25;
    v33 = vand_s8(vmla_laneq_s32(0xB20000000069, 0x2500000000ADLL, v30, 3), 0xFF00000000FFLL);
    HIDWORD(v187) = vorr_s8(v33, vdup_lane_s32(v33, 1)).u32[0] ^ v25;
  }

  if (v17)
  {
    v34 = 16 << v16;
  }

  else
  {
    v34 = 0;
  }

  if (a5)
  {
    v35 = 0;
    v36 = -(128 << v181);
    v37 = (128 << v181) - 1;
    LODWORD(v38) = 2u >> a15;
    v148 = 2u >> a15;
    if ((2u >> a15) >= a8)
    {
      LODWORD(v38) = a8;
    }

    v39 = 0x20u >> a14;
    if (v18)
    {
      v40 = a9 == 0;
    }

    else
    {
      v40 = 1;
    }

    if (v40)
    {
      v38 = 0;
    }

    else
    {
      v38 = v38;
    }

    v151 = 2u >> a14;
    v163 = a3 >> 1;
    v164 = a11 >> 1;
    v180 = a4 + 49;
    v178 = a4 + 51;
    v179 = a4 + 47;
    v159 = (0x20u >> a15) + 3;
    v149 = v38;
    v158 = v38;
    v147 = v39 + 3;
    LODWORD(v41) = a5;
    v143 = result;
    v144 = a5;
    v142 = 0x20u >> a14;
    do
    {
      v150 = v41;
      v41 = v41;
      if (v41 >= v39)
      {
        v41 = v39;
      }

      v154 = v41;
      v42 = a5 - v35;
      if (v39 < a5 - v35)
      {
        v42 = v39;
      }

      v162 = v42;
      if (v145)
      {
        v43 = v35 == 0;
      }

      else
      {
        v43 = 1;
      }

      v44 = !v43;
      v45 = &v184;
      v46 = result;
      if (!v43)
      {
        do
        {
          *v45 = *(v45 - 2);
          ++v45;
          --v46;
        }

        while (v46);
      }

      v176 = v35;
      for (i = 0; i != result; ++i)
      {
        v48 = v186[i];
        v49 = (((((v48 >> 3) ^ (v48 >> 12) ^ v48) ^ (v48 >> 1)) & 1) << 15) | (v48 >> 1);
        v186[i] = v49;
        *(&v182 + i) = BYTE1(v49);
      }

      v50 = 2u >> a14;
      if (v151 >= v162)
      {
        v50 = v162;
      }

      if (v44)
      {
        v51 = v50;
      }

      else
      {
        v51 = 0;
      }

      v177 = v51;
      if (v158 < a8)
      {
        v52 = ((v182 & 0xF) + 3) * v148;
        v174 = ((v184 & 0xF) + 3) * v148;
        v167 = v51 + v35;
        v172 = ((v182 >> 4) + 3) * v151 + 3;
        v170 = v147 + ((v184 >> 4) + 3) * v151;
        v53 = v149;
        do
        {
          if (v177 < v162)
          {
            v54 = a4[9];
            v55 = a4[22];
            v56 = v172 + v177;
            v57 = v167;
            v58 = v154 - v177;
            do
            {
              v59 = (a10 + 2 * v164 * (v53 << a15) + 2 * (v57 << a14));
              v60 = *v59;
              if (a14)
              {
                v60 = (v60 + v59[1] + 1) >> 1;
              }

              v61 = *(a2 + 2 * v163 * v53 + 2 * v57);
              if (!v54)
              {
                v62 = (v178[a12] << v181) + ((v180[a12] * v60 + v179[a12] * v61) >> 6);
                v63 = a16;
                if (v62 < a16)
                {
                  v63 = v62;
                }

                if (v62 >= 0)
                {
                  v60 = v63;
                }

                else
                {
                  v60 = 0;
                }
              }

              v64 = (((1 << v55 >> 1) + *(a6 + v60) * *(a7 + 164 * (v53 + v52 + 3) + 2 * v56)) >> v55) + v61;
              if (v64 >= v21)
              {
                v65 = v21;
              }

              else
              {
                v65 = v64;
              }

              if (v64 >= v34)
              {
                v66 = v65;
              }

              else
              {
                v66 = v34;
              }

              *(a1 + 2 * v163 * v53 + 2 * v57++) = v66;
              ++v56;
              --v58;
            }

            while (v58);
          }

          if (v177 >= 1)
          {
            v69 = a4[22];
            v70 = v172;
            v71 = a4[9];
            v72 = v170;
            v73 = v177;
            v74 = v176;
            v75 = (&unk_277601AD0 + 16 * a14 + 4);
            do
            {
              v67 = v52 + v53 + 3;
              v68 = v174 + v53 + 3;
              v76 = (*v75 * *(a7 + 164 * v67 + 2 * v70) + *(v75 - 1) * *(a7 + 164 * v68 + 2 * v72) + 16) >> 5;
              if (v76 >= v37)
              {
                v77 = (128 << v181) - 1;
              }

              else
              {
                v77 = (*v75 * *(a7 + 164 * v67 + 2 * v70) + *(v75 - 1) * *(a7 + 164 * v68 + 2 * v72) + 16) >> 5;
              }

              if (v76 >= v36)
              {
                v78 = v77;
              }

              else
              {
                v78 = -(128 << v181);
              }

              v79 = (a10 + 2 * v164 * (v53 << a15) + 2 * (v74 << a14));
              v80 = *v79;
              if (a14)
              {
                v80 = (v80 + v79[1] + 1) >> 1;
              }

              v81 = *(a2 + 2 * v163 * v53 + 2 * v74);
              if (!v71)
              {
                v82 = (v178[a12] << v181) + ((v180[a12] * v80 + v179[a12] * v81) >> 6);
                v83 = a16;
                if (v82 < a16)
                {
                  v83 = v82;
                }

                if (v82 >= 0)
                {
                  v80 = v83;
                }

                else
                {
                  v80 = 0;
                }
              }

              v75 += 2;
              v84 = (((1 << v69 >> 1) + v78 * *(a6 + v80)) >> v69) + v81;
              if (v84 >= v21)
              {
                v85 = v21;
              }

              else
              {
                v85 = v84;
              }

              if (v84 >= v34)
              {
                v86 = v85;
              }

              else
              {
                v86 = v34;
              }

              *(a1 + 2 * v163 * v53 + 2 * v74++) = v86;
              ++v72;
              ++v70;
              --v73;
            }

            while (v73);
          }

          ++v53;
        }

        while (v53 != a8);
      }

      if (v149 >= 1)
      {
        v168 = 0;
        v87 = ((v182 >> 4) + 3) * v151;
        v161 = ((v182 & 0xF) + 3) * v148;
        v88 = ((v183 >> 4) + 3) * v151;
        v160 = ((v183 & 0xF) + 3) * v148;
        v157 = ((v185 & 0xF) + 3) * v148;
        v156 = ((v184 & 0xF) + 3) * v148;
        v155 = v154 - v177;
        v152 = v177 + 3 + v87;
        v153 = v177 + 3 + v88;
        v175 = v147 + ((v184 >> 4) + 3) * v151;
        v173 = v147 + ((v185 >> 4) + 3) * v151;
        v169 = v88 + 3;
        v171 = v87 + 3;
        do
        {
          v89 = &unk_277601AD0 + 16 * a15;
          if (v177 < v162)
          {
            v92 = &v89[8 * v168];
            v93 = *v92;
            v94 = *(v92 + 1);
            v95 = a4[22];
            v96 = a4[9];
            v97 = v152;
            v98 = v153;
            v99 = v177 + v176;
            v100 = v155;
            do
            {
              v90 = v168 + v161 + 3;
              v91 = v159 + v168 + v160;
              v101 = (v94 * *(a7 + 164 * v90 + 2 * v97) + v93 * *(a7 + 164 * v91 + 2 * v98) + 16) >> 5;
              if (v101 >= v37)
              {
                v102 = (128 << v181) - 1;
              }

              else
              {
                v102 = (v94 * *(a7 + 164 * v90 + 2 * v97) + v93 * *(a7 + 164 * v91 + 2 * v98) + 16) >> 5;
              }

              if (v101 >= v36)
              {
                v103 = v102;
              }

              else
              {
                v103 = -(128 << v181);
              }

              v104 = (a10 + 2 * v164 * (v168 << a15) + 2 * (v99 << a14));
              v105 = *v104;
              if (a14)
              {
                v105 = (v105 + v104[1] + 1) >> 1;
              }

              v106 = *(a2 + 2 * v163 * v168 + 2 * v99);
              if (!v96)
              {
                v107 = (v178[a12] << v181) + ((v180[a12] * v105 + v179[a12] * v106) >> 6);
                if (v107 >= a16)
                {
                  v108 = a16;
                }

                else
                {
                  v108 = v107;
                }

                if (v107 >= 0)
                {
                  v105 = v108;
                }

                else
                {
                  v105 = 0;
                }
              }

              v109 = (((1 << v95 >> 1) + v103 * *(a6 + v105)) >> v95) + v106;
              if (v109 >= v21)
              {
                v110 = v21;
              }

              else
              {
                v110 = v109;
              }

              if (v109 >= v34)
              {
                v111 = v110;
              }

              else
              {
                v111 = v34;
              }

              *(a1 + 2 * v163 * v168 + 2 * v99++) = v111;
              ++v98;
              ++v97;
              --v100;
            }

            while (v100);
          }

          if (v177 >= 1)
          {
            v112 = 0;
            v117 = &v89[8 * v168];
            v118 = *v117;
            v119 = *(v117 + 1);
            v120 = a4[9];
            v121 = a4[22];
            v122 = (&unk_277601AD0 + 16 * a14 + 4);
            do
            {
              v123 = *(v122 - 1);
              v114 = v157 + v159 + v168;
              v113 = v160 + v159 + v168;
              v124 = (*v122 * *(a7 + 164 * v113 + 2 * (v169 + v112)) + v123 * *(a7 + 164 * v114 + 2 * (v173 + v112)) + 16) >> 5;
              if (v124 >= v37)
              {
                v125 = (128 << v181) - 1;
              }

              else
              {
                v125 = (*v122 * *(a7 + 164 * v113 + 2 * (v169 + v112)) + v123 * *(a7 + 164 * v114 + 2 * (v173 + v112)) + 16) >> 5;
              }

              if (v124 >= v36)
              {
                v126 = v125;
              }

              else
              {
                v126 = -(128 << v181);
              }

              v115 = v161 + v168 + 3;
              v116 = v156 + v168 + 3;
              v127 = (v123 * *(a7 + 164 * v116 + 2 * (v175 + v112)) + *v122 * *(a7 + 164 * v115 + 2 * (v171 + v112)) + 16) >> 5;
              if (v127 >= v37)
              {
                v128 = (128 << v181) - 1;
              }

              else
              {
                v128 = (v123 * *(a7 + 164 * v116 + 2 * (v175 + v112)) + *v122 * *(a7 + 164 * v115 + 2 * (v171 + v112)) + 16) >> 5;
              }

              if (v127 >= v36)
              {
                v129 = v128;
              }

              else
              {
                v129 = -(128 << v181);
              }

              v130 = (v129 * v119 + v126 * v118 + 16) >> 5;
              if (v130 >= v37)
              {
                v131 = (128 << v181) - 1;
              }

              else
              {
                v131 = v130;
              }

              if (v130 >= v36)
              {
                v132 = v131;
              }

              else
              {
                v132 = -(128 << v181);
              }

              v133 = v176 + v112;
              v134 = (a10 + 2 * v164 * (v168 << a15) + 2 * ((v176 + v112) << a14));
              v135 = *v134;
              if (a14)
              {
                v135 = (v135 + v134[1] + 1) >> 1;
              }

              v136 = *(a2 + 2 * v163 * v168 + 2 * v133);
              if (!v120)
              {
                v137 = (v178[a12] << v181) + ((v180[a12] * v135 + v179[a12] * v136) >> 6);
                v138 = a16;
                if (v137 < a16)
                {
                  v138 = v137;
                }

                if (v137 >= 0)
                {
                  v135 = v138;
                }

                else
                {
                  v135 = 0;
                }
              }

              v122 += 2;
              v139 = (((1 << v121 >> 1) + v132 * *(a6 + v135)) >> v121) + v136;
              if (v139 >= v21)
              {
                v140 = v21;
              }

              else
              {
                v140 = v139;
              }

              if (v139 >= v34)
              {
                v141 = v140;
              }

              else
              {
                v141 = v34;
              }

              *(a1 + 2 * v163 * v168 + 2 * v133) = v141;
              ++v112;
            }

            while (v177 != v112);
          }

          ++v168;
        }

        while (v168 != v158);
      }

      v39 = 0x20u >> a14;
      result = v143;
      v35 = v176 + v142;
      LODWORD(v41) = v150 - v142;
      LODWORD(a5) = v144;
    }

    while (v144 > (v176 + v142));
  }

  return result;
}

uint64_t sub_27759D79C(uint64_t result, uint64_t a2, unint64_t a3, int *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, signed int a9, unsigned int a10)
{
  v122 = a8;
  v126 = result;
  v10 = a10;
  v154 = *MEMORY[0x277D85DE8];
  v11 = 24 - __clz(a10);
  v12 = a4[54];
  if (v12)
  {
    v10 = 235 << v11;
  }

  v121 = a4[53];
  if (v121)
  {
    v13 = a9 <= 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v15 = vdupq_n_s64(v14 - 1);
  v16 = *a4;
  v17 = vcgeq_u64(v15, xmmword_2775ED490);
  v18 = vmovn_s64(v17);
  v19 = vuzp1_s16(v18, *v17.i8).u8[0];
  v20 = vdupq_n_s32(a9);
  if (v19)
  {
    v153[0] = ((9472 * a9 - 19968) & 0xFF00 | (-83 * a9 + 105)) ^ v16;
  }

  v21 = vaddq_s32(v20, xmmword_2775ED530);
  if (vuzp1_s16(v18, *&v21).i8[2])
  {
    v22 = vand_s8(vmla_lane_s32(0xB20000000069, 0x2500000000ADLL, *v21.i8, 1), 0xFF00000000FFLL);
    v153[1] = vorr_s8(v22, vdup_lane_s32(v22, 1)).u32[0] ^ v16;
  }

  if (vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v15, xmmword_2775ED480))).i32[1])
  {
    v23 = vand_s8(vmla_laneq_s32(0xB20000000069, 0x2500000000ADLL, v21, 2), 0xFF00000000FFLL);
    LODWORD(v154) = vorr_s8(v23, vdup_lane_s32(v23, 1)).u32[0] ^ v16;
    v24 = vand_s8(vmla_laneq_s32(0xB20000000069, 0x2500000000ADLL, v21, 3), 0xFF00000000FFLL);
    HIDWORD(v154) = vorr_s8(v24, vdup_lane_s32(v24, 1)).u32[0] ^ v16;
  }

  if (v12)
  {
    v25 = 16 << v11;
  }

  else
  {
    v25 = 0;
  }

  if (a5)
  {
    LODWORD(v26) = 0;
    v27 = 128 << v11;
    v28 = -v27;
    v29 = v27 - 1;
    if (a8 >= 2)
    {
      LODWORD(v30) = 2;
    }

    else
    {
      LODWORD(v30) = a8;
    }

    if (v121)
    {
      v31 = a9 == 0;
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      v30 = 0;
    }

    else
    {
      v30 = v30;
    }

    v138 = v30;
    a8 = a8;
    v125 = v30;
    v32 = (a3 >> 1) * v30;
    v124 = result + 2 * v32;
    v123 = a2 + 2 * v32;
    v119 = v14;
    v120 = a5;
    v148 = a6;
    do
    {
      v142 = a5 - v26;
      if (a5 - v26 >= 32)
      {
        v33 = 32;
      }

      else
      {
        v33 = a5 - v26;
      }

      v143 = v33;
      if (v121)
      {
        v34 = v26 == 0;
      }

      else
      {
        v34 = 1;
      }

      v35 = !v34;
      v36 = &v151;
      v37 = v14;
      if (!v34)
      {
        do
        {
          *v36 = *(v36 - 2);
          ++v36;
          --v37;
        }

        while (v37);
      }

      v38 = 0;
      v137 = 2 * v26;
      v128 = v26;
      v39 = v124 + v137;
      v40 = v123 + v137;
      do
      {
        v41 = v153[v38];
        result = (((v41 >> 3) ^ (v41 >> 12) ^ v41 ^ (v41 >> 1)) & 1) << 15;
        v42 = result | (v41 >> 1);
        v153[v38] = v42;
        *(&v149 + v38++) = BYTE1(v42);
      }

      while (v14 != v38);
      v43 = v142;
      if (v142 >= 2)
      {
        v43 = 2;
      }

      if (v35)
      {
        v44 = v43;
      }

      else
      {
        v44 = 0;
      }

      v147 = v44;
      if (v138 < v122)
      {
        result = (v149 >> 3) & 0xFFFFFFFE;
        v45 = 2 * (v149 & 0xF);
        v46 = v137 + 2 * v44;
        v47 = 2 * (v151 & 0xF);
        v48 = (v124 + v46);
        v49 = (v123 + v46);
        v144 = v44 + result + 9;
        v50 = (result + 8) | 1;
        v51 = (((v151 >> 3) & 0xFFFFFFFE) + 40) | 1;
        v52 = v125;
        do
        {
          v53 = v147;
          if (v142 > v147)
          {
            v54 = a4[22];
            v55 = v144;
            v56 = v49;
            v57 = v48;
            result = v147;
            v53 = v147;
            do
            {
              v58 = *v56++;
              v59 = (((1 << v54 >> 1) + *(a6 + v58) * *(a7 + 164 * (v52 + v45 + 9) + 2 * v55)) >> v54) + v58;
              if (v59 >= v10)
              {
                v60 = v10;
              }

              else
              {
                v60 = v59;
              }

              if (v59 >= v25)
              {
                v61 = v60;
              }

              else
              {
                v61 = v25;
              }

              *v57++ = v61;
              ++result;
              ++v55;
            }

            while (result < v143);
          }

          if (v53 >= 1)
          {
            v62 = 0;
            v65 = a4[22];
            v66 = &unk_277601AC4;
            do
            {
              v63 = v52 + 9 + v45;
              v64 = v52 + 9 + v47;
              v67 = (*v66 * *(a7 + 164 * v63 + 2 * (v50 + v62)) + *(v66 - 1) * *(a7 + 164 * v64 + 2 * (v51 + v62)) + 16) >> 5;
              if (v67 >= v29)
              {
                v68 = v29;
              }

              else
              {
                v68 = (*v66 * *(a7 + 164 * v63 + 2 * (v50 + v62)) + *(v66 - 1) * *(a7 + 164 * v64 + 2 * (v51 + v62)) + 16) >> 5;
              }

              if (v67 >= v28)
              {
                v69 = v68;
              }

              else
              {
                v69 = v28;
              }

              v70 = (((1 << v65 >> 1) + v69 * *(a6 + *(v40 + 2 * v62))) >> v65) + *(v40 + 2 * v62);
              if (v70 >= v10)
              {
                v71 = v10;
              }

              else
              {
                v71 = v70;
              }

              if (v70 >= v25)
              {
                result = v71;
              }

              else
              {
                result = v25;
              }

              *(v39 + 2 * v62++) = result;
              v66 += 2;
            }

            while (v147 != v62);
          }

          ++v52;
          v48 = (v48 + a3);
          v49 = (v49 + a3);
          v39 += a3;
          v40 += a3;
        }

        while (v52 != a8);
      }

      v73 = a2 + v137;
      v72 = v126 + v137;
      if (v125 >= 1)
      {
        v74 = 0;
        v75 = (v149 >> 3) & 0xFFFFFFFE;
        v140 = 2 * (v149 & 0xF);
        v76 = (v150 >> 3) & 0xFFFFFFFE;
        v139 = 2 * (v150 & 0xF);
        v77 = v137 + 2 * v147;
        result = (v152 >> 3) & 0xFFFFFFFE;
        v130 = 2 * (v152 & 0xF);
        v129 = 2 * (v151 & 0xF);
        v78 = v147;
        v79 = v143;
        v80 = v126 + v77;
        v81 = a2 + v77;
        v82 = v147 + 9 + v76;
        v83 = v147 + 9 + v75;
        v134 = (v76 + 8) | 1;
        v135 = v83;
        v133 = (((v151 >> 3) & 0xFFFFFFFE) + 40) | 1;
        v132 = (result + 40) | 1;
        v131 = (v75 + 8) | 1;
        v136 = v82;
        do
        {
          v84 = &dword_277601AC0[2 * v74];
          v85 = v147;
          if (v142 > v147)
          {
            v86 = 0;
            result = (v74 + v140 + 9);
            v88 = *v84;
            v89 = v84[1];
            v90 = a4[22];
            v85 = v147;
            do
            {
              v87 = v74 + v139 + 41;
              v91 = (v89 * *(a7 + 164 * result + 2 * (v83 + v86)) + v88 * *(a7 + 164 * v87 + 2 * (v82 + v86)) + 16) >> 5;
              if (v91 >= v29)
              {
                v92 = v29;
              }

              else
              {
                v92 = (v89 * *(a7 + 164 * result + 2 * (v83 + v86)) + v88 * *(a7 + 164 * v87 + 2 * (v82 + v86)) + 16) >> 5;
              }

              if (v91 >= v28)
              {
                v93 = v92;
              }

              else
              {
                v93 = v28;
              }

              v94 = (((1 << v90 >> 1) + v93 * *(a6 + *(v81 + 2 * v86))) >> v90) + *(v81 + 2 * v86);
              if (v94 >= v10)
              {
                v95 = v10;
              }

              else
              {
                v95 = v94;
              }

              if (v94 >= v25)
              {
                v96 = v95;
              }

              else
              {
                v96 = v25;
              }

              *(v80 + 2 * v86++) = v96;
            }

            while (v78 + v86 < v79);
          }

          v97 = &dword_277601AC0[2 * v74];
          v146 = v74;
          if (v85 >= 1)
          {
            v98 = 0;
            result = *v97;
            v101 = v97[1];
            v102 = a4[22];
            v103 = &unk_277601AC4;
            do
            {
              v104 = v72;
              v105 = *(v103 - 1);
              v99 = v139 + v74 + 41;
              v100 = v130 + v74 + 41;
              v106 = (*v103 * *(a7 + 164 * v99 + 2 * (v134 + v98)) + v105 * *(a7 + 164 * v100 + 2 * (v132 + v98)) + 16) >> 5;
              if (v106 >= v29)
              {
                v107 = v29;
              }

              else
              {
                v107 = (*v103 * *(a7 + 164 * v99 + 2 * (v134 + v98)) + v105 * *(a7 + 164 * v100 + 2 * (v132 + v98)) + 16) >> 5;
              }

              if (v106 >= v28)
              {
                v108 = v107;
              }

              else
              {
                v108 = v28;
              }

              v109 = v105 * *(a7 + 164 * (v129 + v74 + 9) + 2 * (v133 + v98)) + *v103 * *(a7 + 164 * (v140 + v74 + 9) + 2 * (v131 + v98));
              v72 = v104;
              v110 = (v109 + 16) >> 5;
              if (v110 >= v29)
              {
                v111 = v29;
              }

              else
              {
                v111 = v110;
              }

              if (v110 >= v28)
              {
                v112 = v111;
              }

              else
              {
                v112 = v28;
              }

              v113 = (v112 * v101 + v108 * result + 16) >> 5;
              if (v113 >= v29)
              {
                v114 = v29;
              }

              else
              {
                v114 = v113;
              }

              if (v113 >= v28)
              {
                v115 = v114;
              }

              else
              {
                v115 = v28;
              }

              v116 = (((1 << v102 >> 1) + v115 * *(v148 + *(v73 + 2 * v98))) >> v102) + *(v73 + 2 * v98);
              if (v116 >= v10)
              {
                v117 = v10;
              }

              else
              {
                v117 = v116;
              }

              if (v116 >= v25)
              {
                v118 = v117;
              }

              else
              {
                v118 = v25;
              }

              *(v104 + 2 * v98++) = v118;
              v103 += 2;
            }

            while (v85 != v98);
          }

          ++v74;
          v80 += a3;
          v81 += a3;
          v72 += a3;
          v73 += a3;
          v78 = v147;
          v82 = v136;
          v79 = v143;
          v83 = v135;
          a6 = v148;
        }

        while (v146 + 1 != v138);
      }

      v26 = (v128 + 32);
      v14 = v119;
      LODWORD(a5) = v120;
      a8 = v122;
    }

    while (v26 < v120);
  }

  return result;
}

_WORD *sub_27759DFF8(_WORD *result, uint64_t a2, _DWORD *a3, uint64_t a4, int a5, int a6, unsigned int a7)
{
  v7 = 0;
  v8 = __clz(a7);
  if (a4)
  {
    v9 = 18904;
  }

  else
  {
    v9 = 46372;
  }

  v10 = *a3 ^ v9;
  v11 = v8 + a3[46] - 20;
  v12 = 128 << (24 - v8);
  if (a5)
  {
    v13 = 44;
  }

  else
  {
    v13 = 82;
  }

  if (a6)
  {
    v14 = 38;
  }

  else
  {
    v14 = 73;
  }

  v15 = result;
  do
  {
    v16 = v15;
    v17 = v13;
    do
    {
      v10 = (((((v10 >> 3) ^ (v10 >> 12) ^ v10) ^ (v10 >> 1)) & 1) << 15) | (v10 >> 1);
      *v16++ = ((1 << v11 >> 1) + word_277600AC0[v10 >> 5]) >> v11;
      --v17;
    }

    while (v17);
    ++v7;
    v15 += 82;
  }

  while (v7 != v14);
  v18 = -v12;
  v19 = v12 - 1;
  v20 = a3[23];
  v21 = (v13 - 3);
  v22 = a3[44];
  v24 = &result[-83 * v20 + 249];
  v25 = 3;
  v48 = v14;
  do
  {
    v51 = v24;
    v26 = 3;
    do
    {
      v27 = 0;
      if ((v20 & 0x80000000) == 0)
      {
        v28 = v24;
        v29 = -v20;
        v30 = &a3[7 * a4 + 30];
        do
        {
          v31 = &v30[(2 * v20) | 1];
          v32 = v28;
          v33 = (2 * v20) | 1;
          v34 = -v20;
          while (v34 | v29)
          {
            v36 = *v30++;
            v35 = v36;
            v37 = *v32++;
            v27 += v37 * v35;
            ++v34;
            if (!--v33)
            {
              v30 = v31;
              goto LABEL_28;
            }
          }

          if (a3[1])
          {
            v38 = 0;
            v39 = 0;
            v40 = a2 + 164 * (((v25 - 3) << a6) + 3) + 2 * (((v26 - 3) << a5) + 3);
            do
            {
              v41 = v40;
              v42 = (a5 + 1);
              do
              {
                v43 = *v41++;
                v39 += v43;
                --v42;
              }

              while (v42);
              ++v38;
              v40 += 164;
            }

            while (v38 != a6 + 1);
            v27 += ((v39 + ((1 << (a6 + a5)) >> 1)) >> (a6 + a5)) * *v30;
          }

LABEL_28:
          ++v29;
          v28 += 82;
        }

        while (v29 != 1);
      }

      v44 = &result[82 * v25];
      v23 = 1 << v22 >> 1;
      v45 = ((v23 + v27) >> v22) + v44[v26];
      if (v45 >= v19)
      {
        LOWORD(v46) = v19;
      }

      else
      {
        v46 = ((v23 + v27) >> v22) + v44[v26];
      }

      if (v45 >= v18)
      {
        v47 = v46;
      }

      else
      {
        v47 = v18;
      }

      v44[v26++] = v47;
      v24 += 2;
    }

    while (v26 != v21);
    ++v25;
    v24 = v51 + 164;
  }

  while (v25 != v48);
  return result;
}

uint64_t sub_27759E2C4(uint64_t result, int *a2, unsigned int a3)
{
  v3 = 0;
  v4 = __clz(a3);
  v5 = *a2;
  v6 = v4 + a2[46] - 20;
  v7 = 128 << (24 - v4);
  v8 = result;
  do
  {
    for (i = 0; i != 164; i += 2)
    {
      v5 = (((((v5 >> 3) ^ (v5 >> 12) ^ v5) ^ (v5 >> 1)) & 1) << 15) | (v5 >> 1);
      *(v8 + i) = ((1 << v6 >> 1) + word_277600AC0[v5 >> 5]) >> v6;
    }

    ++v3;
    v8 += 164;
  }

  while (v3 != 73);
  v10 = -v7;
  v11 = v7 - 1;
  v12 = a2[23];
  v13 = (a2 + 24);
  v14 = a2[44];
  v15 = -v12;
  v16 = result + 166 * v15 + 498;
  for (j = 3; j != 73; ++j)
  {
    v18 = result + 164 * j;
    v19 = v16;
    for (k = 3; k != 79; ++k)
    {
      v21 = 0;
      if ((v12 & 0x80000000) == 0)
      {
        v22 = v19;
        v23 = -v12;
        v24 = v13;
        do
        {
          v25 = v22;
          v26 = -v12;
          if (v23 | v15)
          {
            do
            {
              v28 = *v24++;
              v27 = v28;
              v29 = *v25++;
              v21 += v29 * v27;
              if (v26 >= v12)
              {
                break;
              }

              ++v26;
            }

            while (v26 | v23);
          }

          ++v23;
          v22 += 82;
        }

        while (v23 != 1);
      }

      v30 = (((1 << v14 >> 1) + v21) >> v14) + *(v18 + 2 * k);
      if (v30 >= v11)
      {
        v31 = v11;
      }

      else
      {
        v31 = v30;
      }

      if (v30 >= v10)
      {
        v32 = v31;
      }

      else
      {
        v32 = v10;
      }

      *(v18 + 2 * k) = v32;
      v19 += 2;
    }

    v16 += 164;
  }

  return result;
}

uint64_t sub_27759E444(uint64_t **a1, uint64_t *a2, int *a3, int *a4, __int16 a5, int a6, char a7, int a8, int a9)
{
  v12 = a3;
  v14 = a1;
  v249 = *MEMORY[0x277D85DE8];
  v15 = *a1;
  v16 = &byte_277601B40[4 * a6];
  v17 = *(a1 + 79) - a9;
  v18.i32[0] = *v16;
  v18.i32[1] = v16[1];
  v19 = v18.i32[0];
  v229 = v18.i32[0];
  if (v18.i32[0] >= 0x10u)
  {
    v19 = 16;
  }

  if (v19 < v17)
  {
    v17 = v19;
  }

  v228 = v17;
  v215 = v18;
  v20 = v16[1];
  if (v18.i32[1] >= 0x10u)
  {
    v21 = 16;
  }

  else
  {
    v21 = v16[1];
  }

  if (v21 >= *(a1 + 81) - a8)
  {
    v21 = *(a1 + 81) - a8;
  }

  v227 = v21;
  *a3 = 0;
  if ((a5 & 0xF) != 0)
  {
    v22 = *v15;
    v23 = *v15 + 36 * ((a5 & 0xFu) - 1);
    v24 = *(v23 + 896);
    if (v24)
    {
      v25 = v23 + 896;
      if (v24 == 1)
      {
        v29 = vrev64_s32(vshr_n_u32(*(v25 + 4), 0xDuLL));
      }

      else
      {
        v26 = (v25 + 24);
        if (v24 == 2)
        {
          v27 = vld1_dup_f32(v26);
        }

        else
        {
          v27.i32[0] = *(v25 + 12);
          *&v27.i32[1] = *v26;
        }

        v30 = vshl_n_s32(__PAIR64__(a8, a9), 2uLL);
        v31 = vadd_s32(v18, v18);
        v32 = vadd_s32(v27, 0xFFFF0000FFFF0000);
        if (*(v22 + 428))
        {
          v33 = 13;
        }

        else
        {
          v33 = 14;
        }

        v34 = vadd_s32(vadd_s32(v30, -1), v31);
        v35 = vadd_s32(vmla_s32(vmul_s32(*(v25 + 16), vrev64_s32(v34)), v32, v34), *(v25 + 4));
        v36 = vshl_u32(vshl_u32(vadd_s32(vdup_n_s32((1 << v33) >> 1), vabs_s32(v35)), vneg_s32(vdup_n_s32(v33))), vdup_n_s32(*(v22 + 428) == 0));
        v29 = vbsl_s8(vcltz_s32(v35), vneg_s32(v36), v36);
      }

      if (*(v22 + 269))
      {
        v29 = vand_s8(vadd_s32(vsra_n_u32(v29, vand_s8(v29, 0xFFFF0000FFFFLL), 0xFuLL), 0x300000003), vdup_n_s32(0xFFF8u));
      }
    }

    else
    {
      v29 = 0;
    }

    v28 = v29.u16[2] | (v29.u16[0] << 16);
    v246 = v28;
    if (v24 >= 2)
    {
      LOWORD(v248[0]) = v29.i16[2];
      HIWORD(v248[0]) = v29.i16[0];
      goto LABEL_28;
    }
  }

  else
  {
    v28 = 0;
    v246 = 0;
  }

  v248[0] = -2147450880;
LABEL_28:
  if (a5 >> 8 >= 1)
  {
    v37 = *v15;
    v38 = *v15 + 36 * ((a5 >> 8) - 1);
    v39 = *(v38 + 896);
    if (v39)
    {
      v40 = v38 + 896;
      if (v39 == 1)
      {
        v43 = vrev64_s32(vshr_n_u32(*(v40 + 4), 0xDuLL));
      }

      else
      {
        v41 = (v40 + 24);
        if (v39 == 2)
        {
          v42 = vld1_dup_f32(v41);
        }

        else
        {
          v42.i32[0] = *(v40 + 12);
          *&v42.i32[1] = *v41;
        }

        v44 = vshl_n_s32(__PAIR64__(a8, a9), 2uLL);
        v45 = vadd_s32(v215, v215);
        v46 = vadd_s32(v42, 0xFFFF0000FFFF0000);
        if (*(v37 + 428))
        {
          v47 = 13;
        }

        else
        {
          v47 = 14;
        }

        v48 = vadd_s32(vadd_s32(v44, -1), v45);
        v49 = vadd_s32(vmla_s32(vmul_s32(*(v40 + 16), vrev64_s32(v48)), v46, v48), *(v40 + 4));
        v50 = vshl_u32(vshl_u32(vadd_s32(vdup_n_s32((1 << v47) >> 1), vabs_s32(v49)), vneg_s32(vdup_n_s32(v47))), vdup_n_s32(*(v37 + 428) == 0));
        v43 = vbsl_s8(vcltz_s32(v49), vneg_s32(v50), v50);
      }

      if (*(v37 + 269))
      {
        v43 = vand_s8(vadd_s32(vsra_n_u32(v43, vand_s8(v43, 0xFFFF0000FFFFLL), 0xFuLL), 0x300000003), vdup_n_s32(0xFFF8u));
      }
    }

    else
    {
      v43 = 0;
    }

    v247 = v43.u16[2] | (v43.u16[0] << 16);
    if (v39 <= 1)
    {
      v51 = -2147450880;
    }

    else
    {
      v51 = v43.u16[2] | (v43.u16[0] << 16);
    }

    v248[1] = v51;
  }

  v243 = 0;
  v242 = 0;
  v52 = *(a1 + 80);
  v202 = v28;
  v209 = a5 & 0xF;
  v200 = a5 >> 8;
  if (v52 >= a8)
  {
    v56 = 0;
    v238 = 0;
    v212 = -1;
  }

  else
  {
    v53 = (a8 - v52 + 1) >> 1;
    if (v215.i32[1] <= 1u)
    {
      v54 = 2;
    }

    else
    {
      v54 = 3;
    }

    if (v53 >= v54)
    {
      v55 = v54;
    }

    else
    {
      v55 = v53;
    }

    v56 = a1[(a8 & 0x1Fu) + 5] + 12 * a9;
    if (v215.i32[0] <= 0xFu)
    {
      v57 = 1;
    }

    else
    {
      v57 = 4;
    }

    v238 = v55;
    v58 = sub_27759F6A4(a2, a3, a5 & 0xFF0F, v248, v56, v229, v228, v55, v57, &v243 + 1, &v242);
    v14 = a1;
    v212 = v58;
  }

  v59 = *(v14 + 78);
  v214 = a8;
  if (v59 >= a9)
  {
    v63 = 0;
    v235 = 0;
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v60 = (a9 - v59 + 1) >> 1;
    if (v215.i32[0] <= 1u)
    {
      v61 = 2;
    }

    else
    {
      v61 = 3;
    }

    if (v60 >= v61)
    {
      v62 = v61;
    }

    else
    {
      v62 = v60;
    }

    v63 = &v14[(a8 & 0x1Fu) + 6];
    if (v215.i32[1] <= 0xFu)
    {
      v64 = 1;
    }

    else
    {
      v64 = 4;
    }

    v235 = v62;
    result = sub_27759F7E4(a2, v12, a5 & 0xFF0F, v248, v63, v20, v227, a9 - 1, v62, v64, &v243 + 1, &v243);
    v14 = a1;
  }

  v66 = v229;
  if (v229 <= v20)
  {
    v66 = v20;
  }

  v219 = result;
  if ((a7 & 1) != 0 && v212 != -1 && v66 <= 0x10 && (v229 + a9) < *(v14 + 79))
  {
    sub_27759F934(a2, v12, 4u, (v56 + 12 * v215.u32[0]), a5 & 0xFF0F, v248, &v243 + 1, &v242);
    v14 = a1;
    result = v219;
  }

  v213 = v56;
  v211 = v63;
  v218 = a5;
  v226 = v20;
  v67 = *v12;
  if (*v12 >= 1)
  {
    v68 = a2 + 1;
    v69 = *v12;
    do
    {
      *v68 += 640;
      v68 += 4;
      --v69;
    }

    while (v69);
  }

  v71 = v242;
  v70 = v243;
  v241 = *(*v15 + 437);
  v216 = v12;
  v217 = v15;
  v210 = v67;
  if (*(v15 + 7))
  {
    v205 = v242;
    v207 = v243;
    v198 = a8 >> 1;
    v203 = v15[23];
    v199 = a9 >> 1;
    v201 = v14[38] + 5 * (a9 >> 1) + 5 * v203 * ((a8 >> 1) & 0xF);
    if (v215.i32[1] <= 0xFu)
    {
      v72 = 1;
    }

    else
    {
      v72 = 2;
    }

    v225 = v72;
    if ((v228 + 1) >> 1 >= 8)
    {
      v73 = 8;
    }

    else
    {
      v73 = (v228 + 1) >> 1;
    }

    v74 = (v227 + 1) >> 1;
    if (v74 >= 8)
    {
      v75 = 8;
    }

    else
    {
      v75 = (v227 + 1) >> 1;
    }

    v223 = v75;
    if (v74 >= 1)
    {
      v76 = 0;
      if (v215.i32[0] <= 0xFu)
      {
        v77 = 1;
      }

      else
      {
        v77 = 2;
      }

      v231 = v14[38] + 5 * (a9 >> 1) + 5 * v203 * ((a8 >> 1) & 0xF);
      do
      {
        if ((v228 + 1) >> 1 >= 1)
        {
          v78 = 0;
          v79 = v231;
          do
          {
            if (v76 | v78)
            {
              v80 = 0;
            }

            else
            {
              v80 = &v241;
            }

            sub_27759FA98(v217, a2, v216, v79, v218 & 0xFF0F, v80, &v246);
            v78 += v77;
            v79 += 5 * v77;
          }

          while (v73 > v78);
        }

        v76 += v225;
        v231 += 5 * (v203 << (v215.i32[1] > 0xFu));
      }

      while (v76 < v223);
    }

    v81 = v226;
    if (v229 >= v226)
    {
      v82 = v226;
    }

    else
    {
      v82 = v229;
    }

    if (v229 > v226)
    {
      v81 = v229;
    }

    v12 = v216;
    result = v219;
    v14 = a1;
    v67 = v210;
    v70 = v207;
    v71 = v205;
    if (v82 >= 2 && v81 < 0x10)
    {
      v83 = v229 >> 1;
      v84 = v201 + 5 * v203 * (v226 >> 1);
      v85 = v198 + (v226 >> 1);
      v86 = (v198 & 0xFFFFFFF8) + 8;
      if (*(a1 + 81) >> 1 >= v86)
      {
        v87 = (v198 & 0xFFFFFFF8) + 8;
      }

      else
      {
        v87 = *(a1 + 81) >> 1;
      }

      if (v85 >= v87)
      {
        v89 = a9 >> 1;
        v90 = v199 & 0xFFFFFFF8;
      }

      else
      {
        v88 = *(a1 + 78) >> 1;
        v89 = a9 >> 1;
        v90 = v199 & 0xFFFFFFF8;
        if (v88 <= (v199 & 0xFFFFFFF8))
        {
          v88 = v199 & 0xFFFFFFF8;
        }

        if (v199 > v88)
        {
          sub_27759FA98(v217, a2, v216, v84 - 5, v218 & 0xFF0F, 0, 0);
          v89 = a9 >> 1;
          v71 = v205;
          v70 = v207;
          v14 = a1;
          result = v219;
        }
      }

      v91 = v83 + v89;
      v92 = *(v14 + 79) >> 1;
      if (v92 >= (v90 + 8))
      {
        v92 = v90 + 8;
      }

      if (v91 < v92)
      {
        if (v85 < v87)
        {
          sub_27759FA98(v217, a2, v216, v84 + 5 * (v229 >> 1), v218 & 0xFF0F, 0, 0);
          v71 = v205;
          v70 = v207;
          v14 = a1;
          result = v219;
        }

        v93 = *(v14 + 81) >> 1;
        if (v93 >= v86)
        {
          v93 = (v198 & 0xFFFFFFF8) + 8;
        }

        if (v85 <= v93)
        {
          sub_27759FA98(v217, a2, v216, v84 + 5 * (v83 - v203), v218 & 0xFF0F, 0, 0);
          v71 = v205;
          v70 = v207;
          v14 = a1;
          result = v219;
        }
      }
    }
  }

  v240 = 0;
  v94 = v212;
  v208 = v71 + v70;
  if ((result | v212) == 0xFFFFFFFF)
  {
    v96 = v12;
    v95 = v218 & 0xFF0F;
  }

  else
  {
    v95 = v218 & 0xFF0F;
    v96 = v12;
    sub_27759F934(a2, v12, 4u, (v56 - 12), v218 & 0xFF0F, v248, &v240, &v242);
    v14 = a1;
    result = v219;
  }

  v97 = 0;
  v204 = v67;
  v98 = 2;
  if (v215.i32[0] <= 0xFu)
  {
    v99 = 2;
  }

  else
  {
    v99 = 4;
  }

  v224 = v99;
  v232 = v14 + 1;
  v222 = &v14[(v214 & 0x1Eu) + 7];
  if (v215.i32[1] <= 0xFu)
  {
    v100 = 2;
  }

  else
  {
    v100 = 4;
  }

  v101 = -2;
  v102 = v95;
  do
  {
    v103 = v97;
    if (v98 <= v238 && v98 > v94)
    {
      v104 = v95;
      v105 = result;
      v94 += sub_27759F6A4(a2, v96, v104, v248, *(v232 + ((8 * ((v214 & 0x1F) + 1 - 2 * v98)) | 8) + 40) + 12 * (a9 | 1), v229, v228, v238 + 1 + v101, v224, &v240, &v242);
      result = v105;
    }

    if (v98 > v235)
    {
      v95 = v102;
    }

    else
    {
      v95 = v102;
      if (v98 > result)
      {
        result = sub_27759F7E4(a2, v96, v102, v248, v222, v226, v227, (a9 + 1 - 2 * v98) | 1, v235 + 1 + v101, v100, &v240, &v243) + result;
      }
    }

    v101 = ~v98;
    v98 = 3;
    v97 = 1;
  }

  while ((v103 & 1) == 0);
  v106 = v242 + v243;
  if (v208)
  {
    v107 = v217;
    v108 = v218;
    v109 = v214;
    v110 = v210;
    v111 = a9;
    v112 = v96;
    if (v208 == 1)
    {
      v115 = 3 * v106;
      if (v115 >= 4)
      {
        v113 = 4;
      }

      else
      {
        v113 = v115;
      }

      v114 = 3 - HIDWORD(v243);
      if (!v210)
      {
        goto LABEL_168;
      }
    }

    else if (v208 == 2)
    {
      v113 = 5;
      v114 = 5 - HIDWORD(v243);
      if (!v210)
      {
        goto LABEL_168;
      }
    }

    else
    {
      v114 = 0;
      v113 = 0;
      if (!v210)
      {
        goto LABEL_168;
      }
    }
  }

  else
  {
    if (v106 >= 2)
    {
      v113 = 2;
    }

    else
    {
      v113 = v242 + v243;
    }

    v114 = v106 > 0;
    v107 = v217;
    v108 = v218;
    v109 = v214;
    v110 = v210;
    v111 = a9;
    v112 = v96;
    if (!v210)
    {
      goto LABEL_168;
    }
  }

  v116 = v110;
  do
  {
    if (v116 < 2)
    {
      break;
    }

    v117 = v116;
    v118 = a2 + 2;
    v119 = 1;
    v116 = 0;
    do
    {
      if (*(v118 - 2) < *(v118 + 2))
      {
        v120 = *(v118 - 1);
        *(v118 - 1) = *v118;
        *v118 = v120;
        v116 = v119;
      }

      ++v119;
      v118 += 2;
    }

    while (v117 != v119);
  }

  while (v116);
LABEL_168:
  v121 = *v112;
  if (*v112 > v110)
  {
    do
    {
      if (v110 + 1 >= v121)
      {
        break;
      }

      v122 = &a2[2 * v204 + 2];
      v123 = v204 + 1;
      v124 = v110;
      v125 = v110;
      do
      {
        v126 = &a2[2 * v125];
        if (*(v126 + 2) >= *(v122 + 8))
        {
          v125 = v123;
        }

        else
        {
          v127 = *v126;
          *v126 = *v122;
          *v122 = v127;
          v125 = v123;
          v124 = v123;
        }

        ++v123;
        v122 += 16;
      }

      while (v121 != v123);
      v121 = v124;
    }

    while (v124 > v110);
    v121 = *v112;
  }

  if (v108 >> 8 < 1)
  {
    if (v209 && v121 <= 1)
    {
      v234 = v113;
      v237 = v114;
      v173 = result;
      v174 = &v107[4];
      v175 = v107[4].u8[(v209 - 1)];
      if (v228 >= v227)
      {
        v176 = v227;
      }

      else
      {
        v176 = v228;
      }

      if (v94 != -1 && v176 >= 1)
      {
        v177 = 0;
        do
        {
          if (*v112 > 1)
          {
            break;
          }

          result = sub_27759FE74(a2, v112, v213 + 12 * v177, v175, v174);
          v177 += byte_277601B40[4 * *(v213 + 12 * v177 + 10)];
        }

        while (v177 < v176);
      }

      if (v173 != -1 && v176 >= 1)
      {
        v178 = 0;
        while (1)
        {
          v121 = *v112;
          if (*v112 > 1)
          {
            break;
          }

          v179 = v211[v178] + 12 * a9;
          result = sub_27759FE74(a2, v112, v179 - 12, v175, v174);
          v178 += byte_277601B40[4 * *(v179 - 2) + 1];
          if (v178 >= v176)
          {
            goto LABEL_238;
          }
        }

        v109 = v214;
        v107 = v217;
        v111 = a9;
        v180 = v226;
        v114 = v237;
        v113 = v234;
        goto LABEL_240;
      }

LABEL_238:
      v121 = *v112;
      v109 = v214;
      v107 = v217;
      v111 = a9;
      v114 = v237;
      v113 = v234;
    }

    v180 = v226;
    if (!v121)
    {
      v192 = 0;
      v193 = v202;
LABEL_270:
      v196 = v192 + 1;
      v197 = &a2[2 * v192];
      do
      {
        *v197 = v193;
        v197 += 2;
        v156 = v196++ == 2;
      }

      while (!v156);
LABEL_273:
      v172 = (16 * v113) | (8 * v241) | v114;
      goto LABEL_274;
    }

LABEL_240:
    v181 = 32 * (v107[1].i32[0] - v111) + 128;
    v182 = -128 - 32 * (v180 + v109);
    v183 = 32 * (v107[1].i32[1] - v109) + 128;
    if (v121 <= 1)
    {
      v184 = 1;
    }

    else
    {
      v184 = v121;
    }

    v185 = a2 + 1;
    do
    {
      v186 = *v185;
      if (v186 >= v181)
      {
        v187 = v181;
      }

      else
      {
        v187 = *v185;
      }

      if ((-128 - 32 * (v229 + v111)) <= v186)
      {
        v188 = v187;
      }

      else
      {
        v188 = -128 - 32 * (v229 + v111);
      }

      *v185 = v188;
      v189 = *(v185 - 1);
      if (v189 >= v183)
      {
        v190 = v183;
      }

      else
      {
        v190 = *(v185 - 1);
      }

      if (v182 <= v189)
      {
        v191 = v190;
      }

      else
      {
        v191 = v182;
      }

      *(v185 - 1) = v191;
      v185 += 8;
      --v184;
    }

    while (v184);
    v192 = *v112;
    v193 = v202;
    if (*v112 > 1)
    {
      goto LABEL_273;
    }

    goto LABEL_270;
  }

  if (v121 > 1)
  {
    goto LABEL_215;
  }

  v233 = v113;
  v236 = v114;
  v220 = result;
  v128 = &v107[4];
  v129 = v107[3].u8[v209 + 7];
  v130 = v107[4].u8[v200 - 1];
  if (v228 >= v227)
  {
    v131 = v227;
  }

  else
  {
    v131 = v228;
  }

  result = &a2[2 * v121];
  v244 = 0;
  v245 = 0;
  v239 = result;
  if (v94 != -1 && v131 >= 1)
  {
    v132 = 0;
    do
    {
      sub_27759FCFC(result, &v244, v213 + 12 * v132, v129, v130, v95, v128);
      result = &a2[2 * v121];
      v132 += byte_277601B40[4 * *(v213 + 12 * v132 + 10)];
    }

    while (v132 < v131);
  }

  v230 = v121;
  v133 = a9;
  if (v220 != -1 && v131 >= 1)
  {
    v134 = 0;
    do
    {
      v135 = v211[v134] + 12 * v133;
      v136 = v129;
      v137 = v130;
      v138 = v95;
      v139 = v128;
      v140 = v95;
      v141 = v131;
      v142 = v128;
      v143 = v130;
      v144 = v129;
      v145 = v133;
      sub_27759FCFC(result, &v244, v135 - 12, v136, v137, v138, v139);
      result = v239;
      v133 = v145;
      v129 = v144;
      v130 = v143;
      v128 = v142;
      v131 = v141;
      v95 = v140;
      v134 += byte_277601B40[4 * *(v135 - 2) + 1];
    }

    while (v134 < v131);
  }

  v146 = 0;
  v147 = &v244;
  v148 = &v246;
  v149 = 1;
  v107 = v217;
  v109 = v214;
  v111 = a9;
  do
  {
    v150 = v149;
    v151 = *v147;
    if (v151 > 1)
    {
      goto LABEL_199;
    }

    v152 = *(&v245 + v146);
    if (!v152)
    {
      goto LABEL_196;
    }

    *(result + 16 * v151++ + 4 * v146) = *(result + 32 + 4 * v146);
    if (v151 == 2)
    {
      goto LABEL_199;
    }

    if (v152 == 2)
    {
      *(result + 16 + 4 * v146) = *(result + 48 + 4 * v146);
    }

    else
    {
LABEL_196:
      v153 = *v148;
      v154 = v151 + 1;
      v155 = &a2[2 * v230 + 2 * v151] + v146;
      do
      {
        *v155 = v153;
        v155 += 4;
        v156 = v154++ == 2;
      }

      while (!v156);
    }

LABEL_199:
    v149 = 0;
    v147 = &v244 + 1;
    v148 = &v247;
    v146 = 1;
  }

  while ((v150 & 1) != 0);
  v157 = *v216;
  if (v157 == 1 && *a2 == *result)
  {
    a2[2] = a2[4];
  }

  v158 = 0;
  if (v157 <= 1)
  {
    v159 = 1;
  }

  else
  {
    v159 = v157;
  }

  v160 = (v159 - v157);
  v161 = vdupq_n_s64(v160);
  v162 = &a2[2 * v157 + 5];
  do
  {
    v163 = vdupq_n_s64(v158);
    v164 = vmovn_s64(vcgeq_u64(v161, vorrq_s8(v163, xmmword_2775ED490)));
    if (vuzp1_s16(v164, *v161.i8).u8[0])
    {
      *(v162 - 8) = 2;
    }

    if (vuzp1_s16(v164, *&v161).i8[2])
    {
      *(v162 - 4) = 2;
    }

    if (vuzp1_s16(*&v161, vmovn_s64(vcgeq_u64(v161, vorrq_s8(v163, xmmword_2775ED480)))).i32[1])
    {
      *v162 = 2;
      *(v162 + 4) = 2;
    }

    v158 += 4;
    v162 += 8;
  }

  while (((v160 + 4) & 0x1FFFFFFFCLL) != v158);
  v121 = 2;
  *v216 = 2;
  v114 = v236;
  v113 = v233;
LABEL_215:
  *v165.i8 = vsub_s32(0x7F0000007FLL, vshl_n_s32(vadd_s32(__PAIR64__(v109, v111), v215), 5uLL));
  v165.i64[1] = v165.i64[0];
  v166 = vrev64q_s32(v165);
  *v167.i8 = vadd_s32(vshl_n_s32(vsub_s32(v107[1], __PAIR64__(v109, v111)), 5uLL), 0x8000000080);
  v167.i64[1] = v167.i64[0];
  v168 = vrev64q_s32(v167);
  v169 = v121;
  do
  {
    v170 = vmovl_s16(*a2);
    *a2 = vmovn_s32(vbslq_s8(vcgtq_s32(v166, v170), v166, vminq_s32(v170, v168)));
    a2 += 2;
    --v169;
  }

  while (v169);
  v171 = v113 >> 1;
  if (v113 >> 1 == 2)
  {
    if (v114 >= 4)
    {
      v195 = 4;
    }

    else
    {
      v195 = v114;
    }

    if (v195 <= 1)
    {
      v195 = 1;
    }

    v172 = v195 + 3;
    goto LABEL_274;
  }

  if (v171 == 1)
  {
    if (v114 >= 3)
    {
      v194 = 3;
    }

    else
    {
      v194 = v114;
    }

    v172 = v194 + 1;
LABEL_274:
    *a4 = v172;
    return result;
  }

  if (!v171)
  {
    if (v114 >= 1)
    {
      v172 = 1;
    }

    else
    {
      v172 = v114;
    }

    goto LABEL_274;
  }

  return result;
}

uint64_t sub_27759F6A4(uint64_t *a1, _DWORD *a2, unsigned __int16 a3, unsigned int *a4, uint64_t a5, int a6, int a7, int a8, int a9, _DWORD *a10, _DWORD *a11)
{
  v15 = &byte_277601B40[4 * *(a5 + 10)];
  v16 = *v15;
  if (a6 >= v16)
  {
    v17 = *v15;
  }

  else
  {
    v17 = a6;
  }

  if (a9 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = a9;
  }

  if (v16 >= a6)
  {
    v23 = 2;
    if (a6 != 1)
    {
      v24 = v15[1];
      if (2 * a8 < v24)
      {
        v24 = 2 * a8;
      }

      if (v24 <= 2)
      {
        v23 = 2;
      }

      else
      {
        v23 = v24;
      }
    }

    sub_27759F934(a1, a2, v23 * v18, a5, a3, a4, a10, a11);
    return v23 >> 1;
  }

  else
  {
    v20 = 0;
    v21 = a5;
    while (1)
    {
      sub_27759F934(a1, a2, 2 * v18, v21, a3, a4, a10, a11);
      v20 += v18;
      if (v20 >= a7)
      {
        break;
      }

      v21 = a5 + 12 * v20;
      if (a9 <= byte_277601B40[4 * *(v21 + 10)])
      {
        v18 = byte_277601B40[4 * *(v21 + 10)];
      }

      else
      {
        v18 = a9;
      }
    }

    return 1;
  }
}

uint64_t sub_27759F7E4(uint64_t *a1, _DWORD *a2, unsigned __int16 a3, unsigned int *a4, void *a5, int a6, int a7, int a8, int a9, int a10, _DWORD *a11, _DWORD *a12)
{
  v15 = *a5 + 12 * a8;
  v16 = &byte_277601B40[4 * *(v15 + 10)];
  v17 = v16[1];
  if (a6 >= v17)
  {
    v18 = v16[1];
  }

  else
  {
    v18 = a6;
  }

  if (a10 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = a10;
  }

  if (v17 >= a6)
  {
    v25 = 2;
    if (a6 != 1)
    {
      v26 = *v16;
      if (2 * a9 < v26)
      {
        v26 = 2 * a9;
      }

      if (v26 <= 2)
      {
        v25 = 2;
      }

      else
      {
        v25 = v26;
      }
    }

    sub_27759F934(a1, a2, v25 * v19, v15, a3, a4, a11, a12);
    return v25 >> 1;
  }

  else
  {
    v23 = 0;
    while (1)
    {
      sub_27759F934(a1, a2, 2 * v19, v15, a3, a4, a11, a12);
      v23 += v19;
      if (v23 >= a7)
      {
        break;
      }

      v15 = a5[v23] + 12 * a8;
      if (a10 <= byte_277601B40[4 * *(v15 + 10) + 1])
      {
        v19 = byte_277601B40[4 * *(v15 + 10) + 1];
      }

      else
      {
        v19 = a10;
      }
    }

    return 1;
  }
}

uint64_t *sub_27759F934(uint64_t *result, _DWORD *a2, unsigned int a3, unsigned int *a4, unsigned __int16 a5, unsigned int *a6, _DWORD *a7, _DWORD *a8)
{
  v8 = *a4;
  if (v8 != -2147450880)
  {
    if ((~a5 & 0xFF00) != 0)
    {
      if (*(a4 + 4) != a5)
      {
        return result;
      }

      v10 = *(a4 + 11);
      if ((v10 & 1) == 0 || ((v11 = a6[1], *a6 != -2147450880) ? (v8 = *a6) : (v8 = v8), v11 == -2147450880))
      {
        v11 = a4[1];
      }

      v12 = v8 | (v11 << 32);
      *a8 = 1;
      *a7 |= v10 >> 1;
      v13 = *a2;
      if (v13 >= 1)
      {
        v14 = 0;
        v15 = result;
        while (1)
        {
          v16 = *v15;
          v15 += 2;
          if (v16 == v12)
          {
            goto LABEL_31;
          }

          if (v13 == ++v14)
          {
            if (v13 > 7)
            {
              return result;
            }

            break;
          }
        }
      }

      v17 = &result[2 * v13];
      *v17 = v12;
      *(v17 + 2) = a3;
      v18 = v13 + 1;
    }

    else
    {
      if (a5 == *(a4 + 8))
      {
        v9 = 0;
      }

      else
      {
        if (a5 != *(a4 + 9))
        {
          return result;
        }

        v9 = 1;
      }

      v19 = *(a4 + 11);
      if ((v19 & 1) == 0 || (v20 = *a6, *a6 == -2147450880))
      {
        v20 = a4[v9];
      }

      *a8 = 1;
      *a7 |= v19 >> 1;
      v21 = *a2;
      if (v21 >= 1)
      {
        v14 = 0;
        v22 = result;
        while (1)
        {
          v23 = *v22;
          v22 += 4;
          if (v23 == v20)
          {
            break;
          }

          if (v21 == ++v14)
          {
            if (v21 > 7)
            {
              return result;
            }

            goto LABEL_28;
          }
        }

LABEL_31:
        LODWORD(result[2 * v14 + 1]) += a3;
        return result;
      }

LABEL_28:
      v24 = &result[2 * v21];
      *v24 = v20;
      v24[2] = a3;
      v18 = v21 + 1;
    }

    *a2 = v18;
  }

  return result;
}

uint64_t *sub_27759FA98(uint64_t *result, int *a2, int *a3, uint64_t a4, __int16 a5, _DWORD *a6, __int16 *a7)
{
  if (*a4 != -2147450880)
  {
    v8 = *result;
    result = (result + 46);
    v7 = v8;
    v9 = word_2775EF440[*(a4 + 4)];
    v10.i32[0] = *a4 << 16;
    v10.i32[1] = *a4;
    v11 = vshr_n_s32(v10, 0x10uLL);
    v12 = vmul_s32(vdup_n_s32(v9 * *(result + a5 - 1)), v11);
    v13 = vmax_s32(vmin_s32(vshr_n_s32(vadd_s32(vsra_n_s32(v12, v12, 0x1FuLL), 0x200000002000), 0xEuLL), 0x3F0000003FLL), vdup_n_s32(0xFFFFC001));
    v14 = *(v8 + 269);
    if (*(v8 + 269))
    {
      v13 = vand_s8(vadd_s32(vsra_n_u32(v13, vand_s8(v13, 0xFFFF0000FFFFLL), 0xFuLL), 0x300000003), vdup_n_s32(0xFFF8u));
    }

    else
    {
      v15 = COERCE_DOUBLE(vand_s8(vsra_n_u32(v13, vand_s8(v13, 0xFFFF0000FFFFLL), 0xFuLL), vdup_n_s32(0xFFFEu)));
      if (!*(v7 + 428))
      {
        *&v13 = v15;
      }
    }

    v16 = *a3;
    v17 = *a3;
    v18 = a5 >> 8;
    if (v18 == -1)
    {
      if (a6)
      {
        v22.i32[0] = *a7;
        v22.i32[1] = a7[1];
        v23 = vabd_s32(vshr_n_s32(vshl_n_s32(v13, 0x10uLL), 0x10uLL), v22);
        *a6 = vorr_s8(v23, vdup_lane_s32(v23, 1)).u32[0] > 0xF;
      }

      v24 = v13.u16[0] | (v13.u16[2] << 16);
      if (v17 >= 1)
      {
        v25 = 0;
        v26 = a2;
        while (1)
        {
          v27 = *v26;
          v26 += 4;
          if (v27 == v24)
          {
            goto LABEL_27;
          }

          if (v16 == ++v25)
          {
            if (v17 > 7)
            {
              return result;
            }

            break;
          }
        }
      }

      v28 = &a2[4 * v16];
      *v28 = v24;
    }

    else
    {
      v19 = v13.u16[0] | (v13.u16[2] << 16);
      v20 = vmul_s32(vdup_n_s32(*(result + v18 - 1) * v9), v11);
      v21 = vmax_s32(vmin_s32(vshr_n_s32(vadd_s32(vsra_n_s32(v20, v20, 0x1FuLL), 0x200000002000), 0xEuLL), 0x3F0000003FLL), vdup_n_s32(0xFFFFC001));
      if (v14)
      {
        v21 = vand_s8(vadd_s32(vsra_n_u32(v21, vand_s8(v21, 0xFFFF0000FFFFLL), 0xFuLL), 0x300000003), vdup_n_s32(0xFFF8u));
      }

      else
      {
        v29 = COERCE_DOUBLE(vand_s8(vsra_n_u32(v21, vand_s8(v21, 0xFFFF0000FFFFLL), 0xFuLL), vdup_n_s32(0xFFFEu)));
        if (!*(v7 + 428))
        {
          *&v21 = v29;
        }
      }

      v30 = (v21.u32[1] << 48) | (v21.u16[0] << 32) | v19;
      if (v17 >= 1)
      {
        v25 = 0;
        v31 = a2;
        while (1)
        {
          v32 = *v31;
          v31 += 2;
          if (v32 == v30)
          {
            break;
          }

          if (v16 == ++v25)
          {
            if (v17 > 7)
            {
              return result;
            }

            goto LABEL_24;
          }
        }

LABEL_27:
        a2[4 * v25 + 2] += 2;
        return result;
      }

LABEL_24:
      v28 = &a2[4 * v16];
      *v28 = v30;
    }

    v28[2] = 2;
    *a3 = v17 + 1;
  }

  return result;
}

uint64_t sub_27759FCFC(uint64_t result, int *a2, uint64_t a3, int a4, int a5, __int16 a6, uint64_t a7)
{
  v7 = 0;
  v8 = result + 32;
  v9 = a7 - 1;
  v10 = 1;
  do
  {
    v11 = *(a3 + 8 + v7);
    if (v11 < 1)
    {
      break;
    }

    v12 = v10;
    v13 = (a3 + 4 * v7);
    v14 = *v13;
    v15 = v13[1];
    if (a6 == v11)
    {
      v16 = *a2;
      if (v16 <= 1)
      {
        *a2 = v16 + 1;
        v17 = (result + 16 * v16);
        *v17 = v14;
        v17[1] = v15;
      }

      v18 = a2[3];
      if (v18 <= 1)
      {
        if (*(v9 + v11) != a5)
        {
          v14 = -v14;
          v15 = -v15;
        }

        a2[3] = v18 + 1;
        v19 = v8 + 16 * v18;
        *(v19 + 4) = v14;
        *(v19 + 6) = v15;
      }
    }

    else if (a6 >> 8 == v11)
    {
      v20 = a2[1];
      if (v20 <= 1)
      {
        a2[1] = v20 + 1;
        v21 = result + 16 * v20;
        *(v21 + 4) = v14;
        *(v21 + 6) = v15;
      }

      v22 = a2[2];
      if (v22 <= 1)
      {
        if (*(v9 + v11) != a4)
        {
          v14 = -v14;
          v15 = -v15;
        }

        a2[2] = v22 + 1;
        v23 = (v8 + 16 * v22);
        *v23 = v14;
        v23[1] = v15;
      }
    }

    else
    {
      v24 = a2[2];
      if (v24 <= 1)
      {
        a2[2] = v24 + 1;
        v25 = *(v9 + v11);
        v26 = (v8 + 16 * v24);
        v27 = v25 == a4;
        if (v25 == a4)
        {
          v28 = v14;
        }

        else
        {
          v28 = -v14;
        }

        if (v27)
        {
          v29 = v15;
        }

        else
        {
          v29 = -v15;
        }

        *v26 = v28;
        v26[1] = v29;
      }

      v30 = a2[3];
      if (v30 <= 1)
      {
        a2[3] = v30 + 1;
        v31 = v8 + 16 * v30;
        if (*(v9 + v11) == a5)
        {
          *(v31 + 4) = v14;
          *(v31 + 6) = v15;
        }

        else
        {
          *(v31 + 4) = -v14;
          *(v31 + 6) = -v15;
        }
      }
    }

    v10 = 0;
    v7 = 1;
  }

  while ((v12 & 1) != 0);
  return result;
}

int *sub_27759FE74(int *result, _DWORD *a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = *(a3 + 8 + v5);
    if (v8 < 1)
    {
      break;
    }

    v9 = (a3 + 4 * v5);
    v10 = *v9;
    v11 = *(a5 + (v8 - 1));
    v12 = v9[1];
    v13 = v11 == a4;
    if (v11 == a4)
    {
      LOWORD(v14) = v10;
    }

    else
    {
      v14 = -v10;
    }

    if (v13)
    {
      LOWORD(v15) = v12;
    }

    else
    {
      v15 = -v12;
    }

    v16 = *a2;
    if (v16 < 1)
    {
      LODWORD(v17) = 0;
    }

    else
    {
      v17 = 0;
      v18 = result;
      while (1)
      {
        v19 = *v18;
        v18 += 4;
        if ((v14 | (v15 << 16)) == v19)
        {
          break;
        }

        if (v16 == ++v17)
        {
          goto LABEL_16;
        }
      }
    }

    if (v17 == v16)
    {
LABEL_16:
      v20 = &result[4 * v16];
      *v20 = v14;
      *(v20 + 1) = v15;
      v20[2] = 2;
      *a2 = v16 + 1;
    }

    v6 = 0;
    v5 = 1;
  }

  while ((v7 & 1) != 0);
  return result;
}

uint64_t *sub_27759FF20(uint64_t *result, uint64_t *a2, int a3, int a4, int a5)
{
  do
  {
    v6 = *result++;
    v5 = v6;
    if (a4 >= 1)
    {
      v7 = v5 + 12 * a3;
      v8 = a4;
      do
      {
        v9 = *a2;
        *(v7 + 8) = *(a2 + 2);
        *v7 = v9;
        v7 += 12;
        --v8;
      }

      while (v8);
    }

    --a5;
  }

  while (a5);
  return result;
}

void sub_27759FF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  if (a8 < a6)
  {
    v8 = a8;
    v29 = 5 * a2;
    do
    {
      if (a7 < a5)
      {
        v12 = *(a3 + 16 * (v8 & 0xF));
        v13 = a7;
        do
        {
          v14 = (v12 + 12 * ((2 * v13) | 1));
          v15 = (byte_277601B40[4 * *(v14 + 10)] + 1) >> 1;
          v16 = *(v14 + 9);
          if (v16 >= 1 && *(a4 + (v16 - 1)) && (v17.i32[0] = v14[2], v17.i32[1] = v14[3], v18 = vabs_s32(v17), vorr_s8(vdup_lane_s32(v18, 1), v18).u32[0] <= 0xFFF))
          {
            if (byte_277601B40[4 * *(v14 + 10)])
            {
              v19 = 5 * v13;
              v13 += v15;
              do
              {
                v20 = a1 + v19;
                v21 = *(v14 + 9);
                *v20 = *(v14 + 1);
                *(v20 + 4) = v21;
                v19 += 5;
                --v15;
              }

              while (v15);
            }
          }

          else
          {
            v22 = *(v14 + 8);
            if (v22 >= 1 && *(a4 + (v22 - 1)) && (v23.i32[0] = *v14, v23.i32[1] = v14[1], v24 = vabs_s32(v23), vorr_s8(vdup_lane_s32(v24, 1), v24).u32[0] <= 0xFFF))
            {
              if (byte_277601B40[4 * *(v14 + 10)])
              {
                v25 = 5 * v13;
                v13 += v15;
                do
                {
                  v26 = a1 + v25;
                  v27 = *(v14 + 8);
                  *v26 = *v14;
                  *(v26 + 4) = v27;
                  v25 += 5;
                  --v15;
                }

                while (v15);
              }
            }

            else if (byte_277601B40[4 * *(v14 + 10)])
            {
              bzero((a1 + 5 * v13), 5 * (v15 - 1) + 5);
              v13 += v15;
            }
          }
        }

        while (v13 < a5);
      }

      a1 += v29;
      ++v8;
    }

    while (v8 != a6);
  }
}

uint64_t sub_2775A0158(uint64_t result, int a2, int a3, int a4, int a5, int a6)
{
  if (*(result + 212) == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v8 = *(result + 16);
  v7 = *(result + 20);
  if (a6 < v7)
  {
    v7 = a6;
  }

  if (a3 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = a3;
  }

  if (a4 + 8 < v8)
  {
    v8 = a4 + 8;
  }

  v10 = v6;
  v12 = *(result + 176);
  v11 = *(result + 184);
  v68 = 5 * v11;
  if (v7 > a5)
  {
    v13 = a4 - a3;
    v14 = (v13 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v13 - 1);
    v16 = 5 * a3 + v11 * (5 * (a5 & 0xF) + 80 * v10) + v12 + 10;
    v17 = a5;
    do
    {
      if (a3 < a4)
      {
        v18 = 0;
        v19 = v16;
        do
        {
          v20 = vdupq_n_s64(v18);
          v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_2775ED490)));
          if (vuzp1_s16(v21, *v15.i8).u8[0])
          {
            *(v19 - 10) = -2147450880;
          }

          if (vuzp1_s16(v21, *&v15).i8[2])
          {
            *(v19 - 5) = -2147450880;
          }

          if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_2775ED480)))).i32[1])
          {
            *v19 = -2147450880;
            *(v19 + 5) = -2147450880;
          }

          v18 += 4;
          v19 += 5;
        }

        while (v14 != v18);
      }

      ++v17;
      v16 += v68;
    }

    while (v17 != v7);
    v12 = *(result + 176);
  }

  v22 = *(result + 152);
  if (v22 >= 1)
  {
    v23 = 0;
    v24 = v9 - 8;
    v25 = result + 56;
    v64 = result + 53;
    v65 = result + 56;
    v63 = result + 68;
    v26 = 80 * v10;
    v66 = result;
    do
    {
      v27 = *(v25 + 4 * v23);
      if (v27 != 0x80000000 && v7 > a5)
      {
        v28 = *(v64 + v23) - 4;
        v29 = *(*(result + 168) + 8 * *(v64 + v23)) + 5 * v11 * a5;
        v67 = v23;
        v30 = v63 + 28 * v23;
        v31 = a5;
        do
        {
          if ((v31 & 0x7FFFFFF8) <= a5)
          {
            v32 = a5;
          }

          else
          {
            v32 = v31 & 0x7FFFFFF8;
          }

          if ((v31 & 0x7FFFFFF8) + 8 >= v7)
          {
            v33 = v7;
          }

          else
          {
            v33 = (v31 & 0x7FFFFFF8) + 8;
          }

          v34 = v24;
          if (v24 < v8)
          {
            do
            {
              v35 = v29 + 5 * v34;
              v36 = *(v35 + 4);
              if (*(v35 + 4) && (v37 = *(v30 + 4 * v36 - 4), v37))
              {
                v38 = *v35;
                v39 = v27 * word_2775EF440[v37];
                v40 = (v39 * v38 + ((v39 * v38) >> 31) + 0x2000) >> 14;
                if (v40 >= 0x3FFF)
                {
                  v40 = 0x3FFF;
                }

                if (v40 <= -16383)
                {
                  v40 = -16383;
                }

                if (v40 >= 0)
                {
                  v41 = v40;
                }

                else
                {
                  v41 = -v40;
                }

                v42 = v41 >> 6;
                if ((v40 ^ v28) >= 0)
                {
                  v43 = v42;
                }

                else
                {
                  v43 = -v42;
                }

                v44 = v43 + v31 >= v32 && v43 + v31 < v33;
                v45 = 5 * v34;
                if (v44)
                {
                  v50 = 0;
                  v51 = (v39 * (v38 >> 16) + ((v39 * (v38 >> 16)) >> 31) + 0x2000) >> 14;
                  if (v51 >= 0x3FFF)
                  {
                    v51 = 0x3FFF;
                  }

                  if (v51 <= -16383)
                  {
                    v51 = -16383;
                  }

                  v52 = v51 ^ v28;
                  if (v51 < 0)
                  {
                    v51 = -v51;
                  }

                  v53 = v51 >> 6;
                  if (v52 < 0)
                  {
                    v53 = -v53;
                  }

                  v54 = (v53 + v34);
                  if (v8 <= (v34 + 1))
                  {
                    v55 = v34 + 1;
                  }

                  else
                  {
                    v55 = v8;
                  }

                  v47 = v55 - 1;
                  v56 = v12 + 5 * v54 + v11 * (v26 + 5 * ((v31 + v43) & 0xF));
                  v57 = v29 + v45;
                  while (1)
                  {
                    v48 = v34;
                    v58 = v34 & 0xFFFFFFF8;
                    v59 = v58 - 8;
                    if ((v58 - 8) <= a3)
                    {
                      v59 = a3;
                    }

                    if (v54 >= v59)
                    {
                      v60 = v58 + 16;
                      if ((v58 + 16) >= a4)
                      {
                        v60 = a4;
                      }

                      if (v54 < v60)
                      {
                        v61 = v56 + v50;
                        *v61 = v38;
                        *(v61 + 4) = v37;
                      }
                    }

                    if ((v48 + 1) >= v8)
                    {
                      break;
                    }

                    if (*(v57 + v50 + 9) == v36)
                    {
                      v62 = *(v57 + v50 + 5);
                      ++v54;
                      v50 += 5;
                      v34 = v48 + 1;
                      if (v62 == v38)
                      {
                        continue;
                      }
                    }

                    goto LABEL_61;
                  }
                }

                else
                {
                  if (v8 <= (v34 + 1))
                  {
                    v46 = v34 + 1;
                  }

                  else
                  {
                    v46 = v8;
                  }

                  v47 = v46 - 1;
                  while ((v34 + 1) < v8)
                  {
                    v48 = v34;
                    if (*(v29 + v45 + 9) == v36)
                    {
                      v49 = *(v29 + v45 + 5);
                      v45 += 5;
                      ++v34;
                      if (v49 == v38)
                      {
                        continue;
                      }
                    }

                    goto LABEL_61;
                  }
                }

                v48 = v47;
              }

              else
              {
                v48 = v34;
              }

LABEL_61:
              v34 = v48 + 1;
            }

            while ((v48 + 1) < v8);
          }

          v29 += v68;
          ++v31;
        }

        while (v31 != v7);
        result = v66;
        v23 = v67;
        v22 = *(v66 + 152);
        v25 = v65;
      }

      ++v23;
    }

    while (v23 < v22);
  }

  return result;
}

uint64_t sub_2775A05A0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  v4 = result;
  v116 = *(result + 8);
  v5 = v116[542];
  v6 = v5 != 3;
  v7 = &byte_277601B40[4 * a2];
  v8 = *v7;
  if (v5 == 3)
  {
    v9 = *v7;
  }

  else
  {
    v9 = v8 + 1;
  }

  v10 = *(result + 24);
  v11 = *(result + 28);
  v101 = v10 & 0x1F;
  v107 = v101 >> v6;
  v112 = v5 == 1;
  v98 = v11 & 0x1F;
  v96 = v98 >> v112;
  v12 = v7[1];
  if (v5 == 1)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = v7[1];
  }

  v115 = v5 != 3;
  if (!v5 || (v8 <= v6 ? (v14 = (*(result + 24) & 1) == 0) : (v14 = 0), v14))
  {
    v89 = 0;
  }

  else
  {
    if (v12 <= v112)
    {
      v15 = *(result + 28) & 1;
    }

    else
    {
      v15 = 1;
    }

    v89 = v15;
  }

  if (!*(a3 + 6))
  {
    v16 = *(result + 16);
    if (v8 >= v116[862] - v10)
    {
      v17 = v116[862] - v10;
    }

    else
    {
      v17 = v8;
    }

    if (v12 >= v116[863] - v11)
    {
      v18 = v116[863] - v11;
    }

    else
    {
      v18 = v12;
    }

    v19 = 10;
    if (!*(a3 + 3))
    {
      v19 = 26;
    }

    v20 = *(a3 + v19);
    v21 = *(a3 + 7);
    v121[0] = *(a3 + 29);
    v121[1] = *(a3 + 30);
    if (v18 < 1)
    {
      return result;
    }

    v22 = 0;
    v87 = (v17 + v115) >> v115;
    v109 = &unk_277601B98 + 8 * v21;
    v84 = (v18 + v112) >> v112;
    v102 = &unk_277601B98 + 8 * v20;
    v103 = result + 64;
    v104 = result + 9344;
    v92 = result + 96;
    v88 = v17;
    v85 = v18;
LABEL_33:
    if (v18 >= (v22 + 16))
    {
      v23 = v22 + 16;
    }

    else
    {
      v23 = v18;
    }

    v95 = v23;
    v86 = v22 + 16;
    if (v17 < 1)
    {
      goto LABEL_130;
    }

    v24 = 0;
    v90 = v22 != 0;
    v25 = v84;
    if (v84 >= ((v22 + 16) >> v112))
    {
      v25 = (v22 + 16) >> v112;
    }

    v93 = v22 >> v112;
    v94 = v22;
    v97 = v25;
LABEL_40:
    v91 = v24 + 16;
    if (v17 >= (v24 + 16))
    {
      v26 = v24 + 16;
    }

    else
    {
      v26 = v17;
    }

    *(v4 + 28) = v11 + v22;
    v100 = v24;
    v105 = v24 != 0;
    v110 = v90;
    v27 = v22;
LABEL_44:
    *(v4 + 24) = v10 + v100;
    v28 = v27;
    v29 = v27 + v98;
    v30 = v100;
    v31 = v105;
    while (1)
    {
      v32 = v30;
      if (v3[3])
      {
        break;
      }

      result = sub_2775A1278(v4, a2, v3, v3[26], 0, v121, v31, v110, 0);
      v35 = *v102;
LABEL_82:
      v30 = v32 + v35;
      v42 = *(v4 + 24);
      *(v4 + 24) = v42 + v35;
      ++v31;
      if ((v32 + v35) >= v26)
      {
        v43 = *(v4 + 28);
        v10 = v42 - v32;
        v44 = v102[1];
        v27 = v28 + v44;
        *(v4 + 24) = v10;
        *(v4 + 28) = v43 + v44;
        ++v110;
        if ((v28 + v44) >= v95)
        {
          v11 = v43 - v28;
          *(v4 + 28) = v11;
          if (v89)
          {
            v108 = 0;
            LOBYTE(v45) = v115;
            v46 = v91 >> v115;
            if (v87 < (v91 >> v115))
            {
              v46 = v87;
            }

            v111 = v46;
            v47 = v100 >> v115;
            v48 = v97;
            while (1)
            {
              v49 = v108;
              v50 = v93;
              v51 = v11 + v94;
              *(v4 + 28) = v51;
              ++v108;
              if (v93 < v48)
              {
                break;
              }

LABEL_128:
              v11 = v51 - (v50 << v112);
              *(v4 + 28) = v11;
              if (v49)
              {
                goto LABEL_129;
              }
            }

            v52 = v92 + 32 * v49;
            while (1)
            {
              v53 = v10 + v100;
              *(v4 + 24) = v53;
              if (v47 < v111)
              {
                break;
              }

              v60 = v109[1];
              v55 = v47;
LABEL_127:
              v10 = v53 - (v55 << v45);
              v50 += v60;
              v51 += v60 << v112;
              *(v4 + 24) = v10;
              *(v4 + 28) = v51;
              if (v50 >= v48)
              {
                goto LABEL_128;
              }
            }

            v106 = v101 | (32 * ((v50 << v112) + v98));
            v99 = v50;
            v54 = (v50 + v96);
            v55 = v47;
            while (2)
            {
              v118 = 64;
              v117 = 0;
              v56 = *(a3 + 3);
              if (!*(a3 + 3))
              {
                v117 = *(v104 + v106 + (v55 << v45));
              }

              v57 = (v55 + v107);
              result = sub_2775A1C6C(v4, (*(v4 + 656) + 32 * v49 + v57 + 64), (v52 + v54), *(a3 + 7), a2, a3, v56, v108, *(v16 + 13936), &v117, &v118);
              v58 = *(v16 + 13928);
              *v58 = v117 + 32 * result;
              *(v16 + 13928) = v58 + 1;
              v59 = *v109;
              v60 = v109[1];
              *(v16 + 13936) += 32 * *v109 * v109[1];
              v61 = (v116[863] + v112 - *(v4 + 28)) >> v112;
              if (v60 < v61)
              {
                v61 = v60;
              }

              v62 = v118;
              if (v61 <= 3)
              {
                if (v61 == 1)
                {
                  *(v52 + v54) = v118;
                  goto LABEL_108;
                }

                v45 = v115;
                if (v61 != 2)
                {
                  goto LABEL_107;
                }

                *(v52 + v54) = v118 | (v118 << 8);
              }

              else
              {
                if (v61 == 4)
                {
                  *(v52 + v54) = 16843009 * v118;
                  goto LABEL_108;
                }

                v45 = v115;
                if (v61 == 8)
                {
                  *(v52 + v54) = 0x101010101010101 * v118;
                }

                else
                {
                  if (v61 == 16)
                  {
                    *(v52 + v54) = 0x101010101010101 * v118;
                    *(v52 + (v54 + 8)) = 0x101010101010101 * v62;
                    goto LABEL_109;
                  }

LABEL_107:
                  result = memset((v52 + v54), v118, v61);
LABEL_108:
                  v45 = v115;
                }
              }

LABEL_109:
              v63 = (v116[862] + v45 - *(v4 + 24)) >> v45;
              if (v59 < v63)
              {
                v63 = v59;
              }

              if (v63 <= 3)
              {
                if (v63 == 1)
                {
                  *(*(v4 + 656) + 32 * v49 + v57 + 64) = v62;
                }

                else
                {
                  if (v63 != 2)
                  {
                    goto LABEL_123;
                  }

                  *(*(v4 + 656) + 32 * v49 + v57 + 64) = v62 | (v62 << 8);
                }
              }

              else
              {
                switch(v63)
                {
                  case 4:
                    *(*(v4 + 656) + 32 * v49 + v57 + 64) = 16843009 * v62;
                    break;
                  case 8:
                    v64 = 0x101010101010101 * v62;
                    v65 = *(v4 + 656) + 32 * v49 + v57;
LABEL_121:
                    *(v65 + 64) = v64;
                    break;
                  case 16:
                    v64 = 0x101010101010101 * v62;
                    *(*(v4 + 656) + 32 * v49 + v57 + 64) = 0x101010101010101 * v62;
                    v65 = *(v4 + 656) + 32 * v49 + (v57 + 8);
                    goto LABEL_121;
                  default:
LABEL_123:
                    result = memset((*(v4 + 656) + 32 * v49 + v57 + 64), v62, v63);
                    LOBYTE(v45) = v115;
                    break;
                }
              }

              v55 += v59;
              v53 = *(v4 + 24) + (v59 << v45);
              *(v4 + 24) = v53;
              if (v55 >= v111)
              {
                v51 = *(v4 + 28);
                v47 = v100 >> v115;
                v48 = v97;
                v50 = v99;
                goto LABEL_127;
              }

              continue;
            }
          }

LABEL_129:
          v17 = v88;
          v24 = v91;
          v3 = a3;
          v22 = v94;
          if (v91 >= v88)
          {
LABEL_130:
            v18 = v85;
            v22 = v86;
            if (v86 >= v85)
            {
              return result;
            }

            goto LABEL_33;
          }

          goto LABEL_40;
        }

        goto LABEL_44;
      }
    }

    v120 = 64;
    v119 = 0;
    v33 = v30 + v101;
    result = sub_2775A1C6C(v4, (*(v4 + 656) + v33 + 32), (v103 + v29), v3[10], a2, v3, 1, 0, *(v16 + 13936), &v119, &v120);
    v34 = *(v16 + 13928);
    *v34 = v119 + 32 * result;
    *(v16 + 13928) = v34 + 1;
    v35 = *v102;
    if (v35 >= 8)
    {
      v36 = 8;
    }

    else
    {
      v36 = *v102;
    }

    v37 = v102[1];
    if (v37 >= 8)
    {
      v38 = 8;
    }

    else
    {
      v38 = v102[1];
    }

    *(v16 + 13936) += 2 * (16 * v36 * v38);
    v39 = v116[863] - *(v4 + 28);
    if (v37 < v39)
    {
      v39 = v37;
    }

    v40 = v120;
    if (v39 <= 3)
    {
      if (v39 == 1)
      {
        *(v103 + v29) = v120;
        goto LABEL_67;
      }

      if (v39 == 2)
      {
        *(v103 + v29) = v120 | (v120 << 8);
        goto LABEL_67;
      }
    }

    else
    {
      switch(v39)
      {
        case 4:
          *(v103 + v29) = 16843009 * v120;
          goto LABEL_67;
        case 8:
          *(v103 + v29) = 0x101010101010101 * v120;
          goto LABEL_67;
        case 16:
          *(v103 + v29) = 0x101010101010101 * v120;
          *(v103 + v29 + 8) = 0x101010101010101 * v40;
          goto LABEL_67;
      }
    }

    result = memset((v103 + v29), v120, v39);
LABEL_67:
    v41 = v116[862] - *(v4 + 24);
    if (v35 < v41)
    {
      v41 = v35;
    }

    if (v41 <= 3)
    {
      if (v41 == 1)
      {
        *(*(v4 + 656) + v33 + 32) = v40;
        goto LABEL_81;
      }

      if (v41 == 2)
      {
        *(*(v4 + 656) + v33 + 32) = v40 | (v40 << 8);
        goto LABEL_81;
      }
    }

    else
    {
      switch(v41)
      {
        case 4:
          *(*(v4 + 656) + v33 + 32) = 16843009 * v40;
          goto LABEL_81;
        case 8:
          *(*(v4 + 656) + v33 + 32) = 0x101010101010101 * v40;
          goto LABEL_81;
        case 16:
          *(*(v4 + 656) + v33 + 32) = 0x101010101010101 * v40;
          *(*(v4 + 656) + v33 + 40) = 0x101010101010101 * v40;
LABEL_81:
          v3 = a3;
          goto LABEL_82;
      }
    }

    result = memset((*(v4 + 656) + v33 + 32), v40, v41);
    goto LABEL_81;
  }

  if (v12 > 7)
  {
    switch(v12)
    {
      case 8:
        *(result + v98 + 64) = 0x4040404040404040;
        break;
      case 16:
        *&v67 = 0x4040404040404040;
        *(&v67 + 1) = 0x4040404040404040;
        *(result + v98 + 64) = v67;
        break;
      case 32:
        *&v66 = 0x4040404040404040;
        *(&v66 + 1) = 0x4040404040404040;
        *(result + 64 + v98) = v66;
        *(result + 64 + (v11 & 0x1F) + 16) = v66;
        break;
    }
  }

  else
  {
    switch(v12)
    {
      case 1:
        *(result + v98 + 64) = 64;
        break;
      case 2:
        *(result + v98 + 64) = 16448;
        break;
      case 4:
        *(result + v98 + 64) = 1077952576;
        break;
    }
  }

  if (v8 > 7)
  {
    switch(v8)
    {
      case 8:
        *(*(result + 656) + v101 + 32) = 0x4040404040404040;
        break;
      case 16:
        memset((*(result + 656) + (v10 & 0x1F) + 32), 64, 16);
        break;
      case 32:
        memset((*(result + 656) + (v10 & 0x1F) + 32), 64, 32);
        break;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        *(*(result + 656) + v101 + 32) = 64;
        break;
      case 2:
        *(*(result + 656) + v101 + 32) = 16448;
        break;
      case 4:
        *(*(result + 656) + v101 + 32) = 1077952576;
        break;
    }
  }

  if (v89)
  {
    v68 = v9 >> v6;
    v69 = v13 >> v112;
    if ((v13 >> v112) > 7)
    {
      switch(v69)
      {
        case 8u:
          v76 = result + v96;
          *(v76 + 96) = 0x4040404040404040;
          *(v76 + 128) = 0x4040404040404040;
          break;
        case 0x10u:
          *&v78 = 0x4040404040404040;
          *(&v78 + 1) = 0x4040404040404040;
          v79 = result + v96;
          *(v79 + 96) = v78;
          *(v79 + 128) = v78;
          break;
        case 0x20u:
          v71 = result + 96;
          *&v72 = 0x4040404040404040;
          *(&v72 + 1) = 0x4040404040404040;
          *(v71 + v96) = v72;
          v73 = v96 + 16;
          *(v71 + v73) = v72;
          v74 = result + 128;
          *(v74 + v96) = v72;
          *(v74 + v73) = v72;
          break;
      }
    }

    else
    {
      switch(v69)
      {
        case 1u:
          v75 = result + v96;
          *(v75 + 96) = 64;
          *(v75 + 128) = 64;
          break;
        case 2u:
          v77 = result + v96;
          *(v77 + 96) = 16448;
          *(v77 + 128) = 16448;
          break;
        case 4u:
          v70 = result + v96;
          *(v70 + 96) = 1077952576;
          *(v70 + 128) = 1077952576;
          break;
      }
    }

    if (v68 > 7)
    {
      if (v68 == 8)
      {
        v82 = v101 >> v6;
        *(*(result + 656) + v107 + 64) = 0x4040404040404040;
      }

      else
      {
        if (v68 == 16)
        {
          *(*(result + 656) + v107 + 64) = 0x4040404040404040;
          v82 = v107 + 8;
          *(*(result + 656) + v82 + 64) = 0x4040404040404040;
          v83 = *(result + 656) + v107;
        }

        else
        {
          if (v68 != 32)
          {
            return result;
          }

          *(*(result + 656) + v107 + 64) = 0x4040404040404040;
          v80 = v107 + 8;
          *(*(result + 656) + v80 + 64) = 0x4040404040404040;
          v81 = v107 + 16;
          *(*(result + 656) + v81 + 64) = 0x4040404040404040;
          v82 = v107 + 24;
          *(*(result + 656) + v82 + 64) = 0x4040404040404040;
          *(*(result + 656) + v107 + 96) = 0x4040404040404040;
          *(*(result + 656) + v80 + 96) = 0x4040404040404040;
          v83 = *(result + 656) + v81;
        }

        *(v83 + 96) = 0x4040404040404040;
      }

      *(*(result + 656) + v82 + 96) = 0x4040404040404040;
    }

    else
    {
      switch(v68)
      {
        case 1:
          *(*(result + 656) + v107 + 64) = 64;
          *(*(result + 656) + v107 + 96) = 64;
          break;
        case 2:
          *(*(result + 656) + v107 + 64) = 16448;
          *(*(result + 656) + v107 + 96) = 16448;
          break;
        case 4:
          *(*(result + 656) + v107 + 64) = 1077952576;
          *(*(result + 656) + v107 + 96) = 1077952576;
          break;
      }
    }
  }

  return result;
}