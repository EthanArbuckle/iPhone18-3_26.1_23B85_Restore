void idct64x64_low16_neon(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v6 = vdupq_n_s32(1 << (a3 - 1));
  v654 = *MEMORY[0x277D85DE8];
  v7 = &av1_cospi_arr_data[64 * a3 - 639];
  v8 = vld1q_dup_f32(v7);
  v9 = a1[1];
  v10 = vmlaq_s32(v6, v8, v9);
  v11 = &av1_cospi_arr_data[64 * a3 - 577];
  v12 = vld1q_dup_f32(v11);
  v13 = vmlaq_s32(v6, v12, v9);
  v14 = av1_cospi_arr_data[64 * a3 - 592];
  v15 = &av1_cospi_arr_data[64 * a3 - 625];
  v16 = vld1q_dup_f32(v15);
  v17 = a1[14];
  v18 = a1[15];
  v19 = vmlaq_s32(v6, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 591]), v18);
  v20 = vmlaq_s32(v6, v16, v18);
  v21 = &av1_cospi_arr_data[64 * a3 - 631];
  v22 = vld1q_dup_f32(v21);
  v23 = &av1_cospi_arr_data[64 * a3 - 585];
  v24 = vld1q_dup_f32(v23);
  v25 = a1[8];
  v26 = a1[9];
  v27 = vmlaq_s32(v6, v22, v26);
  v28 = vmlaq_s32(v6, v24, v26);
  v29 = av1_cospi_arr_data[64 * a3 - 584];
  v30 = a1[6];
  v31 = a1[7];
  v32 = vmlaq_s32(v6, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 583]), v31);
  v33 = &av1_cospi_arr_data[64 * a3 - 633];
  v34 = vld1q_dup_f32(v33);
  v35 = vmlaq_s32(v6, v34, v31);
  v36 = &av1_cospi_arr_data[64 * a3 - 635];
  v37 = vld1q_dup_f32(v36);
  v39 = a1[4];
  v38 = a1[5];
  v40 = vmlaq_s32(v6, v37, v38);
  v41 = &av1_cospi_arr_data[64 * a3 - 581];
  v42 = vld1q_dup_f32(v41);
  v43 = vmlaq_s32(v6, v42, v38);
  LODWORD(v41) = av1_cospi_arr_data[64 * a3 - 588];
  v45 = a1[10];
  v44 = a1[11];
  v46 = vmlaq_s32(v6, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 587]), v44);
  v47 = &av1_cospi_arr_data[64 * a3 - 629];
  v48 = vld1q_dup_f32(v47);
  v49 = vmlaq_s32(v6, v48, v44);
  LODWORD(v47) = av1_cospi_arr_data[64 * a3 - 580];
  v50 = &av1_cospi_arr_data[64 * a3 - 637];
  v51 = vld1q_dup_f32(v50);
  v53 = a1[2];
  v52 = a1[3];
  v54 = vmlaq_s32(v6, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 579]), v52);
  v55 = vmlaq_s32(v6, v51, v52);
  v56 = &av1_cospi_arr_data[64 * a3 - 627];
  v57 = vld1q_dup_f32(v56);
  v58 = &av1_cospi_arr_data[64 * a3 - 589];
  v59 = vld1q_dup_f32(v58);
  v61 = a1[12];
  v60 = a1[13];
  v62 = vmlaq_s32(v6, v57, v60);
  v63 = vmlaq_s32(v6, v59, v60);
  v64 = &av1_cospi_arr_data[64 * a3 - 638];
  v65 = vld1q_dup_f32(v64);
  v644 = vmlaq_s32(v6, v65, v53);
  v66 = &av1_cospi_arr_data[64 * a3 - 578];
  v67 = vld1q_dup_f32(v66);
  v642 = vmlaq_s32(v6, v67, v53);
  v638 = vmlaq_s32(v6, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 590]), v17);
  v68 = &av1_cospi_arr_data[64 * a3 - 626];
  v69 = vld1q_dup_f32(v68);
  v634 = vmlaq_s32(v6, v69, v17);
  v70 = &av1_cospi_arr_data[64 * a3 - 630];
  v71 = vld1q_dup_f32(v70);
  v626 = vmlaq_s32(v6, v71, v45);
  v72 = &av1_cospi_arr_data[64 * a3 - 586];
  v73 = vld1q_dup_f32(v72);
  v619 = vmlaq_s32(v6, v73, v45);
  v74 = &av1_cospi_arr_data[64 * a3 - 634];
  v75 = vld1q_dup_f32(v74);
  v76 = vmlaq_s32(v6, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 582]), v30);
  v77 = vmlaq_s32(v6, v75, v30);
  v78 = av1_cospi_arr_data[64 * a3 - 636];
  v79 = vdupq_n_s32(v78);
  v609 = vmlaq_s32(v6, v79, v39);
  v80 = vdupq_n_s32(v47);
  v607 = vmlaq_s32(v6, v80, v39);
  v81 = vdupq_n_s32(-v41);
  LODWORD(v74) = av1_cospi_arr_data[64 * a3 - 628];
  v82 = vdupq_n_s32(-a3);
  v83 = vdupq_n_s32(v74);
  v603 = vmlaq_s32(v6, v83, v61);
  v605 = vmlaq_s32(v6, v81, v61);
  v583 = vshlq_s32(v20, v82);
  v84 = vshlq_s32(v19, v82);
  v611 = vmlaq_s32(vmlaq_s32(v6, vdupq_n_s32(-v78), v583), vdupq_n_s32(-v47), v84);
  v577 = v84;
  LODWORD(v47) = av1_cospi_arr_data[64 * a3 - 604];
  v623 = vshlq_s32(v35, v82);
  v574 = vshlq_s32(v32, v82);
  v85 = av1_cospi_arr_data[64 * a3 - 612];
  v86 = vmlaq_s32(vmlaq_s32(v6, vdupq_n_s32(-v47), v623), vdupq_n_s32(-v85), v574);
  v631 = vshlq_s32(v27, v82);
  v565 = vshlq_s32(v28, v82);
  v87 = vdupq_n_s32(v47);
  v88 = vdupq_n_s32(v85);
  v89 = vmlaq_s32(vmlsq_s32(v6, v565, v87), v88, v631);
  v592 = vmlaq_s32(vmlaq_s32(v6, v87, v631), v88, v565);
  v595 = vmlaq_s32(vmlsq_s32(v6, v574, v87), v88, v623);
  v586 = vshlq_s32(v10, v82);
  v572 = vshlq_s32(v13, v82);
  v90 = vmlaq_s32(vmlsq_s32(v6, v572, v79), v80, v586);
  v580 = vmlaq_s32(vmlsq_s32(v6, v84, v79), v80, v583);
  v91 = vmlaq_s32(vmlaq_s32(v6, v79, v586), v80, v572);
  v92 = vshlq_s32(v49, v82);
  LODWORD(v47) = av1_cospi_arr_data[64 * a3 - 620];
  v93 = vshlq_s32(v46, v82);
  v94 = av1_cospi_arr_data[64 * a3 - 596];
  v95 = vmlaq_s32(vmlaq_s32(v6, vdupq_n_s32(-v47), v92), vdupq_n_s32(-v94), v93);
  v96 = v93;
  v97 = vshlq_s32(v55, v82);
  v98 = vshlq_s32(v54, v82);
  v99 = vmlaq_s32(vmlaq_s32(v6, v81, v97), vdupq_n_s32(-v74), v98);
  v100 = vdupq_n_s32(v41);
  v560 = v98;
  v562 = vshlq_s32(v63, v82);
  v647 = vshlq_s32(v62, v82);
  v101 = vmlaq_s32(vmlaq_s32(v6, v100, v562), v83, v647);
  v102 = vmlaq_s32(vmlsq_s32(v6, v98, v100), v83, v97);
  v103 = v97;
  v480 = v97;
  v104 = vmlaq_s32(vmlaq_s32(v6, v100, v647), v83, v562);
  v105 = vshlq_s32(v40, v82);
  v106 = vshlq_s32(v43, v82);
  v107 = vdupq_n_s32(v47);
  v108 = v96;
  v516 = v96;
  v109 = vdupq_n_s32(v94);
  v110 = vmlaq_s32(vmlsq_s32(v6, v106, v107), v109, v105);
  v111 = v105;
  v486 = v105;
  v488 = v92;
  v112 = vmlaq_s32(vmlsq_s32(v6, v96, v107), v109, v92);
  v113 = av1_cospi_arr_data[64 * a3 - 632];
  v114 = vdupq_n_s32(v113);
  v115 = vmlaq_s32(vmlaq_s32(v6, v107, v105), v109, v106);
  v530 = v106;
  v600 = vmlaq_s32(v6, v114, v25);
  v535 = vdupq_n_s32(v29);
  v598 = vmlaq_s32(v6, v535, v25);
  v116 = vshlq_s32(v76, v82);
  v650 = vshlq_s32(v77, v82);
  v117 = vshlq_s32(v101, v82);
  v118 = vshlq_s32(v99, v82);
  v538 = v117;
  v541 = v118;
  v119 = av1_cospi_arr_data[64 * a3 - 600];
  v120 = vdupq_n_s32(-v119);
  v121 = vmlaq_s32(v6, v120, v650);
  if (a4)
  {
    v122 = 6;
  }

  else
  {
    v122 = 8;
  }

  v123 = v122 + a5;
  v124 = av1_cospi_arr_data[64 * a3 - 616];
  v125 = vdupq_n_s32(-v124);
  v589 = vmlaq_s32(v121, v125, v116);
  v629 = v116;
  if (v123 <= 15)
  {
    v126 = 0x8000;
  }

  else
  {
    v126 = 1 << (v123 - 1);
  }

  v127 = vdupq_n_s32(-v126);
  v128 = vdupq_n_s32(v126 - 1);
  v129 = vminq_s32(vmaxq_s32(vsubq_s32(v98, v562), v127), v128);
  v130 = vminq_s32(vmaxq_s32(vsubq_s32(v118, v117), v127), v128);
  v131 = vmlaq_s32(v6, v129, v125);
  v132 = vmlaq_s32(v6, v130, v125);
  v133 = vdupq_n_s32(v119);
  v134 = vmlsq_s32(v6, v133, v130);
  v135 = vminq_s32(vmaxq_s32(vsubq_s32(v106, v108), v127), v128);
  v136 = vdupq_n_s32(v124);
  v137 = vmlsq_s32(v6, v133, v135);
  v138 = vmlaq_s32(v6, v135, v136);
  v513 = vshlq_s32(v110, v82);
  v502 = vshlq_s32(v95, v82);
  v139 = vminq_s32(vmaxq_s32(vsubq_s32(v513, v502), v127), v128);
  v140 = vmlsq_s32(v6, v133, v139);
  v141 = vmlaq_s32(v6, v139, v136);
  v491 = vshlq_s32(v115, v82);
  v494 = vshlq_s32(v112, v82);
  v142 = vminq_s32(vmaxq_s32(vsubq_s32(v491, v494), v127), v128);
  v550 = vmlaq_s32(v140, v142, v136);
  v554 = vmlaq_s32(v141, v142, v133);
  v616 = vshlq_s32(v626, v82);
  v620 = vshlq_s32(v619, v82);
  v143 = vminq_s32(vmaxq_s32(vsubq_s32(v111, v92), v127), v128);
  v552 = vmlaq_s32(v138, v143, v133);
  v144 = vmlaq_s32(v137, v143, v136);
  v482 = vshlq_s32(v104, v82);
  v484 = vshlq_s32(v102, v82);
  v145 = vminq_s32(vmaxq_s32(vsubq_s32(v103, v647), v127), v128);
  v146 = vminq_s32(vmaxq_s32(vsubq_s32(v484, v482), v127), v128);
  v532 = vmlaq_s32(v131, v145, v120);
  v544 = vmlaq_s32(v132, v146, v120);
  v546 = vmlaq_s32(vmlsq_s32(v6, v133, v129), v145, v136);
  v548 = vmlaq_s32(v134, v146, v136);
  v147 = vmlaq_s32(vmlsq_s32(v6, v620, v133), v136, v616);
  v519 = vmlaq_s32(vmlsq_s32(v6, v116, v133), v136, v650);
  v508 = vmlaq_s32(vmlaq_s32(v6, v133, v616), v136, v620);
  v148 = vshlq_s32(v638, v82);
  v614 = vshlq_s32(v634, v82);
  v639 = vshlq_s32(v89, v82);
  v635 = vshlq_s32(v86, v82);
  v149 = vdupq_n_s32(-v113);
  v150 = vdupq_n_s32(-v29);
  v524 = vmlaq_s32(vmlaq_s32(v6, v149, v614), v150, v148);
  v151 = v148;
  v627 = v148;
  v152 = vminq_s32(vmaxq_s32(vsubq_s32(v574, v565), v127), v128);
  v153 = vminq_s32(vmaxq_s32(vsubq_s32(v635, v639), v127), v128);
  v154 = vmlaq_s32(v6, v152, v150);
  v155 = vmlaq_s32(v6, v153, v150);
  v156 = vmlsq_s32(v6, v114, v153);
  v157 = vmlsq_s32(v6, v114, v152);
  v158 = vminq_s32(vmaxq_s32(vsubq_s32(v572, v577), v127), v128);
  v159 = vshlq_s32(v90, v82);
  v160 = vshlq_s32(v611, v82);
  v161 = vminq_s32(vmaxq_s32(vsubq_s32(v159, v160), v127), v128);
  v162 = vmlsq_s32(v6, v114, v161);
  v163 = vmlaq_s32(v6, v161, v535);
  v164 = vshlq_s32(v580, v82);
  v165 = vshlq_s32(v91, v82);
  v166 = vminq_s32(vmaxq_s32(vsubq_s32(v165, v164), v127), v128);
  v558 = vmlaq_s32(v162, v166, v535);
  v570 = vmlaq_s32(v163, v166, v114);
  v167 = vshlq_s32(v642, v82);
  v612 = vshlq_s32(v644, v82);
  v168 = vminq_s32(vmaxq_s32(vsubq_s32(v586, v583), v127), v128);
  v568 = vmlaq_s32(vmlaq_s32(v6, v158, v535), v168, v114);
  v556 = vmlaq_s32(vmlsq_s32(v6, v114, v158), v168, v535);
  v169 = vshlq_s32(v595, v82);
  v170 = vshlq_s32(v592, v82);
  v171 = vminq_s32(vmaxq_s32(vsubq_s32(v623, v631), v127), v128);
  v172 = vminq_s32(vmaxq_s32(vsubq_s32(v169, v170), v127), v128);
  v511 = vmlaq_s32(v154, v171, v149);
  v527 = vmlaq_s32(v155, v172, v149);
  v521 = vmlaq_s32(v156, v172, v535);
  v504 = vmlaq_s32(vmlsq_s32(v6, v151, v114), v535, v614);
  v506 = vmlaq_s32(v157, v171, v535);
  v497 = vmlaq_s32(vmlsq_s32(v6, v167, v114), v535, v612);
  v500 = vmlaq_s32(vmlaq_s32(v6, v114, v612), v535, v167);
  v490 = v167;
  v652 = v127;
  v173 = vmaxq_s32(vaddq_s32(v160, v159), v127);
  v174 = vmaxq_s32(vaddq_s32(v562, v560), v127);
  v175 = vmaxq_s32(vaddq_s32(v541, v538), v127);
  v176 = vmaxq_s32(vaddq_s32(v623, v631), v127);
  v651 = v128;
  v624 = vminq_s32(v173, v128);
  v563 = vminq_s32(vmaxq_s32(vaddq_s32(v577, v572), v127), v128);
  v566 = vminq_s32(vmaxq_s32(vaddq_s32(v574, v565), v127), v128);
  v542 = vminq_s32(vmaxq_s32(vaddq_s32(v635, v639), v127), v128);
  v640 = vminq_s32(vmaxq_s32(vaddq_s32(v516, v530), v127), v128);
  v632 = vminq_s32(vmaxq_s32(vaddq_s32(v502, v513), v127), v128);
  v636 = vminq_s32(v174, v128);
  v177 = vminq_s32(v175, v128);
  v503 = vminq_s32(vmaxq_s32(vaddq_s32(v647, v480), v127), v128);
  v648 = vminq_s32(vmaxq_s32(vaddq_s32(v482, v484), v127), v128);
  v645 = vminq_s32(vmaxq_s32(vaddq_s32(v488, v486), v127), v128);
  v178 = vminq_s32(vmaxq_s32(vaddq_s32(v491, v494), v127), v128);
  v487 = vminq_s32(v176, v128);
  v489 = vminq_s32(vmaxq_s32(vaddq_s32(v583, v586), v127), v128);
  v536 = vminq_s32(vmaxq_s32(vaddq_s32(v170, v169), v127), v128);
  v539 = vminq_s32(vmaxq_s32(vaddq_s32(v165, v164), v127), v128);
  v179 = &av1_cospi_arr_data[64 * a3 - 608];
  v180 = vld1q_dup_f32(v179);
  v514 = vshlq_s32(v147, v82);
  v517 = vshlq_s32(v589, v82);
  v181 = av1_cospi_arr_data[64 * a3 - 624];
  v182 = vminq_s32(vmaxq_s32(vsubq_s32(v517, v514), v127), v128);
  v183 = vdupq_n_s32(-v14);
  v184 = vdupq_n_s32(v181);
  v492 = vshlq_s32(v519, v82);
  v495 = vshlq_s32(v508, v82);
  v185 = vminq_s32(vmaxq_s32(vsubq_s32(v492, v495), v652), v128);
  v186 = vdupq_n_s32(-v181);
  v187 = vdupq_n_s32(v14);
  v593 = vmlaq_s32(vmlsq_s32(v6, v184, v182), v185, v187);
  v596 = vmlaq_s32(vmlaq_s32(v6, v182, v183), v185, v186);
  v188 = vminq_s32(vmaxq_s32(vsubq_s32(v629, v620), v652), v651);
  v189 = vmlaq_s32(v6, v188, v183);
  v190 = vmlsq_s32(v6, v184, v188);
  v191 = vminq_s32(vmaxq_s32(vsubq_s32(v650, v616), v652), v651);
  v587 = vmlaq_s32(v189, v191, v186);
  v590 = vmlaq_s32(v190, v191, v187);
  v192 = vminq_s32(vmaxq_s32(vsubq_s32(v167, v627), v652), v651);
  v193 = vmlsq_s32(v6, v184, v192);
  v194 = vmlaq_s32(v6, v192, v187);
  v195 = vminq_s32(vmaxq_s32(vsubq_s32(v612, v614), v652), v651);
  v581 = vmlaq_s32(v193, v195, v187);
  v584 = vmlaq_s32(v194, v195, v184);
  v478 = vshlq_s32(v497, v82);
  v479 = vshlq_s32(v524, v82);
  v196 = vminq_s32(vmaxq_s32(vsubq_s32(v478, v479), v652), v651);
  v197 = vmlsq_s32(v6, v184, v196);
  v198 = vmlaq_s32(v6, v196, v187);
  v476 = vshlq_s32(v504, v82);
  v477 = vshlq_s32(v500, v82);
  v199 = vminq_s32(vmaxq_s32(vsubq_s32(v477, v476), v652), v651);
  v575 = vmlaq_s32(v197, v199, v187);
  v578 = vmlaq_s32(v198, v199, v184);
  v200 = vminq_s32(vmaxq_s32(vsubq_s32(v563, v566), v652), v651);
  v201 = vmlsq_s32(v6, v184, v200);
  v202 = vmlaq_s32(v6, v200, v187);
  v203 = vminq_s32(vmaxq_s32(vsubq_s32(v624, v542), v652), v651);
  v204 = vmlsq_s32(v6, v184, v203);
  v205 = vmlaq_s32(v6, v203, v187);
  v206 = vminq_s32(vmaxq_s32(vsubq_s32(v539, v536), v652), v651);
  v561 = vmlaq_s32(v204, v206, v187);
  v573 = vmlaq_s32(v205, v206, v184);
  v525 = vshlq_s32(v558, v82);
  v528 = vshlq_s32(v527, v82);
  v207 = vminq_s32(vmaxq_s32(vsubq_s32(v525, v528), v652), v651);
  v208 = vmlsq_s32(v6, v184, v207);
  v209 = vmlaq_s32(v6, v207, v187);
  v520 = vshlq_s32(v521, v82);
  v522 = vshlq_s32(v570, v82);
  v210 = vminq_s32(vmaxq_s32(vsubq_s32(v522, v520), v652), v651);
  v559 = vmlaq_s32(v208, v210, v187);
  v571 = vmlaq_s32(v209, v210, v184);
  v509 = vshlq_s32(v556, v82);
  v512 = vshlq_s32(v511, v82);
  v211 = vminq_s32(vmaxq_s32(vsubq_s32(v509, v512), v652), v651);
  v212 = vmlsq_s32(v6, v184, v211);
  v213 = vmlaq_s32(v6, v211, v187);
  v505 = vshlq_s32(v506, v82);
  v507 = vshlq_s32(v568, v82);
  v214 = vminq_s32(vmaxq_s32(vsubq_s32(v507, v505), v652), v651);
  v557 = vmlaq_s32(v212, v214, v187);
  v215 = vmlaq_s32(v213, v214, v184);
  v569 = v215;
  v501 = vshlq_s32(v144, v82);
  v543 = vshlq_s32(v532, v82);
  v216 = vminq_s32(vmaxq_s32(vsubq_s32(v543, v501), v652), v651);
  v215.i32[0] = v181;
  v217 = vmlaq_lane_s32(v6, v216, *&vnegq_s32(v215), 0);
  v218 = vmlaq_s32(v6, v216, v183);
  v498 = vshlq_s32(v550, v82);
  v533 = vshlq_s32(v544, v82);
  v219 = vminq_s32(vmaxq_s32(vsubq_s32(v636, v640), v652), v651);
  v220 = vminq_s32(vmaxq_s32(vsubq_s32(v177, v632), v652), v651);
  v221 = vminq_s32(vmaxq_s32(vsubq_s32(v533, v498), v652), v651);
  v222 = vmlaq_s32(v6, v219, v183);
  v223 = vmlaq_s32(v6, v220, v183);
  v224 = vmlaq_s32(v6, v221, v183);
  v225 = vmlsq_s32(v6, v184, v221);
  v226 = vmlsq_s32(v6, v184, v220);
  v227 = vmlsq_s32(v6, v184, v219);
  v228 = vshlq_s32(v609, v82);
  v229 = vshlq_s32(v607, v82);
  v230 = vshlq_s32(v605, v82);
  v231 = vshlq_s32(v603, v82);
  v232 = vmlsq_s32(v6, v229, v184);
  v233 = vmlaq_s32(v6, v184, v228);
  v234 = vmlsq_s32(v6, v231, v184);
  v235 = vmlsq_s32(v6, v230, v184);
  v236 = vminq_s32(vmaxq_s32(vsubq_s32(v489, v487), v652), v651);
  v610 = vmlaq_s32(v202, v236, v184);
  v551 = vmlaq_s32(v201, v236, v187);
  v481 = vshlq_s32(v546, v82);
  v483 = vshlq_s32(v552, v82);
  v485 = vshlq_s32(v548, v82);
  v237 = vshlq_s32(v554, v82);
  v238 = vminq_s32(vmaxq_s32(vsubq_s32(v503, v645), v652), v651);
  v239 = vminq_s32(vmaxq_s32(vsubq_s32(v648, v178), v652), v651);
  v240 = vminq_s32(vmaxq_s32(vsubq_s32(v485, v237), v652), v651);
  v241 = vminq_s32(vmaxq_s32(vsubq_s32(v481, v483), v652), v651);
  v547 = vmlaq_s32(v224, v240, v186);
  v549 = vmlaq_s32(v223, v239, v186);
  v545 = vmlaq_s32(v218, v241, v186);
  v553 = vmlaq_s32(v222, v238, v186);
  v555 = vmlaq_s32(v217, v241, v187);
  v604 = vmlaq_s32(v225, v240, v187);
  v606 = vmlaq_s32(v226, v239, v187);
  v608 = vmlaq_s32(v227, v238, v187);
  v242 = vaddq_s32(v629, v620);
  v515 = vaddq_s32(v517, v514);
  v243 = vaddq_s32(v650, v616);
  v518 = vaddq_s32(v495, v492);
  v496 = vaddq_s32(v614, v612);
  v244 = vshlq_s32(v600, v82);
  v613 = vshlq_s32(v598, v82);
  v245 = vmulq_s32(v180, v244);
  v246 = vmulq_s32(v180, v613);
  v617 = vaddq_s32(vsubq_s32(v6, v246), v245);
  v601 = vaddq_s32(vaddq_s32(v246, v6), v245);
  v247 = vshlq_s32(vmlaq_s32(v232, v187, v228), v82);
  v248 = vshlq_s32(vmlaq_s32(v234, v187, v230), v82);
  v621 = vaddq_s32(v248, v247);
  v249 = vsubq_s32(v247, v248);
  v250 = vshlq_s32(vmlaq_s32(v6, v180, *a1), v82);
  v251 = vminq_s32(vmaxq_s32(vaddq_s32(v627, v490), v652), v651);
  v252 = vminq_s32(vmaxq_s32(v242, v652), v651);
  v253 = vminq_s32(vmaxq_s32(vaddq_s32(v231, v228), v652), v651);
  v254 = vminq_s32(vmaxq_s32(vaddq_s32(v244, v250), v652), v651);
  v628 = vminq_s32(vmaxq_s32(vaddq_s32(v252, v251), v652), v651);
  v630 = vminq_s32(vmaxq_s32(vsubq_s32(v254, v253), v652), v651);
  v255 = vsubq_s32(v228, v231);
  v256 = vshlq_s32(vmlaq_s32(v233, v187, v229), v82);
  v257 = vshlq_s32(vmlaq_s32(v235, v187, v231), v82);
  v258 = vaddq_s32(v257, v256);
  v259 = vaddq_s32(v566, v563);
  v260 = vaddq_s32(v636, v640);
  v261 = vaddq_s32(v542, v624);
  v262 = vaddq_s32(v177, v632);
  v263 = vaddq_s32(v528, v525);
  v493 = vaddq_s32(v533, v498);
  v499 = vaddq_s32(v512, v509);
  v510 = vaddq_s32(v645, v503);
  v529 = vaddq_s32(v178, v648);
  v531 = vaddq_s32(v539, v536);
  v537 = vaddq_s32(v237, v485);
  v540 = vaddq_s32(v522, v520);
  v264 = vmulq_s32(vminq_s32(vmaxq_s32(vsubq_s32(v256, v257), v652), v651), v180);
  v265 = vmulq_s32(vminq_s32(vmaxq_s32(v249, v652), v651), v180);
  v266 = vaddq_s32(vsubq_s32(v6, v265), v264);
  v267 = vaddq_s32(vaddq_s32(v265, v6), v264);
  v268 = vmulq_s32(vminq_s32(vmaxq_s32(v255, v652), v651), v180);
  v269 = vmulq_s32(vminq_s32(vmaxq_s32(vsubq_s32(v229, v230), v652), v651), v180);
  v270 = vaddq_s32(vsubq_s32(v6, v269), v268);
  v271 = vaddq_s32(v269, vaddq_s32(v6, v268));
  v272 = vsubq_s32(v251, v252);
  v273 = vminq_s32(vmaxq_s32(v243, v652), v651);
  v274 = vminq_s32(vmaxq_s32(v496, v652), v651);
  v275 = vaddq_s32(v274, v273);
  v276 = vsubq_s32(v274, v273);
  v277 = vminq_s32(vmaxq_s32(vaddq_s32(v479, v478), v652), v651);
  v278 = vminq_s32(vmaxq_s32(v515, v652), v651);
  v649 = vaddq_s32(v278, v277);
  v279 = vsubq_s32(v277, v278);
  v280 = vminq_s32(vmaxq_s32(v518, v652), v651);
  v281 = vminq_s32(vmaxq_s32(vaddq_s32(v477, v476), v652), v651);
  v564 = vaddq_s32(v281, v280);
  v567 = v275;
  v282 = vsubq_s32(v281, v280);
  v283 = vshlq_s32(v575, v82);
  v284 = vshlq_s32(v596, v82);
  v646 = vaddq_s32(v284, v283);
  v285 = vsubq_s32(v283, v284);
  v286 = vshlq_s32(v593, v82);
  v287 = vshlq_s32(v578, v82);
  v579 = vaddq_s32(v287, v286);
  v288 = vsubq_s32(v287, v286);
  v289 = vshlq_s32(v581, v82);
  v290 = vshlq_s32(v587, v82);
  v641 = vaddq_s32(v290, v289);
  v291 = vsubq_s32(v289, v290);
  v292 = vshlq_s32(v590, v82);
  v293 = vshlq_s32(v584, v82);
  v591 = vaddq_s32(v293, v292);
  v294 = vsubq_s32(v293, v292);
  v526 = vaddq_s32(v254, v253);
  v295 = vshlq_s32(v601, v82);
  v296 = vminq_s32(vmaxq_s32(v258, v652), v651);
  v297 = vminq_s32(vmaxq_s32(vaddq_s32(v295, v250), v652), v651);
  v523 = vaddq_s32(v297, v296);
  v643 = vsubq_s32(v297, v296);
  v298 = vshlq_s32(v617, v82);
  v299 = vminq_s32(vmaxq_s32(vaddq_s32(v298, v250), v652), v651);
  v300 = vshlq_s32(v267, v82);
  v576 = vaddq_s32(v300, v299);
  v637 = vsubq_s32(v299, v300);
  v301 = vminq_s32(vmaxq_s32(vaddq_s32(v613, v250), v652), v651);
  v302 = vshlq_s32(v271, v82);
  v534 = vaddq_s32(v302, v301);
  v633 = vsubq_s32(v301, v302);
  v303 = vsubq_s32(v250, v244);
  v304 = vsubq_s32(v250, v295);
  v305 = vsubq_s32(v250, v298);
  v306 = vminq_s32(vmaxq_s32(vsubq_s32(v250, v613), v652), v651);
  v307 = vshlq_s32(v270, v82);
  v308 = vaddq_s32(v307, v306);
  v625 = vsubq_s32(v306, v307);
  v309 = vminq_s32(vmaxq_s32(v305, v652), v651);
  v310 = vshlq_s32(v266, v82);
  v311 = vaddq_s32(v310, v309);
  v618 = vsubq_s32(v309, v310);
  v312 = vminq_s32(vmaxq_s32(v621, v652), v651);
  v313 = vminq_s32(vmaxq_s32(v304, v652), v651);
  v582 = v311;
  v585 = vaddq_s32(v313, v312);
  v602 = vsubq_s32(v313, v312);
  v314 = vminq_s32(vmaxq_s32(vaddq_s32(v230, v229), v652), v651);
  v315 = vminq_s32(vmaxq_s32(v303, v652), v651);
  v588 = vaddq_s32(v315, v314);
  v594 = vsubq_s32(v315, v314);
  v316 = vminq_s32(vmaxq_s32(v291, v652), v651);
  v317 = vminq_s32(vmaxq_s32(v294, v652), v651);
  v318 = vmlaq_s32(v6, vsubq_s32(v317, v316), v180);
  v319 = vminq_s32(vmaxq_s32(v285, v652), v651);
  v320 = vminq_s32(vmaxq_s32(v288, v652), v651);
  v321 = vmlaq_s32(v6, vsubq_s32(v320, v319), v180);
  v322 = vminq_s32(vmaxq_s32(v279, v652), v651);
  v323 = vminq_s32(vmaxq_s32(v282, v652), v651);
  v324 = vmlaq_s32(v6, vsubq_s32(v323, v322), v180);
  v325 = vmulq_s32(vminq_s32(vmaxq_s32(v276, v652), v651), v180);
  v326 = vmulq_s32(vminq_s32(vmaxq_s32(v272, v652), v651), v180);
  v327 = vaddq_s32(vsubq_s32(v6, v326), v325);
  v328 = vaddq_s32(v326, vaddq_s32(v6, v325));
  v329 = vmlaq_s32(v6, vaddq_s32(v323, v322), v180);
  v330 = vmlaq_s32(v6, vaddq_s32(v320, v319), v180);
  v331 = vmlaq_s32(v6, vaddq_s32(v317, v316), v180);
  v332 = vminq_s32(vmaxq_s32(v259, v652), v651);
  v333 = vminq_s32(vmaxq_s32(v260, v652), v651);
  v334 = vaddq_s32(v333, v332);
  v622 = vsubq_s32(v332, v333);
  v335 = vminq_s32(vmaxq_s32(v261, v652), v651);
  v336 = vminq_s32(vmaxq_s32(v262, v652), v651);
  v615 = vsubq_s32(v335, v336);
  v653[32] = vminq_s32(vmaxq_s32(v334, v652), v651);
  v653[33] = vminq_s32(vmaxq_s32(vaddq_s32(v336, v335), v652), v651);
  v337 = vminq_s32(vmaxq_s32(v263, v652), v651);
  v338 = vminq_s32(vmaxq_s32(v493, v652), v651);
  v339 = vaddq_s32(v338, v337);
  v340 = vsubq_s32(v337, v338);
  v341 = vminq_s32(vmaxq_s32(v499, v652), v651);
  v342 = vminq_s32(vmaxq_s32(vaddq_s32(v543, v501), v652), v651);
  v599 = vsubq_s32(v341, v342);
  v653[34] = vminq_s32(vmaxq_s32(v339, v652), v651);
  v653[35] = vminq_s32(vmaxq_s32(vaddq_s32(v342, v341), v652), v651);
  v343 = vshlq_s32(v557, v82);
  v344 = vshlq_s32(v545, v82);
  v345 = vaddq_s32(v344, v343);
  v597 = vsubq_s32(v343, v344);
  v346 = vshlq_s32(v559, v82);
  v347 = vshlq_s32(v547, v82);
  v348 = vsubq_s32(v346, v347);
  v653[36] = vminq_s32(vmaxq_s32(v345, v652), v651);
  v653[37] = vminq_s32(vmaxq_s32(vaddq_s32(v347, v346), v652), v651);
  v349 = vshlq_s32(v561, v82);
  v350 = vshlq_s32(v549, v82);
  v351 = vaddq_s32(v350, v349);
  v352 = vsubq_s32(v349, v350);
  v353 = vshlq_s32(v551, v82);
  v354 = vshlq_s32(v553, v82);
  v355 = vsubq_s32(v353, v354);
  v653[38] = vminq_s32(vmaxq_s32(v351, v652), v651);
  v653[39] = vminq_s32(vmaxq_s32(vaddq_s32(v354, v353), v652), v651);
  v356 = vminq_s32(vmaxq_s32(v510, v652), v651);
  v357 = vminq_s32(vmaxq_s32(vaddq_s32(v489, v487), v652), v651);
  v358 = vaddq_s32(v357, v356);
  v359 = vsubq_s32(v357, v356);
  v360 = vminq_s32(vmaxq_s32(v529, v652), v651);
  v361 = vminq_s32(vmaxq_s32(v531, v652), v651);
  v362 = vaddq_s32(v361, v360);
  v363 = vsubq_s32(v361, v360);
  v653[63] = vminq_s32(vmaxq_s32(v358, v652), v651);
  v653[62] = vminq_s32(vmaxq_s32(v362, v652), v651);
  v364 = vminq_s32(vmaxq_s32(v537, v652), v651);
  v365 = vminq_s32(vmaxq_s32(v540, v652), v651);
  v366 = vaddq_s32(v365, v364);
  v367 = vsubq_s32(v365, v364);
  v368 = vminq_s32(vmaxq_s32(vaddq_s32(v483, v481), v652), v651);
  v369 = vminq_s32(vmaxq_s32(vaddq_s32(v507, v505), v652), v651);
  v370 = vaddq_s32(v369, v368);
  v371 = vsubq_s32(v369, v368);
  v653[61] = vminq_s32(vmaxq_s32(v366, v652), v651);
  v653[60] = vminq_s32(vmaxq_s32(v370, v652), v651);
  v372 = vshlq_s32(v569, v82);
  v373 = vshlq_s32(v555, v82);
  v374 = vaddq_s32(v373, v372);
  v375 = vsubq_s32(v372, v373);
  v376 = vshlq_s32(v571, v82);
  v377 = vshlq_s32(v604, v82);
  v378 = vaddq_s32(v377, v376);
  v379 = vsubq_s32(v376, v377);
  v653[59] = vminq_s32(vmaxq_s32(v374, v652), v651);
  v653[58] = vminq_s32(vmaxq_s32(v378, v652), v651);
  v380 = vshlq_s32(v573, v82);
  v381 = vshlq_s32(v606, v82);
  v382 = vaddq_s32(v381, v380);
  v383 = vsubq_s32(v380, v381);
  v384 = vshlq_s32(v610, v82);
  v385 = vshlq_s32(v608, v82);
  v386 = vaddq_s32(v385, v384);
  v387 = vsubq_s32(v384, v385);
  v653[57] = vminq_s32(vmaxq_s32(v382, v652), v651);
  v653[56] = vminq_s32(vmaxq_s32(v386, v652), v651);
  v388 = vminq_s32(vmaxq_s32(v567, v652), v651);
  v389 = vminq_s32(vmaxq_s32(v526, v652), v651);
  v390 = vaddq_s32(v389, v388);
  v391 = vsubq_s32(v389, v388);
  v392 = vminq_s32(vmaxq_s32(v564, v652), v651);
  v393 = vminq_s32(vmaxq_s32(v523, v652), v651);
  v653[0] = vminq_s32(vmaxq_s32(v390, v652), v651);
  v653[1] = vminq_s32(vmaxq_s32(vaddq_s32(v393, v392), v652), v651);
  v653[31] = vminq_s32(vmaxq_s32(v391, v652), v651);
  v653[30] = vminq_s32(vmaxq_s32(vsubq_s32(v393, v392), v652), v651);
  v394 = vminq_s32(vmaxq_s32(v579, v652), v651);
  v395 = vminq_s32(vmaxq_s32(v576, v652), v651);
  v396 = vaddq_s32(v395, v394);
  v397 = vsubq_s32(v395, v394);
  v398 = vminq_s32(vmaxq_s32(v591, v652), v651);
  v399 = vminq_s32(vmaxq_s32(v534, v652), v651);
  v653[2] = vminq_s32(vmaxq_s32(v396, v652), v651);
  v653[3] = vminq_s32(vmaxq_s32(vaddq_s32(v399, v398), v652), v651);
  v653[29] = vminq_s32(vmaxq_s32(v397, v652), v651);
  v653[28] = vminq_s32(vmaxq_s32(vsubq_s32(v399, v398), v652), v651);
  v400 = vminq_s32(vmaxq_s32(v308, v652), v651);
  v401 = vshlq_s32(v331, v82);
  v402 = vaddq_s32(v401, v400);
  v403 = vsubq_s32(v400, v401);
  v404 = vminq_s32(vmaxq_s32(v582, v652), v651);
  v405 = vshlq_s32(v330, v82);
  v653[5] = vminq_s32(vmaxq_s32(vaddq_s32(v405, v404), v652), v651);
  v653[27] = vminq_s32(vmaxq_s32(v403, v652), v651);
  v653[26] = vminq_s32(vmaxq_s32(vsubq_s32(v404, v405), v652), v651);
  v406 = vminq_s32(vmaxq_s32(v585, v652), v651);
  v407 = vshlq_s32(v329, v82);
  v408 = vaddq_s32(v407, v406);
  v409 = vsubq_s32(v406, v407);
  v653[4] = vminq_s32(vmaxq_s32(v402, v652), v651);
  v653[6] = vminq_s32(vmaxq_s32(v408, v652), v651);
  v410 = vminq_s32(vmaxq_s32(v588, v652), v651);
  v411 = vshlq_s32(v328, v82);
  v412 = vaddq_s32(v411, v410);
  v653[25] = vminq_s32(vmaxq_s32(v409, v652), v651);
  v653[24] = vminq_s32(vmaxq_s32(vsubq_s32(v410, v411), v652), v651);
  v413 = vminq_s32(vmaxq_s32(v594, v652), v651);
  v414 = vshlq_s32(v327, v82);
  v415 = vaddq_s32(v414, v413);
  v416 = vsubq_s32(v413, v414);
  v653[7] = vminq_s32(vmaxq_s32(v412, v652), v651);
  v653[8] = vminq_s32(vmaxq_s32(v415, v652), v651);
  v417 = vminq_s32(vmaxq_s32(v602, v652), v651);
  v418 = vshlq_s32(v324, v82);
  v419 = vaddq_s32(v418, v417);
  v653[23] = vminq_s32(vmaxq_s32(v416, v652), v651);
  v653[22] = vminq_s32(vmaxq_s32(vsubq_s32(v417, v418), v652), v651);
  v420 = vminq_s32(vmaxq_s32(v618, v652), v651);
  v421 = vshlq_s32(v321, v82);
  v422 = vaddq_s32(v421, v420);
  v423 = vsubq_s32(v420, v421);
  v653[9] = vminq_s32(vmaxq_s32(v419, v652), v651);
  v653[10] = vminq_s32(vmaxq_s32(v422, v652), v651);
  v424 = vminq_s32(vmaxq_s32(v625, v652), v651);
  v425 = vshlq_s32(v318, v82);
  v426 = vaddq_s32(v425, v424);
  v427 = vminq_s32(vmaxq_s32(vsubq_s32(v424, v425), v652), v651);
  v653[21] = vminq_s32(vmaxq_s32(v423, v652), v651);
  v428 = vminq_s32(vmaxq_s32(v641, v652), v651);
  v429 = vminq_s32(vmaxq_s32(v633, v652), v651);
  v653[20] = v427;
  v430 = vaddq_s32(v429, v428);
  v431 = vsubq_s32(v429, v428);
  v653[11] = vminq_s32(vmaxq_s32(v426, v652), v651);
  v432 = vminq_s32(vmaxq_s32(v646, v652), v651);
  v433 = vminq_s32(vmaxq_s32(v637, v652), v651);
  v653[12] = vminq_s32(vmaxq_s32(v430, v652), v651);
  v434 = vaddq_s32(v433, v432);
  v435 = vminq_s32(vmaxq_s32(vsubq_s32(v433, v432), v652), v651);
  v653[19] = vminq_s32(vmaxq_s32(v431, v652), v651);
  v436 = vminq_s32(vmaxq_s32(v649, v652), v651);
  v437 = vminq_s32(vmaxq_s32(v643, v652), v651);
  v653[18] = v435;
  v653[13] = vminq_s32(vmaxq_s32(v434, v652), v651);
  v653[14] = vminq_s32(vmaxq_s32(vaddq_s32(v437, v436), v652), v651);
  v438 = vmaxq_s32(v371, v652);
  v439 = vmaxq_s32(v375, v652);
  v440 = vmaxq_s32(v379, v652);
  v441 = vmaxq_s32(vsubq_s32(v437, v436), v652);
  v442 = vminq_s32(vmaxq_s32(v615, v652), v651);
  v443 = vminq_s32(vmaxq_s32(v340, v652), v651);
  v444 = vminq_s32(vmaxq_s32(v599, v652), v651);
  v445 = vminq_s32(vmaxq_s32(v348, v652), v651);
  v446 = vminq_s32(vmaxq_s32(v352, v652), v651);
  v447 = vminq_s32(vmaxq_s32(v355, v652), v651);
  v448 = vminq_s32(vmaxq_s32(v359, v652), v651);
  v449 = vminq_s32(vmaxq_s32(v363, v652), v651);
  v450 = vminq_s32(vmaxq_s32(v367, v652), v651);
  v451 = vminq_s32(v438, v651);
  v452 = vminq_s32(v440, v651);
  v453 = vminq_s32(vmaxq_s32(v383, v652), v651);
  v454 = vminq_s32(vmaxq_s32(v387, v652), v651);
  v653[17] = vminq_s32(v441, v651);
  v653[15] = vminq_s32(vmaxq_s32(vaddq_s32(v630, v628), v652), v651);
  v653[16] = vminq_s32(vmaxq_s32(vsubq_s32(v630, v628), v652), v651);
  v455 = vmlaq_s32(v6, vsubq_s32(v454, v447), v180);
  v456 = vmlaq_s32(v6, vsubq_s32(v453, v446), v180);
  v457 = vmlaq_s32(v6, vsubq_s32(v452, v445), v180);
  v458 = vmlaq_s32(v6, vaddq_s32(v452, v445), v180);
  v459 = vmlaq_s32(v6, vaddq_s32(v453, v446), v180);
  v460 = vmlaq_s32(v6, vaddq_s32(v454, v447), v180);
  v461 = vmlaq_s32(v6, vsubq_s32(v451, v444), v180);
  v462 = vmlaq_s32(v6, vsubq_s32(v450, v443), v180);
  v463 = vmlaq_s32(v6, vsubq_s32(v449, v442), v180);
  v464 = vmulq_s32(vminq_s32(vmaxq_s32(v597, v652), v651), v180);
  v465 = vmlaq_s32(v6, vaddq_s32(v449, v442), v180);
  v466 = vsubq_s32(v6, v464);
  v467 = vaddq_s32(v464, v6);
  v468 = vmulq_s32(v448, v180);
  v469 = vmulq_s32(vminq_s32(vmaxq_s32(v622, v652), v651), v180);
  v470 = vmlaq_s32(v6, vaddq_s32(v450, v443), v180);
  v471 = vsubq_s32(v6, v469);
  v472 = vaddq_s32(v451, v444);
  v473 = vaddq_s32(v6, v468);
  v474 = vmlaq_s32(v6, v472, v180);
  v475 = vmulq_s32(vminq_s32(v439, v651), v180);
  v653[52] = vshlq_s32(vaddq_s32(v467, v475), v82);
  v653[53] = vshlq_s32(v458, v82);
  v653[54] = vshlq_s32(v459, v82);
  v653[55] = vshlq_s32(v460, v82);
  v653[40] = vshlq_s32(v455, v82);
  v653[41] = vshlq_s32(v456, v82);
  v653[42] = vshlq_s32(v457, v82);
  v653[43] = vshlq_s32(vaddq_s32(v466, v475), v82);
  v653[48] = vshlq_s32(vaddq_s32(v469, v473), v82);
  v653[49] = vshlq_s32(v465, v82);
  v653[50] = vshlq_s32(v470, v82);
  v653[51] = vshlq_s32(v474, v82);
  v653[44] = vshlq_s32(v461, v82);
  v653[45] = vshlq_s32(v462, v82);
  v653[46] = vshlq_s32(v463, v82);
  v653[47] = vshlq_s32(vaddq_s32(v471, v468), v82);
  idct64_stage11_neon(v653, a2, a4, a5, a6, &v652, &v651);
}

uint64_t idct64x64_neon(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v6 = 0;
  v7 = vdupq_n_s32(1 << (a3 - 1));
  v894 = *MEMORY[0x277D85DE8];
  v8 = av1_cospi_arr_data[64 * a3 - 584];
  v9 = &av1_cospi_arr_data[64 * a3 - 581];
  v10 = vld1q_dup_f32(v9);
  v11 = a1[6];
  v12 = a1[7];
  v885 = vmlaq_s32(v7, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 583]), v12);
  v13 = a1[5];
  v888 = a1[4];
  v14 = vmlaq_s32(v7, v10, v13);
  v15 = av1_cospi_arr_data[64 * a3 - 604];
  v16 = a1[26];
  v17 = a1[27];
  v872 = vmlaq_s32(v7, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 603]), v17);
  v18 = &av1_cospi_arr_data[64 * a3 - 597];
  v19 = vld1q_dup_f32(v18);
  v20 = a1[20];
  v21 = a1[21];
  v785 = vmlaq_s32(v7, v19, v21);
  v22 = av1_cospi_arr_data[64 * a3 - 588];
  v23 = a1[10];
  v24 = a1[11];
  v853 = vmlaq_s32(v7, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 587]), v24);
  v25 = &av1_cospi_arr_data[64 * a3 - 589];
  v26 = vld1q_dup_f32(v25);
  v28 = a1[12];
  v27 = a1[13];
  v29 = vmlaq_s32(v7, v26, v27);
  v30 = av1_cospi_arr_data[64 * a3 - 596];
  v31 = &av1_cospi_arr_data[64 * a3 - 605];
  v32 = vld1q_dup_f32(v31);
  v33 = a1[18];
  v34 = a1[19];
  v35 = vmlaq_s32(v7, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 595]), v34);
  v36 = a1[29];
  v869 = a1[28];
  v37 = vmlaq_s32(v7, v32, v36);
  v38 = av1_cospi_arr_data[64 * a3 - 580];
  v40 = a1[2];
  v39 = a1[3];
  v41 = vmlaq_s32(v7, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 579]), v39);
  v42 = &av1_cospi_arr_data[64 * a3 - 637];
  v43 = vld1q_dup_f32(v42);
  v44 = vmlaq_s32(v7, v43, v39);
  v45 = &av1_cospi_arr_data[64 * a3 - 611];
  v46 = vld1q_dup_f32(v45);
  v47 = vmlaq_s32(v7, v46, v36);
  v48 = &av1_cospi_arr_data[64 * a3 - 621];
  v49 = vld1q_dup_f32(v48);
  v50 = vmlaq_s32(v7, v49, v34);
  v51 = &av1_cospi_arr_data[64 * a3 - 627];
  v52 = vld1q_dup_f32(v51);
  v53 = &av1_cospi_arr_data[64 * a3 - 629];
  v54 = vld1q_dup_f32(v53);
  v55 = vmlaq_s32(v7, v52, v27);
  v56 = vmlaq_s32(v7, v54, v24);
  v57 = &av1_cospi_arr_data[64 * a3 - 619];
  v58 = vld1q_dup_f32(v57);
  v59 = vmlaq_s32(v7, v58, v21);
  v60 = &av1_cospi_arr_data[64 * a3 - 613];
  v61 = vld1q_dup_f32(v60);
  v827 = vmlaq_s32(v7, v61, v17);
  v62 = &av1_cospi_arr_data[64 * a3 - 635];
  v63 = vld1q_dup_f32(v62);
  v823 = vmlaq_s32(v7, v63, v13);
  v64 = &av1_cospi_arr_data[64 * a3 - 633];
  v65 = vld1q_dup_f32(v64);
  v810 = vmlaq_s32(v7, v65, v12);
  v66 = &av1_cospi_arr_data[64 * a3 - 601];
  v67 = vld1q_dup_f32(v66);
  v68 = a1[25];
  v878 = a1[24];
  v850 = vmlaq_s32(v7, v67, v68);
  v69 = &av1_cospi_arr_data[64 * a3 - 615];
  v70 = vld1q_dup_f32(v69);
  v798 = vmlaq_s32(v7, v70, v68);
  v71 = av1_cospi_arr_data[64 * a3 - 600];
  v72 = a1[22];
  v73 = a1[23];
  v806 = vmlaq_s32(v7, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 599]), v73);
  v74 = &av1_cospi_arr_data[64 * a3 - 617];
  v75 = vld1q_dup_f32(v74);
  v802 = vmlaq_s32(v7, v75, v73);
  v76 = &av1_cospi_arr_data[64 * a3 - 585];
  v77 = vld1q_dup_f32(v76);
  v78 = a1[9];
  v881 = a1[8];
  v79 = vmlaq_s32(v7, v77, v78);
  v80 = &av1_cospi_arr_data[64 * a3 - 631];
  v81 = vld1q_dup_f32(v80);
  v790 = vmlaq_s32(v7, v81, v78);
  v794 = v79;
  v82 = av1_cospi_arr_data[64 * a3 - 592];
  v83 = &av1_cospi_arr_data[64 * a3 - 625];
  v84 = vld1q_dup_f32(v83);
  v85 = a1[14];
  v86 = a1[15];
  v735 = vmlaq_s32(v7, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 591]), v86);
  v760 = vmlaq_s32(v7, v84, v86);
  v87 = &av1_cospi_arr_data[64 * a3 - 593];
  v88 = vld1q_dup_f32(v87);
  v89 = &av1_cospi_arr_data[64 * a3 - 623];
  v90 = vld1q_dup_f32(v89);
  v91 = a1[17];
  v875 = a1[16];
  v92 = vmlaq_s32(v7, v88, v91);
  v728 = vmlaq_s32(v7, v90, v91);
  v93 = a1[30];
  v94 = a1[31];
  v731 = vmlaq_s32(v7, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 607]), v94);
  v95 = &av1_cospi_arr_data[64 * a3 - 609];
  v96 = vld1q_dup_f32(v95);
  v716 = v92;
  v720 = vmlaq_s32(v7, v96, v94);
  v97 = &av1_cospi_arr_data[64 * a3 - 577];
  v98 = vld1q_dup_f32(v97);
  v99 = a1[1];
  v891 = *a1;
  v712 = vmlaq_s32(v7, v98, v99);
  v100 = &av1_cospi_arr_data[64 * a3 - 639];
  v101 = vld1q_dup_f32(v100);
  v673 = vmlaq_s32(v7, v101, v99);
  v765 = vmlaq_s32(v7, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 582]), v11);
  v102 = &av1_cospi_arr_data[64 * a3 - 602];
  v103 = &av1_cospi_arr_data[64 * a3 - 634];
  v104 = vld1q_dup_f32(v102);
  v105 = vld1q_dup_f32(v103);
  v751 = vmlaq_s32(v7, v104, v16);
  v756 = vmlaq_s32(v7, v105, v11);
  v106 = &av1_cospi_arr_data[64 * a3 - 614];
  v107 = vld1q_dup_f32(v106);
  v108 = vmlaq_s32(v7, v107, v16);
  v780 = vmlaq_s32(v7, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 598]), v72);
  v109 = &av1_cospi_arr_data[64 * a3 - 618];
  v110 = vld1q_dup_f32(v109);
  v743 = v108;
  v747 = vmlaq_s32(v7, v110, v72);
  v111 = &av1_cospi_arr_data[64 * a3 - 586];
  v112 = vld1q_dup_f32(v111);
  v739 = vmlaq_s32(v7, v112, v23);
  v113 = &av1_cospi_arr_data[64 * a3 - 630];
  v114 = vld1q_dup_f32(v113);
  v724 = vmlaq_s32(v7, v114, v23);
  v846 = vmlaq_s32(v7, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 590]), v85);
  v115 = &av1_cospi_arr_data[64 * a3 - 594];
  v116 = &av1_cospi_arr_data[64 * a3 - 626];
  v117 = vld1q_dup_f32(v115);
  v118 = vld1q_dup_f32(v116);
  v835 = vmlaq_s32(v7, v118, v85);
  v817 = vmlaq_s32(v7, v117, v33);
  v119 = &av1_cospi_arr_data[64 * a3 - 622];
  v120 = vld1q_dup_f32(v119);
  v814 = vmlaq_s32(v7, v120, v33);
  v860 = vmlaq_s32(v7, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 606]), v93);
  v121 = &av1_cospi_arr_data[64 * a3 - 610];
  v122 = vld1q_dup_f32(v121);
  v857 = vmlaq_s32(v7, v122, v93);
  v123 = &av1_cospi_arr_data[64 * a3 - 578];
  v124 = vld1q_dup_f32(v123);
  v839 = vmlaq_s32(v7, v124, v40);
  v125 = &av1_cospi_arr_data[64 * a3 - 638];
  v126 = vld1q_dup_f32(v125);
  v127 = vdupq_n_s32(-v22);
  v820 = vmlaq_s32(v7, v126, v40);
  v866 = vmlaq_s32(v7, v127, v28);
  result = av1_cospi_arr_data[64 * a3 - 628];
  v129 = vdupq_n_s32(result);
  v863 = vmlaq_s32(v7, v129, v28);
  if (a4)
  {
    v130 = 6;
  }

  else
  {
    v130 = 8;
  }

  v131 = v130 + a5;
  v132 = 1 << (v131 - 1);
  v133 = vdupq_n_s32(-a3);
  v134 = vshlq_s32(v44, v133);
  v135 = vshlq_s32(v47, v133);
  v670 = v135;
  if (v131 <= 15)
  {
    v132 = 0x8000;
  }

  v136 = vdupq_n_s32(-v132);
  v137 = vdupq_n_s32(v132 - 1);
  v138 = vminq_s32(vmaxq_s32(vsubq_s32(v134, v135), v136), v137);
  v139 = vmlaq_s32(v7, v127, v138);
  v648 = vshlq_s32(v37, v133);
  v651 = vshlq_s32(v41, v133);
  v655 = v134;
  v140 = vminq_s32(vmaxq_s32(vsubq_s32(v651, v648), v136), v137);
  v141 = vmlaq_s32(v139, vdupq_n_s32(-result), v140);
  v142 = vdupq_n_s32(v22);
  v143 = vmlsq_s32(v7, v140, v142);
  v144 = vshlq_s32(v29, v133);
  v145 = vshlq_s32(v35, v133);
  v146 = vshlq_s32(v50, v133);
  v147 = vshlq_s32(v55, v133);
  v148 = vminq_s32(vmaxq_s32(vsubq_s32(v144, v145), v136), v137);
  v149 = vminq_s32(vmaxq_s32(vsubq_s32(v147, v146), v136), v137);
  v150 = vmlaq_s32(vmlsq_s32(v7, v148, v142), v129, v149);
  v151 = vmlaq_s32(v143, v129, v138);
  v152 = vmlaq_s32(vmlaq_s32(v7, v142, v149), v129, v148);
  v153 = vdupq_n_s32(v30);
  v843 = vmlaq_s32(v7, v153, v20);
  v154 = av1_cospi_arr_data[64 * a3 - 620];
  v155 = vdupq_n_s32(v154);
  v831 = vmlaq_s32(v7, v155, v20);
  v156 = vshlq_s32(v785, v133);
  v157 = vshlq_s32(v853, v133);
  v158 = vminq_s32(vmaxq_s32(vsubq_s32(v157, v156), v136), v137);
  v159 = vshlq_s32(v56, v133);
  v160 = vshlq_s32(v59, v133);
  v161 = vminq_s32(vmaxq_s32(vsubq_s32(v159, v160), v136), v137);
  v662 = vmlaq_s32(vmlaq_s32(v7, vdupq_n_s32(-v30), v158), vdupq_n_s32(-v154), v161);
  v162 = vshlq_s32(v14, v133);
  v163 = vshlq_s32(v872, v133);
  v164 = vshlq_s32(v827, v133);
  v165 = vshlq_s32(v823, v133);
  v166 = vminq_s32(vmaxq_s32(vsubq_s32(v162, v163), v136), v137);
  v167 = vminq_s32(vmaxq_s32(vsubq_s32(v165, v164), v136), v137);
  v168 = vmlsq_s32(vmlaq_s32(v7, v153, v167), v166, v155);
  v854 = vmlsq_s32(vmlaq_s32(v7, v153, v161), v158, v155);
  v169 = vmlaq_s32(vmlaq_s32(v7, v153, v166), v155, v167);
  v170 = vdupq_n_s32(-v15);
  v828 = vmlaq_s32(v7, v170, v869);
  v171 = av1_cospi_arr_data[64 * a3 - 612];
  v172 = vdupq_n_s32(v171);
  v824 = vmlaq_s32(v7, v172, v869);
  v708 = vshlq_s32(v810, v133);
  v770 = vshlq_s32(v798, v133);
  v173 = vminq_s32(vmaxq_s32(vsubq_s32(v708, v770), v136), v137);
  v174 = vmlaq_s32(v7, v170, v173);
  v700 = vshlq_s32(v850, v133);
  v704 = vshlq_s32(v885, v133);
  v175 = vminq_s32(vmaxq_s32(vsubq_s32(v704, v700), v136), v137);
  v176 = vdupq_n_s32(v15);
  v777 = vmlaq_s32(v174, vdupq_n_s32(-v171), v175);
  v177 = vmlsq_s32(v7, v175, v176);
  v688 = vshlq_s32(v794, v133);
  v691 = vshlq_s32(v802, v133);
  v694 = vshlq_s32(v806, v133);
  v697 = vshlq_s32(v790, v133);
  v178 = vminq_s32(vmaxq_s32(vsubq_s32(v688, v694), v136), v137);
  v179 = vminq_s32(vmaxq_s32(vsubq_s32(v697, v691), v136), v137);
  v180 = vmlaq_s32(vmlsq_s32(v7, v178, v176), v172, v179);
  v791 = vmlaq_s32(v177, v172, v173);
  v774 = vmlaq_s32(vmlaq_s32(v7, v176, v179), v172, v178);
  v181 = vdupq_n_s32(v38);
  v799 = vmlaq_s32(v7, v181, v888);
  v182 = av1_cospi_arr_data[64 * a3 - 636];
  v183 = vdupq_n_s32(v182);
  v786 = vmlaq_s32(v7, v183, v888);
  v682 = vshlq_s32(v716, v133);
  v685 = vshlq_s32(v735, v133);
  v184 = vminq_s32(vmaxq_s32(vsubq_s32(v685, v682), v136), v137);
  v676 = vshlq_s32(v760, v133);
  v679 = vshlq_s32(v728, v133);
  v185 = vminq_s32(vmaxq_s32(vsubq_s32(v676, v679), v136), v137);
  v807 = vmlaq_s32(vmlaq_s32(v7, vdupq_n_s32(-v38), v184), vdupq_n_s32(-v182), v185);
  v186 = vmlaq_s32(v7, v181, v185);
  v658 = vshlq_s32(v712, v133);
  v660 = vshlq_s32(v731, v133);
  v665 = vshlq_s32(v720, v133);
  v667 = vshlq_s32(v673, v133);
  v187 = vminq_s32(vmaxq_s32(vsubq_s32(v658, v660), v136), v137);
  v188 = vminq_s32(vmaxq_s32(vsubq_s32(v667, v665), v136), v137);
  v189 = vmlsq_s32(vmlaq_s32(v7, v181, v188), v187, v183);
  v803 = vmlsq_s32(v186, v184, v183);
  v795 = vmlaq_s32(vmlaq_s32(v7, v181, v187), v183, v188);
  v190 = vaddq_s32(v163, v162);
  v191 = vaddq_s32(v160, v159);
  v192 = vaddq_s32(v165, v164);
  v193 = vdupq_n_s32(-v71);
  v889 = vmlaq_s32(v7, v193, v878);
  v194 = av1_cospi_arr_data[64 * a3 - 616];
  v195 = vdupq_n_s32(v194);
  v886 = vmlaq_s32(v7, v195, v878);
  v761 = vshlq_s32(v751, v133);
  v766 = vshlq_s32(v765, v133);
  v752 = vshlq_s32(v756, v133);
  v757 = vshlq_s32(v743, v133);
  v196 = vminq_s32(vmaxq_s32(vsubq_s32(v766, v761), v136), v137);
  v197 = vminq_s32(vmaxq_s32(vsubq_s32(v752, v757), v136), v137);
  v198 = vdupq_n_s32(v71);
  v199 = vdupq_n_s32(-v194);
  v744 = vmlaq_s32(vmlaq_s32(v7, v193, v197), v199, v196);
  v811 = vmlaq_s32(vmlsq_s32(v7, v196, v198), v195, v197);
  v729 = vshlq_s32(v739, v133);
  v732 = vshlq_s32(v747, v133);
  v736 = vshlq_s32(v780, v133);
  v740 = vshlq_s32(v724, v133);
  v200 = vminq_s32(vmaxq_s32(vsubq_s32(v729, v736), v136), v137);
  v201 = vminq_s32(vmaxq_s32(vsubq_s32(v740, v732), v136), v137);
  v781 = vmlaq_s32(vmlsq_s32(v7, v200, v198), v195, v201);
  v748 = vmlaq_s32(vmlaq_s32(v7, v198, v201), v195, v200);
  v721 = vminq_s32(vmaxq_s32(vaddq_s32(v145, v144), v136), v137);
  v725 = vminq_s32(vmaxq_s32(vaddq_s32(v651, v648), v136), v137);
  v713 = vshlq_s32(v150, v133);
  v717 = vshlq_s32(v141, v133);
  v202 = vminq_s32(vmaxq_s32(vsubq_s32(v725, v721), v136), v137);
  v203 = vminq_s32(vmaxq_s32(vsubq_s32(v717, v713), v136), v137);
  v652 = vminq_s32(vmaxq_s32(vaddq_s32(v670, v655), v136), v137);
  v656 = vminq_s32(vmaxq_s32(vaddq_s32(v147, v146), v136), v137);
  v642 = vshlq_s32(v151, v133);
  v644 = vshlq_s32(v152, v133);
  v204 = vminq_s32(vmaxq_s32(vsubq_s32(v652, v656), v136), v137);
  v205 = vminq_s32(vmaxq_s32(vsubq_s32(v642, v644), v136), v137);
  v671 = vmlaq_s32(vmlaq_s32(v7, v203, v199), v205, v193);
  v674 = vmlaq_s32(vmlaq_s32(v7, v202, v199), v204, v193);
  v873 = vmlaq_s32(vmlsq_s32(v7, v198, v203), v205, v195);
  v870 = vmlaq_s32(vmlsq_s32(v7, v198, v202), v204, v195);
  v638 = vminq_s32(vmaxq_s32(v190, v136), v137);
  v640 = vminq_s32(vmaxq_s32(vaddq_s32(v157, v156), v136), v137);
  v206 = vminq_s32(vmaxq_s32(vsubq_s32(v638, v640), v136), v137);
  v207 = vmlsq_s32(v7, v198, v206);
  v208 = vmlaq_s32(v7, v206, v195);
  v634 = vshlq_s32(v168, v133);
  v636 = vshlq_s32(v662, v133);
  v209 = vminq_s32(vmaxq_s32(vsubq_s32(v634, v636), v136), v137);
  v630 = vminq_s32(vmaxq_s32(v191, v136), v137);
  v632 = vminq_s32(vmaxq_s32(v192, v136), v137);
  v626 = vshlq_s32(v854, v133);
  v628 = vshlq_s32(v169, v133);
  v210 = vminq_s32(vmaxq_s32(vsubq_s32(v632, v630), v136), v137);
  v211 = vminq_s32(vmaxq_s32(vsubq_s32(v628, v626), v136), v137);
  v646 = vmlaq_s32(v207, v210, v195);
  v649 = vmlaq_s32(vmlsq_s32(v7, v198, v209), v211, v195);
  v855 = vmlaq_s32(v208, v210, v198);
  v851 = vmlaq_s32(vmlaq_s32(v7, v209, v195), v211, v198);
  v212 = vaddq_s32(v704, v700);
  v213 = vaddq_s32(v770, v708);
  v771 = vaddq_s32(v679, v676);
  v214 = vaddq_s32(v667, v665);
  v215 = vdupq_n_s32(v8);
  v879 = vmlaq_s32(v7, v215, v881);
  v216 = av1_cospi_arr_data[64 * a3 - 632];
  v217 = vdupq_n_s32(v216);
  v882 = vmlaq_s32(v7, v217, v881);
  v701 = vshlq_s32(v846, v133);
  v705 = vshlq_s32(v817, v133);
  v836 = vshlq_s32(v835, v133);
  v709 = vshlq_s32(v814, v133);
  v218 = vminq_s32(vmaxq_s32(vsubq_s32(v701, v705), v136), v137);
  v219 = vminq_s32(vmaxq_s32(vsubq_s32(v836, v709), v136), v137);
  v220 = vdupq_n_s32(-v8);
  v221 = vdupq_n_s32(-v216);
  v677 = vmlaq_s32(vmlaq_s32(v7, v220, v218), v221, v219);
  v680 = vmlsq_s32(vmlaq_s32(v7, v215, v219), v218, v217);
  v222 = vshlq_s32(v839, v133);
  v223 = vshlq_s32(v860, v133);
  v224 = vshlq_s32(v857, v133);
  v225 = vshlq_s32(v820, v133);
  v226 = vminq_s32(vmaxq_s32(vsubq_s32(v222, v223), v136), v137);
  v227 = vminq_s32(vmaxq_s32(vsubq_s32(v225, v224), v136), v137);
  v668 = vmlsq_s32(vmlaq_s32(v7, v215, v227), v226, v217);
  v663 = vmlaq_s32(vmlaq_s32(v7, v215, v226), v217, v227);
  v228 = vminq_s32(vmaxq_s32(vaddq_s32(v694, v688), v136), v137);
  v229 = vminq_s32(vmaxq_s32(v212, v136), v137);
  v230 = vshlq_s32(v180, v133);
  v231 = vshlq_s32(v777, v133);
  v232 = vminq_s32(vmaxq_s32(vsubq_s32(v229, v228), v136), v137);
  v233 = vminq_s32(vmaxq_s32(vsubq_s32(v231, v230), v136), v137);
  v234 = vminq_s32(vmaxq_s32(v213, v136), v137);
  v235 = vminq_s32(vmaxq_s32(vaddq_s32(v697, v691), v136), v137);
  v236 = vshlq_s32(v791, v133);
  v237 = vshlq_s32(v774, v133);
  v238 = vminq_s32(vmaxq_s32(vsubq_s32(v234, v235), v136), v137);
  v239 = vminq_s32(vmaxq_s32(vsubq_s32(v236, v237), v136), v137);
  v847 = vmlaq_s32(vmlaq_s32(v7, v232, v220), v238, v221);
  v840 = vmlaq_s32(vmlaq_s32(v7, v233, v220), v239, v221);
  v861 = vmlaq_s32(vmlsq_s32(v7, v217, v233), v239, v215);
  v858 = vmlaq_s32(vmlsq_s32(v7, v217, v232), v238, v215);
  v240 = vminq_s32(vmaxq_s32(vaddq_s32(v660, v658), v136), v137);
  v241 = vminq_s32(vmaxq_s32(vaddq_s32(v685, v682), v136), v137);
  v242 = vminq_s32(vmaxq_s32(vsubq_s32(v240, v241), v136), v137);
  v243 = vmlsq_s32(v7, v217, v242);
  v244 = vmlaq_s32(v7, v242, v215);
  v245 = vshlq_s32(v189, v133);
  v246 = vshlq_s32(v807, v133);
  v247 = vminq_s32(vmaxq_s32(vsubq_s32(v245, v246), v136), v137);
  v248 = vmlsq_s32(v7, v217, v247);
  v249 = vmlaq_s32(v7, v247, v215);
  v250 = vminq_s32(vmaxq_s32(v771, v136), v137);
  v251 = vminq_s32(vmaxq_s32(v214, v136), v137);
  v252 = vshlq_s32(v803, v133);
  v253 = vshlq_s32(v795, v133);
  v254 = vminq_s32(vmaxq_s32(vsubq_s32(v251, v250), v136), v137);
  v255 = vminq_s32(vmaxq_s32(vsubq_s32(v253, v252), v136), v137);
  v772 = vmlaq_s32(v248, v255, v215);
  v796 = vmlaq_s32(v243, v254, v215);
  v815 = vmlaq_s32(v249, v255, v217);
  v818 = vmlaq_s32(v244, v254, v217);
  v256 = vaddq_s32(v223, v222);
  v257 = vaddq_s32(v701, v705);
  v258 = vaddq_s32(v736, v729);
  v259 = vaddq_s32(v766, v761);
  v260 = vaddq_s32(v757, v752);
  v261 = vaddq_s32(v740, v732);
  v262 = vaddq_s32(v709, v836);
  v263 = vaddq_s32(v225, v224);
  v264 = vaddq_s32(v246, v245);
  v737 = vaddq_s32(v229, v228);
  v741 = vaddq_s32(v241, v240);
  v265 = vaddq_s32(v231, v230);
  v266 = vaddq_s32(v725, v721);
  v267 = vaddq_s32(v717, v713);
  v706 = vaddq_s32(v656, v652);
  v718 = vaddq_s32(v644, v642);
  v733 = vaddq_s32(v628, v626);
  v767 = vaddq_s32(v235, v234);
  v775 = vaddq_s32(v237, v236);
  v778 = vaddq_s32(v251, v250);
  v653 = vaddq_s32(v253, v252);
  v268 = vdupq_n_s32(v82);
  v683 = vmlaq_s32(v7, v268, v875);
  v269 = av1_cospi_arr_data[64 * a3 - 624];
  v270 = vdupq_n_s32(v269);
  v837 = vmlaq_s32(v7, v270, v875);
  v271 = vshlq_s32(v843, v133);
  v804 = vshlq_s32(v863, v133);
  v808 = vshlq_s32(v866, v133);
  v792 = vshlq_s32(v831, v133);
  v272 = vminq_s32(vmaxq_s32(vsubq_s32(v808, v271), v136), v137);
  v273 = vdupq_n_s32(-v82);
  v274 = vminq_s32(vmaxq_s32(vsubq_s32(v804, v792), v136), v137);
  v275 = vdupq_n_s32(-v269);
  v864 = vmlaq_s32(vmlaq_s32(v7, v273, v272), v275, v274);
  v876 = vmlsq_s32(vmlaq_s32(v7, v268, v274), v272, v270);
  v753 = vshlq_s32(v799, v133);
  v758 = vshlq_s32(v828, v133);
  v643 = vshlq_s32(v824, v133);
  v762 = vshlq_s32(v786, v133);
  v276 = vminq_s32(vmaxq_s32(vsubq_s32(v753, v758), v136), v137);
  v277 = vminq_s32(vmaxq_s32(vsubq_s32(v762, v643), v136), v137);
  v821 = vmlsq_s32(vmlaq_s32(v7, v268, v277), v276, v270);
  v832 = vmlaq_s32(vmlaq_s32(v7, v268, v276), v270, v277);
  v782 = vshlq_s32(v781, v133);
  v787 = vshlq_s32(v744, v133);
  v278 = vminq_s32(vmaxq_s32(vsubq_s32(v787, v782), v136), v137);
  v722 = vshlq_s32(v811, v133);
  v726 = vshlq_s32(v748, v133);
  v279 = vminq_s32(vmaxq_s32(vsubq_s32(v722, v726), v136), v137);
  v844 = vmlaq_s32(vmlaq_s32(v7, v278, v273), v279, v275);
  v867 = vmlaq_s32(vmlsq_s32(v7, v270, v278), v279, v268);
  v710 = vminq_s32(vmaxq_s32(v258, v136), v137);
  v714 = vminq_s32(vmaxq_s32(v259, v136), v137);
  v280 = vminq_s32(vmaxq_s32(vsubq_s32(v714, v710), v136), v137);
  v281 = vmlaq_s32(v7, v280, v273);
  v282 = vmlsq_s32(v7, v270, v280);
  v698 = vminq_s32(vmaxq_s32(v260, v136), v137);
  v702 = vminq_s32(vmaxq_s32(v261, v136), v137);
  v283 = vminq_s32(vmaxq_s32(vsubq_s32(v698, v702), v136), v137);
  v825 = vmlaq_s32(v281, v283, v275);
  v829 = vmlaq_s32(v282, v283, v268);
  v692 = vminq_s32(vmaxq_s32(v256, v136), v137);
  v695 = vminq_s32(vmaxq_s32(v257, v136), v137);
  v284 = vminq_s32(vmaxq_s32(vsubq_s32(v692, v695), v136), v137);
  v285 = vmlsq_s32(v7, v270, v284);
  v286 = vmlaq_s32(v7, v284, v268);
  v686 = vminq_s32(vmaxq_s32(v262, v136), v137);
  v689 = vminq_s32(vmaxq_s32(v263, v136), v137);
  v287 = vminq_s32(vmaxq_s32(vsubq_s32(v689, v686), v136), v137);
  v800 = vmlaq_s32(v285, v287, v268);
  v812 = vmlaq_s32(v286, v287, v270);
  v666 = vshlq_s32(v668, v133);
  v669 = vshlq_s32(v677, v133);
  v288 = vminq_s32(vmaxq_s32(vsubq_s32(v666, v669), v136), v137);
  v289 = vmlsq_s32(v7, v270, v288);
  v290 = vmlaq_s32(v7, v288, v268);
  v657 = vshlq_s32(v680, v133);
  v659 = vshlq_s32(v663, v133);
  v291 = vminq_s32(vmaxq_s32(vsubq_s32(v659, v657), v136), v137);
  v745 = vmlaq_s32(v289, v291, v268);
  v749 = vmlaq_s32(v290, v291, v270);
  v678 = vminq_s32(vmaxq_s32(vaddq_s32(v640, v638), v136), v137);
  v681 = vminq_s32(vmaxq_s32(v266, v136), v137);
  v661 = vminq_s32(vmaxq_s32(vaddq_s32(v636, v634), v136), v137);
  v664 = vminq_s32(vmaxq_s32(v267, v136), v137);
  v645 = vshlq_s32(v646, v133);
  v647 = vshlq_s32(v674, v133);
  v650 = vshlq_s32(v649, v133);
  v675 = vshlq_s32(v671, v133);
  v292 = vminq_s32(vmaxq_s32(vsubq_s32(v681, v678), v136), v137);
  v293 = vminq_s32(vmaxq_s32(vsubq_s32(v664, v661), v136), v137);
  v294 = vminq_s32(vmaxq_s32(vsubq_s32(v675, v650), v136), v137);
  v295 = vminq_s32(vmaxq_s32(vsubq_s32(v647, v645), v136), v137);
  v296 = vmlaq_s32(v7, v292, v273);
  v297 = vmlaq_s32(v7, v293, v273);
  v298 = vmlaq_s32(v7, v294, v273);
  v299 = vmlaq_s32(v7, v295, v273);
  v629 = vminq_s32(vmaxq_s32(v706, v136), v137);
  v631 = vminq_s32(vmaxq_s32(vaddq_s32(v632, v630), v136), v137);
  v633 = vminq_s32(vmaxq_s32(v718, v136), v137);
  v635 = vminq_s32(vmaxq_s32(v733, v136), v137);
  v641 = vshlq_s32(v870, v133);
  v672 = vshlq_s32(v855, v133);
  v637 = vshlq_s32(v873, v133);
  v639 = vshlq_s32(v851, v133);
  v300 = vminq_s32(vmaxq_s32(vsubq_s32(v641, v672), v136), v137);
  v301 = vminq_s32(vmaxq_s32(vsubq_s32(v637, v639), v136), v137);
  v302 = vminq_s32(vmaxq_s32(vsubq_s32(v633, v635), v136), v137);
  v303 = vminq_s32(vmaxq_s32(vsubq_s32(v629, v631), v136), v137);
  v730 = vmlaq_s32(v297, v302, v275);
  v734 = vmlaq_s32(v296, v303, v275);
  v719 = vmlaq_s32(v298, v301, v275);
  v707 = vmlaq_s32(v299, v300, v275);
  v852 = vmlaq_s32(vmlsq_s32(v7, v270, v295), v300, v268);
  v856 = vmlaq_s32(vmlsq_s32(v7, v270, v294), v301, v268);
  v871 = vmlaq_s32(vmlsq_s32(v7, v270, v293), v302, v268);
  v874 = vmlaq_s32(vmlsq_s32(v7, v270, v292), v303, v268);
  v625 = vminq_s32(vmaxq_s32(v741, v136), v137);
  v627 = vminq_s32(vmaxq_s32(v737, v136), v137);
  v304 = vminq_s32(vmaxq_s32(vsubq_s32(v625, v627), v136), v137);
  v305 = vmlsq_s32(v7, v270, v304);
  v306 = vmlaq_s32(v7, v304, v268);
  v623 = vminq_s32(vmaxq_s32(v264, v136), v137);
  v624 = vminq_s32(vmaxq_s32(v265, v136), v137);
  v307 = vminq_s32(vmaxq_s32(vsubq_s32(v623, v624), v136), v137);
  v308 = vmlsq_s32(v7, v270, v307);
  v309 = vmlaq_s32(v7, v307, v268);
  v622 = vshlq_s32(v772, v133);
  v310 = vshlq_s32(v840, v133);
  v311 = vminq_s32(vmaxq_s32(vsubq_s32(v622, v310), v136), v137);
  v312 = vshlq_s32(v796, v133);
  v313 = vshlq_s32(v847, v133);
  v314 = vminq_s32(vmaxq_s32(vsubq_s32(v312, v313), v136), v137);
  v315 = vminq_s32(vmaxq_s32(v767, v136), v137);
  v316 = vminq_s32(vmaxq_s32(v775, v136), v137);
  v317 = vminq_s32(vmaxq_s32(v778, v136), v137);
  v318 = vminq_s32(vmaxq_s32(v653, v136), v137);
  v319 = vshlq_s32(v861, v133);
  v320 = vshlq_s32(v858, v133);
  v321 = vshlq_s32(v818, v133);
  v322 = vshlq_s32(v815, v133);
  v323 = vminq_s32(vmaxq_s32(vsubq_s32(v321, v320), v136), v137);
  v324 = vminq_s32(vmaxq_s32(vsubq_s32(v322, v319), v136), v137);
  v325 = vminq_s32(vmaxq_s32(vsubq_s32(v318, v316), v136), v137);
  v326 = vminq_s32(vmaxq_s32(vsubq_s32(v317, v315), v136), v137);
  v738 = vmlaq_s32(vmlsq_s32(v7, v270, v314), v323, v268);
  v742 = vmlaq_s32(vmlsq_s32(v7, v270, v311), v324, v268);
  v773 = vmlaq_s32(v308, v325, v268);
  v776 = vmlaq_s32(v305, v326, v268);
  v816 = vmlaq_s32(v309, v325, v270);
  v819 = vmlaq_s32(v306, v326, v270);
  v797 = vmlaq_s32(vmlaq_s32(v7, v311, v268), v324, v270);
  v779 = vmlaq_s32(vmlaq_s32(v7, v314, v268), v323, v270);
  v327 = vaddq_s32(v758, v753);
  v328 = vaddq_s32(v762, v643);
  v329 = &av1_cospi_arr_data[64 * a3 - 608];
  v330 = vld1q_dup_f32(v329);
  v331 = vshlq_s32(v879, v133);
  v332 = vshlq_s32(v889, v133);
  v654 = vaddq_s32(v332, v331);
  v333 = vsubq_s32(v331, v332);
  v334 = vshlq_s32(v886, v133);
  v335 = vshlq_s32(v882, v133);
  v336 = vaddq_s32(v335, v334);
  v337 = vsubq_s32(v335, v334);
  v754 = vaddq_s32(v695, v692);
  v848 = vaddq_s32(v787, v782);
  v883 = vaddq_s32(v726, v722);
  v338 = vshlq_s32(vmlaq_s32(v7, v330, v891), v133);
  v339 = vshlq_s32(v683, v133);
  v340 = vshlq_s32(v837, v133);
  v341 = vaddq_s32(v340, v338);
  v342 = vsubq_s32(v338, v340);
  v343 = vaddq_s32(v339, v338);
  v344 = vsubq_s32(v338, v339);
  v345 = vmulq_s32(vminq_s32(vmaxq_s32(v337, v136), v137), v330);
  v346 = vmulq_s32(vminq_s32(vmaxq_s32(v333, v136), v137), v330);
  v347 = vaddq_s32(vsubq_s32(v7, v346), v345);
  v348 = vaddq_s32(v346, vaddq_s32(v7, v345));
  v349 = vminq_s32(vmaxq_s32(v327, v136), v137);
  v350 = vminq_s32(vmaxq_s32(vaddq_s32(v808, v271), v136), v137);
  v763 = vaddq_s32(v350, v349);
  v351 = vsubq_s32(v349, v350);
  v352 = vshlq_s32(v821, v133);
  v353 = vshlq_s32(v864, v133);
  v768 = vaddq_s32(v353, v352);
  v354 = vsubq_s32(v352, v353);
  v355 = vminq_s32(vmaxq_s32(vaddq_s32(v792, v804), v136), v137);
  v356 = vminq_s32(vmaxq_s32(v328, v136), v137);
  v357 = vaddq_s32(v356, v355);
  v358 = vsubq_s32(v356, v355);
  v359 = vshlq_s32(v876, v133);
  v360 = vshlq_s32(v832, v133);
  v841 = vaddq_s32(v360, v359);
  v361 = vsubq_s32(v360, v359);
  v783 = vaddq_s32(v310, v622);
  v788 = vaddq_s32(v313, v312);
  v362 = vaddq_s32(v321, v320);
  v727 = vaddq_s32(v322, v319);
  v693 = vaddq_s32(v318, v316);
  v833 = vaddq_s32(v317, v315);
  v363 = vminq_s32(vmaxq_s32(v336, v136), v137);
  v364 = vminq_s32(vmaxq_s32(v341, v136), v137);
  v365 = vaddq_s32(v364, v363);
  v366 = vsubq_s32(v364, v363);
  v367 = vminq_s32(vmaxq_s32(v343, v136), v137);
  v368 = vshlq_s32(v348, v133);
  v369 = vaddq_s32(v368, v367);
  v370 = vsubq_s32(v367, v368);
  v371 = vminq_s32(vmaxq_s32(v344, v136), v137);
  v372 = vshlq_s32(v347, v133);
  v373 = vaddq_s32(v372, v371);
  v374 = vsubq_s32(v371, v372);
  v375 = vminq_s32(vmaxq_s32(v654, v136), v137);
  v376 = vminq_s32(vmaxq_s32(v342, v136), v137);
  v377 = vaddq_s32(v376, v375);
  v378 = vsubq_s32(v376, v375);
  v379 = vminq_s32(vmaxq_s32(v351, v136), v137);
  v380 = vmulq_s32(vminq_s32(vmaxq_s32(v358, v136), v137), v330);
  v381 = vmulq_s32(v379, v330);
  v382 = vaddq_s32(vsubq_s32(v7, v381), v380);
  v383 = vaddq_s32(v381, vaddq_s32(v7, v380));
  v384 = vmulq_s32(vminq_s32(vmaxq_s32(v354, v136), v137), v330);
  v385 = vmulq_s32(vminq_s32(vmaxq_s32(v361, v136), v137), v330);
  v386 = vaddq_s32(vsubq_s32(v7, v384), v385);
  v387 = vaddq_s32(vaddq_s32(v384, v7), v385);
  v388 = vminq_s32(vmaxq_s32(v754, v136), v137);
  v389 = vminq_s32(vmaxq_s32(vaddq_s32(v714, v710), v136), v137);
  v390 = vaddq_s32(v389, v388);
  v391 = vsubq_s32(v388, v389);
  v392 = vminq_s32(vmaxq_s32(vaddq_s32(v702, v698), v136), v137);
  v393 = vminq_s32(vmaxq_s32(vaddq_s32(v689, v686), v136), v137);
  v394 = vaddq_s32(v393, v392);
  v395 = vsubq_s32(v393, v392);
  v396 = vminq_s32(vmaxq_s32(vaddq_s32(v669, v666), v136), v137);
  v397 = vminq_s32(vmaxq_s32(v848, v136), v137);
  v892 = vaddq_s32(v397, v396);
  v398 = vsubq_s32(v396, v397);
  v399 = vminq_s32(vmaxq_s32(v883, v136), v137);
  v400 = vminq_s32(vmaxq_s32(vaddq_s32(v659, v657), v136), v137);
  v699 = vaddq_s32(v400, v399);
  v703 = v394;
  v401 = vsubq_s32(v400, v399);
  v402 = vshlq_s32(v745, v133);
  v403 = vshlq_s32(v844, v133);
  v865 = vaddq_s32(v403, v402);
  v404 = vsubq_s32(v402, v403);
  v405 = vshlq_s32(v867, v133);
  v406 = vshlq_s32(v749, v133);
  v759 = vaddq_s32(v406, v405);
  v407 = vsubq_s32(v406, v405);
  v408 = vshlq_s32(v800, v133);
  v409 = vshlq_s32(v825, v133);
  v849 = vaddq_s32(v409, v408);
  v410 = vsubq_s32(v408, v409);
  v411 = vshlq_s32(v829, v133);
  v412 = vshlq_s32(v812, v133);
  v755 = vaddq_s32(v412, v411);
  v413 = vsubq_s32(v412, v411);
  v414 = vminq_s32(vmaxq_s32(v357, v136), v137);
  v415 = vminq_s32(vmaxq_s32(v365, v136), v137);
  v416 = vaddq_s32(v415, v414);
  v884 = vsubq_s32(v415, v414);
  v417 = vminq_s32(vmaxq_s32(v841, v136), v137);
  v418 = vminq_s32(vmaxq_s32(v369, v136), v137);
  v419 = vaddq_s32(v418, v417);
  v862 = vsubq_s32(v418, v417);
  v420 = vminq_s32(vmaxq_s32(v373, v136), v137);
  v421 = vshlq_s32(v387, v133);
  v684 = vaddq_s32(v421, v420);
  v842 = vsubq_s32(v420, v421);
  v422 = vminq_s32(vmaxq_s32(v377, v136), v137);
  v423 = vshlq_s32(v383, v133);
  v424 = vaddq_s32(v423, v422);
  v838 = vsubq_s32(v422, v423);
  v425 = vminq_s32(vmaxq_s32(v378, v136), v137);
  v426 = vshlq_s32(v382, v133);
  v696 = vaddq_s32(v426, v425);
  v813 = vsubq_s32(v425, v426);
  v427 = vminq_s32(vmaxq_s32(v374, v136), v137);
  v428 = vshlq_s32(v386, v133);
  v687 = vaddq_s32(v428, v427);
  v805 = vsubq_s32(v427, v428);
  v429 = vminq_s32(vmaxq_s32(v768, v136), v137);
  v430 = vminq_s32(vmaxq_s32(v370, v136), v137);
  v750 = vaddq_s32(v430, v429);
  v769 = vsubq_s32(v430, v429);
  v431 = vminq_s32(vmaxq_s32(v763, v136), v137);
  v432 = vminq_s32(vmaxq_s32(v366, v136), v137);
  v723 = vaddq_s32(v432, v431);
  v764 = vsubq_s32(v432, v431);
  v433 = vminq_s32(vmaxq_s32(v391, v136), v137);
  v434 = vmulq_s32(vminq_s32(vmaxq_s32(v395, v136), v137), v330);
  v435 = vmulq_s32(v433, v330);
  v711 = vaddq_s32(vsubq_s32(v7, v435), v434);
  v436 = vaddq_s32(v435, vaddq_s32(v7, v434));
  v437 = vmulq_s32(vminq_s32(vmaxq_s32(v398, v136), v137), v330);
  v438 = vmulq_s32(vminq_s32(vmaxq_s32(v401, v136), v137), v330);
  v690 = vaddq_s32(vsubq_s32(v7, v437), v438);
  v439 = vaddq_s32(vaddq_s32(v437, v7), v438);
  v440 = vmulq_s32(vminq_s32(vmaxq_s32(v404, v136), v137), v330);
  v441 = vmulq_s32(vminq_s32(vmaxq_s32(v407, v136), v137), v330);
  v746 = vaddq_s32(vsubq_s32(v7, v440), v441);
  v442 = vaddq_s32(vaddq_s32(v440, v7), v441);
  v443 = vmulq_s32(vminq_s32(vmaxq_s32(v410, v136), v137), v330);
  v444 = v7;
  v445 = vmulq_s32(vminq_s32(vmaxq_s32(v413, v136), v137), v330);
  v715 = vaddq_s32(vsubq_s32(v7, v443), v445);
  v446 = vaddq_s32(vaddq_s32(v443, v7), v445);
  v447 = vminq_s32(vmaxq_s32(vaddq_s32(v627, v625), v136), v137);
  v448 = vminq_s32(vmaxq_s32(vaddq_s32(v681, v678), v136), v137);
  v809 = vaddq_s32(v448, v447);
  v880 = vsubq_s32(v447, v448);
  v449 = vminq_s32(vmaxq_s32(vaddq_s32(v624, v623), v136), v137);
  v450 = vminq_s32(vmaxq_s32(vaddq_s32(v664, v661), v136), v137);
  v801 = vaddq_s32(v450, v449);
  v859 = vsubq_s32(v449, v450);
  v451 = vminq_s32(vmaxq_s32(v783, v136), v137);
  v452 = vminq_s32(vmaxq_s32(vaddq_s32(v675, v650), v136), v137);
  v453 = vaddq_s32(v452, v451);
  v845 = vsubq_s32(v451, v452);
  v454 = vminq_s32(vmaxq_s32(v788, v136), v137);
  v455 = vminq_s32(vmaxq_s32(vaddq_s32(v647, v645), v136), v137);
  v789 = vaddq_s32(v455, v454);
  v793 = v453;
  v830 = vsubq_s32(v454, v455);
  v456 = vshlq_s32(v738, v133);
  v457 = vshlq_s32(v707, v133);
  v784 = vaddq_s32(v457, v456);
  v822 = vsubq_s32(v456, v457);
  v458 = vshlq_s32(v742, v133);
  v459 = vshlq_s32(v719, v133);
  v460 = vaddq_s32(v459, v458);
  v461 = vsubq_s32(v458, v459);
  v462 = vshlq_s32(v773, v133);
  v463 = vshlq_s32(v730, v133);
  v464 = vaddq_s32(v463, v462);
  v465 = vsubq_s32(v462, v463);
  v466 = vshlq_s32(v776, v133);
  v467 = vshlq_s32(v734, v133);
  v468 = vaddq_s32(v467, v466);
  v469 = vsubq_s32(v466, v467);
  v470 = vminq_s32(vmaxq_s32(v833, v136), v137);
  v471 = vminq_s32(vmaxq_s32(vaddq_s32(v631, v629), v136), v137);
  v890 = vaddq_s32(v471, v470);
  v834 = vsubq_s32(v470, v471);
  v472 = vminq_s32(vmaxq_s32(v693, v136), v137);
  v473 = vminq_s32(vmaxq_s32(vaddq_s32(v635, v633), v136), v137);
  v887 = vaddq_s32(v473, v472);
  v826 = vsubq_s32(v472, v473);
  v474 = vminq_s32(vmaxq_s32(v727, v136), v137);
  v475 = vminq_s32(vmaxq_s32(vaddq_s32(v639, v637), v136), v137);
  v877 = vaddq_s32(v475, v474);
  v476 = vsubq_s32(v474, v475);
  v477 = vminq_s32(vmaxq_s32(v362, v136), v137);
  v478 = vminq_s32(vmaxq_s32(vaddq_s32(v672, v641), v136), v137);
  v868 = vaddq_s32(v478, v477);
  v479 = vsubq_s32(v477, v478);
  v480 = vshlq_s32(v852, v133);
  v481 = vshlq_s32(v779, v133);
  v482 = vaddq_s32(v481, v480);
  v483 = vsubq_s32(v481, v480);
  v484 = vshlq_s32(v856, v133);
  v485 = vshlq_s32(v797, v133);
  v486 = vaddq_s32(v485, v484);
  v487 = vsubq_s32(v485, v484);
  v488 = vshlq_s32(v871, v133);
  v489 = vshlq_s32(v816, v133);
  v490 = vaddq_s32(v489, v488);
  v491 = vsubq_s32(v489, v488);
  v492 = vshlq_s32(v874, v133);
  v493 = vshlq_s32(v819, v133);
  v494 = vaddq_s32(v493, v492);
  v495 = vsubq_s32(v493, v492);
  v496 = vminq_s32(vmaxq_s32(v703, v136), v137);
  v497 = vminq_s32(vmaxq_s32(v416, v136), v137);
  v498 = vaddq_s32(v497, v496);
  v499 = vsubq_s32(v497, v496);
  v500 = vminq_s32(vmaxq_s32(v699, v136), v137);
  v501 = vminq_s32(vmaxq_s32(v419, v136), v137);
  v893[0] = vminq_s32(vmaxq_s32(v498, v136), v137);
  v893[1] = vminq_s32(vmaxq_s32(vaddq_s32(v501, v500), v136), v137);
  v893[31] = vminq_s32(vmaxq_s32(v499, v136), v137);
  v893[30] = vminq_s32(vmaxq_s32(vsubq_s32(v501, v500), v136), v137);
  v502 = vminq_s32(vmaxq_s32(v759, v136), v137);
  v503 = vminq_s32(vmaxq_s32(v684, v136), v137);
  v504 = vaddq_s32(v503, v502);
  v505 = vsubq_s32(v503, v502);
  v506 = vminq_s32(vmaxq_s32(v755, v136), v137);
  v507 = vminq_s32(vmaxq_s32(v424, v136), v137);
  v893[2] = vminq_s32(vmaxq_s32(v504, v136), v137);
  v893[3] = vminq_s32(vmaxq_s32(vaddq_s32(v507, v506), v136), v137);
  v893[29] = vminq_s32(vmaxq_s32(v505, v136), v137);
  v893[28] = vminq_s32(vmaxq_s32(vsubq_s32(v507, v506), v136), v137);
  v508 = vminq_s32(vmaxq_s32(v696, v136), v137);
  v509 = vshlq_s32(v446, v133);
  v510 = vaddq_s32(v509, v508);
  v511 = vsubq_s32(v508, v509);
  v512 = vminq_s32(vmaxq_s32(v687, v136), v137);
  v513 = vshlq_s32(v442, v133);
  v893[4] = vminq_s32(vmaxq_s32(v510, v136), v137);
  v893[5] = vminq_s32(vmaxq_s32(vaddq_s32(v513, v512), v136), v137);
  v893[27] = vminq_s32(vmaxq_s32(v511, v136), v137);
  v893[26] = vminq_s32(vmaxq_s32(vsubq_s32(v512, v513), v136), v137);
  v514 = vminq_s32(vmaxq_s32(v750, v136), v137);
  v515 = vshlq_s32(v439, v133);
  v516 = vaddq_s32(v515, v514);
  v517 = vsubq_s32(v514, v515);
  v518 = vminq_s32(vmaxq_s32(v723, v136), v137);
  v519 = vshlq_s32(v436, v133);
  v893[6] = vminq_s32(vmaxq_s32(v516, v136), v137);
  v893[7] = vminq_s32(vmaxq_s32(vaddq_s32(v519, v518), v136), v137);
  v893[25] = vminq_s32(vmaxq_s32(v517, v136), v137);
  v893[24] = vminq_s32(vmaxq_s32(vsubq_s32(v518, v519), v136), v137);
  v520 = vminq_s32(vmaxq_s32(v764, v136), v137);
  v521 = vshlq_s32(v711, v133);
  v522 = vaddq_s32(v521, v520);
  v523 = vsubq_s32(v520, v521);
  v524 = vminq_s32(vmaxq_s32(v769, v136), v137);
  v525 = vshlq_s32(v690, v133);
  v893[8] = vminq_s32(vmaxq_s32(v522, v136), v137);
  v893[9] = vminq_s32(vmaxq_s32(vaddq_s32(v525, v524), v136), v137);
  v893[23] = vminq_s32(vmaxq_s32(v523, v136), v137);
  v893[22] = vminq_s32(vmaxq_s32(vsubq_s32(v524, v525), v136), v137);
  v526 = vminq_s32(vmaxq_s32(v805, v136), v137);
  v527 = vshlq_s32(v746, v133);
  v528 = vaddq_s32(v527, v526);
  v529 = vsubq_s32(v526, v527);
  v530 = vminq_s32(vmaxq_s32(v813, v136), v137);
  v531 = vshlq_s32(v715, v133);
  v893[10] = vminq_s32(vmaxq_s32(v528, v136), v137);
  v893[11] = vminq_s32(vmaxq_s32(vaddq_s32(v531, v530), v136), v137);
  v893[21] = vminq_s32(vmaxq_s32(v529, v136), v137);
  v893[20] = vminq_s32(vmaxq_s32(vsubq_s32(v530, v531), v136), v137);
  v532 = vminq_s32(vmaxq_s32(v849, v136), v137);
  v533 = vminq_s32(vmaxq_s32(v838, v136), v137);
  v534 = vaddq_s32(v533, v532);
  v535 = vsubq_s32(v533, v532);
  v536 = vminq_s32(vmaxq_s32(v865, v136), v137);
  v537 = vminq_s32(vmaxq_s32(v842, v136), v137);
  v893[12] = vminq_s32(vmaxq_s32(v534, v136), v137);
  v893[13] = vminq_s32(vmaxq_s32(vaddq_s32(v537, v536), v136), v137);
  v893[19] = vminq_s32(vmaxq_s32(v535, v136), v137);
  v893[18] = vminq_s32(vmaxq_s32(vsubq_s32(v537, v536), v136), v137);
  v538 = vminq_s32(vmaxq_s32(v892, v136), v137);
  v539 = vminq_s32(vmaxq_s32(v862, v136), v137);
  v540 = vaddq_s32(v539, v538);
  v541 = vsubq_s32(v539, v538);
  v542 = vminq_s32(vmaxq_s32(v390, v136), v137);
  v543 = vminq_s32(vmaxq_s32(v884, v136), v137);
  v893[14] = vminq_s32(vmaxq_s32(v540, v136), v137);
  v893[15] = vminq_s32(vmaxq_s32(vaddq_s32(v543, v542), v136), v137);
  v893[17] = vminq_s32(vmaxq_s32(v541, v136), v137);
  v893[16] = vminq_s32(vmaxq_s32(vsubq_s32(v543, v542), v136), v137);
  v893[32] = vminq_s32(vmaxq_s32(v809, v136), v137);
  v893[33] = vminq_s32(vmaxq_s32(v801, v136), v137);
  v893[34] = vminq_s32(vmaxq_s32(v793, v136), v137);
  v893[35] = vminq_s32(vmaxq_s32(v789, v136), v137);
  v893[36] = vminq_s32(vmaxq_s32(v784, v136), v137);
  v893[37] = vminq_s32(vmaxq_s32(v460, v136), v137);
  v544 = vmulq_s32(vminq_s32(vmaxq_s32(v469, v136), v137), v330);
  v893[38] = vminq_s32(vmaxq_s32(v464, v136), v137);
  v893[39] = vminq_s32(vmaxq_s32(v468, v136), v137);
  v545 = vmulq_s32(vminq_s32(vmaxq_s32(v465, v136), v137), v330);
  v546 = vmulq_s32(vminq_s32(vmaxq_s32(v495, v136), v137), v330);
  v547 = vmulq_s32(vminq_s32(vmaxq_s32(v491, v136), v137), v330);
  v548 = vmulq_s32(vminq_s32(vmaxq_s32(v461, v136), v137), v330);
  v893[40] = vshlq_s32(vaddq_s32(vsubq_s32(v444, v544), v546), v133);
  v893[41] = vshlq_s32(vaddq_s32(vsubq_s32(v444, v545), v547), v133);
  v549 = vmulq_s32(vminq_s32(vmaxq_s32(v822, v136), v137), v330);
  v550 = vmulq_s32(vminq_s32(vmaxq_s32(v487, v136), v137), v330);
  v551 = vmulq_s32(vminq_s32(vmaxq_s32(v483, v136), v137), v330);
  v552 = vmulq_s32(vminq_s32(vmaxq_s32(v830, v136), v137), v330);
  v893[42] = vshlq_s32(vaddq_s32(vsubq_s32(v444, v548), v550), v133);
  v893[43] = vshlq_s32(vaddq_s32(vsubq_s32(v444, v549), v551), v133);
  v553 = vmulq_s32(vminq_s32(vmaxq_s32(v845, v136), v137), v330);
  v554 = vminq_s32(vmaxq_s32(v476, v136), v137);
  v555 = vmulq_s32(vminq_s32(vmaxq_s32(v479, v136), v137), v330);
  v556 = vmulq_s32(v554, v330);
  v893[44] = vshlq_s32(vaddq_s32(vsubq_s32(v444, v552), v555), v133);
  v893[45] = vshlq_s32(vaddq_s32(vsubq_s32(v444, v553), v556), v133);
  v557 = vmulq_s32(vminq_s32(vmaxq_s32(v859, v136), v137), v330);
  v558 = vmulq_s32(vminq_s32(vmaxq_s32(v826, v136), v137), v330);
  v559 = vmulq_s32(vminq_s32(vmaxq_s32(v834, v136), v137), v330);
  v560 = vmulq_s32(vminq_s32(vmaxq_s32(v880, v136), v137), v330);
  v893[46] = vshlq_s32(vaddq_s32(vsubq_s32(v444, v557), v558), v133);
  v893[47] = vshlq_s32(vaddq_s32(vsubq_s32(v444, v560), v559), v133);
  v893[48] = vshlq_s32(vaddq_s32(v560, vaddq_s32(v444, v559)), v133);
  v893[49] = vshlq_s32(vaddq_s32(vaddq_s32(v557, v444), v558), v133);
  v893[50] = vshlq_s32(vaddq_s32(vaddq_s32(v553, v444), v556), v133);
  v893[51] = vshlq_s32(vaddq_s32(vaddq_s32(v552, v444), v555), v133);
  v893[52] = vshlq_s32(vaddq_s32(vaddq_s32(v549, v444), v551), v133);
  v893[53] = vshlq_s32(vaddq_s32(vaddq_s32(v548, v444), v550), v133);
  v893[54] = vshlq_s32(vaddq_s32(vaddq_s32(v545, v444), v547), v133);
  v893[55] = vshlq_s32(vaddq_s32(vaddq_s32(v544, v444), v546), v133);
  v893[56] = vminq_s32(vmaxq_s32(v494, v136), v137);
  v893[57] = vminq_s32(vmaxq_s32(v490, v136), v137);
  v893[58] = vminq_s32(vmaxq_s32(v486, v136), v137);
  v893[59] = vminq_s32(vmaxq_s32(v482, v136), v137);
  v893[60] = vminq_s32(vmaxq_s32(v868, v136), v137);
  v893[61] = vminq_s32(vmaxq_s32(v877, v136), v137);
  v893[62] = vminq_s32(vmaxq_s32(v887, v136), v137);
  v893[63] = vminq_s32(vmaxq_s32(v890, v136), v137);
  for (i = 63; i != 31; --i)
  {
    v562 = v893[v6];
    v563 = v893[i];
    a2[v6] = vminq_s32(vmaxq_s32(vaddq_s32(v563, v562), v136), v137);
    a2[i] = vminq_s32(vmaxq_s32(vsubq_s32(v562, v563), v136), v137);
    ++v6;
  }

  if (!a4)
  {
    if (a5 <= 10)
    {
      v564 = 10;
    }

    else
    {
      v564 = a5;
    }

    v565 = 32 << v564;
    v566 = vdupq_n_s32(-v565);
    v567 = vdupq_n_s32(v565 - 1);
    if (a6)
    {
      v568 = vdupq_n_s32(-a6);
      v569 = a2 + 2;
      v570 = -4;
      do
      {
        v571 = vrshlq_s32(*v569, v568);
        v572 = vrshlq_s32(v569[1], v568);
        v573 = vminq_s32(vmaxq_s32(vrshlq_s32(v569[-1], v568), v566), v567);
        v569[-2] = vminq_s32(vmaxq_s32(vrshlq_s32(v569[-2], v568), v566), v567);
        v569[-1] = v573;
        *v569 = vminq_s32(vmaxq_s32(v571, v566), v567);
        v569[1] = vminq_s32(vmaxq_s32(v572, v566), v567);
        v569 += 4;
        v570 += 4;
      }

      while (v570 < 0x3C);
    }

    else
    {
      v574 = a2[2];
      v575 = a2[3];
      v576 = vminq_s32(vmaxq_s32(a2[1], v566), v567);
      *a2 = vminq_s32(vmaxq_s32(*a2, v566), v567);
      a2[1] = v576;
      a2[2] = vminq_s32(vmaxq_s32(v574, v566), v567);
      a2[3] = vminq_s32(vmaxq_s32(v575, v566), v567);
      v577 = a2[6];
      v578 = a2[7];
      v579 = vminq_s32(vmaxq_s32(a2[5], v566), v567);
      a2[4] = vminq_s32(vmaxq_s32(a2[4], v566), v567);
      a2[5] = v579;
      a2[6] = vminq_s32(vmaxq_s32(v577, v566), v567);
      a2[7] = vminq_s32(vmaxq_s32(v578, v566), v567);
      v580 = a2[10];
      v581 = a2[11];
      v582 = vminq_s32(vmaxq_s32(a2[9], v566), v567);
      a2[8] = vminq_s32(vmaxq_s32(a2[8], v566), v567);
      a2[9] = v582;
      a2[10] = vminq_s32(vmaxq_s32(v580, v566), v567);
      a2[11] = vminq_s32(vmaxq_s32(v581, v566), v567);
      v583 = a2[14];
      v584 = a2[15];
      v585 = vminq_s32(vmaxq_s32(a2[13], v566), v567);
      a2[12] = vminq_s32(vmaxq_s32(a2[12], v566), v567);
      a2[13] = v585;
      a2[14] = vminq_s32(vmaxq_s32(v583, v566), v567);
      a2[15] = vminq_s32(vmaxq_s32(v584, v566), v567);
      v586 = a2[18];
      v587 = a2[19];
      v588 = vminq_s32(vmaxq_s32(a2[17], v566), v567);
      a2[16] = vminq_s32(vmaxq_s32(a2[16], v566), v567);
      a2[17] = v588;
      a2[18] = vminq_s32(vmaxq_s32(v586, v566), v567);
      a2[19] = vminq_s32(vmaxq_s32(v587, v566), v567);
      v589 = a2[22];
      v590 = a2[23];
      v591 = vminq_s32(vmaxq_s32(a2[21], v566), v567);
      a2[20] = vminq_s32(vmaxq_s32(a2[20], v566), v567);
      a2[21] = v591;
      a2[22] = vminq_s32(vmaxq_s32(v589, v566), v567);
      a2[23] = vminq_s32(vmaxq_s32(v590, v566), v567);
      v592 = a2[26];
      v593 = a2[27];
      v594 = vminq_s32(vmaxq_s32(a2[25], v566), v567);
      a2[24] = vminq_s32(vmaxq_s32(a2[24], v566), v567);
      a2[25] = v594;
      a2[26] = vminq_s32(vmaxq_s32(v592, v566), v567);
      a2[27] = vminq_s32(vmaxq_s32(v593, v566), v567);
      v595 = a2[30];
      v596 = a2[31];
      v597 = vminq_s32(vmaxq_s32(a2[29], v566), v567);
      a2[28] = vminq_s32(vmaxq_s32(a2[28], v566), v567);
      a2[29] = v597;
      a2[30] = vminq_s32(vmaxq_s32(v595, v566), v567);
      a2[31] = vminq_s32(vmaxq_s32(v596, v566), v567);
      v598 = a2[34];
      v599 = a2[35];
      v600 = vminq_s32(vmaxq_s32(a2[33], v566), v567);
      a2[32] = vminq_s32(vmaxq_s32(a2[32], v566), v567);
      a2[33] = v600;
      a2[34] = vminq_s32(vmaxq_s32(v598, v566), v567);
      a2[35] = vminq_s32(vmaxq_s32(v599, v566), v567);
      v601 = a2[38];
      v602 = a2[39];
      v603 = vminq_s32(vmaxq_s32(a2[37], v566), v567);
      a2[36] = vminq_s32(vmaxq_s32(a2[36], v566), v567);
      a2[37] = v603;
      a2[38] = vminq_s32(vmaxq_s32(v601, v566), v567);
      a2[39] = vminq_s32(vmaxq_s32(v602, v566), v567);
      v604 = a2[42];
      v605 = a2[43];
      v606 = vminq_s32(vmaxq_s32(a2[41], v566), v567);
      a2[40] = vminq_s32(vmaxq_s32(a2[40], v566), v567);
      a2[41] = v606;
      a2[42] = vminq_s32(vmaxq_s32(v604, v566), v567);
      a2[43] = vminq_s32(vmaxq_s32(v605, v566), v567);
      v607 = a2[46];
      v608 = a2[47];
      v609 = vminq_s32(vmaxq_s32(a2[45], v566), v567);
      a2[44] = vminq_s32(vmaxq_s32(a2[44], v566), v567);
      a2[45] = v609;
      a2[46] = vminq_s32(vmaxq_s32(v607, v566), v567);
      a2[47] = vminq_s32(vmaxq_s32(v608, v566), v567);
      v610 = a2[50];
      v611 = a2[51];
      v612 = vminq_s32(vmaxq_s32(a2[49], v566), v567);
      a2[48] = vminq_s32(vmaxq_s32(a2[48], v566), v567);
      a2[49] = v612;
      a2[50] = vminq_s32(vmaxq_s32(v610, v566), v567);
      a2[51] = vminq_s32(vmaxq_s32(v611, v566), v567);
      v613 = a2[54];
      v614 = a2[55];
      v615 = vminq_s32(vmaxq_s32(a2[53], v566), v567);
      a2[52] = vminq_s32(vmaxq_s32(a2[52], v566), v567);
      a2[53] = v615;
      a2[54] = vminq_s32(vmaxq_s32(v613, v566), v567);
      a2[55] = vminq_s32(vmaxq_s32(v614, v566), v567);
      v616 = a2[58];
      v617 = a2[59];
      v618 = vminq_s32(vmaxq_s32(a2[57], v566), v567);
      a2[56] = vminq_s32(vmaxq_s32(a2[56], v566), v567);
      a2[57] = v618;
      a2[58] = vminq_s32(vmaxq_s32(v616, v566), v567);
      a2[59] = vminq_s32(vmaxq_s32(v617, v566), v567);
      v619 = a2[62];
      v620 = a2[63];
      v621 = vminq_s32(vmaxq_s32(a2[61], v566), v567);
      a2[60] = vminq_s32(vmaxq_s32(a2[60], v566), v567);
      a2[61] = v621;
      a2[62] = vminq_s32(vmaxq_s32(v619, v566), v567);
      a2[63] = vminq_s32(vmaxq_s32(v620, v566), v567);
    }
  }

  return result;
}

int32x4_t idct32_stage9_neon(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int32x4_t *a6, int32x4_t *a7)
{
  v7 = a1[31];
  v8 = vminq_s32(vmaxq_s32(vaddq_s32(v7, *a1), *a6), *a7);
  v9 = vminq_s32(vmaxq_s32(vsubq_s32(*a1, v7), *a6), *a7);
  *a2 = v8;
  a2[31] = v9;
  v10 = a1[1];
  v11 = a1[30];
  v12 = vminq_s32(vmaxq_s32(vaddq_s32(v11, v10), *a6), *a7);
  v13 = vminq_s32(vmaxq_s32(vsubq_s32(v10, v11), *a6), *a7);
  a2[1] = v12;
  a2[30] = v13;
  v14 = a1[2];
  v15 = a1[29];
  v16 = vminq_s32(vmaxq_s32(vaddq_s32(v15, v14), *a6), *a7);
  v17 = vminq_s32(vmaxq_s32(vsubq_s32(v14, v15), *a6), *a7);
  a2[2] = v16;
  a2[29] = v17;
  v18 = a1[3];
  v19 = a1[28];
  v20 = vminq_s32(vmaxq_s32(vaddq_s32(v19, v18), *a6), *a7);
  v21 = vminq_s32(vmaxq_s32(vsubq_s32(v18, v19), *a6), *a7);
  a2[3] = v20;
  a2[28] = v21;
  v22 = a1[4];
  v23 = a1[27];
  v24 = vminq_s32(vmaxq_s32(vaddq_s32(v23, v22), *a6), *a7);
  v25 = vminq_s32(vmaxq_s32(vsubq_s32(v22, v23), *a6), *a7);
  a2[4] = v24;
  a2[27] = v25;
  v26 = a1[5];
  v27 = a1[26];
  v28 = vaddq_s32(v27, v26);
  v29 = vminq_s32(vmaxq_s32(vsubq_s32(v26, v27), *a6), *a7);
  a2[5] = vminq_s32(vmaxq_s32(v28, *a6), *a7);
  a2[26] = v29;
  v30 = a1[6];
  v31 = a1[25];
  v32 = vaddq_s32(v31, v30);
  v33 = vminq_s32(vmaxq_s32(vsubq_s32(v30, v31), *a6), *a7);
  a2[6] = vminq_s32(vmaxq_s32(v32, *a6), *a7);
  a2[25] = v33;
  v34 = a1[7];
  v35 = a1[24];
  v36 = vminq_s32(vmaxq_s32(vsubq_s32(v34, v35), *a6), *a7);
  a2[7] = vminq_s32(vmaxq_s32(vaddq_s32(v35, v34), *a6), *a7);
  a2[24] = v36;
  v37 = a1[8];
  v38 = a1[23];
  v39 = vminq_s32(vmaxq_s32(vaddq_s32(v38, v37), *a6), *a7);
  v40 = vminq_s32(vmaxq_s32(vsubq_s32(v37, v38), *a6), *a7);
  a2[8] = v39;
  a2[23] = v40;
  v41 = a1[9];
  v42 = a1[22];
  v43 = vaddq_s32(v42, v41);
  result = vminq_s32(vmaxq_s32(vsubq_s32(v41, v42), *a6), *a7);
  a2[9] = vminq_s32(vmaxq_s32(v43, *a6), *a7);
  a2[22] = result;
  v45 = a1[10];
  v46 = a1[21];
  v47 = vminq_s32(vmaxq_s32(vaddq_s32(v46, v45), *a6), *a7);
  v48 = vminq_s32(vmaxq_s32(vsubq_s32(v45, v46), *a6), *a7);
  a2[10] = v47;
  a2[21] = v48;
  v49 = a1[11];
  v50 = a1[20];
  v51 = vminq_s32(vmaxq_s32(vaddq_s32(v50, v49), *a6), *a7);
  v52 = vminq_s32(vmaxq_s32(vsubq_s32(v49, v50), *a6), *a7);
  a2[11] = v51;
  a2[20] = v52;
  v53 = a1[12];
  v54 = a1[19];
  v55 = vminq_s32(vmaxq_s32(vaddq_s32(v54, v53), *a6), *a7);
  v56 = vminq_s32(vmaxq_s32(vsubq_s32(v53, v54), *a6), *a7);
  a2[12] = v55;
  a2[19] = v56;
  v57 = a1[13];
  v58 = a1[18];
  v59 = vminq_s32(vmaxq_s32(vaddq_s32(v58, v57), *a6), *a7);
  v60 = vminq_s32(vmaxq_s32(vsubq_s32(v57, v58), *a6), *a7);
  a2[13] = v59;
  a2[18] = v60;
  v61 = a1[14];
  v62 = a1[17];
  v63 = vminq_s32(vmaxq_s32(vaddq_s32(v62, v61), *a6), *a7);
  v64 = vminq_s32(vmaxq_s32(vsubq_s32(v61, v62), *a6), *a7);
  a2[14] = v63;
  a2[17] = v64;
  v65 = a1[15];
  v66 = a1[16];
  v67 = vminq_s32(vmaxq_s32(vaddq_s32(v66, v65), *a6), *a7);
  v68 = vminq_s32(vmaxq_s32(vsubq_s32(v65, v66), *a6), *a7);
  a2[15] = v67;
  a2[16] = v68;
  if (!a3)
  {
    if (a4 <= 10)
    {
      v69 = 10;
    }

    else
    {
      v69 = a4;
    }

    v70 = 32 << v69;
    v71 = vdupq_n_s32(-v70);
    v72 = vdupq_n_s32(v70 - 1);
    if (a5)
    {
      v73 = vdupq_n_s32(-a5);
      v74 = vrshlq_s32(v8, v73);
      v75 = vrshlq_s32(v12, v73);
      *a2 = v74;
      a2[1] = v75;
      v76 = vrshlq_s32(v16, v73);
      v77 = vrshlq_s32(v20, v73);
      a2[2] = v76;
      a2[3] = v77;
      v78 = vrshlq_s32(v24, v73);
      v79 = a2[6];
      v80 = vrshlq_s32(a2[5], v73);
      a2[4] = v78;
      a2[5] = v80;
      v81 = vrshlq_s32(v79, v73);
      v82 = vrshlq_s32(a2[7], v73);
      a2[6] = v81;
      a2[7] = v82;
      v83 = vrshlq_s32(v39, v73);
      v84 = vrshlq_s32(a2[9], v73);
      a2[8] = v83;
      a2[9] = v84;
      v47 = vrshlq_s32(v47, v73);
      v51 = vrshlq_s32(v51, v73);
      a2[10] = v47;
      a2[11] = v51;
      v55 = vrshlq_s32(v55, v73);
      v59 = vrshlq_s32(v59, v73);
      a2[12] = v55;
      a2[13] = v59;
      v63 = vrshlq_s32(v63, v73);
      v67 = vrshlq_s32(v67, v73);
      a2[14] = v63;
      a2[15] = v67;
      v68 = vrshlq_s32(v68, v73);
      v64 = vrshlq_s32(v64, v73);
      a2[16] = v68;
      a2[17] = v64;
      v60 = vrshlq_s32(v60, v73);
      v56 = vrshlq_s32(v56, v73);
      v52 = vrshlq_s32(v52, v73);
      v48 = vrshlq_s32(v48, v73);
      result = vrshlq_s32(result, v73);
      v85 = vrshlq_s32(a2[23], v73);
      v86 = vrshlq_s32(v36, v73);
      v87 = vrshlq_s32(a2[26], v73);
      a2[25] = vrshlq_s32(a2[25], v73);
      a2[26] = v87;
      a2[27] = vrshlq_s32(a2[27], v73);
      a2[28] = vrshlq_s32(v21, v73);
      v88 = vrshlq_s32(a2[30], v73);
      a2[29] = vrshlq_s32(a2[29], v73);
      a2[30] = v88;
      a2[31] = vrshlq_s32(a2[31], v73);
    }

    else
    {
      v74 = *a2;
      v75 = a2[1];
      v76 = a2[2];
      v77 = a2[3];
      v78 = a2[4];
      v80 = a2[5];
      v81 = a2[6];
      v82 = a2[7];
      v83 = a2[8];
      v84 = a2[9];
      v85 = a2[23];
      v86 = a2[24];
    }

    *a2 = vminq_s32(vmaxq_s32(v74, v71), v72);
    a2[1] = vminq_s32(vmaxq_s32(v75, v71), v72);
    a2[2] = vminq_s32(vmaxq_s32(v76, v71), v72);
    a2[3] = vminq_s32(vmaxq_s32(v77, v71), v72);
    a2[4] = vminq_s32(vmaxq_s32(v78, v71), v72);
    a2[5] = vminq_s32(vmaxq_s32(v80, v71), v72);
    a2[6] = vminq_s32(vmaxq_s32(v81, v71), v72);
    a2[7] = vminq_s32(vmaxq_s32(v82, v71), v72);
    a2[8] = vminq_s32(vmaxq_s32(v83, v71), v72);
    a2[9] = vminq_s32(vmaxq_s32(v84, v71), v72);
    a2[10] = vminq_s32(vmaxq_s32(v47, v71), v72);
    a2[11] = vminq_s32(vmaxq_s32(v51, v71), v72);
    a2[12] = vminq_s32(vmaxq_s32(v55, v71), v72);
    a2[13] = vminq_s32(vmaxq_s32(v59, v71), v72);
    a2[14] = vminq_s32(vmaxq_s32(v63, v71), v72);
    a2[15] = vminq_s32(vmaxq_s32(v67, v71), v72);
    a2[16] = vminq_s32(vmaxq_s32(v68, v71), v72);
    a2[17] = vminq_s32(vmaxq_s32(v64, v71), v72);
    a2[18] = vminq_s32(vmaxq_s32(v60, v71), v72);
    a2[19] = vminq_s32(vmaxq_s32(v56, v71), v72);
    a2[20] = vminq_s32(vmaxq_s32(v52, v71), v72);
    a2[21] = vminq_s32(vmaxq_s32(v48, v71), v72);
    a2[22] = vminq_s32(vmaxq_s32(result, v71), v72);
    a2[23] = vminq_s32(vmaxq_s32(v85, v71), v72);
    v89 = a2[26];
    v90 = vminq_s32(vmaxq_s32(a2[25], v71), v72);
    a2[24] = vminq_s32(vmaxq_s32(v86, v71), v72);
    a2[25] = v90;
    v91 = a2[28];
    v92 = vminq_s32(vmaxq_s32(a2[27], v71), v72);
    a2[26] = vminq_s32(vmaxq_s32(v89, v71), v72);
    a2[27] = v92;
    v93 = a2[30];
    v94 = vminq_s32(vmaxq_s32(a2[29], v71), v72);
    a2[28] = vminq_s32(vmaxq_s32(v91, v71), v72);
    a2[29] = v94;
    result = vminq_s32(vmaxq_s32(a2[31], v71), v72);
    a2[30] = vminq_s32(vmaxq_s32(v93, v71), v72);
    a2[31] = result;
  }

  return result;
}

int32x4_t idct64_stage11_neon(uint64_t a1, int32x4_t *a2, int a3, int a4, int a5, int32x4_t *a6, int32x4_t *a7)
{
  v7 = 0;
  for (i = 63; i != 31; --i)
  {
    v9 = *(a1 + v7 * 16);
    v10 = *(a1 + i * 16);
    v11 = *a7;
    v12 = vaddq_s32(v10, v9);
    v13 = vmaxq_s32(vsubq_s32(v9, v10), *a6);
    a2[v7] = vminq_s32(vmaxq_s32(v12, *a6), *a7);
    result = vminq_s32(v13, v11);
    a2[i] = result;
    ++v7;
  }

  if (!a3)
  {
    if (a4 <= 10)
    {
      v15 = 10;
    }

    else
    {
      v15 = a4;
    }

    v16 = 32 << v15;
    result = vdupq_n_s32(-v16);
    v17 = vdupq_n_s32(v16 - 1);
    if (a5)
    {
      v18 = vdupq_n_s32(-a5);
      v19 = a2 + 2;
      v20 = -4;
      do
      {
        v21 = vrshlq_s32(*v19, v18);
        v22 = vrshlq_s32(v19[1], v18);
        v23 = vminq_s32(vmaxq_s32(vrshlq_s32(v19[-1], v18), result), v17);
        v19[-2] = vminq_s32(vmaxq_s32(vrshlq_s32(v19[-2], v18), result), v17);
        v19[-1] = v23;
        *v19 = vminq_s32(vmaxq_s32(v21, result), v17);
        v19[1] = vminq_s32(vmaxq_s32(v22, result), v17);
        v19 += 4;
        v20 += 4;
      }

      while (v20 < 0x3C);
    }

    else
    {
      v24 = vminq_s32(vmaxq_s32(a2[1], result), v17);
      *a2 = vminq_s32(vmaxq_s32(*a2, result), v17);
      a2[1] = v24;
      v25 = vminq_s32(vmaxq_s32(a2[3], result), v17);
      a2[2] = vminq_s32(vmaxq_s32(a2[2], result), v17);
      a2[3] = v25;
      v26 = vminq_s32(vmaxq_s32(a2[5], result), v17);
      a2[4] = vminq_s32(vmaxq_s32(a2[4], result), v17);
      a2[5] = v26;
      v27 = vminq_s32(vmaxq_s32(a2[7], result), v17);
      a2[6] = vminq_s32(vmaxq_s32(a2[6], result), v17);
      a2[7] = v27;
      v28 = vminq_s32(vmaxq_s32(a2[9], result), v17);
      a2[8] = vminq_s32(vmaxq_s32(a2[8], result), v17);
      a2[9] = v28;
      v29 = vminq_s32(vmaxq_s32(a2[11], result), v17);
      a2[10] = vminq_s32(vmaxq_s32(a2[10], result), v17);
      a2[11] = v29;
      v30 = vminq_s32(vmaxq_s32(a2[13], result), v17);
      a2[12] = vminq_s32(vmaxq_s32(a2[12], result), v17);
      a2[13] = v30;
      v31 = vminq_s32(vmaxq_s32(a2[15], result), v17);
      a2[14] = vminq_s32(vmaxq_s32(a2[14], result), v17);
      a2[15] = v31;
      v32 = vminq_s32(vmaxq_s32(a2[17], result), v17);
      a2[16] = vminq_s32(vmaxq_s32(a2[16], result), v17);
      a2[17] = v32;
      v33 = vminq_s32(vmaxq_s32(a2[19], result), v17);
      a2[18] = vminq_s32(vmaxq_s32(a2[18], result), v17);
      a2[19] = v33;
      v34 = vminq_s32(vmaxq_s32(a2[21], result), v17);
      a2[20] = vminq_s32(vmaxq_s32(a2[20], result), v17);
      a2[21] = v34;
      v35 = vminq_s32(vmaxq_s32(a2[23], result), v17);
      a2[22] = vminq_s32(vmaxq_s32(a2[22], result), v17);
      a2[23] = v35;
      v36 = vminq_s32(vmaxq_s32(a2[25], result), v17);
      a2[24] = vminq_s32(vmaxq_s32(a2[24], result), v17);
      a2[25] = v36;
      v37 = vminq_s32(vmaxq_s32(a2[27], result), v17);
      a2[26] = vminq_s32(vmaxq_s32(a2[26], result), v17);
      a2[27] = v37;
      v38 = vminq_s32(vmaxq_s32(a2[29], result), v17);
      a2[28] = vminq_s32(vmaxq_s32(a2[28], result), v17);
      a2[29] = v38;
      v39 = vminq_s32(vmaxq_s32(a2[31], result), v17);
      a2[30] = vminq_s32(vmaxq_s32(a2[30], result), v17);
      a2[31] = v39;
      v40 = vminq_s32(vmaxq_s32(a2[33], result), v17);
      a2[32] = vminq_s32(vmaxq_s32(a2[32], result), v17);
      a2[33] = v40;
      v41 = vminq_s32(vmaxq_s32(a2[35], result), v17);
      a2[34] = vminq_s32(vmaxq_s32(a2[34], result), v17);
      a2[35] = v41;
      v42 = vminq_s32(vmaxq_s32(a2[37], result), v17);
      a2[36] = vminq_s32(vmaxq_s32(a2[36], result), v17);
      a2[37] = v42;
      v43 = vminq_s32(vmaxq_s32(a2[39], result), v17);
      a2[38] = vminq_s32(vmaxq_s32(a2[38], result), v17);
      a2[39] = v43;
      v44 = vminq_s32(vmaxq_s32(a2[41], result), v17);
      a2[40] = vminq_s32(vmaxq_s32(a2[40], result), v17);
      a2[41] = v44;
      v45 = vminq_s32(vmaxq_s32(a2[43], result), v17);
      a2[42] = vminq_s32(vmaxq_s32(a2[42], result), v17);
      a2[43] = v45;
      v46 = vminq_s32(vmaxq_s32(a2[45], result), v17);
      a2[44] = vminq_s32(vmaxq_s32(a2[44], result), v17);
      a2[45] = v46;
      v47 = vminq_s32(vmaxq_s32(a2[47], result), v17);
      a2[46] = vminq_s32(vmaxq_s32(a2[46], result), v17);
      a2[47] = v47;
      v48 = vminq_s32(vmaxq_s32(a2[49], result), v17);
      a2[48] = vminq_s32(vmaxq_s32(a2[48], result), v17);
      a2[49] = v48;
      v49 = vminq_s32(vmaxq_s32(a2[51], result), v17);
      a2[50] = vminq_s32(vmaxq_s32(a2[50], result), v17);
      a2[51] = v49;
      v50 = vminq_s32(vmaxq_s32(a2[53], result), v17);
      a2[52] = vminq_s32(vmaxq_s32(a2[52], result), v17);
      a2[53] = v50;
      v51 = vminq_s32(vmaxq_s32(a2[55], result), v17);
      a2[54] = vminq_s32(vmaxq_s32(a2[54], result), v17);
      a2[55] = v51;
      v52 = vminq_s32(vmaxq_s32(a2[57], result), v17);
      a2[56] = vminq_s32(vmaxq_s32(a2[56], result), v17);
      a2[57] = v52;
      v53 = vminq_s32(vmaxq_s32(a2[59], result), v17);
      a2[58] = vminq_s32(vmaxq_s32(a2[58], result), v17);
      a2[59] = v53;
      v54 = vminq_s32(vmaxq_s32(a2[61], result), v17);
      a2[60] = vminq_s32(vmaxq_s32(a2[60], result), v17);
      a2[61] = v54;
      v55 = vmaxq_s32(a2[62], result);
      result = vminq_s32(vmaxq_s32(a2[63], result), v17);
      a2[62] = vminq_s32(v55, v17);
      a2[63] = result;
    }
  }

  return result;
}

uint64_t inv_txfm2d_add_h_identity_neon(uint64_t result, int16x4_t *a2, int a3, int a4, unsigned int a5, unsigned int a6)
{
  v7 = result;
  v76[124] = *MEMORY[0x277D85DE8];
  v8 = tx_size_high_9[a5];
  v9 = v8;
  if (v8 >= 32)
  {
    v10 = 32;
  }

  else
  {
    v10 = tx_size_high_9[a5];
  }

  v71 = *(&av1_inv_txfm_shift_ls + a5);
  v11 = tx_size_wide_10[a5];
  if (v11 >= 32)
  {
    v12 = 32;
  }

  else
  {
    v12 = v11;
  }

  v65 = tx_size_high_9[a5];
  v64 = tx_size_wide_10[a5];
  if (v11 == v8)
  {
    goto LABEL_8;
  }

  if (v11 > v8)
  {
    if (v11 == 2 * v8)
    {
      v13 = 1;
      goto LABEL_9;
    }

    if (v11 == 4 * v8)
    {
      v13 = 2;
      goto LABEL_9;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  if (v8 == 2 * v11)
  {
    v13 = -1;
    goto LABEL_9;
  }

  if (v8 != 4 * v11)
  {
    goto LABEL_8;
  }

  v13 = -2;
LABEL_9:
  v68 = (v12 >> 2);
  v63 = *(&highbd_txfm_all_1d_zeros_w8_arr[12 * tx_size_high_log2_6[a5] - 24] + 4 * vitx_1d_tab_0[a4] + lowbd_txfm_all_1d_zeros_idx_0[v10 - 1]);
  v61 = (a4 - 4) >> 1;
  v60 = (v61 | ((a4 - 4) << 7)) > 5u;
  v70 = ((v10 + 7) >> 2) & 0xFFFFFFFE;
  if (v70 >= 1)
  {
    v69 = *(&highbd_txfm_all_1d_zeros_w8_arr[12 * tx_size_wide_log2_3[a5] - 24] + 4 * hitx_1d_tab_0[a4]);
    if (v68 < 1)
    {
      if (v13 == -1 || v13 == 1)
      {
        v35 = 0;
        v36 = 4 * v10;
        v37 = vdupq_n_s32(0xB50u);
        v67 = v37;
        do
        {
          v38 = 0;
          v39 = v7;
          do
          {
            v73[v38++] = *v39;
            v39 = (v39 + v36);
          }

          while (v12 != v38);
          v40 = 0;
          do
          {
            v73[v40] = vrshrq_n_s32(vmulq_s32(v73[v40], v37), 0xCuLL);
            ++v40;
          }

          while (v12 != v40);
          result = v69(v73, v73, 12, 0, a6, -*v71);
          v37 = v67;
          ++v35;
          ++v7;
        }

        while (v35 != v70);
      }

      else
      {
        v41 = 0;
        v42 = 4 * v10;
        do
        {
          v43 = 0;
          v44 = v7;
          do
          {
            v73[v43++] = *v44;
            v44 = (v44 + v42);
          }

          while (v12 != v43);
          result = v69(v73, v73, 12, 0, a6, -*v71);
          ++v41;
          ++v7;
        }

        while (v41 != v70);
      }
    }

    else
    {
      v14 = 0;
      v15 = 4 * v10;
      v16 = v76;
      v17 = 16 * v8;
      v18 = vdupq_n_s32(0xB50u);
      v66 = v18;
      do
      {
        v19 = 0;
        v20 = v7;
        do
        {
          v73[v19++] = *v20;
          v20 = (v20 + v15);
        }

        while (v12 != v19);
        if (v13 == 1 || v13 == -1)
        {
          v21 = v73;
          v22 = v12;
          do
          {
            *v21 = vrshrq_n_s32(vmulq_s32(*v21, v18), 0xCuLL);
            ++v21;
            --v22;
          }

          while (v22);
        }

        result = v69(v73, v73, 12, 0, a6, -*v71);
        v23 = v16;
        v24 = &v74;
        v25 = (v12 >> 2);
        do
        {
          v26 = v24[-2];
          v27 = v24[-1];
          v28 = vtrn1q_s32(v26, v27);
          v29 = vtrn2q_s32(v26, v27);
          v30 = v24[1];
          v31 = vtrn1q_s32(*v24, v30);
          v32 = vtrn2q_s32(*v24, v30);
          v33 = vzip2q_s64(v28, v31);
          v28.i64[1] = v31.i64[0];
          v31.i64[0] = v29.i64[0];
          v31.i64[1] = v32.i64[0];
          v34 = vzip2q_s64(v29, v32);
          v24[-2] = v28;
          v24[-1] = v31;
          *v24 = v33;
          v24[1] = v34;
          v24 += 4;
          v23[-2] = v28;
          v23[-1] = v31;
          *v23 = v33;
          v23[1] = v34;
          v23 = (v23 + v17);
          --v25;
        }

        while (v25);
        ++v14;
        ++v7;
        v16 += 4;
        v18 = v66;
      }

      while (v14 != v70);
    }
  }

  if (v68 >= 1)
  {
    v45 = 0;
    v46 = v75;
    do
    {
      result = v63(&v75[v45 * v65], &v75[v45 * v65], 12, 1, a6, 0);
      v47 = vdupq_n_s32(v71[1]);
      v48 = v46;
      v49 = v9;
      do
      {
        *v48 = vrshlq_s32(*v48, v47);
        ++v48;
        --v49;
      }

      while (v49);
      ++v45;
      v46 += v65;
    }

    while (v45 != v68);
  }

  v50 = (v64 >> 3);
  if (v50 >= 1)
  {
    v51 = 0;
    v52 = 0;
    v53 = vdupq_n_s32(~(-1 << a6));
    if ((v60 | (0x18u >> v61)))
    {
      v54 = 0;
    }

    else
    {
      v54 = (v9 - 1);
    }

    v55 = &v75[v54];
    v56 = 16;
    if (((v60 | (0x18u >> v61)) & 1) == 0)
    {
      v56 = -16;
    }

    do
    {
      v57 = &v55[v51];
      v58 = a2;
      v59 = v9;
      do
      {
        *v58->i8 = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(*v57, *v58), 0), v53)), vminq_s32(vmaxq_s32(vaddw_high_s16(v57[v9], *v58->i8), 0), v53));
        v58 = (v58 + 2 * a3);
        v57 = (v57 + v56);
        --v59;
      }

      while (v59);
      ++v52;
      a2 += 2;
      v51 += 2 * v65;
    }

    while (v52 != v50);
  }

  return result;
}

uint64_t inv_txfm2d_add_v_identity_neon(uint64_t result, int16x4_t *a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v77 = a4;
  v7 = result;
  v88[124] = *MEMORY[0x277D85DE8];
  v8 = tx_size_wide_10[a5];
  v83 = *(&av1_inv_txfm_shift_ls + a5);
  if (v8 >= 32)
  {
    v9 = 32;
  }

  else
  {
    v9 = tx_size_wide_10[a5];
  }

  v10 = tx_size_high_9[a5];
  v11 = v10;
  if (v10 >= 32)
  {
    v12 = 32;
  }

  else
  {
    v12 = v10;
  }

  v75 = tx_size_high_9[a5];
  v74 = tx_size_wide_10[a5];
  if (v8 == v10)
  {
    goto LABEL_8;
  }

  if (v8 > v10)
  {
    if (v8 == 2 * v10)
    {
      v82 = 1;
      goto LABEL_9;
    }

    if (v8 == 4 * v10)
    {
      v82 = 2;
      goto LABEL_9;
    }

LABEL_8:
    v82 = 0;
    goto LABEL_9;
  }

  if (v10 == 2 * v8)
  {
    v82 = -1;
    goto LABEL_9;
  }

  if (v10 != 4 * v8)
  {
    goto LABEL_8;
  }

  v82 = -2;
LABEL_9:
  v13 = (v9 >> 2);
  v73 = *(&highbd_txfm_all_1d_zeros_w8_arr[12 * tx_size_high_log2_6[a5] - 24] + 4 * vitx_1d_tab_0[a4]);
  v76 = a4 > 0xF;
  v81 = (v12 >> 2);
  if (v81 >= 1)
  {
    v14 = v9 - 1;
    v15 = (v14 & 0xFFFFFFF8) + 8;
    v80 = *(&highbd_txfm_all_1d_zeros_w8_arr[12 * tx_size_wide_log2_3[a5] - 24] + 4 * hitx_1d_tab_0[a4] + lowbd_txfm_all_1d_zeros_idx_0[v14]);
    v16 = 0;
    if ((a4 > 0xF) | (0x7F1Fu >> a4) & 1)
    {
      v17 = 4 * v12;
      v18 = v88;
      v19 = vdupq_n_s32(0xB50u);
      v78 = v19;
      do
      {
        v20 = 0;
        v21 = v7;
        do
        {
          v85[v20++] = *v21;
          v21 = (v21 + v17);
        }

        while (v15 != v20);
        if (v82 == 1 || v82 == -1)
        {
          v22 = v85;
          v23 = -v15;
          do
          {
            *v22 = vrshrq_n_s32(vmulq_s32(*v22, v19), 0xCuLL);
            ++v22;
            v24 = __CFADD__(v23++, 1);
          }

          while (!v24);
        }

        result = v80(v85, v85, 12, 0, a6, -*v83);
        if (v13 >= 1)
        {
          v25 = v18;
          v26 = v86;
          v27 = v13;
          do
          {
            v28 = v26[-2];
            v29 = v26[-1];
            v30 = vtrn1q_s32(v28, v29);
            v31 = vtrn2q_s32(v28, v29);
            v32 = *v26;
            v33 = v26[1];
            v26 += 4;
            v34 = vtrn1q_s32(v32, v33);
            v35 = vzip2q_s64(v30, v34);
            v30.i64[1] = v34.i64[0];
            v36 = vtrn2q_s32(v32, v33);
            v37 = vzip2q_s64(v31, v36);
            v31.i64[1] = v36.i64[0];
            v25[-2] = v30;
            v25[-1] = v31;
            *v25 = v35;
            v25[1] = v37;
            v25 += v11;
            --v27;
          }

          while (v27);
        }

        ++v16;
        ++v7;
        v18 += 4;
        v19 = v78;
      }

      while (v16 != v81);
    }

    else
    {
      v38 = 4 * v12;
      v39 = &v87[(v13 - 1) * v10 + 2];
      v40 = vdupq_n_s32(0xB50u);
      v79 = v40;
      do
      {
        v41 = 0;
        v42 = v7;
        do
        {
          v85[v41++] = *v42;
          v42 = (v42 + v38);
        }

        while (v15 != v41);
        if (v82 == 1 || v82 == -1)
        {
          v43 = v85;
          v44 = -v15;
          do
          {
            *v43 = vrshrq_n_s32(vmulq_s32(*v43, v40), 0xCuLL);
            ++v43;
            v24 = __CFADD__(v44++, 1);
          }

          while (!v24);
        }

        result = v80(v85, v85, 12, 0, a6, -*v83);
        if (v13 >= 1)
        {
          v45 = v39;
          v46 = v86;
          v47 = v13;
          do
          {
            v48 = v46[1];
            v49 = vtrn1q_s32(v48, *v46);
            v50 = vtrn2q_s32(v48, *v46);
            v52 = v46[-2];
            v51 = v46[-1];
            v53 = vtrn1q_s32(v51, v52);
            v54 = vzip2q_s64(v49, v53);
            v49.i64[1] = v53.i64[0];
            v55 = vtrn2q_s32(v51, v52);
            v56 = vzip2q_s64(v50, v55);
            v50.i64[1] = v55.i64[0];
            v45[-2] = v49;
            v45[-1] = v50;
            *v45 = v54;
            v45[1] = v56;
            v46 += 4;
            v45 -= v11;
            --v47;
          }

          while (v47);
        }

        ++v16;
        ++v7;
        v39 += 4;
        v40 = v79;
      }

      while (v16 != v81);
    }
  }

  if (v13 >= 1)
  {
    v57 = 0;
    v58 = v87;
    do
    {
      result = v73(&v87[v57 * v11], &v87[v57 * v11], 12, 1, a6, 0);
      v59 = vdupq_n_s32(v83[1]);
      v60 = v58;
      v61 = v75;
      do
      {
        *v60 = vrshlq_s32(*v60, v59);
        ++v60;
        --v61;
      }

      while (v61);
      ++v57;
      v58 += v11;
    }

    while (v57 != v13);
  }

  v62 = (v74 >> 3);
  if (v62 >= 1)
  {
    v63 = 0;
    v64 = 0;
    v65 = vdupq_n_s32(~(-1 << a6));
    if ((v76 | (0xBEAFu >> v77)))
    {
      v66 = 0;
    }

    else
    {
      v66 = (v75 - 1);
    }

    v67 = &v87[v66];
    v68 = 16;
    if (((v76 | (0xBEAFu >> v77)) & 1) == 0)
    {
      v68 = -16;
    }

    do
    {
      v69 = &v67[v63];
      v70 = a2;
      v71 = v11;
      do
      {
        *v70->i8 = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(*v69, *v70), 0), v65)), vminq_s32(vmaxq_s32(vaddw_high_s16(v69[v11], *v70->i8), 0), v65));
        v70 = (v70 + 2 * a3);
        v69 = (v69 + v68);
        --v71;
      }

      while (v71);
      ++v64;
      a2 += 2;
      v63 += 2 * v11;
    }

    while (v64 != v62);
  }

  return result;
}

uint64_t inv_txfm2d_add_idtx_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x28223BE20](a1, a2, a3);
  v70 = v7;
  v9 = v8;
  v10 = result;
  v74[508] = *MEMORY[0x277D85DE8];
  v69 = *(&av1_inv_txfm_shift_ls + v6);
  v11 = tx_size_wide_10[v6];
  v12 = tx_size_high_9[v6];
  v13 = v12;
  if (v12 >= 32)
  {
    v14 = 32;
  }

  else
  {
    v14 = v12;
  }

  if (v11 >= 32)
  {
    v15 = 32;
  }

  else
  {
    v15 = v11;
  }

  v60 = v4;
  v63 = tx_size_high_9[v6];
  v62 = tx_size_wide_10[v6];
  if (v11 == v12)
  {
    goto LABEL_8;
  }

  if (v11 > v12)
  {
    if (v11 == 2 * v12)
    {
      v16 = 1;
      goto LABEL_9;
    }

    if (v11 == 4 * v12)
    {
      v16 = 2;
      goto LABEL_9;
    }

LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  if (v12 == 2 * v11)
  {
    v16 = -1;
    goto LABEL_9;
  }

  if (v12 != 4 * v11)
  {
    goto LABEL_8;
  }

  v16 = -2;
LABEL_9:
  v66 = (v15 >> 2);
  v61 = *(&highbd_txfm_all_1d_zeros_w8_arr[12 * tx_size_high_log2_6[v6] - 24] + 4 * vitx_1d_tab_0[v5]);
  v68 = (v14 >> 2);
  if (v68 >= 1)
  {
    v67 = *(&highbd_txfm_all_1d_zeros_w8_arr[12 * tx_size_wide_log2_3[v6] - 24] + 4 * hitx_1d_tab_0[v5]);
    if (v66 < 1)
    {
      if (v16 == -1 || v16 == 1)
      {
        v38 = 0;
        v39 = 4 * v14;
        v40 = vdupq_n_s32(0xB50u);
        v65 = v40;
        do
        {
          v41 = 0;
          v42 = v10;
          do
          {
            v71[v41++] = *v42;
            v42 = (v42 + v39);
          }

          while (v15 != v41);
          v43 = 0;
          do
          {
            v71[v43] = vrshrq_n_s32(vmulq_s32(v71[v43], v40), 0xCuLL);
            ++v43;
          }

          while (v15 != v43);
          result = v67(v71, v71, 12, 0, v70, -*v69);
          v40 = v65;
          ++v38;
          ++v10;
        }

        while (v38 != v68);
      }

      else
      {
        v44 = 0;
        v45 = 4 * v14;
        do
        {
          v46 = 0;
          v47 = v10;
          do
          {
            v71[v46++] = *v47;
            v47 = (v47 + v45);
          }

          while (v15 != v46);
          result = v67(v71, v71, 12, 0, v70, -*v69);
          ++v44;
          ++v10;
        }

        while (v44 != v68);
      }
    }

    else
    {
      v17 = 0;
      v18 = 4 * v14;
      v19 = v74;
      v20 = 16 * v12;
      v21 = vdupq_n_s32(0xB50u);
      v64 = v21;
      do
      {
        v22 = 0;
        v23 = v10;
        do
        {
          v71[v22++] = *v23;
          v23 = (v23 + v18);
        }

        while (v15 != v22);
        if (v16 == 1 || v16 == -1)
        {
          v24 = v71;
          v25 = v15;
          do
          {
            *v24 = vrshrq_n_s32(vmulq_s32(*v24, v21), 0xCuLL);
            ++v24;
            --v25;
          }

          while (v25);
        }

        result = v67(v71, v71, 12, 0, v70, -*v69);
        v26 = v19;
        v27 = &v72;
        v28 = (v15 >> 2);
        do
        {
          v29 = v27[-2];
          v30 = v27[-1];
          v31 = vtrn1q_s32(v29, v30);
          v32 = vtrn2q_s32(v29, v30);
          v33 = v27[1];
          v34 = vtrn1q_s32(*v27, v33);
          v35 = vtrn2q_s32(*v27, v33);
          v36 = vzip2q_s64(v31, v34);
          v31.i64[1] = v34.i64[0];
          v34.i64[0] = v32.i64[0];
          v34.i64[1] = v35.i64[0];
          v37 = vzip2q_s64(v32, v35);
          v27[-2] = v31;
          v27[-1] = v34;
          *v27 = v36;
          v27[1] = v37;
          v27 += 4;
          v26[-2] = v31;
          v26[-1] = v34;
          *v26 = v36;
          v26[1] = v37;
          v26 = (v26 + v20);
          --v28;
        }

        while (v28);
        ++v17;
        ++v10;
        v19 += 4;
        v21 = v64;
      }

      while (v17 != v68);
    }
  }

  if (v66 >= 1)
  {
    v48 = 0;
    v49 = v73;
    do
    {
      result = v61(&v73[v48 * v63], &v73[v48 * v63], 12, 1, v70, 0);
      v50 = vdupq_n_s32(v69[1]);
      v51 = v49;
      v52 = v13;
      do
      {
        *v51 = vrshlq_s32(*v51, v50);
        ++v51;
        --v52;
      }

      while (v52);
      ++v48;
      v49 += v63;
    }

    while (v48 != v66);
  }

  v53 = (v62 >> 3);
  if (v53 >= 1)
  {
    v54 = 0;
    v55 = 0;
    v56 = vdupq_n_s32(~(-1 << v70));
    do
    {
      v57 = &v73[v54];
      v58 = v9;
      v59 = v13;
      do
      {
        *v58->i8 = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(*v57, *v58), 0), v56)), vminq_s32(vmaxq_s32(vaddw_high_s16(v57[v13], *v58->i8), 0), v56));
        ++v57;
        v58 = (v58 + 2 * v60);
        --v59;
      }

      while (v59);
      ++v55;
      v54 += 2 * v63;
      v9 += 2;
    }

    while (v55 != v53);
  }

  return result;
}

void av1_highbd_fwd_txfm(int16x4_t *a1, int32x4_t *a2, uint64_t a3, unsigned __int8 *a4, __n128 a5)
{
  v48 = *MEMORY[0x277D85DE8];
  switch(a4[1])
  {
    case 0u:
      if (*(a4 + 1))
      {
        v5 = *(a1 + 2 * a3);
        v6 = *(a1 + 4 * a3);
        v7 = vadd_s16(v5, *a1);
        v8 = vsub_s16(*(a1 + 6 * a3), v6);
        v9 = vhsub_s16(v7, v8);
        v10 = vsub_s16(v9, v5);
        v11 = vsub_s16(v9, v6);
        *v12.i8 = vsub_s16(v7, v11);
        *v13.i8 = vadd_s16(v10, v8);
        v12.u64[1] = v11;
        v13.u64[1] = v10;
        v14 = vtrn1q_s32(v12, v13);
        v15 = vtrn2q_s32(v12, v13);
        v13.i64[0] = vextq_s8(v14, v14, 8uLL).u64[0];
        *v12.i8 = vtrn1_s16(*v14.i8, *v13.i8);
        *v14.i8 = vtrn2_s16(*v14.i8, *v13.i8);
        v13.i64[0] = vextq_s8(v15, v15, 8uLL).u64[0];
        v16 = vtrn1_s16(*v15.i8, *v13.i8);
        *v15.i8 = vtrn2_s16(*v15.i8, *v13.i8);
        *v13.i8 = vadd_s16(*v12.i8, *v14.i8);
        *v15.i8 = vsub_s16(*v15.i8, v16);
        *v12.i8 = vhsub_s16(*v13.i8, *v15.i8);
        *v14.i8 = vsub_s16(*v12.i8, *v14.i8);
        *v12.i8 = vsub_s16(*v12.i8, v16);
        *a2 = vshll_n_s16(vsub_s16(*v13.i8, *v12.i8), 2uLL);
        a2[1] = vshll_n_s16(*v12.i8, 2uLL);
        a2[2] = vshll_n_s16(vadd_s16(*v15.i8, *v14.i8), 2uLL);
        a2[3] = vshll_n_s16(*v14.i8, 2uLL);
      }

      else
      {
        v26 = *a4;

        av1_fwd_txfm2d_4x4_neon(a1, a2, a3, v26);
      }

      return;
    case 1u:
      v19 = *a4;

      av1_fwd_txfm2d_8x8_neon(a1, a2, a3, v19);
      return;
    case 2u:
      v17 = *a4;

      av1_fwd_txfm2d_16x16_neon(a1, a2, a3, v17, a5);
      return;
    case 3u:

      av1_fwd_txfm2d_32x32_neon(a1, a2, a3);
      return;
    case 4u:

      av1_fwd_txfm2d_64x64_neon(a1, a2, a3);
      return;
    case 5u:
      v20 = 0;
      v21 = *a4;
      v22 = row_rect_highbd_txfm4_xn_arr[*a4];
      if (v21 > 0xF)
      {
        v23 = a2;
        goto LABEL_48;
      }

      if (((1 << v21) & 0x4110) != 0)
      {
        v23 = a2;
      }

      else
      {
        v23 = a2;
        if (((1 << v21) & 0x80A0) != 0)
        {
          v20 = 1;
LABEL_48:
          (col_highbd_txfm8_x4_arr[*a4])(a1, &v40, a3, 13, v20);
          v40 = vrhaddq_s32(v40, 0);
          v41 = vrhaddq_s32(v41, 0);
          v42 = vrhaddq_s32(v42, 0);
          v43 = vrhaddq_s32(v43, 0);
          v44 = vrhaddq_s32(v44, 0);
          v45 = vrhaddq_s32(v45, 0);
          v46 = vrhaddq_s32(v46, 0);
          v47 = vrhaddq_s32(v47, 0);
          v27 = vtrn1q_s32(v40, v41);
          v28 = vtrn2q_s32(v40, v41);
          v29 = vtrn1q_s32(v42, v43);
          v30 = vtrn2q_s32(v42, v43);
          v31 = vzip2q_s64(v27, v29);
          v27.i64[1] = v29.i64[0];
          v32 = vzip2q_s64(v28, v30);
          v28.i64[1] = v30.i64[0];
          v39[0] = v27;
          v39[1] = v28;
          v39[2] = v31;
          v39[3] = v32;
          v33 = vtrn1q_s32(v44, v45);
          v34 = vtrn2q_s32(v44, v45);
          v35 = vtrn1q_s32(v46, v47);
          v36 = vtrn2q_s32(v46, v47);
          v37 = vzip2q_s64(v33, v35);
          v33.i64[1] = v35.i64[0];
          v38 = vzip2q_s64(v34, v36);
          v34.i64[1] = v36.i64[0];
          v39[4] = v33;
          v39[5] = v34;
          v39[6] = v37;
          v39[7] = v38;
          (v22)(v39, v23, 13, 2, 4, 8);
          return;
        }

        if (v21 != 6)
        {
          goto LABEL_48;
        }

        v20 = 1;
      }

      a1 = (a1 + 14 * a3);
      a3 = -a3;
      goto LABEL_48;
    case 6u:
      v24 = *a4;

      av1_fwd_txfm2d_8x4_neon(a1, a2, a3, v24);
      return;
    case 7u:
      v18 = *a4;

      av1_fwd_txfm2d_8x16_neon(a1, a2, a3, v18);
      return;
    case 8u:
      v25 = *a4;

      av1_fwd_txfm2d_16x8_neon(a1, a2, a3, v25);
      return;
    case 9u:

      av1_fwd_txfm2d_16x32_neon(a1, a2, a3);
      return;
    case 0xAu:

      av1_fwd_txfm2d_32x16_neon(a1, a2, a3);
      return;
    case 0xBu:

      av1_fwd_txfm2d_32x64_neon(a1, a2, a3);
      return;
    case 0xCu:

      av1_fwd_txfm2d_64x32_neon(a1, a2, a3);
      return;
    default:
      return;
  }
}

int8x16_t *av1_inv_txfm_add_c(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v8 = v4;
  v9 = 0;
  v10 = 0;
  STACK[0x2008] = *MEMORY[0x277D85DE8];
  v11 = v6[1];
  v12 = tx_size_wide_11[v11];
  v13 = tx_size_high_10[v11];
  if (v12 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v12;
  }

  v15 = v5;
  if (v13 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v13;
  }

  v17 = 0x2E3E7uLL >> v11;
  v18 = v4 + 2;
  v19 = &v53;
  v20 = &v52;
  v21 = v8;
  do
  {
    if ((0x2021uLL >> v11))
    {
      for (i = 0; i != v14; ++i)
      {
LABEL_21:
        *(v20 + i) = v21->u8[i];
      }

      goto LABEL_8;
    }

    if (v17)
    {
      v29 = 0;
    }

    else
    {
      v22 = v14 & 0x7FFFFFE0;
      v23 = v19;
      v24 = v18;
      do
      {
        v25 = *v24[-2].i8;
        v26 = vmovl_u8(*v25.i8);
        v7 = vmovl_high_u8(v25);
        v27 = vmovl_u8(*v24);
        v28 = vmovl_high_u8(*v24->i8);
        v23[-2] = v26;
        v23[-1] = v7;
        *v23 = v27;
        v23[1] = v28;
        v23 += 4;
        v24 += 4;
        v22 -= 32;
      }

      while (v22);
      if ((v14 & 0x7FFFFFE0) == v14)
      {
        goto LABEL_8;
      }

      v29 = v14 & 0x7FFFFFE0;
      i = v29;
      if ((v14 & 0x18) == 0)
      {
        goto LABEL_21;
      }
    }

    v31 = &v21->i8[v29];
    v32 = (&v52 + 2 * v29 + 2 * v9);
    v33 = v29 - (v14 & 0x7FFFFFF8);
    do
    {
      v34 = *v31++;
      v7 = vmovl_u8(v34);
      *v32++ = v7;
      v33 += 8;
    }

    while (v33);
    i = v14 & 0x7FFFFFF8;
    if (i != v14)
    {
      goto LABEL_21;
    }

LABEL_8:
    ++v10;
    v18 = (v18 + v15);
    v19 += 8;
    v21 = (v21 + v15);
    v9 += 64;
    v20 += 16;
  }

  while (v10 != v16);
  av1_highbd_inv_txfm_add_neon(v3, &v52 >> 1, 64, v6, *v7.i64);
  v35 = 0;
  v36 = 0;
  v37 = &v53;
  v38 = v8 + 1;
  v39 = &v52;
  do
  {
    if (v17)
    {
      v47 = 0;
    }

    else
    {
      v40 = v14 & 0x7FFFFFE0;
      result = v38;
      v42 = v37;
      do
      {
        v44 = v42[-2];
        v43 = v42[-1];
        v46 = *v42;
        v45 = v42[1];
        v42 += 4;
        result[-1] = vuzp1q_s8(v44, v43);
        *result = vuzp1q_s8(v46, v45);
        result += 2;
        v40 -= 32;
      }

      while (v40);
      if ((v14 & 0x7FFFFFE0) == v14)
      {
        goto LABEL_24;
      }

      v47 = v14 & 0x7FFFFFE0;
      j = v47;
      if ((v14 & 0x1C) == 0)
      {
        goto LABEL_35;
      }
    }

    v49 = (&v52 + 2 * v47 + 2 * v35);
    result = (v8 + v47);
    v50 = v47 - (v14 & 0xFFFFFFFC);
    do
    {
      v51 = *v49++;
      result->i32[0] = vuzp1_s8(v51, v51).u32[0];
      result = (result + 4);
      v50 += 4;
    }

    while (v50);
    for (j = v14 & 0x7FFFFFFC; v14 != j; v8->i8[j++] = result)
    {
LABEL_35:
      result = *(v39 + j);
    }

LABEL_24:
    ++v36;
    v37 += 8;
    v38 = (v38 + v15);
    v35 += 64;
    v8 = (v8 + v15);
    v39 += 16;
  }

  while (v36 != v16);
  return result;
}

uint64_t find_best_interp_rd_facade(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, int a13)
{
  if (!a12)
  {
    return result;
  }

  v18 = result;
  v19 = a11;
  if (a13)
  {
    v19 = *(a2 + 637064);
  }

  if ((a12 & 0x100) != 0)
  {
    result = interpolation_filter_rd(result, a2, a3, a4, a5, a6, a7, a8, a9, 8, a10, v19);
    if ((a12 & 0x80) == 0)
    {
LABEL_6:
      if ((a12 & 0x40) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  else if ((a12 & 0x80) == 0)
  {
    goto LABEL_6;
  }

  result = interpolation_filter_rd(v18, a2, a3, a4, a5, a6, a7, a8, a9, 7, a10, a11);
  if ((a12 & 0x40) == 0)
  {
LABEL_7:
    if ((a12 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = interpolation_filter_rd(v18, a2, a3, a4, a5, a6, a7, a8, a9, 6, a10, a11);
  if ((a12 & 0x20) == 0)
  {
LABEL_8:
    if ((a12 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = interpolation_filter_rd(v18, a2, a3, a4, a5, a6, a7, a8, a9, 5, a10, a11);
  if ((a12 & 0x10) == 0)
  {
LABEL_9:
    if ((a12 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = interpolation_filter_rd(v18, a2, a3, a4, a5, a6, a7, a8, a9, 4, a10, a11);
  if ((a12 & 8) == 0)
  {
LABEL_10:
    if ((a12 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = interpolation_filter_rd(v18, a2, a3, a4, a5, a6, a7, a8, a9, 3, a10, a11);
  if ((a12 & 4) == 0)
  {
LABEL_11:
    if ((a12 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_21:
    result = interpolation_filter_rd(v18, a2, a3, a4, a5, a6, a7, a8, a9, 1, a10, a11);
    if ((a12 & 1) == 0)
    {
      return result;
    }

    goto LABEL_22;
  }

LABEL_20:
  result = interpolation_filter_rd(v18, a2, a3, a4, a5, a6, a7, a8, a9, 2, a10, a11);
  if ((a12 & 2) != 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  if ((a12 & 1) == 0)
  {
    return result;
  }

LABEL_22:

  return interpolation_filter_rd(v18, a2, a3, a4, a5, a6, a7, a8, a9, 0, a10, a11);
}

uint64_t model_rd_for_sb(uint64_t result, int a2, uint64_t a3, uint64_t a4, int a5, int a6, int *a7, void *a8, BOOL *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v52 = result;
  if (a5 <= a6)
  {
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v17 = a5;
    v18 = a4 + 2608 * a5;
    v49 = *(**(a4 + 7864) + 16);
    v50 = a3 + 146608;
    v19 = a6 - a5 + 1;
    v20 = a3 + 136 * a5 + 128;
    v51 = &av1_ss_size_lookup[4 * a2];
    while (1)
    {
      if (v17 && *(a4 + 12) != 1)
      {
        goto LABEL_3;
      }

      _X8 = v18 + 5236;
      __asm { PRFM            #0, [X8] }

      v27 = v51[2 * *(v18 + 20) + *(v18 + 24)];
      v28 = a4;
      v29 = *(a4 + 10656);
      result = aom_sse(*(v20 - 80), *(v20 - 56), *(v18 + 32), *(v18 + 56), block_size_wide_16[v27], block_size_high_14[v27]);
      v30 = (result + ((1 << (2 * v29 - 16)) >> 1)) >> (2 * v29 - 16);
      if (*(v52 + 389568))
      {
        break;
      }

      if (v30)
      {
        v37 = *(*v20 + 2) >> 3;
        v38 = num_pels_log2_lookup_13[v27];
        v32 = (((v37 * v37) << (v38 + 10)) + (v30 >> 1)) / v30;
        if (v32 >= 0x3BFDF)
        {
          LODWORD(v32) = 245727;
        }

        v39 = (v32 >> 2) + 8;
        v40 = __clz(v39);
        v41 = (v39 >> (28 - v40)) & 7 | (8 * (28 - v40));
        v42 = (v32 - model_rd_norm_xsq_iq_q10[v41]) << 10 >> (30 - v40);
        v43 = v42 * model_rd_norm_rate_tab_q10[v41 + 1] + (1024 - v42) * model_rd_norm_rate_tab_q10[v41];
        v44 = v42 * model_rd_norm_dist_tab_q10[v41 + 1] + (1024 - v42) * model_rd_norm_dist_tab_q10[v41];
        LODWORD(v32) = ((v43 >> 10 << v38) + 1) >> 1;
        v33 = (v30 * (v44 >> 10) + 512) >> 10;
        v35 = a12;
        v34 = a13;
        a4 = v28;
        v36 = a11;
        if (v17)
        {
          goto LABEL_28;
        }

LABEL_25:
        LODWORD(v45) = -1;
        if (v30 < 0xFFFFFFFFLL)
        {
          v45 = (result + ((1 << (2 * v29 - 16)) >> 1)) >> (2 * v29 - 16);
        }

        *(v50 + 4 * v49) = v45;
        goto LABEL_28;
      }

      LODWORD(v32) = 0;
      v33 = 0;
      v35 = a12;
      v34 = a13;
      a4 = v28;
      v36 = a11;
      if (!v17)
      {
        goto LABEL_25;
      }

LABEL_28:
      if (v36)
      {
        *(v36 + 4 * v17) = v32;
      }

      if (v35)
      {
        *(v35 + 8 * v17) = v30;
      }

      v46 = 16 * v33;
      if (v34)
      {
        *(v34 + 8 * v17) = v46;
      }

      v15 += v32;
      v13 += v30;
      v14 += v46;
      ++v17;
      v18 += 2608;
      v20 += 136;
      if (!--v19)
      {
        goto LABEL_3;
      }
    }

    v31 = *(*v20 + 2) >> 3;
    v32 = (v30 * (280 - (*(*v20 + 2) >> 3))) >> 7;
    if (v32 >= 0x7FFFFFFF)
    {
      LODWORD(v32) = 0x7FFFFFFF;
    }

    if (v31 > 119)
    {
      LODWORD(v32) = 0;
    }

    v33 = (v30 * v31) >> 8;
    v35 = a12;
    v34 = a13;
    a4 = v28;
    v36 = a11;
    if (v17)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
LABEL_3:
  if (a9)
  {
    *a9 = v13 == 0;
  }

  if (a10)
  {
    *a10 = 16 * v13;
  }

  v16 = 0x7FFFFFFF;
  if (v15 < 0x7FFFFFFF)
  {
    v16 = v15;
  }

  *a7 = v16;
  *a8 = v14;
  return result;
}

void model_rd_for_sb_with_curvfit_0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, _DWORD *a7, void *a8, BOOL *a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a9;
  v13 = a10;
  if (a5 > a6)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    if (a9)
    {
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v57 = a7;
  v58 = a8;
  v17 = 0;
  v16 = 0;
  v18 = 0;
  v59 = *(**(a4 + 7864) + 16);
  v60 = a3 + 146608;
  v19 = a5;
  _X20 = a4 + 2608 * a5 + 2628;
  v21 = a6 - a5 + 1;
  v22 = (a3 + 136 * a5 + 72);
  v62 = &av1_ss_size_lookup[4 * a2];
  v63 = a4;
  while (!v19 || *(a4 + 12) == 1)
  {
    __asm { PRFM            #0, [X20] }

    v28 = *(_X20 - 2608);
    v29 = *(_X20 - 2604);
    v30 = v62[2 * v28 + v29];
    v31 = block_size_high_14[v30];
    v32 = *(a4 + 7936);
    if (v32 < 0)
    {
      v31 = ((v32 >> (v29 + 3)) + v31) & ~(((v32 >> (v29 + 3)) + v31) >> 31);
      v64 = v16;
      v33 = block_size_wide_16[v30];
      v34 = *(a4 + 7928);
      if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v64 = v16;
      v33 = block_size_wide_16[v30];
      v34 = *(a4 + 7928);
      if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }
    }

    v33 = ((v34 >> (v28 + 3)) + v33) & ~(((v34 >> (v28 + 3)) + v33) >> 31);
LABEL_10:
    v35 = *(a4 + 10656);
    v36 = (aom_sse(*(v22 - 3), *v22, *(_X20 - 2596), *(_X20 - 2572), v33, v31) + ((1 << (2 * v35 - 16)) >> 1)) >> (2 * v35 - 16);
    if (v36)
    {
      v37 = *(*(v22 + 7) + 2) >> 3;
      if (v37 <= 1)
      {
        v37 = 1;
      }

      v38 = (v33 * v31);
      v39 = v36 / v38;
      v40 = fmin(fmax(log2(v39 / (v37 * v37)), -14.999999), 15.999999);
      v41 = v40 + 15.5 + v40 + 15.5;
      v42 = vcvtmd_s64_f64(v41);
      v43 = v41 - v42;
      v44 = v42 - 1;
      v45 = (&interp_rgrid_curv + 520 * bsize_curvfit_model_cat_lookup[v30] + 8 * v44);
      v46 = (v45[1] + v43 * 0.5 * (v45[2] - *v45 + v43 * (v45[1] * -5.0 + *v45 * 2.0 + v45[2] * 4.0 - v45[3] + v43 * (v45[3] + (v45[1] - v45[2]) * 3.0 - *v45)))) * v38;
      if (v46 < 0.0)
      {
        v46 = 0.0;
      }

      v47 = (v46 + 0.5);
      v48 = 16 * v36;
      if (v47)
      {
        v49 = (&interp_dgrid_curv + 520 * (v39 > 16.0) + 8 * v44);
        v50 = v39 * (v49[1] + v43 * 0.5 * (v49[2] - *v49 + v43 * (v49[1] * -5.0 + *v49 * 2.0 + v49[2] * 4.0 - v49[3] + v43 * (v49[3] + (v49[1] - v49[2]) * 3.0 - *v49)))) * v38;
        if (v50 < 0.0)
        {
          v50 = 0.0;
        }

        v51 = v50 + 0.5;
        if ((v51 << 7) + ((*(a3 + 16920) * v47 + 256) >> 9) < v36 << 11)
        {
          v48 = v51;
        }

        else
        {
          v47 = 0;
        }
      }

      a4 = v63;
      v52 = v64;
      v54 = a12;
      v53 = a13;
      v55 = a11;
      if (!v19)
      {
LABEL_31:
        v56 = -1;
        if (v36 < 0xFFFFFFFFLL)
        {
          v56 = v36;
        }

        *(v60 + 4 * v59) = v56;
        if (!v55)
        {
          goto LABEL_24;
        }

LABEL_23:
        *(v55 + 4 * v19) = v47;
        goto LABEL_24;
      }
    }

    else
    {
      v48 = 0;
      v47 = 0;
      a4 = v63;
      v52 = v64;
      v54 = a12;
      v53 = a13;
      v55 = a11;
      if (!v19)
      {
        goto LABEL_31;
      }
    }

    if (v55)
    {
      goto LABEL_23;
    }

LABEL_24:
    if (v54)
    {
      *(v54 + 8 * v19) = v36;
    }

    if (v53)
    {
      *(v53 + 8 * v19) = v48;
    }

    v17 += v47;
    v18 += v36;
    v16 = v48 + v52;
    ++v19;
    _X20 += 2608;
    v22 += 34;
    if (!--v21)
    {
      break;
    }
  }

  v15 = 16 * v18;
  a7 = v57;
  a8 = v58;
  v14 = a9;
  v13 = a10;
  if (a9)
  {
LABEL_36:
    *v14 = v17 == 0;
  }

LABEL_37:
  if (v13)
  {
    *v13 = v15;
  }

  *a7 = v17;
  *a8 = v16;
}

void av1_count_colors_highbd(uint64_t a1, int a2, int a3, int a4, int a5, int32x4_t *a6, int32x4_t *a7, _DWORD *a8, int *a9)
{
  v17 = 1 << a5;
  bzero(a7, 0x400uLL);
  if (a6)
  {
    bzero(a6, 4 * v17);
  }

  if (a3 >= 1 && a4 >= 1)
  {
    v18 = 2 * a1;
    v19 = a5 - 8;
    v20 = 0;
    v21 = 2 * a2;
    if (a6)
    {
      do
      {
        v22 = v18;
        v23 = a4;
        do
        {
          v25 = *v22++;
          v24 = v25;
          v26 = v25 >> v19;
          if (v25 >> v19 <= 0xFF)
          {
            ++a7->i32[v26];
            ++a6->i32[v24];
          }

          --v23;
        }

        while (v23);
        ++v20;
        v18 += v21;
      }

      while (v20 != a3);
    }

    else
    {
      do
      {
        v27 = v18;
        v28 = a4;
        do
        {
          v29 = *v27++;
          v30 = v29 >> v19;
          if (v29 >> v19 <= 0xFF)
          {
            ++a7->i32[v30];
          }

          --v28;
        }

        while (v28);
        ++v20;
        v18 += v21;
      }

      while (v20 != a3);
    }
  }

  v31.i64[0] = 0x100000001;
  v31.i64[1] = 0x100000001;
  v32 = vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vbicq_s8(v31, vceqzq_s32(*a7)), vtstq_s32(a7[2], a7[2])), vtstq_s32(a7[4], a7[4])), vtstq_s32(a7[6], a7[6])), vtstq_s32(a7[8], a7[8])), vtstq_s32(a7[10], a7[10])), vtstq_s32(a7[12], a7[12])), vtstq_s32(a7[14], a7[14])), vtstq_s32(a7[16], a7[16])), vtstq_s32(a7[18], a7[18])), vtstq_s32(a7[20], a7[20])), vtstq_s32(a7[22], a7[22])), vtstq_s32(a7[24], a7[24])), vtstq_s32(a7[26], a7[26])), vtstq_s32(a7[28], a7[28])), vtstq_s32(a7[30], a7[30])), vtstq_s32(a7[32], a7[32])), vtstq_s32(a7[34], a7[34])), vtstq_s32(a7[36], a7[36])), vtstq_s32(a7[38], a7[38])), vtstq_s32(a7[40], a7[40]));
  v33 = vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vbicq_s8(v31, vceqzq_s32(a7[1])), vtstq_s32(a7[3], a7[3])), vtstq_s32(a7[5], a7[5])), vtstq_s32(a7[7], a7[7])), vtstq_s32(a7[9], a7[9])), vtstq_s32(a7[11], a7[11])), vtstq_s32(a7[13], a7[13])), vtstq_s32(a7[15], a7[15])), vtstq_s32(a7[17], a7[17])), vtstq_s32(a7[19], a7[19])), vtstq_s32(a7[21], a7[21])), vtstq_s32(a7[23], a7[23])), vtstq_s32(a7[25], a7[25])), vtstq_s32(a7[27], a7[27])), vtstq_s32(a7[29], a7[29])), vtstq_s32(a7[31], a7[31])), vtstq_s32(a7[33], a7[33])), vtstq_s32(a7[35], a7[35])), vtstq_s32(a7[37], a7[37])), vtstq_s32(a7[39], a7[39])), vtstq_s32(a7[41], a7[41]));
  v34 = vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(v32, vtstq_s32(a7[42], a7[42])), vtstq_s32(a7[44], a7[44])), vtstq_s32(a7[46], a7[46])), vtstq_s32(a7[48], a7[48])), vtstq_s32(a7[50], a7[50])), vtstq_s32(a7[52], a7[52])), vtstq_s32(a7[54], a7[54])), vtstq_s32(a7[56], a7[56])), vtstq_s32(a7[58], a7[58])), vtstq_s32(a7[60], a7[60])), vtstq_s32(a7[62], a7[62]));
  *a8 = vaddvq_s32(vaddq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(v33, vtstq_s32(a7[43], a7[43])), vtstq_s32(a7[45], a7[45])), vtstq_s32(a7[47], a7[47])), vtstq_s32(a7[49], a7[49])), vtstq_s32(a7[51], a7[51])), vtstq_s32(a7[53], a7[53])), vtstq_s32(a7[55], a7[55])), vtstq_s32(a7[57], a7[57])), vtstq_s32(a7[59], a7[59])), vtstq_s32(a7[61], a7[61])), vtstq_s32(a7[63], a7[63])), v34));
  if (a6)
  {
    if (a5 == 31)
    {
      v35 = 0;
    }

    else if (v17 >= 8)
    {
      v36 = v17 & 0x7FFFFFF8;
      v37 = a6 + 1;
      v38 = 0uLL;
      v39 = 0uLL;
      do
      {
        v38 = vsubq_s32(v38, vtstq_s32(v37[-1], v37[-1]));
        v39 = vsubq_s32(v39, vtstq_s32(*v37, *v37));
        v37 += 2;
        v36 -= 8;
      }

      while (v36);
      v35 = vaddvq_s32(vaddq_s32(v39, v38));
    }

    else
    {
      v35 = a6->i32[0] != 0;
      if (v17 >= 2)
      {
        if (a6->i32[1])
        {
          ++v35;
        }

        if (a5 != 1)
        {
          if (a6->i32[2])
          {
            ++v35;
          }

          if (a6->i32[3])
          {
            ++v35;
          }

          if (a5 != 2)
          {
            if (a6[1].i32[0])
            {
              ++v35;
            }

            if (a6[1].i32[1])
            {
              ++v35;
            }

            if (a6[1].i32[2])
            {
              ++v35;
            }
          }
        }
      }
    }

    *a9 = v35;
  }
}

__n128 av1_rd_pick_intra_sbuv_mode(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, void *a5, _BYTE *a6, uint64_t a7, unsigned int a8, double a9, double a10, double a11, double a12, double a13, int32x4_t a14, int32x4_t a15)
{
  v239 = *MEMORY[0x277D85DE8];
  v15 = **(a2 + 8280);
  v16 = *v15;
  v17 = *(v15 + 2);
  v227 = *(v15 + 1);
  v228 = v17;
  v226 = v16;
  v18 = *(v15 + 3);
  v19 = *(v15 + 4);
  v20 = *(v15 + 6);
  v231 = *(v15 + 5);
  v232 = v20;
  v229 = v18;
  v230 = v19;
  result = *(v15 + 7);
  v22 = *(v15 + 8);
  v23 = *(v15 + 9);
  v24 = *(v15 + 10);
  v235 = v23;
  v236 = v24;
  v233 = result;
  v234 = v22;
  v218 = 0x7FFFFFFFFFFFFFFFLL;
  v15[3] = 0;
  v15[143] = 0;
  if ((*(a2 + 428) & 1) == 0)
  {
    *a3 = 0;
    *a4 = 0;
    *a5 = 0;
    *a6 = 1;
    return result;
  }

  v25 = a1;
  v26 = (a1 + 263736);
  if (*(*(a1 + 263736) + 77))
  {
    goto LABEL_9;
  }

  v27 = **(a2 + 8280);
  v28 = *v27;
  if (*(a2 + 4 * (*(v27 + 167) & 7) + 11108))
  {
    v29 = *(a2 + 3048);
    v30 = &av1_ss_size_lookup[4 * v28];
    v31 = v30[2 * *(a2 + 3044) + v29];
    *(a2 + 15440) = v30[2 * *(a2 + 3044) + v29] == 0;
    if (!v31)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(a2 + 15440) = (0x1F07FFuLL >> v28) & (0x2F0BFFuLL >> v28) & 1;
    if ((0x1F07FFuLL >> v28) & (0x2F0BFFuLL >> v28))
    {
LABEL_8:
      v32 = a6;
      v33 = a2;
      v34 = a4;
      v35 = a5;
      v36 = a8;
      v37 = a7;
      av1_encode_intra_block_plane(a1, a2, *v15, 0, 1u, *(a1 + (*(v15 + 167) & 7) + 265680));
      a7 = v37;
      a8 = v36;
      a5 = v35;
      a2 = v33;
      a6 = v32;
      a4 = v34;
LABEL_9:
      *(a2 + 15440) = 0;
      v27 = **(a2 + 8280);
      LODWORD(v28) = *v27;
    }
  }

  v38 = a2 + 15288;
  v39 = (v25 + 389428);
  v40 = (v25 + 239056);
  v225 = 0;
  v223 = 0u;
  v224 = 0u;
  v221 = 0u;
  v222 = 0u;
  v219 = 0u;
  v220 = 0u;
  HIDWORD(v220) = 0x7FFFFFFF;
  v188 = a2 + 11108;
  v192 = a4;
  v190 = a6;
  if (*(a2 + 11108 + 4 * (*(v27 + 167) & 7)))
  {
    v41 = av1_ss_size_lookup[4 * v28 + 2 * *(a2 + 3044) + *(a2 + 3048)] == 0;
  }

  else
  {
    v41 = (0x1F07FFuLL >> v28) & (0x2F0BFFuLL >> v28);
  }

  v179 = 0;
  v42 = 0;
  v43 = v41 & 1;
  v44 = v25 + 389400;
  v214 = a2 + 28616;
  v187 = a2 + 32448;
  v183 = a2 + 29844;
  v185 = a7;
  v186 = a2 + 28392;
  v45 = 0uLL;
  v202 = a2 + 26740;
  v46 = a2 + 26740 + 728 * v43;
  v47.f64[0] = NAN;
  v47.f64[1] = NAN;
  v48 = vnegq_f64(v47);
  v189 = v48;
  v49 = 0x7FFFFFFFFFFFFFFFLL;
  v50 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v217 = 0;
    v216 = 0;
    *v215 = v45;
    *&v215[16] = v45;
    v51 = uv_rd_search_mode_order[v42];
    if (v50 < (*(v38 + 1632) * *(v46 + 56 * v15[2] + 4 * v51) + 256) >> 9)
    {
      goto LABEL_15;
    }

    v52 = get_uv_mode_uv2y_6[v51] - 9;
    if (v52 >= 0xFAu)
    {
      if ((v26[1765] & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (v52 < 0xF8u)
    {
      goto LABEL_22;
    }

    if (v26[1764] != 1)
    {
      goto LABEL_15;
    }

LABEL_22:
    if ((*(v44 + 4 * txsize_sqr_up_map_4[a8]) & (1 << v51)) == 0 || (v42 & 0xB) != 1 && (v26[1761] & 1) == 0 && ((0xF2uLL >> v42) & 1) != 0 || v42 == 5 && (v26[1762] & 1) == 0 || v39[6] && ((1 << v51) & av1_derived_chroma_intra_mode_used_flag[v15[2]]) == 0)
    {
      goto LABEL_15;
    }

    v15[3] = v51;
    v15[89] = 0;
    if (v42 != 1)
    {
      v200 = v49;
      v204 = a5;
      v197 = a8;
      v194 = v40;
      v184 = v44;
      if (v52 >= 0xF8u && *v15 >= 3u && v26[1766] == 1)
      {
        if (*v39 && !v179)
        {
          v55 = *(*v26 + 28);
          LODWORD(v48.f64[0]) = av1_rd_pick_intra_sbuv_mode_thresh[4 * ((*v40 & 0xFD) == 0) - 1 + *v39];
          v206 = v25;
          v209 = v26;
          v170 = v39;
          v175 = a2;
          v56 = a7;
          v57 = v40;
          v58 = v43;
          prune_intra_mode_with_hog(a2, a7, v55, &v219 + 8, 1, v48.f64[0]);
          v45 = 0uLL;
          v43 = v58;
          v44 = v184;
          v39 = v170;
          a2 = v175;
          v40 = v57;
          a7 = v56;
          v25 = v206;
          v26 = v209;
          a8 = v197;
          a5 = v204;
          v49 = v200;
          v179 = 1;
          DWORD2(v220) = 1;
        }

        if (*(&v219 + v51 + 8))
        {
          goto LABEL_15;
        }

        v168 = a7;
        v207 = v25;
        v59 = v25;
        v60 = a2;
        v171 = v39;
        v61 = v43;
        v62 = rd_pick_intra_angle_sbuv(v59, a2, a7, *(v202 + 728 * v43 + 56 * v15[2] + 4 * v51), v50, &v217, v215);
        v45 = 0uLL;
        v43 = v61;
        v44 = v184;
        v39 = v171;
        v40 = v194;
        a7 = v168;
        a8 = v197;
        a2 = v60;
        a5 = v204;
        v63 = v62;
        v49 = v200;
        if (!v63)
        {
LABEL_14:
          v25 = v207;
          goto LABEL_15;
        }
      }

      else
      {
        if (v42 == 4 && *(v39 + 8) == 1)
        {
          if (*(*v26 + 77) || (v208 = v25, v210 = &av1_ss_size_lookup[4 * v185], v65 = v210[2 * *(a2 + 3044) + *(a2 + 3048)], LODWORD(v238[0]) = 0, v172 = v39, v176 = a2, v169 = a7, v66 = v43, v67 = (*(*v208 + (v65 << 7) + 51416))(*(a2 + 184), *(a2 + 208), &AV1_VAR_OFFS, 0, v238, 11), v43 = v66, v39 = v172, a2 = v176, a7 = v169, v68 = num_pels_log2_lookup_8[v65], v25 = v208, (v67 + (1 << v68 >> 1)) >> v68 < 0x14) && (*(*v26 + 77) || (v69 = v210[2 * *(v176 + 5652) + *(v176 + 5656)], LODWORD(v238[0]) = 0, v70 = (*(*v208 + (v69 << 7) + 51416))(*(v176 + 320), *(v176 + 344), &AV1_VAR_OFFS, 0, v238), v43 = v66, v39 = v172, a2 = v176, a7 = v169, v71 = num_pels_log2_lookup_8[v69], v25 = v208, (v70 + (1 << v71 >> 1)) >> v71 < 0x14)))
          {
            v49 = v200;
            a5 = v204;
            a8 = v197;
            v40 = v194;
            v44 = v184;
            v45 = 0uLL;
            goto LABEL_15;
          }
        }

        v181 = v43;
        v207 = v25;
        v211 = v26;
        v72 = v25;
        v73 = a2;
        v74 = a7;
        v75 = v39;
        v76 = av1_txfm_uvrd(v72, a2, v215, a7, v50);
        v43 = v181;
        v39 = v75;
        a7 = v74;
        v26 = v211;
        a2 = v73;
        v77 = v76;
        v49 = v200;
        a5 = v204;
        a8 = v197;
        v40 = v194;
        v44 = v184;
        v45 = 0uLL;
        if (!v77)
        {
          goto LABEL_14;
        }
      }

LABEL_59:
      v78 = *(v202 + 728 * v43 + 56 * v15[2] + 4 * v51);
      v79 = *v215;
      v80 = v15[3];
      v81 = *v15;
      v25 = v207;
      if (v81 >= 3 && (v81 & 0xFFFFFFFD) != 0xD && v40[495] && (v81 & 0xFE) != 0xE && !v15[3])
      {
        v212 = *v215;
        v82 = v15[143];
        v78 += *(v187 + 8 * (v15[142] != 0) + 4 * (v15[143] != 0));
        if (v15[143])
        {
          v165 = *(v183 + 28 * num_pels_log2_lookup_14[v185] + 4 * v82 - 176);
          v83 = __clz(v82) ^ 0x1F;
          v84 = (2 << v83) - v82;
          v85 = v83 << 9;
          if (v84 <= **(a2 + 3200))
          {
            v86 = v85 + 512;
          }

          else
          {
            v86 = v85;
          }

          v163 = v86;
          v201 = v49;
          v205 = a5;
          v173 = v39;
          v177 = a2;
          v198 = a8;
          v87 = a7;
          v195 = v40;
          v182 = v43;
          palette_cache = av1_get_palette_cache(a2 + 416, 1, v237);
          v161 = av1_palette_color_cost_uv((v15 + 94), v237, palette_cache, *(*v26 + 72));
          memset(v238, 0, 48);
          get_color_map_params(v177, 1, v87, 0, v238);
          v89 = cost_and_tokenize_map(v238, 0, 1, 0);
          v45 = 0uLL;
          v43 = v182;
          v39 = v173;
          a2 = v177;
          v40 = v195;
          a7 = v87;
          a8 = v198;
          a5 = v205;
          v25 = v207;
          v90 = v89;
          v49 = v201;
          v78 += v165 + v163 + v161 + v90;
        }

        v79 = v212;
      }

      if (a7 >= 3 && get_uv_mode_uv2y_6[v80] - 9 >= 0xFFFFFFF8)
      {
        v78 += *(v186 + 28 * get_uv_mode_uv2y_6[v80] + 4 * v15[89] - 16);
      }

      v91 = v79 + v78;
      v217 = v79 + v78;
      v92 = *&v215[8];
      v50 = ((*(v38 + 1632) * v91 + 256) >> 9) + (*&v215[8] << 7);
      if (v50 >= v49)
      {
        v50 = v49;
      }

      else
      {
        v93 = *v15;
        v94 = *(v15 + 2);
        v227 = *(v15 + 1);
        v228 = v94;
        v226 = v93;
        v95 = *(v15 + 3);
        v96 = *(v15 + 4);
        v97 = *(v15 + 6);
        v231 = *(v15 + 5);
        v232 = v97;
        v229 = v95;
        v230 = v96;
        v48 = *(v15 + 7);
        v22 = *(v15 + 8);
        v23 = *(v15 + 9);
        v24 = *(v15 + 10);
        v235 = v23;
        v236 = v24;
        v233 = v48;
        v234 = v22;
        v218 = v50;
        *a3 = v91;
        *v192 = *v215;
        *a5 = v92;
        *v190 = v216;
        v49 = v50;
      }

      goto LABEL_15;
    }

    if (!v43 || v26[1763] != 1)
    {
      goto LABEL_15;
    }

    v53 = **(a2 + 8280);
    v199 = v49;
    v203 = a5;
    v196 = a8;
    v167 = a7;
    v193 = v40;
    v180 = v43;
    if (*(v188 + 4 * (*(v53 + 167) & 7)))
    {
      v54 = 0;
    }

    else
    {
      v54 = max_txsize_rect_lookup_5[av1_ss_size_lookup[4 * *v53 + 2 * *(a2 + 3044) + *(a2 + 3048)]];
      if (v54 > 0x10)
      {
        if (v54 == 17)
        {
          v54 = 9;
        }

        else if (v54 == 18)
        {
          v54 = 10;
        }
      }

      else if ((v54 - 11) < 2 || v54 == 4)
      {
        v54 = 3;
      }
    }

    v213 = v54;
    v174 = v39;
    v178 = a2;
    v98 = v39[8];
    v166 = v98;
    *v215 = 0x7FFFFFFFLL;
    *&v215[8] = v189;
    *&v215[24] = 0x7FFFFFFFFFFFFFFFLL;
    LOBYTE(v216) = 0;
    *(v38 + 2) = 1;
    v164 = cfl_pick_plane_parameter(v25, a2, 1, v54, v98, v189, v22, v23, v24, 0, a14, a15);
    v207 = v25;
    v106 = cfl_pick_plane_parameter(v25, v178, 2, v213, v166, v99, v100, v101, v102, v103, v104, v105);
    a2 = v178;
    a5 = v203;
    if (v166 == 1)
    {
      if (v164 == 16 && v106 == 16)
      {
        goto LABEL_102;
      }

      v108 = v164 - 16;
      if (v164 == 16)
      {
        v109 = 0;
        v110 = -1;
      }

      else
      {
        if (v108 < 0)
        {
          v108 = 16 - v164;
        }

        v109 = v108 - 1;
        v110 = 2;
        if (v164 > 0x10)
        {
          v110 = 5;
        }
      }

      v111 = v106 - 16;
      if (v106 == 16)
      {
        v113 = 0;
        v112 = 0;
      }

      else
      {
        if (v111 < 0)
        {
          v111 = 16 - v106;
        }

        LODWORD(v112) = v111 - 1;
        v113 = v106 <= 0x10 ? 1 : 2;
        v112 = v112;
      }

      v114 = **(v178 + 8280);
      v115 = *v114;
      v116 = *(v188 + 4 * (*(v114 + 167) & 7)) ? av1_ss_size_lookup[4 * v115 + 2 * *(v178 + 3044) + *(v178 + 3048)] == 0 : (0x1F07FFuLL >> v115) & (0x2F0BFFuLL >> v115);
      if (v50 < ((*(v214 + ((v113 + v110) << 7) + 4 * v112 + 64) + *(v214 + ((v113 + v110) << 7) + 4 * v109) + *(v202 + 728 * (v116 & 1) + 56 * v114[2] + 52)) * *(v38 + 1632) + 256) >> 9)
      {
LABEL_102:
        *(v15 + 46) = 0;
        *(v38 + 2) = 0;
        *v38 = 0;
        v49 = v199;
        a8 = v196;
        a7 = v167;
        v40 = v193;
        v39 = v174;
        v43 = v180;
        v45 = 0uLL;
        *(v38 + 1) = 0;
        goto LABEL_15;
      }
    }

    v162 = v106;
    cfl_pick_plane_rd(v25, v178, 1, v213, v166, v238, v164, v48.f64[0], v22, v23, v24, v107, a14, a15);
    cfl_pick_plane_rd(v25, v178, 2, v213, v166, v237, v162, v117, v118, v119, v120, v121, v122, v123);
    v124 = 0;
    *(v38 + 2) = 0;
    *v38 = 0;
    v125 = *&v215[16];
    do
    {
      v126 = v238 + 10 * v124;
      v127 = *v126;
      if (v127 != 0x7FFFFFFF)
      {
        v128 = v124 - 16;
        if (v124 == 16)
        {
          v129 = 0;
        }

        else
        {
          if (v124 <= 0x10)
          {
            v129 = 1;
          }

          else
          {
            v129 = 2;
          }

          if (v128 < 0)
          {
            v128 = 16 - v124;
          }

          --v128;
        }

        v130 = 0;
        v131 = 0;
        do
        {
          v132 = *&v237[v130];
          if (v132 == 0x7FFFFFFF)
          {
            goto LABEL_115;
          }

          if (v130 == 640)
          {
            if (!v129)
            {
              goto LABEL_115;
            }

            v133 = 0;
            v134 = 0;
            v135 = v126[1];
            v136 = v132 + v127;
            if (v136 >= 0x7FFFFFFF)
            {
              v137 = 0x7FFFFFFF;
            }

            else
            {
              v137 = v136;
            }

            if (!v135)
            {
LABEL_136:
              v135 = *&v237[v130 + 4];
              v140 = *(v126 + 3);
              v141 = &v237[v130];
              v142 = 0x7FFFFFFFFFFFFFFFLL;
              if (v140 != 0x7FFFFFFFFFFFFFFFLL)
              {
LABEL_137:
                v143 = *(v141 + 3);
                if (v143 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v143 = 0;
                }

                v142 = v143 + v140;
                if (v137 == 0x7FFFFFFF)
                {
                  goto LABEL_115;
                }

LABEL_140:
                v144 = (3 * v129) - 1 + v134;
                v145 = *(v141 + 1) + *(v126 + 1);
                v146 = (*(v214 + (v144 << 7) + 4 * v128) + v137 + *(v214 + (v144 << 7) + 4 * v133 + 64));
                if (v146 != 0x7FFFFFFF && v145 != 0x7FFFFFFFFFFFFFFFLL && *(v126 + 2) != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v149 = *(v38 + 1632);
                  v150 = -v146 * v149 + 256;
                  v151 = ((v146 * v149 + 256) >> 9) + (v145 << 7);
                  if (v146 < 0)
                  {
                    v151 = (v145 << 7) - (v150 >> 9);
                  }

                  if (v151 < v125)
                  {
                    v152 = v141[32] & v126[8];
                    *v215 = v146;
                    *&v215[4] = v135;
                    *&v215[8] = v145;
                    *&v215[16] = v151;
                    *&v215[24] = v142;
                    LOBYTE(v216) = v152;
                    *(&v216 + 1) = *(v126 + 33);
                    HIDWORD(v216) = v126[9];
                    v15[93] = v133 + 16 * v128;
                    v125 = v151;
                    v15[92] = v144;
                  }
                }

                goto LABEL_115;
              }

              goto LABEL_134;
            }
          }

          else
          {
            v138 = v131 - 16;
            if (v131 - 16 < 0)
            {
              v138 = 16 - v131;
            }

            v133 = v138 - 1;
            if (v131 <= 0x10)
            {
              v134 = 1;
            }

            else
            {
              v134 = 2;
            }

            v135 = v126[1];
            v139 = v132 + v127;
            if (v139 >= 0x7FFFFFFF)
            {
              v137 = 0x7FFFFFFF;
            }

            else
            {
              v137 = v139;
            }

            if (!v135)
            {
              goto LABEL_136;
            }
          }

          v140 = *(v126 + 3);
          v141 = &v237[v130];
          v142 = 0x7FFFFFFFFFFFFFFFLL;
          if (v140 != 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_137;
          }

LABEL_134:
          if (v137 != 0x7FFFFFFF)
          {
            goto LABEL_140;
          }

LABEL_115:
          ++v131;
          v130 += 40;
        }

        while (v130 != 1320);
      }

      ++v124;
    }

    while (v124 != 33);
    v49 = v199;
    a5 = v203;
    a8 = v196;
    a7 = v167;
    v40 = v193;
    v39 = v174;
    v43 = v180;
    v45 = 0uLL;
    if (v125 < v50)
    {
      a2 = v178;
      goto LABEL_59;
    }

    *v215 = 0x7FFFFFFFLL;
    HIDWORD(v48.f64[0]) = v189.i32[1];
    *&v215[8] = v189;
    *&v215[24] = 0x7FFFFFFFFFFFFFFFLL;
    LOBYTE(v216) = 0;
    a2 = v178;
    v15[93] = 0;
    v15[92] = 0;
LABEL_15:
    ++v42;
  }

  while (v42 != 14);
  if (v26[1092])
  {
    if (v40[495])
    {
      v153 = *v15;
      if (v153 > 0xF || ((1 << v153) & 0xE007) == 0)
      {
        av1_rd_pick_palette_intra_sbuv(v25, a2, *(v202 + 728 * v43 + 56 * v15[2]), *(a2 + 16832), &v226, &v218, a3, v192, a5, v190);
      }
    }
  }

  v154 = v226;
  v155 = v228;
  *(v15 + 1) = v227;
  *(v15 + 2) = v155;
  *v15 = v154;
  v156 = v229;
  v157 = v230;
  v158 = v232;
  *(v15 + 5) = v231;
  *(v15 + 6) = v158;
  *(v15 + 3) = v156;
  *(v15 + 4) = v157;
  result = v233;
  v159 = v234;
  v160 = v236;
  *(v15 + 9) = v235;
  *(v15 + 10) = v160;
  *(v15 + 7) = result;
  *(v15 + 8) = v159;
  return result;
}

float32x4_t *prune_intra_mode_with_hog(uint64_t a1, unsigned int a2, unsigned int a3, _BYTE *a4, int a5, double a6)
{
  v7 = *&a6;
  v78 = *MEMORY[0x277D85DE8];
  v8 = 0uLL;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v9 = a1 + 2608 * (a5 != 0);
  v10 = *(v9 + 436);
  v11 = *(v9 + 440);
  v12 = (((*(a1 + 8352) >> 31) & (*(a1 + 8352) >> 3)) + block_size_high_15[a2]) >> v11;
  v13 = (((*(a1 + 8344) >> 31) & (*(a1 + 8344) >> 3)) + block_size_wide_17[a2]) >> v10;
  if (a5)
  {
    v14 = a1 + 1;
  }

  else
  {
    v14 = a1;
  }

  if (*(v14 + 122144) == 1)
  {
    if (v12 < 3 || v13 < 3)
    {
      LODWORD(a6) = 1036831949;
      v58 = 0uLL;
      v59 = 0uLL;
      v60 = 0uLL;
      v61 = 0uLL;
      v62 = 0uLL;
    }

    else
    {
      v15 = (v12 - 1);
      v16 = (v13 - 1) - 1;
      v17 = 4 * (block_size_wide_17[a3] >> v10);
      v18 = ((a5 != 0) << 16) + 4 * ((((mi_size_wide_17[a3] - 1) & *(a1 + 420)) << (2 - v10)) + (((mi_size_high_14[a3] - 1) & *(a1 + 416)) << (2 - v11)) * (block_size_wide_17[a3] >> v10)) + v17 + *(a1 + 122136) + 7;
      LODWORD(a6) = 1036831949;
      v19 = 1;
      do
      {
        v20 = v18;
        v21 = v16;
        do
        {
          v24 = *(v20 - 3);
          if (*(v20 - 3))
          {
            v25 = v24;
            if (*v20)
            {
              v22 = (v24 >> 1);
              v70.f32[0] = v70.f32[0] + v22;
              v23 = &v77.f32[3];
            }

            else
            {
              v23 = &v70.f32[*(v20 - 1)];
              v22 = v25;
            }

            *&a6 = *&a6 + v25;
            *v23 = v22 + *v23;
          }

          v20 += 4;
          --v21;
        }

        while (v21);
        ++v19;
        v18 += v17;
      }

      while (v19 != v15);
      v8 = v70;
      v58 = v71;
      v59 = v72;
      v60 = v73;
      v61 = v74;
      v62 = v75;
    }

    v63 = vdupq_lane_s32(*&a6, 0);
    v64 = vdivq_f32(v8, v63);
  }

  else
  {
    if (v12 < 3 || v13 < 3)
    {
      LODWORD(a6) = 1036831949;
      v58 = 0uLL;
      v59 = 0uLL;
      v60 = 0uLL;
      v61 = 0uLL;
      v62 = 0uLL;
    }

    else
    {
      v26 = a1 + 136 * (a5 != 0);
      v27 = *(v26 + 72);
      v28 = *(v26 + 48);
      v29 = (v13 - 1);
      v30 = v12 - 2;
      v31 = 1;
      LODWORD(a6) = 1036831949;
      do
      {
        v32 = 1;
        do
        {
          v35 = (v28 + v32);
          v36 = (v28 + v27 - 1 + v32);
          v37 = *(v28 + v27 + v27 + v32++);
          v38 = *(v28 + v27 + v32 + v27);
          v39 = *(v28 + v32) + 2 * *(v28 + v27 + v32) + v38;
          v40 = v36[v27];
          v41 = v36[-v27] + 2 * *v36 + v40;
          v42 = v40 + v38 + 2 * v37;
          v43 = *(v35 - 1) + 2 * *v35 + v35[1];
          v44 = v39 - v41;
          v45 = v39 == v41 && v42 == v43;
          if (!v45)
          {
            v46 = v42 - v43;
            v47 = v44 >= 0 ? v39 - v41 : v41 - v39;
            v48 = v46 >= 0 ? v46 : -v46;
            v49 = v48 + v47;
            if (v49)
            {
              if (v39 == v41)
              {
                v33 = (v49 >> 1);
                v70.f32[0] = v70.f32[0] + v33;
                v34 = &v77.f32[3];
              }

              else
              {
                v50 = (v46 << 16) / v44;
                if (v50 >= -72302)
                {
                  if (v50 >= -3193)
                  {
                    if (v50 >= 59426)
                    {
                      v51 = 24;
                    }

                    else
                    {
                      v51 = 16;
                    }

                    if (v50 >= 59426)
                    {
                      v52 = 32;
                    }

                    else
                    {
                      v52 = 24;
                    }
                  }

                  else
                  {
                    v51 = 8;
                    v52 = 16;
                  }
                }

                else
                {
                  v51 = 0;
                  v52 = 8;
                }

                v53 = v51 << 32;
                v54 = v52 - v51;
                v55 = &get_hist_bin_idx_thresholds_0[v51];
                while (1)
                {
                  v56 = *v55++;
                  if (v50 <= v56)
                  {
                    break;
                  }

                  v53 += 0x100000000;
                  if (!--v54)
                  {
                    v57 = 31;
                    goto LABEL_51;
                  }
                }

                v57 = v53 >> 32;
LABEL_51:
                v34 = &v70.f32[v57];
                v33 = v49;
              }

              *&a6 = *&a6 + v49;
              *v34 = v33 + *v34;
            }
          }
        }

        while (v32 != v29);
        v28 += v27;
        v45 = v31++ == v30;
      }

      while (!v45);
      v8 = v70;
      v58 = v71;
      v59 = v72;
      v60 = v73;
      v61 = v74;
      v62 = v75;
    }

    v63 = vdupq_lane_s32(*&a6, 0);
    v64 = vdivq_f32(v8, v63);
    v70.i32[0] = v64.i32[0];
  }

  v65 = v10 + 1 + (v10 + 1) * v11;
  v70 = vmulq_n_f32(v64, v65);
  v71 = vmulq_n_f32(vdivq_f32(v58, v63), v65);
  v72 = vmulq_n_f32(vdivq_f32(v59, v63), v65);
  v73 = vmulq_n_f32(vdivq_f32(v60, v63), v65);
  v66 = vdupq_lane_s32(*&a6, 0);
  v74 = vmulq_n_f32(vdivq_f32(v61, v63), v65);
  v75 = vmulq_n_f32(vdivq_f32(v62, v63), v65);
  v76 = vmulq_n_f32(vdivq_f32(v76, v66), v65);
  v77 = vmulq_n_f32(vdivq_f32(v77, v66), v65);
  v68 = 0u;
  v69 = 0u;
  result = av1_nn_predict_neon(&v70, av1_intra_hog_model_nnconfig, 1, &v68);
  if (v68.f32[0] <= v7)
  {
    a4[1] = 1;
    if (v68.f32[1] > v7)
    {
LABEL_60:
      if (v68.f32[2] > v7)
      {
        goto LABEL_61;
      }

      goto LABEL_69;
    }
  }

  else if (v68.f32[1] > v7)
  {
    goto LABEL_60;
  }

  a4[2] = 1;
  if (v68.f32[2] > v7)
  {
LABEL_61:
    if (v68.f32[3] > v7)
    {
      goto LABEL_62;
    }

    goto LABEL_70;
  }

LABEL_69:
  a4[3] = 1;
  if (v68.f32[3] > v7)
  {
LABEL_62:
    if (*&v69 > v7)
    {
      goto LABEL_63;
    }

    goto LABEL_71;
  }

LABEL_70:
  a4[4] = 1;
  if (*&v69 > v7)
  {
LABEL_63:
    if (*(&v69 + 1) > v7)
    {
      goto LABEL_64;
    }

    goto LABEL_72;
  }

LABEL_71:
  a4[5] = 1;
  if (*(&v69 + 1) > v7)
  {
LABEL_64:
    if (*(&v69 + 2) > v7)
    {
      goto LABEL_65;
    }

    goto LABEL_73;
  }

LABEL_72:
  a4[6] = 1;
  if (*(&v69 + 2) > v7)
  {
LABEL_65:
    if (*(&v69 + 3) > v7)
    {
      return result;
    }

LABEL_74:
    a4[8] = 1;
    return result;
  }

LABEL_73:
  a4[7] = 1;
  if (*(&v69 + 3) <= v7)
  {
    goto LABEL_74;
  }

  return result;
}

uint64_t rd_pick_intra_angle_sbuv(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, _DWORD *a6, uint64_t a7)
{
  v156 = *MEMORY[0x277D85DE8];
  v12 = **(a2 + 8280);
  *a7 = 0x7FFFFFFF;
  *(a7 + 32) = 0;
  *(a7 + 8) = 0x7FFFFFFFFFFFFFFFLL;
  memset_pattern16(&__b, &unk_273BE11B0, 0x50uLL);
  if (a5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = a5 + (a5 >> 3);
  }

  v144 = v12;
  *(v12 + 89) = 0;
  v14 = **(a2 + 8280);
  v147 = 0;
  v145 = 0u;
  v146 = 0u;
  result = av1_txfm_uvrd(a1, a2, &v145, a3, v13);
  if (result)
  {
    v136 = a2 + 32448;
    v133 = a2 + 29844;
    v16 = v145;
    v17 = v14[3];
    v18 = *v14;
    v22 = v18 >= 3 && (v18 & 0xFFFFFFFD) != 13 && *(a1 + 239551) != 0 && (v18 & 0xFE) != 14 && v17 == 0;
    v23 = a4;
    v134 = a4;
    v143 = a3;
    v142 = a1;
    if (v22)
    {
      v24 = v14[143];
      v23 = *(v136 + 8 * (v14[142] != 0) + 4 * (v14[143] != 0)) + a4;
      if (v14[143])
      {
        v25 = *(v133 + 28 * num_pels_log2_lookup_14[a3] + 4 * v24 - 176);
        v26 = __clz(v24) ^ 0x1F;
        v27 = (2 << v26) - v24;
        v28 = v26 << 9;
        if (v27 <= **(a2 + 3200))
        {
          v29 = v28 + 512;
        }

        else
        {
          v29 = v28;
        }

        palette_cache = av1_get_palette_cache(a2 + 416, 1, v155);
        v31 = av1_palette_color_cost_uv((v14 + 94), v155, palette_cache, *(*(v142 + 263736) + 72));
        v149 = 0u;
        v150 = 0u;
        v148 = 0u;
        get_color_map_params(a2, 1, v143, 0, &v148);
        v32 = cost_and_tokenize_map(&v148, 0, 1, 0);
        v33 = v25 + v29;
        a1 = v142;
        a3 = v143;
        v34 = v31 + v32;
        a4 = v134;
        v23 += v33 + v34;
      }
    }

    v135 = a2 + 28392;
    if (a3 >= 3 && get_uv_mode_uv2y_6[v17] - 9 >= 0xFFFFFFF8)
    {
      v23 += *(v135 + 28 * get_uv_mode_uv2y_6[v17] + 4 * v14[89] - 16);
    }

    v35 = v16 + v23;
    v36 = (v35 * *(a2 + 16920) + 256) >> 9;
    v37 = *(&v145 + 1);
    v38 = v36 + (*(&v145 + 1) << 7);
    if (v38 >= a5)
    {
      v137 = 0;
      result = 0;
      __b = v36 + (*(&v145 + 1) << 7);
      if (v38 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return result;
      }
    }

    else
    {
      v137 = v14[89];
      *a6 = v35;
      *a7 = v145;
      *(a7 + 8) = v37;
      *(a7 + 32) = v147;
      __b = v38;
      a5 = v38;
    }

    v39 = a5 + (a5 >> 5);
    if (a5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v40 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v40 = a5 + (a5 >> 5);
    }

    *(v144 + 89) = 2;
    v41 = **(a2 + 8280);
    v147 = 0;
    v145 = 0u;
    v146 = 0u;
    if (av1_txfm_uvrd(a1, a2, &v145, a3, v40))
    {
      v42 = a5;
      v43 = v145;
      v44 = v41[3];
      v45 = *v41;
      v46 = a4;
      v47 = v142;
      if (v45 >= 3)
      {
        v46 = a4;
        if ((v45 & 0xFFFFFFFD) != 0xD)
        {
          v46 = a4;
          if (*(v142 + 239551))
          {
            v46 = a4;
            if ((v45 & 0xFE) != 0xE)
            {
              v46 = a4;
              if (!v41[3])
              {
                v48 = v41[143];
                v46 = *(v136 + 8 * (v41[142] != 0) + 4 * (v41[143] != 0)) + a4;
                if (v41[143])
                {
                  v49 = *(v133 + 28 * num_pels_log2_lookup_14[a3] + 4 * v48 - 176);
                  v50 = __clz(v48) ^ 0x1F;
                  v51 = (2 << v50) - v48;
                  v52 = v50 << 9;
                  if (v51 <= **(a2 + 3200))
                  {
                    v53 = v52 + 512;
                  }

                  else
                  {
                    v53 = v52;
                  }

                  v54 = av1_get_palette_cache(a2 + 416, 1, v155);
                  v55 = av1_palette_color_cost_uv((v41 + 94), v155, v54, *(*(v142 + 263736) + 72));
                  v149 = 0u;
                  v150 = 0u;
                  v148 = 0u;
                  get_color_map_params(a2, 1, v143, 0, &v148);
                  v56 = cost_and_tokenize_map(&v148, 0, 1, 0);
                  v57 = v49 + v53;
                  v47 = v142;
                  a3 = v143;
                  v58 = v55 + v56;
                  a4 = v134;
                  v46 += v57 + v58;
                }
              }
            }
          }
        }
      }

      if (a3 >= 3 && get_uv_mode_uv2y_6[v44] - 9 >= 0xFFFFFFF8)
      {
        v46 += *(v135 + 28 * get_uv_mode_uv2y_6[v44] + 4 * v41[89] - 16);
      }

      v59 = v43 + v46;
      v60 = *(&v145 + 1);
      v61 = ((v59 * *(a2 + 16920) + 256) >> 9) + (*(&v145 + 1) << 7);
      a5 = v42;
      if (v61 < v42)
      {
        v137 = v41[89];
        *a6 = v59;
        *a7 = v145;
        *(a7 + 8) = v60;
        *(a7 + 32) = v147;
        a5 = v61;
      }

      v153 = v61;
      v152 = v38;
      v39 = a5 + (a5 >> 5);
    }

    else
    {
      v152 = v38;
      v153 = 0x7FFFFFFFFFFFFFFFLL;
      v47 = v142;
    }

    if (a5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v62 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v62 = v39;
    }

    *(v144 + 89) = -2;
    v63 = **(a2 + 8280);
    v147 = 0;
    v145 = 0u;
    v146 = 0u;
    if (av1_txfm_uvrd(v47, a2, &v145, a3, v62))
    {
      v64 = a5;
      v65 = v145;
      v66 = v63[3];
      v67 = *v63;
      v68 = a4;
      if (v67 >= 3)
      {
        v68 = a4;
        if ((v67 & 0xFFFFFFFD) != 0xD)
        {
          v68 = a4;
          if (*(v47 + 239551))
          {
            v68 = a4;
            if ((v67 & 0xFE) != 0xE)
            {
              v68 = a4;
              if (!v63[3])
              {
                v69 = v63[143];
                v68 = *(v136 + 8 * (v63[142] != 0) + 4 * (v63[143] != 0)) + a4;
                if (v63[143])
                {
                  v70 = *(v133 + 28 * num_pels_log2_lookup_14[a3] + 4 * v69 - 176);
                  v71 = __clz(v69) ^ 0x1F;
                  v72 = (2 << v71) - v69;
                  v73 = v71 << 9;
                  if (v72 <= **(a2 + 3200))
                  {
                    v74 = v73 + 512;
                  }

                  else
                  {
                    v74 = v73;
                  }

                  v75 = av1_get_palette_cache(a2 + 416, 1, v155);
                  v76 = av1_palette_color_cost_uv((v63 + 94), v155, v75, *(*(v142 + 263736) + 72));
                  v149 = 0u;
                  v150 = 0u;
                  v148 = 0u;
                  get_color_map_params(a2, 1, v143, 0, &v148);
                  v77 = cost_and_tokenize_map(&v148, 0, 1, 0);
                  v78 = v70 + v74;
                  v47 = v142;
                  a3 = v143;
                  v79 = v76 + v77;
                  a4 = v134;
                  v68 += v78 + v79;
                }
              }
            }
          }
        }
      }

      if (a3 >= 3 && get_uv_mode_uv2y_6[v66] - 9 >= 0xFFFFFFF8)
      {
        v68 += *(v135 + 28 * get_uv_mode_uv2y_6[v66] + 4 * v63[89] - 16);
      }

      a5 = v64;
      v80 = v65 + v68;
      v81 = *(&v145 + 1);
      v82 = ((v80 * *(a2 + 16920) + 256) >> 9) + (*(&v145 + 1) << 7);
      if (v82 < v64)
      {
        v137 = v63[89];
        *a6 = v80;
        *a7 = v145;
        *(a7 + 8) = v81;
        *(a7 + 32) = v147;
        a5 = v82;
      }
    }

    else
    {
      v82 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v83 = &v154;
    v154 = v82;
    v84 = -1;
    do
    {
      v86 = v84 + 2;
      v87 = a5 + (a5 >> 5);
      if (*(v83 - 1) <= v87 || *(v83 - 5) <= v87)
      {
        *(v144 + 89) = v86;
        v88 = **(a2 + 8280);
        v147 = 0;
        v145 = 0u;
        v146 = 0u;
        if (av1_txfm_uvrd(v47, a2, &v145, a3, a5))
        {
          v140 = a5;
          v89 = v145;
          v90 = v88[3];
          v91 = *v88;
          v95 = v91 >= 3 && (v91 & 0xFFFFFFFD) != 13 && *(v47 + 239551) != 0 && (v91 & 0xFE) != 14 && v90 == 0;
          v96 = a4;
          if (v95)
          {
            v97 = v88[143];
            v96 = *(v136 + 8 * (v88[142] != 0) + 4 * (v88[143] != 0)) + a4;
            if (v88[143])
            {
              v132 = *(v133 + 28 * num_pels_log2_lookup_14[v143] + 4 * v97 - 176);
              v98 = __clz(v97) ^ 0x1F;
              v99 = (2 << v98) - v97;
              v100 = v98 << 9;
              if (v99 <= **(a2 + 3200))
              {
                v101 = v100 + 512;
              }

              else
              {
                v101 = v100;
              }

              v131 = v101;
              v102 = av1_get_palette_cache(a2 + 416, 1, v155);
              v130 = av1_palette_color_cost_uv((v88 + 94), v155, v102, *(*(v142 + 263736) + 72));
              v149 = 0u;
              v150 = 0u;
              v148 = 0u;
              get_color_map_params(a2, 1, v143, 0, &v148);
              a4 = v134;
              v96 += v132 + v131 + v130 + cost_and_tokenize_map(&v148, 0, 1, 0);
            }
          }

          if (v143 >= 3 && get_uv_mode_uv2y_6[v90] - 9 >= 0xFFFFFFF8)
          {
            v96 += *(v135 + 28 * get_uv_mode_uv2y_6[v90] + 4 * v88[89] - 16);
          }

          a3 = v143;
          v103 = v89 + v96;
          a5 = v140;
          v104 = *(&v145 + 1);
          v105 = ((v103 * *(a2 + 16920) + 256) >> 9) + (*(&v145 + 1) << 7);
          v47 = v142;
          if (v105 < v140)
          {
            v137 = v88[89];
            *a6 = v103;
            *a7 = v145;
            *(a7 + 8) = v104;
            *(a7 + 32) = v147;
            v87 = v105 + (v105 >> 5);
            a5 = v105;
          }
        }
      }

      if (*v83 <= v87 || *(v83 - 4) <= v87)
      {
        *(v144 + 89) = -v86;
        v106 = **(a2 + 8280);
        v147 = 0;
        v145 = 0u;
        v146 = 0u;
        if (av1_txfm_uvrd(v47, a2, &v145, a3, a5))
        {
          v107 = a3;
          v108 = a5;
          v109 = v145;
          v110 = v106[3];
          v111 = *v106;
          v115 = v111 >= 3 && (v111 & 0xFFFFFFFD) != 13 && *(v47 + 239551) != 0 && (v111 & 0xFE) != 14 && v110 == 0;
          v116 = a4;
          if (v115)
          {
            v117 = v106[143];
            v116 = *(v136 + 8 * (v106[142] != 0) + 4 * (v106[143] != 0)) + a4;
            if (v106[143])
            {
              v141 = *(v133 + 28 * num_pels_log2_lookup_14[v107] + 4 * v117 - 176);
              v118 = __clz(v117) ^ 0x1F;
              v119 = (2 << v118) - v117;
              v120 = v118 << 9;
              if (v119 <= **(a2 + 3200))
              {
                v121 = v120 + 512;
              }

              else
              {
                v121 = v120;
              }

              v122 = av1_get_palette_cache(a2 + 416, 1, v155);
              v123 = av1_palette_color_cost_uv((v106 + 94), v155, v122, *(*(v142 + 263736) + 72));
              v149 = 0u;
              v150 = 0u;
              v148 = 0u;
              get_color_map_params(a2, 1, v143, 0, &v148);
              v124 = cost_and_tokenize_map(&v148, 0, 1, 0);
              v107 = v143;
              v125 = v123 + v124;
              a4 = v134;
              v116 += v141 + v121 + v125;
            }
          }

          if (v107 >= 3 && get_uv_mode_uv2y_6[v110] - 9 >= 0xFFFFFFF8)
          {
            v116 += *(v135 + 28 * get_uv_mode_uv2y_6[v110] + 4 * v106[89] - 16);
          }

          a5 = v108;
          v126 = v109 + v116;
          v47 = v142;
          v127 = *(&v145 + 1);
          v128 = ((v126 * *(a2 + 16920) + 256) >> 9) + (*(&v145 + 1) << 7);
          v129 = v128 < v108;
          a3 = v107;
          if (v129)
          {
            v137 = v106[89];
            *a6 = v126;
            *a7 = v145;
            *(a7 + 8) = v127;
            *(a7 + 32) = v147;
            a5 = v128;
          }
        }
      }

      v83 += 4;
      v85 = __CFADD__(v84, 2);
      v84 += 2;
    }

    while (v85);
    *(v144 + 89) = v137;
    return *a7 != 0x7FFFFFFF;
  }

  return result;
}

uint64_t av1_search_palette_mode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v68 = *MEMORY[0x277D85DE8];
  v12 = **(a3 + 8280);
  v57 = *(*(a2 + 263736) + 77);
  v64 = a8;
  v13 = *(a3 + 16832);
  v14 = *(a3 + 592);
  v15 = *v12;
  v16 = v12[1];
  v67[2] = v12[2];
  v67[1] = v16;
  v67[0] = v15;
  v17 = v12[3];
  v18 = v12[4];
  v19 = v12[5];
  v67[6] = v12[6];
  v67[5] = v19;
  v67[4] = v18;
  v67[3] = v17;
  v20 = v12[7];
  v21 = v12[8];
  v22 = v12[9];
  v67[10] = v12[10];
  v67[9] = v22;
  v23 = size_group_lookup_4[a4];
  v67[8] = v21;
  v67[7] = v20;
  v24 = block_size_high_15[a4];
  v25 = block_size_wide_17[a4];
  *(v12 + 1) = 0;
  *(v12 + 8) = -256;
  *(v12 + 71) = 0;
  v20.f64[0] = NAN;
  v20.f64[1] = NAN;
  v61 = vnegq_f64(v20);
  v26 = 0x7FFFFFFFFFFFFFFFLL;
  v62 = 0x7FFFFFFFFFFFFFFFLL;
  v63 = 0;
  v60 = 0x7FFFFFFFLL;
  av1_rd_pick_palette_intra_sby(a2, a3, a4, *(a3 + 52 * v23 + 17744), v67, v13, &v64, &v60, 0, &v61, &v63, 0, a6, __src, v65);
  if (v60 != 0x7FFFFFFF && *(v12 + 142))
  {
    memcpy((a3 + 144481), __src, 1 << (num_pels_log2_lookup_14[a4] - 4));
    memcpy(*(a3 + 8328), v65, *(a6 + 416));
    memcpy(v14, v13, v25 * v24);
    result = v63;
    v35 = v61.f64[0];
    v36 = a5;
    v37 = v60 + a5;
    if (v57)
    {
      if (v63)
      {
        v38 = a7;
        v39 = *(a3 + 8296);
        v40 = *(a3 + 8304);
        if (!v40)
        {
LABEL_7:
          if (v39)
          {
            v39 = *(v39 + 144);
          }

          v41 = (a3 + 35968 + 8 * (v39 + v40) + 4);
LABEL_29:
          v54 = *v41 + v36;
          v26 = ((*(a3 + 16920) * v54 + 256) >> 9) + (*&v35 << 7);
          *v38 = v54;
          *(v38 + 8) = v35;
          goto LABEL_30;
        }

LABEL_6:
        v40 = *(v40 + 144);
        goto LABEL_7;
      }

      v36 = v60 + a5;
      v38 = a7;
      goto LABEL_24;
    }

    if (*(a1 + 28) != 0x7FFFFFFF)
    {
      v38 = a7;
      *(v12 + 3) = *(a1 + 49);
      v50 = *(a1 + 99);
      *(v12 + 143) = v50;
      if (!v50)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v42 = **(a3 + 8280);
    if (*(a3 + 4 * (*(v42 + 167) & 7) + 11108))
    {
      v43 = v63;
      v44 = 0;
      goto LABEL_14;
    }

    v55 = max_txsize_rect_lookup_5[av1_ss_size_lookup[4 * *v42 + 2 * *(a3 + 3044) + *(a3 + 3048)]];
    v43 = v63;
    if (v55 > 16)
    {
      if (v55 == 17)
      {
        v44 = 9;
        goto LABEL_14;
      }

      if (v55 == 18)
      {
        v44 = 10;
        goto LABEL_14;
      }
    }

    else
    {
      v44 = 3;
      if ((v55 - 11) < 2 || v55 == 4)
      {
LABEL_14:
        av1_rd_pick_intra_sbuv_mode(a2, a3, (a1 + 28), (a1 + 32), (a1 + 40), (a1 + 48), a4, v44, v27, v28, v29, v30, v31, v32, v33);
        v45 = *(v12 + 3);
        *(a1 + 49) = v45;
        v46 = *(v12 + 94);
        v47 = *(v12 + 110);
        v48 = *(v12 + 126);
        *(a1 + 98) = *(v12 + 71);
        *(a1 + 82) = v48;
        *(a1 + 66) = v47;
        *(a1 + 50) = v46;
        *(a1 + 100) = *(v12 + 89);
        LODWORD(result) = v43;
        v38 = a7;
        *(v12 + 3) = v45;
        v49 = *(a1 + 99);
        *(v12 + 143) = v49;
        if (!v49)
        {
LABEL_19:
          *(v12 + 89) = *(a1 + 100);
          if (result)
          {
            *&v35 += *(a1 + 40);
            v36 = *(a1 + 28) + v37;
            if (*(a1 + 48))
            {
              v36 -= v60 + *(a1 + 32);
              result = 1;
              v39 = *(a3 + 8296);
              v40 = *(a3 + 8304);
              if (!v40)
              {
                goto LABEL_7;
              }

              goto LABEL_6;
            }
          }

          else
          {
            *&v35 += *(a1 + 40);
            v36 = *(a1 + 28) + v37;
          }

LABEL_24:
          v52 = *(a3 + 8296);
          v53 = *(a3 + 8304);
          if (v53)
          {
            v53 = *(v53 + 144);
          }

          if (v52)
          {
            v52 = *(v52 + 144);
          }

          result = 0;
          v41 = (a3 + 35968 + 8 * (v52 + v53));
          goto LABEL_29;
        }

LABEL_18:
        v51 = *(a1 + 66);
        *(v12 + 126) = *(a1 + 82);
        *(v12 + 110) = v51;
        goto LABEL_19;
      }
    }

    v44 = v55;
    goto LABEL_14;
  }

  result = 0;
  v38 = a7;
LABEL_30:
  *(v38 + 16) = v26;
  return result;
}

void av1_search_palette_mode_luma(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a3;
  v43 = *MEMORY[0x277D85DE8];
  v11 = **(a2 + 8280);
  v39 = a7;
  v12 = *(a2 + 16832);
  v13 = *(a2 + 592);
  v14 = *v11;
  v15 = v11[1];
  v42[2] = v11[2];
  v42[1] = v15;
  v42[0] = v14;
  v16 = v11[3];
  v17 = v11[4];
  v18 = v11[5];
  v42[6] = v11[6];
  v42[5] = v18;
  v42[4] = v17;
  v42[3] = v16;
  v19 = v11[7];
  v20 = v11[8];
  v21 = v11[9];
  v42[10] = v11[10];
  v42[9] = v21;
  v22 = size_group_lookup_4[a3];
  v42[8] = v20;
  v42[7] = v19;
  v23 = block_size_high_15[a3];
  v24 = block_size_wide_17[a3];
  *(v11 + 1) = 0;
  *(v11 + 8) = -256;
  *(v11 + 71) = 0;
  v19.f64[0] = NAN;
  v19.f64[1] = NAN;
  v36 = vnegq_f64(v19);
  v37 = 0x7FFFFFFFFFFFFFFFLL;
  v38 = 0;
  v35 = 0x7FFFFFFFLL;
  av1_rd_pick_palette_intra_sby(a1, a2, a3, *(a2 + 52 * v22 + 17744), v42, v12, &v39, &v35, 0, &v36, &v38, 0, a5, __src, v40);
  if (v35 == 0x7FFFFFFF || !*(v11 + 142))
  {
    *(a6 + 16) = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    memcpy((a2 + 144481), __src, 1 << (num_pels_log2_lookup_14[v9] - 4));
    memcpy(*(a2 + 8328), v40, *(a5 + 416));
    memcpy(v13, v12, v24 * v23);
    v25 = v38;
    v26 = a2 + 35968;
    v27 = *(a2 + 8296);
    v28 = *(a2 + 8304);
    if (v38)
    {
      v29 = a4;
      if (v28)
      {
        v28 = *(v28 + 144);
      }

      if (v27)
      {
        v27 = *(v27 + 144);
      }

      v30 = (v26 + 8 * (v27 + v28) + 4);
    }

    else
    {
      if (v28)
      {
        v28 = *(v28 + 144);
      }

      v29 = v35 + a4;
      if (v27)
      {
        v27 = *(v27 + 144);
      }

      v30 = (v26 + 8 * (v27 + v28));
    }

    v31 = *v30 + v29;
    v32 = (*(a2 + 16920) * v31 + 256) >> 9;
    v33 = v36.f64[0];
    *a6 = v31;
    *(a6 + 8) = v33;
    *(a6 + 16) = v32 + (*&v33 << 7);
    *(a6 + 32) = v25;
  }
}

uint64_t av1_handle_intra_y_mode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int64_t a8, int32x4_t a9, int32x4_t a10, int32x4_t a11, int32x4_t a12, int32x4_t a13, int32x4_t a14, int32x4_t a15, _DWORD *a16, uint64_t *a17, uint64_t *a18, uint64_t a19)
{
  v23 = a2 + 263736;
  v24 = **(a3 + 8280);
  v25 = *(v24 + 2);
  v26 = a4;
  v27 = *(a3 + 8296);
  v28 = *(a3 + 8304);
  if (v28)
  {
    v28 = *(v28 + 144);
  }

  if (v27)
  {
    v29 = *(v27 + 144);
  }

  else
  {
    v29 = 0;
  }

  v30 = (*(a3 + 52 * size_group_lookup_4[a4] + 4 * *(v24 + 2) + 17744) + a5);
  v31 = v29 + v28;
  v32 = *(*v23 + 72);
  v33 = *(a2 + 239676) + *(a2 + 239672);
  if (v33 >= 0xFF)
  {
    v34 = 255;
  }

  else
  {
    v34 = *(a2 + 239676) + *(a2 + 239672);
  }

  if (v33 >= 0)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  switch(v32)
  {
    case 8:
      v36 = dc_qlookup_QTX;
      goto LABEL_18;
    case 12:
      v36 = dc_qlookup_12_QTX;
      goto LABEL_18;
    case 10:
      v36 = dc_qlookup_10_QTX;
LABEL_18:
      v37 = v36[v35];
      goto LABEL_20;
  }

  v37 = -1;
LABEL_20:
  v38 = 5 * v37;
  v39 = (v38 + 2) >> 2;
  if (v32 == 8)
  {
    v40 = 4 * v38;
  }

  else
  {
    v40 = -1;
  }

  if (v32 != 10)
  {
    v38 = v40;
  }

  if (v32 == 12)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v41 + v30;
  if (v25 == 12)
  {
    v42 = *(a3 + 52 * size_group_lookup_4[a4] + 4 * *(v24 + 2) + 17744) + a5;
  }

  if (!*(v24 + 2))
  {
    v42 = *(a3 + 52 * size_group_lookup_4[a4] + 4 * *(v24 + 2) + 17744) + a5;
  }

  v43 = (a3 + 8 * v31 + 35968);
  v44 = *v43;
  v47 = v43[1];
  v46 = v43 + 1;
  v45 = v47;
  if (v44 >= v47)
  {
    v44 = v45;
  }

  if (a8 >= (*(a3 + 16920) * (v44 + v42) + 256) >> 9)
  {
    v84 = (a3 + 16904);
    v85 = (a2 + 389424);
    v81 = a1;
    v82 = **(a3 + 8280);
    if (a4 >= 3 && (v25 - 9) >= 0xFFFFFFF8 && *(a2 + 265502) == 1)
    {
      if (*v85 && !*(a1 + 24))
      {
        a9.i32[0] = dword_273BF22A0[*v85 - 1];
        v49 = a6;
        prune_intra_mode_with_hog(a3, a4, *(*v23 + 28), (a1 + 8), 0, *a9.i64);
        a6 = v49;
        a1 = v81;
        *(v81 + 24) = 1;
      }

      if (*(a1 + v25 + 8))
      {
        return 0;
      }
    }

    v80 = a6;
    if ((v26 & 0xFC) == 0xC)
    {
      v50 = 3;
    }

    else
    {
      v50 = max_txsize_lookup_1[v26];
    }

    v51 = intra_model_rd(a2 + 239056, a3, 0, a4, v50, 1, a9, a10, a11, a12, a13, a14, a15);
    v52 = v85[10];
    if (!v85[11])
    {
      v56 = v52 - 1;
      goto LABEL_60;
    }

    v53 = (a3 + 8288);
    v54 = *(**(a3 + 8280) + 2);
    if (*(a3 + 8289) == 1)
    {
      v55 = *(*(a3 + 8296) + 2) != v54;
      v56 = v52 - 1;
      if (*v53 != 1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v55 = 0;
      v56 = v52 - 1;
      if (*v53 != 1)
      {
LABEL_49:
        v57 = 0;
        if (*v84 > 127)
        {
          goto LABEL_50;
        }

        goto LABEL_55;
      }
    }

    v57 = *(*(a3 + 8304) + 2) != v54;
    if (*v84 > 127)
    {
LABEL_50:
      if (!v55 || !v57)
      {
        goto LABEL_60;
      }

      goto LABEL_56;
    }

LABEL_55:
    if (!v55 && !v57)
    {
      goto LABEL_60;
    }

LABEL_56:
    if (v52 <= 2)
    {
      v58 = 2;
    }

    else
    {
      v58 = v85[10];
    }

    v56 = v58 - 2;
LABEL_60:
    if (v52 < 1)
    {
LABEL_64:
      v60 = *(a19 + 8 * v56);
      if (v60 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_75;
      }

LABEL_74:
      if (v51 > v60)
      {
        return 0;
      }

LABEL_75:
      v67 = *a18;
      if (v51 != 0x7FFFFFFFFFFFFFFFLL && v67 * 1.5 < v51)
      {
        return 0;
      }

      if (v67 > v51)
      {
        *a18 = v51;
      }

      *a7 = 0;
      *(a7 + 8) = 0;
      *(a7 + 16) = 0;
      *(a7 + 24) = 0;
      *(a7 + 32) = 1;
      av1_pick_uniform_tx_size_type_yrd(a2, a3, a7, a4, a8);
      if (v25 || a4 == 255 || !*(*v23 + 60) || ((0x1F07FFuLL >> v26) & 1) == 0 || ((0x2F0BFFuLL >> v26) & 1) == 0)
      {
        goto LABEL_80;
      }

      v72 = *a7;
      if (*a7 == 0x7FFFFFFF)
      {
        if (v85[14] > 0)
        {
          goto LABEL_80;
        }

        v73 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v82[91] = 0;
        v73 = ((v84[4] * (intra_mode_info_cost_y(a2, a3, v82, a4, v30) + v72) + 256) >> 9) + (*(a7 + 8) << 7);
        if (a8 < v73 / 2)
        {
          goto LABEL_80;
        }
      }

      handle_filter_intra_mode(a2, a3, a4, v80, a7, v30, a8, v73);
LABEL_80:
      if (*a7 != 0x7FFFFFFF)
      {
        v69 = intra_mode_info_cost_y(a2, a3, v82, a4, v30);
        *a16 = v69;
        if (*(a7 + 32))
        {
          v70 = v46;
        }

        else
        {
          v70 = a7;
        }

        v71 = (((*v70 + v69) * v84[4] + 256) >> 9) + (*(a7 + 8) << 7);
        *a17 = v71;
        if (a8 > 0x3FFFFFFFFFFFFFFELL)
        {
          return 1;
        }

        a1 = v81;
        if (v71 <= a8 + (a8 >> 2))
        {
          return 1;
        }

        goto LABEL_35;
      }

      return 0;
    }

    v59 = 0;
    while (*(a19 + 8 * v59) <= v51)
    {
      if (v52 == ++v59)
      {
        goto LABEL_64;
      }
    }

    if (v52 - 1 > v59)
    {
      v61 = a19 - 16;
      v62 = v52 - 1;
      v63 = v52 - 2;
      if (v59 >= v52 - 2)
      {
        v64 = v52 - 2;
      }

      else
      {
        v64 = v59;
      }

      v65 = ~v64 + v52;
      if (v65 <= 0x13 || (v59 >= v63 ? (v74 = v52 - 2) : (v74 = v59), (v75 = v63 - v74, v52 - v75 > v52) || HIDWORD(v75)))
      {
        v66 = v85[10];
      }

      else
      {
        v62 -= v65 & 0xFFFFFFFFFFFFFFFCLL;
        v66 = v52 - (v65 & 0xFFFFFFFC);
        if (v59 < v63)
        {
          v63 = v59;
        }

        v76 = (~v63 + v52) & 0xFFFFFFFFFFFFFFFCLL;
        v77 = (a19 + 8 * v52 - 16);
        do
        {
          v78 = v61 + 8 * v52;
          v79 = *(v78 - 8);
          *(v77 - 1) = *(v78 - 24);
          *v77 = v79;
          LODWORD(v52) = v52 - 4;
          v77 -= 2;
          v76 -= 4;
        }

        while (v76);
        if (v65 == (v65 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_73;
        }
      }

      do
      {
        *(a19 + 8 * v62) = *(v61 + 8 * v66);
        v66 = v62--;
      }

      while (v62 > v59);
    }

LABEL_73:
    *(a19 + 8 * v59) = v51;
    v60 = *(a19 + 8 * v56);
    if (v60 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

LABEL_35:
  v48 = 0;
  *(a1 + 4) = 1;
  return v48;
}

uint64_t intra_model_rd(uint64_t a1, _DWORD *a2, int a3, int a4, uint64_t a5, int a6, int32x4_t a7, int32x4_t a8, int32x4_t a9, int32x4_t a10, int32x4_t a11, int32x4_t a12, int32x4_t a13)
{
  v14 = a3;
  v15 = a2;
  v16 = block_size_wide_17[a4];
  v17 = a2[2086];
  v77 = block_size_wide_17[a4];
  if (v17 < 0)
  {
    v16 = (v17 >> (a2[652 * a3 + 109] + 3)) + v77;
    v18 = block_size_high_15[a4];
    v19 = a2[2088];
    if ((v19 & 0x80000000) == 0)
    {
LABEL_3:
      v20 = a3;
      v65 = v18 >> 2;
      if (v18 >> 2 < 1)
      {
        return 0;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v18 = block_size_high_15[a4];
    v19 = a2[2088];
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  v20 = a3;
  v65 = ((v19 >> (LOBYTE(a2[652 * a3 + 110]) + 3)) + v18) >> 2;
  if (v65 < 1)
  {
    return 0;
  }

LABEL_7:
  v21 = v16 >> 2;
  if (v16 >> 2 < 1)
  {
    return 0;
  }

  v22 = 0;
  v23 = 0;
  v74 = tx_size_wide_12[a5];
  v73 = tx_size_high_11[a5];
  v64 = tx_size_high_unit_6[a5];
  v70 = a2[2768];
  v72 = tx_size_wide_unit_6[a5];
  v24 = &a2[34 * v20];
  v71 = &a2[652 * v20 + 112];
  v67 = 2 * v77;
  v68 = v16 >> 2;
  do
  {
    v25 = 0;
    do
    {
      av1_predict_intra_block_facade(a1, (v15 + 104), v14, v25, v22, a5, *a7.i64, a8, *a9.i64, *a10.i64, *a11.i64, *a12.i8, a13);
      aom_subtract_block_neon(v73, v74, *v24, v77, (*(v24 + 6) + 4 * (v25 + v24[18] * v22)), v24[18], (*v71 + 4 * (v25 + *(v71 + 24) * v22)), *(v71 + 24));
      v27 = *v24;
      v28 = *(v24 + 3);
      if (a6)
      {
        if (a5 > 1)
        {
          if (a5 == 2)
          {
            aom_hadamard_16x16_neon(*v24, v77, *(v24 + 3));
          }

          else if (a5 == 3)
          {
            aom_hadamard_16x16_neon(*v24, v77, *(v24 + 3));
            aom_hadamard_16x16_neon(&v27[2], v77, v28 + 64);
            aom_hadamard_16x16_neon(&v27[v67], v77, v28 + 128);
            v14 = a3;
            v15 = a2;
            v21 = v68;
            aom_hadamard_16x16_neon(&v27[v67 + 2], v77, v28 + 192);
            v29 = -4;
            do
            {
              v30 = v28[64];
              v31 = v28[128];
              v32 = v28[192];
              a11 = vaddq_s32(v30, *v28);
              a12 = vshrq_n_s32(a11, 2uLL);
              v33 = vsubq_s32(*v28, v30);
              v34 = vshrq_n_s32(vaddq_s32(v32, v31), 2uLL);
              v35 = vshrq_n_s32(vsubq_s32(v31, v32), 2uLL);
              v36 = vsubq_s32(a12, v34);
              a13 = vsraq_n_s32(v34, a11, 2uLL);
              *v28 = a13;
              v28[64] = vsraq_n_s32(v35, v33, 2uLL);
              v28[128] = v36;
              v28[192] = vsubq_s32(vshrq_n_s32(v33, 2uLL), v35);
              ++v28;
              v29 += 4;
            }

            while (v29 < 0xFC);
          }
        }

        else if (a5)
        {
          if (a5 == 1)
          {
            vpx_hadamard_8x8_neon(*v24, v77, *(v24 + 3));
          }
        }

        else
        {
          v37 = *&v27->i8[2 * v77];
          v38 = *&v27->i8[4 * v77];
          v39 = *&v27->i8[6 * v77];
          v40 = vhadd_s16(*v27->i8, v37);
          v41 = vhsub_s16(*v27->i8, v37);
          v42 = vhadd_s16(v38, v39);
          v43 = vhsub_s16(v38, v39);
          v44 = vadd_s16(v42, v40);
          v45 = vadd_s16(v43, v41);
          v46 = vsub_s16(v40, v42);
          v47 = vsub_s16(v41, v43);
          v48 = vtrn1_s16(v44, v45);
          v49 = vtrn2_s16(v44, v45);
          v50 = vtrn1_s16(v46, v47);
          v51 = vtrn2_s16(v46, v47);
          v52 = vzip1_s32(v48, v50);
          v53 = vzip2_s32(v48, v50);
          v54 = vzip1_s32(v49, v51);
          v55 = vzip2_s32(v49, v51);
          v56 = vhadd_s16(v52, v54);
          v57 = vhsub_s16(v52, v54);
          *a11.i8 = vhadd_s16(v53, v55);
          v58 = vhsub_s16(v53, v55);
          *a12.i8 = vadd_s16(v58, v57);
          *v28 = vmovl_s16(vadd_s16(*a11.i8, v56));
          v28[1] = vmovl_s16(*a12.i8);
          v28[2] = vmovl_s16(vsub_s16(v56, *a11.i8));
          v28[3] = vmovl_s16(vsub_s16(v57, v58));
        }
      }

      else
      {
        v78[0] = 0;
        BYTE1(v78[0]) = a5;
        v78[1] = v70;
        v78[2] = 5;
        if (v70 == 8)
        {
          (lowbd_fwd_txfm_func_ls[a5])(v27, v28, v77, 0, 8);
        }

        else
        {
          av1_highbd_fwd_txfm(v27, v28, v77, v78, v26);
        }
      }

      v59 = *(v24 + 3);
      a10 = v59[3];
      a9 = vabsq_s32(v59[2]);
      v60 = vaddq_s32(vabsq_s32(v59[1]), vabsq_s32(*v59));
      a8 = vaddq_s32(vabsq_s32(a10), a9);
      v61 = tx_size_2d_1[a5] - 16;
      if (tx_size_2d_1[a5] != 16)
      {
        v62 = v59 + 7;
        do
        {
          a10 = v62[-2];
          a11 = v62[-1];
          a12 = *v62;
          v60 = vaddq_s32(vaddq_s32(vabsq_s32(v62[-3]), v60), vabsq_s32(a11));
          a9 = vabsq_s32(*v62);
          a8 = vaddq_s32(vaddq_s32(vabsq_s32(a10), a8), a9);
          v62 += 4;
          v61 -= 16;
        }

        while (v61);
      }

      a7 = vaddq_s32(v60, a8);
      a7.i32[0] = vaddvq_s32(a7);
      v23 += a7.i32[0];
      v25 += v72;
    }

    while (v25 < v21);
    v22 += v64;
  }

  while (v22 < v65);
  return v23;
}

uint64_t intra_mode_info_cost_y(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4, uint64_t a5)
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = (a1 + 239056);
  v7 = a3[91];
  v8 = *(a3 + 167);
  if (*(a1 + 239551))
  {
    v9 = *a3;
    v10 = v9 > 0xF;
    v11 = (1 << v9) & 0xE007;
    v12 = v10 || v11 == 0;
    if (v12 && !a3[2])
    {
      v17 = a3[142];
      v18 = num_pels_log2_lookup_14[a4] - 6;
      v19 = *(a2 + 8296);
      v20 = *(a2 + 8304);
      if (v20)
      {
        LODWORD(v20) = *(v20 + 142) != 0;
      }

      if (v19 && *(v19 + 142))
      {
        LODWORD(v20) = v20 + 1;
      }

      a5 = (*(a2 + 24 * v18 + 8 * v20 + 4 * (v17 != 0) + 32280) + a5);
      if (a3[142])
      {
        v34 = *(a2 + 28 * v18 + 4 * v17 + 29640);
        v21 = __clz(v17) ^ 0x1F;
        v22 = (2 << v21) - v17;
        v23 = v21 << 9;
        if (v22 <= **(a2 + 592))
        {
          v24 = v23 + 512;
        }

        else
        {
          v24 = v23;
        }

        v33 = v24;
        v25 = a1;
        v26 = a3;
        v27 = a2;
        v28 = a5;
        palette_cache = av1_get_palette_cache(a2 + 416, 0, v36);
        v30 = av1_palette_color_cost_y((v26 + 94), v36, palette_cache, *(*(v25 + 263736) + 72));
        memset(v35, 0, sizeof(v35));
        get_color_map_params(v27, 0, a4, 0, v35);
        v31 = cost_and_tokenize_map(v35, 0, 1, 0);
        a3 = v26;
        a2 = v27;
        v32 = v31;
        a1 = v25;
        a5 = v34 + v33 + v30 + v32 + v28;
      }
    }
  }

  if (a3[2])
  {
    if (a4 >= 3 && a3[2] <= 8u)
    {
      v13 = a2 + 28 * a3[2] + 4 * a3[88];
      v14 = 28376;
LABEL_10:
      a5 = (*(v13 + v14) + a5);
    }
  }

  else if (!a3[142])
  {
    v16 = *a3;
    if (v16 != 255)
    {
      if (*(*(a1 + 263736) + 60))
      {
        if ((0x1F07FFuLL >> v16) & 1) != 0 && ((0x2F0BFFuLL >> v16))
        {
          a5 = (*(a2 + 8 * v16 + 4 * v7 + 28196) + a5);
          if (v7)
          {
            v13 = a2 + 4 * a3[90];
            v14 = 28372;
            goto LABEL_10;
          }
        }
      }
    }
  }

  if ((*v6 & 0xFD) == 0 && v6[495] == 1 && v6[496])
  {
    return (*(a2 + 4 * ((v8 >> 7) & 1) + 29640) + a5);
  }

  return a5;
}

void *handle_filter_intra_mode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int64_t a7, uint64_t a8)
{
  v59 = *MEMORY[0x277D85DE8];
  v13 = **(a2 + 8280);
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v53 = *(v13 + 145);
  __memcpy_chk();
  __memcpy_chk();
  *(v13 + 90) = 256;
  av1_pick_uniform_tx_size_type_yrd(a1, a2, &v54, a3, a7);
  v15 = v54;
  if (v54 == 0x7FFFFFFF)
  {
    v16 = a7;
    v49 = 0;
    v50 = a6;
    v17 = a4;
    v18 = a8;
  }

  else
  {
    v19 = intra_mode_info_cost_y(a1, a2, v13, a3, a6);
    v20 = ((*(a2 + 16920) * (v19 + v15) + 256) >> 9) + (*(&v54 + 1) << 7);
    if (v20 != 0x7FFFFFFFFFFFFFFFLL && v20 / 2 > a7)
    {
      v23 = 0;
      v24 = 0;
      v25 = v53;
      v17 = a4;
      goto LABEL_45;
    }

    v16 = a7;
    v50 = a6;
    if (v20 >= a8)
    {
      v49 = 0;
      v17 = a4;
      v18 = a8;
    }

    else
    {
      v53 = *(v13 + 145);
      v17 = a4;
      __memcpy_chk();
      __memcpy_chk();
      v22 = v55;
      *a5 = v54;
      *(a5 + 16) = v22;
      *(a5 + 32) = v56;
      v49 = 1;
      v18 = v20;
    }

    a3 = a3;
  }

  *(v13 + 90) = 1;
  av1_pick_uniform_tx_size_type_yrd(a1, a2, &v54, a3, v16);
  v26 = v54;
  if (v54 == 0x7FFFFFFF)
  {
    v52 = 0;
  }

  else
  {
    v34 = intra_mode_info_cost_y(a1, a2, v13, a3, v50);
    v35 = ((*(a2 + 16920) * (v34 + v26) + 256) >> 9) + (*(&v54 + 1) << 7);
    if (v35 != 0x7FFFFFFFFFFFFFFFLL && v35 / 2 > v16)
    {
      v23 = 0;
      v25 = v53;
      v24 = v49;
      goto LABEL_45;
    }

    if (v35 >= v18)
    {
      v52 = 0;
    }

    else
    {
      v53 = *(v13 + 145);
      __memcpy_chk();
      __memcpy_chk();
      v37 = v55;
      *a5 = v54;
      *(a5 + 16) = v37;
      *(a5 + 32) = v56;
      v52 = 1;
      v49 = 1;
      v18 = v35;
    }
  }

  *(v13 + 90) = 2;
  av1_pick_uniform_tx_size_type_yrd(a1, a2, &v54, a3, v16);
  v27 = v54;
  if (v54 != 0x7FFFFFFF)
  {
    v38 = intra_mode_info_cost_y(a1, a2, v13, a3, v50);
    v39 = ((*(a2 + 16920) * (v38 + v27) + 256) >> 9) + (*(&v54 + 1) << 7);
    if (v39 != 0x7FFFFFFFFFFFFFFFLL && v39 / 2 > v16)
    {
      goto LABEL_44;
    }

    if (v39 < v18)
    {
      v53 = *(v13 + 145);
      __memcpy_chk();
      __memcpy_chk();
      v41 = v55;
      *a5 = v54;
      *(a5 + 16) = v41;
      *(a5 + 32) = v56;
      v49 = 1;
      v52 = 2;
      v18 = v39;
    }
  }

  *(v13 + 90) = 3;
  av1_pick_uniform_tx_size_type_yrd(a1, a2, &v54, a3, v16);
  v28 = v54;
  if (v54 != 0x7FFFFFFF)
  {
    v42 = intra_mode_info_cost_y(a1, a2, v13, a3, v50);
    v43 = ((*(a2 + 16920) * (v42 + v28) + 256) >> 9) + (*(&v54 + 1) << 7);
    if (v43 != 0x7FFFFFFFFFFFFFFFLL && v43 / 2 > v16)
    {
      goto LABEL_44;
    }

    if (v43 < v18)
    {
      v53 = *(v13 + 145);
      __memcpy_chk();
      __memcpy_chk();
      v45 = v55;
      *a5 = v54;
      *(a5 + 16) = v45;
      *(a5 + 32) = v56;
      v49 = 1;
      v52 = 3;
      v18 = v43;
    }
  }

  *(v13 + 90) = 4;
  av1_pick_uniform_tx_size_type_yrd(a1, a2, &v54, a3, v16);
  v29 = v54;
  if (v54 == 0x7FFFFFFF)
  {
LABEL_44:
    v25 = v53;
    v24 = v49;
    v23 = v52;
    goto LABEL_45;
  }

  v30 = intra_mode_info_cost_y(a1, a2, v13, a3, v50);
  v31 = ((*(a2 + 16920) * (v30 + v29) + 256) >> 9) + (*(&v54 + 1) << 7);
  v32 = v31 < v18 && v31 / 2 <= v16;
  v25 = v53;
  v24 = v49;
  v23 = v52;
  if (v32)
  {
    v25 = *(v13 + 145);
    __memcpy_chk();
    __memcpy_chk();
    v33 = v55;
    *a5 = v54;
    *(a5 + 16) = v33;
    *(a5 + 32) = v56;
    v24 = 1;
    v23 = 4;
  }

LABEL_45:
  *(v13 + 145) = v25;
  memcpy(*(a2 + 8328), __src, *(v17 + 416));
  result = memcpy((a2 + 144481), v58, *(v17 + 416));
  if (v24)
  {
    *(v13 + 90) = v23;
    v47 = 1;
  }

  else
  {
    v47 = 0;
  }

  *(v13 + 91) = v47;
  return result;
}

uint64_t av1_search_intra_uv_modes_in_interframe(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, int32x4_t a14, int32x4_t a15)
{
  v21 = **(a3 + 8280);
  if (*(a2 + 264828) == 1)
  {
    v22 = *(a2 + 239551);
    v23 = *v21;
    if ((v23 & 0xFE) == 0xE)
    {
      v22 = 0;
    }

    v24 = v23 > 2;
    v25 = v23 & 0xFFFFFFFD;
    if (!v24 || v25 == 13)
    {
      v27 = 0;
    }

    else
    {
      v27 = v22;
    }

    v28 = (a1 + 28);
    if (*(a1 + 28) != 0x7FFFFFFF)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v27 = 0;
    v28 = (a1 + 28);
    if (*(a1 + 28) != 0x7FFFFFFF)
    {
LABEL_11:
      v29 = *(a1 + 32);
      v30 = *(a1 + 40);
      v31 = *(a1 + 49);
      goto LABEL_30;
    }
  }

  if (*(a3 + 4 * (*(v21 + 167) & 7) + 11108))
  {
    v32 = 0;
  }

  else
  {
    v32 = max_txsize_rect_lookup_5[av1_ss_size_lookup[4 * *v21 + 2 * *(a3 + 3044) + *(a3 + 3048)]];
    if (v32 > 0x10)
    {
      if (v32 == 17)
      {
        v32 = 9;
      }

      else if (v32 == 18)
      {
        v32 = 10;
      }
    }

    else if (v32 - 11 < 2 || v32 == 4)
    {
      v32 = 3;
    }
  }

  av1_rd_pick_intra_sbuv_mode(a2, a3, v28, (a1 + 32), (a1 + 40), (a1 + 48), a4, v32, a9, a10, a11, a12, a13, a14, a15);
  v31 = v21[3];
  *(a1 + 49) = v31;
  if (v27)
  {
    v34 = *(v21 + 94);
    v35 = *(v21 + 110);
    v36 = *(v21 + 126);
    *(a1 + 98) = *(v21 + 71);
    *(a1 + 82) = v36;
    *(a1 + 66) = v35;
    *(a1 + 50) = v34;
  }

  *(a1 + 100) = v21[89];
  v29 = *(a1 + 32);
  v30 = *(a1 + 40);
  if (((*(a3 + 16920) * v29 + 256) >> 9) + (v30 << 7) > a8)
  {
    result = 0;
    *(a1 + 4) = 1;
    return result;
  }

LABEL_30:
  *a7 = v29;
  *(a7 + 8) = v30;
  v38 = *(a1 + 48);
  *(a7 + 32) = v38;
  if (v38)
  {
    v39 = *(a6 + 32) == 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = !v39;
  *(a5 + 32) = v40;
  v21[3] = v31;
  if (v27)
  {
    v21[143] = *(a1 + 99);
    v41 = *(a1 + 66);
    *(v21 + 126) = *(a1 + 82);
    *(v21 + 110) = v41;
  }

  v21[89] = *(a1 + 100);
  return 1;
}

int64_t av1_rd_pick_intra_sby_mode(_BYTE *a1, uint64_t a2, _DWORD *a3, _DWORD *a4, void *a5, _BYTE *a6, unsigned int a7, int64_t a8, double a9, uint64_t a10)
{
  v11 = a2;
  v309 = *MEMORY[0x277D85DE8];
  v13 = a1 + 263736;
  v277 = a8;
  v14 = **(a2 + 8280);
  memset(v306, 0, 13);
  v276 = 0;
  if (a1[264828] == 1 && a1[239551])
  {
    v15 = *v14;
    v16 = v15 > 0xF;
    v17 = (1 << v15) & 0xE007;
    v18 = v16 || v17 == 0;
    if (v18)
    {
      v242 = *(a2 + 16832);
      v251 = 1;
      v19 = a1 + 388288;
      v20 = *(a2 + 8304);
      v21 = *(a2 + 8296);
      if (!v20)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  v251 = 0;
  v242 = 0;
  v19 = a1 + 388288;
  v20 = *(a2 + 8304);
  v21 = *(a2 + 8296);
  if (v20)
  {
LABEL_8:
    v20 = *(v20 + 2);
  }

LABEL_9:
  v22 = a2 + 144428;
  v270 = a1 + 239056;
  if (v21)
  {
    v21 = *(v21 + 2);
  }

  v23 = intra_mode_context_2[v20];
  v24 = intra_mode_context_2[v21];
  v14[88] = 0;
  v25 = *(v19 + 284);
  if (v25)
  {
    LODWORD(a9) = dword_273BF22B0[v25 - 1];
    prune_intra_mode_with_hog(a2, a7, *(*v13 + 28), v306, 0, a9);
  }

  v14[91] = 0;
  v14[142] = 0;
  v26 = *(v13 + 423);
  *(v11 + 144472) = v26 == 1;
  if (*(v19 + 305))
  {
    v27 = 1;
  }

  else
  {
    v27 = v13[1774];
  }

  *v22 = v27;
  *(v11 + 144432) = *(v19 + 306);
  *(v11 + 144460) = *(v19 + 14);
  *(v11 + 144468) = *(v19 + 17);
  if (v26 == 1)
  {
    *(v11 + 144456) = 1;
    *(v11 + 144448) = 0;
  }

  else
  {
    if (*(v19 + 329))
    {
      *(v11 + 144456) = *(v19 + 8);
      v28 = *(v19 + 11);
    }

    else
    {
      *(v11 + 144456) = *(v19 + 7);
      v28 = *(v19 + 10);
    }

    *(v11 + 144448) = v28;
  }

  v29 = *(v19 + 326);
  v30 = v29 == 0;
  if (v29)
  {
    v31 = v19 + 8;
  }

  else
  {
    v31 = v19;
  }

  v32 = 388300;
  if (v30)
  {
    v32 = 388292;
  }

  *(v11 + 144440) = *v31;
  *(v11 + 144444) = *&a1[v32];
  v33 = *(v19 + 327);
  v34 = v19[24];
  *(v11 + 144452) = v34;
  if (v33)
  {
    v34 = v19[25];
    *(v11 + 144452) = v34;
  }

  v35 = v11 + 109712;
  if (v34 == 2)
  {
    v36 = 1;
  }

  else
  {
    v36 = 2;
  }

  if (v270[499])
  {
    v36 = 0;
  }

  *(v11 + 144464) = v36;
  v37 = *(v19 + 313);
  *(v11 + 144436) = v19[1216];
  if (v37)
  {
    *(v11 + 144436) = dword_273BF2244[2 * v37 - 2];
  }

  if (*(v11 + 144476) != 1)
  {
    v38 = *(v11 + 146536);
    if (v38)
    {
      *(v38 + 16960) = 0;
    }
  }

  v259 = (v11 + 16904);
  v260 = v11 + 122120;
  v249 = (v11 + 8288);
  v268 = (v11 + 676 * v23 + 52 * v24 + 17952);
  v272 = a1;
  v254 = a1 + 389380;
  *(v11 + 144476) = 1;
  v39 = *v14;
  v40 = *(v14 + 2);
  v296 = *(v14 + 1);
  v297 = v40;
  v295 = v39;
  v41 = *(v14 + 3);
  v42 = *(v14 + 4);
  v43 = *(v14 + 6);
  v300 = *(v14 + 5);
  v301 = v43;
  v298 = v41;
  v299 = v42;
  v44 = *(v14 + 7);
  v45 = *(v14 + 8);
  v46 = *(v14 + 10);
  v304 = *(v14 + 9);
  v305 = v46;
  v302 = v44;
  v303 = v45;
  v47 = *v35;
  v271 = a7;
  v269 = v11 + 109712;
  __dst = a7;
  if (*v35)
  {
    v244 = v11;
    *&v44 = 0;
    v48 = winner_mode_count_allowed_1[v19[1320]];
    v49 = block_size_high_15[a7] * block_size_wide_17[a7];
    v273 = v44;
    do
    {
      *(v47 + 128) = 0u;
      *(v47 + 144) = 0u;
      *(v47 + 96) = 0u;
      *(v47 + 112) = 0u;
      *(v47 + 64) = 0u;
      *(v47 + 80) = 0u;
      *(v47 + 32) = 0u;
      *(v47 + 48) = 0u;
      *v47 = 0u;
      *(v47 + 16) = 0u;
      *(v47 + 160) = 0u;
      *(v47 + 176) = 0u;
      *(v47 + 192) = 0u;
      *(v47 + 208) = 0;
      *(v47 + 216) = v273;
      bzero((v47 + 232), v49);
      *(v47 + 16616) = 0;
      v47 += 16624;
      --v48;
    }

    while (v48);
    v11 = v244;
    v35 = v269;
  }

  *(v35 + 8) = 0;
  memset_pattern16(__b, &unk_273BE11B0, 0x20uLL);
  memset_pattern16(v280, &unk_273BE11B0, 0x48uLL);
  memset_pattern16(&v281, &unk_273BE11B0, 0x48uLL);
  memset_pattern16(&v282, &unk_273BE11B0, 0x48uLL);
  memset_pattern16(&v283, &unk_273BE11B0, 0x48uLL);
  memset_pattern16(&v284, &unk_273BE11B0, 0x48uLL);
  memset_pattern16(&v285, &unk_273BE11B0, 0x48uLL);
  memset_pattern16(&v286, &unk_273BE11B0, 0x48uLL);
  memset_pattern16(&v287, &unk_273BE11B0, 0x48uLL);
  memset_pattern16(&v288, &unk_273BE11B0, 0x48uLL);
  memset_pattern16(&v289, &unk_273BE11B0, 0x48uLL);
  memset_pattern16(&v290, &unk_273BE11B0, 0x48uLL);
  memset_pattern16(&v291, &unk_273BE11B0, 0x48uLL);
  memset_pattern16(&v292, &unk_273BE11B0, 0x48uLL);
  v56 = 0;
  v57 = a7;
  v257 = a7 & 0xFC;
  v58 = &v293;
  v240 = v11 + 11108;
  v238 = v11 + 35992;
  v59 = 0uLL;
  v274 = 0x7FFFFFFFFFFFFFFFLL;
  v60 = v260;
  do
  {
    if (v56 > 0xC)
    {
      v63 = *(v19 + 296);
      v62 = (v56 - 13) / 6u + 1;
      v14[2] = (v56 - 13) / 6u + 1;
      if (v63)
      {
        v61 = luma_delta_angles_order[(v56 - 13) % 6u];
      }

      else
      {
        if ((v56 - 13) % 6u < 3)
        {
          v64 = -3;
        }

        else
        {
          v64 = -2;
        }

        v61 = v64 + (v56 - 13) % 6u;
      }
    }

    else
    {
      v61 = 0;
      v62 = intra_rd_search_mode_order[v56];
      v14[2] = v62;
    }

    v14[88] = v61;
    v308 = 0;
    __src[0] = v59;
    __src[1] = v59;
    v65 = (v62 - 9);
    if (v65 >= 0xFA)
    {
      if ((v13[1765] & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else if (v65 < 0xF8)
    {
      v66 = 1;
      if (v13[1761] == 1)
      {
        goto LABEL_62;
      }

      goto LABEL_57;
    }

    if (v13[1764] != 1)
    {
      goto LABEL_45;
    }

    v66 = 0;
    if (v13[1761] == 1)
    {
LABEL_62:
      v67 = *(v19 + 286);
      if ((v62 & 0xFE) == 0xA && v67 != 0)
      {
        goto LABEL_45;
      }

      goto LABEL_67;
    }

LABEL_57:
    if ((v62 - 9) < 3u)
    {
      goto LABEL_45;
    }

    v67 = *(v19 + 286);
LABEL_67:
    if (!v67 || v62 != 9 || *(v19 + 288)) && (v62 != 12 || (v13[1762]) && (!*v60 || v62 == *(*(v60 + 8) + 2)) && ((v66 & 1) != 0 || !v306[v62] && (a7 >= 3 && (v13[1766] & 1) != 0 || !v61)) && ((*&v254[4 * max_txsize_lookup_1[v57]] >> v62))
    {
      if (!*(v19 + 296))
      {
        v66 = 1;
      }

      if ((v66 & 1) != 0 || (v61 & 1) == 0 || v277 == 0x7FFFFFFFFFFFFFFFLL || (v75 = &v280[9 * v62], v76 = v277 + (v277 >> 3), v77 = &v75[v61], v77[3] <= v76) || v77[5] <= v76)
      {
        v236 = v61;
        v247 = v58;
        if (v257 == 12)
        {
          v69 = 3;
        }

        else
        {
          v69 = max_txsize_lookup_1[v57];
        }

        v70 = intra_model_rd(v270, v11, 0, a7, v69, 1, 0, v50, v51, v52, v53, v54, v55);
        v71 = *(v19 + 294);
        if (!*(v19 + 295))
        {
          v78 = v71 - 1;
          v73 = v274;
          v58 = v247;
          goto LABEL_104;
        }

        v72 = *(**(v11 + 8280) + 2);
        v73 = v274;
        v74 = v249[1] == 1 && *(*(v11 + 8296) + 2) != v72;
        v58 = v247;
        if (*v249 == 1)
        {
          v79 = *(*(v11 + 8304) + 2) != v72;
          v78 = v71 - 1;
          if (*v259 > 127)
          {
            goto LABEL_99;
          }

LABEL_117:
          if (!v74 && !v79)
          {
            goto LABEL_104;
          }

LABEL_100:
          if (v71 <= 2)
          {
            v80 = 2;
          }

          else
          {
            v80 = *(v19 + 294);
          }

          v78 = v80 - 2;
          goto LABEL_104;
        }

        v79 = 0;
        v78 = v71 - 1;
        if (*v259 <= 127)
        {
          goto LABEL_117;
        }

LABEL_99:
        if (v74 && v79)
        {
          goto LABEL_100;
        }

LABEL_104:
        if (v71 < 1)
        {
LABEL_108:
          v82 = __b[v78];
          if (v82 != 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v81 = 0;
          while (__b[v81] <= v70)
          {
            if (v71 == ++v81)
            {
              goto LABEL_108;
            }
          }

          if (v71 - 1 > v81)
          {
            v83 = v71 - 1;
            v84 = v71 - 2;
            if (v81 >= v71 - 2)
            {
              v85 = v71 - 2;
            }

            else
            {
              v85 = v81;
            }

            v86 = ~v85 + v71;
            if (v86 <= 0x13)
            {
              v87 = *(v19 + 294);
              goto LABEL_131;
            }

            if (v81 >= v84)
            {
              v88 = v71 - 2;
            }

            else
            {
              v88 = v81;
            }

            v89 = v84 - v88;
            if (v71 - v89 > v71 || HIDWORD(v89))
            {
              v87 = *(v19 + 294);
              v73 = v274;
              goto LABEL_131;
            }

            v83 -= v86 & 0xFFFFFFFFFFFFFFFCLL;
            v87 = v71 - (v86 & 0xFFFFFFFC);
            if (v81 < v84)
            {
              v84 = v81;
            }

            v90 = (~v84 + v71) & 0xFFFFFFFFFFFFFFFCLL;
            v91 = &v58[v71];
            do
            {
              v92 = &v58[v71];
              v93 = *(v92 - 1);
              v50 = *(v92 - 3);
              *(v91 - 1) = v50;
              *v91 = v93;
              LODWORD(v71) = v71 - 4;
              v91 -= 4;
              v90 -= 4;
            }

            while (v90);
            v73 = v274;
            if (v86 != (v86 & 0xFFFFFFFFFFFFFFFCLL))
            {
              do
              {
LABEL_131:
                __b[v83] = v58[v87];
                v87 = v83--;
              }

              while (v83 > v81);
            }
          }

          __b[v81] = v70;
          v82 = __b[v78];
          if (v82 != 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_133:
            *v50.i64 = v82;
            if (v70 > v82)
            {
              goto LABEL_44;
            }
          }
        }

        if (v70 != 0x7FFFFFFFFFFFFFFFLL)
        {
          *v50.i64 = v73 * 1.5;
          if (*v50.i64 < v70)
          {
LABEL_44:
            v60 = v260;
            v57 = a7;
            v59 = 0uLL;
            goto LABEL_45;
          }
        }

        if (v73 >= v70)
        {
          v73 = v70;
        }

        v274 = v73;
        av1_pick_uniform_tx_size_type_yrd(v272, v11, __src, a7, v277);
        v94 = __src[0];
        if (LODWORD(__src[0]) == 0x7FFFFFFF)
        {
          v60 = v260;
          v57 = a7;
          v58 = v247;
          v59 = 0uLL;
          goto LABEL_45;
        }

        if (*(v240 + 4 * (*(v14 + 167) & 7)))
        {
          v95 = __src[0];
        }

        else
        {
          v95 = __src[0];
          if (*v14)
          {
            v96 = 0;
            if (a7 && *(v22 + 36) == 2)
            {
              v97 = v14[145];
              v98 = max_txsize_rect_lookup_5[a7];
              if (v98 == v97)
              {
                v99 = 0;
              }

              else
              {
                v99 = 0;
                do
                {
                  v98 = sub_tx_size_map_2[v98];
                  ++v99;
                }

                while (v98 != v97);
              }

              v100 = *v249;
              v101 = **(v11 + 8544);
              if (v100 == 1)
              {
                v102 = *(v11 + 8304);
                if ((*(v102 + 167) & 0x80) != 0 || v102[16] >= 1)
                {
                  v101 = block_size_wide_17[*v102];
                }
              }

              v103 = v249[1];
              v104 = **(v11 + 8552);
              if (v249[1])
              {
                v105 = *(v11 + 8296);
                if ((*(v105 + 167) & 0x80) != 0 || v105[16] >= 1)
                {
                  v104 = block_size_high_15[*v105];
                }
              }

              v106 = max_txsize_rect_lookup_5[***(v11 + 8280)];
              if (tx_size_high_11[v106] > v104)
              {
                v103 = 0;
              }

              if (tx_size_wide_12[v106] > v101)
              {
                v100 = 0;
              }

              v96 = *(v238 + 60 * (bsize_to_tx_size_cat_bsize_to_tx_size_depth_table_1[a7] - 1) + 20 * (v103 + v100) + 4 * v99);
            }

            v95 = LODWORD(__src[0]) - v96;
          }
        }

        v235 = v95;
        v107 = *(&__src[0] + 1);
        v233 = v308;
        v108 = intra_mode_info_cost_y(v272, v11, v14, a7, v268[v14[2]]) + v94;
        v234 = v107;
        v109 = ((v259[4] * v108 + 256) >> 9) + (v107 << 7);
        if (v13[1896] == 2 && v109 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v110 = v109;
          v111 = v108;
          intra_rd_variance_factor(v272, v11, a7);
          v108 = v111;
          v109 = (v112 * v110);
        }

        v245 = v11;
        v280[9 * v14[2] + 4 + v236] = v109;
        v113 = v109 == 0x7FFFFFFFFFFFFFFFLL || v19[1320] == 0;
        v114 = v269;
        if (!v113)
        {
          v115 = *v269;
          if ((*v270 & 0xFD) == 0 || !v14[142])
          {
            v116 = winner_mode_count_allowed_1[v19[1320]];
            v117 = *(v269 + 8);
            if (!v117)
            {
              LODWORD(v118) = 0;
              goto LABEL_183;
            }

            if (v117 < 1)
            {
              LODWORD(v118) = 0;
            }

            else
            {
              v118 = 0;
              v119 = (v115 + 216);
              while (*v119 <= v109)
              {
                v119 += 2078;
                if (v117 == ++v118)
                {
                  LODWORD(v118) = *(v269 + 8);
                  break;
                }
              }
            }

            if (v118 != v116)
            {
              if (v118 < v116 - 1)
              {
                v237 = v108;
                v232 = *v269;
                memmove((v115 + 16624 * v118 + 16624), (v115 + 16624 * v118), 16624 * (v116 + ~v118));
                v115 = v232;
                v108 = v237;
                v114 = v269;
              }

LABEL_183:
              v120 = v115 + 16624 * v118;
              v121 = *v14;
              v122 = *(v14 + 2);
              *(v120 + 16) = *(v14 + 1);
              *(v120 + 32) = v122;
              *v120 = v121;
              v123 = *(v14 + 3);
              v124 = *(v14 + 4);
              v125 = *(v14 + 6);
              *(v120 + 80) = *(v14 + 5);
              *(v120 + 96) = v125;
              *(v120 + 48) = v123;
              *(v120 + 64) = v124;
              v126 = *(v14 + 7);
              v50 = *(v14 + 8);
              v51 = *(v14 + 9);
              v52 = *(v14 + 10);
              *(v120 + 144) = v51;
              *(v120 + 160) = v52;
              *(v120 + 112) = v126;
              *(v120 + 128) = v50;
              *(v120 + 16616) = 0;
              *(v120 + 216) = v109;
              v127 = *(v114 + 8);
              if (v127 + 1 < v116)
              {
                v128 = v127 + 1;
              }

              else
              {
                v128 = v116;
              }

              *(v114 + 8) = v128;
            }
          }
        }

        if (v109 >= v277)
        {
          v11 = v245;
        }

        else
        {
          v129 = *v14;
          v130 = *(v14 + 2);
          v296 = *(v14 + 1);
          v297 = v130;
          v295 = v129;
          v131 = *(v14 + 3);
          v132 = *(v14 + 4);
          v133 = *(v14 + 6);
          v300 = *(v14 + 5);
          v301 = v133;
          v298 = v131;
          v299 = v132;
          v134 = *(v14 + 7);
          v135 = *(v14 + 8);
          v136 = *(v14 + 10);
          v304 = *(v14 + 9);
          v305 = v136;
          v302 = v134;
          v303 = v135;
          v277 = v109;
          v276 = 1;
          *a3 = v108;
          *a4 = v235;
          *a5 = v234;
          *a6 = v233;
          v11 = v245;
          memcpy(*(a10 + 280), (v245 + 144481), *(a10 + 416));
          memcpy(*(a10 + 408), *(v245 + 8328), *(a10 + 416));
        }

        v60 = v260;
        v57 = a7;
        v58 = v247;
        v59 = 0uLL;
      }
    }

LABEL_45:
    ++v56;
  }

  while (v56 != 61);
  v137 = a7;
  v138 = v272;
  if (v251)
  {
    av1_rd_pick_palette_intra_sby(v272, v11, a7, *v268, &v295, v242, &v277, a3, a4, a5, a6, &v276, a10, *(a10 + 280), *(a10 + 408));
    v60 = v260;
    v57 = a7;
  }

  v139 = v269;
  if (!v276)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a7 == 255 || !*(*v13 + 60) || ((0x1F07FFuLL >> v57) & 1) == 0 || ((0x2F0BFFuLL >> v57) & 1) == 0 || *(v19 + 288) == 2)
  {
    goto LABEL_248;
  }

  v252 = *v268;
  v255 = BYTE2(v295);
  v140 = **(v11 + 8280);
  *(v140 + 91) = 1;
  *(v140 + 2) = 0;
  *(v140 + 142) = 0;
  if (*v60 && !*(*(v60 + 8) + 91))
  {
    goto LABEL_247;
  }

  v141 = 0;
  v246 = 0;
  v248 = 1;
  v243 = 1;
  while (2)
  {
    while (1)
    {
      v279 = 0;
      memset(v278, 0, sizeof(v278));
      *(v140 + 90) = v141;
      if (*(v19 + 288) == 1 && ((av1_derived_filter_intra_mode_used_flag[v255] >> v141) & 1) == 0)
      {
        break;
      }

      if (*v60 && v141 != *(*(v60 + 8) + 90))
      {
        break;
      }

      if (v257 == 12)
      {
        v142 = 3;
      }

      else
      {
        v142 = max_txsize_lookup_1[v57];
      }

      v143 = intra_model_rd(v270, v11, 0, v137, v142, 1, 0, v50, v51, v52, v53, v54, v55);
      v144 = v274;
      if (v274 != 0x7FFFFFFFFFFFFFFFLL && v143 > v274 + (v274 >> 2))
      {
        goto LABEL_203;
      }

      if (v143 < v274)
      {
        v144 = v143;
      }

      v274 = v144;
      av1_pick_uniform_tx_size_type_yrd(v272, v11, v278, v137, v277);
      v145 = v11;
      v146 = v278[0];
      if (LODWORD(v278[0]) == 0x7FFFFFFF)
      {
        v11 = v145;
LABEL_203:
        v139 = v269;
        v60 = v260;
        v57 = __dst;
        break;
      }

      v147 = v145;
      v250 = intra_mode_info_cost_y(v272, v145, v140, v137, v252) + v146;
      v148 = ((v259[4] * v250 + 256) >> 9) + (*(&v278[0] + 1) << 7);
      if (v13[1896] == 2 && v148 != 0x7FFFFFFFFFFFFFFFLL)
      {
        intra_rd_variance_factor(v272, v147, v271);
        v148 = (v149 * v148);
      }

      v150 = v148 == 0x7FFFFFFFFFFFFFFFLL || v19[1320] == 0;
      v139 = v269;
      v60 = v260;
      v57 = __dst;
      if (!v150)
      {
        v151 = *v269;
        if ((*v270 & 0xFD) == 0 || !*(v140 + 142))
        {
          v152 = winner_mode_count_allowed_1[v19[1320]];
          v153 = *(v269 + 8);
          if (!v153)
          {
            LODWORD(v154) = 0;
LABEL_237:
            v156 = v151 + 16624 * v154;
            v157 = *v140;
            v158 = v140[2];
            *(v156 + 16) = v140[1];
            *(v156 + 32) = v158;
            *v156 = v157;
            v159 = v140[3];
            v160 = v140[4];
            v161 = v140[6];
            *(v156 + 80) = v140[5];
            *(v156 + 96) = v161;
            *(v156 + 48) = v159;
            *(v156 + 64) = v160;
            v162 = v140[7];
            v50 = v140[8];
            v51 = v140[9];
            v52 = v140[10];
            *(v156 + 144) = v51;
            *(v156 + 160) = v52;
            *(v156 + 112) = v162;
            *(v156 + 128) = v50;
            *(v156 + 16616) = 0;
            *(v156 + 216) = v148;
            v163 = *(v139 + 8);
            if (v163 + 1 < v152)
            {
              v164 = v163 + 1;
            }

            else
            {
              v164 = v152;
            }

            *(v139 + 8) = v164;
            goto LABEL_241;
          }

          if (v153 < 1)
          {
            LODWORD(v154) = 0;
          }

          else
          {
            v154 = 0;
            v155 = (v151 + 216);
            while (*v155 <= v148)
            {
              v155 += 2078;
              if (v153 == ++v154)
              {
                LODWORD(v154) = *(v269 + 8);
                break;
              }
            }
          }

          if (v154 != v152)
          {
            if (v154 < v152 - 1)
            {
              v241 = winner_mode_count_allowed_1[v19[1320]];
              v239 = *v269;
              memmove((v151 + 16624 * v154 + 16624), (v151 + 16624 * v154), 16624 * (v152 + ~v154));
              v151 = v239;
              v152 = v241;
              v60 = v260;
              v57 = __dst;
              v139 = v269;
            }

            goto LABEL_237;
          }
        }
      }

LABEL_241:
      if (v148 >= v277)
      {
        v11 = v147;
        v137 = v271;
        break;
      }

      v277 = v148;
      v243 = *(v140 + 145);
      v246 = *(v140 + 45);
      v11 = v147;
      v165 = *(a10 + 416);
      __memcpy_chk();
      memcpy(*(a10 + 280), (v11 + 144481), v165);
      v60 = v260;
      v57 = __dst;
      v139 = v269;
      v248 = 0;
      *a3 = v250;
      *a4 = v278[0];
      *a5 = *(&v278[0] + 1);
      *a6 = v279;
      ++v141;
      v137 = v271;
      if (v141 == 5)
      {
        goto LABEL_246;
      }
    }

    if (++v141 != 5)
    {
      continue;
    }

    break;
  }

  if (v248)
  {
    goto LABEL_247;
  }

LABEL_246:
  *(v140 + 2) = 0;
  *(v140 + 145) = v243;
  *(v140 + 45) = v246;
  memcpy(*(a10 + 408), __src, *(a10 + 416));
  v57 = __dst;
  v139 = v269;
  v166 = *v14;
  v167 = *(v14 + 2);
  v296 = *(v14 + 1);
  v297 = v167;
  v295 = v166;
  v168 = *(v14 + 3);
  v169 = *(v14 + 4);
  v170 = *(v14 + 6);
  v300 = *(v14 + 5);
  v301 = v170;
  v298 = v168;
  v299 = v169;
  v171 = *(v14 + 7);
  v172 = *(v14 + 8);
  v173 = *(v14 + 10);
  v304 = *(v14 + 9);
  v305 = v173;
  v302 = v171;
  v303 = v172;
LABEL_247:
  v138 = v272;
LABEL_248:
  if (!v276)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v19[1320])
  {
    __dsta = *(v11 + 592);
    v174 = block_size_high_15[v57] >> *(v11 + 440);
    v175 = block_size_wide_17[v57] >> *(v11 + 436);
    if (*(v139 + 8) < 1)
    {
      v202 = 0;
      if (!BYTE14(v303))
      {
        goto LABEL_367;
      }

      goto LABEL_317;
    }

    v176 = v138;
    v177 = 0;
    v178 = 0;
    v179 = 0;
    v275 = v176 + 265680;
    v253 = v175;
    v256 = v174;
    v261 = (v175 * v174);
    v258 = v22 + 2108;
    while (2)
    {
      v180 = (*v139 + v177);
      v181 = *v180;
      v182 = v180[2];
      *(v14 + 1) = v180[1];
      *(v14 + 2) = v182;
      *v14 = v181;
      v183 = v180[3];
      v184 = v180[4];
      v185 = v180[6];
      *(v14 + 5) = v180[5];
      *(v14 + 6) = v185;
      *(v14 + 3) = v183;
      *(v14 + 4) = v184;
      v186 = v180[7];
      v187 = v180[8];
      v188 = v180[10];
      *(v14 + 9) = v180[9];
      *(v14 + 10) = v188;
      *(v14 + 7) = v186;
      *(v14 + 8) = v187;
      v189 = v14[2];
      v190 = *(v19 + 334);
      if (v190 == 3)
      {
        if ((v189 > 0x18 || ((1 << v189) & 0x1390000) == 0) && v189 != 22 && v14[144] && *v259 < 128)
        {
          goto LABEL_255;
        }
      }

      else if (v190 != 2)
      {
        if (v190 == 1)
        {
          if (*(v22 + 2156) >= (64 - 48 * *v259 / 256))
          {
            break;
          }

LABEL_255:
          ++v178;
          v177 += 16624;
          if (v178 >= *(v139 + 8))
          {
            v202 = v179;
            v175 = v253;
            v174 = v256;
            if (!BYTE14(v303))
            {
              goto LABEL_367;
            }

LABEL_317:
            memcpy(__dsta, (*v139 + 16624 * v202 + 232), (v175 * v174));
            goto LABEL_367;
          }

          continue;
        }

        if (v190 >= 4 && (*(v19 + 325) < 5 || *v259 >= 71) && v14[144])
        {
          goto LABEL_255;
        }
      }

      break;
    }

    v191 = *(v14 + 167);
    if ((v191 & 0x80) != 0 || v14[16] >= 1)
    {
      if (v189 - 25 >= 0xFFFFFFF4 && *(v19 + 306) != 0x7FFFFFFF && (v13[1773] & 1) == 0)
      {
LABEL_283:
        if (v14[142])
        {
          memcpy(__dsta, (*v139 + v177 + 232), v261);
        }

        v18 = *(v13 + 423) == 1;
        *(v22 + 44) = v18;
        *v22 = -NAN;
        *(v22 + 32) = *(v19 + 15);
        *(v22 + 40) = *(v19 + 18);
        if (v18)
        {
          v192 = 0;
          *(v22 + 28) = 1;
        }

        else if (*(v19 + 329))
        {
          *(v22 + 28) = *(v19 + 9);
          v192 = *(v19 + 12);
        }

        else
        {
          *(v22 + 28) = *(v19 + 7);
          v192 = *(v19 + 10);
        }

        *(v22 + 20) = v192;
        v193 = *(v19 + 326);
        v194 = v193 == 0;
        if (v193)
        {
          v195 = v19 + 16;
        }

        else
        {
          v195 = v19;
        }

        v196 = 388308;
        if (v194)
        {
          v196 = 388292;
        }

        *(v22 + 12) = *v195;
        *(v22 + 16) = *(v272 + v196);
        v197 = *(v19 + 327);
        v198 = v19[24];
        *(v22 + 24) = v198;
        if (v197)
        {
          v198 = v19[26];
          *(v22 + 24) = v198;
        }

        if (v198 == 2)
        {
          v199 = 1;
        }

        else
        {
          v199 = 2;
        }

        if (v270[499])
        {
          v199 = 0;
        }

        *(v22 + 36) = v199;
        v200 = *(v19 + 313);
        *(v22 + 8) = v19[1216];
        if (v200)
        {
          *(v22 + 8) = dword_273BF2244[2 * v200 - 1];
        }

        if (*(v22 + 48) != 2 && *v258)
        {
          *(*v258 + 16960) = 0;
        }

        *(v22 + 48) = 2;
        if (intra_block_yrd(v272, v11, v271, v268, &v277, a3, a4, a5, a6, &v295, a10))
        {
          v179 = v178;
        }

        v139 = v269;
        goto LABEL_255;
      }
    }

    else if (*(v19 + 305) && (v13[1774] & 1) == 0 && v13[1772] != 1)
    {
      goto LABEL_283;
    }

    if ((!*(v19 + 326) || (*(v275 + (v191 & 7)) | 2) == 2) && !*(v19 + 327))
    {
      goto LABEL_255;
    }

    goto LABEL_283;
  }

  v203 = v14[2];
  v204 = *(v19 + 334);
  switch(v204)
  {
    case 3:
      if (v203 <= 0x18 && ((1 << v203) & 0x1390000) != 0 || v203 == 22 || !v14[144] || *v259 >= 128)
      {
        goto LABEL_330;
      }

      break;
    case 2:
      goto LABEL_330;
    case 1:
      if (*(v22 + 2156) < (64 - 48 * *v259 / 256))
      {
        break;
      }

LABEL_330:
      v205 = *(v14 + 167);
      if ((v205 & 0x80) != 0 || v14[16] >= 1)
      {
        if (v203 - 25 >= 0xFFFFFFF4 && *(v19 + 306) != 0x7FFFFFFF && (v13[1773] & 1) == 0)
        {
          goto LABEL_342;
        }

LABEL_339:
        if (*(v19 + 326) && (*(v138 + (v205 & 7) + 265680) | 2) != 2 || *(v19 + 327))
        {
          goto LABEL_342;
        }
      }

      else
      {
        if (!*(v19 + 305) || (v13[1774] & 1) != 0 || v13[1772] == 1)
        {
          goto LABEL_339;
        }

LABEL_342:
        v18 = *(v13 + 423) == 1;
        *(v22 + 44) = v18;
        *v22 = -NAN;
        *(v22 + 32) = *(v19 + 15);
        *(v22 + 40) = *(v19 + 18);
        if (v18)
        {
          *(v22 + 28) = 1;
          *(v22 + 20) = 0;
        }

        else
        {
          if (*(v19 + 329))
          {
            *(v22 + 28) = *(v19 + 9);
            v206 = *(v19 + 12);
          }

          else
          {
            *(v22 + 28) = *(v19 + 7);
            v206 = *(v19 + 10);
          }

          *(v22 + 20) = v206;
        }

        v207 = *(v19 + 326);
        v208 = v207 == 0;
        if (v207)
        {
          v209 = v19 + 16;
        }

        else
        {
          v209 = v19;
        }

        v210 = 388308;
        if (v208)
        {
          v210 = 388292;
        }

        *(v22 + 12) = *v209;
        *(v22 + 16) = *(v138 + v210);
        v211 = *(v19 + 327);
        v212 = v19[24];
        *(v22 + 24) = v212;
        if (v211)
        {
          v212 = v19[26];
          *(v22 + 24) = v212;
        }

        if (v212 == 2)
        {
          v213 = 1;
        }

        else
        {
          v213 = 2;
        }

        if (v270[499])
        {
          v213 = 0;
        }

        *(v22 + 36) = v213;
        v214 = *(v19 + 313);
        *(v22 + 8) = v19[1216];
        if (v214)
        {
          *(v22 + 8) = dword_273BF2244[2 * v214 - 1];
        }

        if (*(v22 + 48) != 2)
        {
          v215 = *(v22 + 2108);
          if (v215)
          {
            *(v215 + 16960) = 0;
          }
        }

        *(v22 + 48) = 2;
        v216 = v295;
        v217 = v297;
        *(v14 + 1) = v296;
        *(v14 + 2) = v217;
        *v14 = v216;
        v218 = v298;
        v219 = v299;
        v220 = v301;
        *(v14 + 5) = v300;
        *(v14 + 6) = v220;
        *(v14 + 3) = v218;
        *(v14 + 4) = v219;
        v221 = v302;
        v222 = v303;
        v223 = v305;
        *(v14 + 9) = v304;
        *(v14 + 10) = v223;
        *(v14 + 7) = v221;
        *(v14 + 8) = v222;
        intra_block_yrd(v138, v11, v137, v268, &v277, a3, a4, a5, a6, &v295, a10);
      }

      break;
    default:
      if (v204 < 4 || *(v19 + 325) >= 5 && *v259 < 71 || !v14[144])
      {
        goto LABEL_330;
      }

      break;
  }

LABEL_367:
  v224 = v295;
  v225 = v297;
  *(v14 + 1) = v296;
  *(v14 + 2) = v225;
  *v14 = v224;
  v226 = v298;
  v227 = v299;
  v228 = v301;
  *(v14 + 5) = v300;
  *(v14 + 6) = v228;
  *(v14 + 3) = v226;
  *(v14 + 4) = v227;
  v229 = v302;
  v230 = v303;
  v231 = v305;
  *(v14 + 9) = v304;
  *(v14 + 10) = v231;
  *(v14 + 7) = v229;
  *(v14 + 8) = v230;
  memcpy(*(v11 + 8328), *(a10 + 408), *(a10 + 416));
  return v277;
}

void intra_rd_variance_factor(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 265568) * -0.25 + 1.0;
  if (v3 > 0.0)
  {
    v5 = 4 * mi_size_wide_17[a3] - ((*(a2 + 8344) >> 31) & (-*(a2 + 8344) >> 3));
    v6 = 0.0;
    v20 = 4 * mi_size_high_14[a3] - ((*(a2 + 8352) >> 31) & (-*(a2 + 8352) >> 3));
    v7 = 0.0;
    if (v20 >= 1 && v5 >= 1)
    {
      v9 = 0;
      v10 = *(*(a1 + 263736) + 28);
      v19 = mi_size_wide_17[v10];
      v11 = ((v19 - 1) & *(a2 + 420)) + ((mi_size_high_14[v10] - 1) & *(a2 + 416)) * v19;
      do
      {
        v12 = 0;
        v21 = v11;
        do
        {
          v17 = *(a2 + 146648) + 16 * v11;
          v18 = *(v17 + 8);
          if ((v18 & 0x80000000) != 0)
          {
            v13 = (*(*a1 + 51416))(*(a2 + 48) + *(a2 + 72) * v9 + v12);
            *(v17 + 8) = v13;
            v14 = v13;
LABEL_8:
            v15 = log1p(v14 * 0.0625);
            *v17 = v15;
            goto LABEL_9;
          }

          v15 = *v17;
          if (*v17 < 0.0)
          {
            v14 = v18;
            goto LABEL_8;
          }

LABEL_9:
          v6 = v6 + v15;
          v16 = (*(*a1 + 51416))(*(a2 + 448) + *(a2 + 472) * v9 + v12);
          v7 = v7 + log1p(vcvtd_n_f64_s32(v16, 4uLL));
          v12 += 4;
          ++v11;
        }

        while (v12 < v5);
        v9 += 4;
        v11 = v21 + v19;
      }

      while (v9 < v20);
    }
  }
}

uint64_t intra_block_yrd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t *a5, _DWORD *a6, _DWORD *a7, void *a8, _BYTE *a9, _OWORD *a10, uint64_t a11)
{
  v16 = a3;
  if (*(a1 + 389565) == 1)
  {
    v19 = *a5;
  }

  else
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v20 = **(a2 + 8280);
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  av1_pick_uniform_tx_size_type_yrd(a1, a2, v49, a3, v19);
  v21 = v49[0];
  if (LODWORD(v49[0]) == 0x7FFFFFFF)
  {
    return 0;
  }

  v48 = a8;
  if (*(a2 + 4 * (*(v20 + 167) & 7) + 11108))
  {
    v22 = v49[0];
  }

  else
  {
    v22 = v49[0];
    if (*v20)
    {
      v23 = 0;
      if (v16 && *(a2 + 144464) == 2)
      {
        v24 = *(v20 + 145);
        v25 = max_txsize_rect_lookup_5[v16];
        if (v25 == v24)
        {
          v26 = 0;
        }

        else
        {
          v26 = 0;
          do
          {
            v25 = sub_tx_size_map_2[v25];
            ++v26;
          }

          while (v25 != v24);
        }

        v27 = max_txsize_rect_lookup_5[***(a2 + 8280)];
        v28 = *(a2 + 8288);
        v29 = *(a2 + 8289);
        v30 = **(a2 + 8544);
        v31 = **(a2 + 8552);
        if (v28 == 1)
        {
          v32 = *(a2 + 8304);
          if ((*(v32 + 167) & 0x80) != 0 || v32[16] >= 1)
          {
            v30 = block_size_wide_17[*v32];
          }
        }

        v33 = tx_size_wide_12[v27];
        v34 = tx_size_high_11[v27];
        if (*(a2 + 8289))
        {
          v35 = *(a2 + 8296);
          if ((*(v35 + 167) & 0x80) != 0 || v35[16] >= 1)
          {
            v31 = block_size_high_15[*v35];
          }
        }

        if (v34 > v31)
        {
          v29 = 0;
        }

        if (v33 > v30)
        {
          v28 = 0;
        }

        v23 = *(a2 + 60 * (bsize_to_tx_size_cat_bsize_to_tx_size_depth_table_1[v16] - 1) + 20 * (v29 + v28) + 4 * v26 + 35992);
      }

      v22 = LODWORD(v49[0]) - v23;
    }
  }

  v36 = intra_mode_info_cost_y(a1, a2, v20, v16, *(a4 + 4 * *(v20 + 2))) + v21;
  v37 = *(&v49[0] + 1);
  v38 = ((*(a2 + 16920) * v36 + 256) >> 9) + (*(&v49[0] + 1) << 7);
  if (v38 >= *a5)
  {
    return 0;
  }

  v39 = *v20;
  v40 = v20[2];
  a10[1] = v20[1];
  a10[2] = v40;
  *a10 = v39;
  v41 = v20[3];
  v42 = v20[4];
  v43 = v20[6];
  a10[5] = v20[5];
  a10[6] = v43;
  a10[3] = v41;
  a10[4] = v42;
  v44 = v20[7];
  v45 = v20[8];
  v46 = v20[10];
  a10[9] = v20[9];
  a10[10] = v46;
  a10[7] = v44;
  a10[8] = v45;
  *a5 = v38;
  *a6 = v36;
  *a7 = v22;
  *v48 = v37;
  *a9 = v50;
  memcpy(*(a11 + 280), (a2 + 144481), *(a11 + 416));
  memcpy(*(a11 + 408), *(a2 + 8328), *(a11 + 416));
  return 1;
}

uint64_t cfl_pick_plane_parameter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int32x4_t a6, int32x4_t a7, int32x4_t a8, int32x4_t a9, int32x4_t a10, int32x4_t a11, int32x4_t a12)
{
  if (a5 == 33)
  {
    return 16;
  }

  v13 = **(a2 + 8280);
  v14 = av1_ss_size_lookup[4 * *v13 + 2 * *(a2 + 2608 * a3 + 436) + *(a2 + 2608 * a3 + 440)];
  v15 = *(v13 + 46);
  v13[92] = 2 * (a3 != 1);
  v13[93] = 0;
  if (a3 == 1)
  {
    v20 = 6;
  }

  else
  {
    v20 = 4;
  }

  v21 = intra_model_rd(a1 + 239056, a2, a3, v14, a4, 0, a6, a7, a8, a9, a10, a11, a12);
  *(v13 + 46) = v15;
  v22 = **(a2 + 8280);
  v23 = *(v22 + 92);
  v251 = v20;
  *(v22 + 92) = v20;
  *(v22 + 93) = 0;
  v253 = a1;
  v24 = a1 + 239056;
  v25 = a4;
  v26 = a3;
  v27 = a3;
  v28 = v14;
  v36 = intra_model_rd(v24, a2, v27, v14, a4, 0, v29, v30, v31, v32, v33, v34, v35);
  *(v22 + 92) = v23;
  if (v36 >= v21)
  {
    v252 = v21;
    v12 = 16;
  }

  else
  {
    v44 = v36;
    v45 = **(a2 + 8280);
    v46 = *(v45 + 92);
    *(v45 + 92) = v251;
    v12 = 17;
    *(v45 + 93) = 17;
    v47 = intra_model_rd(v253 + 239056, a2, v26, v14, a4, 0, v37, v38, v39, v40, v41, v42, v43);
    *(v45 + 92) = v46;
    if (v47 >= v44)
    {
LABEL_30:
      v252 = v44;
      goto LABEL_31;
    }

    v48 = *(a2 + 8280);
    v252 = v47;
    v49 = *v48;
    v50 = *(*v48 + 92);
    *(v49 + 92) = v251;
    *(v49 + 93) = 34;
    v51 = intra_model_rd(v253 + 239056, a2, v26, v14, a4, 0, v37, v38, v39, v40, v41, v42, v43);
    *(v49 + 92) = v50;
    if (v51 < v252)
    {
      v44 = v51;
      v52 = **(a2 + 8280);
      v53 = *(v52 + 92);
      *(v52 + 92) = v251;
      *(v52 + 93) = 51;
      v54 = intra_model_rd(v253 + 239056, a2, v26, v14, a4, 0, v37, v38, v39, v40, v41, v42, v43);
      *(v52 + 92) = v53;
      if (v54 < v44)
      {
        v55 = *(a2 + 8280);
        v252 = v54;
        v56 = *v55;
        v57 = *(*v55 + 92);
        *(v56 + 92) = v251;
        *(v56 + 93) = 68;
        v58 = v253;
        v59 = intra_model_rd(v253 + 239056, a2, v26, v14, v25, 0, v37, v38, v39, v40, v41, v42, v43);
        *(v56 + 92) = v57;
        v60 = v26;
        if (v59 >= v252)
        {
          v12 = 20;
        }

        else
        {
          v61 = v59;
          v62 = cfl_compute_rd(v253, a2, v26, v25, v28, 22, 1, 0, v37, v38, v39, v40, v41, v42, v43);
          if (v62 >= v61)
          {
            v12 = 21;
            v252 = v61;
          }

          else
          {
            v63 = v62;
            v64 = cfl_compute_rd(v253, a2, v26, v25, v28, 23, 1, 0, v37, v38, v39, v40, v41, v42, v43);
            if (v64 >= v63)
            {
              v252 = v63;
              v12 = 22;
            }

            else
            {
              v65 = v64;
              v66 = cfl_compute_rd(v253, a2, v26, v25, v28, 24, 1, 0, v37, v38, v39, v40, v41, v42, v43);
              if (v66 >= v65)
              {
                v12 = 23;
                v252 = v65;
              }

              else
              {
                v67 = v66;
                v68 = cfl_compute_rd(v253, a2, v26, v25, v28, 25, 1, 0, v37, v38, v39, v40, v41, v42, v43);
                if (v68 >= v67)
                {
                  v252 = v67;
                  v12 = 24;
                }

                else
                {
                  v69 = v68;
                  v70 = cfl_compute_rd(v253, a2, v26, v25, v28, 26, 1, 0, v37, v38, v39, v40, v41, v42, v43);
                  if (v70 >= v69)
                  {
                    v12 = 25;
                    v252 = v69;
                  }

                  else
                  {
                    v71 = v70;
                    v72 = cfl_compute_rd(v253, a2, v26, v25, v28, 27, 1, 0, v37, v38, v39, v40, v41, v42, v43);
                    if (v72 >= v71)
                    {
                      v252 = v71;
                      v12 = 26;
                    }

                    else
                    {
                      v73 = v72;
                      v74 = cfl_compute_rd(v253, a2, v26, v25, v28, 28, 1, 0, v37, v38, v39, v40, v41, v42, v43);
                      if (v74 >= v73)
                      {
                        v12 = 27;
                        v252 = v73;
                      }

                      else
                      {
                        v75 = v74;
                        v76 = cfl_compute_rd(v253, a2, v26, v25, v28, 29, 1, 0, v37, v38, v39, v40, v41, v42, v43);
                        v252 = v75;
                        if (v76 >= v75)
                        {
                          v12 = 28;
                        }

                        else
                        {
                          v77 = v76;
                          v252 = cfl_compute_rd(v253, a2, v26, v25, v28, 30, 1, 0, v37, v38, v39, v40, v41, v42, v43);
                          if (v252 >= v77)
                          {
                            v12 = 29;
                            v252 = v77;
                          }

                          else
                          {
                            v78 = cfl_compute_rd(v253, a2, v26, v25, v28, 31, 1, 0, v37, v38, v39, v40, v41, v42, v43);
                            if (v78 >= v252)
                            {
                              v12 = 30;
                              v58 = v253;
                              v60 = v26;
                            }

                            else
                            {
                              v79 = v78;
                              v60 = v26;
                              v58 = v253;
                              v80 = cfl_compute_rd(v253, a2, v26, v25, v28, 32, 1, 0, v37, v38, v39, v40, v41, v42, v43);
                              if (v80 >= v79)
                              {
                                v81 = v79;
                              }

                              else
                              {
                                v81 = v80;
                              }

                              v252 = v81;
                              if (v80 >= v79)
                              {
                                v12 = 31;
                              }

                              else
                              {
                                v12 = 32;
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

        goto LABEL_32;
      }

      v12 = 19;
      goto LABEL_30;
    }

    v12 = 18;
  }

LABEL_31:
  v58 = v253;
  v60 = v26;
LABEL_32:
  v82 = **(a2 + 8280);
  v83 = *(v82 + 92);
  *(v82 + 92) = 3;
  v84 = intra_model_rd(v58 + 239056, a2, v60, v28, v25, 0, v37, v38, v39, v40, v41, v42, v43);
  *(v82 + 92) = v83;
  if (v84 < v252)
  {
    v92 = v84;
    v93 = **(a2 + 8280);
    v94 = *(v93 + 92);
    *(v93 + 92) = 4355;
    v95 = intra_model_rd(v58 + 239056, a2, v60, v28, v25, 0, v85, v86, v87, v88, v89, v90, v91);
    *(v93 + 92) = v94;
    if (v95 >= v92)
    {
      return 15;
    }

    else
    {
      v103 = v95;
      v104 = **(a2 + 8280);
      v105 = *(v104 + 92);
      *(v104 + 92) = 8707;
      v106 = intra_model_rd(v58 + 239056, a2, v60, v28, v25, 0, v96, v97, v98, v99, v100, v101, v102);
      *(v104 + 92) = v105;
      if (v106 >= v103)
      {
        return 14;
      }

      else
      {
        v114 = v106;
        v115 = **(a2 + 8280);
        v116 = *(v115 + 92);
        *(v115 + 92) = 13059;
        v117 = intra_model_rd(v58 + 239056, a2, v60, v28, v25, 0, v107, v108, v109, v110, v111, v112, v113);
        *(v115 + 92) = v116;
        if (v117 >= v114)
        {
          return 13;
        }

        else
        {
          v125 = v117;
          v126 = **(a2 + 8280);
          v127 = *(v126 + 92);
          *(v126 + 92) = 17411;
          v128 = intra_model_rd(v58 + 239056, a2, v60, v28, v25, 0, v118, v119, v120, v121, v122, v123, v124);
          *(v126 + 92) = v127;
          if (v128 >= v125)
          {
            return 12;
          }

          else
          {
            v136 = v128;
            v137 = **(a2 + 8280);
            v138 = *(v137 + 92);
            *(v137 + 92) = 21763;
            v139 = intra_model_rd(v58 + 239056, a2, v60, v28, v25, 0, v129, v130, v131, v132, v133, v134, v135);
            *(v137 + 92) = v138;
            if (v139 >= v136)
            {
              return 11;
            }

            else
            {
              v147 = v139;
              v148 = **(a2 + 8280);
              v149 = *(v148 + 92);
              *(v148 + 92) = 26115;
              v150 = intra_model_rd(v58 + 239056, a2, v60, v28, v25, 0, v140, v141, v142, v143, v144, v145, v146);
              *(v148 + 92) = v149;
              if (v150 >= v147)
              {
                return 10;
              }

              else
              {
                v158 = v150;
                v159 = **(a2 + 8280);
                v160 = *(v159 + 92);
                *(v159 + 92) = 30467;
                v161 = intra_model_rd(v58 + 239056, a2, v60, v28, v25, 0, v151, v152, v153, v154, v155, v156, v157);
                *(v159 + 92) = v160;
                if (v161 >= v158)
                {
                  return 9;
                }

                else
                {
                  v169 = v161;
                  v170 = **(a2 + 8280);
                  v171 = *(v170 + 92);
                  *(v170 + 92) = -30717;
                  v172 = intra_model_rd(v58 + 239056, a2, v60, v28, v25, 0, v162, v163, v164, v165, v166, v167, v168);
                  *(v170 + 92) = v171;
                  if (v172 >= v169)
                  {
                    return 8;
                  }

                  else
                  {
                    v180 = v172;
                    v181 = **(a2 + 8280);
                    v182 = *(v181 + 92);
                    *(v181 + 92) = -26365;
                    v183 = intra_model_rd(v58 + 239056, a2, v60, v28, v25, 0, v173, v174, v175, v176, v177, v178, v179);
                    *(v181 + 92) = v182;
                    if (v183 >= v180)
                    {
                      return 7;
                    }

                    else
                    {
                      v191 = v183;
                      v192 = **(a2 + 8280);
                      v193 = *(v192 + 92);
                      *(v192 + 92) = -22013;
                      v194 = intra_model_rd(v58 + 239056, a2, v60, v28, v25, 0, v184, v185, v186, v187, v188, v189, v190);
                      *(v192 + 92) = v193;
                      if (v194 >= v191)
                      {
                        return 6;
                      }

                      else
                      {
                        v202 = v194;
                        v203 = **(a2 + 8280);
                        v204 = *(v203 + 92);
                        *(v203 + 92) = -17661;
                        v205 = intra_model_rd(v58 + 239056, a2, v60, v28, v25, 0, v195, v196, v197, v198, v199, v200, v201);
                        *(v203 + 92) = v204;
                        if (v205 >= v202)
                        {
                          return 5;
                        }

                        else
                        {
                          v213 = v205;
                          v214 = **(a2 + 8280);
                          v215 = *(v214 + 92);
                          *(v214 + 92) = -13309;
                          v216 = intra_model_rd(v58 + 239056, a2, v60, v28, v25, 0, v206, v207, v208, v209, v210, v211, v212);
                          *(v214 + 92) = v215;
                          if (v216 >= v213)
                          {
                            return 4;
                          }

                          else
                          {
                            v224 = v216;
                            v225 = **(a2 + 8280);
                            v226 = *(v225 + 92);
                            *(v225 + 92) = -8957;
                            v227 = intra_model_rd(v58 + 239056, a2, v60, v28, v25, 0, v217, v218, v219, v220, v221, v222, v223);
                            *(v225 + 92) = v226;
                            if (v227 >= v224)
                            {
                              return 3;
                            }

                            else
                            {
                              v235 = v227;
                              v236 = **(a2 + 8280);
                              v237 = *(v236 + 92);
                              *(v236 + 92) = -4605;
                              v238 = intra_model_rd(v253 + 239056, a2, v60, v28, v25, 0, v228, v229, v230, v231, v232, v233, v234);
                              *(v236 + 92) = v237;
                              if (v238 >= v235)
                              {
                                return 2;
                              }

                              else
                              {
                                v246 = v238;
                                v247 = **(a2 + 8280);
                                v248 = *(v247 + 92);
                                *(v247 + 92) = -253;
                                v249 = intra_model_rd(v253 + 239056, a2, v60, v28, v25, 0, v239, v240, v241, v242, v243, v244, v245);
                                *(v247 + 92) = v248;
                                return v249 >= v246;
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

  return v12;
}

uint64_t cfl_pick_plane_rd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unsigned int a7, double a8, int32x4_t a9, int32x4_t a10, int32x4_t a11, int32x4_t a12, int32x4_t a13, int32x4_t a14)
{
  v21 = av1_ss_size_lookup[4 * ***(a2 + 8280) + 2 * *(a2 + 2608 * a3 + 436) + *(a2 + 2608 * a3 + 440)];
  *a6 = 0x7FFFFFFFLL;
  v22.f64[0] = NAN;
  v22.f64[1] = NAN;
  v23 = vnegq_f64(v22);
  *(a6 + 8) = v23;
  *(a6 + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 32) = 0;
  *(a6 + 40) = 0x7FFFFFFFLL;
  *(a6 + 48) = v23;
  *(a6 + 64) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 72) = 0;
  *(a6 + 88) = v23;
  *(a6 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 112) = 0;
  *(a6 + 80) = 0x7FFFFFFFLL;
  *(a6 + 120) = 0x7FFFFFFFLL;
  *(a6 + 128) = v23;
  *(a6 + 144) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 152) = 0;
  *(a6 + 160) = 0x7FFFFFFFLL;
  *(a6 + 168) = v23;
  *(a6 + 184) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 192) = 0;
  *(a6 + 200) = 0x7FFFFFFFLL;
  *(a6 + 208) = v23;
  *(a6 + 224) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 232) = 0;
  *(a6 + 248) = v23;
  *(a6 + 264) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 272) = 0;
  *(a6 + 240) = 0x7FFFFFFFLL;
  *(a6 + 280) = 0x7FFFFFFFLL;
  *(a6 + 288) = v23;
  *(a6 + 304) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 312) = 0;
  *(a6 + 320) = 0x7FFFFFFFLL;
  *(a6 + 328) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 336) = v23;
  *(a6 + 352) = 0;
  *(a6 + 360) = 0x7FFFFFFFLL;
  *(a6 + 368) = v23;
  *(a6 + 384) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 392) = 0;
  *(a6 + 400) = 0x7FFFFFFFLL;
  *(a6 + 408) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 416) = v23;
  *(a6 + 432) = 0;
  *(a6 + 440) = 0x7FFFFFFF;
  *(a6 + 448) = v23;
  *(a6 + 464) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 472) = 0;
  *(a6 + 444) = 0;
  *(a6 + 480) = 0x7FFFFFFF;
  *(a6 + 488) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 496) = v23;
  *(a6 + 512) = 0;
  *(a6 + 484) = 0;
  *(a6 + 520) = 0x7FFFFFFF;
  *(a6 + 528) = v23;
  *(a6 + 544) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 552) = 0;
  *(a6 + 524) = 0;
  *(a6 + 560) = 0x7FFFFFFF;
  *(a6 + 568) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 576) = v23;
  *(a6 + 592) = 0;
  *(a6 + 564) = 0;
  *(a6 + 600) = 0x7FFFFFFF;
  *(a6 + 608) = v23;
  *(a6 + 624) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 632) = 0;
  *(a6 + 604) = 0;
  *(a6 + 640) = 0x7FFFFFFF;
  *(a6 + 648) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 656) = v23;
  *(a6 + 672) = 0;
  *(a6 + 644) = 0;
  *(a6 + 680) = 0x7FFFFFFF;
  *(a6 + 688) = v23;
  *(a6 + 704) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 712) = 0;
  *(a6 + 684) = 0;
  *(a6 + 720) = 0x7FFFFFFF;
  *(a6 + 728) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 736) = v23;
  *(a6 + 752) = 0;
  *(a6 + 724) = 0;
  *(a6 + 760) = 0x7FFFFFFF;
  *(a6 + 768) = v23;
  *(a6 + 784) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 792) = 0;
  *(a6 + 764) = 0;
  *(a6 + 800) = 0x7FFFFFFF;
  *(a6 + 808) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 816) = v23;
  *(a6 + 832) = 0;
  *(a6 + 804) = 0;
  *(a6 + 840) = 0x7FFFFFFF;
  *(a6 + 848) = v23;
  *(a6 + 864) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 872) = 0;
  *(a6 + 844) = 0;
  *(a6 + 880) = 0x7FFFFFFF;
  *(a6 + 888) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 896) = v23;
  *(a6 + 912) = 0;
  *(a6 + 884) = 0;
  *(a6 + 920) = 0x7FFFFFFF;
  *(a6 + 928) = v23;
  *(a6 + 944) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 952) = 0;
  *(a6 + 924) = 0;
  *(a6 + 960) = 0x7FFFFFFF;
  *(a6 + 968) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 976) = v23;
  *(a6 + 992) = 0;
  *(a6 + 964) = 0;
  *(a6 + 1000) = 0x7FFFFFFF;
  *(a6 + 1008) = v23;
  *(a6 + 1024) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 1032) = 0;
  *(a6 + 1004) = 0;
  *(a6 + 1040) = 0x7FFFFFFF;
  *(a6 + 1048) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 1056) = v23;
  *(a6 + 1072) = 0;
  *(a6 + 1044) = 0;
  *(a6 + 1080) = 0x7FFFFFFF;
  *(a6 + 1088) = v23;
  *(a6 + 1104) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 1112) = 0;
  *(a6 + 1084) = 0;
  *(a6 + 1120) = 0x7FFFFFFF;
  *(a6 + 1128) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 1136) = v23;
  *(a6 + 1152) = 0;
  *(a6 + 1124) = 0;
  *(a6 + 1160) = 0x7FFFFFFF;
  *(a6 + 1168) = v23;
  *(a6 + 1184) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 1192) = 0;
  *(a6 + 1164) = 0;
  *(a6 + 1200) = 0x7FFFFFFF;
  *(a6 + 1208) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 1216) = v23;
  *(a6 + 1232) = 0;
  *(a6 + 1204) = 0;
  *(a6 + 1240) = 0x7FFFFFFF;
  *(a6 + 1248) = v23;
  *(a6 + 1264) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 1272) = 0;
  *(a6 + 1244) = 0;
  *(a6 + 1280) = 0x7FFFFFFF;
  *(a6 + 1288) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 1296) = v23;
  *(a6 + 1312) = 0;
  *(a6 + 1284) = 0;
  result = cfl_compute_rd(a1, a2, a3, a4, v21, a7, 0, (a6 + 40 * a7), v23, a9, a10, a11, a12, a13, a14);
  if (a5 >= 2)
  {
    v32 = a5 - 1;
    v33 = a7 + 1;
    v38 = a7;
    v34 = (a6 + 40 * a7 + 40);
    v35 = v32;
    do
    {
      if (v33 >= 0x21)
      {
        break;
      }

      result = cfl_compute_rd(a1, a2, a3, a4, v21, v33++, 0, v34, v25, v26, v27, v28, v29, v30, v31);
      v34 += 10;
      --v35;
    }

    while (v35);
    v36 = (a6 + 40 * v38 - 40);
    v37 = v38 - 1;
    do
    {
      if (v37 > 0x20)
      {
        break;
      }

      result = cfl_compute_rd(a1, a2, a3, a4, v21, v37--, 0, v36, v25, v26, v27, v28, v29, v30, v31);
      v36 -= 10;
      --v32;
    }

    while (v32);
  }

  return result;
}

uint64_t cfl_compute_rd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, unsigned int *a8, int32x4_t a9, int32x4_t a10, int32x4_t a11, int32x4_t a12, int32x4_t a13, int32x4_t a14, int32x4_t a15)
{
  v16 = **(a2 + 8280);
  v17 = a6 - 16;
  if (a6 == 16)
  {
    v18 = 0;
  }

  else
  {
    if (a6 <= 16)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0)
    {
      LOBYTE(v17) = 16 - a6;
    }

    LOBYTE(v17) = 17 * v17 - 17;
  }

  v19 = *(v16 + 92);
  v20 = *(v16 + 93);
  v21 = 3 * v18;
  v22 = v18 + 2;
  if (a3 == 1)
  {
    v22 = v21;
  }

  *(v16 + 92) = v22;
  *(v16 + 93) = v17;
  if (a7)
  {
    result = intra_model_rd(a1 + 239056, a2, a3, a5, a4, 0, a9, a10, a11, a12, a13, a14, a15);
  }

  else
  {
    *a8 = 0;
    *(a8 + 1) = 0;
    v24 = (a8 + 2);
    *(a8 + 2) = 0;
    *(a8 + 3) = 0;
    *(a8 + 32) = 1;
    av1_txfm_rd_in_plane(a2, a1, a8, 0x7FFFFFFFFFFFFFFFLL, 0, a3, a5, a4, 0, 0);
    result = 0x7FFFFFFFFFFFFFFFLL;
    v26 = *a8;
    if (v26 == 0x7FFFFFFF || (v27 = *v24, *v24 == 0x7FFFFFFFFFFFFFFFLL) || *(a8 + 2) == 0x7FFFFFFFFFFFFFFFLL)
    {
      *a8 = 0x7FFFFFFFLL;
      v28.f64[0] = NAN;
      v28.f64[1] = NAN;
      *(a8 + 2) = vnegq_f64(v28);
      *(a8 + 3) = 0x7FFFFFFFFFFFFFFFLL;
      *(a8 + 32) = 0;
    }

    else
    {
      v29 = *(a2 + 16920);
      if ((v26 & 0x80000000) != 0)
      {
        result = (v27 << 7) - ((-v26 * v29 + 256) >> 9);
      }

      else
      {
        result = (v27 << 7) + ((v26 * v29 + 256) >> 9);
      }

      *(a8 + 2) = result;
    }
  }

  *(v16 + 92) = v19;
  *(v16 + 93) = v20;
  return result;
}

double aom_dc_predictor_4x4_neon(_DWORD *a1, uint64_t a2, unsigned __int32 *a3, __int32 *a4, int16x8_t a5, uint8x8_t a6)
{
  a5.i32[0] = *a3;
  *a5.i8 = vpaddl_u8(*a5.i8);
  a6.i32[0] = *a4;
  v6 = vpaddl_u8(a6);
  *a5.i8 = vadd_s16(vpadd_s16(v6, v6), vpadd_s16(*a5.i8, *a5.i8));
  *a5.i8 = vdup_lane_s8(vrshrn_n_s16(a5, 3uLL), 0);
  *a1 = a5.i32[0];
  *(a1 + a2) = a5.i32[0];
  *(a1 + 2 * a2) = a5.i32[0];
  *(a1 + 3 * a2) = a5.i32[0];
  return *a5.i64;
}

double aom_dc_left_predictor_4x4_neon(_DWORD *a1, uint64_t a2, int16x8_t a3, uint64_t a4, unsigned __int32 *a5)
{
  a3.i32[0] = *a5;
  *a3.i8 = vpaddl_u8(*a3.i8);
  *a3.i8 = vpadd_s16(*a3.i8, *a3.i8);
  *a3.i8 = vdup_lane_s8(vrshrn_n_s16(a3, 2uLL), 0);
  *a1 = a3.i32[0];
  *(a1 + a2) = a3.i32[0];
  *(a1 + 2 * a2) = a3.i32[0];
  *(a1 + 3 * a2) = a3.i32[0];
  return *a3.i64;
}

double aom_dc_top_predictor_4x4_neon(_DWORD *a1, uint64_t a2, unsigned __int32 *a3, int16x8_t a4)
{
  a4.i32[0] = *a3;
  *a4.i8 = vpaddl_u8(*a4.i8);
  *a4.i8 = vpadd_s16(*a4.i8, *a4.i8);
  *a4.i8 = vdup_lane_s8(vrshrn_n_s16(a4, 2uLL), 0);
  *a1 = a4.i32[0];
  *(a1 + a2) = a4.i32[0];
  *(a1 + 2 * a2) = a4.i32[0];
  *(a1 + 3 * a2) = a4.i32[0];
  return *a4.i64;
}

_DWORD *aom_dc_128_predictor_4x4_neon(_DWORD *result, uint64_t a2)
{
  *result = -2139062144;
  *(result + a2) = -2139062144;
  *(result + 2 * a2) = -2139062144;
  *(result + 3 * a2) = -2139062144;
  return result;
}

int8x8_t aom_dc_predictor_8x8_neon(int8x8_t *a1, uint64_t a2, uint8x8_t *a3, uint8x8_t *a4)
{
  v4 = vaddl_u8(*a4, *a3);
  v5 = vpaddq_s16(v4, v4);
  v6 = vpaddq_s16(v5, v5);
  result = vdup_lane_s8(vrshrn_n_s16(vpaddq_s16(v6, v6), 4uLL), 0);
  *a1 = result;
  *(a1 + a2) = result;
  *(a1 + 2 * a2) = result;
  *(a1 + 3 * a2) = result;
  *(a1 + 4 * a2) = result;
  *(a1 + 5 * a2) = result;
  *(a1 + 6 * a2) = result;
  *(&a1[a2] - a2) = result;
  return result;
}

double aom_dc_left_predictor_8x8_neon(void *a1, uint64_t a2, int16x8_t a3, uint64_t a4, uint8x8_t *a5)
{
  *a3.i8 = vpaddl_u8(*a5);
  *a3.i8 = vpadd_s16(*a3.i8, *a3.i8);
  *a3.i8 = vpadd_s16(*a3.i8, *a3.i8);
  *a3.i8 = vdup_lane_s8(vrshrn_n_s16(a3, 3uLL), 0);
  *a1 = a3.i64[0];
  *(a1 + a2) = a3.i64[0];
  *(a1 + 2 * a2) = a3.i64[0];
  *(a1 + 3 * a2) = a3.i64[0];
  *(a1 + 4 * a2) = a3.i64[0];
  *(a1 + 5 * a2) = a3.i64[0];
  *(a1 + 6 * a2) = a3.i64[0];
  *(&a1[a2] - a2) = a3.i64[0];
  return *a3.i64;
}

double aom_dc_top_predictor_8x8_neon(void *a1, uint64_t a2, uint8x8_t *a3, int16x8_t a4)
{
  *a4.i8 = vpaddl_u8(*a3);
  *a4.i8 = vpadd_s16(*a4.i8, *a4.i8);
  *a4.i8 = vpadd_s16(*a4.i8, *a4.i8);
  *a4.i8 = vdup_lane_s8(vrshrn_n_s16(a4, 3uLL), 0);
  *a1 = a4.i64[0];
  *(a1 + a2) = a4.i64[0];
  *(a1 + 2 * a2) = a4.i64[0];
  *(a1 + 3 * a2) = a4.i64[0];
  *(a1 + 4 * a2) = a4.i64[0];
  *(a1 + 5 * a2) = a4.i64[0];
  *(a1 + 6 * a2) = a4.i64[0];
  *(&a1[a2] - a2) = a4.i64[0];
  return *a4.i64;
}

double aom_dc_128_predictor_8x8_neon(void *a1, uint64_t a2)
{
  result = -2.93744652e-306;
  *a1 = 0x8080808080808080;
  *(a1 + a2) = 0x8080808080808080;
  *(a1 + 2 * a2) = 0x8080808080808080;
  *(a1 + 3 * a2) = 0x8080808080808080;
  *(a1 + 4 * a2) = 0x8080808080808080;
  *(a1 + 5 * a2) = 0x8080808080808080;
  *(a1 + 6 * a2) = 0x8080808080808080;
  *(&a1[a2] - a2) = 0x8080808080808080;
  return result;
}

int8x16_t aom_dc_predictor_16x16_neon(int8x16_t *a1, uint64_t a2, uint8x16_t *a3, uint8x16_t *a4)
{
  v4 = vpadalq_u8(vpaddlq_u8(*a4), *a3);
  v5 = vpaddq_s16(v4, v4);
  v6 = vpaddq_s16(v5, v5);
  result = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v6, v6), 5uLL), 0);
  *a1 = result;
  *(a1 + a2) = result;
  *(a1 + 2 * a2) = result;
  *(a1 + 3 * a2) = result;
  *(a1 + 4 * a2) = result;
  *(a1 + 5 * a2) = result;
  *(a1 + 6 * a2) = result;
  *(a1 + 7 * a2) = result;
  *(a1 + 8 * a2) = result;
  *(a1 + 9 * a2) = result;
  *(a1 + 10 * a2) = result;
  *(a1 + 11 * a2) = result;
  *(a1 + 12 * a2) = result;
  *(a1 + 13 * a2) = result;
  *(a1 + 14 * a2) = result;
  *(&a1[a2] - a2) = result;
  return result;
}

int8x16_t aom_dc_left_predictor_16x16_neon(int8x16_t *a1, uint64_t a2, uint64_t a3, uint8x16_t *a4)
{
  v4 = vpaddlq_u8(*a4);
  v5 = vpaddq_s16(v4, v4);
  v6 = vpaddq_s16(v5, v5);
  result = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v6, v6), 4uLL), 0);
  *a1 = result;
  *(a1 + a2) = result;
  *(a1 + 2 * a2) = result;
  *(a1 + 3 * a2) = result;
  *(a1 + 4 * a2) = result;
  *(a1 + 5 * a2) = result;
  *(a1 + 6 * a2) = result;
  *(a1 + 7 * a2) = result;
  *(a1 + 8 * a2) = result;
  *(a1 + 9 * a2) = result;
  *(a1 + 10 * a2) = result;
  *(a1 + 11 * a2) = result;
  *(a1 + 12 * a2) = result;
  *(a1 + 13 * a2) = result;
  *(a1 + 14 * a2) = result;
  *(&a1[a2] - a2) = result;
  return result;
}

int8x16_t aom_dc_top_predictor_16x16_neon(int8x16_t *a1, uint64_t a2, uint8x16_t *a3)
{
  v3 = vpaddlq_u8(*a3);
  v4 = vpaddq_s16(v3, v3);
  v5 = vpaddq_s16(v4, v4);
  result = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v5, v5), 4uLL), 0);
  *a1 = result;
  *(a1 + a2) = result;
  *(a1 + 2 * a2) = result;
  *(a1 + 3 * a2) = result;
  *(a1 + 4 * a2) = result;
  *(a1 + 5 * a2) = result;
  *(a1 + 6 * a2) = result;
  *(a1 + 7 * a2) = result;
  *(a1 + 8 * a2) = result;
  *(a1 + 9 * a2) = result;
  *(a1 + 10 * a2) = result;
  *(a1 + 11 * a2) = result;
  *(a1 + 12 * a2) = result;
  *(a1 + 13 * a2) = result;
  *(a1 + 14 * a2) = result;
  *(&a1[a2] - a2) = result;
  return result;
}

__n128 aom_dc_128_predictor_16x16_neon(__n128 *a1, uint64_t a2)
{
  result.n128_u64[0] = 0x8080808080808080;
  result.n128_u64[1] = 0x8080808080808080;
  *a1 = result;
  *(a1 + a2) = result;
  *(a1 + 2 * a2) = result;
  *(a1 + 3 * a2) = result;
  *(a1 + 4 * a2) = result;
  *(a1 + 5 * a2) = result;
  *(a1 + 6 * a2) = result;
  *(a1 + 7 * a2) = result;
  *(a1 + 8 * a2) = result;
  *(a1 + 9 * a2) = result;
  *(a1 + 10 * a2) = result;
  *(a1 + 11 * a2) = result;
  *(a1 + 12 * a2) = result;
  *(a1 + 13 * a2) = result;
  *(a1 + 14 * a2) = result;
  *(&a1[a2] - a2) = result;
  return result;
}

int8x16_t aom_dc_predictor_32x32_neon(int8x16_t *a1, uint64_t a2, uint8x16_t *a3, uint8x16_t *a4)
{
  v4 = vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(a3[1]), *a3), *a4), a4[1]);
  v5 = vpaddq_s16(v4, v4);
  v6 = vpaddq_s16(v5, v5);
  result = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v6, v6), 6uLL), 0);
  *a1 = result;
  a1[1] = result;
  v8 = (a1 + a2);
  *v8 = result;
  v8[1] = result;
  v9 = (a1 + 2 * a2);
  *v9 = result;
  v9[1] = result;
  v10 = (a1 + 2 * a2 + a2);
  *v10 = result;
  v10[1] = result;
  v11 = (a1 + 4 * a2);
  *v11 = result;
  v11[1] = result;
  v12 = (a1 + 4 * a2 + a2);
  *v12 = result;
  v12[1] = result;
  v13 = (a1 + 6 * a2);
  *v13 = result;
  v13[1] = result;
  v14 = (a1 + 7 * a2);
  *v14 = result;
  v14[1] = result;
  v15 = (a1 + 8 * a2);
  *v15 = result;
  v15[1] = result;
  v16 = (a1 + 8 * a2 + a2);
  *v16 = result;
  v16[1] = result;
  v17 = (a1 + 10 * a2);
  *v17 = result;
  v17[1] = result;
  v18 = (a1 + 11 * a2);
  *v18 = result;
  v18[1] = result;
  v19 = (a1 + 12 * a2);
  *v19 = result;
  v19[1] = result;
  v20 = (a1 + 13 * a2);
  *v20 = result;
  v20[1] = result;
  v21 = (a1 + 14 * a2);
  *v21 = result;
  v21[1] = result;
  v22 = (a1 + 15 * a2);
  *v22 = result;
  v22[1] = result;
  v23 = &a1[a2];
  *v23 = result;
  v23[1] = result;
  v24 = (&a1[a2] + a2);
  *v24 = result;
  v24[1] = result;
  v25 = (a1 + 18 * a2);
  *v25 = result;
  v25[1] = result;
  v26 = (a1 + 19 * a2);
  *v26 = result;
  v26[1] = result;
  v27 = (a1 + 20 * a2);
  *v27 = result;
  v27[1] = result;
  v28 = (a1 + 21 * a2);
  *v28 = result;
  v28[1] = result;
  v29 = (a1 + 22 * a2);
  *v29 = result;
  v29[1] = result;
  v30 = (a1 + 23 * a2);
  *v30 = result;
  v30[1] = result;
  v31 = (a1 + 24 * a2);
  *v31 = result;
  v31[1] = result;
  v32 = (a1 + 25 * a2);
  *v32 = result;
  v32[1] = result;
  v33 = (a1 + 26 * a2);
  *v33 = result;
  v33[1] = result;
  v34 = (a1 + 27 * a2);
  *v34 = result;
  v34[1] = result;
  v35 = (a1 + 28 * a2);
  *v35 = result;
  v35[1] = result;
  v36 = (a1 + 29 * a2);
  *v36 = result;
  v36[1] = result;
  v37 = (a1 + 30 * a2);
  *v37 = result;
  v37[1] = result;
  v38 = (&a1[2 * a2] - a2);
  *v38 = result;
  v38[1] = result;
  return result;
}

int8x16_t aom_dc_left_predictor_32x32_neon(int8x16_t *a1, uint64_t a2, uint64_t a3, uint8x16_t *a4)
{
  v4 = vpadalq_u8(vpaddlq_u8(a4[1]), *a4);
  v5 = vpaddq_s16(v4, v4);
  v6 = vpaddq_s16(v5, v5);
  result = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v6, v6), 5uLL), 0);
  *a1 = result;
  a1[1] = result;
  v8 = (a1 + a2);
  *v8 = result;
  v8[1] = result;
  v9 = (a1 + 2 * a2);
  *v9 = result;
  v9[1] = result;
  v10 = (a1 + 2 * a2 + a2);
  *v10 = result;
  v10[1] = result;
  v11 = (a1 + 4 * a2);
  *v11 = result;
  v11[1] = result;
  v12 = (a1 + 4 * a2 + a2);
  *v12 = result;
  v12[1] = result;
  v13 = (a1 + 6 * a2);
  *v13 = result;
  v13[1] = result;
  v14 = (a1 + 7 * a2);
  *v14 = result;
  v14[1] = result;
  v15 = (a1 + 8 * a2);
  *v15 = result;
  v15[1] = result;
  v16 = (a1 + 8 * a2 + a2);
  *v16 = result;
  v16[1] = result;
  v17 = (a1 + 10 * a2);
  *v17 = result;
  v17[1] = result;
  v18 = (a1 + 11 * a2);
  *v18 = result;
  v18[1] = result;
  v19 = (a1 + 12 * a2);
  *v19 = result;
  v19[1] = result;
  v20 = (a1 + 13 * a2);
  *v20 = result;
  v20[1] = result;
  v21 = (a1 + 14 * a2);
  *v21 = result;
  v21[1] = result;
  v22 = (a1 + 15 * a2);
  *v22 = result;
  v22[1] = result;
  v23 = &a1[a2];
  *v23 = result;
  v23[1] = result;
  v24 = (&a1[a2] + a2);
  *v24 = result;
  v24[1] = result;
  v25 = (a1 + 18 * a2);
  *v25 = result;
  v25[1] = result;
  v26 = (a1 + 19 * a2);
  *v26 = result;
  v26[1] = result;
  v27 = (a1 + 20 * a2);
  *v27 = result;
  v27[1] = result;
  v28 = (a1 + 21 * a2);
  *v28 = result;
  v28[1] = result;
  v29 = (a1 + 22 * a2);
  *v29 = result;
  v29[1] = result;
  v30 = (a1 + 23 * a2);
  *v30 = result;
  v30[1] = result;
  v31 = (a1 + 24 * a2);
  *v31 = result;
  v31[1] = result;
  v32 = (a1 + 25 * a2);
  *v32 = result;
  v32[1] = result;
  v33 = (a1 + 26 * a2);
  *v33 = result;
  v33[1] = result;
  v34 = (a1 + 27 * a2);
  *v34 = result;
  v34[1] = result;
  v35 = (a1 + 28 * a2);
  *v35 = result;
  v35[1] = result;
  v36 = (a1 + 29 * a2);
  *v36 = result;
  v36[1] = result;
  v37 = (a1 + 30 * a2);
  *v37 = result;
  v37[1] = result;
  v38 = (&a1[2 * a2] - a2);
  *v38 = result;
  v38[1] = result;
  return result;
}

int8x16_t aom_dc_top_predictor_32x32_neon(int8x16_t *a1, uint64_t a2, uint8x16_t *a3)
{
  v3 = vpadalq_u8(vpaddlq_u8(a3[1]), *a3);
  v4 = vpaddq_s16(v3, v3);
  v5 = vpaddq_s16(v4, v4);
  result = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v5, v5), 5uLL), 0);
  *a1 = result;
  a1[1] = result;
  v7 = (a1 + a2);
  *v7 = result;
  v7[1] = result;
  v8 = (a1 + 2 * a2);
  *v8 = result;
  v8[1] = result;
  v9 = (a1 + 2 * a2 + a2);
  *v9 = result;
  v9[1] = result;
  v10 = (a1 + 4 * a2);
  *v10 = result;
  v10[1] = result;
  v11 = (a1 + 4 * a2 + a2);
  *v11 = result;
  v11[1] = result;
  v12 = (a1 + 6 * a2);
  *v12 = result;
  v12[1] = result;
  v13 = (a1 + 7 * a2);
  *v13 = result;
  v13[1] = result;
  v14 = (a1 + 8 * a2);
  *v14 = result;
  v14[1] = result;
  v15 = (a1 + 8 * a2 + a2);
  *v15 = result;
  v15[1] = result;
  v16 = (a1 + 10 * a2);
  *v16 = result;
  v16[1] = result;
  v17 = (a1 + 11 * a2);
  *v17 = result;
  v17[1] = result;
  v18 = (a1 + 12 * a2);
  *v18 = result;
  v18[1] = result;
  v19 = (a1 + 13 * a2);
  *v19 = result;
  v19[1] = result;
  v20 = (a1 + 14 * a2);
  *v20 = result;
  v20[1] = result;
  v21 = (a1 + 15 * a2);
  *v21 = result;
  v21[1] = result;
  v22 = &a1[a2];
  *v22 = result;
  v22[1] = result;
  v23 = (&a1[a2] + a2);
  *v23 = result;
  v23[1] = result;
  v24 = (a1 + 18 * a2);
  *v24 = result;
  v24[1] = result;
  v25 = (a1 + 19 * a2);
  *v25 = result;
  v25[1] = result;
  v26 = (a1 + 20 * a2);
  *v26 = result;
  v26[1] = result;
  v27 = (a1 + 21 * a2);
  *v27 = result;
  v27[1] = result;
  v28 = (a1 + 22 * a2);
  *v28 = result;
  v28[1] = result;
  v29 = (a1 + 23 * a2);
  *v29 = result;
  v29[1] = result;
  v30 = (a1 + 24 * a2);
  *v30 = result;
  v30[1] = result;
  v31 = (a1 + 25 * a2);
  *v31 = result;
  v31[1] = result;
  v32 = (a1 + 26 * a2);
  *v32 = result;
  v32[1] = result;
  v33 = (a1 + 27 * a2);
  *v33 = result;
  v33[1] = result;
  v34 = (a1 + 28 * a2);
  *v34 = result;
  v34[1] = result;
  v35 = (a1 + 29 * a2);
  *v35 = result;
  v35[1] = result;
  v36 = (a1 + 30 * a2);
  *v36 = result;
  v36[1] = result;
  v37 = (&a1[2 * a2] - a2);
  *v37 = result;
  v37[1] = result;
  return result;
}