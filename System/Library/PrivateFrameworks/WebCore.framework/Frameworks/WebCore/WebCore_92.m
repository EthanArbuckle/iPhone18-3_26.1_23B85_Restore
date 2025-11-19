_BYTE *X25519_keypair(_BYTE *a1, char *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  BCM_rand_bytes_with_additional_data(a2, 0x20uLL, BCM_rand_bytes::kZeroAdditionalData);
  *a2 |= 7u;
  a2[31] = a2[31] & 0x3F | 0x80;
  v4 = *(a2 + 1);
  v19 = *a2;
  v20 = v4;
  LOBYTE(v19) = v19 & 0xF8;
  HIBYTE(v20) = HIBYTE(v4) & 0x3F | 0x40;
  x25519_ge_scalarmult_base(v12, &v19);
  *v9 = vaddq_s64(v13, v16);
  v10 = vaddq_s64(v14, v17);
  v11 = v15 + v18;
  v7[0] = vaddq_s64(vsubq_s64(v16, v13), xmmword_273BA9E40);
  v7[1] = vaddq_s64(vsubq_s64(v17, v14), vdupq_n_s64(0xFFFFFFFFFFFFEuLL));
  v8 = v18 - v15 + 0xFFFFFFFFFFFFELL;
  fe_loose_invert(v6, v7);
  fe_mul_impl(v6, v9, v6);
  return fe_tobytes(a1, v6);
}

BOOL X25519(int8x16_t *a1, __int128 *a2, unsigned int *a3)
{
  v3 = 0;
  v239 = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v237 = *a2;
  v4.i32[1] = DWORD1(v237);
  v238 = v5;
  LOBYTE(v237) = v237 & 0xF8;
  HIBYTE(v238) = HIBYTE(v5) & 0x3F | 0x40;
  v6 = *(a3 + 6);
  v7 = *(a3 + 12);
  v8 = a3[4];
  v9 = *(a3 + 22);
  v4.i32[0] = a3[2];
  v10 = vmovl_u16(*&vmovl_u8(v4));
  v11.i64[0] = v10.u32[0];
  v11.i64[1] = v10.u32[1];
  v12.i64[0] = 255;
  v12.i64[1] = 255;
  v13 = vandq_s8(v11, v12);
  v11.i64[0] = v10.u32[2];
  v11.i64[1] = v10.u32[3];
  v14 = (*(a3 + 5) << 40) & 0xFFF8FFFFFFFFFFFFLL | ((v6 & 7) << 48) | *a3 | (*(a3 + 4) << 32);
  v15 = vorrq_s8(vshlq_u64(v13, xmmword_273BA9E60), vshlq_u64(vandq_s8(v11, v12), xmmword_273BA9E50));
  v16 = *&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)) | (32 * *(a3 + 7)) | (v6 >> 3) & 0xFFF81FFFFFFFFFFFLL | ((v7 & 0x3F) << 45);
  v17 = (*(a3 + 15) << 18) & 0x3FFFFFF | ((v8 & 0x1FFFFFF) << 26) | (*(a3 + 14) << 10) | (4 * *(a3 + 13)) | (v7 >> 6);
  v18 = (*(a3 + 21) << 15) & 0xFFF80000007FFFFFLL | ((v9 & 0xFFFFFFF) << 23) | (*(a3 + 20) << 7) | (v8 >> 25);
  v19 = (*(a3 + 27) << 12) & 0xFFF80000000FFFFFLL | ((a3[7] & 0x7FFFFFFF) << 20) | (16 * *(a3 + 26)) | (v9 >> 28);
  v234[0] = v14;
  v234[1] = v16;
  v234[2] = v17;
  v234[3] = v18;
  v234[4] = v19;
  v232 = 0u;
  v233 = 0u;
  v231 = 1;
  *v228 = 0u;
  v229 = 0u;
  v230 = 0;
  memset(&v227[0].u64[1], 0, 32);
  v20 = 254;
  v227[0].i64[0] = 1;
  do
  {
    v208 = v20;
    v207 = (*(&v237 + (v20 >> 3)) >> (v20 & 7)) & 1;
    v21 = -(v207 ^ v3);
    v22 = (v231 ^ v14) & v21;
    v23 = (v232 ^ v16) & v21;
    v231 ^= v22;
    *&v232 = v23 ^ v232;
    v24 = (*(&v232 + 1) ^ v17) & v21;
    v25 = (v233 ^ v18) & v21;
    *(&v232 + 1) ^= v24;
    *&v233 = v25 ^ v233;
    v26 = (*(&v233 + 1) ^ v19) & v21;
    *(&v233 + 1) ^= v26;
    v27 = v22 ^ v14;
    v28 = v23 ^ v16;
    v29 = v24 ^ v17;
    v30 = (v227[0].i64[0] ^ v228[0]) & v21;
    v31 = (v227[0].i64[1] ^ v228[1]) & v21;
    v228[0] ^= v30;
    v228[1] ^= v31;
    v32 = v25 ^ v18;
    v33 = v26 ^ v19;
    v227[0].i64[0] ^= v30;
    v227[0].i64[1] ^= v31;
    v34 = (v227[1].i64[0] ^ v229.i64[0]) & v21;
    v35 = (v227[1].i64[1] ^ v229.i64[1]) & v21;
    v229.i64[0] ^= v34;
    v229.i64[1] ^= v35;
    v227[1].i64[0] ^= v34;
    v227[1].i64[1] ^= v35;
    v36 = (v227[2].i64[0] ^ v230) & v21;
    v230 ^= v36;
    v227[2].i64[0] ^= v36;
    v214 = v27 + 0xFFFFFFFFFFFDALL - v227[0].i64[0];
    v215 = v28 - v227[0].i64[1] + 0xFFFFFFFFFFFFELL;
    v216 = v29 - v227[1].i64[0] + 0xFFFFFFFFFFFFELL;
    v217 = v32 - v227[1].i64[1] + 0xFFFFFFFFFFFFELL;
    v218 = v33 - v227[2].i64[0] + 0xFFFFFFFFFFFFELL;
    v37 = v231 + 0xFFFFFFFFFFFDALL - v228[0];
    v38 = v232 - v228[1] + 0xFFFFFFFFFFFFELL;
    v39 = *(&v232 + 1) - v229.i64[0] + 0xFFFFFFFFFFFFELL;
    v40 = v233 - v229.i64[1] + 0xFFFFFFFFFFFFELL;
    v41 = *(&v233 + 1) - v230 + 0xFFFFFFFFFFFFELL;
    v209 = v37;
    v210 = v38;
    v211 = v39;
    v212 = v40;
    v213 = v41;
    v42 = v228[0] + v231;
    v43 = v228[1] + v232;
    v44 = v229.i64[0] + *(&v232 + 1);
    v45 = v229.i64[1] + v233;
    v46 = v230 + *(&v233 + 1);
    v224[0] = v228[0] + v231;
    v224[1] = v228[1] + v232;
    v224[2] = v229.i64[0] + *(&v232 + 1);
    v224[3] = v229.i64[1] + v233;
    v224[4] = v230 + *(&v233 + 1);
    v219 = v227[0].i64[0] + v27;
    v220 = v227[0].i64[1] + v28;
    v221 = v227[1].i64[0] + v29;
    v222 = v227[1].i64[1] + v32;
    v223 = v227[2].i64[0] + v33;
    fe_mul_impl(v227[0].i64, &v214, v224);
    fe_mul_impl(v228, &v219, &v209);
    v47 = (38 * v40) * v39 + v37 * v37 + (38 * v41) * v38;
    v48 = (2 * v40) * v38 + v39 * v39 + (2 * v41) * v37;
    v49 = ((2 * v39) * v38) >> 64;
    v50 = 2 * v39 * v38;
    v51 = (19 * v40) * v40 + 2 * v38 * v37 + (38 * v41) * v39;
    v52 = (v38 * v38) >> 64;
    v53 = v38 * v38;
    v54 = v47 >> 51;
    v55 = __CFADD__(v51, v54);
    v56 = v51 + v54;
    if (v55)
    {
      v57 = *(&v51 + 1) + 1;
    }

    else
    {
      v57 = *(&v51 + 1);
    }

    *(&v59 + 1) = v57;
    *&v59 = v56;
    v58 = v59 >> 51;
    v60 = (2 * v39) * v37 + __PAIR128__(v52, v53) + (38 * v41) * v40;
    if (__CFADD__(v60, v58))
    {
      v61 = *(&v60 + 1) + 1;
    }

    else
    {
      v61 = ((2 * v39) * v37 + __PAIR128__(v52, v53) + (38 * v41) * v40) >> 64;
    }

    *(&v63 + 1) = v61;
    *&v63 = v60 + v58;
    v62 = v63 >> 51;
    v64 = (2 * v40) * v37 + __PAIR128__(v49, v50) + (19 * v41) * v41;
    v65 = v64 + v62;
    if (__CFADD__(v64, v62))
    {
      v66 = *(&v64 + 1) + 1;
    }

    else
    {
      v66 = ((2 * v40) * v37 + __PAIR128__(v49, v50) + (19 * v41) * v41) >> 64;
    }

    *(&v68 + 1) = v66;
    *&v68 = v64 + v62;
    v67 = v68 >> 51;
    v55 = __CFADD__(v48, v67);
    v69 = v48 + v67;
    if (v55)
    {
      v70 = *(&v48 + 1) + 1;
    }

    else
    {
      v70 = *(&v48 + 1);
    }

    v71 = 38 * v45 * v44 + v42 * v42 + (38 * v46) * v43;
    v72 = v71 >> 51;
    v73 = 2 * v45 * v43 + v44 * v44 + (2 * v46) * v42;
    v74 = 19 * v45 * v45 + 2 * v43 * v42 + (38 * v46) * v44;
    if (__CFADD__(v74, v72))
    {
      v75 = *(&v74 + 1) + 1;
    }

    else
    {
      v75 = (19 * v45 * v45 + 2 * v43 * v42 + (38 * v46) * v44) >> 64;
    }

    *(&v77 + 1) = v75;
    *&v77 = v74 + v72;
    v76 = v77 >> 51;
    v78 = (2 * v44) * v42 + v43 * v43 + (38 * v46) * v45;
    v79 = v78 + v76;
    if (__CFADD__(v78, v76))
    {
      v80 = *(&v78 + 1) + 1;
    }

    else
    {
      v80 = ((2 * v44) * v42 + v43 * v43 + (38 * v46) * v45) >> 64;
    }

    *(&v82 + 1) = v80;
    *&v82 = v79;
    v81 = v82 >> 51;
    v83 = 2 * v45 * v42 + (2 * v44) * v43 + (19 * v46) * v46;
    v84 = v83 + v81;
    if (__CFADD__(v83, v81))
    {
      v85 = *(&v83 + 1) + 1;
    }

    else
    {
      v85 = (2 * v45 * v42 + (2 * v44) * v43 + (19 * v46) * v46) >> 64;
    }

    *(&v87 + 1) = v85;
    *&v87 = v84;
    v86 = v87 >> 51;
    v55 = __CFADD__(v73, v86);
    v88 = v73 + v86;
    v89 = v228[0] + v227[0].i64[0];
    v90 = v228[1] + v227[0].i64[1];
    v91 = v229.i64[0] + v227[1].i64[0];
    v92 = v227[0].i64[0] + 0xFFFFFFFFFFFDALL - v228[0];
    v93 = v229.i64[1] + v227[1].i64[1];
    v94 = v227[0].i64[1] - v228[1];
    v95 = v227[1].i64[0] - v229.i64[0];
    v96 = v227[1].i64[1] - v229.i64[1];
    v97 = v227[2].i64[0] - v230;
    *(&v87 + 1) = v70;
    *&v87 = v69;
    v98 = (v47 & 0x7FFFFFFFFFFFFLL) + 19 * (v87 >> 51);
    if (v55)
    {
      v99 = *(&v73 + 1) + 1;
    }

    else
    {
      v99 = *(&v73 + 1);
    }

    *(&v100 + 1) = v99;
    *&v100 = v88;
    v101 = (v71 & 0x7FFFFFFFFFFFFLL) + 19 * (v100 >> 51);
    v102 = (v56 & 0x7FFFFFFFFFFFFLL) + (v98 >> 51);
    v201 = ((v60 + v58) & 0x7FFFFFFFFFFFFLL) + (v102 >> 51);
    v202 = v98 & 0x7FFFFFFFFFFFFLL;
    v226[0] = v98 & 0x7FFFFFFFFFFFFLL;
    v226[1] = v102 & 0x7FFFFFFFFFFFFLL;
    v203 = v102 & 0x7FFFFFFFFFFFFLL;
    v204 = v65 & 0x7FFFFFFFFFFFFLL;
    v205 = v69 & 0x7FFFFFFFFFFFFLL;
    v206 = v230 + v227[2].i64[0];
    v226[2] = v201;
    v226[3] = v65 & 0x7FFFFFFFFFFFFLL;
    v226[4] = v69 & 0x7FFFFFFFFFFFFLL;
    v103 = ((v74 + v72) & 0x7FFFFFFFFFFFFLL) + (v101 >> 51);
    v104 = v101 & 0x7FFFFFFFFFFFFLL;
    v197 = v103 & 0x7FFFFFFFFFFFFLL;
    v198 = (v79 & 0x7FFFFFFFFFFFFLL) + (v103 >> 51);
    v225[0] = v101 & 0x7FFFFFFFFFFFFLL;
    v225[1] = v103 & 0x7FFFFFFFFFFFFLL;
    v199 = v84 & 0x7FFFFFFFFFFFFLL;
    v225[2] = v198;
    v225[3] = v84 & 0x7FFFFFFFFFFFFLL;
    v200 = v88 & 0x7FFFFFFFFFFFFLL;
    v225[4] = v88 & 0x7FFFFFFFFFFFFLL;
    v105 = v94 + 0xFFFFFFFFFFFFELL;
    v106 = v95 + 0xFFFFFFFFFFFFELL;
    v107 = v96 + 0xFFFFFFFFFFFFELL;
    v219 = v227[0].i64[0] + 0xFFFFFFFFFFFDALL - v228[0];
    v220 = v94 + 0xFFFFFFFFFFFFELL;
    v108 = v97 + 0xFFFFFFFFFFFFELL;
    v221 = v95 + 0xFFFFFFFFFFFFELL;
    v222 = v96 + 0xFFFFFFFFFFFFELL;
    v223 = v97 + 0xFFFFFFFFFFFFELL;
    fe_mul_impl(&v231, v225, v226);
    v109 = 2 * v107;
    v110 = 19 * v108 * v108;
    v111 = (38 * v107) * v106 + v92 * v92 + (38 * v108) * v105;
    v112 = (2 * v107) * v105 + v106 * v106 + (2 * v108) * v92;
    v113 = 2 * v106;
    v115 = ((19 * v107) * v107 + 2 * v105 * v92 + (38 * v108) * v106) >> 64;
    v114 = 19 * v107 * v107 + 2 * v105 * v92 + 38 * v108 * v106;
    v116 = v111 >> 51;
    v55 = __CFADD__(v114, v116);
    v117 = v114 + v116;
    if (v55)
    {
      ++v115;
    }

    v118 = (v109 * v92) >> 64;
    v119 = v109 * v92;
    v120 = (v113 * v92) >> 64;
    v121 = v113 * v105;
    *(&v125 + 1) = v115;
    *&v125 = v117;
    v124 = v125 >> 51;
    v122 = (__PAIR128__(v120, 2 * v106 * v92) + v105 * v105 + (38 * v108) * v107) >> 64;
    v123 = 2 * v106 * v92 + v105 * v105 + 38 * v108 * v107;
    v55 = __CFADD__(v123, v124);
    v126 = v123 + v124;
    v127 = v104 + 0xFFFFFFFFFFFDALL - v202;
    v128 = v197 - v203 + 0xFFFFFFFFFFFFELL;
    v129 = v198 - v201 + 0xFFFFFFFFFFFFELL;
    v130 = v199 - v204 + 0xFFFFFFFFFFFFELL;
    v131 = v200 - v205 + 0xFFFFFFFFFFFFELL;
    v209 = v127;
    v210 = v128;
    v211 = v129;
    v212 = v130;
    v213 = v131;
    v132 = v117 & 0x7FFFFFFFFFFFFLL;
    if (v55)
    {
      ++v122;
    }

    *(&v134 + 1) = v122;
    *&v134 = v126;
    v133 = v134 >> 51;
    v55 = __CFADD__(v119, v121);
    v135 = v119 + v121;
    v136 = (((2 * v106) * v105) >> 64) + v55 + v118;
    v55 = __CFADD__(v135, v110);
    v137 = v135 + v110;
    v138 = (((19 * v108) * v108) >> 64) + v55 + v136;
    v55 = __CFADD__(v137, v133);
    v139 = v137 + v133;
    if (v55)
    {
      ++v138;
    }

    *(&v141 + 1) = v138;
    *&v141 = v139;
    v140 = v141 >> 51;
    v142 = v139 & 0x7FFFFFFFFFFFFLL;
    v55 = __CFADD__(v112, v140);
    v143 = v112 + v140;
    if (v55)
    {
      v144 = *(&v112 + 1) + 1;
    }

    else
    {
      v144 = ((2 * v107) * v105 + v106 * v106 + (2 * v108) * v92) >> 64;
    }

    *(&v145 + 1) = v144;
    *&v145 = v143;
    v146 = (v111 & 0x7FFFFFFFFFFFFLL) + 19 * (v145 >> 51);
    v147 = v146 & 0x7FFFFFFFFFFFFLL;
    v148 = v132 + (v146 >> 51);
    v228[0] = v147;
    v228[1] = v148 & 0x7FFFFFFFFFFFFLL;
    v229.i64[0] = (v126 & 0x7FFFFFFFFFFFFLL) + (v148 >> 51);
    v229.i64[1] = v142;
    v149 = (v131 * 0x1DB42uLL) >> 64;
    v150 = 121666 * v131;
    v151 = (v130 * 0x1DB42uLL) >> 64;
    v152 = 121666 * v130;
    v153 = (v128 * 0x1DB42uLL) >> 64;
    v154 = 121666 * v127;
    v155 = (v127 * 0x1DB42uLL) >> 51;
    v156 = 121666 * v128 + v155;
    if (__CFADD__(121666 * v128, v155))
    {
      ++v153;
    }

    *(&v158 + 1) = v153;
    *&v158 = 121666 * v128 + v155;
    v157 = v158 >> 51;
    v55 = __CFADD__(v157, 121666 * v129);
    v159 = v157 + 121666 * v129;
    if (v55)
    {
      v160 = ((v129 * 0x1DB42uLL) >> 64) + 1;
    }

    else
    {
      v160 = (v129 * 0x1DB42uLL) >> 64;
    }

    *(&v162 + 1) = v160;
    *&v162 = v159;
    v161 = v162 >> 51;
    v55 = __CFADD__(v161, v152);
    v163 = v161 + v152;
    if (v55)
    {
      ++v151;
    }

    *(&v165 + 1) = v151;
    *&v165 = v163;
    v164 = v165 >> 51;
    v55 = __CFADD__(v164, v150);
    v166 = v164 + v150;
    if (v55)
    {
      ++v149;
    }

    v167 = (38 * v93) * v91 + v89 * v89 + (38 * v206) * v90;
    v169 = v167 >> 51;
    v168 = (2 * v93) * v90 + v91 * v91 + (2 * v206) * v89;
    v170 = 2 * v91;
    v171 = (19 * v93) * v93 + 2 * v90 * v89 + (38 * v206) * v91;
    v172 = v171 + v169;
    if (__CFADD__(v171, v169))
    {
      v173 = *(&v171 + 1) + 1;
    }

    else
    {
      v173 = ((19 * v93) * v93 + 2 * v90 * v89 + (38 * v206) * v91) >> 64;
    }

    *(&v175 + 1) = v173;
    *&v175 = v171 + v169;
    v174 = v175 >> 51;
    v176 = v170 * v89 + v90 * v90 + (38 * v206) * v93;
    v177 = v176 + v174;
    if (__CFADD__(v176, v174))
    {
      v178 = *(&v176 + 1) + 1;
    }

    else
    {
      v178 = (v170 * v89 + v90 * v90 + (38 * v206) * v93) >> 64;
    }

    *(&v180 + 1) = v178;
    *&v180 = v177;
    v179 = v180 >> 51;
    v182 = ((2 * v93) * v89 + v170 * v90 + (19 * v206) * v206) >> 64;
    v181 = 2 * v93 * v89 + v170 * v90 + 19 * v206 * v206;
    v55 = __CFADD__(v181, v179);
    v183 = v181 + v179;
    v184 = v143 & 0x7FFFFFFFFFFFFLL;
    if (v55)
    {
      ++v182;
    }

    *(&v186 + 1) = v182;
    *&v186 = v183;
    v185 = v186 >> 51;
    v230 = v184;
    *(&v186 + 1) = v149;
    *&v186 = v166;
    v187 = (v154 & 0x7FFFFFFFFFFFELL) + 19 * (v186 >> 51);
    v188 = (v156 & 0x7FFFFFFFFFFFFLL) + (v187 >> 51);
    v227[0].i64[0] = v187 & 0x7FFFFFFFFFFFFLL;
    v227[0].i64[1] = v188 & 0x7FFFFFFFFFFFFLL;
    v227[1].i64[0] = (v159 & 0x7FFFFFFFFFFFFLL) + (v188 >> 51);
    v227[1].i64[1] = v163 & 0x7FFFFFFFFFFFFLL;
    v227[2].i64[0] = v166 & 0x7FFFFFFFFFFFFLL;
    v214 = (v187 & 0x7FFFFFFFFFFFFLL) + v202;
    v215 = (v188 & 0x7FFFFFFFFFFFFLL) + v203;
    v216 = v227[1].i64[0] + v201;
    v217 = (v163 & 0x7FFFFFFFFFFFFLL) + v204;
    v218 = (v166 & 0x7FFFFFFFFFFFFLL) + v205;
    if (__CFADD__(v168, v185))
    {
      v189 = *(&v168 + 1) + 1;
    }

    else
    {
      v189 = ((2 * v93) * v90 + v91 * v91 + (2 * v206) * v89) >> 64;
    }

    *(&v190 + 1) = v189;
    *&v190 = v168 + v185;
    v191 = (v167 & 0x7FFFFFFFFFFFFLL) + 19 * (v190 >> 51);
    v18 = v183 & 0x7FFFFFFFFFFFFLL;
    v19 = (v168 + v185) & 0x7FFFFFFFFFFFFLL;
    v192 = (v172 & 0x7FFFFFFFFFFFFLL) + (v191 >> 51);
    v14 = v191 & 0x7FFFFFFFFFFFFLL;
    v17 = (v177 & 0x7FFFFFFFFFFFFLL) + (v192 >> 51);
    v16 = v192 & 0x7FFFFFFFFFFFFLL;
    fe_mul_impl(v227[0].i64, v234, v228);
    fe_mul_impl(v228, &v209, &v214);
    v20 = v208 - 1;
    v3 = v207;
  }

  while (v208);
  v193 = vdupq_n_s64(-v207);
  v231 = v14 & -v207 | v231 & (v207 - 1);
  *&v232 = v16 & -v207 | v232 & (v207 - 1);
  *(&v232 + 1) = v17 & -v207 | *(&v232 + 1) & (v207 - 1);
  *&v233 = v18 & -v207 | v233 & (v207 - 1);
  *(&v233 + 1) = v19 & -v207 | *(&v233 + 1) & (v207 - 1);
  *v228 = vbslq_s8(v193, v227[0], *v228);
  v229 = vbslq_s8(v193, v227[1], v229);
  v230 = v227[2].i64[0] & -v207 | v230 & (v207 - 1);
  v235[0] = *v228;
  v235[1] = v229;
  v236 = v230;
  fe_loose_invert(v228, v235);
  fe_mul_impl(&v231, &v231, v228);
  fe_tobytes(a1, &v231);
  v194 = vorrq_s8(*a1, a1[1]);
  return vorr_s8(*v194.i8, *&vextq_s8(v194, v194, 8uLL)) != 0;
}

