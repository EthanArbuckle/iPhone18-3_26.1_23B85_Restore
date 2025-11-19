uint64_t sub_26AA4C6AC@<X0>(int a1@<W0>, unint64_t a2@<X1>, int a3@<W2>, unsigned __int8 a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, int a55)
{
  LODWORD(STACK[0x22C8]) = LODWORD(STACK[0x1DE8]) ^ LODWORD(STACK[0x1DC0]);
  v64 = LODWORD(STACK[0x2170]) ^ 0xBDu;
  v65 = LODWORD(STACK[0x2270]);
  v66 = v65 ^ 0x39u;
  LODWORD(STACK[0x22B0]) = (LODWORD(STACK[0x1F08]) << (v65 ^ 0x39u)) | (LODWORD(STACK[0x1F08]) >> a7);
  LODWORD(STACK[0x22A8]) = (LODWORD(STACK[0x1ED0]) >> a7) + (LODWORD(STACK[0x1ED0]) << v64);
  LODWORD(STACK[0x2298]) = (v56 | (v55 << 8)) ^ a3 ^ *(a6 + 4 * a4) ^ __ROR4__(*(a6 + 4 * (STACK[0x1F50] ^ a5)), 16);
  v67 = STACK[0x20B0];
  LODWORD(STACK[0x20B0]) = STACK[0x20B0];
  LODWORD(STACK[0x2228]) = (v67 << (v65 ^ 0x39u)) + (v67 >> a7);
  v68 = STACK[0x2078];
  LODWORD(STACK[0x2078]) = STACK[0x2078];
  STACK[0x2250] = a2;
  LODWORD(STACK[0x2200]) = (v68 >> a7) + (v68 << v64);
  v69 = (LODWORD(STACK[0x22B8]) << (v65 ^ 0x39u)) | (LODWORD(STACK[0x22B8]) >> a7);
  v70 = (v62 << v64) ^ (v62 >> a7);
  v71 = STACK[0x21C8];
  LODWORD(STACK[0x2290]) = v60;
  v72 = (v71 << (v65 ^ 0x39u)) | (v71 >> a7);
  v73 = STACK[0x1EB8];
  v74 = (v73 >> a7) ^ (v73 << v64);
  v75 = STACK[0x2028];
  v76 = v57;
  v77 = (v75 << (v65 ^ 0x39u)) | (v75 >> a7);
  v78 = STACK[0x1EF0];
  LODWORD(STACK[0x1EF0]) = STACK[0x1EF0];
  LODWORD(STACK[0x2188]) = a8;
  v79 = (v78 << (v65 ^ 0x39u)) ^ (v78 >> a7);
  v80 = v62;
  v81 = 67 * (a9 ^ 0x2D0);
  v82 = STACK[0x1F28];
  LODWORD(STACK[0x1F28]) = STACK[0x1F28];
  STACK[0x2010] = v58;
  v83 = (v82 >> a7) + (v82 << v64);
  v84 = STACK[0x2110];
  v85 = (v84 << v64) ^ (v84 >> a7);
  v86 = STACK[0x22E0];
  STACK[0x21F0] = v64;
  v87 = (v86 >> a7) ^ (v86 << v64);
  v88 = STACK[0x1F08];
  if (a7)
  {
    v88 = STACK[0x22B0];
  }

  LODWORD(STACK[0x2050]) = v88;
  v89 = STACK[0x1ED0];
  if (a7)
  {
    v89 = STACK[0x22A8];
  }

  LODWORD(STACK[0x2248]) = v89;
  v90 = STACK[0x2228];
  if (!a7)
  {
    v90 = v67;
  }

  LODWORD(STACK[0x2070]) = v90;
  v91 = STACK[0x2200];
  if (!a7)
  {
    v91 = v68;
  }

  LODWORD(STACK[0x2200]) = v91;
  v92 = STACK[0x22B8];
  if (a7)
  {
    v92 = v69;
  }

  LODWORD(STACK[0x21E0]) = v92;
  if (a7)
  {
    v93 = v70;
  }

  else
  {
    v93 = v80;
  }

  LODWORD(STACK[0x20C0]) = v93;
  v94 = STACK[0x2170];
  if (LODWORD(STACK[0x2170]) == -1343677507)
  {
    v95 = v73;
  }

  else
  {
    v95 = v74;
  }

  LODWORD(STACK[0x2068]) = v95;
  v96 = STACK[0x2270];
  v97 = LODWORD(STACK[0x2270]) == -693686471;
  LODWORD(STACK[0x21C8]) = v71;
  if (v96 == -693686471)
  {
    v98 = v71;
  }

  else
  {
    v98 = v72;
  }

  if (v97)
  {
    v99 = v75;
  }

  else
  {
    v99 = v77;
  }

  LODWORD(STACK[0x2048]) = v99;
  if (v97)
  {
    v100 = v78;
  }

  else
  {
    v100 = v79;
  }

  LODWORD(STACK[0x22B0]) = v100;
  LODWORD(STACK[0x2110]) = v84;
  if (v94 == -1343677507)
  {
    v101 = v84;
  }

  else
  {
    v101 = v85;
  }

  if (v94 == -1343677507)
  {
    v102 = v86;
  }

  else
  {
    v102 = v87;
  }

  LODWORD(STACK[0x22A8]) = v102;
  LODWORD(STACK[0x20D8]) = v81;
  v103 = a7 == v81 - 2077;
  if (a7 == v81 - 2077)
  {
    v104 = v82;
  }

  else
  {
    v104 = v83;
  }

  v105 = LODWORD(STACK[0x2298]) ^ (v104 - ((2 * v104) & 0x6BC7D5CC) + 904129254);
  v106 = (v105 ^ 0x35E3EAE6) - 840343674 - 2 * ((v105 ^ 0x35E3EAE6) & 0x4DE95F87 ^ v105 & 1);
  v107 = STACK[0x2108];
  STACK[0x1FD8] = v66;
  v108 = (v107 << v66) ^ (v107 >> a7);
  v109 = ~((2 * (LODWORD(STACK[0x1E18]) ^ a1 ^ v106)) & 0xC37EB57C) + (LODWORD(STACK[0x1E18]) ^ a1 ^ v106) + 1639930559;
  v110 = v59 >> 1;
  LODWORD(STACK[0x2228]) = v59 >> 1;
  v111 = (v59 >> 1) & 0x3BBBBBBB ^ 0x76DD6DC4;
  v112 = LODWORD(STACK[0x1EC0]) ^ 0xD2u;
  v113 = STACK[0x2288];
  v114 = LODWORD(STACK[0x2288]) ^ 0x5A224EA6;
  v115 = LODWORD(STACK[0x2278]) ^ 0x22345E8u;
  v116 = v115 & v111;
  v117 = LODWORD(STACK[0x1EC8]) ^ 0x68u;
  v118 = v101 ^ ((v114 & v111) >> (LODWORD(STACK[0x1EC0]) ^ 0xD2u)) ^ (v116 << (LODWORD(STACK[0x1EC8]) ^ 0x68u));
  v119 = STACK[0x2250];
  v120 = *(STACK[0x638] + 4 * BYTE2(STACK[0x2250])) ^ __ROR4__(STACK[0x2180], 8) ^ __ROR4__(*(STACK[0x638] + ((v76 >> 22) & 0x3FC)), 24);
  v121 = __ROR4__(*(STACK[0x638] + 4 * (LODWORD(STACK[0x1F30]) ^ 0x31u)), 16);
  v122 = LODWORD(STACK[0x1E28]) ^ 0xB42F749C;
  v123 = LODWORD(STACK[0x1DC8]) ^ 0x4025309C;
  LODWORD(STACK[0x2180]) = v123;
  v124 = v118 ^ (v123 + LODWORD(STACK[0x1DE0]) + v122 + (v120 ^ v121) + 1);
  v125 = STACK[0x2220];
  LODWORD(STACK[0x2220]) = STACK[0x2220];
  v126 = (v109 ^ v125) + 821265339 - ((2 * (v109 ^ v125)) & 0x61E70776);
  v127 = v124 + 821265339 - ((2 * v124) & 0x61E70776);
  v128 = LODWORD(STACK[0x22C8]) ^ 0xB3CF6882;
  LODWORD(STACK[0x2060]) = v128;
  v129 = LODWORD(STACK[0x21E8]) ^ 0xA2C92128;
  LODWORD(STACK[0x2058]) = v129;
  v130 = (245866359 * v128) ^ (245866359 * v129);
  v131 = LODWORD(STACK[0x1E70]) ^ v125;
  LODWORD(STACK[0x21E8]) = v131;
  v132 = LODWORD(STACK[0x20C8]) >> 1;
  v133 = v132 & 0x3BBBBBBB ^ 0x45F7465F;
  v134 = STACK[0x1F18];
  v135 = LODWORD(STACK[0x1F20]);
  v136 = LODWORD(STACK[0x1F20]);
  v137 = v136 ^ 0x7Cu;
  v138 = v98 ^ ((((LODWORD(STACK[0x1F18]) ^ 0x3975DD16) & v111) >> v112) | (v116 << (v136 ^ 0x7Cu))) ^ (LODWORD(STACK[0x2188]) + 1209335711 * (LODWORD(STACK[0x1E08]) + (v131 ^ 0x9285803)) + 1209335711);
  v139 = v138 + 821265339 - ((2 * v138) & 0x61E70776);
  LODWORD(STACK[0x2108]) = v107;
  if (v103)
  {
    v140 = v107;
  }

  else
  {
    v140 = v108;
  }

  v141 = v130 ^ v140 ^ *(STACK[0x638] + 4 * (STACK[0x2010] ^ 0xA8u)) ^ __ROR4__(*(STACK[0x638] + 4 * HIBYTE(v61)), 8) ^ __ROR4__(*(STACK[0x638] + ((v119 >> 22) & 0x3FC)), 24);
  v142 = __ROR4__(*(STACK[0x638] + 4 * (v63 ^ 0xA8u)), 16);
  v143 = (v114 & v133) >> (LODWORD(STACK[0x2038]) + 6);
  v144 = LODWORD(STACK[0x2038]) + 6;
  v145 = STACK[0x22C0];
  v146 = LODWORD(STACK[0x22C0]) ^ 0x1E20A285u;
  STACK[0x22C8] = v146;
  STACK[0x2298] = v117;
  STACK[0x2250] = v115;
  v147 = STACK[0x2128];
  v148 = LODWORD(STACK[0x2128]) ^ (((v115 & v133) << v137) + v143) ^ ((v141 ^ v142) + 821265339 - ((2 * (v141 ^ v142)) & 0x61E70776));
  v149 = (v143 | ((v133 & v146) << v117)) ^ LODWORD(STACK[0x2128]) ^ 0x5088D2FD ^ v126;
  v150 = v148 ^ 0x6700u;
  v151 = v127 ^ LODWORD(STACK[0x2128]);
  v152 = *(STACK[0x1F60] + ((HIBYTE(v151) + 124) ^ 0x26));
  v153 = STACK[0x1F58];
  v154 = ((v152 >> 2) ^ 0x2A | (v152 << 6)) ^ (2 * ((v152 >> 2) ^ 0x2A)) & 0x56;
  LOBYTE(v152) = (*(STACK[0x1F68] + (((v149 >> 4) & 0xF0 | (v149 >> 12)) ^ 0xFELL)) ^ 0xA8) - 37;
  v155 = v139 ^ v147;
  v156 = ((((v139 ^ v147) >> 7) & 0xFE | (((v139 ^ v147) & 0x8000) != 0)) - (((v139 ^ v147) >> 6) & 0x50) - 88) ^ 0xF5 ^ *(STACK[0x2208] + ((((v139 ^ v147) >> 7) & 0xFE | ((v139 ^ v147) >> 15) & 1) ^ 0xE7));
  v157 = *(STACK[0x1F58] + (BYTE1(v150) ^ 0xD6)) ^ (BYTE1(v150) ^ (BYTE1(v150) - 87)) ^ 0xA8 ^ 0x73u;
  v158 = (v157 >> 1) & 0xFFFFFFFFFFFFFF7FLL | ((v157 & 1) << 7);
  LODWORD(v157) = v110 & 0x71F1F1F1 ^ 0xA203F352;
  v159 = ((v145 ^ 0x1220A281) & v157) << v117;
  v160 = LODWORD(STACK[0x2048]) ^ ((((v134 ^ 0xB171D112) & v157) >> v112) + v159) ^ __ROR4__(*(STACK[0x638] + 4 * HIBYTE(v155)), 24) ^ __ROR4__(*(STACK[0x638] + 4 * v158), 8) ^ __ROR4__(*(STACK[0x638] + 4 * v149), 16) ^ *(STACK[0x638] + 4 * BYTE2(v151));
  LODWORD(v158) = v113;
  v161 = v113 ^ 0xD22242A2;
  LODWORD(v157) = LODWORD(STACK[0x2248]) ^ ((((v113 ^ 0xD22242A2) & v157) >> v144) | v159) ^ __ROR4__(*(STACK[0x638] + 4 * ((v152 ^ (16 * v152) ^ 0xEC) + 41)), 8) ^ __ROR4__(*(STACK[0x638] + 4 * (v154 ^ 0x37u)), 24) ^ __ROR4__(*(STACK[0x638] + 4 * v155), 16) ^ *(STACK[0x638] + 4 * BYTE2(v150));
  LODWORD(STACK[0x2248]) = v132;
  v162 = v132 & 0x71F1F1F1 ^ 0xD363D283;
  v163 = STACK[0x2278];
  v164 = (LODWORD(STACK[0x2278]) ^ 0x22341E0) & v162;
  v165 = (v134 ^ 0xB171D112) & v162;
  v166 = v161 & v162;
  v167 = v164 << v137;
  v168 = LODWORD(STACK[0x2050]) ^ ((v165 >> v112) | v167) ^ __ROR4__(*(STACK[0x638] + ((v149 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(STACK[0x638] + 4 * BYTE1(v151)), 8) ^ __ROR4__(*(STACK[0x638] + 4 * v148), 16) ^ *(STACK[0x638] + 4 * BYTE2(v155));
  v169 = v168 + 821265339 - ((2 * v168) & 0x61E70776);
  LOBYTE(v168) = (v166 & 0xE0) + (v166 & 0xE0 ^ 0xE8);
  v170 = STACK[0x638];
  LODWORD(v149) = LODWORD(STACK[0x2068]) ^ (v167 + (v166 >> v144)) ^ __ROR4__(*(STACK[0x638] + ((v150 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(STACK[0x638] + 4 * v151), 16) ^ *(STACK[0x638] + 4 * BYTE2(v149));
  v171 = __ROR4__(*(STACK[0x638] + 4 * (v156 - 55)), 8);
  LODWORD(v166) = (v149 ^ v171) + 821265339 - ((2 * (v149 ^ v171)) & 0x61E70776);
  LODWORD(v167) = (v157 + 821265339 - ((2 * v157) & 0x61E70776)) ^ v147;
  v172 = v167 ^ 0x6700;
  v173 = STACK[0x2170];
  v174 = *(v153 + ((v172 >> ((v168 + 32) & 0xF8)) ^ 0xD6)) ^ ((v172 >> ((v168 + 32) & 0xF8)) ^ ((v172 >> ((v168 + 32) & 0xF8)) - 87)) ^ 0xA8 ^ 0x73;
  LODWORD(v157) = (v174 >> 1) & 0xFFFFFF7F | ((v174 & 1) << 7);
  v175 = v166 ^ v147;
  v176 = (v160 + 821265339 - ((2 * v160) & 0x61E70776)) ^ v147;
  HIDWORD(v177) = *(STACK[0x638] + 4 * v157);
  LODWORD(v177) = HIDWORD(v177);
  v178 = ((v177 >> 8) ^ __ROR4__(*(STACK[0x638] + 4 * (v166 ^ v147)), 16) ^ *(STACK[0x638] + 4 * BYTE2(v176)) ^ __ROR4__(*(STACK[0x638] + 4 * ((v169 ^ v147) >> 24)), 24)) + 523695169 * (LODWORD(STACK[0x2060]) - LODWORD(STACK[0x2058]));
  LOBYTE(v151) = *(STACK[0x2210] + (((16 * ((v169 ^ v147) & 0xF)) | ((v169 ^ v147) >> 4)) ^ 0x34)) ^ 0x81;
  LODWORD(v157) = *(STACK[0x638] + 4 * ((v169 ^ v147) >> 16)) ^ __ROR4__(*(STACK[0x638] + 4 * BYTE1(v176)), 8) ^ __ROR4__(*(STACK[0x638] + ((v175 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(STACK[0x638] + 4 * v167), 16);
  LODWORD(v165) = (LODWORD(STACK[0x2220]) ^ LODWORD(STACK[0x20F8]) ^ 0x53A9FAC7) + (LODWORD(STACK[0x1E18]) ^ 0x5088D2FD);
  LODWORD(v166) = (-1873416749 * (LODWORD(STACK[0x21E8]) ^ 0xF6D7A7FC)) ^ (-1873416749 * LODWORD(STACK[0x1E08])) ^ __ROR4__(*(STACK[0x638] + ((v172 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(STACK[0x638] + 4 * ((v169 ^ v147) >> 8)), 8) ^ *(STACK[0x638] + 4 * BYTE2(v175)) ^ __ROR4__(*(STACK[0x638] + 4 * v176), 16);
  LODWORD(v175) = LODWORD(STACK[0x1DE0]) ^ LODWORD(STACK[0x2200]) ^ __ROR4__(*(STACK[0x638] + 4 * HIBYTE(v176)), 24) ^ __ROR4__(*(STACK[0x638] + 4 * BYTE1(v175)), 8) ^ *(STACK[0x638] + 4 * BYTE2(v172));
  LODWORD(v177) = __ROR4__(*(STACK[0x638] + 4 * ((v151 - ((2 * v151 + 82) & 0x50) - 47) ^ 0xA8u)), 16);
  LODWORD(v167) = STACK[0x2228] & 0x76767676 ^ 0xAC8AFEDA;
  LODWORD(v172) = v166 - LODWORD(STACK[0x2180]);
  LODWORD(STACK[0x22C0]) = v145;
  v179 = (v145 ^ 0x1E20A284) & v167;
  LODWORD(STACK[0x1F18]) = v134;
  v180 = STACK[0x2298];
  STACK[0x2200] = v112;
  v181 = ((v134 ^ 0xB874DC16) & v167) >> v112;
  LODWORD(v175) = (v181 + (v179 << v180)) ^ LODWORD(STACK[0x1E28]) ^ ((v175 ^ v177) + 1271958371 - ((2 * (v175 ^ v177)) & 0x97A116C6));
  v182 = STACK[0x20C8] & 0xECECECEC;
  v183 = STACK[0x2070];
  v184 = ((v182 ^ 0x6C0868C8) >> (v183 & 1) >> !(v183 & 1)) ^ 0xECECECEC;
  LODWORD(v157) = (v181 | (((v163 ^ 0x22244E8) & v167) << v137)) ^ LODWORD(STACK[0x22A8]) ^ (v157 + 352403899 * v165 + 352403899);
  LODWORD(v179) = v157 + 821265339 - ((2 * v157) & 0x61E70776);
  v185 = STACK[0x22C8];
  LODWORD(STACK[0x2288]) = v158;
  LODWORD(STACK[0x22A8]) = v158 ^ 0xDA224EA6;
  v186 = (((v184 & (v158 ^ 0xDA224EA6)) >> v144) | ((v184 & v185) << v180)) ^ LODWORD(STACK[0x21E0]) ^ v178;
  LODWORD(v185) = (v182 >> 1) ^ 0xDAE8D888;
  v187 = ((v134 ^ 0xB874DC16) & v185) >> v144;
  STACK[0x21E8] = v137;
  v188 = ((v163 ^ 0x22244E8) & v185) << v137;
  v189 = STACK[0x1F28];
  v190 = STACK[0x1EF0];
  LODWORD(v188) = (v183 ^ (v187 | v188) ^ v172) + 821265339 - ((2 * (v183 ^ (v187 | v188) ^ v172)) & 0x61E70776);
  v191 = (v186 + 821265339 - ((2 * v186) & 0x61E70776)) ^ v147;
  v192 = v191 >> ((v187 & 8 ^ 8) + (v187 & 8));
  v193 = (v192 >> 7) & 1 | (2 * (v192 & 0x7F));
  LODWORD(v192) = (v192 >> 7) & 1 | (2 * (v192 & 0x7F)) & 0x99;
  v194 = v188 ^ v147;
  v195 = STACK[0x20B0];
  v196 = *(STACK[0x2208] + (v193 ^ 0xE7)) ^ v193 ^ ((((v192 ^ 0x81) + (v192 ^ 0x18)) | 0x12) - ((2 * ((v192 ^ 0x81) + (v192 ^ 0x18))) & 0x50) - 88) ^ 0x6E;
  HIDWORD(v177) = *(STACK[0x1F60] + ((v191 + 124) ^ 0x26));
  LODWORD(v177) = (HIDWORD(v177) ^ 0xAAAAAAAA) << 24;
  v197 = (v175 + 821265339 - ((2 * v175) & 0x61E70776)) ^ v147;
  LODWORD(v193) = *(STACK[0x1F60] + ((BYTE2(v194) + 124) ^ 0x26));
  v198 = v179 ^ v147;
  v199 = *(v170 + 4 * (((v193 >> 2) ^ 0x2A | (v193 << 6)) ^ (2 * ((v193 >> 2) ^ 0x2A)) & 0x56 ^ 0x37u)) ^ __ROR4__(*(v170 + 4 * ((v177 >> 26) ^ 0x37 ^ (2 * (v177 >> 26)) & 0x56u)), 16);
  HIDWORD(v177) = *(STACK[0x1F60] + ((BYTE1(v194) + 124) ^ 0x26));
  LODWORD(v177) = (HIDWORD(v177) ^ 0xAAAAAAAA) << 24;
  v200 = v194 >> ((v197 & 0x18 ^ 0x18) + (v197 & 0x18));
  v201 = *(v170 + 4 * v194);
  v202 = *(v170 + 4 * ((v177 >> 26) ^ 0x37 ^ (2 * (v177 >> 26)) & 0x56u));
  HIDWORD(v177) = *(v170 + ((v197 >> 22) & 0x3FC));
  LODWORD(v177) = HIDWORD(v177);
  v203 = v177 >> 24;
  v204 = *(STACK[0x1E68] + ((v198 + 124) ^ 0xD9)) ^ 0x6ALL;
  v205 = (v177 >> 24) & 0x200;
  if ((v205 & v199) != 0)
  {
    LODWORD(v205) = -v205;
  }

  HIDWORD(v206) = v201;
  LODWORD(v206) = v201;
  v207 = v205 + v199;
  v208 = STACK[0x2078];
  v209 = STACK[0x2290];
  v210 = *(v170 + 4 * BYTE2(v197)) ^ __ROR4__(v202, 8);
  v211 = (v206 >> 16) ^ __ROR4__(*(v170 + 4 * BYTE1(v197)), 8) ^ *(v170 + 4 * BYTE2(v191)) ^ __ROR4__(*(v170 + ((v198 >> 22) & 0x3FC)), 24);
  v212 = STACK[0x2120];
  v213 = STACK[0x2120];
  STACK[0x21E0] = v144;
  v214 = v210 ^ __ROR4__(*(v170 + 4 * v204), 16) ^ __ROR4__(*(v170 + ((v191 >> 22) & 0x3FC)), 24);
  v215 = STACK[0x2270];
  v216 = LODWORD(STACK[0x21A0]) ^ __ROR4__(*(v170 + 4 * v200), 24) ^ *(v170 + 4 * BYTE2(v198)) ^ __ROR4__(*(v170 + 4 * (v196 - 55)), 8);
  LODWORD(v206) = __ROR4__(*(v170 + 4 * v197), 16);
  v217 = ((v216 ^ v206) - ((2 * (v216 ^ v206)) & 0x6DAD9630) + 920046360) ^ LODWORD(STACK[0x1EE0]);
  v218 = STACK[0x20A0];
  v219 = STACK[0x1F08];
  v220 = v173;
  v221 = v212;
  v222 = ((LODWORD(STACK[0x21A8]) - 1076656873) ^ (v218 - 693686471 - ((2 * v218) & 0xAD4E5E72)) ^ LODWORD(STACK[0x2270]) ^ LODWORD(STACK[0x1F40]) ^ v203 & 0xFFFFFDFF ^ __ROR4__(*(v170 + 4 * BYTE1(v198)), 8) ^ v207) - (LODWORD(STACK[0x1EE8]) ^ 0x89844F8E) + v212;
  v223 = STACK[0x2240];
  v224 = STACK[0x2240] ^ v221 ^ ((v173 ^ 0x5016E442) + STACK[0x20A0] + LODWORD(STACK[0x1F40]) - STACK[0x2100] + v214 + 1);
  v225 = STACK[0x1ED0];
  v226 = v217 + LODWORD(STACK[0x1EA8]) - LODWORD(STACK[0x21A0]);
  v227 = STACK[0x2168];
  v228 = v221;
  STACK[0x1FB8] = LODWORD(STACK[0x2168]);
  STACK[0x2100] = v227 >> v221;
  LODWORD(STACK[0x1DE8]) = STACK[0x22B0];
  v229 = v226;
  LODWORD(STACK[0x22B0]) = v222;
  LODWORD(STACK[0x1ED8]) = v224;
  v230 = STACK[0x20C0];
  LODWORD(STACK[0x2180]) = v211;
  v231 = STACK[0x21D0];
  v232 = STACK[0x21B0];
  v233 = STACK[0x2020];
  v234 = STACK[0x2258];
  v235 = STACK[0x2080];
  v236 = STACK[0x2018];
  LODWORD(STACK[0x2270]) = v215;
  LODWORD(STACK[0x2168]) = v227;
  LODWORD(STACK[0x1E18]) = v211;
  LODWORD(STACK[0x2058]) = v222;
  LODWORD(STACK[0x2188]) = v224;
  LODWORD(STACK[0x1E08]) = v226;
  LODWORD(STACK[0x2020]) = v226 ^ v230;
  v237 = LODWORD(STACK[0x2088]) ^ LODWORD(STACK[0x1EB8]) ^ v195 ^ v208 ^ v236;
  v238 = v190 ^ LODWORD(STACK[0x2000]);
  STACK[0x2258] = 0;
  LODWORD(STACK[0x20C0]) = v237 ^ v238;
  LODWORD(STACK[0x21A0]) = STACK[0x2198] ^ v225 ^ LODWORD(STACK[0x2118]);
  LODWORD(STACK[0x21B0]) = STACK[0x20B8] ^ v219 ^ v234 ^ v189 ^ LODWORD(STACK[0x22E0]) ^ v235;
  LODWORD(STACK[0x21D0]) = LODWORD(STACK[0x20A8]) ^ STACK[0x20D0] ^ LODWORD(STACK[0x2040]);
  LODWORD(STACK[0x2240]) = LODWORD(STACK[0x2028]) ^ LODWORD(STACK[0x2108]);
  v239 = STACK[0x2148];
  v240 = STACK[0x2148];
  LODWORD(STACK[0x2148]) = STACK[0x2148];
  v241 = STACK[0x21F0];
  v242 = (v239 >> v213) ^ (v239 << STACK[0x21F0]);
  v243 = v232 + 1011915507 - ((2 * v232) & 0x78A135E6);
  v244 = LODWORD(STACK[0x20E8]) + 1011915507 - ((2 * LODWORD(STACK[0x20E8])) & 0x78A135E6);
  v245 = v215 ^ 0xD6A72F39;
  STACK[0x22E0] = v245;
  v246 = v245 - 693686471 - 2 * (v245 & 0x56A72F3D ^ v215 & 4);
  v247 = (LODWORD(STACK[0x21D8]) >> v223) ^ (LODWORD(STACK[0x21D8]) << v218);
  if (!v223)
  {
    v247 = STACK[0x21D8];
  }

  LODWORD(STACK[0x20B8]) = v247;
  v248 = STACK[0x2260];
  v249 = STACK[0x2260];
  LODWORD(STACK[0x2260]) = STACK[0x2260];
  v250 = STACK[0x1E88];
  v251 = v211 ^ (v229 + 1931894850 + (((v224 ^ 0x1043C5C8) + v222 + 364422343) ^ 0xD74CDCB1));
  v252 = v251 ^ 0x3104DDC3 ^ v244;
  LODWORD(STACK[0x21D8]) = v251 ^ 0x3104DDC3;
  if (v220 != -1343677507)
  {
    LODWORD(v252) = (v252 << v241) ^ (v252 >> v213);
  }

  LODWORD(STACK[0x2198]) = v252;
  v253 = LODWORD(STACK[0x2090]) ^ 0xD544730 ^ v251;
  LODWORD(STACK[0x2118]) = v251;
  if (v220 != -1343677507)
  {
    LODWORD(v253) = (v253 << v241) ^ (v253 >> v213);
  }

  LODWORD(STACK[0x20E8]) = v253;
  if (v220 == -1343677507)
  {
    v242 = v240;
  }

  LODWORD(STACK[0x1F70]) = v242;
  if (v220 == -1343677507)
  {
    v254 = v249;
  }

  else
  {
    v254 = (v248 >> v213) + (v248 << v241);
  }

  LODWORD(STACK[0x1F88]) = v254;
  v255 = v228 == 0;
  v256 = v228;
  if (v228)
  {
    v257 = (v250 >> v213) | (v250 << v241);
  }

  else
  {
    v257 = v250;
  }

  LODWORD(STACK[0x20A8]) = v257;
  if (v255)
  {
    v258 = STACK[0x1FF8];
  }

  else
  {
    v258 = (LODWORD(STACK[0x1FF8]) >> v213) | (LODWORD(STACK[0x1FF8]) << (v246 ^ 0x39u));
  }

  LODWORD(STACK[0x20B0]) = v258;
  v259 = v251 ^ 0x3104DDC3 ^ v243;
  if (v255)
  {
    v260 = v259;
  }

  else
  {
    v260 = (v259 << (v246 ^ 0x39u)) ^ (v259 >> v213);
  }

  LODWORD(STACK[0x2108]) = v260;
  if (v246 == -693686471)
  {
    v261 = v231;
  }

  else
  {
    v261 = (v231 >> v213) + (v231 << (v246 ^ 0x39u));
  }

  LODWORD(STACK[0x2080]) = v261;
  v262 = STACK[0x1F00];
  LODWORD(STACK[0x1F00]) = STACK[0x1F00];
  v264 = STACK[0x2098];
  v265 = STACK[0x2238];
  v266 = LODWORD(STACK[0x2238]);
  v267 = STACK[0x2238];
  LODWORD(STACK[0x2238]) = STACK[0x2238];
  v268 = (v265 >> v213) + (v266 << v241);
  v269 = v256 == 0;
  v270 = v256;
  if (v256)
  {
    v271 = (v264 >> v213) ^ (v264 << v241);
  }

  else
  {
    v271 = v264;
  }

  LODWORD(STACK[0x2050]) = v271;
  if (v269)
  {
    v272 = v209;
  }

  else
  {
    v272 = (v209 >> v213) ^ (v209 << v241);
  }

  LODWORD(STACK[0x2048]) = v272;
  if (v269)
  {
    v273 = v233;
  }

  else
  {
    v273 = (v233 >> v213) + (v233 << v241);
  }

  LODWORD(STACK[0x2070]) = v273;
  v274 = v241;
  if (v269)
  {
    v275 = STACK[0x21B8];
  }

  else
  {
    v275 = (LODWORD(STACK[0x21B8]) >> v213) | (LODWORD(STACK[0x21B8]) << v241);
  }

  LODWORD(STACK[0x2060]) = v275;
  v263 = ((v262 ^ 0xE09C40C2) >> v213) + ((v262 ^ 0xE09C40C2) << v241);
  v276 = v263 - 526630718 - ((2 * v263) & 0xC1388184);
  v277 = STACK[0x21C0];
  v278 = STACK[0x21C0];
  LODWORD(STACK[0x21C0]) = STACK[0x21C0];
  v279 = STACK[0x1FD8];
  v280 = (v277 >> v213) ^ (v277 << STACK[0x1FD8]);
  v281 = STACK[0x2140];
  LODWORD(STACK[0x2140]) = STACK[0x2140];
  v282 = (v281 >> v213) ^ (v281 << v274);
  v283 = STACK[0x1EF8];
  v284 = STACK[0x1EF8];
  LODWORD(STACK[0x1EF8]) = STACK[0x1EF8];
  v285 = (v283 >> v213) | (v283 << v279);
  v286 = STACK[0x2130];
  LODWORD(STACK[0x2130]) = STACK[0x2130];
  v287 = v274;
  STACK[0x21F0] = v274;
  v288 = (v286 >> v213) ^ (v286 << v274);
  v289 = STACK[0x1FC8];
  LODWORD(STACK[0x2170]) = v220;
  v290 = (v289 >> v213) + (v289 << v287);
  if (v269)
  {
    v268 = v267;
  }

  LODWORD(STACK[0x21B8]) = v268;
  if (v270)
  {
    v291 = v280;
  }

  else
  {
    v291 = v278;
  }

  LODWORD(STACK[0x1F30]) = v291;
  if (v270)
  {
    v292 = v282;
  }

  else
  {
    v292 = v281;
  }

  if (v270)
  {
    v293 = v285;
  }

  else
  {
    v293 = v284;
  }

  LODWORD(STACK[0x2010]) = v293;
  if (v270)
  {
    v262 = v276;
  }

  LODWORD(STACK[0x2018]) = v262;
  if (v220 == -1343677507)
  {
    v294 = v289;
  }

  else
  {
    v294 = v290;
  }

  LODWORD(STACK[0x2098]) = v294;
  if (v220 != -1343677507)
  {
    v286 = v288;
  }

  LODWORD(STACK[0x1F40]) = v286;
  v295 = v246 == -693686471;
  v296 = STACK[0x2158];
  LODWORD(STACK[0x2158]) = STACK[0x2158];
  v297 = STACK[0x22E0];
  v298 = (v296 >> v213) + (v296 << STACK[0x22E0]);
  v299 = STACK[0x1EB0];
  STACK[0x20D0] = ((v215 ^ 0x39) + 57 - 2 * ((v215 ^ 0x39) & 0x3D ^ v215 & 4)) ^ 0x39u;
  v300 = (v299 >> v213) + (v299 << (v246 ^ 0x39u));
  if (!v295)
  {
    v299 = v300;
  }

  LODWORD(STACK[0x2068]) = v299;
  if (v295)
  {
    v301 = STACK[0x1FA0];
  }

  else
  {
    v301 = (LODWORD(STACK[0x1FA0]) >> v213) ^ (LODWORD(STACK[0x1FA0]) << (((v215 ^ 0x39) + 57 - 2 * ((v215 ^ 0x39) & 0x3D ^ v215 & 4)) ^ 0x39u));
  }

  LODWORD(STACK[0x2078]) = v301;
  if (v295)
  {
    v302 = LODWORD(STACK[0x2280]) ^ 0xD544730 ^ v251;
  }

  else
  {
    v302 = ((LODWORD(STACK[0x2280]) ^ 0xD544730 ^ v251) << (((v215 ^ 0x39) + 57 - 2 * ((v215 ^ 0x39) & 0x3D ^ v215 & 4)) ^ 0x39u)) | ((LODWORD(STACK[0x2280]) ^ 0xD544730 ^ v251) >> v213);
  }

  LODWORD(STACK[0x2280]) = v302;
  v303 = STACK[0x1FC0];
  v304 = STACK[0x1EE8];
  v305 = LODWORD(STACK[0x1EE8]) ^ 0x8E;
  v306 = STACK[0x2008];
  v307 = STACK[0x2270];
  if (LODWORD(STACK[0x2270]) != -693686471)
  {
    v296 = v298;
  }

  LODWORD(STACK[0x2038]) = v296;
  if (v223)
  {
    v308 = (v303 >> v223) + (v303 << v218);
  }

  else
  {
    v308 = v303;
  }

  LODWORD(STACK[0x2030]) = v308;
  if (v307 == -693686471)
  {
    v309 = v306;
  }

  else
  {
    v309 = (v306 >> v213) | (v306 << v297);
  }

  LODWORD(STACK[0x2040]) = v309;
  v310 = STACK[0x20F0];
  LODWORD(STACK[0x20F0]) = STACK[0x20F0];
  v311 = STACK[0x2178];
  LODWORD(STACK[0x2178]) = STACK[0x2178];
  v312 = STACK[0x22A0];
  if (v304 != -1987817586)
  {
    v311 = (v311 << v218) | (v311 >> v305);
  }

  LODWORD(STACK[0x2028]) = v311;
  if (v218)
  {
    v313 = (v312 << v218) ^ (v312 >> v305);
  }

  else
  {
    v313 = v312;
  }

  LODWORD(STACK[0x2090]) = v313;
  if (v218)
  {
    v310 = (v310 >> v223) + (v310 << v218);
  }

  LODWORD(STACK[0x1F48]) = v310;
  if (v223)
  {
    v314 = (LODWORD(STACK[0x1F98]) >> v223) | (LODWORD(STACK[0x1F98]) << v218);
  }

  else
  {
    v314 = STACK[0x1F98];
  }

  LODWORD(STACK[0x2088]) = v314;
  v315 = v304 == -1987817586;
  v316 = STACK[0x22F0];
  v317 = (v316 >> v305) ^ (v316 << v218);
  v318 = (LODWORD(STACK[0x1FD0]) >> v305) ^ (LODWORD(STACK[0x1FD0]) << v218);
  if (v304 == -1987817586)
  {
    v319 = STACK[0x1FD0];
  }

  else
  {
    v319 = v318;
  }

  LODWORD(STACK[0x22A0]) = v319;
  v320 = STACK[0x2160];
  LODWORD(STACK[0x2160]) = STACK[0x2160];
  v321 = STACK[0x2100] + (STACK[0x1FB8] << v279);
  v322 = STACK[0x2150];
  v323 = STACK[0x2150];
  LODWORD(STACK[0x2150]) = STACK[0x2150];
  STACK[0x2290] = v213;
  v324 = (v322 >> v213) ^ (v322 << v279);
  v325 = STACK[0x20E0];
  v326 = (v325 >> v213) | (v325 << v297);
  if (v315)
  {
    v327 = v316;
  }

  else
  {
    v327 = v317;
  }

  LODWORD(STACK[0x20A0]) = v327;
  if (v307 == -693686471)
  {
    v326 = v325;
  }

  LODWORD(STACK[0x2100]) = v326;
  if (v307 == -693686471)
  {
    v328 = v320;
  }

  else
  {
    v328 = (v320 >> v213) ^ (v320 << v279);
  }

  if (v307 == -693686471)
  {
    v329 = STACK[0x2168];
  }

  else
  {
    v329 = v321;
  }

  if (v307 == -693686471)
  {
    v330 = v323;
  }

  else
  {
    v330 = v324;
  }

  LODWORD(STACK[0x20E0]) = v330;
  v97 = v307 == -693686471;
  v331 = STACK[0x2248];
  LODWORD(STACK[0x2248]) = STACK[0x2248];
  v332 = v331 & 0x13939393 ^ 0x35A73627;
  v333 = STACK[0x2228] & 0x69E9E9E9 ^ 0x923BDB72;
  v334 = LODWORD(STACK[0x22B0]) ^ v329;
  v335 = STACK[0x2288];
  LODWORD(STACK[0x2288]) = STACK[0x2288];
  v336 = STACK[0x2200];
  v337 = (v333 & (v335 ^ 0xDA224AA2)) >> STACK[0x2200];
  v338 = STACK[0x22C0];
  v339 = STACK[0x2298];
  v340 = (v337 | ((v333 & (LODWORD(STACK[0x22C0]) ^ 0x1A20A281)) << STACK[0x2298])) ^ v334;
  LODWORD(STACK[0x1FF8]) = 821265340;
  v341 = v331 & 0x69E9E9E9 ^ 0xF353F2BB;
  LODWORD(STACK[0x1F98]) = v341;
  v342 = v341 & (v335 ^ 0xDA224AA2);
  STACK[0x1F90] = v342;
  v343 = STACK[0x22C8];
  v344 = v341 & STACK[0x22C8];
  STACK[0x1FB0] = v344;
  v345 = v343;
  STACK[0x22C8] = v343;
  v346 = STACK[0x21E8];
  STACK[0x1FB8] = v344 << STACK[0x21E8];
  STACK[0x1FA8] = v342 >> v336;
  v347 = LODWORD(STACK[0x2180]) ^ LODWORD(STACK[0x1DE8]) ^ ((v344 << v346) | (v342 >> v336));
  v348 = STACK[0x1F18];
  LODWORD(STACK[0x1FA0]) = LODWORD(STACK[0x1F18]) ^ 0xB971D912;
  v349 = STACK[0x21E0];
  v350 = (v333 & (v348 ^ 0xB971D912)) >> STACK[0x21E0];
  LODWORD(v344) = STACK[0x2278];
  LODWORD(STACK[0x1F80]) = LODWORD(STACK[0x2278]) ^ 0x22341E8;
  LODWORD(STACK[0x2278]) = v344;
  v351 = (v333 & (v344 ^ 0x22341E8)) << v339;
  v352 = STACK[0x2128];
  v353 = ((v350 ^ v351 ^ v292 ^ LODWORD(STACK[0x1ED8])) + 821265339 - ((2 * (v350 ^ v351 ^ v292 ^ LODWORD(STACK[0x1ED8]))) & 0x61E70776)) ^ LODWORD(STACK[0x2128]);
  v354 = ((LODWORD(STACK[0x2020]) ^ (v337 + v351)) + 821265339 - ((2 * (LODWORD(STACK[0x2020]) ^ (v337 + v351))) & 0x61E70776u)) ^ LODWORD(STACK[0x2128]);
  v355 = *(v170 + 4 * BYTE2(v353)) ^ __ROR4__(*(v170 + 4 * v354), 16);
  v356 = v355 + 1076179100 - ((2 * v355) & 0x804A6138);
  LODWORD(STACK[0x2000]) = v348 ^ 0x31359516;
  LODWORD(STACK[0x22B0]) = v338 ^ 0x1620A285;
  LODWORD(STACK[0x1F78]) = v332;
  v357 = v346;
  v358 = (v332 & (v338 ^ 0x1620A285u)) << v346;
  v359 = (v340 + 821265340 + ~((2 * v340) & 0x61E70776)) ^ v352;
  v360 = v328 ^ ((v332 & (v348 ^ 0x31359516u)) >> v349) ^ v358 ^ 0x4025309C ^ __ROR4__(*(v170 + 4 * (((v340 - 31812 + ~((2 * v340) & 0x776)) ^ v352) >> 8)), 8);
  v361 = (v347 + 821265339 - ((2 * v347) & 0x61E70776)) ^ v352;
  v362 = __ROR4__(*(v170 + ((v361 >> 22) & 0x3FC)), 24);
  v363 = (v360 ^ v362 ^ v356) + 821265339 - ((2 * (v360 ^ v362 ^ v356)) & 0x61E70776);
  v364 = *(v170 + 4 * ((v340 - 68 + ~((2 * v340) & 0x76)) ^ v352));
  v365 = STACK[0x2268] & 0x27272727;
  v366 = ((v365 ^ 0x3042526) >> ((!(v364 & 0x10000) + (BYTE2(v364) & 1)) & (LODWORD(STACK[0x2268]) ^ 2) | ((STACK[0x2268] & 1) == 0))) ^ 0x27272727;
  v367 = v366 & STACK[0x22A8];
  LODWORD(v346) = LODWORD(STACK[0x1F70]) ^ __ROR4__(*(v170 + ((v353 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v170 + 4 * v361), 16) ^ *(v170 + 4 * BYTE2(v359)) ^ __ROR4__(*(v170 + 4 * ((BYTE1(v354) - ((v354 >> 7) & 0x50) - 88) ^ 0xA8)), 8) ^ ((v367 >> v336) + ((v366 & v345) << v346));
  v368 = v346 + 821265339 - ((2 * v346) & 0x61E70776);
  LODWORD(STACK[0x1F70]) = v344 ^ 0x22305A0;
  v369 = v339;
  STACK[0x2298] = v339;
  LODWORD(v346) = ((((v344 ^ 0x22305A0) & ((v365 >> 1) ^ 0x26A535B4)) << v339) + (((v348 ^ 0x31359516) & ((v365 >> 1) ^ 0x26A535B4)) >> v349)) ^ LODWORD(STACK[0x1F88]) ^ *(v170 + 4 * BYTE2(v361)) ^ __ROR4__(v364, 16) ^ __ROR4__(*(v170 + 4 * BYTE1(v353)), 8) ^ (((*(STACK[0x2210] + (((*(v170 + ((v354 >> 22) & 0x3FC)) >> 20) & 0xF0u | (*(v170 + ((v354 >> 22) & 0x3FC)) >> 28)) ^ 0x34)) ^ 0x81) + 41) | (*(v170 + ((v354 >> 22) & 0x3FC)) << 8));
  LODWORD(v344) = v346 + 821265339 - ((2 * v346) & 0x61E70776);
  LODWORD(STACK[0x1F50]) = v335 ^ 0x122206A6;
  v370 = v332 & (v335 ^ 0x122206A6u);
  STACK[0x1F88] = v370;
  v371 = v336;
  LODWORD(v370) = (v358 + (v370 >> v336)) ^ LODWORD(STACK[0x20E0]) ^ __ROR4__(*(v170 + ((v359 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v170 + 4 * BYTE1(v361)), 8) ^ __ROR4__(*(v170 + 4 * v353), 16) ^ *(v170 + 4 * BYTE2(v354));
  LODWORD(v353) = v370 + 821265339 - ((2 * v370) & 0x61E70776);
  v372 = STACK[0x2248];
  LODWORD(v339) = STACK[0x2248] & 0x27A7A7A7 ^ 0x69CB6A6B;
  LODWORD(STACK[0x2180]) = v339;
  v373 = v363 ^ v352;
  v374 = *(v170 + 4 * BYTE2(v373));
  v375 = v368 ^ v352;
  LODWORD(v358) = *(v170 + 4 * BYTE1(v375));
  LODWORD(STACK[0x1F18]) = v348;
  v376 = (v339 & STACK[0x2250]) << v369;
  v377 = v339 & (v348 ^ 0x2965CD06);
  LODWORD(STACK[0x2270]) = v348 ^ 0x2965CD06;
  STACK[0x20E0] = v377 >> v336;
  LODWORD(v339) = (v377 >> v336) | v376;
  LODWORD(STACK[0x1FC8]) = v339;
  v378 = v344 ^ v352;
  v379 = v339 ^ LODWORD(STACK[0x1F30]) ^ v374 ^ __ROR4__(v358, 8) ^ __ROR4__(*(v170 + 4 * ((v344 ^ v352) >> 24)), 24);
  v380 = v353 ^ v352;
  v381 = __ROR4__(*(v170 + 4 * (v353 ^ v352)), 16);
  LODWORD(v353) = (v379 ^ v381) + 821265339 - ((2 * (v379 ^ v381)) & 0x61E70776);
  LODWORD(v339) = STACK[0x2228];
  v382 = LODWORD(STACK[0x2228]) ^ 0x41EE1AB7;
  LODWORD(v358) = v382 & 0x27A7A7A7 ^ 0x4F4F4F4F;
  LODWORD(STACK[0x2008]) = v338 ^ 0xE20A285;
  v383 = (v358 & (v338 ^ 0xE20A285)) << v357;
  LOBYTE(v364) = (v367 & 0x73 ^ 0x73) + (v367 & 0x73);
  LODWORD(v367) = v378 ^ 0x67;
  LOBYTE(v378) = *(STACK[0x1F58] + (v378 ^ 0xB1)) ^ v364 ^ (((v367 - 87) ^ v367) - ((2 * ((v367 - 87) ^ v367)) & 0x50) - 88);
  v384 = ((v358 & (v348 ^ 0x2965CD06)) >> v336) ^ v383 ^ LODWORD(STACK[0x1F40]) ^ __ROR4__(*(v170 + 4 * ((v378 >> 1) | (v378 << 7))), 16) ^ __ROR4__(*(v170 + ((v373 >> 22) & 0x3FC)), 24);
  LOBYTE(v378) = (*(STACK[0x1F68] + (((v375 >> 12) & 0xF0 | (v375 >> 20) & 0xF) ^ 0xFELL)) ^ 0xA8) - 37;
  v385 = v384 ^ __ROR4__(*(v170 + 4 * BYTE1(v380)), 8) ^ *(v170 + 4 * ((v378 ^ (16 * v378) ^ 0xEC) + 41));
  v386 = STACK[0x1E68];
  v387 = ((v377 >> v349) | v376) ^ LODWORD(STACK[0x2010]) ^ __ROR4__(*(v170 + 4 * (*(STACK[0x1E68] + ((BYTE1(v373) + 124) ^ 0xD9)) ^ 0x6ALL)), 8) ^ __ROR4__(*(v170 + 4 * v375), 16) ^ *(v170 + 4 * BYTE2(v367));
  v388 = __ROR4__(*(v170 + ((v380 >> 22) & 0x3FC)), 24);
  v389 = (v387 ^ v388) + 821265339 - ((2 * (v387 ^ v388)) & 0x61E70776);
  v390 = v383 ^ LODWORD(STACK[0x2018]);
  LODWORD(v376) = STACK[0x2288];
  LODWORD(STACK[0x1F58]) = LODWORD(STACK[0x2288]) ^ 0x4A224EA6;
  v391 = v349;
  LODWORD(v373) = *(v170 + 4 * BYTE2(v380)) ^ __ROR4__(*(v170 + 4 * v373), 16) ^ __ROR4__(*(v170 + ((v375 >> 22) & 0x3FC)), 24);
  v392 = __ROR4__(*(v170 + 4 * BYTE1(v367)), 8);
  LODWORD(v373) = v390 ^ ((v358 & (v376 ^ 0x4A224EA6)) >> v349) ^ ((v373 ^ v392) - 526630718 - ((2 * (v373 ^ v392)) & 0xC1388184));
  LODWORD(v375) = v373 + 821265339 - ((2 * v373) & 0x61E70776);
  v393 = v338 ^ 0x1C008085;
  LODWORD(v373) = v339 & 0xC8C8C8C;
  LODWORD(v339) = v339 & 0xC8C8C8C ^ 0x1995119D;
  LODWORD(STACK[0x2018]) = v339;
  v394 = (v339 & (v348 ^ 0x19159D14)) >> v336;
  STACK[0x2020] = v394;
  v395 = v357;
  v396 = v353 ^ v352;
  v397 = v389 ^ v352;
  LODWORD(v380) = (v394 | ((v339 & (v338 ^ 0x1C008085)) << v357)) ^ LODWORD(STACK[0x1F48]) ^ *(v170 + 4 * BYTE2(v396)) ^ __ROR4__(*(v170 + ((v397 >> 22) & 0x3FC)), 24);
  LODWORD(v339) = (v385 + 821265339 - ((2 * v385) & 0x61E70776)) ^ v352;
  v398 = v375 ^ v352;
  v399 = v352;
  LODWORD(v375) = v380 ^ __ROR4__(*(v170 + 4 * (v375 ^ v352)), 16);
  v400 = __ROR4__(*(v170 + 4 * (((v385 - 31813 - ((2 * v385) & 0x776)) ^ v352) >> 8)), 8);
  v401 = (v375 ^ v400) + 821265339 - ((2 * (v375 ^ v400)) & 0x61E70776);
  LODWORD(STACK[0x2010]) = v372 & 0xC8C8C8C;
  LODWORD(v357) = v372 & 0xC8C8C8C ^ 0x1D9D1D15;
  v402 = (v357 & (v376 ^ 0x18000C84)) >> v349;
  STACK[0x1FD0] = v402;
  LODWORD(v375) = LODWORD(STACK[0x2278]) ^ 0x10588;
  LODWORD(STACK[0x1FD8]) = v375;
  v403 = STACK[0x2298];
  v404 = v402 + ((v357 & v375) << STACK[0x2298]);
  LODWORD(v402) = (v404 & 0x19191919 ^ 0x19191919) + (v404 & 0x19191919);
  v405 = *(v170 + 4 * v396);
  v406 = v401 ^ v352;
  LOBYTE(v376) = v401 ^ v352;
  STACK[0x1F40] = v406;
  LODWORD(STACK[0x1F48]) = 80 * BYTE3(v406) % (((v402 & 0x2131939 ^ 0x6971D39) + (v402 & 0x2131939)) & 0x8280141);
  v407 = __ROR4__(v405, 16);
  v408 = *(v386 + ((BYTE3(v339) + 124) ^ ((v382 & 0x81 ^ 0xD9) + (v382 & 0x81u))));
  LODWORD(v377) = *(v170 + 4 * (v408 ^ 0x6Au));
  LODWORD(v375) = LODWORD(STACK[0x20A0]) ^ v407 ^ ((v377 >> (v408 & 0x18 ^ 8 | v408 & 0x18 ^ 0x10)) | (v377 << 8)) ^ __ROR4__(*(v170 + 4 * BYTE1(v397)), 8) ^ *(v170 + 4 * BYTE2(v398));
  v409 = v404 ^ v352 ^ (v375 + 821265339 - ((2 * v375) & 0x61E70776));
  STACK[0x1F28] = v409;
  LOWORD(v375) = 80 * v376 - ((((2611280 * v376) >> 16) >> 7) | (((2611280 * v376) >> 16) >> 7 << 8));
  LODWORD(STACK[0x1F08]) = v357;
  v410 = (((v357 & (v348 ^ 0x19159D14)) >> v391) + ((v357 & v393) << v403)) ^ LODWORD(STACK[0x2028]) ^ __ROR4__(*(v170 + 4 * BYTE1(v396)), 8) ^ *(v170 + 4 * BYTE2(v397)) ^ __ROR4__(*(v170 + 4 * v339), 16);
  v411 = __ROR4__(*(v170 + ((v398 >> 22) & 0x3FC)), 24);
  v412 = (v410 ^ v411) + 821265339 - ((2 * (v410 ^ v411)) & 0x61E70776);
  LODWORD(v373) = v373 ^ v402 ^ 0x8C0884;
  v413 = STACK[0x2250];
  v414 = v395;
  LODWORD(v402) = ((v373 & STACK[0x2250]) << v395) ^ LODWORD(STACK[0x2030]);
  LODWORD(v376) = STACK[0x22A8];
  v415 = v371;
  v416 = STACK[0x1F60];
  v417 = *(STACK[0x1F60] + ((BYTE1(v398) + 124) ^ 0x26));
  LODWORD(v402) = v402 ^ ((v373 & STACK[0x22A8]) >> v371) ^ *(v170 + 4 * BYTE2(v339)) ^ __ROR4__(*(v170 + 4 * (((v417 >> 2) ^ 0x2A | (v417 << 6)) ^ ((BYTE2(v396) & 0x37 ^ 0x37) + (BYTE2(v396) & 0x37)) ^ (2 * ((v417 >> 2) ^ 0x2A)) & 0x56u)), 8) ^ __ROR4__(*(v170 + 4 * v397), 16);
  v418 = __ROR4__(*(v170 + ((v396 >> 22) & 0x3FC)), 24);
  v419 = ((v402 ^ v418) + 821265339 - ((2 * (v402 ^ v418)) & 0x61E70776)) ^ v399;
  STACK[0x2028] = v419;
  v420 = v412 ^ v399;
  STACK[0x1F30] = v420;
  v421 = (BYTE2(v409) - ((2 * BYTE2(v409)) & 0x50) - 88) ^ 0xA8;
  LODWORD(v420) = (BYTE1(v420) - ((2 * BYTE1(v420)) & 0x50) - 88) ^ 0xA8;
  LODWORD(v420) = LODWORD(STACK[0x1E30]) ^ LODWORD(STACK[0x1E20]) ^ __ROR4__(*(a18 + 4 * v375), 8) ^ __ROR4__(*(a18 + 4 * (80 * v421 - ((((2611280 * v421) >> 16) >> 7) | (((2611280 * v421) >> 16) >> 7 << 8)))), 24) ^ *(a18 + 4 * (80 * v420 - ((((2611280 * v420) >> 16) >> 7) | (((2611280 * v420) >> 16) >> 7 << 8))));
  v422 = __ROR4__(*(a18 + 4 * (80 * ((BYTE3(v419) - ((2 * BYTE3(v419)) & 0x50) - 88) ^ 0xA8) - ((((2611280 * ((BYTE3(v419) - ((2 * BYTE3(v419)) & 0x50) - 88) ^ 0xA8u)) >> 16) >> 7) | (((2611280 * ((BYTE3(v419) - ((2 * BYTE3(v419)) & 0x50) - 88) ^ 0xA8u)) >> 16) >> 7 << 8)))), 16);
  LODWORD(v420) = LODWORD(STACK[0x2038]) ^ LODWORD(STACK[0x1E00]) ^ ((v420 ^ v422 ^ 0xF3ACBEE9) - 301599670 - ((2 * (v420 ^ v422 ^ 0xF3ACBEE9)) & 0xDC0BE894));
  LODWORD(v375) = v420 - 2213305 - ((2 * v420) & 0xFFBC748E);
  LODWORD(v420) = (((STACK[0x22C8] << v403) & (LODWORD(STACK[0x1DF0]) ^ LODWORD(STACK[0x1DF8]) ^ 0x6FA0696A)) >> v403) | (((v376 >> v371) & (LODWORD(STACK[0x1DF0]) ^ LODWORD(STACK[0x1DF8]) ^ 0x6FA0696A)) << v371);
  v423 = STACK[0x2268];
  LODWORD(v394) = LODWORD(STACK[0x2268]) ^ 0x83DC356E;
  LODWORD(STACK[0x20A0]) = v394;
  LODWORD(v420) = v382 & (((v420 ^ ((v420 & v394) >> 1)) & (v423 ^ 0x83DC356C)) >> 2) ^ v420 ^ ((v420 & v394) >> 1);
  v424 = STACK[0x2228];
  LODWORD(v419) = v382 & (((LODWORD(STACK[0x2228]) ^ 0x1EE1AB4) & (v423 ^ 0x3DC356Cu)) >> 2) & ((v420 & (v423 ^ 0x83DC3560)) >> 4) ^ v420;
  LODWORD(STACK[0x1F20]) = v419;
  LODWORD(v419) = a55 ^ v419 ^ 0x3C3C3C3C;
  LODWORD(STACK[0x2030]) = v419;
  v425 = v419 ^ v375;
  if (v97)
  {
    v426 = v425;
  }

  else
  {
    v426 = (v425 >> STACK[0x22E0]) ^ (v425 << STACK[0x2290]);
  }

  LODWORD(STACK[0x2038]) = v426;
  v427 = STACK[0x2278];
  v428 = STACK[0x1F98];
  v429 = v391;
  v430 = LODWORD(STACK[0x2188]) ^ LODWORD(STACK[0x2040]) ^ ((STACK[0x1F90] >> v391) | ((STACK[0x1F98] & LODWORD(STACK[0x1F80])) << v403));
  v431 = ((v423 & 0xD3D3D3D3 ^ 0x83D01142) >> (119 * ((v427 & 0x47 ^ 0x40) + (v427 & 0x47 ^ 7u)))) ^ 0xD3D3D3D3;
  v432 = v414;
  v433 = ((v413 & v431) << v414) ^ LODWORD(STACK[0x2100]) ^ LODWORD(STACK[0x1E18]);
  v434 = LODWORD(STACK[0x1F18]) ^ 0xB975DD16;
  STACK[0x22C0] = v434;
  v435 = v433 ^ ((v434 & v431) >> v391);
  v436 = v403;
  v437 = LODWORD(STACK[0x1E08]) ^ STACK[0x1FA8] ^ (STACK[0x1FB0] << v403) ^ LODWORD(STACK[0x2050]);
  v438 = ((v428 & STACK[0x1FA0]) >> v371) ^ STACK[0x1FB8] ^ LODWORD(STACK[0x2048]) ^ LODWORD(STACK[0x2058]);
  v439 = (v438 + 821265339 - ((2 * v438) & 0x61E70776)) ^ v399;
  v440 = v416;
  v441 = *(v416 + ((BYTE2(v439) + 124) ^ 0x26));
  v442 = v437 + LODWORD(STACK[0x1FF8]) + ~((2 * v437) & 0x61E70776);
  v443 = ((v441 >> 2) | (v441 << 6)) ^ 0x2A;
  v444 = (v430 + 821265339 - ((2 * v430) & 0x61E70776)) ^ v399;
  v445 = (v435 + 821265339 - ((2 * v435) & 0x61E70776)) ^ v399;
  v446 = *(v170 + 4 * BYTE2(v444)) ^ __ROR4__(*(v170 + 4 * HIBYTE(v445)), 24) ^ __ROR4__(*(v170 + 4 * BYTE1(v439)), 8);
  v447 = v424 & 0x13939393 ^ 0x26A535B4;
  v448 = v442 ^ v399;
  v449 = LODWORD(STACK[0x2060]) ^ __ROR4__(*(v170 + ((v448 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v170 + 4 * v439), 16) ^ __ROR4__(*(v170 + 4 * (((v430 - 31813 - ((2 * v430) & 0x776)) ^ v399) >> 8)), 8) ^ *(v170 + 4 * BYTE2(v445));
  v450 = (HIBYTE(v444) ^ 0xFFFFFFE3) + ((v444 >> 23) & 0xC6);
  v451 = v443 ^ 0x37 ^ (2 * v443) & 0x56;
  v452 = *(v440 + ((BYTE1(v448) + 124) ^ 0x26));
  v453 = ((v452 >> 2) | (v452 << 6)) ^ (v452 >> 1) & 0x56 ^ 0x49;
  v454 = (((v447 & STACK[0x1F50]) >> v429) | ((v447 & STACK[0x1F70]) << v436)) ^ LODWORD(STACK[0x2070]) ^ __ROR4__(*(v170 + 4 * ((v430 - 69 - ((2 * v430) & 0x76)) ^ v399)), 16) ^ *(v170 + 4 * BYTE2(v448)) ^ __ROR4__(*(v170 + ((v439 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v170 + 4 * BYTE1(v445)), 8);
  v455 = (v399 ^ 0x30F383BB) + 821265339 - ((2 * (v399 ^ 0x30F383BB)) & 0x61E70776);
  v456 = v449 + 821265339 - ((2 * v449) & 0x61E70776);
  v457 = v454 + 821265339 - ((2 * v454) & 0x61E70776);
  HIDWORD(v459) = *(v170 + 4 * v448);
  LODWORD(v459) = HIDWORD(v459);
  v458 = v459 >> 16;
  if (v446 == v458)
  {
    v460 = STACK[0x1F78];
  }

  else
  {
    v460 = (((2 * LODWORD(STACK[0x1F78])) & 0x4460B40) - LODWORD(STACK[0x1F78]) - 35866089) ^ v427;
  }

  v461 = ((v460 & v413) << v432) ^ (STACK[0x1F88] >> v429) ^ v455 ^ v456;
  v462 = LODWORD(STACK[0x2080]) ^ *(v170 + 4 * v451) ^ __ROR4__(*(v170 + 4 * (v450 + 29)), 24) ^ __ROR4__(*(v170 + 4 * v445), 16);
  v463 = __ROR4__(*(v170 + 4 * v453), 8);
  v464 = v447 & STACK[0x2000];
  v465 = v447 & STACK[0x22B0];
  STACK[0x2200] = v415;
  LODWORD(v464) = (v464 >> v415) ^ (v465 << v436) ^ LODWORD(STACK[0x2068]) ^ v458 ^ v446;
  v466 = (v462 ^ v463 ^ 0x90269004) + 821265339 - ((2 * (v462 ^ v463 ^ 0x90269004)) & 0x61E70776);
  v467 = v432;
  v468 = v455 ^ (((v424 & 0x3800000 ^ 0x26A40000 ^ v447 & (LODWORD(STACK[0x2288]) ^ 0x358606A6u)) >> v429) + (v465 << v432)) ^ 0x90269004;
  v469 = (v464 + 821265339 - ((2 * v464) & 0x61E70776)) ^ v455;
  HIDWORD(v470) = *(v440 + (((((v464 - 31813 - ((2 * v464) & 0x776)) ^ ((v399 ^ 0x83BB) - 31813 - ((2 * (v399 ^ 0x83BB)) & 0x776))) >> 8) + 124) ^ 0x26));
  LODWORD(v470) = (HIDWORD(v470) ^ 0xAAAAAAAA) << 24;
  LODWORD(v465) = *(v170 + 4 * HIBYTE(v469));
  v471 = v468 ^ v466;
  v472 = ((*(STACK[0x2208] + (((v465 >> 23) & 0xFE | (v465 >> 31)) ^ 0xE7)) ^ (((v465 >> 23) & 0xFE | (v465 < 0)) - ((v465 >> 22) & 0x50) - 88) ^ 0xF5) - 55) | (v465 << 8);
  v473 = v457 ^ v455;
  LODWORD(v464) = LODWORD(STACK[0x1FC8]) ^ LODWORD(STACK[0x20A8]) ^ *(v170 + 4 * BYTE2(v461)) ^ __ROR4__(*(v170 + 4 * ((v470 >> 26) ^ 0x37 ^ (2 * (v470 >> 26)) & 0x56u)), 8) ^ __ROR4__(*(v170 + 4 * v471), 16);
  LODWORD(v470) = __ROR4__(*(v170 + 4 * (v473 >> (((HIBYTE(v461) + 124) | (3 - HIBYTE(v461))) & 0x18))), 24);
  v474 = (v464 ^ v470) + 821265339 - ((2 * (v464 ^ v470)) & 0x61E70776);
  LODWORD(v464) = v424 & 0x27A7A7A7 ^ 0x4EE94DE8;
  v475 = v413;
  STACK[0x2250] = v413;
  v476 = (v464 & v413) << v436;
  v477 = v436;
  v478 = ((v464 & STACK[0x1F58]) >> v429) ^ v476 ^ LODWORD(STACK[0x20B0]) ^ *(v170 + 4 * BYTE2(v471)) ^ __ROR4__(*(v170 + 4 * BYTE1(v473)), 8);
  LODWORD(v470) = __ROR4__(*(v170 + 4 * v461), 16);
  v479 = (v478 ^ v470 ^ v472) + 821265339 - ((2 * (v478 ^ v470 ^ v472)) & 0x61E70776);
  LODWORD(v465) = STACK[0x20E0] ^ ((STACK[0x2180] & LODWORD(STACK[0x2008])) << v467) ^ LODWORD(STACK[0x2078]) ^ __ROR4__(*(v170 + 4 * BYTE1(v471)), 8) ^ (*(v170 + 4 * v473) << 16) ^ HIWORD(*(v170 + 4 * v473)) ^ *(v170 + 4 * BYTE2(v469)) ^ __ROR4__(*(v170 + 4 * (*(STACK[0x1E68] + ((HIBYTE(v461) + 124) ^ 0xD9)) ^ 0x6ALL)), 24);
  v480 = ((v464 & STACK[0x2270]) >> v415) ^ v476 ^ LODWORD(STACK[0x2098]) ^ __ROR4__(*(v170 + ((v471 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v170 + 4 * BYTE1(v461)), 8) ^ *(v170 + 4 * BYTE2(v473));
  LODWORD(v470) = __ROR4__(*(v170 + 4 * v469), 16);
  LODWORD(v464) = v474 ^ v455;
  LOBYTE(v473) = *(STACK[0x1F10] + ((((v474 ^ v455) >> 7) & 0xFE | ((v474 ^ v455) >> 15) & 1) ^ 0xBLL)) ^ 0xB5;
  v481 = v479 ^ v455;
  v482 = (v465 + 821265339 - ((2 * v465) & 0x61E70776)) ^ v455;
  v483 = ((v480 ^ v470) + 821265339 - ((2 * (v480 ^ v470)) & 0x61E70776)) ^ v455;
  LOBYTE(v479) = *(STACK[0x2210] + ((((v474 ^ v455) >> 20) & 0xF0 | ((v474 ^ v455) >> 28)) ^ 0x34));
  v484 = *(v170 + 4 * v483);
  v485 = *(v170 + ((v483 >> 22) & 0x3FC));
  v486 = *(v170 + 4 * BYTE1(v482));
  v487 = *(v170 + ((v481 >> 22) & 0x3FC));
  v488 = *(v170 + 4 * v481);
  v489 = *(v170 + 4 * BYTE1(v481));
  v490 = *(v170 + 4 * v482);
  v491 = *(v170 + 4 * BYTE2(v482));
  v492 = *(v170 + 4 * ((v479 ^ 0x81) + 41));
  v493 = *(v170 + 4 * BYTE2(v481));
  LOBYTE(v478) = v473 - 55;
  v494 = *(v170 + ((v482 >> 22) & 0x3FC));
  LODWORD(v482) = *(v170 + 4 * v478);
  v495 = *(v170 + 4 * BYTE2(v464));
  v496 = *(v170 + 4 * BYTE1(v483));
  v497 = *(v170 + 4 * v464);
  v498 = *(v170 + 4 * BYTE2(v483)) ^ LODWORD(STACK[0x2090]) ^ __ROR4__(v487, 24) ^ __ROR4__(v490, 16) ^ __ROR4__(v482, 8);
  v499 = STACK[0x20C8];
  v500 = LODWORD(STACK[0x20C8]) ^ 0x8BEE8C3E;
  v501 = STACK[0x2088];
  LODWORD(STACK[0x15C8]) = 421075224;
  if (v501)
  {
    v502 = v500;
  }

  else
  {
    v502 = 421075224;
  }

  v503 = v467;
  v504 = (((STACK[0x22C8] & (((v502 & (v499 ^ 0x6D086AD8u)) >> 1) ^ 0x19191919)) << v467) | ((STACK[0x22A8] & (((v502 & (v499 ^ 0x6D086AD8u)) >> 1) ^ 0x19191919)) >> v429)) ^ v501 ^ __ROR4__(v484, 16) ^ __ROR4__(v489, 8) ^ v491;
  v505 = __ROR4__(v492, 24);
  v506 = (v504 ^ v505) + 821265339 - ((2 * (v504 ^ v505)) & 0x61E70776);
  v507 = (STACK[0x1FD0] + ((STACK[0x1F08] & STACK[0x22C8]) << v477)) ^ v455 ^ (v498 + 821265339 - ((2 * v498) & 0x61E70776));
  v508 = STACK[0x2020] ^ ((STACK[0x2018] & LODWORD(STACK[0x1FD8])) << v467) ^ LODWORD(STACK[0x20B8]) ^ __ROR4__(v485, 24) ^ __ROR4__(v486, 8);
  v509 = __ROR4__(v488, 16);
  v510 = ((v508 ^ v509 ^ v495) + 821265339 - ((2 * (v508 ^ v509 ^ v495)) & 0x61E70776)) ^ v455;
  v511 = LODWORD(STACK[0x2010]) ^ 0x484040C ^ ((v510 & 0x197FB93F ^ 0x197FB93F) + (v510 & 0x197FB93F)) & 0x3B195B19;
  v512 = ((v511 & STACK[0x22C8]) << v467) | ((v511 & (LODWORD(STACK[0x1F18]) ^ 0x3915DD14u)) >> v429);
  v513 = v493 ^ LODWORD(STACK[0x22A0]) ^ __ROR4__(v494, 24) ^ __ROR4__(v496, 8);
  v514 = __ROR4__(v497, 16);
  v515 = v506 ^ v455;
  v516 = ((v513 ^ v514 ^ v512) + 821265339 - ((2 * (v513 ^ v514 ^ v512)) & 0x61E70776)) ^ v455;
  v517 = v507;
  HIDWORD(v518) = *(v440 + (((v507 >> (((v510 & 0x1A ^ 0xAA) + (v510 & 0x1A)) & 8)) + 124) ^ 0x26));
  LODWORD(v518) = (HIDWORD(v518) ^ 0xAAAAAAAA) << 24;
  v519 = *(a18 + 4 * (80 * BYTE2(v510) - ((((2611280 * BYTE2(v510)) >> 16) >> 7) | (((2611280 * BYTE2(v510)) >> 16) >> 7 << 8))));
  LODWORD(STACK[0x22A0]) = v519;
  v520 = *(a18 + 4 * (80 * BYTE2(v516) - ((((2611280 * BYTE2(v516)) >> 16) >> 7) | (((2611280 * BYTE2(v516)) >> 16) >> 7 << 8))));
  v521 = (v518 >> 26) ^ 0x37 ^ (2 * (v518 >> 26)) & 0x56;
  v522 = ((v520 << ((v519 & 8 ^ 8) + (v519 & 8))) + HIBYTE(v520)) ^ __ROR4__(*(a18 + 4 * (80 * HIBYTE(v515) - ((((2611280 * HIBYTE(v515)) >> 16) >> 7) | (((2611280 * HIBYTE(v515)) >> 16) >> 7 << 8)))), 16) ^ *(a18 + 4 * (80 * v521 - ((((2611280 * v521) >> 16) >> 7) | (((2611280 * v521) >> 16) >> 7 << 8)))) ^ __ROR4__(*(a18 + 4 * (80 * v510 - ((((2611280 * v510) >> 16) >> 7) | (((2611280 * v510) >> 16) >> 7 << 8)))), 8);
  v523 = STACK[0x1E20];
  STACK[0x21E0] = v429;
  v524 = STACK[0x22C0] >> v429;
  STACK[0x21E8] = v503;
  v525 = (((v475 << v503) & (v523 ^ a55 ^ 0xF4F0EA22)) >> v503) | ((v524 & (v523 ^ a55 ^ 0xF4F0EA22)) << v429);
  LODWORD(STACK[0x22B0]) = v499 ^ 0x6D086AD8;
  LODWORD(v524) = LODWORD(STACK[0x2248]) ^ 0x3684356C;
  v526 = v524 & (((v525 ^ ((v525 & (v499 ^ 0x6D086AD8u)) >> 1)) & (v499 ^ 0x6D086AD8)) >> 2) ^ v525 ^ ((v525 & (v499 ^ 0x6D086AD8u)) >> 1);
  v527 = v524 & ((v524 & (v499 ^ 0x2D086AD8)) >> 2) & ((v526 & (v499 ^ 0x6D086AD0u)) >> 4) ^ v526;
  v528 = STACK[0x1E00];
  v529 = LODWORD(STACK[0x20E8]) ^ LODWORD(STACK[0x1E00]) ^ ((v522 ^ 0xA20DAFF8) - 301599670 - 2 * ((v522 ^ 0xA20DAFF8) & 0x6E05F44E ^ v522 & 4));
  v530 = STACK[0x1E30];
  v531 = ((v529 ^ 0xA20DAFF8) - 125669748 - 2 * ((v529 ^ 0xA20DAFF8) & 0x78826E8E ^ v529 & 2)) ^ LODWORD(STACK[0x1E30]);
  v532 = (v531 + 187617381 - ((2 * v531) & 0x165DA0CA)) ^ v523;
  LODWORD(STACK[0x1E20]) = v523;
  v533 = v527 ^ a55 ^ (v532 - 2213305 - ((2 * v532) & 0xFFBC748E));
  v534 = STACK[0x2290];
  v535 = STACK[0x21F0];
  v536 = ((v533 ^ 0xAAAAAAAA) << STACK[0x2290]) + ((v533 ^ 0xAAAAAAAA) >> STACK[0x21F0]);
  v537 = STACK[0x2120];
  v538 = v533 ^ 0xBD622B5;
  v539 = v536 - ((2 * v536) & 0x42F9103E) - 1585674209;
  if (STACK[0x2120])
  {
    v538 = v539;
  }

  LODWORD(STACK[0x2288]) = v538;
  LODWORD(STACK[0x2188]) = v507;
  v540 = *(a18 + 4 * (80 * BYTE2(v507) - ((((2611280 * BYTE2(v507)) >> 16) >> 7) | (((2611280 * BYTE2(v507)) >> 16) >> 7 << 8))));
  v541 = (*(STACK[0x1F68] + (((v540 >> 20) & 0xF0 | (v540 >> 28)) ^ 0xFELL)) ^ 0xA8) - 37;
  LODWORD(STACK[0x2228]) = v516;
  LODWORD(STACK[0x2268]) = v515;
  v542 = LODWORD(STACK[0x2108]) ^ a55 ^ (v527 - 2213305 - ((2 * v527) & 0xFFBC748E)) ^ __ROR4__(*(a18 + 4 * (80 * HIBYTE(v516) - ((((2611280 * HIBYTE(v516)) >> 16) >> 7) | (((2611280 * HIBYTE(v516)) >> 16) >> 7 << 8)))), 16) ^ __ROR4__(*(a18 + 4 * (80 * v515 - ((((2611280 * v515) >> 16) >> 7) | (((2611280 * v515) >> 16) >> 7 << 8)))), 8) ^ *(a18 + 4 * (80 * BYTE1(v510) - ((((2611280 * BYTE1(v510)) >> 16) >> 7) | (((2611280 * BYTE1(v510)) >> 16) >> 7 << 8)))) ^ (((v541 ^ (16 * v541) ^ 0xEC) + 41) | (v540 << 8));
  v543 = (v542 - 301599670 - ((2 * v542) & 0xDC0BE894)) ^ v528;
  v544 = (v543 - 125669748 - ((2 * v543) & 0xF104DD18)) ^ v530;
  v545 = (v544 + 187617381 - ((2 * v544) & 0x165DA0CA)) ^ v523;
  v546 = STACK[0x20D0];
  v547 = ((v545 ^ 0xAAAAAAAA) << v534) | ((v545 ^ 0xAAAAAAAA) >> STACK[0x20D0]);
  v548 = ((*(STACK[0x2210] + (((v510 >> 20) & 0xF0 | (v510 >> 28)) ^ 0x34)) ^ 0x81) + 41);
  v549 = v545 ^ 0xBD622B5;
  v550 = *(a18 + 4 * (80 * v548 - ((((2611280 * v548) >> 16) >> 7) | (((2611280 * v548) >> 16) >> 7 << 8))));
  v551 = v547 - ((2 * v547) & 0x42F9103E) - 1585674209;
  HIDWORD(v553) = *(a18 + 4 * (80 * BYTE2(v515) - ((((2611280 * BYTE2(v515)) >> 16) >> 7) | (((2611280 * BYTE2(v515)) >> 16) >> 7 << 8))));
  LODWORD(v553) = HIDWORD(v553);
  v552 = v553 >> 24;
  if (v537)
  {
    v549 = v551;
  }

  LODWORD(STACK[0x2278]) = v549;
  v554 = v552 ^ __ROR4__(v550, 16) ^ *(a18 + 4 * (80 * BYTE1(v516) - ((((2611280 * BYTE1(v516)) >> 16) >> 7) | (((2611280 * BYTE1(v516)) >> 16) >> 7 << 8))));
  v555 = __ROR4__(*(a18 + 4 * (80 * v517 - ((((2611280 * v517) >> 16) >> 7) | (((2611280 * v517) >> 16) >> 7 << 8)))), 8);
  v556 = LODWORD(STACK[0x2280]) ^ v528 ^ ((v554 ^ v555) - 301599670 - ((2 * (v554 ^ v555)) & 0xDC0BE894));
  v557 = (v556 - 125669748 - ((2 * v556) & 0xF104DD18)) ^ v530;
  v558 = STACK[0x1DF8];
  v559 = (v557 + 2089117153 - ((2 * v557) & 0xF90ACBC2)) ^ LODWORD(STACK[0x1DF8]);
  v560 = STACK[0x1DF0];
  LODWORD(STACK[0x2270]) = v527 ^ LODWORD(STACK[0x1DF0]);
  v561 = v527 ^ v560 ^ (v559 + 321195147 - ((2 * v559) & 0x264A1916));
  v562 = (((v561 ^ 0xAAAAAAAA) >> v546) ^ ((v561 ^ 0xAAAAAAAA) << v534)) - ((2 * (((v561 ^ 0xAAAAAAAA) >> v546) ^ ((v561 ^ 0xAAAAAAAA) << v534))) & 0x42F9103E);
  v563 = STACK[0x2138];
  LODWORD(STACK[0x2138]) = STACK[0x2138];
  v564 = (v563 >> v534) ^ (v563 << v535);
  v565 = v561 ^ 0xBD622B5;
  v566 = v562 - 1585674209;
  if (v537)
  {
    v567 = v566;
  }

  else
  {
    v567 = v565;
  }

  LODWORD(STACK[0x2280]) = v567;
  v568 = STACK[0x1F40];
  v569 = STACK[0x1F30];
  v570 = (BYTE3(STACK[0x1F28]) - ((2 * BYTE3(STACK[0x1F28])) & 0x50) - 88) ^ 0xA8;
  v571 = 80 * v570 - (((2611280 * v570) >> 23) | ((2611280 * v570) >> 23 << 8));
  v572 = (BYTE2(v569) - ((2 * BYTE2(v569)) & 0x50) - 88) ^ 0xA8;
  v573 = 80 * v572 - (((2611280 * v572) >> 23) | ((2611280 * v572) >> 23 << 8));
  v574 = (BYTE1(v568) - ((2 * BYTE1(v568)) & 0x16) - 117) ^ 0x8B;
  v575 = 80 * v574 - (((2611280 * v574) >> 23) | ((2611280 * v574) >> 23 << 8));
  if (!v537)
  {
    v564 = v563;
  }

  v576 = v564 ^ __ROR4__(*(a18 + 4 * (80 * STACK[0x2028] - ((((2611280 * STACK[0x2028]) >> 16) >> 7) | (((2611280 * STACK[0x2028]) >> 16) >> 7 << 8)))), 8) ^ __ROR4__(*(a18 + 4 * v571), 16) ^ __ROR4__(*(a18 + 4 * v573), 24) ^ *(a18 + 4 * v575);
  v577 = (v576 - 301599670 - ((2 * v576) & 0xDC0BE894)) ^ v528;
  v578 = (v577 - 125669748 - ((2 * v577) & 0xF104DD18)) ^ v530;
  v579 = (v578 + 2089117153 - ((2 * v578) & 0xF90ACBC2)) ^ v558;
  v580 = STACK[0x2190];
  v581 = (v580 >> v534) + (v580 << STACK[0x22E0]);
  v582 = v560 ^ LODWORD(STACK[0x1F20]) ^ 0x3C3C3C3C;
  v583 = v582 ^ (v579 + 321195147 - ((2 * v579) & 0x264A1916));
  if (v537)
  {
    v584 = (v583 >> v535) | (v583 << v534);
  }

  else
  {
    v584 = v583;
  }

  v585 = (BYTE2(v568) - ((2 * BYTE2(v568)) & 0x50) - 88) ^ 0xA8;
  v586 = 80 * v585 - (((2611280 * v585) >> 23) | ((2611280 * v585) >> 23 << 8));
  v587 = (BYTE1(STACK[0x2028]) - ((2 * BYTE1(STACK[0x2028])) & 0x50) - 88) ^ 0xA8;
  v588 = 80 * v587 - (((2611280 * v587) >> 23) | ((2611280 * v587) >> 23 << 8));
  if (!v537)
  {
    v581 = STACK[0x2190];
  }

  v589 = v581 ^ __ROR4__(*(a18 + 4 * (80 * STACK[0x1F28] - ((((2611280 * STACK[0x1F28]) >> 16) >> 7) | (((2611280 * STACK[0x1F28]) >> 16) >> 7 << 8)))), 8) ^ __ROR4__(*(a18 + 4 * (80 * ((BYTE3(v569) - ((2 * BYTE3(v569)) & 0x50) - 88) ^ 0xA8) - ((((2611280 * ((BYTE3(v569) - ((2 * BYTE3(v569)) & 0x50) - 88) ^ 0xA8u)) >> 16) >> 7) | (((2611280 * ((BYTE3(v569) - ((2 * BYTE3(v569)) & 0x50) - 88) ^ 0xA8u)) >> 16) >> 7 << 8)))), 16) ^ __ROR4__(*(a18 + 4 * v586), 24) ^ *(a18 + 4 * v588);
  v590 = (v589 - 301599670 - ((2 * v589) & 0xDC0BE894)) ^ v528;
  v591 = (v590 + 2089117153 - ((2 * v590) & 0xF90ACBC2)) ^ v558;
  v592 = (v591 - 125669748 - ((2 * v591) & 0xF104DD18)) ^ v530;
  v594 = v582 ^ (v592 + 321195147 - ((2 * v592) & 0x264A1916));
  if (v537)
  {
    v595 = (v594 >> STACK[0x22E0]) + (v594 << v534);
  }

  else
  {
    v595 = v594;
  }

  v596 = (WORD1(STACK[0x2028]) - ((2 * WORD1(STACK[0x2028])) & 0x50) - 88) ^ 0xA8;
  v597 = (STACK[0x1F30] - ((2 * STACK[0x1F30]) & 0x50) - 88) ^ 0xA8;
  v593 = (STACK[0x1F28] >> 8) + (~(2 * (STACK[0x1F28] >> 8)) | 0xAF);
  v598 = LODWORD(STACK[0x21B8]) ^ __ROR4__(*(a18 + 4 * LODWORD(STACK[0x1F48])), 16) ^ __ROR4__(*(a18 + 4 * (80 * v596 - ((((2611280 * v596) >> 16) >> 7) | (((2611280 * v596) >> 16) >> 7 << 8)))), 24) ^ __ROR4__(*(a18 + 4 * (80 * v597 - ((((2611280 * v597) >> 16) >> 7) | (((2611280 * v597) >> 16) >> 7 << 8)))), 8) ^ *(a18 + 4 * (80 * ((v593 - 87) ^ 0xA8) - ((((2611280 * ((v593 - 87) ^ 0xA8u)) >> 16) >> 7) | (((2611280 * ((v593 - 87) ^ 0xA8u)) >> 16) >> 7 << 8))));
  v599 = (v598 - 301599670 - ((2 * v598) & 0xDC0BE894)) ^ v528;
  v600 = (v599 + 187617381 - ((2 * v599) & 0x165DA0CA)) ^ LODWORD(STACK[0x1E20]);
  v601 = (v600 - 125669748 - ((2 * v600) & 0xF104DD18)) ^ v530;
  v602 = LODWORD(STACK[0x2030]) ^ (v601 - 2213305 - ((2 * v601) & 0xFFBC748E));
  v603 = (v602 >> v535) ^ (v602 << v534);
  if (!v537)
  {
    v603 = v602;
  }

  v604 = *(a18 + 4 * (80 * BYTE1(LODWORD(STACK[0x2268])) - ((((2611280 * BYTE1(LODWORD(STACK[0x2268]))) >> 16) >> 7) | (((2611280 * BYTE1(LODWORD(STACK[0x2268]))) >> 16) >> 7 << 8))));
  v605 = LODWORD(STACK[0x2198]) ^ __ROR4__(STACK[0x22A0], 24) ^ __ROR4__(*(a18 + 4 * (80 * HIBYTE(LODWORD(STACK[0x2188])) - ((((2611280 * HIBYTE(LODWORD(STACK[0x2188]))) >> 16) >> 7) | (((2611280 * HIBYTE(LODWORD(STACK[0x2188]))) >> 16) >> 7 << 8)))), 16);
  v606 = __ROR4__(*(a18 + 4 * (80 * LODWORD(STACK[0x2228]) - ((((2611280 * LODWORD(STACK[0x2228])) >> 16) >> 7) | (((2611280 * LODWORD(STACK[0x2228])) >> 16) >> 7 << 8)))), 8);
  v607 = ((v605 ^ v606 ^ v604) - 301599670 - ((2 * (v605 ^ v606 ^ v604)) & 0xDC0BE894)) ^ v528;
  v608 = (v607 - 125669748 - ((2 * v607) & 0xF104DD18)) ^ v530;
  v609 = (v608 + 2089117153 - ((2 * v608) & 0xF90ACBC2)) ^ v558;
  v610 = LODWORD(STACK[0x2270]) ^ (v609 + 321195147 - ((2 * v609) & 0x264A1916));
  v611 = ((v610 ^ 0xAAAAAAAA) << v534) | ((v610 ^ 0xAAAAAAAA) >> v535);
  v612 = v610 ^ 0xBD622B5;
  if (LODWORD(STACK[0x2170]) != -1343677507)
  {
    v612 = v611 - ((2 * v611) & 0x42F9103E) - 1585674209;
  }

  v613 = ~(2 * LODWORD(STACK[0x1EE0])) + LODWORD(STACK[0x21A8]);
  v614 = STACK[0x2038];
  if (STACK[0x21A8])
  {
    v615 = STACK[0x2038];
  }

  else
  {
    v615 = v603;
  }

  if (STACK[0x21A8])
  {
    v616 = v603;
  }

  else
  {
    v616 = v595;
  }

  if (STACK[0x21A8])
  {
    v617 = v595;
  }

  else
  {
    v617 = v584;
  }

  if (STACK[0x21A8])
  {
    v618 = v584;
  }

  else
  {
    v618 = STACK[0x2038];
  }

  v619 = STACK[0x2288];
  v620 = STACK[0x2278];
  if (STACK[0x21A8])
  {
    v621 = STACK[0x2278];
  }

  else
  {
    v621 = STACK[0x2288];
  }

  v622 = STACK[0x2280];
  if (STACK[0x21A8])
  {
    v623 = STACK[0x2288];
  }

  else
  {
    v623 = STACK[0x2280];
  }

  if (STACK[0x21A8])
  {
    v624 = STACK[0x2280];
  }

  else
  {
    v624 = v612;
  }

  if (STACK[0x21A8])
  {
    v625 = v612;
  }

  else
  {
    v625 = STACK[0x2278];
  }

  v626 = (v613 & 2) == 0;
  if ((v613 & 2) != 0)
  {
    v627 = v617;
  }

  else
  {
    v627 = v615;
  }

  if ((v613 & 2) != 0)
  {
    v628 = v615;
  }

  else
  {
    v628 = v617;
  }

  if ((v613 & 2) != 0)
  {
    v629 = v621;
  }

  else
  {
    v629 = v624;
  }

  if (v626)
  {
    v630 = v618;
  }

  else
  {
    v621 = v624;
    v630 = v616;
  }

  v631 = v629 ^ ((v628 ^ v630) - ((2 * (v628 ^ v630)) & 0x42F9103E) - 1585674209);
  v632 = v631 + 1011915507 - ((2 * v631) & 0x78A135E6);
  if (v626)
  {
    v633 = v625;
  }

  else
  {
    v633 = v623;
  }

  v634 = STACK[0x2118];
  v635 = LODWORD(STACK[0x2118]) ^ 0x3C509AF3;
  v636 = v632 ^ v635;
  v637 = (124696803 * (v633 ^ LODWORD(STACK[0x2118]) ^ 0xAC28CF2F)) ^ v627 ^ ((((v636 ^ 0xD544730) & 0x76EB8E3) + (v636 & 0x76EB8E3 ^ 0x22AB8C3)) * (v636 ^ 0xD544730));
  v638 = (v636 ^ 0x9BC2D1A6) + 383987431 * ((LODWORD(STACK[0x2118]) ^ 0xAC28CF2F ^ v621) + (v637 ^ 0x69696969)) + 383987431;
  if (v626)
  {
    v639 = v623;
  }

  else
  {
    v616 = v618;
    v639 = v625;
  }

  v640 = v621 ^ (v616 - ((2 * v616) & 0x42F9103E) - 1585674209) ^ v637;
  v641 = (v640 + 1011915507 - ((2 * v640) & 0x78A135E6)) ^ v635;
  if ((v641 & 0x10000000 & v639) != 0)
  {
    v642 = -(v641 & 0x10000000);
  }

  else
  {
    v642 = v641 & 0x10000000;
  }

  v643 = v639 ^ 0xA17C881F;
  v644 = v628 + 534718783 * ((v633 ^ LODWORD(STACK[0x2118]) ^ 0x53D730D0) + (v638 ^ 0x96969696)) + 786178021 * ((v634 ^ 0x643D2E59) + (v641 & 0xEFFFFFFF ^ 0x9BC2D1A6 ^ (v642 + (v639 ^ 0xA17C881F)))) + 1320896804;
  v645 = (v637 + 1011915507 - ((2 * v637) & 0x78A135E6)) ^ v635;
  v646 = (v641 ^ v639 ^ (v645 - ((2 * v645) & 0x42F9103E) - 1585674209)) + 341462419 * ((v629 ^ 0xC815E176) + (LODWORD(STACK[0x21D8]) ^ (v644 + 1011915507 - ((2 * v644) & 0x78A135E6)))) + 341462419;
  v647 = v644 + 1396543827 * ((v621 ^ 0xC815E176) + (LODWORD(STACK[0x21D8]) ^ (v646 + 1011915507 - ((2 * v646) & 0x78A135E6)))) + 1396543827;
  v648 = v638 ^ v633 ^ (v647 - ((2 * v647) & 0x42F9103E) - 1585674209);
  v649 = (v648 + 1011915507 - ((2 * v648) & 0x78A135E6)) ^ v635;
  v650 = v629 ^ 0x9BC2D1A6 ^ (v649 - ((2 * v649) & 0x42F9103E) - 1585674209);
  v651 = v643 ^ v634 ^ v641 ^ v646;
  v652 = 1115418769 * v650;
  v653 = LODWORD(STACK[0x20C0]) ^ LODWORD(STACK[0x2160]) ^ LODWORD(STACK[0x2168]) ^ LODWORD(STACK[0x21C8]) ^ LODWORD(STACK[0x21A0]) ^ LODWORD(STACK[0x2150]) ^ LODWORD(STACK[0x2140]) ^ LODWORD(STACK[0x21B0]) ^ LODWORD(STACK[0x21D0]) ^ LODWORD(STACK[0x2260]) ^ LODWORD(STACK[0x21F8]) ^ STACK[0x2230] ^ LODWORD(STACK[0x2110]) ^ LODWORD(STACK[0x2240]) ^ LODWORD(STACK[0x2148]) ^ LODWORD(STACK[0x22B8]);
  v654 = LODWORD(STACK[0x2178]) ^ LODWORD(STACK[0x1FC0]) ^ LODWORD(STACK[0x2130]) ^ STACK[0x22F0] ^ LODWORD(STACK[0x21C0]) ^ LODWORD(STACK[0x1EF8]) ^ LODWORD(STACK[0x20F0]) ^ LODWORD(STACK[0x1F00]) ^ (v653 - 526630718 - ((2 * v653) & 0xC1388184)) ^ (((STACK[0x22A8] & (v580 ^ ((v580 & STACK[0x20A0]) >> 1))) >> STACK[0x2200]) | ((STACK[0x2250] & (v580 ^ ((v580 & STACK[0x20A0]) >> 1))) << STACK[0x2298]));
  v655 = LODWORD(STACK[0x2238]) ^ ((STACK[0x2238] & LODWORD(STACK[0x22B0])) >> 1);
  v656 = v641 + 1639930558 - ((2 * v641) & 0xC37EB57C);
  v657 = LODWORD(STACK[0x2158]) ^ ((STACK[0x2158] & LODWORD(STACK[0x20A0])) >> 1);
  v658 = ((STACK[0x22C8] & v655) << STACK[0x21E8]) | ((STACK[0x22C0] & v655) >> STACK[0x21E0]);
  v659 = LODWORD(STACK[0x2138]) ^ ((STACK[0x2138] & LODWORD(STACK[0x20A0])) >> 1);
  v660 = (((STACK[0x22A8] & v657) >> STACK[0x2200]) | ((STACK[0x2250] & v657) << STACK[0x2298])) ^ (((STACK[0x22C8] & v659) << STACK[0x2298]) + ((STACK[0x22A8] & v659) >> STACK[0x2200])) ^ __ROR4__(((v658 >> 9) | (v658 << 23)) ^ __ROR4__((v654 + 1639930558 - ((2 * v654) & 0xC37EB57C)) ^ LODWORD(STACK[0x2220]), 9) ^ 0xE792F72, 23) ^ 0xF25EE41C;
  LODWORD(v658) = (v656 ^ LODWORD(STACK[0x2220])) - 840343674 - ((2 * (v656 ^ LODWORD(STACK[0x2220]))) & 0x9BD2BF0C);
  v661 = ((v649 ^ v660) + 1639930558 - ((2 * (v649 ^ v660)) & 0xC37EB57C)) ^ LODWORD(STACK[0x2220]);
  v662 = LODWORD(STACK[0x20F8]) ^ 0xCB4A035B ^ v660 ^ v658;
  v663 = LODWORD(STACK[0x20F8]) ^ 0xCB4A035B ^ (v661 - 840343674 - ((2 * v661) & 0x9BD2BF0C));
  v664 = ((v660 ^ (1115418769 * (v634 ^ 0x9BC2D1A6)) ^ v638 ^ v652) + 1639930558 - ((2 * (v660 ^ (1115418769 * (v634 ^ 0x9BC2D1A6)) ^ v638 ^ v652)) & 0xC37EB57C)) ^ LODWORD(STACK[0x2220]);
  v665 = v660 ^ LODWORD(STACK[0x20F8]) ^ (v651 - 840343674 - ((2 * v651) & 0x9BD2BF0C));
  v666 = LODWORD(STACK[0x20F8]) ^ 0x5088D2FD ^ (v664 - 840343674 - ((2 * v664) & 0x9BD2BF0C));
  v667 = LODWORD(STACK[0x2220]) ^ 0x5088D2FD ^ (v665 + 1639930558 - ((2 * v665) & 0xC37EB57C));
  LODWORD(STACK[0x22F0]) = v667 + 1883038075;
  v668 = v667;
  LODWORD(STACK[0x22C8]) = v667;
  v669 = (v667 + 1883038075) ^ v662;
  LODWORD(STACK[0x22A8]) = v662;
  v670 = v669 ^ 0x4EA8A659;
  v671 = STACK[0x1F60];
  HIDWORD(v672) = *(STACK[0x1F60] + ((((v669 ^ 0x4EA8A659u) >> 24) + 124) ^ 0x26));
  LODWORD(v672) = (HIDWORD(v672) ^ 0xAAAAAAAA) << 24;
  LODWORD(STACK[0x22E0]) = v663 + 1162603949;
  v673 = v663;
  LODWORD(STACK[0x22B0]) = v663;
  LODWORD(STACK[0x22C0]) = v666;
  v674 = v666 ^ (v663 + 1162603949);
  v675 = v674 ^ 0x283A24B5;
  v676 = STACK[0x1F38];
  LOBYTE(v667) = *(STACK[0x1F38] + ((((v669 ^ 0x4EA8A659) & 0x62200A5D ^ 0xDDDDDDDD) + ((v669 ^ 0x4EA8A659) & 0x62200A5D)) & 0x6BLL ^ 0xBDD) + (((v674 ^ 0x283A24B5u) >> 24) ^ 0x12));
  LODWORD(STACK[0x22B8]) = v666 - 699883791;
  v677 = (v666 - 699883791) ^ v668;
  v678 = STACK[0x22D0];
  v679 = *STACK[0x22D0] & 0x5167F4C8;
  v680 = STACK[0x1DD0];
  v681 = *STACK[0x22E8];
  v682 = STACK[0x22E8];
  LODWORD(v658) = -812407749 * ((*(v681 + v679) ^ (STACK[0x1DD0] + 12)) & 0x7FFFFFFF);
  v683 = -812407749 * (v658 ^ WORD1(v658));
  v684 = STACK[0x1E98];
  v685 = STACK[0x1E90];
  v686 = STACK[0x1EA0];
  *(v680 + 12) = v667 ^ *(STACK[0x1E98] + (v683 >> 24)) ^ *((v683 >> 24) + STACK[0x1E90] + 3) ^ *(STACK[0x1EA0] + (v683 >> 24)) ^ v683 ^ (-23 * BYTE3(v683)) ^ (((v674 ^ 0x283A24B5u) >> 24) - (((v674 ^ 0x283A24B5u) >> 23) & 0x50) - 88) ^ 0x1A;
  v687 = -812407749 * ((*(v681 + v679) ^ (v680 + 8)) & 0x7FFFFFFF);
  v688 = -812407749 * (v687 ^ HIWORD(v687));
  v689 = (*(v676 + 2693 + (HIBYTE(v677) ^ 0xD4)) ^ 0xA8) + 13;
  *(v680 + 8) = *(v684 + (v688 >> 24)) ^ *((v688 >> 24) + v685 + 3) ^ v689 ^ *(v686 + (v688 >> 24)) ^ ((16 * v689) | 0x60) ^ v688 ^ (-23 * BYTE3(v688)) ^ 0x87;
  LODWORD(v688) = -812407749 * ((*(v681 + v679) ^ (v680 + 4)) & 0x7FFFFFFF);
  v690 = -812407749 * (v688 ^ WORD1(v688));
  v691 = (*(v676 + 2693 + (((v672 >> 26) ^ (2 * (v672 >> 26)) & 0x56) ^ 1u)) ^ 0xA8) + 13;
  *(v680 + 4) = *(v684 + (v690 >> 24)) ^ *((v690 >> 24) + v685 + 3) ^ v691 ^ *(v686 + (v690 >> 24)) ^ ((16 * v691) | 0x60) ^ v690 ^ (-23 * BYTE3(v690)) ^ 0xB7;
  LODWORD(v690) = *(*v682 + (*v678 & 0x5167F4C8));
  LODWORD(STACK[0x22A0]) = v662 + 1862293145;
  v692 = v673 ^ (v662 + 1862293145);
  v693 = -812407749 * ((-812407749 * ((v690 ^ (v680 + 3)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v690 ^ (v680 + 3)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v679) = v692 ^ 0x5E49F391;
  *(v680 + 3) = *(v676 + 2964 + ((v673 ^ (v662 - 103)) ^ 0x83)) ^ *(v684 + (v693 >> 24)) ^ *((v693 >> 24) + v685 + 3) ^ *(v686 + (v693 >> 24)) ^ v693 ^ (-23 * BYTE3(v693)) ^ ((v673 ^ (v662 - 103) ^ 0x91) + (~(2 * (v673 ^ (v662 - 103) ^ 0x91)) | 0xAF) - 87) ^ 0xF7;
  v694 = *v678 & 0x5167F4C8;
  LOBYTE(v669) = (*(v676 + 2693 + (v669 ^ 0x26)) ^ 0xA8) + 13;
  LODWORD(v693) = -812407749 * ((*(*v682 + v694) ^ (v680 + 7)) & 0x7FFFFFFF);
  v695 = -812407749 * (v693 ^ WORD1(v693));
  *(v680 + 7) = v669 ^ *(v684 + (v695 >> 24)) ^ *((v695 >> 24) + v685 + 3) ^ ((16 * v669) | 0x60) ^ *(v686 + (v695 >> 24)) ^ v695 ^ (-23 * BYTE3(v695)) ^ 0x5B;
  v696 = *v682;
  v697 = -812407749 * ((*(*v682 + v694) ^ (v680 + 14)) & 0x7FFFFFFF);
  v698 = -812407749 * (v697 ^ HIWORD(v697));
  *(v680 + 14) = *(v676 + 2964 + (((v674 ^ 0x24B5) >> 8) ^ 0x12)) ^ *(v684 + (v698 >> 24)) ^ *((v698 >> 24) + v685 + 3) ^ *(v686 + (v698 >> 24)) ^ v698 ^ (-23 * BYTE3(v698)) ^ (((v674 ^ 0x24B5) >> 8) - (((v674 ^ 0x283A24B5u) >> 7) & 0x50) - 88) ^ 7;
  LODWORD(v698) = -812407749 * ((*(v696 + v694) ^ (v680 + 5)) & 0x7FFFFFFF);
  v699 = -812407749 * (v698 ^ WORD1(v698));
  *(v680 + 5) = *(v676 + 2964 + (BYTE2(v670) ^ 0x12)) ^ *(v684 + (v699 >> 24)) ^ *((v699 >> 24) + v685 + 3) ^ *(v686 + (v699 >> 24)) ^ v699 ^ (-23 * BYTE3(v699)) ^ (BYTE2(v670) - ((v670 >> 15) & 0x50) - 88) ^ 0x4A;
  v700 = v674 ^ 0xA7;
  v701 = *v678 & 0x5167F4C8;
  v702 = *v682;
  LODWORD(v699) = -812407749 * ((*(*v682 + v701) ^ (v680 + 15)) & 0x7FFFFFFF);
  v703 = -812407749 * (v699 ^ WORD1(v699));
  *(v680 + 15) = *(v676 + 2964 + v700) ^ *(v684 + (v703 >> 24)) ^ *((v703 >> 24) + v685 + 3) ^ *(v686 + (v703 >> 24)) ^ v703 ^ (-23 * BYTE3(v703)) ^ (v675 - ((2 * v675) & 0x50) - 88) ^ 0x2F;
  LODWORD(v701) = -812407749 * ((*(v702 + v701) ^ (v680 + 1)) & 0x7FFFFFFF);
  v704 = -812407749 * (v701 ^ WORD1(v701));
  LOBYTE(v700) = (*(v676 + 2693 + (BYTE2(v692) ^ 0x36)) ^ 0xA8) + 13;
  *(v680 + 1) = *(v684 + (v704 >> 24)) ^ *((v704 >> 24) + v685 + 3) ^ v700 ^ *(v686 + (v704 >> 24)) ^ ((16 * v700) | 0x60) ^ v704 ^ (-23 * BYTE3(v704)) ^ 0xD2;
  HIDWORD(v672) = *(v671 + (((v677 ^ 0xB4) + 124) ^ 0x26));
  LODWORD(v672) = (HIDWORD(v672) ^ 0xAAAAAAAA) << 24;
  LODWORD(v700) = v672 >> 26;
  LOBYTE(v704) = 2 * v700;
  LOBYTE(v700) = (2 * v700) & 0x56 ^ v700;
  v705 = v700 ^ 0x86;
  LOBYTE(v700) = v700 - (v704 & 0x50);
  v706 = *v678 & 0x5167F4C8;
  v707 = *v682;
  LODWORD(v704) = -812407749 * ((*(*v682 + v706) ^ (v680 + 11)) & 0x7FFFFFFF);
  v708 = -812407749 * (v704 ^ WORD1(v704));
  *(v680 + 11) = *(v676 + 2964 + v705) ^ *(v684 + (v708 >> 24)) ^ (v700 - 88) ^ *((v708 >> 24) + v685 + 3) ^ *(v686 + (v708 >> 24)) ^ v708 ^ (-23 * BYTE3(v708)) ^ 0x22;
  v709 = HIBYTE(v692) ^ 0x21;
  LODWORD(v683) = -812407749 * ((*(v707 + v706) ^ (v680 + 13)) & 0x7FFFFFFF);
  v710 = -812407749 * (v683 ^ WORD1(v683));
  v711 = STACK[0x1E58];
  v712 = STACK[0x1E60];
  v713 = STACK[0x1E50];
  *(v680 + 13) = *(v676 + 2964 + (BYTE2(v675) ^ 0x12)) ^ *(STACK[0x1E58] + (v710 >> 24)) ^ *(STACK[0x1E60] + (v710 >> 24) + 1) ^ *(STACK[0x1E50] + (v710 >> 24) + 1) ^ v710 ^ (-123 * BYTE3(v710)) ^ (BYTE2(v675) - ((v675 >> 15) & 0x50) - 88) ^ 0x7D;
  LODWORD(v700) = (((v677 ^ 0xAB5BC6B4) >> 16) - (((v677 ^ 0xAB5BC6B4) >> 15) & 0x50) - 88) ^ *(v676 + 2964 + (((v677 ^ 0xAB5BC6B4) >> 16) ^ 0x12));
  LOBYTE(v692) = v700 ^ 0x91;
  LOWORD(v700) = (((v700 ^ 0xFF91) & 0x9D) + ((v700 ^ 0xC) & 0x9D)) | 0xA8;
  HIDWORD(v672) = *(STACK[0x2218] + (v700 & 0x8F ^ v692 & 0xCF | v700 & 0x130 ^ v692 & 0x30));
  LODWORD(v672) = ((((8 * HIDWORD(v672)) ^ 0x40) - ((16 * HIDWORD(v672)) & 0x55555555) - 88) ^ HIDWORD(v672)) << 24;
  v714 = *v678 & 0x5167F4C8;
  v715 = *v682;
  LODWORD(v705) = -812407749 * ((*(*v682 + v714) ^ (v680 + 9)) & 0x7FFFFFFF);
  v716 = -812407749 * (v705 ^ WORD1(v705));
  *(v680 + 9) = *(v711 + (v716 >> 24)) ^ *(v712 + (v716 >> 24) + 1) ^ *(v713 + (v716 >> 24) + 1) ^ v716 ^ (-123 * BYTE3(v716)) ^ 0xEC ^ (v672 >> 25);
  LODWORD(v700) = -812407749 * ((*(v715 + v714) ^ (v680 + 6)) & 0x7FFFFFFF);
  v717 = -812407749 * (v700 ^ WORD1(v700));
  LOBYTE(v670) = (*(v676 + 2693 + (BYTE1(v670) ^ 0x7FLL)) ^ 0xA8) + 13;
  *(v680 + 6) = *(v711 + (v717 >> 24)) ^ *(v712 + (v717 >> 24) + 1) ^ v670 ^ *(v713 + (v717 >> 24) + 1) ^ ((16 * v670) | 0x60) ^ v717 ^ (-123 * BYTE3(v717)) ^ 0xF4;
  LOBYTE(v717) = (BYTE1(v679) - ((v679 >> 7) & 0x50) - 88) ^ *(v676 + 2964 + (BYTE1(v679) ^ 0x12));
  LODWORD(v679) = -812407749 * ((*(*v682 + v714) ^ (v680 + 2)) & 0x7FFFFFFF);
  v718 = -812407749 * (v679 ^ WORD1(v679));
  *(v680 + 2) = v717 ^ 0xFC ^ *(v711 + (v718 >> 24)) ^ *(v712 + (v718 >> 24) + 1) ^ *(v713 + (v718 >> 24) + 1) ^ v718 ^ (-123 * BYTE3(v718));
  LODWORD(v717) = (*(v676 + 2693 + ((((v717 ^ 0xFC) & 0x7F) + (v717 & 0x7F ^ 3)) ^ ((v677 ^ 0xC6B4) >> 8))) ^ 0xFFFFFFA8) + 13;
  LODWORD(v717) = ((16 * v717) | 0x60) ^ v717;
  v719 = (v717 >> 7) & 1 | (2 * v717);
  LOBYTE(v718) = *(STACK[0x2208] + (v719 ^ 0xDE) - 2 * ((v719 ^ 0xFFFFFFDE) & 0x9F) + 159);
  LOBYTE(v717) = (v719 - ((4 * v717) & 0x50) - 88) ^ 0x53;
  v720 = *v678 & 0x5167F4C8;
  v721 = *v682;
  LODWORD(v714) = -812407749 * ((*(*v682 + v720) ^ (v680 + 10)) & 0x7FFFFFFF);
  v722 = -812407749 * (v714 ^ WORD1(v714));
  *(v680 + 10) = *(v711 + (v722 >> 24)) ^ *(v712 + (v722 >> 24) + 1) ^ *(v713 + (v722 >> 24) + 1) ^ v722 ^ (-123 * BYTE3(v722)) ^ 0xD7 ^ ((v718 ^ v717) - 55);
  LODWORD(v717) = -812407749 * ((*(v721 + v720) ^ v680) & 0x7FFFFFFF);
  v723 = -812407749 * (v717 ^ WORD1(v717));
  *v680 = *(v711 + (v723 >> 24)) ^ *(v712 + (v723 >> 24) + 1) ^ ((*(v676 + 2693 + v709) ^ 0xA8) + 13) ^ *(v713 + (v723 >> 24) + 1) ^ ((16 * ((*(v676 + 2693 + v709) ^ 0xA8) + 13)) | 0x60) ^ v723 ^ (-123 * BYTE3(v723)) ^ 5;
  v724 = LODWORD(STACK[0x22C0]) - ((2 * LODWORD(STACK[0x22B8])) & 0xDC0BE894) - 1001483461;
  v725 = LODWORD(STACK[0x22C8]) - ((2 * LODWORD(STACK[0x22F0])) & 0xDC0BE894) + 1581438405;
  v726 = STACK[0x1E10];
  HIDWORD(v672) = LODWORD(STACK[0x1E10]) ^ 0x4EC993;
  LODWORD(v672) = LODWORD(STACK[0x1E10]) ^ 0x41000000;
  v727 = LODWORD(STACK[0x22B0]) - ((2 * LODWORD(STACK[0x22E0])) & 0xDC0BE894) + 861004279;
  v728 = HIWORD(LODWORD(STACK[0x1E10])) ^ 0x414E;
  v729 = (v672 >> 24) ^ (v726 >> 8) ^ (v728 | (v726 << 16));
  v730 = v726 ^ (v726 << 24) ^ LODWORD(STACK[0x1E00]) ^ 0x93000000 ^ ((v729 ^ 0xC9D24EC9) + 1095678557 - 2 * ((v729 ^ 0xC9D24EC9) & 0x414EC997 ^ v729 & 4) + 3894);
  v731 = v730 ^ (LODWORD(STACK[0x22A8]) - ((2 * LODWORD(STACK[0x22A0])) & 0xDC0BE894) + 1560693475);
  LODWORD(STACK[0x22E0]) = v731;
  LODWORD(v681) = v730 ^ v724;
  LODWORD(v712) = v730 ^ v727;
  v732 = v730 ^ 0xCA99A169 ^ v725;
  LOBYTE(v724) = v712 ^ 0x2E;
  LOBYTE(v723) = *(v676 + 2693 + (HIBYTE(v731) ^ 0x8DLL));
  LODWORD(STACK[0x22F0]) = v728 & 0x40B;
  v733 = *v678 & 0x5167F4C8;
  v734 = v682;
  v735 = *v682;
  v736 = *(*v682 + v733);
  v737 = STACK[0x1DD8];
  v738 = -812407749 * ((-812407749 * ((v736 ^ v737) & 0x7FFFFFFF)) ^ ((-812407749 * ((v736 ^ v737) & 0x7FFFFFFF)) >> 16));
  v739 = STACK[0x1E48];
  v740 = STACK[0x1E38];
  v741 = STACK[0x1E40];
  *v737 = ((v723 ^ 0xA8) + 13) ^ *(STACK[0x1E48] + (v738 >> 24)) ^ *(STACK[0x1E38] + (v738 >> 24) + 1) ^ ((16 * ((v723 ^ 0xA8) + 13)) | 0x60) ^ *(STACK[0x1E40] + (v738 >> 24) + 1) ^ v738 ^ (69 * BYTE3(v738)) ^ 0xAD;
  v742 = STACK[0x630];
  LODWORD(v723) = -812407749 * ((*(v735 + v733) ^ (STACK[0x630] + 678)) & 0x7FFFFFFF);
  v743 = -812407749 * (v723 ^ WORD1(v723));
  LOBYTE(v707) = (*(v676 + 2693 + (BYTE2(v732) ^ 0x7FLL)) ^ 0xA8) + 13;
  v742[678] = *(v739 + (v743 >> 24)) ^ *(v740 + (v743 >> 24) + 1) ^ v707 ^ *(v741 + (v743 >> 24) + 1) ^ ((16 * v707) | 0x60) ^ v743 ^ (69 * BYTE3(v743)) ^ 0xA8;
  LODWORD(v743) = -812407749 * ((*(v735 + v733) ^ (v742 + 682)) & 0x7FFFFFFF);
  v744 = -812407749 * (v743 ^ WORD1(v743));
  LODWORD(v733) = v681 ^ 0x917D9DF2;
  LOBYTE(v681) = (*(v676 + 2693 + (BYTE2(v681) ^ 2)) ^ 0xA8) + 13;
  v742[682] = *(v739 + (v744 >> 24)) ^ *(v740 + (v744 >> 24) + 1) ^ v681 ^ *(v741 + (v744 >> 24) + 1) ^ ((16 * v681) | 0x60) ^ v744 ^ (69 * BYTE3(v744)) ^ 0xF0;
  v745 = *v678 & 0x5167F4C8;
  v746 = *v734;
  LODWORD(v744) = -812407749 * ((*(*v734 + v745) ^ (v742 + 688)) & 0x7FFFFFFF);
  v747 = -812407749 * (v744 ^ WORD1(v744));
  v742[688] = ((*(v676 + 2693 + (v712 ^ 0x51)) ^ 0xA8) + 13) ^ *(v739 + (v747 >> 24)) ^ *(v740 + (v747 >> 24) + 1) ^ ((16 * ((*(v676 + 2693 + (v712 ^ 0x51)) ^ 0xA8) + 13)) | 0x60) ^ *(v741 + (v747 >> 24) + 1) ^ v747 ^ (69 * BYTE3(v747)) ^ 0x66;
  LODWORD(v747) = -812407749 * ((*(v746 + v745) ^ (v742 + 685)) & 0x7FFFFFFF);
  v748 = -812407749 * (v747 ^ WORD1(v747));
  v742[685] = (((v712 ^ 0x200A6B2E) >> 24) - (((v712 ^ 0x200A6B2E) >> 23) & 0x50) - 88) ^ *(v739 + (v748 >> 24)) ^ *(v740 + (v748 >> 24) + 1) ^ *(v741 + (v748 >> 24) + 1) ^ v748 ^ (69 * BYTE3(v748)) ^ *(v676 + 2964 + (((v712 ^ 0x200A6B2E) >> 24) ^ 0x12)) ^ 0x64;
  LODWORD(v748) = -812407749 * ((*(v746 + v745) ^ (v742 + 687)) & 0x7FFFFFFF);
  v749 = -812407749 * (v748 ^ WORD1(v748));
  v750 = (v749 >> 24) + 1;
  LOBYTE(v745) = *(v739 + (v749 >> 24)) ^ *(v740 + v750);
  STACK[0x2298] = v676 + 2693;
  v742[687] = v745 ^ ((*(v676 + 2693 + (BYTE1(v712) ^ 0x14)) ^ 0xA8) + 13) ^ *(v741 + v750) ^ ((16 * ((*(v676 + 2693 + (BYTE1(v712) ^ 0x14)) ^ 0xA8) + 13)) | 0x60) ^ v749 ^ (69 * BYTE3(v749)) ^ 0x85;
  v751 = *v678 & 0x5167F4C8;
  v752 = *v734;
  LODWORD(v718) = -812407749 * ((*(*v734 + v751) ^ (v742 + 676)) & 0x7FFFFFFF);
  v753 = -812407749 * (v718 ^ WORD1(v718));
  v742[676] = ((*(v676 + 2693 + (v731 ^ 0xB3)) ^ 0xA8) + 13) ^ *(v739 + (v753 >> 24)) ^ *(v740 + (v753 >> 24) + 1) ^ ((16 * ((*(v676 + 2693 + (v731 ^ 0xB3)) ^ 0xA8) + 13)) | 0x60) ^ *(v741 + (v753 >> 24) + 1) ^ v753 ^ (69 * BYTE3(v753)) ^ 0xCF;
  LODWORD(v751) = -812407749 * ((*(v752 + v751) ^ (v742 + 686)) & 0x7FFFFFFF);
  v754 = -812407749 * (v751 ^ WORD1(v751));
  v742[686] = (((v712 ^ 0x200A6B2E) >> 16) - (((v712 ^ 0x200A6B2E) >> 15) & 0x50) - 88) ^ *(v739 + (v754 >> 24)) ^ *(v740 + (v754 >> 24) + 1) ^ *(v741 + (v754 >> 24) + 1) ^ v754 ^ (69 * BYTE3(v754)) ^ *(v676 + 2964 + (((v712 ^ 0x200A6B2E) >> 16) ^ 0x12)) ^ 0xBD;
  v755 = STACK[0x1E68];
  v756 = *(STACK[0x1E68] + ((BYTE3(v733) + 124) ^ 0xD9));
  LODWORD(v712) = *(v676 + 2964 + (v756 ^ 0xDB));
  HIDWORD(v672) = ((v756 ^ 0x58) - 2 * ((v756 ^ 0x58) & 0xD ^ v756 & 5) + 8) ^ v712;
  LODWORD(v672) = (((v756 ^ 0x58) - 2 * ((v756 ^ 0x58) & 0x2E ^ v756 & 6) - 88) ^ v712) << 24;
  v757 = *v678 & 0x5167F4C8;
  v758 = *v734;
  v759 = v734;
  LODWORD(v753) = -812407749 * ((*(*v734 + v757) ^ (v742 + 681)) & 0x7FFFFFFF);
  v760 = -812407749 * (v753 ^ WORD1(v753));
  v742[681] = *(v739 + (v760 >> 24)) ^ *(v740 + (v760 >> 24) + 1) ^ *(v741 + (v760 >> 24) + 1) ^ v760 ^ (69 * BYTE3(v760)) ^ ((((v672 >> 29) ^ 0xEC) >> 3) | (32 * ((v672 >> 29) ^ 0xEC))) ^ 0x3E;
  v761 = &v737[((LODWORD(STACK[0x22F0]) ^ 0xFB) + LODWORD(STACK[0x22F0])) & 0xF];
  LODWORD(v760) = -812407749 * ((*(v758 + v757) ^ v761) & 0x7FFFFFFF);
  v762 = -812407749 * (v760 ^ WORD1(v760));
  v763 = STACK[0x1E60];
  *v761 = (v733 - ((2 * v733) & 0x50) - 88) ^ *(v739 + (v762 >> 24)) ^ *(v740 + (v762 >> 24) + 1) ^ *(v741 + (v762 >> 24) + 1) ^ v762 ^ (69 * BYTE3(v762)) ^ *(v676 + 2964 + (v733 ^ 0x12)) ^ 0x1C;
  v764 = LODWORD(STACK[0x22E0]) ^ 0xF23AD5CC;
  LODWORD(v757) = -812407749 * ((*(v758 + v757) ^ (v742 + 677)) & 0x7FFFFFFF);
  v765 = -812407749 * (v757 ^ WORD1(v757));
  v742[677] = *(v755 + ((((HIBYTE(v732) + (~(v732 >> 23) | 0xAF) - 87) ^ *(v676 + 2964 + (HIBYTE(v732) ^ 0x12)) ^ 0x66) + 124) ^ 0xD9)) ^ *(v739 + (v765 >> 24)) ^ *(v740 + (v765 >> 24) + 1) ^ *(v741 + (v765 >> 24) + 1) ^ v765 ^ (69 * BYTE3(v765)) ^ 0x6A;
  v766 = *v734;
  v767 = *v678 & 0x5167F4C8;
  LODWORD(v734) = -812407749 * ((*(*v734 + v767) ^ (v742 + 679)) & 0x7FFFFFFF);
  v768 = -812407749 * (v734 ^ (v734 >> 16));
  v742[679] = (v732 >> ((v724 & 8 ^ 8) + (v724 & 8))) ^ *(v711 + (v768 >> 24)) ^ *(v763 + (v768 >> 24) + 1) ^ *(v713 + (v768 >> 24) + 1) ^ v768 ^ (-123 * BYTE3(v768)) ^ 0x7D ^ *(v676 + 2964 + ((v732 >> ((v724 & 8 ^ 8) + (v724 & 8))) ^ 0x12));
  LOBYTE(v761) = *(v676 + 2964 + (BYTE1(v733) ^ 0x12));
  LOBYTE(v686) = BYTE1(v733) - ((v733 >> 7) & 0x50) - 88;
  LODWORD(v733) = -812407749 * ((*(v766 + v767) ^ (v742 + 683)) & 0x7FFFFFFF);
  v769 = -812407749 * (v733 ^ WORD1(v733));
  v742[683] = v686 ^ *(v711 + (v769 >> 24)) ^ *(v763 + (v769 >> 24) + 1) ^ *(v713 + (v769 >> 24) + 1) ^ v769 ^ (-123 * BYTE3(v769)) ^ v761 ^ 0xBF;
  v770 = STACK[0x2258];
  LODWORD(v740) = -812407749 * ((*(v766 + v767) ^ (v742 + 680)) & 0x7FFFFFFF);
  v771 = -812407749 * (v740 ^ WORD1(v740));
  v742[680] = (v732 - ((2 * v732) & 0x50) - 88) ^ *(v711 + (v771 >> 24)) ^ *(v763 + (v771 >> 24) + 1) ^ *(v713 + (v771 >> 24) + 1) ^ v771 ^ (-123 * BYTE3(v771)) ^ *(v676 + 2964 + (v732 ^ 0x12)) ^ 0x18;
  HIDWORD(v672) = *(STACK[0x2218] + (BYTE1(v764) ^ 0xC6));
  LODWORD(v672) = ((((8 * HIDWORD(v672)) ^ 0x40) - ((16 * HIDWORD(v672)) & 0x55555555) - 88) ^ HIDWORD(v672)) << 24;
  v772 = STACK[0x2298];
  v773 = BYTE2(v764) ^ 0x7FLL;
  LOBYTE(v686) = (*(STACK[0x2298] + ((v672 >> 25) ^ 0x79)) ^ 0xA8) + 13;
  LODWORD(v771) = *v678;
  v774 = *v759;
  v775 = -812407749 * ((*(*v759 + (*v678 & 0x5167F4C8)) ^ (v742 + 675)) & 0x7FFFFFFF);
  v776 = -812407749 * (v775 ^ HIWORD(v775));
  v742[675] = v686 ^ *(v711 + (v776 >> 24)) ^ *(v763 + (v776 >> 24) + 1) ^ ((16 * v686) | 0x60) ^ *(v713 + (v776 >> 24) + 1) ^ v776 ^ (-123 * BYTE3(v776)) ^ 0x4B;
  LODWORD(v686) = -812407749 * ((*(v774 + (v771 & 0x5167F4C8)) ^ (v742 + 674)) & 0x7FFFFFFF);
  v777 = -812407749 * (v686 ^ WORD1(v686));
  v742[674] = *(v711 + (v777 >> 24)) ^ *(v763 + (v777 >> 24) + 1) ^ ((*(v772 + v773) ^ 0xA8) + 13) ^ *(v713 + (v777 >> 24) + 1) ^ ((16 * ((*(v772 + v773) ^ 0xA8) + 13)) | 0x60) ^ v777 ^ (-123 * BYTE3(v777)) ^ 0x92;
  LODWORD(v762) = STACK[0x20D8];
  v778 = STACK[0x22F8];
  v779 = STACK[0x640];
  v780 = -812407749 * (((&STACK[0x2000] + 5414) ^ *(v774 + (v771 & 0x38F3A374))) & 0x7FFFFFFF);
  v781 = -812407749 * ((v780 >> (((LODWORD(STACK[0x20D8]) - 30) & 0xEB) + 37)) ^ v780);
  *(STACK[0x7F0] + v770) = *(*(&off_279CA5FD0 + (LODWORD(STACK[0x20D8]) ^ 0x81C)) + (v781 >> 24) - 12) ^ *(*(&off_279CA5FD0 + LODWORD(STACK[0x20D8]) - 1885) + (v781 >> 24) - 12) ^ *(*(&off_279CA5FD0 + LODWORD(STACK[0x20D8]) - 1903) + (v781 >> 24) + 2) ^ v781 ^ (-109 * BYTE3(v781));
  return (*(v778 + 8 * ((59 * (v770 == 15)) ^ v762)))();
}

void sub_26AA4D6C0()
{
  v0 = (LODWORD(STACK[0x2248]) - 431);
  v1 = LODWORD(STACK[0x20C8]);
  v2 = LODWORD(STACK[0x2178]);
  v3 = LODWORD(STACK[0x2260]);
  v4 = LODWORD(STACK[0x22C0]);
  v5 = LODWORD(STACK[0x2238]);
  v6 = LODWORD(STACK[0x2190]);
  v7 = LODWORD(STACK[0x20F0]);
  v8 = LODWORD(STACK[0x2110]);
  v9 = LODWORD(STACK[0x2140]);
  v10 = STACK[0x2198];
  v11 = LODWORD(STACK[0x2138]);
  v12 = LODWORD(STACK[0x2108]);
  v13 = LODWORD(STACK[0x1F98]);
  v14 = LODWORD(STACK[0x1FA0]);
  v15 = LODWORD(STACK[0x2228]);
  v16 = LODWORD(STACK[0x2008]);
  JUMPOUT(0x26AA4D708);
}

uint64_t sub_26AA4E88C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x1FC8]) = a2;
  LODWORD(STACK[0x1FC0]) = v8;
  v12 = *(a6 + 4 * (STACK[0x1F48] ^ 0xA8u));
  v13 = *(a6 + 4 * (LODWORD(STACK[0x1F70]) ^ 0xA1u));
  v14 = *(a6 + 4 * v7);
  v15 = *(a6 + 4 * BYTE2(v9)) ^ __ROR4__(*(a6 + 4 * HIBYTE(v11)), 8) ^ __ROR4__(*(a6 + 4 * (LODWORD(STACK[0x2200]) ^ 0xA8u)), 16) ^ (v13 >> (v6 ^ 0x43)) ^ (v13 << 8);
  LODWORD(STACK[0x2180]) = *(a6 + 4 * (STACK[0x21F0] ^ 0xA8u));
  v16 = *(STACK[0x1F10] + (((v14 >> 23) & 0xFE | (v14 >> 31)) ^ 0xBLL)) ^ 0xB5;
  return (*(v10 + 8 * ((55 * (((v16 - 55) | (v16 - 2)) != 0)) ^ v6)))();
}

void sub_26AA4E978(int a1@<W8>)
{
  v2 = a1 + 1358;
  LODWORD(STACK[0x2248]) = LODWORD(STACK[0x20C8]) >> 1;
  STACK[0x2200] = LODWORD(STACK[0x1EC0]) ^ 0xD2u;
  v3 = LODWORD(STACK[0x22C0]) ^ 0x1E20AA98;
  LODWORD(STACK[0x20D8]) = v2;
  STACK[0x22C8] = v3 ^ v2;
  STACK[0x21E8] = LODWORD(STACK[0x1F20]) ^ 0x7Cu;
  LODWORD(STACK[0x2228]) = v1 >> 1;
  STACK[0x2298] = LODWORD(STACK[0x1EC8]) ^ 0x68u;
  STACK[0x21E0] = (LODWORD(STACK[0x2038]) + 6);
  v4 = LODWORD(STACK[0x2170]);
  STACK[0x21F0] = LODWORD(STACK[0x2170]) ^ 0xBDu;
  v5 = LODWORD(STACK[0x2270]);
  STACK[0x1FD8] = LODWORD(STACK[0x2270]) ^ 0x39u;
  LODWORD(STACK[0x22A8]) = LODWORD(STACK[0x2288]) ^ 0xDA224EA6;
  STACK[0x2250] = LODWORD(STACK[0x2278]) ^ 0x22345E8u;
  STACK[0x1FB8] = LODWORD(STACK[0x2168]);
  v6 = LODWORD(STACK[0x21D0]);
  v7 = LODWORD(STACK[0x1E18]);
  v8 = LODWORD(STACK[0x1E08]);
  v9 = LODWORD(STACK[0x1F08]);
  v10 = STACK[0x2240];
  v11 = LODWORD(STACK[0x21B0]);
  v12 = LODWORD(STACK[0x1DE0]);
  v13 = LODWORD(STACK[0x2078]);
  v14 = LODWORD(STACK[0x20B0]);
  v15 = LODWORD(STACK[0x1F28]);
  v16 = LODWORD(STACK[0x1ED0]);
  v17 = LODWORD(STACK[0x1F40]);
  v18 = LODWORD(STACK[0x2020]);
  v19 = LODWORD(STACK[0x2258]);
  v20 = LODWORD(STACK[0x2080]);
  v21 = STACK[0x20A0];
  v22 = STACK[0x2018];
  v23 = LODWORD(STACK[0x1EF0]);
  JUMPOUT(0x26AA4EAC0);
}

uint64_t sub_26AA52CCC@<X0>(unint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _BYTE *a22)
{
  STACK[0x22F0] = a1;
  v30 = v24 - 35;
  v31 = *(v22 + a2) ^ (&STACK[0x2000] + 5414);
  v32 = (((v31 & (v30 ^ 0x7FFFF137)) * v25) ^ (((v31 & (v30 ^ 0x7FFFF137)) * v25) >> 16)) * v25;
  v33 = ((*(v22 + ((v30 - 1972596196) & v23)) ^ ((&STACK[0x2000] + 12224) | 9)) & 0x7FFFFFFF) * v25;
  v34 = (v33 ^ HIWORD(v33)) * v25;
  v35 = -109 * (((((v31 & (v30 ^ 0x7FFFF137)) * v25) ^ (((v31 & (v30 ^ 0x7FFFF137)) * v25) >> 16)) * v25) >> 24);
  v36 = (((v31 & 0x7FFFFFFF) * v25) ^ (((v31 & 0x7FFFFFFF) * v25) >> 16)) * v25;
  *v27 ^= *a22 ^ *(v28 + (v32 >> 24)) ^ *(v26 + (v32 >> 24)) ^ *((v32 >> 24) + STACK[0x22F0] + 2) ^ *(STACK[0x1FF0] + (v34 >> 24)) ^ *((v34 >> 24) + STACK[0x1FE8] + 1) ^ v32 ^ *(STACK[0x1FE0] + (v34 >> 24)) ^ v35 ^ *(v28 + (v36 >> 24)) ^ *(v26 + (v36 >> 24)) ^ v34 ^ *((v36 >> 24) + STACK[0x22F0] + 2) ^ (121 * BYTE3(v34)) ^ v36 ^ (-109 * BYTE3(v36));
  return (*(v29 + 8 * (v30 ^ 0x23)))(121);
}

uint64_t sub_26AA52E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, _BYTE *a50)
{
  *v55 = 0;
  v56 = v50 ^ 0x76;
  v57 = STACK[0xA50];
  *v57 = 0;
  *(v57 + 8) = 0;
  *(v57 + 16) = 0;
  *(v57 + 24) = 0;
  *(v57 + 28) = 0;
  *(v57 + 30) = 0;
  v58 = ((*(*STACK[0x22E8] + (*v53 & 0x5167F4C8)) ^ a50) & 0x7FFFFFFF) * v52;
  v59 = (v58 ^ HIWORD(v58)) * v52;
  *v51 = *a50 ^ *(STACK[0x1E58] + (v59 >> 24)) ^ *(STACK[0x1E60] + (v59 >> 24) + 1) ^ *(STACK[0x1E50] + (v59 >> 24) + 1) ^ v59 ^ (-123 * BYTE3(v59)) ^ 0xAC;
  return (*(v54 + 8 * (v56 ^ 0x76)))();
}

uint64_t sub_26AA52F18@<X0>(uint64_t a1@<X2>, void *a2@<X3>, unsigned int a3@<W4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>)
{
  v12 = ((*(*a2 + (*v10 & a3)) ^ (a1 + v7)) & (1649 * (a7 ^ 0x73D) + 2147480349)) * v9;
  v13 = (v12 ^ HIWORD(v12)) * v9;
  *(v8 + v7) = *(a1 + v7) ^ *(a5 + (v13 >> 24)) ^ *(a4 + (v13 >> 24) + 1) ^ *(a6 + (v13 >> 24) + 1) ^ v13 ^ (-123 * BYTE3(v13)) ^ 0xAC;
  return (*(v11 + 8 * ((2224 * (v7 == 31)) ^ a7)))();
}

uint64_t sub_26AA52FC4()
{
  STACK[0x22E0] = v1;
  v6 = STACK[0xA50] + 1842;
  v7.n128_u64[0] = 0x5858585858585858;
  v7.n128_u64[1] = 0x5858585858585858;
  v8.n128_u64[0] = 0xACACACACACACACACLL;
  v8.n128_u64[1] = 0xACACACACACACACACLL;
  STACK[0x22C8] = v4;
  v9 = (v2 ^ *(*STACK[0x22E8] + (*v3 & 0x38F3A374))) & 0x7FFFFFFF;
  v10 = -812407749 * (((-812407749 * v9) >> (((((v0 + 106) | 0xA1) + 55) | 0xB) - 31)) ^ (-812407749 * v9));
  return (*(v5 + 8 * ((489 * ((((*(v4 + (v10 >> 24)) ^ *v2 ^ *(STACK[0x22E0] + (v10 >> 24)) ^ *((v10 >> 24) + STACK[0x22F0] + 2) ^ v10 ^ (-109 * BYTE3(v10))) >> 7) & 1) == 0)) ^ ((v0 - 3222) | 0x10A1))))(45, 7824, 3294, 619, 236, 4294967265, 250, 3194292464, v7, v8);
}

uint64_t sub_26AA530F0(char a1)
{
  v5 = ((*(v1 - 1) << (((v4 - 31) | v2) + 46)) + (*v1 >> 1)) ^ v3;
  *v1 = v5 - 2 * (v5 & a1 ^ ((*v1 & 2) != 0)) - 84;
  return (*(STACK[0x22F8] + 8 * (v4 + 3873)))();
}

uint64_t sub_26AA531A4@<X0>(char a1@<W2>, char a2@<W3>, char a3@<W4>, char a4@<W5>, char a5@<W6>, int a6@<W8>)
{
  if ((v6 & 1) == 0)
  {
    a4 = 0;
  }

  *STACK[0x640] = a4 ^ a5 ^ (*STACK[0x640] >> (((v7 ^ a1) * a2) ^ a3));
  return (*(v8 + 8 * (((v7 - 3230) * (a6 != 127)) ^ v7)))();
}

void sub_26AA531F4()
{
  v0 = STACK[0x7F0];
  v1 = STACK[0x22D0];
  v2 = STACK[0x22C8];
  JUMPOUT(0x26AA53034);
}

uint64_t sub_26AA53208()
{
  v2 = (v0 - 1159) | 0x780;
  v3 = STACK[0xA50] + 1858;
  v4.n128_u64[0] = 0x5858585858585858;
  v4.n128_u64[1] = 0x5858585858585858;
  v5.n128_u64[0] = 0xACACACACACACACACLL;
  v5.n128_u64[1] = 0xACACACACACACACACLL;
  v6 = (STACK[0x7F0] ^ *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374))) & ((((v2 - 4045) | 0x1A) + 1523) ^ 0x7FFFF9ED);
  v7 = -812407749 * ((-812407749 * v6) ^ ((-812407749 * v6) >> 16));
  return (*(v1 + 8 * ((51 * ((((*(STACK[0x22C8] + (v7 >> 24)) ^ *STACK[0x7F0] ^ *(STACK[0x22E0] + (v7 >> 24)) ^ *((v7 >> 24) + STACK[0x22F0] + 2) ^ v7 ^ (-109 * BYTE3(v7))) >> 7) & 1) == 0)) ^ v2)))(21, 2940, 3281, 81, 4294967265, 250, v4, v5);
}

uint64_t sub_26AA53388(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  HIDWORD(v11) = *(v7 - 1);
  LODWORD(v11) = *v7 << 24;
  *v7 = ((v11 >> 25) ^ v8) - (v9 & (2 * ((v11 >> 25) ^ v8))) - 84;
  return (*(v10 + 8 * (((a7 == 17) * a1) ^ (a7 + 2822))))();
}

uint64_t sub_26AA53418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = STACK[0x648];
  v11 = -812407749 * ((v7 ^ *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374))) & 0x7FFFFFFF);
  v12 = -812407749 * (v11 ^ HIWORD(v11));
  *v7 = *(STACK[0x22C8] + (v12 >> 24)) ^ *v9 ^ *(STACK[0x22E0] + (v12 >> 24)) ^ *((v12 >> 24) + STACK[0x22F0] + 2) ^ v12 ^ (BYTE3(v12) * (((a7 + 28) & 0x75) + 98));
  return (*(v8 + 8 * a7))();
}

uint64_t sub_26AA534E8()
{
  v11 = ((*(v0 + v1) ^ (v6 + v3)) & 0x7FFFFFFF) * v4;
  v12 = ((v11 >> (((v2 - 52) & 0xBF) + 83)) ^ v11) * v4;
  v13 = (v11 ^ HIWORD(v11)) * v4;
  *(v6 + v3) ^= *(*(v8 + 8 * (v2 ^ 0x89E)) + v3) ^ *(v5 + (v12 >> 24)) ^ *(v7 + (v12 >> 24)) ^ *((v12 >> 24) + v9 + 2) ^ *(v5 + (v13 >> 24)) ^ *(v7 + (v13 >> 24)) ^ v12 ^ *((v13 >> 24) + v9 + 2) ^ (-109 * BYTE3(v12)) ^ v13 ^ (-109 * BYTE3(v13));
  return (*(v10 + 8 * ((763 * (v3 == 15)) ^ v2)))();
}

uint64_t sub_26AA535C8@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, _BYTE *a43)
{
  *STACK[0x690] = 0;
  v48 = STACK[0x1210];
  *v48 = 0;
  *(v48 + 8) = 0;
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  *(v48 + 28) = 0;
  *(v48 + 30) = 0;
  v49 = -812407749 * ((*(*v45 + (*v44 & ((a1 ^ 0x79) + 1365765636))) ^ a43) & 0x7FFFFFFF);
  v50 = -812407749 * (v49 ^ HIWORD(v49));
  *v43 = *a43 ^ *(*(v46 + 8 * (a1 - 1716)) + (v50 >> 24)) ^ *(*(v46 + 8 * (a1 ^ 0x6CA)) - 12 + (v50 >> 24)) ^ *((v50 >> 24) + *(v46 + 8 * (a1 - 1628)) - 12 + 4) ^ v50 ^ (-29 * BYTE3(v50)) ^ 6;
  return (*(v47 + 8 * a1))();
}

uint64_t sub_26AA536D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v19 = ((*(*v17 + (*v16 & a6)) ^ (a8 + v11)) & (v12 ^ 0x64E ^ v15)) * v14;
  v20 = (v19 ^ HIWORD(v19)) * v14;
  *(v13 + v11) = *(a8 + v11) ^ *(v8 + (v20 >> 24)) ^ *(v9 + (v20 >> 24)) ^ *((v20 >> 24) + v10 + 4) ^ v20 ^ (-29 * BYTE3(v20)) ^ 6;
  return (*(v18 + 8 * ((2296 * (v11 == 31)) ^ v12)))();
}

uint64_t sub_26AA53764()
{
  v5.n128_u64[0] = 0xC0C0C0C0C0C0C0CLL;
  v5.n128_u64[1] = 0xC0C0C0C0C0C0C0CLL;
  v6.n128_u64[0] = 0x606060606060606;
  v6.n128_u64[1] = 0x606060606060606;
  v7 = v1;
  v8 = -812407749 * ((v1 ^ *(*v3 + (*v2 & 0x38F3A374))) & 0x7FFFFFFF);
  v9 = -812407749 * ((v8 >> (((v0 + 85) & 0x2F) + 1)) ^ v8);
  return (*(v4 + 8 * ((62 * (((*(STACK[0x22C8] + (v9 >> 24)) ^ *v7 ^ *(STACK[0x22E0] + (v9 >> 24)) ^ *((v9 >> 24) + STACK[0x22F0] + 2) ^ v9 ^ (-109 * BYTE3(v9))) >> 7) & 1)) ^ (v0 + 302402901) & 0xEDF9B62F)))(568323024, 3726644378, 140, 1966, 239266549, 4055702947, 1030, 4294967265, v5, v6);
}

uint64_t sub_26AA5387C(char a1, char a2, char a3, int8x16_t a4, int8x16_t a5)
{
  v8 = (v7 + 1421534000) & v6;
  *STACK[0x690] = veorq_s8(vaddq_s8(vsubq_s8(*STACK[0x690], vandq_s8(vaddq_s8(*STACK[0x690], *STACK[0x690]), a4)), a5), *STACK[0x648]);
  HIDWORD(v9) = *(v5 - 1);
  LODWORD(v9) = *v5 << 24;
  *v5 = ((v9 >> 25) ^ 3) + ((v8 + a1) & a2 ^ a3) - ((2 * ((v9 >> 25) ^ 3)) & 0xC);
  return (*(STACK[0x22F8] + 8 * (v8 + 2239)))();
}

uint64_t sub_26AA53934@<X0>(int a1@<W4>, int a2@<W5>, int a3@<W6>, char a4@<W7>, int a5@<W8>)
{
  if ((v8 & 1) == 0)
  {
    a4 = 0;
  }

  *STACK[0x648] = a4 ^ (*STACK[0x648] >> 1) ^ v5;
  return (*(v9 + 8 * (((a5 + 1 == (((v7 - 129) | a3) ^ v6)) * (((v7 + a1) & a2) + 1002)) ^ v7)))();
}

void sub_26AA53988()
{
  v0 = STACK[0x7F0];
  v1 = STACK[0x22D0];
  v2 = STACK[0x22E8];
  JUMPOUT(0x26AA537D4);
}

uint64_t sub_26AA53998()
{
  v2 = STACK[0x1210] + 2022;
  v3.n128_u64[0] = 0xC0C0C0C0C0C0C0CLL;
  v3.n128_u64[1] = 0xC0C0C0C0C0C0C0CLL;
  v4.n128_u64[0] = 0x606060606060606;
  v4.n128_u64[1] = 0x606060606060606;
  v5 = -812407749 * ((-812407749 * ((STACK[0x7F0] ^ *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374))) & 0x7FFFFFFF)) ^ ((-812407749 * ((STACK[0x7F0] ^ *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374))) & 0x7FFFFFFF)) >> 16));
  return (*(v1 + 8 * ((103 * (((*(STACK[0x22C8] + (v5 >> 24)) ^ *STACK[0x7F0] ^ *(STACK[0x22E0] + (v5 >> 24)) ^ *((v5 >> 24) + STACK[0x22F0] + 2) ^ v5 ^ (BYTE3(v5) * ((v0 - 4) ^ 0x8C))) >> 7) & 1)) ^ (v0 - 1689))))(2364, 74, 3833291464, 461676278, 4294967265, 5, 2787, 522, v3, v4);
}

uint64_t sub_26AA53AF0(char a1, int a2, int8x16_t a3, int8x16_t a4)
{
  *STACK[0x690] = veorq_s8(vaddq_s8(vsubq_s8(*STACK[0x690], vandq_s8(vaddq_s8(*STACK[0x690], *STACK[0x690]), a3)), a4), *&STACK[0xAD10]);
  HIDWORD(v7) = *(v4 - 1);
  LODWORD(v7) = *v4 << 24;
  *v4 = ((v7 >> 25) ^ 3) - ((((v7 >> 25) ^ 3) << ((v6 ^ v5 ^ a1) - 34)) & 0xC) + 6;
  return (*(STACK[0x22F8] + 8 * (a2 ^ ((v6 ^ v5) + 267))))();
}

uint64_t sub_26AA53B98()
{
  v2 = *STACK[0x22E8];
  v3 = *STACK[0x22D0] & 0x38F3A374;
  LODWORD(STACK[0x22C0]) = -812407772;
  v4 = -812407749 * (((&STACK[0x2000] + 5414) ^ *(v2 + v3)) & 0x7FFFFFFF);
  v5 = (v4 ^ HIWORD(v4)) * ((v0 - 2755) ^ 0xCF93A424);
  *STACK[0x7F0] = *(STACK[0x22C8] + (v5 >> 24)) ^ *STACK[0x690] ^ *(STACK[0x22E0] + (v5 >> 24)) ^ *((v5 >> 24) + STACK[0x22F0] + 2) ^ v5 ^ (-109 * BYTE3(v5));
  return (*(v1 + 8 * v0))();
}

uint64_t sub_26AA53C70@<X0>(int a1@<W8>)
{
  v8 = (((&STACK[0x2000] + 5430) ^ *(v1 + v2)) & 0x7FFFFFFF) * a1;
  v9 = ((v8 >> ((v3 - 64) & 0xED ^ 0xDD)) ^ v8) * a1;
  *(STACK[0x630] + 463) = *(v4 + (v9 >> 24)) ^ *(v5 + (v9 >> 24)) ^ *((v9 >> 24) + v6 + 2) ^ v9 ^ (-109 * BYTE3(v9));
  return (*(v7 + 8 * ((v3 + 2887) | 0x11)))();
}

uint64_t sub_26AA53D24(uint64_t a1, int a2)
{
  STACK[0x1598] = v5;
  v8 = -812407749 * (((&STACK[0x2350] + 4582) ^ *(v2 + v4)) & 0x7FFFFFFF);
  v9 = -812407749 * (v8 ^ HIWORD(v8));
  v10 = -812407749 * ((*(v2 + (((a2 - 89) ^ 0x8A6CA490) & v3)) ^ ((&STACK[0x2350] + 11392) | 9)) & 0x7FFFFFFF);
  v11 = -812407749 * (v10 ^ HIWORD(v10));
  LOBYTE(STACK[0x3536]) ^= LOBYTE(STACK[0x4FD9]) ^ *(v6 + (v9 >> 24)) ^ *(STACK[0x22E0] + (v9 >> 24)) ^ *((v9 >> 24) + v7 + ((a2 - 618) ^ 0x261u)) ^ *(STACK[0x1FF0] + (v11 >> 24)) ^ *((v11 >> 24) + STACK[0x1FE8] + 1) ^ *(STACK[0x1FE0] + (v11 >> 24)) ^ v9 ^ *(v6 + (v9 >> 24)) ^ (-109 * BYTE3(v9)) ^ *(STACK[0x22E0] + (v9 >> 24)) ^ v11 ^ *((v9 >> 24) + v7 + 2) ^ (121 * BYTE3(v11)) ^ v9 ^ (-109 * BYTE3(v9));
  return (*(STACK[0x22F8] + 8 * ((a2 - 89) ^ 0xB9)))();
}

void sub_26AA53E70()
{
  v0 = STACK[0x22C8];
  v1 = STACK[0x22F0];
  JUMPOUT(0x26AA53D84);
}

uint64_t sub_26AA53E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, _BYTE *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, _BYTE *a62)
{
  *STACK[0x6A0] = 0;
  *(a30 + 3557) = 0u;
  *(a30 + 3573) = 0;
  *(a30 + 3581) = 0;
  *(a30 + 3585) = 0;
  *(a30 + 3587) = 0;
  v69 = STACK[0x7F0];
  v70 = STACK[0x630];
  v71 = STACK[0x22E0];
  v72 = -812407749 * ((a50 ^ *(v65 + (v66 & 0x5167F4C8))) & 0x7FFFFFFF);
  v73 = -812407749 * ((v72 >> ((v67 ^ 9) - 90)) ^ v72);
  *a62 = *a50 ^ *(v62 + (v73 >> 24)) ^ *(v63 + (v73 >> 24)) ^ *((v73 >> 24) + v64 + 4) ^ v73 ^ (-29 * BYTE3(v73)) ^ 0x79;
  return (*(v68 + 8 * v67))();
}

uint64_t sub_26AA53F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = (((a8 + v14) ^ *(v11 + v12)) & 0x7FFFFFFF) * v15;
  v19 = (v18 ^ HIWORD(v18)) * ((11 * (v13 ^ 0x357)) ^ (v15 + 1385));
  *(v16 + v14) = *(a8 + v14) ^ *(v8 + (v19 >> 24)) ^ *(v9 + (v19 >> 24)) ^ *((v19 >> 24) + v10 + 4) ^ v19 ^ (-29 * BYTE3(v19)) ^ 0x79;
  return (*(v17 + 8 * ((4739 * (v14 == 31)) ^ v13)))();
}

uint64_t sub_26AA54018()
{
  v5.n128_u64[0] = 0xF2F2F2F2F2F2F2F2;
  v5.n128_u64[1] = 0xF2F2F2F2F2F2F2F2;
  v6.n128_u64[0] = 0x7979797979797979;
  v6.n128_u64[1] = 0x7979797979797979;
  v7 = (((v3 + 16) ^ *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374))) & 0x7FFFFFFF) * v1;
  v8 = (v7 ^ HIWORD(v7)) * v1;
  v9 = v8 >> ((17 * (((v0 + 125) | 3) ^ 0x86)) ^ 0x31u);
  return (*(v4 + 8 * ((v0 - 1844) | (16 * (((*(STACK[0x22C8] + v9) ^ *(v3 + 16) ^ *(v2 + v9) ^ *(v9 + STACK[0x22F0] + 2) ^ v8 ^ (-109 * v9)) >> 7) & 1)))))(4294967205, 20, 317, 4294967265, 69, v5, v6);
}

uint64_t sub_26AA5416C(int8x16_t a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *v8 = veorq_s8(vaddq_s8(vsubq_s8(*v8, vandq_s8(vaddq_s8(*v8, *v8), a1)), a2), *v9);
  HIDWORD(v12) = ~*(v11 - 1);
  LODWORD(v12) = *v11 << 24;
  *v11 = ((v12 >> 25) ^ 0x3C) - ((2 * ((v12 >> 25) ^ 0x3C)) & 0xF3) + 121;
  return (*(v10 + 8 * (a8 + 1587)))();
}

uint64_t sub_26AA54254(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, int a8)
{
  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = a4;
  }

  *v10 = v12 ^ (*v10 >> 1) ^ a5;
  v13 = STACK[0x6A0];
  return (*(v11 + 8 * (((v8 + a8 - 1844 == 1770) * (a8 - 2690)) ^ a8)))();
}

uint64_t sub_26AA542AC@<X0>(int a1@<W7>, int a2@<W8>)
{
  v4 = (a1 - 1353) | 0x80;
  v5.n128_u64[0] = 0xF2F2F2F2F2F2F2F2;
  v5.n128_u64[1] = 0xF2F2F2F2F2F2F2F2;
  v6.n128_u64[0] = 0x7979797979797979;
  v6.n128_u64[1] = 0x7979797979797979;
  v7 = (v2 + ((v4 + 988617503) & 0xC512DF7F) - 869);
  v8 = ((v7 ^ *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374))) & 0x7FFFFFFF) * a2;
  v9 = (v8 ^ HIWORD(v8)) * ((v4 - 2231) ^ LODWORD(STACK[0x22C0]));
  LODWORD(v7) = (*(STACK[0x22C8] + (v9 >> 24)) ^ *v7 ^ *(STACK[0x22E0] + (v9 >> 24)) ^ *((v9 >> 24) + STACK[0x22F0] + 2) ^ v9 ^ (-109 * BYTE3(v9)));
  v10 = STACK[0x6A0];
  return (*(v3 + 8 * ((((v7 >> 7) & 1) == 0) | (32 * (((v7 >> 7) & 1) == 0)) | v4)))(2261, 4294967265, 145, 1, 44, 33, 1880, 1069, v5, v6);
}

uint64_t sub_26AA54474(int8x16_t a1, int8x16_t a2)
{
  v6 = v3 ^ 0x7F8;
  *v4 = veorq_s8(vaddq_s8(vsubq_s8(*v4, vandq_s8(vaddq_s8(*v4, *v4), a1)), a2), *(v5 + 1));
  v7 = *(v5 + 16) >> 1;
  v8 = ((v6 ^ 0x1C) - 1) & v7;
  LOBYTE(v7) = (v7 & 0x7F | (~*(v2 - 1) << 7)) ^ 0x3C;
  *v2 = v7 - 2 * (v7 & 0xFB ^ v8) + 121;
  return (*(STACK[0x22F8] + 8 * (v6 + 707)))();
}

uint64_t sub_26AA54510(int a1, char a2, char a3, int a4, int a5)
{
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  *(STACK[0x630] + 1) = v9 ^ (*(STACK[0x630] + 1) >> 1) ^ (v7 - 47) ^ a3;
  return (*(v8 + 8 * (((a4 & ~(v7 ^ a1 ^ (v5 == 127))) * a5) ^ v7)))();
}

uint64_t sub_26AA54568()
{
  v2 = STACK[0x7A8];
  v3 = STACK[0x6A8];
  v4 = STACK[0x7F0] + ((v0 + 33) ^ 0x9E5);
  v5 = -812407749 * ((v4 ^ *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374))) & 0x7FFFFFFF);
  v6 = -812407749 * (v5 ^ HIWORD(v5));
  *v4 = *(STACK[0x22C8] + (v6 >> 24)) ^ *STACK[0x6A0] ^ *(STACK[0x22E0] + (v6 >> 24)) ^ *((v6 >> 24) + STACK[0x22F0] + 2) ^ v6 ^ (-109 * BYTE3(v6));
  return (*(v1 + 8 * v0))();
}

uint64_t sub_26AA54644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (v8 + 661) + v7 + v10 - 3194;
  v15 = ((v14 ^ *(v5 + v6)) & 0x7FFFFFFF) * v9;
  v16 = ((v15 ^ HIWORD(v15)) * v9) >> 24;
  *v14 ^= *(a5 + v16) ^ *(v11 + v16) ^ *(v16 + v12 + 2) ^ *(a5 + v16) ^ *(v11 + v16) ^ *(v16 + v12 + 2);
  return (*(v13 + 8 * ((6454 * (v7 == 15)) ^ v8)))();
}

uint64_t sub_26AA546C4@<X0>(unsigned int a1@<W5>, _BYTE *a2@<X6>, _BYTE *a3@<X7>, int a4@<W8>)
{
  *v4 = 0;
  v10 = STACK[0x1210];
  *(v10 + 3264) = 0u;
  *(v10 + 3280) = 0;
  *(v10 + 3288) = 0;
  *(v10 + 3292) = 0;
  *(v10 + 3294) = 0;
  v11 = ((*(*v7 + (*v5 & a1)) ^ a2) & 0x7FFFFFFF) * v6;
  v12 = (v11 ^ HIWORD(v11)) * v6;
  *a3 = *a2 ^ *(*(v9 + 8 * (a4 - 3016)) + (v12 >> 24)) ^ *(*(v9 + 8 * (a4 ^ 0xC8C)) - 8 + (v12 >> 24)) ^ *((v12 >> 24) + *(v9 + 8 * (a4 ^ 0xCA6)) - 4 + 2) ^ v12 ^ (BYTE3(v12) * (a4 ^ 0x49)) ^ 0x5A;
  return (*(v8 + 8 * a4))();
}

uint64_t sub_26AA547B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v17 = ((*(*v14 + (*v11 & a6)) ^ (a7 + v8)) & 0x7FFFFFFF) * v12;
  v18 = (v17 ^ HIWORD(v17)) * v12;
  *(a8 + v8) = *(a7 + v8) ^ *(v10 + (v18 >> 24)) ^ *(v13 + (v18 >> 24)) ^ *((v18 >> 24) + v15 + 2) ^ v18 ^ (BYTE3(v18) * ((2 * v9) ^ 0x2F)) ^ 0x5A;
  return (*(v16 + 8 * ((11 * (v8 != 31)) ^ v9)))();
}

uint64_t sub_26AA54848()
{
  STACK[0x15B0] = v5;
  STACK[0x15B8] = v3;
  STACK[0x15C0] = v1;
  v6.n128_u64[0] = 0xB4B4B4B4B4B4B4B4;
  v6.n128_u64[1] = 0xB4B4B4B4B4B4B4B4;
  v7.n128_u64[0] = 0x5B5B5B5B5B5B5B5BLL;
  v7.n128_u64[1] = 0x5B5B5B5B5B5B5B5BLL;
  v8 = ((v2 + 16) ^ *(*v4 + (*STACK[0x22D0] & 0x38F3A374))) & 0x7FFFFFFF;
  v9 = -812407749 * (((-812407749 * v8) >> (((((((v0 ^ 0xFE) - 27) & 0xFE) + 15) | 0x1A) + 91) ^ 0x6A)) ^ (-812407749 * v8));
  v10 = STACK[0x7A8];
  v11 = STACK[0x6A8];
  return (*(STACK[0x22F8] + 8 * ((452 * ((((*(STACK[0x22C8] + (v9 >> 24)) ^ *(v2 + 16) ^ *(STACK[0x22E0] + (v9 >> 24)) ^ *((v9 >> 24) + STACK[0x22F0] + 2) ^ v9 ^ (-109 * BYTE3(v9))) >> 7) & 1) == 0)) ^ ((v0 ^ 0x1EFE) + 86811621) & 0xFAD356FE)))(45, 180, 2062, 2058, 379, 4294967265, 2349, 1136, v6, v7);
}

uint64_t sub_26AA54A18@<X0>(char a1@<W0>, char a2@<W1>, int a3@<W8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>)
{
  *v8 = veorq_s8(vaddq_s8(vaddq_s8(*v8, a5), vmvnq_s8(vandq_s8(vaddq_s8(*v8, *v8), a4))), *v7);
  HIDWORD(v9) = *(STACK[0x798] - 1);
  LODWORD(v9) = *STACK[0x798] << 24;
  *STACK[0x798] = ((v9 >> 25) ^ a1) - (a2 & (2 * ((v9 >> 25) ^ a1))) + 90;
  return (*(STACK[0x22F8] + 8 * ((28 * ((((v6 - 94) | 8) ^ a3) * v5 != 2074)) ^ (((v6 - 94) | 8) + 354))))();
}

uint64_t sub_26AA54ABC(uint64_t a1, uint64_t a2, int a3, char a4, int a5, char a6)
{
  if ((v8 & 1) == 0)
  {
    a6 = 0;
  }

  *STACK[0x7A8] = a6 ^ (*STACK[0x7A8] >> (20 * (v7 ^ a4) - 119)) ^ 0x77;
  return (*(v9 + 8 * ((30 * (v6 + (v7 ^ a3) * a5 != 885)) ^ v7)))();
}

void sub_26AA54B20()
{
  v0 = STACK[0x7F0];
  v1 = STACK[0x22E8];
  JUMPOUT(0x26AA548E4);
}

uint64_t sub_26AA54B2C()
{
  if (STACK[0x6A8] < &STACK[0x6B44])
  {
    v2 = STACK[0x798] + 1 >= &STACK[0xB208];
  }

  v3 = STACK[0x798] + 16;
  v4.n128_u64[0] = 0xB4B4B4B4B4B4B4B4;
  v4.n128_u64[1] = 0xB4B4B4B4B4B4B4B4;
  v5.n128_u64[0] = 0x5A5A5A5A5A5A5A5ALL;
  v5.n128_u64[1] = 0x5A5A5A5A5A5A5A5ALL;
  v6 = ((STACK[0x7F0] + 16) ^ *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374))) & 0x7FFFFFFF;
  v7 = -812407749 * ((-812407749 * v6) ^ ((-812407749 * v6) >> 16));
  v8 = STACK[0x7A8];
  return (*(v1 + 8 * ((19 * (((*(STACK[0x22C8] + (v7 >> 24)) ^ *(STACK[0x7F0] + 16) ^ *(STACK[0x22E0] + (v7 >> 24)) ^ *((v7 >> 24) + STACK[0x22F0] + 2) ^ v7 ^ (-109 * BYTE3(v7))) >> 7) & 1)) | (2 * (v0 ^ 0x67C)))))(180, 11, 85, 89, 1600, 4294967265, (2 * (v0 ^ 0x67C) + 1169) ^ 0x1086u, v4, v5);
}

uint64_t sub_26AA54D2C(char a1, int a2, int a3, int8x16_t a4, int8x16_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v12 = a9 - 2876;
  *v10 = veorq_s8(vaddq_s8(vsubq_s8(*v10, vandq_s8(vaddq_s8(*v10, *v10), a4)), a5), *(STACK[0x798] + 1));
  HIDWORD(v13) = *(v9 - 1);
  LODWORD(v13) = *(STACK[0x798] + 16) << 24;
  v14 = (6 * (v12 ^ a2)) ^ (v13 >> 25) ^ a3;
  *v9 = v14 - (a1 & (2 * v14)) + 90;
  return (*(v11 + 8 * (v12 + 2187)))();
}

uint64_t sub_26AA54DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = -812407749 * (((&STACK[0x2350] + 4582) ^ *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374))) & 0x7FFFFFFF);
  v10 = -812407749 * (v9 ^ HIWORD(v9));
  LOBYTE(STACK[0x3536]) = *(STACK[0x22C8] + (v10 >> 24)) ^ *v7 ^ *(STACK[0x22E0] + (v10 >> 24)) ^ *((v10 >> 24) + STACK[0x22F0] + 2) ^ v10 ^ (BYTE3(v10) * ((a7 + 127) & 0x3F ^ 0x8C));
  return (*(v8 + 8 * a7))();
}

uint64_t sub_26AA54EB0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x1D10]) = 1560404280;
  STACK[0x2340] = STACK[0x2300];
  v6 = *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374));
  v7 = ((((v6 ^ v3) & 0x7FFFFFFF) * v1) ^ ((((v6 ^ v3) & 0x7FFFFFFF) * v1) >> 16)) * v1;
  v8 = ((((v6 ^ (v3 + 16)) & 0x7FFFFFFF) * v1) ^ ((((v6 ^ (v3 + 16)) & 0x7FFFFFFFu) * v1) >> 16)) * v1;
  *v4 = *v3 ^ v3[16] ^ *(STACK[0x22C8] + (v7 >> 24)) ^ *(v2 + (v7 >> 24)) ^ *(STACK[0x22F0] + (a1 - 29) + (v7 >> 24)) ^ *(STACK[0x22C8] + (v8 >> 24)) ^ *(v2 + (v8 >> 24)) ^ *((v8 >> 24) + STACK[0x22F0] + 2) ^ v7 ^ v8 ^ (-109 * BYTE3(v7)) ^ (-109 * BYTE3(v8)) ^ 5;
  return (*(v5 + 8 * ((a1 + 1146) ^ 0x7D)))(5);
}

uint64_t sub_26AA55000(int a1, char a2, __int16 a3, uint64_t a4, __int16 a5, int a6, char a7)
{
  v19 = *(v13 + v8 + 2) + 111;
  v20 = (v19 ^ 0x74) + ((-16 - a5) & 0x89) + ((a5 + 15) & 0x89);
  v21 = *(v12 + ((((v9 + 55) | 0x51) + 11) ^ v19)) ^ v19 ^ 0x74 ^ (v20 - (a7 & (2 * v20)) + 5) ^ 0x37;
  v22 = ((v21 >> 2) | (v21 << 6)) ^ v11 ^ 3;
  *(v18 + (a5 + 1295 - ((((a5 + 1295) * a1) >> 16) >> 6) * a3)) = (v11 ^ 3) - (a7 & (2 * (v11 ^ 3))) + 5;
  *(v18 + ((v8 + 2) * v10 - (((((v8 + 2) * v10) * a1) >> 16) >> 6) * a3)) = v22 ^ a2;
  v23 = *(v13 + v8 + 3);
  v24 = (v23 + v16 - 2 * (v23 & 3)) ^ v16 ^ v22;
  *(v18 + (a5 + 1332 - ((((a5 + 1332) * a1) >> 16) >> 6) * a3)) = (v24 + v16 - (v14 & (2 * v24))) ^ 6 ^ v23;
  *(v18 + ((v8 + 3) * v10 - (((((v8 + 3) * v10) * a1) >> 16) >> 6) * a3)) = (v24 + v16 - (v14 & (2 * v24))) ^ 6;
  return (*(v17 + 8 * ((v9 - 307) ^ ((v7 == v15 + 28) * a6))))();
}

uint64_t sub_26AA55168()
{
  v6 = v2 + 4;
  v7 = STACK[0x1B80];
  v8 = *(STACK[0x1B80] + v6);
  v9 = (v8 + 3 - 2 * (v8 & 3)) ^ v0;
  LOWORD(v6) = (((v3 + 16160) & 0xC4DF) - 1200) * v6;
  v10 = v9 + 3 - ((2 * v9) & 6);
  *(v5 + (v6 + ((v3 + 16842) & 0xBD7F ^ 0x4F5)) % 0x46u) = v10 ^ 6 ^ v8;
  *(v5 + v6 % 0x46u) = v10 ^ 6;
  v11 = (v1 + 5) & 0x1F;
  v12 = *(v7 + v11);
  v13 = v10 ^ (v12 + 3 + (~(2 * v12) | 0xF9) + 1);
  v14 = v13 + 3 - ((2 * v13) & 6);
  *(v5 + (37 * v11 + 1258 - 70 * (((3745 * (37 * v11 + 1258)) >> 16) >> 2))) = (v12 - ((2 * v12) & 0xA) + 5) ^ v14 ^ 3;
  *(v5 + (37 * v11 - 70 * (((69301 * v11) >> 16) >> 1))) = v14 ^ 6;
  return (*(v4 + 8 * (v3 ^ (45 * (v11 == 31)))))();
}

uint64_t sub_26AA552D4(__int16 a1, uint64_t a2, int a3, __int16 a4, __int16 a5)
{
  v10 = v6 + 1;
  v11 = *(STACK[0x1B80] + v10);
  v12 = ((v11 + 1133471491 - 2 * (v11 & 3)) ^ v5) + 1133471491 - ((((v11 + 1133471491 - 2 * (v11 & 3)) ^ v5) << ((v7 - 52) ^ 0xA0)) & 0x871ECE06);
  *(v9 + (a5 + (v7 ^ 0x4CA) + 1264 - ((((a5 + (v7 ^ 0x4CA) + 1264) * a3) >> 16) >> 6) * a1)) = v12 ^ v11 ^ 6;
  *(v9 + (v10 * a4 - (((138565 * v10) >> 16) >> 2) * a1)) = v12 ^ 6;
  return (*(v8 + 8 * (v7 ^ (662 * (v6 < 0x1E)))))();
}

uint64_t sub_26AA553A0(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v10 = *(STACK[0x1B80] + v7 + 2);
  v11 = (v10 + ((a2 + 87) ^ 0xFB) - 2 * (v10 & 3)) ^ v4;
  v12 = (v7 + 2) * a4;
  *(v9 + (37 * (v7 + 2) - 70 * ((v12 + 4711210) >> 18) + 1258)) = (v11 + 3 - (v5 & (2 * v11))) ^ v10 ^ 6;
  *(v9 + (37 * (v7 + 2) - 70 * (v12 >> 18))) = (v11 + 3 - (v5 & (2 * v11))) ^ 6;
  return (*(v8 + 8 * (a2 ^ (13 * (v6 == 29)))))();
}

uint64_t sub_26AA55464(__int16 a1, uint64_t a2, int a3, uint64_t a4, char a5, __int16 a6, char a7)
{
  v11 = *(STACK[0x1B80] + v8 + 3) ^ a5;
  v12 = (v8 + 3) * a1;
  *(v10 + (((((a3 + 19919) & 0xBD79) - 3106) ^ 0x4F5) + v12 - (((((a3 + 19919) & 0xBD79) - 3106) ^ 0x4F5) + v12) / 0x46u * a6)) = (a5 ^ 3) + ~(2 * ((a5 ^ 3) & a7 ^ a5 & 8)) + 6;
  *(v10 + (v12 - (((138565 * (v8 + 3)) >> 16) >> 2) * a6)) = v11 ^ 6;
  return (*(v9 + 8 * (a3 ^ (472 * (v7 < 0x1C)))))();
}

uint64_t sub_26AA5551C(int a1, int a2, uint64_t a3, int a4)
{
  v10 = *(STACK[0x1B80] + ((a2 - 1968541346) & 0x7555827F ^ 0x1Bu) + v7);
  v11 = (v10 + 3 - 2 * (v10 & 3)) ^ v4;
  v12 = v11 + 3 - (v5 & (2 * v11));
  *(v9 + (a1 + 1295 - 70 * (((3745 * (a1 + 1295)) >> 16) >> 2))) = v12 ^ 6 ^ v10;
  v13 = 37 * (((a2 + 29022) & 0x827F ^ 0x1B) + v7);
  *(v9 + (v13 - 70 * (((v13 * a4) >> 16) >> 6))) = v12 ^ 6;
  return (*(v8 + 8 * (a2 ^ (28 * (v6 == 27)))))();
}

uint64_t sub_26AA555DC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, int a7, int a8)
{
  v13 = *(STACK[0x1B80] + v10 + 5);
  *(v12 + (((v13 & a7 ^ a7) + (v13 & a7)) * (v9 + 39) - (((((v13 & a7 ^ a7) + (v13 & a7)) * (v9 + 39) * a8) >> 16) >> 2) * a5)) = (v8 ^ 3) - ((((a2 - 64) | 0x3E) ^ ((a2 - 37) | 3) ^ 0x2A) & (2 * (v8 ^ 3))) + 5;
  *(v12 + ((v10 + 5) * a7 - (((138565 * (v10 + 5)) >> 16) >> 2) * a5)) = v13 ^ v8 ^ 6;
  return (*(v11 + 8 * ((a2 - 168) ^ (7 * (v9 > 0x19)))))();
}

uint64_t sub_26AA5569C(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v11 = *(STACK[0x1B80] + v8 + 6);
  v12 = (v11 + 1133471491 + (a3 ^ 0x1120) - ((v11 << ((a3 ^ 0xEA) + 44)) & 6) - 31) ^ a6;
  LOBYTE(v12) = v12 + 3 - ((2 * v12) & 6);
  *(v10 + (37 * a2 + 1295 - 70 * (((3745 * (37 * a2 + 1295)) >> 16) >> 2))) = v12 ^ 6 ^ v11;
  *(v10 + (37 * (v8 + 6) - 70 * ((((v8 + 6) * a7) >> 16) >> 2))) = v12 ^ 6;
  return (*(v9 + 8 * (a3 ^ (95 * (v7 == 25)))))();
}

uint64_t sub_26AA55768(int a1, uint64_t a2, uint64_t a3, int a4, __int16 a5, __int16 a6, uint64_t a7, char a8)
{
  v12 = *(STACK[0x1B80] + v9 + 7) ^ a8;
  *(v11 + (a1 + 1406) % ((a4 - 1206) ^ 0x59u)) = (a8 ^ 3) - ((2 * (a8 ^ 3)) & 0xA) + 5;
  *(v11 + ((v9 + 7) * a5 - (((138565 * (v9 + 7)) >> 16) >> 2) * a6)) = v12 ^ 6;
  return (*(v10 + 8 * (a4 ^ (477 * (v8 != 24)))))();
}

uint64_t sub_26AA557F0(int a1, int a2)
{
  v8 = *(STACK[0x1B80] + v5 + 8);
  v9 = v2 ^ 0x3C;
  *(v7 + (a2 + 1369 - 70 * (((3745 * (a2 + 1369)) >> 16) >> 2))) = (((v3 ^ 0x64) - 60) ^ v9) - (((((v3 ^ 0x64) - 122) | 0x4A) ^ 0x41) & (2 * (((v3 ^ 0x64) - 60) ^ v9))) + 5;
  *(v7 + (37 * (v5 + 8) - 70 * ((((v5 + 8) * a1) >> 16) >> 2))) = v8 ^ v9 ^ 0x3A;
  return (*(v6 + 8 * (v3 ^ 0x164 ^ (1452 * (v4 < 0x17)))))();
}

uint64_t sub_26AA558A4(uint64_t a1, __int16 a2, int a3, char a4, int a5, int a6, char a7)
{
  v12 = v9 + 9;
  v13 = ((v12 | (49 - v7)) & a6) * (v8 + 43);
  v14 = v13 - (((v13 * a5) >> 16) >> 2) * a2;
  LOBYTE(v13) = *(STACK[0x1B80] + v12) ^ a4;
  *(v11 + v14) = (a7 ^ 0x3F) - ((a3 ^ 0x3A ^ ((a3 - 74) | 0x7A)) & (2 * (a7 ^ 0x3F))) + 5;
  *(v11 + (v12 * a6 - (((138565 * v12) >> 16) >> 2) * a2)) = v13 ^ 6;
  return (*(v10 + 8 * (a3 ^ ((4 * (v8 == 22)) | (16 * (v8 == 22))))))();
}

uint64_t sub_26AA55954(int a1)
{
  v7 = a1 + 3026 + v3 + ((a1 - 348) ^ 0xFFFFF2A2);
  v8 = *(STACK[0x1B80] + v7);
  v9 = (v8 + 3 - 2 * (v8 & 3)) ^ v1;
  v10 = v9 + 3 - ((2 * v9) & 6);
  v11 = v3 + 1775809920 - 2 * ((v4 ^ v2) & 7) + 11;
  *(v6 + (37 * v7 + 1258) % 0x46u) = v10 ^ 6 ^ v8;
  *(v6 + (37 * v7) % 0x46u) = v10 ^ 6;
  v12 = (v11 & 0xBF ^ 0x941CB5C0) + (v11 & 0xBF ^ 0xFFFFFF7F);
  if ((v11 ^ 0x69D8B580u) < 0x20)
  {
    ++v12;
  }

  return (*(v5 + 8 * (a1 ^ (226 * (v12 != -1810057921)))))();
}

uint64_t sub_26AA55A60()
{
  v5 = v1 ^ 0x69D8B580u;
  v6 = STACK[0x1B80];
  v7 = (((v2 - 3378) | 4) + *(STACK[0x1B80] + v5) - 70) ^ 5;
  v8 = *(&off_279CA5FD0 + v2 - 3184);
  STACK[0x21B8] = v8 + 2645;
  LOBYTE(v7) = *(v8 + 2645 + ((v7 + 1927427915 - ((2 * v7) & 0x96)) ^ 0x72E23750u));
  v9 = ((v7 ^ 0x43) + 3 - 2 * ((v7 ^ 0x43) & 3)) ^ v0;
  v10 = v9 + 3 - ((2 * v9) & 6);
  *(v4 + (37 * (v1 ^ 0xB580) + 1258) % 0x46u) = v7 ^ 0x45 ^ v10;
  *(v4 + (37 * (v1 ^ 0xB580)) % 0x46u) = v10 ^ 6;
  v11 = ((*(v6 + v5 + 1) >> 2) | (*(v6 + v5 + 1) << 6)) ^ 0x4DLL;
  STACK[0x2180] = v8 + 533;
  v12 = (*(v8 + 533 + v11) ^ (2 * (*(v8 + 533 + v11) ^ 0xA7) * (*(v8 + 533 + v11) ^ 0xA7)) ^ 0xA2) + 13;
  *(v4 + (37 * ((v1 ^ 0xB580) + 1) + 1258) % 0x46u) = (v10 ^ 3) - ((2 * (v10 ^ 3)) & 0xA) + 5;
  *(v4 + (37 * ((v1 ^ 0xB580) + 1)) % 0x46u) = v10 ^ v12 ^ 6;
  v13 = *(v3 + 8 * ((51 * (v1 == 1775809950)) ^ v2));
  STACK[0x2030] = v8;
  STACK[0x2298] = v8 + 805;
  return v13();
}

uint64_t sub_26AA55C30@<X0>(int a1@<W3>, int a2@<W8>)
{
  LODWORD(STACK[0x1D10]) = a1;
  LODWORD(STACK[0x2098]) = v4;
  LODWORD(STACK[0x2028]) = v5;
  LODWORD(STACK[0x20B0]) = v3;
  STACK[0x1CB8] = 0;
  v7 = (v2 + 386) | 0x10;
  LODWORD(STACK[0x20D8]) = (v7 + 43) ^ a2;
  v8 = STACK[0x2030];
  STACK[0x20B8] = STACK[0x2030] + 6338;
  STACK[0x2260] = v8 + 6071;
  STACK[0x2290] = v8 + 5808;
  STACK[0x1B30] = v8 + 7133;
  STACK[0x1B28] = v8 + 5021;
  STACK[0x1B20] = v8 + 6608;
  STACK[0x1B18] = v8 + 4225;
  STACK[0x1B10] = v8 + 5283;
  STACK[0x1918] = 0xE777716A132CEA75;
  STACK[0x1928] = 0x41D5A2A3FEA7E4CELL;
  STACK[0x1FA0] = 0x45E2C97E1569AFB5;
  LODWORD(STACK[0x2088]) = -1802460139;
  LODWORD(STACK[0x1D50]) = -1327582422;
  LODWORD(STACK[0x20A8]) = 1627481521;
  LODWORD(STACK[0x1D58]) = 1359354155;
  LODWORD(STACK[0x1D08]) = -1091451016;
  STACK[0x1910] = 0xFAE5819C8BCB2534;
  LODWORD(STACK[0x1D30]) = -776178602;
  LODWORD(STACK[0x2248]) = -1919882977;
  LODWORD(STACK[0x2070]) = 654382457;
  LODWORD(STACK[0x2008]) = -377628368;
  LODWORD(STACK[0x2018]) = -166083282;
  LODWORD(STACK[0x1FF8]) = 1895055706;
  LODWORD(STACK[0x20A0]) = 215594630;
  LODWORD(STACK[0x2050]) = 55308112;
  LODWORD(STACK[0x2080]) = 1651757624;
  LODWORD(STACK[0x2010]) = -1912122710;
  LODWORD(STACK[0x1DC0]) = -1449816779;
  LODWORD(STACK[0x2040]) = 251340788;
  LODWORD(STACK[0x2230]) = -118823653;
  LODWORD(STACK[0x1FE0]) = -1432574626;
  LODWORD(STACK[0x2090]) = 1062999451;
  LODWORD(STACK[0x2000]) = -979344949;
  LODWORD(STACK[0x2020]) = -33325075;
  LODWORD(STACK[0x1D40]) = -53742381;
  LODWORD(STACK[0x2210]) = 340586346;
  LODWORD(STACK[0x2048]) = 2116122598;
  LODWORD(STACK[0x19D4]) = -1547310221;
  LODWORD(STACK[0x2078]) = -27681234;
  LODWORD(STACK[0x2168]) = 347264911;
  LODWORD(STACK[0x20F0]) = -183474123;
  LODWORD(STACK[0x1B08]) = -831373717;
  LODWORD(STACK[0x20C0]) = 1520217655;
  LODWORD(STACK[0x2158]) = 1095931289;
  LODWORD(STACK[0x1D48]) = 1853568700;
  LODWORD(STACK[0x2268]) = -1694532837;
  LODWORD(STACK[0x1D28]) = 404722741;
  STACK[0x1608] = 51;
  LODWORD(STACK[0x1920]) = 964085263;
  STACK[0x18F8] = 53;
  STACK[0x1618] = 170;
  STACK[0x2138] = 26;
  LODWORD(STACK[0x1590]) = 296268108;
  LODWORD(STACK[0x1D38]) = 296268108;
  LODWORD(STACK[0x20E0]) = 232;
  STACK[0x1900] = 251;
  LODWORD(STACK[0x20D0]) = 34;
  STACK[0x1600] = 100;
  STACK[0x1EE0] = 250;
  STACK[0x1620] = 247;
  STACK[0x1FF0] = 8;
  LODWORD(STACK[0x2190]) = 70;
  LODWORD(STACK[0x22C0]) = 5;
  LODWORD(STACK[0x22A8]) = 5;
  STACK[0x1628] = 12;
  STACK[0x20C8] = 242;
  STACK[0x15F8] = 25;
  STACK[0x1610] = 39;
  STACK[0x1EC0] = 255;
  v9 = STACK[0x21B8];
  v10 = *(v6 + 8 * (((v7 ^ 0x9D8) + 2038) ^ v7));
  STACK[0x1B58] = v8 + 805;
  LODWORD(STACK[0x15D8]) = 1258;
  return v10();
}

uint64_t sub_26AA55FD8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v53 = ~v49 + a3;
  v54 = *(a48 + 37 * v53 % 0x46);
  *(a48 + (LODWORD(STACK[0x15D8]) + 37 * (((v54 ^ v53 ^ 5) + v51 - ((2 * (v54 ^ v53 ^ 5)) & 0x871ECE06)) ^ v48)) % 0x46) = *(a48 + (37 * v53 + 1258) % ((v50 + 1720) ^ 0x82Fu)) ^ v54 ^ 5;
  return (*(v52 + 8 * (v50 ^ (3950 * (v49 + 1 < a3)))))();
}

uint64_t sub_26AA5609C@<X0>(unsigned int a1@<W2>, unsigned int a2@<W4>, int a3@<W5>, unsigned __int8 a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v54 = (a4 + v50 - ((a4 << (v51 ^ 0x68)) & 6)) ^ v44;
  v55 = ~v47 + a1;
  v56 = ((((32766 - v46) ^ v47) & 0x7220) - (v55 & (v47 - (v45 ^ 0x5F11))) - ((v55 ^ (v47 - (v45 ^ 0x5F11))) & 0x71FB)) * (v55 + 34);
  LOBYTE(v56) = *(a44 + v56 - ((((v56 >> 1) * a2) >> 32) >> 5) * a3);
  v57 = *(a44 + 37 * v55 - (((((37 * v55) >> 1) * a2) >> 32) >> 5) * a3);
  v58 = *(STACK[0x20B8] + (((v57 ^ 5) - 39) ^ 0xADLL));
  STACK[0x1EC0] = v57;
  v59 = LODWORD(STACK[0x15D8]) + 37 * (v55 - (v57 ^ 5) + ((((v58 ^ 5) - 44) ^ (((v58 ^ 5) - 44) >> 2) ^ (((v58 ^ 5) - 44) >> 1)) ^ 0xC9));
  *(a44 + v59 - ((((v59 >> 1) * a2) >> 32) >> 5) * a3) = v54 - (v57 ^ 5) + (v57 ^ v56) - (v52 & (2 * (v54 - (v57 ^ 5) + (v57 ^ v56)))) + 5;
  v61 = v46 + 2 <= a1 && ((v46 + 2) ^ v45) != v49;
  return (*(v53 + 8 * (v48 ^ (975 * v61))))();
}

uint64_t sub_26AA561EC@<X0>(int a1@<W0>, unsigned int a2@<W2>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v49 = v43 ^ a3;
  v50 = ~a1 + a2;
  v51 = *(a43 + (37 * v50 + 1258) % (((37 * v50 + 1258) ^ (21 - 37 * v50)) & 0x46));
  v52 = *(a43 + ((v45 - 1614164676) & 0x6036397B ^ 0x84C) * v50 % 0x46);
  STACK[0x2138] = v51;
  LOBYTE(v51) = *(v48 + (((v52 ^ v51) - 39) ^ 0x1ELL)) ^ 0x46;
  LODWORD(STACK[0x22B0]) = v52;
  *(a43 + (LODWORD(STACK[0x15D8]) + 37 * ((308228211 * v49) ^ v50 ^ (308228211 * (v52 ^ v46)))) % 0x46) = v51;
  return (*(v47 + 8 * (v45 ^ (1675 * (a2 > v44 + 3)))))();
}

uint64_t sub_26AA562E8@<X0>(unsigned int a1@<W2>, char a2@<W3>, char a3@<W5>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v47 = ~a4 + a1 - 1294800344 - ((2 * (~a4 + a1)) & 0x65A5D450);
  v48 = STACK[0x22B0] & 6;
  v49 = 37 * (v47 ^ 0xB2D2EA28);
  v50 = *(a44 + (v49 + 1258) % 0x46);
  v51 = *(a44 + v49 % 0x46);
  LODWORD(STACK[0x2190]) = v51;
  v52 = *(STACK[0x2180] + ((((v51 ^ 5) << ((((v45 - 52) & 0xEB) - 101) ^ v48 | v48 ^ 2)) ^ (v51 >> 2)) ^ 0x4Cu)) ^ 0xA7;
  v53 = v52 ^ (2 * v52 * v52 - ((4 * v52 * v52) & 8) + 5);
  STACK[0x2138] = v50;
  LOBYTE(v49) = a3 ^ a2;
  v54 = ((v50 ^ 5 ^ (v53 + 13)) - ((2 * (v50 ^ 5 ^ (v53 + 13))) & 0xA) + 5) ^ 5;
  *(a44 + (LODWORD(STACK[0x15D8]) + 37 * ((133051485 * (v51 ^ 5) - 1294800344 - ((266102970 * (v51 ^ 5)) & 0x65A5D450)) ^ v47 ^ (133051485 * (v53 + 13)))) % 0x46) = (v49 ^ 0x43) - (v53 + 13) + v54 - ((2 * ((v49 ^ 0x43) - (v53 + 13) + v54)) & 0xA) + 5;
  v55 = *(v46 + 8 * (v45 ^ (1113 * (a1 > v44 + 4))));
  LODWORD(STACK[0x20F0]) = 477323025;
  return v55();
}

uint64_t sub_26AA564BC(int a1, uint64_t a2, unsigned int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v54 = ~a4 + a3;
  v55 = ((v49 - 1968870850) & 0x755A9C79 ^ 0x84C) * v54;
  v56 = *(a48 + (v55 + 1258) % 0x46);
  v57 = (a5 + 1133471491 - ((2 * a5) & 0x871ECE06)) ^ a1;
  HIDWORD(v58) = v56 ^ 1;
  LODWORD(v58) = (v56 ^ 4) << 24;
  v59 = *(a48 + v55 % 0x46);
  v60 = ((*(STACK[0x20B8] + (((v59 ^ 5) - 39) ^ 0xADLL)) ^ 5) - 44);
  v61 = ((*(STACK[0x20B8] + (((v59 ^ 5) - 39) ^ 0xADLL)) ^ 5) - 44) ^ (v60 >> 2) ^ (v60 >> 1);
  v62 = *(v53 + (((*(STACK[0x2030] + ((v58 >> 26) ^ 0xA7) + 10) ^ 0x4B) + ((v58 >> 26) & 0xD9 ^ 0x59) + ((v58 >> 26) & 0xD9) - 115) ^ 0x1ELL));
  v63 = STACK[0x15D8];
  STACK[0x1EE0] = v59;
  *(a48 + (v63 + (v54 - 868230991 * (v57 ^ 0x438F6740) + 868230991 * (v61 ^ 0xC9)) * v52) % 0x46) = v62 ^ v59 ^ 0x43;
  v64 = *(v51 + 8 * (v49 ^ (1355 * (a3 > v48 + 5))));
  LODWORD(STACK[0x20F0]) = v50 - 1;
  return v64();
}

uint64_t sub_26AA5665C@<X0>(int a1@<W0>, int a2@<W2>, unsigned __int8 a3@<W4>, int a4@<W5>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  LODWORD(STACK[0x22A0]) = v47 ^ 0xFFFFFFCC;
  LODWORD(STACK[0x2288]) = a5 + 44;
  v52 = (v48 + 625) ^ 0x593;
  LODWORD(STACK[0x2208]) = a4 ^ a3 ^ v52 ^ 0x1B4;
  LODWORD(STACK[0x1B38]) = a1 ^ 0xFFFFFFBA;
  v53 = v51;
  v54 = ~v45 + a2 - 1294800344 - ((2 * (~v45 + a2)) & 0x65A5D450);
  STACK[0x1DE8] = LODWORD(STACK[0x22B0]);
  STACK[0x1FD8] = v46;
  v55 = STACK[0x2260];
  v56 = STACK[0x2290];
  v57 = *(a45 + ((v54 ^ 0xB2D2EA28) + 34) * v49 % 0x46);
  v58 = *(a45 + (v54 ^ 0xB2D2EA28) * v49 % 0x46);
  LODWORD(STACK[0x20D0]) = v58;
  v59 = *(v56 + (((v58 ^ (v52 + 84)) + 111) ^ 0xF8)) ^ 5;
  v60 = (-111 * v59) ^ (68 * v59 * -111 * v59) ^ 0x3B;
  v61 = ((v60 >> 2) | (v60 << 6)) + (~(v60 >> 1) | 0xFFFFFFC1) - 96;
  v62 = v61 ^ 0x9F;
  LODWORD(STACK[0x20D8]) = v61;
  v63 = *(v55 + ((-55 * (v57 ^ 0x9A ^ v61)) ^ 0xF2));
  HIDWORD(v65) = v63 ^ 1;
  LODWORD(v65) = (v63 ^ 4) << 24;
  v64 = v65 >> 26;
  v66 = (v64 ^ ((v64 & 0xFC) >> 2)) >> ((v54 & 3 ^ 3) + (v54 & 3u));
  v67 = (v63 & 0x13 ^ 1 | v63 & 0x13 ^ 0x12) ^ v64;
  v68 = STACK[0x2208];
  STACK[0x2138] = (v67 ^ v66) - ((2 * (v67 ^ v66) + 12) & 0xA) - 53;
  LOBYTE(v66) = ((v67 ^ v66) - ((2 * (v67 ^ v66) + 12) & 0xA) - 53) ^ 5;
  *(a45 + (LODWORD(STACK[0x15D8]) + ((v54 ^ 0xB2D2EA28) - 1255821383 * (v58 ^ (v52 + 84)) + 1255821383 * v62) * v49) % 0x46) = v62 - (v68 ^ 3) + v66 - ((2 * (v62 - (v68 ^ 3) + v66)) & 0xA) + 5;
  LODWORD(STACK[0x22B8]) = v50;
  return (*(v53 + 8 * ((2442 * ((v50 ^ 0x1C735F11u) > v45 + 1)) ^ v52)))();
}

uint64_t sub_26AA568EC@<X0>(int a1@<W0>, int a2@<W6>, int a3@<W7>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v49 = ~a4 + v45;
  v50 = *(a44 + (37 * v49 + 1258) % 0x46);
  HIDWORD(v51) = v50 ^ 1;
  LODWORD(v51) = (v50 ^ 4) << 24;
  v52 = *(STACK[0x2180] + ((v51 >> 26) ^ 0x4DLL));
  v53 = *(a44 + 37 * v49 % 0x46);
  v54 = v52 ^ (2 * (v52 ^ 0xFFFFFFA7) * (v52 ^ 0xFFFFFFA7));
  LOBYTE(v52) = *(STACK[0x2290] + (((v53 ^ 5) + 111) ^ 0xF8)) ^ 5;
  LOBYTE(v52) = (-111 * v52) ^ (68 * v52 * -111 * v52) ^ 0x3B;
  v55 = v49 + 1874741495 * ((a1 + v46 - ((v47 - 2028026467) & (2 * a1))) ^ a3) - 1874741495 * ((v52 >> 2) | (v52 << 6));
  v56 = STACK[0x22B8] & 0x25;
  STACK[0x20C8] = v53;
  v57 = ((v54 ^ 0xFFFFFFA2) + 13) ^ v53;
  STACK[0x2138] = v57;
  *(a44 + (v55 + 34) * (v56 ^ 0x24 | v56 ^ 1u) % 0x46) = v57;
  return (*(v48 + 8 * (a2 ^ (4291 * (v45 > v44 + 2)))))();
}

uint64_t sub_26AA56A60(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v53 = (v49 - v48) * a4;
  v54 = *(a48 + (v53 - 111) % (a7 - 363));
  v55 = STACK[0x2138] ^ 5 ^ v50;
  v56 = v53 + 1147 - 70 * (((((v53 + 1147) >> 1) * v51) >> 32) >> 5);
  v57 = ((*(a48 + v56) ^ 5) + 111) ^ 0x74;
  v58 = *(STACK[0x2298] + (((*(a48 + v56) ^ 5) + 111) ^ 0xE0)) ^ v57 ^ (v57 - ((2 * v57 + 2) & 0xA) - 114) ^ 0x37;
  v59 = ((v58 >> 2) | (v58 << 6)) ^ v54;
  STACK[0x1900] = v59;
  *(a48 + v56) = (v54 ^ 5) - v55 + (v59 ^ 5) - ((2 * ((v54 ^ 5) - v55 + (v59 ^ 5))) & 0xA) + 5;
  return (*(v52 + 8 * (a7 ^ (3296 * (v49 > v48 + 3)))))();
}

uint64_t sub_26AA56B50(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v53 = v48 ^ a1;
  v54 = ~a5 + v50;
  v55 = *(v52 + ((((a7 - 54) & 0xED ^ 0xB0) + (*(a48 + (37 * v54 + 1258) % 0x46) ^ 5)) ^ 0x1ELL));
  v56 = *(a48 + ((v54 & 0x25 ^ 0x25) + (v54 & 0x25)) * v54 % 0x46);
  v57 = *(a48 + 37 * v54 % 0x46);
  STACK[0x2278] = v56;
  v58 = *(v52 + (((v57 ^ 5) - 39) ^ 0x1ELL));
  STACK[0x1900] = v58 ^ 0x46;
  v58 ^= 0x43uLL;
  STACK[0x2280] = v58;
  *(a48 + (LODWORD(STACK[0x15D8]) + 37 * ((-717816607 * v53) ^ v54 ^ (-717816607 * v58))) % 0x46) = ((v55 ^ 0x40) - ((2 * v55) & 0xA) + 5) ^ v56 ^ 6;
  return (*(v51 + 8 * (a7 ^ (2587 * (v50 > v49 + 4)))))();
}

uint64_t sub_26AA56CA8@<X0>(char a1@<W0>, int a2@<W6>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v50 = a3 * v45;
  v51 = v50 + 1147 - (v50 + 1147) / 0x46u * v43;
  v52 = *(a43 + v50 - 111 - (v50 - 111) / 0x46u * v43);
  v53 = ((*(STACK[0x20B8] + (((v52 ^ *(a43 + v51)) - 39) ^ (a2 - 4))) ^ v46) - 44);
  v54 = ((*(STACK[0x20B8] + (((v52 ^ *(a43 + v51)) - 39) ^ (a2 - 4))) ^ v46) - 44) ^ v52 ^ (v53 >> 2) ^ (v53 >> 1);
  *(a43 + v51) = (v48 ^ a1 ^ v54 ^ 0xCF) + (~(2 * (v48 ^ a1 ^ v54 ^ 0xCF)) | 0xF5) + 6;
  v55 = *(v49 + 8 * (a2 ^ (2076 * (v44 + 5 < v47))));
  LODWORD(STACK[0x20E0]) = v52;
  STACK[0x18F8] = v52;
  return v55();
}

uint64_t sub_26AA56D6C@<X0>(char a1@<W4>, int a2@<W6>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v46 = a1 ^ 0xCC;
  v47 = ~a3 + v44;
  v48 = *(a43 + (37 * v47 + 1258) % 0x46);
  v49 = *(a43 + 37 * v47 % 0x46);
  v50 = (*(a43 + ((v47 ^ (a3 - v44)) & 0x25) * v47 % 0x46) ^ 5) + 111;
  v51 = *(STACK[0x1B58] + (v50 ^ 0xE0)) ^ 0x37 ^ ((((v50 ^ 0x74) - 119) ^ v50 ^ 0x74) + ((2 * (((v50 ^ 0x74) - 119) ^ v50 ^ 0x74)) & 8 ^ 0xFFFFFFFD) + 6);
  v52 = ((v51 >> 2) | (v51 << 6)) - ((2 * ((v51 >> 2) | (v51 << 6))) & 0xFFFFFF8C) - 58;
  STACK[0x2258] = v52 ^ 0xFFFFFFC6;
  v53 = (((v51 >> 2) | (v51 << 6)) - ((2 * ((v51 >> 2) | (v51 << 6))) & 0x8C) - 58) ^ 0xC6;
  STACK[0x1FF0] = v52;
  STACK[0x2138] = v49;
  v54 = v53 - (v49 ^ 5) + (v48 ^ (((v51 >> 2) | (v51 << 6)) - ((2 * ((v51 >> 2) | (v51 << 6))) & 0x8C) - 58) ^ 0xC3);
  *(a43 + (LODWORD(STACK[0x15D8]) + 37 * (v46 + v47 - v53)) % 0x46) = v54 - ((2 * v54) & 0xA) + 5;
  v55 = *(v45 + 8 * (a2 ^ (2258 * (v44 > v43 + 6))));
  LODWORD(STACK[0x2270]) = (a2 - 401) | 0x849;
  STACK[0x18F8] = LODWORD(STACK[0x20E0]);
  return v55();
}

uint64_t sub_26AA56EE8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v53 = ~a5 + v50;
  v54 = *(a48 + (((a7 + 1720) ^ 0xC83) + 37 * v53) % 0x46);
  v55 = *(a48 + 37 * v53 % 0x46);
  STACK[0x1628] = v55;
  v56 = v55 ^ v48;
  v57 = *(STACK[0x21B8] + ((v56 - 39) ^ 0x1ELL));
  v58 = (v57 ^ 0x43) - (v51 ^ a1) + (v54 ^ 0x46 ^ v57);
  STACK[0x2250] = v56;
  STACK[0x2240] = v57 ^ 0x43;
  *(a48 + (LODWORD(STACK[0x15D8]) + 37 * (v53 - v56 + (v57 ^ 0x43))) % 0x46) = v58 - ((2 * v58) & 0xA) + 5;
  v59 = STACK[0x21B8];
  v60 = *(v52 + 8 * (a7 ^ (2651 * (v50 > v49 + 7))));
  STACK[0x18F8] = LODWORD(STACK[0x20E0]);
  return v60();
}

uint64_t sub_26AA56FE8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v55 = ~a5 + v49;
  v56 = *(a48 + (v55 * v50 + 1258) % ((v54 | 0x849) ^ 0x82Fu));
  v57 = *(a48 + v55 * v50 - 70 * (((((v55 * v50) >> 1) * v51) >> 32) >> 5));
  STACK[0x2238] = v57 ^ 5;
  v58 = LODWORD(STACK[0x15D8]) + (((v52 ^ a1) * ((v55 ^ (a5 - v49)) & 0x547CF09D)) ^ v55 ^ (1417474205 * (v57 ^ 5))) * v50;
  *(a48 + v58 - 70 * ((((v58 >> 1) * v51) >> 32) >> 5)) = v57 ^ v56 ^ 5;
  v59 = *(v53 + 8 * (a7 ^ (2536 * (v49 > v48 + 8))));
  LODWORD(STACK[0x1D08]) = 296268109;
  STACK[0x1620] = v57;
  STACK[0x1618] = v57;
  STACK[0x18F8] = LODWORD(STACK[0x20E0]);
  return v59();
}

uint64_t sub_26AA570CC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v52 = (37 * v50 + 1147) % 0x46u;
  v53 = *(a48 + (37 * v50 - 111) % 0x46u);
  v54 = (v53 ^ 5) - (a5 ^ a1) + (*(a48 + v52) ^ v53);
  *(a48 + v52) = v54 - ((2 * v54) & 0xA) + 5;
  v55 = *(v51 + 8 * ((2941 * (((a7 + 1513978684) & 0xA5C28B7B ^ 0x860) + v48 < v49)) ^ a7));
  LODWORD(STACK[0x1D08]) = STACK[0x1590];
  STACK[0x1618] = STACK[0x1620];
  STACK[0x18F8] = LODWORD(STACK[0x20E0]);
  return v55();
}

uint64_t sub_26AA571A4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v52 = a5 ^ a1;
  v53 = ~v50 + v49;
  v54 = (a7 - 396) * v53;
  v55 = *(a48 + (v54 + 1258) % 0x46);
  v56 = *(a48 + v54 % ((((a7 - 239) | 0x1D) ^ 0x248039) & ((a5 & 0x12665F ^ 0x12665F) + (a5 & 0x12665Fu))));
  v57 = *(a48 + v54 % 0x46);
  v58 = v57 ^ 5;
  LODWORD(v57) = v57 ^ v55;
  STACK[0x1610] = v57 ^ 5;
  STACK[0x1608] = v56;
  v56 ^= 5uLL;
  STACK[0x2220] = v56;
  STACK[0x2228] = v58;
  *(a48 + (LODWORD(STACK[0x15D8]) + 37 * (v53 - v58 + v52)) % 0x46) = v58 - v56 + v57 + (~(2 * (v58 - v56 + v57)) | 0xF5) + 6;
  v59 = *(v51 + 8 * (a7 ^ (118 * (v48 + 10 < v49))));
  LODWORD(STACK[0x1D08]) = STACK[0x1590];
  STACK[0x1618] = STACK[0x1620];
  STACK[0x18F8] = LODWORD(STACK[0x20E0]);
  return v59();
}

void sub_26AA572D4(char a1@<W0>, unsigned __int8 a2@<W2>, uint64_t a3@<X3>, int a4@<W4>, unsigned __int8 a5@<W5>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v54 = v52 ^ a1;
  v55 = ~a4 + v49;
  v56 = v53 + 210;
  v57 = *(a47 + 37 * v55 % 0x46u);
  v58 = v57 ^ 5;
  v59 = ((v57 ^ 5) + 111) ^ 0xE0;
  v60 = *(STACK[0x2298] + v59) ^ v56 ^ 0xFFFFFFC5 ^ ((v57 ^ 5) + 111) ^ ((v56 ^ 0xFFFFFFC5 ^ ((v57 ^ 5) + 111)) - ((2 * (v56 ^ 0xFFFFFFC5 ^ ((v57 ^ 5) + 111)) + 2) & 0xA) - 114) ^ 0x37;
  LODWORD(STACK[0x2218]) = ((v60 << 6) | (v60 >> 2)) - ((v60 >> 1) & 0xA);
  v61 = v57;
  v62 = *(STACK[0x2290] + (((((v60 << 6) & 0x80 ^ 0xB4) + ((v60 << 6) & 0x80)) ^ ((*(a47 + 37 * v55 + 1258 - (37 * v55 + 1258) / 0x46u * v51) ^ v57) + 111)) ^ ((v59 & 0x4C ^ 0x4C) + (v59 & 0x4C)))) ^ 5;
  v63 = (-111 * v62) ^ 0x3B;
  v64 = (v63 ^ (68 * v62 * -111 * v62)) >> ((((v60 >> 2) & 6) + ((v60 >> 2) & 6 ^ 6) - 4) & 0xFE);
  STACK[0x1600] = v64 + (v63 << 6) - ((2 * v64) & 0xAu) + 5;
  LOBYTE(v63) = v54 - (v57 ^ 5) + ((v64 + (v63 << 6) - ((2 * v64) & 0xA) + 5) ^ 5);
  v65 = (LODWORD(STACK[0x2218]) + 5);
  LODWORD(v64) = v55 - 125471807 * v58;
  STACK[0x1610] = v65;
  v66 = v65 ^ 5;
  *(a47 + LODWORD(STACK[0x15D8]) + 37 * (v64 + 125471807 * (v65 ^ 5)) - (LODWORD(STACK[0x15D8]) + 37 * (v64 + 125471807 * (v65 ^ 5))) / 0x46 * v51) = v63 - ((2 * v63) & 0xA) + 5;
  LOBYTE(v64) = (LODWORD(STACK[0x2270]) ^ 0x88) + LODWORD(STACK[0x2288]);
  v67 = LODWORD(STACK[0x20E0]);
  v68 = STACK[0x2278] ^ 5;
  v69 = (STACK[0x2240] << 24) | (v48 << 40) | ((v67 ^ 5) << 8) | (a7 << 16) | v68;
  v70 = ((STACK[0x2220] << 48) | (v58 << 56) | v69) - 0x1FF524812BF531B6 - 2 * (((STACK[0x2220] << 48) | (v58 << 56) | v69) & 0x600ADB00D40ACE7BLL ^ v68 & 0x31);
  v71 = STACK[0x2238] << 32;
  STACK[0x1918] ^= 0xE00ADB7ED40ACE4ALL ^ v71 ^ v70;
  v72 = a2;
  v73 = v48;
  v74 = v50 << 48;
  v75 = STACK[0x2258];
  v76 = STACK[0x1FD8] ^ 5;
  v77 = (v74 + (a5 << 40)) ^ ((((LODWORD(STACK[0x22A0]) ^ 5u) << 8) | ((STACK[0x1DE8] ^ 5u) << 16) & 0xFFFFFFFF00FFFFFFLL | ((LODWORD(STACK[0x2190]) ^ 5u) << 24)) + ((LODWORD(STACK[0x1B38]) ^ 0x73u) << 32) + v76);
  STACK[0x1FA0] ^= (v72 << 40) ^ (a6 << 48) ^ (a3 << 56) ^ ((v64 << 24) + (v47 ^ 5u | ((STACK[0x1EC0] ^ 5u) << 8) | ((LODWORD(STACK[0x22B0]) ^ 5u) << 16) | ((STACK[0x1EE0] ^ 5u) << 32)));
  v78 = (v75 << 16) | (STACK[0x2250] << 24) | (v73 << 40) | STACK[0x2280] & 0xFFFFFFFFFFFF00FFLL | ((v67 ^ 5u) << 8) | (STACK[0x2228] << 48);
  STACK[0x1910] ^= 0xFD982B884CED010BLL ^ v71 ^ (v78 - 0x267D477B312FEF5 - ((2 * v78) & 0x7B30571099DA0216)) ^ (v66 << 56);
  STACK[0x1928] ^= 0x293F37071C5A0040 ^ (a3 << 56) ^ (v77 + 0x293F37071C5A0040 - 2 * (v77 & 0x293F37071C5A006ELL ^ v76 & 0x2E));
  LODWORD(STACK[0x1D08]) = STACK[0x1590];
  STACK[0x1618] = STACK[0x1620];
  STACK[0x18F8] = v67;
  STACK[0x15F8] = v61;
  v79 = STACK[0x2030];
  v80 = LODWORD(STACK[0x22B8]);
  JUMPOUT(0x26AA55F94);
}

uint64_t sub_26AA576F0(uint64_t a1, int a2)
{
  LODWORD(STACK[0x22A0]) = v2;
  v3 = (v2 + 1386);
  STACK[0x2068] = v3;
  v4 = (((v3 + 0x6D7BCA259D7FF22DLL) ^ (STACK[0x1FA0] << 23)) + 0x2D085CDAF7944B3BLL - ((2 * ((v3 + 0x6D7BCA259D7FF22DLL) ^ (STACK[0x1FA0] << 23))) & 0x5A10B9B5EF000000)) ^ STACK[0x1FA0];
  STACK[0x2238] = (v2 - 120986770) & 0x7361DFA;
  v5 = STACK[0x1918];
  v6 = v4 ^ (STACK[0x1918] >> 26) ^ (v4 >> ((v2 + 110) & 0xFA ^ 0xC3u)) ^ 0x3802B6DFB5;
  v7 = (v6 - 0x1FF524812BF531B6 - ((2 * v6) & 0xC015B6FDA8159C94)) ^ STACK[0x1918];
  v8 = (((v5 << 23) ^ 0xBF6A056725000000) - 0x1FF524812BF531B6 - ((2 * ((v5 << 23) ^ 0xBF6A056725000000)) & 0xC015B6FDA8000000)) ^ v5;
  v9 = v8 ^ (v8 >> 17) ^ v7 ^ (v7 >> 26);
  v10 = (((STACK[0x1928] << 23) ^ 0x838E2D0020000000) + 0x293F37071C5A0040 - ((2 * ((STACK[0x1928] << 23) ^ 0x838E2D0020000000)) & 0x527E6E0E38000000)) ^ STACK[0x1928];
  v11 = STACK[0x1910];
  v12 = v10 ^ (STACK[0x1910] >> 26) ^ (v10 >> 17) ^ 0x3F660AE213;
  v13 = (((v11 << 23) ^ 0xC426768085800000) - 0x267D477B312FEF5 - ((2 * ((v11 << 23) ^ 0xC426768085800000)) & 0xFB30571099000000)) ^ v11;
  v14 = (v12 - 0x267D477B312FEF5 - ((2 * v12) & 0xFB30571099DA0216)) ^ STACK[0x1910];
  v15 = v13 ^ (v13 >> 17) ^ v14 ^ (v14 >> 26);
  STACK[0x1928] = v15 ^ 0x293F37071C5A0040;
  v16 = v15 ^ 0x293F37071C5A0040 ^ v14 ^ (v14 << 23) ^ (((v15 >> 26) ^ ((v14 ^ (v14 << 23)) >> 17)) + 0x293F37071C5A0040 - ((2 * ((v15 >> 26) ^ ((v14 ^ (v14 << 23)) >> 17))) & 0x6E0E38B40080));
  v17 = ((v9 << 23) + 0x6EBDA069B2D2EA28 - ((v9 << 24) & 0xDD7B40D365000000)) ^ v9 ^ 0x6EBDA069B2D2EA28;
  v18 = (v16 >> 26) ^ (v17 >> 17);
  v19 = v16 ^ 0xE00ADB7ED40ACE4ALL;
  v20 = ((v16 << 23) - 0x1FF524812BF531B6 - ((v16 << 24) & 0xC015B6FDA8000000)) ^ v16 ^ 0xE00ADB7ED40ACE4ALL;
  v21 = v20 ^ (v20 >> 17);
  v22 = ((v18 ^ v17) - 0x1FF524812BF531B6 - ((2 * (v18 ^ v17)) & 0xC015B6FDA8159C94)) ^ v16 ^ 0xE00ADB7ED40ACE4ALL;
  v23 = v21 ^ v22 ^ (v22 >> 26);
  STACK[0x15E0] = v9 ^ 0x6EBDA069B2D2EA28;
  v24 = v9 ^ 0x6EBDA069B2D2EA28 ^ v7 ^ (v7 << 23) ^ (((v9 >> 26) ^ ((v7 ^ (v7 << 23)) >> 17)) + 0x6EBDA069B2D2EA28 - ((2 * ((v9 >> 26) ^ ((v7 ^ (v7 << 23)) >> 17))) & 0x40D365A5D450));
  STACK[0x1FD0] = v23 ^ 0xFD982B884CED010BLL;
  v25 = ((v22 ^ ((v22 ^ (v22 << 23)) >> 17) ^ v23 ^ 0xB ^ ((v23 >> 26) - ((v23 >> 25) & 0x16) + 11)) + v23);
  LODWORD(STACK[0x1F60]) = v25;
  v26 = v24 ^ (v24 << 8) ^ v16 ^ v25;
  v27 = -v26 & 7;
  LODWORD(STACK[0x2288]) = v27;
  if ((v26 & 7) != 0)
  {
    v28 = 255;
  }

  else
  {
    v28 = 0;
  }

  STACK[0x1FE8] = v19;
  v29 = v19 ^ v17 ^ (v18 - 0x1FF524812BF531B6 - ((2 * v18) & 0xB6FDA8159C94));
  v30 = v21 ^ (v29 >> 26);
  v31 = v30 ^ v29;
  v32 = v16 - v24 + ((v30 ^ ((v29 ^ (v29 << 23)) >> 17) ^ ((v30 ^ v29) >> 26)) + (v30 ^ v29));
  v33 = (2 * v32) & 0x8E9DC6A0;
  v34 = v26 & 7;
  v35 = ((((v28 << v27) + 111) ^ 0x74) + ((12 - 2 * (((v28 << v27) + 111) ^ 0x74)) | 0xF5) - 113) ^ ((v28 << v27) + 111) ^ 0x74 ^ *(STACK[0x2298] + (((v28 << v27) + 111) ^ 0xE0)) ^ 0x37;
  v36 = (v35 >> 2) & 0xFFFFFF3F | ((v35 & 3) << 6);
  if ((v26 & 7) != 0)
  {
    v37 = ~v36;
  }

  else
  {
    v37 = 0;
  }

  LODWORD(STACK[0x22B8]) = v37;
  LODWORD(STACK[0x2280]) = v32 - 951131312 - v33;
  v38 = (((v32 + 80 - v33) & 0x23 ^ 0x23) + ((v32 + 80 - v33) & 0x23)) & 0x40;
  v39 = v32 & 7;
  if ((v32 & 7) != 0)
  {
    v38 = 255;
  }

  LODWORD(STACK[0x2228]) = 8 - v39;
  v40 = (8 - v39) & 7;
  v41 = STACK[0x2030] + 2901;
  STACK[0x2258] = v41;
  v42 = (201 * (v38 << v40)) ^ a2 ^ (((201 * (v38 << v40)) ^ a2) + ((8 - 2 * ((201 * (v38 << v40)) ^ a2)) | 0xFFFFFFF5) - 95) ^ *(v41 + ((-55 * (v38 << v40)) ^ 0x3ELL)) ^ 0x1C;
  STACK[0x21D8] = 62 - v42 - ((2 - 2 * v42) & 0xA);
  v43 = (v5 ^ 0x4A) + 2 * v7 + (LODWORD(STACK[0x22A8]) ^ 5) + v9;
  v44 = v14 + (v11 ^ 0xB) + (LODWORD(STACK[0x22C0]) ^ 5) + v15 + v14;
  v45 = ((*(STACK[0x20B8] + (((v15 ^ 0x40 ^ v14 ^ (((v15 >> 26) ^ ((v14 ^ (v14 << 23)) >> 17)) + 64 - ((2 * ((v15 >> 26) ^ ((v14 ^ (v14 << 23)) >> 17))) & 0x80))) + v29 - 39) ^ 0xADLL)) ^ 5) - 44);
  v46 = ((*(STACK[0x20B8] + (((v15 ^ 0x40 ^ v14 ^ (((v15 >> 26) ^ ((v14 ^ (v14 << 23)) >> 17)) + 64 - ((2 * ((v15 >> 26) ^ ((v14 ^ (v14 << 23)) >> 17))) & 0x80))) + v29 - 39) ^ 0xADLL)) ^ 5) - 44) ^ (v45 >> 2) ^ (v45 >> 1);
  STACK[0x2060] = v24;
  LOBYTE(v43) = v24 + v9 + ((v43 - ((2 * v43) & 0xA) + 5) ^ 5);
  v47 = v9 - v15 + (v31 + v29);
  v48 = v43 - ((2 * v43) & 0xE7) + 115;
  STACK[0x1EE8] = v44;
  LOBYTE(v49) = v44 + (v15 ^ 0x40 ^ v14 ^ (((v15 >> 26) ^ ((v14 ^ (v14 << 23)) >> 17)) + 64 - ((2 * ((v15 >> 26) ^ ((v14 ^ (v14 << 23)) >> 17))) & 0x80))) + v15;
  LODWORD(v44) = ((v46 - ((2 * v46) & 0xE7) + 115) ^ v48);
  v49 = v49;
  v50 = v48 ^ 0x73;
  LODWORD(STACK[0x2058]) = v44;
  v51 = ((v44 ^ (v50 << 7)) + v49 - (((v44 ^ (v50 << 7)) & v49) << (v43 & 1) << !(v43 & 1))) ^ (v49 << 7);
  v52 = 16843009 * (v51 & 0xFE ^ 0xC8) + 1083968301 - ((33686018 * (v51 & 0xFE ^ 0xC8)) & 0x81381658);
  LODWORD(v41) = (v23 + v22) ^ v15 ^ v9;
  v53 = v50 - v49 + (v22 + (v15 ^ 0x40 ^ v14 ^ (((v15 >> 26) ^ ((v14 ^ (v14 << 23)) >> 17)) + 64 - ((2 * ((v15 >> 26) ^ ((v14 ^ (v14 << 23)) >> 17))) & 0x80))));
  LODWORD(STACK[0x22A8]) = v26 ^ (v16 << 8);
  v54 = (v53 + 926693100) | v41;
  LODWORD(STACK[0x21F0]) = v41;
  LODWORD(STACK[0x1FC8]) = HIBYTE(v54);
  v55 = HIBYTE(v54) ^ 0xFA ^ (((v53 - 20) | v41) ^ (((v53 + 14060) | v41) >> 8) ^ BYTE2(v54));
  v56 = 16843009 * (v53 & 0xFE);
  v57 = v52 ^ 0x409C0B2D;
  LODWORD(STACK[0x2188]) = 1997498092 - (v52 ^ 0x409C0B2D);
  LODWORD(STACK[0x2250]) = 1997498092 - (v52 ^ 0x409C0B2D) + v56 + 1083968301 - ((2 * (1997498092 - (v52 ^ 0x409C0B2D) + v56)) & 0x8138165A);
  v59 = v32 & 7;
  v58 = (v32 & 7) == 0;
  v60 = v34;
  v61 = 1499685823 - v59 + v34 - 444723235 * (v59 - v34);
  v62 = v51 ^ 0xC9;
  v63 = v47;
  LODWORD(STACK[0x2100]) = v47;
  v64 = ((v51 ^ 0xC9) + 926693100) | v47;
  LODWORD(v44) = ((((v51 ^ 0xC9) - 20) | v47) ^ ((((v51 ^ 0xC9) + 14060) | v47) >> 8) ^ BYTE2(v64)) ^ HIBYTE(v64) ^ 0x9C;
  v65 = (538976288 * v44) ^ 0x93939380;
  LODWORD(STACK[0x21C0]) = v44;
  v66 = 16843009 * v44;
  v67 = 16843009 * v55;
  v68 = (16843009 * v55) ^ 0xFAFAFAFA;
  LODWORD(STACK[0x21A8]) = -1050886881 * v68;
  v69 = 1997498092 - -1050886881 * v68;
  v70 = v66 ^ 0x9C9C9C9C;
  LODWORD(STACK[0x21A0]) = v69;
  LODWORD(STACK[0x2038]) = v66;
  LODWORD(STACK[0x2160]) = v66 ^ 0x6A499A80;
  v71 = ((v65 ^ (v69 - 1050886881 * v70)) - 153811428 - 2 * ((v65 ^ (v69 - 1050886881 * v70)) & 0x76D5061E ^ (v69 - 1050886881 * v70) & 2)) ^ v66 ^ 0x6A499A80;
  LODWORD(STACK[0x21F8]) = v71;
  LODWORD(STACK[0x2240]) = ((538976288 * v55) ^ 0x5F5F5F40 ^ v71) - 1642741227 - 2 * (((538976288 * v55) ^ 0x5F5F5F40 ^ v71) & 0x1E15C21F ^ v71 & 0xA);
  LODWORD(STACK[0x22B0]) = v40;
  v72 = STACK[0x2288];
  v73 = v40 + 1499685823 - v72 - 1976331777 * v72;
  LODWORD(STACK[0x2200]) = v73;
  v74 = (v73 + 1976331777 * v40) ^ (-915377183 * v40);
  v75 = v60 ^ v59 ^ 0x2520EA12 ^ ((v61 ^ (8 * (v60 ^ v59))) + 622914066 - ((2 * (v61 ^ (8 * (v60 ^ v59)))) & 0x4A41D424));
  v76 = -1291845632 * v36;
  v77 = 16843009 * v36;
  v78 = (v53 & STACK[0x22B8]) ^ v77;
  v79 = v77 ^ ~(v76 & v41);
  v80 = v51 & 0xFFFFFF01 ^ 1;
  v81 = (v42 - 58);
  v82 = 16843009 * v81;
  v83 = (1358954496 * v81) & v63;
  v84 = ((v51 & 0xFE ^ 0xC8) + 45 - ((2 * (v51 & 0xFE ^ 0xC8)) & 0x58)) ^ 0x2D;
  LODWORD(STACK[0x2270]) = v83;
  v85 = (v84 ^ v80) - (v83 ^ (16843009 * v81));
  LODWORD(STACK[0x21B0]) = v78;
  LODWORD(STACK[0x21E0]) = v78 - 837247835 - ((2 * v78) & 0x9C31394A);
  v86 = STACK[0x21D8] ^ 5;
  if (v58)
  {
    v86 = 0;
  }

  v87 = STACK[0x2280];
  v88 = STACK[0x2280] & 0xFFFFFFF8 ^ 0xC74EE350;
  STACK[0x22C0] = v59;
  LODWORD(STACK[0x2120]) = v88;
  v89 = v88 | v59;
  LODWORD(STACK[0x2118]) = v53 & 0xFFFFFF01;
  v90 = 344860875 * (v87 ^ 0xC74EE350);
  LODWORD(STACK[0x2170]) = v90;
  LODWORD(STACK[0x2108]) = 344860875 * (v88 | v59);
  v91 = (344860875 * v89) ^ v90 ^ ((v62 & v86 ^ v82) + 2117378885 * ((v87 ^ 0x38B11CAF) + v89) + 2117378885);
  v92 = v84 + v80;
  LODWORD(STACK[0x2148]) = v91;
  v93 = (v91 ^ ((v87 ^ 0xC74EE350) >> 2)) - 951131312 - ((2 * (v91 ^ ((v87 ^ 0xC74EE350) >> 2))) & 0x8E9DC6A0);
  LODWORD(STACK[0x1FD8]) = v51;
  v94 = v85 + (v51 ^ 0xFFFFFF36);
  LODWORD(STACK[0x21D0]) = v94;
  v95 = v94 - v62 + v92;
  LODWORD(STACK[0x2208]) = v92;
  LODWORD(STACK[0x2220]) = v95;
  LODWORD(STACK[0x2128]) = v95 + 420976973 * (v62 - v92) + 885051174 - ((2 * (v95 + 420976973 * (v62 - v92))) & 0x69819E4C);
  LODWORD(STACK[0x1F30]) = v53;
  v96 = v54;
  v97 = v79;
  LODWORD(STACK[0x1F40]) = v53;
  LODWORD(STACK[0x21E8]) = v56 + 102503791 * (v53 + (v51 ^ 0xFFFFFF36)) + 2036303417 - ((2 * (v56 + 102503791 * (v53 + (v51 ^ 0xFFFFFF36)) + 102503791)) & 0xE686E194);
  v98 = STACK[0x22A8];
  v99 = LODWORD(STACK[0x22A8]) ^ v72;
  LODWORD(STACK[0x2218]) = LODWORD(STACK[0x22A8]) >> 4;
  LODWORD(STACK[0x21C8]) = v99;
  LODWORD(STACK[0x2140]) = v99 ^ (v98 >> 4);
  LODWORD(STACK[0x2278]) = v52;
  v100 = LODWORD(STACK[0x2250]) ^ v52;
  LODWORD(STACK[0x2110]) = v100;
  LODWORD(STACK[0x1D20]) = v57;
  v101 = (v56 ^ (v56 >> 1) ^ (v52 >> 1) ^ 0x204E0596 ^ v100) - v56 + v57;
  LODWORD(STACK[0x1ED8]) = v67;
  v102 = v67 ^ 0x64EF38EF;
  v103 = LODWORD(STACK[0x2240]) ^ v67 ^ 0x64EF38EF;
  LODWORD(STACK[0x1D18]) = v70;
  LODWORD(STACK[0x1CB0]) = v68;
  LODWORD(STACK[0x2178]) = v103;
  v104 = 536902897 * v70 - 536902897 * v68 + v103;
  LODWORD(STACK[0x20F8]) = v104;
  LODWORD(STACK[0x2198]) = v101;
  v105 = (v64 ^ 0x7BE2AC35) - -342118147 * v104 - 342118147 * v101;
  LODWORD(STACK[0x22B8]) = v105 + 1961751864 - ((2 * v105) & 0xE9DBEA70);
  v106 = (243 * ((((v53 & 0xFE) - 16) & 0xFE | v53 & 0xFE) != 0)) ^ LODWORD(STACK[0x22A0]);
  v107 = v74 ^ (-915377183 * v72);
  STACK[0x2240] = v89 ^ (v89 >> 2) ^ v93 ^ v87;
  v108 = LODWORD(STACK[0x2100]) ^ (LODWORD(STACK[0x2100]) >> 1) ^ v60;
  v109 = LODWORD(STACK[0x2160]);
  v110 = LODWORD(STACK[0x21F0]) ^ (LODWORD(STACK[0x21F0]) >> 1) ^ v108;
  LODWORD(STACK[0x21F0]) = 2 * v107;
  LODWORD(STACK[0x2100]) = v96 ^ 0xAAED8DCA ^ v107;
  v111 = v96 ^ 0xAAED8DCA ^ v107 ^ (2 * v107) ^ v75;
  v112 = *(STACK[0x22F8] + 8 * v106);
  v113 = LODWORD(STACK[0x22B0]) ^ 0x255D89CEu;
  LODWORD(STACK[0x2150]) = v102;
  LODWORD(STACK[0x2130]) = v52 >> 1;
  STACK[0x20E8] = v97;
  return v112(v111);
}

uint64_t sub_26AA58284@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned __int8 *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned __int8 *a25)
{
  LODWORD(STACK[0x1F50]) = v28;
  LODWORD(STACK[0x1F68]) = v30;
  LODWORD(STACK[0x2288]) = a1;
  LODWORD(STACK[0x22A0]) = a2;
  LODWORD(STACK[0x1F78]) = v27;
  LODWORD(STACK[0x1F70]) = v29;
  LODWORD(STACK[0x1F90]) = v25;
  LODWORD(STACK[0x1F98]) = v26;
  LODWORD(STACK[0x2250]) = a3;
  v31 = *(STACK[0x2260] + ((-55 * (a25[2151] ^ 5)) ^ 0xF2));
  v32 = STACK[0x2340];
  HIDWORD(v33) = v31 ^ 1;
  LODWORD(v33) = (v31 ^ 4) << 24;
  v34 = a25[2145];
  v35 = a25[2148];
  v36 = a25[2149];
  v37 = v36 ^ 5;
  STACK[0x1628] = v36;
  v38 = a25[2150];
  v39 = *a18;
  LODWORD(v36) = v39 ^ 5;
  STACK[0x1620] = v39;
  v40 = a25[2152];
  v41 = a25[2146];
  v42 = a25[2147];
  STACK[0x2138] = v42;
  v43 = a25[2156];
  v44 = a25[2159];
  v45 = a25[2155];
  v46 = a25[2157];
  v47 = a25[2154];
  STACK[0x1608] = v47;
  STACK[0x1EE0] = v43;
  STACK[0x1618] = v40;
  STACK[0x1610] = v34;
  v48 = v37 + 642072823 * (v34 ^ 5 ^ (439459117 * (-1430294965 * ((v43 ^ 5) - -25427295 * (v42 ^ 5)) - (v40 ^ 5)) + 1830560831));
  v49 = a25[2153];
  v50 = a25[2158];
  STACK[0x1600] = v49;
  STACK[0x1ED0] = v50;
  STACK[0x1EC0] = v46;
  STACK[0x15F8] = v38;
  STACK[0x18F8] = v45;
  STACK[0x21D8] = v41;
  STACK[0x1900] = v35;
  STACK[0x1EE8] = ((v33 >> 26) ^ ((v33 >> 26) >> 5) ^ ((v33 >> 26) >> 3) ^ 0x13) - 58;
  STACK[0x20C8] = v44;
  v51 = STACK[0x2068];
  v52 = STACK[0x22F8];
  v53 = *a9 + 111;
  v54 = *(STACK[0x2298] + ((*a9 + 111) ^ 0xE0)) ^ v53 ^ (((2 * v53) & 0x12) + (v53 ^ 0xFFFFFFFD) - ((STACK[0x2068] ^ 0x2D9) & (2 * (((2 * v53) & 0x12) + (v53 ^ 0xFFFFFFFD)))) + 5) ^ 0x43;
  v55 = ((-1189988113 * ((665696999 * ((v44 ^ 5) + 1287025131 * ((((v33 >> 26) ^ ((v33 >> 26) >> 5) ^ ((v33 >> 26) >> 3) ^ 0x13) - 58) - 39366897 * ((474075721 * (-(v41 ^ 5) - 1936429447 * (-1993010529 * (1110711087 * (-v36 - 18324213 * ((2054808921 * ((((v48 & 0x2CA372C8 ^ 0x2CA372C8) + (v48 & 0x2CA372C8)) ^ 0x6088254F) * ((v49 ^ 5) - -730628869 * v48) - (v50 ^ 5))) ^ v46 ^ 5)) - (v38 ^ 5)) - (v45 ^ 5)))) ^ v35 ^ 5)))) ^ v47 ^ 5)) ^ ((v54 >> 2) | (v54 << 6)) ^ 0xFFFFFFCF) + 111;
  LOBYTE(v55) = *(STACK[0x2298] + (v55 ^ 0xE0)) ^ v55 ^ 0x74 ^ ((v55 ^ 0x74) - ((2 * (v55 ^ 0x74) + 2) & 0xA) - 114) ^ 0x37;
  *v32 = (v55 >> 2) | (v55 << 6);
  return (*(v52 + 8 * v51))();
}

uint64_t sub_26AA58650@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, unsigned int a5@<W5>, int a6@<W6>, int a7@<W7>, int a8@<W8>)
{
  LODWORD(STACK[0x1F50]) = v17;
  LODWORD(STACK[0x1F68]) = v22;
  LODWORD(STACK[0x1F90]) = v9;
  LODWORD(STACK[0x1F98]) = v11;
  LODWORD(STACK[0x2250]) = a8;
  STACK[0x1FA0] = STACK[0x2060] ^ 0x2D085CDAF7944B3BLL;
  LODWORD(STACK[0x2060]) = v10;
  v23 = LODWORD(STACK[0x1FD8]) ^ 0x683D3C01;
  LODWORD(STACK[0x1FD8]) = STACK[0x22A8] & 0xFFFFFFF8;
  LODWORD(STACK[0x1FA8]) = LODWORD(STACK[0x2270]) ^ ~v19;
  LODWORD(STACK[0x2058]) -= 998501249;
  LODWORD(STACK[0x2068]) = -444723235 * v20;
  STACK[0x1ED0] = LODWORD(STACK[0x1FC8]) + (~(a5 >> 23) | 0xFFFFFFF5) + 6;
  v24 = STACK[0x1F30];
  LODWORD(STACK[0x1FB0]) = 423269765 * LODWORD(STACK[0x1F30]);
  LODWORD(STACK[0x1EC8]) = 874264495 * v24 + 47793804;
  LODWORD(STACK[0x1FB8]) = 16;
  STACK[0x1918] = STACK[0x1FE8];
  STACK[0x1910] = STACK[0x1FD0];
  LODWORD(STACK[0x1F70]) = v21;
  LODWORD(STACK[0x1FD0]) = v21;
  LODWORD(STACK[0x1D88]) = STACK[0x20A0];
  LODWORD(STACK[0x1FC0]) = 1997498092;
  v25 = v16;
  LODWORD(STACK[0x1F78]) = v12;
  LODWORD(STACK[0x20A0]) = v12;
  LODWORD(STACK[0x2288]) = a1;
  LODWORD(STACK[0x1F58]) = a1;
  LODWORD(STACK[0x22A0]) = a3;
  LODWORD(STACK[0x1F88]) = a3;
  LODWORD(STACK[0x1F48]) = a4;
  LODWORD(STACK[0x1F38]) = v24;
  LODWORD(STACK[0x1F80]) = STACK[0x21E0];
  v26 = STACK[0x1D10];
  LODWORD(STACK[0x1FC8]) = v14;
  v27 = STACK[0x20A8];
  v28 = STACK[0x1D08];
  v29 = STACK[0x2230];
  v30 = STACK[0x2210];
  v31 = STACK[0x1FE0];
  v32 = STACK[0x2098];
  v33 = STACK[0x20F0];
  LODWORD(STACK[0x1FE8]) = v15;
  v34 = STACK[0x1F40];
  v35 = (STACK[0x2238] - 2023829503) & 0x78A12FEF;
  v36 = (v18 + a2 - ((2 * v18) & 0x38E6BE22)) ^ v27;
  v37 = v31 ^ 0x4172BE28 ^ v26;
  v38 = v35 ^ 0x4172B7EB ^ v32 ^ v26;
  v39 = LODWORD(STACK[0x1F60]) - (v31 ^ a2);
  LODWORD(STACK[0x20A8]) = v18 ^ LODWORD(STACK[0x1F60]);
  v40 = v23 ^ v25 ^ 0x9EE83AD4;
  v41 = v28 ^ 0x11A8B14D;
  v42 = (v32 ^ a2) + (v28 ^ 0x11A8B14D);
  v43 = a7 + v41;
  v44 = v34 ^ a7;
  v45 = v33 ^ a2;
  LODWORD(STACK[0x1F20]) = v45 - (v25 ^ 0xF6D5061C);
  LODWORD(STACK[0x1F18]) = v34 - v45;
  v46 = (v23 ^ 0x683D3CC8) + a6;
  v47 = a6 - (LODWORD(STACK[0x2268]) ^ 0xF9405613);
  v48 = LODWORD(STACK[0x2268]) ^ (v24 - 113224173 - ((2 * v24) & 0xF280AC26));
  v49 = STACK[0x1FD0];
  LODWORD(STACK[0x1FE0]) = (LODWORD(STACK[0x2248]) ^ 0x438F6703) + LODWORD(STACK[0x1FD0]);
  v50 = STACK[0x2080];
  v51 = STACK[0x21A8];
  LODWORD(STACK[0x1EB8]) = LODWORD(STACK[0x21A8]) - (LODWORD(STACK[0x2080]) ^ 0x1C735F11);
  LODWORD(STACK[0x1E30]) = v38 - v51;
  LODWORD(STACK[0x1F60]) = v37 - v38;
  LODWORD(STACK[0x1E78]) = v37 ^ v49;
  v52 = (v29 ^ 0xF9405613) + v24;
  LODWORD(STACK[0x1F30]) = v29 ^ 0x902E73FD ^ v30;
  v53 = (v30 ^ 0x696E25EE) - v13;
  v54 = STACK[0x2270];
  v55 = v13 ^ LODWORD(STACK[0x2270]);
  v56 = STACK[0x2070];
  LODWORD(STACK[0x21A8]) = v50 ^ LODWORD(STACK[0x2070]);
  LODWORD(STACK[0x1F40]) = (v55 + 477323025 - ((2 * v55) & 0x38E6BE22)) ^ v56;
  v57 = STACK[0x21C8];
  v58 = STACK[0x2280];
  LODWORD(STACK[0x2070]) = (LODWORD(STACK[0x21C8]) - 951131312 - ((2 * LODWORD(STACK[0x21C8])) & 0x8E9DC6A0)) ^ LODWORD(STACK[0x2280]);
  LODWORD(STACK[0x2230]) = (v42 - 951131312 - ((2 * v42) & 0x8E9DC6A0)) ^ v58;
  v59 = v47 - 60001450 - ((2 * v47) & 0xF8D8E6AC);
  v60 = STACK[0x1920];
  v61 = STACK[0x22A8];
  LODWORD(STACK[0x1F28]) = LODWORD(STACK[0x22A8]) - (LODWORD(STACK[0x1920]) ^ 0xFD26ED80);
  v62 = STACK[0x2178];
  LODWORD(STACK[0x1FD0]) = LODWORD(STACK[0x2178]) ^ v61;
  LODWORD(STACK[0x1E60]) = v62 + v52 - 2 * v62;
  v63 = STACK[0x2110];
  LODWORD(STACK[0x2238]) = v60 ^ (LODWORD(STACK[0x2110]) - 47780480 - ((2 * LODWORD(STACK[0x2110])) & 0xFA4DDB00));
  v64 = STACK[0x2200];
  v65 = LODWORD(STACK[0x2078]) ^ 0x69D8B580;
  LODWORD(STACK[0x1E80]) = (LODWORD(STACK[0x2078]) ^ (LODWORD(STACK[0x2200]) + 1775809920 - ((2 * LODWORD(STACK[0x2200])) & 0xD3B16B00))) + 2 * (v65 & STACK[0x2200]);
  v66 = LODWORD(STACK[0x2028]) ^ 0x79936D97;
  v67 = LODWORD(STACK[0x1FF8]) ^ 0x46DB4974;
  LODWORD(STACK[0x1E40]) = v47 + v67;
  v68 = STACK[0x1FC0];
  LODWORD(STACK[0x1FF8]) = v67 - LODWORD(STACK[0x1FC0]);
  LODWORD(STACK[0x2078]) = v68 + v66;
  v69 = STACK[0x2188];
  LODWORD(STACK[0x2210]) = LODWORD(STACK[0x2188]) + v66;
  LODWORD(STACK[0x2028]) = v52 + v69;
  LODWORD(STACK[0x2188]) = v42 + v64;
  v70 = LODWORD(STACK[0x1D28]) ^ 0x34ABFED0;
  v71 = STACK[0x2008];
  LODWORD(STACK[0x2280]) = v70 + (LODWORD(STACK[0x2008]) ^ 0x48E7BC82);
  LODWORD(STACK[0x1FC0]) = v65 - v70;
  v72 = STACK[0x1B08];
  LODWORD(STACK[0x22A8]) = LODWORD(STACK[0x1B08]) ^ v59;
  v73 = STACK[0x2108];
  LODWORD(STACK[0x1E88]) = LODWORD(STACK[0x2108]) + (v72 ^ 0xFC6C7356);
  v74 = STACK[0x1D38];
  LODWORD(STACK[0x2178]) = v71 ^ 0x594F0DCF ^ LODWORD(STACK[0x1D38]);
  LODWORD(STACK[0x2008]) = v73 + (v74 ^ 0x11A8B14D);
  v75 = v54;
  v76 = STACK[0x1F58];
  v77 = STACK[0x21C0];
  LODWORD(STACK[0x1E70]) = v55 - LODWORD(STACK[0x21C0]);
  v78 = STACK[0x21B0];
  LODWORD(STACK[0x2080]) = v77 - LODWORD(STACK[0x21B0]);
  LODWORD(STACK[0x21B0]) = v78 ^ v44;
  LODWORD(STACK[0x2268]) = v53 ^ v44;
  v79 = STACK[0x1F48];
  v80 = LODWORD(STACK[0x20F8]) + (LODWORD(STACK[0x1F48]) ^ 0x9E15C215);
  v81 = STACK[0x1F38];
  LODWORD(STACK[0x20F8]) += LODWORD(STACK[0x1F38]);
  LODWORD(STACK[0x1E58]) = v81 - v76;
  v82 = STACK[0x1FA8];
  LODWORD(STACK[0x1E50]) = v53 - LODWORD(STACK[0x1FA8]);
  LODWORD(STACK[0x2200]) = v82 - v75;
  v83 = STACK[0x2198];
  LODWORD(STACK[0x1FA8]) = v75 - LODWORD(STACK[0x2198]);
  LODWORD(STACK[0x20F0]) = v83 - v76;
  v84 = LODWORD(STACK[0x1DC0]) ^ 0x66CA23D9;
  v85 = LODWORD(STACK[0x2040]) ^ 0xE6F53D4E;
  v86 = STACK[0x1FE8];
  LODWORD(STACK[0x2040]) = LODWORD(STACK[0x1FE8]) - v57;
  v87 = STACK[0x2218];
  LODWORD(STACK[0x1E68]) = LODWORD(STACK[0x2218]) + v86;
  LODWORD(STACK[0x1E38]) = v87 + v85;
  v88 = v84 + v85;
  v89 = v36 - v84;
  v90 = STACK[0x1FB0];
  LODWORD(STACK[0x1E20]) = v36 ^ LODWORD(STACK[0x1FB0]);
  v91 = v90 - 1842992728 - ((2 * v90) & 0x244C5350);
  v92 = STACK[0x2010];
  LODWORD(STACK[0x2098]) = LODWORD(STACK[0x2010]) ^ v79 ^ 0xC33EBBD;
  LODWORD(STACK[0x2108]) = v91 ^ v92;
  v93 = STACK[0x2050];
  LODWORD(STACK[0x2010]) = (LODWORD(STACK[0x2050]) ^ 0xE6F53D4E) - v43;
  v94 = STACK[0x21F8];
  LODWORD(STACK[0x1F48]) = v43 - LODWORD(STACK[0x21F8]);
  v95 = STACK[0x2090];
  v96 = STACK[0x1F88];
  LODWORD(STACK[0x2218]) = LODWORD(STACK[0x1F88]) - (LODWORD(STACK[0x2090]) ^ 0x1C735F11);
  v97 = STACK[0x2140];
  LODWORD(STACK[0x1FB0]) = v96 + LODWORD(STACK[0x2140]);
  v98 = v97 + v94;
  v99 = STACK[0x21A0];
  v100 = v99 + 477323025 - ((2 * v99) & 0x38E6BE22);
  LODWORD(STACK[0x1F88]) = (v48 + 477323025 - ((2 * v48) & 0x38E6BE22)) ^ v95;
  v101 = STACK[0x1D50];
  LODWORD(STACK[0x2090]) = (v40 + 1249099480 - ((2 * v40) & 0x94E77DB0)) ^ LODWORD(STACK[0x1D50]);
  v102 = STACK[0x2020];
  LODWORD(STACK[0x1E98]) = v101 ^ LODWORD(STACK[0x2020]) ^ 0x5600E1C9;
  v103 = STACK[0x2220];
  v104 = v63 ^ LODWORD(STACK[0x2220]);
  v105 = STACK[0x2158];
  LODWORD(STACK[0x2198]) = v93 ^ 0x9F6650D9 ^ LODWORD(STACK[0x2158]);
  LODWORD(STACK[0x1E28]) = (v105 ^ 0x79936D97) + v103;
  v106 = LODWORD(STACK[0x21D0]) ^ v48;
  LODWORD(STACK[0x21C8]) = LODWORD(STACK[0x21D0]) ^ v40;
  v107 = STACK[0x2118];
  LODWORD(STACK[0x1FE8]) = v99 + LODWORD(STACK[0x2118]);
  v108 = STACK[0x2100];
  LODWORD(STACK[0x21F8]) = LODWORD(STACK[0x2100]) ^ v107;
  v109 = LODWORD(STACK[0x2048]) ^ 0x89E0BC2B;
  LODWORD(STACK[0x21D0]) = v108 + v109;
  LODWORD(STACK[0x2110]) = v109 + (v102 ^ 0x1C735F11);
  v110 = v8 + 1724523481 - ((2 * v8) & 0xCD9447B2);
  v111 = STACK[0x21F0];
  v112 = v111 - 837247835 - ((2 * v111) & 0x9C31394A);
  v113 = v111 + 1467975188 - ((2 * v111) & 0xAEFF0C28);
  v114 = LODWORD(STACK[0x20C0]) ^ 0xE27DBE45;
  v115 = v76 ^ LODWORD(STACK[0x2120]);
  v116 = v114 + LODWORD(STACK[0x2120]);
  LODWORD(STACK[0x21A0]) = v8 ^ v115;
  v117 = STACK[0x2068];
  LODWORD(STACK[0x1E18]) = v115 + LODWORD(STACK[0x2068]);
  v118 = STACK[0x20A0];
  LODWORD(STACK[0x2118]) = v100 ^ LODWORD(STACK[0x20A0]);
  v119 = STACK[0x2148];
  LODWORD(STACK[0x2158]) = (v118 ^ 0x1C735F11) - LODWORD(STACK[0x2148]);
  v120 = LODWORD(STACK[0x2000]) ^ 0x46DB4974;
  v121 = v119 - v120;
  LODWORD(STACK[0x2000]) = v120 - v114;
  v122 = STACK[0x2170];
  LODWORD(STACK[0x2148]) = v114 + LODWORD(STACK[0x2170]);
  LODWORD(STACK[0x2140]) = v46 ^ v122;
  v123 = STACK[0x2060];
  LODWORD(STACK[0x21C0]) = v46 ^ LODWORD(STACK[0x2060]);
  LODWORD(STACK[0x2068]) = v39 ^ v117;
  v124 = STACK[0x1FB8];
  LODWORD(STACK[0x2100]) = LODWORD(STACK[0x1FB8]) + v123;
  v125 = v124 - v39;
  v126 = STACK[0x2058];
  v127 = v126 + 296268109 - ((2 * v126) & 0x2351629A);
  v128 = v110 ^ LODWORD(STACK[0x1D40]);
  v129 = LODWORD(STACK[0x1F80]) ^ v112;
  v130 = (LODWORD(STACK[0x1F80]) ^ 0xCE189CA5) + (LODWORD(STACK[0x1D40]) ^ 0x66CA23D9);
  v131 = STACK[0x2168];
  v132 = STACK[0x1D30];
  LODWORD(STACK[0x2220]) = LODWORD(STACK[0x1D30]) ^ LODWORD(STACK[0x2168]) ^ 0x4172BE28;
  LODWORD(STACK[0x2020]) = v132 ^ 0x5D01E139;
  v133 = v113 ^ LODWORD(STACK[0x2018]);
  LODWORD(STACK[0x21F0]) = v116 + (LODWORD(STACK[0x2018]) ^ 0x577F8614);
  v134 = v116 ^ LODWORD(STACK[0x20A8]);
  v135 = LODWORD(STACK[0x1D58]) ^ 0xB8FC76A6;
  v136 = v126 + v135;
  v137 = LODWORD(STACK[0x19D4]) ^ 0x3EC16BC9;
  v138 = LODWORD(STACK[0x2088]) ^ 0x1C735F11;
  LODWORD(STACK[0x2170]) = LODWORD(STACK[0x20A8]) - v137;
  v139 = v137 + v138;
  v140 = STACK[0x1FD8];
  LODWORD(STACK[0x2058]) = v138 - LODWORD(STACK[0x1FD8]);
  v141 = STACK[0x2208];
  LODWORD(STACK[0x1FB8]) = LODWORD(STACK[0x2208]) ^ v140;
  v142 = STACK[0x1FC8];
  v143 = v141 - LODWORD(STACK[0x1FC8]);
  LODWORD(STACK[0x2050]) = v143;
  v144 = v142 ^ LODWORD(STACK[0x1F20]);
  v145 = STACK[0x1F18];
  LODWORD(STACK[0x20C0]) = LODWORD(STACK[0x1F20]) - LODWORD(STACK[0x1F18]);
  LODWORD(STACK[0x20A0]) = v145 - v135;
  v146 = STACK[0x1D48];
  LODWORD(STACK[0x20A8]) = v127 ^ LODWORD(STACK[0x1D48]);
  v147 = LODWORD(STACK[0x20B0]) ^ 0xE27DBE45;
  v148 = v147 + (v146 ^ 0x11A8B14D);
  v149 = LODWORD(STACK[0x2228]) - (v131 ^ 0x1C735F11);
  LODWORD(STACK[0x2060]) = v147 - LODWORD(STACK[0x2228]);
  LODWORD(STACK[0x1EF8]) = v106 ^ v89;
  LODWORD(STACK[0x1F10]) = ((v106 ^ v89) + 821360544) & 0x3B2F3F8F ^ (v106 ^ v89) & 1;
  v150 = STACK[0x1E30];
  LODWORD(STACK[0x1F20]) = (LODWORD(STACK[0x1E30]) ^ v88) - ((2 * (LODWORD(STACK[0x1E30]) ^ v88) + 2070909172) & 0x71F8ED4C);
  LODWORD(STACK[0x2248]) = v80 + v88;
  v151 = STACK[0x1EB8];
  LODWORD(STACK[0x1F18]) = v80 - LODWORD(STACK[0x1EB8]) - ((2 * (v80 - LODWORD(STACK[0x1EB8])) + 1020311144) & 0x38E6BE22);
  v152 = STACK[0x2188];
  LODWORD(STACK[0x2048]) = LODWORD(STACK[0x2188]) ^ v106;
  LODWORD(STACK[0x2168]) = v130 ^ v152;
  LODWORD(STACK[0x1F00]) = (v130 ^ v143) - ((2 * (v130 ^ v143) + 212522404) & 0x262DAA5E);
  LODWORD(STACK[0x1EF0]) = LODWORD(STACK[0x22A8]) + LODWORD(STACK[0x2200]) - ((2 * (LODWORD(STACK[0x22A8]) + LODWORD(STACK[0x2200])) + 107372496) & 0xC0DB88A);
  v153 = STACK[0x2280];
  LODWORD(STACK[0x1F08]) = LODWORD(STACK[0x2280]) - v104 - 2 * ((LODWORD(STACK[0x2280]) - v104 + 1191827488) & 0x58FE8C3D ^ (LODWORD(STACK[0x2280]) - v104) & 4);
  LODWORD(STACK[0x2270]) = v153 + v121;
  v154 = STACK[0x2080];
  LODWORD(STACK[0x2188]) = LODWORD(STACK[0x2080]) + v121;
  v155 = STACK[0x2070];
  LODWORD(STACK[0x2080]) = LODWORD(STACK[0x2070]) ^ v154;
  v156 = v155 + v98;
  v157 = STACK[0x1E20];
  LODWORD(STACK[0x1EB0]) = (LODWORD(STACK[0x1E20]) ^ v98) - ((2 * (LODWORD(STACK[0x1E20]) ^ v98) + 380065662) & 0x763CB600);
  LODWORD(STACK[0x2280]) = v136 ^ v151;
  LODWORD(STACK[0x1EB8]) = v136 + LODWORD(STACK[0x2178]) - ((2 * (v136 + LODWORD(STACK[0x2178])) + 1627010526) & 0x6423E64A);
  v158 = STACK[0x1E98];
  LODWORD(STACK[0x1F38]) = LODWORD(STACK[0x1E98]) - v139 - ((2 * (LODWORD(STACK[0x1E98]) - v139) + 169224310) & 0x6AB4C23E);
  v159 = STACK[0x2000];
  LODWORD(STACK[0x1EA8]) = LODWORD(STACK[0x2000]) - v134 - ((2 * (LODWORD(STACK[0x2000]) - v134) + 395819826) & 0x1844F3BA);
  v160 = STACK[0x1E78];
  v161 = STACK[0x1E40];
  LODWORD(STACK[0x1EA0]) = LODWORD(STACK[0x1E40]) + LODWORD(STACK[0x1E78]) - ((2 * (LODWORD(STACK[0x1E40]) + LODWORD(STACK[0x1E78])) + 199768992) & 0x321F366C);
  v162 = STACK[0x1E38];
  LODWORD(STACK[0x1E48]) = (v158 ^ LODWORD(STACK[0x1E38])) - ((2 * (v158 ^ LODWORD(STACK[0x1E38])) + 223632802) & 0x50E994F4);
  v163 = v148 ^ v104;
  v164 = v148;
  LODWORD(STACK[0x1E98]) = v163 - ((2 * v163 + 20240168) & 0x1F2AA01E);
  v165 = STACK[0x2108];
  LODWORD(STACK[0x2228]) = v134 - LODWORD(STACK[0x2108]);
  v166 = STACK[0x1FC0];
  v167 = LODWORD(STACK[0x1FC0]) ^ v165;
  LODWORD(STACK[0x2070]) = v167;
  v168 = LODWORD(STACK[0x1F88]) ^ v166;
  v169 = STACK[0x1F48];
  LODWORD(STACK[0x1E90]) = LODWORD(STACK[0x1F88]) + LODWORD(STACK[0x1F48]) - ((2 * (LODWORD(STACK[0x1F88]) + LODWORD(STACK[0x1F48])) + 965257704) & 0x38E6BE22);
  v170 = STACK[0x1E18];
  LODWORD(STACK[0x1FC0]) = LODWORD(STACK[0x1E18]) - v162 - ((2 * (LODWORD(STACK[0x1E18]) - v162) + 479531046) & 0x2CE0789A);
  v171 = STACK[0x1E88];
  LODWORD(STACK[0x2120]) = v139 - LODWORD(STACK[0x1E88]);
  v172 = v171 - v133;
  v173 = v133 - v129;
  v174 = STACK[0x1E68];
  LODWORD(STACK[0x2108]) = v129 - LODWORD(STACK[0x1E68]);
  v175 = LODWORD(STACK[0x1E28]) ^ v174;
  LODWORD(STACK[0x1E88]) = LODWORD(STACK[0x1E28]) + v125;
  v176 = STACK[0x1FB8];
  LODWORD(STACK[0x1E38]) = (LODWORD(STACK[0x1FB8]) ^ v125) - ((2 * (LODWORD(STACK[0x1FB8]) ^ v125) + 88689234) & 0x38516CD4);
  v177 = STACK[0x1F30];
  v178 = LODWORD(STACK[0x2020]) - LODWORD(STACK[0x1F30]);
  v179 = LODWORD(STACK[0x20F8]) + v157;
  LODWORD(STACK[0x1FD8]) = v128 - LODWORD(STACK[0x20F8]);
  v180 = STACK[0x1E60];
  LODWORD(STACK[0x1E68]) = LODWORD(STACK[0x1E60]) - v128;
  LODWORD(STACK[0x1FC8]) = (v180 ^ v178) - ((2 * (v180 ^ v178) + 42053690) & 0xA7A8FF4A);
  LODWORD(STACK[0x20F8]) = v161 ^ v149;
  v181 = STACK[0x1FA8];
  LODWORD(STACK[0x1E60]) = v149 - LODWORD(STACK[0x1FA8]) - ((2 * (v149 - LODWORD(STACK[0x1FA8])) + 4654400) & 0x445509A);
  v182 = STACK[0x2110];
  LODWORD(STACK[0x1E40]) = v181 - LODWORD(STACK[0x2110]) - ((2 * (v181 - LODWORD(STACK[0x2110])) + 105153476) & 0x37CF75A4);
  v183 = STACK[0x1E50];
  LODWORD(STACK[0x1F58]) = LODWORD(STACK[0x1E50]) - LODWORD(STACK[0x2140]) - ((2 * (LODWORD(STACK[0x1E50]) - LODWORD(STACK[0x2140])) + 109682962) & 0x5C78352C);
  v184 = STACK[0x1F28];
  LODWORD(STACK[0x2018]) = LODWORD(STACK[0x1F28]) + v183;
  v185 = v184 + LODWORD(STACK[0x2100]);
  v186 = STACK[0x1E58];
  LODWORD(STACK[0x2100]) = LODWORD(STACK[0x1E58]) - LODWORD(STACK[0x2100]);
  v187 = LODWORD(STACK[0x2230]) - v186;
  v188 = STACK[0x21B0];
  LODWORD(STACK[0x20B0]) = LODWORD(STACK[0x2230]) ^ LODWORD(STACK[0x21B0]);
  v189 = STACK[0x1F40];
  v190 = v189 - v188 - ((2 * (v189 - v188) + 131276630) & 0x6F291AC);
  v191 = STACK[0x1E80];
  LODWORD(STACK[0x2020]) = v159 ^ LODWORD(STACK[0x1E80]);
  v192 = v144 ^ v191;
  LODWORD(STACK[0x1E08]) = v144 + LODWORD(STACK[0x21C0]) - 2 * ((v144 + LODWORD(STACK[0x21C0]) + 485219456) & 0x48E67967 ^ (v144 + LODWORD(STACK[0x21C0])) & 0x20);
  v193 = STACK[0x1FB0];
  LODWORD(STACK[0x1E20]) = v150 ^ LODWORD(STACK[0x1FB0]);
  v194 = LODWORD(STACK[0x1E70]) + v193;
  v195 = STACK[0x2218];
  LODWORD(STACK[0x1F88]) = LODWORD(STACK[0x2218]) - LODWORD(STACK[0x1E70]);
  LODWORD(STACK[0x1FB0]) = (LODWORD(STACK[0x21C8]) ^ v195) - ((2 * (LODWORD(STACK[0x21C8]) ^ v195) + 240311408) & 0x295170B2);
  LODWORD(STACK[0x2230]) = v156 - 615502095 + ((727811750 - 2 * v156) | 0x9DFE1B77);
  LODWORD(STACK[0x1E30]) = v187 - ((2 * v187 + 268681936) & 0xC7DFA5A2);
  LODWORD(STACK[0x1F28]) = v179 - 2 * ((v179 + 7453070) & 0x14B3FE3 ^ v179 & 1);
  v196 = STACK[0x2058];
  LODWORD(STACK[0x2088]) = v178 ^ LODWORD(STACK[0x2058]);
  LODWORD(STACK[0x2218]) = v196 + v176 + 1606483086;
  v197 = STACK[0x1FF8];
  LODWORD(STACK[0x1E80]) = (v170 ^ LODWORD(STACK[0x1FF8])) - 2 * (((v170 ^ LODWORD(STACK[0x1FF8])) + 2005281568) & 0x6E8BC07D ^ (v170 ^ LODWORD(STACK[0x1FF8])) & 1);
  v198 = v177;
  LODWORD(STACK[0x21B0]) = v177 - 1850706004 + v164;
  LODWORD(STACK[0x1E58]) = v173 - ((2 * v173 - 1299714066) & 0x9232341A);
  v199 = v169 - LODWORD(STACK[0x2098]);
  v200 = LODWORD(STACK[0x2098]) - LODWORD(STACK[0x2210]);
  v201 = STACK[0x20F0];
  LODWORD(STACK[0x1FA8]) = LODWORD(STACK[0x20F0]) + LODWORD(STACK[0x2210]);
  v202 = STACK[0x2010];
  LODWORD(STACK[0x20F0]) = v201 + LODWORD(STACK[0x2010]);
  v203 = STACK[0x2008];
  LODWORD(STACK[0x1E00]) = LODWORD(STACK[0x2008]) + v202 - ((2 * (LODWORD(STACK[0x2008]) + v202) - 1581239100) & 0xBEB1238E);
  LODWORD(STACK[0x2010]) = v168 - ((2 * v168 - 603294616) & 0xF836809A);
  LODWORD(STACK[0x2210]) = v190 - 614279039;
  v204 = STACK[0x2220];
  LODWORD(STACK[0x1F80]) = LODWORD(STACK[0x2220]) ^ v160;
  v205 = STACK[0x2028];
  v206 = LODWORD(STACK[0x2028]) + 1019125118 + v204;
  LODWORD(STACK[0x2098]) = v206;
  v207 = STACK[0x2068];
  v208 = v182 + LODWORD(STACK[0x2068]) + ((v190 - 614279039) & 0x134264FE ^ 0x10022428 | (v190 - 614279039) & 0x134264FE ^ 0x34040D6);
  LODWORD(STACK[0x2208]) = v208 - 688967775 - ((2 * v208) & 0xADDE5F42);
  v209 = STACK[0x21F0];
  v210 = LODWORD(STACK[0x21F0]) + v205;
  LODWORD(STACK[0x1E28]) = v210;
  v211 = STACK[0x2238];
  v212 = LODWORD(STACK[0x2238]) + v209;
  LODWORD(STACK[0x2110]) = v212;
  v213 = STACK[0x2060];
  v214 = STACK[0x2090];
  LODWORD(STACK[0x2220]) = LODWORD(STACK[0x2090]) + LODWORD(STACK[0x2060]) + 1587058496;
  v215 = v214 + v211 + 1469258046;
  LODWORD(STACK[0x1FB8]) = v215;
  v216 = STACK[0x21D0];
  LODWORD(STACK[0x2238]) = LODWORD(STACK[0x21D0]) + v198;
  v217 = STACK[0x1F60];
  LODWORD(STACK[0x1F30]) = v216 - LODWORD(STACK[0x1F60]);
  v218 = STACK[0x20A0];
  LODWORD(STACK[0x21F0]) = LODWORD(STACK[0x20A0]) - v189;
  v219 = STACK[0x1FD0];
  v220 = LODWORD(STACK[0x1FD0]) ^ v218;
  LODWORD(STACK[0x1DD8]) = v220;
  v221 = STACK[0x2118];
  v222 = LODWORD(STACK[0x2118]) ^ v219;
  LODWORD(STACK[0x2000]) = v222;
  v223 = v221 - 1537716304;
  v224 = STACK[0x2148];
  LODWORD(STACK[0x21D0]) = v223 + LODWORD(STACK[0x2148]);
  v225 = v224 + v217 + 1257114655;
  LODWORD(STACK[0x2028]) = v225;
  v226 = LODWORD(STACK[0x2048]) - ((2 * LODWORD(STACK[0x2048]) + 2044975686) & 0x601C9ED0);
  LODWORD(STACK[0x2148]) = v192 - ((2 * v192 - 1697098342) & 0xFE6B746E);
  v227 = v172 - ((2 * v172 + 1648481838) & 0xDD1780F8);
  v228 = STACK[0x2158];
  LODWORD(STACK[0x20A0]) = LODWORD(STACK[0x2158]) - v197;
  v229 = STACK[0x2078];
  LODWORD(STACK[0x1E50]) = LODWORD(STACK[0x2078]) - v228;
  v230 = STACK[0x21F8];
  v231 = v229 + 2133241869 + LODWORD(STACK[0x21F8]);
  LODWORD(STACK[0x1FF8]) = v231;
  v232 = v175 - ((2 * v175 + 807187878) & 0xD45D0296);
  v233 = v230 + v207 + (v175 & 0x9A7BE24B) + (v175 & 0x9A7BE24B ^ 0x9A7BE24B);
  LODWORD(STACK[0x2090]) = v233;
  v234 = STACK[0x2040];
  v235 = LODWORD(STACK[0x2040]) ^ v213;
  LODWORD(STACK[0x2118]) = v235;
  v236 = v203 + v234 + 1290652205;
  LODWORD(STACK[0x1E18]) = v236;
  v237 = v199 - ((2 * v199 + 1356226004) & 0x94E77DB0);
  v238 = STACK[0x1FE0];
  v239 = LODWORD(STACK[0x2200]) ^ LODWORD(STACK[0x1FE0]);
  LODWORD(STACK[0x1E10]) = v239;
  v240 = STACK[0x21A0];
  v241 = LODWORD(STACK[0x21A0]) + v238;
  LODWORD(STACK[0x1E78]) = v241;
  v242 = STACK[0x2170];
  v243 = v242 - v240 - ((2 * (v242 - v240) + 1550468654) & 0xDD1780F8) - 1665080429;
  LODWORD(STACK[0x2068]) = v243;
  v244 = LODWORD(STACK[0x1D88]) ^ v167 ^ 0x8CF67E39 ^ v243;
  v245 = v200 - ((2 * v200 + 1942462878) & 0xDCF5286A);
  v227 -= 1616073837;
  LODWORD(STACK[0x2060]) = v227;
  v246 = v227 ^ (v244 + 1854652540 - ((2 * v244) & 0xDD1780F8));
  LODWORD(STACK[0x1D00]) = v241 ^ 0xAC5A652E;
  v247 = (v246 + 1249099480 - ((2 * v246) & 0x94E77DB0)) ^ v241 ^ 0xAC5A652E;
  v248 = STACK[0x2018];
  v249 = v194 - ((2 * v194 - 230217618) & 0xDD1780F8) + 1739543731;
  LODWORD(STACK[0x2058]) = v249;
  v250 = (v247 + 1854652540 - ((2 * v247) & 0xDD1780F8)) ^ v249;
  v237 -= 220271166;
  LODWORD(STACK[0x1CF8]) = v237;
  v251 = (v250 + 1249099480 - ((2 * v250) & 0x94E77DB0)) ^ v237;
  v252 = LODWORD(STACK[0x1E80]) + 1712450460;
  LODWORD(STACK[0x2078]) = v252;
  v253 = (v251 + 1854652540 - ((2 * v251) & 0xDD1780F8)) ^ v252;
  v254 = v248 - ((2 * v248 - 794519714) & 0x94E77DB0) + 851839623;
  LODWORD(STACK[0x1D50]) = v254;
  v255 = (v253 + 1249099480 - ((2 * v253) & 0x94E77DB0)) ^ v254;
  v256 = v245 + 677274884;
  LODWORD(STACK[0x21F8]) = v245 + 677274884;
  v257 = LODWORD(STACK[0x2280]) - 1957079364;
  LODWORD(STACK[0x1E70]) = v257;
  v258 = v231 ^ v222 ^ v257 ^ v256 ^ (v255 + 1853527093 - ((2 * v255) & 0xDCF5286A));
  v259 = STACK[0x2198];
  v260 = LODWORD(STACK[0x2050]) - 2007523960 + LODWORD(STACK[0x2198]);
  LODWORD(STACK[0x2050]) = v260;
  v261 = v259 ^ LODWORD(STACK[0x21C0]) ^ 0xB35137F1;
  LODWORD(STACK[0x1F60]) = v261;
  LODWORD(STACK[0x2200]) = v226 + 754990219;
  v262 = LODWORD(STACK[0x1FA8]) ^ 0xEF6ED429;
  LODWORD(STACK[0x1FA8]) = v262;
  v263 = v261 ^ v262 ^ LODWORD(STACK[0x1FD8]) ^ v233 ^ (v226 + 754990219) ^ (v258 - 1341239448 - ((2 * v258) & 0x601C9ED0));
  v264 = LODWORD(STACK[0x2010]) - 366970239;
  LODWORD(STACK[0x21C0]) = v264;
  v265 = (v263 - 65322931 - ((2 * v263) & 0xF836809A)) ^ v264;
  v266 = LODWORD(STACK[0x21C8]) + LODWORD(STACK[0x21A8]);
  LODWORD(STACK[0x1E80]) = v266;
  v267 = LODWORD(STACK[0x20C0]) - v242;
  LODWORD(STACK[0x2008]) = v267;
  v268 = v185 - ((2 * v185 - 497208588) & 0xAF8FBAD0) - 923371806;
  LODWORD(STACK[0x2170]) = v268;
  v269 = LODWORD(STACK[0x20F8]) + 1892310925;
  LODWORD(STACK[0x2048]) = v269;
  v270 = v267 ^ v266 ^ v269 ^ v225 ^ v212;
  v271 = LODWORD(STACK[0x20B0]) + 1867428727;
  LODWORD(STACK[0x2018]) = v271;
  v272 = v270 ^ v271 ^ v236 ^ v268 ^ (v265 + 1472716136 - ((2 * v265) & 0xAF8FBAD0));
  v273 = LODWORD(STACK[0x2148]) + 1285678340;
  LODWORD(STACK[0x2148]) = v273;
  v274 = LODWORD(STACK[0x2168]) - 483114046;
  LODWORD(STACK[0x2040]) = v274;
  v275 = v210 ^ v273 ^ v215 ^ v274 ^ (v272 + 2134227511 - ((2 * v272) & 0xFE6B746E));
  v276 = LODWORD(STACK[0x1F58]) + 1904274207;
  LODWORD(STACK[0x1F58]) = v276;
  v277 = LODWORD(STACK[0x2228]) - 2008393531;
  LODWORD(STACK[0x1DF0]) = v277;
  v278 = v277 ^ v276 ^ (v275 - 1371792746 - ((2 * v275) & 0x5C78352C));
  v279 = LODWORD(STACK[0x1FB0]) - 606984559;
  LODWORD(STACK[0x21A0]) = v279;
  v280 = LODWORD(STACK[0x2088]) - 1108705055;
  LODWORD(STACK[0x1FB0]) = v280;
  v281 = v279 ^ v280 ^ (v278 + 346601561 - ((2 * v278) & 0x295170B2));
  v282 = LODWORD(STACK[0x1E08]) - 439200313;
  LODWORD(STACK[0x1F48]) = v282;
  v283 = LODWORD(STACK[0x21B0]) ^ v282 ^ (v281 - 924419769 - ((2 * v281) & 0x91CCF28E));
  v284 = LODWORD(STACK[0x1E20]) - 1721212952;
  LODWORD(STACK[0x2010]) = v284;
  LODWORD(STACK[0x2198]) = v232 - 2109940706;
  LODWORD(STACK[0x1DF8]) = v220 - 1274778126;
  v285 = v206 ^ (v220 - 1274778126) ^ LODWORD(STACK[0x1F88]) ^ v284 ^ v235 ^ (v232 - 2109940706) ^ 0x8070CBDC ^ (v283 - 366050997 - ((2 * v283) & 0xD45D0296));
  v286 = ((v285 & 0x5CA486F ^ 0x5CA486F) + (v285 & 0x5CA486F)) ^ LODWORD(STACK[0x2220]);
  v287 = LODWORD(STACK[0x1E48]) - 1356924597;
  LODWORD(STACK[0x21C8]) = v287;
  v288 = LODWORD(STACK[0x1F80]) - 1613028915;
  LODWORD(STACK[0x1E08]) = v288;
  v289 = v288 ^ v287 ^ (v286 - ((2 * v286) & 0x50E994F4) + 678742650);
  v290 = LODWORD(STACK[0x21F0]) ^ 0xE4F939D6 ^ (v289 + 477323025 - ((2 * v289) & 0x38E6BE22));
  v291 = LODWORD(STACK[0x1F30]) - 520372085;
  LODWORD(STACK[0x1FE0]) = v291;
  v292 = LODWORD(STACK[0x1E38]) + 1053645715;
  v293 = v291 ^ v292 ^ v285 ^ (v290 - 1675053462 - ((2 * v290) & 0x38516CD4));
  v294 = LODWORD(STACK[0x1E00]) + 809020457;
  LODWORD(STACK[0x2158]) = v294;
  v295 = LODWORD(STACK[0x2080]) ^ v294 ^ (v293 + 1599640007 - ((2 * v293) & 0xBEB1238E));
  v296 = STACK[0x1FE8];
  v297 = LODWORD(STACK[0x1FE8]) + LODWORD(STACK[0x2140]);
  LODWORD(STACK[0x1E20]) = v297;
  v298 = STACK[0x2230];
  v299 = LODWORD(STACK[0x2218]) ^ v297 ^ v260 ^ LODWORD(STACK[0x2230]) ^ (v295 + 822145604 - ((2 * v295) & 0x6201E488));
  v300 = LODWORD(STACK[0x1E30]) + 1811002425;
  LODWORD(STACK[0x1F30]) = v300;
  v301 = (v299 + 1676661457 - ((2 * v299) & 0xC7DFA5A2)) ^ v300;
  v302 = (v301 - 2089203498 - ((2 * v301) & 0x6F291AC)) ^ LODWORD(STACK[0x2210]);
  v303 = LODWORD(STACK[0x1E40]) - 16122700;
  LODWORD(STACK[0x2140]) = v303;
  v304 = LODWORD(STACK[0x2108]) - 1515002789;
  v305 = v304 ^ v303 ^ (v302 - 1679312174 - ((2 * v302) & 0x37CF75A4));
  v306 = LODWORD(STACK[0x1F28]) - 943916688;
  v307 = v306 ^ LODWORD(STACK[0x2270]) ^ (v305 - 2125774878 - ((2 * v305) & 0x2967FC4));
  v308 = LODWORD(STACK[0x1FC8]) + 1427462082;
  v309 = LODWORD(STACK[0x2020]) ^ v308 ^ (v307 + 1406435237 - ((2 * v307) & 0xA7A8FF4A));
  v310 = LODWORD(STACK[0x20F0]) + 191030275;
  LODWORD(STACK[0x1FD0]) = v310;
  v311 = LODWORD(STACK[0x2100]) - 1971322087;
  v312 = v310 ^ v239 ^ v311 ^ LODWORD(STACK[0x2208]) ^ (v309 - 688967775 - ((2 * v309) & 0xADDE5F42));
  v313 = LODWORD(STACK[0x1E58]) + 576524804;
  LODWORD(STACK[0x1F28]) = v313;
  v314 = LODWORD(STACK[0x2120]) + 1969936285;
  LODWORD(STACK[0x1FC8]) = v314;
  v315 = v313 ^ v314 ^ (v312 - 921101811 - ((2 * v312) & 0x9232341A));
  v316 = LODWORD(STACK[0x1E60]) - 1304024339;
  LODWORD(STACK[0x1F40]) = v316;
  v317 = LODWORD(STACK[0x21D0]) ^ v316 ^ (v315 - 2111657907 - ((2 * v315) & 0x445509A));
  v318 = LODWORD(STACK[0x1FC0]) + 1153090656;
  v319 = STACK[0x2268];
  v320 = LODWORD(STACK[0x20A0]) + 96865005;
  LODWORD(STACK[0x1FC0]) = v320;
  v321 = STACK[0x1E68];
  LODWORD(STACK[0x1DE8]) = v319 - 1447289169;
  v322 = v318 ^ v320 ^ v321 ^ (v319 - 1447289169) ^ (v317 + 376454221 - ((2 * v317) & 0x2CE0789A));
  v323 = LODWORD(STACK[0x1F38]) + 2053469530;
  v324 = LODWORD(STACK[0x2248]) ^ v323 ^ (v322 - 1252368097 - ((2 * v322) & 0x6AB4C23E));
  v325 = LODWORD(STACK[0x20A8]) ^ v296;
  LODWORD(STACK[0x1F38]) = v325;
  v326 = LODWORD(STACK[0x1EA0]) + 520337670;
  v327 = v325 ^ v326 ^ (v324 - 1727030474 - ((2 * v324) & 0x321F366C));
  v328 = LODWORD(STACK[0x1E98]) + 1613740963;
  v329 = LODWORD(STACK[0x2188]) + 2038160456;
  v330 = v329 ^ v328 ^ (v327 + 261443599 - ((2 * v327) & 0x1F2AA01E));
  v331 = LODWORD(STACK[0x1E90]) - 1724402683;
  LODWORD(STACK[0x1EA0]) = v331;
  v332 = STACK[0x1E88];
  v333 = v331 ^ LODWORD(STACK[0x1E88]) ^ 0xD3B7553E ^ (v330 + 477323025 - ((2 * v330) & 0x38E6BE22));
  v334 = LODWORD(STACK[0x1E50]) ^ 0x60E372F9;
  v335 = (v333 + 477323025 - ((2 * v333) & 0x38E6BE22)) ^ v334;
  v336 = LODWORD(STACK[0x1EA8]) - 403810442;
  v337 = (v335 - 1943897635 - ((2 * v335) & 0x1844F3BA)) ^ v336;
  v338 = LODWORD(STACK[0x1F00]) + 1500266497;
  v339 = (v337 - 1827220177 - ((2 * v337) & 0x262DAA5E)) ^ v338;
  v340 = LODWORD(STACK[0x1EF0]) - 113636307;
  v341 = v340 ^ LODWORD(STACK[0x2238]) ^ (v339 - 2046370747 - ((2 * v339) & 0xC0DB88A));
  v342 = LODWORD(STACK[0x1EB0]) - 965605697;
  v343 = (v341 + 991845120 - ((2 * v341) & 0x763CB600)) ^ v342;
  v344 = LODWORD(STACK[0x1F18]) + 450607685;
  v345 = (v343 + 477323025 - ((2 * v343) & 0x38E6BE22)) ^ v344;
  v346 = LODWORD(STACK[0x1F08]) + 537420889;
  v347 = (v345 - 654406599 - ((2 * v345) & 0xB1FD1872)) ^ v346;
  v348 = LODWORD(STACK[0x22A8]) ^ v319;
  v349 = LODWORD(STACK[0x1EB8]) + 579800596;
  v350 = v349 ^ (v348 + 941621561) ^ (v347 + 840037157 - ((2 * v347) & 0x6423E64A));
  LODWORD(STACK[0x1E40]) = v323;
  v351 = LODWORD(STACK[0x1F80]) + (v323 ^ 0x4AA59EE0) - LODWORD(STACK[0x1F60]);
  LODWORD(STACK[0x1EB8]) = v348;
  v352 = LODWORD(STACK[0x2080]) ^ 0x4E2C8888;
  v353 = (v351 + v348 + (v298 ^ 0x3100F244) + 1160252360 + 1472716136 - ((2 * (v351 + v348 + (v298 ^ 0x3100F244) + 1160252360)) & 0xAF8FBAD0)) ^ LODWORD(STACK[0x2170]);
  LODWORD(STACK[0x1DC0]) = v352;
  v354 = v353 - v352;
  v355 = LODWORD(STACK[0x2000]) ^ 0x125B9DE0;
  LODWORD(STACK[0x1E30]) = v355;
  v356 = LODWORD(STACK[0x1F20]) - 1229701344;
  v357 = (v350 - 1191414106 - ((2 * v350) & 0x71F8ED4C)) ^ v356;
  LODWORD(STACK[0x1E98]) = v357 + 992952206 - ((2 * v357) & 0x765E7F1C);
  v358 = (v354 + v355 + 1249099480 - ((2 * (v354 + v355)) & 0x94E77DB0)) ^ LODWORD(STACK[0x1D50]);
  LODWORD(STACK[0x1E38]) = v326;
  LODWORD(STACK[0x1DE0]) = v329;
  v359 = (v342 ^ 0x3B1E5B00) + (LODWORD(STACK[0x1F48]) ^ 0x371986B8) + LODWORD(STACK[0x2028]) + (LODWORD(STACK[0x2200]) ^ 0xB00E4F68) + (v329 ^ v326 ^ (v358 - 1727030474 - ((2 * v358) & 0x321F366C)));
  LODWORD(STACK[0x1EF0]) = v336;
  v360 = LODWORD(STACK[0x2270]) ^ 0x3CDFB4A7;
  LODWORD(STACK[0x1EB0]) = v360;
  v361 = 1274778126 - v360 - LODWORD(STACK[0x1DD8]);
  LODWORD(STACK[0x1E68]) = v321 ^ 0x68693AE3;
  LODWORD(STACK[0x1E60]) = v292;
  LODWORD(STACK[0x1E50]) = v308;
  v362 = LODWORD(STACK[0x1FD8]) ^ 0xB71CE4D1;
  v363 = (v359 + (v336 ^ 0x73DD8622) - 1371792744 - ((2 * (v359 + (v336 ^ 0x73DD8622) + 2)) & 0x5C78352C)) ^ LODWORD(STACK[0x1F58]);
  LODWORD(STACK[0x1F20]) = v362;
  LODWORD(STACK[0x1DD8]) = v304;
  v364 = ((v361 + (v321 ^ 0x68693AE3) + (v292 ^ 0x9C28B66A) + (v308 ^ 0xAC2B805A) + v362 + v363 + 1) ^ v304) - LODWORD(STACK[0x2050]);
  LODWORD(STACK[0x2080]) = v328;
  v365 = v328 ^ LODWORD(STACK[0x21B0]) ^ (v364 + 261443599 - ((2 * v364) & 0x1F2AA01E));
  LODWORD(STACK[0x1D58]) = v356;
  LODWORD(STACK[0x1F80]) = v311;
  LODWORD(STACK[0x1E48]) = v306;
  v366 = (((v311 + (v356 ^ 0xB8FC76A6) + v365 - 2125774878 - ((2 * (v311 + (v356 ^ 0xB8FC76A6) + v365)) & 0x2967FC4)) ^ v306) + (LODWORD(STACK[0x2210]) ^ 0x837948D6)) ^ LODWORD(STACK[0x2090]);
  v367 = v338 ^ 0x9316D52F;
  v368 = LODWORD(STACK[0x2248]) ^ 0x146EF265;
  LODWORD(STACK[0x1D98]) = v368;
  LODWORD(STACK[0x1DC8]) = v367;
  v369 = LODWORD(STACK[0x2118]) ^ LODWORD(STACK[0x2148]) ^ (v366 + v367 - v368 + 2134227511 - ((2 * (v366 + v367 - v368)) & 0xFE6B746E));
  v370 = LODWORD(STACK[0x2008]) ^ 0xB20D4C50 ^ LODWORD(STACK[0x2058]) ^ (v369 + 1854652540 - ((2 * v369) & 0xDD1780F8));
  v371 = LODWORD(STACK[0x1E28]) ^ 0x9F54328F;
  v372 = LODWORD(STACK[0x1E20]) ^ 0x59C51F6D;
  v373 = LODWORD(STACK[0x21C0]) ^ 0xFC1B404D;
  LODWORD(STACK[0x1E20]) = v372;
  LODWORD(STACK[0x1E28]) = v371;
  v374 = v373 - v372 - v371 + LODWORD(STACK[0x2040]) + (LODWORD(STACK[0x1F30]) ^ 0x63EFD2D1) + v370;
  v375 = ((2 * v332) & 0xFF6AFCFE ^ 0x5F4238AA) + (v332 ^ 0x5054E3AA);
  LODWORD(STACK[0x1D80]) = v334;
  v376 = (LODWORD(STACK[0x2140]) ^ 0x6418452D) + LODWORD(STACK[0x1FF8]);
  v377 = LODWORD(STACK[0x2020]) ^ 0x5CA486F;
  LODWORD(STACK[0x1D90]) = v377;
  v378 = v376 + v377 + ((v374 + 477323025 - ((2 * v374) & 0x38E6BE22)) ^ v334) + 1;
  LODWORD(STACK[0x1E58]) = v346;
  v379 = (((v378 - 654406599 - ((2 * v378) & 0xB1FD1872)) ^ v346) + LODWORD(STACK[0x1FD0])) ^ LODWORD(STACK[0x1FB0]);
  LODWORD(STACK[0x1FD8]) = v318;
  LODWORD(STACK[0x1FE8]) = v349;
  v380 = (LODWORD(STACK[0x21F0]) ^ 0xF88A66C7) - LODWORD(STACK[0x1FA8]);
  LODWORD(STACK[0x1EA8]) = v375;
  v381 = v380 - v375 + 2142600831 + ((v379 + (v318 ^ 0x16703C4D) + 840037157 - ((2 * (v379 + (v318 ^ 0x16703C4D))) & 0x6423E64A)) ^ v349);
  v382 = (LODWORD(STACK[0x21C8]) ^ 0xD78B3585) + LODWORD(STACK[0x1FE0]) + (LODWORD(STACK[0x2198]) ^ 0xEA2E814B) + ((v381 + 346601561 - ((2 * v381) & 0x295170B2)) ^ LODWORD(STACK[0x21A0])) + 1;
  v383 = (LODWORD(STACK[0x1E18]) ^ 0xB3EFE82D) + 1276123091 + ((2 * LODWORD(STACK[0x1E18])) & 0x67DFD05A);
  v384 = LODWORD(STACK[0x1F38]) ^ 0x452A8C8A ^ LODWORD(STACK[0x1FC8]) ^ (((v382 + 1249099480 - ((2 * v382) & 0x94E77DB0)) ^ LODWORD(STACK[0x1D00])) + 2 * (v382 & (LODWORD(STACK[0x1E78]) ^ 0x6629DBF6)));
  v385 = (LODWORD(STACK[0x1F40]) ^ 0x8222A84D) + 2008393531 - LODWORD(STACK[0x2228]);
  v386 = LODWORD(STACK[0x2110]) ^ 0x909749B8;
  LODWORD(STACK[0x1F18]) = v386;
  v387 = v385 + v386 + v384;
  v388 = LODWORD(STACK[0x2220]) + LODWORD(STACK[0x2010]) + (v344 ^ 0xE38CA0EE);
  v389 = v387 ^ LODWORD(STACK[0x2018]);
  v390 = LODWORD(STACK[0x1EA0]) ^ 0x1C735F11;
  LODWORD(STACK[0x1DB8]) = v390;
  v391 = v390 + v388 + v389;
  v392 = LODWORD(STACK[0x1E10]) ^ 0x6908C157;
  LODWORD(STACK[0x1E88]) = v340;
  LODWORD(STACK[0x1E18]) = v392;
  v393 = v392 + (v340 ^ 0x79F923BA) + (LODWORD(STACK[0x2068]) ^ 0x91743F83);
  v394 = (v391 + 1) ^ LODWORD(STACK[0x1FB8]);
  LODWORD(STACK[0x1F08]) = v383;
  v395 = ((v393 + v383 + v394 - 921101809 - ((2 * (v393 + v383 + v394 + 2)) & 0x9232341A)) ^ LODWORD(STACK[0x1F28])) + LODWORD(STACK[0x1FC0]);
  v396 = 1957079364 - LODWORD(STACK[0x2280]) + (LODWORD(STACK[0x2158]) ^ 0xA0A76E38) + ((v395 + 1853527093 - ((2 * v395) & 0xDCF5286A)) ^ LODWORD(STACK[0x21F8])) + 1;
  v397 = STACK[0x2070] & 0x8000;
  if ((v396 & v397) != 0)
  {
    v397 = -v397;
  }

  v398 = STACK[0x2070] & 0xFFFF7FFF ^ 0xCB143F09 ^ (v397 + v396);
  v399 = LODWORD(STACK[0x1F88]) ^ 0x950B5B63;
  v400 = 1447289169 - LODWORD(STACK[0x2268]);
  LODWORD(STACK[0x1E00]) = v399;
  v401 = LODWORD(STACK[0x1E80]) ^ 0xB138DFAB;
  v402 = v400 - v399 + (LODWORD(STACK[0x2060]) ^ 0x6E8BC07C) + (LODWORD(STACK[0x2208]) ^ 0x2910D05E) + v398 + 1;
  LODWORD(STACK[0x1F00]) = v401;
  v403 = (LODWORD(STACK[0x2078]) ^ 0x91743F83) - (LODWORD(STACK[0x2238]) ^ 0xED34384B) + (LODWORD(STACK[0x1CF8]) ^ 0xB58C4127) - LODWORD(STACK[0x21D0]) + ((LODWORD(STACK[0x2048]) - LODWORD(STACK[0x2218]) + (v402 ^ v401)) ^ LODWORD(STACK[0x2098])) + 2;
  LODWORD(STACK[0x1EA0]) = ((2 * v403) & 0x3DFB6D1E) + (v403 ^ 0x1EFDB68F);
  v404 = (LODWORD(STACK[0x1EF8]) + 740570926);
  v405 = LODWORD(STACK[0x1F50]);
  v406 = STACK[0x1F68];
  LODWORD(STACK[0x19D4]) = LODWORD(STACK[0x1D88]) ^ 0x7F829AFB;
  v407 = LODWORD(STACK[0x2278]) ^ 0x2Cu;
  v408 = LODWORD(STACK[0x21E0]) ^ 0xCE189CA5;
  LODWORD(STACK[0x2280]) = LODWORD(STACK[0x21E8]) ^ 0x734370CA;
  STACK[0x2238] = LODWORD(STACK[0x2128]) ^ 0x34C0CF26u;
  STACK[0x22A8] = v408;
  v409 = *(STACK[0x2298] + ((v35 - 84) ^ 0xE0)) ^ (v35 - 84) ^ 0x74 ^ (((v35 - 84) ^ 0x74) - ((2 * ((v35 - 84) ^ 0x74) + 2) & 0xA) - 114) ^ 0x37;
  v410 = *(*(&off_279CA5FD0 + (v35 ^ 0x91A)) + 167) ^ 0x443282C2;
  v411 = ((v409 >> 2) | (v409 << 6)) >> LODWORD(STACK[0x22B0]);
  v412 = ((v410 & 0x6FF7849E ^ 0x6FF7849E) + (v410 & 0x6FF7849E)) ^ v410;
  v413 = v412 ^ ((v412 & STACK[0x2280]) >> 1);
  v414 = v413 & STACK[0x2240];
  v415 = (v413 & STACK[0x2238]) << STACK[0x22C0];
  v416 = (v411 - 153811428 - ((2 * v411) & 0xEDAA0C38)) ^ LODWORD(STACK[0x2160]);
  *(STACK[0x8A0] + 4 * v416) = LODWORD(STACK[0x22A0]) ^ 0x3B1FF7C3 ^ LODWORD(STACK[0x2288]) ^ ((v414 >> v406) + v415 + 991950787 - ((2 * ((v414 >> v406) + v415)) & 0x763FEF86));
  v417 = *(*(&off_279CA5FD0 + v35 - 2476) + 150);
  LOBYTE(v416) = *(STACK[0x2180] + (((v416 >> 2) | ((v416 & 3) << 6)) ^ 0x4DLL)) ^ 0xA7;
  v418 = ((v416 ^ (2 * v416 * v416) ^ 5) + 13);
  *(STACK[0x7C0] + 4 * (57 * v418 - 262 * (((912513 * v418) >> 16) >> 6))) = LODWORD(STACK[0x22B8]) ^ (v417 + 1961751864 - ((2 * v417) & 0x1EA70)) ^ 0x1566A474;
  return (*(STACK[0x22F8] + 8 * (v35 ^ 0x11)))();
}

uint64_t sub_26AA5DF1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  STACK[0x1EF8] = 0;
  LODWORD(STACK[0x1E90]) = LODWORD(STACK[0x20A8]) - LODWORD(STACK[0x21A8]);
  LODWORD(STACK[0x1AE4]) = v10 - 2 * LODWORD(STACK[0x1F10]);
  LODWORD(STACK[0x1E80]) = LODWORD(STACK[0x20C0]) + LODWORD(STACK[0x2178]);
  LODWORD(STACK[0x22B8]) = v9;
  v14 = STACK[0x20E8] << v12;
  v15 = STACK[0x20E8];
  v16 = STACK[0x22A8] >> v13;
  v17 = STACK[0x22A8];
  v18 = (((v9 ^ 0x1C735F11) & v16) << v13) + (((v9 ^ 0x1C735F11) & v14) >> v12);
  v19 = 668 * (v8 ^ 0x595);
  LODWORD(STACK[0x2288]) = v19;
  v20 = STACK[0x2278];
  v21 = (v19 + 1083965628) ^ LODWORD(STACK[0x2278]);
  LODWORD(STACK[0x1DD0]) = v18 ^ (((v18 ^ (((v18 ^ ((v21 & v18) >> 1)) & v21) >> 1)) & v21) >> 1);
  v22 = ((a8 & v16) << v13) ^ ((a8 & v14) >> v12);
  v23 = v22 ^ ((v21 & v22) >> 1);
  v24 = ((((v23 & v21) >> 1) + 1775809920 - (v23 & v21 & 0xD3B16B00)) ^ 0x69D8B580) & v21;
  v25 = ((v24 >> 1) + 477323025 - (v24 & 0x38E6BE22)) ^ v23;
  v26 = STACK[0x2130];
  v27 = v20 ^ 0x409C0B20;
  v28 = ((LODWORD(STACK[0x2130]) ^ 0x204E0594) & (v20 ^ 0x9C0B2Cu)) >> 2;
  v29 = STACK[0x1F70];
  v30 = v28 & STACK[0x1F70] & (((v25 ^ LODWORD(STACK[0x1F78])) & (v20 ^ 0x409C0B20u)) >> 4);
  LODWORD(STACK[0x1CE8]) = v28 & STACK[0x1F70];
  LODWORD(STACK[0x2020]) = v30 ^ v25;
  v31 = STACK[0x2240];
  v32 = STACK[0x22B0];
  v33 = STACK[0x2240];
  v34 = STACK[0x2240] >> v32;
  LODWORD(STACK[0x1DA0]) = v34;
  v35 = (a4 & (v31 >> v32)) << v32;
  v36 = v32;
  v37 = STACK[0x2238];
  v38 = STACK[0x2238];
  STACK[0x22A0] = STACK[0x2238] << v11;
  v39 = ((a4 & (v37 << v11)) >> v11) + v35;
  v40 = STACK[0x2280];
  v41 = STACK[0x21E8];
  v42 = LODWORD(STACK[0x21E8]) ^ 0x734370C8;
  LODWORD(STACK[0x1E78]) = LODWORD(STACK[0x21E8]) >> 1;
  v43 = (v41 >> 1) ^ 0x39A1B865;
  v44 = v43 & (((v39 ^ ((v39 & v40) >> 1)) & (v41 ^ 0x734370C8)) >> 2) ^ v39 ^ ((v39 & v40) >> 1);
  v45 = ((((v41 >> 1) ^ 0x39A1B864) & (v41 ^ 0x334370C8)) >> 2) & v43;
  LODWORD(STACK[0x1CD8]) = v41 ^ 0x734370C0;
  LODWORD(STACK[0x1CD0]) = v45;
  LODWORD(STACK[0x1E10]) = v45 & ((v44 & (v41 ^ 0x734370C0)) >> 4) ^ v44;
  v46 = (((LODWORD(STACK[0x1E88]) ^ 0x8606DC45) & v34) << v36) + (((LODWORD(STACK[0x1E88]) ^ 0x8606DC45) & (v38 << v12)) >> v12);
  v47 = v43 & (((v46 ^ ((v46 & v40) >> 1)) & v42) >> 2) ^ v46 ^ ((v46 & v40) >> 1);
  LODWORD(v37) = (LODWORD(STACK[0x2088]) - ((2 * LODWORD(STACK[0x1FB0])) & 0x3C2B842A) + 1543521014) ^ LODWORD(STACK[0x2150]);
  LODWORD(STACK[0x1E88]) = v37;
  v48 = v40;
  LODWORD(STACK[0x1CE4]) = v42;
  LODWORD(STACK[0x1CE0]) = v43;
  LODWORD(STACK[0x1F88]) = v47 ^ 0x1C735F11 ^ v43 & ((((v40 & ((v47 & v40) >> 1)) >> (!(v37 & 1) + (v37 & 1))) & v42) >> 2);
  LODWORD(v16) = ((STACK[0x1DC8] & v16) << v13) ^ ((STACK[0x1DC8] & (v15 << v11)) >> v11);
  LODWORD(v16) = v29 & (((v16 ^ ((v21 & v16) >> 1)) & v21) >> 2) ^ v16 ^ ((v21 & v16) >> 1);
  LODWORD(STACK[0x1CF0]) = v27;
  LODWORD(STACK[0x1DC8]) = v28 & (v26 ^ 0x4E0596) & ((v16 & v27) >> 4) ^ v16;
  v49 = (((LODWORD(STACK[0x1EF0]) ^ 0x8C2279DD) & (v38 << v12)) >> v12) + (((LODWORD(STACK[0x1EF0]) ^ 0x8C2279DD) & (((v17 >> v36) - 60001450 - ((2 * (v17 >> v36)) & 0xF8D8E6AC)) ^ 0xFC6C7356)) << v36);
  v50 = v43 & (((v49 ^ ((v49 & v48) >> 1)) & v42) >> 2) ^ v49 ^ ((v49 & v48) >> 1);
  LODWORD(STACK[0x1F78]) = v50 ^ 0x1C735F11 ^ v45 & ((v50 & (v41 ^ 0x734370C0)) >> 4);
  v51 = ((STACK[0x1DB8] & (v33 >> v13)) << v13) ^ ((STACK[0x1DB8] & (v15 << v11)) >> v11);
  v52 = v29 & (((v51 ^ ((v21 & v51) >> 1)) & v21) >> 2) ^ v51 ^ ((v21 & v51) >> 1);
  LODWORD(STACK[0x1EF0]) = v28 & v29 & ((v52 & v27) >> 4) ^ v52;
  v53 = LODWORD(STACK[0x20B0]) - ((2 * LODWORD(STACK[0x2018])) & 0x3C2B842A);
  LODWORD(v33) = STACK[0x2038];
  LODWORD(STACK[0x1CAC]) = LODWORD(STACK[0x2038]) ^ 0x8D342DD1 ^ LODWORD(STACK[0x1FB8]);
  LODWORD(STACK[0x1D48]) = v33 ^ 0x8D342DD1 ^ LODWORD(STACK[0x2090]);
  v54 = LODWORD(STACK[0x2168]) - ((2 * LODWORD(STACK[0x2040])) & 0x3C2B842A);
  LODWORD(STACK[0x1C9C]) = v33 ^ 0xA837624C ^ LODWORD(STACK[0x2098]);
  LODWORD(STACK[0x1CA4]) = v33 ^ 0xA837624C ^ LODWORD(STACK[0x2010]);
  LODWORD(STACK[0x1CA0]) = v33 ^ 0xA837624C ^ LODWORD(STACK[0x21B0]);
  v55 = LODWORD(STACK[0x20F8]) - ((2 * LODWORD(STACK[0x2048])) & 0x3C2B842A);
  v56 = STACK[0x1ED8];
  LODWORD(STACK[0x1DB8]) = LODWORD(STACK[0x1ED8]) ^ 0x2C08846D ^ (v53 + 224687500);
  LODWORD(STACK[0x1DB0]) = v56 ^ 0x2C08846D ^ (v55 + 249569698);
  LODWORD(STACK[0x1DD8]) = LODWORD(STACK[0x2108]) - ((2 * LODWORD(STACK[0x1DD8])) & 0x13C09EC2);
  v57 = LODWORD(STACK[0x2228]) - ((2 * LODWORD(STACK[0x1DF0])) & 0x3C2B842A);
  LODWORD(STACK[0x1D08]) = v56 ^ 0x754789A2 ^ (v54 - 2125855273);
  LODWORD(STACK[0x1D38]) = v56 ^ 0x754789A2 ^ (v57 + 643832538);
  v58 = (STACK[0x21E0] & 0x4DFE4CEA ^ 0x4C180CA0) + (STACK[0x21E0] & 0x4DFE4CEA ^ 0x1E6404A) + LODWORD(STACK[0x1DC0]) - 1308511466;
  v59 = LODWORD(STACK[0x2100]) - ((2 * LODWORD(STACK[0x1F80])) & 0x3C2B842A);
  LODWORD(STACK[0x1D40]) = v33 ^ 0xFA56BF45 ^ LODWORD(STACK[0x2050]);
  LODWORD(STACK[0x1DA8]) = v33 ^ 0xFA56BF45 ^ v58;
  LODWORD(STACK[0x1CA8]) = v33 ^ 0xFA56BF45 ^ LODWORD(STACK[0x2218]);
  LODWORD(STACK[0x1DC0]) = v33 ^ 0xFA56BF45 ^ LODWORD(STACK[0x1DF8]);
  v60 = LODWORD(STACK[0x2120]) - ((2 * LODWORD(STACK[0x1FC8])) & 0x3C2B842A);
  v61 = LODWORD(STACK[0x20A0]) - ((2 * LODWORD(STACK[0x1FC0])) & 0x3C2B842A);
  v62 = LODWORD(STACK[0x20F0]) - ((2 * LODWORD(STACK[0x1FD0])) & 0x3C2B842A);
  LODWORD(STACK[0x1F80]) = v56 ^ 0x3390BEFB ^ (v59 + 680903982);
  LODWORD(STACK[0x2018]) = v56 ^ 0x3390BEFB ^ (v60 + 327195058);
  LODWORD(STACK[0x20F8]) = v56 ^ 0x3390BEFB ^ (v62 - 1451710952);
  LODWORD(STACK[0x1DF8]) = LODWORD(STACK[0x1D90]) - 1642741227 - ((2 * LODWORD(STACK[0x1D90])) & 0x3C2B842A);
  v63 = LODWORD(STACK[0x2268]) - ((2 * LODWORD(STACK[0x1DE8])) & 0x3C2B842A);
  v64 = LODWORD(STACK[0x2188]) - 2 * (STACK[0x1DE0] & 0x1E15C217 ^ STACK[0x2188] & 2);
  v65 = STACK[0x2248] & 2;
  LODWORD(v37) = STACK[0x1D98];
  LODWORD(STACK[0x2010]) = v56 ^ 0xF6C91147 ^ (v61 - 1545876222);
  LODWORD(STACK[0x1F70]) = v56 ^ 0xF6C91147 ^ (v63 + 1204936900);
  LODWORD(STACK[0x1F68]) = v56 ^ 0xF6C91147 ^ (v37 - 1642741227 - 2 * (v37 & 0x1E15C217 ^ v65));
  LODWORD(STACK[0x21B0]) = v33 ^ 0x80EFC38D ^ LODWORD(STACK[0x1E08]);
  LODWORD(STACK[0x20F0]) = v33 ^ 0x80EFC38D ^ LODWORD(STACK[0x2220]);
  v66 = (LODWORD(STACK[0x1F20]) - 1341239448 - ((2 * LODWORD(STACK[0x1F20])) & 0x601C9ED0)) ^ LODWORD(STACK[0x2200]);
  v67 = STACK[0x1E30];
  v68 = LODWORD(STACK[0x21F8]) ^ LODWORD(STACK[0x1E30]) ^ (v66 + 1853527093 - ((2 * v66) & 0xDCF5286A));
  v69 = (v68 + 1854652540 - ((2 * v68) & 0xDD1780F8)) ^ LODWORD(STACK[0x2068]);
  v70 = (v69 + 1854652540 - ((2 * v69) & 0xDD1780F8)) ^ LODWORD(STACK[0x2060]);
  v71 = (v70 + 1854652540 - ((2 * v70) & 0xDD1780F8)) ^ LODWORD(STACK[0x2058]);
  v72 = (v71 + 1854652540 - ((2 * v71) & 0xDD1780F8)) ^ LODWORD(STACK[0x2078]);
  LODWORD(v37) = v56 ^ LODWORD(STACK[0x2170]) ^ 0x4BC81ADC;
  LODWORD(STACK[0x1FB8]) = v37;
  v73 = (v72 - 420135602 - ((2 * v72) & 0xCDEA7A9C)) ^ v37;
  LODWORD(v37) = v33 ^ 0x7A69A1D2 ^ LODWORD(STACK[0x1F00]);
  LODWORD(STACK[0x2040]) = v37;
  v74 = (v73 - 420135602 - ((2 * v73) & 0xCDEA7A9C)) ^ v37;
  LODWORD(v37) = v56 ^ (LODWORD(STACK[0x1F18]) - 1642741227 - 2 * (STACK[0x1F18] & 0x1E15C217 ^ STACK[0x2110] & 2)) ^ 0x821A05A1;
  LODWORD(STACK[0x2050]) = v37;
  v75 = (v74 - 420135602 - ((2 * v74) & 0xCDEA7A9C)) ^ v37;
  LODWORD(v37) = v33 ^ 0x7A69A1D2 ^ LODWORD(STACK[0x1F08]);
  LODWORD(STACK[0x1FC8]) = v37;
  v76 = (v75 - 420135602 - ((2 * v75) & 0xCDEA7A9C)) ^ v37;
  STACK[0x2270] = v11;
  v77 = STACK[0x2160];
  LODWORD(v16) = LODWORD(STACK[0x2148]) ^ LODWORD(STACK[0x2160]);
  LODWORD(STACK[0x2048]) = v16;
  v78 = (v76 - 1981760469 - ((2 * v76) & 0x13C17856)) ^ v16;
  v79 = STACK[0x1E28];
  LODWORD(v16) = v56 ^ (v79 - 1642741227 - ((2 * v79) & 0x3C2B842A)) ^ 0xED0F84C4;
  LODWORD(STACK[0x1FB0]) = v16;
  v80 = (v78 - 1981760469 - ((2 * v78) & 0x13C17856)) ^ v16;
  LODWORD(v16) = v56 ^ LODWORD(STACK[0x21C0]) ^ 0x8F01069C;
  LODWORD(STACK[0x1FD0]) = v16;
  v81 = (v80 - 1981760469 - ((2 * v80) & 0x13C17856)) ^ v16;
  LODWORD(v16) = LODWORD(STACK[0x21A0]) ^ v77;
  LODWORD(STACK[0x20B0]) = v16;
  v82 = (v81 - 495075771 - ((2 * v81) & 0xC4FB7C8A)) ^ v16;
  v83 = STACK[0x1F58];
  LODWORD(v37) = v33 ^ LODWORD(STACK[0x1F58]) ^ 0xBB403A21;
  LODWORD(STACK[0x1FC0]) = v37;
  v84 = (v82 - 1981760469 - ((2 * v82) & 0x13C17856)) ^ v37;
  v85 = STACK[0x1F48];
  LODWORD(v37) = v56 ^ LODWORD(STACK[0x1F48]) ^ 0xD0613DF8;
  LODWORD(STACK[0x2088]) = v37;
  v86 = (v84 - 495075770 + ~((2 * v84) & 0xC4FB7C8A)) ^ v37;
  LODWORD(v37) = v56 ^ LODWORD(STACK[0x2198]) ^ 0xF2A9C5F4;
  LODWORD(STACK[0x20A0]) = v37;
  v87 = (v86 - 495075770 + ~((2 * v86) & 0xC4FB7C8A)) ^ v37;
  v88 = LODWORD(STACK[0x2118]) ^ 0x239E33CD;
  LODWORD(v37) = v56 ^ 0x789C67FE ^ (v88 - 1642741227 - 2 * (v88 & 0x1E15C217 ^ STACK[0x2118] & 2));
  LODWORD(STACK[0x2168]) = v37;
  v89 = (v87 + 477323025 - ((2 * v87) & 0x38E6BE22)) ^ v37;
  v90 = STACK[0x1E00];
  LODWORD(v37) = v56 ^ (v90 - 1642741227 - ((2 * v90) & 0x3C2B842A)) ^ 0x869286AA;
  LODWORD(STACK[0x20C0]) = v37;
  v91 = (v89 - 495075771 - ((2 * v89) & 0xC4FB7C8A)) ^ v37;
  v92 = v56 ^ LODWORD(STACK[0x2158]) ^ 0xB9D1342C;
  LODWORD(STACK[0x20A8]) = v92;
  v93 = (v91 + 477323025 - ((2 * v91) & 0x38E6BE22)) ^ v92;
  v94 = v56 ^ LODWORD(STACK[0x2230]) ^ 0xD78957AF;
  LODWORD(STACK[0x2120]) = v94;
  v95 = (v93 + 477323025 - ((2 * v93) & 0x38E6BE22)) ^ v94;
  v96 = STACK[0x1E20];
  LODWORD(STACK[0x1F50]) = v56 ^ 0x789C67FE ^ (v64 + 395419229);
  LODWORD(v37) = v56 ^ 0x789C67FE ^ (v96 - 1642741227 - ((2 * v96) & 0x3C2B842A));
  LODWORD(STACK[0x2118]) = v37;
  v97 = (v95 + 477323025 - ((2 * v95) & 0x38E6BE22)) ^ v37;
  LODWORD(v16) = v33 ^ LODWORD(STACK[0x2140]) ^ 0xA27A5FF7;
  LODWORD(STACK[0x2188]) = v16;
  v98 = (v97 - 1526629959 - ((2 * v97) & 0x4A02F372)) ^ v16;
  v99 = STACK[0x1F30];
  LODWORD(v16) = v33 ^ LODWORD(STACK[0x1F30]) ^ 0x5A7237F4;
  LODWORD(STACK[0x2098]) = v16;
  v100 = (v98 - 1526629959 - ((2 * v98) & 0x4A02F372)) ^ v16;
  v101 = STACK[0x1E48];
  LODWORD(v16) = v56 ^ LODWORD(STACK[0x1E48]) ^ 0xDEB0BCA1;
  LODWORD(STACK[0x2178]) = v16;
  v102 = (v100 - 1526629959 - ((2 * v100) & 0x4A02F372)) ^ v16;
  v103 = STACK[0x1E50];
  LODWORD(STACK[0x2090]) = LODWORD(STACK[0x1E50]) ^ v77;
  v104 = (v102 - 1526629959 - ((2 * v102) & 0x4A02F372)) ^ v103 ^ v77;
  LODWORD(v15) = STACK[0x2208];
  LODWORD(STACK[0x2110]) = LODWORD(STACK[0x2208]) ^ v77;
  v105 = v104 + (v15 ^ v77 ^ 0x203A29BD) - 2 * (v104 & (v15 ^ v77 ^ 0x203A29BD));
  v106 = STACK[0x1F28];
  v107 = v33 ^ LODWORD(STACK[0x1F28]) ^ 0x75BFAF2C;
  LODWORD(STACK[0x2108]) = v107;
  v108 = (v105 + 540682685 - ((2 * v105) & 0x4074537A)) ^ v107;
  v109 = STACK[0x1F40];
  LODWORD(STACK[0x1E08]) = LODWORD(STACK[0x1F40]) ^ v56;
  LODWORD(v16) = v109 ^ v56 ^ 0x58E27B0A;
  LODWORD(STACK[0x21A8]) = v16;
  v110 = (v108 + 540682685 - ((2 * v108) & 0x4074537A)) ^ v16;
  v111 = STACK[0x1E18];
  LODWORD(v37) = v33 ^ LODWORD(STACK[0x1E18]) ^ 0xBCA6B521;
  LODWORD(STACK[0x2100]) = v37;
  v112 = (v110 + 540682685 - ((2 * v110) & 0x4074537A)) ^ v37;
  LODWORD(v16) = STACK[0x1E68];
  v113 = LODWORD(STACK[0x1E68]) ^ LODWORD(STACK[0x1FD8]) ^ (v112 + 376454221 - ((2 * v112) & 0x2CE0789A));
  v114 = STACK[0x1E60];
  v115 = v56 ^ LODWORD(STACK[0x1E60]) ^ 0x255D2B93;
  LODWORD(STACK[0x2220]) = v115;
  v116 = (v113 + 1133471491 - ((2 * v113) & 0x871ECE06)) ^ v115;
  v117 = STACK[0x1E40];
  LODWORD(STACK[0x2248]) = LODWORD(STACK[0x1E40]) ^ v77;
  v118 = (v116 + 1133471491 - ((2 * v116) & 0x871ECE06)) ^ v117 ^ v77;
  LODWORD(v37) = v33 ^ LODWORD(STACK[0x21F0]) ^ 0x9D56AC48;
  LODWORD(STACK[0x2268]) = v37;
  v119 = (v118 - 113224173 - ((2 * v118) & 0xF280AC26)) ^ v37;
  LODWORD(v37) = STACK[0x1E38];
  v120 = v56 ^ LODWORD(STACK[0x1E38]) ^ 0x9AB537DF;
  LODWORD(STACK[0x2228]) = v120;
  v121 = (v119 - 113224173 - ((2 * v119) & 0xF280AC26)) ^ v120;
  v122 = LODWORD(STACK[0x2080]) ^ v77;
  LODWORD(STACK[0x2218]) = v122;
  v123 = LODWORD(STACK[0x21C8]) ^ v56;
  LODWORD(STACK[0x1DF0]) = v123;
  LODWORD(STACK[0x1AEC]) = v123 ^ v122 ^ 0x92E88A4C ^ (v121 - 113224173 - ((2 * v121) & 0xF280AC26));
  v124 = STACK[0x1FA8];
  LODWORD(STACK[0x1D10]) = v56 ^ 0x39EED9D6 ^ (LODWORD(STACK[0x1F60]) - 1642741227 - ((2 * LODWORD(STACK[0x1F60])) & 0x3C2B842A));
  LODWORD(STACK[0x1C98]) = v56 ^ 0x39EED9D6 ^ (v124 - 1642741227 - ((2 * v124) & 0x3C2B842A));
  v125 = v67;
  v126 = v67 ^ LODWORD(STACK[0x2078]);
  v127 = STACK[0x2068];
  v128 = STACK[0x1F20];
  v129 = ((v126 ^ v127) + 1472716136 - ((2 * (v126 ^ v127)) & 0xAF8FBAD0)) ^ LODWORD(STACK[0x1F00]) ^ LODWORD(STACK[0x1F20]) ^ LODWORD(STACK[0x2170]) ^ LODWORD(STACK[0x1F08]);
  v130 = (v129 + 2134227511 - ((2 * v129) & 0xFE6B746E)) ^ LODWORD(STACK[0x2148]);
  v131 = (v130 - 1371792746 - ((2 * v130) & 0x5C78352C)) ^ v83;
  LODWORD(v31) = v85 ^ v96 ^ (v131 - 924419769 - ((2 * v131) & 0x91CCF28E));
  LODWORD(v31) = (v31 - 2125774878 - ((2 * v31) & 0x2967FC4)) ^ v101;
  LODWORD(v31) = (v31 + 1676661457 - ((2 * v31) & 0xC7DFA5A2)) ^ v99;
  LODWORD(v31) = (v31 + 1406435237 - ((2 * v31) & 0xA7A8FF4A)) ^ v103;
  v132 = v16;
  LODWORD(v31) = v106 ^ v16 ^ (v31 - 921101811 - ((2 * v31) & 0x9232341A));
  LODWORD(v31) = (v31 - 1675053462 - ((2 * v31) & 0x38516CD4)) ^ v114;
  LODWORD(v31) = (v31 - 1252368097 - ((2 * v31) & 0x6AB4C23E)) ^ v117;
  LODWORD(v31) = (v31 - 1727030474 - ((2 * v31) & 0x321F366C)) ^ v37;
  LODWORD(STACK[0x1FA8]) = v31 + 261443599 - ((2 * v31) & 0x1F2AA01E);
  v133 = STACK[0x2060];
  LODWORD(v16) = STACK[0x2058];
  v134 = STACK[0x21F8];
  LODWORD(v31) = ((v16 ^ v133) + 1853527093 - ((2 * (v16 ^ v133)) & 0xDCF5286A)) ^ LODWORD(STACK[0x21F8]);
  v135 = STACK[0x2200];
  LODWORD(v31) = LODWORD(STACK[0x1F18]) ^ v79 ^ LODWORD(STACK[0x2200]) ^ (v31 - 1341239448 - ((2 * v31) & 0x601C9ED0));
  LODWORD(v31) = (v31 - 65322931 - ((2 * v31) & 0xF836809A)) ^ LODWORD(STACK[0x21C0]);
  LODWORD(v31) = (v31 - 366050997 - ((2 * v31) & 0xD45D0296)) ^ LODWORD(STACK[0x2198]);
  LODWORD(v31) = v90 ^ LODWORD(STACK[0x21A0]) ^ v88 ^ (v31 + 346601561 - ((2 * v31) & 0x295170B2));
  LODWORD(v31) = (v31 + 1599640007 - ((2 * v31) & 0xBEB1238E)) ^ LODWORD(STACK[0x2158]);
  LODWORD(v31) = (v31 + 822145604 - ((2 * v31) & 0x6201E488)) ^ LODWORD(STACK[0x2230]);
  LODWORD(v31) = (v31 - 1679312174 - ((2 * v31) & 0x37CF75A4)) ^ LODWORD(STACK[0x2140]);
  HIDWORD(v136) = (v31 - ((2 * v31) & 0x1E5F42) + 995233) ^ v15;
  LODWORD(v136) = (v31 - 688967775 - ((2 * v31) & 0xADDE5F42)) ^ v15;
  LODWORD(v136) = __ROR4__((v136 >> 21) ^ 0xEE9D3401, 11);
  LODWORD(v31) = (v111 ^ v136) + 376454221 - ((2 * (v111 ^ v136)) & 0x2CE0789A);
  v137 = STACK[0x1FD8];
  LODWORD(v31) = ((v31 ^ v137) - 2111657907 - ((2 * (v31 ^ v137)) & 0x445509A)) ^ v109;
  v138 = v31 + 477323025 - ((2 * v31) & 0x38E6BE22);
  v139 = v125 - 1642741227 - 2 * (v125 & 0x1E15C21F ^ STACK[0x2000] & 0xA);
  LODWORD(STACK[0x2170]) = v56 ^ (LODWORD(STACK[0x1DD8]) - 1349307460);
  LODWORD(STACK[0x21A0]) = v56 ^ LODWORD(STACK[0x2210]);
  LODWORD(STACK[0x2198]) = v56 ^ LODWORD(STACK[0x1DF8]);
  LODWORD(STACK[0x21C0]) = v56 ^ LODWORD(STACK[0x1F38]);
  v140 = v56 ^ v134;
  LODWORD(STACK[0x1D30]) = v33 ^ 0xC19D7DA5 ^ LODWORD(STACK[0x1FF8]);
  LODWORD(STACK[0x1C90]) = v33 ^ 0xC19D7DA5 ^ LODWORD(STACK[0x1E70]);
  v141 = STACK[0x1CE8] & ((STACK[0x1DD0] & LODWORD(STACK[0x1CF0])) >> 4) ^ LODWORD(STACK[0x1DD0]);
  LOBYTE(v90) = STACK[0x22B0];
  v142 = STACK[0x2270];
  LODWORD(v37) = (((LODWORD(STACK[0x1E58]) ^ 0xD8FE8C39) & STACK[0x22A0]) >> STACK[0x2270]) + (((LODWORD(STACK[0x1E58]) ^ 0xD8FE8C39) & STACK[0x1DA0]) << v90);
  v143 = STACK[0x2280];
  LODWORD(v37) = STACK[0x1CE0] & (((v37 ^ ((v37 & v143) >> 1)) & STACK[0x1CE4]) >> 2) ^ v37 ^ ((v37 & v143) >> 1);
  LODWORD(STACK[0x1F58]) = v37 ^ 0x1C735F11 ^ STACK[0x1CD0] & ((v37 & STACK[0x1CD8]) >> 4);
  LODWORD(v37) = ((v16 ^ v127) + 1854652540 - ((2 * (v16 ^ v127)) & 0xDD1780F8)) ^ v133;
  LODWORD(v37) = (v37 + 1052863433 - ((2 * v37) & 0x7D82D792)) ^ LODWORD(STACK[0x19D4]);
  LODWORD(v37) = (v37 + 1854652540 - ((2 * v37) & 0xDD1780F8)) ^ LODWORD(STACK[0x2078]);
  LODWORD(STACK[0x1F60]) = v140 ^ 0xD25B27BB;
  LODWORD(v37) = (v37 + 1188776308 - ((2 * v37) & 0x8DB692E8)) ^ v140 ^ 0xD25B27BB;
  v144 = v56 ^ v139 ^ 0x2234719B;
  LODWORD(STACK[0x2000]) = v144;
  LODWORD(v37) = (v37 + 1188776308 - ((2 * v37) & 0x8DB692E8)) ^ v144;
  LODWORD(STACK[0x1F08]) = v135 ^ v77;
  LODWORD(v37) = (v37 + 1188776308 - ((2 * v37) & 0x8DB692E8)) ^ v135 ^ v77;
  LODWORD(v31) = v33 ^ v128 ^ 0xDA47D5E8;
  LODWORD(STACK[0x1FF8]) = v31;
  LODWORD(v37) = (v37 + 1188776308 - ((2 * v37) & 0x8DB692E8)) ^ v31;
  v145 = v143;
  v146 = ((((LODWORD(STACK[0x1FE8]) ^ 0x3211F324) & v143) >> 1) + 840037157 - ((LODWORD(STACK[0x1FE8]) ^ 0x3211F324) & v143 & 0x6423E64A)) ^ LODWORD(STACK[0x1FE8]);
  v147 = STACK[0x20E8];
  v148 = STACK[0x2240];
  v149 = ((v146 & STACK[0x2240]) >> v13) | ((v146 & STACK[0x20E8]) << v142);
  LODWORD(STACK[0x1F18]) = v149 - 790354457 - ((2 * v149) & 0xA1C84BCE);
  LODWORD(v37) = (v37 - 420135602 - ((2 * v37) & 0xCDEA7A9C)) ^ LODWORD(STACK[0x2040]);
  LODWORD(v37) = (v37 - 420135602 - ((2 * v37) & 0xCDEA7A9C)) ^ LODWORD(STACK[0x1FB8]);
  v150 = v37 - 420135602 - ((2 * v37) & 0xCDEA7A9C);
  LODWORD(v37) = ((STACK[0x1DC8] & v21) >> 1) + 1768826350 - (STACK[0x1DC8] & v21 & 0xD2DC4BDC);
  LODWORD(v16) = LODWORD(STACK[0x1DC8]) ^ 0x696E25EE;
  LODWORD(STACK[0x2210]) = v16;
  v151 = v148;
  LODWORD(v37) = (((v37 ^ v16) & v147) << v142) + (((v37 ^ v16) & v148) >> v13);
  v152 = STACK[0x1EF0];
  LODWORD(v148) = ((v152 & v21) >> 1) + 477323025 - (v152 & v21 & 0x38E6BE22);
  LODWORD(STACK[0x1D98]) = v148;
  LODWORD(v16) = v152 ^ 0x1C735F11 ^ v148;
  v153 = STACK[0x2238];
  v154 = STACK[0x22A8];
  LODWORD(v37) = ((v16 & STACK[0x2238]) << STACK[0x22C0]) ^ ((v16 & STACK[0x22A8]) >> v90) ^ v37;
  v155 = ((v150 ^ LODWORD(STACK[0x2050])) - 1526629959 - ((2 * (v150 ^ LODWORD(STACK[0x2050]))) & 0x4A02F372)) ^ LODWORD(STACK[0x2188]);
  v156 = (v155 - 1526629959 - ((2 * v155) & 0x4A02F372)) ^ LODWORD(STACK[0x2098]);
  v157 = (v156 + 477323025 - ((2 * v156) & 0x38E6BE22)) ^ LODWORD(STACK[0x2118]);
  v158 = (v157 - 1981760469 - ((2 * v157) & 0x13C17856)) ^ LODWORD(STACK[0x1FD0]);
  v159 = (v158 - 1981760469 - ((2 * v158) & 0x13C17856)) ^ LODWORD(STACK[0x1FB0]);
  v160 = (v159 - 420135602 - ((2 * v159) & 0xCDEA7A9C)) ^ LODWORD(STACK[0x1FC8]);
  v161 = (v160 - 1981760469 - ((2 * v160) & 0x13C17856)) ^ LODWORD(STACK[0x2048]);
  v162 = (v161 - 1981760469 - ((2 * v161) & 0x13C17856)) ^ LODWORD(STACK[0x1FC0]);
  v163 = (v162 - 495075771 - ((2 * v162) & 0xC4FB7C8A)) ^ LODWORD(STACK[0x20B0]);
  v164 = (v163 - 495075771 - ((2 * v163) & 0xC4FB7C8A)) ^ LODWORD(STACK[0x2088]);
  v165 = (v164 - 495075771 - ((2 * v164) & 0xC4FB7C8A)) ^ LODWORD(STACK[0x20A0]);
  v166 = (v165 + 477323025 - ((2 * v165) & 0x38E6BE22)) ^ LODWORD(STACK[0x2168]);
  v167 = (v166 - 495075771 - ((2 * v166) & 0xC4FB7C8A)) ^ LODWORD(STACK[0x20C0]);
  v168 = (v167 + 477323025 - ((2 * v167) & 0x38E6BE22)) ^ LODWORD(STACK[0x20A8]);
  v169 = (v168 + 477323025 - ((2 * v168) & 0x38E6BE22)) ^ LODWORD(STACK[0x2120]);
  v170 = (v169 - 1526629959 - ((2 * v169) & 0x4A02F372)) ^ LODWORD(STACK[0x2178]);
  v171 = (v170 - 1526629959 - ((2 * v170) & 0x4A02F372)) ^ LODWORD(STACK[0x2090]);
  v172 = (v171 + 540682685 - ((2 * v171) & 0x4074537A)) ^ LODWORD(STACK[0x2110]);
  v173 = (v172 + 540682685 - ((2 * v172) & 0x4074537A)) ^ LODWORD(STACK[0x2100]);
  LODWORD(v37) = LODWORD(STACK[0x1E08]) ^ LODWORD(STACK[0x2108]) ^ (v37 + 1775809920 - ((2 * v37) & 0xD3B16B00)) ^ 0x1100E737 ^ (v173 + 540682685 - ((2 * v173) & 0x4074537A));
  v174 = v33 ^ v137 ^ 0xC963C7D2;
  LODWORD(STACK[0x2208]) = v174;
  LODWORD(v37) = (v37 + 1133471491 - ((2 * v37) & 0x871ECE06)) ^ v174;
  v175 = v33 ^ v132 ^ 0xDF13FB9F;
  LODWORD(STACK[0x21F8]) = v175;
  LODWORD(v37) = (v37 + 1133471491 - ((2 * v37) & 0x871ECE06)) ^ v175;
  LODWORD(v37) = (v37 + 1133471491 - ((2 * v37) & 0x871ECE06)) ^ LODWORD(STACK[0x2220]);
  LODWORD(v37) = (v37 - 113224173 - ((2 * v37) & 0xF280AC26)) ^ LODWORD(STACK[0x2228]);
  LODWORD(v37) = (v37 + 1133471491 - ((2 * v37) & 0x871ECE06)) ^ LODWORD(STACK[0x2248]);
  LODWORD(v37) = (v37 - 113224173 - ((2 * v37) & 0xF280AC26)) ^ LODWORD(STACK[0x2268]);
  LODWORD(v37) = (v37 - 113224173 - ((2 * v37) & 0xF280AC26)) ^ LODWORD(STACK[0x2218]);
  v176 = LODWORD(STACK[0x1DF0]) ^ 0x2BCE6693;
  LODWORD(STACK[0x2230]) = v176;
  LODWORD(v37) = (v37 - 113224173 - ((2 * v37) & 0xF280AC26)) ^ v176;
  v177 = STACK[0x1E10];
  v178 = v145;
  v179 = (STACK[0x1E10] & v145) >> (((v37 & 0x65 ^ 0x65) + (v37 & 0x65)) ^ 0x64);
  LODWORD(STACK[0x1F10]) = v21;
  LODWORD(STACK[0x2148]) = v141;
  LODWORD(STACK[0x2200]) = v177 ^ 0x696E25EE;
  LODWORD(v179) = (v179 + 1768826350 - ((2 * v179) & 0xD2DC4BDC)) ^ v177 ^ 0x696E25EE;
  v180 = v37 ^ ((((v141 ^ ((v141 & v21) >> 1)) & v153) << v142) + (((v141 ^ ((v141 & v21) >> 1)) & v151) >> v90)) ^ ((v179 & v154) >> v90) ^ ((v179 & v153) << STACK[0x22C0]);
  LODWORD(STACK[0x1F30]) = v180;
  v181 = STACK[0x2030];
  v182 = *(STACK[0x2030] + (STACK[0x20C8] ^ 0xD1) + 2375) ^ STACK[0x20C8];
  LODWORD(STACK[0x22B0]) = v182;
  v183 = v181 + (STACK[0x1ED0] ^ 0x30);
  LODWORD(v183) = -59 * (*(v183 + 1062) ^ 5) - ((10 * (*(v183 + 1062) ^ 5)) & 0xA) + 5;
  v184 = v183 ^ 0xFFFFFF86 ^ (((v183 >> 3) ^ (v183 >> 7)) + ~(2 * (((v183 >> 3) ^ (v183 >> 7)) & 7 ^ (v183 >> 3) & 2)) + 6);
  if (v182 == 211)
  {
    v185 = 1;
  }

  else
  {
    LOBYTE(v184) = STACK[0x1ED0];
    v185 = 0;
  }

  if (v184 == 5)
  {
    v186 = 231;
  }

  else
  {
    v186 = 167;
  }

  v187 = v181 + 10;
  v188 = *(v181 + 10 + v186);
  STACK[0x20C8] = v185;
  if (v188 == 184)
  {
    v189 = 0;
  }

  else
  {
    v189 = v185;
  }

  v190 = STACK[0x2290];
  v191 = *(STACK[0x2290] + (((v189 ^ 0x6Fu) + 2 * v189) ^ 0xF8)) ^ 5;
  v192 = *(v181 + (STACK[0x1EC0] ^ 0x6FLL) + 276);
  HIDWORD(v193) = v192 ^ 5;
  LODWORD(v193) = v192 << 24;
  v194 = ((-111 * v191) ^ (68 * v191 * -111 * v191));
  v195 = (v193 >> 29) ^ 0x17;
  if (v194 == 59)
  {
    v196 = STACK[0x1EC0];
  }

  else
  {
    v196 = v195;
  }

  STACK[0x1FD8] = v196;
  v197 = v196 != 5 || v194 == 59;
  v198 = v181 + (STACK[0x1EE0] ^ 0x67);
  v199 = *(v198 + 4760) ^ (*(v198 + 4760) >> 4) ^ 0x4E;
  if (v197)
  {
    v200 = STACK[0x1EE0];
  }

  else
  {
    v200 = v199;
  }

  LODWORD(STACK[0x2140]) = v200;
  LODWORD(STACK[0x1AE8]) = LODWORD(STACK[0x21C8]) ^ LODWORD(STACK[0x2080]) ^ 0xE263C280 ^ LODWORD(STACK[0x1FA8]);
  v201 = STACK[0x20B8];
  v202 = (*(STACK[0x20B8] + (((v184 ^ 5) - 39) ^ 0xADLL)) ^ 5) - 44;
  LODWORD(STACK[0x21C8]) = v202 ^ (v202 >> 2) ^ (v202 >> 1);
  LODWORD(STACK[0x1B08]) = LODWORD(STACK[0x21F0]) ^ 0xE5163C84 ^ v138;
  v203 = v181 + 3430;
  v204 = *(v181 + 3430 + (STACK[0x1600] ^ 0x40));
  v205 = ((STACK[0x2138] ^ 0x14) >> 2) | (STACK[0x2138] << 6);
  v206 = *(STACK[0x21B8] + (((*(v181 + 3430 + (STACK[0x1608] ^ 0x43)) ^ 1 ^ (4 * (*(v181 + 3430 + (STACK[0x1608] ^ 0x43)) ^ 1) * (*(v181 + 3430 + (STACK[0x1608] ^ 0x43)) ^ 1)) ^ 0xBC) - 39) ^ 0x1ELL));
  HIDWORD(v207) = v206 ^ 1;
  LODWORD(v207) = (v206 ^ 4) << 24;
  v208 = (((*(v187 + ((v207 >> 26) ^ 0x8DLL)) ^ 0x4B) + 13) << 8) | ((v204 ^ 0x50 ^ (4 * (v204 ^ 1) * (v204 ^ 1) - 8 * (((v204 ^ 1) * (v204 ^ 1)) & 1) + 5)) << 16);
  v209 = v181 + 2117;
  v210 = (*(v201 + (((((*(v181 + 2117 + (((*(v187 + (v205 ^ 0xA7)) ^ 0x4B) + 13) ^ 0xA1)) ^ 5) + (((*(v187 + (v205 ^ 0xA7)) ^ 0x4B) + 13) ^ 0xBF)) ^ 0x10) - 39) ^ 0xADLL)) ^ 5) - 44;
  v211 = ((*(v201 + (((((*(v181 + 2117 + (((*(v187 + (v205 ^ 0xA7)) ^ 0x4B) + 13) ^ 0xA1)) ^ 5) + (((*(v187 + (v205 ^ 0xA7)) ^ 0x4B) + 13) ^ 0xBF)) ^ 0x10) - 39) ^ 0xADLL)) ^ 5) - 44);
  v212 = v210 ^ (v211 >> 2) ^ (v211 >> 1);
  v213 = -55 * (((*(v181 + 2117 + (STACK[0x15F8] ^ 0xF6)) ^ 5) + (STACK[0x15F8] ^ 0xFFFFFFE8)) ^ 0xFFFFFFDD);
  v214 = *(STACK[0x2258] + (v213 ^ 0x3ELL)) ^ v213 ^ 0xD2 ^ ((v213 ^ 0xD2) - ((2 * (v213 ^ 0xD2) + 6) & 0xA) - 96);
  HIDWORD(v207) = STACK[0x1610] ^ 1;
  LODWORD(v207) = (STACK[0x1610] ^ 4) << 24;
  LOBYTE(v213) = v207 >> 26;
  v215 = *(v181 + 3430 + (STACK[0x21D8] ^ 0x31));
  HIDWORD(v207) = v215 ^ 1;
  LODWORD(v207) = (((v215 ^ 1) * (v215 ^ 1)) << 26) ^ (v215 << 24);
  v216 = STACK[0x2180];
  LOBYTE(v213) = *(STACK[0x2180] + (v213 ^ 0x74)) ^ 0xA7;
  LOBYTE(v213) = (v213 ^ (2 * v213 * v213) ^ 5) + 13;
  LOBYTE(v213) = ((v213 ^ 0xBF) + (*(v181 + 2117 + (v213 ^ 0xA1)) ^ 5)) ^ 7;
  LODWORD(STACK[0x2138]) = v212;
  v217 = v212 ^ 0x71 | (v213 << 16);
  v218 = *(v181 + 3430 + (STACK[0x1900] ^ 0x52));
  v219 = STACK[0x1620];
  v220 = *(v209 + (STACK[0x1620] ^ 0xB0));
  LODWORD(STACK[0x21D8]) = v218 ^ (4 * (v218 ^ 1) * (v218 ^ 1));
  v221 = (((*(v187 + ((v207 >> 26) ^ 0x88)) ^ 0x4B) + 13) ^ 0x2E) << 8;
  STACK[0x1F00] = v187;
  v222 = *(v187 + ((((((v220 ^ 5) + (v219 ^ 0xAE)) ^ 0xCD) >> 2) | ((((v220 ^ 5) + (v219 ^ 0xAE)) ^ 0xCD) << 6)) ^ 0xA7));
  v223 = v221 | ((v222 ^ 0x4B) << 24) | v217;
  v224 = v208 & 0xFFFFFF00 | *(v203 + (STACK[0x18F8] ^ 0xF3)) ^ 1 ^ (4 * (*(v203 + (STACK[0x18F8] ^ 0xF3)) ^ 1) * (*(v203 + (STACK[0x18F8] ^ 0xF3)) ^ 1));
  LODWORD(STACK[0x1C80]) = v212 & 0x3B ^ 0xA | v212 & 0x3B ^ 0x31;
  LODWORD(STACK[0x1C78]) = (v222 & 0x27 ^ 5) + (v222 & 0x27 ^ 0x22);
  v225 = v224 | ((*(v203 + (STACK[0x1618] ^ 0x2CLL)) ^ (4 * (*(v203 + (STACK[0x1618] ^ 0x2CLL)) ^ 1) * (*(v203 + (STACK[0x1618] ^ 0x2CLL)) ^ 1)) ^ 0xFFFFFFE3) << 24);
  v226 = (v225 ^ 0xEB) + 477323025 - ((2 * (v225 ^ 0xEB)) & 0x38E6BE22);
  LOBYTE(v217) = *(v216 + ((((STACK[0x1EE8] ^ 0xBA) >> 2) | ((STACK[0x1EE8] ^ 0xBA) << 6)) ^ 0x4DLL)) ^ 0xA7;
  LOBYTE(v203) = *(v203 + (((v217 ^ (2 * v217 * v217 - ((4 * v217 * v217) & 8) + 5)) + 13) ^ 0xCFLL));
  LOBYTE(v217) = v203 ^ (4 * (v203 ^ 1) * (v203 ^ 1));
  v227 = STACK[0x1628];
  v228 = STACK[0x1628] ^ 0xFBLL;
  STACK[0x1C88] = v209;
  LOBYTE(v228) = (((*(v209 + v228) ^ 5) + (v227 ^ 0xE5)) ^ 0x5A) - 39;
  LODWORD(v228) = (*(v201 + (((v228 ^ 0x11) - (v228 ^ 0xAD)) ^ 0xFFFFFFF8) + (v228 ^ 0x11)) ^ 5) - 44;
  v229 = v228 ^ (v228 >> 2) ^ (v228 >> 1);
  LODWORD(STACK[0x1CC8]) = (v223 + 218103808) ^ (((v223 + 218103808) & v178) >> 1);
  v230 = (((v226 ^ 0x1C735F11) & STACK[0x1D20]) + 477323025 - ((2 * ((v226 ^ 0x1C735F11) & STACK[0x1D20])) & 0x38E6BE22u)) >> 1;
  LODWORD(v228) = ((v230 ^ 0xE39AF88) + 477323025 - 2 * ((v230 ^ 0xE39AF88) & 0x1C735F15 ^ v230 & 4)) ^ v226;
  v231 = STACK[0x1E78];
  v232 = STACK[0x1E78] & 0x7CFCFCFC ^ 0xC159419D;
  v233 = STACK[0x21E0];
  LODWORD(STACK[0x1AE0]) = v232;
  LODWORD(STACK[0x1F38]) = v232 & (v233 ^ 0x88E52CE1) ^ v231 & 0x44FCB044;
  v234 = LODWORD(STACK[0x1E98]) ^ LODWORD(STACK[0x1AE4]);
  v235 = STACK[0x1D88];
  LODWORD(STACK[0x1D88]) = STACK[0x1D88];
  v236 = STACK[0x1E80];
  LODWORD(v216) = (LODWORD(STACK[0x1E80]) ^ 0xBDD26AA3) + (v235 ^ 0xFFD2D6B7 ^ v234);
  LODWORD(STACK[0x1EE8]) = (v235 ^ 0xBEBC0ECD) + (LODWORD(STACK[0x1D58]) ^ 0xE874A45B ^ v180);
  v237 = (STACK[0x21E8] & 0xE0E0E0E ^ 0xFDFDFFF5) + 1330597711;
  LODWORD(STACK[0x1EE0]) = v231 & 0x27A7A7A7;
  LODWORD(STACK[0x1ED8]) = v237 + (v231 & 0x27A7A7A7 ^ 0x21A1A025);
  LODWORD(STACK[0x1EC0]) = STACK[0x2278] & LODWORD(STACK[0x15C8]) ^ 0x180908 | STACK[0x2278] & LODWORD(STACK[0x15C8]) ^ 0x19011010;
  v238 = STACK[0x2128];
  LODWORD(STACK[0x1C70]) = (STACK[0x2128] & 8 ^ 8) + (STACK[0x2128] & 8);
  v239 = STACK[0x2130];
  v240 = STACK[0x2130] & 0xC8C8C8C ^ 0x19151D9D;
  LODWORD(STACK[0x1CC0]) = v240;
  v241 = v238 ^ 0x14808D04;
  v242 = (v238 ^ 0x14808D04) & v240;
  LODWORD(STACK[0x1C68]) = (v242 << STACK[0x22C0]) + 477323025 - ((2 * (v242 << STACK[0x22C0])) & 0x38E6BE22);
  v243 = STACK[0x2270];
  LODWORD(STACK[0x1ED0]) = (v242 << STACK[0x2270]) + 1775809920 - ((2 * (v242 << STACK[0x2270])) & 0xD3B16B00);
  LODWORD(STACK[0x1C60]) = v217 ^ 0xAF | (((v214 ^ 0x1C) - 58) << 8);
  LODWORD(STACK[0x1D78]) = LODWORD(STACK[0x1EB8]) + 2139200569;
  LODWORD(STACK[0x2080]) = LODWORD(STACK[0x1EA8]) - 9439247;
  LODWORD(STACK[0x1B60]) = LODWORD(STACK[0x2070]) ^ 0x816781D1;
  LODWORD(STACK[0x19C0]) = v236 ^ v234;
  LODWORD(STACK[0x1920]) = v234 ^ 0x43B7CA05;
  v244 = v190;
  LODWORD(STACK[0x21E8]) = LODWORD(STACK[0x1EF0]) ^ 0x696E25EE;
  v245 = STACK[0x2038];
  LODWORD(STACK[0x1DA0]) = LODWORD(STACK[0x2038]) ^ LODWORD(STACK[0x2028]) ^ 0xD47B201E;
  LODWORD(STACK[0x1D28]) = LODWORD(STACK[0x1E88]) ^ 0x34ABFED0;
  LODWORD(STACK[0x2028]) = LODWORD(STACK[0x2170]) ^ 0x8A89D80C;
  LODWORD(STACK[0x1F48]) = v245 ^ LODWORD(STACK[0x1EB0]) ^ 0xE50FF10B;
  LODWORD(STACK[0x2158]) = LODWORD(STACK[0x21A0]) ^ 0x10DFBB;
  LODWORD(STACK[0x1F40]) = LODWORD(STACK[0x2198]) ^ 0x1D7C5578;
  LODWORD(STACK[0x20E8]) = v245 ^ LODWORD(STACK[0x21D0]) ^ 0xCBE31A88;
  LODWORD(STACK[0x1F20]) = LODWORD(STACK[0x21C0]) ^ 0xA3A32961;
  LODWORD(STACK[0x1F28]) = v245 ^ LODWORD(STACK[0x1FE0]) ^ 0xEBAB534;
  LODWORD(STACK[0x2008]) ^= v245 ^ 0x45E85F83;
  LODWORD(STACK[0x21F0]) = LODWORD(STACK[0x2148]) ^ 0x696E25EE;
  v246 = LODWORD(STACK[0x22B0]) ^ 0xFFFFFFD6;
  v247 = *(STACK[0x21B8] + (((LODWORD(STACK[0x2140]) ^ 5) - 39) ^ 0x1ELL));
  STACK[0x1FA8] = LODWORD(STACK[0x21C8]) ^ 0xFFFFFFE4;
  v248 = v247 ^ 0x7Bu;
  STACK[0x1C58] = LODWORD(STACK[0x21D8]) ^ 0xEBu;
  LODWORD(STACK[0x1C50]) = (v229 ^ 0xC9) << 16;
  v249 = STACK[0x2240];
  STACK[0x1C48] = v228 & STACK[0x2240];
  v250 = STACK[0x2238];
  STACK[0x1C40] = (v228 & STACK[0x2238]) << v243;
  LODWORD(STACK[0x1AC0]) = v229 ^ 0xFFFFFFCC;
  LODWORD(STACK[0x1ABC]) = LODWORD(STACK[0x2138]) ^ 0x74;
  LODWORD(v227) = v231 & 0x63636363 ^ 0xE7E7E6A7;
  LODWORD(STACK[0x1ADC]) = v227;
  v251 = v239 & 0x63636363 ^ 0xE684C7C4;
  v252 = v233;
  STACK[0x1AB0] = v251 & (v233 ^ 0xC60084A5);
  STACK[0x1AA8] = ((v238 ^ 0x24C0C726) & v251) << STACK[0x22C0];
  STACK[0x22B0] = ((v238 ^ 0x24C0C726) & v227) << STACK[0x22C0];
  LODWORD(v219) = v231;
  LODWORD(STACK[0x1AD8]) = v231 & 0x48484848 ^ 0x989098D0;
  v253 = v239 & 0x48484848 ^ 0x90D89090;
  LODWORD(STACK[0x1AD4]) = v253;
  STACK[0x1AA0] = ((v238 ^ 0x10C0C800) & v253) << STACK[0x22C0];
  STACK[0x1A98] = ((v238 ^ 0x34C0CD24) & v232) << STACK[0x22C0];
  LODWORD(v201) = v239 & 0x7CFCFCFC ^ 0xD9B5FD6D;
  STACK[0x1A90] = ((v238 ^ 0x34C0CD24) & v201) << v243;
  STACK[0x1A88] = v249 & v201;
  LODWORD(STACK[0x1A80]) = 1751437251 * v216 + 1751437251;
  v254 = STACK[0x2280];
  LODWORD(v201) = STACK[0x1E90];
  LODWORD(STACK[0x1A78]) = LODWORD(STACK[0x1E90]) + 1471715045;
  LODWORD(v228) = LODWORD(STACK[0x1EA0]) - v201;
  LODWORD(STACK[0x1A74]) = 1296649579 * LODWORD(STACK[0x1EA0]) - 1438339269;
  v255 = v239 & 0x3BBBBBBB ^ 0x577D76E5;
  STACK[0x1A68] = (v250 & v255) << STACK[0x22C0];
  LODWORD(STACK[0x1A60]) = 1799704387 * LODWORD(STACK[0x1EE8]) + 1799704387;
  LODWORD(STACK[0x1AC8]) = v231 & 0x3BBBBBBB ^ 0x4ED6CF56;
  LODWORD(v201) = v231 & 0x71F1F1F1 ^ 0xD2425382;
  v256 = (v238 ^ 0x30C0C322) & v201;
  LODWORD(STACK[0x19C8]) = v239 & 0x71F1F1F1 ^ 0xC3A3E273;
  STACK[0x19B8] = v256 << v243;
  STACK[0x19B0] = v256 << STACK[0x22C0];
  STACK[0x19A8] = v249 & v201;
  v257 = STACK[0x22A8];
  STACK[0x19A0] = v201 & STACK[0x22A8];
  LODWORD(STACK[0x1998]) = 1890889577 * v228 + 2058874732;
  v258 = v219 & 0x76767676 ^ 0xDCCCDC88;
  STACK[0x1988] = v258 & (v233 ^ 0xCE189CA4);
  STACK[0x1980] = ((v238 ^ 0x34C0CE26) & v258) << STACK[0x22C0];
  LODWORD(v201) = v239 & 0x76767676 ^ 0xCCAAE8FA;
  STACK[0x1978] = v201 & v257;
  STACK[0x1970] = ((v238 ^ 0x34C0CE26) & v201) << STACK[0x22C0];
  v259 = v239 & 0x69E9E9E9 ^ 0xF39BD253;
  STACK[0x1D68] = ((v238 ^ 0x30C0CB22) & v259) << STACK[0x22C0];
  v260 = v219 & 0x69E9E9E9 ^ 0xFA727BB2;
  LODWORD(STACK[0x1968]) = ((v238 ^ 0x30C0CB22) & v260) << STACK[0x22C0];
  LODWORD(v201) = STACK[0x1F38];
  STACK[0x1A58] = LODWORD(STACK[0x1F38]) ^ 0x40590004u;
  LODWORD(STACK[0x1960]) = v201 ^ 0x2981B584;
  LODWORD(v228) = v238 ^ 0x24C0CF26;
  LODWORD(v242) = v219 & 0x13939393;
  v261 = (v238 ^ 0x34808726) & (v219 & 0x13939393 ^ 0x36A6B726);
  LODWORD(v216) = STACK[0x2278] & 0x27272727;
  LODWORD(v227) = (v216 ^ 0x40325) >> 1;
  LODWORD(v216) = v227 ^ ((v216 ^ 0x27232402) + (v216 ^ 0x40325));
  STACK[0x1A48] = v261 << STACK[0x22C0];
  LOBYTE(v253) = v243;
  STACK[0x1D90] = v261 << v243;
  STACK[0x1A40] = (v250 & v216) << STACK[0x22C0];
  v233 ^= 0x4E189CA5u;
  STACK[0x1A38] = v216 & v233;
  LODWORD(v261) = LODWORD(STACK[0x1ED8]) + 1;
  LODWORD(STACK[0x1C28]) = (v250 & v261) << STACK[0x22C0];
  STACK[0x1C20] = v249 & v261;
  LODWORD(v243) = v239 & 0x27A7A7A7 ^ 0x6F494AC9;
  v262 = LODWORD(STACK[0x1EE0]) ^ 0x6EEEEF6A;
  LODWORD(v261) = ((v254 & STACK[0x1EC0]) >> 1) ^ 0x19191919;
  LODWORD(STACK[0x1C30]) = v233;
  STACK[0x1C08] = v261 & v233;
  STACK[0x1C00] = (v250 & v261) << v253;
  v263 = v219 & 0xC8C8C8C ^ 0x1199911D;
  v264 = STACK[0x1FD8];
  v265 = v241 & v263;
  v266 = v257;
  v267 = STACK[0x22C0];
  v268 = STACK[0x20B8];
  STACK[0x1BF0] = v265 << STACK[0x22C0];
  STACK[0x1BE8] = (STACK[0x22A0] & STACK[0x1D18]) >> v253;
  STACK[0x1958] = v259 & (v252 ^ 0xCA1898A1);
  STACK[0x1BE0] = v260 & (v252 ^ 0xCA1898A1);
  STACK[0x1A30] = (v242 ^ 0x36A6B726) & v257;
  STACK[0x1BD8] = v249 & (v242 ^ 0x36A6B726);
  LODWORD(v256) = v239 & 0x13939393 ^ 0x272526B5;
  v269 = v228 & v262;
  STACK[0x1BC8] = (v228 & v243) << v267;
  STACK[0x1BC0] = v269 << v267;
  STACK[0x1BB8] = v269 << v253;
  LODWORD(v228) = v252 ^ 0xC189C85;
  STACK[0x1BB0] = v262 & (v252 ^ 0x4E088CA5u);
  v270 = STACK[0x1CC0];
  STACK[0x1F38] = STACK[0x1CC0] & v228;
  STACK[0x1BA8] = v263 & v228;
  LODWORD(STACK[0x1B48]) = LODWORD(STACK[0x1EC8]) - 163262532;
  LODWORD(STACK[0x1BA4]) = v242 ^ 0x11819001;
  LODWORD(STACK[0x1BA0]) = LODWORD(STACK[0x1ED0]) ^ 0x69D8B580;
  LODWORD(STACK[0x1A2C]) = STACK[0x22B0] ^ 0x72F89F6D;
  LODWORD(STACK[0x1954]) = LODWORD(STACK[0x1D58]) ^ LODWORD(STACK[0x1F30]);
  STACK[0x1B98] = STACK[0x1CC8] & v257;
  LODWORD(v228) = STACK[0x1ADC];
  STACK[0x1A20] = v249 & STACK[0x1ADC];
  STACK[0x1A18] = v228 & v257;
  STACK[0x1A10] = v249 & STACK[0x1AD8];
  LODWORD(v228) = STACK[0x1AD4];
  STACK[0x1A08] = STACK[0x1AD4] & v257;
  STACK[0x1A00] = v249 & v228;
  STACK[0x19F8] = v249 & STACK[0x1AE0];
  STACK[0x19F0] = v249 & v255;
  STACK[0x19E8] = STACK[0x1AC8] & v257;
  LODWORD(STACK[0x1A70]) = v255;
  STACK[0x19E0] = v255 & v257;
  STACK[0x1948] = v249 & STACK[0x19C8];
  LODWORD(STACK[0x1944]) = LODWORD(STACK[0x1AE4]) ^ 0x3B2F3F8E;
  LODWORD(STACK[0x1994]) = v258;
  STACK[0x1938] = v249 & v258;
  STACK[0x1D60] = v249 & v259;
  LODWORD(STACK[0x1C38]) = v260;
  STACK[0x1930] = v249 & v260;
  LODWORD(STACK[0x1A50]) = v227 ^ 0x27272727;
  STACK[0x19D8] = v249 & (v227 ^ 0x27272727);
  LODWORD(STACK[0x1C18]) = v243;
  STACK[0x1B90] = v243 & v257;
  LODWORD(STACK[0x1C10]) = v262;
  STACK[0x1B88] = v249 & v262;
  LODWORD(STACK[0x1BF8]) = v263;
  STACK[0x1B78] = v249 & v263;
  STACK[0x1F30] = v249 & v270;
  v271 = STACK[0x1FA8];
  LODWORD(STACK[0x1D70]) = v259;
  STACK[0x1B70] = v259 & v257;
  LODWORD(STACK[0x1BD0]) = v256;
  STACK[0x1B68] = v249 & v256;
  LODWORD(v228) = LODWORD(STACK[0x1D88]) ^ 0x4143F132;
  LODWORD(STACK[0x1B40]) = v228;
  LODWORD(STACK[0x1B3C]) = -690719775 * v228;
  LODWORD(STACK[0x1DC8]) = 477323025;
  v272 = STACK[0x22F8];
  v273 = STACK[0x1FF0];
  LODWORD(STACK[0x2128]) = -1073741798;
  v274 = STACK[0x2288];
  v275 = STACK[0x1C88];
  LOBYTE(v253) = ((*(v268 + (((((*(v275 + (v271 ^ ((v274 ^ 0x6C) + ((v274 - 104) | 0xF0) + 89))) ^ 5) + (v271 ^ 0x73)) ^ 0x10) - 39) ^ 0xADLL)) ^ 5) - 44) ^ (((*(v268 + (((((*(v275 + (v271 ^ ((v274 ^ 0x6C) + ((v274 - 104) | 0xF0) + 89))) ^ 5) + (v271 ^ 0x73)) ^ 0x10) - 39) ^ 0xADLL)) ^ 5) - 44) >> 2) ^ (((*(v268 + (((((*(v275 + (v271 ^ ((v274 ^ 0x6C) + ((v274 - 104) | 0xF0) + 89))) ^ 5) + (v271 ^ 0x73)) ^ 0x10) - 39) ^ 0xADLL)) ^ 5) - 44) >> 1) ^ 0xBB;
  STACK[0x1FA8] = v271;
  v276 = STACK[0x1C58] << ((v271 & 0x18 ^ 8) + (v271 & 0x18 ^ 0x10));
  STACK[0x1DE0] = v248;
  v277 = *(v244 + (((((*(v275 + (v248 ^ 0xBDLL)) ^ 5) + (v248 ^ 0xA3)) ^ 0x10) + 111) ^ 0xF8)) ^ 5;
  v278 = ((((-111 * v277) ^ LOBYTE(STACK[0x1C80]) ^ (68 * v277 * -111 * v277)) >> 2) | (((-111 * v277) ^ LODWORD(STACK[0x1C80])) << 6)) ^ LODWORD(STACK[0x1C78]);
  STACK[0x1DE8] = v246;
  v279 = ((*(v275 + (v246 ^ 0xB0)) ^ 5) + (v246 ^ 0xAE)) ^ 0xCD | (v253 << 8) | (v278 << 24) | ((((*(v275 + (v264 ^ 0xB2)) ^ 5) + (v264 ^ 0xAC)) ^ 0x84) << 16);
  LODWORD(v275) = LODWORD(STACK[0x2250]) ^ 0xE91E89A3;
  LODWORD(v256) = LODWORD(STACK[0x1F90]);
  v280 = v256 ^ 0x93;
  v281 = (STACK[0x1B98] >> (v256 ^ 0x93u)) | ((v275 & STACK[0x1CC8]) << v267);
  LODWORD(v249) = v281 + 477323025 - ((2 * v281) & 0x38E6BE22);
  LODWORD(v276) = ((((LODWORD(STACK[0x1C60]) | v276) ^ LODWORD(STACK[0x1C50]) ^ ((((LODWORD(STACK[0x1C60]) | v276) ^ LODWORD(STACK[0x1C50])) & v254) >> 1)) & v275) << v267) | ((((LODWORD(STACK[0x1C60]) | v276) ^ LODWORD(STACK[0x1C50]) ^ ((((LODWORD(STACK[0x1C60]) | v276) ^ LODWORD(STACK[0x1C50])) & v254) >> 1)) & v266) >> (v256 ^ 0x93u));
  v282 = v276 + 477323025 - ((2 * v276) & 0x38E6BE22);
  v283 = LODWORD(STACK[0x1F98]) ^ 0xCEu;
  v284 = STACK[0x1C48];
  STACK[0x22B0] = v283;
  LODWORD(v284) = (v284 >> v283) ^ STACK[0x1C40];
  LODWORD(v256) = v284 + 477323025 - ((2 * v284) & 0x38E6BE22);
  v285 = v279 ^ ((v279 & v254) >> 1);
  LODWORD(STACK[0x21C0]) = v275;
  v286 = (v285 & v275) << STACK[0x2270];
  STACK[0x22A0] = v280;
  v287 = v286 | ((v285 & v266) >> v280);
  LODWORD(v267) = v287 + 477323025 - ((2 * v287) & 0x38E6BE22);
  v288 = 42587553 * ((v282 ^ 0x1C735F11) + (LODWORD(STACK[0x21A8]) ^ LODWORD(STACK[0x2178]) ^ 0x853B5004));
  v289 = (((v288 + HIWORD(v288) + 477323025 - ((2 * (v288 + HIWORD(v288))) & 0x38E6BE22)) >> 8) ^ 0x1C735F) + ((v288 + HIWORD(v288) + 477323025 - ((2 * (v288 + HIWORD(v288))) & 0x38E6BE22)) ^ 0x1C735F11);
  LODWORD(STACK[0x21D0]) = v249;
  v290 = -1323480215 * ((v289 + 477323025 - ((2 * v289) & 0x38E6BE22)) ^ v249);
  LODWORD(v280) = v290 + HIWORD(v290);
  LOBYTE(v290) = ((v290 + BYTE2(v290) - 2 * ((v290 + BYTE2(v290)) & 1) + 9) ^ LODWORD(STACK[0x2188])) & 8;
  LODWORD(v286) = v280 - (v280 >> ((v290 ^ 8) + v290)) + 477323025 - ((2 * (v280 - (v280 >> ((v290 ^ 8) + v290)))) & 0x38E6BE22);
  v291 = -1873513085 * ((v286 ^ 0x1C735F11) - (v256 ^ 0x1C735F11)) - ((-1873513085 * ((v286 ^ 0x1C735F11) - (v256 ^ 0x1C735F11))) >> 16);
  v292 = v291 + (v291 >> 8) - 48991124 - ((2 * (v291 + (v291 >> 8))) & 0xFA28E8D8);
  LODWORD(STACK[0x2138]) = v267;
  LODWORD(STACK[0x21E0]) = v292;
  v293 = (v292 ^ 0xFD14746C) + (v267 ^ 0x1C735F11) + 1775809920 - ((2 * ((v292 ^ 0xFD14746C) + (v267 ^ 0x1C735F11))) & 0xD3B16B00);
  LODWORD(STACK[0x21A0]) = v293;
  v294 = *(v272 + 8 * ((209 * ((((2015594755 * (v293 ^ 0x69D8B580u)) >> 16) & 0xF85) - 3973 + (((2015594755 * (v293 ^ 0x69D8B580u)) >> 16) & 0xF85 ^ 0xF85) != 0)) ^ v274));
  STACK[0x1FD8] = v264;
  return v294();
}

uint64_t sub_26AA60C4C(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x2278]) = v15;
  v17 = STACK[0x21E0];
  v18 = STACK[0x21E0] & 0xF3F1A2DF ^ 0xED637F5D;
  LODWORD(STACK[0x21D8]) = v8 - 1728;
  v19 = ((v8 - 1728) ^ 0x9930A81F) & v10 ^ v14;
  v20 = a1 - a2 + v14 - (v11 & (2 * (a1 - a2)));
  v21 = v14 + (v20 & 0x7C79860E ^ 0x9FF77FF1) + ((2 * ((v20 & 0x7C79860E ^ 0x9FF77FF1) & 0x1C710602 ^ (v20 | 0x7FFFFFFD))) ^ 0x4B227) + 1;
  LODWORD(STACK[0x1ED8]) = v20 & 0x43CE7575 ^ 0x425511;
  LODWORD(STACK[0x2070]) = v20;
  v22 = ((a8 ^ (v20 >> 8)) + v14 - ((2 * (a8 ^ (v20 >> 8))) & 0xE6BE22)) ^ v20;
  LODWORD(STACK[0x1EC0]) = v22;
  v23 = v22 & 0xDAD7D039 ^ v14;
  LODWORD(STACK[0x1E98]) = LODWORD(STACK[0x2250]) ^ 0x211681A3;
  LODWORD(STACK[0x1DC8]) = v9;
  LODWORD(STACK[0x1FE0]) = a6;
  LODWORD(STACK[0x1EC8]) = STACK[0x21D0];
  LODWORD(STACK[0x1EE0]) = v17;
  LODWORD(STACK[0x1ED0]) = STACK[0x1ABC];
  LODWORD(STACK[0x1EB0]) = v13;
  LODWORD(STACK[0x1EB8]) = STACK[0x1AC0];
  v24 = STACK[0x8A0];
  STACK[0x1FF0] = v16;
  v25 = STACK[0x2158];
  v26 = v12;
  LODWORD(STACK[0x2140]) = v19;
  LODWORD(STACK[0x2198]) = v21;
  v27 = v23 ^ 0x11u;
  v28 = STACK[0x22B8];
  v29 = LODWORD(STACK[0x22B8]);
  v30 = v29 ^ 0x11u;
  v31 = STACK[0x20F8];
  v32 = v23;
  v33 = ((v31 ^ 0x577F8614) >> (v23 ^ 0x11)) + ((v31 ^ 0x577F8614) << (v29 ^ 0x11u));
  v34 = STACK[0x2018];
  v35 = ((v34 ^ 0x577F8614) >> (v23 ^ 0x11)) ^ ((v34 ^ 0x577F8614) << v30);
  v36 = v35 + 1467975188 - ((2 * v35) & 0xAEFF0C28);
  v37 = STACK[0x1F28];
  v38 = ((v37 ^ 0x922629A8) >> v27) + ((v37 ^ 0x922629A8) << v30);
  v39 = v38 - 1842992728 - ((2 * v38) & 0x244C5350);
  v40 = v33 + 1467975188 - ((2 * v33) & 0xAEFF0C28);
  LODWORD(STACK[0x2170]) = v18;
  v41 = (((v19 ^ v14) + 1415747524 + (v18 ^ v14) + v14 - (v11 & (2 * ((v19 ^ v14) + 1415747524 + (v18 ^ v14))))) ^ 0x8EFA7AF9 ^ v21) - v26;
  v42 = v41 - ((2 * v41 + 18415876) & v11) + 2097143699;
  v43 = v42 ^ LODWORD(STACK[0x1F58]);
  v44 = LODWORD(STACK[0x2278]);
  v45 = STACK[0x2278];
  LODWORD(STACK[0x2278]) = STACK[0x2278];
  v46 = v44 ^ 0x11u;
  v47 = v42 ^ LODWORD(STACK[0x1F88]);
  LODWORD(STACK[0x2148]) = v42;
  v49 = (((v43 >> v27) + 1775809920 - ((2 * (v43 >> v27)) & 0xD3B16B00)) ^ 0x69D8B580) + (((v43 << v46) + v14 - (v11 & (2 * (v43 << v46)))) ^ v14);
  v50 = v49 + v14 - (v11 & (2 * v49));
  LODWORD(STACK[0x22B8]) = v28;
  if (v28 == v14)
  {
    v36 = v34;
  }

  LODWORD(STACK[0x1E28]) = v36;
  if (v28 == v14)
  {
    v51 = v37;
  }

  else
  {
    v51 = v39;
  }

  LODWORD(STACK[0x1E80]) = v51;
  if (v28 == v14)
  {
    v40 = v31;
  }

  LODWORD(STACK[0x1E40]) = v40;
  v52 = v43 ^ v14;
  if (v45 != v14)
  {
    v52 = v50;
  }

  LODWORD(STACK[0x1EE8]) = v52;
  v53 = v42 ^ LODWORD(STACK[0x1F78]);
  LODWORD(STACK[0x2288]) = v32;
  v55 = v47 ^ v14;
  if (v32 != v14)
  {
    v48 = (v47 >> v27) + (v47 << v46);
    v55 = v48 + v14 - (v11 & (2 * v48));
  }

  LODWORD(STACK[0x1EF0]) = v55;
  v54 = (v53 >> v27) | (v53 << v30);
  v56 = v54 + v14 - (v11 & (2 * v54));
  v58 = v53 ^ v14;
  if (v32 != v14)
  {
    v58 = v56;
  }

  LODWORD(STACK[0x1E78]) = v58;
  v57 = ((v25 ^ 0x79936D97u) >> v27) + ((v25 ^ 0x79936D97u) << v30);
  LODWORD(STACK[0x1EA0]) = v57 + 2039704983 - ((2 * v57) & 0xF326DB2E);
  v59 = STACK[0x2010];
  v60 = ((v59 ^ 0x922629A8) >> v27) + ((v59 ^ 0x922629A8) << v30);
  LODWORD(STACK[0x1E90]) = v60 - 1842992728 - ((2 * v60) & 0x244C5350);
  v61 = STACK[0x1F70];
  v62 = ((v61 ^ 0x922629A8) >> v27) ^ ((v61 ^ 0x922629A8) << v46);
  LODWORD(STACK[0x1E88]) = v62 - 1842992728 - ((2 * v62) & 0x244C5350);
  v63 = STACK[0x1F68];
  v64 = v46;
  v65 = v27;
  v66 = ((v63 ^ 0x922629A8) >> v27) ^ ((v63 ^ 0x922629A8) << v46);
  LODWORD(STACK[0x1E70]) = v66 - 1842992728 - ((2 * v66) & 0x244C5350);
  v67 = STACK[0x1F80];
  v68 = ((v67 ^ 0x577F8614u) >> v27) + ((v67 ^ 0x577F8614u) << v46);
  LODWORD(STACK[0x1E68]) = v68 + 1467975188 - ((2 * v68) & 0xAEFF0C28);
  v69 = STACK[0x2028];
  v70 = ((v69 ^ 0x79936D97u) >> v27) | ((v69 ^ 0x79936D97u) << v46);
  LODWORD(STACK[0x1E60]) = v70 + 2039704983 - ((2 * v70) & 0xF326DB2E);
  v71 = STACK[0x1F40];
  v72 = ((v71 ^ 0x79936D97) >> v27) + ((v71 ^ 0x79936D97) << v30);
  v73 = v72 + 2039704983 - ((2 * v72) & 0xF326DB2E);
  v74 = STACK[0x2248];
  STACK[0x21C8] = v30;
  v75 = ((v74 ^ 0x438F6703) >> v27) ^ ((v74 ^ 0x438F6703) << v30);
  v76 = v75 + 1133471491 - ((2 * v75) & 0x871ECE06);
  v77 = STACK[0x2208];
  v78 = ((v77 ^ 0x438F6703) >> v27) ^ ((v77 ^ 0x438F6703) << v46);
  v79 = v78 + 1133471491 - ((2 * v78) & 0x871ECE06);
  v80 = STACK[0x20E8];
  v81 = ((v80 ^ 0x577F8614) >> v65) | ((v80 ^ 0x577F8614) << v64);
  v82 = v81 + 1467975188 - ((2 * v81) & 0xAEFF0C28);
  v83 = STACK[0x1F48];
  v84 = ((v83 ^ 0x79936D97) >> v65) + ((v83 ^ 0x79936D97) << v64);
  v85 = v84 + 2039704983 - ((2 * v84) & 0xF326DB2E);
  v86 = STACK[0x21F0];
  v87 = LODWORD(STACK[0x21F0]) ^ 0x696E25EEu;
  v88 = v65;
  STACK[0x1DD8] = v87;
  STACK[0x1EA8] = v64;
  v89 = (v87 >> v65) + (v87 << v64);
  v90 = v89 + 1768826350 - ((2 * v89) & 0xD2DC4BDC);
  v91 = STACK[0x21F8];
  STACK[0x2130] = v88;
  v92 = ((v91 ^ 0x438F6703) << v64) | ((v91 ^ 0x438F6703) >> v88);
  v93 = v92 + 1133471491 - ((2 * v92) & 0x871ECE06);
  v94 = (LODWORD(STACK[0x2148]) ^ LODWORD(STACK[0x2020]));
  v95 = (v94 >> v88) | (v94 << v30);
  v96 = v95 + 477323025 - ((2 * v95) & 0x38E6BE22);
  v97 = STACK[0x22B8];
  LODWORD(STACK[0x2158]) = v25;
  v98 = STACK[0x1EA0];
  if (v97 == 477323025)
  {
    v98 = v25;
  }

  v99 = STACK[0x2288];
  if (LODWORD(STACK[0x2288]) != 477323025)
  {
    v59 = STACK[0x1E90];
  }

  LODWORD(STACK[0x1E30]) = v59;
  if (v99 != 477323025)
  {
    v61 = STACK[0x1E88];
  }

  LODWORD(STACK[0x1E18]) = v61;
  if (v99 != 477323025)
  {
    v63 = STACK[0x1E70];
  }

  LODWORD(STACK[0x1E08]) = v63;
  if (v99 == 477323025)
  {
    v100 = v67;
  }

  else
  {
    v100 = STACK[0x1E68];
  }

  v101 = STACK[0x1E60];
  if (v99 == 477323025)
  {
    v101 = v69;
    v102 = v71;
  }

  else
  {
    v102 = v73;
  }

  LODWORD(STACK[0x2248]) = v74;
  if (v99 == 477323025)
  {
    v103 = v74;
  }

  else
  {
    v103 = v76;
  }

  LODWORD(STACK[0x1E70]) = v103;
  LODWORD(STACK[0x2208]) = v77;
  if (v99 == 477323025)
  {
    v104 = v77;
  }

  else
  {
    v104 = v79;
  }

  LODWORD(STACK[0x1E58]) = v104;
  v105 = STACK[0x2278];
  if (LODWORD(STACK[0x2278]) == 477323025)
  {
    v106 = v80;
  }

  else
  {
    v106 = v82;
  }

  if (v105 == 477323025)
  {
    v107 = v83;
  }

  else
  {
    v107 = v85;
  }

  LODWORD(STACK[0x21F0]) = v86;
  if (v105 == 477323025)
  {
    v108 = v86;
  }

  else
  {
    v108 = v90;
  }

  LODWORD(STACK[0x1EA0]) = v108;
  LODWORD(STACK[0x21F8]) = v91;
  if (v105 == 477323025)
  {
    v109 = v91;
  }

  else
  {
    v109 = v93;
  }

  LODWORD(STACK[0x1E60]) = v109;
  if (v97 == 477323025)
  {
    v110 = v94 ^ 0x1C735F11;
  }

  else
  {
    v110 = v96;
  }

  LODWORD(STACK[0x1E68]) = v110;
  v111 = (1205334925 - (LODWORD(STACK[0x21B0]) ^ 0x5BA4AC9C)) ^ ((LODWORD(STACK[0x21B0]) ^ 0xE38CA0EE) + 1);
  v112 = STACK[0x2070];
  v113 = ((v111 + 477323025 - ((2 * v111) & 0x38E6BE22)) ^ LODWORD(STACK[0x21B0])) + 1205334925;
  v114 = LODWORD(STACK[0x21A0]) ^ 0x80u;
  v115 = ((v113 ^ 0x47D7F38Du) >> (LODWORD(STACK[0x21A0]) ^ 0x80u)) | ((v113 ^ 0x47D7F38Du) << (LODWORD(STACK[0x2070]) ^ 0x11u));
  v116 = LODWORD(STACK[0x21E0]) ^ 0x6Cu;
  v117 = STACK[0x1F20];
  v118 = LODWORD(STACK[0x2070]) ^ 0x11u;
  v119 = ((v117 ^ 0x1C735F11u) << (LODWORD(STACK[0x2070]) ^ 0x11u)) + ((v117 ^ 0x1C735F11u) >> (LODWORD(STACK[0x21E0]) ^ 0x6Cu));
  v120 = v119 + 477323025 - ((2 * v119) & 0x38E6BE22);
  v121 = v115 + 477323025 - ((2 * v115) & 0x38E6BE22);
  v122 = STACK[0x20F0];
  v123 = LODWORD(STACK[0x21E0]) ^ 0x6C;
  STACK[0x1E88] = v116;
  v124 = ((v122 ^ 0x1C735F11u) >> v116) | ((v122 ^ 0x1C735F11u) << v118);
  v125 = v124 + 477323025 - ((2 * v124) & 0x38E6BE22);
  v126 = STACK[0x2268];
  STACK[0x1DF0] = v114;
  LODWORD(STACK[0x1E10]) = (((LODWORD(STACK[0x2230]) ^ 0xF9405613) >> v123) ^ ((LODWORD(STACK[0x2230]) ^ 0xF9405613) << v118)) - 113224173 - ((2 * (((LODWORD(STACK[0x2230]) ^ 0xF9405613) >> v123) ^ ((LODWORD(STACK[0x2230]) ^ 0xF9405613) << v118))) & 0xF280AC26);
  if (v112 != 477323025)
  {
    v117 = v120;
  }

  LODWORD(STACK[0x1E50]) = v117;
  LODWORD(STACK[0x21B0]) = v113 ^ 0x5BA4AC9C;
  if (v112 == 477323025)
  {
    v128 = v113 ^ 0x5BA4AC9C;
  }

  else
  {
    v128 = v121;
  }

  LODWORD(STACK[0x1E48]) = v128;
  if (v112 == 477323025)
  {
    v129 = v122;
  }

  else
  {
    v129 = v125;
  }

  LODWORD(STACK[0x1E20]) = v129;
  LODWORD(STACK[0x2268]) = v126;
  if (v112 == 477323025)
  {
    v130 = v126;
  }

  else
  {
    v127 = ((v126 ^ 0xF9405613) >> v114) ^ ((v126 ^ 0xF9405613) << v118);
    v130 = v127 - 113224173 - ((2 * v127) & 0xF280AC26);
  }

  LODWORD(STACK[0x1E90]) = v130;
  v188 = v112 == 477323025;
  v131 = STACK[0x2228];
  STACK[0x1E38] = v118;
  v132 = ((v131 ^ 0xF9405613) >> v114) | ((v131 ^ 0xF9405613) << v118);
  LODWORD(STACK[0x2070]) = v132 - 113224173 - ((2 * v132) & 0xF280AC26);
  v133 = STACK[0x22B0];
  v134 = (STACK[0x1D60] >> STACK[0x22B0]) ^ STACK[0x1D68];
  v135 = v98 ^ (v134 + 2039704983 - ((2 * v134) & 0xF326DB2E));
  v136 = (v135 + 477323025 - ((2 * v135) & 0x38E6BE22)) ^ LODWORD(STACK[0x2170]);
  v137 = STACK[0x1B70] >> STACK[0x22B0];
  v138 = STACK[0x2250];
  v139 = (LODWORD(STACK[0x2250]) ^ 0xE91A89A3) & STACK[0x1D70];
  v140 = STACK[0x2270];
  v141 = v101 ^ (((v139 << v140) | v137) + 2039704983 - ((2 * ((v139 << v140) | v137)) & 0xF326DB2E));
  v142 = (v141 + 477323025 - ((2 * v141) & 0x38E6BE22)) ^ LODWORD(STACK[0x2140]);
  v143 = STACK[0x22A0];
  v144 = (((LODWORD(STACK[0x2250]) ^ 0xE91A89A3) & STACK[0x1C38]) << STACK[0x2270]) + (STACK[0x1BE0] >> STACK[0x22A0]);
  v145 = v107 ^ (v144 + 2039704983 - ((2 * v144) & 0xF326DB2E));
  v146 = (v145 + 477323025 - ((2 * v145) & 0x38E6BE22)) ^ LODWORD(STACK[0x2198]);
  v147 = STACK[0x1F18];
  v148 = (v146 - 790354457 - ((2 * v146) & 0xA1C84BCE)) ^ LODWORD(STACK[0x1F18]);
  v149 = ((v148 >> 8) + 111) ^ 0x74 ^ ((((v148 >> 8) + 111) ^ 0x74) - ((2 * (((v148 >> 8) + 111) ^ 0x74) + 2) & 0xA) - 114) ^ 0x37 ^ *(STACK[0x1B58] + ((BYTE1(v148) + 111) ^ 0xE0));
  v150 = STACK[0x22C0];
  LODWORD(v137) = v102 ^ ((v139 << v150) + v137 + 2039704983 - ((2 * ((v139 << v150) + v137)) & 0xF326DB2E));
  LODWORD(v137) = (v137 + 477323025 - ((2 * v137) & 0x38E6BE22)) ^ LODWORD(STACK[0x2138]);
  v151 = (v136 - 790354457 - ((2 * v136) & 0xA1C84BCE)) ^ LODWORD(STACK[0x1F18]);
  v152 = (v142 - 790354457 - ((2 * v142) & 0xA1C84BCE)) ^ LODWORD(STACK[0x1F18]);
  LODWORD(v139) = (v137 - 790354457 - ((2 * v137) & 0xA1C84BCE)) ^ LODWORD(STACK[0x1F18]);
  HIDWORD(v153) = *(v24 + ((v151 >> 22) & 0x3FC));
  LODWORD(v153) = HIDWORD(v153);
  v154 = ((v152 >> 23) & 0x1BE) + (HIBYTE(v152) ^ 0xFFFFFFDF);
  v155 = (v153 >> 24) ^ __ROR4__(*(v24 + 4 * ((v137 - 25 - ((2 * v137) & 0xCE)) ^ LODWORD(STACK[0x1F18]))), 16) ^ __ROR4__(*(v24 + 4 * ((v149 >> 2) | (v149 << 6))), 8) ^ *(v24 + 4 * BYTE2(v152));
  v156 = v100 ^ ((STACK[0x1BD8] >> STACK[0x22A0]) | STACK[0x1D90]) ^ (v155 + 1467975188 - ((2 * v155) & 0xAEFF0C28));
  LOBYTE(v137) = *(STACK[0x2290] + ((BYTE3(v139) + 111) ^ 0xF8)) ^ 5;
  LOBYTE(v137) = (-111 * v137) ^ (68 * v137 * -111 * v137) ^ 0x3B;
  HIDWORD(v153) = *(v24 + 4 * BYTE1(v152));
  LODWORD(v153) = HIDWORD(v153);
  LODWORD(v137) = (v153 >> 8) ^ __ROR4__(*(v24 + 4 * ((v137 >> 2) | (v137 << 6))), 24) ^ __ROR4__(*(v24 + 4 * v148), 16) ^ *(v24 + 4 * BYTE2(v151));
  v157 = (STACK[0x1E98] & LODWORD(STACK[0x1BD0]));
  LODWORD(v137) = v106 ^ (STACK[0x1B68] >> STACK[0x22A0]) ^ (v157 << STACK[0x2270]) ^ (v137 + 1467975188 - ((2 * v137) & 0xAEFF0C28));
  v158 = v137 - 790354457 - ((2 * v137) & 0xA1C84BCE);
  HIDWORD(v153) = *(v24 + 4 * BYTE1(v151));
  LODWORD(v153) = HIDWORD(v153);
  v159 = (v153 >> 8) ^ __ROR4__(*(v24 + 4 * v152), 16) ^ __ROR4__(*(v24 + ((v148 >> 22) & 0x3FC)), 24) ^ *(v24 + 4 * BYTE2(v139));
  v160 = (v159 + 1467975188 - ((2 * v159) & 0xAEFF0C28)) ^ LODWORD(STACK[0x1E28]);
  v161 = (v160 - 790354457 - ((2 * v160) & 0xA1C84BCE)) ^ LODWORD(STACK[0x1F18]);
  LODWORD(v137) = LODWORD(STACK[0x1BA4]) ^ ((v161 & 0x27272727 ^ 0x27272727) + (v161 & 0x27272727));
  v162 = STACK[0x2238];
  v163 = (((v137 & STACK[0x22A8]) >> STACK[0x22B0]) + ((v137 & STACK[0x2238]) << STACK[0x22C0])) ^ v161;
  LODWORD(v137) = *(v24 + 4 * BYTE2(v148)) ^ ((STACK[0x1B68] >> STACK[0x22B0]) + (v157 << STACK[0x22C0]));
  LODWORD(STACK[0x1B54]) = v154;
  LODWORD(v137) = v137 ^ __ROR4__(*(v24 + 4 * (v154 + 33)), 24) ^ __ROR4__(*(v24 + 4 * v151), 16);
  LODWORD(v153) = __ROR4__(*(v24 + 4 * BYTE1(v139)), 8);
  LODWORD(v137) = ((v137 ^ v153) + 1467975188 - ((2 * (v137 ^ v153)) & 0xAEFF0C28)) ^ LODWORD(STACK[0x1E40]);
  LOWORD(v149) = v158 ^ v147;
  v164 = ((v158 ^ v147) >> 24) - (((v158 ^ v147) >> 23) & 0x3E);
  LODWORD(v139) = *(STACK[0x2260] + ((-55 * ((v158 ^ v147) >> 16)) ^ 0xF2));
  v165 = (-55 * (v158 ^ v147)) ^ 0xD2 ^ (((-55 * (v158 ^ v147)) ^ 0xD2) - ((2 * ((-55 * (v158 ^ v147)) ^ 0xD2) + 6) & 0xA) - 96);
  HIDWORD(v153) = v139 ^ 1;
  LODWORD(v153) = (v139 ^ 4) << 24;
  v166 = (v156 - 790354457 - ((2 * v156) & 0xA1C84BCE)) ^ v147;
  v167 = STACK[0x2258];
  v168 = (v137 - 790354457 - ((2 * v137) & 0xA1C84BCE)) ^ v147;
  LOBYTE(v148) = *(STACK[0x2258] + ((-55 * v149) ^ 0x3ELL)) ^ v165;
  LOBYTE(v157) = (v153 >> 26) ^ ((v153 >> 26) >> 5) ^ ((v153 >> 26) >> 3);
  HIDWORD(v153) = *(v24 + 4 * BYTE1(v149));
  LODWORD(v153) = HIDWORD(v153);
  v169 = (v153 >> 8) ^ __ROR4__(*(v24 + 4 * v166), 16);
  LODWORD(v137) = *(v24 + 4 * BYTE2(v166)) ^ __ROR4__(*(v24 + 4 * (((v137 + 9703 - ((2 * v137) & 0x4BCE)) ^ v147) >> 8)), 8) ^ __ROR4__(*(v24 + 4 * v163), 16);
  HIDWORD(v153) = *(v24 + 4 * BYTE1(v163));
  LODWORD(v153) = HIDWORD(v153);
  v170 = (v153 >> 8) ^ __ROR4__(*(v24 + ((v166 >> 22) & 0x3FC)), 24);
  LODWORD(v153) = __ROR4__(*(v24 + 4 * ((v164 - 97) ^ 0x9FLL)), 24);
  LODWORD(v151) = *(v24 + ((v163 >> 22) & 0x3FC));
  v171 = STACK[0x2280];
  v172 = ((((v151 & 0x4F4F4F4F ^ 0x4F4F4F4F) + (v151 & 0x4F4F4F4F)) & LODWORD(STACK[0x2280])) >> 1) ^ 0x4F4F4F4F;
  LODWORD(v137) = ((v137 ^ v153) - 1842992728 - ((2 * (v137 ^ v153)) & 0x244C5350)) ^ LODWORD(STACK[0x1E08]) ^ (((v172 & v162) << v140) | ((v172 & STACK[0x1C30]) >> v143));
  v173 = v170 ^ *(v24 + 4 * BYTE2(v168)) ^ __ROR4__(*(v24 + 4 * ((v148 ^ 0x1C) - 58)), 16);
  v174 = v137 - 790354457 - ((2 * v137) & 0xA1C84BCE);
  LODWORD(v137) = v173 - 1842992728 - ((2 * v173) & 0x244C5350);
  v175 = *(v24 + 4 * HIBYTE(v168));
  LODWORD(v163) = v169 ^ *(v24 + 4 * BYTE2(v163)) ^ (v175 << 8) ^ HIBYTE(v175);
  LODWORD(STACK[0x1E00]) = v138 ^ 0x690E89A3;
  v176 = ((v138 ^ 0x690E89A3u) & STACK[0x1C10]) << v140;
  STACK[0x1E28] = v176;
  v177 = STACK[0x1B88] >> v143;
  STACK[0x1E08] = v177;
  STACK[0x22A0] = v143;
  v178 = (LODWORD(STACK[0x1E18]) ^ (v176 + v177) ^ v137) - 790354457 - ((2 * (LODWORD(STACK[0x1E18]) ^ (v176 + v177) ^ v137)) & 0xA1C84BCE);
  v179 = STACK[0x1B90] >> v133;
  STACK[0x1DF8] = v179;
  LODWORD(v163) = LODWORD(STACK[0x1E30]) ^ (v179 | STACK[0x1BC8]) ^ (v163 - 1842992728 - ((2 * v163) & 0x244C5350));
  LODWORD(v137) = v163 - 790354457 - ((2 * v163) & 0xA1C84BCE);
  LODWORD(v163) = __ROR4__(*(v24 + 4 * BYTE1(v166)), 8) ^ 0x7ABF8EF3 ^ __ROR4__(v151, 24) ^ *(v24 + 4 * ((v157 ^ 0x13) - 58));
  LODWORD(v153) = __ROR4__(*(v24 + 4 * v168), 16);
  v180 = LODWORD(STACK[0x1E80]) ^ ((STACK[0x1BB0] >> v133) + STACK[0x1BB8]) ^ ((v163 ^ v153) - 1842992728 - ((2 * (v163 ^ v153)) & 0x244C5350));
  v181 = v147 ^ 0x7ABF8EF3 ^ (v180 - 790354457 - ((2 * v180) & 0xA1C84BCE));
  v182 = *(v167 + ((-55 * BYTE1(v181)) ^ 0x3ELL)) ^ (201 * (v181 >> 8)) ^ 0xFFFFFFD2 ^ (((201 * (v181 >> 8)) ^ 0xFFFFFFD2) - ((2 * ((201 * (v181 >> 8)) ^ 0xFFFFFFD2) + 6) & 0xA) - 96);
  v183 = v137 ^ v147;
  v184 = (((v137 ^ v147) >> 10) & 0x40 ^ 0x4E) + (((v137 ^ v147) >> 10) & 0x40);
  v185 = STACK[0x1F50];
  v186 = (((v185 ^ 0x1C735F11u) >> STACK[0x1DF0]) ^ ((v185 ^ 0x1C735F11u) << v118)) + 477323025 - ((2 * (((v185 ^ 0x1C735F11u) >> STACK[0x1DF0]) ^ ((v185 ^ 0x1C735F11u) << v118))) & 0x38E6BE22);
  v187 = STACK[0x2230];
  if (!v188)
  {
    v187 = STACK[0x1E10];
  }

  LODWORD(STACK[0x1E40]) = v187;
  v188 = LODWORD(STACK[0x21A0]) == 1775809920;
  v189 = (BYTE1(v183) + 111) ^ 0x74 ^ (((BYTE1(v183) + 111) ^ 0x74) - ((2 * ((BYTE1(v183) + 111) ^ 0x74) + 2) & 0xA) - 114);
  v190 = *(STACK[0x2298] + ((BYTE1(v183) + 111) ^ 0xE0));
  v191 = ((v190 ^ v189 ^ 0x37) >> 2) | ((v190 ^ v189 ^ 0x37) << 6);
  v192 = v174 ^ v147;
  v193 = (v184 - 3) ^ *(STACK[0x1F00] + (((v183 >> 10) & 0xC0 | (v183 >> 18) & 0x3F) ^ 0xA7));
  v194 = v178 ^ v147;
  v195 = *(v24 + 4 * BYTE2(v192)) ^ __ROR4__(*(v24 + 4 * v183), 16) ^ __ROR4__(*(v24 + 4 * BYTE1(v194)), 8);
  HIDWORD(v196) = *(v24 + 4 * v181);
  LODWORD(v196) = HIDWORD(v196);
  v197 = (v196 >> 16) ^ __ROR4__(*(v24 + 4 * v191), 8);
  LODWORD(v196) = __ROR4__(*(v24 + ((v181 >> 22) & 0x3FC)), 24);
  v198 = v197 ^ *(v24 + 4 * BYTE2(v194)) ^ (*(v24 + ((v192 >> 22) & 0x3FC)) << LODWORD(STACK[0x1C70])) ^ HIBYTE(*(v24 + ((v192 >> 22) & 0x3FC)));
  v199 = (v195 ^ v196) + 477323025 - ((2 * (v195 ^ v196)) & 0x38E6BE22);
  if (LODWORD(STACK[0x21A0]) == 1775809920)
  {
    v200 = v185;
  }

  else
  {
    v200 = v186;
  }

  v201 = (v138 ^ 0x91C8981u) & STACK[0x1CC0];
  STACK[0x1E10] = v201;
  v202 = v201 << v150;
  STACK[0x1E30] = v202;
  v203 = STACK[0x1F30] >> v143;
  v204 = v200 ^ v202 ^ v203 ^ v147 ^ v199;
  LODWORD(STACK[0x2198]) = v204;
  v205 = v203 ^ LODWORD(STACK[0x1C68]) ^ LODWORD(STACK[0x1E48]);
  LODWORD(STACK[0x1E98]) = 477323026;
  LODWORD(v202) = v147 ^ (v205 + 477323026 + ~((2 * v205) & 0x38E6BE22)) ^ __ROR4__(*(v24 + ((v194 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v24 + 4 * ((v182 ^ 0x1C) - 58)), 8) ^ __ROR4__(*(v24 + 4 * v192), 16) ^ *(v24 + 4 * (v193 + 13));
  v206 = LODWORD(STACK[0x1BA0]) ^ ((STACK[0x1F38] >> v133) + 477323025 - ((2 * (STACK[0x1F38] >> v133)) & 0x38E6BE22)) ^ v147 ^ LODWORD(STACK[0x1E20]) ^ (v198 - 790354457 - ((2 * v198) & 0xA1C84BCE));
  v207 = *(v24 + 4 * BYTE2(v181)) ^ __ROR4__(*(v24 + 4 * BYTE1(v192)), 8) ^ __ROR4__(*(v24 + 4 * v194), 16) ^ (((*(v24 + ((v183 >> 22) & 0x3FC)) << 8) + 477323025 - ((*(v24 + ((v183 >> 22) & 0x3FC)) << 9) & 0x38E6BE00)) ^ 0x1C735F11 | HIBYTE(*(v24 + ((v183 >> 22) & 0x3FC))));
  v208 = LODWORD(STACK[0x1E50]) ^ (((v138 ^ 0x91C8981u) & STACK[0x1BF8]) << v140) ^ (STACK[0x1BA8] >> v133) ^ v147 ^ (v207 + 477323025 - ((2 * v207) & 0x38E6BE22));
  v209 = BYTE1(v204) ^ 0x25;
  LODWORD(STACK[0x2138]) = v204 ^ 0xD0E425E7;
  v210 = v202 ^ 0xCC977AF6;
  STACK[0x2140] = v210;
  LODWORD(STACK[0x1E48]) = v202;
  v211 = STACK[0x7C0];
  v212 = *(STACK[0x7C0] + 4 * (57 * ((v204 ^ 0xD0E425E7) >> 24) - 262 * (((912513 * ((v204 ^ 0xD0E425E7) >> 24)) >> 16) >> 6)));
  LOWORD(v207) = 57 * BYTE1(v210) - 262 * (((912513 * BYTE1(v210)) >> 16) >> 6);
  HIDWORD(v213) = v212 ^ 0xD105;
  LODWORD(v213) = v212 ^ 0x15660000;
  LODWORD(v210) = (v213 >> 16) + 359059717 - ((2 * (v213 >> 16)) & 0x2ACDA20A);
  v214 = v206;
  STACK[0x2170] = v206;
  v215 = *(v211 + 4 * (57 * BYTE2(v206) - 262 * (((912513 * BYTE2(v206)) >> 16) >> 6)));
  HIDWORD(v213) = v215 ^ 0x66D105;
  LODWORD(v213) = v215 ^ 0x15000000;
  v216 = v213 >> 24;
  LODWORD(STACK[0x1E20]) = v208;
  v217 = *(v211 + 4 * (57 * (v208 ^ 0xE7) - 262 * (((912513 * (v208 ^ 0xE7u)) >> 16) >> 6)));
  LODWORD(STACK[0x21A0]) = 359059712;
  HIDWORD(v213) = v217 ^ 5;
  LODWORD(v213) = v217 ^ 0x1566D100;
  v218 = STACK[0x1CB0];
  v219 = ((LODWORD(STACK[0x21C0]) << v150) & STACK[0x1CB0]) >> v150;
  v220 = STACK[0x2240] >> v133;
  v221 = v133;
  STACK[0x22B0] = v133;
  v222 = ((v220 & v218) << v133) + v219;
  v223 = STACK[0x1CE0] & (((v222 ^ ((v222 & v171) >> 1)) & STACK[0x1CE4]) >> 2) ^ v222 ^ ((v222 & v171) >> 1);
  LODWORD(v206) = v223 ^ 0x1C735F11 ^ STACK[0x1CD0] & ((v223 & STACK[0x1CD8]) >> 4);
  v224 = LODWORD(STACK[0x1FE8]) ^ LODWORD(STACK[0x2038]);
  v225 = STACK[0x1FE8];
  LODWORD(STACK[0x1E80]) = v224;
  v226 = v224 ^ LODWORD(STACK[0x1E68]) ^ v216 ^ v210 ^ (v213 >> 8) ^ 0xB2FE30A8 ^ *(v211 + 4 * v207);
  v227 = (v226 + 477323025 - ((2 * v226) & 0x38E6BE22)) ^ v206;
  v228 = v206;
  LODWORD(STACK[0x1E18]) = v206;
  v229 = STACK[0x21C8];
  v230 = STACK[0x2130];
  LODWORD(v210) = ((v227 ^ 0x12121212u) >> STACK[0x21C8]) | ((v227 ^ 0x12121212u) << STACK[0x2130]);
  v231 = v210 + 477323025 - ((2 * v210) & 0x38E6BE22);
  v232 = *(STACK[0x2290] + (((BYTE3(v202) ^ 0xCC) + 111) ^ 0xF8)) ^ 5;
  HIDWORD(v213) = ~(-111 * v232);
  LODWORD(v213) = ((-111 * v232) ^ (68 * v232 * -111 * v232) ^ 0x38) << 24;
  v233 = v213 >> 26;
  v234 = *(v211 + 4 * (57 * v214 - 262 * (((912513 * v214) >> 16) >> 6)));
  HIDWORD(v213) = v234 ^ 5;
  LODWORD(v213) = v234 ^ 0x1566D100;
  v235 = v213 >> 8;
  v236 = v233 - ((2 * v233) & 0xFFFFFFE7) + 115;
  LODWORD(STACK[0x1B38]) = v236;
  v237 = *(v211 + 4 * (57 * (v236 ^ 0x73) - 262 * (((912513 * (v236 ^ 0x73u)) >> 16) >> 6)));
  HIDWORD(v213) = v237 ^ 0xD105;
  LODWORD(v213) = v237 ^ 0x15660000;
  v238 = v213 >> 16;
  v239 = STACK[0x2228];
  if (!v188)
  {
    v239 = STACK[0x2070];
  }

  LODWORD(STACK[0x1DF0]) = v239;
  v240 = STACK[0x22B8];
  v241 = v227 ^ 0xE614D03;
  if (LODWORD(STACK[0x22B8]) != 477323025)
  {
    v241 = v231;
  }

  LODWORD(STACK[0x1E68]) = v241;
  v242 = v208 ^ 0xD0E425E7;
  STACK[0x2070] = v242;
  LODWORD(v242) = *(v211 + 4 * (57 * BYTE2(v242) - 262 * (((912513 * BYTE2(v242)) >> 16) >> 6)));
  HIDWORD(v243) = v242 ^ 0x66D105;
  LODWORD(v243) = v242 ^ 0x15000000;
  LODWORD(v242) = LODWORD(STACK[0x1E78]) ^ 0x1C735F11 ^ *(v211 + 4 * (57 * v209 - 262 * (((912513 * v209) >> 16) >> 6))) ^ (v235 + 359059717 - ((2 * v235) & 0x2ACDA20A)) ^ (v243 >> 24) ^ v238;
  LODWORD(v242) = (v242 + 840037157 - ((2 * v242) & 0x6423E64A)) ^ v225;
  LODWORD(v242) = (v242 - 1642741227 - ((2 * v242) & 0x3C2B842A)) ^ LODWORD(STACK[0x2150]);
  LODWORD(STACK[0x1E78]) = 477323033;
  LODWORD(v242) = (((v242 + 165695329 - ((2 * v242) & 0x13C09EC2)) ^ 0x9E04F61) + 477323025 - 2 * (((v242 + 165695329 - ((2 * v242) & 0x13C09EC2)) ^ 0x9E04F61) & 0x1C735F19 ^ (v242 + 165695329 - ((2 * v242) & 0x13C09EC2)) & 8)) ^ v228;
  v244 = ((v242 ^ 0x12121212) << v230) + ((v242 ^ 0x12121212) >> v229);
  v245 = STACK[0x21E8];
  v246 = LODWORD(STACK[0x21E8]) ^ 0x696E25EEu;
  STACK[0x1DD0] = v246;
  v248 = v242 ^ 0xE614D03;
  if (v240 != 477323025)
  {
    v248 = v244 + 477323025 - ((2 * v244) & 0x38E6BE22);
  }

  LODWORD(STACK[0x1E50]) = v248;
  v247 = (v246 >> v230) + (v246 << v229);
  v249 = v247 + 1768826350 - ((2 * v247) & 0xD2DC4BDC);
  v250 = STACK[0x2220];
  v251 = ((v250 ^ 0x438F6703) >> v230) ^ ((v250 ^ 0x438F6703) << v229);
  v252 = v251 + 1133471491 - ((2 * v251) & 0x871ECE06);
  HIDWORD(v253) = LODWORD(STACK[0x21D0]) ^ 0x11111111;
  LODWORD(v253) = LODWORD(STACK[0x21D0]) ^ 0x1C735F00;
  v254 = (v253 >> 8) ^ LODWORD(STACK[0x1EC0]);
  LODWORD(v253) = __ROR4__(*(v24 + 4 * (STACK[0x1FF0] ^ 0xC6u)), 16);
  v255 = LODWORD(STACK[0x1EB0]) ^ 0x27;
  v256 = STACK[0x21D8];
  LODWORD(STACK[0x1EB0]) = LODWORD(STACK[0x21D8]) ^ 0x77E;
  v257 = v254 ^ v253 ^ *(v24 + 4 * (v256 ^ 0x7Eu ^ v255));
  LODWORD(STACK[0x21D0]) = v256 ^ 0x6DD;
  v258 = v147 ^ ((STACK[0x1C20] >> v221) + LODWORD(STACK[0x1C28])) ^ (v257 + (v256 ^ 0x438F645F) - ((2 * v257) & 0x871ECE06)) ^ LODWORD(STACK[0x1E58]);
  LODWORD(STACK[0x1FF0]) = ((v258 ^ 0xD0E425E7) >> 24) - (((v258 ^ 0xD0E425E7) >> 23) & 0xA);
  v259 = (LODWORD(STACK[0x1ED8]) + 477323025 - ((2 * LODWORD(STACK[0x1ED8])) & 0x38E6BE22)) ^ LODWORD(STACK[0x1EC8]);
  v260 = STACK[0x2270];
  v261 = (v259 + 1133471491 - ((2 * v259) & 0x871ECE06)) ^ ((STACK[0x1E00] & LODWORD(STACK[0x1C18])) << STACK[0x2270]) ^ STACK[0x1DF8] ^ LODWORD(STACK[0x1E60]);
  v262 = *(v24 + 4 * (LODWORD(STACK[0x20D8]) ^ 0x56u)) ^ __ROR4__(*(v24 + 4 * (LODWORD(STACK[0x1EB8]) ^ 5u)), 8) ^ __ROR4__(*(v24 + 4 * (LODWORD(STACK[0x20D0]) ^ 5u)), 16);
  LODWORD(v253) = __ROR4__(*(v24 + 4 * (LODWORD(STACK[0x2190]) ^ 5u)), 24);
  v263 = STACK[0x1E08];
  v264 = LODWORD(STACK[0x1E70]) ^ STACK[0x1E08] ^ STACK[0x1BC0] ^ ((v262 ^ v253) + 1133471491 - ((2 * (v262 ^ v253)) & 0x871ECE06));
  v265 = v264 - 790354457 - ((2 * v264) & 0xA1C84BCE);
  v266 = (v261 - 790354457 - ((2 * v261) & 0xA1C84BCE)) ^ v147;
  v267 = WORD1(v266) - ((v266 >> 15) & 0xA);
  HIDWORD(v253) = *(v24 + 4 * (LODWORD(STACK[0x1ED0]) ^ 0xCCu));
  LODWORD(v253) = HIDWORD(v253);
  v268 = *(v24 + 4 * (LODWORD(STACK[0x20E0]) ^ 5u));
  LOBYTE(v256) = *(STACK[0x2298] + ((HIBYTE(v268) + 111) ^ 0xE0)) ^ (HIBYTE(v268) + 111) ^ 0x74 ^ (((HIBYTE(v268) + 111) ^ 0x74) - ((2 * ((HIBYTE(v268) + 111) ^ 0x74) + 2) & 0xA) - 114) ^ 0x37;
  v269 = ((v253 >> 16) - 48991124 - ((2 * (v253 >> 16)) & 0xFA28E8D8)) ^ LODWORD(STACK[0x1EE0]) ^ __ROR4__(*(v24 + 4 * STACK[0x20C8]), 8) ^ (((v256 >> 2) | (v256 << 6)) | (v268 << 8));
  v270 = v269 + 1133471491 - ((2 * v269) & 0x871ECE06);
  LODWORD(STACK[0x21E8]) = v245;
  if (v240 != 477323025)
  {
    v245 = v249;
  }

  LODWORD(STACK[0x20E0]) = v245;
  LODWORD(STACK[0x2220]) = v250;
  if (v240 == 477323025)
  {
    v271 = v250;
  }

  else
  {
    v271 = v252;
  }

  v272 = v147 ^ STACK[0x1E28] ^ v263 ^ ((v270 ^ v271) - 790354457 - ((2 * (v270 ^ v271)) & 0xA1C84BCE));
  v273 = *(v24 + 4 * BYTE1(v266));
  HIDWORD(v275) = *(v24 + ((v266 >> 22) & 0x3FC));
  LODWORD(v275) = HIDWORD(v275);
  v274 = v275 >> 24;
  v276 = HIBYTE(HIDWORD(v275)) & 0xC;
  LODWORD(STACK[0x1EB8]) = 477323037;
  v277 = v265 ^ v147;
  HIDWORD(v275) = *(v24 + 4 * v266);
  LODWORD(v275) = HIDWORD(v275);
  v278 = (v275 >> 16) + 477323025 - ((2 * (v275 >> 16)) & 0x38E6BE22);
  HIDWORD(v275) = *(v24 + 4 * (((v265 ^ v147) - ((2 * (v265 ^ v147)) & 0xA) + 5) ^ 5u));
  LODWORD(v275) = HIDWORD(v275);
  v279 = (((v273 << 24) + 477323025 - ((v273 << 25) & 0x38000000)) ^ 0x1C735F11 | (v273 >> 8)) ^ __ROR4__(*(v24 + ((v277 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v24 + 4 * v272), 16) ^ *(v24 + 4 * ((((v258 ^ 0xD0E425E7) >> 16) - (((v258 ^ 0xD0E425E7) >> 15) & 0xA) + 5) ^ 5));
  v280 = (v275 >> 16) ^ __ROR4__(*(v24 + 4 * BYTE1(v272)), 8);
  v281 = (v274 + 477323025 - 2 * (v274 & 0x1C735F1D ^ v276)) ^ __ROR4__(*(v24 + 4 * (v258 ^ 0xE7u)), 16) ^ __ROR4__(*(v24 + 4 * BYTE1(v277)), 8) ^ *(v24 + 4 * (((BYTE2(v272) - ((v272 >> 15) & 0xA) + 13) ^ 5) - 8));
  HIDWORD(v275) = *(v24 + ((v272 >> 22) & 0x3FC));
  LODWORD(v275) = HIDWORD(v275);
  v282 = v280 ^ *(v24 + 4 * ((v267 + 5) ^ 5)) ^ __ROR4__(*(v24 + 4 * ((LODWORD(STACK[0x1FF0]) + 5) ^ 5)), 24);
  v283 = *(v24 + 4 * BYTE2(v277)) ^ v278 ^ ((v275 >> 24) + 477323025 - ((2 * (v275 >> 24)) & 0x38E6BE22)) ^ __ROR4__(*(v24 + 4 * ((((v258 ^ 0x25E7) >> 8) - (((v258 ^ 0xD0E425E7) >> 7) & 0x8C) - 58) ^ 0xC6)), 8);
  v284 = STACK[0x2218];
  v285 = ((v284 ^ 0xF9405613) >> STACK[0x1E88]) | ((v284 ^ 0xF9405613) << STACK[0x1E38]);
  v286 = v285 - 113224173 - ((2 * v285) & 0xF280AC26);
  v188 = LODWORD(STACK[0x21E0]) == -48991124;
  v287 = STACK[0x22A0];
  v288 = LODWORD(STACK[0x1E40]) ^ (STACK[0x1E10] << v260) ^ (STACK[0x1F38] >> STACK[0x22A0]) ^ (v279 - 113224173 - ((2 * v279) & 0xF280AC26));
  v289 = v288 - 790354457 - ((2 * v288) & 0xA1C84BCE);
  v290 = LODWORD(STACK[0x1DF0]) ^ ((STACK[0x1C08] >> STACK[0x22A0]) + STACK[0x1C00]) ^ (v282 - 113224173 - ((2 * v282) & 0xF280AC26));
  LODWORD(v272) = (STACK[0x1B78] >> STACK[0x22A0]) ^ STACK[0x1BF0];
  v291 = LODWORD(STACK[0x1E90]) ^ v272 ^ ((v281 ^ 0x1C735F11) - 113224173 - 2 * ((v281 ^ 0x1C735F11) & 0x7940561B ^ v281 & 8));
  v292 = v291 - 790354457 - ((2 * v291) & 0xA1C84BCE);
  v293 = (v290 - 790354457 - ((2 * v290) & 0xA1C84BCE)) ^ v147;
  v294 = (((v290 + 9703 - ((2 * v290) & 0x4BCE)) ^ v147) >> 8);
  v295 = BYTE2(v293);
  LODWORD(STACK[0x1EE0]) = v293;
  v296 = 57 * v294 - 262 * ((912513 * v294) >> 22);
  LODWORD(STACK[0x20D0]) = v289 ^ v147;
  v297 = *(v211 + 4 * (57 * ((v289 ^ v147) >> 24) - 262 * (((912513 * ((v289 ^ v147) >> 24)) >> 16) >> 6)));
  v298 = (v297 ^ 0x1566D105) << ((v272 & 0x10 ^ 0x10) + (v272 & 0x10));
  v299 = v283 - 113224173 - ((2 * v283) & 0xF280AC26);
  v300 = STACK[0x1E30] ^ (STACK[0x1F30] >> STACK[0x22B0]);
  LODWORD(STACK[0x2218]) = v284;
  if (v188)
  {
    v286 = v284;
  }

  v301 = ((v286 ^ v300 ^ v299) - 790354457 - ((2 * (v286 ^ v300 ^ v299)) & 0xA1C84BCE)) ^ v147;
  v302 = ((v286 ^ v300 ^ v299) - 25 - ((2 * (v286 ^ v300 ^ v299)) & 0xCE)) ^ v147;
  LODWORD(STACK[0x20C8]) = v301;
  v303 = *(STACK[0x2260] + ((-55 * HIBYTE(v301)) ^ 0xF2));
  HIDWORD(v304) = v303 ^ 1;
  LODWORD(v304) = (v303 ^ 4) << 24;
  v305 = v298 | HIWORD(v297) ^ 0x1566;
  v306 = 57 * v295 - 262 * ((912513 * v295) >> 22);
  v307 = (((v304 >> 26) ^ ((v304 >> 26) >> 5) ^ ((v304 >> 26) >> 3) ^ 0x13) - 58);
  v308 = v292 ^ v147;
  v309 = *(v211 + 4 * (57 * v302 - 262 * (((912513 * v302) >> 16) >> 6)));
  v310 = STACK[0x21A0];
  HIDWORD(v304) = v309 ^ 5;
  LODWORD(v304) = v309 ^ LODWORD(STACK[0x21A0]);
  v311 = v305 ^ (v304 >> 8) ^ 0x66D10515;
  v312 = *(v211 + 4 * (57 * (v292 ^ v147) - 262 * (((912513 * (v292 ^ v147)) >> 16) >> 6)));
  HIDWORD(v304) = v312 ^ 5;
  LODWORD(v304) = v312 ^ LODWORD(STACK[0x21A0]);
  v313 = (v304 >> 8) + 359059717 - ((2 * (v304 >> 8)) & 0x2ACDA20A);
  v314 = *(v211 + 4 * (57 * v307 - 262 * (((912513 * v307) >> 16) >> 6)));
  HIDWORD(v304) = v314 ^ 0xD105;
  LODWORD(v304) = v314 ^ 0x15660000;
  v315 = *(v211 + 4 * v296);
  LODWORD(STACK[0x1ED0]) = v315;
  v316 = (v304 >> 16) ^ v315 ^ v313;
  LODWORD(STACK[0x21E0]) = v316;
  v317 = *(v211 + 4 * v306);
  LODWORD(STACK[0x1ED8]) = v317;
  LODWORD(v304) = __ROR4__(v317, 24);
  v318 = ((v311 ^ v304) + 359059717 - ((2 * (v311 ^ v304)) & 0x2ACDA20A)) ^ *(v211 + 4 * (57 * BYTE1(v308) - 262 * (((912513 * BYTE1(v308)) >> 16) >> 6)));
  v319 = (((STACK[0x22A8] >> v287) & STACK[0x1D18]) << v287) + STACK[0x1BE8];
  v320 = v319 ^ ((((((v319 ^ ((v319 & STACK[0x1F10]) >> 1)) & STACK[0x1D20]) >> (v316 & 1) >> !(v316 & 1)) ^ v319) & STACK[0x1F10]) >> 1);
  v321 = STACK[0x1CE8] & ((v320 & STACK[0x1CF0]) >> 4) ^ v320;
  v322 = (v318 + 1768826350 - ((2 * v318) & 0xD2DC4BDC)) ^ LODWORD(STACK[0x1EA0]);
  v323 = STACK[0x1FE8];
  v324 = (v322 + 840037157 - ((2 * v322) & 0x6423E64A)) ^ LODWORD(STACK[0x1FE8]);
  v325 = STACK[0x2150];
  v326 = (v324 - 1642741227 - ((2 * v324) & 0x3C2B842A)) ^ LODWORD(STACK[0x2150]);
  v327 = (v326 + 165695329 - ((2 * v326) & 0x13C09EC2)) ^ v321;
  v328 = STACK[0x2130];
  v329 = STACK[0x1EA8];
  v330 = ((v327 ^ 0x35DC735Du) >> STACK[0x1EA8]) + ((v327 ^ 0x35DC735Du) << STACK[0x2130]);
  v331 = v330 + 1775809920 - ((2 * v330) & 0xD3B16B00);
  v332 = STACK[0x2200];
  v333 = LODWORD(STACK[0x2200]) ^ 0x696E25EEu;
  v334 = v333 >> STACK[0x2130];
  v335 = STACK[0x21C8];
  STACK[0x1EC8] = v333;
  v336 = v334 + (v333 << v335);
  v337 = STACK[0x2288];
  v338 = v327 ^ 0x5C04C6DD;
  if (LODWORD(STACK[0x2288]) != 477323025)
  {
    v338 = v331;
  }

  LODWORD(STACK[0x20D8]) = v338;
  v339 = v336 + 1768826350 - ((2 * v336) & 0xD2DC4BDC);
  v340 = STACK[0x2170];
  STACK[0x1EA0] = STACK[0x2170] >> 24;
  v341 = *(v211 + 4 * (57 * (v340 >> 24) - 262 * (((912513 * (v340 >> 24)) >> 16) >> 6)));
  HIDWORD(v343) = v341 ^ 0xD105;
  LODWORD(v343) = v341 ^ 0x15660000;
  v342 = v343 >> 16;
  v344 = BYTE2(STACK[0x2140]);
  v345 = 57 * v344 - 262 * ((912513 * v344) >> 22);
  v346 = *(v211 + 4 * (57 * (LODWORD(STACK[0x2198]) ^ 0xE7) - 262 * (((912513 * (LODWORD(STACK[0x2198]) ^ 0xE7u)) >> 16) >> 6)));
  HIDWORD(v343) = v346 ^ 5;
  LODWORD(v343) = v346 ^ v310;
  v347 = LODWORD(STACK[0x1EE8]) ^ *(v211 + 4 * (57 * (((STACK[0x1E20] & 0xFF00) >> 8) ^ 0x25) - 262 * (((912513 * (((STACK[0x1E20] & 0xFF00) >> 8) ^ 0x25)) >> 16) >> 6))) ^ v342 ^ ((v343 >> 8) + 359059717 - ((2 * (v343 >> 8)) & 0x2ACDA20A));
  STACK[0x1E90] = v345;
  v348 = *(v211 + 4 * v345);
  v349 = HIBYTE(v348) ^ 0x15;
  LODWORD(STACK[0x1E88]) = v349;
  v350 = ((v347 ^ 0x7AA25A11 ^ (v349 | (v348 << 8))) + 840037157 - ((2 * (v347 ^ 0x7AA25A11 ^ (v349 | (v348 << 8)))) & 0x6423E64A)) ^ v323;
  v351 = v323;
  v352 = (v350 - 1642741227 - ((2 * v350) & 0x3C2B842A)) ^ v325;
  v353 = STACK[0x1E18];
  v354 = (((v352 + 165695329 - ((2 * v352) & 0x13C09EC2)) ^ 0x9E04F61) + 477323025 - 2 * (((v352 + 165695329 - ((2 * v352) & 0x13C09EC2)) ^ 0x9E04F61) & 0x1C735F13 ^ (v352 + 165695329 - ((2 * v352) & 0x13C09EC2)) & 2)) ^ LODWORD(STACK[0x1E18]);
  v355 = ((((v354 ^ 0x12121212u) >> v329) + 477323025 - ((2 * ((v354 ^ 0x12121212u) >> v329)) & 0x38E6BE22)) ^ 0x1C735F11) + ((v354 ^ 0x12121212u) << v328);
  v356 = v355 + 477323025 - ((2 * v355) & 0x38E6BE22);
  LODWORD(STACK[0x2200]) = v332;
  if (v337 == 477323025)
  {
    v339 = v332;
  }

  LODWORD(STACK[0x1EE8]) = v339;
  v357 = STACK[0x2278];
  v358 = v354 ^ 0xE614D03;
  if (LODWORD(STACK[0x2278]) != 477323025)
  {
    v358 = v356;
  }

  LODWORD(STACK[0x1FF0]) = v358;
  v359 = LODWORD(STACK[0x1E48]) ^ 0xFFFFFFF6;
  v360 = -((v340 >> 7) & 0xA) - 55 * (v340 >> 8) + 5;
  v361 = *(STACK[0x2258] + ((-((v340 >> 7) & 0xA) - 55 * BYTE1(v340) + 5) ^ 0x3BLL)) ^ v360 ^ 0xFFFFFFD7 ^ ((v360 ^ 0xFFFFFFD7) - ((2 * (v360 ^ 0xFFFFFFD7) + 6) & 0xA) - 96);
  v362 = *(v211 + 4 * (57 * BYTE2(LODWORD(STACK[0x2138])) - 262 * (((912513 * BYTE2(LODWORD(STACK[0x2138]))) >> 16) >> 6)));
  HIDWORD(v364) = v362 ^ 0x66D105;
  LODWORD(v364) = v362 ^ 0x15000000;
  v363 = v364 >> 24;
  v365 = STACK[0x2070] >> 24;
  STACK[0x1E70] = v365;
  v366 = *(v211 + 4 * (57 * v365 - 262 * (((912513 * v365) >> 16) >> 6)));
  HIDWORD(v364) = v366 ^ 0xD105;
  LODWORD(v364) = v366 ^ 0x15660000;
  v367 = v364 >> 16;
  v368 = *(STACK[0x21B8] + ((v359 + ((12 - 2 * v359) | 0xF5) - 33) ^ 0x1BLL));
  STACK[0x1EC0] = v368;
  v369 = *(v211 + 4 * (57 * (v368 ^ 0x43) - 262 * (((912513 * (v368 ^ 0x43)) >> 16) >> 6)));
  HIDWORD(v364) = v369 ^ 5;
  LODWORD(v364) = v369 ^ v310;
  v370 = (v361 ^ 0x1C) - ((2 * (v361 ^ 0x1C) + 12) & 0xA) - 53;
  LODWORD(STACK[0x2190]) = v370;
  LOWORD(v361) = 57 * (v370 ^ 5) - 262 * (((912513 * (v370 ^ 5u)) >> 16) >> 6);
  v371 = ((LODWORD(STACK[0x2038]) ^ 0x80EFC38D ^ LODWORD(STACK[0x1EF0])) + 477323025 - ((2 * (LODWORD(STACK[0x2038]) ^ 0x80EFC38D ^ LODWORD(STACK[0x1EF0]))) & 0x38E6BE22)) ^ v353;
  v372 = (v371 - 48991124 - ((2 * v371) & 0xFA28E8D8)) ^ v363 ^ v367 ^ *(v211 + 4 * v361) ^ 0xE872A569 ^ (v364 >> 8);
  v373 = v351;
  v374 = (v372 + 840037157 - ((2 * v372) & 0x6423E64A)) ^ v351;
  v375 = ((v374 ^ 0x12121212u) << v328) ^ ((v374 ^ 0x12121212u) >> v329);
  v376 = v375 + 477323025 - ((2 * v375) & 0x38E6BE22);
  v377 = STACK[0x2210];
  v378 = LODWORD(STACK[0x2210]) ^ 0x696E25EEu;
  STACK[0x1EF0] = v378;
  v380 = v374 ^ 0xE614D03;
  if (v357 == 477323025)
  {
    v381 = v380;
  }

  else
  {
    v381 = v376;
  }

  v379 = (v378 >> v328) + (v378 << v329);
  v382 = v379 + 1768826350 - ((2 * v379) & 0xD2DC4BDC);
  v383 = STACK[0x1EE0];
  v384 = STACK[0x20C8];
  v385 = *(v211 + 4 * (57 * HIBYTE(v383) - 262 * (((912513 * HIBYTE(v383)) >> 16) >> 6)));
  HIDWORD(v386) = v385 ^ 0xD105;
  LODWORD(v386) = v385 ^ 0x15660000;
  v387 = __ROR4__(*(v211 + 4 * ((BYTE2(v308) * (STACK[0x1ED0] & 0x39 ^ 1 | STACK[0x1ED0] & 0x39 ^ 0x38)) % 0x106u)), 24) ^ 0x66D10515 ^ (v386 >> 16);
  v388 = STACK[0x20D0];
  v389 = *(v211 + 4 * ((((STACK[0x1ED8] & 0x39 ^ 1) + (STACK[0x1ED8] & 0x39 ^ 0x38)) * LODWORD(STACK[0x20D0])) % 0x106u));
  v390 = *(v211 + 4 * (57 * BYTE1(v384) - 262 * (((912513 * BYTE1(v384)) >> 16) >> 6))) ^ (v387 + 359059717 - ((2 * v387) & 0x2ACDA20A)) ^ (v389 << 24) ^ (v389 >> 8) ^ 0x51566D1;
  v391 = (v390 + 1768826350 - ((2 * v390) & 0xD2DC4BDC)) ^ LODWORD(STACK[0x20E0]);
  v392 = (v391 + 840037157 - ((2 * v391) & 0x6423E64A)) ^ v373;
  v393 = (v392 - 153811428 - ((2 * v392) & 0xEDAA0C38)) ^ LODWORD(STACK[0x2160]) ^ v321;
  v394 = STACK[0x21C8];
  v395 = ((v393 ^ 0x3C3C3C3C) >> STACK[0x21C8]) ^ ((v393 ^ 0x3C3C3C3C) << v328);
  v396 = v395 + 1775809920 - ((2 * v395) & 0xD3B16B00);
  LODWORD(STACK[0x2210]) = v377;
  if (v381 == 477323025)
  {
    v382 = v377;
  }

  v397 = v393 ^ 0x55E489BC;
  if (LODWORD(STACK[0x22B8]) == 477323025)
  {
    v398 = v397;
  }

  else
  {
    v398 = v396;
  }

  v399 = *(v211 + 4 * (57 * BYTE2(v384) - 262 * (((912513 * BYTE2(v384)) >> 16) >> 6)));
  HIDWORD(v400) = v399 ^ 0x66D105;
  LODWORD(v400) = v399 ^ 0x15000000;
  v401 = 57 * HIBYTE(v308) - 262 * (((912513 * HIBYTE(v308)) >> 16) >> 6);
  v402 = *(STACK[0x2290] + ((BYTE1(v388) + 111) ^ 0xF8)) ^ 5;
  v403 = (-111 * v402) ^ (68 * v402 * -111 * v402) ^ 0x3B;
  v404 = (v400 >> 24) ^ (*(v211 + 4 * v401) << 16) ^ HIWORD(*(v211 + 4 * v401));
  v405 = *(v211 + 4 * (57 * v383 - 262 * (((912513 * v383) >> 16) >> 6)));
  HIDWORD(v400) = v405 ^ 5;
  LODWORD(v400) = v405 ^ LODWORD(STACK[0x21A0]);
  v406 = ((v404 ^ (v400 >> 8) ^ 0xD1051566) + 359059717 - 2 * ((v404 ^ (v400 >> 8) ^ 0xD1051566) & 0x1566D11D ^ (v404 ^ (v400 >> 8)) & 0x18)) ^ *(v211 + 4 * (57 * ((v403 >> 2) | (v403 << 6)) - 262 * (((912513 * ((v403 >> 2) | (v403 << 6))) >> 16) >> 6)));
  v407 = (v406 + 1768826350 - ((2 * v406) & 0xD2DC4BDC)) ^ v382;
  v408 = (v407 - 1642741227 - ((2 * v407) & 0x3C2B842A)) ^ LODWORD(STACK[0x2150]);
  v409 = (v408 + 840037157 - ((2 * v408) & 0x6423E64A)) ^ v373;
  v410 = (v409 + 165695329 - ((2 * v409) & 0x13C09EC2)) ^ v321;
  v411 = ((v410 ^ 0x35DC735Du) >> v329) ^ ((v410 ^ 0x35DC735Du) << v328);
  v412 = v411 + 1775809920 - ((2 * v411) & 0xD3B16B00);
  v413 = v410 ^ 0x5C04C6DD;
  if (v381 != 477323025)
  {
    v413 = v412;
  }

  v414 = *(v211 + 4 * (57 * BYTE2(v388) - 262 * (((912513 * BYTE2(v388)) >> 16) >> 6)));
  HIDWORD(v415) = v414 ^ 0x66D105;
  LODWORD(v415) = v414 ^ 0x15000000;
  v416 = LODWORD(STACK[0x1E80]) ^ LODWORD(STACK[0x1EE8]) ^ (((v415 >> 24) ^ LODWORD(STACK[0x21E0])) + 1768826350 - ((2 * ((v415 >> 24) ^ LODWORD(STACK[0x21E0]))) & 0xD2DC4BDC)) ^ v321;
  v417 = ((v416 ^ 0x92B15385) >> v394) + ((v416 ^ 0x92B15385) << v328);
  v418 = v417 + 1775809920 - ((2 * v417) & 0xD3B16B00);
  v419 = v416 ^ 0xFB69E605;
  if (LODWORD(STACK[0x2288]) != 477323025)
  {
    v419 = v418;
  }

  v420 = STACK[0x2080];
  v421 = STACK[0x20D8];
  if (STACK[0x2080])
  {
    v422 = v419;
  }

  else
  {
    v422 = STACK[0x20D8];
  }

  if (v420)
  {
    v423 = STACK[0x20D8];
  }

  else
  {
    v423 = v398;
  }

  if (v420)
  {
    v419 = v413;
    v413 = v398;
  }

  v424 = (STACK[0x2080] & 1) + 477323057 - 2 * (STACK[0x2080] & 1);
  v425 = v424 == 477323057;
  v426 = STACK[0x1E50];
  if (v424 == 477323057)
  {
    v427 = v381;
  }

  else
  {
    v427 = STACK[0x1E50];
  }

  v428 = STACK[0x1E68];
  if (v425)
  {
    v429 = STACK[0x1E68];
  }

  else
  {
    v429 = v381;
  }

  v430 = STACK[0x1FF0];
  if (v425)
  {
    v431 = STACK[0x1FF0];
  }

  else
  {
    v431 = STACK[0x1E68];
  }

  if (v425)
  {
    v430 = STACK[0x1E50];
  }

  v432 = v420 - ((2 * LODWORD(STACK[0x1D98])) ^ 2);
  v433 = (v432 & 2) == 0;
  if ((v432 & 2) != 0)
  {
    v434 = v413;
  }

  else
  {
    v434 = v422;
  }

  if (v433)
  {
    v422 = v413;
    v419 = v423;
    v435 = v430;
  }

  else
  {
    v435 = v429;
  }

  if (v433)
  {
    v436 = v427;
  }

  else
  {
    v436 = v431;
  }

  v437 = STACK[0x2148];
  v438 = (v419 ^ 0x69D8B580) + ((477323025 - 866001703 * (v437 ^ 0x75ABEA91 ^ v422) - ((415480242 * (v437 ^ 0x75ABEA91 ^ v422)) & 0x38E6BE22)) ^ 0xE38CA0EE) - 866001703 * (v436 ^ 0x325D713F) + 1;
  v439 = v438 + LODWORD(STACK[0x1E98]) + ~((2 * v438) & 0x38E6BE22);
  v440 = v434 ^ (642690473 * (v437 ^ 0x325D713F) + 477323025 - ((211639122 * (v437 ^ 0x325D713F)) & 0x38E6BE22)) ^ (642690473 * (v439 ^ v435) + 1775809920 - ((1285380946 * (v439 ^ v435)) & 0xD3B16B00));
  v441 = (v440 ^ 0x1C735F11) + 477323025 - 2 * ((v440 ^ 0x1C735F11) & STACK[0x1E78] ^ v440 & 8);
  v442 = ((LODWORD(STACK[0x2068]) ^ LODWORD(STACK[0x1D88]) ^ 0x2FC8314E) + 1854652540 - 2 * ((LODWORD(STACK[0x2068]) ^ LODWORD(STACK[0x1D88]) ^ 0x2FC8314E) & 0x6E8BC07D ^ (LODWORD(STACK[0x2068]) ^ LODWORD(STACK[0x1D88])) & 1)) ^ LODWORD(STACK[0x2060]);
  v443 = (v442 + 1854652540 - ((2 * v442) & 0xDD1780F8)) ^ LODWORD(STACK[0x2058]);
  v444 = LODWORD(STACK[0x1F60]) ^ LODWORD(STACK[0x2078]) ^ (v443 + 1854652540 - ((2 * v443) & 0xDD1780F8));
  v445 = ((LODWORD(STACK[0x20C0]) ^ LODWORD(STACK[0x2188]) ^ 0x477CC7FC) - 1526629959 - 2 * ((LODWORD(STACK[0x20C0]) ^ LODWORD(STACK[0x2188]) ^ 0x477CC7FC) & 0x250179BB ^ (LODWORD(STACK[0x20C0]) ^ LODWORD(STACK[0x2188])) & 2)) ^ LODWORD(STACK[0x2098]);
  v446 = (v445 + 477323025 - ((2 * v445) & 0x38E6BE22)) ^ LODWORD(STACK[0x2120]);
  v447 = (v446 - 1526629959 - ((2 * v446) & 0x4A02F372)) ^ LODWORD(STACK[0x2090]);
  return (*(STACK[0x22F8] + 8 * (((16 * (((v447 + 782592548) | v447) == 0)) | (32 * (((v447 + 782592548) | v447) == 0))) ^ LODWORD(STACK[0x21D8]))))();
}

uint64_t sub_26AA67070(uint64_t a1, int a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v19 = LODWORD(STACK[0x21D0]) - 1606911619;
  v20 = v19 ^ 0xA0387C4F;
  v21 = v19 & 0x5FC78B71;
  v22 = v15 ^ LODWORD(STACK[0x2000]);
  LODWORD(STACK[0x2288]) = v21;
  v23 = LODWORD(STACK[0x2050]) ^ LODWORD(STACK[0x2040]);
  LODWORD(STACK[0x1EE8]) = v20;
  v24 = (v23 - 420135602 - ((v20 ^ 0xCDEA782D) & (2 * v23))) ^ LODWORD(STACK[0x1FB8]);
  v25 = LODWORD(STACK[0x1FF8]) ^ 0x5AA81665 ^ LODWORD(STACK[0x1F08]) ^ (v24 + 477323025 - ((2 * v24) & 0x38E6BE22)) ^ (v22 + 1188776308 - ((v22 << (v21 ^ 0x71)) & 0x8DB692E8));
  v26 = (v25 - 420135602 - ((2 * v25) & 0xCDEA7A9C)) ^ LODWORD(STACK[0x1FC8]);
  v27 = (v26 - 1981760469 - ((2 * v26) & 0x13C17856)) ^ LODWORD(STACK[0x2048]);
  v28 = (v27 - 1981760469 - ((2 * v27) & 0x13C17856)) ^ LODWORD(STACK[0x1FB0]);
  v29 = (v28 - 1981760469 - ((2 * v28) & 0x13C17856)) ^ LODWORD(STACK[0x1FD0]);
  v30 = (v29 - 495075771 - ((2 * v29) & 0xC4FB7C8A)) ^ LODWORD(STACK[0x20B0]);
  v31 = (v30 - 1981760469 - ((2 * v30) & 0x13C17856)) ^ LODWORD(STACK[0x1FC0]);
  v32 = v31 - 495075771 - ((2 * v31) & 0xC4FB7C8A);
  v33 = ((a5 ^ v18) + 477323025 - ((2 * (a5 ^ v18)) & 0x38E6BE22)) ^ v14;
  v34 = a7 ^ v17 ^ (v33 + 477323025 - ((2 * v33) & 0x38E6BE22));
  v35 = (v12 * v9 + 1775809920 - ((577348782 * v12) & 0xD3B16B00)) ^ v16 ^ v34;
  v36 = a8 ^ v14 ^ (v35 + 477323025 - ((2 * v35) & 0x38E6BE22));
  v37 = v10 ^ v17 ^ (v36 + 477323025 - ((2 * v36) & 0x38E6BE22));
  v38 = (((STACK[0x1DD0] & STACK[0x2280]) >> 1) + 1768826350 - (STACK[0x1DD0] & LODWORD(STACK[0x2280]) & 0xD2DC4BDC)) ^ LODWORD(STACK[0x21E8]);
  v39 = STACK[0x21C0];
  v40 = (((STACK[0x1EF0] & STACK[0x2280]) >> 1) + 1768826350 - (STACK[0x1EF0] & LODWORD(STACK[0x2280]) & 0xD2DC4BDC)) ^ LODWORD(STACK[0x2210]);
  v41 = (((STACK[0x1EC8] & STACK[0x1F10]) >> 1) + 1768826350 - (STACK[0x1EC8] & LODWORD(STACK[0x1F10]) & 0xD2DC4BDC)) ^ LODWORD(STACK[0x2200]);
  v42 = (((STACK[0x1DD8] & STACK[0x2280]) >> 1) + 1768826350 - (STACK[0x1DD8] & LODWORD(STACK[0x2280]) & 0xD2DC4BDC)) ^ LODWORD(STACK[0x21F0]);
  v43 = LODWORD(STACK[0x2088]) ^ (((v38 & STACK[0x2240]) >> STACK[0x22A0]) + ((v38 & STACK[0x21C0]) << STACK[0x22C0])) ^ (((v40 & STACK[0x2238]) << STACK[0x2270]) + ((v40 & STACK[0x2240]) >> STACK[0x22A0])) ^ (((v41 & STACK[0x22A8]) >> STACK[0x22B0]) | ((v41 & v39) << STACK[0x22C0])) ^ (((v42 & v39) << STACK[0x22C0]) | ((v42 & STACK[0x2240]) >> STACK[0x22A0])) ^ v32;
  v44 = v13 ^ LODWORD(STACK[0x20A0]) ^ (v43 - 495075771 - ((2 * v43) & 0xC4FB7C8A));
  v45 = (v44 + 477323025 - ((2 * v44) & 0x38E6BE22)) ^ LODWORD(STACK[0x2168]);
  v46 = (v45 + 477323025 - ((2 * v45) & 0x38E6BE22)) ^ LODWORD(STACK[0x2118]);
  v47 = (v46 + a2 - (a3 & (2 * v46))) ^ LODWORD(STACK[0x2178]);
  v48 = (v47 + 477323025 - ((2 * v47) & 0x38E6BE22)) ^ LODWORD(STACK[0x20A8]);
  v49 = (v48 + 540682685 - ((2 * v48) & 0x4074537A)) ^ LODWORD(STACK[0x2110]);
  v50 = (v49 + 540682685 - ((2 * v49) & 0x4074537A)) ^ LODWORD(STACK[0x2100]);
  v51 = (v50 + 540682685 - ((2 * v50) & 0x4074537A)) ^ LODWORD(STACK[0x2108]);
  v52 = (v51 + 540682685 - ((2 * v51) & 0x4074537A)) ^ LODWORD(STACK[0x21A8]);
  v53 = (v52 + 1133471491 - ((2 * v52) & 0x871ECE06)) ^ LODWORD(STACK[0x2208]);
  v54 = (v53 + 1133471491 - ((2 * v53) & 0x871ECE06)) ^ LODWORD(STACK[0x21F8]);
  v55 = (v54 + 1133471491 - ((2 * v54) & 0x871ECE06)) ^ LODWORD(STACK[0x2220]);
  v56 = (v55 + 1133471491 - ((2 * v55) & 0x871ECE06)) ^ LODWORD(STACK[0x2248]);
  v57 = (v56 - 113224173 - ((2 * v56) & 0xF280AC26)) ^ LODWORD(STACK[0x2228]);
  v58 = (v57 - 113224172 + ~((2 * v57) & 0xF280AC26)) ^ LODWORD(STACK[0x2230]);
  v59 = (v58 - 113224172 + ~((2 * v58) & 0xF280AC26)) ^ LODWORD(STACK[0x2268]);
  v60 = (v59 - 113224173 - ((2 * v59) & 0xF280AC26)) ^ LODWORD(STACK[0x2218]);
  v61 = STACK[0x1D58];
  v62 = (v60 - 1191414106 - ((2 * v60) & 0x71F8ED4C)) ^ LODWORD(STACK[0x1D58]);
  v63 = v62 ^ 0xAF772D02;
  LODWORD(STACK[0x22B8]) = v37;
  v62 ^= 0x5088D2FDu;
  v64 = (v37 ^ 0x325D713F) + 1868968369 * (LODWORD(STACK[0x1B40]) + v63) + 1868968369;
  v65 = LODWORD(STACK[0x1B3C]) ^ a6 ^ (-690719775 * v62 + 477323025 - ((766044098 * v62) & 0x38E6BE22)) ^ 0x7EE9460D;
  v66 = ((v34 ^ 0x1C735F11) + 679052781 * (LODWORD(STACK[0x1B40]) - v62)) ^ 0x54585424;
  LODWORD(STACK[0x2198]) = (v66 >> 8) - ((v66 >> 7) & 0xA);
  v67 = STACK[0x1FA0];
  v68 = STACK[0x2030] + 3163;
  v69 = STACK[0x2030];
  v70 = *(v68 + (((STACK[0x1FA0] ^ 0x3B) + 84) ^ 0x85));
  v71 = STACK[0x1EF8];
  v72 = (STACK[0x1CB8] + STACK[0x1EF8]);
  v73 = *v72 + 84;
  v74 = *(v68 + ((*v72 + 84) ^ 0x85));
  v75 = v11 ^ v61 ^ v60 ^ 0x1B28EB14 ^ v8;
  LODWORD(STACK[0x2138]) = v75;
  LODWORD(STACK[0x22B0]) = v73 ^ v74 ^ (HIBYTE(v75) - ((v75 >> 23) & 0xA) + 5);
  v64 ^= 0x5C641966u;
  LODWORD(STACK[0x20E0]) = *(STACK[0x2258] + ((-55 * BYTE1(v65)) ^ 0x3ELL)) ^ (201 * (v65 >> 8)) ^ 0xFFFFFFD2 ^ (((201 * (v65 >> 8)) ^ 0xFFFFFFD2) - ((2 * ((201 * (v65 >> 8)) ^ 0xFFFFFFD2) + 6) & 0xA) - 96);
  v76 = HIBYTE(v64);
  v77 = v64;
  v78 = STACK[0x2180];
  v79 = *(STACK[0x2180] + ((((v65 & 3) << 6) | (v65 >> 2)) ^ 0x4DLL));
  v80 = v79 ^ (2 * (v79 ^ 0xFFFFFFA7) * (v79 ^ 0xFFFFFFA7)) ^ 0xFFFFFFA2;
  LODWORD(STACK[0x2130]) = v80 - ((2 * v80 + 10) & 0xA);
  LODWORD(STACK[0x21A0]) = v66;
  LODWORD(STACK[0x2148]) = HIWORD(v66) - ((v66 >> 15) & 0x3E);
  v81 = v70 ^ ((v67 ^ 0x3B) + 84);
  LODWORD(STACK[0x2278]) = v81 ^ 5;
  LODWORD(STACK[0x21E0]) = v81 ^ 0xFFFFFF99;
  v82 = STACK[0x2290];
  LOBYTE(v81) = *(STACK[0x2290] + ((((v67 >> 63) + 111) ^ 0x94 ^ (((v81 ^ 5) & 0x4C ^ 0x40) + ((v81 ^ 0xFFFFFF99) & 0x4C))) & 0xDF)) ^ 5;
  LOBYTE(v81) = (-111 * v81) ^ (68 * v81 * -111 * v81) ^ 0x3B;
  LOBYTE(v63) = *(v78 + (((v72[1] >> 2) | (v72[1] << 6)) ^ 0x4DLL));
  v83 = STACK[0x1B30];
  v84 = *(STACK[0x1B30] + (((v63 ^ (2 * (v63 ^ 0xA7) * (v63 ^ 0xA7)) ^ 0xA2) + 100) ^ 0xF4));
  v85 = ((v81 >> 2) | (v81 << 6)) ^ (2 * ((v71 + 0x2D085CDAF7944B3BLL - ((2 * v71) & 0x1EF289670)) ^ v67));
  HIDWORD(v86) = v84 ^ 5;
  LODWORD(v86) = v84 << 24;
  LODWORD(STACK[0x22A0]) = v86 >> 28;
  v87 = *(v83 + ((v85 + 87) ^ 0xF4));
  HIDWORD(v86) = v87 ^ 5;
  LODWORD(v86) = v87 << 24;
  v88 = (v86 >> 28) ^ 0xFFFFFFBF;
  *(&v90 + 1) = v85 ^ (v71 + 1);
  *&v90 = 2 * ((v71 + 0x2D085CDAF7944B3BLL - ((2 * v71) & 0x1EF289670)) ^ v67);
  v89 = v90 >> 63;
  v91 = STACK[0x2260];
  LODWORD(v85) = *(STACK[0x2260] + ((-19 - 55 * v72[2]) ^ 0xF2)) ^ 5;
  v92 = STACK[0x1B28];
  LODWORD(v85) = *(STACK[0x1B28] + (((((v85 >> 2) | (v85 << 6)) ^ (((((v85 >> 2) | (v85 << 6)) >> 2) & 0x38 ^ ((v85 >> 2) | (v85 << 6)) & 0xF8) >> 3) ^ 0x13) - 58) ^ 6));
  DWORD1(v90) = ~v85;
  LODWORD(v90) = (v85 ^ 4) << 24;
  LODWORD(STACK[0x2140]) = v90 >> 25;
  v93 = STACK[0x1B20];
  LODWORD(v85) = *(STACK[0x1B20] + ((v89 + 5) ^ 0x16));
  DWORD1(v90) = v85 ^ 5;
  LODWORD(v90) = v85 << 24;
  LODWORD(STACK[0x21C0]) = v90 >> 30;
  *(&v90 + 1) = v89 ^ (v71 + 2);
  *&v90 = v89;
  v94 = v90 >> 63;
  v95 = v69;
  v96 = v69 + 1582;
  LODWORD(v89) = *(v69 + 1582 + ((v72[3] + 32) ^ 0xE5));
  STACK[0x20D8] = v69 + 1582;
  STACK[0x2190] = (v88 >> 2) | (v88 << 6);
  v97 = v89 ^ 0x67;
  LODWORD(v85) = (8 * (v89 ^ 0x67)) | 0xE8;
  LOBYTE(v88) = v94 + 32;
  LODWORD(v89) = ((v94 + 32) ^ 0x2F) - ((v94 + 32) ^ 0xB5);
  LODWORD(v85) = v97 ^ v85;
  *(&v90 + 1) = v94 ^ (v71 + 3);
  *&v90 = v94;
  v98 = v90 >> 63;
  LOBYTE(v97) = *(v69 + ((-55 * v72[4]) ^ 0x3ELL) + 2901) ^ (-55 * v72[4]) ^ 0xD2 ^ (((-55 * v72[4]) ^ 0xD2) - ((2 * ((-55 * v72[4]) ^ 0xD2) + 6) & 0xA) - 96) ^ 0x1C;
  LOBYTE(v97) = *(v68 + ((v97 + 26) ^ 0x85)) ^ (v97 - ((2 * (v97 + 26)) & 0xA) + 31) ^ 0x86;
  LODWORD(STACK[0x1FF0]) = v77;
  v99 = *(v91 + ((-12 - 55 * v98) ^ 0xF2));
  v100 = *(STACK[0x21B8] + ((v97 - 39) ^ 0x1ELL));
  v101 = STACK[0x21B8];
  LODWORD(v91) = v76 - ((v77 >> 23) & 0xA) + 5;
  LODWORD(STACK[0x21C8]) = v91;
  LOBYTE(v76) = ((v99 ^ 5uLL) >> ((v99 & 0xBB ^ 0xBA) + (v99 & 0xBB ^ 1) + 71)) ^ (v99 << 6);
  v102 = STACK[0x1B18];
  v103 = *(STACK[0x1B18] + (((v76 ^ ((v76 ^ 0x40) >> 5) ^ ((v76 ^ 0x40) >> 3) ^ 0x53) - 58) ^ 0x27)) ^ 0xFFFFFFAE;
  v104 = v103 ^ v100 ^ (v103 >> 3) ^ (v103 >> 4);
  LODWORD(STACK[0x21D8]) = v104;
  LODWORD(v67) = v104 ^ v91;
  *(&v90 + 1) = v98 ^ (v71 + 4);
  *&v90 = v98;
  v105 = v90 >> 63;
  LODWORD(STACK[0x1EF0]) = v67;
  v106 = *(v83 + (((v67 & 0x7E ^ 0x3A) + (v67 & 0x7E ^ 0x44)) ^ (v72[5] + 87) ^ 0x8Au));
  DWORD1(v90) = v106 ^ 0x55555555;
  LODWORD(v90) = v106 << 24;
  v107 = v90 >> 28;
  LODWORD(v89) = v85 ^ (v89 - ((2 * v89) & 0xA) + 5);
  LODWORD(v85) = *(v83 + ((v105 + 87) ^ 0xF4));
  v108 = v89 ^ *(v95 + 1852 + (v88 ^ 0xD1));
  DWORD1(v90) = v85 ^ 5;
  LODWORD(v90) = v85 << 24;
  LODWORD(v85) = v90 >> 28;
  v109 = (v105 ^ (v71 + 5)) << (((v90 & 0x10000000) == 0) + ((v90 & 0x10000000) != 0));
  v110 = v109 | (v105 >> 63);
  *(&v90 + 1) = v110 ^ (v71 + 6);
  *&v90 = v109;
  v111 = v90 >> 63;
  LODWORD(v110) = *(v92 + ((((2 * v110) & 0xA) + (v110 ^ 5)) ^ 6));
  DWORD1(v90) = ~v110;
  LODWORD(v90) = (v110 ^ 4) << 24;
  LODWORD(v110) = *(v82 + ((((v90 >> 25) ^ 0x26 ^ ((8 * (v90 >> 25)) | 0x90)) + 111) ^ 0xF8));
  LODWORD(STACK[0x20D0]) = v85 ^ v107;
  v112 = (-111 * (v110 ^ 5)) ^ (68 * (v110 ^ 5) * -111 * (v110 ^ 5));
  LODWORD(v110) = *(v93 + ((v72[6] + 5) ^ 0x16));
  DWORD1(v90) = v110 ^ 5;
  LODWORD(v90) = v110 << 24;
  LODWORD(STACK[0x2070]) = v90 >> 30;
  v113 = *(v96 + (*(v101 + ((v111 - 7) ^ 0x1ELL)) ^ 0xA6)) ^ 0x67;
  LODWORD(v85) = v113 ^ *(v95 + 1852 + ((v72[7] + 32) ^ 0xD1)) ^ ((8 * v113) | 0xFFFFFFE8);
  LODWORD(v98) = (v77 ^ (((v72[7] + 32) ^ 0x2F) - ((v72[7] + 32) ^ 0xFFFFFFB5))) - ((2 * (v77 ^ (((v72[7] + 32) ^ 0x2F) - ((v72[7] + 32) ^ 0xFFFFFFB5)))) & 0xA) + 5;
  DWORD1(v90) = v85 ^ v98;
  LODWORD(v90) = (v85 ^ ~v98) << 24;
  LODWORD(STACK[0x1FE0]) = ((v112 ^ 0x3B) >> 2) | ((v112 ^ 0x3B) << 6);
  v114 = *(v78 + ((v90 >> 26) ^ 0x4DLL)) ^ 0xFFFFFFA7;
  v115 = v114 ^ (2 * v114 * v114 - ((4 * v114 * v114) & 8) + 5);
  LODWORD(STACK[0x2170]) = v115 - ((2 * v115 + 26) & 0xFFFFFF8C);
  *(&v90 + 1) = v111 ^ (v71 + 7);
  *&v90 = v111;
  v116 = v90 >> 63;
  LODWORD(v111) = (v72[8] + 84) ^ *(v68 + ((v72[8] + 84) ^ 0x85)) ^ (v116 + 84 - ((2 * (v116 + 84)) & 0xA) + 5) ^ *(v68 + ((v116 + 84) ^ 0x85));
  *(&v90 + 1) = v116 ^ (v71 + 8);
  *&v90 = v116;
  v117 = v90 >> 63;
  LODWORD(v85) = *(v83 + ((v117 + 87) ^ 0xF4));
  DWORD1(v90) = v85 ^ 5;
  LODWORD(v90) = v85 << 24;
  LODWORD(v101) = v111 ^ ((~(v65 >> 23) | 0xFFFFFFF5) + HIBYTE(v65) + 6);
  LODWORD(v98) = (v90 >> 28) + (~(2 * (v90 >> 28)) | 0xFFFFFFF5);
  LODWORD(STACK[0x20C8]) = (v108 ^ v75) - 1833093619 - ((2 * (v108 ^ v75)) & 0x1BE);
  *(&v90 + 1) = v117 ^ (v71 + 9);
  *&v90 = v117;
  v118 = v90 >> 63;
  LODWORD(v117) = *(v92 + ((v72[10] + 5) ^ 6));
  DWORD1(v90) = ~v117;
  LODWORD(v90) = (v117 ^ 4) << 24;
  LODWORD(v117) = v90 >> 25;
  v119 = v118 + 0x2D085CDAF7944B3BLL - ((2 * v118) & 0x5A10B9B5EF289676);
  v120 = STACK[0x2298];
  LODWORD(v111) = *(STACK[0x2298] + (((v119 ^ 0x3B) + 116) ^ 0xE0)) ^ ((((v119 ^ 0x3B) + 116) ^ 0x74) - ((2 * (((v119 ^ 0x3B) + 116) ^ 0x74) + 2) & 0xA) - 114) ^ ((v119 ^ 0x3B) + 116) ^ 0x74 ^ 0x37;
  LODWORD(v111) = *(v93 + (((v111 >> 2) & 0xFFFFFF3F | ((v111 & 3) << 6)) ^ 0x16));
  DWORD1(v90) = v111 ^ 5;
  LODWORD(v90) = v111 << 24;
  STACK[0x20E0] = ((8 * v117) | 0xFFFFFF90) ^ v117 ^ (v90 >> 30) ^ (16 * (v90 >> 30)) ^ ((LODWORD(STACK[0x20E0]) ^ 0x1C) - 58);
  *(&v90 + 1) = v119 ^ ((v71 + 10) + 0x2D085CDAF7944B3BLL - ((2 * (v71 + 10)) & 0x1EF289674));
  *&v90 = v119;
  v121 = v90 >> 63;
  LODWORD(v117) = *(v82 + ((v72[11] + 111) ^ 0xF8)) ^ 5;
  LODWORD(v117) = (-111 * v117) ^ (68 * v117 * -111 * v117) ^ 0x3B;
  LODWORD(v111) = ((v117 >> 2) | (v117 << 6)) + 32;
  LODWORD(v117) = ((v111 ^ 0x2F) - (((v111 ^ 0x2F | 0xFFFFFFDA) - ((v111 ^ 0x2F) & 0x25) - 64) ^ v111 ^ 0x2F)) ^ (LODWORD(STACK[0x2130]) + 18);
  LODWORD(v85) = (v117 ^ 5) + ~(2 * ((v117 ^ 5) & 7 ^ v117 & 2));
  *(&v90 + 1) = v121 ^ (v71 + 11);
  *&v90 = v121;
  v122 = v90 >> 63;
  LODWORD(v121) = v121 + 32;
  LODWORD(v121) = (*(v95 + 1852 + (v121 ^ 0xD1)) ^ *(v95 + 1852 + (v111 ^ 0xD1)) ^ ((v121 ^ 0x2F) - (v121 ^ 0xB5) - ((2 * ((v121 ^ 0x2F) - (v121 ^ 0xB5))) & 0xA) + 5) ^ (v85 + 6)) + 111;
  LODWORD(v121) = *(v120 + (v121 ^ 0xE0)) ^ v121 ^ 0x74 ^ ((v121 ^ 0x74) - ((2 * (v121 ^ 0x74) + 2) & 0xA) - 114) ^ 0x37;
  LODWORD(STACK[0x2130]) = ((v121 >> 2) | (v121 << 6)) - ((2 * ((v121 >> 2) | (v121 << 6))) & 0xFFFFFFE7);
  LODWORD(v85) = *(v102 + ((v72[12] + 84) ^ 0x27)) ^ 0xAE;
  LODWORD(STACK[0x1FA0]) = *(v102 + ((v72[12] + 84) ^ 0x27)) ^ 0xFFFFFFAE ^ (v85 >> 4) ^ (v85 >> 3);
  LOBYTE(v85) = *(v68 + ((v122 + 84) ^ 0x85));
  LOBYTE(v111) = v122 + 84 - ((2 * (v122 + 84)) & 0xA);
  *(&v90 + 1) = v122 ^ (v71 + 12);
  *&v90 = v122;
  v123 = (v90 >> 63) + 0x2D085CDAF7944B3BLL - ((2 * (v90 >> 63)) & 0x5A10B9B5EF289676);
  LODWORD(v122) = (LODWORD(STACK[0x2148]) - 97) ^ *(STACK[0x1B10] + ((v72[13] + 87) ^ 0xF1FFFFA3) + ((2 * ((v72[13] + 87) ^ 0x1C)) & 0x17E) + 234881089);
  LOBYTE(v102) = (v122 ^ 0x9A) - ((2 * v122) & 0xA);
  LODWORD(v122) = *(v93 + ((v72[14] + 5) ^ 0x16));
  DWORD1(v90) = v122 ^ 5;
  LODWORD(v90) = v122 << 24;
  LODWORD(v91) = v90 >> 30;
  *(&v90 + 1) = v123 ^ (((v71 - (STACK[0x2128] & 0x38E6BE22) + 477323038) ^ 0x1C735F11u) + 0x2D085CDAF7944B3BLL - ((2 * ((v71 - (STACK[0x2128] & 0x38E6BE22) + 477323038) ^ 0x1C735F11u)) & 0x1EF289676));
  *&v90 = v123;
  v124 = v90 >> 63;
  LOBYTE(v121) = (v102 + 5) ^ *(STACK[0x1B10] + (((v123 ^ 0x3B) + 87) ^ 0x1CLL));
  LODWORD(v123) = *(v92 + (((((v124 + 5) - ((v124 + 5) ^ 0x17)) ^ 0xFFFFFFFE) + (v124 + 5)) ^ 0x11));
  DWORD1(v90) = ~v123;
  LODWORD(v90) = (v123 ^ 4) << 24;
  LODWORD(v123) = (v90 >> 25) ^ v91 ^ ((16 * v91) | 5) ^ ((8 * (v90 >> 25)) | 0xFFFFFF90) ^ (LODWORD(STACK[0x2198]) + 5);
  LOBYTE(v102) = LODWORD(STACK[0x20D0]) ^ HIWORD(LODWORD(STACK[0x1FF0]));
  LOBYTE(v92) = LODWORD(STACK[0x2070]) ^ (16 * LODWORD(STACK[0x2070])) ^ LODWORD(STACK[0x1FE0]) ^ BYTE1(LODWORD(STACK[0x1FF0]));
  LODWORD(STACK[0x2198]) = *(STACK[0x1B10] + ((v72[9] + 87) ^ 0x1CLL)) ^ (v98 + 6) ^ HIWORD(v65);
  LOBYTE(v93) = LODWORD(STACK[0x2140]) ^ ((8 * LODWORD(STACK[0x2140])) | 0x90);
  *(&v90 + 1) = v124 ^ (v71 + 14);
  *&v90 = v124;
  v125 = v90 >> 63;
  LOBYTE(v124) = *(v120 + ((v72[15] + 111) ^ 0xE0)) ^ (v72[15] + 111) ^ 0x74 ^ (((v72[15] + 111) ^ 0x74) - ((2 * ((v72[15] + 111) ^ 0x74) + 2) & 0xA) - 114) ^ 0x37;
  LOBYTE(v124) = ((v124 >> 2) | (v124 << 6)) + 32;
  v126 = STACK[0x21A0];
  LOBYTE(v124) = *(v95 + 1852 + (v124 ^ 0xD1)) ^ ((v124 ^ 0x2F) - (v124 ^ 0xB5) - ((2 * ((v124 ^ 0x2F) - (v124 ^ 0xB5))) & 0xA) + 5) ^ 0xB6 ^ (v126 - ((2 * v126) & 0xA) + 5);
  LODWORD(v95) = *(STACK[0x20D8] + ((v125 + 32) ^ 0xE5));
  v127 = STACK[0x2290];
  LODWORD(v124) = *(STACK[0x2290] + ((v124 + 111) ^ 0xF8)) ^ 5;
  LODWORD(v82) = (-111 * v124) ^ 0x3B;
  LODWORD(v124) = (v82 ^ (68 * v124 * -111 * v124)) >> 2;
  LODWORD(v82) = v95 ^ ((8 * ~v95) | 0xFFFFFFE8) ^ 0x28 ^ (v124 | (v82 << 6));
  v128 = 2 * (v125 ^ (v71 + 15));
  v129 = ((v125 >> 63) + 217) ^ 5 ^ (((v128 | ~v128) & 0x5437) - 21532);
  LODWORD(v124) = v124 | (v82 - 39) ^ 0xFFFFFFE0;
  v130 = (v82 - 39) ^ 0x1ELL;
  v131 = STACK[0x2030];
  LODWORD(v125) = (v124 | v130 | 5) ^ *(STACK[0x2030] + 1319 + ((LODWORD(STACK[0x20C8]) + 2002) ^ 0x92BD3D09));
  LOBYTE(v99) = *(STACK[0x1F00] + (STACK[0x2190] ^ 0xA7));
  v132 = *(STACK[0x21B8] + v130);
  LOBYTE(v124) = v125 ^ (v125 >> 3) & 0x12 ^ 0xDF;
  v133 = *(STACK[0x21B8] + v129);
  v72[3] = v124;
  v134 = STACK[0x20B8];
  LOBYTE(v124) = (*(STACK[0x20B8] + (((*(v131 + 1319 + (v92 ^ 0xD1u)) ^ 0x97 ^ ((~*(v131 + 1319 + (v92 ^ 0xD1u)) & 0x93u) >> ((~v129 | v129) & 3))) - 39) ^ 0xADLL)) ^ 5) - 44;
  v72[6] = v124 ^ (v124 >> 2) ^ (v124 >> 1) ^ 0x9A;
  v72[8] = *(v131 + 3958 + (v101 ^ 0xBBLL)) ^ v101 ^ 0x5B ^ ((v101 ^ 0x5B) - 34) ^ 0xC;
  v72[5] = *(v131 + 3958 + (v102 ^ 0x29)) ^ v102 ^ 0xC9 ^ ((v102 ^ 0xC9) - 34) ^ 0xE6;
  v72[14] = *(v131 + 3958 + (v123 ^ 0xB6)) ^ v123 ^ ((v123 ^ 0x56) - ((2 * (v123 ^ 0x56) + 12) & 0xA) - 29) ^ 0xB2;
  LODWORD(v124) = *(v131 + 1319 + ((LODWORD(STACK[0x1FA0]) ^ (v111 + 5) ^ v85) ^ HIBYTE(v126) ^ 0x69));
  LOBYTE(v111) = v93 ^ LODWORD(STACK[0x21C0]) ^ (16 * LODWORD(STACK[0x21C0]));
  v72[12] = v124 ^ 0x2B ^ (~v124 >> 3) & 0x12;
  v72[13] = *(v131 + 3958 + (v121 ^ 0x8BLL)) ^ v121 ^ 0x6B ^ ((v121 ^ 0x6B) - 34) ^ 0x41;
  LODWORD(v121) = (*(v134 + ((((LODWORD(STACK[0x2130]) + 115) ^ 0x3F) - 39) ^ 0xADLL)) ^ 5) - 44;
  LODWORD(v121) = v121 ^ (v121 >> 2) ^ (v121 >> 1);
  v72[11] = *(v131 + ((((v129 ^ 0xFFFFLL) & 0xF76) + (v129 & 0xF76)) & ~v128 | v128 & 0xF76) + (v121 ^ 0x89)) ^ v121 ^ 0x69 ^ ((v121 ^ 0x69) - ((2 * (v121 ^ 0x69) + 12) & 0xA) - 29) ^ 2;
  LOBYTE(v121) = v132 ^ 0x8A ^ ((v132 ^ 0x8A) + ((2 - 2 * (v132 ^ 0x8A)) | 0xF5) - 28);
  v135 = v132 ^ 0x6A;
  v136 = STACK[0x20E0];
  LOBYTE(v121) = v121 ^ *(v131 + 3958 + v135) ^ 0xF9;
  LODWORD(v93) = STACK[0x22B0];
  LODWORD(v135) = LODWORD(STACK[0x22B0]) ^ LODWORD(STACK[0x21E0]);
  v72[15] = v121;
  LOBYTE(v121) = v135 ^ ((v135 ^ 0xBC) - ((2 * (v135 ^ 0xBC) + 12) & 0xA) - 29);
  v137 = STACK[0x2138];
  v138 = ((v111 ^ BYTE1(LODWORD(STACK[0x2138])) ^ 0x46) + 111) ^ 0xF8;
  *v72 = *(v131 + 3958 + ((LODWORD(STACK[0x2278]) ^ v93) ^ 0xC0u)) ^ v121 ^ 0x9F;
  LOBYTE(v121) = (-111 * (*(v127 + v138) ^ 5)) ^ (68 * (*(v127 + v138) ^ 5) * -111 * (*(v127 + v138) ^ 5)) ^ 0x3B;
  v72[2] = *(v131 + 3958 + (((v121 >> 2) | (v121 << 6)) ^ 0x40)) ^ ((v121 >> 2) | (v121 << 6)) ^ 0xA0 ^ ((((v121 >> 2) | (v121 << 6)) ^ 0xA0) + ((2 - 2 * ((v121 >> 2) | (v121 << 6))) | 0xF5) - 28) ^ 0xAC;
  LODWORD(v92) = LODWORD(STACK[0x2170]) - 45;
  v139 = (-55 * (LODWORD(STACK[0x2198]) ^ 0xE3)) ^ 0xF2;
  LODWORD(v96) = *(v131 + 1319 + ((LODWORD(STACK[0x22A0]) ^ ((v99 ^ 0x4B) + 13) ^ BYTE2(v137)) ^ 0xBCu));
  v140 = STACK[0x2260];
  LODWORD(v96) = *(STACK[0x2260] + ((-55 * (v96 ^ 0xA9 ^ (~v96 >> 3) & 0x12)) ^ 0xF2));
  DWORD1(v90) = v96 ^ 1;
  LODWORD(v90) = (v96 ^ 4) << 24;
  v72[1] = ((v90 >> 26) ^ ((v90 >> 26) >> 5) ^ ((v90 >> 26) >> 3) ^ 0x13) - 58;
  LODWORD(v96) = *(v131 + 1319 + (v136 ^ 0x47));
  v72[10] = v96 ^ 0x71 ^ (~v96 >> 3) & 0x12;
  LODWORD(v96) = *(v140 + ((-55 * (v92 ^ ((v92 ^ 0x74) - ((2 * (v92 ^ 0x74) + 12) & 0xA) - 29) ^ *(v131 + 3958 + (v92 ^ 0x94)) ^ 0x43)) ^ 0xF2));
  DWORD1(v90) = v96 ^ 1;
  LODWORD(v90) = (v96 ^ 4) << 24;
  v72[7] = ((v90 >> 26) ^ ((v90 >> 26) >> 5) ^ ((v90 >> 26) >> 3) ^ 0x13) - 58;
  LODWORD(v96) = *(v140 + v139);
  DWORD1(v90) = v96 ^ 1;
  LODWORD(v90) = (v96 ^ 4) << 24;
  LODWORD(v96) = (v90 >> 26) ^ ((v90 >> 26) >> 5) ^ ((v90 >> 26) >> 3);
  v72[9] = *(v131 + 3958 + (((v96 ^ 0x13) - 58) ^ 0x40)) ^ ((v96 ^ 0x13) - 58) ^ 0xA0 ^ (((2 * v96) | 0xF5) + (((v96 ^ 0x13) - 58) ^ 0xA0) - 28) ^ 0xB7;
  v141 = STACK[0x1B48];
  v142 = LODWORD(STACK[0x1B48]) < 0xF91E1648;
  v143 = STACK[0x1DE8] ^ 0x4ELL;
  v72[4] = *(v131 + 1319 + (LOBYTE(STACK[0x21D8]) ^ ~LOBYTE(STACK[0x21C8]))) ^ 0x23 ^ (~*(v131 + 1319 + (LOBYTE(STACK[0x21D8]) ^ ~LOBYTE(STACK[0x21C8]))) >> 3) & 0x12;
  v144 = STACK[0x1FA8];
  v145 = *(v131 + v143 + 3692) ^ 0x12 ^ (16 * (*(v131 + v143 + 3692) ^ 0x12));
  if (v145 == 15)
  {
    v146 = *(v131 + (STACK[0x1FA8] ^ 0xB6) + 6865) ^ 0x61;
    LOBYTE(v144) = v146 + (((v144 ^ 0x7D) + 127) ^ v144 ^ 0x7D) - 2 * (v146 & (((v144 ^ 0x7D) + 127) ^ v144 ^ 0x7D)) - ((2 * (v146 + (((v144 ^ 0x7D) + 127) ^ v144 ^ 0x7D) - 2 * (v146 & (((v144 ^ 0x7D) + 127) ^ v144 ^ 0x7D)))) & 0x5A) + 45;
  }

  v147 = STACK[0x1FD8];
  v148 = -13 * (*(v131 + (STACK[0x1FD8] ^ 0x5FLL) + 5545) ^ 5);
  v149 = v148 ^ ((v148 & 0xF0) >> 4) ^ 0x59;
  if (v145 == 15 && v144 == 45)
  {
    LOBYTE(v147) = v149;
  }

  v150 = STACK[0x1DE0];
  if (v145 == 15 && v144 == 45 && v147 == 5)
  {
    v151 = *(v131 + (STACK[0x1DE0] ^ 0xF4) + 4497);
  }

  if (v142 == (v71 - 115468712) < 0xF91E1648)
  {
    v142 = v141 > v71 - 115468712;
  }

  return (*(STACK[0x22F8] + 8 * (LODWORD(STACK[0x21D0]) ^ (16 * v142))))();
}

void sub_26AA68A04(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  STACK[0x1FA0] = (v7 ^ v8) + a6 + 0x2D085CDAF7944B3BLL - ((2 * ((v7 ^ v8) + a6)) & 0x5A10B9B5EF289676);
  LODWORD(STACK[0x20D8]) = v10 ^ 0xFFFFFF9F;
  LODWORD(STACK[0x20D0]) = v11 - (a4 & (2 * v11)) + 5;
  LODWORD(STACK[0x20E0]) = v12 ^ 0xFFFFFFC7;
  STACK[0x20C8] = LODWORD(STACK[0x1EF0]) ^ 0xFFFFFFC1;
  LODWORD(STACK[0x2190]) = a7 ^ 0xFFFFFFC7;
  STACK[0x1EF8] = v9 + 16;
  v13 = (LODWORD(STACK[0x2128]) + 32);
  v14 = STACK[0x22C0];
  v15 = STACK[0x22A8];
  v16 = LODWORD(STACK[0x2280]);
  JUMPOUT(0x26AA60894);
}

void sub_26AA68A9C(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x2078]) = a4;
  LODWORD(STACK[0x2080]) = v6;
  LODWORD(STACK[0x2098]) = a6;
  v13 = (LODWORD(STACK[0x1EB0]) ^ 0x593) - ((LODWORD(STACK[0x2138]) >> 7) & 0xA) + (LODWORD(STACK[0x2138]) >> 8);
  v14 = a1 & STACK[0x1EB8];
  v15 = STACK[0x2070] >> 16;
  v16 = STACK[0x2140];
  v17 = STACK[0x1E70] - ((2 * STACK[0x1E70]) & 0xA);
  v18 = (STACK[0x2170] >> 16) + (~(2 * (STACK[0x2170] >> 16)) | 0xFFFFFFF5);
  v19 = STACK[0x1EA0];
  v20 = STACK[0x1E88];
  LODWORD(STACK[0x2090]) = v9;
  LODWORD(STACK[0x2088]) = v9 ^ v12 ^ (v10 - 2 * (v14 ^ v11 & 0xC));
  STACK[0x1CB8] += STACK[0x1EF8];
  LODWORD(STACK[0x22A0]) = v13 + 84;
  STACK[0x1EE0] = v15 - ((2 * v15) & 0xA) + 5;
  LODWORD(STACK[0x22C0]) = (v16 >> 16) - ((2 * (v16 >> 16)) & 0xA) + 5;
  LODWORD(STACK[0x22B0]) = LODWORD(STACK[0x2198]) ^ 0xFFFFFFE2;
  LODWORD(STACK[0x2288]) = LODWORD(STACK[0x1B54]) + 64;
  STACK[0x1FF0] = (v16 >> 8) - ((2 * (v16 >> 8)) & 0x1FFFF8C) - 58;
  LODWORD(STACK[0x20E0]) = v17 + 5;
  STACK[0x20C8] = (v18 + 6);
  v21 = STACK[0x1E90];
  LODWORD(STACK[0x22A8]) = v20 + (~(2 * v20) | 0xFFFFFFF5) + 6;
  LODWORD(STACK[0x20F0]) = v7 ^ 0x2E2E2E2E;
  LODWORD(STACK[0x2070]) = v8 ^ 0x1C735F11;
  v22 = STACK[0x22F8];
  v23 = STACK[0x21B8];
  v24 = STACK[0x2260];
  v25 = STACK[0x2290];
  v26 = STACK[0x15E0];
  JUMPOUT(0x26AA56730);
}

uint64_t sub_26AA68C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = (LODWORD(STACK[0x1EE8]) + 1907537845) & 0x8E4D47FF;
  STACK[0x22C0] = STACK[0x2300];
  v66 = -812407749 * ((a64 ^ *(*STACK[0x22E8] + ((v65 - 1977536118) & *STACK[0x22D0]))) & 0x7FFFFFFF);
  v67 = -812407749 * (v66 ^ HIWORD(v66));
  *a64 = *(*(&off_279CA5FD0 + (v65 ^ 0x2C1)) + (v67 >> 24) - 8) ^ *(*(&off_279CA5FD0 + (v65 ^ 0x213)) + (v67 >> 24) - 4) ^ *(*(&off_279CA5FD0 + (v65 - 597)) + (v67 >> 24) - 11) ^ (59 * (v66 ^ BYTE2(v66))) ^ (-43 * ((-812407749 * (v66 ^ HIWORD(v66))) >> 24));
  return (*(v64 + 8 * (v65 ^ 0xD7)))();
}

uint64_t sub_26AA68D44@<X0>(int a1@<W8>)
{
  v11 = *(v1 + v2) ^ (v8 + v3);
  v12 = (((v11 & 0x7FFFFFFF) * v7) ^ (((v11 & 0x7FFFFFFFu) * v7) >> 16)) * v7;
  v13 = (((v11 & ((a1 + 1595) ^ 0x7FFFF75E)) * v7) ^ (((v11 & ((a1 + 1595) ^ 0x7FFFF75Eu)) * v7) >> 16)) * v7;
  *(v8 + v3) ^= *(STACK[0x22C0] + v3) ^ *(v4 + (v12 >> 24)) ^ *(v5 + (v12 >> 24)) ^ *((v12 >> 24) + v6 + 1) ^ *(*(v9 + 8 * (a1 ^ 0x244)) + (v13 >> 24)) ^ v12 ^ *(*(v9 + 8 * (a1 - 577)) - 12 + (v13 >> 24)) ^ (-43 * BYTE3(v12)) ^ *(*(v9 + 8 * (a1 ^ 0x2DB)) - 12 + (v13 >> 24)) ^ v13 ^ (33 * BYTE3(v13));
  return (*(v10 + 8 * ((268 * (v3 == 15)) ^ a1)))();
}

uint64_t sub_26AA68E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _BYTE *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, _BYTE *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, _BYTE *a59)
{
  STACK[0x2270] = v64;
  STACK[0x2200] = v60;
  *a59 = 0;
  *a47 = 0;
  *(a47 + 8) = 0;
  *(a47 + 16) = 0;
  *(a47 + 24) = 0;
  *(a47 + 28) = 0;
  *(a47 + 30) = 0;
  v66 = ((*(*v63 + (*v62 & 0x5167F4C8)) ^ a50) & 0x7FFFFFFF) * v61;
  v67 = (v66 ^ HIWORD(v66)) * v61;
  *a13 = *a50 ^ *(STACK[0x15C0] + (v67 >> ((v59 + 12) ^ 0xB5u))) ^ *(STACK[0x15B8] + (v67 >> ((v59 + 12) ^ 0xB5u))) ^ *((v67 >> ((v59 + 12) ^ 0xB5u)) + STACK[0x15B0] + 2) ^ v67 ^ (-61 * (v67 >> ((v59 + 12) ^ 0xB5u))) ^ 0x9B;
  return (*(v65 + 8 * v59))();
}

uint64_t sub_26AA68F34@<X0>(uint64_t a1@<X2>, unsigned int a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v12 = ((*(*v10 + (*v9 & a2)) ^ (a1 + a6)) & (v6 + 2147482194)) * v8;
  v13 = (v12 ^ HIWORD(v12)) * v8;
  *(v7 + a6) = *(a1 + a6) ^ *(a5 + (v13 >> 24)) ^ *(a3 + (v13 >> 24)) ^ *((v13 >> 24) + a4 + 2) ^ v13 ^ (-61 * BYTE3(v13)) ^ 0x9B;
  return (*(v11 + 8 * ((107 * (a6 != 31)) ^ v6)))();
}

uint64_t sub_26AA68FD4()
{
  v8 = (v0 + 1363295702) & 0xAEBDCEFB;
  v9.n128_u64[0] = 0x3636363636363636;
  v9.n128_u64[1] = 0x3636363636363636;
  v10.n128_u64[0] = 0x9B9B9B9B9B9B9B9BLL;
  v10.n128_u64[1] = 0x9B9B9B9B9B9B9B9BLL;
  v11 = ((v3 ^ *(*v5 + (*v4 & v6))) & ((v8 - 1000) ^ 0x7FFFF54C)) * v1;
  v12 = (v11 ^ HIWORD(v11)) * v1;
  return (*(v7 + 8 * ((54 * (((*(STACK[0x2200] + (v12 >> (v8 + 125))) ^ *v3 ^ *(STACK[0x2270] + (v12 >> (v8 + 125))) ^ *(v2 + (v12 >> (v8 + 125))) ^ v12 ^ (33 * (v12 >> (v8 + 125)))) >> 7) & 1)) ^ v8)))(v9, v10);
}

uint64_t sub_26AA690B4(int8x16_t a1, int8x16_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int8x16_t *a10)
{
  v17 = a4 ^ v10;
  *a10 = veorq_s8(vaddq_s8(vsubq_s8(*a10, vandq_s8(vaddq_s8(*a10, *a10), a1)), a2), *v15);
  v18 = (a4 ^ v10) + 426;
  HIDWORD(v19) = ~v15->u8[(v18 ^ v11) + 15];
  LODWORD(v19) = *(STACK[0xAC8] + 254) << 24;
  v15->i8[15] = ((v19 >> 25) ^ v12) + (v13 | ~(2 * ((v19 >> 25) ^ v12))) - 100;
  return (*(v16 + 8 * ((((v18 ^ v11) == -15) * v14) ^ (v17 + 120))))();
}

uint64_t sub_26AA69148@<X0>(int a1@<W1>, char a2@<W2>, int a3@<W8>)
{
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  *v4 = (a1 + 13) ^ v6 ^ (*v4 >> (a1 + 56));
  return (*(v5 + 8 * (a1 ^ (7 * (a3 == 127)))))();
}

uint64_t sub_26AA69198(uint64_t a1, int a2)
{
  STACK[0x22B0] = v2;
  v9 = 2181 * ((a2 + 3771) ^ 0x1086);
  v10 = STACK[0xAC8] + 270;
  v11.n128_u64[0] = 0x3636363636363636;
  v11.n128_u64[1] = 0x3636363636363636;
  v12.n128_u64[0] = 0x9B9B9B9B9B9B9B9BLL;
  v12.n128_u64[1] = 0x9B9B9B9B9B9B9B9BLL;
  v13 = v3;
  v14 = (v3 ^ *(*v5 + (*v4 & v7))) & ((v9 - 4331) ^ 0x7FFFFFE0);
  v15 = -812407749 * ((v14 * (19 * (v9 ^ 0x110D) - 812407882)) ^ ((v14 * (19 * (v9 ^ 0x110D) - 812407882)) >> 16));
  return (*(v8 + 8 * ((42 * ((((*(v6 + (v15 >> 24)) ^ *v13 ^ *(STACK[0x2270] + (v15 >> 24)) ^ *(STACK[0x22B0] + (v15 >> 24)) ^ v15 ^ (33 * BYTE3(v15))) >> 7) & 1) == 0)) ^ v9)))(-4214, 77, 54, 5739, 4161, 4294967265, 214, 2445, v11, v12);
}

uint64_t sub_26AA692AC(uint64_t a1, char a2, char a3, int a4)
{
  HIDWORD(v7) = ~*(v4 - 1);
  LODWORD(v7) = *v4 << 24;
  *v4 = ((v7 >> 25) ^ a2) - (a3 & (2 * ((v7 >> 25) ^ a2))) - 101;
  return (*(STACK[0x22F8] + 8 * ((((v6 + v5) + a1 == 0) * a4) ^ (v6 + 1651))))();
}

uint64_t sub_26AA69350@<X0>(int a1@<W4>, char a2@<W5>, char a3@<W6>, int a4@<W7>, int a5@<W8>)
{
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  *(STACK[0xAC8] + 255) = v9 ^ (*(STACK[0xAC8] + 255) >> 1) ^ a3;
  return (*(v8 + 8 * (((a5 + 1 == ((7 * (((v6 + 126) | 8) ^ a1)) ^ a4)) * v5) ^ v6)))();
}

void sub_26AA693A4()
{
  v0 = STACK[0x22D0];
  v1 = STACK[0x22E8];
  v2 = STACK[0x2200];
  JUMPOUT(0x26AA69204);
}

uint64_t sub_26AA693C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, _BYTE *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = *STACK[0x22D0];
  STACK[0x1BC0] = -1977535504;
  v67 = STACK[0x15C0];
  v68 = -812407749 * (((&STACK[0x2000] + 10408) ^ *(*STACK[0x22E8] + (v66 & 0x8A2133F0))) & 0x7FFFFFFF);
  v69 = -812407749 * ((v68 >> ((v64 + 37) ^ 0x22)) ^ v68);
  *a64 = *(STACK[0x2200] + (v69 >> 24)) ^ *a59 ^ *(STACK[0x2270] + (v69 >> 24)) ^ *(STACK[0x22B0] + (v69 >> 24)) ^ v69 ^ (33 * BYTE3(v69));
  return (*(v65 + 8 * v64))();
}

uint64_t sub_26AA694A0@<X0>(uint64_t a1@<X8>)
{
  v9 = 11 * (v2 ^ 0x795);
  *v3 = 0;
  STACK[0x32A9] = 0;
  LODWORD(STACK[0x32B1]) = 0;
  LOWORD(STACK[0x32B5]) = 0;
  LOBYTE(STACK[0x32B7]) = 0x80;
  v10 = (*(a1 + v1) ^ (&STACK[0x2350] + 9560)) & 0x7FFFFFFF;
  v11 = ((v10 * v4) ^ ((v10 * v4) >> 16)) * v4;
  v12 = ((v10 * ((v9 - 1408043711) & 0x53ED13B3 ^ 0xCF93B419)) ^ ((v10 * ((v9 - 1408043711) & 0x53ED13B3 ^ 0xCF93B419)) >> 16)) * v4;
  *v7 ^= *v3 ^ *(v5 + (v11 >> 24)) ^ *(v6 + (v11 >> 24)) ^ *(STACK[0x22B0] + (v11 >> 24)) ^ *(v5 + (v12 >> 24)) ^ *(v6 + (v12 >> 24)) ^ v11 ^ *(STACK[0x22B0] + (v12 >> 24)) ^ (33 * BYTE3(v11)) ^ v12 ^ (33 * BYTE3(v12));
  return (*(v8 + 8 * (v9 ^ 0x1F)))();
}

uint64_t sub_26AA695C8@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, _BYTE *a43)
{
  v49 = (v44 + 212623323) & 0xF3539FFF;
  *STACK[0x698] = 0;
  *&STACK[0x2E35] = 0u;
  STACK[0x2E45] = 0;
  LODWORD(STACK[0x2E4D]) = 0;
  LOWORD(STACK[0x2E51]) = 0;
  LOBYTE(STACK[0x2E53]) = 0;
  v50 = ((a43 ^ *(a1 + ((v49 + 1365763275) & v43))) & ((v49 + 852960185) & 0xCD28CFDB ^ 0x7FFFFC6D)) * v45;
  v51 = (v50 ^ HIWORD(v50)) * v45;
  *v47 = *a43 ^ *(v46 + (v51 >> 24)) ^ *(STACK[0x15B8] + (v51 >> 24)) ^ *((v51 >> 24) + STACK[0x15B0] + 2) ^ v51 ^ (-61 * BYTE3(v51)) ^ 0x27;
  return (*(v48 + 8 * (v49 ^ 0x1FDF)))();
}

uint64_t sub_26AA696FC@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v9 = (((a1 + v4) ^ *(a2 + v2)) & 0x7FFFFFFF) * (v6 + v3 + 1004 - 1918);
  v10 = (v9 ^ HIWORD(v9)) * v6;
  *(v7 + v4) = *(a1 + v4) ^ *(*(v5 + 8 * (v3 - 702)) + (v10 >> 24) - 12) ^ *(*(v5 + 8 * (v3 - 849)) + (v10 >> 24) + 1 - 8) ^ *(*(v5 + 8 * (v3 - 696)) + (v10 >> 24) + 1 - 4) ^ v10 ^ (115 * BYTE3(v10)) ^ 0x27;
  return (*(v8 + 8 * (((v4 == 31) | (4 * (v4 == 31))) ^ v3)))();
}

uint64_t sub_26AA697A8@<X0>(uint64_t a1@<X8>)
{
  v8.n128_u64[0] = 0x4E4E4E4E4E4E4E4ELL;
  v8.n128_u64[1] = 0x4E4E4E4E4E4E4E4ELL;
  v9.n128_u64[0] = 0x2727272727272727;
  v9.n128_u64[1] = 0x2727272727272727;
  v10 = ((v6 ^ *(a1 + v1)) & 0x7FFFFFFF) * v3;
  v11 = ((v10 >> (((v2 - 127) & 0xFD) + 19)) ^ v10) * v3;
  return (*(v7 + 8 * ((1967 * (((*(v4 + (v11 >> 24)) ^ *v6 ^ *(v5 + (v11 >> 24)) ^ *(STACK[0x22B0] + (v11 >> 24)) ^ v11 ^ (33 * BYTE3(v11))) >> 7) & 1)) ^ (v2 + 1360000129) & 0xAEF00FFD)))(19, 78, 982, 2041, 4294967265, 179, 3273, v8, v9);
}

uint64_t sub_26AA6988C(char a1, char a2, int8x16_t a3, int8x16_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  *STACK[0x698] = veorq_s8(vaddq_s8(vsubq_s8(*STACK[0x698], vandq_s8(vaddq_s8(*STACK[0x698], *STACK[0x698]), a3)), a4), *v12);
  HIDWORD(v14) = ~*(STACK[0x7B8] - 1);
  LODWORD(v14) = *STACK[0x7B8] << 24;
  *STACK[0x7B8] = ((v14 >> 25) ^ a1) - (a2 & (2 * ((v14 >> 25) ^ a1))) + 39;
  return (*(v13 + 8 * (((a10 + v10) & v11) + 2240)))();
}

uint64_t sub_26AA69930(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, _BYTE *a63)
{
  if (v65)
  {
    v67 = 0;
  }

  else
  {
    v67 = a5;
  }

  *a63 = v67 ^ (*a63 >> 1) ^ v64 ^ a4 ^ a6;
  v68 = STACK[0x2200];
  v69 = STACK[0x2270];
  return (*(v66 + 8 * (((v63 + v64 + 1151 == 3196) * a7) ^ v64)))();
}

uint64_t sub_26AA69990@<X0>(uint64_t a1@<X8>)
{
  v7 = STACK[0x7B8] + 16;
  v8.n128_u64[0] = 0x4E4E4E4E4E4E4E4ELL;
  v8.n128_u64[1] = 0x4E4E4E4E4E4E4E4ELL;
  v9.n128_u64[0] = 0x2727272727272727;
  v9.n128_u64[1] = 0x2727272727272727;
  v10 = -812407749 * ((v5 ^ *(a1 + v1)) & 0x7FFFFFFF);
  v11 = -812407749 * (v10 ^ HIWORD(v10));
  return (*(v6 + 8 * ((50 * (((*(v3 + (v11 >> 24)) ^ *v5 ^ *(v4 + (v11 >> 24)) ^ *(STACK[0x22B0] + (v11 >> 24)) ^ v11 ^ (33 * BYTE3(v11))) >> 7) & 1)) ^ v2 ^ 0x10DC)))(v8, v9);
}

uint64_t sub_26AA69A84(int8x16_t a1, int8x16_t a2, uint64_t a3, int a4, int a5, char a6)
{
  v9 = (v7 + a4) & a5;
  v10 = STACK[0x7B8];
  *STACK[0x698] = veorq_s8(vaddq_s8(vsubq_s8(*STACK[0x698], vandq_s8(vaddq_s8(*STACK[0x698], *STACK[0x698]), a1)), a2), *(STACK[0x7B8] + 1));
  HIDWORD(v11) = ~*(v6 - 1);
  LODWORD(v11) = *(v10 + 16) << 24;
  *v6 = ((v11 >> 25) ^ a6) - ((v9 + 47) & (2 * ((v11 >> 25) ^ a6))) + 39;
  return (*(v8 + 8 * (v9 + 2317)))();
}

uint64_t sub_26AA69B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, int a8)
{
  v12 = v9 + 80;
  if (v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = a6;
  }

  *(STACK[0x7B8] + 1) = v13 ^ (*(STACK[0x7B8] + 1) >> 1) ^ (v12 - 20) ^ a7;
  v14 = STACK[0x2200];
  v15 = STACK[0x2270];
  return (*(v11 + 8 * (v12 ^ ((v8 != 127) * a8))))();
}

uint64_t sub_26AA69B80@<X0>(uint64_t a1@<X8>)
{
  v8 = (((v6 + v3) ^ *(a1 + v1)) & 0x7FFFFFFF) * ((v2 + 563) ^ 0xCF93A699);
  v9 = -812407749 * (v8 ^ HIWORD(v8));
  *(v6 + v3) = *(v4 + (v9 >> 24)) ^ *(STACK[0x698] + v3) ^ *(v5 + (v9 >> 24)) ^ *(STACK[0x22B0] + (v9 >> 24)) ^ v9 ^ (33 * BYTE3(v9));
  return (*(v7 + 8 * ((469 * (v3 == 15)) ^ v2)))();
}

uint64_t sub_26AA69C0C()
{
  v2 = v0 ^ 0xA2;
  v3 = STACK[0x1B80];
  v4 = *STACK[0x1B80] ^ 0x99;
  LOBYTE(STACK[0x2357]) = -28;
  v5 = v0 ^ 0xDF ^ v4;
  LOBYTE(STACK[0x2350]) = v5;
  v6 = v3[1] ^ v4;
  LOBYTE(STACK[0x2355]) = v5;
  v7 = v6 ^ 0x7D;
  LOBYTE(STACK[0x2397]) = v6 ^ 0x7D;
  v8 = v3[2] ^ v6;
  LOBYTE(STACK[0x2353]) = v7;
  v9 = v8 ^ 0x7D;
  LOBYTE(STACK[0x2395]) = v8 ^ 0x7D;
  v10 = v3[3] ^ v8;
  LOBYTE(STACK[0x2351]) = v9;
  v11 = v10 ^ 0x7D;
  LOBYTE(STACK[0x2393]) = v10 ^ 0x7D;
  v12 = v3[4] ^ v10;
  LOBYTE(STACK[0x2398]) = v11;
  LOBYTE(STACK[0x2391]) = v12 ^ 0x7D;
  v13 = v3[5];
  v14 = v13 ^ v12;
  LOBYTE(STACK[0x2396]) = v14 ^ 0x7D ^ v13;
  LOBYTE(STACK[0x238F]) = v14 ^ 0x7D;
  v15 = v3[6];
  v16 = v15 ^ v14;
  LOBYTE(STACK[0x2394]) = v16 ^ 0x7D ^ v15;
  LOBYTE(STACK[0x238D]) = v16 ^ 0x7D;
  v17 = v3[7];
  v18 = (v17 - ((2 * v17) & 0x33) - 103) ^ v16;
  v19 = v18 - ((2 * v18) & 0x32) - 103;
  LOBYTE(STACK[0x2392]) = v19 ^ 0x7D ^ v17;
  LOBYTE(STACK[0x238B]) = v19 ^ 0x7D;
  v20 = v3[8];
  v21 = v19 ^ (v20 - ((2 * v20) & 0x33) - 103);
  v22 = v21 - ((2 * v21) & 0x32) - 103;
  v23 = v22 ^ 0x7D;
  LOBYTE(STACK[0x2390]) = v22 ^ 0x7D ^ v20;
  LOBYTE(STACK[0x2389]) = v22 ^ 0x7D;
  v24 = v3[9];
  v25 = v22 ^ v24;
  LOBYTE(STACK[0x238E]) = v23;
  *(&STACK[0x2350] + 0x27F % ((v24 & 0x49 ^ 0x49) + (v24 & 0x49u))) = v25 ^ 0x7D;
  v26 = v3[10];
  v27 = v25 ^ v26;
  v28 = v27 ^ 0x7D;
  LOBYTE(STACK[0x238C]) = v27 ^ 0x7D ^ v26;
  LOBYTE(STACK[0x2385]) = v27 ^ 0x7D;
  v29 = v27 ^ v3[11];
  LOBYTE(STACK[0x238A]) = v28;
  LOBYTE(STACK[0x2383]) = v29 ^ 0x7D;
  v30 = v3[12] ^ v29;
  LOBYTE(STACK[0x2388]) = (v29 ^ 0x99) + (~(2 * v29) | 0x37) - 27;
  v31 = v30 ^ 0x7D;
  LOBYTE(STACK[0x2381]) = v30 ^ 0x7D;
  v32 = v3[13] ^ v30;
  LOBYTE(STACK[0x2386]) = v31;
  LOBYTE(STACK[0x237F]) = v32 ^ 0x7D;
  v33 = v3[14];
  v34 = v33 ^ v32;
  v35 = 71 * ((v33 & 0x21) + (v33 & 0x21 ^ 0x21)) + 994;
  v36 = v34 ^ 0x7D;
  *(&STACK[0x2350] + (v35 - 73 * (((28729 * v35) >> 16) >> 5))) = v34 ^ 0x7D ^ v33;
  LOBYTE(STACK[0x237D]) = v34 ^ 0x7D;
  v37 = (v3[15] - ((2 * v3[15]) & 0x33) - 103) ^ v34;
  v38 = v37 - ((2 * v37) & 0x32) - 103;
  LOBYTE(STACK[0x2382]) = v36;
  v39 = v38 ^ 0x7D;
  LOBYTE(STACK[0x237B]) = v38 ^ 0x7D;
  v40 = v38 ^ v3[16];
  LOBYTE(STACK[0x2380]) = v39;
  v41 = v40 ^ 0x7D;
  LOBYTE(STACK[0x2379]) = v40 ^ 0x7D;
  v42 = v40 ^ v3[17];
  LOBYTE(STACK[0x237E]) = v41;
  v43 = v42 ^ 0x7D;
  LOBYTE(STACK[0x2377]) = v42 ^ 0x7D;
  v44 = v42 ^ v3[18];
  LOBYTE(STACK[0x237C]) = v43;
  v45 = v44 ^ 0x7D;
  LOBYTE(STACK[0x2375]) = v44 ^ 0x7D;
  v46 = v3[19] ^ v44;
  LOBYTE(STACK[0x237A]) = v45;
  v47 = v46 ^ 0x7D;
  LOBYTE(STACK[0x2373]) = v46 ^ 0x7D;
  v48 = v3[20] ^ v46;
  LOBYTE(STACK[0x2378]) = v47;
  LOBYTE(STACK[0x2371]) = v48 ^ 0x7D;
  v49 = v3[21];
  v50 = v49 ^ v48;
  LOBYTE(STACK[0x2376]) = v50 ^ 0x7D ^ v49;
  LOBYTE(STACK[0x236F]) = v50 ^ 0x7D;
  v51 = v3[22];
  v52 = v51 ^ v50;
  LOBYTE(STACK[0x2374]) = v52 ^ 0x7D ^ v51;
  LOBYTE(STACK[0x236D]) = v52 ^ 0x7D;
  v53 = v3[23];
  v54 = (v53 - ((2 * v53) & 0x33) - 103) ^ v52;
  v55 = v54 - ((2 * v54) & 0x32) - 103;
  LOBYTE(STACK[0x2372]) = v55 ^ 0x7D ^ v53;
  LOBYTE(STACK[0x236B]) = v55 ^ 0x7D;
  v56 = v3[24];
  v57 = v55 ^ (v56 - ((2 * v56) & 0x33) - 103);
  v58 = v57 - ((2 * v57) & 0x32) - 103;
  LOBYTE(v35) = v58 ^ 0x7D;
  LOBYTE(STACK[0x2370]) = v58 ^ 0x7D ^ v56;
  LOBYTE(STACK[0x2369]) = v58 ^ 0x7D;
  v59 = v3[25];
  v60 = v58 ^ v59;
  LOBYTE(STACK[0x236E]) = v35;
  *(&STACK[0x2350] + 0x6EF % ((v59 & 0x49 ^ 0x49) + (v59 & 0x49u))) = v60 ^ 0x7D;
  v61 = v3[26];
  v62 = v60 ^ v61;
  LOBYTE(v35) = v62 ^ 0x7D;
  LOBYTE(STACK[0x236C]) = v62 ^ 0x7D ^ v61;
  v63 = v62 ^ v3[27];
  v64 = v3[28] ^ v63;
  v65 = v64 ^ 0x7D;
  v66 = v3[29] ^ v64;
  v67 = v66 ^ 0x7D;
  v68 = v3[30];
  v69 = v68 ^ v66;
  LOBYTE(STACK[0x2365]) = v35;
  LOBYTE(STACK[0x236A]) = v35;
  v70 = 71 * ((v68 & 0x21) + (v68 & 0x21 ^ 0x21)) + 2130;
  LOBYTE(STACK[0x2363]) = v63 ^ 0x7D;
  LOBYTE(STACK[0x2368]) = (v63 ^ 0x99) + (~(2 * v63) | 0x37) - 27;
  LOBYTE(STACK[0x2361]) = v65;
  LOBYTE(STACK[0x2366]) = v65;
  LOBYTE(STACK[0x235F]) = v67;
  *(&STACK[0x2350] + (v70 - 73 * (((28729 * v70) >> 16) >> 5))) = v69 ^ 0x7D ^ v68;
  v71 = (v3[31] - ((2 * v3[31]) & 0x33) - 103) ^ v69;
  LOBYTE(STACK[0x235D]) = v69 ^ 0x7D;
  LOBYTE(STACK[0x2362]) = v69 ^ 0x7D;
  LOBYTE(STACK[0x235B]) = (v71 - ((2 * v71) & 0x32) - 103) ^ 0x7D;
  STACK[0x22A0] = 0xA9CEDEF79F16F4F3;
  STACK[0x2298] = 0xD609A269D11DD23ELL;
  STACK[0x2280] = 0x88CE6865F2DA5F5;
  STACK[0x22C0] = 0xF2270C9087589E86;
  v72 = *(v1 + 8 * ((2545 * ((v2 - 119) & 1)) ^ v2));
  v73 = *(&off_279CA5FD0 + (v2 ^ 0x29A));
  STACK[0x22B8] = v73 + 2380;
  STACK[0x2268] = v73 - 6;
  STACK[0x2158] = v73 + 1051;
  STACK[0x22A8] = v73 + 794;
  STACK[0x21E8] = v73;
  STACK[0x2288] = v73 + 2114;
  STACK[0x2290] = v73 + 263;
  return v72();
}

uint64_t sub_26AA6A308(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6)
{
  v11 = ~v9 + v7;
  v12 = ((v11 * a6) * v10) >> 32;
  v13 = *(a5 + v11 * a6 - ((v12 + ((v11 * a6 - v12) >> 1)) >> 6) * a4);
  v14 = v13 ^ ((a3 ^ 0x89u) + 91);
  LOBYTE(v13) = v13 ^ *(a5 + v11 * a6 + 2343 - (((((v11 * a6 + 2343) * v10) >> 32) + ((v11 * a6 + 2343 - (((v11 * a6 + 2343) * v10) >> 32)) >> 1)) >> 6) * a4);
  STACK[0x2278] = v14;
  v15 = v11 + 1453464475 * (v6 ^ a2) - 1453464475 * v14;
  *(a5 + v15 * a6 + 2343 - (((((v15 * a6 + 2343) * v10) >> 32) + ((v15 * a6 + 2343 - (((v15 * a6 + 2343) * v10) >> 32)) >> 1)) >> 6) * a4) = v13 - ((2 * v13) & 0xC8) - 28;
  return (*(v8 + 8 * ((2831 * ((v9 | 1uLL) < v7)) ^ a3)))();
}

uint64_t sub_26AA6A3E0@<X0>(int a1@<W2>, int a2@<W3>, uint64_t a3@<X4>, int a4@<W5>, uint64_t a5@<X7>, char a6@<W8>)
{
  v12 = v7 - v9 - 2;
  v13 = ((v12 * a4) * v10) >> 32;
  v14 = *(a3 + v12 * a4 - ((v13 + ((v12 * a4 - v13) >> 1)) >> 6) * a2);
  v15 = (59 * (a1 ^ 0xB) - ((2 * a6) & 0x32) + a6 + 16) ^ v6;
  v16 = *(a5 + ((-75 * (*(a3 + v12 * a4 + 2343 - (((((v12 * a4 + 2343) * v10) >> 32) + ((v12 * a4 + 2343 - (((v12 * a4 + 2343) * v10) >> 32)) >> 1)) >> 6) * a2) ^ v14)) ^ 0x31)) ^ 0x6C;
  LODWORD(STACK[0x2260]) = v14;
  v17 = ((v12 & 0x21) + v12 + (v12 & 0x21 ^ 0x21)) * a4;
  *(a3 + v17 - ((((v17 * v10) >> 32) + ((v17 - ((v17 * v10) >> 32)) >> 1)) >> 6) * a2) = v15 ^ v11 ^ (v16 - ((2 * v16 - 6) & 0xC8) + 97) ^ v14;
  return (*(v8 + 8 * (a1 | (3576 * ((v9 | 2uLL) < v7)))))();
}

uint64_t sub_26AA6A4F4@<X0>(int a1@<W2>, int a2@<W3>, uint64_t a3@<X4>, int a4@<W5>, uint64_t a5@<X7>, char a6@<W8>)
{
  v13 = a1 + 137;
  v14 = *(a3 + (v11 - 3) * a4 - ((((((v11 - 3) * a4) * v10) >> 32) + (((v11 - 3) * a4 - ((((v11 - 3) * a4) * v10) >> 32)) >> 1)) >> 6) * a2);
  v15 = v6 + (((v14 ^ v12 ^ (v11 - 3)) & 0x832D8C7A ^ a6 & 0x7A | a6 & 0x85) ^ (v14 ^ v12 ^ (v11 - 3)) & 0x7CD27385) * a4;
  v16 = (v14 ^ *(a3 + ((v13 ^ 0x2A8) + v11 - 3) * a4 - ((((((v13 ^ 0x2A8u) + v11 - 3) * a4 * v10) >> 32) + ((((v13 ^ 0x2A8) + v11 - 3) * a4 - ((((v13 ^ 0x2A8u) + v11 - 3) * a4 * v10) >> 32)) >> 1)) >> 6) * a2)) - (v14 ^ v12);
  STACK[0x2258] = v14 ^ v12;
  v17 = (*(a5 + ((-75 * (v14 ^ v12)) ^ 0x31)) ^ 0x6Cu) + 125;
  STACK[0x2250] = v17;
  *(a3 + v15 - ((((v15 * v10) >> 32) + ((v15 - ((v15 * v10) >> 32)) >> 1)) >> 6) * a2) = ((v16 - ((2 * v16) & 0x32) - 103) ^ 0x99) + v17 + (~(2 * (((v16 - ((2 * v16) & 0x32) - 103) ^ 0x99) + v17)) | 0x37) - 27;
  return (*(v8 + 8 * (a1 | ((v9 | 3uLL) < v7) | (2 * ((v9 | 3uLL) < v7)))))();
}

uint64_t sub_26AA6A624@<X0>(int a1@<W2>, int a2@<W3>, uint64_t a3@<X4>, int a4@<W5>, char a5@<W8>)
{
  v13 = *(a3 + (v11 ^ 0xFFFFFC6D) + v12 * a4 - ((((((v11 ^ 0xFFFFFC6D) + v12 * a4) * v10) >> 32) + (((v11 ^ 0xFFFFFC6D) + v12 * a4 - ((((v11 ^ 0xFFFFFC6D) + v12 * a4) * v10) >> 32)) >> 1)) >> 6) * a2);
  v14 = v13 ^ *(a3 + v12 * a4 + 2059 - (((((v12 * a4 + 2059) * v10) >> 32) + ((v12 * a4 + 2059 - (((v12 * a4 + 2059) * v10) >> 32)) >> 1)) >> 6) * a2);
  v15 = (((((v14 >> 3) | (32 * v14)) ^ 0xA2) + ~*(STACK[0x2288] + (((v14 >> 3) | (32 * v14)) ^ 0xF5))) ^ 0x1D) + 96;
  v16 = (((124 - v9) & 0x44) + (v6 & 0x43)) * (v12 + 29);
  LODWORD(STACK[0x2248]) = v13;
  *(a3 + v16 - ((((v16 * v10) >> 32) + ((v16 - ((v16 * v10) >> 32)) >> 1)) >> 6) * a2) = v5 ^ a5 ^ v13 ^ v15;
  return (*(v8 + 8 * (a1 ^ (5099 * ((v9 | 4uLL) < v7)))))();
}

uint64_t sub_26AA6A720@<X0>(int a1@<W2>, int a2@<W3>, uint64_t a3@<X4>, int a4@<W5>, char a5@<W8>)
{
  v12 = (v10 - 5) * a4;
  v13 = *(a3 + v12 - ((((v12 * v9) >> 32) + ((v12 - ((v12 * v9) >> 32)) >> 1)) >> 6) * a2);
  v14 = v13 ^ *(a3 + v12 + a1 + 137 + 1694 - (((((v12 + a1 + 137 + 1694) * v9) >> 32) + ((v12 + a1 + 137 + 1694 - (((v12 + a1 + 137 + 1694) * v9) >> 32)) >> 1)) >> 6) * a2) ^ v11;
  v15 = v13 ^ v11;
  STACK[0x2240] = v15;
  v16 = v5 + (v15 + v10 - 5 - (a5 ^ v11)) * a4;
  *(a3 + v16 - ((((v16 * v9) >> 32) + ((v16 - ((v16 * v9) >> 32)) >> 1)) >> 6) * a2) = v14;
  return (*(v7 + 8 * (a1 ^ (4733 * ((v8 | 5uLL) < v6)))))();
}

uint64_t sub_26AA6A7D4@<X0>(char a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X4>, int a5@<W5>, char a6@<W8>)
{
  v14 = ((a2 ^ 0x89) - 578) * (v12 - 6);
  v15 = ((v14 + 2343) * v11) >> 32;
  v16 = *(a4 + v14 + 2343 - ((v15 + ((v14 + 2343 - v15) >> 1)) >> 6) * a3);
  v17 = *(a4 + v14 - ((((v14 * v11) >> 32) + ((v14 - ((v14 * v11) >> 32)) >> 1)) >> 6) * a3);
  v18 = *(STACK[0x2158] + (((2 * v17) | ((~v17 & 0x80) != 0)) ^ 0x2BLL));
  v19 = (a1 + v6 - ((2 * v6) & 0x32)) ^ a6;
  HIDWORD(v20) = 1 - v18;
  LODWORD(v20) = ~v18 << 24;
  v21 = (v20 >> 25) ^ 0xFFFFFFBE;
  v22 = (v21 - 40);
  v23 = v17 ^ v13;
  STACK[0x2230] = v23;
  STACK[0x2238] = v22;
  LOBYTE(v21) = ((v21 - 2 * ((v21 - 40) & 0x66 ^ v21 & 2) - 68) ^ v16) + (v19 ^ a1) - (v21 - 40);
  v24 = v7 + (v12 - 6 - v23 + v22) * a5;
  *(a4 + v24 - ((((v24 * v11) >> 32) + ((v24 - ((v24 * v11) >> 32)) >> 1)) >> 6) * a3) = (v21 + a1 - ((2 * v21) & 0x32)) ^ 0x7D;
  return (*(v9 + 8 * (a2 ^ (2857 * ((v10 | 6uLL) < v8)))))();
}

uint64_t sub_26AA6A918@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X4>, int a5@<W5>, char a6@<W8>)
{
  v15 = (v13 - 7) * a5;
  v16 = *(a4 + (v15 + 2343) % (((a2 - 718049127) & 0x2ACC8FEFu) - 576));
  v17 = v6 ^ (v7 + a1 - 2 * (v7 & 0x59F ^ a6 & 6));
  v18 = *(a4 + v15 - ((((v15 * v12) >> 32) + ((v15 - ((v15 * v12) >> 32)) >> 1)) >> 6) * a3);
  v19 = v18 ^ 0xE4 ^ v16;
  v20 = v18 ^ v14;
  STACK[0x2228] = v20;
  LODWORD(v20) = v8 + (v13 - 7 - v17 + v20) * a5;
  *(a4 + v20 - ((((v20 * v12) >> 32) + ((v20 - ((v20 * v12) >> 32)) >> 1)) >> 6) * a3) = v19;
  return (*(v10 + 8 * (a2 ^ (1556 * ((v11 | 7uLL) < v9)))))();
}

uint64_t sub_26AA6A9E4@<X0>(int a1@<W2>, int a2@<W3>, uint64_t a3@<X4>, int a4@<W5>, int a5@<W8>)
{
  v13 = (v10 ^ 0xFFFFFFF8) + v8;
  v14 = *(a3 + v13 * a4 + 2343 - (((((v13 * a4 + 2343) * v11) >> 32) + ((v13 * a4 + 2343 - (((v13 * a4 + 2343) * v11) >> 32)) >> 1)) >> 6) * a2);
  v15 = *(a3 + v13 * a4 % ((a1 ^ 0x89u) - 576)) ^ v12;
  STACK[0x2220] = v15;
  v16 = (v15 * ((v13 ^ (a5 - v8)) & 0x698AFED9)) ^ v13 ^ (1770716889 * v15);
  *(a3 + v7 + v16 * a4 - (((((v7 + v16 * a4) * v11) >> 32) + ((v7 + v16 * a4 - (((v7 + v16 * a4) * v11) >> 32)) >> 1)) >> 6) * a2) = v6 ^ v14 ^ (v5 - ((2 * v5) & 0xC8) - 28);
  return (*(v9 + 8 * (a1 | (3562 * (v8 > (v10 | 8uLL))))))();
}

uint64_t sub_26AA6AAB0(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6)
{
  v14 = (v12 - 9) * a6;
  v15 = ((v14 + 2343) * v11) >> 32;
  LOBYTE(v15) = *(a5 + v14 + 2343 - ((v15 + ((v14 + 2343 - v15) >> 1)) >> 6) * a4);
  v16 = *(a5 + v14 - ((((v14 * v11) >> 32) + ((v14 - ((v14 * v11) >> 32)) >> 1)) >> 6) * a4);
  STACK[0x2218] = v16 ^ (59 * (a3 ^ 0x20B)) ^ 0x6Du;
  v17 = v7 ^ v13 ^ (v12 - 9) ^ (v16 ^ (59 * (a3 ^ 0xB)) ^ 0x6D);
  *(a5 + v6 + v17 * a6 - (((((v6 + v17 * a6) * v11) >> 32) + ((v6 + v17 * a6 - (((v6 + v17 * a6) * v11) >> 32)) >> 1)) >> 6) * a4) = v16 ^ v15 ^ v13;
  return (*(v9 + 8 * (a3 | (2396 * ((v10 | 9uLL) < v8)))))();
}

uint64_t sub_26AA6AB74@<X0>(char a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X4>, int a5@<W5>, int a6@<W8>)
{
  v13 = v8 - a6;
  v14 = (((v13 + 31) & a5 ^ a5) + ((v13 + 31) & a5)) * (v13 + 31);
  v15 = v13 * a5;
  LOBYTE(v13) = *(a4 + v13 * a5 - 142 - (((((v13 * a5 - 142) * v11) >> 32) + ((v13 * a5 - 142 - (((v13 * a5 - 142) * v11) >> 32)) >> 1)) >> 6) * a3);
  LOBYTE(v13) = (((a2 ^ 0x89 ^ (a1 + 119)) - ((2 * v7) & 0x32) + v7) ^ (v6 + a1 - ((2 * v6) & 0x33))) - (v13 ^ v12) + (v13 ^ *(a4 + v14 - ((((v14 * v11) >> 32) + ((v14 - ((v14 * v11) >> 32)) >> 1)) >> 6) * a3));
  *(a4 + v15 + 2201 - (((((v15 + 2201) * v11) >> 32) + ((v15 + 2201 - (((v15 + 2201) * v11) >> 32)) >> 1)) >> 6) * a3) = v13 - ((2 * v13) & 0xC8) - 28;
  return (*(v9 + 8 * (a2 ^ (5005 * ((v10 | 0xAuLL) < v8)))))();
}

uint64_t sub_26AA6AC6C@<X0>(int a1@<W2>, int a2@<W3>, uint64_t a3@<X4>, int a4@<W5>, uint64_t a5@<X7>, int a6@<W8>)
{
  v14 = a6 ^ v6;
  v15 = (v12 - 11) * a4;
  v16 = ((v15 + 2343) * v11) >> 32;
  v17 = ((((a1 + 1) | 0x88) + 44) * (*(a3 + v15 + 2343 - ((v16 + ((v15 + 2343 - v16) >> 1)) >> 6) * a2) ^ v13)) ^ 0x31;
  v18 = *(a3 + v15 - ((((v15 * v11) >> 32) + ((v15 - ((v15 * v11) >> 32)) >> 1)) >> 6) * a2) ^ v13;
  v19 = (v18 - 2 * (v18 - 87) - 88) ^ *(STACK[0x22B8] + ((v18 - 87) ^ 0x60));
  LOBYTE(v17) = -75 * (*(a5 + v17) ^ 0x6C) + 97;
  LODWORD(v16) = v7 + (v12 - 11 - 954854281 * v14 + 954854281 * v18) * a4;
  v20 = (*(STACK[0x22A8] + (v17 ^ 0x52)) ^ (~(2 * v17) + v17) ^ 0xC4) + 125;
  LODWORD(STACK[0x2210]) = v19;
  *(a3 + v16 - ((((v16 * v11) >> 32) + ((v16 - ((v16 * v11) >> 32)) >> 1)) >> 6) * a2) = v20 ^ v19 ^ 0x3D;
  return (*(v9 + 8 * (a1 | (2145 * ((v10 | 0xBuLL) < v8)))))();
}

uint64_t sub_26AA6ADB4(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6)
{
  v15 = (v12 ^ 0xFFFFFFF4) + v10;
  v16 = *(a5 + v15 * a6 + 2343 - (((((v15 * a6 + 2343) * v13) >> 32) + ((v15 * a6 + 2343 - (((v15 * a6 + 2343) * v13) >> 32)) >> 1)) >> 6) * a4);
  v17 = ((a3 - 441) & (v15 ^ (v8 - v10))) * v15;
  v18 = *(a5 + v17 - ((((v17 * v13) >> 32) + ((v17 - ((v17 * v13) >> 32)) >> 1)) >> 6) * a4) ^ v14;
  v19 = ((v15 * a6) * v13) >> 32;
  v20 = *(a5 + v15 * a6 - ((v19 + ((v15 * a6 - v19) >> 1)) >> 6) * a4);
  STACK[0x2208] = v18;
  STACK[0x21F8] = v20 ^ v14;
  v21 = (-142522299 * v18) ^ v15 ^ (-142522299 * (v20 ^ v14));
  *(a5 + v6 + v21 * a6 - (((((v6 + v21 * a6) * v13) >> 32) + ((v6 + v21 * a6 - (((v6 + v21 * a6) * v13) >> 32)) >> 1)) >> 6) * a4) = v9 ^ v7 ^ v16 ^ 0xD9;
  return (*(v11 + 8 * (a3 ^ (2221 * ((v12 | 0xCuLL) < v10)))))();
}

uint64_t sub_26AA6AEB8@<X0>(int a1@<W2>, int a2@<W3>, uint64_t a3@<X4>, int a4@<W5>, char a5@<W6>, char a6@<W8>)
{
  v12 = v8 - v7 - (((a6 & 0x97 ^ 0x97) + (a6 & 0x97)) & 0xFE ^ 0x97);
  v13 = ((v12 * a4) * v11) >> 32;
  LODWORD(v13) = *(a3 + v12 * a4 - ((v13 + ((v12 * a4 - v13) >> 1)) >> 6) * a2);
  HIDWORD(v14) = v13 ^ 4;
  LODWORD(v14) = (v13 ^ 0xE0) << 24;
  v15 = *(STACK[0x2268] + ((v14 >> 27) ^ 0x5ALL));
  v16 = ((v15 ^ 0x20) - 2 * (((v15 ^ 0x20) + 96) & 0x67 ^ v15 & 3) + 68) ^ *(a3 + v12 * a4 + 2343 - (((((v12 * a4 + 2343) * v11) >> 32) + ((v12 * a4 + 2343 - (((v12 * a4 + 2343) * v11) >> 32)) >> 1)) >> 6) * a2);
  v17 = v6 + (v12 + 1071243363 * ((v15 ^ 0x20) + 96) - 1071243363 * (a5 ^ ((a1 - 120) | 1) ^ 0x6D)) * a4;
  v18 = (((((v16 >> 3) | (32 * v16)) ^ 0xA2) + ~*(STACK[0x2288] + (((v16 >> 3) | (32 * v16)) ^ 0xF5))) ^ 0x1D) - (v15 ^ 0x20) + (v13 ^ 0xE4);
  *(a3 + v17 - ((((v17 * v11) >> 32) + ((v17 - ((v17 * v11) >> 32)) >> 1)) >> 6) * a2) = v18 - ((2 * v18) & 0xC8) - 28;
  return (*(v9 + 8 * (a1 ^ (2159 * ((v10 | 0xDuLL) < v8)))))();
}

uint64_t sub_26AA6B034@<X0>(int a1@<W2>, unsigned int a2@<W3>, uint64_t a3@<X4>, int a4@<W5>, char a5@<W6>, int a6@<W8>)
{
  v13 = 11 * (a1 ^ 0x23B);
  v14 = (v10 ^ 0xFFFFFFF2) + v8;
  v15 = v14 * a4;
  v16 = *(a3 + (v13 ^ 0xBAE) + v15 - ((((((v13 ^ 0xBAE) + v15) * v11) >> 32) + (((v13 ^ 0xBAE) + v15 - ((((v13 ^ 0xBAE) + v15) * v11) >> 32)) >> 1)) >> 6) * a2);
  v17 = v6 + ((*(a3 + v14 * a4 % ((v14 | (a6 - v8)) & a2)) ^ v12) + v14 - (*(a3 + v15 - ((((v15 * v11) >> 32) + ((v15 - ((v15 * v11) >> 32)) >> 1)) >> 6) * a2) ^ v12)) * a4;
  *(a3 + v17 - ((((v17 * v11) >> 32) + ((v17 - ((v17 * v11) >> 32)) >> 1)) >> 6) * a2) = (v7 ^ a5 ^ v16) - ((2 * (v7 ^ a5 ^ v16)) & 0xC8) - 28;
  return (*(v9 + 8 * (a1 | (405 * ((v10 | 0xEuLL) < v8)))))();
}

uint64_t sub_26AA6B11C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6)
{
  v13 = (v11 - 15) * a6;
  v14 = ((v13 + 2343) * v10) >> 32;
  v15 = *(a5 + v13 + 2343 - ((v14 + ((v13 + 2343 - v14) >> 1)) >> 6) * a4);
  LOBYTE(v13) = *(a5 + v13 - ((((v13 * v10) >> 32) + ((v13 - ((v13 * v10) >> 32)) >> 1)) >> 6) * a4);
  v16 = v11 - 15 + 254773819 * (((*(STACK[0x22A8] + ((-75 * (v13 ^ v12)) ^ (a3 + 82))) ^ (75 * (v13 ^ v12) - 1) ^ 0xC4) + 125) - (v6 ^ v12));
  v17 = v16 & a6;
  v18 = v16 & a6 ^ a6;
  *(a5 + (v18 + v17) * (v16 + 33) - ((((((v18 + v17) * (v16 + 33)) * v10) >> 32) + (((v18 + v17) * (v16 + 33) - ((((v18 + v17) * (v16 + 33)) * v10) >> 32)) >> 1)) >> 6) * a4) = v13 ^ v15 ^ v12;
  v19 = STACK[0x2290];
  return (*(v8 + 8 * (a3 ^ (3723 * ((v9 | 0xFuLL) < v7)))))();
}

uint64_t sub_26AA6B21C@<X0>(unsigned __int8 a1@<W0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v23 = v11 ^ v12;
  v24 = v20 + a3 + 137 - 665;
  v25 = ((v24 * a6) * v19) >> 32;
  v26 = *(a5 + v24 * a6 + 2343 - (((((v24 * a6 + 2343) * v19) >> 32) + ((v24 * a6 + 2343 - (((v24 * a6 + 2343) * v19) >> 32)) >> 1)) >> 6) * a4) ^ v22;
  LODWORD(STACK[0x21F0]) = v13;
  v27 = *(v8 + ((-75 * v26) ^ 0x31)) ^ 0x6C;
  v28 = *(a5 + v24 * a6 - ((v25 + ((v24 * a6 - v25) >> 1)) >> 6) * a4);
  HIDWORD(v29) = v28 ^ 4;
  LODWORD(v29) = (v28 ^ 0xE0) << 24;
  v30 = ((v27 + ((4 - 2 * v27) | 0x37) + 98) ^ v28) - (v28 ^ v22);
  v31 = 95 - (*(STACK[0x2268] + ((v29 >> 27) ^ 0x5ALL)) ^ 0xFFFFFFDF);
  v32 = v10 + (v24 - 1723768019 * (v28 ^ v22) + 1723768019 * (95 - (*(STACK[0x2268] + ((v29 >> 27) ^ 0x5ALL)) ^ 0xDF))) * a6;
  v33 = ((v30 + a2 - ((2 * v30) & 0x32)) ^ a2) + (v23 ^ v22);
  *(a5 + v32 - ((((v32 * v19) >> 32) + ((v32 - ((v32 * v19) >> 32)) >> 1)) >> 6) * a4) = v33 - ((2 * v33) & 0xC8) - 28;
  v34 = STACK[0x2278] | ((LODWORD(STACK[0x2260]) ^ v22) << 8);
  v35 = v34 - 0x653266CB9A5A85F8 - 2 * (v34 & 0x7A2B ^ STACK[0x2278] & 0x23);
  v36 = STACK[0x2218];
  v37 = v34 + 0x60667322BDD0417BLL - 2 * (v34 & 0x417F ^ STACK[0x2278] & 4);
  v38 = STACK[0x2290];
  v39 = STACK[0x22A0] ^ 0xAEB374E35830D0CCLL ^ (v36 - 0x514C8B1CA7CF2F34 - ((2 * v36) & 0x9999999999999999)) ^ (v9 << 16) ^ (STACK[0x21F8] << 24) ^ (v16 << 32) ^ (a8 << 40) ^ (a1 << 48);
  v40 = v37 ^ STACK[0x2280];
  STACK[0x22A0] = v39 ^ (v18 << ((v28 & 8 ^ 8) + (v28 & 8))) ^ (v31 << 56);
  STACK[0x2298] ^= 0xD174087D163BF601 ^ ((v36 | (v18 << 8)) - 0x2E8BF782E9C409FFLL - 2 * ((v36 | (v18 << 8)) & 0xF63D ^ v36 & 0x3C)) ^ ((LODWORD(STACK[0x2210]) ^ 0xD9u) << 16) ^ (STACK[0x2208] << 24) ^ (LODWORD(STACK[0x21F0]) << 32) ^ (v21 << 40) ^ (a7 << (v40 & 0x30) << (v40 & 0x30 ^ 0x30)) ^ ((v28 ^ v22) << 56);
  v41 = STACK[0x2240];
  v42 = LODWORD(STACK[0x2248]) ^ 0xE4;
  v43 = STACK[0x2228];
  v44 = STACK[0x2220] << 56;
  STACK[0x22C0] ^= 0x9ACD993465A57A08 ^ v35 ^ (STACK[0x2250] << 16) ^ (v42 << 24) ^ (STACK[0x2240] << 32) ^ (STACK[0x2238] << 40) ^ (STACK[0x2228] << 48) ^ v44;
  STACK[0x2280] = v40 ^ (((STACK[0x2258] << 16) | (STACK[0x2230] << 40)) & 0xFF00FF0000FFFFFFLL | (v42 << 24) | (v41 << 32) & 0xFF00FFFFFFFFFFFFLL | (v43 << 48)) ^ 0x60667322BDD0417BLL ^ v44;
  return (*(v15 + 8 * (a3 ^ (2545 * (v17 + 16 < v14)))))();
}

uint64_t sub_26AA6B598(uint64_t a1, int a2)
{
  v4 = (((STACK[0x22C0] << 23) ^ 0x9A32D2BD04000000) - 0x653266CB9A5A85F8 - ((((STACK[0x22C0] << 23) ^ 0x9A32D2BD04000000) << (v3 ^ 0x88u)) & 0x359B3268CB000000)) ^ STACK[0x22C0];
  v5 = (STACK[0x2298] >> ((v3 - 51) ^ 0x4Cu)) ^ (v4 >> 17);
  v6 = v4 ^ STACK[0x2298] ^ ((v5 ^ 0x345D021F45) - 0x2E8BF782E9C409FFLL - 2 * ((v5 ^ 0x345D021F45) & 0x87D163BF609 ^ v5 & 8));
  v7 = (((STACK[0x2298] << 23) ^ 0x3E8B1DFB00800000) - 0x2E8BF782E9C409FFLL - ((2 * ((STACK[0x2298] << 23) ^ 0x3E8B1DFB00800000)) & 0xA2E810FA2C000000)) ^ STACK[0x2298];
  v8 = v7 ^ (v7 >> 17) ^ v6 ^ (v6 >> 26);
  v9 = (((STACK[0x2280] << 23) ^ 0x915EE820BD800000) + 0x60667322BDD0417BLL - ((2 * ((STACK[0x2280] << 23) ^ 0x915EE820BD800000)) & 0xC0CCE6457B000000)) ^ STACK[0x2280];
  v10 = STACK[0x22A0];
  v11 = v9 ^ v10 ^ (((v10 >> 26) ^ (v9 >> 17) ^ 0x2BACDD38D6) - 0x514C8B1CA7CF2F34 - ((2 * ((v10 >> 26) ^ (v9 >> 17) ^ 0x2BACDD38D6)) & 0xE9C6B061A198));
  v12 = (((v10 << 23) ^ 0x71AC186866000000) - 0x514C8B1CA7CF2F34 - ((2 * ((v10 << 23) ^ 0x71AC186866000000)) & 0x5D66E9C6B0000000)) ^ v10;
  v13 = v12 ^ (v12 >> 17) ^ v11 ^ (v11 >> 26);
  v14 = v11 ^ (v11 << 23) ^ ((v11 ^ (v11 << 23)) >> 17) ^ (v13 >> 26);
  v15 = (v14 + 0x60667322BDD0417BLL - ((2 * v14) & 0xC0CCE6457BA082F6)) ^ v13 ^ 0x60667322BDD0417BLL;
  v16 = v8 ^ (v8 << 23) ^ ((v8 ^ (v8 << 23)) >> 17) ^ v15 ^ (v15 >> 26);
  LODWORD(v6) = (STACK[0x2298] ^ 1) + 2 * (v8 + v6) + (v6 ^ (v6 << 23) ^ ((v6 ^ (v6 << 23)) >> 17) ^ v8 ^ (v8 >> 26));
  v17 = v6 + a2 - ((2 * v6) & 0x132);
  v18 = (v16 >> 26) ^ v15 ^ (v15 << 23) ^ ((v15 ^ (v15 << 23)) >> 17) ^ v16;
  v19 = ((v16 ^ (v16 << 23)) >> 17) ^ v16 ^ (v16 << 23) ^ v18;
  v20 = v19 ^ (v18 >> 26);
  STACK[0x22C0] = v20 + v18 - 0x653266CB9A5A85F8 - ((2 * (v20 + v18)) & 0x359B3268CB4AF410);
  LODWORD(STACK[0x22A0]) = v17;
  return (*(v2 + 8 * ((43 * (((-(v20 | 0x131C13BF095D18FCLL) | v19) & 0x8000000000000000) == 0)) ^ v3)))();
}

void sub_26AA6B87C(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  STACK[0x2280] = v4;
  STACK[0x22A0] = v3 ^ a1;
  STACK[0x2298] = a2 ^ v2;
  JUMPOUT(0x26AA6A28CLL);
}

uint64_t sub_26AA6B8B4@<X0>(unint64_t a1@<X6>, int a2@<W7>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _BYTE *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, _BYTE *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, _BYTE *a60)
{
  v72 = 280813903 * (v66 - v60) + (v64 + v65);
  v73 = v72 - ((2 * v72) & 0x75A03604) + 986716930;
  v74 = v73 & 0xFE ^ 2;
  LODWORD(STACK[0x2278]) = v74;
  v75 = 16843009 * v74 - 88252279;
  LODWORD(STACK[0x2218]) = v75 - ((33686018 * v74) & 0xF57AC110);
  v76 = (v74 - 119 - ((2 * v74) & 0x10));
  LODWORD(STACK[0x2298]) = v76;
  v77 = v73 ^ 0x3AD01B02;
  LODWORD(STACK[0x2220]) = v73;
  LODWORD(STACK[0x2250]) = (v73 ^ 0x3AD01B02) + (v73 & 0xFFFFFF01 ^ 0x5ED8DAAC ^ ((v76 ^ 0x89) - ((2 * (v76 ^ 0x89)) & 0xA6) - 1678295469)) + 821939961 * ((v73 ^ 0xC52FE4FD) + ((((v76 ^ 0x89 | v73 & 0xFFFFFF01) ^ 0x3AD01B00) - 2062948967 - 2 * (((v76 ^ 0x89 | v73 & 0xFFFFFF01) ^ 0x3AD01B00) & 0x509E59F ^ v75 & 6)) ^ 0x8509E599));
  STACK[0x21F8] = a1;
  v78 = STACK[0x22C0];
  LODWORD(STACK[0x1D40]) = a1 ^ 0xB49;
  v79 = (((a1 ^ 0xB49) - 23) ^ v78) - v61 + v65;
  v80 = v79 - 2062948967 - ((2 * v79) & 0xA13CB32);
  v81 = v80 & 7 ^ 1;
  LODWORD(STACK[0x2238]) = v80 & 7;
  v82 = (1 - v81 - 2 * (v81 & 1)) & 7;
  LODWORD(STACK[0x21B0]) = v82;
  if ((v80 & 7) == 1)
  {
    v83 = 0;
  }

  else
  {
    v83 = -1;
  }

  v84 = v83 << (v82 ^ 1);
  v85 = v80 & 0xFFFFFFF8 ^ 0x8509E598;
  LODWORD(STACK[0x1F58]) = -2062948968;
  v86 = (v85 - 2062948967 - ((2 * v85) & 0xA13CB30)) ^ (v80 & 7 | 0x8509E598);
  v87 = ~v84;
  if ((v80 & 7) == 1)
  {
    v87 = 0;
  }

  LODWORD(STACK[0x2240]) = ((v86 - 2062948967 - ((2 * v86) & 0xA13CB32)) ^ 0x8509E599 ^ v87 & v77 ^ (16843009 * v84)) - 2062948967 - ((2 * ((v86 - 2062948967 - ((2 * v86) & 0xA13CB32)) ^ 0x8509E599 ^ v87 & v77 ^ (16843009 * v84))) & 0xA13CB32);
  LODWORD(STACK[0x2230]) = (v86 << 7) - 2062948967 - ((v86 << 8) & 0xA13CB00);
  v88 = 1191182336 * v84;
  v89 = v73 & 0xFFFFFF01 ^ 0x3AD01B89 ^ LODWORD(STACK[0x2298]);
  v90 = (16843009 * v84) ^ (v89 - 2062948967 - ((2 * v89) & 0xA13CB32));
  v91 = v63 - v69;
  v92 = v63 - v69 + (v71 + v64);
  LODWORD(STACK[0x21D8]) = 84534685;
  LODWORD(STACK[0x1C98]) = 169069056;
  v93 = ((v90 ^ v88 & v92 ^ 0x8509E599) - 2062948967 - 2 * ((v90 ^ v88 & v92 ^ 0x8509E599) & 0x509E59D ^ (v90 ^ v88 & v92) & 4)) ^ ((v89 << 8) - 2062948967 - ((v89 << 9) & 0xA13CA00));
  v94 = v73 ^ (v73 << 8) ^ (v93 - ((2 * v93) & 0x75A03604) + 986716930);
  LODWORD(STACK[0x21F0]) = v94 ^ 0x8C3B2681;
  LODWORD(STACK[0x21E0]) = (2 * v94) & 0x47BFB6FC ^ 0xFFC9FBFF;
  LODWORD(STACK[0x2228]) = ((v80 << 7) ^ 0x84F2CC80) - 2062948967 - ((2 * ((v80 << 7) ^ 0x84F2CC80)) & 0xA13CB00);
  v95 = v67 ^ (v67 >> 17) ^ v68;
  v96 = v95 ^ v64;
  v97 = ((v95 ^ v70 ^ ((v95 ^ v64) >> 26)) + (v95 ^ v64)) ^ v65 ^ v61 ^ ((v65 ^ v61) >> 3);
  LODWORD(STACK[0x22C0]) = -2062948966;
  LODWORD(v95) = (v97 - 2062948966 + ~((2 * v97) & 0xA13CB32)) ^ 0x8509E599;
  v98 = 436909091 * v95 - 2062948967 - ((68511814 * v95) & 0xA13CB32);
  v99 = v97 & 7;
  if ((v97 & 7) != 0)
  {
    v100 = 255;
  }

  else
  {
    v100 = 0;
  }

  v101 = (v100 >> 3) & 0xFFFFFF1F | (32 * (v100 & 7));
  v102 = -v97 & 7;
  v103 = (((~*(STACK[0x2288] + (v101 ^ 0xF5)) + (v101 ^ 0xFFFFFFA2)) ^ 0x1D) + 96) << (-v97 & 7);
  if ((v97 & 7) != 0)
  {
    v104 = ~v103;
  }

  else
  {
    v104 = 0;
  }

  LODWORD(STACK[0x21D0]) = v104 & (v62 ^ 0x99999999);
  LODWORD(STACK[0x21C8]) = (436909091 * v97 - 2062948967 - ((68511814 * v97) & 0xA13CB32)) ^ v98;
  v105 = 16843009 * (v62 & 0xFE ^ 0x98) - ((33686018 * (v62 & 0xFE ^ 0x98)) & 0x77C21C6C) + 1004604982;
  v106 = (((v62 & 0xFE ^ 0x98) - ((2 * (v62 & 0xFE ^ 0x98)) & 0x6C) + 54) & 0xFE | a2) ^ 0x37;
  LODWORD(STACK[0x21C0]) = 32 * v106 - ((v106 << 6) & 0x2440);
  v107 = v91 + (v96 + v64) - 2062948967 - ((2 * (v91 + (v96 + v64))) & 0xA13CB32);
  v108 = 16843009 * v103;
  v109 = v107 ^ 0x8509E599;
  v110 = v108 ^ v62 ^ (788529152 * v103) & (v107 ^ 0x8509E599);
  LODWORD(STACK[0x21B8]) = (v110 ^ 0x8509E599) - 2062948967 - 2 * ((v110 ^ 0x8509E599) & 0x509E59B ^ v110 & 2);
  STACK[0x2280] = v102;
  v111 = -2062948967 - 1914837765 * v102 - ((196856310 * v102) & 0xA13CB32);
  v112 = ((-629695611 - v102 - ((1108014572 - 2 * v102) & 0x4200411E)) ^ 0x3972208F) + v102;
  v113 = ((a3 & 0x8DDDF4FF ^ 0x8DDDF4FF) + (a3 & 0x8DDDF4FF)) & 0x9DDFEDFB;
  v114 = STACK[0x21B0];
  v115 = ((v112 - 2062948967 - ((2 * v112) & 0xA13CB32)) ^ 0x8509E599) + (v111 ^ 0x8509E599) + v113 + v113 * (LODWORD(STACK[0x21B0]) ^ 0xFFFFFFFE);
  LODWORD(STACK[0x2248]) = v115 - 2062948967 - ((2 * v115) & 0xA13CB32);
  v116 = (v109 | ((v62 ^ 0x8509E599) + 926693100)) - ((2 * (v109 | ((v62 ^ 0x8509E599) + 926693100))) & 0x33F27BEA) + 435764725;
  v117 = ((v77 + 926693100) | v92) - 2062948967 - ((2 * ((v77 + 926693100) | v92)) & 0xA13CB32);
  LODWORD(STACK[0x2210]) = v117;
  v118 = (((BYTE2(v117) ^ BYTE1(v117) ^ 0xEC) - ((2 * (BYTE2(v117) ^ BYTE1(v117) ^ 0xEC)) & 0x33) - 103) ^ v117) ^ HIBYTE(v117) ^ 0x7C;
  v119 = 16843009 * v118 - ((33686018 * v118) & 0x75A24EF8) - 1160697988;
  v120 = (((BYTE1(v116) ^ BYTE2(v116) ^ 0xC4) - 2 * ((BYTE1(v116) ^ BYTE2(v116) ^ 0xC4) & 0x7F ^ (BYTE1(v116) ^ BYTE2(v116)) & 0xA) - 11) ^ v116) ^ HIBYTE(v116) ^ 0xA9;
  v121 = 16843008 * v120;
  v122 = 16843009 * v120;
  LODWORD(STACK[0x2260]) = (16843009 * v120) ^ 0xA9498D45;
  v123 = (((v119 >> 6) ^ 0x10CA37A) - ((2 * ((v119 >> 6) ^ 0x10CA37A)) & 0x3F27BEA) + 435764725) ^ (16843009 * v120) ^ 0xA9498D45;
  v124 = (v123 - 2062948967 - ((2 * v123) & 0xA13CB32)) ^ (v122 >> 6) ^ 0x87CB275B;
  LODWORD(STACK[0x2298]) = v122;
  v125 = (v119 ^ 0x5D6C8A59 ^ (v124 - 2062948967 - ((2 * v124) & 0xA13CB32))) + 981498919 * ((v119 ^ 0x4328DE85) + (v122 ^ 0x4F4F4F4F)) + 981498919;
  v126 = v125 - 2062948967 - ((2 * v125) & 0xA13CB32);
  v127 = ((-2062948967 - 428114837 * v81 - ((217512150 * v81) & 0xA13CB32)) ^ 0x8509E599) + 428114837 * v99 - 1593476362;
  LOBYTE(v109) = v81 + 107 * (v109 - v92);
  v128 = (v81 - v99 + ((v127 - ((2 * v127) & 0x48C1D232) - 1537152743) ^ 0xA460E919)) ^ (-2054121017 * v81);
  v129 = (v128 - 2062948967 - ((2 * v128) & 0xA13CB32)) ^ (-2062948967 - 2054121017 * v99 - ((186725262 * v99) & 0xA13CB32));
  v130 = STACK[0x2218];
  v131 = (LODWORD(STACK[0x2218]) ^ 0xFABD6089) << (((v63 & 9 ^ 9) + (v63 & 9)) & 0x10 | 8);
  v132 = (((v105 ^ 0x3BE10E36) - 1689407163 - 33686018 * LODWORD(STACK[0x2278]) - 2062948967 - 2 * (((v105 ^ 0x3BE10E36) - 1689407163 - 33686018 * LODWORD(STACK[0x2278])) & 0x509E59B ^ ((v105 ^ 0x3BE10E36) - 1689407163) & 2)) ^ 0x8509E599) + (v105 ^ 0x3BE10E36);
  v133 = (v131 ^ (v105 << 8) ^ 0xE10E3600 ^ v132) - 2 * ((v131 ^ (v105 << 8) ^ 0xE10E3600 ^ v132) & 0x7ABD608F ^ v132 & 6);
  v134 = (LODWORD(STACK[0x2240]) ^ LODWORD(STACK[0x2230])) - 2062948967 - 2 * ((LODWORD(STACK[0x2240]) ^ LODWORD(STACK[0x2230])) & STACK[0x21D8] ^ (LODWORD(STACK[0x2240]) + 24) & 4);
  v135 = (((LODWORD(STACK[0x22A0]) >> 8) & 7 ^ 5) - 2062948967 - 2 * (((LODWORD(STACK[0x22A0]) >> 8) & 7 ^ 5) & 1)) ^ (((32 * v62) ^ 0xA13CB320) - 2062948967 - ((2 * ((32 * v62) ^ 0xA13CB320)) & 0xA13CB00)) ^ (LODWORD(STACK[0x21C0]) - 541830608) ^ 0x5ABDB7A9 ^ LODWORD(STACK[0x21B8]);
  v136 = LODWORD(STACK[0x2250]) + LODWORD(STACK[0x21F0]) - 723670407 + LODWORD(STACK[0x21E0]);
  LODWORD(STACK[0x2240]) = v136 - ((2 * v136) & 0xBF68A460);
  v137 = ((v85 ^ v80) >> 7) ^ ((v85 + LODWORD(STACK[0x2238])) << 8) ^ LODWORD(STACK[0x2228]) ^ 0x10A12CB ^ v134;
  v138 = v80 ^ (v80 << 8) ^ (v137 - 2062948967 - ((2 * v137) & 0xA13CB32));
  v139 = LODWORD(STACK[0x21C8]) ^ v108;
  v140 = LODWORD(STACK[0x21D0]) - 87;
  v141 = STACK[0x21E8] + 2637;
  v142 = STACK[0x21E8] - 12;
  STACK[0x2250] = v141;
  LODWORD(STACK[0x2238]) = *(v141 + (v140 ^ 0xC7)) ^ v139;
  v143 = (v62 >> 1) ^ 0x4284F2CC;
  LODWORD(v141) = v62 ^ 0xF8D91949;
  v144 = (v62 ^ 0x7AF61A66) + v106 + ((((2 * v135) & 0xFBA1F9A0) - v135 - 2110848209) ^ v62 ^ 0xF8D91949) + 1;
  LODWORD(STACK[0x2230]) = v144 - ((2 * v144) & 0x37EE7CA6);
  v145 = v80 ^ v97 ^ v114;
  LODWORD(STACK[0x2228]) = v145;
  v146 = v109 - ((2 * v109) & 0x34);
  v147 = v143 - ((2 * v143) & 0x7BA1F9A0);
  v148 = STACK[0x2220];
  v149 = v116 ^ 0x2CFA84D;
  LODWORD(STACK[0x21E8]) = v119 ^ 0xC6213B1C;
  LODWORD(STACK[0x21E0]) = v119 ^ 0xC6213B1C ^ (v119 << 8) ^ v121 ^ v122 ^ 0x28DE85B0 ^ v126;
  v150 = STACK[0x22D0];
  v151 = *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374));
  LODWORD(STACK[0x2208]) = v129;
  LODWORD(STACK[0x2220]) = v129 + LODWORD(STACK[0x22C0]) + ~((2 * v129) & 0xA13CB32);
  v152 = v130;
  v153 = v148 ^ v141 ^ (v148 >> 1) ^ (v147 + 2110848208) ^ v130;
  LODWORD(STACK[0x21D0]) = v153;
  LODWORD(STACK[0x2140]) = v105;
  v154 = -812407749 * ((v151 ^ STACK[0x7F0]) & 0x7FFFFFFF);
  v155 = -812407749 * (v154 ^ HIWORD(v154));
  v156 = *STACK[0x7F0] ^ *(STACK[0x22C8] + (v155 >> 24)) ^ *(STACK[0x22E0] + (v155 >> 24)) ^ *((v155 >> 24) + STACK[0x22F0] + 2) ^ (v155 ^ (-109 * BYTE3(v155))) ^ 0xC2u;
  v157 = v142;
  STACK[0x1FF8] = v142;
  LOBYTE(v156) = *(v142 + 2921 + v156);
  v158 = v142 + 2921;
  LODWORD(STACK[0x21D8]) = v149 + (v105 ^ v152 ^ 0xC41EF1C9 ^ (v133 - 88252279));
  LOBYTE(v149) = v156 ^ 0x37 ^ (32 * v156 + 16 * ~v156 + 31);
  LOBYTE(v149) = *(STACK[0x22B8] + ((v149 - 87) ^ 0x60)) ^ (v149 - 2 * (v149 - 87) - 88) ^ 0xE1;
  v159 = v153 ^ 0xA;
  LOBYTE(v149) = v149 ^ ((v149 & (v153 ^ 0xA) & 0xFE) >> 1);
  v160 = v99;
  LODWORD(v156) = *(STACK[0x2158] + (((2 * ((v149 << v99) & 0x7F)) | (v149 << v99 >> 7) & 1) ^ 0xE3)) ^ 0xFF;
  v161 = -812407749 * ((v151 ^ STACK[0x1598]) & 0x7FFFFFFF);
  v162 = -812407749 * (v161 ^ HIWORD(v161));
  v163 = STACK[0x630];
  v164 = *(&off_279CA5FD0 + (STACK[0x21F8] - 2754)) - 8;
  v165 = *(&off_279CA5FD0 + (STACK[0x21F8] - 2811));
  v166 = *(&off_279CA5FD0 + (STACK[0x21F8] ^ 0xB5E)) - 4;
  v167 = STACK[0x2280];
  v168 = ((v149 & v138) >> STACK[0x2280]) | ((((v156 >> 1) | (v156 << 7)) ^ 0xBE) + 216);
  LOBYTE(v156) = *(v142 + 2921 + ((*(STACK[0x630] + 463) ^ v162 ^ (-71 * BYTE3(v162)) ^ v164[v162 >> 24] ^ *(v165 + (v162 >> 24)) ^ v166[v162 >> 24]) ^ 0x4Du));
  v169 = STACK[0x2290];
  LODWORD(v156) = (*(STACK[0x2290] + ((-75 * (v156 ^ 0x82 ^ (32 * v156 + 16 * ~v156 + 31))) ^ 0x31)) ^ 0x6C) + 125;
  LODWORD(v156) = v156 ^ ((v156 & (v153 ^ 0xA) & 0xFE) >> 1);
  v170 = (v146 - 102) ^ 0x9Au;
  LODWORD(v162) = STACK[0x2260];
  v171 = (v168 - ((2 * v168) & 0x33F27BEA) + 435764725) ^ LODWORD(STACK[0x2260]);
  STACK[0x21F0] = v157 + 1596;
  v172 = *(v157 + 1596 + ((((v138 & v156 & 0x80) != 0) | (2 * (v138 & v156))) ^ 0x3BLL));
  v173 = v145 ^ 0x98u;
  v174 = ((v171 ^ 0xF7) + ((2 * v171) & 0xEE) + 9) ^ ((v156 << v170) | (((v172 ^ (4 * v172)) + 88) >> (v145 ^ 0x98u)));
  *a24 = ~(2 * v174) + v174;
  v175 = STACK[0x22E8];
  v176 = *(*STACK[0x22E8] + (*v150 & 0x38F3A374));
  v177 = -812407749 * ((-812407749 * ((v176 ^ (v163 + 448)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v176 ^ (v163 + 448)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v177) = *(v158 + ((v163[448] ^ v164[v177 >> 24] ^ *(v165 + (v177 >> 24)) ^ v166[v177 >> 24] ^ (59 * ((59 * (v176 ^ (v163 - 64))) ^ ((-812407749 * ((v176 ^ (v163 + 448)) & 0x7FFFFFFFu)) >> 16))) ^ (-71 * ((-812407749 * ((-812407749 * ((v176 ^ (v163 + 448)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v176 ^ (v163 + 448)) & 0x7FFFFFFFu)) >> 16))) >> 24))) ^ 0xE0u));
  LODWORD(v177) = v177 ^ 0x4B ^ (32 * v177 + 16 * ~v177 + 31);
  v178 = STACK[0x2288];
  LOBYTE(v177) = (((((((v177 & (v153 ^ 0xA)) >> 4) | (16 * (v177 & (v153 ^ 0xA)))) & 0xEF ^ 0xA2) + ~*(STACK[0x2288] + ((((v177 & (v153 ^ 0xA)) >> 4) | (16 * (v177 & (v153 ^ 0xA)))) & 0xEFLL ^ 0xF5))) ^ 0x1D) + 96) ^ v177;
  LODWORD(v156) = v176 ^ (v163 + 464);
  LOBYTE(v152) = v167;
  v179 = (v177 << v160) | (((*(v169 + ((-75 * (v177 & v138)) ^ 0x31)) ^ 0x6C) + 125) >> v167);
  v180 = -812407749 * ((-812407749 * (v156 & 0x7FFFFFFF)) ^ ((-812407749 * (v156 & 0x7FFFFFFF)) >> 16));
  LODWORD(v180) = *(v158 + ((v163[464] ^ (59 * ((59 * v156) ^ ((-812407749 * (v156 & 0x7FFFFFFF)) >> 16))) ^ v164[v180 >> 24] ^ *(v165 + (v180 >> 24)) ^ v166[v180 >> 24] ^ (-71 * BYTE3(v180))) ^ 0x70u));
  LODWORD(v180) = v180 ^ (16 * ~v180) ^ (((v180 ^ (16 * ~v180)) & (v153 ^ 0xA) & 0xFE) >> 1);
  LOBYTE(v180) = *(STACK[0x22B8] + ((v180 - 87) ^ 0x60)) ^ (v180 - 2 * (v180 - 87) - 88) ^ 0xD9;
  LOBYTE(v179) = (*(STACK[0x22B8] + (((v180 << v170) - 87) ^ 0x60)) ^ (~(2 * ((v180 << v170) - 87)) + (v180 << v170) - 87) ^ 0xD9 | ((v180 & v138) >> v173)) ^ v179;
  LOBYTE(v179) = (v179 - ((2 * v179) & 0xEA) - 11) ^ v162;
  a42[3460] = ~(2 * v179) + v179;
  LODWORD(v156) = *(*v175 + (*v150 & 0x38F3A374));
  v181 = -812407749 * ((-812407749 * ((v156 ^ (v163 + 449)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v156 ^ (v163 + 449)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v180) = *(v158 + (v163[449] ^ v164[v181 >> 24] ^ *(v165 + (v181 >> 24)) ^ v166[v181 >> 24] ^ (59 * ((59 * (v156 ^ (v163 - 63))) ^ ((-812407749 * ((v156 ^ (v163 + 449)) & 0x7FFFFFFF)) >> 16))) ^ (-71 * ((-812407749 * ((-812407749 * ((v156 ^ (v163 + 449)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v156 ^ (v163 + 449)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ 0x5B));
  LODWORD(v180) = v180 ^ 0x16 ^ (32 * v180 + 16 * ~v180 + 31);
  LODWORD(v180) = v180 ^ ((v180 & (v153 ^ 0xA) & 0xFE) >> 1);
  STACK[0x2258] = v160;
  LODWORD(v180) = (v180 << v160) | ((v180 & v138) >> v167);
  v182 = -812407749 * ((-812407749 * ((v156 ^ (v163 + 465)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v156 ^ (v163 + 465)) & 0x7FFFFFFF)) >> 16));
  v183 = v169;
  LODWORD(v182) = *(v158 + (((*(v169 + ((-75 * (v164[v182 >> 24] ^ v163[465] ^ *(v165 + (v182 >> 24)) ^ v182 ^ v166[v182 >> 24] ^ (-71 * BYTE3(v182)))) ^ 0x31)) ^ 0x6C) + 125) ^ 0x2FLL));
  v184 = v158;
  STACK[0x22A0] = v158;
  LODWORD(v182) = v182 ^ 0xFFFFFFB5 ^ (32 * v182 + 16 * ~v182 + 31);
  v185 = v182 ^ ((v182 & v159 & 0xFE) >> 1);
  v186 = v173;
  a42[3461] = ((v185 << v170) | ((*(v169 + ((-75 * ((v185 & v138) >> v173)) ^ 0x31)) ^ 0x6C) + 125)) ^ (((2 * v180) & 0xEA) - v180 + 10) ^ v162;
  v187 = *v150 & 0x38F3A374;
  v188 = *v175;
  v189 = *(*v175 + v187);
  v190 = -812407749 * ((-812407749 * ((v189 ^ (v163 + 450)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v189 ^ (v163 + 450)) & 0x7FFFFFFFu)) >> 16));
  LOBYTE(v135) = v164[v190 >> 24] ^ v163[450] ^ *(v165 + (v190 >> 24)) ^ v166[v190 >> 24] ^ (59 * ((59 * (v189 ^ (v163 - 62))) ^ ((-812407749 * ((v189 ^ (v163 + 450)) & 0x7FFFFFFFu)) >> 16))) ^ (-71 * ((-812407749 * ((-812407749 * ((v189 ^ (v163 + 450)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v189 ^ (v163 + 450)) & 0x7FFFFFFFu)) >> 16))) >> 24));
  v191 = STACK[0x22A8];
  LOBYTE(v135) = *(v184 + (((*(STACK[0x22A8] + ((-75 * v135) ^ 0x52)) ^ (75 * v135 - 1) ^ 0xC4) + 125) ^ 0xD7));
  LOBYTE(v135) = v135 ^ 0x9D ^ (32 * v135 + 16 * ~v135 + 31);
  v192 = *(STACK[0x21F0] + ((((v135 & 0x80) != 0) | (2 * v135)) ^ 0x3BLL));
  LODWORD(v181) = (((4 * ~v192) & 0x14 ^ (v192 ^ 0x6C) & 0x16 | (v192 ^ 0x6C) & 0xFFFFFFE9 ^ (4 * ~v192) & 0xFFFFFFE8) ^ 0x10) - 40;
  LODWORD(v181) = v181 ^ ((v181 & v159 & 0xFE) >> 1);
  v193 = v189 ^ (v163 + 466);
  LODWORD(v181) = (v181 << v160) | ((v181 & v138) >> v152);
  v194 = (v181 >> 3) & 0xFFFFFF1F | (32 * (v181 & 7));
  LOBYTE(v181) = (v194 ^ 0xA2) + ~*(v178 + (v194 ^ 0xF5));
  v195 = -812407749 * ((-812407749 * (v193 & 0x7FFFFFFF)) ^ ((-812407749 * (v193 & 0x7FFFFFFFu)) >> 16));
  LODWORD(v173) = v164[v195 >> 24];
  LODWORD(v160) = *(v165 + (v195 >> 24));
  LODWORD(v169) = -71 * (v195 >> 24);
  LODWORD(v194) = v166[v195 >> 24];
  LODWORD(v178) = v163[466];
  v196 = v195 ^ v178 ^ v173 ^ v160 ^ (-71 * BYTE3(v195)) ^ v194 ^ 0xF2;
  LODWORD(v195) = v178 ^ v173 ^ v160 ^ v194 ^ v195;
  v197 = STACK[0x1FF8] + 1867;
  LODWORD(v195) = v195 ^ v169 ^ 0xFFFFFFC4 ^ *(v197 + v196);
  LODWORD(v195) = v195 ^ ((v195 & v159 & 0xFE) >> 1);
  v198 = STACK[0x2158];
  LOBYTE(v194) = ~*(STACK[0x2158] + (((v195 << v170 >> 7) & 1 | (2 * ((v195 << v170) & 0x7F))) ^ 0xE3));
  v199 = v138;
  v200 = STACK[0x2268];
  LOBYTE(v195) = ((*(v183 + ((-75 * (((*(STACK[0x2268] + ((((v195 & v199) >> 3) | (32 * (v195 & v199))) ^ 0x5ALL)) ^ 0x20) + 96) >> v186)) ^ 0x31)) ^ 0x6C) + 125) | ((((v194 >> 1) | (v194 << 7)) ^ 0xBE) - 40);
  v201 = LODWORD(STACK[0x2298]) ^ 0x4F;
  LODWORD(STACK[0x21F8]) = v201;
  a42[3462] = v201 ^ ((v181 ^ 0x1D) + 96) ^ v195;
  LODWORD(v187) = -812407749 * ((*(v188 + v187) ^ (v163 + 451)) & 0x7FFFFFFF);
  v202 = -812407749 * (v187 ^ WORD1(v187));
  LODWORD(v202) = v163[451] ^ v164[v202 >> 24] ^ *(v165 + (v202 >> 24)) ^ v166[v202 >> 24] ^ v202 ^ (-71 * (v202 >> 24)) ^ 0xFFFFFFE1;
  v203 = v191;
  LOBYTE(v202) = *(v191 + ((-75 * v202) ^ 0x52)) ^ (75 * v202 - 1) ^ 0xC4;
  v204 = STACK[0x22D0];
  v205 = STACK[0x22E8];
  LODWORD(v195) = *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374)) ^ (v163 + 467);
  STACK[0x2278] = v197;
  LOBYTE(v188) = *(v197 + ((v202 + 125) ^ 0x70)) ^ (v202 - 2 * (v202 + 125) + 124) ^ 0xC1;
  v206 = STACK[0x2280];
  v207 = STACK[0x2258];
  v208 = -812407749 * ((-812407749 * (v195 & 0x7FFFFFFF)) ^ ((-812407749 * (v195 & 0x7FFFFFFF)) >> 16));
  LODWORD(v208) = v164[v208 >> 24] ^ v163[467] ^ *(v165 + (v208 >> 24)) ^ v166[v208 >> 24] ^ v208 ^ (-71 * (v208 >> 24));
  LOBYTE(v208) = v208 ^ *(v197 + (v208 ^ 0x1Cu));
  v209 = STACK[0x21D0];
  LODWORD(STACK[0x2218]) = LODWORD(STACK[0x21D0]) ^ 0xCBDEEC3A;
  LOBYTE(v208) = ~*(v198 + ((((v208 & 0x80) != 0) | (2 * (v208 ^ 0x20))) ^ 0xE3));
  LOBYTE(v209) = ((((v208 >> 1) | (v208 << 7)) ^ 0xBE) - 40) ^ (v209 & 0xB6 ^ 2 | v209 & 0xB6 ^ 0xB4);
  LOBYTE(v209) = (*(v200 + (((v209 >> 3) | (32 * v209)) ^ 0x5ALL)) ^ 0x20) + 96;
  v210 = ((((v188 ^ ((v188 & v159 & 0xFE) >> 1)) & v199) >> v206) | ((v188 ^ ((v188 & v159 & 0xFE) >> 1)) << v207)) ^ ((((v209 ^ ((v209 & v159 & 0xFE) >> 1)) & v199) >> v186) | ((v209 ^ ((v209 & v159 & 0xFE) >> 1)) << v170));
  LODWORD(v188) = STACK[0x2260];
  LOBYTE(v210) = (v210 - ((2 * v210) & 0xEA) - 11) ^ LODWORD(STACK[0x2260]);
  a42[3463] = ~(2 * v210) + v210;
  v211 = *(*v205 + (*v204 & 0x38F3A374));
  v212 = -812407749 * ((-812407749 * ((v211 ^ (v163 + 452)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v211 ^ (v163 + 452)) & 0x7FFFFFFFu)) >> 16));
  v213 = v165;
  LOBYTE(v184) = *(v165 + (v212 >> 24));
  v214 = v166;
  v215 = *(STACK[0x22A0] + (v163[452] ^ v164[v212 >> 24] ^ v184 ^ v166[v212 >> 24] ^ (59 * ((59 * (v211 ^ (v163 - 60))) ^ ((-812407749 * ((v211 ^ (v163 + 452)) & 0x7FFFFFFFu)) >> 16))) ^ (-71 * ((-812407749 * ((-812407749 * ((v211 ^ (v163 + 452)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v211 ^ (v163 + 452)) & 0x7FFFFFFFu)) >> 16))) >> 24)) ^ 0xA9));
  v216 = v215 ^ 0xFFFFFF95 ^ (32 * v215 + 16 * ~v215 + 31);
  LODWORD(v173) = v216 ^ ((v216 & v159 & 0xFE) >> 1);
  v217 = -812407749 * ((-812407749 * ((v211 ^ (v163 + 468)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v211 ^ (v163 + 468)) & 0x7FFFFFFFu)) >> 16));
  v218 = v217 >> 24;
  v219 = ((((v173 & v199) >> (((v202 + 125) | (2 - v202)) & 7)) ^ (2 * (v173 & v199))) - 2 * ((((v173 & v199) >> (((v202 + 125) | (2 - v202)) & 7)) ^ (2 * (v173 & v199))) & 0x82) + 130) ^ 0xB9;
  LODWORD(v202) = *(v213 + (v217 >> 24));
  v220 = v213;
  v221 = v214;
  LODWORD(v217) = v217 ^ v164[v217 >> 24] ^ v202 ^ v214[v217 >> 24] ^ v163[468];
  HIDWORD(v222) = v217 ^ (57 * v218);
  LODWORD(v222) = (v217 ^ (-71 * v218)) << 24;
  v223 = STACK[0x21F0];
  LODWORD(v219) = (v173 << v207) | (((*(v223 + v219) ^ (4 * *(v223 + v219))) + 88) >> v206);
  LODWORD(v217) = ~*(v198 + ((v222 >> 31) ^ 0xE3));
  LODWORD(v217) = ((((v217 >> 1) | (v217 << 7)) ^ 0xFFFFFFBE) - 40) ^ 0x3E;
  LODWORD(v217) = *(v203 + ((-75 * v217) ^ 0x52)) ^ (-181 * v217 - 1) ^ 0xFFFFFFC4;
  v224 = STACK[0x2278];
  LODWORD(v217) = *(STACK[0x2278] + ((v217 + 125) ^ 0x70)) ^ (v217 - 2 * (v217 + 125) + 124) ^ 0xFFFFFFC8;
  v225 = v217 ^ ((((*(STACK[0x2290] + ((-75 * (v217 & v159)) ^ 0x31)) ^ 0x6C) + 125) & 0xFE) >> 1);
  LOBYTE(v205) = v188;
  a42[3464] = ((v225 << v170) | ((*(v200 + (((((v225 & v199) >> v186) >> 3) & 0xFFFFFF1F | (32 * (((v225 & v199) >> v186) & 7))) ^ 0x5ALL)) ^ 0x20) + 96)) ^ (((2 * v219) & 0xEA) - v219 + 10) ^ v188;
  v226 = STACK[0x22D0];
  v227 = STACK[0x22E8];
  LODWORD(v225) = *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374));
  LODWORD(STACK[0x21E0]) += LODWORD(STACK[0x21D8]);
  v228 = -812407749 * ((-812407749 * ((v225 ^ (v163 + 453)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v225 ^ (v163 + 453)) & 0x7FFFFFFF)) >> 16));
  v229 = v220;
  LODWORD(v228) = v164[v228 >> 24] ^ v163[453] ^ *(v220 + (v228 >> 24)) ^ v221[v228 >> 24] ^ v228 ^ (-71 * ((-812407749 * ((-812407749 * ((v225 ^ (v163 + 453)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v225 ^ (v163 + 453)) & 0x7FFFFFFF)) >> 16))) >> 24));
  LOBYTE(v228) = v228 ^ ~*(v224 + (v228 ^ 0x64u));
  LOBYTE(v228) = *(v223 + ((((v228 & 0x80) != 0) | (2 * v228)) ^ 0xCFLL));
  v230 = -812407749 * ((-812407749 * ((v225 ^ (v163 + 469)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v225 ^ (v163 + 469)) & 0x7FFFFFFF)) >> 16));
  v231 = v221;
  LOBYTE(v230) = v164[v230 >> 24] ^ v163[469] ^ *(v220 + (v230 >> 24)) ^ v230 ^ v221[v230 >> 24] ^ (-71 * BYTE3(v230));
  LOBYTE(v228) = (v228 ^ (8 * v228 + 4 * ~v228 + 7) ^ 0x83) - 40;
  LOBYTE(v230) = *(STACK[0x2250] + (((v230 ^ *(v224 + (v230 ^ 0x5Au)) ^ 0xC0) - 87) ^ 0xC7));
  LOBYTE(v230) = (((v159 & ~v230) >> 1) - (v159 & ~v230 | 1)) ^ v230;
  LODWORD(v220) = v199;
  LODWORD(v230) = ((((v228 ^ ((v228 & v159 & 0xFE) >> 1)) & v199) >> v206) | ((v228 ^ ((v228 & v159 & 0xFE) >> 1)) << v207)) ^ (((v230 & v199) >> v186) | (v230 << v170));
  LOBYTE(v230) = (v230 - ((2 * v230) & 0xEA) - 11) ^ v205;
  LOBYTE(v169) = v205;
  a42[3465] = ~(2 * v230) + v230;
  v232 = v227;
  LODWORD(v230) = *(*v227 + (*v226 & 0x38F3A374));
  v233 = -812407749 * ((-812407749 * ((v230 ^ (v163 + 454)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v230 ^ (v163 + 454)) & 0x7FFFFFFF)) >> 16));
  v234 = v164;
  LOBYTE(v218) = v164[v233 >> 24] ^ v163[454];
  v235 = v231;
  LOBYTE(v233) = v218 ^ *(v229 + (v233 >> 24)) ^ *(v231 + (v233 >> 24)) ^ (59 * ((59 * (v230 ^ (v163 - 58))) ^ ((-812407749 * ((v230 ^ (v163 + 454)) & 0x7FFFFFFF)) >> 16))) ^ (-71 * ((-812407749 * ((-812407749 * ((v230 ^ (v163 + 454)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v230 ^ (v163 + 454)) & 0x7FFFFFFF)) >> 16))) >> 24));
  LOBYTE(v233) = v233 ^ 0x6E ^ *(v224 + (v233 ^ 0xC7u));
  v236 = -812407749 * ((-812407749 * ((v230 ^ (v163 + 470)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v230 ^ (v163 + 470)) & 0x7FFFFFFF)) >> 16));
  v237 = v236 >> 24;
  LODWORD(v236) = *(v229 + (v236 >> 24)) ^ *(v234 + (v236 >> 24)) ^ v236 ^ *(v231 + (v236 >> 24)) ^ v163[470];
  HIDWORD(v222) = v236 ^ v237;
  LODWORD(v222) = (v236 ^ (-71 * v237)) << 24;
  v238 = STACK[0x22A0];
  LOBYTE(v236) = *(STACK[0x22A0] + ((((((v222 >> 27) ^ 0xA2) + ~*(STACK[0x2288] + ((v222 >> 27) ^ 0xF5))) ^ 0x1D) + 96) ^ 0x4DLL));
  LOBYTE(v236) = v236 ^ 0x82 ^ (32 * v236 + 16 * ~v236 + 31);
  LODWORD(v236) = ((((v236 ^ ((v236 & v159 & 0xFE) >> 1)) & v220) >> v186) | ((v236 ^ ((v236 & v159 & 0xFE) >> 1)) << v170)) ^ ((((v233 ^ ((v233 & v159 & 0xFE) >> 1)) & v220) >> v206) | ((v233 ^ ((v233 & v159 & 0xFE) >> 1)) << v207));
  LOBYTE(v236) = (v236 - ((2 * v236) & 0xEA) - 11) ^ v169;
  a42[3466] = ~(2 * v236) + v236;
  LODWORD(v236) = *(*v227 + (*v226 & 0x38F3A374));
  LODWORD(STACK[0x2000]) = LODWORD(STACK[0x21E0]) - 2062948966 - ((2 * (LODWORD(STACK[0x21E0]) + 1)) & 0xA13CB32);
  v239 = -812407749 * ((-812407749 * ((v236 ^ (v163 + 455)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v236 ^ (v163 + 455)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v239) = *(v234 + (v239 >> 24)) ^ v163[455] ^ *(v229 + (v239 >> 24)) ^ *(v231 + (v239 >> 24)) ^ v239 ^ (-71 * ((-812407749 * ((-812407749 * ((v236 ^ (v163 + 455)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v236 ^ (v163 + 455)) & 0x7FFFFFFF)) >> 16))) >> 24));
  LODWORD(v239) = *(v224 + (v239 ^ 0x18)) ^ v239 ^ 0xFFFFFFB8;
  LODWORD(v239) = v239 ^ ((v239 & v159 & 0xFE) >> 1);
  LODWORD(v239) = ((v239 & v199) >> v206) | (v239 << v207);
  v240 = -812407749 * ((-812407749 * ((v236 ^ (v163 + 471)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v236 ^ (v163 + 471)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v239) = ~*(STACK[0x2158] + ((((v239 & 0x80) != 0) | (2 * v239)) ^ 0xE3));
  LODWORD(v240) = *(v238 + (v163[471] ^ *(v234 + (v240 >> 24)) ^ *(v229 + (v240 >> 24)) ^ v240 ^ *(v231 + (v240 >> 24)) ^ (-71 * BYTE3(v240)) ^ 0x2C));
  LODWORD(v240) = v240 ^ 0xFFFFFFB3 ^ (32 * v240 + 16 * ~v240 + 31);
  v241 = v240 ^ ((v240 & v159 & 0xFE) >> 1);
  STACK[0x21B8] = v186;
  LODWORD(v239) = LODWORD(STACK[0x2298]) ^ (((v241 & v199) >> v186) | (v241 << v170)) ^ ((((v239 >> 1) | (v239 << 7)) ^ 0xBE) - 40);
  v242 = STACK[0x2268];
  LOBYTE(v241) = *(STACK[0x2268] + ((((v239 ^ 0xB0) >> 3) & 0x1F | (32 * (v239 & 7))) ^ 0x5ALL));
  LODWORD(STACK[0x2210]) ^= 8 * LODWORD(STACK[0x2208]);
  a42[3467] = (v241 ^ 0xDF) - 96;
  LODWORD(v237) = *(*v227 + (*v226 & 0x38F3A374));
  v243 = -812407749 * ((-812407749 * ((v237 ^ (v163 + 456)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v237 ^ (v163 + 456)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v243) = *(v238 + (v163[456] ^ *(v234 + (v243 >> 24)) ^ *(v229 + (v243 >> 24)) ^ *(v231 + (v243 >> 24)) ^ ((59 * ((59 * (v237 ^ (v163 - 56))) ^ ((-812407749 * ((v237 ^ (v163 + 456)) & 0x7FFFFFFF)) >> 16))) ^ (-71 * ((-812407749 * ((-812407749 * ((v237 ^ (v163 + 456)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v237 ^ (v163 + 456)) & 0x7FFFFFFF)) >> 16))) >> 24))) ^ 0x85u));
  LOBYTE(v243) = v243 ^ 0x50 ^ (32 * v243 + 16 * ~v243 + 31);
  LODWORD(v243) = (v243 ^ ((v243 & v159 & 0xFE) >> 1));
  v244 = -812407749 * ((-812407749 * ((v237 ^ (v163 + 472)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v237 ^ (v163 + 472)) & 0x7FFFFFFF)) >> 16));
  v245 = v244 >> 24;
  LODWORD(v244) = *(v229 + (v244 >> 24)) ^ *(v234 + (v244 >> 24)) ^ v244 ^ *(v231 + (v244 >> 24)) ^ v163[472];
  HIDWORD(v222) = v244 ^ (57 * v245);
  LODWORD(v222) = (v244 ^ (-71 * v245)) << 24;
  LODWORD(v244) = *(STACK[0x21F0] + ((v222 >> 31) ^ 0x3BLL));
  LODWORD(v244) = v244 ^ (8 * v244 + 4 * ~v244 + 7) ^ 0xFFFFFF83;
  LODWORD(v244) = *(v224 + ((v244 - 40) ^ 0x8DLL)) ^ (v244 - 2 * (v244 - 40) - 41) ^ 3;
  v246 = v244 ^ ((v244 & v159 & 0xFE) >> 1);
  v247 = (-75 * ((v246 & v220) >> v186)) ^ 0x31;
  v248 = STACK[0x2290];
  LOBYTE(v247) = (*(STACK[0x2290] + v247) ^ 0x6C) + 125;
  STACK[0x22C0] = v170;
  LODWORD(v243) = ((v246 << v170) | v247) ^ (((v243 & v220) >> v206) | (v243 << v207));
  LOBYTE(v243) = (v243 - ((2 * v243) & 0xEA) - 11) ^ v169;
  a42[3468] = ~(2 * v243) + v243;
  LODWORD(v246) = *(*v227 + (*v226 & 0x38F3A374));
  v249 = -812407749 * ((-812407749 * ((v246 ^ (v163 + 457)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v246 ^ (v163 + 457)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v247) = *(v238 + (v163[457] ^ *(v234 + (v249 >> 24)) ^ *(v229 + (v249 >> 24)) ^ *(v231 + (v249 >> 24)) ^ ((59 * ((59 * (v246 ^ (v163 - 55))) ^ ((-812407749 * ((v246 ^ (v163 + 457)) & 0x7FFFFFFF)) >> 16))) ^ (-71 * ((-812407749 * ((-812407749 * ((v246 ^ (v163 + 457)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v246 ^ (v163 + 457)) & 0x7FFFFFFF)) >> 16))) >> 24))) ^ 0xA4u));
  LOBYTE(v247) = v247 ^ 0x37 ^ (32 * v247 + 16 * ~v247 + 31);
  LODWORD(v227) = v246 ^ (v163 + 473);
  LOBYTE(v231) = *(v242 + (((v247 >> 3) | (32 * v247)) ^ 0x5ALL));
  LOBYTE(v173) = ((v231 ^ 0x20) + 96) ^ 0x25;
  LODWORD(v246) = (v173 ^ ((v173 & v159 & 0xFE) >> 1));
  v250 = -812407749 * ((-812407749 * (v227 & 0x7FFFFFFF)) ^ ((-812407749 * (v227 & 0x7FFFFFFF)) >> 16));
  LODWORD(v250) = *(v234 + (v250 >> 24)) ^ v163[473] ^ v250 ^ *(v229 + (v250 >> 24)) ^ *(v235 + (v250 >> 24)) ^ (-71 * (v250 >> 24));
  LODWORD(v250) = v250 ^ 0xFFFFFFB1 ^ *(v224 + (v250 ^ 0xA8u));
  LODWORD(v250) = v250 ^ ((v250 & v159 & 0xFE) >> 1);
  LOBYTE(v250) = (((((v250 >> 3) | (32 * v250)) ^ 0xA2) + ~*(STACK[0x2288] + (((v250 >> 3) | (32 * v250)) ^ 0xF5))) ^ 0x1D) + 96;
  v251 = v250 << v170;
  v252 = STACK[0x22A8];
  v253 = STACK[0x21B8];
  a42[3469] = (((*(STACK[0x22A8] + ((-75 * v251) ^ 0x52)) ^ (~(106 * v251) - 75 * v251) ^ 0xC4) + 125) | (((*(v248 + ((-75 * (v250 & v220)) ^ 0x31)) ^ 0x6C) + 125) >> STACK[0x21B8])) ^ (-126 - (*(v248 + ((-75 * (((((v246 & v220) >> v206) | (v246 << v207)) - ((2 * (((v246 & v220) >> v206) | (v246 << v207))) & 0xEA) - 11) ^ v169)) ^ 0x31)) ^ 0x6C));
  v254 = *v226 & 0x38F3A374;
  v255 = *v232;
  LODWORD(v251) = *(*v232 + v254);
  v256 = -812407749 * ((-812407749 * ((v251 ^ (v163 + 458)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v251 ^ (v163 + 458)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v169) = v163[458];
  STACK[0x21C0] = v234;
  LOBYTE(v233) = v169 ^ *(v234 + (v256 >> 24));
  STACK[0x21C8] = v229;
  LOBYTE(v233) = *(v238 + (v233 ^ *(v229 + (v256 >> 24)) ^ *(v235 + (v256 >> 24)) ^ v256 ^ (-71 * BYTE3(v256)) ^ 0x25));
  LOBYTE(v233) = *(STACK[0x2250] + (((v233 ^ 0x37 ^ (~(32 * (v233 ^ (v173 - (v231 ^ 0xF5) + 15))) + 16 * (v233 ^ (v173 - (v231 ^ 0xF5) + 15)))) - 87) ^ 0xC7)) ^ 0xD6;
  LODWORD(v233) = *(STACK[0x22B8] + (((v233 ^ ((v233 & v159 & 0xFE) >> 1)) - 87) ^ 0x60)) ^ (86 - (v233 ^ ((v233 & v159 & 0xFE) >> 1))) ^ 0xD9;
  v257 = STACK[0x2258];
  v258 = -812407749 * ((-812407749 * ((v251 ^ (v163 + 474)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v251 ^ (v163 + 474)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v173) = v163[474];
  v259 = STACK[0x22C8];
  LOBYTE(v231) = v173 ^ *(v234 + (v258 >> 24)) ^ *(v229 + (v258 >> 24)) ^ *(v235 + (v258 >> 24)) ^ (59 * ((59 * (v251 ^ (v163 - 38))) ^ ((-812407749 * ((v251 ^ (v163 + 474)) & 0x7FFFFFFF)) >> 16))) ^ (-71 * ((-812407749 * ((-812407749 * ((v251 ^ (v163 + 474)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v251 ^ (v163 + 474)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ 0x47;
  v260 = STACK[0x22E0];
  v261 = STACK[0x22F0];
  v262 = STACK[0x2250];
  LODWORD(v258) = v173 ^ *(STACK[0x22C8] + (v258 >> 24)) ^ *(STACK[0x22E0] + (v258 >> 24)) ^ *((v258 >> 24) + STACK[0x22F0] + 2) ^ v258 ^ *(v224 + v231) ^ ~(-109 * (v258 >> 24));
  LOBYTE(v258) = ((v258 & 0x80) != 0) | (2 * v258);
  LODWORD(v233) = 181 * (((v233 & v220) >> v206) | (v233 << STACK[0x2258]));
  v263 = v252;
  v264 = STACK[0x21F0];
  LODWORD(v256) = *(STACK[0x21F0] + (v258 ^ 0x9FLL));
  v265 = ((v256 ^ (4 * v256)) + 88) ^ ((((v256 ^ (4 * v256)) + 88) & v159 & 0xFE) >> 1);
  LOBYTE(v231) = ~*(STACK[0x2158] + (((((v265 & v220) >> v253) >> 7) | (2 * ((v265 & v220) >> v253))) ^ 0xE3));
  v266 = STACK[0x22C0];
  a42[3470] = LODWORD(STACK[0x21F8]) ^ ((((v258 & 0xBE ^ 0x1A | v258 & 0xBE ^ 0xA4) ^ ((v231 >> 1) | (v231 << 7))) - 40) | (v265 << STACK[0x22C0])) ^ ((*(v252 + (v233 ^ 0x52)) ^ (~(2 * v233) + v233) ^ 0xC4) + 125);
  LODWORD(v252) = (*(v255 + v254) ^ (v163 + 459)) & 0x7FFFFFFF;
  v267 = -812407749 * ((-812407749 * v252) ^ ((-812407749 * v252) >> 16));
  v268 = v259;
  v269 = v260;
  LOBYTE(v267) = *(v259 + (v267 >> 24)) ^ v163[459] ^ *(v260 + (v267 >> 24)) ^ *((v267 >> 24) + v261 + 2) ^ v267 ^ (-109 * BYTE3(v267));
  v270 = STACK[0x22A0];
  LOBYTE(v267) = *(STACK[0x22A0] + (((*(v263 + ((-75 * v267) ^ 0x52)) ^ (75 * v267 - 1) ^ 0xC4) + 125) ^ 0xDFLL));
  LOBYTE(v254) = ((STACK[0x2298] & 0x70 ^ 0x30) + (STACK[0x2298] & 0x70 ^ 0x40)) ^ (16 * ~v267);
  LOBYTE(v267) = v267 ^ (~(2 * v254) + v254) ^ 0xF;
  LODWORD(v267) = (v267 ^ ((v267 & v159 & 0xFE) >> 1));
  LODWORD(v229) = v257;
  v271 = STACK[0x2280];
  v272 = STACK[0x22D0];
  v273 = STACK[0x22E8];
  LODWORD(v173) = STACK[0x2260];
  LODWORD(v267) = ((((v267 & v220) >> v271) | (v267 << v257)) - ((2 * (((v267 & v220) >> v271) | (v267 << v257))) & 0x7BEA) + 435764725) ^ LODWORD(STACK[0x2260]);
  v274 = (2 * (v267 & 0x7F)) | (v267 >> 7) & 1;
  LODWORD(v267) = -812407749 * ((*(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374)) ^ (v163 + 475)) & 0x7FFFFFFF);
  v275 = -812407749 * (v267 ^ WORD1(v267));
  LOBYTE(v275) = *(v268 + (v275 >> 24)) ^ v163[475] ^ *(v269 + (v275 >> 24)) ^ *((v275 >> 24) + v261 + 2) ^ v275 ^ (-109 * BYTE3(v275));
  v276 = STACK[0x2278];
  v277 = STACK[0x2290];
  LODWORD(v275) = *(STACK[0x2290] + ((-75 * (v275 ^ *(STACK[0x2278] + (v275 ^ 0x5Eu)) ^ 0xEE)) ^ 0x31));
  LODWORD(v275) = ((2 * ~v275) & 0xFFFFFFFB ^ 0x22) + (v275 ^ 0x11);
  v278 = ((*(v263 + ((-75 * ((v275 & v159) >> 1)) ^ 0x52)) ^ (-181 * ((v275 & v159) >> 1) - 1) ^ 0xFFFFFFC4) + 125) ^ v275;
  a42[3471] = *(v262 + ((((((v278 & v220) >> v253) | (v278 << v266)) ^ ((*(v264 + (v274 ^ 0x3B)) ^ (8 * *(v264 + (v274 ^ 0x3B)) + 4 * ~*(v264 + (v274 ^ 0x3B)) + 7) ^ 0x83) - 40)) - 87) ^ 0xC7));
  v279 = v273;
  LODWORD(v278) = *(*v273 + (*v272 & 0x38F3A374));
  v280 = -812407749 * ((-812407749 * ((v278 ^ (v163 + 460)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v278 ^ (v163 + 460)) & 0x7FFFFFFF)) >> 16));
  v281 = STACK[0x21C0];
  LOBYTE(v280) = *(v270 + (*(v262 + (((*(STACK[0x21C0] + (v280 >> 24)) ^ v163[460] ^ *(STACK[0x21C8] + (v280 >> 24)) ^ *(v235 + (v280 >> 24)) ^ (59 * ((59 * (v278 ^ (v163 - 52))) ^ ((-812407749 * ((v278 ^ (v163 + 460)) & 0x7FFFFFFF)) >> 16))) ^ (-71 * ((-812407749 * ((-812407749 * ((v278 ^ (v163 + 460)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v278 ^ (v163 + 460)) & 0x7FFFFFFF)) >> 16))) >> 24))) - 87) ^ 0xC7)) ^ 0xBFLL));
  LOBYTE(v280) = v280 ^ 5 ^ (32 * v280 + 16 * ~v280 + 31);
  v282 = -812407749 * ((-812407749 * ((v278 ^ (v163 + 476)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v278 ^ (v163 + 476)) & 0x7FFFFFFF)) >> 16));
  v283 = STACK[0x21C8];
  LODWORD(v282) = v163[476] ^ v282 ^ *(STACK[0x21C0] + (v282 >> 24)) ^ *(STACK[0x21C8] + (v282 >> 24)) ^ *(v235 + (v282 >> 24)) ^ (-71 * (v282 >> 24)) ^ 0xFFFFFFEA;
  v284 = STACK[0x2288];
  LODWORD(v282) = ((((v282 >> 3) | (32 * v282)) ^ 0xFFFFFFA2) + ~*(STACK[0x2288] + (((v282 >> 3) | (32 * v282)) ^ 0xF5))) ^ 0x1D;
  LODWORD(v282) = *(v276 + ((v282 + 96) ^ 0x70)) ^ (-97 - v282) ^ 0x25;
  LODWORD(v282) = v282 ^ ((v282 & v159 & 0xFE) >> 1);
  LOBYTE(v282) = (((((v282 >> 3) | (32 * v282)) ^ 0xA2) + ~*(STACK[0x2288] + (((v282 >> 3) | (32 * v282)) ^ 0xF5))) ^ 0x1D) + 96;
  LODWORD(v282) = (((v282 & v220) >> v253) | (v282 << v266)) ^ ((((v280 ^ ((v280 & v159 & 0xFE) >> 1)) & v220) >> v271) | ((v280 ^ ((v280 & v159 & 0xFE) >> 1)) << v229));
  LOBYTE(v273) = v173;
  LOBYTE(v282) = (v282 - ((2 * v282) & 0xEA) - 11) ^ v173;
  a42[3472] = ~(2 * v282) + v282;
  v285 = v279;
  LODWORD(v280) = *(*v279 + (*v272 & 0x38F3A374));
  v286 = -812407749 * ((-812407749 * ((v280 ^ (v163 + 461)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v280 ^ (v163 + 461)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v274) = *(v270 + (v163[461] ^ *(v281 + (v286 >> 24)) ^ *(v283 + (v286 >> 24)) ^ *(v235 + (v286 >> 24)) ^ ((59 * ((59 * (v280 ^ (v163 - 51))) ^ ((-812407749 * ((v280 ^ (v163 + 461)) & 0x7FFFFFFF)) >> 16))) ^ (-71 * ((-812407749 * ((-812407749 * ((v280 ^ (v163 + 461)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v280 ^ (v163 + 461)) & 0x7FFFFFFF)) >> 16))) >> 24))) ^ 0x23u));
  LOBYTE(v274) = v274 ^ (~(2 * ((16 * ~v274) ^ 0x72)) + ((16 * ~v274) ^ 0x72)) ^ 0xF;
  v287 = -812407749 * ((-812407749 * ((v280 ^ (v163 + 477)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v280 ^ (v163 + 477)) & 0x7FFFFFFF)) >> 16));
  v288 = STACK[0x22C8];
  v289 = STACK[0x22F0];
  v290 = STACK[0x22E0];
  LODWORD(v274) = (v274 ^ (((((((((v274 & v159) >> 3) | (32 * (v274 & v159))) ^ 0xA2) + ~*(v284 + ((((v274 & v159) >> 3) | (32 * (v274 & v159))) ^ 0xF5))) ^ 0x1C) + 96) & 0xFE) >> 1));
  LOBYTE(v232) = *(v270 + (((*(v277 + ((-75 * (v163[477] ^ v287 ^ *(STACK[0x22C8] + (v287 >> 24)) ^ *(STACK[0x22E0] + (v287 >> 24)) ^ *((v287 >> 24) + STACK[0x22F0] + 2) ^ (-109 * BYTE3(v287)) ^ 0x8D)) ^ 0x31)) ^ 0x6C) + 125) ^ 0x7CLL));
  LODWORD(v287) = ((v274 & v220) >> v271) | (v274 << v229);
  LOBYTE(v274) = (32 * v232 + 16 * ~v232 + 31) ^ v232;
  v291 = STACK[0x2158];
  LODWORD(v274) = ~*(STACK[0x2158] + ((((v274 & 0x80) != 0) | (2 * v274)) ^ 0x8DLL));
  LODWORD(v274) = ((((v274 >> 1) | (v274 << 7)) ^ 0xFFFFFFBE) - 40) ^ 0xFFFFFFC4;
  LODWORD(v274) = v274 ^ ((v274 & v159 & 0xFE) >> 1);
  LOBYTE(v274) = *(STACK[0x22B8] + ((v274 - 87) ^ 0x60)) ^ (v274 - 2 * (v274 - 87) - 88) ^ 0xD9;
  LOBYTE(v287) = ~(*(STACK[0x2250] + (((v274 & 9 ^ 9) + (v274 & 9)) ^ 0xCE ^ ((((v274 & v220) >> v253) | (v274 << v266)) - 87))) ^ v287);
  LOBYTE(v287) = (v287 - ((2 * v287) & 0xEA) - 11) ^ v273;
  a42[3473] = ~(2 * v287) + v287;
  LODWORD(v287) = *(*v285 + (*v272 & 0x38F3A374));
  LODWORD(v272) = LODWORD(STACK[0x2210]) ^ LODWORD(STACK[0x2220]);
  v292 = -812407749 * ((-812407749 * ((v287 ^ (v163 + 462)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v287 ^ (v163 + 462)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v292) = *(v281 + (v292 >> 24)) ^ v163[462] ^ *(v283 + (v292 >> 24)) ^ *(v235 + (v292 >> 24)) ^ v292 ^ (-71 * ((-812407749 * ((-812407749 * ((v287 ^ (v163 + 462)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v287 ^ (v163 + 462)) & 0x7FFFFFFF)) >> 16))) >> 24));
  LOBYTE(v292) = v292 ^ ~*(STACK[0x2278] + (v292 ^ 0x65u));
  v293 = STACK[0x21F0];
  LOBYTE(v292) = *(STACK[0x21F0] + ((((v292 & 0x80) != 0) | (2 * v292)) ^ 0x53));
  LOBYTE(v292) = (v292 ^ (8 * v292 + 4 * ~v292 + 7) ^ 0x83) - 40;
  LODWORD(STACK[0x1FA8]) = v229 ^ 0x93D27FA9;
  LODWORD(STACK[0x1FB0]) = v271 ^ 0x9779FBEF;
  LODWORD(v292) = ((*(STACK[0x2268] + ((((((v292 & v159) >> 1) ^ v292) >> 3) | (32 * (((v292 & v159) >> 1) ^ v292))) ^ ((((v292 & v159) >> 1) & 0x2C ^ 0xAC) + (((v292 & v159) >> 1) & 0x2C)) ^ 0xF6)) ^ 0x20) + 96);
  v294 = -812407749 * ((-812407749 * ((v287 ^ (v163 + 478)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v287 ^ (v163 + 478)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v294) = *(v270 + ((v163[478] ^ v294 ^ *(v288 + (v294 >> 24)) ^ *(v290 + (v294 >> 24)) ^ (-109 * BYTE3(v294)) ^ *((v294 >> 24) + v289 + 2)) ^ 0x10u));
  LODWORD(v294) = v294 ^ (32 * v294 + 16 * ~v294 + 31) ^ 0xFFFFFF81;
  v295 = v294 ^ ((v294 & v159 & 0xFE) >> 1);
  LODWORD(STACK[0x22E0]) = v220 ^ 0x8CEC7C99;
  a42[3474] = (((v295 & v220) >> v253) | (v295 << v266)) ^ v273 ^ (((2 * (((v292 & v220) >> v271) | (v292 << v229))) & 0xEA) - (((v292 & v220) >> v271) | (v292 << v229)) + 10);
  LODWORD(v286) = a24[(~*(v291 + (((((35 - a42[3464]) & 0x80) != 0) | (2 * (35 - a42[3464]))) ^ 0xE3)) >> 1) & 0xF ^ 6];
  LODWORD(STACK[0x21D0]) = LODWORD(STACK[0x2248]) ^ (8 * LODWORD(STACK[0x2248])) ^ 0x5EE47CB5 ^ (v272 - 2062948967 - ((2 * v272) & 0xA13CB32));
  LOBYTE(v272) = *(v293 + (((((119 - v286) & 0x80) != 0) | (2 * (119 - v286))) ^ 0x3BLL));
  LOBYTE(v272) = 8 - a24[(3 - a24[((8 * v272 + 4 * ~v272 - 1) ^ v272) & 0xF ^ 3]) & 0xF];
  LODWORD(v286) = LODWORD(STACK[0x2230]) - 1678295469;
  LODWORD(STACK[0x1CE8]) = (LOBYTE(STACK[0x2230]) + 83) & 0x18 ^ 8 | (LOBYTE(STACK[0x2230]) + 83) & 0x18 ^ 0x10;
  v296 = v286 ^ 0x9BF73E53;
  LODWORD(STACK[0x1CE4]) = v286 ^ 0x83E72643;
  LODWORD(STACK[0x1E40]) = v286 ^ 0x9BF33A53;
  LODWORD(STACK[0x1D58]) = v286 ^ 0x13B73613;
  LODWORD(STACK[0x1C90]) = v286 ^ 0xBE72E43;
  LODWORD(STACK[0x1C88]) = v286 ^ 0x19951C11;
  LODWORD(STACK[0x22C8]) = LODWORD(STACK[0x2240]) - 541830608;
  LODWORD(STACK[0x22F0]) = LODWORD(STACK[0x2238]) ^ 0xBAD12783;
  LODWORD(STACK[0x2040]) = LODWORD(STACK[0x2228]) ^ 1;
  v297 = STACK[0x1210];
  STACK[0x1C00] = STACK[0x1210] + 327;
  STACK[0x1BF8] = v297 + 419;
  STACK[0x1BF0] = (a60 - 60293);
  STACK[0x2280] = v296;
  STACK[0x1BE8] = v296 << v266;
  STACK[0x1C50] = a25 + 2849;
  STACK[0x1C58] = a25 + 2848;
  STACK[0x1C10] = a25 + 2853;
  STACK[0x1C68] = a25 + 2857;
  STACK[0x1D08] = a25 + 2856;
  STACK[0x1C08] = a25 + 2845;
  STACK[0x1C48] = a25 + 2854;
  STACK[0x1C38] = a25 + 2847;
  STACK[0x1C70] = a25 + 2850;
  STACK[0x1C18] = a25 + 2846;
  STACK[0x1C28] = a25 + 2852;
  STACK[0x1C20] = a25 + 2858;
  STACK[0x1C60] = a25 + 2851;
  STACK[0x1C30] = a25 + 2855;
  STACK[0x1C40] = a25 + 2859;
  LODWORD(STACK[0x1FB8]) = -STACK[0x6C0];
  LODWORD(STACK[0x2208]) = -514129454;
  LODWORD(STACK[0x2248]) = -2122533581;
  LODWORD(STACK[0x2258]) = 963780751;
  LODWORD(v297) = LODWORD(STACK[0x1D40]) ^ 0x16B;
  LODWORD(STACK[0x22A0]) = v272 & 0xF;
  v298 = STACK[0x22F8];
  LODWORD(v295) = STACK[0x1F58];
  LODWORD(v163) = -812407749 * ((*(*STACK[0x22E8] + (*STACK[0x22D0] & 0x1F9D3120)) ^ a60) & (((v297 - 661311877) & 0x276AD15D) + 2147483314));
  v299 = -812407749 * (v163 ^ (v163 >> 16));
  *a60 = ~*a24 ^ *(*(&off_279CA5FD0 + v297 - 336) + (v299 >> 24) - 12) ^ *(*(&off_279CA5FD0 + (v297 ^ 0x169)) + (v299 >> 24)) ^ *(*(&off_279CA5FD0 + v297 - 167) + (v299 >> 24) - 4) ^ v299 ^ (51 * BYTE3(v299)) ^ 0xD2;
  LODWORD(STACK[0x20A8]) = 84534681;
  return (*(v298 + 8 * ((714 * ((((v295 ^ 0x8509E599) - 2062948967 - ((2 * (v295 ^ 0x8509E599)) & 0xA13CB32)) ^ 0x8509E599) < LODWORD(STACK[0x22A0]))) ^ v297)))(v298);
}

uint64_t sub_26AA6EAC0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X3>, int a5@<W5>, uint64_t a6@<X6>, _DWORD *a7@<X7>, unsigned int a8@<W8>)
{
  v14 = v10 ^ a2;
  v15 = (~(2 * (119 * (v10 ^ a2) - 87)) + 119 * (v10 ^ a2) - 87) ^ *(STACK[0x22B8] + ((a8 + 260) ^ 0x231 ^ (119 * (v10 ^ a2) - 87)));
  v16 = -812407749 * ((*(*v8 + (*a7 & a3)) ^ (v12 + v14)) & 0x7FFFFFFF);
  v17 = -812407749 * (v16 ^ HIWORD(v16));
  *(v12 + v14) = *(v11 + v14) ^ *(v9 + (v17 >> 24)) ^ *(a6 + (v17 >> 24)) ^ (~(2 * v15) + v15) ^ *(a4 + (v17 >> 24)) ^ v17 ^ (BYTE3(v17) * v13) ^ 0xB;
  return (*(a1 + 8 * ((57 * (((a2 + v14 - ((2 * v14 + 2) & a5) + 1) ^ (a2 - 9)) < 0x10)) ^ a8)))();
}

uint64_t sub_26AA6EC08(uint64_t a1, int a2, uint64_t a3, unint64_t a4, int a5, int a6, unint64_t a7, _DWORD *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, _DWORD *a49)
{
  STACK[0x1D30] = a4;
  STACK[0x1C78] = a7;
  STACK[0x1C80] = v51;
  LODWORD(STACK[0x1ED0]) = 0;
  v53 = (a5 ^ 0x24E98D24) + ((a5 ^ 0x24E98D24u) >> 12) - (((a5 ^ 0x24E98D24) + ((a5 ^ 0x24E98D24u) >> 12)) >> 7);
  v54 = 2 * (v52 ^ 0x357);
  LODWORD(STACK[0x2298]) = v54;
  LODWORD(STACK[0x2188]) = v53 ^ v54 ^ 0xF2CDE8EC;
  LODWORD(STACK[0x2180]) = (v53 + a2 - (a6 & (2 * v53))) ^ v50;
  v55 = STACK[0x18D0];
  v56 = *STACK[0x18D0];
  v57 = STACK[0x1758];
  v58 = *STACK[0x1758];
  v59 = *(*v49 + (*a8 & 0xD8A680B0));
  v60 = (-812407749 * ((v59 ^ STACK[0x1908]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1908]) & 0x7FFFFFFF)) >> 16);
  v61 = -812407749 * v60;
  v62 = (-812407749 * v60) >> 24;
  v63 = -1539637248 * v60;
  v64 = *(&off_279CA5FD0 + (v52 ^ 0x220u));
  v65 = *(&off_279CA5FD0 + (v52 ^ 0x26Cu)) - 8;
  v66 = *(&off_279CA5FD0 + (v52 ^ 0x298u)) - 8;
  LODWORD(STACK[0x2238]) = *(v64 + 4 * v62) ^ *STACK[0x1908] ^ *&v65[4 * v62] ^ *&v66[4 * v62 + 28] ^ v63 ^ v61 ^ (-451290709 * v62);
  v67 = (-812407749 * ((v59 ^ v57) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ v57) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2240]) = (-1539637248 * v67) ^ v58 ^ (-812407749 * v67) ^ *(v64 + 4 * ((-812407749 * v67) >> 24)) ^ *&v65[4 * ((-812407749 * v67) >> 24)] ^ (-451290709 * ((-812407749 * v67) >> 24)) ^ *&v66[4 * ((-812407749 * v67) >> 24) + 28];
  v68 = (-812407749 * ((v59 ^ v55) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ v55) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x22A0]) = (-1539637248 * v68) ^ v56 ^ (-812407749 * v68) ^ (-451290709 * ((-812407749 * v68) >> 24)) ^ *(v64 + 4 * ((-812407749 * v68) >> 24)) ^ *&v65[4 * ((-812407749 * v68) >> 24)] ^ *&v66[4 * ((-812407749 * v68) >> 24) + 28];
  v69 = STACK[0x16D0];
  v70 = *STACK[0x16D0];
  v71 = (-812407749 * ((v59 ^ STACK[0x1700]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1700]) & 0x7FFFFFFF)) >> 16);
  v72 = *(&off_279CA5FD0 + v52 - 525) - 12;
  v73 = *(&off_279CA5FD0 + (v52 ^ 0x23Fu)) - 8;
  v74 = *(&off_279CA5FD0 + v52 - 551) - 12;
  LODWORD(STACK[0x21B8]) = (-812407749 * v71) ^ (-1539637248 * v71) ^ *STACK[0x1700] ^ (566113201 * ((-812407749 * v71) >> 24)) ^ *&v72[4 * ((-812407749 * v71) >> 24)] ^ *&v73[4 * ((-812407749 * v71) >> 24) + 4] ^ *&v74[4 * ((-812407749 * v71) >> 24)];
  v75 = (-812407749 * ((v59 ^ STACK[0x1748]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1748]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2278]) = *&v72[4 * ((-812407749 * v75) >> 24)] ^ *STACK[0x1748] ^ *&v73[4 * ((-812407749 * v75) >> 24) + 4] ^ *&v74[4 * ((-812407749 * v75) >> 24)] ^ (-1539637248 * v75) ^ (-812407749 * v75) ^ (566113201 * ((-812407749 * v75) >> 24));
  v76 = STACK[0x1878];
  v77 = *STACK[0x1878];
  v78 = (-812407749 * ((v59 ^ STACK[0x18F0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x18F0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x21D8]) = *&v72[4 * ((-812407749 * v78) >> 24)] ^ *STACK[0x18F0] ^ (-1539637248 * v78) ^ (-812407749 * v78) ^ *&v73[4 * ((-812407749 * v78) >> 24) + 4] ^ *&v74[4 * ((-812407749 * v78) >> 24)] ^ (566113201 * ((-812407749 * v78) >> 24));
  v79 = STACK[0x1770];
  v80 = *STACK[0x1770];
  v81 = (-812407749 * ((v59 ^ v69) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ v69) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2230]) = (-1539637248 * v81) ^ v70 ^ (-812407749 * v81) ^ (566113201 * ((-812407749 * v81) >> 24)) ^ *&v72[4 * ((-812407749 * v81) >> 24)] ^ *&v73[4 * ((-812407749 * v81) >> 24) + 4] ^ *&v74[4 * ((-812407749 * v81) >> 24)];
  v82 = (-812407749 * ((v59 ^ v76) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ v76) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x21E0]) = (-1539637248 * v82) ^ v77 ^ (-812407749 * v82) ^ (566113201 * ((-812407749 * v82) >> 24)) ^ *&v72[4 * ((-812407749 * v82) >> 24)] ^ *&v73[4 * ((-812407749 * v82) >> 24) + 4] ^ *&v74[4 * ((-812407749 * v82) >> 24)];
  v83 = (-812407749 * ((v59 ^ v79) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ v79) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2228]) = *&v72[4 * ((-812407749 * v83) >> 24)] ^ v80 ^ *&v73[4 * ((-812407749 * v83) >> 24) + 4] ^ *&v74[4 * ((-812407749 * v83) >> 24)] ^ (-1539637248 * v83) ^ (-812407749 * v83) ^ (566113201 * ((-812407749 * v83) >> 24));
  v84 = (-812407749 * ((v59 ^ STACK[0x1720]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1720]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x21F8]) = *&v72[4 * ((-812407749 * v84) >> 24)] ^ *STACK[0x1720] ^ *&v73[4 * ((-812407749 * v84) >> 24) + 4] ^ (-1539637248 * v84) ^ (-812407749 * v84) ^ *&v74[4 * ((-812407749 * v84) >> 24)] ^ (566113201 * ((-812407749 * v84) >> 24));
  v85 = (-812407749 * ((v59 ^ STACK[0x17E0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x17E0]) & 0x7FFFFFFF)) >> 16);
  v86 = (-812407749 * v85) >> 24;
  v87 = *(&off_279CA5FD0 + v52 - 454) - 8;
  v88 = *(&off_279CA5FD0 + (v52 ^ 0x279u)) - 8;
  v89 = (-812407749 * v85) ^ (-1539637248 * v85) ^ *STACK[0x17E0];
  v90 = *(&off_279CA5FD0 + (v52 ^ 0x295u)) - 4;
  LODWORD(STACK[0x21C8]) = v89 ^ (595445781 * v86) ^ *&v87[4 * v86] ^ *&v88[4 * v86] ^ *&v90[4 * v86];
  v91 = (-812407749 * ((v59 ^ STACK[0x1690]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1690]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2210]) = (-812407749 * v91) ^ (-1539637248 * v91) ^ *STACK[0x1690] ^ (595445781 * ((-812407749 * v91) >> 24)) ^ *&v87[4 * ((-812407749 * v91) >> 24)] ^ *&v88[4 * ((-812407749 * v91) >> 24)] ^ *&v90[4 * ((-812407749 * v91) >> 24)];
  v92 = (-812407749 * ((v59 ^ STACK[0x1800]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1800]) & 0x7FFFFFFF)) >> 16);
  v93 = (-812407749 * v92) >> 24;
  LODWORD(v72) = *&v72[4 * v93] ^ *STACK[0x1800] ^ *&v73[4 * v93 + 4];
  v94 = STACK[0x15F0];
  LODWORD(v73) = *STACK[0x15F0];
  LODWORD(STACK[0x2220]) = v72 ^ *&v74[4 * v93] ^ (-1539637248 * v92) ^ (-812407749 * v92) ^ (566113201 * v93);
  v95 = (-812407749 * ((v59 ^ v94) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ v94) & 0x7FFFFFFF)) >> 16);
  v96 = STACK[0x1668];
  v97 = *STACK[0x1668];
  LODWORD(STACK[0x21A8]) = *&v87[4 * ((-812407749 * v95) >> 24)] ^ v73 ^ *&v88[4 * ((-812407749 * v95) >> 24)] ^ (-1539637248 * v95) ^ (-812407749 * v95) ^ *&v90[4 * ((-812407749 * v95) >> 24)] ^ (595445781 * ((-812407749 * v95) >> 24));
  v98 = (-812407749 * ((v59 ^ v96) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ v96) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x21B0]) = (-1539637248 * v98) ^ v97 ^ (-812407749 * v98) ^ (595445781 * ((-812407749 * v98) >> 24)) ^ *&v87[4 * ((-812407749 * v98) >> 24)] ^ *&v88[4 * ((-812407749 * v98) >> 24)] ^ *&v90[4 * ((-812407749 * v98) >> 24)];
  LODWORD(v72) = (-812407749 * ((v59 ^ STACK[0x1830]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1830]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v74) = (-812407749 * v72) >> 24;
  v99 = (-812407749 * v72) ^ (-1539637248 * v72) ^ *STACK[0x1830] ^ (595445781 * v74) ^ *&v87[4 * v74];
  LODWORD(v72) = *&v88[4 * v74] ^ *&v90[4 * v74];
  v100 = STACK[0x18B8];
  LODWORD(v74) = *STACK[0x18B8];
  LODWORD(STACK[0x21A0]) = v99 ^ v72;
  v101 = (-812407749 * ((v59 ^ v100) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ v100) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2170]) = *&v87[4 * ((-812407749 * v101) >> 24)] ^ v74 ^ *&v88[4 * ((-812407749 * v101) >> 24)] ^ *&v90[4 * ((-812407749 * v101) >> 24)] ^ (-1539637248 * v101) ^ (-812407749 * v101) ^ (595445781 * ((-812407749 * v101) >> 24));
  v102 = (-812407749 * ((v59 ^ STACK[0x17F0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x17F0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v72) = *STACK[0x17F0] ^ (-1539637248 * v102);
  v102 *= -812407749;
  LODWORD(STACK[0x21C0]) = *&v87[4 * HIBYTE(v102)] ^ v72 ^ v102 ^ *&v88[4 * HIBYTE(v102)] ^ *&v90[4 * HIBYTE(v102)] ^ (595445781 * HIBYTE(v102));
  v103 = (-812407749 * ((v59 ^ STACK[0x16C0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x16C0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v72) = (-1539637248 * v103) ^ *STACK[0x16C0];
  v103 *= -812407749;
  LODWORD(STACK[0x2178]) = v72 ^ v103 ^ (595445781 * HIBYTE(v103)) ^ *&v87[4 * HIBYTE(v103)] ^ *&v88[4 * HIBYTE(v103)] ^ *&v90[4 * HIBYTE(v103)];
  v104 = (-812407749 * ((v59 ^ STACK[0x1660]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1660]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2198]) = (-812407749 * v104) ^ (-1539637248 * v104) ^ *STACK[0x1660] ^ (595445781 * ((-812407749 * v104) >> 24)) ^ *&v87[4 * ((-812407749 * v104) >> 24)] ^ *&v88[4 * ((-812407749 * v104) >> 24)] ^ *&v90[4 * ((-812407749 * v104) >> 24)];
  v105 = (-812407749 * ((v59 ^ STACK[0x15E8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x15E8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2150]) = *&v87[4 * ((-812407749 * v105) >> 24)] ^ *STACK[0x15E8] ^ *&v88[4 * ((-812407749 * v105) >> 24)] ^ *&v90[4 * ((-812407749 * v105) >> 24)] ^ (-1539637248 * v105) ^ (-812407749 * v105) ^ (595445781 * ((-812407749 * v105) >> 24));
  v106 = (-812407749 * ((v59 ^ STACK[0x17A0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x17A0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v72) = *STACK[0x17A0] ^ (-1539637248 * v106);
  v106 *= -812407749;
  LODWORD(STACK[0x2190]) = *&v87[4 * HIBYTE(v106)] ^ v72 ^ v106 ^ *&v88[4 * HIBYTE(v106)] ^ *&v90[4 * HIBYTE(v106)] ^ (595445781 * HIBYTE(v106));
  v107 = (-812407749 * ((v59 ^ STACK[0x16F0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x16F0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v72) = (-1539637248 * v107) ^ *STACK[0x16F0];
  v107 *= -812407749;
  LODWORD(STACK[0x2130]) = v72 ^ v107 ^ (595445781 * HIBYTE(v107)) ^ *&v87[4 * HIBYTE(v107)] ^ *&v88[4 * HIBYTE(v107)] ^ *&v90[4 * HIBYTE(v107)];
  v108 = (-812407749 * ((v59 ^ STACK[0x17A8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x17A8]) & 0x7FFFFFFF)) >> 16);
  v109 = (-812407749 * v108) ^ (-1539637248 * v108) ^ *STACK[0x17A8] ^ (595445781 * ((-812407749 * v108) >> 24)) ^ *&v87[4 * ((-812407749 * v108) >> 24)] ^ *&v88[4 * ((-812407749 * v108) >> 24)] ^ *&v90[4 * ((-812407749 * v108) >> 24)];
  LODWORD(v72) = (-812407749 * ((v59 ^ STACK[0x1710]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1710]) & 0x7FFFFFFF)) >> 16);
  v110 = (-812407749 * v72) >> 24;
  LODWORD(v74) = *&v87[4 * v110] ^ *STACK[0x1710] ^ *&v88[4 * v110] ^ *&v90[4 * v110];
  LODWORD(v72) = (-1539637248 * v72) ^ (-812407749 * v72) ^ (595445781 * v110);
  v111 = STACK[0x1680];
  v112 = (-812407749 * ((v59 ^ v111) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ v111) & 0x7FFFFFFF)) >> 16);
  v113 = -812407749 * v112;
  LODWORD(v55) = *(v64 + 4 * ((-812407749 * v112) >> 24));
  LODWORD(v57) = *&v65[4 * ((-812407749 * v112) >> 24)];
  LODWORD(STACK[0x2168]) = v74 ^ v72;
  v114 = v57 ^ v55 ^ *&v66[4 * HIBYTE(v113) + 28] ^ (-451290709 * HIBYTE(v113));
  v115 = (595445781 * HIBYTE(v113)) ^ *&v87[4 * HIBYTE(v113)] ^ *&v88[4 * HIBYTE(v113)] ^ *&v90[4 * HIBYTE(v113)];
  v116 = (-812407749 * ((v59 ^ STACK[0x1760]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1760]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v57) = -1539637248 * v116;
  v116 *= -812407749;
  LODWORD(STACK[0x2148]) = v57 ^ *STACK[0x1760] ^ v116 ^ (595445781 * HIBYTE(v116)) ^ *&v87[4 * HIBYTE(v116)] ^ *&v88[4 * HIBYTE(v116)] ^ *&v90[4 * HIBYTE(v116)];
  v109 *= -737505385;
  LODWORD(STACK[0x2160]) = v109;
  if ((v109 & 0x4040000) != 0)
  {
    v117 = v115;
  }

  else
  {
    v117 = v114;
  }

  LODWORD(STACK[0x2110]) = (-1539637248 * v112) ^ *v111 ^ v113 ^ v117;
  v118 = (-812407749 * ((v59 ^ STACK[0x1678]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1678]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2108]) = (-812407749 * v118) ^ (-1539637248 * v118) ^ *STACK[0x1678] ^ (-451290709 * ((-812407749 * v118) >> 24)) ^ *(v64 + 4 * ((-812407749 * v118) >> 24)) ^ *&v65[4 * ((-812407749 * v118) >> 24)] ^ *&v66[4 * ((-812407749 * v118) >> 24) + 28];
  v119 = (-812407749 * ((v59 ^ STACK[0x1670]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1670]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2138]) = *(v64 + 4 * ((-812407749 * v119) >> 24)) ^ *STACK[0x1670] ^ *&v65[4 * ((-812407749 * v119) >> 24)] ^ *&v66[4 * ((-812407749 * v119) >> 24) + 28] ^ (-1539637248 * v119) ^ (-812407749 * v119) ^ (-451290709 * ((-812407749 * v119) >> 24));
  v120 = (-812407749 * ((v59 ^ STACK[0x18A0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x18A0]) & 0x7FFFFFFF)) >> 16);
  v121 = (-1539637248 * v120) ^ *STACK[0x18A0];
  v120 *= -812407749;
  v122 = *(&off_279CA5FD0 + v52 - 511);
  v123 = *(&off_279CA5FD0 + (v52 ^ 0x2F9u));
  v124 = *(&off_279CA5FD0 + (v52 ^ 0x2F0u)) - 8;
  LODWORD(STACK[0x2128]) = v121 ^ v120 ^ (1091443017 * HIBYTE(v120)) ^ *(v122 + 4 * HIBYTE(v120)) ^ *(v123 + 4 * (HIBYTE(v120) + 2)) ^ *&v124[4 * HIBYTE(v120)];
  v125 = (-812407749 * ((v59 ^ STACK[0x1880]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1880]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2100]) = (-812407749 * v125) ^ (-1539637248 * v125) ^ *STACK[0x1880] ^ (1091443017 * ((-812407749 * v125) >> 24)) ^ *(v122 + 4 * ((-812407749 * v125) >> 24)) ^ *(v123 + 4 * (((-812407749 * v125) >> 24) + 2)) ^ *&v124[4 * ((-812407749 * v125) >> 24)];
  v126 = (-812407749 * ((v59 ^ STACK[0x1C00]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1C00]) & 0x7FFFFFFF)) >> 16);
  v127 = (-812407749 * v126) >> 24;
  v128 = (-812407749 * v126) ^ (-1539637248 * v126) ^ *STACK[0x1C00] ^ (-140096219 * v127);
  v129 = *(&off_279CA5FD0 + (v52 ^ 0x2E0u)) - 4;
  v130 = *(&off_279CA5FD0 + (v52 ^ 0x290u)) - 12;
  v131 = *(&off_279CA5FD0 + (v52 ^ 0x277u));
  LODWORD(STACK[0x2120]) = v128 ^ *&v129[4 * v127] ^ *&v130[4 * v127] ^ *(v131 + 4 * v127);
  v132 = (-812407749 * ((v59 ^ STACK[0x1828]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1828]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2118]) = *(v122 + 4 * ((-812407749 * v132) >> 24)) ^ *STACK[0x1828] ^ *(v123 + 4 * (((-812407749 * v132) >> 24) + 2)) ^ *&v124[4 * ((-812407749 * v132) >> 24)] ^ (-1539637248 * v132) ^ (-812407749 * v132) ^ (1091443017 * ((-812407749 * v132) >> 24));
  v133 = (-812407749 * ((v59 ^ STACK[0x17E8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x17E8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x20F8]) = *(v122 + 4 * ((-812407749 * v133) >> 24)) ^ *STACK[0x17E8] ^ *(v123 + 4 * (((-812407749 * v133) >> 24) + 2)) ^ *&v124[4 * ((-812407749 * v133) >> 24)] ^ (-1539637248 * v133) ^ (-812407749 * v133) ^ (1091443017 * ((-812407749 * v133) >> 24));
  v134 = (-812407749 * ((v59 ^ STACK[0x1688]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1688]) & 0x7FFFFFFF)) >> 16);
  v135 = *(&off_279CA5FD0 + (v52 ^ 0x29Eu)) - 8;
  v136 = *(&off_279CA5FD0 + (v52 ^ 0x235u)) - 4;
  v137 = *(&off_279CA5FD0 + (v52 ^ 0x299u)) - 8;
  LODWORD(STACK[0x20E8]) = (-812407749 * v134) ^ (-1539637248 * v134) ^ *STACK[0x1688] ^ (1531516889 * ((-812407749 * v134) >> 24)) ^ *&v135[4 * ((-812407749 * v134) >> 24)] ^ *&v136[4 * ((-812407749 * v134) >> 24)] ^ *&v137[4 * ((-812407749 * v134) >> 24) + 8];
  v138 = (-812407749 * ((v59 ^ STACK[0x1730]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1730]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x20D8]) = (-812407749 * v138) ^ (-1539637248 * v138) ^ *STACK[0x1730] ^ (1531516889 * ((-812407749 * v138) >> 24)) ^ *&v135[4 * ((-812407749 * v138) >> 24)] ^ *&v136[4 * ((-812407749 * v138) >> 24)] ^ *&v137[4 * ((-812407749 * v138) >> 24) + 8];
  v139 = (-812407749 * ((v59 ^ STACK[0x1860]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1860]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x20F0]) = *&v135[4 * ((-812407749 * v139) >> 24)] ^ *STACK[0x1860] ^ *&v136[4 * ((-812407749 * v139) >> 24)] ^ *&v137[4 * ((-812407749 * v139) >> 24) + 8] ^ (-1539637248 * v139) ^ (-812407749 * v139) ^ (1531516889 * ((-812407749 * v139) >> 24));
  v140 = (-812407749 * ((v59 ^ STACK[0x18E0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x18E0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x20E0]) = *&v135[4 * ((-812407749 * v140) >> 24)] ^ *STACK[0x18E0] ^ *&v136[4 * ((-812407749 * v140) >> 24)] ^ *&v137[4 * ((-812407749 * v140) >> 24) + 8] ^ (-1539637248 * v140) ^ (-812407749 * v140) ^ (1531516889 * ((-812407749 * v140) >> 24));
  v141 = (-812407749 * ((v59 ^ STACK[0x16D8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x16D8]) & 0x7FFFFFFF)) >> 16);
  v142 = (-1539637248 * v141) ^ *STACK[0x16D8];
  v141 *= -812407749;
  LODWORD(STACK[0x20D0]) = v142 ^ v141 ^ (1531516889 * HIBYTE(v141)) ^ *&v135[4 * HIBYTE(v141)] ^ *&v136[4 * HIBYTE(v141)] ^ *&v137[4 * HIBYTE(v141) + 8];
  v143 = (-812407749 * ((v59 ^ STACK[0x1818]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1818]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x20C8]) = (-812407749 * v143) ^ (-1539637248 * v143) ^ *STACK[0x1818] ^ (1531516889 * ((-812407749 * v143) >> 24)) ^ *&v135[4 * ((-812407749 * v143) >> 24)] ^ *&v136[4 * ((-812407749 * v143) >> 24)] ^ *&v137[4 * ((-812407749 * v143) >> 24) + 8];
  v144 = (-812407749 * ((v59 ^ STACK[0x1788]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1788]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2078]) = *&v135[4 * ((-812407749 * v144) >> 24)] ^ *STACK[0x1788] ^ *&v136[4 * ((-812407749 * v144) >> 24)] ^ *&v137[4 * ((-812407749 * v144) >> 24) + 8] ^ (-1539637248 * v144) ^ (-812407749 * v144) ^ (1531516889 * ((-812407749 * v144) >> 24));
  v145 = (-812407749 * ((v59 ^ STACK[0x17C8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x17C8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x20B8]) = *&v135[4 * ((-812407749 * v145) >> 24)] ^ *STACK[0x17C8] ^ *&v136[4 * ((-812407749 * v145) >> 24)] ^ (-1539637248 * v145) ^ (-812407749 * v145) ^ *&v137[4 * ((-812407749 * v145) >> 24) + 8] ^ (1531516889 * ((-812407749 * v145) >> 24));
  v146 = (-812407749 * ((v59 ^ STACK[0x17F8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x17F8]) & 0x7FFFFFFF)) >> 16);
  v147 = (-1539637248 * v146) ^ *STACK[0x17F8];
  v146 *= -812407749;
  LODWORD(STACK[0x20B0]) = v147 ^ v146 ^ (1531516889 * HIBYTE(v146)) ^ *&v135[4 * HIBYTE(v146)] ^ *&v136[4 * HIBYTE(v146)] ^ *&v137[4 * HIBYTE(v146) + 8];
  v148 = (-812407749 * ((v59 ^ STACK[0x1658]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1658]) & 0x7FFFFFFF)) >> 16);
  v149 = (-812407749 * v148) >> 24;
  v150 = *(&off_279CA5FD0 + v52 - 458) - 8;
  v151 = *(&off_279CA5FD0 + (v52 ^ 0x2C4u)) - 12;
  v152 = (-812407749 * v148) ^ (-1539637248 * v148) ^ *STACK[0x1658] ^ (-261162719 * v149) ^ *&v150[4 * v149] ^ *&v151[4 * v149];
  v153 = v149 + 4;
  v154 = *(&off_279CA5FD0 + (v52 ^ 0x2C6u)) - 12;
  LODWORD(STACK[0x20C0]) = v152 ^ *&v154[4 * v153];
  v155 = (-812407749 * ((v59 ^ STACK[0x16A8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x16A8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2068]) = *&v129[4 * ((-812407749 * v155) >> 24)] ^ *STACK[0x16A8] ^ *&v130[4 * ((-812407749 * v155) >> 24)] ^ *(v131 + 4 * ((-812407749 * v155) >> 24)) ^ (-1539637248 * v155) ^ (-812407749 * v155) ^ (-140096219 * ((-812407749 * v155) >> 24));
  LODWORD(v130) = (-812407749 * ((v59 ^ a49) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ a49) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2088]) = *&v150[4 * ((-812407749 * v130) >> 24)] ^ *a49 ^ *&v151[4 * ((-812407749 * v130) >> 24)] ^ *&v154[4 * ((-812407749 * v130) >> 24) + 16] ^ (-1539637248 * v130) ^ (-812407749 * v130) ^ (-261162719 * ((-812407749 * v130) >> 24));
  LODWORD(v130) = (-812407749 * ((v59 ^ STACK[0x18B0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x18B0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v131) = (-1539637248 * v130) ^ *STACK[0x18B0];
  LODWORD(v130) = -812407749 * v130;
  LODWORD(STACK[0x20A0]) = v131 ^ v130 ^ *&v150[4 * (v130 >> 24)] ^ *&v151[4 * (v130 >> 24)] ^ (-261162719 * (v130 >> 24)) ^ *&v154[4 * (v130 >> 24) + 16];
  LODWORD(v130) = (-812407749 * ((v59 ^ STACK[0x1808]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1808]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v131) = (-1539637248 * v130) ^ *STACK[0x1808];
  LODWORD(v130) = -812407749 * v130;
  LODWORD(STACK[0x2098]) = v131 ^ v130 ^ (-261162719 * (v130 >> 24)) ^ *&v150[4 * (v130 >> 24)] ^ *&v151[4 * (v130 >> 24)] ^ *&v154[4 * (v130 >> 24) + 16];
  LODWORD(v130) = (-812407749 * ((v59 ^ STACK[0x16B0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x16B0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2090]) = *&v150[4 * ((-812407749 * v130) >> 24)] ^ *STACK[0x16B0] ^ *&v151[4 * ((-812407749 * v130) >> 24)] ^ *&v154[4 * ((-812407749 * v130) >> 24) + 16] ^ (-1539637248 * v130) ^ (-812407749 * v130) ^ (-261162719 * ((-812407749 * v130) >> 24));
  LODWORD(v130) = (-812407749 * ((v59 ^ STACK[0x18C8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x18C8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2070]) = *&v150[4 * ((-812407749 * v130) >> 24)] ^ *STACK[0x18C8] ^ *&v151[4 * ((-812407749 * v130) >> 24)] ^ *&v154[4 * ((-812407749 * v130) >> 24) + 16] ^ (-1539637248 * v130) ^ (-812407749 * v130) ^ (-261162719 * ((-812407749 * v130) >> 24));
  LODWORD(v130) = (-812407749 * ((v59 ^ STACK[0x1868]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1868]) & 0x7FFFFFFF)) >> 16);
  v156 = (-812407749 * v130) >> 24;
  v157 = *(&off_279CA5FD0 + v52 - 571) - 12;
  v158 = *(&off_279CA5FD0 + (v52 ^ 0x289u)) - 12;
  LODWORD(v129) = (-812407749 * v130) ^ (-1539637248 * v130) ^ *STACK[0x1868] ^ (-684504187 * v156) ^ *&v157[4 * v156] ^ *&v158[4 * v156 + 16];
  v159 = *(&off_279CA5FD0 + (v52 ^ 0x237u)) - 8;
  LODWORD(STACK[0x2048]) = v129 ^ *&v159[4 * v156 + 8];
  v160 = (-812407749 * ((v59 ^ STACK[0x16B8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x16B8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2080]) = (-812407749 * v160) ^ (-1539637248 * v160) ^ *STACK[0x16B8] ^ (-684504187 * ((-812407749 * v160) >> 24)) ^ *&v157[4 * ((-812407749 * v160) >> 24)] ^ *&v158[4 * ((-812407749 * v160) >> 24) + 16] ^ *&v159[4 * ((-812407749 * v160) >> 24) + 8];
  v161 = (-812407749 * ((v59 ^ STACK[0x17C0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x17C0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2060]) = *&v135[4 * ((-812407749 * v161) >> 24)] ^ *STACK[0x17C0] ^ *&v136[4 * ((-812407749 * v161) >> 24)] ^ *&v137[4 * ((-812407749 * v161) >> 24) + 8] ^ (-1539637248 * v161) ^ (-812407749 * v161) ^ (1531516889 * ((-812407749 * v161) >> 24));
  v162 = (-812407749 * ((v59 ^ STACK[0x18C0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x18C0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = *STACK[0x18C0] ^ (-1539637248 * v162);
  v162 *= -812407749;
  LODWORD(STACK[0x2058]) = *&v150[4 * HIBYTE(v162)] ^ v129 ^ v162 ^ *&v151[4 * HIBYTE(v162)] ^ *&v154[4 * HIBYTE(v162) + 16] ^ (-261162719 * HIBYTE(v162));
  v163 = (-812407749 * ((v59 ^ STACK[0x18E8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x18E8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-1539637248 * v163) ^ *STACK[0x18E8];
  v163 *= -812407749;
  LODWORD(STACK[0x2028]) = v129 ^ v163 ^ (-261162719 * HIBYTE(v163)) ^ *&v150[4 * HIBYTE(v163)] ^ *&v151[4 * HIBYTE(v163)] ^ *&v154[4 * HIBYTE(v163) + 16];
  v164 = (-812407749 * ((v59 ^ STACK[0x1778]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1778]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-812407749 * v164) >> 24;
  v165 = STACK[0x17B8];
  v166 = (-812407749 * ((v59 ^ v165) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ v165) & 0x7FFFFFFF)) >> 16);
  v167 = (-812407749 * v166) >> 24;
  LODWORD(v137) = *&v137[4 * v167 + 8];
  LODWORD(STACK[0x2038]) = (-812407749 * v164) ^ (-1539637248 * v164) ^ *STACK[0x1778] ^ (-261162719 * v129) ^ *&v150[4 * v129] ^ *&v151[4 * v129] ^ *&v154[4 * (v129 + 4)];
  v168 = *&v135[4 * v167] ^ *v165 ^ *&v136[4 * v167] ^ v137 ^ (-1539637248 * v166) ^ (-812407749 * v166) ^ (1531516889 * v167);
  LODWORD(STACK[0x1F98]) = v168;
  v169 = (-812407749 * ((v59 ^ STACK[0x1750]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1750]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2030]) = *&v150[4 * ((-812407749 * v169) >> 24)] ^ *STACK[0x1750] ^ *&v151[4 * ((-812407749 * v169) >> 24)] ^ *&v154[4 * ((-812407749 * v169) >> 24) + 16] ^ (-1539637248 * v169) ^ (-812407749 * v169) ^ (-261162719 * ((-812407749 * v169) >> 24));
  v170 = (-812407749 * ((v59 ^ STACK[0x18D8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x18D8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-1539637248 * v170) ^ *STACK[0x18D8];
  v170 *= -812407749;
  LODWORD(STACK[0x2018]) = v129 ^ v170 ^ *&v150[4 * HIBYTE(v170)] ^ *&v151[4 * HIBYTE(v170)] ^ (-261162719 * HIBYTE(v170)) ^ *&v154[4 * HIBYTE(v170) + 16];
  v171 = (-812407749 * ((v59 ^ STACK[0x1848]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1848]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-1539637248 * v171) ^ *STACK[0x1848];
  v171 *= -812407749;
  LODWORD(STACK[0x1FE8]) = v129 ^ v171 ^ (-261162719 * HIBYTE(v171)) ^ *&v150[4 * HIBYTE(v171)] ^ *&v151[4 * HIBYTE(v171)] ^ *&v154[4 * HIBYTE(v171) + 16];
  v172 = (-812407749 * ((v59 ^ STACK[0x1898]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1898]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2020]) = *&v150[4 * ((-812407749 * v172) >> 24)] ^ *STACK[0x1898] ^ *&v151[4 * ((-812407749 * v172) >> 24)] ^ *&v154[4 * ((-812407749 * v172) >> 24) + 16] ^ (-1539637248 * v172) ^ (-812407749 * v172) ^ (-261162719 * ((-812407749 * v172) >> 24));
  v173 = (-812407749 * ((v59 ^ STACK[0x1640]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1640]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2010]) = *&v150[4 * ((-812407749 * v173) >> 24)] ^ *STACK[0x1640] ^ *&v151[4 * ((-812407749 * v173) >> 24)] ^ (-1539637248 * v173) ^ (-812407749 * v173) ^ *&v154[4 * ((-812407749 * v173) >> 24) + 16] ^ (-261162719 * ((-812407749 * v173) >> 24));
  v174 = (-812407749 * ((v59 ^ STACK[0x1718]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1718]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-1539637248 * v174) ^ *STACK[0x1718];
  v174 *= -812407749;
  LODWORD(STACK[0x2008]) = v129 ^ v174 ^ (-261162719 * HIBYTE(v174)) ^ *&v150[4 * HIBYTE(v174)] ^ *&v151[4 * HIBYTE(v174)] ^ *&v154[4 * HIBYTE(v174) + 16];
  v175 = (-812407749 * ((v59 ^ STACK[0x17D8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x17D8]) & 0x7FFFFFFF)) >> 16);
  v176 = *(&off_279CA5FD0 + (v52 ^ 0x2EBu));
  v177 = *(&off_279CA5FD0 + v52 - 565) - 12;
  v178 = *(&off_279CA5FD0 + v52 - 412) - 4;
  LODWORD(STACK[0x1FC8]) = (-812407749 * v175) ^ (-1539637248 * v175) ^ *STACK[0x17D8] ^ (-1957175533 * ((-812407749 * v175) >> 24)) ^ *(v176 + 4 * ((-812407749 * v175) >> 24)) ^ *&v177[4 * ((-812407749 * v175) >> 24)] ^ *&v178[4 * ((-812407749 * v175) >> 24)];
  v179 = (-812407749 * ((v59 ^ STACK[0x1738]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1738]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1FE0]) = *(v176 + 4 * ((-812407749 * v179) >> 24)) ^ *STACK[0x1738] ^ *&v177[4 * ((-812407749 * v179) >> 24)] ^ *&v178[4 * ((-812407749 * v179) >> 24)] ^ (-1539637248 * v179) ^ (-812407749 * v179) ^ (-1957175533 * ((-812407749 * v179) >> 24));
  v180 = (-812407749 * ((v59 ^ STACK[0x1728]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1728]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2050]) = (-1539637248 * v180) ^ *STACK[0x1728] ^ (-812407749 * v180) ^ *&v150[4 * ((-812407749 * v180) >> 24)] ^ *&v151[4 * ((-812407749 * v180) >> 24)] ^ (-261162719 * ((-812407749 * v180) >> 24)) ^ *&v154[4 * ((-812407749 * v180) >> 24) + 16];
  v181 = (-812407749 * ((v59 ^ STACK[0x1890]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1890]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-1539637248 * v181) ^ *STACK[0x1890];
  v181 *= -812407749;
  LODWORD(STACK[0x1FD0]) = v129 ^ v181 ^ (-1957175533 * HIBYTE(v181)) ^ *(v176 + 4 * HIBYTE(v181)) ^ *&v177[4 * HIBYTE(v181)] ^ *&v178[4 * HIBYTE(v181)];
  v182 = (-812407749 * ((v59 ^ STACK[0x1698]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1698]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1FF0]) = *(v176 + 4 * ((-812407749 * v182) >> 24)) ^ *STACK[0x1698] ^ *&v177[4 * ((-812407749 * v182) >> 24)] ^ *&v178[4 * ((-812407749 * v182) >> 24)] ^ (-1539637248 * v182) ^ (-812407749 * v182) ^ (-1957175533 * ((-812407749 * v182) >> 24));
  v183 = (-812407749 * ((v59 ^ STACK[0x16E8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x16E8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1FA0]) = *(v176 + 4 * ((-812407749 * v183) >> 24)) ^ *STACK[0x16E8] ^ *&v177[4 * ((-812407749 * v183) >> 24)] ^ *&v178[4 * ((-812407749 * v183) >> 24)] ^ (-1539637248 * v183) ^ (-812407749 * v183) ^ (-1957175533 * ((-812407749 * v183) >> 24));
  v184 = (-812407749 * ((v59 ^ STACK[0x1648]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1648]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1FD8]) = (-812407749 * v184) ^ (-1539637248 * v184) ^ *STACK[0x1648] ^ (-1957175533 * ((-812407749 * v184) >> 24)) ^ *(v176 + 4 * ((-812407749 * v184) >> 24)) ^ *&v177[4 * ((-812407749 * v184) >> 24)] ^ *&v178[4 * ((-812407749 * v184) >> 24)];
  v185 = (-812407749 * ((v59 ^ STACK[0x1638]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1638]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1F78]) = (-812407749 * v185) ^ (-1539637248 * v185) ^ *STACK[0x1638] ^ (-1957175533 * ((-812407749 * v185) >> 24)) ^ *(v176 + 4 * ((-812407749 * v185) >> 24)) ^ *&v177[4 * ((-812407749 * v185) >> 24)] ^ *&v178[4 * ((-812407749 * v185) >> 24)];
  v186 = (-812407749 * ((v59 ^ STACK[0x1650]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1650]) & 0x7FFFFFFF)) >> 16);
  v187 = (v168 & 0xD1933DAF) - 737505385 * (*(v176 + 4 * ((-812407749 * v186) >> 24)) ^ *STACK[0x1650] ^ *&v177[4 * ((-812407749 * v186) >> 24)] ^ *&v178[4 * ((-812407749 * v186) >> 24)] ^ (-1539637248 * v186) ^ (-812407749 * v186) ^ (-1957175533 * ((-812407749 * v186) >> 24))) + (v168 & 0xD1933DAF ^ 0xD1933DAF);
  v188 = (-812407749 * ((v59 ^ STACK[0x16F8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x16F8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-1539637248 * v188) ^ *STACK[0x16F8];
  v188 *= -812407749;
  LODWORD(STACK[0x1FC0]) = v129 ^ v188 ^ (-1957175533 * HIBYTE(v188)) ^ *(v176 + 4 * HIBYTE(v188)) ^ *&v177[4 * HIBYTE(v188)] ^ *&v178[4 * HIBYTE(v188)];
  v189 = (-812407749 * ((v59 ^ STACK[0x1850]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1850]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1F70]) = (-812407749 * v189) ^ (-1539637248 * v189) ^ *STACK[0x1850] ^ (-1957175533 * ((-812407749 * v189) >> 24)) ^ *(v176 + 4 * ((-812407749 * v189) >> 24)) ^ *&v177[4 * ((-812407749 * v189) >> 24)] ^ *&v178[4 * ((-812407749 * v189) >> 24)];
  v190 = (-812407749 * ((v59 ^ STACK[0x1768]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1768]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1F90]) = *(v176 + 4 * ((-812407749 * v190) >> 24)) ^ *STACK[0x1768] ^ *&v177[4 * ((-812407749 * v190) >> 24)] ^ *&v178[4 * ((-812407749 * v190) >> 24)] ^ (-1539637248 * v190) ^ (-812407749 * v190) ^ (-1957175533 * ((-812407749 * v190) >> 24));
  v191 = (-812407749 * ((v59 ^ STACK[0x16A0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x16A0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1F60]) = *(v176 + 4 * ((-812407749 * v191) >> 24)) ^ *STACK[0x16A0] ^ *&v177[4 * ((-812407749 * v191) >> 24)] ^ *&v178[4 * ((-812407749 * v191) >> 24)] ^ (-1539637248 * v191) ^ (-812407749 * v191) ^ (-1957175533 * ((-812407749 * v191) >> 24));
  v192 = (-812407749 * ((v59 ^ STACK[0x1810]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1810]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1F68]) = (-812407749 * v192) ^ (-1539637248 * v192) ^ *STACK[0x1810] ^ (-1957175533 * ((-812407749 * v192) >> 24)) ^ *(v176 + 4 * ((-812407749 * v192) >> 24)) ^ *&v177[4 * ((-812407749 * v192) >> 24)] ^ *&v178[4 * ((-812407749 * v192) >> 24)];
  v193 = (-812407749 * ((v59 ^ STACK[0x17D0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x17D0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-1539637248 * v193) ^ *STACK[0x17D0];
  v193 *= -812407749;
  LODWORD(STACK[0x1F80]) = v129 ^ v193 ^ (-1957175533 * HIBYTE(v193)) ^ *(v176 + 4 * HIBYTE(v193)) ^ *&v177[4 * HIBYTE(v193)] ^ *&v178[4 * HIBYTE(v193)];
  v194 = (-812407749 * ((v59 ^ STACK[0x1BF8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1BF8]) & 0x7FFFFFFF)) >> 16);
  v195 = *(v176 + 4 * ((-812407749 * v194) >> 24)) ^ *STACK[0x1BF8] ^ *&v177[4 * ((-812407749 * v194) >> 24)] ^ *&v178[4 * ((-812407749 * v194) >> 24)] ^ (-1539637248 * v194) ^ (-812407749 * v194) ^ (-1957175533 * ((-812407749 * v194) >> 24));
  v196 = (-812407749 * ((v59 ^ STACK[0x1820]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1820]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-1539637248 * v196) ^ *STACK[0x1820];
  v196 *= -812407749;
  v197 = *(&off_279CA5FD0 + v52 - 435) - 12;
  v198 = *(&off_279CA5FD0 + (v52 ^ 0x26Du)) - 8;
  v199 = *(&off_279CA5FD0 + (v52 ^ 0x2D4u)) - 8;
  v200 = v129 ^ v196 ^ (1310927943 * HIBYTE(v196)) ^ *&v197[4 * HIBYTE(v196)] ^ *&v198[4 * HIBYTE(v196) + 12] ^ *&v199[4 * HIBYTE(v196)];
  v201 = (-812407749 * ((v59 ^ STACK[0x18A8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x18A8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-1539637248 * v201) ^ *STACK[0x18A8];
  v201 *= -812407749;
  LODWORD(v177) = v129 ^ v201 ^ (-1957175533 * HIBYTE(v201)) ^ *(v176 + 4 * HIBYTE(v201)) ^ *&v177[4 * HIBYTE(v201)] ^ *&v178[4 * HIBYTE(v201)];
  v202 = (-812407749 * ((v59 ^ STACK[0x1780]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1780]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-1539637248 * v202) ^ *STACK[0x1780];
  v202 *= -812407749;
  v203 = v129 ^ v202 ^ (1310927943 * HIBYTE(v202)) ^ *&v197[4 * HIBYTE(v202)] ^ *&v198[4 * HIBYTE(v202) + 12] ^ *&v199[4 * HIBYTE(v202)];
  v204 = (-812407749 * ((v59 ^ STACK[0x1740]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1740]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1F48]) = *&v197[4 * ((-812407749 * v204) >> 24)] ^ *STACK[0x1740] ^ *&v198[4 * ((-812407749 * v204) >> 24) + 12] ^ *&v199[4 * ((-812407749 * v204) >> 24)] ^ (-1539637248 * v204) ^ (-812407749 * v204) ^ (1310927943 * ((-812407749 * v204) >> 24));
  v205 = (-812407749 * ((v59 ^ STACK[0x1840]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1840]) & 0x7FFFFFFF)) >> 16);
  v206 = *&v197[4 * ((-812407749 * v205) >> 24)] ^ *STACK[0x1840] ^ *&v198[4 * ((-812407749 * v205) >> 24) + 12] ^ *&v199[4 * ((-812407749 * v205) >> 24)] ^ (-1539637248 * v205) ^ (-812407749 * v205) ^ (1310927943 * ((-812407749 * v205) >> 24));
  v207 = (-812407749 * ((v59 ^ STACK[0x1708]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1708]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-1539637248 * v207) ^ *STACK[0x1708];
  v207 *= -812407749;
  LODWORD(STACK[0x1F40]) = v129 ^ v207 ^ (1310927943 * HIBYTE(v207)) ^ *&v197[4 * HIBYTE(v207)] ^ *&v198[4 * HIBYTE(v207) + 12] ^ *&v199[4 * HIBYTE(v207)];
  v208 = (-812407749 * ((v59 ^ STACK[0x1798]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1798]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1F50]) = (-812407749 * v208) ^ (-1539637248 * v208) ^ *STACK[0x1798] ^ (1310927943 * ((-812407749 * v208) >> 24)) ^ *&v197[4 * ((-812407749 * v208) >> 24)] ^ *&v198[4 * ((-812407749 * v208) >> 24) + 12] ^ *&v199[4 * ((-812407749 * v208) >> 24)];
  v209 = (-812407749 * ((v59 ^ STACK[0x15D0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x15D0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1F88]) = *&v197[4 * ((-812407749 * v209) >> 24)] ^ *STACK[0x15D0] ^ *&v198[4 * ((-812407749 * v209) >> 24) + 12] ^ *&v199[4 * ((-812407749 * v209) >> 24)] ^ (-1539637248 * v209) ^ (-812407749 * v209) ^ (1310927943 * ((-812407749 * v209) >> 24));
  v210 = (-812407749 * ((v59 ^ STACK[0x1888]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1888]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = *STACK[0x1888] ^ (-1539637248 * v210);
  v210 *= -812407749;
  LODWORD(v135) = *&v197[4 * HIBYTE(v210)] ^ v129 ^ v210 ^ *&v198[4 * HIBYTE(v210) + 12] ^ *&v199[4 * HIBYTE(v210)] ^ (1310927943 * HIBYTE(v210));
  v211 = (-812407749 * ((v59 ^ STACK[0x1630]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1630]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-1539637248 * v211) ^ *STACK[0x1630];
  v211 *= -812407749;
  LODWORD(v150) = v129 ^ v211 ^ (1310927943 * HIBYTE(v211)) ^ *&v197[4 * HIBYTE(v211)] ^ *&v198[4 * HIBYTE(v211) + 12] ^ *&v199[4 * HIBYTE(v211)];
  v212 = (-812407749 * ((v59 ^ STACK[0x1858]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1858]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-1539637248 * v212) ^ *STACK[0x1858] ^ (-812407749 * v212) ^ (1310927943 * ((-812407749 * v212) >> 24)) ^ *&v197[4 * ((-812407749 * v212) >> 24)] ^ *&v198[4 * ((-812407749 * v212) >> 24) + 12] ^ *&v199[4 * ((-812407749 * v212) >> 24)];
  v213 = (-812407749 * ((v59 ^ STACK[0x16C8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x16C8]) & 0x7FFFFFFF)) >> 16);
  v214 = *(v122 + 4 * ((-812407749 * v213) >> 24)) ^ *STACK[0x16C8] ^ *(v123 + 4 * (((-812407749 * v213) >> 24) + 2)) ^ *&v124[4 * ((-812407749 * v213) >> 24)] ^ (-1539637248 * v213) ^ (-812407749 * v213) ^ (1091443017 * ((-812407749 * v213) >> 24));
  LODWORD(v176) = (-812407749 * ((v59 ^ STACK[0x1838]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1838]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v197) = *STACK[0x1838] ^ (-1539637248 * v176);
  LODWORD(v176) = -812407749 * v176;
  LODWORD(v176) = *(v122 + 4 * BYTE3(v176)) ^ v197 ^ v176 ^ *(v123 + 4 * (BYTE3(v176) + 2)) ^ *&v124[4 * BYTE3(v176)] ^ (1091443017 * BYTE3(v176));
  LODWORD(v197) = (-812407749 * ((v59 ^ STACK[0x1870]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1870]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v123) = (-1539637248 * v197) ^ *STACK[0x1870] ^ (-812407749 * v197) ^ (1091443017 * ((-812407749 * v197) >> 24)) ^ *(v122 + 4 * ((-812407749 * v197) >> 24)) ^ *(v123 + 4 * (((-812407749 * v197) >> 24) + 2)) ^ *&v124[4 * ((-812407749 * v197) >> 24)];
  LODWORD(v197) = -737505385 * LODWORD(STACK[0x21B8]);
  LODWORD(v154) = STACK[0x2078];
  LODWORD(STACK[0x21B8]) = v214 - LODWORD(STACK[0x2078]);
  LODWORD(STACK[0x1F38]) = v197 - 1557759138 - 737505385 * v154;
  LODWORD(v122) = (-812407749 * ((v59 ^ STACK[0x1790]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1790]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v122) = *&v157[4 * ((-812407749 * v122) >> 24)] ^ *STACK[0x1790] ^ *&v158[4 * ((-812407749 * v122) >> 24) + 16] ^ *&v159[4 * ((-812407749 * v122) >> 24) + 8] ^ (-1539637248 * v122) ^ (-812407749 * v122) ^ (-684504187 * ((-812407749 * v122) >> 24));
  v215 = (-812407749 * ((v59 ^ STACK[0x16E0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x16E0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v124) = *&v157[4 * ((-812407749 * v215) >> 24)] ^ *STACK[0x16E0] ^ *&v158[4 * ((-812407749 * v215) >> 24) + 16] ^ (-1539637248 * v215) ^ (-812407749 * v215) ^ *&v159[4 * ((-812407749 * v215) >> 24) + 8] ^ (-684504187 * ((-812407749 * v215) >> 24));
  v216 = (-812407749 * ((v59 ^ STACK[0x17B0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x17B0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v159) = (-812407749 * v216) ^ (-1539637248 * v216) ^ *STACK[0x17B0] ^ (-684504187 * ((-812407749 * v216) >> 24)) ^ *&v157[4 * ((-812407749 * v216) >> 24)] ^ *&v158[4 * ((-812407749 * v216) >> 24) + 16] ^ *&v159[4 * ((-812407749 * v216) >> 24) + 8];
  LODWORD(v157) = v197 - 778879569;
  v217 = -778879569 - 737505385 * LODWORD(STACK[0x21D8]);
  v218 = -778879569 - 737505385 * LODWORD(STACK[0x2110]);
  LODWORD(v197) = -778879569 - 737505385 * LODWORD(STACK[0x2108]);
  LODWORD(v154) = -778879569 - 737505385 * LODWORD(STACK[0x1FE8]);
  LODWORD(v178) = -778879569 - 737505385 * LODWORD(STACK[0x1FC8]);
  LODWORD(v129) = -778879569 - 737505385 * v129;
  LODWORD(v123) = -778879569 - 737505385 * v123;
  LODWORD(STACK[0x1F18]) = v197 ^ v157;
  LODWORD(STACK[0x1FE8]) = v123 + v197;
  LODWORD(STACK[0x1F28]) = v123 + v217;
  LODWORD(STACK[0x2110]) = v218 + v217;
  LODWORD(STACK[0x1F30]) = v178 + v218;
  LODWORD(STACK[0x1FC8]) = v129 ^ v178;
  LODWORD(v159) = -737505385 * v159;
  LODWORD(STACK[0x2078]) = (v159 - 778879569) ^ v154;
  LODWORD(STACK[0x2108]) = v129 + v154;
  v219 = -737505385 * LODWORD(STACK[0x2100]);
  LODWORD(v157) = -737505385 * LODWORD(STACK[0x2068]);
  LODWORD(STACK[0x21D8]) = v159 - v157;
  LODWORD(v159) = v157 - 778879569;
  LODWORD(v157) = -778879569 - 737505385 * LODWORD(STACK[0x2028]);
  LODWORD(STACK[0x2028]) = v187 ^ (v219 - 778879569);
  LODWORD(STACK[0x2068]) = v157 - v187;
  LODWORD(STACK[0x1F10]) = v159 + v157;
  LODWORD(v157) = -737505385 * LODWORD(STACK[0x2150]);
  LODWORD(v159) = -778879569 - 737505385 * LODWORD(STACK[0x2130]);
  LODWORD(v123) = -737505385 * LODWORD(STACK[0x1FA0]);
  LODWORD(v129) = -737505385 * LODWORD(STACK[0x1F78]);
  LODWORD(STACK[0x1EF8]) = v123 + -1557759138 - 737505385 * LODWORD(STACK[0x1F78]);
  LODWORD(STACK[0x1FA0]) = v123 - v157;
  LODWORD(STACK[0x1F20]) = v157 + v159 - 778879569;
  LODWORD(v157) = -737505385 * LODWORD(STACK[0x2170]);
  LODWORD(STACK[0x1F78]) = v157 - v129;
  LODWORD(v123) = v157 - 778879569;
  LODWORD(v157) = -737505385 * LODWORD(STACK[0x2018]);
  LODWORD(v122) = -778879569 - 737505385 * v122;
  LODWORD(STACK[0x2018]) = v123 + v122;
  LODWORD(STACK[0x1F00]) = v122 ^ (v157 - 778879569);
  LODWORD(v122) = -778879569 - 737505385 * LODWORD(STACK[0x2238]);
  LODWORD(v123) = -737505385 * LODWORD(STACK[0x20D8]);
  LODWORD(v129) = -778879569 - 737505385 * LODWORD(STACK[0x2048]);
  v220 = -778879569 - 737505385 * LODWORD(STACK[0x1F70]);
  LODWORD(v154) = -778879569 - 737505385 * LODWORD(STACK[0x1F60]);
  LODWORD(STACK[0x2150]) = v219 - -737505385 * v195;
  LODWORD(v124) = -778879569 - 737505385 * v124;
  LODWORD(STACK[0x2130]) = (-737505385 * v195 - 778879569) ^ v129;
  LODWORD(STACK[0x1EC8]) = v124 + v129;
  LODWORD(STACK[0x2170]) = v124 ^ v122;
  LODWORD(STACK[0x2238]) = v123 - 778879569 + v154;
  LODWORD(STACK[0x1EC0]) = v154 ^ v220;
  LODWORD(STACK[0x1F60]) = v220 + v122;
  LODWORD(v122) = -737505385 * LODWORD(STACK[0x21E0]);
  v221 = -778879569 - 737505385 * LODWORD(STACK[0x21A8]);
  LODWORD(v124) = -778879569 - 737505385 * LODWORD(STACK[0x20F8]);
  LODWORD(v129) = -778879569 - 737505385 * LODWORD(STACK[0x20E8]);
  v222 = -778879569 - 737505385 * LODWORD(STACK[0x20B0]);
  LODWORD(STACK[0x1EE0]) = v122 - 778879569 + v124;
  LODWORD(STACK[0x1EA0]) = v129 + v124;
  LODWORD(STACK[0x1ED8]) = (-737505385 * v206 - 778879569) ^ v222;
  LODWORD(STACK[0x1EE8]) = v222 + v221;
  LODWORD(STACK[0x21E0]) = v129 + v221;
  v223 = -778879569 - 737505385 * LODWORD(STACK[0x21C8]);
  LODWORD(v124) = -778879569 - 737505385 * LODWORD(STACK[0x21A0]);
  LODWORD(v129) = -737505385 * LODWORD(STACK[0x20B8]);
  LODWORD(STACK[0x1EB8]) = v123 - v129;
  LODWORD(v123) = v129 - 778879569;
  LODWORD(v129) = -778879569 - 737505385 * LODWORD(STACK[0x1F98]);
  v224 = -778879569 - 737505385 * LODWORD(STACK[0x1F68]);
  LODWORD(v177) = -778879569 - 737505385 * v177;
  LODWORD(v176) = -778879569 - 737505385 * v176;
  LODWORD(STACK[0x1F68]) = v123 + v129;
  LODWORD(STACK[0x1F98]) = v224 + v129;
  LODWORD(STACK[0x1EA8]) = v177 ^ v224;
  LODWORD(STACK[0x20D8]) = v176 ^ v177;
  LODWORD(STACK[0x1E98]) = v223 - v122;
  LODWORD(STACK[0x1F70]) = v124 ^ v223;
  LODWORD(STACK[0x20B8]) = v176 ^ v124;
  LODWORD(v122) = -737505385 * LODWORD(STACK[0x20C8]);
  v225 = -778879569 - 737505385 * LODWORD(STACK[0x20D0]);
  LODWORD(STACK[0x20F8]) = v157 - 1557759138 - 737505385 * v135;
  LODWORD(STACK[0x20B0]) = v122 - -737505385 * v135;
  LODWORD(v157) = v122 - 778879569;
  LODWORD(v122) = -737505385 * LODWORD(STACK[0x1FD0]);
  LODWORD(STACK[0x2100]) = -737505385 * v206 - -737505385 * v150;
  LODWORD(STACK[0x21C8]) = -737505385 * v150 - v122;
  LODWORD(STACK[0x20E8]) = (v122 - 778879569) ^ v225;
  LODWORD(STACK[0x1F08]) = v157 ^ v225;
  LODWORD(v122) = -737505385 * LODWORD(STACK[0x2038]);
  LODWORD(v157) = -737505385 * LODWORD(STACK[0x2010]);
  LODWORD(STACK[0x2010]) = (v157 - 778879569) ^ (v122 - 778879569);
  v226 = -737505385 * LODWORD(STACK[0x1FE0]);
  LODWORD(v124) = -737505385 * LODWORD(STACK[0x1FC0]);
  LODWORD(STACK[0x1EF0]) = (v124 - 778879569) ^ (v226 - 778879569);
  LODWORD(v123) = -778879569 - 737505385 * LODWORD(STACK[0x2240]);
  LODWORD(v129) = -778879569 - 737505385 * LODWORD(STACK[0x2230]);
  LODWORD(v135) = -778879569 - 737505385 * LODWORD(STACK[0x21F8]);
  LODWORD(v176) = -778879569 - 737505385 * LODWORD(STACK[0x2228]);
  LODWORD(v150) = -778879569 - 737505385 * LODWORD(STACK[0x21B0]);
  LODWORD(v197) = -778879569 - 737505385 * LODWORD(STACK[0x2178]);
  LODWORD(v154) = -778879569 - 737505385 * LODWORD(STACK[0x2148]);
  LODWORD(v178) = -778879569 - 737505385 * LODWORD(STACK[0x20E0]);
  v227 = -737505385 * LODWORD(STACK[0x2088]);
  LODWORD(STACK[0x21F8]) = v227 - v124;
  LODWORD(v124) = v227 - 778879569;
  v228 = -778879569 - 737505385 * LODWORD(STACK[0x2070]);
  v229 = -778879569 - 737505385 * LODWORD(STACK[0x2020]);
  LODWORD(v199) = -778879569 - 737505385 * LODWORD(STACK[0x2030]);
  v230 = -778879569 - 737505385 * LODWORD(STACK[0x2008]);
  LODWORD(v198) = -778879569 - 737505385 * LODWORD(STACK[0x1F90]);
  v231 = -778879569 - 737505385 * v200;
  v232 = -778879569 - 737505385 * v203;
  LODWORD(STACK[0x2240]) = v159 ^ v135;
  LODWORD(STACK[0x1FE0]) = v229 + v135;
  LODWORD(STACK[0x2148]) = v229 + v123;
  LODWORD(v158) = v197 ^ v123;
  LODWORD(STACK[0x2230]) = v199 ^ v197;
  LODWORD(STACK[0x2088]) = v199 ^ v154;
  LODWORD(STACK[0x2228]) = v228 + v154;
  LODWORD(STACK[0x2070]) = v228 ^ v178;
  LODWORD(STACK[0x21A8]) = v198 + v178;
  LODWORD(STACK[0x2030]) = v198 ^ v150;
  LODWORD(v198) = v150 + v129;
  LODWORD(STACK[0x20E0]) = v176 + v129;
  LODWORD(STACK[0x21B0]) = v232 ^ v176;
  v233 = v232 + v230;
  LODWORD(STACK[0x2178]) = v231 ^ v230;
  LODWORD(STACK[0x2048]) = v231 ^ v124;
  LODWORD(v159) = -737505385 * LODWORD(STACK[0x20F0]);
  v234 = v159 - v122;
  LODWORD(v122) = -737505385 * LODWORD(STACK[0x1F48]);
  LODWORD(STACK[0x1EB0]) = v226 - v122;
  v235 = (v122 - 778879569) ^ (v159 - 778879569);
  LODWORD(v123) = -737505385 * LODWORD(STACK[0x2198]);
  LODWORD(v150) = -737505385 * LODWORD(STACK[0x2138]);
  LODWORD(v122) = -778879569 - 737505385 * LODWORD(STACK[0x2128]);
  LODWORD(STACK[0x2138]) = v123 - 778879569 + v122;
  LODWORD(STACK[0x20F0]) = v122 ^ (v150 - 778879569);
  v236 = -778879569 - 737505385 * LODWORD(STACK[0x2210]);
  LODWORD(v122) = -737505385 * LODWORD(STACK[0x2120]);
  LODWORD(v197) = -778879569 - 737505385 * LODWORD(STACK[0x20A0]);
  LODWORD(v124) = -737505385 * LODWORD(STACK[0x2058]);
  LODWORD(v178) = -737505385 * LODWORD(STACK[0x1FD8]);
  LODWORD(STACK[0x2210]) = v157 - v122;
  LODWORD(v157) = -1557759138 - 737505385 * LODWORD(STACK[0x20C0]);
  LODWORD(v154) = v157 + v122;
  v237 = v178 + v157;
  LODWORD(STACK[0x20A0]) = v178 - v124;
  LODWORD(v199) = -737505385 * LODWORD(STACK[0x1F80]);
  LODWORD(v135) = (v124 - 778879569) ^ v236;
  LODWORD(v176) = v197 ^ v236;
  LODWORD(STACK[0x2128]) = (v199 - 778879569) ^ v197;
  LODWORD(v157) = -778879569 - 737505385 * LODWORD(STACK[0x2168]);
  LODWORD(v124) = -737505385 * LODWORD(STACK[0x2098]);
  v238 = -737505385 * LODWORD(STACK[0x2060]);
  v239 = (v238 - 778879569) ^ v157;
  v240 = (v124 - 778879569) ^ v157;
  LODWORD(v157) = -778879569 - 737505385 * LODWORD(STACK[0x2190]);
  LODWORD(v165) = LODWORD(STACK[0x2160]) - 778879569;
  LODWORD(v159) = -737505385 * LODWORD(STACK[0x2118]);
  LODWORD(v122) = -737505385 * LODWORD(STACK[0x1F40]);
  LODWORD(v178) = (v122 - 778879569) ^ v157;
  LODWORD(v197) = v165 + v157;
  LODWORD(STACK[0x21A0]) = (v159 - 778879569) ^ v165;
  LODWORD(v165) = -737505385 * LODWORD(STACK[0x22A0]);
  LODWORD(STACK[0x2060]) = v199 - v165;
  LODWORD(v157) = -778879569 - 737505385 * LODWORD(STACK[0x2278]);
  LODWORD(v199) = -778879569 - 737505385 * LODWORD(STACK[0x2220]);
  v241 = -778879569 - 737505385 * LODWORD(STACK[0x21C0]);
  v242 = -737505385 * LODWORD(STACK[0x2090]);
  v243 = -737505385 * LODWORD(STACK[0x2080]);
  LODWORD(STACK[0x2160]) = v243 - v150;
  LODWORD(STACK[0x22A0]) = v242 - v243;
  LODWORD(v150) = v242 - 778879569;
  v244 = -778879569 - 737505385 * LODWORD(STACK[0x1FF0]);
  v245 = v157 ^ (v165 - 778879569);
  LODWORD(v165) = v244 ^ v157;
  LODWORD(v150) = v150 ^ v199;
  LODWORD(v157) = v244 + v241;
  v246 = v241 + v199;
  v247 = v159 - v124;
  LODWORD(v159) = v123 - v122;
  LODWORD(v129) = STACK[0x1EA0];
  v248 = LODWORD(STACK[0x20E0]) ^ 0xB08F6AAF ^ ((v129 & 0xB08F6AAF ^ 0xB08F6AAF) + (v129 & 0xB08F6AAF));
  LODWORD(v124) = -737505385 * LODWORD(STACK[0x1F50]);
  LODWORD(v123) = LODWORD(STACK[0x1E98]) + 778879569;
  LODWORD(v122) = v238 - v124;
  v249 = STACK[0x1F18];
  LODWORD(STACK[0x2278]) = LODWORD(STACK[0x2230]) + LODWORD(STACK[0x1F18]);
  LODWORD(STACK[0x2198]) = v249 ^ v245;
  LODWORD(STACK[0x2118]) = v245 - v165;
  LODWORD(v199) = STACK[0x1EF8];
  LODWORD(STACK[0x20C8]) = v165 - LODWORD(STACK[0x1EF8]);
  LODWORD(STACK[0x20D0]) = v199 - v158;
  LODWORD(STACK[0x2038]) = v234 ^ v158;
  LODWORD(STACK[0x2220]) = v234 ^ v240;
  v250 = STACK[0x1F10];
  LODWORD(STACK[0x2058]) = v240 - LODWORD(STACK[0x1F10]);
  LODWORD(v158) = STACK[0x2018];
  LODWORD(STACK[0x21C0]) = v250 - LODWORD(STACK[0x2018]);
  LODWORD(STACK[0x20C0]) = v158 ^ v150;
  LODWORD(STACK[0x2230]) = v150 ^ v247;
  v251 = STACK[0x1EC0];
  LODWORD(STACK[0x1F90]) = v247 - LODWORD(STACK[0x1EC0]);
  LODWORD(STACK[0x2168]) = v251 - v239;
  LODWORD(STACK[0x1FD8]) = v239 - v233;
  LODWORD(STACK[0x1F48]) = v122 + v233;
  LODWORD(STACK[0x2080]) = v122 + v135;
  LODWORD(v122) = STACK[0x1EC8];
  LODWORD(STACK[0x20E0]) = LODWORD(STACK[0x1EC8]) + v135;
  LODWORD(v135) = STACK[0x1EA8];
  LODWORD(STACK[0x2098]) = v122 + LODWORD(STACK[0x1EA8]);
  v252 = STACK[0x1F68];
  LODWORD(STACK[0x2020]) = v135 ^ LODWORD(STACK[0x1F68]);
  LODWORD(v122) = STACK[0x1EB8];
  LODWORD(STACK[0x2090]) = v252 ^ LODWORD(STACK[0x1EB8]);
  LODWORD(STACK[0x2008]) = v176 ^ v122;
  LODWORD(v122) = v176 - LODWORD(STACK[0x1FE0]);
  LODWORD(STACK[0x2018]) = LODWORD(STACK[0x1FE0]) + v129;
  v253 = STACK[0x1F28];
  LODWORD(STACK[0x2190]) = LODWORD(STACK[0x1F28]) + v129;
  LODWORD(v165) = STACK[0x1F38];
  LODWORD(STACK[0x2120]) = v253 + LODWORD(STACK[0x1F38]);
  LODWORD(STACK[0x1F18]) = v165 - v154;
  v254 = STACK[0x2010];
  LODWORD(STACK[0x1FD0]) = LODWORD(STACK[0x2010]) ^ v154;
  LODWORD(STACK[0x1FC0]) = v157 ^ v254;
  v255 = v157 + v198;
  LODWORD(STACK[0x1EF8]) = v198 + v123;
  LODWORD(v165) = STACK[0x1F98];
  LODWORD(STACK[0x1FF0]) = v123 - LODWORD(STACK[0x1F98]);
  v256 = STACK[0x1F00];
  LODWORD(STACK[0x1F98]) = LODWORD(STACK[0x1F00]) + v165;
  LODWORD(v157) = STACK[0x1F30];
  LODWORD(STACK[0x1FE0]) = v256 ^ LODWORD(STACK[0x1F30]);
  LODWORD(v165) = STACK[0x1ED8];
  LODWORD(STACK[0x1F10]) = LODWORD(STACK[0x1ED8]) + v157;
  LODWORD(v157) = STACK[0x1EE0];
  LODWORD(STACK[0x1F80]) = v165 + LODWORD(STACK[0x1EE0]);
  LODWORD(STACK[0x2010]) = v159 ^ v157;
  LODWORD(v165) = STACK[0x1F60];
  LODWORD(STACK[0x1F30]) = v159 + LODWORD(STACK[0x1F60]);
  LODWORD(STACK[0x1F60]) = v165 - v237;
  LODWORD(v165) = STACK[0x1F20];
  LODWORD(STACK[0x1F68]) = v237 + LODWORD(STACK[0x1F20]);
  LODWORD(v159) = STACK[0x1EE8];
  LODWORD(STACK[0x1F00]) = LODWORD(STACK[0x1EE8]) + v165;
  LODWORD(STACK[0x1EE8]) = v159 + v197;
  LODWORD(v165) = STACK[0x1F78];
  LODWORD(STACK[0x1F50]) = v197 - LODWORD(STACK[0x1F78]);
  LODWORD(STACK[0x1F28]) = v235 ^ v165;
  LODWORD(v165) = STACK[0x2028];
  LODWORD(STACK[0x1F20]) = v235 - LODWORD(STACK[0x2028]);
  LODWORD(v159) = STACK[0x1FA0];
  LODWORD(STACK[0x1EE0]) = v165 ^ LODWORD(STACK[0x1FA0]);
  LODWORD(v165) = STACK[0x1FE8];
  LODWORD(STACK[0x1F40]) = LODWORD(STACK[0x1FE8]) ^ v159;
  LODWORD(v159) = STACK[0x1F70];
  LODWORD(STACK[0x1FA0]) = v165 + LODWORD(STACK[0x1F70]);
  v257 = LODWORD(STACK[0x1FC8]) ^ v159;
  LODWORD(STACK[0x1FE8]) = LODWORD(STACK[0x1FC8]) - v246;
  LODWORD(v165) = STACK[0x1EB0];
  LODWORD(STACK[0x1F70]) = v246 - LODWORD(STACK[0x1EB0]);
  LODWORD(v159) = STACK[0x1F08];
  LODWORD(STACK[0x1F78]) = v165 + LODWORD(STACK[0x1F08]);
  LODWORD(v165) = STACK[0x2068];
  LODWORD(STACK[0x2028]) = LODWORD(STACK[0x2068]) + v159;
  LODWORD(v159) = STACK[0x1EF0];
  LODWORD(STACK[0x1FC8]) = v165 - LODWORD(STACK[0x1EF0]);
  LODWORD(v199) = v178 ^ v159;
  LODWORD(v123) = STACK[0x2030];
  LODWORD(v176) = v178 ^ LODWORD(STACK[0x2030]);
  LODWORD(STACK[0x1F38]) = (v176 ^ v122) - 2 * (((v176 ^ v122) + 16054176) & 0x63EFBDB ^ (v176 ^ v122) & 1);
  LODWORD(v165) = -778879569 - 737505385 * LODWORD(STACK[0x2050]);
  LODWORD(v157) = -778879569 - 737505385 * LODWORD(STACK[0x1F88]);
  v258 = -737505385 * LODWORD(STACK[0x21B8]);
  LODWORD(v159) = (v124 - 778879569) ^ v165;
  LODWORD(v124) = v157 + v165;
  LODWORD(v122) = STACK[0x20F0];
  LODWORD(STACK[0x1EF0]) = v123 ^ LODWORD(STACK[0x20F0]);
  LODWORD(v123) = LODWORD(STACK[0x2150]) ^ v122;
  LODWORD(v158) = LODWORD(STACK[0x2150]) ^ v248;
  LODWORD(v150) = LODWORD(STACK[0x2130]) + v248;
  LODWORD(v122) = STACK[0x20B8];
  LODWORD(STACK[0x1ED8]) = LODWORD(STACK[0x20B8]) + LODWORD(STACK[0x2130]);
  v259 = v122 ^ LODWORD(STACK[0x20A0]);
  LODWORD(v165) = STACK[0x20D8];
  LODWORD(STACK[0x1EC0]) = LODWORD(STACK[0x20D8]) + LODWORD(STACK[0x20A0]);
  LODWORD(STACK[0x20D8]) = v165 ^ v258;
  v260 = v258 - LODWORD(STACK[0x20B0]);
  LODWORD(v165) = STACK[0x2078];
  LODWORD(STACK[0x1E98]) = LODWORD(STACK[0x20B0]) - LODWORD(STACK[0x2078]);
  v261 = v165 - v157;
  LODWORD(v198) = v157 + LODWORD(STACK[0x21E0]);
  LODWORD(v122) = STACK[0x2138];
  LODWORD(STACK[0x1EB8]) = LODWORD(STACK[0x21E0]) ^ LODWORD(STACK[0x2138]);
  v262 = LODWORD(STACK[0x2048]) ^ v122;
  v263 = LODWORD(STACK[0x2170]) + LODWORD(STACK[0x2048]);
  LODWORD(v154) = LODWORD(STACK[0x2170]) - LODWORD(STACK[0x2060]);
  v264 = LODWORD(STACK[0x2060]) ^ LODWORD(STACK[0x2110]);
  LODWORD(v178) = v159 + LODWORD(STACK[0x2110]);
  LODWORD(v165) = STACK[0x2088];
  LODWORD(STACK[0x2170]) = v159 ^ LODWORD(STACK[0x2088]);
  LODWORD(v159) = STACK[0x2070];
  LODWORD(STACK[0x1EA0]) = v165 ^ LODWORD(STACK[0x2070]);
  LODWORD(v159) = LODWORD(STACK[0x20F8]) + v159;
  LODWORD(v177) = LODWORD(STACK[0x20F8]) ^ LODWORD(STACK[0x21F8]);
  LODWORD(v197) = LODWORD(STACK[0x2108]) ^ LODWORD(STACK[0x21F8]);
  LODWORD(v129) = LODWORD(STACK[0x2108]) + v124;
  LODWORD(v165) = v124 ^ LODWORD(STACK[0x2128]);
  LODWORD(v157) = STACK[0x2238];
  LODWORD(STACK[0x1EC8]) = LODWORD(STACK[0x2128]) - LODWORD(STACK[0x2238]);
  LODWORD(v135) = v157 + LODWORD(STACK[0x2210]);
  v265 = LODWORD(STACK[0x2210]) - LODWORD(STACK[0x2100]);
  v266 = LODWORD(STACK[0x2100]) ^ LODWORD(STACK[0x20E8]);
  v267 = STACK[0x2148];
  LODWORD(v157) = LODWORD(STACK[0x20E8]) - LODWORD(STACK[0x2148]);
  LODWORD(STACK[0x2070]) = v176 ^ v255;
  LODWORD(STACK[0x20B8]) = v159 ^ v255;
  LODWORD(STACK[0x2050]) = (v159 ^ v157) - ((2 * (v159 ^ v157) + 212522404) & 0xA13CB32);
  v268 = STACK[0x2160];
  LODWORD(v159) = v267 ^ LODWORD(STACK[0x2160]);
  LODWORD(v122) = STACK[0x1F70];
  LODWORD(STACK[0x2238]) = LODWORD(STACK[0x1F70]) + 2093241588 + v199;
  v269 = STACK[0x1FF0];
  LODWORD(STACK[0x20A0]) = v199 ^ LODWORD(STACK[0x1FF0]);
  v270 = STACK[0x2090];
  LODWORD(STACK[0x21E0]) = v269 ^ LODWORD(STACK[0x2090]);
  LODWORD(STACK[0x1FF0]) = v165 - v270;
  LODWORD(STACK[0x20F0]) = v261 - v165;
  LODWORD(v176) = STACK[0x1EF8];
  LODWORD(STACK[0x1E60]) = v261 ^ LODWORD(STACK[0x1EF8]);
  LODWORD(STACK[0x2090]) = v159 ^ v176;
  LODWORD(STACK[0x21F8]) = v262 + v159;
  LODWORD(STACK[0x1EB0]) = v257 ^ v262;
  LODWORD(STACK[0x2030]) = v157 + v257 - 2007523960;
  v271 = v268 - LODWORD(STACK[0x22A0]);
  LODWORD(v124) = LODWORD(STACK[0x22A0]) - LODWORD(STACK[0x2240]);
  v272 = LODWORD(STACK[0x21B0]) + LODWORD(STACK[0x2240]);
  v273 = LODWORD(STACK[0x21B0]) ^ LODWORD(STACK[0x2228]);
  LODWORD(v176) = LODWORD(STACK[0x2178]) + LODWORD(STACK[0x2228]);
  LODWORD(v159) = LODWORD(STACK[0x2178]) - LODWORD(STACK[0x21C8]);
  LODWORD(v157) = LODWORD(STACK[0x21C8]) - LODWORD(STACK[0x21D8]);
  LODWORD(v199) = STACK[0x21A8];
  v274 = LODWORD(STACK[0x21D8]) ^ LODWORD(STACK[0x21A8]);
  v275 = STACK[0x2020];
  LODWORD(STACK[0x21D8]) = v122 - LODWORD(STACK[0x2020]);
  v276 = STACK[0x1F00];
  LODWORD(STACK[0x2020]) = v275 - LODWORD(STACK[0x1F00]);
  v277 = STACK[0x1F48];
  LODWORD(STACK[0x1F88]) = LODWORD(STACK[0x1F48]) + v276;
  LODWORD(v165) = STACK[0x1FE8];
  LODWORD(STACK[0x2138]) = LODWORD(STACK[0x1FE8]) + v277;
  v278 = STACK[0x1F10];
  LODWORD(STACK[0x21B8]) = v165 + LODWORD(STACK[0x1F10]);
  v279 = STACK[0x1F18];
  LODWORD(STACK[0x2048]) = v278 + LODWORD(STACK[0x1F18]);
  LODWORD(STACK[0x2240]) = v159 ^ v279;
  LODWORD(STACK[0x2160]) = v159 + v123;
  LODWORD(v165) = v123 + 1469258046;
  LODWORD(v123) = STACK[0x1EE0];
  LODWORD(STACK[0x1F08]) = LODWORD(STACK[0x1EE0]) + v165;
  LODWORD(STACK[0x22A0]) = v129 + v123;
  LODWORD(v123) = STACK[0x1EE8];
  LODWORD(STACK[0x1F70]) = v129 + LODWORD(STACK[0x1EE8]);
  LODWORD(STACK[0x1FE8]) = v123 + 1019125118 + v274;
  LODWORD(v165) = STACK[0x2198];
  LODWORD(STACK[0x2150]) = v274 ^ LODWORD(STACK[0x2198]);
  LODWORD(v122) = STACK[0x1F30];
  LODWORD(STACK[0x20F8]) = LODWORD(STACK[0x1F30]) + v165;
  LODWORD(STACK[0x2060]) = v157 ^ v122;
  LODWORD(v165) = STACK[0x1FD8];
  LODWORD(STACK[0x2128]) = v157 - LODWORD(STACK[0x1FD8]);
  LODWORD(STACK[0x21B0]) = v165 - v150;
  LODWORD(STACK[0x2198]) = v150 + v264;
  LODWORD(STACK[0x1F18]) = v264 + v259 - 1703157173;
  LODWORD(STACK[0x1EF8]) = v265 + 1606483086 + v266;
  LODWORD(STACK[0x2130]) = v154 ^ v266;
  v280 = v154 + LODWORD(STACK[0x1FA0]);
  LODWORD(v165) = STACK[0x2120];
  LODWORD(STACK[0x2068]) = LODWORD(STACK[0x1FA0]) ^ LODWORD(STACK[0x2120]);
  LODWORD(STACK[0x2100]) = v177 - v165;
  LODWORD(STACK[0x2108]) = v197 - v177;
  LODWORD(v157) = STACK[0x1F80];
  LODWORD(STACK[0x1EE8]) = LODWORD(STACK[0x1F80]) - v197;
  LODWORD(STACK[0x2120]) = v135 - v157;
  LODWORD(STACK[0x2228]) = v158 - v135;
  LODWORD(v157) = STACK[0x2190];
  LODWORD(STACK[0x2210]) = LODWORD(STACK[0x2190]) ^ v158;
  LODWORD(STACK[0x2110]) = v178 - v157;
  LODWORD(v157) = STACK[0x1F60];
  LODWORD(STACK[0x2190]) = v178 ^ LODWORD(STACK[0x1F60]);
  LODWORD(STACK[0x2148]) = v260 - v157;
  LODWORD(v154) = LODWORD(STACK[0x1F68]) - v260;
  LODWORD(STACK[0x1EE0]) = LODWORD(STACK[0x1F68]) + 2133241869 + v259;
  v281 = STACK[0x21A0];
  LODWORD(v129) = STACK[0x1F90];
  LODWORD(v122) = STACK[0x1F20];
  LODWORD(STACK[0x1FD8]) = LODWORD(STACK[0x1F90]) - 397259857 + LODWORD(STACK[0x1F20]);
  LODWORD(STACK[0x1FA0]) = v263 + v122;
  LODWORD(v157) = STACK[0x2080];
  LODWORD(STACK[0x20B0]) = LODWORD(STACK[0x2080]) - v263;
  LODWORD(v122) = STACK[0x1FC0];
  LODWORD(STACK[0x2078]) = LODWORD(STACK[0x1FC0]) - v157;
  LODWORD(v135) = STACK[0x20C0];
  LODWORD(STACK[0x1F10]) = LODWORD(STACK[0x20C0]) ^ v122;
  LODWORD(v157) = STACK[0x2220];
  LODWORD(STACK[0x2080]) = LODWORD(STACK[0x2220]) - v135;
  v282 = v124 - v157;
  LODWORD(STACK[0x21C8]) = v124 - v157;
  LODWORD(v157) = STACK[0x1F28];
  LODWORD(STACK[0x1F68]) = LODWORD(STACK[0x1F28]) ^ v124;
  LODWORD(v122) = STACK[0x20D8];
  LODWORD(STACK[0x1EA8]) = LODWORD(STACK[0x20D8]) ^ v157;
  LODWORD(STACK[0x2220]) = v122 + v198;
  LODWORD(v157) = STACK[0x2118];
  LODWORD(STACK[0x20C0]) = LODWORD(STACK[0x2118]) + v198 + 1257114655;
  LODWORD(v122) = STACK[0x1ED8];
  LODWORD(STACK[0x2118]) = LODWORD(STACK[0x1ED8]) - v157;
  LODWORD(STACK[0x1ED8]) = v122 + v281;
  v283 = v281 - 1850706004 + v176;
  LODWORD(STACK[0x1E50]) = v283;
  LODWORD(v122) = STACK[0x1F40];
  LODWORD(STACK[0x20D8]) = LODWORD(STACK[0x1F40]) ^ v176;
  LODWORD(STACK[0x1F30]) = v265 ^ (v199 - v281);
  LODWORD(v159) = STACK[0x1F50];
  LODWORD(v178) = (v199 - v281) ^ LODWORD(STACK[0x1F50]);
  LODWORD(STACK[0x2088]) = v178;
  LODWORD(v157) = STACK[0x1EA0];
  LODWORD(v150) = v159 - LODWORD(STACK[0x1EA0]);
  LODWORD(STACK[0x1E58]) = v150;
  LODWORD(v165) = STACK[0x20E0];
  LODWORD(STACK[0x1FC0]) = v157 - LODWORD(STACK[0x20E0]);
  LODWORD(v159) = STACK[0x2008];
  LODWORD(STACK[0x20E0]) = v165 + LODWORD(STACK[0x2008]);
  LODWORD(v165) = STACK[0x1F78];
  v284 = LODWORD(STACK[0x1F78]) ^ v159;
  LODWORD(STACK[0x1E68]) = v284;
  LODWORD(v157) = STACK[0x1FD0];
  LODWORD(STACK[0x21A0]) = v165 + LODWORD(STACK[0x1FD0]);
  LODWORD(v165) = STACK[0x1F98];
  LODWORD(STACK[0x1F00]) = LODWORD(STACK[0x1F98]) - v122;
  LODWORD(v122) = STACK[0x1E98];
  LODWORD(STACK[0x1EA0]) = LODWORD(STACK[0x1E98]) + v165;
  LODWORD(v159) = STACK[0x21C0];
  LODWORD(STACK[0x20E8]) = v122 + LODWORD(STACK[0x21C0]);
  LODWORD(STACK[0x1F98]) = v157 ^ v159 ^ 0x4E2C8888;
  v285 = v129 - LODWORD(STACK[0x1EB8]);
  LODWORD(v159) = STACK[0x1EC0];
  LODWORD(STACK[0x21A8]) = LODWORD(STACK[0x1EC0]) + LODWORD(STACK[0x1EB8]);
  LODWORD(STACK[0x21C0]) = v159 ^ v273;
  LODWORD(v159) = STACK[0x2038];
  LODWORD(STACK[0x1E10]) = v273 - LODWORD(STACK[0x2038]);
  LODWORD(v165) = STACK[0x1EF0];
  v286 = LODWORD(STACK[0x1EF0]) + v159;
  LODWORD(STACK[0x1DC8]) = v286;
  LODWORD(v122) = v165 ^ LODWORD(STACK[0x1FC8]);
  LODWORD(v165) = STACK[0x2058];
  LODWORD(v198) = LODWORD(STACK[0x1FC8]) - LODWORD(STACK[0x2058]);
  LODWORD(STACK[0x2008]) = v198;
  LODWORD(v197) = LODWORD(STACK[0x2028]) + v165;
  v287 = LODWORD(STACK[0x2028]) ^ LODWORD(STACK[0x20C8]);
  LODWORD(v135) = STACK[0x2018];
  LODWORD(STACK[0x1D28]) = LODWORD(STACK[0x20C8]) ^ LODWORD(STACK[0x2018]);
  LODWORD(v129) = STACK[0x2098];
  LODWORD(STACK[0x1E08]) = LODWORD(STACK[0x2098]) + v135;
  LODWORD(v199) = v129 - LODWORD(STACK[0x20D0]);
  v288 = v272 ^ LODWORD(STACK[0x20D0]);
  LODWORD(STACK[0x1DB0]) = v288;
  LODWORD(v135) = LODWORD(STACK[0x1FE0]) + v272;
  LODWORD(STACK[0x1DF8]) = LODWORD(STACK[0x1FE0]) + v271;
  LODWORD(v165) = STACK[0x1EC8];
  LODWORD(v157) = v271 - LODWORD(STACK[0x1EC8]);
  LODWORD(STACK[0x1E38]) = v157;
  LODWORD(v159) = STACK[0x2170];
  LODWORD(v158) = v165 - LODWORD(STACK[0x2170]);
  LODWORD(STACK[0x1DA8]) = v158;
  LODWORD(v165) = STACK[0x2278];
  v289 = v159 + LODWORD(STACK[0x2278]);
  LODWORD(STACK[0x1DE0]) = v289;
  LODWORD(v129) = STACK[0x2168];
  v290 = LODWORD(STACK[0x2168]) ^ v165;
  LODWORD(STACK[0x1DB8]) = v290;
  LODWORD(v165) = STACK[0x2010];
  LODWORD(v123) = v129 + LODWORD(STACK[0x2010]) + 1932734440;
  LODWORD(STACK[0x2168]) = v123;
  LODWORD(v159) = v199;
  LODWORD(STACK[0x1DD0]) = v199;
  v291 = STACK[0x2230];
  LODWORD(v176) = (((v199 & 0x3CE021F9 ^ 0x3CE021F9) + (v199 & 0x3CE021F9)) & (v154 & 0x79200139 ^ 0x1200011 | v154 & 0x79200139 ^ 0x78000128)) + (v165 ^ LODWORD(STACK[0x2230]));
  LODWORD(STACK[0x2018]) = v176 - 2062948967 - ((2 * v176) & 0xA13CB32);
  LODWORD(STACK[0x2178]) = v280;
  LODWORD(STACK[0x2278]) = v154 ^ 0x862D4D61;
  LODWORD(v124) = (v280 - 88252279 - ((2 * v280) & 0xF57AC112)) ^ v154 ^ 0x862D4D61;
  LODWORD(v199) = LODWORD(STACK[0x20F0]) + 1540087193;
  LODWORD(STACK[0x1EC8]) = v159 - 26715340;
  LODWORD(STACK[0x1EC0]) = v284 - 1957450817;
  LODWORD(STACK[0x1EB8]) = v199;
  LODWORD(v124) = (v159 - 26715340) ^ (v284 - 1957450817) ^ v199 ^ (v124 + 1901479783 - ((2 * v124) & 0xE2AC8ECE));
  LODWORD(v159) = v135 - ((2 * v135 - 520473122) & 0xE2AC8ECE) + 1641243222;
  LODWORD(STACK[0x2038]) = v159;
  LODWORD(v177) = (v124 ^ v159) - 2062948967 - ((2 * (v124 ^ v159)) & 0xA13CB32);
  LODWORD(v124) = LODWORD(STACK[0x2188]) + (LODWORD(STACK[0x2188]) >> 15) - ((LODWORD(STACK[0x2188]) + (LODWORD(STACK[0x2188]) >> 15)) >> 6);
  LODWORD(v135) = LODWORD(STACK[0x2180]) ^ v124;
  LODWORD(v165) = v124 - 269958541 - ((v124 - 269958541) >> 11) + ((v124 - 269958541 - ((v124 - 269958541) >> 11)) >> 5);
  LODWORD(STACK[0x1DD8]) = v165;
  LODWORD(v135) = v135 ^ v165;
  LODWORD(STACK[0x1DC0]) = v287 - 1721212952;
  v292 = LODWORD(STACK[0x2090]) - 848549171;
  LODWORD(STACK[0x1F60]) = v292;
  LODWORD(STACK[0x1E98]) = v291 - 1447289169;
  LODWORD(STACK[0x1E70]) = v197;
  LODWORD(STACK[0x1F28]) = v197 - 115108809;
  LODWORD(STACK[0x2170]) = v135;
  LODWORD(STACK[0x1E80]) = v122;
  LODWORD(STACK[0x1F48]) = v122 - 953586120;
  LODWORD(STACK[0x1FE0]) = v178 + 21026845;
  LODWORD(STACK[0x1E90]) = v285;
  LODWORD(STACK[0x1F78]) = v285 - 1018900343;
  LODWORD(v159) = v135 ^ (v291 - 1447289169) ^ v282 ^ v292 ^ v150 ^ (v287 - 1721212952) ^ (v197 - 115108809) ^ v198 ^ v286 ^ v290 ^ (v122 - 953586120) ^ (v178 + 21026845) ^ (v285 - 1018900343) ^ LODWORD(STACK[0x21E0]) ^ v157;
  LODWORD(v165) = LODWORD(STACK[0x2228]) - 989129669;
  LODWORD(v135) = LODWORD(STACK[0x2198]) + 323118334;
  LODWORD(STACK[0x2098]) = v165;
  LODWORD(v124) = LODWORD(STACK[0x1F08]) ^ v165;
  LODWORD(STACK[0x2058]) = v135;
  LODWORD(v165) = LODWORD(STACK[0x21F8]) + 485219456;
  LODWORD(STACK[0x1F90]) = v165;
  LODWORD(v159) = v159 ^ v124 ^ v135 ^ v283 ^ v165;
  LODWORD(v165) = LODWORD(STACK[0x2020]) - 1176252209;
  LODWORD(STACK[0x1F20]) = v165;
  LODWORD(v124) = v165 ^ (v288 - 1957079364);
  LODWORD(v165) = LODWORD(STACK[0x21B0]) + 1663189474;
  LODWORD(STACK[0x1FC8]) = v165;
  LODWORD(v124) = v124 ^ v165 ^ (LODWORD(STACK[0x21D8]) - 1469370646) ^ LODWORD(STACK[0x1FD8]);
  LODWORD(v165) = LODWORD(STACK[0x21A0]) - 1437647700;
  LODWORD(STACK[0x1F80]) = v165;
  LODWORD(v159) = v159 ^ v124 ^ v165 ^ (LODWORD(STACK[0x1F68]) - 1274778126);
  LODWORD(v157) = LODWORD(STACK[0x2120]) + 1969936285;
  LODWORD(STACK[0x2028]) = v157;
  LODWORD(v165) = LODWORD(STACK[0x2048]) + 1290652205;
  LODWORD(STACK[0x1EF0]) = v165;
  LODWORD(v199) = LODWORD(STACK[0x20F8]) - 2047599152;
  v293 = LODWORD(STACK[0x2070]) + 2096229667;
  LODWORD(v124) = v159 ^ v165 ^ v157 ^ v123 ^ v199 ^ LODWORD(STACK[0x2238]) ^ v293;
  LODWORD(v165) = LODWORD(STACK[0x20A0]) - 301647308;
  LODWORD(STACK[0x1F40]) = v165;
  LODWORD(v159) = v165 ^ LODWORD(STACK[0x1F88]) ^ v289;
  LODWORD(v165) = LODWORD(STACK[0x2078]) + 134340968;
  LODWORD(STACK[0x2188]) = v165;
  LODWORD(STACK[0x1E20]) = v158 + 775234327;
  LODWORD(v157) = LODWORD(STACK[0x2190]) - 142202080;
  LODWORD(STACK[0x1E28]) = v157;
  v294 = v159 ^ v165 ^ (v158 + 775234327) ^ v157 ^ LODWORD(STACK[0x20C0]) ^ (LODWORD(STACK[0x1FF0]) - 2008393531);
  LODWORD(v159) = LODWORD(STACK[0x2050]) + 1264537707;
  LODWORD(STACK[0x1D90]) = v159;
  LODWORD(v165) = LODWORD(STACK[0x20B8]) - 483114046;
  LODWORD(STACK[0x1D98]) = v165;
  v295 = v124 ^ v294 ^ v165 ^ LODWORD(STACK[0x2240]) ^ v159;
  LODWORD(v157) = LODWORD(STACK[0x1F30]) - 1108705055;
  LODWORD(STACK[0x1DA0]) = v157;
  LODWORD(v165) = LODWORD(STACK[0x2160]) + 1587058496;
  LODWORD(STACK[0x20C8]) = v165;
  LODWORD(v158) = STACK[0x1EB0];
  LODWORD(v123) = v157 ^ LODWORD(STACK[0x1EF8]) ^ v165 ^ LODWORD(STACK[0x1EB0]) ^ LODWORD(STACK[0x22A0]) ^ LODWORD(STACK[0x1F70]) ^ LODWORD(STACK[0x2030]);
  LODWORD(v165) = LODWORD(STACK[0x2138]) + 191030275;
  LODWORD(STACK[0x1FD0]) = v165;
  LODWORD(v159) = LODWORD(STACK[0x21B8]) - 790619550;
  LODWORD(STACK[0x1F50]) = v159;
  LODWORD(v123) = v123 ^ v165 ^ v159;
  LODWORD(v159) = LODWORD(STACK[0x1EE8]) + 824240919;
  LODWORD(STACK[0x1E18]) = v159;
  LODWORD(v165) = LODWORD(STACK[0x2108]) + 1497626615;
  LODWORD(STACK[0x2180]) = v165;
  LODWORD(v123) = v123 ^ v159 ^ v165;
  LODWORD(v165) = LODWORD(STACK[0x2148]) + 96865005;
  LODWORD(STACK[0x2050]) = v165;
  LODWORD(v123) = v295 ^ v123 ^ v165;
  LODWORD(v178) = STACK[0x1EA8];
  v296 = LODWORD(STACK[0x1EE0]) ^ LODWORD(STACK[0x1EA8]) ^ LODWORD(STACK[0x1F18]) ^ LODWORD(STACK[0x21A8]) ^ LODWORD(STACK[0x21C0]) ^ LODWORD(STACK[0x1ED8]);
  LODWORD(v157) = LODWORD(STACK[0x2220]) - 1537716304;
  LODWORD(STACK[0x1E78]) = v157;
  LODWORD(v165) = LODWORD(STACK[0x2118]) - 520372085;
  LODWORD(STACK[0x2010]) = v165;
  v297 = LODWORD(STACK[0x20D8]) + 1352297364;
  v298 = LODWORD(STACK[0x2110]) + 776636435;
  v299 = v296 ^ v157 ^ v165 ^ v297 ^ v298;
  LODWORD(v165) = LODWORD(STACK[0x2068]) - 1743889709;
  LODWORD(STACK[0x1F30]) = v165;
  LODWORD(v123) = v123 ^ v299 ^ v165;
  v300 = LODWORD(STACK[0x1F00]) + 1191827488;
  LODWORD(v122) = LODWORD(STACK[0x2210]) - 2035667247;
  LODWORD(v135) = LODWORD(STACK[0x2100]) - 1515002789;
  LODWORD(STACK[0x20B8]) = v122;
  LODWORD(v129) = STACK[0x1F98];
  v301 = STACK[0x1E08];
  LODWORD(v154) = STACK[0x1FC0];
  LODWORD(v197) = LODWORD(STACK[0x2080]) + 1474924459;
  LODWORD(v157) = LODWORD(STACK[0x1FA0]) + 1898879354;
  LODWORD(v176) = LODWORD(STACK[0x20E0]) + 1181858190;
  v302 = LODWORD(STACK[0x20B0]) - 1971322087;
  v303 = LODWORD(STACK[0x2130]) - 1566268119;
  LODWORD(v159) = (__ROR4__(__ROR4__(STACK[0x1F10], 27) ^ 0x2AF941E3, 5) ^ 0x1957CA0F) + 1867428727;
  LODWORD(STACK[0x1F00]) = v159;
  LODWORD(v165) = LODWORD(STACK[0x2060]) + 1892310925;
  LODWORD(STACK[0x1F10]) = v165;
  LODWORD(v124) = STACK[0x1EA0];
  v304 = STACK[0x1E60];
  LODWORD(v198) = LODWORD(STACK[0x2128]) + 807633568;
  v305 = LODWORD(STACK[0x1FE8]) ^ v165 ^ LODWORD(STACK[0x1EA0]) ^ LODWORD(STACK[0x1E60]) ^ v198;
  LODWORD(v165) = STACK[0x2150];
  LODWORD(STACK[0x1E88]) = LODWORD(STACK[0x2150]) - 1613028915;
  LODWORD(v150) = LODWORD(STACK[0x20E8]) + 2038160456;
  LODWORD(v123) = v123 ^ v135 ^ v122 ^ v129 ^ v301 ^ v154 ^ v197 ^ v300 ^ v157 ^ v176 ^ v302 ^ v303 ^ v305 ^ (v165 - 1613028915) ^ v159 ^ v150 ^ v177 ^ 0x849AA7AD;
  v306 = LODWORD(STACK[0x1D28]) - 38287238;
  LODWORD(v159) = STACK[0x2018];
  LODWORD(v123) = LODWORD(STACK[0x2018]) ^ v306 ^ (v123 - 2062948967 - ((2 * v123) & 0xA13CB32));
  LODWORD(v177) = v123 - 2042692646 - ((2 * v123) & 0xC7DF7B4);
  LODWORD(v123) = -229887233 - LODWORD(STACK[0x2228]) + LODWORD(STACK[0x21A0]) + (v158 ^ 0x4CAEC80E) + v165;
  LODWORD(STACK[0x1E00]) = v157;
  LODWORD(STACK[0x1DF0]) = v178 ^ 0x125B9DE0;
  LODWORD(STACK[0x20D0]) = v199;
  LODWORD(STACK[0x1EA8]) = v150;
  LODWORD(v122) = v199 ^ v150 ^ LODWORD(STACK[0x1FD8]) ^ ((v178 ^ 0x125B9DE0) - v129 + ((v123 + (v159 ^ 0x8509E599) + 1) ^ v157));
  LODWORD(v123) = LODWORD(STACK[0x1E68]) - LODWORD(STACK[0x21F8]);
  LODWORD(STACK[0x1E30]) = v293;
  LODWORD(v122) = v123 + v293 + LODWORD(STACK[0x20C0]) - LODWORD(STACK[0x20F0]) + 312209830 + v122;
  LODWORD(v165) = LODWORD(STACK[0x1E58]) ^ 0x68693AE3;
  LODWORD(STACK[0x1F98]) = v165;
  LODWORD(v129) = v165 - LODWORD(STACK[0x2088]) - LODWORD(STACK[0x1F68]);
  LODWORD(STACK[0x1FD8]) = v303;
  LODWORD(STACK[0x1DE8]) = v154 ^ 0xB71CE4D1;
  LODWORD(v122) = v122 ^ LODWORD(STACK[0x1F78]);
  LODWORD(STACK[0x1E48]) = v124 ^ 0x3CDFB4A7;
  LODWORD(STACK[0x1E68]) = v135;
  LODWORD(v122) = ((v129 + v303 + (v154 ^ 0xB71CE4D1) - (v124 ^ 0x3CDFB4A7) + 1253751281 + v122) ^ v135) - LODWORD(STACK[0x2030]);
  LODWORD(STACK[0x20C0]) = v297;
  LODWORD(v122) = v297 ^ LODWORD(STACK[0x1E50]) ^ v122;
  LODWORD(STACK[0x2030]) = v306;
  LODWORD(STACK[0x1E58]) = v302;
  LODWORD(v150) = LODWORD(STACK[0x1F38]) + 1999893370;
  LODWORD(STACK[0x20F0]) = v150;
  LODWORD(STACK[0x1F38]) = v150 ^ 0x7E76523D ^ v177;
  LODWORD(STACK[0x1F68]) = v176;
  LODWORD(STACK[0x1E50]) = v197;
  LODWORD(v122) = (((v302 + v306 + v122) ^ v176) + v197) ^ LODWORD(STACK[0x1F18]);
  LODWORD(v165) = LODWORD(STACK[0x1D90]) ^ 0x8509E599;
  LODWORD(STACK[0x1EB0]) = v165;
  LODWORD(STACK[0x1EA0]) = v301 ^ 0x146EF265;
  LODWORD(v165) = LODWORD(STACK[0x1F60]) ^ 0xB20D4C50 ^ LODWORD(STACK[0x1E38]) ^ LODWORD(STACK[0x1F28]) ^ LODWORD(STACK[0x2240]) ^ (v165 - (v301 ^ 0x146EF265) + v122);
  LODWORD(v157) = LODWORD(STACK[0x1F70]) ^ 0x9F54328F;
  LODWORD(v159) = LODWORD(STACK[0x2188]) + LODWORD(STACK[0x1F40]) + LODWORD(STACK[0x1D98]);
  LODWORD(STACK[0x1E08]) = v157;
  LODWORD(v159) = v159 - v157;
  LODWORD(v157) = LODWORD(STACK[0x21A8]) ^ 0x59C51F6D;
  LODWORD(STACK[0x1F18]) = v157;
  v307 = STACK[0x1ED0];
  LODWORD(STACK[0x1E38]) = v304 ^ 0x5CA486F;
  LODWORD(v165) = -1663189474 - LODWORD(STACK[0x21B0]) + LODWORD(STACK[0x1EE0]) + (v304 ^ 0x5CA486F) + ((v159 - v157 + v165 - 88252279 - ((2 * (v159 - v157 + v165)) & 0xF57AC112)) ^ LODWORD(STACK[0x2278]));
  LODWORD(STACK[0x1EE0]) = v300;
  LODWORD(v129) = STACK[0x2198];
  LODWORD(v165) = ((v165 ^ v300) + LODWORD(STACK[0x1FD0])) ^ LODWORD(STACK[0x1DA0]);
  v308 = STACK[0x1EE8];
  LODWORD(STACK[0x1F70]) = v298;
  LODWORD(v159) = LODWORD(STACK[0x1F88]) ^ 0x10912BD6;
  LODWORD(v157) = LODWORD(STACK[0x21C8]) ^ 0xF88A66C7;
  LODWORD(STACK[0x1E60]) = v157;
  LODWORD(v165) = LODWORD(STACK[0x21C0]) ^ 0x452A8C8A ^ LODWORD(STACK[0x2028]) ^ ((LODWORD(STACK[0x1DE0]) ^ 0xE629DBF6) + 2035667247 + LODWORD(STACK[0x2010]) - LODWORD(STACK[0x2210]) + LODWORD(STACK[0x1F30]) + ((v157 + v159 + (LODWORD(STACK[0x2178]) ^ 0xD01E622A) + ((v165 + v298 + 1901479783 - ((2 * (v165 + v298)) & 0xE2AC8ECE)) ^ LODWORD(STACK[0x2038])) + 2) ^ LODWORD(STACK[0x1F48])));
  LODWORD(v159) = 2008393531 - LODWORD(STACK[0x1FF0]);
  LODWORD(STACK[0x1F88]) = v198;
  LODWORD(v157) = LODWORD(STACK[0x22A0]) ^ 0x909749B8;
  LODWORD(STACK[0x1DE0]) = v157;
  LODWORD(v165) = (LODWORD(STACK[0x1DC0]) + LODWORD(STACK[0x2238]) + 26715340 + LODWORD(STACK[0x20C8]) - LODWORD(STACK[0x1DD0]) + ((v159 + v198 + v157 + v165) ^ LODWORD(STACK[0x1F00]))) ^ LODWORD(STACK[0x1F08]);
  LODWORD(v157) = LODWORD(STACK[0x1DB8]) ^ 0x6908C157;
  LODWORD(STACK[0x1F08]) = v157;
  LODWORD(v165) = (LODWORD(STACK[0x1F10]) - LODWORD(STACK[0x1EF8]) + ((1948411754 - LODWORD(STACK[0x2230]) - (LODWORD(STACK[0x2008]) ^ 0x950B5B63) - v129 + v308 + (LODWORD(STACK[0x21E0]) ^ 0xCB143F09 ^ (-1547268382 - LODWORD(STACK[0x1DB0]) - LODWORD(STACK[0x21B8]) + ((((v157 - 775234327 + LODWORD(STACK[0x1EF0]) - LODWORD(STACK[0x2168]) - LODWORD(STACK[0x1DA8]) + v165) ^ LODWORD(STACK[0x2180])) + LODWORD(STACK[0x2050])) ^ LODWORD(STACK[0x1F20]))))) ^ LODWORD(STACK[0x1DC8]) ^ 0xB138DFAB)) ^ LODWORD(STACK[0x1FE8]);
  LODWORD(v157) = LODWORD(STACK[0x1ED8]) ^ 0xED34384B;
  LODWORD(v159) = v157 - (LODWORD(STACK[0x21D8]) + LODWORD(STACK[0x2220])) - LODWORD(STACK[0x2190]);
  LODWORD(STACK[0x1EF8]) = v157;
  v309 = LODWORD(STACK[0x1DD8]) + (LODWORD(STACK[0x2000]) ^ 0xDD9E45DF) + 1883965246 - ((2 * (LODWORD(STACK[0x1DD8]) + (LODWORD(STACK[0x2000]) ^ 0xDD9E45DF))) & 0xE0960E7C);
  LODWORD(v124) = STACK[0x21D0];
  HIDWORD(v310) = LODWORD(STACK[0x2248]) ^ 0x7CB533;
  LODWORD(v310) = LODWORD(STACK[0x2248]) ^ 0x81000000;
  v311 = (2 * LODWORD(STACK[0x1E10]) + 795946442) & 0x424B9FF2;
  LODWORD(STACK[0x1FF0]) = LODWORD(STACK[0x1DF8]) ^ 0xE64D7C45;
  LOBYTE(v158) = LODWORD(STACK[0x1FB0]) ^ 0xEF;
  LOBYTE(v122) = LODWORD(STACK[0x1FA8]) ^ 0xA9;
  HIDWORD(v310) = (v310 >> 23) ^ (v124 >> 23) ^ (v124 << 9) & 0xFFFBFFFF ^ ((((v124 >> 9) & 1) << 18) | 0x783A928F) ^ 0x13CB330A;
  LODWORD(v310) = HIDWORD(v310);
  LOBYTE(v177) = LODWORD(STACK[0x2040]) ^ 0x99;
  v312 = LODWORD(STACK[0x2140]) ^ 0x3BE10E36;
  LODWORD(v123) = LODWORD(STACK[0x22E0]) ^ 0x8509E599;
  LODWORD(v124) = LODWORD(STACK[0x22C8]) ^ 0xDFB45230;
  LODWORD(v154) = LODWORD(STACK[0x22F0]) ^ 0xBAD1277C;
  LODWORD(STACK[0x1BE0]) = v309;
  v313 = v309 ^ 0xCD8841D6;
  LODWORD(v129) = STACK[0x2298];
  LODWORD(v176) = (((v307 ^ ((v307 & v312) >> 1)) & v123) >> v158) + ((v307 ^ ((v307 & v312) >> 1)) << v122);
  LODWORD(v176) = (v176 + 435764725 - ((2 * v176) & 0x33F27BEA)) ^ LODWORD(STACK[0x2260]);
  v314 = *(*(&off_279CA5FD0 + v129 - 500) + ((v129 - 386) ^ v307)) ^ 0xCD41F5AA;
  LODWORD(v176) = ((v176 - 113 - ((2 * v176) & 0x1E)) ^ LODWORD(STACK[0x2258]));
  *(STACK[0x6C0] + 4 * v176) = (v310 >> 9) ^ (((v314 ^ ((v314 & v312) >> 1)) & v124) << STACK[0x22C0]) ^ 0x47BC1D49 ^ (((v314 ^ ((v314 & v312) >> 1)) & v154) >> v177);
  v315 = *(*(&off_279CA5FD0 + v129 - 313) + (v307 ^ 0xB5) - 6) ^ 0x3CE9;
  v316 = *(*(&off_279CA5FD0 + v129 - 313) + (v307 ^ 0xB5) - 6) ^ 0x3CE9 ^ (v315 >> 4) ^ (v315 >> 3);
  v317 = (v316 - 2062948967 - ((2 * v316) & 0x1CB32)) ^ LODWORD(STACK[0x21D0]);
  v318 = (v317 - 2122533581 - ((2 * v317) & 0x2F96A66)) ^ LODWORD(STACK[0x2248]);
  *(STACK[0x7B0] + 4 * (13 * v176 - 264 * (((12909 * v176) >> 16) >> 2))) = v313 ^ (v318 + 1883965246 - ((2 * v318) & 0xE0960E7C));
  return (*(STACK[0x22F8] + 8 * ((93 * (v307 != 255)) ^ v129)))();
}

uint64_t sub_26AA72B5C(uint64_t a1, int a2, uint64_t a3, char a4, unint64_t a5)
{
  LODWORD(STACK[0x21D8]) = v6 - v5;
  LODWORD(STACK[0x21E0]) = a2 - v11;
  v17 = STACK[0x1E20];
  LODWORD(STACK[0x2248]) = v13 - ((2 * LODWORD(STACK[0x1E20])) & 0x33F27BEA);
  v18 = STACK[0x1F28];
  v19 = STACK[0x1EF0];
  v20 = LODWORD(STACK[0x2240]) ^ 0x239E33CD;
  v21 = STACK[0x1E30];
  v22 = STACK[0x1F30];
  v23 = STACK[0x1DE8];
  LODWORD(STACK[0x21C8]) ^= LODWORD(STACK[0x1F28]) ^ v15 ^ LODWORD(STACK[0x1FE0]) ^ LODWORD(STACK[0x1F90]) ^ LODWORD(STACK[0x1FC8]) ^ LODWORD(STACK[0x1EF0]) ^ LODWORD(STACK[0x1E30]) ^ v20 ^ LODWORD(STACK[0x2180]) ^ LODWORD(STACK[0x1F18]) ^ LODWORD(STACK[0x1F30]) ^ LODWORD(STACK[0x20C0]) ^ LODWORD(STACK[0x1F70]) ^ LODWORD(STACK[0x20B8]) ^ LODWORD(STACK[0x1DE8]) ^ LODWORD(STACK[0x1FD8]) ^ 0x7EDB3260;
  v24 = STACK[0x1E18];
  LODWORD(STACK[0x1EE8]) = v8 - ((2 * LODWORD(STACK[0x1E18])) & 0xA13CB32);
  v25 = STACK[0x1F60];
  v26 = LODWORD(STACK[0x1F60]) ^ 0xCB6DBF56 ^ LODWORD(STACK[0x1F98]) ^ v16;
  v27 = STACK[0x1F78];
  v28 = v16;
  v29 = STACK[0x1F48];
  v30 = STACK[0x1F20];
  v31 = STACK[0x1F40];
  v32 = STACK[0x1E28];
  v33 = v26 ^ LODWORD(STACK[0x1F48]) ^ LODWORD(STACK[0x1F78]) ^ LODWORD(STACK[0x1F08]) ^ LODWORD(STACK[0x2098]) ^ LODWORD(STACK[0x2058]) ^ LODWORD(STACK[0x1F20]) ^ LODWORD(STACK[0x1F80]) ^ LODWORD(STACK[0x20D0]) ^ LODWORD(STACK[0x1F40]) ^ LODWORD(STACK[0x2188]) ^ v17 ^ LODWORD(STACK[0x1E28]);
  STACK[0x1E20] = v9;
  v34 = v15;
  v35 = STACK[0x1DE0];
  v36 = STACK[0x1E08];
  v37 = STACK[0x1DF0];
  v38 = v24 ^ LODWORD(STACK[0x1DE0]) ^ LODWORD(STACK[0x1E08]) ^ LODWORD(STACK[0x1F50]) ^ LODWORD(STACK[0x1DF0]);
  STACK[0x1ED0] = v10;
  v39 = STACK[0x1E00];
  LODWORD(STACK[0x1FE8]) = v33 ^ v38 ^ LODWORD(STACK[0x1E00]) ^ LODWORD(STACK[0x1F68]) ^ LODWORD(STACK[0x1F88]);
  LODWORD(STACK[0x1ED8]) = LODWORD(STACK[0x2190]) - 2 * (v32 & 0x509E59D ^ STACK[0x2190] & 4);
  LODWORD(STACK[0x1FA0]) = LODWORD(STACK[0x1FA0]) - 1960323216 + ~((2 * v39) & 0x33F27BEA);
  v40 = LODWORD(STACK[0x1E70]) - ((2 * v18) & 0x72E4411E);
  LODWORD(STACK[0x2070]) -= (2 * v21) & 0x33F27BEA;
  LODWORD(STACK[0x1F28]) = LODWORD(STACK[0x2020]) - ((2 * v30) & 0xA13CB32);
  v41 = (v23 - 2062948967 - 2 * (v23 & 0x509E59B ^ STACK[0x1FC0] & 2)) ^ LODWORD(STACK[0x21E8]);
  v42 = STACK[0x21E8];
  LODWORD(STACK[0x1FC0]) = v41 - 514129454 - ((2 * v41) & 0xC2B603A4);
  LODWORD(STACK[0x2020]) = LODWORD(STACK[0x2048]) - ((2 * v19) & 0x33F27BEA);
  LODWORD(STACK[0x2048]) = v37 + 435764725 - ((2 * v37) & 0x33F27BEA);
  LODWORD(STACK[0x21D0]) = v34 - 2062948967 - ((2 * v34) & 0xA13CB32);
  v43 = STACK[0x2260];
  v44 = LODWORD(STACK[0x1F00]) ^ LODWORD(STACK[0x2260]);
  HIDWORD(v45) = v44 ^ 0x55555555;
  LODWORD(v45) = v44 ^ 0x19F93DF0;
  LODWORD(STACK[0x1F20]) = v35 - 2062948967 - 2 * (v35 & 0x509E59D ^ STACK[0x22A0] & 4);
  HIDWORD(v45) = (v45 >> 4) ^ 0x836C7B31;
  LODWORD(v45) = HIDWORD(v45);
  LODWORD(STACK[0x2190]) = (v45 >> 28) + 963780751 - ((2 * (v45 >> 28)) & 0x72E4411E);
  LODWORD(STACK[0x1F60]) = LODWORD(STACK[0x2090]) - ((2 * v25) & 0x33F27BEA);
  LODWORD(STACK[0x2090]) = LODWORD(STACK[0x20A0]) - ((2 * v31) & 0x33F27BEA);
  LODWORD(STACK[0x20A0]) = LODWORD(STACK[0x2060]) - ((2 * LODWORD(STACK[0x1F10])) & 0xA13CB32);
  LODWORD(STACK[0x1F40]) = LODWORD(STACK[0x1E80]) - 2 * (v29 & 0x509E59D ^ STACK[0x1E80] & 4);
  LODWORD(STACK[0x2060]) = v28 - 2062948967 - 2 * (v28 & 0x509E59D ^ STACK[0x2008] & 4);
  LODWORD(STACK[0x1F48]) = LODWORD(STACK[0x2068]) - ((2 * v22) & 0xA13CB32);
  LODWORD(STACK[0x2008]) = v20 - 2062948967 - ((2 * v20) & 0xA13CB32);
  v46 = LODWORD(STACK[0x1E90]) - 55119591 + ~((2 * v27) & 0x72E4411E);
  v47 = LODWORD(STACK[0x2258]) ^ v43;
  v48 = v47 ^ 0x9CF0D86C ^ (v40 + 848671942);
  LODWORD(STACK[0x2240]) = v48;
  LODWORD(STACK[0x22A0]) = v47 ^ 0x9CF0D86C ^ v46;
  v49 = (v36 + 435764725 - ((2 * v36) & 0x33F27BEA)) ^ v43;
  LODWORD(STACK[0x2260]) = v43;
  LODWORD(STACK[0x1F78]) = v49 + 963780751 - ((2 * v49) & 0x72E4411E);
  v50 = (LODWORD(STACK[0x21F8]) - 2 * (STACK[0x1F90] & 0x19F93DFD ^ STACK[0x21F8] & 8) + 920984181) ^ v43;
  LODWORD(STACK[0x1F30]) = v50 + 963780751 - ((2 * v50) & 0x72E4411E);
  v51 = LODWORD(STACK[0x21A0]) - 1001882975 - ((2 * LODWORD(STACK[0x1F80])) & 0x33F27BEA);
  v52 = LODWORD(STACK[0x21B8]) - ((2 * LODWORD(STACK[0x1F50])) & 0xA13CB32);
  LODWORD(STACK[0x1D38]) = 84534687;
  v53 = (LODWORD(STACK[0x2078]) - 2 * (STACK[0x2188] & 0x509E59F ^ STACK[0x2078] & 6) - 1928607999) ^ v42;
  LODWORD(STACK[0x1F80]) = v53 - 514129454 - ((2 * v53) & 0xC2B603A4);
  LODWORD(STACK[0x2188]) = LODWORD(STACK[0x2080]) - ((2 * LODWORD(STACK[0x1E50])) & 0x33F27BEA);
  v54 = LODWORD(STACK[0x21B0]) - ((2 * LODWORD(STACK[0x1FC8])) & 0x33F27BEA);
  v55 = LODWORD(STACK[0x1F18]) - 2062948967 - 2 * (STACK[0x1F18] & 0x509E59B ^ STACK[0x21A8] & 2);
  LODWORD(STACK[0x1FC8]) = LODWORD(STACK[0x2088]) - ((2 * LODWORD(STACK[0x1FE0])) & 0x33F27BEA);
  LODWORD(STACK[0x1F00]) = LODWORD(STACK[0x2100]) - ((2 * LODWORD(STACK[0x1E68])) & 0xA13CB32);
  LODWORD(STACK[0x2080]) = LODWORD(STACK[0x1E48]) + 435764725 - ((2 * LODWORD(STACK[0x1E48])) & 0x33F27BEA);
  v56 = LODWORD(STACK[0x20B0]) - ((2 * LODWORD(STACK[0x1E58])) & 0x33F27BEA);
  v57 = (v55 ^ v42) - 514129454 - ((2 * (v55 ^ v42)) & 0xC2B603A4);
  LODWORD(STACK[0x21B0]) = LODWORD(STACK[0x1E38]) - 2062948967 - ((2 * LODWORD(STACK[0x1E38])) & 0xA13CB32);
  v58 = LODWORD(STACK[0x20E0]) - ((2 * LODWORD(STACK[0x1F68])) & 0xA13CB32);
  v59 = LODWORD(STACK[0x2108]) - ((2 * LODWORD(STACK[0x2180])) & 0xA13CB32);
  v60 = LODWORD(STACK[0x1F08]) + 435764725 - ((2 * LODWORD(STACK[0x1F08])) & 0x33F27BEA);
  LODWORD(STACK[0x1FE0]) = LODWORD(STACK[0x2138]) - ((2 * LODWORD(STACK[0x1FD0])) & 0xA13CB32);
  LODWORD(STACK[0x1FD0]) = LODWORD(STACK[0x2128]) - 2 * (STACK[0x1F88] & 0x19F93DFD ^ STACK[0x2128] & 8);
  LODWORD(STACK[0x1F50]) = LODWORD(STACK[0x2110]) - ((2 * LODWORD(STACK[0x1F70])) & 0x33F27BEA);
  v61 = LODWORD(STACK[0x2198]) - ((2 * LODWORD(STACK[0x2058])) & 0xA13CB32);
  LODWORD(STACK[0x1F18]) = LODWORD(STACK[0x2120]) - ((2 * LODWORD(STACK[0x2028])) & 0x33F27BEA);
  LODWORD(STACK[0x1F70]) = LODWORD(STACK[0x2230]) - ((2 * LODWORD(STACK[0x1E98])) & 0xA13CB32);
  LODWORD(STACK[0x1F68]) = LODWORD(STACK[0x2220]) - ((2 * LODWORD(STACK[0x1E78])) & 0xA13CB32);
  LODWORD(STACK[0x2028]) = ((v61 - 1739830633) ^ v42) - 514129454 - ((2 * ((v61 - 1739830633) ^ v42)) & 0xC2B603A4);
  LODWORD(STACK[0x1F08]) = LODWORD(STACK[0x2130]) - ((2 * LODWORD(STACK[0x1FD8])) & 0x33F27BEA);
  LODWORD(STACK[0x1F10]) = LODWORD(STACK[0x2118]) - ((2 * LODWORD(STACK[0x2010])) & 0xA13CB32);
  LODWORD(STACK[0x1FD8]) = LODWORD(STACK[0x1F98]) - 2062948967 - ((2 * LODWORD(STACK[0x1F98])) & 0xA13CB32);
  v62 = (v59 - 565322352) ^ v42;
  LODWORD(STACK[0x21E8]) = v42;
  v63 = 2 * v62;
  v62 -= 514129454;
  v64 = STACK[0x2208];
  v65 = (((v62 - (v63 & 0xC2B603A4)) ^ v64) & 0x81E84AB3 | ((v62 - (v63 & 0x42B603A4)) ^ v64) & 0x7E17B54C) - 2062948967 - 2 * ((((v62 - (v63 & 0xC2B603A4)) ^ v64) & 0x1084091 | ((v62 - (v63 & 0x42B603A4)) ^ v64) & 0x401A50C) ^ ((v62 - (v63 & 0x42B603A4)) ^ v64) & 4);
  LODWORD(STACK[0x20E0]) = v65;
  v66 = LODWORD(STACK[0x2148]) - ((2 * LODWORD(STACK[0x2050])) & 0x33F27BEA);
  LODWORD(STACK[0x2098]) = LODWORD(STACK[0x2228]) - ((2 * LODWORD(STACK[0x2098])) & 0xA13CB32);
  LODWORD(STACK[0x1F98]) = LODWORD(STACK[0x2150]) - ((2 * LODWORD(STACK[0x1E88])) & 0xA13CB32);
  v67 = LODWORD(STACK[0x1E60]) + 435764725 - ((2 * LODWORD(STACK[0x1E60])) & 0x33F27BEA);
  v68 = v47 ^ v51;
  LODWORD(STACK[0x21B8]) = v47 ^ v51;
  v69 = v42 ^ v64;
  v70 = v42 ^ v64 ^ (v58 - 881090777);
  LODWORD(STACK[0x2050]) = v70;
  v71 = (v68 ^ 0xD829215D ^ v70) - 2062948967 - ((2 * (v68 ^ 0xD829215D ^ v70)) & 0xA13CB32);
  v72 = v42 ^ v64 ^ LODWORD(STACK[0x21D0]);
  LODWORD(STACK[0x2088]) = v72;
  v73 = v42 ^ v64 ^ LODWORD(STACK[0x2060]);
  LODWORD(STACK[0x2078]) = v73;
  v74 = v69 ^ 0x6452E44B;
  v75 = v69 ^ 0x6452E44B ^ (v52 + 1441398779);
  LODWORD(STACK[0x2000]) = v75;
  LODWORD(STACK[0x21D0]) = v57 ^ v64;
  v76 = (v57 ^ v64 ^ v75 ^ v71) - 2062948967 - ((2 * (v57 ^ v64 ^ v75 ^ v71)) & 0xA13CB32);
  v77 = v47 ^ v67;
  LODWORD(STACK[0x2060]) = v47 ^ v67;
  v78 = v47 ^ 0xBC7BC516;
  v79 = v47 ^ 0xBC7BC516 ^ (v54 + 2098954199);
  LODWORD(STACK[0x1F90]) = v79;
  v80 = v74 ^ (LODWORD(STACK[0x1EE8]) - 1238708048);
  LODWORD(STACK[0x21F8]) = v80;
  v81 = ((v76 ^ v79) - 2062948967 - ((2 * (v76 ^ v79)) & 0xA13CB32)) ^ v80;
  v82 = v47 ^ 0xBC7BC516 ^ (LODWORD(STACK[0x2248]) + 1210999052);
  LODWORD(STACK[0x2130]) = v82;
  v83 = (v81 - 2062948967 - ((2 * v81) & 0xA13CB32)) ^ v82;
  v84 = v74 ^ (LODWORD(STACK[0x1F28]) + 1055766120);
  LODWORD(STACK[0x2138]) = v84;
  v85 = (v83 - 2062948967 - ((2 * v83) & 0xA13CB32)) ^ v84;
  v86 = (v85 - 2062948967 - ((2 * v85) & 0xA13CB32)) ^ v48;
  LODWORD(STACK[0x2150]) = -2062948966;
  v87 = v74 ^ (LODWORD(STACK[0x1ED8]) + 2089816249);
  LODWORD(STACK[0x2010]) = v87;
  v88 = (v86 - 2062948966 + ~((2 * v86) & 0xA13CB32)) ^ v87;
  v89 = v47 ^ 0xBC7BC516 ^ LODWORD(STACK[0x2048]);
  LODWORD(STACK[0x2148]) = v89;
  v90 = (v88 - 2062948967 - ((2 * v88) & 0xA13CB32)) ^ v89;
  v91 = v47 ^ 0xBC7BC516 ^ (LODWORD(STACK[0x2070]) - 1762972904);
  v92 = LODWORD(STACK[0x1FC0]) ^ v64;
  LODWORD(STACK[0x2068]) = v92;
  LODWORD(STACK[0x20B0]) = v91;
  v93 = v92 ^ v91;
  LODWORD(STACK[0x2048]) = v93;
  v94 = v93 ^ (v90 - 2062948967 - ((2 * v90) & 0xA13CB32));
  v72 ^= 0x6452E44Bu;
  LODWORD(STACK[0x2180]) = v72;
  v95 = (v94 - 2062948967 - ((2 * v94) & 0xA13CB32)) ^ v72;
  v96 = v47 ^ 0xBC7BC516 ^ LODWORD(STACK[0x1FA0]);
  LODWORD(STACK[0x2220]) = v96;
  v97 = (v95 - 2062948967 - ((2 * v95) & 0xA13CB32)) ^ v96;
  v98 = v74 ^ LODWORD(STACK[0x1F20]);
  LODWORD(STACK[0x2120]) = v98;
  v99 = (v97 - 2062948967 - ((2 * v97) & 0xA13CB32)) ^ v98;
  v100 = v47 ^ 0xBC7BC516 ^ (LODWORD(STACK[0x2020]) + 1726416930);
  LODWORD(STACK[0x2248]) = v100;
  v101 = (v99 - 2062948967 - ((2 * v99) & 0xA13CB32)) ^ v100;
  v102 = v47 ^ 0xBC7BC516 ^ (LODWORD(STACK[0x1F60]) - 412784446);
  LODWORD(STACK[0x2228]) = v102;
  v103 = (v101 - 2062948967 - ((2 * v101) & 0xA13CB32)) ^ v102;
  v104 = v74 ^ (LODWORD(STACK[0x1F40]) + 1278432209);
  LODWORD(STACK[0x2118]) = v104;
  v105 = (v103 - 2062948967 - ((2 * v103) & 0xA13CB32)) ^ v104;
  v106 = STACK[0x2258];
  v107 = LODWORD(STACK[0x1F78]) ^ LODWORD(STACK[0x2258]);
  LODWORD(STACK[0x21A0]) = v107;
  v108 = v107 ^ LODWORD(STACK[0x22A0]) ^ (v105 - 2062948967 - ((2 * v105) & 0xA13CB32));
  v109 = v78 ^ (LODWORD(STACK[0x2090]) + 134117417);
  LODWORD(STACK[0x2110]) = v109;
  v110 = LODWORD(STACK[0x1F30]) ^ v106;
  LODWORD(STACK[0x21A8]) = v110;
  v111 = v106;
  v112 = v109 ^ v110 ^ (v108 - 2062948966 + ~((2 * v108) & 0xA13CB32));
  v113 = v74 ^ (LODWORD(STACK[0x1F48]) + 488128620);
  LODWORD(STACK[0x2128]) = v113;
  v114 = (v112 - 2062948967 - ((2 * v112) & 0xA13CB32)) ^ v113;
  LODWORD(STACK[0x2230]) = v73 ^ 0x6452E44B;
  v115 = (v114 - 2062948967 - ((2 * v114) & 0xA13CB32)) ^ v73 ^ 0x6452E44B;
  v116 = v74 ^ LODWORD(STACK[0x2008]);
  LODWORD(STACK[0x2108]) = v116;
  v117 = LODWORD(STACK[0x1F80]) ^ v64;
  LODWORD(STACK[0x2198]) = v117;
  v118 = v116 ^ v117 ^ (v115 - 2062948967 - ((2 * v115) & 0xA13CB32));
  v119 = v78 ^ (LODWORD(STACK[0x1FC8]) + 456791570);
  LODWORD(STACK[0x1F88]) = v119;
  v120 = (v118 - 2062948967 - ((2 * v118) & 0xA13CB32)) ^ v119;
  LODWORD(STACK[0x2100]) = v78 ^ v60;
  v121 = (v120 - 2062948967 - ((2 * v120) & 0xA13CB32)) ^ v78 ^ v60;
  v122 = (LODWORD(STACK[0x2210]) - ((2 * LODWORD(STACK[0x20B8])) & 0x33F27BEA) - 1599902522) ^ LODWORD(STACK[0x2260]);
  v123 = (LODWORD(STACK[0x21C0]) ^ 0x452A8C8A) - 2062948967 - 2 * ((LODWORD(STACK[0x21C0]) ^ 0x452A8C8A) & 0x509E59D ^ STACK[0x21C0] & 4);
  v124 = LODWORD(STACK[0x2160]) - 2 * (STACK[0x20C8] & 0x509E59B ^ STACK[0x2160] & 2);
  v125 = LODWORD(STACK[0x20D8]) - ((2 * LODWORD(STACK[0x20C0])) & 0x33F27BEA);
  v126 = LODWORD(STACK[0x20F8]) - 2 * (STACK[0x20D0] & 0x19F93DF7 ^ STACK[0x20F8] & 2);
  v127 = LODWORD(STACK[0x1EA0]) + 435764725 - ((2 * LODWORD(STACK[0x1EA0])) & 0x33F27BEA);
  LODWORD(STACK[0x2058]) = v78 ^ LODWORD(STACK[0x2080]);
  v128 = LODWORD(STACK[0x1FD0]) + 1243398293;
  LODWORD(STACK[0x2008]) = v78 ^ (v56 - 1535557362);
  v129 = v78 ^ v128;
  LODWORD(STACK[0x20F8]) = v78 ^ v128;
  v130 = LODWORD(STACK[0x1F50]) + 1212401160;
  LODWORD(STACK[0x20C0]) = v78 ^ (LODWORD(STACK[0x1F18]) - 1889266286);
  v131 = v78 ^ v130;
  LODWORD(STACK[0x1FC8]) = v78 ^ v130;
  v132 = LODWORD(STACK[0x1F08]) - 1130503394;
  LODWORD(STACK[0x1DD8]) = v78 ^ (v66 + 532629730);
  v133 = v78 ^ v132;
  LODWORD(STACK[0x20D0]) = v78 ^ v132;
  v134 = v78 ^ (v125 + 1788062089);
  v135 = v78 ^ (v126 - 1611834427);
  LODWORD(STACK[0x1FD0]) = v135;
  LODWORD(STACK[0x1DE0]) = v78 ^ v127;
  v136 = LODWORD(STACK[0x20E8]) - 2 * (STACK[0x1EA8] & 0x509E59B ^ STACK[0x20E8] & 2);
  LODWORD(STACK[0x2160]) = v74 ^ (LODWORD(STACK[0x20A0]) - 170638042);
  LODWORD(STACK[0x2080]) = v74 ^ (LODWORD(STACK[0x1F00]) + 717015540);
  LODWORD(STACK[0x1F78]) = v74 ^ LODWORD(STACK[0x21B0]);
  LODWORD(STACK[0x20B8]) = v74 ^ (LODWORD(STACK[0x1FE0]) - 1871918692);
  v137 = LODWORD(STACK[0x1F70]) + 784729160;
  LODWORD(STACK[0x20C8]) = v74 ^ (LODWORD(STACK[0x1F68]) + 694302025);
  LODWORD(STACK[0x1DE8]) = v74 ^ v137;
  v138 = LODWORD(STACK[0x1F10]) + 1711646244;
  v139 = v74 ^ LODWORD(STACK[0x1FD8]);
  LODWORD(STACK[0x1FC0]) = v139;
  LODWORD(STACK[0x1E38]) = v74 ^ v138;
  v140 = LODWORD(STACK[0x1F98]) + 618989414;
  v141 = v74 ^ (LODWORD(STACK[0x2098]) + 1242888660);
  LODWORD(STACK[0x1F80]) = v141;
  LODWORD(STACK[0x21B0]) = v74 ^ v123;
  LODWORD(STACK[0x20A0]) = v74 ^ (v124 - 475890471);
  LODWORD(STACK[0x2098]) = v74 ^ v140;
  LODWORD(STACK[0x2090]) = v74 ^ (v136 - 24788511);
  v142 = (v121 - 2062948967 - ((2 * v121) & 0xA13CB32)) ^ v65;
  v143 = (v142 - 2062948967 - ((2 * v142) & 0xA13CB32)) ^ v131;
  v144 = (v143 - 2062948967 - ((2 * v143) & 0xA13CB32)) ^ v133;
  v145 = LODWORD(STACK[0x2028]) ^ v64;
  LODWORD(STACK[0x2210]) = v145;
  v146 = v145 ^ v139 ^ (v144 - 2062948967 - ((2 * v144) & 0xA13CB32));
  v147 = (v146 - 2062948967 - ((2 * v146) & 0xA13CB32)) ^ v129;
  v148 = (v147 - 2062948967 - ((2 * v147) & 0xA13CB32)) ^ v141;
  LODWORD(STACK[0x20E8]) = v77 ^ 0xBC7BC516;
  v149 = (v148 - 2062948967 - ((2 * v148) & 0xA13CB32)) ^ v77 ^ 0xBC7BC516;
  v150 = (v149 - 2062948967 - ((2 * v149) & 0xA13CB32)) ^ v135;
  v151 = v150 - 2062948967 - ((2 * v150) & 0xA13CB32);
  v152 = (v122 + 963780751 - ((2 * v122) & 0x72E4411E)) ^ v111;
  LODWORD(STACK[0x21C0]) = v152;
  LODWORD(STACK[0x1E28]) = v134;
  LODWORD(STACK[0x1FE0]) = v152 ^ v134;
  LODWORD(STACK[0x20D8]) = v152 ^ v134 ^ 0x7C225633 ^ v151;
  v153 = STACK[0x22C0];
  v154 = STACK[0x1E20];
  v155 = STACK[0x1E20] << STACK[0x22C0];
  v156 = STACK[0x1ED0];
  v157 = ((STACK[0x2238] & (STACK[0x1E20] << v153)) >> v153) ^ ((STACK[0x2238] & (STACK[0x1ED0] >> a4)) << a4);
  v158 = STACK[0x2140];
  v159 = (LODWORD(STACK[0x2140]) >> 1) ^ 0x1DF0871B;
  LODWORD(STACK[0x1CE0]) = 1004604980;
  v160 = v158 ^ 0x3BE10E34;
  v161 = v159 & (((v157 ^ ((v157 & v14) >> 1)) & (v158 ^ 0x3BE10E34)) >> 2) ^ v157 ^ ((v157 & v14) >> 1);
  v162 = v159 & ((((v158 >> 1) ^ 0x1DF08718) & (v158 ^ 0x3BE10E34)) >> 2);
  LODWORD(STACK[0x1CD8]) = 1004604976;
  LODWORD(STACK[0x2140]) = v158;
  v163 = v158 ^ 0x3BE10E30;
  v164 = v162 & ((v161 & (v158 ^ 0x3BE10E30)) >> 4) ^ v161;
  v165 = STACK[0x2280];
  v166 = STACK[0x2280] << v7;
  v167 = ((STACK[0x1EB8] & (a5 >> v12)) << v12) + ((STACK[0x1EB8] & v166) >> v7);
  v168 = LODWORD(STACK[0x2218]) ^ 0x16DB9A30;
  v169 = v167 ^ ((v167 & v168) >> 1);
  v170 = (LODWORD(STACK[0x2218]) >> 1) ^ 0xB6DCD18;
  LODWORD(STACK[0x1CD0]) = v170 & ((v169 & v168) >> 2) ^ v169 ^ 0x7DD0FCD0 ^ v170 & ((((v168 & (((v170 & ((v169 & v168) >> 2) ^ v169) & v168) >> 1)) >> ((STACK[0x2218] & 0x39 ^ 0xF6) + (STACK[0x2218] & 0x39 ^ 0xCFu) + 60)) & v168) >> 2);
  v171 = ((STACK[0x1EB0] & (a5 >> v12)) << v12) ^ ((STACK[0x1EB0] & (v154 << v7)) >> v7);
  v172 = v159 & (((v171 ^ ((v171 & v14) >> 1)) & v160) >> 2) ^ v171 ^ ((v171 & v14) >> 1);
  v173 = v162 & ((v172 & v163) >> 4) ^ v172;
  v174 = ((STACK[0x2168] & STACK[0x1BE8]) >> v153) + ((STACK[0x2168] & (v156 >> a4)) << a4);
  v175 = v174 ^ ((v174 & v168) >> 1);
  v176 = v170 & ((v175 & v168) >> 2);
  v177 = v176 & 1;
  if ((v176 & 1 & v175) != 0)
  {
    v177 = -v177;
  }

  v178 = (v177 + v175) ^ v176 & 0x3FFFFFFE;
  v179 = ((STACK[0x1EF8] & (v156 >> v12)) << v12) ^ ((STACK[0x1EF8] & STACK[0x1BE8]) >> v153);
  v180 = v170 & ((v170 & v168) >> 2);
  LODWORD(STACK[0x1E18]) = v178 ^ 0x7DD0FCD0 ^ v180 & ((v178 & v168) >> 4);
  v181 = v159 & (((v179 ^ ((v179 & v14) >> 1)) & v160) >> 2) ^ v179 ^ ((v179 & v14) >> 1);
  v182 = v162 & ((v181 & v163) >> 4) ^ v181;
  v183 = ((STACK[0x1EC0] & (v154 << v7)) >> v7) + ((STACK[0x1EC0] & (a5 >> a4)) << a4);
  v184 = v170 & (((v183 ^ ((v183 & v168) >> 1)) & v168) >> 2) ^ v183 ^ ((v183 & v168) >> 1);
  v185 = STACK[0x1EC8];
  LODWORD(STACK[0x1DD0]) = v184 ^ 0x7DD0FCD0 ^ v180 & ((v184 & v168) >> 4);
  v186 = ((v185 & v155) >> v153) | ((v185 & (a5 >> a4)) << a4);
  v187 = v170 & (((v186 ^ ((v186 & v168) >> 1)) & v168) >> 2) ^ v186 ^ ((v186 & v168) >> 1);
  v188 = v180 & ((v187 & v168) >> 4) ^ v187;
  v189 = ((STACK[0x1EE0] & v166) >> v7) | ((STACK[0x1EE0] & (v156 >> v12)) << v12);
  v190 = (((v189 ^ ((v189 & v14) >> 1)) & v14) >> 2) & (v14 >> 1) ^ v189 ^ ((v189 & v14) >> 1);
  LODWORD(STACK[0x1F48]) = v190 ^ 0x7DD0FCD0 ^ ((((v159 & ((v190 & v160) >> 2) & v14) >> (((v159 & ((v190 & v160) >> 2) & 0xBF ^ 0xBF) + (v159 & ((v190 & v160) >> 2) & 0xBF)) ^ 0xBE)) & v14) >> 1);
  v191 = ((((LODWORD(STACK[0x2038]) ^ 0x71564766) & v168) >> 1) + 1901479783 - ((LODWORD(STACK[0x2038]) ^ 0x71564766) & v168 & 0xE2AC8ECE)) ^ LODWORD(STACK[0x2038]);
  v192 = ((v191 & a5) >> a4) ^ ((v191 & v165) << v7);
  LODWORD(STACK[0x2028]) = v192 - 1761943726 - ((2 * v192) & 0x2DF5BEA4);
  LODWORD(STACK[0x1E30]) = v173;
  v193 = v173 ^ 0x44FDDC44 ^ (((v173 & v168) >> 1) + 1157487684 - (v173 & v168 & 0x89FBB888));
  LODWORD(STACK[0x1DC8]) = v164 ^ 0x8509E599;
  v194 = (((v164 & v14) >> 1) - 2062948967 - (v164 & v14 & 0xA13CB32)) ^ v164 ^ 0x8509E599;
  LODWORD(STACK[0x1DC0]) = v182 ^ 0x8509E599;
  v195 = (((v182 & v14) >> 1) - 2062948967 - (v182 & v14 & 0xA13CB32)) ^ v182 ^ 0x8509E599;
  LODWORD(STACK[0x2070]) = v188 ^ 0x8509E599;
  v196 = (((v188 & v168) >> 1) - 2062948967 - (v188 & v168 & 0xA13CB32)) ^ v188 ^ 0x8509E599;
  v197 = (((v194 & v156) >> v12) | ((v194 & v154) << v153)) ^ LODWORD(STACK[0x2210]) ^ (((v193 & v165) << v153) + ((v193 & a5) >> a4)) ^ ((v195 & v156) >> v12) ^ ((v195 & v154) << v7) ^ (((v196 & a5) >> v12) | ((v196 & v165) << v7));
  v198 = (v197 - 2062948967 - ((2 * v197) & 0xA13CB32)) ^ LODWORD(STACK[0x20E0]);
  v199 = LODWORD(STACK[0x21D0]) ^ LODWORD(STACK[0x2100]) ^ (v198 - 2062948967 - ((2 * v198) & 0xA13CB32));
  v200 = LODWORD(STACK[0x21B8]) ^ 0xBC7BC516;
  LODWORD(STACK[0x21B8]) = v200;
  v201 = LODWORD(STACK[0x2198]) ^ v200 ^ (v199 - 2062948967 - ((2 * v199) & 0xA13CB32));
  v202 = (v201 - 2062948967 - ((2 * v201) & 0xA13CB32)) ^ LODWORD(STACK[0x2000]);
  v203 = LODWORD(STACK[0x21A0]) ^ LODWORD(STACK[0x2228]) ^ (v202 - 2062948967 - ((2 * v202) & 0xA13CB32));
  v204 = STACK[0x2150];
  v205 = (v203 + LODWORD(STACK[0x2150]) + ~((2 * v203) & 0xA13CB32)) ^ LODWORD(STACK[0x2120]);
  v206 = (v205 - 2062948967 - ((2 * v205) & 0xA13CB32)) ^ LODWORD(STACK[0x2148]);
  v207 = (v206 - 2062948967 - ((2 * v206) & 0xA13CB32)) ^ LODWORD(STACK[0x2138]);
  v208 = LODWORD(STACK[0x2048]) ^ (v207 - 2062948967 - ((2 * v207) & 0xA13CB32));
  v209 = (v208 - 2062948967 - ((2 * v208) & 0xA13CB32)) ^ LODWORD(STACK[0x2220]);
  v210 = (v209 - 2062948967 - ((2 * v209) & 0xA13CB32)) ^ LODWORD(STACK[0x2130]);
  v211 = LODWORD(STACK[0x2298]) + 1393;
  v212 = (LODWORD(STACK[0x2298]) + 1595215315) & 0xA0EAF47D;
  LODWORD(STACK[0x2238]) = v212;
  v213 = (v212 - 259021735) ^ LODWORD(STACK[0x2170]);
  LODWORD(STACK[0x2020]) = v213;
  v214 = v213 ^ (v210 + 86842116 - ((2 * v210) & 0xA5A3608));
  v215 = (v214 - 2062948967 - ((2 * v214) & 0xA13CB32)) ^ LODWORD(STACK[0x21F8]);
  v216 = (v215 - 2062948967 - ((2 * v215) & 0xA13CB32)) ^ LODWORD(STACK[0x2240]);
  v217 = (v216 - 2062948967 - ((2 * v216) & 0xA13CB32)) ^ LODWORD(STACK[0x2010]);
  v218 = (v217 - 2062948967 - ((2 * v217) & 0xA13CB32)) ^ LODWORD(STACK[0x2180]);
  v219 = (v218 - 2062948967 - ((2 * v218) & 0xA13CB32)) ^ LODWORD(STACK[0x2248]);
  v220 = (v219 - 2062948967 - ((2 * v219) & 0xA13CB32)) ^ LODWORD(STACK[0x2110]);
  v221 = (v220 - 2062948967 - ((2 * v220) & 0xA13CB32)) ^ LODWORD(STACK[0x22A0]);
  v222 = LODWORD(STACK[0x21A8]) ^ LODWORD(STACK[0x2118]) ^ (v221 + v204 + ~((2 * v221) & 0xA13CB32));
  v223 = (v222 - 2062948967 - ((2 * v222) & 0xA13CB32)) ^ LODWORD(STACK[0x2230]);
  v224 = (v223 - 2062948967 - ((2 * v223) & 0xA13CB32)) ^ LODWORD(STACK[0x2128]);
  v225 = (v224 + v204 + ~((2 * v224) & 0xA13CB32)) ^ LODWORD(STACK[0x2108]);
  v226 = (v225 - 2062948967 - ((2 * v225) & 0xA13CB32)) ^ LODWORD(STACK[0x1F90]);
  v227 = LODWORD(STACK[0x2050]) ^ 0x6452E44B;
  LODWORD(STACK[0x1F40]) = v227;
  v228 = (v226 - 2062948967 - ((2 * v226) & 0xA13CB32)) ^ v227;
  v229 = (v228 - 2062948967 - ((2 * v228) & 0xA13CB32)) ^ LODWORD(STACK[0x1F88]);
  v230 = (v229 - 2062948967 - ((2 * v229) & 0xA13CB32)) ^ LODWORD(STACK[0x20F8]);
  v231 = (v230 - 2062948967 - ((2 * v230) & 0xA13CB32)) ^ LODWORD(STACK[0x1FC8]);
  v232 = (v231 - 2062948967 - ((2 * v231) & 0xA13CB32)) ^ LODWORD(STACK[0x1FC0]);
  v233 = (v232 - 2062948967 - ((2 * v232) & 0xA13CB32)) ^ LODWORD(STACK[0x20D0]);
  v234 = (v233 - 2062948967 - ((2 * v233) & 0xA13CB32)) ^ LODWORD(STACK[0x1F80]);
  v235 = (v234 - 2062948967 - ((2 * v234) & 0xA13CB32)) ^ LODWORD(STACK[0x1FD0]);
  v236 = (v235 - 2062948967 - ((2 * v235) & 0xA13CB32)) ^ LODWORD(STACK[0x20E8]);
  v237 = STACK[0x6C0];
  LODWORD(STACK[0x1F98]) = LODWORD(STACK[0x1FE0]) ^ 0x2D189C14 ^ (v236 - 2062948967 - ((2 * v236) & 0xA13CB32));
  v238 = *STACK[0x22D0] & 0x1F9D3120;
  v239 = *STACK[0x22E8];
  STACK[0x1CC8] = v238;
  STACK[0x1CC0] = v239;
  LODWORD(v238) = *(v239 + v238);
  v240 = -812407749 * ((-812407749 * ((v238 ^ STACK[0x1C50]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ STACK[0x1C50]) & 0x7FFFFFFF)) >> 16));
  LODWORD(v240) = *STACK[0x1C50] ^ *(STACK[0x1C80] + (v240 >> 24)) ^ *(STACK[0x1C78] + (v240 >> 24)) ^ *(STACK[0x1D30] + (v240 >> 24)) ^ v240 ^ (51 * (v240 >> 24)) ^ 0xFFFFFF81;
  v241 = -812407749 * ((-812407749 * ((v238 ^ STACK[0x1C58]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ STACK[0x1C58]) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v240) = *(STACK[0x21F0] + ((((v240 & 0x80) != 0) | (2 * v240)) ^ 0x3BLL));
  v242 = (((v240 ^ (4 * v240)) + 88) << 16) | ((*STACK[0x1C58] ^ *(STACK[0x1C80] + (v241 >> 24)) ^ *(STACK[0x1C78] + (v241 >> 24)) ^ v241 ^ *(STACK[0x1D30] + (v241 >> 24)) ^ (51 * (v241 >> 24)) ^ 0xE) << 24);
  v243 = -812407749 * ((-812407749 * ((v238 ^ STACK[0x1C10]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ STACK[0x1C10]) & 0x7FFFFFFF)) >> 16));
  v244 = *(&off_279CA5FD0 + (v211 ^ 0x747));
  v245 = v243 >> 24;
  v246 = *(&off_279CA5FD0 + v211 - 1830);
  v247 = *(&off_279CA5FD0 + (v211 ^ 0x74A)) - 8;
  LODWORD(v243) = *(v244 + (v243 >> 24)) ^ v243 ^ *(v245 + v246 + 1) ^ *(v247 + v245) ^ *STACK[0x1C10];
  HIDWORD(v248) = v243 ^ v245;
  LODWORD(v248) = (v243 ^ (-119 * v245)) << 24;
  v249 = ((v248 >> 27) ^ 0xA2) + ~*(STACK[0x2288] + ((v248 >> 27) ^ 0xF5));
  v250 = -812407749 * ((-812407749 * ((v238 ^ STACK[0x1C68]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ STACK[0x1C68]) & 0x7FFFFFFF)) >> 16));
  v251 = v250 >> 24;
  LODWORD(v250) = *((v250 >> 24) + v246 + 1) ^ *(v244 + (v250 >> 24)) ^ *(v247 + (v250 >> 24)) ^ v250 ^ *STACK[0x1C68];
  HIDWORD(v248) = v250 ^ v251;
  LODWORD(v248) = (v250 ^ (-119 * v251)) << 24;
  LOBYTE(v251) = v248 >> 27;
  v252 = -812407749 * ((-812407749 * ((v238 ^ STACK[0x1D08]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ STACK[0x1D08]) & 0x7FFFFFFF)) >> 16));
  v253 = v252 >> 24;
  LODWORD(v252) = *((v252 >> 24) + v246 + 1) ^ *(v244 + (v252 >> 24)) ^ v252 ^ *(v247 + (v252 >> 24)) ^ *STACK[0x1D08];
  HIDWORD(v248) = v252 ^ (9 * v253);
  LODWORD(v248) = (v252 ^ (-119 * v253)) << 24;
  LODWORD(v252) = *(STACK[0x2158] + ((v248 >> 31) ^ 0xE3));
  HIDWORD(v248) = ~v252;
  LODWORD(v248) = v252 << 24;
  LODWORD(v252) = (((39 - ((v248 >> 25) ^ 0xFFFFFFC1)) & 0x22) + ((((v248 >> 25) ^ 0xFFFFFFC1) - 40) & 0x22)) ^ (-75 * ((((v248 >> 25) ^ 0xFFFFFFC1) - 40) ^ 0x46));
  v254 = -812407749 * ((-812407749 * ((v238 ^ STACK[0x1C08]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ STACK[0x1C08]) & 0x7FFFFFFF)) >> 16));
  v255 = *STACK[0x1C08] ^ *(v244 + (v254 >> 24)) ^ *((v254 >> 24) + v246 + 1) ^ *(v247 + (v254 >> 24)) ^ v254 ^ (-119 * BYTE3(v254)) ^ 0xA5;
  LODWORD(v251) = ((((*(STACK[0x2268] + (v251 ^ 0x5ALL)) ^ 0x20) + 96) ^ 0xD9) << 16) | (((~(2 * v252) + v252) ^ 0xE6 ^ *(STACK[0x22A8] + (((((39 - ((v248 >> 25) ^ 0xC1)) & 0x22) + ((((v248 >> 25) ^ 0xC1) - 40) & 0x22)) ^ (-75 * ((((v248 >> 25) ^ 0xC1) - 40) ^ 0x46))) ^ 0x70))) << 24);
  v256 = STACK[0x1C20];
  v257 = -812407749 * ((-812407749 * ((v238 ^ v256) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ v256) & 0x7FFFFFFF)) >> 16));
  LODWORD(v251) = v251 & 0xFFFF00FF | ((((59 * ((59 * (v238 ^ v256)) ^ ((-812407749 * ((v238 ^ v256) & 0x7FFFFFFF)) >> 16))) ^ *v256 ^ (-119 * BYTE3(v257)) ^ *(v244 + (v257 >> 24)) ^ *((v257 >> 24) + v246 + 1) ^ *(v247 + (v257 >> 24))) ^ 0x50) << 8);
  v258 = -812407749 * ((-812407749 * ((v238 ^ STACK[0x1C38]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ STACK[0x1C38]) & 0x7FFFFFFF)) >> 16));
  v259 = *(STACK[0x1C80] + (v258 >> 24)) ^ *STACK[0x1C38] ^ v258 ^ *(STACK[0x1C78] + (v258 >> 24)) ^ *(STACK[0x1D30] + (v258 >> 24)) ^ (51 * (v258 >> 24));
  v260 = (*(STACK[0x1C80] + (v258 >> 24)) ^ *STACK[0x1C38] ^ v258 ^ *(STACK[0x1C78] + (v258 >> 24)) ^ *(STACK[0x1D30] + (v258 >> 24)) ^ (51 * BYTE3(v258))) | (v255 << 16);
  v261 = STACK[0x1C18];
  v262 = -812407749 * ((-812407749 * ((v238 ^ v261) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ v261) & 0x7FFFFFFF)) >> 16));
  v263 = (51 * BYTE3(v262)) ^ (59 * ((59 * (v238 ^ v261)) ^ ((-812407749 * ((v238 ^ v261) & 0x7FFFFFFF)) >> 16))) ^ *v261 ^ *(STACK[0x1C80] + (v262 >> 24)) ^ *(STACK[0x1C78] + (v262 >> 24)) ^ *(STACK[0x1D30] + (v262 >> 24));
  v264 = -812407749 * ((-812407749 * ((v238 ^ STACK[0x1C48]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ STACK[0x1C48]) & 0x7FFFFFFF)) >> 16));
  v265 = ((((v249 ^ 0x1D) + 96) ^ 0xFD) << 16) | ((*STACK[0x1C48] ^ *(STACK[0x1C80] + (v264 >> 24)) ^ *(STACK[0x1C78] + (v264 >> 24)) ^ *(STACK[0x1D30] + (v264 >> 24)) ^ (v264 ^ (51 * BYTE3(v264))) ^ 0x74) << 8);
  v266 = STACK[0x1C70];
  v267 = -812407749 * ((-812407749 * ((v238 ^ v266) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ v266) & 0x7FFFFFFF)) >> 16));
  v268 = v260 ^ 0xB7;
  v269 = (((v260 ^ 0xB7) & 0x85) + (v259 & 0x85u) + 60160 + STACK[0x1BF0]);
  v270 = *v269;
  v271 = -812407749 * ((-812407749 * ((v269 ^ v238) & 0x7FFFFFFF)) ^ ((-812407749 * ((v269 ^ v238) & 0x7FFFFFFF)) >> 16));
  v272 = *(&off_279CA5FD0 + v211 - 1760) - 8;
  v273 = *(&off_279CA5FD0 + (v211 ^ 0x735));
  v274 = *(&off_279CA5FD0 + v211 - 1787) - 12;
  v275 = v272[v271 >> 24] ^ v270 ^ *(v273 + (v271 >> 24) + 2) ^ v274[(v271 >> 24) + 2] ^ v271;
  HIDWORD(v248) = v275 ^ (5 * (v271 >> 24));
  LODWORD(v248) = (v275 ^ (85 * (v271 >> 24))) << 24;
  v276 = v242 & 0xFFFF00FF | (((*v266 ^ *(STACK[0x1C80] + (v267 >> 24)) ^ *(STACK[0x1C78] + (v267 >> 24)) ^ *(STACK[0x1D30] + (v267 >> 24)) ^ (59 * ((59 * (v238 ^ v266)) ^ ((-812407749 * ((v238 ^ v266) & 0x7FFFFFFF)) >> 16))) ^ (51 * ((-812407749 * ((-812407749 * ((v238 ^ v266) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ v266) & 0x7FFFFFFF)) >> 16))) >> 24))) ^ 0x18) << 8);
  v277 = ((((*(STACK[0x2290] + ((-75 * v263) ^ 0x31)) ^ 0x6C) + 125) ^ 0x3C) << 8) | (((((((v248 >> 27) ^ 0xA2) + ~*(STACK[0x2288] + ((v248 >> 27) ^ 0xF5))) ^ 0x1D) + 96) ^ 0xD2) << 24);
  v278 = -812407749 * ((-812407749 * ((v238 ^ STACK[0x1C28]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ STACK[0x1C28]) & 0x7FFFFFFF)) >> 16));
  v279 = v278 >> 24;
  LODWORD(v278) = *((v278 >> 24) + v246 + 1) ^ *(v244 + (v278 >> 24)) ^ v278 ^ *(v247 + (v278 >> 24)) ^ *STACK[0x1C28];
  HIDWORD(v248) = v278 ^ (9 * v279);
  LODWORD(v248) = (v278 ^ (-119 * v279)) << 24;
  LODWORD(v278) = *(STACK[0x21F0] + ((v248 >> 31) ^ 0xEFLL));
  v280 = (v278 << 26) ^ (v278 << 24) | v265;
  v281 = -812407749 * ((-812407749 * ((v238 ^ STACK[0x1C40]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ STACK[0x1C40]) & 0x7FFFFFFF)) >> 16));
  LODWORD(v279) = v281 ^ *STACK[0x1C40];
  v281 >>= 24;
  v282 = STACK[0x2180];
  HIDWORD(v248) = v279 ^ (85 * v281) ^ v272[v281] ^ *(v273 + v281 + 2) ^ v274[v281 + 2];
  LODWORD(v248) = (v279 ^ (51 * v281) ^ *(STACK[0x1C80] + v281) ^ *(STACK[0x1C78] + v281) ^ *(STACK[0x1D30] + v281)) << 24;
  v283 = STACK[0x1FF8] + ((v248 >> 31) ^ 0xE3);
  v284 = (~*(v283 + 1063) >> 1) | (~*(v283 + 1063) << 7);
  v285 = STACK[0x1C30];
  v286 = -812407749 * ((-812407749 * ((v238 ^ v285) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ v285) & 0x7FFFFFFF)) >> 16));
  STACK[0x1BD8] = v272;
  LOBYTE(v270) = *v285 ^ v272[v286 >> 24];
  v287 = (v286 >> 24) + 2;
  STACK[0x1BD0] = v273;
  LOBYTE(v270) = v270 ^ *(v273 + v287);
  STACK[0x1BC8] = v274;
  v288 = v280 & 0xFFFFFF00 | (v270 ^ v286 ^ v274[v287] ^ (85 * BYTE3(v286))) ^ 0xCF;
  v289 = -812407749 * ((-812407749 * ((v238 ^ STACK[0x1C60]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ STACK[0x1C60]) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v238) = *STACK[0x1C60];
  STACK[0x1D00] = v244;
  LOBYTE(v238) = v238 ^ *(v244 + (v289 >> 24));
  STACK[0x1CF8] = v246;
  LOBYTE(v270) = *((v289 >> 24) + v246 + 1);
  STACK[0x1CF0] = v247;
  LOBYTE(v289) = v238 ^ v270 ^ *(v247 + (v289 >> 24)) ^ v289 ^ (-119 * BYTE3(v289)) ^ 0x93;
  v290 = v276 & 0xFFFFFF00 | v289;
  LODWORD(v289) = v290 & 0x509E5B9 ^ v289 & 0x20;
  LODWORD(v238) = v290 - 2062948967;
  v291 = STACK[0x2058];
  LODWORD(v244) = v238 - 2 * v289;
  LODWORD(v289) = v277 | v268;
  LOBYTE(v238) = (v244 ^ 0x99) + ((21 - (v277 | v268)) ^ 0x9B);
  v292 = (v251 & 0xFFFFFF00 | ((v284 ^ 0xBE) - 40) ^ 0x2B) + 2097152000;
  v293 = STACK[0x1D38];
  v294 = v292 - 2062948967 - 2 * (v292 & STACK[0x1D38] ^ (((v284 ^ 0xBE) - 40) ^ 0x2B) & 6);
  LODWORD(v251) = v288 + 1476395008;
  LODWORD(v238) = ((v288 ^ v238 ^ 0x7F) + ((v292 - 103 - 2 * (v292 & STACK[0x1D38] ^ (((v284 ^ 0xBE) - 40) ^ 0x2B) & 6)) ^ 0x66) - 33);
  LODWORD(STACK[0x1F50]) = 16843009 * v238 + 1250370232 - ((33686018 * v238) & 0x950E4570);
  v295 = STACK[0x2198];
  LODWORD(v238) = (v295 - 2062948967 - ((2 * v295) & 0xA13CB32)) ^ v282;
  v296 = v238 - 2062948967 - ((2 * v238) & 0xA13CB32);
  LODWORD(STACK[0x1DB8]) = LODWORD(STACK[0x21C0]) - 2062948967 - ((2 * LODWORD(STACK[0x21C0])) & 0xA13CB32);
  LODWORD(v238) = LODWORD(STACK[0x21A0]) - 2062948967 - ((2 * LODWORD(STACK[0x21A0])) & 0xA13CB32);
  v297 = v289 - 2062948967 - 2 * (v289 & v293 ^ v268 & 6);
  v298 = LODWORD(STACK[0x2258]) ^ 0xB3CE5681 ^ LODWORD(STACK[0x2190]);
  LODWORD(v289) = (LODWORD(STACK[0x2188]) + 1910689184) ^ LODWORD(STACK[0x2260]);
  v299 = LODWORD(STACK[0x2258]) ^ 0xBC7BC516 ^ v289;
  v300 = v289 ^ 0xFB59397 ^ LODWORD(STACK[0x2190]);
  v301 = (2 * v300) & 0xA13CB32;
  LODWORD(v289) = (-1764736117 * (v294 ^ (v300 - 2062948967 - v301))) ^ ((-1764736117 * (v294 ^ (v300 - 2062948967 - v301))) >> 16);
  LODWORD(v273) = v289 ^ (v289 >> 8);
  LODWORD(v289) = -1995247035 * (v273 ^ v251) - ((-1995247035 * (v273 ^ v251)) >> 16);
  v302 = LODWORD(STACK[0x2068]) - 2062948967 - ((2 * LODWORD(STACK[0x2068])) & 0xA13CB32);
  LOBYTE(v279) = (v295 + (LODWORD(STACK[0x21E8]) ^ 0xF9)) & 0x10;
  v303 = ((v289 ^ (v289 >> 8)) - 2062948967 - ((2 * (v289 ^ (v289 >> 8))) & 0xA13CB32)) ^ v244;
  v304 = (484968295 * v303 - ((484968295 * v303) >> 16)) ^ ((484968295 * v303 - ((484968295 * v303) >> 16)) >> 8);
  LODWORD(v279) = 35567641 * (v304 + (v297 ^ 0x8509E599)) + ((35567641 * (v304 + (v297 ^ 0x8509E599))) >> ((v279 ^ 0x10u) + v279));
  LODWORD(v246) = (v279 ^ (v279 >> 8)) - v237 - 2062948967 - ((2 * ((v279 ^ (v279 >> 8)) - v237)) & 0xA13CB32);
  LODWORD(v279) = (-1764736117 * (v294 ^ v296)) ^ ((-1764736117 * (v294 ^ v296)) >> 16);
  v305 = ((v279 ^ (v279 >> 8)) + v251 - 2 * ((v279 ^ (v279 >> 8)) & v251)) ^ v279 ^ (v279 >> 8);
  LODWORD(STACK[0x20E8]) = LODWORD(STACK[0x2210]) - 2062948967 - ((2 * LODWORD(STACK[0x2210])) & 0xA13CB32);
  LODWORD(v251) = (-1764736117 * (v294 ^ (v300 + LODWORD(STACK[0x2150]) + ~v301))) ^ ((-1764736117 * (v294 ^ (v300 + LODWORD(STACK[0x2150]) + ~v301))) >> 16);
  v306 = v305 ^ 0x8509E599;
  LODWORD(v251) = -1995247035 * (v305 ^ 0x8509E599 ^ ((v251 ^ (v251 >> 8)) - 2062948967 - ((2 * (v251 ^ (v251 >> 8))) & 0xA13CB32)));
  LODWORD(v251) = (v251 - WORD1(v251)) ^ ((v251 - WORD1(v251)) >> 8);
  LODWORD(v251) = 484968295 * ((v251 - 2062948967 - ((2 * v251) & 0xA13CB32)) ^ v244);
  LODWORD(v251) = v251 - WORD1(v251) - 2062948967 - ((2 * (v251 - WORD1(v251))) & 0xA13CB32);
  LODWORD(STACK[0x1E20]) = (LODWORD(STACK[0x2060]) ^ 0x3972208F) - 2062948967 - ((2 * (LODWORD(STACK[0x2060]) ^ 0x3972208F)) & 0xA13CB32);
  LODWORD(v248) = __ROR4__(__ROR4__(v295, 7) ^ 0xF25FAF64, 25);
  LODWORD(v279) = LODWORD(STACK[0x2088]) ^ 0xE15B01D2;
  LODWORD(STACK[0x1DB0]) = v248 ^ 0xAADE57E0;
  LODWORD(v279) = (-1764736117 * (v279 ^ v248 ^ 0xAADE57E0 ^ v294)) ^ ((-1764736117 * (v279 ^ v248 ^ 0xAADE57E0 ^ v294)) >> 16);
  LODWORD(v279) = -1995247035 * (v279 ^ (v279 >> 8) ^ v305) - ((-1995247035 * (v279 ^ (v279 >> 8) ^ v305)) >> 16);
  LODWORD(v279) = v279 ^ (v279 >> 8);
  LODWORD(STACK[0x1F60]) = v279 ^ 0x8509E599 ^ ((v279 ^ -v279 ^ ((LODWORD(STACK[0x2078]) ^ 0xE15B01D2) - ((v279 - 2062948967 - ((2 * v279) & 0xA13CB32)) ^ LODWORD(STACK[0x2230])))) + (LODWORD(STACK[0x2078]) ^ 0xE15B01D2));
  LODWORD(v279) = 484968295 * (v244 ^ 0x2BFEFE3C ^ ((v279 ^ 0x2BFEFE3C) - 2062948967 - 2 * ((v279 ^ 0x2BFEFE3C) & 0x509E59B ^ v279 & 2)));
  LODWORD(v279) = WORD1(v279) + v279 - 2 * WORD1(v279);
  LODWORD(v238) = v279 ^ (v279 >> 8) ^ v238 ^ ((v279 ^ (v279 >> 8)) - 2062948967 - ((2 * (v279 ^ (v279 >> 8))) & 0xA13CB32));
  LODWORD(v273) = -1995247035 * (v305 ^ 0x8509E599 ^ (v273 - 2062948967 - ((2 * v273) & 0xA13CB32)));
  LODWORD(v273) = (v273 - WORD1(v273)) ^ ((v273 - WORD1(v273)) >> 8);
  LODWORD(STACK[0x2230]) = v244;
  LODWORD(v273) = 484968295 * ((v273 - 2062948967 - ((2 * v273) & 0xA13CB32)) ^ v244);
  LODWORD(v279) = LODWORD(STACK[0x2170]) ^ 0xF5A2B3B2;
  v307 = -2062948967 - 379838127 * v279 - ((45630114 * v279) & 0xA13CB32);
  v308 = STACK[0x2030];
  LODWORD(v247) = 2143909305 * v308 - 1160697988 - ((2140334962 * v308) & 0x75A24EF8);
  v309 = -2062948967 - 131208163 * v279 - ((6019130 * v279) & 0xA13CB32);
  LODWORD(STACK[0x2178]) ^= 0x306128A8u;
  LODWORD(STACK[0x2188]) = LODWORD(STACK[0x21A8]) ^ 0x8509E599;
  LODWORD(STACK[0x1F70]) = LODWORD(STACK[0x21D0]) ^ 0x8509E599;
  v310 = 35567641 * (((((v251 >> 8) ^ 0x8509E5) - 2062948967 - ((2 * ((v251 >> 8) ^ 0x8509E5)) & 0x13CB32)) ^ v251) + (v297 ^ 0x8509E599));
  v311 = ((v310 + HIWORD(v310)) ^ ((v310 + HIWORD(v310)) >> 8)) - v237;
  LODWORD(v251) = v311 - 2062948965;
  LODWORD(v266) = v311 - 2062948965 - ((2 * v311) & 0xA13CB32) - 2;
  LODWORD(v273) = 35567641 * (((v273 - WORD1(v273)) ^ ((v273 - WORD1(v273)) >> 8)) + (v297 ^ 0x8509E599));
  LODWORD(v244) = ((v273 + WORD1(v273)) ^ ((v273 + WORD1(v273)) >> 8)) - v238;
  v312 = v238 ^ 0x8509E599;
  STACK[0x1F68] = v302 ^ 0x3179BD29u;
  LODWORD(STACK[0x1FE0]) = v266;
  LODWORD(v273) = (8 * v266) & 0x18;
  v313 = (((8 * v266) ^ 0xF7) + 1) & 0x18;
  LODWORD(v289) = v279 ^ v308;
  LODWORD(v279) = v294;
  v314 = STACK[0x2008];
  LODWORD(STACK[0x1CB8]) = (2 * v251) ^ 2;
  LODWORD(STACK[0x1CA4]) = v307;
  LODWORD(STACK[0x1CB0]) = (v307 ^ 0x7AF61A66) + 1;
  LODWORD(STACK[0x1D20]) = LODWORD(STACK[0x2020]) ^ (-1985432003 * v289);
  LODWORD(STACK[0x21C0]) = v273;
  v315 = v273 ^ 8;
  STACK[0x1FA0] = v313;
  LODWORD(STACK[0x1D18]) = (v273 ^ 8) - v313;
  LODWORD(v238) = STACK[0x2028];
  LODWORD(STACK[0x1D10]) = LODWORD(STACK[0x2028]) ^ 0x96FADF52;
  LODWORD(STACK[0x1C9C]) = v309;
  LODWORD(v289) = v309 ^ 0x8509E599;
  v316 = STACK[0x2160];
  LODWORD(STACK[0x1CAC]) = v289;
  LODWORD(STACK[0x1CA0]) = v247;
  LODWORD(STACK[0x1CA8]) = v247 ^ 0xBAD1277C;
  LODWORD(STACK[0x1FD8]) = v238 ^ 0x9D6F8D1F;
  LODWORD(STACK[0x21D0]) = v312;
  LODWORD(STACK[0x2190]) = v273 ^ 8;
  LODWORD(STACK[0x1E98]) = v279;
  LODWORD(STACK[0x2168]) = v246;
  v317 = v244 + (v312 ^ 0x8509E599) - v237 - 2062948967 - ((2 * (v244 + (v312 ^ 0x8509E599) - v237)) & 0xA13CB32);
  LODWORD(STACK[0x2160]) = v317;
  v318 = v305 - 2062948967 - ((2 * v305) & 0xA13CB32);
  LODWORD(STACK[0x1E90]) = v318;
  LODWORD(v238) = v298 ^ 0x8509E599;
  v319 = (v316 ^ 0x7AF61A66) + (v298 ^ 0x8509E599) + 1;
  LODWORD(STACK[0x1F18]) = v319;
  LODWORD(v289) = -900675241 * (v319 - (v306 ^ 0x8509E599)) - ((-900675241 * (v319 - (v306 ^ 0x8509E599))) >> 16);
  v320 = (LODWORD(STACK[0x2230]) ^ 0x7AF61A66) + 1;
  LODWORD(v289) = -681371641 * (v289 + v320 - (v289 >> 8)) + ((-681371641 * (v289 + v320 - (v289 >> 8))) >> 16);
  v321 = v289 - (v289 >> 8);
  LODWORD(STACK[0x1D78]) = v321;
  LODWORD(v289) = -2015765505 * (v321 - (v279 ^ 0x8509E599)) - ((-2015765505 * (v321 - (v279 ^ 0x8509E599))) >> 16);
  LODWORD(STACK[0x1E80]) = v289;
  v322 = ((v289 & 0x7D49C452 ^ 0x7D49C452) + (v289 & 0x7D49C452)) ^ v297;
  LODWORD(STACK[0x1EA0]) = v322;
  v323 = v238 - (v316 ^ 0x8509E599);
  v324 = v318 ^ 0x8509E599;
  LODWORD(v289) = -900675241 * (v323 - v324) - ((-900675241 * (v323 - v324)) >> 16);
  LODWORD(STACK[0x1E48]) = v320;
  LODWORD(v289) = -681371641 * (v289 + v320 - (v289 >> 8)) + ((-681371641 * (v289 + v320 - (v289 >> 8))) >> 16);
  LODWORD(v238) = (v279 ^ 0x7AF61A66) + 1;
  LODWORD(STACK[0x1E88]) = v238;
  LODWORD(v289) = -2015765505 * (v289 + v238 - (v289 >> 8)) - ((-2015765505 * (v289 + v238 - (v289 >> 8))) >> 16);
  LODWORD(STACK[0x1E70]) = v322 ^ 0xF84021CB;
  LODWORD(v289) = -1112457373 * (v289 - (v289 >> 8) + (v322 ^ 0xF84021CB));
  v325 = v289 + WORD1(v289) + LODWORD(STACK[0x1FB8]) - ((v289 + WORD1(v289)) >> 8);
  LODWORD(v289) = (LODWORD(STACK[0x2238]) + 206140738) & 0xF3B6867F;
  LODWORD(STACK[0x1D40]) = v289;
  LODWORD(v289) = v246 << (v289 - 28);
  LODWORD(STACK[0x1E78]) = v289;
  v326 = (v289 ^ 0x17) + 1;
  LODWORD(v289) = v246 ^ 0x8509E599;
  LODWORD(STACK[0x2088]) = v246 ^ 0x8509E599;
  v327 = v325 - (v246 ^ 0x8509E599);
  v328 = v327 - (v246 ^ 0x8509E599);
  v329 = v328 - v289;
  LODWORD(STACK[0x2008]) = v314;
  v330 = STACK[0x20C8];
  if (v329)
  {
    v330 = v314;
  }

  v331 = STACK[0x20C0];
  if ((v329 & 1) == 0)
  {
    v331 = STACK[0x20B8];
  }

  LODWORD(STACK[0x1DA0]) = v330;
  LODWORD(STACK[0x1D98]) = v331;
  if ((v329 & 2) != 0)
  {
    v332 = v330;
  }

  else
  {
    v332 = v331;
  }

  LODWORD(STACK[0x1ED0]) = 8 * v317;
  v333 = (8 * v317) & 0x18;
  v334 = v333 ^ 8;
  v335 = ((v332 ^ 0x8509E599) << ((8 * v317) & 0x18 ^ 8)) | ((v332 ^ 0x8509E599) >> (v326 & 0x18));
  v336 = v335 - 2062948967 - ((2 * v335) & 0xA13CB32);
  v337 = STACK[0x2248];
  v338 = ((v282 ^ 0x8509E599) - (v337 ^ 0x8509E599) - 2062948967 - ((2 * ((v282 ^ 0x8509E599) - (v337 ^ 0x8509E599))) & 0xA13CB32)) ^ 0x8509E599;
  v339 = ((v338 + (v337 ^ 0x8509E599)) ^ 0xC6FCDDBA) + 956506694 + ((2 * (v338 + (v337 ^ 0x8509E599))) & 0x8DF9BB74);
  v340 = v339 + LODWORD(STACK[0x2150]) + ~((2 * v339) & 0xA13CB32);
  v341 = (v337 ^ 0x8509E599) - 2062948967 - ((2 * (v337 ^ 0x8509E599)) & 0xA13CB32);
  LODWORD(STACK[0x1D50]) = v332;
  if ((v326 & 0x18) != 0)
  {
    v342 = v336;
  }

  else
  {
    v342 = v332;
  }

  LODWORD(STACK[0x1F30]) = v342;
  v343 = STACK[0x21B8];
  v344 = STACK[0x1F70];
  if (v327)
  {
    v345 = STACK[0x1F70];
  }

  else
  {
    v345 = STACK[0x21B8];
  }

  LODWORD(STACK[0x2060]) = v345;
  v346 = STACK[0x2120];
  if (v328)
  {
    v347 = STACK[0x2120];
  }

  else
  {
    v347 = v340;
  }

  v348 = STACK[0x2220];
  if (v328)
  {
    v349 = STACK[0x2220];
  }

  else
  {
    v340 = STACK[0x2220];
    v349 = v341;
  }

  if ((v328 & 1) == 0)
  {
    v341 = STACK[0x2120];
  }

  v350 = STACK[0x1F78];
  if (v328)
  {
    v351 = STACK[0x1F78];
  }

  else
  {
    v351 = v291;
  }

  v352 = STACK[0x2080];
  if (v328)
  {
    v353 = v299;
  }

  else
  {
    v291 = STACK[0x2080];
    v353 = STACK[0x1F78];
  }

  if (v328)
  {
    v299 = STACK[0x2080];
  }

  LODWORD(STACK[0x2068]) = v328;
  v354 = (v328 & 2) == 0;
  if ((v328 & 2) != 0)
  {
    v355 = v340;
  }

  else
  {
    v355 = v341;
  }

  if (v354)
  {
    v356 = v340;
  }

  else
  {
    v356 = v341;
  }

  LODWORD(STACK[0x2210]) = v356;
  if (v354)
  {
    v357 = v347;
  }

  else
  {
    v357 = v349;
  }

  LODWORD(STACK[0x21A0]) = v357;
  if (v354)
  {
    v358 = v349;
  }

  else
  {
    v358 = v347;
  }

  LODWORD(STACK[0x2170]) = v358;
  if (v354)
  {
    v359 = v299;
  }

  else
  {
    v359 = v351;
  }

  if (v354)
  {
    v360 = v351;
  }

  else
  {
    v360 = v299;
  }

  if (v354)
  {
    v361 = v353;
  }

  else
  {
    v361 = v291;
  }

  if (v354)
  {
    v362 = v291;
  }

  else
  {
    v362 = v353;
  }

  v363 = ((v362 ^ 0x8509E599) << v315) ^ ((v362 ^ 0x8509E599) >> (v326 & 0x18));
  v364 = v363 - 2062948967 - ((2 * v363) & 0xA13CB32);
  if ((v326 & 0x18) != 0)
  {
    v366 = v364;
  }

  else
  {
    v366 = v362;
  }

  LODWORD(STACK[0x1F20]) = v366;
  v367 = v326 & 0x18;
  if ((v326 & 0x18) != 0)
  {
    v365 = ((v361 ^ 0x8509E599) << v315) | ((v361 ^ 0x8509E599) >> (v326 & 0x18));
    v368 = v365 - 2062948967 - ((2 * v365) & 0xA13CB32);
  }

  else
  {
    v368 = v361;
  }

  LODWORD(STACK[0x1F28]) = v368;
  v369 = ((v360 ^ 0x8509E599) >> v367) + ((v360 ^ 0x8509E599) << v334);
  v370 = v369 - 2062948967 - ((2 * v369) & 0xA13CB32);
  LODWORD(STACK[0x2298]) = v333;
  if (v333 == 8)
  {
    v372 = v360;
  }

  else
  {
    v372 = v370;
  }

  LODWORD(STACK[0x1F78]) = v372;
  v373 = -900675241 * (v338 - v324) - ((-900675241 * (v338 - v324)) >> 16);
  v374 = 986716930 - 681371641 * (v373 + v320 - (v373 >> 8)) - ((784740366 * (v373 + v320 - (v373 >> 8))) & 0x75A03604);
  v375 = STACK[0x1F68] ^ v374 ^ 0x8EA043B2 ^ (((v374 & 0xF79D4B54 ^ 0x3AF2BFAB) & (v374 ^ 0x3AD01B02)) - 2062948967 - ((2 * ((v374 & 0xF79D4B54 ^ 0x3AF2BFAB) & (v374 ^ 0x3AD01B02))) & 0xA13CB32));
  LODWORD(STACK[0x1D48]) = v359;
  if (v333 == 8)
  {
    v376 = v359;
  }

  else
  {
    v371 = ((v359 ^ 0x8509E599) << v334) ^ ((v359 ^ 0x8509E599) >> v367);
    v376 = v371 - 2062948967 - ((2 * v371) & 0xA13CB32);
  }

  LODWORD(STACK[0x1F68]) = v376;
  v377 = STACK[0x2108];
  if (v327)
  {
    v378 = STACK[0x2108];
  }

  else
  {
    v378 = v344;
  }

  LODWORD(STACK[0x2248]) = v378;
  v379 = STACK[0x2148];
  v380 = STACK[0x20B0];
  if (v327)
  {
    v381 = STACK[0x20B0];
  }

  else
  {
    v381 = STACK[0x2148];
  }

  LODWORD(STACK[0x2220]) = v381;
  v382 = STACK[0x21B0];
  if (v327)
  {
    v382 = STACK[0x2090];
  }

  LODWORD(STACK[0x2080]) = v382;
  v383 = STACK[0x20A0];
  if (v327)
  {
    v383 = STACK[0x2098];
  }

  LODWORD(STACK[0x2078]) = v383;
  v384 = STACK[0x2000];
  if (v327)
  {
    v385 = STACK[0x2000];
  }

  else
  {
    v385 = v377;
  }

  if ((v327 & 1) == 0)
  {
    v343 = STACK[0x2000];
  }

  LODWORD(STACK[0x21B8]) = v343;
  v386 = STACK[0x2138];
  if (v327)
  {
    v387 = v379;
  }

  else
  {
    v387 = STACK[0x2138];
  }

  if (v327)
  {
    v388 = v375;
  }

  else
  {
    v388 = v380;
  }

  if (v327)
  {
    v389 = STACK[0x2138];
  }

  else
  {
    v389 = v375;
  }

  if ((v327 & 2) != 0)
  {
    v390 = v345;
  }

  else
  {
    v390 = v385;
  }

  v391 = ((v390 ^ 0x8509E599) << v315) ^ ((v390 ^ 0x8509E599) >> v367);
  v392 = v391 - 2062948967 - ((2 * v391) & 0xA13CB32);
  v393 = ((v323 - 2062948967 - ((2 * v323) & 0xA13CB32)) ^ LODWORD(STACK[0x21F8])) - v323 + 2 * (v323 & (LODWORD(STACK[0x21F8]) ^ LODWORD(STACK[0x20A8])));
  v394 = v393 - 2062948967 - ((2 * v393) & 0xA13CB32);
  LODWORD(STACK[0x1D68]) = v390;
  if ((v326 & 0x18) != 0)
  {
    v395 = v392;
  }

  else
  {
    v395 = v390;
  }

  LODWORD(STACK[0x1F70]) = v395;
  v396 = v325;
  v397 = STACK[0x2130];
  v398 = STACK[0x2010];
  if (v325)
  {
    v399 = STACK[0x2130];
  }

  else
  {
    v399 = STACK[0x2010];
  }

  if (v325)
  {
    v400 = v394;
  }

  else
  {
    v400 = STACK[0x2130];
  }

  LODWORD(STACK[0x2108]) = v400;
  v401 = STACK[0x2240];
  if (v325)
  {
    v402 = STACK[0x2240];
  }

  else
  {
    v402 = v394;
  }

  if (v325)
  {
    v403 = v398;
  }

  else
  {
    v403 = STACK[0x2240];
  }

  LODWORD(STACK[0x20B0]) = v403;
  v404 = STACK[0x2128];
  v405 = STACK[0x1F60];
  if (v325)
  {
    v406 = STACK[0x1F60];
  }

  else
  {
    v406 = STACK[0x2128];
  }

  v407 = STACK[0x2118];
  if (v325)
  {
    v408 = STACK[0x2118];
  }

  else
  {
    v408 = STACK[0x1F60];
  }

  v409 = STACK[0x2188];
  if (v325)
  {
    v410 = STACK[0x2188];
  }

  else
  {
    v410 = STACK[0x2118];
  }

  if (v325)
  {
    v411 = STACK[0x2128];
  }

  else
  {
    v411 = STACK[0x2188];
  }

  v412 = v396;
  LODWORD(STACK[0x21A8]) = v396;
  if ((v396 & 2) != 0)
  {
    v413 = v410;
  }

  else
  {
    v413 = v406;
  }

  v414 = v315;
  v415 = ((v413 ^ 0x8509E599) << v315) + ((v413 ^ 0x8509E599) >> (v326 & 0x18));
  v416 = v415 - 2062948967 - ((2 * v415) & 0xA13CB32);
  if ((v396 & 2) != 0)
  {
    v417 = v402;
  }

  else
  {
    v417 = v399;
  }

  if ((v396 & 2) != 0)
  {
    v418 = v411;
  }

  else
  {
    v418 = v408;
  }

  if ((v396 & 2) != 0)
  {
    v419 = v400;
  }

  else
  {
    v419 = v403;
  }

  v420 = ((v418 ^ 0x8509E599) >> (v326 & 0x18)) ^ ((v418 ^ 0x8509E599) << v334);
  v421 = v420 - 2062948967 - ((2 * v420) & 0xA13CB32);
  LODWORD(STACK[0x1D60]) = v413;
  if ((v326 & 0x18) != 0)
  {
    v422 = v416;
  }

  else
  {
    v422 = v413;
  }

  LODWORD(STACK[0x1F10]) = v422;
  v423 = ((v417 ^ 0x8509E599) << v334) | ((v417 ^ 0x8509E599) >> (v326 & 0x18));
  v424 = v423 - 2062948967 - ((2 * v423) & 0xA13CB32);
  v425 = (LODWORD(STACK[0x20E8]) ^ 0x8509E599) - 2062948967 - ((2 * (LODWORD(STACK[0x20E8]) ^ 0x8509E599)) & 0xA13CB32);
  LODWORD(STACK[0x2138]) = v418;
  if ((v326 & 0x18) != 0)
  {
    v426 = v421;
  }

  else
  {
    v426 = v418;
  }

  LODWORD(STACK[0x1F00]) = v426;
  LODWORD(STACK[0x2048]) = v417;
  if ((v326 & 0x18) != 0)
  {
    v417 = v424;
  }

  LODWORD(STACK[0x2240]) = v417;
  v427 = STACK[0x20E0];
  if (v329)
  {
    v427 = STACK[0x20F8];
  }

  v428 = STACK[0x2110];
  v429 = STACK[0x21D0];
  if (v329)
  {
    v430 = STACK[0x2110];
  }

  else
  {
    v430 = STACK[0x21D0];
  }

  v431 = STACK[0x22A0];
  if (v329)
  {
    v428 = STACK[0x22A0];
  }

  v432 = STACK[0x2228];
  if (v329)
  {
    v433 = STACK[0x2228];
  }

  else
  {
    v433 = STACK[0x22A0];
  }

  if (v329)
  {
    v434 = STACK[0x21D0];
  }

  else
  {
    v434 = STACK[0x2228];
  }

  LODWORD(STACK[0x1D70]) = v425;
  v435 = STACK[0x2100];
  if ((v329 & 1) == 0)
  {
    v435 = v425;
  }

  LODWORD(STACK[0x1DA8]) = v329;
  v436 = (v329 & 2) == 0;
  if ((v329 & 2) != 0)
  {
    v437 = v430;
  }

  else
  {
    v437 = v433;
  }

  if (v436)
  {
    v438 = v430;
  }

  else
  {
    v438 = v433;
  }

  if (v436)
  {
    v439 = v434;
  }

  else
  {
    v439 = v428;
  }

  if (v436)
  {
    v440 = v428;
  }

  else
  {
    v440 = v434;
  }

  LODWORD(STACK[0x2110]) = v440;
  v441 = ((v438 ^ 0x8509E599) >> (v326 & 0x18)) | ((v438 ^ 0x8509E599) << v414);
  v442 = v441 - 2062948967 - ((2 * v441) & 0xA13CB32);
  LODWORD(STACK[0x1D90]) = v427;
  LODWORD(STACK[0x1D88]) = v435;
  if (v436)
  {
    v443 = v427;
  }

  else
  {
    v443 = v435;
  }

  LODWORD(STACK[0x2198]) = v443;
  v444 = ((v437 ^ 0x8509E599) >> (v326 & 0x18)) + ((v437 ^ 0x8509E599) << v414);
  v445 = v444 - 2062948967 - ((2 * v444) & 0xA13CB32);
  v446 = (v439 ^ 0x8509E599) - 2062948967 - 2 * ((v439 ^ 0x8509E599) & STACK[0x1D38] ^ v439 & 6);
  LODWORD(STACK[0x2130]) = v438;
  if ((v326 & 0x18) != 0)
  {
    v447 = v442;
  }

  else
  {
    v447 = v438;
  }

  LODWORD(STACK[0x1EE0]) = v447;
  v448 = ((v446 ^ 0x8509E599) >> (v326 & 0x18)) | ((v446 ^ 0x8509E599) << v334);
  v449 = v448 - 2062948967 - ((2 * v448) & 0xA13CB32);
  LODWORD(STACK[0x1E08]) = v437;
  if ((v326 & 0x18) != 0)
  {
    v450 = v445;
  }

  else
  {
    v450 = v437;
  }

  LODWORD(STACK[0x1ED8]) = v450;
  v451 = ((v355 ^ 0x8509E599) >> (v326 & 0x18)) + ((v355 ^ 0x8509E599) << v414);
  v452 = v451 - 2062948967 - ((2 * v451) & 0xA13CB32);
  LODWORD(STACK[0x2148]) = v446;
  if ((v326 & 0x18) != 0)
  {
    v453 = v449;
  }

  else
  {
    v453 = v446;
  }

  LODWORD(STACK[0x1EF0]) = v453;
  v454 = ((v419 ^ 0x8509E599) >> (v326 & 0x18)) ^ ((v419 ^ 0x8509E599) << v334);
  v455 = v454 - 2062948967 - ((2 * v454) & 0xA13CB32);
  LODWORD(STACK[0x1E10]) = v355;
  if ((v326 & 0x18) != 0)
  {
    v456 = v452;
  }

  else
  {
    v456 = v355;
  }

  LODWORD(STACK[0x1EC0]) = v456;
  v457 = v326 & 0x18;
  if ((v326 & 0x18) != 0)
  {
    v458 = v455;
  }

  else
  {
    v458 = v419;
  }

  LODWORD(STACK[0x1E50]) = v458;
  LODWORD(STACK[0x1D80]) = v327;
  v459 = STACK[0x2220];
  if ((v327 & 2) != 0)
  {
    v460 = STACK[0x2220];
  }

  else
  {
    v460 = v389;
  }

  if ((v327 & 2) != 0)
  {
    v461 = v389;
  }

  else
  {
    v461 = STACK[0x2220];
  }

  if ((v327 & 2) != 0)
  {
    v462 = v387;
  }

  else
  {
    v462 = v388;
  }

  if ((v327 & 2) != 0)
  {
    v463 = v388;
  }

  else
  {
    v463 = v387;
  }

  v464 = STACK[0x2060];
  if ((v327 & 2) != 0)
  {
    v464 = v385;
  }

  v465 = STACK[0x2248];
  v466 = STACK[0x21B8];
  if ((v327 & 2) != 0)
  {
    v467 = STACK[0x2248];
  }

  else
  {
    v467 = STACK[0x21B8];
  }

  if ((v327 & 2) != 0)
  {
    v468 = STACK[0x21B8];
  }

  else
  {
    v468 = STACK[0x2248];
  }

  v469 = ((v464 ^ 0x8509E599) >> v457) | ((v464 ^ 0x8509E599) << v334);
  v470 = v469 - 2062948967 - ((2 * v469) & 0xA13CB32);
  v471 = ((v467 ^ 0x8509E599) >> v457) + ((v467 ^ 0x8509E599) << v334);
  v472 = v471 - 2062948967 - ((2 * v471) & 0xA13CB32);
  v473 = STACK[0x2078];
  if ((v327 & 2) != 0)
  {
    v473 = STACK[0x2080];
  }

  LODWORD(STACK[0x2000]) = v473;
  v474 = STACK[0x2298];
  LODWORD(STACK[0x20E8]) = v464;
  if (v474 != 8)
  {
    v464 = v470;
  }

  LODWORD(STACK[0x1F60]) = v464;
  LODWORD(STACK[0x2058]) = v467;
  if (v474 == 8)
  {
    v475 = v467;
  }

  else
  {
    v475 = v472;
  }

  LODWORD(STACK[0x2010]) = v475;
  v476 = (v412 & 2) == 0;
  if ((v412 & 2) != 0)
  {
    v477 = v399;
  }

  else
  {
    v477 = v402;
  }

  v478 = STACK[0x6C0];
  if ((v412 & 2) != 0)
  {
    v411 = v408;
    v480 = v406;
  }

  else
  {
    v480 = v410;
  }

  v479 = ((v411 ^ 0x8509E599) << v334) + ((v411 ^ 0x8509E599) >> v457);
  LODWORD(STACK[0x22A0]) = v479 - 2062948967 - ((2 * v479) & 0xA13CB32);
  v481 = LODWORD(STACK[0x2210]) ^ 0x8509E599;
  v482 = STACK[0x2110];
  v483 = ((v482 ^ 0x8509E599) << v334) ^ ((v482 ^ 0x8509E599) >> v457);
  LODWORD(STACK[0x2248]) = v483 + LODWORD(STACK[0x2150]) + ~((2 * v483) & 0xA13CB32);
  LODWORD(STACK[0x2228]) = ((v481 << v334) ^ (v481 >> v457)) - 2062948967 - ((2 * ((v481 << v334) ^ (v481 >> v457))) & 0xA13CB32);
  v484 = STACK[0x21A0];
  v485 = ((v484 ^ 0x8509E599) >> v457) ^ ((v484 ^ 0x8509E599) << v334);
  v486 = v485 - 2062948967 - ((2 * v485) & 0xA13CB32);
  v487 = ((v463 ^ 0x8509E599) << v334) ^ ((v463 ^ 0x8509E599) >> v457);
  v488 = v487 - 2062948967 - ((2 * v487) & 0xA13CB32);
  v489 = v462;
  LODWORD(STACK[0x2180]) = v334;
  v490 = ((v462 ^ 0x8509E599) >> v457) + ((v462 ^ 0x8509E599) << v334);
  v491 = v490 - 2062948967 - ((2 * v490) & 0xA13CB32);
  v492 = ((v468 ^ 0x8509E599) << v414) + ((v468 ^ 0x8509E599) >> v457);
  v493 = v492 - 2062948967 - ((2 * v492) & 0xA13CB32);
  v494 = ((v480 ^ 0x8509E599) << v414) | ((v480 ^ 0x8509E599) >> v457);
  v495 = v494 - 2062948967 - ((2 * v494) & 0xA13CB32);
  v496 = STACK[0x2170];
  v497 = ((v496 ^ 0x8509E599) >> v457) + ((v496 ^ 0x8509E599) << v414);
  v498 = v497 - 2062948967 - ((2 * v497) & 0xA13CB32);
  v499 = v460;
  v500 = ((v460 ^ 0x8509E599) >> v457) ^ ((v460 ^ 0x8509E599) << v414);
  v501 = v500 - 2062948967 - ((2 * v500) & 0xA13CB32);
  v502 = ((v461 ^ 0x8509E599) >> v457) + ((v461 ^ 0x8509E599) << v414);
  v503 = v502 - 2062948967 - ((2 * v502) & 0xA13CB32);
  v504 = ((v477 ^ 0x8509E599) << v414) | ((v477 ^ 0x8509E599) >> v457);
  v505 = v504 - 2062948967 - ((2 * v504) & 0xA13CB32);
  if (v476)
  {
    v506 = STACK[0x2108];
  }

  else
  {
    v506 = STACK[0x20B0];
  }

  v507 = ((v506 ^ 0x8509E599) >> v457) | ((v506 ^ 0x8509E599) << v414);
  v508 = v507 - 2062948967 - ((2 * v507) & 0xA13CB32);
  v509 = STACK[0x2298];
  v510 = v482;
  if (LODWORD(STACK[0x2298]) != 8)
  {
    v510 = STACK[0x2248];
  }

  LODWORD(STACK[0x1EC8]) = v510;
  LODWORD(STACK[0x2050]) = v411;
  v511 = STACK[0x22A0];
  if (v509 == 8)
  {
    v511 = v411;
  }

  LODWORD(STACK[0x1EF8]) = v511;
  v512 = STACK[0x2210];
  if (v509 != 8)
  {
    v512 = STACK[0x2228];
  }

  LODWORD(STACK[0x1EB8]) = v512;
  if (v509 == 8)
  {
    v513 = v484;
  }

  else
  {
    v513 = v486;
  }

  LODWORD(STACK[0x1EA8]) = v513;
  LODWORD(STACK[0x1DF8]) = v463;
  if (v509 == 8)
  {
    v514 = v463;
  }

  else
  {
    v514 = v488;
  }

  LODWORD(STACK[0x2118]) = v514;
  LODWORD(STACK[0x1E00]) = v489;
  if (v509 == 8)
  {
    v515 = v489;
  }

  else
  {
    v515 = v491;
  }

  LODWORD(STACK[0x1E58]) = v515;
  v516 = STACK[0x21C0];
  LODWORD(STACK[0x2120]) = v468;
  if (v516 == 8)
  {
    v517 = v468;
  }

  else
  {
    v517 = v493;
  }

  LODWORD(STACK[0x1F08]) = v517;
  LODWORD(STACK[0x1DF0]) = v480;
  if (v516 != 8)
  {
    v480 = v495;
  }

  LODWORD(STACK[0x1EE8]) = v480;
  if (v516 == 8)
  {
    v518 = v496;
  }

  else
  {
    v518 = v498;
  }

  LODWORD(STACK[0x1EB0]) = v518;
  LODWORD(STACK[0x2128]) = v499;
  if (v516 == 8)
  {
    v519 = v499;
  }

  else
  {
    v519 = v501;
  }

  LODWORD(STACK[0x1E60]) = v519;
  LODWORD(STACK[0x21D0]) = v461;
  if (v516 == 8)
  {
    v520 = v461;
  }

  else
  {
    v520 = v503;
  }

  LODWORD(STACK[0x1E68]) = v520;
  LODWORD(STACK[0x2060]) = v477;
  if (v516 == 8)
  {
    v521 = v477;
  }

  else
  {
    v521 = v505;
  }

  if (v516 == 8)
  {
    v522 = v506;
  }

  else
  {
    v522 = v508;
  }

  v523 = -1112457373 * (LODWORD(STACK[0x1E80]) - (LODWORD(STACK[0x1E80]) >> 8) + LODWORD(STACK[0x1E70])) + ((-1112457373 * (LODWORD(STACK[0x1E80]) - (LODWORD(STACK[0x1E80]) >> 8) + LODWORD(STACK[0x1E70]))) >> 16);
  v524 = STACK[0x1FB8];
  v525 = (STACK[0x1E78] & 0x18 ^ 8) - 2122533581 - ((2 * LODWORD(STACK[0x1E78])) & 0x20);
  v526 = STACK[0x1E90];
  v527 = -900675241 * (LODWORD(STACK[0x1F18]) + (v526 ^ 0x7AF61A66)) - 900675241 - ((-900675241 * (LODWORD(STACK[0x1F18]) + (v526 ^ 0x7AF61A66u)) - 900675241) >> 16);
  v528 = -681371641 * (v527 + LODWORD(STACK[0x1E48]) - (v527 >> 8)) + ((-681371641 * (v527 + LODWORD(STACK[0x1E48]) - (v527 >> 8))) >> 16);
  v529 = -2015765505 * (v528 + LODWORD(STACK[0x1E88]) - (v528 >> 8)) - ((-2015765505 * (v528 + LODWORD(STACK[0x1E88]) - (v528 >> 8))) >> 16);
  v530 = v529 - (v529 >> 8) + LODWORD(STACK[0x1E70]);
  v531 = ((v523 + v524 - (v523 >> 8) - 2062948967 - ((2 * (v523 + v524 - (v523 >> 8))) & 0xA13CB32)) ^ 0x8509E599) + (LODWORD(STACK[0x2278]) ^ 0xFABD6089);
  LODWORD(STACK[0x1F18]) = v531;
  LODWORD(STACK[0x21B8]) = (LODWORD(STACK[0x2018]) ^ 0x8509E599) + v524 + -1112457373 * v530 + ((-1112457373 * v530) >> 16) - ((-1112457373 * v530 + ((-1112457373 * v530) >> 16)) >> 8);
  v532 = LODWORD(STACK[0x21A8]) + (LODWORD(STACK[0x2178]) ^ 0x1F80B57D);
  LODWORD(STACK[0x1E88]) = v532;
  v533 = v532 - 2062948967 - ((2 * v532) & 0xA13CB32);
  v534 = LODWORD(STACK[0x1EA0]) ^ 0x7D49C452;
  v535 = v526;
  v536 = STACK[0x1E98];
  if (v531)
  {
    v537 = STACK[0x1E98];
  }

  else
  {
    v537 = v526;
  }

  if (v531)
  {
    v536 = LODWORD(STACK[0x1EA0]) ^ 0x7D49C452;
  }

  v538 = STACK[0x2230];
  if (v531)
  {
    v534 = STACK[0x2230];
  }

  else
  {
    v535 = STACK[0x2230];
  }

  if ((v531 & 2) != 0)
  {
    v539 = v537;
  }

  else
  {
    v539 = v534;
  }

  v540 = STACK[0x1FA0];
  if ((v531 & 2) != 0)
  {
    v537 = v534;
    v542 = v535;
  }

  else
  {
    v542 = v536;
  }

  if ((v531 & 2) == 0)
  {
    v536 = v535;
  }

  v541 = ((v539 ^ 0x8509E599) << (v525 & 0xF8 ^ 0x30u)) + ((v539 ^ 0x8509E599) >> STACK[0x1FA0]);
  v543 = v541 - 2062948967 - ((2 * v541) & 0xA13CB32);
  v545 = ((LODWORD(STACK[0x1ED0]) ^ 0xF7) + 1) & 0x18;
  if (!v540)
  {
    v543 = v539;
  }

  v544 = ((v537 ^ 0x8509E599) << (v525 & 0xF8 ^ 0x30u)) ^ ((v537 ^ 0x8509E599) >> v540);
  v547 = v544 - 2062948967 - ((2 * v544) & 0xA13CB32);
  v546 = ((v542 ^ 0x8509E599) << (v525 & 0xF8 ^ 0x30u)) ^ ((v542 ^ 0x8509E599) >> v545);
  v548 = v546 - 2062948967 - ((2 * v546) & 0xA13CB32);
  STACK[0x1EA0] = v525 & 0xF8 ^ 0x30u;
  v549 = ((v536 ^ 0x8509E599) >> v545) | ((v536 ^ 0x8509E599) << (v525 & 0xF8 ^ 0x30u));
  v550 = v549 - 2062948967 - ((2 * v549) & 0xA13CB32);
  if (v525 == -2122533581)
  {
    v551 = v542;
  }

  else
  {
    v537 = v547;
    v551 = v548;
  }

  if (v525 != -2122533581)
  {
    v536 = v550;
  }

  v552 = STACK[0x2140];
  LODWORD(STACK[0x22A0]) = LODWORD(STACK[0x2140]) >> 1;
  v553 = (v552 >> 1) & 0x63636363 ^ 0xC7A6C5C5;
  v554 = STACK[0x22E0];
  v555 = LODWORD(STACK[0x1FB0]);
  v556 = v555 ^ 0xEFu;
  v557 = ((LODWORD(STACK[0x22E0]) ^ 0x8501E581) & v553) >> (v555 ^ 0xEFu);
  v558 = LODWORD(STACK[0x1FA8]);
  v559 = STACK[0x1CE4];
  v560 = v521 ^ (v557 + ((v553 & STACK[0x1CE4]) << (v558 ^ 0xA9u))) ^ v536;
  LODWORD(v557) = LODWORD(STACK[0x22C8]) ^ 0xC7A44220;
  v561 = LODWORD(STACK[0x22F0]) ^ 0xA2C12764;
  v562 = LODWORD(STACK[0x2040]);
  v563 = v562 ^ 0x99u;
  v564 = STACK[0x22C0];
  v565 = LODWORD(STACK[0x2240]) ^ ((v561 & v553) >> (v562 ^ 0x99u)) ^ ((v557 & v553) << STACK[0x22C0]) ^ v551;
  v566 = LODWORD(STACK[0x2218]) >> 1;
  LODWORD(STACK[0x2240]) = v566;
  v567 = v566 & 0x63636363 ^ 0xC5A787C6;
  STACK[0x2228] = v558 ^ 0xA9u;
  v568 = v554 ^ 0x8509E599;
  STACK[0x2278] = v568;
  v569 = v556;
  v570 = v567 & v557;
  v571 = v561 & v567;
  v572 = v522 ^ ((v567 & v568) >> v556) ^ ((v567 & v559) << (v558 ^ 0xA9u)) ^ v543;
  v573 = v572 - 1761943726 - ((2 * v572) & 0x2DF5BEA4);
  v574 = LODWORD(STACK[0x1E50]) ^ ((v571 >> v556) | (v570 << (v558 ^ 0xA9u))) ^ v537;
  LODWORD(v570) = v574 - 1761943726 - ((2 * v574) & 0x2DF5BEA4);
  v575 = STACK[0x2028];
  v576 = (v565 - 1761943726 - ((2 * v565) & 0x2DF5BEA4)) ^ LODWORD(STACK[0x2028]);
  v577 = (v560 - 1761943726 - ((2 * v560) & 0x2DF5BEA4u)) ^ LODWORD(STACK[0x2028]);
  v578 = (((32 * (v577 & 7)) | (v577 >> 3)) ^ 0xA2) + ~*(STACK[0x2288] + (((32 * (v577 & 7)) | (v577 >> 3)) ^ 0xF5));
  v579 = v570 ^ LODWORD(STACK[0x2028]);
  v580 = *(v478 + 4 * v576);
  v581 = v573 ^ LODWORD(STACK[0x2028]);
  LODWORD(v570) = *(v478 + 4 * BYTE2(v579)) ^ __ROR4__(*(v478 + ((v577 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v478 + 4 * v581), 16);
  HIDWORD(v582) = *(v478 + 4 * BYTE1(v577));
  LODWORD(v582) = HIDWORD(v582);
  v583 = *(v478 + 4 * BYTE2(v576)) ^ __ROR4__(*(v478 + ((v579 >> 22) & 0x3FC)), 24);
  v584 = (v582 >> 8) ^ __ROR4__(*(v478 + 4 * v579), 16) ^ __ROR4__(*(v478 + 4 * ((*(STACK[0x22A8] + ((-75 * HIBYTE(v576)) ^ 0x52)) ^ (~(106 * HIBYTE(v576)) - 75 * HIBYTE(v576)) ^ 0xC4) + 125)), 24) ^ *(v478 + 4 * BYTE2(v581));
  LODWORD(v577) = (v580 << ((BYTE2(v580) & 0x10 ^ 0x10) + (BYTE2(v580) & 0x10u))) ^ WORD1(v580) ^ __ROR4__(*(v478 + ((v581 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v478 + 4 * BYTE1(v579)), 8) ^ *(v478 + 4 * BYTE2(v577));
  LODWORD(v579) = v584 - 2062948967 - ((2 * v584) & 0xA13CB32);
  v585 = v577 - 2122533581 - ((2 * v577) & 0x2F96A66);
  LODWORD(v579) = (v579 ^ LODWORD(STACK[0x1FE0])) - 2062948967 - ((2 * (v579 ^ LODWORD(STACK[0x1FE0]))) & 0xA13CB32);
  LODWORD(v577) = v583 ^ __ROR4__(*(v478 + 4 * ((v578 ^ 0x1D) + 96)), 16) ^ __ROR4__(*(v478 + 4 * BYTE1(v581)), 8);
  v586 = v570 ^ __ROR4__(*(v478 + 4 * BYTE1(v576)), 8);
  LODWORD(STACK[0x2248]) = v525;
  v587 = (v585 ^ v525) - 2062948967 - ((2 * (v585 ^ v525)) & 0xA13CB32);
  v588 = (v579 ^ LODWORD(STACK[0x2168])) - (LODWORD(STACK[0x2160]) ^ 0x8509E599) + LODWORD(STACK[0x2088]);
  LODWORD(v570) = LODWORD(STACK[0x2298]) ^ 0xFFFFFFF7;
  LODWORD(STACK[0x2188]) = v457;
  LODWORD(STACK[0x2230]) = v457 | 1;
  LODWORD(v570) = (v457 | 1) + v570 + (v525 ^ 0x817CB533);
  LODWORD(v581) = LODWORD(STACK[0x2118]) ^ ((v516 ^ 0x8509E591 ^ v587) + v540 - v457 - 2062948967 - 2 * (((v516 ^ 0x8509E591 ^ v587) + v540 - v457) & 0x509E59B ^ v587 & 2));
  v589 = STACK[0x22A0];
  v590 = STACK[0x2280];
  v591 = STACK[0x2280];
  LODWORD(STACK[0x22E0]) = v554;
  v592 = (((v554 ^ 0x8008C098) & (v589 & 0x48484848 ^ 0x98D09098)) >> (v562 ^ 0x99u)) + (((v589 & 0x48484848 ^ 0x98D09098) & v590) << v564);
  STACK[0x1E98] = v545;
  LODWORD(STACK[0x2018]) = v570 - v545;
  LODWORD(v577) = v570 - v545 + v577 - LODWORD(STACK[0x21B8]);
  LODWORD(STACK[0x2118]) = v533;
  LODWORD(STACK[0x2088]) = v533 ^ 0x8509E599;
  LODWORD(v577) = LODWORD(STACK[0x1E58]) ^ (v577 + (v533 ^ 0x8509E599) - 2062948967 - ((2 * (v577 + (v533 ^ 0x8509E599))) & 0xA13CB32));
  LODWORD(v556) = v586 - 2062948967 - ((2 * v586) & 0xA13CB32);
  LODWORD(v568) = v588 - 2062948967 - ((2 * v588) & 0xA13CB32);
  v593 = v552 & 0x90909090 ^ 0x10800010;
  v594 = (v593 >> 1) | 0x90909090;
  v595 = STACK[0x22C8];
  v596 = (LODWORD(STACK[0x22C8]) ^ 0xD8905010) & v594;
  v597 = (((v554 ^ 0x8008C098) & v594) >> v563) + (v596 << v564);
  LODWORD(v580) = (v593 >> (!(v597 & 1) + (v597 & 1))) ^ 0x90909090;
  LODWORD(STACK[0x1ED0]) = v554 ^ 0x8408E498;
  LODWORD(v580) = v568 ^ (((v580 & (v554 ^ 0x8408E498)) >> v563) + ((v580 & v591) << v564)) ^ LODWORD(STACK[0x1E60]);
  v598 = v569;
  v599 = v591;
  v600 = STACK[0x2228];
  LODWORD(v556) = v556 ^ ((((LODWORD(STACK[0x22F0]) ^ 0x98D00058) & (STACK[0x2240] & 0x48484848 ^ 0x98D8D898)) >> v569) + (((STACK[0x2240] & 0x48484848 ^ 0x98D8D898) & v591) << STACK[0x2228])) ^ LODWORD(STACK[0x1E68]);
  LOBYTE(v568) = v596 & 0x18;
  LODWORD(v556) = (v556 - 1761943726 - ((2 * v556) & 0x2DF5BEA4)) ^ v575;
  LOBYTE(v596) = *(STACK[0x21F0] + (((v556 >> 7) & 0xFE | (v556 >> 15) & 1) ^ 0x3BLL));
  v601 = v596 ^ (8 * v596 + 4 * ~v596 + 7);
  v602 = (v580 - 1761943726 - ((2 * v580) & 0x2DF5BEA4)) ^ v575;
  HIDWORD(v582) = *(v478 + 4 * ((v601 ^ 0x83) - 40));
  LODWORD(v582) = HIDWORD(v582);
  LODWORD(v580) = (v582 >> 8) ^ __ROR4__(*(v478 + 4 * (v602 >> ((v568 ^ 0x18u) + v568))), 24);
  v603 = v592 ^ v575 ^ (v581 - 1761943726 - ((2 * v581) & 0x2DF5BEA4));
  v604 = (v556 >> 11) & 0xE0 | (v556 >> 19) & 0x1F;
  v605 = STACK[0x2288];
  v606 = (v604 ^ 0xA2) + ~*(STACK[0x2288] + (v604 ^ 0xF5));
  v607 = v597 ^ v575 ^ (v577 - 1761943726 - ((2 * v577) & 0x2DF5BEA4));
  LODWORD(v568) = *(v478 + 4 * BYTE2(v602)) ^ __ROR4__(*(v478 + 4 * v556), 16) ^ __ROR4__(*(v478 + ((v607 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v478 + 4 * BYTE1(v603)), 8);
  HIDWORD(v582) = *(v478 + 4 * v602);
  LODWORD(v582) = HIDWORD(v582);
  LODWORD(v577) = (v582 >> 16) ^ __ROR4__(*(v478 + ((v603 >> 22) & 0x3FC)), 24);
  LODWORD(v580) = v580 ^ __ROR4__(*(v478 + 4 * v607), 16) ^ *(v478 + 4 * BYTE2(v603));
  LODWORD(v556) = *(v478 + 4 * BYTE2(v607)) ^ __ROR4__(*(v478 + 4 * BYTE1(v602)), 8) ^ __ROR4__(*(v478 + 4 * v603), 16) ^ __ROR4__(*(v478 + 4 * BYTE3(v556)), 24);
  v608 = STACK[0x2240];
  v609 = STACK[0x2240] & 0x7CFCFCFC ^ 0xF19535E1;
  v610 = STACK[0x22F0];
  v611 = (LODWORD(STACK[0x22F0]) ^ 0xB8D1257C) & v609;
  LODWORD(v568) = (v568 - 2062948967 - ((2 * v568) & 0xA13CB32)) ^ LODWORD(STACK[0x1EC0]);
  v612 = (v609 & (v595 ^ 0xDDB45030)) << STACK[0x2228];
  LODWORD(v556) = LODWORD(STACK[0x1EA8]) ^ ((v611 >> v569) + v612) ^ (v556 - 2062948967 - ((2 * v556) & 0xA13CB32));
  v613 = v556 - 1761943726 - ((2 * v556) & 0x2DF5BEA4);
  LODWORD(v556) = v589 & 0x7CFCFCFC ^ 0xE5097DE1;
  v614 = STACK[0x2278];
  v615 = STACK[0x2278] & v556;
  v616 = (v556 & v599) << v564;
  LODWORD(v580) = LODWORD(STACK[0x1EB0]) ^ ((v615 >> v569) | v616) ^ (v580 - 2062948967 - ((2 * v580) & 0xA13CB32));
  v617 = v580 - 1761943726 - ((2 * v580) & 0x2DF5BEA4);
  v618 = v577 - 2062948967 - ((2 * v577) & 0xA13CB32);
  STACK[0x2220] = v563;
  v619 = v568 & 0xFFFFFFFD ^ ((v611 >> v563) + v612);
  v620 = v568 & 2;
  if ((v620 & STACK[0x1D10]) != 0)
  {
    v620 = -v620;
  }

  v621 = v619 ^ (v620 + LODWORD(STACK[0x1D10]));
  v622 = (v615 >> v563) ^ v616 ^ __ROR4__(*(v478 + 4 * BYTE1(v607)), 8) ^ LODWORD(STACK[0x1EB8]) ^ *(v478 + 4 * ((v606 ^ 0x1D) + 96)) ^ v618;
  v623 = (v622 - 1761943726 - ((2 * v622) & 0x2DF5BEA4)) ^ v575;
  v624 = *(STACK[0x22A8] + ((-75 * HIBYTE(v623)) ^ 0x52)) ^ (~(362 * HIBYTE(v623)) + 181 * HIBYTE(v623)) ^ 0xC4;
  v625 = v613 ^ v575;
  v626 = ((v625 >> LODWORD(STACK[0x1CE8])) >> 3) & 0x1F | (32 * ((v625 >> LODWORD(STACK[0x1CE8])) & 7));
  v627 = (v626 ^ 0xA2) + ~*(v605 + (v626 ^ 0xF5));
  v628 = v617 ^ v575;
  v629 = *(STACK[0x22B8] + ((BYTE2(v628) - 87) ^ 0x60)) ^ (~(2 * (WORD1(v628) + 169)) + WORD1(v628) + 169) ^ 0xD9;
  v630 = *(v478 + 4 * BYTE2(v621)) ^ __ROR4__(*(v478 + 4 * BYTE1(v628)), 8);
  v631 = *(v478 + 4 * v625);
  v632 = *(v478 + 4 * v623);
  v633 = v632 ^ 0x10;
  if (!v631)
  {
    v633 = 16;
  }

  v634 = v630 ^ ((v632 << (v633 & ~v632 & 0xBD | v632 & 0x10)) | WORD1(v632));
  v635 = *(v478 + 4 * BYTE2(v623)) ^ __ROR4__(*(v478 + 4 * v621), 16);
  v636 = *(v478 + 4 * ((v627 ^ 0x1D) + 96));
  v637 = HIBYTE(v636) - 87;
  v638 = (HIBYTE(v636) - 87) ^ 0x60;
  v639 = v634 ^ (*(STACK[0x22B8] + v638) ^ (HIBYTE(v636) - 87) ^ 0xFF | (v636 << 8));
  v640 = STACK[0x21E0];
  v641 = STACK[0x21D8];
  v642 = STACK[0x21E0];
  LODWORD(STACK[0x21E0]) = STACK[0x21E0];
  v643 = v641;
  LODWORD(STACK[0x21D8]) = v641;
  v644 = ((v641 ^ v640) >> 7) ^ 0x71B9E4 ^ *(v478 + 4 * v629) ^ __ROR4__(v631, 16) ^ __ROR4__(*(v478 + ((v621 >> 22) & 0x3FC)), 24);
  v645 = __ROR4__(*(v478 + 4 * BYTE1(v623)), 8);
  v646 = v608 & 0x3BBBBBBB ^ 0x7C5EFE6F;
  v647 = v610 ^ 0x3AD1277C;
  v648 = ((v610 ^ 0x3AD1277C) & v646) >> v598;
  v649 = v595 ^ 0xDFB45230;
  STACK[0x2178] = v649;
  v650 = (v646 & v649) << v600;
  v651 = v648 ^ v650 ^ LODWORD(STACK[0x1EC8]) ^ ((v644 ^ v645) - 2062948967 - ((2 * (v644 ^ v645)) & 0xA13CB32));
  v652 = (v651 + 435764725 - ((2 * v651) & 0x33F27BEA)) ^ v642;
  v653 = (v652 + 556126201 - ((2 * v652) & 0x424B9FF2)) ^ v643;
  v654 = (v653 - 882000042 - ((2 * v653) & 0x96DB7EAC)) ^ LODWORD(STACK[0x1FE8]);
  LODWORD(v649) = LODWORD(STACK[0x21C8]) ^ 0x1B3ED9B8;
  LODWORD(STACK[0x21C8]) = v649;
  v655 = v649 ^ LODWORD(STACK[0x20D8]) ^ (v654 + 2082625075 - ((2 * v654) & 0xF844AC66));
  v656 = v637 & 0xC2 ^ 0x82 | v638 & 0xC2;
  v657 = *(v478 + ((v628 >> 22) & 0x3FC));
  v658 = v635 ^ __ROR4__(*(v478 + 4 * BYTE1(v625)), 8) ^ ((v657 << ((v656 + 70) & 0xFE)) | BYTE3(v657));
  v659 = v655 - 1761943726 - ((2 * v655) & 0x2DF5BEA4);
  HIDWORD(v660) = *(v478 + 4 * (v624 + 125));
  LODWORD(v660) = HIDWORD(v660);
  v661 = (v660 >> 24) ^ __ROR4__(*(v478 + 4 * ((*(STACK[0x2290] + ((-75 * v628) ^ 0x31)) ^ 0x6C) + 125)), 16) ^ __ROR4__(*(v478 + 4 * BYTE1(v621)), 8) ^ *(v478 + 4 * BYTE2(v625));
  v662 = STACK[0x2280];
  v663 = STACK[0x2220];
  v664 = LODWORD(STACK[0x1ED8]) ^ ((v646 & STACK[0x2280]) << STACK[0x22C0]) ^ ((v646 & v614) >> STACK[0x2220]) ^ (v658 - (LODWORD(STACK[0x20F0]) ^ 0x863EFBDA) - 2062948967 - ((2 * (v658 - (LODWORD(STACK[0x20F0]) ^ 0x863EFBDA))) & 0xA13CB32));
  v665 = v661 - 2062948967 - ((2 * v661) & 0xA13CB32);
  v666 = STACK[0x22A0];
  v667 = (v639 - 2062948967 - ((2 * v639) & 0xA13CB32)) ^ LODWORD(STACK[0x1EE0]);
  v668 = (v667 + 86842116 - ((2 * v667) & 0xA5A3608)) ^ LODWORD(STACK[0x2020]);
  v669 = (v668 - 1537152743 - ((2 * v668) & 0x48C1D232)) ^ LODWORD(STACK[0x1FF0]);
  v670 = STACK[0x1F38];
  v671 = (v669 + 1214000700 - ((2 * v669) & 0x90B85C78)) ^ LODWORD(STACK[0x1F38]);
  v672 = v648 | v650;
  v673 = (v648 | v650) ^ v575 ^ (v671 - 1761943726 - ((2 * v671) & 0x2DF5BEA4));
  v674 = (v664 - 1761943726 - ((2 * v664) & 0x2DF5BEA4)) ^ v575;
  v675 = *(STACK[0x2158] + (((v674 >> 7) & 1 | (2 * (v674 & 0x7F))) ^ 0xE3)) ^ 0xFF;
  LOBYTE(v648) = (v675 >> 1) | (v675 << 7);
  LODWORD(v649) = STACK[0x1F98];
  v676 = LODWORD(STACK[0x2030]) ^ 0x2D189C14 ^ LODWORD(STACK[0x1F98]) ^ (((v647 & (v666 & 0x3BBBBBBB ^ 0x6EC7F46Cu)) >> v598) + (((v595 ^ 0x5FB45230) & (v666 & 0x3BBBBBBB ^ 0x6EC7F46Cu)) << v600)) ^ ((v672 & 0x5088D2FD ^ 0x5088D2FD) + (v672 & 0x5088D2FD)) ^ LODWORD(STACK[0x1EF0]) ^ v665;
  v677 = (v676 + 86842116 - ((2 * v676) & 0xA5A3608)) ^ LODWORD(STACK[0x2020]);
  v678 = (v677 - 1761943726 - ((2 * v677) & 0x2DF5BEA4)) ^ v575;
  LOBYTE(v677) = *(STACK[0x21F0] + (((((v673 ^ 0xFFFFFFD9) & 0x80) != 0) | (2 * (v673 ^ 0xD9))) ^ 0x3BLL));
  HIDWORD(v660) = *(v478 + 4 * BYTE1(v678));
  LODWORD(v660) = HIDWORD(v660);
  v679 = (v660 >> 8) ^ __ROR4__(*(v478 + 4 * ((v677 ^ (4 * v677)) + 88)), 16);
  v680 = LODWORD(STACK[0x1FD8]) ^ v659;
  LOBYTE(v659) = *(STACK[0x21F0] + (((v680 >> 7) & 0xFE | (v680 >> 15) & 1) ^ 0x3BLL));
  v681 = *(v478 + 4 * BYTE2(v673)) ^ __ROR4__(*(v478 + 4 * ((v659 ^ (4 * v659)) + 88)), 8) ^ __ROR4__(*(v478 + 4 * HIBYTE(v678)), 24) ^ __ROR4__(*(v478 + 4 * ((v648 ^ 0xBE) - 40)), 16);
  v682 = *(v478 + 4 * BYTE2(v678)) ^ __ROR4__(*(v478 + ((v674 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v478 + 4 * v680), 16) ^ __ROR4__(*(v478 + 4 * ((*(STACK[0x2268] + (((v673 >> 3) & 0xE0 | (v673 >> 11)) ^ 0x5ALL)) ^ 0x20) + 96)), 8);
  v683 = *(v478 + 4 * ~*(STACK[0x2250] + ((HIBYTE(v673) - 87) ^ 0xC7)));
  v684 = *(v478 + 4 * BYTE2(v680)) ^ __ROR4__(*(v478 + 4 * v678), 16) ^ __ROR4__(*(v478 + 4 * BYTE1(v674)), 8) ^ ((v683 >> ((v683 & 0x18 ^ 0x18) + (v683 & 0x18))) | (v683 << 8));
  LODWORD(v648) = STACK[0x22A0] & 0x71F1F1F1 ^ 0xF21362F2;
  v685 = STACK[0x22C0];
  LODWORD(v683) = LODWORD(STACK[0x1EE8]) ^ ((((LODWORD(STACK[0x22E0]) ^ 0x8101E191) & v648) >> STACK[0x2220]) | ((v648 & STACK[0x2280]) << STACK[0x22C0])) ^ (v681 - 2062948967 - ((2 * v681) & 0xA13CB32));
  LODWORD(STACK[0x22C8]) = v595;
  LODWORD(v650) = LODWORD(STACK[0x22F0]) ^ 0xB2D12370;
  v686 = LODWORD(STACK[0x1F00]) ^ (((v650 & v648) >> v663) + (((v595 ^ 0x5DB45030 | v648) - (v595 ^ ((v666 & 0x71F1F1F1 ^ 0x11F08111) - 541830608 - ((2 * (v666 & 0x71F1F1F1 ^ 0x11F08111)) & 0xA360A060)) ^ 0xE3E3E3E3)) << v685)) ^ (v682 + LODWORD(STACK[0x2150]) + ~((2 * v682) & 0xA13CB32));
  LODWORD(v648) = v686 - 1761943726 - ((2 * v686) & 0x2DF5BEA4);
  v687 = STACK[0x2240] & 0x71F1F1F1 ^ 0xE28222F3;
  v688 = (v687 & v662) << v600;
  v689 = LODWORD(STACK[0x1EF8]) ^ (((v650 & v687) >> v598) | v688) ^ (v684 - 2062948967 - ((2 * v684) & 0xA13CB32));
  v690 = *(v478 + 4 * HIBYTE(v680));
  LODWORD(v650) = (2 * v689) & 0x2DF5BEA4;
  v691 = v689 - 1761943726;
  v692 = v690 >> 24;
  LOBYTE(v684) = BYTE3(v690) - 87;
  v693 = (BYTE3(v690) - 87);
  LODWORD(v674) = v679 ^ *(v478 + 4 * BYTE2(v674)) ^ (*(STACK[0x22B8] + (v693 ^ 0x60)) ^ 0xFF | (v690 << 8));
  LODWORD(v674) = LODWORD(STACK[0x1F10]) ^ ((v687 & STACK[0x2278]) >> v598) ^ v688 ^ v693 ^ (v674 - 2062948967 - ((2 * v674) & 0xA13CB32));
  v694 = v575 ^ 0xD9 ^ (v674 - 1761943726 - ((2 * v674) & 0x2DF5BEA4));
  v695 = v648 ^ v575;
  v696 = (v691 - v650) ^ v575;
  HIDWORD(v660) = *(v478 + 4 * BYTE1(v696));
  LODWORD(v660) = HIDWORD(v660);
  v697 = *(v478 + ((v696 >> 22) & 0x3FC));
  v698 = (v697 << (((BYTE2(v695) & 9 ^ 9) + (BYTE2(v695) & 9)) & 0xE)) | (v697 >> 24);
  v699 = (v683 - 1761943726 - ((2 * v683) & 0x2DF5BEA4)) ^ v575;
  LODWORD(v683) = *(v478 + 4 * BYTE2(v696)) ^ __ROR4__(*(v478 + ((v699 >> 22) & 0x3FC)), 24);
  v700 = LODWORD(STACK[0x21C8]) ^ __ROR4__(*(v478 + 4 * BYTE1(v695)), 8) ^ __ROR4__(*(v478 + 4 * v699), 16) ^ *(v478 + 4 * BYTE2(v694)) ^ v698;
  v701 = (v700 + 2082625075 - ((2 * v700) & 0xF844AC66)) ^ LODWORD(STACK[0x20D8]);
  LODWORD(v692) = (v660 >> 8) ^ __ROR4__(*(v478 + 4 * v694), 16) ^ ((*(v478 + ((v695 >> 22) & 0x3FC)) << (((6 - v692) ^ v684) & 8)) + HIBYTE(*(v478 + ((v695 >> 22) & 0x3FC)))) ^ *(v478 + 4 * BYTE2(v699));
  LODWORD(v692) = v670 ^ (1945651023 * (LODWORD(STACK[0x21E0]) ^ 0x19F93DF5)) ^ (v692 + 1214000700 - ((2 * v692) & 0x90B85C78));
  LODWORD(v692) = (v692 - 1537152743 - ((2 * v692) & 0x48C1D232)) ^ LODWORD(STACK[0x1FF0]);
  LODWORD(v692) = LODWORD(STACK[0x1D20]) ^ (1945651023 * (LODWORD(STACK[0x21D8]) ^ 0x2125CFF9)) ^ (-1985432003 * (v649 ^ 0x7D904EE9)) ^ (v692 + 86842116 - ((2 * v692) & 0xA5A3608));
  v702 = *(v478 + 4 * ((v691 - v650) ^ v575));
  LODWORD(v696) = v702 >> (v699 & 0x10) >> (v699 & 0x10 ^ 0x10);
  HIDWORD(v660) = *(v478 + ((v694 >> 22) & 0x3FC));
  LODWORD(v660) = HIDWORD(v660);
  v703 = (v660 >> 24) ^ (LODWORD(STACK[0x20F0]) >> 1) ^ *(v478 + 4 * BYTE2(v695)) ^ __ROR4__(*(v478 + 4 * BYTE1(v699)), 8) ^ (v696 | (v702 << 16));
  LODWORD(v695) = *(v478 + 4 * ((*(STACK[0x2290] + ((-75 * v695) ^ 0x31)) ^ 0x6C) + 125));
  LODWORD(v683) = v683 ^ __ROR4__(v695, 16);
  LODWORD(v660) = __ROR4__(*(v478 + 4 * BYTE1(v694)), 8);
  LODWORD(v694) = v692 - 2062948967 - ((2 * v692) & 0xA13CB32);
  v704 = STACK[0x22A0] & 0x76767676 ^ 0xF89CEAFE;
  LODWORD(v638) = STACK[0x22C8];
  v705 = (LODWORD(STACK[0x22C8]) ^ 0xDEB45230) & v704;
  LODWORD(v649) = LODWORD(STACK[0x1F70]) ^ ((STACK[0x1ED0] & v704) >> v663) ^ (v705 << v685) ^ ((v683 ^ v660) - 2062948967 - ((2 * (v683 ^ v660)) & 0xA13CB32));
  v706 = ((LODWORD(STACK[0x22F0]) ^ 0xBAD0267C) & v704) >> v663;
  v707 = LODWORD(STACK[0x1F60]) ^ (v706 | ((v704 & v662) << v685)) ^ ((v703 ^ 0x431F7DED) - 2062948967 - 2 * ((v703 ^ 0x431F7DED) & 0x509E59B ^ v703 & 2));
  v708 = (v707 - 2042692646 - ((2 * v707) & 0xC7DF7B4)) ^ LODWORD(STACK[0x20F0]);
  LODWORD(v694) = LODWORD(STACK[0x1F08]) ^ ((((STACK[0x2240] & 0x76767676 ^ 0xEE88A8FC) & (LODWORD(STACK[0x22C8]) ^ 0xDEB45230)) << STACK[0x2228]) + (((STACK[0x2240] & 0x76767676 ^ 0xEE88A8FC) & STACK[0x1ED0]) >> v598)) ^ v694;
  LODWORD(v683) = v694 - 1761943726 - ((2 * v694) & 0x2DF5BEA4);
  LOBYTE(v643) = STACK[0x2228];
  LODWORD(v694) = v706 | (v705 << v643);
  LODWORD(v706) = STACK[0x2150];
  v709 = (v694 + LODWORD(STACK[0x2150]) + ~((2 * v694) & 0xA13CB32)) ^ LODWORD(STACK[0x1FE8]) ^ LODWORD(STACK[0x2010]) ^ (v701 - 882000042 - ((2 * v701) & 0x96DB7EAC));
  LODWORD(v705) = v709 - 1761943726 - ((2 * v709) & 0x2DF5BEA4);
  v710 = (v649 - 1761943726 - ((2 * v649) & 0x2DF5BEA4)) ^ v575;
  v711 = (v708 - 1761943726 - ((2 * v708) & 0x2DF5BEA4)) ^ v575;
  HIDWORD(v660) = *(v478 + 4 * (v711 >> ((v696 & 0x18 ^ 0x18) + (v696 & 0x18))));
  LODWORD(v660) = HIDWORD(v660);
  LODWORD(v696) = LODWORD(STACK[0x1FD8]) ^ v705;
  LODWORD(v649) = (v660 >> 24) ^ __ROR4__(*(v478 + 4 * BYTE1(v710)), 8) ^ __ROR4__(*(v478 + 4 * (LOBYTE(STACK[0x1FD8]) ^ v705)), 16);
  LODWORD(v695) = (~(2 * (BYTE3(v696) + 169)) + BYTE3(v696) + 169) ^ *(STACK[0x22B8] + (((WORD1(v695) & 0x2D64) - 11391 + (WORD1(v695) & 0x2D64 ^ 0x2D64)) & 0xFFFC ^ 0x84 ^ (BYTE3(v696) - 87)));
  LOBYTE(v708) = ((((v695 >> 4) | (16 * v695)) ^ 0x25) >> 4) | (16 * (((v695 >> 4) | (16 * v695)) ^ 0x25));
  v712 = v683 ^ v575;
  HIDWORD(v660) = *(v478 + 4 * v711);
  LODWORD(v660) = HIDWORD(v660);
  LODWORD(v683) = (v660 >> 16) ^ __ROR4__(*(v478 + ((v712 >> 22) & 0x3FC)), 24);
  HIDWORD(v660) = *(v478 + 4 * BYTE1(v712));
  LODWORD(v660) = HIDWORD(v660);
  LODWORD(v705) = (v660 >> 8) ^ __ROR4__(*(v478 + 4 * ((*(STACK[0x22A8] + ((-75 * v710) ^ 0x52)) ^ (~(106 * v710) - 75 * v710) ^ 0xC4) + 125)), 16) ^ __ROR4__(*(v478 + 4 * (v708 ^ 0x8Bu)), 24);
  v713 = *(v478 + 4 * BYTE2(v696)) ^ __ROR4__(*(v478 + 4 * BYTE1(v711)), 8) ^ __ROR4__(*(v478 + 4 * v712), 16);
  LODWORD(v711) = v705 ^ *(v478 + 4 * BYTE2(v711));
  LODWORD(v696) = v683 ^ *(v478 + 4 * BYTE2(v710)) ^ __ROR4__(*(v478 + 4 * ((*(STACK[0x2290] + ((-75 * BYTE1(v696)) ^ 0x31)) ^ 0x6C) + 125)), 8);
  LODWORD(v649) = v649 ^ *(v478 + 4 * BYTE2(v712));
  LODWORD(v712) = (v696 - 2062948967 - ((2 * v696) & 0xA13CB32)) ^ LODWORD(STACK[0x1FE0]);
  LODWORD(v649) = (v649 - 2062948967 - ((2 * v649) & 0xA13CB32)) ^ LODWORD(STACK[0x2160]);
  v714 = (v649 - 2062948967 - ((2 * v649) & 0xA13CB32)) ^ LODWORD(STACK[0x2168]);
  LODWORD(v710) = *(STACK[0x22B8] + ((HIBYTE(*(v478 + ((v710 >> 22) & 0x3FC))) - 87) ^ 0x60)) ^ v713 ^ ((HIBYTE(*(v478 + ((v710 >> 22) & 0x3FC))) - 87) | (*(v478 + ((v710 >> 22) & 0x3FC)) << 8)) ^ ((v711 & 0xDA ^ 0xDA) + (v711 & 0xDA));
  LODWORD(v705) = (LODWORD(STACK[0x1F18]) ^ LODWORD(STACK[0x21B8]) ^ (LODWORD(STACK[0x2088]) - LODWORD(STACK[0x1F18]) + v711)) + LODWORD(STACK[0x2018]);
  v715 = LODWORD(STACK[0x2230]) + LODWORD(STACK[0x1D18]) + (LODWORD(STACK[0x2248]) ^ 0x7E834ACC) + ((v712 - 2062948967 - ((2 * v712) & 0xA13CB32)) ^ LODWORD(STACK[0x2168]));
  LODWORD(v712) = STACK[0x22A0] & 0x69E9E9E9 ^ 0xDA3352DA;
  v716 = LODWORD(STACK[0x22F0]) ^ 0xBAD12378;
  LODWORD(v662) = STACK[0x22F0];
  v717 = v712 & STACK[0x1E40];
  v718 = v716 & v712;
  STACK[0x1F70] = v718;
  v719 = (v718 >> v598) | (v717 << v685);
  v720 = LODWORD(STACK[0x1F20]) ^ (v719 - 2062948967 - ((2 * v719) & 0xA13CB32)) ^ v705;
  LODWORD(v696) = (v715 - 2062948967 - ((2 * v715) & 0xA13CB32)) ^ LODWORD(STACK[0x1F28]);
  LODWORD(v683) = v696 - 1761943726 - ((2 * v696) & 0x2DF5BEA4);
  LODWORD(v718) = LODWORD(STACK[0x22E0]) ^ 0x8109E199;
  LODWORD(STACK[0x1F60]) = v718;
  v721 = STACK[0x2220];
  v722 = (v718 & v712) >> STACK[0x2220];
  LODWORD(v717) = LODWORD(STACK[0x1F68]) ^ ((v722 ^ (v717 << v643)) - 2062948967 - ((2 * (v722 ^ (v717 << v643))) & 0xA13CB32));
  LOBYTE(v643) = ~v710 ^ v706;
  LODWORD(v718) = STACK[0x2240];
  LODWORD(v710) = STACK[0x2240] & 0x69E9E9E9 ^ 0xDABA1ADB;
  LODWORD(STACK[0x1F68]) = v710;
  STACK[0x21F8] = v598;
  LOBYTE(v696) = v685;
  LODWORD(v712) = LODWORD(STACK[0x1F78]) ^ ((v722 | (((v638 ^ 0xDBB05230) & v712) << v685)) - 2062948967 - ((2 * (v722 | (((v638 ^ 0xDBB05230) & v712) << v685))) & 0xA13CB32)) ^ v714;
  LODWORD(v683) = v683 ^ v575;
  LODWORD(v685) = v683 ^ (((v716 & v710) >> v598) | ((v710 & (v638 ^ 0xDBB05230)) << v685));
  v723 = (v720 - 1761943726 - ((2 * v720) & 0x2DF5BEA4)) ^ v575;
  v724 = *(v478 + 4 * (((v643 ^ (v717 - 103 - ((2 * v717) & 0x32))) + 82 - ((2 * (v643 ^ (v717 - 103 - ((2 * v717) & 0x32)))) & 0xA4)) ^ v575));
  LODWORD(v688) = *(v478 + 4 * ~*(STACK[0x2250] + (((v683 & 0xA9) + (((v712 - 1761943726 - ((2 * v712) & 0x2DF5BEA4)) ^ v575) >> 16) + (v683 & 0xA9 ^ 0xA9)) ^ 0xC7))) ^ 0x8509E599 ^ __ROR4__(*(v478 + 4 * ((((((v723 >> 27) | (32 * BYTE3(v723))) ^ 0xA2) + ~*(STACK[0x2288] + (((v723 >> 27) | (32 * BYTE3(v723))) ^ 0xF5))) ^ 0x1D) + 96)), 24) ^ __ROR4__(*(v478 + 4 * BYTE1(v685)), 8) ^ (((v724 << 16) - 2062948967 - ((v724 << 17) & 0xA120000)) ^ 0x8509E599 | HIWORD(v724));
  LODWORD(v710) = v718 & 0x13939393 ^ 0x2426A637;
  v725 = v710 & STACK[0x2280];
  LODWORD(STACK[0x1F98]) = v710;
  v726 = (((v662 ^ 0x32912734) & v710) >> v721) ^ (v725 << v696);
  v727 = v688 ^ (v726 - 2062948967 - ((2 * v726) & 0xA13CB32));
  v728 = (v727 - 2062948967 - ((2 * v727) & 0xA13CB32)) ^ LODWORD(STACK[0x1F30]);
  v729 = (v728 - 1761943726 - ((2 * v728) & 0x2DF5BEA4)) ^ v575;
  return (*(STACK[0x22F8] + 8 * (LODWORD(STACK[0x2238]) | (2 * (HIBYTE(*(v478 + ((v729 >> 22) & 0x3FC))) != (HIBYTE(*(v478 + ((v729 >> 22) & 0x3FC))) - 63))))))();
}

uint64_t sub_26AA778E0@<X0>(unsigned int a1@<W1>, int a2@<W2>, unint64_t a3@<X3>, int a4@<W4>, unint64_t a5@<X5>, int a6@<W6>, unint64_t a7@<X8>)
{
  LODWORD(STACK[0x1D40]) = a4;
  LODWORD(STACK[0x2010]) = a2;
  LODWORD(STACK[0x1EF0]) = v7;
  LODWORD(STACK[0x1F78]) = v10 | (v9 << 8);
  STACK[0x1F00] = a7;
  LODWORD(STACK[0x1F30]) = LODWORD(STACK[0x2108]) ^ LODWORD(STACK[0x20B0]);
  LODWORD(STACK[0x1F38]) = LODWORD(STACK[0x2110]) ^ LODWORD(STACK[0x2170]);
  LODWORD(STACK[0x1FA8]) = LODWORD(STACK[0x1D68]) ^ LODWORD(STACK[0x1D60]);
  LODWORD(STACK[0x1E90]) = a6;
  LODWORD(STACK[0x1E78]) = v14;
  LODWORD(STACK[0x1E70]) = v20;
  v21 = ((((v8 ^ 0x940C0ED1) - 117672343) ^ a6) + v14 + 1280610420) ^ v20;
  v22 = v21 - 2 * ((v21 + 33508896) & 0x65154BF ^ v21 & 0x18);
  v23 = (LODWORD(STACK[0x1FD0]) ^ a1) + a1 - 2 * ((LODWORD(STACK[0x1FD0]) ^ a1) & 0x509E59D ^ STACK[0x1FD0] & 4);
  v24 = STACK[0x1E28];
  LODWORD(STACK[0x2238]) = v11;
  v25 = (v24 ^ a1) + a1 - 2 * ((v24 ^ a1) & 0x509E59B ^ v24 & 2);
  v26 = LODWORD(STACK[0x1E30]) + a1 - ((2 * LODWORD(STACK[0x1E30])) & 0xA13CB32);
  STACK[0x21E0] = v12;
  v27 = STACK[0x1D78];
  STACK[0x1FD0] = v17;
  STACK[0x20F0] = a5;
  v28 = STACK[0x1D80];
  if ((STACK[0x1D80] & 2) != 0)
  {
    v29 = STACK[0x2078];
  }

  else
  {
    v29 = STACK[0x2080];
  }

  STACK[0x20D8] = a3;
  v30 = (v29 & 0xF178272C ^ 0x81082508 | v29 & 0xF178272C ^ 0x70700224) + (LODWORD(STACK[0x1DC8]) ^ a1);
  v31 = LODWORD(STACK[0x1DC0]) ^ a1 ^ v27 ^ (v27 + a1 - ((2 * v27) & 0xA13CB32));
  v32 = STACK[0x2068];
  v33 = v30 - ((2 * v30 + 219132328) & 0xA13CB32) - 1819165075;
  if (STACK[0x2068])
  {
    v34 = LODWORD(STACK[0x1DC0]) ^ a1 ^ v27 ^ (v27 + a1 - ((2 * v27) & 0xA13CB32));
  }

  else
  {
    v34 = v26;
  }

  if ((v32 & 1) == 0)
  {
    v26 = v33;
  }

  v35 = STACK[0x2070];
  if (v32)
  {
    v31 = STACK[0x2070];
  }

  else
  {
    v33 = STACK[0x2070];
  }

  STACK[0x2080] = v13;
  v36 = STACK[0x1CD0];
  v37 = STACK[0x1F48];
  if (v32)
  {
    v38 = STACK[0x1CD0];
  }

  else
  {
    v38 = STACK[0x1F48];
  }

  v39 = STACK[0x1DD0];
  if ((v32 & 1) == 0)
  {
    v37 = STACK[0x1DD0];
  }

  v40 = STACK[0x1E18];
  if (v32)
  {
    v41 = STACK[0x1DD0];
  }

  else
  {
    v41 = STACK[0x1E18];
  }

  if (v32)
  {
    v42 = STACK[0x1E18];
  }

  else
  {
    v42 = STACK[0x1CD0];
  }

  STACK[0x1E60] = v15;
  if ((v32 & 2) != 0)
  {
    v43 = v41;
  }

  else
  {
    v43 = v38;
  }

  if ((v32 & 2) != 0)
  {
    v44 = v37;
  }

  else
  {
    v38 = v41;
    v44 = v42;
  }

  if ((v32 & 2) != 0)
  {
    v45 = v42;
  }

  else
  {
    v45 = v37;
  }

  LODWORD(STACK[0x1F10]) = v45;
  if ((v32 & 2) != 0)
  {
    v46 = v33;
  }

  else
  {
    v46 = v34;
  }

  if ((v32 & 2) != 0)
  {
    v47 = v34;
  }

  else
  {
    v47 = v33;
  }

  v48 = v47 ^ a1;
  LODWORD(STACK[0x1FB0]) = v47 ^ a1;
  v49 = v47;
  LODWORD(STACK[0x2070]) = v47;
  STACK[0x1EF8] = v19;
  v50 = STACK[0x2188];
  v51 = STACK[0x2180];
  v52 = (v48 >> LODWORD(STACK[0x2188])) + (v48 << LODWORD(STACK[0x2180]));
  if ((v32 & 2) != 0)
  {
    v53 = v31;
  }

  else
  {
    v53 = v26;
  }

  LODWORD(STACK[0x2160]) = v53;
  if ((v32 & 2) != 0)
  {
    v54 = v26;
  }

  else
  {
    v54 = v31;
  }

  LODWORD(STACK[0x2168]) = v54;
  v55 = v52 + a1 - ((2 * v52) & 0xA13CB32);
  v56 = STACK[0x1E20];
  if (v28)
  {
    v57 = STACK[0x1E20];
  }

  else
  {
    v57 = v23;
  }

  if (v28)
  {
    v56 = v25;
  }

  v58 = STACK[0x1DB8];
  if (v28)
  {
    v25 = STACK[0x1DB8];
  }

  else
  {
    v23 = STACK[0x1DB8];
  }

  v59 = STACK[0x2098];
  if (v28)
  {
    v59 = STACK[0x21B0];
    v60 = STACK[0x20A0];
  }

  else
  {
    v60 = STACK[0x2090];
  }

  v61 = v22 + 5284551;
  LODWORD(STACK[0x21C8]) = v22 + 5284551;
  v62 = v44 ^ 0xFB81A877 ^ (v22 + 5284551);
  v63 = STACK[0x2190];
  v64 = STACK[0x21C0];
  if (LODWORD(STACK[0x21C0]) != 8)
  {
    v62 = (v62 << LODWORD(STACK[0x2190])) | (v62 >> v50);
  }

  LODWORD(STACK[0x1F28]) = v62;
  v65 = v38 ^ 0xFB81A877 ^ v61;
  v66 = LODWORD(STACK[0x2298]) == 8;
  if (LODWORD(STACK[0x2298]) == 8)
  {
    v67 = v65;
  }

  else
  {
    v67 = (v65 >> v50) | (v65 << v51);
  }

  LODWORD(STACK[0x1F08]) = v67;
  if (v66)
  {
    v68 = v43 ^ 0xFB81A877 ^ v61;
  }

  else
  {
    v68 = ((v43 ^ 0xFB81A877 ^ v61) >> v50) + ((v43 ^ 0xFB81A877 ^ v61) << v51);
  }

  LODWORD(STACK[0x1F18]) = v68;
  if (v66)
  {
    v69 = v49;
  }

  else
  {
    v69 = v55;
  }

  LODWORD(STACK[0x1F20]) = v69;
  if ((v28 & 2) != 0)
  {
    v70 = v23;
  }

  else
  {
    v70 = v56;
  }

  LODWORD(STACK[0x20A0]) = v70;
  if ((v28 & 2) != 0)
  {
    v71 = v56;
  }

  else
  {
    v71 = v23;
  }

  LODWORD(STACK[0x2170]) = v71;
  if ((v28 & 2) != 0)
  {
    v72 = v25;
  }

  else
  {
    v72 = v57;
  }

  LODWORD(STACK[0x2230]) = v72;
  if ((v28 & 2) != 0)
  {
    v73 = v57;
  }

  else
  {
    v73 = v25;
  }

  LODWORD(STACK[0x21B8]) = v73;
  if ((v28 & 2) != 0)
  {
    v74 = v60;
  }

  else
  {
    v74 = v59;
  }

  LODWORD(STACK[0x2110]) = v16;
  if ((v28 & 2) != 0)
  {
    v75 = v59;
  }

  else
  {
    v75 = v60;
  }

  v76 = STACK[0x21A8];
  v77 = STACK[0x21A8];
  v78 = STACK[0x1E38];
  v79 = STACK[0x1DE0];
  if (STACK[0x21A8])
  {
    v80 = STACK[0x1DE0];
  }

  else
  {
    v80 = STACK[0x1E38];
  }

  LODWORD(STACK[0x1E18]) = v80;
  v81 = STACK[0x1DD8];
  if ((v76 & 1) == 0)
  {
    v78 = STACK[0x1DD8];
  }

  v82 = STACK[0x1DE8];
  if ((v76 & 1) == 0)
  {
    v81 = STACK[0x1DE8];
  }

  LODWORD(STACK[0x2078]) = v81;
  if ((v76 & 1) == 0)
  {
    v82 = v79;
  }

  v83 = v46;
  LODWORD(STACK[0x1F48]) = v46;
  v84 = ((v46 ^ a1) >> v50) | ((v46 ^ a1) << v51);
  v85 = STACK[0x1FC8];
  v86 = STACK[0x1F80];
  if (v76)
  {
    v87 = STACK[0x1FC8];
  }

  else
  {
    v87 = STACK[0x1F80];
  }

  v88 = STACK[0x20D0];
  if ((v76 & 1) == 0)
  {
    v86 = STACK[0x20D0];
  }

  v89 = STACK[0x1FC0];
  if (v76)
  {
    v90 = STACK[0x20D0];
  }

  else
  {
    v90 = STACK[0x1FC0];
  }

  if (v76)
  {
    v91 = STACK[0x1FC0];
  }

  else
  {
    v91 = STACK[0x1FC8];
  }

  v92 = v84 + a1 - ((2 * v84) & 0xA13CB32);
  if (v50)
  {
    v93 = v92;
  }

  else
  {
    v93 = v83;
  }

  LODWORD(STACK[0x1ED0]) = v93;
  if ((v77 & 2) != 0)
  {
    v94 = v82;
  }

  else
  {
    v94 = v78;
  }

  LODWORD(STACK[0x20B0]) = v94;
  if ((v77 & 2) != 0)
  {
    v95 = v78;
  }

  else
  {
    v95 = v82;
  }

  LODWORD(STACK[0x1ED8]) = v95;
  if ((v77 & 2) != 0)
  {
    v96 = v91;
  }

  else
  {
    v96 = v86;
  }

  if ((v77 & 2) != 0)
  {
    v97 = v86;
  }

  else
  {
    v97 = v91;
  }

  if ((v77 & 2) != 0)
  {
    v98 = v90;
  }

  else
  {
    v98 = v87;
  }

  LODWORD(STACK[0x21B0]) = v98;
  if ((v77 & 2) != 0)
  {
    v99 = v87;
  }

  else
  {
    v99 = v90;
  }

  v100 = v99;
  LODWORD(STACK[0x2108]) = v99;
  v101 = ((v99 ^ a1) << v51) ^ ((v99 ^ a1) >> v50);
  v102 = v101 + a1 - ((2 * v101) & 0xA13CB32);
  v103 = v97;
  LODWORD(STACK[0x1FC8]) = v97;
  v104 = ((v97 ^ a1) << v63) | ((v97 ^ a1) >> v50);
  v105 = v104 + a1 - ((2 * v104) & 0xA13CB32);
  LODWORD(STACK[0x2040]) = v96;
  v106 = ((v96 ^ a1) << v51) + ((v96 ^ a1) >> v50);
  LODWORD(STACK[0x21D8]) = a1 + 1;
  v107 = v106 + a1 + 1 + ~((2 * v106) & 0xA13CB32);
  if ((v77 & 2) != 0)
  {
    v108 = v80;
  }

  else
  {
    v108 = v81;
  }

  if (v50)
  {
    v109 = v102;
  }

  else
  {
    v109 = v100;
  }

  LODWORD(STACK[0x1EB8]) = v109;
  if (v50)
  {
    v110 = v107;
  }

  else
  {
    v110 = v96;
  }

  LODWORD(STACK[0x1EA8]) = v110;
  if (v50)
  {
    v111 = v105;
  }

  else
  {
    v111 = v103;
  }

  LODWORD(STACK[0x1EB0]) = v111;
  v112 = STACK[0x1F88];
  v113 = STACK[0x1DB0];
  if (v32)
  {
    v114 = STACK[0x1DB0];
  }

  else
  {
    v114 = STACK[0x1F88];
  }

  v115 = STACK[0x1F40];
  if (v32)
  {
    v116 = STACK[0x1F88];
  }

  else
  {
    v116 = STACK[0x1F40];
  }

  LODWORD(STACK[0x2098]) = v116;
  v117 = STACK[0x1F90];
  if (v32)
  {
    v118 = STACK[0x1F90];
  }

  else
  {
    v115 = STACK[0x1F90];
    v118 = v113;
  }

  LODWORD(STACK[0x2090]) = v118;
  if ((v32 & 2) != 0)
  {
    v119 = v115;
  }

  else
  {
    v119 = v114;
  }

  if ((v32 & 2) != 0)
  {
    v120 = v114;
  }

  else
  {
    v120 = v115;
  }

  v121 = ((LODWORD(STACK[0x2198]) ^ a1) << v63) + ((LODWORD(STACK[0x2198]) ^ a1) >> v50);
  v122 = v121 + a1 - ((2 * v121) & 0xA13CB32);
  if ((v32 & 2) != 0)
  {
    v123 = v116;
  }

  else
  {
    v123 = v118;
  }

  if (v50)
  {
    v124 = v122;
  }

  else
  {
    v124 = STACK[0x2198];
  }

  LODWORD(STACK[0x1E68]) = v124;
  v125 = STACK[0x1DA8];
  if (STACK[0x1DA8])
  {
    v126 = STACK[0x20B8];
  }

  else
  {
    v126 = STACK[0x2008];
  }

  LODWORD(STACK[0x1F80]) = v126;
  if (v125)
  {
    v127 = STACK[0x20C8];
  }

  else
  {
    v127 = STACK[0x20C0];
  }

  LODWORD(STACK[0x1F90]) = v127;
  if (v125)
  {
    v128 = STACK[0x20E0];
  }

  else
  {
    v128 = STACK[0x2100];
  }

  LODWORD(STACK[0x2100]) = v128;
  v129 = STACK[0x20F8];
  if (v125)
  {
    v129 = STACK[0x1D70];
  }

  if ((v125 & 2) != 0)
  {
    v130 = v128;
  }

  else
  {
    v130 = v129;
  }

  LODWORD(STACK[0x20F8]) = v130;
  v131 = v63;
  v132 = ((v130 ^ a1) >> v50) + ((v130 ^ a1) << v63);
  v133 = v132 + a1 - ((2 * v132) & 0xA13CB32);
  v134 = v18;
  v135 = ((v123 ^ a1) << v63) | ((v123 ^ a1) >> v50);
  v136 = v135 + a1 - ((2 * v135) & 0xA13CB32);
  LODWORD(STACK[0x20D0]) = v120;
  v137 = ((v120 ^ a1) << v63) | ((v120 ^ a1) >> v50);
  if (v50)
  {
    v138 = v133;
  }

  else
  {
    v138 = v130;
  }

  LODWORD(STACK[0x1E58]) = v138;
  v139 = v64;
  if (v64 == 8)
  {
    v140 = v123;
  }

  else
  {
    v140 = v136;
  }

  LODWORD(STACK[0x1E30]) = v140;
  if (v64 == 8)
  {
    v141 = v120;
  }

  else
  {
    v141 = v137 - 2062948967 - ((2 * v137) & 0xA13CB32);
  }

  LODWORD(STACK[0x1E28]) = v141;
  v142 = STACK[0x1DA0];
  if ((v125 & 2) != 0)
  {
    v142 = STACK[0x1D98];
  }

  LODWORD(STACK[0x1FC0]) = v119;
  v143 = ((v119 ^ 0x8509E599) >> v50) ^ ((v119 ^ 0x8509E599) << v51);
  v144 = v143 - 2062948967 - ((2 * v143) & 0xA13CB32);
  if ((v125 & 2) != 0)
  {
    v145 = v126;
  }

  else
  {
    v145 = v127;
  }

  v146 = ((v145 ^ 0x8509E599) << v63) | ((v145 ^ 0x8509E599) >> v50);
  v147 = v146 - 2062948967 - ((2 * v146) & 0xA13CB32);
  v148 = STACK[0x1EA0];
  v149 = STACK[0x1E98];
  v150 = ((v29 ^ 0x8509E599) << STACK[0x1EA0]) + ((v29 ^ 0x8509E599) >> STACK[0x1E98]);
  v151 = STACK[0x1FA0];
  v152 = ((v75 ^ 0x8509E599) << STACK[0x1EA0]) | ((v75 ^ 0x8509E599) >> STACK[0x1FA0]);
  v153 = ((v74 ^ 0x8509E599) << STACK[0x1EA0]) ^ ((v74 ^ 0x8509E599) >> STACK[0x1FA0]);
  v154 = v152 - 2062948967 - ((2 * v152) & 0xA13CB32);
  v155 = v153 - 2062948967 - ((2 * v153) & 0xA13CB32);
  if (v50)
  {
    v156 = v144;
  }

  else
  {
    v156 = v119;
  }

  LODWORD(STACK[0x1DE8]) = v156;
  LODWORD(STACK[0x1DA0]) = v145;
  if (v50)
  {
    v157 = v147;
  }

  else
  {
    v157 = v145;
  }

  LODWORD(STACK[0x1EE8]) = v157;
  v158 = STACK[0x2248];
  if (LODWORD(STACK[0x2248]) == -2122533581)
  {
    v159 = v74;
  }

  else
  {
    v159 = v155;
  }

  LODWORD(STACK[0x20C0]) = v159;
  v160 = STACK[0x2000];
  LODWORD(STACK[0x2018]) = v75;
  if (v151)
  {
    v162 = v154;
  }

  else
  {
    v162 = v75;
  }

  LODWORD(STACK[0x20B8]) = v162;
  if (v149)
  {
    v163 = v150 - 2062948967 - ((2 * v150) & 0xA13CB32);
  }

  else
  {
    v163 = v29;
  }

  LODWORD(STACK[0x1F88]) = v163;
  v164 = *(v134 + 4 * BYTE1(STACK[0x2080]));
  v161 = ((v160 ^ 0x8509E599) << v148) + ((v160 ^ 0x8509E599) >> v149);
  v165 = v161 - 2062948967 - ((2 * v161) & 0xA13CB32);
  v166 = *(v134 + 4 * BYTE2(STACK[0x21E0]));
  v167 = STACK[0x22A0] & 0x13939393 ^ 0x36B7A434;
  LODWORD(STACK[0x1E50]) = v167;
  v168 = STACK[0x1EF0] & v167;
  v169 = (LODWORD(STACK[0x22C8]) ^ 0x17B41230) & v167;
  v170 = STACK[0x21F8];
  STACK[0x1E48] = v168 >> STACK[0x21F8];
  v171 = STACK[0x22C0];
  v172 = ((v168 >> v170) + (v169 << STACK[0x22C0])) ^ __ROR4__(v164, 8) ^ v166 ^ __ROR4__(*(v134 + ((STACK[0x20F0] >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v134 + 4 * STACK[0x20D8]), 16);
  if (v149)
  {
    v173 = v165;
  }

  else
  {
    v173 = v160;
  }

  LODWORD(STACK[0x2000]) = v173;
  v174 = (v172 - 2062948967 - ((2 * v172) & 0xA13CB32)) ^ v157;
  v175 = STACK[0x2028];
  STACK[0x1EC0] = (v174 - 1761943726 - ((2 * v174) & 0x2DF5BEA4u)) ^ LODWORD(STACK[0x2028]);
  HIDWORD(v177) = *(v134 + 4 * ((v174 + 82 - ((2 * v174) & 0xA4)) ^ v175));
  LODWORD(v177) = HIDWORD(v177);
  v176 = v177 >> 16;
  LODWORD(STACK[0x1EE0]) = v176;
  v178 = (((v176 + 1035966154) & 0x2D2FFE43 ^ 0x2D2FFE43) + ((v176 + 1035966154) & 0x2D2FFE43)) | 0xAB6773;
  v179 = STACK[0x1ED8];
  v181 = v108 ^ 0x2DAFFF73 ^ (v178 - 2062948967 - ((2 * v178) & 0xA13CB22));
  v182 = v131;
  if (v50)
  {
    v183 = (v181 >> v50) | (v181 << v131);
  }

  else
  {
    v183 = v181;
  }

  LODWORD(STACK[0x1EF0]) = v183;
  v184 = STACK[0x20B0];
  if (v50)
  {
    v180 = ((v179 ^ 0x8509E599) >> v50) ^ ((v179 ^ 0x8509E599) << v51);
    v186 = v180 - 2062948967 - ((2 * v180) & 0xA13CB32);
  }

  else
  {
    v186 = v179;
  }

  LODWORD(STACK[0x1ED8]) = v186;
  if (v50)
  {
    v185 = ((v184 ^ 0x8509E599) >> v50) ^ ((v184 ^ 0x8509E599) << v182);
    v188 = v185 - 2062948967 - ((2 * v185) & 0xA13CB32);
  }

  else
  {
    v188 = v184;
  }

  LODWORD(STACK[0x1EC8]) = v188;
  if (v50)
  {
    v187 = ((v142 ^ 0x8509E599) >> v50) + ((v142 ^ 0x8509E599) << v182);
    v189 = v187 - 2062948967 - ((2 * v187) & 0xA13CB32);
  }

  else
  {
    v189 = v142;
  }

  LODWORD(STACK[0x20C8]) = v189;
  v190 = ((LODWORD(STACK[0x21B0]) ^ 0x8509E599) >> v50) ^ ((LODWORD(STACK[0x21B0]) ^ 0x8509E599) << v182);
  v191 = v190 - 2062948967 - ((2 * v190) & 0xA13CB32);
  if (v139 == 8)
  {
    v192 = STACK[0x21B0];
  }

  else
  {
    v192 = v191;
  }

  LODWORD(STACK[0x1E38]) = v192;
  if ((v125 & 2) != 0)
  {
    v193 = v129;
  }

  else
  {
    v193 = STACK[0x2100];
  }

  v194 = STACK[0x1D90];
  if ((v125 & 2) == 0)
  {
    v194 = STACK[0x1D88];
  }

  LODWORD(STACK[0x2008]) = v194;
  v195 = ((v194 ^ 0x8509E599) >> v50) ^ ((v194 ^ 0x8509E599) << v51);
  v196 = v195 - 2062948967 - ((2 * v195) & 0xA13CB32);
  LODWORD(STACK[0x20B0]) = v193;
  v197 = v50;
  v198 = ((v193 ^ 0x8509E599) >> v50) ^ ((v193 ^ 0x8509E599) << v51);
  v199 = v198 - 2062948967 - ((2 * v198) & 0xA13CB32);
  v200 = STACK[0x2298];
  if (LODWORD(STACK[0x2298]) == 8)
  {
    v196 = v194;
  }

  LODWORD(STACK[0x1E20]) = v196;
  v201 = v200;
  if (v200 == 8)
  {
    v202 = v193;
  }

  else
  {
    v202 = v199;
  }

  v203 = ((LODWORD(STACK[0x21B8]) ^ 0x8509E599) >> v149) | ((LODWORD(STACK[0x21B8]) ^ 0x8509E599) << v148);
  v204 = v203 - 2062948967 - ((2 * v203) & 0xA13CB32);
  if ((STACK[0x2068] & 2) != 0)
  {
    v205 = STACK[0x2090];
  }

  else
  {
    v205 = STACK[0x2098];
  }

  v206 = STACK[0x2170];
  v207 = ((v206 ^ 0x8509E599) << v148) ^ ((v206 ^ 0x8509E599) >> v149);
  v208 = v207 - 2062948967 - ((2 * v207) & 0xA13CB32);
  v209 = STACK[0x20A0];
  v210 = ((v209 ^ 0x8509E599) << v148) + ((v209 ^ 0x8509E599) >> v151);
  v211 = v210 - 2062948967 - ((2 * v210) & 0xA13CB32);
  if (v149)
  {
    v212 = v204;
  }

  else
  {
    v212 = STACK[0x21B8];
  }

  LODWORD(STACK[0x2100]) = v212;
  if (v158 == -2122533581)
  {
    v213 = v206;
  }

  else
  {
    v213 = v208;
  }

  LODWORD(STACK[0x1F40]) = v213;
  v214 = STACK[0x2230];
  v215 = ((LODWORD(STACK[0x2230]) ^ 0x8509E599) << v148) + ((LODWORD(STACK[0x2230]) ^ 0x8509E599) >> v151) - 2062948967 - ((2 * (((LODWORD(STACK[0x2230]) ^ 0x8509E599) << v148) + ((LODWORD(STACK[0x2230]) ^ 0x8509E599) >> v151))) & 0xA13CB32);
  if (v158 == -2122533581)
  {
    v216 = v209;
  }

  else
  {
    v216 = v211;
  }

  LODWORD(STACK[0x1E80]) = v216;
  if (v151)
  {
    v217 = v215;
  }

  else
  {
    v217 = v214;
  }

  LODWORD(STACK[0x1E98]) = v217;
  v219 = STACK[0x2078];
  if ((STACK[0x21A8] & 2) == 0)
  {
    v219 = STACK[0x1E18];
  }

  LODWORD(STACK[0x20E0]) = v219;
  v218 = ((v205 ^ 0x8509E599) << v51) ^ ((v205 ^ 0x8509E599) >> v197);
  v220 = v218 - 2062948967 - ((2 * v218) & 0xA13CB32);
  if (v201 == 8)
  {
    v220 = v205;
  }

  v221 = STACK[0x1F90];
  if ((v125 & 2) == 0)
  {
    v221 = STACK[0x1F80];
  }

  LODWORD(STACK[0x2078]) = v221;
  v222 = LODWORD(STACK[0x2208]) ^ 0x6452E44B ^ LODWORD(STACK[0x21E8]);
  LODWORD(STACK[0x1F80]) = v222;
  v223 = STACK[0x2278];
  v224 = STACK[0x2178];
  v225 = v171;
  v226 = (((STACK[0x2278] >> v170) & v222) << v170) ^ (((STACK[0x2178] << v171) & v222) >> v171);
  v227 = STACK[0x2218];
  LODWORD(STACK[0x2218]) = STACK[0x2218];
  v228 = STACK[0x2240];
  v229 = (LODWORD(STACK[0x2240]) ^ 0xB6DCD18) & (((v226 ^ ((v226 & (v227 ^ 0x16DB9A30u)) >> 1)) & (v227 ^ 0x16DB9A30)) >> 2) ^ v226 ^ ((v226 & (v227 ^ 0x16DB9A30u)) >> 1);
  LODWORD(STACK[0x1F90]) = v227 ^ 0x16DB9A30;
  LODWORD(STACK[0x2248]) = (v228 ^ 0xB6DCD18) & (((v228 ^ 0xB6DCD18) & (v227 ^ 0x16DB9A30u)) >> 2) & ((v229 & (v227 ^ 0x16DB9A30)) >> 4) ^ v229;
  v230 = (STACK[0x1F70] >> STACK[0x2220]) ^ STACK[0x1E60];
  v231 = LODWORD(STACK[0x1DE8]) ^ (v230 - 2062948967 - ((2 * v230) & 0xA13CB32)) ^ LODWORD(STACK[0x1E70]);
  v232 = (STACK[0x1F68] & v224) << STACK[0x2228];
  v233 = (STACK[0x1F68] & LODWORD(STACK[0x1F60]));
  v234 = STACK[0x2220];
  v235 = v220 ^ ((v232 | (v233 >> STACK[0x2220])) - 2062948967 - ((2 * (v232 | (v233 >> STACK[0x2220]))) & 0xA13CB32)) ^ LODWORD(STACK[0x1E78]);
  v236 = ((STACK[0x1F68] & LODWORD(STACK[0x1E40])) << v171) ^ (v233 >> v170);
  v237 = LODWORD(STACK[0x1E28]) ^ (v236 - 2062948967 - ((2 * v236) & 0xA13CB32)) ^ LODWORD(STACK[0x1E90]);
  v238 = STACK[0x2280];
  v239 = (v233 >> v170) ^ ((STACK[0x1F68] & STACK[0x2280]) << STACK[0x2228]);
  v240 = LODWORD(STACK[0x1E30]) ^ (v239 - 2062948967 - ((2 * v239) & 0xA13CB32));
  v241 = LODWORD(STACK[0x2110]) ^ (v240 - 2062948967 - ((2 * v240) & 0xA13CB32));
  v242 = (v231 - 1761943726 - ((2 * v231) & 0x2DF5BEA4)) ^ v175;
  v243 = (v235 - 1761943726 - ((2 * v235) & 0x2DF5BEA4)) ^ v175;
  v244 = (v237 - 1761943726 - ((2 * v237) & 0x2DF5BEA4)) ^ v175;
  v245 = *(v134 + 4 * BYTE2(v243)) ^ __ROR4__(*(v134 + 4 * BYTE1(v242)), 8) ^ __ROR4__(*(v134 + ((v244 >> 22) & 0x3FC)), 24);
  v246 = (v241 - 1761943726 - ((2 * v241) & 0x2DF5BEA4)) ^ v175;
  v247 = v175;
  v248 = __ROR4__(*(v134 + 4 * ((v241 + 82 - ((2 * v241) & 0xA4)) ^ v175)), 16);
  v249 = ((v245 ^ v248) - 2062948967 - ((2 * (v245 ^ v248)) & 0xA13CB32)) ^ v202;
  v250 = v249 - 1761943726 - ((2 * v249) & 0x2DF5BEA4);
  v251 = v169 << STACK[0x2228];
  v252 = STACK[0x2228];
  HIDWORD(v253) = *(v134 + 4 * BYTE1(v244));
  LODWORD(v253) = HIDWORD(v253);
  v254 = (v168 >> STACK[0x2220]) + v251;
  v255 = (v253 >> 8) ^ __ROR4__(*(v134 + ((v242 >> 22) & 0x3FC)), 24) ^ *(v134 + 4 * BYTE2(v246)) ^ __ROR4__(*(v134 + 4 * v243), 16);
  v256 = STACK[0x1E58];
  LODWORD(v251) = (v255 - 2062948967 - ((2 * v255) & 0xA13CB32)) ^ LODWORD(STACK[0x1E58]);
  v257 = v254 ^ v247;
  v258 = v257 ^ v250;
  v259 = v257 ^ (v251 - 1761943726 - ((2 * v251) & 0x2DF5BEA4u));
  v260 = STACK[0x2268];
  HIDWORD(v253) = *(v134 + 4 * ((*(STACK[0x2268] + (((v243 >> 19) & 0xE0 | (v243 >> 27)) ^ 0x5ALL)) ^ 0x20) + 96));
  LODWORD(v253) = HIDWORD(v253);
  LODWORD(v251) = (v253 >> 24) ^ __ROR4__(*(v134 + 4 * v244), 16);
  LODWORD(v253) = __ROR4__(*(v134 + 4 * BYTE1(v246)), 8);
  v261 = STACK[0x1FF8] + 2649;
  STACK[0x2068] = v261;
  LODWORD(v251) = v251 ^ v253 ^ *(v134 + 4 * ~*(v261 + ((BYTE2(v242) - 87) ^ 0xC7)));
  v262 = (v251 + LODWORD(STACK[0x21D8]) + ~((2 * v251) & 0xA13CB32)) ^ LODWORD(STACK[0x1E68]);
  v66 = (v255 ^ v256) == -2062948967;
  v263 = v227 ^ 0xCE0342E8;
  if (v66)
  {
    v263 = 656877350;
  }

  v264 = v262 ^ (((((v263 & (v227 ^ 0x16DB9A30)) >> 1) ^ 0x27272727) & v238) << v225) ^ (((((v263 & (v227 ^ 0x16DB9A30)) >> 1) ^ 0x27272727) & v223) >> v170);
  v265 = *(v134 + 4 * BYTE2(v244)) ^ __ROR4__(*(v134 + 4 * ((*(STACK[0x2290] + ((-75 * v242) ^ 0x31)) ^ 0x6C) + 125)), 16) ^ __ROR4__(*(v134 + 4 * BYTE1(v243)), 8);
  v266 = __ROR4__(*(v134 + ((v246 >> 22) & 0x3FC)), 24);
  v267 = LODWORD(STACK[0x1E20]) ^ STACK[0x1E48] ^ ((STACK[0x1E50] & LODWORD(STACK[0x1D58])) << v225) ^ ((v265 ^ v266) - 2062948967 - ((2 * (v265 ^ v266)) & 0xA13CB32));
  HIDWORD(v268) = *(v134 + ((v259 >> 22) & 0x3FC));
  LODWORD(v268) = HIDWORD(v268);
  v269 = (v264 - 1761943726 - ((2 * v264) & 0x2DF5BEA4)) ^ v247;
  v270 = (v267 - 1761943726 - ((2 * v267) & 0x2DF5BEA4)) ^ v247;
  v271 = (v268 >> 24) ^ __ROR4__(*(v134 + 4 * BYTE1(v258)), 8) ^ __ROR4__(*(v134 + 4 * ((v264 + 82 - ((2 * v264) & 0xA4)) ^ v247)), 16) ^ *(v134 + 4 * ((*(v260 + (((v270 >> 11) & 0xE0 | (v270 >> 19) & 0x1F) ^ 0x5ALL)) ^ 0x20) + 96));
  v272 = v271 - 2062948967 - ((2 * v271) & 0xA13CB32);
  LODWORD(STACK[0x1F70]) = v228 & 0x27A7A7A7;
  v273 = v228 & 0x27A7A7A7 ^ 0x4C6ACA4F;
  v274 = v273 & v223;
  STACK[0x1F60] = v274;
  v275 = v273 & STACK[0x1C90];
  STACK[0x1EA0] = v275 << v225;
  v276 = v225;
  v277 = LODWORD(STACK[0x1E38]) ^ ((v274 >> v170) | (v275 << v225)) ^ v272;
  HIDWORD(v268) = *(v134 + ((v269 >> 22) & 0x3FC));
  LODWORD(v268) = HIDWORD(v268);
  v278 = v277 - 1761943726 - ((2 * v277) & 0x2DF5BEA4);
  v279 = (*(v134 + 4 * BYTE2(v259)) ^ -*(v134 + 4 * BYTE2(v259)) ^ ((v268 >> 24) - ((v268 >> 24) ^ *(v134 + 4 * BYTE2(v259))))) + (v268 >> 24);
  HIDWORD(v268) = *(v134 + 4 * v258);
  LODWORD(v268) = HIDWORD(v268);
  v280 = v268 >> 16;
  LODWORD(v268) = __ROR4__(*(v134 + 4 * BYTE1(v270)), 8);
  v281 = (v280 ^ v268 ^ v279) - 2062948967 - ((2 * (v280 ^ v268 ^ v279)) & 0xA13CB32);
  v282 = STACK[0x22F0];
  v283 = ((LODWORD(STACK[0x22F0]) ^ 0x2AC1276C) & v273) >> v170;
  LODWORD(v275) = LODWORD(STACK[0x1EA8]) ^ (v283 | (v275 << v252)) ^ v281;
  HIDWORD(v268) = *(v134 + 4 * BYTE1(v269));
  LODWORD(v268) = HIDWORD(v268);
  v284 = (v268 >> 8) ^ __ROR4__(*(v134 + 4 * (*(STACK[0x22B8] + ((HIBYTE(v270) - 87) ^ 0x60)) ^ (~(2 * (HIBYTE(v270) - 87)) + HIBYTE(v270) - 87) ^ 0xD9u)), 24) ^ *(v134 + 4 * BYTE2(v258));
  LODWORD(v268) = __ROR4__(*(v134 + 4 * v259), 16);
  v285 = STACK[0x22E0];
  LODWORD(STACK[0x1E90]) = LODWORD(STACK[0x22E0]) ^ 0x509E589;
  v286 = STACK[0x22A0];
  v287 = STACK[0x22C8];
  LODWORD(STACK[0x1E78]) = LODWORD(STACK[0x22C8]) ^ 0x4FA44220;
  v288 = LODWORD(STACK[0x1EB0]) ^ (((v285 ^ 0x509E589) & (v286 & 0x27A7A7A7 ^ 0x4AEFC84Cu)) >> v234) ^ (((v287 ^ 0x4FA44220) & (v286 & 0x27A7A7A7 ^ 0x4AEFC84Cu)) << v276) ^ ((v284 ^ v268) - 2062948967 - ((2 * (v284 ^ v268)) & 0xA13CB32));
  v289 = *(v134 + 4 * BYTE2(v269)) ^ __ROR4__(*(v134 + 4 * BYTE1(v259)), 8) ^ __ROR4__(*(v134 + ((v258 >> 22) & 0x3FC)), 24);
  LODWORD(v268) = __ROR4__(*(v134 + 4 * v270), 16);
  v290 = LODWORD(STACK[0x1EB8]) ^ (v283 + ((v273 & (v287 ^ 0x4FA44220u)) << v252)) ^ ((v289 ^ v268) - 2062948967 - ((2 * (v289 ^ v268)) & 0xA13CB32));
  v291 = v278 ^ v247;
  v292 = *(v134 + 4 * (v278 ^ v247));
  v293 = (v275 - 1761943726 - ((2 * v275) & 0x2DF5BEA4)) ^ v247;
  HIDWORD(v268) = *(v134 + 4 * BYTE1(v293));
  LODWORD(v268) = HIDWORD(v268);
  LODWORD(v269) = (v288 - 1761943726 - ((2 * v288) & 0x2DF5BEA4)) ^ v247;
  v294 = (v290 - 1761943726 - ((2 * v290) & 0x2DF5BEA4)) ^ v247;
  v295 = (v268 >> 8) ^ __ROR4__(v292, 16) ^ __ROR4__(*(v134 + 4 * ~*(STACK[0x2250] + ((BYTE3(v269) - 87) ^ 0xC7))), 24) ^ *(v134 + 4 * BYTE2(v294));
  v296 = v295 - 2062948967 - ((2 * v295) & 0xA13CB32);
  v297 = v228 & 0xC8C8C8C ^ 0x11159511;
  v298 = v285;
  v299 = v285 ^ 0x5098599;
  v300 = (v297 & (v285 ^ 0x5098599u)) >> v234;
  STACK[0x1E68] = v300;
  v301 = v234;
  v302 = STACK[0x1C88];
  v303 = v297;
  LODWORD(STACK[0x1E70]) = v297;
  LOBYTE(v274) = v276;
  v304 = LODWORD(STACK[0x1E98]) ^ (v300 + ((v297 & v302) << v276)) ^ v296;
  LODWORD(STACK[0x2240]) = (v304 - 1761943726 - ((2 * v304) & 0x2DF5BEA4)) ^ v247;
  v305 = ((v304 + 82 - ((2 * v304) & 0xA4)) ^ v247);
  STACK[0x1F68] = 13 * v305 - 264 * ((12909 * v305) >> 18);
  v306 = *(v134 + 4 * ((v288 + 82 - ((2 * v288) & 0xA4)) ^ v247));
  v307 = *(v134 + 4 * BYTE1(v291));
  v308 = *(v134 + 4 * ((*(STACK[0x22A8] + ((BYTE2(v293) * ((v298 & 0xB5 ^ 0x24) + (v298 & 0xB5 ^ 0x91))) ^ 0x52)) ^ (~(2 * BYTE2(v293) * ((v298 & 0xB5 ^ 0x24) + (v298 & 0xB5 ^ 0x91))) + BYTE2(v293) * ((v298 & 0xB5 ^ 0x24) + (v298 & 0xB5 ^ 0x91))) ^ 0xC4) + 125)) ^ (v306 << 16) ^ __ROR4__(*(v134 + ((v294 >> 22) & 0x3FC)), 24) ^ ((v307 << ((BYTE2(v292) & 0x18 ^ 0x18) + (BYTE2(v292) & 0x18u))) + (v307 >> 8));
  v309 = v308 - 2062948967 - ((2 * v308) & 0xA13CB32);
  LODWORD(v307) = v286 & 0xC8C8C8C ^ 0x15999D11;
  LODWORD(STACK[0x1EB8]) = v282 ^ 0x1891051C;
  v310 = ((v282 ^ 0x1891051C) & v307) >> STACK[0x21F8];
  STACK[0x1EA8] = v310;
  v311 = v287 ^ 0x1D941010;
  LOBYTE(v297) = v252;
  v312 = ((v287 ^ 0x1D941010) & v307) << v252;
  STACK[0x1EB0] = v312;
  v313 = HIWORD(v306);
  LODWORD(v310) = ((LODWORD(STACK[0x1E80]) ^ v310 ^ v312 ^ HIWORD(v306) ^ v309) - 1761943726 - ((2 * (LODWORD(STACK[0x1E80]) ^ v310 ^ v312 ^ HIWORD(v306) ^ v309)) & 0x2DF5BEA4)) ^ v247;
  LODWORD(STACK[0x22C8]) = v310;
  v314 = STACK[0x7B0];
  v315 = *(STACK[0x7B0] + 4 * (13 * BYTE3(v310) - 264 * (((12909 * BYTE3(v310)) >> 16) >> 2)));
  HIDWORD(v268) = v315 ^ 0x8E15;
  LODWORD(v268) = v315 ^ 0xCD880000;
  v316 = *(v134 + 4 * ((v275 + 82 - ((2 * v275) & 0xA4)) ^ v247));
  v317 = *(v134 + 4 * BYTE2(v269)) ^ __ROR4__(v316, 16) ^ __ROR4__(*(v134 + ((v291 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v134 + 4 * BYTE1(v294)), 8);
  v318 = (v268 >> 16) - 846688747 - ((2 * (v268 >> 16)) & 0x9B111C2A);
  LODWORD(STACK[0x1E98]) = v307;
  v319 = v301;
  v320 = LODWORD(STACK[0x1F40]) ^ (((v299 & v307) >> v301) + ((v307 & v302) << v274)) ^ (v317 - 2062948967 - ((2 * v317) & 0xA13CB32));
  LODWORD(v310) = (v320 - 1761943726 - ((2 * v320) & 0x2DF5BEA4)) ^ v247;
  LODWORD(STACK[0x21A8]) = v310;
  v321 = 13 * BYTE1(v310) - 264 * ((12909 * BYTE1(v310)) >> 18);
  v322 = *(v134 + 4 * HIBYTE(v293));
  v323 = STACK[0x2290];
  v324 = (((~(2 * ((BYTE2(v316) & 0x93 ^ 0x93) + (BYTE2(v316) & 0x93))) + (BYTE2(v316) & 0x93 ^ 0x93) + (BYTE2(v316) & 0x93)) ^ *(STACK[0x2290] + ((HIBYTE(v322) * ((v313 & 0xB5 ^ 0xB5) + (v313 & 0xB5))) ^ 0x31))) + 125) | (v322 << 8);
  LODWORD(v291) = *(v134 + 4 * BYTE2(v291)) ^ __ROR4__(*(v134 + 4 * BYTE1(v269)), 8);
  LODWORD(v268) = __ROR4__(*(v134 + 4 * v294), 16);
  v325 = v297;
  LODWORD(v291) = LODWORD(STACK[0x2100]) ^ (((v303 & v311) << v297) | STACK[0x1E68]) ^ ((v291 ^ v268 ^ v324) - 2062948967 - ((2 * (v291 ^ v268 ^ v324)) & 0xA13CB32));
  LODWORD(v310) = (v291 - 1761943726 - ((2 * v291) & 0x2DF5BEA4)) ^ v247;
  LODWORD(STACK[0x2100]) = v310;
  LODWORD(v291) = *(v314 + 4 * (13 * BYTE2(v310) - 264 * (((12909 * BYTE2(v310)) >> 16) >> 2)));
  HIDWORD(v268) = v291 ^ 0x888E15;
  LODWORD(v268) = v291 ^ 0xCD000000;
  LODWORD(v291) = *(v314 + 4 * v321) ^ __ROR4__(*(v314 + 4 * STACK[0x1F68]), 8) ^ v318 ^ 0x15CD888E ^ (v268 >> 24);
  LODWORD(v291) = (v291 - 2062948967 - ((2 * v291) & 0xA13CB32)) ^ LODWORD(STACK[0x1ED0]);
  LODWORD(v291) = (v291 + 1250370232 - ((2 * v291) & 0x950E4570)) ^ LODWORD(STACK[0x1F50]);
  LODWORD(v291) = (v291 + 1901479783 - ((2 * v291) & 0xE2AC8ECE)) ^ LODWORD(STACK[0x2038]);
  LODWORD(v291) = (v291 - 2062948967 - ((2 * v291) & 0xA13CB32)) ^ LODWORD(STACK[0x21E8]);
  LODWORD(v310) = LODWORD(STACK[0x2248]) ^ LODWORD(STACK[0x2208]);
  LODWORD(STACK[0x1ED0]) = v310;
  LODWORD(v291) = v310 ^ (v291 - 514129454 - ((2 * v291) & 0xC2B603A4));
  v326 = STACK[0x2188];
  v327 = STACK[0x2180];
  LODWORD(v269) = ((v291 ^ 0x3C3C3C3C) << LODWORD(STACK[0x2188])) + ((v291 ^ 0x3C3C3C3C) >> LODWORD(STACK[0x2180]));
  v328 = v269 + 2082625075 - ((2 * v269) & 0xF844AC66);
  v329 = STACK[0x20E0];
  v330 = ((v329 ^ 0x8509E599) << LODWORD(STACK[0x2180])) ^ ((v329 ^ 0x8509E599) >> LODWORD(STACK[0x2188]));
  v331 = STACK[0x2298];
  v332 = v291 ^ 0x401E6A0F;
  if (LODWORD(STACK[0x2298]) == 8)
  {
    v333 = v332;
  }

  else
  {
    v333 = v328;
  }

  LODWORD(STACK[0x1F40]) = v333;
  v334 = v330 - 2062948967 - ((2 * v330) & 0xA13CB32);
  v335 = STACK[0x2078];
  if (v331 == 8)
  {
    v334 = v329;
  }

  v336 = ((v335 ^ 0x8509E599) << v327) | ((v335 ^ 0x8509E599) >> v326);
  v337 = v336 - 2062948967 - ((2 * v336) & 0xA13CB32);
  v338 = LODWORD(STACK[0x2238]) + 1437;
  LODWORD(STACK[0x20E0]) = v338;
  v339 = (STACK[0x2218] & 0xE0E0E0E ^ 0xF9F5F5FF) + 1330597711 + ((v338 + 52787974) ^ LODWORD(STACK[0x1F70])) + 1;
  LODWORD(STACK[0x2238]) = v338 - 1437;
  v340 = v339 + 756587540 - ((v339 << ((v338 + 99) ^ 0x5C)) & 0x5A313828);
  v341 = v325;
  v342 = (((STACK[0x1F98] & LODWORD(STACK[0x1D58])) << v325) + ((STACK[0x1F98] & (LODWORD(STACK[0x22E0]) ^ 0x501A591u)) >> v319)) ^ __ROR4__(*(v134 + 4 * BYTE1(STACK[0x20D8])), 8) ^ __ROR4__(*(v134 + 4 * STACK[0x20F0]), 16) ^ __ROR4__(*(v134 + ((STACK[0x21E0] >> 22) & 0x3FC)), 24) ^ *(v134 + 4 * BYTE2(STACK[0x2080]));
  v343 = (v342 - 2062948967 - ((2 * v342) & 0xA13CB32)) ^ LODWORD(STACK[0x20C8]);
  v344 = v343 - 1761943726 - ((2 * v343) & 0x2DF5BEA4);
  v345 = STACK[0x21F8];
  v346 = (STACK[0x1FD0] >> STACK[0x21F8]) + (STACK[0x1EF8] << v325);
  HIDWORD(v347) = *(v134 + 4 * BYTE1(STACK[0x20F0]));
  LODWORD(v347) = HIDWORD(v347);
  v348 = (v347 >> 8) ^ __ROR4__(*(v134 + 4 * ((*(v323 + ((-75 * STACK[0x21E0]) ^ 0x31)) ^ 0x6C) + 125)), 16) ^ __ROR4__(*(v134 + ((STACK[0x2080] >> 22) & 0x3FC)), 24) ^ *(v134 + 4 * ~*(STACK[0x2250] + ((WORD1(STACK[0x20D8]) - 87) ^ 0xC7)));
  v349 = v346 - 2062948967 - ((2 * v346) & 0xA13CB32);
  v350 = v348 - 2062948967 - ((2 * v348) & 0xA13CB32);
  if (v331 == 8)
  {
    v337 = v335;
  }

  v351 = v344 ^ v247;
  v352 = *(v134 + 4 * BYTE2(v351));
  v353 = v247 ^ 0x13F33ACB ^ v337 ^ v350;
  LODWORD(STACK[0x1F70]) = v353;
  v354 = v353 ^ v349;
  v355 = STACK[0x1F00];
  v356 = v352 ^ (*(v134 + 4 * BYTE1(v354)) << 24) ^ (*(v134 + 4 * BYTE1(v354)) >> 8) ^ __ROR4__(*(v134 + 4 * STACK[0x1F00]), 16);
  v357 = STACK[0x1EC0];
  v358 = __ROR4__(*(v134 + ((STACK[0x1EC0] >> 22) & 0x3FC)), 24);
  v359 = ((v356 ^ v358) + LODWORD(STACK[0x21D8]) + ~((2 * (v356 ^ v358)) & 0xA13CB32)) ^ v334;
  LODWORD(STACK[0x1F98]) = v340;
  v360 = STACK[0x2278];
  v361 = v345;
  v362 = STACK[0x2280];
  v363 = (((v340 ^ 0x2D189C14) & STACK[0x2278]) >> v345) ^ (((v340 ^ 0x2D189C14) & STACK[0x2280]) << STACK[0x22C0]) ^ v247 ^ (v359 - 1761943726 - ((2 * v359) & 0x2DF5BEA4));
  v364 = STACK[0x2140];
  v365 = ((STACK[0x2140] & 0x4F4F4F4F) >> 1) ^ 0x4AEFC84C;
  v366 = LODWORD(STACK[0x22F0]) ^ 0xBAD1277C;
  STACK[0x22F0] = v366;
  v367 = STACK[0x2178];
  v368 = (STACK[0x2178] & v365) << v325;
  v369 = v366 & v365;
  STACK[0x1F68] = v369;
  v370 = v319;
  LODWORD(v368) = (v369 >> v319) | v368;
  v371 = STACK[0x21F0];
  v372 = *(STACK[0x21F0] + ((((v354 & 0x80) != 0) | (2 * v354)) ^ 0x3BLL));
  LODWORD(v369) = LODWORD(STACK[0x1F78]) ^ __ROR4__(*(v134 + 4 * ((v372 ^ (4 * v372)) + 88)), 16) ^ __ROR4__(*(v134 + 4 * BYTE1(v351)), 8) ^ *(v134 + 4 * BYTE2(v357)) ^ 0x8509E599;
  LODWORD(STACK[0x20C8]) = v369;
  v373 = v368 ^ v247 ^ ((v369 ^ LODWORD(STACK[0x1EC8])) - 1761943726 - ((2 * (v369 ^ LODWORD(STACK[0x1EC8]))) & 0x2DF5BEA4));
  HIDWORD(v374) = *(v134 + ((v351 >> 22) & 0x3FC));
  LODWORD(v374) = HIDWORD(v374);
  v375 = (v374 >> 24) ^ __ROR4__(*(v134 + 4 * BYTE1(v355)), 8) ^ *(v134 + 4 * BYTE2(v354));
  v376 = LODWORD(STACK[0x1EE0]) ^ LODWORD(STACK[0x1ED8]) ^ (v375 - 2062948967 - ((2 * v375) & 0xA13CB32));
  v377 = ((STACK[0x1E90] & v365) >> v361) | ((STACK[0x1E78] & v365) << v341);
  v378 = (v376 - 1761943726 - ((2 * v376) & 0x2DF5BEA4)) ^ v247;
  LODWORD(v369) = v377 - 2062948967 - ((2 * v377) & 0xA13CB32);
  v379 = STACK[0x22A8];
  LOBYTE(v376) = (BYTE2(v355) * (STACK[0x1EE8] & 0xB5 ^ 0x91 | STACK[0x1EE8] & 0xB5 ^ 0x24)) ^ 0x3B ^ *(STACK[0x22A8] + ((BYTE2(v355) * (STACK[0x1EE8] & 0xB5 ^ 0x91 | STACK[0x1EE8] & 0xB5 ^ 0x24)) ^ 0x52));
  LODWORD(v355) = STACK[0x1EA0] ^ (STACK[0x1F60] >> v370);
  LODWORD(v351) = (v355 - 1761943726 - ((2 * v355) & 0x2DF5BEA4)) ^ v247 ^ __ROR4__(*(v134 + 4 * BYTE1(v357)), 8) ^ __ROR4__(*(v134 + 4 * v351), 16) ^ __ROR4__(*(v134 + ((v354 >> 22) & 0x3FC)), 24) ^ LODWORD(STACK[0x1EF0]) ^ *(v134 + 4 * (v376 + 125));
  LOBYTE(v354) = *(v371 + ((((v351 & 0x80) != 0) | (2 * v351)) ^ 0x3BLL));
  LOBYTE(v355) = v354 ^ 0x6C ^ ((4 * ~v354) ^ 0x10) & 0xFC;
  LODWORD(STACK[0x2080]) = v369;
  v380 = (v378 - 2062948967 - ((2 * v378) & 0xA13CB32)) ^ v369;
  v381 = *(v134 + 4 * (v355 - 40));
  LOBYTE(v355) = (~(2 * ((-75 * BYTE1(v351)) ^ 0x22)) + ((-75 * BYTE1(v351)) ^ 0x22)) ^ 0xE6 ^ *(v379 + ((-75 * BYTE1(v351)) ^ 0x52));
  HIDWORD(v374) = v381;
  LODWORD(v374) = v381;
  v382 = *(v134 + ((v363 >> 22) & 0x3FC));
  v383 = (v374 >> 16) ^ __ROR4__(*(v134 + 4 * BYTE1(v380)), 8) ^ __ROR4__(*(v134 + ((v373 >> 22) & 0x3FC)), 24);
  LODWORD(v369) = (v382 << 8) + 435764725 - ((v382 << 9) & 0x33F27A00);
  v384 = *(v134 + ((v380 >> 22) & 0x3FC));
  v385 = (v384 << 8) - 2062948967 - (STACK[0x1C98] & (v384 << 9));
  LODWORD(STACK[0x1FD0]) = v385;
  v386 = v385 ^ 0x8509E599 | HIBYTE(v384);
  v387 = *(v134 + 4 * v363);
  LODWORD(STACK[0x21E0]) = v369;
  HIDWORD(v374) = v387;
  LODWORD(v374) = v387;
  v388 = (v374 >> 16) - 2062948967 - ((2 * (v374 >> 16)) & 0xA13CB32);
  LODWORD(v355) = (v369 ^ 0x19F93DF5 | HIBYTE(v382)) ^ __ROR4__(*(v134 + 4 * (v355 + 125)), 8);
  LODWORD(STACK[0x1E20]) = v388;
  LODWORD(v369) = v388 ^ 0x3371E43 ^ v386;
  LODWORD(v355) = v355 ^ *(v134 + 4 * BYTE2(v380));
  v389 = v383 ^ *(v134 + 4 * ((*(STACK[0x2268] + (((v363 >> 11) & 0xE0 | (v363 >> 19) & 0x1F) ^ 0x5ALL)) ^ 0x20) + 96));
  LODWORD(v380) = *(v134 + 4 * BYTE2(v373)) ^ __ROR4__(*(v134 + 4 * v380), 16) ^ __ROR4__(*(v134 + 4 * BYTE3(v351)), 24) ^ __ROR4__(*(v134 + 4 * BYTE1(v363)), 8);
  LODWORD(v355) = v355 ^ __ROR4__(*(v134 + 4 * v373), 16);
  v390 = STACK[0x1E70];
  LODWORD(v363) = LODWORD(STACK[0x2000]) ^ (((STACK[0x1E70] & v367) << v341) | ((STACK[0x1E70] & v360) >> v370)) ^ (*(v134 + 4 * BYTE2(v351)) - 2062948967 - ((2 * *(v134 + 4 * BYTE2(v351))) & 0xA13CB32));
  LODWORD(v373) = *(v134 + 4 * BYTE1(v373));
  LODWORD(STACK[0x20F0]) = v369;
  LODWORD(v363) = v369 ^ __ROR4__(v373, 8) ^ (v363 - 2042692646 - ((2 * v363) & 0xC7DF7B4));
  LODWORD(v373) = (v389 - 2062948967 - ((2 * v389) & 0xA13CB32)) ^ LODWORD(STACK[0x1F88]);
  LODWORD(v360) = LODWORD(STACK[0x20C0]) ^ (STACK[0x1EA8] + STACK[0x1EB0]) ^ (v380 - 2062948967 - ((2 * v380) & 0xA13CB32));
  v391 = (STACK[0x1EB8] & v390) >> v361;
  v392 = v390 & v362;
  v393 = v362;
  LODWORD(v391) = v391 | (v392 << STACK[0x22C0]);
  v394 = STACK[0x1EA8] ^ ((STACK[0x1E98] & v362) << STACK[0x22C0]) ^ v247 ^ LODWORD(STACK[0x20B8]) ^ (v355 - 2062948967 - ((2 * v355) & 0xA13CB32));
  LODWORD(v392) = *(v314 + 4 * (13 * (BYTE2(v394) ^ 0xFA) - 264 * (((12909 * (BYTE2(v394) ^ 0xFAu)) >> 16) >> 2)));
  HIDWORD(v374) = v392 ^ 0x888E15;
  LODWORD(v374) = v392 ^ 0xCD000000;
  LODWORD(v392) = v374 >> 24;
  LODWORD(STACK[0x22E0]) = (v360 - 1761943726 - ((2 * v360) & 0x2DF5BEA4)) ^ v247;
  LODWORD(v360) = ((v360 + 82 - ((2 * v360) & 0xA4)) ^ v247);
  LODWORD(v380) = *(v314 + 4 * (13 * v360 - 264 * (((12909 * v360) >> 16) >> 2)));
  LODWORD(STACK[0x1EF8]) = -846688768;
  HIDWORD(v374) = v380 ^ 0x15;
  LODWORD(v374) = v380 ^ 0xCD888E00;
  LODWORD(v380) = (v374 >> 8) ^ v392;
  v395 = (v363 - 1761943726 - ((2 * v363) & 0x2DF5BEA4)) ^ v247;
  LODWORD(v369) = (v373 - 1761943726 - ((2 * v373) & 0x2DF5BEA4)) ^ v247;
  LODWORD(STACK[0x20D8]) = v369;
  v396 = v369 ^ v391;
  LODWORD(v391) = *(v314 + 4 * (13 * HIBYTE(v396) - 264 * (((12909 * HIBYTE(v396)) >> 16) >> 2)));
  HIDWORD(v374) = v391 ^ 0x8E15;
  LODWORD(v374) = v391 ^ 0xCD880000;
  v397 = (STACK[0x22F0] >> v370) & STACK[0x1F80];
  LODWORD(v369) = (LODWORD(STACK[0x1F80]) & (v393 << v341)) - 2062948967 - ((2 * (LODWORD(STACK[0x1F80]) & (v393 << v341))) & 0xA13CB32);
  LODWORD(STACK[0x2000]) = v369;
  LODWORD(v397) = (v397 << v370) ^ ((v369 ^ 0x8509E599) >> v341);
  LODWORD(v369) = v397 - 2062948967 - ((2 * v397) & 0xA13CB32);
  LODWORD(STACK[0x2218]) = v364 ^ 0x3BE10E36;
  LODWORD(v397) = (v369 ^ LODWORD(STACK[0x1F58])) & (v364 ^ 0x3BE10E36);
  LODWORD(STACK[0x1F78]) = v369;
  LODWORD(v397) = ((v397 >> 1) - 2062948967 - (v397 & 0xA13CB32)) ^ v369;
  LODWORD(v397) = (LODWORD(STACK[0x22A0]) ^ 0x1DF0871B) & ((v397 & (v364 ^ LODWORD(STACK[0x1CE0]))) >> 2) ^ v397;
  v398 = (LODWORD(STACK[0x22A0]) ^ 0x1DF0871B) & (((LODWORD(STACK[0x22A0]) ^ 0x1DF08718) & (v364 ^ LODWORD(STACK[0x1CE0]))) >> 2) & ((v397 & (v364 ^ LODWORD(STACK[0x1CD8]))) >> 4) ^ v397;
  LODWORD(v392) = *(v314 + 4 * (13 * BYTE1(v395) - 264 * (((12909 * BYTE1(v395)) >> 16) >> 2))) ^ LODWORD(STACK[0x1F08]) ^ (v380 - 846688747 - ((2 * v380) & 0x9B111C2A)) ^ (v374 >> 16);
  v399 = STACK[0x1F50];
  LODWORD(v392) = (v392 + 1250370232 - ((2 * v392) & 0x950E4570)) ^ LODWORD(STACK[0x1F50]);
  v400 = STACK[0x21E8];
  LODWORD(v392) = (v392 - 2062948967 - ((2 * v392) & 0xA13CB32)) ^ LODWORD(STACK[0x21E8]);
  v401 = STACK[0x2208];
  v402 = STACK[0x2038];
  v403 = LODWORD(STACK[0x2208]) ^ LODWORD(STACK[0x2038]) ^ v398 ^ (v392 + 1901479783 - ((2 * v392) & 0xE2AC8ECE));
  v404 = STACK[0x2180];
  v405 = ((v403 ^ 0x833963B0) >> v404) - 2062948967 - ((2 * ((v403 ^ 0x833963B0) >> v404)) & 0xA13CB32);
  v406 = STACK[0x2188];
  LODWORD(STACK[0x1F08]) = v405;
  LODWORD(STACK[0x1F80]) = v403;
  if (v406)
  {
    v407 = (v405 ^ 0x8509E599) + ((v403 ^ 0x833963B0) << v406) - 2062948967 - ((2 * ((v405 ^ 0x8509E599) + ((v403 ^ 0x833963B0) << v406))) & 0xA13CB32);
  }

  else
  {
    v407 = v403 ^ 0x6308629;
  }

  LODWORD(STACK[0x22A0]) = v407;
  v408 = LODWORD(STACK[0x1F10]) ^ 0xFB81A877 ^ LODWORD(STACK[0x21C8]);
  v409 = STACK[0x2190];
  if (LODWORD(STACK[0x21C0]) != 8)
  {
    v408 = (v408 << LODWORD(STACK[0x2190])) ^ (v408 >> v406);
  }

  LODWORD(STACK[0x2298]) = v394;
  LODWORD(STACK[0x1F00]) = v395;
  v410 = *(v314 + 4 * (13 * (HIBYTE(v394) ^ 0x96) - 264 * (((12909 * (HIBYTE(v394) ^ 0x96)) >> 16) >> 2)));
  HIDWORD(v412) = v410 ^ 0x8E15;
  LODWORD(v412) = v410 ^ 0xCD880000;
  v411 = v412 >> 16;
  v413 = *(v314 + 4 * (13 * BYTE2(v395) - 264 * (((12909 * BYTE2(v395)) >> 16) >> 2)));
  HIDWORD(v412) = v413 ^ 0x888E15;
  LODWORD(v412) = v413 ^ 0xCD000000;
  v414 = v412 >> 24;
  v415 = BYTE1(v396);
  LODWORD(STACK[0x20B8]) = v396;
  v416 = *(v314 + 4 * (13 * v396 - 264 * (((12909 * v396) >> 16) >> 2)));
  v417 = STACK[0x1EF8];
  HIDWORD(v412) = v416 ^ 0x15;
  LODWORD(v412) = v416 ^ LODWORD(STACK[0x1EF8]);
  v418 = v411 ^ v414 ^ 0x8509E599 ^ (v412 >> 8);
  v419 = STACK[0x22E0];
  v420 = *(v314 + 4 * (13 * BYTE1(v419) - 264 * (((12909 * BYTE1(v419)) >> 16) >> 2))) ^ (v408 - 846688747 - ((2 * v408) & 0x9B111C2A));
  LODWORD(STACK[0x1F60]) = v418;
  v421 = (v420 - 2062948967 - ((2 * v420) & 0xA13CB32)) ^ v418;
  v422 = (v421 + 1250370232 - ((2 * v421) & 0x950E4570)) ^ v399;
  v423 = (v422 + 1901479783 - ((2 * v422) & 0xE2AC8ECE)) ^ v402;
  v424 = (v423 - 2062948967 - ((2 * v423) & 0xA13CB32)) ^ v400;
  LODWORD(STACK[0x1F88]) = v398;
  v425 = v398 ^ v401 ^ (v424 - 514129454 - ((2 * v424) & 0xC2B603A4));
  v426 = ((v425 ^ 0x62626262) >> v409) ^ ((v425 ^ 0x62626262) << v406);
  v427 = v426 - 2062948967 - ((2 * v426) & 0xA13CB32);
  v428 = v425 ^ 0xE76B87FB;
  if (v406)
  {
    v429 = v427;
  }

  else
  {
    v429 = v428;
  }

  LODWORD(STACK[0x2208]) = v429;
  v430 = STACK[0x2250];
  v431 = *(STACK[0x2250] + (((v394 ^ 0x52) - 87) ^ 0xC7));
  LODWORD(STACK[0x2140]) = v431;
  v432 = *(v314 + 4 * (13 * ~v431 - 264 * (((12909 * ~v431) >> 16) >> 2)));
  HIDWORD(v433) = v432 ^ 0x15;
  LODWORD(v433) = v432 ^ v417;
  v434 = (v433 >> 8) - 846688747 - ((2 * (v433 >> 8)) & 0x9B111C2A);
  v435 = *(v314 + 4 * (13 * BYTE2(v419) - 264 * (((12909 * BYTE2(v419)) >> 16) >> 2)));
  v436 = *(v314 + 4 * (13 * HIBYTE(v395) - 264 * (((12909 * HIBYTE(v395)) >> 16) >> 2)));
  HIDWORD(v433) = v436 ^ 0x8E15;
  LODWORD(v433) = v436 ^ 0xCD880000;
  v437 = (LODWORD(STACK[0x1F18]) + 1901479783 - ((2 * LODWORD(STACK[0x1F18])) & 0xE2AC8ECE)) ^ v402 ^ *(v314 + 4 * (13 * v415 - 264 * (((12909 * v415) >> 16) >> 2))) ^ (*(v430 + (((HIBYTE(v435) ^ 0xCD) - 87) ^ 0xC7)) ^ 0xFF | (v435 << 8)) ^ (v433 >> 16) ^ v434;
  v438 = ((v437 ^ 0x888E1500) + 1250370232 - 2 * ((v437 ^ 0x888E1500) & 0x4A8722BB ^ v437 & 3)) ^ v399;
  v439 = (v438 + 435764725 - ((2 * v438) & 0x33F27BEA)) ^ LODWORD(STACK[0x2260]);
  v440 = v398 ^ LODWORD(STACK[0x2258]) ^ (v439 + 963780751 - ((2 * v439) & 0x72E4411E));
  v441 = ((v440 ^ 0x62626262) << v406) | ((v440 ^ 0x62626262u) >> v404);
  v442 = v441 - 2062948967 - ((2 * v441) & 0xA13CB32);
  v443 = STACK[0x2240];
  v444 = *(v314 + 4 * (13 * BYTE2(v443) - 264 * (((12909 * BYTE2(v443)) >> 16) >> 2)));
  LOBYTE(v436) = *(STACK[0x21F0] + (((v444 >> 23) & 0xFE | ((v444 & 0x80000000) == 0)) ^ 0xA1));
  v445 = ((v436 ^ (4 * v436)) + 88) | (v444 << 8);
  v446 = STACK[0x2100];
  v447 = *(v314 + 4 * (13 * LODWORD(STACK[0x2100]) - 264 * (((12909 * LODWORD(STACK[0x2100])) >> 16) >> 2)));
  HIDWORD(v433) = v447 ^ 0x15;
  LODWORD(v433) = v447 ^ v417;
  v448 = v433 >> 8;
  v449 = STACK[0x21A8];
  v450 = *(v314 + 4 * (13 * HIBYTE(v449) - 264 * (((12909 * HIBYTE(v449)) >> 16) >> 2)));
  HIDWORD(v433) = v450 ^ 0x8E15;
  LODWORD(v433) = v450 ^ 0xCD880000;
  v451 = STACK[0x22C8];
  v452 = (((v433 >> 16) ^ v448 ^ v445 ^ 0x888E1500) - 846688747 - 2 * (((v433 >> 16) ^ v448 ^ v445 ^ 0x888E1500) & 0x4D888E17 ^ ((v433 >> 16) ^ v448 ^ v445) & 2)) ^ *(v314 + 4 * (13 * BYTE1(v451) - 264 * (((12909 * BYTE1(v451)) >> 16) >> 2)));
  v453 = (v452 - 2062948967 - ((2 * v452) & 0xA13CB32)) ^ LODWORD(STACK[0x1F20]);
  v454 = (v453 + 1250370232 - ((2 * v453) & 0x950E4570)) ^ v399;
  v455 = (v454 + 1901479783 - ((2 * v454) & 0xE2AC8ECE)) ^ v402;
  v456 = (v455 - 2062948967 - ((2 * v455) & 0xA13CB32)) ^ v400;
  v457 = LODWORD(STACK[0x1ED0]) ^ (v456 - 514129454 - ((2 * v456) & 0xC2B603A4));
  v458 = ((v457 ^ 0x3C3C3C3C) << v406) ^ ((v457 ^ 0x3C3C3C3C) >> v404);
  v459 = v458 + 2082625075 - ((2 * v458) & 0xF844AC66);
  v460 = STACK[0x2160];
  v461 = STACK[0x2190];
  v462 = ((v460 ^ 0x8509E599) << LODWORD(STACK[0x2190])) | ((v460 ^ 0x8509E599) >> v406);
  LODWORD(STACK[0x2180]) = v440 ^ 0xE76B87FB;
  if (v406)
  {
    v463 = v442;
  }

  else
  {
    v463 = v440 ^ 0xE76B87FB;
  }

  LODWORD(STACK[0x21E8]) = v463;
  v464 = v457 ^ 0x401E6A0F;
  if (v406)
  {
    v465 = v459;
  }

  else
  {
    v465 = v464;
  }

  LODWORD(STACK[0x20C0]) = v465;
  v466 = v462 - 2062948967 - ((2 * v462) & 0xA13CB32);
  v467 = *(v314 + 4 * (13 * BYTE2(v451) - 264 * (((12909 * BYTE2(v451)) >> 16) >> 2)));
  HIDWORD(v469) = v467 ^ 0x888E15;
  LODWORD(v469) = v467 ^ 0xCD000000;
  v468 = v469 >> 24;
  v470 = *(v314 + 4 * (13 * HIBYTE(v443) - 264 * (((12909 * HIBYTE(v443)) >> 16) >> 2)));
  HIDWORD(v469) = v470 ^ 0x8E15;
  LODWORD(v469) = v470 ^ 0xCD880000;
  v471 = ((v469 >> 16) ^ v468) - 2062948967 - ((2 * ((v469 >> 16) ^ v468)) & 0xA13CB32);
  v472 = *(v314 + 4 * (13 * v449 - 264 * (((12909 * v449) >> 16) >> 2)));
  v473 = v417;
  HIDWORD(v469) = v472 ^ 0x15;
  LODWORD(v469) = v472 ^ v417;
  v474 = (v469 >> 8) - 846688747 - ((2 * (v469 >> 8)) & 0x9B111C2A);
  if (!v406)
  {
    v466 = v460;
  }

  v475 = *(v314 + 4 * (13 * BYTE1(v446) - 264 * (((12909 * BYTE1(v446)) >> 16) >> 2))) ^ v466 ^ v471 ^ v474;
  v476 = (v475 + 1250370232 - ((2 * v475) & 0x950E4570)) ^ v399;
  v477 = (v476 + 1901479783 - ((2 * v476) & 0xE2AC8ECE)) ^ v402;
  v478 = (v477 + 435764725 - ((2 * v477) & 0x33F27BEA)) ^ LODWORD(STACK[0x2260]);
  v479 = STACK[0x2258];
  v480 = LODWORD(STACK[0x2248]) ^ LODWORD(STACK[0x2258]) ^ (v478 + 963780751 - ((2 * v478) & 0x72E4411E));
  v481 = ((v480 ^ 0x3C3C3C3C) << v406) + ((v480 ^ 0x3C3C3C3Cu) >> v461);
  v482 = v481 + 2082625075 - ((2 * v481) & 0xF844AC66);
  if (v406)
  {
    v484 = v482;
  }

  else
  {
    v484 = v480 ^ 0x401E6A0F;
  }

  v483 = ((STACK[0x20D8] & 0xD ^ 0xD) + (STACK[0x20D8] & 0xD)) * BYTE2(LODWORD(STACK[0x20B8]));
  v485 = *(v314 + 4 * (v483 - 264 * (((993 * v483) >> 16) >> 2)));
  HIDWORD(v487) = v485 ^ 0x888E15;
  LODWORD(v487) = v485 ^ 0xCD000000;
  v486 = v487 >> 24;
  v488 = *(v314 + 4 * (13 * LODWORD(STACK[0x1F00]) - 264 * (((12909 * LODWORD(STACK[0x1F00])) >> 16) >> 2)));
  HIDWORD(v487) = v488 ^ 0x15;
  LODWORD(v487) = v488 ^ v473;
  v489 = *(v314 + 4 * (13 * HIBYTE(LODWORD(STACK[0x22E0])) - 264 * (((12909 * HIBYTE(LODWORD(STACK[0x22E0]))) >> 16) >> 2)));
  v490 = v486 ^ (v487 >> 8) ^ HIWORD(v489) ^ ((v489 ^ 0xCD888E15) << ((~LODWORD(STACK[0x2140]) & 0x10 ^ 0x10) + (~LODWORD(STACK[0x2140]) & 0x10u))) ^ 0xCD88;
  v491 = (LODWORD(STACK[0x1F88]) + 963780751 - ((2 * LODWORD(STACK[0x1F88])) & 0x72E4411E)) ^ v479 ^ LODWORD(STACK[0x1F28]) ^ *(v314 + 4 * (13 * (((STACK[0x2298] & 0xFF00) >> 8) ^ 0xDF) - 264 * (((12909 * (((STACK[0x2298] & 0xFF00) >> 8) ^ 0xDF)) >> 16) >> 2))) ^ (v490 - 846688747 - ((2 * v490) & 0x9B111C2A));
  v492 = (v491 + 1250370232 - ((2 * v491) & 0x950E4570)) ^ v399;
  v493 = (v492 + 435764725 - ((2 * v492) & 0x33F27BEA)) ^ LODWORD(STACK[0x2260]);
  v494 = (v493 + 1901479783 - ((2 * v493) & 0xE2AC8ECE)) ^ v402;
  v495 = ((v494 ^ 0x62626262) >> v461) ^ ((v494 ^ 0x62626262) << v406);
  v496 = v495 - 2062948967 - ((2 * v495) & 0xA13CB32);
  v498 = STACK[0x21C0];
  v499 = v494 ^ 0xE76B87FB;
  if (LODWORD(STACK[0x21C0]) != 8)
  {
    v499 = v496;
  }

  v500 = *(v314 + 4 * (13 * LODWORD(STACK[0x22C8]) - 264 * (((12909 * LODWORD(STACK[0x22C8])) >> 16) >> 2)));
  HIDWORD(v502) = v500 ^ 0x15;
  LODWORD(v502) = v500 ^ v473;
  v501 = v502 >> 8;
  v497 = ((LODWORD(STACK[0x2168]) ^ 0x8509E599) >> v406) + ((LODWORD(STACK[0x2168]) ^ 0x8509E599) << v461);
  v503 = v497 - 2062948967 - ((2 * v497) & 0xA13CB32);
  v504 = *(v314 + 4 * (13 * BYTE2(LODWORD(STACK[0x21A8])) - 264 * (((12909 * BYTE2(LODWORD(STACK[0x21A8]))) >> 16) >> 2)));
  v505 = *(v314 + 4 * (13 * HIBYTE(LODWORD(STACK[0x2100])) - 264 * (((12909 * HIBYTE(LODWORD(STACK[0x2100]))) >> 16) >> 2)));
  HIDWORD(v502) = v505 ^ 0x8E15;
  LODWORD(v502) = v505 ^ 0xCD880000;
  v506 = (*(STACK[0x22B8] + (((HIBYTE(v504) ^ 0xCD) - 87) ^ 0x60)) ^ (~(2 * ((HIBYTE(v504) ^ 0xCD) - 87)) + (HIBYTE(v504) ^ 0xCD) - 87) ^ 0xD9 | (v504 << 8)) ^ (v502 >> 16);
  v507 = *(v314 + 4 * (13 * BYTE1(LODWORD(STACK[0x2240])) - 264 * (((12909 * BYTE1(LODWORD(STACK[0x2240]))) >> 16) >> 2))) ^ v501 ^ ((v506 ^ 0x888E1500) - 846688747 - 2 * ((v506 ^ 0x888E1500) & 0x4D888E1D ^ v506 & 8));
  v508 = v507 - 2062948967 - ((2 * v507) & 0xA13CB32);
  v509 = (LODWORD(STACK[0x2248]) + 963780751 - ((2 * LODWORD(STACK[0x2248])) & 0x72E4411E)) ^ v479;
  v510 = (v509 + 435764725 - ((2 * v509) & 0x33F27BEA)) ^ LODWORD(STACK[0x2260]);
  if (v498 == 8)
  {
    v503 = STACK[0x2168];
  }

  v511 = ((v510 ^ v503 ^ v508) + 1250370232 - ((2 * (v510 ^ v503 ^ v508)) & 0x950E4570)) ^ v399;
  v512 = (v511 + 1901479783 - ((2 * v511) & 0xE2AC8ECE)) ^ v402;
  v513 = ((v512 ^ 0x3C3C3C3C) << v406) ^ ((v512 ^ 0x3C3C3C3C) >> v461);
  v514 = v513 + 2082625075 - ((2 * v513) & 0xF844AC66);
  v515 = v512 ^ 0x401E6A0F;
  if (v498 != 8)
  {
    v515 = v514;
  }

  v516 = STACK[0x1F40];
  if (STACK[0x1E88])
  {
    v517 = v484;
  }

  else
  {
    v517 = STACK[0x1F40];
  }

  if (STACK[0x1E88])
  {
    v518 = STACK[0x1F40];
  }

  else
  {
    v518 = v515;
  }

  v519 = STACK[0x20C0];
  if (STACK[0x1E88])
  {
    v520 = STACK[0x20C0];
  }

  else
  {
    v515 = STACK[0x20C0];
    v520 = v484;
  }

  v521 = LODWORD(STACK[0x2118]) - LODWORD(STACK[0x1CB8]);
  if ((v521 & 2) != 0)
  {
    v522 = v520;
  }

  else
  {
    v522 = v518;
  }

  if ((v521 & 2) != 0)
  {
    v523 = v515;
  }

  else
  {
    v518 = v520;
    v523 = v517;
  }

  if ((v521 & 2) != 0)
  {
    v524 = v517;
  }

  else
  {
    v524 = v515;
  }

  v525 = (STACK[0x2088] & 1) - 2062948967 - 2 * (STACK[0x2088] & 1);
  v526 = STACK[0x21C8];
  v527 = ((v526 ^ 0xFA730294 ^ v522) + 2082625075 - ((2 * (v526 ^ 0xFA730294 ^ v522)) & 0xF844AC66)) ^ v524;
  v528 = v527 - 2062948967 - ((2 * v527) & 0xA13CB32);
  LODWORD(STACK[0x2188]) = v525;
  v529 = v525 == -2062948967;
  v530 = STACK[0x2208];
  v531 = STACK[0x21E8];
  if (v529)
  {
    v532 = STACK[0x21E8];
  }

  else
  {
    v532 = STACK[0x2208];
  }

  v533 = STACK[0x22A0];
  if (v529)
  {
    v534 = STACK[0x2208];
  }

  else
  {
    v534 = STACK[0x22A0];
  }

  if (v529)
  {
    v535 = STACK[0x22A0];
  }

  else
  {
    v535 = v499;
  }

  if (!v529)
  {
    v499 = STACK[0x21E8];
  }

  if ((v521 & 2) != 0)
  {
    v536 = v535;
  }

  else
  {
    v536 = v532;
  }

  if ((v521 & 2) != 0)
  {
    v537 = v499;
  }

  else
  {
    v532 = v535;
    v537 = v534;
  }

  if ((v521 & 2) == 0)
  {
    v534 = v499;
  }

  v538 = v536 ^ v528;
  v539 = (v538 - 2062948967 - ((2 * v538) & 0xA13CB32)) ^ v537;
  LODWORD(STACK[0x20D8]) = v523;
  v540 = (v539 + 2082625075 - ((2 * v539) & 0xF844AC66)) ^ v523;
  v541 = v540 - 2041490265 - ((2 * v540) & 0xCA2A94E);
  LODWORD(STACK[0x2260]) = v532 ^ v526;
  v542 = (155457711 * (v532 ^ v526 ^ 0x358B13E) + 2082625075 - ((310915422 * (v532 ^ v526 ^ 0x358B13E)) & 0xF844AC66)) ^ v524;
  v543 = v541 ^ ((v518 ^ v532 ^ 0xF92BB3AA) - 2041490265 - ((2 * (v518 ^ v532 ^ 0xF92BB3AA)) & 0xCA2A94E));
  LODWORD(STACK[0x22A0]) = v543 ^ 0xDB57BBC7;
  v544 = v543 ^ 0xDB57BBC7 ^ (v542 - 2062948967 - ((2 * v542) & 0xA13CB32));
  v545 = (v544 - 2041490265 - ((2 * v544) & 0xCA2A94E)) ^ v526;
  v546 = STACK[0x21D8];
  LODWORD(STACK[0x22E0]) = v541 ^ v526;
  v547 = v541 ^ v526 ^ 0x5E5E5E5E;
  LODWORD(STACK[0x21A8]) = 155457711 * v547;
  v548 = (155457711 * v547) ^ v534 ^ (v545 + v546 + ~((2 * v545) & 0xA13CB32));
  v549 = (v543 ^ 0x5E5E5E5E) + 1740117181 * ((v536 ^ 0xDB57BBC7) + (v526 ^ 0xA1A1A1A1 ^ (v548 - 2041490265 - ((2 * v548) & 0xCA2A94E)))) + 1740117181;
  v550 = v549 + 556126201 - ((2 * v549) & 0x424B9FF2);
  v551 = (v548 - 2062948967 - ((2 * v548) & 0xA13CB32)) ^ v537;
  v538 ^= 0x5E5E5E5Eu;
  v552 = v526;
  v553 = v538 ^ v526 ^ (v551 - 2041490265 - ((2 * v551) & 0xCA2A94E));
  v554 = (v538 + 1016705037 * ((v534 ^ 0xDB57BBC7) + (v526 ^ 0x588B64A1 ^ v550)) + 1016705037) ^ v553;
  v555 = v536 ^ v526 ^ (v554 - 2062948967 - ((2 * v554) & 0xA13CB32));
  v556 = v526 ^ 0x358B13E;
  v557 = v553 ^ (484866449 * (v526 ^ 0x358B13E ^ v537)) ^ (484866449 * (v555 ^ 0x865154A7));
  v558 = (167791331 * (v550 ^ 0x7F7B91A7)) ^ (167791331 * (v556 ^ v534));
  LODWORD(STACK[0x22C8]) = (v552 ^ 0x27F0F506) + (v532 ^ 0x5E5E5E5E ^ ((v558 ^ v547) - 2062948967 - ((2 * (v558 ^ v547)) & 0xA13CB32)));
  v559 = STACK[0x2020];
  v560 = LODWORD(STACK[0x2060]) ^ LODWORD(STACK[0x2020]) ^ (LODWORD(STACK[0x1F30]) + 86842116 - ((2 * LODWORD(STACK[0x1F30])) & 0xA5A3608));
  v561 = LODWORD(STACK[0x1DF8]) ^ LODWORD(STACK[0x2048]);
  LODWORD(STACK[0x20C0]) = v560;
  LODWORD(STACK[0x2100]) = v561 ^ v560;
  v562 = ((v561 ^ v560 ^ LODWORD(STACK[0x21D0]) ^ LODWORD(STACK[0x1E00]) ^ 0x8509E599) - 2062948967 - 2 * ((v561 ^ v560 ^ LODWORD(STACK[0x21D0]) ^ LODWORD(STACK[0x1E00]) ^ 0x8509E599) & 0x509E59B ^ (v561 ^ v560 ^ LODWORD(STACK[0x21D0]) ^ LODWORD(STACK[0x1E00])) & 2)) ^ LODWORD(STACK[0x2128]);
  LODWORD(STACK[0x1E30]) = v562;
  v563 = (v562 + v546 + ~((2 * v562) & 0xA13CB32)) ^ LODWORD(STACK[0x1E10]);
  v564 = LODWORD(STACK[0x21A0]) ^ LODWORD(STACK[0x2210]) ^ (v563 - 2062948967 - ((2 * v563) & 0xA13CB32));
  v565 = (LODWORD(STACK[0x1F38]) - 2062948967 - ((2 * LODWORD(STACK[0x1F38])) & 0xA13CB32)) ^ LODWORD(STACK[0x1E08]);
  v566 = (v565 - 2062948967 - ((2 * v565) & 0xA13CB32)) ^ LODWORD(STACK[0x1DF0]);
  LODWORD(STACK[0x20B8]) = v564;
  v567 = v564 ^ (v566 - 2062948967 - ((2 * v566) & 0xA13CB32));
  v568 = (v567 + v546 + ~((2 * v567) & 0xA13CB32)) ^ LODWORD(STACK[0x2148]);
  v569 = ((LODWORD(STACK[0x2090]) ^ LODWORD(STACK[0x2098])) - 2062948967 - ((2 * (LODWORD(STACK[0x2090]) ^ LODWORD(STACK[0x2098]))) & 0xA13CB32)) ^ LODWORD(STACK[0x1FC0]);
  v570 = (LODWORD(STACK[0x1FA8]) - 2062948967 - ((2 * LODWORD(STACK[0x1FA8])) & 0xA13CB32)) ^ LODWORD(STACK[0x2138]) ^ LODWORD(STACK[0x2130]) ^ LODWORD(STACK[0x2050]) ^ (v568 - 2062948967 - ((2 * v568) & 0xA13CB32));
  LODWORD(STACK[0x1FC0]) = v570;
  v571 = v570 ^ (v569 - 2062948967 - ((2 * v569) & 0xA13CB32));
  v572 = (v571 - 2062948967 - ((2 * v571) & 0xA13CB32)) ^ LODWORD(STACK[0x2058]);
  v573 = (v572 - 2062948967 - ((2 * v572) & 0xA13CB32)) ^ LODWORD(STACK[0x2120]);
  v574 = LODWORD(STACK[0x20D0]) ^ LODWORD(STACK[0x20E8]) ^ (v573 - 2062948967 - ((2 * v573) & 0xA13CB32));
  v575 = LODWORD(STACK[0x2008]) ^ 0x6EECEE2F;
  v576 = ((LODWORD(STACK[0x20F8]) ^ LODWORD(STACK[0x1FC8])) - 2062948967 - ((2 * (LODWORD(STACK[0x20F8]) ^ LODWORD(STACK[0x1FC8]))) & 0xA13CB32)) ^ LODWORD(STACK[0x21B0]);
  LODWORD(STACK[0x1FC8]) = v574;
  v577 = v574 ^ (v575 - 2062948967 - ((2 * v575) & 0xA13CB32));
  v578 = ((v576 ^ v577) - 2062948967 - ((2 * (v576 ^ v577)) & 0xA13CB32)) ^ LODWORD(STACK[0x20B0]);
  v579 = (v578 - 2062948967 - ((2 * v578) & 0xA13CB32)) ^ LODWORD(STACK[0x2198]);
  v580 = (v579 - 2062948967 - ((2 * v579) & 0xA13CB32)) ^ LODWORD(STACK[0x2108]);
  v581 = STACK[0x2218];
  v582 = STACK[0x1F58];
  v583 = STACK[0x1F90];
  v584 = LODWORD(STACK[0x1F48]) ^ (((LODWORD(STACK[0x1F48]) ^ LODWORD(STACK[0x1F58])) & STACK[0x1F90]) >> 1);
  v585 = ((((LODWORD(STACK[0x2160]) ^ LODWORD(STACK[0x1F58])) & v581) >> 1) - 2062948967 - ((LODWORD(STACK[0x2160]) ^ LODWORD(STACK[0x1F58])) & v581 & 0xA13CB32)) ^ LODWORD(STACK[0x2160]);
  v586 = STACK[0x2178];
  v587 = STACK[0x2278];
  v588 = STACK[0x2220];
  v589 = STACK[0x2228];
  v590 = ((v585 & STACK[0x2178]) << STACK[0x2228]) ^ ((v585 & STACK[0x2278]) >> STACK[0x2220]);
  v591 = v590 - 2062948967 - ((2 * v590) & 0xA13CB32);
  LODWORD(STACK[0x1E38]) = v584;
  v592 = STACK[0x22F0];
  v593 = STACK[0x2280];
  v594 = STACK[0x22C0];
  v595 = (((v584 ^ 0x8509E599) & STACK[0x2280]) << STACK[0x22C0]) ^ (((v584 ^ 0x8509E599) & STACK[0x22F0]) >> v588);
  v596 = (v580 - 2062948967 - ((2 * v580) & 0xA13CB32)) ^ LODWORD(STACK[0x2040]);
  v597 = LODWORD(STACK[0x2230]) ^ LODWORD(STACK[0x20A0]) ^ 0x9635F766 ^ v596;
  LODWORD(STACK[0x1E18]) = v597;
  v598 = v597 ^ (v595 + 2110848208 - ((2 * v595) & 0xFBA1F9A0));
  v599 = (v598 - 2062948967 - ((2 * v598) & 0xA13CB32)) ^ LODWORD(STACK[0x21B8]);
  v600 = STACK[0x2170];
  LODWORD(STACK[0x21D0]) = v591;
  v601 = v591 ^ v600 ^ (v599 - 2062948967 - ((2 * v599) & 0xA13CB32));
  v602 = LODWORD(STACK[0x2168]) ^ (((LODWORD(STACK[0x2168]) ^ v582) & v581) >> 1);
  LODWORD(STACK[0x21E8]) = v602;
  v603 = (((v602 ^ 0x8509E599) & v586) << v589) - 2062948967 - ((2 * (((v602 ^ 0x8509E599) & v586) << v589)) & 0xA13CB32);
  v604 = (((v602 ^ 0x8509E599) & v587) >> STACK[0x21F8]) - 2062948967 - ((2 * (((v602 ^ 0x8509E599) & v587) >> STACK[0x21F8])) & 0xA13CB32);
  v605 = v596 & 1 | 0x12C3001C;
  v606 = v596 & 1;
  v607 = v606 ^ 1 ^ v605;
  v608 = (v606 ^ 1) + v606;
  v609 = STACK[0x1FB0] & v583;
  LODWORD(STACK[0x20F8]) = v603;
  v610 = v604 ^ v603;
  v611 = (1798269387 * v607) & v610;
  v612 = v610 & 0x400;
  if ((v612 & ~v601) != 0)
  {
    v612 = -v612;
  }

  LODWORD(STACK[0x2248]) = v601;
  v613 = v611 ^ 0x8509E599 ^ (v612 + (v601 ^ 0x8509E599));
  v614 = ((v609 >> v608) - 2062948967 - ((2 * (v609 >> v608)) & 0xA13CB32)) ^ LODWORD(STACK[0x2070]);
  v615 = ((v614 & v592) >> v588) + ((v614 & v593) << v594);
  LODWORD(STACK[0x1E28]) = v613;
  v616 = (v615 - 2062948967 - ((2 * v615) & 0xA13CB32)) ^ v613;
  v617 = v616 + 86842116 - ((2 * v616) & 0xA5A3608);
  v618 = (v616 ^ LODWORD(STACK[0x2030])) - 2062948967 - ((2 * (v616 ^ LODWORD(STACK[0x2030]))) & 0xA13CB32);
  LODWORD(STACK[0x21B0]) = v618;
  LODWORD(STACK[0x21D8]) = v550;
  v619 = LODWORD(STACK[0x1CB0]) - 379838127 * (v618 ^ 0xD5813764) + (v550 ^ 0x2125CFF9);
  v620 = v619 + 383490608 - ((2 * v619) & 0x2DB73460);
  v621 = ((-2062948967 - 131208163 * (v618 ^ 0xD5813764) - ((6019130 * (v618 ^ 0xD5813764)) & 0xA13CB32)) ^ 0x7AF61A66) + 529221367 * LODWORD(STACK[0x22C8]) + (v555 ^ 0xD80F0AF9) + 529221368;
  v622 = v621 - 88252279 - ((2 * v621) & 0xF57AC112);
  v623 = v617 ^ v559;
  v624 = v623 ^ 0x5088D2FD;
  v625 = (v558 ^ LODWORD(STACK[0x22E0])) - (((v623 ^ 0x5088D2FD) & (v623 ^ 0x902) & 0x9FB) + 2143909305) * (v623 ^ 0x5088D2FD);
  v626 = STACK[0x1D08];
  v627 = -812407749 * ((-812407749 * ((*(STACK[0x1CC0] + STACK[0x1CC8]) ^ v626) & 0x7FFFFFFF)) ^ ((-812407749 * ((*(STACK[0x1CC0] + STACK[0x1CC8]) ^ v626) & 0x7FFFFFFF)) >> 16));
  *v626 = *(STACK[0x1FF8] + (*(STACK[0x2068] + ((((((v557 + 1950940097 * (v624 - LODWORD(STACK[0x1D28])) - 594395642) ^ ((v620 ^ 0x16DB9A30) - ((2 * (v620 ^ 0x16DB9A30) + 826502604) & 0x2EF3F7DE) + 270250709)) >> 24) ^ 0x3E) - 87) ^ 0xC7)) ^ 0xE3) + 1329) ^ *(STACK[0x1D00] + (v627 >> 24)) ^ *((v627 >> 24) + STACK[0x1CF8] + 1) ^ *(STACK[0x1CF0] + (v627 >> 24)) ^ v627 ^ (-119 * BYTE3(v627)) ^ 0x8C;
  v628 = v625 + LODWORD(STACK[0x1CA8]);
  LODWORD(STACK[0x1F40]) = v628 - ((2 * v628 + 153740668) & 0xA13CB32) - 375465897;
  LODWORD(STACK[0x2278]) = v622;
  LODWORD(v627) = (v622 ^ 0xFABD6089) + LODWORD(STACK[0x1CAC]) - ((2 * ((v622 ^ 0xFABD6089) + LODWORD(STACK[0x1CAC])) - 1763132028) & 0xFBA1F9A0) - 918201454;
  LODWORD(STACK[0x1F48]) = v627;
  return (*(STACK[0x22F8] + 8 * ((1019 * ((((v628 - ((2 * v628 + 124) & 0x32) + 87) ^ v620) ^ 0x4E) == (((v628 - ((2 * v628 + 124) & 0x32) + 87) ^ v620 ^ 0x4E) + 4))) ^ LODWORD(STACK[0x20E0]))))(v627 ^ v628);
}

void sub_26AA7AFDC(int a1@<W0>, int a2@<W2>, int a3@<W3>, int a4@<W6>, int a5@<W7>, int a6@<W8>)
{
  LODWORD(STACK[0x2220]) = a6;
  LODWORD(STACK[0x20A0]) = v14;
  LODWORD(STACK[0x1FB0]) = v7;
  LODWORD(STACK[0x2218]) = a5;
  LODWORD(STACK[0x2228]) = LODWORD(STACK[0x2298]) ^ 0x13F33ACB;
  v15 = LODWORD(STACK[0x1F80]) ^ 0x6452E44Bu;
  LODWORD(STACK[0x1DC8]) = LODWORD(STACK[0x2260]) ^ 0x865154A7;
  LODWORD(STACK[0x1DC0]) = v9 ^ 0x5E5E5E5E;
  LODWORD(STACK[0x2178]) = v6 ^ 0x99D1E1DA;
  LODWORD(STACK[0x2208]) = a2 ^ 0xE15B01D2;
  LODWORD(STACK[0x2240]) = v11 ^ a3;
  LODWORD(STACK[0x1DD0]) = v8 ^ 0xF8D91949;
  LODWORD(STACK[0x1F38]) = v12 ^ 0xA3B9258A;
  LODWORD(STACK[0x2260]) = v13 ^ 0x8E80C61A;
  LODWORD(STACK[0x2258]) = a1 ^ 0x44A2DC5F;
  LODWORD(STACK[0x2098]) = v13 ^ 0xBB096104;
  LODWORD(STACK[0x22C8]) = a4 ^ 0xC5A10D22;
  LODWORD(STACK[0x2140]) = v10 ^ 0xD1C58078;
  LODWORD(STACK[0x21F8]) = STACK[0x1C9C];
  LODWORD(STACK[0x1DE8]) = STACK[0x2210];
  LODWORD(STACK[0x1DB8]) = STACK[0x2058];
  LODWORD(STACK[0x1F80]) = STACK[0x21A0];
  v16 = LODWORD(STACK[0x2050]);
  v17 = LODWORD(STACK[0x1CA4]);
  v18 = LODWORD(STACK[0x1D50]);
  LODWORD(STACK[0x1DB0]) = STACK[0x2040];
  LODWORD(STACK[0x20E0]) = STACK[0x1D48];
  LODWORD(STACK[0x2090]) = STACK[0x2160];
  LODWORD(STACK[0x1F88]) = STACK[0x2060];
  LODWORD(STACK[0x1DE0]) = STACK[0x2168];
  LODWORD(STACK[0x22E0]) = STACK[0x21B0];
  LODWORD(STACK[0x22F0]) = STACK[0x1CA0];
  LODWORD(STACK[0x1F90]) = STACK[0x2198];
  LODWORD(STACK[0x1DD8]) = STACK[0x1D40];
  v19 = STACK[0x6C0];
  LODWORD(STACK[0x2040]) = a4;
  LODWORD(STACK[0x1FA8]) = v10;
  v20 = LODWORD(STACK[0x2190]);
  v21 = LODWORD(STACK[0x2048]);
  v22 = LODWORD(STACK[0x2170]);
  v23 = LODWORD(STACK[0x2078]);
  v24 = LODWORD(STACK[0x1DA0]);
  v25 = LODWORD(STACK[0x2180]);
  v26 = LODWORD(STACK[0x1F08]);
  v27 = LODWORD(STACK[0x21A8]);
  JUMPOUT(0x26AA74F64);
}

uint64_t sub_26AA7B184(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _BYTE *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = ((v67 >> 23) & 0xFE | ((v67 & 0x80000000) == 0)) ^ 0x37;
  v72 = STACK[0x1FF8];
  v73 = STACK[0x1FF8] + 534;
  v74 = ~*(v73 + (((*(STACK[0x2290] + ((-75 * (BYTE2(v67) ^ 0x24)) ^ 0x31)) ^ 0x6C) + 125) ^ 0xDDLL));
  v75 = BYTE1(v67);
  v76 = STACK[0x2158];
  v77 = ~*(STACK[0x2158] + (((v74 < 0) | (2 * v74)) ^ 0xD9));
  v78 = ((~*(v76 + v71) >> 1) | (~*(v76 + v71) << 7)) ^ 0xBE;
  v79 = STACK[0x22D0];
  v80 = *STACK[0x22D0] & 0x1F9D3120;
  v81 = *STACK[0x22E8];
  v82 = STACK[0x22E8];
  LODWORD(v71) = (*(v81 + v80) ^ STACK[0x1C08]) & 0x7FFFFFFF;
  v83 = -812407749 * ((-812407749 * v71) ^ ((-812407749 * v71) >> 16));
  v84 = STACK[0x1D00];
  v85 = STACK[0x1CF8];
  v86 = STACK[0x1CF0];
  a30[2845] = ((((v77 >> 1) | (v77 << 7)) ^ 0xBE) - 40) ^ *(STACK[0x1D00] + (v83 >> 24)) ^ *((v83 >> 24) + STACK[0x1CF8] + 1) ^ *(STACK[0x1CF0] + (v83 >> 24)) ^ v83 ^ (-119 * BYTE3(v83)) ^ 0x75;
  LODWORD(v83) = -812407749 * ((*(v81 + v80) ^ STACK[0x1C10]) & 0x7FFFFFFF);
  v87 = -812407749 * (v83 ^ WORD1(v83));
  v72 += 1329;
  a30[2853] = *(v72 + (BYTE2(a7) ^ 0x41)) ^ *(v84 + (v87 >> 24)) ^ *((v87 >> 24) + v85 + 1) ^ *(v86 + (v87 >> 24)) ^ v87 ^ (-119 * BYTE3(v87)) ^ 0x2F;
  v88 = *(v73 + (v75 ^ 0x19)) ^ 0x45;
  LODWORD(v80) = -812407749 * ((*(v81 + v80) ^ STACK[0x1C18]) & 0x7FFFFFFF);
  v89 = -812407749 * (v80 ^ WORD1(v80));
  a30[2846] = *((v89 >> 24) + v85 + 1) ^ *(v84 + (v89 >> 24)) ^ *(v86 + (v89 >> 24)) ^ v89 ^ (-119 * BYTE3(v89)) ^ ((((((v88 >> 3) | (32 * v88)) ^ 0xA2) + ~*(STACK[0x2288] + (((v88 >> 3) | (32 * v88)) ^ 0xF5))) ^ 0x1D) + 96);
  LODWORD(v81) = *(v73 + ((v78 - 40) ^ 0x3DLL));
  LOBYTE(v81) = ~*(v76 + (((v81 >> 7) | (2 * (v81 ^ 0x16))) ^ 0xE3));
  v90 = ((v81 >> 1) | (v81 << 7)) ^ 0xBE;
  v91 = v79;
  v92 = *v79 & 0x1F9D3120;
  v93 = *v82;
  v94 = -812407749 * ((*(*v82 + v92) ^ a65) & 0x7FFFFFFF);
  v95 = -812407749 * (v94 ^ HIWORD(v94));
  *a65 = *(v84 + (v95 >> 24)) ^ *((v95 >> 24) + v85 + 1) ^ *(v86 + (v95 >> 24)) ^ v95 ^ (-119 * BYTE3(v95)) ^ (v90 - 40);
  LODWORD(v95) = -812407749 * ((*(v93 + v92) ^ STACK[0x1C20]) & 0x7FFFFFFF);
  v96 = -812407749 * (v95 ^ WORD1(v95));
  a30[2858] = *(v72 + (BYTE1(v69) ^ 0xD0)) ^ *(v84 + (v96 >> 24)) ^ *((v96 >> 24) + v85 + 1) ^ *(v86 + (v96 >> 24)) ^ v96 ^ (-119 * BYTE3(v96)) ^ 0xA9;
  LODWORD(v92) = -812407749 * ((*(v93 + v92) ^ STACK[0x1C28]) & 0x7FFFFFFF);
  v97 = -812407749 * (v92 ^ WORD1(v92));
  v98 = v72;
  a30[2852] = *(v72 + (HIBYTE(a7) ^ 0x4ELL)) ^ *(v84 + (v97 >> 24)) ^ *((v97 >> 24) + v85 + 1) ^ *(v86 + (v97 >> 24)) ^ v97 ^ (-119 * BYTE3(v97)) ^ 0xD9;
  v99 = *v79 & 0x1F9D3120;
  v100 = *v82;
  LODWORD(v96) = -812407749 * ((*(*v82 + v99) ^ STACK[0x1C30]) & 0x7FFFFFFF);
  v101 = -812407749 * (v96 ^ WORD1(v96));
  a30[2855] = *(v72 + (a7 ^ 0x46)) ^ *(v84 + (v101 >> 24)) ^ *((v101 >> 24) + v85 + 1) ^ *(v86 + (v101 >> 24)) ^ v101 ^ (-119 * BYTE3(v101)) ^ 0x3C;
  LODWORD(v101) = -812407749 * ((*(v100 + v99) ^ STACK[0x1C38]) & 0x7FFFFFFF);
  v102 = -812407749 * (v101 ^ WORD1(v101));
  a30[2847] = *(v73 + (*(v68 + ((v66 - 87) ^ 0xC7)) ^ 0x22)) ^ *(v84 + (v102 >> 24)) ^ *((v102 >> 24) + v85 + 1) ^ *(v86 + (v102 >> 24)) ^ v102 ^ (-119 * BYTE3(v102)) ^ 0x2A;
  LODWORD(v99) = -812407749 * ((*(v100 + v99) ^ STACK[0x1C40]) & 0x7FFFFFFF);
  v103 = -812407749 * (v99 ^ WORD1(v99));
  a30[2859] = *(v73 + (v69 ^ 0xALL)) ^ *(v84 + (v103 >> 24)) ^ *((v103 >> 24) + v85 + 1) ^ *(v86 + (v103 >> 24)) ^ v103 ^ (-119 * BYTE3(v103)) ^ 0x4B;
  v104 = *v79 & 0x1F9D3120;
  v105 = *v82;
  LODWORD(v102) = -812407749 * ((*(*v82 + v104) ^ STACK[0x1C48]) & 0x7FFFFFFF);
  v106 = -812407749 * (v102 ^ WORD1(v102));
  a30[2854] = *(v72 + (BYTE1(a7) ^ 0xBLL)) ^ *(v84 + (v106 >> 24)) ^ *((v106 >> 24) + v85 + 1) ^ *(v86 + (v106 >> 24)) ^ v106 ^ (-119 * BYTE3(v106)) ^ 0x98;
  LODWORD(v106) = -812407749 * ((*(v105 + v104) ^ STACK[0x1C50]) & 0x7FFFFFFF);
  v107 = -812407749 * (v106 ^ WORD1(v106));
  a30[2849] = *(v72 + (BYTE2(a1) ^ 0x5BLL)) ^ *(v84 + (v107 >> 24)) ^ *((v107 >> 24) + v85 + 1) ^ *(v86 + (v107 >> 24)) ^ v107 ^ (-119 * BYTE3(v107)) ^ 0xD5;
  LODWORD(v104) = -812407749 * ((*(v105 + v104) ^ STACK[0x1C58]) & 0x7FFFFFFF);
  v108 = -812407749 * (v104 ^ WORD1(v104));
  a30[2848] = *(v73 + (HIBYTE(a1) ^ 0x33)) ^ *(v84 + (v108 >> 24)) ^ *((v108 >> 24) + v85 + 1) ^ *(v86 + (v108 >> 24)) ^ v108 ^ (-119 * BYTE3(v108)) ^ 0xE2;
  v109 = *v79 & 0x1F9D3120;
  v110 = *v82;
  v111 = -812407749 * ((*(*v82 + v109) ^ STACK[0x1C60]) & 0x7FFFFFFF);
  v112 = -812407749 * (v111 ^ HIWORD(v111));
  a30[2851] = *(v72 + (a1 ^ 0x93)) ^ *(v84 + (v112 >> 24)) ^ *((v112 >> 24) + v85 + 1) ^ *(v86 + (v112 >> 24)) ^ v112 ^ (-119 * BYTE3(v112)) ^ 0x10;
  LODWORD(v105) = -812407749 * ((*(v110 + v109) ^ STACK[0x1C68]) & 0x7FFFFFFF);
  v113 = -812407749 * (v105 ^ WORD1(v105));
  v114 = STACK[0x1BD8];
  v115 = STACK[0x1BD0];
  v116 = STACK[0x1BC8];
  v117 = v73;
  a30[2857] = *(v73 + (BYTE2(v69) ^ 0x97)) ^ *(STACK[0x1BD8] + (v113 >> 24)) ^ *(STACK[0x1BD0] + (v113 >> 24) + 2) ^ *(STACK[0x1BC8] + (v113 >> 24) + 2) ^ v113 ^ (85 * BYTE3(v113)) ^ 0x8F;
  LODWORD(v79) = STACK[0x1BE0];
  HIDWORD(v118) = LODWORD(STACK[0x1BE0]) ^ 0x4B073E;
  LODWORD(v118) = LODWORD(STACK[0x1BE0]) ^ 0x70000000;
  LODWORD(v112) = v118 >> 24;
  HIDWORD(v118) = LODWORD(STACK[0x1BE0]) ^ 0x73E;
  LODWORD(v118) = LODWORD(STACK[0x1BE0]) ^ 0x704B0000;
  LODWORD(v109) = -812407749 * ((*(v110 + v109) ^ STACK[0x1C70]) & 0x7FFFFFFF);
  v119 = -812407749 * (v109 ^ WORD1(v109));
  LODWORD(v112) = v112 ^ (v118 >> 16);
  a30[2850] = *(v73 + (BYTE1(a1) ^ 0x30)) ^ *(v114 + (v119 >> 24)) ^ *(v115 + (v119 >> 24) + 2) ^ *(v116 + (v119 >> 24) + 2) ^ v119 ^ (85 * BYTE3(v119)) ^ 6;
  HIDWORD(v118) = v79 ^ 0x3E;
  LODWORD(v118) = v79 ^ 0x704B0700;
  v120 = ((v112 ^ (v118 >> 8)) + 1883965246 - ((2 * (v112 ^ (v118 >> 8))) & 0xE0960E7C)) ^ v79 ^ LODWORD(STACK[0x1F50]);
  STACK[0x22C8] = v120 ^ 0x7C877A9E ^ LODWORD(STACK[0x1F40]);
  v121 = LODWORD(STACK[0x1F48]) ^ v120;
  v122 = v120 ^ 0x89A58AA5 ^ v70;
  LODWORD(v110) = v65 ^ v120 ^ 0x7459869B;
  LOBYTE(v73) = ~*(STACK[0x2288] + (((v110 >> 3) & 0xE0 | (v110 >> 11)) ^ 0xF5)) + (((v110 >> 3) & 0xE0 | (v110 >> 11)) ^ 0xA2);
  LODWORD(STACK[0x22F0]) = *(STACK[0x21F0] + (((v110 >> 23) & 0xFE | ((v65 ^ v120) >> 31)) ^ 0x3BLL));
  v123 = v121 ^ 0x71BD3EC9;
  STACK[0x22E0] = v123;
  v124 = HIBYTE(v121) ^ 0xE6;
  v125 = v91;
  v126 = *v91 & 0x1F9D3120;
  v127 = *v82;
  v128 = -812407749 * ((*(*v82 + v126) ^ (a30 + 2864)) & 0x7FFFFFFF);
  v129 = -812407749 * (v128 ^ HIWORD(v128));
  v130 = v117;
  a30[2864] = *(v117 + v124) ^ *(v84 + (v129 >> 24)) ^ *((v129 >> 24) + v85 + 1) ^ *(v86 + (v129 >> 24)) ^ v129 ^ (-119 * BYTE3(v129)) ^ 0xD7;
  LODWORD(v129) = -812407749 * ((*(v127 + v126) ^ (a30 + 2868)) & 0x7FFFFFFF);
  v131 = -812407749 * (v129 ^ WORD1(v129));
  v132 = v84;
  a30[2868] = *(v98 + ((v122 >> 24) ^ 0x54)) ^ *(v84 + (v131 >> 24)) ^ *((v131 >> 24) + v85 + 1) ^ *(v86 + (v131 >> 24)) ^ v131 ^ (-119 * BYTE3(v131)) ^ 0x32;
  LODWORD(v126) = -812407749 * ((*(v127 + v126) ^ (a30 + 2867)) & 0x7FFFFFFF);
  v133 = -812407749 * (v126 ^ WORD1(v126));
  a30[2867] = *(v130 + (v123 ^ 0x97)) ^ *(v114 + (v133 >> 24)) ^ *(v115 + (v133 >> 24) + 2) ^ *(v116 + (v133 >> 24) + 2) ^ v133 ^ (85 * BYTE3(v133)) ^ 0xEE;
  v134 = *v125 & 0x1F9D3120;
  v135 = *v82;
  LODWORD(v79) = -812407749 * ((*(*v82 + v134) ^ (a30 + 2863)) & 0x7FFFFFFF);
  v136 = -812407749 * (v79 ^ WORD1(v79));
  v137 = STACK[0x22C8];
  v138 = v98;
  a30[2863] = *(v98 + (STACK[0x22C8] ^ 0x54)) ^ *(v114 + (v136 >> 24)) ^ *(v115 + (v136 >> 24) + 2) ^ *(v116 + (v136 >> 24) + 2) ^ v136 ^ (85 * BYTE3(v136)) ^ 2;
  LODWORD(v136) = -812407749 * ((*(v135 + v134) ^ (a30 + 2869)) & 0x7FFFFFFF);
  v139 = -812407749 * (v136 ^ WORD1(v136));
  LOBYTE(v98) = v73 ^ 0x1D;
  LOBYTE(v76) = *(v114 + (v139 >> 24)) ^ *(v115 + (v139 >> 24) + 2) ^ *(v116 + (v139 >> 24) + 2) ^ v139 ^ (85 * BYTE3(v139)) ^ 0x4D;
  v140 = v138;
  a30[2869] = *(v138 + (BYTE2(v122) ^ 0x54)) ^ v76;
  v141 = v130;
  LODWORD(v76) = -812407749 * ((*(v135 + v134) ^ (a30 + 2871)) & 0x7FFFFFFF);
  v142 = -812407749 * (v76 ^ WORD1(v76));
  a30[2871] = *(v130 + ((((~(106 * v122) - 75 * v122) ^ 0xC4 ^ *(STACK[0x22A8] + ((-75 * v122) ^ 0x52))) + 125) ^ 0xDDLL)) ^ *(v132 + (v142 >> 24)) ^ *((v142 >> 24) + v85 + 1) ^ *(v86 + (v142 >> 24)) ^ v142 ^ (-119 * BYTE3(v142)) ^ 0x2D;
  v143 = *v82;
  v144 = *v125 & 0x1F9D3120;
  LODWORD(v73) = -812407749 * ((*(*v82 + v144) ^ (a30 + 2870)) & 0x7FFFFFFF);
  v145 = -812407749 * (v73 ^ WORD1(v73));
  a30[2870] = *(v130 + (BYTE1(v122) ^ 0x97)) ^ *(v132 + (v145 >> 24)) ^ *((v145 >> 24) + v85 + 1) ^ *(v86 + (v145 >> 24)) ^ v145 ^ (-119 * BYTE3(v145)) ^ 0x1A;
  LOBYTE(v114) = *(v140 + (BYTE2(v110) ^ 0x54)) ^ 0x54;
  LODWORD(v122) = -812407749 * ((*(v143 + v144) ^ (a30 + 2873)) & 0x7FFFFFFF);
  v146 = -812407749 * (v122 ^ WORD1(v122));
  v147 = STACK[0x1C80];
  v148 = STACK[0x1C78];
  v149 = STACK[0x1D30];
  a30[2873] = *(STACK[0x22B8] + ((v114 - 87) ^ 0x60)) ^ *(STACK[0x1C80] + (v146 >> 24)) ^ (v114 - 2 * (v114 - 87) - 88) ^ *(STACK[0x1C78] + (v146 >> 24)) ^ *(STACK[0x1D30] + (v146 >> 24)) ^ v146 ^ (51 * BYTE3(v146)) ^ 0xD9;
  LODWORD(v143) = -812407749 * ((*(v143 + v144) ^ (a30 + 2861)) & 0x7FFFFFFF);
  v150 = -812407749 * (v143 ^ WORD1(v143));
  a30[2861] = *(v141 + (BYTE2(v137) ^ 0x97)) ^ *(v147 + (v150 >> 24)) ^ *(v148 + (v150 >> 24)) ^ *(v149 + (v150 >> 24)) ^ v150 ^ (51 * BYTE3(v150)) ^ 0xA6;
  LOBYTE(v114) = *(v140 + ((v98 + 96) ^ 0xC8));
  v151 = *v82;
  v152 = *v125 & 0x1F9D3120;
  LODWORD(v98) = -812407749 * ((*(*v82 + v152) ^ (a30 + 2874)) & 0x7FFFFFFF);
  v153 = -812407749 * (v98 ^ WORD1(v98));
  a30[2874] = v114 ^ *(v147 + (v153 >> 24)) ^ *(v148 + (v153 >> 24)) ^ *(v149 + (v153 >> 24)) ^ v153 ^ (51 * BYTE3(v153)) ^ 0x47;
  LODWORD(v132) = -812407749 * ((*(v151 + v152) ^ (a30 + 2860)) & 0x7FFFFFFF);
  v154 = -812407749 * (v132 ^ WORD1(v132));
  v155 = STACK[0x22F0];
  a30[2860] = *(STACK[0x2250] + (((*(v140 + ((v137 >> 24) ^ 0x54)) ^ 0x18) - 87) ^ 0xC7)) ^ *(v147 + (v154 >> 24)) ^ *(v148 + (v154 >> 24)) ^ *(v149 + (v154 >> 24)) ^ v154 ^ (51 * BYTE3(v154)) ^ 0x38;
  v156 = STACK[0x22E0];
  LODWORD(v151) = -812407749 * ((*(v151 + v152) ^ (a30 + 2866)) & 0x7FFFFFFF);
  v157 = -812407749 * (v151 ^ WORD1(v151));
  a30[2866] = *(v141 + (BYTE1(STACK[0x22E0]) ^ 0x97)) ^ *(v147 + (v157 >> 24)) ^ *(v148 + (v157 >> 24)) ^ *(v149 + (v157 >> 24)) ^ v157 ^ (51 * BYTE3(v157)) ^ 0x4A;
  LOBYTE(v153) = *(v141 + (v110 ^ 0x97));
  v158 = *v82;
  v159 = *v125 & 0x1F9D3120;
  LODWORD(v110) = -812407749 * ((*(*v82 + v159) ^ (a30 + 2875)) & 0x7FFFFFFF);
  v160 = -812407749 * (v110 ^ WORD1(v110));
  a30[2875] = v153 ^ *(v147 + (v160 >> 24)) ^ *(v148 + (v160 >> 24)) ^ *(v149 + (v160 >> 24)) ^ v160 ^ (51 * BYTE3(v160)) ^ 0x59;
  LOBYTE(v153) = *(v140 + (BYTE1(v137) ^ 0x54));
  LOBYTE(v115) = ((~(2 * ((116 - (v153 ^ 0x8B)) ^ (v153 + 1))) + ((116 - (v153 ^ 0x8B)) ^ (v153 + 1))) ^ v153) + 116;
  LODWORD(v153) = -812407749 * ((*(v158 + v159) ^ (a30 + 2862)) & 0x7FFFFFFF);
  v161 = -812407749 * (v153 ^ WORD1(v153));
  a30[2862] = *(v148 + (v161 >> 24)) ^ *(v147 + (v161 >> 24)) ^ *(v149 + (v161 >> 24)) ^ v161 ^ (51 * BYTE3(v161)) ^ v115;
  LODWORD(v151) = -812407749 * ((*(v158 + v159) ^ (a30 + 2872)) & 0x7FFFFFFF);
  v162 = -812407749 * (v151 ^ WORD1(v151));
  a30[2872] = *(v140 + (((v155 ^ (4 * v155)) + 88) ^ 0xD7)) ^ *(v147 + (v162 >> 24)) ^ *(v148 + (v162 >> 24)) ^ *(v149 + (v162 >> 24)) ^ v162 ^ (51 * BYTE3(v162)) ^ 0xDD;
  v163 = *v125;
  v164 = *v82;
  LODWORD(v115) = -812407749 * ((*(*v82 + (v163 & 0x1F9D3120)) ^ (a30 + 2865)) & 0x7FFFFFFF);
  v165 = -812407749 * (v115 ^ WORD1(v115));
  LODWORD(v158) = LODWORD(STACK[0x20E0]) - 916;
  a30[2865] = *(v141 + (BYTE2(v156) ^ 0x97)) ^ *(v147 + (v165 >> 24)) ^ *(v148 + (v165 >> 24)) ^ *(v149 + (v165 >> 24)) ^ v165 ^ (51 * BYTE3(v165)) ^ 0xD9;
  v166 = STACK[0x22F8];
  LODWORD(v119) = -812407749 * ((*(v164 + (v163 & STACK[0x1BC0])) ^ a64) & 0x7FFFFFFF);
  v167 = -812407749 * ((v119 >> ((v158 + 65) ^ 0xB7)) ^ v119);
  LODWORD(v137) = -812407749 * ((*(v164 + (v163 & 0x1F9D3120)) ^ a65) & 0x7FFFFFFF);
  v168 = -812407749 * (v137 ^ WORD1(v137));
  v169 = -812407749 * (v119 ^ WORD1(v119));
  *a64 ^= *a65 ^ *(STACK[0x2200] + (v167 >> 24)) ^ *(STACK[0x2270] + (v167 >> 24)) ^ *(STACK[0x22B0] + (v167 >> 24)) ^ *(v147 + (v168 >> 24)) ^ *(v148 + (v168 >> 24)) ^ v167 ^ *(STACK[0x1D30] + (v168 >> 24)) ^ (33 * BYTE3(v167)) ^ *(STACK[0x2200] + (v169 >> 24)) ^ *(STACK[0x2270] + (v169 >> 24)) ^ v168 ^ *(STACK[0x22B0] + (v169 >> 24)) ^ (51 * BYTE3(v168)) ^ v169 ^ (33 * BYTE3(v169));
  return (*(v166 + 8 * v158))();
}

uint64_t sub_26AA7C2CC()
{
  v13 = *(v1 + v0) ^ (v9 + v4);
  v14 = (((v13 & (v3 + 2147481688)) * v6) ^ (((v13 & (v3 + 2147481688)) * v6) >> 16)) * v6;
  v15 = ((*(v1 + v2) ^ (v10 + v4 + 16)) & 0x7FFFFFFF) * v6;
  v16 = (v15 ^ HIWORD(v15)) * v6;
  v17 = 33 * (((((v13 & (v3 + 2147481688)) * v6) ^ (((v13 & (v3 + 2147481688)) * v6) >> 16)) * v6) >> 24);
  v18 = (((v13 & 0x7FFFFFFF) * v6) ^ (((v13 & 0x7FFFFFFFu) * v6) >> 16)) * v6;
  v19 = *(v9 + v4) ^ *(v10 + v4 + 16) ^ *(v8 + (v14 >> 24)) ^ *(v12 + (v14 >> 24)) ^ *(v5 + (v14 >> 24)) ^ *(*(v7 + 8 * (v3 & 0xEE1BF0B3)) + (v16 >> 24)) ^ v14 ^ *(*(v7 + 8 * (v3 & 0xEA3560AE)) + (v16 >> 24) - 12);
  v20 = STACK[0x22B0];
  *(v9 + v4) = v19 ^ v17 ^ *(*(v7 + 8 * (v3 ^ 0x7AB)) + (v16 >> 24) - 7) ^ v16 ^ *(v8 + (v18 >> 24)) ^ *(v12 + (v18 >> 24)) ^ (-79 * BYTE3(v16)) ^ *(STACK[0x22B0] + (v18 >> 24)) ^ v18 ^ (33 * BYTE3(v18));
  return (*(v11 + 8 * ((23 * (v4 == 15)) ^ v3)))();
}

uint64_t sub_26AA7C414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v27 = v22 + 120;
  v28 = *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x8A2133F0));
  v29 = ((((v28 ^ ((&STACK[0x2000] + 10400) | 8)) & 0x7FFFFFFF) * v24) ^ ((((v28 ^ ((&STACK[0x2000] + 10400) | 8)) & 0x7FFFFFFF) * v24) >> 16)) * v24;
  *STACK[0x2310] = *(STACK[0x2200] + (v29 >> ((v27 ^ 0xA6u) + 95))) ^ *v25 ^ *(STACK[0x2270] + (v29 >> ((v27 ^ 0xA6u) + 95))) ^ *(v23 + (v29 >> ((v27 ^ 0xA6u) + 95))) ^ v29 ^ (33 * (v29 >> ((v27 ^ 0xA6u) + 95)));
  return (*(v26 + 8 * ((v22 + 277) ^ 0x7C)))(a22);
}

uint64_t sub_26AA7C510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v49 = STACK[0x2348];
  *(v49 + 11424) = a44;
  *(v49 + 11432) = v46;
  *(v49 + 11440) = a45;
  *(v49 + 11448) = STACK[0x7F0];
  *(v49 + 11456) = v47;
  v50 = STACK[0x2320];
  *(v49 + 11464) = STACK[0x2320];
  v51 = STACK[0x2300];
  *(v49 + 11472) = STACK[0x2300];
  *(v49 + 11480) = v45;
  STACK[0x22F0] = v49 + 28680;
  *(v49 + 28680) = -811825237;
  *(v49 + 28684) = 0xCF9C85BBCF9C85BBLL;
  *(v49 + 28692) = 0xCF9C85BBCF9C85BBLL;
  *(v49 + 28700) = -811825701;
  *(v49 + 28704) = -811825781;
  *(v49 + 28708) = -811825781;
  if (v50)
  {
    v52 = v51 == 0;
  }

  else
  {
    v52 = 1;
  }

  v53 = !v52;
  return (*(v48 + 8 * ((v53 * (((a3 + 1024339526) & 0xC2F1CD1F) + 378)) ^ a3)))(a1, a2, 1009461204);
}

uint64_t sub_26AA7C5D0()
{
  LODWORD(STACK[0x22C0]) = v0 + 3484;
  v3 = *STACK[0x11F8];
  STACK[0x22E8] = v3;
  v4 = STACK[0x22D8];
  v5 = *(STACK[0x22D8] + 9);
  v6 = *STACK[0x1280];
  v7 = ((v0 + 9) | 0x91) ^ v5;
  v8 = (v7 ^ 0xEE) & 0x77777751 | 0x26;
  v9 = (v7 ^ 0xEE) & 0xAE ^ -((v7 ^ 0xEE) & 0xAE) ^ (v8 - (v7 ^ 0xC8));
  v10 = ((v9 ^ v8) + 2 * (v9 & v8)) ^ 0x26DF7DBE;
  LOBYTE(v9) = *(STACK[0x22D8] + 47);
  HIDWORD(v11) = v10;
  LODWORD(v11) = v10;
  LODWORD(STACK[0x2288]) = (v11 >> 3) - ((2 * (v11 >> 3)) & 0x89B7DF6E) - 992219209;
  v12 = *(v2 + 8 * ((v0 + 3484) ^ 0xD04));
  v13 = v12 - 3;
  v14 = v12 + 529;
  v15 = -105 * v6[15];
  v16 = 13 * v4[39];
  v17 = (*(v12 + 529 + ((-105 * v4[45]) ^ 0xE8)) - 83) ^ 0x6F;
  v18 = *STACK[0x1368];
  v19 = v16 ^ 0x36;
  v20 = v16 ^ 0x4B;
  LODWORD(STACK[0x22E0]) = (v17 >> 1) | (v17 << 7);
  v21 = v4[17];
  v22 = (v20 - v19) ^ 0xFFFFFFFE;
  v23 = v22 ^ v20;
  v24 = (*(v12 + 529 + ((-105 * v9) ^ 0xE8)) - 83) ^ 0x6F;
  v25 = *(v12 + 529 + (v15 ^ 0xE8));
  if (v5 == 87)
  {
    v26 = v20;
  }

  else
  {
    v26 = ~v23;
  }

  v27 = v4[25];
  v28 = v23 + 2 * (v26 & v22);
  LODWORD(STACK[0x22D0]) = (v24 >> 1) | (v24 << 7);
  v29 = *(v13 + (v18 ^ 0x38)) + 24;
  v30 = *(v13 + (v21 ^ 0x71));
  v31 = *v3;
  v32 = (2 * v30) & 0x30;
  v30 ^= 0x18u;
  LODWORD(STACK[0x21F8]) = 45 * (v29 ^ (16 * v29) ^ 0xFFFFFF95) - ((90 * (v29 ^ (16 * v29) ^ 0xFFFFFF95)) & 0xFFFFFF92);
  v33 = (v31 >> 2) | (v31 << 6);
  LODWORD(STACK[0x22C8]) = (((v25 - 83) ^ 0x6F) >> 1) | (((v25 - 83) ^ 0x6F) << 7);
  v34 = v32 + v30;
  v35 = (*(v14 + ((-105 * v27) ^ 0xE8)) - 83) ^ 0x6F;
  v36 = v34 ^ (16 * v30);
  v37 = (*(v14 + ((-105 * (*STACK[0x1380] ^ 0x49)) ^ 0xE8)) - 83) ^ 0x6F;
  v38 = ((v37 >> 1) | (v37 << 7)) + (~(2 * ((v37 >> 1) | (v37 << 7))) | 0x6D);
  v39 = v6[12];
  v40 = *STACK[0x1350];
  LOBYTE(v37) = v40 ^ (v39 + (~(2 * v39) | 0x6D) + 74);
  LOBYTE(v37) = (v37 + v39 - 2 * v37) ^ ((v40 ^ 0xB6) + 1);
  LOBYTE(v30) = v37 - ((2 * v37) & 0x92);
  v41 = v4[1];
  v42 = *(v13 + (v41 ^ 0x71));
  LODWORD(STACK[0x21E8]) = (13 * v4[38]) & 0xB4 ^ 0x36 ^ (((13 * v4[38]) | 0x4B) - ((13 * v4[38]) ^ 0x4B));
  v43 = (((2 * v42) & 0x30) + (v42 ^ 0x18)) ^ (16 * (v42 ^ 0x18));
  LODWORD(STACK[0x22B0]) = v40;
  LODWORD(STACK[0x22B8]) = v39;
  LOBYTE(v34) = (((v30 + 73) ^ v40) + v39) ^ 0xB2;
  v44 = *STACK[0x1200];
  LODWORD(STACK[0x2280]) = v44;
  v45 = v12 + 797;
  LOBYTE(v30) = (*(v12 + 797 + ((((v44 ^ 0xE4u) >> 2) | (v44 << 6)) ^ 0x90)) ^ 0xAD) + 119;
  v46 = v6[43];
  LODWORD(STACK[0x22A8]) = v46;
  v47 = (v46 ^ 0xBu ^ v30 | v34) ^ 0x71;
  v48 = *v4;
  v184 = v41 == 0;
  v49 = *(v13 + v47) + 24;
  v50 = v49 ^ 0xFFFFFFFB;
  if (v184)
  {
    v50 = 4;
  }

  v51 = v38 + 74;
  v52 = (v49 ^ 0xFFFFFFD0) << ((v38 + 74) & 4) << ((v38 + 74) & 4 ^ 4);
  v53 = v50 & v49;
  v54 = v49 & 0x7B;
  v55 = v52 + (v49 & 0xFFFFFF80);
  if ((v52 & v53) != 0)
  {
    v53 = -v53;
  }

  v56 = v55 + v53;
  v57 = v4[48];
  LODWORD(STACK[0x2258]) = v57;
  v58 = v57 ^ 0xFFFFFF90;
  v59 = v6[74];
  LODWORD(STACK[0x2268]) = v59;
  LODWORD(STACK[0x2200]) = (v59 ^ 0x2A) + v58;
  LODWORD(STACK[0x21C0]) = v54 ^ 0xFFFFFF95 ^ v56;
  v60 = v12 + 268;
  v61 = *(v12 + 268 + v28);
  LODWORD(STACK[0x21D8]) = v61;
  v62 = v4[44];
  LODWORD(STACK[0x22A0]) = v62;
  v63 = (v61 ^ 0xFFFFFF87) - (v62 ^ 0xFFFFFFFB);
  v64 = v6[63];
  LODWORD(STACK[0x2290]) = v64;
  v65 = *STACK[0x1398];
  LODWORD(STACK[0x2248]) = v65;
  v66 = (v64 - ((2 * v64) & 0x1B6) + 91) ^ v65 ^ 0x63;
  v67 = v6[4];
  LODWORD(STACK[0x2298]) = v67;
  LOBYTE(v67) = 13 * (v67 ^ 0xF3);
  v68 = v4[14];
  LODWORD(STACK[0x2278]) = v68;
  HIDWORD(v69) = STACK[0x2288];
  LODWORD(v69) = STACK[0x2288];
  v70 = *(v13 + (v69 >> 29)) + 24;
  v71 = v70 ^ (16 * v70) ^ 0xFFFFFF95;
  v72 = ((((v68 >> 4) | (16 * v68)) ^ 0xB3) >> 4) | (16 * (((v68 >> 4) | (16 * v68)) ^ 0xFFFFFFB3));
  v73 = 45 * (v36 ^ 0xFFFFFF95);
  LODWORD(STACK[0x2288]) = v48;
  LODWORD(STACK[0x2220]) = v73;
  v74 = ((v48 - (v48 ^ -v48 ^ (71 - (v48 ^ 0x47))) - 71) ^ 1) - v48 + (v73 ^ 1);
  v75 = *(v60 + (((v67 ^ 0x4B) - (v67 ^ 0x36)) ^ 0xFFFFFFFE ^ v67 ^ 0x4B) + 2 * ((((v67 ^ 0x4B) - (v67 ^ 0x36)) ^ 0xFFFFFFFE) & (v67 ^ 0x4B))) ^ 0x72;
  v76 = v6[55];
  LODWORD(STACK[0x2210]) = v76;
  v77 = (v76 ^ 0xFFFFFFF3) - v75;
  v78 = v35 >> 1;
  v79 = v4[52];
  LODWORD(STACK[0x2260]) = v79;
  LODWORD(STACK[0x2208]) = v78 | (v35 << 7);
  v80 = (v78 & 0xFFFFFFDF | (v35 << 7)) ^ v79 ^ (v78 & 0x20 | 0xFFFFFF86);
  v81 = v6[99];
  STACK[0x2228] = v81;
  v82 = *(v13 + (v81 ^ 0x73));
  LODWORD(v81) = v6[14];
  LODWORD(STACK[0x2218]) = v81;
  v83 = (v81 - ((2 * v81) & 0x192) + 73) ^ 0xFFFFFF9A;
  v84 = (*(v45 + (v33 ^ 0x90)) ^ 0xFFFFFFAD) + 119;
  LODWORD(v81) = v4[15];
  LODWORD(STACK[0x2250]) = v81;
  STACK[0x2160] = v1;
  LODWORD(STACK[0x21F0]) = v84;
  v85 = v84 + (v81 ^ 0x2D) - 2 * (v84 & (v81 ^ 0x2D));
  LODWORD(STACK[0x2170]) = v43 ^ 0xFFFFFF95;
  LODWORD(STACK[0x2270]) = v51;
  LODWORD(v81) = v4[30];
  LODWORD(STACK[0x21D0]) = v81;
  v86 = v81 ^ 0x12 ^ (45 * ((v82 + 24) ^ (16 * (v82 + 24)) ^ 0xFFFFFF95));
  LODWORD(v81) = v4[12];
  LODWORD(STACK[0x2230]) = v81;
  v87 = (v51 & 0xDF ^ 0x49 ^ (v51 & 0x20 | 0x1C)) - (v81 ^ 0x62);
  LODWORD(v81) = v4[8];
  LODWORD(STACK[0x2240]) = v81;
  v88 = v81 - ((2 * v81) & 0x192) + 73;
  LODWORD(v81) = *STACK[0x1378];
  LODWORD(STACK[0x21E0]) = v81;
  v89 = v88 ^ v81 ^ 0xFFFFFF96;
  v90 = v6[66];
  v91 = *(v45 + (((v87 >> 2) | (v87 << 6)) ^ 0x90));
  LODWORD(STACK[0x2238]) = v90;
  LOBYTE(v81) = ((v90 & 0x22 | 0xC4) ^ v90 & 0xC4 | v90 & 0x19) ^ 0xE6;
  v92 = v4[16];
  LODWORD(STACK[0x21B8]) = v92;
  v93 = v92 ^ 0x5C;
  v94 = v91 ^ 0xFFFFFFAD;
  v95 = v4[36];
  LODWORD(STACK[0x21C8]) = v95;
  v96 = v4[37];
  LODWORD(STACK[0x21A8]) = v96;
  v97 = v63 | (v96 - (v95 ^ 0x6C)) | v66 | (LODWORD(STACK[0x2200]) + 1);
  v98 = v6[76];
  LODWORD(STACK[0x2200]) = v98;
  v99 = *STACK[0x1370];
  LODWORD(STACK[0x2190]) = v99;
  v100 = v97 | (v74 + 1) | (v98 + (~(2 * v98) | 0x49) + 92) ^ v99 ^ 0x1E | v89;
  v101 = LODWORD(STACK[0x21F8]) + 73;
  LODWORD(STACK[0x2198]) = v101;
  v102 = *(v60 + ((13 * v4[42]) ^ 0x36));
  LODWORD(STACK[0x20F0]) = v102;
  v103 = v100 | v83 ^ v101 | v80;
  v104 = STACK[0x22E8];
  v105 = *(STACK[0x22E8] + 1);
  LODWORD(STACK[0x2180]) = v105;
  v106 = v103 | v102 ^ v105 ^ 0x2F | v85;
  v107 = *(v104 + 2);
  LODWORD(STACK[0x21A0]) = v107;
  v108 = v106 | v107 ^ v72 | v77 | v86;
  LODWORD(STACK[0x21F8]) = 45 * v71;
  v109 = v4[18];
  LODWORD(STACK[0x2178]) = v109;
  v110 = v108 | v109 ^ (45 * v71 - ((90 * v71) & 0x76) + 59) | (45 * LODWORD(STACK[0x21C0]));
  v111 = 13 * (v81 + v93) + 13;
  if (((v95 ^ 0x6C) & 0x7F) != 0)
  {
    v112 = v108 | v109 ^ (45 * v71 - ((90 * v71) & 0x76) + 59) | (45 * LODWORD(STACK[0x21C0]));
  }

  else
  {
    v112 = 0;
  }

  v113 = v112 ^ (v94 + 119);
  v114 = v4[41];
  v115 = *STACK[0x13A8];
  LODWORD(STACK[0x2148]) = v115;
  v116 = -105 * (v115 ^ 0x93);
  v117 = -124 - ((((((v114 >> 6) | (4 * v114)) ^ 0x62) >> 2) | ((((v114 >> 6) | (4 * v114)) ^ 0x62) << 6)) ^ 0x1C);
  v118 = *STACK[0x1390];
  LODWORD(STACK[0x2150]) = v118;
  v119 = v118 ^ 0xFFFFFFB0;
  v120 = v6[23];
  LODWORD(STACK[0x21C0]) = v120;
  v121 = v119 - (v120 ^ 0x25);
  v122 = *(v14 + (v116 ^ 0xE8));
  LODWORD(STACK[0x2188]) = v114;
  v123 = (v117 + v114 - 2 * (v117 & v114)) ^ -v114;
  v124 = v6[38];
  LODWORD(STACK[0x2138]) = v124;
  v125 = v124 ^ 0x6A;
  v126 = *STACK[0x1358];
  LODWORD(STACK[0x2128]) = v126;
  v127 = (v126 ^ 0x2A) - v125;
  v128 = *STACK[0x1208];
  LODWORD(STACK[0x2110]) = v128;
  v129 = v4[19];
  LODWORD(STACK[0x21B0]) = v129;
  v130 = (v128 ^ 0x1B5) - (v129 ^ 0x59);
  v131 = v4[53];
  v132 = *v6;
  LODWORD(STACK[0x2108]) = v132;
  v133 = (v132 ^ 0xFFFFFFC9) - v123;
  LODWORD(STACK[0x2120]) = v131;
  v134 = v131 ^ -v131 ^ (-46 - (v131 ^ 0xFFFFFFD2));
  HIDWORD(v135) = v122;
  LODWORD(v135) = (v122 << 24) - 1392508928;
  v136 = 45 * LODWORD(STACK[0x2170]);
  v137 = v4[13];
  LODWORD(STACK[0x2170]) = v137;
  v138 = v137 + (~(2 * v137) | 0x6D) + 74;
  v139 = *STACK[0x1360];
  LODWORD(STACK[0x2100]) = v139;
  v140 = v138 ^ v139 ^ 0x2D;
  v141 = STACK[0x22E0];
  v142 = *STACK[0x13A0];
  LODWORD(STACK[0x20D0]) = v142;
  v143 = (v142 ^ 0x56) - (v141 ^ 0x45);
  v144 = v6[85];
  LODWORD(STACK[0x2168]) = v144;
  v145 = (v144 ^ 0x24) + v134;
  v146 = v6[44];
  v147 = *STACK[0x13C0];
  LODWORD(STACK[0x2158]) = v146;
  LODWORD(STACK[0x20D8]) = v147;
  v148 = (v146 ^ v147 ^ 0xDA) - 2 * (v146 ^ 0x5A) + 2 * (v147 & (v146 ^ 0x5A));
  v149 = v6[1];
  LODWORD(STACK[0x2140]) = v149;
  v150 = v149 + (~(2 * v149) | 0x6D) + 74;
  v151 = *STACK[0x1388];
  LODWORD(STACK[0x20E0]) = v151;
  v152 = v150 ^ v151 ^ 0xFFFFFFC3 | (v145 - 45) | (v133 + 124) | v130 | v121 | v127 | v143 | v140;
  v153 = v4[27];
  LODWORD(STACK[0x2130]) = v153;
  v154 = v152 | v153 ^ (v135 >> 25) ^ 0xFFFFFFE3 | *(v60 + (v111 ^ 0x36)) ^ 0x72 | v110 | v113;
  if (*(v60 + (v111 ^ 0x36)))
  {
    v155 = v154;
  }

  else
  {
    v155 = 0;
  }

  v156 = v155 ^ v148;
  v157 = *(v60 + ((13 * v6[6]) ^ 0x36));
  v158 = *STACK[0x13B0];
  LODWORD(STACK[0x20C0]) = v158;
  v159 = (v158 ^ 0x11) - (v157 ^ 0x2B);
  v160 = v6[36];
  v161 = v6[50];
  LODWORD(STACK[0x2118]) = v160;
  LODWORD(STACK[0x20B8]) = v161;
  v162 = v160 ^ v161 ^ 0x7D;
  v163 = *STACK[0x13C8];
  LODWORD(STACK[0x20B0]) = v163;
  LOBYTE(v160) = *(v60 + ((13 * (v163 ^ 0x35)) ^ 0x36));
  v164 = v6[79];
  v165 = v6[47];
  LODWORD(STACK[0x20A8]) = v165;
  LODWORD(STACK[0x20C8]) = v164;
  v166 = v164 ^ 0x3E;
  LOBYTE(v165) = (v165 ^ 0x52) + (v164 ^ 0x3E);
  LOBYTE(v164) = 2 * (v164 ^ 0x3E);
  v167 = v165 & v164;
  v168 = v165 ^ v164;
  v169 = v4[50];
  LODWORD(STACK[0x20F8]) = v169;
  LOBYTE(v160) = (v160 ^ 0x72) - (v169 ^ 0xAB);
  v170 = STACK[0x22D0];
  v171 = *STACK[0x13B8];
  LODWORD(STACK[0x20A0]) = v171;
  v172 = (v170 - ((2 * v170) & 0x92) + 73) ^ v171 ^ 0x3A;
  v173 = *(v60 + LODWORD(STACK[0x21E8]));
  LOBYTE(v171) = (v173 ^ 0xBC) - ((2 * (v173 ^ 0xBC)) & 0x66);
  v174 = v6[51];
  v175 = v6[26];
  LODWORD(STACK[0x20E8]) = v174;
  v176 = (LODWORD(STACK[0x22C8]) ^ 0x25) + (v6[30] ^ 0xFFFFFFC3);
  v177 = *(v60 + ((13 * (v6[35] ^ 0x10)) ^ 0x36));
  LODWORD(STACK[0x21E8]) = v136;
  v178 = *(v60 + ((13 * (v159 | v162 | (v168 - 4 * v166 + 2 * v167) | v174 ^ v175 ^ 0xB | v160 | v172 | ((v136 ^ 0x52) - (v177 ^ 0x72)) | v154 | v156)) ^ 0x36));
  v179 = v6[5];
  v180 = (v4[43] ^ 0x27) + ((v171 - 77) ^ (77 - v171) ^ (66 - ((v171 - 77) ^ 0x42)));
  v181 = (((v179 ^ 0xFFFFFFE8) & 0xFFFFFFE8 ^ (v179 | 0xFFFFFFE8)) + 2 * (((v179 ^ 0xFFFFFFE8) & 0xFFFFFFE8) - (v179 ^ 0xFFFFFFE8))) ^ -v179;
  v182 = v181 & 2;
  v183 = v181 & 0xFD;
  if ((v182 & v179) != 0)
  {
    v182 = -v182;
  }

  if ((v4[28] ^ v6[95]) ^ 0xCF | ((v180 + 67) | (v176 + 1) | (((v182 + v179) ^ v183) - (v4[3] ^ 0xA7) - 24)) | v178 ^ 0x72)
  {
    v184 = 0;
  }

  else
  {
    v184 = *(v4 + 1) == *(v4 + 5);
  }

  v185 = STACK[0x2160] + 11424;
  v186 = LODWORD(STACK[0x21D8]) ^ 0x72u;
  v187 = v173 ^ 0x72u;
  v188 = (((LODWORD(STACK[0x20F0]) ^ 0xFFFFFFBC) - (LODWORD(STACK[0x20F0]) ^ 0x72)) ^ 0xFFFFFFFC) + (LODWORD(STACK[0x20F0]) ^ 0xFFFFFFBC);
  v189 = !v184;
  v190 = STACK[0x22F0];
  return (*(STACK[0x22F8] + 8 * ((7 * v189) ^ LODWORD(STACK[0x22C0]))))(v187);
}

uint64_t sub_26AA7D2C4@<X0>(char a1@<W0>, char a2@<W3>, char a3@<W4>, char a4@<W5>, char a5@<W6>, char a6@<W7>, _BYTE *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v28 = STACK[0x22D8];
  v28[37] = STACK[0x21A8];
  *STACK[0x13A0] = STACK[0x20D0];
  v29 = STACK[0x22E8];
  v29[1] = STACK[0x2180];
  *STACK[0x1200] = STACK[0x2280];
  *STACK[0x1370] = STACK[0x2190];
  a7[55] = STACK[0x2210];
  v28[25] = STACK[0x2208];
  *STACK[0x1350] = STACK[0x22B0];
  *a7 = STACK[0x2108];
  *STACK[0x1368] = STACK[0x2198];
  *STACK[0x1208] = STACK[0x2110];
  v28[48] = STACK[0x2258];
  *v29 = STACK[0x21F0];
  v28[17] = STACK[0x2220];
  v28[18] = STACK[0x2178];
  *STACK[0x1398] = STACK[0x2248];
  v28[39] = v23;
  v28[30] = STACK[0x21D0];
  v28[16] = STACK[0x21B8];
  *STACK[0x13A8] = STACK[0x2148];
  v28[38] = a1;
  a7[47] = STACK[0x20A8];
  *STACK[0x13C0] = STACK[0x20D8];
  *STACK[0x13C8] = STACK[0x20B0];
  a7[30] = v25;
  *STACK[0x1360] = STACK[0x2100];
  v29[2] = STACK[0x21A0];
  *STACK[0x1380] = STACK[0x2270];
  a7[5] = a4;
  *STACK[0x13B0] = STACK[0x20C0];
  v28[53] = STACK[0x2120];
  v28[28] = v24;
  *STACK[0x1390] = STACK[0x2150];
  *STACK[0x1358] = STACK[0x2128];
  v28[1] = STACK[0x21E8];
  *STACK[0x1388] = STACK[0x20E0];
  a7[50] = STACK[0x20B8];
  a7[26] = a3;
  *STACK[0x13B8] = STACK[0x20A0];
  *STACK[0x1378] = STACK[0x21E0];
  *v28 = STACK[0x2288];
  a7[35] = a5;
  v28[36] = STACK[0x21C8];
  a7[14] = STACK[0x2218];
  a7[74] = STACK[0x2268];
  a7[12] = STACK[0x22B8];
  a7[43] = STACK[0x22A8];
  a7[99] = STACK[0x2228];
  v28[41] = STACK[0x2188];
  v28[43] = v26;
  a7[38] = STACK[0x2138];
  a7[79] = STACK[0x20C8];
  v28[12] = STACK[0x2230];
  v28[13] = STACK[0x2170];
  v28[14] = STACK[0x2278];
  a7[63] = STACK[0x2290];
  v28[42] = a6;
  v28[47] = STACK[0x22D0];
  v28[44] = STACK[0x22A0];
  v28[52] = STACK[0x2260];
  v28[19] = STACK[0x21B0];
  a7[76] = STACK[0x2200];
  v28[15] = STACK[0x2250];
  v28[9] = STACK[0x21F8];
  a7[85] = STACK[0x2168];
  a7[6] = a2;
  a7[23] = STACK[0x21C0];
  a7[44] = STACK[0x2158];
  a7[1] = STACK[0x2140];
  v28[3] = v22;
  a7[66] = STACK[0x2238];
  a7[95] = v27;
  a7[4] = STACK[0x2298];
  v28[8] = STACK[0x2240];
  v28[45] = STACK[0x22E0];
  v28[27] = STACK[0x2130];
  a7[15] = STACK[0x22C8];
  a7[51] = STACK[0x20E8];
  v28[50] = STACK[0x20F8];
  a7[36] = STACK[0x2118];
  return (*(STACK[0x22F8] + 8 * ((3 * (((v21 - 1200) | 0x16) ^ 0x335) + 1374) ^ (((v21 - 1200) | 0x16) + 1))))(a21);
}

uint64_t sub_26AA7D5E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  *a8 = 4;
  *(a5 + a7) = a6;
  *(result + 64) = 0x68BEB9FED6979B1FLL;
  v9 = *(v8 - 128);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_26AA7D744(_BYTE *result, unsigned int a2, unint64_t a3)
{
  v3 = -result & 7;
  if (v3 > a3)
  {
    LODWORD(v3) = a3;
  }

  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 != 6)
      {
        if (v3 != 7)
        {
          goto LABEL_20;
        }

        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v3 == 4)
    {
LABEL_16:
      *result++ = a2;
      goto LABEL_17;
    }

    *result++ = a2;
    goto LABEL_16;
  }

  switch(v3)
  {
    case 1:
LABEL_19:
      *result++ = a2;
      break;
    case 2:
LABEL_18:
      *result++ = a2;
      goto LABEL_19;
    case 3:
LABEL_17:
      *result++ = a2;
      goto LABEL_18;
  }

LABEL_20:
  v4 = a3 - v3;
  if (v4 >= 8)
  {
    v5 = 0x101010101010101 * a2;
    v6 = ((v4 >> 3) + 7) >> 3;
    v7 = (v4 >> 3) & 7;
    if (v7 > 3)
    {
      if (((v4 >> 3) & 7) <= 5)
      {
        if (v7 == 4)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v7 == 6)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (((v4 >> 3) & 7) > 1)
    {
      if (v7 == 2)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (!v7)
    {
      goto LABEL_32;
    }

    while (1)
    {
      *result = v5;
      result += 8;
      if (!--v6)
      {
        break;
      }

LABEL_32:
      *result = v5;
      result += 8;
LABEL_33:
      *result = v5;
      result += 8;
LABEL_34:
      *result = v5;
      result += 8;
LABEL_35:
      *result = v5;
      result += 8;
LABEL_36:
      *result = v5;
      result += 8;
LABEL_37:
      *result = v5;
      result += 8;
LABEL_38:
      *result = v5;
      result += 8;
    }
  }

  v8 = v4 & 7;
  if (v8 > 3)
  {
    if (v8 > 5)
    {
      if (v8 != 6)
      {
        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v8 == 4)
    {
      goto LABEL_53;
    }

    *result++ = a2;
LABEL_53:
    *result++ = a2;
LABEL_54:
    *result++ = a2;
LABEL_55:
    *result++ = a2;
    goto LABEL_56;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (v8)
  {
LABEL_56:
    *result = a2;
  }

  return result;
}

uint64_t sub_26AA7D8DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_msgSend_embeddedSecureElementWithError_(MEMORY[0x277D2C870], a2, 0, a4, a5);
  v11 = (objc_msgSend_isProductionSigned(v10, v9, v5, v6, v7) << 9);
  MEMORY[0x277D82BD8](v10);
  return v11;
}

uint64_t sub_26AA7D944()
{
  v14 = &unk_2803D5710;
  location = 0;
  objc_storeStrong(&location, &unk_287B37320);
  if (*v14 != -1)
  {
    dispatch_once(v14, location);
  }

  objc_storeStrong(&location, 0);
  v8 = 0;
  v9 = &v8;
  v10 = 0x20000000;
  v11 = 32;
  v12 = 1;
  block = MEMORY[0x277D85DD0];
  v3 = -1040187392;
  v4 = 0;
  v5 = sub_26AA7DB0C;
  v6 = &unk_287B37390;
  v7 = &v8;
  dispatch_sync(qword_2803D5718, &block);
  v1 = v9[3] << 12;
  _Block_object_dispose(&v8, 8);
  return v1;
}

void sub_26AA7DA5C(NSObject *a1)
{
  attr[2] = a1;
  attr[1] = a1;
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  attr[0] = dispatch_queue_attr_make_with_autorelease_frequency(v3, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  MEMORY[0x277D82BD8](v3);
  v1 = dispatch_queue_create("com.apple.sprvault.attestation.nfc", attr[0]);
  v2 = qword_2803D5718;
  qword_2803D5718 = v1;
  MEMORY[0x277D82BD8](v2);
  objc_storeStrong(attr, 0);
}

void sub_26AA7DB0C(id *a1)
{
  v20[2] = a1;
  v20[1] = a1;
  v20[0] = dispatch_semaphore_create(0);
  v11 = objc_msgSend_sharedHardwareManager(MEMORY[0x277D2C848], v10, v1, v2, v3);
  v13 = MEMORY[0x277D85DD0];
  v14 = -1040187392;
  v15 = 0;
  v16 = sub_26AA7DC70;
  v17 = &unk_287B37360;
  v18[1] = a1[4];
  v18[0] = MEMORY[0x277D82BE0](v20[0]);
  location = objc_msgSend_startSecureElementReaderSession_(v11, v10, &v13, v4, v5);
  MEMORY[0x277D82BD8](v11);
  timeout = dispatch_time(0, 500000000);
  if (dispatch_semaphore_wait(v20[0], timeout))
  {
    objc_msgSend_endSession(location, v10, v6, v7, v8);
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v18, 0);
  objc_storeStrong(v20, 0);
}

void sub_26AA7DC70(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v22 = 0;
  objc_storeStrong(&v22, a3);
  v21[1] = a1;
  if (location[0])
  {
    v17 = objc_msgSend_sharedHardwareManager(MEMORY[0x277D2C848], v18, v3, v4, v5);
    v21[0] = objc_msgSend_startSecureElementReaderSession_(v17, v18, &unk_287B37340, v6, v7);
    MEMORY[0x277D82BD8](v17);
    *(*(*(a1 + 40) + 8) + 24) = (objc_msgSend_isFirstInQueue(v21[0], v18, v8, v9, v10) ^ 1) & 1;
    objc_msgSend_endSession(v21[0], v18, v11, v12, v13);
    objc_msgSend_endSession(location[0], v18, v14, v15, v16);
    objc_storeStrong(v21, 0);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

void sub_26AA7DD94(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = 0;
  objc_storeStrong(&v4, a3);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

void sub_26AA7DE08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  *(a1 + 32) = 0;
  objc_storeStrong((a1 + 32), v2);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
}

unint64_t sub_26AA7DF14(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = objc_msgSend_embeddedSecureElementWithError_(MEMORY[0x277D2C870], a2, 0, a4, a5);
  v13 = objc_msgSend_sequenceCounter(v14, v12, v5, v6, v7);
  v15 = objc_msgSend_unsignedLongLongValue(v13, v12, v8, v9, v10);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  if (v15 >= 0x10000)
  {
    __assert_rtn("AVGetJSBLVersion", "AVInternalObjC.m", 58, "jsblVersion <= UINT16_MAX");
  }

  return v15 << 24;
}

void sub_26AA7DFD8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_26A93A000, log, OS_LOG_TYPE_ERROR, "[%@ configuration] proxy failed: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_26AA7E0A4()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_26A93C19C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_26AA7E16C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_26A93A000, log, OS_LOG_TYPE_ERROR, "[%@ cancelPINCapture]: XPC failed: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_26AA7E1F8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_26A93A000, log, OS_LOG_TYPE_ERROR, "[%@ enableDiagnosticModeWithEnable]: XPC failed: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_26AA7E284(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  sub_26A94AAF4();
  sub_26A94AB0C(&dword_26A93A000, v2, v3, "[%@ getCardReaderBlobWithTxnBlob:]: XPC failed: %@");
  v4 = *MEMORY[0x277D85DE8];
}

void sub_26AA7E2F0(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  sub_26A94AAF4();
  sub_26A94AB0C(&dword_26A93A000, v2, v3, "[%@ cancelReadWithCallback:]: XPC failed: %@");
  v4 = *MEMORY[0x277D85DE8];
}

void sub_26AA7E370(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26A93A000, a2, OS_LOG_TYPE_ERROR, "Proxy error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_26AA7E3FC(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_26A93A000, a2, OS_LOG_TYPE_ERROR, "SPRPinVaultCreate failed: %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_26AA7E474(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_26A93A000, a2, OS_LOG_TYPE_ERROR, "SPRPinVaultEncryptDigitCode failed: %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_26AA7E544(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_proxyDescription(a1, a2, a3, a4, a5);
  v9 = 138412546;
  v10 = a1;
  v11 = 2112;
  v12 = v7;
  _os_log_error_impl(&dword_26A93A000, a2, OS_LOG_TYPE_ERROR, "%@.deinit: Disconnecting from %@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_26AA7E5F4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_26A93A000, log, OS_LOG_TYPE_ERROR, "%@ disconnected", buf, 0xCu);
}

void sub_26AA7E64C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_26A93A000, log, OS_LOG_TYPE_ERROR, "%@ unavailable", buf, 0xCu);
}