__n64 sub_2773A847C(int a1, uint64_t a2, __n64 *a3)
{
  v199 = *MEMORY[0x277D85DE8];
  v197 = 0u;
  v198 = 0u;
  v195 = 0u;
  v196 = 0u;
  v5 = *(a2 + 16);
  v4 = *(a2 + 20);
  v6 = *(a2 + 64);
  v7 = sub_2773A3768(a1, a2, &v197, &v195);
  v9 = v197;
  v10 = v198;
  v11 = (v197 + v5);
  v12 = (v198 + v5);
  v13 = (*(&v198 + 1) + v5);
  v14.i64[0] = *v197;
  if (v7)
  {
    v15 = *(v197 + v5);
    *&v197 = v197 + v4;
    v14.i64[1] = v15;
    v16.i64[0] = *v195;
    v16.i64[1] = *(v195 + v5);
    v17 = (v195 + v5 + v4);
    v18 = vrhaddq_u8(v14, v16);
    v19.i64[0] = *v198;
    v16.i64[0] = *(v198 + v5);
    *&v198 = v198 + v4;
    v19.i64[1] = v16.i64[0];
    v16.i64[0] = *v196;
    v20 = (v196 + v5 + v4);
    v16.i64[1] = *(v196 + v5);
    v21 = vrhaddq_u8(v19, v16);
    v19.i64[0] = **(&v10 + 1);
    v22 = *(*(&v10 + 1) + v5);
    *(&v198 + 1) = *(&v10 + 1) + v4;
    v19.i64[1] = v22;
    v23 = (v13 + v4);
    v24.i64[0] = **(&v196 + 1);
    v24.i64[1] = *(*(&v196 + 1) + v5);
    v25 = (*(&v196 + 1) + v5 + v4);
    v26 = vrhaddq_u8(v19, v24);
    v27 = *v6;
    v28 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v18, *v6))));
    v29 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v21, *v6))));
    v30 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v26, *v6))));
    v31.i64[0] = *(v9 + v4);
    v32 = *(v11 + v4);
    *&v197 = v9 + v4 + v4;
    v33 = (v11 + v4 + v4);
    v31.i64[1] = v32;
    v34.i64[0] = *(v195 + v4);
    v35 = (v195 + v4 + v4);
    v36 = v17 + v4;
    v34.i64[1] = *v17;
    v37 = vrhaddq_u8(v31, v34);
    v38 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(vextq_s8(v18, v37, 8uLL), v27))));
    v27.i64[0] = *v198;
    v34.i64[0] = *(v12 + v4);
    *&v198 = v198 + v4;
    v27.i64[1] = v34.i64[0];
    v34.i64[0] = *(v196 + v4);
    v34.i64[1] = *v20;
    v39 = vrhaddq_u8(v27, v34);
    v27.i64[0] = *(*(&v10 + 1) + v4);
    v40 = *v23;
    *(&v198 + 1) = *(&v10 + 1) + v4 + v4;
    v27.i64[1] = v40;
    v41.i64[0] = *(*(&v196 + 1) + v4);
    v41.i64[1] = *v25;
    v42 = vrhaddq_u8(v27, v41);
    v43 = v6[1];
    v44 = v6[2];
    v45 = (v196 + v4 + v4);
    v46 = v20 + v4;
    v47 = (v23 + v4);
    v48 = (*(&v196 + 1) + v4 + v4);
    v49 = (v25 + v4);
    v50 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v37, v43)))), v28);
    v51 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v39, v43)))), v29);
    v52 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v42, v43)))), v30);
    v39.i64[0] = *v197;
    v42.i64[0] = *v33;
    v53 = (v197 + v4);
    *&v197 = v53;
    v39.i64[1] = v42.i64[0];
    v54 = vrhaddq_u8(v39, *v35);
    v55 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(vextq_s8(v37, v54, 8uLL), v43)))), v38);
    v38.i64[0] = *v198;
    v38.i64[1] = *(v12 + v4 + v4);
    *&v198 = v198 + v4;
    v43.i64[0] = *v45;
    v43.i64[1] = *(v20 + v4);
    v56 = vrhaddq_u8(v38, v43);
    v43.i64[0] = **(&v198 + 1);
    v42.i64[0] = *v47;
    *(&v198 + 1) += v4;
    v43.i64[1] = v42.i64[0];
    v42.i64[0] = *v48;
    v42.i64[1] = *v49;
    v57 = (v35->i64 + v4);
    v58 = &v36[v4];
    v59 = (v12 + v4 + v4 + v4);
    v60 = (v49 + v4);
    v61 = vaddq_s32(v50, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v54, v44)))));
    v62 = vaddq_s32(v51, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v56, v44)))));
    v63 = vaddq_s32(v52, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(vrhaddq_u8(v43, v42), v44)))));
    v56.i64[0] = *v53;
    v43.i64[0] = *(v33 + v4);
    *&v197 = v53 + v4;
    v56.i64[1] = v43.i64[0];
    v43.i64[0] = *v57;
    v43.i64[1] = *&v36[v4];
    v64 = vrhaddq_u8(v56, v43);
    v65 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(vextq_s8(v54, v64, 8uLL), v44))));
    v43.i64[0] = *v198;
    v54.i64[0] = *v59;
    *&v198 = v198 + v4;
    v43.i64[1] = v54.i64[0];
    v54.i64[0] = *(v45 + v4);
    v54.i64[1] = *&v46[v4];
    v66 = vaddq_s32(v55, v65);
    v67 = vrhaddq_u8(v43, v54);
    v65.i64[0] = **(&v198 + 1);
    v65.i64[1] = *(v47 + v4);
    *(&v198 + 1) += v4;
    v54.i64[0] = *(v48 + v4);
    v54.i64[1] = *v60;
    v68 = vrhaddq_u8(v65, v54);
    v69 = v6[3];
    v70 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v64, v69))));
    v71 = (v33 + v4 + v4);
    v72 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v67, v69))));
    v73 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v68, v69))));
    v44.i64[0] = *(v53 + v4);
    v74 = *v71;
    *&v197 = v53 + v4 + v4;
    v44.i64[1] = v74;
    v75.i64[0] = *(v57 + v4);
    v75.i64[1] = *&v58[v4];
    v76 = vrhaddq_u8(v44, v75);
    v77 = (v45 + v4 + v4);
    v78 = &v46[v4 + v4];
    v79 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(vextq_s8(v64, v76, 8uLL), v69))));
    v69.i64[0] = *v198;
    v75.i64[0] = *(v59 + v4);
    *&v198 = v198 + v4;
    v69.i64[1] = v75.i64[0];
    v75.i64[0] = *v77;
    v75.i64[1] = *v78;
    v80 = (v47 + v4 + v4);
    v81 = vrhaddq_u8(v69, v75);
    v69.i64[0] = **(&v198 + 1);
    v69.i64[1] = *v80;
    v82 = (v48 + v4 + v4);
    *(&v198 + 1) += v4;
    v75.i64[0] = *v82;
    v75.i64[1] = *(v60 + v4);
    v83 = vrhaddq_u8(v69, v75);
    v84 = v6[8];
    v85 = v6[9];
    v86 = (v71 + v4);
    v87 = (v57 + v4 + v4);
    v88 = &v58[v4 + v4];
    v89 = (v59 + v4 + v4);
    v90 = (v77 + v4);
    v91 = (v78 + v4);
    v92 = (v80 + v4);
    v93 = (v82 + v4);
    v94 = v60 + v4 + v4;
    v95 = vaddq_s32(v70, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v76, v84)))));
    v96 = vaddq_s32(v72, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v81, v84)))));
    v97 = vaddq_s32(v73, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v83, v84)))));
    v81.i64[0] = *v197;
    v98 = (v86 + v4);
    v83.i64[0] = *v86;
    v99 = (v87->i64 + v4);
    *&v197 = v197 + v4;
    v81.i64[1] = v83.i64[0];
    v100 = &v88[v4];
    v101 = vrhaddq_u8(v81, *v87);
    v102 = vaddq_s32(v79, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(vextq_s8(v76, v101, 8uLL), v84)))));
    v103 = (v198 + v4);
    v79.i64[0] = *v198;
    v104 = (v89 + v4);
    v84.i64[0] = *v89;
    *&v198 = v103;
    v83.i64[0] = *v90;
    v105 = (v91 + v4);
    v79.i64[1] = v84.i64[0];
    v83.i64[1] = *v91;
    v106 = vrhaddq_u8(v79, v83);
    v107 = (*(&v198 + 1) + v4);
    v84.i64[0] = **(&v198 + 1);
    v83.i64[0] = *v92;
    *(&v198 + 1) = v107;
    v84.i64[1] = v83.i64[0];
    v108 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v106, v85))));
    v109 = vaddq_s32(v61, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v101, v85)))));
    v110 = vaddq_s32(v62, v108);
    v111 = vaddq_s32(v63, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(vrhaddq_u8(v84, *v93), v85)))));
    v112 = (v197 + v4);
    v63.i64[0] = *v197;
    v63.i64[1] = *v98;
    *&v197 = v112;
    v84.i64[0] = *v99;
    v84.i64[1] = *v100;
    v113 = vrhaddq_u8(v63, v84);
    v114 = vaddq_s32(v66, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(vextq_s8(v101, v113, 8uLL), v85)))));
    v66.i64[0] = *v103;
    v85.i64[0] = *v104;
    *&v198 = v103 + v4;
    v66.i64[1] = v85.i64[0];
    v85.i64[0] = *(v90 + v4);
    v85.i64[1] = *v105;
    v115 = vrhaddq_u8(v66, v85);
    v66.i64[0] = *v107;
    v101.i64[0] = *(v92 + v4);
    *(&v198 + 1) = v107 + v4;
    v66.i64[1] = v101.i64[0];
    v101.i64[0] = *(v93->i64 + v4);
    v101.i64[1] = *&v94[v4];
    v116 = vrhaddq_u8(v66, v101);
    v117 = v6[10];
    v118 = v6[11];
    v119 = vaddq_s32(v95, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v113, v117)))));
    v120 = vaddq_s32(v96, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v115, v117)))));
    v121 = vaddq_s32(v97, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v116, v117)))));
    v115.i64[0] = *(v98 + v4);
    v116.i64[0] = *v112;
    *&v197 = v112 + v4;
    v116.i64[1] = v115.i64[0];
    v108.i64[0] = *(v99 + v4);
    v108.i64[1] = *(v100 + v4);
    v122 = vrhaddq_u8(v116, v108);
    v123 = vaddq_s32(v102, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(vextq_s8(v113, v122, 8uLL), v117)))));
    v117.i64[0] = *(v103 + v4);
    v117.i64[1] = *(v104 + v4);
    v113.i64[0] = *(v90 + v4 + v4);
    v113.i64[1] = *(v105 + v4);
    v116.i64[0] = *(v107 + v4);
    v116.i64[1] = *(v92 + v4 + v4);
    v108.i64[0] = *(v93->i64 + v4 + v4);
    v124 = vrhaddq_u8(v117, v113);
    v108.i64[1] = *&v94[v4 + v4];
    v125 = vrhaddq_u8(v116, v108);
    v126 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v124, v118))));
    v127 = vaddq_s32(vaddq_s32(v109, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v122, v118))))), v119);
    v128 = vaddq_s32(vaddq_s32(v110, v126), v120);
    v129 = vaddq_s32(v111, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v125, v118)))));
    v130 = vaddq_s32(v129, v121);
    v129.i64[0] = *(v112 + v4);
    v120.i64[0] = *(v99 + v4 + v4);
    v131 = vaddq_s32(vaddq_s32(v114, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(vextq_s8(v122, vrhaddq_u8(v129, v120), 8uLL), v118))))), v123);
  }

  else
  {
    v8.i64[0] = *v11;
    *&v197 = v197 + v4;
    v132.i64[0] = *v198;
    v132.i64[1] = *v12;
    *&v198 = v198 + v4;
    v133 = *v6;
    v134 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(vzip1q_s64(v14, v8), *v6))));
    v135 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v132, *v6))));
    v136.i64[0] = *(v9 + v4);
    v8.i64[1] = v136.i64[0];
    v137 = vpaddlq_u16(vpaddlq_u8(vabdq_u8(v8, *v6)));
    *&v197 = v9 + v4 + v4;
    v138.i64[0] = **(&v10 + 1);
    v138.i64[1] = *v13;
    v139 = vpaddlq_u32(v137);
    v140 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v138, v133))));
    v141 = (v11 + v4);
    *(&v198 + 1) = *(&v10 + 1) + v4;
    v133.i64[0] = *v141;
    v136.i64[1] = *v141;
    v142.i64[0] = *(v10 + v4);
    v142.i64[1] = *(v12 + v4);
    *&v198 = v10 + v4 + v4;
    v144 = v6[1];
    v143 = v6[2];
    v145 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v136, v144)))), v134);
    v146 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v142, v144)))), v135);
    v136.i64[0] = *v197;
    v133.i64[1] = *v197;
    v147 = (v13 + v4);
    v148 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v133, v144)))), v139);
    *&v197 = v197 + v4;
    v133.i64[0] = *(*(&v10 + 1) + v4);
    v133.i64[1] = *v147;
    v149 = vpaddlq_u16(vpaddlq_u8(vabdq_u8(v133, v144)));
    v150 = (v141 + v4);
    *(&v198 + 1) = *(&v10 + 1) + v4 + v4;
    v144.i64[0] = *v150;
    v136.i64[1] = *v150;
    v151 = (v12 + v4 + v4);
    v142.i64[0] = *v198;
    v142.i64[1] = *v151;
    v152 = vaddq_s32(vpaddlq_u32(v149), v140);
    *&v198 = v198 + v4;
    v153 = vaddq_s32(v145, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v136, v143)))));
    v154 = vaddq_s32(v146, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v142, v143)))));
    v149.i64[0] = *v197;
    v144.i64[1] = *v197;
    v155 = (v147 + v4);
    *&v197 = v197 + v4;
    v156 = vaddq_s32(v148, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v144, v143)))));
    v148.i64[0] = **(&v198 + 1);
    v148.i64[1] = *v155;
    v157 = (v150 + v4);
    v158 = (v151 + v4);
    *(&v198 + 1) += v4;
    v159 = vaddq_s32(v152, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v148, v143)))));
    v143.i64[0] = *v157;
    v149.i64[1] = *v157;
    v144.i64[0] = *v198;
    v144.i64[1] = *v158;
    v160 = v6[3];
    v161 = (v157 + v4);
    v162 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v149, v160))));
    *&v198 = v198 + v4;
    v163 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v144, v160))));
    v142.i64[0] = *v197;
    v143.i64[1] = *v197;
    *&v197 = v197 + v4;
    v164 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v143, v160))));
    v144.i64[0] = **(&v198 + 1);
    v165 = *(v155 + v4);
    *(&v198 + 1) += v4;
    v166 = (v155 + v4 + v4);
    v144.i64[1] = v165;
    v167 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v144, v160))));
    v160.i64[0] = *v161;
    v168 = (v161 + v4);
    v142.i64[1] = *v161;
    v169.i64[0] = *v198;
    v170 = *(v158 + v4);
    *&v198 = v198 + v4;
    v171 = (v158 + v4 + v4);
    v169.i64[1] = v170;
    v172 = v6[8];
    v173 = v6[9];
    v174 = vaddq_s32(v162, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v142, v172)))));
    v175 = vaddq_s32(v163, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v169, v172)))));
    v142.i64[0] = *v197;
    *&v197 = v197 + v4;
    v160.i64[1] = v142.i64[0];
    v176 = vaddq_s32(v164, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v160, v172)))));
    v160.i64[0] = **(&v198 + 1);
    v169.i64[0] = *v166;
    v177 = (*(&v198 + 1) + v4);
    *(&v198 + 1) = v177;
    v178 = (v166 + v4);
    v160.i64[1] = v169.i64[0];
    v179 = vaddq_s32(v167, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v160, v172)))));
    v172.i64[0] = *v168;
    v142.i64[1] = *v168;
    v160.i64[0] = *v198;
    v180 = (v198 + v4);
    v169.i64[0] = *v171;
    *&v198 = v180;
    v160.i64[1] = v169.i64[0];
    v181 = vaddq_s32(v153, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v142, v173)))));
    v182 = vaddq_s32(v154, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v160, v173)))));
    v160.i64[0] = *v197;
    v183 = (v197 + v4);
    *&v197 = v183;
    v172.i64[1] = v160.i64[0];
    v184 = vaddq_s32(v156, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v172, v173)))));
    v156.i64[0] = *v177;
    v172.i64[0] = *v178;
    *(&v198 + 1) = v177 + v4;
    v156.i64[1] = v172.i64[0];
    v185 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v156, v173))));
    v156.i64[0] = *(v168 + v4);
    v160.i64[1] = v156.i64[0];
    v186 = vaddq_s32(v159, v185);
    v173.i64[0] = *v180;
    v173.i64[1] = *(v171 + v4);
    v187 = v6[10];
    v188 = v6[11];
    *&v198 = v180 + v4;
    v189 = vaddq_s32(v174, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v160, v187)))));
    v190 = vaddq_s32(v175, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v173, v187)))));
    v160.i64[0] = *v183;
    *&v197 = v183 + v4;
    v156.i64[1] = v160.i64[0];
    v191 = vaddq_s32(v176, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v156, v187)))));
    v156.i64[0] = *(v177 + v4);
    v156.i64[1] = *(v178 + v4);
    *(&v198 + 1) = v177 + v4 + v4;
    v192 = vaddq_s32(v179, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v156, v187)))));
    v156.i64[0] = *(v180 + v4);
    v156.i64[1] = *(v171 + v4 + v4);
    v187.i64[0] = *(v168 + v4 + v4);
    v160.i64[1] = v187.i64[0];
    v193 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v156, v188))));
    v127 = vaddq_s32(vaddq_s32(v181, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v160, v188))))), v189);
    v128 = vaddq_s32(vaddq_s32(v182, v193), v190);
    v187.i64[1] = *(v183 + v4);
    v131 = vaddq_s32(vaddq_s32(v184, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v187, v188))))), v191);
    v184.i64[0] = **(&v198 + 1);
    v184.i64[1] = *(v178 + v4 + v4);
    v130 = vaddq_s32(vaddq_s32(v186, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v184, v188))))), v192);
  }

  result.n64_u32[0] = vzip1_s16(vadd_s32(*v127.i8, *&vdupq_laneq_s32(v127, 2)), vadd_s32(*v131.i8, *&vdupq_laneq_s32(v131, 2))).u32[0];
  result.n64_u16[2] = vaddq_s32(v128, vdupq_laneq_s32(v128, 2)).u16[0];
  result.n64_u16[3] = vaddq_s32(v130, vdupq_laneq_s32(v130, 2)).u16[0];
  a3->n64_u64[0] = result.n64_u64[0];
  return result;
}

double sub_2773A90F8(int a1, uint64_t a2, void *a3)
{
  v115 = *MEMORY[0x277D85DE8];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v5 = *(a2 + 16);
  v4 = *(a2 + 20);
  v6 = *(a2 + 64);
  v7 = sub_2773A3768(a1, a2, &v113, &v111);
  v9 = v113;
  v10 = v114;
  v11 = (v113 + v5);
  v12 = (v114 + v5);
  v13 = (*(&v114 + 1) + v5);
  v14.i64[0] = *v113;
  if (v7)
  {
    v15 = *(v113 + v5);
    *&v113 = v113 + v4;
    v16 = (v11 + v4);
    v14.i64[1] = v15;
    v17.i64[0] = *v111;
    v18 = (v111 + v5 + v4);
    v17.i64[1] = *(v111 + v5);
    v19 = vrhaddq_u8(v14, v17);
    v20.i64[0] = *v114;
    v17.i64[0] = *(v114 + v5);
    *&v114 = v114 + v4;
    v21 = (v12 + v4);
    v20.i64[1] = v17.i64[0];
    v17.i64[0] = *v112;
    v22 = (v112 + v5 + v4);
    v17.i64[1] = *(v112 + v5);
    v23 = vrhaddq_u8(v20, v17);
    v20.i64[0] = **(&v10 + 1);
    v24 = *(*(&v10 + 1) + v5);
    *(&v114 + 1) = *(&v10 + 1) + v4;
    v25 = (v13 + v4);
    v20.i64[1] = v24;
    v26.i64[0] = **(&v112 + 1);
    v27 = (*(&v112 + 1) + v5 + v4);
    v26.i64[1] = *(*(&v112 + 1) + v5);
    v28 = vrhaddq_u8(v20, v26);
    v29 = *v6;
    v30 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v19, *v6))));
    v31 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v23, *v6))));
    v32 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v28, *v6))));
    v33.i64[0] = *(v9 + v4);
    v34 = *v16;
    *&v113 = v9 + v4 + v4;
    v35 = (v16 + v4);
    v33.i64[1] = v34;
    v36.i64[0] = *(v111 + v4);
    v37 = (v111 + v4 + v4);
    v36.i64[1] = *v18;
    v38 = vrhaddq_u8(v33, v36);
    v39 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(vextq_s8(v19, v38, 8uLL), v29))));
    v29.i64[0] = *(v10 + v4);
    v36.i64[0] = *v21;
    v40 = (v10 + v4 + v4);
    *&v114 = v40;
    v41 = (v21 + v4);
    v29.i64[1] = v36.i64[0];
    v36.i64[0] = *(v112 + v4);
    v42 = (v112 + v4 + v4);
    v36.i64[1] = *v22;
    v43 = vrhaddq_u8(v29, v36);
    v36.i64[0] = *(*(&v10 + 1) + v4);
    v44 = *v25;
    v45 = (*(&v10 + 1) + v4 + v4);
    *(&v114 + 1) = v45;
    v46 = (v25 + v4);
    v36.i64[1] = v44;
    v47.i64[0] = *(*(&v112 + 1) + v4);
    v48 = (*(&v112 + 1) + v4 + v4);
    v47.i64[1] = *v27;
    v49 = vrhaddq_u8(v36, v47);
    v50 = v6[1];
    v51 = v6[2];
    v52 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v43, v50))));
    v53 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v38, v50)))), v30);
    v54 = vaddq_s32(v52, v31);
    v55 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v49, v50)))), v32);
    v32.i64[0] = *v113;
    v49.i64[0] = *v35;
    v56 = (v113 + v4);
    *&v113 = v56;
    v32.i64[1] = v49.i64[0];
    v49.i64[0] = *v37;
    v57 = (v37 + v4);
    v49.i64[1] = *(v18 + v4);
    v58 = vrhaddq_u8(v32, v49);
    v59 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(vextq_s8(v38, v58, 8uLL), v50)))), v39);
    v38.i64[0] = *v40;
    v39.i64[0] = *v41;
    *&v114 = v40 + v4;
    v38.i64[1] = v39.i64[0];
    v60 = vrhaddq_u8(v38, *v42);
    v38.i64[0] = *v45;
    v50.i64[0] = *v46;
    *(&v114 + 1) = v45 + v4;
    v38.i64[1] = v50.i64[0];
    v61 = vrhaddq_u8(v38, *v48);
    v62 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v58, v51))));
    v63 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v60, v51))));
    v64 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v61, v51))));
    v65.i64[0] = *v56;
    v52.i64[0] = *(v35 + v4);
    *&v113 = v56 + v4;
    v65.i64[1] = v52.i64[0];
    v66.i64[0] = *v57;
    v66.i64[1] = *(v18 + v4 + v4);
    v67 = vrhaddq_u8(v65, v66);
    v68 = vpaddlq_u16(vpaddlq_u8(vabdq_u8(vextq_s8(v58, v67, 8uLL), v51)));
    v58.i64[0] = *(v40 + v4);
    v58.i64[1] = *(v41 + v4);
    v52.i64[0] = *(v42->i64 + v4);
    v52.i64[1] = *(v22 + v4 + v4);
    v69 = vrhaddq_u8(v58, v52);
    v52.i64[0] = *(v45 + v4);
    v52.i64[1] = *(v46 + v4);
    v66.i64[0] = *(v48->i64 + v4);
    v66.i64[1] = *(v27 + v4 + v4);
    v70 = vrhaddq_u8(v52, v66);
    v71 = v6[3];
    v72 = vaddq_s32(v53, vaddq_s32(v62, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v67, v71))))));
    v73 = vaddq_s32(v54, vaddq_s32(v63, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v69, v71))))));
    v74 = vaddq_s32(v64, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v70, v71)))));
    v75 = vaddq_s32(v55, v74);
    v74.i64[0] = *(v56 + v4);
    v53.i64[0] = *(v57 + v4);
    v76 = vaddq_s32(v59, vaddq_s32(vpaddlq_u32(v68), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(vextq_s8(v67, vrhaddq_u8(v74, v53), 8uLL), v71))))));
  }

  else
  {
    v8.i64[0] = *v11;
    *&v113 = v113 + v4;
    v77 = v11 + v4;
    v78.i64[0] = *v114;
    v79 = *v12;
    *&v114 = v114 + v4;
    v78.i64[1] = v79;
    v80 = *v6;
    v81 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(vzip1q_s64(v14, v8), *v6))));
    v82 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v78, *v6))));
    v83.i64[0] = *(v9 + v4);
    *&v113 = v9 + v4 + v4;
    v8.i64[1] = v83.i64[0];
    v84 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v8, v80))));
    v85.i64[0] = **(&v10 + 1);
    v86 = *v13;
    *(&v114 + 1) = *(&v10 + 1) + v4;
    v85.i64[1] = v86;
    v87 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v85, v80))));
    v88.i64[0] = *(v11 + v4);
    v83.i64[1] = v88.i64[0];
    v85.i64[0] = *(v10 + v4);
    v89 = *(v12 + v4);
    v90 = (v10 + v4 + v4);
    *&v114 = v90;
    v91 = (v12 + v4 + v4);
    v85.i64[1] = v89;
    v92 = v6[1];
    v93 = v6[2];
    v94 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v85, v92))));
    v95 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v83, v92)))), v81);
    v96 = vaddq_s32(v94, v82);
    v94.i64[0] = *v113;
    v97 = (v113 + v4);
    *&v113 = v97;
    v88.i64[1] = v94.i64[0];
    v98 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v88, v92)))), v84);
    v81.i64[0] = *(*(&v10 + 1) + v4);
    v84.i64[0] = *(v13 + v4);
    v99 = (*(&v10 + 1) + v4 + v4);
    *(&v114 + 1) = v99;
    v100 = (v13 + v4 + v4);
    v81.i64[1] = v84.i64[0];
    v101 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v81, v92)))), v87);
    v84.i64[0] = *&v77[v4];
    v94.i64[1] = v84.i64[0];
    v87.i64[0] = *v90;
    v88.i64[0] = *v91;
    *&v114 = v90 + v4;
    v87.i64[1] = v88.i64[0];
    v102 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v94, v93))));
    v103 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v87, v93))));
    v87.i64[0] = *v97;
    v84.i64[1] = *v97;
    *&v113 = v97 + v4;
    v104 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v84, v93))));
    v94.i64[0] = *v99;
    v105 = *v100;
    *(&v114 + 1) = v99 + v4;
    v94.i64[1] = v105;
    v106 = vpaddlq_u16(vpaddlq_u8(vabdq_u8(v94, v93)));
    v94.i64[0] = *&v77[v4 + v4];
    v87.i64[1] = v94.i64[0];
    v107.i64[0] = *(v90 + v4);
    v107.i64[1] = *(v91 + v4);
    v108 = v6[3];
    v72 = vaddq_s32(v95, vaddq_s32(v102, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v87, v108))))));
    v73 = vaddq_s32(v96, vaddq_s32(v103, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v107, v108))))));
    v94.i64[1] = *(v97 + v4);
    v76 = vaddq_s32(v98, vaddq_s32(v104, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v94, v108))))));
    v104.i64[0] = *(v99 + v4);
    v104.i64[1] = *(v100 + v4);
    v75 = vaddq_s32(v101, vaddq_s32(vpaddlq_u32(v106), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v104, v108))))));
  }

  *&result = vaddq_s32(v75, vdupq_laneq_s32(v75, 2)).u64[0];
  LODWORD(v110) = vzip1_s16(vadd_s32(*v72.i8, *&vdupq_laneq_s32(v72, 2)), vadd_s32(*v76.i8, *&vdupq_laneq_s32(v76, 2))).u32[0];
  WORD2(v110) = vaddq_s32(v73, vdupq_laneq_s32(v73, 2)).u16[0];
  HIWORD(v110) = LOWORD(result);
  *a3 = v110;
  return result;
}

