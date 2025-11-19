double RSA_default_method_init(void)
{
  qword_2808D4508 = 0;
  result = 0.0;
  xmmword_2808D44E8 = 0u;
  unk_2808D44F8 = 0u;
  RSA_default_method_storage = 0u;
  unk_2808D44D8 = 0u;
  BYTE4(RSA_default_method_storage) = 1;
  return result;
}

uint64_t sha1_block_data_order(unsigned int *a1, const unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1[3];
  v4 = a1[4];
  v6 = a1[1];
  v5 = a1[2];
  v7 = *a1;
  do
  {
    v381 = v3;
    v379 = v4;
    v380 = a3;
    HIDWORD(v8) = v7;
    LODWORD(v8) = v7;
    v9 = bswap32(*a2);
    v10 = (v8 >> 27) + v4 + 1518500249 + (v5 & v6 | v3 & ~v6);
    v11 = bswap32(*(a2 + 1));
    HIDWORD(v8) = v6;
    LODWORD(v8) = v6;
    v12 = v8 >> 2;
    v13 = bswap32(*(a2 + 2));
    v14 = v10 + v9;
    HIDWORD(v8) = v14;
    LODWORD(v8) = v14;
    v15 = v8 >> 27;
    HIDWORD(v8) = v7;
    LODWORD(v8) = v7;
    v16 = v8 >> 2;
    v17 = bswap32(*(a2 + 3));
    v18 = v381 + 1518500249 + (v12 & HIDWORD(v8) | v5 & ~HIDWORD(v8)) + v11 + v15;
    HIDWORD(v8) = v18;
    LODWORD(v8) = v18;
    v19 = v8 >> 27;
    v20 = v5 + 1518500249 + v13 + (v16 & v14 | v12 & ~v14);
    HIDWORD(v8) = v14;
    LODWORD(v8) = v14;
    v21 = v8 >> 2;
    v22 = v20 + v19;
    HIDWORD(v8) = v22;
    LODWORD(v8) = v22;
    v23 = v8 >> 27;
    v24 = v12 + 1518500249 + v17 + (v21 & v18 | v16 & ~v18);
    HIDWORD(v8) = v18;
    LODWORD(v8) = v18;
    v25 = v8 >> 2;
    v26 = bswap32(*(a2 + 4));
    v27 = v24 + v23;
    v28 = bswap32(*(a2 + 5));
    v29 = v16 + 1518500249 + v26 + (v25 & v22 | v21 & ~v22);
    HIDWORD(v8) = v22;
    LODWORD(v8) = v22;
    v30 = v8 >> 2;
    HIDWORD(v8) = v27;
    LODWORD(v8) = v27;
    v31 = bswap32(*(a2 + 6));
    v32 = v29 + (v8 >> 27);
    v33 = v21 + v28 + 1518500249 + (v30 & v27 | v25 & ~v27);
    HIDWORD(v8) = v32;
    LODWORD(v8) = v32;
    v34 = v8 >> 27;
    HIDWORD(v8) = v27;
    LODWORD(v8) = v27;
    v35 = v8 >> 2;
    v36 = bswap32(*(a2 + 7));
    v37 = v33 + v34;
    v38 = v25 + v31 + 1518500249 + (v35 & v32 | v30 & ~v32);
    HIDWORD(v8) = v37;
    LODWORD(v8) = v37;
    v39 = v8 >> 27;
    HIDWORD(v8) = v32;
    LODWORD(v8) = v32;
    v40 = v8 >> 2;
    v41 = bswap32(*(a2 + 8));
    v42 = v38 + v39;
    HIDWORD(v8) = v42;
    LODWORD(v8) = v42;
    v43 = v8 >> 27;
    v44 = v30 + v36 + 1518500249 + (v40 & v37 | v35 & ~v37);
    HIDWORD(v8) = v37;
    LODWORD(v8) = v37;
    v45 = v8 >> 2;
    v46 = bswap32(*(a2 + 9));
    v47 = v44 + v43;
    HIDWORD(v8) = v47;
    LODWORD(v8) = v47;
    v48 = v8 >> 27;
    v49 = v41 + 1518500249 + v35 + (v45 & v42 | v40 & ~v42);
    HIDWORD(v8) = v42;
    LODWORD(v8) = v42;
    v50 = v8 >> 2;
    v51 = v49 + v48;
    v52 = bswap32(*(a2 + 10));
    HIDWORD(v8) = v51;
    LODWORD(v8) = v51;
    v53 = v8 >> 27;
    v54 = v50 & v47 | v45 & ~v47;
    HIDWORD(v8) = v47;
    LODWORD(v8) = v47;
    v55 = v8 >> 2;
    v56 = v46 + 1518500249 + v40 + v54 + v53;
    v57 = bswap32(*(a2 + 11));
    v58 = v52 + 1518500249 + v45 + (v55 & v51 | v50 & ~v51);
    HIDWORD(v8) = v51;
    LODWORD(v8) = v51;
    v59 = v8 >> 2;
    HIDWORD(v8) = v56;
    LODWORD(v8) = v56;
    v60 = bswap32(*(a2 + 12));
    v61 = v58 + (v8 >> 27);
    v62 = v57 + 1518500249 + v50 + (v59 & v56 | v55 & ~v56);
    HIDWORD(v8) = v61;
    LODWORD(v8) = v61;
    v63 = v8 >> 27;
    HIDWORD(v8) = v56;
    LODWORD(v8) = v56;
    v64 = v8 >> 2;
    v65 = bswap32(*(a2 + 13));
    v66 = v62 + v63;
    v67 = v60 + 1518500249 + v55 + (v64 & v61 | v59 & ~v61);
    HIDWORD(v8) = v66;
    LODWORD(v8) = v66;
    v68 = v8 >> 27;
    HIDWORD(v8) = v61;
    LODWORD(v8) = v61;
    v69 = v8 >> 2;
    v70 = bswap32(*(a2 + 14));
    v71 = v67 + v68;
    HIDWORD(v8) = v71;
    LODWORD(v8) = v71;
    v72 = v8 >> 27;
    v73 = v65 + 1518500249 + v59 + (v69 & v66 | v64 & ~v66);
    HIDWORD(v8) = v66;
    LODWORD(v8) = v66;
    v74 = v8 >> 2;
    v75 = bswap32(*(a2 + 15));
    v76 = v73 + v72;
    HIDWORD(v8) = v76;
    LODWORD(v8) = v76;
    v77 = v8 >> 27;
    v78 = v70 + 1518500249 + v64 + (v74 & v71 | v69 & ~v71);
    HIDWORD(v8) = v71;
    LODWORD(v8) = v71;
    v79 = v8 >> 2;
    v80 = v79 & v76 | v74 & ~v76;
    HIDWORD(v8) = v76;
    LODWORD(v8) = v76;
    v81 = v8 >> 2;
    v82 = v78 + v77;
    v83 = v75 + 1518500249 + v69 + v80;
    HIDWORD(v8) = v82;
    LODWORD(v8) = v82;
    v84 = v8 >> 27;
    HIDWORD(v8) = v13 ^ v9 ^ v41 ^ v65;
    LODWORD(v8) = HIDWORD(v8);
    v85 = v8 >> 31;
    v86 = v81 & v82 | v79 & ~v82;
    v87 = v83 + v84;
    HIDWORD(v8) = v82;
    LODWORD(v8) = v82;
    v88 = v8 >> 2;
    HIDWORD(v8) = v87;
    LODWORD(v8) = v87;
    v89 = v8 >> 27;
    HIDWORD(v8) = v17 ^ v11 ^ v46 ^ v70;
    LODWORD(v8) = HIDWORD(v8);
    v90 = v8 >> 31;
    v91 = v85 + 1518500249 + v74 + v86 + v89;
    v92 = v90 + 1518500249 + v79 + (v88 & v87 | v81 & ~v87);
    HIDWORD(v8) = v87;
    LODWORD(v8) = v87;
    v93 = v8 >> 2;
    HIDWORD(v8) = v91;
    LODWORD(v8) = v91;
    v94 = v8 >> 27;
    HIDWORD(v8) = v26 ^ v13 ^ v52 ^ v75;
    LODWORD(v8) = HIDWORD(v8);
    v95 = v8 >> 31;
    v96 = v93 & v91 | v88 & ~v91;
    HIDWORD(v8) = v91;
    LODWORD(v8) = v91;
    v97 = v8 >> 2;
    v98 = v92 + v94;
    v99 = v95 + 1518500249 + v81 + v96;
    HIDWORD(v8) = v98;
    LODWORD(v8) = v98;
    v100 = v8 >> 27;
    HIDWORD(v8) = v28 ^ v17 ^ v57 ^ v85;
    LODWORD(v8) = HIDWORD(v8);
    v101 = v8 >> 31;
    v102 = v97 & v98 | v93 & ~v98;
    v103 = v99 + v100;
    HIDWORD(v8) = v98;
    LODWORD(v8) = v98;
    v104 = v8 >> 2;
    v105 = v101 + 1518500249 + v88 + v102;
    HIDWORD(v8) = v31 ^ v26 ^ v60 ^ v90;
    LODWORD(v8) = HIDWORD(v8);
    v106 = v8 >> 31;
    HIDWORD(v8) = v103;
    LODWORD(v8) = v103;
    v107 = v106 + 1859775393 + v93 + (v104 ^ v97 ^ v103);
    v108 = v105 + (v8 >> 27);
    HIDWORD(v8) = v103;
    LODWORD(v8) = v103;
    v109 = v8 >> 2;
    v110 = v36 ^ v28 ^ v65;
    HIDWORD(v8) = v108;
    LODWORD(v8) = v108;
    v111 = v8 >> 27;
    HIDWORD(v8) = v110 ^ v95;
    LODWORD(v8) = v110 ^ v95;
    v112 = v8 >> 31;
    v113 = v112 + 1859775393 + v97 + (v109 ^ v104 ^ v108);
    HIDWORD(v8) = v108;
    LODWORD(v8) = v108;
    v114 = v8 >> 2;
    v115 = v107 + v111;
    HIDWORD(v8) = v41 ^ v31 ^ v70 ^ v101;
    LODWORD(v8) = HIDWORD(v8);
    v116 = v8 >> 31;
    HIDWORD(v8) = v115;
    LODWORD(v8) = v115;
    v117 = v116 + 1859775393 + v104 + (v114 ^ v109 ^ v115);
    v118 = v113 + (v8 >> 27);
    HIDWORD(v8) = v115;
    LODWORD(v8) = v115;
    v119 = v8 >> 2;
    v120 = v46 ^ v36 ^ v75;
    HIDWORD(v8) = v118;
    LODWORD(v8) = v118;
    v121 = v8 >> 27;
    HIDWORD(v8) = v120 ^ v106;
    LODWORD(v8) = v120 ^ v106;
    v122 = v8 >> 31;
    v123 = v122 + 1859775393 + v109 + (v119 ^ v114 ^ v118);
    HIDWORD(v8) = v118;
    LODWORD(v8) = v118;
    v124 = v8 >> 2;
    v125 = v117 + v121;
    HIDWORD(v8) = v52 ^ v41 ^ v85 ^ v112;
    LODWORD(v8) = HIDWORD(v8);
    v126 = v8 >> 31;
    HIDWORD(v8) = v125;
    LODWORD(v8) = v125;
    v127 = v126 + 1859775393 + v114 + (v124 ^ v119 ^ v125);
    v128 = v123 + (v8 >> 27);
    HIDWORD(v8) = v125;
    LODWORD(v8) = v125;
    v129 = v8 >> 2;
    v130 = v57 ^ v46 ^ v90;
    HIDWORD(v8) = v128;
    LODWORD(v8) = v128;
    v131 = v8 >> 27;
    HIDWORD(v8) = v130 ^ v116;
    LODWORD(v8) = v130 ^ v116;
    v132 = v8 >> 31;
    v133 = v132 + 1859775393 + v119 + (v129 ^ v124 ^ v128);
    HIDWORD(v8) = v128;
    LODWORD(v8) = v128;
    v134 = v8 >> 2;
    v135 = v127 + v131;
    HIDWORD(v8) = v60 ^ v52 ^ v95 ^ v122;
    LODWORD(v8) = HIDWORD(v8);
    v136 = v8 >> 31;
    HIDWORD(v8) = v135;
    LODWORD(v8) = v135;
    v137 = v136 + 1859775393 + v124 + (v134 ^ v129 ^ v135);
    v138 = v133 + (v8 >> 27);
    HIDWORD(v8) = v135;
    LODWORD(v8) = v135;
    v139 = v8 >> 2;
    HIDWORD(v8) = v138;
    LODWORD(v8) = v138;
    v140 = v8 >> 27;
    HIDWORD(v8) = v65 ^ v57 ^ v101 ^ v126;
    LODWORD(v8) = HIDWORD(v8);
    v141 = v8 >> 31;
    v142 = v141 + 1859775393 + v129 + (v139 ^ v134 ^ v138);
    HIDWORD(v8) = v138;
    LODWORD(v8) = v138;
    v143 = v8 >> 2;
    v144 = v137 + v140;
    HIDWORD(v8) = v70 ^ v60 ^ v106 ^ v132;
    LODWORD(v8) = HIDWORD(v8);
    v145 = v8 >> 31;
    HIDWORD(v8) = v144;
    LODWORD(v8) = v144;
    v146 = v145 + 1859775393 + v134 + (v143 ^ v139 ^ v144);
    v147 = v142 + (v8 >> 27);
    HIDWORD(v8) = v144;
    LODWORD(v8) = v144;
    v148 = v8 >> 2;
    HIDWORD(v8) = v147;
    LODWORD(v8) = v147;
    v149 = v8 >> 27;
    HIDWORD(v8) = v75 ^ v65 ^ v112 ^ v136;
    LODWORD(v8) = HIDWORD(v8);
    v150 = v8 >> 31;
    v151 = v150 + 1859775393 + v139 + (v148 ^ v143 ^ v147);
    HIDWORD(v8) = v147;
    LODWORD(v8) = v147;
    v152 = v8 >> 2;
    v153 = v146 + v149;
    HIDWORD(v8) = v85 ^ v70 ^ v116 ^ v141;
    LODWORD(v8) = HIDWORD(v8);
    v154 = v8 >> 31;
    HIDWORD(v8) = v153;
    LODWORD(v8) = v153;
    v155 = v154 + 1859775393 + v143 + (v152 ^ v148 ^ v153);
    v156 = v151 + (v8 >> 27);
    HIDWORD(v8) = v153;
    LODWORD(v8) = v153;
    v157 = v8 >> 2;
    HIDWORD(v8) = v156;
    LODWORD(v8) = v156;
    v158 = v8 >> 27;
    HIDWORD(v8) = v90 ^ v75 ^ v122 ^ v145;
    LODWORD(v8) = HIDWORD(v8);
    v159 = v8 >> 31;
    v160 = v159 + 1859775393 + v148 + (v157 ^ v152 ^ v156);
    HIDWORD(v8) = v156;
    LODWORD(v8) = v156;
    v161 = v8 >> 2;
    v162 = v155 + v158;
    HIDWORD(v8) = v95 ^ v85 ^ v126 ^ v150;
    LODWORD(v8) = HIDWORD(v8);
    v163 = v8 >> 31;
    HIDWORD(v8) = v162;
    LODWORD(v8) = v162;
    v164 = v163 + 1859775393 + v152 + (v161 ^ v157 ^ v162);
    v165 = v160 + (v8 >> 27);
    HIDWORD(v8) = v162;
    LODWORD(v8) = v162;
    v166 = v8 >> 2;
    HIDWORD(v8) = v165;
    LODWORD(v8) = v165;
    v167 = v8 >> 27;
    HIDWORD(v8) = v101 ^ v90 ^ v132 ^ v154;
    LODWORD(v8) = HIDWORD(v8);
    v168 = v8 >> 31;
    v169 = v168 + 1859775393 + v157 + (v166 ^ v161 ^ v165);
    HIDWORD(v8) = v165;
    LODWORD(v8) = v165;
    v170 = v8 >> 2;
    v171 = v164 + v167;
    HIDWORD(v8) = v106 ^ v95 ^ v136 ^ v159;
    LODWORD(v8) = HIDWORD(v8);
    v172 = v8 >> 31;
    HIDWORD(v8) = v171;
    LODWORD(v8) = v171;
    v173 = v172 + 1859775393 + v161 + (v170 ^ v166 ^ v171);
    v174 = v169 + (v8 >> 27);
    HIDWORD(v8) = v171;
    LODWORD(v8) = v171;
    v175 = v8 >> 2;
    HIDWORD(v8) = v174;
    LODWORD(v8) = v174;
    v176 = v8 >> 27;
    HIDWORD(v8) = v112 ^ v101 ^ v141 ^ v163;
    LODWORD(v8) = HIDWORD(v8);
    v177 = v8 >> 31;
    v178 = v177 + 1859775393 + v166 + (v175 ^ v170 ^ v174);
    HIDWORD(v8) = v174;
    LODWORD(v8) = v174;
    v179 = v8 >> 2;
    v180 = v173 + v176;
    HIDWORD(v8) = v116 ^ v106 ^ v145 ^ v168;
    LODWORD(v8) = HIDWORD(v8);
    v181 = v8 >> 31;
    HIDWORD(v8) = v180;
    LODWORD(v8) = v180;
    v182 = v181 + 1859775393 + v170 + (v179 ^ v175 ^ v180);
    v183 = v178 + (v8 >> 27);
    HIDWORD(v8) = v180;
    LODWORD(v8) = v180;
    v184 = v8 >> 2;
    HIDWORD(v8) = v183;
    LODWORD(v8) = v183;
    v185 = v8 >> 27;
    HIDWORD(v8) = v122 ^ v112 ^ v150 ^ v172;
    LODWORD(v8) = HIDWORD(v8);
    v186 = v8 >> 31;
    v187 = v186 + 1859775393 + v175 + (v184 ^ v179 ^ v183);
    HIDWORD(v8) = v183;
    LODWORD(v8) = v183;
    v188 = v8 >> 2;
    v189 = v182 + v185;
    HIDWORD(v8) = v126 ^ v116 ^ v154 ^ v177;
    LODWORD(v8) = HIDWORD(v8);
    v190 = v8 >> 31;
    HIDWORD(v8) = v189;
    LODWORD(v8) = v189;
    v191 = v190 + 1859775393 + v179 + (v188 ^ v184 ^ v189);
    v192 = v187 + (v8 >> 27);
    HIDWORD(v8) = v189;
    LODWORD(v8) = v189;
    v193 = v8 >> 2;
    HIDWORD(v8) = v192;
    LODWORD(v8) = v192;
    v194 = v8 >> 27;
    HIDWORD(v8) = v132 ^ v122 ^ v159 ^ v181;
    LODWORD(v8) = HIDWORD(v8);
    v195 = v8 >> 31;
    v196 = v195 + 1859775393 + v184 + (v193 ^ v188 ^ v192);
    HIDWORD(v8) = v192;
    LODWORD(v8) = v192;
    v197 = v8 >> 2;
    v198 = v191 + v194;
    HIDWORD(v8) = v136 ^ v126 ^ v163 ^ v186;
    LODWORD(v8) = HIDWORD(v8);
    v199 = v8 >> 31;
    HIDWORD(v8) = v198;
    LODWORD(v8) = v198;
    v200 = v196 + (v8 >> 27);
    HIDWORD(v8) = v200;
    LODWORD(v8) = v200;
    v201 = v8 >> 27;
    v202 = (v198 | v197) & v193 | v198 & v197;
    HIDWORD(v8) = v198;
    LODWORD(v8) = v198;
    v203 = v8 >> 2;
    HIDWORD(v8) = v141 ^ v132 ^ v168 ^ v190;
    LODWORD(v8) = HIDWORD(v8);
    v204 = v8 >> 31;
    v205 = v199 - 1894007588 + v188 + v202 + v201;
    v206 = (v200 | v203) & v197 | v200 & v203;
    HIDWORD(v8) = v205;
    LODWORD(v8) = v205;
    v207 = v8 >> 27;
    HIDWORD(v8) = v200;
    LODWORD(v8) = v200;
    v208 = v8 >> 2;
    HIDWORD(v8) = v145 ^ v136 ^ v172 ^ v195;
    LODWORD(v8) = HIDWORD(v8);
    v209 = v8 >> 31;
    v210 = v204 - 1894007588 + v193 + v206 + v207;
    v211 = (v205 | v208) & v203 | v205 & v208;
    HIDWORD(v8) = v210;
    LODWORD(v8) = v210;
    v212 = v8 >> 27;
    HIDWORD(v8) = v205;
    LODWORD(v8) = v205;
    v213 = v8 >> 2;
    HIDWORD(v8) = v150 ^ v141 ^ v177 ^ v199;
    LODWORD(v8) = HIDWORD(v8);
    v214 = v8 >> 31;
    v215 = v209 - 1894007588 + v197 + v211 + v212;
    HIDWORD(v8) = v215;
    LODWORD(v8) = v215;
    v216 = v8 >> 27;
    v217 = v214 - 1894007588 + v203 + ((v210 | v213) & v208 | v210 & v213);
    HIDWORD(v8) = v210;
    LODWORD(v8) = v210;
    v218 = v8 >> 2;
    v219 = v217 + v216;
    HIDWORD(v8) = v154 ^ v145 ^ v181 ^ v204;
    LODWORD(v8) = HIDWORD(v8);
    v220 = v8 >> 31;
    HIDWORD(v8) = v219;
    LODWORD(v8) = v219;
    v221 = v8 >> 27;
    v222 = v220 - 1894007588 + v208 + ((v215 | v218) & v213 | v215 & v218);
    HIDWORD(v8) = v215;
    LODWORD(v8) = v215;
    v223 = v8 >> 2;
    v224 = v222 + v221;
    HIDWORD(v8) = v159 ^ v150 ^ v186 ^ v209;
    LODWORD(v8) = HIDWORD(v8);
    v225 = v8 >> 31;
    v226 = (v219 | v223) & v218 | v219 & v223;
    HIDWORD(v8) = v219;
    LODWORD(v8) = v219;
    v227 = v8 >> 2;
    HIDWORD(v8) = v224;
    LODWORD(v8) = v224;
    v228 = v8 >> 27;
    HIDWORD(v8) = v163 ^ v154 ^ v190 ^ v214;
    LODWORD(v8) = HIDWORD(v8);
    v229 = v8 >> 31;
    v230 = v225 - 1894007588 + v213 + v226 + v228;
    HIDWORD(v8) = v230;
    LODWORD(v8) = v230;
    v231 = v8 >> 27;
    v232 = (v224 | v227) & v223 | v224 & v227;
    HIDWORD(v8) = v224;
    LODWORD(v8) = v224;
    v233 = v8 >> 2;
    HIDWORD(v8) = v168 ^ v159 ^ v195 ^ v220;
    LODWORD(v8) = HIDWORD(v8);
    v234 = v8 >> 31;
    v235 = v229 - 1894007588 + v218 + v232 + v231;
    v236 = (v230 | v233) & v227 | v230 & v233;
    HIDWORD(v8) = v235;
    LODWORD(v8) = v235;
    v237 = v8 >> 27;
    HIDWORD(v8) = v230;
    LODWORD(v8) = v230;
    v238 = v8 >> 2;
    HIDWORD(v8) = v172 ^ v163 ^ v199 ^ v225;
    LODWORD(v8) = HIDWORD(v8);
    v239 = v8 >> 31;
    v240 = v234 - 1894007588 + v223 + v236 + v237;
    v241 = (v235 | v238) & v233 | v235 & v238;
    HIDWORD(v8) = v240;
    LODWORD(v8) = v240;
    v242 = v8 >> 27;
    HIDWORD(v8) = v235;
    LODWORD(v8) = v235;
    v243 = v8 >> 2;
    HIDWORD(v8) = v177 ^ v168 ^ v204 ^ v229;
    LODWORD(v8) = HIDWORD(v8);
    v244 = v8 >> 31;
    v245 = v239 - 1894007588 + v227 + v241 + v242;
    HIDWORD(v8) = v245;
    LODWORD(v8) = v245;
    v246 = v8 >> 27;
    v247 = v244 - 1894007588 + v233 + ((v240 | v243) & v238 | v240 & v243);
    HIDWORD(v8) = v240;
    LODWORD(v8) = v240;
    v248 = v8 >> 2;
    v249 = v247 + v246;
    HIDWORD(v8) = v181 ^ v172 ^ v209 ^ v234;
    LODWORD(v8) = HIDWORD(v8);
    v250 = v8 >> 31;
    HIDWORD(v8) = v249;
    LODWORD(v8) = v249;
    v251 = v8 >> 27;
    v252 = v250 - 1894007588 + v238 + ((v245 | v248) & v243 | v245 & v248);
    HIDWORD(v8) = v245;
    LODWORD(v8) = v245;
    v253 = v8 >> 2;
    v254 = v252 + v251;
    HIDWORD(v8) = v186 ^ v177 ^ v214 ^ v239;
    LODWORD(v8) = HIDWORD(v8);
    v255 = v8 >> 31;
    v256 = (v249 | v253) & v248 | v249 & v253;
    HIDWORD(v8) = v249;
    LODWORD(v8) = v249;
    v257 = v8 >> 2;
    HIDWORD(v8) = v254;
    LODWORD(v8) = v254;
    v258 = v8 >> 27;
    HIDWORD(v8) = v190 ^ v181 ^ v220 ^ v244;
    LODWORD(v8) = HIDWORD(v8);
    v259 = v8 >> 31;
    v260 = v255 - 1894007588 + v243 + v256 + v258;
    HIDWORD(v8) = v260;
    LODWORD(v8) = v260;
    v261 = v8 >> 27;
    v262 = (v254 | v257) & v253 | v254 & v257;
    HIDWORD(v8) = v254;
    LODWORD(v8) = v254;
    v263 = v8 >> 2;
    HIDWORD(v8) = v195 ^ v186 ^ v225 ^ v250;
    LODWORD(v8) = HIDWORD(v8);
    v264 = v8 >> 31;
    v265 = v259 - 1894007588 + v248 + v262 + v261;
    v266 = (v260 | v263) & v257 | v260 & v263;
    HIDWORD(v8) = v265;
    LODWORD(v8) = v265;
    v267 = v8 >> 27;
    HIDWORD(v8) = v260;
    LODWORD(v8) = v260;
    v268 = v8 >> 2;
    HIDWORD(v8) = v199 ^ v190 ^ v229 ^ v255;
    LODWORD(v8) = HIDWORD(v8);
    v269 = v8 >> 31;
    v270 = v264 - 1894007588 + v253 + v266 + v267;
    HIDWORD(v8) = v270;
    LODWORD(v8) = v270;
    v271 = v8 >> 27;
    v272 = v269 - 1894007588 + v257 + ((v265 | v268) & v263 | v265 & v268);
    HIDWORD(v8) = v265;
    LODWORD(v8) = v265;
    v273 = v8 >> 2;
    v274 = v272 + v271;
    HIDWORD(v8) = v204 ^ v195 ^ v234 ^ v259;
    LODWORD(v8) = HIDWORD(v8);
    v275 = v8 >> 31;
    HIDWORD(v8) = v274;
    LODWORD(v8) = v274;
    v276 = v8 >> 27;
    v277 = v275 - 1894007588 + v263 + ((v270 | v273) & v268 | v270 & v273);
    HIDWORD(v8) = v270;
    LODWORD(v8) = v270;
    v278 = v8 >> 2;
    v279 = v277 + v276;
    HIDWORD(v8) = v209 ^ v199 ^ v239 ^ v264;
    LODWORD(v8) = HIDWORD(v8);
    v280 = v8 >> 31;
    HIDWORD(v8) = v279;
    LODWORD(v8) = v279;
    v281 = v8 >> 27;
    v282 = v280 - 1894007588 + v268 + ((v274 | v278) & v273 | v274 & v278);
    HIDWORD(v8) = v274;
    LODWORD(v8) = v274;
    v283 = v8 >> 2;
    v284 = v282 + v281;
    HIDWORD(v8) = v214 ^ v204 ^ v244 ^ v269;
    LODWORD(v8) = HIDWORD(v8);
    v285 = v8 >> 31;
    v286 = (v279 | v283) & v278 | v279 & v283;
    HIDWORD(v8) = v279;
    LODWORD(v8) = v279;
    v287 = v8 >> 2;
    HIDWORD(v8) = v284;
    LODWORD(v8) = v284;
    v288 = v8 >> 27;
    HIDWORD(v8) = v220 ^ v209 ^ v250 ^ v275;
    LODWORD(v8) = HIDWORD(v8);
    v289 = v8 >> 31;
    v290 = v285 - 1894007588 + v273 + v286 + v288;
    v291 = (v284 | v287) & v283 | v284 & v287;
    HIDWORD(v8) = v290;
    LODWORD(v8) = v290;
    v292 = v8 >> 27;
    HIDWORD(v8) = v284;
    LODWORD(v8) = v284;
    v293 = v8 >> 2;
    HIDWORD(v8) = v225 ^ v214 ^ v255 ^ v280;
    LODWORD(v8) = HIDWORD(v8);
    v294 = v8 >> 31;
    v295 = v289 - 1894007588 + v278 + v291 + v292;
    HIDWORD(v8) = v295;
    LODWORD(v8) = v295;
    v296 = v294 - 1894007588 + v283 + ((v290 | v293) & v287 | v290 & v293) + (v8 >> 27);
    HIDWORD(v8) = v229 ^ v220 ^ v259 ^ v285;
    LODWORD(v8) = HIDWORD(v8);
    v297 = v8 >> 31;
    HIDWORD(v8) = v290;
    LODWORD(v8) = v290;
    v298 = v8 >> 2;
    v299 = v297 - 899497514 + v287 + (v298 ^ v293 ^ v295);
    HIDWORD(v8) = v296;
    LODWORD(v8) = v296;
    v300 = v8 >> 27;
    HIDWORD(v8) = v295;
    LODWORD(v8) = v295;
    v301 = v8 >> 2;
    v302 = v299 + v300;
    HIDWORD(v8) = v234 ^ v225 ^ v264 ^ v289;
    LODWORD(v8) = HIDWORD(v8);
    v303 = v8 >> 31;
    HIDWORD(v8) = v302;
    LODWORD(v8) = v302;
    v304 = v303 - 899497514 + v293 + (v301 ^ v298 ^ v296) + (v8 >> 27);
    HIDWORD(v8) = v239 ^ v229 ^ v269 ^ v294;
    LODWORD(v8) = HIDWORD(v8);
    v305 = v8 >> 31;
    HIDWORD(v8) = v296;
    LODWORD(v8) = v296;
    v306 = v8 >> 2;
    v307 = v305 - 899497514 + v298 + (v306 ^ v301 ^ v302);
    HIDWORD(v8) = v304;
    LODWORD(v8) = v304;
    v308 = v8 >> 27;
    HIDWORD(v8) = v302;
    LODWORD(v8) = v302;
    v309 = v8 >> 2;
    v310 = v307 + v308;
    HIDWORD(v8) = v244 ^ v234 ^ v275 ^ v297;
    LODWORD(v8) = HIDWORD(v8);
    v311 = v8 >> 31;
    HIDWORD(v8) = v310;
    LODWORD(v8) = v310;
    v312 = v311 - 899497514 + v301 + (v309 ^ v306 ^ v304) + (v8 >> 27);
    HIDWORD(v8) = v250 ^ v239 ^ v280 ^ v303;
    LODWORD(v8) = HIDWORD(v8);
    v313 = v8 >> 31;
    HIDWORD(v8) = v304;
    LODWORD(v8) = v304;
    v314 = v8 >> 2;
    v315 = v313 - 899497514 + v306 + (v314 ^ v309 ^ v310);
    HIDWORD(v8) = v312;
    LODWORD(v8) = v312;
    v316 = v8 >> 27;
    HIDWORD(v8) = v310;
    LODWORD(v8) = v310;
    v317 = v8 >> 2;
    v318 = v315 + v316;
    HIDWORD(v8) = v255 ^ v244 ^ v285 ^ v305;
    LODWORD(v8) = HIDWORD(v8);
    v319 = v8 >> 31;
    HIDWORD(v8) = v318;
    LODWORD(v8) = v318;
    v320 = v319 - 899497514 + v309 + (v317 ^ v314 ^ v312) + (v8 >> 27);
    HIDWORD(v8) = v259 ^ v250 ^ v289 ^ v311;
    LODWORD(v8) = HIDWORD(v8);
    v321 = v8 >> 31;
    HIDWORD(v8) = v312;
    LODWORD(v8) = v312;
    v322 = v8 >> 2;
    v323 = v321 - 899497514 + v314 + (v322 ^ v317 ^ v318);
    HIDWORD(v8) = v320;
    LODWORD(v8) = v320;
    v324 = v8 >> 27;
    HIDWORD(v8) = v318;
    LODWORD(v8) = v318;
    v325 = v8 >> 2;
    v326 = v323 + v324;
    HIDWORD(v8) = v264 ^ v255 ^ v294 ^ v313;
    LODWORD(v8) = HIDWORD(v8);
    v327 = v8 >> 31;
    HIDWORD(v8) = v326;
    LODWORD(v8) = v326;
    v328 = v327 - 899497514 + v317 + (v325 ^ v322 ^ v320) + (v8 >> 27);
    HIDWORD(v8) = v269 ^ v259 ^ v297 ^ v319;
    LODWORD(v8) = HIDWORD(v8);
    v329 = v8 >> 31;
    HIDWORD(v8) = v320;
    LODWORD(v8) = v320;
    v330 = v8 >> 2;
    v331 = v329 - 899497514 + v322 + (v330 ^ v325 ^ v326);
    HIDWORD(v8) = v328;
    LODWORD(v8) = v328;
    v332 = v8 >> 27;
    HIDWORD(v8) = v326;
    LODWORD(v8) = v326;
    v333 = v8 >> 2;
    v334 = v331 + v332;
    HIDWORD(v8) = v275 ^ v264 ^ v303 ^ v321;
    LODWORD(v8) = HIDWORD(v8);
    v335 = v8 >> 31;
    HIDWORD(v8) = v334;
    LODWORD(v8) = v334;
    v336 = v335 - 899497514 + v325 + (v333 ^ v330 ^ v328) + (v8 >> 27);
    HIDWORD(v8) = v280 ^ v269 ^ v305 ^ v327;
    LODWORD(v8) = HIDWORD(v8);
    v337 = v8 >> 31;
    HIDWORD(v8) = v328;
    LODWORD(v8) = v328;
    v338 = v8 >> 2;
    v339 = v337 - 899497514 + v330 + (v338 ^ v333 ^ v334);
    HIDWORD(v8) = v336;
    LODWORD(v8) = v336;
    v340 = v8 >> 27;
    HIDWORD(v8) = v334;
    LODWORD(v8) = v334;
    v341 = v8 >> 2;
    v342 = v339 + v340;
    HIDWORD(v8) = v285 ^ v275 ^ v311 ^ v329;
    LODWORD(v8) = HIDWORD(v8);
    v343 = v8 >> 31;
    v344 = v341 ^ v338 ^ v336;
    HIDWORD(v8) = v336;
    LODWORD(v8) = v336;
    v345 = v8 >> 2;
    v346 = v343 - 899497514 + v333 + v344;
    HIDWORD(v8) = v289 ^ v280 ^ v313 ^ v335;
    LODWORD(v8) = HIDWORD(v8);
    v347 = v8 >> 31;
    v348 = v347 - 899497514 + v338 + (v345 ^ v341 ^ v342);
    HIDWORD(v8) = v342;
    LODWORD(v8) = v342;
    v349 = v346 + (v8 >> 27);
    HIDWORD(v8) = v294 ^ v285 ^ v319 ^ v337;
    LODWORD(v8) = HIDWORD(v8);
    v350 = v8 >> 31;
    HIDWORD(v8) = v349;
    LODWORD(v8) = v349;
    v351 = v8 >> 27;
    HIDWORD(v8) = v342;
    LODWORD(v8) = v342;
    v352 = v8 >> 2;
    v353 = v348 + v351;
    v354 = v352 ^ v345 ^ v349;
    HIDWORD(v8) = v349;
    LODWORD(v8) = v349;
    v355 = v8 >> 2;
    HIDWORD(v8) = v297 ^ v289 ^ v321 ^ v343;
    LODWORD(v8) = HIDWORD(v8);
    v356 = v8 >> 31;
    v357 = v356 - 899497514 + v345 + (v355 ^ v352 ^ v353);
    HIDWORD(v8) = v353;
    LODWORD(v8) = v353;
    v358 = v350 - 899497514 + v341 + v354 + (v8 >> 27);
    v359 = v303 ^ v294 ^ v327 ^ v347;
    HIDWORD(v8) = v358;
    LODWORD(v8) = v358;
    v360 = v8 >> 27;
    HIDWORD(v8) = v353;
    LODWORD(v8) = v353;
    v361 = v8 >> 2;
    v362 = v357 + v360;
    HIDWORD(v8) = v359;
    LODWORD(v8) = v359;
    v363 = v8 >> 31;
    HIDWORD(v8) = v362;
    LODWORD(v8) = v362;
    v364 = v363 - 899497514 + v352 + (v361 ^ v355 ^ v358) + (v8 >> 27);
    HIDWORD(v8) = v305 ^ v297 ^ v329 ^ v350;
    LODWORD(v8) = HIDWORD(v8);
    v365 = v8 >> 31;
    HIDWORD(v8) = v358;
    LODWORD(v8) = v358;
    v366 = v8 >> 2;
    HIDWORD(v8) = v364;
    LODWORD(v8) = v364;
    v367 = v365 - 899497514 + v355 + (v366 ^ v361 ^ v362) + (v8 >> 27);
    v368 = v311 ^ v303 ^ v335 ^ v356;
    HIDWORD(v8) = v362;
    LODWORD(v8) = v362;
    v369 = v8 >> 2;
    HIDWORD(v8) = v368;
    LODWORD(v8) = v368;
    v370 = (v8 >> 31) - 899497514 + v361 + (v369 ^ v366 ^ v364);
    HIDWORD(v8) = v367;
    LODWORD(v8) = v367;
    v371 = v370 + (v8 >> 27);
    HIDWORD(v8) = v313 ^ v305 ^ v337 ^ v363;
    LODWORD(v8) = HIDWORD(v8);
    v372 = (v8 >> 31) - 899497514;
    HIDWORD(v8) = v364;
    LODWORD(v8) = v364;
    v373 = v8 >> 2;
    HIDWORD(v8) = v371;
    LODWORD(v8) = v371;
    result = (v8 >> 27);
    v375 = v372 + v366 + (v373 ^ v369 ^ v367) + result;
    HIDWORD(v8) = v319 ^ v311 ^ v343 ^ v365;
    LODWORD(v8) = HIDWORD(v8);
    v376 = v7 - 899497514 + (v8 >> 31);
    HIDWORD(v8) = v367;
    LODWORD(v8) = v367;
    v377 = v8 >> 2;
    v6 += v375;
    HIDWORD(v8) = v375;
    LODWORD(v8) = v375;
    v7 = v376 + v369 + (v377 ^ v373 ^ v371) + (v8 >> 27);
    HIDWORD(v8) = v371;
    LODWORD(v8) = v371;
    v5 += v8 >> 2;
    v3 = v377 + v381;
    v4 = v373 + v379;
    *a1 = v7;
    a1[1] = v6;
    a1[2] = v5;
    a1[3] = v377 + v381;
    a1[4] = v373 + v379;
    a2 += 64;
    a3 = v380 - 1;
  }

  while (v380 != 1);
  return result;
}

uint64_t BCM_sha1_update(unsigned int *a1, char *__src, size_t __n)
{
  if (!__n)
  {
    return 0;
  }

  v3 = __n;
  v5 = *(a1 + 5) + 8 * __n;
  *(a1 + 5) = v5;
  v6 = a1[23];
  if (v6)
  {
    v7 = a1 + 7;
    if (__n <= 0x3F && v6 + __n < 0x40)
    {
      memcpy(v7 + v6, __src, __n);
      a1[23] += v3;
      return 0;
    }

    v9 = __src;
    v10 = 64 - v6;
    if (v6 != 64)
    {
      memcpy(v7 + v6, __src, 64 - v6);
    }

    sha1_block_data_order(a1, a1 + 28, 1);
    v11 = v3 >= v10;
    v3 -= v10;
    if (!v11)
    {
      abort();
    }

    __src = &v9[v10];
    a1[23] = 0;
    *(a1 + 15) = 0u;
    *(a1 + 19) = 0u;
    *v7 = 0u;
    *(a1 + 11) = 0u;
  }

  if (v3 >= 0x40)
  {
    v12 = __src;
    sha1_block_data_order(a1, __src, v3 >> 6);
    __src = &v12[v3 & 0xFFFFFFFFFFFFFFC0];
    v3 &= 0x3Fu;
  }

  if (!v3)
  {
    return 0;
  }

  a1[23] = v3;
  memcpy(a1 + 7, __src, v3);
  return 0;
}

uint64_t sha256_block_data_order(uint64_t result, int8x16_t *a2, uint64_t a3)
{
  v211 = result;
  v223 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = *result;
    v4 = *(result + 4);
    v6 = *(result + 8);
    v5 = *(result + 12);
    v8 = *(result + 16);
    v7 = *(result + 20);
    v9 = *(result + 24);
    v10 = *(result + 28);
    do
    {
      v221 = a3;
      HIDWORD(v11) = v8;
      LODWORD(v11) = v8;
      v12 = (v11 >> 6) ^ __ROR4__(v8, 11);
      v13 = __PAIR64__(v3, __ROR4__(v8, 25));
      v212 = v10;
      v213 = v9;
      v14 = vrev32q_s8(*a2);
      v15 = v10 + (v9 & ~v8 | v8 & v7) + (v12 ^ v13) + v14.i32[0];
      LODWORD(v13) = v3;
      v15 += 1116352408;
      v216 = v5;
      v16 = v15 + v5;
      v17 = ((v13 >> 2) ^ __ROR4__(v3, 13) ^ __ROR4__(v3, 22)) + ((v4 ^ v6) & v3 ^ v4 & v6) + v15;
      HIDWORD(v13) = v15 + v5;
      LODWORD(v13) = v15 + v5;
      v18 = (v13 >> 6) ^ __ROR4__(v15 + v5, 11);
      v19 = __PAIR64__(v17, __ROR4__(v16, 25));
      v214 = v7;
      v20 = v9 + v14.i32[1] + (v16 & v8 | v7 & ~v16) + 1899447441 + (v18 ^ v19);
      LODWORD(v19) = v17;
      v217 = v6;
      v21 = v20 + v6;
      v22 = ((v19 >> 2) ^ __ROR4__(v17, 13) ^ __ROR4__(v17, 22)) + (v17 & (v3 ^ v4) ^ v3 & v4) + v20;
      HIDWORD(v19) = v20 + v6;
      LODWORD(v19) = v20 + v6;
      v23 = (v19 >> 6) ^ __ROR4__(v20 + v6, 11);
      v24 = __PAIR64__(v22, __ROR4__(v21, 25));
      v25 = v7 + v14.i32[2] + (v21 & v16 | v8 & ~v21) - 1245643825 + (v23 ^ v24);
      LODWORD(v24) = v22;
      v218 = v4;
      v26 = v25 + v4;
      v27 = ((v24 >> 2) ^ __ROR4__(v22, 13) ^ __ROR4__(v22, 22)) + (v22 & (v17 ^ v3) ^ v17 & v3) + v25;
      HIDWORD(v24) = v26;
      LODWORD(v24) = v26;
      v28 = (v24 >> 6) ^ __ROR4__(v26, 11);
      v29 = __PAIR64__(v27, __ROR4__(v26, 25));
      v215 = v8;
      v30 = v8 + v14.i32[3] + (v26 & v21 | v16 & ~v26) - 373957723 + (v28 ^ v29);
      LODWORD(v29) = v27;
      v219 = v3;
      v31 = v30 + v3;
      v32 = ((v29 >> 2) ^ __ROR4__(v27, 13) ^ __ROR4__(v27, 22)) + (v27 & (v22 ^ v17) ^ v22 & v17) + v30;
      v33 = vrev32q_s8(a2[1]);
      HIDWORD(v29) = v32;
      LODWORD(v29) = v32;
      v34 = (v29 >> 2) ^ __ROR4__(v32, 13);
      v35 = __PAIR64__(v31, __ROR4__(v32, 22));
      v36 = (v34 ^ v35) + (v32 & (v27 ^ v22) ^ v27 & v22);
      v37 = v21 + v33.i32[1];
      LODWORD(v35) = v31;
      v38 = v16 + v33.i32[0] + (v31 & v26 | v21 & ~v31) + 961987163 + ((v35 >> 6) ^ __ROR4__(v31, 11) ^ __ROR4__(v31, 25));
      v39 = v38 + v17;
      v40 = v36 + v38;
      HIDWORD(v35) = v39;
      LODWORD(v35) = v39;
      v41 = (v35 >> 6) ^ __ROR4__(v39, 11);
      v42 = __PAIR64__(v40, __ROR4__(v39, 25));
      v43 = v37 + (v39 & v31 | v26 & ~v39) + 1508970993 + (v41 ^ v42);
      LODWORD(v42) = v40;
      v44 = v43 + v22;
      v45 = ((v42 >> 2) ^ __ROR4__(v40, 13) ^ __ROR4__(v40, 22)) + (v40 & (v32 ^ v27) ^ v32 & v27) + v43;
      HIDWORD(v42) = v44;
      LODWORD(v42) = v44;
      v46 = (v42 >> 6) ^ __ROR4__(v44, 11);
      v47 = __PAIR64__(v45, __ROR4__(v44, 25));
      v48 = v33.i32[2] + v26 + (v44 & v39 | v31 & ~v44) - 1841331548 + (v46 ^ v47);
      LODWORD(v47) = v45;
      v49 = v48 + v27;
      v50 = ((v47 >> 2) ^ __ROR4__(v45, 13) ^ __ROR4__(v45, 22)) + (v45 & (v40 ^ v32) ^ v40 & v32) + v48;
      HIDWORD(v47) = v49;
      LODWORD(v47) = v49;
      v51 = (v47 >> 6) ^ __ROR4__(v49, 11);
      v52 = __PAIR64__(v50, __ROR4__(v49, 25));
      v53 = v33.i32[3] + v31 + (v49 & v44 | v39 & ~v49) - 1424204075 + (v51 ^ v52);
      LODWORD(v52) = v50;
      v54 = v53 + v32;
      v55 = ((v52 >> 2) ^ __ROR4__(v50, 13) ^ __ROR4__(v50, 22)) + (v50 & (v45 ^ v40) ^ v45 & v40) + v53;
      HIDWORD(v52) = v55;
      LODWORD(v52) = v55;
      v56 = (v52 >> 2) ^ __ROR4__(v55, 13);
      v57 = __PAIR64__(v54, __ROR4__(v55, 22));
      v58 = (v56 ^ v57) + (v55 & (v50 ^ v45) ^ v50 & v45);
      v59 = a2[3];
      v220 = a2;
      v60 = vrev32q_s8(a2[2]);
      LODWORD(v57) = v54;
      v61 = v60.i32[0] + v39 + (v54 & v49 | v44 & ~v54) - 670586216 + ((v57 >> 6) ^ __ROR4__(v54, 11) ^ __ROR4__(v54, 25));
      v62 = v61 + v40;
      v63 = v58 + v61;
      v64 = v60.i32[1] + v44 + ((v61 + v40) & v54 | v49 & ~(v61 + v40));
      HIDWORD(v57) = v62;
      LODWORD(v57) = v62;
      v65 = (v57 >> 6) ^ __ROR4__(v62, 11);
      v66 = __PAIR64__(v63, __ROR4__(v62, 25));
      v67 = v64 + 310598401 + (v65 ^ v66);
      LODWORD(v66) = v63;
      v68 = v67 + v45;
      v69 = ((v66 >> 2) ^ __ROR4__(v63, 13) ^ __ROR4__(v63, 22)) + (v63 & (v55 ^ v50) ^ v55 & v50) + v67;
      HIDWORD(v66) = v68;
      LODWORD(v66) = v68;
      v70 = (v66 >> 6) ^ __ROR4__(v68, 11);
      v71 = __PAIR64__(v69, __ROR4__(v68, 25));
      v72 = v60.i32[2] + v49 + (v68 & v62 | v54 & ~v68) + 607225278 + (v70 ^ v71);
      LODWORD(v71) = v69;
      v73 = v72 + v50;
      v74 = ((v71 >> 2) ^ __ROR4__(v69, 13) ^ __ROR4__(v69, 22)) + (v69 & (v63 ^ v55) ^ v63 & v55) + v72;
      HIDWORD(v71) = v73;
      LODWORD(v71) = v73;
      v75 = (v71 >> 6) ^ __ROR4__(v73, 11);
      v76 = __PAIR64__(v74, __ROR4__(v73, 25));
      v77 = v60.i32[3] + v54 + (v73 & v68 | v62 & ~v73) + 1426881987 + (v75 ^ v76);
      LODWORD(v76) = v74;
      v78 = ((v76 >> 2) ^ __ROR4__(v74, 13) ^ __ROR4__(v74, 22)) + (v74 & (v69 ^ v63) ^ v69 & v63);
      v79 = v77 + v55;
      v80 = v78 + v77;
      HIDWORD(v76) = v78 + v77;
      LODWORD(v76) = v78 + v77;
      v81 = (v76 >> 2) ^ __ROR4__(v78 + v77, 13);
      v82 = __PAIR64__(v79, __ROR4__(v78 + v77, 22));
      v83 = (v81 ^ v82) + ((v78 + v77) & (v74 ^ v69) ^ v74 & v69);
      v84 = vrev32q_s8(v59);
      LODWORD(v82) = v79;
      v85 = v84.i32[0] + v62 + (v79 & v73 | v68 & ~v79) + 1925078388 + ((v82 >> 6) ^ __ROR4__(v79, 11) ^ __ROR4__(v79, 25));
      v86 = v85 + v63;
      v87 = v83 + v85;
      v88 = v84.i32[1] + v68 + (v86 & v79 | v73 & ~v86);
      HIDWORD(v82) = v86;
      LODWORD(v82) = v86;
      v89 = (v82 >> 6) ^ __ROR4__(v86, 11);
      v90 = __PAIR64__(v87, __ROR4__(v86, 25));
      v91 = v88 - 2132889090 + (v89 ^ v90);
      LODWORD(v90) = v87;
      v92 = v91 + v69;
      v93 = ((v90 >> 2) ^ __ROR4__(v87, 13) ^ __ROR4__(v87, 22)) + (v87 & (v80 ^ v74) ^ v80 & v74) + v91;
      v222[0] = v14;
      v222[1] = v33;
      v222[2] = v60;
      v222[3] = v84;
      HIDWORD(v90) = v92;
      LODWORD(v90) = v92;
      v94 = (v90 >> 6) ^ __ROR4__(v92, 11);
      v95 = __PAIR64__(v93, __ROR4__(v92, 25));
      v96 = v84.i32[2] + v73 + (v92 & v86 | v79 & ~v92) - 1680079193 + (v94 ^ v95);
      LODWORD(v95) = v93;
      v97 = v96 + v74;
      v98 = ((v95 >> 2) ^ __ROR4__(v93, 13) ^ __ROR4__(v93, 22)) + (v93 & (v87 ^ v80) ^ v87 & v80) + v96;
      HIDWORD(v95) = v97;
      LODWORD(v95) = v96 + v74;
      v99 = v84.i32[3] + v79 + (v97 & v92 | v86 & ~v97) - 1046744716 + ((v95 >> 6) ^ __ROR4__(v97, 11) ^ __ROR4__(v97, 25));
      HIDWORD(v95) = v98;
      LODWORD(v95) = v98;
      v100 = v99 + v80;
      v101 = ((v95 >> 2) ^ __ROR4__(v98, 13) ^ __ROR4__(v98, 22)) + (v98 & (v93 ^ v87) ^ v93 & v87) + v99;
      v102 = &dword_273BA99FC;
      v103 = 31;
      do
      {
        v104 = v103 - 15;
        v105 = (v103 - 14) & 9;
        v106 = *(v222 + v105);
        v107 = *(v222 + ((v103 - 1) & 0xE));
        HIDWORD(v109) = v106;
        LODWORD(v109) = v106;
        v108 = v109 >> 7;
        v111 = __PAIR64__(v107, __ROR4__(v106, 18));
        v110 = v108 ^ v111;
        LODWORD(v111) = v107;
        v112 = v111 >> 17;
        v114 = __PAIR64__(v100, __ROR4__(v107, 19));
        v113 = v112 ^ v114;
        v115 = (v103 - 15) & 8;
        LODWORD(v114) = v100;
        v116 = (v103 - 15) & 8;
        v117 = (v110 ^ (v106 >> 3)) + *(v222 + ((v103 - 6) & 9)) + *(v222 + v115) + (v113 ^ (v107 >> 10));
        v118 = (v114 >> 6) ^ __ROR4__(v100, 11);
        v120 = __PAIR64__(v101, __ROR4__(v100, 25));
        v119 = v118 ^ v120;
        LODWORD(v120) = v101;
        v121 = *(v102 - 6);
        v122 = (v92 & ~v100 | v100 & v97) + v86 + *(v102 - 7) + v119;
        *(v222 + v115) = v117;
        v123 = ((v120 >> 2) ^ __ROR4__(v101, 13) ^ __ROR4__(v101, 22)) + ((v98 ^ v93) & v101 ^ v98 & v93);
        v124 = v122 + v117;
        v125 = v124 + v87;
        HIDWORD(v120) = *(v222 + (v116 | 2u));
        LODWORD(v120) = HIDWORD(v120);
        v126 = v123 + v124;
        v127 = *(v222 + (v103 & 0xF));
        v128 = (v120 >> 7) ^ __ROR4__(HIDWORD(v120), 18) ^ (HIDWORD(v120) >> 3);
        HIDWORD(v120) = v127;
        LODWORD(v120) = v127;
        v129 = v120 >> 17;
        v130 = __PAIR64__(v125, __ROR4__(v127, 19));
        v131 = *(v222 + ((v103 - 5) & 0xALL)) + v106 + (v129 ^ v130 ^ (v127 >> 10));
        LODWORD(v130) = v125;
        v132 = v131 + v128;
        v133 = (v130 >> 6) ^ __ROR4__(v125, 11);
        v135 = __PAIR64__(v126, __ROR4__(v125, 25));
        v134 = v133 ^ v135;
        LODWORD(v135) = v126;
        *(v222 + v105) = v132;
        v136 = v121 + v92 + (v125 & v100 | v97 & ~v125) + v132;
        v137 = (v135 >> 2) ^ __ROR4__(v126, 13);
        v138 = __PAIR64__(v117, __ROR4__(v126, 22));
        v139 = v136 + v134;
        v140 = (v137 ^ v138) + (v126 & (v101 ^ v98) ^ v101 & v98);
        v141 = v139 + v93;
        v142 = *(v222 + (v116 | 3u));
        LODWORD(v138) = v117;
        v143 = v138 >> 17;
        HIDWORD(v138) = v142;
        LODWORD(v138) = v142;
        v144 = (v138 >> 7) ^ __ROR4__(v142, 18);
        v145 = __PAIR64__(v141, __ROR4__(v117, 19));
        v146 = v144 ^ (v142 >> 3);
        v147 = (v103 - 13) & 0xALL;
        v148 = v140 + v139;
        v149 = *(v222 + ((v103 - 4) & 0xBLL)) + *(v222 + v147) + v146 + (v143 ^ v145 ^ (v117 >> 10));
        LODWORD(v145) = v141;
        v150 = (v145 >> 6) ^ __ROR4__(v141, 11);
        v152 = __PAIR64__(v148, __ROR4__(v141, 25));
        v151 = v150 ^ v152;
        *(v222 + v147) = v149;
        v153 = *(v102 - 4);
        LODWORD(v152) = v148;
        v154 = ((v152 >> 2) ^ __ROR4__(v148, 13) ^ __ROR4__(v148, 22)) + (v148 & (v126 ^ v101) ^ v126 & v101);
        v155 = *(v222 + (v116 | 4u));
        v156 = *(v102 - 5) + v97 + v149 + (v141 & v125 | v100 & ~v141) + v151;
        HIDWORD(v152) = v155;
        LODWORD(v152) = v155;
        v157 = v152 >> 7;
        v158 = *(v222 + (v116 | 1u));
        v160 = __PAIR64__(v158, __ROR4__(v155, 18));
        v159 = v157 ^ v160;
        LODWORD(v160) = v158;
        v161 = (v103 - 12) & 0xBLL;
        LODWORD(v147) = (v160 >> 17) ^ __ROR4__(v158, 19) ^ (v158 >> 10);
        v162 = v156 + v98;
        v163 = (v159 ^ (v155 >> 3)) + *(v222 + ((v103 - 3) & 0xC)) + *(v222 + v161) + v147;
        v164 = v154 + v156;
        HIDWORD(v160) = v162;
        LODWORD(v160) = v162;
        v165 = (v160 >> 6) ^ __ROR4__(v162, 11);
        v167 = __PAIR64__(v164, __ROR4__(v162, 25));
        v166 = v165 ^ v167;
        *(v222 + v161) = v163;
        LODWORD(v167) = v164;
        v168 = v153 + v100 + v163 + (v162 & v141 | v125 & ~v162) + v166;
        v169 = ((v167 >> 2) ^ __ROR4__(v164, 13) ^ __ROR4__(v164, 22)) + (v164 & (v148 ^ v126) ^ v148 & v126);
        v170 = v168 + v101;
        v171 = *(v222 + (v116 | 5u));
        HIDWORD(v167) = v171;
        LODWORD(v167) = v171;
        LODWORD(v161) = (v167 >> 7) ^ __ROR4__(v171, 18);
        LODWORD(v115) = *(v222 + (v116 | 2u));
        HIDWORD(v167) = v115;
        LODWORD(v167) = v115;
        v172 = v167 >> 17;
        v173 = __PAIR64__(v170, __ROR4__(v115, 19));
        v174 = (v103 - 11) & 0xC;
        v175 = (v161 ^ (v171 >> 3)) + *(v222 + ((v103 - 2) & 0xDLL)) + *(v222 + v174) + (v172 ^ v173 ^ (v115 >> 10));
        v176 = v169 + v168;
        LODWORD(v173) = v170;
        v177 = (v173 >> 6) ^ __ROR4__(v170, 11);
        v179 = __PAIR64__(v176, __ROR4__(v170, 25));
        v178 = v177 ^ v179;
        *(v222 + v174) = v175;
        LODWORD(v161) = *(v102 - 2);
        LODWORD(v174) = *(v102 - 3) + v175 + v125;
        LODWORD(v179) = v176;
        v180 = ((v179 >> 2) ^ __ROR4__(v176, 13) ^ __ROR4__(v176, 22)) + (v176 & (v164 ^ v148) ^ v164 & v148);
        v181 = v174 + (v170 & v162 | v141 & ~v170) + v178;
        v86 = v181 + v126;
        v182 = *(v222 + (v116 | 6u));
        HIDWORD(v179) = v182;
        LODWORD(v179) = v182;
        LODWORD(v115) = v179 >> 7;
        v183 = *(v222 + (v116 | 3u));
        HIDWORD(v179) = v183;
        LODWORD(v179) = v183;
        v184 = v179 >> 17;
        v185 = v115 ^ __ROR4__(v182, 18) ^ (v182 >> 3);
        v186 = __PAIR64__(v181 + v126, __ROR4__(v183, 19));
        LODWORD(v115) = v184 ^ v186;
        v187 = (v103 - 10) & 0xDLL;
        v87 = v180 + v181;
        v188 = *(v222 + v187) + v107 + v185 + (v115 ^ (v183 >> 10));
        LODWORD(v186) = v86;
        v189 = (v186 >> 6) ^ __ROR4__(v86, 11);
        v191 = __PAIR64__(v87, __ROR4__(v86, 25));
        v190 = v189 ^ v191;
        *(v222 + v187) = v188;
        LODWORD(v191) = v87;
        v192 = v161 + v188 + v141 + (v86 & v170 | v162 & ~v86) + v190;
        v193 = ((v191 >> 2) ^ __ROR4__(v87, 13) ^ __ROR4__(v87, 22)) + (v87 & (v176 ^ v164) ^ v176 & v164);
        LODWORD(v174) = *(v222 + (v116 | 7u));
        v92 = v192 + v148;
        HIDWORD(v191) = v174;
        LODWORD(v191) = v174;
        v194 = v191 >> 7;
        LODWORD(v105) = *(v222 + (v116 | 4u));
        v195 = __PAIR64__(v105, __ROR4__(v174, 18));
        LODWORD(v174) = v194 ^ v195 ^ (v174 >> 3);
        LODWORD(v195) = v105;
        v196 = v195 >> 17;
        v197 = __PAIR64__(v92, __ROR4__(v105, 19));
        v198 = (v103 - 9) & 0xE;
        LODWORD(v174) = *(v222 + v198) + v127 + v174 + (v196 ^ v197 ^ (v105 >> 10));
        v93 = v193 + v192;
        LODWORD(v197) = v92;
        v199 = (v197 >> 6) ^ __ROR4__(v92, 11);
        v201 = __PAIR64__(v93, __ROR4__(v92, 25));
        v200 = v199 ^ v201;
        *(v222 + v198) = v174;
        LODWORD(v201) = v93;
        v202 = *(v102 - 1) + v174 + v162 + (v92 & v86 | v170 & ~v92) + v200;
        v97 = v202 + v164;
        v98 = ((v201 >> 2) ^ __ROR4__(v93, 13) ^ __ROR4__(v93, 22)) + (v93 & (v87 ^ v176) ^ v87 & v176) + v202;
        v203 = *(v222 + (v116 ^ 8u));
        HIDWORD(v201) = v203;
        LODWORD(v201) = v203;
        LODWORD(v174) = v201 >> 7;
        LODWORD(v161) = *(v222 + (v116 | 5u));
        HIDWORD(v201) = v161;
        LODWORD(v201) = v161;
        LODWORD(v105) = v201 >> 17;
        v204 = v174 ^ __ROR4__(v203, 18) ^ (v203 >> 3);
        v205 = __PAIR64__(v97, __ROR4__(v161, 19));
        v206 = (v103 - 8) & 0xF;
        LODWORD(v174) = v105 ^ v205 ^ (v161 >> 10);
        LODWORD(v205) = v97;
        LODWORD(v161) = (v205 >> 6) ^ __ROR4__(v97, 11);
        v207 = *(v222 + v206) + v204 + v117 + v174;
        v208 = __PAIR64__(v98, __ROR4__(v97, 25));
        LODWORD(v174) = v161 ^ v208;
        result = v86 & ~v97;
        *(v222 + v206) = v207;
        v209 = *v102;
        v102 += 8;
        LODWORD(v208) = v98;
        v210 = v209 + v207 + v170 + (v97 & v92 | result) + v174;
        v100 = v210 + v176;
        v101 = ((v208 >> 2) ^ __ROR4__(v98, 13) ^ __ROR4__(v98, 22)) + (v98 & (v93 ^ v87) ^ v93 & v87) + v210;
        v103 += 8;
      }

      while (v104 < 0x38);
      a2 = v220 + 4;
      v3 = v101 + v219;
      v4 = v98 + v218;
      *v211 = v101 + v219;
      v211[1] = v98 + v218;
      v6 = v93 + v217;
      v5 = v87 + v216;
      v211[2] = v93 + v217;
      v211[3] = v87 + v216;
      v8 = v100 + v215;
      v7 = v97 + v214;
      v211[4] = v100 + v215;
      v211[5] = v97 + v214;
      v9 = v92 + v213;
      v10 = v86 + v212;
      v211[6] = v92 + v213;
      v211[7] = v86 + v212;
      a3 = v221 - 1;
    }

    while (v221 != 1);
  }

  return result;
}

uint64_t sha512_block_data_order(uint64_t result, const unsigned __int8 *a2, uint64_t a3)
{
  v122 = result;
  if (a3)
  {
    v4 = *result;
    v3 = *(result + 8);
    v6 = *(result + 16);
    v5 = *(result + 24);
    v8 = *(result + 32);
    v7 = *(result + 40);
    v10 = *(result + 48);
    v9 = *(result + 56);
    do
    {
      v132 = a3;
      v11 = 0;
      v123 = v9;
      v140 = bswap64(*a2);
      v12 = v9 + (v10 & ~v8 | v8 & v7) + v140 + (__ROR8__(v8, 14) ^ __ROR8__(v8, 18) ^ __ROR8__(v8, 41)) + 0x428A2F98D728AE22;
      v127 = v5;
      v13 = v12 + v5;
      v14 = (__ROR8__(v4, 28) ^ __ROR8__(v4, 34) ^ __ROR8__(v4, 39)) + ((v3 ^ v6) & v4 ^ v3 & v6) + v12;
      v15 = bswap64(*(a2 + 1));
      v124 = v10;
      v16 = v10 + v15 + (v13 & v8 | v7 & ~v13) + 0x7137449123EF65CDLL + (__ROR8__(v13, 14) ^ __ROR8__(v13, 18) ^ __ROR8__(v13, 41));
      v128 = v6;
      v17 = v16 + v6;
      v18 = (__ROR8__(v14, 28) ^ __ROR8__(v14, 34) ^ __ROR8__(v14, 39)) + (v14 & (v4 ^ v3) ^ v4 & v3) + v16;
      v19 = bswap64(*(a2 + 2));
      v125 = v7;
      v20 = v7 + v19 + (v17 & v13 | v8 & ~v17) - 0x4A3F043013B2C4D1 + (__ROR8__(v17, 14) ^ __ROR8__(v17, 18) ^ __ROR8__(v17, 41));
      v129 = v3;
      v21 = v20 + v3;
      v22 = (__ROR8__(v18, 28) ^ __ROR8__(v18, 34) ^ __ROR8__(v18, 39)) + (v18 & (v14 ^ v4) ^ v14 & v4) + v20;
      v23 = bswap64(*(a2 + 3));
      v126 = v8;
      v24 = v8 + v23 + (v21 & v17 | v13 & ~v21) - 0x164A245A7E762444 + (__ROR8__(v21, 14) ^ __ROR8__(v21, 18) ^ __ROR8__(v21, 41));
      v130 = v4;
      v25 = v24 + v4;
      v26 = (__ROR8__(v22, 28) ^ __ROR8__(v22, 34) ^ __ROR8__(v22, 39)) + (v22 & (v18 ^ v14) ^ v18 & v14) + v24;
      v27 = bswap64(*(a2 + 4));
      v28 = v13 + v27 + (v25 & v21 | v17 & ~v25) + 0x3956C25BF348B538 + (__ROR8__(v25, 14) ^ __ROR8__(v25, 18) ^ __ROR8__(v25, 41));
      v29 = v28 + v14;
      v30 = (__ROR8__(v26, 28) ^ __ROR8__(v26, 34) ^ __ROR8__(v26, 39)) + (v26 & (v22 ^ v18) ^ v22 & v18) + v28;
      v31 = bswap64(*(a2 + 5));
      v32 = v31 + v17 + (v29 & v25 | v21 & ~v29) + 0x59F111F1B605D019 + (__ROR8__(v29, 14) ^ __ROR8__(v29, 18) ^ __ROR8__(v29, 41));
      v33 = v32 + v18;
      v34 = (__ROR8__(v30, 28) ^ __ROR8__(v30, 34) ^ __ROR8__(v30, 39)) + (v30 & (v26 ^ v22) ^ v26 & v22) + v32;
      v35 = bswap64(*(a2 + 6));
      v36 = v35 + v21 + (v33 & v29 | v25 & ~v33) - 0x6DC07D5B50E6B065 + (__ROR8__(v33, 14) ^ __ROR8__(v33, 18) ^ __ROR8__(v33, 41));
      v37 = v36 + v22;
      v38 = (__ROR8__(v34, 28) ^ __ROR8__(v34, 34) ^ __ROR8__(v34, 39)) + (v34 & (v30 ^ v26) ^ v30 & v26) + v36;
      v139 = bswap64(*(a2 + 7));
      v39 = v139 + v25 + (v37 & v33 | v29 & ~v37) - 0x54E3A12A25927EE8 + (__ROR8__(v37, 14) ^ __ROR8__(v37, 18) ^ __ROR8__(v37, 41));
      v40 = v39 + v26;
      v41 = (__ROR8__(v38, 28) ^ __ROR8__(v38, 34) ^ __ROR8__(v38, 39)) + (v38 & (v34 ^ v30) ^ v34 & v30) + v39;
      v138 = bswap64(*(a2 + 8));
      v42 = v138 + v29 + (v40 & v37 | v33 & ~v40) - 0x27F855675CFCFDBELL + (__ROR8__(v40, 14) ^ __ROR8__(v40, 18) ^ __ROR8__(v40, 41));
      v43 = v42 + v30;
      v44 = (__ROR8__(v41, 28) ^ __ROR8__(v41, 34) ^ __ROR8__(v41, 39)) + (v41 & (v38 ^ v34) ^ v38 & v34) + v42;
      v137 = bswap64(*(a2 + 9));
      v45 = v137 + v33 + (v43 & v40 | v37 & ~v43) + 0x12835B0145706FBELL + (__ROR8__(v43, 14) ^ __ROR8__(v43, 18) ^ __ROR8__(v43, 41));
      v46 = v45 + v34;
      v47 = (__ROR8__(v44, 28) ^ __ROR8__(v44, 34) ^ __ROR8__(v44, 39)) + (v44 & (v41 ^ v38) ^ v41 & v38) + v45;
      v136 = bswap64(*(a2 + 10));
      v48 = v136 + v37 + (v46 & v43 | v40 & ~v46) + 0x243185BE4EE4B28CLL + (__ROR8__(v45 + v34, 14) ^ __ROR8__(v45 + v34, 18) ^ __ROR8__(v46, 41));
      v49 = v48 + v38;
      v50 = (__ROR8__(v47, 28) ^ __ROR8__(v47, 34) ^ __ROR8__(v47, 39)) + (v47 & (v44 ^ v41) ^ v44 & v41) + v48;
      v51 = bswap64(*(a2 + 11));
      v52 = v51 + v40 + (v49 & v46 | v43 & ~v49) + 0x550C7DC3D5FFB4E2 + (__ROR8__(v48 + v38, 14) ^ __ROR8__(v48 + v38, 18) ^ __ROR8__(v49, 41));
      v53 = v52 + v41;
      v54 = (__ROR8__(v50, 28) ^ __ROR8__(v50, 34) ^ __ROR8__(v50, 39)) + (v50 & (v47 ^ v44) ^ v47 & v44) + v52;
      v55 = bswap64(*(a2 + 12));
      v56 = v55 + v43 + (v53 & v49 | v46 & ~v53) + 0x72BE5D74F27B896FLL + (__ROR8__(v53, 14) ^ __ROR8__(v53, 18) ^ __ROR8__(v53, 41));
      v57 = v56 + v44;
      v58 = (__ROR8__(v54, 28) ^ __ROR8__(v54, 34) ^ __ROR8__(v54, 39)) + (v54 & (v50 ^ v47) ^ v50 & v47) + v56;
      v59 = bswap64(*(a2 + 13));
      v60 = v59 + v46 + (v57 & v53 | v49 & ~v57) - 0x7F214E01C4E9694FLL + (__ROR8__(v56 + v44, 14) ^ __ROR8__(v56 + v44, 18) ^ __ROR8__(v57, 41));
      v61 = v60 + v47;
      v62 = (__ROR8__(v58, 28) ^ __ROR8__(v58, 34) ^ __ROR8__(v58, 39)) + (v58 & (v54 ^ v50) ^ v54 & v50) + v60;
      v131 = a2;
      v63 = bswap64(*(a2 + 14));
      v64 = v63 + v49 + (v61 & v57 | v53 & ~v61) - 0x6423F958DA38EDCBLL + (__ROR8__(v60 + v47, 14) ^ __ROR8__(v60 + v47, 18) ^ __ROR8__(v61, 41));
      result = v64 + v50;
      v65 = (__ROR8__(v62, 28) ^ __ROR8__(v62, 34) ^ __ROR8__(v62, 39)) + (v62 & (v58 ^ v54) ^ v58 & v54) + v64;
      v66 = bswap64(*(a2 + 15));
      v67 = v66 + v53 + (result & v61 | v57 & ~result) - 0x3E640E8B3096D96CLL + (__ROR8__(result, 14) ^ __ROR8__(result, 18) ^ __ROR8__(result, 41));
      v68 = v67 + v54;
      v69 = (__ROR8__(v65, 28) ^ __ROR8__(v65, 34) ^ __ROR8__(v65, 39)) + (v65 & (v62 ^ v58) ^ v62 & v58) + v67;
      v70 = &unk_273BA9B98;
      do
      {
        v135 = v11;
        v133 = v51;
        v71 = (__ROR8__(v15, 1) ^ __ROR8__(v15, 8) ^ (v15 >> 7)) + v140 + v137 + (__ROR8__(v63, 19) ^ __ROR8__(v63, 61) ^ (v63 >> 6));
        v72 = v71 + v57 + (v61 & ~v68 | v68 & result) + (__ROR8__(v68, 14) ^ __ROR8__(v68, 18) ^ __ROR8__(v68, 41)) + *(v70 - 15);
        v73 = v72 + v58;
        v74 = v72 + ((v65 ^ v62) & v69 ^ v65 & v62) + (__ROR8__(v69, 28) ^ __ROR8__(v69, 34) ^ __ROR8__(v69, 39));
        v75 = (__ROR8__(v19, 1) ^ __ROR8__(v19, 8) ^ (v19 >> 7)) + v15 + v136 + (__ROR8__(v66, 19) ^ __ROR8__(v66, 61) ^ (v66 >> 6));
        v76 = v75 + v61 + *(v70 - 14) + (v73 & v68 | result & ~v73) + (__ROR8__(v73, 14) ^ __ROR8__(v73, 18) ^ __ROR8__(v73, 41));
        v77 = v76 + v62;
        v78 = v76 + (v74 & (v69 ^ v65) ^ v69 & v65) + (__ROR8__(v74, 28) ^ __ROR8__(v74, 34) ^ __ROR8__(v74, 39));
        v79 = (__ROR8__(v23, 1) ^ __ROR8__(v23, 8) ^ (v23 >> 7)) + v19 + v51 + (__ROR8__(v71, 19) ^ __ROR8__(v71, 61) ^ (v71 >> 6));
        v80 = v79 + result + *(v70 - 13) + (v77 & v73 | v68 & ~v77) + (__ROR8__(v77, 14) ^ __ROR8__(v77, 18) ^ __ROR8__(v77, 41));
        v81 = v80 + v65;
        v82 = v80 + (v78 & (v74 ^ v69) ^ v74 & v69) + (__ROR8__(v78, 28) ^ __ROR8__(v78, 34) ^ __ROR8__(v78, 39));
        v83 = v75;
        v134 = v75;
        v84 = (__ROR8__(v27, 1) ^ __ROR8__(v27, 8) ^ (v27 >> 7)) + v23 + v55 + (__ROR8__(v75, 19) ^ __ROR8__(v75, 61) ^ (v75 >> 6));
        v85 = v84 + v68 + *(v70 - 12) + (v81 & (v76 + v62) | v73 & ~v81) + (__ROR8__(v81, 14) ^ __ROR8__(v81, 18) ^ __ROR8__(v81, 41));
        v86 = v85 + v69;
        v87 = v85 + (v82 & (v78 ^ v74) ^ v78 & v74) + (__ROR8__(v82, 28) ^ __ROR8__(v82, 34) ^ __ROR8__(v82, 39));
        v27 += (__ROR8__(v31, 1) ^ __ROR8__(v31, 8) ^ (v31 >> 7)) + v59 + (__ROR8__(v79, 19) ^ __ROR8__(v79, 61) ^ (v79 >> 6));
        v88 = v27 + v73 + *(v70 - 11) + (v86 & v81 | (v76 + v62) & ~v86) + (__ROR8__(v85 + v69, 14) ^ __ROR8__(v85 + v69, 18) ^ __ROR8__(v85 + v69, 41));
        v89 = v88 + v74;
        v90 = v88 + (v87 & (v82 ^ v78) ^ v82 & v78) + (__ROR8__(v87, 28) ^ __ROR8__(v87, 34) ^ __ROR8__(v87, 39));
        v31 += (__ROR8__(v35, 1) ^ __ROR8__(v35, 8) ^ (v35 >> 7)) + v63 + (__ROR8__(v84, 19) ^ __ROR8__(v84, 61) ^ (v84 >> 6));
        v91 = *(v70 - 10) + v77 + v31 + (v89 & v86 | v81 & ~v89) + (__ROR8__(v88 + v74, 14) ^ __ROR8__(v88 + v74, 18) ^ __ROR8__(v89, 41));
        v92 = v91 + v78;
        v93 = v91 + (v90 & (v87 ^ v82) ^ v87 & v82) + (__ROR8__(v90, 28) ^ __ROR8__(v90, 34) ^ __ROR8__(v90, 39));
        v35 += (__ROR8__(v139, 1) ^ __ROR8__(v139, 8) ^ (v139 >> 7)) + v66 + (__ROR8__(v27, 19) ^ __ROR8__(v27, 61) ^ (v27 >> 6));
        v94 = v35 + *(v70 - 9) + v81 + (v92 & v89 | v86 & ~v92) + (__ROR8__(v91 + v78, 14) ^ __ROR8__(v91 + v78, 18) ^ __ROR8__(v92, 41));
        v95 = v94 + v82;
        v96 = v94 + (v93 & (v90 ^ v87) ^ v90 & v87) + (__ROR8__(v93, 28) ^ __ROR8__(v93, 34) ^ __ROR8__(v93, 39));
        v97 = (__ROR8__(v138, 1) ^ __ROR8__(v138, 8) ^ (v138 >> 7)) + v139 + v71 + (__ROR8__(v31, 19) ^ __ROR8__(v31, 61) ^ (v31 >> 6));
        v98 = v97 + *(v70 - 8) + v86 + (v95 & v92 | v89 & ~v95) + (__ROR8__(v94 + v82, 14) ^ __ROR8__(v94 + v82, 18) ^ __ROR8__(v95, 41));
        v99 = v98 + v87;
        v100 = v98 + (v96 & (v93 ^ v90) ^ v93 & v90) + (__ROR8__(v96, 28) ^ __ROR8__(v96, 34) ^ __ROR8__(v96, 39));
        v101 = (__ROR8__(v137, 1) ^ __ROR8__(v137, 8) ^ (v137 >> 7)) + v138 + v83 + (__ROR8__(v35, 19) ^ __ROR8__(v35, 61) ^ (v35 >> 6));
        v102 = v101 + *(v70 - 7) + v89 + (v99 & v95 | v92 & ~v99) + (__ROR8__(v98 + v87, 14) ^ __ROR8__(v98 + v87, 18) ^ __ROR8__(v98 + v87, 41));
        v103 = v102 + v90;
        v104 = v102 + (v100 & (v96 ^ v93) ^ v96 & v93) + (__ROR8__(v100, 28) ^ __ROR8__(v100, 34) ^ __ROR8__(v100, 39));
        v105 = (__ROR8__(v136, 1) ^ __ROR8__(v136, 8) ^ (v136 >> 7)) + v137 + v79 + (__ROR8__(v97, 19) ^ __ROR8__(v97, 61) ^ (v97 >> 6));
        v106 = v105 + *(v70 - 6) + v92 + (v103 & v99 | v95 & ~v103) + (__ROR8__(v102 + v90, 14) ^ __ROR8__(v102 + v90, 18) ^ __ROR8__(v102 + v90, 41));
        v107 = v106 + v93;
        v108 = v106 + (v104 & (v100 ^ v96) ^ v100 & v96) + (__ROR8__(v104, 28) ^ __ROR8__(v104, 34) ^ __ROR8__(v104, 39));
        v109 = (__ROR8__(v133, 1) ^ __ROR8__(v133, 8) ^ (v133 >> 7)) + v136 + v84 + (__ROR8__(v101, 19) ^ __ROR8__(v101, 61) ^ (v101 >> 6));
        v110 = v109 + *(v70 - 5) + v95 + (v107 & v103 | v99 & ~v107) + (__ROR8__(v106 + v93, 14) ^ __ROR8__(v106 + v93, 18) ^ __ROR8__(v107, 41));
        v111 = v110 + v96;
        v112 = v110 + (v108 & (v104 ^ v100) ^ v104 & v100) + (__ROR8__(v108, 28) ^ __ROR8__(v108, 34) ^ __ROR8__(v108, 39));
        v137 = v105;
        v51 = (__ROR8__(v55, 1) ^ __ROR8__(v55, 8) ^ (v55 >> 7)) + v133 + v27 + (__ROR8__(v105, 19) ^ __ROR8__(v105, 61) ^ (v105 >> 6));
        v113 = v51 + *(v70 - 4) + v99 + (v111 & v107 | v103 & ~v111) + (__ROR8__(v110 + v96, 14) ^ __ROR8__(v110 + v96, 18) ^ __ROR8__(v111, 41));
        v114 = v113 + v100;
        v115 = v113 + (v112 & (v108 ^ v104) ^ v108 & v104) + (__ROR8__(v112, 28) ^ __ROR8__(v112, 34) ^ __ROR8__(v112, 39));
        v136 = v109;
        v55 += (__ROR8__(v59, 1) ^ __ROR8__(v59, 8) ^ (v59 >> 7)) + v31 + (__ROR8__(v109, 19) ^ __ROR8__(v109, 61) ^ (v109 >> 6));
        v116 = v55 + *(v70 - 3) + v103 + (v114 & v111 | v107 & ~v114) + (__ROR8__(v113 + v100, 14) ^ __ROR8__(v113 + v100, 18) ^ __ROR8__(v114, 41));
        v57 = v116 + v104;
        v58 = v116 + (v115 & (v112 ^ v108) ^ v112 & v108) + (__ROR8__(v115, 28) ^ __ROR8__(v115, 34) ^ __ROR8__(v115, 39));
        v59 += (__ROR8__(v63, 1) ^ __ROR8__(v63, 8) ^ (v63 >> 7)) + v35 + (__ROR8__(v51, 19) ^ __ROR8__(v51, 61) ^ (v51 >> 6));
        v117 = v59 + *(v70 - 2) + v107 + (v57 & v114 | v111 & ~v57) + (__ROR8__(v116 + v104, 14) ^ __ROR8__(v116 + v104, 18) ^ __ROR8__(v116 + v104, 41));
        v61 = v117 + v108;
        v62 = v117 + (v58 & (v115 ^ v112) ^ v115 & v112) + (__ROR8__(v58, 28) ^ __ROR8__(v58, 34) ^ __ROR8__(v58, 39));
        v139 = v97;
        v118 = (__ROR8__(v66, 1) ^ __ROR8__(v66, 8) ^ (v66 >> 7)) + v63 + v97;
        v19 = v79;
        v63 = v118 + (__ROR8__(v55, 19) ^ __ROR8__(v55, 61) ^ (v55 >> 6));
        v119 = v63 + *(v70 - 1) + v111 + (v61 & v57 | v114 & ~v61) + (__ROR8__(v61, 14) ^ __ROR8__(v61, 18) ^ __ROR8__(v61, 41));
        result = v119 + v112;
        v65 = v119 + (v62 & (v58 ^ v115) ^ v58 & v115) + (__ROR8__(v62, 28) ^ __ROR8__(v62, 34) ^ __ROR8__(v62, 39));
        v140 = v71;
        v138 = v101;
        v120 = (__ROR8__(v71, 1) ^ __ROR8__(v71, 8) ^ (v71 >> 7)) + v66 + v101;
        v23 = v84;
        v66 = v120 + (__ROR8__(v59, 19) ^ __ROR8__(v59, 61) ^ (v59 >> 6));
        v121 = v66 + *v70 + v114 + (result & v61 | v57 & ~result) + (__ROR8__(result, 14) ^ __ROR8__(result, 18) ^ __ROR8__(result, 41));
        v68 = v121 + v115;
        v69 = v121 + (v65 & (v62 ^ v58) ^ v62 & v58) + (__ROR8__(v65, 28) ^ __ROR8__(v65, 34) ^ __ROR8__(v65, 39));
        v15 = v134;
        v11 = v135 + 16;
        v70 += 16;
      }

      while ((v135 + 16) < 0x40);
      v4 = v69 + v130;
      v3 = v65 + v129;
      *v122 = v69 + v130;
      v122[1] = v65 + v129;
      v6 = v62 + v128;
      v5 = v58 + v127;
      v122[2] = v62 + v128;
      v122[3] = v58 + v127;
      v8 = v68 + v126;
      v7 = result + v125;
      v122[4] = v68 + v126;
      v122[5] = result + v125;
      v10 = v61 + v124;
      v9 = v57 + v123;
      a2 = v131 + 128;
      v122[6] = v61 + v124;
      v122[7] = v57 + v123;
      a3 = v132 - 1;
    }

    while (v132 != 1);
  }

  return result;
}

uint64_t CRYPTO_tls1_prf(const env_md_st *a1, int8x16_t *a2, size_t a3, const unsigned __int8 *a4, ENGINE *a5, const char *a6, uint64_t a7, const unsigned __int8 *a8, unint64_t a9, const unsigned __int8 *a10, unint64_t a11)
{
  if (!a3)
  {
    return 1;
  }

  bzero(a2, a3);
  if (a1 == &evp_md_md5_sha1)
  {
    v18 = a5 >> 1;
    a5 = (a5 - (a5 >> 1));
    result = tls1_P_hash(a2, a3, &evp_md_md5, a4, a5, a6, a7, a8, a9, a10, a11);
    if (!result)
    {
      return result;
    }

    if (pthread_once(&EVP_sha1_once, EVP_sha1_init))
    {
      abort();
    }

    a4 += v18;
    a1 = &EVP_sha1_storage;
  }

  return tls1_P_hash(a2, a3, a1, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t tls1_P_hash(int8x16_t *a1, unint64_t a2, const env_md_st *md, const unsigned __int8 *key, ENGINE *len, const char *a6, uint64_t a7, const unsigned __int8 *a8, unint64_t a9, const unsigned __int8 *a10, unint64_t a11)
{
  v75 = *MEMORY[0x277D85DE8];
  pkey_type = md->pkey_type;
  *&ctx.key[116] = 0u;
  *v66 = 0u;
  memset(v67, 0, 72);
  memset(&ctx.key[4], 0, 104);
  memset(&ctx, 0, 104);
  HMAC_Init_ex(&ctx, key, len, md, len);
  if (v17 && EVP_MD_CTX_copy_ex((v67 + 8), &ctx.i_ctx) && EVP_MD_CTX_copy_ex((&v67[2] + 8), &ctx.o_ctx) && EVP_MD_CTX_copy_ex(&ctx.key[124], &ctx.md_ctx))
  {
    *&ctx.key[116] = ctx.md;
    (*(*&ctx.key[124] + 24))(&ctx.key[124]);
    (*(*&ctx.key[124] + 24))(&ctx.key[124], a8, a9);
    (*(*&ctx.key[124] + 24))(&ctx.key[124], a10, a11);
    (*(*&ctx.key[124] + 32))(&ctx.key[124], v74);
    v18 = *(*&ctx.key[124] + 4);
    v19 = *(*&ctx.key[124] + 44);
    if (v19)
    {
      bzero(v66[0], v19);
    }

    if (EVP_MD_CTX_copy_ex(&ctx.key[124], (&v67[2] + 8)))
    {
      (*(*&ctx.key[124] + 24))(&ctx.key[124], v74, v18);
      (*(*&ctx.key[124] + 32))(&ctx.key[124], &v70);
      v20 = *(*&ctx.key[124] + 4);
      v21 = *(*&ctx.key[124] + 44);
      if (v21)
      {
        bzero(v66[0], v21);
      }

      if (EVP_MD_CTX_copy_ex((v67 + 8), &ctx.i_ctx))
      {
        while (EVP_MD_CTX_copy_ex((&v67[2] + 8), &ctx.o_ctx) && EVP_MD_CTX_copy_ex(&ctx.key[124], &ctx.md_ctx))
        {
          *&ctx.key[116] = ctx.md;
          (*(*&ctx.key[124] + 24))(&ctx.key[124], &v70, v20);
          if (a2 > pkey_type)
          {
            if (!EVP_MD_CTX_copy_ex(&ctx.key[44], (v67 + 8)) || !EVP_MD_CTX_copy_ex(&ctx.key[76], (&v67[2] + 8)) || !EVP_MD_CTX_copy_ex(&ctx.key[12], &ctx.key[124]))
            {
              break;
            }

            *&ctx.key[4] = *&ctx.key[116];
          }

          (*(*&ctx.key[124] + 24))(&ctx.key[124], a6, a7);
          (*(*&ctx.key[124] + 24))(&ctx.key[124], a8, a9);
          (*(*&ctx.key[124] + 24))(&ctx.key[124], a10, a11);
          (*(*&ctx.key[124] + 32))(&ctx.key[124], v74);
          v22 = *(*&ctx.key[124] + 4);
          v23 = *(*&ctx.key[124] + 44);
          if (v23)
          {
            bzero(v66[0], v23);
          }

          if (!EVP_MD_CTX_copy_ex(&ctx.key[124], (&v67[2] + 8)))
          {
            break;
          }

          (*(*&ctx.key[124] + 24))(&ctx.key[124], v74, v22);
          (*(*&ctx.key[124] + 32))(&ctx.key[124], v68);
          v24 = *(*&ctx.key[124] + 4);
          v25 = *(*&ctx.key[124] + 44);
          if (v25)
          {
            bzero(v66[0], v25);
          }

          if (a2 < v24)
          {
            v24 = a2;
          }

          if (v24)
          {
            if (v24 < 8)
            {
              v26 = 0;
LABEL_39:
              v36 = v24 - v26;
              v37 = &a1->u8[v26];
              v38 = &v68[v26];
              do
              {
                v39 = *v38++;
                *v37++ ^= v39;
                --v36;
              }

              while (v36);
              goto LABEL_41;
            }

            if (v24 >= 0x20)
            {
              v26 = v24 & 0xFFFFFFE0;
              v27 = a1 + 1;
              v28 = v26;
              v29 = &v69;
              do
              {
                v30 = veorq_s8(*v27, *v29);
                v27[-1] = veorq_s8(v27[-1], v29[-1]);
                *v27 = v30;
                v29 += 2;
                v27 += 2;
                v28 -= 32;
              }

              while (v28);
              if (v24 == v26)
              {
                goto LABEL_41;
              }

              if ((v24 & 0x18) == 0)
              {
                goto LABEL_39;
              }
            }

            else
            {
              v26 = 0;
            }

            v31 = v26;
            v26 = v24 & 0xFFFFFFF8;
            v32 = &v68[v31];
            v33 = &a1->i8[v31];
            v34 = v31 - v26;
            do
            {
              v35 = *v32++;
              *v33 = veor_s8(*v33, v35);
              ++v33;
              v34 += 8;
            }

            while (v34);
            if (v24 != v26)
            {
              goto LABEL_39;
            }
          }

LABEL_41:
          a2 -= v24;
          if (!a2)
          {
            v43 = 1;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v44 = *&v67[1];
            if (*&v67[1])
            {
              goto LABEL_48;
            }

            goto LABEL_51;
          }

          (*(*&ctx.key[12] + 32))(&ctx.key[12], v74);
          v40 = *(*&ctx.key[12] + 4);
          v41 = *(*&ctx.key[12] + 44);
          if (v41)
          {
            bzero(*&ctx.key[20], v41);
          }

          if (EVP_MD_CTX_copy_ex(&ctx.key[12], &ctx.key[76]))
          {
            (*(*&ctx.key[12] + 24))(&ctx.key[12], v74, v40);
            (*(*&ctx.key[12] + 32))(&ctx.key[12], &v70);
            v20 = *(*&ctx.key[12] + 4);
            v42 = *(*&ctx.key[12] + 44);
            if (v42)
            {
              bzero(*&ctx.key[20], v42);
            }

            a1 = (a1 + v24);
            if (EVP_MD_CTX_copy_ex((v67 + 8), &ctx.i_ctx))
            {
              continue;
            }
          }

          break;
        }
      }
    }
  }

  v43 = 0;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v44 = *&v67[1];
  if (*&v67[1])
  {
LABEL_48:
    v46 = *(v44 - 8);
    v45 = (v44 - 8);
    v47 = v46 + 8;
    if (v46 != -8)
    {
      bzero(v45, v47);
    }

    free(v45);
  }

LABEL_51:
  if (*&v67[2])
  {
    (**&v67[2])(*(&v67[1] + 1));
  }

  memset(v67 + 8, 0, 32);
  if (*&v67[3])
  {
    v49 = (*&v67[3] - 8);
    v48 = *(*&v67[3] - 8);
    if (v48 != -8)
    {
      bzero(v49, v48 + 8);
    }

    free(v49);
  }

  if (*&v67[4])
  {
    (**&v67[4])(*(&v67[3] + 1));
  }

  memset(&v67[2] + 8, 0, 32);
  if (v66[0])
  {
    v51 = v66[0] - 8;
    v50 = *(v66[0] - 1);
    if (v50 != -8)
    {
      bzero(v51, v50 + 8);
    }

    free(v51);
  }

  if (*&v67[0])
  {
    (**&v67[0])(v66[1]);
  }

  memset(v67, 0, 72);
  *&ctx.key[116] = 0u;
  *v66 = 0u;
  if (*&ctx.key[52])
  {
    v53 = (*&ctx.key[52] - 8);
    v52 = *(*&ctx.key[52] - 8);
    if (v52 != -8)
    {
      bzero(v53, v52 + 8);
    }

    free(v53);
  }

  if (*&ctx.key[68])
  {
    (**&ctx.key[68])(*&ctx.key[60]);
  }

  memset(&ctx.key[44], 0, 32);
  if (*&ctx.key[84])
  {
    v55 = (*&ctx.key[84] - 8);
    v54 = *(*&ctx.key[84] - 8);
    if (v54 != -8)
    {
      bzero(v55, v54 + 8);
    }

    free(v55);
  }

  if (*&ctx.key[100])
  {
    (**&ctx.key[100])(*&ctx.key[92]);
  }

  memset(&ctx.key[76], 0, 32);
  if (*&ctx.key[20])
  {
    v57 = (*&ctx.key[20] - 8);
    v56 = *(*&ctx.key[20] - 8);
    if (v56 != -8)
    {
      bzero(v57, v56 + 8);
    }

    free(v57);
  }

  if (*&ctx.key[36])
  {
    (**&ctx.key[36])(*&ctx.key[28]);
  }

  memset(&ctx.key[4], 0, 104);
  if (ctx.i_ctx.engine)
  {
    v59 = ctx.i_ctx.engine - 8;
    v58 = *(ctx.i_ctx.engine - 1);
    if (v58 != -8)
    {
      bzero(v59, v58 + 8);
    }

    free(v59);
  }

  if (ctx.i_ctx.md_data)
  {
    (*ctx.i_ctx.md_data)(ctx.i_ctx.flags);
  }

  memset(&ctx.i_ctx, 0, sizeof(ctx.i_ctx));
  if (ctx.o_ctx.engine)
  {
    v61 = ctx.o_ctx.engine - 8;
    v60 = *(ctx.o_ctx.engine - 1);
    if (v60 != -8)
    {
      bzero(v61, v60 + 8);
    }

    free(v61);
  }

  if (ctx.o_ctx.md_data)
  {
    (*ctx.o_ctx.md_data)(ctx.o_ctx.flags);
  }

  memset(&ctx.o_ctx, 0, sizeof(ctx.o_ctx));
  if (ctx.md_ctx.engine)
  {
    v63 = ctx.md_ctx.engine - 8;
    v62 = *(ctx.md_ctx.engine - 1);
    if (v62 != -8)
    {
      bzero(v63, v62 + 8);
    }

    free(v63);
  }

  if (ctx.md_ctx.md_data)
  {
    (*ctx.md_ctx.md_data)(ctx.md_ctx.flags);
  }

  return v43;
}

uint64_t CRYPTO_tls13_hkdf_expand_label(uint64_t a1, uint64_t a2, EVP_MD *a3, void *a4, ENGINE *a5, const void *a6, size_t a7, const void *a8, size_t a9)
{
  v9 = a7 + a9 + 10;
  v32 = 0u;
  *v33 = 0u;
  v34 = 0u;
  if (v9 >= 0xFFFFFFFFFFFFFFF8)
  {
    v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v11 = 65;
    v12 = 217;
LABEL_3:
    ERR_put_error(14, 0, v11, v10, v12);
    goto LABEL_19;
  }

  v21 = malloc_type_malloc(a7 + a9 + 18, 0xB4E622C9uLL);
  if (v21)
  {
    *v21 = v9;
    v22 = v21 + 1;
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    if (v9)
    {
      goto LABEL_19;
    }

    v22 = 0;
  }

  BYTE8(v32) = 0;
  *&v32 = 0;
  v33[0] = v22;
  v33[1] = 0;
  *&v34 = v9;
  BYTE8(v34) = 1;
  v31[0] = 0;
  if (!CBB_add_space(&v32, v31, 2))
  {
    goto LABEL_19;
  }

  *(v31[0] + 1) = a2;
  *v31[0] = BYTE1(a2);
  if (!CBB_add_u8_length_prefixed(&v32, v31))
  {
    goto LABEL_19;
  }

  v35 = 0;
  if (!CBB_add_space(v31, &v35, 6))
  {
    goto LABEL_19;
  }

  v23 = v35;
  v35[2] = 8243;
  *v23 = 829647988;
  v35 = 0;
  if (!CBB_add_space(v31, &v35, a7))
  {
    goto LABEL_19;
  }

  if (a7)
  {
    memcpy(v35, a6, a7);
  }

  if (!CBB_add_u8_length_prefixed(&v32, v31))
  {
    goto LABEL_19;
  }

  v35 = 0;
  if (!CBB_add_space(v31, &v35, a9))
  {
    goto LABEL_19;
  }

  if (a9)
  {
    memcpy(v35, a8, a9);
  }

  if (BYTE8(v32))
  {
    v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bytestring/cbb.cc";
    v11 = 66;
    v12 = 126;
    goto LABEL_3;
  }

  if (!CBB_flush(&v32))
  {
LABEL_19:
    if (!BYTE8(v32) && (BYTE8(v34) & 1) != 0 && v33[0])
    {
      v25 = v33[0] - 8;
      v24 = *(v33[0] - 1);
      if (v24 != -8)
      {
        bzero(v25, v24 + 8);
      }

      v26 = 0;
LABEL_25:
      free(v25);
      return v26;
    }

    return 0;
  }

  v28 = v33[0];
  v33[0] = 0;
  result = HKDF_expand(a1, a2, a3, a4, a5, v28, v33[1]);
  if (v28)
  {
    v26 = result;
    v29 = *(v28 - 1);
    v25 = (v28 - 1);
    v30 = v29 + 8;
    if (v29 != -8)
    {
      bzero(v25, v30);
    }

    goto LABEL_25;
  }

  return result;
}

uint64_t *aes_nohw_sub_bytes(uint64_t *result)
{
  v1 = result[6];
  v2 = result[7];
  v3 = result[4];
  v4 = result[2];
  v5 = v4 ^ v3;
  v6 = result[1];
  v7 = v6 ^ v2;
  v8 = v3 ^ v2;
  v9 = v4 ^ v2;
  v10 = result[5] ^ v1;
  v11 = *result ^ v10;
  v12 = v11 ^ v3;
  v13 = v6 ^ v2 ^ v5;
  v63 = v11 ^ v2;
  v14 = v11 ^ v6;
  v15 = v14 ^ v4 ^ v2;
  v16 = v13 ^ result[3];
  v17 = v16 ^ v4;
  v18 = v16 ^ v1;
  v19 = v17 ^ v10;
  v20 = v18 ^ v8;
  v21 = v18 ^ v8 ^ *result;
  v22 = v18 ^ v8 ^ v17 ^ v10;
  v23 = v18 ^ v8 ^ v10;
  v24 = (v18 ^ v8) & v8;
  v25 = v22 & v5 ^ v24;
  v26 = v24 ^ v19 & v9;
  v27 = v18 ^ v17 & v13 ^ (v17 ^ *result) & v15 ^ v25;
  v28 = v12 & *result ^ v9 ^ v17 & v13 ^ v19 ^ v26;
  v29 = v14 & v11 ^ v7 ^ v23 & v7 ^ v25;
  v30 = v21 & (v11 ^ v2) ^ v2 ^ v23 & v7 ^ v26;
  v31 = v30 ^ v23;
  v32 = v27 ^ v28;
  v33 = (v29 ^ v23) & v27;
  v34 = v33 ^ v30 ^ v23;
  v35 = v34 & v32 ^ v28;
  v36 = (v33 ^ v28) & (v30 ^ v29);
  v37 = v36 ^ v31;
  v38 = (v36 ^ v33) & v31;
  v39 = v38 ^ v29 ^ v23;
  v40 = (v38 ^ v34) & v35 ^ v32;
  v41 = v40 ^ v39 ^ v37;
  v42 = v41 ^ v37 ^ v35;
  v43 = (v39 ^ v37) & (v17 ^ *result);
  v44 = v37 & *result;
  v45 = (v40 ^ v35) & v23;
  v46 = v40 & v11;
  v47 = v35 & v21;
  v48 = v42 & v22;
  v49 = (v39 ^ v37) & v15;
  v50 = (v40 ^ v35) & v7;
  v51 = v42 & v5;
  v52 = v51 ^ (v37 ^ v35) & v8;
  v53 = v49 ^ v37 & v12;
  v54 = v40 & v14 ^ v47;
  v55 = v49 ^ v39 & v13;
  v56 = v45 ^ v39 & v17;
  v57 = v50 ^ v44 ^ v56;
  v58 = v45 ^ (v37 ^ v35) & v20 ^ v48;
  v59 = v48 ^ v41 & v19 ^ v52 ^ v46;
  v60 = v55 ^ v52 ^ v46;
  v61 = v58 ^ v46;
  v62 = v57 ^ v35 & v63 ^ v59;
  *result = v54 ^ v52 ^ ~v57;
  result[1] = v54 ^ v50 ^ ~v59;
  result[2] = v53 ^ v62;
  result[3] = v47 ^ v44 ^ v60 ^ v43;
  result[4] = v60 ^ v43 ^ v56;
  result[5] = v61 ^ v41 & v9 ^ v51 ^ ~v62;
  result[6] = v61 ^ ~(v60 ^ v43 ^ v56);
  result[7] = v60 ^ v58;
  return result;
}

int8x16_t aes_nohw_shift_rows(int8x16_t *a1)
{
  v1.i64[0] = 0xF000F000F000FLL;
  v1.i64[1] = 0xF000F000F000FLL;
  v2 = a1[1];
  v3.i64[0] = 0xF000F000F000F0;
  v3.i64[1] = 0xF000F000F000F0;
  v4 = vandq_s8(*a1, v3);
  v5.i64[0] = 0xF000F000F000F00;
  v5.i64[1] = 0xF000F000F000F00;
  v6 = vandq_s8(*a1, v5);
  v7.i64[0] = 0xF000F000F000F000;
  v7.i64[1] = 0xF000F000F000F000;
  v8 = vandq_s8(*a1, v7);
  v9 = vorrq_s8(vorrq_s8(vsraq_n_u64(vshlq_n_s64(v6, 0x20uLL), v6, 0x20uLL), vandq_s8(*a1, v1)), vorrq_s8(vsraq_n_u64(vshlq_n_s64(v8, 0x10uLL), v8, 0x30uLL), vsraq_n_u64(vshlq_n_s64(v4, 0x30uLL), v4, 0x10uLL)));
  v10 = vandq_s8(v2, v1);
  v11 = vandq_s8(v2, v3);
  v12 = vandq_s8(v2, v5);
  v13 = vandq_s8(v2, v7);
  *a1 = v9;
  a1[1] = vorrq_s8(vorrq_s8(vsraq_n_u64(vshlq_n_s64(v12, 0x20uLL), v12, 0x20uLL), v10), vorrq_s8(vsraq_n_u64(vshlq_n_s64(v13, 0x10uLL), v13, 0x30uLL), vsraq_n_u64(vshlq_n_s64(v11, 0x30uLL), v11, 0x10uLL)));
  v14 = a1[2];
  v15 = a1[3];
  v16 = vandq_s8(v14, v3);
  v17 = vandq_s8(v14, v5);
  v18 = vandq_s8(v14, v7);
  v19 = vorrq_s8(vorrq_s8(vsraq_n_u64(vshlq_n_s64(v17, 0x20uLL), v17, 0x20uLL), vandq_s8(v14, v1)), vorrq_s8(vsraq_n_u64(vshlq_n_s64(v18, 0x10uLL), v18, 0x30uLL), vsraq_n_u64(vshlq_n_s64(v16, 0x30uLL), v16, 0x10uLL)));
  v20 = vandq_s8(v15, v1);
  v21 = vandq_s8(v15, v3);
  v22 = vandq_s8(v15, v5);
  v23 = vandq_s8(v15, v7);
  result = vorrq_s8(vorrq_s8(vsraq_n_u64(vshlq_n_s64(v22, 0x20uLL), v22, 0x20uLL), v20), vorrq_s8(vsraq_n_u64(vshlq_n_s64(v23, 0x10uLL), v23, 0x30uLL), vsraq_n_u64(vshlq_n_s64(v21, 0x30uLL), v21, 0x10uLL)));
  a1[2] = v19;
  a1[3] = result;
  return result;
}

int8x16_t aes_nohw_mix_columns(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = (*a1 >> 4) & 0xFFF0FFF0FFF0FFFLL | (*a1 << 12) & 0xF000F000F000F000;
  v5 = v4 ^ *a1;
  v6 = (v1 >> 4) & 0xFFF0FFF0FFF0FFFLL | (v1 << 12) & 0xF000F000F000F000;
  v7 = v6 ^ v1;
  v8 = (v2 >> 4) & 0xFFF0FFF0FFF0FFFLL | (v2 << 12) & 0xF000F000F000F000;
  v9 = v8 ^ v2;
  v10 = (v3 >> 4) & 0xFFF0FFF0FFF0FFFLL | (v3 << 12) & 0xF000F000F000F000;
  v11 = v10 ^ v3;
  v12 = *(a1 + 16);
  v13 = *(a1 + 32);
  v14.i64[0] = 0xF000F000F000F000;
  v14.i64[1] = 0xF000F000F000F000;
  v15 = vbslq_s8(v14, vshrq_n_u64(v12, 4uLL), vshlq_n_s64(v12, 0xCuLL));
  v16 = veorq_s8(v15, v12);
  v17 = vdupq_laneq_s64(v16, 1);
  v18 = vbslq_s8(v14, vshrq_n_u64(v13, 4uLL), vshlq_n_s64(v13, 0xCuLL));
  *a1 = __rev16(v5) ^ v4 ^ v11;
  *(a1 + 8) = v5 ^ v6 ^ __rev16(v7) ^ v11;
  v19 = veorq_s8(veorq_s8(vzip1q_s64(vdupq_laneq_s64(v15, 1), v18), vdupq_n_s64(v11)), v16);
  *(a1 + 16) = __rev16(v16.u64[0]) ^ v15.i64[0] ^ v7;
  v20 = veorq_s8(v18, v13);
  v21 = vzip1q_s64(v17, v20);
  v17.i64[0] = 0xFF00FF00FF00FFLL;
  v17.i64[1] = 0xFF00FF00FF00FFLL;
  *(a1 + 24) = veorq_s8(vbslq_s8(v17, vshrq_n_u64(v21, 8uLL), vshlq_n_s64(v21, 8uLL)), v19);
  v21.i64[0] = vdupq_laneq_s64(v20, 1).u64[0];
  v21.i64[1] = v9;
  v15.i64[0] = vdupq_laneq_s64(v18, 1).u64[0];
  v15.i64[1] = v8;
  result = veorq_s8(vbslq_s8(v17, vshrq_n_u64(v21, 8uLL), vshlq_n_s64(v21, 8uLL)), veorq_s8(v15, v20));
  *(a1 + 40) = result;
  *(a1 + 56) = v9 ^ v10 ^ __rev16(v11);
  return result;
}

int8x16_t aes_nohw_inv_shift_rows(int8x16_t *a1)
{
  v1.i64[0] = 0xF000F000F000FLL;
  v1.i64[1] = 0xF000F000F000FLL;
  v2 = a1[1];
  v3.i64[0] = 0xF000F000F000F0;
  v3.i64[1] = 0xF000F000F000F0;
  v4 = vandq_s8(*a1, v3);
  v5.i64[0] = 0xF000F000F000F00;
  v5.i64[1] = 0xF000F000F000F00;
  v6 = vandq_s8(*a1, v5);
  v7.i64[0] = 0xF000F000F000F000;
  v7.i64[1] = 0xF000F000F000F000;
  v8 = vandq_s8(*a1, v7);
  v9 = vorrq_s8(vorrq_s8(vsraq_n_u64(vshlq_n_s64(v6, 0x20uLL), v6, 0x20uLL), vandq_s8(*a1, v1)), vorrq_s8(vsraq_n_u64(vshlq_n_s64(v8, 0x30uLL), v8, 0x10uLL), vsraq_n_u64(vshlq_n_s64(v4, 0x10uLL), v4, 0x30uLL)));
  v10 = vandq_s8(v2, v1);
  v11 = vandq_s8(v2, v3);
  v12 = vandq_s8(v2, v5);
  v13 = vandq_s8(v2, v7);
  *a1 = v9;
  a1[1] = vorrq_s8(vorrq_s8(vsraq_n_u64(vshlq_n_s64(v12, 0x20uLL), v12, 0x20uLL), v10), vorrq_s8(vsraq_n_u64(vshlq_n_s64(v13, 0x30uLL), v13, 0x10uLL), vsraq_n_u64(vshlq_n_s64(v11, 0x10uLL), v11, 0x30uLL)));
  v14 = a1[2];
  v15 = a1[3];
  v16 = vandq_s8(v14, v3);
  v17 = vandq_s8(v14, v5);
  v18 = vandq_s8(v14, v7);
  v19 = vorrq_s8(vorrq_s8(vsraq_n_u64(vshlq_n_s64(v17, 0x20uLL), v17, 0x20uLL), vandq_s8(v14, v1)), vorrq_s8(vsraq_n_u64(vshlq_n_s64(v18, 0x30uLL), v18, 0x10uLL), vsraq_n_u64(vshlq_n_s64(v16, 0x10uLL), v16, 0x30uLL)));
  v20 = vandq_s8(v15, v1);
  v21 = vandq_s8(v15, v3);
  v22 = vandq_s8(v15, v5);
  v23 = vandq_s8(v15, v7);
  result = vorrq_s8(vorrq_s8(vsraq_n_u64(vshlq_n_s64(v22, 0x20uLL), v22, 0x20uLL), v20), vorrq_s8(vsraq_n_u64(vshlq_n_s64(v23, 0x30uLL), v23, 0x10uLL), vsraq_n_u64(vshlq_n_s64(v21, 0x10uLL), v21, 0x30uLL)));
  a1[2] = v19;
  a1[3] = result;
  return result;
}

uint64_t aes_init_key(evp_cipher_ctx_st *a1, int8x16_t *a2, const unsigned __int8 *a3, int a4)
{
  v4 = *&a1->encrypt;
  v5 = HIDWORD(a1->cipher->flags) & 0x3F;
  if (v5 == 5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 == 2;
    if (!a4 && (v5 - 3) >= 0xFFFFFFFE)
    {
      aes_nohw_set_encrypt_key(a2, 8 * *a1->oiv, v4);
      v4[15].i64[1] = aes_nohw_decrypt;
      if (v5 == 2)
      {
        v8 = aes_nohw_cbc_encrypt;
      }

      else
      {
        v8 = 0;
      }

      v4[16].i64[0] = v8;
      return 1;
    }
  }

  aes_nohw_set_encrypt_key(a2, 8 * *a1->oiv, v4);
  v4[15].i64[1] = aes_nohw_encrypt;
  v4[16].i64[0] = 0;
  if (v6)
  {
    v4[16].i64[0] = aes_nohw_cbc_encrypt;
    return 1;
  }

  if (v5 != 5)
  {
    return 1;
  }

  v4[16].i64[0] = aes_nohw_ctr32_encrypt_blocks;
  return 1;
}

uint64_t aes_cbc_cipher(evp_cipher_ctx_st *a1, unsigned __int8 *a2, unsigned __int8 *a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v67[1] = *MEMORY[0x277D85DE8];
  v8 = *&a1->encrypt;
  v9 = *(v8 + 256);
  if (v9)
  {
    v9(a3, a2, a4, v8, &a1->iv[12], *&a1->oiv[4]);
    return 1;
  }

  v11 = &a1->iv[12];
  v12 = *(v8 + 248);
  if (!*&a1->oiv[4])
  {
    if (!a4)
    {
      return 1;
    }

    v19 = a3 > 0x1F && a3 - 32 >= a2;
    if (a3 < a2 || v19)
    {
      if (a4 < 0x10)
      {
        v30 = &a1->iv[12];
      }

      else
      {
        v27 = &a1->iv[12];
        do
        {
          v28 = v5;
          v12(v5, v6, v8);
          v29 = *(v6 + 1);
          *v6 ^= *v27;
          v4 -= 16;
          *(v6 + 1) = *(v27 + 1) ^ v29;
          v5 += 16;
          v6 += 16;
          v27 = v28;
        }

        while (v4 > 0xF);
        v30 = v5 - 16;
      }

      *v11 = *v30;
    }

    else
    {
      if (a4 < 0x10)
      {
        goto LABEL_44;
      }

      do
      {
        v12(v5, v66, v8);
        v20 = v66[1];
        v21 = *v5;
        *v6 = *&a1->iv[12] ^ v66[0];
        *&a1->iv[12] = v21;
        v22 = *(v5 + 1);
        *(v6 + 1) = *&a1->buf[4] ^ v20;
        *&a1->buf[4] = v22;
        v4 -= 16;
        v5 += 16;
        v6 += 16;
      }

      while (v4 > 0xF);
    }

    if (!v4)
    {
      return 1;
    }

LABEL_44:
    v12(v5, v66, v8);
    if (v4 > 0x1F)
    {
      v31 = 0;
      v36 = &v6[v4];
      v37 = &a1->iv[v4 + 12];
      v38 = v66 + v4;
      v40 = v6 < &v5[v4] && v5 < v36;
      v42 = v6 < v38 && v66 < v36;
      v44 = v11 < &v5[v4] && v5 < v37;
      v46 = v11 < v38 && v66 < v37;
      if ((v11 >= v36 || v6 >= v37) && !v40 && !v42 && !v44 && !v46)
      {
        v31 = v4 & 0xFFFFFFFFFFFFFFE0;
        v48 = (v5 + 16);
        v49 = v67;
        v50 = (v6 + 16);
        v51 = &a1->buf[12];
        v52 = v4 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v53 = v48[-1];
          v54 = *v48;
          v55 = veorq_s8(*v51, *v49);
          v50[-1] = veorq_s8(v51[-1], v49[-1]);
          *v50 = v55;
          v48 += 2;
          v51[-1] = v53;
          *v51 = v54;
          v49 += 2;
          v50 += 2;
          v51 += 2;
          v52 -= 32;
        }

        while (v52);
        if (v4 == v31)
        {
          if (v31 - 1 > 0xE)
          {
            return 1;
          }

          goto LABEL_49;
        }
      }
    }

    else
    {
      v31 = 0;
    }

    v32 = v31 - 1;
    do
    {
      v33 = v5[v32 + 1];
      v6[v32 + 1] = v11[v32 + 1] ^ *(v66 + v32 + 1);
      v11[++v32] = v33;
    }

    while (v32 - v4 != -1);
    if (v32 > 0xE)
    {
      return 1;
    }

LABEL_49:
    v34 = 16 - v4;
    if (16 - v4 < 8)
    {
      v35 = v4;
      goto LABEL_102;
    }

    if ((a1 - v5 + 52) < 0x20)
    {
      v35 = v4;
      goto LABEL_102;
    }

    if (v34 >= 0x20)
    {
      v56 = v34 & 0xFFFFFFFFFFFFFFE0;
      v57 = &a1->buf[v4 + 12];
      v58 = &v5[v4 + 16];
      v59 = v34 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v60 = *v58;
        *(v57 - 1) = *(v58 - 1);
        *v57 = v60;
        v57 += 32;
        v58 += 32;
        v59 -= 32;
      }

      while (v59);
      if (v34 == v56)
      {
        return 1;
      }

      if ((v34 & 0x18) == 0)
      {
        v35 = v4 + v56;
        goto LABEL_102;
      }
    }

    else
    {
      v56 = 0;
    }

    v35 = v4 + (v34 & 0xFFFFFFFFFFFFFFF8);
    v61 = v56 - (v34 & 0xFFFFFFFFFFFFFFF8);
    v62 = v4 + v56;
    v63 = &v5[v4 + v56];
    v64 = &a1->iv[v62 + 12];
    do
    {
      v65 = *v63;
      v63 += 8;
      *v64 = v65;
      v64 += 8;
      v61 += 8;
    }

    while (v61);
    if (v34 == (v34 & 0xFFFFFFFFFFFFFFF8))
    {
      return 1;
    }

    do
    {
LABEL_102:
      v11[v35] = v5[v35];
      ++v35;
    }

    while (v35 != 16);
    return 1;
  }

  if (a4)
  {
    v13 = &a1->iv[12];
    if (a4 < 0x10)
    {
      goto LABEL_34;
    }

    do
    {
      v14 = v6;
      *v6 = *v13 ^ *v5;
      *(v6 + 1) = *(v13 + 1) ^ *(v5 + 1);
      v12(v6, v6, v8);
      v4 -= 16;
      v5 += 16;
      v6 += 16;
      v13 = v14;
    }

    while (v4 > 0xF);
    v13 = v6 - 16;
    if (v4)
    {
LABEL_34:
      if (v4 > 0x1F && (v6 - v5) >= 0x20 && (v6 - v13) >= 0x20)
      {
        v23 = (v5 + 16);
        v24 = (v13 + 16);
        for (i = (v6 + 16); ; i += 2)
        {
          v26 = veorq_s8(*v24, *v23);
          i[-1] = veorq_s8(v24[-1], v23[-1]);
          *i = v26;
          v23 += 2;
          v24 += 2;
        }
      }

      v15 = 0;
      do
      {
        v6[v15] = v13[v15] ^ v5[v15];
        ++v15;
      }

      while (v4 != v15);
      if ((v15 - 1) <= 0xE)
      {
        if (v4 > 8 || (v6 - v13) <= 0x1F)
        {
          goto LABEL_106;
        }

        v16 = 16 - v4;
        v17 = (16 - v4) & 0x18;
        *&v6[v4] = *&v13[v4];
        if (v17 != 8)
        {
          *&v6[v4 + 8] = *&v13[v4 + 8];
        }

        v4 += v17;
        if (v16 != v17)
        {
LABEL_106:
          do
          {
            v6[v4] = v13[v4];
            ++v4;
          }

          while (v4 != 16);
        }
      }

      v12(v6, v6, v8);
      v13 = v6;
    }

    *v11 = *v13;
  }

  return 1;
}

uint64_t aes_ctr_cipher(evp_cipher_ctx_st *a1, unsigned __int8 *a2, char *a3, unint64_t a4)
{
  v7 = *&a1->encrypt;
  v8 = &a1->buf[12];
  v39 = *(v7 + 256);
  key_len = a1->key_len;
  if (a4)
  {
    if (key_len)
    {
      do
      {
        v10 = *a3++;
        *a2++ = v8[key_len] ^ v10;
        v11 = a4 - 1;
        key_len = (key_len + 1) & 0xF;
        if (!key_len)
        {
          break;
        }

        --a4;
      }

      while (a4);
    }

    else
    {
      v11 = a4;
    }

    v12 = bswap32(*&a1->buf[8]);
    if (v11 >= 0x10)
    {
      do
      {
        v13 = v11 >> 4;
        if (v11 >> 4 >= 0x10000000)
        {
          v13 = 0x10000000;
        }

        v14 = v12 + v13;
        if (v13 <= v14)
        {
          v12 += v13;
        }

        else
        {
          v12 = 0;
        }

        if (v13 <= v14)
        {
          v14 = 0;
        }

        v15 = v13 - v14;
        v39(a3, a2, v13 - v14, v7, &a1->iv[12]);
        *&a1->buf[8] = bswap32(v12);
        if (!v12)
        {
          v16 = a1->buf[7] + 1;
          a1->buf[7] = v16;
          v17 = a1->buf[6] + (v16 >> 8);
          a1->buf[6] = v17;
          v18 = a1->buf[5] + (v17 >> 8);
          a1->buf[5] = v18;
          v19 = a1->buf[4] + (v18 >> 8);
          a1->buf[4] = v19;
          v20 = a1->buf[3] + (v19 >> 8);
          a1->buf[3] = v20;
          v21 = a1->buf[2] + (v20 >> 8);
          a1->buf[2] = v21;
          v22 = a1->buf[1] + (v21 >> 8);
          a1->buf[1] = v22;
          v23 = a1->buf[0] + (v22 >> 8);
          a1->buf[0] = v23;
          v24 = a1->iv[15] + (v23 >> 8);
          a1->iv[15] = v24;
          v25 = a1->iv[14] + (v24 >> 8);
          a1->iv[14] = v25;
          v26 = a1->iv[13] + (v25 >> 8);
          a1->iv[13] = v26;
          a1->iv[12] += BYTE1(v26);
        }

        v11 -= 16 * v15;
        a2 += 16 * v15;
        a3 += 16 * v15;
      }

      while (v11 > 0xF);
    }
  }

  else
  {
    v11 = 0;
    v12 = bswap32(*&a1->buf[8]);
  }

  if (v11)
  {
    *v8 = 0;
    *(v8 + 1) = 0;
    v39(v8, v8, 1uLL, v7, &a1->iv[12]);
    *&a1->buf[8] = bswap32(v12 + 1);
    if (v12 == -1)
    {
      v27 = a1->buf[7] + 1;
      a1->buf[7] = v27;
      v28 = a1->buf[6] + (v27 >> 8);
      a1->buf[6] = v28;
      v29 = a1->buf[5] + (v28 >> 8);
      a1->buf[5] = v29;
      v30 = a1->buf[4] + (v29 >> 8);
      a1->buf[4] = v30;
      v31 = a1->buf[3] + (v30 >> 8);
      a1->buf[3] = v31;
      v32 = a1->buf[2] + (v31 >> 8);
      a1->buf[2] = v32;
      v33 = a1->buf[1] + (v32 >> 8);
      a1->buf[1] = v33;
      v34 = a1->buf[0] + (v33 >> 8);
      a1->buf[0] = v34;
      v35 = a1->iv[15] + (v34 >> 8);
      a1->iv[15] = v35;
      v36 = a1->iv[14] + (v35 >> 8);
      a1->iv[14] = v36;
      v37 = a1->iv[13] + (v36 >> 8);
      a1->iv[13] = v37;
      a1->iv[12] += BYTE1(v37);
    }

    do
    {
      a2[key_len] = v8[key_len] ^ a3[key_len];
      ++key_len;
      --v11;
    }

    while (v11);
  }

  a1->key_len = key_len;
  return 1;
}

uint64_t aes_gcm_init_key(evp_cipher_ctx_st *a1, int8x16_t *a2, int8x8_t *__src)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2 | __src)
  {
    v3 = *&a1->encrypt;
    if (a2)
    {
      v3[78] = 0;
      *(v3 + 37) = 0u;
      *(v3 + 38) = 0u;
      *(v3 + 35) = 0u;
      *(v3 + 36) = 0u;
      *(v3 + 34) = 0u;
      v4 = *a1->oiv;
      bzero(v3, 0x220uLL);
      aes_nohw_set_encrypt_key(a2, 8 * v4, v3 + 17);
      v3[66] = aes_nohw_encrypt;
      v3[65] = aes_nohw_ctr32_encrypt_blocks;
      v14 = 0;
      v15 = 0;
      aes_nohw_encrypt(&v14, &v14, (v3 + 34));
      v7 = __src;
      v8 = bswap64(v14);
      *(&v10 + 1) = v8;
      *&v10 = bswap64(v15);
      v9 = v10 >> 63;
      *(&v10 + 1) = v10;
      *&v10 = v8;
      *v3 = (v8 >> 63) & 0xC200000000000000 ^ v9;
      v3[1] = v10 >> 63;
      v3[32] = gcm_gmult_nohw;
      v3[33] = gcm_ghash_nohw;
      if (!__src && (!*(v3 + 159) || (v7 = v3[80]) == 0))
      {
        v11 = 1;
        v12 = 79;
LABEL_15:
        LODWORD(v3[v12]) = v11;
        return 1;
      }

      CRYPTO_gcm128_init_ctx(v3, (v3 + 68), v7, *(v3 + 162));
      v11 = 1;
      v12 = 79;
LABEL_14:
      *(v3 + 159) = 1;
      goto LABEL_15;
    }

    if (*(v3 + 158))
    {
      CRYPTO_gcm128_init_ctx(*&a1->encrypt, (v3 + 68), __src, *(v3 + 162));
    }

    else
    {
      v11 = *(v3 + 162);
      if (!v11)
      {
LABEL_13:
        v12 = 82;
        goto LABEL_14;
      }

      memcpy(v3[80], __src, *(v3 + 162));
    }

    v11 = 0;
    goto LABEL_13;
  }

  return 1;
}

uint64_t aes_gcm_cipher(evp_cipher_ctx_st *a1, int8x16_t *a2, int8x16_t *a3, unint64_t a4)
{
  v4 = *&a1->encrypt;
  if (!v4[39].i32[2])
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (!(a4 >> 31) && v4[39].i32[3])
  {
    if (a3)
    {
      if (a2)
      {
        v7 = a4;
        if (*&a1->oiv[4])
        {
          if (!CRYPTO_gcm128_encrypt(v4, v4 + 34, a3, a2, a4))
          {
            return 0xFFFFFFFFLL;
          }

          return v7;
        }

        if (CRYPTO_gcm128_decrypt(v4, v4 + 34, a3, a2, a4))
        {
          return v7;
        }
      }

      else
      {
        v7 = a4;
        if (CRYPTO_gcm128_aad(v4->i64, v4 + 34, a3->i8, a4))
        {
          return v7;
        }
      }

      return 0xFFFFFFFFLL;
    }

    if (*&a1->oiv[4])
    {
      v8 = v4;
      CRYPTO_gcm128_finish(v4->i64, v4[34].i64, 0, 0);
      result = 0;
      *&a1->buf[12] = v8[38];
      v8[40].i32[3] = 16;
      v8[39].i32[3] = 0;
      return result;
    }

    v9 = v4[40].u32[3];
    if ((v9 & 0x80000000) == 0)
    {
      v10 = &a1->buf[12];
      v11 = v4;
      if (CRYPTO_gcm128_finish(v4->i64, v4[34].i64, v10, v9))
      {
        result = 0;
        v11[39].i32[3] = 0;
        return result;
      }

      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void aes_gcm_cleanup(evp_cipher_ctx_st *a1)
{
  v2 = *&a1->encrypt;
  bzero(v2, 0x278uLL);
  v3 = v2[80];
  if (v3 != &a1->iv[12] && v3 != 0)
  {
    v6 = *&v3[-1].final[24];
    v5 = &v3[-1].final[24];
    v7 = v6 + 8;
    if (v6 != -8)
    {
      bzero(v5, v7);
    }

    free(v5);
  }
}

uint64_t aes_gcm_ctrl(evp_cipher_ctx_st *a1, int a2, size_t __n, char *__src)
{
  v4 = __n;
  v6 = *&a1->encrypt;
  result = 0xFFFFFFFFLL;
  if (a2 <= 16)
  {
    if (a2 > 8)
    {
      if (a2 != 9)
      {
        if (a2 != 16)
        {
          return result;
        }

        if ((__n - 17) < 0xFFFFFFF0)
        {
          return 0;
        }

        if (*&a1->oiv[4] && (*(v6 + 652) & 0x80000000) == 0)
        {
          memcpy(__src, &a1->buf[12], __n);
          return 1;
        }

        return 0;
      }

      if (__n < 1)
      {
        return 0;
      }

      if (__n < 0x11 || *(v6 + 648) >= __n)
      {
        goto LABEL_37;
      }

      v13 = *(v6 + 640);
      if (v13 != &a1->iv[12] && v13 != 0)
      {
        v16 = *&v13[-1].final[24];
        v15 = &v13[-1].final[24];
        v17 = v16 + 8;
        if (v16 != -8)
        {
          bzero(v15, v17);
        }

        free(v15);
      }

      result = OPENSSL_malloc(v4);
      *(v6 + 640) = result;
      if (result)
      {
LABEL_37:
        *(v6 + 648) = v4;
        return 1;
      }
    }

    else if (a2)
    {
      if (a2 == 8)
      {
        v8 = *(__src + 2);
        v9 = *(v6 + 640);
        if (v9 == &a1->iv[12])
        {
          *(v8 + 640) = __src + 52;
          return 1;
        }

        else
        {
          v10 = *(v6 + 648);
          if (v10)
          {
            if (v10 <= 0xFFFFFFF7)
            {
              v11 = malloc_type_malloc(v10 + 8, 0xB4E622C9uLL);
              if (v11)
              {
                *v11 = v10;
                v12 = v11 + 1;
                memcpy(v11 + 1, v9, v10);
                *(v8 + 640) = v12;
                return 1;
              }
            }

            ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
          }

          result = 0;
          *(v8 + 640) = 0;
        }
      }
    }

    else
    {
      *(v6 + 632) = 0;
      *(v6 + 648) = a1->cipher->iv_len;
      *(v6 + 640) = &a1->iv[12];
      *(v6 + 652) = 0xFFFFFFFFLL;
      return 1;
    }
  }

  else
  {
    if (a2 <= 18)
    {
      if (a2 == 17)
      {
        if ((__n - 17) >= 0xFFFFFFF0 && !*&a1->oiv[4])
        {
          memcpy(&a1->buf[12], __src, __n);
          *(v6 + 652) = v4;
          return 1;
        }

        return 0;
      }

      if (__n == -1)
      {
        v21 = *(v6 + 648);
        if (v21)
        {
          memcpy(*(v6 + 640), __src, v21);
        }
      }

      else
      {
        if (__n < 4 || *(v6 + 648) - __n < 8)
        {
          return 0;
        }

        memcpy(*(v6 + 640), __src, __n);
        if (*&a1->oiv[4])
        {
          BCM_rand_bytes_with_additional_data((*(v6 + 640) + v4), *(v6 + 648) - v4, BCM_rand_bytes::kZeroAdditionalData);
          result = 1;
          *(v6 + 656) = 1;
          return result;
        }
      }

      result = 1;
      *(v6 + 656) = 1;
      return result;
    }

    if (a2 != 19)
    {
      if (a2 != 24)
      {
        if (a2 == 25)
        {
          *__src = *(v6 + 648);
          return 1;
        }

        return result;
      }

      if (*(v6 + 656) && *(v6 + 632) && !*&a1->oiv[4])
      {
        if (__n)
        {
          memcpy((*(v6 + 640) + *(v6 + 648) - __n), __src, __n);
        }

        CRYPTO_gcm128_init_ctx(v6, v6 + 544, *(v6 + 640), *(v6 + 648));
        result = 1;
        *(v6 + 636) = 1;
        return result;
      }

      return 0;
    }

    if (!*(v6 + 656) || !*(v6 + 632))
    {
      return 0;
    }

    CRYPTO_gcm128_init_ctx(v6, v6 + 544, *(v6 + 640), *(v6 + 648));
    v19 = *(v6 + 648);
    if (v4 >= 1 && v19 >= v4 || (v4 = *(v6 + 648), v19))
    {
      memcpy(__src, (*(v6 + 640) + v19 - v4), v4);
      v20 = *(v6 + 648);
    }

    else
    {
      v20 = 0;
    }

    *(*(v6 + 640) + v20 - 8) = bswap64(bswap64(*(*(v6 + 640) + v20 - 8)) + 1);
    result = 1;
    *(v6 + 636) = 1;
  }

  return result;
}

uint64_t aead_aes_gcm_init(uint64_t a1, int8x16_t *a2, uint64_t a3, unint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((a3 & 0x1FFFFFFFFFFFFFF7) == 0x10 || (a3 & 0x1FFFFFFFFFFFFFFFLL) == 0x20)
  {
    if (a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = 16;
    }

    if (v6 < 0x11)
    {
      v10 = a3;
      bzero((a1 + 8), 0x220uLL);
      aes_nohw_set_encrypt_key(a2, 8 * v10, (a1 + 280));
      *(a1 + 536) = aes_nohw_encrypt;
      *(a1 + 528) = aes_nohw_ctr32_encrypt_blocks;
      v14 = 0;
      v15 = 0;
      aes_nohw_encrypt(&v14, &v14, a1 + 280);
      v11 = bswap64(v14);
      *(&v13 + 1) = v11;
      *&v13 = bswap64(v15);
      v12 = v13 >> 63;
      *(&v13 + 1) = v13;
      *&v13 = v11;
      *(a1 + 8) = (v11 >> 63) & 0xC200000000000000 ^ v12;
      *(a1 + 16) = v13 >> 63;
      *(a1 + 264) = gcm_gmult_nohw;
      *(a1 + 272) = gcm_ghash_nohw;
      *(a1 + 568) = v6;
      return 1;
    }

    v4 = 116;
    v5 = 722;
  }

  else
  {
    v4 = 102;
    v5 = 713;
  }

  ERR_put_error(30, 0, v4, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/cipher/e_aes.cc.inc", v5);
  return 0;
}

uint64_t aead_aes_gcm_open_gather(uint64_t a1, int8x16_t *a2, int8x8_t *a3, unint64_t a4, int8x16_t *a5, unint64_t a6, int8x16_t *a7, unint64_t a8, char *a9, unint64_t a10)
{
  v55[1] = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    v20 = 111;
    v21 = 816;
LABEL_9:
    ERR_put_error(30, 0, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/cipher/e_aes.cc.inc", v21);
    return 0;
  }

  if (*(a1 + 568) != a8)
  {
    v20 = 101;
    v21 = 821;
    goto LABEL_9;
  }

  CRYPTO_gcm128_init_ctx(a1 + 8, v51, a3, a4);
  result = CRYPTO_gcm128_aad((a1 + 8), v51, a9, a10);
  if (result)
  {
    result = CRYPTO_gcm128_decrypt(a1 + 8, v51, a5, a2, a6);
    if (result)
    {
      if (v53)
      {
        v22 = vrev64q_s8(v52);
        __dst = vextq_s8(v22, v22, 8uLL);
        v19 = *(a1 + 8);
        v18 = *(a1 + 16);
        gcm_polyval_nohw(&__dst, v19, v18);
        v17 = vrev64q_s8(__dst);
      }

      else
      {
        v17 = vextq_s8(v52, v52, 8uLL);
        v19 = *(a1 + 8);
        v18 = *(a1 + 16);
      }

      v23 = vshlq_n_s64(v51[3], 3uLL);
      __dst = veorq_s8(vextq_s8(v23, v23, 8uLL), vrev64q_s8(v17));
      gcm_polyval_nohw(&__dst, v19, v18);
      v24 = vrev64q_s8(__dst);
      v52 = veorq_s8(v51[2], vextq_s8(v24, v24, 8uLL));
      if (!a8)
      {
        return 1;
      }

      if (a8 >= 0x10)
      {
        v25 = 16;
      }

      else
      {
        v25 = a8;
      }

      memcpy(&__dst, &v52, v25);
      if (a8 < 8)
      {
        v26 = 0;
        v27 = 0;
        v28 = a7;
        goto LABEL_27;
      }

      v28 = a7;
      if (a8 >= 0x20)
      {
        v26 = a8 & 0xFFFFFFFFFFFFFFE0;
        v29 = v55;
        v30 = a7 + 1;
        v31 = 0uLL;
        v32 = a8 & 0xFFFFFFFFFFFFFFE0;
        v33 = 0uLL;
        do
        {
          v31 = vorrq_s8(veorq_s8(v30[-1], v29[-1]), v31);
          v33 = vorrq_s8(veorq_s8(*v30, *v29), v33);
          v29 += 2;
          v30 += 2;
          v32 -= 32;
        }

        while (v32);
        v34 = vorrq_s8(v33, v31);
        *v34.i8 = vorr_s8(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
        v35 = v34.i64[0] | HIDWORD(v34.i64[0]) | ((v34.i64[0] | HIDWORD(v34.i64[0])) >> 16);
        v27 = v35 | BYTE1(v35);
        if (v26 == a8)
        {
          goto LABEL_29;
        }

        if ((a8 & 0x18) == 0)
        {
LABEL_27:
          v45 = a8 - v26;
          v46 = &v28->i8[v26];
          v47 = &__dst.i8[v26];
          do
          {
            v49 = *v47++;
            v48 = v49;
            v50 = *v46++;
            v27 |= v50 ^ v48;
            --v45;
          }

          while (v45);
          goto LABEL_29;
        }
      }

      else
      {
        v27 = 0;
        v26 = 0;
      }

      v36 = v26;
      v26 = a8 & 0xFFFFFFFFFFFFFFF8;
      v37 = v27;
      v38 = &__dst.i8[v36];
      v39 = &a7->i8[v36];
      v40 = v36 - (a8 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v41 = *v38++;
        v42 = v41;
        v43 = *v39++;
        v37 = vorr_s8(veor_s8(v43, v42), v37);
        v40 += 8;
      }

      while (v40);
      v44 = *&v37 | HIDWORD(*&v37) | ((*&v37 | HIDWORD(*&v37)) >> 16);
      v27 = v44 | BYTE1(v44);
      if (v26 != a8)
      {
        goto LABEL_27;
      }

LABEL_29:
      if (v27)
      {
        v20 = 101;
        v21 = 839;
        goto LABEL_9;
      }

      return 1;
    }
  }

  return result;
}

uint64_t aead_aes_gcm_seal_scatter_impl(uint64_t *a1, int8x16_t *a2, int8x16_t *a3, unint64_t *a4, unint64_t a5, int8x8_t *a6, unint64_t a7, int8x16_t *a8, unint64_t a9, int8x16_t *a10, unint64_t a11, char *a12, unint64_t a13, unint64_t a14)
{
  v36 = *MEMORY[0x277D85DE8];
  v14 = a14 + a11;
  if (__CFADD__(a14, a11))
  {
    v15 = 117;
    v16 = 760;
LABEL_15:
    ERR_put_error(30, 0, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/cipher/e_aes.cc.inc", v16);
    return 0;
  }

  if (v14 > a5)
  {
    v15 = 103;
    v16 = 764;
    goto LABEL_15;
  }

  if (!a7)
  {
    v15 = 111;
    v16 = 768;
    goto LABEL_15;
  }

  CRYPTO_gcm128_init_ctx(a1, v32, a6, a7);
  if (!a13 || (result = CRYPTO_gcm128_aad(a1, v32, a12, a13), result))
  {
    result = CRYPTO_gcm128_encrypt(a1, v32, a8, a2, a9);
    if (result)
    {
      if (!a11 || (result = CRYPTO_gcm128_encrypt(a1, v32, a10, a3, a11), result))
      {
        if (v34)
        {
          v27 = vrev64q_s8(v33);
          v35 = vextq_s8(v27, v27, 8uLL);
          v28 = a1;
          v25 = *a1;
          v26 = v28[1];
          gcm_polyval_nohw(&v35, v25, v26);
          v23 = vrev64q_s8(v35);
        }

        else
        {
          v23 = vextq_s8(v33, v33, 8uLL);
          v24 = a1;
          v25 = *a1;
          v26 = v24[1];
        }

        v29 = vshlq_n_s64(v32[3], 3uLL);
        v35 = veorq_s8(vextq_s8(v29, v29, 8uLL), vrev64q_s8(v23));
        gcm_polyval_nohw(&v35, v25, v26);
        v30 = vrev64q_s8(v35);
        v33 = veorq_s8(v32[2], vextq_s8(v30, v30, 8uLL));
        if (a14)
        {
          if (a14 >= 0x10)
          {
            v31 = 16;
          }

          else
          {
            v31 = a14;
          }

          memcpy(&a3->i8[a11], &v33, v31);
        }

        *a4 = v14;
        return 1;
      }
    }
  }

  return result;
}

uint64_t aead_aes_gcm_tls12_init(uint64_t a1, int8x16_t *a2, uint64_t a3, unint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 552) = 0;
  if ((a3 & 0x1FFFFFFFFFFFFFF7) == 0x10 || (a3 & 0x1FFFFFFFFFFFFFFFLL) == 0x20)
  {
    if (a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = 16;
    }

    if (v6 < 0x11)
    {
      v10 = a3;
      bzero((a1 + 8), 0x220uLL);
      aes_nohw_set_encrypt_key(a2, 8 * v10, (a1 + 280));
      *(a1 + 536) = aes_nohw_encrypt;
      *(a1 + 528) = aes_nohw_ctr32_encrypt_blocks;
      v14 = 0;
      v15 = 0;
      aes_nohw_encrypt(&v14, &v14, a1 + 280);
      v11 = bswap64(v14);
      *(&v13 + 1) = v11;
      *&v13 = bswap64(v15);
      v12 = v13 >> 63;
      *(&v13 + 1) = v13;
      *&v13 = v11;
      *(a1 + 8) = (v11 >> 63) & 0xC200000000000000 ^ v12;
      *(a1 + 16) = v13 >> 63;
      *(a1 + 264) = gcm_gmult_nohw;
      *(a1 + 272) = gcm_ghash_nohw;
      *(a1 + 568) = v6;
      return 1;
    }

    v4 = 116;
    v5 = 722;
  }

  else
  {
    v4 = 102;
    v5 = 713;
  }

  ERR_put_error(30, 0, v4, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/cipher/e_aes.cc.inc", v5);
  return 0;
}

uint64_t aead_aes_gcm_tls12_seal_scatter(uint64_t a1, int8x16_t *a2, int8x16_t *a3, unint64_t *a4, unint64_t a5, uint64_t a6, uint64_t a7, int8x16_t *a8, unint64_t a9, int8x16_t *a10, unint64_t a11, char *a12, unint64_t a13)
{
  if (a7 == 12)
  {
    v13 = *(a6 + 4);
    if (v13 == -1 || (v14 = bswap64(v13), v14 < *(a1 + 552)))
    {
      ERR_put_error(30, 0, 125, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/cipher/e_aes.cc.inc", 1075);
      return 0;
    }

    else
    {
      *(a1 + 552) = v14 + 1;
      return aead_aes_gcm_seal_scatter_impl((a1 + 8), a2, a3, a4, a5, a6, 0xCuLL, a8, a9, a10, a11, a12, a13, *(a1 + 568));
    }
  }

  else
  {
    ERR_put_error(30, 0, 121, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/cipher/e_aes.cc.inc", 1067);
    return 0;
  }
}

uint64_t aead_aes_gcm_tls13_init(uint64_t a1, int8x16_t *a2, uint64_t a3, unint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 552) = 0;
  if ((a3 & 0x1FFFFFFFFFFFFFF7) == 0x10 || (a3 & 0x1FFFFFFFFFFFFFFFLL) == 0x20)
  {
    if (a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = 16;
    }

    if (v6 < 0x11)
    {
      v10 = a3;
      bzero((a1 + 8), 0x220uLL);
      aes_nohw_set_encrypt_key(a2, 8 * v10, (a1 + 280));
      *(a1 + 536) = aes_nohw_encrypt;
      *(a1 + 528) = aes_nohw_ctr32_encrypt_blocks;
      v14 = 0;
      v15 = 0;
      aes_nohw_encrypt(&v14, &v14, a1 + 280);
      v11 = bswap64(v14);
      *(&v13 + 1) = v11;
      *&v13 = bswap64(v15);
      v12 = v13 >> 63;
      *(&v13 + 1) = v13;
      *&v13 = v11;
      *(a1 + 8) = (v11 >> 63) & 0xC200000000000000 ^ v12;
      *(a1 + 16) = v13 >> 63;
      *(a1 + 264) = gcm_gmult_nohw;
      *(a1 + 272) = gcm_ghash_nohw;
      *(a1 + 568) = v6;
      return 1;
    }

    v4 = 116;
    v5 = 722;
  }

  else
  {
    v4 = 102;
    v5 = 713;
  }

  ERR_put_error(30, 0, v4, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/cipher/e_aes.cc.inc", v5);
  return 0;
}

uint64_t aead_aes_gcm_tls13_seal_scatter(uint64_t a1, int8x16_t *a2, int8x16_t *a3, unint64_t *a4, unint64_t a5, uint64_t a6, uint64_t a7, int8x16_t *a8, unint64_t a9, int8x16_t *a10, unint64_t a11, char *a12, unint64_t a13)
{
  if (a7 == 12)
  {
    v13 = bswap64(*(a6 + 4));
    v14 = *(a1 + 552);
    if (v14)
    {
      v15 = *(a1 + 560) ^ v13;
      if (v15 == -1 || v15 < v14)
      {
        ERR_put_error(30, 0, 125, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/cipher/e_aes.cc.inc", 1181);
        return 0;
      }

      v18 = v15 + 1;
    }

    else
    {
      *(a1 + 560) = v13;
      v18 = 1;
    }

    *(a1 + 552) = v18;
    return aead_aes_gcm_seal_scatter_impl((a1 + 8), a2, a3, a4, a5, a6, 0xCuLL, a8, a9, a10, a11, a12, a13, *(a1 + 568));
  }

  else
  {
    ERR_put_error(30, 0, 121, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/cipher/e_aes.cc.inc", 1162);
    return 0;
  }
}

double sha1_init(env_md_ctx_st *a1)
{
  engine = a1->engine;
  *(engine + 5) = 0u;
  *(engine + 68) = 0u;
  *(engine + 52) = 0u;
  *(engine + 36) = 0u;
  *(engine + 20) = 0u;
  result = -3.59869635e230;
  *engine = xmmword_273BA7120;
  *(engine + 4) = -1009589776;
  return result;
}

double sha1_final(env_md_ctx_st *a1, unsigned __int8 *a2)
{
  engine = a1->engine;
  v4 = *(engine + 23);
  v5 = (engine + 28);
  *(engine + v4 + 28) = 0x80;
  v6 = v4 + 1;
  if (v4 >= 0x38)
  {
    if (v4 != 63)
    {
      bzero(v5 + v6, 63 - v4);
    }

    sha1_block_data_order(engine, engine + 28, 1);
    v6 = 0;
    goto LABEL_6;
  }

  if (v4 != 55)
  {
LABEL_6:
    bzero(v5 + v6, 56 - v6);
  }

  *(engine + 84) = vrev64_s32(vrev32_s8(*(engine + 20)));
  sha1_block_data_order(engine, engine + 28, 1);
  *(engine + 23) = 0;
  result = 0.0;
  *(engine + 60) = 0u;
  *(engine + 76) = 0u;
  *v5 = 0u;
  *(engine + 44) = 0u;
  *a2 = bswap32(*engine);
  *(a2 + 1) = bswap32(*(engine + 1));
  *(a2 + 2) = bswap32(*(engine + 2));
  *(a2 + 3) = bswap32(*(engine + 3));
  *(a2 + 4) = bswap32(*(engine + 4));
  return result;
}

double sha224_init(env_md_ctx_st *a1)
{
  engine = a1->engine;
  *(engine + 92) = 0u;
  *(engine + 4) = 0u;
  *(engine + 5) = 0u;
  *(engine + 2) = 0u;
  *(engine + 3) = 0u;
  result = 3.15644116e-46;
  *engine = xmmword_273BA6F80;
  *(engine + 1) = xmmword_273BA6F90;
  *(engine + 27) = 28;
  return result;
}

double sha256_init(env_md_ctx_st *a1)
{
  engine = a1->engine;
  *(engine + 92) = 0u;
  *(engine + 4) = 0u;
  *(engine + 5) = 0u;
  *(engine + 2) = 0u;
  *(engine + 3) = 0u;
  result = -1.56712499e-22;
  *engine = xmmword_273BA6FA0;
  *(engine + 1) = xmmword_273BA6FB0;
  *(engine + 27) = 32;
  return result;
}

uint64_t sha256_final(env_md_ctx_st *a1, unsigned __int8 *a2)
{
  engine = a1->engine;
  v4 = *(engine + 26);
  v5 = *(engine + 27);
  v6 = (engine + 40);
  *(engine + v4 + 40) = 0x80;
  v7 = v4 + 1;
  if (v4 < 0x38)
  {
    if (v4 == 55)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v4 != 63)
    {
      bzero(v6 + v7, 63 - v4);
    }

    sha256_block_data_order(engine, (engine + 40), 1);
    v7 = 0;
  }

  bzero(v6 + v7, 56 - v7);
LABEL_7:
  *(engine + 12) = vrev64_s32(vrev32_s8(*(engine + 32)));
  result = sha256_block_data_order(engine, (engine + 40), 1);
  *(engine + 26) = 0;
  *(engine + 72) = 0u;
  *(engine + 88) = 0u;
  *v6 = 0u;
  *(engine + 56) = 0u;
  if (v5 >= 0x21)
  {
    abort();
  }

  if (v5 >= 4)
  {
    v9 = v5 >> 2;
    *a2 = bswap32(*engine);
    if (v5 >> 2 != 1)
    {
      *(a2 + 1) = bswap32(*(engine + 1));
      if (v9 != 2)
      {
        *(a2 + 2) = bswap32(*(engine + 2));
        if (v9 != 3)
        {
          *(a2 + 3) = bswap32(*(engine + 3));
          if (v9 != 4)
          {
            *(a2 + 4) = bswap32(*(engine + 4));
            if (v9 != 5)
            {
              *(a2 + 5) = bswap32(*(engine + 5));
              if (v9 != 6)
              {
                *(a2 + 6) = bswap32(*(engine + 6));
                if (v9 != 7)
                {
                  *(a2 + 7) = bswap32(*(engine + 7));
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

double sha384_init(env_md_ctx_st *a1)
{
  engine = a1->engine;
  *engine = xmmword_273BA6FC0;
  *(engine + 1) = xmmword_273BA6FD0;
  *(engine + 2) = xmmword_273BA6FE0;
  *(engine + 3) = xmmword_273BA6FF0;
  *(engine + 8) = 0;
  *(engine + 9) = 0;
  *&result = 0x3000000000;
  *(engine + 26) = 0x3000000000;
  return result;
}

uint64_t sha384_update(uint64_t result, char *a2, size_t __n)
{
  if (__n)
  {
    v3 = __n;
    v4 = *(result + 8);
    v5 = v4 + 80;
    *(v4 + 64) += __PAIR128__(__n >> 61, 8 * __n);
    v6 = *(v4 + 208);
    if (v6)
    {
      v7 = 128 - v6;
      v8 = __n - (128 - v6);
      if (__n < 128 - v6)
      {
        result = memcpy((v5 + v6), a2, __n);
        LODWORD(v3) = *(v4 + 208) + v3;
LABEL_12:
        *(v4 + 208) = v3;
        return result;
      }

      if (v6 != 128)
      {
        v9 = a2;
        memcpy((v5 + v6), a2, 128 - v6);
        a2 = v9;
      }

      *(v4 + 208) = 0;
      v10 = &a2[v7];
      result = sha512_block_data_order(v4, (v4 + 80), 1);
      a2 = v10;
      v3 = v8;
    }

    if (v3 >= 0x80)
    {
      v11 = a2;
      result = sha512_block_data_order(v4, a2, v3 >> 7);
      v12 = &v11[v3];
      v3 &= 0x7Fu;
      a2 = &v12[-v3];
    }

    if (v3)
    {
      result = memcpy((v4 + 80), a2, v3);
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t sha384_final(env_md_ctx_st *a1, unsigned __int8 *a2)
{
  engine = a1->engine;
  v4 = engine + 5;
  v5 = engine[13].u32[0];
  engine[5].i8[v5] = 0x80;
  v6 = v5 + 1;
  if (v5 >= 0x70)
  {
    if (v5 != 127)
    {
      bzero(&v4->i8[v6], 127 - v5);
    }

    sha512_block_data_order(engine, &engine[5], 1);
    v6 = 0;
    goto LABEL_6;
  }

  if (v5 != 111)
  {
LABEL_6:
    bzero(&v4->i8[v6], 112 - v6);
  }

  v7 = vrev64q_s8(engine[4]);
  engine[12] = vextq_s8(v7, v7, 8uLL);
  result = sha512_block_data_order(engine, &engine[5], 1);
  *a2 = bswap64(engine->i64[0]);
  *(a2 + 1) = bswap64(engine->u64[1]);
  *(a2 + 2) = bswap64(engine[1].u64[0]);
  *(a2 + 3) = bswap64(engine[1].u64[1]);
  *(a2 + 4) = bswap64(engine[2].u64[0]);
  *(a2 + 5) = bswap64(engine[2].u64[1]);
  return result;
}

double sha512_init(env_md_ctx_st *a1)
{
  engine = a1->engine;
  *engine = xmmword_273BA6F40;
  *(engine + 1) = xmmword_273BA6F50;
  *(engine + 2) = xmmword_273BA6F60;
  *(engine + 3) = xmmword_273BA6F70;
  *(engine + 8) = 0;
  *(engine + 9) = 0;
  *&result = 0x4000000000;
  *(engine + 26) = 0x4000000000;
  return result;
}

uint64_t sha512_update(uint64_t result, char *a2, size_t __n)
{
  if (__n)
  {
    v3 = __n;
    v4 = *(result + 8);
    v5 = v4 + 80;
    *(v4 + 64) += __PAIR128__(__n >> 61, 8 * __n);
    v6 = *(v4 + 208);
    if (v6)
    {
      v7 = 128 - v6;
      v8 = __n - (128 - v6);
      if (__n < 128 - v6)
      {
        result = memcpy((v5 + v6), a2, __n);
        LODWORD(v3) = *(v4 + 208) + v3;
LABEL_12:
        *(v4 + 208) = v3;
        return result;
      }

      if (v6 != 128)
      {
        v9 = a2;
        memcpy((v5 + v6), a2, 128 - v6);
        a2 = v9;
      }

      *(v4 + 208) = 0;
      v10 = &a2[v7];
      result = sha512_block_data_order(v4, (v4 + 80), 1);
      a2 = v10;
      v3 = v8;
    }

    if (v3 >= 0x80)
    {
      v11 = a2;
      result = sha512_block_data_order(v4, a2, v3 >> 7);
      v12 = &v11[v3];
      v3 &= 0x7Fu;
      a2 = &v12[-v3];
    }

    if (v3)
    {
      result = memcpy((v4 + 80), a2, v3);
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t sha512_final(env_md_ctx_st *a1, unsigned __int8 *a2)
{
  engine = a1->engine;
  v4 = engine + 5;
  v5 = engine[13].u32[0];
  v6 = engine[13].u32[1];
  engine[5].i8[v5] = 0x80;
  v7 = v5 + 1;
  if (v5 < 0x70)
  {
    if (v5 == 111)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v5 != 127)
    {
      bzero(&v4->i8[v7], 127 - v5);
    }

    sha512_block_data_order(engine, &engine[5], 1);
    v7 = 0;
  }

  bzero(&v4->i8[v7], 112 - v7);
LABEL_7:
  v8 = vrev64q_s8(engine[4]);
  engine[12] = vextq_s8(v8, v8, 8uLL);
  result = sha512_block_data_order(engine, &engine[5], 1);
  if (v6 < 8)
  {
    return result;
  }

  v10 = 0;
  v11 = v6 >> 3;
  if (v6 < 0x20 || (a2 - engine) < 0x20)
  {
    v12 = a2;
LABEL_15:
    v17 = v11 - v10;
    v18 = engine + v10;
    do
    {
      v19 = *v18++;
      *v12 = bswap64(v19);
      v12 += 8;
      --v17;
    }

    while (v17);
    return result;
  }

  v10 = (v6 >> 3) & 0x1FFFFFFC;
  v12 = &a2[8 * v10];
  v13 = a2 + 16;
  v14 = engine + 1;
  v15 = v10;
  do
  {
    v16 = vrev64q_s8(*v14);
    *(v13 - 1) = vrev64q_s8(v14[-1]);
    *v13 = v16;
    v13 += 32;
    v14 += 2;
    v15 -= 4;
  }

  while (v15);
  if (v10 != v11)
  {
    goto LABEL_15;
  }

  return result;
}

double sha512_256_init(env_md_ctx_st *a1)
{
  engine = a1->engine;
  *engine = xmmword_273BA7130;
  *(engine + 1) = xmmword_273BA7140;
  *(engine + 2) = xmmword_273BA7150;
  *(engine + 3) = xmmword_273BA7160;
  *(engine + 8) = 0;
  *(engine + 9) = 0;
  *&result = 0x2000000000;
  *(engine + 26) = 0x2000000000;
  return result;
}

uint64_t sha512_256_update(uint64_t result, char *a2, size_t __n)
{
  if (__n)
  {
    v3 = __n;
    v4 = *(result + 8);
    v5 = v4 + 80;
    *(v4 + 64) += __PAIR128__(__n >> 61, 8 * __n);
    v6 = *(v4 + 208);
    if (v6)
    {
      v7 = 128 - v6;
      v8 = __n - (128 - v6);
      if (__n < 128 - v6)
      {
        result = memcpy((v5 + v6), a2, __n);
        LODWORD(v3) = *(v4 + 208) + v3;
LABEL_12:
        *(v4 + 208) = v3;
        return result;
      }

      if (v6 != 128)
      {
        v9 = a2;
        memcpy((v5 + v6), a2, 128 - v6);
        a2 = v9;
      }

      *(v4 + 208) = 0;
      v10 = &a2[v7];
      result = sha512_block_data_order(v4, (v4 + 80), 1);
      a2 = v10;
      v3 = v8;
    }

    if (v3 >= 0x80)
    {
      v11 = a2;
      result = sha512_block_data_order(v4, a2, v3 >> 7);
      v12 = &v11[v3];
      v3 &= 0x7Fu;
      a2 = &v12[-v3];
    }

    if (v3)
    {
      result = memcpy((v4 + 80), a2, v3);
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t sha512_256_final(env_md_ctx_st *a1, unsigned __int8 *a2)
{
  engine = a1->engine;
  v4 = engine + 5;
  v5 = engine[13].u32[0];
  engine[5].i8[v5] = 0x80;
  v6 = v5 + 1;
  if (v5 >= 0x70)
  {
    if (v5 != 127)
    {
      bzero(&v4->i8[v6], 127 - v5);
    }

    sha512_block_data_order(engine, &engine[5], 1);
    v6 = 0;
    goto LABEL_6;
  }

  if (v5 != 111)
  {
LABEL_6:
    bzero(&v4->i8[v6], 112 - v6);
  }

  v7 = vrev64q_s8(engine[4]);
  engine[12] = vextq_s8(v7, v7, 8uLL);
  result = sha512_block_data_order(engine, &engine[5], 1);
  *a2 = bswap64(engine->i64[0]);
  *(a2 + 1) = bswap64(engine->u64[1]);
  *(a2 + 2) = bswap64(engine[1].u64[0]);
  *(a2 + 3) = bswap64(engine[1].u64[1]);
  return result;
}

uint64_t ec_GFp_mont_point_get_affine_coordinates(uint64_t a1, unint64_t *a2, int8x16_t *a3, int8x16_t *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 328);
  if (v8 < 1)
  {
    goto LABEL_14;
  }

  if (v8 <= 3)
  {
    v9 = 0;
    v10 = 0;
LABEL_11:
    v17 = v8 - v9;
    v18 = &a2[v9 + 18];
    do
    {
      v19 = *v18++;
      *&v10 |= v19;
      --v17;
    }

    while (v17);
    goto LABEL_13;
  }

  v9 = v8 & 0x7FFFFFFC;
  v12 = (a2 + 20);
  v13 = 0uLL;
  v14 = v9;
  v15 = 0uLL;
  do
  {
    v13 = vorrq_s8(v12[-1], v13);
    v15 = vorrq_s8(*v12, v15);
    v12 += 2;
    v14 -= 4;
  }

  while (v14);
  v16 = vorrq_s8(v15, v13);
  v10 = vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
  if (v9 != v8)
  {
    goto LABEL_11;
  }

LABEL_13:
  if (!*&v10)
  {
LABEL_14:
    ERR_put_error(15, 0, 119, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec_montgomery.cc.inc", 98);
    return 0;
  }

  if (v8 >= 0xA)
  {
    abort();
  }

  v11 = v8;
  memcpy(&__dst, *(a1 + 320), 8 * v8);
  if (__dst.i64[0] < 2uLL)
  {
    __dst.i64[0] |= 0xFFFFFFFFFFFFFFFELL;
    if (v11 != 1)
    {
      v21 = v11 - 2;
      v22 = &__dst.i64[1];
      do
      {
        v23 = v21;
        if ((*v22++)-- != 0)
        {
          break;
        }

        --v21;
      }

      while (v23);
    }
  }

  else
  {
    __dst.i64[0] -= 2;
  }

  bn_mod_exp_mont_small(v25, a2 + 18, v11, &__dst, v11, a1 + 296);
  bn_mod_mul_montgomery_small(&__dst, v25, v25, *(a1 + 328), a1 + 296);
  if (a3)
  {
    bn_mod_mul_montgomery_small(a3, a2, &__dst, *(a1 + 328), a1 + 296);
  }

  if (a4)
  {
    bn_mod_mul_montgomery_small(&__dst, &__dst, v25, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(a4, a2 + 9, &__dst, *(a1 + 328), a1 + 296);
  }

  return 1;
}

uint64_t ec_GFp_mont_jacobian_to_affine_batch(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v40 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v6 = a2;
    *a2 = *(a3 + 144);
    v8 = *(a3 + 160);
    v9 = *(a3 + 176);
    v10 = *(a3 + 192);
    *(a2 + 64) = *(a3 + 208);
    *(a2 + 32) = v9;
    *(a2 + 48) = v10;
    *(a2 + 16) = v8;
    v11 = a4 - 1;
    if (a4 != 1)
    {
      v12 = (a3 + 360);
      v13 = a4 - 1;
      do
      {
        v14 = a2 + 144;
        bn_mod_mul_montgomery_small((a2 + 144), a2, v12, *(a1 + 328), a1 + 296);
        v12 += 27;
        a2 = v14;
        --v13;
      }

      while (v13);
    }

    v15 = *(a1 + 328);
    if (v15 < 1)
    {
      goto LABEL_17;
    }

    if (v15 >= 4)
    {
      v16 = v15 & 0x7FFFFFFC;
      v18 = 0uLL;
      v19 = v16;
      v20 = (v6 + 144 * v11);
      v21 = 0uLL;
      do
      {
        v22 = *v20;
        v23 = v20[1];
        v20 += 2;
        v18 = vorrq_s8(v22, v18);
        v21 = vorrq_s8(v23, v21);
        v19 -= 4;
      }

      while (v19);
      v24 = vorrq_s8(v21, v18);
      v17 = vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
      if (v16 == v15)
      {
LABEL_13:
        if (v17)
        {
          if (v15 >= 0xA)
          {
            abort();
          }

          memcpy(__dst, *(a1 + 320), 8 * v15);
          if (__dst[0].i64[0] < 2uLL)
          {
            __dst[0].i64[0] |= 0xFFFFFFFFFFFFFFFELL;
            if (v15 != 1)
            {
              v29 = v15 - 2;
              v30 = &__dst[0].i64[1];
              do
              {
                v31 = v29;
                if ((*v30++)-- != 0)
                {
                  break;
                }

                --v29;
              }

              while (v31);
            }
          }

          else
          {
            __dst[0].i64[0] -= 2;
          }

          bn_mod_exp_mont_small(v36, (v6 + 144 * v11), v15, __dst, v15, a1 + 296);
          v33 = v6 + 144 * a4 - 288;
          v34 = (a3 + 216 * a4 - 72);
          do
          {
            if (v11)
            {
              bn_mod_mul_montgomery_small(__dst, v36, v33, *(a1 + 328), a1 + 296);
              bn_mod_mul_montgomery_small(v36, v36, v34, *(a1 + 328), a1 + 296);
            }

            else
            {
              __dst[2] = v36[2];
              __dst[3] = v36[3];
              v39 = v37;
              __dst[0] = v36[0];
              __dst[1] = v36[1];
            }

            bn_mod_mul_montgomery_small(v35, __dst, __dst, *(a1 + 328), a1 + 296);
            bn_mod_mul_montgomery_small((v33 + 144), v34 - 18, v35, *(a1 + 328), a1 + 296);
            bn_mod_mul_montgomery_small((v33 + 216), v34 - 9, v35, *(a1 + 328), a1 + 296);
            bn_mod_mul_montgomery_small((v33 + 216), (v33 + 216), __dst, *(a1 + 328), a1 + 296);
            --v11;
            v33 -= 144;
            v34 -= 27;
          }

          while (v11 < a4);
          return 1;
        }

LABEL_17:
        ERR_put_error(15, 0, 119, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec_montgomery.cc.inc", 137);
        return 0;
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    v25 = v15 - v16;
    v26 = (144 * a4 + 8 * v16 + v6 - 144);
    do
    {
      v27 = *v26++;
      *&v17 |= v27;
      --v25;
    }

    while (v25);
    goto LABEL_13;
  }

  return 1;
}

uint64_t ec_GFp_mont_cmp_x_coordinate(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 536))
  {
    v5 = *(a1 + 328);
    if (v5 == *(a1 + 264))
    {
      if (v5 < 1)
      {
        return 0;
      }

      if (v5 >= 4)
      {
        v6 = v5 & 0x7FFFFFFC;
        v21 = (a2 + 20);
        v22 = 0uLL;
        v23 = v6;
        v24 = 0uLL;
        do
        {
          v22 = vorrq_s8(v21[-1], v22);
          v24 = vorrq_s8(*v21, v24);
          v21 += 2;
          v23 -= 4;
        }

        while (v23);
        v25 = vorrq_s8(v24, v22);
        v7 = vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL));
        if (v6 == v5)
        {
LABEL_25:
          if (v7)
          {
            v29 = a3;
            bn_mod_mul_montgomery_small(v111, a2 + 18, a2 + 18, v5, a1 + 296);
            v30 = *(a1 + 328);
            if (v30)
            {
              memcpy(&__s1, v29, 8 * v30);
            }

            bn_mod_mul_montgomery_small(&__s1, &__s1, v111, v30, a1 + 296);
            bn_from_montgomery_small(v109, *(a1 + 328), a2, *(a1 + 328), a1 + 296);
            v31 = *(a1 + 328);
            if (!v31)
            {
              return 1;
            }

            v32 = 8 * v31;
            if (8 * v31 < 0x20)
            {
              v33 = 0;
              v34 = 0;
              goto LABEL_35;
            }

            v34 = v32 & 0xFFFFFFFFFFFFFFE0;
            v35 = v113;
            v36 = v110;
            v37 = 0uLL;
            v38 = v32 & 0xFFFFFFFFFFFFFFE0;
            v39 = 0uLL;
            do
            {
              v37 = vorrq_s8(veorq_s8(v36[-1], v35[-1]), v37);
              v39 = vorrq_s8(veorq_s8(*v36, *v35), v39);
              v35 += 2;
              v36 += 2;
              v38 -= 32;
            }

            while (v38);
            v40 = vorrq_s8(v39, v37);
            *v40.i8 = vorr_s8(*v40.i8, *&vextq_s8(v40, v40, 8uLL));
            v41 = v40.i64[0] | HIDWORD(v40.i64[0]) | ((v40.i64[0] | HIDWORD(v40.i64[0])) >> 16);
            v33 = v41 | BYTE1(v41);
            v42 = v32 - v34;
            if (v32 != v34)
            {
              if ((v31 & 3) != 0)
              {
LABEL_35:
                v43 = v33;
                v44 = &__s1.i8[v34];
                v45 = &v109[v34];
                v46 = v34 - v32;
                do
                {
                  v47 = *v44++;
                  v48 = v47;
                  v49 = *v45++;
                  v43 = vorr_s8(veor_s8(v49, v48), v43);
                  v46 += 8;
                }

                while (v46);
                v50 = *&v43 | HIDWORD(*&v43) | ((*&v43 | HIDWORD(*&v43)) >> 16);
                v33 = v50 | BYTE1(v50);
                goto LABEL_38;
              }

              v83 = &v109[v34];
              v84 = &__s1.i8[v34];
              do
              {
                v86 = *v84++;
                v85 = v86;
                v87 = *v83++;
                v33 |= v87 ^ v85;
                --v42;
              }

              while (v42);
            }

LABEL_38:
            if (!v33)
            {
              return 1;
            }

            v51 = *(a1 + 256);
            if (v31 >= 4)
            {
              v52 = 0;
              p_s1 = &__s1;
              v54 = *(a1 + 328);
              do
              {
                v55 = v29[1];
                v56 = *v29 + *v51;
                v57 = __CFADD__(*v29, *v51);
                v58 = __CFADD__(v56, v52);
                v59 = v56 + v52;
                v60 = v58 || v57;
                p_s1->i64[0] = v59;
                v61 = v51[1];
                v58 = __CFADD__(v60 != 0, v55) | __CFADD__(v61, (v60 != 0) + v55);
                p_s1->i64[1] = v61 + (v60 != 0) + v55;
                v62 = v51[2];
                v63 = v29[2];
                v64 = v29[3];
                v65 = v58 + v63;
                v58 = __CFADD__(v58, v63) | __CFADD__(v62, v65);
                p_s1[1].i64[0] = v62 + v65;
                v66 = v51[3];
                v67 = v66 + v58 + v64;
                if (__CFADD__(v58, v64) | __CFADD__(v66, v58 + v64))
                {
                  v52 = 1;
                }

                else
                {
                  v52 = 0;
                }

                p_s1[1].i64[1] = v67;
                v29 += 4;
                v51 += 4;
                p_s1 += 2;
                v54 -= 4;
              }

              while (v54 >= 4);
              if (!v54)
              {
LABEL_60:
                if (v52)
                {
                  return 0;
                }

                v74 = 0;
                for (i = 0; i != v31; ++i)
                {
                  v76 = __s1.i64[i];
                  v77 = *(*(a1 + 320) + 8 * i);
                  v78 = (((v77 ^ v76) - 1) & ~(v77 ^ v76)) >> 63;
                  v74 = v78 & v74 | ((((v76 - v77) ^ v76 | v77 ^ v76) ^ v76) >> 63) & ~v78;
                }

                if ((v74 & 0x80000000) == 0)
                {
                  return 0;
                }

                bn_mod_mul_montgomery_small(&__s1, &__s1, v111, v31, a1 + 296);
                v79 = *(a1 + 328);
                if (v79)
                {
                  v80 = 8 * v79;
                  if ((8 * v79) < 0x20)
                  {
                    v81 = 0;
                    v82 = 0;
                    goto LABEL_74;
                  }

                  v82 = v80 & 0xFFFFFFFFFFFFFFE0;
                  v88 = v113;
                  v89 = v110;
                  v90 = 0uLL;
                  v91 = v80 & 0xFFFFFFFFFFFFFFE0;
                  v92 = 0uLL;
                  do
                  {
                    v90 = vorrq_s8(veorq_s8(v89[-1], v88[-1]), v90);
                    v92 = vorrq_s8(veorq_s8(*v89, *v88), v92);
                    v88 += 2;
                    v89 += 2;
                    v91 -= 32;
                  }

                  while (v91);
                  v93 = vorrq_s8(v92, v90);
                  *v93.i8 = vorr_s8(*v93.i8, *&vextq_s8(v93, v93, 8uLL));
                  v94 = v93.i64[0] | HIDWORD(v93.i64[0]) | ((v93.i64[0] | HIDWORD(v93.i64[0])) >> 16);
                  v81 = v94 | BYTE1(v94);
                  v95 = v80 - v82;
                  if (v80 != v82)
                  {
                    if ((v79 & 3) != 0)
                    {
LABEL_74:
                      v96 = v81;
                      v97 = &__s1.i8[v82];
                      v98 = &v109[v82];
                      v99 = v82 - v80;
                      do
                      {
                        v100 = *v97++;
                        v101 = v100;
                        v102 = *v98++;
                        v96 = vorr_s8(veor_s8(v102, v101), v96);
                        v99 += 8;
                      }

                      while (v99);
                      v103 = *&v96 | HIDWORD(*&v96) | ((*&v96 | HIDWORD(*&v96)) >> 16);
                      v81 = v103 | BYTE1(v103);
                      goto LABEL_77;
                    }

                    v104 = &v109[v82];
                    v105 = &__s1.i8[v82];
                    do
                    {
                      v107 = *v105++;
                      v106 = v107;
                      v108 = *v104++;
                      v81 |= v108 ^ v106;
                      --v95;
                    }

                    while (v95);
                  }

LABEL_77:
                  if (v81)
                  {
                    return 0;
                  }
                }

                return 1;
              }
            }

            else
            {
              v52 = 0;
              p_s1 = &__s1;
              v54 = *(a1 + 328);
            }

            do
            {
              v69 = *v29++;
              v68 = v69;
              v70 = *v51++;
              v58 = __CFADD__(v68, v70);
              v71 = v68 + v70;
              v72 = v58;
              v58 = __CFADD__(v71, v52);
              v73 = v71 + v52;
              if (v58)
              {
                v52 = 1;
              }

              else
              {
                v52 = v72;
              }

              p_s1->i64[0] = v73;
              p_s1 = (p_s1 + 8);
              --v54;
            }

            while (v54);
            goto LABEL_60;
          }

          return 0;
        }
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }

      v26 = v5 - v6;
      v27 = &a2[v6 + 18];
      do
      {
        v28 = *v27++;
        *&v7 |= v28;
        --v26;
      }

      while (v26);
      goto LABEL_25;
    }
  }

  else
  {
    LODWORD(v5) = *(a1 + 328);
  }

  if (v5 < 1)
  {
    return 0;
  }

  if (v5 < 4)
  {
    v8 = 0;
    v9 = 0;
LABEL_13:
    v15 = v5 - v8;
    v16 = &a2[v8 + 18];
    do
    {
      v17 = *v16++;
      *&v9 |= v17;
      --v15;
    }

    while (v15);
    goto LABEL_15;
  }

  v8 = v5 & 0x7FFFFFFC;
  v10 = (a2 + 20);
  v11 = 0uLL;
  v12 = v8;
  v13 = 0uLL;
  do
  {
    v11 = vorrq_s8(v10[-1], v11);
    v13 = vorrq_s8(*v10, v13);
    v10 += 2;
    v12 -= 4;
  }

  while (v12);
  v14 = vorrq_s8(v13, v11);
  v9 = vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL));
  if (v8 != v5)
  {
    goto LABEL_13;
  }

LABEL_15:
  if (!*&v9)
  {
    return 0;
  }

  result = ec_get_x_coordinate_as_scalar(a1, &__s1, a2);
  if (result)
  {
    v20 = *(a1 + 264);
    if (!v20)
    {
      return 1;
    }

    return memcmp(&__s1, a3, 8 * v20) == 0;
  }

  return result;
}

uint64_t ec_GFp_nistp224_point_get_affine_coordinates(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *(a1 + 328);
  if (v4 < 1)
  {
    goto LABEL_385;
  }

  if (v4 <= 3)
  {
    v5 = 0;
    v6 = 0;
LABEL_382:
    v1445 = v4 - v5;
    v1446 = (a2 + 8 * v5 + 144);
    do
    {
      v1447 = *v1446++;
      *&v6 |= v1447;
      --v1445;
    }

    while (v1445);
    goto LABEL_384;
  }

  v5 = v4 & 0x7FFFFFFC;
  v1440 = (a2 + 160);
  v1441 = 0uLL;
  v1442 = v5;
  v1443 = 0uLL;
  do
  {
    v1441 = vorrq_s8(v1440[-1], v1441);
    v1443 = vorrq_s8(*v1440, v1443);
    v1440 += 2;
    v1442 -= 4;
  }

  while (v1442);
  v1444 = vorrq_s8(v1443, v1441);
  v6 = vorr_s8(*v1444.i8, *&vextq_s8(v1444, v1444, 8uLL));
  if (v5 != v4)
  {
    goto LABEL_382;
  }

LABEL_384:
  if (!*&v6)
  {
LABEL_385:
    ERR_put_error(15, 0, 119, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/p224-64.cc.inc", 868);
    return 0;
  }

  v7 = *(a2 + 144) & 0xFFFFFFFFFFFFFFLL;
  v8 = *(a2 + 151) & 0xFFFFFFFFFFFFFFLL;
  v9 = *(a2 + 165);
  v10 = *(a2 + 158) & 0xFFFFFFFFFFFFFFLL;
  v11 = v9 & 0xFFFFFFFFFFFFFFLL;
  v12 = v11 * (2 * v7) + (2 * v10) * v8;
  v13 = v11 * (2 * v8) + v10 * v10 + ((v11 * v11) >> 16);
  v14 = (v11 * v11) << 40;
  v15 = ((v11 * 2 * v10) << 40) & 0xFFFE0000000000;
  v16 = ((2 * v8) * v7 - v11 * (2 * v10)) >> 64;
  v17 = 2 * v8 * v7 - v11 * 2 * v10;
  v18 = (v11 * 2 * v8 + v10 * v10 + ((v11 * v11) >> 16)) << 40;
  v19 = __CFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    ++v16;
  }

  v21 = v13 >> 16;
  v23 = (v8 * v8 + (2 * v10) * v7 - v11 * v11) >> 64;
  v22 = v8 * v8 + 2 * v10 * v7 - v11 * v11;
  v19 = __CFADD__(v22, v15);
  v24 = v22 + v15;
  if (v19)
  {
    ++v23;
  }

  v25 = ((__PAIR128__(v23, v24) + (v13 >> 16)) >> 64) + 0x7FFFFFFFFFFFFF80;
  v26 = HIBYTE(v25);
  *(&v28 + 1) = v25;
  *&v28 = v24 + v21;
  v27 = v28 >> 56;
  v29 = (v12 + ((v11 * (2 * v10)) >> 16)) >> 64;
  v30 = v12 + ((v11 * (2 * v10)) >> 16);
  v19 = __CFADD__(v30, v14);
  v31 = v30 + v14;
  if (v19)
  {
    ++v29;
  }

  v19 = __CFADD__(v31, v27);
  v32 = v31 + v27;
  v33 = v26 + v19 + v29;
  *(&v34 + 1) = v33;
  *&v34 = v32;
  v35 = (v34 >> 16) & 0xFFFF0000000000;
  v19 = __CFADD__(v20, v35);
  v36 = v20 + v35;
  if (v19)
  {
    ++v16;
  }

  *(&v37 + 1) = v33;
  *&v37 = v32;
  v38 = v32 & 0xFFFFFFFFFFFFFFLL;
  v39 = v7 * v7 - (v13 + (v37 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
  v40 = ((v24 + v21) & 0xFFFFFFFFFFFFFFLL) + (v33 >> 8);
  v41 = __PAIR128__(HIBYTE(*(&v39 + 1)) + __CFADD__(v36, (v39 >> 56)) + v16, v36 + (v39 >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v42 = ((__PAIR128__(HIBYTE(*(&v39 + 1)) + __CFADD__(v36, (v39 >> 56)) + v16, v36 + (v39 >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64) >> 56;
  v43 = v41 >> 56;
  v44 = v40 + v43;
  if (__CFADD__(v40, v43))
  {
    v45 = v42 + 1;
  }

  else
  {
    v45 = v42;
  }

  *(&v46 + 1) = v45;
  *&v46 = v44;
  v47 = (v46 >> 56) + v38;
  v48 = (v41 & 0xFFFFFFFFFFFFFFLL) * v7;
  v49 = (v39 & 0xFFFFFFFFFFFFFFLL) * v8;
  v50 = v10;
  v51 = ((v39 & 0xFFFFFFFFFFFFFFLL) * v10) >> 64;
  v52 = (v39 & 0xFFFFFFFFFFFFFFLL) * v10;
  v53 = v47 * v10 + (v44 & 0xFFFFFFFFFFFFFFLL) * v11;
  v54 = v47 * v11;
  v55 = (v44 & 0xFFFFFFFFFFFFFFLL) * v10 + (v41 & 0xFFFFFFFFFFFFFFLL) * v11 + v47 * v8;
  v57 = v47 * v11;
  v56 = v57 >> 16;
  v19 = __CFADD__(v55, v56);
  v58 = v55 + v56;
  v59 = (*(&v57 + 1) >> 16) + v19 + *(&v55 + 1);
  v60 = (v47 * v7) >> 64;
  v61 = v47 * v7;
  v62 = (v41 & 0xFFFFFFFFFFFFFFLL) * v50;
  v63 = (v39 & 0xFFFFFFFFFFFFFFLL) * v11;
  v64 = v54 << 40;
  v66 = (__PAIR128__(v51, v52) + (v41 & 0xFFFFFFFFFFFFFFLL) * v8 + (v44 & 0xFFFFFFFFFFFFFFLL) * v7 - __PAIR128__(*(&v57 + 1), v54)) >> 64;
  v65 = v52 + (v41 & 0xFFFFFFFFFFFFFFLL) * v8 + (v44 & 0xFFFFFFFFFFFFFFLL) * v7 - v54;
  v67 = v53 << 40;
  v19 = __CFADD__(v65, v67);
  v68 = v65 + v67;
  *(&v57 + 1) = v59;
  *&v57 = v58;
  v69 = v57 >> 16;
  if (v19)
  {
    ++v66;
  }

  v70 = __PAIR128__(v66, v68) + __PAIR128__(v59 >> 16, v69);
  v19 = __CFADD__(v62, v63);
  v71 = v62 + v63;
  v72 = v58 << 40;
  v73 = (__PAIR128__(v66, v68) + __PAIR128__(v59 >> 16, v69) + __PAIR128__(0x7FFFFFFFFFFFFF80, 0)) >> 56;
  v75 = __PAIR128__((((v39 & 0xFFFFFFFFFFFFFFLL) * v11) >> 64) + v19 + (((v41 & 0xFFFFFFFFFFFFFFLL) * v50) >> 64), v71) + (v44 & 0xFFFFFFFFFFFFFFLL) * v8 + __PAIR128__(v60, v61);
  v74 = *(&v75 + 1);
  if (__CFADD__(v75, v64))
  {
    v74 = *(&v75 + 1) + 1;
  }

  v76 = __PAIR128__(v74, v75 + v64) + (v53 >> 16) + __PAIR128__((*(&v70 + 1) + 0x7FFFFFFFFFFFFF80) >> 56, v73);
  v77 = (v70 & 0xFFFFFFFFFFFFFFLL) + (*(&v76 + 1) >> 8);
  v78 = (v76 >> 16) & 0xFFFF0000000000;
  v79 = (v39 & 0xFFFFFFFFFFFFFFLL) * v7 - (__PAIR128__(v59, v58) + (v76 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
  v80 = v79 >> 56;
  v81 = HIBYTE(*(&v79 + 1));
  v82 = (__PAIR128__((((v41 & 0xFFFFFFFFFFFFFFLL) * v7) >> 64) + __CFADD__(v49, v48) + (((v39 & 0xFFFFFFFFFFFFFFLL) * v8) >> 64), v49 + v48) - v53) >> 64;
  v83 = v49 + v48 - v53;
  v19 = __CFADD__(v83, v72);
  v84 = v83 + v72;
  if (v19)
  {
    ++v82;
  }

  v19 = __CFADD__(v84, v78);
  v85 = v84 + v78;
  if (v19)
  {
    ++v82;
  }

  v86 = __PAIR128__(v81 + __CFADD__(v85, v80) + v82, v85 + v80) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v87 = ((__PAIR128__(v81 + __CFADD__(v85, v80) + v82, v85 + v80) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64) >> 56;
  v88 = v86 >> 56;
  v19 = __CFADD__(v77, v88);
  v89 = v77 + v88;
  if (v19)
  {
    ++v87;
  }

  *(&v90 + 1) = v87;
  *&v90 = v89;
  v91 = (v90 >> 56) + (v76 & 0xFFFFFFFFFFFFFFLL);
  v92 = 2 * (v86 & 0xFFFFFFFFFFFFFFLL);
  v93 = 2 * (v89 & 0xFFFFFFFFFFFFFFLL);
  v94 = v79 & 0xFFFFFFFFFFFFFFLL;
  v95 = (v94 * v94) >> 64;
  v96 = v94 * v94;
  v97 = ((v79 & 0xFFFFFFFFFFFFFFLL) * v92) >> 64;
  v98 = (v79 & 0xFFFFFFFFFFFFFFLL) * v92;
  v99 = ((v79 & 0xFFFFFFFFFFFFFFLL) * v93) >> 64;
  v100 = (v79 & 0xFFFFFFFFFFFFFFLL) * v93;
  v101 = v86 & 0xFFFFFFFFFFFFFFLL;
  v102 = (v101 * v101) >> 64;
  v103 = v101 * v101;
  v104 = ((v86 & 0xFFFFFFFFFFFFFFLL) * v93 + v91 * (2 * (v79 & 0xFFFFFFFFFFFFFFLL))) >> 64;
  v105 = (v86 & 0xFFFFFFFFFFFFFFLL) * v93 + v91 * 2 * (v79 & 0xFFFFFFFFFFFFFFLL);
  v107 = v91 * v92 + (v89 & 0xFFFFFFFFFFFFFFLL) * (v89 & 0xFFFFFFFFFFFFFFLL);
  v106 = (v91 * v92 + (v89 & 0xFFFFFFFFFFFFFFLL) * (v89 & 0xFFFFFFFFFFFFFFLL)) >> 64;
  v108 = v91 * v93;
  v109 = (v91 * v93) >> 64;
  v110 = v91 * v91;
  v111 = (v91 * v91) >> 64;
  *(&v90 + 1) = v111;
  *&v90 = v110;
  v112 = __PAIR128__(v106, v107) + (v90 >> 16);
  v113 = v110 << 40;
  v19 = __CFADD__(v105, v113);
  v114 = v105 + v113;
  *(&v90 + 1) = v109;
  *&v90 = v108;
  v115 = v90 >> 16;
  if (v19)
  {
    ++v104;
  }

  v116 = __PAIR128__(v104, v114) + __PAIR128__(v109 >> 16, v115);
  v117 = (__PAIR128__(v97, v98) - __PAIR128__(v109, v108)) >> 64;
  v118 = v112 << 40;
  v19 = __CFADD__(v98 - v108, v118);
  v119 = v98 - v108 + v118;
  if (v19)
  {
    ++v117;
  }

  v120 = __PAIR128__(v102, v103) - __PAIR128__(v111, v110) + __PAIR128__(v99, v100) + (v112 >> 16) + __PAIR128__(0x7FFFFFFFFFFFFF80, (v108 << 40) & 0xFFFE0000000000);
  v121 = v116 + (v120 >> 56);
  v122 = (v121 >> 16) & 0xFFFF0000000000;
  v19 = __CFADD__(v119, v122);
  v123 = v119 + v122;
  if (v19)
  {
    ++v117;
  }

  v124 = (v120 & 0xFFFFFFFFFFFFFFLL) + (*(&v121 + 1) >> 8);
  v125 = __PAIR128__(v95, v96) - (v112 + (v121 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
  v126 = __PAIR128__(HIBYTE(*(&v125 + 1)) + __CFADD__(v123, (v125 >> 56)) + v117, v123 + (v125 >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v127 = (__PAIR128__(HIBYTE(*(&v125 + 1)) + __CFADD__(v123, (v125 >> 56)) + v117, v123 + (v125 >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 56;
  v19 = __CFADD__(v124, v127);
  v128 = v124 + v127;
  if (v19)
  {
    v129 = (((__PAIR128__(HIBYTE(*(&v125 + 1)) + __CFADD__(v123, (v125 >> 56)) + v117, v123 + (v125 >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64) >> 56) + 1;
  }

  else
  {
    v129 = ((__PAIR128__(HIBYTE(*(&v125 + 1)) + __CFADD__(v123, (v125 >> 56)) + v117, v123 + (v125 >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64) >> 56;
  }

  *(&v130 + 1) = v129;
  *&v130 = v128;
  v131 = (v130 >> 56) + (v121 & 0xFFFFFFFFFFFFFFLL);
  v132 = ((v126 & 0xFFFFFFFFFFFFFFLL) * v7) >> 64;
  v133 = (v126 & 0xFFFFFFFFFFFFFFLL) * v7;
  v134 = ((v125 & 0xFFFFFFFFFFFFFFLL) * v8) >> 64;
  v135 = (v125 & 0xFFFFFFFFFFFFFFLL) * v8;
  v136 = v128 & 0xFFFFFFFFFFFFFFLL;
  v137 = ((v128 & 0xFFFFFFFFFFFFFFLL) * v7) >> 64;
  v138 = (v128 & 0xFFFFFFFFFFFFFFLL) * v7;
  v139 = ((v126 & 0xFFFFFFFFFFFFFFLL) * v8) >> 64;
  v140 = (v126 & 0xFFFFFFFFFFFFFFLL) * v8;
  v141 = v8;
  v142 = (v131 * v8) >> 64;
  v143 = v131 * v8;
  v144 = v131 * v50 + v136 * v11;
  v145 = v131 * v11;
  v146 = v136 * v50 + (v126 & 0xFFFFFFFFFFFFFFLL) * v11 + __PAIR128__(v142, v143);
  v148 = v131 * v11;
  v147 = v148 >> 16;
  v19 = __CFADD__(v146, v147);
  v149 = v146 + v147;
  v150 = (*(&v148 + 1) >> 16) + v19 + *(&v146 + 1);
  v151 = (v131 * v7) >> 64;
  v1465 = v11;
  v1466 = v7;
  v152 = v131 * v7;
  v153 = (v136 * v141) >> 64;
  v1463 = v141;
  v1464 = v50;
  v154 = v136 * v141;
  v155 = (v126 & 0xFFFFFFFFFFFFFFLL) * v50;
  v156 = (v125 & 0xFFFFFFFFFFFFFFLL) * v11;
  v157 = ((v125 & 0xFFFFFFFFFFFFFFLL) * v50 + __PAIR128__(v139, v140) + __PAIR128__(v137, v138)) >> 64;
  v158 = v145 << 40;
  v160 = __PAIR128__(v157, (v125 & 0xFFFFFFFFFFFFFFLL) * v50 + v140 + v138) - __PAIR128__(*(&v148 + 1), v145);
  v159 = (__PAIR128__(v157, (v125 & 0xFFFFFFFFFFFFFFLL) * v50 + v140 + v138) - __PAIR128__(*(&v148 + 1), v145)) >> 64;
  v161 = v144 << 40;
  v19 = __CFADD__(v160, v161);
  v162 = v160 + v161;
  *(&v148 + 1) = v150;
  *&v148 = v149;
  v163 = v148 >> 16;
  if (v19)
  {
    ++v159;
  }

  v164 = __PAIR128__(v159, v162) + __PAIR128__(v150 >> 16, v163);
  v19 = __CFADD__(v155, v156);
  v165 = v155 + v156;
  v166 = v149 << 40;
  v167 = (__PAIR128__(v159, v162) + __PAIR128__(v150 >> 16, v163) + __PAIR128__(0x7FFFFFFFFFFFFF80, 0)) >> 56;
  v169 = v165 + v154 + v152;
  v168 = (__PAIR128__((((v125 & 0xFFFFFFFFFFFFFFLL) * v11) >> 64) + v19 + (((v126 & 0xFFFFFFFFFFFFFFLL) * v50) >> 64), v165) + __PAIR128__(v153, v154) + __PAIR128__(v151, v152)) >> 64;
  if (__CFADD__(v169, v158))
  {
    ++v168;
  }

  v170 = __PAIR128__(v168, v169 + v158) + (v144 >> 16) + __PAIR128__((*(&v164 + 1) + 0x7FFFFFFFFFFFFF80) >> 56, v167);
  v171 = (v164 & 0xFFFFFFFFFFFFFFLL) + (*(&v170 + 1) >> 8);
  v172 = (v170 >> 16) & 0xFFFF0000000000;
  v173 = (v125 & 0xFFFFFFFFFFFFFFLL) * v7 - (__PAIR128__(v150, v149) + (v170 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
  v175 = __PAIR128__(v132 + __CFADD__(v135, v133) + v134, v135 + v133) - v144;
  v174 = (__PAIR128__(v132 + __CFADD__(v135, v133) + v134, v135 + v133) - v144) >> 64;
  v176 = v175 + v166;
  if (__CFADD__(v175, v166))
  {
    ++v174;
  }

  v19 = __CFADD__(v176, v172);
  v177 = v176 + v172;
  if (v19)
  {
    ++v174;
  }

  v178 = __PAIR128__(v174, v177) + (v173 >> 56) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v179 = v178 >> 56;
  v180 = v171 + v179;
  if (__CFADD__(v171, v179))
  {
    v181 = HIBYTE(*(&v178 + 1)) + 1;
  }

  else
  {
    v181 = HIBYTE(*(&v178 + 1));
  }

  *(&v182 + 1) = v181;
  *&v182 = v180;
  v183 = (v182 >> 56) + (v170 & 0xFFFFFFFFFFFFFFLL);
  v184 = 2 * (v178 & 0xFFFFFFFFFFFFFFLL);
  v185 = 2 * (v180 & 0xFFFFFFFFFFFFFFLL);
  v186 = v173 & 0xFFFFFFFFFFFFFFLL;
  v187 = ((v173 & 0xFFFFFFFFFFFFFFLL) * v184) >> 64;
  v188 = (v173 & 0xFFFFFFFFFFFFFFLL) * v184;
  v189 = ((v173 & 0xFFFFFFFFFFFFFFLL) * v185) >> 64;
  v190 = (v173 & 0xFFFFFFFFFFFFFFLL) * v185;
  v191 = v178 & 0xFFFFFFFFFFFFFFLL;
  v193 = ((v178 & 0xFFFFFFFFFFFFFFLL) * v185 + v183 * (2 * (v173 & 0xFFFFFFFFFFFFFFLL))) >> 64;
  v192 = (v178 & 0xFFFFFFFFFFFFFFLL) * v185 + v183 * 2 * (v173 & 0xFFFFFFFFFFFFFFLL);
  v194 = v180 & 0xFFFFFFFFFFFFFFLL;
  v195 = v183 * v185;
  v196 = (v183 * v185) >> 64;
  v198 = (v183 * v184 + v194 * v194 + ((v183 * v183) >> 16)) >> 64;
  v197 = v183 * v184 + v194 * v194 + ((v183 * v183) >> 16);
  v199 = (((v182 >> 56) + v170) * ((v182 >> 56) + v170)) << 40;
  v19 = __CFADD__(v192, v199);
  v200 = v192 + v199;
  if (v19)
  {
    ++v193;
  }

  *(&v201 + 1) = v196;
  *&v201 = v195;
  v202 = __PAIR128__(v193, v200) + (v201 >> 16);
  v203 = (__PAIR128__(v187, v188) - __PAIR128__(v196, v195)) >> 64;
  v204 = v197 << 40;
  v19 = __CFADD__(v188 - v195, v204);
  v205 = v188 - v195 + v204;
  if (v19)
  {
    ++v203;
  }

  *(&v206 + 1) = v198;
  *&v206 = v197;
  v207 = v191 * v191 - v183 * v183 + __PAIR128__(v189, v190) + (v206 >> 16) + __PAIR128__(0x7FFFFFFFFFFFFF80, (v195 << 40) & 0xFFFE0000000000);
  v208 = v202 + (v207 >> 56);
  v209 = (v208 >> 16) & 0xFFFF0000000000;
  v19 = __CFADD__(v205, v209);
  v210 = v205 + v209;
  if (v19)
  {
    ++v203;
  }

  v211 = (v207 & 0xFFFFFFFFFFFFFFLL) + (*(&v208 + 1) >> 8);
  v212 = v186 * v186 - (__PAIR128__(v198, v197) + (v208 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
  v213 = __PAIR128__(v203, v210) + (v212 >> 56) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v214 = v213 >> 56;
  v215 = HIBYTE(*(&v213 + 1));
  v19 = __CFADD__(v211, v214);
  v216 = v211 + v214;
  if (v19)
  {
    ++v215;
  }

  *(&v217 + 1) = v215;
  *&v217 = v216;
  v218 = (v217 >> 56) + (v208 & 0xFFFFFFFFFFFFFFLL);
  v219 = 2 * (v213 & 0xFFFFFFFFFFFFFFLL);
  v220 = 2 * (v216 & 0xFFFFFFFFFFFFFFLL);
  v221 = v212 & 0xFFFFFFFFFFFFFFLL;
  v222 = (v221 * v221) >> 64;
  v223 = v221 * v221;
  v224 = ((v212 & 0xFFFFFFFFFFFFFFLL) * v219) >> 64;
  v225 = (v212 & 0xFFFFFFFFFFFFFFLL) * v219;
  v226 = ((v212 & 0xFFFFFFFFFFFFFFLL) * v220) >> 64;
  v227 = (v212 & 0xFFFFFFFFFFFFFFLL) * v220;
  v228 = v213 & 0xFFFFFFFFFFFFFFLL;
  v229 = (v228 * v228) >> 64;
  v230 = v228 * v228;
  v232 = (v213 & 0xFFFFFFFFFFFFFFLL) * v220 + v218 * 2 * (v212 & 0xFFFFFFFFFFFFFFLL);
  v231 = ((v213 & 0xFFFFFFFFFFFFFFLL) * v220 + v218 * (2 * (v212 & 0xFFFFFFFFFFFFFFLL))) >> 64;
  v234 = v218 * v219 + (v216 & 0xFFFFFFFFFFFFFFLL) * (v216 & 0xFFFFFFFFFFFFFFLL);
  v233 = (v218 * v219 + (v216 & 0xFFFFFFFFFFFFFFLL) * (v216 & 0xFFFFFFFFFFFFFFLL)) >> 64;
  v235 = v218 * v220;
  v236 = (v218 * v220) >> 64;
  v237 = v218 * v218;
  v238 = (v218 * v218) >> 64;
  *(&v217 + 1) = v238;
  *&v217 = v237;
  v239 = __PAIR128__(v233, v234) + (v217 >> 16);
  v240 = v237 << 40;
  if (__CFADD__(v232, v240))
  {
    ++v231;
  }

  *(&v241 + 1) = v236;
  *&v241 = v235;
  v242 = __PAIR128__(v231, v232 + v240) + (v241 >> 16);
  v243 = (__PAIR128__(v224, v225) - __PAIR128__(v236, v235)) >> 64;
  v244 = v239 << 40;
  v19 = __CFADD__(v225 - v235, v244);
  v245 = v225 - v235 + v244;
  if (v19)
  {
    ++v243;
  }

  v246 = __PAIR128__(v229, v230) - __PAIR128__(v238, v237) + __PAIR128__(v226, v227) + (v239 >> 16) + __PAIR128__(0x7FFFFFFFFFFFFF80, (v235 << 40) & 0xFFFE0000000000);
  v247 = (v242 + (v246 >> 56)) >> 64;
  v248 = ((v242 + (v246 >> 56)) >> 16) & 0xFFFF0000000000;
  v19 = __CFADD__(v245, v248);
  v249 = v245 + v248;
  if (v19)
  {
    ++v243;
  }

  v250 = HIBYTE(v247);
  v251 = (v246 & 0xFFFFFFFFFFFFFFLL) + (v247 >> 8);
  v252 = __PAIR128__(v222, v223) - (v239 + __PAIR128__(v250, (v242 + (v246 >> 56)) >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
  v253 = __PAIR128__(HIBYTE(*(&v252 + 1)) + __CFADD__(v249, (v252 >> 56)) + v243, v249 + (v252 >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v254 = (__PAIR128__(HIBYTE(*(&v252 + 1)) + __CFADD__(v249, (v252 >> 56)) + v243, v249 + (v252 >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 56;
  v19 = __CFADD__(v251, v254);
  v255 = v251 + v254;
  if (v19)
  {
    v256 = (((__PAIR128__(HIBYTE(*(&v252 + 1)) + __CFADD__(v249, (v252 >> 56)) + v243, v249 + (v252 >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64) >> 56) + 1;
  }

  else
  {
    v256 = ((__PAIR128__(HIBYTE(*(&v252 + 1)) + __CFADD__(v249, (v252 >> 56)) + v243, v249 + (v252 >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64) >> 56;
  }

  *(&v257 + 1) = v256;
  *&v257 = v255;
  v258 = (v257 >> 56) + ((v242 + (v246 >> 56)) & 0xFFFFFFFFFFFFFFLL);
  v259 = 2 * ((v249 + (v252 >> 56) - 0x80000000000000) & 0xFFFFFFFFFFFFFFLL);
  v260 = 2 * (v255 & 0xFFFFFFFFFFFFFFLL);
  v261 = v252 & 0xFFFFFFFFFFFFFFLL;
  v262 = (v261 * v261) >> 64;
  v263 = v261 * v261;
  v264 = ((v252 & 0xFFFFFFFFFFFFFFLL) * v259) >> 64;
  v265 = (v252 & 0xFFFFFFFFFFFFFFLL) * v259;
  v266 = ((v252 & 0xFFFFFFFFFFFFFFLL) * v260) >> 64;
  v267 = (v252 & 0xFFFFFFFFFFFFFFLL) * v260;
  v268 = v253 & 0xFFFFFFFFFFFFFFLL;
  v269 = (v268 * v268) >> 64;
  v270 = v268 * v268;
  v272 = ((v253 & 0xFFFFFFFFFFFFFFLL) * v260 + v258 * (2 * (v252 & 0xFFFFFFFFFFFFFFLL))) >> 64;
  v271 = (v253 & 0xFFFFFFFFFFFFFFLL) * v260 + v258 * 2 * (v252 & 0xFFFFFFFFFFFFFFLL);
  v274 = v258 * v259 + (v255 & 0xFFFFFFFFFFFFFFLL) * (v255 & 0xFFFFFFFFFFFFFFLL);
  v273 = (v258 * v259 + (v255 & 0xFFFFFFFFFFFFFFLL) * (v255 & 0xFFFFFFFFFFFFFFLL)) >> 64;
  v275 = v258 * v260;
  v276 = (v258 * v260) >> 64;
  v277 = v258 * v258;
  v278 = (v258 * v258) >> 64;
  *(&v257 + 1) = v278;
  *&v257 = v277;
  v279 = __PAIR128__(v273, v274) + (v257 >> 16);
  v280 = v277 << 40;
  v19 = __CFADD__(v271, v280);
  v281 = v271 + v280;
  if (v19)
  {
    ++v272;
  }

  *(&v282 + 1) = v276;
  *&v282 = v275;
  v283 = __PAIR128__(v272, v281) + (v282 >> 16);
  v284 = (__PAIR128__(v264, v265) - __PAIR128__(v276, v275)) >> 64;
  v285 = v279 << 40;
  v19 = __CFADD__(v265 - v275, v285);
  v286 = v265 - v275 + v285;
  if (v19)
  {
    ++v284;
  }

  v287 = __PAIR128__(v269, v270) - __PAIR128__(v278, v277) + __PAIR128__(v266, v267) + (v279 >> 16) + __PAIR128__(0x7FFFFFFFFFFFFF80, (v275 << 40) & 0xFFFE0000000000);
  v288 = v283 + (v287 >> 56);
  v289 = (v288 >> 16) & 0xFFFF0000000000;
  v19 = __CFADD__(v286, v289);
  v290 = v286 + v289;
  if (v19)
  {
    ++v284;
  }

  v291 = (v287 & 0xFFFFFFFFFFFFFFLL) + (*(&v288 + 1) >> 8);
  v292 = __PAIR128__(v262, v263) - (v279 + (v288 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
  v293 = __PAIR128__(HIBYTE(*(&v292 + 1)) + __CFADD__(v290, (v292 >> 56)) + v284, v290 + (v292 >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v294 = (__PAIR128__(HIBYTE(*(&v292 + 1)) + __CFADD__(v290, (v292 >> 56)) + v284, v290 + (v292 >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 56;
  v19 = __CFADD__(v291, v294);
  v295 = v291 + v294;
  if (v19)
  {
    v296 = (((__PAIR128__(HIBYTE(*(&v292 + 1)) + __CFADD__(v290, (v292 >> 56)) + v284, v290 + (v292 >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64) >> 56) + 1;
  }

  else
  {
    v296 = ((__PAIR128__(HIBYTE(*(&v292 + 1)) + __CFADD__(v290, (v292 >> 56)) + v284, v290 + (v292 >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64) >> 56;
  }

  *(&v297 + 1) = v296;
  *&v297 = v295;
  v298 = (v297 >> 56) + (v288 & 0xFFFFFFFFFFFFFFLL);
  v299 = ((v292 & 0xFFFFFFFFFFFFFFLL) * v186) >> 64;
  v300 = ((v292 & 0xFFFFFFFFFFFFFFLL) * v191) >> 64;
  v301 = (v292 & 0xFFFFFFFFFFFFFFLL) * v191;
  v302 = ((v293 & 0xFFFFFFFFFFFFFFLL) * v186) >> 64;
  v303 = (v293 & 0xFFFFFFFFFFFFFFLL) * v186;
  v304 = ((v293 & 0xFFFFFFFFFFFFFFLL) * v191) >> 64;
  v305 = (v293 & 0xFFFFFFFFFFFFFFLL) * v191;
  v306 = v295 & 0xFFFFFFFFFFFFFFLL;
  v307 = (v306 * v186) >> 64;
  v308 = v306 * v194 + (v293 & 0xFFFFFFFFFFFFFFLL) * v183 + v298 * v191;
  v309 = v298 * v194 + v306 * v183;
  v310 = (v306 * v191) >> 64;
  v311 = v306 * v191;
  v312 = v306 * v186;
  v313 = (v292 & 0xFFFFFFFFFFFFFFLL) * v186;
  v314 = (v298 * v186) >> 64;
  v315 = v298 * v186;
  v316 = v298 * v183;
  v317 = (v298 * v183) >> 64;
  *(&v297 + 1) = v317;
  *&v297 = v316;
  v318 = v308 + (v297 >> 16);
  v320 = (v292 & 0xFFFFFFFFFFFFFFLL) * v194 + v305 + v312 - v316;
  v319 = ((v292 & 0xFFFFFFFFFFFFFFLL) * v194 + __PAIR128__(v304, v305) + __PAIR128__(v307, v312) - __PAIR128__(v317, v316)) >> 64;
  v321 = v309 << 40;
  if (__CFADD__(v320, v321))
  {
    ++v319;
  }

  v322 = __PAIR128__(v319, v320 + v321) + (v318 >> 16);
  v324 = (v293 & 0xFFFFFFFFFFFFFFLL) * v194 + (v292 & 0xFFFFFFFFFFFFFFLL) * v183 + __PAIR128__(v310, v311) + __PAIR128__(v314, v315);
  v323 = *(&v324 + 1);
  v325 = v316 << 40;
  v326 = v324 + v325;
  if (__CFADD__(v324, v325))
  {
    v323 = *(&v324 + 1) + 1;
  }

  *(&v327 + 1) = *(&v322 + 1) + 0x7FFFFFFFFFFFFF80;
  *&v327 = v320 + v321 + (v318 >> 16);
  v328 = v318 << 40;
  v329 = __PAIR128__(v323, v326) + (v309 >> 16) + (v327 >> 56);
  v330 = (v322 & 0xFFFFFFFFFFFFFFLL) + (*(&v329 + 1) >> 8);
  v331 = (v329 >> 16) & 0xFFFF0000000000;
  v332 = __PAIR128__(v299, v313) - __PAIR128__((v318 + (v329 >> 56)) >> 64, v318 + (v329 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
  v333 = (__PAIR128__(v300, v301) + __PAIR128__(v302, v303) - v309) >> 64;
  v334 = v301 + v303 - v309;
  v19 = __CFADD__(v334, v328);
  v335 = v334 + v328;
  if (v19)
  {
    ++v333;
  }

  v19 = __CFADD__(v335, v331);
  v336 = v335 + v331;
  if (v19)
  {
    v337 = v333 + 1;
  }

  else
  {
    v337 = v333;
  }

  v338 = __PAIR128__(v337, v336) + (v332 >> 56) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v339 = v338 >> 56;
  v19 = __CFADD__(v330, v339);
  v340 = v330 + v339;
  if (v19)
  {
    v341 = HIBYTE(*(&v338 + 1)) + 1;
  }

  else
  {
    v341 = HIBYTE(*(&v338 + 1));
  }

  *(&v342 + 1) = v341;
  *&v342 = v340;
  v343 = (v342 >> 56) + (v329 & 0xFFFFFFFFFFFFFFLL);
  v344 = 2 * (v338 & 0xFFFFFFFFFFFFFFLL);
  v345 = 2 * (v340 & 0xFFFFFFFFFFFFFFLL);
  v346 = v332 & 0xFFFFFFFFFFFFFFLL;
  v347 = v338 & 0xFFFFFFFFFFFFFFLL;
  v349 = ((v338 & 0xFFFFFFFFFFFFFFLL) * v345 + v343 * (2 * (v332 & 0xFFFFFFFFFFFFFFLL))) >> 64;
  v348 = (v338 & 0xFFFFFFFFFFFFFFLL) * v345 + v343 * 2 * (v332 & 0xFFFFFFFFFFFFFFLL);
  v1471 = v340 & 0xFFFFFFFFFFFFFFLL;
  v351 = (v343 * v344 + v1471 * v1471 + ((v343 * v343) >> 16)) >> 64;
  v350 = v343 * v344 + v1471 * v1471 + ((v343 * v343) >> 16);
  v352 = (((v342 >> 56) + v329) * ((v342 >> 56) + v329)) << 40;
  v19 = __CFADD__(v348, v352);
  v353 = v348 + v352;
  if (v19)
  {
    ++v349;
  }

  v354 = (v346 * v344 - v343 * v345) >> 64;
  v355 = v346 * v344 - v343 * v345;
  v356 = v350 << 40;
  v19 = __CFADD__(v355, v356);
  v357 = v355 + v356;
  if (v19)
  {
    ++v354;
  }

  *(&v358 + 1) = v351;
  *&v358 = v350;
  v359 = v347 * v347 - v343 * v343 + v346 * v345 + (v358 >> 16) + __PAIR128__(0x7FFFFFFFFFFFFF80, ((v343 * v345) << 40) & 0xFFFE0000000000);
  v360 = __PAIR128__(v349, v353) + ((v343 * v345) >> 16) + (v359 >> 56);
  v361 = (v360 >> 16) & 0xFFFF0000000000;
  v19 = __CFADD__(v357, v361);
  v362 = v357 + v361;
  if (v19)
  {
    v363 = v354 + 1;
  }

  else
  {
    v363 = v354;
  }

  v364 = __PAIR128__(v349, v353) + ((v343 * v345) >> 16) + (v359 >> 56);
  v365 = (v359 & 0xFFFFFFFFFFFFFFLL) + (*(&v360 + 1) >> 8);
  v366 = v346 * v346 - (v350 + (v360 >> 56)) + 0x8000;
  v369 = __PAIR128__((((v346 * v346 - __PAIR128__(HIBYTE(*(&v360 + 1)) + __CFADD__(v350, (v364 >> 56)) + v351, v350 + (v364 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 64) >> 56) + __CFADD__(v362, ((v346 * v346 - __PAIR128__(HIBYTE(*(&v360 + 1)) + __CFADD__(v350, (v364 >> 56)) + v351, v350 + (v364 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 56)) + v363, v362 + ((v346 * v346 - __PAIR128__(HIBYTE(*(&v360 + 1)) + __CFADD__(v350, (v364 >> 56)) + v351, v350 + (v364 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v367 = (__PAIR128__((((v346 * v346 - __PAIR128__(HIBYTE(*(&v360 + 1)) + __CFADD__(v350, (v364 >> 56)) + v351, v350 + (v364 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 64) >> 56) + __CFADD__(v362, ((v346 * v346 - __PAIR128__(HIBYTE(*(&v360 + 1)) + __CFADD__(v350, (v364 >> 56)) + v351, v350 + (v364 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 56)) + v363, v362 + ((v346 * v346 - __PAIR128__(HIBYTE(*(&v360 + 1)) + __CFADD__(v350, (v364 >> 56)) + v351, v350 + (v364 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64;
  v368 = v362 + ((v346 * v346 - __PAIR128__(HIBYTE(*(&v360 + 1)) + __CFADD__(v350, (v364 >> 56)) + v351, v350 + (v364 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 56) - 0x80000000000000;
  v370 = __PAIR128__(v367, v369) >> 56;
  v371 = v365 + v370;
  v372 = HIBYTE(v367);
  if (__CFADD__(v365, v370))
  {
    ++v372;
  }

  *(&v373 + 1) = v372;
  *&v373 = v365 + v370;
  v374 = (v373 >> 56) + (v360 & 0xFFFFFFFFFFFFFFLL);
  v375 = 5;
  do
  {
    v376 = v368 & 0xFFFFFFFFFFFFFFLL;
    v377 = v366 & 0xFFFFFFFFFFFFFFLL;
    v378 = 2 * (v366 & 0xFFFFFFFFFFFFFFLL);
    v379 = 2 * (v371 & 0xFFFFFFFFFFFFFFLL);
    v380 = (v377 * v377) >> 64;
    v381 = v377 * v377;
    v382 = ((2 * v376) * v377) >> 64;
    v383 = 2 * v376 * v377;
    v384 = (v379 * v377) >> 64;
    v385 = v379 * v377;
    v386 = v379 * v376 + v374 * v378;
    v387 = v374 * (2 * v376) + (v371 & 0xFFFFFFFFFFFFFFLL) * (v371 & 0xFFFFFFFFFFFFFFLL);
    v388 = v379 * v374;
    v389 = (v379 * v374) >> 64;
    v390 = v374 * v374;
    v391 = (v374 * v374) >> 64;
    *(&v392 + 1) = v391;
    *&v392 = v390;
    v393 = v387 + (v392 >> 16);
    v394 = (v390 << 40) & 0xFFFF0000000000;
    *(&v392 + 1) = v389;
    *&v392 = v388;
    v395 = v392 >> 16;
    v396 = v389 >> 16;
    v397 = (v388 << 40) & 0xFFFE0000000000;
    v398 = (__PAIR128__(v382, v383) - __PAIR128__(v389, v388)) >> 64;
    v399 = v393 << 40;
    v19 = __CFADD__(v383 - v388, v399);
    v400 = v383 - v388 + v399;
    if (v19)
    {
      ++v398;
    }

    v401 = v393 >> 16;
    v403 = v376 * v376 - __PAIR128__(v391, v390) + __PAIR128__(v384, v385);
    v402 = *(&v403 + 1);
    v404 = v403 + v397;
    if (__CFADD__(v403, v397))
    {
      v402 = *(&v403 + 1) + 1;
    }

    v19 = __CFADD__(v404, v401);
    v405 = v404 + v401;
    v406 = (*(&v393 + 1) >> 16) + v19 + v402 + 0x7FFFFFFFFFFFFF80;
    v407 = HIBYTE(v406);
    *(&v409 + 1) = v406;
    *&v409 = v405;
    v408 = v409 >> 56;
    v410 = (v386 + __PAIR128__(v396, v395)) >> 64;
    v411 = v386 + v395 + v394;
    if (__CFADD__(v386 + v395, v394))
    {
      ++v410;
    }

    v412 = __PAIR128__(v410, v411) + __PAIR128__(v407, v408);
    v413 = ((__PAIR128__(v410, v411) + __PAIR128__(v407, v408)) >> 16) & 0xFFFF0000000000;
    v19 = __CFADD__(v400, v413);
    v414 = v400 + v413;
    if (v19)
    {
      ++v398;
    }

    v415 = (v405 & 0xFFFFFFFFFFFFFFLL) + (*(&v412 + 1) >> 8);
    v416 = (__PAIR128__(v380, v381) - (v393 + (v412 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 64;
    v366 = v381 - (v393 + (v412 >> 56)) + 0x8000;
    v418 = __PAIR128__(HIBYTE(v416) + __CFADD__(v414, (__PAIR128__(v416, v366) >> 56)) + v398, v414 + (__PAIR128__(v416, v366) >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
    v417 = (__PAIR128__(HIBYTE(v416) + __CFADD__(v414, (__PAIR128__(v416, v366) >> 56)) + v398, v414 + (__PAIR128__(v416, v366) >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64;
    v368 = v418;
    v419 = HIBYTE(v417);
    v420 = __PAIR128__(v417, v418) >> 56;
    v371 = v415 + v420;
    if (__CFADD__(v415, v420))
    {
      v421 = v419 + 1;
    }

    else
    {
      v421 = v419;
    }

    *(&v422 + 1) = v421;
    *&v422 = v371;
    v374 = (v422 >> 56) + (v412 & 0xFFFFFFFFFFFFFFLL);
    --v375;
  }

  while (v375);
  v423 = v366 & 0xFFFFFFFFFFFFFFLL;
  v424 = v418 & 0xFFFFFFFFFFFFFFLL;
  v425 = v371 & 0xFFFFFFFFFFFFFFLL;
  v426 = v374 * v1471 + (v371 & 0xFFFFFFFFFFFFFFLL) * v343;
  v427 = (v371 & 0xFFFFFFFFFFFFFFLL) * v1471 + (v418 & 0xFFFFFFFFFFFFFFLL) * v343 + v374 * v347 + ((v374 * v343) >> 16);
  v1460 = v332 & 0xFFFFFFFFFFFFFFLL;
  v1462 = v343;
  v428 = ((v366 & 0xFFFFFFFFFFFFFFLL) * v1471 + (v418 & 0xFFFFFFFFFFFFFFLL) * v347 + (v371 & 0xFFFFFFFFFFFFFFLL) * v346 - v374 * v343) >> 64;
  v429 = (v366 & 0xFFFFFFFFFFFFFFLL) * v1471 + (v418 & 0xFFFFFFFFFFFFFFLL) * v347 + (v371 & 0xFFFFFFFFFFFFFFLL) * v346 - v374 * v343;
  v430 = (v374 * v1471 + v371 * v343) << 40;
  v19 = __CFADD__(v429, v430);
  v431 = v429 + v430;
  if (v19)
  {
    ++v428;
  }

  v432 = __PAIR128__(v428, v431) + (v427 >> 16);
  v1459 = v338 & 0xFFFFFFFFFFFFFFLL;
  v433 = (v374 * v343) << 40;
  v435 = (v424 * v1471 + v423 * v343 + v425 * v347 + v374 * v346) >> 64;
  v434 = v424 * v1471 + v423 * v343 + v425 * v347 + v374 * v346;
  v436 = v427 << 40;
  v19 = __CFADD__(v434, v433);
  v437 = v434 + v433;
  *(&v439 + 1) = *(&v432 + 1) + 0x7FFFFFFFFFFFFF80;
  *&v439 = v431 + (v427 >> 16);
  v438 = v439 >> 56;
  if (v19)
  {
    ++v435;
  }

  v440 = __PAIR128__(v435, v437) + (v426 >> 16) + __PAIR128__((*(&v432 + 1) + 0x7FFFFFFFFFFFFF80) >> 56, v438);
  v441 = (v432 & 0xFFFFFFFFFFFFFFLL) + (*(&v440 + 1) >> 8);
  v442 = (v440 >> 16) & 0xFFFF0000000000;
  v443 = (v366 & 0xFFFFFFFFFFFFFFLL) * v346 - (v427 + (v440 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
  v445 = (v366 & 0xFFFFFFFFFFFFFFLL) * v347 + (v418 & 0xFFFFFFFFFFFFFFLL) * v346 - v426;
  v444 = *(&v445 + 1);
  v19 = __CFADD__(v445, v436);
  v446 = v445 + v436;
  if (v19)
  {
    v444 = *(&v445 + 1) + 1;
  }

  v19 = __CFADD__(v446, v442);
  v447 = v446 + v442;
  if (v19)
  {
    ++v444;
  }

  v448 = __PAIR128__(v444, v447) + (v443 >> 56) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v449 = v448 >> 56;
  v19 = __CFADD__(v441, v449);
  v450 = v441 + v449;
  if (v19)
  {
    v451 = HIBYTE(*(&v448 + 1)) + 1;
  }

  else
  {
    v451 = HIBYTE(*(&v448 + 1));
  }

  *(&v452 + 1) = v451;
  *&v452 = v450;
  v453 = (v452 >> 56) + (v440 & 0xFFFFFFFFFFFFFFLL);
  v454 = 2 * (v448 & 0xFFFFFFFFFFFFFFLL);
  v455 = 2 * (v450 & 0xFFFFFFFFFFFFFFLL);
  v456 = v443 & 0xFFFFFFFFFFFFFFLL;
  v457 = v448 & 0xFFFFFFFFFFFFFFLL;
  v458 = ((v448 & 0xFFFFFFFFFFFFFFLL) * v455 + v453 * (2 * (v443 & 0xFFFFFFFFFFFFFFLL))) >> 64;
  v459 = (v448 & 0xFFFFFFFFFFFFFFLL) * v455 + v453 * 2 * (v443 & 0xFFFFFFFFFFFFFFLL);
  v460 = v450 & 0xFFFFFFFFFFFFFFLL;
  v462 = (v453 * v454 + v460 * v460 + ((v453 * v453) >> 16)) >> 64;
  v461 = v453 * v454 + v460 * v460 + ((v453 * v453) >> 16);
  v463 = (((v452 >> 56) + v440) * ((v452 >> 56) + v440)) << 40;
  v19 = __CFADD__(v459, v463);
  v464 = v459 + v463;
  if (v19)
  {
    ++v458;
  }

  v465 = __PAIR128__(v458, v464) + ((v453 * v455) >> 16);
  v467 = (v456 * v454 - v453 * v455) >> 64;
  v466 = v456 * v454 - v453 * v455;
  v468 = v461 << 40;
  v19 = __CFADD__(v466, v468);
  v469 = v466 + v468;
  if (v19)
  {
    ++v467;
  }

  *(&v470 + 1) = v462;
  *&v470 = v461;
  v471 = v457 * v457 - v453 * v453 + v456 * v455 + (v470 >> 16) + __PAIR128__(0x7FFFFFFFFFFFFF80, ((v453 * v455) << 40) & 0xFFFE0000000000);
  v472 = (v465 + (v471 >> 56)) >> 64;
  v473 = ((v465 + (v471 >> 56)) >> 16) & 0xFFFF0000000000;
  v19 = __CFADD__(v469, v473);
  v474 = v469 + v473;
  if (v19)
  {
    v475 = v467 + 1;
  }

  else
  {
    v475 = v467;
  }

  v476 = (v471 & 0xFFFFFFFFFFFFFFLL) + (v472 >> 8);
  v477 = (v456 * v456 - __PAIR128__(HIBYTE(v472) + __CFADD__(v461, ((v465 + (v471 >> 56)) >> 56)) + v462, v461 + ((v465 + (v471 >> 56)) >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 64;
  v478 = v456 * v456 - (v461 + ((v465 + (v471 >> 56)) >> 56)) + 0x8000;
  v481 = __PAIR128__(HIBYTE(v477) + __CFADD__(v474, (__PAIR128__(v477, v478) >> 56)) + v475, v474 + (__PAIR128__(v477, v478) >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v479 = (__PAIR128__(HIBYTE(v477) + __CFADD__(v474, (__PAIR128__(v477, v478) >> 56)) + v475, v474 + (__PAIR128__(v477, v478) >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64;
  v480 = v481;
  v482 = __PAIR128__(v479, v481) >> 56;
  v483 = v476 + v482;
  v484 = HIBYTE(v479);
  if (__CFADD__(v476, v482))
  {
    ++v484;
  }

  *(&v485 + 1) = v484;
  *&v485 = v476 + v482;
  v486 = (v485 >> 56) + ((v465 + (v471 >> 56)) & 0xFFFFFFFFFFFFFFLL);
  v487 = 11;
  do
  {
    v488 = v483 & 0xFFFFFFFFFFFFFFLL;
    v489 = v480 & 0xFFFFFFFFFFFFFFLL;
    v490 = v478 & 0xFFFFFFFFFFFFFFLL;
    v491 = 2 * (v478 & 0xFFFFFFFFFFFFFFLL);
    v492 = 2 * (v483 & 0xFFFFFFFFFFFFFFLL);
    v493 = (v490 * v490) >> 64;
    v494 = v490 * v490;
    v495 = ((2 * v489) * v490) >> 64;
    v496 = 2 * v489 * v490;
    v497 = (v492 * v490) >> 64;
    v498 = v492 * v490;
    v499 = v492 * v489 + v486 * v491;
    v500 = v486 * (2 * v489) + v488 * v488;
    v501 = v492 * v486;
    v502 = (v492 * v486) >> 64;
    v503 = v486 * v486;
    v504 = (v486 * v486) >> 64;
    *(&v505 + 1) = v504;
    *&v505 = v503;
    v506 = v500 + (v505 >> 16);
    v507 = (v503 << 40) & 0xFFFF0000000000;
    *(&v505 + 1) = v502;
    *&v505 = v501;
    v508 = v505 >> 16;
    v509 = v502 >> 16;
    v510 = (v501 << 40) & 0xFFFE0000000000;
    v511 = (__PAIR128__(v495, v496) - __PAIR128__(v502, v501)) >> 64;
    v512 = v506 << 40;
    v19 = __CFADD__(v496 - v501, v512);
    v513 = v496 - v501 + v512;
    if (v19)
    {
      ++v511;
    }

    v514 = v506 >> 16;
    v516 = v489 * v489 - __PAIR128__(v504, v503) + __PAIR128__(v497, v498);
    v515 = *(&v516 + 1);
    v517 = v516 + v510;
    if (__CFADD__(v516, v510))
    {
      v515 = *(&v516 + 1) + 1;
    }

    v19 = __CFADD__(v517, v514);
    v518 = v517 + v514;
    v519 = (*(&v506 + 1) >> 16) + v19 + v515 + 0x7FFFFFFFFFFFFF80;
    v520 = HIBYTE(v519);
    *(&v522 + 1) = v519;
    *&v522 = v518;
    v521 = v522 >> 56;
    v523 = (v499 + __PAIR128__(v509, v508)) >> 64;
    v524 = v499 + v508 + v507;
    if (__CFADD__(v499 + v508, v507))
    {
      ++v523;
    }

    v525 = __PAIR128__(v523, v524) + __PAIR128__(v520, v521);
    v526 = ((__PAIR128__(v523, v524) + __PAIR128__(v520, v521)) >> 16) & 0xFFFF0000000000;
    v19 = __CFADD__(v513, v526);
    v527 = v513 + v526;
    if (v19)
    {
      ++v511;
    }

    v528 = (v518 & 0xFFFFFFFFFFFFFFLL) + (*(&v525 + 1) >> 8);
    v529 = (__PAIR128__(v493, v494) - (v506 + (v525 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 64;
    v478 = v494 - (v506 + (v525 >> 56)) + 0x8000;
    v531 = __PAIR128__(HIBYTE(v529) + __CFADD__(v527, (__PAIR128__(v529, v478) >> 56)) + v511, v527 + (__PAIR128__(v529, v478) >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
    v530 = (__PAIR128__(HIBYTE(v529) + __CFADD__(v527, (__PAIR128__(v529, v478) >> 56)) + v511, v527 + (__PAIR128__(v529, v478) >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64;
    v480 = v531;
    v532 = HIBYTE(v530);
    v533 = __PAIR128__(v530, v531) >> 56;
    v483 = v528 + v533;
    if (__CFADD__(v528, v533))
    {
      v534 = v532 + 1;
    }

    else
    {
      v534 = v532;
    }

    *(&v535 + 1) = v534;
    *&v535 = v483;
    v486 = (v535 >> 56) + (v525 & 0xFFFFFFFFFFFFFFLL);
    --v487;
  }

  while (v487);
  v536 = v478 & 0xFFFFFFFFFFFFFFLL;
  v537 = ((v478 & 0xFFFFFFFFFFFFFFLL) * v456) >> 64;
  v538 = (v478 & 0xFFFFFFFFFFFFFFLL) * v456;
  v539 = (v536 * v457) >> 64;
  v540 = v536 * v457;
  v541 = ((v531 & 0xFFFFFFFFFFFFFFLL) * v456) >> 64;
  v542 = (v531 & 0xFFFFFFFFFFFFFFLL) * v456;
  v543 = (v536 * v460) >> 64;
  v544 = v536 * v460;
  v545 = ((v531 & 0xFFFFFFFFFFFFFFLL) * v457) >> 64;
  v546 = (v531 & 0xFFFFFFFFFFFFFFLL) * v457;
  v547 = v483 & 0xFFFFFFFFFFFFFFLL;
  v548 = ((v483 & 0xFFFFFFFFFFFFFFLL) * v456) >> 64;
  v549 = (v483 & 0xFFFFFFFFFFFFFFLL) * v456;
  v550 = (v536 * v453) >> 64;
  v551 = v536 * v453;
  v552 = ((v531 & 0xFFFFFFFFFFFFFFLL) * v460) >> 64;
  v553 = (v531 & 0xFFFFFFFFFFFFFFLL) * v460;
  v554 = ((v483 & 0xFFFFFFFFFFFFFFLL) * v457) >> 64;
  v555 = (v483 & 0xFFFFFFFFFFFFFFLL) * v457;
  v556 = (v486 * v456) >> 64;
  v557 = v486 * v456;
  v559 = (v547 * v460 + (v531 & 0xFFFFFFFFFFFFFFLL) * v453 + v486 * v457) >> 64;
  v558 = v547 * v460 + (v531 & 0xFFFFFFFFFFFFFFLL) * v453 + v486 * v457;
  v560 = (v547 * v453) >> 64;
  v561 = (v486 * v460) >> 64;
  v562 = v486 * v460;
  v563 = v547 * v453;
  v564 = v486 * v453;
  v565 = (v486 * v453) >> 64;
  v566 = (v486 * v453) >> 16;
  v567 = __PAIR128__(v561, v562) + __PAIR128__(v560, v563);
  v19 = __CFADD__(v558, v566);
  v568 = v558 + v566;
  v569 = (v565 >> 16) + v19 + v559;
  v571 = v544 + v546 + v549 - v564;
  v570 = (__PAIR128__(v543, v544) + __PAIR128__(v545, v546) + __PAIR128__(v548, v549) - __PAIR128__(v565, v564)) >> 64;
  v572 = v567 << 40;
  v19 = __CFADD__(v571, v572);
  v573 = v571 + v572;
  *(&v575 + 1) = v569;
  *&v575 = v568;
  v574 = v575 >> 16;
  if (v19)
  {
    ++v570;
  }

  v576 = v573 + v574;
  v577 = v564 << 40;
  v578 = ((__PAIR128__(v570, v573) + __PAIR128__(v569 >> 16, v574)) >> 64) + 0x7FFFFFFFFFFFFF80;
  v580 = (__PAIR128__(v552, v553) + __PAIR128__(v550, v551) + __PAIR128__(v554, v555) + __PAIR128__(v556, v557)) >> 64;
  v579 = v553 + v551 + v555 + v557;
  v581 = v568 << 40;
  v19 = __CFADD__(v579, v577);
  v582 = v579 + v577;
  v583 = HIBYTE(v578);
  *(&v585 + 1) = v578;
  *&v585 = v576;
  v584 = v585 >> 56;
  if (v19)
  {
    ++v580;
  }

  v586 = __PAIR128__(v580, v582) + (v567 >> 16) + __PAIR128__(v583, v584);
  v587 = (v576 & 0xFFFFFFFFFFFFFFLL) + (*(&v586 + 1) >> 8);
  v588 = (v586 >> 16) & 0xFFFF0000000000;
  v589 = __PAIR128__(v537, v538) - (__PAIR128__(v569, v568) + (v586 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
  v590 = __PAIR128__(v539, v540) + __PAIR128__(v541, v542) - v567;
  v591 = v590 + v581;
  if (__CFADD__(v590, v581))
  {
    v592 = *(&v590 + 1) + 1;
  }

  else
  {
    v592 = (__PAIR128__(v539, v540) + __PAIR128__(v541, v542) - v567) >> 64;
  }

  v19 = __CFADD__(v591, v588);
  v593 = v591 + v588;
  if (v19)
  {
    v594 = v592 + 1;
  }

  else
  {
    v594 = v592;
  }

  v595 = __PAIR128__(v594, v593) + (v589 >> 56) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v596 = v595 >> 56;
  v19 = __CFADD__(v587, v596);
  v597 = v587 + v596;
  if (v19)
  {
    v598 = HIBYTE(*(&v595 + 1)) + 1;
  }

  else
  {
    v598 = HIBYTE(*(&v595 + 1));
  }

  *(&v599 + 1) = v598;
  *&v599 = v597;
  v600 = (v599 >> 56) + (v586 & 0xFFFFFFFFFFFFFFLL);
  v601 = 2 * ((v593 + (v589 >> 56) - 0x80000000000000) & 0xFFFFFFFFFFFFFFLL);
  v602 = 2 * (v597 & 0xFFFFFFFFFFFFFFLL);
  v603 = v589 & 0xFFFFFFFFFFFFFFLL;
  v604 = v595 & 0xFFFFFFFFFFFFFFLL;
  v605 = ((v595 & 0xFFFFFFFFFFFFFFLL) * v602 + v600 * (2 * (v589 & 0xFFFFFFFFFFFFFFLL))) >> 64;
  v606 = (v595 & 0xFFFFFFFFFFFFFFLL) * v602 + v600 * 2 * (v589 & 0xFFFFFFFFFFFFFFLL);
  v607 = v597 & 0xFFFFFFFFFFFFFFLL;
  v608 = (v600 * v601 + v607 * v607 + ((v600 * v600) >> 16)) >> 64;
  v609 = v600 * v601 + v607 * v607 + ((v600 * v600) >> 16);
  v610 = (((v599 >> 56) + v586) * ((v599 >> 56) + v586)) << 40;
  v19 = __CFADD__(v606, v610);
  v611 = v606 + v610;
  if (v19)
  {
    ++v605;
  }

  v613 = (v603 * v601 - v600 * v602) >> 64;
  v612 = v603 * v601 - v600 * v602;
  v614 = v609 << 40;
  v19 = __CFADD__(v612, v614);
  v615 = v612 + v614;
  if (v19)
  {
    ++v613;
  }

  *(&v616 + 1) = v608;
  *&v616 = v609;
  v617 = v604 * v604 - v600 * v600 + v603 * v602 + (v616 >> 16) + __PAIR128__(0x7FFFFFFFFFFFFF80, ((v600 * v602) << 40) & 0xFFFE0000000000);
  v618 = __PAIR128__(v605, v611) + ((v600 * v602) >> 16) + (v617 >> 56);
  v619 = (v618 >> 16) & 0xFFFF0000000000;
  v19 = __CFADD__(v615, v619);
  v620 = v615 + v619;
  if (v19)
  {
    v621 = v613 + 1;
  }

  else
  {
    v621 = v613;
  }

  v622 = v618;
  v623 = (v617 & 0xFFFFFFFFFFFFFFLL) + (*(&v618 + 1) >> 8);
  v624 = v603 * v603 - (v609 + (v618 >> 56)) + 0x8000;
  v627 = __PAIR128__((((v603 * v603 - __PAIR128__(HIBYTE(*(&v618 + 1)) + __CFADD__(v609, (v622 >> 56)) + v608, v609 + (v622 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 64) >> 56) + __CFADD__(v620, ((v603 * v603 - __PAIR128__(HIBYTE(*(&v618 + 1)) + __CFADD__(v609, (v622 >> 56)) + v608, v609 + (v622 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 56)) + v621, v620 + ((v603 * v603 - __PAIR128__(HIBYTE(*(&v618 + 1)) + __CFADD__(v609, (v622 >> 56)) + v608, v609 + (v622 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v625 = (__PAIR128__((((v603 * v603 - __PAIR128__(HIBYTE(*(&v618 + 1)) + __CFADD__(v609, (v622 >> 56)) + v608, v609 + (v622 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 64) >> 56) + __CFADD__(v620, ((v603 * v603 - __PAIR128__(HIBYTE(*(&v618 + 1)) + __CFADD__(v609, (v622 >> 56)) + v608, v609 + (v622 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 56)) + v621, v620 + ((v603 * v603 - __PAIR128__(HIBYTE(*(&v618 + 1)) + __CFADD__(v609, (v622 >> 56)) + v608, v609 + (v622 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64;
  v626 = v620 + ((v603 * v603 - __PAIR128__(HIBYTE(*(&v618 + 1)) + __CFADD__(v609, (v622 >> 56)) + v608, v609 + (v622 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 56) - 0x80000000000000;
  v628 = __PAIR128__(v625, v627) >> 56;
  v629 = v623 + v628;
  v630 = HIBYTE(v625);
  if (__CFADD__(v623, v628))
  {
    ++v630;
  }

  *(&v631 + 1) = v630;
  *&v631 = v623 + v628;
  v632 = (v631 >> 56) + (v618 & 0xFFFFFFFFFFFFFFLL);
  v633 = 23;
  do
  {
    v634 = v626 & 0xFFFFFFFFFFFFFFLL;
    v635 = v624 & 0xFFFFFFFFFFFFFFLL;
    v636 = 2 * (v624 & 0xFFFFFFFFFFFFFFLL);
    v637 = 2 * (v629 & 0xFFFFFFFFFFFFFFLL);
    v638 = (v635 * v635) >> 64;
    v639 = v635 * v635;
    v640 = ((2 * v634) * v635) >> 64;
    v641 = 2 * v634 * v635;
    v642 = (v637 * v635) >> 64;
    v643 = v637 * v635;
    v644 = v637 * v634 + v632 * v636;
    v645 = v632 * (2 * v634) + (v629 & 0xFFFFFFFFFFFFFFLL) * (v629 & 0xFFFFFFFFFFFFFFLL);
    v646 = v637 * v632;
    v647 = (v637 * v632) >> 64;
    v648 = v632 * v632;
    v649 = (v632 * v632) >> 64;
    *(&v650 + 1) = v649;
    *&v650 = v648;
    v651 = v645 + (v650 >> 16);
    v652 = (v648 << 40) & 0xFFFF0000000000;
    *(&v650 + 1) = v647;
    *&v650 = v646;
    v653 = v650 >> 16;
    v654 = v647 >> 16;
    v655 = (v646 << 40) & 0xFFFE0000000000;
    v656 = (__PAIR128__(v640, v641) - __PAIR128__(v647, v646)) >> 64;
    v657 = v651 << 40;
    v19 = __CFADD__(v641 - v646, v657);
    v658 = v641 - v646 + v657;
    if (v19)
    {
      ++v656;
    }

    v659 = v651 >> 16;
    v661 = v634 * v634 - __PAIR128__(v649, v648) + __PAIR128__(v642, v643);
    v660 = *(&v661 + 1);
    v662 = v661 + v655;
    if (__CFADD__(v661, v655))
    {
      v660 = *(&v661 + 1) + 1;
    }

    v19 = __CFADD__(v662, v659);
    v663 = v662 + v659;
    v664 = (*(&v651 + 1) >> 16) + v19 + v660 + 0x7FFFFFFFFFFFFF80;
    v665 = HIBYTE(v664);
    *(&v667 + 1) = v664;
    *&v667 = v663;
    v666 = v667 >> 56;
    v668 = (v644 + __PAIR128__(v654, v653)) >> 64;
    v669 = v644 + v653 + v652;
    if (__CFADD__(v644 + v653, v652))
    {
      ++v668;
    }

    v670 = __PAIR128__(v668, v669) + __PAIR128__(v665, v666);
    v671 = ((__PAIR128__(v668, v669) + __PAIR128__(v665, v666)) >> 16) & 0xFFFF0000000000;
    v19 = __CFADD__(v658, v671);
    v672 = v658 + v671;
    if (v19)
    {
      ++v656;
    }

    v673 = (v663 & 0xFFFFFFFFFFFFFFLL) + (*(&v670 + 1) >> 8);
    v674 = (__PAIR128__(v638, v639) - (v651 + (v670 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 64;
    v624 = v639 - (v651 + (v670 >> 56)) + 0x8000;
    v676 = __PAIR128__(HIBYTE(v674) + __CFADD__(v672, (__PAIR128__(v674, v624) >> 56)) + v656, v672 + (__PAIR128__(v674, v624) >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
    v675 = (__PAIR128__(HIBYTE(v674) + __CFADD__(v672, (__PAIR128__(v674, v624) >> 56)) + v656, v672 + (__PAIR128__(v674, v624) >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64;
    v626 = v676;
    v677 = HIBYTE(v675);
    v678 = __PAIR128__(v675, v676) >> 56;
    v629 = v673 + v678;
    if (__CFADD__(v673, v678))
    {
      v679 = v677 + 1;
    }

    else
    {
      v679 = v677;
    }

    *(&v680 + 1) = v679;
    *&v680 = v629;
    v632 = (v680 >> 56) + (v670 & 0xFFFFFFFFFFFFFFLL);
    --v633;
  }

  while (v633);
  v681 = v624 & 0xFFFFFFFFFFFFFFLL;
  v682 = ((v624 & 0xFFFFFFFFFFFFFFLL) * v603) >> 64;
  v683 = (v624 & 0xFFFFFFFFFFFFFFLL) * v603;
  v684 = ((v624 & 0xFFFFFFFFFFFFFFLL) * v604) >> 64;
  v685 = (v624 & 0xFFFFFFFFFFFFFFLL) * v604;
  v686 = v676 & 0xFFFFFFFFFFFFFFLL;
  v687 = ((v676 & 0xFFFFFFFFFFFFFFLL) * v603) >> 64;
  v688 = (v676 & 0xFFFFFFFFFFFFFFLL) * v603;
  v689 = v629 & 0xFFFFFFFFFFFFFFLL;
  v690 = v632 * v607 + (v629 & 0xFFFFFFFFFFFFFFLL) * v600;
  v691 = (v629 & 0xFFFFFFFFFFFFFFLL) * v607 + (v676 & 0xFFFFFFFFFFFFFFLL) * v600 + v632 * v604 + ((v632 * v600) >> 16);
  v1455 = v600;
  v1456 = v589 & 0xFFFFFFFFFFFFFFLL;
  v692 = (v681 * v607 + (v676 & 0xFFFFFFFFFFFFFFLL) * v604 + (v629 & 0xFFFFFFFFFFFFFFLL) * v603 - v632 * v600) >> 64;
  v693 = v681 * v607 + (v676 & 0xFFFFFFFFFFFFFFLL) * v604 + (v629 & 0xFFFFFFFFFFFFFFLL) * v603 - v632 * v600;
  v694 = (v632 * v607 + v629 * v600) << 40;
  v19 = __CFADD__(v693, v694);
  v695 = v693 + v694;
  if (v19)
  {
    ++v692;
  }

  v696 = __PAIR128__(v692, v695) + (v691 >> 16);
  v1452 = v607;
  v1457 = v595 & 0xFFFFFFFFFFFFFFLL;
  v697 = (v632 * v600) << 40;
  v698 = (v686 * v607 + v681 * v600 + v689 * v604 + v632 * v603) >> 64;
  v699 = v686 * v607 + v681 * v600 + v689 * v604 + v632 * v603;
  v700 = (v629 * v607 + v676 * v600 + v632 * v595 + ((v632 * v600) >> 16)) << 40;
  v19 = __CFADD__(v699, v697);
  v701 = v699 + v697;
  *(&v703 + 1) = *(&v696 + 1) + 0x7FFFFFFFFFFFFF80;
  *&v703 = v695 + (v691 >> 16);
  v702 = v703 >> 56;
  if (v19)
  {
    ++v698;
  }

  v704 = __PAIR128__(v698, v701) + (v690 >> 16) + __PAIR128__((*(&v696 + 1) + 0x7FFFFFFFFFFFFF80) >> 56, v702);
  v705 = (v696 & 0xFFFFFFFFFFFFFFLL) + (*(&v704 + 1) >> 8);
  v706 = (v704 >> 16) & 0xFFFF0000000000;
  v707 = __PAIR128__(v682, v683) - (v691 + (v704 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
  v708 = __PAIR128__(v684, v685) + __PAIR128__(v687, v688) - v690;
  v19 = __CFADD__(v708, v700);
  v709 = v708 + v700;
  if (v19)
  {
    v710 = *(&v708 + 1) + 1;
  }

  else
  {
    v710 = (__PAIR128__(v684, v685) + __PAIR128__(v687, v688) - v690) >> 64;
  }

  v19 = __CFADD__(v709, v706);
  v711 = v709 + v706;
  if (v19)
  {
    v712 = v710 + 1;
  }

  else
  {
    v712 = v710;
  }

  v713 = __PAIR128__(v712, v711) + (v707 >> 56) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v714 = v713 >> 56;
  v19 = __CFADD__(v705, v714);
  v715 = v705 + v714;
  if (v19)
  {
    v716 = HIBYTE(*(&v713 + 1)) + 1;
  }

  else
  {
    v716 = HIBYTE(*(&v713 + 1));
  }

  *(&v717 + 1) = v716;
  *&v717 = v715;
  v718 = (v717 >> 56) + (v704 & 0xFFFFFFFFFFFFFFLL);
  v719 = 2 * ((v711 + (v707 >> 56) - 0x80000000000000) & 0xFFFFFFFFFFFFFFLL);
  v720 = 2 * (v715 & 0xFFFFFFFFFFFFFFLL);
  v721 = v707 & 0xFFFFFFFFFFFFFFLL;
  v722 = v713 & 0xFFFFFFFFFFFFFFLL;
  v723 = ((v713 & 0xFFFFFFFFFFFFFFLL) * v720 + v718 * (2 * (v707 & 0xFFFFFFFFFFFFFFLL))) >> 64;
  v724 = (v713 & 0xFFFFFFFFFFFFFFLL) * v720 + v718 * 2 * (v707 & 0xFFFFFFFFFFFFFFLL);
  v725 = v715 & 0xFFFFFFFFFFFFFFLL;
  v726 = (v718 * v719 + v725 * v725 + ((v718 * v718) >> 16)) >> 64;
  v727 = v718 * v719 + v725 * v725 + ((v718 * v718) >> 16);
  v728 = (((v717 >> 56) + v704) * ((v717 >> 56) + v704)) << 40;
  v19 = __CFADD__(v724, v728);
  v729 = v724 + v728;
  if (v19)
  {
    ++v723;
  }

  v730 = __PAIR128__(v723, v729) + ((v718 * v720) >> 16);
  v732 = (v721 * v719 - v718 * v720) >> 64;
  v731 = v721 * v719 - v718 * v720;
  v733 = v727 << 40;
  v19 = __CFADD__(v731, v733);
  v734 = v731 + v733;
  if (v19)
  {
    ++v732;
  }

  *(&v735 + 1) = v726;
  *&v735 = v727;
  v736 = v722 * v722 - v718 * v718 + v721 * v720 + (v735 >> 16) + __PAIR128__(0x7FFFFFFFFFFFFF80, ((v718 * v720) << 40) & 0xFFFE0000000000);
  v737 = (v730 + (v736 >> 56)) >> 64;
  v738 = ((v730 + (v736 >> 56)) >> 16) & 0xFFFF0000000000;
  v19 = __CFADD__(v734, v738);
  v739 = v734 + v738;
  if (v19)
  {
    v740 = v732 + 1;
  }

  else
  {
    v740 = v732;
  }

  v741 = (v736 & 0xFFFFFFFFFFFFFFLL) + (v737 >> 8);
  v742 = (v721 * v721 - __PAIR128__(HIBYTE(v737) + __CFADD__(v727, ((v730 + (v736 >> 56)) >> 56)) + v726, v727 + ((v730 + (v736 >> 56)) >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 64;
  v743 = v721 * v721 - (v727 + ((v730 + (v736 >> 56)) >> 56)) + 0x8000;
  v746 = __PAIR128__(HIBYTE(v742) + __CFADD__(v739, (__PAIR128__(v742, v743) >> 56)) + v740, v739 + (__PAIR128__(v742, v743) >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v744 = (__PAIR128__(HIBYTE(v742) + __CFADD__(v739, (__PAIR128__(v742, v743) >> 56)) + v740, v739 + (__PAIR128__(v742, v743) >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64;
  v745 = v746;
  v747 = __PAIR128__(v744, v746) >> 56;
  v748 = v741 + v747;
  v749 = HIBYTE(v744);
  if (__CFADD__(v741, v747))
  {
    ++v749;
  }

  *(&v750 + 1) = v749;
  *&v750 = v741 + v747;
  v751 = (v750 >> 56) + ((v730 + (v736 >> 56)) & 0xFFFFFFFFFFFFFFLL);
  v752 = 47;
  do
  {
    v753 = v748 & 0xFFFFFFFFFFFFFFLL;
    v754 = v745 & 0xFFFFFFFFFFFFFFLL;
    v755 = v743 & 0xFFFFFFFFFFFFFFLL;
    v756 = 2 * (v743 & 0xFFFFFFFFFFFFFFLL);
    v757 = 2 * (v748 & 0xFFFFFFFFFFFFFFLL);
    v758 = (v755 * v755) >> 64;
    v759 = v755 * v755;
    v760 = ((2 * v754) * v755) >> 64;
    v761 = 2 * v754 * v755;
    v762 = (v757 * v755) >> 64;
    v763 = v757 * v755;
    v764 = v757 * v754 + v751 * v756;
    v765 = v757 * v751;
    v766 = (v757 * v751) >> 64;
    v767 = v751 * v751;
    v768 = (v751 * v751) >> 64;
    v769 = v751 * (2 * v754) + v753 * v753 + ((v751 * v751) >> 16);
    v770 = ((v751 * v751) << 40) & 0xFFFF0000000000;
    *(&v772 + 1) = v766;
    *&v772 = v765;
    v771 = v772 >> 16;
    v773 = v766 >> 16;
    v774 = (v765 << 40) & 0xFFFE0000000000;
    v775 = (__PAIR128__(v760, v761) - __PAIR128__(v766, v765)) >> 64;
    v776 = v769 << 40;
    v19 = __CFADD__(v761 - v765, v776);
    v777 = v761 - v765 + v776;
    if (v19)
    {
      ++v775;
    }

    v778 = v769 >> 16;
    v780 = v754 * v754 - __PAIR128__(v768, v767) + __PAIR128__(v762, v763);
    v779 = *(&v780 + 1);
    v781 = v780 + v774;
    if (__CFADD__(v780, v774))
    {
      v779 = *(&v780 + 1) + 1;
    }

    v19 = __CFADD__(v781, v778);
    v782 = v781 + v778;
    v783 = (*(&v769 + 1) >> 16) + v19 + v779 + 0x7FFFFFFFFFFFFF80;
    v784 = HIBYTE(v783);
    *(&v786 + 1) = v783;
    *&v786 = v782;
    v785 = v786 >> 56;
    v787 = (v764 + __PAIR128__(v773, v771)) >> 64;
    v788 = v764 + v771 + v770;
    if (__CFADD__(v764 + v771, v770))
    {
      ++v787;
    }

    v789 = __PAIR128__(v787, v788) + __PAIR128__(v784, v785);
    v790 = ((__PAIR128__(v787, v788) + __PAIR128__(v784, v785)) >> 16) & 0xFFFF0000000000;
    v19 = __CFADD__(v777, v790);
    v791 = v777 + v790;
    if (v19)
    {
      ++v775;
    }

    v792 = (v782 & 0xFFFFFFFFFFFFFFLL) + (*(&v789 + 1) >> 8);
    v793 = (__PAIR128__(v758, v759) - (v769 + (v789 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 64;
    v743 = v759 - (v769 + (v789 >> 56)) + 0x8000;
    v795 = __PAIR128__(HIBYTE(v793) + __CFADD__(v791, (__PAIR128__(v793, v743) >> 56)) + v775, v791 + (__PAIR128__(v793, v743) >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
    v794 = (__PAIR128__(HIBYTE(v793) + __CFADD__(v791, (__PAIR128__(v793, v743) >> 56)) + v775, v791 + (__PAIR128__(v793, v743) >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64;
    v745 = v795;
    v796 = HIBYTE(v794);
    v797 = __PAIR128__(v794, v795) >> 56;
    v748 = v792 + v797;
    if (__CFADD__(v792, v797))
    {
      v798 = v796 + 1;
    }

    else
    {
      v798 = v796;
    }

    *(&v799 + 1) = v798;
    *&v799 = v748;
    v751 = (v799 >> 56) + (v789 & 0xFFFFFFFFFFFFFFLL);
    --v752;
  }

  while (v752);
  v800 = v743 & 0xFFFFFFFFFFFFFFLL;
  v801 = ((v743 & 0xFFFFFFFFFFFFFFLL) * v721) >> 64;
  v802 = (v743 & 0xFFFFFFFFFFFFFFLL) * v721;
  v1453 = ((v795 & 0xFFFFFFFFFFFFFFLL) * v721) >> 64;
  v1450 = (v795 & 0xFFFFFFFFFFFFFFLL) * v721;
  v803 = v800 * v722;
  v804 = ((v748 & 0xFFFFFFFFFFFFFFLL) * v721) >> 64;
  v805 = (v748 & 0xFFFFFFFFFFFFFFLL) * v721;
  v806 = (v795 & 0xFFFFFFFFFFFFFFLL) * v722;
  v807 = (v751 * v721) >> 64;
  v808 = v751 * v721;
  v809 = (v800 * v718) >> 64;
  v810 = v800 * v718;
  v811 = ((v795 & 0xFFFFFFFFFFFFFFLL) * v718) >> 64;
  v812 = (v795 & 0xFFFFFFFFFFFFFFLL) * v718;
  v813 = v751 * v725 + (v748 & 0xFFFFFFFFFFFFFFLL) * v718;
  v814 = v751 * v718;
  v815 = (v751 * v718) >> 64;
  *(&v816 + 1) = v815;
  *&v816 = v814;
  v817 = (v748 & 0xFFFFFFFFFFFFFFLL) * v725 + __PAIR128__(v811, v812) + v751 * v722 + (v816 >> 16);
  v819 = v800 * v725 + v806 + v805 - v814;
  v818 = (__PAIR128__(v804 + __CFADD__(v800 * v725 + v806, v805) + ((v800 * v725 + (v795 & 0xFFFFFFFFFFFFFFLL) * v722) >> 64), v800 * v725 + v806 + v805) - __PAIR128__(v815, v814)) >> 64;
  v820 = v813 << 40;
  v821 = v819 + v820;
  if (__CFADD__(v819, v820))
  {
    ++v818;
  }

  v822 = __PAIR128__(v818, v821) + (v817 >> 16);
  v823 = v814 << 40;
  v825 = ((v795 & 0xFFFFFFFFFFFFFFLL) * v725 + __PAIR128__(v809, v810) + (v748 & 0xFFFFFFFFFFFFFFLL) * v722 + __PAIR128__(v807, v808)) >> 64;
  v824 = (v795 & 0xFFFFFFFFFFFFFFLL) * v725 + v810 + (v748 & 0xFFFFFFFFFFFFFFLL) * v722 + v808;
  v826 = v817 << 40;
  v19 = __CFADD__(v824, v823);
  v827 = v824 + v823;
  *(&v829 + 1) = *(&v822 + 1) + 0x7FFFFFFFFFFFFF80;
  *&v829 = v821 + (v817 >> 16);
  v828 = v829 >> 56;
  if (v19)
  {
    ++v825;
  }

  v830 = ((*(&v822 + 1) + 0x7FFFFFFFFFFFFF80) >> 56) + __CFADD__(v827 + (v813 >> 16), v828) + ((__PAIR128__(v825, v827) + (v813 >> 16)) >> 64);
  *(&v832 + 1) = v830;
  *&v832 = v827 + (v813 >> 16) + v828;
  v831 = v832 >> 56;
  v833 = v832 & 0xFFFFFFFFFFFFFFLL;
  v834 = (v822 & 0xFFFFFFFFFFFFFFLL) + (v830 >> 8);
  *(&v832 + 1) = v830;
  v835 = (v832 >> 16) & 0xFFFF0000000000;
  v836 = __PAIR128__(v801, v802) - (v817 + __PAIR128__(HIBYTE(v830), v831)) + __PAIR128__(0x8000000000000000, 0x8000);
  v837 = (__PAIR128__(v1453 + __CFADD__(v803, v1450) + ((v800 * v722) >> 64), v803 + v1450) - v813) >> 64;
  v838 = v803 + v1450 - v813 + v826;
  if (__CFADD__(v803 + v1450 - v813, v826))
  {
    ++v837;
  }

  v19 = __CFADD__(v838, v835);
  v839 = v838 + v835;
  if (v19)
  {
    v840 = v837 + 1;
  }

  else
  {
    v840 = v837;
  }

  v841 = __PAIR128__(v840, v839) + (v836 >> 56) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v842 = HIBYTE(*(&v841 + 1));
  v843 = v841 >> 56;
  v19 = __CFADD__(v834, v843);
  v844 = v834 + v843;
  if (v19)
  {
    ++v842;
  }

  *(&v845 + 1) = v842;
  *&v845 = v844;
  v846 = (v845 >> 56) + v833;
  v847 = 2 * (v841 & 0xFFFFFFFFFFFFFFLL);
  v848 = 2 * (v844 & 0xFFFFFFFFFFFFFFLL);
  v849 = v836 & 0xFFFFFFFFFFFFFFLL;
  v850 = ((v841 & 0xFFFFFFFFFFFFFFLL) * v848 + v846 * (2 * (v836 & 0xFFFFFFFFFFFFFFLL))) >> 64;
  v851 = (v841 & 0xFFFFFFFFFFFFFFLL) * v848 + v846 * 2 * (v836 & 0xFFFFFFFFFFFFFFLL);
  v1448 = v844 & 0xFFFFFFFFFFFFFFLL;
  v852 = (v846 * v847 + v1448 * v1448) >> 64;
  v853 = v846 * v847 + v1448 * v1448;
  v854 = v846 * v848;
  v855 = (v846 * v848) >> 64;
  v856 = v846 * v846;
  v1454 = v846;
  v857 = (v846 * v846) >> 64;
  *(&v845 + 1) = v857;
  *&v845 = v856;
  v858 = __PAIR128__(v852, v853) + (v845 >> 16);
  v859 = v856 << 40;
  v19 = __CFADD__(v851, v859);
  v860 = v851 + v859;
  if (v19)
  {
    ++v850;
  }

  *(&v861 + 1) = v855;
  *&v861 = v854;
  v862 = __PAIR128__(v850, v860) + (v861 >> 16);
  v864 = v849 * v847 - v854;
  v863 = (v849 * v847 - __PAIR128__(v855, v854)) >> 64;
  v865 = v858 << 40;
  v866 = v864 + v865;
  if (__CFADD__(v864, v865))
  {
    ++v863;
  }

  v1449 = v841 & 0xFFFFFFFFFFFFFFLL;
  v867 = (v841 & 0xFFFFFFFFFFFFFFLL) * (v841 & 0xFFFFFFFFFFFFFFLL) - __PAIR128__(v857, v856) + v849 * v848 + (v858 >> 16) + __PAIR128__(0x7FFFFFFFFFFFFF80, (v854 << 40) & 0xFFFE0000000000);
  v868 = v862 + (v867 >> 56);
  v869 = (v868 >> 16) & 0xFFFF0000000000;
  v19 = __CFADD__(v866, v869);
  v870 = v866 + v869;
  if (v19)
  {
    v871 = v863 + 1;
  }

  else
  {
    v871 = v863;
  }

  v872 = v862 + (v867 >> 56);
  v873 = (v867 & 0xFFFFFFFFFFFFFFLL) + (*(&v868 + 1) >> 8);
  v1451 = v836 & 0xFFFFFFFFFFFFFFLL;
  v874 = v849 * v849 - (v858 + (v868 >> 56)) + 0x8000;
  v875 = (__PAIR128__((((v849 * v849 - (v858 + (v872 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 64) >> 56) + __CFADD__(v870, ((v849 * v849 - (v858 + (v872 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 56)) + v871, v870 + ((v849 * v849 - (v858 + (v872 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64;
  v876 = v870 + ((v849 * v849 - (v858 + (v868 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 56) - 0x80000000000000;
  v877 = (__PAIR128__((((v849 * v849 - (v858 + (v872 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 64) >> 56) + __CFADD__(v870, ((v849 * v849 - (v858 + (v872 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 56)) + v871, v870 + ((v849 * v849 - (v858 + (v872 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 56;
  v878 = v873 + v877;
  v879 = HIBYTE(v875);
  if (__CFADD__(v873, v877))
  {
    ++v879;
  }

  *(&v880 + 1) = v879;
  *&v880 = v873 + v877;
  v881 = (v880 >> 56) + (v868 & 0xFFFFFFFFFFFFFFLL);
  v882 = 23;
  do
  {
    v883 = v878 & 0xFFFFFFFFFFFFFFLL;
    v884 = v876 & 0xFFFFFFFFFFFFFFLL;
    v885 = v874 & 0xFFFFFFFFFFFFFFLL;
    v886 = 2 * (v874 & 0xFFFFFFFFFFFFFFLL);
    v887 = 2 * (v878 & 0xFFFFFFFFFFFFFFLL);
    v888 = (v885 * v885) >> 64;
    v889 = v885 * v885;
    v890 = ((2 * v884) * v885) >> 64;
    v891 = 2 * v884 * v885;
    v892 = (v887 * v885) >> 64;
    v893 = v887 * v885;
    v894 = v887 * v884 + v881 * v886;
    v895 = v887 * v881;
    v896 = (v887 * v881) >> 64;
    v897 = v881 * v881;
    v898 = (v881 * v881) >> 64;
    v899 = v881 * (2 * v884) + v883 * v883 + ((v881 * v881) >> 16);
    v900 = ((v881 * v881) << 40) & 0xFFFF0000000000;
    *(&v902 + 1) = v896;
    *&v902 = v895;
    v901 = v902 >> 16;
    v903 = v896 >> 16;
    v904 = (v895 << 40) & 0xFFFE0000000000;
    v905 = (__PAIR128__(v890, v891) - __PAIR128__(v896, v895)) >> 64;
    v906 = v899 << 40;
    v19 = __CFADD__(v891 - v895, v906);
    v907 = v891 - v895 + v906;
    if (v19)
    {
      ++v905;
    }

    v908 = v899 >> 16;
    v910 = v884 * v884 - __PAIR128__(v898, v897) + __PAIR128__(v892, v893);
    v909 = *(&v910 + 1);
    v911 = v910 + v904;
    if (__CFADD__(v910, v904))
    {
      v909 = *(&v910 + 1) + 1;
    }

    v19 = __CFADD__(v911, v908);
    v912 = v911 + v908;
    v913 = (*(&v899 + 1) >> 16) + v19 + v909 + 0x7FFFFFFFFFFFFF80;
    v914 = HIBYTE(v913);
    *(&v916 + 1) = v913;
    *&v916 = v912;
    v915 = v916 >> 56;
    v917 = (v894 + __PAIR128__(v903, v901)) >> 64;
    v918 = v894 + v901 + v900;
    if (__CFADD__(v894 + v901, v900))
    {
      ++v917;
    }

    v919 = __PAIR128__(v917, v918) + __PAIR128__(v914, v915);
    v920 = ((__PAIR128__(v917, v918) + __PAIR128__(v914, v915)) >> 16) & 0xFFFF0000000000;
    v19 = __CFADD__(v907, v920);
    v921 = v907 + v920;
    if (v19)
    {
      ++v905;
    }

    v922 = (v912 & 0xFFFFFFFFFFFFFFLL) + (*(&v919 + 1) >> 8);
    v923 = (__PAIR128__(v888, v889) - (v899 + (v919 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 64;
    v874 = v889 - (v899 + (v919 >> 56)) + 0x8000;
    v925 = __PAIR128__(HIBYTE(v923) + __CFADD__(v921, (__PAIR128__(v923, v874) >> 56)) + v905, v921 + (__PAIR128__(v923, v874) >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
    v924 = (__PAIR128__(HIBYTE(v923) + __CFADD__(v921, (__PAIR128__(v923, v874) >> 56)) + v905, v921 + (__PAIR128__(v923, v874) >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64;
    v876 = v925;
    v926 = HIBYTE(v924);
    v927 = __PAIR128__(v924, v925) >> 56;
    v878 = v922 + v927;
    if (__CFADD__(v922, v927))
    {
      v928 = v926 + 1;
    }

    else
    {
      v928 = v926;
    }

    *(&v929 + 1) = v928;
    *&v929 = v878;
    v881 = (v929 >> 56) + (v919 & 0xFFFFFFFFFFFFFFLL);
    --v882;
  }

  while (v882);
  v930 = v874 & 0xFFFFFFFFFFFFFFLL;
  v931 = v925 & 0xFFFFFFFFFFFFFFLL;
  v932 = v878 & 0xFFFFFFFFFFFFFFLL;
  v933 = v881 * v1452 + (v878 & 0xFFFFFFFFFFFFFFLL) * v1455;
  v934 = (v878 & 0xFFFFFFFFFFFFFFLL) * v1452 + (v925 & 0xFFFFFFFFFFFFFFLL) * v1455 + v881 * v1457 + ((v881 * v1455) >> 16);
  v935 = (v930 * v1452 + (v925 & 0xFFFFFFFFFFFFFFLL) * v1457 + (v878 & 0xFFFFFFFFFFFFFFLL) * v1456 - v881 * v1455) >> 64;
  v936 = v930 * v1452 + (v925 & 0xFFFFFFFFFFFFFFLL) * v1457 + (v878 & 0xFFFFFFFFFFFFFFLL) * v1456 - v881 * v1455;
  v937 = (v881 * v1452 + v878 * v1455) << 40;
  v19 = __CFADD__(v936, v937);
  v938 = v936 + v937;
  if (v19)
  {
    ++v935;
  }

  v939 = __PAIR128__(v935, v938) + (v934 >> 16);
  v940 = (v931 * v1456) >> 64;
  v941 = (v881 * v1455) << 40;
  v943 = (v931 * v1452 + v930 * v1455 + v932 * v1457 + v881 * v1456) >> 64;
  v942 = v931 * v1452 + v930 * v1455 + v932 * v1457 + v881 * v1456;
  v944 = v931 * v1456;
  v19 = __CFADD__(v942, v941);
  v945 = v942 + v941;
  if (v19)
  {
    ++v943;
  }

  *(&v946 + 1) = *(&v939 + 1) + 0x7FFFFFFFFFFFFF80;
  *&v946 = v939;
  v947 = (__PAIR128__(v943, v945) + (v933 >> 16) + (v946 >> 56)) >> 64;
  v948 = v945 + (v933 >> 16) + (v946 >> 56);
  v949 = (v930 * v1456 - (v934 + (__PAIR128__(v947, v948) >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 64;
  v950 = v930 * v1456 - (v934 + (__PAIR128__(v947, v948) >> 56)) + 0x8000;
  v952 = __PAIR128__(v940 + __CFADD__(v930 * v1457, v944) + ((v930 * v1457) >> 64), v930 * v1457 + v944) - v933;
  v951 = (__PAIR128__(v940 + __CFADD__(v930 * v1457, v944) + ((v930 * v1457) >> 64), v930 * v1457 + v944) - v933) >> 64;
  v953 = (v878 * v1452 + v925 * v1455 + v881 * v595 + ((v881 * v1455) >> 16)) << 40;
  v954 = (v939 & 0xFFFFFFFFFFFFFFLL) + (v947 >> 8);
  v955 = (__PAIR128__(v947, v948) >> 16) & 0xFFFF0000000000;
  v19 = __CFADD__(v952, v953);
  v956 = v952 + v953;
  v957 = HIBYTE(v949);
  v958 = __PAIR128__(v949, v950) >> 56;
  if (v19)
  {
    ++v951;
  }

  v19 = __CFADD__(v956, v955);
  v959 = v956 + v955;
  if (v19)
  {
    v960 = v951 + 1;
  }

  else
  {
    v960 = v951;
  }

  v963 = v959 + v958 - 0x80000000000000;
  v961 = (__PAIR128__(v960, v959) + __PAIR128__(v957, v958) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64;
  v962 = v963;
  v964 = __PAIR128__(v961, v963) >> 56;
  v965 = v954 + v964;
  v966 = v948 & 0xFFFFFFFFFFFFFFLL;
  v967 = HIBYTE(v961);
  if (__CFADD__(v954, v964))
  {
    ++v967;
  }

  *(&v968 + 1) = v967;
  *&v968 = v954 + v964;
  v969 = (v968 >> 56) + v966;
  v970 = 6;
  do
  {
    v971 = v962 & 0xFFFFFFFFFFFFFFLL;
    v972 = v950 & 0xFFFFFFFFFFFFFFLL;
    v973 = 2 * (v950 & 0xFFFFFFFFFFFFFFLL);
    v974 = 2 * (v965 & 0xFFFFFFFFFFFFFFLL);
    v975 = (v972 * v972) >> 64;
    v976 = v972 * v972;
    v977 = ((2 * v971) * v972) >> 64;
    v978 = 2 * v971 * v972;
    v979 = (v974 * v972) >> 64;
    v980 = v974 * v972;
    v981 = v974 * v971 + v969 * v973;
    v982 = v974 * v969;
    v983 = (v974 * v969) >> 64;
    v984 = v969 * v969;
    v985 = (v969 * v969) >> 64;
    v986 = v969 * (2 * v971) + (v965 & 0xFFFFFFFFFFFFFFLL) * (v965 & 0xFFFFFFFFFFFFFFLL) + ((v969 * v969) >> 16);
    v987 = ((v969 * v969) << 40) & 0xFFFF0000000000;
    *(&v989 + 1) = v983;
    *&v989 = v982;
    v988 = v989 >> 16;
    v990 = v983 >> 16;
    v991 = (v982 << 40) & 0xFFFE0000000000;
    v992 = (__PAIR128__(v977, v978) - __PAIR128__(v983, v982)) >> 64;
    v993 = v986 << 40;
    v19 = __CFADD__(v978 - v982, v993);
    v994 = v978 - v982 + v993;
    if (v19)
    {
      ++v992;
    }

    v995 = v986 >> 16;
    v997 = v971 * v971 - __PAIR128__(v985, v984) + __PAIR128__(v979, v980);
    v996 = *(&v997 + 1);
    v998 = v997 + v991;
    if (__CFADD__(v997, v991))
    {
      v996 = *(&v997 + 1) + 1;
    }

    v19 = __CFADD__(v998, v995);
    v999 = v998 + v995;
    v1000 = (*(&v986 + 1) >> 16) + v19 + v996 + 0x7FFFFFFFFFFFFF80;
    v1001 = HIBYTE(v1000);
    *(&v1003 + 1) = v1000;
    *&v1003 = v999;
    v1002 = v1003 >> 56;
    v1004 = (v981 + __PAIR128__(v990, v988)) >> 64;
    v1005 = v981 + v988 + v987;
    if (__CFADD__(v981 + v988, v987))
    {
      ++v1004;
    }

    v1006 = __PAIR128__(v1004, v1005) + __PAIR128__(v1001, v1002);
    v1007 = ((__PAIR128__(v1004, v1005) + __PAIR128__(v1001, v1002)) >> 16) & 0xFFFF0000000000;
    v19 = __CFADD__(v994, v1007);
    v1008 = v994 + v1007;
    if (v19)
    {
      ++v992;
    }

    v1009 = (v999 & 0xFFFFFFFFFFFFFFLL) + (*(&v1006 + 1) >> 8);
    v1010 = (__PAIR128__(v975, v976) - (v986 + (v1006 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 64;
    v950 = v976 - (v986 + (v1006 >> 56)) + 0x8000;
    v1012 = __PAIR128__(HIBYTE(v1010) + __CFADD__(v1008, (__PAIR128__(v1010, v950) >> 56)) + v992, v1008 + (__PAIR128__(v1010, v950) >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
    v1011 = (__PAIR128__(HIBYTE(v1010) + __CFADD__(v1008, (__PAIR128__(v1010, v950) >> 56)) + v992, v1008 + (__PAIR128__(v1010, v950) >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64;
    v962 = v1012;
    v1013 = HIBYTE(v1011);
    v1014 = __PAIR128__(v1011, v1012) >> 56;
    v965 = v1009 + v1014;
    if (__CFADD__(v1009, v1014))
    {
      v1015 = v1013 + 1;
    }

    else
    {
      v1015 = v1013;
    }

    *(&v1016 + 1) = v1015;
    *&v1016 = v965;
    v969 = (v1016 >> 56) + (v1006 & 0xFFFFFFFFFFFFFFLL);
    --v970;
  }

  while (v970);
  v1017 = v950 & 0xFFFFFFFFFFFFFFLL;
  v1018 = ((v950 & 0xFFFFFFFFFFFFFFLL) * v1460) >> 64;
  v1019 = (v950 & 0xFFFFFFFFFFFFFFLL) * v1460;
  v1020 = ((v950 & 0xFFFFFFFFFFFFFFLL) * v1459) >> 64;
  v1021 = (v950 & 0xFFFFFFFFFFFFFFLL) * v1459;
  v1022 = ((v950 & 0xFFFFFFFFFFFFFFLL) * v1471) >> 64;
  v1023 = (v950 & 0xFFFFFFFFFFFFFFLL) * v1471;
  v1024 = ((v950 & 0xFFFFFFFFFFFFFFLL) * v1462) >> 64;
  v1025 = v969 * v1471 + (v965 & 0xFFFFFFFFFFFFFFLL) * v1462;
  v1026 = (v965 & 0xFFFFFFFFFFFFFFLL) * v1471 + (v1012 & 0xFFFFFFFFFFFFFFLL) * v1462 + v969 * v1459 + ((v969 * v1462) >> 16);
  v1027 = (v969 * v1462) << 40;
  v1028 = (v969 * v1471 + v965 * v1462) << 40;
  v1030 = v1023 + (v1012 & 0xFFFFFFFFFFFFFFLL) * v1459 + (v965 & 0xFFFFFFFFFFFFFFLL) * v1460 - v969 * v1462;
  v1029 = (__PAIR128__(v1022, v1023) + (v1012 & 0xFFFFFFFFFFFFFFLL) * v1459 + (v965 & 0xFFFFFFFFFFFFFFLL) * (v332 & 0xFFFFFFFFFFFFFFLL) - v969 * v1462) >> 64;
  v1031 = v1030 + v1028;
  if (__CFADD__(v1030, v1028))
  {
    ++v1029;
  }

  v1032 = __PAIR128__(v1029, v1031) + (v1026 >> 16);
  v1033 = (v965 * v1471 + v1012 * v1462 + v969 * v338 + ((v969 * v1462) >> 16)) << 40;
  v1034 = (*(&v1032 + 1) + 0x7FFFFFFFFFFFFF80) >> 56;
  *(&v1036 + 1) = *(&v1032 + 1) + 0x7FFFFFFFFFFFFF80;
  *&v1036 = v1031 + (v1026 >> 16);
  v1035 = v1036 >> 56;
  v1037 = (v1012 & 0xFFFFFFFFFFFFFFLL) * v1471 + __PAIR128__(v1024, v1017 * v1462) + (v965 & 0xFFFFFFFFFFFFFFLL) * (v338 & 0xFFFFFFFFFFFFFFLL) + v969 * v1460;
  v1038 = v1037 + v1027;
  if (__CFADD__(v1037, v1027))
  {
    v1039 = *(&v1037 + 1) + 1;
  }

  else
  {
    v1039 = ((v1012 & 0xFFFFFFFFFFFFFFLL) * v1471 + __PAIR128__(v1024, v1017 * v1462) + (v965 & 0xFFFFFFFFFFFFFFLL) * (v338 & 0xFFFFFFFFFFFFFFLL) + v969 * v1460) >> 64;
  }

  v1040 = __PAIR128__((*(&v1025 + 1) >> 16) + __CFADD__(v1038, (v1025 >> 16)) + v1039, v1038 + (v1025 >> 16)) + __PAIR128__(v1034, v1035);
  v1041 = ((__PAIR128__((*(&v1025 + 1) >> 16) + __CFADD__(v1038, (v1025 >> 16)) + v1039, v1038 + (v1025 >> 16)) + __PAIR128__(v1034, v1035)) >> 64) >> 56;
  v1042 = (__PAIR128__((*(&v1025 + 1) >> 16) + __CFADD__(v1038, (v1025 >> 16)) + v1039, v1038 + (v1025 >> 16)) + __PAIR128__(v1034, v1035)) >> 56;
  v1043 = (v1038 + (v1025 >> 16) + v1035) & 0xFFFFFFFFFFFFFFLL;
  v1044 = (v1032 & 0xFFFFFFFFFFFFFFLL) + (*(&v1040 + 1) >> 8);
  v1045 = (v1040 >> 16) & 0xFFFF0000000000;
  v1046 = __PAIR128__(v1018, v1019) - (v1026 + __PAIR128__(v1041, v1042)) + __PAIR128__(0x8000000000000000, 0x8000);
  v1048 = (__PAIR128__(v1020, v1021) + (v1012 & 0xFFFFFFFFFFFFFFLL) * v1460 - v1025) >> 64;
  v1047 = v1021 + (v1012 & 0xFFFFFFFFFFFFFFLL) * v1460 - v1025;
  v19 = __CFADD__(v1047, v1033);
  v1049 = v1047 + v1033;
  if (v19)
  {
    ++v1048;
  }

  v19 = __CFADD__(v1049, v1045);
  v1050 = v1049 + v1045;
  if (v19)
  {
    v1051 = v1048 + 1;
  }

  else
  {
    v1051 = v1048;
  }

  v1052 = __PAIR128__(v1051, v1050) + (v1046 >> 56) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v1053 = v1052 >> 56;
  v19 = __CFADD__(v1044, v1053);
  v1054 = v1044 + v1053;
  if (v19)
  {
    v1055 = HIBYTE(*(&v1052 + 1)) + 1;
  }

  else
  {
    v1055 = HIBYTE(*(&v1052 + 1));
  }

  *(&v1056 + 1) = v1055;
  *&v1056 = v1054;
  v1057 = (v1056 >> 56) + v1043;
  v1058 = 2 * (v1052 & 0xFFFFFFFFFFFFFFLL);
  v1059 = 2 * (v1054 & 0xFFFFFFFFFFFFFFLL);
  v1060 = v1046 & 0xFFFFFFFFFFFFFFLL;
  v1061 = (v1060 * v1060) >> 64;
  v1062 = v1060 * v1060;
  v1063 = ((v1046 & 0xFFFFFFFFFFFFFFLL) * v1058) >> 64;
  v1064 = (v1046 & 0xFFFFFFFFFFFFFFLL) * v1058;
  v1065 = ((v1046 & 0xFFFFFFFFFFFFFFLL) * v1059) >> 64;
  v1066 = (v1046 & 0xFFFFFFFFFFFFFFLL) * v1059;
  v1067 = v1052 & 0xFFFFFFFFFFFFFFLL;
  v1068 = (v1067 * v1067) >> 64;
  v1069 = v1067 * v1067;
  v1070 = ((v1052 & 0xFFFFFFFFFFFFFFLL) * v1059 + v1057 * (2 * (v1046 & 0xFFFFFFFFFFFFFFLL))) >> 64;
  v1071 = (v1052 & 0xFFFFFFFFFFFFFFLL) * v1059 + v1057 * 2 * (v1046 & 0xFFFFFFFFFFFFFFLL);
  v1073 = v1057 * v1058 + (v1054 & 0xFFFFFFFFFFFFFFLL) * (v1054 & 0xFFFFFFFFFFFFFFLL);
  v1072 = (v1057 * v1058 + (v1054 & 0xFFFFFFFFFFFFFFLL) * (v1054 & 0xFFFFFFFFFFFFFFLL)) >> 64;
  v1074 = v1057 * v1059;
  v1075 = (v1057 * v1059) >> 64;
  v1076 = v1057 * v1057;
  v1077 = (v1057 * v1057) >> 64;
  *(&v1056 + 1) = v1077;
  *&v1056 = v1076;
  v1078 = __PAIR128__(v1072, v1073) + (v1056 >> 16);
  v1079 = v1076 << 40;
  v19 = __CFADD__(v1071, v1079);
  v1080 = v1071 + v1079;
  if (v19)
  {
    ++v1070;
  }

  *(&v1081 + 1) = v1075;
  *&v1081 = v1074;
  v1082 = __PAIR128__(v1070, v1080) + (v1081 >> 16);
  v1083 = (__PAIR128__(v1063, v1064) - __PAIR128__(v1075, v1074)) >> 64;
  v1084 = v1078 << 40;
  v19 = __CFADD__(v1064 - v1074, v1084);
  v1085 = v1064 - v1074 + v1084;
  if (v19)
  {
    ++v1083;
  }

  v1086 = __PAIR128__(v1068, v1069) - __PAIR128__(v1077, v1076) + __PAIR128__(v1065, v1066) + (v1078 >> 16) + __PAIR128__(0x7FFFFFFFFFFFFF80, (v1074 << 40) & 0xFFFE0000000000);
  v1087 = v1082 + (v1086 >> 56);
  v1088 = (v1087 >> 16) & 0xFFFF0000000000;
  v19 = __CFADD__(v1085, v1088);
  v1089 = v1085 + v1088;
  if (v19)
  {
    ++v1083;
  }

  v1090 = (v1086 & 0xFFFFFFFFFFFFFFLL) + (*(&v1087 + 1) >> 8);
  v1093 = __PAIR128__((((__PAIR128__(v1061, v1062) - (v1078 + (v1087 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 64) >> 56) + __CFADD__(v1089, ((__PAIR128__(v1061, v1062) - (v1078 + (v1087 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 56)) + v1083, v1089 + ((__PAIR128__(v1061, v1062) - (v1078 + (v1087 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v1092 = (__PAIR128__((((__PAIR128__(v1061, v1062) - (v1078 + (v1087 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 64) >> 56) + __CFADD__(v1089, ((__PAIR128__(v1061, v1062) - (v1078 + (v1087 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 56)) + v1083, v1089 + ((__PAIR128__(v1061, v1062) - (v1078 + (v1087 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64;
  v1091 = v1089 + ((__PAIR128__(v1061, v1062) - (v1078 + (v1087 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 56) - 0x80000000000000;
  v1094 = __PAIR128__(v1092, v1093) >> 56;
  v1095 = HIBYTE(v1092);
  v19 = __CFADD__(v1090, v1094);
  v1096 = v1090 + v1094;
  if (v19)
  {
    ++v1095;
  }

  *(&v1097 + 1) = v1095;
  *&v1097 = v1096;
  v1098 = (v1097 >> 56) + (v1087 & 0xFFFFFFFFFFFFFFLL);
  v1099 = (v1062 - (v1078 + (v1087 >> 56)) + 0x8000) & 0xFFFFFFFFFFFFFFLL;
  v1100 = v1091 & 0xFFFFFFFFFFFFFFLL;
  v1461 = ((v1091 & 0xFFFFFFFFFFFFFFLL) * v1466) >> 64;
  v1458 = (v1091 & 0xFFFFFFFFFFFFFFLL) * v1466;
  v1101 = ((v1091 & 0xFFFFFFFFFFFFFFLL) * v1463) >> 64;
  v1102 = (v1091 & 0xFFFFFFFFFFFFFFLL) * v1463;
  v1103 = v1096 & 0xFFFFFFFFFFFFFFLL;
  v1104 = (v1103 * v1466) >> 64;
  v1105 = v1103 * v1466;
  v1106 = (v1100 * v1464) >> 64;
  v1107 = v1100 * v1464;
  v1108 = (v1103 * v1463) >> 64;
  v1109 = v1103 * v1463;
  v1110 = v1103 * v1464 + v1100 * v1465 + v1098 * v1463;
  v1111 = ((v1097 >> 56) + v1087) * v1465;
  v1113 = v1098 * v1465;
  v1112 = v1113 >> 16;
  v1114 = v1098 * v1464 + v1103 * v1465;
  v1115 = (v1110 + (v1113 >> 16)) >> 64;
  v1117 = (v1099 * v1464 + __PAIR128__(v1101, v1102) + __PAIR128__(v1104, v1105) - v1113) >> 64;
  v1116 = v1099 * v1464 + v1102 + v1105 - v1098 * v1465;
  v1118 = v1114 << 40;
  v19 = __CFADD__(v1116, v1118);
  v1119 = v1116 + v1118;
  *(&v1113 + 1) = v1115;
  *&v1113 = v1110 + v1112;
  v1120 = v1113 >> 16;
  if (v19)
  {
    ++v1117;
  }

  v1121 = __PAIR128__(v1117, v1119) + __PAIR128__(v1115 >> 16, v1120);
  v1123 = v1107 + v1099 * v1465 + v1109 + v1098 * v1466;
  v1122 = (__PAIR128__(v1106, v1107) + v1099 * v1465 + __PAIR128__(v1108, v1109) + v1098 * v1466) >> 64;
  v1124 = v1111 << 40;
  v19 = __CFADD__(v1123, v1124);
  v1125 = v1123 + v1124;
  if (v19)
  {
    ++v1122;
  }

  *(&v1126 + 1) = *(&v1121 + 1) + 0x7FFFFFFFFFFFFF80;
  *&v1126 = v1119 + v1120;
  v1127 = __PAIR128__(v1122, v1125) + (v1114 >> 16) + (v1126 >> 56);
  v1129 = (v1099 * v1466 - (__PAIR128__(v1115, v1110 + v1112) + (v1127 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 64;
  v1128 = v1099 * v1466 - (v1110 + v1112 + (v1127 >> 56)) + 0x8000;
  v1130 = (v1099 * v1463 + __PAIR128__(v1461, v1458) - v1114) >> 64;
  v1131 = v1099 * v1463 + v1458 - v1114;
  v1132 = (v1110 + v1112) << 40;
  v19 = __CFADD__(v1131, v1132);
  v1133 = v1131 + v1132;
  v1134 = (v1121 & 0xFFFFFFFFFFFFFFLL) + (*(&v1127 + 1) >> 8);
  v1135 = (v1127 >> 16) & 0xFFFF0000000000;
  if (v19)
  {
    ++v1130;
  }

  v19 = __CFADD__(v1133, v1135);
  v1136 = v1133 + v1135;
  *(&v1138 + 1) = v1129;
  *&v1138 = v1128;
  v1137 = v1138 >> 56;
  if (v19)
  {
    ++v1130;
  }

  v1139 = (__PAIR128__(v1130, v1136) + __PAIR128__(HIBYTE(v1129), v1137) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64;
  v1140 = v1136 + v1137 - 0x80000000000000;
  v1141 = __PAIR128__(v1139, v1140) >> 56;
  v1142 = v1134 + v1141;
  v1143 = HIBYTE(v1139);
  if (__CFADD__(v1134, v1141))
  {
    ++v1143;
  }

  *(&v1144 + 1) = v1143;
  *&v1144 = v1134 + v1141;
  v1145 = (v1144 >> 56) + (v1127 & 0xFFFFFFFFFFFFFFLL);
  v1146 = 97;
  do
  {
    v1147 = v1142 & 0xFFFFFFFFFFFFFFLL;
    v1148 = v1140 & 0xFFFFFFFFFFFFFFLL;
    v1149 = v1128 & 0xFFFFFFFFFFFFFFLL;
    v1150 = 2 * (v1128 & 0xFFFFFFFFFFFFFFLL);
    v1151 = 2 * (v1140 & 0xFFFFFFFFFFFFFFLL);
    v1152 = (v1149 * v1149) >> 64;
    v1153 = v1149 * v1149;
    v1154 = (v1151 * v1149) >> 64;
    v1155 = v1151 * v1149;
    v1156 = ((2 * v1147) * v1149) >> 64;
    v1157 = 2 * v1147 * v1149;
    v1158 = (2 * v1147) * v1148 + v1145 * v1150;
    v1159 = v1145 * v1151 + v1147 * v1147;
    v1160 = 2 * v1147 * v1145;
    v1161 = ((2 * v1147) * v1145) >> 64;
    v1162 = v1145 * v1145;
    v1163 = (v1145 * v1145) >> 64;
    *(&v1164 + 1) = v1163;
    *&v1164 = v1162;
    v1165 = v1159 + (v1164 >> 16);
    v1166 = (v1162 << 40) & 0xFFFF0000000000;
    *(&v1164 + 1) = v1161;
    *&v1164 = v1160;
    v1167 = v1164 >> 16;
    v1168 = v1161 >> 16;
    v1169 = (v1160 << 40) & 0xFFFE0000000000;
    v1170 = (__PAIR128__(v1154, v1155) - __PAIR128__(v1161, v1160)) >> 64;
    v1171 = v1165 << 40;
    v19 = __CFADD__(v1155 - v1160, v1171);
    v1172 = v1155 - v1160 + v1171;
    if (v19)
    {
      ++v1170;
    }

    v1174 = v1148 * v1148 - v1162 + v1157;
    v1173 = (v1148 * v1148 - __PAIR128__(v1163, v1162) + __PAIR128__(v1156, v1157)) >> 64;
    if (__CFADD__(v1174, v1169))
    {
      ++v1173;
    }

    v1175 = v1174 + v1169 + (v1165 >> 16);
    v1176 = ((__PAIR128__(v1173, v1174 + v1169) + (v1165 >> 16)) >> 64) + 0x7FFFFFFFFFFFFF80;
    v1177 = HIBYTE(v1176);
    *(&v1179 + 1) = v1176;
    *&v1179 = v1175;
    v1178 = v1179 >> 56;
    v1180 = (v1158 + __PAIR128__(v1168, v1167)) >> 64;
    v1181 = v1158 + v1167 + v1166;
    if (__CFADD__(v1158 + v1167, v1166))
    {
      ++v1180;
    }

    v1182 = __PAIR128__(v1180, v1181) + __PAIR128__(v1177, v1178);
    v1183 = ((__PAIR128__(v1180, v1181) + __PAIR128__(v1177, v1178)) >> 16) & 0xFFFF0000000000;
    v19 = __CFADD__(v1172, v1183);
    v1184 = v1172 + v1183;
    if (v19)
    {
      ++v1170;
    }

    v1185 = (v1175 & 0xFFFFFFFFFFFFFFLL) + (*(&v1182 + 1) >> 8);
    v1186 = __PAIR128__(v1152, v1153) - (v1165 + (v1182 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
    v1128 = v1186;
    v1187 = (__PAIR128__(v1170, v1184) + (v1186 >> 56) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64;
    v1140 = v1184 + (v1186 >> 56) - 0x80000000000000;
    v1188 = HIBYTE(v1187);
    v1189 = __PAIR128__(v1187, v1140) >> 56;
    v1142 = v1185 + v1189;
    if (__CFADD__(v1185, v1189))
    {
      v1190 = v1188 + 1;
    }

    else
    {
      v1190 = v1188;
    }

    *(&v1191 + 1) = v1190;
    *&v1191 = v1142;
    v1145 = (v1191 >> 56) + (v1182 & 0xFFFFFFFFFFFFFFLL);
    --v1146;
  }

  while (v1146);
  v1192 = v1140 & 0xFFFFFFFFFFFFFFLL;
  v1193 = ((v1140 & 0xFFFFFFFFFFFFFFLL) * v1451) >> 64;
  v1194 = v1192 * v1451;
  v1195 = (v1192 * v1449) >> 64;
  v1196 = v1192 * v1449;
  v1197 = v1142 & 0xFFFFFFFFFFFFFFLL;
  v1198 = (v1186 & 0xFFFFFFFFFFFFFFLL) * v1454;
  v1199 = (v1192 * v1448) >> 64;
  v1200 = v1192 * v1448;
  v1202 = (v1197 * v1448 + v1192 * v1454 + v1145 * v1449) >> 64;
  v1201 = v1197 * v1448 + v1192 * v1454 + v1145 * v1449;
  v1204 = (v1145 * v1451) >> 64;
  v1205 = v1145 * v1451;
  v1203 = v1145 * v1448 + v1197 * v1454;
  v1206 = v1145 * v1454;
  v1207 = (v1145 * v1454) >> 64;
  *(&v1208 + 1) = v1207;
  *&v1208 = v1206;
  v1209 = __PAIR128__(v1202, v1201) + (v1208 >> 16);
  v1211 = (v1186 & 0xFFFFFFFFFFFFFFLL) * v1448 + v1196 + v1197 * v1451 - v1206;
  v1210 = ((v1186 & 0xFFFFFFFFFFFFFFLL) * v1448 + __PAIR128__(v1195, v1196) + v1197 * v1451 - __PAIR128__(v1207, v1206)) >> 64;
  v1212 = v1203 << 40;
  v19 = __CFADD__(v1211, v1212);
  v1213 = v1211 + v1212;
  v1214 = v1209 >> 16;
  if (v19)
  {
    ++v1210;
  }

  v19 = __CFADD__(v1213, v1214);
  v1215 = v1213 + v1214;
  v1216 = (((v1186 & 0xFFFFFFFFFFFFFFLL) * v1454) >> 64) + __CFADD__(v1200, v1198) + v1199;
  v1217 = v1206 << 40;
  v1218 = (*(&v1209 + 1) >> 16) + v19 + v1210 + 0x7FFFFFFFFFFFFF80;
  v1220 = v1200 + v1198 + v1197 * v1449 + v1205;
  v1219 = (__PAIR128__(v1216, v1200 + v1198) + v1197 * v1449 + __PAIR128__(v1204, v1205)) >> 64;
  v1221 = v1209 << 40;
  v19 = __CFADD__(v1220, v1217);
  v1222 = v1220 + v1217;
  v1223 = HIBYTE(v1218);
  *(&v1225 + 1) = v1218;
  *&v1225 = v1215;
  v1224 = v1225 >> 56;
  if (v19)
  {
    ++v1219;
  }

  v1226 = __PAIR128__(v1219, v1222) + (v1203 >> 16) + __PAIR128__(v1223, v1224);
  v1227 = (v1215 & 0xFFFFFFFFFFFFFFLL) + (*(&v1226 + 1) >> 8);
  v1228 = (v1226 >> 16) & 0xFFFF0000000000;
  v1229 = (v1186 & 0xFFFFFFFFFFFFFFLL) * v1451 - (v1209 + (v1226 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
  v1231 = (v1186 & 0xFFFFFFFFFFFFFFLL) * v1449 + __PAIR128__(v1193, v1194) - v1203;
  v1230 = *(&v1231 + 1);
  v1232 = v1231 + v1221;
  if (__CFADD__(v1231, v1221))
  {
    v1230 = *(&v1231 + 1) + 1;
  }

  v19 = __CFADD__(v1232, v1228);
  v1233 = v1232 + v1228;
  if (v19)
  {
    ++v1230;
  }

  v1234 = __PAIR128__(v1230, v1233) + (v1229 >> 56) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v1235 = v1234 >> 56;
  v1236 = v1227 + v1235;
  if (__CFADD__(v1227, v1235))
  {
    v1237 = HIBYTE(*(&v1234 + 1)) + 1;
  }

  else
  {
    v1237 = HIBYTE(*(&v1234 + 1));
  }

  *(&v1238 + 1) = v1237;
  *&v1238 = v1236;
  v1239 = (v1238 >> 56) + (v1226 & 0xFFFFFFFFFFFFFFLL);
  v1240 = 2 * (v1234 & 0xFFFFFFFFFFFFFFLL);
  v1241 = 2 * (v1236 & 0xFFFFFFFFFFFFFFLL);
  v1242 = v1229 & 0xFFFFFFFFFFFFFFLL;
  v1243 = v1234 & 0xFFFFFFFFFFFFFFLL;
  v1244 = ((v1234 & 0xFFFFFFFFFFFFFFLL) * v1241 + v1239 * (2 * (v1229 & 0xFFFFFFFFFFFFFFLL))) >> 64;
  v1245 = (v1234 & 0xFFFFFFFFFFFFFFLL) * v1241 + v1239 * 2 * (v1229 & 0xFFFFFFFFFFFFFFLL);
  v1246 = v1236 & 0xFFFFFFFFFFFFFFLL;
  v1247 = (v1239 * v1240 + v1246 * v1246 + ((v1239 * v1239) >> 16)) >> 64;
  v1248 = v1239 * v1240 + v1246 * v1246 + ((v1239 * v1239) >> 16);
  v1249 = (((v1238 >> 56) + v1226) * ((v1238 >> 56) + v1226)) << 40;
  v19 = __CFADD__(v1245, v1249);
  v1250 = v1245 + v1249;
  if (v19)
  {
    ++v1244;
  }

  v1251 = (v1242 * v1240 - v1239 * v1241) >> 64;
  v1252 = v1242 * v1240 - v1239 * v1241;
  v1253 = v1248 << 40;
  v19 = __CFADD__(v1252, v1253);
  v1254 = v1252 + v1253;
  if (v19)
  {
    ++v1251;
  }

  *(&v1255 + 1) = v1247;
  *&v1255 = v1248;
  v1256 = v1243 * v1243 - v1239 * v1239 + v1242 * v1241 + (v1255 >> 16) + __PAIR128__(0x7FFFFFFFFFFFFF80, ((v1239 * v1241) << 40) & 0xFFFE0000000000);
  v1257 = __PAIR128__(v1244, v1250) + ((v1239 * v1241) >> 16) + (v1256 >> 56);
  v1258 = (v1257 >> 16) & 0xFFFF0000000000;
  v19 = __CFADD__(v1254, v1258);
  v1259 = v1254 + v1258;
  if (v19)
  {
    v1260 = v1251 + 1;
  }

  else
  {
    v1260 = v1251;
  }

  v1261 = v1257 >> 56;
  v19 = __CFADD__(v1248, v1261);
  v1262 = v1248 + v1261;
  v1263 = (v1256 & 0xFFFFFFFFFFFFFFLL) + (*(&v1257 + 1) >> 8);
  v1264 = v1242 * v1242 - __PAIR128__(HIBYTE(*(&v1257 + 1)) + v19 + v1247, v1262) + __PAIR128__(0x8000000000000000, 0x8000);
  v1265 = __PAIR128__(v1260, v1259) + (v1264 >> 56) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v1266 = v1265 >> 56;
  v1267 = v1263 + v1266;
  v1268 = HIBYTE(*(&v1265 + 1));
  if (__CFADD__(v1263, v1266))
  {
    ++v1268;
  }

  *(&v1269 + 1) = v1268;
  *&v1269 = v1263 + v1266;
  v1270 = (v1269 >> 56) + (v1257 & 0xFFFFFFFFFFFFFFLL);
  if (a3)
  {
    v1271 = *a2 & 0xFFFFFFFFFFFFFFLL;
    v1272 = (*a2 >> 56) & 0xFFFFFFFFFFFFFFLL;
    v1273 = (*(a2 + 8) >> 48) & 0xFFFFFFFFFFFFFFLL;
    v1274 = *(a2 + 16);
    v1275 = (v1274 >> 40) & 0xFFFFFFFFFFFFFFLL;
    v1276 = v1265 & 0xFFFFFFFFFFFFFFLL;
    v1277 = (v1264 & 0xFFFFFFFFFFFFFFLL) * v1272;
    v1278 = (v1267 & 0xFFFFFFFFFFFFFFLL) * v1275 + v1270 * v1273;
    v1279 = ((v1267 & 0xFFFFFFFFFFFFFFLL) * ((v1274 >> 40) & 0xFFFFFFFFFFFFFFLL) + v1270 * ((*(a2 + 8) >> 48) & 0xFFFFFFFFFFFFFFLL)) >> 64;
    v1280 = v1270 * v1275;
    v1282 = ((v1267 & 0xFFFFFFFFFFFFFFLL) * ((*(a2 + 8) >> 48) & 0xFFFFFFFFFFFFFFLL) + v1270 * ((*a2 >> 56) & 0xFFFFFFFFFFFFFFLL) + (v1265 & 0xFFFFFFFFFFFFFFLL) * ((v1274 >> 40) & 0xFFFFFFFFFFFFFFLL) + ((v1270 * ((v1274 >> 40) & 0xFFFFFFFFFFFFFFLL)) >> 16)) >> 64;
    v1281 = (v1267 & 0xFFFFFFFFFFFFFFLL) * v1273 + v1270 * v1272 + (v1265 & 0xFFFFFFFFFFFFFFLL) * v1275 + ((v1270 * ((v1274 >> 40) & 0xFFFFFFFFFFFFFFLL)) >> 16);
    v1283 = (v1267 & 0xFFFFFFFFFFFFFFLL) * v1272;
    v1284 = ((v1264 & 0xFFFFFFFFFFFFFFLL) * ((v1274 >> 40) & 0xFFFFFFFFFFFFFFLL)) >> 64;
    v1285 = (v1264 & 0xFFFFFFFFFFFFFFLL) * v1275;
    v1287 = ((v1267 & 0xFFFFFFFFFFFFFFLL) * v1271 + (v1265 & 0xFFFFFFFFFFFFFFLL) * ((*a2 >> 56) & 0xFFFFFFFFFFFFFFLL) + (v1264 & 0xFFFFFFFFFFFFFFLL) * ((*(a2 + 8) >> 48) & 0xFFFFFFFFFFFFFFLL) - __PAIR128__((v1270 * ((v1274 >> 40) & 0xFFFFFFFFFFFFFFLL)) >> 64, v1280)) >> 64;
    v1286 = (v1267 & 0xFFFFFFFFFFFFFFLL) * v1271 + (v1265 & 0xFFFFFFFFFFFFFFLL) * ((*a2 >> 56) & 0xFFFFFFFFFFFFFFLL) + (v1264 & 0xFFFFFFFFFFFFFFLL) * v1273 - v1280;
    v1288 = v1278 << 40;
    v19 = __CFADD__(v1286, v1288);
    v1289 = v1286 + v1288;
    if (v19)
    {
      ++v1287;
    }

    v1290 = (v1276 * v1271) >> 64;
    v19 = __CFADD__(v1283, v1270 * v1271);
    v1291 = v1283 + v1270 * v1271;
    v1292 = (v1276 * ((*(a2 + 8) >> 48) & 0xFFFFFFFFFFFFFFLL)) >> 64;
    v1293 = v1276 * v1273;
    v1294 = v1276 * v1271;
    v1296 = v1291 + v1293 + v1285;
    v1295 = (__PAIR128__(v1292 + __CFADD__(v1291, v1293) + ((v1270 * v1271) >> 64) + v19 + (((v1267 & 0xFFFFFFFFFFFFFFLL) * ((*a2 >> 56) & 0xFFFFFFFFFFFFFFLL)) >> 64), v1291 + v1293) + __PAIR128__(v1284, v1285)) >> 64;
    v1297 = v1280 << 40;
    v19 = __CFADD__(v1296, v1297);
    v1298 = v1296 + v1297;
    *(&v1300 + 1) = v1279;
    *&v1300 = v1278;
    v1299 = v1300 >> 16;
    if (v19)
    {
      ++v1295;
    }

    *(&v1301 + 1) = ((__PAIR128__(v1287, v1289) + (__PAIR128__(v1282, v1281) >> 16)) >> 64) + 0x7FFFFFFFFFFFFF80;
    *&v1301 = *(&v1264 + 1);
    v1302 = __PAIR128__((v1279 >> 16) + __CFADD__(v1298, v1299) + v1295, v1298 + v1299) + (v1301 >> 56);
    v1304 = v1294 + v1277 - v1278;
    v1303 = (__PAIR128__(v1290, v1294) + __PAIR128__(((v1264 & 0xFFFFFFFFFFFFFFLL) * ((*a2 >> 56) & 0xFFFFFFFFFFFFFFLL)) >> 64, v1277) - __PAIR128__(v1279, v1278)) >> 64;
    v1305 = v1281 << 40;
    v1306 = (*(&v1264 + 1) & 0xFFFFFFFFFFFFFFLL) + (*(&v1302 + 1) >> 8);
    v1307 = v1304 + v1305;
    v1308 = (v1302 >> 16) & 0xFFFF0000000000;
    if (__CFADD__(v1304, v1305))
    {
      ++v1303;
    }

    v19 = __CFADD__(v1307, v1308);
    v1309 = v1307 + v1308;
    v1310 = ((v1264 & 0xFFFFFFFFFFFFFFLL) * v1271 - __PAIR128__(HIBYTE(*(&v1302 + 1)) + __CFADD__(v1281, (v1302 >> 56)) + v1282, v1281 + (v1302 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 56;
    if (v19)
    {
      ++v1303;
    }

    v1312 = (__PAIR128__(((((v1264 & 0xFFFFFFFFFFFFFFLL) * v1271 - __PAIR128__(HIBYTE(*(&v1302 + 1)) + __CFADD__(v1281, (v1302 >> 56)) + v1282, v1281 + (v1302 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 64) >> 56) + __CFADD__(v1309, v1310) + v1303, v1309 + v1310) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64;
    v1311 = v1309 + v1310 - 0x80000000000000;
    v1313 = ((v1264 & 0xFFFFFFFFFFFFFFLL) * v1271 - (v1281 + (v1302 >> 56)) + 0x8000) & 0xFFFFFFFFFFFFFFLL;
    v1314 = HIBYTE(v1312);
    v1315 = __PAIR128__(v1312, v1311) >> 56;
    v19 = __CFADD__(v1306, v1315);
    v1316 = v1306 + v1315;
    if (v19)
    {
      ++v1314;
    }

    *(&v1317 + 1) = v1314;
    *&v1317 = v1316;
    v1318 = (v1317 >> 56) + (v1302 & 0xFFFFFFFFFFFFFFLL);
    v1319 = v1313 - HIBYTE(v1318);
    v1320 = (v1311 & 0xFFFFFFFFFFFFFFLL) + (HIBYTE(v1318) << 40);
    v1322 = ((((v1311 & 0xFFFF0000000000 | 0xFFFFFFFFFFLL) & v1316 & v1318) + 1) | ((v1313 + (v1311 & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL;
    v1321 = v1322 == 0;
    v1323 = 0x1FFFFFFFFFFFFFFLL;
    if (!v1322)
    {
      v1323 = 0xFFFFFFFFFFLL;
    }

    v1324 = v1319 + ((v1322 - 1) >> 63);
    v1325 = v1323 & v1320;
    v1326 = v1324 + (v1324 >> 63 << 56);
    v1327 = v1325 + (v1324 >> 63);
    v1328 = v1316 & 0xFFFFFFFFFFFFFFLL;
    if (v1321)
    {
      v1328 = 0;
    }

    v1329 = v1328 + (v1327 >> 56);
    *a3 = v1326 | (v1327 << 56);
    a3[1] = (v1327 >> 8) & 0xFFFFFFFFFFFFLL | (v1329 << 48);
    v1330 = v1318 & 0xFFFFFFFFFFFFFFLL;
    if (v1321)
    {
      v1330 = 0;
    }

    v1331 = v1330 + (v1329 >> 56);
    a3[2] = (v1329 >> 16) & 0xFFFFFFFFFFLL | (v1331 << 40);
    a3[3] = v1331 >> 24;
  }

  if (a4)
  {
    v1472 = ((v1264 & 0xFFFFFFFFFFFFFFLL) * v1243) >> 64;
    v1468 = (v1264 & 0xFFFFFFFFFFFFFFLL) * v1243;
    v1332 = ((v1265 & 0xFFFFFFFFFFFFFFLL) * v1242) >> 64;
    v1333 = (v1265 & 0xFFFFFFFFFFFFFFLL) * v1242;
    v1334 = ((v1264 & 0xFFFFFFFFFFFFFFLL) * v1246) >> 64;
    v1335 = (v1264 & 0xFFFFFFFFFFFFFFLL) * v1246;
    v1336 = ((v1265 & 0xFFFFFFFFFFFFFFLL) * v1243) >> 64;
    v1337 = (v1265 & 0xFFFFFFFFFFFFFFLL) * v1243;
    v1338 = ((v1267 & 0xFFFFFFFFFFFFFFLL) * v1242) >> 64;
    v1339 = (v1267 & 0xFFFFFFFFFFFFFFLL) * v1242;
    v1340 = ((v1264 & 0xFFFFFFFFFFFFFFLL) * v1239) >> 64;
    v1341 = (v1264 & 0xFFFFFFFFFFFFFFLL) * v1239;
    v1342 = ((v1265 & 0xFFFFFFFFFFFFFFLL) * v1246) >> 64;
    v1343 = (v1265 & 0xFFFFFFFFFFFFFFLL) * v1246;
    v1344 = ((v1267 & 0xFFFFFFFFFFFFFFLL) * v1243) >> 64;
    v1345 = (v1267 & 0xFFFFFFFFFFFFFFLL) * v1243;
    v1346 = (v1267 & 0xFFFFFFFFFFFFFFLL) * v1246 + (v1265 & 0xFFFFFFFFFFFFFFLL) * v1239;
    v1347 = v1270 * v1246 + (v1267 & 0xFFFFFFFFFFFFFFLL) * v1239;
    v1348 = v1270 * v1239;
    v1349 = (v1270 * v1239) >> 64;
    *(&v1350 + 1) = v1349;
    *&v1350 = v1348;
    v1351 = v1346 + v1270 * v1243 + (v1350 >> 16);
    v1353 = *(a2 + 88);
    v1352 = v1353 >> 40;
    *(&v1353 + 1) = v1353;
    *&v1353 = *(a2 + 80);
    v1354 = v1353 >> 48;
    *(&v1353 + 1) = v1353;
    *&v1353 = *(a2 + 72);
    v1355 = v1353 & 0xFFFFFFFFFFFFFFLL;
    v1356 = (v1353 >> 56) & 0xFFFFFFFFFFFFFFLL;
    v1357 = v1354 & 0xFFFFFFFFFFFFFFLL;
    v1358 = v1352 & 0xFFFFFFFFFFFFFFLL;
    v1359 = v1335;
    v1360 = v1348 << 40;
    v1361 = __PAIR128__(v1334, v1359) + __PAIR128__(v1336, v1337) + __PAIR128__(v1338, v1339);
    v1362 = v1347 << 40;
    v1364 = v1361 - __PAIR128__(v1349, v1348);
    v1363 = (v1361 - __PAIR128__(v1349, v1348)) >> 64;
    v1365 = v1364 + v1362;
    if (__CFADD__(v1364, v1362))
    {
      ++v1363;
    }

    v1366 = __PAIR128__(v1363, v1365) + (v1351 >> 16);
    v1367 = v1351 << 40;
    *(&v1369 + 1) = *(&v1366 + 1) + 0x7FFFFFFFFFFFFF80;
    *&v1369 = v1365 + (v1351 >> 16);
    v1368 = v1369 >> 56;
    v1370 = __PAIR128__(v1340 + __CFADD__(v1343, v1341) + v1342, v1343 + v1341) + __PAIR128__(v1344, v1345) + v1270 * v1242;
    v1371 = v1370 + v1360;
    if (__CFADD__(v1370, v1360))
    {
      v1372 = *(&v1370 + 1) + 1;
    }

    else
    {
      v1372 = (__PAIR128__(v1340 + __CFADD__(v1343, v1341) + v1342, v1343 + v1341) + __PAIR128__(v1344, v1345) + v1270 * v1242) >> 64;
    }

    v1373 = __PAIR128__(v1372, v1371) + (v1347 >> 16) + __PAIR128__((*(&v1366 + 1) + 0x7FFFFFFFFFFFFF80) >> 56, v1368);
    v1374 = (v1366 & 0xFFFFFFFFFFFFFFLL) + (*(&v1373 + 1) >> 8);
    v1375 = (v1373 >> 16) & 0xFFFF0000000000;
    v1376 = (v1264 & 0xFFFFFFFFFFFFFFLL) * v1242 - (v1351 + (v1373 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
    v1377 = HIBYTE(*(&v1376 + 1));
    v1378 = v1376 >> 56;
    v1380 = (__PAIR128__(v1332 + __CFADD__(v1468, v1333) + v1472, v1468 + v1333) - v1347) >> 64;
    v1379 = v1468 + v1333 - v1347;
    v19 = __CFADD__(v1379, v1367);
    v1381 = v1379 + v1367;
    if (v19)
    {
      ++v1380;
    }

    v19 = __CFADD__(v1381, v1375);
    v1382 = v1381 + v1375;
    if (v19)
    {
      v1383 = v1380 + 1;
    }

    else
    {
      v1383 = v1380;
    }

    v1384 = v1382 + v1378 - 0x80000000000000;
    v1385 = ((__PAIR128__(v1377 + __CFADD__(v1382, v1378) + v1383, v1382 + v1378) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64) >> 56;
    v1386 = (__PAIR128__(v1377 + __CFADD__(v1382, v1378) + v1383, v1382 + v1378) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 56;
    v19 = __CFADD__(v1374, v1386);
    v1387 = v1374 + v1386;
    if (v19)
    {
      ++v1385;
    }

    *(&v1388 + 1) = v1385;
    *&v1388 = v1387;
    v1389 = (v1388 >> 56) + (v1373 & 0xFFFFFFFFFFFFFFLL);
    v1390 = v1387 & 0xFFFFFFFFFFFFFFLL;
    v1391 = (v1389 * v1355) >> 64;
    v1392 = v1389 * v1355;
    v1393 = v1390 * v1357 + v1389 * v1356 + (v1384 & 0xFFFFFFFFFFFFFFLL) * v1358;
    v1394 = v1390 * v1358 + v1389 * v1357;
    v1395 = v1389 * v1358;
    v1396 = (v1389 * v1358) >> 64;
    *(&v1388 + 1) = v1396;
    *&v1388 = v1395;
    v1397 = v1393 + (v1388 >> 16);
    v1399 = v1390 * v1355 + (v1384 & 0xFFFFFFFFFFFFFFLL) * v1356 + (v1376 & 0xFFFFFFFFFFFFFFLL) * v1357 - v1395;
    v1398 = (v1390 * v1355 + (v1384 & 0xFFFFFFFFFFFFFFLL) * v1356 + (v1376 & 0xFFFFFFFFFFFFFFLL) * v1357 - __PAIR128__(v1396, v1395)) >> 64;
    v1400 = v1394 << 40;
    v19 = __CFADD__(v1399, v1400);
    v1401 = v1399 + v1400;
    if (v19)
    {
      ++v1398;
    }

    v1402 = __PAIR128__(v1398, v1401) + (v1397 >> 16);
    v1404 = __PAIR128__(v1391 + __CFADD__(v1390 * v1356, v1392) + ((v1390 * v1356) >> 64), v1390 * v1356 + v1392) + (v1384 & 0xFFFFFFFFFFFFFFLL) * v1357 + (v1376 & 0xFFFFFFFFFFFFFFLL) * v1358;
    v1403 = *(&v1404 + 1);
    v1405 = v1395 << 40;
    v19 = __CFADD__(v1404, v1405);
    v1406 = v1404 + v1405;
    if (v19)
    {
      v1403 = *(&v1404 + 1) + 1;
    }

    *(&v1407 + 1) = *(&v1402 + 1) + 0x7FFFFFFFFFFFFF80;
    *&v1407 = v1401 + (v1397 >> 16);
    v1408 = __PAIR128__(v1403, v1406) + (v1394 >> 16) + (v1407 >> 56);
    v1409 = (v1376 & 0xFFFFFFFFFFFFFFLL) * v1355 - (v1397 + (v1408 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
    v1410 = ((v1384 & 0xFFFFFFFFFFFFFFLL) * v1355 + (v1376 & 0xFFFFFFFFFFFFFFLL) * v1356 - v1394) >> 64;
    v1411 = (v1384 & 0xFFFFFFFFFFFFFFLL) * v1355 + (v1376 & 0xFFFFFFFFFFFFFFLL) * v1356 - v1394;
    v1412 = v1397 << 40;
    v19 = __CFADD__(v1411, v1412);
    v1413 = v1411 + v1412;
    v1414 = (v1402 & 0xFFFFFFFFFFFFFFLL) + (*(&v1408 + 1) >> 8);
    v1415 = (v1408 >> 16) & 0xFFFF0000000000;
    if (v19)
    {
      ++v1410;
    }

    v19 = __CFADD__(v1413, v1415);
    v1416 = v1413 + v1415;
    v1417 = v1409 >> 56;
    if (v19)
    {
      ++v1410;
    }

    v1418 = (__PAIR128__(HIBYTE(*(&v1409 + 1)) + __CFADD__(v1416, v1417) + v1410, v1416 + v1417) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64;
    v1419 = v1416 + v1417 - 0x80000000000000;
    v1420 = v1409 & 0xFFFFFFFFFFFFFFLL;
    v1421 = HIBYTE(v1418);
    v1422 = __PAIR128__(v1418, v1419) >> 56;
    v19 = __CFADD__(v1414, v1422);
    v1423 = v1414 + v1422;
    if (v19)
    {
      ++v1421;
    }

    *(&v1424 + 1) = v1421;
    *&v1424 = v1423;
    v1425 = (v1424 >> 56) + (v1408 & 0xFFFFFFFFFFFFFFLL);
    v1426 = v1420 - HIBYTE(v1425);
    v1427 = (v1419 & 0xFFFFFFFFFFFFFFLL) + (HIBYTE(v1425) << 40);
    v1429 = ((((v1419 & 0xFFFF0000000000 | 0xFFFFFFFFFFLL) & v1423 & v1425) + 1) | ((v1420 + (v1419 & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL;
    v1428 = v1429 == 0;
    v1430 = 0x1FFFFFFFFFFFFFFLL;
    if (!v1429)
    {
      v1430 = 0xFFFFFFFFFFLL;
    }

    v1431 = v1426 + ((v1429 - 1) >> 63);
    v1432 = v1430 & v1427;
    v1433 = v1431 + (v1431 >> 63 << 56);
    v1434 = v1432 + (v1431 >> 63);
    v1435 = v1423 & 0xFFFFFFFFFFFFFFLL;
    if (v1428)
    {
      v1435 = 0;
    }

    v1436 = v1435 + (v1434 >> 56);
    *a4 = v1433 | (v1434 << 56);
    a4[1] = (v1434 >> 8) & 0xFFFFFFFFFFFFLL | (v1436 << 48);
    v1437 = v1425 & 0xFFFFFFFFFFFFFFLL;
    if (v1428)
    {
      v1437 = 0;
    }

    v1438 = v1437 + (v1436 >> 56);
    a4[2] = (v1436 >> 16) & 0xFFFFFFFFFFLL | (v1438 << 40);
    a4[3] = v1438 >> 24;
  }

  return 1;
}

void ec_GFp_nistp224_add(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a3[1];
  *(&v6 + 1) = v5;
  *&v6 = *a3;
  v65.i64[0] = *a3 & 0xFFFFFFFFFFFFFFLL;
  v65.i64[1] = (v6 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v6 + 1) = a3[2];
  *&v6 = v5;
  v7 = (v6 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v8 = *(a3 + 1);
  v66 = v7;
  v67 = (v8 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v9 = a3[10];
  *(&v8 + 1) = v9;
  *&v8 = a3[9];
  v62.i64[0] = v8 & 0xFFFFFFFFFFFFFFLL;
  v62.i64[1] = (v8 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v8 + 1) = a3[11];
  *&v8 = v9;
  v10 = (v8 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v11 = *(a3 + 11);
  v63 = v10;
  v64 = (v11 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v12 = a3[19];
  *(&v11 + 1) = v12;
  *&v11 = a3[18];
  v58 = v11 & 0xFFFFFFFFFFFFFFLL;
  v59 = (v11 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v11 + 1) = a3[20];
  *&v11 = v12;
  v13 = (v11 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v14 = *(a3 + 10);
  v60 = v13;
  v61 = (v14 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v15 = a4[1];
  *(&v14 + 1) = v15;
  *&v14 = *a4;
  v55.i64[0] = *a4 & 0xFFFFFFFFFFFFFFLL;
  v55.i64[1] = (v14 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v14 + 1) = a4[2];
  *&v14 = v15;
  v16 = (v14 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v17 = *(a4 + 1);
  v56 = v16;
  v57 = (v17 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v18 = a4[10];
  *(&v17 + 1) = v18;
  *&v17 = a4[9];
  v54[0] = v17 & 0xFFFFFFFFFFFFFFLL;
  v54[1] = (v17 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v17 + 1) = a4[11];
  *&v17 = v18;
  v19 = (v17 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v20 = *(a4 + 11);
  v54[2] = v19;
  v54[3] = (v20 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v21 = a4[19];
  *(&v20 + 1) = v21;
  *&v20 = a4[18];
  v51.i64[0] = v20 & 0xFFFFFFFFFFFFFFLL;
  v51.i64[1] = (v20 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v20 + 1) = a4[20];
  *&v20 = v21;
  v22 = (v20 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v23 = *(a4 + 10);
  v52 = v22;
  v53 = (v23 >> 40) & 0xFFFFFFFFFFFFFFLL;
  p224_point_add(&v65, &v62, &v58, &v65, &v62, &v58, 0, &v55, v54, &v51);
  v24 = v66;
  v25 = v65.i64[0] - HIBYTE(v67) + ((((((v66 & v67 & (v65.i64[1] | 0xFFFFFFFFFFLL)) + 1) | ((v65.i64[0] + (v65.i64[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) - 1) >> 63);
  v26 = v25 + (v25 >> 63 << 56);
  v27 = 0xFFFFFFFFFFLL;
  if (((((v66 & v67 & (v65.i64[1] | 0xFFFFFFFFFFLL)) + 1) | ((v65.i64[0] + (v65.i64[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) != 0)
  {
    v28 = -1;
  }

  else
  {
    v28 = 0xFFFFFFFFFFLL;
  }

  v29 = (v28 & (v65.i64[1] + (HIBYTE(v67) << 40))) + (v25 >> 63);
  if (((((v66 & v67 & (v65.i64[1] | 0xFFFFFFFFFFLL)) + 1) | ((v65.i64[0] + (v65.i64[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) == 0)
  {
    v24 = 0;
  }

  v30 = v24 + (v29 >> 56);
  v31 = v67 & 0xFFFFFFFFFFFFFFLL;
  if (((((v66 & v67 & (v65.i64[1] | 0xFFFFFFFFFFLL)) + 1) | ((v65.i64[0] + (v65.i64[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) == 0)
  {
    v31 = 0;
  }

  v32 = v31 + (v30 >> 56);
  *a2 = v26 | (v29 << 56);
  a2[1] = (v29 >> 8) & 0xFFFFFFFFFFFFLL | (v30 << 48);
  a2[2] = (v30 >> 16) & 0xFFFFFFFFFFLL | (v32 << 40);
  a2[3] = v32 >> 24;
  v33 = v63;
  v34 = (((v63 & v64 & (v62.i64[1] | 0xFFFFFFFFFFLL)) + 1) | ((v62.i64[0] + (v62.i64[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL;
  if (v34)
  {
    v35 = v64 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    v35 = 0;
  }

  if (v34)
  {
    v36 = -1;
  }

  else
  {
    v33 = 0;
    v36 = 0xFFFFFFFFFFLL;
  }

  v37 = v62.i64[0] - HIBYTE(v64) + ((v34 - 1) >> 63);
  v38 = v37 + (v37 >> 63 << 56);
  v39 = (v36 & (v62.i64[1] + (HIBYTE(v64) << 40))) + (v37 >> 63);
  v40 = v33 + (v39 >> 56);
  v41 = v35 + (v40 >> 56);
  a2[9] = v38 | (v39 << 56);
  a2[10] = (v39 >> 8) & 0xFFFFFFFFFFFFLL | (v40 << 48);
  a2[11] = (v40 >> 16) & 0xFFFFFFFFFFLL | (v41 << 40);
  a2[12] = v41 >> 24;
  v42 = v60;
  v43 = (v60 & v61 & (v59 | 0xFFFFFFFFFFLL)) + 1;
  if (((v43 | ((v58 + (v59 & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) != 0)
  {
    v44 = v61 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    v44 = 0;
  }

  if (((v43 | ((v58 + (v59 & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) != 0)
  {
    v27 = -1;
  }

  else
  {
    v42 = 0;
  }

  v45 = v58 - HIBYTE(v61) + ((((v43 | ((v58 + (v59 & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) - 1) >> 63);
  v46 = v45 + (v45 >> 63 << 56);
  v47 = (v27 & (v59 + (HIBYTE(v61) << 40))) + (v45 >> 63);
  v48 = v42 + (v47 >> 56);
  a2[18] = v46 | (v47 << 56);
  a2[19] = (v47 >> 8) & 0xFFFFFFFFFFFFLL | (v48 << 48);
  v49 = v48 >> 16;
  v50 = v44 + (v48 >> 56);
  a2[20] = v49 & 0xFFFFFFFFFFLL | (v50 << 40);
  a2[21] = v50 >> 24;
}

unint64_t ec_GFp_nistp224_dbl(uint64_t a1, uint64_t *a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3[1];
  *(&v5 + 1) = v4;
  *&v5 = *a3;
  v50 = *a3 & 0xFFFFFFFFFFFFFFLL;
  v51 = (v5 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v5 + 1) = a3[2];
  *&v5 = v4;
  v6 = (v5 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v7 = *(a3 + 1);
  v52 = v6;
  v53 = (v7 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v8 = a3[10];
  *(&v7 + 1) = v8;
  *&v7 = a3[9];
  v46 = v7 & 0xFFFFFFFFFFFFFFLL;
  v47 = (v7 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v7 + 1) = a3[11];
  *&v7 = v8;
  v9 = (v7 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v10 = *(a3 + 11);
  v48 = v9;
  v49 = (v10 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v11 = a3[19];
  *(&v10 + 1) = v11;
  *&v10 = a3[18];
  v42 = v10 & 0xFFFFFFFFFFFFFFLL;
  v43 = (v10 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v10 + 1) = a3[20];
  *&v10 = v11;
  v12 = (v10 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v13 = *(a3 + 10);
  v44 = v12;
  v45 = (v13 >> 40) & 0xFFFFFFFFFFFFFFLL;
  result = p224_point_double(&v50, &v46, &v42, &v50, &v46, &v42);
  v15 = v52;
  v16 = v50 - HIBYTE(v53) + ((((((v52 & v53 & (v51 | 0xFFFFFFFFFFLL)) + 1) | ((v50 + (v51 & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) - 1) >> 63);
  v17 = v16 + (v16 >> 63 << 56);
  v18 = 0xFFFFFFFFFFLL;
  if (((((v52 & v53 & (v51 | 0xFFFFFFFFFFLL)) + 1) | ((v50 + (v51 & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) != 0)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0xFFFFFFFFFFLL;
  }

  v20 = (v19 & (v51 + (HIBYTE(v53) << 40))) + (v16 >> 63);
  if (((((v52 & v53 & (v51 | 0xFFFFFFFFFFLL)) + 1) | ((v50 + (v51 & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) == 0)
  {
    v15 = 0;
  }

  v21 = v15 + (v20 >> 56);
  v22 = v53 & 0xFFFFFFFFFFFFFFLL;
  if (((((v52 & v53 & (v51 | 0xFFFFFFFFFFLL)) + 1) | ((v50 + (v51 & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) == 0)
  {
    v22 = 0;
  }

  v23 = v22 + (v21 >> 56);
  *a2 = v17 | (v20 << 56);
  a2[1] = (v20 >> 8) & 0xFFFFFFFFFFFFLL | (v21 << 48);
  a2[2] = (v21 >> 16) & 0xFFFFFFFFFFLL | (v23 << 40);
  a2[3] = v23 >> 24;
  v24 = v48;
  v25 = (((v48 & v49 & (v47 | 0xFFFFFFFFFFLL)) + 1) | ((v46 + (v47 & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL;
  if (v25)
  {
    v26 = v49 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    v26 = 0;
  }

  if (((((v48 & v49 & (v47 | 0xFFFFFFFFFFLL)) + 1) | ((v46 + (v47 & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) != 0)
  {
    v27 = -1;
  }

  else
  {
    v24 = 0;
    v27 = 0xFFFFFFFFFFLL;
  }

  v28 = v46 - HIBYTE(v49) + ((v25 - 1) >> 63);
  v29 = v28 + (v28 >> 63 << 56);
  v30 = (v27 & (v47 + (HIBYTE(v49) << 40))) + (v28 >> 63);
  v31 = v24 + (v30 >> 56);
  v32 = v26 + (v31 >> 56);
  a2[9] = v29 | (v30 << 56);
  a2[10] = (v30 >> 8) & 0xFFFFFFFFFFFFLL | (v31 << 48);
  a2[11] = (v31 >> 16) & 0xFFFFFFFFFFLL | (v32 << 40);
  a2[12] = v32 >> 24;
  v33 = v44;
  v34 = (v44 & v45 & (v43 | 0xFFFFFFFFFFLL)) + 1;
  if (((v34 | ((v42 + (v43 & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) != 0)
  {
    v35 = v45 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    v35 = 0;
  }

  if (((v34 | ((v42 + (v43 & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) != 0)
  {
    v18 = -1;
  }

  else
  {
    v33 = 0;
  }

  v36 = v42 - HIBYTE(v45) + ((((v34 | ((v42 + (v43 & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) - 1) >> 63);
  v37 = v36 + (v36 >> 63 << 56);
  v38 = (v18 & (v43 + (HIBYTE(v45) << 40))) + (v36 >> 63);
  v39 = v33 + (v38 >> 56);
  a2[18] = v37 | (v38 << 56);
  a2[19] = (v38 >> 8) & 0xFFFFFFFFFFFFLL | (v39 << 48);
  v40 = v39 >> 16;
  v41 = v35 + (v39 >> 56);
  a2[20] = v40 & 0xFFFFFFFFFFLL | (v41 << 40);
  a2[21] = v41 >> 24;
  return result;
}

void ec_GFp_nistp224_point_mul(uint64_t a1, int64_t *a2, uint64_t a3, uint64_t a4)
{
  v92[199] = *MEMORY[0x277D85DE8];
  ec_GFp_nistp224_make_precomp(v91, a3);
  *v85 = 0u;
  v86 = 0u;
  v6 = 1;
  v7 = 220;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  do
  {
    if (v6)
    {
      if (-858993459 * v7 >= 0x33333334)
      {
        goto LABEL_2;
      }
    }

    else
    {
      p224_point_double(v85, &v87, &v89, v85, &v87, &v89);
      if (-858993459 * v7 >= 0x33333334)
      {
LABEL_2:
        v8 = v7 - 1;
        goto LABEL_3;
      }
    }

    if (v7 == 220)
    {
      v9 = 0;
      v8 = 219;
LABEL_10:
      v10 = (*(a4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1;
      goto LABEL_13;
    }

    v9 = 32 * ((*(a4 + (((v7 + 4) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v7 + 4)) & 1);
    v8 = v7 - 1;
    if (v7 - 1 <= 0xDF)
    {
      goto LABEL_10;
    }

    v10 = 0;
LABEL_13:
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = (16 * ((*(a4 + (((v7 + 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v7 + 3)) & 1)) | (8 * ((*(a4 + (((v7 + 2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v7 + 2)) & 1)) | (4 * ((*(a4 + (((v7 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v7 + 1)) & 1)) | (2 * ((*(a4 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1)) | v10 | v9;
    v17 = v9 >> 5;
    v18 = v17 + 63;
    v19 = -v17;
    v20 = ((v16 ^ 0x3F) & v19 | v16 & v18) - (((v16 ^ 0x3F) & v19 | v16 & v18) >> 1);
    v21 = 0uLL;
    v22 = v92;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    do
    {
      v26 = (((v15 ^ v20) - 1) & ~v20) >> 63;
      v14 |= *(v22 - 1) & v26;
      v13 |= *v22 & v26;
      v27 = v22[2];
      v12 |= v22[1] & v26;
      v28 = vdupq_n_s64(v26);
      v21 = vorrq_s8(vandq_s8(*(v22 - 5), v28), v21);
      v23 = vorrq_s8(vandq_s8(*(v22 - 3), v28), v23);
      v11 |= v27 & v26;
      v24 = vorrq_s8(vandq_s8(*(v22 + 3), v28), v24);
      v25 = vorrq_s8(vandq_s8(*(v22 + 5), v28), v25);
      ++v15;
      v22 += 12;
    }

    while (v15 != 17);
    *v75 = v21;
    v76 = v23;
    v79 = v24;
    v80 = v25;
    v30 = (__PAIR128__(127, (__PAIR128__(0x7FFFFFFFFFFFFF80, -256) - v12) >> 56) - v11) >> 64;
    v29 = ((__PAIR128__(0x7FFFFFFFFFFFFF80, -256) - v12) >> 56) - v11;
    v31 = v29 >= 0x100;
    v32 = v29 - 256;
    if (v31)
    {
      ++v30;
    }

    v33 = (-256 - v12) & 0xFFFFFFFFFFFFFFLL;
    *(&v35 + 1) = v30;
    *&v35 = v32;
    v34 = v35 >> 56;
    v36 = v32 & 0xFFFFFFFFFFFFFFLL;
    *(&v35 + 1) = v30;
    *&v35 = v32;
    v37 = (v35 >> 16) & 0xFFFF0000000000;
    v38 = v34 + v14;
    v39 = __CFADD__(v34, v14);
    v40 = v37 - __PAIR128__(v27, v13) + ((__PAIR128__(0x8000000000000001, 33024) - __PAIR128__(v39, v38)) >> 56) + __PAIR128__(0x7FFFFFFFFFFFFF80, 0xFF7EFFFFFFFFFF00);
    v41 = (33024 - v38) & 0xFFFFFFFFFFFFFFLL;
    v42 = v40 >> 56;
    v31 = __CFADD__(v42, v33);
    v43 = v42 + v33;
    if (v31)
    {
      v44 = HIBYTE(*(&v40 + 1)) + 1;
    }

    else
    {
      v44 = HIBYTE(*(&v40 + 1));
    }

    v81 = v41;
    v82 = v40 & 0xFFFFFFFFFFFFFFLL;
    *(&v45 + 1) = v44;
    *&v45 = v43;
    v83 = v43 & 0xFFFFFFFFFFFFFFLL;
    v84 = (v45 >> 56) + v36;
    v77.i64[0] = v41 & v19 | v14 & ~v19;
    v77.i64[1] = v40 & 0xFFFFFFFFFFFFFFLL & v19 | v13 & ~v19;
    *&v78 = v43 & 0xFFFFFFFFFFFFFFLL & v19 | v12 & ~v19;
    *(&v78 + 1) = v84 & v19 | v11 & ~v19;
    if (v6)
    {
      v6 = 0;
      v87 = v77;
      v88 = v78;
      v89 = v79;
      v90 = v80;
      *v85 = *v75;
      v86 = v76;
    }

    else
    {
      p224_point_add(v85, &v87, &v89, v85, &v87, &v89, 0, v75, &v77, &v79);
    }

LABEL_3:
    v7 = v8;
  }

  while (v8 < 0xDD);
  v46 = v86.i64[0];
  v47 = (v86.i64[0] & v86.i64[1] & (v85[1] | 0xFFFFFFFFFFLL)) + 1;
  v48 = ((v47 | ((v85[0] + (v85[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) == 0;
  v49 = v85[0] - HIBYTE(v86.i64[1]) + ((((v47 | ((v85[0] + (v85[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) - 1) >> 63);
  v50 = v49 + (v49 >> 63 << 56);
  v51 = 0xFFFFFFFFFFLL;
  if (((v47 | ((v85[0] + (v85[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) != 0)
  {
    v52 = -1;
  }

  else
  {
    v52 = 0xFFFFFFFFFFLL;
  }

  v53 = (v52 & (v85[1] + (HIBYTE(v86.i64[1]) << 40))) + (v49 >> 63);
  if (v48)
  {
    v46 = 0;
  }

  v54 = v46 + (v53 >> 56);
  v55 = v86.i64[1] & 0xFFFFFFFFFFFFFFLL;
  if (v48)
  {
    v55 = 0;
  }

  v56 = v55 + (v54 >> 56);
  *a2 = v50 | (v53 << 56);
  a2[1] = (v53 >> 8) & 0xFFFFFFFFFFFFLL | (v54 << 48);
  a2[2] = (v54 >> 16) & 0xFFFFFFFFFFLL | (v56 << 40);
  a2[3] = v56 >> 24;
  v57 = v88;
  v58 = (((v88 & *(&v88 + 1) & (v87.i64[1] | 0xFFFFFFFFFFLL)) + 1) | ((v87.i64[0] + (v87.i64[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL;
  if (v58)
  {
    v59 = *(&v88 + 1) & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    v59 = 0;
  }

  if (((((v88 & *(&v88 + 1) & (v87.i64[1] | 0xFFFFFFFFFFLL)) + 1) | ((v87.i64[0] + (v87.i64[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) != 0)
  {
    v60 = -1;
  }

  else
  {
    v57 = 0;
    v60 = 0xFFFFFFFFFFLL;
  }

  v61 = v87.i64[0] - HIBYTE(*(&v88 + 1)) + ((v58 - 1) >> 63);
  v62 = v61 + (v61 >> 63 << 56);
  v63 = (v60 & (v87.i64[1] + (HIBYTE(*(&v88 + 1)) << 40))) + (v61 >> 63);
  v64 = v57 + (v63 >> 56);
  v65 = v59 + (v64 >> 56);
  a2[9] = v62 | (v63 << 56);
  a2[10] = (v63 >> 8) & 0xFFFFFFFFFFFFLL | (v64 << 48);
  a2[11] = (v64 >> 16) & 0xFFFFFFFFFFLL | (v65 << 40);
  a2[12] = v65 >> 24;
  v66 = v90.i64[0];
  v67 = (v90.i64[0] & v90.i64[1] & (v89.i64[1] | 0xFFFFFFFFFFLL)) + 1;
  if (((v67 | ((v89.i64[0] + (v89.i64[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) != 0)
  {
    v68 = v90.i64[1] & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    v68 = 0;
  }

  if (((v67 | ((v89.i64[0] + (v89.i64[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) != 0)
  {
    v51 = -1;
  }

  else
  {
    v66 = 0;
  }

  v69 = v89.i64[0] - HIBYTE(v90.i64[1]) + ((((v67 | ((v89.i64[0] + (v89.i64[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) - 1) >> 63);
  v70 = v69 + (v69 >> 63 << 56);
  v71 = (v51 & (v89.i64[1] + (HIBYTE(v90.i64[1]) << 40))) + (v69 >> 63);
  v72 = v66 + (v71 >> 56);
  a2[18] = v70 | (v71 << 56);
  a2[19] = (v71 >> 8) & 0xFFFFFFFFFFFFLL | (v72 << 48);
  v73 = v72 >> 16;
  v74 = v68 + (v72 >> 56);
  a2[20] = v73 & 0xFFFFFFFFFFLL | (v74 << 40);
  a2[21] = v74 >> 24;
}

void ec_GFp_nistp224_point_mul_base(uint64_t a1, int64_t *a2, unint64_t *a3)
{
  v4 = 0;
  v71 = *MEMORY[0x277D85DE8];
  *v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v5 = a3[2];
  v58 = a3[3];
  v7 = *a3;
  v6 = a3[1];
  for (i = 27; i < 0x1C; --i)
  {
    if (v4)
    {
      p224_point_double(v65, &v67, &v69, v65, &v67, &v69);
    }

    v9 = 0;
    v10 = 0;
    v11 = 0uLL;
    v12 = &qword_273BA8918;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    do
    {
      v16 = ((v10 ^ ((v7 >> (i + 28)) & 1 | (8 * ((v58 >> (i + 4)) & 1)) | (4 * ((v5 >> (i + 12)) & 1)) | (2 * ((v6 >> (i + 20)) & 1)))) - 1) >> 63;
      v17 = vdupq_n_s64(v16);
      v11 = vorrq_s8(vandq_s8(*(v12 - 4), v17), v11);
      v13 = vorrq_s8(vandq_s8(*(v12 - 3), v17), v13);
      v14 = vorrq_s8(vandq_s8(*(v12 - 2), v17), v14);
      v15 = vorrq_s8(vandq_s8(*(v12 - 1), v17), v15);
      v18 = *v12;
      v12 += 12;
      v9 |= v18 & v16;
      ++v10;
    }

    while (v10 != 16);
    *v59 = v11;
    v60 = v13;
    v61 = v14;
    v62 = v15;
    v63 = v9;
    v64 = 0uLL;
    if (v4)
    {
      p224_point_add(v65, &v67, &v69, v65, &v67, &v69, 1, v59, &v61, &v63);
    }

    else
    {
      v67 = v61;
      v68 = v62;
      v69 = v63;
      v70 = v64;
      *v65 = *v59;
      v66 = v60;
    }

    v19 = 0;
    v20 = 0;
    v21 = 0uLL;
    v22 = &xmmword_273BA82F8;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    do
    {
      v26 = ((v20 ^ ((v7 >> i) & 1 | (8 * ((*(a3 + (((i + 168) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (i - 88)) & 1)) | (4 * ((*(a3 + (((i + 112) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (i + 112)) & 1)) | (2 * ((*(a3 + (((i + 56) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (i + 56)) & 1)))) - 1) >> 63;
      v27 = vdupq_n_s64(v26);
      v21 = vorrq_s8(vandq_s8(v22[-2], v27), v21);
      v23 = vorrq_s8(vandq_s8(v22[-1], v27), v23);
      v24 = vorrq_s8(vandq_s8(*v22, v27), v24);
      v25 = vorrq_s8(vandq_s8(v22[1], v27), v25);
      v19 |= v22[2].i64[0] & v26;
      ++v20;
      v22 += 6;
    }

    while (v20 != 16);
    *v59 = v21;
    v60 = v23;
    v61 = v24;
    v62 = v25;
    v63 = v19;
    v64 = 0uLL;
    v4 = 1;
    p224_point_add(v65, &v67, &v69, v65, &v67, &v69, 1, v59, &v61, &v63);
  }

  v28 = v66.i64[0];
  v29 = (v66.i64[0] & v66.i64[1] & (v65[1] | 0xFFFFFFFFFFLL)) + 1;
  v30 = ((v29 | ((v65[0] + (v65[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) == 0;
  v31 = v65[0] - HIBYTE(v66.i64[1]) + ((((v29 | ((v65[0] + (v65[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) - 1) >> 63);
  v32 = v31 + (v31 >> 63 << 56);
  v33 = 0xFFFFFFFFFFLL;
  if (((v29 | ((v65[0] + (v65[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) != 0)
  {
    v34 = -1;
  }

  else
  {
    v34 = 0xFFFFFFFFFFLL;
  }

  v35 = (v34 & (v65[1] + (HIBYTE(v66.i64[1]) << 40))) + (v31 >> 63);
  if (v30)
  {
    v28 = 0;
  }

  v36 = v28 + (v35 >> 56);
  v37 = v66.i64[1] & 0xFFFFFFFFFFFFFFLL;
  if (v30)
  {
    v37 = 0;
  }

  v38 = v37 + (v36 >> 56);
  *a2 = v32 | (v35 << 56);
  a2[1] = (v35 >> 8) & 0xFFFFFFFFFFFFLL | (v36 << 48);
  a2[2] = (v36 >> 16) & 0xFFFFFFFFFFLL | (v38 << 40);
  a2[3] = v38 >> 24;
  v39 = v68.i64[0];
  v40 = (((v68.i64[0] & v68.i64[1] & (v67.i64[1] | 0xFFFFFFFFFFLL)) + 1) | ((v67.i64[0] + (v67.i64[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL;
  if (v40)
  {
    v41 = v68.i64[1] & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    v41 = 0;
  }

  if (((((v68.i64[0] & v68.i64[1] & (v67.i64[1] | 0xFFFFFFFFFFLL)) + 1) | ((v67.i64[0] + (v67.i64[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) != 0)
  {
    v42 = -1;
  }

  else
  {
    v39 = 0;
    v42 = 0xFFFFFFFFFFLL;
  }

  v43 = v67.i64[0] - HIBYTE(v68.i64[1]) + ((v40 - 1) >> 63);
  v44 = v43 + (v43 >> 63 << 56);
  v45 = (v42 & (v67.i64[1] + (HIBYTE(v68.i64[1]) << 40))) + (v43 >> 63);
  v46 = v39 + (v45 >> 56);
  v47 = v41 + (v46 >> 56);
  a2[9] = v44 | (v45 << 56);
  a2[10] = (v45 >> 8) & 0xFFFFFFFFFFFFLL | (v46 << 48);
  a2[11] = (v46 >> 16) & 0xFFFFFFFFFFLL | (v47 << 40);
  a2[12] = v47 >> 24;
  v48 = v70;
  v49 = (v70 & *(&v70 + 1) & (v69.i64[1] | 0xFFFFFFFFFFLL)) + 1;
  if (((v49 | ((v69.i64[0] + (v69.i64[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) != 0)
  {
    v50 = *(&v70 + 1) & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    v50 = 0;
  }

  if (((v49 | ((v69.i64[0] + (v69.i64[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) != 0)
  {
    v33 = -1;
  }

  else
  {
    v48 = 0;
  }

  v51 = v69.i64[0] - HIBYTE(*(&v70 + 1)) + ((((v49 | ((v69.i64[0] + (v69.i64[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) - 1) >> 63);
  v52 = v51 + (v51 >> 63 << 56);
  v53 = (v33 & (v69.i64[1] + (HIBYTE(*(&v70 + 1)) << 40))) + (v51 >> 63);
  v54 = v48 + (v53 >> 56);
  a2[18] = v52 | (v53 << 56);
  a2[19] = (v53 >> 8) & 0xFFFFFFFFFFFFLL | (v54 << 48);
  v55 = v54 >> 16;
  v56 = v50 + (v54 >> 56);
  a2[20] = v55 & 0xFFFFFFFFFFLL | (v56 << 40);
  a2[21] = v56 >> 24;
}

void ec_GFp_nistp224_point_mul_public(uint64_t a1, int64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v84 = *MEMORY[0x277D85DE8];
  ec_GFp_nistp224_make_precomp(v83, a4);
  *v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v7 = 1;
  v8 = 220;
  do
  {
    if (v7)
    {
      if (v8 > 0x1B)
      {
        goto LABEL_2;
      }
    }

    else
    {
      p224_point_double(v77, &v79, &v81, v77, &v79, &v81);
      if (v8 > 0x1B)
      {
        goto LABEL_2;
      }
    }

    v12 = vandq_s8(vshlq_u64(vshlq_u64(*(a3 + 1), vsubq_s64(xmmword_273BA7170, vdupq_n_s64(v8))), xmmword_273B91FC0), xmmword_273BA7180);
    v13 = *a3;
    v14 = &g_p224_pre_comp[6 * (v12.i64[1] | (8 * ((a3[3] >> (v8 + 4)) & 1)) | v12.i64[0] | (*a3 >> (v8 + 28)) & 1)];
    p224_point_add(v77, &v79, &v81, v77, &v79, &v81, 1, v14 + 96, &v14[98], v14 + 100);
    v15 = &g_p224_pre_comp[6 * ((v13 >> v8) & 1 | (8 * ((*(a3 + (((v8 + 168) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 - 88)) & 1)) | (4 * ((*(a3 + (((v8 + 112) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 + 112)) & 1)) | (2 * ((*(a3 + (((v8 + 56) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 + 56)) & 1)))];
    p224_point_add(v77, &v79, &v81, v77, &v79, &v81, 1, v15, &v15[2], v15 + 4);
LABEL_2:
    if (-858993459 * v8 >= 0x33333334)
    {
      v9 = v8 - 1;
      goto LABEL_4;
    }

    if (v8 == 220)
    {
      v10 = 0;
      v9 = 219;
    }

    else
    {
      v10 = 32 * ((*(a5 + (((v8 + 4) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 + 4)) & 1);
      v9 = v8 - 1;
      if (v8 - 1 > 0xDF)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = (*(a5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9) & 1;
LABEL_15:
    v16 = (16 * ((*(a5 + (((v8 + 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 + 3)) & 1)) | (8 * ((*(a5 + (((v8 + 2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 + 2)) & 1)) | (4 * ((*(a5 + (((v8 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 + 1)) & 1)) | (2 * ((*(a5 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1)) | v11 | v10;
    v17 = v10 >> 5;
    v18 = v17 + 63;
    v19 = -v17;
    v20 = &v83[6 * (((v16 ^ 0x3F) & v19 | v16 & v18) - (((v16 ^ 0x3F) & v19 | v16 & v18) >> 1))];
    v21 = v20[3];
    v73 = v20[2];
    v74 = v21;
    v22 = v20[5];
    v75 = v20[4];
    v76 = v22;
    v23 = v20[1];
    *v71 = *v20;
    v72 = v23;
    if (v19)
    {
      v25 = (__PAIR128__(127, (__PAIR128__(0x7FFFFFFFFFFFFF80, -256) - v74.u64[0]) >> 56) - v74.u64[1]) >> 64;
      v24 = ((__PAIR128__(0x7FFFFFFFFFFFFF80, -256) - v74.u64[0]) >> 56) - v74.i64[1];
      v26 = v24 >= 0x100;
      v27 = v24 - 256;
      if (v26)
      {
        ++v25;
      }

      v28 = (-256 - v74.i64[0]) & 0xFFFFFFFFFFFFFFLL;
      *(&v30 + 1) = v25;
      *&v30 = v27;
      v29 = v30 >> 56;
      *(&v30 + 1) = v25;
      *&v30 = v27;
      v31 = v27 & 0xFFFFFFFFFFFFFFLL;
      v32 = (v30 >> 16) & 0xFFFF0000000000;
      v33 = v29 + v73.i64[0];
      v34 = __CFADD__(v29, v73.i64[0]);
      v35 = v32 - __PAIR128__(v32, v73.u64[1]) + ((__PAIR128__(0x8000000000000001, 33024) - __PAIR128__(v34, v33)) >> 56) + __PAIR128__(0x7FFFFFFFFFFFFF80, 0xFF7EFFFFFFFFFF00);
      v36 = (33024 - v33) & 0xFFFFFFFFFFFFFFLL;
      v37 = v35 >> 56;
      v38 = HIBYTE(*(&v35 + 1));
      v26 = __CFADD__(v37, v28);
      v39 = v37 + v28;
      if (v26)
      {
        ++v38;
      }

      v73.i64[0] = v36;
      v73.i64[1] = v35 & 0xFFFFFFFFFFFFFFLL;
      *(&v40 + 1) = v38;
      *&v40 = v39;
      v74.i64[0] = v39 & 0xFFFFFFFFFFFFFFLL;
      v74.i64[1] = (v40 >> 56) + v31;
    }

    if (v7)
    {
      v7 = 0;
      v79 = v73;
      v80 = v74;
      v81 = v75;
      v82 = v76;
      *v77 = *v71;
      v78 = v72;
    }

    else
    {
      p224_point_add(v77, &v79, &v81, v77, &v79, &v81, 0, v71, &v73, &v75);
    }

LABEL_4:
    v8 = v9;
  }

  while (v9 < 0xDD);
  v41 = v78.i64[0];
  v42 = (v78.i64[0] & v78.i64[1] & (v77[1] | 0xFFFFFFFFFFLL)) + 1;
  v43 = ((v42 | ((v77[0] + (v77[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) == 0;
  v44 = v77[0] - HIBYTE(v78.i64[1]) + ((((v42 | ((v77[0] + (v77[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) - 1) >> 63);
  v45 = v44 + (v44 >> 63 << 56);
  v46 = 0xFFFFFFFFFFLL;
  if (((v42 | ((v77[0] + (v77[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) != 0)
  {
    v47 = -1;
  }

  else
  {
    v47 = 0xFFFFFFFFFFLL;
  }

  v48 = (v47 & (v77[1] + (HIBYTE(v78.i64[1]) << 40))) + (v44 >> 63);
  if (v43)
  {
    v41 = 0;
  }

  v49 = v41 + (v48 >> 56);
  v50 = v78.i64[1] & 0xFFFFFFFFFFFFFFLL;
  if (v43)
  {
    v50 = 0;
  }

  v51 = v50 + (v49 >> 56);
  *a2 = v45 | (v48 << 56);
  a2[1] = (v48 >> 8) & 0xFFFFFFFFFFFFLL | (v49 << 48);
  a2[2] = (v49 >> 16) & 0xFFFFFFFFFFLL | (v51 << 40);
  a2[3] = v51 >> 24;
  v52 = v80.i64[0];
  v53 = (((v80.i64[0] & v80.i64[1] & (v79.i64[1] | 0xFFFFFFFFFFLL)) + 1) | ((v79.i64[0] + (v79.i64[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL;
  if (v53)
  {
    v54 = v80.i64[1] & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    v54 = 0;
  }

  if (((((v80.i64[0] & v80.i64[1] & (v79.i64[1] | 0xFFFFFFFFFFLL)) + 1) | ((v79.i64[0] + (v79.i64[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) != 0)
  {
    v55 = -1;
  }

  else
  {
    v52 = 0;
    v55 = 0xFFFFFFFFFFLL;
  }

  v56 = v79.i64[0] - HIBYTE(v80.i64[1]) + ((v53 - 1) >> 63);
  v57 = v56 + (v56 >> 63 << 56);
  v58 = (v55 & (v79.i64[1] + (HIBYTE(v80.i64[1]) << 40))) + (v56 >> 63);
  v59 = v52 + (v58 >> 56);
  v60 = v54 + (v59 >> 56);
  a2[9] = v57 | (v58 << 56);
  a2[10] = (v58 >> 8) & 0xFFFFFFFFFFFFLL | (v59 << 48);
  a2[11] = (v59 >> 16) & 0xFFFFFFFFFFLL | (v60 << 40);
  a2[12] = v60 >> 24;
  v61 = v82.i64[0];
  v62 = (v82.i64[0] & v82.i64[1] & (v81.i64[1] | 0xFFFFFFFFFFLL)) + 1;
  if (((v62 | ((v81.i64[0] + (v81.i64[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) != 0)
  {
    v63 = v82.i64[1] & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    v63 = 0;
  }

  if (((v62 | ((v81.i64[0] + (v81.i64[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) != 0)
  {
    v46 = -1;
  }

  else
  {
    v61 = 0;
  }

  v64 = v81.i64[0] - HIBYTE(v82.i64[1]) + ((((v62 | ((v81.i64[0] + (v81.i64[1] & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL) - 1) >> 63);
  v65 = v64 + (v64 >> 63 << 56);
  v66 = (v46 & (v81.i64[1] + (HIBYTE(v82.i64[1]) << 40))) + (v64 >> 63);
  v67 = v61 + (v66 >> 56);
  a2[18] = v65 | (v66 << 56);
  a2[19] = (v66 >> 8) & 0xFFFFFFFFFFFFLL | (v67 << 48);
  v68 = v67 >> 16;
  v69 = v63 + (v67 >> 56);
  a2[20] = v68 & 0xFFFFFFFFFFLL | (v69 << 40);
  a2[21] = v69 >> 24;
}

unint64_t ec_GFp_nistp224_felem_mul(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a3 & 0xFFFFFFFFFFFFFFLL;
  v5 = (*a3 >> 56) & 0xFFFFFFFFFFFFFFLL;
  v6 = (*(a3 + 8) >> 48) & 0xFFFFFFFFFFFFFFLL;
  v7 = (*(a3 + 16) >> 40) & 0xFFFFFFFFFFFFFFLL;
  v8 = *a4 & 0xFFFFFFFFFFFFFFLL;
  v9 = (*a4 >> 56) & 0xFFFFFFFFFFFFFFLL;
  v10 = (*(a4 + 8) >> 48) & 0xFFFFFFFFFFFFFFLL;
  v11 = *(a4 + 16);
  v12 = (v11 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v13 = (v8 * v4) >> 64;
  v14 = v8 * v4;
  v90 = ((*a4 >> 56) & 0xFFFFFFFFFFFFFFLL) * v4;
  v89 = (v8 * ((*a3 >> 56) & 0xFFFFFFFFFFFFFFLL)) >> 64;
  v15 = v8 * v5;
  v16 = (((*(a4 + 8) >> 48) & 0xFFFFFFFFFFFFFFLL) * v4) >> 64;
  v17 = v10 * v4;
  v18 = (((*a4 >> 56) & 0xFFFFFFFFFFFFFFLL) * ((*a3 >> 56) & 0xFFFFFFFFFFFFFFLL)) >> 64;
  v19 = v9 * v5;
  v20 = (v8 * ((*(a3 + 8) >> 48) & 0xFFFFFFFFFFFFFFLL)) >> 64;
  v21 = v8 * v6;
  v22 = (((v11 >> 40) & 0xFFFFFFFFFFFFFFLL) * v4) >> 64;
  v23 = v12 * v4;
  v24 = (((*(a4 + 8) >> 48) & 0xFFFFFFFFFFFFFFLL) * ((*a3 >> 56) & 0xFFFFFFFFFFFFFFLL)) >> 64;
  v25 = v10 * v5;
  v26 = (v9 * v6) >> 64;
  v27 = v9 * v6;
  v28 = (v7 * v8) >> 64;
  v29 = v7 * v8;
  v30 = (((v11 >> 40) & 0xFFFFFFFFFFFFFFLL) * v5) >> 64;
  v31 = v12 * v5;
  v32 = (v10 * v6) >> 64;
  v33 = v12 * v6 + v10 * v7;
  v34 = v10 * v6;
  v35 = (((v11 >> 40) & 0xFFFFFFFFFFFFFFLL) * v6 + v10 * v7) >> 64;
  v36 = (v9 * v7) >> 64;
  v37 = v9 * v7;
  v38 = v12 * v7;
  v39 = (((v11 >> 40) & 0xFFFFFFFFFFFFFFLL) * v7) >> 64;
  *(&v11 + 1) = v39;
  *&v11 = v38;
  v41 = v34 + v37 + v31;
  v40 = (__PAIR128__(v32, v34) + __PAIR128__(v36, v37) + __PAIR128__(v30, v31)) >> 64;
  result = v41 + (v11 >> 16);
  v43 = (__PAIR128__(v40, v41) + (v11 >> 16)) >> 64;
  v45 = (__PAIR128__(v20, v21) + __PAIR128__(v18, v19) + __PAIR128__(v16, v17) - __PAIR128__(v39, v38)) >> 64;
  v44 = v21 + v19 + v17 - v38;
  v46 = v33 << 40;
  v47 = __CFADD__(v44, v46);
  v48 = v44 + v46;
  *(&v11 + 1) = v43;
  *&v11 = result;
  v49 = v11 >> 16;
  if (v47)
  {
    ++v45;
  }

  v50 = ((__PAIR128__(v45, v48) + __PAIR128__(v43 >> 16, v49)) >> 64) + 0x7FFFFFFFFFFFFF80;
  v53 = __PAIR128__(v26, v27) + __PAIR128__(v28, v29) + __PAIR128__(v24, v25) + __PAIR128__(v22, v23);
  v51 = v53 >> 64;
  v52 = v53;
  v54 = v38 << 40;
  v47 = __CFADD__(v52, v54);
  v55 = v52 + v54;
  *(&v57 + 1) = v35;
  *&v57 = v33;
  v56 = v57 >> 16;
  if (v47)
  {
    ++v51;
  }

  v58 = __PAIR128__(v51, v55) + __PAIR128__(v35 >> 16, v56);
  *(&v59 + 1) = v50;
  *&v59 = v48 + v49;
  v60 = v55 + v56 + (v59 >> 56);
  *(&v59 + 1) = (v58 + (v59 >> 56)) >> 64;
  *&v59 = v60;
  v61 = __PAIR128__(v13, v14) - (__PAIR128__(v43, result) + (v59 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
  v63 = (__PAIR128__(v89, v15) + v90 - __PAIR128__(v35, v33)) >> 64;
  v62 = v15 + v90 - v33;
  v64 = result << 40;
  v47 = __CFADD__(v62, v64);
  v65 = v62 + v64;
  v66 = ((v48 + v49) & 0xFFFFFFFFFFFFFFLL) + (*(&v59 + 1) >> 8);
  *&v59 = v60;
  v67 = v60 & 0xFFFFFFFFFFFFFFLL;
  v68 = (v59 >> 16) & 0xFFFF0000000000;
  if (v47)
  {
    ++v63;
  }

  v47 = __CFADD__(v65, v68);
  v69 = v65 + v68;
  if (v47)
  {
    ++v63;
  }

  v70 = __PAIR128__(v63, v69) + (v61 >> 56) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v71 = v61 & 0xFFFFFFFFFFFFFFLL;
  v72 = v70 >> 56;
  v47 = __CFADD__(v66, v72);
  v73 = v66 + v72;
  if (v47)
  {
    v74 = HIBYTE(*(&v70 + 1)) + 1;
  }

  else
  {
    v74 = HIBYTE(*(&v70 + 1));
  }

  *(&v75 + 1) = v74;
  *&v75 = v73;
  v76 = (v75 >> 56) + v67;
  v77 = v71 - HIBYTE(v76);
  v79 = ((((v70 & 0xFFFF0000000000 | 0xFFFFFFFFFFLL) & v73 & v76) + 1) | ((v71 + (v70 & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL;
  v78 = v79 == 0;
  v80 = 0x1FFFFFFFFFFFFFFLL;
  if (!v79)
  {
    v80 = 0xFFFFFFFFFFLL;
  }

  v81 = v77 + ((v79 - 1) >> 63);
  v82 = v80 & ((v70 & 0xFFFFFFFFFFFFFFLL) + (HIBYTE(v76) << 40));
  v83 = v81 + (v81 >> 63 << 56);
  v84 = v82 + (v81 >> 63);
  v85 = v73 & 0xFFFFFFFFFFFFFFLL;
  if (v78)
  {
    v85 = 0;
  }

  v86 = v85 + (v84 >> 56);
  *a2 = v83 | (v84 << 56);
  a2[1] = (v84 >> 8) & 0xFFFFFFFFFFFFLL | (v86 << 48);
  v87 = v76 & 0xFFFFFFFFFFFFFFLL;
  if (v78)
  {
    v87 = 0;
  }

  v88 = v87 + (v86 >> 56);
  a2[2] = (v86 >> 16) & 0xFFFFFFFFFFLL | (v88 << 40);
  a2[3] = v88 >> 24;
  return result;
}

uint64_t ec_GFp_nistp224_felem_sqr(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a3 & 0xFFFFFFFFFFFFFFLL;
  v4 = (*a3 >> 56) & 0xFFFFFFFFFFFFFFLL;
  v5 = (*(a3 + 8) >> 48) & 0xFFFFFFFFFFFFFFLL;
  v6 = *(a3 + 16);
  v7 = (v6 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v8 = 2 * v3;
  v9 = (v3 * v3) >> 64;
  v10 = v3 * v3;
  v11 = (2 * v4 * v3) >> 64;
  v12 = 2 * v4 * v3;
  v13 = (2 * v5 * v3) >> 64;
  v14 = 2 * v5 * v3;
  v15 = v4 * v4;
  v16 = ((v6 >> 40) & 0xFFFFFFFFFFFFFFLL) * v8 + 2 * v5 * v4;
  v17 = ((v6 >> 40) & 0xFFFFFFFFFFFFFFLL) * 2 * v4 + v5 * v5;
  v18 = v7 * 2 * v5;
  v19 = (((v6 >> 40) & 0xFFFFFFFFFFFFFFLL) * (2 * v5)) >> 64;
  v20 = v7 * v7;
  v21 = (((v6 >> 40) & 0xFFFFFFFFFFFFFFLL) * ((v6 >> 40) & 0xFFFFFFFFFFFFFFLL)) >> 64;
  *(&v6 + 1) = v21;
  *&v6 = v20;
  v22 = v17 + (v6 >> 16);
  v23 = v20 << 40;
  *(&v6 + 1) = v19;
  *&v6 = v18;
  v24 = v6 >> 16;
  v25 = v19 >> 16;
  v26 = (v18 << 40) & 0xFFFE0000000000;
  v27 = (__PAIR128__(v11, v12) - __PAIR128__(v19, v18)) >> 64;
  v28 = v22 << 40;
  v29 = __CFADD__(v12 - v18, v28);
  v30 = v12 - v18 + v28;
  if (v29)
  {
    ++v27;
  }

  v32 = v15 + v14 - v20;
  v31 = (__PAIR128__(v13 + __CFADD__(v15, v14) + ((v4 * v4) >> 64), v15 + v14) - __PAIR128__(v21, v20)) >> 64;
  if (__CFADD__(v32, v26))
  {
    ++v31;
  }

  v33 = v32 + v26 + (v22 >> 16);
  v34 = ((__PAIR128__(v31, v32 + v26) + (v22 >> 16)) >> 64) + 0x7FFFFFFFFFFFFF80;
  v35 = HIBYTE(v34);
  *(&v37 + 1) = v34;
  *&v37 = v33;
  v36 = v37 >> 56;
  v38 = (v16 + __PAIR128__(v25, v24)) >> 64;
  v39 = v16 + v24 + v23;
  if (__CFADD__(v16 + v24, v23))
  {
    ++v38;
  }

  v40 = __PAIR128__(v38, v39) + __PAIR128__(v35, v36);
  v41 = ((__PAIR128__(v38, v39) + __PAIR128__(v35, v36)) >> 16) & 0xFFFF0000000000;
  v29 = __CFADD__(v30, v41);
  v42 = v30 + v41;
  if (v29)
  {
    ++v27;
  }

  result = HIBYTE(*(&v40 + 1));
  v44 = (v33 & 0xFFFFFFFFFFFFFFLL) + (*(&v40 + 1) >> 8);
  v45 = __PAIR128__(v9, v10) - (v22 + (v40 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
  v46 = (__PAIR128__(HIBYTE(*(&v45 + 1)) + __CFADD__(v42, (v45 >> 56)) + v27, v42 + (v45 >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64;
  v47 = v42 + (v45 >> 56) - 0x80000000000000;
  v48 = v45 & 0xFFFFFFFFFFFFFFLL;
  v49 = HIBYTE(v46);
  v50 = __PAIR128__(v46, v47) >> 56;
  v29 = __CFADD__(v44, v50);
  v51 = v44 + v50;
  if (v29)
  {
    v52 = v49 + 1;
  }

  else
  {
    v52 = v49;
  }

  *(&v53 + 1) = v52;
  *&v53 = v51;
  v54 = (v53 >> 56) + (v40 & 0xFFFFFFFFFFFFFFLL);
  v55 = v51 & 0xFFFFFFFFFFFFFFLL;
  v56 = v48 - HIBYTE(v54);
  v57 = (v47 & 0xFFFFFFFFFFFFFFLL) + (HIBYTE(v54) << 40);
  v58 = v54 & 0xFFFFFFFFFFFFFFLL;
  v60 = ((((v47 & 0xFFFF0000000000 | 0xFFFFFFFFFFLL) & v51 & v54) + 1) | ((v48 + (v47 & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL;
  v59 = v60 == 0;
  if (v60)
  {
    v61 = v55;
  }

  else
  {
    v61 = 0;
  }

  v62 = 0x1FFFFFFFFFFFFFFLL;
  if (!v60)
  {
    v62 = 0xFFFFFFFFFFLL;
  }

  v63 = v56 + ((v60 - 1) >> 63);
  v64 = v63 + (v63 >> 63 << 56);
  v65 = (v62 & v57) + (v63 >> 63);
  v66 = v61 + (v65 >> 56);
  if (v59)
  {
    v67 = 0;
  }

  else
  {
    v67 = v58;
  }

  v68 = v67 + (v66 >> 56);
  *a2 = v64 | (v65 << 56);
  a2[1] = (v65 >> 8) & 0xFFFFFFFFFFFFLL | (v66 << 48);
  a2[2] = (v66 >> 16) & 0xFFFFFFFFFFLL | (v68 << 40);
  a2[3] = v68 >> 24;
  return result;
}

int8x16_t p224_point_add(int8x16_t *a1, int8x16_t *a2, unint64_t *a3, int8x16_t *a4, unint64_t *a5, unint64_t *a6, int a7, int8x16_t *a8, const unint64_t *a9, int8x16_t *a10)
{
  v724 = a6;
  v10 = a9;
  if (a7)
  {
    v739 = a5[1];
    v740 = *a5;
    v743 = a5[3];
    v735 = a4->i64[1];
    v731 = a4->i64[0];
    v733 = a4[1].i64[0];
    v737 = a4[1].u64[1];
    v738 = a5[2];
  }

  else
  {
    v12 = a10->i64[0];
    v11 = a10->u64[1];
    v13 = a10[1].u64[0];
    v14 = a10[1].u64[1];
    v15 = v14 * (2 * a10->i64[0]) + 2 * v13 * v11;
    v16 = v14 * (2 * v11) + v13 * v13 + ((v14 * v14) >> 16);
    v17 = (v14 * v14) << 40;
    v18 = ((v14 * 2 * v13) << 40) & 0xFFFE0000000000;
    v19 = 2 * v11 * a10->u64[0] - v14 * (2 * v13);
    v20 = (v14 * 2 * v11 + v13 * v13 + ((v14 * v14) >> 16)) << 40;
    v21 = __CFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      v23 = *(&v19 + 1) + 1;
    }

    else
    {
      v23 = (2 * v11 * a10->u64[0] - v14 * (2 * v13)) >> 64;
    }

    v24 = v16 >> 16;
    v25 = (v11 * v11 + 2 * v13 * a10->u64[0] - v14 * v14) >> 64;
    v26 = v11 * v11 + 2 * v13 * a10->i64[0] - v14 * v14;
    v21 = __CFADD__(v26, v18);
    v27 = v26 + v18;
    if (v21)
    {
      ++v25;
    }

    v28 = ((__PAIR128__(v25, v27) + (v16 >> 16)) >> 64) + 0x7FFFFFFFFFFFFF80;
    v29 = HIBYTE(v28);
    *(&v31 + 1) = v28;
    *&v31 = v27 + v24;
    v30 = v31 >> 56;
    v32 = (v15 + ((v14 * (2 * v13)) >> 16)) >> 64;
    v33 = v15 + ((v14 * (2 * v13)) >> 16);
    v21 = __CFADD__(v33, v17);
    v34 = v33 + v17;
    if (v21)
    {
      ++v32;
    }

    v35 = __PAIR128__(v32, v34) + __PAIR128__(v29, v30);
    v36 = ((__PAIR128__(v32, v34) + __PAIR128__(v29, v30)) >> 16) & 0xFFFF0000000000;
    v21 = __CFADD__(v22, v36);
    v37 = v22 + v36;
    if (v21)
    {
      ++v23;
    }

    v38 = v12 * v12 - (v16 + (v35 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
    v39 = ((v27 + v24) & 0xFFFFFFFFFFFFFFLL) + (*(&v35 + 1) >> 8);
    v40 = __PAIR128__(v23, v37) + (v38 >> 56) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
    v41 = v40 >> 56;
    v21 = __CFADD__(v39, v41);
    v42 = v39 + v41;
    if (v21)
    {
      v43 = HIBYTE(*(&v40 + 1)) + 1;
    }

    else
    {
      v43 = HIBYTE(*(&v40 + 1));
    }

    *(&v44 + 1) = v43;
    *&v44 = v42;
    v45 = (v44 >> 56) + (v35 & 0xFFFFFFFFFFFFFFLL);
    v46 = v38 & 0xFFFFFFFFFFFFFFLL;
    v47 = ((v38 & 0xFFFFFFFFFFFFFFLL) * v12) >> 64;
    v48 = (v38 & 0xFFFFFFFFFFFFFFLL) * v12;
    v49 = ((v38 & 0xFFFFFFFFFFFFFFLL) * v11) >> 64;
    v50 = (v38 & 0xFFFFFFFFFFFFFFLL) * v11;
    v51 = v40 & 0xFFFFFFFFFFFFFFLL;
    v52 = ((v40 & 0xFFFFFFFFFFFFFFLL) * v12) >> 64;
    v53 = (v40 & 0xFFFFFFFFFFFFFFLL) * v12;
    v54 = ((v38 & 0xFFFFFFFFFFFFFFLL) * v13) >> 64;
    v55 = (v38 & 0xFFFFFFFFFFFFFFLL) * v13;
    v56 = v42 & 0xFFFFFFFFFFFFFFLL;
    v57 = (v56 * v12) >> 64;
    v58 = v56 * v13 + (v40 & 0xFFFFFFFFFFFFFFLL) * v14 + v45 * v11;
    v59 = v45 * v13 + v56 * v14;
    v60 = v45 * v14;
    v62 = v45 * v14;
    v61 = v62 >> 16;
    v21 = __CFADD__(v58, v61);
    v63 = v58 + v61;
    v64 = (*(&v62 + 1) >> 16) + v21 + *(&v58 + 1);
    v65 = ((v38 & 0xFFFFFFFFFFFFFFLL) * v14) >> 64;
    v66 = (v38 & 0xFFFFFFFFFFFFFFLL) * v14;
    v67 = ((v40 & 0xFFFFFFFFFFFFFFLL) * v13) >> 64;
    v68 = (v40 & 0xFFFFFFFFFFFFFFLL) * v13;
    v69 = __PAIR128__(v54, v55) + (v40 & 0xFFFFFFFFFFFFFFLL) * v11;
    v70 = (v56 * v11) >> 64;
    v71 = v56 * v11;
    v21 = __CFADD__(v69, v56 * v12);
    v72 = v69 + v56 * v12;
    v73 = (v45 * v12) >> 64;
    v74 = v45 * v12;
    v75 = v60 << 40;
    v76 = (__PAIR128__(v57 + v21 + *(&v69 + 1), v72) - __PAIR128__(*(&v62 + 1), v60)) >> 64;
    v77 = v59 << 40;
    v21 = __CFADD__(v72 - v60, v77);
    v78 = v72 - v60 + v77;
    *(&v62 + 1) = v64;
    *&v62 = v63;
    v79 = v62 >> 16;
    if (v21)
    {
      ++v76;
    }

    v80 = __PAIR128__(v76, v78) + __PAIR128__(v64 >> 16, v79);
    v21 = __CFADD__(v68, v66);
    v81 = v68 + v66;
    v82 = v63 << 40;
    v83 = (__PAIR128__(v76, v78) + __PAIR128__(v64 >> 16, v79) + __PAIR128__(0x7FFFFFFFFFFFFF80, 0)) >> 56;
    v85 = v81 + v71 + v74;
    v84 = (__PAIR128__(v65 + v21 + v67, v81) + __PAIR128__(v70, v71) + __PAIR128__(v73, v74)) >> 64;
    if (__CFADD__(v85, v75))
    {
      ++v84;
    }

    v86 = __PAIR128__(v84, v85 + v75) + (v59 >> 16) + __PAIR128__((*(&v80 + 1) + 0x7FFFFFFFFFFFFF80) >> 56, v83);
    v87 = (v80 & 0xFFFFFFFFFFFFFFLL) + (*(&v86 + 1) >> 8);
    v88 = (v86 >> 16) & 0xFFFF0000000000;
    v89 = __PAIR128__(v47, v48) - (__PAIR128__(v64, v63) + (v86 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
    v90 = v89 >> 56;
    v91 = HIBYTE(*(&v89 + 1));
    v92 = __PAIR128__(v49, v50) + __PAIR128__(v52, v53) - v59;
    v93 = v92 + v82;
    if (__CFADD__(v92, v82))
    {
      v94 = *(&v92 + 1) + 1;
    }

    else
    {
      v94 = (__PAIR128__(v49, v50) + __PAIR128__(v52, v53) - v59) >> 64;
    }

    v21 = __CFADD__(v93, v88);
    v95 = v93 + v88;
    if (v21)
    {
      v96 = v94 + 1;
    }

    else
    {
      v96 = v94;
    }

    v97 = __PAIR128__(v91 + __CFADD__(v95, v90) + v96, v95 + v90) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
    v98 = ((__PAIR128__(v91 + __CFADD__(v95, v90) + v96, v95 + v90) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64) >> 56;
    v99 = v97 >> 56;
    v21 = __CFADD__(v87, v99);
    v100 = v87 + v99;
    if (v21)
    {
      v101 = v98 + 1;
    }

    else
    {
      v101 = v98;
    }

    *(&v102 + 1) = v101;
    *&v102 = v100;
    v103 = (v102 >> 56) + (v86 & 0xFFFFFFFFFFFFFFLL);
    v104 = a5[1];
    v741 = (v89 & 0xFFFFFFFFFFFFFFLL) * v104;
    v105 = a5[2];
    v106 = a5[3];
    v107 = ((v97 & 0xFFFFFFFFFFFFFFLL) * v104) >> 64;
    v108 = (v97 & 0xFFFFFFFFFFFFFFLL) * v104;
    v109 = v100 & 0xFFFFFFFFFFFFFFLL;
    v110 = (v97 & 0xFFFFFFFFFFFFFFLL) * v105;
    v112 = (v109 * v105 + (v97 & 0xFFFFFFFFFFFFFFLL) * v106 + v103 * v104) >> 64;
    v111 = v109 * v105 + (v97 & 0xFFFFFFFFFFFFFFLL) * v106 + v103 * v104;
    v113 = v103 * v105 + v109 * v106;
    v114 = (v109 * v104) >> 64;
    v115 = v109 * v104;
    v116 = ((v89 & 0xFFFFFFFFFFFFFFLL) * v106) >> 64;
    v117 = (v89 & 0xFFFFFFFFFFFFFFLL) * v106;
    v118 = (v103 * *a5) >> 64;
    v119 = v103 * *a5;
    v120 = v103 * v106;
    v122 = v103 * v106;
    v121 = v122 >> 16;
    v21 = __CFADD__(v111, v121);
    v123 = v111 + v121;
    v124 = (*(&v122 + 1) >> 16) + v21 + v112;
    v125 = v120 << 40;
    v127 = ((v89 & 0xFFFFFFFFFFFFFFLL) * v105 + __PAIR128__(v107, v108) + v109 * *a5 - __PAIR128__(*(&v122 + 1), v120)) >> 64;
    v126 = (v89 & 0xFFFFFFFFFFFFFFLL) * v105 + v108 + v109 * *a5 - v120;
    v128 = v113 << 40;
    v21 = __CFADD__(v126, v128);
    v129 = v126 + v128;
    *(&v122 + 1) = v124;
    *&v122 = v123;
    v130 = v122 >> 16;
    if (v21)
    {
      ++v127;
    }

    v131 = __PAIR128__(v127, v129) + __PAIR128__(v124 >> 16, v130);
    v132 = v113 >> 16;
    v21 = __CFADD__(v110, v117);
    v133 = v110 + v117;
    v134 = v123 << 40;
    v135 = (*(&v131 + 1) + 0x7FFFFFFFFFFFFF80) >> 56;
    *(&v137 + 1) = *(&v131 + 1) + 0x7FFFFFFFFFFFFF80;
    *&v137 = v131;
    v136 = v137 >> 56;
    v139 = v133 + v115 + v119;
    v138 = (__PAIR128__(v116 + v21 + (((v97 & 0xFFFFFFFFFFFFFFLL) * v105) >> 64), v133) + __PAIR128__(v114, v115) + __PAIR128__(v118, v119)) >> 64;
    v140 = v139 + v125;
    if (__CFADD__(v139, v125))
    {
      ++v138;
    }

    v141 = (v140 + v132 + v136) & 0xFFFFFFFFFFFFFFLL;
    v142 = (v131 & 0xFFFFFFFFFFFFFFLL) + (((__PAIR128__((*(&v113 + 1) >> 16) + __CFADD__(v140, v132) + v138, v140 + v132) + __PAIR128__(v135, v136)) >> 64) >> 8);
    v143 = ((__PAIR128__((*(&v113 + 1) >> 16) + __CFADD__(v140, v132) + v138, v140 + v132) + __PAIR128__(v135, v136)) >> 16) & 0xFFFF0000000000;
    v144 = (v89 & 0xFFFFFFFFFFFFFFLL) * *a5 - (__PAIR128__(v124, v123) + ((__PAIR128__((*(&v113 + 1) >> 16) + __CFADD__(v140, v132) + v138, v140 + v132) + __PAIR128__(v135, v136)) >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
    v145 = (v741 + (v97 & 0xFFFFFFFFFFFFFFLL) * *a5 - v113) >> 64;
    v146 = v741 + (v97 & 0xFFFFFFFFFFFFFFLL) * *a5 - v113;
    v21 = __CFADD__(v146, v134);
    v147 = v146 + v134;
    if (v21)
    {
      ++v145;
    }

    v21 = __CFADD__(v147, v143);
    v148 = v147 + v143;
    if (v21)
    {
      v149 = v145 + 1;
    }

    else
    {
      v149 = v145;
    }

    v150 = v148 + (v144 >> 56) - 0x80000000000000;
    *(&v152 + 1) = __CFADD__(v148 + (v144 >> 56), 0xFF80000000000000) + ((__PAIR128__(v149, v148) + (v144 >> 56)) >> 64) + 0x7FFFFFFFFFFFFF7FLL;
    *&v152 = v150;
    v151 = v152 >> 56;
    v153 = HIBYTE(*(&v152 + 1));
    v154 = v142 + v151;
    if (__CFADD__(v142, v151))
    {
      v155 = v153 + 1;
    }

    else
    {
      v155 = v153;
    }

    *(&v156 + 1) = v155;
    *&v156 = v154;
    v743 = (v156 >> 56) + v141;
    v157 = a4->u64[1];
    v158 = (v46 * a4->u64[0]) >> 64;
    v742 = (v46 * v157) >> 64;
    v159 = v46 * v157;
    v160 = a4[1].u64[0];
    v161 = a4[1].u64[1];
    v162 = (v46 * v160) >> 64;
    v163 = v46 * v160;
    v164 = (v56 * a4->u64[0]) >> 64;
    v165 = (v51 * v160) >> 64;
    v166 = v51 * v160;
    v167 = v56 * v160 + v51 * v161 + v45 * v157;
    v168 = v45 * v160 + v56 * v161;
    v169 = (v56 * v157) >> 64;
    v170 = v56 * v157;
    v171 = v56 * a4->i64[0];
    v172 = v46 * a4->i64[0];
    v173 = (v46 * v161) >> 64;
    v174 = v46 * v161;
    v175 = v45 * v161;
    v176 = (v45 * v161) >> 64;
    *(&v156 + 1) = v176;
    *&v156 = v175;
    v177 = v167 + (v156 >> 16);
    v179 = v163 + v51 * v157 + v171 - v175;
    v178 = (__PAIR128__(v162, v163) + v51 * v157 + __PAIR128__(v164, v171) - __PAIR128__(v176, v175)) >> 64;
    v180 = v168 << 40;
    v21 = __CFADD__(v179, v180);
    v181 = v179 + v180;
    if (v21)
    {
      ++v178;
    }

    v182 = __PAIR128__(v178, v181) + (v177 >> 16);
    v183 = (__PAIR128__(v165, v166) + __PAIR128__(v173, v174)) >> 64;
    v184 = v166 + v174;
    v185 = v169 + __CFADD__(v184, v170) + v183;
    a6 = v724;
    v187 = v184 + v170 + v45 * a4->i64[0];
    v186 = (__PAIR128__(v185, v184 + v170) + v45 * a4->u64[0]) >> 64;
    v188 = v175 << 40;
    v21 = __CFADD__(v187, v188);
    v189 = v187 + v188;
    if (v21)
    {
      ++v186;
    }

    *(&v190 + 1) = *(&v182 + 1) + 0x7FFFFFFFFFFFFF80;
    *&v190 = v181 + (v177 >> 16);
    v191 = __PAIR128__((*(&v168 + 1) >> 16) + __CFADD__(v189, (v168 >> 16)) + v186, v189 + (v168 >> 16)) + (v190 >> 56);
    v192 = (__PAIR128__(v158, v172) - (v177 + (v191 >> 56))) >> 64;
    v10 = a9;
    v194 = __PAIR128__(v192, v172 - (v177 + (v191 >> 56))) + __PAIR128__(0x8000000000000000, 0x8000);
    v193 = (__PAIR128__(v192, v172 - (v177 + (v191 >> 56))) + __PAIR128__(0x8000000000000000, 0x8000)) >> 64;
    v196 = (__PAIR128__(v742, v159) + v51 * a4->u64[0] - v168) >> 64;
    v195 = v159 + v51 * a4->i64[0] - v168;
    v197 = v177 << 40;
    v21 = __CFADD__(v195, v197);
    v198 = v195 + v197;
    v199 = (v182 & 0xFFFFFFFFFFFFFFLL) + (*(&v191 + 1) >> 8);
    v200 = (v191 >> 16) & 0xFFFF0000000000;
    if (v21)
    {
      ++v196;
    }

    v21 = __CFADD__(v198, v200);
    v201 = v198 + v200;
    *(&v203 + 1) = v193;
    *&v203 = v194;
    v202 = v203 >> 56;
    if (v21)
    {
      ++v196;
    }

    v205 = (__PAIR128__(HIBYTE(v193) + __CFADD__(v201, v202) + v196, v201 + v202) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64;
    v204 = v201 + v202 - 0x80000000000000;
    v206 = __PAIR128__(v205, v204) >> 56;
    v21 = __CFADD__(v199, v206);
    v207 = v199 + v206;
    v208 = HIBYTE(v205);
    if (v21)
    {
      ++v208;
    }

    *(&v209 + 1) = v208;
    *&v209 = v207;
    v737 = (v209 >> 56) + (v191 & 0xFFFFFFFFFFFFFFLL);
    v739 = v150 & 0xFFFFFFFFFFFFFFLL;
    v740 = v144 & 0xFFFFFFFFFFFFFFLL;
    v738 = v154 & 0xFFFFFFFFFFFFFFLL;
    v735 = v204 & 0xFFFFFFFFFFFFFFLL;
    v731 = v194 & 0xFFFFFFFFFFFFFFLL;
    v733 = v207 & 0xFFFFFFFFFFFFFFLL;
  }

  v211 = *a6;
  v210 = a6[1];
  v212 = a6[2];
  v213 = a6[3];
  v214 = v213 * (2 * *a6) + 2 * v212 * v210;
  v215 = v213 * (2 * v210) + v212 * v212 + ((v213 * v213) >> 16);
  v216 = (v213 * v213) << 40;
  v217 = ((v213 * 2 * v212) << 40) & 0xFFFE0000000000;
  v218 = (2 * v210 * *a6 - v213 * (2 * v212)) >> 64;
  v219 = 2 * v210 * *a6 - v213 * 2 * v212;
  v220 = (v213 * 2 * v210 + v212 * v212 + ((v213 * v213) >> 16)) << 40;
  v21 = __CFADD__(v219, v220);
  v221 = v219 + v220;
  if (v21)
  {
    ++v218;
  }

  v222 = v215 >> 16;
  v223 = (v210 * v210 + 2 * v212 * *a6 - v213 * v213) >> 64;
  v224 = v210 * v210 + 2 * v212 * *a6 - v213 * v213;
  v21 = __CFADD__(v224, v217);
  v225 = v224 + v217;
  if (v21)
  {
    ++v223;
  }

  v226 = ((__PAIR128__(v223, v225) + (v215 >> 16)) >> 64) + 0x7FFFFFFFFFFFFF80;
  v227 = HIBYTE(v226);
  *(&v229 + 1) = v226;
  *&v229 = v225 + v222;
  v228 = v229 >> 56;
  v230 = (v214 + ((v213 * (2 * v212)) >> 16)) >> 64;
  v231 = v214 + ((v213 * (2 * v212)) >> 16);
  v21 = __CFADD__(v231, v216);
  v232 = v231 + v216;
  if (v21)
  {
    ++v230;
  }

  v233 = __PAIR128__(v230, v232) + __PAIR128__(v227, v228);
  v234 = ((__PAIR128__(v230, v232) + __PAIR128__(v227, v228)) >> 16) & 0xFFFF0000000000;
  v21 = __CFADD__(v221, v234);
  v235 = v221 + v234;
  if (v21)
  {
    ++v218;
  }

  v236 = ((v225 + v222) & 0xFFFFFFFFFFFFFFLL) + (*(&v233 + 1) >> 8);
  v237 = v211 * v211 - (v215 + (v233 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
  v238 = __PAIR128__(v218, v235) + (v237 >> 56) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v239 = v238 >> 56;
  v240 = v236 + v239;
  if (__CFADD__(v236, v239))
  {
    v241 = HIBYTE(*(&v238 + 1)) + 1;
  }

  else
  {
    v241 = HIBYTE(*(&v238 + 1));
  }

  *(&v242 + 1) = v241;
  *&v242 = v240;
  v243 = (v242 >> 56) + (v233 & 0xFFFFFFFFFFFFFFLL);
  v244 = v237 & 0xFFFFFFFFFFFFFFLL;
  v245 = v238 & 0xFFFFFFFFFFFFFFLL;
  v246 = v240 & 0xFFFFFFFFFFFFFFLL;
  v247 = v243 * v212 + (v240 & 0xFFFFFFFFFFFFFFLL) * v213;
  v249 = ((v240 & 0xFFFFFFFFFFFFFFLL) * v212 + (v238 & 0xFFFFFFFFFFFFFFLL) * v213 + v243 * v210 + ((v243 * v213) >> 16)) >> 64;
  v248 = (v240 & 0xFFFFFFFFFFFFFFLL) * v212 + (v238 & 0xFFFFFFFFFFFFFFLL) * v213 + v243 * v210 + ((v243 * v213) >> 16);
  v251 = ((v237 & 0xFFFFFFFFFFFFFFLL) * v212 + (v238 & 0xFFFFFFFFFFFFFFLL) * v210 + (v240 & 0xFFFFFFFFFFFFFFLL) * v211 - v243 * v213) >> 64;
  v250 = (v237 & 0xFFFFFFFFFFFFFFLL) * v212 + (v238 & 0xFFFFFFFFFFFFFFLL) * v210 + (v240 & 0xFFFFFFFFFFFFFFLL) * v211 - v243 * v213;
  v252 = (((v242 >> 56) + v233) * v212 + v246 * v213) << 40;
  v21 = __CFADD__(v250, v252);
  v253 = v250 + v252;
  if (v21)
  {
    ++v251;
  }

  v254 = __PAIR128__(v251, v253) + (__PAIR128__(v249, v248) >> 16);
  v729 = v210;
  v730 = v212;
  v256 = (v245 * v212 + v244 * v213 + v246 * v210) >> 64;
  v255 = v245 * v212 + v244 * v213 + v246 * v210;
  v257 = (v243 * v213) << 40;
  v259 = __PAIR128__(v256, v255) + v243 * v211;
  v258 = *(&v259 + 1);
  v260 = v259 + v257;
  if (__CFADD__(v259, v257))
  {
    v258 = *(&v259 + 1) + 1;
  }

  v261 = v248 << 40;
  *(&v262 + 1) = *(&v254 + 1) + 0x7FFFFFFFFFFFFF80;
  *&v262 = v254;
  v263 = __PAIR128__(v258, v260) + (v247 >> 16) + (v262 >> 56);
  v264 = (v254 & 0xFFFFFFFFFFFFFFLL) + (*(&v263 + 1) >> 8);
  v265 = (v263 >> 16) & 0xFFFF0000000000;
  v267 = ((v237 & 0xFFFFFFFFFFFFFFLL) * v211 - (__PAIR128__(v249, v248) + (v263 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 64;
  v266 = (v237 & 0xFFFFFFFFFFFFFFLL) * v211 - (v248 + (v263 >> 56)) + 0x8000;
  v268 = HIBYTE(v267);
  v269 = __PAIR128__(v267, v266) >> 56;
  v271 = (v237 & 0xFFFFFFFFFFFFFFLL) * v210 + (v238 & 0xFFFFFFFFFFFFFFLL) * v211 - v247;
  v270 = *(&v271 + 1);
  v272 = v271 + v261;
  if (__CFADD__(v271, v261))
  {
    v270 = *(&v271 + 1) + 1;
  }

  v21 = __CFADD__(v272, v265);
  v273 = v272 + v265;
  if (v21)
  {
    ++v270;
  }

  v274 = v273 + v269 - 0x80000000000000;
  *(&v276 + 1) = __CFADD__(v273 + v269, 0xFF80000000000000) + ((__PAIR128__(v270, v273) + __PAIR128__(v268, v269)) >> 64) + 0x7FFFFFFFFFFFFF7FLL;
  *&v276 = v274;
  v275 = v276 >> 56;
  v277 = HIBYTE(*(&v276 + 1));
  v21 = __CFADD__(v264, v275);
  v278 = v264 + v275;
  if (v21)
  {
    ++v277;
  }

  *(&v279 + 1) = v277;
  *&v279 = v278;
  v280 = (v279 >> 56) + (v263 & 0xFFFFFFFFFFFFFFLL);
  v281 = *v10;
  v282 = *(v10 + 1);
  v283 = *v10;
  v717 = ((v274 & 0xFFFFFFFFFFFFFFLL) * *v10) >> 64;
  v719 = ((v266 & 0xFFFFFFFFFFFFFFLL) * v10[1]) >> 64;
  v714 = (v274 & 0xFFFFFFFFFFFFFFLL) * *v10;
  v716 = (v266 & 0xFFFFFFFFFFFFFFLL) * v10[1];
  v284 = (v278 & 0xFFFFFFFFFFFFFFLL) * v282.u64[0] + (v274 & 0xFFFFFFFFFFFFFFLL) * v282.u64[1] + v280 * v10[1];
  v285 = v280 * v282.u64[0] + (v278 & 0xFFFFFFFFFFFFFFLL) * v282.u64[1];
  v286 = ((v279 >> 56) + v263) * v282.i16[4];
  v287 = v284 + ((v280 * v282.u64[1]) >> 16);
  v289 = ((v266 & 0xFFFFFFFFFFFFFFLL) * v282.u64[0] - v738 + (v274 & 0xFFFFFFFFFFFFFFLL) * v10[1] + (v278 & 0xFFFFFFFFFFFFFFLL) * *v10 - v280 * v282.u64[1]) >> 64;
  v288 = (v266 & 0xFFFFFFFFFFFFFFLL) * v282.i64[0] - v738 + (v274 & 0xFFFFFFFFFFFFFFLL) * v10[1] + (v278 & 0xFFFFFFFFFFFFFFLL) * *v10 - v280 * v282.i64[1];
  v290 = (((v279 >> 56) + v263) * v282.i16[0] + v278 * v282.i16[4]) << 40;
  v21 = __CFADD__(v288, v290);
  v291 = v288 + v290;
  if (v21)
  {
    ++v289;
  }

  v292 = __PAIR128__(v289, v291) + (v287 >> 16);
  v293 = v286 << 40;
  v294 = (v284 + ((v280 * v282.i32[2]) >> 16)) << 40;
  v296 = (v266 & 0xFFFFFFFFFFFFFFLL) * v282.u64[1] - v743 + (v274 & 0xFFFFFFFFFFFFFFLL) * v282.u64[0] + (v278 & 0xFFFFFFFFFFFFFFLL) * v283.u64[1] + v280 * v283.u64[0];
  v295 = *(&v296 + 1);
  *(&v298 + 1) = (v292 >= 0x100) + *(&v292 + 1) + 0x7FFFFFFFFFFFFF80;
  *&v298 = v292 - 256;
  v297 = v298 >> 56;
  v21 = __CFADD__(v296, v293);
  v299 = v296 + v293;
  if (v21)
  {
    v295 = *(&v296 + 1) + 1;
  }

  v301 = v299 + (v285 >> 16) + v297;
  v300 = (__PAIR128__(v295, v299) + (v285 >> 16) + __PAIR128__(((v292 >= 0x100) + *(&v292 + 1) + 0x7FFFFFFFFFFFFF80) >> 56, v297)) >> 64;
  if (v301 >= 0x100)
  {
    ++v300;
  }

  v302 = HIBYTE(v300);
  *(&v304 + 1) = v300;
  *&v304 = v301 - 256;
  v303 = v304 >> 56;
  v305 = ((v292 - 256) & 0xFFFFFFFFFFFFFFLL) + (v300 >> 8);
  *(&v304 + 1) = v300;
  *&v304 = v301 - 256;
  v306 = (v304 >> 16) & 0xFFFF0000000000;
  if (__CFADD__(v287, v740))
  {
    v307 = *(&v287 + 1) + 1;
  }

  else
  {
    v307 = (v284 + ((v280 * v282.u64[1]) >> 16)) >> 64;
  }

  v308 = (v266 & 0xFFFFFFFFFFFFFFLL) * v283.u64[0] - (__PAIR128__(v307, v287 + v740) + __PAIR128__(v302, v303)) + __PAIR128__(0x8000000000000001, 33024);
  v309 = v308 >> 56;
  v310 = (__PAIR128__(v717 + __CFADD__(v716 - v739, v714) + ((__PAIR128__(v719, v716) - v739) >> 64), v716 - v739 + v714) - v285) >> 64;
  v311 = v716 - v739 + v714 - v285 + v294;
  if (__CFADD__(v716 - v739 + v714 - v285, v294))
  {
    ++v310;
  }

  v21 = __CFADD__(v311, v306);
  v312 = v311 + v306;
  if (v21)
  {
    v313 = v310 + 1;
  }

  else
  {
    v313 = v310;
  }

  v315 = v312 + v309 - 0x81000000000100;
  v314 = (__PAIR128__(HIBYTE(*(&v308 + 1)) + __CFADD__(v312, v309) + v313, v312 + v309) + __PAIR128__(0x7FFFFFFFFFFFFF80, 0xFF7EFFFFFFFFFF00)) >> 64;
  v316 = HIBYTE(v314);
  v317 = __PAIR128__(v314, v315) >> 56;
  v318 = v305 + v317;
  if (__CFADD__(v305, v317))
  {
    v319 = v316 + 1;
  }

  else
  {
    v319 = v316;
  }

  *(&v320 + 1) = v319;
  *&v320 = v318;
  v321 = (v320 >> 56) + ((v301 - 256) & 0xFFFFFFFFFFFFFFLL);
  v322 = *a8;
  v323 = a8[1];
  v324 = *a8;
  v325 = a8[1].u64[0];
  v326 = a8[1].u64[1];
  v327 = v243 * v325 + v246 * v326;
  v328 = v243 * v326;
  v329 = (v243 * v326) >> 64;
  v331 = (v246 * v325 + v245 * v326 + v243 * a8->u64[1] + ((v243 * v326) >> 16)) >> 64;
  v330 = v246 * v325 + v245 * v326 + v243 * a8->i64[1] + ((v243 * v326) >> 16);
  v332 = (v244 * v326) >> 64;
  v333 = v244 * v326;
  v335 = (v244 * v325 - v733 + v245 * a8->u64[1] + v246 * a8->u64[0] - __PAIR128__(v329, v328)) >> 64;
  v334 = v244 * v325 - v733 + v245 * a8->i64[1] + v246 * a8->i64[0] - v328;
  v336 = v327 << 40;
  v21 = __CFADD__(v334, v336);
  v337 = v334 + v336;
  if (v21)
  {
    ++v335;
  }

  v338 = __PAIR128__(v335, v337) + (__PAIR128__(v331, v330) >> 16);
  v340 = v333 - v737 + v245 * v325 + v246 * v324.i64[1];
  v339 = (__PAIR128__(v332, v333) - v737 + v245 * v325 + v246 * v324.u64[1]) >> 64;
  v341 = (v244 * v324.u64[0]) >> 64;
  v343 = __PAIR128__(v339, v340) + v243 * v324.u64[0];
  v342 = *(&v343 + 1);
  v344 = (v244 * v324.u64[1]) >> 64;
  v345 = v244 * v324.i64[1];
  v346 = v244 * v324.i64[0];
  v347 = v328 << 40;
  v348 = v343 + v347;
  if (__CFADD__(v343, v347))
  {
    v342 = *(&v343 + 1) + 1;
  }

  v349 = v348 + (v327 >> 16);
  *(&v351 + 1) = (v338 >= 0x100) + *(&v338 + 1) + 0x7FFFFFFFFFFFFF80;
  *&v351 = v338 - 256;
  v350 = v351 >> 56;
  v352 = (v245 * v324.u64[0]) >> 64;
  v353 = HIBYTE(*(&v351 + 1)) + __CFADD__(v349, v350) + ((__PAIR128__(v342, v348) + (v327 >> 16)) >> 64);
  if ((v349 + v350) >= 0x100)
  {
    ++v353;
  }

  *(&v355 + 1) = v353;
  *&v355 = v349 + v350 - 256;
  v354 = v355 >> 56;
  v356 = v245 * v324.i64[0];
  if (__CFADD__(v330, v731))
  {
    ++v331;
  }

  v358 = v330 + v731 + v354;
  v357 = (__PAIR128__(HIBYTE(v353), v330 + v731) + __PAIR128__(v331, v354)) >> 64;
  v359 = v330 << 40;
  v360 = v346 - v358 + 33024;
  *(&v362 + 1) = v353;
  *&v362 = v349 + v350 - 256;
  v363 = (v362 >> 16) & 0xFFFF0000000000;
  v364 = ((__PAIR128__(v341, v346) - __PAIR128__(v357, v358) + __PAIR128__(0x8000000000000001, 33024)) >> 64) >> 56;
  v366 = __PAIR128__(v341, v346) - __PAIR128__(v357, v358) + __PAIR128__(0x8000000000000001, 33024);
  v361 = ((v338 - 256) & 0xFFFFFFFFFFFFFFLL) + (v363 >> 8);
  v365 = v366 >> 56;
  v368 = (__PAIR128__(v344, v345) - v735 + __PAIR128__(v352, v356) - v327) >> 64;
  v367 = v345 - v735 + v356 - v327;
  v21 = __CFADD__(v367, v359);
  v369 = v367 + v359;
  if (v21)
  {
    ++v368;
  }

  v21 = __CFADD__(v369, v363);
  v370 = v369 + v363;
  if (v21)
  {
    ++v368;
  }

  v371 = __PAIR128__(v368, v370) + __PAIR128__(v364, v365) + __PAIR128__(0x7FFFFFFFFFFFFF80, 0xFF7EFFFFFFFFFF00);
  v372 = v360 & 0xFFFFFFFFFFFFFFLL;
  v373 = v371 >> 56;
  v21 = __CFADD__(v361, v373);
  v374 = v361 + v373;
  v375 = v211;
  if (v21)
  {
    v376 = HIBYTE(*(&v371 + 1)) + 1;
  }

  else
  {
    v376 = HIBYTE(*(&v371 + 1));
  }

  v377 = v371 & 0xFFFFFFFFFFFFFFLL;
  *(&v378 + 1) = v376;
  *&v378 = v374;
  v379 = (v378 >> 56) + ((v349 + v350 - 256) & 0xFFFFFFFFFFFFFFLL);
  v380.i64[0] = v371 & 0xFFFFFFFFFFFFFFLL;
  v380.i64[1] = v729;
  v381.i64[0] = v360 & 0xFFFFFFFFFFFFFFLL;
  v381.i64[1] = v211;
  v382.i64[0] = v374 & 0xFFFFFFFFFFFFFFLL;
  v382.i64[1] = v730;
  v383.i64[0] = v379;
  v383.i64[1] = v213;
  v384.i64[0] = -1;
  v384.i64[1] = -1;
  v385 = vaddq_s64(vorrq_s8(vorrq_s8(vorrq_s8(v380, v381), v382), v383), v384);
  v381.i64[0] = v371 & 0xFFFFFFFFFFFFFFLL;
  v380.i64[0] = v360 & 0xFFFFFFFFFFFFFFLL;
  v386.i64[0] = 0xFFFFFFFFFFFFFFLL;
  v386.i64[1] = 0xFFFFFFFFFFFFFFLL;
  v387 = veorq_s8(v382, v386);
  v388 = vorrq_s8(vorrq_s8(vaddq_s64(vorrq_s8(vorrq_s8(veorq_s8(v380, xmmword_273BA71A0), vorrq_s8(veorq_s8(v381, xmmword_273BA7190), veorq_s8(v383, v386))), v387), v384), v385), vaddq_s64(vorrq_s8(vorrq_s8(veorq_s8(v380, xmmword_273BA71C0), vorrq_s8(veorq_s8(v381, xmmword_273BA71B0), veorq_s8(v383, vdupq_n_s64(0x1FFFFFFFFFFFFFFuLL)))), v387), v384));
  v390 = a10[1].u64[0];
  v389 = a10[1].u64[1];
  v391 = a10->u64[1];
  v392 = veorq_s8(*a10, xmmword_273BA71D0);
  v393 = a10->i64[0];
  v394 = vaddq_s64(vorrq_s8(vorrq_s8(vorrq_s8(veorq_s8(*a10, xmmword_273BA71E0), vextq_s8(v392, v392, 8uLL)), vdupq_n_s64(v390 ^ 0xFFFFFFFFFFFFFFLL)), veorq_s8(vdupq_n_s64(v389), xmmword_273BA71F0)), v384);
  v395 = v394.i64[0] | ((v391 | a10->i64[0] | v390 | v389) - 1) | v394.i64[1];
  v396 = (v388.i64[0] & ~v388.i64[1] & (((v315 & 0xFFFFFFFFFFFFFFLL ^ 0xFFFF0000000000 | v308 & 0xFFFFFFFFFFFFFFLL ^ 1 | v318 & 0xFFFFFFFFFFFFFFLL ^ 0xFFFFFFFFFFFFFFuLL | v321 ^ 0xFFFFFFFFFFFFFFLL) - 1) | ((v315 & 0xFFFFFFFFFFFFFFLL | v308 & 0xFFFFFFFFFFFFFFLL | v318 & 0xFFFFFFFFFFFFFFLL | v321) - 1) | ((v315 & 0xFFFFFFFFFFFFFFLL ^ 0xFFFE0000000000 | v308 & 0xFFFFFFFFFFFFFFLL ^ 2 | v318 & 0xFFFFFFFFFFFFFFLL ^ 0xFFFFFFFFFFFFFFuLL | v321 ^ 0x1FFFFFFFFFFFFFFLL) - 1))) >> 63;
  if (v395 < 0)
  {
    v396 = 0;
  }

  if (v396)
  {

    p224_point_double(a1, a2, a3, a4, a5, v724);
  }

  else
  {
    v701 = v374 & 0xFFFFFFFFFFFFFFLL;
    v704 = v315 & 0xFFFFFFFFFFFFFFLL;
    v706 = v318 & 0xFFFFFFFFFFFFFFLL;
    v708 = a10[1].u64[0];
    v711 = v213;
    v720 = a10->i64[0];
    v722 = v388.i64[1] >> 63;
    v723 = v395 >> 63;
    v725 = v321;
    v718 = a10->u64[1];
    v709 = a10[1].u64[1];
    v710 = v375;
    if (a7)
    {
      v398 = v213;
      v399 = v730;
      v400 = v729;
      v401 = v375;
    }

    else
    {
      v402 = (v393 * v375) >> 64;
      v403 = (v390 * v375) >> 64;
      v404 = v375;
      v405 = v389 * v730 + v390 * v213;
      v407 = (v390 * v730 + v391 * v213 + v389 * v729 + ((v389 * v213) >> 16)) >> 64;
      v406 = v390 * v730 + v391 * v213 + v389 * v729 + ((v389 * v213) >> 16);
      v408 = v393 * v730 + v391 * v729;
      v409 = (v391 * v730) >> 64;
      v410 = v391 * v730;
      v411 = __PAIR128__(v403 + __CFADD__(v408, v390 * v404) + *(&v408 + 1), v408 + v390 * v404) - v389 * v213;
      v412 = (v389 * v730 + v390 * v213) << 40;
      v21 = __CFADD__(v411, v412);
      v413 = v411 + v412;
      v414 = (v390 * v730 + v391 * v213 + v389 * v729 + ((v389 * v213) >> 16)) >> 16;
      if (v21)
      {
        v415 = *(&v411 + 1) + 1;
      }

      else
      {
        v415 = (__PAIR128__(v403 + __CFADD__(v408, v390 * v404) + *(&v408 + 1), v408 + v390 * v404) - v389 * v213) >> 64;
      }

      v416 = v413 + v414;
      v417 = (v407 >> 16) + __CFADD__(v413, v414) + v415 + 0x7FFFFFFFFFFFFF80;
      v418 = (v389 * v213) << 40;
      v420 = __PAIR128__(v409, v410) + v393 * v213 + v390 * v729 + v389 * v404;
      v419 = *(&v420 + 1);
      if (__CFADD__(v420, v418))
      {
        v419 = *(&v420 + 1) + 1;
      }

      *(&v421 + 1) = v417;
      *&v421 = v416;
      v422 = __PAIR128__(v419, v420 + v418) + (v405 >> 16) + (v421 >> 56);
      v423 = __PAIR128__(v402, v393 * v404) - (__PAIR128__(v407, v406) + (v422 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
      v425 = (v393 * v729 + a10->u64[1] * v404 - v405) >> 64;
      v424 = v393 * v729 + a10->i64[1] * v404 - v405;
      v426 = v406 << 40;
      v427 = (v422 >> 16) & 0xFFFF0000000000;
      v21 = __CFADD__(v424, v426);
      v428 = v424 + v426;
      if (v21)
      {
        ++v425;
      }

      v21 = __CFADD__(v428, v427);
      v429 = v428 + v427;
      if (v21)
      {
        ++v425;
      }

      v431 = (__PAIR128__(HIBYTE(*(&v423 + 1)) + __CFADD__(v429, (v423 >> 56)) + v425, v429 + (v423 >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64;
      v430 = v429 + (v423 >> 56) - 0x80000000000000;
      v432 = __PAIR128__(v431, v430) >> 56;
      v433 = (v416 & 0xFFFFFFFFFFFFFFLL) + (*(&v422 + 1) >> 8);
      v360 = v346 - v358 + 33024;
      v21 = __CFADD__(v433, v432);
      v434 = v433 + v432;
      v435 = HIBYTE(v431);
      if (v21)
      {
        ++v435;
      }

      *(&v436 + 1) = v435;
      *&v436 = v434;
      v398 = (v436 >> 56) + (v422 & 0xFFFFFFFFFFFFFFLL);
      v401 = v423 & 0xFFFFFFFFFFFFFFLL;
      v400 = v430 & 0xFFFFFFFFFFFFFFLL;
      v399 = v434 & 0xFFFFFFFFFFFFFFLL;
    }

    v437 = v360 & 0xFFFFFFFFFFFFFFLL;
    v438 = v371 & 0xFFFFFFFFFFFFFFLL;
    v439 = v374 & 0xFFFFFFFFFFFFFFLL;
    v440 = v399 * v379 + v398 * (v374 & 0xFFFFFFFFFFFFFFLL);
    v441 = v398 * v379;
    v442 = v399 * (v374 & 0xFFFFFFFFFFFFFFLL) + v398 * (v371 & 0xFFFFFFFFFFFFFFLL) + ((v398 * v379) >> 16) + v400 * v379;
    v443 = v399 * v437 - v398 * v379 + v400 * (v371 & 0xFFFFFFFFFFFFFFLL) + v401 * (v374 & 0xFFFFFFFFFFFFFFLL);
    v444 = (v399 * v379 + v398 * v374) << 40;
    v21 = __CFADD__(v443, v444);
    v445 = v443 + v444;
    v446 = v442 >> 16;
    if (v21)
    {
      v447 = *(&v443 + 1) + 1;
    }

    else
    {
      v447 = (v399 * v437 - v398 * v379 + v400 * (v371 & 0xFFFFFFFFFFFFFFLL) + v401 * (v374 & 0xFFFFFFFFFFFFFFLL)) >> 64;
    }

    v448 = v445 + v446;
    v449 = (*(&v442 + 1) >> 16) + __CFADD__(v445, v446) + v447;
    v450 = (v399 * v438 + v398 * v437 + v400 * (v374 & 0xFFFFFFFFFFFFFFLL)) >> 64;
    v451 = v399 * v438 + v398 * v437 + v400 * (v374 & 0xFFFFFFFFFFFFFFLL);
    v452 = v441 << 40;
    v21 = __CFADD__(v451, v452);
    v453 = v451 + v452;
    if (v21)
    {
      ++v450;
    }

    *(&v454 + 1) = v449 + 0x7FFFFFFFFFFFFF80;
    *&v454 = v448;
    v455 = __PAIR128__(v450, v453) + v401 * v379 + (v440 >> 16) + (v454 >> 56);
    v456 = v401 * v437 - (v442 + (v455 >> 56));
    v457 = v456 + __PAIR128__(0x8000000000000000, 0x8000);
    v459 = v400 * v437 - v440 + v401 * v438;
    v458 = *(&v459 + 1);
    v460 = v442 << 40;
    v21 = __CFADD__(v459, v460);
    v461 = v459 + v460;
    v462 = (v455 >> 16) & 0xFFFF0000000000;
    if (v21)
    {
      v458 = *(&v459 + 1) + 1;
    }

    v21 = __CFADD__(v461, v462);
    v463 = v461 + v462;
    if (v21)
    {
      ++v458;
    }

    v464 = v457 >> 56;
    v21 = __CFADD__(v463, v464);
    v465 = v463 + v464;
    v703 = v465 - 0x80000000000000;
    *(&v466 + 1) = __CFADD__(v465, 0xFF80000000000000) + HIBYTE(*(&v457 + 1)) + v21 + v458 + 0x7FFFFFFFFFFFFF7FLL;
    *&v466 = v465 - 0x80000000000000;
    v467 = (v448 & 0xFFFFFFFFFFFFFFLL) + (*(&v455 + 1) >> 8) + (v466 >> 56);
    v700 = v467;
    v468 = 2 * v701;
    v469 = (v438 * (2 * v701) + v379 * (2 * v372)) >> 64;
    v470 = v438 * 2 * v701 + v379 * 2 * v372;
    v471 = ((v379 * v379) << 40) & 0xFFFF0000000000;
    v21 = __CFADD__(v470, v471);
    v472 = v470 + v471;
    if (v21)
    {
      ++v469;
    }

    v473 = __PAIR128__(v469, v472) + ((v379 * v468) >> 16);
    v474 = (v437 * (2 * v377) - v379 * v468) >> 64;
    v475 = v437 * 2 * v377 - v379 * v468;
    v476 = (v379 * 2 * v371 + v439 * v439 + ((v379 * v379) >> 16)) << 40;
    v21 = __CFADD__(v475, v476);
    v477 = v475 + v476;
    if (v21)
    {
      ++v474;
    }

    *(&v478 + 1) = *(&v455 + 1);
    *&v478 = v467;
    v479 = v438 * v438 - v379 * v379 + v437 * v468 + ((v379 * (2 * v377) + v439 * v439 + ((v379 * v379) >> 16)) >> 16) + __PAIR128__(0x7FFFFFFFFFFFFF80, ((v379 * v468) << 40) & 0xFFFE0000000000);
    v702 = (v478 >> 56) + (v455 & 0xFFFFFFFFFFFFFFLL);
    v480 = v473 + (v479 >> 56);
    *(&v478 + 1) = v480 >> 64;
    v481 = v480;
    *&v478 = v473 + (v479 >> 56);
    v482 = (v478 >> 16) & 0xFFFF0000000000;
    if (__CFADD__(v477, v482))
    {
      v483 = v474 + 1;
    }

    else
    {
      v483 = v474;
    }

    v484 = v437 * v437 - (v379 * (2 * v377) + v439 * v439 + ((v379 * v379) >> 16) + (v480 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
    v485 = __PAIR128__(v483, v477 + v482) + (v484 >> 56) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
    v486 = v485 >> 56;
    v487 = (v479 & 0xFFFFFFFFFFFFFFLL) + (*(&v480 + 1) >> 8);
    v21 = __CFADD__(v487, v486);
    v488 = v487 + v486;
    v489 = HIBYTE(*(&v485 + 1));
    if (v21)
    {
      ++v489;
    }

    *(&v490 + 1) = v489;
    *&v490 = v488;
    v491 = (v490 >> 56) + (v480 & 0xFFFFFFFFFFFFFFLL);
    v492 = v485 & 0xFFFFFFFFFFFFFFLL;
    v493 = v488 & 0xFFFFFFFFFFFFFFLL;
    v494 = v491 * v439 + (v488 & 0xFFFFFFFFFFFFFFLL) * v379;
    v495 = (v488 & 0xFFFFFFFFFFFFFFLL) * v439 + (v485 & 0xFFFFFFFFFFFFFFLL) * v379 + v491 * v438 + ((v491 * v379) >> 16);
    v496 = v484 & 0xFFFFFFFFFFFFFFLL;
    v497 = (v484 & 0xFFFFFFFFFFFFFFLL) * v439 + (v485 & 0xFFFFFFFFFFFFFFLL) * v438 + (v488 & 0xFFFFFFFFFFFFFFLL) * v437 - v491 * v379;
    v498 = (((v490 >> 56) + v480) * v439 + v488 * v379) << 40;
    v499 = v497 + v498;
    if (__CFADD__(v497, v498))
    {
      v500 = *(&v497 + 1) + 1;
    }

    else
    {
      v500 = ((v484 & 0xFFFFFFFFFFFFFFLL) * v439 + (v485 & 0xFFFFFFFFFFFFFFLL) * v438 + (v488 & 0xFFFFFFFFFFFFFFLL) * v437 - v491 * v379) >> 64;
    }

    v501 = v495 >> 16;
    v21 = __CFADD__(v499, v501);
    v502 = v499 + v501;
    v503 = (*(&v495 + 1) >> 16) + v21 + v500;
    v505 = v492 * v439 + v496 * v379 + v493 * v438 + v491 * v437;
    v504 = *(&v505 + 1);
    v506 = (v491 * v379) << 40;
    v21 = __CFADD__(v505, v506);
    v507 = v505 + v506;
    if (v21)
    {
      v504 = *(&v505 + 1) + 1;
    }

    *(&v508 + 1) = v503 + 0x7FFFFFFFFFFFFF80;
    *&v508 = v502;
    v509 = __PAIR128__(v504, v507) + (v494 >> 16) + (v508 >> 56);
    v510 = v496 * v437 - (v495 + (v509 >> 56));
    v697 = v510 + 0x8000;
    v511 = v510 + __PAIR128__(0x8000000000000000, 0x8000);
    v513 = (v496 * v438 + v492 * v437 - v494) >> 64;
    v512 = v496 * v438 + v492 * v437 - v494;
    v514 = v495 << 40;
    v21 = __CFADD__(v512, v514);
    v515 = v512 + v514;
    v516 = (v502 & 0xFFFFFFFFFFFFFFLL) + (*(&v509 + 1) >> 8);
    v517 = (v509 >> 16) & 0xFFFF0000000000;
    if (v21)
    {
      ++v513;
    }

    v21 = __CFADD__(v515, v517);
    v518 = v515 + v517;
    if (v21)
    {
      ++v513;
    }

    v699 = v518 + (v511 >> 56) - 0x80000000000000;
    v519 = __PAIR128__(v513, v518) + (v511 >> 56) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
    v520 = v519 >> 56;
    v21 = __CFADD__(v516, v520);
    v521 = v516 + v520;
    v522 = HIBYTE(*(&v519 + 1));
    if (v21)
    {
      ++v522;
    }

    *(&v523 + 1) = v522;
    *&v523 = v521;
    v694 = v521;
    v696 = (v523 >> 56) + (v509 & 0xFFFFFFFFFFFFFFLL);
    v524 = v491 * v733 + v493 * v737;
    v525 = (v496 * v731) >> 64;
    v526 = v496 * v731;
    v692 = v492 * v731;
    v527 = (v491 * v731) >> 64;
    v528 = v491 * v731;
    v529 = (v496 * v733) >> 64;
    v530 = v496 * v733;
    v531 = (v496 * v735) >> 64;
    v532 = v496 * v735;
    v533 = (v496 * v737) >> 64;
    v534 = v496 * v737;
    v535 = (v491 * v735) >> 64;
    v536 = v491 * v735;
    v537 = v491 * v737;
    v538 = (v491 * v737) >> 64;
    *(&v523 + 1) = v538;
    *&v523 = v537;
    v539 = v493 * v733 + v492 * v737 + __PAIR128__(v535, v536) + (v523 >> 16);
    v541 = (__PAIR128__(v529, v530) + v492 * v735 + v493 * v731 - __PAIR128__(v538, v537)) >> 64;
    v540 = v530 + v492 * v735 + v493 * v731 - v537;
    v542 = v524 << 40;
    v21 = __CFADD__(v540, v542);
    v543 = v540 + v542;
    if (v21)
    {
      ++v541;
    }

    v544 = __PAIR128__(v541, v543) + (v539 >> 16);
    v545 = v492 * v733 + __PAIR128__(v533, v534) + v493 * v735 + __PAIR128__(v527, v528);
    v546 = v537 << 40;
    v21 = __CFADD__(v545, v546);
    v547 = v545 + v546;
    if (v21)
    {
      v548 = *(&v545 + 1) + 1;
    }

    else
    {
      v548 = *(&v545 + 1);
    }

    v549 = __PAIR128__(v548, v547) + (v524 >> 16);
    *(&v550 + 1) = *(&v544 + 1) + 0x7FFFFFFFFFFFFF80;
    *&v550 = v543 + (v539 >> 16);
    v551 = v549 + (v550 >> 56);
    *(&v550 + 1) = (v549 + (v550 >> 56)) >> 64;
    *&v550 = v551;
    v552 = (__PAIR128__(v525, v526) - (v539 + (v550 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000)) >> 64;
    v553 = v526 - (v539 + (v550 >> 56)) + 0x8000;
    v554 = (__PAIR128__(v531, v532) + v692 - v524) >> 64;
    v555 = v532 + v692 - v524;
    v556 = v539 << 40;
    v557 = (v544 & 0xFFFFFFFFFFFFFFLL) + (*(&v550 + 1) >> 8);
    *&v550 = v551;
    v21 = __CFADD__(v555, v556);
    v558 = v555 + v556;
    v559 = (v550 >> 16) & 0xFFFF0000000000;
    if (v21)
    {
      ++v554;
    }

    v21 = __CFADD__(v558, v559);
    v560 = v558 + v559;
    *(&v562 + 1) = v552;
    *&v562 = v553;
    v561 = v562 >> 56;
    if (v21)
    {
      ++v554;
    }

    v21 = __CFADD__(v560, v561);
    v563 = v560 + v561;
    v564 = v563 - 0x80000000000000;
    *(&v566 + 1) = __CFADD__(v563, 0xFF80000000000000) + HIBYTE(v552) + v21 + v554 + 0x7FFFFFFFFFFFFF7FLL;
    *&v566 = v563 - 0x80000000000000;
    v565 = v566 >> 56;
    v21 = __CFADD__(v557, v565);
    v567 = v557 + v565;
    v568 = v551 & 0xFFFFFFFFFFFFFFLL;
    v569 = HIBYTE(*(&v566 + 1));
    if (v21)
    {
      ++v569;
    }

    *(&v570 + 1) = v569;
    *&v570 = v567;
    v571 = (v570 >> 56) + v568;
    v572 = 2 * v704;
    v573 = v318 & 0xFFFFFFFFFFFFFFLL;
    v574 = v725;
    v576 = (v725 * (2 * v704) + v573 * v573 + ((v574 * v574) >> 16)) >> 64;
    v575 = v725 * 2 * v704 + v573 * v573 + ((v574 * v574) >> 16);
    v577 = v315 & 0xFFFFFFFFFFFFFFLL;
    v578 = 2 * v706;
    v579 = v308 & 0xFFFFFFFFFFFFFFLL;
    v580 = v577 * v577 - v574 * v574 + (v308 & 0xFFFFFFFFFFFFFFLL) * (2 * v706) + ((v725 * (2 * v704) + v573 * v573 + ((v574 * v574) >> 16)) >> 16);
    v581 = v725 * 2 * v706;
    v582 = (v581 << 40) & 0xFFFE0000000000;
    v21 = __CFADD__(v580, v582);
    v583 = v580 + v582;
    v584 = v567 & 0xFFFFFFFFFFFFFFLL;
    v585 = v694 & 0xFFFFFFFFFFFFFFLL;
    if (v21)
    {
      v586 = *(&v580 + 1) + 1;
    }

    else
    {
      v586 = (v577 * v577 - v725 * v725 + (v308 & 0xFFFFFFFFFFFFFFLL) * (2 * v706) + ((v725 * (2 * v704) + v573 * v573 + ((v725 * v725) >> 16)) >> 16)) >> 64;
    }

    v588 = (__PAIR128__(v586, v583) - (v585 + 2 * v584)) >> 64;
    v587 = v583 - (v585 + 2 * v584);
    v589 = v587 - 512;
    v590 = (v587 >= 0x200) + v588 + 0x7FFFFFFFFFFFFF81;
    v591 = (v725 * (2 * (v308 & 0xFFFFFFFFFFFFFFLL)) + v577 * v578) >> 64;
    v592 = v725 * 2 * (v308 & 0xFFFFFFFFFFFFFFLL) + v577 * v578;
    v593 = ((v725 * v725) << 40) & 0xFFFF0000000000;
    v21 = __CFADD__(v592, v593);
    v594 = v592 + v593;
    v595 = (v725 * v578) >> 64;
    if (v21)
    {
      ++v591;
    }

    v596 = (v725 * (2 * v706)) >> 16;
    v598 = v594 + v596 - (v696 + 2 * v571);
    v597 = (__PAIR128__((v595 >> 16) + __CFADD__(v594, v596) + v591, v594 + v596) - (v696 + 2 * v571)) >> 64;
    *(&v600 + 1) = v590;
    *&v600 = v589;
    v599 = v600 >> 56;
    v21 = __CFADD__(v598, v599);
    v601 = v598 + v599;
    v602 = v598 + v599 - 512;
    v603 = (v601 >= 0x200) + HIBYTE(v590) + v21 + v597 + 1;
    v604 = v553 & 0xFFFFFFFFFFFFFFLL;
    v605 = v697 & 0xFFFFFFFFFFFFFFLL;
    v606 = v575 + (v697 & 0xFFFFFFFFFFFFFFLL);
    if (__CFADD__(v575, v697 & 0xFFFFFFFFFFFFFFLL))
    {
      ++v576;
    }

    v21 = __CFADD__(v606, 2 * v604);
    v607 = v606 + 2 * v604;
    if (v21)
    {
      ++v576;
    }

    *(&v608 + 1) = v603;
    *&v608 = v602;
    v609 = v579 * v579 - (__PAIR128__(v576, v607) + (v608 >> 56)) + __PAIR128__(0x8000000000000002, 33280);
    v610 = (v725 * 2 * v315 + v318 * v318 + ((v725 * v725) >> 16)) << 40;
    v21 = __CFADD__(v579 * v572, v610);
    v611 = v579 * v572 + v610;
    v612 = v564 & 0xFFFFFFFFFFFFFFLL;
    v613 = v699 & 0xFFFFFFFFFFFFFFLL;
    v614 = (v579 * v572) >> 64;
    if (v21)
    {
      ++v614;
    }

    v21 = __CFADD__(v581, v613);
    v615 = v581 + v613;
    if (v21)
    {
      ++v595;
    }

    v21 = __CFADD__(v615, 2 * v612);
    v616 = v615 + 2 * v612;
    if (v21)
    {
      ++v595;
    }

    v617 = (__PAIR128__(v614, v611) - __PAIR128__(v595, v616)) >> 64;
    v618 = (v589 & 0xFFFFFFFFFFFFFFLL) + (v603 >> 8);
    *(&v619 + 1) = v603;
    *&v619 = v602;
    v620 = (v619 >> 16) & 0xFFFF0000000000;
    v21 = __CFADD__(v611 - v616, v620);
    v621 = v611 - v616 + v620;
    if (v21)
    {
      ++v617;
    }

    v622 = __PAIR128__(v617, v621) + (v609 >> 56);
    v623 = v622 - 0x82000000000200;
    *(&v625 + 1) = __CFADD__(v622, 0xFF7DFFFFFFFFFE00) + *(&v622 + 1) + 0x7FFFFFFFFFFFFF81;
    *&v625 = v622 - 0x82000000000200;
    v624 = v625 >> 56;
    v21 = __CFADD__(v618, v624);
    v626 = v618 + v624;
    v627 = HIBYTE(*(&v625 + 1));
    if (v21)
    {
      ++v627;
    }

    *(&v628 + 1) = v627;
    *&v628 = v626;
    v629 = v604 - (*(&v580 + 1) & 0xFFFFFFFFFFFFFFLL) + 0x400000000000004;
    v736 = v623 & 0xFFFFFFFFFFFFFFLL;
    v630 = v612 - (v623 & 0xFFFFFFFFFFFFFFLL) + 0x3FFFBFFFFFFFFFCLL;
    v732 = (v628 >> 56) + (v602 & 0xFFFFFFFFFFFFFFLL);
    v734 = v626 & 0xFFFFFFFFFFFFFFLL;
    v631 = v584 - (v626 & 0xFFFFFFFFFFFFFFLL) + 0x3FFFFFFFFFFFFFCLL;
    v632 = v571 - v732 + 0x3FFFFFFFFFFFFFCLL;
    v715 = v579 * v629;
    v712 = (v579 * v630) >> 64;
    v633 = (v579 * v631) >> 64;
    v634 = v579 * v631;
    v698 = v579 * v632;
    v707 = v579 * v630;
    v705 = v577 * v629;
    v635 = (v573 * v629) >> 64;
    v636 = v573 * v629;
    v637 = (v577 * v630) >> 64;
    v638 = v577 * v630;
    v695 = (v577 * v631) >> 64;
    v693 = v577 * v631;
    v639 = (v577 * v632) >> 64;
    v640 = v577 * v632;
    v641 = (v573 * v630) >> 64;
    v642 = v573 * v630;
    v643 = (v573 * v631) >> 64;
    v644 = v573 * v631;
    v645 = (v725 * v632) >> 64;
    v646 = v725 * v632;
    v647 = (v725 * v631 - v696 * v738 - v585 * v743 + v573 * v632) >> 64;
    v648 = v725 * v631 - v696 * v738 - v585 * v743 + v573 * v632;
    v649 = __PAIR128__(v645, v646) - v696 * v743;
    v650 = v725 * v630 - (v585 * v738 + v613 * v743 + v696 * v739) + v573 * v631 + v640;
    v651 = v647 + 0xFFFFFFFFFFFFFFLL;
    *(&v628 + 1) = *(&v649 + 1) + 0xFFFFFFFFFFFFFFLL;
    *&v628 = v649;
    v652 = v650 + (v628 >> 16);
    v653 = ((v725 * v630 - (v585 * v738 + v613 * v743 + v696 * v739) + __PAIR128__(v643, v644) + __PAIR128__(v639, v640) + (v628 >> 16)) >> 64) + 0xFFFEFFFFFFFFFFLL;
    v655 = (__PAIR128__(v635, v636) - (v613 * v739 + v605 * v738 + v585 * v740) + __PAIR128__(v637, v638) + __PAIR128__(v633, v634) - v649) >> 64;
    v654 = v636 - (v613 * v739 + v605 * v738 + v585 * v740) + v638 + v634 - v649;
    v656 = v648 << 40;
    v21 = __CFADD__(v654, v656);
    v657 = v654 + v656;
    if (v21)
    {
      ++v655;
    }

    *(&v658 + 1) = v653;
    *&v658 = v652;
    v659 = __PAIR128__(v655, v657) + (v658 >> 16);
    *(&v658 + 1) = v651;
    *&v658 = v648;
    v660 = v725 * v629 - (v613 * v738 + v605 * v743 + v585 * v739 + v696 * v740) + __PAIR128__(v641, v642) + __PAIR128__(v695, v693) + v698 + (v658 >> 16);
    v661 = v649 << 40;
    v21 = __CFADD__(v660, v661);
    v662 = v660 + v661;
    if (v21)
    {
      v663 = *(&v660 + 1) + 1;
    }

    else
    {
      v663 = *(&v660 + 1);
    }

    *(&v665 + 1) = *(&v659 + 1) + 0x7FFFFFFFFFFFFF80;
    *&v665 = v659;
    v664 = v665 >> 56;
    v21 = __CFADD__(v662, v664);
    v666 = v662 + v664;
    v667 = ((*(&v659 + 1) + 0x7FFFFFFFFFFFFF80) >> 56) + v21 + v663 + 0x100000000000000;
    *(&v665 + 1) = v667;
    *&v665 = v666;
    v668 = v605 * v740 + __PAIR128__(v653, v652) + (v665 >> 56);
    v669 = (v705 - v613 * v740 - v605 * v739 + __PAIR128__(v712, v707) - __PAIR128__(v651, v648)) >> 64;
    v670 = v705 - v613 * v740 - v605 * v739 + v707 - v648;
    v671 = v652 << 40;
    v21 = __CFADD__(v670, v671);
    v672 = v670 + v671;
    *(&v665 + 1) = v667;
    *&v665 = v666;
    v673 = (v665 >> 16) & 0xFFFF0000000000;
    if (v21)
    {
      ++v669;
    }

    v21 = __CFADD__(v672, v673);
    v674 = v672 + v673;
    if (v21)
    {
      ++v669;
    }

    v675 = v715 - v668 + __PAIR128__(0x8100000000000000, 0x8000);
    v676 = (v659 & 0xFFFFFFFFFFFFFFLL) + (v667 >> 8);
    v678 = (__PAIR128__(HIBYTE(*(&v675 + 1)) + __CFADD__(v674, (v675 >> 56)) + v669, v674 + (v675 >> 56)) + __PAIR128__(0x80FFFFFFFFFFFF7ELL, 0xFF80000000000000)) >> 56;
    v21 = __CFADD__(v676, v678);
    v679 = v676 + v678;
    v680 = v666 & 0xFFFFFFFFFFFFFFLL;
    v681 = ((__PAIR128__(HIBYTE(*(&v675 + 1)) + __CFADD__(v674, (v675 >> 56)) + v669, v674 + (v675 >> 56)) + __PAIR128__(0x80FFFFFFFFFFFF7ELL, 0xFF80000000000000)) >> 64) >> 56;
    if (v21)
    {
      ++v681;
    }

    *(&v682 + 1) = v681;
    *&v682 = v679;
    v683 = vdupq_n_s64(v722);
    v684.i64[0] = v734;
    v684.i64[1] = v732;
    v685.i64[0] = *(&v580 + 1) & 0xFFFFFFFFFFFFFFLL;
    v685.i64[1] = v736;
    v686.i64[0] = v679 & 0xFFFFFFFFFFFFFFLL;
    v686.i64[1] = (v682 >> 56) + v680;
    v687 = *a5;
    v688 = *(a5 + 1);
    v689 = vbslq_s8(v683, v323, v684);
    v690 = vdupq_n_s64(v723);
    v691 = vbslq_s8(v690, a4[1], v689);
    *a1 = vbslq_s8(v690, *a4, vbslq_s8(v683, v322, v685));
    a1[1] = v691;
    v691.i64[0] = 0xFFFFFFFFFFFFFFLL;
    v691.i64[1] = 0xFFFFFFFFFFFFFFLL;
    v677.i64[1] = v674 + (v675 >> 56) - 0x80000000000000;
    v677.i64[0] = v715 - v668 + 0x8000;
    result = vbslq_s8(v690, v687, vorrq_s8(vandq_s8(v281, v683), vandq_s8(vbicq_s8(v677, v683), v691)));
    *a2 = result;
    a2[1] = vbslq_s8(v690, v688, vbslq_s8(v683, v282, v686));
    *a3 = v710 & v723 | (v720 & v722 | (v456 + 0x8000) & ~v722 & 0xFFFFFFFFFFFFFFLL) & ~v723;
    a3[1] = v729 & v723 | (v718 & v722 | v703 & ~v722 & 0xFFFFFFFFFFFFFFLL) & ~v723;
    a3[2] = v730 & v723 | (v708 & v722 | v700 & ~v722 & 0xFFFFFFFFFFFFFFLL) & ~v723;
    a3[3] = v711 & v723 | (v709 & v722 | v702 & ~v722) & ~v723;
  }

  return result;
}