uint64_t *fe_loose_invert(uint64_t *a1, unint64_t *a2)
{
  v4 = a2[3];
  v3 = a2[4];
  v5 = a2[1];
  v6 = a2[2];
  v7 = 2 * v6;
  v8 = (v6 * (38 * v3)) >> 64;
  v9 = v6 * 38 * v3;
  v10 = (v6 * (38 * v4)) >> 64;
  v11 = v6 * 38 * v4;
  v12 = (v6 * v6) >> 64;
  v13 = v6 * v6;
  v14 = v5 * 2 * v4;
  v15 = __PAIR128__(v10 + __CFADD__(v5 * 38 * v3, v11) + ((v5 * (38 * v3)) >> 64), v5 * 38 * v3 + v11) + *a2 * *a2;
  v16 = __CFADD__(v14, v13);
  v17 = v14 + v13;
  v18 = (*a2 * v7) >> 64;
  v19 = *a2 * v7;
  v21 = v15 >> 51;
  v20 = __PAIR128__(v12 + v16 + ((v5 * (2 * v4)) >> 64), v17) + *a2 * (2 * v3);
  v23 = (v5 * v7 + 19 * v3 * v3 + *a2 * (2 * v4)) >> 64;
  v22 = v5 * v7 + 19 * v3 * v3 + *a2 * 2 * v4;
  v25 = v5 * v5 + v4 * 38 * v3 + v19;
  v24 = (v5 * v5 + v4 * (38 * v3) + __PAIR128__(v18, v19)) >> 64;
  v27 = __PAIR128__(v8, v9) + 19 * v4 * v4 + *a2 * (2 * v5);
  v26 = *(&v27 + 1);
  if (__CFADD__(v27, v21))
  {
    v26 = *(&v27 + 1) + 1;
  }

  *(&v29 + 1) = v26;
  *&v29 = v27 + v21;
  v28 = v29 >> 51;
  if (__CFADD__(v25, v28))
  {
    ++v24;
  }

  *(&v31 + 1) = v24;
  *&v31 = v25 + v28;
  v30 = v31 >> 51;
  v16 = __CFADD__(v22, v30);
  v32 = v22 + v30;
  if (v16)
  {
    ++v23;
  }

  *(&v34 + 1) = v23;
  *&v34 = v32;
  v33 = v34 >> 51;
  v35 = v32 & 0x7FFFFFFFFFFFFLL;
  v36 = v20 + v33;
  if (__CFADD__(v20, v33))
  {
    v37 = *(&v20 + 1) + 1;
  }

  else
  {
    v37 = *(&v20 + 1);
  }

  *(&v38 + 1) = v37;
  *&v38 = v20 + v33;
  v39 = (v15 & 0x7FFFFFFFFFFFFLL) + 19 * (v38 >> 51);
  v40 = v39 & 0x7FFFFFFFFFFFFLL;
  v41 = ((v27 + v21) & 0x7FFFFFFFFFFFFLL) + (v39 >> 51);
  v42 = v41 & 0x7FFFFFFFFFFFFLL;
  v43 = ((v25 + v28) & 0x7FFFFFFFFFFFFLL) + (v41 >> 51);
  v826 = v40;
  v827 = v42;
  v829 = v35;
  v830 = v36 & 0x7FFFFFFFFFFFFLL;
  v44 = 19 * (v36 & 0x7FFFFFFFFFFFFLL);
  v45 = 38 * (v36 & 0x7FFFFFFFFFFFFLL);
  v46 = 2 * (v36 & 0x7FFFFFFFFFFFFLL);
  v47 = 2 * v35;
  v48 = ((v36 & 0x7FFFFFFFFFFFFLL) * v44) >> 64;
  v49 = (v36 & 0x7FFFFFFFFFFFFLL) * v44;
  v50 = (v35 * v45) >> 64;
  v51 = v35 * v45;
  v52 = (v35 * (19 * v35)) >> 64;
  v53 = v35 * 19 * v35;
  v54 = (v43 * (38 * v35)) >> 64;
  v55 = v43 * 38 * v35;
  v56 = (v42 * (2 * v35)) >> 64;
  v57 = v42 * 2 * v35;
  v58 = ((2 * v43) * v42) >> 64;
  v59 = v42 * v45 + v40 * v40;
  v60 = (v40 * v46) >> 64;
  v61 = v40 * v46;
  v62 = (v40 * v47) >> 64;
  v63 = v40 * v47;
  v64 = 2 * v43 * v42;
  v65 = v42 * v42 + __PAIR128__(v50, v51) + (2 * v43) * v40;
  v828 = v43;
  v67 = v43 * v45 + v53;
  v66 = (v43 * v45 + __PAIR128__(v52, v53)) >> 64;
  v68 = (v43 * v43) >> 64;
  v69 = v43 * v43;
  *(&v38 + 1) = v54 + __CFADD__(v59, v55) + *(&v59 + 1);
  *&v38 = v59 + v55;
  v70 = v38 >> 51;
  v71 = (v59 + v55) & 0x7FFFFFFFFFFFFLL;
  v73 = __PAIR128__(v66, v67) + (2 * v42) * v40;
  v72 = *(&v73 + 1);
  if (__CFADD__(v73, v70))
  {
    v72 = *(&v73 + 1) + 1;
  }

  *(&v74 + 1) = v72;
  *&v74 = v73 + v70;
  v75 = v65 + (v74 >> 51);
  v76 = __PAIR128__(v48 + __CFADD__(v63, v49) + v62, v63 + v49) + __PAIR128__(v58, v64) + (v75 >> 51);
  v77 = __PAIR128__(v56, v57) + __PAIR128__(v60, v61) + __PAIR128__(v68, v69) + (v76 >> 51);
  v78 = v77 & 0x7FFFFFFFFFFFFLL;
  v79 = v71 + 19 * (v77 >> 51);
  v80 = v79 & 0x7FFFFFFFFFFFFLL;
  v81 = ((v73 + v70) & 0x7FFFFFFFFFFFFLL) + (v79 >> 51);
  v82 = v81 & 0x7FFFFFFFFFFFFLL;
  v83 = (v75 & 0x7FFFFFFFFFFFFLL) + (v81 >> 51);
  v84 = 38 * (v77 & 0x7FFFFFFFFFFFFLL);
  v85 = 2 * (v77 & 0x7FFFFFFFFFFFFLL);
  v86 = 2 * v82;
  v87 = (v78 * (19 * v78)) >> 64;
  v88 = v78 * 19 * v78;
  v89 = ((v76 & 0x7FFFFFFFFFFFFLL) * v84) >> 64;
  v90 = (v76 & 0x7FFFFFFFFFFFFLL) * v84;
  v91 = (v83 * v84) >> 64;
  v92 = v83 * v84;
  v93 = v83 * 38 * (v76 & 0x7FFFFFFFFFFFFLL);
  v94 = v82 * v84 + v80 * v80;
  v95 = (v82 * (2 * (v76 & 0x7FFFFFFFFFFFFLL))) >> 64;
  v16 = __CFADD__(v94, v93);
  v96 = v94 + v93;
  v97 = v82 * 2 * (v76 & 0x7FFFFFFFFFFFFLL);
  v98 = v82 * v82 + __PAIR128__(v89, v90);
  v99 = ((2 * v83) * v82) >> 64;
  v100 = 2 * v83 * v82;
  v101 = v98 + (2 * v83) * v80;
  v102 = (v80 * v85) >> 64;
  v103 = v80 * v85;
  v104 = v92;
  v105 = (v80 * (2 * (v76 & 0x7FFFFFFFFFFFFLL))) >> 64;
  v106 = v80 * 2 * (v76 & 0x7FFFFFFFFFFFFLL);
  v108 = (__PAIR128__(v91, v104) + (v76 & 0x7FFFFFFFFFFFFLL) * 19 * (v76 & 0x7FFFFFFFFFFFFLL) + v86 * v80) >> 64;
  v107 = v104 + (v76 & 0x7FFFFFFFFFFFFLL) * 19 * (v76 & 0x7FFFFFFFFFFFFLL) + v86 * v80;
  *(&v74 + 1) = ((v83 * (38 * (v76 & 0x7FFFFFFFFFFFFLL))) >> 64) + v16 + *(&v94 + 1);
  *&v74 = v96;
  v109 = v74 >> 51;
  v16 = __CFADD__(v107, v109);
  v110 = v107 + v109;
  if (v16)
  {
    ++v108;
  }

  *(&v111 + 1) = v108;
  *&v111 = v110;
  v112 = __PAIR128__(v87 + __CFADD__(v106, v88) + v105, v106 + v88) + __PAIR128__(v99, v100) + ((v101 + (v111 >> 51)) >> 51);
  v113 = __PAIR128__(v95, v97) + __PAIR128__(v102, v103) + v83 * v83 + (v112 >> 51);
  v114 = (v96 & 0x7FFFFFFFFFFFFLL) + 19 * (v113 >> 51);
  v115 = (v110 & 0x7FFFFFFFFFFFFLL) + (v114 >> 51);
  v821 = v114 & 0x7FFFFFFFFFFFFLL;
  v822 = v115 & 0x7FFFFFFFFFFFFLL;
  v823 = ((v101 + (v111 >> 51)) & 0x7FFFFFFFFFFFFLL) + (v115 >> 51);
  v824 = v112 & 0x7FFFFFFFFFFFFLL;
  v825 = v113 & 0x7FFFFFFFFFFFFLL;
  fe_mul_impl(&v821, a2, &v821);
  fe_mul_impl(&v826, &v826, &v821);
  v116 = v827 * (38 * v830) + v828 * (38 * v829) + v826 * v826;
  v117 = v827 * (2 * v829) + v828 * v828 + v826 * (2 * v830);
  v118 = (v827 * (2 * v828) + (19 * v830) * v830 + v826 * (2 * v829)) >> 64;
  v119 = v827 * 2 * v828 + 19 * v830 * v830 + v826 * 2 * v829;
  v120 = (v827 * v827 + v829 * (38 * v830) + v826 * (2 * v828)) >> 64;
  v121 = v827 * v827 + v829 * 38 * v830 + v826 * 2 * v828;
  v123 = (v828 * (38 * v830) + (19 * v829) * v829 + v826 * (2 * v827)) >> 64;
  v122 = v828 * 38 * v830 + 19 * v829 * v829 + v826 * 2 * v827;
  v124 = v116 >> 51;
  v16 = __CFADD__(v122, v124);
  v125 = v122 + v124;
  if (v16)
  {
    ++v123;
  }

  *(&v127 + 1) = v123;
  *&v127 = v125;
  v126 = v127 >> 51;
  v16 = __CFADD__(v121, v126);
  v128 = v121 + v126;
  if (v16)
  {
    ++v120;
  }

  *(&v130 + 1) = v120;
  *&v130 = v128;
  v129 = v130 >> 51;
  v16 = __CFADD__(v119, v129);
  v131 = v119 + v129;
  if (v16)
  {
    ++v118;
  }

  *(&v133 + 1) = v118;
  *&v133 = v131;
  v132 = v133 >> 51;
  v16 = __CFADD__(v117, v132);
  v134 = v117 + v132;
  if (v16)
  {
    v135 = *(&v117 + 1) + 1;
  }

  else
  {
    v135 = (v827 * (2 * v829) + v828 * v828 + v826 * (2 * v830)) >> 64;
  }

  *(&v136 + 1) = v135;
  *&v136 = v134;
  v137 = (v116 & 0x7FFFFFFFFFFFFLL) + 19 * (v136 >> 51);
  v138 = (v125 & 0x7FFFFFFFFFFFFLL) + (v137 >> 51);
  v816 = v137 & 0x7FFFFFFFFFFFFLL;
  v817 = v138 & 0x7FFFFFFFFFFFFLL;
  v818 = (v128 & 0x7FFFFFFFFFFFFLL) + (v138 >> 51);
  v819 = v131 & 0x7FFFFFFFFFFFFLL;
  v820 = v134 & 0x7FFFFFFFFFFFFLL;
  fe_mul_impl(&v821, &v821, &v816);
  v139 = v822 * (38 * v825) + v823 * (38 * v824) + v821 * v821;
  v141 = v139 >> 51;
  v140 = v822 * (2 * v824) + v823 * v823 + v821 * (2 * v825);
  v143 = (v822 * (2 * v823) + (19 * v825) * v825 + v821 * (2 * v824)) >> 64;
  v142 = v822 * 2 * v823 + 19 * v825 * v825 + v821 * 2 * v824;
  v145 = (v822 * v822 + v824 * (38 * v825) + v821 * (2 * v823)) >> 64;
  v144 = v822 * v822 + v824 * 38 * v825 + v821 * 2 * v823;
  v147 = (v823 * (38 * v825) + (19 * v824) * v824 + v821 * (2 * v822)) >> 64;
  v146 = v823 * 38 * v825 + 19 * v824 * v824 + v821 * 2 * v822;
  v16 = __CFADD__(v146, v141);
  v148 = v146 + v141;
  if (v16)
  {
    ++v147;
  }

  *(&v150 + 1) = v147;
  *&v150 = v148;
  v149 = v150 >> 51;
  v16 = __CFADD__(v144, v149);
  v151 = v144 + v149;
  if (v16)
  {
    ++v145;
  }

  *(&v153 + 1) = v145;
  *&v153 = v151;
  v152 = v153 >> 51;
  v154 = v148 & 0x7FFFFFFFFFFFFLL;
  v155 = v151 & 0x7FFFFFFFFFFFFLL;
  v16 = __CFADD__(v142, v152);
  v156 = v142 + v152;
  if (v16)
  {
    ++v143;
  }

  *(&v158 + 1) = v143;
  *&v158 = v156;
  v157 = v158 >> 51;
  v159 = v156 & 0x7FFFFFFFFFFFFLL;
  if (__CFADD__(v140, v157))
  {
    v160 = *(&v140 + 1) + 1;
  }

  else
  {
    v160 = (v822 * (2 * v824) + v823 * v823 + v821 * (2 * v825)) >> 64;
  }

  *(&v161 + 1) = v160;
  *&v161 = v140 + v157;
  v162 = (v140 + v157) & 0x7FFFFFFFFFFFFLL;
  v163 = (v139 & 0x7FFFFFFFFFFFFLL) + 19 * (v161 >> 51);
  v164 = v163 & 0x7FFFFFFFFFFFFLL;
  v165 = v154 + (v163 >> 51);
  v166 = v165 & 0x7FFFFFFFFFFFFLL;
  v167 = v155 + (v165 >> 51);
  v168 = 38 * v162;
  v169 = 2 * v162;
  v170 = (v162 * (19 * v162)) >> 64;
  v171 = v162 * 19 * v162;
  v172 = ((v165 & 0x7FFFFFFFFFFFFLL) * v168) >> 64;
  v173 = (v165 & 0x7FFFFFFFFFFFFLL) * v168;
  v174 = ((v165 & 0x7FFFFFFFFFFFFLL) * (2 * v159)) >> 64;
  v175 = v166 * 2 * v159;
  v176 = ((2 * v167) * v166) >> 64;
  v177 = __PAIR128__(v172, v173) + v164 * v164;
  v178 = (v164 * v169) >> 64;
  v179 = v164 * v169;
  v183 = (v164 * (2 * v159)) >> 64;
  v184 = v164 * 2 * v159;
  v182 = v177 + v167 * (38 * v159);
  v181 = v182 >> 64;
  v180 = v182;
  v185 = ((2 * v167) * v164) >> 64;
  v186 = ((2 * v166) * v164) >> 64;
  v187 = 2 * v166 * v164;
  v188 = 2 * v167 * v164;
  v189 = 2 * v167 * v166;
  v191 = v166 * v166 + v159 * v168;
  v190 = (v166 * v166 + v159 * v168) >> 64;
  v192 = (v167 * v168) >> 64;
  v193 = v167 * v168;
  v194 = (v167 * v167) >> 64;
  v195 = v167 * v167;
  v196 = __PAIR128__(v181, v180) >> 51;
  v197 = v180 & 0x7FFFFFFFFFFFFLL;
  v199 = __PAIR128__(v192, v193) + v159 * (19 * v159) + __PAIR128__(v186, v187);
  v198 = *(&v199 + 1);
  if (__CFADD__(v199, v196))
  {
    v198 = *(&v199 + 1) + 1;
  }

  *(&v200 + 1) = v198;
  *&v200 = v199 + v196;
  v201 = __PAIR128__(v190, v191) + __PAIR128__(v185, v188) + (v200 >> 51);
  v202 = __PAIR128__(v170 + __CFADD__(v184, v171) + v183, v184 + v171) + __PAIR128__(v176, v189) + (v201 >> 51);
  v203 = __PAIR128__(v174, v175) + __PAIR128__(v178, v179) + __PAIR128__(v194, v195);
  v204 = (v203 + (v202 >> 51)) & 0x7FFFFFFFFFFFFLL;
  v205 = v197 + 19 * ((v203 + (v202 >> 51)) >> 51);
  v206 = v205 & 0x7FFFFFFFFFFFFLL;
  v207 = ((v199 + v196) & 0x7FFFFFFFFFFFFLL) + (v205 >> 51);
  v208 = v207 & 0x7FFFFFFFFFFFFLL;
  v209 = (v201 & 0x7FFFFFFFFFFFFLL) + (v207 >> 51);
  v210 = 38 * v204;
  v211 = 2 * v204;
  v212 = 2 * (v207 & 0x7FFFFFFFFFFFFLL);
  v213 = (v204 * (19 * v204)) >> 64;
  v214 = v204 * 19 * v204;
  v215 = (v208 * (2 * (v202 & 0x7FFFFFFFFFFFFLL))) >> 64;
  v216 = v208 * 2 * (v202 & 0x7FFFFFFFFFFFFLL);
  v217 = ((2 * v209) * v208) >> 64;
  v218 = (v206 * v211) >> 64;
  v219 = v206 * v211;
  v223 = (v206 * (2 * (v202 & 0x7FFFFFFFFFFFFLL))) >> 64;
  v224 = v206 * 2 * (v202 & 0x7FFFFFFFFFFFFLL);
  v222 = v208 * v210 + v206 * v206 + v209 * (38 * (v202 & 0x7FFFFFFFFFFFFLL));
  v221 = v222 >> 64;
  v220 = v222;
  v225 = ((2 * v209) * v206) >> 64;
  v226 = (v212 * v206) >> 64;
  v227 = v212 * v206;
  v228 = 2 * v209 * v206;
  v229 = 2 * v209 * v208;
  v231 = v208 * v208 + (v202 & 0x7FFFFFFFFFFFFLL) * v210;
  v230 = (v208 * v208 + (v202 & 0x7FFFFFFFFFFFFLL) * v210) >> 64;
  v232 = (v209 * v210) >> 64;
  v233 = v209 * v210;
  v234 = (v209 * v209) >> 64;
  v235 = v209 * v209;
  v236 = __PAIR128__(v221, v220) >> 51;
  v237 = v220 & 0x7FFFFFFFFFFFFLL;
  v239 = (__PAIR128__(v232, v233) + (v202 & 0x7FFFFFFFFFFFFLL) * 19 * (v202 & 0x7FFFFFFFFFFFFLL) + __PAIR128__(v226, v227)) >> 64;
  v238 = v233 + (v202 & 0x7FFFFFFFFFFFFLL) * 19 * (v202 & 0x7FFFFFFFFFFFFLL) + v227;
  v16 = __CFADD__(v238, v236);
  v240 = v238 + v236;
  if (v16)
  {
    ++v239;
  }

  *(&v241 + 1) = v239;
  *&v241 = v240;
  v242 = __PAIR128__(v230, v231) + __PAIR128__(v225, v228) + (v241 >> 51);
  v243 = __PAIR128__(v213 + __CFADD__(v224, v214) + v223, v224 + v214) + __PAIR128__(v217, v229) + (v242 >> 51);
  v244 = v243 & 0x7FFFFFFFFFFFFLL;
  v245 = __PAIR128__(v215, v216) + __PAIR128__(v218, v219) + __PAIR128__(v234, v235) + (v243 >> 51);
  v246 = v245 & 0x7FFFFFFFFFFFFLL;
  v247 = v237 + 19 * (v245 >> 51);
  v248 = v247 & 0x7FFFFFFFFFFFFLL;
  v249 = (v240 & 0x7FFFFFFFFFFFFLL) + (v247 >> 51);
  v250 = v249 & 0x7FFFFFFFFFFFFLL;
  v251 = (v242 & 0x7FFFFFFFFFFFFLL) + (v249 >> 51);
  v252 = 2 * (v245 & 0x7FFFFFFFFFFFFLL);
  v253 = 2 * (v243 & 0x7FFFFFFFFFFFFLL);
  v254 = (v246 * (19 * v246)) >> 64;
  v255 = v246 * 19 * v246;
  v256 = v251 * 38 * (v243 & 0x7FFFFFFFFFFFFLL);
  v257 = v250 * v253;
  v258 = v250 * (38 * (v245 & 0x7FFFFFFFFFFFFLL)) + v248 * v248;
  v259 = (v248 * v252) >> 64;
  v260 = v248 * v252;
  v16 = __CFADD__(v258, v256);
  v261 = v258 + v256;
  v262 = (v248 * v253) >> 64;
  v263 = v248 * v253;
  v264 = v250 * v250 + (v243 & 0x7FFFFFFFFFFFFLL) * 38 * (v245 & 0x7FFFFFFFFFFFFLL) + (2 * v251) * v248;
  v266 = (v251 * (38 * (v245 & 0x7FFFFFFFFFFFFLL)) + v244 * (19 * v244) + (2 * v250) * v248) >> 64;
  v265 = v251 * 38 * (v245 & 0x7FFFFFFFFFFFFLL) + v244 * 19 * v244 + 2 * v250 * v248;
  *(&v241 + 1) = ((v251 * (38 * (v243 & 0x7FFFFFFFFFFFFLL))) >> 64) + v16 + *(&v258 + 1);
  *&v241 = v261;
  v267 = v241 >> 51;
  v16 = __CFADD__(v265, v267);
  v268 = v265 + v267;
  if (v16)
  {
    ++v266;
  }

  *(&v270 + 1) = v266;
  *&v270 = v268;
  v269 = v270 >> 51;
  *(&v270 + 1) = (v264 + (v270 >> 51)) >> 64;
  *&v270 = v264 + v269;
  v271 = __PAIR128__(v254 + __CFADD__(v263, v255) + v262, v263 + v255) + (2 * v251) * v250 + (v270 >> 51);
  v272 = __PAIR128__((v250 * (2 * (v243 & 0x7FFFFFFFFFFFFLL))) >> 64, v257) + __PAIR128__(v259, v260) + v251 * v251 + (v271 >> 51);
  v273 = v272 & 0x7FFFFFFFFFFFFLL;
  v274 = (v261 & 0x7FFFFFFFFFFFFLL) + 19 * (v272 >> 51);
  v275 = v274 & 0x7FFFFFFFFFFFFLL;
  v276 = (v268 & 0x7FFFFFFFFFFFFLL) + (v274 >> 51);
  v277 = v276 & 0x7FFFFFFFFFFFFLL;
  v278 = ((v264 + v269) & 0x7FFFFFFFFFFFFLL) + (v276 >> 51);
  v279 = v277 * (38 * (v272 & 0x7FFFFFFFFFFFFLL)) + v275 * v275 + v278 * (38 * (v271 & 0x7FFFFFFFFFFFFLL));
  v280 = v277 * v277 + (v271 & 0x7FFFFFFFFFFFFLL) * 38 * (v272 & 0x7FFFFFFFFFFFFLL) + (2 * v278) * v275;
  v281 = 2 * (v271 & 0x7FFFFFFFFFFFFLL);
  v282 = (v278 * (38 * (v272 & 0x7FFFFFFFFFFFFLL)) + (v271 & 0x7FFFFFFFFFFFFLL) * 19 * (v271 & 0x7FFFFFFFFFFFFLL) + (2 * v277) * v275) >> 64;
  v283 = v278 * 38 * (v272 & 0x7FFFFFFFFFFFFLL) + (v271 & 0x7FFFFFFFFFFFFLL) * 19 * (v271 & 0x7FFFFFFFFFFFFLL) + 2 * v277 * v275;
  v284 = v279 >> 51;
  v16 = __CFADD__(v283, v284);
  v285 = v283 + v284;
  if (v16)
  {
    ++v282;
  }

  *(&v286 + 1) = v282;
  *&v286 = v285;
  v289 = v280 + (v286 >> 51);
  v287 = v289 >> 64;
  v288 = v289;
  v290 = v275 * v281 + v273 * 19 * v273 + 2 * v278 * v277 + (__PAIR128__(v287, v288) >> 51);
  v820 = (v277 * v281 + v275 * 2 * v273 + v278 * v278 + ((v275 * v281 + v273 * (19 * v273) + (2 * v278) * v277 + ((v280 + (v286 >> 51)) >> 51)) >> 51)) & 0x7FFFFFFFFFFFFLL;
  v291 = (v279 & 0x7FFFFFFFFFFFFLL) + 19 * ((v277 * v281 + v275 * (2 * v273) + v278 * v278 + ((v275 * v281 + v273 * (19 * v273) + (2 * v278) * v277 + ((v280 + (v286 >> 51)) >> 51)) >> 51)) >> 51);
  v292 = (v285 & 0x7FFFFFFFFFFFFLL) + (v291 >> 51);
  v818 = (v288 & 0x7FFFFFFFFFFFFLL) + (v292 >> 51);
  v819 = v290 & 0x7FFFFFFFFFFFFLL;
  v816 = v291 & 0x7FFFFFFFFFFFFLL;
  v817 = v292 & 0x7FFFFFFFFFFFFLL;
  fe_mul_impl(&v821, &v816, &v821);
  v293 = v822 * (38 * v825) + v823 * (38 * v824) + v821 * v821;
  v294 = v822 * (2 * v824) + v823 * v823 + v821 * (2 * v825);
  v295 = (v822 * (2 * v823) + (19 * v825) * v825 + v821 * (2 * v824)) >> 64;
  v296 = v822 * 2 * v823 + 19 * v825 * v825 + v821 * 2 * v824;
  v297 = (v822 * v822 + v824 * (38 * v825) + v821 * (2 * v823)) >> 64;
  v298 = v822 * v822 + v824 * 38 * v825 + v821 * 2 * v823;
  v300 = (v823 * (38 * v825) + (19 * v824) * v824 + v821 * (2 * v822)) >> 64;
  v299 = v823 * 38 * v825 + 19 * v824 * v824 + v821 * 2 * v822;
  v301 = v293 >> 51;
  v16 = __CFADD__(v299, v301);
  v302 = v299 + v301;
  if (v16)
  {
    ++v300;
  }

  *(&v304 + 1) = v300;
  *&v304 = v302;
  v303 = v304 >> 51;
  v16 = __CFADD__(v298, v303);
  v305 = v298 + v303;
  if (v16)
  {
    ++v297;
  }

  *(&v307 + 1) = v297;
  *&v307 = v305;
  v306 = v307 >> 51;
  v16 = __CFADD__(v296, v306);
  v308 = v296 + v306;
  if (v16)
  {
    ++v295;
  }

  *(&v310 + 1) = v295;
  *&v310 = v308;
  v309 = v310 >> 51;
  v16 = __CFADD__(v294, v309);
  v311 = v294 + v309;
  v312 = v302 & 0x7FFFFFFFFFFFFLL;
  v313 = v305 & 0x7FFFFFFFFFFFFLL;
  v314 = v308 & 0x7FFFFFFFFFFFFLL;
  if (v16)
  {
    v315 = *(&v294 + 1) + 1;
  }

  else
  {
    v315 = (v822 * (2 * v824) + v823 * v823 + v821 * (2 * v825)) >> 64;
  }

  *(&v316 + 1) = v315;
  *&v316 = v311;
  v317 = v311 & 0x7FFFFFFFFFFFFLL;
  v318 = (v293 & 0x7FFFFFFFFFFFFLL) + 19 * (v316 >> 51);
  v319 = v318 & 0x7FFFFFFFFFFFFLL;
  v320 = v312 + (v318 >> 51);
  v321 = v320 & 0x7FFFFFFFFFFFFLL;
  v322 = v313 + (v320 >> 51);
  v323 = 9;
  do
  {
    v324 = v321 * (38 * v317) + v322 * (38 * v314) + v319 * v319;
    v325 = v321 * (2 * v314) + v322 * v322 + v319 * (2 * v317);
    v326 = (v319 * (2 * v321)) >> 64;
    v327 = v319 * 2 * v321;
    v330 = v321 * (2 * v322) + (19 * v317) * v317 + v319 * (2 * v314);
    v329 = v330 >> 64;
    v328 = v330;
    v332 = v321 * v321 + v314 * (38 * v317) + v319 * (2 * v322);
    v331 = *(&v332 + 1);
    v334 = v322 * 38 * v317 + 19 * v314 * v314 + v327;
    v333 = (v322 * (38 * v317) + (19 * v314) * v314 + __PAIR128__(v326, v327)) >> 64;
    v335 = v324 >> 51;
    v336 = v334 + v335;
    if (__CFADD__(v334, v335))
    {
      ++v333;
    }

    *(&v338 + 1) = v333;
    *&v338 = v334 + v335;
    v337 = v338 >> 51;
    v339 = v332 + v337;
    if (__CFADD__(v332, v337))
    {
      v331 = *(&v332 + 1) + 1;
    }

    *(&v341 + 1) = v331;
    *&v341 = v332 + v337;
    v340 = v341 >> 51;
    v16 = __CFADD__(v328, v340);
    v342 = v328 + v340;
    if (v16)
    {
      v343 = v329 + 1;
    }

    else
    {
      v343 = v329;
    }

    *(&v345 + 1) = v343;
    *&v345 = v342;
    v344 = v345 >> 51;
    v16 = __CFADD__(v325, v344);
    v346 = v325 + v344;
    if (v16)
    {
      v347 = *(&v325 + 1) + 1;
    }

    else
    {
      v347 = *(&v325 + 1);
    }

    *(&v348 + 1) = v347;
    *&v348 = v346;
    v349 = (v324 & 0x7FFFFFFFFFFFFLL) + 19 * (v348 >> 51);
    v350 = v336 & 0x7FFFFFFFFFFFFLL;
    v351 = v339 & 0x7FFFFFFFFFFFFLL;
    v314 = v342 & 0x7FFFFFFFFFFFFLL;
    v317 = v346 & 0x7FFFFFFFFFFFFLL;
    v352 = v350 + (v349 >> 51);
    v319 = v349 & 0x7FFFFFFFFFFFFLL;
    v322 = v351 + (v352 >> 51);
    v321 = v352 & 0x7FFFFFFFFFFFFLL;
    --v323;
  }

  while (v323);
  v819 = v314;
  v820 = v317;
  v817 = v321;
  v818 = v322;
  v816 = v349 & 0x7FFFFFFFFFFFFLL;
  fe_mul_impl(&v816, &v816, &v821);
  v353 = v817 * (38 * v820) + v818 * (38 * v819) + v816 * v816;
  v354 = v817 * (2 * v819) + v818 * v818 + v816 * (2 * v820);
  v355 = (v817 * (2 * v818) + 19 * v820 * v820 + v816 * (2 * v819)) >> 64;
  v356 = v817 * 2 * v818 + 19 * v820 * v820 + v816 * 2 * v819;
  v357 = (v817 * v817 + v819 * (38 * v820) + v816 * (2 * v818)) >> 64;
  v358 = v817 * v817 + v819 * 38 * v820 + v816 * 2 * v818;
  v360 = (v818 * (38 * v820) + (19 * v819) * v819 + v816 * (2 * v817)) >> 64;
  v359 = v818 * 38 * v820 + 19 * v819 * v819 + v816 * 2 * v817;
  v361 = v353 >> 51;
  v16 = __CFADD__(v359, v361);
  v362 = v359 + v361;
  if (v16)
  {
    ++v360;
  }

  *(&v364 + 1) = v360;
  *&v364 = v362;
  v363 = v364 >> 51;
  v16 = __CFADD__(v358, v363);
  v365 = v358 + v363;
  if (v16)
  {
    ++v357;
  }

  *(&v367 + 1) = v357;
  *&v367 = v365;
  v366 = v367 >> 51;
  v16 = __CFADD__(v356, v366);
  v368 = v356 + v366;
  if (v16)
  {
    ++v355;
  }

  *(&v370 + 1) = v355;
  *&v370 = v368;
  v369 = v370 >> 51;
  v16 = __CFADD__(v354, v369);
  v371 = v354 + v369;
  v372 = v362 & 0x7FFFFFFFFFFFFLL;
  v373 = v365 & 0x7FFFFFFFFFFFFLL;
  v374 = v368 & 0x7FFFFFFFFFFFFLL;
  if (v16)
  {
    v375 = *(&v354 + 1) + 1;
  }

  else
  {
    v375 = (v817 * (2 * v819) + v818 * v818 + v816 * (2 * v820)) >> 64;
  }

  *(&v376 + 1) = v375;
  *&v376 = v371;
  v377 = v371 & 0x7FFFFFFFFFFFFLL;
  v378 = (v353 & 0x7FFFFFFFFFFFFLL) + 19 * (v376 >> 51);
  v379 = v378 & 0x7FFFFFFFFFFFFLL;
  v380 = v372 + (v378 >> 51);
  v381 = v380 & 0x7FFFFFFFFFFFFLL;
  v382 = v373 + (v380 >> 51);
  v383 = 19;
  do
  {
    v384 = v381 * (38 * v377) + v382 * (38 * v374) + v379 * v379;
    v385 = v381 * (2 * v374) + v382 * v382 + v379 * (2 * v377);
    v386 = (v379 * (2 * v381)) >> 64;
    v387 = v379 * 2 * v381;
    v390 = v381 * (2 * v382) + (19 * v377) * v377 + v379 * (2 * v374);
    v388 = v390 >> 64;
    v389 = v390;
    v392 = v381 * v381 + v374 * (38 * v377) + v379 * (2 * v382);
    v391 = *(&v392 + 1);
    v394 = v382 * 38 * v377 + 19 * v374 * v374 + v387;
    v393 = (v382 * (38 * v377) + (19 * v374) * v374 + __PAIR128__(v386, v387)) >> 64;
    v395 = v384 >> 51;
    v396 = v394 + v395;
    if (__CFADD__(v394, v395))
    {
      ++v393;
    }

    *(&v398 + 1) = v393;
    *&v398 = v394 + v395;
    v397 = v398 >> 51;
    v399 = v392 + v397;
    if (__CFADD__(v392, v397))
    {
      v391 = *(&v392 + 1) + 1;
    }

    *(&v401 + 1) = v391;
    *&v401 = v392 + v397;
    v400 = v401 >> 51;
    v16 = __CFADD__(v389, v400);
    v402 = v389 + v400;
    if (v16)
    {
      v403 = v388 + 1;
    }

    else
    {
      v403 = v388;
    }

    *(&v405 + 1) = v403;
    *&v405 = v402;
    v404 = v405 >> 51;
    v16 = __CFADD__(v385, v404);
    v406 = v385 + v404;
    if (v16)
    {
      v407 = *(&v385 + 1) + 1;
    }

    else
    {
      v407 = *(&v385 + 1);
    }

    *(&v408 + 1) = v407;
    *&v408 = v406;
    v409 = (v384 & 0x7FFFFFFFFFFFFLL) + 19 * (v408 >> 51);
    v410 = v396 & 0x7FFFFFFFFFFFFLL;
    v411 = v399 & 0x7FFFFFFFFFFFFLL;
    v374 = v402 & 0x7FFFFFFFFFFFFLL;
    v377 = v406 & 0x7FFFFFFFFFFFFLL;
    v412 = v410 + (v409 >> 51);
    v379 = v409 & 0x7FFFFFFFFFFFFLL;
    v382 = v411 + (v412 >> 51);
    v381 = v412 & 0x7FFFFFFFFFFFFLL;
    --v383;
  }

  while (v383);
  v814 = v374;
  v815 = v377;
  v812 = v381;
  v813 = v382;
  v811 = v409 & 0x7FFFFFFFFFFFFLL;
  fe_mul_impl(&v816, &v811, &v816);
  v413 = v817 * (38 * v820) + v818 * (38 * v819) + v816 * v816;
  v414 = v817 * (2 * v819) + v818 * v818 + v816 * (2 * v820);
  v415 = (v817 * (2 * v818) + 19 * v820 * v820 + v816 * (2 * v819)) >> 64;
  v416 = v817 * 2 * v818 + 19 * v820 * v820 + v816 * 2 * v819;
  v417 = (v817 * v817 + v819 * (38 * v820) + v816 * (2 * v818)) >> 64;
  v418 = v817 * v817 + v819 * 38 * v820 + v816 * 2 * v818;
  v420 = (v818 * (38 * v820) + (19 * v819) * v819 + v816 * (2 * v817)) >> 64;
  v419 = v818 * 38 * v820 + 19 * v819 * v819 + v816 * 2 * v817;
  v421 = v413 >> 51;
  v16 = __CFADD__(v419, v421);
  v422 = v419 + v421;
  if (v16)
  {
    ++v420;
  }

  *(&v424 + 1) = v420;
  *&v424 = v422;
  v423 = v424 >> 51;
  v16 = __CFADD__(v418, v423);
  v425 = v418 + v423;
  if (v16)
  {
    ++v417;
  }

  *(&v427 + 1) = v417;
  *&v427 = v425;
  v426 = v427 >> 51;
  v16 = __CFADD__(v416, v426);
  v428 = v416 + v426;
  if (v16)
  {
    ++v415;
  }

  *(&v430 + 1) = v415;
  *&v430 = v428;
  v429 = v430 >> 51;
  v16 = __CFADD__(v414, v429);
  v431 = v414 + v429;
  v432 = v422 & 0x7FFFFFFFFFFFFLL;
  v433 = v425 & 0x7FFFFFFFFFFFFLL;
  v434 = v428 & 0x7FFFFFFFFFFFFLL;
  if (v16)
  {
    v435 = *(&v414 + 1) + 1;
  }

  else
  {
    v435 = (v817 * (2 * v819) + v818 * v818 + v816 * (2 * v820)) >> 64;
  }

  *(&v436 + 1) = v435;
  *&v436 = v431;
  v437 = v431 & 0x7FFFFFFFFFFFFLL;
  v438 = (v413 & 0x7FFFFFFFFFFFFLL) + 19 * (v436 >> 51);
  v439 = v438 & 0x7FFFFFFFFFFFFLL;
  v440 = v432 + (v438 >> 51);
  v441 = v440 & 0x7FFFFFFFFFFFFLL;
  v442 = v433 + (v440 >> 51);
  v443 = 9;
  do
  {
    v444 = v441 * (38 * v437) + v442 * (38 * v434) + v439 * v439;
    v445 = v441 * (2 * v434) + v442 * v442 + v439 * (2 * v437);
    v446 = (v439 * (2 * v441)) >> 64;
    v447 = v439 * 2 * v441;
    v450 = v441 * (2 * v442) + (19 * v437) * v437 + v439 * (2 * v434);
    v448 = v450 >> 64;
    v449 = v450;
    v452 = v441 * v441 + v434 * (38 * v437) + v439 * (2 * v442);
    v451 = *(&v452 + 1);
    v454 = v442 * 38 * v437 + 19 * v434 * v434 + v447;
    v453 = (v442 * (38 * v437) + (19 * v434) * v434 + __PAIR128__(v446, v447)) >> 64;
    v455 = v444 >> 51;
    v456 = v454 + v455;
    if (__CFADD__(v454, v455))
    {
      ++v453;
    }

    *(&v458 + 1) = v453;
    *&v458 = v454 + v455;
    v457 = v458 >> 51;
    v459 = v452 + v457;
    if (__CFADD__(v452, v457))
    {
      v451 = *(&v452 + 1) + 1;
    }

    *(&v461 + 1) = v451;
    *&v461 = v452 + v457;
    v460 = v461 >> 51;
    v16 = __CFADD__(v449, v460);
    v462 = v449 + v460;
    if (v16)
    {
      v463 = v448 + 1;
    }

    else
    {
      v463 = v448;
    }

    *(&v465 + 1) = v463;
    *&v465 = v462;
    v464 = v465 >> 51;
    v16 = __CFADD__(v445, v464);
    v466 = v445 + v464;
    if (v16)
    {
      v467 = *(&v445 + 1) + 1;
    }

    else
    {
      v467 = *(&v445 + 1);
    }

    *(&v468 + 1) = v467;
    *&v468 = v466;
    v469 = (v444 & 0x7FFFFFFFFFFFFLL) + 19 * (v468 >> 51);
    v470 = v456 & 0x7FFFFFFFFFFFFLL;
    v471 = v459 & 0x7FFFFFFFFFFFFLL;
    v434 = v462 & 0x7FFFFFFFFFFFFLL;
    v437 = v466 & 0x7FFFFFFFFFFFFLL;
    v472 = v470 + (v469 >> 51);
    v439 = v469 & 0x7FFFFFFFFFFFFLL;
    v442 = v471 + (v472 >> 51);
    v441 = v472 & 0x7FFFFFFFFFFFFLL;
    --v443;
  }

  while (v443);
  v819 = v434;
  v820 = v437;
  v817 = v441;
  v818 = v442;
  v816 = v469 & 0x7FFFFFFFFFFFFLL;
  fe_mul_impl(&v821, &v816, &v821);
  v473 = v822 * (38 * v825) + v823 * (38 * v824) + v821 * v821;
  v474 = v822 * (2 * v824) + v823 * v823 + v821 * (2 * v825);
  v475 = (v822 * (2 * v823) + (19 * v825) * v825 + v821 * (2 * v824)) >> 64;
  v476 = v822 * 2 * v823 + 19 * v825 * v825 + v821 * 2 * v824;
  v477 = (v822 * v822 + v824 * (38 * v825) + v821 * (2 * v823)) >> 64;
  v478 = v822 * v822 + v824 * 38 * v825 + v821 * 2 * v823;
  v480 = (v823 * (38 * v825) + (19 * v824) * v824 + v821 * (2 * v822)) >> 64;
  v479 = v823 * 38 * v825 + 19 * v824 * v824 + v821 * 2 * v822;
  v481 = v473 >> 51;
  v16 = __CFADD__(v479, v481);
  v482 = v479 + v481;
  if (v16)
  {
    ++v480;
  }

  *(&v484 + 1) = v480;
  *&v484 = v482;
  v483 = v484 >> 51;
  v16 = __CFADD__(v478, v483);
  v485 = v478 + v483;
  if (v16)
  {
    ++v477;
  }

  *(&v487 + 1) = v477;
  *&v487 = v485;
  v486 = v487 >> 51;
  v16 = __CFADD__(v476, v486);
  v488 = v476 + v486;
  if (v16)
  {
    ++v475;
  }

  *(&v490 + 1) = v475;
  *&v490 = v488;
  v489 = v490 >> 51;
  v16 = __CFADD__(v474, v489);
  v491 = v474 + v489;
  v492 = v482 & 0x7FFFFFFFFFFFFLL;
  v493 = v485 & 0x7FFFFFFFFFFFFLL;
  v494 = v488 & 0x7FFFFFFFFFFFFLL;
  if (v16)
  {
    v495 = *(&v474 + 1) + 1;
  }

  else
  {
    v495 = (v822 * (2 * v824) + v823 * v823 + v821 * (2 * v825)) >> 64;
  }

  *(&v496 + 1) = v495;
  *&v496 = v491;
  v497 = v491 & 0x7FFFFFFFFFFFFLL;
  v498 = (v473 & 0x7FFFFFFFFFFFFLL) + 19 * (v496 >> 51);
  v499 = v498 & 0x7FFFFFFFFFFFFLL;
  v500 = v492 + (v498 >> 51);
  v501 = v500 & 0x7FFFFFFFFFFFFLL;
  v502 = v493 + (v500 >> 51);
  v503 = 49;
  do
  {
    v504 = v501 * (38 * v497) + v502 * (38 * v494) + v499 * v499;
    v505 = v501 * (2 * v494) + v502 * v502 + v499 * (2 * v497);
    v506 = (v499 * (2 * v501)) >> 64;
    v507 = v499 * 2 * v501;
    v510 = v501 * (2 * v502) + (19 * v497) * v497 + v499 * (2 * v494);
    v508 = v510 >> 64;
    v509 = v510;
    v512 = v501 * v501 + v494 * (38 * v497) + v499 * (2 * v502);
    v511 = *(&v512 + 1);
    v514 = v502 * 38 * v497 + 19 * v494 * v494 + v507;
    v513 = (v502 * (38 * v497) + (19 * v494) * v494 + __PAIR128__(v506, v507)) >> 64;
    v515 = v504 >> 51;
    v516 = v514 + v515;
    if (__CFADD__(v514, v515))
    {
      ++v513;
    }

    *(&v518 + 1) = v513;
    *&v518 = v514 + v515;
    v517 = v518 >> 51;
    v519 = v512 + v517;
    if (__CFADD__(v512, v517))
    {
      v511 = *(&v512 + 1) + 1;
    }

    *(&v521 + 1) = v511;
    *&v521 = v512 + v517;
    v520 = v521 >> 51;
    v16 = __CFADD__(v509, v520);
    v522 = v509 + v520;
    if (v16)
    {
      v523 = v508 + 1;
    }

    else
    {
      v523 = v508;
    }

    *(&v525 + 1) = v523;
    *&v525 = v522;
    v524 = v525 >> 51;
    v16 = __CFADD__(v505, v524);
    v526 = v505 + v524;
    if (v16)
    {
      v527 = *(&v505 + 1) + 1;
    }

    else
    {
      v527 = *(&v505 + 1);
    }

    *(&v528 + 1) = v527;
    *&v528 = v526;
    v529 = (v504 & 0x7FFFFFFFFFFFFLL) + 19 * (v528 >> 51);
    v530 = v516 & 0x7FFFFFFFFFFFFLL;
    v531 = v519 & 0x7FFFFFFFFFFFFLL;
    v494 = v522 & 0x7FFFFFFFFFFFFLL;
    v497 = v526 & 0x7FFFFFFFFFFFFLL;
    v532 = v530 + (v529 >> 51);
    v499 = v529 & 0x7FFFFFFFFFFFFLL;
    v502 = v531 + (v532 >> 51);
    v501 = v532 & 0x7FFFFFFFFFFFFLL;
    --v503;
  }

  while (v503);
  v819 = v494;
  v820 = v497;
  v817 = v501;
  v818 = v502;
  v816 = v529 & 0x7FFFFFFFFFFFFLL;
  fe_mul_impl(&v816, &v816, &v821);
  v533 = v817 * (38 * v820) + v818 * (38 * v819) + v816 * v816;
  v534 = v817 * (2 * v819) + v818 * v818 + v816 * (2 * v820);
  v535 = (v817 * (2 * v818) + 19 * v820 * v820 + v816 * (2 * v819)) >> 64;
  v536 = v817 * 2 * v818 + 19 * v820 * v820 + v816 * 2 * v819;
  v537 = (v817 * v817 + v819 * (38 * v820) + v816 * (2 * v818)) >> 64;
  v538 = v817 * v817 + v819 * 38 * v820 + v816 * 2 * v818;
  v540 = (v818 * (38 * v820) + (19 * v819) * v819 + v816 * (2 * v817)) >> 64;
  v539 = v818 * 38 * v820 + 19 * v819 * v819 + v816 * 2 * v817;
  v541 = v533 >> 51;
  v16 = __CFADD__(v539, v541);
  v542 = v539 + v541;
  if (v16)
  {
    ++v540;
  }

  *(&v544 + 1) = v540;
  *&v544 = v542;
  v543 = v544 >> 51;
  v16 = __CFADD__(v538, v543);
  v545 = v538 + v543;
  if (v16)
  {
    ++v537;
  }

  *(&v547 + 1) = v537;
  *&v547 = v545;
  v546 = v547 >> 51;
  v16 = __CFADD__(v536, v546);
  v548 = v536 + v546;
  if (v16)
  {
    ++v535;
  }

  *(&v550 + 1) = v535;
  *&v550 = v548;
  v549 = v550 >> 51;
  v16 = __CFADD__(v534, v549);
  v551 = v534 + v549;
  v552 = v542 & 0x7FFFFFFFFFFFFLL;
  v553 = v545 & 0x7FFFFFFFFFFFFLL;
  v554 = v548 & 0x7FFFFFFFFFFFFLL;
  if (v16)
  {
    v555 = *(&v534 + 1) + 1;
  }

  else
  {
    v555 = (v817 * (2 * v819) + v818 * v818 + v816 * (2 * v820)) >> 64;
  }

  *(&v556 + 1) = v555;
  *&v556 = v551;
  v557 = v551 & 0x7FFFFFFFFFFFFLL;
  v558 = (v533 & 0x7FFFFFFFFFFFFLL) + 19 * (v556 >> 51);
  v559 = v558 & 0x7FFFFFFFFFFFFLL;
  v560 = v552 + (v558 >> 51);
  v561 = v560 & 0x7FFFFFFFFFFFFLL;
  v562 = v553 + (v560 >> 51);
  v563 = 99;
  do
  {
    v564 = v561 * (38 * v557) + v562 * (38 * v554) + v559 * v559;
    v565 = v561 * (2 * v554) + v562 * v562 + v559 * (2 * v557);
    v566 = (v559 * (2 * v561)) >> 64;
    v567 = v559 * 2 * v561;
    v570 = v561 * (2 * v562) + (19 * v557) * v557 + v559 * (2 * v554);
    v568 = v570 >> 64;
    v569 = v570;
    v572 = v561 * v561 + v554 * (38 * v557) + v559 * (2 * v562);
    v571 = *(&v572 + 1);
    v574 = v562 * 38 * v557 + 19 * v554 * v554 + v567;
    v573 = (v562 * (38 * v557) + (19 * v554) * v554 + __PAIR128__(v566, v567)) >> 64;
    v575 = v564 >> 51;
    v576 = v574 + v575;
    if (__CFADD__(v574, v575))
    {
      ++v573;
    }

    *(&v578 + 1) = v573;
    *&v578 = v574 + v575;
    v577 = v578 >> 51;
    v579 = v572 + v577;
    if (__CFADD__(v572, v577))
    {
      v571 = *(&v572 + 1) + 1;
    }

    *(&v581 + 1) = v571;
    *&v581 = v572 + v577;
    v580 = v581 >> 51;
    v16 = __CFADD__(v569, v580);
    v582 = v569 + v580;
    if (v16)
    {
      v583 = v568 + 1;
    }

    else
    {
      v583 = v568;
    }

    *(&v585 + 1) = v583;
    *&v585 = v582;
    v584 = v585 >> 51;
    v16 = __CFADD__(v565, v584);
    v586 = v565 + v584;
    if (v16)
    {
      v587 = *(&v565 + 1) + 1;
    }

    else
    {
      v587 = *(&v565 + 1);
    }

    *(&v588 + 1) = v587;
    *&v588 = v586;
    v589 = (v564 & 0x7FFFFFFFFFFFFLL) + 19 * (v588 >> 51);
    v590 = v576 & 0x7FFFFFFFFFFFFLL;
    v591 = v579 & 0x7FFFFFFFFFFFFLL;
    v554 = v582 & 0x7FFFFFFFFFFFFLL;
    v557 = v586 & 0x7FFFFFFFFFFFFLL;
    v592 = v590 + (v589 >> 51);
    v559 = v589 & 0x7FFFFFFFFFFFFLL;
    v562 = v591 + (v592 >> 51);
    v561 = v592 & 0x7FFFFFFFFFFFFLL;
    --v563;
  }

  while (v563);
  v814 = v554;
  v815 = v557;
  v812 = v561;
  v813 = v562;
  v811 = v589 & 0x7FFFFFFFFFFFFLL;
  fe_mul_impl(&v816, &v811, &v816);
  v593 = v817 * (38 * v820) + v818 * (38 * v819) + v816 * v816;
  v594 = v817 * (2 * v819) + v818 * v818 + v816 * (2 * v820);
  v595 = (v817 * (2 * v818) + 19 * v820 * v820 + v816 * (2 * v819)) >> 64;
  v596 = v817 * 2 * v818 + 19 * v820 * v820 + v816 * 2 * v819;
  v597 = (v817 * v817 + v819 * (38 * v820) + v816 * (2 * v818)) >> 64;
  v598 = v817 * v817 + v819 * 38 * v820 + v816 * 2 * v818;
  v600 = (v818 * (38 * v820) + (19 * v819) * v819 + v816 * (2 * v817)) >> 64;
  v599 = v818 * 38 * v820 + 19 * v819 * v819 + v816 * 2 * v817;
  v601 = v593 >> 51;
  v16 = __CFADD__(v599, v601);
  v602 = v599 + v601;
  if (v16)
  {
    ++v600;
  }

  *(&v604 + 1) = v600;
  *&v604 = v602;
  v603 = v604 >> 51;
  v16 = __CFADD__(v598, v603);
  v605 = v598 + v603;
  if (v16)
  {
    ++v597;
  }

  *(&v607 + 1) = v597;
  *&v607 = v605;
  v606 = v607 >> 51;
  v16 = __CFADD__(v596, v606);
  v608 = v596 + v606;
  if (v16)
  {
    ++v595;
  }

  *(&v610 + 1) = v595;
  *&v610 = v608;
  v609 = v610 >> 51;
  v16 = __CFADD__(v594, v609);
  v611 = v594 + v609;
  v612 = v602 & 0x7FFFFFFFFFFFFLL;
  v613 = v605 & 0x7FFFFFFFFFFFFLL;
  v614 = v608 & 0x7FFFFFFFFFFFFLL;
  if (v16)
  {
    v615 = *(&v594 + 1) + 1;
  }

  else
  {
    v615 = (v817 * (2 * v819) + v818 * v818 + v816 * (2 * v820)) >> 64;
  }

  *(&v616 + 1) = v615;
  *&v616 = v611;
  v617 = v611 & 0x7FFFFFFFFFFFFLL;
  v618 = (v593 & 0x7FFFFFFFFFFFFLL) + 19 * (v616 >> 51);
  v619 = v618 & 0x7FFFFFFFFFFFFLL;
  v620 = v612 + (v618 >> 51);
  v621 = v620 & 0x7FFFFFFFFFFFFLL;
  v622 = v613 + (v620 >> 51);
  v623 = 49;
  do
  {
    v624 = v621 * (38 * v617) + v622 * (38 * v614) + v619 * v619;
    v625 = v621 * (2 * v614) + v622 * v622 + v619 * (2 * v617);
    v626 = (v619 * (2 * v621)) >> 64;
    v627 = v619 * 2 * v621;
    v630 = v621 * (2 * v622) + (19 * v617) * v617 + v619 * (2 * v614);
    v628 = v630 >> 64;
    v629 = v630;
    v632 = v621 * v621 + v614 * (38 * v617) + v619 * (2 * v622);
    v631 = *(&v632 + 1);
    v634 = v622 * 38 * v617 + 19 * v614 * v614 + v627;
    v633 = (v622 * (38 * v617) + (19 * v614) * v614 + __PAIR128__(v626, v627)) >> 64;
    v635 = v624 >> 51;
    v636 = v634 + v635;
    if (__CFADD__(v634, v635))
    {
      ++v633;
    }

    *(&v638 + 1) = v633;
    *&v638 = v634 + v635;
    v637 = v638 >> 51;
    v639 = v632 + v637;
    if (__CFADD__(v632, v637))
    {
      v631 = *(&v632 + 1) + 1;
    }

    *(&v641 + 1) = v631;
    *&v641 = v632 + v637;
    v640 = v641 >> 51;
    v16 = __CFADD__(v629, v640);
    v642 = v629 + v640;
    if (v16)
    {
      v643 = v628 + 1;
    }

    else
    {
      v643 = v628;
    }

    *(&v645 + 1) = v643;
    *&v645 = v642;
    v644 = v645 >> 51;
    v16 = __CFADD__(v625, v644);
    v646 = v625 + v644;
    if (v16)
    {
      v647 = *(&v625 + 1) + 1;
    }

    else
    {
      v647 = *(&v625 + 1);
    }

    *(&v648 + 1) = v647;
    *&v648 = v646;
    v649 = (v624 & 0x7FFFFFFFFFFFFLL) + 19 * (v648 >> 51);
    v650 = v636 & 0x7FFFFFFFFFFFFLL;
    v651 = v639 & 0x7FFFFFFFFFFFFLL;
    v614 = v642 & 0x7FFFFFFFFFFFFLL;
    v617 = v646 & 0x7FFFFFFFFFFFFLL;
    v652 = v650 + (v649 >> 51);
    v619 = v649 & 0x7FFFFFFFFFFFFLL;
    v622 = v651 + (v652 >> 51);
    v621 = v652 & 0x7FFFFFFFFFFFFLL;
    --v623;
  }

  while (v623);
  v819 = v614;
  v820 = v617;
  v817 = v621;
  v818 = v622;
  v816 = v649 & 0x7FFFFFFFFFFFFLL;
  fe_mul_impl(&v821, &v816, &v821);
  v653 = v822 * (38 * v825) + v823 * (38 * v824) + v821 * v821;
  v655 = v653 >> 51;
  v654 = v822 * (2 * v824) + v823 * v823 + v821 * (2 * v825);
  v657 = (v822 * (2 * v823) + (19 * v825) * v825 + v821 * (2 * v824)) >> 64;
  v656 = v822 * 2 * v823 + 19 * v825 * v825 + v821 * 2 * v824;
  v659 = (v822 * v822 + v824 * (38 * v825) + v821 * (2 * v823)) >> 64;
  v658 = v822 * v822 + v824 * 38 * v825 + v821 * 2 * v823;
  v661 = (v823 * (38 * v825) + (19 * v824) * v824 + v821 * (2 * v822)) >> 64;
  v660 = v823 * 38 * v825 + 19 * v824 * v824 + v821 * 2 * v822;
  v16 = __CFADD__(v660, v655);
  v662 = v660 + v655;
  if (v16)
  {
    ++v661;
  }

  *(&v664 + 1) = v661;
  *&v664 = v662;
  v663 = v664 >> 51;
  v16 = __CFADD__(v658, v663);
  v665 = v658 + v663;
  if (v16)
  {
    ++v659;
  }

  *(&v667 + 1) = v659;
  *&v667 = v665;
  v666 = v667 >> 51;
  v668 = v662 & 0x7FFFFFFFFFFFFLL;
  v669 = v665 & 0x7FFFFFFFFFFFFLL;
  v16 = __CFADD__(v656, v666);
  v670 = v656 + v666;
  if (v16)
  {
    ++v657;
  }

  *(&v672 + 1) = v657;
  *&v672 = v670;
  v671 = v672 >> 51;
  v673 = v670 & 0x7FFFFFFFFFFFFLL;
  if (__CFADD__(v654, v671))
  {
    v674 = *(&v654 + 1) + 1;
  }

  else
  {
    v674 = (v822 * (2 * v824) + v823 * v823 + v821 * (2 * v825)) >> 64;
  }

  *(&v675 + 1) = v674;
  *&v675 = v654 + v671;
  v676 = (v654 + v671) & 0x7FFFFFFFFFFFFLL;
  v677 = (v653 & 0x7FFFFFFFFFFFFLL) + 19 * (v675 >> 51);
  v678 = v677 & 0x7FFFFFFFFFFFFLL;
  v679 = v668 + (v677 >> 51);
  v680 = v679 & 0x7FFFFFFFFFFFFLL;
  v681 = v669 + (v679 >> 51);
  v682 = 38 * v676;
  v683 = 2 * v676;
  v684 = (v676 * (19 * v676)) >> 64;
  v685 = v676 * 19 * v676;
  v686 = ((v679 & 0x7FFFFFFFFFFFFLL) * v682) >> 64;
  v687 = (v679 & 0x7FFFFFFFFFFFFLL) * v682;
  v688 = ((v679 & 0x7FFFFFFFFFFFFLL) * (2 * v673)) >> 64;
  v689 = v680 * 2 * v673;
  v690 = ((2 * v681) * v680) >> 64;
  v691 = __PAIR128__(v686, v687) + v678 * v678;
  v692 = (v678 * v683) >> 64;
  v693 = v678 * v683;
  v697 = (v678 * (2 * v673)) >> 64;
  v698 = v678 * 2 * v673;
  v696 = v691 + v681 * (38 * v673);
  v695 = v696 >> 64;
  v694 = v696;
  v699 = ((2 * v681) * v678) >> 64;
  v700 = ((2 * v680) * v678) >> 64;
  v701 = 2 * v680 * v678;
  v702 = 2 * v681 * v678;
  v703 = 2 * v681 * v680;
  v705 = v680 * v680 + v673 * v682;
  v704 = (v680 * v680 + v673 * v682) >> 64;
  v706 = (v681 * v682) >> 64;
  v707 = v681 * v682;
  v708 = (v681 * v681) >> 64;
  v709 = v681 * v681;
  v710 = __PAIR128__(v695, v694) >> 51;
  v711 = v694 & 0x7FFFFFFFFFFFFLL;
  v713 = __PAIR128__(v706, v707) + v673 * (19 * v673) + __PAIR128__(v700, v701);
  v712 = *(&v713 + 1);
  if (__CFADD__(v713, v710))
  {
    v712 = *(&v713 + 1) + 1;
  }

  *(&v714 + 1) = v712;
  *&v714 = v713 + v710;
  v715 = __PAIR128__(v704, v705) + __PAIR128__(v699, v702) + (v714 >> 51);
  v716 = __PAIR128__(v684 + __CFADD__(v698, v685) + v697, v698 + v685) + __PAIR128__(v690, v703) + (v715 >> 51);
  v717 = __PAIR128__(v688, v689) + __PAIR128__(v692, v693) + __PAIR128__(v708, v709);
  v718 = (v717 + (v716 >> 51)) & 0x7FFFFFFFFFFFFLL;
  v719 = v711 + 19 * ((v717 + (v716 >> 51)) >> 51);
  v720 = v719 & 0x7FFFFFFFFFFFFLL;
  v721 = ((v713 + v710) & 0x7FFFFFFFFFFFFLL) + (v719 >> 51);
  v722 = v721 & 0x7FFFFFFFFFFFFLL;
  v723 = (v715 & 0x7FFFFFFFFFFFFLL) + (v721 >> 51);
  v724 = 38 * v718;
  v725 = 2 * v718;
  v726 = 2 * (v721 & 0x7FFFFFFFFFFFFLL);
  v727 = (v718 * (19 * v718)) >> 64;
  v728 = v718 * 19 * v718;
  v729 = (v722 * (2 * (v716 & 0x7FFFFFFFFFFFFLL))) >> 64;
  v730 = v722 * 2 * (v716 & 0x7FFFFFFFFFFFFLL);
  v731 = ((2 * v723) * v722) >> 64;
  v732 = (v720 * v725) >> 64;
  v733 = v720 * v725;
  v737 = (v720 * (2 * (v716 & 0x7FFFFFFFFFFFFLL))) >> 64;
  v738 = v720 * 2 * (v716 & 0x7FFFFFFFFFFFFLL);
  v736 = v722 * v724 + v720 * v720 + v723 * (38 * (v716 & 0x7FFFFFFFFFFFFLL));
  v735 = v736 >> 64;
  v734 = v736;
  v739 = ((2 * v723) * v720) >> 64;
  v740 = (v726 * v720) >> 64;
  v741 = v726 * v720;
  v742 = 2 * v723 * v720;
  v743 = 2 * v723 * v722;
  v745 = v722 * v722 + (v716 & 0x7FFFFFFFFFFFFLL) * v724;
  v744 = (v722 * v722 + (v716 & 0x7FFFFFFFFFFFFLL) * v724) >> 64;
  v746 = (v723 * v724) >> 64;
  v747 = v723 * v724;
  v748 = (v723 * v723) >> 64;
  v749 = v723 * v723;
  v750 = __PAIR128__(v735, v734) >> 51;
  v751 = v734 & 0x7FFFFFFFFFFFFLL;
  v752 = __PAIR128__(v744, v745) + __PAIR128__(v739, v742);
  v753 = (__PAIR128__(v746, v747) + (v716 & 0x7FFFFFFFFFFFFLL) * 19 * (v716 & 0x7FFFFFFFFFFFFLL) + __PAIR128__(v740, v741)) >> 64;
  v754 = v747 + (v716 & 0x7FFFFFFFFFFFFLL) * 19 * (v716 & 0x7FFFFFFFFFFFFLL) + v741;
  v16 = __CFADD__(v754, v750);
  v755 = v754 + v750;
  if (v16)
  {
    ++v753;
  }

  *(&v756 + 1) = v753;
  *&v756 = v755;
  v757 = __PAIR128__(v727 + __CFADD__(v738, v728) + v737, v738 + v728) + __PAIR128__(v731, v743) + ((v752 + (v756 >> 51)) >> 51);
  v758 = v757 & 0x7FFFFFFFFFFFFLL;
  v759 = __PAIR128__(v729, v730) + __PAIR128__(v732, v733) + __PAIR128__(v748, v749) + (v757 >> 51);
  v760 = v759 & 0x7FFFFFFFFFFFFLL;
  v761 = v751 + 19 * (v759 >> 51);
  v762 = v761 & 0x7FFFFFFFFFFFFLL;
  v763 = (v755 & 0x7FFFFFFFFFFFFLL) + (v761 >> 51);
  v764 = v763 & 0x7FFFFFFFFFFFFLL;
  v765 = ((v752 + (v756 >> 51)) & 0x7FFFFFFFFFFFFLL) + (v763 >> 51);
  v766 = 2 * (v759 & 0x7FFFFFFFFFFFFLL);
  v767 = 2 * (v757 & 0x7FFFFFFFFFFFFLL);
  v768 = (v760 * (19 * v760)) >> 64;
  v769 = v760 * 19 * v760;
  v770 = v765 * 38 * (v757 & 0x7FFFFFFFFFFFFLL);
  v771 = v764 * v767;
  v772 = v764 * (38 * (v759 & 0x7FFFFFFFFFFFFLL)) + v762 * v762;
  v773 = (v762 * v766) >> 64;
  v774 = v762 * v766;
  v16 = __CFADD__(v772, v770);
  v775 = v772 + v770;
  v776 = (v762 * v767) >> 64;
  v777 = v762 * v767;
  v778 = v764 * v764 + (v757 & 0x7FFFFFFFFFFFFLL) * 38 * (v759 & 0x7FFFFFFFFFFFFLL) + (2 * v765) * v762;
  v780 = (v765 * (38 * (v759 & 0x7FFFFFFFFFFFFLL)) + v758 * (19 * v758) + (2 * v764) * v762) >> 64;
  v779 = v765 * 38 * (v759 & 0x7FFFFFFFFFFFFLL) + v758 * 19 * v758 + 2 * v764 * v762;
  *(&v756 + 1) = ((v765 * (38 * (v757 & 0x7FFFFFFFFFFFFLL))) >> 64) + v16 + *(&v772 + 1);
  *&v756 = v775;
  v781 = v756 >> 51;
  v16 = __CFADD__(v779, v781);
  v782 = v779 + v781;
  if (v16)
  {
    ++v780;
  }

  *(&v784 + 1) = v780;
  *&v784 = v782;
  v783 = v784 >> 51;
  *(&v784 + 1) = (v778 + (v784 >> 51)) >> 64;
  *&v784 = v778 + v783;
  v785 = __PAIR128__(v768 + __CFADD__(v777, v769) + v776, v777 + v769) + (2 * v765) * v764 + (v784 >> 51);
  v786 = v785 & 0x7FFFFFFFFFFFFLL;
  v787 = __PAIR128__((v764 * (2 * (v757 & 0x7FFFFFFFFFFFFLL))) >> 64, v771) + __PAIR128__(v773, v774) + v765 * v765 + (v785 >> 51);
  v788 = v787 & 0x7FFFFFFFFFFFFLL;
  v789 = (v775 & 0x7FFFFFFFFFFFFLL) + 19 * (v787 >> 51);
  v790 = v789 & 0x7FFFFFFFFFFFFLL;
  v791 = (v782 & 0x7FFFFFFFFFFFFLL) + (v789 >> 51);
  v792 = v791 & 0x7FFFFFFFFFFFFLL;
  v793 = ((v778 + v783) & 0x7FFFFFFFFFFFFLL) + (v791 >> 51);
  v794 = v792 * (38 * (v787 & 0x7FFFFFFFFFFFFLL)) + v790 * v790 + v793 * (38 * (v785 & 0x7FFFFFFFFFFFFLL));
  v796 = (v793 * (38 * (v787 & 0x7FFFFFFFFFFFFLL)) + v786 * (19 * v786)) >> 64;
  v795 = v793 * 38 * (v787 & 0x7FFFFFFFFFFFFLL) + v786 * 19 * v786;
  v797 = 2 * (v785 & 0x7FFFFFFFFFFFFLL);
  v799 = __PAIR128__(v796, v795) + (2 * v792) * v790;
  v798 = *(&v799 + 1);
  v800 = v794 >> 51;
  v801 = v799 + v800;
  if (__CFADD__(v799, v800))
  {
    v798 = *(&v799 + 1) + 1;
  }

  *(&v802 + 1) = v798;
  *&v802 = v799 + v800;
  v805 = v792 * v792 + (v785 & 0x7FFFFFFFFFFFFLL) * 38 * (v787 & 0x7FFFFFFFFFFFFLL) + (2 * v793) * v790 + (v802 >> 51);
  v804 = v805 >> 64;
  v803 = v805;
  v806 = v790 * v797 + v788 * (19 * v788) + (2 * v793) * v792 + (__PAIR128__(v804, v803) >> 51);
  v807 = v792 * v797 + v790 * (2 * v788) + v793 * v793;
  *(&v802 + 1) = (v807 + (v806 >> 51)) >> 64;
  *&v802 = v807 + (v806 >> 51);
  v808 = (v794 & 0x7FFFFFFFFFFFFLL) + 19 * (v802 >> 51);
  v825 = v802 & 0x7FFFFFFFFFFFFLL;
  v809 = (v801 & 0x7FFFFFFFFFFFFLL) + (v808 >> 51);
  v823 = (v803 & 0x7FFFFFFFFFFFFLL) + (v809 >> 51);
  v824 = v806 & 0x7FFFFFFFFFFFFLL;
  v821 = v808 & 0x7FFFFFFFFFFFFLL;
  v822 = v809 & 0x7FFFFFFFFFFFFLL;
  return fe_mul_impl(a1, &v821, &v826);
}