double sub_2773A9764(void *a1, uint64_t a2, _WORD *a3)
{
  v3 = *(a2 + 56);
  v4 = a1[4];
  v5 = a1[5];
  v6 = v3[1];
  v7 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v5, *v3))));
  v8 = a1[3];
  v9 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v8, *v3))));
  v11 = *(a2 + 16);
  v10 = *(a2 + 20);
  v12 = (v5 + v11);
  v13 = (v8 + v11);
  v14 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v12, v6)))), v7);
  v15 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v13, v6)))), v9);
  v16 = (v12 + v11);
  v17 = *v16;
  v18 = (v13 + v11);
  v19 = vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v16, *v3)));
  v20 = (v16 + v11);
  v21 = vpaddlq_u32(v19);
  v22 = *v18;
  v23 = vabdq_u8(*v3, *v18);
  v24 = (v18 + v11);
  v25 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(v23)));
  v26 = v3[2];
  v27 = v3[3];
  v28 = vaddq_s32(v14, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v17, v26)))));
  v29 = vaddq_s32(v15, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v22, v26)))));
  v30 = *v20;
  v31 = (v20 + v11);
  v32 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v30, v6)))), v21);
  v33 = *v24;
  v34 = (v24 + v11);
  v35 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v6, v33)))), v25);
  v36 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v30, v27))));
  v37 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v33, v27))));
  v38 = *v31;
  v39 = (v31 + v11);
  v40 = vaddq_s32(v32, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v38, v26)))));
  v41 = *v34;
  v42 = (v34 + v11);
  v43 = vaddq_s32(v35, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v26, v41)))));
  v45 = v3[4];
  v44 = v3[5];
  v46 = vaddq_s32(v36, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v38, v45)))));
  v47 = vaddq_s32(v37, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v41, v45)))));
  v48 = *v39;
  v49 = (v39 + v11);
  v50 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v48, v27))));
  v51 = *v42;
  v52 = (v42 + v11);
  v53 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v27, v51))));
  v54 = vaddq_s32(v28, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v48, v44)))));
  v55 = vaddq_s32(v29, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v51, v44)))));
  v56 = *v49;
  v57 = (v49 + v11);
  v58 = vaddq_s32(v50, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v56, v45)))));
  v59 = *v52;
  v60 = (v52 + v11);
  v61 = vaddq_s32(v53, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v45, v59)))));
  v63 = v3[6];
  v62 = v3[7];
  v64 = vaddq_s32(v46, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v56, v63)))));
  v65 = vaddq_s32(v47, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v59, v63)))));
  v66 = *v57;
  v67 = (v57 + v11);
  v68 = vaddq_s32(v40, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v66, v44)))));
  v69 = *v60;
  v70 = (v60 + v11);
  v71 = vaddq_s32(v43, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v44, v69)))));
  v72 = vaddq_s32(v54, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v66, v62)))));
  v73 = vaddq_s32(v55, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v69, v62)))));
  v74 = *v67;
  v75 = (v67 + v11);
  v76 = vaddq_s32(v58, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v74, v63)))));
  v77 = *v70;
  v78 = (v70 + v11);
  v79 = vaddq_s32(v61, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v63, v77)))));
  v81 = v3[8];
  v80 = v3[9];
  v82 = vaddq_s32(v64, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v74, v81)))));
  v83 = vaddq_s32(v65, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v77, v81)))));
  v84 = *v75;
  v85 = (v75 + v11);
  v86 = vaddq_s32(v68, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v84, v62)))));
  v87 = *v78;
  v88 = (v78 + v11);
  v89 = vaddq_s32(v71, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v62, v87)))));
  v90 = vaddq_s32(v72, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v84, v80)))));
  v91 = vaddq_s32(v73, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v87, v80)))));
  v92 = *v85;
  v93 = (v85 + v11);
  v94 = vaddq_s32(v76, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v92, v81)))));
  v95 = *v88;
  v96 = (v88 + v11);
  v97 = vaddq_s32(v79, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v81, v95)))));
  v99 = v3[10];
  v98 = v3[11];
  v100 = vaddq_s32(v82, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v92, v99)))));
  v101 = vaddq_s32(v83, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v95, v99)))));
  v102 = *v93;
  v103 = (v93 + v11);
  v104 = vaddq_s32(v86, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v102, v80)))));
  v105 = *v96;
  v106 = (v96 + v11);
  v107 = vaddq_s32(v89, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v80, v105)))));
  v108 = vaddq_s32(v90, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v102, v98)))));
  v109 = vaddq_s32(v91, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v105, v98)))));
  v110 = *v103;
  v111 = (v103 + v11);
  v112 = vaddq_s32(v94, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v110, v99)))));
  v113 = *v106;
  v114 = (v106 + v11);
  v115 = vaddq_s32(v97, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v99, v113)))));
  v117 = v3[12];
  v116 = v3[13];
  v118 = vaddq_s32(v100, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v110, v117)))));
  v119 = vaddq_s32(v101, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v113, v117)))));
  v120 = *v111;
  v121 = (v111 + v11);
  v122 = vaddq_s32(v104, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v120, v98)))));
  v123 = *v114;
  v124 = (v114 + v11);
  v125 = vaddq_s32(v107, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v98, v123)))));
  v126 = vaddq_s32(v108, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v120, v116)))));
  v127 = vaddq_s32(v109, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v123, v116)))));
  v128 = *v121;
  v129 = (v121 + v11);
  v130 = vaddq_s32(v112, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v128, v117)))));
  v131 = &v124->i8[v11];
  v132 = vaddq_s32(v115, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v117, *v124)))));
  v133 = v3[14];
  v134 = v3[15];
  v135 = vaddq_s32(v119, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v124, v133)))));
  v136 = *(v124 + v11);
  v137 = &v4->i8[v11];
  v138 = vaddq_s32(vaddq_s32(v126, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v129, v134))))), vaddq_s32(v118, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v128, v133))))));
  v139 = vaddq_s32(vaddq_s32(v127, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v136, v134))))), v135);
  v140 = vaddq_s32(vaddq_s32(vaddq_s32(v122, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v129, v116))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*(v129 + v11 + v11), v134))))), vaddq_s32(v130, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*(v129 + v11), v133))))));
  v141 = vaddq_s32(vaddq_s32(vaddq_s32(v125, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v116, v136))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*&v131[v11 + v11], v134))))), vaddq_s32(v132, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*&v131[v11], v133))))));
  a3[5] = vaddq_s32(v138, vdupq_laneq_s32(v138, 2)).u16[0];
  *a3 = vaddq_s32(v140, vdupq_laneq_s32(v140, 2)).u16[0];
  a3[3] = vaddq_s32(v139, vdupq_laneq_s32(v139, 2)).u16[0];
  a3[2] = vaddq_s32(v141, vdupq_laneq_s32(v141, 2)).u16[0];
  v142 = *v4;
  v143 = *(v4 + v11);
  v144 = (v4 + v10);
  v145 = v3[1];
  v146 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v143, v145)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v142, *v3)))));
  v147 = *v144;
  v148 = (v144 + v10);
  v149 = &v137[v10 + v10];
  v150 = v3[2];
  v151 = v3[3];
  v152 = *v148;
  v153 = *v149;
  v154 = (v148 + v10);
  v155 = (v149 + v10);
  v156 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v145, v153)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v3, v152)))));
  v157 = v3[4];
  v158 = v3[5];
  v159 = vaddq_s32(v146, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v152, v157)))));
  v160 = vaddq_s32(vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v147, v150)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*&v137[v10], v151))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v153, v158)))));
  v161 = *v154;
  v162 = *v155;
  v163 = (v154 + v10);
  v164 = (v155 + v10);
  v165 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v150, v161)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v151, v162)))));
  v166 = v3[6];
  v167 = v3[7];
  v168 = vaddq_s32(v159, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v161, v166)))));
  v169 = vaddq_s32(v160, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v162, v167)))));
  v170 = *v163;
  v171 = *v164;
  v172 = (v163 + v10);
  v173 = (v164 + v10);
  v174 = vaddq_s32(v156, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v157, v170)))));
  v175 = vaddq_s32(v165, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v158, v171)))));
  v176 = v3[8];
  v177 = v3[9];
  v178 = vaddq_s32(v168, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v170, v176)))));
  v179 = vaddq_s32(v169, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v171, v177)))));
  v180 = *v172;
  v181 = *v173;
  v182 = (v172 + v10);
  v183 = (v173 + v10);
  v184 = vaddq_s32(v174, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v166, v180)))));
  v185 = vaddq_s32(v175, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v167, v181)))));
  v186 = v3[10];
  v187 = v3[11];
  v188 = vaddq_s32(v178, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v180, v186)))));
  v189 = vaddq_s32(v179, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v181, v187)))));
  v190 = *v182;
  v191 = *v183;
  v192 = (v182 + v10);
  v193 = (v183 + v10);
  v194 = vaddq_s32(v184, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v176, v190)))));
  v195 = vaddq_s32(v185, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v177, v191)))));
  v196 = v3[12];
  v197 = v3[13];
  v198 = vaddq_s32(v188, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v190, v196)))));
  v199 = vaddq_s32(v189, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v191, v197)))));
  v200 = *v192;
  v201 = *v193;
  v202 = (v192 + v10);
  v203 = (v193 + v10);
  v204 = vaddq_s32(v194, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v186, v200)))));
  v205 = vaddq_s32(v195, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v187, v201)))));
  v206 = v3[14];
  v207 = v3[15];
  v208 = vaddq_s32(vaddq_s32(v198, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v200, v206))))), vaddq_s32(v199, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v201, v207))))));
  v209 = vaddq_s32(v204, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v196, *v202)))));
  v210 = vaddq_s32(v205, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v197, *v203)))));
  v211 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v207, *(v203 + v10)))));
  v212 = vaddq_s32(v209, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v206, *(v202 + v10))))));
  a3[4] = vaddq_s32(v208, vdupq_laneq_s32(v208, 2)).u16[0];
  v213 = vaddq_s32(v212, vaddq_s32(v210, v211));
  *&result = vaddq_s32(v213, vdupq_laneq_s32(v213, 2)).u64[0];
  a3[1] = LOWORD(result);
  return result;
}

double sub_2773AA10C(void *a1, uint64_t a2, _WORD *a3)
{
  v3 = *(a2 + 56);
  v4 = a1[4];
  v5 = a1[5];
  v6 = v3[1];
  v7 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v5, *v3))));
  v8 = a1[3];
  v9 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v8, *v3))));
  v11 = *(a2 + 16);
  v10 = *(a2 + 20);
  v12 = (v5 + v11);
  v13 = (v8 + v11);
  v14 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v12, v6)))), v7);
  v15 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v13, v6)))), v9);
  v16 = (v12 + v11);
  v17 = *v16;
  v18 = (v13 + v11);
  v19 = vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v16, *v3)));
  v20 = (v16 + v11);
  v21 = vpaddlq_u32(v19);
  v22 = *v18;
  v23 = vabdq_u8(*v3, *v18);
  v24 = (v18 + v11);
  v25 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(v23)));
  v26 = v3[2];
  v27 = v3[3];
  v28 = vaddq_s32(v14, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v17, v26)))));
  v29 = vaddq_s32(v15, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v22, v26)))));
  v30 = *v20;
  v31 = (v20 + v11);
  v32 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v30, v6)))), v21);
  v33 = *v24;
  v34 = (v24 + v11);
  v35 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v6, v33)))), v25);
  v36 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v30, v27))));
  v37 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v33, v27))));
  v38 = *v31;
  v39 = (v31 + v11);
  v40 = vaddq_s32(v32, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v38, v26)))));
  v41 = *v34;
  v42 = (v34 + v11);
  v43 = vaddq_s32(v35, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v26, v41)))));
  v45 = v3[4];
  v44 = v3[5];
  v46 = vaddq_s32(v36, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v38, v45)))));
  v47 = vaddq_s32(v37, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v41, v45)))));
  v48 = *v39;
  v49 = (v39 + v11);
  v50 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v48, v27))));
  v51 = *v42;
  v52 = (v42 + v11);
  v53 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v27, v51))));
  v54 = vaddq_s32(v28, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v48, v44)))));
  v55 = vaddq_s32(v29, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v51, v44)))));
  v56 = *v49;
  v57 = (v49 + v11);
  v58 = vaddq_s32(v50, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v56, v45)))));
  v59 = &v52->i8[v11];
  v60 = vaddq_s32(v53, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v45, *v52)))));
  v61 = v3[6];
  v62 = v3[7];
  v63 = vaddq_s32(v46, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v56, v61)))));
  v64 = vaddq_s32(v47, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v52, v61)))));
  v65 = vaddq_s32(v40, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v57, v44)))));
  v66 = *(v52 + v11);
  v67 = vaddq_s32(v43, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v44, v66)))));
  v68 = &v4->i8[v11];
  v69 = vaddq_s32(vaddq_s32(v54, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v57, v62))))), v63);
  v70 = vaddq_s32(vaddq_s32(v55, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v66, v62))))), v64);
  v71 = vaddq_s32(vaddq_s32(v65, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*(v57 + v11 + v11), v62))))), vaddq_s32(v58, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*(v57 + v11), v61))))));
  v72 = vaddq_s32(vaddq_s32(v67, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*&v59[v11 + v11], v62))))), vaddq_s32(v60, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*&v59[v11], v61))))));
  a3[5] = vaddq_s32(v69, vdupq_laneq_s32(v69, 2)).u16[0];
  *a3 = vaddq_s32(v71, vdupq_laneq_s32(v71, 2)).u16[0];
  a3[3] = vaddq_s32(v70, vdupq_laneq_s32(v70, 2)).u16[0];
  a3[2] = vaddq_s32(v72, vdupq_laneq_s32(v72, 2)).u16[0];
  v73 = *v4;
  v74 = *(v4 + v11);
  v75 = (v4 + v10);
  v76 = v3[1];
  v77 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v74, v76)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v73, *v3)))));
  v78 = *v75;
  v79 = (v75 + v10);
  v80 = &v68[v10 + v10];
  v81 = v3[2];
  v82 = v3[3];
  v83 = *v79;
  v84 = *v80;
  v85 = (v79 + v10);
  v86 = (v80 + v10);
  v87 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v76, v84)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v3, v83)))));
  v88 = v3[4];
  v89 = v3[5];
  v90 = vaddq_s32(v77, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v83, v88)))));
  v91 = vaddq_s32(vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v78, v81)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*&v68[v10], v82))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v84, v89)))));
  v92 = *v85;
  v93 = *v86;
  v94 = (v85 + v10);
  v95 = (v86 + v10);
  v96 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v81, v92)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v82, v93)))));
  v97 = v3[6];
  v98 = v3[7];
  v99 = vaddq_s32(vaddq_s32(v90, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v92, v97))))), vaddq_s32(v91, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v93, v98))))));
  v100 = vaddq_s32(v87, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v88, *v94)))));
  v101 = vaddq_s32(v96, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v89, *v95)))));
  v102 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v98, *(v95 + v10)))));
  v103 = vaddq_s32(v100, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v97, *(v94 + v10))))));
  a3[4] = vaddq_s32(v99, vdupq_laneq_s32(v99, 2)).u16[0];
  v104 = vaddq_s32(v103, vaddq_s32(v101, v102));
  *&result = vaddq_s32(v104, vdupq_laneq_s32(v104, 2)).u64[0];
  a3[1] = LOWORD(result);
  return result;
}

double sub_2773AA614(void *a1, uint64_t a2, _WORD *a3)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 20);
  v5 = a1[4];
  v6 = a1[5];
  v7 = v6 + v4;
  v8.i64[0] = *v6;
  v8.i64[1] = *(v6 + v4);
  v9 = a1[3];
  v10 = v9 + v4;
  v11.i64[0] = *v9;
  v11.i64[1] = *(v9 + v4);
  v12 = *(a2 + 64);
  v13 = v12[1];
  v14 = (v6 + v3);
  v15 = *v14;
  v16 = (v9 + v3);
  v17 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v11, *v12))));
  v18 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v14, v13)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v8, *v12)))));
  v19 = (v14->i64 + v3);
  v20 = &v7[v3 + v3];
  v11.i64[0] = *v19;
  v11.i64[1] = *v20;
  v21 = &v16->i8[v3];
  v22 = &v10[v3 + v3];
  v23.i64[0] = *(v16->i64 + v3);
  v23.i64[1] = *v22;
  v24 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v16, v13)))), v17);
  v25 = (v22 + v3);
  v26 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v13, v11)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v12, v15)))));
  v27 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v13, v23)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v12, *v16)))));
  v28 = v12[2];
  v29 = v12[3];
  v30 = vaddq_s32(v18, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v11, v28)))));
  v31 = vaddq_s32(v24, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v23, v28)))));
  v24.i64[0] = *(v19 + v3);
  v32 = (v19 + v3 + v3);
  v33 = v20 + v3 + v3;
  v24.i64[1] = *(v20 + v3);
  v34.i64[0] = *&v21[v3];
  v18.i64[0] = *v25;
  v35 = &v21[v3 + v3];
  v36 = (v25 + v3);
  v34.i64[1] = v18.i64[0];
  v37 = vaddq_s32(v26, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v28, v24)))));
  v38 = vaddq_s32(v27, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v28, v34)))));
  v39 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v24, v29))));
  v40 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v34, v29))));
  v41.i64[0] = *v35;
  v24.i64[0] = *v36;
  v42 = (v36 + v3);
  v41.i64[1] = v24.i64[0];
  v43 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v29, *v32))));
  v44 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v29, v41))));
  v45 = v12[8];
  v46 = v12[9];
  v47 = vaddq_s32(v39, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v32, v45)))));
  v48 = vaddq_s32(v40, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v41, v45)))));
  v41.i64[0] = *(v32->i64 + v3);
  v49 = (v32 + v3 + v3);
  v50 = &v33[v3 + v3];
  v41.i64[1] = *&v33[v3];
  v51.i64[0] = *(v35 + v3);
  v40.i64[0] = *v42;
  v52 = (v35 + v3 + v3);
  v53 = (v42 + v3);
  v51.i64[1] = v40.i64[0];
  v54 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v45, v51))));
  v55 = vaddq_s32(v43, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v45, v41)))));
  v56 = vaddq_s32(v44, v54);
  v57 = vaddq_s32(v30, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v41, v46)))));
  v58 = vaddq_s32(v31, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v51, v46)))));
  v59 = *v49;
  v60 = (v49->i64 + v3);
  v41.i64[0] = *v52;
  v41.i64[1] = *v53;
  v61 = (v53 + v3);
  v62 = vaddq_s32(v37, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v46, v59)))));
  v63 = vaddq_s32(v38, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v46, v41)))));
  v64 = v12[10];
  v65 = v12[11];
  v66 = vaddq_s32(v47, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v59, v64)))));
  v59.i64[0] = *v60;
  v59.i64[1] = *&v50[v3];
  v51.i64[0] = *(v52 + v3);
  v51.i64[1] = *v61;
  v67 = vaddq_s32(v48, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v41, v64)))));
  v68 = vaddq_s32(v55, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v64, v59)))));
  v69 = &v5->i8[v4];
  v70 = vaddq_s32(v56, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v64, v51)))));
  v71 = vaddq_s32(vaddq_s32(v57, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v59, v65))))), v66);
  v72 = vaddq_s32(vaddq_s32(v58, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v51, v65))))), v67);
  v67.i64[0] = *(v60 + v3);
  v67.i64[1] = *&v50[v3 + v3];
  v57.i64[0] = *(v52 + v3 + v3);
  v57.i64[1] = *(v61 + v3);
  v73 = vaddq_s32(vaddq_s32(v62, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v65, v67))))), v68);
  v74 = vaddq_s32(vaddq_s32(v63, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v65, v57))))), v70);
  a3[5] = vaddq_s32(v71, vdupq_laneq_s32(v71, 2)).u16[0];
  *a3 = vaddq_s32(v73, vdupq_laneq_s32(v73, 2)).u16[0];
  a3[3] = vaddq_s32(v72, vdupq_laneq_s32(v72, 2)).u16[0];
  a3[2] = vaddq_s32(v74, vdupq_laneq_s32(v74, 2)).u16[0];
  v75 = *v5;
  v76 = (v5 + v3);
  v77 = *v76;
  v78 = (v76 + v3);
  v79 = v12[1];
  v80 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v77, v79)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v75, *v12)))));
  v81 = *v78;
  v82 = (v78 + v3);
  v83 = *v82;
  v84 = (v82 + v3);
  v85 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v79, v83)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v12, v81)))));
  v86 = v12[2];
  v87 = v12[3];
  v88 = vaddq_s32(v80, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v81, v86)))));
  v89 = *v84;
  v90 = (v84 + v3);
  v91 = *v90;
  v92 = (v90 + v3);
  v93 = vaddq_s32(v85, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v86, v89)))));
  v94 = v12[8];
  v95 = v12[9];
  v96 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v83, v87)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v89, v94)))));
  v97 = vaddq_s32(v88, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v91, v95)))));
  v98 = *v92;
  v99 = (v92 + v3);
  v100 = *v99;
  v101 = (v99 + v3);
  v102 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v87, v91)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v94, v98)))));
  v103 = vaddq_s32(v93, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v95, v100)))));
  v104 = v12[10];
  v105 = v12[11];
  v106 = vaddq_s32(vaddq_s32(v97, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v100, v105))))), vaddq_s32(v96, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v98, v104))))));
  v107 = *v101;
  v98.i64[0] = *(v101->i64 + v3);
  v98.i64[1] = *&v69[v3 + v3 + v3 + v3 + v3 + v3 + v3 + v3 + v3];
  a3[4] = vaddq_s32(v106, vdupq_laneq_s32(v106, 2)).u16[0];
  v108 = vaddq_s32(vaddq_s32(v103, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v105, v98))))), vaddq_s32(v102, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v104, v107))))));
  *&result = vaddq_s32(v108, vdupq_laneq_s32(v108, 2)).u64[0];
  a3[1] = LOWORD(result);
  return result;
}

