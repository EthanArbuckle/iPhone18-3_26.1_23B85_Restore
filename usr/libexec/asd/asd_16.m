uint64_t sub_1002ADE80()
{
  v3 = STACK[0x448] + 540400008;
  v4 = ((v3 ^ 0x9CE2A925) + 1126731603) ^ v3 ^ ((v3 ^ 0xEE53DC8E) + 832174842) ^ ((v3 ^ 0x4FFFFFFB) - 1875519091) ^ (v1 + (((v0 ^ 0x1BB5) + 494620389) ^ v3) - 1028563451);
  return (*(v2 + 8 * ((11019 * ((((v4 ^ 0x826CE343) - 1381225061) ^ ((v4 ^ 0xEEDECF00) - 1054998054) ^ ((((v0 ^ 0x8ED) - 1382) ^ 0x63472956) + (v4 ^ 0x4C87F5CB))) - 267720538 < 0xFFFFFFF8)) ^ v0 ^ 0x1BB5)))();
}

void sub_1002B4564(uint64_t a1, int a2)
{
  ++LODWORD(STACK[0x480]);
  LODWORD(STACK[0x488]) = v3 ^ 0xCCA3F221;
  LODWORD(STACK[0x490]) = v2 ^ 0x50630110;
  LODWORD(STACK[0x498]) = v4 ^ 0xD825748B;
  LODWORD(STACK[0x4A8]) = a2 + 2;
  LODWORD(STACK[0x4D0]) += 3;
  LODWORD(STACK[0x4A0]) = v5 + 3;
  LODWORD(STACK[0x4C8]) += 3;
  LODWORD(STACK[0x4C0]) += 2;
  JUMPOUT(0x1002B36CCLL);
}

uint64_t sub_1002B4638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, int a48, int a49, int a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62, uint64_t a63)
{
  v71 = a54;
  if ((STACK[0x3F4] & 1) == 0)
  {
    v71 = HIDWORD(a55);
  }

  v72 = (STACK[0x3F4] & 2) == 0;
  v73 = STACK[0x328];
  if ((STACK[0x3F4] & 2) == 0)
  {
    v73 = STACK[0x320];
  }

  LODWORD(v106) = v73;
  v74 = STACK[0x338];
  if ((STACK[0x3F4] & 2) != 0)
  {
    v74 = STACK[0x330];
  }

  LODWORD(a51) = v74;
  v75 = STACK[0x31C];
  if ((STACK[0x3F4] & 2) == 0)
  {
    v75 = STACK[0x318];
  }

  LODWORD(STACK[0x328]) = v75;
  v76 = STACK[0x370];
  if (v72)
  {
    v76 = STACK[0x368];
  }

  LODWORD(STACK[0x31C]) = v76;
  v77 = STACK[0x310];
  if (!v72)
  {
    v77 = a67;
  }

  LODWORD(STACK[0x338]) = v77;
  if (!v72)
  {
    a62 = a56;
  }

  LODWORD(STACK[0x498]) = a62;
  v79 = STACK[0x398];
  LODWORD(STACK[0x330]) = v71;
  if (!v72)
  {
    v79 = v71;
  }

  LODWORD(STACK[0x310]) = v79;
  v80 = a48 ^ a64 ^ 0x292257EA;
  v81 = STACK[0x430];
  if ((STACK[0x430] & 1) == 0)
  {
    v80 = a46;
  }

  LODWORD(STACK[0x320]) = v80;
  v82 = STACK[0x2D4];
  if ((v81 & 2) == 0)
  {
    v82 = a52;
  }

  LODWORD(a54) = v82;
  v83 = STACK[0x2DC];
  if ((v81 & 2) == 0)
  {
    v83 = STACK[0x2D8];
  }

  HIDWORD(a55) = v83;
  if ((v81 & 2) == 0)
  {
    a50 = a49;
  }

  LODWORD(a56) = a50;
  v85 = STACK[0x304];
  if ((v81 & 2) == 0)
  {
    v86 = STACK[0x2F8];
  }

  v87 = v68 ^ 0xD07E94B5;
  v88 = v67 ^ 0xAFAD683A;
  v89 = (v68 ^ 0xD07E94B5) & 0xFE ^ 2;
  LODWORD(STACK[0x4A8]) = v69 ^ 0x90125CD4;
  v90 = (v69 ^ 0x90125CD4) & 7;
  LODWORD(STACK[0x4C0]) = v90 ^ 4;
  v91 = -(v90 ^ 4) & 7;
  LODWORD(STACK[0x488]) = v90;
  if (v90 == 4)
  {
    v92 = 0;
  }

  else
  {
    v92 = 255;
  }

  LODWORD(STACK[0x4C8]) = v91;
  v93 = v92 << v91;
  LODWORD(STACK[0x4A0]) = 16843009 * v93;
  LODWORD(STACK[0x318]) = (v67 ^ 0xBD000000) & (1224736768 * v93);
  v94 = v93 ^ 0x3431A113;
  if (v90 == 4)
  {
    v95 = -875667732;
  }

  else
  {
    v95 = v94;
  }

  LODWORD(v107) = v68 ^ 0x13;
  LODWORD(STACK[0x490]) = v87;
  LODWORD(STACK[0x480]) = v88;
  HIDWORD(v106) = (v88 ^ BYTE1(v88) ^ BYTE2(v88)) ^ HIBYTE(v67) ^ 0xBB;
  LODWORD(STACK[0x4B0]) = 16843009 * ((v87 ^ BYTE1(v87) ^ BYTE2(v87)) ^ HIBYTE(v68) ^ 0xC4);
  v96 = LODWORD(STACK[0x2E0]) ^ 0x7900C19E;
  v97 = LODWORD(STACK[0x2E8]) ^ 0x286BD1CE;
  v98 = LODWORD(STACK[0x2F0]) ^ 0x30772FE9;
  LODWORD(STACK[0x2D4]) = v89;
  LODWORD(STACK[0x4D0]) = 16843009 * v89;
  HIDWORD(v107) = v95;
  LODWORD(STACK[0x2D8]) = v95 & 0xE;
  v99 = (0x832B4B59 >> ((5 * (v70 ^ 5)) ^ 0x65)) - 2094348241;
  v100 = ((0x832B4B59 >> ((5 * (v70 ^ 5)) ^ 0x65)) + 597093945) >> 16;
  v101 = ((0x832B4B59 >> ((5 * (v70 ^ 5)) ^ 0x65)) + 597093945 + v100) >> 8;
  v102 = v100 + 1087849920 + v101 + (0x832B4B59 >> ((5 * (v70 ^ 5)) ^ 0x65)) - 2094314663;
  v103 = ((0x832B4B59 >> ((5 * (v70 ^ 5)) ^ 0x65)) + 1398873289) ^ v98 ^ (v100 + 1889662842 + v101 + v99) ^ (v100 + 286104154 + v99 + v101 + HIWORD(v102) + ((v102 + HIWORD(v102)) >> 8));
  v104 = (v103 & 0xE202AAE2 ^ 0xD6C26E1) & (v103 & 0x1DFD551D ^ 0xE2AFEBFE);
  return (*(STACK[0x4E0] + 8 * (v104 | v103 & 0x1091511C)))(3056, 1087849920, 3779258528, v104, 1087849920, 286070576, 1889629264, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, v106, v107, a51, a52, a53, a54, a55, a56, a57);
}

uint64_t sub_1002B4A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, int a48, int a49, int a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, int a55, uint64_t a56, int a57, int a58, int a59, int a60, int a61, int a62, uint64_t a63)
{
  HIDWORD(v163) = (LODWORD(STACK[0x498]) ^ 0xC279D12E) + 1896673467 * (v68 ^ 0x5068F2D2 ^ v72 ^ 0x112A6032);
  LODWORD(a38) = v67 ^ 0x72A94337;
  LODWORD(STACK[0x2DC]) = (a58 ^ 0xAAF137CB) + 174465075 * ((v69 ^ 0x5A3A7482) - (v67 ^ 0x72A94337));
  v73 = (v67 ^ 0x72A94337) & 0xFE ^ 0x34;
  v74 = v70 ^ 0x45B0AAC7;
  LODWORD(a41) = (v70 ^ 0x45B0AAC7) & 0xFFFFFFF8 ^ 0x80429198;
  LODWORD(v163) = v67 ^ 0x867B2D65;
  v157 = v67 ^ 0x65 ^ ((v67 ^ 0x2D65) >> 8) ^ ((v67 ^ 0x867B2D65) >> 16) ^ HIBYTE(v67) ^ 0x91;
  v75 = v67 ^ 0xB9F8E303;
  LODWORD(STACK[0x470]) = v70 ^ 0xC5F23B59;
  LODWORD(a44) = (v67 ^ 0x72A94337) & 0xFFFFFF01;
  LODWORD(STACK[0x498]) = 16843009 * v73;
  v162 = ~v73 | 0xFFFFFF01;
  v76 = (v162 & (a44 ^ 0xB11589EA) | (16843009 * v73) & 0x14) ^ 0x7A4429EA;
  LODWORD(a39) = LODWORD(STACK[0x2BC]) ^ 0x99B04FBD;
  HIDWORD(a45) = v73 - LODWORD(STACK[0x2D4]);
  v77 = STACK[0x490] & 0xFFFFFF01;
  v78 = STACK[0x4D0];
  v79 = ~LOBYTE(STACK[0x4D0]) | 0xFFFFFF01;
  v160 = ((v79 & (v77 ^ 0x53171505) | STACK[0x4D0] & 0xFA) ^ 0x12025504) % 0x101;
  v80 = (v70 ^ 0x45B0AAC7) & 7 ^ 6;
  v81 = -v80 & 7;
  if (((v70 ^ 0x45B0AAC7) & 7) == 6)
  {
    v82 = 0;
  }

  else
  {
    v82 = 255;
  }

  v83 = v82 << v81;
  if ((v74 & 7) == 6)
  {
    v84 = 0;
  }

  else
  {
    v84 = ~v83;
  }

  v159 = v84;
  v85 = (STACK[0x430] & 2) == 0;
  if ((STACK[0x430] & 2) != 0)
  {
    a55 = STACK[0x320];
  }

  LODWORD(STACK[0x2D4]) = a55;
  v87 = STACK[0x304];
  if (!v85)
  {
    v88 = STACK[0x2F8];
  }

  v89 = LODWORD(STACK[0x344]) ^ 0xFA9959CD;
  v90 = STACK[0x30C];
  if (!v85)
  {
    v90 = STACK[0x308];
  }

  LODWORD(v167) = v90;
  LODWORD(STACK[0x320]) = 16843009 * a48;
  v91 = *(&off_1006B4E30 + v66 - 4106) - 12;
  v92 = (16843009 * a48) ^ LODWORD(STACK[0x4B0]) ^ 0x98989898;
  LODWORD(STACK[0x304]) = v92 % 0x101;
  v165 = v89 - (__ROR4__(*&v91[4 * (v92 % 0x101)], 9) ^ 0xC7DC3A41);
  v93 = LODWORD(STACK[0x488]) ^ 0xFFFFFFFB;
  v94 = STACK[0x4A8] & 0xFFFFFFF8;
  LODWORD(STACK[0x30C]) = (((v94 ^ 0x3C39A9E5) & v93 | v71 & 2) ^ 0x2AB3686D) % 0x101;
  v95 = (STACK[0x3F4] & 2) == 0;
  v96 = STACK[0x354];
  if ((STACK[0x3F4] & 2) != 0)
  {
    v96 = STACK[0x350];
  }

  LODWORD(STACK[0x350]) = v96;
  v97 = v69 ^ 0x916BD4B6;
  LODWORD(STACK[0x354]) = v69 ^ LODWORD(STACK[0x2E0]);
  v98 = STACK[0x238];
  if (v95)
  {
    v98 = a66;
  }

  v99 = STACK[0x370];
  if (!v95)
  {
    v99 = STACK[0x368];
  }

  v168 = v99;
  v100 = STACK[0x380];
  if (v95)
  {
    v100 = STACK[0x378];
  }

  HIDWORD(v167) = v100;
  v101 = STACK[0x360];
  if (v95)
  {
    v101 = STACK[0x35C];
  }

  LODWORD(STACK[0x2E0]) = v101;
  LODWORD(STACK[0x378]) = v83;
  LODWORD(STACK[0x360]) = (1157627904 * v83) & (v72 ^ 0xFC2A6032);
  v169 = a60 ^ (32 * (v80 ^ LODWORD(STACK[0x4C0])));
  v102 = __ROR4__(*&v91[4 * LODWORD(STACK[0x4C8])], 9) ^ 0xC7DC3A41;
  v103 = *(&off_1006B4E30 + v66 - 3482);
  v104 = *(v103 + 4 * v81);
  LODWORD(STACK[0x2BC]) = v81;
  v105 = (a59 ^ 0x34F8FCE) + v102 + ((v104 - 538451343) ^ 0x8A65544F);
  LODWORD(STACK[0x370]) = 16843009 * v157;
  v106 = 16843009 * (v72 ^ 0x32 ^ ((v72 ^ 0x6032) >> 8) ^ ((v72 ^ 0x112A6032u) >> 16) ^ ((v72 ^ 0x112A6032u) >> 24) ^ 0x66);
  LODWORD(STACK[0x3F4]) = v106;
  v107 = (16843009 * v157) ^ 0x2C2C2C2C ^ v106;
  v108 = v107 % 0x101;
  v158 = v91;
  LODWORD(STACK[0x35C]) = a61 ^ __ROR4__(*&v91[4 * (v107 % 0x101)], 9);
  LODWORD(STACK[0x488]) = (v79 & (v77 ^ 0x9246A93A) | v78 & 0xC4) ^ 0xD353E93B;
  LODWORD(STACK[0x380]) = v92 ^ LODWORD(STACK[0x310]) ^ (v92 >> 7) ^ v107 ^ (v107 >> 7);
  v109 = (v94 ^ 0xA4D5EB95) & v93 | v71 & 2;
  LODWORD(STACK[0x368]) = (LODWORD(STACK[0x358]) ^ 0xD0CEA1B1) - v75;
  LODWORD(STACK[0x344]) = v75 ^ v98 ^ (v75 >> 4) ^ v76 ^ (v76 >> 4);
  v110 = LODWORD(STACK[0x470]) + (a62 ^ 0xAAF137CB) - (v80 | a41);
  v111 = v71 ^ 0x86989D58;
  v112 = (v105 + 1) ^ v109;
  LODWORD(STACK[0x2F8]) = v109 ^ v71 ^ 0xBBC1BEE6 ^ ((v109 ^ v71 ^ 0xBBC1BEE6) << 6) ^ (a39 - LODWORD(STACK[0x470]) + (v80 | a41));
  LODWORD(STACK[0x308]) = v72 ^ 0x2A97BE79;
  v113 = 1085742771 * (v71 ^ 0x13409259 ^ v74);
  v114 = (*(v103 + 4 * (v76 % 0x101)) - 538451343) ^ 0x759AABB0;
  v115 = STACK[0x498];
  if (v95)
  {
    v116 = STACK[0x390];
  }

  else
  {
    v116 = STACK[0x388];
  }

  LODWORD(STACK[0x390]) = v116;
  v117 = STACK[0x4A0];
  LODWORD(STACK[0x238]) = LODWORD(STACK[0x318]) ^ LODWORD(STACK[0x4A0]);
  v118 = *(&off_1006B4E30 + (v66 ^ 0x1107));
  LODWORD(STACK[0x4A0]) = LODWORD(STACK[0x2D8]) ^ v117 ^ a49 & (a50 ^ 0xEC);
  v118 -= 12;
  v170 = v165 + (*(v118 + 4 * v108) ^ 0xB4D79AD5);
  v119 = *(&off_1006B4E30 + v66 - 3195) - 4;
  v120 = *&v119[4 * (v97 % 0x101)];
  v121 = *(v118 + 4 * v160) ^ a64 ^ v120 ^ (1506752328 * (v120 ^ 0x73057D85));
  v161 = v118;
  LODWORD(STACK[0x388]) = (a65 ^ 0x35E07208) + 261356289 * HIDWORD(a45) + (*(v118 + 4 * (v75 % 0x101)) ^ 0x4B28652A) + v114;
  v122 = v113 ^ LODWORD(STACK[0x348]);
  v123 = LODWORD(STACK[0x35C]) ^ (*(v103 + 4 * LODWORD(STACK[0x304])) - 538451343);
  LODWORD(STACK[0x348]) = v97 ^ v168 ^ (8 * v97);
  LODWORD(STACK[0x310]) = v97 + (HIDWORD(v167) ^ 0x35E07208);
  v124 = STACK[0x4C8];
  v125 = LODWORD(STACK[0x354]) ^ 0x80A04B20;
  v126 = LODWORD(STACK[0x354]) ^ 0x957ED3DC;
  LODWORD(STACK[0x304]) = v126 ^ (v125 >> 2) & 0x2DE5773D ^ (v110 + 2129790651 * (LODWORD(STACK[0x4C8]) - v81));
  v127 = v111 % 0x101;
  v128 = v112 ^ v111;
  v129 = v112 ^ v111 ^ 0xB7D7AA85;
  v130 = LODWORD(STACK[0x2F0]) ^ LODWORD(STACK[0x31C]) ^ LODWORD(STACK[0x3A8]) ^ v129 ^ ((v112 ^ v111) >> 2) & 0x2DE5773D ^ LODWORD(STACK[0x480]) ^ LODWORD(STACK[0x2F0]) ^ 0x25A96D9F ^ v129 ^ ((LODWORD(STACK[0x480]) ^ LODWORD(STACK[0x2F0]) ^ 0x25A96D9F ^ v129) >> 2) & 0x2DE5773D;
  v131 = STACK[0x2E8];
  v132 = LODWORD(STACK[0x2E8]) ^ 0xBA121CF6;
  v133 = *&v119[4 * LODWORD(STACK[0x30C])] ^ 0x73057D85;
  v134 = (LODWORD(STACK[0x3F8]) >> 2) & 0x2DE5773D ^ LODWORD(STACK[0x2D0]) ^ LODWORD(STACK[0x2E8]) ^ LODWORD(STACK[0x4A8]) ^ ((v132 ^ LODWORD(STACK[0x3F8]) ^ LODWORD(STACK[0x4A8])) >> 2) & 0x2DE5773D ^ (*(v103 + 4 * v127) - 538451343) ^ v133 ^ (1506752328 * v133);
  v135 = STACK[0x398];
  if (v95)
  {
    v135 = STACK[0x330];
  }

  LODWORD(STACK[0x354]) = v135;
  LODWORD(STACK[0x368]) += (v162 & (a44 ^ 0x3C82EC07) | v115 & 0xF8) ^ 0xF7D34C07;
  LODWORD(STACK[0x35C]) = HIDWORD(v163) - 1528491557;
  v136 = (LODWORD(STACK[0x258]) ^ 0x34F8FCE) - v124 + LODWORD(STACK[0x470]) - v80 - a41;
  v137 = STACK[0x4D0];
  LODWORD(STACK[0x358]) = v126 ^ (v125 >> 1) & 0x1B74FC5E ^ (LODWORD(STACK[0x4D0]) + (LODWORD(STACK[0x2C0]) ^ 0x35E07208) - v115);
  v138 = v131 ^ LODWORD(STACK[0x2C4]) ^ v112;
  LODWORD(STACK[0x31C]) = v129;
  LODWORD(STACK[0x318]) = v128;
  v139 = v138 ^ v129 ^ (v128 >> 1) & 0x1B74FC5E ^ ((v112 ^ v132) >> 1) & 0x1B74FC5E;
  v140 = (LODWORD(STACK[0x320]) ^ 0xFFFFFFE9) - ((2 * LODWORD(STACK[0x320])) & 0x2C);
  v141 = 16843009 * LODWORD(STACK[0x378]);
  v142 = (a38 & v159) ^ v141;
  v143 = LODWORD(STACK[0x360]) ^ v141;
  v144 = LODWORD(STACK[0x360]) ^ ~v141;
  v145 = LODWORD(STACK[0x308]) ^ v163;
  v146 = (a47 ^ 0x34F8FCE) - v137;
  v147 = LODWORD(STACK[0x348]) ^ LODWORD(STACK[0x488]) ^ (8 * LODWORD(STACK[0x488]));
  v171 = LODWORD(STACK[0x370]) ^ 0x61BC11B5;
  v148 = LODWORD(STACK[0x4C0]) + (LODWORD(STACK[0x2C8]) ^ 0xD0CEA1B1);
  LODWORD(STACK[0x360]) = LODWORD(STACK[0x380]) ^ 0xA1EFF900;
  LODWORD(STACK[0x2E8]) = v147 ^ 0xBA9F6666;
  LODWORD(STACK[0x2F0]) = LODWORD(STACK[0x2F8]) ^ 0xFC959E23;
  LODWORD(STACK[0x348]) = LODWORD(STACK[0x388]) + 1;
  LODWORD(STACK[0x378]) = v121 ^ 0x3B98B900;
  HIDWORD(a51) = v122;
  LODWORD(STACK[0x2D8]) = v122 ^ 0xB455A991;
  LODWORD(STACK[0x30C]) = LODWORD(STACK[0x344]) ^ 0xE6ACF147;
  v166 = __PAIR64__(v139, v123);
  LODWORD(STACK[0x2C8]) = v123 ^ 0xC902AE31;
  v164 = __PAIR64__(v147, v130);
  LODWORD(STACK[0x2C4]) = v130 ^ 0x999A33FE;
  LODWORD(STACK[0x330]) = v169 ^ 0xDAAF702E;
  LODWORD(STACK[0x398]) = v134;
  LODWORD(STACK[0x308]) = v134 ^ 0x9DFB332C;
  LODWORD(STACK[0x2C0]) = v115 + v146;
  v149 = LODWORD(STACK[0x2BC]);
  LODWORD(STACK[0x2D0]) = v139 ^ 0xF9ED9473;
  v150 = LODWORD(STACK[0x4A0]) ^ 0xC90EAC3E;
  v151 = v66 ^ 0x1295u;
  v152 = LODWORD(STACK[0x4B0]) ^ (v140 + 22);
  LODWORD(STACK[0x258]) = v66 + 5913;
  LODWORD(STACK[0x388]) = v148 - v80;
  LODWORD(STACK[0x4A8]) = v143;
  v153 = *(*(&off_1006B4E30 + v151) + 181);
  v154 = (v153 >> 3) & 0xD0CDF98 ^ v153 ^ ((((v153 >> 3) & 0xD0CDF98 ^ v153 ^ 0x7DC4A4B4) & STACK[0x4D0]) >> 1);
  v155 = 4 * ((v152 ^ (v66 + 25)) ^ 0xE1u);
  *(STACK[0x460] + v155) = v145 ^ 0xF3ACAB1 ^ (((((v154 ^ 0x77A9CBAD) & v144 | v143 & 0xA6D6F18) ^ 0xA6D6F18) << LODWORD(STACK[0x4C0])) + ((v154 & 0xC90EAC32 ^ 0x4904A430 ^ (v154 ^ 0x7DC4A4B5) & v150) >> LODWORD(STACK[0x4C8])));
  *(STACK[0x468] + v155) = v145 ^ *(STACK[0x478] + 624) ^ (*(STACK[0x478] + 624) >> 3) ^ (*(STACK[0x478] + 624) >> 2) ^ 0x7FD7551A;
  return (*(STACK[0x4E0] + 8 * v66))(3373182002, 0, v169, v149, v150, v145, v142, v151, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, v158, a38, a39, v119, a41, v161, v103, a44, a45, v163, v164, v166, a51, v167);
}

uint64_t sub_1002B56B8(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51, int a52, int a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  LODWORD(a44) = LODWORD(STACK[0x310]) - LODWORD(STACK[0x488]);
  LODWORD(STACK[0x310]) = a3 ^ 0x35E07208;
  LODWORD(v1015) = v86 & 0x1B74FC5E;
  HIDWORD(v1014) = v87 & 0x1B74FC5E;
  v90 = STACK[0x350];
  v91 = STACK[0x368];
  v92 = STACK[0x31C];
  v93 = LODWORD(STACK[0x3B8]) ^ LODWORD(STACK[0x3C4]) ^ LODWORD(STACK[0x350]) ^ a71 ^ LODWORD(STACK[0x3F8]) ^ LODWORD(STACK[0x3A0]) ^ LODWORD(STACK[0x338]) ^ LODWORD(STACK[0x3B0]) ^ a44 ^ LODWORD(STACK[0x2E8]) ^ a57 ^ LODWORD(STACK[0x368]) ^ LODWORD(STACK[0x31C]) ^ LODWORD(STACK[0x2D0]) ^ LODWORD(STACK[0x2C4]);
  v94 = STACK[0x390];
  v95 = STACK[0x388];
  v96 = STACK[0x2C0];
  HIDWORD(v1011) = LODWORD(STACK[0x304]) ^ 0xF6F97C8D;
  LODWORD(v1011) = LODWORD(STACK[0x358]) ^ 0xC0C22F0F;
  v97 = STACK[0x348];
  v98 = a73 ^ LODWORD(STACK[0x390]) ^ a75 ^ a49 ^ LODWORD(STACK[0x328]) ^ LODWORD(STACK[0x2E0]) ^ LODWORD(STACK[0x3B4]) ^ LODWORD(STACK[0x354]) ^ LODWORD(STACK[0x400]) ^ LODWORD(STACK[0x408]) ^ LODWORD(STACK[0x2DC]) ^ LODWORD(STACK[0x2C0]) ^ LODWORD(STACK[0x388]) ^ LODWORD(STACK[0x2D8]) ^ LODWORD(STACK[0x330]) ^ LODWORD(STACK[0x35C]) ^ v1011 ^ LODWORD(STACK[0x2F0]) ^ HIDWORD(v1011) ^ LODWORD(STACK[0x30C]) ^ LODWORD(STACK[0x360]) ^ LODWORD(STACK[0x348]) ^ LODWORD(STACK[0x378]) ^ LODWORD(STACK[0x2C8]);
  v99 = STACK[0x4D0];
  v100 = v98 ^ (((v98 ^ 0x8F5D354C) & STACK[0x4D0]) >> 1);
  v102 = (((v100 ^ 0x8F5D354D) & a7) >> a4) - ((2 * (((v100 ^ 0x8F5D354D) & a7) >> a4)) & 0x3CDD1FB0) - 1636921384;
  v103 = STACK[0x4A8];
  v104 = (((v100 ^ 0xF2F716CE) & v89 | STACK[0x4A8] & 0x7DAA2383) ^ 0x7DAA2383) << v88;
  LODWORD(STACK[0x470]) = v102 ^ 0x710B294A ^ (v104 - ((2 * v104) & 0xDECB4D24) - 278550894);
  v105 = STACK[0x308];
  v106 = v93 ^ LODWORD(STACK[0x308]) ^ (((v93 ^ LODWORD(STACK[0x308]) ^ 0xE30E882) & v85) >> 1);
  v107 = STACK[0x4A0];
  v108 = STACK[0x238];
  v109 = STACK[0x4C8];
  v110 = ((v106 & 0xCB3E6D18 ^ 0xA306800 ^ (v106 ^ 0xE30E883) & (v107 ^ 0xCB3E6D14)) >> v109) - ((2 * ((v106 & 0xCB3E6D18 ^ 0xA306800 ^ (v106 ^ 0xE30E883) & (v107 ^ 0xCB3E6D14)) >> v109)) & 0x46039258) + 587319596;
  v111 = (((v106 ^ 0x8FD6F25E) & ~LODWORD(STACK[0x238]) | STACK[0x238] & 0x81E61ADD) ^ 0x81E61ADD) << LODWORD(STACK[0x4C0]);
  v112 = STACK[0x4C0];
  LODWORD(STACK[0x488]) = v110 & 0x6D579911 ^ 0x1A6B9FC7 ^ ((v111 - ((2 * v111) & 0xA565201C) + 1387433998) ^ 0xC01AF6E0) & (v110 ^ 0xDCFE36D3);
  v113 = v96 ^ ((v96 & v85) >> 1);
  v114 = v85;
  v115 = v92 ^ (((LODWORD(STACK[0x318]) ^ 0xB25F2A1C) & v85) >> 1);
  LODWORD(v1013) = (((v103 & 0xC29B843 | v89 & (v113 ^ 0xC29B843)) ^ 0xC29B843) << v88) + ((v113 & (v107 ^ 0xC)) >> a4);
  HIDWORD(v1012) = ((((v115 ^ 0x41F34F75) & ~v108 | v108 & 0x447BCFED) ^ 0x447BCFED) << v88) + ((v115 & 0x11A2DEA2 ^ 0x1808080 ^ (v115 ^ 0x5888098) & (a7 ^ 0x11A2DEA2)) >> v109);
  LOBYTE(v92) = v109;
  LODWORD(STACK[0x320]) ^= LODWORD(STACK[0x4B0]) ^ 0x98989898 ^ (((((a57 ^ ((a57 & v85) >> 1) ^ 0xFAF4C06) & v89 | v103 & 0xFAF4C06) ^ 0xFAF4C06) << v112) + (((a57 ^ ((a57 & v85) >> 1) ^ 0xBC3D0063) & (v107 ^ 0xC) ^ v107 & 0xBC3D0063) >> v109));
  v116 = v91 ^ ((v91 & v85) >> 1);
  v118 = ((v116 & a7) >> a4) - ((2 * ((v116 & a7) >> a4)) & 0x22CCDB9E) + 291925455;
  LODWORD(v1014) = LODWORD(STACK[0x3F4]) ^ 0xA80CC231;
  LODWORD(STACK[0x31C]) = LODWORD(STACK[0x370]) ^ v1014 ^ 0x8420EE1D ^ (((((v94 ^ ((v85 & (v94 ^ 0x34F8FCE)) >> 1) ^ 0xDB5C3889) & ~v108 | v108 & 0xD813B747) ^ 0xD813B747) << v88) + ((a7 & (v94 ^ ((v85 & (v94 ^ 0x34F8FCE)) >> 1) ^ 0x34F8FCE)) >> a4));
  v119 = (((v116 ^ 0xC355CB08) & v89 | v103 & 0xC355CB08) ^ 0xC355CB08) << v112;
  LODWORD(STACK[0x318]) = (v119 - ((2 * v119) & 0xABEDDE50) - 705237208) & 0x249167A9 ^ 0xDFFEFF7E ^ ((v119 - ((2 * v119) & 0xABEDDE50) - 705237208) ^ 0x2A0910D7) & (v118 ^ 0xCA08F599);
  v120 = v90 ^ ((v85 & (v90 ^ 0xD0CEA1B0)) >> 1);
  v121 = (v120 ^ 0xACB86B64) & ~v108 | v108 & 0x7C76CAD5;
  v122 = LODWORD(STACK[0x398]) ^ 0xEAE5D690;
  LODWORD(STACK[0x398]) = (((a7 & (v120 ^ 0xD0CEA1B1)) >> v92) - ((2 * ((a7 & (v120 ^ 0xD0CEA1B1)) >> v92)) & 0x3F8FA3CC) + 533189094) ^ 0xBACEE8E3 ^ (((v121 ^ 0x7C76CAD5) << v88) - ((2 * ((v121 ^ 0x7C76CAD5) << v88)) & 0x4A12720A) - 1526122235);
  v123 = v105 ^ ((v122 & v99) >> 1);
  v124 = v123 ^ 0x771EE5BC;
  v125 = a7;
  v126 = (((v123 ^ 0xB92C4442) & v89 | v103 & 0xCE32A1FE) ^ 0xCE32A1FE) << v112;
  LODWORD(STACK[0x390]) = (((v124 & a7) >> a4) - ((2 * ((v124 & a7) >> a4)) & 0x2F0CE326) + 394686867) ^ 0x4A8BE3EC ^ (v126 - ((2 * v126) & 0xBA1B24FE) + 1561170559);
  v127 = v95 ^ ((v95 & v99) >> 1);
  v128 = ((v103 & 0x12402782 | v89 & (v127 ^ 0x12402782)) ^ 0x12402782) << v88;
  v129 = a71 ^ ((v85 & (a71 ^ 0x8C3C6B66)) >> 1);
  v130 = ((a7 & v127) >> v92) - ((2 * ((a7 & v127) >> v92)) & 0xC60B2CE2) + 1661310577;
  v131 = ((v103 & 0xA0E86688 | v89 & (v129 ^ 0x2CD40DEF)) ^ 0xA0E86688) << v112;
  LODWORD(STACK[0x308]) = (v128 - ((2 * v128) & 0xC6DD9FB8) + 1668206556) & 0xD6B095D4 ^ 0x6B6FEFFF ^ ((v128 - ((2 * v128) & 0xC6DD9FB8) + 1668206556) ^ 0x9C913023) & (v130 ^ 0x4A4AFC5A);
  LODWORD(STACK[0x388]) = (((a7 & (v129 ^ 0x8C3C6B67)) >> v92) - ((2 * ((a7 & (v129 ^ 0x8C3C6B67)) >> v92)) & 0x3D1C37A4) - 1634853934) ^ 0x96C5EAD8 ^ (v131 - ((2 * v131) & 0x1097E214) + 139194634);
  v132 = a73 ^ ((v99 & (a73 ^ 0x8C3C6B66)) >> 1);
  v133 = ((v103 & 0x1F152557 | v89 & (v132 ^ 0x93294E30)) ^ 0x1F152557) << v112;
  v134 = (v107 & 0xE9B58A3E ^ (v132 ^ 0x6589E159) & (v107 ^ 0xC) ^ 0xC) >> a4;
  LODWORD(STACK[0x370]) = (v134 - ((2 * v134) & 0x6E51C47A) + 925426237) ^ (v133 - ((2 * v133) & 0x2B9B540E) - 1781683705) ^ 0xA2E5483A;
  v135 = a75 ^ ((v85 & (a75 ^ 0x8C3C6B66)) >> 1);
  v136 = (((v135 ^ 0xD3AE07F7) & ~v108 | v108 & 0x5F926C90) ^ 0x5F926C90) << v88;
  LODWORD(STACK[0x368]) = (((a7 & (v135 ^ 0x8C3C6B67)) >> v92) - ((2 * ((a7 & (v135 ^ 0x8C3C6B67)) >> v92)) & 0x6E12FA48) - 1224114908) ^ 0x4C70AFD ^ (v136 - ((2 * v136) & 0x679CEFB2) - 1278314535);
  v137 = a49 ^ ((v99 & (a49 ^ 0x8C3C6B66)) >> 1);
  v138 = ((v103 & 0x771CEB36 | v89 & (v137 ^ 0xFB208051)) ^ 0x771CEB36) << v112;
  v139 = LODWORD(STACK[0x358]) ^ 0xB1037790;
  v140 = v97 ^ ((v97 & v85) >> 1);
  v141 = (v137 & 0xA69A42E0 ^ 0x84184260 ^ (v137 ^ 0x8C3C6B67) & (v107 ^ 0xA69A42EC)) >> v92;
  LODWORD(STACK[0x358]) = (v138 - ((2 * v138) & 0x80669420) - 1070380528) & 0xF5A6C965 ^ 0xCA7B7E9A ^ ((v138 - ((2 * v138) & 0x80669420) - 1070380528) ^ 0x3FCCB5EF) & ((v141 - ((2 * v141) & 0x688FD35A) + 877128109) ^ 0x3E1EDF37);
  v142 = ((v140 & a7) >> a4) - ((2 * ((v140 & a7) >> a4)) & 0x4ECAD30) + 41309848;
  v143 = (((v140 ^ 0xED94AA05) & ~v108 | v108 & 0xED94AA05) ^ 0xED94AA05) << v112;
  v144 = v143 - ((2 * v143) & 0xFE3A5602);
  v145 = v1011 ^ ((v139 & v99) >> 1);
  v146 = a44 ^ ((v114 & a44) >> 1);
  v147 = (v145 ^ 0x71C1589F) & (v107 ^ 0xF932A729);
  v148 = v145 & 0xF932A725;
  v149 = (((v145 ^ 0xA1634020) & v89 | v103 & 0xD0A218BF) ^ 0xD0A218BF) << v112;
  v150 = ((v148 ^ 0x71000005 ^ v147) >> v92) - ((2 * ((v148 ^ 0x71000005 ^ v147) >> v92)) & 0x8F1338B8) - 947282852;
  v151 = (((v146 ^ 0x5B5C1F2) & ~v108 | v108 & 0x5B5C1F2) ^ 0x5B5C1F2) << v88;
  LODWORD(STACK[0x348]) = v142 ^ 0xFD6B7D99 ^ (v144 - 14865663);
  LODWORD(STACK[0x350]) = v150 ^ (v149 - 467841686 + (~(2 * v149) | 0x37C5652D)) ^ 0x2394D135;
  v152 = LODWORD(STACK[0x330]) ^ ((STACK[0x310] & v99) >> 1);
  LODWORD(STACK[0x310]) = (((v125 & v146) >> a4) - ((2 * ((v125 & v146) >> a4)) & 0xF3EC70FE) - 101304193) ^ 0x8A1BDA81 ^ (v151 - ((2 * v151) & 0xE7DBC5FC) + 1944969982);
  v153 = (v152 & 0xEEF3B79C ^ 0xEE430204 ^ (v152 ^ 0xEF4F0226) & (v107 ^ 0xEEF3B790)) >> v92;
  v154 = (((v152 ^ 0x907992B6) & ~v108 | v108 & 0x7F369090) ^ 0x7F369090) << v88;
  LODWORD(STACK[0x330]) = (v154 - ((2 * v154) & 0x4838E400) - 1541639680) & 0x1A42FFED ^ 0xE5BD7212 ^ ((v154 - ((2 * v154) & 0x4838E400) - 1541639680) ^ 0x5BE38DFF) & ((v153 - ((2 * v153) & 0x34B927A0) - 1705208880) ^ 0x7FE193C2);
  v155 = LODWORD(STACK[0x2F0]) ^ (((LODWORD(STACK[0x2F8]) ^ 0x4E846162) & v114) >> 1);
  v156 = (((v155 ^ 0x15967E6) & v89 | v103 & 0xB34898A6) ^ 0xB34898A6) << v112;
  v157 = LODWORD(STACK[0x3F8]) ^ ((v114 & (LODWORD(STACK[0x3F8]) ^ 0x99B04FBC)) >> 1);
  v158 = (v155 & 0xDFAC8673 ^ 0x92008640 ^ (v155 ^ 0xB211FF40) & (v107 ^ 0xDFAC867F)) >> a4;
  LODWORD(STACK[0x3F8]) = (v158 - ((2 * v158) & 0x35EC624E) + 452342055) ^ 0xE87BE8F0 ^ (v156 - ((2 * v156) & 0xE51BB3AE) - 225584681);
  v159 = (v103 & 0x4C1F7D1E | v89 & (v157 ^ 0xD5AF32A3)) ^ 0x4C1F7D1E;
  v160 = v157 & 0x21CA73F ^ 0x10073D ^ (v125 ^ 0x21CA73F) & (v157 ^ 0x99B04FBD);
  v161 = LODWORD(STACK[0x328]) ^ ((v114 & (LODWORD(STACK[0x328]) ^ 0x99B04FBC)) >> 1);
  LODWORD(STACK[0x2F8]) = (v159 << v88) + (v160 >> v92);
  v162 = ((v103 & 0x38297F32 | v89 & (v161 ^ 0xA199308F)) ^ 0x38297F32) << v112;
  v163 = LODWORD(STACK[0x2D4]) ^ ((v99 & (LODWORD(STACK[0x2D4]) ^ 0x2BA201A2)) >> 1);
  v164 = (v161 & 0x7697910A ^ 0x10900108 ^ (v125 ^ 0x7697910A) & (v161 ^ 0x99B04FBD)) >> a4;
  LODWORD(STACK[0x2D4]) = (v162 - ((2 * v162) & 0xF1A4D0FC) - 120428418) & 0xF2A4B1C ^ 0xF8D7FCFF ^ ((v162 - ((2 * v162) & 0xF1A4D0FC) - 120428418) ^ 0x72D9781) & ((v164 - ((2 * v164) & 0xFD358076) + 2124070971) ^ 0x8E4F74D8);
  v165 = ((v108 & 0xA28764FC | (v163 ^ 0x8925655E) & ~v108) ^ 0xA28764FC) << v88;
  v166 = LODWORD(STACK[0x3A0]) ^ ((v114 & (LODWORD(STACK[0x3A0]) ^ 0x99B04FBC)) >> 1);
  v167 = v103 & 0xE3FCE97E | v89 & (v166 ^ 0x7A4CA6C3);
  v168 = (v163 & 0xFFFF1A9D ^ 0x2BA20080 ^ (v163 ^ 0x2BA201A2) & (v107 ^ 0xFFFF1A91)) >> v92;
  v1023 = (v168 - ((2 * v168) & 0xF8AF4F9A) - 61364275) ^ 0xBCBDEB86 ^ (v165 - ((2 * v165) & 0x81D49896) + 1089096779);
  v169 = v107 & 0x1B0986A7 ^ (v166 ^ 0x82B9C91A) & (v107 ^ 0xC);
  v170 = LODWORD(STACK[0x2DC]) ^ ((STACK[0x2DC] & v114) >> 1);
  v171 = ((v103 & 0xF78EE00E | v89 & (v170 ^ 0xF78EE00E)) ^ 0xF78EE00E) << v112;
  LODWORD(STACK[0x2F0]) = (v171 - ((2 * v171) & 0x19D22A4C) - 1930881754) & 0x942038D2 ^ 0xEFFFD72F ^ ((v171 - ((2 * v171) & 0x19D22A4C) - 1930881754) ^ 0x7316EAD9) & ((((v170 & (v107 ^ 0xC)) >> v92) - ((2 * ((v170 & (v107 ^ 0xC)) >> v92)) & 0x481CB49A) + 604920397) ^ 0x4FD19D60);
  LODWORD(STACK[0x3A0]) = ((v167 ^ 0xE3FCE97E) << v88) + ((v169 ^ 4) >> v92);
  v172 = LODWORD(STACK[0x304]) ^ 0x87A38196;
  v173 = LODWORD(STACK[0x2C4]) ^ (((a47 ^ 0x8F430D0C) & v114) >> 1);
  v174 = (((v173 ^ 0x424C40F9) & ~v108 | v108 & 0x54957E0B) ^ 0x54957E0B) << v112;
  v175 = (v173 & 0xD62475E6 ^ 0x160034E2 ^ (v173 ^ 0x16D93EF2) & (v107 ^ 0xD62475EA)) >> v92;
  LODWORD(STACK[0x328]) = (v175 - ((2 * v175) & 0xE1FD3EB0) + 1895735128) ^ 0x7EF94B43 ^ (v174 - ((2 * v174) & 0x1C0FA836) + 235394075);
  v176 = HIDWORD(v1011) ^ ((v172 & v114) >> 1);
  v177 = (v176 ^ 0x715AFD1A) & (v107 ^ 0xF9625D8D);
  v178 = v176 & 0xF9625D81;
  v179 = (((v176 ^ 0xE30A9B14) & v89 | v103 & 0x9250660E) ^ 0x9250660E) << v112;
  LODWORD(STACK[0x304]) = (((v178 ^ 0x71425D00 ^ v177) >> v92) - ((2 * ((v178 ^ 0x71425D00 ^ v177) >> v92)) & 0xA81198E0) + 1409862768) ^ 0x690D68C0 ^ (v179 - ((2 * v179) & 0x7A0B4960) + 1023780016);
  v180 = LODWORD(STACK[0x2E8]) ^ ((v114 & (HIDWORD(a47) ^ 0xAAF137CA)) >> 1);
  LOBYTE(v105) = v92;
  LODWORD(STACK[0x2E8]) = (((v125 & (v180 ^ 0x106E51AD)) >> v92) - ((2 * ((v125 & (v180 ^ 0x106E51AD)) >> v92)) & 0x7D589EC4) + 1051479906) ^ 0x5C81046E ^ ((((v103 & 0x640468C2 | v89 & (v180 ^ 0x746A396F)) ^ 0x640468C2) << v112) - ((2 * (((v103 & 0x640468C2 | v89 & (v180 ^ 0x746A396F)) ^ 0x640468C2) << v112)) & 0xC45A9618) + 1647135500);
  v181 = LODWORD(STACK[0x2E0]) ^ ((v99 & (LODWORD(STACK[0x2E0]) ^ 0xC511E598)) >> 1);
  v182 = a54 ^ ((v114 & (a54 ^ 0xF5461370)) >> 1);
  LODWORD(STACK[0x2E0]) = (((v103 & 0xEE0DCEC9 | v89 & (v181 ^ 0x2B1C2B51)) ^ 0xEE0DCEC9) << v88) + ((v181 & 0x83F44B93 ^ 0x81104190 ^ (v125 ^ 0x83F44B93) & (v181 ^ 0xC511E598)) >> v92);
  v183 = ((v182 ^ 0xD1909641) & ~v108 | v108 & 0x24D68530) ^ 0x24D68530;
  v184 = v182 & 0x68862837 ^ 0x60060031 ^ (v182 ^ 0xF5461371) & (v107 ^ 0x6886283B);
  v185 = LODWORD(STACK[0x2C8]) ^ (((a48 ^ 0x77577468) & v114) >> 1);
  LODWORD(STACK[0x2C8]) = (v183 << v112) + (v184 >> a4);
  v186 = (((v185 ^ 0xF5E8D6EB) & v89 | v103 & 0x4BBD0CB3) ^ 0x4BBD0CB3) << v88;
  v187 = (v185 & 0xDCDBD1F9 ^ 0x9C51D058 ^ (v185 ^ 0xBE55DA58) & (v125 ^ 0xDCDBD1F9)) >> a4;
  LODWORD(STACK[0x2DC]) = (v187 - ((2 * v187) & 0x5AA8D008) - 1386977276) ^ 0x1C07F09C ^ (v186 - ((2 * v186) & 0x62A73130) - 1319921512);
  v188 = a66 ^ ((v99 & (a66 ^ 0xF5461370)) >> 1);
  v189 = (v188 ^ 0xD8CE2B63) & (v107 ^ 0xC) ^ v107 & 0x2D883812;
  v190 = ((v108 & 0x1AE91906 | (v188 ^ 0xEFAF0A77) & ~v108) ^ 0x1AE91906) << v112;
  v191 = LODWORD(STACK[0x2D8]) ^ (((HIDWORD(a49) ^ 0x984D6EB4) & v114) >> 1);
  LODWORD(STACK[0x2C4]) = ((v189 >> v92) - ((2 * (v189 >> v92)) & 0x667C20C0) + 859705440) ^ 0x8D10D617 ^ (v190 - ((2 * v190) & 0x7C5D8CEE) - 1104230793);
  v1021 = (((a67 ^ ((v99 & (a67 ^ 0xF5461370)) >> 1)) & 0x8749139C ^ 0x85401310 ^ (v125 ^ 0x8749139C) & (a67 ^ ((v99 & (a67 ^ 0xF5461370)) >> 1) ^ 0xF5461371)) >> a4) + (((v108 & 0x5E29B2F7 | (a67 ^ ((v99 & (a67 ^ 0xF5461370)) >> 1) ^ 0xAB6FA186) & ~v108) ^ 0x5E29B2F7) << v112);
  LODWORD(STACK[0x2D8]) = (((v103 & 0x9792F59 | (v191 ^ 0x2561E87D) & v89) ^ 0x9792F59) << v88) + (((v191 ^ 0x4E726E47) & (v107 ^ 0xC) ^ v107 & 0x626AA963) >> v92);
  v192 = LODWORD(STACK[0x2D0]) ^ (((HIDWORD(a48) ^ 0xB6A49AB8) & v99) >> 1);
  v193 = (((v192 ^ 0xA67CF294) & v89 | v103 & 0xE935FC5E) ^ 0xE935FC5E) << v88;
  LODWORD(STACK[0x2D0]) = ((((v192 ^ 0x4F490ECA) & v125) >> v92) - ((2 * (((v192 ^ 0x4F490ECA) & v125) >> v92)) & 0x251DF74) + 19460026) ^ 0x846D4280 ^ (v193 - ((2 * v193) & 0xA8B5A74) - 2059031238);
  v194 = a50 ^ ((v114 & (a50 ^ 0xF5461370)) >> 1);
  v195 = (v194 ^ 0x81CB6D62) & ~v108 | v108 & 0x748D7E13;
  v196 = (v194 & 0x73B3E552 ^ 0x71020150 ^ (v194 ^ 0xF5461371) & (v107 ^ 0x73B3E55E)) >> a4;
  v1020 = (v196 - ((2 * v196) & 0x121643CC) - 1995759130) & 0x4A695B97 ^ 0xBD9FA5EE ^ ((((v195 ^ 0x748D7E13) << v112) - ((2 * ((v195 ^ 0x748D7E13) << v112)) & 0x3106596A) - 1736233803) ^ 0x2D1588DD) & ((v196 - ((2 * v196) & 0x121643CC) - 1995759130) ^ 0x76F4DE19);
  v197 = LODWORD(STACK[0x338]) ^ ((v99 & (LODWORD(STACK[0x338]) ^ 0x2188D2D8)) >> 1);
  v198 = HIDWORD(a68) ^ ((v114 & (HIDWORD(a68) ^ 0x6FF25BC4)) >> 1);
  v199 = (v125 ^ 0xA1EB5994) & (v198 ^ 0x6FF25BC4);
  v200 = v198 & 0xA1EB5994;
  v201 = (((v198 ^ 0xCB3AE109) & ~v108 | v108 & 0xA4C8BACD) ^ 0xA4C8BACD) << v112;
  LODWORD(STACK[0x338]) = (((v103 & 0xC77039FD | v89 & (v197 ^ 0xE6F8EB25)) ^ 0xC77039FD) << v88) + ((v197 & 0x778DA0CB ^ 0x218880C8 ^ (v197 ^ 0x2188D2D8) & (v107 ^ 0x778DA0C7)) >> v92);
  HIDWORD(a68) = (v201 - ((2 * v201) & 0xF583D89E) + 2059529295) ^ (((v200 ^ 0x21E25984 ^ v199) >> a4) - ((2 * ((v200 ^ 0x21E25984 ^ v199) >> a4)) & 0x9238C35A) - 920886867) ^ 0xB3DD8DE2;
  v202 = LODWORD(STACK[0x400]) ^ ((v99 & (LODWORD(STACK[0x400]) ^ 0x2188D2D8)) >> 1);
  v203 = a69 ^ ((v114 & (a69 ^ 0x6FF25BC4)) >> 1);
  v204 = ((v103 & 0x9AA8ABC7 | v89 & (v202 ^ 0xBB20791F)) ^ 0x9AA8ABC7) << v88;
  LODWORD(v1018) = ((v204 - ((2 * v204) & 0x8DDE17CA) - 957412379) ^ 0x3910F41A) & ((((v125 & (v202 ^ 0x2188D2D8)) >> a4) - ((2 * ((v125 & (v202 ^ 0x2188D2D8)) >> a4)) & 0x5E9F2162) - 1353740111) ^ 0xD2ADF728) ^ (v204 - ((2 * v204) & 0x8DDE17CA) - 957412379) & 0x821D9866;
  v205 = (v203 ^ 0x5A64D8C6) & ~v108 | v108 & 0x35968302;
  v206 = (v107 & 0xD34FD36A ^ (v203 ^ 0xBCBD88AE) & (v107 ^ 0xC) ^ 8) >> v92;
  v207 = ((v205 ^ 0x35968302) << v112) - 1433267190 + (~(2 * ((v205 ^ 0x35968302) << v112)) | 0xAADBD7ED);
  LODWORD(v1019) = v207 & 0xD02AFCC6 ^ 0xAFD71739 ^ (v207 ^ 0x556DEBF6) & ((v206 - ((2 * v206) & 0x5BD53E00) - 1377132800) ^ 0x823F9C39);
  v208 = LODWORD(STACK[0x3B0]) ^ ((v99 & (LODWORD(STACK[0x3B0]) ^ 0x2188D2D8)) >> 1);
  v209 = v108 & 0x3948B910 | (v208 ^ 0x18C06BC8) & ~v108;
  v210 = (v208 & 0x35BE59F6 ^ 0x218850D0 ^ (v208 ^ 0x2188D2D8) & (v107 ^ 0x35BE59FA)) >> v92;
  v211 = a70 ^ ((v114 & (a70 ^ 0x6FF25BC4)) >> 1);
  LODWORD(a54) = (((v209 ^ 0x3948B910) << v112) - ((2 * ((v209 ^ 0x3948B910) << v112)) & 0x86D1BC9A) - 1016537523) ^ (v210 - ((2 * v210) & 0x11FCBBE8) + 150887924);
  v212 = ((v103 & 0x79F21BFC | v89 & (v211 ^ 0x16004038)) ^ 0x79F21BFC) << v88;
  v213 = (v211 & 0xF325F50E ^ 0x63205104 ^ (v125 ^ 0xF325F50E) & (v211 ^ 0x6FF25BC4)) >> a4;
  v214 = LODWORD(STACK[0x408]) ^ ((v99 & (LODWORD(STACK[0x408]) ^ 0x2188D2D8)) >> 1);
  LODWORD(STACK[0x3B0]) = (v213 - ((2 * v213) & 0x397A089A) + 482149453) ^ 0x2D9BD605 ^ (v212 - ((2 * v212) & 0x624DA490) + 824627784);
  v215 = v103 & 0x71DA4FD8 | v89 & (v214 ^ 0x50529D00);
  v216 = v125;
  v217 = ((v125 & (v214 ^ 0x2188D2D8)) >> v92) + 1718346366 + (~(2 * ((v125 & (v214 ^ 0x2188D2D8)) >> v92)) | 0x33283B05);
  v218 = HIDWORD(a55) ^ ((v114 & (HIDWORD(a55) ^ 0x6FF25BC4)) >> 1);
  v219 = (v218 ^ 0xCF937EC9) & ~v108 | v108 & 0xA061250D;
  v220 = ((v218 ^ 0x1A711D96) & (v107 ^ 0xC) ^ v107 & 0x75834652) >> a4;
  LODWORD(STACK[0x400]) = v217 & 0x2AF2B4B5 ^ 0xF76FEB7F ^ ((((v215 ^ 0x71DA4FD8) << v112) - ((2 * ((v215 ^ 0x71DA4FD8) << v112)) & 0xAB98553C) + 1439443614) ^ 0x80C161D4) & (v217 ^ 0x99941D82);
  v221 = LODWORD(STACK[0x3B4]) ^ ((v99 & (LODWORD(STACK[0x3B4]) ^ 0x703ECF36)) >> 1);
  v222 = ((v108 & 0xDAF932E | (v221 ^ 0x7D915C18) & ~v108) ^ 0xDAF932E) << v88;
  HIDWORD(v1019) = (v220 - ((2 * v220) & 0xAF31A468) + 1469633076) ^ 0x75319B1A ^ (((v219 ^ 0xA061250D) << v88) - ((2 * ((v219 ^ 0xA061250D) << v88)) & 0x4552925C) + 581519662);
  v223 = a56 ^ ((v114 & (a56 ^ 0xCD1B3EA6)) >> 1);
  v224 = (v222 - ((2 * v222) & 0xBF73C622) + 1606017809) ^ (((v125 & (v221 ^ 0x703ECF36)) >> v92) - 1932805522 + (~(2 * ((v125 & (v221 ^ 0x703ECF36)) >> v92)) | 0xE6688B25)) ^ 0xD372597C;
  HIDWORD(a55) = v224;
  v225 = ((v103 & 0x800CA044 | v89 & (v223 ^ 0x4D179EE2)) ^ 0x800CA044) << v112;
  v226 = (v107 & 0xF9DD33A9 ^ (v223 ^ 0x34C60D0F) & (v107 ^ 0xC) ^ 8) >> a4;
  HIDWORD(v1018) = (v226 - ((2 * v226) & 0x2A56C342) + 355164577) ^ (v225 - ((2 * v225) & 0xBF89015C) + 1606713518) ^ 0x4AEFE10F;
  v227 = LODWORD(STACK[0x30C]) ^ (((LODWORD(STACK[0x344]) ^ 0x703ECF36) & v114) >> 1);
  v228 = (v227 ^ 0x229A36D7) & v89 | v103 & 0xB40808A6;
  v229 = (v107 & 0x1E945AAA ^ (v227 ^ 0x880664DB) & (v107 ^ 0xC) ^ 8) >> a4;
  LODWORD(STACK[0x3B4]) = (v229 - ((2 * v229) & 0x8C2BF628) + 1175845652) & 0xB89D6871 ^ 0x4777FF9E ^ ((((v228 ^ 0xB40808A6) << v88) - ((2 * ((v228 ^ 0xB40808A6) << v88)) & 0x1EFDDFC) + 16248574) ^ 0x47957970) & ((v229 - ((2 * v229) & 0x8C2BF628) + 1175845652) ^ 0xB9EA04EB);
  v230 = a53 ^ ((v99 & (a53 ^ 0xCD1B3EA6)) >> 1);
  v231 = ((v125 & (v230 ^ 0xCD1B3EA6)) >> v105) - ((2 * ((v125 & (v230 ^ 0xCD1B3EA6)) >> v105)) & 0x52F9F132) + 696055961;
  v232 = ((v108 & 0xFA4608B2 | (v230 ^ 0x375D3614) & ~v108) ^ 0xFA4608B2) << v112;
  LODWORD(STACK[0x344]) = (v232 - ((2 * v232) & 0x73D3EB68) - 1175849548) ^ v231 ^ 0x90950D2D;
  v233 = LODWORD(STACK[0x3B8]) ^ ((v99 & (LODWORD(STACK[0x3B8]) ^ 0x703ECF36)) >> 1);
  v234 = ((v103 & 0x93210D02 | v89 & (v233 ^ 0xE31FC234)) ^ 0x93210D02) << v112;
  v235 = a74 ^ ((v114 & (a74 ^ 0xCD1B3EA6)) >> 1);
  v236 = (((v235 ^ 0x2ABCEB33) & ~v108 | v108 & 0xE7A7D595) ^ 0xE7A7D595) << v88;
  v237 = (v233 & 0x484ADB1F ^ 0x400ACB16 ^ (v233 ^ 0x703ECF36) & (v107 ^ 0x484ADB13)) >> a4;
  v238 = ((v125 & (v235 ^ 0xCD1B3EA6)) >> v105) - ((2 * ((v125 & (v235 ^ 0xCD1B3EA6)) >> v105)) & 0xBCE1A3BC) + 1584452062;
  LODWORD(STACK[0x30C]) = v238 & 0x19950C9F ^ 0xFE7AF3FE ^ ((v236 - ((2 * v236) & 0xA36420D0) + 1370624104) ^ 0xB7D8E308) & (v238 ^ 0xA18F2E21);
  LODWORD(STACK[0x3B8]) = (v237 - ((2 * v237) & 0x65CD2B5C) - 1293511250) & 0xAA28FFA6 ^ 0xF7F795FF ^ ((v234 - ((2 * v234) & 0xEEDD0372) + 2003730873) ^ 0x22B981E0) & ((v237 - ((2 * v237) & 0x65CD2B5C) - 1293511250) ^ 0x4D196A51);
  v239 = LODWORD(STACK[0x3C4]) ^ ((v114 & (LODWORD(STACK[0x3C4]) ^ 0x703ECF36)) >> 1);
  LODWORD(STACK[0x3C4]) = (((v103 & 0x5AFEF315 | v89 & (v239 ^ 0x2AC03C23)) ^ 0x5AFEF315) << v112) + ((v239 & 0x24A6D982 ^ 0x2026C902 ^ (v125 ^ 0x24A6D982) & (v239 ^ 0x703ECF36)) >> a4);
  v240 = a76 ^ ((v99 & (a76 ^ 0xCD1B3EA6)) >> 1);
  v241 = v108 & 0x34B9FE23 | (v240 ^ 0xF9A2C085) & ~v108;
  v242 = ((v240 ^ 0x6A437BE6) & (v107 ^ 0xC) ^ v107 & 0xA7584540) >> v105;
  v243 = ((v241 ^ 0x34B9FE23) << v88) - ((2 * ((v241 ^ 0x34B9FE23) << v88)) & 0x9EDC7F84) - 814858302;
  v1024 = v243 & 0x7FDFAB69 ^ 0xCF6E7FD6 ^ (v243 ^ 0x3091C03D) & ((v242 - ((2 * v242) & 0xCF4B737A) + 1738914237) ^ 0xE785ED2B);
  v244 = LODWORD(STACK[0x354]) ^ ((v99 & (LODWORD(STACK[0x354]) ^ 0xC279D12E)) >> 1);
  v245 = (v244 & 0xBC8312F7 ^ 0x80011026 ^ (v244 ^ 0xC279D12E) & (v107 ^ 0xBC8312FB)) >> a4;
  v246 = ((v103 & 0x27E10E29 | v89 & (v244 ^ 0xE598DF07)) ^ 0x27E10E29) << v88;
  v247 = (v245 - ((2 * v245) & 0x5C900E6C) + 776472374) ^ 0xEBCBB856 ^ (v246 - ((2 * v246) & 0x8B077EC0) - 981221536);
  LODWORD(a56) = v247;
  v248 = v114;
  v249 = LODWORD(STACK[0x35C]) ^ ((STACK[0x35C] & v114) >> 1);
  v250 = (v249 ^ 0xB14D8BCA) & ~v108 | v108 & 0xB14D8BCA;
  v251 = HIDWORD(a65) ^ ((v99 & (HIDWORD(a65) ^ 0x8F70ED2E)) >> 1);
  v1025 = ((((a77 ^ ((v114 & (a77 ^ 0x8F70ED2E)) >> 1) ^ 0x127A4FB) & ~v108 | v108 & 0x8E5749D5) ^ 0x8E5749D5) << v112) + ((v125 & (a77 ^ ((v114 & (a77 ^ 0x8F70ED2E)) >> 1) ^ 0x8F70ED2E)) >> v105);
  v252 = ((v250 ^ 0xB14D8BCA) << v88) - ((2 * ((v250 ^ 0xB14D8BCA) << v88)) & 0x12C7824E) + 157532455;
  v253 = v252 & 0x36FA7448 ^ 0xC967CBB7 ^ (v252 ^ 0xF69C3ED8) & ((((v249 & (v107 ^ 0xC)) >> a4) - ((2 * ((v249 & (v107 ^ 0xC)) >> a4)) & 0x8BDADC84) + 1173188162) ^ 0x8CE8E5F5);
  LODWORD(v1012) = v253;
  v254 = ((v103 & 0xFF904ECA | v89 & (v251 ^ 0x70E0A3E4)) ^ 0xFF904ECA) << v112;
  v255 = (v251 & 0x6AAB01BD ^ 0xA20012C ^ (v125 ^ 0x6AAB01BD) & (v251 ^ 0x8F70ED2E)) >> v105;
  HIDWORD(a65) = (v255 - ((2 * v255) & 0xDF6E05DC) - 273218834) ^ 0x515FC118 ^ (v254 - ((2 * v254) & 0x7DD187EC) - 1092041738);
  v256 = LODWORD(STACK[0x360]) ^ (((LODWORD(STACK[0x380]) ^ 0xC279D12E) & v99) >> 1);
  LODWORD(STACK[0x2C0]) = v107 ^ 0xC;
  LOBYTE(v251) = v88;
  LODWORD(STACK[0x490]) = v88;
  v257 = ((((v256 ^ 0xE0E8C052) & ~v108 | v108 & 0x837EE87C) ^ 0x837EE87C) << v88) + ((v107 & 0x568A426E ^ (v256 ^ 0x351C6A40) & (v107 ^ 0xC) ^ 0xC) >> a4);
  HIDWORD(v1013) = v257;
  v258 = a78 ^ ((v114 & (a78 ^ 0x8F70ED2E)) >> 1);
  v259 = (v125 ^ 0x35A0DABA) & (v258 ^ 0x8F70ED2E);
  v260 = v258 & 0x35A0DABA;
  v261 = v105;
  v262 = ((v103 & 0x3FD503D0 | v89 & (v258 ^ 0xB0A5EEFE)) ^ 0x3FD503D0) << v112;
  v1026 = (((v260 ^ 0x520C82A ^ v259) >> v105) - ((2 * ((v260 ^ 0x520C82A ^ v259) >> v105)) & 0xD8AA020) + 113594384) ^ 0xABA72126 ^ (v262 - ((2 * v262) & 0x5AC4E26C) - 1386057418);
  v263 = LODWORD(STACK[0x378]) ^ (((a60 ^ 0x8676A9FC) & v114) >> 1);
  v264 = ((((v263 ^ 0x56F04559) & ~v108 | v108 & 0xEB1E55A4) ^ 0xEB1E55A4) << v251) + (((v263 ^ 0xCE2242E) & (v107 ^ 0xC) ^ v107 & 0xB10C34D3) >> v105);
  HIDWORD(v1015) = v264;
  v265 = v216;
  v1022 = (((v103 & 0x178DAD54 | v89 & (HIDWORD(a54) ^ ((v99 & (HIDWORD(a54) ^ 0x8F70ED2E)) >> 1) ^ 0x98FD407A)) ^ 0x178DAD54) << v112) | ((v216 & (HIDWORD(a54) ^ ((v99 & (HIDWORD(a54) ^ 0x8F70ED2E)) >> 1) ^ 0x8F70ED2E)) >> a4);
  v266 = LODWORD(STACK[0x2F8]) ^ v1013 ^ LODWORD(STACK[0x310]) ^ LODWORD(STACK[0x398]) ^ LODWORD(STACK[0x368]) ^ LODWORD(STACK[0x31C]) ^ LODWORD(STACK[0x388]) ^ LODWORD(STACK[0x370]) ^ LODWORD(STACK[0x320]) ^ LODWORD(STACK[0x308]) ^ LODWORD(STACK[0x358]) ^ LODWORD(STACK[0x2D4]) ^ LODWORD(STACK[0x350]) ^ LODWORD(STACK[0x330]) ^ LODWORD(STACK[0x3F8]);
  LODWORD(STACK[0x380]) = a55 ^ 0x98989898 ^ v1013;
  LODWORD(STACK[0x378]) = a55 ^ 0x98989898 ^ HIDWORD(v1012);
  v267 = v266 ^ LODWORD(STACK[0x318]) ^ HIDWORD(v1012) ^ LODWORD(STACK[0x348]) ^ LODWORD(STACK[0x390]);
  v268 = LODWORD(STACK[0x2F0]) ^ LODWORD(STACK[0x3A0]);
  v269 = v268 & 0x10000000;
  if ((v267 & v268 & 0x10000000) != 0)
  {
    v269 = -v269;
  }

  v270 = v269 + v267;
  v271 = a62 ^ LODWORD(STACK[0x3A8]) ^ LODWORD(STACK[0x480]) ^ HIDWORD(v1014) ^ v1015 ^ a64 ^ 0x8849C8AB;
  v272 = (LODWORD(STACK[0x220]) ^ a63 ^ 0x8707101F) - ((2 * (LODWORD(STACK[0x220]) ^ a63 ^ 0x8707101F)) & 0xF7E1D4AC) + 2079386198;
  v273 = a79 ^ LODWORD(STACK[0x4B0]) ^ 0x1F35C0AA;
  v274 = a68;
  v275 = (LODWORD(STACK[0x228]) ^ a68 ^ 0x8169B39B) - ((2 * (LODWORD(STACK[0x228]) ^ a68 ^ 0x8169B39B)) & 0xFB3C93A4);
  LODWORD(STACK[0x408]) = a54 ^ LODWORD(STACK[0x2E0]) ^ LODWORD(STACK[0x2D8]) ^ LODWORD(STACK[0x338]) ^ v224 ^ LODWORD(STACK[0x3C4]) ^ LODWORD(STACK[0x2E8]) ^ v247 ^ v1018 ^ LODWORD(STACK[0x400]) ^ LODWORD(STACK[0x3B8]) ^ v268 & 0xEFFFFFFF ^ v253 ^ LODWORD(STACK[0x304]) ^ LODWORD(STACK[0x3B4]) ^ v257 ^ v264 ^ LODWORD(STACK[0x2D0]) ^ LODWORD(STACK[0x2DC]) ^ LODWORD(STACK[0x328]) ^ 0x3479EC44 ^ v270;
  HIDWORD(v1016) = v1014 ^ ((a80 ^ a64 ^ 0xF0075F91) - ((2 * (a80 ^ a64 ^ 0xF0075F91)) & 0xF7BE23C4) + 2078216674);
  LODWORD(STACK[0x228]) = v272 ^ a68;
  LODWORD(STACK[0x3F4]) ^= 0x79A5EA5D ^ (v271 - ((2 * v271) & 0xF7BE23C4) + 2078216674);
  v276 = (HIDWORD(a56) ^ a68 ^ 0x15B45B8D) - ((2 * (HIDWORD(a56) ^ a68 ^ 0x15B45B8D)) & 0xFB3C93A4);
  v277 = LODWORD(STACK[0x268]) ^ 0x127E2156;
  LODWORD(STACK[0x268]) = a63 ^ (v275 + 2107525586);
  LODWORD(a68) = a63 ^ (v273 - ((2 * v273) & 0xFB3C93A4) + 2107525586);
  LODWORD(STACK[0x220]) = a63 ^ (v276 + 2107525586);
  LODWORD(v1017) = (((a61 - ((2 * a61) & 0xF7E1D4AC) + 2079386198) ^ v274) + 2107525586 + (~(2 * ((a61 - ((2 * a61) & 0xF7E1D4AC) + 2079386198) ^ v274)) | 0x4C36C5B) + 1) ^ a63;
  HIDWORD(v1017) = ((v1014 ^ a81 ^ 0x159BA039) - 2 * ((v1014 ^ a81 ^ 0x159BA039) & 0x1E43EE4E ^ (v1014 ^ a81) & 4) - 1639715254) ^ a64;
  v278 = (((v99 & v277) >> 1) - (v99 & v277 & 0x3235DB9E) - 1726288433) ^ LODWORD(STACK[0x248]);
  v279 = v248;
  v280 = (((v248 & (LODWORD(STACK[0x3CC]) ^ 0x8E790202)) >> 1) - (v248 & (LODWORD(STACK[0x3CC]) ^ 0x8E790202) & 0x508417D4) - 1472066582) ^ LODWORD(STACK[0x270]);
  v281 = v261;
  v1027 = ((v265 & v278) >> v261) | ((v278 & ~v108) << v112);
  v282 = STACK[0x2C0];
  v283 = STACK[0x490];
  LODWORD(STACK[0x480]) = ((v89 & v280) << LODWORD(STACK[0x490])) | ((v280 & STACK[0x2C0]) >> a4);
  v284 = (((v99 & (LODWORD(STACK[0x2A0]) ^ 0xA7481D62)) >> 1) - (v99 & (LODWORD(STACK[0x2A0]) ^ 0xA7481D62) & 0x28DACFD4) - 1804769302) ^ LODWORD(STACK[0x278]);
  HIDWORD(a45) = v265;
  v1028 = ((v265 & v284) >> a4) ^ ((v284 & ~v108) << v283);
  v285 = (((v248 & (LODWORD(STACK[0x2A4]) ^ 0x7BE1CC80)) >> 1) - (v248 & (LODWORD(STACK[0x2A4]) ^ 0x7BE1CC80) & 0x53F3A7C2) - 1443245087) ^ LODWORD(STACK[0x280]);
  v286 = (((v99 & (LODWORD(STACK[0x29C]) ^ 0x176E6CBC)) >> 1) - (v99 & (LODWORD(STACK[0x29C]) ^ 0x176E6CBC) & 0x1D964288) - 1899290300) ^ LODWORD(STACK[0x288]);
  LODWORD(v1016) = ((v89 & v285) << v112) + ((v285 & v282) >> a4);
  v287 = v108;
  LODWORD(v1015) = ((v265 & v286) >> v281) + ((v286 & ~v108) << v283);
  v288 = (((v99 & (LODWORD(STACK[0x294]) ^ 0xD0D5A2CC)) >> 1) - (v99 & (LODWORD(STACK[0x294]) ^ 0xD0D5A2CC) & 0xF598232A) - 87289451) ^ LODWORD(STACK[0x250]);
  v1030 = ((v89 & v288) << v283) ^ ((v288 & v282) >> a4);
  HIDWORD(v290) = a54 ^ 1;
  LODWORD(v290) = a54 ^ 0xCB9683B8;
  v289 = v290 >> 3;
  v291 = (((v248 & (LODWORD(STACK[0x3E8]) ^ 0x12E6388C)) >> 1) - (v248 & (LODWORD(STACK[0x3E8]) ^ 0x12E6388C) & 0x1AC1B02) - 2133455487) ^ LODWORD(STACK[0x448]);
  LODWORD(STACK[0x4B0]) = ((v291 & ~v108) << v283) | ((v291 & v282) >> v281);
  v292 = (692928087 * (v1023 - HIDWORD(a65))) ^ ((692928087 * (v1023 - HIDWORD(a65))) >> 16);
  v293 = (-1986001865 * (v292 ^ (v292 >> 8))) ^ ((-1986001865 * (v292 ^ (v292 >> 8))) >> 16);
  v294 = (-1583260105 * (v293 ^ (v293 >> 8))) ^ ((-1583260105 * (v293 ^ (v293 >> 8))) >> 16);
  v295 = 2139161809 * (v294 ^ (v294 >> 8)) - ((2139161809 * (v294 ^ (v294 >> 8))) >> 16);
  v296 = STACK[0x460];
  v297 = (v295 ^ (v295 >> 8)) - STACK[0x460];
  v298 = STACK[0x2D4];
  v299 = (692928087 * (v298 - v253)) ^ ((692928087 * (v298 - v253)) >> 16);
  v300 = (-1986001865 * (v299 ^ (v299 >> 8))) ^ ((-1986001865 * (v299 ^ (v299 >> 8))) >> 16);
  v301 = (-1583260105 * (v300 ^ (v300 >> 8))) ^ ((-1583260105 * (v300 ^ (v300 >> 8))) >> 16);
  v302 = v1018 ^ 0xF6186552 ^ (v301 - ((2 * v301) & 0x13EE155E) + 167185071);
  v303 = v302 + v301 - 2 * (v302 & v301);
  v304 = LODWORD(STACK[0x430]) ^ 0x2010C44D;
  v305 = LODWORD(STACK[0x240]) ^ LODWORD(STACK[0x230]) ^ a72 ^ LODWORD(STACK[0x218]) ^ a65 ^ a83 ^ 0xAB0F0337;
  v306 = LODWORD(STACK[0x240]) ^ LODWORD(STACK[0x3C8]) ^ a82 ^ 0x5683A33F;
  v307 = (LODWORD(STACK[0x378]) + v297 - 2 * (STACK[0x378] & v297)) ^ v297;
  v308 = STACK[0x320];
  if (v297)
  {
    v309 = STACK[0x320];
  }

  else
  {
    v309 = (LODWORD(STACK[0x378]) + v297 - 2 * (STACK[0x378] & v297)) ^ v297;
  }

  v310 = STACK[0x31C];
  if (v297)
  {
    v311 = STACK[0x31C];
  }

  else
  {
    v311 = STACK[0x320];
  }

  v312 = STACK[0x380];
  if (v297)
  {
    v313 = STACK[0x380];
  }

  else
  {
    v313 = STACK[0x31C];
  }

  if (v297)
  {
    v314 = (LODWORD(STACK[0x378]) + v297 - 2 * (STACK[0x378] & v297)) ^ v297;
  }

  else
  {
    v314 = STACK[0x380];
  }

  v315 = STACK[0x318];
  v316 = STACK[0x308];
  if (v297)
  {
    v317 = STACK[0x318];
  }

  else
  {
    v317 = STACK[0x308];
  }

  v318 = STACK[0x390];
  if (v297)
  {
    v319 = STACK[0x308];
  }

  else
  {
    v319 = STACK[0x390];
  }

  v320 = STACK[0x398];
  if (v297)
  {
    v321 = STACK[0x398];
  }

  else
  {
    v318 = STACK[0x398];
    v321 = STACK[0x318];
  }

  v322 = STACK[0x370];
  v323 = STACK[0x368];
  if (v297)
  {
    v324 = STACK[0x368];
  }

  else
  {
    v324 = STACK[0x370];
  }

  LODWORD(STACK[0x320]) = v89;
  v325 = STACK[0x358];
  if (v297)
  {
    v326 = STACK[0x358];
  }

  else
  {
    v326 = v323;
  }

  v327 = STACK[0x388];
  if (v297)
  {
    v328 = STACK[0x388];
  }

  else
  {
    v328 = STACK[0x358];
  }

  if (v297)
  {
    v327 = v322;
  }

  v329 = STACK[0x310];
  v330 = STACK[0x330];
  if (v297)
  {
    v331 = STACK[0x330];
  }

  else
  {
    v331 = STACK[0x310];
  }

  LODWORD(STACK[0x398]) = v331;
  v332 = STACK[0x350];
  if (v297)
  {
    v333 = v329;
  }

  else
  {
    v333 = STACK[0x350];
  }

  LODWORD(STACK[0x390]) = v333;
  v334 = STACK[0x348];
  if (v297)
  {
    v335 = v332;
  }

  else
  {
    v335 = STACK[0x348];
  }

  LODWORD(STACK[0x360]) = v335;
  if (v297)
  {
    v330 = v334;
  }

  LODWORD(STACK[0x388]) = v330;
  v336 = STACK[0x3F8];
  v337 = STACK[0x3A0];
  if (v297)
  {
    v338 = STACK[0x3F8];
  }

  else
  {
    v338 = STACK[0x3A0];
  }

  LODWORD(STACK[0x3CC]) = v338;
  v339 = v298;
  if (v297)
  {
    v298 = v337;
  }

  LODWORD(STACK[0x378]) = v298;
  v340 = STACK[0x2F8];
  if (v297)
  {
    v341 = v339;
  }

  else
  {
    v341 = STACK[0x2F8];
  }

  LODWORD(STACK[0x3A0]) = v341;
  if (v297)
  {
    v336 = v340;
  }

  LODWORD(STACK[0x350]) = v336;
  v342 = STACK[0x328];
  v343 = STACK[0x304];
  if (v297)
  {
    v344 = STACK[0x304];
  }

  else
  {
    v344 = STACK[0x328];
  }

  LODWORD(STACK[0x3C8]) = v344;
  v345 = STACK[0x2E8];
  if (v297)
  {
    v343 = STACK[0x2E8];
  }

  LODWORD(STACK[0x31C]) = v343;
  v346 = STACK[0x2F0];
  if (v297)
  {
    v347 = STACK[0x2F0];
  }

  else
  {
    v347 = v345;
  }

  LODWORD(STACK[0x35C]) = v347;
  if (v297)
  {
    v346 = v342;
  }

  LODWORD(STACK[0x310]) = v346;
  v348 = STACK[0x2D8];
  v349 = STACK[0x2D0];
  if (v297)
  {
    v350 = STACK[0x2D0];
  }

  else
  {
    v350 = STACK[0x2D8];
  }

  LODWORD(STACK[0x3A8]) = v350;
  v351 = STACK[0x2DC];
  if ((v297 & 1) == 0)
  {
    v348 = STACK[0x2DC];
  }

  LODWORD(STACK[0x370]) = v348;
  v352 = STACK[0x2E0];
  if ((v297 & 1) == 0)
  {
    v351 = STACK[0x2E0];
  }

  LODWORD(STACK[0x380]) = v351;
  if ((v297 & 1) == 0)
  {
    v352 = v349;
  }

  LODWORD(STACK[0x358]) = v352;
  HIDWORD(v354) = v289;
  LODWORD(v354) = v289;
  v353 = v354 >> 29;
  v355 = STACK[0x2C8];
  v356 = STACK[0x2C4];
  if (v297)
  {
    v357 = STACK[0x2C4];
  }

  else
  {
    v357 = STACK[0x2C8];
  }

  LODWORD(STACK[0x308]) = v357;
  if (v297)
  {
    v356 = v1021;
  }

  LODWORD(STACK[0x368]) = v356;
  if (v297)
  {
    v358 = v1020;
  }

  else
  {
    v358 = v1021;
  }

  LODWORD(STACK[0x288]) = v358;
  if ((v297 & 1) == 0)
  {
    v355 = v1020;
  }

  LODWORD(STACK[0x354]) = v355;
  v359 = STACK[0x400];
  if (v297)
  {
    v360 = STACK[0x400];
  }

  else
  {
    v360 = v353;
  }

  LODWORD(STACK[0x2F8]) = v360;
  if (v297)
  {
    v361 = v353;
  }

  else
  {
    v361 = v303;
  }

  LODWORD(STACK[0x328]) = v361;
  v362 = STACK[0x338];
  if (v297)
  {
    v363 = v303;
  }

  else
  {
    v363 = STACK[0x338];
  }

  LODWORD(STACK[0x2C4]) = v363;
  if ((v297 & 1) == 0)
  {
    v362 = v359;
  }

  LODWORD(STACK[0x2F0]) = v362;
  v364 = STACK[0x3B0];
  v365 = HIDWORD(v1019);
  if (v297)
  {
    v366 = HIDWORD(v1019);
  }

  else
  {
    v366 = STACK[0x3B0];
  }

  LODWORD(STACK[0x348]) = v366;
  v367 = HIDWORD(a68);
  if (v297)
  {
    v365 = HIDWORD(a68);
  }

  LODWORD(STACK[0x2E0]) = v365;
  if (v297)
  {
    v367 = v1019;
  }

  LODWORD(STACK[0x318]) = v367;
  if (v297)
  {
    v368 = v364;
  }

  else
  {
    v368 = v1019;
  }

  LODWORD(STACK[0x2A4]) = v368;
  v369 = STACK[0x3B8];
  v370 = STACK[0x3C4];
  if (v297)
  {
    v371 = STACK[0x3C4];
  }

  else
  {
    v371 = STACK[0x3B8];
  }

  LODWORD(STACK[0x2E8]) = v371;
  v372 = STACK[0x3B4];
  if ((v297 & 1) == 0)
  {
    v369 = STACK[0x3B4];
  }

  LODWORD(STACK[0x3B8]) = v369;
  v373 = HIDWORD(a55);
  if ((v297 & 1) == 0)
  {
    v372 = HIDWORD(a55);
  }

  LODWORD(STACK[0x2D0]) = v372;
  if ((v297 & 1) == 0)
  {
    v373 = v370;
  }

  LODWORD(STACK[0x3C4]) = v373;
  v374 = STACK[0x30C];
  v375 = v1024;
  if (v297)
  {
    v376 = v1024;
  }

  else
  {
    v376 = STACK[0x30C];
  }

  LODWORD(STACK[0x3B0]) = v376;
  v377 = HIDWORD(v1018);
  if (v297)
  {
    v375 = HIDWORD(v1018);
  }

  LODWORD(STACK[0x3B4]) = v375;
  v378 = STACK[0x344];
  if ((v297 & 1) == 0)
  {
    v374 = STACK[0x344];
  }

  LODWORD(STACK[0x2C8]) = v374;
  if (v297)
  {
    v377 = v378;
  }

  LODWORD(STACK[0x2D8]) = v377;
  if (v297)
  {
    v379 = HIDWORD(v1013);
  }

  else
  {
    v379 = v253;
  }

  LODWORD(STACK[0x344]) = v379;
  if (v297)
  {
    v380 = HIDWORD(v1015);
  }

  else
  {
    v380 = HIDWORD(v1013);
  }

  LODWORD(STACK[0x2DC]) = v380;
  if (v297)
  {
    v381 = a56;
  }

  else
  {
    v381 = HIDWORD(v1015);
  }

  LODWORD(STACK[0x278]) = v381;
  if (v297)
  {
    v382 = v253;
  }

  else
  {
    v382 = a56;
  }

  LODWORD(STACK[0x29C]) = v382;
  if (v297)
  {
    v383 = v1026;
  }

  else
  {
    v383 = HIDWORD(a65);
  }

  LODWORD(STACK[0x250]) = v383;
  if (v297)
  {
    v384 = HIDWORD(a65);
  }

  else
  {
    v384 = v1025;
  }

  LODWORD(STACK[0x280]) = v384;
  if (v297)
  {
    v385 = v1025;
  }

  else
  {
    v385 = v1022;
  }

  LODWORD(STACK[0x230]) = v385;
  if (v297)
  {
    v386 = v1022;
  }

  else
  {
    v386 = v1026;
  }

  LODWORD(STACK[0x270]) = v386;
  v387 = STACK[0x228];
  v388 = STACK[0x268];
  if (v297)
  {
    v389 = STACK[0x228];
  }

  else
  {
    v389 = STACK[0x268];
  }

  LODWORD(STACK[0x2A0]) = v389;
  v390 = STACK[0x3F4];
  if (v297)
  {
    v391 = STACK[0x3F4];
  }

  else
  {
    v391 = v387;
  }

  LODWORD(STACK[0x2D4]) = v391;
  if (v297)
  {
    v392 = v388;
  }

  else
  {
    v392 = v1017;
  }

  LODWORD(STACK[0x294]) = v392;
  if (v297)
  {
    v393 = v1017;
  }

  else
  {
    v393 = v390;
  }

  LODWORD(STACK[0x248]) = v393;
  if (v297)
  {
    v394 = HIDWORD(v1017);
  }

  else
  {
    v394 = a68;
  }

  LODWORD(STACK[0x228]) = v394;
  v395 = STACK[0x220];
  if (v297)
  {
    v396 = STACK[0x220];
  }

  else
  {
    v396 = HIDWORD(v1017);
  }

  LODWORD(STACK[0x268]) = v396;
  if (v297)
  {
    v397 = HIDWORD(v1016);
  }

  else
  {
    v397 = v395;
  }

  LODWORD(STACK[0x220]) = v397;
  if (v297)
  {
    v398 = a68;
  }

  else
  {
    v398 = HIDWORD(v1016);
  }

  LODWORD(STACK[0x240]) = v398;
  LODWORD(STACK[0x430]) = v297 + v304;
  v399 = v297 + v305;
  LODWORD(STACK[0x338]) = v297 + v305;
  v400 = v297 + v306;
  LODWORD(STACK[0x3F4]) = v297 + v306;
  v401 = (v297 & 2) == 0;
  if ((v297 & 2) != 0)
  {
    v402 = v309;
  }

  else
  {
    v402 = v313;
  }

  if (v401)
  {
    v403 = v309;
  }

  else
  {
    v403 = v313;
  }

  if (v401)
  {
    v404 = v311;
  }

  else
  {
    v404 = v314;
  }

  if (v401)
  {
    v405 = v314;
  }

  else
  {
    v405 = v311;
  }

  if (v401)
  {
    v406 = v318;
  }

  else
  {
    v406 = v317;
  }

  LODWORD(STACK[0x218]) = v406;
  if (v401)
  {
    v407 = v317;
  }

  else
  {
    v407 = v318;
  }

  LODWORD(STACK[0x330]) = v407;
  if (v401)
  {
    v408 = v321;
  }

  else
  {
    v408 = v319;
  }

  v1034 = v408;
  if (v401)
  {
    v409 = v319;
  }

  else
  {
    v409 = v321;
  }

  v1032 = v409;
  if (v401)
  {
    v410 = v326;
  }

  else
  {
    v410 = v327;
  }

  LODWORD(STACK[0x30C]) = v410;
  if (v401)
  {
    v411 = v327;
  }

  else
  {
    v411 = v326;
  }

  LODWORD(STACK[0x400]) = v411;
  if (v401)
  {
    v412 = v328;
  }

  else
  {
    v412 = v324;
  }

  LODWORD(STACK[0x3F8]) = v412;
  if (v401)
  {
    v413 = v324;
  }

  else
  {
    v413 = v328;
  }

  LODWORD(STACK[0x304]) = v413;
  v414 = v279 >> 1;
  v415 = (v279 >> 1) & 0x4A3C0F51 ^ 0x94781EA2;
  v416 = v287;
  v417 = STACK[0x4C8];
  v418 = STACK[0x4C0];
  v419 = v1027 ^ v1015 ^ v1016;
  v420 = v419 ^ (((v414 & 0xA000740 ^ 0x84001600 ^ (HIDWORD(a45) ^ 0x8E001740) & v415) >> LODWORD(STACK[0x4C8])) | ((v414 & 0x80C0C00 ^ 0x80C22 ^ v415 & (v287 ^ 0xD67013D1)) << LODWORD(STACK[0x4C0]))) ^ v403;
  v421 = LODWORD(STACK[0x4D0]) >> 1;
  v422 = v421 & 0x4A3C0F51 ^ 0x94781EA2;
  v423 = STACK[0x4A0];
  v424 = STACK[0x4A8];
  v425 = STACK[0x490];
  v426 = STACK[0x2BC];
  v427 = v419 ^ (((v421 & 0x40180B10 ^ 0x14580A20 ^ (LODWORD(STACK[0x4A8]) ^ 0x8A2414C3) & v422) << LODWORD(STACK[0x490])) + ((v421 & 0x481C0D41 ^ 0x84581C00 ^ v422 & (LODWORD(STACK[0x4A0]) ^ 0xCC5C1D41)) >> LODWORD(STACK[0x2BC]))) ^ v405;
  v428 = v419 ^ (((v414 & 0x48180D01 ^ 0x14180C20 ^ (LODWORD(STACK[0x4A8]) ^ 0x826412D2) & v415) << LODWORD(STACK[0x4C0])) | ((v414 & 0x4A300410 ^ 0x94700422 ^ v415 & (LODWORD(STACK[0x4A0]) ^ 0xDE700432)) >> LODWORD(STACK[0x4C8]))) ^ v404;
  v429 = v1027 ^ v1015 ^ ((v421 & 0x2200A50 ^ 0x4600AA0 ^ (v416 ^ 0xD81C1503) & v422) << LODWORD(STACK[0x490])) ^ ((v421 & 0x8180A00 ^ 0x80181A02 ^ (HIDWORD(a45) ^ 0x88181A02) & v422) >> LODWORD(STACK[0x2BC])) ^ v1016 ^ v402;
  HIDWORD(v430) = *(v296 + 4 * (v419 ^ (((v414 & 1 ^ 0x20 ^ (LODWORD(STACK[0x4A8]) ^ 0xD2) & v415) << LODWORD(STACK[0x4C0])) | ((v414 & 0x4A300410 ^ 0x94700422 ^ v415 & (LODWORD(STACK[0x4A0]) ^ 0xDE700432)) >> LODWORD(STACK[0x4C8]))) ^ v404));
  LODWORD(v430) = HIDWORD(v430);
  v431 = (v430 >> 16) ^ __ROR4__(*(v296 + 4 * BYTE1(v420)), 8) ^ __ROR4__(*(v296 + 4 * HIBYTE(v429)), 24) ^ *(v296 + 4 * BYTE2(v427));
  v432 = v399 - LODWORD(STACK[0x430]) + (*(v296 + 4 * BYTE2(v429)) ^ __ROR4__(*(v296 + 4 * HIBYTE(v428)), 24) ^ __ROR4__(*(v296 + 4 * BYTE1(v427)), 8) ^ __ROR4__(*(v296 + 4 * v420), 16));
  v433 = v414 & 0x34E0FD25 ^ 0x69C1FA4B;
  v434 = v414 & 0x30405820 ^ 0x60415800 ^ v433 & (v416 ^ 0xDA0A74F);
  v435 = v1028 ^ LODWORD(STACK[0x4B0]);
  v436 = v435 ^ (((v414 & 0x2000BD24 ^ 0x6901B840 ^ (HIDWORD(a45) ^ 0x6901BD64) & v433) >> LODWORD(STACK[0x2BC])) + (v434 << LODWORD(STACK[0x490]))) ^ LODWORD(STACK[0x330]);
  v437 = LODWORD(STACK[0x430]) - v400;
  LODWORD(STACK[0x330]) = v437;
  v438 = v436 ^ (v431 + v437);
  v439 = v421 & 0x34E0FD25 ^ 0x69C1FA4B;
  v440 = v421 & 0x20407821 ^ 0x61417849 ^ (v424 ^ 0x1CA08706) & v439;
  v441 = v435 ^ ((v440 << v418) + ((v421 & 0x14603C20 ^ 0x41413A0A ^ v439 & (v423 ^ 0x55613E26u)) >> v417)) ^ v1032 ^ v432;
  v442 = v435 ^ ((v421 & 0x14009C05 ^ 0x41009843 ^ (HIDWORD(a45) ^ 0x55009C47) & v439) >> v426) ^ (v440 << v425) ^ v1034 ^ *(v296 + 4 * BYTE2(v420)) ^ __ROR4__(*(v296 + 4 * HIBYTE(v427)), 24) ^ __ROR4__(*(v296 + 4 * v429), 16) ^ __ROR4__(*(v296 + 4 * BYTE1(v428)), 8);
  v443 = v423;
  v444 = v417;
  v445 = v435 ^ (((v414 & 0x10601500 ^ 0x4041104A ^ v433 & (v423 ^ 0x50611546)) >> v417) | (v434 << v418)) ^ LODWORD(STACK[0x218]) ^ *(v296 + 4 * BYTE2(v428)) ^ __ROR4__(*(v296 + 4 * v427), 16) ^ __ROR4__(*(v296 + 4 * HIBYTE(v420)), 24) ^ __ROR4__(*(v296 + 4 * BYTE1(v429)), 8);
  v446 = v414 & 0x650ACAC ^ 0xCA15959;
  v447 = v1030 ^ LODWORD(STACK[0x480]);
  v448 = v447 ^ (((v414 & 0x2508488 ^ 0x8A05108 ^ (v424 ^ 0x4012875) & v446) << v418) | ((v446 & (v423 ^ 0x605C) ^ (v414 & 0x2000 | 0x4050)) >> v426)) ^ LODWORD(STACK[0x304]) ^ __ROR4__(*(v296 + 4 * BYTE1(v438)), 8) ^ __ROR4__(*(v296 + 4 * v442), 16) ^ *(v296 + 4 * BYTE2(v441)) ^ __ROR4__(*(v296 + 4 * HIBYTE(v445)), 24);
  v449 = v416;
  v450 = v421 & 0x650ACAC ^ 0xCA15959;
  v451 = v447 ^ (((v421 & 0x600082C ^ 0xC804848 ^ (HIDWORD(a45) ^ 0xE80486C) & v450) >> v444) | ((v421 & 0x10888C ^ 0x8815909 ^ (v416 ^ 0x6602470) & v450) << v425)) ^ LODWORD(STACK[0x30C]) ^ __ROR4__(*(v296 + 4 * v445), 16) ^ __ROR4__(*(v296 + 4 * HIBYTE(v441)), 24) ^ __ROR4__(*(v296 + 4 * BYTE1(v442)), 8) ^ *(v296 + 4 * BYTE2(v438));
  v452 = v447 ^ (((v414 & 0x240ACA0 ^ 0x8A04950 ^ (HIDWORD(a45) ^ 0xAE0EDF0) & v446) >> v426) + ((v414 & 0x4100C00 ^ 0xC804801 ^ v446 & (v416 ^ 0x261B1FC)) << v418)) ^ LODWORD(STACK[0x3F8]) ^ __ROR4__(*(v296 + 4 * v441), 16) ^ *(v296 + 4 * BYTE2(v442)) ^ __ROR4__(*(v296 + 4 * HIBYTE(v438)), 24) ^ __ROR4__(*(v296 + 4 * BYTE1(v445)), 8);
  v453 = v447 ^ ((v421 & 0x41088A4 ^ 0xCA01841 ^ v450 & (v423 ^ 0xCB098E9u)) >> v444) ^ ((v421 & 0x450048C ^ 0xCA11019 ^ (v424 ^ 0x200E960) & v450) << v425) ^ LODWORD(STACK[0x400]) ^ __ROR4__(*(v296 + 4 * HIBYTE(v442)), 24) ^ __ROR4__(*(v296 + 4 * v438), 16) ^ *(v296 + 4 * BYTE2(v445)) ^ __ROR4__(*(v296 + 4 * BYTE1(v441)), 8);
  v454 = (*(v296 + 4 * BYTE2(v453)) ^ __ROR4__(*(v296 + 4 * BYTE1(v448)), 8) ^ __ROR4__(*(v296 + 4 * v451), 16) ^ __ROR4__(*(v296 + 4 * HIBYTE(v452)), 24)) + 248512857 * (LODWORD(STACK[0x408]) - ((LODWORD(STACK[0x470]) - ((2 * LODWORD(STACK[0x470])) & 0x5384E052) - 1446875095) ^ LODWORD(STACK[0x488])));
  v455 = STACK[0x498];
  v456 = (((v455 & (LODWORD(STACK[0x440]) ^ 0xF82E3B3A)) >> 1) - (v455 & (LODWORD(STACK[0x440]) ^ 0xF82E3B3A) & 0x184CD4D4) - 1943639446) ^ LODWORD(STACK[0x438]);
  v457 = STACK[0x320];
  LODWORD(STACK[0x400]) = ((STACK[0x320] & v456) << v418) + ((HIDWORD(a45) & v456) >> v444);
  v458 = STACK[0x4D0];
  v459 = (((STACK[0x4D0] & (LODWORD(STACK[0x2AC]) ^ 0xC90BA010)) >> 1) - (STACK[0x4D0] & (LODWORD(STACK[0x2AC]) ^ 0xC90BA010) & 0x2AD98490) - 1788034488) ^ LODWORD(STACK[0x2AC]);
  LODWORD(STACK[0x218]) = ((v459 & 0xAF357926 ^ 0xC256000 ^ (v459 ^ 0x5C676259) & (v423 ^ 0xAF35792A)) >> v426) | ((v459 & 0x6C08E4EA ^ 0x4C006048 ^ (v416 ^ 0x93F71B15) & (v459 ^ 0x5C676259)) << v425);
  v460 = (((v458 & (LODWORD(STACK[0x3E0]) ^ 0xD5BF0B3E)) >> 1) - (v458 & (LODWORD(STACK[0x3E0]) ^ 0xD5BF0B3E) & 0x558B6FE) - 2102633601) ^ LODWORD(STACK[0x28C]);
  v461 = STACK[0x2C0];
  LODWORD(STACK[0x304]) = ((v457 & v460) << v418) | ((v460 & STACK[0x2C0]) >> v444);
  v462 = (((v455 & (LODWORD(STACK[0x3DC]) ^ 0x59BBCB8Cu)) >> 1) - (v455 & (LODWORD(STACK[0x3DC]) ^ 0x59BBCB8C) & 0x9FFF0CA6) - 805337517) ^ LODWORD(STACK[0x290]);
  v463 = (((v458 & (LODWORD(STACK[0x3E4]) ^ 0x64CD1068u)) >> 1) - (v458 & (LODWORD(STACK[0x3E4]) ^ 0x64CD1068) & 0x5B0625B0) - 1383918888) ^ LODWORD(STACK[0x2A8]);
  LOBYTE(v450) = v425;
  v464 = ((HIDWORD(a45) & v462) >> v426) | ((v462 & ~v416) << v425);
  v465 = LODWORD(STACK[0x3D8]) ^ 0x3F8323EC;
  v466 = v444;
  LODWORD(STACK[0x480]) = ((v457 & v463) << v418) + ((v463 & v461) >> v444);
  v467 = (((v455 & v465) >> 1) - (v455 & v465 & 0xAB2B3EF2) + 1435869049) ^ LODWORD(STACK[0x410]);
  v468 = v449;
  v469 = v450;
  v470 = v426;
  LODWORD(STACK[0x3F8]) = ((HIDWORD(a45) & v467) >> v426) ^ ((v467 & ~v449) << v450);
  v471 = (((v455 & (LODWORD(STACK[0x3D0]) ^ 0x5788D962u)) >> 1) - (v455 & (LODWORD(STACK[0x3D0]) ^ 0x5788D962) & 0xFBAF88D2) + 2111292521) ^ LODWORD(STACK[0x260]);
  LODWORD(STACK[0x410]) = ((HIDWORD(a45) & v471) >> v466) + ((v471 & ~v449) << v418);
  v472 = (((v458 & (LODWORD(STACK[0x3D4]) ^ 0xB36DBB92)) >> 1) - (v458 & (LODWORD(STACK[0x3D4]) ^ 0xB36DBB92) & 0x6A1D222E) + 890147095) ^ LODWORD(STACK[0x298]);
  v473 = ((v457 & v472) << v418) ^ ((HIDWORD(a45) & v472) >> v426);
  LODWORD(STACK[0x320]) = v473;
  v474 = STACK[0x398];
  v475 = STACK[0x360];
  if (v401)
  {
    v476 = STACK[0x398];
  }

  else
  {
    v476 = STACK[0x360];
  }

  if (v401)
  {
    v477 = STACK[0x360];
  }

  else
  {
    v477 = STACK[0x398];
  }

  v478 = STACK[0x390];
  v479 = STACK[0x388];
  if (v401)
  {
    v480 = STACK[0x390];
  }

  else
  {
    v480 = STACK[0x388];
  }

  if (v401)
  {
    v478 = STACK[0x388];
  }

  v481 = STACK[0x378];
  v482 = STACK[0x350];
  if (v401)
  {
    v483 = STACK[0x378];
  }

  else
  {
    v483 = STACK[0x350];
  }

  v1029 = v483;
  if (v401)
  {
    v481 = STACK[0x350];
  }

  v1033 = v481;
  v484 = STACK[0x3CC];
  v485 = STACK[0x3A0];
  if (v401)
  {
    v486 = STACK[0x3CC];
  }

  else
  {
    v486 = STACK[0x3A0];
  }

  if (v401)
  {
    v484 = STACK[0x3A0];
  }

  v1031 = v484;
  v487 = STACK[0x31C];
  v488 = STACK[0x310];
  if (v401)
  {
    v489 = STACK[0x310];
  }

  else
  {
    v489 = STACK[0x31C];
  }

  LODWORD(STACK[0x28C]) = v489;
  if (!v401)
  {
    v487 = v488;
  }

  LODWORD(STACK[0x260]) = v487;
  v490 = STACK[0x3C8];
  v491 = STACK[0x35C];
  if (v401)
  {
    v492 = STACK[0x3C8];
  }

  else
  {
    v492 = STACK[0x35C];
  }

  LODWORD(STACK[0x290]) = v492;
  if (v401)
  {
    v490 = v491;
  }

  v1035 = v490;
  v493 = STACK[0x308];
  v494 = STACK[0x288];
  if (v401)
  {
    v495 = STACK[0x288];
  }

  else
  {
    v495 = STACK[0x308];
  }

  LODWORD(STACK[0x388]) = v495;
  if (v401)
  {
    v496 = v493;
  }

  else
  {
    v496 = v494;
  }

  LODWORD(STACK[0x378]) = v496;
  v497 = STACK[0x370];
  v498 = STACK[0x358];
  if (v401)
  {
    v499 = STACK[0x358];
  }

  else
  {
    v499 = STACK[0x370];
  }

  LODWORD(STACK[0x2C0]) = v499;
  if (!v401)
  {
    v497 = v498;
  }

  LODWORD(STACK[0x2AC]) = v497;
  v500 = STACK[0x3A8];
  v501 = STACK[0x380];
  if (v401)
  {
    v502 = STACK[0x380];
  }

  else
  {
    v502 = STACK[0x3A8];
  }

  LODWORD(STACK[0x2A8]) = v502;
  if (!v401)
  {
    v500 = v501;
  }

  LODWORD(STACK[0x298]) = v500;
  v503 = STACK[0x2F8];
  v504 = STACK[0x2C4];
  if (v401)
  {
    v505 = STACK[0x2F8];
  }

  else
  {
    v505 = STACK[0x2C4];
  }

  LODWORD(STACK[0x308]) = v505;
  if (v401)
  {
    v506 = v504;
  }

  else
  {
    v506 = v503;
  }

  LODWORD(STACK[0x2F8]) = v506;
  v507 = STACK[0x368];
  v508 = STACK[0x354];
  if (v401)
  {
    v509 = STACK[0x354];
  }

  else
  {
    v509 = STACK[0x368];
  }

  LODWORD(STACK[0x380]) = v509;
  if (v401)
  {
    v510 = v507;
  }

  else
  {
    v510 = v508;
  }

  LODWORD(STACK[0x370]) = v510;
  v511 = STACK[0x328];
  v512 = STACK[0x2F0];
  if (v401)
  {
    v513 = STACK[0x328];
  }

  else
  {
    v513 = STACK[0x2F0];
  }

  LODWORD(STACK[0x30C]) = v513;
  if (v401)
  {
    v514 = v512;
  }

  else
  {
    v514 = v511;
  }

  LODWORD(STACK[0x2F0]) = v514;
  v515 = STACK[0x2E0];
  v516 = STACK[0x2A4];
  if (v401)
  {
    v517 = STACK[0x2A4];
  }

  else
  {
    v517 = STACK[0x2E0];
  }

  LODWORD(STACK[0x3A8]) = v517;
  if (v401)
  {
    v518 = v515;
  }

  else
  {
    v518 = v516;
  }

  LODWORD(STACK[0x398]) = v518;
  v519 = STACK[0x348];
  v520 = STACK[0x318];
  if (v401)
  {
    v521 = STACK[0x318];
  }

  else
  {
    v521 = STACK[0x348];
  }

  LODWORD(STACK[0x390]) = v521;
  if (v401)
  {
    v522 = v519;
  }

  else
  {
    v522 = v520;
  }

  LODWORD(STACK[0x3A0]) = v522;
  v523 = STACK[0x2E8];
  v524 = STACK[0x2D0];
  if (v401)
  {
    v525 = STACK[0x2E8];
  }

  else
  {
    v525 = STACK[0x2D0];
  }

  LODWORD(STACK[0x328]) = v525;
  if (v401)
  {
    v526 = v524;
  }

  else
  {
    v526 = v523;
  }

  LODWORD(STACK[0x318]) = v526;
  v527 = STACK[0x3B8];
  v528 = STACK[0x3C4];
  if (v401)
  {
    v529 = STACK[0x3B8];
  }

  else
  {
    v529 = STACK[0x3C4];
  }

  LODWORD(STACK[0x31C]) = v529;
  if (v401)
  {
    v530 = v528;
  }

  else
  {
    v530 = v527;
  }

  LODWORD(STACK[0x310]) = v530;
  v531 = STACK[0x3B4];
  v532 = STACK[0x2C8];
  if (v401)
  {
    v533 = STACK[0x2C8];
  }

  else
  {
    v533 = STACK[0x3B4];
  }

  LODWORD(STACK[0x3C4]) = v533;
  if (v401)
  {
    v534 = v531;
  }

  else
  {
    v534 = v532;
  }

  LODWORD(STACK[0x3B4]) = v534;
  v535 = STACK[0x3B0];
  v536 = STACK[0x2D8];
  if (v401)
  {
    v537 = STACK[0x2D8];
  }

  else
  {
    v537 = STACK[0x3B0];
  }

  LODWORD(STACK[0x3B8]) = v537;
  if (v401)
  {
    v538 = v535;
  }

  else
  {
    v538 = v536;
  }

  LODWORD(STACK[0x3B0]) = v538;
  v539 = STACK[0x344];
  v540 = STACK[0x278];
  if (v401)
  {
    v541 = STACK[0x344];
  }

  else
  {
    v541 = STACK[0x278];
  }

  LODWORD(STACK[0x354]) = v541;
  if (v401)
  {
    v542 = v540;
  }

  else
  {
    v542 = v539;
  }

  LODWORD(STACK[0x348]) = v542;
  v543 = STACK[0x250];
  v544 = STACK[0x230];
  if (v401)
  {
    v545 = STACK[0x250];
  }

  else
  {
    v545 = STACK[0x230];
  }

  LODWORD(STACK[0x3D4]) = v545;
  if (v401)
  {
    v546 = v544;
  }

  else
  {
    v546 = v543;
  }

  LODWORD(STACK[0x3D0]) = v546;
  v547 = STACK[0x2DC];
  v548 = STACK[0x29C];
  if (v401)
  {
    v549 = STACK[0x29C];
  }

  else
  {
    v549 = STACK[0x2DC];
  }

  LODWORD(STACK[0x344]) = v549;
  if (v401)
  {
    v550 = v547;
  }

  else
  {
    v550 = v548;
  }

  LODWORD(STACK[0x350]) = v550;
  v551 = STACK[0x280];
  v552 = STACK[0x270];
  if (v401)
  {
    v553 = STACK[0x270];
  }

  else
  {
    v553 = STACK[0x280];
  }

  LODWORD(STACK[0x3CC]) = v553;
  if (v401)
  {
    v554 = v551;
  }

  else
  {
    v554 = v552;
  }

  LODWORD(STACK[0x3C8]) = v554;
  v555 = STACK[0x228];
  v556 = STACK[0x220];
  if (v401)
  {
    v557 = STACK[0x220];
  }

  else
  {
    v557 = STACK[0x228];
  }

  LODWORD(STACK[0x3E4]) = v557;
  if (v401)
  {
    v558 = v555;
  }

  else
  {
    v558 = v556;
  }

  LODWORD(STACK[0x3DC]) = v558;
  v559 = STACK[0x2A0];
  v560 = STACK[0x248];
  if (v401)
  {
    v561 = STACK[0x248];
  }

  else
  {
    v561 = STACK[0x2A0];
  }

  LODWORD(STACK[0x368]) = v561;
  if (v401)
  {
    v562 = v559;
  }

  else
  {
    v562 = v560;
  }

  LODWORD(STACK[0x35C]) = v562;
  v563 = STACK[0x2D4];
  v564 = STACK[0x294];
  if (v401)
  {
    v565 = STACK[0x2D4];
  }

  else
  {
    v565 = STACK[0x294];
  }

  LODWORD(STACK[0x358]) = v565;
  if (v401)
  {
    v566 = v564;
  }

  else
  {
    v566 = v563;
  }

  LODWORD(STACK[0x360]) = v566;
  v567 = STACK[0x268];
  v568 = STACK[0x240];
  if (v401)
  {
    v569 = STACK[0x240];
  }

  else
  {
    v569 = STACK[0x268];
  }

  LODWORD(STACK[0x3D8]) = v569;
  if (v401)
  {
    v570 = v567;
  }

  else
  {
    v570 = v568;
  }

  LODWORD(STACK[0x3E0]) = v570;
  v571 = v421 & 0x791BD001 ^ 0xF237A002;
  v572 = v414 & 0x791BD001 ^ 0xF237A002;
  v573 = v473 ^ v464;
  v574 = v573 ^ (((v421 & 0x7813C001 ^ 0x7233A000 ^ (HIDWORD(a45) ^ 0x7A33E001) & v571) >> v466) + ((v421 & 0x20080000 ^ 0xA0202000 ^ (v468 ^ 0x5B17D003) & v571) << v469)) ^ v477 ^ __ROR4__(*(v296 + 4 * HIBYTE(v453)), 24) ^ __ROR4__(*(v296 + 4 * BYTE1(v451)), 8) ^ __ROR4__(*(v296 + 4 * v452), 16) ^ *(v296 + 4 * BYTE2(v448));
  v575 = v573 ^ ((v414 & 0x69134001 ^ 0xE0370002 ^ v572 & (v443 ^ 0xE9374003)) >> v426) ^ ((v414 & 0x281BD001 ^ 0x2237A000 ^ (v424 ^ 0xD1000002) & v572) << v418) ^ v480 ^ __ROR4__(*(v296 + 4 * BYTE1(v452)), 8) ^ __ROR4__(*(v296 + 4 * HIBYTE(v448)), 24) ^ __ROR4__(*(v296 + 4 * v453), 16) ^ *(v296 + 4 * BYTE2(v451));
  v576 = v573 ^ ((v414 & 0x29134000 ^ 0xA0330002 ^ v572 & (v468 ^ 0x520CB001)) << v418) ^ ((v414 & 0xB4001 ^ 0x80072000 ^ (HIDWORD(a45) ^ 0x800F6001) & v572) >> v426) ^ v476 ^ __ROR4__(*(v296 + 4 * v448), 16) ^ *(v296 + 4 * BYTE2(v452)) ^ __ROR4__(*(v296 + 4 * BYTE1(v453)), 8);
  v578 = __ROR4__(*(v296 + 4 * HIBYTE(v451)), 24);
  v577 = v576 ^ v578;
  v579 = v573 ^ (((v421 & 0x5109D001 ^ 0x5025A000 ^ (v424 ^ 0xAA120002) & v571) << v469) + ((v421 & 0x180AD001 ^ 0x90028000 ^ v571 & (v443 ^ 0x980AD001)) >> v466)) ^ v478 ^ v454;
  v580 = *(v296 + 4 * BYTE2(v574)) ^ __ROR4__(*(v296 + 4 * (v576 ^ v578)), 16) ^ __ROR4__(*(v296 + 4 * HIBYTE(v579)), 24);
  HIDWORD(v581) = *(v296 + 4 * BYTE1(v575));
  LODWORD(v581) = HIDWORD(v581);
  v582 = v421 & 0xC2C4B16 ^ 0x1858962D;
  v583 = (v468 ^ 0xC28C605) & v582 ^ (v421 & 0x40912 | 0x10501028);
  v584 = LODWORD(STACK[0x400]) ^ LODWORD(STACK[0x3F8]);
  v585 = v584 ^ (((v421 & 0x14 ^ 0x10940D ^ v582 & (v443 ^ 0x109411u)) >> v426) | (v583 << v418)) ^ v486 ^ ((v581 >> 8) + v580 - 2 * (v580 & (v581 >> 8)));
  v586 = v414 & 0xC2C4B16 ^ 0x1858962D;
  v587 = v414 & 0x40C0016 ^ 0x58000C ^ (v424 ^ 0x1820DF21) & v586;
  v588 = v584 ^ ((v587 << v469) + ((v414 & 0x8280100 ^ 0x8181020 ^ (HIDWORD(a45) ^ 0x8381120) & v586) >> v466)) ^ v1029 ^ *(v296 + 4 * BYTE2(v579)) ^ __ROR4__(*(v296 + 4 * BYTE1(v574)), 8) ^ __ROR4__(*(v296 + 4 * v575), 16) ^ __ROR4__(*(v296 + 4 * HIBYTE(v577)), 24);
  v589 = v418;
  v590 = v466;
  v591 = v584 ^ ((v587 << v418) | ((v414 & 0x200904 ^ 0x50900C ^ v586 & (v443 ^ 0x709900)) >> v466)) ^ v1031 ^ __ROR4__(*(v296 + 4 * HIBYTE(v575)), 24) ^ __ROR4__(*(v296 + 4 * v574), 16) ^ *(v296 + 4 * BYTE2(v577)) ^ __ROR4__(*(v296 + 4 * BYTE1(v579)), 8);
  v592 = v469;
  v593 = v584 ^ (((v421 & 0x84202 ^ 0x80609 ^ (HIDWORD(a45) ^ 0x8460B) & v582) >> v470) | (v583 << v469)) ^ v1033 ^ __ROR4__(*(v296 + 4 * HIBYTE(v574)), 24) ^ __ROR4__(*(v296 + 4 * BYTE1(v577)), 8) ^ *(v296 + 4 * BYTE2(v575));
  LODWORD(v581) = __ROR4__(*(v296 + 4 * v579), 16);
  v594 = v593 ^ v581;
  v595 = LODWORD(STACK[0x408]) ^ __ROR4__(*(v296 + 4 * ((v593 ^ v581) >> 8)), 8) ^ __ROR4__(*(v296 + 4 * v591), 16) ^ *(v296 + 4 * BYTE2(v585));
  LODWORD(v581) = __ROR4__(*(v296 + 4 * HIBYTE(v588)), 24);
  v596 = v421 & 0x60CF7D4F ^ 0xC19EFA9F;
  v597 = v414 & 0x60CF7D4F ^ 0xC19EFA9F;
  v598 = LODWORD(STACK[0x3F8]) ^ LODWORD(STACK[0x218]);
  v599 = v598 ^ ((v421 & 0xC50548 ^ 0x81940088 ^ (HIDWORD(a45) ^ 0x81D505C8) & v596) >> v470) ^ ((v421 & 0x200D2C09 ^ 0x1CA889 ^ (v424 ^ 0xC1C25356) & v596) << v592) ^ v1035 ^ __ROR4__(*(v296 + 4 * HIBYTE(v585)), 24) ^ __ROR4__(*(v296 + 4 * BYTE1(v591)), 8) ^ *(v296 + 4 * BYTE2(v594)) ^ __ROR4__(*(v296 + 4 * v588), 16);
  v600 = LODWORD(STACK[0x260]) ^ (((v414 & 0x400C1048 ^ 0x411C1218 ^ v597 & (v468 ^ 0xA0C3ED87)) << v418) | ((v414 & 0x60CE6048 ^ 0x409EE098 ^ v597 & (v443 ^ 0x60DEE0D4)) >> v590)) ^ ((LODWORD(STACK[0x470]) ^ -LODWORD(STACK[0x470]) ^ ((v595 ^ v581) - (v595 ^ v581 ^ LODWORD(STACK[0x470])))) + (v595 ^ v581));
  v601 = v598 ^ LODWORD(STACK[0x488]) ^ (v600 - ((2 * v600) & 0x5384E052) - 1446875095);
  v602 = v421 & 0x5604C ^ 0x104608C ^ v596 & (v443 ^ 0x10560C0);
  v603 = v468;
  v604 = v421 & 0x20815901 ^ 0x1905A01 ^ (v468 ^ 0xC04EA4DE) & v596;
  v605 = v592;
  v606 = v598 ^ ((((v414 & 0x8B440D ^ 0xF5DEFBFF ^ (v424 ^ 0xAAB440D) & (v414 & 0x60CF7D4F ^ 0x3E610560)) - (((v414 & 0x60CF7D4F) - (STACK[0x498] & 0x811A889E) + 1522353903) ^ v424 ^ 0x64DC438F)) << v592) | ((v414 & 0x60406D46 ^ 0xC0006886 ^ (HIDWORD(a45) ^ 0xE0406DC6) & v597) >> v470)) ^ LODWORD(STACK[0x28C]) ^ *(v296 + 4 * BYTE2(v591)) ^ __ROR4__(*(v296 + 4 * HIBYTE(v594)), 24) ^ __ROR4__(*(v296 + 4 * BYTE1(v588)), 8) ^ __ROR4__(*(v296 + 4 * v585), 16);
  v607 = v598 ^ (v602 >> v590) ^ (v604 << v418) ^ LODWORD(STACK[0x290]) ^ __ROR4__(*(v296 + 4 * BYTE1(v585)), 8) ^ __ROR4__(*(v296 + 4 * HIBYTE(v591)), 24) ^ *(v296 + 4 * BYTE2(v588)) ^ __ROR4__(*(v296 + 4 * v594), 16);
  HIDWORD(v581) = *(v296 + 4 * BYTE1(v606));
  LODWORD(v581) = HIDWORD(v581);
  v608 = (v581 >> 8) ^ __ROR4__(*(v296 + 4 * v607), 16);
  HIDWORD(v581) = *(v296 + 4 * v601);
  LODWORD(v581) = HIDWORD(v581);
  v609 = (v581 >> 16) ^ __ROR4__(*(v296 + 4 * BYTE1(v607)), 8);
  v610 = *(v296 + 4 * BYTE2(v607)) ^ __ROR4__(*(v296 + 4 * v599), 16) ^ __ROR4__(*(v296 + 4 * BYTE1(v601)), 8) ^ __ROR4__(*(v296 + 4 * HIBYTE(v606)), 24);
  LODWORD(STACK[0x2C4]) = v610;
  v611 = v609 ^ *(v296 + 4 * BYTE2(v606)) ^ __ROR4__(*(v296 + 4 * HIBYTE(v599)), 24);
  LODWORD(STACK[0x2D4]) = v611;
  v612 = (v608 ^ __ROR4__(*(v296 + 4 * HIBYTE(v601)), 24) ^ *(v296 + 4 * BYTE2(v599))) + LODWORD(STACK[0x330]);
  LODWORD(STACK[0x2C8]) = v612;
  v613 = LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x338]) ^ *(v296 + 4 * BYTE2(v601)) ^ __ROR4__(*(v296 + 4 * BYTE1(v599)), 8) ^ __ROR4__(*(v296 + 4 * HIBYTE(v607)), 24) ^ __ROR4__(*(v296 + 4 * v606), 16);
  LODWORD(STACK[0x2A4]) = v613;
  v614 = v414 & 0x6749B044 ^ 0xCE936089;
  v615 = v414 & 0x63403044 ^ 0xC2122081 ^ (HIDWORD(a45) ^ 0xE35230C5) & v614;
  LODWORD(STACK[0x498]) = v615;
  LODWORD(STACK[0x470]) = v614;
  v616 = (v414 & 0x440A004 ^ 0x84002081 ^ v614 & (v603 ^ 0x6B9B5048)) << v418;
  LOBYTE(v602) = v590;
  v617 = (v615 >> v590) | v616;
  v618 = v616;
  LODWORD(STACK[0x330]) = v616;
  v619 = STACK[0x410];
  v620 = STACK[0x400];
  v621 = LODWORD(STACK[0x400]) ^ LODWORD(STACK[0x410]);
  v622 = v621 ^ v617 ^ LODWORD(STACK[0x298]);
  v623 = v421 & 0x6749B044 ^ 0xCE936089;
  LODWORD(STACK[0x2E8]) = v623;
  v624 = v421 & 0x6349B044 ^ 0xC2016000 ^ v623 & (v443 ^ 0xE349F048);
  LODWORD(STACK[0x488]) = v624;
  v625 = (v421 & 0x2493000 ^ 0xA032000 ^ (v424 ^ 0xE590C0CD) & v623) << v605;
  v626 = v470;
  LODWORD(STACK[0x2DC]) = v625;
  LODWORD(STACK[0x2E0]) = v621;
  v627 = v621 ^ (v625 + (v624 >> v470)) ^ LODWORD(STACK[0x2A8]);
  v628 = v414 & 0x26408004 ^ 0x6100089 ^ (v414 & 0x6749B044 ^ 0xCE936089) & (v443 ^ 0x26508081);
  LODWORD(STACK[0x338]) = v628;
  v629 = v602;
  v630 = v621 ^ ((v628 >> v602) + v618) ^ LODWORD(STACK[0x2AC]);
  v631 = v421 & 0x24080044 ^ 0x8C004000 ^ (HIDWORD(a45) ^ 0xAC084044) & v623;
  LODWORD(STACK[0x2D8]) = v631;
  v632 = v619 ^ (((v421 & 0x2493000 ^ 0xA032000 ^ (v424 ^ 0xE590C0CD) & v623) << v605) + (v631 >> v470)) ^ LODWORD(STACK[0x2C0]);
  v633 = v603;
  v634 = v414 & 0x61011275 ^ 0xC20224EB;
  v635 = v414 & 0x61000224 ^ 0x42000020 ^ v634 & (v443 ^ 0x63000228);
  LODWORD(STACK[0x430]) = v635;
  v636 = (v635 >> v470) + ((v634 & (v603 ^ 0x410224E1) ^ (v414 & 0x20011214 | 0x8200000A)) << v605);
  v637 = v622 ^ v612;
  v638 = *(v296 + 4 * (v622 ^ v612));
  v639 = STACK[0x4B0];
  v640 = LODWORD(STACK[0x304]) ^ LODWORD(STACK[0x4B0]);
  LODWORD(STACK[0x408]) = v640 ^ v636;
  v641 = v627 ^ v610;
  v642 = v640 ^ v636 ^ LODWORD(STACK[0x2F0]) ^ __ROR4__(v638, 16) ^ *(v296 + 4 * BYTE2(v641));
  v643 = v630 ^ v613;
  v644 = v611 ^ v632 ^ v620;
  v645 = v642 ^ __ROR4__(*(v296 + 4 * ((v630 ^ v613) >> 8)), 8) ^ __ROR4__(*(v296 + 4 * HIBYTE(v644)), 24);
  v646 = v421 & 0x61011275 ^ 0xC20224EB;
  v647 = v421 & 0x60000200 ^ 0xC2002080 ^ (HIDWORD(a45) ^ 0xE2002280) & v646;
  LODWORD(STACK[0x304]) = v647;
  v648 = *(v296 + 4 * BYTE2(v643));
  v649 = (v421 & 0x40011260 ^ 0x400000E8 ^ (v424 ^ 0xA3022417) & v646) << v418;
  LODWORD(STACK[0x2D0]) = v649;
  LODWORD(STACK[0x2F0]) = v647 >> v629;
  v650 = v640 ^ (v647 >> v629) ^ v649 ^ LODWORD(STACK[0x2F8]) ^ v648 ^ __ROR4__(*(v296 + 4 * HIBYTE(v641)), 24) ^ __ROR4__(*(v296 + 4 * BYTE1(v637)), 8) ^ __ROR4__(*(v296 + 4 * (v611 ^ v632 ^ v620)), 16);
  v651 = v633;
  v652 = v421 & 0x60010274 ^ 0x42022068 ^ (v633 ^ 0x81001483) & v646;
  LODWORD(STACK[0x2F8]) = v652;
  v653 = v421 & 0x11034 ^ 0x2022420 ^ v646 & (v443 ^ 0x2033438);
  v654 = v414 & 0x41001071 ^ 0xC0022063 ^ (v424 ^ 0x2201068C) & v634;
  LODWORD(STACK[0x2C0]) = v654;
  v655 = v414 & 0x61010060 ^ 0xC20004E8 ^ (HIDWORD(a45) ^ 0xE30104E8) & v634;
  v656 = v640 ^ ((v653 >> v470) | (v652 << v418)) ^ LODWORD(STACK[0x308]) ^ *(v296 + 4 * BYTE2(v644)) ^ __ROR4__(*(v296 + 4 * v643), 16) ^ __ROR4__(*(v296 + 4 * HIBYTE(v637)), 24) ^ __ROR4__(*(v296 + 4 * BYTE1(v641)), 8);
  v657 = v640 ^ ((v654 << v605) + (v655 >> v629)) ^ LODWORD(STACK[0x30C]) ^ *(v296 + 4 * BYTE2(v637)) ^ __ROR4__(*(v296 + 4 * BYTE1(v644)), 8) ^ __ROR4__(*(v296 + 4 * HIBYTE(v643)), 24) ^ __ROR4__(*(v296 + 4 * v641), 16);
  v658 = v620 + 1706374958;
  if (v620 >= 0x9A4AC8D2)
  {
    v659 = -1706374958;
  }

  else
  {
    v658 = v620;
    v659 = 0;
  }

  if (v658)
  {
    v660 = v620;
  }

  else
  {
    v660 = v659;
  }

  LODWORD(STACK[0x298]) = v660;
  v661 = v424;
  v662 = v414 & 0x3A14EA7 ^ 0x7429D4E;
  v663 = v662;
  v664 = v414 & 0x1804AA1 ^ 0x1009900 ^ (v424 ^ 0x663044E) & v662;
  LODWORD(STACK[0x2AC]) = v664;
  v665 = v414 & 0x20046A6 ^ 0x6021546 ^ (HIDWORD(a45) ^ 0x60257E6) & v662;
  LODWORD(STACK[0x400]) = v665;
  v666 = v651;
  v667 = v421 & 0x3A14EA7 ^ 0x7429D4E;
  LODWORD(STACK[0x30C]) = v667;
  v668 = v421 & 0x1200221 ^ 0x5029140 ^ (v651 ^ 0x2C14C8E) & v667;
  v669 = LODWORD(STACK[0x480]) ^ v639;
  v670 = v669 ^ (v665 >> v629);
  LODWORD(STACK[0x308]) = v670;
  v671 = v670 ^ (v664 << v605) ^ LODWORD(STACK[0x310]) ^ *(v296 + 4 * BYTE2(v650)) ^ __ROR4__(*(v296 + 4 * BYTE1(v657)), 8) ^ __ROR4__(*(v296 + 4 * v656), 16) ^ __ROR4__(*(v296 + 4 * HIBYTE(v645)), 24);
  v672 = v421 & 0x2200800 ^ 0x6409848 ^ (v421 & 0x3A14EA7 ^ 0x7429D4E) & (v443 ^ 0x6609844);
  LODWORD(STACK[0x310]) = v672 >> v626;
  v673 = v669 ^ (v668 << v418) ^ (v672 >> v626) ^ LODWORD(STACK[0x318]) ^ *(v296 + 4 * BYTE2(v657)) ^ __ROR4__(*(v296 + 4 * HIBYTE(v650)), 24) ^ __ROR4__(*(v296 + 4 * BYTE1(v656)), 8) ^ __ROR4__(*(v296 + 4 * v645), 16);
  LODWORD(STACK[0x2A0]) = v663;
  v674 = v626;
  v675 = v669 ^ ((v414 & 0x2810402 ^ 0x2400442 ^ (HIDWORD(a45) ^ 0x2C10442) & v663) >> v626) ^ ((v414 & 0x2214801 ^ 0x2008800 ^ (v661 ^ 0x5C217EE) & v663) << v418) ^ LODWORD(STACK[0x31C]) ^ *(v296 + 4 * BYTE2(v656)) ^ __ROR4__(*(v296 + 4 * BYTE1(v645)), 8) ^ __ROR4__(*(v296 + 4 * v650), 16) ^ __ROR4__(*(v296 + 4 * HIBYTE(v657)), 24);
  v676 = v668 << v605;
  LODWORD(STACK[0x2A8]) = v676;
  v677 = v669 ^ (v672 >> v629);
  LODWORD(STACK[0x31C]) = v677;
  v678 = v677 ^ v676 ^ LODWORD(STACK[0x328]) ^ __ROR4__(*(v296 + 4 * BYTE1(v650)), 8) ^ *(v296 + 4 * BYTE2(v645)) ^ __ROR4__(*(v296 + 4 * v657), 16);
  v680 = __ROR4__(*(v296 + 4 * HIBYTE(v656)), 24);
  v679 = v678 ^ v680;
  v681 = v421 & 0x22B55C3C ^ 0x456AB878;
  v682 = v421 & 0x2021101C ^ 0x4209018 ^ v681 & (v443 ^ 0x24219010);
  LODWORD(STACK[0x328]) = v682;
  v683 = v421 & 0x294002C ^ 0x41088028 ^ (v661 ^ 0x24637C50) & v681;
  LODWORD(STACK[0x318]) = v683;
  v684 = (v683 << v605) + (v682 >> v629);
  v685 = *(v296 + 4 * ((v678 ^ v680) >> 8));
  v686 = LODWORD(STACK[0x320]) ^ LODWORD(STACK[0x3F8]);
  v687 = *(v296 + 4 * HIBYTE(v673));
  v688 = v686 ^ v684;
  v689 = v686;
  LODWORD(STACK[0x29C]) = v686;
  v690 = v688 ^ LODWORD(STACK[0x344]) ^ __ROR4__(v685, 8) ^ __ROR4__(v687, 24) ^ *(v296 + 4 * BYTE2(v675)) ^ __ROR4__(*(v296 + 4 * v671), 16);
  v691 = v666;
  v692 = v414 & 0x22B55C3C ^ 0x456AB878;
  v693 = v414 & 0x22A00000 ^ 0x42A8040 ^ v692 & (v666 ^ 0x41557C3C);
  LODWORD(STACK[0x344]) = v693;
  v694 = v414 & 0x285002C ^ 0x40408028 ^ (HIDWORD(a45) ^ 0x42C5802C) & v692;
  LODWORD(STACK[0x320]) = v694;
  v695 = (v694 >> v674) ^ (v693 << v418) ^ v689;
  v696 = v695 ^ LODWORD(STACK[0x348]) ^ __ROR4__(*(v296 + 4 * HIBYTE(v671)), 24) ^ __ROR4__(*(v296 + 4 * BYTE1(v675)), 8) ^ *(v296 + 4 * BYTE2(v673)) ^ __ROR4__(*(v296 + 4 * v679), 16);
  v697 = v688 ^ LODWORD(STACK[0x350]) ^ __ROR4__(*(v296 + 4 * BYTE1(v673)), 8) ^ __ROR4__(*(v296 + 4 * HIBYTE(v679)), 24) ^ __ROR4__(*(v296 + 4 * v675), 16) ^ *(v296 + 4 * BYTE2(v671));
  v698 = v695 ^ LODWORD(STACK[0x354]) ^ *(v296 + 4 * BYTE2(v679)) ^ __ROR4__(*(v296 + 4 * v673), 16) ^ __ROR4__(*(v296 + 4 * HIBYTE(v675)), 24);
  v699 = STACK[0x468];
  v700 = *(STACK[0x468] + 4 * v690);
  HIDWORD(v702) = v700 ^ 0x1F;
  LODWORD(v702) = v700 ^ 0x986A1B00;
  v701 = v702 >> 8;
  LODWORD(v702) = __ROR4__(*(v296 + 4 * BYTE1(v671)), 8);
  v703 = v698 ^ v702;
  v704 = *(STACK[0x468] + 4 * (v698 ^ v702));
  HIDWORD(v702) = v704 ^ 0x1F;
  LODWORD(v702) = v704 ^ 0x986A1B00;
  v705 = v702 >> 8;
  v706 = *(STACK[0x468] + 4 * v697);
  HIDWORD(v702) = v706 ^ 0x1F;
  LODWORD(v702) = v706 ^ 0x986A1B00;
  v707 = v702 >> 8;
  v708 = *(STACK[0x468] + 4 * BYTE2(v696));
  HIDWORD(v702) = v708 ^ 0x6A1B1F;
  LODWORD(v702) = v708 ^ 0x98000000;
  v709 = (v702 >> 24) ^ v705;
  v710 = *(STACK[0x468] + 4 * HIBYTE(v696));
  HIDWORD(v702) = v710 ^ 0x1B1F;
  LODWORD(v702) = v710 ^ 0x986A0000;
  v711 = (v702 >> 16) ^ v707;
  v712 = *(STACK[0x468] + 4 * HIBYTE(v697));
  HIDWORD(v702) = v712 ^ 0x1B1F;
  LODWORD(v702) = v712 ^ 0x986A0000;
  v713 = v709 ^ (v702 >> 16);
  v714 = *(STACK[0x468] + 4 * HIBYTE(v703));
  HIDWORD(v702) = v714 ^ 0x1B1F;
  LODWORD(v702) = v714 ^ 0x986A0000;
  v715 = ((v702 >> 16) ^ v701) - 1737876705 - ((2 * ((v702 >> 16) ^ v701)) & 0x30D4363E);
  v716 = *(STACK[0x468] + 4 * BYTE2(v703));
  HIDWORD(v702) = v716 ^ 0x6A1B1F;
  LODWORD(v702) = v716 ^ 0x98000000;
  v717 = v702 >> 24;
  v718 = *(STACK[0x468] + 4 * BYTE2(v690));
  HIDWORD(v702) = v718 ^ 0x6A1B1F;
  LODWORD(v702) = v718 ^ 0x98000000;
  v719 = (v711 ^ (v702 >> 24)) - 1737876705 - ((2 * (v711 ^ (v702 >> 24))) & 0x30D4363E);
  v720 = *(STACK[0x468] + 4 * v696);
  HIDWORD(v702) = v720 ^ 0x1F;
  LODWORD(v702) = v720 ^ 0x986A1B00;
  v721 = (v702 >> 8) ^ v717;
  v722 = *(STACK[0x468] + 4 * HIBYTE(v690));
  HIDWORD(v702) = v722 ^ 0x1B1F;
  LODWORD(v702) = v722 ^ 0x986A0000;
  v723 = *(STACK[0x468] + 4 * BYTE1(v697)) ^ LODWORD(STACK[0x358]) ^ ((v721 ^ (v702 >> 16)) - 1737876705 - ((2 * (v721 ^ (v702 >> 16))) & 0x30D4363E));
  v724 = STACK[0x448];
  v725 = (v723 - ((2 * v723) & 0x1AC1B02) - 2133455487) ^ LODWORD(STACK[0x448]);
  v726 = (v725 - ((2 * v725) & 0x1778FF0C) - 1950580858) ^ LODWORD(STACK[0x418]);
  v727 = STACK[0x418];
  LODWORD(STACK[0x4A0]) = v726 - ((2 * v726) & 0x184CD4D4);
  v728 = *(v699 + 4 * BYTE2(v697));
  v729 = *(v699 + 4 * BYTE1(v703)) ^ LODWORD(STACK[0x35C]) ^ v719;
  HIDWORD(v702) = v728 ^ 0x6A1B1F;
  LODWORD(v702) = v728 ^ 0x98000000;
  v730 = *(v699 + 4 * BYTE1(v690)) ^ LODWORD(STACK[0x360]) ^ (v713 - 1737876705 - ((2 * v713) & 0x30D4363E));
  v731 = *(v699 + 4 * BYTE1(v696)) ^ LODWORD(STACK[0x368]) ^ (v702 >> 24) ^ v715;
  v732 = (v731 - ((2 * v731) & 0x1778FF0C) - 1950580858) ^ v727;
  v733 = (v732 - ((2 * v732) & 0x1AC1B02) - 2133455487) ^ v724;
  LODWORD(STACK[0x3F8]) = v733 - ((2 * v733) & 0x184CD4D4);
  v734 = (v729 - ((2 * v729) & 0x1AC1B02) - 2133455487) ^ v724;
  v735 = (v730 - ((2 * v730) & 0x1AC1B02) - 2133455487) ^ v724;
  v736 = (v734 - ((2 * v734) & 0x1778FF0C) - 1950580858) ^ v727;
  LODWORD(STACK[0x368]) = v736 - ((2 * v736) & 0x184CD4D4);
  v737 = (v735 - ((2 * v735) & 0x1778FF0C) - 1950580858) ^ v727;
  LODWORD(STACK[0x360]) = v737 - ((2 * v737) & 0x184CD4D4);
  v738 = LODWORD(STACK[0x2E0]) ^ ((LODWORD(STACK[0x338]) >> v674) + LODWORD(STACK[0x330])) ^ LODWORD(STACK[0x370]) ^ LODWORD(STACK[0x2A4]);
  v739 = STACK[0x4C8];
  v740 = LODWORD(STACK[0x2C4]) ^ LODWORD(STACK[0x410]) ^ (LODWORD(STACK[0x2D8]) >> v739) ^ LODWORD(STACK[0x2DC]) ^ LODWORD(STACK[0x298]) ^ LODWORD(STACK[0x378]);
  v741 = v691;
  LOBYTE(v727) = STACK[0x490];
  LOBYTE(v722) = v674;
  v742 = LODWORD(STACK[0x2E0]) ^ (LODWORD(STACK[0x498]) >> v674) ^ ((v414 & 0x62018044 ^ 0x4A110000 ^ (LODWORD(STACK[0x4A8]) ^ 0x85CA7089) & STACK[0x470]) << v727) ^ LODWORD(STACK[0x388]) ^ LODWORD(STACK[0x2C8]);
  v743 = *(v296 + 4 * (LOBYTE(STACK[0x2C4]) ^ LOBYTE(STACK[0x410]) ^ (LODWORD(STACK[0x2D8]) >> v739) ^ LOBYTE(STACK[0x2DC]) ^ LOBYTE(STACK[0x298]) ^ LOBYTE(STACK[0x378])));
  v744 = (v743 << (STACK[0x4D0] & 0x10) << (STACK[0x4D0] & 0x10 ^ 0x10)) + HIWORD(v743);
  v745 = LODWORD(STACK[0x2E0]) ^ (LODWORD(STACK[0x488]) >> v739) ^ ((v421 & 0x40408040 ^ 0x40000009 ^ (v691 ^ 0xAF9B7084) & STACK[0x2E8]) << v418) ^ LODWORD(STACK[0x380]) ^ LODWORD(STACK[0x2D4]);
  v746 = v640 ^ (LODWORD(STACK[0x2D0]) + LODWORD(STACK[0x2F0])) ^ LODWORD(STACK[0x390]) ^ __ROR4__(*(v296 + 4 * ((LOWORD(STACK[0x2E0]) ^ (LODWORD(STACK[0x498]) >> v674) ^ ((v414 & 0x8044 ^ (LOWORD(STACK[0x4A8]) ^ 0x7089) & STACK[0x470]) << v727) ^ LOWORD(STACK[0x388]) ^ LOWORD(STACK[0x2C8])) >> 8)), 8) ^ __ROR4__(*(v296 + 4 * HIBYTE(v740)), 24) ^ *(v296 + 4 * BYTE2(v738)) ^ __ROR4__(*(v296 + 4 * (LOBYTE(STACK[0x2E0]) ^ (LODWORD(STACK[0x488]) >> v739) ^ ((v421 & 0x40 ^ 9 ^ (v691 ^ 0x84) & STACK[0x2E8]) << v418) ^ LOBYTE(STACK[0x380]) ^ LOBYTE(STACK[0x2D4]))), 16);
  v747 = LODWORD(STACK[0x408]) ^ LODWORD(STACK[0x398]) ^ *(v296 + 4 * BYTE2(v740)) ^ __ROR4__(*(v296 + 4 * (LOBYTE(STACK[0x2E0]) ^ (LODWORD(STACK[0x498]) >> v674) ^ ((v414 & 0x44 ^ (LOBYTE(STACK[0x4A8]) ^ 0x89) & STACK[0x470]) << v727) ^ LOBYTE(STACK[0x388]) ^ LOBYTE(STACK[0x2C8]))), 16) ^ __ROR4__(*(v296 + 4 * HIBYTE(v745)), 24) ^ __ROR4__(*(v296 + 4 * BYTE1(v738)), 8);
  v748 = v640 ^ (LODWORD(STACK[0x430]) >> v739) ^ (LODWORD(STACK[0x2C0]) << v418) ^ LODWORD(STACK[0x3A0]) ^ __ROR4__(*(v296 + 4 * (LOBYTE(STACK[0x2E0]) ^ ((LODWORD(STACK[0x338]) >> v674) + LOBYTE(STACK[0x330])) ^ LOBYTE(STACK[0x370]) ^ LOBYTE(STACK[0x2A4]))), 16) ^ __ROR4__(*(v296 + 4 * BYTE1(v740)), 8) ^ __ROR4__(*(v296 + 4 * HIBYTE(v742)), 24) ^ *(v296 + 4 * BYTE2(v745));
  v749 = v640 ^ ((LODWORD(STACK[0x304]) >> v674) | (LODWORD(STACK[0x2F8]) << v727)) ^ LODWORD(STACK[0x3A8]) ^ __ROR4__(*(v296 + 4 * HIBYTE(v738)), 24) ^ *(v296 + 4 * BYTE2(v742));
  LODWORD(v702) = __ROR4__(*(v296 + 4 * BYTE1(v745)), 8);
  v750 = v749 ^ v702 ^ v744;
  v751 = *(v296 + 4 * BYTE2(v747)) ^ LODWORD(STACK[0x3B0]) ^ __ROR4__(*(v296 + 4 * (v749 ^ v702 ^ v744)), 16) ^ __ROR4__(*(v296 + 4 * BYTE1(v746)), 8) ^ __ROR4__(*(v296 + 4 * HIBYTE(v748)), 24);
  v752 = LODWORD(STACK[0x308]) ^ (LODWORD(STACK[0x2AC]) << v418) ^ LODWORD(STACK[0x3B4]) ^ __ROR4__(*(v296 + 4 * HIBYTE(v747)), 24) ^ *(v296 + 4 * BYTE2(v746)) ^ __ROR4__(*(v296 + 4 * BYTE1(v750)), 8) ^ __ROR4__(*(v296 + 4 * v748), 16);
  v753 = LODWORD(STACK[0x480]) ^ LODWORD(STACK[0x2A8]) ^ LODWORD(STACK[0x310]) ^ (v751 + LODWORD(STACK[0x4B0]) - 2 * (v751 & STACK[0x4B0]));
  v754 = v669 ^ ((LODWORD(STACK[0x400]) >> v674) + ((v414 & 0x12046A2 ^ 0x500854A ^ STACK[0x2A0] & (v741 ^ 0x2C31805)) << v418)) ^ LODWORD(STACK[0x3B8]) ^ __ROR4__(*(v296 + 4 * HIBYTE(v746)), 24) ^ __ROR4__(*(v296 + 4 * v747), 16) ^ __ROR4__(*(v296 + 4 * BYTE1(v748)), 8) ^ *(v296 + 4 * BYTE2(v750));
  v755 = LODWORD(STACK[0x31C]) ^ ((v421 & 0x2A00283 ^ 0x602004A ^ (LODWORD(STACK[0x4A8]) ^ 0x141DD24) & STACK[0x30C]) << v727) ^ LODWORD(STACK[0x3C4]) ^ *(v296 + 4 * BYTE2(v748)) ^ __ROR4__(*(v296 + 4 * BYTE1(v747)), 8) ^ __ROR4__(*(v296 + 4 * HIBYTE(v750)), 24) ^ __ROR4__(*(v296 + 4 * v746), 16);
  v756 = *(v296 + 4 * v755);
  v757 = *(v296 + 4 * HIBYTE(v755));
  v758 = *(v296 + 4 * v754);
  v759 = *(v296 + 4 * BYTE1(v755));
  v760 = *(v296 + 4 * BYTE2(v753));
  v761 = *(v296 + 4 * HIBYTE(v752));
  v762 = *(v296 + 4 * BYTE1(v752));
  v763 = *(v296 + 4 * BYTE1(v753));
  v764 = *(v296 + 4 * BYTE2(v755));
  v765 = *(v296 + 4 * BYTE1(v754));
  v766 = *(v296 + 4 * HIBYTE(v753));
  v767 = *(v296 + 4 * HIBYTE(v754));
  v768 = *(v296 + 4 * BYTE2(v754));
  v769 = *(v296 + 4 * v753);
  v770 = ((LODWORD(STACK[0x2A4]) ^ (-1346079365 - LODWORD(STACK[0x2C4]))) + LODWORD(STACK[0x2C8]) + 1636997906) ^ LODWORD(STACK[0x2D4]);
  v771 = LODWORD(STACK[0x318]) << v589;
  v772 = LODWORD(STACK[0x328]) >> v722;
  v773 = LODWORD(STACK[0x344]) << v727;
  v774 = LODWORD(STACK[0x320]) >> v739;
  v775 = LODWORD(STACK[0x29C]) ^ v773 ^ v774 ^ LODWORD(STACK[0x3C8]) ^ __ROR4__(v763, 8) ^ __ROR4__(*(v296 + 4 * v752), 16) ^ v764 ^ __ROR4__(v767, 24);
  v776 = LODWORD(STACK[0x29C]) ^ (v771 + v772) ^ LODWORD(STACK[0x3CC]) ^ __ROR4__(v756, 16) ^ *(v296 + 4 * BYTE2(v752)) ^ __ROR4__(v765, 8) ^ __ROR4__(v766, 24);
  v777 = LODWORD(STACK[0x29C]) ^ v772 ^ v771 ^ LODWORD(STACK[0x3D0]) ^ __ROR4__(v759, 8) ^ __ROR4__(v761, 24);
  v778 = LODWORD(STACK[0x29C]) ^ (v774 | v773) ^ LODWORD(STACK[0x3D4]) ^ __ROR4__(v757, 24) ^ __ROR4__(v758, 16) ^ v760 ^ __ROR4__(v762, 8);
  v779 = *(v699 + 4 * BYTE2(v776));
  HIDWORD(v702) = v779 ^ 0x6A1B1F;
  LODWORD(v702) = v779 ^ 0x98000000;
  v780 = v702 >> 24;
  v781 = *(v699 + 4 * HIBYTE(v778));
  HIDWORD(v702) = v781 ^ 0x1B1F;
  LODWORD(v702) = v781 ^ 0x986A0000;
  v782 = v702 >> 16;
  v783 = *(v699 + 4 * HIBYTE(v776));
  v784 = v777 ^ v768;
  HIDWORD(v702) = v783 ^ 0x1B1F;
  LODWORD(v702) = v783 ^ 0x986A0000;
  v785 = v702 >> 16;
  v786 = *(v699 + 4 * v775);
  HIDWORD(v702) = v786 ^ 0x1F;
  LODWORD(v702) = v786 ^ 0x986A1B00;
  v787 = v702 >> 8;
  v788 = v784 ^ __ROR4__(v769, 16);
  v789 = *(v699 + 4 * BYTE2(v778));
  v790 = v780 - 1737876705 - ((2 * v780) & 0x30D4363E);
  HIDWORD(v702) = v789 ^ 0x6A1B1F;
  LODWORD(v702) = v789 ^ 0x98000000;
  v791 = v702 >> 24;
  v792 = *(v699 + 4 * v788);
  HIDWORD(v702) = v792 ^ 0x1F;
  LODWORD(v702) = v792 ^ 0x986A1B00;
  v793 = (v702 >> 8) ^ v791;
  v794 = *(v699 + 4 * BYTE2(v788));
  HIDWORD(v702) = v794 ^ 0x6A1B1F;
  LODWORD(v702) = v794 ^ 0x98000000;
  v795 = v702 >> 24;
  v796 = *(v699 + 4 * HIBYTE(v788));
  HIDWORD(v702) = v796 ^ 0x1B1F;
  LODWORD(v702) = v796 ^ 0x986A0000;
  v797 = (v702 >> 16) - 1737876705 - ((2 * (v702 >> 16)) & 0x30D4363E);
  v798 = *(v699 + 4 * v776);
  HIDWORD(v702) = v798 ^ 0x1F;
  LODWORD(v702) = v798 ^ 0x986A1B00;
  v799 = v702 >> 8;
  v800 = *(v699 + 4 * BYTE2(v775));
  HIDWORD(v702) = v800 ^ 0x6A1B1F;
  LODWORD(v702) = v800 ^ 0x98000000;
  v801 = v702 >> 24;
  v802 = *(v699 + 4 * v778);
  HIDWORD(v702) = v802 ^ 0x1F;
  LODWORD(v702) = v802 ^ 0x986A1B00;
  v803 = *(v699 + 4 * HIBYTE(v775));
  v804 = v770 ^ LODWORD(STACK[0x3DC]) ^ *(v699 + 4 * BYTE1(v778)) ^ v799 ^ v801 ^ v797;
  v805 = v770 ^ LODWORD(STACK[0x3D8]) ^ *(v699 + 4 * BYTE1(v775)) ^ v795 ^ (v702 >> 8) ^ (v785 - 1737876705 - ((2 * v785) & 0x30D4363E));
  HIDWORD(v702) = v803 ^ 0x1B1F;
  LODWORD(v702) = v803 ^ 0x986A0000;
  v806 = v770 ^ LODWORD(STACK[0x3E0]) ^ *(v699 + 4 * BYTE1(v776)) ^ (v702 >> 16) ^ (v793 - 1737876705 - ((2 * v793) & 0x30D4363E));
  v807 = v770 ^ LODWORD(STACK[0x3E4]) ^ *(v699 + 4 * BYTE1(v788)) ^ v782 ^ v787 ^ v790;
  v808 = (v805 - ((2 * v805) & 0x1778FF0C) - 1950580858) ^ LODWORD(STACK[0x418]);
  v809 = (v808 - ((2 * v808) & 0x184CD4D4) - 1943639446) ^ LODWORD(STACK[0x438]);
  v810 = (v806 - ((2 * v806) & 0x1AC1B02) - 2133455487) ^ LODWORD(STACK[0x448]);
  v811 = (v807 - ((2 * v807) & 0x1AC1B02) - 2133455487) ^ LODWORD(STACK[0x448]);
  v812 = (v810 - ((2 * v810) & 0x1778FF0C) - 1950580858) ^ LODWORD(STACK[0x418]);
  v813 = v812 - ((2 * v812) & 0x184CD4D4);
  v814 = (v804 - ((2 * v804) & 0x1AC1B02) - 2133455487) ^ LODWORD(STACK[0x448]);
  v815 = (v811 - ((2 * v811) & 0x1778FF0C) - 1950580858) ^ LODWORD(STACK[0x418]);
  v816 = (v814 - ((2 * v814) & 0x1778FF0C) - 1950580858) ^ LODWORD(STACK[0x418]);
  v817 = v815 - ((2 * v815) & 0x184CD4D4);
  v818 = v809 - ((2 * v809) & 0x1AC1B02);
  v819 = v816 - ((2 * v816) & 0x184CD4D4);
  v820 = STACK[0x440];
  v821 = LODWORD(STACK[0x440]) ^ 0x6BDA2021;
  v822 = v821 ^ (LODWORD(STACK[0x4A0]) - 1943639446);
  v823 = v821 ^ (LODWORD(STACK[0x368]) - 1943639446);
  v824 = v821 ^ (LODWORD(STACK[0x3F8]) - 1943639446);
  v825 = v821 ^ (LODWORD(STACK[0x360]) - 1943639446);
  v826 = STACK[0x3F4];
  if (STACK[0x3F4])
  {
    v827 = v821 ^ (LODWORD(STACK[0x368]) - 1943639446);
  }

  else
  {
    v827 = v821 ^ (LODWORD(STACK[0x4A0]) - 1943639446);
  }

  if (v826)
  {
    v823 = v825;
  }

  else
  {
    v822 = v824;
    v824 = v825;
  }

  v828 = LODWORD(STACK[0x3E8]) ^ 0x34213D3A ^ (v818 - 2133455487);
  v829 = v820 ^ 0xD2195966 ^ (v819 - 1943639446);
  v830 = v820 ^ 0xD2195966 ^ (v813 - 1943639446);
  v831 = v820 ^ 0xD2195966 ^ (v817 - 1943639446);
  if (v826)
  {
    v832 = v829;
  }

  else
  {
    v832 = v830;
  }

  if (v826)
  {
    v829 = v828;
  }

  else
  {
    v830 = v831;
  }

  if ((v826 & 1) == 0)
  {
    v831 = v828;
  }

  if ((v826 & 2) != 0)
  {
    v833 = v827;
  }

  else
  {
    v833 = v824;
  }

  if ((v826 & 2) != 0)
  {
    v834 = v823;
  }

  else
  {
    v824 = v827;
    v834 = v822;
  }

  if ((v826 & 2) != 0)
  {
    v835 = v831;
  }

  else
  {
    v822 = v823;
    v835 = v832;
  }

  if ((v826 & 2) != 0)
  {
    v831 = v832;
    v836 = v829;
  }

  else
  {
    v836 = v830;
  }

  if ((v826 & 2) != 0)
  {
    v829 = v830;
  }

  v837 = v822 ^ v770 ^ v834 ^ v836 ^ 0xB9C37947;
  v838 = (v837 ^ v829) - (v770 ^ 0xB9C37947);
  v839 = v824 + 1369154397 * v838;
  v840 = v833 ^ v770 ^ v835 ^ 0xB9C37947 ^ v839;
  v841 = v840 + 802070607 * v838;
  v842 = (v834 + 782476715 * ((v770 ^ 0x463C86B8) + (v840 ^ v831)) + 782476715) ^ v831;
  v843 = v842 ^ v841;
  v844 = v839 ^ v770 ^ 0x6A163D01;
  v845 = v836 ^ v835 ^ v844 ^ v842;
  v846 = (v837 ^ (-104105813 * (v836 ^ 0xD3D54446)) ^ (-104105813 * (v843 ^ 0xD3D54446))) + 1086831723 * (v845 - (v831 ^ v770 ^ 0x6A163D01));
  v847 = v843 ^ v770 ^ 0x6A163D01;
  v848 = v770 & 0x1000000;
  v849 = v844 ^ v829 ^ v846;
  v850 = v835 ^ 0xD3D54446;
  if ((v849 & v770 & 0x1000000) != 0)
  {
    v848 = -v848;
  }

  v851 = (v845 ^ 0xD3D54446) + 1472380469 * (v850 + ((v770 ^ 0x6A163D01) & 0xFEFFFFFF ^ 0x2C2ABBB9 ^ (v848 + v849))) + 1472380469;
  v852 = v846 ^ 0x8C8C09DD;
  v853 = STACK[0x258];
  v854 = *(&off_1006B4E30 + LODWORD(STACK[0x258]) - 9599) - 8;
  LODWORD(STACK[0x4D0]) = (((v846 ^ 0x8C8C09DD) >> 8) - (((v846 ^ 0x8C8C09DD) >> 7) & 0x54) - 86) ^ v854[((v846 ^ 0x9DD) >> 8) ^ 0xFLL];
  v855 = *(&off_1006B4E30 + v853 - 9834) - 4;
  v856 = v855[BYTE2(v851) ^ 0xEELL];
  HIDWORD(v857) = v856 ^ 0x48;
  LODWORD(v857) = ~v856 << 24;
  LODWORD(STACK[0x4C8]) = v857 >> 31;
  LODWORD(STACK[0x498]) = ((v844 ^ v829 ^ v846) - ((2 * (v844 ^ v829 ^ v846)) & 0x54) - 86) ^ v854[(v844 ^ v829 ^ v846) ^ 0xE3];
  v858 = v855[BYTE1(v847) ^ 0x80];
  HIDWORD(v857) = v858 ^ 0x48;
  LODWORD(v857) = ~v858 << 24;
  LODWORD(STACK[0x4A0]) = v857 >> 31;
  STACK[0x4B0] = BYTE1(v851) ^ 0xCCLL;
  STACK[0x490] = HIBYTE(v847) ^ 0x15;
  STACK[0x4C0] = v846 ^ 0xE9;
  v859 = v855[HIBYTE(v846) ^ 0x4ALL];
  HIDWORD(v857) = v859 ^ 0x48;
  LODWORD(v857) = ~v859 << 24;
  LODWORD(STACK[0x4A8]) = v857 >> 31;
  STACK[0x488] = BYTE2(v846) ^ 0x9FLL;
  v860 = (((v849 ^ 0xA14EAF09) >> 24) + (~((v849 ^ 0xA14EAF09) >> 23) | 0xFFFFFFAB) - 85) ^ v854[((v849 ^ 0xA14EAF09) >> 24) ^ 0xF8];
  STACK[0x480] = HIBYTE(v851) ^ 0xBCLL;
  v1009 = v855;
  v861 = v855[BYTE2(v849) ^ 0xCDLL];
  HIDWORD(v857) = v861 ^ 0x48;
  LODWORD(v857) = ~v861 << 24;
  v862 = v857 >> 31;
  v863 = (v851 ^ 0x533F347B) % 0x10D;
  LODWORD(STACK[0x468]) = (v851 ^ 0x533F347B) % 0x10F;
  LODWORD(STACK[0x470]) = v852 % 0x10F;
  LODWORD(STACK[0x3F8]) = v863;
  v864 = (v863 | 0x40) - ((2 * v863) & 0x74);
  v865 = *(&off_1006B4E30 + (v853 ^ 0x2770)) - 4;
  v866 = v865[(v843 ^ v770 ^ 1) ^ 0x59];
  LODWORD(STACK[0x3CC]) = ((v847 ^ 0x69472117) % 0x10F) & 0x3F;
  v867 = ((v847 ^ 0x69472117) % 0x10F) & 0x3F ^ (16 * v866) ^ 0x10;
  v868 = (v867 - 2 * (v867 & 0x77 ^ ((v847 ^ 0x69472117) % 0x10F) & 6) - 15) ^ v866;
  v869 = v854[((v849 ^ 0xAF09) >> 8) ^ 3] ^ (((v849 ^ 0xA14EAF09) >> 8) + (~((v849 ^ 0xA14EAF09) >> 7) | 0xFFFFFFAB) - 85);
  v870 = ((v849 ^ 0xA14EAF09) % 0x10D) & 0x3F;
  LODWORD(STACK[0x3B8]) = v870;
  v871 = v869 ^ v870 ^ 0xFFFFFFF2;
  LODWORD(v855) = ((v849 ^ 9) - ((v849 ^ 0xA14EAF09) / 0x101)) & 0x3F;
  LODWORD(STACK[0x3C4]) = v855;
  HIDWORD(v857) = v855 ^ 0x44 ^ v860;
  LODWORD(v857) = v862 << 24;
  v872 = v857 >> 31;
  v873 = ((v849 ^ 0xA14EAF09) % 0x107) & 0x3F;
  LODWORD(STACK[0x3B4]) = v873;
  HIDWORD(v857) = v873 ^ v862;
  LODWORD(v857) = v871 << 24;
  v874 = (v857 >> 31);
  v875 = STACK[0x498];
  HIDWORD(v857) = v871;
  LODWORD(v857) = LODWORD(STACK[0x498]) << 24;
  v876 = (v857 >> 31);
  v877 = *(&off_1006B4E30 + v853 - 8966);
  v878 = *(v877 + STACK[0x490]);
  v1008 = v865;
  v879 = v865[STACK[0x488]];
  LODWORD(STACK[0x3D4]) = (v852 % 0x107) & 0x3F;
  v880 = (v852 % 0x107) & 0x3F ^ (16 * v879) ^ 0x10;
  LODWORD(v865) = ((v849 ^ 0xA14EAF09) % 0x10F) & 0x3F;
  LODWORD(STACK[0x3E8]) = v865;
  LODWORD(STACK[0x3F4]) = ((v847 ^ 0x69472117) % 0x101) & 0x3F;
  v881 = ((((v847 ^ 0x69472117) % 0x101) & 0x3F) - ((2 * ((v847 ^ 0x69472117) % 0x101)) & 0x74) + 58) ^ v878;
  HIDWORD(v857) = v875 ^ v865;
  LODWORD(v857) = ~v878 << 24;
  v882 = (v857 >> 31);
  v883 = *(v877 + (BYTE2(v847) ^ 0x3CLL)) ^ 0xFFFFFFD8;
  LODWORD(STACK[0x3E4]) = ((v847 ^ 0x69472117) % 0x107) & 0x3F;
  v884 = v883 ^ ((((v847 ^ 0x69472117) % 0x107) & 0x3F) - ((2 * ((v847 ^ 0x69472117) % 0x107)) & 0x74) - 70);
  HIDWORD(v857) = v881;
  LODWORD(v857) = v884 << 24;
  v885 = (v857 >> 31);
  LODWORD(v865) = STACK[0x4A0];
  HIDWORD(v857) = v884;
  LODWORD(v857) = LODWORD(STACK[0x4A0]) << 24;
  v886 = (v857 >> 31);
  v887 = ((v847 ^ 0x69472117) % 0x10D) & 0x3F;
  LODWORD(STACK[0x3A8]) = v887;
  HIDWORD(v857) = v887 ^ v865;
  LODWORD(v857) = v868 << 24;
  v888 = (v857 >> 31);
  v889 = *(v877 + STACK[0x480]);
  LODWORD(STACK[0x3C8]) = ((v851 ^ 0x533F347B) % 0x101) & 0x3F;
  v890 = STACK[0x4C8];
  HIDWORD(v857) = ((((v851 ^ 0x533F347B) % 0x101) & 0x3F) - ((2 * ((v851 ^ 0x533F347B) % 0x101)) & 0x74) + 58) ^ v889;
  LODWORD(v857) = LODWORD(STACK[0x4C8]) << 24;
  v891 = (v857 >> 31);
  HIDWORD(v857) = v868;
  LODWORD(v857) = ~v889 << 24;
  v892 = (v857 >> 31);
  v1007 = v877;
  LODWORD(v865) = *(v877 + STACK[0x4B0]);
  LODWORD(v855) = ((v851 ^ 0x533F347B) % 0x107) & 0x3F;
  LODWORD(STACK[0x3B0]) = v855;
  LODWORD(v855) = v855 ^ v890;
  v893 = v872;
  v894 = (v864 + 122) ^ v865;
  HIDWORD(v857) = v855;
  LODWORD(v857) = ~v865 << 24;
  v895 = (v857 >> 31);
  LODWORD(v865) = v854[v851 ^ 0x78] ^ (v851 - ((2 * v851) & 0x54) - 86) ^ 0xFFFFFF89;
  HIDWORD(v857) = v894;
  LODWORD(v857) = v865 << 24;
  v896 = (v857 >> 31);
  LODWORD(v855) = STACK[0x468] & 0x3F;
  LODWORD(STACK[0x3E0]) = v855;
  v897 = STACK[0x4A8];
  HIDWORD(v857) = v865 ^ v855;
  LODWORD(v857) = LODWORD(STACK[0x4A8]) << 24;
  v898 = v857 >> 31;
  v899 = v879 ^ 0xFFFFFFDB ^ (v880 - 2 * (v880 & 0x77 ^ (v852 % 0x107) & 6) - 15);
  v900 = (v852 - (v852 / 0x101)) & 0x3F;
  LODWORD(STACK[0x3D0]) = v900;
  HIDWORD(v857) = v900 ^ v897;
  LODWORD(v857) = v899 << 24;
  v901 = (v857 >> 31);
  LODWORD(v855) = STACK[0x4D0];
  HIDWORD(v857) = v899;
  LODWORD(v857) = LODWORD(STACK[0x4D0]) << 24;
  v902 = v857 >> 31;
  v1010 = v854;
  v903 = v854[STACK[0x4C0]] ^ (v852 - ((2 * v852) & 0x54) - 86) ^ 0xFFFFFF96;
  LODWORD(STACK[0x3DC]) = (v852 % 0x10D) & 0x3F;
  LODWORD(v865) = v855 ^ (v852 % 0x10D) & 0x3F;
  v904 = STACK[0x470];
  LODWORD(STACK[0x3D8]) = STACK[0x470] & 0x3F;
  v905 = v903 ^ v904 & 0x3F;
  HIDWORD(v857) = v865;
  LODWORD(v857) = v905 << 24;
  v906 = v857 >> 31;
  HIDWORD(v857) = v888 ^ 0x3E;
  LODWORD(v857) = v892 << 24;
  v907 = v857 >> 31;
  HIDWORD(v857) = v901 ^ 0x30;
  LODWORD(v857) = v902 << 24;
  v908 = v857 >> 31;
  HIDWORD(v857) = v885 ^ 0x66;
  LODWORD(v857) = v886 << 24;
  v909 = v857 >> 31;
  STACK[0x468] = v885;
  HIDWORD(v857) = v882 ^ 0x52;
  LODWORD(v857) = v885 << 24;
  v910 = v857 >> 31;
  if ((v860 & 0x80u) == 0)
  {
    v911 = -121;
  }

  else
  {
    v911 = 0;
  }

  v912 = v911 ^ (2 * v905);
  HIDWORD(v914) = v906 ^ 0x42;
  LODWORD(v914) = v912 << 24;
  v913 = v914 >> 31;
  STACK[0x460] = v892;
  STACK[0x418] = v891;
  HIDWORD(v914) = v892 ^ 0x46;
  LODWORD(v914) = (v891 ^ 0xFFFFFFF0) << 24;
  v915 = v914 >> 31;
  HIDWORD(v914) = v891 ^ 0xFFFFFFF0;
  LODWORD(v914) = v895 << 24;
  v916 = v914 >> 31;
  STACK[0x438] = v895;
  STACK[0x470] = v896;
  v917 = v896 ^ 0xFFFFFF90;
  HIDWORD(v914) = v917;
  LODWORD(v914) = v898 << 24;
  v918 = v914 >> 31;
  HIDWORD(v914) = v895 ^ 0x50;
  LODWORD(v914) = v917 << 24;
  v919 = v914 >> 31;
  v401 = (v911 & 1) == 0;
  v920 = *(&off_1006B4E30 + (v853 ^ 0x2726));
  v921 = STACK[0x2CC] & 0xF;
  LODWORD(v920) = *(v920 + (v921 ^ 3) - 12);
  HIDWORD(v914) = ~v920;
  LODWORD(v914) = (v920 ^ 0xFFFFFF9F) << 24;
  v922 = (v914 >> 25) ^ 0x2E;
  v923 = v912 - 1;
  if (v401)
  {
    v923 = v912 + 1;
  }

  STACK[0x4C0] = (v893 >> 7) & 0xFFFFFF87 ^ (2 * v912) ^ 0x7A;
  STACK[0x4D0] = v916 ^ 0x7Bu;
  STACK[0x480] = v874;
  HIDWORD(v925) = v874 ^ 0xFFFFFFA2;
  LODWORD(v925) = v876 << 24;
  v924 = v925 >> 31;
  HIDWORD(v925) = v893;
  LODWORD(v925) = (v874 ^ 0xFFFFFFA2) << 24;
  STACK[0x4C8] = (v925 >> 31) ^ 0xFFFFFFE6;
  STACK[0x4B0] = v909 ^ 0x4Au;
  v926 = v919 ^ 0xFFFFFFA7;
  v927 = v913 ^ 0xFFFFFFB0;
  STACK[0x448] = v882;
  STACK[0x430] = v876;
  HIDWORD(v925) = v876;
  LODWORD(v925) = v882 << 24;
  v928 = (v925 >> 31) ^ 0x33;
  v929 = v915 ^ 0x17u;
  v930 = v924 ^ 0xFFFFFFAC;
  HIDWORD(v925) = v902;
  LODWORD(v925) = v906 << 24;
  v931 = (v925 >> 31) ^ 0xFFFFFFED;
  STACK[0x488] = v901;
  HIDWORD(v925) = v898;
  LODWORD(v925) = v901 << 24;
  v932 = (v925 >> 31) ^ 0x71;
  v933 = v918 ^ 0xFFFFFF98;
  v934 = v910 ^ 0xB5;
  STACK[0x498] = v888;
  STACK[0x440] = v886;
  HIDWORD(v925) = v886;
  LODWORD(v925) = v888 << 24;
  v935 = v907 ^ 0xFFFFFFCF;
  v936 = (v925 >> 31) ^ 0x3E;
  LODWORD(v937) = v933;
  switch(v922)
  {
    case 0:
      LODWORD(v937) = v927;
      break;
    case 1:
      v937 = STACK[0x4C8];
      break;
    case 2:
      break;
    case 3:
      LODWORD(v937) = v928;
      break;
    case 4:
      LODWORD(v937) = v936;
      break;
    case 6:
      v937 = STACK[0x4D0];
      break;
    case 7:
      LODWORD(v937) = v908 ^ 0xA;
      break;
    case 8:
      LODWORD(v937) = v931;
      break;
    case 9:
      LODWORD(v937) = v926;
      break;
    case 10:
      LODWORD(v937) = v930;
      break;
    case 11:
      v937 = STACK[0x4C0];
      break;
    case 12:
      v937 = STACK[0x4B0];
      break;
    case 13:
      LODWORD(v937) = v932;
      break;
    case 14:
      LODWORD(v937) = v929;
      break;
    case 15:
      LODWORD(v937) = v910 ^ 0xFFFFFFB5;
      break;
    default:
      LODWORD(v937) = v907 ^ 0xFFFFFFCF;
      break;
  }

  STACK[0x4A0] = v932;
  STACK[0x4A8] = v908 ^ 0xAu;
  v938 = *(*(&off_1006B4E30 + (LODWORD(STACK[0x454]) ^ 0x27EC)) + (v921 ^ 3)) ^ 0xFFFFFFD4;
  v939 = *(*(&off_1006B4E30 + (LODWORD(STACK[0x454]) ^ 0x24DA)) + (v921 ^ 8) - 8);
  HIDWORD(v940) = v939 ^ 0x67;
  LODWORD(v940) = v939 << 24;
  v941 = (v940 >> 31) ^ 0x21;
  v942 = *(*(&off_1006B4E30 + LODWORD(STACK[0x454]) - 9593) + (v921 ^ 6) - 12) - 83;
  STACK[0x490] = v921;
  if (v921 == 8)
  {
    v943 = -16;
  }

  else
  {
    v943 = 112;
  }

  v944 = v943 ^ v938 ^ (v938 >> 2) & 0x3E ^ v942;
  v945 = v937 ^ v944;
  v946 = v941;
  v947 = STACK[0x210];
  v948 = v937 ^ v944;
  switch(v946)
  {
    case 0:
      v948 = v928;
      LOBYTE(v927) = v937 ^ v944;
      break;
    case 1:
      v948 = v928;
      STACK[0x4C8] = v945;
      break;
    case 2:
      v948 = v928;
      v933 = v937 ^ v944;
      break;
    case 3:
      break;
    case 5:
      v948 = v928;
      v935 = v937 ^ v944;
      break;
    case 6:
      v948 = v928;
      STACK[0x4D0] = v945;
      break;
    case 7:
      v948 = v928;
      STACK[0x4A8] = v945;
      break;
    case 8:
      v948 = v928;
      LOBYTE(v931) = v937 ^ v944;
      break;
    case 9:
      v948 = v928;
      LOBYTE(v926) = v937 ^ v944;
      break;
    case 10:
      v948 = v928;
      LOBYTE(v930) = v937 ^ v944;
      break;
    case 11:
      v948 = v928;
      STACK[0x4C0] = v945;
      break;
    case 12:
      v948 = v928;
      STACK[0x4B0] = v945;
      break;
    case 13:
      v948 = v928;
      STACK[0x4A0] = v945;
      break;
    case 14:
      v929 = v937 ^ v944;
      v948 = v928;
      break;
    case 15:
      v948 = v928;
      v934 = v937 ^ v944;
      break;
    default:
      v948 = v928;
      LOBYTE(v936) = v937 ^ v944;
      break;
  }

  STACK[0x400] = v935;
  STACK[0x408] = v933;
  STACK[0x410] = v929;
  v949 = *(a84 + (STACK[0x418] ^ 0x2ALL));
  HIDWORD(v951) = v949 ^ 0x28;
  LODWORD(v951) = v949 << 24;
  v950 = v951 >> 31;
  v952 = ((v893 ^ 0xFFFFFFA8) - ((2 * (v893 ^ 0xFFFFFFA8) + 26) & 0x26)) ^ 0xD7 ^ *(a85 + (v893 ^ 0xACLL));
  v953 = STACK[0x460];
  v954 = (STACK[0x460] ^ 0x16) - ((2 * (STACK[0x460] ^ 0x16) + 26) & 0x26);
  v955 = *(a84 + (v906 ^ 0xB6));
  HIDWORD(v951) = v955 ^ 0x28;
  LODWORD(v951) = v955 << 24;
  v956 = (v923 - ((2 * v923) & 0xF8) + 124) ^ 0xD9 ^ *(v947 + (v923 ^ 0x64));
  v957 = (STACK[0x430] - ((2 * STACK[0x430]) & 0xF8) + 124) ^ *(v947 + (STACK[0x430] ^ 0x79));
  v958 = (((v902 - ((2 * v902) & 0xF8) + 124) ^ 0x4C ^ *(v947 + (v902 ^ 0x8DLL))) << 16) | (((v951 >> 31) ^ 0x61) << 8) | v956;
  LODWORD(STACK[0x430]) = v958 - 2 * (v958 & 0x30DABF ^ v956 & 3);
  v959 = STACK[0x200];
  v960 = (v952 << 24) | ((v957 ^ 0x7C) << 8) | (((STACK[0x480] - ((2 * STACK[0x480]) & 0x78) - 68) ^ *(STACK[0x200] + (STACK[0x480] ^ 0x8CLL)) ^ 0x40) << 16);
  v961 = v954 ^ 0x8A ^ *(a85 + (v953 ^ 0x12));
  v962 = (v898 + (~(2 * v898) | 0x87) - 67) ^ *(STACK[0x200] + (v898 ^ 0xE9));
  v963 = (STACK[0x438] - ((2 * STACK[0x438]) & 0x78) - 68) ^ 0x2C ^ *(STACK[0x200] + (STACK[0x438] ^ 0xE6));
  LODWORD(v953) = *(a84 + (STACK[0x470] ^ 0xBDLL));
  HIDWORD(v951) = v953 ^ 0x28;
  LODWORD(v951) = v953 << 24;
  v964 = STACK[0x448];
  v965 = STACK[0x448] ^ 0x79;
  v966 = ((((STACK[0x468] ^ 0xFFFFFFE6) - ((2 * (STACK[0x468] ^ 0xFFFFFFE6) + 26) & 0x26)) ^ 0x64 ^ *(a85 + (STACK[0x468] ^ 0xE2))) << 24) | (((STACK[0x440] - ((2 * STACK[0x440]) & 0xF8) + 124) ^ 0x7B ^ *(v947 + (STACK[0x440] ^ 0xA4))) << 16) | v961;
  LODWORD(STACK[0x480]) = v966 - 2 * (v966 & 0x253E003B ^ v961 & 0x11111111);
  v967 = (v964 - ((2 * v964) & 0x78) - 68) ^ 0xAE ^ *(v959 + v965);
  LODWORD(STACK[0x470]) = (v967 | v960) - 2 * ((v967 | v960) & 0x19BA707B ^ v967 & 0x10);
  v968 = (v963 << 16) | (((v951 >> 31) ^ 0xA7) << 8) | v962 ^ 0x3E | ((v950 ^ 0x18) << 24);
  LODWORD(STACK[0x468]) = v968 - 2 * (v968 & 0x5080F89A ^ (v962 ^ 0x3E) & 0x12);
  v969 = (v927 - ((2 * v927) & 0x78) - 68) ^ 0x37 ^ *(v959 + (v927 ^ 0x29));
  v970 = (STACK[0x4C0] - ((2 * STACK[0x4C0]) & 0x78) - 68) ^ 0x56 ^ *(v959 + (STACK[0x4C0] ^ 0x3FLL));
  LODWORD(v964) = *(a84 + (STACK[0x400] ^ 0x99));
  HIDWORD(v951) = v964 ^ 0x28;
  LODWORD(v951) = v964 << 24;
  LODWORD(v965) = (((STACK[0x4B0] - ((2 * STACK[0x4B0]) & 0xF8) + 124) ^ *(v947 + (STACK[0x4B0] ^ 0x81)) ^ 0xFFFFFFE7) << 24) | (((v951 >> 31) ^ 0x23) << 8);
  LODWORD(STACK[0x4B0]) = *(v947 + (v934 ^ 0xB5)) ^ (v934 | (((v948 - ((2 * v948) & 0x78) - 68) ^ 0x2D ^ *(v959 + (v948 ^ 0xEFLL))) << 8)) ^ 0x7C | ((((v930 ^ 0x46) - ((2 * (v930 ^ 0x46) + 26) & 0x26)) ^ 0x6C ^ *(a85 + (v930 ^ 0x42))) << 16);
  v971 = *(a84 + (STACK[0x4A0] ^ 0xD0));
  HIDWORD(v951) = v971 ^ 0x28;
  LODWORD(v951) = v971 << 24;
  LOBYTE(v971) = v951 >> 31;
  v972 = (v969 << 8) | ((((v931 ^ 0x61) - ((2 * (v931 ^ 0x61) + 26) & 0x26)) ^ 0xFD ^ *(a85 + (v931 ^ 0x65))) << 16) | v970;
  LODWORD(STACK[0x4C0]) = v972 - 2 * (v972 & 0x1DD64B ^ v970 & 1);
  v973 = v971 | (((STACK[0x4D0] - ((2 * STACK[0x4D0]) & 0x78) - 68) ^ 0xB3 ^ *(v959 + (STACK[0x4D0] ^ 0xC8))) << 24);
  v974 = v965 | (((v936 - ((2 * v936) & 0x78) - 68) ^ 0xB5 ^ *(v959 + (v936 ^ 0xEELL))) << 16);
  LODWORD(STACK[0x4A0]) = v974 - ((2 * v974) & 0x8B9AC400);
  v975 = *(a84 + (STACK[0x408] ^ 0x55));
  HIDWORD(v951) = v975 ^ 0x28;
  LODWORD(v951) = v975 << 24;
  v976 = STACK[0x410] ^ 0x6ALL;
  LODWORD(v964) = (STACK[0x410] ^ 0x6E) - ((2 * (STACK[0x410] ^ 0x6E) + 26) & 0x26);
  v977 = (((v926 - ((2 * v926) & 0xF8) + 124) ^ 0x81 ^ *(v947 + (v926 ^ 0x5DLL))) << 16) | (((v951 >> 31) ^ 0x5E) << 8) | v973;
  LODWORD(STACK[0x460]) = v977 - 2 * (v977 & 0x6BAD9821 ^ v971 & 0x20);
  v978 = STACK[0x4A8] ^ 0x94;
  v979 = v964 ^ 0x94 ^ *(a85 + v976);
  LODWORD(STACK[0x4A8]) = v979 - ((2 * v979) & 0x34);
  v980 = STACK[0x4C8] ^ 0x68;
  LODWORD(v953) = STACK[0x454];
  LODWORD(STACK[0x4D0]) = LODWORD(STACK[0x454]) - 8851;
  LODWORD(STACK[0x4C8]) = v953 - 7488;
  v981 = *(v959 + (STACK[0x488] ^ 0x40));
  v982 = STACK[0x488] + (~(2 * STACK[0x488]) | 0x87) - 67;
  v983 = *(v959 + (STACK[0x498] ^ 0x9ALL));
  v984 = STACK[0x498] - ((2 * STACK[0x498]) & 0x78) - 68;
  v985 = *(a84 + v978);
  v986 = STACK[0x4E0];
  v987 = (*(STACK[0x4E0] + 8 * (v953 + 2418)))(1032);
  v988 = *(a84 + v980);
  HIDWORD(v951) = v988 ^ 0x28;
  LODWORD(v951) = v988 << 24;
  v989 = LODWORD(STACK[0x4B0]) | (((v951 >> 31) ^ 0x48) << 24);
  v990 = (*(v986 + 8 * (v953 ^ 0x177E)))(1028);
  STACK[0x490];
  v997 = (((LODWORD(STACK[0x430]) + 540072636) ^ 0xA1ED6A78) & ~((v982 ^ v981 ^ 0xFFFFFF8F) << 24) | ((v982 ^ v981 ^ 0xFFFFFF8F) << 24) & 0x7E000000) ^ 0x63FA9F29;
  v998 = (LODWORD(STACK[0x468]) + 1350629512) ^ 0xDAF27204;
  v999 = (((LODWORD(STACK[0x480]) + 624833322) ^ 0x2021C34) & ~((v984 ^ 0xA7 ^ v983) << 8) | ((v984 ^ 0xA7 ^ v983) << 8) & 0xD000) ^ 0xECA13D7A;
  HIDWORD(v951) = v985 ^ 0x28;
  LODWORD(v951) = v985 << 24;
  v1000 = ((((v951 >> 31) ^ 0x69) << 24) & 0xA9000000 | ((LODWORD(STACK[0x4C0]) + 589157962) ^ 0x75B86534) & ~(((v951 >> 31) ^ 0x69) << 24)) ^ 0xB4829C93;
  if (STACK[0x490] != 8)
  {
    v1001 = (LODWORD(STACK[0x460]) - 340944895) ^ 0x61DF12A2;
  }

  v1002 = (LODWORD(STACK[0x470]) - 1715834773) ^ 0xDAE7E62;
  if (STACK[0x490] != 8)
  {
    v1003 = (LODWORD(STACK[0x4A8]) - 158319078) & 0x142 ^ 0x6CCEE4DB ^ ((LODWORD(STACK[0x4A8]) - 158319078) ^ 0x96FC1E5) & ((LODWORD(STACK[0x4A0]) - 976395655) ^ 0x629E94C4);
  }

  STACK[0x368] = v987;
  STACK[0x360] = v990;
  if (v987)
  {
    v1004 = v990 == 0;
  }

  else
  {
    v1004 = 1;
  }

  v1005 = v1004;
  return (*(v986 + 8 * ((46 * v1005) ^ LODWORD(STACK[0x4C8]))))(v990, (v985 << 24), v991, v992, v993, v994, v995, v996, a9, v1007, v1008, v1009, v1010, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, v1011, a47, a48, a49, v1012, v1013, a54, a55, a56, v1014, v1015, v1016, v1017, a65, v1018, a68, v1019);
}

uint64_t sub_1002BC76C()
{
  v1 = STACK[0x4D8];
  v2 = STACK[0x4D0];
  (*(v0 + 8 * (LODWORD(STACK[0x4D0]) + 11234)))(STACK[0x360]);
  v3 = (*(v0 + 8 * (v2 ^ 0x3426)))(STACK[0x368]);
  return sub_1002C8DE0(v3);
}

uint64_t sub_1002BC780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x4B0] = LODWORD(STACK[0x3B8]) ^ 0x16u;
  v74 = LODWORD(STACK[0x3A8]) ^ 0x2Au;
  STACK[0x4A0] = LODWORD(STACK[0x3B4]) ^ LODWORD(STACK[0x4D0]) ^ 0x4D2u;
  STACK[0x490] = LODWORD(STACK[0x3C4]) ^ 0x1Au;
  LODWORD(STACK[0x498]) = v72 ^ 0x309E;
  STACK[0x488] = ((v72 ^ 0x309Eu) - 5873) ^ LODWORD(STACK[0x3CC]);
  STACK[0x480] = LODWORD(STACK[0x3B0]) ^ 0x39u;
  v75 = LOBYTE(STACK[0x516]);
  STACK[0x398] = v75;
  LODWORD(v75) = *(a71 + (v75 ^ 0x40));
  STACK[0x468] = LODWORD(STACK[0x3C8]) ^ 0xAu;
  HIDWORD(v76) = v75 ^ 0x28;
  LODWORD(v76) = v75 << 24;
  v77 = LOBYTE(STACK[0x512]);
  STACK[0x400] = v77;
  v78 = *(a72 + (v77 ^ 0x8C)) ^ ((v77 ^ 0x88) - ((((v77 ^ 0xFFFFFF88) << ((v72 ^ 0x9E) - 23)) + 26) & 0x26));
  v79 = LOBYTE(STACK[0x51B]);
  STACK[0x348] = v79;
  v80 = STACK[0x210];
  v81 = *(STACK[0x210] + (v79 ^ 0x7D));
  LODWORD(STACK[0x350]) = 2 * v79;
  v82 = v81 ^ (v79 - ((2 * v79) & 0xF8) + 124);
  v83 = (v76 >> 31) ^ 0xC8;
  v84 = LOBYTE(STACK[0x51A]);
  LODWORD(STACK[0x4A8]) = 2 * v84;
  STACK[0x408] = v84;
  LODWORD(v75) = v82 ^ 0x3E | ((*(v80 + (v84 ^ 8)) ^ (v84 - ((2 * v84) & 0xF8) + 124) ^ 0xDA) << 8);
  v85 = LOBYTE(STACK[0x518]);
  STACK[0x390] = v85;
  v86 = *(a71 + (v85 ^ 0x91));
  HIDWORD(v76) = v86 ^ 0x28;
  LODWORD(v76) = v86 << 24;
  v87 = v75 | (((v76 >> 31) ^ 0x8B) << 24);
  v88 = LOBYTE(STACK[0x51C]);
  STACK[0x388] = v88;
  LODWORD(v75) = *(a71 + (v88 ^ 0xAA));
  HIDWORD(v76) = v75 ^ 0x28;
  LODWORD(v76) = v75 << 24;
  LODWORD(v88) = v76 >> 31;
  v89 = LOBYTE(STACK[0x51F]);
  STACK[0x2F8] = v89;
  LOBYTE(v75) = *(v80 + (v89 ^ 0x3B));
  LODWORD(STACK[0x304]) = 2 * v89;
  LOBYTE(v75) = (v89 - ((2 * v89) & 0xF8) + 124) ^ v75;
  v90 = LOBYTE(STACK[0x511]);
  STACK[0x328] = v90;
  v91 = ((v78 ^ 0xE1) << 8) | ((*(a72 + (v90 ^ 0xF1)) ^ ((v90 ^ 0xF5) - ((2 * (v90 ^ 0xF5) + 26) & 0x26)) ^ 0xAF) << 16);
  v92 = *STACK[0x4B8];
  STACK[0x2F0] = v92;
  v93 = STACK[0x200];
  LODWORD(v89) = v91 | ((*(STACK[0x200] + (v92 ^ 0x83)) ^ (v92 + (~(2 * v92) | 0x87) - 67) ^ 0xFFFFFFEF) << 24);
  v94 = LOBYTE(STACK[0x51E]);
  STACK[0x2E8] = v94;
  LODWORD(v94) = *(a71 + (v94 ^ 6));
  HIDWORD(v76) = v94 ^ 0x28;
  LODWORD(v76) = v94 << 24;
  LOBYTE(v94) = v76 >> 31;
  v95 = LOBYTE(STACK[0x517]);
  STACK[0x380] = v95;
  v96 = *(a71 + (v95 ^ 0xA5));
  HIDWORD(v76) = v96 ^ 0x28;
  LODWORD(v76) = v96 << 24;
  v97 = (v76 >> 31) ^ 0x80 | (v83 << 8);
  v98 = LOBYTE(STACK[0x515]);
  STACK[0x330] = v98;
  LODWORD(v98) = *(a71 + (v98 ^ 0xAE));
  HIDWORD(v76) = v98 ^ 0x28;
  LODWORD(v76) = v98 << 24;
  v99 = LOBYTE(STACK[0x51D]);
  STACK[0x2E0] = v99;
  LOBYTE(v98) = ((2 * v99) & 0xDA ^ 0x82) + (v99 ^ 0x3C);
  LOBYTE(v98) = (v98 - ((2 * v98) & 0x26) + 19) ^ *(a72 + (v99 ^ 0xD5));
  v100 = v75 ^ 0x85 | ((v88 ^ 0x62) << 24) | ((v98 ^ 0x85) << 16) | ((v94 ^ 0x6F) << 8);
  LODWORD(STACK[0x438]) = v100;
  v101 = LOBYTE(STACK[0x514]);
  LODWORD(STACK[0x318]) = 2 * v101;
  STACK[0x310] = v101;
  LODWORD(v85) = *(v93 + (v101 ^ 0xB0)) ^ (v101 - ((2 * v101) & 0x78) - 68) ^ 0xB0;
  v102 = LOBYTE(STACK[0x513]);
  STACK[0x320] = v102;
  LODWORD(v101) = *(v80 + (v102 ^ 0x75)) ^ (v102 - ((2 * v102) & 0xF8) + 124) ^ 0xE9;
  LODWORD(v102) = v97 & 0xFF00FFFF | (((v76 >> 31) ^ 0x7E) << 16) | (v85 << 24);
  LODWORD(STACK[0x4C8]) = v102;
  LODWORD(STACK[0x4B8]) = v101 | v89;
  v103 = LOBYTE(STACK[0x519]);
  STACK[0x4D0] = v103;
  LOBYTE(v85) = *(v80 + (v103 ^ 0x9E));
  LODWORD(v103) = v103 - ((2 * v103) & 0x1F8) + 124;
  LODWORD(STACK[0x2DC]) = v103;
  LODWORD(v103) = v87 & 0xFF00FFFF | ((v85 ^ v103 ^ 5) << 16);
  LODWORD(STACK[0x460]) = v103;
  v104 = STACK[0x478];
  LODWORD(v98) = *(STACK[0x478] + 4 * (v98 ^ 0xFu));
  HIDWORD(v76) = v98 ^ ((v98 ^ 0x47B06B0) >> 3) ^ ((v98 ^ 0x47B06B0) >> 2) ^ 0xE91625CE;
  LODWORD(v76) = HIDWORD(v76);
  v105 = STACK[0x428];
  LODWORD(v88) = *(STACK[0x428] + 4 * (v88 ^ 0x96u));
  LODWORD(v94) = *(STACK[0x428] + 4 * (v94 ^ 0xE5u));
  v106 = STACK[0x420];
  v107 = (v101 | v89) ^ *(STACK[0x420] + 4 * (v75 ^ 0xF9u)) ^ __ROR4__(v88 ^ 0xB96AFC1 ^ (8 * v88) & 0x3B308800, 8) ^ __ROR4__(v94 ^ 0xB96AFC1 ^ (8 * v94) & 0x3B308800, 24) ^ ((v76 >> 16) - ((2 * (v76 >> 16)) & 0xBFA79A6C) + 1607716150);
  v108 = v107 ^ v102;
  LODWORD(v88) = v107 ^ v102 ^ v103;
  LODWORD(STACK[0x410]) = v88;
  LODWORD(v75) = v88 ^ 0xFB;
  LODWORD(v94) = v88 ^ 0xFB ^ v100;
  v109 = LODWORD(STACK[0x3D0]) ^ 0x11u;
  LODWORD(v103) = *(v105 + 4 * (((v94 ^ 0xA216DCAA) >> 16) ^ 0x5Au));
  v110 = LODWORD(STACK[0x3D4]) ^ 0x11u;
  LODWORD(v89) = v103 ^ 0xB96AFC1 ^ (8 * v103) & 0x3B308800;
  LODWORD(STACK[0x454]) = v94 ^ 0x341A6E7F;
  LODWORD(v103) = *(v104 + 4 * (v94 ^ 0xE3u)) ^ 0x47B06B0;
  LODWORD(v103) = v103 ^ __ROR4__(*(v106 + 4 * (BYTE3(v94) ^ 0xE2)) ^ 0xECDF8FCE, 8) ^ (v103 >> 2) ^ (v103 >> 3) ^ __ROR4__(v89, 16) ^ __ROR4__(*(v106 + 4 * (((v94 ^ 0xDCAA) >> 8) ^ 0x64u)) ^ 0xECDF8FCE, 24) ^ v107;
  LODWORD(STACK[0x470]) = v103;
  v111 = (v108 ^ 0x3DB2A5D0 ^ ((v108 ^ 0xC24D5A2F) + 1) ^ ((v103 ^ 0x8F0BBA23) - (v108 ^ 0x3DB2A5D0 ^ v103 ^ 0x8F0BBA23))) + (v103 ^ 0x8F0BBA23);
  v112 = v111 ^ v75;
  LODWORD(v75) = v111 ^ v75 ^ v94 ^ 0x341A6E7F;
  LODWORD(STACK[0x3D0]) = v112;
  LODWORD(v94) = *(v104 + 4 * (v75 ^ 0xAEu));
  v113 = STACK[0x458];
  LODWORD(v94) = v94 ^ ((v94 ^ 0x47B06B0) >> 3) ^ ((v94 ^ 0x47B06B0) >> 2) ^ __ROR4__(*(v106 + 4 * (BYTE1(v75) ^ 0xC1u)) ^ 0xECDF8FCE, 24) ^ __ROR4__(*(STACK[0x458] + 4 * (((v75 ^ 0xCF4C1732) >> 16) ^ 0x3Au)) ^ 0x39ECC3F, 16) ^ __ROR4__(*(STACK[0x458] + 4 * (BYTE3(v75) ^ 0xF5)) ^ 0x39ECC3F, 8) ^ v103 ^ 0x8F0BBA23;
  LODWORD(v89) = v94 ^ v111 ^ 0xD27B06B0;
  LODWORD(STACK[0x448]) = v89;
  LODWORD(v89) = v112 ^ v89;
  LODWORD(v102) = v75 ^ 0xCF4C1732 ^ v89;
  LODWORD(STACK[0x440]) = v75 ^ 0xCF4C1732;
  v114 = v89;
  LODWORD(STACK[0x430]) = v89;
  HIDWORD(v76) = *(v113 + 4 * (BYTE1(v102) ^ 0xEu)) ^ 0x39ECC3F;
  LODWORD(v76) = HIDWORD(v76);
  LODWORD(v103) = v76 >> 24;
  LODWORD(v76) = __ROR4__(*(v113 + 4 * (BYTE3(v102) ^ 0xD2)) ^ 0x39ECC3F, 8);
  LODWORD(STACK[0x4C0]) = v102;
  LODWORD(v89) = ((v103 ^ v76) - ((2 * (v103 ^ v76)) & 0xB253A40C) + 1495912966) ^ *(v113 + 4 * (v75 ^ 0x32 ^ v89 ^ 0x76u));
  LODWORD(v103) = *(v104 + 4 * (BYTE2(v102) ^ 0xBDu));
  v115 = ((v103 ^ 0x47B06B0) >> 3) ^ ((v103 ^ 0x47B06B0) >> 2);
  LODWORD(v103) = v89 ^ __ROR4__(v103 ^ 0x80036030 ^ (v115 - ((2 * v115) & 0x522A8BFC) + 1763001854), 16);
  LODWORD(STACK[0x3C8]) = v103 ^ v111;
  LODWORD(v102) = v103 ^ v111 ^ 0x86F7BBDE;
  LODWORD(v93) = v102 ^ v75 ^ 0xCF4C1732;
  LODWORD(v90) = *(v105 + 4 * (BYTE3(v93) ^ 0x56));
  LODWORD(v80) = *(v104 + 4 * ((v103 ^ v111) ^ 0xDE ^ v75 ^ 0x32 ^ 0x9Cu)) ^ 0x47B06B0;
  LODWORD(v98) = v80 ^ (v80 >> 3) ^ (v80 >> 2) ^ __ROR4__(*(v106 + 4 * (BYTE1(v93) ^ 0xD6u)) ^ 0xECDF8FCE, 24) ^ __ROR4__(*(v113 + 4 * (BYTE2(v93) ^ 0x3Au)) ^ 0x39ECC3F, 16);
  LODWORD(v94) = v94 ^ 0xE91625CE;
  LODWORD(STACK[0x418]) = v94;
  LODWORD(STACK[0x3C4]) = v103 ^ v94;
  v116 = v98 ^ __ROR4__(v90 ^ 0x25826CDB ^ (((8 * v90) & 0x3B308800 ^ 0x39200800) - ((2 * ((8 * v90) & 0x3B308800 ^ 0x39200800)) & 0x26611000) + 389335834), 8) ^ v103 ^ v94;
  LODWORD(v89) = v102 ^ v114;
  LODWORD(STACK[0x3B4]) = v102 ^ v114;
  LODWORD(STACK[0x3B8]) = v116 ^ v102;
  v117 = v116;
  LODWORD(STACK[0x3CC]) = v116;
  LODWORD(v94) = v116 ^ v102 ^ 0xF8DA3D47;
  v118 = v94 ^ v89 ^ 0xAD6191AB;
  LODWORD(STACK[0x3D4]) = v118;
  v119 = v104;
  LODWORD(v90) = *(v104 + 4 * (((v118 ^ v93) >> 8) ^ 0x9Cu));
  v120 = LODWORD(STACK[0x3D8]) ^ 0x36u;
  LODWORD(v80) = ((v90 ^ 0x47B06B0) >> 3) ^ ((v90 ^ 0x47B06B0) >> 2);
  v121 = *(v104 + 4 * (((v118 ^ v93) >> 24) ^ 0x77));
  LODWORD(v90) = v90 ^ 0x80036030 ^ (v80 - ((2 * v80) & 0x522A8BFC) + 1763001854);
  LODWORD(v80) = ((v121 ^ 0x47B06B0u) >> 3) ^ ((v121 ^ 0x47B06B0u) >> 2);
  LODWORD(v104) = *(v105 + 4 * (((v118 ^ v93) >> 16) ^ 0x56u));
  LODWORD(v102) = *(v105 + 4 * ((v118 ^ v93) ^ 0x56u));
  v122 = v102 ^ (8 * v102) & 0x3B308800 ^ __ROR4__(v104 ^ 0xB96AFC1 ^ (8 * v104) & 0x3B308800, 16) ^ v117 ^ __ROR4__(v90, 24) ^ __ROR4__(v121 ^ 0x80036030 ^ (v80 - ((2 * v80) & 0x522A8BFC) + 1763001854), 8) ^ 0x4571E1F7;
  LODWORD(v98) = v94 ^ v89 ^ 0x8A0CB2D5;
  LODWORD(v102) = STACK[0x3F8] & 0x3F;
  STACK[0x260] = STACK[0x4A0] << v73;
  STACK[0x238] = STACK[0x4B0] << v73;
  STACK[0x248] = STACK[0x490] << v73;
  STACK[0x280] = (LODWORD(STACK[0x3E8]) ^ 0xEu) << v73;
  v467 = (LODWORD(STACK[0x3E4]) ^ 0x38u) << v73;
  STACK[0x250] = (LODWORD(STACK[0x3F4]) ^ 0x31u) << v73;
  STACK[0x270] = v74 << v73;
  STACK[0x230] = STACK[0x488] << v73;
  STACK[0x240] = STACK[0x480] << v73;
  v468 = STACK[0x468] << v73;
  STACK[0x220] = (LODWORD(STACK[0x3E0]) ^ 3u) << v73;
  STACK[0x268] = v109 << v73;
  STACK[0x278] = (v102 ^ 0xD) << v73;
  STACK[0x228] = (LODWORD(STACK[0x3DC]) ^ 0x19u) << v73;
  STACK[0x218] = v110 << v73;
  LODWORD(v94) = v122 ^ v94;
  LODWORD(v110) = v94 ^ 0x803D7371;
  LODWORD(v90) = v94;
  LODWORD(STACK[0x488]) = v94;
  LODWORD(v94) = v98 ^ v94 ^ 0x803D7371;
  LODWORD(v102) = v118 ^ v93 ^ 0xEB000000;
  LODWORD(v74) = v94 ^ v102;
  LODWORD(v80) = v94;
  LODWORD(STACK[0x3DC]) = v94;
  v123 = v113;
  LODWORD(v94) = *(v113 + 4 * (((v94 ^ v118 ^ v93) >> 8) ^ 0x19u));
  STACK[0x258] = v120 << v73;
  v124 = *(v105 + 4 * (BYTE3(v74) ^ 0x9A));
  HIDWORD(v76) = v124 ^ 0xB96AFC1 ^ (8 * v124) & 0x3B308800;
  LODWORD(v76) = HIDWORD(v76);
  v125 = v76 >> 8;
  LODWORD(v76) = __ROR4__(v94 ^ 0x39ECC3F, 24);
  LODWORD(v109) = *(v106 + 4 * (v74 ^ 0xA8u)) ^ __ROR4__(*(v113 + 4 * (BYTE2(v74) ^ 0x57u)) ^ 0x39ECC3F, 16) ^ v122 ^ 0x8F0BBA23 ^ ((v125 ^ v76) - ((2 * (v125 ^ v76)) & 0xBFA79A6C) + 1607716150);
  LODWORD(STACK[0x3B0]) = v109;
  v126 = v109 ^ v110 ^ v102;
  LODWORD(v89) = v109 ^ v110;
  LODWORD(STACK[0x3F8]) = v109 ^ v110;
  v127 = v102;
  LODWORD(STACK[0x3D8]) = v102;
  LODWORD(v110) = *(v119 + 4 * (BYTE2(v126) ^ 0xE6u));
  LODWORD(v94) = ((v110 ^ 0x47B06B0) >> 3) ^ ((v110 ^ 0x47B06B0) >> 2);
  LODWORD(v120) = *(v105 + 4 * (v126 ^ 0x1Bu)) ^ 0xEEB6DA29;
  LODWORD(v98) = v120 ^ __ROR4__(*(v106 + 4 * (HIBYTE(v126) ^ 0xA9)) ^ 0xECDF8FCE, 8) ^ (8 * v120) & 0x3B308800;
  LODWORD(v120) = v126 ^ 0x7F7A2E4D;
  LODWORD(STACK[0x3E4]) = v126 ^ 0x7F7A2E4D;
  LODWORD(v94) = v98 ^ __ROR4__(*(v106 + 4 * (BYTE1(v126) ^ 0xF8u)) ^ 0xECDF8FCE, 24) ^ __ROR4__(v110 ^ 0x80036030 ^ (v94 - ((2 * v94) & 0x522A8BFC) + 1763001854), 16);
  v128 = v94 ^ v90;
  LODWORD(STACK[0x4A0]) = v94 ^ v90 ^ 0xF62D8699;
  LODWORD(v104) = v89 ^ v80;
  LODWORD(v98) = v94 ^ v90 ^ 0xF62D8699 ^ v89 ^ v80;
  LODWORD(v102) = v98 ^ v120;
  v129 = v98 ^ v120 ^ 0xB3170D33;
  LODWORD(v90) = *(v105 + 4 * ((v129 >> (STACK[0x4D0] & 0x18) >> (STACK[0x4D0] & 0x18 ^ 0x18)) ^ 0x56u));
  v130 = v105;
  LODWORD(v105) = v98 ^ 0xCC6D237E;
  LODWORD(v98) = v94 ^ v109;
  HIDWORD(v76) = v90 ^ 0x25826CDB ^ (((8 * v90) & 0x3B308800 ^ 0x39200800) - ((2 * ((8 * v90) & 0x3B308800 ^ 0x39200800)) & 0x26611000) + 389335834);
  LODWORD(v76) = HIDWORD(v76);
  LODWORD(STACK[0x3A0]) = v94 ^ v109 ^ 0x27170D33;
  LODWORD(v75) = ((v98 ^ 0x27170D33 ^ -(v98 ^ 0x27170D33) ^ ((v76 >> 8) - (v98 ^ 0x27170D33 ^ (v76 >> 8)))) + (v76 >> 8)) ^ __ROR4__(*(v106 + 4 * (BYTE2(v102) ^ 0xC1u)) ^ 0xECDF8FCE, 16);
  LODWORD(v94) = *(v106 + 4 * (v102 ^ 0xE5u)) ^ __ROR4__(*(v106 + 4 * (BYTE1(v102) ^ 0xDBu)) ^ 0xECDF8FCE, 24) ^ (v75 - ((2 * v75) & 0xBFA79A6C) + 1607716150);
  LODWORD(STACK[0x370]) = v94;
  LODWORD(v75) = v128 ^ 0x575BEA2C ^ v94;
  LODWORD(STACK[0x35C]) = v75;
  v131 = v75 ^ v105;
  LODWORD(v75) = v75 ^ v105 ^ 0x5107F8DB;
  v132 = v129;
  LODWORD(STACK[0x358]) = v129;
  LODWORD(v90) = *(v119 + 4 * (((v75 ^ v129) >> 24) ^ 0x51));
  v133 = v75 ^ v129 ^ 0xCD7A2E4D;
  LODWORD(STACK[0x354]) = v133;
  LODWORD(v110) = *(v130 + 4 * ((v75 ^ v129) ^ 0x1Bu)) ^ 0xEEB6DA29;
  LODWORD(v110) = v110 ^ __ROR4__(*(v106 + 4 * (((v75 ^ v129) >> 16) ^ 0xACu)) ^ 0xECDF8FCE, 16) ^ (8 * v110) & 0x3B308800 ^ __ROR4__(*(v123 + 4 * (((v75 ^ v129) >> 8) ^ 0x14u)) ^ 0x39ECC3F, 24);
  LODWORD(v76) = __ROR4__(v90 ^ ((v90 ^ 0x47B06B0) >> 3) ^ ((v90 ^ 0x47B06B0) >> 2) ^ 0xE91625CE, 8);
  LODWORD(STACK[0x344]) = v110 ^ v76;
  LODWORD(v94) = LODWORD(STACK[0x410]) ^ 0xFFCD4865;
  LODWORD(STACK[0x480]) = v94;
  v134 = v107 ^ 0x84E7C6F1;
  v135 = v94 - v134 - 158506645;
  v136 = v108 ^ 0x54735F9B;
  LODWORD(v120) = LODWORD(STACK[0x3C8]) ^ 0x9EAF2DF3;
  LODWORD(STACK[0x30C]) = v120;
  v137 = v111 ^ 0x55E1FCBE;
  v138 = LODWORD(STACK[0x438]) ^ 0x366EC208;
  LODWORD(STACK[0x308]) = LODWORD(STACK[0x3B4]) ^ 0xF079A261;
  v139 = v93 ^ 0x1858962D;
  LODWORD(STACK[0x2D4]) = v93 ^ 0x1858962D;
  v140 = (v93 ^ 0x1858962D) - v136 + 1644404151;
  LODWORD(v89) = STACK[0x3B8];
  LODWORD(v123) = (LODWORD(STACK[0x3B8]) ^ 0x569A98A0 ^ v127) - 688896180;
  LODWORD(v102) = LODWORD(STACK[0x3D0]) ^ 0xC3ED4E6B;
  LODWORD(STACK[0x438]) = v102;
  LODWORD(STACK[0x2D8]) = LODWORD(STACK[0x3C4]) ^ 0x82AF2DF3;
  LODWORD(v94) = LODWORD(STACK[0x4C8]) ^ 0x44EC87C8;
  LODWORD(STACK[0x2C0]) = -1760626370 - (v102 ^ v94);
  LODWORD(v130) = LODWORD(STACK[0x460]) ^ 0x3FC6095C;
  LODWORD(STACK[0x3D0]) = v131 ^ 0xD9176EEE;
  v141 = 196015000 - (v98 ^ 0x96ADBA5 ^ v132);
  LODWORD(v80) = v104 ^ 0x711529D8;
  LODWORD(STACK[0x3A8]) = v104 ^ 0x711529D8;
  LODWORD(STACK[0x31C]) = (LODWORD(STACK[0x4C0]) ^ 0x622E274D ^ v105) + 645077142;
  v142 = v128 ^ 0xFF3D7371 ^ v110 ^ v76;
  LODWORD(STACK[0x410]) = v142;
  LODWORD(v75) = v75 ^ v142;
  LODWORD(STACK[0x338]) = v75 ^ 0xD2A85F3C;
  v143 = v75 ^ v94 ^ v133;
  LODWORD(STACK[0x2A8]) = v143;
  LODWORD(v109) = v105 ^ 0x7838B303;
  LODWORD(v110) = LODWORD(STACK[0x3CC]) ^ 0x9704623F;
  LODWORD(v75) = v89 ^ 0x9704623F;
  v144 = 1502530033 - STACK[0x2B0];
  LODWORD(STACK[0x2C4]) = v144;
  LODWORD(v102) = v122 ^ v140 ^ 0xE0EEB61F;
  LODWORD(v89) = LODWORD(STACK[0x3D4]) ^ v134;
  HIDWORD(v464) = v120 + v137;
  LODWORD(v105) = (v120 + v137) ^ 0x6BA73B1B ^ v141;
  v145 = v75 ^ v105;
  v146 = v105 ^ 0xC19EFA9F;
  v459 = v105 ^ 0xC19EFA9F;
  v147 = LODWORD(STACK[0x3D4]) ^ 0x2A9EFA9F ^ v105;
  v148 = v105 ^ v110;
  LODWORD(STACK[0x378]) = v89;
  HIDWORD(v465) = v94 - v110;
  v149 = (v94 - v110) ^ 0x607B5D99;
  LODWORD(v463) = v89 ^ 0xBBDC10E0;
  v150 = v123 ^ v89 ^ 0xBBDC10E0;
  v151 = v149 ^ v94 ^ v150;
  v152 = v74 ^ 0x2FE43F7;
  v153 = 1740044362 - v130;
  LODWORD(v75) = v80 + v94;
  v154 = v143 ^ 0xB5239B15;
  v155 = v150 ^ v149 ^ v130;
  v156 = v150 ^ v149 ^ LODWORD(STACK[0x4B8]) ^ 0x675260E0;
  v157 = v150 ^ v149 ^ v138;
  HIDWORD(v466) = v75;
  v158 = v75 ^ 0xAB173204;
  LODWORD(v466) = v139 + 618927963 + (v74 ^ 0x2FE43F7);
  LODWORD(STACK[0x4B0]) = v154 ^ v466;
  v159 = v109 ^ v154 ^ v466;
  v160 = v102 ^ v75 ^ 0xAB173204;
  v161 = v160 ^ (v145 + v144 + v159);
  if (v161)
  {
    v162 = v156;
  }

  else
  {
    v162 = v150 ^ v149 ^ v138;
  }

  LODWORD(STACK[0x4B8]) = v162;
  if (v161)
  {
    v163 = v151;
  }

  else
  {
    v163 = v156;
  }

  LODWORD(STACK[0x468]) = v163;
  if ((v161 & 1) == 0)
  {
    v157 = v155;
  }

  LODWORD(STACK[0x460]) = v157;
  if (v161)
  {
    v164 = v155;
  }

  else
  {
    v164 = v151;
  }

  LODWORD(STACK[0x490]) = v164;
  v165 = LODWORD(STACK[0x454]) ^ 0x69C1FA4B;
  v166 = STACK[0x308];
  v167 = -384469273 - v136;
  LODWORD(v464) = LODWORD(STACK[0x308]) - v138;
  v168 = v464 ^ 0xD62F863D ^ v154;
  LODWORD(STACK[0x454]) = v168 ^ v136;
  LODWORD(STACK[0x3F4]) = v168 ^ v134;
  v169 = v168 ^ LODWORD(STACK[0x480]);
  v170 = v165 ^ v168;
  v171 = v135 ^ 0xCA15959 ^ LODWORD(STACK[0x440]);
  v172 = STACK[0x2D8];
  v173 = v153 - LODWORD(STACK[0x2D8]);
  v174 = v137 ^ v135 ^ v173;
  v175 = LODWORD(STACK[0x470]) ^ v135 ^ 0xDAEA469D ^ v173;
  v176 = LODWORD(STACK[0x438]) ^ v135 ^ v173;
  LODWORD(v465) = v173;
  v177 = v171 ^ v173;
  if (v161)
  {
    v178 = v174;
  }

  else
  {
    v178 = v175;
  }

  LODWORD(STACK[0x480]) = v178;
  if (v161)
  {
    v179 = v176;
  }

  else
  {
    v179 = v174;
  }

  if (v161)
  {
    v180 = v175;
  }

  else
  {
    v180 = v177;
  }

  if (v161)
  {
    v181 = v177;
  }

  else
  {
    v181 = v176;
  }

  LODWORD(STACK[0x438]) = v181;
  v182 = STACK[0x31C];
  v183 = LODWORD(STACK[0x31C]) ^ LODWORD(STACK[0x2C0]);
  v184 = v183 ^ 0x1A16944E;
  v185 = LODWORD(STACK[0x418]) ^ 0xB77705E5 ^ v183;
  v186 = LODWORD(STACK[0x448]) ^ 0xD55A837C ^ v183;
  v187 = v183 ^ 0x1A16944E ^ LODWORD(STACK[0x430]);
  v188 = v184 ^ LODWORD(STACK[0x4C0]);
  if (v161)
  {
    v189 = v187;
  }

  else
  {
    v189 = v186;
  }

  LODWORD(STACK[0x3E8]) = v189;
  if (v161)
  {
    v190 = v188;
  }

  else
  {
    v190 = v187;
  }

  LODWORD(STACK[0x3C8]) = v190;
  if (v161)
  {
    v191 = v185;
  }

  else
  {
    v191 = v188;
  }

  LODWORD(STACK[0x3E0]) = v191;
  if (v161)
  {
    v192 = v186;
  }

  else
  {
    v192 = v185;
  }

  LODWORD(STACK[0x3C4]) = v192;
  v193 = v140 ^ LODWORD(STACK[0x3DC]) ^ 0x2FE43F7;
  v194 = v140 ^ LODWORD(STACK[0x488]) ^ 0x4EAE13F8;
  v195 = v146 ^ LODWORD(STACK[0x3D8]);
  if (v161)
  {
    v196 = v148;
  }

  else
  {
    v196 = v146 ^ LODWORD(STACK[0x3D8]);
  }

  LODWORD(STACK[0x3D8]) = v196;
  if (v161)
  {
    v197 = v145;
  }

  else
  {
    v197 = v148;
  }

  LODWORD(STACK[0x3B8]) = v197;
  if (v161)
  {
    v198 = v195;
  }

  else
  {
    v198 = v147;
  }

  LODWORD(STACK[0x3B4]) = v198;
  if (v161)
  {
    v199 = v147;
  }

  else
  {
    v199 = v145;
  }

  LODWORD(STACK[0x3CC]) = v199;
  v200 = v167 - v152;
  LODWORD(STACK[0x29C]) = v158;
  v201 = v193 ^ v158;
  v202 = v194 ^ v158;
  if (v161)
  {
    v203 = v201;
  }

  else
  {
    v203 = v202;
  }

  LODWORD(STACK[0x3DC]) = v203;
  if (v161)
  {
    v204 = v152 ^ v140 ^ v158;
  }

  else
  {
    v204 = v201;
  }

  LODWORD(STACK[0x488]) = v204;
  if (v161)
  {
    v205 = v202;
  }

  else
  {
    v205 = v160;
  }

  LODWORD(STACK[0x448]) = v205;
  if (v161)
  {
    v206 = v160;
  }

  else
  {
    v206 = v152 ^ v140 ^ v158;
  }

  LODWORD(STACK[0x3D4]) = v206;
  v207 = STACK[0x3D0];
  v208 = STACK[0x338];
  HIDWORD(v463) = LODWORD(STACK[0x3D0]) + 869620590 + LODWORD(STACK[0x338]);
  v461 = v154 ^ HIDWORD(v463);
  v209 = v154 ^ HIDWORD(v463) ^ 0xBD780AA6;
  v210 = v209 ^ LODWORD(STACK[0x3B0]);
  v211 = v209 ^ LODWORD(STACK[0x3F8]);
  v212 = v154 ^ HIDWORD(v463) ^ LODWORD(STACK[0x3A8]);
  v458 = v154 ^ HIDWORD(v463) ^ 0xC20224EB;
  v213 = v458 ^ LODWORD(STACK[0x3E4]);
  if (v161)
  {
    v214 = v210;
  }

  else
  {
    v214 = v458 ^ LODWORD(STACK[0x3E4]);
  }

  if (v161)
  {
    v215 = v211;
  }

  else
  {
    v215 = v210;
  }

  LODWORD(STACK[0x3B0]) = v215;
  if (v161)
  {
    v216 = v212;
  }

  else
  {
    v216 = v211;
  }

  if (v161)
  {
    v217 = v213;
  }

  else
  {
    v217 = v212;
  }

  LODWORD(STACK[0x3A8]) = v217;
  v218 = LODWORD(STACK[0x3A0]) ^ 0x293F4BD8;
  v219 = v141 ^ v182;
  v220 = v141 ^ v182 ^ 0xA66D40A3 ^ LODWORD(STACK[0x35C]);
  v221 = v140;
  v222 = LODWORD(STACK[0x4C8]) ^ v140 ^ 0x236743E1;
  v223 = v219 ^ 0x71B2C16 ^ LODWORD(STACK[0x370]);
  v224 = v200 ^ v140;
  v225 = v200 ^ v140 ^ LODWORD(STACK[0x370]) ^ LODWORD(STACK[0x344]) ^ 0x54B310F7;
  v226 = v140 ^ LODWORD(STACK[0x2D4]);
  v227 = v140 ^ v172 ^ v141;
  v228 = v226 ^ v141;
  v469 = v221;
  v229 = v221 ^ LODWORD(STACK[0x30C]) ^ v141;
  v230 = v221 ^ v166 ^ v141;
  LODWORD(STACK[0x4C8]) = v154 ^ v224;
  v231 = v154 ^ v224 ^ v208;
  v232 = v219;
  HIDWORD(v453) = v219;
  v233 = v207 ^ v219;
  LODWORD(v453) = LODWORD(STACK[0x4B0]) ^ 0x7429D4E;
  v234 = v453 ^ LODWORD(STACK[0x358]);
  v235 = v453 ^ LODWORD(STACK[0x4A0]);
  v236 = v218 ^ LODWORD(STACK[0x4B0]);
  if (v161)
  {
    v237 = v236;
  }

  else
  {
    v237 = LODWORD(STACK[0x4B0]) ^ 0x7429D4E ^ LODWORD(STACK[0x358]);
  }

  LODWORD(STACK[0x3E4]) = v237;
  LODWORD(STACK[0x294]) = v235;
  if (v161)
  {
    v238 = v235;
  }

  else
  {
    v238 = v236;
  }

  LODWORD(STACK[0x35C]) = v159;
  if ((v161 & 1) == 0)
  {
    v234 = v159;
  }

  v456 = v232 ^ 0x456AB878;
  v239 = v232 ^ 0x456AB878 ^ LODWORD(STACK[0x354]);
  v240 = v222 ^ v200;
  LODWORD(STACK[0x288]) = v154;
  v241 = v225 ^ v154;
  v454 = v224 ^ 0xAAF1EA64 ^ LODWORD(STACK[0x2A8]);
  v242 = v454 ^ LODWORD(STACK[0x410]);
  v243 = STACK[0x454];
  if ((v161 & 1) == 0)
  {
    v243 = STACK[0x3F4];
  }

  LODWORD(STACK[0x358]) = v169;
  LODWORD(STACK[0x354]) = v170;
  if (v161)
  {
    v244 = v170;
  }

  else
  {
    v244 = v169;
  }

  LODWORD(STACK[0x2D0]) = v227;
  LODWORD(STACK[0x2AC]) = v229;
  if ((v161 & 1) == 0)
  {
    v229 = v227;
  }

  LODWORD(STACK[0x3A0]) = v229;
  LODWORD(STACK[0x2C8]) = v228;
  LODWORD(STACK[0x2A4]) = v230;
  if (v161)
  {
    v245 = v228;
  }

  else
  {
    v245 = v230;
  }

  LODWORD(STACK[0x298]) = v233;
  if (v161)
  {
    v246 = v239;
  }

  else
  {
    v246 = v233;
  }

  LODWORD(STACK[0x2D8]) = v220;
  LODWORD(STACK[0x2D4]) = v223;
  if (v161)
  {
    v247 = v220;
  }

  else
  {
    v247 = v223;
  }

  LODWORD(STACK[0x2B0]) = v231;
  LODWORD(STACK[0x290]) = v240;
  if (v161)
  {
    v248 = v240;
  }

  else
  {
    v248 = v231;
  }

  HIDWORD(v460) = v242;
  if (v161)
  {
    v249 = v242;
  }

  else
  {
    v249 = v241;
  }

  LODWORD(STACK[0x4C0]) = v161;
  v250 = (v161 & 2) == 0;
  if ((v161 & 2) != 0)
  {
    v251 = v243;
  }

  else
  {
    v251 = v244;
  }

  LODWORD(STACK[0x308]) = v251;
  if ((v161 & 2) != 0)
  {
    v252 = v244;
  }

  else
  {
    v252 = v243;
  }

  LODWORD(STACK[0x470]) = v252;
  if ((v161 & 2) != 0)
  {
    v253 = v180;
  }

  else
  {
    v253 = v179;
  }

  LODWORD(STACK[0x4A0]) = v253;
  if ((v161 & 2) != 0)
  {
    v254 = v179;
  }

  else
  {
    v254 = v180;
  }

  LODWORD(STACK[0x344]) = v254;
  if ((v161 & 2) != 0)
  {
    v255 = v214;
  }

  else
  {
    v255 = v216;
  }

  LODWORD(STACK[0x410]) = v255;
  if ((v161 & 2) != 0)
  {
    v256 = v216;
  }

  else
  {
    v256 = v214;
  }

  LODWORD(STACK[0x418]) = v256;
  if ((v161 & 2) != 0)
  {
    v257 = v234;
  }

  else
  {
    v257 = v238;
  }

  LODWORD(STACK[0x370]) = v257;
  if ((v161 & 2) != 0)
  {
    v258 = v238;
  }

  else
  {
    v258 = v234;
  }

  LODWORD(STACK[0x440]) = v258;
  if ((v161 & 2) != 0)
  {
    v259 = v247;
  }

  else
  {
    v259 = v246;
  }

  LODWORD(STACK[0x338]) = v259;
  if ((v161 & 2) != 0)
  {
    v260 = v246;
  }

  else
  {
    v260 = v247;
  }

  LODWORD(STACK[0x30C]) = v260;
  if ((v161 & 2) != 0)
  {
    v261 = v249;
  }

  else
  {
    v261 = v248;
  }

  LODWORD(STACK[0x430]) = v261;
  if ((v161 & 2) != 0)
  {
    v262 = v248;
  }

  else
  {
    v262 = v249;
  }

  HIDWORD(v462) = v262;
  v263 = ((STACK[0x2E8] ^ 0x52) - ((2 * (STACK[0x2E8] ^ 0x52) + 26) & 0x26)) ^ *(a72 + (STACK[0x2E8] ^ 0x56));
  v264 = *(a71 + (STACK[0x2F0] ^ 0xDC));
  HIDWORD(v265) = v264 ^ 0x28;
  LODWORD(v265) = v264 << 24;
  v266 = *(a71 + (STACK[0x2E0] ^ 0xCE));
  v267 = (v265 >> 31) ^ 0xD2;
  HIDWORD(v265) = v266 ^ 0x28;
  LODWORD(v265) = v266 << 24;
  v268 = (STACK[0x388] - ((2 * STACK[0x388]) & 0x1F8) + 124) ^ *(STACK[0x210] + (STACK[0x388] ^ 0xE1));
  v269 = (((v265 >> 31) ^ 0x25) << 16) | ((v268 ^ 0xE2) << 24) | ((STACK[0x2F8] - (STACK[0x304] & 0x78) - 68) ^ *(STACK[0x200] + (STACK[0x2F8] ^ 0x78))) ^ 0x32 | ((v263 ^ 0x5C) << 8);
  v270 = *(a72 + (STACK[0x310] ^ 0xFB));
  v271 = *(a71 + (STACK[0x330] ^ 0xBF));
  HIDWORD(v265) = v271 ^ 0x28;
  LODWORD(v265) = v271 << 24;
  v272 = *(a72 + (STACK[0x380] ^ 0x13)) ^ ((STACK[0x380] ^ 0x17) - ((2 * (STACK[0x380] ^ 0x17) + 26) & 0x26)) ^ 0x80 | ((*(STACK[0x200] + (STACK[0x398] ^ 0x5C)) ^ (STACK[0x398] - ((2 * STACK[0x398]) & 0x78) - 68) ^ 0x3C) << 8) & 0xFF00FFFF | ((v270 ^ (((LODWORD(STACK[0x318]) + 39) | 0xD9) - STACK[0x310]) ^ 0xFC) << 24) | (((v265 >> 31) ^ 0xF2) << 16);
  v269 ^= 0xA216DCAA;
  v273 = *(STACK[0x478] + 4 * (v268 ^ 0xDCu));
  HIDWORD(v265) = v273 ^ ((v273 ^ 0x47B06B0u) >> 3) ^ ((v273 ^ 0x47B06B0u) >> 2) ^ 0xE91625CE;
  LODWORD(v265) = HIDWORD(v265);
  v274 = STACK[0x458];
  v275 = STACK[0x420];
  v276 = *(STACK[0x458] + 4 * (((STACK[0x2F8] - (STACK[0x304] & 0x78) - 68) ^ *(STACK[0x200] + (STACK[0x2F8] ^ 0x78))) ^ 0xA2u)) ^ __ROR4__(*(STACK[0x458] + 4 * (v263 ^ 0xBAu)) ^ 0x39ECC3F, 24) ^ (*(a72 + (STACK[0x320] ^ 0xD4)) ^ 0x28 ^ ((STACK[0x320] ^ 0xD0) + ((36 - 2 * (STACK[0x320] ^ 0xD0)) | 0xD9) + 1) | (v267 << 24) | ((*(STACK[0x200] + (STACK[0x328] ^ 0x53)) ^ (STACK[0x328] - ((2 * STACK[0x328]) & 0x78) - 68) ^ 0xD1) << 16) | ((*(a72 + (STACK[0x400] ^ 0xA)) ^ 0x89 ^ ((STACK[0x400] ^ 0xE) + ((36 - 2 * (STACK[0x400] ^ 0xE)) | 0xD9) + 1)) << 8)) ^ __ROR4__(*(STACK[0x420] + 4 * (BYTE2(v269) ^ 0xD6u)) ^ 0xECDF8FCE, 16) ^ ((v265 >> 8) - ((2 * (v265 >> 8)) & 0xB253A40C) + 1495912966);
  v277 = ((*(STACK[0x200] + (STACK[0x348] ^ 0xA3)) ^ (STACK[0x348] - (STACK[0x350] & 0x78) - 68) ^ 0xF9) & 0xFF00FFFF | ((*(STACK[0x210] + (STACK[0x4D0] ^ 0x2F)) ^ LODWORD(STACK[0x2DC]) ^ 0xAC) << 16) | ((*(STACK[0x210] + (STACK[0x390] ^ 0xD)) ^ (STACK[0x390] - ((2 * STACK[0x390]) & 0xF8) + 124) ^ 0x6E) << 24) | ((*(STACK[0x200] + (STACK[0x408] ^ 0xE8)) ^ (STACK[0x408] - (STACK[0x4A8] & 0x78) - 68) ^ 0x21) << 8)) ^ v272 ^ v276;
  v278 = v277 ^ v269 ^ 0x49D607B;
  v279 = *(STACK[0x478] + 4 * (((v277 ^ v269) >> 24) ^ 0xE3));
  HIDWORD(v265) = v279 ^ ((v279 ^ 0x47B06B0u) >> 3) ^ ((v279 ^ 0x47B06B0u) >> 2) ^ 0xE91625CE;
  LODWORD(v265) = HIDWORD(v265);
  v280 = STACK[0x428];
  v281 = *(STACK[0x428] + 4 * (BYTE2(v278) ^ 0x7Cu));
  v282 = *(STACK[0x420] + 4 * (v278 ^ 0x18u)) ^ __ROR4__(*(STACK[0x420] + 4 * (BYTE1(v278) ^ 0x58u)) ^ 0xECDF8FCE, 24) ^ __ROR4__(v281 ^ 0xB96AFC1 ^ (8 * v281) & 0x3B308800, 16) ^ ((v265 >> 8) - ((2 * (v265 >> 8)) & 0xBFA79A6C) + 1607716150);
  v283 = v282 ^ v272;
  v284 = v283 ^ v277;
  v285 = v284 ^ v278;
  HIDWORD(v265) = *(STACK[0x458] + 4 * (((v285 ^ 0x1EA34937) >> 16) ^ 0x9Cu)) ^ 0x39ECC3F;
  LODWORD(v265) = HIDWORD(v265);
  v286 = *(STACK[0x478] + 4 * (v285 ^ 0x75u)) ^ 0x47B06B0;
  v287 = (v265 >> 16) ^ __ROR4__(*(STACK[0x458] + 4 * (HIBYTE(v285) ^ 0x8B)) ^ 0x39ECC3F, 8) ^ v276 ^ __ROR4__(*(STACK[0x420] + 4 * (((v285 ^ 0x4937) >> 8) ^ 0x24u)) ^ 0xECDF8FCE, 24) ^ v286 ^ (v286 >> 2) ^ (v286 >> 3) ^ v282 ^ 0x90FC01FD;
  v288 = v283 ^ 0xB598DB92 ^ v287;
  v289 = v284 ^ 0x2028CDFC ^ v288;
  v290 = v289 ^ v285;
  v291 = v289 ^ v285 ^ 0xB105BBE9;
  v292 = v289 ^ v285 ^ 0x5B024332;
  v293 = *(STACK[0x478] + 4 * (BYTE1(v292) ^ 0x9Cu));
  v294 = ((v293 ^ 0x47B06B0u) >> 3) ^ ((v293 ^ 0x47B06B0u) >> 2);
  HIDWORD(v265) = v293 ^ 0x80036030 ^ (v294 - ((2 * v294) & 0x522A8BFC) + 1763001854);
  LODWORD(v265) = HIDWORD(v265);
  v295 = v265 >> 24;
  LODWORD(v265) = __ROR4__(*(STACK[0x420] + 4 * (HIBYTE(v290) ^ 0x8D)) ^ 0xECDF8FCE, 8);
  v296 = *(STACK[0x420] + 4 * (v291 ^ 0xDu)) ^ __ROR4__(*(STACK[0x458] + 4 * (BYTE2(v291) ^ 0x3Du)) ^ 0x39ECC3F, 16) ^ v287 ^ ((v295 ^ v265) - ((2 * (v295 ^ v265)) & 0xBFA79A6C) + 1607716150);
  v297 = v296 ^ v288;
  v298 = v296 ^ v288 ^ v289;
  v299 = v298 ^ v292;
  v300 = ((v298 ^ v292) >> 16) ^ 0x31;
  v301 = *(STACK[0x428] + 4 * ((v298 ^ v292) ^ 0x75u)) ^ 0xEEB6DA29;
  v302 = *(STACK[0x428] + 4 * (((v298 ^ v292) >> 8) ^ 0xECu));
  v303 = v302 ^ 0xB96AFC1 ^ (8 * v302) & 0x3B308800;
  v304 = v299 ^ 0xDC0BBA23;
  v305 = *(STACK[0x478] + 4 * (HIBYTE(v299) ^ 0x40));
  v306 = v301 ^ __ROR4__(*(STACK[0x458] + 4 * v300) ^ 0x39ECC3F, 16) ^ (8 * v301) & 0x3B308800 ^ __ROR4__(v303, 24) ^ __ROR4__(v305 ^ ((((v305 ^ 0x47B06B0u) >> !(v270 & 1) >> (v270 & 1)) ^ v305 ^ 0x47B06B0) >> 2) ^ 0xE91625CE, 8) ^ v296 ^ 0x8F0BBA23;
  v307 = v297 ^ 0x7A1B4FCB ^ v306;
  v308 = v298 ^ 0x650C42F8 ^ v307;
  v309 = *(STACK[0x428] + 4 * (((v308 ^ v304) >> 16) ^ 0x51u));
  v310 = *(STACK[0x478] + 4 * ((v308 ^ v304) ^ 0x47u)) ^ 0x47B06B0;
  v311 = v310 ^ __ROR4__(*(STACK[0x420] + 4 * (((v308 ^ v304) >> 24) ^ 0x6F)) ^ 0xECDF8FCE, 8) ^ (v310 >> 2) ^ (v310 >> 3) ^ __ROR4__(v309 ^ 0xB96AFC1 ^ (8 * v309) & 0x3B308800, 16) ^ __ROR4__(*(STACK[0x458] + 4 * (((v308 ^ v304) >> 8) ^ 0xC2u)) ^ 0x39ECC3F, 24);
  v312 = v306 ^ v311;
  v313 = v297 ^ 0x360C42F8 ^ v311;
  LOBYTE(v297) = v304 ^ v297 ^ 0xF8 ^ v311;
  v314 = *(STACK[0x428] + 4 * (((v304 ^ v313) >> 16) ^ 0x3Bu));
  v315 = v314 ^ 0xB96AFC1 ^ (8 * v314) & 0x3B308800;
  v316 = v304 ^ v313 ^ 0xDB6D237E;
  HIDWORD(v265) = *(STACK[0x458] + 4 * (((v304 ^ v313) >> 24) ^ 0xE1)) ^ 0x39ECC3F;
  LODWORD(v265) = HIDWORD(v265);
  v317 = (v265 >> 8) ^ __ROR4__(*(STACK[0x458] + 4 * (((v304 ^ v313) >> 8) ^ 0x19u)) ^ 0x39ECC3F, 24);
  LODWORD(v265) = __ROR4__(v315, 16);
  v318 = v312 ^ *(STACK[0x458] + 4 * (v297 ^ 0x44u)) ^ ((v317 ^ v265) - ((2 * (v317 ^ v265)) & 0xB253A40C) + 1495912966);
  v319 = v308 ^ v313;
  v320 = v318 ^ v313;
  v321 = v318 ^ v313 ^ 0x7BA0130A ^ v308 ^ v313;
  v322 = *(STACK[0x478] + 4 * (((v318 ^ v313 ^ 0x130A ^ v319 ^ v316) >> 8) ^ 0x47u));
  v323 = ((v322 ^ 0x47B06B0u) >> 3) ^ ((v322 ^ 0x47B06B0u) >> 2);
  HIDWORD(v265) = v322 ^ 0x80036030 ^ (v323 - ((2 * v323) & 0x522A8BFC) + 1763001854);
  LODWORD(v265) = HIDWORD(v265);
  v324 = *(STACK[0x478] + 4 * (((v321 ^ v316) >> 16) ^ 0xF6u));
  v325 = (v265 >> 24) ^ __ROR4__(*(STACK[0x420] + 4 * (((v321 ^ v316) >> 24) ^ 0xB4)) ^ 0xECDF8FCE, 8);
  LODWORD(v265) = __ROR4__(v324 ^ ((v324 ^ 0x47B06B0u) >> 3) ^ ((v324 ^ 0x47B06B0u) >> 2) ^ 0xE91625CE, 16);
  v326 = v321 ^ v316 ^ 0x626ADBA5;
  v327 = v318 ^ *(STACK[0x458] + 4 * ((v318 ^ v313) ^ 0xA ^ v319 ^ v316 ^ 0x9Fu)) ^ ((v325 ^ v265) - ((2 * (v325 ^ v265)) & 0xB253A40C) + 1495912966);
  v328 = v327 ^ v318 ^ v313 ^ 0x7BA0130A;
  v329 = v327 ^ 0x5ECC297B;
  v330 = v328 ^ 0x5ECC297B;
  v331 = v321 ^ 0x187DD696 ^ v328 ^ 0x5ECC297B;
  v332 = *(STACK[0x478] + 4 * (((v331 ^ v326) >> 16) ^ 0x3Du));
  v333 = *(STACK[0x478] + 4 * (((v331 ^ v326) >> 24) ^ 0xE0));
  HIDWORD(v265) = v332 ^ ((v332 ^ 0x47B06B0u) >> 3) ^ ((v332 ^ 0x47B06B0u) >> 2) ^ 0xE91625CE;
  LODWORD(v265) = HIDWORD(v265);
  v334 = (v265 >> 16) & 0xFFFFFFFE ^ __ROR4__(*(STACK[0x420] + 4 * (((v331 ^ v326) >> 8) ^ 0xDCu)) ^ 0xECDF8FCE, 24) ^ __ROR4__(v333 ^ ((v333 ^ 0x47B06B0u) >> 3) ^ ((v333 ^ 0x47B06B0u) >> 2) ^ 0xE91625CE, 8);
  v335 = (v265 >> 16) & 1;
  v336 = STACK[0x490];
  if (v250)
  {
    v336 = STACK[0x4B8];
  }

  LODWORD(STACK[0x348]) = v336;
  v337 = STACK[0x468];
  if (v250)
  {
    v337 = STACK[0x460];
  }

  LODWORD(STACK[0x3D0]) = v337;
  v338 = STACK[0x438];
  if (!v250)
  {
    v338 = STACK[0x480];
  }

  LODWORD(STACK[0x330]) = v338;
  v339 = STACK[0x3E0];
  if (!v250)
  {
    v339 = STACK[0x3E8];
  }

  LODWORD(STACK[0x304]) = v339;
  v340 = STACK[0x3C4];
  if (!v250)
  {
    v340 = STACK[0x3C8];
  }

  LODWORD(STACK[0x2BC]) = v340;
  LODWORD(STACK[0x28C]) = v245;
  v341 = STACK[0x3A0];
  if (!v250)
  {
    v341 = v245;
  }

  LODWORD(STACK[0x2A0]) = v341;
  v342 = STACK[0x3CC];
  if (v250)
  {
    v342 = STACK[0x3D8];
  }

  LODWORD(STACK[0x318]) = v342;
  v343 = STACK[0x488];
  if (!v250)
  {
    v343 = STACK[0x448];
  }

  LODWORD(STACK[0x408]) = v343;
  v344 = STACK[0x3B8];
  if (v250)
  {
    v344 = STACK[0x3B4];
  }

  v345 = STACK[0x3B0];
  if (v250)
  {
    v345 = STACK[0x3A8];
  }

  LODWORD(STACK[0x400]) = v345;
  v346 = STACK[0x3DC];
  if (v250)
  {
    v346 = STACK[0x3D4];
  }

  LODWORD(STACK[0x3F8]) = v346;
  if ((v329 & v335) != 0)
  {
    LODWORD(v335) = -v335;
  }

  v347 = v334 ^ (v335 + v329);
  v348 = v331 ^ v326 ^ 0x7CA10A05;
  v349 = *(v274 + 4 * ((v331 ^ v326) ^ 0x3Fu)) ^ 0xEB3FC63A;
  v350 = v347 + v349 - 2 * (v347 & v349);
  v351 = v350 ^ v328;
  v352 = v350 ^ v328 ^ 0xFA7A2E4D;
  v353 = v352 ^ v331;
  HIDWORD(v355) = *(v274 + 4 * (((v350 ^ v328 ^ 0x2E4D ^ v331 ^ v348) >> 8) ^ 0x3Du)) ^ 0x39ECC3F;
  LODWORD(v355) = HIDWORD(v355);
  v354 = v355 >> 24;
  LODWORD(v355) = __ROR4__(*(v275 + 4 * (((v352 ^ v331 ^ v348) >> 16) ^ 0x60u)) ^ 0xECDF8FCE, 16);
  v356 = v352 ^ v331 ^ v348 ^ 0xEFB60736;
  v357 = *(v280 + 4 * (((v352 ^ v331 ^ v348) >> 24) ^ 0xB9));
  v358 = ((v354 ^ v355) + 1607716150 + (~(2 * (v354 ^ v355)) | 0x40586593) + 1) ^ *(v275 + 4 * ((v352 ^ v331 ^ v348) ^ 0xE0u)) ^ v350 ^ 0x5F1B4FCB;
  HIDWORD(v355) = v357 ^ 0x25826CDB ^ (((8 * v357) & 0x3B308800 ^ 0x39200800) - ((2 * ((8 * v357) & 0x3B308800 ^ 0x39200800)) & 0x26611000) + 389335834);
  LODWORD(v355) = HIDWORD(v355);
  v359 = ((v355 >> 8) ^ -(v355 >> 8) ^ (v358 - (v358 ^ (v355 >> 8)))) + v358;
  v360 = v351 ^ 0xB66D237E;
  v361 = (v459 ^ v307) + LODWORD(STACK[0x2C4]);
  v362 = v316 ^ 0xCE936089;
  v363 = LODWORD(STACK[0x29C]) ^ v469;
  v364 = v312 ^ v363;
  v365 = v363 ^ v319 ^ 0xACF9BB2C;
  v366 = v363 ^ v362;
  v367 = v363 ^ v313 ^ 0x15FE43F7;
  v368 = v461 ^ v320 ^ 0xB9A237E1;
  v369 = v461 ^ v318 ^ 0x62CF149F;
  v370 = v461 ^ v321 ^ 0xA068FF4E;
  v371 = STACK[0x4B0];
  v372 = LODWORD(STACK[0x4B0]) ^ v331 ^ 0x7BE3974B;
  HIDWORD(v455) = v361 + v372;
  v373 = (v361 + v372) ^ v364;
  if (v373)
  {
    v374 = v461 ^ v320 ^ 0xB9A237E1;
  }

  else
  {
    v374 = v369;
  }

  LODWORD(STACK[0x380]) = v374;
  if (v373)
  {
    v375 = v369;
  }

  else
  {
    v375 = v458 ^ v326;
  }

  if (v373)
  {
    v376 = v458 ^ v326;
  }

  else
  {
    v376 = v370;
  }

  if (v373)
  {
    v377 = v370;
  }

  else
  {
    v377 = v368;
  }

  v378 = v453 ^ v348;
  v379 = v371 ^ 0x1F49A78 ^ v329;
  v380 = v371 ^ 0x1F49A78 ^ v330;
  v381 = HIDWORD(v453) ^ 0x747DB54B ^ v350;
  v382 = HIDWORD(v453) ^ 0xD67DB54B ^ v352;
  v383 = HIDWORD(v453) ^ 0xAADCBF4E ^ v353;
  v384 = LODWORD(STACK[0x4C8]) ^ v360 ^ v359 ^ 0xC0D27171;
  v385 = v353 ^ v360 ^ v359 ^ v454 ^ 0x30B60736;
  v386 = v454 ^ v359;
  v387 = v456 ^ v356;
  v388 = v385 ^ v356;
  if (v373)
  {
    v389 = v385;
  }

  else
  {
    v389 = v384;
  }

  LODWORD(STACK[0x398]) = v389;
  if (v373)
  {
    v390 = v385 ^ v356;
  }

  else
  {
    v390 = v385;
  }

  if (v373)
  {
    v388 = v386;
  }

  LODWORD(STACK[0x390]) = v388;
  if (v373)
  {
    v391 = v384;
  }

  else
  {
    v391 = v386;
  }

  v392 = LODWORD(STACK[0x430]) ^ 0x6DD6E7FD;
  LODWORD(STACK[0x2C4]) = v344;
  v393 = (v344 + 487773007 + v392) ^ 0x94AE334;
  v394 = LODWORD(STACK[0x3F0]) ^ 0x406BB31u;
  v395 = ((((LODWORD(STACK[0x418]) ^ 0x98309E84 ^ (LODWORD(STACK[0x440]) + 1426332996)) - 693118922) ^ LODWORD(STACK[0x410])) >> 1) + 861368245;
  v396 = 2 * (v393 + LODWORD(STACK[0x408])) + 27645340;
  v397 = 2 * (LODWORD(STACK[0x4A0]) - LODWORD(STACK[0x3D0]) + ((LODWORD(STACK[0x470]) + 236721140) ^ 0x1CD1B41C)) - 332133295;
  v398 = *(STACK[0x4D8] + 8 * ((*(STACK[0x4D8] + 8 * ((*(STACK[0x4D8] + 8 * ((*(STACK[0x4D8] + 8 * (0x941A4C31 % v394)) + 1968028560) % v394)) + 2236384502) % v394)) + 2095419359) % v394)) + 204802178;
  STACK[0x4A8] = v394;
  LODWORD(v398) = v398 % v394 - ((2 * (v398 % v394)) & 0x4353D46) - 501571933;
  v399 = (((v398 ^ 0x5C130664) - 653958528) ^ ((v398 ^ 0x7CC492AC) - 103614792) ^ ((v398 ^ 0xC2CD0A6B) + 1205562993)) - 652259880;
  v400 = LODWORD(STACK[0x498]) + 579;
  LODWORD(STACK[0x388]) = v364 ^ 0x59E94EC4;
  if (v373)
  {
    v401 = v364 ^ 0x59E94EC4;
  }

  else
  {
    v401 = v366;
  }

  if (v373)
  {
    v402 = v366;
  }

  else
  {
    v402 = v365;
  }

  LODWORD(STACK[0x428]) = v402;
  LODWORD(STACK[0x420]) = v367;
  if (v373)
  {
    v403 = v365;
  }

  else
  {
    v403 = v367;
  }

  LODWORD(v457) = v378;
  if (v373)
  {
    v404 = v379;
  }

  else
  {
    v404 = v378;
  }

  if (v373)
  {
    v405 = v380;
  }

  else
  {
    v405 = v379;
  }

  LODWORD(STACK[0x478]) = v405;
  HIDWORD(v457) = v372;
  if (v373)
  {
    v406 = v372;
  }

  else
  {
    v406 = v380;
  }

  if (v373)
  {
    v407 = v382;
  }

  else
  {
    v407 = v381;
  }

  if (v373)
  {
    v408 = v387;
  }

  else
  {
    v408 = v383;
  }

  LODWORD(STACK[0x4D0]) = v373;
  LODWORD(STACK[0x498]) = v397;
  v409 = v397 ^ 0xD4AD8E21;
  LODWORD(STACK[0x4C8]) = v396;
  LODWORD(STACK[0x4B0]) = v395;
  HIDWORD(v452) = v401;
  HIDWORD(v451) = v403;
  if ((v373 & 2) != 0)
  {
    v410 = v401;
  }

  else
  {
    v410 = v403;
  }

  LODWORD(STACK[0x2DC]) = v410;
  LODWORD(v455) = v375;
  HIDWORD(v453) = v377;
  if ((v373 & 2) != 0)
  {
    v411 = v375;
  }

  else
  {
    v411 = v377;
  }

  LODWORD(STACK[0x2E0]) = v411;
  LODWORD(v460) = v376;
  v412 = STACK[0x380];
  if ((v373 & 2) == 0)
  {
    v412 = v376;
  }

  LODWORD(STACK[0x2E8]) = v412;
  LODWORD(v452) = v404;
  LODWORD(v451) = v406;
  if ((v373 & 2) != 0)
  {
    v413 = v406;
  }

  else
  {
    v413 = v404;
  }

  LODWORD(STACK[0x2F0]) = v413;
  LODWORD(STACK[0x328]) = v407;
  LODWORD(STACK[0x320]) = v408;
  if ((v373 & 2) != 0)
  {
    v414 = v407;
  }

  else
  {
    v414 = v408;
  }

  LODWORD(STACK[0x2F8]) = v414;
  LODWORD(STACK[0x350]) = v390;
  LODWORD(STACK[0x310]) = v391;
  if ((v373 & 2) != 0)
  {
    v415 = v390;
  }

  else
  {
    v415 = v391;
  }

  LODWORD(v462) = v415;
  v416 = 0xBF25396F735B7765 * *(STACK[0x4D8] + 8 * (((v400 - 94) ^ 0x47B0E221056636AFLL) + 1910425234) - 0x3D87110BBA27A720);
  v417 = ((v400 - 94) ^ 0x47B0E221056636AFLL) + 0x6AB0228C045F8A4ALL + (((v416 ^ 0x1135B1715BEE7535) + 0x4405711C2CE60261) ^ ((v416 ^ 0x960C91CB1EAFB0E4) - 0x3CC3AE599658384ELL) ^ ((v416 ^ 0x41897AD6C66B0DFELL) + 0x14B9BABBB1637AACLL));
  v418 = (v417 ^ 0xB85E444D305717E4) & (2 * (v417 & 0xBA1E6151021787E9)) ^ v417 & 0xBA1E6151021787E9;
  v419 = ((2 * (v417 ^ 0xDC5604ED30511434)) ^ 0xCC90CB78648D27BALL) & (v417 ^ 0xDC5604ED30511434) ^ (2 * (v417 ^ 0xDC5604ED30511434)) & 0x664865BC324693DCLL;
  v420 = (v419 ^ 0x4200210802048388) & (4 * v418) ^ v418;
  v421 = ((4 * (v419 ^ 0x2248248412429045)) ^ 0x992196F0C91A4F74) & (v419 ^ 0x2248248412429045) ^ (4 * (v419 ^ 0x2248248412429045)) & 0x664865BC324693DCLL;
  v422 = (v421 ^ 0x4B000020350) & (16 * v420) ^ v420;
  v423 = ((16 * (v421 ^ 0x6648610C32449089)) ^ 0x64865BC324693DD0) & (v421 ^ 0x6648610C32449089) ^ (16 * (v421 ^ 0x6648610C32449089)) & 0x664865BC324693D0;
  v424 = (v423 ^ 0x6400418020401100) & (v422 << 8) ^ v422;
  v425 = (((v423 ^ 0x248243C1206820DLL) << 8) ^ 0x4865BC324693DD00) & (v423 ^ 0x248243C1206820DLL) ^ ((v423 ^ 0x248243C1206820DLL) << 8) & 0x664865BC32469300;
  v426 = v424 ^ 0x664865BC324693DDLL ^ (v425 ^ 0x4040243002020000) & (v424 << 16);
  v427 = v417 - 0x45E19EAEFDE87817 + (((v417 ^ (2 * ((v426 << 32) & 0x664865BC00000000 ^ v426 ^ ((v426 << 32) ^ 0x324693DD00000000) & (((v425 ^ 0x2608418C304402DDLL) << 16) & 0x664865BC00000000 ^ 0x24045B800000000 ^ (((v425 ^ 0x2608418C304402DDLL) << 16) ^ 0x65BC324600000000) & (v425 ^ 0x2608418C304402DDLL))))) >> 32) ^ 0xFFFFFFFFCDF156EELL) + 1;
  v428 = v427 + (v427 >> 16) + ((v427 + (v427 >> 16)) >> 8) - 0x6E19B5785F945D20;
  v429 = v428 ^ v409;
  v430 = ((v400 - 94) ^ 0x47B0E221056636AFLL) + 0x146346719E56BEABLL + (((v428 ^ v416 ^ 0x8CCAE128E6D2C3F7) + 0x3120678CF5A657F9) ^ ((v428 ^ v416 ^ 0x86BDDD1BBE07923ALL) + 0x3B575BBFAD730636) ^ ((v428 ^ v416 ^ 0xA773C3358D551CDLL) - 0x48624568B45E3A3DLL));
  v431 = (v430 ^ 0xD7750AA52AED7CFALL) & (2 * (v430 & 0xE60150C948CE7EF3)) ^ v430 & 0xE60150C948CE7EF3;
  v432 = ((2 * (v430 ^ 0xD3778BA73A75E9B8)) ^ 0x6AEDB6DCE5772E96) & (v430 ^ 0xD3778BA73A75E9B8) ^ (2 * (v430 ^ 0xD3778BA73A75E9B8)) & 0x3576DB6E72BB974ALL;
  v433 = v432 ^ 0x1512492212889149;
  v434 = (v432 ^ 0x25148A4C70B30600) & (4 * v431) ^ v431;
  v435 = ((4 * v433) ^ 0xD5DB6DB9CAEE5D2CLL) & v433 ^ (4 * v433) & 0x3576DB6E72BB9748;
  v436 = (v435 ^ 0x1552492842AA1500) & (16 * v434) ^ v434;
  v437 = ((16 * (v435 ^ 0x2024924630118243)) ^ 0x576DB6E72BB974B0) & (v435 ^ 0x2024924630118243) ^ (16 * (v435 ^ 0x2024924630118243)) & 0x3576DB6E72BB9740;
  v438 = (v437 ^ 0x1564926622B91400) & (v436 << 8) ^ v436;
  v439 = (((v437 ^ 0x201249085002834BLL) << 8) ^ 0x76DB6E72BB974B00) & (v437 ^ 0x201249085002834BLL) ^ ((v437 ^ 0x201249085002834BLL) << 8) & 0x3576DB6E72BB9700;
  v440 = v438 ^ 0x3576DB6E72BB974BLL ^ (v439 ^ 0x34524A6232930000) & (v438 << 16);
  v441 = v430 - 0x19FEAF36B731810DLL + (((v430 ^ (2 * ((v440 << 32) & 0x3576DB6E00000000 ^ v440 ^ ((v440 << 32) ^ 0x72BB974B00000000) & (((v439 ^ 0x124910C4028944BLL) << 16) & 0x3576DB6E00000000 ^ 0x2410894400000000 ^ (((v439 ^ 0x124910C4028944BLL) << 16) ^ 0x5B6E72BB00000000) & (v439 ^ 0x124910C4028944BLL))))) >> 32) ^ 0xFFFFFFFF13763F7ELL) + 1;
  v442 = v441 + (v441 >> 16) + ((v441 + (v441 >> 16)) >> 8) - 0x6E19B5785F945D20;
  v443 = v429 ^ v442;
  v444 = ((v400 - 94) ^ 0x47B0E221056636AFLL) + 0x2332603C927D4BD6 + (((v442 ^ v416 ^ 0x66A915F940A148BCLL) + 0x6A40B45AE46FB0B6) ^ ((v442 ^ v416 ^ 0x87D3AF260AADA677) - 0x74C5F17A519CA181) ^ ((v442 ^ v416 ^ 0xE17ABADF4A0CEECBLL) - 0x126CE483113DE93DLL));
  v445 = (((v444 ^ 0xFF10E6E089637FB8) + 0x7723FD1E4A2EF276) ^ v444 ^ ((v444 ^ 0x55A6380E2E774BCBLL) - 0x226ADC0F12C539F9) ^ ((v444 ^ 0x68C5C42DF65DBDB4) - 0x1F09202CCAEFCF84) ^ ((v444 ^ 0xB5BFFEC26DFBFBF7) + 0x3D8CE53CAEB6763BLL)) >> 32;
  v446 = (v445 ^ 0x5FCAE615A1A5F8EALL) + 0x413D3E2FA7842DE4;
  v447 = v444 - (((v445 ^ 0x47A03BBEB324F66DLL) + 0x5957E384B5052365) ^ v446 ^ ((v445 ^ 0x186ADDAB654DEA86) + 0x69D0591636C3F90)) - 0x58D50BC6CAC54129;
  v448 = v447 + (v447 >> 16) + ((v447 + (v447 >> 16)) >> 8);
  v449 = v399 > 0x402C4892;
  if (v399 < 0x402C4891)
  {
    v449 = 1;
  }

  return (*(STACK[0x4E0] + 8 * ((208 * !v449) ^ v400)))(v443, v446, v443 ^ (v448 - 1603558688), v399, 0x91E64A87A06BA2E0, 0xE60150C948CE7EF3, 3461186048, v448 - 0x6E19B5785F945D20, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, v451, v452, __PAIR64__(v383, v387), __PAIR64__(v381, v382), v453, v455, v457, v460, v462, v463, v464, v465, v466);
}

uint64_t sub_1002BF4D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, uint64_t a58, uint64_t a59, int a60, int a61, int a62, int a63)
{
  v74 = STACK[0x4C0];
  if (STACK[0x4C0])
  {
    v75 = STACK[0x3F4];
  }

  else
  {
    v75 = STACK[0x354];
  }

  if (v74)
  {
    v76 = STACK[0x358];
  }

  else
  {
    v76 = STACK[0x454];
  }

  if (v74)
  {
    v77 = STACK[0x2D0];
  }

  else
  {
    v77 = STACK[0x2C8];
  }

  if (v74)
  {
    v78 = STACK[0x2A4];
  }

  else
  {
    v78 = STACK[0x2AC];
  }

  if (v74)
  {
    v79 = STACK[0x35C];
  }

  else
  {
    v79 = STACK[0x294];
  }

  if (v74)
  {
    a72 = STACK[0x2D4];
  }

  if (v74)
  {
    v81 = STACK[0x298];
  }

  else
  {
    v81 = STACK[0x2D8];
  }

  if (v74)
  {
    v82 = a71;
  }

  else
  {
    v82 = STACK[0x290];
  }

  if (v74)
  {
    a63 = STACK[0x2B0];
  }

  v84 = (STACK[0x4C0] & 2) == 0;
  v85 = STACK[0x468];
  if ((STACK[0x4C0] & 2) != 0)
  {
    v85 = STACK[0x460];
  }

  LODWORD(STACK[0x2B0]) = v85;
  v86 = STACK[0x3C8];
  if (!v84)
  {
    v86 = STACK[0x3C4];
  }

  LODWORD(STACK[0x298]) = v86;
  LODWORD(STACK[0x454]) = v75;
  LODWORD(STACK[0x354]) = v76;
  if (v84)
  {
    v87 = v75;
  }

  else
  {
    v87 = v76;
  }

  LODWORD(STACK[0x290]) = v87;
  v88 = STACK[0x3A0];
  if (v84)
  {
    v89 = STACK[0x28C];
  }

  LODWORD(STACK[0x358]) = v77;
  LODWORD(STACK[0x2D8]) = v78;
  if (v84)
  {
    v90 = v78;
  }

  else
  {
    v90 = v77;
  }

  LODWORD(STACK[0x468]) = v90;
  v91 = STACK[0x3B8];
  if (!v84)
  {
    v91 = STACK[0x3B4];
  }

  LODWORD(STACK[0x460]) = v91;
  v92 = STACK[0x3B0];
  if (!v84)
  {
    v92 = STACK[0x3A8];
  }

  LODWORD(STACK[0x3F4]) = v92;
  v93 = STACK[0x3E4];
  LODWORD(STACK[0x35C]) = v79;
  if (v84)
  {
    v93 = v79;
  }

  LODWORD(STACK[0x294]) = v93;
  LODWORD(STACK[0x2D0]) = a72;
  LODWORD(STACK[0x2C8]) = v81;
  if (v84)
  {
    v94 = a72;
  }

  else
  {
    v94 = v81;
  }

  LODWORD(STACK[0x3C4]) = v94;
  LODWORD(STACK[0x2AC]) = v82;
  LODWORD(STACK[0x2A4]) = a63;
  v95 = STACK[0x4D0];
  if (STACK[0x4D0])
  {
    a61 = a60;
  }

  LODWORD(STACK[0x3C8]) = a61;
  if (v95)
  {
    a56 = a55;
  }

  if (v95)
  {
    a54 = a57;
  }

  v99 = STACK[0x388];
  if (v95)
  {
    v99 = STACK[0x420];
  }

  LODWORD(STACK[0x420]) = v99;
  v100 = (v95 & 2) == 0;
  if (!v100)
  {
    a53 = a51;
  }

  LODWORD(STACK[0x3A0]) = a53;
  v102 = STACK[0x380];
  if (!v100)
  {
    v102 = a62;
  }

  LODWORD(STACK[0x3A8]) = v102;
  if (v100)
  {
    a52 = a50;
  }

  LODWORD(STACK[0x3B0]) = a52;
  if (v100)
  {
    v104 = a56;
  }

  else
  {
    v104 = a54;
  }

  LODWORD(STACK[0x3B4]) = v104;
  if (v100)
  {
    a56 = a54;
  }

  LODWORD(STACK[0x3B8]) = a56;
  v105 = (((LODWORD(STACK[0x3F0]) ^ 0xB3D6278F) + 1233372959) ^ ((LODWORD(STACK[0x3F0]) ^ 0xDCF2C931) + 648489377) ^ ((LODWORD(STACK[0x3F0]) ^ 0x6B22558F) - 1854425825)) + 1249128737;
  v106 = STACK[0x398];
  if (v100)
  {
    v107 = STACK[0x390];
  }

  v108 = v105 < 0x48C78CC2;
  v109 = 0xBF25396F735B7765 * *(STACK[0x4D8] + 8 * ((v73 | ((v73 < 0x71DEC692) << 32)) + 0x5308D2E29B1722A9) + 0x67B968E79850B628);
  v110 = (v73 | ((v73 < 0x71DEC692) << 32)) - 0x32C3F6D01B2C27A9 + (((v109 ^ a8 ^ 0x12EE88208708FC12) - 0x4BB5F39DD78D3EB0) ^ ((v109 ^ a8 ^ ((v72 - 1891) - 0x6F5CD57CB2077E32)) + 0x3607AEC1E282AE36) ^ ((v109 ^ a8 ^ 0x824DA2A3CAF06F7ALL) + 0x24E926E1658A5228));
  v111 = v110 - 0x73E08D73062CDC46 + (((((v110 ^ 0xBA2F924EA4245C3BLL) + 0x3630E0C25DF77F84) ^ v110 ^ ((v110 ^ 0x38EABDBE58FA1D50) - 0x4B0A30CD5ED6C117) ^ ((v110 ^ 0x4E4A2D7F05417B50) - 0x3DAAA00C036DA714) ^ ((v110 ^ 0xBF6F8FFCFFB3E678) + 0x3370FD700660C5C8)) >> 32) ^ 0xFFFFFFFF8C1F728CLL);
  v112 = v111 + (v111 >> 16) + ((v111 + (v111 >> 16)) >> 8) - 0x6E19B5785F945D20;
  v113 = v112 ^ a3;
  v114 = (v73 | ((v73 < 0x71DEC692) << 32)) + 0x5748B171036FCC9CLL + (((v112 ^ v109 ^ 0xABCA4A31F1ED837FLL) + 0x1835A9250EC3094) ^ ((v112 ^ v109 ^ 0xB2C7093D939CC47ALL) + 0x188E199E329D7797) ^ ((v112 ^ v109 ^ 0x190D430C62714705) - 0x4CBBAC503C8F0B16));
  v115 = (v114 ^ 0xFC6FBDE2E10FB6E4) & (2 * (v114 & 0xFE6E3DEAE9AFB8E5)) ^ v114 & 0xFE6E3DEAE9AFB8E5;
  v116 = ((2 * (v114 ^ 0x2427DCE7E20AB72ELL)) ^ 0xB493C21A174A1F96) & (v114 ^ 0x2427DCE7E20AB72ELL) ^ (2 * (v114 ^ 0x2427DCE7E20AB72ELL)) & 0xDA49E10D0BA50FCALL;
  v117 = v116 ^ 0x4A48210508A50049;
  v118 = (v116 ^ 0x9001C008030007C0) & (4 * v115) ^ v115;
  v119 = ((4 * v117) ^ 0x692784342E943F2CLL) & v117 ^ (4 * v117) & 0xDA49E10D0BA50FC8;
  v120 = (v119 ^ 0x480180040A840F00) & (16 * v118) ^ v118;
  v121 = ((16 * (v119 ^ 0x92486109012100C3)) ^ 0xA49E10D0BA50FCB0) & (v119 ^ 0x92486109012100C3) ^ (16 * (v119 ^ 0x92486109012100C3)) & 0xDA49E10D0BA50FC0;
  v122 = (v121 ^ 0x800800000A000C00) & (v120 << 8) ^ v120;
  v123 = (((v121 ^ 0x5A41E10D01A5034BLL) << 8) ^ 0x49E10D0BA50FCB00) & (v121 ^ 0x5A41E10D01A5034BLL) ^ ((v121 ^ 0x5A41E10D01A5034BLL) << 8) & 0xDA49E10D0BA50F00;
  v124 = v122 ^ 0xDA49E10D0BA50FCBLL ^ (v123 ^ 0x4841010901050000) & (v122 << 16);
  v125 = ((v114 ^ (2 * ((v124 << 32) & 0x5A49E10D00000000 ^ v124 ^ ((v124 << 32) ^ 0xBA50FCB00000000) & (((v123 ^ 0x9208E0040AA004CBLL) << 16) & 0x5A49E10D00000000 ^ 0x1A40E00800000000 ^ (((v123 ^ 0x9208E0040AA004CBLL) << 16) ^ 0x610D0BA500000000) & (v123 ^ 0x9208E0040AA004CBLL))))) >> 32) ^ 0x5EFFFDE2;
  v126 = v114 - 0x191C2151650471BLL + v125 - 2 * v125 + ((v114 - 0x191C2151650471BLL + v125 - 2 * v125) >> 16);
  v127 = v126 + (v126 >> 8) - 0x6E19B5785F945D20;
  v128 = v113 ^ v127;
  v129 = (v73 | ((v73 < 0x71DEC692) << 32)) + 0x6F15ED263CD7A4BELL + (((v127 ^ v109 ^ 0x28BE24A70E2535AFLL) - 0xE350B3044341760) ^ ((v127 ^ v109 ^ 0x3771A29EDE3FFA1DLL) - 0x11FA8D09942ED8D2) ^ ((v127 ^ v109 ^ 0x1FCF8639D01ACFB2) - 0x3944A9AE9A0BED7DLL));
  v130 = v129 - 0x488ABD8F64A54880 + (((((v129 ^ 0xE0D8683B2EA8EEEALL) + 0x57AD2A4BB5F25995) ^ v129 ^ ((v129 ^ 0xFF6AE7C795B028E7) + 0x481FA5B70EEA9F9ALL) ^ ((v129 ^ 0xE823DCC808427152) + 0x5F569EB89318C62ELL) ^ ((v129 ^ 0xBF1BEEBBD7FFFFDELL) + 0x86EACCB4CA548A2)) >> 32) ^ 0xFFFFFFFFB7754270);
  v131 = v108 ^ (v73 - 689387983 < 0x48C78CC2);
  v132 = v130 + (v130 >> 16) + ((v130 + (v130 >> 16)) >> 8);
  if (!v131)
  {
    v108 = v105 > v73 - 689387983;
  }

  v133 = *(STACK[0x4E0] + 8 * ((491 * !v108) ^ v72));
  return v133(v133, -1217052048, v128 ^ (v132 - 1603558688), v131, 0xB77542709B5AB780, 0x5F569EB89318C62ELL, 3605579313, v132 - 0x6E19B5785F945D20, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49);
}

uint64_t sub_1002BFDA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v65 = (STACK[0x4C0] & 2) == 0;
  v66 = STACK[0x4B8];
  if ((STACK[0x4C0] & 2) == 0)
  {
    v66 = STACK[0x490];
  }

  LODWORD(v159) = v66;
  v67 = STACK[0x454];
  if ((STACK[0x4C0] & 2) == 0)
  {
    v67 = STACK[0x354];
  }

  LODWORD(STACK[0x2D4]) = v67;
  v68 = STACK[0x358];
  if (!v65)
  {
    v68 = STACK[0x2D8];
  }

  LODWORD(STACK[0x454]) = v68;
  v69 = STACK[0x488];
  if (v65)
  {
    v69 = STACK[0x448];
  }

  LODWORD(STACK[0x448]) = v69;
  v70 = STACK[0x3E4];
  if (!v65)
  {
    v70 = STACK[0x35C];
  }

  LODWORD(STACK[0x3E4]) = v70;
  v71 = STACK[0x2AC];
  if (!v65)
  {
    v71 = STACK[0x2A4];
  }

  HIDWORD(v159) = v71;
  LODWORD(STACK[0x358]) = HIDWORD(a55) ^ LODWORD(STACK[0x388]);
  v72 = (STACK[0x4D0] & 2) == 0;
  v73 = a55;
  if ((STACK[0x4D0] & 2) != 0)
  {
    v73 = HIDWORD(a54);
  }

  LODWORD(STACK[0x388]) = v73;
  v74 = STACK[0x398];
  if (!v72)
  {
    v74 = STACK[0x390];
  }

  LODWORD(STACK[0x398]) = v74;
  v75 = (a8 ^ 0xD76D59B6069CA26ELL) - ((a8 ^ 0xD76D59B6069CA26ELL) >> 30) + (((a8 ^ 0xD76D59B6069CA26ELL) - ((a8 ^ 0xD76D59B6069CA26ELL) >> 30)) >> 14);
  v76 = v75 - (v75 >> 4);
  v77 = ((v76 ^ 0x8C7DB11C1BB910A4) >> ((v64 + 63) ^ 0xC2u)) + (v76 ^ 0x8C7DB11C1BB910A4);
  v78 = v77 - (v77 >> 9) + ((v77 - (v77 >> 9)) >> 3);
  v79 = v78 + 0x3690DB5D4C331D54 - ((v78 + 0x3690DB5D4C331D54) >> 29) - ((v78 + 0x3690DB5D4C331D54 - ((v78 + 0x3690DB5D4C331D54) >> 29)) >> 9);
  v80 = v79 - (v79 >> 3);
  v81 = v80 - 0xA56C130BF1F620DLL - ((v80 - 0xA56C130BF1F620DLL) >> 26) - ((v80 - 0xA56C130BF1F620DLL - ((v80 - 0xA56C130BF1F620DLL) >> 26)) >> 14);
  v82 = v81 - (v81 >> 7);
  LODWORD(v76) = v82 ^ v76;
  v83 = (v82 ^ 0x7BC03D24179C195CLL) - ((v82 ^ 0x7BC03D24179C195CLL) >> 27) + (((v82 ^ 0x7BC03D24179C195CLL) - ((v82 ^ 0x7BC03D24179C195CLL) >> 27)) >> 9);
  v84 = v83 - (v83 >> 1);
  LODWORD(v78) = v84 ^ v78;
  v85 = v84 - 0x5B46CA940EEFB0F3 - ((v84 - 0x5B46CA940EEFB0F3) >> 28) - ((v84 - 0x5B46CA940EEFB0F3 - ((v84 - 0x5B46CA940EEFB0F3) >> 28)) >> 12);
  v86 = v85 - (v85 >> 3);
  v87 = v86 - 0xC5B39F814D45862 + ((v86 - 0xC5B39F814D45862) >> 30) + ((v86 - 0xC5B39F814D45862 + ((v86 - 0xC5B39F814D45862) >> 30)) >> 10);
  v88 = v87 - (v87 >> 3);
  v89 = (v88 ^ 0xEB853C9A73BC9BDLL) - ((v88 ^ 0xEB853C9A73BC9BDLL) >> 27) + (((v88 ^ 0xEB853C9A73BC9BDLL) - ((v88 ^ 0xEB853C9A73BC9BDLL) >> 27)) >> 12);
  v90 = v89 + (v89 >> 1);
  v91 = v76 ^ v61 ^ v88;
  v92 = v78 ^ v62 ^ v90;
  v93 = v90 - 0x19AEA5D6B20CAF27 + ((v90 - 0x19AEA5D6B20CAF27) >> 30) - ((v90 - 0x19AEA5D6B20CAF27 + ((v90 - 0x19AEA5D6B20CAF27) >> 30)) >> 11);
  v94 = v86 ^ v80 ^ a3 ^ (v93 - (v93 >> 6));
  LODWORD(v86) = 16843009 * (v91 & 0xFE ^ 0xAA) - 1021731694;
  LODWORD(STACK[0x2AC]) = v86;
  LODWORD(v78) = (v86 ^ 0x3AC45A4D) & (2 * (v86 & 0x3CE6636E)) ^ v86 & 0x3CE6636E;
  LODWORD(v93) = ((2 * (v86 ^ 0x2B849E41)) ^ 0x2EC5FA5E) & (v86 ^ 0x2B849E41) ^ (2 * (v86 ^ 0x2B849E41)) & 0x1762FD2E;
  LODWORD(v80) = v93 ^ 0x11220521;
  LODWORD(v93) = (v93 ^ 0x6009808) & (4 * v78) ^ v78;
  LODWORD(v78) = ((4 * v80) ^ 0x5D8BF4BC) & v80 ^ (4 * v80) & 0x1762FD2C;
  LODWORD(v93) = (v78 ^ 0x1502F420) & (16 * v93) ^ v93;
  LODWORD(v78) = ((16 * (v78 ^ 0x2600903)) ^ 0x762FD2F0) & (v78 ^ 0x2600903) ^ (16 * (v78 ^ 0x2600903)) & 0x1762FD20;
  LODWORD(v93) = v93 ^ 0x1762FD2F ^ (v78 ^ 0x1622D000) & (v93 << 8);
  v95 = (v93 << 16) & 0x17620000 ^ v93 ^ ((v93 << 16) ^ 0x7D2F0000) & (((v78 ^ 0x1402D0F) << 8) & 0x17620000 ^ 0x15020000 ^ (((v78 ^ 0x1402D0F) << 8) ^ 0x62FD0000) & (v78 ^ 0x1402D0F));
  v96 = v91 ^ 0xCA ^ ((v91 ^ 0x1ACA) >> 8) ^ ((v91 ^ 0xA1831ACA) >> 16) ^ HIBYTE(v91) ^ 0xD0;
  LODWORD(v86) = (*(STACK[0x4D8] + 8 * ((*(STACK[0x4D8] + 8 * ((*(STACK[0x4D8] + 8 * ((*(STACK[0x4D8] + 8 * (0xA0CEC3B7 % STACK[0x4A8])) + 950935619) % STACK[0x4A8])) + 4139440780) % STACK[0x4A8])) + 926257647) % STACK[0x4A8])) + 2144989500) % STACK[0x4A8];
  v97 = ((((v86 - ((2 * v86) & 0x359E9728) + 1523534740) ^ 0x93DE096F) + 487692464) ^ (((v86 - ((2 * v86) & 0x359E9728) + 1523534740) ^ 0xACEA8442) + 572855683) ^ (((v86 - ((2 * v86) & 0x359E9728) + 1523534740) ^ 0x65FBC6B9) - 348891270)) - 409080816;
  v98 = STACK[0x428];
  if (!v72)
  {
    v98 = STACK[0x420];
  }

  LODWORD(STACK[0x2D8]) = v98;
  LODWORD(a55) = 2 * v95;
  v99 = STACK[0x478];
  if (v72)
  {
    v99 = STACK[0x3C8];
  }

  LODWORD(STACK[0x390]) = v99;
  v100 = v94 & 7 ^ 3;
  LODWORD(STACK[0x35C]) = v100;
  v101 = -v100 & 7;
  if ((v94 & 7) == 3)
  {
    v102 = 0;
  }

  else
  {
    v102 = 255;
  }

  LODWORD(STACK[0x354]) = v101;
  v103 = v102 << v101;
  HIDWORD(v157) = 16843009 * v103;
  LODWORD(STACK[0x2A4]) = (1224736768 * v103) & v92 ^ HIDWORD(v157);
  if ((v94 & 7) == 3)
  {
    v104 = 0;
  }

  else
  {
    v104 = ~v103;
  }

  LODWORD(v157) = v91 & v104;
  LODWORD(STACK[0x488]) = v92;
  HIDWORD(a52) = v92 ^ 0x8F ^ ((v92 ^ 0xAA8F) >> 8) ^ ((v92 ^ 0xD1BDAA8F) >> 16) ^ HIBYTE(v92) ^ 0x38;
  v105 = LODWORD(STACK[0x498]) ^ 0xC13710BE;
  v106 = LODWORD(STACK[0x4C8]) ^ 0xCAFDFD50;
  LODWORD(STACK[0x380]) = (16843009 * v96) ^ 0x71717171;
  v107 = LODWORD(STACK[0x4B0]) ^ 0xBADB60D0;
  v108 = v64 + 5439;
  LODWORD(STACK[0x4B8]) = v91;
  HIDWORD(v158) = v91 & 0xFFFFFF01;
  LODWORD(STACK[0x490]) = v94;
  HIDWORD(a54) = v94 & 0xFFFFFFF8;
  v109 = v97 < 0xBB9EC665;
  v110 = ((v64 - 3623) ^ 0x55DE2D6Cu) > 0x55DE2E1F;
  v111 = ((v110 << 32) | 0x55DE2E1F) + 0x3B8CD67492161470;
  v112 = 0xBF25396F735B7765 * *(STACK[0x4D8] + 8 * v111 + 0x23994C58C05DEB88);
  v113 = ((v110 << 32) | 0x55DE2E1F) - 0x491851ED98B25CDELL + (((v112 ^ v63 ^ 0x16377039A126CE48) - 0x7169291F557D2D05) ^ ((v112 ^ v63 ^ 0xFC20263A80ABFEDFLL) + 0x648180E38B0FE26ELL) ^ ((v112 ^ v63 ^ 0xEA175603218D3097) + 0x72B6F0DA2A292C26));
  v114 = (v113 ^ 0x30660255263A808DLL) & (2 * (v113 & 0xB076AB143730120CLL)) ^ v113 & 0xB076AB143730120CLL;
  v115 = ((2 * (v113 ^ 0x7043507D461A8085)) ^ 0x806BF6D2E2552512) & (v113 ^ 0x7043507D461A8085) ^ (2 * (v113 ^ 0x7043507D461A8085)) & 0xC035FB69712A9288;
  v116 = v115 ^ 0x40140929112A9289;
  v117 = (v115 ^ 0x8021F148602A0288) & (4 * v114) ^ v114;
  v118 = ((4 * v116) ^ 0xD7EDA5C4AA4A24) & v116 ^ (4 * v116) & 0xC035FB69712A9288;
  v119 = (v118 ^ 0x15E921402A0200) & (16 * v117) ^ v117;
  v120 = ((16 * (v118 ^ 0xC020124831009089)) ^ 0x35FB69712A92890) & (v118 ^ 0xC020124831009089) ^ (16 * (v118 ^ 0xC020124831009089)) & 0xC035FB69712A9280;
  v121 = (v120 ^ 0x15B20110280000) & (v119 << 8) ^ v119;
  v122 = (((v120 ^ 0xC020496861029209) << 8) ^ 0x35FB69712A928900) & (v120 ^ 0xC020496861029209) ^ ((v120 ^ 0xC020496861029209) << 8) & 0xC035FB69712A9200;
  v123 = v121 ^ 0xC035FB69712A9289 ^ (v122 ^ 0x31696120020000) & (v121 << 16);
  v124 = v113 - 0x4F8954EBC8CFEDF4 + (((v113 ^ (2 * ((v123 << 32) & 0x4035FB6900000000 ^ v123 ^ ((v123 << 32) ^ 0x712A928900000000) & (((v122 ^ 0xC004920851281289) << 16) & 0x4035FB6900000000 ^ 0x148A4100000000 ^ (((v122 ^ 0xC004920851281289) << 16) ^ 0x7B69712A00000000) & (v122 ^ 0xC004920851281289))))) >> 32) ^ 0xFFFFFFFF4FA3862BLL) + 1;
  v125 = v124 + (v124 >> 16) + ((v124 + (v124 >> 16)) >> 8);
  v126 = v111 + 0x575DCFBD77B5DFA2 + ((((v125 - 0x6E19B5785F945D20) ^ v112 ^ 0xDC3F284637F02282) + 0x129A9A0965EB7006) ^ (((v125 - 0x6E19B5785F945D20) ^ v112 ^ 0x62FC39C72697A3ACLL) - 0x53A674778B730ED4) ^ (((v125 - 0x6E19B5785F945D20) ^ v112 ^ 0xBEC311811167812ELL) + 0x7066A3CE437CD3AALL));
  v127 = (v126 ^ 0x5F6F277F4EBAC316) & (2 * (v126 & 0x9E6FA77E4E3A8B47)) ^ v126 & 0x9E6FA77E4E3A8B47;
  v128 = ((2 * (v126 ^ 0x57B761234EEFD194)) ^ 0x93B18CBA01AAB5A6) & (v126 ^ 0x57B761234EEFD194) ^ (2 * (v126 ^ 0x57B761234EEFD194)) & 0xC9D8C65D00D55AD2;
  v129 = v128 ^ 0x4848424500554A51;
  v130 = (v128 ^ 0x8190C41C00811040) & (4 * v127) ^ v127;
  v131 = ((4 * v129) ^ 0x2763197403556B4CLL) & v129 ^ (4 * v129) & 0xC9D8C65D00D55AD0;
  v132 = (v131 ^ 0x140005400554A40) & (16 * v130) ^ v130;
  v133 = ((16 * (v131 ^ 0xC898C60900801093)) ^ 0x9D8C65D00D55AD30) & (v131 ^ 0xC898C60900801093) ^ (16 * (v131 ^ 0xC898C60900801093)) & 0xC9D8C65D00D55AD0;
  v134 = (v133 ^ 0x8988445000550800) & (v132 << 8) ^ v132;
  v135 = (((v133 ^ 0x4050820D008052C3) << 8) ^ 0xD8C65D00D55AD300) & (v133 ^ 0x4050820D008052C3) ^ ((v133 ^ 0x4050820D008052C3) << 8) & 0xC9D8C65D00D55A00;
  v136 = v134 ^ 0xC9D8C65D00D55AD3 ^ (v135 ^ 0xC8C0440000500000) & (v134 << 16);
  v137 = v126 - 0x61905881B1C574B9 + (((v126 ^ (2 * ((v136 << 32) & 0x49D8C65D00000000 ^ v136 ^ ((v136 << 32) ^ 0xD55AD300000000) & (((v135 ^ 0x118825D008508D3) << 16) & 0x49D8C65D00000000 ^ 0x980C60800000000 ^ (((v135 ^ 0x118825D008508D3) << 16) ^ 0x465D00D500000000) & (v135 ^ 0x118825D008508D3))))) >> 32) ^ 0xFFFFFFFFF3815099) + 1;
  v138 = v137 + (v137 >> 16) + ((v137 + (v137 >> 16)) >> 8) - 0x6E19B5785F945D20;
  v139 = (v125 - 1603558688) ^ v105 ^ v138;
  v140 = v111 - 0x75472E02BD23A836 + (((v138 ^ v112 ^ 0x2AAB1EB9F9EC7279) + 0x72F3054909220995) ^ ((v138 ^ v112 ^ 0x8A2B074B29EBC01ELL) - 0x2D8CE34426DA440CLL) ^ ((v138 ^ v112 ^ 0xA08019F2D007B267) - 0x727FDFDDF363675));
  v141 = (v140 ^ 0xC0483B1AC34EED3CLL) & (2 * (v140 & 0xE1623B9CE460E9B9)) ^ v140 & 0xE1623B9CE460E9B9;
  v142 = ((2 * (v140 ^ 0xC0480B33CB0FFC4ELL)) ^ 0x4254615E5EDE2BEELL) & (v140 ^ 0xC0480B33CB0FFC4ELL) ^ (2 * (v140 ^ 0xC0480B33CB0FFC4ELL)) & 0x212A30AF2F6F15F6;
  v143 = v142 ^ 0x212A10A121211411;
  v144 = (v142 ^ 0x20222006022611F4) & (4 * v141) ^ v141;
  v145 = ((4 * v143) ^ 0x84A8C2BCBDBC57DCLL) & v143 ^ (4 * v143) & 0x212A30AF2F6F15F4;
  v146 = (v145 ^ 0x2800AC2D2C15D0) & (16 * v144) ^ v144;
  v147 = ((16 * (v145 ^ 0x2102300302430023)) ^ 0x12A30AF2F6F15F70) & (v145 ^ 0x2102300302430023) ^ (16 * (v145 ^ 0x2102300302430023)) & 0x212A30AF2F6F15F0;
  v148 = (v147 ^ 0x2200A226611500) & (v146 << 8) ^ v146;
  v149 = (((v147 ^ 0x2108300D090E0087) << 8) ^ 0x2A30AF2F6F15F700) & (v147 ^ 0x2108300D090E0087) ^ ((v147 ^ 0x2108300D090E0087) << 8) & 0x212A30AF2F6F1500;
  v150 = v148 ^ 0x212A30AF2F6F15F7 ^ (v149 ^ 0x2020202F2F050000) & (v148 << 16);
  v151 = v140 - 0x1E9DC4631B9F1647 + (((v140 ^ (2 * ((v150 << 32) & 0x212A30AF00000000 ^ v150 ^ ((v150 << 32) ^ 0x2F6F15F700000000) & (((v149 ^ 0x10A1080006A00F7) << 16) & 0x212A30AF00000000 ^ 0x100108000000000 ^ (((v149 ^ 0x10A1080006A00F7) << 16) ^ 0x30AF2F6F00000000) & (v149 ^ 0x10A1080006A00F7))))) >> 32) ^ 0xFFFFFFFF1E9D8473);
  v152 = v151 + 1 + ((v151 + 1) >> 16) + ((v151 + 1 + ((v151 + 1) >> 16)) >> 8);
  if (v97 >= 0xBB9EC665)
  {
    v109 = v97 > 0xBB9EC666;
  }

  v153 = (v152 - 801779344);
  v154 = v139 ^ (v152 - 1603558688);
  v155 = *(STACK[0x4E0] + 8 * ((452 * !v109) ^ v108));
  LODWORD(v158) = 16843009 * v96;
  return v155(v155, 0xE1623B9CE460E9B9, v154, 1440624160, v153, 0x9E6FA77E4E3A8B47, 452, v97 < 0xBB9EC665, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, v157, a51, a52, v158, a54, a55, v159, a57, a58, a59, a60, a61);
}

uint64_t sub_1002C0C90(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v59 = (STACK[0x4C0] & 2) == 0;
  v60 = STACK[0x480];
  if ((STACK[0x4C0] & 2) != 0)
  {
    v60 = STACK[0x438];
  }

  LODWORD(STACK[0x28C]) = v60;
  v61 = STACK[0x3D8];
  if (v59)
  {
    v61 = STACK[0x3CC];
  }

  LODWORD(STACK[0x438]) = v61;
  v62 = STACK[0x2D0];
  if (v59)
  {
    v62 = STACK[0x2C8];
  }

  LODWORD(STACK[0x3D8]) = v62;
  v63 = (STACK[0x4D0] & 2) == 0;
  v64 = STACK[0x478];
  if ((STACK[0x4D0] & 2) != 0)
  {
    v64 = STACK[0x3C8];
  }

  LODWORD(STACK[0x2D0]) = v64;
  v65 = STACK[0x350];
  if (!v63)
  {
    v65 = STACK[0x310];
  }

  HIDWORD(a55) = v65;
  v106 = ~LODWORD(STACK[0x2A4]);
  LODWORD(STACK[0x480]) = a53 ^ 0x98989898 ^ (16843009 * HIDWORD(a52));
  LODWORD(STACK[0x478]) = LODWORD(STACK[0x4B8]) ^ 0xDECB3EAB;
  v66 = (((LODWORD(STACK[0x3F0]) ^ 0x29929313) - 741903485) ^ ((LODWORD(STACK[0x3F0]) ^ 0xBEBE3356) + 1156305864) ^ ((LODWORD(STACK[0x3F0]) ^ 0x932A1B74) + 1769995238)) - 1632078451;
  v67 = (v58 - 625) | 0x208Cu;
  v68 = a4 < 0x55DE2E1F;
  v69 = (a4 | (v68 << 32)) + 0x4D7AAA0A0D1C1992;
  v70 = 0xBF25396F735B7765 * *(STACK[0x4D8] + 8 * (v67 + v69) - 0x6BD5505317D349F8);
  v71 = (a4 | (v68 << 32)) - 0x4D41A77124269CBDLL + (((v70 ^ v57 ^ 0x8AC166CC6116DB13) + 0x1C97BB883F3E5B70) ^ ((v70 ^ v57 ^ 0x32ADAB4DB78FE252) - 0x5B0489F616589DD1) ^ ((v70 ^ v57 ^ 0xB86CCD81D6993941) + 0x2E3A10C588B1B93ELL));
  v72 = v71 - 0x491535D38FE011DELL + (((((v71 ^ 0xBD1990F3762E9370) + 0xBF35ADF06317D51) ^ v71 ^ ((v71 ^ 0x227F17F9CDE7A0A3) - 0x6B6A222A4207B17CLL) ^ ((v71 ^ 0x898E8D2E9FF429E0) + 0x3F644702EFEBC7C1) ^ ((v71 ^ 0x5FFD3FF7ABDD0BECLL) - 0x16E80A24243D1A33)) >> 32) ^ 0xFFFFFFFFB6EACA2CLL);
  v73 = v72 + (v72 >> 16) + ((v72 + (v72 >> 16)) >> 8) - 0x6E19B5785F945D20;
  v74 = v73 ^ a3;
  v75 = (a4 | (v68 << 32)) - 0x18C7D75EB9EF31F9 + (((v73 ^ v70 ^ 0x3C3961ED79919166) + 0x7A527587413A951ELL) ^ ((v73 ^ v70 ^ 0x9E612143C2F10BA5) - 0x27F5CAD605A5F021) ^ ((v73 ^ v70 ^ 0xA25840AEBB609AC3) - 0x1BCCAB3B7C346147));
  v76 = (v75 ^ 0x805C88E70A75FE5FLL) & (2 * (v75 & 0xD25CC2F42B65FF5ELL)) ^ v75 & 0xD25CC2F42B65FF5ELL;
  v77 = ((2 * (v75 ^ 0x45C88E71E7C2E4BLL)) ^ 0xAC0094266A33A22ALL) & (v75 ^ 0x45C88E71E7C2E4BLL) ^ (2 * (v75 ^ 0x45C88E71E7C2E4BLL)) & 0xD6004A133519D114;
  v78 = v77 ^ 0x52004A1115085115;
  v79 = (v77 ^ 0x8000400020118004) & (4 * v76) ^ v76;
  v80 = ((4 * v78) ^ 0x5801284CD4674454) & v78 ^ (4 * v78) & 0xD6004A133519D114;
  v81 = (v80 ^ 0x5000080014014000) & (16 * v79) ^ v79;
  v82 = ((16 * (v80 ^ 0x8600421321189101)) ^ 0x6004A133519D1150) & (v80 ^ 0x8600421321189101) ^ (16 * (v80 ^ 0x8600421321189101)) & 0xD6004A133519D110;
  v83 = (v82 ^ 0x4000001311191100) & (v81 << 8) ^ v81;
  v84 = (((v82 ^ 0x96004A002400C005) << 8) ^ 0x4A133519D11500) & (v82 ^ 0x96004A002400C005) ^ ((v82 ^ 0x96004A002400C005) << 8) & 0xD6004A133519D100;
  v85 = v83 ^ 0xD6004A133519D115 ^ (v84 ^ 0x21111110000) & (v83 << 16);
  v86 = v75 - 0x2DA33D0BD49A00A2 + (((v75 ^ (2 * ((v85 << 32) & 0x56004A1300000000 ^ v85 ^ ((v85 << 32) ^ 0x3519D11500000000) & (((v84 ^ 0xD60048022408C015) << 16) & 0x56004A1300000000 ^ 0x14004A0200000000 ^ (((v84 ^ 0xD60048022408C015) << 16) ^ 0x4A13351900000000) & (v84 ^ 0xD60048022408C015))))) >> 32) ^ 0xFFFFFFFFA9A3290FLL) + 1;
  v87 = v86 + (v86 >> 16) + ((v86 + (v86 >> 16)) >> 8) - 0x6E19B5785F945D20;
  v88 = v74 ^ v87;
  v89 = v69 + 0x43F991842460011DLL + (((v87 ^ v70 ^ 0xE642D17B4A3F01A8) - 0x69D264F9014C145FLL) ^ ((v87 ^ v70 ^ 0x3A0B6D1A61E6A7) + 0x70554110AEED0CB0) ^ ((v87 ^ v70 ^ 0xE678DA16505EE70FLL) - 0x69E86F941B2DF2F8));
  v90 = (v89 ^ 0xFFDF7DF3A4D0C989) & (2 * (v89 & 0xFE1C79F3C418CD29)) ^ v89 & 0xFE1C79F3C418CD29;
  v91 = ((2 * (v89 ^ 0x43EFEF33ACE043DBLL)) ^ 0x7BE72D80D1F11DE4) & (v89 ^ 0x43EFEF33ACE043DBLL) ^ (2 * (v89 ^ 0x43EFEF33ACE043DBLL)) & 0xBDF396C068F88EF2;
  v92 = v91 ^ 0x8410924028088212;
  v93 = (v91 ^ 0x3CE3148008E88EF0) & (4 * v90) ^ v90;
  v94 = ((4 * v92) ^ 0xF7CE5B01A3E23BC8) & v92 ^ (4 * v92) & 0xBDF396C068F88EF0;
  v95 = (v94 ^ 0xB5C2120020E00AC0) & (16 * v93) ^ v93;
  v96 = ((16 * (v94 ^ 0x83184C048188432)) ^ 0xDF396C068F88EF20) & (v94 ^ 0x83184C048188432) ^ (16 * (v94 ^ 0x83184C048188432)) & 0xBDF396C068F88EF0;
  v97 = (v96 ^ 0x9D31040008888E00) & (v95 << 8) ^ v95;
  v98 = (((v96 ^ 0x20C292C0607000D2) << 8) ^ 0xF396C068F88EF200) & (v96 ^ 0x20C292C0607000D2) ^ ((v96 ^ 0x20C292C0607000D2) << 8) & 0xBDF396C068F88E00;
  v99 = v97 ^ 0xBDF396C068F88EF2 ^ (v98 ^ 0xB192804068880000) & (v97 << 16);
  v100 = (v99 << 32) & 0x3DF396C000000000;
  v101 = v89 - 0x1E3860C3BE732D7 + (((v89 ^ (2 * (v100 ^ v99 ^ ((v99 << 32) ^ 0x68F88EF200000000) & (((v98 ^ 0xC61168000700CF2) << 16) & 0x3DF396C000000000 ^ 0x2933960000000000 ^ (((v98 ^ 0xC61168000700CF2) << 16) ^ 0x16C068F800000000) & (v98 ^ 0xC61168000700CF2))))) >> 32) ^ 0xFFFFFFFF2BE5A60CLL) + 1;
  v102 = v101 + (v101 >> 16) + ((v101 + (v101 >> 16)) >> 8);
  v103 = (v66 < 0x9D0BD12E) ^ ((a4 + 1194173200) < 0x9D0BD12E);
  v104 = a4 + 1194173200 < v66;
  if (v103)
  {
    v104 = v66 < 0x9D0BD12E;
  }

  HIDWORD(a51) = 16843009 * HIDWORD(a52);
  return (*(STACK[0x4E0] + 8 * ((200 * !v104) ^ v58)))(v103, v100, v88 ^ (v102 - 1603558688), a4, 0x56004A1300000000, 3493187952, 0x3DF396C000000000, v67, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
}

uint64_t sub_1002C15A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, int a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v75 = STACK[0x3E8];
  if ((STACK[0x4C0] & 2) != 0)
  {
    v75 = STACK[0x3E0];
  }

  LODWORD(a53) = v75;
  if ((STACK[0x4C0] & 2) != 0)
  {
    v76 = STACK[0x3D4];
  }

  else
  {
    v76 = STACK[0x3DC];
  }

  v77 = a56 ^ LODWORD(STACK[0x2AC]);
  v179 = (a8 - 8588) | 0x2E08u;
  v78 = STACK[0x428];
  if ((STACK[0x4D0] & 2) == 0)
  {
    v78 = STACK[0x420];
  }

  LODWORD(a56) = v78;
  v79 = (v71 ^ 0xD76D59B6069CA26ELL) - ((v71 ^ 0xD76D59B6069CA26ELL) >> 30) + (((v71 ^ 0xD76D59B6069CA26ELL) - ((v71 ^ 0xD76D59B6069CA26ELL) >> 30)) >> 14);
  v80 = v79 - (v79 >> 4);
  v81 = ((((a8 - 8588) | 0x2E08u) - 0x73824EE3E4471D66) ^ v80) + (((((a8 - 8588) | 0x2E08u) - 0x73824EE3E4471D66) ^ v80) >> 27);
  v82 = v81 - (v81 >> 9) + ((v81 - (v81 >> 9)) >> 3);
  v83 = v82 - ((v82 + 0x3690DB5D4C331D54) >> 29) + 0x3690DB5D4C331D54 - ((v82 - ((v82 + 0x3690DB5D4C331D54) >> 29) + 0x3690DB5D4C331D54) >> 9);
  v84 = v83 - (v83 >> 3);
  v85 = v84 - 0xA56C130BF1F620DLL - ((v84 - 0xA56C130BF1F620DLL) >> 26) - ((v84 - 0xA56C130BF1F620DLL - ((v84 - 0xA56C130BF1F620DLL) >> 26)) >> 14);
  v86 = v85 - (v85 >> 7);
  LODWORD(v80) = v86 ^ v80 ^ v74;
  v87 = (v86 ^ 0x7BC03D24179C195CLL) - ((v86 ^ 0x7BC03D24179C195CLL) >> 27) + (((v86 ^ 0x7BC03D24179C195CLL) - ((v86 ^ 0x7BC03D24179C195CLL) >> 27)) >> 9);
  v88 = v87 - (v87 >> 1);
  LODWORD(v82) = v88 ^ v82 ^ v72;
  v89 = v88 - 0x5B46CA940EEFB0F3 - ((v88 - 0x5B46CA940EEFB0F3) >> 28) - ((v88 - 0x5B46CA940EEFB0F3 - ((v88 - 0x5B46CA940EEFB0F3) >> 28)) >> 12);
  v90 = v89 - (v89 >> 3);
  v91 = v90 - 0xC5B39F814D45862 + ((v90 - 0xC5B39F814D45862) >> 30) + ((v90 - 0xC5B39F814D45862 + ((v90 - 0xC5B39F814D45862) >> 30)) >> 10);
  v92 = v91 - (v91 >> 3);
  v93 = v80 ^ v92;
  v94 = (v92 ^ 0xEB853C9A73BC9BDLL) - ((v92 ^ 0xEB853C9A73BC9BDLL) >> 27) + (((v92 ^ 0xEB853C9A73BC9BDLL) - ((v92 ^ 0xEB853C9A73BC9BDLL) >> 27)) >> 12);
  v95 = v94 + (v94 >> 1);
  v96 = v82 ^ v95;
  v97 = v95 - 0x19AEA5D6B20CAF27 + ((v95 - 0x19AEA5D6B20CAF27) >> 30) - ((v95 - 0x19AEA5D6B20CAF27 + ((v95 - 0x19AEA5D6B20CAF27) >> 30)) >> 11);
  v98 = v90 ^ v84 ^ a3 ^ (v97 - (v97 >> 6));
  LODWORD(v84) = v93 & 0xFE ^ 0x34;
  LODWORD(STACK[0x428]) = v84;
  LODWORD(v82) = 16843009 * v84 - 189071287;
  LODWORD(v90) = (v82 ^ 0x2B16FF27) & (2 * (v82 & 0xB44FFB7)) ^ v82 & 0xB44FFB7;
  LODWORD(v92) = ((2 * (v82 ^ 0x3916C925)) ^ 0x64A46D24) & (v82 ^ 0x3916C925) ^ (2 * (v82 ^ 0x3916C925)) & 0x32523692;
  LODWORD(v90) = (v92 ^ 0x20002400) & (4 * v90) ^ v90;
  LODWORD(v92) = ((4 * (v92 ^ 0x12521292)) ^ 0xC948DA48) & (v92 ^ 0x12521292) ^ (4 * (v92 ^ 0x12521292)) & 0x32523690;
  LODWORD(v90) = (v92 ^ 0x401202) & (16 * v90) ^ v90;
  LODWORD(v92) = ((16 * (v92 ^ 0x32122492)) ^ 0x25236920) & (v92 ^ 0x32122492) ^ (16 * (v92 ^ 0x32122492)) & 0x32523690;
  LODWORD(v90) = v90 ^ 0x32523692 ^ (v92 ^ 0x20022000) & (v90 << 8);
  v99 = v82 ^ (2 * ((v90 << 16) & 0x32520000 ^ v90 ^ ((v90 << 16) ^ 0x36920000) & (((v92 ^ 0x12501692) << 8) & 0x32520000 ^ 0x20400000 ^ (((v92 ^ 0x12501692) << 8) ^ 0x52360000) & (v92 ^ 0x12501692))));
  v100 = STACK[0x354];
  LODWORD(v92) = *(a37 + 4 * LODWORD(STACK[0x354]));
  HIDWORD(v102) = v92 ^ 0x14F;
  LODWORD(v102) = v92 ^ 0x462FBE00;
  v101 = v102 >> 9;
  v103 = v98 & 7 ^ 4;
  if ((v98 & 7) == 4)
  {
    v104 = 0;
  }

  else
  {
    v104 = 255;
  }

  LODWORD(STACK[0x3E8]) = -v103;
  v105 = -v103 & 7;
  v106 = v104 << (-v103 & 7);
  LODWORD(STACK[0x420]) = 1157627904 * v106;
  v107 = 16843009 * v106;
  v108 = 16843009 * (v93 ^ 0xCA ^ ((v93 ^ 0x1ACA) >> 8) ^ ((v93 ^ 0xA1831ACA) >> 16) ^ HIBYTE(v93) ^ 0x5E);
  v109 = a57 + (v101 ^ 0x607F2D9E) + (*(a42 + 4 * v105) ^ 0x4B28652A);
  v110 = *(a40 + 4 * (LODWORD(STACK[0x480]) % 0x101));
  LODWORD(STACK[0x3D4]) = v110 ^ 0x73057D85;
  v111 = 1506752328 * (v110 ^ 0x73057D85);
  LODWORD(STACK[0x3DC]) = v111;
  v112 = LODWORD(STACK[0x430]) + (v110 ^ 0xF271DF9 ^ v111);
  LODWORD(v182) = 16843009 * (v96 ^ 0x8F ^ ((v96 ^ 0xAA8F) >> 8) ^ ((v96 ^ 0xD1BDAA8F) >> 16) ^ HIBYTE(v96) ^ 2);
  v113 = v108 ^ 0x2C2C2C2C ^ v182;
  v114 = *(a42 + 4 * (v113 % 0x101));
  LODWORD(STACK[0x3CC]) = v114;
  LODWORD(STACK[0x430]) = v112 + (v114 ^ 0xB4D79AD5);
  v115 = (v77 & 0xFE | HIDWORD(a53)) ^ 0xDECB3E31;
  v116 = (LODWORD(STACK[0x35C]) | a55) ^ 0xDECB3EA8;
  v117 = STACK[0x490];
  HIDWORD(a53) = v116 ^ LODWORD(STACK[0x490]) ^ 0xDECB3EAB ^ (v109 + 1);
  v118 = (v116 - 257) % 0x101;
  v119 = (v93 & 0xFFFFFF01 | (2 * (v99 >> 1))) ^ 0xCB51A092;
  LODWORD(a36) = v76 - ((2 * v76) & 0xA33E5566) + 1369385651;
  LODWORD(a38) = LODWORD(STACK[0x308]) - ((2 * LODWORD(STACK[0x308])) & 0xA33E5566) + 1369385651;
  v120 = v98 ^ 0xCB51A030;
  v121 = v98 ^ 0xCB51A034;
  HIDWORD(v183) = LODWORD(STACK[0x2A0]) - (v98 ^ 0xCB51A034) + ((v98 ^ 0xCB51A030) & 0xB535C70);
  LODWORD(STACK[0x3C8]) = v115;
  v122 = *(a43 + 4 * (v115 % 0x101));
  LODWORD(a44) = v117 ^ 0xDECB3EAB;
  v123 = *(a37 + 4 * ((v117 ^ 0xDECB3EAB) % 0x101));
  v124 = STACK[0x478];
  v125 = *(a37 + 4 * (LODWORD(STACK[0x478]) % 0x101));
  HIDWORD(v181) = v122 - 538451343;
  v126 = *(a40 + 4 * (v119 % 0x101));
  if ((v98 & 7) == 4)
  {
    v127 = 0;
  }

  else
  {
    v127 = ~v106;
  }

  v128 = v93 ^ 0xCB51A034;
  if (v116 <= 0x100)
  {
    v118 = v116;
  }

  LODWORD(v181) = *(a42 + 4 * v118);
  LODWORD(v180) = *(a42 + 4 * (v128 % 0x101)) ^ 0x4B28652A;
  LODWORD(STACK[0x4C0]) = v117 ^ LODWORD(STACK[0x30C]) ^ v98;
  v129 = v121 + LODWORD(STACK[0x2C4]);
  v130 = LODWORD(STACK[0x3D0]) - v100 + v121;
  HIDWORD(a32) = 261356289 * (LODWORD(STACK[0x428]) - a71);
  v131 = STACK[0x4D8];
  v132 = (*(STACK[0x4D8] + 8 * ((*(STACK[0x4D8] + 8 * ((*(STACK[0x4D8] + 8 * ((*(STACK[0x4D8] + 8 * (0x29740881 % STACK[0x4A8])) + 1020720254) % STACK[0x4A8])) + 2194900173) % STACK[0x4A8])) + 679027458) % STACK[0x4A8])) + 3800010653) % STACK[0x4A8];
  v133 = ((((v132 - ((2 * v132) & 0x1B95D682) - 1379210431) ^ 0xB567A4F3) + 461879869) ^ (((v132 - ((2 * v132) & 0x1B95D682) - 1379210431) ^ 0x8F58E762) + 565770670) ^ (((v132 - ((2 * v132) & 0x1B95D682) - 1379210431) ^ 0x97F5A8D0) + 957724192)) + 2110155483;
  v134 = v120 & 0xFFFFFFF8;
  v135 = STACK[0x420] & v96;
  LODWORD(STACK[0x3E0]) = v107;
  LODWORD(STACK[0x2A0]) = v135 ^ v107;
  LODWORD(STACK[0x308]) = v93 & v127;
  HIDWORD(v187) = LODWORD(STACK[0x430]) + 1;
  LODWORD(STACK[0x2C8]) = v99;
  LODWORD(STACK[0x2AC]) = v77;
  LODWORD(a40) = v77 ^ 0xC79866CF;
  LODWORD(STACK[0x350]) = v103;
  LODWORD(v184) = v129 - (v103 | v134);
  LODWORD(STACK[0x2C4]) = v123;
  HIDWORD(v177) = v123 ^ 0x462FBE00;
  LODWORD(a35) = v125;
  HIDWORD(v180) = v126;
  HIDWORD(v185) = v130 + v105;
  LODWORD(v186) = v96;
  LODWORD(STACK[0x430]) = LODWORD(STACK[0x488]) ^ a54 ^ v96;
  v136 = LODWORD(STACK[0x4C8]) ^ 0x63D2A0F;
  v137 = LODWORD(STACK[0x4B0]) ^ 0x6618F30F;
  v138 = LODWORD(STACK[0x498]) ^ 0x832A377;
  LODWORD(STACK[0x428]) = v93;
  LODWORD(a39) = 32 * LODWORD(STACK[0x35C]);
  HIDWORD(v182) = LODWORD(STACK[0x480]) >> 7;
  LODWORD(a37) = v103 | v134;
  LODWORD(v185) = -(v103 | v134);
  LODWORD(STACK[0x3D0]) = v128;
  HIDWORD(v176) = v128 >> 4;
  LODWORD(STACK[0x310]) = v105;
  LODWORD(v176) = v100 - v105;
  LODWORD(STACK[0x420]) = v119;
  LODWORD(v177) = v119 >> 4;
  HIDWORD(a45) = v116;
  v139 = *v131 * ((v179 - 7672) ^ 0xBF25396F735B6777);
  v140 = (((v139 ^ v73 ^ 0xCDCFD87AE0BBB1CFLL) + 0x3C75252B8F7785F9) ^ ((v139 ^ v73 ^ 0x84E2C7DDEEEF0B2DLL) + 0x75583A8C81233F1BLL) ^ ((v139 ^ v73 ^ 0x492D1FA70E54BAE2) - 0x47681D099E67712ALL)) + 0x343C31AE223435F0;
  v141 = v140 - 0x25F72EFF92006A27 + (((((v140 ^ 0x3ECC72A4C561C1CBLL) - 0x1B3B5C5B5761ABE3) ^ v140 ^ ((v140 ^ 0x70680243D9B0B1A4) - 0x559F2CBC4BB0DB8CLL) ^ ((v140 ^ 0xDC2E35E771AEF500) + 0x626E4E71C516100) ^ ((v140 ^ 0xB77D6BFFFF7FEF6FLL) + 0x6D75BAFF92807AB9)) >> 32) ^ 0xFFFFFFFFDA08D100);
  v142 = ((v141 >> 16) ^ v141) + 2 * ((v141 >> 16) & v141);
  v143 = v142 + (v142 >> 8);
  v144 = ((((v143 - 0x6E19B5785F945D20) ^ v139 ^ 0xB917A024793763ADLL) - 0x77B27BE9120B8699) ^ (((v143 - 0x6E19B5785F945D20) ^ v139 ^ 0x5B6BC6AE8550E40) + 0x34EC98587C96148CLL) ^ (((v143 - 0x6E19B5785F945D20) ^ v139 ^ 0xBCA11C4E91626DEDLL) - 0x7204C783FA5E88D9)) + 0x1943754507613371;
  v145 = (v144 ^ 0x244A560D63D335D3) & (2 * (v144 & 0xB562668863DBB1C3)) ^ v144 & 0xB562668863DBB1C3;
  v146 = ((2 * (v144 ^ 0x268A131DE4E236D7)) ^ 0x27D0EB2B0E730E28) & (v144 ^ 0x268A131DE4E236D7) ^ (2 * (v144 ^ 0x268A131DE4E236D7)) & 0x93E8759587398714;
  v147 = v146 ^ 0x9028149481088114;
  v148 = (v146 ^ 0x3A0209506310600) & (4 * v145) ^ v145;
  v149 = ((4 * v147) ^ 0x4FA1D6561CE61C50) & v147 ^ (4 * v147) & 0x93E8759587398714;
  v150 = (v149 ^ 0x3A0541404200410) & (16 * v148) ^ v148;
  v151 = ((16 * (v149 ^ 0x9048218183198304)) ^ 0x3E87595873987140) & (v149 ^ 0x9048218183198304) ^ (16 * (v149 ^ 0x9048218183198304)) & 0x93E8759587398710;
  v152 = (v151 ^ 0x1280511003180100) & (v150 << 8) ^ v150;
  v153 = (((v151 ^ 0x8168248584218614) << 8) ^ 0xE875958739871400) & (v151 ^ 0x8168248584218614) ^ ((v151 ^ 0x8168248584218614) << 8) & 0x93E8759587398700;
  v154 = v152 ^ 0x93E8759587398714 ^ (v153 ^ 0x8060158501010000) & (v152 << 16);
  v155 = v144 - 0x4A9D99779C244E3DLL + (((v144 ^ (2 * ((v154 << 32) & 0x13E8759500000000 ^ v154 ^ ((v154 << 32) ^ 0x739871400000000) & (((v153 ^ 0x1388601086388314) << 16) & 0x13E8759500000000 ^ 0x268708400000000 ^ (((v153 ^ 0x1388601086388314) << 16) ^ 0x7595873900000000) & (v153 ^ 0x1388601086388314))))) >> 32) ^ 0xFFFFFFFF6B1D7874) + 1;
  v156 = v155 + (v155 >> 16) + ((v155 + (v155 >> 16)) >> 8) - 0x6E19B5785F945D20;
  v157 = (v156 >> 1) & 0x57CF659E ^ v156;
  v158 = (((v156 ^ v139 ^ 0x4BCD84B381370670) - 0x5B1B1CE78613C9ECLL) ^ ((v156 ^ v139 ^ 0xBB5B11733AEDE3DCLL) + 0x547276D8C236D3C0) ^ ((v156 ^ v139 ^ 0xF09695C0BBDAE5ACLL) + 0x1FBFF26B4301D5D0)) + 0x7C52D2CE55B65A79;
  v159 = (v158 ^ 0xD053B191294D6483) & (2 * (v158 & 0x9483C585B16E7523)) ^ v158 & 0x9483C585B16E7523;
  v160 = ((2 * (v158 ^ 0xD851BA9849454EC1)) ^ 0x99A4FE3BF05677C4) & (v158 ^ 0xD851BA9849454EC1) ^ (2 * (v158 ^ 0xD851BA9849454EC1)) & 0x4CD27F1DF82B3BE2;
  v161 = v160 ^ 0x4452010408290822;
  v162 = (v160 ^ 0x403F19C00231A0) & (4 * v159) ^ v159;
  v163 = ((4 * v161) ^ 0x3349FC77E0ACEF88) & v161 ^ (4 * v161) & 0x4CD27F1DF82B3BE0;
  v164 = (v163 ^ 0x407C15E0282B80) & (16 * v162) ^ v162;
  v165 = ((16 * (v163 ^ 0x4C92030818031062)) ^ 0xCD27F1DF82B3BE20) & (v163 ^ 0x4C92030818031062) ^ (16 * (v163 ^ 0x4C92030818031062)) & 0x4CD27F1DF82B3BE0;
  v166 = (v165 ^ 0x4C02711D80233A00) & (v164 << 8) ^ v164;
  v167 = (((v165 ^ 0xD00E00780801C2) << 8) ^ 0xD27F1DF82B3BE200) & (v165 ^ 0xD00E00780801C2) ^ ((v165 ^ 0xD00E00780801C2) << 8) & 0x4CD27F1DF82B3B00;
  v168 = v166 ^ 0x4CD27F1DF82B3BE2 ^ (v167 ^ 0x40521D18282B0000) & (v166 << 16);
  v169 = (v168 << 32) ^ 0x782B3BE200000000;
  v170 = (v168 << 32) & 0x4CD27F1D00000000;
  v171 = ((v158 ^ (2 * (v170 ^ v168 ^ v169 & (((v167 ^ 0xC806205D00019E2) << 16) & 0x4CD27F1D00000000 ^ 0xC2071400000000 ^ (((v167 ^ 0xC806205D00019E2) << 16) ^ 0x7F1DF82B00000000) & (v167 ^ 0xC806205D00019E2))))) >> 32) ^ 0xFFFFFFFF62DCB241;
  v172 = v158 - 0x6B7C3A7A4E918ADDLL + v171 + 1 + ((v158 - 0x6B7C3A7A4E918ADDLL + v171 + 1) >> 16);
  v173 = v172 + (v172 >> 8) - 1603558688;
  v174 = v133 < 0x80F1606A || v133 > 0x80F1606B;
  LODWORD(v178) = v125 ^ 0x462FBE00;
  HIDWORD(v178) = v126 ^ 0x73057D85;
  LODWORD(a41) = v99 ^ 0xBC49293;
  LODWORD(a42) = v116 << 6;
  LODWORD(a43) = 8 * v124;
  LODWORD(v183) = v113 >> 7;
  LODWORD(a51) = v99 ^ 0xF43B6D6C;
  HIDWORD(v186) = v93 ^ 0xB73D1860;
  LODWORD(v187) = ~v108;
  LODWORD(a57) = v99 >> 1;
  HIDWORD(v184) = v108 ^ 0x2C2C2C2C ^ v182;
  return (*(STACK[0x4E0] + 8 * ((61 * !v174) ^ v179)))(v133 < 0x80F1606A, 1232589324, v170, 0xB562668863DBB1C3, 0x93E8759587398714, ((v143 - 1603558688) >> 1) & 0x57CF659E ^ (v143 - 1603558688) ^ v138 ^ v157 ^ (v173 >> 1) & 0x57CF659E ^ v173, 1473209758, v169, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, v176, v177, v178, v179, a32, v180, v181, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, v182, v183, v184, v185, a50, a51, v186, a53, v187, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_1002C26EC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29, int a30, int a31, int a32, int a33, uint64_t a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, uint64_t a44, int a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, int a58)
{
  LODWORD(STACK[0x30C]) = a57 ^ a58;
  LODWORD(STACK[0x308]) ^= LODWORD(STACK[0x3E0]);
  v66 = LODWORD(STACK[0x35C]) + LODWORD(STACK[0x290]) + LODWORD(STACK[0x3E8]);
  LODWORD(STACK[0x3E8]) = LODWORD(STACK[0x3CC]) ^ a43 ^ LODWORD(STACK[0x3D4]) ^ LODWORD(STACK[0x3DC]);
  LODWORD(STACK[0x290]) = 2129790651 * a28;
  HIDWORD(v60) = LODWORD(STACK[0x2C4]) ^ 0x14F;
  LODWORD(v60) = a31;
  v59 = v60 >> 9;
  v61 = LODWORD(STACK[0x3D0]) ^ LODWORD(STACK[0x294]) ^ a29;
  LODWORD(STACK[0x2C4]) = LODWORD(STACK[0x4D0]) ^ 0x59E94EC4;
  LODWORD(STACK[0x3DC]) = LODWORD(STACK[0x478]) + LODWORD(STACK[0x298]) - LODWORD(STACK[0x3C8]);
  LODWORD(STACK[0x3E0]) = v61 ^ LODWORD(STACK[0x420]) ^ a30;
  HIDWORD(v60) = a41 ^ 0x14F;
  LODWORD(v60) = a32;
  LODWORD(STACK[0x3CC]) = a40 ^ LODWORD(STACK[0x3C4]) ^ (v60 >> 9);
  v67 = LODWORD(STACK[0x2BC]) + a37 + (a38 ^ (1506752328 * a33) ^ 0xF0D8E206) + a36 + 1;
  LODWORD(STACK[0x3D4]) = a45 ^ a39 ^ 0x85379DF8 ^ v59;
  v62 = (((LODWORD(STACK[0x3F0]) ^ 0x774BC016) - 1927405432) ^ ((LODWORD(STACK[0x3F0]) ^ 0x285D427F) - 771185937) ^ ((LODWORD(STACK[0x3F0]) ^ 0x5B103958) - 1589257782)) + 280503164;
  v63 = v62 < 0xF0B7F1D;
  v64 = 0xBF25396F735B7765 * *(STACK[0x4D8] + 8 * ((a2 | ((a2 < 0x4977D20B) << 32)) + 0x61D108F3BA4DB94ALL) - 0xE8847A01E2C5AA8);
  if (v63 == a2 - 980177645 < 0xF0B7F1D)
  {
    v63 = v62 > a2 - 980177645;
  }

  return (*(STACK[0x4E0] + 8 * (v58 ^ 2 ^ (2 * v63))))(v62 > a2 - 980177645);
}

uint64_t sub_1002C312C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, uint64_t a37, uint64_t a38, int a39, uint64_t a40, int a41, uint64_t a42, uint64_t a43, int a44, int a45, int a46, int a47, uint64_t a48, int a49, int a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, int a55)
{
  LODWORD(STACK[0x298]) = a55 ^ 0xE9E9E9E9;
  v60 = LODWORD(STACK[0x2B0]) + a40 + a41;
  v61 = a50 + a36;
  v62 = STACK[0x4B8];
  v120 = LODWORD(STACK[0x4B8]) ^ LODWORD(STACK[0x304]) ^ a39 ^ LODWORD(STACK[0x428]) ^ (32 * LODWORD(STACK[0x350]));
  v63 = (v58 ^ 0xD76D59B6069CA26ELL) - ((v58 ^ 0xD76D59B6069CA26ELL) >> 30) + (((v58 ^ 0xD76D59B6069CA26ELL) - ((v58 ^ 0xD76D59B6069CA26ELL) >> 30)) >> 14);
  v64 = v63 - (v63 >> 4);
  v65 = (v64 ^ 0x8C7DB11C1BB910A4) + ((v64 ^ 0x8C7DB11C1BB910A4) >> 27) - (((v64 ^ 0x8C7DB11C1BB910A4) + ((v64 ^ 0x8C7DB11C1BB910A4) >> 27)) >> 9);
  v66 = v65 + (v65 >> 3);
  LODWORD(a40) = (v66 >> 1) & 0x57CF659E;
  v119 = v66;
  v67 = v66 + 0x3690DB5D4C331D54 - ((v66 + 0x3690DB5D4C331D54) >> 29) - ((v66 + 0x3690DB5D4C331D54 - ((v66 + 0x3690DB5D4C331D54) >> 29)) >> 9);
  v68 = v67 - (v67 >> 3);
  v69 = v68 - 0xA56C130BF1F620DLL - ((v68 - 0xA56C130BF1F620DLL) >> 26) - ((v68 - 0xA56C130BF1F620DLL - ((v68 - 0xA56C130BF1F620DLL) >> 26)) >> 14);
  v70 = v69 - (v69 >> 7);
  v71 = STACK[0x4B0];
  v72 = (LODWORD(STACK[0x4B8]) ^ LODWORD(STACK[0x4B0])) >> 1;
  LODWORD(STACK[0x2BC]) = v72;
  v73 = v72 & 0x57CF659E ^ v62 ^ a44 ^ (a44 << 6);
  v74 = (v70 ^ 0x7BC03D24179C195CLL) - ((v70 ^ 0x7BC03D24179C195CLL) >> 27) + (((v70 ^ 0x7BC03D24179C195CLL) - ((v70 ^ 0x7BC03D24179C195CLL) >> 27)) >> 9);
  v75 = v74 - (v74 >> 1);
  v76 = a47 ^ a42 ^ v61;
  LODWORD(a42) = (v75 >> 1) & 0x57CF659E;
  v77 = v75 - 0x5B46CA940EEFB0F3 - ((v75 - 0x5B46CA940EEFB0F3) >> 28) - ((v75 - 0x5B46CA940EEFB0F3 - ((v75 - 0x5B46CA940EEFB0F3) >> 28)) >> 12);
  v78 = v77 - (v77 >> 3);
  LODWORD(STACK[0x294]) = (v78 >> 1) & 0x57CF659E;
  v79 = v73 ^ v76 ^ v55;
  STACK[0x2B0] = v78;
  v80 = v78 - 0xC5B39F814D45862 + ((v78 - 0xC5B39F814D45862) >> 30) + ((v78 - 0xC5B39F814D45862 + ((v78 - 0xC5B39F814D45862) >> 30)) >> 10);
  v81 = v80 - (v80 >> 3);
  v82 = (v81 ^ 0xEB853C9A73BC9BDLL) - ((v81 ^ 0xEB853C9A73BC9BDLL) >> 27) + (((v81 ^ 0xEB853C9A73BC9BDLL) - ((v81 ^ 0xEB853C9A73BC9BDLL) >> 27)) >> 12);
  v83 = v82 + (v82 >> 1);
  v117 = a7 & (v83 >> 1);
  v118 = v83;
  v84 = v83 - 0x19AEA5D6B20CAF27 + ((v83 - 0x19AEA5D6B20CAF27) >> 30) - ((v83 - 0x19AEA5D6B20CAF27 + ((v83 - 0x19AEA5D6B20CAF27) >> 30)) >> 11);
  v116 = v84 - (v84 >> 6);
  v85 = v79 ^ v64 ^ (v64 >> 1) & 0x57CF659E ^ v70 ^ (v70 >> 1) & 0x57CF659E ^ v81 ^ (v81 >> 1) & 0x57CF659E;
  LODWORD(v64) = (*(STACK[0x4D8] + 8 * ((*(STACK[0x4D8] + 8 * ((*(STACK[0x4D8] + 8 * ((*(STACK[0x4D8] + 8 * (0x3DED04D7 % STACK[0x4A8])) + 2254417002) % STACK[0x4A8])) + 2818276552) % STACK[0x4A8])) + 228888465) % STACK[0x4A8])) + 2058349328) % STACK[0x4A8];
  LODWORD(v81) = STACK[0x4C8];
  LODWORD(v84) = LODWORD(STACK[0x488]) ^ LODWORD(STACK[0x4C8]);
  LODWORD(STACK[0x4A8]) = v84;
  HIDWORD(v115) = ((v85 ^ v84) >> 1) & 0x57CF659E;
  LODWORD(STACK[0x470]) -= LODWORD(STACK[0x3D0]);
  LODWORD(v84) = LODWORD(STACK[0x478]) ^ LODWORD(STACK[0x318]);
  v86 = v85 ^ 0x9ED96846;
  LODWORD(STACK[0x478]) = v86;
  LODWORD(STACK[0x3D0]) = v84 ^ a43 ^ LODWORD(STACK[0x3C8]) ^ a37;
  LODWORD(STACK[0x318]) = a7 & (v68 >> 1) ^ v68;
  v87 = v71 ^ 0x1D03B67D;
  LODWORD(v70) = STACK[0x3D4];
  LODWORD(STACK[0x498]) ^= LODWORD(STACK[0x490]);
  LODWORD(STACK[0x4B0]) = v60 + 1;
  v88 = v81 ^ 0x7D356DFD;
  v89 = ((((v64 - ((2 * v64) & 0xF2B7114) - 2020231030) ^ 0x85C2A14B) + 1325143574) ^ (((v64 - ((2 * v64) & 0xF2B7114) - 2020231030) ^ 0x63070DD) - 854669436) ^ (((v64 - ((2 * v64) & 0xF2B7114) - 2020231030) ^ 0x467691C) - 816193981)) - 1183972313;
  v90 = v89 < 0x61913FC;
  v91 = v59 & 0x4000000000000;
  v92 = *STACK[0x4D8] * ((v57 - 4167) - 0x40DAC6908CA49B34);
  if ((v92 & v59 & 0x4000000000000) != 0)
  {
    v91 = -v91;
  }

  v93 = ((((v91 + v92) ^ v59 & 0xFFFBFFFFFFFFFFFFLL ^ 0x9DC29F6D4B43B32ELL) - 0x659E2C6E9BE872B3) ^ (((v91 + v92) ^ v59 & 0xFFFBFFFFFFFFFFFFLL ^ 0xDA2BFA5BA56853EDLL) - 0x2277495875C39270) ^ (((v91 + v92) ^ v59 & 0xFFFBFFFFFFFFFFFFLL ^ 0x47E96536EE2BE0C3) + 0x404A29CAC17FDEA2)) + 0x5C3711FAB204E3F9;
  v94 = (v93 ^ 0xDE35A5059C16D9B7) & (2 * (v93 & 0x9C25A1091EA6DDA4)) ^ v93 & 0x9C25A1091EA6DDA4;
  v95 = ((2 * (v93 ^ 0xCE77E517BC57FBBFLL)) ^ 0xA4A4883D45E24C36) & (v93 ^ 0xCE77E517BC57FBBFLL) ^ (2 * (v93 ^ 0xCE77E517BC57FBBFLL)) & 0x5252441EA2F1261ALL;
  v96 = ((4 * (v95 ^ 0x52524402A2112209)) ^ 0x4949107A8BC4986CLL) & (v95 ^ 0x52524402A2112209) ^ (4 * (v95 ^ 0x52524402A2112209)) & 0x5252441EA2F12618;
  v97 = (v96 ^ 0x4040001A82C00010) & (16 * ((v95 ^ 0x240400E00A00418) & (4 * v94) ^ v94)) ^ (v95 ^ 0x240400E00A00418) & (4 * v94) ^ v94;
  v98 = ((16 * (v96 ^ 0x1212440420312613)) ^ 0x252441EA2F1261B0) & (v96 ^ 0x1212440420312613) ^ (16 * (v96 ^ 0x1212440420312613)) & 0x5252441EA2F12610;
  v99 = (v98 ^ 0x400A22102000) & (v97 << 8) ^ v97;
  v100 = (((v98 ^ 0x5252041480E1060BLL) << 8) ^ 0x52441EA2F1261B00) & (v98 ^ 0x5252041480E1060BLL) ^ ((v98 ^ 0x5252041480E1060BLL) << 8) & 0x5252441EA2F12600;
  v101 = v99 ^ 0x5252441EA2F1261BLL ^ (v100 ^ 0x52400402A0200000) & (v99 << 16);
  v102 = v93 - 0x63DA5EF6E159225CLL + (((v93 ^ (2 * ((v101 << 32) & 0x5252441E00000000 ^ v101 ^ ((v101 << 32) ^ 0x22F1261B00000000) & (((v100 ^ 0x12401C02D1241BLL) << 16) & 0x5252441E00000000 ^ 0x1240440E00000000 ^ (((v100 ^ 0x12401C02D1241BLL) << 16) ^ 0x441EA2F100000000) & (v100 ^ 0x12401C02D1241BLL))))) >> 32) ^ 0xFFFFFFFFC3DEDEFFLL) + 1;
  v103 = v102 + (v102 >> 16) + ((v102 + (v102 >> 16)) >> 8);
  LODWORD(v101) = (v103 >> 1) & 0x17D8761B ^ v103 ^ v87;
  v104 = ((v103 + v56) >> 1) & 0x17D8761B ^ (v103 + v56) ^ v88;
  v105 = ((((v103 - 0x6E19B5785F945D20) ^ v92 ^ 0x2862DB6D894ECBC5) - 0x772834F8DF80E7A9) ^ (((v103 - 0x6E19B5785F945D20) ^ v92 ^ 0xE7452216E954ED66) + 0x47F0327C40653EF6) ^ (((v103 - 0x6E19B5785F945D20) ^ v92 ^ 0xCF27F97B601A26A3) + 0x6F92E911C92BF531)) - 0x622C0AFAF1932C06;
  v106 = v105 - 0x3E89056FB79EA78DLL + (((((v105 ^ 0x31864FC2D6EF2D24) - 0xF0F4AAD61718AAALL) ^ v105 ^ ((v105 ^ 0x956D97C918DE7A35) + 0x541B6D5950BF2245) ^ ((v105 ^ 0x471DA2DBCEE08D43) - 0x7994A7B4797E2ACDLL) ^ ((v105 ^ 0xDD7F7FBFB74F7DDCLL) + 0x1C09852FFF2E25AELL)) >> 32) ^ 0xFFFFFFFFC176FA90);
  v107 = v106 + (v106 >> 16) + ((v106 + (v106 >> 16)) >> 8);
  v108 = v101 ^ (v107 >> 1) & 0x17D8761B ^ v107;
  v109 = v104 ^ ((v107 + v56) >> 1) & 0x17D8761B ^ (v107 + v56);
  v110 = ((((v107 - 0x6E19B5785F945D20) ^ v92 ^ 0x3FCB52B7759E64F2) - 0x7349DC7FB2D4A043) ^ (((v107 - 0x6E19B5785F945D20) ^ v92 ^ 0x133A45A364BDC06ALL) - 0x5FB8CB6BA3F704DBLL) ^ (((v107 - 0x6E19B5785F945D20) ^ v92 ^ 0x2CF117141123A498) - 0x607399DCD6696029)) - 0x569AA0DB3214AC21;
  v111 = v110 - 0x5CE2D05C06A08F2DLL + (((((v110 ^ 0x4D8529659BC6246CLL) - 0x1167F9399D66AB42) ^ v110 ^ ((v110 ^ 0x59D273D55C54C41CLL) - 0x530A3895AF44B32) ^ ((v110 ^ 0x34C3750713CC13E1) - 0x6821A55B156C9CCFLL) ^ ((v110 ^ 0x7C76FFEBD2FE7CBFuLL) - 0x20942FB7D45EF391)) >> 32) ^ 0xFFFFFFFFA31D2FA3);
  v112 = v111 + (v111 >> 16) + ((v111 + (v111 >> 16)) >> 8);
  if (v89 >= 0x61913FC)
  {
    v90 = v89 > 0x61913FD;
  }

  v113 = *(STACK[0x4E0] + 8 * ((473 * !v90) ^ v57));
  LODWORD(v115) = (v86 >> 1) & 0x57CF659E;
  return v113(v113, v89 < 0x61913FC, v108, v108 ^ (v112 >> 1) & 0x17D8761B ^ v112, v109, a6, 0x5252441EA2F12600, 0xA04734945C08FB25, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v115, a7 & (v116 >> 1), v116, a37, v117, v118, a40, v119, a42, a43);
}

uint64_t sub_1002C3C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, uint64_t a48, int a49, uint64_t a50, int a51, int a52, int a53, int a54, int a55, int a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60)
{
  LODWORD(STACK[0x304]) = ~LODWORD(STACK[0x2A0]);
  LODWORD(STACK[0x3C8]) = LODWORD(STACK[0x480]) ^ LODWORD(STACK[0x338]) ^ a52 ^ a56 ^ a53;
  LODWORD(STACK[0x3C4]) = a55 + LODWORD(STACK[0x290]);
  LODWORD(STACK[0x480]) = a60 ^ 0x9A2AFE07;
  STACK[0x338] = a36 ^ a37;
  LODWORD(STACK[0x4C8]) ^= LODWORD(STACK[0x370]) ^ LODWORD(STACK[0x4A8]) ^ v62 ^ a45 ^ a43 ^ a49 ^ a47 ^ a39 ^ a41 ^ a34 ^ a35;
  v63 = (((LODWORD(STACK[0x3F0]) ^ 0xEBE575D8) + 296785226) ^ ((LODWORD(STACK[0x3F0]) ^ 0xBDFAAEA9) + 1202671161) ^ ((((v61 ^ 0x3637) + 1377385362) ^ LODWORD(STACK[0x3F0])) - 1471381294)) - 69811019;
  v64 = v63 < 0xFA2A2056;
  v65 = *(STACK[0x4D8] + 8 * ((v60 | ((v60 < 0x27DCB452) << 32)) + 0x44E1875AB14909F2) - 0x270C3AD6C92DF220) * (((v61 ^ 0x3637u) - 4032) ^ 0xBF25396F735B638BLL);
  if (v64 == v60 - 766678011 < 0xFA2A2056)
  {
    v64 = v60 - 766678011 < v63;
  }

  return (*(STACK[0x4E0] + 8 * ((101 * !v64) ^ v61 ^ 0x3637)))();
}

uint64_t sub_1002C44BC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, int a46, int a47, uint64_t a48, uint64_t a49, int a50, int a51, uint64_t a52, int a53, int a54, int a55, int a56, int a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x3F0]) = a51 + a50;
  v75 = STACK[0x490];
  v76 = LODWORD(STACK[0x490]) ^ LODWORD(STACK[0x330]) ^ a46 ^ a47 ^ a6 ^ LODWORD(STACK[0x318]);
  v77 = (v72 ^ 0xD76D59B6069CA26ELL) - ((v72 ^ 0xD76D59B6069CA26ELL) >> 30) + (((v72 ^ 0xD76D59B6069CA26ELL) - ((v72 ^ 0xD76D59B6069CA26ELL) >> 30)) >> 14);
  v78 = ((v77 - (v77 >> 4)) ^ 0x8C7DB11C1BB910A4) + (((v77 - (v77 >> 4)) ^ 0x8C7DB11C1BB910A4) >> 27) - ((((v77 - (v77 >> 4)) ^ 0x8C7DB11C1BB910A4) + (((v77 - (v77 >> 4)) ^ 0x8C7DB11C1BB910A4) >> 27)) >> 9);
  v79 = v78 + (v78 >> 3);
  v80 = v79 + 0x3690DB5D4C331D54 - ((v79 + 0x3690DB5D4C331D54) >> 29) - ((v79 + 0x3690DB5D4C331D54 - ((v79 + 0x3690DB5D4C331D54) >> 29)) >> 9);
  v81 = v80 - (v80 >> 3);
  v82 = v81 - 0xA56C130BF1F620DLL - ((v81 - 0xA56C130BF1F620DLL) >> 26) - ((v81 - 0xA56C130BF1F620DLL - ((v81 - 0xA56C130BF1F620DLL) >> 26)) >> 14);
  v83 = ((v82 - (v82 >> 7)) ^ 0x7BC03D24179C195CLL) - (((v82 - (v82 >> 7)) ^ 0x7BC03D24179C195CLL) >> 27) + ((((v82 - (v82 >> 7)) ^ 0x7BC03D24179C195CLL) - (((v82 - (v82 >> 7)) ^ 0x7BC03D24179C195CLL) >> 27)) >> 9);
  v84 = v83 - (v83 >> 1);
  v85 = v84 - 0x5B46CA940EEFB0F3 - ((v84 - 0x5B46CA940EEFB0F3) >> 28) - ((v84 - 0x5B46CA940EEFB0F3 - ((v84 - 0x5B46CA940EEFB0F3) >> 28)) >> 12);
  v86 = v85 - (v85 >> 3);
  v87 = v86 - 0xC5B39F814D45862 + ((v86 - 0xC5B39F814D45862) >> 30) + ((v86 - 0xC5B39F814D45862 + ((v86 - 0xC5B39F814D45862) >> 30)) >> 10);
  v88 = ((v87 - (v87 >> 3)) ^ 0xEB853C9A73BC9BDLL) - (((v87 - (v87 >> 3)) ^ 0xEB853C9A73BC9BDLL) >> 27) + ((((v87 - (v87 >> 3)) ^ 0xEB853C9A73BC9BDLL) - (((v87 - (v87 >> 3)) ^ 0xEB853C9A73BC9BDLL) >> 27)) >> 12);
  v89 = v88 + (v88 >> 1);
  v90 = v89 - 0x19AEA5D6B20CAF27 + ((v89 - 0x19AEA5D6B20CAF27) >> 30) - ((v89 - 0x19AEA5D6B20CAF27 + ((v89 - 0x19AEA5D6B20CAF27) >> 30)) >> 11);
  v91 = v86 ^ v81 ^ (v90 - (v90 >> 6));
  v92 = v73 & (v89 >> 1);
  v93 = v73 & (v91 >> 1);
  v94 = (LODWORD(STACK[0x4A8]) >> 1) & 0x17D8761B;
  v95 = (LODWORD(STACK[0x498]) >> 1) & 0x17D8761B;
  LODWORD(STACK[0x498]) = v76 ^ STACK[0x2B0] ^ LODWORD(STACK[0x294]) ^ STACK[0x338];
  v96 = v92 ^ v89;
  v97 = STACK[0x2BC] & 0x17D8761B;
  v98 = a56 + 1495912966 - 2 * (a56 & 0x5929D216 ^ STACK[0x428] & 0x10);
  LODWORD(STACK[0x428]) = v94 ^ LODWORD(STACK[0x488]) ^ (a57 + a71 + a53 + 1) ^ v74 ^ v79 ^ (v79 >> 1) & 0x17D8761B ^ v84 ^ (v84 >> 1) & 0x17D8761B ^ v96;
  v99 = v95 ^ v75 ^ LODWORD(STACK[0x478]) ^ v71 ^ v91 ^ v93;
  v100 = LODWORD(STACK[0x2C8]) ^ 0x92u;
  v101 = v98 ^ LODWORD(STACK[0x480]) ^ 0x5AB71E39;
  LODWORD(STACK[0x35C]);
  LODWORD(STACK[0x30C]);
  LODWORD(STACK[0x310]);
  v102 = *(*(&off_1006B4E30 + (a2 ^ 0x1541)) + ((a2 - 234) ^ 0x1442u));
  v103 = v102 ^ (((v102 ^ 0x571F2620) & (LODWORD(STACK[0x2AC]) ^ 0x864B9C5C) ^ v102 & 0xBE2C056C) >> 1) ^ 0x5C192431;
  v104 = 4 * (LOBYTE(STACK[0x298]) ^ LOBYTE(STACK[0x380]));
  *(STACK[0x360] + v104) = LODWORD(STACK[0x480]) ^ a56 ^ ((v103 & STACK[0x308]) >> LODWORD(STACK[0x354])) ^ ((v103 & STACK[0x304]) << LODWORD(STACK[0x350]));
  *(STACK[0x368] + v104) = v101 ^ *(STACK[0x458] + 232);
  return (*(STACK[0x4E0] + 8 * a2))(5186);
}

uint64_t sub_1002C4858(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, int a48, uint64_t a49, uint64_t a50, int a51, unsigned int a52, int a53, int a54, uint64_t a55, int a56, int a57, int a58, int a59, unsigned int a60, int a61, int a62, int a63)
{
  v97 = STACK[0x328];
  if ((STACK[0x4D0] & 2) != 0)
  {
    v97 = STACK[0x320];
  }

  LODWORD(STACK[0x4D0]) = v97;
  v98 = LODWORD(STACK[0x420]) + LODWORD(STACK[0x470]);
  v99 = a8 & v90;
  v100 = v95 ^ LODWORD(STACK[0x4B8]) ^ LODWORD(STACK[0x3D4]);
  LODWORD(STACK[0x370]) = 0;
  LODWORD(STACK[0x2BC]) = 0;
  LODWORD(STACK[0x2B0]) = 0;
  v101 = v100 ^ a4 ^ a7 ^ v91 ^ v94 ^ v99;
  LODWORD(STACK[0x318]) = (v96 + 1279) | 0x40C;
  v102 = STACK[0x348];
  v103 = STACK[0x28C];
  v104 = STACK[0x2D4];
  v105 = STACK[0x498];
  v106 = STACK[0x428];
  v107 = LODWORD(STACK[0x28C]) ^ LODWORD(STACK[0x348]) ^ LODWORD(STACK[0x4A0]) ^ LODWORD(STACK[0x454]) ^ LODWORD(STACK[0x3F8]) ^ LODWORD(STACK[0x2D4]) ^ LODWORD(STACK[0x418]) ^ LODWORD(STACK[0x3E8]) ^ LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x3C4]) ^ LODWORD(STACK[0x3E0]) ^ LODWORD(STACK[0x498]) ^ v101 ^ LODWORD(STACK[0x428]) ^ v93;
  v108 = v107 ^ 0x4814E70D;
  v109 = ((v107 ^ 0xBF693F84) & (LODWORD(STACK[0x2AC]) ^ 0x240D4960) ^ (v107 ^ 0x4814E70D) & 0x1C6AD050) >> (((v96 - 1) | 0xC) ^ 0xE);
  v110 = STACK[0x344];
  v111 = LODWORD(STACK[0x468]) ^ LODWORD(STACK[0x344]) ^ LODWORD(STACK[0x440]) ^ LODWORD(STACK[0x438]) ^ LODWORD(STACK[0x448]) ^ LODWORD(STACK[0x3E4]) ^ LODWORD(STACK[0x408]) ^ LODWORD(STACK[0x460]) ^ LODWORD(STACK[0x3D8]) ^ LODWORD(STACK[0x3F4]) ^ LODWORD(STACK[0x400]) ^ LODWORD(STACK[0x410]) ^ LODWORD(STACK[0x3DC]) ^ a57 ^ LODWORD(STACK[0x3CC]) ^ a52 ^ LODWORD(STACK[0x4C0]);
  v112 = STACK[0x3F0];
  v113 = a51 ^ LODWORD(STACK[0x3C8]) ^ LODWORD(STACK[0x3F0]) ^ a48;
  LODWORD(STACK[0x478]) = v93;
  v114 = STACK[0x4B0];
  v115 = v108 ^ 0xFD49B089 ^ v109;
  v116 = v111 ^ v113 ^ LODWORD(STACK[0x4B0]) ^ v98 ^ LODWORD(STACK[0x3D0]) ^ LODWORD(STACK[0x4C8]);
  v117 = v116 ^ 0xCC70CA6A;
  v118 = STACK[0x2C8];
  v119 = (v116 ^ 0x3B0D12E2) & (LODWORD(STACK[0x2C8]) ^ 0xC42297BA) ^ (v116 ^ 0xCC70CA6A) & 0xCFE60528;
  v120 = STACK[0x30C];
  v121 = STACK[0x350];
  v122 = STACK[0x310];
  LODWORD(STACK[0x290]) = ((v115 & a78) << LODWORD(STACK[0x350])) + ((v115 & STACK[0x30C]) >> LODWORD(STACK[0x310]));
  v123 = STACK[0x304];
  v124 = STACK[0x35C];
  v125 = STACK[0x308];
  v126 = STACK[0x354];
  LODWORD(STACK[0x294]) = (((v117 ^ (v119 >> 1) ^ 0x94CFD88D) & STACK[0x304]) << LODWORD(STACK[0x35C])) ^ (((v117 ^ (v119 >> 1) ^ 0x94CFD88D) & STACK[0x308]) >> LODWORD(STACK[0x354]));
  v761 = (((v114 ^ ((v114 & a87) >> 1)) & v123) << v124) | (((v114 ^ ((v114 & a87) >> 1)) & v125) >> v126);
  v759 = ((v123 & (a57 ^ ((a57 & a87) >> 1))) << v121) + ((v125 & (a57 ^ ((a57 & a87) >> 1))) >> v126);
  v128 = v118 ^ 0xBC49292;
  v764 = (((v112 ^ (((v118 ^ 0xBC49292) & v112) >> 1)) & v120) >> v122) | (((v112 ^ (((v118 ^ 0xBC49292) & v112) >> 1)) & a78) << v121);
  v756 = ((v123 & (v102 ^ ((a87 & v102) >> 1))) << v124) + (((v102 ^ ((a87 & v102) >> 1)) & v120) >> v122);
  LODWORD(STACK[0x4B8]) = (((v98 ^ ((v98 & (v118 ^ 0xBC49292u)) >> 1)) & v123) << v121) | (((v98 ^ ((v98 & (v118 ^ 0xBC49292u)) >> 1)) & v120) >> v126);
  LODWORD(STACK[0x488]) = (((v104 ^ ((a87 & v104) >> 1)) & v120) >> v122) + (((v104 ^ ((a87 & v104) >> 1)) & a78) << v124);
  v129 = v101 ^ (((v101 ^ 0xA5C23E30) & (v118 ^ 0xF0F15FBA) ^ v101 & 0xFB35CD28) >> 1) ^ 0xF5423821;
  LODWORD(STACK[0x348]) = ((v129 & a78) << v124) + ((v129 & v120) >> v122);
  LODWORD(STACK[0x4B0]) = (((a51 ^ ((a51 & a87) >> 1)) & v120) >> v122) | (((a51 ^ ((a51 & a87) >> 1)) & a78) << v124);
  LODWORD(STACK[0x4A8]) = ((v123 & (v103 ^ ((a87 & v103) >> 1))) << v121) ^ ((v125 & (v103 ^ ((a87 & v103) >> 1))) >> v122);
  v130 = LODWORD(STACK[0x4A0]) ^ (((v118 ^ 0xBC49292u) & STACK[0x4A0]) >> 1);
  LODWORD(STACK[0x4A0]) = ((v130 & v120) >> v122) + ((v130 & a78) << v124);
  v131 = v105 ^ (((v105 ^ 0x9ED96846) & (v118 ^ 0x9DC4C94) ^ v105 & 0x218DE06) >> 1) ^ 0x9FD54C45;
  LODWORD(STACK[0x498]) = ((v131 & v125) >> v126) ^ ((v131 & v123) << v121);
  LODWORD(STACK[0x320]) = ((v123 & (v110 ^ ((a87 & v110) >> 1))) << v124) ^ (((v110 ^ ((a87 & v110) >> 1)) & v120) >> v122);
  LODWORD(STACK[0x344]) = (((a52 ^ (((v118 ^ 0xBC49292) & a52) >> 1)) & v123) << v121) ^ (((a52 ^ (((v118 ^ 0xBC49292) & a52) >> 1)) & v125) >> v126);
  v132 = v106 ^ (((v106 ^ 0xA5C23E30) & (v118 ^ 0x99B5AD56) ^ v106 & 0x92713FC4) >> 1) ^ 0xE5E22131;
  LODWORD(STACK[0x490]) = ((v132 & a78) << v121) + ((v132 & v120) >> v126);
  v133 = LODWORD(STACK[0x3DC]) ^ (((v118 ^ 0xBC49292u) & STACK[0x3DC]) >> 1);
  LODWORD(STACK[0x338]) = ((v133 & a78) << v124) ^ ((v133 & v125) >> v126);
  v134 = a48 ^ (((v118 ^ 0xA23CB390) & (a48 ^ 0x159A9E9E) ^ a48 & 0xA9F82102) >> 1) ^ 0x15569E9E;
  LODWORD(STACK[0x480]) = ((v134 & a78) << v124) + ((v134 & v125) >> v126);
  v135 = STACK[0x2AC];
  v136 = LODWORD(STACK[0x478]) ^ (((LODWORD(STACK[0x478]) ^ 0xA5C23E30) & (LODWORD(STACK[0x2AC]) ^ 0xB7CA3E70) ^ STACK[0x478] & 0x8FADA740) >> 1) ^ 0xE7022D31;
  LODWORD(STACK[0x478]) = ((v136 & a78) << v121) | ((v136 & v120) >> v126);
  v137 = LODWORD(STACK[0x468]) ^ (((v118 ^ 0xBC49292u) & STACK[0x468]) >> 1);
  v138 = STACK[0x430];
  v139 = (v118 ^ 0x62DF6352) & (LODWORD(STACK[0x430]) ^ 0x159A9E9E) ^ STACK[0x430] & 0x691BF1C0;
  LODWORD(STACK[0x470]) = ((v137 & v120) >> v126) + ((v137 & v123) << v121);
  LODWORD(STACK[0x330]) = (((v138 ^ (v139 >> 1) ^ 0x1517D6DF) & v123) << v121) ^ (((v138 ^ (v139 >> 1) ^ 0x1517D6DF) & v125) >> v126);
  v140 = LODWORD(STACK[0x454]) ^ (((v118 ^ 0xBC49292u) & STACK[0x454]) >> 1);
  LODWORD(STACK[0x468]) = ((v140 & v123) << v121) + ((v140 & v125) >> v122);
  v141 = LODWORD(STACK[0x460]) ^ ((a87 & STACK[0x460]) >> 1);
  LODWORD(STACK[0x328]) = ((v123 & v141) << v121) | ((v125 & v141) >> v126);
  v142 = LODWORD(STACK[0x438]) ^ ((a87 & STACK[0x438]) >> 1);
  LODWORD(STACK[0x460]) = ((v123 & v142) << v121) + ((v125 & v142) >> v126);
  v143 = LODWORD(STACK[0x3C4]) ^ (((v118 ^ 0xBC49292u) & STACK[0x3C4]) >> 1);
  v144 = LODWORD(STACK[0x3D0]) ^ ((STACK[0x3D0] & a87) >> 1);
  LODWORD(STACK[0x458]) = ((v143 & v120) >> v126) + ((v143 & a78) << v121);
  LODWORD(STACK[0x454]) = ((v144 & v123) << v121) ^ ((v144 & v120) >> v122);
  v145 = LODWORD(STACK[0x448]) ^ ((a87 & STACK[0x448]) >> 1);
  v146 = STACK[0x3E8];
  v147 = (v118 ^ 0x3F93AA46) & (LODWORD(STACK[0x3E8]) ^ 0x66952FE4) ^ STACK[0x3E8] & 0x345738D4;
  v148 = ((v123 & v145) << v124) + ((v125 & v145) >> v126);
  LODWORD(STACK[0x438]) = (((a60 ^ (((v118 ^ 0xBC49292) & a60) >> 1)) & v120) >> v122) ^ (((a60 ^ (((v118 ^ 0xBC49292) & a60) >> 1)) & a78) << v121);
  LODWORD(STACK[0x448]) = (((v146 ^ (v147 >> 1) ^ 0x749FBB87) & a78) << v121) + (((v146 ^ (v147 >> 1) ^ 0x749FBB87) & v125) >> v126);
  v149 = LODWORD(STACK[0x2DC]) ^ ((a87 & STACK[0x2DC]) >> 1);
  LODWORD(STACK[0x430]) = ((v123 & v149) << v124) | ((v149 & v120) >> v122);
  v150 = LODWORD(STACK[0x408]) ^ ((a87 & STACK[0x408]) >> 1);
  v151 = ((v123 & v150) << v121) + ((v125 & v150) >> v126);
  v152 = LODWORD(STACK[0x2D8]) ^ (((v118 ^ 0xBC49292u) & STACK[0x2D8]) >> 1);
  LODWORD(STACK[0x428]) = ((v152 & v120) >> v122) | ((v152 & a78) << v124);
  v153 = LODWORD(STACK[0x3F8]) ^ ((a87 & STACK[0x3F8]) >> 1);
  v154 = LODWORD(STACK[0x3A0]) ^ (((v118 ^ 0xBC49292u) & STACK[0x3A0]) >> 1);
  LODWORD(STACK[0x420]) = ((v154 & v120) >> v122) | ((v154 & a78) << v124);
  v155 = LODWORD(STACK[0x3F4]) ^ (((v118 ^ 0xBC49292u) & STACK[0x3F4]) >> 1);
  v156 = LODWORD(STACK[0x3A8]) ^ ((a87 & STACK[0x3A8]) >> 1);
  v157 = ((v123 & v153) << v121) + ((v125 & v153) >> v126);
  v158 = ((v155 & v125) >> v122) ^ ((v155 & v123) << v124);
  v159 = LODWORD(STACK[0x410]) ^ (((v118 ^ 0xBC49292u) & STACK[0x410]) >> 1);
  LODWORD(STACK[0x408]) = ((v156 & a78) << v121) ^ ((v156 & v120) >> v126);
  v160 = ((v159 & a78) << v124) + ((v159 & v120) >> v122);
  v161 = LODWORD(STACK[0x2E0]) ^ ((a87 & STACK[0x2E0]) >> 1);
  v162 = LODWORD(STACK[0x400]) ^ (((v118 ^ 0xBC49292u) & STACK[0x400]) >> 1);
  v163 = LODWORD(STACK[0x2E8]) ^ ((a87 & STACK[0x2E8]) >> 1);
  LODWORD(STACK[0x400]) = ((v123 & v161) << v121) ^ ((v125 & v161) >> v126);
  LODWORD(STACK[0x3F8]) = ((v125 & v163) >> v126) + ((v163 & a78) << v124);
  v164 = LODWORD(STACK[0x418]) ^ (((v118 ^ 0xBC49292u) & STACK[0x418]) >> 1);
  v165 = ((v162 & v120) >> v122) ^ ((v162 & v123) << v121);
  v166 = ((v164 & v123) << v121) + ((v164 & v120) >> v122);
  v167 = LODWORD(STACK[0x388]) ^ ((a87 & STACK[0x388]) >> 1);
  v168 = LODWORD(STACK[0x4C8]) ^ (((LODWORD(STACK[0x4C8]) ^ 0xD9954C44) & (v118 ^ 0x1BA58A8) ^ STACK[0x4C8] & 0xA7ECA3A) >> 1) ^ 0xDD9F6844;
  LODWORD(STACK[0x3F0]) = ((v125 & v167) >> v126) ^ ((v167 & a78) << v124);
  v169 = ((v168 & v125) >> v122) | ((v168 & v123) << v121);
  v170 = LODWORD(STACK[0x2D0]) ^ ((a87 & STACK[0x2D0]) >> 1);
  LODWORD(STACK[0x3E8]) = ((v170 & a78) << v124) | ((v170 & v120) >> v126);
  v171 = LODWORD(STACK[0x3E0]) ^ ((STACK[0x3E0] & a87) >> 1);
  v172 = LODWORD(STACK[0x3B0]) ^ (((v118 ^ 0xBC49292u) & STACK[0x3B0]) >> 1);
  v173 = ((v171 & v125) >> v122) | ((v171 & v123) << v121);
  v174 = LODWORD(STACK[0x440]) ^ ((a87 & STACK[0x440]) >> 1);
  LODWORD(STACK[0x3E0]) = ((v172 & v120) >> v126) ^ ((v172 & a78) << v124);
  v175 = LODWORD(STACK[0x390]) ^ (((v118 ^ 0xBC49292u) & STACK[0x390]) >> 1);
  v176 = ((v123 & v174) << v121) + ((v125 & v174) >> v122);
  v177 = LODWORD(STACK[0x3E4]) ^ ((a87 & STACK[0x3E4]) >> 1);
  LODWORD(STACK[0x3DC]) = ((v175 & a78) << v124) ^ ((v175 & v120) >> v126);
  v178 = LODWORD(STACK[0x2F0]) ^ (((v118 ^ 0xBC49292u) & STACK[0x2F0]) >> 1);
  v179 = ((v123 & v177) << v121) + ((v177 & v120) >> v126);
  LODWORD(STACK[0x3D4]) = ((v178 & v125) >> v122) | ((v178 & a78) << v124);
  v180 = LODWORD(STACK[0x4C0]) ^ (((LODWORD(STACK[0x4C0]) ^ 0x159A9E9E) & (v135 ^ 0x6DC340C) ^ STACK[0x4C0] & 0x3EBBAD3C) >> 1) ^ 0x1FD7D891;
  v181 = LODWORD(STACK[0x4D0]) ^ (((v118 ^ 0xBC49292u) & STACK[0x4D0]) >> 1);
  v182 = ((v125 & v180) >> v126) | ((v180 & a78) << v121);
  LODWORD(STACK[0x3D0]) = ((v181 & v120) >> v122) + ((v181 & v123) << v124);
  v183 = LODWORD(STACK[0x3D8]) ^ ((a87 & STACK[0x3D8]) >> 1);
  v184 = LODWORD(STACK[0x3B4]) ^ ((v128 & STACK[0x3B4]) >> 1);
  v185 = ((v123 & v183) << v121) | ((v183 & v120) >> v126);
  v186 = LODWORD(STACK[0x3C8]) ^ ((STACK[0x3C8] & a87) >> 1);
  LODWORD(STACK[0x3C8]) = ((v184 & a78) << v124) ^ ((v184 & v125) >> v122);
  v187 = ((v186 & v120) >> v122) + ((v186 & v123) << v124);
  v188 = LODWORD(STACK[0x2F8]) ^ ((v128 & STACK[0x2F8]) >> 1);
  LODWORD(STACK[0x3C4]) = ((v188 & v125) >> v126) ^ ((v188 & a78) << v121);
  v189 = LODWORD(STACK[0x3CC]) ^ (((LODWORD(STACK[0x3CC]) ^ 0x15E5862E) & (v135 ^ 0x7F7EE4C2) ^ STACK[0x3CC] & 0x47197DF2) >> 1) ^ 0x1765043F;
  v190 = ((v123 & v189) << v124) | ((v125 & v189) >> v122);
  v191 = LODWORD(STACK[0x3B8]) ^ ((v128 & STACK[0x3B8]) >> 1);
  LODWORD(STACK[0x3B4]) = ((v191 & v120) >> v126) | ((v191 & a78) << v121);
  v192 = LODWORD(STACK[0x4B0]) ^ LODWORD(STACK[0x488]) ^ LODWORD(STACK[0x4A8]) ^ LODWORD(STACK[0x320]) ^ LODWORD(STACK[0x328]);
  LODWORD(STACK[0x2D8]) = v182;
  LODWORD(STACK[0x440]) = v148;
  v193 = LODWORD(STACK[0x460]) ^ v148;
  LODWORD(STACK[0x410]) = v151;
  LODWORD(STACK[0x418]) = v157;
  LODWORD(STACK[0x2DC]) = v176;
  LODWORD(STACK[0x3D8]) = v179;
  v194 = v192 ^ v182 ^ v193 ^ v151 ^ v157 ^ v176 ^ v179;
  v195 = STACK[0x380];
  v196 = STACK[0x298];
  v197 = LODWORD(STACK[0x298]) ^ LODWORD(STACK[0x380]);
  LODWORD(STACK[0x3CC]) = v185;
  LODWORD(STACK[0x2D0]) = v187;
  LODWORD(STACK[0x3B8]) = v190;
  LODWORD(STACK[0x3B0]) = v197 ^ v756;
  v198 = v194 ^ v185 ^ v187 ^ v759 ^ v190 ^ v197 ^ v756;
  v199 = LODWORD(STACK[0x470]) ^ LODWORD(STACK[0x338]) ^ LODWORD(STACK[0x4A0]) ^ LODWORD(STACK[0x468]) ^ LODWORD(STACK[0x458]);
  LODWORD(STACK[0x2F8]) = v158;
  LODWORD(STACK[0x2F0]) = v160;
  LODWORD(STACK[0x2D4]) = v759 ^ v92;
  LODWORD(STACK[0x3A8]) = v761 ^ v92;
  LODWORD(STACK[0x2E8]) = v165;
  LODWORD(STACK[0x3F4]) = v166;
  v200 = v198 ^ v199 ^ v158 ^ v160 ^ v165 ^ v166 ^ LODWORD(STACK[0x344]) ^ LODWORD(STACK[0x480]) ^ v761 ^ LODWORD(STACK[0x330]) ^ LODWORD(STACK[0x448]);
  LODWORD(STACK[0x3A0]) = v197 ^ v764;
  v201 = v197 ^ v764 ^ LODWORD(STACK[0x4B8]);
  LODWORD(STACK[0x3E4]) = v173;
  v202 = v201 ^ v173 ^ LODWORD(STACK[0x454]);
  LODWORD(STACK[0x2E0]) = v169;
  LODWORD(STACK[0x28C]) = v200 ^ v202 ^ v169 ^ LODWORD(STACK[0x498]) ^ LODWORD(STACK[0x348]) ^ LODWORD(STACK[0x490]) ^ LODWORD(STACK[0x478]);
  v203 = STACK[0x378];
  v204 = (v135 ^ 0x2339FAF6) & a68 ^ STACK[0x378] & 0x1B5E63C6;
  LODWORD(STACK[0x4D0]) = v197 ^ a59;
  v205 = a58 ^ LODWORD(STACK[0x398]);
  LODWORD(STACK[0x398]) = a58 ^ a67 ^ a54;
  LODWORD(STACK[0x390]) = a58 ^ a63 ^ a54;
  LODWORD(STACK[0x4C8]) = a58 ^ a61 ^ a54;
  LODWORD(STACK[0x388]) = v205 ^ a54;
  LODWORD(STACK[0x380]) = v195 ^ a65 ^ v196;
  LODWORD(STACK[0x378]) = v195 ^ a66 ^ v196;
  LODWORD(STACK[0x4C0]) = v195 ^ a64 ^ v196;
  v762 = ((v123 & (v203 ^ (v204 >> 1) ^ 0xB6721080)) << v124) | ((v125 & (v203 ^ (v204 >> 1) ^ 0xB6721080)) >> v122);
  v751 = (((a86 ^ ((v128 & a86) >> 1)) & a78) << v121) ^ (((a86 ^ ((v128 & a86) >> 1)) & v120) >> v126);
  v206 = STACK[0x2C8];
  v207 = a71 ^ (((LODWORD(STACK[0x2C8]) ^ 0xDE9CE8CC) & (a71 ^ 0x6BA73B1A) ^ a71 & 0xD5587A5E) >> 1) ^ 0x4B272616;
  v779 = ((v125 & (a88 ^ ((a87 & a88) >> 1))) >> v122) ^ (((a88 ^ ((a87 & a88) >> 1)) & a78) << v121);
  v208 = (v135 ^ 0x40934DB4) & (a70 ^ 0xD62F863C) ^ a70 & 0x78F4D484;
  LODWORD(STACK[0x298]) = ((v207 & v120) >> v126) + ((v207 & v123) << v124);
  v754 = ((v123 & (a70 ^ (v208 >> 1) ^ 0xFE3DC43F)) << v124) + ((v125 & (a70 ^ (v208 >> 1) ^ 0xFE3DC43F)) >> v126);
  v760 = (((a79 ^ ((v128 & a79) >> 1)) & v125) >> v122) ^ (((a79 ^ ((v128 & a79) >> 1)) & v123) << v124);
  v209 = a73 ^ (((v135 ^ 0x6F4956C8) & (a73 ^ 0x607B5D98) ^ a73 & 0x572ECFF8u) >> 1) ^ 0x406E7B55;
  v757 = ((v209 & a78) << v121) | ((v209 & v120) >> v126);
  v742 = (((a69 ^ ((v128 & a69) >> 1)) & v123) << v124) | (((a69 ^ ((v128 & a69) >> 1)) & v125) >> v122);
  v210 = LODWORD(STACK[0x2C0]) ^ ((a87 & STACK[0x2C0]) >> 1);
  v741 = ((v123 & (a74 ^ ((a87 & a74) >> 1))) << v124) | ((v125 & (a74 ^ ((a87 & a74) >> 1))) >> v122);
  v211 = a80 ^ ((v128 & a80) >> 1);
  v778 = ((v210 & a78) << v121) ^ ((v210 & v120) >> v126);
  v777 = ((v211 & a78) << v121) ^ ((v211 & v120) >> v126);
  v212 = a75 ^ (((v135 ^ 0xCC953C96) & STACK[0x29C] ^ a75 & 0xF4F2A5A6) >> 1) ^ 0xFB1E2206;
  LODWORD(STACK[0x29C]) = ((v123 & v212) << v124) | ((v125 & v212) >> v122);
  v213 = LODWORD(STACK[0x31C]) ^ ((a87 & STACK[0x31C]) >> 1);
  v750 = (((a72 ^ ((v128 & a72) >> 1)) & a78) << v121) ^ (((a72 ^ ((v128 & a72) >> 1)) & v120) >> v126);
  v214 = STACK[0x2A8];
  v215 = (v206 ^ 0xE14A0E32) & (LODWORD(STACK[0x2A8]) ^ 0xB5239B14) ^ STACK[0x2A8] & 0xEA8E9CA0;
  LODWORD(STACK[0x31C]) = ((v123 & v213) << v124) + ((v213 & v120) >> v122);
  v216 = *(a89 + (a76 & 0xFE ^ 0x12));
  HIDWORD(v217) = v216 ^ 0x28;
  LODWORD(v217) = v216 << 24;
  v740 = (((v214 ^ (v215 >> 1) ^ 0xE522D715) & a78) << v121) | (((v214 ^ (v215 >> 1) ^ 0xE522D715) & v125) >> v126);
  LOBYTE(v206) = (v217 >> 31) ^ 0x52;
  v218 = *(a89 + (STACK[0x218] & 0xFE ^ 0xF));
  HIDWORD(v217) = v218 ^ 0x28;
  LODWORD(v217) = v218 << 24;
  v219 = (((STACK[0x228] - ((2 * STACK[0x228]) & 0xF8) + 124) ^ *(STACK[0x210] + (STACK[0x228] & 0xFE ^ 0xDA)) ^ 0x30) << 8) & 0xFF00FFFF | (((v217 >> 31) ^ 0x47) << 16);
  v220 = STACK[0x200];
  v221 = *(a89 + (STACK[0x240] & 0xFE ^ 0x5A));
  HIDWORD(v217) = v221 ^ 0x28;
  LODWORD(v217) = v221 << 24;
  v222 = (((STACK[0x238] - ((2 * STACK[0x238]) & 0x78) - 68) ^ 0xA6 ^ *(STACK[0x200] + (STACK[0x238] & 0xFE ^ 0x90))) << 8) | ((((STACK[0x248] ^ 0xFFFFFFBE) - ((2 * (STACK[0x248] ^ 0xFFFFFFBE) + 26) & 0x26)) ^ *(a90 + (STACK[0x248] & 0xFE ^ 0xBA)) ^ 0x3C) << 24) | (((STACK[0x260] + (~(2 * STACK[0x260]) | 0x87) - 67) ^ *(STACK[0x200] + (STACK[0x260] & 0xFE ^ 0xB)) ^ 0x40) << 16);
  v223 = *(STACK[0x210] + (STACK[0x258] & 0xFE ^ 0x34)) ^ 0x7C;
  v224 = v219 | (((STACK[0x268] - ((2 * STACK[0x268]) & 0xF8) + 124) ^ 0xD7 ^ *(STACK[0x210] + (STACK[0x268] & 0xFE ^ 0xA5))) << 24) | v223 ^ STACK[0x258] & 0xFE;
  v225 = ((((STACK[0x250] - ((2 * STACK[0x250]) & 0x78) - 68) ^ 0x35 ^ *(STACK[0x200] + (STACK[0x250] & 0xFE ^ 0xA5))) << 24) | (((STACK[0x270] - ((2 * STACK[0x270]) & 0xF8) + 124) ^ 0xDC ^ *(STACK[0x210] + (STACK[0x270] & 0xFE ^ 0x31))) << 8) | (*(STACK[0x200] + (STACK[0x230] & 0xFE ^ 0x3F)) ^ STACK[0x230] & 0xFE ^ 0xBC) & 0xFF00FFFF | (v206 << 16)) - 2 * ((((((STACK[0x250] - ((2 * STACK[0x250]) & 0x78) - 68) ^ 0x35 ^ *(STACK[0x200] + (STACK[0x250] & 0xFE ^ 0xA5))) << 24) | (((STACK[0x270] - ((2 * STACK[0x270]) & 0xF8) + 124) ^ 0xDC ^ *(STACK[0x210] + (STACK[0x270] & 0xFE ^ 0x31))) << 8)) & 0x6B6E46BF | (*(STACK[0x200] + (STACK[0x230] & 0xFE ^ 0x3F)) ^ STACK[0x230] & 0xFE ^ 0xBC) & 0x6B0046BF | (v206 << 16) & 0x6B6E46BF) ^ (*(STACK[0x200] + (STACK[0x230] & 0xFE ^ 0x3F)) ^ STACK[0x230] & 0xFE ^ 0xBC) & 0xC);
  v225 -= 345094477;
  v226 = (STACK[0x280] + (~(2 * STACK[0x280]) | 7) + 125) ^ 0xFD ^ *(STACK[0x210] + (STACK[0x280] & 0xFE ^ 0x41));
  v227 = *(STACK[0x210] + (STACK[0x220] & 0xFE ^ 0x6C)) ^ STACK[0x220] & 0xFE ^ 0x7C;
  v228 = (((v217 >> 31) ^ 0xBA) << 16) | (((STACK[0x278] - ((2 * STACK[0x278]) & 0x78) - 68) ^ 0x2A ^ *(STACK[0x200] + (STACK[0x278] & 0xFE ^ 0x7C))) << 8) | v227 | ((((a77 ^ 0xFFFFFFEA) - ((2 * (a77 ^ 0xFFFFFFEA) + 26) & 0x26)) ^ 0x6C ^ *(a90 + (a77 & 0xFE ^ 0xEELL))) << 24);
  v229 = v228 - 2 * (v228 & 0x420BA4EF ^ v227 & 0xA) + 1108059365;
  v230 = v225 ^ 0x20F354A8;
  LODWORD(STACK[0x2C0]) = v128;
  v231 = (v225 ^ 0x93D79B1E) & v128 ^ STACK[0x2C8] & 0x78B9DDD2;
  v232 = (v226 | v222) - 2 * ((v226 | v222) & 0x6795056F ^ v226 & 0xC) + 1737819491;
  v233 = STACK[0x2AC];
  v775 = v232 ^ 0xF3810BEB;
  v234 = v232 ^ 0xF3810BEB ^ (((v232 ^ 0x9525BAD8) & a87 ^ STACK[0x2AC] & 0xF2B0BF90) >> 1);
  v235 = (v229 ^ 0x5BF44CF2) & a87 ^ STACK[0x2AC] & 0x19FFE8EE;
  v776[0] = v230;
  v774 = v229 ^ 0xC8792E23;
  v236 = v224 - 2 * (v224 & 0x499A069B ^ v223 & 1) - 912652646;
  v237 = ((((v229 ^ 0xC8792E23 ^ (v235 >> 1) ^ 0x4535C6B4) & v123 | STACK[0x2A0] & 0xC374889B) ^ 0xC374889B) << v124) + (((v229 ^ 0xC8792E23 ^ (v235 >> 1) ^ 0x86414E2F) & v125) >> v126);
  v773 = v236 ^ 0x2BBD291F;
  v238 = v236 ^ 0x2BBD291F ^ (((v236 ^ 0xC99A06F2) & (LODWORD(STACK[0x2C8]) ^ 0x502B5F6E) ^ v236 & 0x5BEFCDFC) >> 1);
  v239 = STACK[0x2CC];
  HIDWORD(v772) = (((LODWORD(STACK[0x2CC]) ^ 0x541C90E3) + 2078039611) ^ ((LODWORD(STACK[0x2CC]) ^ 0xA3770BAF) - 1934113417) ^ ((LODWORD(STACK[0x2CC]) ^ 0xD75E42C4) - 123827170)) + 1941017705;
  LODWORD(v772) = ((v123 & ((v233 >> 1) & 0x2AEEEB6F ^ 0x5DFF1ED6)) << v124) ^ ((((v233 >> 1) & 0x2AEEEB6F ^ 0x5DFF1ED6) & v120) >> v122) ^ (((v234 ^ 0x8C04422B) & v125) >> v126) ^ ((((v234 ^ 0xF8964B1) & v123 | STACK[0x2A0] & 0x838D269A) ^ 0x838D269A) << v124);
  HIDWORD(v771) = (((((v230 ^ (v231 >> 1) ^ 0xD73FE438) & a78 | STACK[0x2A4] & 0x18E2BE15) ^ 0x18E2BE15) << v121) + (((v230 ^ (v231 >> 1) ^ 0xCFDD5A2D) & v120) >> v122)) ^ ((((a62 & 0x5301E87B ^ 0xA70398BF) & a78) << v121) | (((a62 & 0x5301E87B ^ 0xA70398BF) & v125) >> v126));
  LODWORD(v771) = v237 ^ (((((v233 >> 1) & 0x72305F42 ^ 0xF450F285) & a78) << v121) | ((((v233 >> 1) & 0x72305F42 ^ 0xF450F285) & v120) >> v126));
  HIDWORD(v770) = (((((v238 ^ 0xAB02A567) & a78 | STACK[0x2A4] & 0x6DE088F2) ^ 0x6DE088F2) << v121) + (((v238 ^ 0xC6E22D95) & v120) >> v122)) ^ ((((a62 & 0x4EF74B89 ^ 0x990CDE1B) & v125) >> v122) + (((a62 & 0x4EF74B89 ^ 0x990CDE1B) & v123) << v124));
  v240 = a62 & 0x4A3C0F51 ^ 0x945817E3;
  v241 = (LODWORD(STACK[0x2AC]) >> 1) & 0x4A3C0F51 ^ 0x9C4812B2;
  LODWORD(STACK[0x280]) = ((v123 & v241) << v121) + ((v241 & v120) >> v126);
  LODWORD(STACK[0x278]) = ((v123 & v241) << v124) | ((v125 & v241) >> v126);
  LODWORD(STACK[0x258]) = v240;
  LODWORD(STACK[0x260]) = v240 & a78;
  LODWORD(STACK[0x270]) = ((v240 & a78) << v121) | ((v240 & v120) >> v122);
  v242 = a62 & 0x34E0FD25 ^ 0x6D21B34A;
  v243 = (v233 >> 1) & 0x34E0FD25 ^ 0x7DE1364B;
  LODWORD(STACK[0x268]) = ((v123 & v243) << v121) + ((v243 & v120) >> v126);
  LODWORD(STACK[0x250]) = ((v242 & v120) >> v122) | ((v242 & v123) << v121);
  LODWORD(STACK[0x240]) = ((v125 & v243) >> v126) + ((v243 & a78) << v124);
  v244 = a62 & 0x650ACAC ^ 0x8E15151;
  v245 = v244 & a78;
  v246 = v244 & v120;
  LODWORD(STACK[0x248]) = (v246 >> v122) | (v245 << v121);
  LODWORD(STACK[0x220]) = (v233 >> 1) & 0x650ACAC ^ 0x8B1D5D1;
  LODWORD(STACK[0x238]) = (v245 << v124) | (v246 >> v126);
  v247 = (v233 >> 1) & 0x791BD001 ^ 0xEA246002;
  LODWORD(STACK[0x228]) = v247;
  LODWORD(STACK[0x230]) = v247 & v120;
  LODWORD(STACK[0x218]) = ((v247 & v120) >> v122) | ((v247 & a78) << v121);
  v248 = a62 & 0x791BD001 ^ 0xF335E003;
  LODWORD(v770) = ((v248 & v125) >> v126) + ((v248 & v123) << v124);
  HIDWORD(v769) = ((v248 & a78) << v121) | ((v248 & v125) >> v122);
  v746 = (v233 >> 1) & 0xC2C4B16 ^ 0x1478DE3D;
  v745 = a62 & 0xC2C4B16 ^ 0x1C78DF2D;
  LODWORD(v769) = 615541889 * ((LODWORD(STACK[0x290]) ^ LODWORD(STACK[0x28C])) - LODWORD(STACK[0x294]));
  v249 = (v233 >> 1) & 0x60CF7D4F ^ 0xC19DB697;
  v250 = a62 & 0x60CF7D4F ^ 0xC15CB3D6;
  v744 = ((v250 & v120) >> v126) + ((v250 & v123) << v124);
  v743 = ((v250 & a78) << v124) | ((v250 & v120) >> v122);
  v251 = a62 & 0x6749B044 ^ 0xCBD360C9;
  v252 = (v233 >> 1) & 0x6749B044 ^ 0xCA92E089;
  v253 = a62 & 0x61011275 ^ 0xC30224AA;
  v254 = (v233 >> 1) & 0x61011275 ^ 0xC20324FB;
  v255 = (v233 >> 1) & 0x3A14EA7;
  v739 = (v233 & 0x600180C ^ 0xFFFFE7FF) + 121806158 + (v255 ^ 0x214C80);
  v256 = a62 & 0x3A14EA7 ^ 0x6E2D54F;
  v257 = v255 ^ 0x763D1CE;
  v258 = (v233 >> 1) & 0x22B55C3C ^ 0x455BF460;
  v259 = a62 & 0x22B55C3C ^ 0x45CAF070;
  v732 = (v251 & v123) << v124;
  v260 = (v251 & v125) >> v122;
  v738 = v779 ^ v732 ^ v260;
  v736 = ((v251 & v123) << v121) | v260;
  v734 = ((v123 & v252) << v121) | ((v252 & v120) >> v122);
  v261 = (v253 & v120) >> v126;
  v262 = (v253 & a78) << v121;
  v731 = ((v253 & v120) >> v122) | v262;
  v733 = v261 | v262;
  v729 = v261 + ((v253 & a78) << v124);
  v727 = ((v253 & v123) << v124) | ((v253 & v125) >> v122);
  v725 = ((v254 & a78) << v121) + ((v254 & v120) >> v126);
  v263 = (v256 & v123) << v121;
  v264 = (v256 & v125) >> v122;
  v723 = v264 | v263;
  v720 = ((v256 & v120) >> v126) | v263;
  v718 = ((v123 & v257) << v121) | ((v257 & v120) >> v126);
  v265 = (v257 & a78) << v124;
  v266 = (v125 & v257) >> v122;
  v722 = v266 + v265;
  v717 = v266 | v265;
  v267 = (v259 & a78) << v124;
  v268 = (v259 & v120) >> v122;
  v715 = v259 & v125;
  HIDWORD(v768) = ((v259 & v125) >> v122) | v267;
  LODWORD(v768) = v268 + v267;
  v269 = v259 & v123;
  HIDWORD(v767) = ((v259 & v123) << v121) + v268;
  v270 = (v123 & v258) << v121;
  v271 = (v125 & v258) >> v126;
  LODWORD(v767) = v270 + ((v258 & v120) >> v126);
  HIDWORD(v766) = v270 | v271;
  v710 = v271 + ((v258 & a78) << v124);
  LODWORD(STACK[0x2CC]) = (((v239 ^ 0x1032E433) + 1072835307) ^ ((v239 ^ 0xFBC25BEF) - 738028233) ^ ((v239 ^ 0xCBC56654) - 469391218)) - 1794414187;
  LODWORD(v766) = LODWORD(STACK[0x2C8]) ^ 0xB548F200;
  HIDWORD(v765) = LODWORD(STACK[0x2C8]) ^ 0x7F1DCB40;
  HIDWORD(v707) = LODWORD(STACK[0x2C8]) ^ 0xDEC07E4;
  LODWORD(v765) = v233 & 0xE7E1ACEC;
  HIDWORD(v763) = v233 ^ 0x329E99E8;
  LODWORD(v707) = v233 ^ 0x731C0AA6;
  v272 = v762 ^ v757;
  LODWORD(v763) = v762 ^ v757 ^ ((STACK[0x258] & v125) >> v122) ^ (LODWORD(STACK[0x260]) << v124) ^ v760;
  v273 = LODWORD(STACK[0x278]) ^ v760;
  v274 = LODWORD(STACK[0x270]) ^ v760;
  HIDWORD(v758) = v272 ^ LODWORD(STACK[0x280]) ^ v760;
  LODWORD(v758) = v272 ^ v273;
  HIDWORD(v755) = v272 ^ v274;
  v275 = v740 ^ v754;
  LODWORD(v755) = v740 ^ v754 ^ ((v242 & a78) << v124) ^ ((v242 & v125) >> v122);
  HIDWORD(v753) = v275 ^ LODWORD(STACK[0x268]);
  LODWORD(v753) = v275 ^ LODWORD(STACK[0x250]);
  HIDWORD(v752) = v275 ^ LODWORD(STACK[0x240]);
  v276 = v751 ^ v750;
  v277 = v123 & STACK[0x220];
  v278 = v125 & STACK[0x220];
  LODWORD(v752) = v751 ^ v750 ^ LODWORD(STACK[0x248]);
  HIDWORD(v749) = v276 ^ (v278 >> v126) ^ (v277 << v124);
  LODWORD(v749) = v276 ^ (v278 >> v122) ^ (v277 << v121);
  HIDWORD(v748) = v276 ^ LODWORD(STACK[0x238]);
  LODWORD(v748) = LODWORD(STACK[0x218]) ^ v778 ^ LODWORD(STACK[0x31C]) ^ LODWORD(STACK[0x294]) ^ LODWORD(STACK[0x28C]) ^ LODWORD(STACK[0x290]);
  HIDWORD(v747) = (LODWORD(STACK[0x230]) >> v126) ^ ((v123 & STACK[0x228]) << v124);
  v279 = (v125 & v746) >> v126;
  v280 = (v746 & a78) << v124;
  LODWORD(v747) = v279 + v280;
  HIDWORD(a45) = v280 ^ v279;
  v281 = (v745 & v123) << v121;
  v282 = (v745 & v120) >> v122;
  LODWORD(a44) = v282 | v281;
  LODWORD(a43) = v281 ^ v282;
  v283 = v123;
  v284 = LODWORD(STACK[0x298]) ^ v777;
  LODWORD(a42) = v284 ^ (((v125 & v249) >> v122) | ((v249 & a78) << v121));
  LODWORD(a41) = v284 ^ v744;
  LODWORD(a40) = v284 ^ ((v125 & v249) >> v126) ^ ((v123 & v249) << v121);
  LODWORD(a39) = v284 ^ v743;
  v285 = (v252 & v120) >> v126;
  v286 = v123 & v254;
  v287 = v125 & v254;
  v288 = v287 >> v122;
  v289 = v286 << v124;
  v290 = (v286 << v124) + (v287 >> v126);
  v291 = (v286 << v121) | v288;
  v292 = v288 ^ v289;
  v293 = v740 ^ v742;
  v294 = v740 ^ v741;
  v295 = (((v739 + 1) & a78) << v124) ^ (((v739 + 1) & v120) >> v126);
  LODWORD(a38) = LODWORD(STACK[0x29C]) ^ v738;
  LODWORD(a37) = LODWORD(STACK[0x29C]) ^ v779 ^ ((v251 & v120) >> v126) ^ v732;
  LODWORD(a36) = LODWORD(STACK[0x29C]) ^ v779 ^ (((v125 & v252) >> v122) + ((v252 & a78) << v121));
  LODWORD(a35) = LODWORD(STACK[0x29C]) ^ v779 ^ v285 ^ ((v252 & a78) << v121);
  HIDWORD(v737) = LODWORD(STACK[0x29C]) ^ v779 ^ v736;
  LODWORD(v737) = LODWORD(STACK[0x29C]) ^ v779 ^ (((v252 & a78) << v124) + v285);
  HIDWORD(v735) = LODWORD(STACK[0x29C]) ^ v779 ^ v734;
  LODWORD(v735) = LODWORD(STACK[0x29C]) ^ v779 ^ ((v251 & v125) >> v126) ^ ((v251 & a78) << v124);
  v296 = v121;
  HIDWORD(a32) = v293 ^ v733;
  LODWORD(a31) = v293 ^ v292;
  LODWORD(v730) = v293 ^ v290;
  HIDWORD(v730) = v293 ^ v731;
  HIDWORD(v728) = v293 ^ v729;
  LODWORD(v728) = v293 ^ v291;
  HIDWORD(v726) = v293 ^ v727;
  LODWORD(v726) = v293 ^ v725;
  HIDWORD(v724) = v294 ^ v295;
  v297 = v126;
  LODWORD(v724) = v294 ^ v723;
  HIDWORD(v721) = v294 ^ v722;
  LODWORD(v721) = v294 ^ v720;
  HIDWORD(v719) = v294 ^ (((v256 & a78) << v124) + v264);
  LODWORD(v719) = v294 ^ v718;
  HIDWORD(v716) = v294 ^ v717;
  LODWORD(v716) = (v715 >> v126) ^ (v269 << v124);
  v298 = STACK[0x318];
  HIDWORD(v714) = ((v258 & a78) << v121) ^ ((v258 & v120) >> v122);
  LODWORD(v714) = LODWORD(STACK[0x2A8]) ^ 0xAAF1EA64;
  HIDWORD(v713) = LODWORD(STACK[0x2A8]) ^ 0x69D2DCB5;
  LODWORD(v713) = STACK[0x2A0] & 0xA099B13F;
  HIDWORD(v712) = STACK[0x2A0] & 0x10DFB442;
  LODWORD(v712) = STACK[0x2A4] & 0xAB696B43;
  HIDWORD(v711) = STACK[0x2A4] & 0x2A05C292;
  HIDWORD(v709) = LODWORD(STACK[0x31C]) ^ -LODWORD(STACK[0x31C]);
  LODWORD(v709) = v777 ^ v710;
  LODWORD(v711) = LODWORD(STACK[0x288]) ^ a81;
  HIDWORD(v708) = a88 ^ v711;
  LODWORD(STACK[0x2C8]) = STACK[0x358];
  LODWORD(STACK[0x318]) = v298;
  v299 = STACK[0x4D8];
  v300 = *(a89 + (*(STACK[0x4D8] + 11) ^ 0xB2));
  HIDWORD(v217) = v300 ^ 0x28;
  LODWORD(v217) = v300 << 24;
  v301 = v217 >> 31;
  v302 = *(a89 + (*(STACK[0x4D8] + 8) ^ 0xE6));
  HIDWORD(v217) = v302 ^ 0x28;
  LODWORD(v217) = v302 << 24;
  v303 = v217 >> 31;
  LODWORD(v708) = (v298 - 7335) | 0xA00;
  v304 = *(STACK[0x4D8] + ((v708 + 2086226407) ^ 0x7C595445u));
  LODWORD(STACK[0x218]) = v298 - 2315;
  LOBYTE(v281) = ((v304 ^ 0x83) + 3) ^ ((v304 ^ 0x4A) - 52) ^ (v298 - 11 + (v304 ^ 0xCD) + 73);
  v305 = v301 ^ 0xC6;
  v306 = v305 | ((*(a90 + v304) ^ 0xDA ^ (v281 - ((2 * v281 + 14) & 0x26) + 122)) << 8);
  v307 = v299[2];
  LOBYTE(v264) = ((v307 ^ 0x91) + 115) ^ ((v307 ^ 0x9D) + 127) ^ ((v307 ^ 0x73) - 111);
  LODWORD(v307) = *(a90 + (v307 ^ 0x7B)) ^ 0x5E ^ (v264 + ((2 * v264) & 0x26 ^ 0xDF) + 100);
  v308 = *(a89 + (v299[12] ^ 0xC6));
  HIDWORD(v217) = v308 ^ 0x28;
  LODWORD(v217) = v308 << 24;
  v309 = ((v303 ^ 0x96) << 24) | ((v299[9] ^ 0x37 ^ *(v220 + (v299[9] ^ 0xD0))) << 16);
  LODWORD(v307) = ((*v299 ^ ~*(v220 + (*v299 ^ 0x82))) << 24) | (v307 << 8) | v299[3] ^ 0xD7 ^ *(v220 + (v299[3] ^ 0x72)) | ((v299[1] ^ 5 ^ *(v220 + (v299[1] ^ 0x49))) << 16);
  v310 = ((v299[4] ^ *(STACK[0x210] + (v299[4] ^ 0x5DLL)) ^ 0xE) << 24) | ((v299[5] ^ 0x93 ^ *(STACK[0x210] + (v299[5] ^ 0x4CLL))) << 16) | ((v299[6] ^ 0xC9 ^ *(v220 + (v299[6] ^ 0x4FLL))) << 8);
  v311 = v307 ^ ((v307 & STACK[0x2C0]) >> 1);
  v312 = (v309 | v306) ^ (((v309 | v306) & a87) >> 1);
  v313 = ((v299[13] ^ 0x72 ^ *(v220 + (v299[13] ^ 0x8ALL))) << 16) | (((v217 >> 31) ^ 0xA0) << 24) | ((v299[14] ^ 0x71 ^ *(STACK[0x210] + (v299[14] ^ 0x83))) << 8) | v299[15] ^ *(STACK[0x210] + (v299[15] ^ 0xA0)) ^ 0x1F;
  v314 = v313 ^ ((v313 & STACK[0x2C0]) >> 1);
  LODWORD(STACK[0x2A8]) = 2086229061;
  LODWORD(STACK[0x2AC]) = LODWORD(STACK[0x2CC]) < 0xA50080E7;
  if ((HIDWORD(v772) + 2086229061) >= 0x11)
  {
    a82 = v775;
  }

  v316 = a82 ^ (((a82 ^ 0x94140EA2) & v766 ^ a82 & 0xBE8C6092) >> 1);
  if ((HIDWORD(v772) + 2086229061) >= 0x11)
  {
    a83 = v776[0];
  }

  v318 = a83 ^ (((a83 ^ 0x2C7CBE88) & a87 ^ v765) >> 1);
  if ((HIDWORD(v772) + 2086229061) >= 0x11)
  {
    a84 = v774;
  }

  v320 = a84 ^ (((a84 ^ 0x8A728A3E) & HIDWORD(v765) ^ a84 & 0x74D959D2) >> 1);
  if ((HIDWORD(v772) + 2086229061) >= 0x11)
  {
    a85 = v773;
  }

  v322 = a85 ^ (((a85 ^ 0xE2272FEC) & HIDWORD(v763) ^ a85 & 0xAF900D8) >> 1);
  v323 = v310 | v299[7] ^ 0x2F ^ *(v220 + (v299[7] ^ 0xD4));
  v324 = ((v323 & a87) >> (v305 & 1) >> !(v305 & 1)) ^ v323;
  v325 = HIDWORD(v771) ^ (((((v318 ^ 0x7B34674B) & v283 | v713) ^ 0xA099B13F) << v121) | (((v318 ^ 0xDBADD674) & v120) >> v297)) ^ ((v324 & a78) << v124) ^ ((v324 & v120) >> v122);
  v326 = STACK[0x390];
  v327 = LODWORD(STACK[0x4D0]) ^ LODWORD(STACK[0x390]) ^ v325;
  v328 = v325;
  LODWORD(STACK[0x2A4]) = v325;
  v329 = (2101576273 * v327 + ((2101576273 * v327) >> 16)) ^ ((2101576273 * v327 + ((2101576273 * v327) >> 16)) >> 8);
  v330 = (v329 ^ LODWORD(STACK[0x488])) + v329 - 2 * ((v329 ^ LODWORD(STACK[0x488])) & v329);
  v331 = v772 ^ (((v316 ^ 0xDE160EE2) & v125) >> v122) ^ LODWORD(STACK[0x2B0]) ^ ((((v316 ^ 0x757F65A1) & a78 | v712) ^ 0xAB696B43) << v124) ^ ((v311 & v283) << v296) ^ ((v311 & v125) >> v297);
  LODWORD(STACK[0x29C]) = v331;
  v332 = v771 ^ LODWORD(STACK[0x2BC]) ^ (((((v320 ^ 0x9A853A74) & v283 | HIDWORD(v712)) ^ 0x10DFB442) << v296) + (((v320 ^ 0x8A5A8E36) & v120) >> v297)) ^ (((v312 & v125) >> v297) + ((v312 & v283) << v124));
  LODWORD(STACK[0x2BC]) = v332;
  v333 = HIDWORD(v770) ^ LODWORD(STACK[0x370]) ^ (((((v322 ^ 0xC9326D1B) & a78 | HIDWORD(v711)) ^ 0x2A05C292) << v124) | (((v322 ^ 0xE337AF89) & v125) >> v122)) ^ (((v314 & v120) >> v122) + ((v314 & a78) << v296));
  LODWORD(STACK[0x2B0]) = v333;
  v334 = 2101576273 * (LODWORD(STACK[0x4C0]) ^ LODWORD(STACK[0x4C8]) ^ v328);
  v335 = -488660003 * (((v334 + HIWORD(v334)) ^ ((v334 + HIWORD(v334)) >> 8)) + v332);
  v336 = 1316303477 * ((v335 - HIWORD(v335) - ((v335 - HIWORD(v335)) >> 8)) ^ v333);
  v337 = v336 + HIWORD(v336);
  v338 = -740829067 * (v337 - v331 + (v337 >> 8)) - ((-740829067 * (v337 - v331 + (v337 >> 8))) >> 16);
  v339 = STACK[0x360];
  LODWORD(STACK[0x2A0]) = v338 ^ STACK[0x360] ^ (v338 >> 8);
  v340 = (v337 >> 8) + v337;
  v341 = v340 + LODWORD(STACK[0x410]) - 2 * (v340 & STACK[0x410]);
  v342 = -740829067 * (v340 - v331) - ((-740829067 * (v340 - v331)) >> 16);
  v343 = v342 ^ v339 ^ (v342 >> 8);
  LODWORD(STACK[0x370]) = v343;
  v344 = (v337 ^ LODWORD(STACK[0x2D0])) - v337 + 2 * (v337 & STACK[0x2D0]);
  v345 = v341 ^ v340;
  v346 = (v343 & 1) == 0;
  v347 = STACK[0x3B0];
  v348 = STACK[0x3A8];
  if (v343)
  {
    v349 = STACK[0x3A8];
  }

  else
  {
    v349 = STACK[0x3B0];
  }

  LODWORD(STACK[0x228]) = v349;
  v350 = STACK[0x3A0];
  if ((v343 & 1) == 0)
  {
    v347 = STACK[0x3A0];
  }

  LODWORD(STACK[0x488]) = v347;
  v351 = STACK[0x2D4];
  if (v343)
  {
    v352 = v350;
  }

  else
  {
    v352 = STACK[0x2D4];
  }

  if (v343)
  {
    v353 = STACK[0x2D4];
  }

  else
  {
    v353 = v348;
  }

  v354 = STACK[0x348];
  if (v343)
  {
    v355 = STACK[0x348];
  }

  else
  {
    v355 = v330;
  }

  LODWORD(STACK[0x258]) = v355;
  v356 = STACK[0x4B0];
  if (v343)
  {
    v354 = STACK[0x4B0];
  }

  LODWORD(STACK[0x28C]) = v354;
  v357 = STACK[0x4B8];
  if (v343)
  {
    v358 = v330;
  }

  else
  {
    v358 = STACK[0x4B8];
  }

  LODWORD(STACK[0x288]) = v358;
  if (v343)
  {
    v359 = v357;
  }

  else
  {
    v359 = v356;
  }

  v360 = STACK[0x4A0];
  v361 = STACK[0x498];
  if (v343)
  {
    v362 = STACK[0x498];
  }

  else
  {
    v362 = STACK[0x4A0];
  }

  LODWORD(STACK[0x2D4]) = v362;
  v363 = STACK[0x4A8];
  if ((v343 & 1) == 0)
  {
    v360 = STACK[0x4A8];
  }

  LODWORD(STACK[0x4A0]) = v360;
  v364 = STACK[0x320];
  if (v343)
  {
    v365 = STACK[0x320];
  }

  else
  {
    v365 = v361;
  }

  if ((v343 & 1) == 0)
  {
    v363 = STACK[0x320];
  }

  LODWORD(STACK[0x238]) = v363;
  v366 = STACK[0x344];
  v367 = STACK[0x490];
  if (v343)
  {
    v368 = STACK[0x490];
  }

  else
  {
    v368 = STACK[0x344];
  }

  LODWORD(STACK[0x320]) = v368;
  v369 = STACK[0x480];
  if (v343)
  {
    v370 = v366;
  }

  else
  {
    v370 = STACK[0x480];
  }

  v371 = STACK[0x338];
  if ((v343 & 1) == 0)
  {
    v369 = STACK[0x338];
  }

  LODWORD(STACK[0x280]) = v369;
  if (v343)
  {
    v372 = v371;
  }

  else
  {
    v372 = v367;
  }

  v373 = STACK[0x330];
  v374 = STACK[0x468];
  if (v346)
  {
    v375 = STACK[0x330];
  }

  else
  {
    v375 = STACK[0x468];
  }

  LODWORD(STACK[0x410]) = v375;
  v376 = STACK[0x470];
  if (v346)
  {
    v377 = STACK[0x470];
  }

  else
  {
    v377 = v373;
  }

  LODWORD(STACK[0x250]) = v377;
  v378 = STACK[0x478];
  if (v346)
  {
    v379 = STACK[0x478];
  }

  else
  {
    v379 = v376;
  }

  LODWORD(STACK[0x298]) = v379;
  if (v346)
  {
    v380 = v374;
  }

  else
  {
    v380 = v378;
  }

  v381 = STACK[0x328];
  v382 = STACK[0x454];
  if (v346)
  {
    v383 = STACK[0x454];
  }

  else
  {
    v383 = STACK[0x328];
  }

  LODWORD(STACK[0x2D0]) = v383;
  v384 = STACK[0x458];
  if (v346)
  {
    v385 = STACK[0x458];
  }

  else
  {
    v385 = v382;
  }

  LODWORD(STACK[0x344]) = v385;
  v386 = STACK[0x460];
  if (v346)
  {
    v387 = STACK[0x460];
  }

  else
  {
    v387 = v384;
  }

  if (v346)
  {
    v388 = v381;
  }

  else
  {
    v388 = STACK[0x460];
  }

  LODWORD(STACK[0x278]) = v388;
  v389 = STACK[0x440];
  v390 = STACK[0x448];
  if (v346)
  {
    v391 = STACK[0x440];
  }

  else
  {
    v391 = STACK[0x448];
  }

  LODWORD(STACK[0x348]) = v391;
  if (v346)
  {
    v392 = v390;
  }

  else
  {
    v392 = v345;
  }

  LODWORD(STACK[0x448]) = v392;
  v393 = STACK[0x418];
  if (!v346)
  {
    v345 = STACK[0x418];
  }

  LODWORD(STACK[0x294]) = v345;
  if (v346)
  {
    v389 = v393;
  }

  v394 = STACK[0x430];
  v395 = STACK[0x428];
  if (v346)
  {
    v396 = STACK[0x430];
  }

  else
  {
    v396 = STACK[0x428];
  }

  LODWORD(STACK[0x338]) = v396;
  v397 = STACK[0x420];
  if (v346)
  {
    v398 = v395;
  }

  else
  {
    v398 = STACK[0x420];
  }

  v399 = STACK[0x438];
  if (v346)
  {
    v400 = STACK[0x438];
  }

  else
  {
    v400 = v394;
  }

  if (v346)
  {
    v401 = STACK[0x420];
  }

  else
  {
    v401 = STACK[0x438];
  }

  v402 = STACK[0x2F8];
  v403 = STACK[0x2F0];
  if (v346)
  {
    v404 = STACK[0x2F8];
  }

  else
  {
    v404 = STACK[0x2F0];
  }

  LODWORD(STACK[0x290]) = v404;
  v405 = STACK[0x3F4];
  if (v346)
  {
    v406 = STACK[0x3F4];
  }

  else
  {
    v406 = v402;
  }

  v407 = STACK[0x2E8];
  if (v346)
  {
    v408 = STACK[0x2E8];
  }

  else
  {
    v408 = STACK[0x3F4];
  }

  LODWORD(STACK[0x240]) = v408;
  if (v346)
  {
    v409 = v403;
  }

  else
  {
    v409 = v407;
  }

  v410 = STACK[0x408];
  v411 = STACK[0x3F0];
  if (v346)
  {
    v412 = STACK[0x3F0];
  }

  else
  {
    v412 = STACK[0x408];
  }

  LODWORD(STACK[0x248]) = v412;
  v413 = STACK[0x400];
  if (v346)
  {
    v414 = v410;
  }

  else
  {
    v414 = STACK[0x400];
  }

  LODWORD(STACK[0x408]) = v414;
  v415 = STACK[0x3F8];
  if (v346)
  {
    v416 = v413;
  }

  else
  {
    v416 = STACK[0x3F8];
  }

  if (v346)
  {
    v417 = STACK[0x3F8];
  }

  else
  {
    v417 = v411;
  }

  v418 = STACK[0x3E4];
  v419 = STACK[0x2DC];
  if (v346)
  {
    v420 = STACK[0x3E4];
  }

  else
  {
    v420 = STACK[0x2DC];
  }

  LODWORD(STACK[0x270]) = v420;
  v421 = STACK[0x2E0];
  if (v346)
  {
    v422 = STACK[0x2E0];
  }

  else
  {
    v422 = v418;
  }

  LODWORD(STACK[0x268]) = v422;
  v423 = STACK[0x3D8];
  if (v346)
  {
    v424 = STACK[0x3D8];
  }

  else
  {
    v424 = v421;
  }

  if (v346)
  {
    v425 = v419;
  }

  else
  {
    v425 = STACK[0x3D8];
  }

  v426 = STACK[0x3DC];
  v427 = STACK[0x3D4];
  if (v346)
  {
    v428 = STACK[0x3DC];
  }

  else
  {
    v428 = STACK[0x3D4];
  }

  v429 = STACK[0x3E0];
  if (v346)
  {
    v430 = STACK[0x3E0];
  }

  else
  {
    v430 = STACK[0x3DC];
  }

  LODWORD(STACK[0x2E0]) = v430;
  v431 = STACK[0x3E8];
  if (v346)
  {
    v429 = STACK[0x3E8];
    v432 = v427;
  }

  else
  {
    v432 = STACK[0x3E8];
  }

  LODWORD(STACK[0x3D4]) = v432;
  v433 = STACK[0x3B8];
  if (v346)
  {
    v434 = v344;
  }

  else
  {
    v434 = STACK[0x3B8];
  }

  LODWORD(STACK[0x2DC]) = v434;
  v435 = STACK[0x3CC];
  if (v346)
  {
    v436 = STACK[0x3CC];
  }

  else
  {
    v436 = v344;
  }

  LODWORD(STACK[0x2F0]) = v436;
  v437 = STACK[0x2D8];
  if (v346)
  {
    v438 = v433;
  }

  else
  {
    v438 = STACK[0x2D8];
  }

  LODWORD(STACK[0x260]) = v438;
  if (v346)
  {
    v435 = v437;
  }

  v439 = STACK[0x3D0];
  v440 = STACK[0x3B4];
  if (v346)
  {
    v441 = STACK[0x3B4];
  }

  else
  {
    v441 = STACK[0x3D0];
  }

  LODWORD(STACK[0x2D8]) = v441;
  v442 = STACK[0x3C8];
  if (v346)
  {
    v443 = v439;
  }

  else
  {
    v443 = STACK[0x3C8];
  }

  LODWORD(STACK[0x2F8]) = v443;
  v444 = STACK[0x3C4];
  if (v346)
  {
    v445 = STACK[0x3C4];
  }

  else
  {
    v445 = v440;
  }

  LODWORD(STACK[0x2E8]) = v445;
  if (!v346)
  {
    v442 = v444;
  }

  v446 = STACK[0x4D0];
  if (v346)
  {
    v447 = STACK[0x4D0];
  }

  else
  {
    v447 = v326;
  }

  LODWORD(STACK[0x330]) = v447;
  v448 = STACK[0x398];
  if (v346)
  {
    v449 = v326;
  }

  else
  {
    v449 = STACK[0x398];
  }

  v450 = STACK[0x380];
  if (!v346)
  {
    v448 = STACK[0x380];
  }

  LODWORD(STACK[0x230]) = v448;
  if (v346)
  {
    v451 = v450;
  }

  else
  {
    v451 = v446;
  }

  v452 = STACK[0x388];
  v453 = STACK[0x378];
  if (v346)
  {
    v454 = STACK[0x378];
  }

  else
  {
    v454 = STACK[0x388];
  }

  LODWORD(STACK[0x328]) = v454;
  v455 = STACK[0x4C8];
  if (v346)
  {
    v456 = v452;
  }

  else
  {
    v456 = STACK[0x4C8];
  }

  LODWORD(STACK[0x220]) = v456;
  v457 = STACK[0x4C0];
  if (v346)
  {
    v458 = STACK[0x4C0];
  }

  else
  {
    v458 = v453;
  }

  if (v346)
  {
    v457 = v455;
  }

  LODWORD(STACK[0x378]) = v457;
  v459 = (STACK[0x370] & 2) == 0;
  v460 = STACK[0x228];
  if ((STACK[0x370] & 2) != 0)
  {
    v461 = v352;
  }

  else
  {
    v461 = STACK[0x228];
  }

  LODWORD(STACK[0x3B0]) = v461;
  if (!v459)
  {
    v352 = v460;
  }

  v462 = STACK[0x488];
  if (v459)
  {
    v463 = STACK[0x488];
  }

  else
  {
    v463 = v353;
  }

  LODWORD(STACK[0x3A0]) = v463;
  if (v459)
  {
    v464 = v353;
  }

  else
  {
    v464 = v462;
  }

  LODWORD(STACK[0x3A8]) = v464;
  v465 = STACK[0x258];
  if (v459)
  {
    v466 = v359;
  }

  else
  {
    v466 = STACK[0x258];
  }

  LODWORD(STACK[0x4B0]) = v466;
  if (v459)
  {
    v467 = v465;
  }

  else
  {
    v467 = v359;
  }

  LODWORD(STACK[0x488]) = v467;
  v468 = STACK[0x28C];
  v469 = STACK[0x288];
  if (v459)
  {
    v470 = STACK[0x28C];
  }

  else
  {
    v470 = STACK[0x288];
  }

  if (v459)
  {
    v468 = STACK[0x288];
  }

  LODWORD(STACK[0x4B8]) = v468;
  v471 = STACK[0x4A0];
  if (v459)
  {
    v472 = v365;
  }

  else
  {
    v472 = STACK[0x4A0];
  }

  LODWORD(STACK[0x498]) = v472;
  if (v459)
  {
    v365 = v471;
  }

  LODWORD(STACK[0x4A8]) = v365;
  v473 = STACK[0x2D4];
  v474 = STACK[0x238];
  if (v459)
  {
    v475 = STACK[0x2D4];
  }

  else
  {
    v475 = STACK[0x238];
  }

  LODWORD(STACK[0x4A0]) = v475;
  if (v459)
  {
    v476 = v474;
  }

  else
  {
    v476 = v473;
  }

  if (v459)
  {
    v477 = v372;
  }

  else
  {
    v477 = v370;
  }

  LODWORD(STACK[0x490]) = v477;
  if (v459)
  {
    v478 = v370;
  }

  else
  {
    v478 = v372;
  }

  LODWORD(STACK[0x480]) = v478;
  v479 = STACK[0x320];
  v480 = STACK[0x280];
  if (v459)
  {
    v481 = STACK[0x320];
  }

  else
  {
    v481 = STACK[0x280];
  }

  if (v459)
  {
    v482 = STACK[0x280];
  }

  else
  {
    v482 = STACK[0x320];
  }

  v483 = STACK[0x250];
  if (v459)
  {
    v484 = v380;
  }

  else
  {
    v484 = STACK[0x250];
  }

  LODWORD(STACK[0x468]) = v484;
  if (v459)
  {
    v485 = v483;
  }

  else
  {
    v485 = v380;
  }

  LODWORD(STACK[0x470]) = v485;
  v486 = STACK[0x410];
  v487 = STACK[0x298];
  if (v459)
  {
    v488 = STACK[0x298];
  }

  else
  {
    v488 = STACK[0x410];
  }

  LODWORD(STACK[0x478]) = v488;
  if (v459)
  {
    v489 = v486;
  }

  else
  {
    v489 = v487;
  }

  v490 = STACK[0x2D0];
  if (v459)
  {
    v491 = STACK[0x2D0];
  }

  else
  {
    v491 = v387;
  }

  LODWORD(STACK[0x454]) = v491;
  if (v459)
  {
    v492 = v387;
  }

  else
  {
    v492 = v490;
  }

  LODWORD(STACK[0x460]) = v492;
  v493 = STACK[0x344];
  v494 = STACK[0x278];
  if (v459)
  {
    v495 = STACK[0x344];
  }

  else
  {
    v495 = STACK[0x278];
  }

  LODWORD(STACK[0x458]) = v495;
  if (v459)
  {
    v496 = v494;
  }

  else
  {
    v496 = v493;
  }

  v497 = STACK[0x448];
  if (v459)
  {
    v498 = v389;
  }

  else
  {
    v498 = STACK[0x448];
  }

  LODWORD(STACK[0x418]) = v498;
  if (v459)
  {
    v389 = v497;
  }

  LODWORD(STACK[0x448]) = v389;
  v499 = STACK[0x348];
  v500 = STACK[0x294];
  if (v459)
  {
    v501 = STACK[0x294];
  }

  else
  {
    v501 = STACK[0x348];
  }

  LODWORD(STACK[0x410]) = v501;
  if (v459)
  {
    v502 = v499;
  }

  else
  {
    v502 = v500;
  }

  LODWORD(STACK[0x440]) = v502;
  if (v459)
  {
    v503 = v398;
  }

  else
  {
    v503 = v400;
  }

  LODWORD(STACK[0x428]) = v503;
  if (v459)
  {
    v504 = v400;
  }

  else
  {
    v504 = v398;
  }

  LODWORD(STACK[0x438]) = v504;
  v505 = STACK[0x338];
  if (v459)
  {
    v506 = STACK[0x338];
  }

  else
  {
    v506 = v401;
  }

  LODWORD(STACK[0x430]) = v506;
  if (v459)
  {
    v507 = v401;
  }

  else
  {
    v507 = v505;
  }

  LODWORD(STACK[0x420]) = v507;
  if (v459)
  {
    v508 = v409;
  }

  else
  {
    v508 = v406;
  }

  if (v459)
  {
    v509 = v406;
  }

  else
  {
    v509 = v409;
  }

  LODWORD(STACK[0x3F4]) = v509;
  v510 = STACK[0x290];
  v511 = STACK[0x240];
  if (v459)
  {
    v512 = STACK[0x240];
  }

  else
  {
    v512 = STACK[0x290];
  }

  if (v459)
  {
    v513 = STACK[0x290];
  }

  else
  {
    v513 = STACK[0x240];
  }

  v514 = STACK[0x248];
  if (v459)
  {
    v515 = STACK[0x248];
  }

  else
  {
    v515 = v416;
  }

  LODWORD(STACK[0x3F0]) = v515;
  if (v459)
  {
    v516 = v416;
  }

  else
  {
    v516 = v514;
  }

  LODWORD(STACK[0x400]) = v516;
  v517 = STACK[0x408];
  if (v459)
  {
    v518 = v417;
  }

  else
  {
    v518 = STACK[0x408];
  }

  LODWORD(STACK[0x3F8]) = v518;
  if (v459)
  {
    v519 = v517;
  }

  else
  {
    v519 = v417;
  }

  LODWORD(STACK[0x408]) = v519;
  v520 = STACK[0x270];
  if (v459)
  {
    v521 = v424;
  }

  else
  {
    v521 = STACK[0x270];
  }

  LODWORD(STACK[0x3D8]) = v521;
  if (v459)
  {
    v522 = v520;
  }

  else
  {
    v522 = v424;
  }

  LODWORD(STACK[0x3E4]) = v522;
  v523 = STACK[0x268];
  if (v459)
  {
    v524 = v425;
  }

  else
  {
    v524 = STACK[0x268];
  }

  if (v459)
  {
    v525 = STACK[0x268];
  }

  else
  {
    v525 = v425;
  }

  if (v459)
  {
    v526 = v428;
  }

  else
  {
    v526 = v429;
  }

  LODWORD(STACK[0x3DC]) = v526;
  if (v459)
  {
    v527 = v429;
  }

  else
  {
    v527 = v428;
  }

  LODWORD(STACK[0x3E8]) = v527;
  v528 = STACK[0x2E0];
  v529 = STACK[0x3D4];
  if (v459)
  {
    v530 = STACK[0x2E0];
  }

  else
  {
    v530 = STACK[0x3D4];
  }

  LODWORD(STACK[0x3E0]) = v530;
  if (v459)
  {
    v531 = v529;
  }

  else
  {
    v531 = v528;
  }

  LODWORD(STACK[0x3D4]) = v531;
  v532 = STACK[0x2DC];
  if (v459)
  {
    v533 = STACK[0x2DC];
  }

  else
  {
    v533 = v435;
  }

  if (v459)
  {
    v534 = v435;
  }

  else
  {
    v534 = STACK[0x2DC];
  }

  v535 = STACK[0x2F0];
  v536 = STACK[0x260];
  if (v459)
  {
    v537 = STACK[0x260];
  }

  else
  {
    v537 = STACK[0x2F0];
  }

  LODWORD(STACK[0x3B8]) = v537;
  if (v459)
  {
    v538 = v535;
  }

  else
  {
    v538 = v536;
  }

  LODWORD(STACK[0x3CC]) = v538;
  v539 = STACK[0x2D8];
  if (v459)
  {
    v540 = STACK[0x2D8];
  }

  else
  {
    v540 = v442;
  }

  LODWORD(STACK[0x3B4]) = v540;
  if (v459)
  {
    v541 = v442;
  }

  else
  {
    v541 = v539;
  }

  LODWORD(STACK[0x3C8]) = v541;
  v542 = STACK[0x2F8];
  v543 = STACK[0x2E8];
  if (v459)
  {
    v544 = STACK[0x2F8];
  }

  else
  {
    v544 = STACK[0x2E8];
  }

  LODWORD(STACK[0x3D0]) = v544;
  if (v459)
  {
    v545 = v543;
  }

  else
  {
    v545 = v542;
  }

  LODWORD(STACK[0x3C4]) = v545;
  if (v459)
  {
    v546 = v451;
  }

  else
  {
    v546 = v449;
  }

  LODWORD(STACK[0x380]) = v546;
  if (v459)
  {
    v547 = v449;
  }

  else
  {
    v547 = v451;
  }

  LODWORD(STACK[0x390]) = v547;
  v548 = STACK[0x330];
  v549 = STACK[0x230];
  if (v459)
  {
    v550 = STACK[0x230];
  }

  else
  {
    v550 = STACK[0x330];
  }

  LODWORD(STACK[0x398]) = v550;
  if (v459)
  {
    v551 = v548;
  }

  else
  {
    v551 = v549;
  }

  LODWORD(STACK[0x4D0]) = v551;
  v552 = STACK[0x220];
  if (v459)
  {
    v553 = STACK[0x220];
  }

  else
  {
    v553 = v458;
  }

  LODWORD(STACK[0x388]) = v553;
  if (v459)
  {
    v554 = v458;
  }

  else
  {
    v554 = v552;
  }

  LODWORD(STACK[0x4C0]) = v554;
  v555 = STACK[0x328];
  v556 = STACK[0x378];
  if (v459)
  {
    v557 = STACK[0x378];
  }

  else
  {
    v557 = STACK[0x328];
  }

  LODWORD(STACK[0x4C8]) = v557;
  if (!v459)
  {
    v555 = v556;
  }

  LODWORD(STACK[0x378]) = v555;
  v558 = STACK[0x2A0];
  v559 = (LODWORD(STACK[0x2A0]) + LODWORD(STACK[0x2C4]));
  v560 = STACK[0x2BC];
  v561 = STACK[0x2B0];
  if ((LOBYTE(STACK[0x2A0]) + LOBYTE(STACK[0x2C4])))
  {
    v562 = STACK[0x2B0];
  }

  else
  {
    v562 = STACK[0x2BC];
  }

  v563 = STACK[0x29C];
  if ((LOBYTE(STACK[0x2A0]) + LOBYTE(STACK[0x2C4])))
  {
    v561 = STACK[0x29C];
  }

  v564 = STACK[0x2A4];
  if ((LOBYTE(STACK[0x2A0]) + LOBYTE(STACK[0x2C4])))
  {
    v565 = STACK[0x2A4];
  }

  else
  {
    v565 = STACK[0x29C];
  }

  if ((LOBYTE(STACK[0x2A0]) + LOBYTE(STACK[0x2C4])))
  {
    v564 = STACK[0x2BC];
  }

  if (((LOBYTE(STACK[0x2A0]) + LOBYTE(STACK[0x2C4])) & 2) != 0)
  {
    v566 = v561;
  }

  else
  {
    v566 = v564;
  }

  LODWORD(STACK[0x2D4]) = v352;
  v567 = v763 ^ v566 ^ v352;
  HIDWORD(v569) = *(v339 + 4 * BYTE1(v567));
  LODWORD(v569) = HIDWORD(v569);
  v568 = v569 >> 8;
  if ((v559 & 2) != 0)
  {
    v570 = v565;
  }

  else
  {
    v570 = v562;
  }

  v571 = v758 ^ v570 ^ LODWORD(STACK[0x3A0]);
  v572 = v568 ^ __ROR4__(*(v339 + 4 * v571), 16);
  if ((v559 & 2) != 0)
  {
    v561 = v564;
  }

  v573 = HIDWORD(v755) ^ v561 ^ LODWORD(STACK[0x3B0]);
  v574 = v572 ^ __ROR4__(*(v339 + 4 * HIBYTE(v573)), 24);
  if ((v559 & 2) == 0)
  {
    v562 = v565;
  }

  v575 = HIDWORD(v758) ^ v562 ^ LODWORD(STACK[0x3A8]);
  v576 = HIDWORD(v753) ^ __ROR4__(*(v339 + 4 * BYTE1(v573)), 8) ^ __ROR4__(*(v339 + 4 * (BYTE4(v758) ^ v562 ^ LOBYTE(STACK[0x3A8]))), 16) ^ *(v339 + 4 * BYTE2(v571)) ^ __ROR4__(*(v339 + 4 * HIBYTE(v567)), 24);
  v577 = v753 ^ __ROR4__(*(v339 + 4 * HIBYTE(v571)), 24) ^ *(v339 + 4 * BYTE2(v573)) ^ __ROR4__(*(v339 + 4 * v567), 16) ^ __ROR4__(*(v339 + 4 * BYTE1(v575)), 8);
  v578 = HIDWORD(v752) ^ __ROR4__(*(v339 + 4 * BYTE1(v571)), 8) ^ *(v339 + 4 * BYTE2(v567)) ^ __ROR4__(*(v339 + 4 * HIBYTE(v575)), 24) ^ __ROR4__(*(v339 + 4 * v573), 16);
  v579 = LODWORD(STACK[0x370]) + LODWORD(STACK[0x2C8]);
  v580 = v558 + LODWORD(STACK[0x358]);
  v581 = v755 ^ LODWORD(STACK[0x4B0]) ^ (v559 + (v574 ^ *(v339 + 4 * BYTE2(v575))) - v579);
  v582 = *(v339 + 4 * HIBYTE(v581));
  LODWORD(STACK[0x348]) = v470;
  v583 = v577 ^ v580 ^ v559 ^ v470;
  v584 = v576 ^ LODWORD(STACK[0x488]);
  v585 = v752 ^ __ROR4__(v582, 24) ^ __ROR4__(*(v339 + 4 * (v577 ^ v580 ^ v559 ^ v470)), 16) ^ __ROR4__(*(v339 + 4 * BYTE1(v584)), 8);
  v586 = v578 ^ LODWORD(STACK[0x4B8]);
  v587 = HIDWORD(v749) ^ __ROR4__(*(v339 + 4 * v584), 16) ^ __ROR4__(*(v339 + 4 * HIBYTE(v583)), 24) ^ *(v339 + 4 * BYTE2(v581)) ^ __ROR4__(*(v339 + 4 * BYTE1(v586)), 8);
  v588 = v749 ^ __ROR4__(*(v339 + 4 * HIBYTE(v584)), 24) ^ __ROR4__(*(v339 + 4 * v586), 16) ^ __ROR4__(*(v339 + 4 * BYTE1(v581)), 8);
  v589 = HIDWORD(v748) ^ __ROR4__(*(v339 + 4 * HIBYTE(v586)), 24) ^ __ROR4__(*(v339 + 4 * v581), 16) ^ *(v339 + 4 * BYTE2(v584)) ^ __ROR4__(*(v339 + 4 * BYTE1(v583)), 8);
  v590 = *(v339 + 4 * BYTE2(v586));
  LODWORD(STACK[0x320]) = v476;
  v591 = v585 ^ v590 ^ v476;
  v592 = v588 ^ *(v339 + 4 * BYTE2(v583)) ^ LODWORD(STACK[0x4A0]);
  v593 = *(v339 + 4 * BYTE2(v591));
  LODWORD(STACK[0x338]) = v482;
  v594 = v589 ^ LODWORD(STACK[0x4A8]);
  v595 = v587 ^ LODWORD(STACK[0x498]);
  v596 = v748 ^ v482 ^ v593 ^ __ROR4__(*(v339 + 4 * BYTE1(v594)), 8) ^ __ROR4__(*(v339 + 4 * v592), 16) ^ __ROR4__(*(v339 + 4 * HIBYTE(v595)), 24);
  v597 = *(v339 + 4 * HIBYTE(v594));
  v598 = LODWORD(STACK[0x31C]) ^ v778;
  v599 = STACK[0x31C];
  LODWORD(STACK[0x344]) = v481;
  v600 = v598 ^ v770 ^ v481 ^ __ROR4__(v597, 24) ^ *(v339 + 4 * BYTE2(v592)) ^ __ROR4__(*(v339 + 4 * BYTE1(v595)), 8) ^ __ROR4__(*(v339 + 4 * v591), 16);
  v601 = v598 ^ HIDWORD(v747) ^ __ROR4__(*(v339 + 4 * BYTE1(v592)), 8) ^ LODWORD(STACK[0x480]) ^ __ROR4__(*(v339 + 4 * HIBYTE(v591)), 24) ^ *(v339 + 4 * BYTE2(v594)) ^ __ROR4__(*(v339 + 4 * v595), 16);
  v602 = v598 ^ HIDWORD(v769) ^ __ROR4__(*(v339 + 4 * BYTE1(v591)), 8) ^ LODWORD(STACK[0x490]) ^ __ROR4__(*(v339 + 4 * v594), 16);
  v603 = *(v339 + 4 * HIBYTE(v596));
  v604 = v602 ^ __ROR4__(*(v339 + 4 * HIBYTE(v592)), 24);
  LODWORD(STACK[0x330]) = v489;
  v605 = v604 ^ *(v339 + 4 * BYTE2(v595));
  v606 = v777 ^ v779 ^ HIDWORD(a45) ^ v489 ^ __ROR4__(v603, 24) ^ __ROR4__(*(v339 + 4 * BYTE1(v600)), 8) ^ __ROR4__(*(v339 + 4 * (v604 ^ *(v339 + 4 * BYTE2(v595)))), 16);
  v607 = v777 ^ v779 ^ a43 ^ LODWORD(STACK[0x470]) ^ __ROR4__(*(v339 + 4 * v600), 16) ^ __ROR4__(*(v339 + 4 * BYTE1(v601)), 8) ^ *(v339 + 4 * BYTE2(v596)) ^ __ROR4__(*(v339 + 4 * HIBYTE(v605)), 24);
  v608 = v777 ^ v779 ^ a44 ^ LODWORD(STACK[0x478]) ^ __ROR4__(*(v339 + 4 * v601), 16) ^ __ROR4__(*(v339 + 4 * HIBYTE(v600)), 24);
  v609 = v777 ^ v779 ^ v747 ^ LODWORD(STACK[0x468]) ^ __ROR4__(*(v339 + 4 * v596), 16) ^ __ROR4__(*(v339 + 4 * HIBYTE(v601)), 24);
  v610 = v606 ^ *(v339 + 4 * BYTE2(v601));
  v611 = v609 ^ __ROR4__(*(v339 + 4 * BYTE1(v605)), 8) ^ *(v339 + 4 * BYTE2(v600));
  HIDWORD(v612) = *(v339 + 4 * v610);
  LODWORD(v612) = HIDWORD(v612);
  v613 = v608 ^ __ROR4__(*(v339 + 4 * BYTE1(v596)), 8) ^ *(v339 + 4 * BYTE2(v605));
  v614 = (v612 >> 16) ^ __ROR4__(*(v339 + 4 * HIBYTE(v611)), 24) ^ *(v339 + 4 * BYTE2(v613)) ^ __ROR4__(*(v339 + 4 * BYTE1(v607)), 8);
  v615 = *(v339 + 4 * BYTE2(v607));
  LODWORD(STACK[0x328]) = v496;
  v616 = a42 ^ v496 ^ v615 ^ __ROR4__(*(v339 + 4 * BYTE1(v610)), 8) ^ __ROR4__(*(v339 + 4 * v611), 16) ^ __ROR4__(*(v339 + 4 * HIBYTE(v613)), 24);
  v617 = a40 ^ LODWORD(STACK[0x458]) ^ __ROR4__(*(v339 + 4 * v607), 16) ^ *(v339 + 4 * BYTE2(v611)) ^ __ROR4__(*(v339 + 4 * HIBYTE(v610)), 24) ^ __ROR4__(*(v339 + 4 * BYTE1(v613)), 8);
  v618 = a39 ^ LODWORD(STACK[0x460]) ^ __ROR4__(*(v339 + 4 * HIBYTE(v607)), 24) ^ __ROR4__(*(v339 + 4 * v613), 16) ^ *(v339 + 4 * BYTE2(v610)) ^ __ROR4__(*(v339 + 4 * BYTE1(v611)), 8);
  v619 = a41 ^ LODWORD(STACK[0x454]) ^ (v614 + v769);
  HIDWORD(v612) = *(v339 + 4 * HIBYTE(v616));
  LODWORD(v612) = HIDWORD(v612);
  v620 = (v612 >> 24) ^ __ROR4__(*(v339 + 4 * (a41 ^ LOBYTE(STACK[0x454]) ^ (v614 + v769))), 16) ^ __ROR4__(*(v339 + 4 * BYTE1(v617)), 8);
  v621 = *(v339 + 4 * BYTE2(v617)) ^ __ROR4__(*(v339 + 4 * BYTE1(v619)), 8) ^ __ROR4__(*(v339 + 4 * HIBYTE(v618)), 24) ^ __ROR4__(*(v339 + 4 * v616), 16);
  v622 = *(v339 + 4 * BYTE2(v619)) ^ __ROR4__(*(v339 + 4 * BYTE1(v616)), 8) ^ __ROR4__(*(v339 + 4 * HIBYTE(v617)), 24) ^ __ROR4__(*(v339 + 4 * v618), 16);
  v623 = *(v339 + 4 * HIBYTE(v619));
  LODWORD(STACK[0x358]) = v580;
  v624 = v559 ^ v580 ^ __ROR4__(v623, 24) ^ __ROR4__(*(v339 + 4 * BYTE1(v618)), 8) ^ __ROR4__(*(v339 + 4 * v617), 16);
  v625 = v621 - v559 + v579;
  v626 = a37 ^ LODWORD(STACK[0x448]) ^ v625;
  v627 = *(v339 + 4 * HIBYTE(v626));
  LODWORD(STACK[0x2F0]) = v508;
  v628 = v620 ^ *(v339 + 4 * BYTE2(v618));
  v629 = a36 ^ LODWORD(STACK[0x410]) ^ v622;
  v630 = HIDWORD(a32) ^ v508 ^ __ROR4__(v627, 24) ^ *(v339 + 4 * BYTE2(v629));
  v631 = a35 ^ LODWORD(STACK[0x440]) ^ v628;
  v632 = v624 ^ *(v339 + 4 * BYTE2(v616));
  v633 = a38 ^ LODWORD(STACK[0x418]) ^ v632;
  v634 = v630 ^ __ROR4__(*(v339 + 4 * (a35 ^ LOBYTE(STACK[0x440]) ^ v628)), 16) ^ __ROR4__(*(v339 + 4 * BYTE1(v633)), 8);
  v635 = *(v339 + 4 * HIBYTE(v629));
  LODWORD(STACK[0x2E8]) = v512;
  v636 = a31 ^ v512 ^ __ROR4__(v635, 24) ^ __ROR4__(*(v339 + 4 * BYTE1(v631)), 8) ^ *(v339 + 4 * BYTE2(v633)) ^ __ROR4__(*(v339 + 4 * v626), 16);
  v637 = *(v339 + 4 * BYTE2(v626));
  LODWORD(STACK[0x2F8]) = v513;
  v638 = HIDWORD(v730) ^ v513 ^ v637 ^ __ROR4__(*(v339 + 4 * v633), 16) ^ __ROR4__(*(v339 + 4 * HIBYTE(v631)), 24) ^ __ROR4__(*(v339 + 4 * BYTE1(v629)), 8);
  v639 = v730 ^ LODWORD(STACK[0x3F4]) ^ __ROR4__(*(v339 + 4 * v629), 16) ^ *(v339 + 4 * BYTE2(v631)) ^ __ROR4__(*(v339 + 4 * BYTE1(v626)), 8) ^ __ROR4__(*(v339 + 4 * HIBYTE(v633)), 24);
  v640 = *(v339 + 4 * BYTE1(v636));
  LODWORD(STACK[0x2E0]) = v525;
  v641 = HIDWORD(v724) ^ v525 ^ __ROR4__(v640, 8) ^ __ROR4__(*(v339 + 4 * v639), 16) ^ *(v339 + 4 * BYTE2(v634)) ^ __ROR4__(*(v339 + 4 * HIBYTE(v638)), 24);
  v642 = *(v339 + 4 * BYTE2(v639));
  v643 = *(v339 + 4 * v634);
  LODWORD(STACK[0x2DC]) = v524;
  v644 = v724 ^ v524 ^ v642 ^ __ROR4__(v643, 16) ^ __ROR4__(*(v339 + 4 * HIBYTE(v636)), 24) ^ __ROR4__(*(v339 + 4 * BYTE1(v638)), 8);
  v645 = HIDWORD(v721) ^ LODWORD(STACK[0x3E4]) ^ *(v339 + 4 * BYTE2(v636)) ^ __ROR4__(*(v339 + 4 * v638), 16) ^ __ROR4__(*(v339 + 4 * BYTE1(v639)), 8) ^ __ROR4__(*(v339 + 4 * HIBYTE(v634)), 24);
  v646 = v721 ^ LODWORD(STACK[0x3D8]) ^ *(v339 + 4 * BYTE2(v638)) ^ __ROR4__(*(v339 + 4 * v636), 16) ^ __ROR4__(*(v339 + 4 * BYTE1(v634)), 8) ^ __ROR4__(*(v339 + 4 * HIBYTE(v639)), 24);
  v647 = *(v339 + 4 * BYTE1(v644));
  v648 = v777 ^ v599;
  LODWORD(STACK[0x2D8]) = v534;
  v649 = v648 ^ v768 ^ v534 ^ __ROR4__(v647, 8) ^ __ROR4__(*(v339 + 4 * HIBYTE(v641)), 24) ^ __ROR4__(*(v339 + 4 * v646), 16) ^ *(v339 + 4 * BYTE2(v645));
  v650 = *(v339 + 4 * v645);
  LODWORD(STACK[0x2D0]) = v533;
  v651 = v648 ^ HIDWORD(v766) ^ v533 ^ __ROR4__(v650, 16) ^ *(v339 + 4 * BYTE2(v646)) ^ __ROR4__(*(v339 + 4 * HIBYTE(v644)), 24) ^ __ROR4__(*(v339 + 4 * BYTE1(v641)), 8);
  v652 = v648 ^ HIDWORD(v768) ^ LODWORD(STACK[0x3CC]) ^ *(v339 + 4 * BYTE2(v644)) ^ __ROR4__(*(v339 + 4 * BYTE1(v646)), 8) ^ __ROR4__(*(v339 + 4 * HIBYTE(v645)), 24) ^ __ROR4__(*(v339 + 4 * v641), 16);
  v653 = v648 ^ v767 ^ LODWORD(STACK[0x3B8]) ^ __ROR4__(*(v339 + 4 * BYTE1(v645)), 8) ^ __ROR4__(*(v339 + 4 * v644), 16) ^ *(v339 + 4 * BYTE2(v641)) ^ __ROR4__(*(v339 + 4 * HIBYTE(v646)), 24);
  v654 = STACK[0x368];
  v655 = v711 ^ LODWORD(STACK[0x380]) ^ __ROR4__(*(STACK[0x368] + 4 * BYTE2(v651)), 24) ^ __ROR4__(*(STACK[0x368] + 4 * HIBYTE(v652)), 16) ^ *(STACK[0x368] + 4 * BYTE1(v653)) ^ __ROR4__(*(STACK[0x368] + 4 * v649), 8);
  v656 = v714 ^ a88 ^ a81 ^ LODWORD(STACK[0x390]) ^ *(STACK[0x368] + 4 * BYTE1(v652)) ^ __ROR4__(*(STACK[0x368] + 4 * BYTE2(v649)), 24) ^ __ROR4__(*(STACK[0x368] + 4 * v651), 8) ^ __ROR4__(*(STACK[0x368] + 4 * HIBYTE(v653)), 16);
  v657 = HIDWORD(v735) ^ LODWORD(STACK[0x428]) ^ v622;
  v658 = v714 ^ a88 ^ a81 ^ LODWORD(STACK[0x398]) ^ __ROR4__(*(STACK[0x368] + 4 * v653), 8) ^ *(STACK[0x368] + 4 * BYTE1(v651)) ^ __ROR4__(*(STACK[0x368] + 4 * HIBYTE(v649)), 16) ^ __ROR4__(*(STACK[0x368] + 4 * BYTE2(v652)), 24);
  v659 = HIDWORD(v737) ^ LODWORD(STACK[0x420]) ^ v632;
  v660 = v737 ^ LODWORD(STACK[0x438]) ^ v628;
  v661 = v735 ^ LODWORD(STACK[0x430]) ^ v625;
  v662 = HIDWORD(v728) ^ LODWORD(STACK[0x400]) ^ *(v339 + 4 * BYTE2(v657)) ^ __ROR4__(*(v339 + 4 * BYTE1(v659)), 8) ^ __ROR4__(*(v339 + 4 * (v737 ^ LOBYTE(STACK[0x438]) ^ v628)), 16) ^ __ROR4__(*(v339 + 4 * HIBYTE(v661)), 24);
  v663 = v728 ^ LODWORD(STACK[0x3F0]) ^ *(v339 + 4 * BYTE2(v660)) ^ __ROR4__(*(v339 + 4 * HIBYTE(v659)), 24) ^ __ROR4__(*(v339 + 4 * BYTE1(v661)), 8) ^ __ROR4__(*(v339 + 4 * (BYTE4(v735) ^ LOBYTE(STACK[0x428]) ^ v622)), 16);
  v664 = HIDWORD(v726) ^ LODWORD(STACK[0x3F8]) ^ __ROR4__(*(v339 + 4 * (v735 ^ LOBYTE(STACK[0x430]) ^ v625)), 16) ^ *(v339 + 4 * BYTE2(v659)) ^ __ROR4__(*(v339 + 4 * HIBYTE(v657)), 24) ^ __ROR4__(*(v339 + 4 * BYTE1(v660)), 8);
  v665 = v726 ^ LODWORD(STACK[0x408]) ^ __ROR4__(*(v339 + 4 * (BYTE4(v737) ^ LOBYTE(STACK[0x420]) ^ v632)), 16) ^ *(v339 + 4 * BYTE2(v661)) ^ __ROR4__(*(v339 + 4 * BYTE1(v657)), 8) ^ __ROR4__(*(v339 + 4 * HIBYTE(v660)), 24);
  v666 = HIDWORD(v719) ^ LODWORD(STACK[0x3D4]) ^ *(v339 + 4 * BYTE2(v665)) ^ __ROR4__(*(v339 + 4 * HIBYTE(v663)), 24) ^ __ROR4__(*(v339 + 4 * v664), 16) ^ __ROR4__(*(v339 + 4 * BYTE1(v662)), 8);
  v667 = v719 ^ LODWORD(STACK[0x3E8]) ^ *(v339 + 4 * BYTE2(v662)) ^ __ROR4__(*(v339 + 4 * v663), 16) ^ __ROR4__(*(v339 + 4 * HIBYTE(v665)), 24) ^ __ROR4__(*(v339 + 4 * BYTE1(v664)), 8);
  v668 = HIDWORD(v716) ^ LODWORD(STACK[0x3E0]) ^ __ROR4__(*(v339 + 4 * HIBYTE(v662)), 24) ^ __ROR4__(*(v339 + 4 * v665), 16) ^ __ROR4__(*(v339 + 4 * BYTE1(v663)), 8) ^ *(v339 + 4 * BYTE2(v664));
  v669 = v721 ^ LODWORD(STACK[0x3DC]) ^ __ROR4__(*(v339 + 4 * BYTE1(v665)), 8) ^ __ROR4__(*(v339 + 4 * HIBYTE(v664)), 24) ^ __ROR4__(*(v339 + 4 * v662), 16) ^ *(v339 + 4 * BYTE2(v663));
  v670 = *(v339 + 4 * BYTE2(v669)) ^ LODWORD(STACK[0x3C8]) ^ __ROR4__(*(v339 + 4 * HIBYTE(v668)), 24) ^ __ROR4__(*(v339 + 4 * BYTE1(v666)), 8) ^ __ROR4__(*(v339 + 4 * v667), 16);
  v671 = HIDWORD(v708) ^ 0x1FD27171 ^ LODWORD(STACK[0x4D0]) ^ *(STACK[0x368] + 4 * BYTE1(v649)) ^ __ROR4__(*(STACK[0x368] + 4 * v652), 8) ^ __ROR4__(*(STACK[0x368] + 4 * HIBYTE(v651)), 16) ^ __ROR4__(*(STACK[0x368] + 4 * BYTE2(v653)), 24);
  v672 = v648 ^ HIDWORD(v767) ^ LODWORD(STACK[0x3D0]) ^ __ROR4__(*(v339 + 4 * BYTE1(v669)), 8) ^ __ROR4__(*(v339 + 4 * HIBYTE(v667)), 24);
  v673 = v648 ^ v716 ^ LODWORD(STACK[0x3C4]) ^ __ROR4__(*(v339 + 4 * v668), 16) ^ __ROR4__(*(v339 + 4 * BYTE1(v667)), 8) ^ *(v339 + 4 * BYTE2(v666)) ^ __ROR4__(*(v339 + 4 * HIBYTE(v669)), 24);
  v674 = v648 ^ HIDWORD(v714) ^ LODWORD(STACK[0x3B4]) ^ __ROR4__(*(v339 + 4 * v669), 16);
  v675 = v655 & 0x10000;
  if ((v655 & 0x10000 & a88) != 0)
  {
    v675 = -v675;
  }

  if (v579)
  {
    v676 = v655 & 0xFFFEFFFF ^ 0x1FD27171 ^ (v675 + a88);
  }

  else
  {
    v676 = v671;
  }

  v677 = v632 ^ (v622 + 273043163 + (v625 ^ ((v628 ^ 0x65C3EB72) + 1494788820) ^ 0x2AC6E73));
  v678 = v672 ^ *(v339 + 4 * BYTE2(v668));
  v679 = v677 + 731675435;
  v680 = v709 ^ ((HIDWORD(v709) ^ (v670 - (v670 ^ LODWORD(STACK[0x31C])))) + v670);
  v681 = v678 ^ __ROR4__(*(v339 + 4 * v666), 16);
  v682 = v674 ^ *(v339 + 4 * BYTE2(v667)) ^ __ROR4__(*(v339 + 4 * BYTE1(v668)), 8) ^ __ROR4__(*(v339 + 4 * HIBYTE(v666)), 24);
  v683 = HIDWORD(v713) ^ a88 ^ a81;
  v684 = v683 ^ LODWORD(STACK[0x378]) ^ v679 ^ __ROR4__(*(v654 + 4 * v682), 8) ^ __ROR4__(*(v654 + 4 * BYTE2(v680)), 24) ^ __ROR4__(*(v654 + 4 * HIBYTE(v681)), 16) ^ *(v654 + 4 * BYTE1(v673));
  v685 = LODWORD(STACK[0x4C8]);
  v686 = v683 ^ LODWORD(STACK[0x388]) ^ v679 ^ __ROR4__(*(v654 + 4 * BYTE2(v673)), 24) ^ __ROR4__(*(v654 + 4 * HIBYTE(v680)), 16) ^ __ROR4__(*(v654 + 4 * v681), 8) ^ *(v654 + 4 * BYTE1(v682));
  v687 = v683 ^ v685 ^ v679 ^ *(v654 + 4 * BYTE1(v681)) ^ __ROR4__(*(v654 + 4 * (v709 ^ ((BYTE4(v709) ^ (v670 - (v670 ^ LOBYTE(STACK[0x31C])))) + v670))), 8) ^ __ROR4__(*(v654 + 4 * HIBYTE(v673)), 16) ^ __ROR4__(*(v654 + 4 * BYTE2(v682)), 24);
  v688 = HIDWORD(v708) ^ LODWORD(STACK[0x4C0]) ^ v679 ^ __ROR4__(*(v654 + 4 * v673), 8) ^ *(v654 + 4 * BYTE1(v680)) ^ __ROR4__(*(v654 + 4 * HIBYTE(v682)), 16) ^ __ROR4__(*(v654 + 4 * BYTE2(v681)), 24) ^ 0xDCF147A0;
  if (v579)
  {
    v689 = v688;
  }

  else
  {
    v689 = v684;
  }

  if (v579)
  {
    v690 = v686;
  }

  else
  {
    v690 = v687;
  }

  LODWORD(STACK[0x2C8]) = v579;
  if ((v579 & 2) != 0)
  {
    v691 = v689;
  }

  else
  {
    v691 = v690;
  }

  v692 = (((LODWORD(STACK[0x2A8]) ^ 0x26561F64) - 643178340) ^ ((LODWORD(STACK[0x2A8]) ^ 0x92A85673) + 1834461581) ^ ((LODWORD(STACK[0x2A8]) ^ 0xC8A71D52) + 928572078)) - 1450697722;
  v693 = (v692 ^ 0xC0D5356E) & (2 * (v692 & 0xD2D1384F)) ^ v692 & 0xD2D1384F;
  v694 = ((2 * (v692 ^ 0x45750570)) ^ 0x2F487A7E) & (v692 ^ 0x45750570) ^ (2 * (v692 ^ 0x45750570)) & 0x97A43D3E;
  v695 = (v694 ^ 0x700203C) & (4 * v693) ^ v693;
  v696 = ((4 * (v694 ^ 0x90A40501)) ^ 0x5E90F4FC) & (v694 ^ 0x90A40501) ^ (4 * (v694 ^ 0x90A40501)) & 0x97A43D3C;
  v697 = (v696 ^ 0x16803430) & (16 * v695) ^ v695;
  v698 = ((16 * (v696 ^ 0x81240903)) ^ 0x7A43D3F0) & (v696 ^ 0x81240903) ^ (16 * (v696 ^ 0x81240903)) & 0x97A43D30;
  v699 = v697 ^ 0x97A43D3F ^ (v698 ^ 0x12001100) & (v697 << 8);
  v700 = v692 ^ (2 * ((v699 << 16) & 0x17A40000 ^ v699 ^ ((v699 << 16) ^ 0x3D3F0000) & (((v698 ^ 0x85A42C0F) << 8) & 0x17A40000 ^ 0x13800000 ^ (((v698 ^ 0x85A42C0F) << 8) ^ 0x243D0000) & (v698 ^ 0x85A42C0F))));
  v701 = (((v700 ^ 0x2E9EF126) + 2062096558) ^ ((v700 ^ 0xD649802E) - 2109838938) ^ ((v700 ^ 0x2F063339) + 2071059123)) + 559535404;
  v702 = v701 >= LODWORD(STACK[0x2CC]);
  v703 = LODWORD(STACK[0x2AC]) ^ (v701 < 0xA50080E7);
  v704 = !v702;
  if (v703)
  {
    v705 = STACK[0x2AC];
  }

  else
  {
    v705 = v704;
  }

  return (*(STACK[0x4E0] + 8 * ((27 * (v705 ^ 1)) ^ LODWORD(STACK[0x318]))))(v691 ^ v679 ^ -(v691 ^ v679), v685, v654, 533885297, a88, v559, v676, HIDWORD(v708), a9, a10, a11, a12, a13, a14, a15, a16, v707, v708, v709, v711, v712, v713, v714, v716, v719, v721, v724, v726, v728, v730, a31, a32, v735, v737, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, v747, v748, v749, v752, v753, v755, v758, v763, v765, v766, v767, v768, v769, v770, v771, v772);
}

void sub_1002C8930(int a1@<W5>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, int a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x2C4]) = a1;
  v69 = v65 ^ (((((LODWORD(STACK[0x218]) + 2140179403) & 0x806F7D3F) + 103315559) & v65 ^ (v65 ^ 0xC32336D0) & a12) >> 1) ^ 0xC2333CF9;
  v70 = STACK[0x350];
  v71 = STACK[0x30C];
  v72 = STACK[0x310];
  LODWORD(STACK[0x370]) = ((v69 & a61) << LODWORD(STACK[0x350])) | ((v69 & STACK[0x30C]) >> LODWORD(STACK[0x310]));
  v73 = STACK[0x304];
  v74 = STACK[0x35C];
  v75 = STACK[0x308];
  v76 = STACK[0x354];
  LODWORD(STACK[0x2BC]) = (((v66 ^ ((v66 & a65) >> 1)) & STACK[0x304]) << LODWORD(STACK[0x35C])) | (((v66 ^ ((v66 & a65) >> 1)) & STACK[0x308]) >> LODWORD(STACK[0x354]));
  v77 = (((a2 ^ ((a2 & STACK[0x2C0]) >> 1)) & v75) >> v76) ^ (((a2 ^ ((a2 & STACK[0x2C0]) >> 1)) & a61) << v74);
  v78 = v68 ^ ((v67 & 0x4B7B9396 ^ v68 & a11) >> 1) ^ 0x21918948;
  LODWORD(STACK[0x2B0]) = ((v78 & v73) << v70) + ((v78 & v71) >> v72);
  v79 = STACK[0x200];
  JUMPOUT(0x1002C6A78);
}

void sub_1002C8A6C(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  v15 = *(a5 + (BYTE1(v13) ^ 0xBCLL));
  HIDWORD(v16) = v15 ^ (a11 - 172106857) & 0xA421EF3 ^ 0xBBBBBBBB;
  LODWORD(v16) = ~v15 << 24;
  LOBYTE(STACK[0x502]) = (v16 >> 31) ^ 0x8F;
  *a7 = *(a3 + (HIBYTE(v14) ^ 0xEALL)) ^ 0x14;
  v17 = *(a4 + (HIBYTE(v12) ^ 0x34));
  LOBYTE(STACK[0x508]) = v17 ^ 0x14 ^ (((32 * v17) ^ 0xDF) + ((16 * v17) ^ 0x10) - 14);
  LOBYTE(STACK[0x50A]) = *(a4 + (BYTE1(v12) ^ 0x23)) ^ (((32 * *(a4 + (BYTE1(v12) ^ 0x23))) ^ 0xDF) + ((16 * *(a4 + (BYTE1(v12) ^ 0x23))) ^ 0x10) - 14) ^ 0x44;
  LOBYTE(STACK[0x504]) = (HIBYTE(a1) - ((a1 >> 23) & 0x54) - 86) ^ 0x7A ^ *(a6 + (HIBYTE(a1) ^ 0xC2));
  v18 = *(a4 + ((((v11 ^ 0x1D855DC8) >> 16) - ((v11 >> 15) & 0xF0) + 120) ^ 0x68));
  LOBYTE(STACK[0x50D]) = v18 ^ 0x85 ^ (((32 * v18) ^ 0xDF) + ((16 * v18) ^ 0x10) - 14);
  LOBYTE(STACK[0x509]) = *(a4 + (BYTE2(v12) ^ 0xB8)) ^ (((32 * *(a4 + (BYTE2(v12) ^ 0xB8))) ^ 0xDF) + ((16 * *(a4 + (BYTE2(v12) ^ 0xB8))) ^ 0x10) - 14) ^ 0x1C;
  LOBYTE(STACK[0x50E]) = *(a4 + (BYTE1(v11) ^ 0xE5)) ^ 0x42 ^ (((32 * *(a4 + (BYTE1(v11) ^ 0xE5))) ^ 0xDF) + ((16 * *(a4 + (BYTE1(v11) ^ 0xE5))) ^ 0x10) - 14);
  LOBYTE(STACK[0x503]) = (v13 - ((2 * v13) & 0x55) - 86) ^ 0xB1 ^ *(a6 + (v13 ^ 0x87));
  LOBYTE(STACK[0x506]) = *(a4 + (BYTE1(a1) ^ 0x22)) ^ 0x90 ^ (((32 * *(a4 + (BYTE1(a1) ^ 0x22))) ^ 0xDF) + ((16 * *(a4 + (BYTE1(a1) ^ 0x22))) ^ 0x10) - 14);
  LOBYTE(STACK[0x50B]) = (v12 - ((2 * v12) & 0x55) - 86) ^ *(a6 + (v12 ^ 0xE9)) ^ 7;
  v19 = *(a5 + (BYTE2(v13) ^ 0x19));
  HIDWORD(v16) = v19 ^ 0x48;
  LODWORD(v16) = ~v19 << 24;
  LOBYTE(STACK[0x501]) = (v16 >> 31) ^ 0x13;
  LOBYTE(v19) = *(a4 + (HIBYTE(v11) ^ 0x7ELL));
  LOBYTE(STACK[0x50C]) = v19 ^ 0xEC ^ (((16 * v19) ^ 0x10) + ((32 * v19) ^ 0xDF) - 14);
  LOBYTE(STACK[0x507]) = *(a3 + (a1 ^ 0x82)) ^ 0xCF;
  LOBYTE(STACK[0x50F]) = ((v11 ^ 0xC8) - ((2 * (v11 ^ 0xC8)) & 0x55) - 86) ^ *(a6 + (v11 ^ 0xB1)) ^ 0xF8;
  LOBYTE(STACK[0x505]) = *(a3 + (BYTE2(a1) ^ 0x56)) ^ 0x33;
  v20 = STACK[0x4D8];
  JUMPOUT(0x1002C8D90);
}

uint64_t sub_1002C8E38@<X0>(uint64_t a1@<X8>)
{
  v5 = *(&off_1006B4E30 + v2 - 9476) - 8;
  v6 = *(*(&off_1006B4E30 + (v2 ^ 0x263A)) + (a1 & 0xF) - 12);
  v7 = *(*(&off_1006B4E30 + (v2 ^ 0x24CD)) + (a1 & 0xF) + 4);
  return (*(v4 + 8 * ((185 * (((((-(a1 & 0xF | ((a1 & 0xF) << 6)) ^ *(v3 + a1) ^ v5[a1 & 0xF] ^ v6 ^ v7 ^ ((v2 ^ 0x6C) + 2)) - 35) ^ ((-(a1 & 0xF | ((a1 & 0xF) << 6)) ^ *(v3 + a1) ^ v5[a1 & 0xF] ^ v6 ^ v7 ^ 0x48) - 11) ^ ((-(a1 & 0xF | ((a1 & 0xF) << 6)) ^ *(v3 + a1) ^ v5[a1 & 0xF] ^ v6 ^ v7 ^ 0x28) - 107)) - *(v1 + a1)) == 189)) ^ v2)))();
}

uint64_t sub_1002C8F64()
{
  v7 = (v4 + 865);
  v8 = (v7 - 8631) & -&STACK[0x4E8];
  v9 = (*(v0 + v8) << (v7 + 113)) + ((-(v8 & 0xF | ((v8 & 0xF) << 6)) ^ *(v5 + v8) ^ *(v1 + (v8 & 0xF)) ^ *(v2 + (v8 & 0xF)) ^ *((v8 & 0xF) + v3 + 4)) << 56);
  v10 = v9 + 0x3CE867D4E30B2CD5 - (((v7 - 1918184666) & 0x72550B1B ^ 0x79D0000000000001) & (2 * v9));
  v11 = *(&off_1006B4E30 + v7 - 7470);
  v12 = (*v11)++;
  v13 = v12 & 0x3F;
  v14 = *(&off_1006B4E30 + v7 - 8125) + 8 * v13 - 8;
  if (v13 > 0x35)
  {
    v14 = *(&off_1006B4E30 + (v7 ^ 0x237A)) + 8 * v13 - 440;
  }

  *v14 = v10;
  return (*(v6 + 8 * v7))();
}

uint64_t sub_1002C9150@<X0>(int a1@<W8>)
{
  v3 = ((a1 ^ 0xB0B2425E) - 161785277) ^ ((a1 ^ 0xC72CDE5F) - 2117745084) ^ ((a1 ^ 0x779E9C00) + 829916189);
  v4 = v1 - v3 - 1473442451;
  v5 = (v4 ^ 0x9EBE28A4) & (2 * (v4 & 0x9EBC0AB1)) ^ v4 & 0x9EBC0AB1;
  v6 = ((2 * (v4 ^ 0xA6FE38A4)) ^ 0x7084642A) & (v4 ^ 0xA6FE38A4) ^ (2 * (v4 ^ 0xA6FE38A4)) & 0x38423214;
  v7 = v6 ^ 0x8421215;
  v8 = (v6 ^ 0x30002000) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0xE108C854) & v7 ^ (4 * v7) & 0x38423214;
  v10 = v8 ^ 0x38423215 ^ (v9 ^ 0x20000010) & (16 * v8);
  v11 = (16 * (v9 ^ 0x18423201)) & 0x38423210 ^ 0x38401205 ^ ((16 * (v9 ^ 0x18423201)) ^ 0x84232150) & (v9 ^ 0x18423201);
  v12 = v4 ^ (2 * ((((v11 << 8) ^ 0x42320000) & v11 ^ (v11 << 8) & 0x38420000) & (((v10 << 8) & 0x38423200 ^ v10 ^ ((v10 << 8) ^ 0x42321500) & v11) << 16) ^ (v10 << 8) & 0x38423200 ^ v10 ^ ((v10 << 8) ^ 0x42321500) & v11));
  v13 = ((a1 + 10117) ^ 0xDDC8A1B1) - v1 + v3;
  v14 = (v13 ^ 0x9B6F4983) & (2 * (v13 & 0xDB4E61AB)) ^ v13 & 0xDB4E61AB;
  v15 = ((2 * (v13 ^ 0xA97F0A83)) ^ 0xE462D650) & (v13 ^ 0xA97F0A83) ^ (2 * (v13 ^ 0xA97F0A83)) & 0x72316B28;
  v16 = v15 ^ 0x12112928;
  v17 = (v15 ^ 0x60200200) & (4 * v14) ^ v14;
  v18 = ((4 * v16) ^ 0xC8C5ACA0) & v16 ^ (4 * v16) & 0x72316B28;
  v19 = v17 ^ 0x72316B28 ^ (v18 ^ 0x40012820) & (16 * v17);
  v20 = (16 * (v18 ^ 0x32304308)) & 0x72316B20 ^ 0x50214928 ^ ((16 * (v18 ^ 0x32304308)) ^ 0x2316B280) & (v18 ^ 0x32304308);
  v21 = (v19 << 8) & 0x72316B00 ^ v19 ^ ((v19 << 8) ^ 0x316B2800) & v20;
  v22 = ((v13 ^ (2 * ((v21 << 16) ^ v21 ^ ((v21 << 16) ^ 0x43280000) & ((v20 << 8) & 0x72310000 ^ 0x42100000 ^ ((v20 << 8) ^ 0x316B0000) & v20)))) & v12 & 0x80000000) == 0;
  v23 = a1 - ((a1 + 1254289227) & (2 * a1)) + 627144614;
  return (*(v2 + 8 * ((14427 * ((v23 ^ v22 ^ (a1 - 27607 + (v23 ^ 0xDA9E8859) + 1)) == 627144614)) ^ (a1 + 6530))))();
}

uint64_t sub_1002C9508()
{
  v3 = v0 - 723;
  v4 = v1;
  v5 = *(STACK[0x208] + 8);
  v6 = *(STACK[0x208] + 16);
  v7 = ((v0 - 1674730695) & 0x63D23F4D) + 2956;
  *v5 = v4;
  *v6 = (*(v2 + 8 * ((v0 - 723) ^ 0x148C)))();
  return (*(v2 + 8 * (v3 | (8 * (*v5 != ((v7 ^ 0x6CE1E695) & (2 * *v5)))))))();
}

uint64_t sub_1002C970C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 + v2 - 1 - 31);
  v6 = a1 + v2 - 1;
  *(v6 - 15) = *(a2 + v2 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((3884 * (((v3 - 3795) | 0x201u) - 929 == (v2 & 0xFFFFFFE0))) ^ v3)))();
}

uint64_t sub_1002C97E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (v3 - 10662)) ^ v3)))();
}

uint64_t sub_1002C9818()
{
  (*(v3 + 8 * (v1 ^ 0x254C)))(v2);
  result = v7;
  *(v7 + 24) = v0;
  v6 = *(v4 - 96);
  return result;
}

uint64_t sub_1002C98F8(int *a1, uint64_t a2)
{
  v3 = *(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - dword_1006D5950) ^ 0x89)) ^ byte_10060D0D0[byte_10066CFA0[(99 * ((dword_1006D53C8 - dword_1006D5950) ^ 0x89))] ^ 0x84]) + 250);
  v4 = *(v3 - 4);
  v5 = *(&off_1006B4E30 + (byte_10066CDA0[byte_10064CDF8[(99 * ((dword_1006D53C8 - v4) ^ 0x89)) - 8] ^ 0xCD] ^ (99 * ((dword_1006D53C8 - v4) ^ 0x89))) + 1075);
  v6 = &v8[*v5 ^ v4];
  *(v3 - 4) = (1758147683 * v6) ^ 0xFB29CEEFDABC1789;
  *v5 = 1758147683 * (v6 ^ 0xFB29CEEFDABC1789);
  v9[0] = (784480913 * ((((v9 | 0x32601F02) ^ 0xFFFFFFFE) - (~v9 | 0xCD9FE0FD)) ^ 0xEB029A86)) ^ 0x2F56;
  v10 = a2;
  LOBYTE(v5) = 99 * (*(v3 - 4) ^ 0x89 ^ *v5);
  (*(*(&off_1006B4E30 + ((99 * ((dword_1006D53C8 + dword_1006D5950) ^ 0x89)) ^ byte_10060D0D0[byte_10066CFA0[(99 * ((dword_1006D53C8 + dword_1006D5950) ^ 0x89))] ^ 0x27]) + 693) + 8 * (byte_10062CD84[(aMG[v5 - 8] ^ 0xDC) - 4] ^ v5) + 98836))(v9);
  *a1 = v9[2] ^ 0x572CA21F;
  return 0;
}

void sub_1002C9B10()
{
  v0 = *(&off_1006B4E30 + ((99 * ((dword_1006D53C8 + dword_1006D54D8) ^ 0x89)) ^ byte_10066CDA0[byte_10064CDF0[(99 * ((dword_1006D53C8 + dword_1006D54D8) ^ 0x89))] ^ 0xCD]) + 158);
  v1 = 99 * ((dword_1006D53C8 - *v0) ^ 0x89);
  v2 = *(&off_1006B4E30 + (byte_10064CEF8[(byte_10062CC88[v1 - 8] ^ 0xCA) - 8] ^ v1) + 888);
  v3 = *v0 - &v8 + *v2;
  *v0 = 1758147683 * (v3 + 0x4D631102543E877);
  *v2 = 1758147683 * (v3 ^ 0xFB29CEEFDABC1789);
  v4 = (99 * (*v0 ^ 0x89 ^ *v2));
  v5 = *(&off_1006B4E30 + ((99 * ((dword_1006D53C8 + dword_1006D54D8) ^ 0x89)) ^ byte_10060D0D0[byte_10066CFA0[(99 * ((dword_1006D53C8 + dword_1006D54D8) ^ 0x89))] ^ 5]) + 790) - 4;
  v6 = (*&v5[8 * (byte_10066CDA0[byte_10064CDF8[v4 - 8] ^ 0xB] ^ (99 * (*v0 ^ 0x89 ^ *v2))) + 99704])(*(&off_1006B4E30 + (byte_10060CED0[byte_10066CEA8[v4 - 8] ^ 0xBB] ^ (99 * (*v0 ^ 0x89 ^ *v2))) + 259), sub_10016D1E8);
  v7 = 99 * (*v0 ^ 0x89 ^ *v2);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1002C9DA8()
{
  v3 = 23958;
  *(v0 + 6784) = dword_1006CCDC4;
  atomic_compare_exchange_strong(dword_1006CCDC4, &v3, 0xA94EFu);
  return (*(v2 + 8 * (((v3 == 23958) * v1) ^ 0xF53u)))();
}

uint64_t sub_1002C9DE8()
{
  v3 = *(v2 + 8 * ((11315 * (**(v0 + 1304) == 0)) ^ 0x40Eu));
  v4 = *(v0 + 1040);
  v1[1306] = v2;
  v1[694] = v4 - 4;
  v1[654] = v4 + 156;
  return v3();
}

uint64_t sub_1002C9E64()
{
  v8 = v0 ^ 0x7FC;
  v9 = v0 ^ 0x7FC ^ (v2 + 1357);
  *v1 = 0;
  v10 = (*(v7 + 8 * (v0 ^ 0x3431u)))(0x100000, 3230639132);
  v11 = *(v3 + 5552);
  v12 = *(v3 + 10448);
  *(v11 + 8) = v10;
  *v4 = 1;
  *(v11 + 160) = 0u;
  *(v11 + 176) = v6;
  *(v11 + 184) = v6;
  *(v11 + 144) = 0x387EF02600000000;
  *(v11 + 152) = 0x18CE01187510FD2ALL;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 96) = 0u;
  *(v11 + 112) = 0u;
  *(v11 + 128) = 0u;
  return (*(v12 + 8 * (((v10 == 0) * ((v8 - 79257236) & 0xEAF ^ (v5 + v9 + 1026))) | v8)))();
}

uint64_t sub_1002C9F70()
{
  *v1 = 2576747354;
  v5 = v2 == ((v3 + v0 + 36) | 0x59u) - 109;
  return (*(v4 + 8 * (((4 * v5) | (8 * v5)) ^ (v3 + v0 + 471))))();
}

void sub_1002CCDE4()
{
  *(v0 + 148) = 596906280;
  *(v0 + 152) = 0x18CE0118854FB556;
  *(v0 + 160) = 3944793414;
  *(v0 + 168) = 1148259094;
  *(v0 + 176) = 24562510;
  *(v0 + 184) = 1816293146;
  **(v1 + 6784) = 23958;
  sub_1002E1834();
}

uint64_t sub_1002CCE80()
{
  *(v2 + 10432) = v3;
  v5 = *(v2 + 11512);
  *(v2 + 13192) = v5;
  *(v2 + 13204) = *(v2 + 11048);
  *(v2 + 10588) = 0;
  *(v2 + 11928) = 0;
  return (*(v4 + 8 * (((8 * ((((v0 - v1 - 81) & 0xDC ^ (v5 == 0)) & 1) == 0)) & 0xEF | (16 * (((v0 - v1 + 125879727) & 0xF87F37DC ^ ~(v5 == 0)) & 1))) ^ v0)))();
}

uint64_t sub_1002CCEF0()
{
  v1 = *(v0 + 13276);
  v2 = *(v0 + 13264);
  *(v0 + 10208) = v2 + (v1 - 16);
  v3 = (((v1 + 12) ^ (4 - v1) ^ (-71 - v1) ^ (((-71 - v1) ^ 4) - 1)) ^ (((-71 - v1) ^ 0xE) + 5)) & 0xF;
  v4 = (((v3 ^ 0xC68D3852) - 1482899390) ^ ((v3 ^ 0x57284E14) + 909751816) ^ ((v3 ^ 0x91A57643) - 256602543)) - 1628567595;
  v5 = v4 + v1;
  v6 = 2 * (v1 - 20);
  *(v0 + 10272) = v1;
  v7 = v1 - 1234110094 - (v6 & 0x6CE1F30C);
  *(v0 + 10192) = ((v4 + 20) ^ 0xACAFBF5DEF9FD767) + 0x535040A23ACF646CLL + ((2 * (v4 + 20)) & 0x1DF3FAECELL);
  *(v0 + 10184) = ((v1 - 20) ^ 0xADFECBF7) + 1375810569 + (v6 & 0x5BFD97EE);
  v8 = *(v0 + 13252);
  v9 = *(v0 + 13240);
  v10 = v8 - 20;
  *(v0 + 10176) = v9 + (v8 - 16);
  v11 = (((-106 - v8) ^ (v8 + 12) ^ (v8 + 108)) ^ ((((-106 - v8) ^ 0xFB) + 7) ^ (((-106 - v8) ^ 0xF9) + 5))) & 0xF;
  v12 = (((v11 ^ 0x787146BB) - 1488629360) ^ (v11 - 524720331) ^ ((v11 ^ 0x3687FAA9) - 374084194)) + 550234293;
  v13 = (v12 + v8);
  v14 = 2 * (v8 - 20);
  *(v0 + 10256) = v8;
  v15 = v8 - 1234110094 - (v14 & 0x6CE1F30C);
  *(v0 + 10160) = ((v12 + 20) ^ 0xDEF7FFD7EF9BF5E3) + 0x210800283AD345F0 + ((2 * (v12 + 20)) & 0x1DF37EBC6);
  *(v0 + 10152) = (v10 ^ 0x2FEE6D57) - 804154711 + (v14 & 0x5FDCDAAEu);
  v16 = *(v0 + 13228);
  v17 = *(v0 + 13216);
  *(v0 + 10144) = v17 + (v16 - 16);
  v18 = (((((99 - v16) ^ 0xFD) + 14) ^ (99 - v16)) ^ (((99 - v16) ^ 0xAA) + 11)) & 0xF;
  v19 = (((v18 ^ 0x3B6B16B3) + 1862012568) ^ ((v18 ^ 0xC5DABEA2) - 1873959289) ^ ((v18 ^ 0xFEB1A81E) - 1423527877)) - 1435965504 + v16;
  v20 = 2 * (v16 - 20);
  *(v0 + 10248) = v16;
  v21 = v16 - 1234110094 - (v20 & 0x6CE1F30C);
  *(v0 + 10128) = ((v16 - 20) ^ 0xBFEF7DD7) + 1074823721 + (v20 & 0x7FDEFBAE);
  v22 = *(v0 + 13204);
  v23 = (((-112 - v22) ^ (v22 + 12) ^ (((-112 - v22) ^ 8) + 12)) ^ ((((-112 - v22) ^ 0xAA) + 10) ^ (((-112 - v22) ^ 1) + 3))) & 0xF;
  v24 = (((v23 ^ 0x5AF30328) - 1555924935) ^ ((v23 ^ 0x2FD14291) - 698336894) ^ ((v23 ^ 0x752241B5u) - 1936508250)) + 105809103 + v22;
  v25 = 2 * (v22 - 20);
  v26 = v22 - 1234110094 - (v25 & 0x6CE1F30C);
  *(v0 + 10240) = v5;
  *(v0 + 10112) = v5 - 751357895 - ((2 * v5) & 0xA66E6072);
  *(v0 + 10232) = v13;
  *(v0 + 10104) = v13 - 751357895 - ((2 * v13) & 0xA66E6072);
  *(v0 + 10224) = v19;
  *(v0 + 10096) = v19 - 751357895 - ((2 * v19) & 0xA66E6072);
  *(v0 + 10216) = v24;
  *(v0 + 10088) = v24 - 751357895 - ((2 * v24) & 0xA66E6072);
  v27 = *(v0 + 13192);
  *(v0 + 10288) = v22;
  *(v0 + 10080) = v27 + (v22 - 16);
  *(v0 + 10072) = ((v22 - 20) ^ 0x3DEF795F) - 1039105792 + (v25 & 0x7BDEF2BEu) + 1441;
  *(v0 + 10200) = v7;
  v28 = v7 ^ 0xB670F986;
  *(v0 + 10000) = v28 + v2 - 4;
  *(v0 + 10168) = v15;
  v29 = v15 ^ 0xB670F986;
  *(v0 + 9992) = v29 + v9 - 4;
  *(v0 + 10136) = v21;
  v30 = v21 ^ 0xB670F986;
  *(v0 + 9984) = v30 & 0xFFFFFFF8;
  *(v0 + 9976) = -6078 - (v30 & 0xFFFFFFF8);
  *(v0 + 9968) = v30 + v17 - 4;
  *(v0 + 10120) = v26;
  v31 = v26 ^ 0xB670F986;
  *(v0 + 9960) = v31 + v27 - 4;
  *(v0 + 9952) = v28 & 0xFFFFFFF8;
  *(v0 + 9928) = 8 - (v28 & 0xFFFFFFF8);
  *(v0 + 9944) = v29 & 0xFFFFFFF8;
  *(v0 + 9920) = 8 - (v29 & 0xFFFFFFF8);
  *(v0 + 9936) = v31 & 0xFFFFFFF8;
  *(v0 + 9912) = 8 - (v31 & 0xFFFFFFF8);
  *(v0 + 9840) = -83929122;
  *(v0 + 10352) = v2;
  *(v0 + 10416) = v2 + 4;
  *(v0 + 10336) = v9;
  *(v0 + 10400) = v9 + 4;
  *(v0 + 10320) = v17;
  *(v0 + 10384) = v17 + 4;
  *(v0 + 10304) = v27;
  *(v0 + 10368) = v27 + 4;
  *(v0 + 10032) = v28 & 0xFFFFFFE0;
  *(v0 + 9832) = (v7 ^ 0x86) & 0x1F;
  *(v0 + 9824) = (v7 ^ 0x86) & 0x18;
  *(v0 + 9904) = (v7 ^ 0x86) & 7;
  *(v0 + 10024) = v29 & 0xFFFFFFE0;
  *(v0 + 9816) = (v15 ^ 0x86) & 0x1F;
  *(v0 + 9808) = (v15 ^ 0x86) & 0x18;
  *(v0 + 9896) = (v15 ^ 0x86) & 7;
  *(v0 + 10016) = v30 & 0xFFFFFFE0;
  *(v0 + 9800) = (v21 ^ 0x86) & 0x1F;
  *(v0 + 9792) = (v21 ^ 0x86) & 0x18;
  *(v0 + 9888) = (v21 ^ 0x86) & 7;
  *(v0 + 10008) = v31 & 0xFFFFFFE0;
  *(v0 + 9784) = (v26 ^ 0x86) & 0x1F;
  *(v0 + 9776) = (v26 ^ 0x86) & 0x18;
  *(v0 + 9880) = (v26 ^ 0x86) & 7;
  *(v0 + 10064) = v28;
  *(v0 + 9872) = v28 - 8;
  *(v0 + 10056) = v29;
  *(v0 + 9864) = v29 - 8;
  *(v0 + 10048) = v30;
  *(v0 + 9856) = v30 - 8;
  *(v0 + 10040) = v31;
  *(v0 + 9848) = v31 - 8;
  return sub_1002CCF68(2077687766, v0 + 13616);
}

uint64_t sub_1002CCF44@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1439];
  v1[1513] = *(v2 + 8 * a1);
  v4 = v1[848];
  return sub_1002D411C(4294960162, 186, v1 + 10924, 1386, 4294962153, 6057);
}

uint64_t sub_1002CCF68@<X0>(uint64_t a1@<X8>)
{
  v7 = (*(a1 + (v2 - 2038247504)) << 24) | (*(a1 + (v2 - 2038247503)) << 16) | (*(a1 + (v2 - 2038247502)) << 8) | *(a1 + (v2 - 2038247501));
  v8 = *(&off_1006B4E30 + (v5 ^ 0xD82F065B));
  v9 = *(&off_1006B4E30 + (v5 ^ (v3 + 1056))) - 12;
  v10 = *(&off_1006B4E30 + v4 + v5 + 498) - 8;
  return (*(v6 + 8 * v1))();
}

uint64_t sub_1002CD054(uint64_t a1, uint64_t a2)
{
  v5 = v2[1296] != 0;
  v2[1651] = v2[1288];
  v6 = v2[1563];
  v2[1563] = v6 + 16;
  v7 = (*(v4 + 8 * (v3 + 11560)))(a2 + v6, 0, 16);
  return (*(v2[1306] + 8 * (((((v3 - 1744044000) | 0x40230388) ^ ((v3 ^ 0x105) - 668009062)) * v5) ^ v3)))(v7);
}

uint64_t sub_1002CD29C@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, unsigned int a4@<W7>, int a5@<W8>)
{
  v10 = (((a5 ^ a4) + v8) ^ v5) + a1;
  v11 = *(a2 + v10 - 15);
  v12 = *(a2 + v10 - 31);
  v13 = v7 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v6 + 8 * (((v5 + 32 == a3) * v9) ^ a5)))();
}

uint64_t sub_1002CD378()
{
  v6 = (v5 + v4[1231] - v1);
  v7 = (v4[1245] - v1);
  v8 = v4[1239] + v1 == 0;
  v9 = v2 + v0;
  v10 = (v2 + v0 + 1613) | 0x106;
  v11 = v9 + 1896;
  *v6 = *v7;
  v12 = !v8;
  return (*(v3 + 8 * ((v12 * (v10 - 4565)) ^ v11)))();
}

uint64_t sub_1002CD43C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v7 + (a1 + v6 + 661) - 662;
  *(v9 + v11) = *(a6 + v11);
  return (*(v8 + 8 * (((v11 == 0) * v10) ^ (a1 + v6 + 718))))();
}

uint64_t sub_1002CD4BC@<X0>(int a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X3>, int a4@<W8>)
{
  v10 = v9 < a3;
  *(v8 + v4 + v5) = 0;
  v11 = v4 + 1;
  if (v10 == v11 > a2)
  {
    v10 = v11 + a3 < v9;
  }

  return (*(v7 + 8 * ((v10 * (((a4 + v6) & a1) - 392)) ^ a4)))();
}

uint64_t sub_1002CD510()
{
  v7 = 122489177 * ((((v6 - 200) | 0x858E2219) - ((v6 - 200) & 0x858E2219)) ^ 0x46E96D03);
  *v1 = v5 - v7 + 11804;
  *(v1 + 24) = *(v2 + 10088) ^ v7;
  *(v1 + 8) = v4;
  *(v1 + 16) = v3;
  (*(v0 + 8 * (v5 ^ 0x3082)))(v6 - 200);
  v8 = *(v6 - 196);
  (*(*(v2 + 10448) + 8 * (v5 ^ 0x315F)))(v4);
  v9 = *(v2 + 10080);
  return (*(*(v2 + 10448) + 8 * ((1937 * (v8 == ((v5 - 937229694) | 0x100C0380) + 1356141007)) ^ v5)))(2164393286, 39, 258, 6534);
}

uint64_t sub_1002CF098()
{
  *(v1 + 10432) = v2;
  v4 = v0 + 668016640;
  v5 = (*(v3 + 8 * (v0 + 668018867)))(*(v1 + 13228) + ((v0 + 1938275311) & 0xB4493DEF) - 371, 0x100004077774924);
  v6 = *(v1 + 10448);
  *(v1 + 12664) = v5;
  return (*(v6 + 8 * ((58 * (v5 == 0)) ^ v4)))();
}

uint64_t sub_1002CF148(uint64_t a1)
{
  v6 = 961063711 * ((((2 * (v4 - 200)) | 0xC07AF1AC) - (v4 - 200) + 532842282) ^ 0x91C9B1C9);
  v7 = v4 - 200;
  *(v7 + 24) = *(v1 + 13232) + 8;
  *v7 = a1;
  *(v7 + 12) = v6 + ((v3 ^ 0xD82F06E7) + 1871657897 + ((v3 + 1051475566) & 0xC153D5AF) + 3499) * v2 + 818229821;
  *(v7 + 16) = v3 - v6 + 10961;
  v8 = (*(v5 + 8 * (v3 ^ 0x3066)))(v4 - 200);
  return (*(*(v1 + 10448) + 8 * ((4607 * (*(v4 - 192) == 688134491)) ^ v3)))(v8);
}

uint64_t sub_1002CF23C()
{
  v5 = *(v0 + 10492) - 6813204;
  v6 = v5 < 2140670443;
  v7 = v5 > v1 - 1916325994;
  if (v6 != v1 - 1916325994 < ((v3 + ((v2 + 1210707583) | 0x90050384) + 318) ^ 0x7F9808D5))
  {
    v7 = v6;
  }

  return (*(v4 + 8 * ((!v7 | (4 * !v7)) ^ v2)))();
}

uint64_t sub_1002CF2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = (a2 ^ 0x6FEFD5FAABD07C13 ^ (v2 - 5292418) & 0xD87FC7CF) + v6 - 0x6FEFD5FA73FF7B9FLL + ((a2 << ((19 * (v2 ^ 0xC7)) ^ 0x7Au)) & 0xDFDFABF4E7FEF73ELL);
  v9 = -1931008275 * ((-1931008275 * v8) ^ ((-1931008275 * v8) >> 16));
  LODWORD(v9) = (*(*(v3 + 10432) + (v9 >> 24)) ^ *v8 ^ *(v4 + (v9 >> 24) + 2) ^ *(v5 + (v9 >> 24) + 2) ^ (-19 * ((-19 * v8) ^ ((-1931008275 * v8) >> 16))) ^ (77 * ((-1931008275 * ((-1931008275 * v8) ^ ((-1931008275 * v8) >> 16))) >> 24)));
  *(v3 + 10492) = a2 + 1;
  return (*(v7 + 8 * ((85 * (v9 != 13)) ^ v2)))(a1, v6);
}

uint64_t sub_1002CF3D0@<X0>(int a1@<W8>)
{
  v4 = a1 + 890267154;
  v5 = v4 < -1257216499;
  v6 = v4 > v2 - 1019245640;
  if (v2 - 1019245640 < -1257216499 != v5)
  {
    v6 = v5;
  }

  return (*(v3 + 8 * (((2 * ((v6 ^ ((v1 ^ 0xF7) + 115)) & 1)) & 0xFB | (4 * ((v6 ^ ((v1 ^ 0xF7) + 115)) & 1))) ^ v1)))();
}

uint64_t sub_1002CF45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 13040) = *(v6 + 8 * (v3 + 14));
  v7 = *(v4 + 10432);
  *(v4 + 10416) = 15;
  *(v4 + 10400) = 29;
  *(v4 + 10384) = 16;
  *(v4 + 10224) = -92332115;
  *(v4 + 10232) = -550563859;
  *(v4 + 10368) = 27;
  *(v4 + 10256) = 7031;
  *(v4 + 10320) = 1;
  *(v4 + 10352) = 35;
  *(v4 + 10304) = 936398159;
  *(v4 + 10248) = 1476395652;
  *(v4 + 10288) = -1509308681;
  *(v4 + 10336) = 31;
  *(v4 + 10240) = 51;
  *(v4 + 10272) = 2030504280;
  *(v4 + 10432) = -778509309;
  return (*(v6 + 8 * ((((((v3 - 172452249) & 0xA476FFF) - 1447) | 0x11C) - 256) ^ (((v3 - 172452249) & 0xA476FFF) + 5110))))(v4 + 12808, a2, a3, 668019017, v7, v5, 4294960739, 284);
}

uint64_t sub_1002D05BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v13 = v5 ^ v7;
  v14 = -1931008275 * (a5 + a2 + v9 + v13);
  *(a1 - 1 + v13) = *(a3 + ((-1931008275 * (v14 ^ HIWORD(v14))) >> 24)) ^ *(a2 + a5 + v10 + v13) ^ *(v8 + ((-1931008275 * (v14 ^ HIWORD(v14))) >> 24) + 2) ^ *(a4 + ((-1931008275 * (v14 ^ HIWORD(v14))) >> 24) + 2) ^ (-19 * (v14 ^ BYTE2(v14))) ^ (((-1931008275 * (v14 ^ HIWORD(v14))) >> 24) * (v6 + 113));
  return (*(v12 + 8 * (((v13 == 1) * v11) | v6)))();
}

uint64_t sub_1002D0678()
{
  v2 = *(v0 + 11412);
  *(v0 + 11412) = v2 + 4;
  v3 = *(v0 + 11864);
  v4 = *(v0 + 10608);
  *(v0 + 13288) = *(v0 + 10840) + 16;
  v2 += 915306508;
  v4 -= 994206286;
  v5 = v2 < (*(v0 + 10416) ^ 0xB68E7808);
  v6 = v2 > v4;
  if (v5 != v4 < -1232177145)
  {
    v6 = v5;
  }

  return (*(v1 + 8 * ((461 * !v6) ^ 0x1EDC)))();
}

uint64_t sub_1002D0788()
{
  v2 = *(v0 + 11412);
  *(v0 + 11412) = v2 + 1;
  v3 = *(v0 + 11864);
  v4 = *(v0 + 10608);
  *(v0 + 13304) = *(v0 + 10840) + 48;
  v5 = (*(v0 + 10400) ^ 0x3C60D7) + v2;
  v4 -= 1905555853;
  v6 = v5 < -2143526712;
  v7 = v5 > v4;
  if (v6 != v4 < -2143526712)
  {
    v7 = v6;
  }

  return (*(v1 + 8 * ((11 * !v7) ^ 0x1B93)))();
}

uint64_t sub_1002D0898()
{
  v2 = *(v0 + 11412);
  *(v0 + 11412) = v2 + 1;
  v3 = *(v0 + 11864);
  v4 = *(v0 + 10608);
  *(v0 + 13312) = *(v0 + 10840) + 64;
  v2 -= 873288570;
  v4 += 1512165935;
  v5 = v2 < 1274195076;
  v6 = v2 > v4;
  if (v5 != v4 < 1274195076)
  {
    v6 = v5;
  }

  return (*(v1 + 8 * ((469 * v6) ^ 0x22FA)))();
}

uint64_t sub_1002D0998()
{
  v3 = *(v0 + 11412);
  *(v0 + 11412) = v3 + 1;
  v4 = *(v0 + 11864);
  v5 = *(v0 + 10608);
  *(v0 + 13320) = *(v0 + 10840) + 80;
  v3 -= 638213791;
  v5 += 1747240714;
  v6 = v3 < 1509269855;
  v7 = v3 > v5;
  if (v6 != v5 < 1509269855)
  {
    v7 = v6;
  }

  return (*(v2 + 8 * ((2 * (((v1 - 99) ^ v7) & 1)) ^ 0x2261)))();
}

uint64_t sub_1002D272C@<X0>(int a1@<W8>)
{
  v5 = *(v3 + 10608) + 1858695213;
  v6 = (a1 - 526759291 < 1620724354) ^ (v5 < v1 + 1620713039);
  v7 = a1 - 526759291 > v5;
  if (v6)
  {
    v7 = a1 - 526759291 < 1620724354;
  }

  return (*(v4 + 8 * ((v7 * (v2 + (v1 ^ 0xD82F2BBF) + 6)) ^ v1)))();
}

uint64_t sub_1002D27B4@<X0>(int a1@<W8>)
{
  *(v2 + 11412) = a1 + 3;
  v3 = *(v2 + 13312);
  return sub_1002D3AA4(v1 - 55 + *(v2 + 13399) - 103);
}

uint64_t sub_1002D27E0()
{
  v2 = *(v0 + 10288) & 0x59F63FEE;
  *(v0 + 11412) += v2 ^ 0x6E2;
  *(v0 + 10872) = (*(v1 + 98808))(*(v0 + 12220), 0x100004077774924);
  v3 = *(v0 + 13320);
  v4 = (*(*(v0 + 10448) + 98808))(16 * *v3, 0x1010040A1D9428BLL);
  v5 = *(v0 + 10448);
  *(v0 + 12744) = v4;
  *(v0 + 13412) = 0;
  *(v0 + 13411) = 0;
  return (*(v5 + 8 * (((*v3 == 0) * (((4067 * (v2 ^ 0x6E5) - 1657911468) & 0x62D18BEF) - 254)) ^ v2)))();
}

uint64_t sub_1002D2AC0()
{
  v4 = *(v2 + 11412) - 2003768020;
  v5 = ((v1 + v0 + 1390) ^ 0xCEEF155F) + *(v2 + 10608);
  v6 = (v4 < 143715624) ^ (v5 < 143715624);
  v7 = v4 > v5;
  if (v6)
  {
    v7 = v4 < 143715624;
  }

  return (*(v3 + 8 * ((488 * !v7) ^ v0)))();
}

void sub_1002D2B50()
{
  v3 = *(v1 + 11864);
  *(v1 + 13040) = *(v2 + 8 * v0);
  v4 = *(v1 + 10432);
  JUMPOUT(0x1002D0570);
}

uint64_t sub_1002D2BB0()
{
  *(v0 + 11412) += 4;
  *(v0 + 11656) = (*(v1 + 98808))(4 * *(v0 + 12340), 0x100004052888210);
  v2 = *(v0 + 13336);
  v3 = (*(*(v0 + 10448) + 98808))(16 * *v2, 0x10800409227ACB4);
  v4 = *(v0 + 10448);
  *(v0 + 10512) = v3;
  *(v0 + 13436) = 0;
  *(v0 + 13435) = 0;
  return (*(v4 + 8 * ((10 * (*v2 != 0)) ^ 0x2E47)))();
}

uint64_t sub_1002D2E80@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W8>)
{
  v6 = v2 ^ (v3 + 1365);
  v7 = *(v4 + 11864);
  v8 = *(v4 + 10608);
  *(v4 + 13440) = a2;
  v9 = *(v4 + 11412) + (v6 ^ 0xBA016408);
  v8 -= 262305493;
  v10 = (v8 < -500276352) ^ (v9 < -500276352);
  v11 = v9 > v8;
  if (v10)
  {
    v11 = v9 < -500276352;
  }

  return (*(v5 + 8 * ((v11 * (5 * (v2 ^ 0x301) - 50)) ^ v2)))(a1, v7);
}

void sub_1002D2F14()
{
  *(v1 + 13040) = *(v2 + 8 * v0);
  v3 = *(v1 + 10432);
  JUMPOUT(0x1002D0570);
}

uint64_t sub_1002D3444()
{
  v4 = *(v2 + 11412) + ((v1 + v0 - 1025) ^ 0x1AE9843B);
  v5 = *(v2 + 10608) + 1358276958;
  v6 = (v5 < 1120306099) ^ (v4 < 1120306099);
  v7 = v4 > v5;
  if (v6)
  {
    v7 = v4 < 1120306099;
  }

  return (*(v3 + 8 * ((v7 * (v0 ^ 0xC69)) ^ v0)))();
}

void sub_1002D34D0()
{
  v3 = *(v1 + 11864);
  *(v1 + 13040) = *(v2 + 8 * v0);
  v4 = *(v1 + 10432);
  JUMPOUT(0x1002D0570);
}

uint64_t sub_1002D3544()
{
  v4 = (*(v3 + 8 * (v1 ^ 0x2AAC)))(65, 0x100004077774924);
  v5 = *(v0 + 10448);
  *(v0 + 12368) = v4;
  v6 = *(v0 + 11412) + 257832576;
  v7 = *(v0 + 10608) - 1651680278;
  v8 = (v7 < -1889651137) ^ (v6 < -1889651137);
  v9 = v6 > v7;
  if (v8)
  {
    v9 = v6 < -1889651137;
  }

  return (*(v5 + 8 * ((115 * (((5 * (v1 ^ (v2 - 53) ^ 0x85)) ^ v9) & 1)) ^ v1)))();
}

void sub_1002D3630()
{
  v3 = *(v0 + 11864);
  *(v0 + 13040) = *(v2 + 8 * v1);
  JUMPOUT(0x1002D0570);
}

uint64_t sub_1002D368C()
{
  v3 = (*(v2 + 8 * ((v1 + 635) ^ 0x3665)))((((v1 - 461) | 0x1509) ^ 0x171Eu) * **(v0 + 13296), 0x1000040957D8CC4);
  v4 = *(v0 + 10448);
  *(v0 + 12568) = v3;
  return sub_1002D3710();
}

uint64_t sub_1002D3758@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v5 = *(v3 + 11864);
  v6 = *(v3 + 10608);
  *(v3 + 13368) = v2;
  v7 = *(v3 + 11412) + ((a2 - 668017247) ^ 0x9B9A43F6);
  v6 -= 773559772;
  v8 = (v6 < -1011530631) ^ (v7 < -1011530631);
  v9 = v7 > v6;
  if (v8)
  {
    v9 = v7 < -1011530631;
  }

  return (*(v4 + 8 * ((998 * (((a2 + 34) ^ v9) & 1)) ^ a2)))(a1, v5);
}

void sub_1002D386C()
{
  v3 = (*(v2 + 8 * (v0 + 11540)))(((3131 * (v0 ^ 0x329)) ^ 0x1870u) * **(v1 + 13304), 0x1000040274DC3F3);
  v4 = *(v1 + 10448);
  *(v1 + 12256) = v3;
  JUMPOUT(0x1002D38F0);
}

uint64_t sub_1002D3930@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W8>)
{
  v5 = (v2 - 117447536) & *(v3 + 10232);
  v6 = *(v3 + 11864);
  v7 = *(v3 + 10608);
  *(v3 + 13384) = a2;
  v8 = *(v3 + 11412) + 1662912602;
  v7 -= 246600188;
  v9 = (v7 < -484571047) ^ (v8 < ((v2 - 4856) ^ 0x3B310FC3 ^ v5));
  v10 = v8 > v7;
  if (v9)
  {
    v10 = v8 < ((v2 - 4856) ^ 0x3B310FC3 ^ v5);
  }

  return (*(v4 + 8 * ((19 * !v10) ^ v2)))(a1, v6);
}

uint64_t sub_1002D3A28()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x3CA0)))(**(v1 + 13312) << ((v0 - 55) ^ 0x69u), 0x1000040BDFB0063);
  v4 = *(v1 + 10448);
  *(v1 + 11336) = v3;
  return sub_1002D3AA4();
}

uint64_t sub_1002D3AF4()
{
  v3 = *(v1 + 11412) - 1018269935;
  v4 = *(v1 + 10608) + 1367184568;
  v5 = (v4 < 1129213709) ^ (v3 < 1129213709);
  v6 = v3 > v4;
  if (v5)
  {
    v6 = v3 < 1129213709;
  }

  return (*(v2 + 8 * ((!v6 * (((v0 ^ 0xD82F0DB1) + 668006519) ^ 0x4D)) ^ v0)))();
}

void sub_1002D3B84()
{
  v3 = *(v1 + 11864);
  *(v1 + 13040) = *(v2 + 8 * v0);
  JUMPOUT(0x1002D3BE4);
}

uint64_t sub_1002D3BEC@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W8>)
{
  v5 = *(v3 + 11864);
  v6 = *(v3 + 10608);
  *(v3 + 13400) = a2;
  v7 = ((v2 + 405332795) ^ 0x1829023D) + ((v2 + 405332795) | 0xC0060580) + *(v3 + 11412) + 653342265;
  v6 -= 1924176992;
  v8 = (v6 < 2132819445) ^ (v7 < 2132819445);
  v9 = v7 > v6;
  if (v8)
  {
    v9 = v7 < 2132819445;
  }

  return (*(v4 + 8 * ((13 * v9) ^ v2)))(a1, v5);
}

uint64_t sub_1002D3CFC()
{
  *(v0 + 10588) += 4;
  (*(v1 + 100008))(*(v0 + 11928));
  v2 = *(v0 + 10448);
  return sub_1002D784C();
}

uint64_t sub_1002D3D3C()
{
  *(v0 + 10492) += 4;
  v3 = (*(v2 + 100008))(*(v0 + 12664));
  v4 = *(v0 + 10448);
  v5 = *(v0 + 11512);
  v6 = *(v0 + 11048);
  *(v0 + 12848) = *(v4 + 8 * (v1 - 668006273));
  v7 = *(v0 + 5256);
  *(v0 + 12296) = v5;
  *(v0 + 10700) = v6;
  *(v0 + 11120) = v7;
  return (*(v4 + 8 * ((7369 * (*v7 == 0)) ^ 0xC55)))(v3);
}

uint64_t sub_1002D3EFC()
{
  (*(v2 + 8 * (*(v0 + 10432) + 668019017)))(*(v0 + 12920));
  v3 = *(v0 + 12320);
  *(v0 + 12104) = *(*(v0 + 10448) + 8 * v1);
  v4 = *(v0 + 6784);
  return sub_1002D411C(0xA94EFu);
}

uint64_t sub_1002D3FF8@<X0>(int a1@<W8>)
{
  v3 = a1 + 1726;
  v4 = a1 - 88127860;
  v5 = (v4 - 512716617) & 0xFBFF27ED;
  v6 = (v4 + 2311) & 0xDD6FAF9D;
  v7 = *(v1 + 11512);
  *(v1 + 13216) = v7;
  *(v1 + 13228) = *(v1 + 11048);
  *(v1 + 10492) = 0;
  *(v1 + 12664) = 0;
  return (*(v2 + 8 * ((((v5 ^ 0xFFFFFF3D) + v6) * (v7 == 0)) ^ v3)))();
}

uint64_t sub_1002D4080()
{
  v4 = (*(v3 + 8 * (v2 ^ 0xD82F3759)))(*(v0 + 12664));
  v5 = *(v0 + 10448);
  *(v0 + 11036) = v1;
  v6 = *(v0 + 6784);
  return (*(v5 + 8 * (((*(v0 + 11512) == 0) * ((((v2 + 668014732) | 0x146) - 668015058) ^ 0xD82F07A4 ^ (((v2 + 668014732) | 0x146) - 1762703199) & 0x691096FF)) ^ ((v2 + 668014732) | 0x146))))(v4);
}

uint64_t sub_1002D40C4()
{
  *(v0 + 11036) = v2;
  v4 = *(v0 + 6784);
  return (*(v3 + 8 * (((*(v0 + 11512) == 0) * ((v1 - 668015058) ^ 0xD82F07A4 ^ (v1 - 1762703199) & 0x691096FF)) ^ v1)))();
}

uint64_t sub_1002D40D0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 10432) = v2;
  v3 = *(v1 + 13276);
  v4 = *(v1 + 13264);
  *(v1 + 10208) = v4 + (v3 - 16);
  v5 = (((v3 + 12) ^ (4 - v3) ^ (-71 - v3) ^ (((-71 - v3) ^ 4) - 1)) ^ (((-71 - v3) ^ 0xE) + 5)) & 0xF;
  v6 = (((v5 ^ 0xC68D3852) - 1482899390) ^ ((v5 ^ 0x57284E14) + 909751816) ^ ((v5 ^ 0x91A57643) - 256602543)) - 1628567595;
  v7 = v6 + v3;
  v8 = 2 * (v3 - 20);
  *(v1 + 10272) = v3;
  v9 = v3 - 1234110094 - (v8 & 0x6CE1F30C);
  *(v1 + 10192) = ((v6 + 20) ^ 0xACAFBF5DEF9FD767) + 0x535040A23ACF646CLL + ((2 * (v6 + 20)) & 0x1DF3FAECELL);
  *(v1 + 10184) = ((v3 - 20) ^ 0xADFECBF7) + 1375810569 + (v8 & 0x5BFD97EE);
  v10 = *(v1 + 13252);
  v11 = *(v1 + 13240);
  v12 = v10 - 20;
  *(v1 + 10176) = v11 + (v10 - 16);
  v13 = (((-106 - v10) ^ (v10 + 12) ^ (v10 + 108)) ^ ((((-106 - v10) ^ 0xFB) + 7) ^ (((-106 - v10) ^ 0xF9) + 5))) & 0xF;
  v14 = (((v13 ^ 0x787146BB) - 1488629360) ^ (v13 - 524720331) ^ ((v13 ^ 0x3687FAA9) - 374084194)) + 550234293;
  v15 = (v14 + v10);
  v16 = 2 * (v10 - 20);
  *(v1 + 10256) = v10;
  v17 = v10 - 1234110094 - (v16 & 0x6CE1F30C);
  *(v1 + 10160) = ((v14 + 20) ^ 0xDEF7FFD7EF9BF5E3) + 0x210800283AD345F0 + ((2 * (v14 + 20)) & 0x1DF37EBC6);
  *(v1 + 10152) = (v12 ^ 0x2FEE6D57) - 804154711 + (v16 & 0x5FDCDAAEu);
  v18 = *(v1 + 13228);
  v19 = *(v1 + 13216);
  *(v1 + 10144) = v19 + (v18 - 16);
  v20 = (((((99 - v18) ^ 0xFD) + 14) ^ (99 - v18)) ^ (((99 - v18) ^ 0xAA) + 11)) & 0xF;
  v21 = (((v20 ^ 0x3B6B16B3) + 1862012568) ^ ((v20 ^ 0xC5DABEA2) - 1873959289) ^ ((v20 ^ 0xFEB1A81E) - 1423527877)) - 1435965504 + v18;
  v22 = 2 * (v18 - 20);
  *(v1 + 10248) = v18;
  v23 = v18 - 1234110094 - (v22 & 0x6CE1F30C);
  *(v1 + 10128) = ((v18 - 20) ^ 0xBFEF7DD7) + 1074823721 + (v22 & 0x7FDEFBAE);
  v24 = *(v1 + 13204);
  v25 = (((-112 - v24) ^ (v24 + 12) ^ (((-112 - v24) ^ 8) + 12)) ^ ((((-112 - v24) ^ 0xAA) + 10) ^ (((-112 - v24) ^ 1) + 3))) & 0xF;
  v26 = (((v25 ^ 0x5AF30328) - 1555924935) ^ ((v25 ^ 0x2FD14291) - 698336894) ^ ((v25 ^ 0x752241B5u) - 1936508250)) + 105809103 + v24;
  v27 = 2 * (v24 - 20);
  v28 = v24 - 1234110094 - (v27 & 0x6CE1F30C);
  *(v1 + 10240) = v7;
  *(v1 + 10112) = v7 - 751357895 - ((2 * v7) & 0xA66E6072);
  *(v1 + 10232) = v15;
  *(v1 + 10104) = v15 - 751357895 - ((2 * v15) & 0xA66E6072);
  *(v1 + 10224) = v21;
  *(v1 + 10096) = v21 - 751357895 - ((2 * v21) & 0xA66E6072);
  *(v1 + 10216) = v26;
  *(v1 + 10088) = v26 - 751357895 - ((2 * v26) & 0xA66E6072);
  v29 = *(v1 + 13192);
  *(v1 + 10288) = v24;
  *(v1 + 10080) = v29 + (v24 - 16);
  *(v1 + 10072) = ((v24 - 20) ^ 0x3DEF795F) - 1039105792 + (v27 & 0x7BDEF2BEu) + 1441;
  *(v1 + 10200) = v9;
  v30 = v9 ^ 0xB670F986;
  *(v1 + 10000) = v30 + v4 - 4;
  *(v1 + 10168) = v17;
  v31 = v17 ^ 0xB670F986;
  *(v1 + 9992) = v31 + v11 - 4;
  *(v1 + 10136) = v23;
  v32 = v23 ^ 0xB670F986;
  *(v1 + 9984) = v32 & 0xFFFFFFF8;
  *(v1 + 9976) = -6078 - (v32 & 0xFFFFFFF8);
  *(v1 + 9968) = v32 + v19 - 4;
  *(v1 + 10120) = v28;
  v33 = v28 ^ 0xB670F986;
  *(v1 + 9960) = v33 + v29 - 4;
  *(v1 + 9952) = v30 & 0xFFFFFFF8;
  *(v1 + 9928) = 8 - (v30 & 0xFFFFFFF8);
  *(v1 + 9944) = v31 & 0xFFFFFFF8;
  *(v1 + 9920) = 8 - (v31 & 0xFFFFFFF8);
  *(v1 + 9936) = v33 & 0xFFFFFFF8;
  *(v1 + 9912) = 8 - (v33 & 0xFFFFFFF8);
  *(v1 + 9840) = -83929122;
  *(v1 + 10352) = v4;
  *(v1 + 10416) = v4 + 4;
  *(v1 + 10336) = v11;
  *(v1 + 10400) = v11 + 4;
  *(v1 + 10320) = v19;
  *(v1 + 10384) = v19 + 4;
  *(v1 + 10304) = v29;
  *(v1 + 10368) = v29 + 4;
  *(v1 + 10032) = v30 & 0xFFFFFFE0;
  *(v1 + 9832) = (v9 ^ 0x86) & 0x1F;
  *(v1 + 9824) = (v9 ^ 0x86) & 0x18;
  *(v1 + 9904) = (v9 ^ 0x86) & 7;
  *(v1 + 10024) = v31 & 0xFFFFFFE0;
  *(v1 + 9816) = (v17 ^ 0x86) & 0x1F;
  *(v1 + 9808) = (v17 ^ 0x86) & 0x18;
  *(v1 + 9896) = (v17 ^ 0x86) & 7;
  *(v1 + 10016) = v32 & 0xFFFFFFE0;
  *(v1 + 9800) = (v23 ^ 0x86) & 0x1F;
  *(v1 + 9792) = (v23 ^ 0x86) & 0x18;
  *(v1 + 9888) = (v23 ^ 0x86) & 7;
  *(v1 + 10008) = v33 & 0xFFFFFFE0;
  *(v1 + 9784) = (v28 ^ 0x86) & 0x1F;
  *(v1 + 9776) = (v28 ^ 0x86) & 0x18;
  *(v1 + 9880) = (v28 ^ 0x86) & 7;
  *(v1 + 10064) = v30;
  *(v1 + 9872) = v30 - 8;
  *(v1 + 10056) = v31;
  *(v1 + 9864) = v31 - 8;
  *(v1 + 10048) = v32;
  *(v1 + 9856) = v32 - 8;
  *(v1 + 10040) = v33;
  *(v1 + 9848) = v33 - 8;
  return sub_1002CCF68(a1);
}

uint64_t sub_1002D40E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(v6 + 11416);
  *(v6 + 12104) = *(v7 + 2016);
  return sub_1002D411C(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1002D411C@<X0>(unsigned int a1@<W8>)
{
  v6 = 23958;
  atomic_compare_exchange_strong(v3, &v6, a1);
  return (*(v5 + 8 * (((v6 != v1) * ((v4 + 668011676) ^ v2)) ^ (v4 + 668014954))))();
}

uint64_t sub_1002D4388(int a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, char a7, int a8)
{
  v10 = v8 - 1;
  *(a3 + v10) = (a7 ^ a2) * (a7 + 17);
  return (*(v9 + 8 * (((v10 == 0) * ((a8 + a1) ^ a4)) ^ a8)))();
}

uint64_t sub_1002D441C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = ((v9 ^ 0xE06462B4) + 1310287288) ^ v9 ^ ((v9 ^ 0x96D4E914) + 950660632) ^ ((v9 ^ 0xBFBBFF8F) + 298252429) ^ ((v9 ^ 0x98898D4F ^ (a8 + 20)) + 921996241);
  v11 = ((v10 ^ 0x869AA56E) - 259503291) ^ ((v10 ^ 0x9390916A) - 444432575) ^ ((v10 ^ 0x4488CCF8) + 848962259);
  v12 = (((((a8 + 145) | 0x1902) - 2812732) ^ *(v8 + 10927)) + ((2 * *(v8 + 10927)) & 0xFFBFu) + 2805793) % (663754439 - v11);
  v13 = ((2 * v12) & 0x5E3CFDFE) + (v12 ^ 0xAF1E7EFF) + v11 + 1895817642;
  v15 = v9 == 0xF35BA635182F8EBLL || v13 == 1202616176;
  return (*(*(v8 + 10448) + 8 * ((4 * v15) | (16 * v15) | a8)))();
}

uint64_t sub_1002D45B4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  *(v8 + 11080) = a8 - 1;
  *(v11 + a8 - 1) = (v9 ^ a2) * (v9 + 17);
  return (*(*(v8 + 10448) + 8 * (((*(v8 + 11080) == (a7 ^ v10) * v14 + v12) * v13) ^ a7)))();
}

uint64_t sub_1002D4758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v8 ^ 0x8BEu;
  v13 = *(v11 + 8);
  v9[1425] = v10;
  v9[1440] = v10;
  v14 = v12 + 0xF35BA635182E4C4 + a8 - v13 + 2307;
  *(v10 + 8) = v14;
  v9[1304] = v14;
  return (*(v9[1306] + 8 * ((92 * ((*(v10 + (((v12 - 2463) - 0xF35BA635182EE6ALL) ^ (v12 + 2291)) + v14 + 8) - 0xF35BA635182F8FDLL) < 0x7FFFFFFFFFFFFFFFLL)) ^ v12)))();
}

uint64_t sub_1002D4A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v14 = (v10 - 1845) | 0x1028u;
  *(v9 + 16) = v7;
  *(a7[2] + 24) = a7[3];
  v15 = a7[1] + *(v12 + 8) - 0xF35BA635182F8FCLL;
  *(v12 + 8) = v15;
  *(v8 + 10432) = v15;
  return (*(v13 + 8 * ((13538 * (((v14 + 1166024663) & 0xBA7FCD96 ^ 0x70CA459CAE7D0692) + *(v11 + (v14 ^ 0xF0CA459CAE7D132CLL) + v15 + 8) > ((v14 + 403370336) | 0xC0240204) - 3626960781)) ^ v14)))();
}

uint64_t sub_1002D4B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  *a7 = *(v7 + 10432);
  v10 = *(v9 + 8);
  v11 = (v8 ^ 0xD82F061A) + v10;
  v12 = v11 - 0xF35BA6429B20088;
  v13 = v11 - 0xF35BA6429B20085;
  if (v12 >= 0)
  {
    v13 = v12;
  }

  return (*(*(v7 + 10448) + 8 * ((7277 * (((((v10 ^ 0xB93D1344) + 390075464) ^ v10 ^ ((v10 ^ 0x615F612B) - 819829207) ^ ((v10 ^ 0x241F67FD) - 1973264129) ^ ((v10 ^ 0xADFFED6E) + 58911342) ^ 0x5182F8FC) - ((*(a3 + (*(v7 + 10924) & 3)) % (((v13 >> 2) - (((271 * (v8 ^ 0x185)) ^ 0x1D49873F) & (2 * (v13 >> 2))) + 245680529) ^ 0xEA4C991) + 39) & 0x1F8) - 16) > 0)) ^ v8)))();
}

uint64_t sub_1002D4C84(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = *(a3 + (*(v10 + 10926) & 3)) % v8;
  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  v16 = (((a8 - 1743850649) | 0x40200008u) ^ v9) + v15;
  *(v10 + 10784) = v16;
  *(v12 + v11 + 16 + v16) = ((v10 + 32) ^ a2) * (v10 + 49);
  return (*(v13 + 8 * ((53 * (*(v10 + 10784) == 0)) ^ a8)))();
}

uint64_t sub_1002D4DA4()
{
  v4 = *(v0 + 11376);
  v5 = *(v0 + 10592);
  v6 = 505507193 * ((-798851069 - ((v2 - 200) | 0xD0628003) + ((v2 - 200) | 0x2F9D7FFC)) ^ 0x4416F437);
  v7 = v2 - 200;
  *v7 = v6 + (*(v0 + 12708) ^ 0xB7FDF7EF) + ((2 * *(v0 + 12708)) & 0x6FFBEFDE) + 2140400862;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 8) = v1 - v6 - 5386;
  v8 = (*(v3 + 8 * (v1 ^ 0x2D74u)))(v2 - 200);
  v9 = *(v0 + 10448);
  v10 = *(v2 - 196);
  *(v0 + 11108) = v10 - 168832651;
  return (*(v9 + 8 * (v1 | (4 * (v10 == (((v1 ^ 0x904) - 668011938) ^ 0xD23F2907))))))(v8);
}

uint64_t sub_1002D4F04@<X0>(int a1@<W8>)
{
  v3 = a1 + 8846;
  v4 = v1[1563];
  v5 = v1[1626];
  v1[1278] = (((a1 - 114) ^ 8) - (v1 - 32)) & 0x18 ^ 8;
  v6 = v1[867];
  v7 = *(v6 + 16);
  v8 = **(v6 + 8);
  v1[1280] = 0;
  v9 = *v7;
  v1[1284] = v1 + v4 + 13616;
  v1[1563] = v4 + 32;
  v1[1282] = v8;
  v1[1626] = v5 + 640;
  return (*(v2 + 8 * ((2562 * (v8 == 0)) ^ v3)))(1977538899, 247975, 35, 668019017, 2263125);
}

uint64_t sub_1002D5034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v5 + (v4 ^ 0xD82F038C) + 668009286 - 3410;
  v6[1304] = v8;
  v6[1626] = v8;
  return (*(v7 + 8 * (v4 | 0xC4)))(a1, a2, a3, a4, v6[1284]);
}

uint64_t sub_1002D50A4()
{
  v4 = 2 * (v0 ^ 0x33F);
  v5 = *(*(v1 + 10592) + 16);
  v6 = (v5 ^ 0xA73F89DE) & (2 * (v5 & 0xC7BF8D9C)) ^ v5 & 0xC7BF8D9C;
  v7 = ((v4 + 1482) ^ (v2 + 1492) ^ 0x11091F58 ^ (2 * (v5 ^ 0x232C81F6))) & (v5 ^ 0x232C81F6) ^ (2 * (v5 ^ 0x232C81F6)) & 0xE4930C6A;
  v8 = v7 ^ 0x2491042A;
  v9 = (v7 ^ 0x3084A) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x924C31A8) & v8 ^ (4 * v8) & 0xE4930C68;
  v11 = v10 & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x64930C42)) ^ 0x4930C6A0) & (v10 ^ 0x64930C42) ^ (16 * (v10 ^ 0x64930C42)) & 0xE4930C60;
  v13 = v11 ^ 0xE4930C6A ^ (v12 ^ 0x40100400) & (v11 << 8);
  return (*(v3 + 8 * ((52 * ((v5 ^ (2 * ((v13 << 16) & 0x64930000 ^ v13 ^ ((v13 << 16) ^ 0xC6A0000) & (((v12 ^ 0xA483084A) << 8) & 0xE4930000 ^ 0x64930000 ^ (((v12 ^ 0xA483084A) << 8) ^ 0x130C0000) & (v12 ^ 0xA483084A))))) >> 5 == 0x34ECAA)) ^ v4)))();
}

uint64_t sub_1002D5228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v10 = 9 * (v6 ^ 0x1D4B);
  v11 = *a5 ^ *(*(&off_1006B4E30 + (v10 - 10731)) - 12) ^ *(*(&off_1006B4E30 + (v10 ^ 0x2847)) - 4) ^ *(*(&off_1006B4E30 + (v10 - 11311)) + (v10 ^ 0x2C61) - 4);
  v12 = ((((v10 ^ v8) + (v11 ^ 0x2E) + 58) ^ ((v11 ^ 0x6B) + 11) ^ ((v11 ^ 0x45) + 37)) - *(*(v7 + 8) + (v5 << (v10 ^ 0x62)))) == 98;
  return (*(v9 + 8 * ((v12 | (16 * v12)) ^ v10)))();
}

uint64_t sub_1002D5368@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W6>, int a6@<W8>)
{
  v12 = (a6 ^ 0x10080970) - ((2 * a6) & 0xFFFFFF1F) + 434193603 + (((v9 ^ 0x7E14C1BD) - 1476235150) ^ ((v9 ^ 0x580D89E5) - 1910818774) ^ ((v8 ^ 0xF00FEB83) + (v9 ^ 0x26194858)));
  v13 = (*(v7 + v6) << 48) | ((((v6 & 0xF) * a5) ^ *(a4 + v6) ^ *(a1 + (v6 & 0xF)) ^ *((v6 & 0xF) + a2 + 4) ^ *((v6 & 0xF) + a3 + 6)) << 56) | ((v12 == (v8 ^ 0x1216)) << 33);
  v14 = v13 - ((2 * v13) & 0x79D0000400000000) + 0x3CE867D6E30B2CD5;
  v15 = *(v10 + 8 * ((v8 ^ 0xDF9) - 7006));
  v16 = (*v15)++;
  v17 = v16 & 0x3F;
  if (v17 <= 0x35)
  {
    v18 = (*(v10 + 8 * ((v8 ^ 0xDF9) & 0x63272212)) + 8 * v17 - 8);
  }

  else
  {
    v18 = (8 * v17 + *(v10 + 8 * (v8 ^ 0x10D3)) - 440);
  }

  *v18 = v14;
  return (*(v11 + 8 * ((23 * (v12 != (v8 ^ 0x1216))) ^ v8 ^ 0xDF9)))();
}

uint64_t sub_1002D5538(uint64_t a1, int a2, __int16 a3, uint64_t a4, int a5, uint64_t a6, int a7, __int16 a8)
{
  *(a6 + (v10 * a3 - (((v10 * a2) >> 16) >> 3) * v14)) = v12;
  *(v9 + 4 * (v10 * v8 - (((v10 * a5) >> 16) >> 6) * a8)) = 0;
  return (*(v15 + 8 * (((((v10 - 255) & 0xC0) == v11 + a7) * v13) ^ v11)))();
}

uint64_t sub_1002D5594(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v10 = (v6 + 1478680529) | 0x800C010C;
  *(v7 + 10304) = (8 * (((v8 ^ 0x7680853B) + 316516655) ^ v8 ^ ((v8 ^ 0x664A0C3) + 37326039) ^ ((v8 ^ 0x1FFFF3F9) + 463658989) ^ (((v10 - 1131807137) ^ v8) + 283388415))) ^ 0x3056915D;
  *(v7 + 10384) = -1674584703;
  *(v7 + 10400) = 2052188825;
  *(v7 + 10432) = 1182090452;
  *(v7 + 10320) = 73222054;
  *(v7 + 10368) = -1573177608;
  *(v7 + 10416) = 126118877;
  *(v7 + 10352) = -6981203;
  *(v7 + 10336) = 1775324330;
  return (*(v9 + 8 * ((41 * (v8 - 463655978 >= v10 + 667998394 + 2 * (v10 ^ 0xD82F0831))) | (a4 + v10 - 789))))(a1, a2, a3, 3702499326, *(v7 + 10256), a6, v8);
}

uint64_t sub_1002D57C8@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X5>, int a4@<W8>)
{
  *(v4 + 10232) = v5;
  v7 = a4 ^ 0x2765;
  v8 = *(v4 + 10248);
  *(a3 + (a4 ^ 0x2765u) + v8 * a2 + 951901241) = -48;
  v9 = ((a4 ^ 0x2765) + 1210177211) | 0x900D0608;
  v10 = (((a4 ^ 0x2765) - 29375245) & 0xD9EF17CF ^ 0x3C722B9B) + v8;
  if (v10 <= 0x3F)
  {
    v10 = 63;
  }

  return (*(v6 + 8 * ((56 * ((v9 ^ 0xC38DD466) - v8 + v10 < 2)) ^ v7)))(a1, 35, 668009232);
}

uint64_t sub_1002D5A34(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v12 = v8 + a4 * a2;
  *(a6 + v12 - ((((v12 >> 1) * v10) >> 32) >> 5) * v9) = 80;
  *(a6 + v12 + 35 - (((((v12 + 35) >> 1) * v10) >> 32) >> 5) * v9) = 80;
  return (*(v11 + 8 * ((((v7 & 0xFFFFFFFE) == 2) * (((v6 + 1228744563) & 0xDE93F7BE) - 9585)) ^ (v6 + 668013727))))();
}

void sub_1002D5BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v8 = *(v7 + 10304);
  a6[59] = v8 ^ 0xD1 ^ ((v6 - 49) | 0x80);
  a6[24] = BYTE1(v8) ^ 0x5E;
  a6[28] = HIBYTE(v8) ^ 0xBD;
  a6[63] = BYTE2(v8) ^ 0x10;
  *(v7 + 10304) = HIBYTE(v8) ^ 0xED400EE0;
  JUMPOUT(0x1002D5C50);
}

uint64_t sub_1002D5C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, int a7)
{
  v14 = v8 + 668013463;
  v15 = a6[(35 - (((35 * v12) >> 16) >> 3) * v10)] << 8;
  v16 = a6[0x46 % ((((v14 - 3823) | v11) ^ 0xC3C) & 0xFEFFu)];
  v17 = a6[(105 - (((105 * v12) >> 16) >> 3) * v10)];
  *v7 = (((((((v15 ^ 0xFFFF8FFF) & ((*a6 << 16) ^ 0x59EA2) | v15 & 0x6100) ^ (a7 + 2050)) & (v16 ^ (v9 - 428)) ^ v16 & 0x59) << 8) ^ 0xCE53B102) & ~v17 | v17 & 0xFFFFFFFD) ^ 0x83B54752;
  return (*(v13 + 8 * v14))();
}

uint64_t sub_1002D5DF4(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = v11 * a5 - 150;
  v15 = v14 - (((v14 * a1) >> 32) >> 6) * a8;
  v16 = (v10 ^ 0xD3D) * v11;
  v17 = v16 - 1200;
  v18 = v16 - 525;
  v20 = v14 - 278 * (((v14 * a1) >> 32) >> 7);
  v21 = ((v16 - 525) * a1) >> 38;
  v22 = *(v9 + 4 * v15);
  if (v20 >= 0x8B)
  {
    v20 -= 139;
  }

  v23 = v16 - (((v16 * a1) >> 32) >> 6) * a8;
  v19 = *(v9 + 4 * (v11 * a5 - 1125 - ((((v11 * a5 - 1125) * a1) >> 32) >> 6) * a8));
  v24 = (v12 ^ __ROR4__(v22, 17) ^ __ROR4__(v22, 19) ^ (v12 + (*(v9 + 4 * v20) >> 10) - ((*(v9 + 4 * v20) >> 9) & 0x47BA00))) + (v8 ^ __ROR4__(v19, 18) ^ __ROR4__(v19, 7) ^ (v8 + (v19 >> 3) - ((v19 >> 2) & 0x139D719C)));
  *(v9 + 4 * v23) = v24;
  v25 = v24 + *(v9 + 4 * (v18 - v21 * a8));
  *(v9 + 4 * v23) = v25;
  *(v9 + 4 * v23) = v25 + *(v9 + 4 * (v17 - (((v17 * a1) >> 32) >> 6) * a8));
  return (*(v13 + 8 * ((13 * (v11 != 63)) ^ v10)))();
}

uint64_t sub_1002D5EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, __int16 a8)
{
  a6[96] = 1906882147;
  v12 = v9 ^ 0x1109;
  a6[85] = 23953431;
  v13 = *(v11 + 10416) + 402615758;
  v14 = *(v11 + 10320) + 1705811649;
  a6[109] = 1168167137;
  v15 = *(v11 + 10432);
  a6[43] = -272675062;
  a6[149] = -847732671;
  v16 = (((v9 ^ 0x1109) + 359361478) ^ v15) + ((2 * v15) & 0x2AD7108A);
  v17 = (*(v11 + 10368) + 422344589);
  a6[74] = -1997608701;
  v18 = *(v11 + 10400) - 692295706;
  a6[54] = 1005136432;
  v19 = *(v11 + 10336) - 761420088;
  a6[129] = 1824793141;
  v20 = *(v11 + 10384) + 153098169;
  a6[131] = -1342835260;
  a6[120] = 1952992846;
  a6[138] = 1514263562;
  a6[140] = -1734977936;
  v21 = *(v11 + 10352) - 1687163169;
  a6[21] = 1359898317;
  a6[151] = -648833562;
  a6[76] = -1282168039;
  a6[25] = 511838147;
  a6[107] = -1026292921;
  a6[65] = -1971977754;
  a6[32] = -1443420394;
  a6[98] = 662258232;
  a6[56] = -1900991156;
  a6[118] = 708509555;
  a6[23] = 125168632;
  a6[47] = 1692668526;
  a6[34] = 1002718782;
  a6[133] = -1910395091;
  a6[144] = -1440100105;
  a6[142] = -944059334;
  a6[67] = -1075221793;
  a6[102] = -380990325;
  a6[87] = -61665741;
  a6[45] = 1647061276;
  a6[155] = -1076753731;
  a6[89] = -312527431;
  a6[36] = 1064218359;
  a6[91] = -637325342;
  a6[100] = 736153049;
  a6[78] = -686742471;
  a6[153] = -560484251;
  a6[122] = 1794093445;
  a6[69] = -1720029792;
  a6[111] = 1171441066;
  a6[60] = 904859770;
  a6[113] = 197515767;
  a6[38] = -296703338;
  a6[135] = 1056971710;
  a6[80] = -1166570221;
  a6[71] = 1281909031;
  a6[93] = 2145784933;
  a6[124] = 828138888;
  a6[29] = -1941493920;
  a6[58] = 2093094854;
  a6[27] = -551291371;
  a6[157] = 1934913217;
  a6[49] = 673334498;
  a6[146] = 1356050725;
  a6[51] = -1468619668;
  a6[104] = -1872951327;
  a6[115] = -1535203718;
  a6[62] = -693024663;
  a6[137] = -567730844;
  a6[82] = 1720733372;
  a6[40] = -1669325690;
  *(v11 + 10288) = v21;
  *(v11 + 10336) = v14;
  *(v11 + 10320) = v19;
  a6[126] = -1140321955;
  LODWORD(v17) = v14;
  HIDWORD(v22) = v18;
  LODWORD(v22) = v18;
  v23 = (v22 >> 10) & 0xF03FFFFF;
  if (v17 == 459)
  {
    v24 = v21;
  }

  else
  {
    v24 = ~(v21 ^ v18);
  }

  v25 = __ROR4__((-(v23 ^ 0xC151D7A3) ^ 0xAAADFDDF ^ ((v23 ^ 0xC151D7A3) - 1431437857 - ((2 * (v23 ^ 0xC151D7A3)) & 0x405BFBBE)) ^ (((v18 << 22) & (((v12 - 80747664) & 0xDCFF079C) + 932247668)) - (((v23 ^ 0x336F21D0) & ((v18 << 22) & (((v12 - 80747664) & 0xDCFF079C) + 932247668) ^ 0xFBFFFFFF) | (v18 << 22) & 0xC800000) ^ 0xF23EF673))) + ((v18 << 22) & (((v12 - 80747664) & 0xDCFF079C) + 932247668)), 28);
  v26 = (((v18 << 21) ^ v25 ^ 0x151D7A3C) + (v18 >> 11) - 2 * (((v18 << 21) ^ v25 ^ 0x151D7A3C) & (v18 >> 11))) ^ __ROR4__(v18, 25);
  v27 = v8[(5400 - (((5400 * v10) >> 16) >> 6) * a8)] + ((v13 ^ v24) & v18 ^ 0xD8B56CD0 ^ (v13 - 659198768 - ((2 * v13) & 0xB16AD9A0))) + *v8 + ((v16 + 968102110 - ((2 * v16) & 0x736821BC)) ^ 0x39B410DE ^ v26) + 2 * (v26 & v16) - 397911154;
  return (*(*(v11 + 10448) + 8 * (v12 ^ 0xEF)))();
}

uint64_t sub_1002D6584@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X5>, int a6@<W8>)
{
  v13 = ((2 * *(v6 + 10400)) & 0xAD78CFCC) + (*(v6 + 10400) ^ 0xD6BC67E6) + v8;
  *(v6 + 10384) += a2;
  v14 = *(v6 + 10368) + 403448397;
  v15 = v7 + *(v6 + 10320);
  v16 = a6 + *(v6 + 10336);
  *(v6 + 10416) += a3;
  *(v6 + 10432) += v10;
  *(v6 + 10400) = (__ROR4__(__ROR4__(v13, 4) ^ 0xA4D6113E, 28) ^ 0x64228BF0) + ((2 * v13) & 0x52873034);
  v17 = ((2 * v16) & 0x34A6C27E) + (v16 ^ 0x9A53613F);
  v18 = v15 & 0x184CE633 ^ 0x2D625938 ^ -(v15 & 0x184CE633 ^ 0x2D625938) ^ ((v15 & 0xE7B319CC) - (v15 & 0x184CE633 ^ 0x2D625938 ^ v15 & 0xE7B319CC));
  *(v6 + 10368) = (v14 ^ 0x1205540) + a4 + ((2 * v14) & 0x240AA80) - 422344589;
  *(v6 + 10352) += v11;
  v19 = (((v15 & 0xE7B319CC) - 2059984400 - ((2 * v15) & 0xA660380)) ^ 0x853721F0 ^ v18) + ((2 * v15) & 0x5AC4B270) + 2 * ((v18 ^ 0x3311884) & v15 & 0xE7B319CC ^ v15 & 0x3311884);
  *(v6 + 10336) = v19;
  *(v6 + 10320) = v17;
  if (v9 == 2)
  {
    v20 = *(v6 + 10304);
    *(a5 + 59) = v20 ^ 0x5D;
    v21 = ((((v20 >> 7) & 0xE9F31E ^ 0x47F18EF5) + 762505108) ^ (((v20 >> 7) & 0xE9F31E ^ 0x236F907E) + 1240267033) ^ (((v20 >> 7) & 0xE9F31E ^ 0x64569E97) + 248903666)) + ((((v20 >> 8) ^ 0xEA55183C) - 995988384) ^ (((v20 >> 8) ^ 0x4DDA5171) + 1663902995) ^ (((v20 >> 8) ^ 0x2A16F0CC) + 81888432)) - 1316808865;
    v22 = (v21 ^ 0xBB4CA7A1) & (2 * (v21 & 0xB34D37B4)) ^ v21 & 0xB34D37B4;
    v23 = ((2 * (v21 ^ 0xDD56A2E1)) ^ 0xDC372AAA) & (v21 ^ 0xDD56A2E1) ^ (2 * (v21 ^ 0xDD56A2E1)) & 0x6E1B9554;
    v24 = v23 ^ 0x22089555;
    v25 = (v23 ^ 0x4C110000) & (4 * v22) ^ v22;
    v26 = ((4 * v24) ^ 0xB86E5554) & v24 ^ (4 * v24) & 0x6E1B9554;
    v27 = (v26 ^ 0x280A1540) & (16 * v25) ^ v25;
    v28 = ((16 * (v26 ^ 0x46118001)) ^ 0xE1B95550) & (v26 ^ 0x46118001) ^ (16 * (v26 ^ 0x46118001)) & 0x6E1B9550;
    v29 = v27 ^ 0x6E1B9555 ^ (v28 ^ 0x60191500) & (v27 << 8);
    v30 = v21 ^ (2 * ((v29 << 16) & 0x6E1B0000 ^ v29 ^ ((v29 << 16) ^ 0x15550000) & (((v28 ^ 0xE028005) << 8) & 0x6E1B0000 ^ 0x640A0000 ^ (((v28 ^ 0xE028005) << 8) ^ 0x1B950000) & (v28 ^ 0xE028005))));
    *(a5 + 24) = v30 ^ 0x4E;
    *(a5 + 63) = BYTE1(v30) ^ 0x4D;
    *(a5 + 28) = BYTE2(v30) ^ 8;
    *a5 = 80;
    *(a5 + 35) = 80;
    return (*(v12 + 11872))(a1, 35, 80, 1967, 75);
  }

  else
  {
    if (v9 != 1)
    {
      v32 = *(v6 + 10248);
      v33 = *(v6 + 10232);
      JUMPOUT(0x1002D56B8);
    }

    v34 = v11 + *(v6 + 10288);
    *(a5 + 54) = 80;
    *(a5 + 42) = 80;
    *a5 = 80;
    *(a5 + 50) = 80;
    *(a5 + 15) = 80;
    *(a5 + 11) = 80;
    *(a5 + 45) = 20560;
    *(a5 + 3) = 80;
    *(a5 + 6) = 20560;
    *(a5 + 14) = 80;
    *(a5 + 49) = 80;
    *(a5 + 18) = 20560;
    *(a5 + 41) = 80;
    *(a5 + 2) = 80;
    *(a5 + 17) = 80;
    *(a5 + 9) = 80;
    *(a5 + 52) = 20560;
    *(a5 + 44) = 80;
    *(a5 + 10) = 80;
    *(a5 + 5) = 80;
    memset((a5 + 21), 80, 18);
    *(a5 + 48) = 80;
    v35 = *(v6 + 10384) + 153098169;
    *(a5 + 40) = 80;
    *(a5 + 1) = 80;
    v36 = *(v6 + 10368);
    memset((a5 + 56), 80, 18);
    v37 = ((2 * v36) & 0x3258EF1A) + (v36 ^ 0x192C778D);
    v38 = ((2 * *(v6 + 10416)) & 0x2FFEDB9C) + (*(v6 + 10416) ^ 0x17FF6DCE);
    v39 = *(v6 + 10400);
    *(a5 + 13) = 80;
    v40 = *(v6 + 10272);
    v40[7] = v37 ^ 0x76;
    v40[3] = (v17 - 63) ^ 0xB0;
    v40[2] = ((v17 - 24895) >> 8) ^ 0x78;
    v40[4] = HIBYTE(v37) ^ 0x69;
    v40[1] = ((v17 + 1705811649) >> 16) ^ 0x85;
    v40[6] = BYTE1(v37) ^ 0x8F;
    v40[11] = (v19 - 56) ^ 0x22;
    v40[5] = BYTE2(v37) ^ 0xF6;
    v40[10] = ((v19 - 22840) >> 8) ^ 0x51;
    v41 = ((-(((2 * v39) & 0xAD78CFCC) + (v39 ^ 0xD6BC67E6)) ^ 0xA2EF9DBC ^ (671339525 - ((((2 * v39) & 0xAD78CFCC) + (v39 ^ 0xD6BC67E6)) ^ 0x2803D405)) ^ (((2 * v39) & 0xAD78CFCC) + (v39 ^ 0xD6BC67E6) - 1561354820 - ((2 * (((2 * v39) & 0xAD78CFCC) + (v39 ^ 0xD6BC67E6))) & 0x45DF3B78))) + 671339525) ^ 0x7686ACB5;
    *v40 = ((v17 + 1705811649) >> 24) ^ 0x5E;
    v40[8] = ((v19 - 761420088) >> 24) ^ 0x41;
    v40[13] = BYTE2(v35) ^ 0x66;
    v40[15] = v35 ^ 0x94;
    v40[9] = ((v19 - 761420088) >> 16) ^ 0x5C;
    v42 = v34 ^ 0x69F68F76;
    v40[21] = (v34 ^ 0x69F68F76u) >> 16;
    v40[22] = (v34 ^ 0x8F76) >> 8;
    v40[14] = BYTE1(v35) ^ 1;
    v40[16] = HIBYTE(v41);
    v40[12] = HIBYTE(v35) ^ 0x29;
    v40[18] = (((-(((2 * v39) & 0xCFCC) + (v39 ^ 0x67E6)) ^ 0x9DBC ^ (-11259 - ((((2 * v39) & 0xCFCC) + (v39 ^ 0x67E6)) ^ 0xD405)) ^ (((2 * v39) & 0xCFCC) + (v39 ^ 0x67E6) - 25156 - ((2 * (((2 * v39) & 0xCFCC) + (v39 ^ 0x67E6))) & 0x3B78))) - 11259) ^ 0xACB5) >> 8;
    v43 = *(v6 + 10432) + 359368773;
    v40[19] = v41;
    v43 ^= 0x29660194u;
    v40[17] = BYTE2(v41);
    v40[24] = (v38 ^ 0x415C5122u) >> 24;
    v40[25] = (v38 ^ 0x415C5122u) >> 16;
    v40[27] = v38 ^ 0x22;
    v44 = (v38 ^ 0x415C5122u) >> 8;
    v40[23] = v42;
    v40[28] = HIBYTE(v43);
    v40[20] = HIBYTE(v42);
    v40[30] = BYTE1(v43);
    v40[31] = v43;
    v40[29] = BYTE2(v43);
    v45 = *(v6 + 13008) - 640;
    v40[26] = v44;
    *(v6 + 10432) = v45;
    *(v6 + 13008) = v45;
    v46 = *(v6 + 10224);
    return (*(v12 + 0x2000))(a1, 247975, 35, 668019017);
  }
}

uint64_t sub_1002D6E34@<X0>(int a1@<W3>, int a2@<W8>)
{
  v6 = (v3 + v4) ^ a2;
  *(v2 + 12504) -= 32;
  *(v2 + 11108) = v6 ^ 0x1FC0FD06;
  return (*(v5 + 8 * ((86 * (v6 == ((v3 - 279795727) & 0x387E7FBF) + 532729289)) ^ (a1 + v3 - 1563))))();
}

uint64_t sub_1002D718C()
{
  *(*(v0 + 10928) - 0x7A7BB171048BC8AFLL) = 943747684;
  *(v0 + 11108) = -27608;
  v1 = *(v0 + 10888);
  return sub_1002E4E24(*(v0 + 6936));
}

uint64_t sub_1002D71EC()
{
  *(v0 + 11512) = 0;
  v1 = *(v0 + 11036);
  return sub_1002D7A84();
}

uint64_t sub_1002D7208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 12344) = 0;
  *(v3 + 12504) -= 128;
  return (*(v4 + 8 * ((11177 * (*(v3 + 12604) == 688134491)) ^ 0x354)))(a1, a2, a3, 3626965076);
}

uint64_t sub_1002D72A4()
{
  v4 = *(v2 + 11112);
  *(v2 + 11088) = *(v4 + 15);
  *(v2 + 12832) = 65;
  v5 = *v4;
  *(v2 + 12504) = v1 - 64;
  v6 = *(v2 + 11587);
  v7 = (v0 - 11) ^ 0xC1;
  *(v2 + 10432) = v6;
  *(v2 + 10416) = v7;
  return (*(v3 + 8 * (((v6 == v7) * (v0 + 7946)) ^ v0)))();
}

uint64_t sub_1002D7318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(v8 + 16);
  *(v7 + 10680) = v10;
  *(v7 + 10612) = 0;
  return (*(v9 + 8 * (((v10 > 0) * (((v6 + 1534) ^ 0x1D9E) + 1524)) ^ (v6 + 1534) ^ 0x191A)))(a1, a2, a3, a4, a5, a6, 3606832813);
}

uint64_t sub_1002D735C()
{
  *(v0 + 12320) = 0;
  v2 = *(v0 + 11152);
  v3 = *(v0 + 11700) + 1;
  v4 = **(v0 + 11816);
  v5 = *(v0 + 10880);
  *(v0 + 11700) = v3;
  return (*(v1 + 8 * ((97 * (v3 < v4)) ^ 0x53F)))();
}

uint64_t sub_1002D73FC()
{
  *(v2 + 12320) = 0;
  *(v2 + 12736) = 0;
  *(v2 + 10948) = 0;
  return (*(v4 + 8 * ((210 * (**(*v3 + 8 * v0) != 0)) ^ v1 ^ 0xD2)))();
}

void sub_1002D74A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10[1394] = &a9;
  v13 = (*(v12 + 8 * (v11 + 12372)))(&a9 - ((((4 * (v11 ^ 0x6DF)) ^ 0xE409080062481871) + v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, -1);
  v14 = (*(v10[1306] + 8 * (v11 + 12372)))(v13, *(&off_1006B4E30 + (v11 ^ 0x90)), -1);
  (*(v10[1306] + 8 * (v11 + 12372)))(v14, *(&off_1006B4E30 + (v11 ^ 0x4D1)) - 8, -1);
  v10[1551] = *(v10[1306] + 8 * v11);
  JUMPOUT(0x1002D7B24);
}

uint64_t sub_1002D7670@<X0>(int a1@<W8>)
{
  v4 = a1 + 187;
  v5 = (*(v3 + 8 * (a1 + 668019204)))();
  v6 = *(v1 + 10448);
  *v2 = 0;
  return (*(v6 + 8 * (((16 * (((*(v1 + 12528) == 0) ^ (v4 - 89)) & 1)) & 0xDF | (32 * (((*(v1 + 12528) == 0) ^ (v4 + 668010663)) & 1))) ^ (v4 + 668017555))))(v5);
}

uint64_t sub_1002D7738()
{
  (*(v5 + 8 * (v2 ^ 0xD82F3759)))();
  v6 = *(v0 + 10448);
  *v1 = 0;
  v7 = v2 ^ 0xD82F07EB;
  **(v0 + 10792) = 1;
  v8 = *(v0 + 11272);
  v9 = *(v0 + 12928);
  *v9 = **(v8 + 48);
  **(v0 + 11664) = *(*(v8 + 48) + 8);
  *(v0 + 12816) = *(v6 + 8 * (v4 + v2 + 59));
  *(v0 + 11776) = v9;
  *(v0 + 11608) = v3;
  v10 = *(v0 + 12504);
  v11 = v0 + 13616 + v10;
  *(v0 + 11064) = v11;
  *(v0 + 10848) = v11 + 16;
  *(v0 + 12504) = (((v2 ^ 0xD82F07EB) + 797) | 0x2051) + v10 - 9141;
  *(v0 + 10664) = 0;
  *(v0 + 12556) = 0;
  *(v0 + 12536) = 0;
  *(v0 + 12448) = 0;
  *(v0 + 12780) = 0;
  *(v0 + 12684) = 0;
  *(v0 + 11716) = 0;
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  *(v0 + 10712) = *(v6 + 8 * v7);
  return sub_10041A724(v12, v0 + 10664);
}

uint64_t sub_1002D7834()
{
  *(v0 + 11512) = 0;
  v1 = *(v0 + 12100);
  return sub_1002D784C();
}

uint64_t sub_1002D784C()
{
  *(v0 + 11312) = v1;
  v3 = (*(v2 + 100576))(*(v0 + 10880));
  return (*(*(v0 + 10448) + 8 * ((3428 * (((2 * v3) & 0xBEAE3DFE) + (v3 ^ 0xDF571EFF) == -547938561)) ^ 0x11B5)))();
}

void sub_1002D79E8(int a1@<W8>)
{
  v4 = *(v1 + 11312);
  (*(v3 + 8 * (a1 ^ 0xD82F3698)))(v2);
  v5 = *(v1 + 10448);
  JUMPOUT(0x1002D7A28);
}

uint64_t sub_1002D7A84()
{
  v5 = *(v1 + 11240);
  *(v1 + 12504) += v0 ^ 0xFFFFFFFF27D0F87CLL;
  return (*(v4 + 8 * ((59 * (v2 == v0 + 1356141007)) ^ (v3 + v0 + 2070))))();
}

uint64_t sub_1002D7BB8(uint64_t a1)
{
  (*(v5 + 8 * (v3 + 12446)))(a1, 0, 2);
  v7 = (*(v1[1306] + 8 * (v3 ^ 0x3160)))(a1);
  *v2 = (v7 - ((2 * v7) & 0xFD09388C) + (v3 ^ 0x6FD) + 2122618276) ^ 0x7E849C46;
  (*(v1[1306] + 8 * (v3 ^ 0x30A2)))(a1, 0, 0);
  v8 = v1[1306];
  v9 = (*v2 ^ 0xDB3FEDFCF79FFE6FLL) + 0x3EF37FC7CFFEF5FALL + ((2 * *v2) & 0x1EF3FFCDELL);
  v1[1528] = *(v8 + 8 * v3);
  v1[1529] = v9;
  v1[1441] = 0;
  v10 = v1[848];
  return (*(v8 + 8 * (((v9 == 0x1A336DC4C79EF469) * (((v3 ^ 0x6FD) - v4 + 668009949) ^ ((v3 ^ 0x6FD) - 8))) ^ v3 ^ 0x6FD)))();
}

void sub_1002D7C9C(uint64_t a1@<X8>)
{
  v3 = *(v1 + 11512);
  *(v1 + 12104) = *(v2 + 8 * a1);
  JUMPOUT(0x10041841CLL);
}

void sub_1002D7CBC()
{
  v1 = *(v0 + 10888);
  v2 = *(v0 + 6936);
  JUMPOUT(0x1002E4D1CLL);
}

uint64_t sub_1002D7CD0()
{
  v5 = *(v0 + 10624);
  *(v0 + 10416) = v5;
  v6 = v3 - 200;
  *(v6 + 32) = v1;
  *(v6 + 8) = v5 + 96;
  *(v6 + 16) = v5 + 88;
  *v6 = 668013188 - 1932028331 * ((((2 * (v3 - 200)) | 0xE19F1360) - (v3 - 200) + 254834256) ^ 0x24B4E9CC) + v2 + 3446;
  v7 = (*(v4 + 8 * (v2 ^ 0xD82F3688)))(v3 - 200);
  v8 = *(v0 + 10448);
  v9 = *(v3 - 176);
  *(v0 + 11108) = v9 ^ 0xF3CFBB78;
  return (*(v8 + 8 * (((v9 != -204489864) * (v2 + 668006546)) ^ (v2 + 668016348))))(v7);
}

uint64_t sub_1002D7DB8()
{
  *(v0 + 10432) = v2;
  v4 = *(v0 + 6936);
  return (*(v3 + 8 * ((28 * (*v2 == ((v1 + 1501) ^ 0x1079))) | (v1 + 2404))))();
}

uint64_t sub_1002D7DFC()
{
  (*(v2 + 8 * (v1 + 9776)))(*(*(v0 + 6936) + 8));
  v3 = *(v0 + 10448);
  *(*(v0 + 6936) + 8) = 0;
  return (*(v3 + 8 * (((**(v0 + 10432) == 233 * (v1 ^ 0xA8C) - 9553) * ((v1 ^ 0xA8C) - 23)) ^ v1)))();
}

uint64_t sub_1002D7E64(uint64_t a1)
{
  v4 = *(v1 + 10736);
  *(v4 + 4) = *(a1 + 96);
  *(v1 + 13496) = v4 + 4;
  *(v4 + 48) = *(a1 + 104);
  *(v1 + 13504) = v4 + 48;
  *(v4 + 56) = *(a1 + 112);
  *(v1 + 13512) = v4 + 56;
  return (*(v3 + 8 * ((*(v1 + 12471) * ((v2 - 2077345154) ^ 0x842E76E1 ^ (v2 - 2077345154) & 0x7BD1BC3F ^ 0x3519)) ^ v2)))();
}

uint64_t sub_1002D7EE8()
{
  v5 = *(v0 + 10744);
  v6 = v3 - 200;
  *(v6 + 8) = *(v0 + 10888);
  *(v6 + 24) = v5;
  *(v6 + 16) = (v1 - 2349) ^ (400289179 * ((v3 - 716173423 - 2 * ((v3 - 200) & 0xD5501059)) ^ 0xACF1E34E));
  (*(v4 + 8 * (v1 + 2095)))(v3 - 200);
  v7 = *(v0 + 10448);
  *(v0 + 11108) = *(v3 - 200) - 1852035317;
  v8 = *(v0 + 6936);
  v9 = ((v1 - 9642) | 2u) - 887;
  v10 = (-1931008275 * (v5 + v9)) ^ ((-1931008275 * (v5 + v9)) >> 16);
  *(v2 + v9 + 8) = *(*(&off_1006B4E30 + v1 - 10136) + (v9 | (16 * ((-1931008275 * v10) >> 24))) - 4) ^ *(v5 + v9) ^ (-19 * v10);
  return (*(v7 + 8 * ((124 * (((v1 - 9642) | 2) == 887)) ^ v1)))(v8, &off_1006B4E30, 2363959021);
}

uint64_t sub_1002D8010@<X0>(int a1@<W8>)
{
  v5 = (a1 + 4233) | 0x820;
  v6 = *(v2 + 10888);
  v7 = **(v1 + 16);
  v8 = 961063711 * ((v3 + 2047766479 - 2 * ((v3 - 200) & 0x7A0E7097)) ^ 0xBFAB988);
  v9 = v3 - 200;
  *(v9 + 16) = **(v1 + 8);
  *(v9 + 24) = v6;
  *v9 = (v7 ^ (((v5 + 137288030) ^ 0x82F2C21) - 450171542)) - v8 + ((((v5 + 137288030) | 0xD000050C) - 232312694) & (2 * v7)) + 1541402624;
  *(v9 + 4) = v8 + v5 - 10194;
  v10 = (*(v4 + 8 * (v5 ^ 0x1872)))(v3 - 200);
  return (*(*(v2 + 10448) + 8 * ((13 * (*(v3 - 192) == 168832651)) ^ v5)))(v10);
}

uint64_t sub_1002D815C()
{
  *(v1 + 8) = v3;
  *(v1 + 16) = (v4 - 8592) ^ (784480913 * v2);
  v7 = (*(v6 + 8 * (v4 + 636)))(v5 - 200);
  return (*(*(v0 + 10448) + 8 * (((*v1 == ((v4 - 668018453) ^ 0xF62B7C38)) * ((v4 + 1814570974) & 0x93D7BD9C ^ 0x1411)) ^ v4)))(v7);
}

uint64_t sub_1002D81F0()
{
  v4 = *(v0 + 6936);
  v5 = (*(v3 + 8 * (v2 ^ 0x24C9)))(*(*(v4 + 8) + 8 * v1));
  v6 = *(v0 + 10448);
  *(*(v4 + 8) + 8 * v1) = 0;
  return (*(v6 + 8 * ((16006 * (((v2 - 2423) ^ 0xFFFFFFFFFFFFDC7ALL) + v1 + ((v2 - 1925274157) & 0x72C16F32) < **(v0 + 10432))) ^ v2)))(v5);
}

uint64_t sub_1002D82BC()
{
  v4 = *(v0 + 10888);
  v5 = v2 - 200;
  *(v5 + 8) = (v1 + 1032899468) ^ (1131370337 * ((((v2 - 200) | 0x71FFCED8) - ((v2 - 200) & 0x71FFCED8)) ^ 0x9E9AA5C0));
  *v5 = v4;
  v6 = (*(v3 + 8 * ((v1 - 668006557) ^ 0xD82F36EC)))(v2 - 200);
  return (*(*(v0 + 10448) + 8 * ((23 * (*(v2 - 188) == 1957526833)) | (v1 + 7295))))(v6);
}

uint64_t sub_1002D8390()
{
  v4 = *(v0 + 6936);
  if ((*v2 - 900) < 2 || *v2 == 1000)
  {
    return (*(v3 + 8 * ((5673 * (v1 + 1 < **(v0 + 10432))) ^ 0xAB7)))(v4);
  }

  *(v0 + 11108) = -27207;
  return sub_1002E4E24(v4);
}

uint64_t sub_1002D88FC()
{
  v2 = v0[1540];
  v0[1513] = *(v1 + 2048);
  v3 = v0[848];
  return sub_1002D411C(0xA94EFu);
}

uint64_t sub_1002D8920()
{
  *(v2 + 10432) = v3;
  v5 = *(v2 + 12320);
  *(v2 + 13240) = v5;
  *(v2 + 13252) = *(v2 + 12736);
  *(v2 + 11588) = 0;
  *(v2 + 12920) = 0;
  return (*(v4 + 8 * ((14 * ((((v0 - v1 - 3542) ^ (v0 - 9982) ^ (v5 == 0)) & 1) == 0)) ^ v0)))();
}

uint64_t sub_1002D8984@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 13276);
  v3 = *(v1 + 13264);
  *(v1 + 10208) = v3 + (v2 - 16);
  v4 = (((v2 + 12) ^ (4 - v2) ^ (-71 - v2) ^ (((-71 - v2) ^ 4) - 1)) ^ (((-71 - v2) ^ 0xE) + 5)) & 0xF;
  v5 = (((v4 ^ 0xC68D3852) - 1482899390) ^ ((v4 ^ 0x57284E14) + 909751816) ^ ((v4 ^ 0x91A57643) - 256602543)) - 1628567595;
  v6 = v5 + v2;
  v7 = 2 * (v2 - 20);
  *(v1 + 10272) = v2;
  v8 = v2 - 1234110094 - (v7 & 0x6CE1F30C);
  *(v1 + 10192) = ((v5 + 20) ^ 0xACAFBF5DEF9FD767) + 0x535040A23ACF646CLL + ((2 * (v5 + 20)) & 0x1DF3FAECELL);
  *(v1 + 10184) = ((v2 - 20) ^ 0xADFECBF7) + 1375810569 + (v7 & 0x5BFD97EE);
  v9 = *(v1 + 13252);
  v10 = *(v1 + 13240);
  v11 = v9 - 20;
  *(v1 + 10176) = v10 + (v9 - 16);
  v12 = (((-106 - v9) ^ (v9 + 12) ^ (v9 + 108)) ^ ((((-106 - v9) ^ 0xFB) + 7) ^ (((-106 - v9) ^ 0xF9) + 5))) & 0xF;
  v13 = (((v12 ^ 0x787146BB) - 1488629360) ^ (v12 - 524720331) ^ ((v12 ^ 0x3687FAA9) - 374084194)) + 550234293;
  v14 = (v13 + v9);
  v15 = 2 * (v9 - 20);
  *(v1 + 10256) = v9;
  v16 = v9 - 1234110094 - (v15 & 0x6CE1F30C);
  *(v1 + 10160) = ((v13 + 20) ^ 0xDEF7FFD7EF9BF5E3) + 0x210800283AD345F0 + ((2 * (v13 + 20)) & 0x1DF37EBC6);
  *(v1 + 10152) = (v11 ^ 0x2FEE6D57) - 804154711 + (v15 & 0x5FDCDAAEu);
  v17 = *(v1 + 13228);
  v18 = *(v1 + 13216);
  *(v1 + 10144) = v18 + (v17 - 16);
  v19 = (((((99 - v17) ^ 0xFD) + 14) ^ (99 - v17)) ^ (((99 - v17) ^ 0xAA) + 11)) & 0xF;
  v20 = (((v19 ^ 0x3B6B16B3) + 1862012568) ^ ((v19 ^ 0xC5DABEA2) - 1873959289) ^ ((v19 ^ 0xFEB1A81E) - 1423527877)) - 1435965504 + v17;
  v21 = 2 * (v17 - 20);
  *(v1 + 10248) = v17;
  v22 = v17 - 1234110094 - (v21 & 0x6CE1F30C);
  *(v1 + 10128) = ((v17 - 20) ^ 0xBFEF7DD7) + 1074823721 + (v21 & 0x7FDEFBAE);
  v23 = *(v1 + 13204);
  v24 = (((-112 - v23) ^ (v23 + 12) ^ (((-112 - v23) ^ 8) + 12)) ^ ((((-112 - v23) ^ 0xAA) + 10) ^ (((-112 - v23) ^ 1) + 3))) & 0xF;
  v25 = (((v24 ^ 0x5AF30328) - 1555924935) ^ ((v24 ^ 0x2FD14291) - 698336894) ^ ((v24 ^ 0x752241B5u) - 1936508250)) + 105809103 + v23;
  v26 = 2 * (v23 - 20);
  v27 = v23 - 1234110094 - (v26 & 0x6CE1F30C);
  *(v1 + 10240) = v6;
  *(v1 + 10112) = v6 - 751357895 - ((2 * v6) & 0xA66E6072);
  *(v1 + 10232) = v14;
  *(v1 + 10104) = v14 - 751357895 - ((2 * v14) & 0xA66E6072);
  *(v1 + 10224) = v20;
  *(v1 + 10096) = v20 - 751357895 - ((2 * v20) & 0xA66E6072);
  *(v1 + 10216) = v25;
  *(v1 + 10088) = v25 - 751357895 - ((2 * v25) & 0xA66E6072);
  v28 = *(v1 + 13192);
  *(v1 + 10288) = v23;
  *(v1 + 10080) = v28 + (v23 - 16);
  *(v1 + 10072) = ((v23 - 20) ^ 0x3DEF795F) - 1039105792 + (v26 & 0x7BDEF2BEu) + 1441;
  *(v1 + 10200) = v8;
  v29 = v8 ^ 0xB670F986;
  *(v1 + 10000) = v29 + v3 - 4;
  *(v1 + 10168) = v16;
  v30 = v16 ^ 0xB670F986;
  *(v1 + 9992) = v30 + v10 - 4;
  *(v1 + 10136) = v22;
  v31 = v22 ^ 0xB670F986;
  *(v1 + 9984) = v31 & 0xFFFFFFF8;
  *(v1 + 9976) = -6078 - (v31 & 0xFFFFFFF8);
  *(v1 + 9968) = v31 + v18 - 4;
  *(v1 + 10120) = v27;
  v32 = v27 ^ 0xB670F986;
  *(v1 + 9960) = v32 + v28 - 4;
  *(v1 + 9952) = v29 & 0xFFFFFFF8;
  *(v1 + 9928) = 8 - (v29 & 0xFFFFFFF8);
  *(v1 + 9944) = v30 & 0xFFFFFFF8;
  *(v1 + 9920) = 8 - (v30 & 0xFFFFFFF8);
  *(v1 + 9936) = v32 & 0xFFFFFFF8;
  *(v1 + 9912) = 8 - (v32 & 0xFFFFFFF8);
  *(v1 + 9840) = -83929122;
  *(v1 + 10352) = v3;
  *(v1 + 10416) = v3 + 4;
  *(v1 + 10336) = v10;
  *(v1 + 10400) = v10 + 4;
  *(v1 + 10320) = v18;
  *(v1 + 10384) = v18 + 4;
  *(v1 + 10304) = v28;
  *(v1 + 10368) = v28 + 4;
  *(v1 + 10032) = v29 & 0xFFFFFFE0;
  *(v1 + 9832) = (v8 ^ 0x86) & 0x1F;
  *(v1 + 9824) = (v8 ^ 0x86) & 0x18;
  *(v1 + 9904) = (v8 ^ 0x86) & 7;
  *(v1 + 10024) = v30 & 0xFFFFFFE0;
  *(v1 + 9816) = (v16 ^ 0x86) & 0x1F;
  *(v1 + 9808) = (v16 ^ 0x86) & 0x18;
  *(v1 + 9896) = (v16 ^ 0x86) & 7;
  *(v1 + 10016) = v31 & 0xFFFFFFE0;
  *(v1 + 9800) = (v22 ^ 0x86) & 0x1F;
  *(v1 + 9792) = (v22 ^ 0x86) & 0x18;
  *(v1 + 9888) = (v22 ^ 0x86) & 7;
  *(v1 + 10008) = v32 & 0xFFFFFFE0;
  *(v1 + 9784) = (v27 ^ 0x86) & 0x1F;
  *(v1 + 9776) = (v27 ^ 0x86) & 0x18;
  *(v1 + 9880) = (v27 ^ 0x86) & 7;
  *(v1 + 10064) = v29;
  *(v1 + 9872) = v29 - 8;
  *(v1 + 10056) = v30;
  *(v1 + 9864) = v30 - 8;
  *(v1 + 10048) = v31;
  *(v1 + 9856) = v31 - 8;
  *(v1 + 10040) = v32;
  *(v1 + 9848) = v32 - 8;
  return sub_1002CCF68(a1);
}

uint64_t sub_1002D8990()
{
  v4 = *(v3 + 8 * ((5501 * v1) ^ (v2 - 668004446)));
  v5 = *(v0 + 6784);
  return v4();
}

uint64_t sub_1002D89E8()
{
  v3 = *(v1 + 12344);
  *(v1 + 13264) = v3;
  *(v1 + 13276) = *(v1 + 10920);
  *(v1 + 11412) = 0;
  *(v1 + 10704) = 0;
  *(v1 + 12568) = 0;
  *(v1 + 12256) = 0;
  *(v1 + 11336) = 0;
  *(v1 + 12744) = 0;
  *(v1 + 10512) = 0;
  *(v1 + 12624) = 0;
  *(v1 + 11864) = 0;
  *(v1 + 10608) = 1909512789;
  *(v1 + 12368) = 0;
  *(v1 + 12340) = 0;
  *(v1 + 11300) = 0;
  *(v1 + 12220) = 0;
  *(v1 + 11656) = 0;
  *(v1 + 13000) = 0;
  *(v1 + 10872) = 0;
  return (*(v2 + 8 * (((v3 == 0) * (v0 + 667996453 + v0 - 668016662)) ^ v0)))();
}

void sub_1002D8AC0()
{
  *(v0 + 12604) = v1;
  v2 = *(v0 + 10824);
  JUMPOUT(0x1002D8AE0);
}

void sub_1002D8AF8()
{
  v3 = v0[1543];
  v0[1513] = *(v0[1306] + 8 * (v1 + v2 + 249));
  JUMPOUT(0x10041841CLL);
}

uint64_t sub_1002D9240()
{
  v3 = (*(v2 + 8 * (v1 ^ 0xD82F3759)))();
  v4 = *(v0 + 10448);
  return sub_1002D925C(v3);
}

uint64_t sub_1002D925C()
{
  v4 = v0[1571];
  v5 = v0[1532];
  v6 = v0[1417];
  v7 = v0[1593];
  v8 = v0[1314];
  v9 = v0[1578];
  v10 = v0[1546];
  return (*(v3 + 8 * ((1960 * (v1 != ((v2 - 11528131) & 0x2880FF3E) + 688126547)) ^ (v2 + 668011543))))(v0[1338]);
}

void sub_1002D92D4()
{
  *(v2 + 10416) = v1;
  *(v2 + 10432) = v0;
  JUMPOUT(0x1002D92E0);
}

void sub_1002D93F8(uint64_t a1)
{
  v11 = *(v3 + 10840);
  v11[1] = a1;
  v11[3] = v5;
  v11[5] = v4;
  v11[7] = v8;
  v11[9] = v7;
  v11[13] = v6;
  v11[11] = v2;
  v11[15] = v1;
  v12 = (*(v10 + 8 * (v9 + 4407)))(128, 0x103004026C18290);
  *(v3 + 10824) = v12;
  (*(v10 + 8 * (v9 ^ 0x2E09u)))(v11, v12, 128);
  *(v3 + 12604) = 688134491;
  *(v3 + 11112) = v12;
  v13 = *(v3 + 6784);
  sub_1002D8AF8();
}

uint64_t sub_1002D94D4()
{
  v5 = (v3[1] + 6 * v1);
  *(v2 + 11539) = (((*v5 << ((3 * (v0 ^ 0xCC)) ^ 0x55)) & 0x8E) + (*v5 ^ ((v0 ^ 0xCC) + 8) ^ 0xE3)) ^ 0x80;
  return (*(v4 + 8 * ((8257 * (*(v3[11] + 16 * v5[2] + 8) == *(v3[13] + 16 * v5[3] + 8))) ^ v0)))();
}

uint64_t sub_1002D9568()
{
  v9 = *v0;
  v10 = *v2;
  v11 = (v4 + 6 * v1);
  v12 = v11[1];
  v13 = *(v7 + 72) + 16 * v11[4];
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = v5 + 16 * v11[5];
  *(v6 + 12712) = *v16;
  *(v6 + 11636) = *(v16 + 8);
  return (*(v8 + 8 * (((v12 == *(v6 + 11495)) * (((v3 - 1350032173) & 0x5077EFDB) + 3501)) ^ v3)))();
}

uint64_t sub_1002D96A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v9 + 8 * (v6 + 668006593));
  *(v7 + 12504) += 96;
  *(v7 + 11808) = 0x52E39BD4572CA21FLL;
  if (v4)
  {
    v11 = v5 == 476382832;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  return (*(v9 + 8 * ((v12 * (v6 - v8 - 2078)) ^ (v6 + 668010764))))(a1, a2, a3, a4, 0x52E39BD4572CA21FLL);
}

uint64_t sub_1002DA960@<X0>(int a1@<W8>)
{
  v7 = v5 + 13616 + v3;
  *v7 = v1;
  *(v7 + 8) = v2;
  *(v7 + 12) = 0;
  v8 = ((*v1 << ((3 * ((v4 + 33) ^ 0x23)) ^ 0x1C)) & 0xEE) + (*v1 ^ 0x77);
  *(v7 + 12) = 1;
  v10 = (v8 - 126) > 0xF8u && -274924194 - a1 + (v8 - 49) + (((v8 - 49) < 0x46u) << 8) == -274924124;
  return (*(v6 + 8 * (v10 | (2 * v10) | (v4 + 801))))();
}

uint64_t sub_1002DAA48(int a1, __n128 a2)
{
  a2.n128_u32[0] = *v2;
  v5 = *v2 < 1.0 && a2.n128_f32[0] >= 0.0;
  return (*(v3 + 8 * ((v5 * (a1 + 668009688)) ^ (a1 + 668010764))))(a2);
}

uint64_t sub_1002DAAF4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = a6 + a2;
  v10 = a2 + 668010764;
  v11 = *(v6 + 4 * v7);
  v13 = v11 < 1.0 && v11 >= 0.0;
  return (*(v8 + 8 * ((v13 * (v9 - 3500)) ^ v10)))();
}

uint64_t sub_1002DB124@<X0>(int a1@<W8>)
{
  v6 = *(v2 + 12792);
  *(v6 + 24) = 5;
  *(v6 + 28) = a1;
  v6 += 24;
  *(v6 + 8) = *(v2 + 12804);
  *(v6 + 16) = 0;
  *(v6 + 24) = v1;
  v7 = v4 - 200;
  *(v7 + 24) = *(v2 + 11856);
  *v7 = (v3 + 136) ^ (1040404627 * ((((v4 - 200) | 0x64084679) - (v4 - 200) + ((v4 - 200) & 0x9BF7B980)) ^ 0xB4E1078B));
  *(v7 + 8) = v6;
  v8 = (*(v5 + 8 * (v3 + 11739)))(v4 - 200);
  v9 = *(v2 + 12504) - 64;
  return (*(*(v2 + 10448) + 8 * ((3186 * (*(v4 - 184) == ((v3 - 668007368) ^ 0xF12B1ED7))) ^ v3)))(v8);
}

uint64_t sub_1002DB1F8@<X0>(uint64_t a1@<X8>)
{
  v8 = v2 + a1 + 13616;
  v2[1563] = (((v3 + 9628) - 3626971252) ^ (v3 - v5 - 852)) + v1;
  (*(v7 + 8 * (v3 + 11756)))(v8, 16);
  v9 = *v8;
  v10 = v2[432];
  *(v10 + 15) = v8[15];
  v11 = v9 + 1808939459 + (~(2 * v9) | 0xFFFFFE7B);
  v12 = v8[1];
  *(v10 + 11) = *(v8 + 11);
  v13 = v8[10];
  *(v10 + 10) = v13;
  v14 = v8[9];
  *(v10 + 9) = v14;
  v15 = v8[8];
  *(v10 + 8) = v15;
  v16 = v8[7];
  *(v10 + 7) = v16;
  v17 = v8[6];
  *(v10 + 6) = v17;
  v18 = v8[5];
  *(v10 + 5) = v18;
  v19 = v8[4];
  *(v10 + 4) = v19;
  v20 = v8[3];
  *(v10 + 3) = v20;
  *(v10 + 1) = v12;
  v21 = v8[2];
  v22 = (((v12 + 2031294 - ((2 * v12) & 0x76)) << 8) + 490752) ^ 0xA2A5D6B0;
  *(v10 + 2) = v21;
  *v10 = v9;
  *(v8 + 2) = 0x22300000006;
  v23 = v8 + 16;
  v24 = ((v21 - ((2 * v21) & 0x188)) << 16) - 339476480;
  *(v8 + 6) = (v24 & 0xBF1B0000 ^ 0xEBE407C3 ^ (v11 & 0x4040024F ^ 0xBD07EA31 ^ v22 & (v11 ^ 0x942DC631)) & (v24 ^ 0x143BFFFF)) + (v20 << 24);
  *(v8 + 8) = 0;
  *(v8 + 9) = (v16 << 24) | (v17 << 16) | (v18 << 8) | v19;
  v25 = (v13 << 16) | (v14 << 8) | v15 | (v8[11] << 24);
  v26 = v25 - 2 * (v25 & 0x286B7A6B ^ v15 & 2) + 0x941901C286B7A69;
  v27 = (((v8[15] - ((2 * v8[15]) & 0xFFC7u) + 3) << 56) - 0x2000000000000000) ^ 0xE300000000000000 | (((((v8[12] - ((2 * v8[12]) & 0xBCu) + 9226635) << 32) - 0x2D00000000) ^ 0x8CC95E00000000) + (v8[13] << 40) + ((((v8[14] - ((2 * v8[14]) & 0x136u) + 10445) << 48) - 0x32000000000000) ^ 0x289B000000000000));
  *(v8 + 5) = (v27 - ((2 * v27) & 0x7E0158ECE742F064) - 0x40FF53898C5E87D0) & 0x2A04987141AE0C40 ^ 0xAD18742AA8DD59A0 ^ ((v27 - ((2 * v27) & 0x7E0158ECE742F064) - 0x40FF53898C5E87D0) ^ 0x40FF53898C5E87CFLL) & (v26 ^ 0xDCBAF792963A89D6);
  v28 = v6 - 200;
  *(v28 + 24) = v2[1482];
  *(v28 + 8) = v23;
  *v28 = v4 ^ (1040404627 * ((((v6 - 200) ^ 0x251B2623 | 0x4AE01844) + ((v6 - 200) ^ 0x4A800040 | 0xB51FE7BB)) ^ 0xBF726790));
  v29 = (*(v2[1306] + 8 * (v3 ^ 0x327B)))(v6 - 200);
  v30 = v2[1306];
  v31 = *(v6 - 184);
  v2[1563] -= 48;
  return (*(v30 + 8 * ((2832 * (v31 == 688134491)) ^ v3)))(v29);
}

uint64_t sub_1002DB5B0()
{
  v3 = *(v0 + 12832);
  v4 = (*(v2 + 8 * (v1 ^ 0x18CF)))(v3, 0x100004077774924);
  v5 = *(v0 + 10448);
  **(v0 + 2088) = v4;
  v6 = (v3 ^ 0xBFFDF2BB) + ((2 * v3) & 0x7FFBE576) + ((v1 - 570444100) & 0xFA2F27DF) + 594081394;
  return (*(v5 + 8 * ((498 * ((((v6 ^ 0x9B9D6DE4) - 537435485) ^ v6 ^ ((v6 ^ 0xC5B05B56) - 2116398063) ^ ((v6 ^ 0x58727974) + 471365171) ^ ((v6 ^ 0xBDCABF7F) - 106909638)) != 3147165881)) ^ v1)))();
}

uint64_t sub_1002DB7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 + v2 - 1 - 31);
  v6 = a1 + v2 - 1;
  *(v6 - 15) = *(a2 + v2 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((994 * (((v3 + 668007804) ^ 0x528) == (v2 & 0xFFFFFFE0))) ^ (v3 + 668015147))))();
}

uint64_t sub_1002DB910()
{
  v3 = *(v0 + 11112);
  *(v0 + 12504) += 64;
  return (*(v2 + 8 * (((((v1 ^ 0xD82F2B20 ^ (v3 == 0)) & 1) == 0) | (4 * (((v1 ^ 0xD82F2B20 ^ (v3 == 0)) & 1) == 0))) ^ (v1 + 668015924))))();
}

uint64_t sub_1002DBC84@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 + 13616 + a1;
  v6 = (*(v4 + 8 * (v3 + 1109)))(v2, v5, 128);
  return (*(*(v1 + 10448) + 8 * (((*(v5 + 80) == 0) * (((v3 + 1261765459) & 0xB4CAD36D) - 875)) | v3)))(v6);
}

uint64_t sub_1002DBD2C@<X0>(int a1@<W8>)
{
  v4 = (a1 + 135) | 0x24A;
  (*(v1 + 8 * (a1 + 11612)))(**(v3 + 104));
  (*(*(v2 + 10448) + 8 * (v4 + 10891)))(*(v3 + 24));
  (*(*(v2 + 10448) + 8 * (v4 + 10891)))(*(v3 + 40));
  (*(*(v2 + 10448) + 8 * (v4 ^ 0x369F)))(*(v3 + 56));
  (*(*(v2 + 10448) + 8 * (v4 + 10891)))(*(v3 + 72));
  (*(*(v2 + 10448) + 8 * (v4 ^ 0x369F)))(*(v3 + 104));
  v5 = (*(*(v2 + 10448) + 8 * (v4 ^ 0x369F)))(*(v3 + 120));
  return (*(*(v2 + 10448) + 8 * (((*(v3 + 96) != 0) * (v4 - 1585)) ^ v4)))(v5);
}

void sub_1002DBE74()
{
  v6 = 860 * (v4 ^ 0x640);
  (*(v0 + 8 * v5))(**(v3 + 88));
  (*(*(v1 + 10448) + 8 * (v6 ^ 0x114D)))(*(v3 + 88));
  (*(*(v1 + 10448) + 8 * (v6 ^ 0x114D)))(*(v3 + 8));
  (*(*(v1 + 10448) + 8 * (v6 + 3901)))(v2);
  v7 = *(v1 + 10448);
  v8 = *(v1 + 12504);
  JUMPOUT(0x1002DBF04);
}

void sub_1002DC1A0(int a1@<W8>)
{
  *(v3 + 16) = a1 - 1;
  v5 = *(v3 + 8);
  v6 = v4 - 200;
  *v6 = 1551518921 * ((-483120109 - ((v4 - 200) | 0xE3342C13) + ((v4 - 200) | 0x1CCBD3EC)) ^ 0x2A0B20EF) + 668006516 + v1 + 1094;
  *(v6 + 8) = v5;
  (*(*(v2 + 10448) + 8 * (v1 + 668019076)))(v4 - 200);
  JUMPOUT(0x1002CCD50);
}

uint64_t sub_1002DC238@<X0>(int a1@<W0>, int a2@<W8>)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = v3;
  return (*(v4 + 8 * (((((a2 == 0) ^ (a1 + 1)) & 1) * ((185 * (a1 ^ 0x29BD)) ^ 0x3C0)) ^ a1)))();
}

uint64_t sub_1002DC2F0()
{
  __asm { FMOV            V0.4S, #1.0 }

  *v0 = 0;
  v0[1] = 0;
  *v1 = _Q0;
  return (*(v5 + 8 * ((103 * (((v3 - v4 + 308) ^ 0x130) == (v2 & 4))) ^ (v3 + 668014624))))();
}

uint64_t sub_1002DC3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFF880 ^ (v4 - 327431504) & 0x13842FFF) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((50 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

void sub_1002DC4B0()
{
  **(v0 + 2096) = v1;
  v2 = *(v0 + 12504);
  JUMPOUT(0x1002DBC30);
}

uint64_t sub_1002DC4C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * ((477 * (v5 == 0)) ^ (v3 + 668009811))))();
}

uint64_t sub_1002DC558@<X0>(int a1@<W8>)
{
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  return (*(v5 + 8 * ((76 * (((a1 == 0) ^ (v4 - 102)) & 1)) ^ v4)))();
}

void sub_1002DC618()
{
  for (i = 0; ; i += 8)
  {
    *(v0 + i) = 0;
  }
}

uint64_t sub_1002DC664()
{
  v6 = 4 * v2;
  *(v0 + v6) = 0;
  *(v1 + v6) = 1065353216;
  return (*(v5 + 8 * ((6921 * (((v4 + 668018353) ^ 0x2E3CLL) + v2 == v3)) ^ (v4 + 668010575))))();
}

void sub_1002DC6C0()
{
  for (i = 0; ; i += 32)
  {
    v2 = (v0 + i);
    *v2 = 0uLL;
    v2[1] = 0uLL;
  }
}

uint64_t sub_1002DC72C@<X0>(int a1@<W8>)
{
  v1[1302] = 0;
  v3 = v1[1563];
  v1[1300] = v1 + v3 + 13616;
  v1[1563] = (((a1 - 5303) | 0x2001u) ^ 0x201FLL) + v3;
  v4 = v1[1395];
  v1[1304] = v4;
  LODWORD(v4) = *(v4 + 40) != 0;
  v1[1393] = 0;
  v1[1450] = 0;
  v1[1496] = 0;
  return (*(v2 + 8 * ((v4 | (2 * v4)) ^ a1)))();
}

uint64_t sub_1002DC7A0()
{
  v5 = (*(v4 + 8 * (v1 ^ 0x1030)))(24, 0x103004013764637);
  v0[1393] = v5;
  v6 = 505507193 * ((2 * ((v3 - 200) & 0x54A8C500) - (v3 - 200) + 727137019) ^ 0x40DCB130);
  v7 = v1 - v6 + 1377019219;
  v8 = v2 - v6 - ((2 * v2) & 0xADCEE8C0) + 1458009184;
  v9 = v3 - 200;
  *v9 = v8;
  *(v9 + 4) = v7;
  v0[1302] = v5;
  *(v9 + 8) = v5;
  (*(v0[1306] + 8 * (v1 ^ 0x112B)))(v3 - 200);
  v10 = v0[1306];
  v11 = *(v0[1304] + 48);
  v12 = *v11;
  v13 = 325024769 * ((~((v3 - 200) | 0xF2B2FFAC57850774) + ((v3 - 200) & 0xF2B2FFAC57850774)) ^ 0xF4359AEFDC1C51A9);
  v14 = v3 - 200;
  *v14 = v13 + v1 + 1844649190;
  *(v14 + 8) = v11 + 2;
  *(v14 + 16) = v13 + (v12 ^ 0x6FEDF72F5DFB77BDLL) + ((v12 << ((v1 + 112) & 0xFC ^ 0x7Du)) & 0xBBF6EF7A) + 0x805B60307516C48;
  *(v14 + 24) = v0[1302];
  v15 = (*(v10 + 8 * (v1 ^ 0x10FE)))(v3 - 200);
  return (*(v0[1306] + 8 * ((55 * (v2 == 1)) ^ v1)))(v15);
}

uint64_t sub_1002DC98C()
{
  v4 = (v1[1547] + 688 * v0);
  v1[1685] = v4;
  v5 = v1[1395] + 8;
  v1[1280] = v5;
  v1[1686] = v5;
  v6 = *v4;
  if ((v6 - 900) < 2 || v6 == 1000)
  {
    return sub_1002DFE18();
  }

  else
  {
    return (*(v3 + 8 * (v2 - 668006480)))();
  }
}