uint64_t *fe_mul_impl(uint64_t *result, unint64_t *a2, unint64_t *a3)
{
  v4 = a3[3];
  v3 = a3[4];
  v5 = 19 * v3;
  v7 = a2[3];
  v6 = a2[4];
  v9 = a3[1];
  v8 = a3[2];
  v10 = *a3;
  v11 = 19 * v9 * v6;
  v12 = a2[2];
  v13 = v7 * 19 * v8;
  v14 = __CFADD__(v13, v11);
  v15 = v13 + v11;
  v16 = *a2;
  v17 = a2[1];
  v19 = __PAIR128__(((19 * v9 * v6) >> 64) + v14 + ((v7 * (19 * v8)) >> 64), v15) + v12 * (19 * v4) + v17 * (19 * v3) + v16 * *a3;
  v20 = v7 * (19 * v3) + 19 * v4 * v6;
  v22 = (v7 * (19 * v4) + 19 * v8 * v6 + v12 * (19 * v3) + *a3 * v17 + v16 * v9) >> 64;
  v21 = v7 * 19 * v4 + 19 * v8 * v6 + v12 * 19 * v3 + *a3 * v17 + v16 * v9;
  v23 = v19 >> 51;
  v14 = __CFADD__(v21, v23);
  v24 = v21 + v23;
  if (v14)
  {
    ++v22;
  }

  v26 = (v20 + v17 * v9 + v10 * v12 + v16 * v8) >> 64;
  v25 = v20 + v17 * v9 + v10 * v12 + v16 * v8;
  v27 = (v5 * v6) >> 64;
  v28 = v5 * v6;
  *(&v30 + 1) = v22;
  *&v30 = v24;
  v29 = v30 >> 51;
  v14 = __CFADD__(v25, v29);
  v31 = v25 + v29;
  if (v14)
  {
    ++v26;
  }

  v32 = (v12 * v9 + __PAIR128__(v27, v28) + v17 * v8 + v10 * v7 + v16 * v4) >> 64;
  v33 = v12 * v9 + v28 + v17 * v8 + v10 * v7 + v16 * v4;
  v34 = (v7 * v9) >> 64;
  v35 = v7 * v9;
  *(&v37 + 1) = v26;
  *&v37 = v31;
  v36 = v37 >> 51;
  v14 = __CFADD__(v33, v36);
  v38 = v33 + v36;
  if (v14)
  {
    v39 = v32 + 1;
  }

  else
  {
    v39 = v32;
  }

  v41 = v12 * v8 + __PAIR128__(v34, v35) + v17 * v4 + v10 * v6 + v16 * v3;
  v40 = *(&v41 + 1);
  *(&v43 + 1) = v39;
  *&v43 = v38;
  v42 = v43 >> 51;
  v14 = __CFADD__(v41, v42);
  v44 = v41 + v42;
  if (v14)
  {
    v40 = *(&v41 + 1) + 1;
  }

  *(&v45 + 1) = v40;
  *&v45 = v44;
  v46 = (v19 & 0x7FFFFFFFFFFFFLL) + 19 * (v45 >> 51);
  v47 = (v24 & 0x7FFFFFFFFFFFFLL) + (v46 >> 51);
  *result = v46 & 0x7FFFFFFFFFFFFLL;
  result[1] = v47 & 0x7FFFFFFFFFFFFLL;
  result[2] = (v31 & 0x7FFFFFFFFFFFFLL) + (v47 >> 51);
  result[3] = v38 & 0x7FFFFFFFFFFFFLL;
  result[4] = v44 & 0x7FFFFFFFFFFFFLL;
  return result;
}

uint64_t bssl::DTLSMessageBitmap::Init(uint64_t this, unint64_t a2)
{
  v3 = this;
  v5 = *this;
  v4 = *(this + 8);
  if (v4 && v4 - 1 >= -v5)
  {
    __break(1u);
  }

  else
  {
    if (v5)
    {
      v7 = *(v5 - 8);
      v6 = (v5 - 8);
      v8 = v7 + 8;
      if (v7 != -8)
      {
        bzero(v6, v8);
      }

      free(v6);
    }

    v9 = a2 + 7;
    *v3 = 0;
    v3[1] = 0;
    if (!a2)
    {
      goto LABEL_10;
    }

    v10 = v9 >> 3;
    v11 = malloc_type_malloc((v9 >> 3) + 8, 0xB4E622C9uLL);
    if (v11)
    {
      *v11 = v10;
      v12 = v11 + 1;
      *v3 = v12;
      v3[1] = v10;
      bzero(v12, v9 >> 3);
LABEL_10:
      bssl::DTLSMessageBitmap::MarkRange(v3, a2, v9 & 0xFFFFFFFFFFFFFFF8);
      v3[2] = 0;
      return 1;
    }

    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    this = 0;
    *v3 = 0;
  }

  return this;
}