double sub_2773AAC44(void *a1, uint64_t a2, _WORD *a3)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 20);
  v5 = *(a2 + 64);
  v6 = a1[4];
  v7 = a1[5];
  v8 = &v7->i8[v4];
  v9 = a1[3];
  v10 = &v9->i8[v4];
  v11 = &v6->i8[v4];
  v12 = *v7;
  v13 = *v9;
  v14 = (v7 + v3);
  v15 = (v9 + v3);
  v16 = v5[1];
  v17 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v13, *v5))));
  v18 = *v14;
  v19 = (v14 + v3);
  v20 = *v15;
  v21 = (v15 + v3);
  v22 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v5, v18))));
  v23 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v5, v20))));
  v24 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v18, v16)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v12, *v5)))));
  v25 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v20, v16)))), v17);
  v26 = *v19;
  v27 = (v19 + v3);
  v28 = *v21;
  v29 = (v21 + v3);
  v30 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v16, v26)))), v22);
  v31 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v16, v28)))), v23);
  v32 = v5[2];
  v33 = v5[3];
  v34 = vaddq_s32(vaddq_s32(v24, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v26, v32))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v27, v33)))));
  v35 = vaddq_s32(vaddq_s32(v25, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v28, v32))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v29, v33)))));
  v26.i64[0] = *(v27->i64 + v3);
  v26.i64[1] = *&v8[v3 + v3 + v3 + v3];
  v23.i64[0] = *(v29->i64 + v3);
  v23.i64[1] = *&v10[v3 + v3 + v3 + v3];
  v36 = vaddq_s32(v30, vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v32, *v27)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v33, v26))))));
  v37 = vaddq_s32(v31, vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v32, *v29)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v33, v23))))));
  a3[5] = vaddq_s32(v34, vdupq_laneq_s32(v34, 2)).u16[0];
  *a3 = vaddq_s32(v36, vdupq_laneq_s32(v36, 2)).u16[0];
  a3[3] = vaddq_s32(v35, vdupq_laneq_s32(v35, 2)).u16[0];
  a3[2] = vaddq_s32(v37, vdupq_laneq_s32(v37, 2)).u16[0];
  v38 = *v6;
  v39 = (v6 + v3);
  v40 = *v39;
  v41 = (v39 + v3);
  v42 = v5[1];
  v43 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v40, v42)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v38, *v5)))));
  v44 = *v41;
  v45 = (v41 + v3);
  v46 = *v45;
  v47 = (v45 + v3);
  v48 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v42, v46)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v5, v44)))));
  v49 = v5[2];
  v50 = v5[3];
  v51 = vaddq_s32(vaddq_s32(v43, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v44, v49))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v46, v50)))));
  v33.i64[0] = *(v47->i64 + v3);
  v33.i64[1] = *&v11[v3 + v3 + v3 + v3 + v3];
  v52 = vaddq_s32(v48, vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v49, *v47)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v50, v33))))));
  *&result = vaddq_s32(v51, vdupq_laneq_s32(v51, 2)).u64[0];
  a3[4] = LOWORD(result);
  a3[1] = vaddq_s32(v52, vdupq_laneq_s32(v52, 2)).u16[0];
  return result;
}

double sub_2773AAF94(uint8x16_t **a1, uint64_t a2, _WORD *a3)
{
  v3 = *(a2 + 56);
  v4 = a1[4];
  v5 = v3[1];
  v6 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v4, *v3))));
  v7 = *(a2 + 16);
  v8 = *(a2 + 20);
  v9 = (v4 + v7);
  v10 = *v9;
  v11 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v9, *v3))));
  v12 = (v9 + v7);
  v13 = *v12;
  v14 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v3, *v12))));
  v15 = (v12 + v7);
  v16 = *v15;
  v17 = (v15 + v7);
  v18 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v10, v5)))), v6);
  v19 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v13, v5)))), v11);
  v20 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v5, v16)))), v14);
  v21 = *v17;
  v22 = (v17 + v7);
  v23 = v3[2];
  v24 = v3[3];
  v25 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v16, v23))));
  v26 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v23, v21))));
  v27 = vaddq_s32(v18, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v13, v23)))));
  v28 = vaddq_s32(v19, v25);
  v29 = vaddq_s32(v20, v26);
  v30 = *v22;
  v31 = (v22 + v7);
  v32 = *v31;
  v33 = (v31 + v7);
  v34 = v3[4];
  v35 = v3[5];
  v36 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v16, v24)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v21, v34)))));
  v37 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v21, v24)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v30, v34)))));
  v38 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v24, v30)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v34, v32)))));
  v39 = *v33;
  v40 = (v33 + v7);
  v41 = vaddq_s32(v27, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v30, v35)))));
  v42 = vaddq_s32(v28, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v32, v35)))));
  v43 = vaddq_s32(v29, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v35, v39)))));
  v44 = *v40;
  v45 = (v40 + v7);
  v46 = v3[6];
  v47 = v3[7];
  v48 = vaddq_s32(v36, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v32, v46)))));
  v49 = vaddq_s32(v37, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v39, v46)))));
  v50 = vaddq_s32(v38, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v46, v44)))));
  v51 = *v45;
  v52 = (v45 + v7);
  v53 = vaddq_s32(v41, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v39, v47)))));
  v54 = vaddq_s32(v42, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v44, v47)))));
  v55 = vaddq_s32(v43, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v47, v51)))));
  v56 = *v52;
  v57 = (v52 + v7);
  v58 = v3[8];
  v59 = v3[9];
  v60 = vaddq_s32(v48, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v44, v58)))));
  v61 = vaddq_s32(v49, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v51, v58)))));
  v62 = vaddq_s32(v50, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v58, v56)))));
  v63 = *v57;
  v64 = (v57 + v7);
  v65 = vaddq_s32(v53, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v51, v59)))));
  v66 = vaddq_s32(v54, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v56, v59)))));
  v67 = vaddq_s32(v55, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v59, v63)))));
  v68 = *v64;
  v69 = (v64 + v7);
  v70 = v3[10];
  v71 = v3[11];
  v72 = vaddq_s32(v60, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v56, v70)))));
  v73 = vaddq_s32(v61, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v63, v70)))));
  v74 = vaddq_s32(v62, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v70, v68)))));
  v75 = *v69;
  v76 = (v69 + v7);
  v77 = vaddq_s32(v65, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v63, v71)))));
  v78 = vaddq_s32(v66, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v68, v71)))));
  v79 = vaddq_s32(v67, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v71, v75)))));
  v80 = *v76;
  v81 = (v76 + v7);
  v82 = v3[12];
  v83 = v3[13];
  v84 = vaddq_s32(v72, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v68, v82)))));
  v85 = vaddq_s32(v73, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v75, v82)))));
  v86 = vaddq_s32(v74, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v82, v80)))));
  v87 = *v81;
  v88 = (v81 + v7);
  v89 = vaddq_s32(v77, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v75, v83)))));
  v90 = vaddq_s32(v78, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v80, v83)))));
  v91 = vaddq_s32(v79, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v83, v87)))));
  v92 = v3[14];
  v93 = v3[15];
  v94 = vaddq_s32(vaddq_s32(v89, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v87, v93))))), vaddq_s32(v84, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v80, v92))))));
  v95 = vaddq_s32(vaddq_s32(v90, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v88, v93))))), vaddq_s32(v85, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v87, v92))))));
  v96 = vaddq_s32(vaddq_s32(v91, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v93, *(v88 + v7)))))), vaddq_s32(v86, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v92, *v88))))));
  a3[4] = vaddq_s32(v94, vdupq_laneq_s32(v94, 2)).u16[0];
  a3[2] = vaddq_s32(v95, vdupq_laneq_s32(v95, 2)).u16[0];
  a3[5] = vaddq_s32(v96, vdupq_laneq_s32(v96, 2)).u16[0];
  v97 = (*a1 + v7);
  v98 = *v97;
  v99 = v3[1];
  v100 = (*a1 + v8);
  v101 = (v97 + v8);
  v102 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v98, v99))));
  v103 = *v100;
  v104 = *v101;
  v105 = (v100 + v8);
  v106 = (v101 + v8);
  v107 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v3, v103))));
  v108 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v99, v104))));
  v109 = v3[2];
  v110 = v3[3];
  v111 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v103, v109)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(**a1, *v3)))));
  v112 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v104, v110)))), v102);
  v113 = *v105;
  v114 = *v106;
  v115 = (v105 + v8);
  v116 = (v106 + v8);
  v117 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v109, v113)))), v107);
  v118 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v110, v114)))), v108);
  v119 = v3[4];
  v120 = v3[5];
  v121 = vaddq_s32(v111, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v113, v119)))));
  v122 = vaddq_s32(v112, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v114, v120)))));
  v123 = *v115;
  v124 = *v116;
  v125 = (v115 + v8);
  v126 = (v116 + v8);
  v127 = vaddq_s32(v117, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v119, v123)))));
  v128 = vaddq_s32(v118, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v120, v124)))));
  v129 = v3[6];
  v130 = v3[7];
  v131 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v123, v129))));
  v132 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v124, v130))));
  v133 = *v125;
  v134 = *v126;
  v135 = (v125 + v8);
  v136 = (v126 + v8);
  v137 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v129, v133))));
  v138 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v130, v134))));
  v139 = v3[8];
  v140 = v3[9];
  v141 = vaddq_s32(v131, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v133, v139)))));
  v142 = vaddq_s32(v132, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v134, v140)))));
  v143 = *v135;
  v144 = *v136;
  v145 = (v135 + v8);
  v146 = (v136 + v8);
  v147 = vaddq_s32(v137, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v139, v143)))));
  v148 = vaddq_s32(v138, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v140, v144)))));
  v149 = v3[10];
  v150 = v3[11];
  v151 = vaddq_s32(v121, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v143, v149)))));
  v152 = vaddq_s32(v122, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v144, v150)))));
  v153 = *v145;
  v154 = *v146;
  v155 = (v145 + v8);
  v156 = (v146 + v8);
  v157 = vaddq_s32(v127, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v149, v153)))));
  v158 = vaddq_s32(v128, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v150, v154)))));
  v159 = v3[12];
  v160 = v3[13];
  v161 = vaddq_s32(v141, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v153, v159)))));
  v162 = vaddq_s32(v142, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v154, v160)))));
  v163 = vaddq_s32(v147, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v159, *v155)))));
  v164 = vaddq_s32(v148, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v160, *v156)))));
  v165 = v3[14];
  v166 = v3[15];
  v167 = vaddq_s32(vaddq_s32(v151, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v155, v165))))), v161);
  v168 = vaddq_s32(vaddq_s32(v152, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v156, v166))))), v162);
  v169 = vaddq_s32(vaddq_s32(v157, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v165, *(v155 + v8)))))), v163);
  v170 = vaddq_s32(vaddq_s32(v158, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v166, *(v156 + v8)))))), v164);
  *a3 = vaddq_s32(vaddq_s32(vaddq_s32(v167, v168), vdupq_laneq_s32(v167, 2)), vdupq_laneq_s32(v168, 2)).u16[0];
  a3[1] = vaddq_s32(vaddq_s32(vaddq_s32(v169, v170), vdupq_laneq_s32(v169, 2)), vdupq_laneq_s32(v170, 2)).u16[0];
  v171 = a1[6];
  v172 = *v171;
  v173 = (v171 + v7);
  v174 = *v173;
  v175 = (v173 + v7);
  v176 = *v175;
  v177 = (v175 + v7);
  v178 = v3[1];
  v179 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v174, *v3))));
  v180 = *v177;
  v181 = (v177 + v7);
  v182 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v174, v178)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v172, *v3)))));
  v183 = *v181;
  v184 = (v181 + v7);
  v185 = v3[2];
  v186 = v3[3];
  v187 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v185, v183))));
  v188 = vaddq_s32(v182, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v176, v185)))));
  v189 = vaddq_s32(vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v176, v178)))), v179), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v180, v185)))));
  v190 = vaddq_s32(vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v178, v180)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v3, v176))))), v187);
  v191 = *v184;
  v192 = (v184 + v7);
  v193 = *v192;
  v194 = (v192 + v7);
  v195 = v3[4];
  v196 = v3[5];
  v197 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v180, v186)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v183, v195)))));
  v198 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v183, v186)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v191, v195)))));
  v199 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v186, v191)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v195, v193)))));
  v200 = *v194;
  v201 = (v194 + v7);
  v202 = vaddq_s32(v188, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v191, v196)))));
  v203 = vaddq_s32(v189, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v193, v196)))));
  v204 = vaddq_s32(v190, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v196, v200)))));
  v205 = *v201;
  v206 = (v201 + v7);
  v207 = v3[6];
  v208 = v3[7];
  v209 = vaddq_s32(v197, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v193, v207)))));
  v210 = vaddq_s32(v198, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v200, v207)))));
  v211 = vaddq_s32(v199, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v207, v205)))));
  v212 = *v206;
  v213 = (v206 + v7);
  v214 = vaddq_s32(v202, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v200, v208)))));
  v215 = vaddq_s32(v203, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v205, v208)))));
  v216 = vaddq_s32(v204, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v208, v212)))));
  v217 = *v213;
  v218 = (v213 + v7);
  v219 = v3[8];
  v220 = v3[9];
  v221 = vaddq_s32(v209, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v205, v219)))));
  v222 = vaddq_s32(v210, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v212, v219)))));
  v223 = vaddq_s32(v211, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v219, v217)))));
  v224 = *v218;
  v225 = (v218 + v7);
  v226 = vaddq_s32(v214, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v212, v220)))));
  v227 = vaddq_s32(v215, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v217, v220)))));
  v228 = vaddq_s32(v216, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v220, v224)))));
  v229 = *v225;
  v230 = (v225 + v7);
  v231 = v3[10];
  v232 = v3[11];
  v233 = vaddq_s32(v221, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v217, v231)))));
  v234 = vaddq_s32(v222, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v224, v231)))));
  v235 = vaddq_s32(v223, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v231, v229)))));
  v236 = *v230;
  v237 = (v230 + v7);
  v238 = vaddq_s32(v226, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v224, v232)))));
  v239 = vaddq_s32(v227, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v229, v232)))));
  v240 = vaddq_s32(v228, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v232, v236)))));
  v241 = *v237;
  v242 = (v237 + v7);
  v243 = v3[12];
  v244 = v3[13];
  v245 = vaddq_s32(v233, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v229, v243)))));
  v246 = vaddq_s32(v234, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v236, v243)))));
  v247 = vaddq_s32(v235, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v243, v241)))));
  v248 = *v242;
  v249 = (v242 + v7);
  v250 = vaddq_s32(v238, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v236, v244)))));
  v251 = vaddq_s32(v239, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v241, v244)))));
  v252 = vaddq_s32(v240, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v244, v248)))));
  v253 = v3[14];
  v254 = v3[15];
  v255 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v248, v253))));
  v256 = vaddq_s32(v245, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v241, v253)))));
  v257 = vaddq_s32(v247, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v253, *v249)))));
  v258 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v254, *(v249 + v7)))));
  v259 = vaddq_s32(vaddq_s32(v250, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v248, v254))))), v256);
  v260 = vaddq_s32(vaddq_s32(v251, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v249, v254))))), vaddq_s32(v246, v255));
  a3[6] = vaddq_s32(v259, vdupq_laneq_s32(v259, 2)).u16[0];
  a3[3] = vaddq_s32(v260, vdupq_laneq_s32(v260, 2)).u16[0];
  v261 = vaddq_s32(vaddq_s32(v252, v258), v257);
  *&result = vaddq_s32(v261, vdupq_laneq_s32(v261, 2)).u64[0];
  a3[7] = LOWORD(result);
  return result;
}

double sub_2773ABBF0(uint8x16_t **a1, uint64_t a2, _WORD *a3)
{
  v3 = *(a2 + 56);
  v4 = *(a2 + 16);
  v5 = *(a2 + 20);
  v6 = a1[4];
  v7 = *v6;
  v8 = (v6 + v4);
  v9 = *v8;
  v10 = v3[1];
  v11 = (v8 + v4);
  v12 = *v11;
  v13 = (v11 + v4);
  v14 = *v13;
  v15 = (v13 + v4);
  v16 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v9, v10)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v7, *v3)))));
  v17 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v12, v10)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v9, *v3)))));
  v18 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v10, v14)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v3, v12)))));
  v19 = *v15;
  v20 = (v15 + v4);
  v21 = v3[2];
  v22 = v3[3];
  v23 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v12, v21))));
  v24 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v14, v21))));
  v25 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v21, v19))));
  v26 = vaddq_s32(v16, v23);
  v27 = vaddq_s32(v17, v24);
  v28 = vaddq_s32(v18, v25);
  v29 = *v20;
  v30 = (v20 + v4);
  v31 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v19, v22))));
  v32 = *v30;
  v33 = (v30 + v4);
  v34 = v3[4];
  v35 = v3[5];
  v36 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v14, v22)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v19, v34)))));
  v37 = vaddq_s32(v31, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v29, v34)))));
  v38 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v22, v29)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v34, v32)))));
  v39 = *v33;
  v40 = (v33 + v4);
  v41 = vaddq_s32(v26, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v29, v35)))));
  v42 = vaddq_s32(v27, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v32, v35)))));
  v43 = vaddq_s32(v28, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v35, v39)))));
  v44 = v3[6];
  v45 = v3[7];
  v46 = vaddq_s32(vaddq_s32(v41, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v39, v45))))), vaddq_s32(v36, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v32, v44))))));
  v47 = vaddq_s32(vaddq_s32(v42, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v40, v45))))), vaddq_s32(v37, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v39, v44))))));
  v48 = vaddq_s32(vaddq_s32(v43, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v45, *(v40 + v4)))))), vaddq_s32(v38, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v44, *v40))))));
  a3[4] = vaddq_s32(v46, vdupq_laneq_s32(v46, 2)).u16[0];
  a3[2] = vaddq_s32(v47, vdupq_laneq_s32(v47, 2)).u16[0];
  a3[5] = vaddq_s32(v48, vdupq_laneq_s32(v48, 2)).u16[0];
  v49 = (*a1 + v4);
  v50 = *v49;
  v51 = v3[1];
  v52 = (*a1 + v5);
  v53 = (v49 + v5);
  v54 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v50, v51))));
  v55 = *v52;
  v56 = *v53;
  v57 = (v52 + v5);
  v58 = (v53 + v5);
  v59 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v3, v55))));
  v60 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v51, v56))));
  v61 = v3[2];
  v62 = v3[3];
  v63 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v55, v61)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(**a1, *v3)))));
  v64 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v56, v62)))), v54);
  v65 = *v57;
  v66 = *v58;
  v67 = (v57 + v5);
  v68 = (v58 + v5);
  v69 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v61, v65)))), v59);
  v70 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v62, v66)))), v60);
  v71 = v3[4];
  v72 = v3[5];
  v73 = v3[6];
  v74 = v3[7];
  v75 = vaddq_s32(vaddq_s32(v63, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v65, v71))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v67, v73)))));
  v76 = vaddq_s32(vaddq_s32(v64, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v66, v72))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v68, v74)))));
  v77 = vaddq_s32(v69, vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v71, *v67)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v73, *(v67 + v5)))))));
  v78 = vaddq_s32(v70, vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v72, *v68)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v74, *(v68 + v5)))))));
  *a3 = vaddq_s32(vaddq_s32(vaddq_s32(v75, v76), vdupq_laneq_s32(v75, 2)), vdupq_laneq_s32(v76, 2)).u16[0];
  a3[1] = vaddq_s32(vaddq_s32(vaddq_s32(v77, v78), vdupq_laneq_s32(v77, 2)), vdupq_laneq_s32(v78, 2)).u16[0];
  v79 = a1[6];
  v80 = *v79;
  v81 = (v79 + v4);
  v82 = *v81;
  v83 = (v81 + v4);
  v84 = *v83;
  v85 = (v83 + v4);
  v86 = v3[1];
  v87 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v82, *v3))));
  v88 = *v85;
  v89 = (v85 + v4);
  v90 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v82, v86)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v80, *v3)))));
  v91 = *v89;
  v92 = (v89 + v4);
  v93 = v3[2];
  v94 = v3[3];
  v95 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v93, v91))));
  v96 = vaddq_s32(v90, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v84, v93)))));
  v97 = vaddq_s32(vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v84, v86)))), v87), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v88, v93)))));
  v98 = vaddq_s32(vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v86, v88)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v3, v84))))), v95);
  v99 = *v92;
  v100 = (v92 + v4);
  v101 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v91, v94))));
  v102 = *v100;
  v103 = (v100 + v4);
  v104 = v3[4];
  v105 = v3[5];
  v106 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v88, v94)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v91, v104)))));
  v107 = vaddq_s32(v101, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v99, v104)))));
  v108 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v94, v99)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v104, v102)))));
  v109 = *v103;
  v110 = (v103 + v4);
  v111 = vaddq_s32(v96, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v99, v105)))));
  v112 = vaddq_s32(v97, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v102, v105)))));
  v113 = vaddq_s32(v98, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v105, v109)))));
  v114 = v3[6];
  v115 = v3[7];
  v116 = vaddq_s32(vaddq_s32(v111, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v109, v115))))), vaddq_s32(v106, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v102, v114))))));
  v117 = vaddq_s32(vaddq_s32(v112, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v110, v115))))), vaddq_s32(v107, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v109, v114))))));
  v118 = vaddq_s32(vaddq_s32(v113, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v115, *(v110 + v4)))))), vaddq_s32(v108, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v114, *v110))))));
  a3[6] = vaddq_s32(v116, vdupq_laneq_s32(v116, 2)).u16[0];
  *&result = vaddq_s32(v118, vdupq_laneq_s32(v118, 2)).u64[0];
  a3[3] = vaddq_s32(v117, vdupq_laneq_s32(v117, 2)).u16[0];
  a3[7] = LOWORD(result);
  return result;
}

double sub_2773AC25C(uint64_t a1, uint64_t a2, _WORD *a3, int64x2_t a4, int64x2_t a5)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 20);
  v7 = *(a2 + 64);
  v8 = *(a1 + 32);
  v9 = v8 + v6;
  a4.i64[0] = *v8;
  a5.i64[0] = *(v8 + v6);
  v10 = (v8 + v5);
  v11 = &v9[v5];
  v12 = *v10;
  v13.i64[0] = *v11;
  v14 = (v10->i64 + v5);
  v15 = vzip1q_s64(a4, a5);
  a5.i64[1] = v12.i64[0];
  v16 = (v11 + v5);
  v17 = v7[1];
  v18.i64[0] = *v14;
  v19.i64[0] = *v16;
  v20 = (v14 + v5);
  v21 = (v16 + v5);
  v13.i64[1] = v18.i64[0];
  v18.i64[1] = v19.i64[0];
  v22 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v12, v17)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v15, *v7)))));
  v23 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v13, v17)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(a5, *v7)))));
  v24 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v17, v18)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v7, v12)))));
  v13.i64[0] = *v20;
  v25.i64[0] = *v21;
  v26 = (v20 + v5);
  v27 = (v21 + v5);
  v19.i64[1] = v13.i64[0];
  v13.i64[1] = v25.i64[0];
  v28 = v7[2];
  v29 = v7[3];
  v30 = vaddq_s32(v22, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v18, v28)))));
  v31 = vaddq_s32(v23, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v19, v28)))));
  v32 = vaddq_s32(v24, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v28, v13)))));
  v28.i64[0] = *v26;
  v18.i64[0] = *v27;
  v33 = (v26 + v5);
  v34 = (v27 + v5);
  v25.i64[1] = v28.i64[0];
  v28.i64[1] = v18.i64[0];
  v35 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v13, v29))));
  v36 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v25, v29))));
  v37 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v29, v28))));
  v29.i64[0] = *v33;
  v38 = v7[8];
  v39 = v7[9];
  v40 = vaddq_s32(v35, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v28, v38)))));
  v41.i64[0] = *v34;
  v42 = (v33 + v5);
  v43 = (v34 + v5);
  v18.i64[1] = v29.i64[0];
  v29.i64[1] = v41.i64[0];
  v44 = vaddq_s32(v36, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v18, v38)))));
  v45 = vaddq_s32(v37, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v38, v29)))));
  v37.i64[0] = *v42;
  v38.i64[0] = *v43;
  v46 = (v42 + v5);
  v47 = (v43 + v5);
  v41.i64[1] = v37.i64[0];
  v37.i64[1] = v38.i64[0];
  v48 = vaddq_s32(v30, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v29, v39)))));
  v49 = vaddq_s32(v31, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v41, v39)))));
  v50 = vaddq_s32(v32, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v39, v37)))));
  v51 = v7[10];
  v52 = v7[11];
  v53 = vaddq_s32(v40, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v37, v51)))));
  v37.i64[0] = *v47;
  v38.i64[1] = v46->i64[0];
  v54 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v38, v51))));
  v55 = vaddq_s32(v45, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v51, *v46)))));
  v51.i64[0] = *(v46->i64 + v5);
  v37.i64[1] = v51.i64[0];
  v51.i64[1] = *(v47 + v5);
  v56 = vaddq_s32(vaddq_s32(v48, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v46, v52))))), v53);
  v57 = vaddq_s32(vaddq_s32(v49, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v37, v52))))), vaddq_s32(v44, v54));
  v58 = vaddq_s32(vaddq_s32(v50, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v52, v51))))), v55);
  a3[4] = vaddq_s32(v56, vdupq_laneq_s32(v56, 2)).u16[0];
  a3[2] = vaddq_s32(v57, vdupq_laneq_s32(v57, 2)).u16[0];
  a3[5] = vaddq_s32(v58, vdupq_laneq_s32(v58, 2)).u16[0];
  v59 = (*a1 + v6);
  v58.i64[0] = **a1;
  v60 = (*a1 + v5);
  v61 = *v60;
  v62 = (v60 + v5);
  v63 = *v62;
  v64 = (v62 + v5);
  v58.i64[1] = *v59;
  v65 = v7[1];
  v66 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v61, v65)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v58, *v7)))));
  v67 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v65, v63)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v7, v61)))));
  v68 = *v64;
  v69 = (v64 + v5);
  v70 = *v69;
  v71 = (v69 + v5);
  v72 = v7[2];
  v73 = v7[3];
  v74 = vaddq_s32(v66, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v63, v72)))));
  v75 = vaddq_s32(v67, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v72, v68)))));
  v76 = *v71;
  v77 = (v71 + v5);
  v78 = *v77;
  v79 = (v77 + v5);
  v80 = v7[8];
  v81 = v7[9];
  v82 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v68, v73)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v70, v80)))));
  v83 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v73, v70)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v80, v76)))));
  v84 = vaddq_s32(v74, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v76, v81)))));
  v85 = vaddq_s32(v75, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v81, v78)))));
  v73.i64[0] = *(v79->i64 + v5);
  v73.i64[1] = *(v59 + v5 + v5 + v5 + v5 + v5 + v5 + v5 + v5);
  v86 = v7[10];
  v87 = v7[11];
  v88 = vaddq_s32(vaddq_s32(v84, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v79, v87))))), vaddq_s32(v82, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v78, v86))))));
  v89 = vaddq_s32(vaddq_s32(v85, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v87, v73))))), vaddq_s32(v83, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v86, *v79))))));
  v90 = vaddq_s32(v88, vdupq_laneq_s32(v88, 2));
  v91 = vaddq_s32(v89, vdupq_laneq_s32(v89, 2));
  *a3 = v90.i16[0];
  a3[1] = v91.i16[0];
  v92 = *(a1 + 48);
  v93 = (v92 + v6);
  v90.i64[0] = *v92;
  v91.i64[0] = *v93;
  v94 = (v92 + v5);
  v95 = (v93 + v5);
  v82.i64[0] = *v94;
  v76.i64[0] = *v95;
  v96 = (v94 + v5);
  v97 = vzip1q_s64(v90, v91);
  v91.i64[1] = v82.i64[0];
  v82.i64[1] = *v95;
  v98 = (v95 + v5);
  v99 = v7[1];
  v73.i64[0] = *v96;
  v78.i64[0] = *v98;
  v100 = (v96 + v5);
  v101 = (v98 + v5);
  v76.i64[1] = v73.i64[0];
  v73.i64[1] = v78.i64[0];
  v102 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v82, v99)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v97, *v7)))));
  v103 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v76, v99)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v91, *v7)))));
  v104 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v99, v73)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v7, v82)))));
  v76.i64[0] = *v100;
  v105 = (v100 + v5);
  v106 = &v101->i8[v5];
  v78.i64[1] = v76.i64[0];
  v76.i64[1] = v101->i64[0];
  v107 = v7[2];
  v108 = v7[3];
  v109 = vaddq_s32(v102, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v73, v107)))));
  v110 = vaddq_s32(v103, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v78, v107)))));
  v111 = vaddq_s32(v104, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v107, v76)))));
  v107.i64[0] = *v105;
  v73.i64[0] = *(v101->i64 + v5);
  v107.i64[1] = v73.i64[0];
  v112 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v76, v108))));
  v113 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v101, v108))));
  v114 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v108, v107))));
  v108.i64[0] = *(v105 + v5);
  v115 = v7[8];
  v116 = v7[9];
  v117 = vaddq_s32(v112, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v107, v115)))));
  v41.i64[0] = *(v101->i64 + v5 + v5);
  v118 = (v105 + v5 + v5);
  v119 = &v106[v5 + v5];
  v73.i64[1] = v108.i64[0];
  v108.i64[1] = *&v106[v5];
  v120 = vaddq_s32(v113, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v73, v115)))));
  v121 = vaddq_s32(v114, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v115, v108)))));
  v114.i64[0] = *v118;
  v115.i64[0] = *v119;
  v122 = (v118 + v5);
  v123 = (v119 + v5);
  v41.i64[1] = v114.i64[0];
  v114.i64[1] = v115.i64[0];
  v124 = vaddq_s32(v109, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v108, v116)))));
  v125 = vaddq_s32(v110, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v41, v116)))));
  v126 = vaddq_s32(v111, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v116, v114)))));
  v127 = v7[10];
  v128 = v7[11];
  v129 = vaddq_s32(v117, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v114, v127)))));
  v114.i64[0] = *v123;
  v115.i64[1] = v122->i64[0];
  v130 = vaddq_s32(v120, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v115, v127)))));
  v131 = vaddq_s32(v121, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v127, *v122)))));
  v127.i64[0] = *(v122->i64 + v5);
  v114.i64[1] = v127.i64[0];
  v127.i64[1] = *(v123 + v5);
  v132 = vaddq_s32(vaddq_s32(v124, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v122, v128))))), v129);
  v133 = vaddq_s32(vaddq_s32(v125, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v114, v128))))), v130);
  v134 = vaddq_s32(vaddq_s32(v126, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v128, v127))))), v131);
  a3[6] = vaddq_s32(v132, vdupq_laneq_s32(v132, 2)).u16[0];
  *&result = vaddq_s32(v134, vdupq_laneq_s32(v134, 2)).u64[0];
  a3[3] = vaddq_s32(v133, vdupq_laneq_s32(v133, 2)).u16[0];
  a3[7] = LOWORD(result);
  return result;
}

double sub_2773ACA1C(uint64_t a1, uint64_t a2, _WORD *a3, int64x2_t a4, int64x2_t a5)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 20);
  v7 = *(a2 + 64);
  v8 = *(a1 + 32);
  v9 = v8 + v6;
  a4.i64[0] = *v8;
  a5.i64[0] = *(v8 + v6);
  v10 = (v8 + v5);
  v11 = &v9[v5];
  v12.i64[0] = *v10;
  v13.i64[0] = *v11;
  v14 = (v10 + v5);
  v15 = vzip1q_s64(a4, a5);
  a5.i64[1] = v12.i64[0];
  v16 = (v11 + v5);
  v12.i64[1] = v13.i64[0];
  v17 = v7[1];
  v18 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v7, v12))));
  v19 = *v14;
  v20.i64[0] = *v16;
  v21 = (v14 + v5);
  v13.i64[1] = v19.i64[0];
  v22 = (v16 + v5);
  v23 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v12, v17)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v15, *v7)))));
  v24 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v13, v17)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(a5, *v7)))));
  v25 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v17, v19)))), v18);
  v18.i64[0] = *v22;
  v20.i64[1] = v21->i64[0];
  v26 = v7[2];
  v27 = v7[3];
  v28 = vaddq_s32(v23, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v19, v26)))));
  v19.i64[0] = *(v21->i64 + v5);
  v18.i64[1] = v19.i64[0];
  v19.i64[1] = *(v22 + v5);
  v29 = vaddq_s32(v28, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v21, v27)))));
  v30 = vaddq_s32(vaddq_s32(v24, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v20, v26))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v18, v27)))));
  v31 = vaddq_s32(v25, vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v26, *v21)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v27, v19))))));
  a3[4] = vaddq_s32(v29, vdupq_laneq_s32(v29, 2)).u16[0];
  a3[2] = vaddq_s32(v30, vdupq_laneq_s32(v30, 2)).u16[0];
  a3[5] = vaddq_s32(v31, vdupq_laneq_s32(v31, 2)).u16[0];
  v32 = (*a1 + v6);
  v31.i64[0] = **a1;
  v33 = (*a1 + v5);
  v34 = *v33;
  v35 = (v33 + v5);
  v36 = *v35;
  v37 = (v35 + v5);
  v31.i64[1] = *v32;
  v38 = v7[1];
  v39 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v34, v38)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v31, *v7)))));
  v40 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v38, v36)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v7, v34)))));
  v26.i64[0] = *(v37->i64 + v5);
  v26.i64[1] = *(v32 + v5 + v5 + v5 + v5);
  v41 = v7[2];
  v42 = v7[3];
  v43 = vaddq_s32(vaddq_s32(v39, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v36, v41))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v37, v42)))));
  v44 = vaddq_s32(v40, vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v41, *v37)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v42, v26))))));
  v45 = vaddq_s32(v43, vdupq_laneq_s32(v43, 2));
  v46 = vaddq_s32(v44, vdupq_laneq_s32(v44, 2));
  *a3 = v45.i16[0];
  a3[1] = v46.i16[0];
  v47 = *(a1 + 48);
  v48 = (v47 + v6);
  v45.i64[0] = *v47;
  v46.i64[0] = *v48;
  v49 = (v47 + v5);
  v50 = (v48 + v5);
  v34.i64[0] = *v49;
  v51 = (v49 + v5);
  v52 = vzip1q_s64(v45, v46);
  v46.i64[1] = v34.i64[0];
  v34.i64[1] = v50->i64[0];
  v53 = v7[1];
  v54 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v7, v34))));
  v42.i64[0] = *v51;
  v20.i64[0] = *(v50->i64 + v5);
  v42.i64[1] = v20.i64[0];
  v55 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v34, v53)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v52, *v7)))));
  v56 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v50, v53)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v46, *v7)))));
  v57 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v53, v42)))), v54);
  v41.i64[0] = *(v51 + v5);
  v54.i64[0] = *(v50->i64 + v5 + v5);
  v20.i64[1] = v41.i64[0];
  v41.i64[1] = v54.i64[0];
  v58 = v7[2];
  v59 = v7[3];
  v60 = vaddq_s32(v55, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v42, v58)))));
  v42.i64[0] = *(v51 + v5 + v5);
  v54.i64[1] = v42.i64[0];
  v42.i64[1] = *(v50->i64 + v5 + v5 + v5);
  v61 = vaddq_s32(v60, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v41, v59)))));
  v62 = vaddq_s32(vaddq_s32(v56, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v20, v58))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v54, v59)))));
  v63 = vaddq_s32(v57, vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v58, v41)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v59, v42))))));
  a3[6] = vaddq_s32(v61, vdupq_laneq_s32(v61, 2)).u16[0];
  *&result = vaddq_s32(v63, vdupq_laneq_s32(v63, 2)).u64[0];
  a3[3] = vaddq_s32(v62, vdupq_laneq_s32(v62, 2)).u16[0];
  a3[7] = LOWORD(result);
  return result;
}

double sub_2773ACE34(int *a1, uint64_t a2)
{
  v2 = *(a1 + 7);
  v3 = a1[4];
  v4 = (*(a1 + 3) + *a1 + (v3 * a1[1]));
  v5 = (v4 + (8 * v3));
  v6 = *v4;
  v7 = *v5;
  v8 = (v4 + v3);
  v9 = (v5 + v3);
  v10 = *v8;
  v11 = *v9;
  v12 = (v8 + v3);
  v13 = (v9 + v3);
  v14 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v10, v2[1])))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v6, *v2)))));
  v15 = *v12;
  v16 = *v13;
  v17 = (v12 + v3);
  v18 = (v13 + v3);
  v19 = vaddq_s32(v14, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v15, v2[2])))));
  v20 = vaddq_s32(vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v11, v2[9])))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v7, v2[8]))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v16, v2[10])))));
  v21 = *v17;
  v22 = *v18;
  v23 = (v17 + v3);
  v24 = (v18 + v3);
  v25 = *v23;
  v26 = *v24;
  v27 = (v23 + v3);
  v28 = (v24 + v3);
  v31.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v19, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v27, v2[5]))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*(v27 + v3 + v3), v2[7]))))), vaddq_s32(vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v21, v2[3])))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v25, v2[4]))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*(v27 + v3), v2[6]))))));
  v31.val[1] = vaddq_s32(vaddq_s32(vaddq_s32(v20, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v28, v2[13]))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*(v28 + v3 + v3), v2[15]))))), vaddq_s32(vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v22, v2[11])))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(v26, v2[12]))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vabdq_u8(*(v28 + v3), v2[14]))))));
  *(a2 + 24) = vqtbl2q_s8(v31, xmmword_2773B26D0).u64[0];
  v29 = vaddq_s32(v31.val[1], v31.val[0]);
  *(a2 + 16) = v29.i16[0];
  *(a2 + 18) = v29.i16[4];
  *a2 = vaddq_s32(v29, vdupq_laneq_s32(v29, 2)).u16[0];
  *&result = vaddq_s32(v31.val[0], vdupq_laneq_s32(v31.val[0], 2)).u64[0];
  *(a2 + 8) = LOWORD(result);
  *(a2 + 10) = vaddq_s32(v31.val[1], vdupq_laneq_s32(v31.val[1], 2)).u16[0];
  return result;
}

uint64_t sub_2773AD06C(uint64_t a1, unsigned int a2, int a3)
{
  result = 4294958327;
  if (!((a3 | a2) >> 16))
  {
    v5 = a3 * a2;
    if ((v5 & 0x80000000) == 0)
    {
      *(a1 + 8) = a3;
      *(a1 + 12) = a2;
      *(a1 + 20) = v5;
      *(a1 + 24) = v5;
      *(a1 + 16) = 4 * a2;
      *a1 = sub_277395300((8 * (16 * v5)));
      *(a1 + 32) = sub_2773952D8(4 * v5);
      *(a1 + 152) = sub_277395344(48 * v5);
      *(a1 + 112) = sub_2773952D8(v5);
      *(a1 + 120) = sub_2773952D8(v5);
      *(a1 + 128) = sub_2773952D8(v5);
      *(a1 + 136) = sub_2773952EC(v5);
      *(a1 + 72) = sub_2773952D8(2 * v5);
      v6 = sub_2773952EC(v5);
      *(a1 + 144) = v6;
      if (v6 && *a1 && (v7 = *(a1 + 32)) != 0 && *(a1 + 152) && *(a1 + 112) && *(a1 + 120) && *(a1 + 128) && *(a1 + 136) && *(a1 + 72))
      {
        bzero(v7, 4 * *(a1 + 20));
        *(a1 + 56) = 64;
        *(a1 + 48) = sub_277395300(0x300);
        v8 = sub_2773B1BEC();
        *(a1 + 64) = v8;
        result = 4294967188;
        if (*(a1 + 48))
        {
          if (v8)
          {
            *(a1 + 160) = sub_2773B1BEC();
            operator new[]();
          }
        }
      }

      else
      {
        return 4294967188;
      }
    }
  }

  return result;
}

uint64_t sub_2773AD200(uint64_t a1)
{
  result = sub_2773AD238(*(a1 + 8), *(a1 + 16), *(a1 + 24), 0, 0);
  *a1 = result;
  return result;
}

uint64_t sub_2773AD238(uint64_t a1, _DWORD *a2, uint64_t a3, int a4, int a5)
{
  v54 = 0;
  *(a1 + 80) = a2;
  v8 = a2[25] >> 4;
  *(a1 + 8) = v8;
  *(a1 + 20) = *(a1 + 12) * v8;
  v9 = **(a1 + 144);
  if (a4 == 1 && !a5)
  {
    v10 = 0;
    *(a1 + 20) = 0;
    return v10;
  }

  v12 = (a4 & 0xFFFFFFFD) == 1 && a5 != 0;
  v52 = v12;
  v13 = *(a1 + 168);
  sub_2773B1C78(*(a1 + 160));
  v14 = **(a1 + 144) != 0;
  v15 = *(a1 + 8) >> v14;
  v16 = v15 == 0;
  if (!v15)
  {
    v10 = 0;
LABEL_73:
    sub_2773B1C84(*(a1 + 160));
    return v10;
  }

  v51 = a3;
  v10 = 0;
  v17 = 0;
  while (2)
  {
    v18 = 0;
    v19 = *(a1 + 12);
    while (1)
    {
      v20 = (v18 * v19) << v14;
      v21 = (v18 * v19 + v19) << v14;
      LODWORD(v22) = v20;
      if (v21 > v20)
      {
        v22 = (v18 * v19) << v14;
        while (*(v13 + v22) == 20)
        {
          if (v21 == ++v22)
          {
            goto LABEL_34;
          }
        }
      }

      if (v22 == v21)
      {
        break;
      }

      if (*(v13 + v22) != 30)
      {
        v18 = v15;
      }

      if (++v18 >= v15)
      {
        if (v16)
        {
          goto LABEL_73;
        }

        v23 = 0;
        while (1)
        {
          v24 = (v23 * v19) << v14;
          v25 = (v23 * v19 + v19) << v14;
          LODWORD(v26) = v24;
          if (v25 > v24)
          {
            v26 = (v23 * v19) << v14;
            while (*(v13 + v26) == 10)
            {
              if (v25 == ++v26)
              {
                goto LABEL_64;
              }
            }
          }

          if (v26 == v25)
          {
            break;
          }

          if (*(v13 + v26) < 0xAu)
          {
            v23 = v15;
          }

          if (++v23 >= v15)
          {
            goto LABEL_73;
          }
        }

LABEL_64:
        memset((v13 + v24), 11, (v25 - v24));
        sub_2773B1C84(*(a1 + 160));
        v49 = *(a1 + 12);
        if (!(v24 % v49) && !(v25 % v49))
        {
          if (v9)
          {
            v10 = sub_2773AD684(a1, v51, v24 / v49, v25 / v49, *v42.i64, *v43.i8, v44, v45, v46, v47, v48);
          }

          else
          {
            sub_2773714C4(a1, v51, 0, v49, v24 / v49, v25 / v49, v42, v43);
          }

          sub_2773B1C78(*(a1 + 160));
          if (v25 > v24)
          {
            v39 = (*(a1 + 168) + v24);
            v40 = (v25 + ~v24) + 1;
            v41 = 20;
LABEL_61:
            memset(v39, v41, v40);
          }

          goto LABEL_62;
        }

        return 4294958327;
      }
    }

LABEL_34:
    memset((v13 + v20), 21, (v21 - v20));
    sub_2773B1C84(*(a1 + 160));
    v35 = *(a1 + 12);
    if (v20 % v35 || v21 % v35)
    {
      return 4294958327;
    }

    if (!*(a1 + 224))
    {
      if (*(a1 + 184) >= 1 && !v9)
      {
LABEL_46:
        v37 = sub_27736EC4C(a1, 0, *(a1 + 12), v20 / v35, v21 / v35, v27.n128_f64[0], v28, v29, v30, v31, v32, v33, v34);
        goto LABEL_47;
      }

LABEL_53:
      if (v9)
      {
        *(a1 + 184) = 0;
        sub_2773AE9D0(a1, a2[34], v20, v21);
        if (!v52)
        {
          sub_2773AEBAC(a1, a2[34], v20, v21);
        }
      }

      else
      {
        v38 = sub_27736CDC8(a1, 0, *(a1 + 12), v20 / v35, v21 / v35, v27.n128_f64[0], v28, v29, v30, v31, v32, v33, v34);
        if (v38)
        {
          return v38;
        }

        if (!v52)
        {
          v37 = sub_27736E078(a1, 0, v35, v20 / v35, v21 / v35);
LABEL_47:
          v10 = v37;
          if (v37)
          {
            return v10;
          }

          goto LABEL_59;
        }
      }

      v10 = 0;
      goto LABEL_59;
    }

    v36 = *(a1 + 184);
    if (!*(a1 + 225))
    {
      if (v36 >= 1 && !v9)
      {
        if (*(a1 + 226))
        {
          v53 = 0;
          v10 = sub_27736F818(a1, 0, v35, v20 / v35, v21 / v35, 0, &v53, v27, v28, v29, v30, v31, v32, v33, v34);
          goto LABEL_59;
        }

        goto LABEL_46;
      }

      goto LABEL_53;
    }

    if (v36 < 1)
    {
LABEL_59:
      sub_2773B1C78(*(a1 + 160));
      if (v21 > v20)
      {
        v39 = (*(a1 + 168) + v20);
        v40 = (v21 + ~v20) + 1;
        v41 = 30;
        goto LABEL_61;
      }

LABEL_62:
      sub_2773B1C84(*(a1 + 160));
      v13 = *(a1 + 168);
      sub_2773B1C78(*(a1 + 160));
      v14 = **(a1 + 144) != 0;
      v15 = *(a1 + 8) >> v14;
      v16 = v15 == 0;
      if (v15)
      {
        continue;
      }

      goto LABEL_73;
    }

    break;
  }

  if (!v20 && !*(a1 + 232))
  {
    *(a1 + 232) = sub_277395300((20 * a2[34] + 11 * a2[38]));
  }

  v10 = sub_27736F818(a1, 0, v35, v20 / v35, v21 / v35, v17 & 1, &v54, v27, v28, v29, v30, v31, v32, v33, v34);
  if (!v10)
  {
    v17 = 1;
    goto LABEL_59;
  }

  return v10;
}