void *bssl::DTLSMessageBitmap::MarkRange(void *this, unint64_t a2, unint64_t a3)
{
  v3 = this[1];
  if (8 * this[2] <= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = 8 * this[2];
  }

  v5 = 8 * v3;
  if (8 * v3 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = 8 * v3;
  }

  if (v5 >= a3)
  {
    v5 = a3;
  }

  if (v4 >= v5)
  {
    return this;
  }

  v7 = v6 >> 3;
  if ((v6 ^ v5) <= 7)
  {
    if (v3 <= v7)
    {
      goto LABEL_33;
    }

    v8 = (-1 << (v6 & 7)) & ~(-1 << (v5 & 7));
LABEL_20:
    *(*this + v7) |= v8;
    goto LABEL_21;
  }

  if (v3 <= v7)
  {
    goto LABEL_33;
  }

  *(*this + v7) |= -1 << (v6 & 7);
  v9 = v5 >> 3;
  v10 = v7 + 1;
  if (v10 < v5 >> 3)
  {
    while (this[1] > v10)
    {
      *(*this + v10++) = -1;
      if (v9 == v10)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_33;
  }

LABEL_17:
  v11 = v5 & 7;
  if (v11)
  {
    if (this[1] <= v9)
    {
      goto LABEL_33;
    }

    v8 = ~(-1 << v11);
    v7 = v9;
    goto LABEL_20;
  }

LABEL_21:
  v12 = this[1];
  v13 = this[2];
  v14 = *this;
  if (v13 >= v12)
  {
LABEL_24:
    if (!v12 || v12 - 1 < -v14)
    {
      if (v14)
      {
        v15 = this;
        v17 = *(v14 - 8);
        v16 = (v14 - 8);
        v18 = v17 + 8;
        if (v17 != -8)
        {
          bzero(v16, v18);
        }

        free(v16);
        this = v15;
      }

      *this = 0;
      this[1] = 0;
      this[2] = 0;
      return this;
    }

    __break(1u);
LABEL_33:
    abort();
  }

  while (*(v14 + v13) == 255)
  {
    this[2] = ++v13;
    if (v12 == v13)
    {
      goto LABEL_24;
    }
  }

  return this;
}

uint64_t bssl::dtls1_process_handshake_fragments(uint64_t a1, char *a2, unint64_t a3, unsigned __int8 *a4, unint64_t a5)
{
  if (!a5)
  {
    goto LABEL_122;
  }

  v5 = a5;
  v109 = a3;
  v6 = 0;
  v7 = 0;
  v8 = HIWORD(a3);
  v9 = 0;
  do
  {
    if (v5 < 4 || (v5 & 0xFFFFFFFFFFFFFFFELL) == 4 || v5 - 6 < 3 || v5 - 9 < 3 || (v10 = (a4[9] << 16) | (a4[10] << 8) | a4[11], v11 = v5 - 12 >= v10, v5 = v5 - 12 - v10, !v11))
    {
      ERR_put_error(16, 0, 109, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/d1_both.cc", 264);
      v75 = 50;
      goto LABEL_114;
    }

    v12 = a4[1];
    v13 = a4[2];
    v14 = a4[3];
    v15 = v14 | (v12 << 16) | (v13 << 8);
    v16 = (a4[6] << 16) | (a4[7] << 8) | a4[8];
    if (v16 > v15 || v15 - v16 < v10)
    {
      v77 = 109;
      v78 = 273;
      goto LABEL_116;
    }

    v17 = a4[4];
    v18 = a4[5];
    v19 = v18 | (v17 << 8);
    v20 = (a4 + 12);
    v21 = *(a1 + 56);
    v22 = *(v21 + 4);
    v11 = v19 >= v22;
    v23 = v19 - v22;
    if (v11 && (*v21 & 0x10) == 0)
    {
      if (*(v21 + 8) != v8 || *(v21 + 128))
      {
        ERR_put_error(16, 0, 255, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/d1_both.cc", 294);
        v75 = 10;
        goto LABEL_114;
      }

      v24 = *a4;
      v25 = *(a1 + 48);
      v26 = *(v25 + 280);
      if (v26)
      {
        v27 = *(v26 + 1616);
        if ((v27 & 8) == 0)
        {
          if ((*(a1 + 164) & 1) != 0 && (*(*(a1 + 8) + 268) & 1) == 0)
          {
            if (v15 > 0x4000)
            {
              goto LABEL_137;
            }

            if ((v27 & 8) != 0)
            {
              goto LABEL_44;
            }

            goto LABEL_39;
          }

          goto LABEL_33;
        }
      }

      v28 = *(v25 + 208);
      if (v28 - 769 >= 4)
      {
        if (v28 != 65276)
        {
LABEL_27:
          if (v14 | (v12 << 16) | (v13 << 8))
          {
            goto LABEL_137;
          }

          goto LABEL_37;
        }
      }

      else if (v28 < 0x304)
      {
        goto LABEL_27;
      }

      if (*(a1 + 164))
      {
        if (v15 > 1)
        {
          goto LABEL_137;
        }

        goto LABEL_37;
      }

LABEL_33:
      LODWORD(v29) = *(a1 + 136);
      if (v29 <= 0x4000)
      {
        v29 = 0x4000;
      }

      else
      {
        v29 = v29;
      }

      if (v29 < v15)
      {
LABEL_137:
        v77 = 150;
        v78 = 300;
        goto LABEL_116;
      }

LABEL_37:
      if (!v26)
      {
        goto LABEL_44;
      }

      v27 = *(v26 + 1616);
      if ((v27 & 8) != 0)
      {
        goto LABEL_44;
      }

LABEL_39:
      v30 = *(v25 + 208);
      if (v30 && (v27 & 0x4000) == 0)
      {
        if (v30 > 65275)
        {
          switch(v30)
          {
            case 65276:
              v30 = 772;
              break;
            case 65277:
              v30 = 771;
              break;
            case 65279:
              v30 = 770;
              break;
            default:
              goto LABEL_44;
          }
        }

        else if ((v30 - 769) >= 4)
        {
          goto LABEL_44;
        }

        v6 = (v30 > 0x303) | v6;
      }

LABEL_44:
      if (v23 > 7)
      {
        v7 = 1;
        goto LABEL_4;
      }

      if (v23 == 7)
      {
        goto LABEL_138;
      }

      v31 = *(v21 + 8 * (v19 - 7 * ((613566757 * v19) >> 32)) + 248);
      if (v31)
      {
        if (*v31 != v24)
        {
          goto LABEL_139;
        }

        v32 = v31[2];
        if (v32 <= 0xB)
        {
          goto LABEL_151;
        }

        if (v32 - 12 != v15)
        {
LABEL_139:
          v77 = 152;
          v78 = 237;
LABEL_116:
          ERR_put_error(16, 0, v77, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/d1_both.cc", v78);
          v75 = 47;
LABEL_114:
          result = 0;
          *a2 = v75;
          return result;
        }

        goto LABEL_105;
      }

      v102 = v24;
      v107 = (v19 - 7 * ((613566757 * v19) >> 32));
      v108 = a1;
      v103 = v20;
      v104 = v8;
      v105 = v6;
      v106 = v7;
      *v112 = v9;
      v113 = v9;
      v111 = v9;
      v33 = malloc_type_malloc(0x38uLL, 0xB4E622C9uLL);
      if (v33)
      {
        *v33 = 48;
        *(v33 + 8) = 0u;
        *(v33 + 24) = 0u;
        *(v33 + 40) = 0u;
        v99 = v33 + 8;
        v33[8] = v102;
        *(v33 + 5) = v19;
        *(v33 + 2) = 0;
        v100 = v33 + 16;
        v101 = v33;
        v34 = (v15 + 12);
        *(v33 + 3) = 0;
        v35 = malloc_type_malloc(v34 + 8, 0xB4E622C9uLL);
        if (v35)
        {
          *v35 = v34;
          v36 = v35 + 1;
          v101[2] = v36;
          v101[3] = v34;
          v37 = v101;
          v112[1] = 0;
          v111 = 0;
          v112[0] = v36;
          v113 = 0xCuLL;
          v114[0] = 0;
          if (CBB_add_space(&v111, v114, 1))
          {
            *v114[0] = v102;
            v114[0] = 0;
            if (CBB_add_space(&v111, v114, 3))
            {
              *(v114[0] + 2) = v14;
              *(v114[0] + 1) = v13;
              *v114[0] = v12;
              v114[0] = 0;
              if (CBB_add_space(&v111, v114, 2))
              {
                *(v114[0] + 1) = v18;
                *v114[0] = v17;
                v38 = v107;
                if (!CBB_add_u24(&v111, 0))
                {
                  goto LABEL_70;
                }

                if (!CBB_add_u24(&v111, v15))
                {
                  goto LABEL_70;
                }

                if (!CBB_finish(&v111, 0, 0))
                {
                  goto LABEL_70;
                }

                v39 = bssl::DTLSMessageBitmap::Init((v101 + 4), v15);
                v31 = v99;
                if ((v39 & 1) == 0)
                {
                  goto LABEL_70;
                }

LABEL_66:
                if (LOBYTE(v111.tv_usec))
                {
                  goto LABEL_88;
                }

                goto LABEL_83;
              }
            }
          }
        }

        else
        {
          ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
          v37 = v101;
          *v100 = 0;
        }

        v38 = v107;
LABEL_70:
        v41 = v37[4];
        v40 = v37[5];
        if (v40 && v40 - 1 >= -v41)
        {
          goto LABEL_150;
        }

        if (v41)
        {
          v43 = *(v41 - 8);
          v42 = (v41 - 8);
          v44 = v43 + 8;
          if (v43 != -8)
          {
            bzero(v42, v44);
          }

          free(v42);
        }

        v37[4] = 0;
        v37[5] = 0;
        v46 = v37[2];
        v45 = v37[3];
        if (v45)
        {
          if (v45 - 1 >= -v46)
          {
LABEL_150:
            __break(1u);
LABEL_151:
            abort();
          }
        }

        if (v46)
        {
          v48 = *(v46 - 8);
          v47 = (v46 - 8);
          v49 = v48 + 8;
          if (v48 != -8)
          {
            bzero(v47, v49);
          }

          free(v47);
        }

        free(v37);
        v31 = 0;
        if (LOBYTE(v111.tv_usec))
        {
LABEL_88:
          a1 = v108;
          v53 = *(v108 + 56) + 8 * v38;
          v54 = *(v53 + 248);
          *(v53 + 248) = v31;
          if (v54)
          {
            v56 = v54[3];
            v55 = v54[4];
            if (v55 && v55 - 1 >= -v56)
            {
              goto LABEL_150;
            }

            if (v56)
            {
              v58 = *(v56 - 8);
              v57 = (v56 - 8);
              v59 = v58 + 8;
              if (v58 != -8)
              {
                bzero(v57, v59);
              }

              free(v57);
            }

            v54[3] = 0;
            v54[4] = 0;
            v61 = v54[1];
            v60 = v54[2];
            if (v60)
            {
              if (v60 - 1 >= -v61)
              {
                goto LABEL_150;
              }
            }

            if (v61)
            {
              v63 = *(v61 - 8);
              v62 = (v61 - 8);
              v64 = v63 + 8;
              if (v63 != -8)
              {
                bzero(v62, v64);
              }

              free(v62);
            }

            v54[1] = 0;
            v54[2] = 0;
            v66 = *(v54 - 1);
            v65 = v54 - 1;
            v67 = v66 + 8;
            if (v66 != -8)
            {
              bzero(v65, v67);
            }

            free(v65);
            a1 = v108;
            v31 = *(*(v108 + 56) + 8 * v38 + 248);
          }

          v6 = v105;
          v7 = v106;
          v20 = v103;
          v8 = v104;
          v9 = 0;
          if (!v31)
          {
LABEL_138:
            v75 = 80;
            goto LABEL_114;
          }

LABEL_105:
          if (v31[4])
          {
            v68 = v31[2];
            if (v68 <= 0xB || v68 - 12 < v16)
            {
              goto LABEL_151;
            }

            v69 = v20;
            v70 = v8;
            v71 = v6;
            v72 = v7;
            v73 = a1;
            if (v10)
            {
              v74 = v31;
              memcpy((v31[1] + v16 + 12), v20, v10);
              v31 = v74;
            }

            bssl::DTLSMessageBitmap::MarkRange(v31 + 3, v16, v10 + v16);
            a1 = v73;
            v7 = v72;
            v6 = v71;
            v8 = v70;
            v9 = 0;
            v20 = v69;
          }

          goto LABEL_4;
        }

LABEL_83:
        if ((v113.tv_usec & 1) != 0 && v112[0])
        {
          v50 = v31;
          v52 = v112[0] - 8;
          v51 = *(v112[0] - 1);
          if (v51 != -8)
          {
            bzero(v52, v51 + 8);
          }

          free(v52);
          v31 = v50;
        }

        goto LABEL_88;
      }

      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      v31 = 0;
      v38 = (v19 - 7 * ((613566757 * v19) >> 32));
      goto LABEL_66;
    }

LABEL_4:
    a4 = &v20[v10];
  }

  while (v5);
  if (v6)
  {
    v79 = *(a1 + 56);
    *(v79 + 940) = 0u;
    *(v79 + 976) = *(a1 + 80);
    v80 = a1;
    v81 = v7;
    bssl::dtls_clear_outgoing_messages(a1, 0x24924925);
    a1 = v80;
    a3 = v109;
    if (v81)
    {
      return 1;
    }

LABEL_122:
    v82 = *(a1 + 56);
    v83 = v82 + 656;
    v84 = *(v82 + 912);
    if (v84 > 0x1F)
    {
      v87 = *(v82 + 920);
      *(v83 + 8 * (v87 & 0x1F)) = a3;
      *(v82 + 920) = (v87 + 1) & 0x1F;
      v85 = *(a1 + 48);
      v86 = *(v85 + 208);
      if (*(v85 + 208))
      {
        goto LABEL_126;
      }
    }

    else
    {
      *(v83 + 8 * *(v82 + 912)) = a3;
      *(v82 + 912) = v84 + 1;
      v85 = *(a1 + 48);
      v86 = *(v85 + 208);
      if (!*(v85 + 208))
      {
        return 1;
      }

LABEL_126:
      v88 = *(v85 + 280);
      if (v88 && (*(v88 + 1617) & 0x40) != 0)
      {
        return 1;
      }

      if (v86 - 769 < 4)
      {
        if (v86 < 0x304)
        {
          return 1;
        }

LABEL_132:
        if (!*(v82 + 960) && !*(v82 + 968) && (*v82 & 0x40) == 0)
        {
          v89 = a1;
          v90 = *(*(a1 + 104) + 728);
          if (v90)
          {
            v90(0, &v111);
          }

          else
          {
            gettimeofday(&v111, 0);
          }

          if (v111.tv_sec >= 0)
          {
            tv_usec = v111.tv_usec;
          }

          else
          {
            tv_usec = 0;
          }

          v92 = *(v89 + 56);
          v93 = *(v92 + 976);
          v94 = 250 * v93;
          v95 = 274877907 * v93;
          v96 = v94 - 1000000 * ((v94 * 0x10C6F7A0B5EEuLL) >> 64) + tv_usec;
          v97 = v96 > 0xF423F;
          if (v96 > 0xF423F)
          {
            v96 -= 1000000;
          }

          v98 = (v111.tv_sec & ~(v111.tv_sec >> 63)) + (v95 >> 40);
          if (v97)
          {
            ++v98;
          }

          *(v92 + 968) = v96;
          *(v92 + 960) = v98;
        }

        return 1;
      }

      if (v86 == 65276)
      {
        goto LABEL_132;
      }
    }
  }

  else
  {
    a3 = v109;
    if ((v7 & 1) == 0)
    {
      goto LABEL_122;
    }
  }

  return 1;
}

void bssl::dtls_clear_outgoing_messages(bssl *this, ssl_st *a2)
{
  v3 = *(this + 7);
  v4 = *(v3 + 640);
  v5 = v3;
  if (*(v3 + 640))
  {
    v6 = (v3 + 304);
    while (1)
    {
      v8 = v6[3];
      v7 = v6[4];
      if (v7)
      {
        if (v7 - 1 >= -v8)
        {
          break;
        }
      }

      if (v8)
      {
        v10 = *(v8 - 8);
        v9 = (v8 - 8);
        v11 = v10 + 8;
        if (v10 != -8)
        {
          bzero(v9, v11);
        }

        free(v9);
      }

      v6[3] = 0;
      v6[4] = 0;
      v13 = *v6;
      v12 = v6[1];
      if (v12)
      {
        if (v12 - 1 >= -v13)
        {
          break;
        }
      }

      if (v13)
      {
        v15 = *(v13 - 8);
        v14 = (v13 - 8);
        v16 = v15 + 8;
        if (v15 != -8)
        {
          bzero(v14, v16);
        }

        free(v14);
      }

      *v6 = 0;
      v6[1] = 0;
      v6 += 6;
      if (!--v4)
      {
        v5 = *(this + 7);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    *(v3 + 640) = 0;
    v17 = *(v5 + 648);
    *(v5 + 648) = 0;
    if (v17)
    {
      v19 = *(v17 - 8);
      v18 = (v17 - 8);
      v18[776] = 0;
      v20 = v19 + 8;
      if (v19 != -8)
      {
        bzero(v18, v20);
      }

      free(v18);
      v5 = *(this + 7);
    }

    *(v5 + 928) = 0;
    *(v5 + 932) = 0;
    *v5 &= ~2u;
    **(this + 7) &= ~4u;
    **(this + 7) &= ~0x20u;

    bssl::dtls_clear_unused_write_epochs(this, a2);
  }
}

uint64_t bssl::dtls1_open_handshake(bssl *a1, unint64_t *a2, char *a3, unsigned __int8 *a4, unint64_t a5)
{
  v13 = 0;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  result = bssl::dtls_open_record(a1, &v13, &v12, &v10, a2, a3, a4, a5);
  if (!result)
  {
    if (v13 > 0x16u)
    {
      if (v13 != 23)
      {
        if (v13 == 26)
        {
          return bssl::dtls1_process_ack(a1, a3, v12, v10, v11);
        }

LABEL_11:
        v8 = 427;
LABEL_12:
        ERR_put_error(16, 0, 225, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/d1_both.cc", v8);
        *a3 = 10;
        return 4;
      }
    }

    else
    {
      if (v13 != 20)
      {
        if (v13 == 22)
        {
          if (bssl::dtls1_process_handshake_fragments(a1, a3, v12, v10, v11))
          {
            return 0;
          }

          else
          {
            return 4;
          }
        }

        goto LABEL_11;
      }

      if (v11 != 1 || *v10 != 1)
      {
        ERR_put_error(16, 0, 103, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/d1_both.cc", 391);
        *a3 = 47;
        return 4;
      }

      if (HIWORD(v12))
      {
        v8 = 399;
        goto LABEL_12;
      }

      v9 = *(a1 + 7);
      if (!v9[4])
      {
        *v9 |= 1u;
        bssl::ssl_do_msg_callback(a1, 0, 20, v10, v11);
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t bssl::dtls1_get_message(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = *(v2 + 8 * (*(v2 + 4) - 7 * ((((9363 * *(v2 + 4)) >> 16) + (((*(v2 + 4) - ((9363 * *(v2 + 4)) >> 16)) & 0xFFFE) >> 1)) >> 2)) + 248);
  if (!v3 || *(v3 + 32))
  {
    return 0;
  }

  *(a2 + 1) = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  if (v6 <= 0xB)
  {
    abort();
  }

  *(a2 + 8) = v5 + 12;
  *(a2 + 16) = v6 - 12;
  *a2 = 0;
  v7 = *(a1 + 48);
  v8 = *(v7 + 220);
  if ((v8 & 8) == 0)
  {
    v9 = *(a1 + 64);
    if (v9)
    {
      v10 = *(v7 + 280);
      if (v10 && (*(v10 + 1617) & 4) != 0 && (*(a1 + 164) & 1) == 0)
      {
        LOWORD(v11) = *(*(v10 + 1560) + 4);
      }

      else
      {
        v11 = *(v7 + 208);
        if (!v11)
        {
          if (**a1)
          {
            LOWORD(v11) = -259;
          }

          else
          {
            LOWORD(v11) = 771;
          }
        }
      }

      v9(0, v11, 22);
      v7 = *(a1 + 48);
      v8 = *(v7 + 220);
    }

    *(v7 + 220) = v8 | 8;
  }

  return 1;
}

void bssl::dtls1_next_message(bssl *this, ssl_st *a2)
{
  v3 = *(this + 7);
  v4 = v3[2];
  v5 = &v3[4 * (v4 - 7 * ((((9363 * v4) >> 16) + (((v4 - ((9363 * v4) >> 16)) & 0xFFFE) >> 1)) >> 2))];
  v6 = *(v5 + 31);
  *(v5 + 31) = 0;
  if (v6)
  {
    v8 = v6[3];
    v7 = v6[4];
    if (v7 && v7 - 1 >= -v8)
    {
      goto LABEL_22;
    }

    if (v8)
    {
      v10 = *(v8 - 8);
      v9 = (v8 - 8);
      v11 = v10 + 8;
      if (v10 != -8)
      {
        bzero(v9, v11);
      }

      free(v9);
    }

    v6[3] = 0;
    v6[4] = 0;
    v13 = v6[1];
    v12 = v6[2];
    if (v12)
    {
      if (v12 - 1 >= -v13)
      {
LABEL_22:
        __break(1u);
        return;
      }
    }

    if (v13)
    {
      v15 = *(v13 - 8);
      v14 = (v13 - 8);
      v16 = v15 + 8;
      if (v15 != -8)
      {
        bzero(v14, v16);
      }

      free(v14);
    }

    v6[1] = 0;
    v6[2] = 0;
    v18 = *(v6 - 1);
    v17 = v6 - 1;
    v19 = v18 + 8;
    if (v18 != -8)
    {
      bzero(v17, v19);
    }

    free(v17);
    v3 = *(this + 7);
    v4 = v3[2];
  }

  v20 = v4 + 1;
  v3[2] = v20;
  if ((v20 & 0x10000) != 0)
  {
    *v3 |= 0x10u;
  }

  *(*(this + 6) + 220) &= ~8u;
  v21 = *(this + 7);
  if ((*v21 & 2) != 0)
  {
    *v21 |= 4u;
  }
}

BOOL bssl::dtls_has_unprocessed_handshake_data(bssl *this, const ssl_st *a2)
{
  v2 = *(this + 7);
  if ((*(*(this + 6) + 220) & 8) != 0)
  {
    v4 = *(v2 + 4) % 7u;
    if (v4)
    {
      if (*(v2 + 248))
      {
        return 1;
      }

      if (v4 != 1)
      {
        if (*(v2 + 256))
        {
          return 1;
        }

        if (v4 == 2)
        {
          if (*(v2 + 272))
          {
            return 1;
          }

          goto LABEL_19;
        }
      }
    }

    else if (*(v2 + 256))
    {
      return 1;
    }

    if (*(v2 + 264))
    {
      return 1;
    }

    if (v4 != 3)
    {
      if (*(v2 + 272))
      {
        return 1;
      }

      if (v4 == 4)
      {
        if (*(v2 + 288))
        {
          return 1;
        }

        return *(v2 + 296) != 0;
      }
    }

LABEL_19:
    if (*(v2 + 280))
    {
      return 1;
    }

    if (v4 != 5)
    {
      if (*(v2 + 288))
      {
        return 1;
      }

      if (v4 == 6)
      {
        return 0;
      }
    }

    return *(v2 + 296) != 0;
  }

  if (*(v2 + 248))
  {
    return 1;
  }

  if (*(v2 + 256))
  {
    return 1;
  }

  if (*(v2 + 264))
  {
    return 1;
  }

  if (*(v2 + 272))
  {
    return 1;
  }

  if (*(v2 + 280))
  {
    return 1;
  }

  if (*(v2 + 288))
  {
    return 1;
  }

  return *(v2 + 296) != 0;
}

uint64_t bssl::dtls1_open_change_cipher_spec(bssl *a1, unint64_t *a2, char *a3, unsigned __int8 *a4, unint64_t a5)
{
  v5 = *(a1 + 7);
  v6 = *v5;
  if ((*v5 & 1) == 0)
  {
    result = bssl::dtls1_open_handshake(a1, a2, a3, a4, a5);
    if (result)
    {
      return result;
    }

    v5 = *(a1 + 7);
    v6 = *v5;
  }

  if ((v6 & 1) == 0)
  {
    return 1;
  }

  result = 0;
  *v5 = v6 & 0xFFFE;
  return result;
}

void bssl::dtls_clear_unused_write_epochs(bssl *this, ssl_st *a2)
{
  v3 = *(this + 7);
  v4 = v3 + 224;
  v5 = *(v3 + 240);
  v6 = v3 + 224 + 8 * v5;
  v7 = (v3 + 224);
  if (*(v3 + 240) && (v7 = (v3 + 224), *(v3 + 640)))
  {
    v7 = (v3 + 224);
    do
    {
      v8 = (v3 + 320);
      v9 = 48 * *(v3 + 640);
      while (*v8 != HIWORD(**v7) || (v8[1] & 1) == 0 && !*(v8 + 2))
      {
        v8 += 24;
        v9 -= 48;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      ++v7;
    }

    while (v7 != v6);
  }

  else
  {
LABEL_11:
    if (v7 != v6)
    {
      v10 = (v7 - v4) >> 3;
      v11 = v10 + 1;
      if (v10 + 1 < v5 && *(v3 + 640))
      {
        v12 = *(v3 + 240);
        do
        {
          v13 = *(this + 7);
          if (*(v13 + 640))
          {
            v14 = 48 * *(v13 + 640);
            v15 = *(v4 + 8 * v11);
            v16 = (v13 + 320);
            while (*v16 != HIWORD(*v15) || (v16[1] & 1) == 0 && !*(v16 + 2))
            {
              v16 += 24;
              v14 -= 48;
              if (!v14)
              {
                goto LABEL_17;
              }
            }

            if (v10 >= v5)
            {
              goto LABEL_67;
            }

            *(v4 + 8 * v11) = 0;
            v17 = *(v4 + 8 * v10);
            *(v4 + 8 * v10) = v15;
            if (v17)
            {
              if (*(v17 + 72) && v17 + 23 >= -*(v17 + 72))
              {
LABEL_66:
                __break(1u);
LABEL_67:
                abort();
              }

              *(v17 + 72) = 0;
              v18 = *(v17 + 16);
              *(v17 + 16) = 0;
              if (v18)
              {
                (**v18)(v18, a2);
                v20 = *(v18 - 1);
                v19 = v18 - 1;
                v21 = v20 + 8;
                if (v20 != -8)
                {
                  bzero(v19, v21);
                }

                free(v19);
              }

              v22 = *(v17 + 8);
              *(v17 + 8) = 0;
              if (v22)
              {
                if (*(v22 + 596) && v22 + 583 >= -*(v22 + 596))
                {
                  goto LABEL_66;
                }

                v23 = *(v22 + 8);
                *(v22 + 596) = 0;
                if (v23)
                {
                  (*(v23 + 24))(v22 + 8, a2);
                  *(v22 + 8) = 0;
                }

                v25 = *(v22 - 8);
                v24 = (v22 - 8);
                v26 = v25 + 8;
                if (v25 != -8)
                {
                  bzero(v24, v26);
                }

                free(v24);
              }

              v28 = *(v17 - 8);
              v27 = (v17 - 8);
              v29 = v28 + 8;
              if (v28 != -8)
              {
                bzero(v27, v29);
              }

              free(v27);
              v12 = *(v3 + 240);
            }

            ++v10;
          }

LABEL_17:
          ++v11;
          v5 = v12;
        }

        while (v11 < v12);
      }

      v30 = v10 - v5;
      if (v10 > v5)
      {
        goto LABEL_67;
      }

      if (v5 != v10)
      {
        v31 = (v4 + 8 * v10);
        do
        {
          v33 = *v31;
          *v31 = 0;
          if (v33)
          {
            if (*(v33 + 72) && v33 + 23 >= -*(v33 + 72))
            {
              goto LABEL_66;
            }

            *(v33 + 72) = 0;
            v34 = *(v33 + 16);
            *(v33 + 16) = 0;
            if (v34)
            {
              (**v34)(v34, a2);
              v36 = *(v34 - 1);
              v35 = v34 - 1;
              v37 = v36 + 8;
              if (v36 != -8)
              {
                bzero(v35, v37);
              }

              free(v35);
            }

            v38 = *(v33 + 8);
            *(v33 + 8) = 0;
            if (v38)
            {
              if (*(v38 + 596) && v38 + 583 >= -*(v38 + 596))
              {
                goto LABEL_66;
              }

              v39 = *(v38 + 8);
              *(v38 + 596) = 0;
              if (v39)
              {
                (*(v39 + 24))(v38 + 8, a2);
                *(v38 + 8) = 0;
              }

              v41 = *(v38 - 8);
              v40 = (v38 - 8);
              v42 = v41 + 8;
              if (v41 != -8)
              {
                bzero(v40, v42);
              }

              free(v40);
            }

            v44 = *(v33 - 8);
            v43 = (v33 - 8);
            v45 = v44 + 8;
            if (v44 != -8)
            {
              bzero(v43, v45);
            }

            free(v43);
          }

          ++v31;
        }

        while (!__CFADD__(v30++, 1));
      }

      *(v3 + 240) = v10;
    }
  }
}

uint64_t bssl::dtls1_init_message(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v8 = malloc_type_malloc(0x48uLL, 0xB4E622C9uLL);
  if (v8)
  {
    *v8 = 64;
    *(a2 + 8) = 0;
    *a2 = 0;
    *(a2 + 16) = v8 + 1;
    *(a2 + 24) = xmmword_273B8F050;
    *(a2 + 40) = *(a2 + 40) & 0xFC | 1;
    v11 = 0;
    result = CBB_add_space(a2, &v11, 1);
    if (result)
    {
      *v11 = a4;
      v11 = 0;
      result = CBB_add_space(a2, &v11, 3);
      if (result)
      {
        v11[2] = 0;
        v11[1] = 0;
        *v11 = 0;
        v10 = *(*(a1 + 56) + 2);
        v11 = 0;
        result = CBB_add_space(a2, &v11, 2);
        if (result)
        {
          v11[1] = v10;
          *v11 = HIBYTE(v10);
          v11 = 0;
          result = CBB_add_space(a2, &v11, 3);
          if (result)
          {
            v11[2] = 0;
            v11[1] = 0;
            *v11 = 0;
            return CBB_add_u24_length_prefixed(a2, a3) != 0;
          }
        }
      }
    }
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  return result;
}

uint64_t bssl::dtls1_finish_message(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (bssl::CBBFinishArray(a2, a3) && a3[1] > 0xB)
  {
    v5 = *a3;
    *(v5 + 1) = *(*a3 + 9);
    *(v5 + 3) = *(v5 + 11);
    return 1;
  }

  else
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/d1_both.cc", 564);
    return 0;
  }
}

void bssl::dtls1_add_message(bssl *a1, uint64_t *a2)
{
  v2 = a2[1];
  v5 = *a2;
  v6 = v2;
  *a2 = 0;
  a2[1] = 0;
  bssl::add_outgoing(a1, 0, &v5);
  if (v6 && v6 - 1 >= -v5)
  {
    __break(1u);
  }

  else if (v5)
  {
    v4 = (v5 - 8);
    v3 = *(v5 - 8);
    if (v3 != -8)
    {
      bzero(v4, v3 + 8);
    }

    free(v4);
  }
}

void bssl::add_outgoing(bssl *this, ssl_st *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(this + 7);
  if ((*v6 & 2) != 0)
  {
    *(v6 + 940) = 0u;
    *(v6 + 976) = *(this + 20);
    bssl::dtls_clear_outgoing_messages(this, a2);
  }

  if ((v4 & 1) == 0)
  {
    v13 = *(this + 7);
    if ((*v13 & 8) != 0)
    {
      v20 = 69;
      v21 = 587;
    }

    else
    {
      v14 = *(*(this + 6) + 280);
      if (!v14)
      {
        goto LABEL_11;
      }

      if (bssl::SSLTranscript::Update(v14 + 408, *a3, *(a3 + 8)))
      {
        v13 = *(this + 7);
LABEL_11:
        v15 = v13[1]++ + 1;
        if ((v15 & 0x10000) != 0)
        {
          *v13 |= 8u;
        }

        goto LABEL_4;
      }

      v20 = 68;
      v21 = 593;
    }

LABEL_43:
    ERR_put_error(16, 0, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/d1_both.cc", v21);
    return;
  }

LABEL_4:
  v35 = 0;
  v7 = *a3;
  v8 = *(a3 + 8);
  v30 = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  v9 = *(this + 7);
  v31 = *(v9 + 150);
  v32 = v4;
  if (v4)
  {
    v10 = *(v9 + 640);
    if (v10 <= 6)
    {
      v11 = 0;
      v12 = 0;
LABEL_26:
      v24 = v9 + 48 * v10;
      *(v24 + 304) = v7;
      *(v24 + 312) = v8;
      *(v24 + 320) = v31;
      *(v24 + 322) = v32;
      *(v24 + 328) = v11;
      *(v24 + 336) = v12;
      *(v24 + 344) = 0;
      ++*(v9 + 640);
      return;
    }

LABEL_36:
    if (!v8 || v8 - 1 < -v7)
    {
      if (v7)
      {
        v28 = *(v7 - 8);
        v27 = (v7 - 8);
        v29 = v28 + 8;
        if (v28 != -8)
        {
          bzero(v27, v29);
        }

        free(v27);
      }

      v20 = 68;
      v21 = 621;
      goto LABEL_43;
    }

LABEL_45:
    __break(1u);
    return;
  }

  if ((v8 - 12) <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v8 - 12;
  }

  if ((v8 - 12) >= 0xFFFFFFFFFFFFFFF9)
  {
    ERR_put_error(16, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/d1_both.cc", 71);
LABEL_18:
    if (v8 - 1 >= -v7)
    {
      goto LABEL_45;
    }

    goto LABEL_19;
  }

  v22 = (v16 + 7) >> 3;
  v23 = malloc_type_malloc(v22 + 8, 0xB4E622C9uLL);
  if (v23)
  {
    *v23 = v22;
    v33 = (v23 + 1);
    v34 = (v16 + 7) >> 3;
    bzero(v23 + 1, v34);
    bssl::DTLSMessageBitmap::MarkRange(&v33, v16, (v16 + 7) & 0xFFFFFFFFFFFFFFF8);
    v9 = *(this + 7);
    v7 = v30;
    v11 = v33;
    v12 = v34;
    v10 = *(v9 + 640);
    if (v10 < 7)
    {
      goto LABEL_26;
    }

    if (v34 && v34 - 1 >= -v33)
    {
      goto LABEL_45;
    }

    if (v33)
    {
      v26 = (v33 - 8);
      v25 = *(v33 - 8);
      if (v25 != -8)
      {
        bzero((v33 - 8), v25 + 8);
      }

      free(v26);
    }

    goto LABEL_36;
  }

  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  if (v8)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (v7)
  {
    v18 = *(v7 - 8);
    v17 = (v7 - 8);
    v19 = v18 + 8;
    if (v18 != -8)
    {
      bzero(v17, v19);
    }

    free(v17);
  }
}

void bssl::dtls1_add_change_cipher_spec(bssl *this, ssl_st *a2)
{
  v2 = *(*(this + 6) + 208);
  if (v2 - 769 >= 4)
  {
    if (v2 == 65276)
    {
      return;
    }
  }

  else if (v2 > 0x303)
  {
    return;
  }

  v5 = 0;
  v6 = 0;
  bssl::add_outgoing(this, 1, &v5);
  if (v6 && v6 - 1 >= -v5)
  {
    __break(1u);
  }

  else if (v5)
  {
    v4 = (v5 - 8);
    v3 = *(v5 - 8);
    if (v3 != -8)
    {
      bzero(v4, v3 + 8);
    }

    free(v4);
  }
}

double bssl::dtls1_finish_flight(bssl *this, ssl_st *a2)
{
  v2 = *(this + 7);
  if (*(v2 + 640))
  {
    v3 = *v2;
    if ((*v2 & 2) == 0)
    {
      if (v2[160] <= 2u)
      {
        *(v2 + 912) = 0;
        *(v2 + 920) = 0;
        *(v2 + 120) = 0;
        *(v2 + 242) = 0;
        *v2 = v3 & 0xFFBD;
        v2 = *(this + 7);
        v3 = *v2;
      }

      *v2 = v3 | 2;
      **(this + 7) |= 0x20u;
      v4 = *(this + 7);
      result = 0.0;
      *(v4 + 940) = 0u;
      *(v4 + 976) = *(this + 20);
    }
  }

  return result;
}

uint64_t bssl::dtls1_schedule_ack(uint64_t this, ssl_st *a2)
{
  v2 = *(this + 56);
  *(v2 + 960) = 0;
  *(v2 + 968) = 0;
  *v2 = *v2 & 0xFFBF | ((*(v2 + 912) != 0) << 6);
  return this;
}

uint64_t bssl::dtls1_flush(bssl *this, ssl_st *a2)
{
  v210 = *MEMORY[0x277D85DE8];
  v3 = *(this + 7);
  if ((*v3 & 0x40) == 0)
  {
    if ((*v3 & 0x20) == 0)
    {
      return 1;
    }

    goto LABEL_93;
  }

  if (*(v3 + 936) <= 0xE3u && (*(this + 129) & 0x10) == 0)
  {
    v5 = *(this + 4);
    if (v5)
    {
      if (*v5 && (v6 = *(*v5 + 48)) != 0)
      {
        v7 = v6();
        if ((v7 - 228) < 0x3FFFFF1D)
        {
          *(*(this + 7) + 936) = v7;
          goto LABEL_18;
        }
      }

      else
      {
        ERR_put_error(17, 0, 115, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 169);
      }

      v8 = *(this + 4);
      *(*(this + 7) + 936) = 1472;
      if (v8)
      {
        if (*v8 && (v9 = *(*v8 + 48)) != 0)
        {
          v9();
        }

        else
        {
          ERR_put_error(17, 0, 115, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 169);
        }
      }
    }

    else
    {
      *(v3 + 936) = 1472;
    }
  }

LABEL_18:
  v10 = bssl::dtls_seal_max_input_len(this, *(*(this + 7) + 150), *(*(this + 7) + 936));
  if (v10 <= 0x11)
  {
    v11 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/d1_both.cc";
    v12 = 16;
    v13 = 169;
    v14 = 970;
LABEL_95:
    ERR_put_error(v12, 0, v13, v11, v14);
    return 0xFFFFFFFFLL;
  }

  v15 = (v10 - 2) >> 4;
  v16 = *(this + 7);
  v17 = *(v16 + 912);
  if (v17 >= v15)
  {
    v18 = v17 - v15;
  }

  else
  {
    v18 = 0;
  }

  if (v18 >= v17)
  {
    v35 = 0;
    v209 = 0;
    v34 = &v207;
  }

  else
  {
    v19 = v16 + 656;
    v20 = *(v16 + 920);
    if (v15 >= v17)
    {
      v15 = *(v16 + 912);
    }

    v21 = (v17 + v20 - v15) & 0x1F;
    v22 = v17 >= v21;
    v23 = v17 - v21;
    if (!v22)
    {
      v23 = 0;
    }

    v24 = v15 - 1;
    if (v23 >= v15 - 1)
    {
      v25 = v15 - 1;
    }

    else
    {
      v25 = v23;
    }

    v26 = 32;
    if (v25 < 0x20)
    {
      v26 = v25;
    }

    if (v25 <= 0x13)
    {
      goto LABEL_45;
    }

    v27 = v17 + v20 - v15;
    v28 = v17 - (v27 & 0x1F);
    if (v17 < (v27 & 0x1Fu))
    {
      v28 = 0;
    }

    if (v28 < v24)
    {
      v24 = v28;
    }

    v29 = 32;
    if (v24 < 0x20)
    {
      v29 = v24;
    }

    v30 = (~v27 & 0x1Fu) < (v29 & 0x1Fu) || v24 > 0x1F;
    if (v30 || (v31 = v17 + v20 - v15, &v207 + -v16 + -8 * (v31 & 0x1F) - 656 < 0x20))
    {
LABEL_45:
      v32 = 0;
    }

    else
    {
      v50 = (v26 + 1) & 3;
      if (!v50)
      {
        v50 = 4;
      }

      v32 = v26 + 1 - v50;
      LOBYTE(v18) = v18 + v32;
      v51 = &v208;
      v52 = ~v26 + v50;
      do
      {
        v53 = (v19 + 8 * (v31 & 0x1F));
        v54 = v53[1];
        *(v51 - 1) = *v53;
        *v51 = v54;
        v51 += 4;
        v31 += 4;
        v52 += 4;
      }

      while (v52);
    }

    v33 = v18 + v20;
    do
    {
      if ((v33 & 0x1Fu) >= v17 || v32 == 32)
      {
        goto LABEL_413;
      }

      *(&v207 + v32++) = *(v19 + 8 * (v33++ & 0x1F));
    }

    while (v15 != v32);
    v209 = v15;
    v34 = &v207 + v15;
    v35 = 126 - 2 * __clz(v15);
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,bssl::DTLSRecordNumber *,false>(&v207, v34, v35, 1);
  __len[1] = 0;
  *__dst = 0u;
  __len[0] = &v205;
  v201 = 0x202uLL;
  if (!CBB_add_u16_length_prefixed(__dst, v198))
  {
LABEL_413:
    abort();
  }

  if (v209)
  {
    v36 = 8 * v209;
    v37 = &v207;
    do
    {
      v38 = *v37;
      *&v202 = 0;
      if (!CBB_add_space(v198, &v202, 8))
      {
        goto LABEL_413;
      }

      *(v202 + 7) = BYTE6(v38);
      *(v202 + 6) = HIBYTE(v38);
      *(v202 + 5) = 0;
      *(v202 + 4) = 0;
      *(v202 + 3) = 0;
      *(v202 + 2) = 0;
      *(v202 + 1) = 0;
      *v202 = 0;
      v39 = *v37;
      *&v202 = 0;
      if (!CBB_add_space(v198, &v202, 8))
      {
        goto LABEL_413;
      }

      *(v202 + 7) = v39;
      *(v202 + 6) = BYTE1(v39);
      *(v202 + 5) = BYTE2(v39);
      *(v202 + 4) = BYTE3(v39);
      *(v202 + 3) = BYTE4(v39);
      *(v202 + 2) = BYTE5(v39);
      *(v202 + 1) = 0;
      *v202 = 0;
      ++v37;
      v36 -= 8;
    }

    while (v36);
  }

  if (!CBB_flush(__dst))
  {
    goto LABEL_413;
  }

  v196 = 0;
  v197 = 0;
  v40 = __len[0];
  if (LOBYTE(__dst[1]))
  {
    v41 = __len[1] + v201;
    v40 = (v41 + *__len[0]);
    v42 = *(__len[0] + 8) - v41;
  }

  else
  {
    v42 = __len[1];
  }

  *&v211 = &v202;
  *(&v211 + 1) = &v197;
  if (!bssl::dtls_seal_record(this, &v196, v211, 0x248uLL, 26, v40, v42, *(*(this + 7) + 150)))
  {
    return 0xFFFFFFFFLL;
  }

  v43 = __len[0];
  if (LOBYTE(__dst[1]))
  {
    v44 = __len[1] + v201;
    v43 = v44 + *__len[0];
    v45 = *(__len[0] + 8) - v44;
    v46 = *(this + 8);
    if (!v46)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v45 = __len[1];
    v46 = *(this + 8);
    if (!v46)
    {
      goto LABEL_82;
    }
  }

  v47 = *(this + 6);
  v48 = *(v47 + 280);
  if (v48 && (*(v48 + 1617) & 4) != 0 && (*(this + 164) & 1) == 0)
  {
    LOWORD(v49) = *(*(v48 + 1560) + 4);
  }

  else
  {
    v49 = *(v47 + 208);
    if (!v49)
    {
      if (**this)
      {
        LOWORD(v49) = -259;
      }

      else
      {
        LOWORD(v49) = 771;
      }
    }
  }

  v46(1, v49, 26, v43, v45, this, *(this + 9));
LABEL_82:
  v55 = *(this + 4);
  if (!v55 || !*v55 || (v56 = *(*v55 + 16)) == 0)
  {
    v59 = 115;
    v60 = 121;
LABEL_97:
    ERR_put_error(17, 0, v59, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v60);
    result = 4294967294;
    goto LABEL_98;
  }

  if (!*(v55 + 16))
  {
    v59 = 114;
    v60 = 125;
    goto LABEL_97;
  }

  if (v197 < 1)
  {
    result = 0;
    goto LABEL_98;
  }

  result = v56(*(this + 4), &v202);
  if (result < 1)
  {
LABEL_98:
    *(*(this + 6) + 196) = 3;
    return result;
  }

  *(v55 + 64) += result;
  v57 = *(this + 4);
  if (!v57)
  {
    goto LABEL_382;
  }

  if (!*v57 || (v58 = *(*v57 + 48)) == 0)
  {
    ERR_put_error(17, 0, 115, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 169);
    goto LABEL_382;
  }

  if (v58() <= 0)
  {
LABEL_382:
    result = 0xFFFFFFFFLL;
    goto LABEL_98;
  }

  **(this + 7) &= ~0x40u;
  v3 = *(this + 7);
  if ((*v3 & 0x20) == 0)
  {
    return 1;
  }

LABEL_93:
  if (*(*(this + 6) + 176))
  {
    v11 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/d1_both.cc";
    v12 = 16;
    v13 = 194;
    v14 = 873;
    goto LABEL_95;
  }

  if (!*(this + 4))
  {
    v11 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/d1_both.cc";
    v12 = 16;
    v13 = 119;
    v14 = 878;
    goto LABEL_95;
  }

  if (*(v3 + 940) >= 0xDu)
  {
    v11 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/d1_both.cc";
    v12 = 16;
    v13 = 198;
    v14 = 883;
    goto LABEL_95;
  }

  LODWORD(v61) = *(v3 + 936);
  if (v61 > 0xE3)
  {
    goto LABEL_112;
  }

  if ((*(this + 129) & 0x10) == 0)
  {
    v61 = BIO_ctrl(*(this + 4), 40, 0, 0);
    if ((v61 - 228) < 0x3FFFFF1D)
    {
      *(*(this + 7) + 936) = v61;
      goto LABEL_112;
    }

    *(*(this + 7) + 936) = 1472;
    BIO_ctrl(*(this + 4), 42, 1472, 0);
    v3 = *(this + 7);
    LODWORD(v61) = *(v3 + 936);
  }

  if (!v61)
  {
    v62 = 0;
    v64 = 0;
    v181 = 1;
    goto LABEL_116;
  }

LABEL_112:
  v62 = v61;
  v63 = malloc_type_malloc(v61 + 8, 0xB4E622C9uLL);
  if (!v63)
  {
    v11 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v12 = 14;
    v13 = 65;
    v14 = 217;
    goto LABEL_95;
  }

  v181 = 0;
  *v63 = v62;
  v64 = (v63 + 1);
  v3 = *(this + 7);
LABEL_116:
  v65 = *(v3 + 928);
  v66 = *(v3 + 640);
  if (v66 <= v65)
  {
LABEL_377:
    if (BIO_flush(*(this + 4)) <= 0)
    {
      *(*(this + 6) + 196) = 3;
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = 1;
    }

    goto LABEL_388;
  }

  v179 = v62;
  v180 = v64;
  while (v66 <= v65)
  {
LABEL_375:
    v65 = *(v3 + 928);
    if (v66 > v65)
    {
      ERR_put_error(16, 0, 169, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/d1_both.cc", 907);
      result = 0;
      goto LABEL_388;
    }

LABEL_376:
    if (v66 <= v65)
    {
      goto LABEL_377;
    }
  }

  v67 = 0;
  v177 = *(v3 + 932);
  v178 = v65;
  v68 = v65;
  v69 = v62;
  v198[0] = 0;
  while (2)
  {
    v71 = v66 - v68;
    v72 = v68 + 1;
    v73 = (v3 + 48 * v68 + 320);
    while ((v73[1] & 1) == 0 && !*(v73 + 2))
    {
      *(v3 + 932) = 0;
      *(v3 + 928) = v72++;
      v73 += 24;
      if (!--v71)
      {
        goto LABEL_120;
      }
    }

    v74 = *v73;
    if (v74 == *(v3 + 150))
    {
      v75 = v3 + 144;
      goto LABEL_128;
    }

    if (*(v3 + 240))
    {
      v79 = 8 * *(v3 + 240);
      v80 = (v3 + 224);
      while (1)
      {
        v75 = *v80;
        if (v74 == *(*v80 + 6))
        {
          break;
        }

        ++v80;
        v79 -= 8;
        if (!v79)
        {
          goto LABEL_136;
        }
      }

LABEL_128:
      v76 = 0;
      v77 = *(*(this + 6) + 208);
      if (v77 > 0xFEFB)
      {
        switch(v77)
        {
          case 0xFEFCu:
            v77 = 772;
            break;
          case 0xFEFDu:
            v77 = 771;
            break;
          case 0xFEFFu:
            v77 = 770;
            break;
          default:
            goto LABEL_145;
        }
      }

      else if (v77 - 769 >= 4)
      {
        if (!*(*(this + 6) + 208))
        {
          v78 = 13;
          goto LABEL_147;
        }

LABEL_145:
        v78 = 5;
        if (v74 == 0 || !v76)
        {
          v78 = 13;
        }

LABEL_147:
        v83 = *(v75 + 8);
        if (*(v83 + 598))
        {
          v81 = *(v83 + 597) + v78;
          v82 = bssl::dtls_seal_max_input_len(this, v74, v69);
          if (!v82)
          {
            goto LABEL_120;
          }
        }

        else
        {
          v81 = v78;
          v82 = bssl::dtls_seal_max_input_len(this, v74, v69);
          if (!v82)
          {
            goto LABEL_120;
          }
        }

        goto LABEL_151;
      }

      v76 = v77 > 0x303;
      goto LABEL_145;
    }

LABEL_136:
    v81 = 0;
    v82 = bssl::dtls_seal_max_input_len(this, v74, v69);
    if (!v82)
    {
      goto LABEL_120;
    }

LABEL_151:
    if (*(v73 + 2) == 1)
    {
      *&v202 = 0;
      *(&v212 + 1) = v198;
      *&v212 = v64;
      if (bssl::dtls_seal_record(this, &v202, v212, v69, 20, bssl::seal_next_record(ssl_st *,bssl::Span<unsigned char>,unsigned long *)::kChangeCipherSpec, 1uLL, *v73))
      {
        v84 = *(this + 8);
        if (v84)
        {
          v85 = *(this + 6);
          v86 = *(v85 + 280);
          if (v86 && (*(v86 + 1617) & 4) != 0 && (*(this + 164) & 1) == 0)
          {
            LOWORD(v87) = *(*(v86 + 1560) + 4);
          }

          else
          {
            v87 = *(v85 + 208);
            if (!v87)
            {
              if (**this)
              {
                LOWORD(v87) = -259;
              }

              else
              {
                LOWORD(v87) = 771;
              }
            }
          }

          v84(1, v87, 20, bssl::seal_next_record(ssl_st *,bssl::Span<unsigned char>,unsigned long *)::kChangeCipherSpec, 1, this, *(this + 9));
        }

        v154 = *(this + 7);
        *(v154 + 932) = 0;
        ++*(v154 + 928);
        v70 = 1;
        goto LABEL_358;
      }

      goto LABEL_341;
    }

    if (v69 < v81)
    {
      goto LABEL_413;
    }

    v88 = *v73;
    if (v69 - v81 >= v82)
    {
      v89 = v82;
    }

    else
    {
      v89 = v69 - v81;
    }

    v203[1] = 0;
    v202 = 0u;
    v191 = (v64 + v81);
    v203[0] = v64 + v81;
    v204 = v89;
    *&v207 = 0;
    v90 = *(this + 7);
    BYTE8(v207) = *(v90 + 928);
    v91 = BYTE8(v207);
    HIDWORD(v207) = *(v90 + 932);
    if (*(v90 + 640) <= BYTE8(v207))
    {
      BYTE9(v207) = *(v90 + 928);
      LODWORD(v208) = *(v90 + 932);
      v70 = 2;
      goto LABEL_326;
    }

    v184 = v88;
    v192 = v89;
    while (1)
    {
      v92 = v90 + 48 * v91;
      if (*(v92 + 320) != *v73 || (*(v92 + 322) & 1) != 0)
      {
LABEL_343:
        v70 = 1;
        goto LABEL_344;
      }

      v93 = *(v92 + 312);
      if (v93 < 4 || (v93 & 0xFFFFFFFFFFFFFFFELL) == 4 || v93 - 6 < 6 || ((v94 = *(v92 + 304), v194 = v94[2], v195 = v94[1], v193 = v94[3], v95 = (v193 | (v195 << 16) | (v194 << 8)), v96 = v93 - 12, v97 = (v94[9] << 16) | (v94[10] << 8) | v94[11], v96 >= v97) ? (v98 = ((v94[6] << 16) | (v94[7] << 8) | v94[8]) == 0) : (v98 = 0), v98 ? (v99 = v97 == v95) : (v99 = 0), v99 ? (v100 = v96 == v97) : (v100 = 0), !v100))
      {
        ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/d1_both.cc", 748);
        v70 = 0;
        goto LABEL_358;
      }

      v101 = *(v90 + 932);
      v102 = *(v92 + 336);
      if (8 * *(v92 + 344) > v101)
      {
        v101 = 8 * *(v92 + 344);
      }

      v103 = v101 >> 3;
      if (v101 >> 3 < v102)
      {
        break;
      }

LABEL_322:
      *(v90 + 932) = 0;
      ++*(v90 + 928);
      if (!v88)
      {
        goto LABEL_343;
      }

      v90 = *(this + 7);
      v91 = *(v90 + 928);
      if (*(v90 + 640) <= v91)
      {
        v70 = 2;
LABEL_344:
        v148 = *(this + 7);
        BYTE9(v207) = *(v148 + 928);
        LODWORD(v208) = *(v148 + 932);
        if (!BYTE8(v202))
        {
          goto LABEL_326;
        }

LABEL_345:
        v149 = *(v203[0] + 8);
        v150 = v203[1] + v204;
        v137 = v149 - v150;
        if (v149 == v150)
        {
          goto LABEL_346;
        }

        v138 = (*v203[0] + v150);
LABEL_328:
        *(&v213 + 1) = v198;
        *&v213 = v64;
        if (bssl::dtls_seal_record(this, &v207, v213, v69, 22, v138, v137, *v73))
        {
          if (!*(*(this + 6) + 208) || bssl::ssl_protocol_version(this, a2) >= 0x304)
          {
            v139 = *(*(this + 7) + 648);
            if (v139)
            {
              goto LABEL_339;
            }

            v140 = OPENSSL_malloc(0x310uLL);
            v139 = v140;
            if (v140)
            {
              bzero(v140, 0x310uLL);
            }

            v141 = *(this + 7);
            v142 = *(v141 + 648);
            *(v141 + 648) = v139;
            if (v142)
            {
              v144 = *(v142 - 8);
              v143 = (v142 - 8);
              v143[776] = 0;
              v145 = v144 + 8;
              if (v144 != -8)
              {
                bzero(v143, v145);
              }

              free(v143);
              v139 = *(*(this + 7) + 648);
            }

            if (v139)
            {
LABEL_339:
              v205 = v207;
              v206 = v208;
              if (*(v139 + 768) > 0x1FuLL)
              {
                v151 = *(v139 + 776);
                v152 = &v139[3 * (v151 & 0x1F)];
                v153 = v208;
                *v152 = v207;
                *(v152 + 4) = v153;
                *(v139 + 776) = (v151 + 1) & 0x1F;
              }

              else
              {
                v146 = &v139[3 * *(v139 + 768)];
                v147 = v205;
                v146[2] = v206;
                *v146 = v147;
                ++*(v139 + 768);
              }
            }

            else
            {
              v70 = 0;
            }
          }

          goto LABEL_358;
        }

LABEL_341:
        v70 = 0;
        goto LABEL_358;
      }
    }

    v188 = *v94;
    v182 = v94 + 12;
    v183 = v96;
    v185 = v94[5];
    v186 = v94[4];
    while (1)
    {
      v104 = *(v92 + 328);
      v105 = *(v104 + v103) | ~(-1 << (v101 & 7));
      if (v105 == 0xFF)
      {
        while (v102 - 1 != v103)
        {
          v106 = v103 + 1;
          v105 = *(v104 + 1 + v103++);
          if (v105 != 255)
          {
            goto LABEL_191;
          }
        }

        goto LABEL_322;
      }

      v106 = v103;
LABEL_191:
      v107 = v105;
      v108 = 8 * v106;
      if (v105)
      {
        if ((v105 & 2) != 0)
        {
          if ((v105 & 4) != 0)
          {
            if ((v105 & 8) != 0)
            {
              if ((v105 & 0x10) != 0)
              {
                if ((v105 & 0x20) != 0)
                {
                  if ((v105 & 0x40) != 0)
                  {
                    if ((v105 & 0x80) != 0)
                    {
                      v109 = 8;
                      goto LABEL_213;
                    }

                    v109 = 7;
                  }

                  else
                  {
                    v109 = 6;
                  }
                }

                else
                {
                  v109 = 5;
                }
              }

              else
              {
                v109 = 4;
              }
            }

            else
            {
              v109 = 3;
            }
          }

          else
          {
            v109 = 2;
          }
        }

        else
        {
          v109 = 1;
        }
      }

      else
      {
        v109 = 0;
      }

      v110 = v109;
      if ((v107 >> v109))
      {
        goto LABEL_208;
      }

      v110 = v109 + 1;
      if (v109 != 7)
      {
        if ((v107 >> v110))
        {
          goto LABEL_208;
        }

        v110 = v109 + 2;
        if (v109 != 6)
        {
          if ((v107 >> v110))
          {
            goto LABEL_208;
          }

          v110 = v109 + 3;
          if (v109 != 5)
          {
            if ((v107 >> v110))
            {
              goto LABEL_208;
            }

            v110 = v109 + 4;
            if (v109 != 4)
            {
              if ((v107 >> v110))
              {
                goto LABEL_208;
              }

              a2 = v95;
              v110 = v109 + 5;
              if (v109 == 3)
              {
                goto LABEL_269;
              }

              v88 = v184;
              v89 = v192;
              if ((v107 >> v110))
              {
                goto LABEL_208;
              }

              v110 = v109 + 6;
              if (v109 == 2)
              {
                goto LABEL_269;
              }

              v88 = v184;
              v89 = v192;
              if ((v107 >> v110))
              {
                goto LABEL_208;
              }

              v110 = v109 + 7;
              if (v109 == 1)
              {
LABEL_269:
                v88 = v184;
                v89 = v192;
              }

              else
              {
                v88 = v184;
                v89 = v192;
                if ((v107 >> v110))
                {
LABEL_208:
                  v111 = v109 & 7 | (8 * v106);
                  v112 = v110 + v108;
                  goto LABEL_209;
                }
              }
            }
          }
        }
      }

LABEL_213:
      v111 = v109 + v108;
      v116 = v106 + 1;
      if (v102 <= v106 + 1)
      {
        v117 = v106 + 1;
      }

      else
      {
        v117 = v102;
      }

      v118 = ~v106 + v117;
      v119 = -v108;
      v120 = (v116 + v104);
      do
      {
        if (!v118)
        {
          v112 = 8 * v117;
          goto LABEL_209;
        }

        v122 = *v120++;
        v121 = v122;
        --v118;
        v119 -= 8;
      }

      while (!v122);
      v123 = 0;
      if (v121)
      {
        if ((v121 & 2) != 0)
        {
          if ((v121 & 4) != 0)
          {
            if ((v121 & 8) != 0)
            {
              if ((v121 & 0x10) != 0)
              {
                if ((v121 & 0x20) != 0)
                {
                  if ((v121 & 0x40) != 0)
                  {
                    if ((v121 & 0x80) != 0)
                    {
                      v112 = -v119;
                      v88 = v184;
                      v89 = v192;
                      goto LABEL_209;
                    }

                    v123 = 7;
                    v88 = v184;
                    v89 = v192;
                  }

                  else
                  {
                    v123 = 6;
                  }
                }

                else
                {
                  v123 = 5;
                }
              }

              else
              {
                v123 = 4;
              }
            }

            else
            {
              v123 = 3;
            }
          }

          else
          {
            v123 = 2;
          }
        }

        else
        {
          v123 = 1;
        }
      }

      if ((v121 >> v123))
      {
        v134 = v123;
      }

      else
      {
        v134 = v123 + 1;
        if (v123 != 7 && ((v121 >> v134) & 1) == 0)
        {
          v134 = v123 + 2;
          if (v123 != 6 && ((v121 >> v134) & 1) == 0)
          {
            v134 = v123 + 3;
            if (v123 != 5 && ((v121 >> v134) & 1) == 0)
            {
              v134 = v123 + 4;
              if (v123 != 4)
              {
                v88 = v184;
                v89 = v192;
                if ((v121 >> v134))
                {
                  goto LABEL_309;
                }

                v134 = v123 + 5;
                if (v123 != 3)
                {
                  v88 = v184;
                  v89 = v192;
                  if ((v121 >> v134))
                  {
                    goto LABEL_309;
                  }

                  v134 = v123 + 6;
                  if (v123 != 2)
                  {
                    v88 = v184;
                    v89 = v192;
                    if ((v121 >> v134))
                    {
                      goto LABEL_309;
                    }

                    v136 = v123 + 7;
                    if (v136 == 8)
                    {
                      v134 = 8;
                    }

                    else
                    {
                      v134 = 8;
                      if ((v121 >> v136))
                      {
                        v134 = v136;
                      }
                    }
                  }
                }
              }

              v88 = v184;
              v89 = v192;
            }
          }
        }
      }

LABEL_309:
      v135 = (v121 & 1) != 0 ? 0 : v134;
      v112 = v135 - v119;
LABEL_209:
      v113 = v112 - v111;
      if (v112 == v111)
      {
        goto LABEL_322;
      }

      v114 = v203[1];
      v115 = BYTE8(v202) ? *(v203[0] + 8) - (v203[1] + v204) : v203[1];
      v124 = v89 - v115;
      if (v124 < 0xD)
      {
        break;
      }

      if (v124 - 12 >= v113)
      {
        v125 = v112 - v111;
      }

      else
      {
        v125 = v124 - 12;
      }

      if (!v95)
      {
        v126 = 0;
        __src = 0;
        v189 = v125;
        v190 = v124 - 12;
        if (!BYTE8(v202))
        {
          goto LABEL_234;
        }

LABEL_233:
        v114 = *(v203[0] + 8) - (v203[1] + v204);
        goto LABEL_234;
      }

      if (v96 < v111)
      {
        goto LABEL_413;
      }

      __src = &v182[v111];
      if (v96 - v111 >= v125)
      {
        v126 = v125;
      }

      else
      {
        v126 = v96 - v111;
      }

      v189 = v125;
      v190 = v124 - 12;
      if (BYTE8(v202))
      {
        goto LABEL_233;
      }

LABEL_234:
      __dst[0] = 0;
      if (!CBB_add_space(&v202, __dst, 1))
      {
        goto LABEL_357;
      }

      *__dst[0] = v188;
      __dst[0] = 0;
      if (!CBB_add_space(&v202, __dst, 3))
      {
        goto LABEL_357;
      }

      *(__dst[0] + 2) = v193;
      *(__dst[0] + 1) = v194;
      *__dst[0] = v195;
      __dst[0] = 0;
      if (!CBB_add_space(&v202, __dst, 2))
      {
        goto LABEL_357;
      }

      *(__dst[0] + 1) = v185;
      *__dst[0] = v186;
      __dst[0] = 0;
      if (!CBB_add_space(&v202, __dst, 3))
      {
        goto LABEL_357;
      }

      *(__dst[0] + 2) = v111;
      *(__dst[0] + 1) = BYTE1(v111);
      *__dst[0] = BYTE2(v111);
      if ((v111 & 0xFF000000) != 0)
      {
        v155 = &v204 + 8;
        if (BYTE8(v202))
        {
          v155 = (v203[0] + 24);
        }

        *v155 |= 2u;
        *&v202 = 0;
LABEL_357:
        ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/d1_both.cc", 787);
        v70 = 0;
        goto LABEL_358;
      }

      if (!CBB_add_u24_length_prefixed(&v202, &v205))
      {
        goto LABEL_357;
      }

      __dst[0] = 0;
      if (!CBB_add_space(&v205, __dst, v126))
      {
        goto LABEL_357;
      }

      if (v126)
      {
        memcpy(__dst[0], __src, v126);
      }

      if (!CBB_flush(&v202))
      {
        goto LABEL_357;
      }

      v89 = v192;
      if (v192 < v114)
      {
        goto LABEL_413;
      }

      if (BYTE8(v202))
      {
        v127 = *(v203[0] + 8) - (v203[1] + v204);
      }

      else
      {
        v127 = v203[1];
      }

      v128 = v127 - v114;
      if (v192 - v114 >= v128)
      {
        v129 = v128;
      }

      else
      {
        v129 = v192 - v114;
      }

      v130 = *(this + 8);
      if (v130)
      {
        v131 = *(this + 6);
        v132 = *(v131 + 280);
        if (v132 && (*(v132 + 1617) & 4) != 0 && (*(this + 164) & 1) == 0)
        {
          LOWORD(v133) = *(*(v132 + 1560) + 4);
        }

        else
        {
          v133 = *(v131 + 208);
          if (!v133)
          {
            if (**this)
            {
              LOWORD(v133) = -259;
            }

            else
            {
              LOWORD(v133) = 771;
            }
          }
        }

        v130(1, v133, 22, &v191[v114], v129, this, *(this + 9));
        v89 = v192;
      }

      v90 = *(this + 7);
      *(v90 + 932) = v189 + v111;
      if (v190 < v113)
      {
        v70 = 2;
        goto LABEL_344;
      }

      v102 = *(v92 + 336);
      v101 = 8 * *(v92 + 344);
      if (v101 <= (v189 + v111))
      {
        v101 = (v189 + v111);
      }

      v103 = v101 >> 3;
      v95 = (v193 | (v195 << 16) | (v194 << 8));
      v88 = v184;
      v96 = v183;
      if (v101 >> 3 >= v102)
      {
        goto LABEL_322;
      }
    }

    v70 = 2;
    BYTE9(v207) = *(v90 + 928);
    LODWORD(v208) = *(v90 + 932);
    if (BYTE8(v202))
    {
      goto LABEL_345;
    }

LABEL_326:
    v137 = v203[1];
    if (v203[1])
    {
      v138 = v203[0];
      goto LABEL_328;
    }

LABEL_346:
    v70 = 2;
LABEL_358:
    if (!v70)
    {
      result = 0xFFFFFFFFLL;
      v62 = v179;
      v64 = v180;
      goto LABEL_388;
    }

LABEL_359:
    v22 = v69 >= v198[0];
    v69 -= v198[0];
    if (!v22)
    {
      goto LABEL_413;
    }

    v67 += v198[0];
    if (v70 != 2)
    {
      v64 += v198[0];
      v3 = *(this + 7);
      v66 = *(v3 + 640);
      v68 = *(v3 + 928);
      v198[0] = 0;
      if (v66 > v68)
      {
        continue;
      }

LABEL_120:
      v70 = 2;
      goto LABEL_359;
    }

    break;
  }

  if (!v67)
  {
    v3 = *(this + 7);
    v66 = *(v3 + 640);
    v62 = v179;
    v64 = v180;
    goto LABEL_375;
  }

  v156 = *(this + 4);
  v62 = v179;
  v64 = v180;
  if (!v156 || !*v156 || (v157 = *(*v156 + 16)) == 0)
  {
    v158 = 115;
    v159 = 121;
    goto LABEL_386;
  }

  if (*(v156 + 16))
  {
    if (v67 < 1)
    {
      result = 0;
      goto LABEL_387;
    }

    result = v157(*(this + 4), v180, v67);
    if (result < 1)
    {
      goto LABEL_387;
    }

    *(v156 + 64) += result;
    v3 = *(this + 7);
    v65 = *(v3 + 928);
    v66 = *(v3 + 640);
    goto LABEL_376;
  }

  v158 = 114;
  v159 = 125;
LABEL_386:
  ERR_put_error(17, 0, v158, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v159);
  result = 4294967294;
LABEL_387:
  v160 = *(this + 7);
  *(v160 + 928) = v178;
  *(v160 + 932) = v177;
  *(*(this + 6) + 196) = 3;
LABEL_388:
  if ((v181 & 1) == 0 && v62 - 1 >= -v64)
  {
    __break(1u);
  }

  if (v64)
  {
    v161 = result;
    v163 = *(v64 - 8);
    v162 = (v64 - 8);
    v164 = v163 + 8;
    if (v163 != -8)
    {
      bzero(v162, v164);
    }

    free(v162);
    result = v161;
  }

  if (result >= 1)
  {
    v165 = *(this + 7);
    *(v165 + 928) = 0;
    *(v165 + 932) = 0;
    *v165 &= ~0x20u;
    v166 = *(*(this + 6) + 280);
    if (v166 && (*(v166 + 1616) & 8) == 0 || bssl::ssl_protocol_version(this, a2) >= 0x304)
    {
      v167 = *(this + 7);
      if (*(v167 + 940))
      {
        v168 = 2 * *(v167 + 976);
        if (v168 >= 0xEA60)
        {
          v168 = 60000;
        }
      }

      else
      {
        v168 = *(this + 20);
      }

      *(v167 + 976) = v168;
      current_time = bssl::ssl_ctx_get_current_time(*(this + 13), a2);
      v171 = *(this + 7);
      v172 = *(v171 + 976);
      v173 = 1000 * v172 - 1000000 * ((1000 * v172 * 0x10C6F7A0B5EEuLL) >> 64) + v170;
      if (v173 <= 0xF423F)
      {
        v174 = v172 / 0x3E8uLL;
      }

      else
      {
        v174 = v172 / 0x3E8uLL + 1;
      }

      if (__CFADD__(v174, current_time))
      {
        v175 = 0;
        *(v171 + 952) = 0;
      }

      else
      {
        if (v173 > 0xF423F)
        {
          v173 -= 1000000;
        }

        v176 = v170 & 0xFFFFFFFF00000000 | v173;
        v175 = v174 + current_time;
        *(v171 + 952) = v176;
      }

      *(v171 + 944) = v175;
    }

    return 1;
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,bssl::DTLSRecordNumber *,false>(uint64_t result, unint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v72 = *v8;
        v73 = *(a2 - 1);
        if (v73 < *v8)
        {
          *v8 = v73;
          *(a2 - 1) = v72;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v18 = v8 + 1;
      v74 = v8[1];
      v39 = v8 + 2;
      v12 = v8[2];
      v75 = *v8;
      if (v74 < *v8)
      {
        v76 = v8;
        v77 = v8 + 2;
        result = *v8;
        if (v12 >= v74)
        {
          *v8 = v74;
          v8[1] = v75;
          v76 = v8 + 1;
          v77 = v8 + 2;
          result = v75;
          if (v12 >= v75)
          {
            goto LABEL_207;
          }
        }

        goto LABEL_195;
      }

      if (v12 >= v74)
      {
        goto LABEL_207;
      }

      *v18 = v12;
      *v39 = v74;
      v76 = v8;
      v77 = v8 + 1;
      result = v74;
      if (v12 < v75)
      {
LABEL_195:
        *v76 = v12;
        *v77 = v75;
        v74 = result;
      }

      v117 = *(a2 - 1);
      if (v117 >= v74)
      {
        return result;
      }

      goto LABEL_208;
    }

    if (v9 == 5)
    {
      v63 = v8 + 1;
      v64 = v8[1];
      v66 = v8 + 2;
      v65 = v8[2];
      v67 = *v8;
      if (v64 >= *v8)
      {
        if (v65 >= v64)
        {
          v70 = *v8;
          v67 = v8[1];
        }

        else
        {
          v68 = v8;
          v69 = v8 + 1;
          *v63 = v65;
          *v66 = v64;
          v70 = v65;
          result = v67;
          v71 = v64;
          if (v65 < v67)
          {
            goto LABEL_214;
          }

          v70 = v67;
          v67 = v65;
          v65 = v64;
        }
      }

      else
      {
        if (v65 < v64)
        {
          v68 = v8;
          v69 = v8 + 2;
          v70 = v8[2];
          result = v8[1];
          v71 = *v8;
          goto LABEL_214;
        }

        v68 = v8 + 1;
        v69 = v8 + 2;
        *v8 = v64;
        v8[1] = v67;
        v70 = v64;
        result = v65;
        v71 = v67;
        if (v65 >= v67)
        {
          v70 = v64;
        }

        else
        {
LABEL_214:
          *v68 = v65;
          *v69 = v67;
          v67 = result;
          v65 = v71;
        }
      }

      v124 = v8[3];
      if (v124 >= v65)
      {
        v65 = v8[3];
      }

      else
      {
        v8[2] = v124;
        v8[3] = v65;
        if (v124 < v67)
        {
          *v63 = v124;
          *v66 = v67;
          if (v124 < v70)
          {
            *v8 = v124;
            v8[1] = v70;
          }
        }
      }

      v125 = *(a2 - 1);
      if (v125 >= v65)
      {
        return result;
      }

      v8[3] = v125;
      *(a2 - 1) = v65;
      v126 = v8[2];
      v122 = v8[3];
      if (v122 >= v126)
      {
        return result;
      }

      v8[2] = v122;
      v8[3] = v126;
      v127 = v8[1];
      if (v122 >= v127)
      {
        return result;
      }

      v8[1] = v122;
      v8[2] = v127;
      goto LABEL_226;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v18 = v8 + 1;
      v79 = v8 == a2 || v18 == a2;
      if (a4)
      {
        if (!v79)
        {
          v80 = 8;
          v81 = v8;
          do
          {
            v83 = *v81;
            v81 = v18;
            v84 = *v18;
            if (v84 < v83)
            {
              v85 = v80;
              do
              {
                *(v8 + v85) = v83;
                v86 = v85 - 8;
                if (v85 == 8)
                {
                  v82 = v8;
                  goto LABEL_139;
                }

                v83 = *(v8 + v85 - 16);
                v85 -= 8;
              }

              while (v84 < v83);
              v82 = (v8 + v86);
LABEL_139:
              *v82 = v84;
            }

            v18 = v81 + 1;
            v80 += 8;
          }

          while (v81 + 1 != a2);
        }

        return result;
      }

      if (v79)
      {
        return result;
      }

      v39 = 0;
      v118 = 8;
      while (1)
      {
        v12 = *(v39 + v8);
        v39 = v118;
        v119 = *v18;
        if (*v18 < v12)
        {
          break;
        }

LABEL_200:
        v118 = (v39 + 1);
        if (++v18 == a2)
        {
          return result;
        }
      }

      v120 = 0;
      while (1)
      {
        v18[v120] = v12;
        if (!&v39[v120])
        {
          break;
        }

        v12 = v18[v120 - 2];
        --v120;
        if (v119 >= v12)
        {
          v18[v120] = v119;
          goto LABEL_200;
        }
      }

LABEL_206:
      __break(1u);
LABEL_207:
      v74 = v12;
      v117 = *(a2 - 1);
      if (v117 >= v74)
      {
        return result;
      }

LABEL_208:
      *v39 = v117;
      *(a2 - 1) = v74;
      v121 = *v18;
      v122 = *v39;
      if (*v39 >= v121)
      {
        return result;
      }

      v7[1] = v122;
      v7[2] = v121;
LABEL_226:
      v128 = *v7;
      if (v122 < *v7)
      {
        *v7 = v122;
        v7[1] = v128;
      }

      return result;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v87 = (v9 - 2) >> 1;
      v88 = v87;
      do
      {
        if (v87 >= v88)
        {
          v90 = (2 * (v88 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
          v91 = &v8[v90];
          if (2 * (v88 & 0x1FFFFFFFFFFFFFFFLL) + 2 >= v9)
          {
            v92 = *v91;
            v94 = &v8[v88];
            v95 = *v94;
            if (*v91 >= *v94)
            {
              goto LABEL_166;
            }
          }

          else
          {
            v92 = v91[1];
            v93 = *v91 >= v92;
            if (*v91 > v92)
            {
              v92 = *v91;
            }

            if (!v93)
            {
              ++v91;
              v90 = 2 * (v88 & 0x1FFFFFFFFFFFFFFFLL) + 2;
            }

            v94 = &v8[v88];
            v95 = *v94;
            if (v92 >= *v94)
            {
LABEL_166:
              while (1)
              {
                *v94 = v92;
                v94 = v91;
                if (v87 < v90)
                {
                  break;
                }

                v97 = (2 * (v90 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
                v91 = &v8[v97];
                v90 = 2 * v90 + 2;
                if (v90 < v9)
                {
                  v92 = v91[1];
                  result = *v91;
                  v96 = *v91 >= v92;
                  if (*v91 > v92)
                  {
                    v92 = *v91;
                  }

                  if (v96)
                  {
                    v90 = v97;
                  }

                  else
                  {
                    ++v91;
                  }

                  if (v92 < v95)
                  {
                    break;
                  }
                }

                else
                {
                  v92 = *v91;
                  v90 = v97;
                  if (*v91 < v95)
                  {
                    break;
                  }
                }
              }

              *v94 = v95;
            }
          }
        }

        v89 = v88-- <= 0;
      }

      while (!v89);
      while (2)
      {
        v98 = 0;
        v99 = *v8;
        v100 = (v9 - 2) >> 1;
        v101 = v8;
        do
        {
          while (1)
          {
            v108 = &v101[v98];
            v107 = v108 + 1;
            v109 = (2 * v98) | 1;
            v98 = 2 * v98 + 2;
            if (v98 < v9)
            {
              break;
            }

            v98 = v109;
            *v101 = *v107;
            v101 = v108 + 1;
            if (v109 > v100)
            {
              goto LABEL_181;
            }
          }

          v104 = v108[2];
          v103 = v108 + 2;
          v102 = v104;
          v105 = *(v103 - 1);
          v106 = v105 >= v104;
          if (v105 > v104)
          {
            v102 = *(v103 - 1);
          }

          if (v106)
          {
            v98 = v109;
          }

          else
          {
            v107 = v103;
          }

          *v101 = v102;
          v101 = v107;
        }

        while (v98 <= v100);
LABEL_181:
        if (v107 == --a2)
        {
LABEL_170:
          *v107 = v99;
        }

        else
        {
          *v107 = *a2;
          *a2 = v99;
          v110 = (v107 - v8 + 8) >> 3;
          v89 = v110 < 2;
          v111 = v110 - 2;
          if (!v89)
          {
            v112 = v111 >> 1;
            v113 = &v8[v111 >> 1];
            v99 = *v107;
            v114 = *v113;
            if (*v113 < *v107)
            {
              do
              {
                *v107 = v114;
                v107 = v113;
                if (!v112)
                {
                  break;
                }

                v112 = (v112 - 1) >> 1;
                v113 = &v8[v112];
                v114 = *v113;
              }

              while (*v113 < v99);
              goto LABEL_170;
            }
          }
        }

        v89 = v9-- <= 2;
        if (v89)
        {
          return result;
        }

        continue;
      }
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    if (v9 < 0x81)
    {
      v15 = *v10;
      v16 = *v8;
      if (*v8 >= *v11)
      {
        if (v12 < v16)
        {
          *v8 = v12;
          *(a2 - 1) = v16;
          v18 = *v11;
          if (*v8 < *v11)
          {
            *v11 = *v8;
            *v8 = v18;
            --a3;
            if (a4)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          }
        }
      }

      else
      {
        if (v12 < v16)
        {
          *v11 = v12;
          goto LABEL_37;
        }

        *v11 = v16;
        *v8 = v15;
        v25 = *(a2 - 1);
        if (v25 < v15)
        {
          *v8 = v25;
LABEL_37:
          *(a2 - 1) = v15;
        }
      }

      --a3;
      v18 = *v8;
      if (a4)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v13 = *v8;
    v14 = *v10;
    if (*v10 >= *v8)
    {
      if (v12 < v14)
      {
        *v10 = v12;
        *(a2 - 1) = v14;
        v17 = *v8;
        if (*v10 < *v8)
        {
          *v8 = *v10;
          *v10 = v17;
        }
      }
    }

    else
    {
      if (v12 >= v14)
      {
        *v8 = v14;
        *v10 = v13;
        v19 = *(a2 - 1);
        if (v19 >= v13)
        {
          goto LABEL_29;
        }

        *v10 = v19;
      }

      else
      {
        *v8 = v12;
      }

      *(a2 - 1) = v13;
    }

LABEL_29:
    v20 = v10 - 1;
    v21 = *(v10 - 1);
    v22 = v8[1];
    v23 = *(a2 - 2);
    if (v21 >= v22)
    {
      if (v23 < v21)
      {
        *v20 = v23;
        *(a2 - 2) = v21;
        v24 = v8[1];
        if (*v20 < v24)
        {
          v8[1] = *v20;
          *v20 = v24;
        }
      }
    }

    else
    {
      if (v23 >= v21)
      {
        v8[1] = v21;
        *v20 = v22;
        v26 = *(a2 - 2);
        if (v26 >= v22)
        {
          goto LABEL_43;
        }

        *v20 = v26;
      }

      else
      {
        v8[1] = v23;
      }

      *(a2 - 2) = v22;
    }

LABEL_43:
    v29 = v10[1];
    v27 = v10 + 1;
    v28 = v29;
    v30 = v8[2];
    v31 = *(a2 - 3);
    if (v29 >= v30)
    {
      if (v31 < v28)
      {
        *v27 = v31;
        *(a2 - 3) = v28;
        v32 = v8[2];
        if (*v27 < v32)
        {
          v8[2] = *v27;
          *v27 = v32;
        }
      }
    }

    else
    {
      if (v31 >= v28)
      {
        v8[2] = v28;
        *v27 = v30;
        v33 = *(a2 - 3);
        if (v33 >= v30)
        {
          goto LABEL_52;
        }

        *v27 = v33;
      }

      else
      {
        v8[2] = v31;
      }

      *(a2 - 3) = v30;
    }

LABEL_52:
    v12 = *v20;
    v34 = *v11;
    v35 = *v27;
    if (*v11 < *v20)
    {
      if (v35 >= v34)
      {
        *v20 = v34;
        *v11 = v12;
        v20 = v11;
        v34 = v35;
        if (v35 >= v12)
        {
          v36 = *v8;
          *v8 = v12;
          *v11 = v36;
          --a3;
          v18 = *v8;
          if (a4)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }
      }

LABEL_59:
      *v20 = v35;
      *v27 = v12;
LABEL_60:
      v37 = *v8;
      *v8 = v34;
      *v11 = v37;
      --a3;
      v18 = *v8;
      if (a4)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v35 >= v34)
    {
      goto LABEL_60;
    }

    *v11 = v35;
    *v27 = v34;
    v27 = v11;
    v34 = v12;
    if (v35 < v12)
    {
      goto LABEL_59;
    }

    v51 = *v8;
    *v8 = v35;
    *v11 = v51;
    --a3;
    v18 = *v8;
    if (a4)
    {
LABEL_62:
      v38 = 0;
      do
      {
        v39 = &v8[v38 + 1];
        if (v39 == a2)
        {
          goto LABEL_206;
        }

        v12 = *v39;
        ++v38;
      }

      while (*v39 < v18);
      v39 = &v8[v38];
      v40 = a2;
      if (v38 != 1)
      {
        while (v40 != v8)
        {
          v41 = *--v40;
          if (v41 < v18)
          {
            goto LABEL_72;
          }
        }

        goto LABEL_206;
      }

      v40 = a2;
      do
      {
        if (v39 >= v40)
        {
          break;
        }

        v42 = *--v40;
      }

      while (v42 >= v18);
LABEL_72:
      if (v39 < v40)
      {
        v43 = *v40;
        v44 = &v8[v38];
        v45 = v40;
LABEL_74:
        *v44 = v43;
        *v45 = v12;
        v46 = v44 + 1;
        while (v46 != a2)
        {
          v47 = *v46++;
          v12 = v47;
          if (v47 >= v18)
          {
            v44 = v46 - 1;
            while (v45 != v8)
            {
              v48 = *--v45;
              v43 = v48;
              if (v48 < v18)
              {
                if (v44 < v45)
                {
                  goto LABEL_74;
                }

                v49 = v46 - 2;
                if (v46 - 2 != v8)
                {
                  goto LABEL_84;
                }

                goto LABEL_85;
              }
            }

            goto LABEL_206;
          }
        }

        goto LABEL_206;
      }

      v49 = v39 - 1;
      if (v39 - 1 != v8)
      {
LABEL_84:
        *v8 = *v49;
      }

LABEL_85:
      *v49 = v18;
      if (v39 < v40)
      {
LABEL_88:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,bssl::DTLSRecordNumber *,false>(v7, v49, a3, a4 & 1);
        a4 = 0;
        v8 = v49 + 1;
        continue;
      }

      v50 = std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,bssl::DTLSRecordNumber *>(v8, v49);
      v8 = v49 + 1;
      result = std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,bssl::DTLSRecordNumber *>(v49 + 1, a2);
      if (!result)
      {
        if (v50)
        {
          continue;
        }

        goto LABEL_88;
      }

      a2 = v49;
      if (v50)
      {
        return result;
      }

      goto LABEL_2;
    }

LABEL_61:
    if (*(v8 - 1) < v18)
    {
      goto LABEL_62;
    }

    if (v18 >= *(a2 - 1))
    {
      v53 = v8 + 1;
      do
      {
        v8 = v53;
        if (v53 >= a2)
        {
          break;
        }

        ++v53;
      }

      while (v18 >= *v8);
    }

    else
    {
      v39 = v8 + 1;
      do
      {
        if (v39 == a2)
        {
          goto LABEL_206;
        }

        v52 = *v39++;
      }

      while (v18 >= v52);
      v8 = v39 - 1;
    }

    v39 = a2;
    if (v8 < a2)
    {
      v39 = a2;
      while (v39 != v7)
      {
        v54 = *--v39;
        if (v18 >= v54)
        {
          goto LABEL_103;
        }
      }

      goto LABEL_206;
    }

LABEL_103:
    if (v8 < v39)
    {
      v55 = *v8;
      v12 = *v39;
      do
      {
        *v8 = v12;
        v56 = v8 + 1;
        *v39 = v55;
        do
        {
          if (v56 == a2)
          {
            goto LABEL_206;
          }

          v57 = *v56++;
          v55 = v57;
        }

        while (v18 >= v57);
        v8 = v56 - 1;
        do
        {
          if (v39 == v7)
          {
            goto LABEL_206;
          }

          v58 = *--v39;
          v12 = v58;
        }

        while (v18 < v58);
      }

      while (v8 < v39);
    }

    v59 = v8 - 1;
    if (v8 - 1 != v7)
    {
      *v7 = *v59;
    }

    a4 = 0;
    *v59 = v18;
  }

  v60 = *v8;
  v61 = v8[1];
  v62 = *(a2 - 1);
  if (v61 < *v8)
  {
    if (v62 >= v61)
    {
      *v8 = v61;
      v8[1] = v60;
      v123 = *(a2 - 1);
      if (v123 >= v60)
      {
        return result;
      }

      v8[1] = v123;
    }

    else
    {
      *v8 = v62;
    }

    *(a2 - 1) = v60;
    return result;
  }

  if (v62 < v61)
  {
    v8[1] = v62;
    *(a2 - 1) = v61;
    v115 = *v8;
    v116 = v8[1];
    if (v116 < *v8)
    {
      *v8 = v116;
      v8[1] = v115;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,bssl::DTLSRecordNumber *>(unint64_t *a1, unint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 >= *a1)
      {
        if (v18 >= v17)
        {
          return 1;
        }

        a1[1] = v18;
        *(a2 - 1) = v17;
        v33 = *a1;
        v34 = a1[1];
        if (v34 >= *a1)
        {
          return 1;
        }

        *a1 = v34;
        a1[1] = v33;
        return 1;
      }

      else if (v18 >= v17)
      {
        *a1 = v17;
        a1[1] = v16;
        v47 = *(a2 - 1);
        if (v47 >= v16)
        {
          return 1;
        }

        a1[1] = v47;
        *(a2 - 1) = v16;
        return 1;
      }

      else
      {
        *a1 = v18;
        *(a2 - 1) = v16;
        return 1;
      }
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          v42 = a1[3];
          if (v42 < v6)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
          v42 = a1[3];
          if (v42 < v6)
          {
LABEL_57:
            a1[2] = v42;
            a1[3] = v6;
            if (v42 < v8)
            {
              *v4 = v42;
              *v7 = v8;
              if (v42 < v11)
              {
                *a1 = v42;
                a1[1] = v11;
              }
            }

LABEL_62:
            v48 = *(a2 - 1);
            if (v48 >= v6)
            {
              return 1;
            }

            a1[3] = v48;
            *(a2 - 1) = v6;
            v49 = a1[2];
            v45 = a1[3];
            if (v45 >= v49)
            {
              return 1;
            }

            a1[2] = v45;
            a1[3] = v49;
            v50 = a1[1];
            if (v45 >= v50)
            {
              return 1;
            }

            a1[1] = v45;
            a1[2] = v50;
            v46 = *a1;
            if (v45 >= *a1)
            {
              return 1;
            }

            goto LABEL_66;
          }

LABEL_61:
          v6 = v42;
          goto LABEL_62;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          v42 = a1[3];
          if (v42 < v6)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      v42 = a1[3];
      if (v42 < v13)
      {
        goto LABEL_57;
      }

      goto LABEL_61;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
        goto LABEL_49;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v43 = *(a2 - 1);
        if (v43 >= v26)
        {
          return 1;
        }

        goto LABEL_50;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
LABEL_49:
          v26 = v28;
          v43 = *(a2 - 1);
          if (v43 >= v26)
          {
            return 1;
          }

LABEL_50:
          *v27 = v43;
          *(a2 - 1) = v26;
          v44 = *v25;
          v45 = *v27;
          if (*v27 >= v44)
          {
            return 1;
          }

          a1[1] = v45;
          a1[2] = v44;
          v46 = *a1;
          if (v45 >= *a1)
          {
            return 1;
          }

LABEL_66:
          *a1 = v45;
          a1[1] = v46;
          return 1;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_16:
    v20 = a1 + 2;
    v19 = a1[2];
    v21 = a1[1];
    v22 = *a1;
    if (v21 >= *a1)
    {
      if (v19 >= v21)
      {
        goto LABEL_30;
      }

      a1[1] = v19;
      *v20 = v21;
      v23 = a1;
      v24 = a1 + 1;
    }

    else
    {
      v23 = a1;
      v24 = a1 + 2;
      if (v19 < v21)
      {
LABEL_29:
        *v23 = v19;
        *v24 = v22;
        goto LABEL_30;
      }

      *a1 = v21;
      a1[1] = v22;
      v23 = a1 + 1;
      v24 = a1 + 2;
    }

    if (v19 < v22)
    {
      goto LABEL_29;
    }

LABEL_30:
    v35 = a1 + 3;
    if (a1 + 3 == a2)
    {
      return 1;
    }

    v36 = 0;
    for (i = 24; ; i += 8)
    {
      v38 = *v20;
      v39 = *v35;
      if (*v35 < v38)
      {
        break;
      }

LABEL_33:
      v20 = v35++;
      if (v35 == a2)
      {
        return 1;
      }
    }

    v40 = i;
    do
    {
      *(a1 + v40) = v38;
      v41 = v40 - 8;
      if (v40 == 8)
      {
        *a1 = v39;
        if (++v36 != 8)
        {
          goto LABEL_33;
        }

        return v35 + 1 == a2;
      }

      v38 = *(a1 + v40 - 16);
      v40 -= 8;
    }

    while (v39 < v38);
    *(a1 + v41) = v39;
    if (++v36 != 8)
    {
      goto LABEL_33;
    }

    return v35 + 1 == a2;
  }

  v14 = *a1;
  v15 = *(a2 - 1);
  if (v15 >= *a1)
  {
    return 1;
  }

  *a1 = v15;
  *(a2 - 1) = v14;
  return 1;
}

void bssl::DTLS1_STATE::~DTLS1_STATE(bssl::DTLS1_STATE *this)
{
  *(this + 912) = 0;
  v2 = *(this + 81);
  *(this + 81) = 0;
  if (v2)
  {
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    v3[776] = 0;
    v5 = v4 + 8;
    if (v4 != -8)
    {
      bzero(v3, v5);
    }

    free(v3);
  }

  v6 = *(this + 640);
  if (*(this + 640))
  {
    v7 = (this + 304);
    do
    {
      v9 = v7[3];
      v8 = v7[4];
      if (v8)
      {
        if (v8 - 1 >= -v9)
        {
          goto LABEL_218;
        }
      }

      if (v9)
      {
        v11 = *(v9 - 8);
        v10 = (v9 - 8);
        v12 = v11 + 8;
        if (v11 != -8)
        {
          bzero(v10, v12);
        }

        free(v10);
      }

      v7[3] = 0;
      v7[4] = 0;
      v14 = *v7;
      v13 = v7[1];
      if (v13)
      {
        if (v13 - 1 >= -v14)
        {
          goto LABEL_218;
        }
      }

      if (v14)
      {
        v16 = *(v14 - 8);
        v15 = (v14 - 8);
        v17 = v16 + 8;
        if (v16 != -8)
        {
          bzero(v15, v17);
        }

        free(v15);
      }

      *v7 = 0;
      v7[1] = 0;
      v7 += 6;
    }

    while (--v6);
  }

  *(this + 640) = 0;
  v18 = *(this + 37);
  *(this + 37) = 0;
  if (v18)
  {
    v20 = v18[3];
    v19 = v18[4];
    if (v19 && v19 - 1 >= -v20)
    {
      goto LABEL_218;
    }

    if (v20)
    {
      v22 = *(v20 - 8);
      v21 = (v20 - 8);
      v23 = v22 + 8;
      if (v22 != -8)
      {
        bzero(v21, v23);
      }

      free(v21);
    }

    v18[3] = 0;
    v18[4] = 0;
    v25 = v18[1];
    v24 = v18[2];
    if (v24)
    {
      if (v24 - 1 >= -v25)
      {
        goto LABEL_218;
      }
    }

    if (v25)
    {
      v27 = *(v25 - 8);
      v26 = (v25 - 8);
      v28 = v27 + 8;
      if (v27 != -8)
      {
        bzero(v26, v28);
      }

      free(v26);
    }

    v18[1] = 0;
    v18[2] = 0;
    v30 = *(v18 - 1);
    v29 = v18 - 1;
    v31 = v30 + 8;
    if (v30 != -8)
    {
      bzero(v29, v31);
    }

    free(v29);
  }

  v32 = *(this + 36);
  *(this + 36) = 0;
  if (v32)
  {
    v34 = v32[3];
    v33 = v32[4];
    if (v33 && v33 - 1 >= -v34)
    {
      goto LABEL_218;
    }

    if (v34)
    {
      v36 = *(v34 - 8);
      v35 = (v34 - 8);
      v37 = v36 + 8;
      if (v36 != -8)
      {
        bzero(v35, v37);
      }

      free(v35);
    }

    v32[3] = 0;
    v32[4] = 0;
    v39 = v32[1];
    v38 = v32[2];
    if (v38)
    {
      if (v38 - 1 >= -v39)
      {
        goto LABEL_218;
      }
    }

    if (v39)
    {
      v41 = *(v39 - 8);
      v40 = (v39 - 8);
      v42 = v41 + 8;
      if (v41 != -8)
      {
        bzero(v40, v42);
      }

      free(v40);
    }

    v32[1] = 0;
    v32[2] = 0;
    v44 = *(v32 - 1);
    v43 = v32 - 1;
    v45 = v44 + 8;
    if (v44 != -8)
    {
      bzero(v43, v45);
    }

    free(v43);
  }

  v46 = *(this + 35);
  *(this + 35) = 0;
  if (v46)
  {
    v48 = v46[3];
    v47 = v46[4];
    if (v47 && v47 - 1 >= -v48)
    {
      goto LABEL_218;
    }

    if (v48)
    {
      v50 = *(v48 - 8);
      v49 = (v48 - 8);
      v51 = v50 + 8;
      if (v50 != -8)
      {
        bzero(v49, v51);
      }

      free(v49);
    }

    v46[3] = 0;
    v46[4] = 0;
    v53 = v46[1];
    v52 = v46[2];
    if (v52)
    {
      if (v52 - 1 >= -v53)
      {
        goto LABEL_218;
      }
    }

    if (v53)
    {
      v55 = *(v53 - 8);
      v54 = (v53 - 8);
      v56 = v55 + 8;
      if (v55 != -8)
      {
        bzero(v54, v56);
      }

      free(v54);
    }

    v46[1] = 0;
    v46[2] = 0;
    v58 = *(v46 - 1);
    v57 = v46 - 1;
    v59 = v58 + 8;
    if (v58 != -8)
    {
      bzero(v57, v59);
    }

    free(v57);
  }

  v60 = *(this + 34);
  *(this + 34) = 0;
  if (v60)
  {
    v62 = v60[3];
    v61 = v60[4];
    if (v61 && v61 - 1 >= -v62)
    {
      goto LABEL_218;
    }

    if (v62)
    {
      v64 = *(v62 - 8);
      v63 = (v62 - 8);
      v65 = v64 + 8;
      if (v64 != -8)
      {
        bzero(v63, v65);
      }

      free(v63);
    }

    v60[3] = 0;
    v60[4] = 0;
    v67 = v60[1];
    v66 = v60[2];
    if (v66)
    {
      if (v66 - 1 >= -v67)
      {
        goto LABEL_218;
      }
    }

    if (v67)
    {
      v69 = *(v67 - 8);
      v68 = (v67 - 8);
      v70 = v69 + 8;
      if (v69 != -8)
      {
        bzero(v68, v70);
      }

      free(v68);
    }

    v60[1] = 0;
    v60[2] = 0;
    v72 = *(v60 - 1);
    v71 = v60 - 1;
    v73 = v72 + 8;
    if (v72 != -8)
    {
      bzero(v71, v73);
    }

    free(v71);
  }

  v74 = *(this + 33);
  *(this + 33) = 0;
  if (v74)
  {
    v76 = v74[3];
    v75 = v74[4];
    if (v75 && v75 - 1 >= -v76)
    {
      goto LABEL_218;
    }

    if (v76)
    {
      v78 = *(v76 - 8);
      v77 = (v76 - 8);
      v79 = v78 + 8;
      if (v78 != -8)
      {
        bzero(v77, v79);
      }

      free(v77);
    }

    v74[3] = 0;
    v74[4] = 0;
    v81 = v74[1];
    v80 = v74[2];
    if (v80)
    {
      if (v80 - 1 >= -v81)
      {
        goto LABEL_218;
      }
    }

    if (v81)
    {
      v83 = *(v81 - 8);
      v82 = (v81 - 8);
      v84 = v83 + 8;
      if (v83 != -8)
      {
        bzero(v82, v84);
      }

      free(v82);
    }

    v74[1] = 0;
    v74[2] = 0;
    v86 = *(v74 - 1);
    v85 = v74 - 1;
    v87 = v86 + 8;
    if (v86 != -8)
    {
      bzero(v85, v87);
    }

    free(v85);
  }

  v88 = *(this + 32);
  *(this + 32) = 0;
  if (v88)
  {
    v90 = v88[3];
    v89 = v88[4];
    if (v89 && v89 - 1 >= -v90)
    {
      goto LABEL_218;
    }

    if (v90)
    {
      v92 = *(v90 - 8);
      v91 = (v90 - 8);
      v93 = v92 + 8;
      if (v92 != -8)
      {
        bzero(v91, v93);
      }

      free(v91);
    }

    v88[3] = 0;
    v88[4] = 0;
    v95 = v88[1];
    v94 = v88[2];
    if (v94)
    {
      if (v94 - 1 >= -v95)
      {
        goto LABEL_218;
      }
    }

    if (v95)
    {
      v97 = *(v95 - 8);
      v96 = (v95 - 8);
      v98 = v97 + 8;
      if (v97 != -8)
      {
        bzero(v96, v98);
      }

      free(v96);
    }

    v88[1] = 0;
    v88[2] = 0;
    v100 = *(v88 - 1);
    v99 = v88 - 1;
    v101 = v100 + 8;
    if (v100 != -8)
    {
      bzero(v99, v101);
    }

    free(v99);
  }

  v102 = *(this + 31);
  *(this + 31) = 0;
  if (v102)
  {
    v104 = v102[3];
    v103 = v102[4];
    if (v103 && v103 - 1 >= -v104)
    {
      goto LABEL_218;
    }

    if (v104)
    {
      v106 = *(v104 - 8);
      v105 = (v104 - 8);
      v107 = v106 + 8;
      if (v106 != -8)
      {
        bzero(v105, v107);
      }

      free(v105);
    }

    v102[3] = 0;
    v102[4] = 0;
    v109 = v102[1];
    v108 = v102[2];
    if (v108)
    {
      if (v108 - 1 >= -v109)
      {
        goto LABEL_218;
      }
    }

    if (v109)
    {
      v111 = *(v109 - 8);
      v110 = (v109 - 8);
      v112 = v111 + 8;
      if (v111 != -8)
      {
        bzero(v110, v112);
      }

      free(v110);
    }

    v102[1] = 0;
    v102[2] = 0;
    v114 = *(v102 - 1);
    v113 = v102 - 1;
    v115 = v114 + 8;
    if (v114 != -8)
    {
      bzero(v113, v115);
    }

    free(v113);
  }

  v116 = *(this + 240);
  if (*(this + 240))
  {
    v117 = (this + 224);
    do
    {
      v118 = *v117;
      *v117 = 0;
      if (v118)
      {
        if (*(v118 + 72) && v118 + 23 >= -*(v118 + 72))
        {
          goto LABEL_218;
        }

        *(v118 + 72) = 0;
        v119 = *(v118 + 16);
        *(v118 + 16) = 0;
        if (v119)
        {
          (**v119)(v119);
          v121 = *(v119 - 1);
          v120 = v119 - 1;
          v122 = v121 + 8;
          if (v121 != -8)
          {
            bzero(v120, v122);
          }

          free(v120);
        }

        v123 = *(v118 + 8);
        *(v118 + 8) = 0;
        if (v123)
        {
          if (*(v123 + 596) && v123 + 583 >= -*(v123 + 596))
          {
            goto LABEL_218;
          }

          v124 = *(v123 + 8);
          *(v123 + 596) = 0;
          if (v124)
          {
            (*(v124 + 24))(v123 + 8);
            *(v123 + 8) = 0;
          }

          v126 = *(v123 - 8);
          v125 = (v123 - 8);
          v127 = v126 + 8;
          if (v126 != -8)
          {
            bzero(v125, v127);
          }

          free(v125);
        }

        v129 = *(v118 - 8);
        v128 = (v118 - 8);
        v130 = v129 + 8;
        if (v129 != -8)
        {
          bzero(v128, v130);
        }

        free(v128);
      }

      ++v117;
      --v116;
    }

    while (v116);
  }

  *(this + 240) = 0;
  if (*(this + 216) && this + 167 >= -*(this + 216))
  {
    goto LABEL_218;
  }

  *(this + 216) = 0;
  v131 = *(this + 20);
  *(this + 20) = 0;
  if (v131)
  {
    (**v131)(v131);
    v133 = *(v131 - 1);
    v132 = v131 - 1;
    v134 = v133 + 8;
    if (v133 != -8)
    {
      bzero(v132, v134);
    }

    free(v132);
  }

  v135 = *(this + 19);
  *(this + 19) = 0;
  if (v135)
  {
    if (*(v135 + 596) && v135 + 583 >= -*(v135 + 596))
    {
      goto LABEL_218;
    }

    v136 = *(v135 + 8);
    *(v135 + 596) = 0;
    if (v136)
    {
      (*(v136 + 24))(v135 + 8);
      *(v135 + 8) = 0;
    }

    v138 = *(v135 - 8);
    v137 = (v135 - 8);
    v139 = v138 + 8;
    if (v138 != -8)
    {
      bzero(v137, v139);
    }

    free(v137);
  }

  v140 = *(this + 17);
  *(this + 17) = 0;
  if (v140)
  {
    if (*(v140 + 112) && v140 + 63 >= -*(v140 + 112))
    {
      goto LABEL_218;
    }

    *(v140 + 112) = 0;
    v141 = *(v140 + 16);
    *(v140 + 16) = 0;
    if (v141)
    {
      (**v141)(v141);
      v143 = *(v141 - 1);
      v142 = v141 - 1;
      v144 = v143 + 8;
      if (v143 != -8)
      {
        bzero(v142, v144);
      }

      free(v142);
    }

    v145 = *(v140 + 8);
    *(v140 + 8) = 0;
    if (v145)
    {
      if (*(v145 + 596) && v145 + 583 >= -*(v145 + 596))
      {
        goto LABEL_218;
      }

      v146 = *(v145 + 8);
      *(v145 + 596) = 0;
      if (v146)
      {
        (*(v146 + 24))(v145 + 8);
        *(v145 + 8) = 0;
      }

      v148 = *(v145 - 8);
      v147 = (v145 - 8);
      v149 = v148 + 8;
      if (v148 != -8)
      {
        bzero(v147, v149);
      }

      free(v147);
    }

    v151 = *(v140 - 8);
    v150 = (v140 - 8);
    v152 = v151 + 8;
    if (v151 != -8)
    {
      bzero(v150, v152);
    }

    free(v150);
  }

  v153 = *(this + 16);
  *(this + 16) = 0;
  if (v153)
  {
    if (*(v153 + 112) && v153 + 63 >= -*(v153 + 112))
    {
      goto LABEL_218;
    }

    *(v153 + 112) = 0;
    v154 = *(v153 + 16);
    *(v153 + 16) = 0;
    if (v154)
    {
      (**v154)(v154);
      v156 = *(v154 - 1);
      v155 = v154 - 1;
      v157 = v156 + 8;
      if (v156 != -8)
      {
        bzero(v155, v157);
      }

      free(v155);
    }

    v158 = *(v153 + 8);
    *(v153 + 8) = 0;
    if (v158)
    {
      if (*(v158 + 596) && v158 + 583 >= -*(v158 + 596))
      {
        goto LABEL_218;
      }

      v159 = *(v158 + 8);
      *(v158 + 596) = 0;
      if (v159)
      {
        (*(v159 + 24))(v158 + 8);
        *(v158 + 8) = 0;
      }

      v161 = *(v158 - 8);
      v160 = (v158 - 8);
      v162 = v161 + 8;
      if (v161 != -8)
      {
        bzero(v160, v162);
      }

      free(v160);
    }

    v164 = *(v153 - 8);
    v163 = (v153 - 8);
    v165 = v164 + 8;
    if (v164 != -8)
    {
      bzero(v163, v165);
    }

    free(v163);
  }

  if (*(this + 120) && this + 71 >= -*(this + 120))
  {
LABEL_218:
    __break(1u);
    return;
  }

  *(this + 120) = 0;
  v166 = *(this + 3);
  *(this + 3) = 0;
  if (v166)
  {
    (**v166)(v166);
    v168 = *(v166 - 1);
    v167 = v166 - 1;
    v169 = v168 + 8;
    if (v168 != -8)
    {
      bzero(v167, v169);
    }

    free(v167);
  }

  v170 = *(this + 2);
  *(this + 2) = 0;
  if (v170)
  {
    if (!*(v170 + 596) || v170 + 583 < -*(v170 + 596))
    {
      v171 = *(v170 + 8);
      *(v170 + 596) = 0;
      if (v171)
      {
        (*(v171 + 24))(v170 + 8);
        *(v170 + 8) = 0;
      }

      v173 = *(v170 - 8);
      v172 = (v170 - 8);
      v174 = v173 + 8;
      if (v173 != -8)
      {
        bzero(v172, v174);
      }

      free(v172);
      return;
    }

    goto LABEL_218;
  }
}

void bssl::dtls1_new(bssl *this, ssl_st *a2)
{
  bssl::tls_new(this, a2);
  if (!v3)
  {
    return;
  }

  v4 = malloc_type_malloc(0x3E0uLL, 0xB4E622C9uLL);
  if (v4)
  {
    v5 = v4;
    *v4 = 984;
    v6 = (v4 + 8);
    *(v4 + 4) &= 0xFE00u;
    *(v4 + 10) = 0;
    *(v4 + 8) = 0;
    *(v4 + 24) = 0u;
    v7 = (v4 + 24);
    v4[128] = 0;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 9) = 0;
    v4[224] = 0;
    v4[248] = 0;
    *(v4 + 16) = 0u;
    *(v4 + 17) = 0u;
    *(v4 + 18) = 0u;
    *(v4 + 38) = 0;
    v4[648] = 0;
    *(v4 + 82) = 0;
    v4[920] = 0;
    v4[928] = 0;
    v4[936] = 0;
    *(v4 + 121) = 0;
    *(v4 + 244) = 0;
    *(v4 + 246) = 0;
    *(v4 + 21) = 0;
    *(v4 + 152) = 0u;
    *(v4 + 136) = 0u;
    *(v4 + 956) = 0;
    *(v4 + 940) = 0u;
    v8 = malloc_type_malloc(0x260uLL, 0xB4E622C9uLL);
    if (v8)
    {
      *v8 = 600;
      v9 = (v8 + 4);
      v8[302] = 0;
      v10 = v8;
      bzero(v8 + 4, 0x248uLL);
      *(v10 + 606) &= 0xE0u;
      v11 = *v7;
      *v7 = v9;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      v11 = *v7;
      *v7 = 0;
      if (!v11)
      {
LABEL_5:
        v12 = malloc_type_malloc(0x260uLL, 0xB4E622C9uLL);
        if (v12)
        {
LABEL_6:
          *v12 = 600;
          v13 = (v12 + 4);
          v12[302] = 0;
          v14 = v12;
          bzero(v12 + 4, 0x248uLL);
          *(v14 + 606) &= 0xE0u;
          v15 = v5[20];
          v5[20] = v13;
          if (!v15)
          {
            goto LABEL_7;
          }

LABEL_23:
          if (!*(v15 + 596) || v15 + 583 < -*(v15 + 596))
          {
            v24 = *(v15 + 8);
            *(v15 + 596) = 0;
            if (v24)
            {
              (*(v24 + 24))(v15 + 8);
              *(v15 + 8) = 0;
            }

            v26 = *(v15 - 8);
            v25 = (v15 - 8);
            v27 = v26 + 8;
            if (v26 != -8)
            {
              bzero(v25, v27);
            }

            free(v25);
            if (!*v7)
            {
              goto LABEL_32;
            }

            goto LABEL_30;
          }

LABEL_38:
          __break(1u);
          return;
        }

LABEL_22:
        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
        v15 = v5[20];
        v5[20] = 0;
        if (!v15)
        {
LABEL_7:
          if (!*v7)
          {
LABEL_32:
            v28 = *(this + 6);
            if (v28)
            {
              bssl::SSL3_STATE::~SSL3_STATE(*(this + 6));
              v30 = *(v28 - 8);
              v29 = (v28 - 8);
              v31 = v30 + 8;
              if (v30 != -8)
              {
                bzero(v29, v31);
              }

              free(v29);
              *(this + 6) = 0;
            }

            bssl::DTLS1_STATE::~DTLS1_STATE(v6);
            free(v5);
            return;
          }

LABEL_30:
          if (v5[20])
          {
            *(this + 7) = v6;
            return;
          }

          goto LABEL_32;
        }

        goto LABEL_23;
      }
    }

    if (*(v11 + 596) && v11 + 583 >= -*(v11 + 596))
    {
      goto LABEL_38;
    }

    v20 = *(v11 + 8);
    *(v11 + 596) = 0;
    if (v20)
    {
      (*(v20 + 24))(v11 + 8);
      *(v11 + 8) = 0;
    }

    v22 = *(v11 - 8);
    v21 = (v11 - 8);
    v23 = v22 + 8;
    if (v22 != -8)
    {
      bzero(v21, v23);
    }

    free(v21);
    v12 = malloc_type_malloc(0x260uLL, 0xB4E622C9uLL);
    if (v12)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  v16 = *(this + 6);
  if (v16)
  {
    bssl::SSL3_STATE::~SSL3_STATE(*(this + 6));
    v18 = *(v16 - 8);
    v17 = (v16 - 8);
    v19 = v18 + 8;
    if (v18 != -8)
    {
      bzero(v17, v19);
    }

    free(v17);
    *(this + 6) = 0;
  }
}

void bssl::dtls1_free(bssl *this, ssl_st *a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    bssl::SSL3_STATE::~SSL3_STATE(*(this + 6));
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    v6 = v5 + 8;
    if (v5 != -8)
    {
      bzero(v4, v6);
    }

    free(v4);
    *(this + 6) = 0;
  }

  v7 = *(this + 7);
  if (v7)
  {
    bssl::DTLS1_STATE::~DTLS1_STATE(*(this + 7));
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    v10 = v9 + 8;
    if (v9 != -8)
    {
      bzero(v8, v10);
    }

    free(v8);
  }

  *(this + 7) = 0;
}

uint64_t DTLSv1_get_timeout(uint64_t a1, uint64_t a2)
{
  if (!**a1)
  {
    return 0;
  }

  v4 = *(*(a1 + 104) + 728);
  if (v4)
  {
    v4(0, &v28);
  }

  else
  {
    gettimeofday(&v28, 0);
  }

  v5 = v28.tv_sec & ~(v28.tv_sec >> 63);
  if (v28.tv_sec >= 0)
  {
    tv_usec = v28.tv_usec;
  }

  else
  {
    tv_usec = 0;
  }

  v7 = *(a1 + 56);
  v8 = *(v7 + 944);
  if (!v8 && !*(v7 + 952))
  {
    goto LABEL_23;
  }

  if (v8 >= v5)
  {
    v9 = *(v7 + 952);
    v10 = v8 - v5;
    if (v8 != v5 || v9 > tv_usec)
    {
      v12 = v9 + 1000000;
      if (v9 >= tv_usec)
      {
        v12 = *(v7 + 952);
      }

      v13 = v12 - tv_usec;
      v14 = v10 - (v9 < tv_usec);
      if (v14 || v13 >> 3 >= 0x753)
      {
        if (v14 <= 0x10C6F7A0B5EDLL)
        {
          v17 = 1000000 * v14;
          v18 = __CFADD__(v17, v13);
          v15 = v17 + v13;
          if (v18)
          {
            v15 = -1;
          }

          v16 = *(v7 + 960);
          if (v16)
          {
            goto LABEL_30;
          }

LABEL_29:
          if (!*(v7 + 968))
          {
            goto LABEL_44;
          }

          goto LABEL_30;
        }

LABEL_23:
        v15 = -1;
        v16 = *(v7 + 960);
        if (v16)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }
    }
  }

  v15 = 0;
  v16 = *(v7 + 960);
  if (!v16)
  {
    goto LABEL_29;
  }

LABEL_30:
  if (v16 < v5)
  {
    goto LABEL_40;
  }

  v19 = *(v7 + 968);
  v20 = v16 - v5;
  if (!v20 && v19 <= tv_usec)
  {
    goto LABEL_40;
  }

  v22 = v19 < tv_usec;
  if (v19 < tv_usec)
  {
    v19 += 1000000;
  }

  v23 = v19 - tv_usec;
  v24 = v20 - v22;
  if (!v24 && v23 >> 3 < 0x753)
  {
LABEL_40:
    v25 = 0;
    if (!v15)
    {
      v25 = 0;
    }

    goto LABEL_42;
  }

  if (v24 <= 0x10C6F7A0B5EDLL)
  {
    v27 = 1000000 * v24;
    v18 = __CFADD__(v27, v23);
    v25 = v27 + v23;
    if (v18)
    {
      v25 = -1;
    }

    if (v25 >= v15)
    {
      v25 = v15;
    }

    if (v25 != -1)
    {
      goto LABEL_42;
    }

    return 0;
  }

LABEL_44:
  v25 = v15;
  if (v15 != -1)
  {
LABEL_42:
    *a2 = v25 / 0xF4240;
    *(a2 + 8) = v25 % 0xF4240;
    return 1;
  }

  return 0;
}

uint64_t DTLSv1_handle_timeout(uint64_t a1)
{
  *(*(a1 + 48) + 196) = 0;
  ERR_clear_error();
  *__error() = 0;
  if ((**a1 & 1) == 0)
  {
    ERR_put_error(16, 0, 66, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/d1_lib.cc", 190);
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 56);
  if (!*(v2 + 960) && !*(v2 + 968) && !*(v2 + 944) && !*(v2 + 952))
  {
    return 0;
  }

  v3 = *(*(a1 + 104) + 728);
  if (v3)
  {
    v3(0, &v33);
  }

  else
  {
    gettimeofday(&v33, 0);
  }

  tv_usec = v33.tv_usec;
  v7 = v33.tv_sec & ~(v33.tv_sec >> 63);
  if (v33.tv_sec < 0)
  {
    tv_usec = 0;
  }

  v8 = *(a1 + 56);
  v9 = *(v8 + 960);
  if (!v9 && !*(v8 + 968))
  {
    goto LABEL_28;
  }

  v11 = v9 - v7;
  v10 = v9 == v7;
  if (v9 < v7)
  {
    goto LABEL_24;
  }

  v12 = *(v8 + 968);
  if (v10 && v12 <= tv_usec)
  {
    goto LABEL_24;
  }

  v14 = v12 < tv_usec;
  if (v12 < tv_usec)
  {
    v12 += 1000000;
  }

  if (((v15 = v12 - tv_usec, (v16 = v11 - v14) != 0) || v15 >> 3 >= 0x753) && (v16 > 0x10C6F7A0B5EDLL || (1000000 * v16) | v15))
  {
LABEL_28:
    v17 = 0;
    v18 = *(v8 + 944);
    if (!v18)
    {
      goto LABEL_29;
    }
  }

  else
  {
LABEL_24:
    *v8 |= 0x40u;
    v8 = *(a1 + 56);
    *(v8 + 960) = 0;
    *(v8 + 968) = 0;
    v17 = 1;
    v18 = *(v8 + 944);
    if (!v18)
    {
LABEL_29:
      if (!*(v8 + 952))
      {
        goto LABEL_51;
      }
    }
  }

  v19 = v18 >= v7;
  v20 = v18 - v7;
  if (!v19)
  {
    goto LABEL_38;
  }

  v21 = *(v8 + 952);
  if (!v20 && v21 <= tv_usec)
  {
    goto LABEL_38;
  }

  v22 = v21 < tv_usec;
  if (v21 < tv_usec)
  {
    v21 += 1000000;
  }

  if ((v23 = v21 - tv_usec, (v24 = v20 - v22) == 0) && v23 >> 3 < 0x753 || ((v31 = (1000000 * v24) | v23, v24 <= 0x10C6F7A0B5EDLL) ? (v32 = v31 == 0) : (v32 = 0), v32))
  {
LABEL_38:
    *v8 |= 0x20u;
    v25 = *(a1 + 56);
    *(v25 + 944) = 0;
    *(v25 + 952) = 0;
    v26 = *(v25 + 940) + 1;
    *(v25 + 940) = v26;
    if (v26 >= 3 && (*(a1 + 129) & 0x10) == 0)
    {
      v27 = *(a1 + 32);
      if (v27)
      {
        if (*v27 && (v28 = *(*v27 + 48)) != 0)
        {
          v29 = v28();
          if ((v29 - 1073741825) >= 0xFFFFFFFFC00000E3)
          {
            *(*(a1 + 56) + 936) = v29;
            v30 = a1;

            return bssl::dtls1_flush(v30, v4);
          }
        }

        else
        {
          ERR_put_error(17, 0, 115, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 169);
        }
      }
    }

LABEL_54:
    v30 = a1;

    return bssl::dtls1_flush(v30, v4);
  }

LABEL_51:
  if (v17)
  {
    goto LABEL_54;
  }

  return 0;
}

uint64_t bssl::dtls1_process_ack(bssl *this, ssl_st *a2, unint64_t a3, unsigned __int16 *a4, unint64_t a5)
{
  v5 = *(this + 6);
  v6 = *(v5 + 208);
  if (*(v5 + 208))
  {
    v9 = *(v5 + 280);
    if (!v9 || (*(v9 + 1617) & 0x40) == 0)
    {
      if (v6 - 769 >= 4)
      {
        if (v6 != 65276)
        {
          goto LABEL_6;
        }
      }

      else if (v6 <= 0x303)
      {
LABEL_6:
        ERR_put_error(16, 0, 225, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/d1_pkt.cc", 48);
        v10 = 10;
LABEL_13:
        LOBYTE(a2->version) = v10;
        return 4;
      }

      if (a5 < 2 || (v11 = (a4 + 1), v12 = a5 - 2, a5 - 2 != __rev16(*a4)))
      {
        ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/d1_pkt.cc", 56);
        v10 = 50;
        goto LABEL_13;
      }

      if (a5 != 2)
      {
        v13 = HIWORD(a3);
        while (1)
        {
          if (v12 < 8 || (v12 & 0xFFFFFFFFFFFFFFF8) == 8)
          {
            v55 = 50;
            v56 = 65;
LABEL_66:
            ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/d1_pkt.cc", v56);
            LOBYTE(a2->version) = v55;
            return 4;
          }

          v17 = (v11[3] << 24) | (v11[4] << 16) | (((*v11 << 16) | (v11[1] << 8) | v11[2]) << 32) | v11[6] | (v11[5] << 8);
          v18 = v11[7] | (v17 << 8);
          v19 = (v11[8] << 16) | (v11[9] << 8);
          if (v13 > 2)
          {
            v20 = v17 > 0xFF;
          }

          else
          {
            v20 = v18 > v13;
          }

          if (v20 || v19 != 0)
          {
            v55 = 47;
            v56 = 77;
            goto LABEL_66;
          }

          v22 = *(this + 7);
          v23 = *(v22 + 648);
          if (v23)
          {
            if (*(v23 + 768))
            {
              break;
            }
          }

LABEL_17:
          v11 += 16;
          v12 -= 16;
          if (!v12)
          {
            goto LABEL_46;
          }
        }

        v24 = v11[15] | (v18 << 48) | (((v11[11] << 24) | (v11[12] << 16) | ((v19 | v11[10]) << 32) | v11[14]) << 8) | (v11[13] << 16);
        v25 = *(v23 + 776);
        v26 = *(v23 + 768);
        while (1)
        {
          if ((v25 & 0x1Fu) >= *(v23 + 768))
          {
            goto LABEL_45;
          }

          v27 = v23 + 24 * (v25 & 0x1F);
          if (*v27 == v24)
          {
            break;
          }

          ++v25;
          if (!--v26)
          {
            goto LABEL_17;
          }
        }

        v28 = *(v27 + 8);
        v29 = *(v22 + 640);
        if (v28 == *(v27 + 9))
        {
          if (v29 <= v28)
          {
            goto LABEL_45;
          }

          v16 = *(v27 + 12);
          v30 = *(v27 + 16);
          v15 = (v22 + 48 * *(v27 + 8) + 328);
        }

        else
        {
          if (v29 <= v28)
          {
            goto LABEL_45;
          }

          bssl::DTLSMessageBitmap::MarkRange((v22 + 48 * *(v27 + 8) + 328), *(v27 + 12), 0xFFFFFFFFFFFFFFFFLL);
          v31 = *(v27 + 8) + 1;
          v32 = *(v27 + 9);
          if (v31 < v32)
          {
            v33 = 48 * *(v27 + 8) + 376;
            while (1)
            {
              v34 = *(this + 7);
              if (v31 >= *(v34 + 640))
              {
                break;
              }

              bssl::DTLSMessageBitmap::MarkRange((v34 + v33), 0, 0xFFFFFFFFFFFFFFFFLL);
              ++v31;
              v32 = *(v27 + 9);
              v33 += 48;
              if (v31 >= v32)
              {
                goto LABEL_43;
              }
            }

LABEL_45:
            abort();
          }

LABEL_43:
          v30 = *(v27 + 16);
          if (!v30)
          {
            goto LABEL_16;
          }

          v35 = *(this + 7);
          if (*(v35 + 640) <= v32)
          {
            goto LABEL_45;
          }

          v15 = (v35 + 48 * v32 + 328);
          v16 = 0;
        }

        bssl::DTLSMessageBitmap::MarkRange(v15, v16, v30);
LABEL_16:
        *(v27 + 8) = 0;
        *(v27 + 12) = 0;
        goto LABEL_17;
      }

LABEL_46:
      v36 = *(this + 7);
      if (!*(v36 + 640))
      {
        goto LABEL_52;
      }

      v37 = 48 * *(v36 + 640) - 48;
      v38 = (v36 + 336);
      do
      {
        v39 = *(v38 - 14) | (*v38 != 0);
        if (*(v38 - 14) & 1 | (*v38 != 0))
        {
          break;
        }

        v40 = v37;
        v37 -= 48;
        v38 += 6;
      }

      while (v40);
      if (v39)
      {
        bssl::dtls_clear_unused_write_epochs(this, a2);
      }

      else
      {
LABEL_52:
        *(v36 + 940) = 0u;
        *(v36 + 976) = *(this + 20);
        bssl::dtls_clear_outgoing_messages(this, a2);
        if ((*(*(this + 6) + 220) & 0x100) != 0)
        {
          if (!bssl::tls13_rotate_traffic_key(this, 1u, v41, v42, v43, v44, v45, v46))
          {
            return 4;
          }

          *(*(this + 6) + 220) &= ~0x100u;
        }

        v47 = *(this + 7);
        if ((*v47 & 0x180) != 0)
        {
          *v47 &= 0xFE7Fu;
          bssl::tls13_add_key_update(this, 0);
          if ((v48 & 1) == 0)
          {
            return 4;
          }
        }
      }

      v49 = *(this + 8);
      if (v49)
      {
        v50 = *(this + 6);
        v51 = *(v50 + 280);
        if (v51 && (*(v51 + 1617) & 4) != 0 && (*(this + 164) & 1) == 0)
        {
          LOWORD(v52) = *(*(v51 + 1560) + 4);
          v54 = a5;
          v53 = a4;
        }

        else
        {
          v52 = *(v50 + 208);
          v54 = a5;
          v53 = a4;
          if (!v52)
          {
            if (**this)
            {
              LOWORD(v52) = -259;
            }

            else
            {
              LOWORD(v52) = 771;
            }
          }
        }

        v49(0, v52, 26, v53, v54, this, *(this + 9));
      }
    }
  }

  return 1;
}

uint64_t bssl::dtls1_open_app_data(bssl *a1, _OWORD *a2, unint64_t *a3, char *a4, unsigned __int8 *a5, unint64_t a6)
{
  v16 = 0;
  v15 = 0;
  v14 = 0uLL;
  result = bssl::dtls_open_record(a1, &v16, &v15, &v14, a3, a4, a5, a6);
  if (!result)
  {
    switch(v16)
    {
      case 26:
        return bssl::dtls1_process_ack(a1, a4, v15, v14, *(&v14 + 1));
      case 23:
        if (*(&v14 + 1))
        {
          result = 0;
          *a2 = v14;
          return result;
        }

        break;
      case 22:
        v10 = *(*(a1 + 6) + 208);
        if (v10 - 769 >= 4)
        {
          if (v10 == 65276)
          {
LABEL_7:
            if (bssl::dtls1_process_handshake_fragments(a1, a4, v15, v14, *(&v14 + 1)))
            {
              return 1;
            }

            else
            {
              return 4;
            }
          }
        }

        else if (v10 >= 0x304)
        {
          goto LABEL_7;
        }

        if (*(&v14 + 1) < 6uLL || (*(&v14 + 1) - 6) < 3 || (*(&v14 + 1) - 9) < 3 || *(&v14 + 1) - 12 < ((*(v14 + 9) << 16) | (*(v14 + 10) << 8) | *(v14 + 11)))
        {
          ERR_put_error(16, 0, 109, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/d1_pkt.cc", 195);
          v11 = 50;
LABEL_24:
          *a4 = v11;
          return 4;
        }

        if (*v14 != 20 || (v12 = *(a1 + 7), v12[2] - 1 != __rev16(*(v14 + 4))))
        {
LABEL_23:
          ERR_put_error(16, 0, 225, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/d1_pkt.cc", 224);
          v11 = 10;
          goto LABEL_24;
        }

        v13 = *v12;
        if (!(*v12 & 0x20 | (*(v14 + 6) << 16) | (*(v14 + 7) << 8) | *(v14 + 8)))
        {
          ++*(v12 + 235);
          *v12 = v13 | 0x20;
          return 1;
        }

        break;
      default:
        goto LABEL_23;
    }

    return 1;
  }

  return result;
}

uint64_t bssl::dtls1_write_app_data(bssl *a1, _BYTE *a2, size_t *a3, char *a4, size_t a5)
{
  *a2 = 0;
  if (*(*(a1 + 6) + 176))
  {
    v5 = 194;
    v6 = 243;
LABEL_5:
    ERR_put_error(16, 0, v5, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/d1_pkt.cc", v6);
    return 0xFFFFFFFFLL;
  }

  if (a5 > 0x4000)
  {
    v5 = 143;
    v6 = 249;
    goto LABEL_5;
  }

  if (a5)
  {
    result = bssl::dtls1_write_record(a1, 23, a4, a5, *(*(a1 + 7) + 150));
    if (result >= 1)
    {
      *a3 = a5;
      return 1;
    }
  }

  else
  {
    *a3 = 0;
    return 1;
  }

  return result;
}

uint64_t bssl::dtls1_write_record(bssl *a1, __int8 a2, char *a3, size_t a4, int a5)
{
  if (a4 > 0x4000)
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/d1_pkt.cc", 278);
    return 0xFFFFFFFFLL;
  }

  v27 = 0;
  v28 = 0;
  v8 = *(a1 + 6);
  v7 = *(a1 + 7);
  if (*(v7 + 150) == a5)
  {
    v9 = v7 + 144;
    goto LABEL_5;
  }

  if (*(v7 + 240))
  {
    v15 = 8 * *(v7 + 240);
    v16 = (v7 + 224);
    while (1)
    {
      v9 = *v16;
      if (*(*v16 + 6) == a5)
      {
        break;
      }

      ++v16;
      v15 -= 8;
      if (!v15)
      {
        goto LABEL_14;
      }
    }

LABEL_5:
    v10 = 0;
    v11 = *(v8 + 208);
    if (v11 > 0xFEFB)
    {
      switch(v11)
      {
        case 0xFEFCu:
          v11 = 772;
          break;
        case 0xFEFDu:
          v11 = 771;
          break;
        case 0xFEFFu:
          v11 = 770;
          break;
        default:
          goto LABEL_22;
      }
    }

    else if (v11 - 769 >= 4)
    {
      if (!*(v8 + 208))
      {
        v12 = 13;
        v13 = *(v9 + 8);
        if ((*(v13 + 598) & 1) == 0)
        {
LABEL_9:
          v14 = 0;
LABEL_26:
          v17 = a5;
          v18 = a2;
          v19 = a3;
          v20 = v14 + v12;
          goto LABEL_27;
        }

LABEL_25:
        v14 = *(v13 + 597);
        goto LABEL_26;
      }

LABEL_22:
      v12 = 13;
      if (a5 != 0 && v10)
      {
        v12 = 5;
      }

      v13 = *(v9 + 8);
      if ((*(v13 + 598) & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }

    v10 = v11 > 0x303;
    goto LABEL_22;
  }

LABEL_14:
  v17 = a5;
  v18 = a2;
  v19 = a3;
  v20 = 0;
LABEL_27:
  v21 = SSL_max_seal_overhead(a1);
  if (!bssl::SSLBuffer::EnsureCap((v8 + 104), v20, v21 + a4) || (v22 = *(v8 + 114), *&v29 = *(v8 + 104) + *(v8 + 112) + v22, *(&v29 + 1) = &v27, (bssl::dtls_seal_record(a1, &v28, v29, *(v8 + 116) - v22, v18, v19, a4, v17) & 1) == 0))
  {
    v26 = *(v8 + 104);
    if (v26 != (v8 + 118))
    {
      free(v26);
    }

    *(v8 + 110) = 0;
    *(v8 + 104) = 0;
    return 0xFFFFFFFFLL;
  }

  v24 = *(v8 + 114);
  if (*(v8 + 116) - v24 < v27)
  {
    abort();
  }

  *(v8 + 114) = v24 + v27;
  LODWORD(result) = bssl::ssl_write_buffer_flush(a1, v23);
  if (result >= 1)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t bssl::dtls1_dispatch_alert(bssl *this, ssl_st *a2)
{
  v3 = bssl::dtls1_write_record(this, 21, (*(this + 6) + 461), 2uLL, *(*(this + 7) + 150));
  if (v3 >= 1)
  {
    *(*(this + 6) + 220) &= ~0x400u;
    v4 = *(this + 6);
    if (*(v4 + 461) == 2)
    {
      v5 = *(this + 4);
      if (v5)
      {
        if (*v5 && (v6 = *(*v5 + 48)) != 0)
        {
          v6();
        }

        else
        {
          ERR_put_error(17, 0, 115, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 169);
        }
      }

      v4 = *(this + 6);
    }

    v7 = *(this + 8);
    if (v7)
    {
      v8 = *(v4 + 280);
      if (v8 && (*(v8 + 1617) & 4) != 0 && (*(this + 164) & 1) == 0)
      {
        v9 = *(*(v8 + 1560) + 4);
      }

      else
      {
        v9 = *(v4 + 208);
        if (!v9)
        {
          if (**this)
          {
            v9 = -259;
          }

          else
          {
            v9 = 771;
          }
        }
      }

      v7(1, v9, 21, v4 + 461, 2, this, *(this + 9));
      v4 = *(this + 6);
    }

    v10 = *(v4 + 461);
    v11 = *(this + 12);
    if (v11 || (v11 = *(*(this + 13) + 384)) != 0)
    {
      v11(this, 16392, __rev16(v10));
    }
  }

  return v3;
}

uint64_t ssl_ctx_make_profiles(char *a1, char **a2)
{
  v4 = OPENSSL_sk_new_null();
  if (!v4)
  {
    ERR_put_error(16, 0, 211, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/d1_srtp.cc", 61);
    return 0;
  }

  v5 = v4;
  do
  {
    v6 = strchr(a1, 58);
    v7 = v6;
    if (v6)
    {
      v8 = v6 - a1;
      if (v7 - a1 == 21)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v8 = strlen(a1);
      if (v8 == 21)
      {
LABEL_10:
        if (!strncmp("SRTP_AEAD_AES_128_GCM", a1, 0x15uLL))
        {
          v10 = &off_279E963C8;
          goto LABEL_14;
        }

        v11 = strncmp("SRTP_AEAD_AES_256_GCM", a1, 0x15uLL);
        v10 = &off_279E963D8;
        if (!v11)
        {
          goto LABEL_14;
        }

LABEL_30:
        v17 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/d1_srtp.cc";
        v18 = 16;
        v19 = 212;
        v20 = 73;
LABEL_31:
        ERR_put_error(v18, 0, v19, v17, v20);
LABEL_32:
        v22 = *(v5 + 1);
        if (v22)
        {
          v24 = *(v22 - 8);
          v23 = (v22 - 8);
          v25 = v24 + 8;
          if (v24 != -8)
          {
            bzero(v23, v25);
          }

          free(v23);
        }

        v27 = *(v5 - 1);
        v26 = v5 - 8;
        v28 = v27 + 8;
        if (v27 != -8)
        {
          bzero(v26, v28);
        }

        free(v26);
        return 0;
      }
    }

    if (v8 != 22)
    {
      goto LABEL_30;
    }

    if (!strncmp("SRTP_AES128_CM_SHA1_80", a1, 0x16uLL))
    {
      v10 = &kSRTPProfiles;
      v12 = *v5;
      if (*v5 < 0x7FFFFFFFuLL)
      {
        goto LABEL_15;
      }

LABEL_28:
      v17 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc";
      v18 = 14;
      v19 = 69;
      v20 = 139;
      goto LABEL_31;
    }

    v9 = strncmp("SRTP_AES128_CM_SHA1_32", a1, 0x16uLL);
    v10 = &off_279E963B8;
    if (v9)
    {
      goto LABEL_30;
    }

LABEL_14:
    v12 = *v5;
    if (*v5 >= 0x7FFFFFFFuLL)
    {
      goto LABEL_28;
    }

LABEL_15:
    v13 = *(v5 + 3);
    if (v13 <= v12 + 1)
    {
      v14 = OPENSSL_realloc(*(v5 + 1), 16 * v13);
      if (!v14)
      {
        goto LABEL_32;
      }

      *(v5 + 1) = v14;
      *(v5 + 3) = 2 * v13;
      v15 = *v5;
      v16 = *v5 - v12;
      if (*v5 <= v12)
      {
        v14[v15] = v10;
        *(v5 + 4) = 0;
        *v5 = v15 + 1;
        if (v15 == -1)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (8 * v16)
        {
          memmove(&v14[v12 + 1], &v14[v12], 8 * v16);
          v15 = *v5;
          v14 = *(v5 + 1);
        }

        v14[v12] = v10;
        *(v5 + 4) = 0;
        *v5 = v15 + 1;
        if (v15 == -1)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      *(*(v5 + 1) + 8 * v12) = v10;
      *(v5 + 4) = 0;
      *v5 = v12 + 1;
      if (v12 == -1)
      {
        goto LABEL_32;
      }
    }

    a1 = v7 + 1;
  }

  while (v7);
  v29 = *a2;
  *a2 = v5;
  if (v29)
  {
    v30 = *(v29 + 1);
    if (v30)
    {
      v32 = *(v30 - 8);
      v31 = (v30 - 8);
      v33 = v32 + 8;
      if (v32 != -8)
      {
        bzero(v31, v33);
      }

      free(v31);
    }

    v35 = *(v29 - 1);
    v34 = v29 - 8;
    v36 = v35 + 8;
    if (v35 != -8)
    {
      bzero(v34, v36);
    }

    free(v34);
  }

  return 1;
}

int EVP_BytesToKey(const EVP_CIPHER *type, const EVP_MD *md, const unsigned __int8 *salt, const unsigned __int8 *data, int datal, int count, unsigned __int8 *key, unsigned __int8 *iv)
{
  v43 = *&datal;
  v50 = *MEMORY[0x277D85DE8];
  key_len = type->key_len;
  if (!data)
  {
    return key_len;
  }

  v12 = 0;
  v13 = 0;
  iv_len = type->iv_len;
  *v44 = 0u;
  v45 = 0u;
  v39 = count - 1;
  do
  {
    v15 = v44[0];
    if (v44[0] != md)
    {
      final_high = HIDWORD(md->final);
      v17 = malloc_type_malloc(final_high + 8, 0xB4E622C9uLL);
      if (!v17)
      {
LABEL_45:
        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
        LODWORD(key_len) = 0;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v33 = v44[1];
        if (!v44[1])
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      *v17 = final_high;
      v18 = v17 + 1;
      if (v44[1])
      {
        v20 = v44[1] - 8;
        v19 = *(v44[1] - 1);
        if (v19 != -8)
        {
          bzero(v20, v19 + 8);
        }

        free(v20);
      }

      v44[0] = md;
      v44[1] = v18;
      v15 = md;
    }

    (v15->flags)(v44);
    if (v13)
    {
      (*(v44[0] + 3))(v44, &v46, v12);
    }

    (*(v44[0] + 3))(v44, data, v43);
    if (salt)
    {
      (*(v44[0] + 3))(v44, salt, 8);
    }

    (*(v44[0] + 4))(v44, &v46);
    v12 = *(v44[0] + 1);
    v21 = *(v44[0] + 11);
    if (v21)
    {
      bzero(v44[1], v21);
    }

    v22 = v39;
    if (count >= 2)
    {
      do
      {
        v26 = v44[0];
        if (v44[0] != md)
        {
          v27 = HIDWORD(md->final);
          v28 = malloc_type_malloc(v27 + 8, 0xB4E622C9uLL);
          if (!v28)
          {
            goto LABEL_45;
          }

          *v28 = v27;
          v29 = v28 + 1;
          if (v44[1])
          {
            v31 = v44[1] - 8;
            v30 = *(v44[1] - 1);
            if (v30 != -8)
            {
              bzero(v31, v30 + 8);
            }

            free(v31);
          }

          v44[0] = md;
          v44[1] = v29;
          v26 = md;
        }

        (v26->flags)(v44);
        (*(v44[0] + 3))(v44, &v46, v12);
        (*(v44[0] + 4))(v44, &v46);
        v12 = *(v44[0] + 1);
        v32 = *(v44[0] + 11);
        if (v32)
        {
          bzero(v44[1], v32);
        }

        --v22;
      }

      while (v22);
    }

    if (key_len)
    {
      v23 = 0;
      v24 = v12;
      v25 = key_len;
      do
      {
        if (v12 == v23)
        {
          key_len = v25;
          if (iv_len)
          {
            goto LABEL_39;
          }

          goto LABEL_3;
        }

        if (key)
        {
          *key++ = *(&v46 + v23);
        }

        ++v23;
        v25 = (v25 - 1);
      }

      while (v25);
      v24 = key_len;
      key_len = 0;
      if (!iv_len)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v24 = 0;
      if (!iv_len)
      {
        goto LABEL_3;
      }
    }

LABEL_39:
    if (v24 != v12)
    {
      do
      {
        if (v12 == v24)
        {
          break;
        }

        if (iv)
        {
          *iv++ = *(&v46 + v24);
        }

        ++v24;
        --iv_len;
      }

      while (iv_len);
    }

LABEL_3:
    ++v13;
  }

  while (key_len | iv_len);
  LODWORD(key_len) = type->key_len;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v33 = v44[1];
  if (!v44[1])
  {
    goto LABEL_49;
  }

LABEL_46:
  v35 = *(v33 - 1);
  v34 = (v33 - 1);
  v36 = v35 + 8;
  if (v35 != -8)
  {
    bzero(v34, v36);
  }

  free(v34);
LABEL_49:
  if (*(&v45 + 1))
  {
    (**(&v45 + 1))(v45);
  }

  return key_len;
}

uint64_t DES_set_key_ex(_DWORD *a1, uint64_t a2)
{
  v2 = 0;
  v3 = a1[1];
  v4 = (*a1 ^ (v3 >> 4)) & 0xF0F0F0F;
  v5 = ((v4 ^ *a1 ^ ((v4 ^ *a1) << 18)) & 0xCCCC0000 | (((v4 ^ *a1 ^ ((v4 ^ *a1) << 18)) & 0xCCCC0000) >> 18)) ^ v4 ^ *a1;
  v6 = ((v3 ^ (16 * v4) ^ ((v3 ^ (16 * v4)) << 18)) & 0xCCCC0000 | (((v3 ^ (16 * v4) ^ ((v3 ^ (16 * v4)) << 18)) & 0xCCCC0000) >> 18)) ^ v3 ^ (16 * v4);
  v7 = (v5 ^ (v6 >> 1)) & 0x55555555;
  v8 = v7 ^ v5;
  v9 = v6 ^ (2 * v7);
  v10 = (v9 ^ (v8 >> 8)) & 0xFF00FF;
  v11 = v10 ^ v9;
  v12 = v8 ^ (v10 << 8);
  v13 = (v12 ^ (v11 >> 1)) & 0x55555555;
  v14 = v13 ^ v12;
  v15 = (v14 >> 4) & 0xF000000 | (v11 ^ (2 * v13)) & 0xFF00 | ((v11 ^ (2 * v13)) << 16) | ((v11 ^ (2 * v13)) >> 16);
  v16 = (a2 + 4);
  do
  {
    if ((0x8103uLL >> v2))
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    v18 = (v14 & 0xFFFFFFF) >> v17;
    if ((0x8103uLL >> v2))
    {
      v19 = 27;
    }

    else
    {
      v19 = 26;
    }

    v20 = v15 >> v17;
    v14 = v18 + (v14 << v19);
    v21 = v20 | (v15 << v19);
    v22 = des_skb[((v18 >> 7) & 0x3C | (v18 >> 6)) + 64] | des_skb[v18 & 0x3F] | des_skb[((v18 >> 14) & 0x30 | (v18 >> 13) & 0xF) + 128] | des_skb[((v18 >> 21) & 6 | (v18 >> 20) & 1 | (v14 >> 22) & 0x38) + 192];
    v23 = des_skb[((v20 >> 8) & 0x3C | (v20 >> 7) & 3) + 320] | des_skb[(v20 & 0x3F) + 256] | des_skb[((v20 >> 15) & 0x3F) + 384] | des_skb[((v21 >> 22) & 0x30 | (v20 >> 21) & 0xF) + 448];
    HIDWORD(v25) = v22 | (v23 << 16);
    LODWORD(v25) = HIDWORD(v25);
    result = (v25 >> 30);
    HIDWORD(v25) = v23 & 0xFFFF0000 | HIWORD(v22);
    LODWORD(v25) = HIDWORD(v25);
    v15 = v21 & 0xFFFFFFF;
    *(v16 - 1) = result;
    *v16 = v25 >> 26;
    ++v2;
    v16 += 2;
  }

  while (v2 != 16);
  return result;
}

void DES_encrypt3(unsigned int *data, DES_key_schedule *ks1, DES_key_schedule *ks2, DES_key_schedule *ks3)
{
  v7 = data[1];
  v8 = (*data ^ (v7 >> 4)) & 0xF0F0F0F;
  v9 = v8 ^ *data;
  v10 = v7 ^ (16 * v8);
  v11 = v10 ^ HIWORD(v9);
  v12 = v11 ^ v10;
  v13 = v9 ^ (v11 << 16);
  v14 = (v13 ^ (v12 >> 2)) & 0x33333333;
  v15 = v14 ^ v13;
  v16 = v12 ^ (4 * v14);
  v17 = (v16 ^ (v15 >> 8)) & 0xFF00FF;
  v18 = v17 ^ v16;
  v19 = v15 ^ (v17 << 8);
  v20 = (v19 ^ (v18 >> 1)) & 0x55555555;
  *data = v20 ^ v19;
  data[1] = v18 ^ (2 * v20);
  DES_encrypt2(data, ks1, 1);
  DES_encrypt2(data, ks2, 0);
  DES_encrypt2(data, ks3, 1);
  v21 = data[1];
  v22 = (*data ^ (v21 >> 1)) & 0x55555555;
  v23 = v22 ^ *data;
  v24 = v21 ^ (2 * v22);
  v25 = (v24 ^ (v23 >> 8)) & 0xFF00FF;
  v26 = v25 ^ v24;
  v27 = v23 ^ (v25 << 8);
  v28 = (v27 ^ (v26 >> 2)) & 0x33333333;
  v29 = v28 ^ v27;
  v30 = v26 ^ (4 * v28);
  v31 = v30 ^ HIWORD(v29);
  v32 = v31 ^ v30;
  v33 = v29 ^ (v31 << 16);
  v34 = (v33 ^ (v32 >> 4)) & 0xF0F0F0F;
  *data = v34 ^ v33;
  data[1] = v32 ^ (16 * v34);
}

_DWORD *DES_encrypt2(_DWORD *result, const DES_ks *a2, int a3)
{
  HIDWORD(v4) = *result;
  LODWORD(v4) = *result;
  v3 = v4 >> 29;
  HIDWORD(v4) = result[1];
  LODWORD(v4) = HIDWORD(v4);
  v5 = v4 >> 29;
  if (a3)
  {
    v6 = a2->ks[0].deslong[0] ^ v3;
    HIDWORD(v8) = a2->ks[0].deslong[1] ^ v3;
    LODWORD(v8) = HIDWORD(v8);
    v7 = v8 >> 4;
    v9 = DES_SPtrans[v6 >> 2] ^ DES_SPtrans[(v6 >> 10) + 128] ^ DES_SPtrans[((v6 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v6 >> 26) + 384] ^ DES_SPtrans[(v7 >> 2) + 64] ^ DES_SPtrans[(v7 >> 10) + 192] ^ DES_SPtrans[((v7 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v7 >> 26) + 448] ^ v5;
    v10 = v9 ^ a2->ks[1].deslong[0];
    HIDWORD(v8) = v9 ^ a2->ks[1].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v11 = v8 >> 4;
    v12 = DES_SPtrans[v10 >> 2] ^ DES_SPtrans[(v10 >> 10) + 128] ^ DES_SPtrans[((v10 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v10 >> 26) + 384] ^ DES_SPtrans[(v11 >> 2) + 64] ^ DES_SPtrans[(v11 >> 10) + 192] ^ DES_SPtrans[((v11 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v11 >> 26) + 448] ^ v3;
    v13 = v12 ^ a2->ks[2].deslong[0];
    HIDWORD(v8) = v12 ^ a2->ks[2].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v14 = v8 >> 4;
    v15 = DES_SPtrans[v13 >> 2] ^ DES_SPtrans[(v13 >> 10) + 128] ^ DES_SPtrans[((v13 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v13 >> 26) + 384] ^ DES_SPtrans[(v14 >> 2) + 64] ^ DES_SPtrans[(v14 >> 10) + 192] ^ DES_SPtrans[((v14 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v14 >> 26) + 448] ^ v9;
    v16 = v15 ^ a2->ks[3].deslong[0];
    HIDWORD(v8) = v15 ^ a2->ks[3].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v17 = v8 >> 4;
    v18 = DES_SPtrans[v16 >> 2] ^ DES_SPtrans[(v16 >> 10) + 128] ^ DES_SPtrans[((v16 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v16 >> 26) + 384] ^ DES_SPtrans[(v17 >> 2) + 64] ^ DES_SPtrans[(v17 >> 10) + 192] ^ DES_SPtrans[((v17 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v17 >> 26) + 448] ^ v12;
    v19 = v18 ^ a2->ks[4].deslong[0];
    HIDWORD(v8) = v18 ^ a2->ks[4].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v20 = v8 >> 4;
    v21 = DES_SPtrans[v19 >> 2] ^ DES_SPtrans[(v19 >> 10) + 128] ^ DES_SPtrans[((v19 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v19 >> 26) + 384] ^ DES_SPtrans[(v20 >> 2) + 64] ^ DES_SPtrans[(v20 >> 10) + 192] ^ DES_SPtrans[((v20 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v20 >> 26) + 448] ^ v15;
    v22 = v21 ^ a2->ks[5].deslong[0];
    HIDWORD(v8) = v21 ^ a2->ks[5].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v23 = v8 >> 4;
    v24 = DES_SPtrans[v22 >> 2] ^ DES_SPtrans[(v22 >> 10) + 128] ^ DES_SPtrans[((v22 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v22 >> 26) + 384] ^ DES_SPtrans[(v23 >> 2) + 64] ^ DES_SPtrans[(v23 >> 10) + 192] ^ DES_SPtrans[((v23 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v23 >> 26) + 448] ^ v18;
    v25 = v24 ^ a2->ks[6].deslong[0];
    HIDWORD(v8) = v24 ^ a2->ks[6].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v26 = v8 >> 4;
    v27 = DES_SPtrans[v25 >> 2] ^ DES_SPtrans[(v25 >> 10) + 128] ^ DES_SPtrans[((v25 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v25 >> 26) + 384] ^ DES_SPtrans[(v26 >> 2) + 64] ^ DES_SPtrans[(v26 >> 10) + 192] ^ DES_SPtrans[((v26 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v26 >> 26) + 448] ^ v21;
    v28 = v27 ^ a2->ks[7].deslong[0];
    HIDWORD(v8) = v27 ^ a2->ks[7].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v29 = v8 >> 4;
    v30 = DES_SPtrans[v28 >> 2] ^ DES_SPtrans[(v28 >> 10) + 128] ^ DES_SPtrans[((v28 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v28 >> 26) + 384] ^ DES_SPtrans[(v29 >> 2) + 64] ^ DES_SPtrans[(v29 >> 10) + 192] ^ DES_SPtrans[((v29 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v29 >> 26) + 448] ^ v24;
    v31 = v30 ^ a2->ks[8].deslong[0];
    HIDWORD(v8) = v30 ^ a2->ks[8].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v32 = v8 >> 4;
    v33 = DES_SPtrans[v31 >> 2] ^ DES_SPtrans[(v31 >> 10) + 128] ^ DES_SPtrans[((v31 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v31 >> 26) + 384] ^ DES_SPtrans[(v32 >> 2) + 64] ^ DES_SPtrans[(v32 >> 10) + 192] ^ DES_SPtrans[((v32 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v32 >> 26) + 448] ^ v27;
    v34 = v33 ^ a2->ks[9].deslong[0];
    HIDWORD(v8) = v33 ^ a2->ks[9].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v35 = v8 >> 4;
    v36 = DES_SPtrans[v34 >> 2] ^ DES_SPtrans[(v34 >> 10) + 128] ^ DES_SPtrans[((v34 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v34 >> 26) + 384] ^ DES_SPtrans[(v35 >> 2) + 64] ^ DES_SPtrans[(v35 >> 10) + 192] ^ DES_SPtrans[((v35 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v35 >> 26) + 448] ^ v30;
    v37 = v36 ^ a2->ks[10].deslong[0];
    HIDWORD(v8) = v36 ^ a2->ks[10].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v38 = v8 >> 4;
    v39 = DES_SPtrans[v37 >> 2] ^ DES_SPtrans[(v37 >> 10) + 128] ^ DES_SPtrans[((v37 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v37 >> 26) + 384] ^ DES_SPtrans[(v38 >> 2) + 64] ^ DES_SPtrans[(v38 >> 10) + 192] ^ DES_SPtrans[((v38 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v38 >> 26) + 448] ^ v33;
    v40 = v39 ^ a2->ks[11].deslong[0];
    HIDWORD(v8) = v39 ^ a2->ks[11].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v41 = v8 >> 4;
    v42 = DES_SPtrans[v40 >> 2] ^ DES_SPtrans[(v40 >> 10) + 128] ^ DES_SPtrans[((v40 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v40 >> 26) + 384] ^ DES_SPtrans[(v41 >> 2) + 64] ^ DES_SPtrans[(v41 >> 10) + 192] ^ DES_SPtrans[((v41 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v41 >> 26) + 448] ^ v36;
    v43 = v42 ^ a2->ks[12].deslong[0];
    HIDWORD(v8) = v42 ^ a2->ks[12].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v44 = v8 >> 4;
    v45 = DES_SPtrans[v43 >> 2] ^ DES_SPtrans[(v43 >> 10) + 128] ^ DES_SPtrans[((v43 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v43 >> 26) + 384] ^ DES_SPtrans[(v44 >> 2) + 64] ^ DES_SPtrans[(v44 >> 10) + 192] ^ DES_SPtrans[((v44 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v44 >> 26) + 448] ^ v39;
    v46 = v45 ^ a2->ks[13].deslong[0];
    HIDWORD(v8) = v45 ^ a2->ks[13].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v47 = v8 >> 4;
    v48 = DES_SPtrans[v46 >> 2] ^ DES_SPtrans[(v46 >> 10) + 128] ^ DES_SPtrans[((v46 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v46 >> 26) + 384] ^ DES_SPtrans[(v47 >> 2) + 64] ^ DES_SPtrans[(v47 >> 10) + 192] ^ DES_SPtrans[((v47 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v47 >> 26) + 448] ^ v42;
    v49 = v48 ^ a2->ks[14].deslong[0];
    HIDWORD(v8) = v48 ^ a2->ks[14].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v50 = DES_SPtrans[v49 >> 2] ^ DES_SPtrans[(v49 >> 10) + 128] ^ DES_SPtrans[((v49 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v49 >> 26) + 384] ^ DES_SPtrans[((v8 >> 4) >> 2) + 64] ^ DES_SPtrans[((v8 >> 4) >> 10) + 192] ^ DES_SPtrans[(((v8 >> 4) >> 18) & 0x3F) + 320] ^ DES_SPtrans[((v8 >> 4) >> 26) + 448] ^ v45;
    v51 = &a2->ks[15];
    v52 = 31;
  }

  else
  {
    v53 = a2->ks[15].deslong[0] ^ v3;
    HIDWORD(v55) = a2->ks[15].deslong[1] ^ v3;
    LODWORD(v55) = HIDWORD(v55);
    v54 = v55 >> 4;
    v56 = DES_SPtrans[v53 >> 2] ^ DES_SPtrans[(v53 >> 10) + 128] ^ DES_SPtrans[((v53 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v53 >> 26) + 384] ^ DES_SPtrans[(v54 >> 2) + 64] ^ DES_SPtrans[(v54 >> 10) + 192] ^ DES_SPtrans[((v54 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v54 >> 26) + 448] ^ v5;
    v57 = v56 ^ a2->ks[14].deslong[0];
    HIDWORD(v55) = v56 ^ a2->ks[14].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v58 = v55 >> 4;
    v59 = DES_SPtrans[v57 >> 2] ^ DES_SPtrans[(v57 >> 10) + 128] ^ DES_SPtrans[((v57 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v57 >> 26) + 384] ^ DES_SPtrans[(v58 >> 2) + 64] ^ DES_SPtrans[(v58 >> 10) + 192] ^ DES_SPtrans[((v58 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v58 >> 26) + 448] ^ v3;
    v60 = v59 ^ a2->ks[13].deslong[0];
    HIDWORD(v55) = v59 ^ a2->ks[13].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v61 = v55 >> 4;
    v62 = DES_SPtrans[v60 >> 2] ^ DES_SPtrans[(v60 >> 10) + 128] ^ DES_SPtrans[((v60 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v60 >> 26) + 384] ^ DES_SPtrans[(v61 >> 2) + 64] ^ DES_SPtrans[(v61 >> 10) + 192] ^ DES_SPtrans[((v61 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v61 >> 26) + 448] ^ v56;
    v63 = v62 ^ a2->ks[12].deslong[0];
    HIDWORD(v55) = v62 ^ a2->ks[12].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v64 = v55 >> 4;
    v65 = DES_SPtrans[v63 >> 2] ^ DES_SPtrans[(v63 >> 10) + 128] ^ DES_SPtrans[((v63 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v63 >> 26) + 384] ^ DES_SPtrans[(v64 >> 2) + 64] ^ DES_SPtrans[(v64 >> 10) + 192] ^ DES_SPtrans[((v64 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v64 >> 26) + 448] ^ v59;
    v66 = v65 ^ a2->ks[11].deslong[0];
    HIDWORD(v55) = v65 ^ a2->ks[11].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v67 = v55 >> 4;
    v68 = DES_SPtrans[v66 >> 2] ^ DES_SPtrans[(v66 >> 10) + 128] ^ DES_SPtrans[((v66 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v66 >> 26) + 384] ^ DES_SPtrans[(v67 >> 2) + 64] ^ DES_SPtrans[(v67 >> 10) + 192] ^ DES_SPtrans[((v67 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v67 >> 26) + 448] ^ v62;
    v69 = v68 ^ a2->ks[10].deslong[0];
    HIDWORD(v55) = v68 ^ a2->ks[10].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v70 = v55 >> 4;
    v71 = DES_SPtrans[v69 >> 2] ^ DES_SPtrans[(v69 >> 10) + 128] ^ DES_SPtrans[((v69 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v69 >> 26) + 384] ^ DES_SPtrans[(v70 >> 2) + 64] ^ DES_SPtrans[(v70 >> 10) + 192] ^ DES_SPtrans[((v70 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v70 >> 26) + 448] ^ v65;
    v72 = v71 ^ a2->ks[9].deslong[0];
    HIDWORD(v55) = v71 ^ a2->ks[9].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v73 = v55 >> 4;
    v74 = DES_SPtrans[v72 >> 2] ^ DES_SPtrans[(v72 >> 10) + 128] ^ DES_SPtrans[((v72 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v72 >> 26) + 384] ^ DES_SPtrans[(v73 >> 2) + 64] ^ DES_SPtrans[(v73 >> 10) + 192] ^ DES_SPtrans[((v73 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v73 >> 26) + 448] ^ v68;
    v75 = v74 ^ a2->ks[8].deslong[0];
    HIDWORD(v55) = v74 ^ a2->ks[8].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v76 = v55 >> 4;
    v77 = DES_SPtrans[v75 >> 2] ^ DES_SPtrans[(v75 >> 10) + 128] ^ DES_SPtrans[((v75 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v75 >> 26) + 384] ^ DES_SPtrans[(v76 >> 2) + 64] ^ DES_SPtrans[(v76 >> 10) + 192] ^ DES_SPtrans[((v76 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v76 >> 26) + 448] ^ v71;
    v78 = v77 ^ a2->ks[7].deslong[0];
    HIDWORD(v55) = v77 ^ a2->ks[7].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v79 = v55 >> 4;
    v80 = DES_SPtrans[v78 >> 2] ^ DES_SPtrans[(v78 >> 10) + 128] ^ DES_SPtrans[((v78 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v78 >> 26) + 384] ^ DES_SPtrans[(v79 >> 2) + 64] ^ DES_SPtrans[(v79 >> 10) + 192] ^ DES_SPtrans[((v79 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v79 >> 26) + 448] ^ v74;
    v81 = v80 ^ a2->ks[6].deslong[0];
    HIDWORD(v55) = v80 ^ a2->ks[6].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v82 = v55 >> 4;
    v83 = DES_SPtrans[v81 >> 2] ^ DES_SPtrans[(v81 >> 10) + 128] ^ DES_SPtrans[((v81 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v81 >> 26) + 384] ^ DES_SPtrans[(v82 >> 2) + 64] ^ DES_SPtrans[(v82 >> 10) + 192] ^ DES_SPtrans[((v82 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v82 >> 26) + 448] ^ v77;
    v84 = v83 ^ a2->ks[5].deslong[0];
    HIDWORD(v55) = v83 ^ a2->ks[5].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v85 = v55 >> 4;
    v86 = DES_SPtrans[v84 >> 2] ^ DES_SPtrans[(v84 >> 10) + 128] ^ DES_SPtrans[((v84 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v84 >> 26) + 384] ^ DES_SPtrans[(v85 >> 2) + 64] ^ DES_SPtrans[(v85 >> 10) + 192] ^ DES_SPtrans[((v85 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v85 >> 26) + 448] ^ v80;
    v87 = v86 ^ a2->ks[4].deslong[0];
    HIDWORD(v55) = v86 ^ a2->ks[4].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v88 = v55 >> 4;
    v89 = DES_SPtrans[v87 >> 2] ^ DES_SPtrans[(v87 >> 10) + 128] ^ DES_SPtrans[((v87 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v87 >> 26) + 384] ^ DES_SPtrans[(v88 >> 2) + 64] ^ DES_SPtrans[(v88 >> 10) + 192] ^ DES_SPtrans[((v88 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v88 >> 26) + 448] ^ v83;
    v90 = v89 ^ a2->ks[3].deslong[0];
    HIDWORD(v55) = v89 ^ a2->ks[3].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v91 = v55 >> 4;
    v92 = DES_SPtrans[v90 >> 2] ^ DES_SPtrans[(v90 >> 10) + 128] ^ DES_SPtrans[((v90 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v90 >> 26) + 384] ^ DES_SPtrans[(v91 >> 2) + 64] ^ DES_SPtrans[(v91 >> 10) + 192] ^ DES_SPtrans[((v91 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v91 >> 26) + 448] ^ v86;
    v93 = v92 ^ a2->ks[2].deslong[0];
    HIDWORD(v55) = v92 ^ a2->ks[2].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v94 = v55 >> 4;
    v48 = DES_SPtrans[v93 >> 2] ^ DES_SPtrans[(v93 >> 10) + 128] ^ DES_SPtrans[((v93 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v93 >> 26) + 384] ^ DES_SPtrans[(v94 >> 2) + 64] ^ DES_SPtrans[(v94 >> 10) + 192] ^ DES_SPtrans[((v94 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v94 >> 26) + 448] ^ v89;
    v95 = v48 ^ a2->ks[1].deslong[0];
    HIDWORD(v55) = v48 ^ a2->ks[1].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v50 = DES_SPtrans[v95 >> 2] ^ DES_SPtrans[(v95 >> 10) + 128] ^ DES_SPtrans[((v95 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v95 >> 26) + 384] ^ DES_SPtrans[((v55 >> 4) >> 2) + 64] ^ DES_SPtrans[((v55 >> 4) >> 10) + 192] ^ DES_SPtrans[(((v55 >> 4) >> 18) & 0x3F) + 320] ^ DES_SPtrans[((v55 >> 4) >> 26) + 448] ^ v92;
    v52 = 1;
    v51 = a2;
  }

  v96 = v51->ks[0].deslong[0] ^ v50;
  HIDWORD(v98) = a2->ks[0].deslong[v52] ^ v50;
  LODWORD(v98) = HIDWORD(v98);
  v97 = v98 >> 4;
  HIDWORD(v98) = v50;
  LODWORD(v98) = v50;
  v99 = v98 >> 3;
  HIDWORD(v98) = DES_SPtrans[v96 >> 2] ^ v48 ^ DES_SPtrans[(v96 >> 10) + 128] ^ DES_SPtrans[((v96 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v96 >> 26) + 384] ^ DES_SPtrans[(v97 >> 2) + 64] ^ DES_SPtrans[(v97 >> 10) + 192] ^ DES_SPtrans[((v97 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v97 >> 26) + 448];
  LODWORD(v98) = HIDWORD(v98);
  *result = v99;
  result[1] = v98 >> 3;
  return result;
}