uint64_t sub_2773AD684(uint64_t *a1, uint64_t a2, unsigned int a3, unsigned int a4, double a5, int8x8_t a6, double a7, double a8, int32x2_t a9, double a10, __n128 a11)
{
  v245 = *(a1 + 225);
  if (a3 >= a4)
  {
    return 0;
  }

  v235 = &unk_2773BA2C8 + dword_280A71168;
  v12 = *(a1 + 3);
  v13 = (4 * v12);
  v246 = 2 * v12;
  v258 = a1[6];
  v14 = *a1;
  v15 = (a1[19] + 48 * v12 * a3);
  v16 = a1[9];
  v247 = a1[4];
  v242 = 20 * v12;
  v17 = *(a2 + 104);
  v284 = a2 + 64;
  v285 = a2 + 32;
  v18 = a3;
  v227 = a4;
  v264 = 4 * a3;
  v11.i32[0] = 2;
  *&v19 = -1.31794617e58;
  v281 = *(a1 + 3);
  v280 = 4 * v12;
  v279 = *a1;
  v252 = v16;
  v294 = v17;
  do
  {
    if (!v12)
    {
      goto LABEL_412;
    }

    v20 = 0;
    v21 = ((v246 * (v18 >> 1)) | v18 & 1);
    v259 = v12 * v18;
    v244 = v18 & 0xFFFFFFFE;
    v243 = (v18 & 0xFFFFFFFE) * v12;
    v300 = 4 * v18;
    v263 = v18 & 1;
    v239 = 2 * (v18 & 1);
    v22 = 32;
    v254 = v18;
    do
    {
      v23 = v20 + v259;
      v24 = v20 + v259;
      v25 = v24 - 1;
      if (v20)
      {
        v26 = v24 - 1;
      }

      else
      {
        v26 = v259;
      }

      v27 = a1[18];
      v28 = *(v27 + v23);
      v299 = v28 == 2;
      if (v20 && v28 == 1)
      {
        v29 = 0;
        v30 = *(v27 + v25) == 2;
      }

      else
      {
        v30 = 0;
        v29 = 0;
        if (v20 && v28 == 2)
        {
          v30 = 0;
          v29 = *(v27 + v25) == 1;
        }
      }

      if (v18 > 1)
      {
        if (v263)
        {
          v45 = v21 - 1;
          v32 = v12;
          if (v28 == 2)
          {
            v45 = v21 - v246;
          }

          v310 = v45;
          if (v28 == 2)
          {
            v33 = v23 - v246;
          }

          else
          {
            v33 = v23 - v12;
          }

          if (v28 == 2)
          {
            v43 = v242;
          }

          else
          {
            v43 = v13;
          }

          v44 = 0;
        }

        else
        {
          v34 = v23 - v246;
          v35 = *(v27 + (v23 - v246));
          v36 = v21 - v246;
          v32 = v12;
          if (v35 == 2)
          {
            v37 = v21 - v246;
          }

          else
          {
            v37 = v36 + 1;
          }

          if (v35 == 2)
          {
            v33 = v23 - v246;
          }

          else
          {
            v33 = v23 - v12;
          }

          if (v35 == 2)
          {
            v38 = v242;
          }

          else
          {
            v38 = v13;
          }

          v39 = v35 == 2;
          v40 = v35 == 2;
          if (v35 == 2)
          {
            v41 = v21 - v246;
          }

          else
          {
            v41 = v36 + 1;
          }

          if (v40)
          {
            v42 = v242;
          }

          else
          {
            v34 = v23 - v12;
            v42 = v13;
          }

          if (v28 != 2)
          {
            v41 = v37;
          }

          v310 = v41;
          if (v28 == 2)
          {
            v33 = v34;
            v43 = v42;
          }

          else
          {
            v43 = v38;
          }

          v44 = v28 != 2 && v39;
        }

        v308 = v44;
      }

      else
      {
        if (v263)
        {
          v31 = v21 - 1;
          v32 = v12;
          if (v28 == 2)
          {
            v31 = v21;
          }

          v310 = v31;
          if (v28 == 2)
          {
            v33 = v20 + v259;
          }

          else
          {
            v33 = v23 - v12;
          }

          v308 = 0;
        }

        else
        {
          v32 = v12;
          v308 = 0;
          v310 = v21;
          v33 = v20 + v259;
        }

        v43 = v13;
      }

      v46 = v28 != *(v27 + v33);
      if (v28 == 2)
      {
        v47 = 1;
      }

      else
      {
        v47 = 3;
      }

      v307 = v47;
      if (v20)
      {
        v48 = v21 - 2;
      }

      else
      {
        v48 = v21;
      }

      v49 = v30 || v29;
      if (v30 || v29)
      {
        if (v20)
        {
          v48 = (v21 & 0xFFFFFFFE) - 2;
        }

        else
        {
          v48 = v21 & 0xFFFFFFFE;
        }

        if (v20)
        {
          v26 = v243 - 1 + v20;
        }

        else
        {
          v26 = v243;
        }

        v50 = v244;
      }

      else
      {
        v50 = v18;
      }

      v51 = *(a1[17] + v23);
      v15[4] = 33686018;
      v304 = v15 + 4;
      if (v51)
      {
        v52 = 0;
      }

      else
      {
        v52 = 33686018;
      }

      *v15 = 33686018;
      v15[1] = v52;
      v15[2] = 33686018;
      v15[3] = v52;
      v15[5] = v52;
      v15[6] = 33686018;
      v15[7] = v52;
      v269 = *(v16 + 2 * v23);
      v53 = v258 + 12 * *(v16 + 2 * v23);
      v288 = v15;
      v286 = v20;
      v287 = v21;
      if (*(v53 + 9) == 1)
      {
        *v15 = 0x80;
        v12 = v32;
        goto LABEL_100;
      }

      v253 = *(v53 + 9);
      v54 = *(v17 + 8 * v21);
      v55 = *(v16 + 2 * v26);
      v56 = *(v16 + 2 * v33);
      v58 = v285 <= v54 && v54 <= v284;
      if (v245 | v58)
      {
        if (*(a1[17] + v23))
        {
          v59 = 0;
        }

        else
        {
          v59 = 50529027;
        }

        v15[2] = 50529027;
        v15[3] = v59;
        v15[4] = 50529027;
        v15[5] = v59;
        v15[6] = 50529027;
        v15[7] = v59;
        v15[9] = 50529027;
        v60 = 16843009 * v22;
        *v15 = v60;
        v15[1] = v59;
        if (v49)
        {
          v15[8] = v60;
        }

        if (v46 || v299)
        {
          v61 = 3;
        }

        else
        {
          v61 = 4;
        }

        v12 = v32;
        if (v18 <= 1 && v28 == 2 || !v18)
        {
          *v304 = 538976288;
        }

        else
        {
          v62 = 16843009 * v61;
          *v304 = v62;
          v15[9] = v62;
        }

        if (v253 == 2)
        {
          *v15 = v22 | (32 * (v55 != v269));
          *(v15 + 16) = v61 | (32 * (v56 != v269));
        }

        goto LABEL_100;
      }

      v63 = bswap32(*(v247 + 4 * v23));
      v309 = *(a1[17] + v23);
      v240 = v46;
      v241 = v29;
      v283 = v33;
      v282 = v43;
      v230 = v20 + v259;
      v229 = *(v16 + 2 * v33);
      if (*(a1[17] + v23))
      {
        v64 = vbicq_s8(xmmword_2773B55F0, vceqzq_s32(vandq_s8(vdupq_n_s32(v63), xmmword_2773B55E0)));
        a6 = vextq_s8(v64, v64, 8uLL).u64[0];
        v19 = vorr_s8(*v64.i8, a6);
        v63 |= v19.i32[0] | v19.i32[1];
      }

      v65 = 0;
      v66 = v235[*(v53 + 8)];
      v67 = (4 * v20);
      v291 = v28;
      v260 = v28 != 2;
      v68 = (v63 >> 4) & 0xFFF0FFF | v63;
      v70 = v253 != 2 || v55 == v269;
      v317 = v70;
      v277 = (v21 & 0xFFFFFFFE) - 1;
      v271 = v15 + 9;
      v272 = v15 + 8;
      v275 = (v63 >> 4) & 0xFFF0000 | v63 & 0xFFF0000;
      v228 = *(v54 + 10);
      v232 = (v63 >> 28) & 3;
      v233 = v63 >> 30;
      v231 = (v63 >> 4) & 0xFFF0FFF | v63 & 0xFFFFFFF;
      v71 = 4;
      v298 = v24;
      v295 = v235[*(v53 + 8)];
      v292 = (v63 >> 4) & 0xFFF0FFF | v63;
      v293 = v67;
      v72 = v50;
      v12 = v32;
      v234 = v30;
      do
      {
        if (v65)
        {
          v26 += v12;
          ++v72;
          if (*(a1[17] + v24))
          {
            v19 = 33686018;
            v15 = v272;
            *v272 = xmmword_2773B5650;
          }

          else
          {
            v15 = v272;
            *v272 = 0x202020202020202;
            *(v272 + 1) = 0x202020202020202;
          }

          v71 = 1;
          v48 = v277;
        }

        v73 = *(v17 + 8 * v48);
        if (v68)
        {
          if (v275 == 268369920)
          {
            v71 = 1;
          }

          v74 = -1;
          v75 = v275 == 268369920;
        }

        else if ((v228 & 0xFFFD) == 0x100)
        {
          v74 = 0;
          v75 = 0;
          *&v19 = 6.01346935e-154;
          *v15 = xmmword_2773B5600;
          v71 = 1;
        }

        else
        {
          v75 = 0;
          v74 = -1;
        }

        if (!v317)
        {
          v49 = 0;
LABEL_143:
          v85 = 0;
          v86 = 0;
          *v15 = 32;
LABEL_144:
          v84 = v68;
          goto LABEL_152;
        }

        if (!v67)
        {
          goto LABEL_143;
        }

        if (v285 <= v73 && v73 <= v284)
        {
          v85 = 0;
          *v15 = 67372036;
          v86 = 1;
          goto LABEL_144;
        }

        v77 = bswap32(*(v247 + 4 * v26));
        if ((v77 & 0xCC0000) != 0)
        {
          v78 = 13382400;
        }

        else
        {
          v78 = 0;
        }

        if ((v77 & 0x330000) != 0)
        {
          v79 = 3342387;
        }

        else
        {
          v79 = 0;
        }

        v80 = v79 | v78 | v77;
        if (*(a1[17] + v26))
        {
          v77 = v80;
        }

        if (v30)
        {
          v85 = 0;
          v81 = (v77 >> 18) & 3;
          v82 = HIWORD(v77) & 3;
          if (!v263)
          {
            v82 = v81;
          }

          v83 = dword_2773BC4D0[v82];
        }

        else
        {
          if (v241)
          {
            v85 = 0;
            v87 = v233;
            if (v65)
            {
              v87 = v232;
            }

            v84 = v231 | (dword_2773BC4D0[v87] << 28) | (HIWORD(v77) << 28);
            goto LABEL_151;
          }

          v85 = 0;
          v83 = HIWORD(v77);
        }

        v84 = v68 | (v83 << 28);
LABEL_151:
        v88 = v49;
        while (v85 < v71)
        {
          if ((v85 & v309) != 0)
          {
            v86 = 0;
LABEL_156:
            *v15 = 32;
            goto LABEL_152;
          }

          v86 = v74 | (v84 >> 28) | (v85 == 0);
          if (!v86)
          {
            goto LABEL_156;
          }

          v86 = 1;
          if (v84 >> 28 != 15)
          {
            v236 = v74;
            v237 = v75;
            v238 = v26;
            v89 = v30;
            v90 = 0;
            v91 = v85 + v67;
            v92 = v85 + v67 - 1;
            if (v85)
            {
              v93 = 0;
            }

            else
            {
              v93 = v241;
            }

            if (v85)
            {
              v89 = 0;
            }

            v315 = v89;
            v312 = 4 * v72;
            v261 = v239 & 3 | (4 * v72);
            v94 = v84;
            v249 = v72;
            v250 = v49;
            v248 = v48;
            v296 = v71;
            v267 = v85 + v67;
            v289 = v85 + v67 - 1;
            v305 = v93;
            v265 = v88;
            while (1)
            {
              if (v93)
              {
                v95 = v300 + 2 * v65 + (v90 >> 1);
                v96 = v312 + v90;
              }

              else if (v315)
              {
                v96 = v261 + (v90 >> 1);
                v95 = v300 | v90;
              }

              else
              {
                v96 = v300 | v90;
                v95 = v264 + v90;
              }

              v97 = *(v14 + 8 * (v91 + v95 * v13));
              v98 = *(v14 + 8 * (v92 + v96 * v13));
              if (v97)
              {
                v99 = v98 == 0;
              }

              else
              {
                v99 = 1;
              }

              if (v99)
              {
                return 4294958327;
              }

              if ((v94 & 0x80000000) == 0)
              {
                break;
              }

LABEL_273:
              v94 *= 2;
              if (++v90 == 4)
              {
                v86 = 1;
                v75 = v237;
                v26 = v238;
                v30 = v234;
                v74 = v236;
                goto LABEL_152;
              }
            }

            if (v97 == v98)
            {
              LOBYTE(v125) = 0;
            }

            else
            {
              v100 = *(v97 + 2);
              v101 = *(v97 + 12);
              v102 = *(v98 + 2);
              v103 = *(v98 + 12);
              v104 = (*v97 - *v98);
              v105 = (v100 - v102);
              v106 = (v101 - v103);
              if (v104 < 0)
              {
                v104 = -v104;
              }

              if (v105 < 0)
              {
                v105 = -v105;
              }

              if (v106 >= 0)
              {
                LOWORD(v107) = v101 - v103;
              }

              else
              {
                v107 = -v106;
              }

              if ((v66 & 2) != 0)
              {
                if (v104 <= 3u && BYTE1(v104) == 0 && BYTE1(v105) == 0)
                {
                  v93 = v305;
                  if (v107)
                  {
                    v146 = 0;
                  }

                  else
                  {
                    v146 = v307 >= v105;
                  }

                  v125 = !v146;
                  v68 = v292;
                  v67 = v293;
                  v92 = v289;
                  if (v88)
                  {
                    v71 = v296;
                  }

                  else
                  {
                    v71 = v296;
                    if (((v125 | v260) & 1) == 0)
                    {
                      LOBYTE(v125) = (*(v97 + 8) ^ *(v98 + 8)) & 1;
                    }
                  }

                  goto LABEL_272;
                }

                LOBYTE(v125) = 1;
                v68 = v292;
                v67 = v293;
                v71 = v296;
                v92 = v289;
              }

              else
              {
                v108 = *(v97 + 4);
                v109 = *(v97 + 6);
                v110 = *(v98 + 4);
                v111 = *(v98 + 6);
                v301 = *(v97 + 12);
                v112 = (v109 - v111);
                if (v112 >= 0)
                {
                  v113 = (v109 - v111);
                }

                else
                {
                  v113 = -v112;
                }

                v114 = (v108 - v110);
                if (v114 >= 0)
                {
                  v115 = (v108 - v110);
                }

                else
                {
                  v115 = -v114;
                }

                v255 = *(v97 + 8);
                v257 = *(v97 + 9);
                v116 = (v255 >> 4) & 2 | (v257 >> 5);
                if (v116)
                {
                  v117 = 0;
                }

                else
                {
                  v117 = -1;
                }

                if (v116 == 1)
                {
                  v118 = -1;
                }

                else
                {
                  v118 = v117;
                }

                if (v116 == 2)
                {
                  v117 = -1;
                  v119 = -1;
                }

                else
                {
                  v119 = v118;
                }

                v303 = *(v98 + 12);
                if (*(v97 + 12) == v303)
                {
                  LOBYTE(v120) = BYTE1(v107);
                  LOBYTE(v121) = BYTE1(v105);
                  LOBYTE(v122) = BYTE1(v104);
                  v123 = v113 >> 8;
                  v124 = v115 >> 8;
                }

                else
                {
                  v128 = (*v97 - v110);
                  v129 = (v100 - v111);
                  v130 = (v108 - *v98);
                  v131 = (v109 - v102);
                  v132 = (v101 - (bswap32(v103) >> 16));
                  if (v128 >= 0)
                  {
                    v104 = (*v97 - v110);
                  }

                  else
                  {
                    v104 = -v128;
                  }

                  v122 = v104 >> 8;
                  if (v129 >= 0)
                  {
                    v105 = (v100 - v111);
                  }

                  else
                  {
                    v105 = -v129;
                  }

                  v121 = v105 >> 8;
                  if (v130 >= 0)
                  {
                    v115 = v130;
                  }

                  else
                  {
                    v115 = -v130;
                  }

                  v124 = v115 >> 8;
                  if (v131 >= 0)
                  {
                    v113 = v131;
                  }

                  else
                  {
                    v113 = -v131;
                  }

                  v123 = v113 >> 8;
                  if (v132 >= 0)
                  {
                    v107 = v132;
                  }

                  else
                  {
                    v107 = -v132;
                  }

                  v120 = v107 >> 8;
                }

                v133 = v101 >> 8;
                v134 = v103 >> 8;
                v135 = v117 & 3;
                v136 = v117 & v307;
                v137 = (v105 & v118);
                v138 = v124 & v117;
                v139 = v115 & v117;
                v140 = v123 & v117;
                v141 = v113 & v117;
                v142 = v107 & v119;
                v144 = (v104 & v118) > (v118 & 3u) || v137 > (v118 & v307);
                if (((v122 | v121) & v118) != 0)
                {
                  v144 = 1;
                }

                if (v138)
                {
                  v144 = 1;
                }

                if (v139 > v135)
                {
                  v144 = 1;
                }

                if (v140)
                {
                  v144 = 1;
                }

                if (v141 > v136)
                {
                  v144 = 1;
                }

                if ((v120 & v119) != 0)
                {
                  v144 = 1;
                }

                v125 = v144 || v142 != 0;
                v91 = v267;
                if (v133 == v303)
                {
                  v145 = v134;
                  if (v301 == v134)
                  {
                    v91 = v267;
                    v125 = sub_2773AEED4(v97, v98, v307 + 1, v299, v265, v19, a6);
                  }
                }

                else
                {
                  v145 = v134;
                }

                v12 = v281;
                v13 = v280;
                v14 = v279;
                v66 = v295;
                v71 = v296;
                v68 = v292;
                v67 = v293;
                v72 = v249;
                v49 = v250;
                v48 = v248;
                v92 = v289;
                v93 = v305;
                v88 = v265;
                if (v265)
                {
                  goto LABEL_272;
                }

                if (v125 || v291 != 2)
                {
                  goto LABEL_272;
                }

                v148 = *(v98 + 8) & 1;
                v149 = *(v98 + 9) & 1;
                v150 = v255 & 1;
                v151 = v257 & 1;
                if (v301 == v303 && v150 == v148 && v151 == v149 && v133 == v145)
                {
                  LOBYTE(v125) = 0;
                  goto LABEL_271;
                }

                LOBYTE(v125) = 1;
                if (v301 == v145 && v150 == v149)
                {
                  v40 = v151 == v148;
                  v93 = v305;
                  if (v40)
                  {
                    LOBYTE(v125) = v133 != v303;
                  }

                  goto LABEL_272;
                }
              }

LABEL_271:
              v93 = v305;
            }

LABEL_272:
            *(v15 + v90) = v125 | v88;
            goto LABEL_273;
          }

LABEL_152:
          v88 = 0;
          v75 |= v86;
          *v15++ |= (32 * v86) ^ 0x20;
          v84 *= 16;
          ++v85;
        }

        v146 = v65++ >= v49;
        v17 = v294;
        v24 = v298;
      }

      while (!v146);
      v152 = 0;
      v154 = v253 != 2 || v229 == v269;
      v155 = v230 - v12;
      v156 = v68 & 0xFFF;
      v157 = v156 == 4095;
      *v288 |= (v75 << 6) ^ 0x40;
      v158 = v68 << 16;
      v159 = v287 - v246 + 1;
      v160 = v228 & 0xFFFE;
      v163 = v254 == 1 && v291 == 2 || v300 == 0;
      if (v240 || v299)
      {
        v164 = 3;
      }

      else
      {
        v164 = 4;
      }

      a11.n128_u16[0] = 3;
      a11.n128_u16[2] = 3;
      a11.n128_u16[1] = v307;
      a11.n128_u16[3] = v307;
      v165 = 4;
      v270 = 16843009 * v164;
      v166 = v304;
      v266 = v230 - v12;
      v268 = v154;
      v262 = v68 & 0xFFF;
      v256 = v68 << 16;
      v251 = v163;
      v276 = a11;
      while (2)
      {
        if (v152)
        {
          v165 = 1;
          if (*(a1[17] + v24))
          {
            v19 = 33686018;
            v166 = v271;
            *v271 = xmmword_2773B5650;
          }

          else
          {
            v166 = v271;
            *v271 = 0x202020202020202;
            *(v271 + 1) = 0x202020202020202;
          }

          v310 = v159;
          v283 = v155;
          v282 = v13;
        }

        v167 = *(v17 + 8 * v310);
        if (v68)
        {
          if (v156 == 4095)
          {
            v165 = 1;
          }

          v302 = -1;
          v318 = v157;
          if (!v154)
          {
LABEL_328:
            v308 = 0;
LABEL_329:
            v168 = 0;
            LOBYTE(v174) = 0;
            *v166 = 32;
LABEL_330:
            v316 = v158;
            goto LABEL_331;
          }
        }

        else if (v160 == 256)
        {
          v302 = 0;
          v318 = 0;
          *&v19 = 6.01346935e-154;
          *v166 = xmmword_2773B5600;
          v165 = 1;
          if (!v154)
          {
            goto LABEL_328;
          }
        }

        else
        {
          v318 = 0;
          v302 = -1;
          if (!v154)
          {
            goto LABEL_328;
          }
        }

        if (v163)
        {
          goto LABEL_329;
        }

        v168 = 0;
        if (v285 <= v167 && v167 <= v284)
        {
          *v166 = v270;
          LOBYTE(v174) = 1;
          goto LABEL_330;
        }

        v170 = bswap32(*(v247 + 4 * v283));
        if ((v170 & 0x33000000) != 0)
        {
          v171 = 855638220;
        }

        else
        {
          v171 = 0;
        }

        if ((v170 & 0x330000) != 0)
        {
          v172 = 3342387;
        }

        else
        {
          v172 = 0;
        }

        v173 = v172 | v171 | v170;
        if (*(a1[17] + v283))
        {
          v170 = v173;
        }

        v316 = v158 | (v170 << 28);
        v306 = v240;
LABEL_332:
        if (v168 < v165)
        {
          if ((v168 & v309) != 0)
          {
            LOBYTE(v174) = 0;
LABEL_335:
            *v166 = 32;
            goto LABEL_331;
          }

          v174 = v302 | (v316 >> 28) | (v168 == 0);
          if (!v174)
          {
            goto LABEL_335;
          }

          LOBYTE(v174) = 1;
          if (v316 >> 28 == 15)
          {
            goto LABEL_331;
          }

          v273 = v165;
          v274 = v152;
          v175 = 0;
          v313 = (v168 + v300) * v13;
          v176 = v282;
          if (v168)
          {
            v176 = v13;
          }

          v311 = v176;
          v177 = v316;
          v178 = v306;
          v278 = v168;
          while ((v177 & 0x80000000) != 0)
          {
LABEL_406:
            v177 *= 2;
            if (++v175 == 4)
            {
              LOBYTE(v174) = 1;
              v17 = v294;
              v24 = v298;
              v152 = v274;
              v155 = v266;
              v154 = v268;
              v156 = v262;
              v158 = v256;
              v157 = v262 == 4095;
              v160 = v228 & 0xFFFE;
              v159 = v287 - v246 + 1;
              v163 = v251;
              v165 = v273;
LABEL_331:
              v306 = 0;
              v318 |= v174;
              *v166++ |= (32 * v174) ^ 0x20;
              v316 *= 16;
              ++v168;
              goto LABEL_332;
            }
          }

          v179 = (v67 | v175) + v313;
          v180 = *(v14 + 8 * v179);
          v181 = *(v14 + 8 * (v179 - v311));
          if (v180 != v181)
          {
            v182 = v180[1].u16[0];
            v183 = v180[1].u16[2];
            v184 = v181[1].u16[0];
            v185 = v181[1].u16[2];
            v186 = (v182 - v184);
            v187 = (v183 - v185);
            v19 = vabs_s16(vsub_s16(*v180, *v181));
            a6 = vshr_n_u16(v19, 8uLL);
            if (v186 >= 0)
            {
              LOWORD(v188) = v182 - v184;
            }

            else
            {
              v188 = -v186;
            }

            if (v187 >= 0)
            {
              LOWORD(v189) = v183 - v185;
            }

            else
            {
              v189 = -v187;
            }

            v190 = v180[1].i16[0];
            if ((v66 & 2) != 0)
            {
              LOBYTE(v216) = 1;
              if (v19.u8[0] <= 3u)
              {
                a6 = vtst_s32(*&vmovl_u16(a6), 0xFF000000FFLL);
                if ((a6.i8[0] & 1) == 0 && (a6.i8[4] & 1) == 0)
                {
                  v219 = !v189 && v307 >= v19.u8[2];
                  v216 = !v219;
                  if (!v216 && !v260 && !v178)
                  {
                    LOBYTE(v216) = (v182 ^ v184) & 1;
                  }
                }
              }

              goto LABEL_405;
            }

            v191 = v14;
            v192 = v68;
            v193 = v13;
            v194 = v67;
            v195 = v12;
            v196 = vext_s8(*v181, *v181, 4uLL);
            v197 = v180[1].i16[2];
            v198 = v181[1].i16[2];
            v199 = v183 >> 8;
            v200 = v185 >> 8;
            v290 = v182 >> 8;
            v201 = (v190 >> 4) & 2 | (v182 >> 13);
            if (v201)
            {
              v202 = 0;
            }

            else
            {
              v202 = -1;
            }

            if (v201 == 1)
            {
              v203 = -1;
            }

            else
            {
              v203 = v202;
            }

            v204 = v201 == 2;
            a9.i32[0] = (v190 >> 4) & 2 | (v182 >> 13);
            v205 = vdup_lane_s32(vceq_s32(a9, v11), 0);
            if (v201 == 2)
            {
              v206 = -1;
            }

            else
            {
              v206 = v203;
            }

            v207 = vbsl_s8(v205, 0xFF00000000, __PAIR64__(v202, v203));
            if (v204)
            {
              LOBYTE(v202) = 0;
            }

            v208 = vuzp1_s16(v207, v19);
            a9 = vzip1_s16(v208, v208);
            v209 = vand_s8(a9, a11.n128_u64[0]);
            v210 = (v182 - (bswap32(v184) >> 16));
            v211 = (v183 - (bswap32(v185) >> 16));
            v212 = COERCE_DOUBLE(vabs_s16(vsub_s16(*v180, v196)));
            v213 = COERCE_DOUBLE(vshr_n_u16(*&v212, 8uLL));
            if (v210 < 0)
            {
              v210 = -v210;
            }

            if (v211 < 0)
            {
              v211 = -v211;
            }

            if (v197 == v198)
            {
              LOBYTE(v210) = v188;
              v214 = BYTE1(v188);
            }

            else
            {
              v214 = BYTE1(v210);
            }

            if (v197 == v198)
            {
              LOBYTE(v211) = v189;
              v215 = BYTE1(v189);
            }

            else
            {
              v215 = BYTE1(v211);
            }

            if (v197 != v198)
            {
              *&a6 = v213;
              *&v19 = v212;
            }

            a6 = vuzp1_s8(vand_s8(a6, a9), v19);
            v19 = vcgt_u16((*&vand_s8(v19, a9) & 0xFF00FF00FF00FFLL), (*&v209 & 0xFF00FF00FF00FFLL));
            v19.i16[0] = vmaxv_u16(v19);
            v216 = (a6.i32[0] != 0) | v19.i8[0] & 1 | (((v214 | v210) & v202 | v215 & v206) != 0 || (v211 & v206) != 0);
            v297 = v181[1].i16[2];
            v217 = v199;
            if (v199 == v198)
            {
              v12 = v195;
              v67 = v194;
              v13 = v193;
              v68 = v192;
              v14 = v191;
              if (v197 == v200)
              {
                v218 = sub_2773AEED4(v180, v181, v307 + 1, v299, v178, v19, a6);
                v168 = v278;
                v178 = v306;
                a11 = v276;
                v68 = v292;
                v67 = v293;
                v14 = v279;
                v13 = v280;
                v12 = v281;
                v216 = v218;
              }
            }

            else
            {
              v12 = v195;
              v67 = v194;
              v13 = v193;
              v68 = v192;
              v14 = v191;
            }

            v221 = !v216 && v291 == 2 && v178 == 0;
            v66 = v295;
            if (!v221)
            {
LABEL_405:
              *(v166 + v175) = v216 | v178;
              goto LABEL_406;
            }

            v222 = v184 & 1;
            v223 = (v184 >> 8) & 1;
            v224 = v190 & 1;
            v225 = v290 & 1;
            if (v197 != v297 || v224 != v222 || v225 != v223 || v217 != v200)
            {
              LOBYTE(v216) = 1;
              if (v197 == v200 && v225 == v222 && v224 == v223)
              {
                LOBYTE(v216) = v217 != v297;
              }

              goto LABEL_405;
            }
          }

          LOBYTE(v216) = 0;
          goto LABEL_405;
        }

        *v304 |= (v318 << 6) ^ 0x40;
        v146 = v152++ >= v308;
        if (!v146)
        {
          continue;
        }

        break;
      }

LABEL_100:
      v15 = v288 + 12;
      v21 = v287 + 2;
      v20 = v286 + 1;
      v22 = 4;
      v16 = v252;
      v18 = v254;
    }

    while (v286 + 1 != v12);
LABEL_412:
    result = 0;
    ++v18;
    v264 += 4;
  }

  while (v18 != v227);
  return result;
}

uint64_t sub_2773AE9D0(uint64_t a1, int a2, unsigned int a3, unsigned int a4)
{
  v6 = 0;
  v7 = *(a1 + 12);
  v8 = a3 / v7;
  v9 = 2 * a2;
  if (v7 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7;
  }

  v30 = v10;
  v11 = a4 / v7;
  do
  {
    if (v8 < v11)
    {
      v12 = 16 * (v6 & 0xFFFFFFF);
      for (i = v8; i < v11; ++i)
      {
        v14 = 0;
        v15 = *(a1 + 12);
        v16 = v6 + v15 * i;
        v17 = *(a1 + 144);
        v18 = *(v17 + v16);
        if (i && v18 == 1)
        {
          v14 = *(v17 + v16 - v15) == 2;
        }

        if (v6)
        {
          if (v18 == 1)
          {
            v19 = *(v17 + v16 - 1) == 2;
            v20 = *(a1 + 152);
LABEL_19:
            v22 = (v20 + 48 * v16);
            v23 = *v22;
            v24 = v22[16] & 0xC0;
LABEL_20:
            v21 = 0;
            v28 = *(a1 + 80);
            v25 = *(v28 + 32) + v12;
            v26 = 16 * i * *(v28 + 136);
            v27 = a2;
            goto LABEL_21;
          }

          v20 = *(a1 + 152);
          if (v18 != 2)
          {
            v19 = 0;
            goto LABEL_19;
          }

          v21 = 2 * (*(v17 + v16 - 1) == 1);
          v22 = (v20 + 48 * v16);
          v23 = *v22;
          v24 = v22[16] & 0xC0;
        }

        else
        {
          v21 = 0;
          v19 = 0;
          v22 = (*(a1 + 152) + 48 * v16);
          v23 = *v22;
          v24 = v22[16] & 0xC0;
          if (v18 != 2)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v25 = *(*(a1 + 80) + 32) + v12 + 16 * v8 * *(*(a1 + 80) + 136);
        v26 = ((i << 31) >> 31) & a2;
        v27 = v9;
LABEL_21:
        if ((v23 + v24) <= 0x7F)
        {
          sub_2773AF2C4(a1, v25 + v26, v25 + v26, v6, i, v27, v22, v14, v19 | v21);
        }
      }
    }

    ++v6;
  }

  while (v6 != v30);
  return 0;
}

uint64_t sub_2773AEBAC(uint64_t a1, int a2, unsigned int a3, unsigned int a4)
{
  v6 = 0;
  v7 = *(a1 + 12);
  v8 = a3 / v7;
  v9 = 2 * a2;
  if (v7 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7;
  }

  v30 = v10;
  v11 = a4 / v7;
  do
  {
    if (v8 < v11)
    {
      v12 = 16 * (v6 & 0xFFFFFFF);
      for (i = v8; i < v11; ++i)
      {
        v14 = 0;
        v15 = *(a1 + 12);
        v16 = v6 + v15 * i;
        v17 = *(a1 + 144);
        v18 = *(v17 + v16);
        if (i && v18 == 1)
        {
          v14 = *(v17 + v16 - v15) == 2;
        }

        if (v6)
        {
          if (v18 == 1)
          {
            v19 = *(v17 + v16 - 1) == 2;
            v20 = *(a1 + 152);
LABEL_19:
            v22 = (v20 + 48 * v16);
            v23 = *v22;
            v24 = v22[16] & 0xC0;
LABEL_20:
            v21 = 0;
            v28 = *(a1 + 80);
            v25 = *(v28 + 40) + v12;
            v26 = 8 * i * *(v28 + 152);
            v27 = a2;
            goto LABEL_21;
          }

          v20 = *(a1 + 152);
          if (v18 != 2)
          {
            v19 = 0;
            goto LABEL_19;
          }

          v21 = 2 * (*(v17 + v16 - 1) == 1);
          v22 = (v20 + 48 * v16);
          v23 = *v22;
          v24 = v22[16] & 0xC0;
        }

        else
        {
          v21 = 0;
          v19 = 0;
          v22 = (*(a1 + 152) + 48 * v16);
          v23 = *v22;
          v24 = v22[16] & 0xC0;
          if (v18 != 2)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v25 = *(*(a1 + 80) + 40) + v12 + 8 * v8 * *(*(a1 + 80) + 152);
        v26 = ((i << 31) >> 31) & a2;
        v27 = v9;
LABEL_21:
        if ((v23 + v24) <= 0x7F)
        {
          sub_2773B015C(a1, v25 + v26, v25 + v26, v6, i, v27, v22, v14, v19 | v21);
        }
      }
    }

    ++v6;
  }

  while (v6 != v30);
  return 0;
}

uint64_t sub_2773AED88(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v7 = sub_2773AD238(a1, a2, a3, a5, a6);
  v8 = *(a1 + 20);
  if (v8)
  {
    v9 = *(a1 + 168);
    if (*v9 != 30)
    {
      goto LABEL_7;
    }

    v10 = 1;
    do
    {
      v11 = v10;
      if (v8 == v10)
      {
        break;
      }

      v12 = v9[v10++];
    }

    while (v12 == 30);
    if (v11 < v8)
    {
LABEL_7:
      v7 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v8 = 0;
  }

  bzero(*(a1 + 32), 4 * v8);
  return v7;
}

void sub_2773AEE14(uint64_t a1)
{
  if (a1)
  {
    sub_2773B1C38(*(a1 + 160));
    *(a1 + 160) = 0;
    v2 = *(a1 + 168);
    if (v2)
    {
      MEMORY[0x277CAC600](v2, 0x1000C8077774924);
    }

    *(a1 + 168) = 0;
    j__free(*a1);
    j__free(*(a1 + 32));
    sub_2773953A8(*(a1 + 152));
    j__free(*(a1 + 112));
    j__free(*(a1 + 120));
    j__free(*(a1 + 128));
    j__free(*(a1 + 136));
    j__free(*(a1 + 144));
    j__free(*(a1 + 72));
    j__free(*(a1 + 48));
    j__free(*(a1 + 232));
    v3 = *(a1 + 64);

    sub_2773B1C38(v3);
  }
}

uint64_t sub_2773AEED4(__int16 *a1, __int16 *a2, signed int a3, int a4, int a5, int32x2_t a6, int32x2_t a7)
{
  v7 = *(a1 + 12);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  if (a4 && !a5)
  {
    v7 = v7 & 0xFFFFFEFF | ((a1[4] & 1) << 8);
    v8 = v8 & 0xFFFFFEFF | ((a2[4] & 1) << 8);
    v9 = v9 & 0xFFFFFEFF | ((*(a2 + 9) & 1) << 8);
  }

  if (v8 == v9)
  {
    a6.i16[0] = *a1;
    a6.i16[2] = a1[2];
    a7.i16[0] = a2[3];
    a7.i16[2] = a2[1];
    v10 = vshr_n_s32(vshl_n_s32(a6, 0x10uLL), 0x10uLL);
    v11 = vshr_n_s32(vshl_n_s32(a7, 0x10uLL), 0x10uLL);
    v12 = vdup_n_s32(a3);
    v13 = vorr_s8(vcgt_u32(vorr_s8(vabd_s32(v10, vdup_n_s32(a2[2])), vrev64_s32(vabd_s32(v10, vdup_n_s32(*a2)))), 0x300000003), vorr_s8(vcge_s32(vabd_s32(vdup_n_s32(a1[1]), v11), v12), vrev64_s32(vcge_s32(vabd_s32(vdup_n_s32(a1[3]), v11), v12))));
    v14 = vand_s8(vdup_lane_s32(v13, 1), v13).u8[0];
  }

  else
  {
    v15 = *a1;
    if (v8 == v7)
    {
      v17 = v15 - *a2;
      v16 = v17 < 0;
      v18 = a1[1] - a2[1];
      v19 = a1[2] - a2[2];
      v20 = a2[3];
    }

    else
    {
      v17 = v15 - a2[2];
      v16 = v17 < 0;
      v18 = a1[1] - a2[3];
      v19 = a1[2] - *a2;
      v20 = a2[1];
    }

    v21 = a1[3] - v20;
    if (v16)
    {
      v17 = -v17;
    }

    if (v18 < 0)
    {
      v18 = -v18;
    }

    if (v19 < 0)
    {
      v19 = -v19;
    }

    if (v21 < 0)
    {
      v21 = v20 - a1[3];
    }

    v22 = v19 | v17;
    v14 = v18 >= a3 || v21 >= a3 || v22 > 3;
  }

  return v14 & 1;
}

_BYTE *sub_2773AF034(_BYTE *result, int a2, int a3, uint64_t a4, int a5, int a6, int a7)
{
  v7 = result[-a2];
  v8 = *result;
  v9 = v7 - v8;
  if (v9 * v9 < (a5 * a5))
  {
    v10 = result[-2 * a2];
    if ((v10 - v7) * (v10 - v7) < (a6 * a6))
    {
      v11 = result[a2];
      if ((v11 - v8) * (v11 - v8) < a6 * a6)
      {
        v12 = a2;
        v13 = -a2;
        v14 = -2 * a2;
        v15 = -3 * a2;
        v16 = result[-3 * a2];
        if (a3 == 4)
        {
          v17 = result[2 * a2];
          if (v9 >= 0)
          {
            v18 = v7 - v8;
          }

          else
          {
            v18 = v8 - v7;
          }

          v19 = v16 - v7;
          if ((v16 - v7) < 0)
          {
            v19 = v7 - v16;
          }

          if ((v17 - v8) >= 0)
          {
            v20 = v17 - v8;
          }

          else
          {
            v20 = v8 - v17;
          }

          v21 = a5 >> 2;
          if (v19 >= a6 || v21 + 2 <= v18)
          {
            v23 = (v7 + 2 * v10 + v11 + 2) >> 2;
            LOBYTE(v24) = v10;
          }

          else
          {
            v22 = v8 + v7 + v10;
            v23 = (v11 + 2 * v22 + v16 + 4) >> 3;
            v24 = (v22 + v16 + 2) >> 2;
            v16 = (v22 + 3 * v16 + 2 * result[-4 * v12] + 4) >> 3;
          }

          if (v20 >= a6 || v21 + 2 <= v18)
          {
            v41 = (v8 + v10 + 2 * v11 + 2) >> 2;
          }

          else
          {
            v40 = v8 + v7 + v11;
            v41 = (v10 + 2 * v40 + v17 + 4) >> 3;
            v11 = (v40 + v17 + 2) >> 2;
            v17 = (v40 + 3 * v17 + 2 * result[3 * v12] + 4) >> 3;
          }

          result[v13] = v23;
          result[v14] = v24;
          result[v15] = v16;
          *result = v41;
          result[v12] = v11;
          result[2 * v12] = v17;
        }

        else
        {
          v25 = result[2 * a2];
          if ((v16 - v7) >= 0)
          {
            v26 = v16 - v7;
          }

          else
          {
            v26 = v7 - v16;
          }

          v27 = v25 - v8;
          if (v25 - v8 < 0)
          {
            v27 = v8 - v25;
          }

          if (v26 >= a6)
          {
            v28 = a7;
          }

          else
          {
            v28 = a7 + 1;
          }

          if (v27 < a6)
          {
            ++v28;
          }

          v29 = v10 - v11 + 4 * (v8 - v7) + 4;
          v30 = v29 >> 3;
          v31 = v29 >> 3;
          if (v31 < -v28)
          {
            v32 = -v28;
          }

          else
          {
            LOWORD(v32) = v30;
          }

          if (v31 > v28)
          {
            LOWORD(v32) = v28;
          }

          v33 = (v32 + v7) & ~((v32 + v7) >> 31);
          if (v33 >= 255)
          {
            LOBYTE(v33) = -1;
          }

          v34 = (v8 - v32) & ~((v8 - v32) >> 31);
          if (v34 >= 255)
          {
            LOBYTE(v34) = -1;
          }

          if (v26 < a6)
          {
            v35 = v16 - 2 * v10 + ((v8 + v7 + 1) >> 1);
            if (v35 >> 1 < -a7)
            {
              v36 = -a7;
            }

            else
            {
              v36 = v35 >> 1;
            }

            if (a7 < v36)
            {
              LOBYTE(v36) = a7;
            }

            LOBYTE(v10) = v10 + v36;
          }

          v37 = v25 - 2 * v11 + ((v8 + v7 + 1) >> 1);
          if (v37 >> 1 < -a7)
          {
            v38 = -a7;
          }

          else
          {
            v38 = v37 >> 1;
          }

          if (a7 < v38)
          {
            LOBYTE(v38) = a7;
          }

          v39 = v11 + v38;
          result[v13] = v33;
          result[v14] = v10;
          if (v27 < a6)
          {
            LOBYTE(v11) = v39;
          }

          *result = v34;
          result[v12] = v11;
        }
      }
    }
  }

  return result;
}

unint64_t sub_2773AF2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned __int8 *a7, unsigned int a8, unsigned int a9)
{
  v154 = a4;
  result = a9;
  v180[14] = *MEMORY[0x277D85DE8];
  if (a2 != a3)
  {
    v10 = 0;
    for (i = 17; i > 1; --i)
    {
      *(a3 + v10) = *(a2 + v10);
      v10 += a6;
    }
  }

  v12 = 0;
  v13 = *(a1 + 12);
  v14 = v13 * a5;
  v149 = v13 * a5 + a4;
  v15 = *(a1 + 48) + 12 * *(*(a1 + 72) + 2 * v149);
  v16 = *(v15 + 10);
  v17 = *(v15 + 11);
  v18 = *(a1 + 112);
  v19 = *(v18 + (v13 * a5 + a4));
  v157 = v16;
  v20 = v19 + v16;
  v156 = v17;
  v145 = v19;
  v21 = v19 + v17;
  v22 = v20 & ~(v20 >> 31);
  if (v22 >= 51)
  {
    v23 = 51;
  }

  else
  {
    v23 = v22;
  }

  v24 = v21 & ~(v21 >> 31);
  v177 = byte_2773BC4E0[v23];
  if (v24 >= 51)
  {
    v24 = 51;
  }

  v25 = byte_2773BC520[v24];
  v161 = a7 + 16;
  v26 = &byte_2773BC560[4 * v23];
  do
  {
    v27 = a7[v12];
    if (v27 >= 3)
    {
      v27 = 3;
    }

    *&v179[4 * v12 + 112] = v26[v27];
    v28 = a7[v12 + 16];
    if (v28 >= 3)
    {
      v28 = 3;
    }

    v178[v12++] = v26[v28];
  }

  while (v12 != 16);
  v29 = *a7;
  v160 = a7;
  if (v29 <= 0x3F)
  {
    if (a4 && v29 < 0x20)
    {
      v30 = a4 - 1;
      if (a9)
      {
        v31 = 0;
        v32 = v145 + 1 + *(v18 + v30 + v13 * (a5 & 0xFFFFFFFE));
        v33 = v17 + (v32 >> 1);
        LODWORD(v34) = (v157 + (v32 >> 1)) & ~((v157 + (v32 >> 1)) >> 31);
        if (v34 >= 51)
        {
          v34 = 51;
        }

        else
        {
          v34 = v34;
        }

        v35 = v33 & ~(v33 >> 31);
        v169 = byte_2773BC4E0[v34];
        if (v35 >= 51)
        {
          v36 = 51;
        }

        else
        {
          v36 = v35;
        }

        v162 = byte_2773BC520[v36];
        do
        {
          v37 = a7[v31];
          if (v37 >= 3)
          {
            v37 = 3;
          }

          *(&v180[6] + v31++) = byte_2773BC560[4 * v34 + v37];
        }

        while (v31 != 16);
        v38 = v145 + 1 + *(v18 + v30 + v13 * (a5 | 1u));
        v39 = v157 + (v38 >> 1);
        v40 = v156 + (v38 >> 1);
        v41 = v39 & ~(v39 >> 31);
        if (v41 >= 51)
        {
          v42 = 51;
        }

        else
        {
          v42 = v41;
        }

        v43 = v40 & ~(v40 >> 31);
        if (v43 >= 51)
        {
          v43 = 51;
        }

        v155 = byte_2773BC4E0[v42];
        v44 = byte_2773BC520[v43];
      }

      else
      {
        v45 = 0;
        v46 = v145 + *(v18 + (v30 + v14)) + 1;
        v47 = v17 + (v46 >> 1);
        v48 = (v157 + (v46 >> 1)) & ~((v157 + (v46 >> 1)) >> 31);
        if (v48 >= 51)
        {
          v34 = 51;
        }

        else
        {
          v34 = v48;
        }

        v169 = byte_2773BC4E0[v34];
        v49 = v47 & ~(v47 >> 31);
        if (v49 >= 51)
        {
          v49 = 51;
        }

        v162 = byte_2773BC520[v49];
        do
        {
          v50 = a7[v45];
          if (v50 >= 3)
          {
            v50 = 3;
          }

          *(&v180[6] + v45++) = byte_2773BC560[4 * v34 + v50];
        }

        while (v45 != 16);
        v42 = v34;
        v155 = v169;
        v44 = v162;
      }

      v152 = v44;
      if (a9 == 2)
      {
        v146 = v42;
        v51 = 0;
        v166 = a6;
        v174 = 4 * a6;
        v52 = 1;
        v148 = &byte_2773BC560[4 * v34];
        do
        {
          v53 = v52;
          v54 = &v160[2 * v51];
          v55 = *v54;
          v56 = v54[1];
          if (v56 | v55)
          {
            if (v56 >= 3)
            {
              v57 = 3;
            }

            else
            {
              v57 = v54[1];
            }

            v58 = v148[v57];
            if (v55 >= 3)
            {
              v59 = 3;
            }

            else
            {
              v59 = v55;
            }

            v60 = v148[v59];
            v61 = (a3 + v51 * v174);
            sub_2773AF034(v61, 1, v55, a4, v169, v162, v60);
            v62 = &v61[a6];
            sub_2773AF034(v62, 1, v55, v63, v169, v162, v60);
            sub_2773AF034(&v62[a6], 1, v56, v64, v169, v162, v58);
            result = sub_2773AF034(&v62[a6 + a6], 1, v56, v65, v169, v162, v58);
          }

          v52 = 0;
          v51 = 1;
        }

        while ((v53 & 1) != 0);
        v66 = v160 + 33;
        v67 = 8 * a6;
        v68 = 2;
        v150 = &byte_2773BC560[4 * v146];
        do
        {
          v69 = *(v66 - 1);
          v70 = *v66;
          if (v70 | v69)
          {
            if (v70 >= 3)
            {
              v71 = 3;
            }

            else
            {
              v71 = *v66;
            }

            v170 = v150[v71];
            if (v69 >= 3)
            {
              v72 = 3;
            }

            else
            {
              v72 = *(v66 - 1);
            }

            v163 = v150[v72];
            sub_2773AF034((a3 + v67), 1, v69, a4, v155, v152, v163);
            v73 = (a3 + v67 + a6);
            sub_2773AF034(v73, 1, v69, v74, v155, v152, v163);
            sub_2773AF034(&v73[a6], 1, v70, v75, v155, v152, v170);
            result = sub_2773AF034(&v73[a6 + a6], 1, v70, v76, v155, v152, v170);
          }

          v66 += 2;
          v67 += v174;
          --v68;
        }

        while (v68);
      }

      else
      {
        v77 = 0;
        v78 = 0;
        v79 = a7 + 32;
        v174 = 4 * a6;
        v166 = a6;
        v147 = &byte_2773BC560[4 * v42];
        do
        {
          v80 = *(v79 - 32);
          v81 = v80;
          v82 = *(&v180[6] + v77);
          if (result == 1)
          {
            v81 = *v79;
            if (v81 >= 3)
            {
              v83 = 3;
            }

            else
            {
              v83 = *v79;
            }

            v82 = v147[v83];
          }

          if (v81 | v80)
          {
            v151 = *(&v180[6] + v77);
            sub_2773AF034((a3 + v78), 1, *(v79 - 32), a4, v169, v162, v151);
            v84 = (a3 + v78 + a6);
            sub_2773AF034(v84, 1, v81, v85, v155, v152, v82);
            v86 = &v84[a6];
            sub_2773AF034(v86, 1, v80, v87, v169, v162, v151);
            sub_2773AF034(&v86[a6], 1, v81, v88, v155, v152, v82);
            result = a9;
          }

          v77 += 4;
          ++v79;
          v78 += v174;
        }

        while (v77 != 16);
      }

      a7 = v160;
    }

    else
    {
      v174 = 4 * a6;
      v166 = a6;
    }

    v171 = v180;
    v89 = a7 + 4;
    v90 = 4;
    while (1)
    {
      v91 = a7[v90];
      v164 = v90;
      if (v91 == 4)
      {
        break;
      }

      if (v91 <= 0x1F)
      {
        goto LABEL_82;
      }

LABEL_86:
      v171 += 2;
      v89 += 4;
      v90 = v164 + 4;
      a7 = v160;
      if (v164 >= 0xC)
      {
        goto LABEL_87;
      }
    }

    v92 = &a7[v90];
    v92[1] = 4;
    *(v92 + 1) = 1028;
LABEL_82:
    v93 = 0;
    v94 = 0;
    v95 = a3 + v90;
    do
    {
      v96 = v89[v94];
      if (v89[v94])
      {
        v97 = *(v171 + v94);
        sub_2773AF034((v95 + v93), 1, v89[v94], a4, v177, v25, v97);
        sub_2773AF034((v95 + v93 + v166), 1, v96, v98, v177, v25, v97);
        v99 = (v95 + v93 + v166 + v166);
        sub_2773AF034(v99, 1, v96, v100, v177, v25, v97);
        result = sub_2773AF034(&v99[v166], 1, v96, v101, v177, v25, v97);
      }

      ++v94;
      v93 += v174;
    }

    while (v94 != 4);
    goto LABEL_86;
  }

LABEL_87:
  v102 = v161;
  v103 = *v161;
  if (v103 <= 0x3F)
  {
    v104 = a8;
    if (a5 && v103 <= 0x1F)
    {
      v105 = 0;
      v172 = 0;
      v175 = a6 << (a8 != 0);
      do
      {
        if (v104)
        {
          if ((v105 + a5) < 2)
          {
            v106 = 0;
          }

          else
          {
            v106 = *(*(a1 + 112) + (v154 + *(a1 + 12) * (a5 - 2 + v105)));
          }

          if (v105)
          {
            v102 = v160 + 36;
          }
        }

        else
        {
          v107 = *(a1 + 144);
          if (*(v107 + v149) != 2)
          {
            v110 = *(a1 + 112);
            v108 = *(a1 + 12);
            v111 = v154;
            v112 = a5 - 1;
LABEL_103:
            v106 = *(v110 + (v111 + v108 * v112));
            goto LABEL_105;
          }

          if (a5 >= 2)
          {
            v108 = *(a1 + 12);
            v109 = *(v107 + (v149 - 2 * v108));
            v110 = *(a1 + 112);
            if (v109 == 2)
            {
              v111 = v154;
              v112 = a5 - 2;
            }

            else
            {
              v111 = v154;
              v112 = (a5 & 0x7FFFFFFE) - 1;
            }

            goto LABEL_103;
          }

          v106 = 0;
        }

LABEL_105:
        v113 = 0;
        v114 = v145 + 1 + v106;
        v115 = v157 + (v114 >> 1);
        v116 = v156 + (v114 >> 1);
        LODWORD(v117) = v115 & ~(v115 >> 31);
        if (v117 >= 51)
        {
          v117 = 51;
        }

        else
        {
          v117 = v117;
        }

        v118 = v116 & ~(v116 >> 31);
        if (v118 >= 51)
        {
          v118 = 51;
        }

        v119 = byte_2773BC4E0[v117];
        v120 = byte_2773BC520[v118];
        v121 = &byte_2773BC560[4 * v117];
        do
        {
          v122 = v102[v113];
          if (v122 >= 3)
          {
            v122 = 3;
          }

          *&v179[4 * v113++ + 48] = v121[v122];
        }

        while (v113 != 16);
        v167 = v105;
        v123 = *v102;
        if (v123 == 4)
        {
          *(v102 + 1) = 1028;
          v102[3] = 4;
LABEL_117:
          v124 = 0;
          v125 = v172;
          do
          {
            v126 = v102[v124];
            if (v102[v124])
            {
              v127 = *&v179[4 * v124 + 48];
              v128 = (a3 + v125);
              sub_2773AF034(v128, v175, v102[v124], a4, v119, v120, v127);
              sub_2773AF034(v128 + 1, v175, v126, v129, v119, v120, v127);
              sub_2773AF034(v128 + 2, v175, v126, v130, v119, v120, v127);
              result = sub_2773AF034(v128 + 3, v175, v126, v131, v119, v120, v127);
            }

            ++v124;
            v125 += 4;
          }

          while (v124 != 4);
          goto LABEL_121;
        }

        if (v123 <= 0x1F)
        {
          goto LABEL_117;
        }

LABEL_121:
        v172 += a6;
        v105 = v167 + 1;
        v104 = a8;
        v102 = v161;
      }

      while (v167 + 1 <= a8);
    }

    v132 = v179;
    v176 = v160 + 20;
    v133 = 4;
    v134 = a3 + 4 * a6;
    while (1)
    {
      v135 = v102[v133];
      v173 = v133;
      if (v135 == 4)
      {
        break;
      }

      if (v135 <= 0x1F)
      {
        goto LABEL_128;
      }

LABEL_132:
      v134 += 4 * a6;
      v132 += 16;
      v176 += 4;
      v133 = v173 + 4;
      v102 = v161;
      if (v173 >= 0xC)
      {
        return result;
      }
    }

    v136 = &v102[v133];
    v136[1] = 4;
    *(v136 + 1) = 1028;
LABEL_128:
    v137 = 0;
    v138 = v176;
    do
    {
      v140 = *v138++;
      v139 = v140;
      if (v140)
      {
        v141 = *&v132[v137];
        sub_2773AF034((v134 + v137), a6, v139, a4, v177, v25, v141);
        sub_2773AF034((v134 + v137 + 1), a6, v139, v142, v177, v25, v141);
        sub_2773AF034((v134 + v137 + 2), a6, v139, v143, v177, v25, v141);
        result = sub_2773AF034((v134 + v137 + 3), a6, v139, v144, v177, v25, v141);
      }

      v137 += 4;
    }

    while (v137 != 16);
    goto LABEL_132;
  }

  return result;
}

_BYTE *sub_2773AFEA4(_BYTE *result, int a2, int a3, uint64_t a4, int a5, int a6, int a7, uint64_t a8, int a9, int a10, int a11)
{
  if (a3)
  {
    v11 = result[-3 * a2];
    v12 = result[a2];
    v13 = result[-a2];
    v14 = result[3 * a2];
    v15 = *result;
    v16 = result[-2 * a2];
    if ((v16 - v15) * (v16 - v15) < (a5 * a5))
    {
      v17 = result[-4 * a2];
      v18 = a6 * a6;
      if ((v17 - v16) * (v17 - v16) < v18)
      {
        v19 = result[2 * a2];
        if ((v19 - v15) * (v19 - v15) < v18)
        {
          if (a3 == 4)
          {
            v20 = (v19 + 2 * v17 + v16 + 2) >> 2;
            v21 = (v17 + 2 * v19 + v15 + 2) >> 2;
          }

          else
          {
            v22 = (v17 - v19 + 4 * (v15 - v16) + 4) >> 3;
            if (v22 <= ~a7)
            {
              v23 = ~a7;
            }

            else
            {
              v23 = v22;
            }

            if (v22 > a7 + 1)
            {
              v24 = a7 + 1;
            }

            else
            {
              v24 = v23;
            }

            v20 = (v24 + v16) & ~((v24 + v16) >> 31);
            if (v20 >= 255)
            {
              LOBYTE(v20) = -1;
            }

            v21 = (v15 - v24) & ~((v15 - v24) >> 31);
            if (v21 >= 255)
            {
              LOBYTE(v21) = -1;
            }
          }

          result[-2 * a2] = v20;
          *result = v21;
        }
      }
    }

    if ((v13 - v12) * (v13 - v12) < (a9 * a9) && (v11 - v13) * (v11 - v13) < (a10 * a10) && (v14 - v12) * (v14 - v12) < (a10 * a10))
    {
      v25 = (v11 - v14 + 4 * (v12 - v13) + 4) >> 3;
      if (v25 <= ~a11)
      {
        v26 = ~a11;
      }

      else
      {
        v26 = (v11 - v14 + 4 * (v12 - v13) + 4) >> 3;
      }

      if (v25 > a11 + 1)
      {
        v27 = a11 + 1;
      }

      else
      {
        v27 = v26;
      }

      v28 = (v27 + v13) & ~((v27 + v13) >> 31);
      if (v28 >= 255)
      {
        LOBYTE(v28) = -1;
      }

      v29 = (v12 - v27) & ~((v12 - v27) >> 31);
      if (v29 >= 255)
      {
        LOBYTE(v29) = -1;
      }

      v30 = (v13 + 2 * v11 + v14 + 2) >> 2;
      v31 = (v11 + v12 + 2 * v14 + 2) >> 2;
      if (a3 == 4)
      {
        v32 = v30;
      }

      else
      {
        v32 = v28;
      }

      if (a3 != 4)
      {
        LOBYTE(v31) = v29;
      }

      result[-a2] = v32;
      result[a2] = v31;
    }
  }

  return result;
}

_BYTE *sub_2773B007C(_BYTE *result, int a2, int a3, uint64_t a4, int a5, int a6, int a7)
{
  if (a3)
  {
    v7 = *result;
    v8 = result[-a2];
    if ((v8 - v7) * (v8 - v7) < (a5 * a5))
    {
      v9 = result[-2 * a2];
      if ((v9 - v8) * (v9 - v8) < (a6 * a6))
      {
        v10 = result[a2];
        if ((v10 - v7) * (v10 - v7) < (a6 * a6))
        {
          v11 = (v9 - v10 + 4 * (v7 - v8) + 4) >> 3;
          if (v11 <= ~a7)
          {
            v12 = ~a7;
          }

          else
          {
            v12 = (v9 - v10 + 4 * (v7 - v8) + 4) >> 3;
          }

          if (v11 > a7 + 1)
          {
            v13 = a7 + 1;
          }

          else
          {
            v13 = v12;
          }

          v14 = (v13 + v8) & ~((v13 + v8) >> 31);
          if (v14 >= 255)
          {
            LOBYTE(v14) = -1;
          }

          v15 = (v7 - v13) & ~((v7 - v13) >> 31);
          if (v15 >= 255)
          {
            LOBYTE(v15) = -1;
          }

          v16 = (v10 + 2 * v9 + v8 + 2) >> 2;
          v17 = (v9 + 2 * v10 + v7 + 2) >> 2;
          if (a3 != 4)
          {
            LOBYTE(v16) = v14;
            LOBYTE(v17) = v15;
          }

          result[-a2] = v16;
          *result = v17;
        }
      }
    }
  }

  return result;
}

unsigned __int8 *sub_2773B015C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, unsigned __int8 *a7, uint64_t a8, int a9)
{
  v223 = *MEMORY[0x277D85DE8];
  if (a2 != a3)
  {
    v9 = 0;
    for (i = 9; i > 1; --i)
    {
      *(a3 + v9) = *(a2 + v9);
      v9 += a6;
    }
  }

  v11 = 0;
  v12 = *(a1 + 12);
  v13 = v12 * a5;
  v179 = v12 * a5 + a4;
  v14 = *(a1 + 48) + 12 * *(*(a1 + 72) + 2 * v179);
  v15 = *(v14 + 10);
  v16 = *(v14 + 11);
  v18 = *(a1 + 120);
  v17 = *(a1 + 128);
  v19 = *(v18 + (v12 * a5 + a4));
  v20 = *(v17 + (v12 * a5 + a4));
  v21 = v19 + v15;
  v180 = v19;
  v22 = v19 + v16;
  v23 = v20 + v15;
  v178 = v20;
  v24 = v20 + v16;
  v25 = v21 & ~(v21 >> 31);
  if (v25 >= 51)
  {
    v26 = 51;
  }

  else
  {
    v26 = v25;
  }

  if ((v22 & ~(v22 >> 31)) >= 51)
  {
    v27 = 51;
  }

  else
  {
    v27 = v22 & ~(v22 >> 31);
  }

  LODWORD(v28) = v23 & ~(v23 >> 31);
  if (v28 >= 51)
  {
    v28 = 51;
  }

  else
  {
    v28 = v28;
  }

  v195 = byte_2773BC520[v27];
  v196 = byte_2773BC4E0[v26];
  if ((v24 & ~(v24 >> 31)) >= 51)
  {
    v29 = 51;
  }

  else
  {
    v29 = v24 & ~(v24 >> 31);
  }

  v193 = byte_2773BC520[v29];
  v194 = byte_2773BC4E0[v28];
  v189 = a7 + 16;
  v30 = &byte_2773BC560[4 * v26];
  do
  {
    v31 = a7[v11 + 8];
    if (v31 >= 3)
    {
      v31 = 3;
    }

    v32 = &v222[v11 + 16];
    v32[8] = v30[v31];
    v33 = a7[v11 + 24];
    if (v33 >= 3)
    {
      v33 = 3;
    }

    v221[v11++ + 72] = v30[v33];
  }

  while (v11 != 4);
  v185 = v16;
  v186 = v15;
  v187 = a8;
  v34 = 0;
  v35 = &byte_2773BC560[4 * v28];
  do
  {
    v36 = a7[v34 + 8];
    if (v36 >= 3)
    {
      v36 = 3;
    }

    v221[v34 + 40] = v35[v36];
    v37 = a7[v34 + 24];
    if (v37 >= 3)
    {
      v37 = 3;
    }

    result = &v221[v34];
    *(result + 8) = v35[v37];
    ++v34;
  }

  while (v34 != 4);
  v39 = *a7;
  if (v39 <= 0x3F)
  {
    if (a4 && v39 <= 0x1F)
    {
      v40 = a4 - 1;
      if (a9)
      {
        v41 = 0;
        v42 = v40 + v12 * (a5 & 0xFFFFFFFE);
        v43 = v180 + 1 + *(v18 + v42);
        v44 = v16 + (v43 >> 1);
        LODWORD(v45) = (v15 + (v43 >> 1)) & ~((v15 + (v43 >> 1)) >> 31);
        if (v45 >= 51)
        {
          v45 = 51;
        }

        else
        {
          v45 = v45;
        }

        v46 = v44 & ~(v44 >> 31);
        v212 = byte_2773BC4E0[v45];
        if (v46 >= 51)
        {
          v47 = 51;
        }

        else
        {
          v47 = v46;
        }

        v208 = byte_2773BC520[v47];
        v32 = a7;
        do
        {
          v48 = a7[v41];
          if (v48 >= 3)
          {
            v48 = 3;
          }

          v222[v41++ + 32] = byte_2773BC560[4 * v45 + v48];
        }

        while (v41 != 4);
        v49 = 0;
        v50 = v178 + 1 + *(v17 + v42);
        v51 = v16 + (v50 >> 1);
        LODWORD(v52) = (v15 + (v50 >> 1)) & ~((v15 + (v50 >> 1)) >> 31);
        if (v52 >= 51)
        {
          v52 = 51;
        }

        else
        {
          v52 = v52;
        }

        v53 = v51 & ~(v51 >> 31);
        v205 = byte_2773BC4E0[v52];
        if (v53 >= 51)
        {
          v54 = 51;
        }

        else
        {
          v54 = v53;
        }

        v203 = byte_2773BC520[v54];
        result = &byte_2773BC560[4 * v52];
        do
        {
          v55 = a7[v49];
          if (v55 >= 3)
          {
            v55 = 3;
          }

          v221[v49++ + 48] = result[v55];
        }

        while (v49 != 4);
        v56 = v40 + v12 * (a5 | 1);
        v57 = v180 + 1 + *(v18 + v56);
        v58 = v15 + (v57 >> 1);
        v59 = v16 + (v57 >> 1);
        v60 = v58 & ~(v58 >> 31);
        if (v60 >= 51)
        {
          v61 = 51;
        }

        else
        {
          v61 = v60;
        }

        v62 = v59 & ~(v59 >> 31);
        v201 = byte_2773BC4E0[v61];
        if (v62 >= 51)
        {
          v62 = 51;
        }

        v200 = byte_2773BC520[v62];
        v63 = v178 + 1 + *(v17 + v56);
        v64 = v15 + (v63 >> 1);
        v65 = v16 + (v63 >> 1);
        v66 = v64 & ~(v64 >> 31);
        if (v66 >= 51)
        {
          v67 = 51;
        }

        else
        {
          v67 = v66;
        }

        v68 = v65 & ~(v65 >> 31);
        if (v68 >= 51)
        {
          v68 = 51;
        }

        v198 = byte_2773BC4E0[v67];
        v69 = byte_2773BC520[v68];
      }

      else
      {
        v70 = 0;
        v71 = v40 + v13;
        v72 = v180 + *(v18 + (v40 + v13)) + 1;
        v73 = v16 + (v72 >> 1);
        LODWORD(v45) = (v15 + (v72 >> 1)) & ~((v15 + (v72 >> 1)) >> 31);
        if (v45 >= 51)
        {
          v45 = 51;
        }

        else
        {
          v45 = v45;
        }

        result = byte_2773BC4E0;
        v212 = byte_2773BC4E0[v45];
        v74 = v73 & ~(v73 >> 31);
        if (v74 >= 51)
        {
          v74 = 51;
        }

        v208 = byte_2773BC520[v74];
        v32 = a7;
        do
        {
          v75 = a7[v70];
          if (v75 >= 3)
          {
            v75 = 3;
          }

          v222[v70++ + 32] = byte_2773BC560[4 * v45 + v75];
        }

        while (v70 != 4);
        v76 = 0;
        v77 = v178 + *(v17 + v71) + 1;
        v78 = v16 + (v77 >> 1);
        v79 = (v15 + (v77 >> 1)) & ~((v15 + (v77 >> 1)) >> 31);
        if (v79 >= 51)
        {
          v52 = 51;
        }

        else
        {
          v52 = v79;
        }

        v205 = byte_2773BC4E0[v52];
        v80 = v78 & ~(v78 >> 31);
        if (v80 >= 51)
        {
          v81 = 51;
        }

        else
        {
          v81 = v80;
        }

        v203 = byte_2773BC520[v81];
        do
        {
          v82 = a7[v76];
          if (v82 >= 3)
          {
            v82 = 3;
          }

          v221[v76++ + 48] = byte_2773BC560[4 * v52 + v82];
        }

        while (v76 != 4);
        v61 = v45;
        v67 = v52;
        v198 = v205;
        v200 = v208;
        v201 = v212;
        v69 = v203;
      }

      v191 = v69;
      if (a9 == 2)
      {
        v176 = v67;
        v177 = v61;
        v83 = 0;
        v218 = 2 * a6;
        v84 = 1;
        v183 = &byte_2773BC560[4 * v52];
        v85 = &byte_2773BC560[4 * v45];
        do
        {
          v86 = v84;
          v87 = v32 + 2 * v83;
          v88 = *v87;
          v89 = v87[1];
          if (v89 | v88)
          {
            if (v89 >= 3)
            {
              v90 = 3;
            }

            else
            {
              v90 = v87[1];
            }

            v91 = v183[v90];
            v92 = v85[v90];
            if (v88 >= 3)
            {
              v93 = 3;
            }

            else
            {
              v93 = v88;
            }

            v94 = (a3 + v83 * v218);
            sub_2773AFEA4(v94, 1, v88, v32, v212, v208, v85[v93], a8, v205, v203, v183[v93]);
            result = sub_2773AFEA4(&v94[a6], 1, v89, v95, v212, v208, v92, v96, v205, v203, v91);
          }

          v84 = 0;
          v83 = 1;
          v32 = a7;
        }

        while ((v86 & 1) != 0);
        v97 = a7 + 33;
        v98 = 4 * a6;
        v99 = 2;
        v206 = &byte_2773BC560[4 * v177];
        v209 = &byte_2773BC560[4 * v176];
        do
        {
          v100 = *(v97 - 1);
          v101 = *v97;
          if (v101 | v100)
          {
            if (v101 >= 3)
            {
              v102 = 3;
            }

            else
            {
              v102 = *v97;
            }

            v103 = v209[v102];
            v213 = v206[v102];
            if (v100 >= 3)
            {
              v104 = 3;
            }

            else
            {
              v104 = *(v97 - 1);
            }

            sub_2773AFEA4((a3 + v98), 1, v100, v32, v201, v200, v206[v104], a8, v198, v191, v209[v104]);
            result = sub_2773AFEA4((a3 + v98 + a6), 1, v101, v105, v201, v200, v213, v106, v198, v191, v103);
          }

          v97 += 2;
          v98 += v218;
          --v99;
        }

        while (v99);
      }

      else
      {
        v107 = 0;
        v108 = 0;
        v109 = (v32 + 8);
        v184 = &byte_2773BC560[4 * v67];
        v110 = &byte_2773BC560[4 * v61];
        do
        {
          v111 = *(v109 - 32);
          v112 = v111;
          if (a9 == 1)
          {
            v112 = *v109;
          }

          if (v112 | v111)
          {
            if (v112 >= 3)
            {
              v113 = 3;
            }

            else
            {
              v113 = v112;
            }

            v114 = v184[v113];
            v115 = v110[v113];
            sub_2773AFEA4((a3 + v107), 1, v111, v32, v212, v208, v222[v108 + 32], a8, v205, v203, v221[v108 + 48]);
            result = sub_2773AFEA4((a3 + v107 + a6), 1, v112, v116, v201, v200, v115, v117, v198, v191, v114);
          }

          ++v108;
          ++v109;
          v107 += 2 * a6;
        }

        while (v108 != 4);
      }
    }

    v118 = a7[8];
    if (v118 == 4)
    {
      *(a7 + 9) = 1028;
      a7[11] = 4;
    }

    else if (v118 > 0x1F)
    {
      goto LABEL_121;
    }

    v119 = 0;
    v120 = 0;
    v210 = a3 + 8;
    v214 = a7 + 8;
    do
    {
      v121 = v214[v120];
      if (v214[v120])
      {
        v122 = v221[v120 + 40];
        v123 = v222[v120 + 24];
        sub_2773AFEA4((v210 + v119), 1, v121, v32, v196, v195, v123, a8, v194, v193, v122);
        result = sub_2773AFEA4((v210 + v119 + a6), 1, v121, v124, v196, v195, v123, v125, v194, v193, v122);
      }

      ++v120;
      v119 += 2 * a6;
    }

    while (v120 != 4);
  }

LABEL_121:
  v126 = a7;
  v127 = *v189;
  if (v127 > 0x3F)
  {
    return result;
  }

  v128 = v187;
  if (a5 && v127 <= 0x1F)
  {
    v129 = 0;
    v199 = 0;
    result = v222;
    v130 = a6 << (v187 != 0);
    while (1)
    {
      v192 = v129;
      if (v128)
      {
        v132 = v185;
        v131 = v186;
        if ((v129 + a5) < 2)
        {
          v134 = 0;
          v135 = 0;
        }

        else
        {
          v133 = a4 + *(a1 + 12) * (a5 - 2 + v129);
          v134 = *(*(a1 + 120) + v133);
          v135 = *(*(a1 + 128) + v133);
        }

        if (v129)
        {
          v139 = a7 + 36;
        }

        else
        {
          v139 = v189;
        }
      }

      else
      {
        v136 = *(a1 + 144);
        v132 = v185;
        v131 = v186;
        if (*(v136 + v179) == 2)
        {
          if (a5 < 2)
          {
            v134 = 0;
            v135 = 0;
          }

          else
          {
            v137 = *(a1 + 12);
            if (*(v136 + (v179 - 2 * v137)) == 2)
            {
              v138 = a5 - 2;
            }

            else
            {
              v138 = (a5 & 0x7FFFFFFE) - 1;
            }

            v141 = a4 + v137 * v138;
            v134 = *(*(a1 + 120) + v141);
            v135 = *(*(a1 + 128) + v141);
          }
        }

        else
        {
          v140 = a4 + *(a1 + 12) * (a5 - 1);
          v134 = *(*(a1 + 120) + v140);
          v135 = *(*(a1 + 128) + v140);
        }

        v139 = v189;
      }

      v142 = 0;
      v143 = v180 + 1 + v134;
      v144 = v131 + (v143 >> 1);
      v145 = v132 + (v143 >> 1);
      LODWORD(v146) = v144 & ~(v144 >> 31);
      if (v146 >= 51)
      {
        v146 = 51;
      }

      else
      {
        v146 = v146;
      }

      v147 = v145 & ~(v145 >> 31);
      if (v147 >= 51)
      {
        v147 = 51;
      }

      v215 = byte_2773BC4E0[v146];
      v211 = byte_2773BC520[v147];
      v148 = &byte_2773BC560[4 * v146];
      do
      {
        v149 = v139[v142];
        if (v149 >= 3)
        {
          v149 = 3;
        }

        v222[v142++] = v148[v149];
      }

      while (v142 != 4);
      v150 = 0;
      v151 = v178 + 1 + v135;
      v152 = v131 + (v151 >> 1);
      v153 = v132 + (v151 >> 1);
      LODWORD(v154) = v152 & ~(v152 >> 31);
      if (v154 >= 51)
      {
        v154 = 51;
      }

      else
      {
        v154 = v154;
      }

      v155 = v153 & ~(v153 >> 31);
      if (v155 >= 51)
      {
        v155 = 51;
      }

      v207 = byte_2773BC4E0[v154];
      v204 = byte_2773BC520[v155];
      v156 = &byte_2773BC560[4 * v154];
      do
      {
        v157 = v139[v150];
        if (v157 >= 3)
        {
          v157 = 3;
        }

        v221[v150++ + 16] = v156[v157];
      }

      while (v150 != 4);
      v158 = *v139;
      if (v158 == 4)
      {
        break;
      }

      if (v158 <= 0x1F)
      {
        goto LABEL_162;
      }

LABEL_166:
      v199 += a6;
      v129 = v192 + 1;
      v128 = v187;
      v126 = a7;
      if (v192 + 1 > v187)
      {
        goto LABEL_167;
      }
    }

    *(v139 + 1) = 1028;
    v139[3] = 4;
LABEL_162:
    v159 = 0;
    v160 = v199;
    v202 = v139;
    do
    {
      v161 = v139[v159];
      if (v139[v159])
      {
        v162 = v221[v159 + 16];
        v219 = v222[v159];
        v163 = (a3 + v160);
        sub_2773B007C(v163, v130, v161, v32, v215, v211, v219);
        sub_2773B007C(v163 + 1, v130, v161, v164, v207, v204, v162);
        sub_2773B007C(v163 + 2, v130, v161, v165, v215, v211, v219);
        sub_2773B007C(v163 + 3, v130, v161, v166, v207, v204, v162);
        v139 = v202;
        result = v222;
      }

      ++v159;
      v160 += 4;
    }

    while (v159 != 4);
    goto LABEL_166;
  }

LABEL_167:
  v167 = v126[24];
  if (v167 == 4)
  {
    *(v126 + 25) = 1028;
    v126[27] = 4;
  }

  else if (v167 > 0x1F)
  {
    return result;
  }

  v168 = 0;
  v216 = v126 + 24;
  v169 = 4 * a6;
  do
  {
    v170 = v216[v168];
    if (v216[v168])
    {
      v171 = v221[v168 + 8];
      v220 = v221[v168 + 72];
      v172 = (a3 + v169);
      sub_2773B007C(v172, a6, v170, v32, v196, v195, v220);
      sub_2773B007C(v172 + 1, a6, v170, v173, v194, v193, v171);
      sub_2773B007C(v172 + 2, a6, v170, v174, v196, v195, v220);
      result = sub_2773B007C(v172 + 3, a6, v170, v175, v194, v193, v171);
    }

    ++v168;
    v169 += 4;
  }

  while (v168 != 4);
  return result;
}

uint64_t sub_2773B0EE4(uint64_t a1, int a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4 >= 1 && v3 != 0)
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    if (*v3 || v3[1])
    {
      goto LABEL_10;
    }

    if (v3[2] == 1)
    {
      v16 = -3;
      v17 = 3;
    }

    else
    {
      if (v3[2] || v3[3] != 1)
      {
LABEL_10:
        *v8 = v3;
        goto LABEL_11;
      }

      v16 = -4;
      v17 = 4;
    }

    v3 += v17;
    v4 += v16;
    *v8 = v3;
    if (v4 < 1)
    {
      v11 = 1;
LABEL_21:
      result = 0;
      v13 = v4 + v3 - v8[v11 - 1];
      *(v7 + 4 * (v11 - 1)) = v13;
      if (v13)
      {
        v14 = v11;
      }

      else
      {
        v14 = v11 - 1;
      }

      *(a1 + 32) = v14;
      if (a2 && v14 >= 1)
      {
        v15 = 0;
        do
        {
          *(*(a1 + 40) + 4 * v15) = sub_27737A320(*(*(a1 + 48) + 8 * v15), *(*(a1 + 40) + 4 * v15));
          ++v15;
        }

        while (v15 < *(a1 + 32));
        return 0;
      }

      return result;
    }

LABEL_11:
    LODWORD(v9) = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v9;
      if (v10 >= 2 && v3[v9] == 1)
      {
        v9 = v9 + 1;
        if (v12 + 1 >= v4 || v11 >= *(a1 + 36))
        {
          return 4294958327;
        }

        v8[v11] = &v3[v9];
        *(v7 + 4 * (v11 - 1)) = v3 + v9 - v8[v11 - 1] + ~v10;
        ++v11;
        v12 = v9;
        v10 = 0;
      }

      if (v3[v12])
      {
        v10 = 0;
      }

      else
      {
        ++v10;
      }

      LODWORD(v9) = v9 + 1;
    }

    while (v9 < v4);
    goto LABEL_21;
  }

  *(a1 + 32) = 0;
  return 4294958327;
}

uint64_t sub_2773B106C(uint64_t a1, unsigned int a2, unsigned int a3, int a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  if (*a1)
  {
    v8 = v7 > a2;
  }

  else
  {
    v8 = 0;
  }

  if (!v8 || v7 > a3)
  {
    goto LABEL_9;
  }

  v13 = 0;
  v15 = *(a1 + 40);
  v14 = *(a1 + 48);
  v16 = v6 + v7;
  v17 = 1;
  while (1)
  {
    if (a2 == 4)
    {
      v18 = bswap32(*v6);
      goto LABEL_18;
    }

    if (a2 == 2)
    {
      v18 = bswap32(*v6) >> 16;
      goto LABEL_18;
    }

    if (a2 != 1)
    {
      break;
    }

    v18 = *v6;
LABEL_18:
    v19 = v6 + v18 + a2;
    v20 = v19 <= v16 && v19 - 1 >= v6;
    if (!v20)
    {
      goto LABEL_9;
    }

    v10 = 0;
    v21 = v6 + a2;
    *(v14 + 8 * v13) = v21;
    *(v15 + 4 * v13) = v18;
    v22 = v18;
    v23 = v13 + 1;
    v6 = &v21[v22];
    if (v6 + a2 <= v16)
    {
      v20 = v13++ >= 0x18F;
      if (!v20)
      {
        continue;
      }
    }

    goto LABEL_28;
  }

  v17 = 0;
  v10 = 4294958327;
  v23 = v13;
LABEL_28:
  *(a1 + 32) = v23;
  if (a4)
  {
    if (v23 >= 1)
    {
      v24 = 0;
      while (1)
      {
        v25 = *(*(a1 + 40) + 4 * v24);
        if ((v25 & 0x80000000) != 0)
        {
          break;
        }

        v26 = sub_27737A320(*(*(a1 + 48) + 8 * v24), v25);
        *(*(a1 + 40) + 4 * v24) = v26;
        if (a5)
        {
          *(a5 + 4 * v24) = v26;
        }

        if (++v24 >= *(a1 + 32))
        {
          goto LABEL_40;
        }
      }

LABEL_9:
      v10 = 4294958327;
LABEL_10:
      *(a1 + 32) = 0;
      return v10;
    }
  }

  else if (a5 && v23 >= 1)
  {
    v27 = 0;
    do
    {
      *(*(a1 + 40) + 4 * v27) = *(a5 + 4 * v27);
      ++v27;
    }

    while (v27 < *(a1 + 32));
  }

LABEL_40:
  if ((v17 & 1) == 0)
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_2773B11F4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    LODWORD(v5) = 0;
    v4 = 4294958327;
  }

  else
  {
    v5 = 0;
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = (v1 + v2);
    while (v1[1] == 1986688113)
    {
      v10 = *v1;
      v9 = v1 + 2;
      *(v6 + 8 * v5) = v9;
      v11 = bswap32(v10) - 8;
      *(v7 + 4 * v5++) = v11;
      v1 = (v9 + v11);
      if (v1 >= v8)
      {
        goto LABEL_11;
      }
    }

    *(v6 + 8 * v5) = 0;
    *(v7 + 4 * v5) = 0;
LABEL_11:
    v4 = 0;
  }

  *(a1 + 32) = v5;
  return v4;
}

uint64_t sub_2773B1274(uint64_t a1)
{
  sub_2773B1990(0);
  sub_2773B12A8(a1);
  return 0;
}

dispatch_semaphore_t *sub_2773B12A8(uint64_t a1)
{
  for (i = *(a1 + 16); ; i = *(a1 + 16))
  {
    sub_2773B1DE0(i);
    v3 = *(a1 + 40);
    if (!v3)
    {
      break;
    }

    v3(*(a1 + 48));
    sub_2773B1DEC(*(a1 + 24));
  }

  v4 = *(a1 + 24);

  return sub_2773B1DEC(v4);
}

uint64_t sub_2773B1304(unsigned int *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  if (a5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a5;
  }

  *(a1 + 5) = a2;
  *(a1 + 6) = a3;
  a1[8] = a4;
  result = (v6 - 1);
  *a1 = result;
  if (v6 != 1)
  {
    *(a1 + 2) = sub_2773B1D38(result, 0);
    *(a1 + 3) = sub_2773B1D38(*a1, 0);
    operator new[]();
  }

  return result;
}

intptr_t sub_2773B13C8(uint64_t a1)
{
  if (*a1)
  {
    v2 = 0;
    do
    {
      sub_2773B1DEC(*(a1 + 16));
      ++v2;
    }

    while (v2 < *a1);
  }

  result = (*(a1 + 40))(*(a1 + 48));
  if (*a1)
  {
    v4 = 0;
    do
    {
      result = sub_2773B1DE0(*(a1 + 24));
      ++v4;
    }

    while (v4 < *a1);
  }

  return result;
}

uint64_t sub_2773B1438(uint64_t result)
{
  if (*result)
  {
    v1 = result;
    v2 = 0;
    *(result + 40) = 0;
    do
    {
      sub_2773B1DEC(*(v1 + 2));
      ++v2;
    }

    while (v2 < *v1);
    if (*v1)
    {
      v3 = 0;
      do
      {
        sub_2773B1DE0(*(v1 + 3));
        ++v3;
      }

      while (v3 < *v1);
      if (*v1)
      {
        v4 = 0;
        do
        {
          sub_2773B1BB8(*(*(v1 + 1) + 8 * v4++));
        }

        while (v4 < *v1);
      }
    }

    sub_2773B1D98(*(v1 + 2));
    sub_2773B1D98(*(v1 + 3));
    *(v1 + 2) = 0;
    *(v1 + 3) = 0;
    if (*v1)
    {
      v5 = 0;
      do
      {
        sub_2773B1BAC(*(*(v1 + 1) + 8 * v5));
        *(*(v1 + 1) + 8 * v5++) = 0;
      }

      while (v5 < *v1);
    }

    result = *(v1 + 1);
    if (result)
    {
      result = MEMORY[0x277CAC600](result, 0x20C8093837F09);
    }

    *(v1 + 1) = 0;
  }

  return result;
}

uint64_t sub_2773B152C(unsigned int a1, int a2)
{
  if (a1 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a1;
  }

  v4 = malloc_type_malloc(0x30uLL, 0x10E004024023721uLL);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_16;
  }

  v4[5] = 0;
  v6 = sub_2773B1BEC();
  *v5 = v6;
  if (!v6)
  {
    goto LABEL_16;
  }

  *(v5 + 32) = v3 - 1;
  if (v3 == 1)
  {
    *(v5 + 24) = 0;
    return v5;
  }

  v7 = malloc_type_malloc(8 * (v3 - 1), 0x2004093837F09uLL);
  *(v5 + 24) = v7;
  if (!v7)
  {
    goto LABEL_16;
  }

  if (*(v5 + 32) >= 1)
  {
    v8 = 0;
    while (1)
    {
      if (v8)
      {
        *(*(v5 + 24) + 8 * v8) = sub_2773B17E0(v5, ((v8 + 1) >> 1) + 1, a2);
      }

      else
      {
        sub_2773B1EA4(1);
        **(v5 + 24) = sub_2773B17E0(v5, 1, a2);
      }

      if (!*(*(v5 + 24) + 8 * v8))
      {
        break;
      }

      if (++v8 >= *(v5 + 32))
      {
        return v5;
      }
    }

LABEL_16:
    sub_2773B1648(v5);
    return 0;
  }

  return v5;
}

void sub_2773B1648(unsigned int *a1)
{
  if (a1)
  {
    v2 = *(a1 + 3);
    v3 = a1[8];
    a1[4] = -1;
    if (v3 >= 1)
    {
      v4 = v2;
      do
      {
        sub_2773B18F0(*v4);
        sub_2773B18F8(*v4);
        v5 = *v4++;
        sub_2773B189C(v5);
        --v3;
      }

      while (v3);
    }

    free(v2);
    *(a1 + 3) = 0;
    sub_2773B1C38(*a1);
    *a1 = 0;
    os_release(*(a1 + 5));
  }

  free(a1);
}

void sub_2773B16E4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    LODWORD(v6) = *(a1 + 32);
    if (v6)
    {
      v7 = *(a1 + 24);
      *(a1 + 8) = a2;
      *(a1 + 16) = a3;
      *(a1 + 40) = voucher_copy();
      *(a1 + 20) = 1;
      v8 = v6 + 1;
      if (v6 + 1 <= a3)
      {
        v6 = v6;
      }

      else
      {
        v6 = a3 - 1;
      }

      if (v6)
      {
        v9 = v6;
        v10 = v7;
        do
        {
          v11 = *v10++;
          sub_2773B18F0(v11);
          --v9;
        }

        while (v9);
      }

      (*a2)(*(a2 + 8));
      if (v8 < a3)
      {
        sub_2773B1908(a1);
      }

      if (v6)
      {
        do
        {
          v12 = *v7++;
          sub_2773B1900(v12);
          --v6;
        }

        while (v6);
      }

      os_release(*(a1 + 40));
      *(a1 + 40) = 0;
    }

    else
    {
      v13 = a3;
      v14 = (a2 + 8);
      do
      {
        (*(v14 - 1))(*v14);
        v14 += 2;
        --v13;
      }

      while (v13);
    }
  }
}

uint64_t sub_2773B17E0(uint64_t a1, int a2, int a3)
{
  v6 = malloc_type_malloc(0x28uLL, 0x10200401C8C6399uLL);
  v7 = v6;
  if (!v6 || ((*v6 = a1, v6[1] = sub_2773B1D38(1, 0), v8 = sub_2773B1D38(1, 0), *(v7 + 24) = v8, *(v7 + 32) = a2, *(v7 + 8)) ? (v9 = v8 == 0) : (v9 = 1), v9 || (v10 = sub_2773B19A4(sub_2772AE544, v7, a3), (*(v7 + 16) = v10) == 0)))
  {
    sub_2773B189C(v7);
    return 0;
  }

  return v7;
}

void sub_2773B189C(uint64_t a1)
{
  if (a1)
  {
    sub_2773B1BAC(*(a1 + 16));
    sub_2773B1D98(*(a1 + 8));
    sub_2773B1D98(*(a1 + 24));

    free(a1);
  }
}

pthread_mutex_t *sub_2773B1908(uint64_t a1)
{
  for (i = *a1; ; i = *a1)
  {
    sub_2773B1C78(i);
    v3 = *(a1 + 20);
    if (*(a1 + 16) == v3)
    {
      break;
    }

    *(a1 + 20) = v3 + 1;
    v4 = *(a1 + 8);
    result = sub_2773B1C84(*a1);
    if (!v4)
    {
      return result;
    }

    (*(v4 + 16 * v3))(*(v4 + 16 * v3 + 8));
  }

  v6 = *a1;

  return sub_2773B1C84(v6);
}

uint64_t sub_2773B1990(const char *a1)
{
  if (!a1)
  {
    a1 = "com.apple.coremedia.JVTlib";
  }

  return pthread_setname_np(a1);
}

pthread_t *sub_2773B19A4(void *(__cdecl *a1)(void *), void *a2, int a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  if (v6)
  {
    memset(&__attr, 0, sizeof(__attr));
    if (pthread_attr_init(&__attr))
    {
LABEL_9:
      free(v6);
      return 0;
    }

    if (a3 == 27 && pthread_attr_set_qos_class_np(&__attr, QOS_CLASS_UTILITY, 0) || pthread_attr_setdetachstate(&__attr, 1) || pthread_create(v6, &__attr, a1, a2) || (v7 = pthread_mach_thread_np(*v6), v19 = 0, *thread_info_out = 0u, v18 = 0u, v15 = 0, v13 = 0u, v14 = 0u, *v12 = 0u, thread_info_outCnt = 10, thread_info(v7, 3u, thread_info_out, &thread_info_outCnt)))
    {
LABEL_8:
      pthread_attr_destroy(&__attr);
      goto LABEL_9;
    }

    switch(DWORD1(v18))
    {
      case 4:
        thread_info_outCnt = 4;
        if (thread_info(v7, 0xCu, &v14 + 2, &thread_info_outCnt))
        {
          goto LABEL_8;
        }

        v9 = &v14 + 3;
        break;
      case 2:
        thread_info_outCnt = 5;
        if (thread_info(v7, 0xBu, &v13 + 1, &thread_info_outCnt))
        {
          goto LABEL_8;
        }

        v9 = &v13 + 2;
        break;
      case 1:
        thread_info_outCnt = 5;
        if (thread_info(v7, 0xAu, v12, &thread_info_outCnt))
        {
          goto LABEL_8;
        }

        v9 = &v12[1];
        break;
      default:
        goto LABEL_8;
    }

    v11 = a3 - *v9;
    v10 = sub_2772AE5E0(*v6, 3u, &v11);
    pthread_attr_destroy(&__attr);
    if (!v10)
    {
      return v6;
    }

    goto LABEL_9;
  }

  return v6;
}

void sub_2773B1BAC(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

pthread_t *sub_2773B1BB8(pthread_t *result)
{
  v1 = 0;
  if (result)
  {
    pthread_join(*result, &v1);
    return v1;
  }

  return result;
}

pthread_mutex_t *sub_2773B1BEC()
{
  v0 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
  v1 = v0;
  if (v0)
  {
    pthread_mutex_init(v0, 0);
  }

  return v1;
}

void sub_2773B1C38(pthread_mutex_t *a1)
{
  if (a1)
  {
    pthread_mutex_destroy(a1);
  }

  free(a1);
}

pthread_mutex_t *sub_2773B1C78(pthread_mutex_t *result)
{
  if (result)
  {
    return pthread_mutex_lock(result);
  }

  return result;
}

pthread_mutex_t *sub_2773B1C84(pthread_mutex_t *result)
{
  if (result)
  {
    return pthread_mutex_unlock(result);
  }

  return result;
}

pthread_cond_t *sub_2773B1C90()
{
  v0 = malloc_type_malloc(0x30uLL, 0x1000040EED21634uLL);
  v1 = v0;
  if (v0)
  {
    pthread_cond_init(v0, 0);
  }

  return v1;
}

void sub_2773B1CDC(pthread_cond_t *a1)
{
  if (a1)
  {
    pthread_cond_destroy(a1);
  }

  free(a1);
}

pthread_cond_t *sub_2773B1D1C(pthread_cond_t *result)
{
  if (result)
  {
    return pthread_cond_broadcast(result);
  }

  return result;
}

pthread_cond_t *sub_2773B1D28(pthread_cond_t *result, pthread_mutex_t *a2)
{
  if (result)
  {
    if (a2)
    {
      return pthread_cond_wait(result, a2);
    }
  }

  return result;
}

NSObject **sub_2773B1D38(uint64_t a1, unsigned int a2)
{
  v3 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  if (v3)
  {
    v4 = dispatch_semaphore_create(a2);
    *v3 = v4;
    if (!v4)
    {
      sub_2773B1D98(v3);
      return 0;
    }
  }

  return v3;
}

void sub_2773B1D98(NSObject **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      dispatch_release(v2);
    }

    free(a1);
  }
}

dispatch_semaphore_t *sub_2773B1DEC(dispatch_semaphore_t *result)
{
  if (result)
  {
    return dispatch_semaphore_signal(*result);
  }

  return result;
}

uint64_t sub_2773B1DFC(unsigned int a1)
{
  v9 = 0;
  v8 = 4;
  if (sysctlbyname("hw.activecpu", &v9, &v8, 0, 0))
  {
    return 1;
  }

  v7 = 0;
  v6 = 4;
  v3 = sysctlbyname("hw.cputhreadtype", &v7, &v6, 0, 0);
  if (v7)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = v9;
  if (v4)
  {
    v5 = v9 / 2;
  }

  if (v5 >= a1)
  {
    return a1;
  }

  else
  {
    return v5;
  }
}

BOOL sub_2773B1EAC(int a1, unsigned int a2, atomic_uint *a3)
{
  v3 = a1;
  atomic_compare_exchange_strong(a3, &v3, a2);
  return v3 == a1;
}

void operator delete[]()
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}