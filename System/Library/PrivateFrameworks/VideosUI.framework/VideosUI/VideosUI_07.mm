uint64_t sub_1E331956C(uint64_t result)
{
  v1 = 1824088897 * ((result + 988125058 - 2 * (result & 0x3AE59782)) ^ 0x628C44E0);
  v2 = *(result + 20) + v1;
  v3 = *(result + 24) + v1;
  v4 = *(result + 32);
  v5 = *(&off_1F5DB1610 + (v2 ^ 0x2C5EF54B)) - 8;
  if (v3 == 1461241532)
  {
    __asm { BRAA            X12, X17 }
  }

  if (v3 == 1461241535)
  {
    __asm { BRAA            X8, X17 }
  }

  if (v3 == 1461241534)
  {
    __asm { BRAA            X12, X17 }
  }

  *result = 16215968;
  return result;
}

uint64_t sub_1E331980C()
{
  LOWORD(STACK[0x9FE]) = v0;
  LODWORD(STACK[0x380]) = v0;
  return (*(STACK[0x400] + 8 * (v1 - 8549)))();
}

uint64_t sub_1E3319828@<X0>(int a1@<W5>, int a2@<W6>, int a3@<W8>)
{
  LODWORD(STACK[0x570]) = a3;
  STACK[0x330] = 0;
  LODWORD(STACK[0x420]) = 0;
  STACK[0x358] = 0;
  STACK[0x320] = 0;
  v9 = STACK[0x6DC];
  LODWORD(STACK[0x540]) = STACK[0x6DC];
  LODWORD(STACK[0x4F8]) = v7 + 2347 * ((a2 - v7 - a1) / 0x92Bu);
  LODWORD(STACK[0x57C]) = -1673081951 * v9;
  v10 = -1673081951 * v9 - 1663319554;
  v11 = (v10 >> 10) ^ 0xA53DC9F5;
  LODWORD(STACK[0x454]) = v11;
  LODWORD(STACK[0x440]) = v10 >> 22;
  LODWORD(STACK[0x4F4]) = v10 >> 21;
  v12 = (v10 >> 21) ^ 0x89B2AFE6;
  LODWORD(STACK[0x460]) = v12;
  v13 = (v10 >> 11) ^ 0xCAD4D7B;
  LODWORD(STACK[0x480]) = v13;
  LODWORD(STACK[0x43C]) = v10 >> 25;
  v14 = (v10 >> 25) ^ 0x9A6CE7FA;
  LODWORD(STACK[0x490]) = v14;
  v15 = HIBYTE(v10) ^ (v10 >> 17) ^ (v10 >> 22) ^ v11 ^ v13 ^ v14 ^ v12;
  v16 = HIWORD(v10) ^ 0x47E63683;
  LODWORD(STACK[0x424]) = v16;
  v17 = (v10 >> 19) ^ 0x99EDDBDB;
  LODWORD(STACK[0x418]) = v17;
  v18 = (v10 >> 12) ^ 0xE1274617;
  LODWORD(STACK[0x41C]) = v18;
  v19 = (v10 >> 14) ^ 0xA7DE8929;
  LODWORD(STACK[0x470]) = v19;
  v20 = v15 ^ v17 ^ v16 ^ v19 ^ v18;
  v21 = (v10 >> 30) | 0x6A82C5B8;
  LODWORD(STACK[0x504]) = v21;
  v22 = (v10 >> 9) ^ 0x6BC298C3;
  LODWORD(STACK[0x458]) = v22;
  v23 = (v10 >> 29) ^ 0x5630615;
  LODWORD(STACK[0x508]) = v23;
  v24 = v21 ^ v23;
  LODWORD(STACK[0x46C]) = v24;
  v25 = v20 ^ v22 ^ v24;
  v26 = (v25 & 0xFAA0CB0D ^ 0x22D0B375) & (v25 & 0xFAA0CB0D ^ 0x27D4B578) ^ v25 & 0xFAA0C900;
  STACK[0x488] = 1053876835 * (((v26 ^ 0x649C3E0C) - 331635539) ^ ((v26 ^ 0x377CB49B) - 1076154820) ^ ((v26 ^ 0x8B90F0EA) + 53963339)) - 1348465114;
  v27 = STACK[0x6CC];
  LODWORD(STACK[0x4F0]) = STACK[0x6CC];
  LODWORD(STACK[0x538]) = v4;
  LODWORD(STACK[0x524]) = v6;
  v28 = -1663319554 - 1673081951 * v27;
  LODWORD(STACK[0x500]) = v28 >> 25;
  v29 = (v28 >> 30) ^ (v28 >> 29) ^ 0x9302F9E6;
  LODWORD(STACK[0x44C]) = v29;
  LODWORD(STACK[0x3E4]) = v28 >> 19;
  LODWORD(STACK[0x560]) = v5;
  LODWORD(STACK[0x42C]) = v28 >> 21;
  v30 = (v28 >> 21) ^ (v28 >> 22);
  LODWORD(STACK[0x4FC]) = v30;
  v31 = v30 ^ (v28 >> 19) ^ v29 ^ (((v28 >> 25) ^ HIBYTE(v28)) - ((2 * ((v28 >> 25) ^ HIBYTE(v28))) & 0x1CC) - 1828521498);
  LOBYTE(v30) = (v31 & 0xF ^ 0xF) + (v31 & 0xF);
  v32 = (v28 >> 14) ^ 0x20D9953A;
  LODWORD(STACK[0x47C]) = v32;
  LODWORD(STACK[0x408]) = HIWORD(v28);
  v33 = (v28 >> 17) ^ (v28 >> 8) ^ HIWORD(v28) ^ v32;
  v34 = (v28 >> 11) ^ 0x6EB7B811;
  v35 = (v28 >> 10) ^ 0x97B5AC22;
  v36 = (v28 >> 12) ^ 0x918BE52F ^ v34;
  LODWORD(STACK[0x404]) = v36;
  v37 = v33 ^ v36 ^ v35;
  v38 = (v28 >> 6) ^ 0xBADF983E;
  v39 = (v28 >> 9) ^ 0x1FA6D29;
  v40 = (v28 >> 5) ^ 0x39D248A4;
  v41 = (v28 >> 7) ^ 0xFFC858EA;
  LODWORD(STACK[0x3F4]) = v41;
  v42 = v37 ^ v39 ^ v41 ^ v38 ^ v40 ^ v31;
  v43 = v42 ^ 0x906FF2D4;
  v44 = (v42 >> 21) ^ 0x28D1537A;
  LODWORD(STACK[0x498]) = v28 << 8;
  LODWORD(STACK[0x4A8]) = v28 << 7;
  v45 = -1673081951 * LODWORD(STACK[0x6C8]) - 1663319554;
  v46 = (8 * v28) ^ (4 * v28);
  LODWORD(STACK[0x4A0]) = v28 << 10;
  v47 = (v28 << 8) ^ (v28 << 24) ^ (v28 << 10) ^ v46 ^ v45 ^ ((v28 << 7) - ((v28 << 8) & 0xC60CC800) - 486120328) ^ (v28 << v30) ^ (4 * (v42 ^ 0x906FF2D4)) ^ (32 * (v42 ^ 0x906FF2D4)) ^ ((v42 ^ 0x906FF2D4) << 11) ^ (4 * v44) ^ (32 * v44) ^ (v44 << 11) ^ 0xE76D1ED0;
  v48 = v47 - ((2 * v47) & 0x88E9F17A);
  v49 = (v28 << 20) ^ 0x5EC5B9BA;
  LODWORD(STACK[0x4E0]) = v49;
  LODWORD(STACK[0x548]) = v28 << 13;
  LODWORD(STACK[0x4E8]) = v28 << 16;
  LODWORD(STACK[0x450]) = v28 << 18;
  LODWORD(STACK[0x53C]) = v3;
  v50 = (v28 << 11) ^ 0xC474F8BD;
  LODWORD(STACK[0x428]) = v50;
  v51 = (v28 << 16) ^ (v28 << 13) ^ (v28 << 18) ^ v50 ^ v49;
  v52 = (v28 << 21) ^ 0x113EF5EC;
  v53 = (v28 << 22) ^ 0x6D51225A;
  LODWORD(STACK[0x3F0]) = v53;
  v54 = (v28 << 23) ^ 0x652A31EE;
  LODWORD(STACK[0x438]) = v52;
  v55 = v51 ^ v52 ^ v53 ^ v54;
  v56 = (v28 << 26) ^ 0x379A59FF;
  v57 = (v28 << 27) ^ 0x540A99F5;
  v58 = (v28 << 25) ^ 0xC44D11FA;
  LODWORD(STACK[0x4B0]) = v58;
  LODWORD(STACK[0x430]) = v56;
  v59 = v55 ^ v58 ^ v56 ^ v57 ^ v43 ^ (v48 - 998967107);
  v60 = v10;
  LODWORD(STACK[0x580]) = 8 * v10;
  LODWORD(STACK[0x3F8]) = 4 * v10;
  v61 = (8 * v10) ^ (4 * v10) ^ 0x3F69D6C0;
  LODWORD(STACK[0x4C0]) = v61;
  v62 = (v10 >> 8) ^ 0xAABEA0E;
  LODWORD(STACK[0x3EC]) = v62;
  v63 = (v10 >> 7) ^ 0x4E15777A;
  LODWORD(STACK[0x3E8]) = v63;
  v64 = (v10 >> 6) ^ 0x33497078;
  LODWORD(STACK[0x3FC]) = v10 >> 5;
  v65 = v62 ^ (v10 >> 5) ^ v63 ^ v64 ^ v25;
  v66 = -1663319554 - 1673081951 * LODWORD(STACK[0x6D8]);
  LODWORD(STACK[0x520]) = v10 << 7;
  v67 = (v10 << 7) ^ 0x99B8248B;
  LODWORD(STACK[0x40C]) = v67;
  LODWORD(STACK[0x410]) = v10 << 10;
  LODWORD(STACK[0x518]) = v10 << 24;
  v68 = (v10 << 11) ^ 0xFE8F9842;
  LODWORD(STACK[0x55C]) = v68;
  v69 = v66 ^ (v10 << 15) ^ (v10 << 8) ^ (v10 << 24) ^ (v10 << 10) ^ v67 ^ v68;
  v70 = (v10 << 13) ^ 0xD1A7B35C;
  LODWORD(STACK[0x590]) = v70;
  v71 = (v10 << 20) ^ 0xDC1B543D;
  LODWORD(STACK[0x588]) = v71;
  LODWORD(STACK[0x4EC]) = v10 << 18;
  v72 = (v10 << 18) ^ 0xE0523382;
  LODWORD(STACK[0x4D0]) = v72;
  v73 = (v10 << 16) ^ 0x8F3DA439;
  LODWORD(STACK[0x58C]) = v73;
  v74 = v69 ^ v70 ^ v73 ^ v72 ^ v71;
  v75 = (v60 << 22) ^ 0x89E7D0B3;
  LODWORD(STACK[0x510]) = v75;
  v76 = (v60 << 25) ^ 0xAA024D8B;
  LODWORD(STACK[0x584]) = v76;
  v77 = (v60 << 26) ^ 0x4AEFFBAC;
  LODWORD(STACK[0x550]) = v77;
  v78 = (v60 << 21) ^ 0x240B5006;
  LODWORD(STACK[0x4C8]) = v78;
  v79 = (v60 << 23) ^ 0xEAE218AC;
  LODWORD(STACK[0x4C4]) = v79;
  v80 = v60;
  v81 = (v60 << 27) ^ 0x5519192F;
  LODWORD(STACK[0x4B8]) = v81;
  v82 = v74 ^ v78 ^ v75 ^ v79 ^ v76 ^ v77 ^ v81 ^ v61 ^ v65 ^ 0x1799BB96 ^ (4 * (v65 ^ 0x1799BB96)) ^ (32 * (v65 ^ 0x1799BB96)) ^ ((v65 ^ 0x1799BB96) << 11);
  LODWORD(STACK[0x4DC]) = v82;
  v65 >>= 21;
  LODWORD(STACK[0x400]) = v65 ^ 0x5FA3F2E6;
  v83 = v59 ^ v44;
  v84 = v83 ^ 0x7A2AD0BE;
  v85 = (v84 & 0x15 ^ 0x686C96AC) & (v84 & 0x15 ^ 0xECFFD6E9) ^ v84 & 0x10;
  v86 = v82 ^ (4 * (v65 ^ 0x5FA3F2E6));
  LODWORD(STACK[0x45C]) = v86;
  v87 = v65 ^ 0x5AA8FD75 ^ v86;
  LODWORD(STACK[0x54C]) = v87;
  v88 = (((v87 & 0x87 ^ 0x13119E82) + 885722542) ^ (v87 & 0x87 | 0x57DA9B30) ^ ((v87 & 0x87 ^ 0x8C938885) - 1421272149)) + (((v87 & 0x87 ^ 0x2454974B) - 756249527) ^ ((v87 & 0x87 ^ 0x291B501) - 198595069) ^ ((v87 & 0x87 ^ 0x26C522CA) - 797099574)) + 1174359052;
  v89 = (((v85 ^ 0x220B4E6B) + 1854242376) ^ ((v85 ^ 0xE49408A2) - 1474676593) ^ ((v85 ^ 0xAEF3D074) - 495067047)) + 969921498;
  LODWORD(STACK[0x414]) = v89 * v88 + 193 * (148 * v88 - v89 + 8 * v89);
  v90 = (16 * v28) ^ (32 * v28) ^ (v28 << 17) ^ v46;
  v91 = v28 >> (((v28 >> 18) & 0xE ^ 0xE) + ((v28 >> 18) & 0xE));
  v92 = v91 - ((2 * v91) & 0x99D392E6) + 1290389875;
  LOBYTE(v73) = -(a1 + v8) - LODWORD(STACK[0x4F8]);
  v93 = (v28 >> 18) ^ 0x6191358D;
  v94 = (v28 >> 13) ^ 0x2F0FBC6A;
  v95 = STACK[0x3E4];
  v96 = (v28 >> 28) ^ (v28 >> 27) ^ (v28 >> 15) ^ (v28 >> 2) ^ LODWORD(STACK[0x3E4]) ^ v93 ^ v94 ^ v34 ^ v35 ^ v39;
  v97 = (v28 >> 4) ^ 0x3955A95A;
  v98 = v96 ^ v38 ^ v40 ^ v97 ^ LODWORD(STACK[0x44C]) ^ (LODWORD(STACK[0x42C]) - ((v28 >> 20) & 0xB58) - 1011350100) ^ v92;
  v99 = (v92 >> 30) ^ (v98 >> 27) ^ (v98 >> 21) ^ 0x3E9F2F56;
  LOBYTE(v40) = ((v90 & 0x9C) - (v90 | 0x63)) * ((v73 & 0x89 ^ 0x89) + (v73 & 0x89));
  v100 = v98 ^ 0x64699072;
  v101 = (v98 ^ 0x106DBC04) << (v40 & 7) << (v40 & 0xF8);
  v102 = v90 - ((2 * v90) & 0x742A5190) + 974465226;
  v103 = -1673081951 * LODWORD(STACK[0x6C0]) - 1663319554;
  LODWORD(STACK[0x44C]) = v28 << 14;
  v104 = LODWORD(STACK[0x548]) ^ (v28 << 30) ^ (v28 << 14) ^ (v28 << 18) ^ v103;
  v105 = LODWORD(STACK[0x428]) ^ (v28 << 19) ^ 0x3B777AC;
  LODWORD(STACK[0x42C]) = v105;
  v106 = v104 ^ v105 ^ (v28 << 21) ^ 0x113EF5EC ^ LODWORD(STACK[0x3F0]) ^ v54 ^ (v28 << 26) ^ 0x379A59FF ^ v57;
  v107 = (v28 << 28) ^ 0x39CC5729;
  LODWORD(STACK[0x428]) = v107;
  LODWORD(STACK[0x3F0]) = v106 ^ v107 ^ v102 ^ v100 ^ (4 * v100) ^ (v100 << 11) ^ v99 ^ v101 ^ (4 * v99) ^ (32 * v99) ^ (v99 << 11);
  v108 = LODWORD(STACK[0x4FC]) ^ (v28 >> 20) ^ (v28 >> 1) ^ LODWORD(STACK[0x500]) ^ v95;
  v109 = v93 ^ LODWORD(STACK[0x408]) ^ LODWORD(STACK[0x47C]) ^ v94 ^ LODWORD(STACK[0x404]) ^ LODWORD(STACK[0x3F4]) ^ v38 ^ v97 ^ (v108 - ((2 * v108) & 0xC3226B1A) + 1636906381);
  LODWORD(STACK[0x408]) = v109 ^ 0xFC9096CB;
  LODWORD(STACK[0x404]) = (v28 >> 31) ^ (v109 >> 27) ^ (v109 >> 21) ^ 0xA42E6C95;
  v110 = v80;
  v111 = 2 * v80;
  LODWORD(STACK[0x4F8]) = 2 * v80;
  v112 = (v80 >> 31) ^ (v80 >> 26) ^ (v80 >> 3);
  v113 = (v112 - ((2 * v112) & 0x15058B70) + 1786955192) ^ LODWORD(STACK[0x504]);
  v114 = v113 - ((2 * v113) & 0xAC60C2A) + 90375701;
  v115 = STACK[0x440];
  v116 = STACK[0x43C];
  v117 = (v80 >> 18) ^ 0x3BBF16E7;
  v118 = (v80 >> 15) ^ 0x90D73CAB;
  v119 = STACK[0x418];
  v120 = STACK[0x424];
  v121 = STACK[0x41C];
  v122 = STACK[0x454];
  v123 = STACK[0x3E8];
  v124 = (v80 >> 4) ^ 0x8ECF9242;
  v125 = LODWORD(STACK[0x440]) ^ LODWORD(STACK[0x43C]) ^ LODWORD(STACK[0x508]) ^ LODWORD(STACK[0x418]) ^ v117 ^ LODWORD(STACK[0x424]) ^ v118 ^ LODWORD(STACK[0x41C]) ^ LODWORD(STACK[0x454]) ^ LODWORD(STACK[0x3EC]) ^ LODWORD(STACK[0x3E8]) ^ v64 ^ v124 ^ v114;
  LODWORD(STACK[0x508]) = v125 ^ 0x3F713E6E;
  v126 = (v125 >> 27) ^ (v125 >> 21);
  LODWORD(STACK[0x504]) = v126 ^ 0x1BF9CEDE;
  LODWORD(STACK[0x500]) = (v126 ^ 0x65B) << (((v126 & 0xF9 ^ ((v126 & 0xF9) + 1) ^ ((v126 & 0xF9) + 5) ^ 3) - ((v126 & 1) == 0) + 1) & 5);
  LODWORD(STACK[0x4FC]) = LODWORD(STACK[0x3F8]) - (STACK[0x580] & 0xEF297360) + 2006235570;
  LODWORD(v101) = ((v80 >> 27) & 0x16 ^ 0x16) + ((v80 >> 27) & 0x16);
  LODWORD(STACK[0x47C]) = (((v80 + 1633416350 - ((2 * v80) & 0xC2B7E93C)) ^ 0x615BF49E) << v101) - ((2 * (((v80 + 1633416350 - ((2 * v80) & 0xC2B7E93C)) ^ 0x615BF49E) << v101)) & 0xE096BBEC) - 263496202;
  v127 = LODWORD(STACK[0x3FC]) ^ (v80 >> 27);
  v128 = (v80 >> 28) ^ (v80 >> 2);
  v129 = STACK[0x460];
  v130 = v128 ^ v127 ^ LODWORD(STACK[0x460]) ^ v119 ^ v117 ^ v118;
  v131 = LODWORD(STACK[0x470]) ^ (v110 >> 13) ^ 0x1AC91FA8;
  v132 = STACK[0x480];
  v133 = v130 ^ v131 ^ LODWORD(STACK[0x480]) ^ v122 ^ LODWORD(STACK[0x458]) ^ v64 ^ v124 ^ LODWORD(STACK[0x46C]);
  LODWORD(STACK[0x46C]) = v133 ^ 0x51D6ABA3;
  LODWORD(STACK[0x470]) = (v133 >> 21) ^ (v133 >> 27) ^ 0x48F31587;
  v134 = (v110 >> 1) ^ (v110 >> 20) ^ ((v115 ^ -v115 ^ (v116 - ((v115 - (STACK[0x4F4] & 0x7F4) - 1704138758) ^ LODWORD(STACK[0x490])))) + v116);
  v135 = v119 ^ v129 ^ v117 ^ v120 ^ v131 ^ v121 ^ v132 ^ v123 ^ v64 ^ v124 ^ v134;
  v136 = (v134 >> 30) | 0x89378F08;
  v137 = v135 ^ 0x9FB90977;
  v138 = v136 ^ (v135 >> 21);
  v139 = LODWORD(STACK[0x57C]) - (v111 & 0xAECEB936) - 196927847;
  v140 = ((LODWORD(STACK[0x540]) << 31) | 0x5D68BE35) ^ (-1673081951 * LODWORD(STACK[0x6D4]) - 1663319554);
  v141 = (v110 << 14) ^ 0xE3544A75;
  LODWORD(STACK[0x57C]) = v141;
  v142 = v138 ^ (v137 >> 27);
  v143 = v140 ^ (v110 << 12) ^ LODWORD(STACK[0x590]) ^ v141 ^ LODWORD(STACK[0x40C]) ^ v139 ^ (32 * v137) ^ (v137 << 11);
  v144 = v137 ^ v142;
  LODWORD(STACK[0x480]) = v144;
  v145 = v143 ^ (4 * v144) ^ (32 * v142) ^ (v142 << 11);
  v146 = LODWORD(STACK[0x410]) ^ 0x420A9569;
  LODWORD(STACK[0x4F4]) = v146;
  v147 = ((v145 ^ 0xC1631BC8) - 2 * ((v145 ^ 0xC1631BC8) & 0x420A956B ^ v145 & 2) + 1107989865) ^ v146;
  LODWORD(STACK[0x460]) = ((v147 - ((2 * v147) & 0xFD1F3084) - 24143806) ^ LODWORD(STACK[0x55C])) - 2 * (((v147 - ((2 * v147) & 0xFD1F3084) - 24143806) ^ LODWORD(STACK[0x55C])) & 0xF3DA43D ^ (v147 - ((2 * v147) & 0xFD1F3084) - 24143806) & 4) - 1891785671;
  LODWORD(STACK[0x3E0]) = (32 * LODWORD(STACK[0x400])) ^ (LODWORD(STACK[0x400]) << 11);
  v148 = (4 * (v83 ^ 0x7A2AD0BE)) ^ 0xB339D24A;
  LODWORD(STACK[0x3E4]) = v148;
  LODWORD(STACK[0x540]) = 8 * (v83 ^ 0x7A2AD0BE);
  v149 = ~(8 * (v83 ^ 0x7A2AD0BE)) & 0x100000;
  v150 = v84 ^ (2 * v84) ^ v148;
  v151 = (v149 & v150) == 0;
  v152 = v150 ^ 0xD54AAD68;
  if (!v151)
  {
    v149 = -v149;
  }

  LODWORD(STACK[0x490]) = v149 + v152;
  v153 = v83 ^ 0x6D8CAF68;
  v154 = (v153 << STACK[0x488]) - ((2 * (v153 << STACK[0x488])) & 0x61819808) - 1329542140;
  LODWORD(STACK[0x488]) = (v154 ^ 0xB0C0CC04) - 2 * ((v154 ^ 0xB0C0CC04) & 0x57B6974E ^ v154 & 0xA) - 675899580;
  v155 = (v59 >> 29) ^ 0x6467451E;
  LODWORD(STACK[0x3D8]) = v155;
  v156 = (v59 >> 30) | 0xA3386AB4;
  v157 = (v59 >> 31) ^ (v59 >> 15) ^ (v59 >> 26) ^ v156 ^ v155;
  v158 = (v59 >> 22) ^ 0xCCAFBD6F;
  v159 = (v59 >> 25) ^ 0x9B45734;
  v160 = (v59 >> 19) ^ 0xF67D4E23;
  LODWORD(STACK[0x3B0]) = v158;
  LODWORD(STACK[0x3BC]) = v160;
  v161 = v157 ^ v158 ^ v159 ^ v160;
  v162 = (v59 >> 12) ^ 0x2AA48479;
  v163 = (v59 >> 18) ^ 0x4E38349E;
  v164 = HIWORD(v59) ^ 0xB8B6540B;
  LODWORD(STACK[0x3D4]) = v164;
  v165 = v83;
  v166 = (v83 >> 6) ^ 0x2B833869;
  v167 = (v83 >> 10) ^ 0x97F037CD;
  LODWORD(STACK[0x3C0]) = v167;
  v168 = (v83 >> 8) ^ 0x32E6261A;
  LODWORD(STACK[0x3C8]) = v168;
  v169 = (v83 >> 4) ^ 0x8AB0E50E;
  v170 = (v83 >> 7) ^ 0x260DCEAB;
  v171 = v161 ^ v163 ^ v164 ^ v162 ^ (v84 >> 3) ^ v167 ^ v168 ^ v170 ^ v166 ^ v169;
  LODWORD(STACK[0x454]) = v171;
  LODWORD(STACK[0x458]) = ((4 * v171) ^ 0x3C20BAB8) - 2 * (((4 * v171) ^ 0x3C20BAB8) & 0x5D67C964 ^ (4 * v171) & 4) + 1567082851;
  v172 = v153 >> ((((v84 & 0x25 ^ 0xCD) + 42) ^ ((v84 & 0x25 ^ 0x66) - 125) ^ ((v84 & 0x25 ^ 0x75) - 110)) - (((v84 & 0x25 ^ 0xD4) - 37) ^ ((v84 & 0x25 ^ 0x24) + 43) ^ ((v84 & 0x25 ^ 0xF4) - 5)) + 6);
  LOBYTE(v164) = LODWORD(STACK[0x414]) + 12 - ((2 * (LODWORD(STACK[0x414]) + 12)) & 0x3F) - 97;
  LODWORD(STACK[0x424]) = v153 << (((v59 >> 26) & 0x99 ^ 0x5B) & 0x18 ^ 0x53 ^ ((v59 >> 26) & 8 | ((v59 >> 26) & 0x99 ^ 0x5B) & 0x52));
  v173 = v153 << (v164 & 0xAA ^ 0x8A) << (v164 & 0x55 ^ 0x15);
  v174 = (v59 >> 21) ^ 0x47E3A47A;
  v175 = (v59 >> 14) ^ 0x5047AF9F;
  v176 = (v59 >> 13) ^ (v59 >> 20) ^ v159 ^ v174 ^ (v59 >> 22) ^ 0xCCAFBD6F ^ v160 ^ v163 ^ v175 ^ v162 ^ (v172 - ((2 * v172) & 0x5D8A6CEC) - 1362807178);
  v177 = (v59 >> 11) ^ 0x8ABBF;
  LODWORD(STACK[0x40C]) = (v84 << 10) ^ 0xE9D86092;
  v178 = (v84 << 7) ^ 0xA5C81FF3;
  v179 = (v84 << 11) ^ 0xDA398A0F;
  v180 = (v84 << 13) ^ 0xD3CC6819;
  v181 = (v84 << 14) ^ 0xAC769D2D;
  LODWORD(STACK[0x400]) = v181;
  LODWORD(STACK[0x3FC]) = (v84 << 16) ^ 0xB6120276;
  v182 = (v84 << 18) ^ 0x5E879EE4;
  LODWORD(STACK[0x3EC]) = v180;
  v183 = ((v165 << 31) | 0x32A3DB03) ^ v84 ^ (v84 << 12) ^ v178 ^ (v84 << 10) ^ 0xE9D86092 ^ v179 ^ v180 ^ v181 ^ (v84 << 16) ^ 0xB6120276 ^ v182;
  v184 = (v84 << 20) ^ 0x7E81914B;
  LODWORD(STACK[0x3F4]) = v184;
  v185 = (v84 << 26) ^ 0x9CC541D;
  v186 = (v84 << 28) ^ 0x613ACC53;
  LODWORD(STACK[0x3F8]) = v186;
  v187 = (v84 << 25) ^ 0xC6DC88A5;
  v188 = v184 ^ (v84 << 21) ^ 0xEC7F36B7;
  LODWORD(STACK[0x3E8]) = v185;
  v189 = v183 ^ v188 ^ v187 ^ v185 ^ v186 ^ v173;
  LODWORD(STACK[0x440]) = v189;
  v190 = ((v177 ^ -v177 ^ ((v176 ^ 0xEE9C5DFF) - ((v177 - ((2 * v177) & 0x66FFC) - 2029832194) ^ 0x699F6A01 ^ v176))) + (v176 ^ 0xEE9C5DFF)) ^ (v84 >> 1);
  v191 = v166 ^ v170 ^ v169 ^ v190;
  v192 = v189 & 0x20000000;
  if ((v189 & 0x20000000 & STACK[0x3F0]) != 0)
  {
    v192 = -v192;
  }

  LODWORD(STACK[0x43C]) = v192 + (LODWORD(STACK[0x3F0]) ^ 0xD5C02140);
  LODWORD(STACK[0x410]) = v191;
  LODWORD(STACK[0x41C]) = v191 ^ 0xA2F10A7E;
  LODWORD(STACK[0x418]) = ((4 * (v191 ^ 0xA2F10A7E)) ^ 0xA6A71D30) - ((2 * ((4 * (v191 ^ 0xA2F10A7E)) ^ 0xA6A71D30)) & 0x53538E98) + 698992460;
  LODWORD(STACK[0x414]) = ((v190 >> 30) | 0x6950768C) ^ (v191 >> 27) ^ (((v191 >> 21) ^ 0x45A) - 2 * (((v191 >> 21) ^ 0x45A) & 0x68D ^ (v191 >> 21) & 1) + 1766880908);
  v193 = v166 ^ v170 ^ LODWORD(STACK[0x3C8]) ^ HIBYTE(v59) ^ (v59 >> 17) ^ (v165 >> 9) ^ (v165 >> 5) ^ LODWORD(STACK[0x3B0]) ^ v156 ^ LODWORD(STACK[0x3D8]) ^ v159 ^ v174 ^ LODWORD(STACK[0x3BC]) ^ LODWORD(STACK[0x3D4]) ^ v175 ^ v162 ^ v177 ^ LODWORD(STACK[0x3C0]);
  v194 = v193 ^ 0xD4A7AF11;
  v195 = (v193 >> 21) ^ 0x23A0322C;
  v196 = STACK[0x45C];
  v197 = (LODWORD(STACK[0x45C]) >> 30) ^ (LODWORD(STACK[0x45C]) >> 29) ^ 0x1920312B;
  v198 = STACK[0x54C];
  v199 = LODWORD(STACK[0x3E0]) ^ LODWORD(STACK[0x54C]);
  v200 = (4 * (v199 ^ 0xC90176A5)) ^ (8 * (v199 ^ 0xC90176A5)) ^ 0x559FA210;
  LODWORD(STACK[0x3E0]) = v200;
  v201 = (v84 << 10) ^ (v84 << 16) ^ LODWORD(STACK[0x540]) ^ v179 ^ (v84 << 13) ^ 0xD3CC6819 ^ LODWORD(STACK[0x3E4]) ^ v178 ^ v182;
  v202 = STACK[0x408];
  v203 = STACK[0x404];
  v204 = v28 ^ (LODWORD(STACK[0x4F0]) << 31) ^ (v28 << 12) ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x6C4])) ^ LODWORD(STACK[0x548]) ^ LODWORD(STACK[0x4A0]) ^ (LODWORD(STACK[0x4A8]) - (STACK[0x498] & 0xD10DB500) + 1753668311) ^ (4 * LODWORD(STACK[0x408])) ^ (32 * LODWORD(STACK[0x408])) ^ (LODWORD(STACK[0x408]) << 11) ^ (4 * LODWORD(STACK[0x404])) ^ (32 * LODWORD(STACK[0x404])) ^ (LODWORD(STACK[0x404]) << 11) ^ (v84 << 27) ^ (v84 << 23) ^ (v84 << 8) ^ (v84 << 15) ^ v201;
  v205 = (v84 << 22) ^ 0xBEA770E1;
  LODWORD(STACK[0x4A8]) = v205;
  v206 = (v84 << 24) ^ 0x745E8DB2;
  LODWORD(STACK[0x4A0]) = v206;
  LODWORD(STACK[0x3F0]) = v195;
  v207 = v204 ^ v188 ^ v205 ^ v206 ^ v187 ^ (v84 << 26) ^ 0x9CC541D ^ (32 * v194) ^ (4 * v194) ^ (v194 << 11) ^ (4 * v195) ^ (32 * v195) ^ (v195 << 11) ^ 0x843890B7;
  v208 = LODWORD(STACK[0x4E8]) ^ LODWORD(STACK[0x44C]) ^ LODWORD(STACK[0x450]) ^ LODWORD(STACK[0x42C]) ^ LODWORD(STACK[0x4E0]) ^ LODWORD(STACK[0x438]) ^ LODWORD(STACK[0x4B0]) ^ LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x428]) ^ v202 ^ v203 ^ v194 ^ (v207 - ((2 * v207) & 0x88E9F17A) - 998967107);
  v209 = ((v199 ^ 0xC90176A5) << 11) ^ 0x6ED83E14;
  LODWORD(STACK[0x430]) = v209;
  v210 = ((v199 ^ 0xC90176A5) << 13) ^ 0xA5D4AE95;
  LODWORD(STACK[0x548]) = v210;
  v211 = ((v199 ^ 0xC90176A5) << 14) ^ 0x9E1D740C;
  v212 = ((v199 ^ 0xC90176A5) << 18) ^ 0xBF1CE46E;
  LODWORD(STACK[0x44C]) = v212;
  v213 = (16 * (v199 ^ 0xC90176A5)) ^ (32 * (v199 ^ 0xC90176A5)) ^ ((v199 ^ 0xC90176A5) << 17) ^ v209 ^ v210 ^ v211 ^ v212;
  v214 = ((v199 ^ 0xC90176A5) << 23) ^ 0x9BB5A4C1;
  LODWORD(STACK[0x498]) = v214;
  v215 = ((v199 ^ 0xC90176A5) << 21) ^ 0x1D1F7204;
  LODWORD(STACK[0x438]) = v215;
  v216 = ((v199 ^ 0xC90176A5) << 19) ^ 0xC56DAD6B;
  v217 = ((v199 ^ 0xC90176A5) << 22) ^ 0x97477DF8;
  LODWORD(STACK[0x450]) = v217;
  v218 = v213 ^ v216 ^ v215 ^ v217 ^ v214 ^ v200;
  v219 = (v199 ^ 0xC90176A5) << 26;
  v220 = -(v218 ^ 0x33736789) ^ v218 ^ ((((v219 ^ 0xA61094F1) - 897248537) ^ ((v219 ^ 0xCC4FB654) - 1596313532) ^ ((v219 ^ 0x5E5F22A5) + 852141235)) - (((v218 ^ 0x33736789 ^ v219 ^ 0xA16BA664) - 1676934215) ^ ((v218 ^ 0x33736789 ^ v219 ^ 0x5CB7496E) + 1641082035) ^ ((v218 ^ 0x33736789 ^ v219 ^ 0xC9DCEF0A) - 189052201)) - 1328406587);
  LODWORD(STACK[0x42C]) = v219 ^ 0x936A79E8;
  LODWORD(STACK[0x4F0]) = (((v219 ^ 0xE18A8E4A) - 1927346082) ^ ((v219 ^ 0xE496A491) - 2013060473) ^ ((v219 ^ 0x311C2ADB) + 1569303757)) + 1770603159 + (((v220 ^ 0xB23D950D) - 1129331243) ^ ((v220 ^ 0x2292DD55) + 738233741) ^ ((v220 ^ 0xA3DC2FD1) - 1387364599));
  v221 = (v199 >> 21) ^ 0xF230BD57;
  v222 = (v199 >> 18) ^ 0xE64C4CD5;
  v223 = (v199 >> 19) ^ 0xF5E2FA4D;
  v224 = v197 ^ v221 ^ v223;
  LODWORD(STACK[0x428]) = v224;
  v225 = (v196 >> 28) ^ (v196 >> 27) ^ (v199 >> 15) ^ (v199 >> 2) ^ v224 ^ v222;
  v226 = (v199 >> 11) ^ 0x38DDBFF7;
  v227 = (v199 >> 14) ^ 0xCE263BFB;
  LODWORD(STACK[0x3E4]) = v227;
  v228 = (v199 >> 10) ^ 0x938773DB;
  LODWORD(STACK[0x408]) = v228;
  v229 = (v199 >> 9) ^ 0x9FCD5435;
  LODWORD(STACK[0x404]) = v229;
  v230 = v227 ^ (v199 >> 13) ^ 0xF80BBFAF;
  v231 = v225 ^ v230 ^ v226 ^ v228 ^ v229;
  v232 = (v199 >> 5) ^ 0xEC0A1B96;
  v233 = (v199 >> 6) ^ 0xA69AECF2;
  v234 = (v199 >> 4) ^ 0xDDC4885;
  v235 = v231 ^ v233 ^ v232 ^ v234;
  LODWORD(STACK[0x4E0]) = v235 ^ 0xAAB98148;
  LODWORD(STACK[0x4E8]) = (v235 >> 21) ^ (v235 >> 27) ^ 0x4BCEEE69;
  v236 = HIWORD(v199) ^ 0x99A663A4;
  v237 = (v196 >> 22) ^ 0x7E012E14;
  v238 = (v199 >> 7) ^ 0xB24303AD;
  v239 = (v199 >> 12) ^ 0xC791AFD7;
  v240 = v237 ^ (v196 >> 25) ^ (v199 >> 1) ^ (v199 >> 20) ^ v222 ^ v236 ^ v221 ^ v223 ^ v230 ^ v239 ^ v226 ^ v238 ^ v234;
  v241 = (v240 >> 27) ^ (LODWORD(STACK[0x4DC]) >> 31);
  v242 = v240 ^ v233;
  v243 = v241 ^ (v242 >> 21);
  LOBYTE(v206) = v110;
  LODWORD(STACK[0x4DC]) = v110 << 17;
  v244 = (-1663319554 - 1673081951 * LODWORD(STACK[0x6D0])) ^ (32 * v110) ^ (16 * v110) ^ (v110 << 28) ^ (v110 << 17) ^ ((v110 << 30) | 0x2EEFD217) ^ LODWORD(STACK[0x57C]);
  v245 = LODWORD(STACK[0x55C]) ^ LODWORD(STACK[0x590]) ^ LODWORD(STACK[0x4D0]);
  v246 = (v110 << 19) ^ 0x43350A54;
  LODWORD(STACK[0x4B4]) = v110;
  v247 = STACK[0x4C8];
  v248 = STACK[0x550];
  v249 = v244 ^ v245 ^ v246 ^ LODWORD(STACK[0x4C8]) ^ LODWORD(STACK[0x4C4]) ^ LODWORD(STACK[0x550]) ^ LODWORD(STACK[0x4B8]) ^ LODWORD(STACK[0x4C0]) ^ LODWORD(STACK[0x46C]) ^ LODWORD(STACK[0x47C]) ^ (4 * LODWORD(STACK[0x46C])) ^ (32 * LODWORD(STACK[0x46C])) ^ (LODWORD(STACK[0x46C]) << 11) ^ LODWORD(STACK[0x470]) ^ (4 * LODWORD(STACK[0x470])) ^ (32 * LODWORD(STACK[0x470])) ^ (LODWORD(STACK[0x470]) << 11);
  v250 = v198;
  v251 = (v198 << 28) | 0xA409DC;
  LODWORD(STACK[0x55C]) = v251;
  v252 = v249 ^ (v198 << 31) ^ v199 ^ 0xC90176A5 ^ v251;
  v253 = ((v199 ^ 0xC90176A5) << 7) ^ 0x77DFC045 ^ ((v199 ^ 0xC90176A5) << 10) ^ 0xF4D5C3B7 ^ LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x548]);
  v254 = STACK[0x44C];
  v255 = v253 ^ v211 ^ LODWORD(STACK[0x44C]) ^ v216;
  v256 = ((v199 ^ 0xC90176A5) << 20) ^ 0x958C2BE7;
  v257 = ((v199 ^ 0xC90176A5) << 25) ^ 0x7CE08D11;
  v258 = STACK[0x438];
  v259 = STACK[0x42C];
  v260 = v252 ^ ((v199 ^ 0xC90176A5) << 16) ^ ((v199 ^ 0xC90176A5) << 12) ^ v255 ^ v256 ^ LODWORD(STACK[0x438]) ^ v257 ^ LODWORD(STACK[0x42C]) ^ v242 ^ 0x1A2CCD4F ^ (4 * (v242 ^ 0x1A2CCD4F)) ^ (32 * (v242 ^ 0x1A2CCD4F));
  LODWORD(STACK[0x4B0]) = v243;
  v261 = v260 ^ (4 * v243) ^ (32 * v243) ^ (v243 << 11) ^ (((v242 << 11) ^ 0x8454000) - ((2 * ((v242 << 11) ^ 0x8454000)) & 0xA8637000) - 734938328) ^ 0x22C53C7;
  LODWORD(STACK[0x548]) = v261 - ((2 * v261) & 0x4DA30F12) - 1496217719;
  v262 = (v196 >> 25) ^ HIBYTE(v196) ^ v237 ^ (v199 >> 17) ^ (v199 >> 8) ^ LODWORD(STACK[0x428]) ^ v236 ^ LODWORD(STACK[0x3E4]) ^ v239 ^ v226 ^ LODWORD(STACK[0x408]) ^ LODWORD(STACK[0x404]) ^ v238 ^ v233 ^ v232;
  v263 = v262 ^ 0xA4D3AB82;
  v264 = (v262 >> 21) ^ 0xB1A31E72;
  v265 = LODWORD(STACK[0x58C]) ^ LODWORD(STACK[0x4EC]) ^ v246 ^ LODWORD(STACK[0x588]) ^ v247 ^ LODWORD(STACK[0x584]) ^ v248;
  v266 = (v206 << 28) | 0xF8350F1;
  LODWORD(STACK[0x4D0]) = v266;
  v267 = LODWORD(STACK[0x480]) ^ v265 ^ v266 ^ LODWORD(STACK[0x460]) ^ (v199 << 16);
  v268 = (v250 << 27) ^ 0xC37B5421;
  LODWORD(STACK[0x4EC]) = v268;
  v269 = v267 ^ v268 ^ ((v199 ^ 0xC90176A5) << 15) ^ ((v199 ^ 0xC90176A5) << 8) ^ ((v199 ^ 0xC90176A5) << 24) ^ v253 ^ v254 ^ v256 ^ v258 ^ LODWORD(STACK[0x450]) ^ LODWORD(STACK[0x498]) ^ v257 ^ v259 ^ LODWORD(STACK[0x3E0]) ^ v263 ^ (4 * v263) ^ (32 * v263) ^ (v263 << 11);
  v270 = (v208 >> 30) ^ 0x2F902F51;
  v271 = (v208 >> 29) ^ 0xC66761C7;
  v272 = (v208 >> 19) ^ 0x47065DEE;
  v273 = (v208 >> 21) ^ 0xA365100B;
  v274 = (v208 >> 11) ^ 0xF0C5BB7;
  v275 = (v208 >> 14) ^ 0x980C776F;
  v276 = v208 ^ LODWORD(STACK[0x3F0]);
  v277 = v276 ^ 0xC2E02C91;
  v278 = (v276 >> 6) ^ 0xCB7C2D73;
  v279 = (v276 >> 10) ^ 0x22EA25D1;
  v280 = (v276 >> 5) ^ 0xA2E96BB6;
  v281 = (v208 >> 28) ^ (v208 >> 27) ^ (v208 >> 18) ^ (v208 >> 15) ^ (v208 >> 13) ^ v270 ^ v271 ^ v273 ^ v272 ^ v275 ^ v274 ^ ((v276 ^ 0xC2E02C91) >> 4) ^ ((v276 ^ 0xC2E02C91) >> 2);
  v282 = (v276 ^ 0xC2E02C91) >> 9;
  v283 = v278 ^ v279 ^ v280 ^ v281 ^ v282;
  v284 = (LODWORD(STACK[0x454]) >> 27) ^ (LODWORD(STACK[0x454]) >> 21);
  v285 = (v84 << 17) ^ (v84 << 6) ^ (v84 << 29) ^ STACK[0x540] & 0xFFEFFFFF ^ LODWORD(STACK[0x400]) ^ LODWORD(STACK[0x3FC]) ^ LODWORD(STACK[0x40C]) ^ LODWORD(STACK[0x3EC]) ^ LODWORD(STACK[0x3F4]) ^ LODWORD(STACK[0x4A8]) ^ LODWORD(STACK[0x4A0]) ^ LODWORD(STACK[0x3E8]) ^ LODWORD(STACK[0x3F8]) ^ LODWORD(STACK[0x424]) ^ LODWORD(STACK[0x490]) ^ LODWORD(STACK[0x454]) ^ LODWORD(STACK[0x488]) ^ (32 * LODWORD(STACK[0x454])) ^ (LODWORD(STACK[0x454]) << 11) ^ v284 ^ (4 * (v284 ^ 0x79)) ^ (32 * (v284 ^ 0x79)) ^ ((v284 ^ 0x79) << 11) ^ LODWORD(STACK[0x458]) ^ (32 * (v276 ^ 0xC2E02C91)) ^ (16 * (v276 ^ 0xC2E02C91)) ^ ((v276 ^ 0xC2E02C91) << 14) ^ ((v276 ^ 0xC2E02C91) << 17) ^ ((v276 ^ 0xC2E02C91) << 19) ^ ((v276 ^ 0xC2E02C91) << 28) ^ (((v276 ^ 0xC2E02C91) << 30) | 0x159D1939);
  LODWORD(STACK[0x4C0]) = v283 ^ 0x39105B9;
  v286 = ((v285 ^ (4 * (v283 ^ 0x39105B9)) ^ 0x4980937F) - ((2 * (v285 ^ (4 * (v283 ^ 0x39105B9)) ^ 0x4980937F)) & 0x3743F030) + 463599640) ^ (32 * (v283 ^ 0x39105B9)) ^ 0x829E3118;
  LODWORD(STACK[0x540]) = v286 - ((2 * v286) & 0x13DDB28E) + 166648135;
  v287 = (v281 >> 27) ^ (v283 >> 21) ^ 0x7AD;
  LODWORD(STACK[0x4A0]) = ((v281 >> 27) & 0xB ^ 3) + ((v281 >> 27) & 0xB ^ 8);
  LODWORD(STACK[0x490]) = v287;
  LODWORD(STACK[0x498]) = v287 - ((2 * v287) & 0x974) + 2090501306;
  v288 = HIWORD(v208) ^ (v208 >> 12) ^ (v208 >> 17) ^ (v208 >> 22) ^ HIBYTE(v208) ^ (v276 >> 8) ^ v273 ^ v272 ^ v275 ^ v274 ^ ((v276 ^ 0xC2E02C91) >> 7) ^ v282 ^ v279 ^ v278 ^ v280 ^ (((v208 >> 25) & 0xFFFFFFC7 ^ v270 ^ v271 ^ 0x14083068) & ((v208 >> 25) & 0x38 ^ 0x7C0D76D3) | ((v208 >> 25) & 0xFFFFFFC7 ^ v270 ^ v271) & 0x420004);
  v289 = v288 ^ 0x315CD033;
  v290 = LODWORD(STACK[0x410]) ^ (LODWORD(STACK[0x41C]) << 11) ^ (32 * LODWORD(STACK[0x41C])) ^ LODWORD(STACK[0x418]) ^ LODWORD(STACK[0x414]) ^ (4 * (LODWORD(STACK[0x414]) ^ 0x11)) ^ (32 * (LODWORD(STACK[0x414]) ^ 0x11)) ^ ((LODWORD(STACK[0x414]) ^ 0x11) << 11) ^ STACK[0x440] & 0xDFFFFFFF ^ LODWORD(STACK[0x43C]) ^ ((v276 ^ 0xC2E02C91) << 8) ^ ((v276 ^ 0xC2E02C91) << 7) ^ ((v276 ^ 0xC2E02C91) << 10) ^ ((v276 ^ 0xC2E02C91) << 15) ^ ((v276 ^ 0xC2E02C91) << 16) ^ ((v276 ^ 0xC2E02C91) << 20) ^ ((v276 ^ 0xC2E02C91) << 24) ^ ((v276 ^ 0xC2E02C91) << 25) ^ (4 * (v288 ^ 0x315CD033)) ^ 0xF59009B9;
  v291 = (32 * (v288 ^ 0x315CD033)) ^ 0xDCDB89C ^ (v290 - ((2 * v290) & 0x8814E4F8) - 1005948292);
  v288 >>= 21;
  v292 = (4 * v288) ^ 0x8E0;
  v293 = (8 * (v276 ^ 0xC2E02C91)) ^ (4 * (v276 ^ 0xC2E02C91)) ^ 0x14457FD8 ^ ((v276 ^ 0xC2E02C91) << 13) ^ ((v276 ^ 0xC2E02C91) << 18) ^ ((v276 ^ 0xC2E02C91) << 21) ^ ((v276 ^ 0xC2E02C91) << 22) ^ ((v276 ^ 0xC2E02C91) << 23) ^ ((v276 ^ 0xC2E02C91) << 26) ^ ((v276 ^ 0xC2E02C91) << 27);
  LODWORD(STACK[0x45C]) = v293;
  v294 = v293 ^ v288 ^ v289 ^ ((v289 ^ v276 ^ 0xC2E02C91 ^ v288) << 11) ^ ((v292 ^ (32 * v288) ^ 0x4700) - 2 * ((v292 ^ (32 * v288) ^ 0x4700) & 0x5A78 ^ (4 * v288) & 0x10) + 173038185) ^ (v291 - ((2 * v291) & 0x4153214C) + 547983526);
  LOBYTE(v288) = (v292 | (4 * v288) ^ 0x1F) & 0x51 & ((v288 & 6 ^ 0xF9) + ~(v288 & 6) + ((v292 | (4 * v288) ^ 0x1F) & 0xB5) + 2);
  v295 = v269 ^ (4 * v264);
  v296 = v295 ^ (32 * v264);
  v297 = (v296 >> 29) ^ 0xBC147A8B;
  v298 = v296 ^ (v264 << 11);
  v299 = v298 ^ v264;
  v300 = v298 ^ v264 ^ 0x7CD6DED4;
  STACK[0x460] = v300;
  STACK[0x4C8] = v300 << ((v288 - ((2 * v288) & 0x80) - 60) & 0x40 ^ 0x40) << ((v288 - ((2 * v288) & 0x80) - 60) & 0x95 ^ 0x84);
  v301 = (v295 >> 30) ^ 0xFC61F19A;
  v302 = (v298 >> 19) ^ 0x36C87D37;
  v303 = (v298 >> 18) ^ 0x9F9B37B9;
  v304 = HIWORD(v298) ^ 0x2493C24C;
  v305 = (v298 >> 25) ^ 0x3970308E ^ (v298 >> 22) ^ 0x5F25E638;
  v306 = (v298 >> 12) ^ 0x64E229D0;
  LODWORD(v300) = ((v298 ^ v264) >> 10) ^ 0xE9BD1B89;
  LODWORD(STACK[0x43C]) = v300;
  v307 = ((v298 ^ v264) >> 8) ^ 0xCD8C2FC5;
  LODWORD(STACK[0x440]) = v307;
  v308 = v298 ^ v264 ^ 0x4CE7645E;
  v309 = v295 >> 31;
  v310 = ((v298 ^ v264) >> 6) ^ 0xB9E9BE2A;
  v311 = ((v298 ^ v264) >> 7) ^ 0xBCC04673;
  v312 = (v295 >> 31) ^ (v298 >> 26) ^ (v308 >> 3) ^ (v308 >> 4);
  v313 = v297 ^ (v298 >> 15) ^ v301 ^ v305 ^ v302 ^ v303 ^ v304 ^ v306 ^ v300 ^ v307 ^ v311 ^ v310 ^ v312;
  LODWORD(STACK[0x480]) = v313 ^ 0xAB327EAB;
  v314 = (v313 >> 21) ^ (v312 >> 27);
  LODWORD(STACK[0x488]) = v314;
  v315 = ((4 * v314) ^ 0x1D4C) - ((2 * ((4 * v314) ^ 0x1D4C)) & 0x16C8);
  v316 = (v308 << 7) ^ 0x509A5ECB;
  v317 = (v308 << 10) ^ 0x15C38527;
  LODWORD(STACK[0x430]) = v317;
  LODWORD(v300) = (v308 << 11) ^ 0x84F9CA4E;
  LODWORD(STACK[0x438]) = v300;
  LODWORD(STACK[0x458]) = v316;
  v318 = v308 ^ (v308 << 12) ^ (v308 << 19) ^ v316 ^ v317 ^ v300;
  v319 = (v308 << 13) ^ 0x3AD67706;
  v320 = (v308 << 16) ^ 0xB1595FCF;
  v321 = (v308 << 18) ^ 0x85BD2F4C;
  v322 = v319 ^ (v308 << 14) ^ 0x1EE3ED11 ^ v320;
  LODWORD(STACK[0x47C]) = v322;
  v323 = v318 ^ v322 ^ v321;
  v324 = (v308 << 20) ^ 0x25851D8A;
  v325 = (v308 << 25) ^ 0xB7EAD00F;
  LODWORD(STACK[0x470]) = v325;
  v326 = (v308 << 21) ^ 0xEFF80D23;
  LODWORD(STACK[0x454]) = v324;
  v327 = v323 ^ v324 ^ v326 ^ v325;
  HIDWORD(v328) = v327 ^ 0x1C1A;
  LODWORD(v328) = v327 ^ 0xE47DC000;
  LODWORD(v300) = (v308 << 26) ^ 0x3E3C01AD;
  LODWORD(STACK[0x450]) = v300;
  HIDWORD(v328) = ((v328 >> 14) - ((2 * (v328 >> 14)) & 0x885A87A6) + 1143817171) ^ (v308 << 12) & 0x3FFFF ^ 0xDC89AF2E;
  LODWORD(v328) = HIDWORD(v328);
  LODWORD(STACK[0x46C]) = v315 - 269849756;
  LODWORD(STACK[0x4C4]) = (v328 >> 18) - ((2 * (v328 >> 18)) & 0x4EAB68D0) + 659928168;
  v329 = (v298 >> 20) ^ (v298 >> 13) ^ (v308 >> 1) ^ (v308 >> 4);
  v330 = (v298 >> 21) ^ 0x94F5F230 ^ v302;
  v331 = (v298 >> 14) ^ 0xD017C3E9;
  v332 = (v298 >> 11) ^ 0x15FF11BA;
  v333 = v305 ^ v330 ^ v303 ^ v304 ^ v331 ^ v306 ^ v332 ^ v311 ^ v310 ^ v329;
  LODWORD(STACK[0x4A8]) = v333 ^ 0x68CBFE1B;
  LODWORD(STACK[0x4B8]) = v309 ^ (v329 >> 27) ^ (v333 >> 21) ^ 0x5CEA8AAB;
  v334 = v301 ^ HIBYTE(v298) ^ v297 ^ v305 ^ v330;
  v335 = (v308 << 22) ^ 0x1F398B31;
  LODWORD(STACK[0x44C]) = v335;
  v336 = STACK[0x460] << (-65 * ((((v299 & 0xDF ^ 8) + 43) ^ ((v299 & 0xDF ^ 0x86) - 91) ^ ((v299 & 0xDF ^ 0x5A) + 121)) + (((v299 & 0xDF ^ 0x6E) - 3) ^ ((v299 & 0xDF ^ 0x22) - 79) ^ ((v299 & 0xDF ^ 0x47) - 42)) + 111) * ((v334 & 0xB9 ^ 0xB8) + (v334 & 0xB9 ^ 1)));
  LODWORD(STACK[0x460]) = (v299 << 31) | 0x1693818E;
  v337 = (v299 >> 9) ^ (v298 >> 17) ^ (v299 >> 5) ^ v304 ^ v331 ^ v306 ^ v332 ^ LODWORD(STACK[0x43C]) ^ LODWORD(STACK[0x440]) ^ v311 ^ v310 ^ v334;
  v338 = (v337 >> 21) ^ 0xB68BBCBC;
  v339 = (4 * v308) ^ 0x16F9CA07;
  v340 = (8 * v308) ^ 0x1FD14EE6;
  v341 = STACK[0x430];
  v342 = v321 ^ v324 ^ v326;
  v343 = (v308 << 24) ^ 0x54E3A228;
  v344 = (LODWORD(STACK[0x4B0]) | (v308 << 15)) ^ (v308 << 8) ^ (v308 << 23) ^ (v308 << 27) ^ v340 ^ v339 ^ v316 ^ LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x438]) ^ v319 ^ v320 ^ v342 ^ v335 ^ v343 ^ v300 ^ LODWORD(STACK[0x548]) ^ v337 ^ 0x918F305E ^ (4 * (v337 ^ 0x918F305E)) ^ (32 * (v337 ^ 0x918F305E)) ^ ((v337 ^ 0x918F305E) << 11) ^ (4 * v338) ^ (32 * v338) ^ (v338 << 11) ^ (v336 - ((2 * v336) & 0x4F55FFA6) - 1481965613);
  v345 = (v294 >> 19) ^ 0xF67 ^ (v294 >> 18) ^ 0x1ECF;
  v346 = HIWORD(v294) ^ 0x7B3E;
  v347 = (v294 >> 12) ^ 0x7B3E3;
  v348 = (v294 >> 7) ^ 0xF67C69;
  v349 = (v294 >> 4) ^ 0x7B3E34C;
  v350 = (v294 >> 6) ^ 0x1ECF8D3;
  v351 = (v294 >> 31) ^ (v294 >> 26) ^ (v294 >> 25) ^ ((v294 ^ 0x4E8136B6) >> 3) ^ ((v294 ^ 0x4E8136B6) >> 8) ^ ((v294 ^ 0x4E8136B6) >> 30) ^ ((v294 ^ 0x4E8136B6) >> 29) ^ ((v294 ^ 0x4E8136B6) >> 22) ^ ((v294 ^ 0x4E8136B6) >> 15) ^ ((v294 ^ 0x7B3E34C0) >> 10) ^ v345 ^ v346 ^ v347 ^ v348 ^ v350 ^ v349;
  LODWORD(v336) = v351 ^ 0x68234C6;
  v352 = ((v351 ^ 0x68234C6) >> 21) ^ (v351 >> 27);
  v353 = (v294 ^ 0x4E8136B6) << 25;
  v354 = (v353 | (32 * v352)) ^ (v352 << 11) ^ 0x21568304 ^ (2 * (v294 ^ 0x4E8136B6)) ^ (4 * (v294 ^ 0x4E8136B6)) ^ (8 * (v294 ^ 0x4E8136B6)) ^ ((v294 ^ 0x4E8136B6) << 6) ^ ((v294 ^ 0x4E8136B6) << 17) ^ ((v294 ^ 0x4E8136B6) << 24) ^ ((v294 ^ 0x4E8136B6) << 29) ^ ((v294 ^ 0x7B3E34C0) << 22) ^ (4 * v336) ^ (32 * v336) ^ (v336 << 11) ^ (4 * v352);
  v355 = v354 - 2 * (v354 & 0x1E41A658 ^ (((2 * (v294 ^ 0xB6)) ^ (4 * (v294 ^ 0xB6)) ^ (8 * (v294 ^ 0xB6)) ^ ((v294 ^ 0xB6) << 6) ^ (4 * v336) ^ (32 * v336)) ^ (4 * v352)) & 8);
  v356 = v294 ^ ((v294 ^ 0x4E8136B6) << 7) ^ ((v294 ^ 0x4E8136B6) << 10) ^ ((v294 ^ 0x4E8136B6) << 13) ^ ((v294 ^ 0x4E8136B6) << 14) ^ ((v294 ^ 0x4E8136B6) << 16) ^ ((v294 ^ 0x4E8136B6) << 20) ^ ((v294 ^ 0x4E8136B6) << 26) ^ ((v294 ^ 0x4E8136B6) << 28) ^ 0x7B323190;
  LODWORD(v336) = v356 ^ v336 ^ v352;
  LODWORD(STACK[0x548]) = v336 ^ (v355 - 1639864752);
  LODWORD(v336) = ((v294 ^ 0x4E8136B6) >> 14) ^ ((v294 ^ 0x4E8136B6) >> 13) ^ ((v294 ^ 0x4E8136B6) >> 21) ^ ((v294 ^ 0x4E8136B6) >> 20) ^ ((v294 ^ 0x4E8136B6) >> 11) ^ ((v294 ^ 0x4E8136B6) >> 1) ^ ((v294 ^ 0x7B3E34C0) >> (((v336 ^ (v355 + 80)) & 0x16 ^ 0x16) + ((v336 ^ (v355 + 80)) & 0x16)));
  v357 = (v294 >> 25) ^ v346 ^ v345 ^ v347 ^ v348 ^ v350 ^ v349 ^ 0x1AD84F14 ^ v336;
  LODWORD(v300) = LODWORD(STACK[0x45C]) ^ LODWORD(STACK[0x4C0]) ^ (4 * LODWORD(STACK[0x490])) ^ ((LODWORD(STACK[0x4C0]) ^ v277) << 11) ^ (32 * LODWORD(STACK[0x490])) ^ (LODWORD(STACK[0x490]) << LODWORD(STACK[0x4A0])) ^ LODWORD(STACK[0x498]) ^ LODWORD(STACK[0x540]) ^ (v294 << 31) ^ ((v294 ^ 0x4E8136B6) << 12) ^ ((v294 ^ 0x4E8136B6) << 11) ^ ((v294 ^ 0x4E8136B6) << 19) ^ ((v294 ^ 0x4E8136B6) << 18) ^ ((v294 ^ 0x4E8136B6) << 21) ^ v353 ^ (4 * v357) ^ (32 * v357) ^ (v357 << 11) ^ 0x28B989D5;
  v358 = v300 - ((2 * v300) & 0x3C834CA0) - 1639864752;
  LODWORD(v336) = (v357 >> 21) ^ (v336 >> 30);
  LODWORD(v300) = v344 ^ v338 ^ 0x74DD74B8;
  LODWORD(STACK[0x4C0]) = 8 * v300;
  LODWORD(STACK[0x4B0]) = 4 * v300;
  v359 = v356 ^ v357;
  v357 >>= 27;
  LODWORD(STACK[0x540]) = v359 ^ v336 ^ v357 ^ (32 * (v336 ^ v357)) ^ (4 * (v336 ^ v357)) ^ ((v336 ^ v357) << 11) ^ v358;
  v360 = 2 * (((8 * v300) ^ 0x2306A968) & ((4 * v300) ^ 0x4EE57C7C) ^ (4 * v300) & 0x3ECC5190);
  LODWORD(STACK[0x4A0]) = 12 * (((v344 ^ v338 ^ 0x38602F7A) + 860005438) ^ ((v344 ^ v338 ^ 0xE803EA) - 1949661010) ^ ((v344 ^ v338 ^ 0x3FEC0737) + 1959693425)) - (((v360 ^ 0x226AE7A3) - 1129357012) ^ ((v360 ^ 0x1A23AFFB) - 2065290892) ^ ((v360 ^ 0x25C1E878) - 1157337359)) - 268592099;
  v361 = ((v344 >> 29) | 0x31698E88) ^ ((v344 >> 30) | 0x31698E8C);
  v362 = (v344 ^ v338 ^ 0x47642BA7) >> ((v357 & 0xFB ^ 0x1B) + (v357 & 0xFB));
  v363 = (v344 >> 18) ^ (v344 >> 28) ^ (v344 >> 15) ^ (v344 >> 21) ^ 0x1D86D ^ (v362 - ((2 * v362) & 0x92) + 73);
  v364 = (v344 >> 11) ^ 0xF80F5B5F;
  v365 = v364 ^ (v344 >> 13) ^ (v300 >> 2) ^ (v300 >> 4) ^ (v363 - 222858566 + (~(2 * v363) | 0x9A911A8D));
  v366 = (v344 >> 14) ^ 0xA0E3FE80;
  v367 = ((v344 ^ v338) >> 10) ^ 0xE474B600;
  v368 = ((v344 ^ v338) >> 6) ^ 0x883480EF;
  v369 = ((v344 ^ v338) >> 5) ^ 0xDE528903;
  v370 = ((v344 ^ v338) >> 9) ^ 0xA06F0863;
  LODWORD(v336) = v366 ^ (v344 >> 19) ^ v368 ^ v369 ^ v367 ^ v370 ^ (v361 - ((2 * v361) & 0xC) - 1467347474) ^ v365;
  v371 = v336 ^ 0x17FEB2B3;
  v372 = (v365 >> 27) ^ (v336 >> 21) ^ 0xBCB7F81;
  LODWORD(v336) = v308 ^ (v308 << 17) ^ (v308 << 6) ^ (v308 << 29);
  v308 <<= 28;
  LODWORD(v336) = v336 ^ v308 ^ v339 ^ v340 ^ LODWORD(STACK[0x458]) ^ v341 ^ LODWORD(STACK[0x47C]) ^ LODWORD(STACK[0x454]) ^ LODWORD(STACK[0x44C]) ^ v343 ^ LODWORD(STACK[0x470]) ^ LODWORD(STACK[0x450]) ^ LODWORD(STACK[0x480]) ^ (4 * LODWORD(STACK[0x480])) ^ (32 * LODWORD(STACK[0x480])) ^ (LODWORD(STACK[0x480]) << 11) ^ LODWORD(STACK[0x488]) ^ (32 * LODWORD(STACK[0x488])) ^ (LODWORD(STACK[0x488]) << 11) ^ LODWORD(STACK[0x46C]) ^ STACK[0x4C8];
  v373 = (v300 << 18) ^ 0x90E2637E;
  v374 = (v300 << 11) ^ 0x6B945B77;
  v375 = (v300 << 13) ^ 0x1BF2CC75;
  v376 = (v300 << 21) ^ 0x3A230930;
  v377 = (v300 << 27) ^ 0x2557C4F6;
  v378 = (v300 << 26) ^ 0x6D79C87D;
  v379 = (v300 << 23) ^ 0xE490B4D9;
  v380 = (v300 << 22) ^ 0xA0A5049B;
  v381 = v336 ^ ((v344 ^ v338) << 30) ^ (v300 << 19) ^ (16 * v300) ^ (32 * v300) ^ (v300 << 14) ^ (v300 << 17) ^ (v300 << 28) ^ v377 ^ v378 ^ v376 ^ v374 ^ v375 ^ v373 ^ v380 ^ v379 ^ LODWORD(STACK[0x4A0]) ^ v371 ^ (4 * v371) ^ (32 * v371) ^ (v371 << 11) ^ v372 ^ (4 * v372) ^ (v372 << 11) ^ (32 * v372);
  v382 = (v344 >> 22) ^ (v344 >> 17) ^ HIWORD(v344) ^ (v344 >> 12) ^ (v344 >> 21) ^ (v344 >> 19) ^ ((v344 ^ v338) >> 8) ^ ((v344 ^ v338) >> 7) ^ v366 ^ v364 ^ v368 ^ v369 ^ ((v344 >> 25) ^ HIBYTE(v344) | 0x448E7500) ^ v367 ^ v370 ^ (v361 - ((2 * v361) & 4) + 1181490442);
  v383 = LODWORD(STACK[0x4B4]) ^ (LODWORD(STACK[0x4B4]) << 29) ^ (LODWORD(STACK[0x4B4]) << 6) ^ LODWORD(STACK[0x4F8]) ^ LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x580]) ^ LODWORD(STACK[0x520]) ^ LODWORD(STACK[0x4DC]) ^ LODWORD(STACK[0x4F4]) ^ LODWORD(STACK[0x590]) ^ LODWORD(STACK[0x57C]) ^ LODWORD(STACK[0x58C]) ^ LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x510]) ^ LODWORD(STACK[0x584]) ^ LODWORD(STACK[0x550]) ^ LODWORD(STACK[0x4D0]) ^ LODWORD(STACK[0x4FC]) ^ LODWORD(STACK[0x508]) ^ (4 * LODWORD(STACK[0x508])) ^ (LODWORD(STACK[0x508]) << 11) ^ (32 * LODWORD(STACK[0x508])) ^ LODWORD(STACK[0x504]) ^ (4 * LODWORD(STACK[0x504])) ^ (LODWORD(STACK[0x504]) << 11) ^ LODWORD(STACK[0x500]) ^ (LODWORD(STACK[0x54C]) << 30) ^ LODWORD(STACK[0x4EC]) ^ LODWORD(STACK[0x55C]) ^ LODWORD(STACK[0x4E0]) ^ (4 * LODWORD(STACK[0x4E0])) ^ (32 * LODWORD(STACK[0x4E0])) ^ (LODWORD(STACK[0x4E0]) << 11) ^ LODWORD(STACK[0x4E8]) ^ (4 * LODWORD(STACK[0x4E8])) ^ (32 * LODWORD(STACK[0x4E8])) ^ (LODWORD(STACK[0x4E8]) << 11) ^ LODWORD(STACK[0x4F0]) ^ LODWORD(STACK[0x460]) ^ v308 ^ LODWORD(STACK[0x4A8]) ^ (4 * LODWORD(STACK[0x4A8])) ^ (32 * LODWORD(STACK[0x4A8])) ^ (LODWORD(STACK[0x4A8]) << 11) ^ LODWORD(STACK[0x4B8]) ^ (4 * LODWORD(STACK[0x4B8])) ^ (32 * LODWORD(STACK[0x4B8])) ^ (LODWORD(STACK[0x4B8]) << 11) ^ LODWORD(STACK[0x4C4]) ^ (v300 << 8) ^ (v300 << 7) ^ (v300 << 10) ^ (v300 << 15) ^ (v300 << 16) ^ (v300 << 20);
  v384 = v383 ^ (v300 << 24) ^ (v300 << 25) ^ LODWORD(STACK[0x4B0]) ^ LODWORD(STACK[0x4C0]) ^ v374 ^ v375 ^ v373 ^ v376 ^ v380 ^ v379 ^ v378 ^ v377;
  LODWORD(v300) = v382 ^ 0x865F5A6E;
  v385 = (v382 >> 21) ^ 0xC1045B25;
  v386 = STACK[0x540];
  v387 = LODWORD(STACK[0x540]) ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x638]));
  LOBYTE(STACK[0xC3A]) = HIBYTE(v387) ^ 0xC0;
  LODWORD(v336) = v300 ^ (4 * v300) ^ (32 * v300) ^ (v300 << 11) ^ v385 ^ (4 * v385) ^ v384;
  v388 = (32 * v385) ^ (v385 << 11) ^ v336;
  v389 = STACK[0x67C];
  LODWORD(v300) = v388 ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x678]));
  LOBYTE(STACK[0xCB4]) = BYTE2(v300) ^ 0xA1;
  LOBYTE(STACK[0xD75]) = BYTE3(v300) ^ 0x71;
  LOBYTE(STACK[0xEFB]) = v300 ^ 0x31;
  LOBYTE(STACK[0xE81]) = BYTE1(v387) ^ 0xC0;
  LOBYTE(STACK[0xBF3]) = BYTE1(v300) ^ 0x2A;
  LOBYTE(STACK[0xDC0]) = v387 ^ 0xC0;
  LOBYTE(STACK[0xF42]) = BYTE2(v387) ^ 0xC0;
  v390 = STACK[0x548];
  LODWORD(v300) = LODWORD(STACK[0x548]) ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x63C]));
  LOBYTE(STACK[0xCFF]) = BYTE3(v300) ^ 0xC0;
  v391 = v390 ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x6B8]));
  LODWORD(STACK[0x31C]) = v391;
  v392 = (v391 & 0x26A ^ 0x26Au) + (v391 & 0x26A);
  v393 = v381;
  v394 = v381 ^ (-1673081951 * v389 - 1663319554);
  v395 = STACK[0x5B0];
  *(v395 + v392) = HIBYTE(v394) ^ 0x30;
  v396 = v393 ^ (-1673081951 * LODWORD(STACK[0x5F4]) - 1663319554);
  v397 = v393;
  LODWORD(STACK[0x4C8]) = v393;
  LOBYTE(v393) = v396;
  LODWORD(STACK[0x590]) = v396;
  LOBYTE(v392) = (v396 & 0xE9 ^ 0x22) & (v396 & 0xE9 ^ 0xA6);
  v398 = STACK[0x64C];
  LOBYTE(v396) = STACK[0x64C] & 0xF9;
  LOBYTE(STACK[0xC3E]) = BYTE2(v300) ^ 0xC0;
  LOBYTE(v392) = ((((v396 ^ 0xE9) - 118) ^ ((v396 ^ 8) + 105) ^ ((v396 ^ 0x18) + 121)) + (v396 ^ ((v396 ^ 0x22) + 95) ^ ((v396 ^ 0x5B) + 40) ^ 0x7F) - 23) & 0xFB ^ v393 & 0x69 ^ v392;
  LOBYTE(STACK[0xD79]) = ((v394 ^ 0x8DC0B159) >> ((v392 ^ 0x57) & 0x6F ^ 0xC) >> ((v392 ^ 0x80) & 0x90)) ^ 0xBD;
  LODWORD(v392) = v386 ^ (-1673081951 * LODWORD(STACK[0x670]) - 1663319554);
  LODWORD(STACK[0x58C]) = v392;
  LOBYTE(STACK[0xF46]) = BYTE1(v300) ^ 0xC0;
  LOBYTE(STACK[0xE85]) = v300 ^ 0xC0;
  LOBYTE(STACK[0xBF7]) = v394 ^ 0xE4;
  v399 = v388;
  LODWORD(v300) = v388 ^ (-1673081951 * LODWORD(STACK[0x680]) - 1663319554);
  LOBYTE(STACK[0xEFF]) = BYTE3(v300) ^ 0x71;
  v400 = v386 ^ (-1673081951 * LODWORD(STACK[0x640]) - 1663319554);
  LOBYTE(STACK[0xD03]) = BYTE2(v400) ^ 0xC0;
  LOBYTE(STACK[0xD7D]) = BYTE1(v300) ^ 0x2A;
  LOBYTE(STACK[0xDC4]) = (v400 >> ((v392 & 0x18 ^ 0x18) + (v392 & 0x18))) ^ 0xC0;
  LOBYTE(STACK[0xC42]) = BYTE1(v400) ^ 0xC0;
  LOBYTE(STACK[0xCBC]) = v300 ^ 0x31;
  LOBYTE(STACK[0xE3E]) = BYTE2(v300) ^ 0xA1;
  LOBYTE(STACK[0xCB8]) = BYTE1(v394) ^ 0xC;
  LOBYTE(STACK[0xF4A]) = v400 ^ 0xC0;
  LODWORD(v300) = v397 ^ (-1673081951 * LODWORD(STACK[0x684]) - 1663319554);
  LOBYTE(STACK[0xF03]) = BYTE2(v300) ^ 0x7D;
  LOBYTE(STACK[0xBFB]) = BYTE3(v300) ^ 0x30;
  LODWORD(v392) = v390 ^ (-1673081951 * LODWORD(STACK[0x644]) - 1663319554);
  LOBYTE(STACK[0xE89]) = BYTE3(v392) ^ 0xC0;
  LOBYTE(STACK[0xDC8]) = BYTE2(v392) ^ 0xC0;
  LOBYTE(STACK[0xC46]) = v392 ^ 0xC0;
  LOBYTE(STACK[0xD07]) = BYTE1(v392) ^ 0xC0;
  LOBYTE(STACK[0xD81]) = v300 ^ 0xE4;
  LOBYTE(STACK[0xE42]) = BYTE1(v300) ^ 0xC;
  v401 = STACK[0x68C];
  LODWORD(v392) = v388 ^ (-1673081951 * LODWORD(STACK[0x688]) - 1663319554);
  LODWORD(STACK[0x504]) = v388;
  LODWORD(STACK[0x508]) = v392;
  LOBYTE(STACK[0xCC0]) = BYTE3(v392) ^ 0x71;
  v402 = v386 ^ (-1673081951 * LODWORD(STACK[0x648]) - 1663319554);
  LODWORD(STACK[0x510]) = v402;
  LOBYTE(STACK[0xF4E]) = HIBYTE(v402) ^ 0xC0;
  LOBYTE(STACK[0xDCC]) = BYTE1(v402) ^ 0xC0;
  LOBYTE(STACK[0xE8D]) = BYTE2(v402) ^ 0xC0;
  LOBYTE(STACK[0xBFF]) = BYTE2(v392) ^ 0xA1;
  v403 = -1673081951 * LODWORD(STACK[0x6B4]);
  LODWORD(STACK[0x520]) = v403;
  v404 = (1663319553 - v403) & 0xB8CD2E76;
  v403 -= 1663319554;
  LODWORD(STACK[0x518]) = v403;
  *(v395 + (((v394 & 0xB4690269 ^ 0x148E1DFD) + 1613405991) ^ ((v394 & 0xB4690269 ^ 0xBE49409E) - 890387898) ^ ((v394 & 0xB4690269 ^ 0x2E875D2A) + 1512300530)) - (v404 + (v403 & 0xB8CD2E76)) + (((v394 & 0xB4690269 ^ 0x53CCD53F) + 889869148) ^ ((v394 & 0xB4690269 ^ 0x1DB7B067) + 2071016964) ^ ((v394 & 0xB4690269 ^ 0x7E526778) + 412410141)) - 1131403156) = BYTE1(v392) ^ 0x2A;
  v405 = v399 ^ (-1673081951 * LODWORD(STACK[0x6B0]) - 1663319554);
  LODWORD(STACK[0x57C]) = v405;
  v406 = (v405 & 0xF4BA7BC1 ^ 0x7BC55FC8) & (v405 & 0xF4BA7BC1 ^ 0xCF5D978C) ^ v405 & 0x40223381;
  v407 = STACK[0x5C4];
  LODWORD(v392) = (STACK[0x5C4] & 0x7C95E618 ^ 0x41EAC976) & (STACK[0x5C4] & 0x7C95E618 | 0x36A19E7) ^ STACK[0x5C4] & 0x3C152608;
  LODWORD(v392) = (((v392 ^ 0xA68EDAC2) - 388605924) ^ ((v392 ^ 0x82386C64) - 866062658) ^ ((v392 ^ 0x594959D8) + 387046146)) - 411278199;
  v408 = (((v406 ^ 0x17AB991E) - 1392477324) ^ ((v406 ^ 0x5B37CB6) - 1088905508) ^ ((v406 ^ 0xADE789E1) + 390884237)) + 1739837108;
  LODWORD(STACK[0x4F4]) = v408 * v392 + 2105723399 * (1307945977 * v408 - 1650289183 * v392);
  LODWORD(STACK[0x55C]) = (LODWORD(STACK[0x5A8]) ^ 0xEB709517) + LODWORD(STACK[0x528]);
  v409 = STACK[0x61C];
  LODWORD(v392) = -1673081951 * LODWORD(STACK[0x618]);
  LODWORD(STACK[0x580]) = v392 - 1663319554;
  LODWORD(v300) = ((1663319553 - v392) & 0x9CC3C17E) + ((v392 - 1663319554) & 0x9CC3C17E);
  LODWORD(v300) = (v384 & 0x8C884000 ^ 0xBFF9478B ^ (v384 & 0x8C984184 ^ 0xC984BEFC) & (v384 & 0x8C984184 ^ 0xEBB4BF79)) & (v300 ^ 0xFEFFFFFF) ^ v300 & 0x5024388;
  LODWORD(STACK[0x4D0]) = (((v300 ^ 0xAE124E36) - 440824957) ^ ((v300 ^ 0x8156F32C) - 889375079) ^ ((v300 ^ 0xD5A1056D) - 1643462438)) - 1673081951 * LODWORD(STACK[0x5BC]) + 1320256060;
  LODWORD(STACK[0x550]) = (-1673081951 * v409 - 1663319554) ^ 0x58E35B51;
  LODWORD(STACK[0x588]) = (-1673081951 * LODWORD(STACK[0x5DC]) - 1663319554) ^ 0x51101A2A;
  LODWORD(STACK[0x584]) = (-1673081951 * LODWORD(STACK[0x5E4]) - 1663319554) ^ 0xDDE2CCDA;
  v410 = STACK[0x620];
  LODWORD(STACK[0x54C]) = (-1673081951 * LODWORD(STACK[0x624]) - 1663319554) ^ 0xD4118DA1;
  LODWORD(v300) = (v336 & 0x1C9F1C91 ^ 0x7217FF5A) & (v336 & 0x1C9F1C91 ^ 0x6E7CFBEE) ^ v336 & 0x941801;
  LODWORD(STACK[0x4DC]) = (((v300 ^ 0x1B8A7B07) - 1744937631) ^ ((v300 ^ 0xA10E277) - 2040216559) ^ ((v300 ^ 0xEF55A3C4) + 1663141284)) - 1673081951 * LODWORD(STACK[0x62C]) - 1924865236;
  v411 = STACK[0x634];
  v412 = 948803394 * LODWORD(STACK[0x630]) - 270966607;
  LODWORD(v300) = -1673081951 * LODWORD(STACK[0x630]) - 1144431830;
  LODWORD(v392) = (v300 ^ 0x64A42694) & (2 * (v300 & 0x4436A4D6)) ^ v300 & 0x4436A4D6;
  LODWORD(v336) = ((2 * (v300 ^ 0x6CA96E10)) ^ 0x513F958C) & (v300 ^ 0x6CA96E10) ^ (2 * (v300 ^ 0x6CA96E10)) & 0x289FCAC6;
  LODWORD(v392) = (v336 ^ 0x1F8080) & (4 * v392) ^ v392;
  LODWORD(v336) = ((4 * (v336 ^ 0x28804A42)) ^ 0xA27F2B18) & (v336 ^ 0x28804A42) ^ (4 * (v336 ^ 0x28804A42)) & 0x289FCAC4;
  LODWORD(v392) = (v336 ^ 0x201F0A00) & (16 * v392) ^ v392;
  LODWORD(v336) = ((16 * (v336 ^ 0x880C0C6)) ^ 0x89FCAC60) & (v336 ^ 0x880C0C6) ^ (16 * (v336 ^ 0x880C0C6)) & 0x289FCAC0;
  LODWORD(v392) = v392 ^ 0x289FCAC6 ^ (v336 ^ 0x89C8800) & (v392 << 8);
  LODWORD(v300) = v300 ^ (2 * ((v392 << 16) & 0x289F0000 ^ v392 ^ ((v392 << 16) ^ 0x4AC60000) & (((v336 ^ 0x20034286) << 8) & 0x289F0000 ^ 0x20150000 ^ (((v336 ^ 0x20034286) << 8) ^ 0x1FCA0000) & (v336 ^ 0x20034286))));
  LODWORD(v392) = (v412 ^ 0x5A69F2F) & (2 * (v412 & 0x10269F4F)) ^ v412 & 0x10269F4F;
  LODWORD(v336) = (2 * (v412 ^ 0x25A79BA9)) & 0x358104E4 ^ 0x14810422 ^ ((2 * (v412 ^ 0x25A79BA9)) ^ 0x6B0209CC) & (v412 ^ 0x25A79BA9);
  LODWORD(v392) = (4 * v392) & v336 ^ v392 ^ ((4 * v392) & 0x1800464 | 0x14000080);
  LODWORD(v336) = (4 * v336) & 0x358104E4 ^ 0x21810466 ^ ((4 * v336) ^ 0xD6041398) & v336;
  LODWORD(v392) = v392 ^ (16 * v392) & 0x358104E0 ^ ((16 * v392) ^ 0x40000800) & v336 ^ 0x21810466;
  LODWORD(v336) = ((16 * v336) ^ 0x58104E60) & v336 ^ (16 * v336) & 0x358104E0;
  LODWORD(v392) = (v392 << 8) & 0x35810400 ^ v392 ^ ((v392 << 8) ^ 0x8104E600) & (v336 ^ 0x25810086);
  v413 = (v412 ^ (2 * ((v392 << 16) & 0x14810000 ^ v392 ^ ((v392 << 16) ^ 0xC20000) & ((v336 ^ 0x10000086) & ((v336 ^ 0x25810086) << 8) ^ 0x14810000)))) & 0x39B783FC;
  LODWORD(STACK[0x4C4]) = (((v300 ^ 0x26372921) + 356570544) ^ ((v300 ^ 0xC28A6666) - 235037975) ^ ((v300 ^ 0x7C63BFE3) + 1326728046)) + (((v413 ^ 0xE6E45B90) - 604818679) ^ ((v413 ^ 0xB692329B) - 1954194940) ^ ((v413 ^ 0x6852EB8B) + 1430618900)) + 1327696316;
  LODWORD(v300) = -1673081951 * LODWORD(STACK[0x65C]);
  LODWORD(STACK[0x4A8]) = v300 - 1663319554;
  LODWORD(v300) = (((v300 - 1663319554) & 0xEEAFEF3) + ((52706817 - v300) & 0xEEAFEF3)) & 0x1CFFFDF7;
  v414 = ((v300 ^ 0xE180C8CB) + 161091222) ^ ((v300 ^ 0x83A20455) + 1807270412) ^ ((v300 ^ 0xDEC0E6F) - 436811726);
  LODWORD(STACK[0x498]) = -1663319554 - 1673081951 * LODWORD(STACK[0x5B8]);
  LODWORD(STACK[0x528]) = -1663319554 - 1673081951 * LODWORD(STACK[0x5D8]);
  LODWORD(v392) = STACK[0x5FC];
  LODWORD(STACK[0x47C]) = -1663319554 - 1673081951 * LODWORD(STACK[0x5F8]);
  LODWORD(STACK[0x490]) = -1663319554 - 1673081951 * LODWORD(STACK[0x5C0]);
  LODWORD(STACK[0x500]) = -1663319554 - 1673081951 * LODWORD(STACK[0x5E0]);
  LODWORD(v336) = STACK[0x604];
  LODWORD(STACK[0x470]) = -1663319554 - 1673081951 * LODWORD(STACK[0x600]);
  v415 = -1663319554 - 1673081951 * v392;
  LODWORD(STACK[0x488]) = -1663319554 - 1673081951 * v407;
  LODWORD(STACK[0x4E0]) = -1663319554 - 1673081951 * v410;
  v416 = -1663319554 - 1673081951 * v336;
  v417 = STACK[0x5EC];
  LODWORD(STACK[0x4FC]) = -1663319554 - 1673081951 * LODWORD(STACK[0x5E8]);
  LODWORD(STACK[0x480]) = -1663319554 - 1673081951 * LODWORD(STACK[0x5C8]);
  LODWORD(STACK[0x4E8]) = -1663319554 - 1673081951 * LODWORD(STACK[0x628]);
  LODWORD(v392) = STACK[0x60C];
  v418 = -1663319554 - 1673081951 * LODWORD(STACK[0x608]);
  LODWORD(STACK[0x4F8]) = -1663319554 - 1673081951 * v417;
  v419 = -1663319554 - 1673081951 * LODWORD(STACK[0x5CC]);
  v420 = -1663319554 - 1673081951 * v392;
  LODWORD(v392) = STACK[0x5D4];
  v421 = -1663319554 - 1673081951 * LODWORD(STACK[0x5D0]);
  LODWORD(STACK[0x4F0]) = -1663319554 - 1673081951 * LODWORD(STACK[0x5F0]);
  v422 = -1663319554 - 1673081951 * v392;
  v423 = -1663319554 - 1673081951 * LODWORD(STACK[0x610]);
  v424 = -1663319554 - 1673081951 * v411;
  v425 = -1663319554 - 1673081951 * LODWORD(STACK[0x614]);
  LODWORD(STACK[0x4EC]) = -1663319554 - 1673081951 * LODWORD(STACK[0x6BC]);
  v426 = -1663319554 - 1673081951 * v398;
  v427 = -1663319554 - 1673081951 * v401;
  v428 = -1663319554 - 1673081951 * LODWORD(STACK[0x650]);
  v429 = -1663319554 - 1673081951 * LODWORD(STACK[0x690]);
  v430 = -1663319554 - 1673081951 * LODWORD(STACK[0x654]);
  LODWORD(STACK[0x4A0]) = -1663319554 - 1673081951 * LODWORD(STACK[0x694]);
  v431 = -1663319554 - 1673081951 * LODWORD(STACK[0x658]);
  v432 = STACK[0x69C];
  v433 = -1663319554 - 1673081951 * LODWORD(STACK[0x698]);
  v434 = -1663319554 - 1673081951 * LODWORD(STACK[0x660]);
  LODWORD(v392) = -1663319554 - 1673081951 * LODWORD(STACK[0x6A0]);
  v435 = -1663319554 - 1673081951 * LODWORD(STACK[0x664]);
  LODWORD(STACK[0x4B4]) = -1663319554 - 1673081951 * LODWORD(STACK[0x6A4]);
  LODWORD(v300) = -1663319554 - 1673081951 * LODWORD(STACK[0x6A8]);
  LODWORD(v395) = -1663319554 - 1673081951 * LODWORD(STACK[0x66C]);
  LODWORD(v336) = -1663319554 - 1673081951 * LODWORD(STACK[0x668]);
  LODWORD(STACK[0x4B8]) = -1663319554 - 1673081951 * LODWORD(STACK[0x6AC]);
  v436 = -1663319554 - 1673081951 * LODWORD(STACK[0x674]);
  LODWORD(STACK[0x4B0]) = -1673081951 * v432 - v414 - 2016148304;
  v437 = STACK[0x504];
  v438 = LODWORD(STACK[0x504]) ^ 0x482F67AE;
  LODWORD(STACK[0x4C0]) = LODWORD(STACK[0x4DC]) ^ LODWORD(STACK[0x504]);
  LODWORD(STACK[0x4DC]) = v437 ^ LODWORD(STACK[0x4C4]);
  LODWORD(STACK[0x4C4]) = v437 ^ v424;
  v439 = v437 ^ v429;
  v440 = v437 ^ v433;
  v441 = v437 ^ v392;
  LODWORD(v392) = v437 ^ v300;
  v442 = STACK[0x540];
  LODWORD(STACK[0x318]) = LODWORD(STACK[0x540]) ^ LODWORD(STACK[0x47C]);
  LODWORD(STACK[0x314]) = v442 ^ LODWORD(STACK[0x470]);
  LODWORD(STACK[0x504]) = v442 ^ v415;
  LODWORD(STACK[0x310]) = v442 ^ v416;
  v443 = v442 ^ v418;
  LODWORD(STACK[0x308]) = v442 ^ v420;
  LODWORD(STACK[0x300]) = v442 ^ v423;
  LODWORD(STACK[0x2FC]) = v442 ^ v425;
  v444 = v442 ^ v431;
  v445 = v442 ^ v428;
  v446 = v442 ^ v434;
  v447 = v442 ^ v336;
  LODWORD(v336) = STACK[0x548];
  LODWORD(STACK[0x2F8]) = LODWORD(STACK[0x548]) ^ LODWORD(STACK[0x498]);
  LODWORD(STACK[0x2F4]) = v336 ^ LODWORD(STACK[0x490]);
  LODWORD(STACK[0x2F0]) = LODWORD(STACK[0x4D0]) ^ v336;
  LODWORD(STACK[0x2EC]) = v336 ^ LODWORD(STACK[0x488]);
  LODWORD(STACK[0x2E8]) = v336 ^ v419;
  v448 = v336 ^ LODWORD(STACK[0x480]);
  LODWORD(STACK[0x2E4]) = v336 ^ v421;
  LODWORD(STACK[0x2E0]) = v336 ^ v422;
  v449 = v336 ^ v426;
  v450 = v336 ^ v430;
  LODWORD(v300) = v336 ^ LODWORD(STACK[0x4A8]);
  v451 = v336 ^ v395;
  v452 = v336 ^ v435;
  LODWORD(v336) = v336 ^ v436;
  LOBYTE(STACK[0xE46]) = LODWORD(STACK[0x508]) ^ 0x31;
  LOBYTE(STACK[0xD0B]) = LODWORD(STACK[0x510]) ^ 0xC0;
  v453 = STACK[0x4C8];
  LOBYTE(STACK[0xD85]) = ((LODWORD(STACK[0x4C8]) ^ v427) >> 24) ^ 0x30;
  LODWORD(v395) = ((HIBYTE(v449) - (HIBYTE(v449) ^ 0x7D)) ^ 0xFE) + HIBYTE(v449);
  LOBYTE(STACK[0xE91]) = BYTE1(v449) ^ 0xC0;
  LOBYTE(STACK[0xC4A]) = v395 - ((2 * v395) & 0x7A) - 67;
  LOBYTE(STACK[0xF0B]) = v453 ^ v427 ^ 0xE4;
  LOBYTE(STACK[0xCC4]) = ((v453 ^ v427) >> 16) ^ 0x7D;
  LOBYTE(STACK[0xF52]) = BYTE2(v449) ^ 0xC0;
  LOBYTE(STACK[0xDD0]) = v449 ^ 0xC0;
  LOBYTE(STACK[0xC03]) = ((v453 ^ v427) >> 8) ^ 0xC;
  LOBYTE(v449) = LODWORD(STACK[0x4F4]) - 119;
  LOBYTE(STACK[0xD0F]) = HIBYTE(v445) ^ 0xC0;
  LOBYTE(STACK[0xC4E]) = BYTE2(v445) ^ 0xC0;
  LOBYTE(STACK[0xE4A]) = (((v439 ^ 0xCC1C978C) >> v449) - ((2 * ((v439 ^ 0xCC1C978C) >> v449)) & 0x40) + 32) ^ 0x9D;
  LOBYTE(STACK[0xD89]) = BYTE2(v439) ^ 0xA1;
  LOBYTE(STACK[0xDD4]) = HIBYTE(v450) ^ 0xC0;
  LOBYTE(STACK[0xCC8]) = BYTE1(v439) ^ 0x2A;
  LOBYTE(STACK[0xC07]) = v439 ^ 0x31;
  LOBYTE(STACK[0xF56]) = BYTE1(v445) ^ 0xC0;
  v454 = v453 ^ LODWORD(STACK[0x4A0]);
  LOBYTE(STACK[0xD8D]) = BYTE1(v454) ^ 0xC;
  LOBYTE(STACK[0xE95]) = v445 ^ 0xC0;
  LOBYTE(STACK[0xE4E]) = BYTE2(v454) ^ 0x7D;
  LOBYTE(STACK[0xD13]) = BYTE2(v450) ^ 0xC0;
  LOBYTE(STACK[0xF0F]) = HIBYTE(v454) ^ 0x30;
  LOBYTE(STACK[0xC52]) = BYTE1(v450) ^ 0xC0;
  LOBYTE(STACK[0xF5A]) = v450 ^ 0xC0;
  LOBYTE(STACK[0xCCC]) = v454 ^ 0xE4;
  LOBYTE(STACK[0xDD8]) = BYTE2(v444) ^ 0xC0;
  v455 = STACK[0x518];
  v456 = ((1 - LODWORD(STACK[0x520])) ^ LODWORD(STACK[0x518])) & 0x7D ^ HIBYTE(v444);
  LOBYTE(STACK[0xC0B]) = HIBYTE(v440) ^ 0x71;
  LOBYTE(STACK[0xE99]) = v456 - ((2 * v456) & 0x7A) - 67;
  LOBYTE(STACK[0xF13]) = BYTE2(v440) ^ 0xA1;
  LOBYTE(STACK[0xD17]) = BYTE1(v444) ^ 0xC0;
  LOBYTE(STACK[0xE52]) = BYTE1(v440) ^ 0x2A;
  LOBYTE(STACK[0xC56]) = v444 ^ 0xC0;
  LOBYTE(STACK[0xD91]) = v440 ^ 0x31;
  v457 = v453 ^ LODWORD(STACK[0x4B0]);
  LOBYTE(STACK[0xCD0]) = HIBYTE(v457) ^ 0x30;
  LOBYTE(STACK[0xE9D]) = BYTE2(v300) ^ 0xC0;
  LOBYTE(STACK[0xDDC]) = BYTE1(v300) ^ 0xC0;
  LOBYTE(STACK[0xF17]) = BYTE1(v457) ^ 0xC;
  LOBYTE(STACK[0xE56]) = v457 ^ 0xE4;
  LOBYTE(STACK[0xD1B]) = ((v300 - (v300 ^ 0x7D)) ^ 0xFE) + v300 - ((2 * (((v300 - (v300 ^ 0x7D)) ^ 0xFE) + v300)) & 0x7A) - 67;
  LOBYTE(STACK[0xF62]) = (v446 >> (BYTE1(v457) & 0x10 ^ 0x10) >> (BYTE1(v457) & 0x10)) ^ 0xC0;
  LOBYTE(STACK[0xF5E]) = BYTE3(v300) ^ 0xC0;
  LOBYTE(STACK[0xC0F]) = BYTE2(v457) ^ 0x7D;
  LOBYTE(STACK[0xCD4]) = BYTE2(v441) ^ 0xA1;
  LOBYTE(STACK[0xC5A]) = HIBYTE(v446) ^ 0xC0;
  LOBYTE(STACK[0xEA1]) = BYTE1(v446) ^ 0xC0;
  LOBYTE(STACK[0xD95]) = HIBYTE(v441) ^ 0x71;
  LODWORD(v300) = v453 ^ LODWORD(STACK[0x4B4]);
  LOBYTE(STACK[0xE5A]) = BYTE3(v300) ^ 0x30;
  LOBYTE(STACK[0xDE0]) = v446 ^ 0xC0;
  LOBYTE(STACK[0xD1F]) = HIBYTE(v452) ^ 0xC0;
  LOBYTE(STACK[0xC13]) = BYTE1(v441) ^ 0x2A;
  LOBYTE(STACK[0xCD8]) = BYTE1(v300) ^ 0xC;
  LOBYTE(STACK[0xF1B]) = v441 ^ 0x31;
  LOBYTE(STACK[0xD99]) = BYTE2(v300) ^ 0x7D;
  LOBYTE(STACK[0xC5E]) = BYTE2(v452) ^ 0xC0;
  LOBYTE(STACK[0xF1F]) = BYTE3(v392) ^ 0x71;
  LOBYTE(STACK[0xEA5]) = v452 ^ 0xC0;
  LOBYTE(STACK[0xD23]) = BYTE2(v447) ^ 0xC0;
  LOBYTE(STACK[0xF66]) = BYTE1(v452) ^ 0xC0;
  LOBYTE(STACK[0xE5E]) = BYTE2(v392) ^ 0xA1;
  LOBYTE(STACK[0xC62]) = BYTE1(v447) ^ 0xC0;
  LOBYTE(STACK[0xDE4]) = HIBYTE(v447) ^ 0xC0;
  LOBYTE(STACK[0xC17]) = v300 ^ 0xE4;
  LODWORD(v300) = v453 ^ LODWORD(STACK[0x4B8]);
  LOBYTE(STACK[0xC1B]) = BYTE3(v300) ^ 0x30;
  LOBYTE(STACK[0xD9D]) = BYTE1(v392) ^ 0x2A;
  LOBYTE(STACK[0xEA9]) = HIBYTE(v451) ^ 0xC0;
  LOBYTE(STACK[0xF6A]) = v447 ^ 0xC0;
  LOBYTE(STACK[0xC66]) = v451 ^ 0xC0;
  LOBYTE(STACK[0xE62]) = BYTE1(v300) ^ 0xC;
  LOBYTE(STACK[0xCDC]) = v392 ^ 0x31;
  LOBYTE(STACK[0xD27]) = BYTE1(v451) ^ 0xC0;
  LOBYTE(STACK[0xDA1]) = v300 ^ 0xE4;
  v458 = STACK[0x57C];
  LOBYTE(STACK[0xCE0]) = HIBYTE(LODWORD(STACK[0x57C])) ^ 0x71;
  LODWORD(v392) = STACK[0x58C];
  LOBYTE(STACK[0xDEC]) = BYTE1(LODWORD(STACK[0x58C])) ^ 0xC0;
  LOBYTE(STACK[0xF23]) = BYTE2(v300) ^ 0x7D;
  LOBYTE(STACK[0xDE8]) = BYTE2(v451) ^ 0xC0;
  LOBYTE(STACK[0xC1F]) = BYTE2(v458) ^ 0xA1;
  LOBYTE(STACK[0xF27]) = BYTE1(v458) ^ 0x2A;
  LOBYTE(STACK[0xD2B]) = v392 ^ 0xC0;
  LOBYTE(STACK[0xEAD]) = BYTE2(v392) ^ 0xC0;
  LOBYTE(STACK[0xF6E]) = BYTE3(v392) ^ 0xC0;
  LOBYTE(STACK[0xE66]) = v458 ^ 0x31;
  LOBYTE(STACK[0xEB1]) = BYTE1(v336) ^ 0xC0;
  LOBYTE(STACK[0xC23]) = ((v453 ^ v455) >> 8) ^ 0xC;
  LOBYTE(STACK[0xDA5]) = ((v453 ^ v455) >> 24) ^ 0x30;
  LOBYTE(STACK[0xCE4]) = ((v453 ^ v455) >> 16) ^ 0x7D;
  LOBYTE(STACK[0xF72]) = ((BYTE2(v336) - (BYTE2(v336) ^ 0x7D)) ^ 0xFE) + BYTE2(v336) - ((2 * (((BYTE2(v336) - (BYTE2(v336) ^ 0x7D)) ^ 0xFE) + BYTE2(v336))) & 0x7A) - 67;
  LOBYTE(STACK[0xC6A]) = BYTE3(v336) ^ 0xC0;
  LOBYTE(STACK[0xDF0]) = v336 ^ 0xC0;
  LOBYTE(STACK[0xF2B]) = v453 ^ v455 ^ 0xE4;
  LODWORD(STACK[0x2DC]) = (((v438 ^ LODWORD(STACK[0x4E0]) ^ 0x5521DC08) + 2015894511) ^ ((v438 ^ LODWORD(STACK[0x4E0]) ^ 0x561902B7) + 2064696658) ^ ((v438 ^ LODWORD(STACK[0x4E0]) ^ 0x870B2E9D) - 1442649732)) + 887984742;
  LODWORD(v300) = LODWORD(STACK[0x580]) ^ 0x8433F022;
  LODWORD(STACK[0x2D8]) = LODWORD(STACK[0x550]) ^ v438;
  v459 = v438 ^ LODWORD(STACK[0x4E8]);
  LODWORD(STACK[0x2D4]) = LODWORD(STACK[0x54C]) ^ v438;
  LODWORD(STACK[0x2D0]) = v300 ^ v438;
  LODWORD(STACK[0x2CC]) = (((LODWORD(STACK[0x4C0]) ^ 0x1828E8AC) + 1743913818) ^ ((LODWORD(STACK[0x4C0]) ^ 0xFF26EE35) - 2130967103) ^ ((LODWORD(STACK[0x4C0]) ^ 0x2B129115) + 1422424801)) - 1565743503;
  LODWORD(STACK[0x2C8]) = ((LODWORD(STACK[0x4C4]) ^ 0x6F93FFC) + 235598038) ^ ((LODWORD(STACK[0x4C4]) ^ 0x58178610) + 1357138234) ^ ((LODWORD(STACK[0x4C4]) ^ 0x92F22E60) - 1711152822);
  LODWORD(v300) = ((LODWORD(STACK[0x4DC]) ^ 0x478E72B4) + 1067081600) ^ ((LODWORD(STACK[0x4DC]) ^ 0xD44AA43D) - 1403090441) ^ ((LODWORD(STACK[0x4DC]) ^ 0x5FD84105) + 667708623);
  LODWORD(STACK[0x2C0]) = ((v459 ^ 0x339E5B89) + 308568347) ^ ((v459 ^ 0x97B6E8CA) - 1236479398) ^ ((v459 ^ 0x201B4361) + 31554035);
  v460 = v453 ^ LODWORD(STACK[0x500]);
  LODWORD(STACK[0x2B8]) = LODWORD(STACK[0x588]) ^ v453;
  LODWORD(STACK[0x2B4]) = LODWORD(STACK[0x584]) ^ v453;
  LODWORD(v392) = v453 ^ LODWORD(STACK[0x4FC]);
  LODWORD(v336) = v453 ^ LODWORD(STACK[0x4F8]);
  v461 = v453 ^ LODWORD(STACK[0x4F0]);
  v462 = v453 ^ 0x8DC0B159 ^ LODWORD(STACK[0x4EC]);
  LODWORD(STACK[0x2B0]) = v453 ^ 0x8DC0B159 ^ LODWORD(STACK[0x528]);
  LODWORD(STACK[0x2AC]) = (((v460 ^ 0x960B3C1D) - 2121596879) ^ ((v460 ^ 0xA4A26917) - 1289595589) ^ ((v460 ^ 0xBF69E453) - 1461069697)) - 1079275791;
  LODWORD(STACK[0x2A8]) = (((v461 ^ 0xA440C27B) + 589636243) ^ ((v461 ^ 0xAD1C4CA8) + 712617026) ^ ((v461 ^ 0x849C3F8A) + 66707300)) + 999899640;
  LODWORD(STACK[0x2A4]) = v443 + 2112280372;
  LODWORD(STACK[0x2A0]) = v448 + 2112280372;
  LODWORD(STACK[0x29C]) = (((LODWORD(STACK[0x590]) ^ 0xC24D72BB) + 183864093) ^ ((LODWORD(STACK[0x590]) ^ 0xB185EAF4) + 2034045780) ^ ((LODWORD(STACK[0x590]) ^ 0xFE082916) + 917557426)) + 1067062746;
  LODWORD(STACK[0x298]) = ((v336 ^ 0xF5EB43E8) - 1463596477) ^ ((v336 ^ 0x1EAC2452) + 1132735993) ^ ((v336 ^ 0x6687D6E3) + 1001381706);
  LODWORD(STACK[0x294]) = (((v392 ^ 0x6C53BC41) - 169630507) ^ ((v392 ^ 0xB2AF007C) + 723458282) ^ ((v392 ^ 0x533C0D64) - 896789006)) + 527952410;
  v463 = LODWORD(STACK[0x5A8]) ^ 0x240;
  LODWORD(STACK[0x290]) = LODWORD(STACK[0x504]) + 315247240;
  LODWORD(STACK[0x28C]) = v300 - 1841964703;
  LODWORD(STACK[0x288]) = LODWORD(STACK[0x31C]) - v462;
  LODWORD(STACK[0x354]) = 1093148745;
  LODWORD(STACK[0x344]) = 943215;
  LODWORD(STACK[0x340]) = 710676930;
  LODWORD(STACK[0x33C]) = 938989;
  LODWORD(STACK[0x338]) = -1213754149;
  LODWORD(STACK[0x3E4]) = 1;
  return (*(STACK[0x598] + 8 * (v463 ^ 0x1C)))();
}

uint64_t sub_1E331E144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t *a15, unsigned int a16, unsigned int a17)
{
  v22 = (((&a12 | 0xED5B494E) - &a12 + (&a12 & 0x12A4B6B0)) ^ 0xB5329A2C) * v19;
  a13 = v22 - 944470126;
  a14 = a10;
  a15 = &a9;
  a16 = -654855621 - v22;
  a17 = v22 + v18 + 1674574852;
  v23 = (*(v17 + 8 * (v18 + 5346)))(&a12);
  return (*(v17 + 8 * (((a12 == v20) * (((v18 - 664359199) & 0x61FF) - v21 - 1613304421)) ^ v18)))(v23);
}

uint64_t sub_1E331E218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, uint64_t a16, int a17)
{
  a15 = v17 + 956911519 * ((2 * (v21 & 0xA89F6157C077E0) - v21 + 0x7F57609EA83F881CLL) ^ 0x3A61154242AEF819) - ((v17 << ((v20 + 17) ^ 0x42u)) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34;
  a16 = a11;
  a14 = (v20 - 2612) ^ (956911519 * ((2 * (v21 & 0x57C077E0) - v21 - 1472231396) ^ 0x42AEF819));
  v22 = (*(v18 + 8 * (v20 + 5965)))(&a14);
  return (*(v18 + 8 * (((a17 != v19) * (v20 - 3521)) ^ v20)))(v22);
}

uint64_t sub_1E331E304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a11;
  a16 = 1317436891 * ((1803464870 - (&a14 | 0x6B7EB0A6) + (&a14 | 0x94814F59)) ^ 0x2482D72F) + 8154;
  v19 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((3602 * (a15 == v17)) ^ v18)))(v19);
}

void sub_1E331E398(unsigned int a1@<W8>)
{
  v3 = ((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBDDLL;
  v4 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v5 = (0x6AF7234D0CC131D4 - v4) & (a1 ^ 0xE17ED4F2859DCFCDLL) | (v4 + 0x1508DCB2F33ECE2BLL) & 0x1A812B0D7A623ED0;
  v6 = __ROR8__(v5 ^ 0xAC9796C9EA8B26FDLL, 8);
  v5 ^= 0x4D1735E737D57A1uLL;
  v7 = (v6 + v5 - ((2 * (v6 + v5)) & 0xA8F535F8906AB678) - 0x2B856503B7CAA4C4) ^ 0x30E7ED23CF08E442;
  v8 = v7 ^ __ROR8__(v5, 61);
  v9 = (__ROR8__(v7, 8) + v8) ^ 0xF5A2F1B9B5D0B209;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0x5963B6C555D97F1FLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (((2 * ((v13 + v12) ^ 0xE7B5DC45273D63A1)) | 0x504C6837B780C63ELL) - ((v13 + v12) ^ 0xE7B5DC45273D63A1) + 0x57D9CBE4243F9CE1) ^ 0x2ED675740CE22449;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((2 * (v16 + v15)) | 0x4F1E4801C06BB8FCLL) - (v16 + v15) + 0x5870DBFF1FCA2382) ^ 0xC34C380290B10212;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x1A2AEBE44253AF03;
  v20 = __ROR8__((((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBDCLL) & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = v20 - ((2 * v20 + 0x2A11B965E67D9C56) & 0x86491E2C94CF3D9ALL) - 0x27D29436C2599308;
  v22 = v21 ^ 0xACDCD2D2571791FLL;
  v21 ^= 0xA28B28BABC870843;
  v23 = __ROR8__(v22, 8);
  v24 = (((2 * ((v23 + v21) ^ 0xE86B6D598CE7C62CLL)) & 0x3776BD40C68BCDALL) - ((v23 + v21) ^ 0xE86B6D598CE7C62CLL) - 0x1BBB5EA06345E6ELL) ^ 0xF2B25093F211D8C0;
  v25 = v24 ^ __ROR8__(v21, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0xF5A2F1B9B5D0B209;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x5963B6C555D97F1FLL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x61459D2AF01F24F7;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v1;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x1A2AEBE44253AF03;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = ((((v36 + v35 - ((2 * (v36 + v35)) & 0x46C4DEB32D067766) + 0x23626F5996833BB3) ^ 0x88522D8BBE0467F2) >> (8 * ((((2 * LOBYTE(STACK[0x2B0])) & 0xBA) + (LOBYTE(STACK[0x2B0]) ^ 0xDD) + LOBYTE(STACK[0x5E0]) + 36) & 7u))) ^ *(((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBDCLL)) << 48;
  v38 = __ROR8__((((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBDBLL) & 0xFFFFFFFFFFFFFFF8, 8);
  v39 = v37 | (((((__ROR8__(v19, 8) + (v19 ^ __ROR8__(v18, 61))) ^ 0xAB3042D228875C41) >> (8 * ((((2 * LOBYTE(STACK[0x2B0])) & 0xBA) + (LOBYTE(STACK[0x2B0]) ^ 0xDD) + LOBYTE(STACK[0x5E0]) + 35) & 7u))) ^ *v3) << 56);
  v40 = ((2 * (v38 + v2)) | 0xE988EE55C850EEE4) - (v38 + v2) + 0xB3B88D51BD7888ELL;
  v41 = __ROR8__(v40 ^ 0xBD2D35118B3E90A0, 8);
  v40 ^= 0x156BD08612C8E1FCuLL;
  v42 = (v41 + v40) ^ 0xE49D77DF873DBF7ELL;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (v44 + v43 - ((2 * (v44 + v43)) & 0x6A1EDDA6EAF44D6) - 0x7CAF0912C8A85D95) ^ 0x76F2075482871062;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x5963B6C555D97F1FLL;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x61459D2AF01F24F7;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ v1;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0x1A2AEBE44253AF03;
  v54 = __ROR8__(v53, 8);
  v55 = __ROR8__(v52, 61);
  v56 = v39 | (((((((v54 + (v53 ^ v55)) | 0xC0D69FAEA99994B0) - ((v54 + (v53 ^ v55)) | 0x3F29605156666B4FLL) + 0x3F29605156666B4FLL) ^ 0x6BE6DD7C811EC8F1) >> (8 * ((((2 * LOBYTE(STACK[0x2B0])) & 0xBA) + (LOBYTE(STACK[0x2B0]) ^ 0xDD) + LOBYTE(STACK[0x5E0]) + 37) & 7u))) ^ *(((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBDBLL)) << 40);
  v57 = (__ROR8__((((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBDALL) & 0xFFFFFFFFFFFFFFF8, 8) + v2) & 0xFBFFFFFFFFFFFFFFLL;
  v58 = v57 ^ 0x4DE9423B6F16E7D2;
  v57 ^= 0xE5AFA7ACF6E0968ELL;
  v59 = (__ROR8__(v58, 8) + v57) ^ 0xE49D77DF873DBF7ELL;
  v60 = v59 ^ __ROR8__(v57, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0xF5A2F1B9B5D0B209;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0x5963B6C555D97F1FLL;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = __ROR8__(v63, 8);
  v66 = (((v65 + v64) | 0xAC2390E6C13EB103) - ((v65 + v64) | 0x53DC6F193EC14EFCLL) + 0x53DC6F193EC14EFCLL) ^ 0xCD660DCC312195F4;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ v1;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (v70 + v69 - ((2 * (v70 + v69)) & 0xE3F30D59F9F95424) + 0x71F986ACFCFCAA12) ^ 0x6BD36D48BEAF0511;
  v72 = v56 | (((((__ROR8__(v71, 8) + (v71 ^ __ROR8__(v69, 61))) ^ 0xAB3042D228875C41) >> (8 * ((((2 * LOBYTE(STACK[0x2B0])) & 0xBA) + (LOBYTE(STACK[0x2B0]) ^ 0xDD) + LOBYTE(STACK[0x5E0]) + 38) & 7u))) ^ *(((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBDALL)) << 32);
  v73 = __ROR8__((((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBD9) & 0xFFFFFFFFFFFFFFF8, 8);
  v74 = -2 - (((0x6AF7234D0CC131D4 - v73) | 0x44BA01A51A183DE0) + ((v73 + 0x1508DCB2F33ECE2BLL) | 0xBB45FE5AE5E7C21FLL));
  v75 = v74 ^ 0xD53439E750EDA32;
  v74 ^= 0xA515A609ECF8AB6ELL;
  v76 = __ROR8__(v75, 8);
  v77 = (((2 * ((v76 + v74) ^ 0xBE8B2A9C9DF400CFLL)) & 0xAA23D21ABB2D7C00) - ((v76 + v74) ^ 0xBE8B2A9C9DF400CFLL) + 0x2AEE16F2A26941FFLL) ^ 0x70F84BB1B8A0FE4ELL;
  v78 = v77 ^ __ROR8__(v74, 61);
  v79 = __ROR8__(v77, 8);
  v80 = (((2 * (v79 + v78)) & 0x7D84ABA23E9CFE7ELL) - (v79 + v78) - 0x3EC255D11F4E7F40) ^ 0x349F5B97556132C9;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = __ROR8__(v80, 8);
  v83 = (((v82 + v81) | 0xD44CE57641558F6ELL) - ((v82 + v81) | 0x2BB31A89BEAA7091) + 0x2BB31A89BEAA7091) ^ 0x8D2F53B3148CF071;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = __ROR8__(v83, 8);
  v86 = __ROR8__((((2 * (v85 + v84)) & 0x56507D4A3E0F7B40) - (v85 + v84) - 0x2B283EA51F07BDA1) ^ 0xB5925C7010E766A8, 8);
  v87 = (((2 * (v85 + v84)) & 0x56507D4A3E0F7B40) - (v85 + v84) - 0x2B283EA51F07BDA1) ^ 0xB5925C7010E766A8 ^ __ROR8__(v84, 61);
  v88 = (((2 * (v86 + v87)) & 0xEEF74AFFBBE4930CLL) - (v86 + v87) + 0x8845A80220DB679) ^ 0x6C47468252896815;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = __ROR8__(v88, 8);
  v91 = (((2 * (v90 + v89)) & 0x29B65A41F14458CCLL) - (v90 + v89) - 0x14DB2D20F8A22C67) ^ 0xF10E393B450E7C9ALL;
  v92 = v91 ^ __ROR8__(v89, 61);
  v93 = __ROR8__(v91, 8);
  v94 = v72 & 0xFFFFFFFF00FFFFFFLL | (((((v93 + v92 - ((2 * (v93 + v92)) & 0xDE26E3A15DEF6F6ALL) + 0x6F1371D0AEF7B7B5) ^ 0xC42333028670EBF4) >> (8 * ((((2 * LOBYTE(STACK[0x2B0])) & 0xBA) + (LOBYTE(STACK[0x2B0]) ^ 0xDD) + LOBYTE(STACK[0x5E0]) + 39) & 7u))) ^ *(((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBD9)) << 24);
  v95 = __ROR8__((((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBD8) & 0xFFFFFFFFFFFFFFF8, 8);
  v96 = ((2 * v95 + 0x2A11B965E67D9C56) & 0xCB0FE93C98309366) - v95 + 0x56F2EAEC0A8E821;
  v97 = v96 ^ 0xD391495ADCF1519ELL;
  v96 ^= 0x7BD7ACCD450720C2uLL;
  v98 = __ROR8__(v97, 8);
  v99 = __ROR8__((((v98 + v96) ^ 0x8FF42FE233FDEFE0 | 0xCCF5982A4DA0F226) - ((v98 + v96) ^ 0x8FF42FE233FDEFE0 | 0x330A67D5B25F0DD9) + 0x330A67D5B25F0DD9) ^ 0xA79CC017F960A2B8, 8);
  v100 = (((v98 + v96) ^ 0x8FF42FE233FDEFE0 | 0xCCF5982A4DA0F226) - ((v98 + v96) ^ 0x8FF42FE233FDEFE0 | 0x330A67D5B25F0DD9) + 0x330A67D5B25F0DD9) ^ 0xA79CC017F960A2B8 ^ __ROR8__(v96, 61);
  v101 = (v99 + v100) ^ 0xF5A2F1B9B5D0B209;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = (__ROR8__(v101, 8) + v102) ^ 0x5963B6C555D97F1FLL;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = __ROR8__(v103, 8);
  v106 = (((2 * (v105 + v104)) | 0x6B60C641F567F5AALL) - (v105 + v104) - 0x35B06320FAB3FAD5) ^ 0x54F5FE0A0AACDE22;
  v107 = v106 ^ __ROR8__(v104, 61);
  v108 = (__ROR8__(v106, 8) + v107) ^ v1;
  v109 = v108 ^ __ROR8__(v107, 61);
  v110 = (__ROR8__(v108, 8) + v109) ^ 0x1A2AEBE44253AF03;
  v111 = v94 & 0xFFFFFFFFFF00FFFFLL | (((((__ROR8__(v110, 8) + (v110 ^ __ROR8__(v109, 61))) ^ 0xAB3042D228875C41) >> (8 * ((((2 * LOBYTE(STACK[0x2B0])) & 0xBA) + (LOBYTE(STACK[0x2B0]) ^ 0xDD) + LOBYTE(STACK[0x5E0]) + 40) & 7u))) ^ *(((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBD8)) << 16);
  v112 = (__ROR8__((((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBD7) & 0xFFFFFFFFFFFFFFF8, 8) + v2) & 0xFBFFFFFFFFFFFFFFLL;
  v113 = v112 ^ 0x4DE9423B6F16E7D2;
  v112 ^= 0xE5AFA7ACF6E0968ELL;
  v114 = (__ROR8__(v113, 8) + v112) ^ 0xE49D77DF873DBF7ELL;
  v115 = __ROR8__(v114, 8);
  v116 = v114 ^ __ROR8__(v112, 61);
  v117 = (v115 + v116 - ((2 * (v115 + v116)) & 0x10D88C22F14EF5CLL) + 0x86C461178A77AELL) ^ 0xF52435D8A25AC5A7;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = (__ROR8__(v117, 8) + v118) ^ 0x5963B6C555D97F1FLL;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = __ROR8__(v119, 8);
  v122 = (((2 * (v121 + v120)) | 0xF8F4D7410A173B82) - (v121 + v120) - 0x7C7A6BA0850B9DC1) ^ 0x1D3FF68A7514B936;
  v123 = v122 ^ __ROR8__(v120, 61);
  v124 = (__ROR8__(v122, 8) + v123) ^ v1;
  v125 = v124 ^ __ROR8__(v123, 61);
  v126 = __ROR8__(v124, 8);
  v127 = v111 & 0xFFFFFFFFFFFF00FFLL | (((((__ROR8__((((v126 + v125) & 0x865B83655FEF6F5 ^ 0x2498320576F0D5) + ((v126 + v125) & 0xF79A47C9AA01090ALL ^ 0xC68006C000000803) - 1) ^ 0xDC8E7516472557D4, 8) + ((((v126 + v125) & 0x865B83655FEF6F5 ^ 0x2498320576F0D5) + ((v126 + v125) & 0xF79A47C9AA01090ALL ^ 0xC68006C000000803) - 1) ^ 0xDC8E7516472557D4 ^ __ROR8__(v125, 61))) ^ 0xAB3042D228875C41) >> (8 * ((((2 * LOBYTE(STACK[0x2B0])) & 0xBA) + (LOBYTE(STACK[0x2B0]) ^ 0xDD) + LOBYTE(STACK[0x5E0]) + 41) & 7u))) ^ *(((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBD7)) << 8);
  v128 = __ROR8__((((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBD6) & 0xFFFFFFFFFFFFFFF8, 8);
  v129 = ((2 * (v128 + v2)) | 0x804B0297E5FB7EA4) - (v128 + v2) - 0x4025814BF2FDBF52;
  v130 = v129 ^ 0x9CCC3709DEB5880;
  v129 ^= 0xA18A26E7041D29DCLL;
  v131 = __ROR8__(v130, 8);
  v132 = (((2 * (v131 + v129)) & 0xC07D41EEC5780520) - (v131 + v129) + 0x1FC15F089D43FD6FLL) ^ 0xFB5C28D71A7E4211;
  v133 = v132 ^ __ROR8__(v129, 61);
  v134 = __ROR8__(v132, 8);
  v135 = (v134 + v133 - ((2 * (v134 + v133)) & 0xC66D97DBD851D3B2) - 0x1CC9341213D71627) ^ 0x16943A5459F85BD0;
  v136 = v135 ^ __ROR8__(v133, 61);
  v137 = __ROR8__(v135, 8);
  v138 = (((2 * (v137 + v136)) | 0x341E0CCC86BF04E6) - (v137 + v136) + 0x65F0F999BCA07D8DLL) ^ 0xC36CB0A31686FD6CLL;
  v139 = v138 ^ __ROR8__(v136, 61);
  v140 = __ROR8__(v138, 8);
  v141 = (v140 + v139 - ((2 * (v140 + v139)) & 0xA996373FDA7782A4) + 0x54CB1B9FED3BC152) ^ 0x358E86B51D24E5A5;
  v142 = v141 ^ __ROR8__(v139, 61);
  v143 = (__ROR8__(v141, 8) + v142) ^ v1;
  v144 = __ROR8__(v143, 8);
  v145 = v143 ^ __ROR8__(v142, 61);
  v146 = (v144 + v145 - ((2 * (v144 + v145)) & 0xAB9BCCB5A89BD69ALL) + 0x55CDE65AD44DEB4DLL) ^ 0x4FE70DBE961E444ELL;
  v147 = v146 ^ __ROR8__(v145, 61);
  v148 = __ROR8__(v146, 8);
  v149 = v127 | ((((((2 * (v148 + v147)) & 0x970A9B9F1F62DE94) - (v148 + v147) - 0x4B854DCF8FB16F4BLL) ^ 0x1F4AF0E258C9CCF4) >> (8 * ((((2 * LOBYTE(STACK[0x2B0])) & 0xBA) + (LOBYTE(STACK[0x2B0]) ^ 0xDD) + LOBYTE(STACK[0x5E0]) + 42) & 7u))) ^ *(((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBD6));
  STACK[0x7D8] = v149 + 0x4789E5A74F535ADDLL - ((2 * v149) & 0x8F13CB4E9EA6B5BALL);
  JUMPOUT(0x1E331F258);
}

uint64_t sub_1E331F314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, __int16 a11, char a12, int a13, char a14, char *a15, char *a16, uint64_t a17, unsigned int a18, int a19)
{
  v22 = 1317436891 * (((&a14 | 0x9F232A3C) - (&a14 & 0x9F232A3C)) ^ 0x2F20B24A);
  a18 = 1592118204 - v22;
  a19 = (v21 + 670) ^ v22;
  a15 = &a12;
  a16 = &a10;
  a17 = v19;
  v23 = (*(v20 + 8 * (v21 + 7923)))(&a14);
  return (*(v20 + 8 * (((*(v19 + 24) != (((v21 - 1646) | 0x1009) ^ 0xF80346)) * (v21 - 1270)) ^ v21)))(v23);
}

uint64_t sub_1E331F448(uint64_t a1)
{
  v5 = (2 * (v1 ^ 0x3AF) + 743) | 0x21A;
  *v3 = a1;
  *v2 = v8;
  v12 = (v5 + 3643) ^ (1824088897 * ((&v10 - 1264227316 - 2 * (&v10 & 0xB4A56C0C)) ^ 0xECCCBF6E));
  v11 = v9;
  (*(v4 + 8 * (v5 + 4909)))(&v10);
  v11 = v7;
  v12 = ((v5 ^ 0x1F75) + 4976) ^ (1824088897 * ((((2 * &v10) | 0x69B86ECA) - &v10 + 1260636315) ^ 0xECB5E407));
  (*(v4 + 8 * ((v5 ^ 0x1F75) + 6242)))(&v10);
  return 0;
}

void sub_1E331F6A0(uint64_t a1)
{
  v2 = *(&off_1F5DB1610 + ((-85 * (dword_1ECF42FA0 ^ 0xDF ^ dword_1ECF432C0)) ^ byte_1E43079A0[byte_1E42FD430[(-85 * (dword_1ECF42FA0 ^ 0xDF ^ dword_1ECF432C0))] ^ 0x21]) + 84);
  v3 = -85 * (*v2 ^ dword_1ECF432C0 ^ 0xDF);
  v4 = *(&off_1F5DB1610 + (*(off_1F5DB1B20 + (*(off_1F5DB1A08 + v3 - 8) ^ 0xDDu)) ^ v3) - 42);
  v5 = (*v4 ^ *v2) - &v9;
  v6 = (2054362027 * v5) ^ 0xB4207763EF64BDFLL;
  v7 = 2054362027 * (v5 ^ 0xB4207763EF64BDFLL);
  *v2 = v6;
  *v4 = v7;
  LODWORD(v4) = *v2;
  v8 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 - dword_1ECF42FA0) ^ 0xDF)) ^ byte_1E42FD730[byte_1E4316CE0[(-85 * ((dword_1ECF432C0 - dword_1ECF42FA0) ^ 0xDF))] ^ 0x71]) + 120) - 8;
  (*&v8[8 * (*(off_1F5DB1B28 + ((*off_1F5DB1C30)[(-85 * ((v7 + v4) ^ 0xDF))] ^ 0xEEu) - 12) ^ (-85 * ((v7 + v4) ^ 0xDF))) + 76200])(*(&off_1F5DB1610 + (*(off_1F5DB1800 + (*(off_1F5DB19C8 + (-85 * (v4 ^ 0xDF ^ v7)) - 12) ^ 0xE9u) - 12) ^ (-85 * (v4 ^ 0xDF ^ v7))) - 13), sub_1E3392394);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1E331F894@<X0>(int a1@<W8>)
{
  v5 = a1 - 1201;
  v6 = (*(v3 + 8 * (a1 + 7123)))(v4);
  if (v1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v2;
  }

  return (*(v3 + 8 * (((1556 * (v5 ^ 0x545) + 1922) * v7) ^ v5)))(v6);
}

uint64_t sub_1E331F8F0()
{
  *(v6 - 224) = v1 ^ (((((v6 - 232) | 0x4A43B577) + (~(v6 - 232) | 0xB5BC4A88)) ^ 0x66BF040D) * v5);
  v7 = (*(v4 + 8 * (v0 ^ 0x3265)))(v6 - 232);
  *(v3 + 16) = *(v6 - 232) ^ v2;
  return (*(v4 + 8 * (v0 + 766)))(v7);
}

uint64_t sub_1E331F97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, int a17)
{
  a16 = 476323082 - 1710126949 * (((&a16 | 0x900FFFE3) - (&a16 & 0x900FFFE3)) ^ 0xA214A473);
  v18 = (*(v17 + 77088))(&a16);
  return (*(v17 + 8 * ((4792 * (a17 == 16257999)) ^ 0x78Du)))(v18);
}

uint64_t sub_1E331FA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, char a5@<W8>)
{
  v10 = STACK[0x270];
  v11 = *STACK[0x300] + 6;
  v12 = __ROR8__(v11 & 0xFFFFFFFFFFFFFFF8, 8);
  v13 = ((0x6AF7234D0CC131D4 - v12) & a2) + v12 + v8 - ((v12 + v8) & a2);
  v14 = __ROR8__(v13 ^ 0xAB257711D84E66DLL, 8);
  v13 ^= 0xA2F4B2E684729731;
  v15 = (((v14 + v13) & 0xB9CE2113715ACFF7 ^ 0x184A000231524D61) + ((v14 + v13) & 0x4631DEEC8EA53008 ^ 0x460196A406053009) - 1) ^ 0xBAD6E179B06AC217;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xF5A2F1B9B5D0B209;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x5963B6C555D97F1FLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ a4;
  v22 = __ROR8__(v21, 8);
  v23 = v21 ^ __ROR8__(v20, 61);
  v24 = (v22 + v23) ^ 0x64C31C027084DE6CLL;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8) + v25;
  v27 = __ROR8__((*STACK[0x300] + 7) & 0xFFFFFFFFFFFFFFF8, 8);
  v28 = (0x6AF7234D0CC131D4 - v27) & 0xC2A16714FA488FC8 | (v27 + 0x1508DCB2F33ECE2BLL) & 0x3D5E98EB05B77037;
  v29 = __ROR8__(v28 ^ 0x8B48252F955E681ALL, 8);
  v28 ^= 0x230EC0B80CA81946uLL;
  v30 = (((2 * v26) | 0x36A4398A31861B6ALL) - v26 - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6;
  v31 = (((2 * (v29 + v28)) & 0xAC7FF88AB7D467A0) - (v29 + v28) - 0x563FFC455BEA33D1) ^ 0x4D5D746523287351;
  v32 = v31 ^ __ROR8__(v28, 61);
  v33 = __ROR8__(v31, 8);
  v34 = ((__ROR8__(v30, 8) + (v30 ^ __ROR8__(v25, 61))) ^ 0xAB3042D228875C41) >> (8 * (v11 & 7u));
  v35 = (v33 + v32 - ((2 * (v33 + v32)) & 0xBB63D01A1060ED3ALL) - 0x224E17F2F7CF8963) ^ 0x281319B4BDE0C494;
  v36 = v35 ^ __ROR8__(v32, 61);
  v37 = *(STACK[0x330] + 8 * (LODWORD(STACK[0x32C]) - 5500));
  *v11 = v34 ^ HIBYTE(LODWORD(STACK[0x270])) ^ 0xDD;
  v38 = (__ROR8__(v35, 8) + v36) ^ 0x5963B6C555D97F1FLL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ a4;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (((2 * (v42 + v41)) | 0x63B77BB044F1F226) - (v42 + v41) + 0x4E244227DD8706EDLL) ^ 0xD518A1DA52FC277FLL;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0x1A2AEBE44253AF03;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  *(v11 + 1) = (((v47 + v46 - ((2 * (v47 + v46)) & 0x7F0D34FB28D08226) + 0x3F869A7D94684113) ^ 0x94B6D8AFBCEF1D52) >> (8 * ((v11 + 1) & 7))) ^ BYTE2(v10) ^ 0x60;
  v48 = __ROR8__((v11 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v49 = ((2 * v48 + 0x2A11B965E67D9C56) & 0xC8758E867E4F43EALL) - v48 + 0x6BC5C09CD998FDFLL;
  v50 = __ROR8__(v49 ^ 0xD22C7A87AFCEB9D8, 8);
  v49 ^= 0x7A6A9F103638C884uLL;
  v51 = (v50 + v49) ^ 0xE49D77DF873DBF7ELL;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0xF5A2F1B9B5D0B209;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0x5963B6C555D97F1FLL;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = __ROR8__(v55, 8);
  v58 = (((2 * (v57 + v56)) | 0x316A40512FDE1242) - (v57 + v56) + 0x674ADFD76810F6DFLL) ^ 0xF9F0BD0267F02DD6;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0x64C31C027084DE6CLL;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ 0x1A2AEBE44253AF03;
  *(v11 + 2) = (((__ROR8__(v62, 8) + (v62 ^ __ROR8__(v61, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v11 + 2) & 7))) ^ BYTE1(v10) ^ 0xF8;
  v63 = __ROR8__((v11 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v64 = (0xAF7234D0CC131D4 - v63) & 0x126AA61F6F56C0D8 | (v63 + v8) & v9;
  v65 = v64 ^ v7;
  v66 = v64 ^ v5;
  v67 = (__ROR8__(v65, 8) + v66) ^ 0xE49D77DF873DBF7ELL;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ 0xF5A2F1B9B5D0B209;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = __ROR8__(v69, 8);
  v72 = ((a1 | (2 * (v71 + v70))) - (v71 + v70) + a3) ^ v6;
  v73 = v72 ^ __ROR8__(v70, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ a4;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ 0x64C31C027084DE6CLL;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = (__ROR8__(v76, 8) + v77) ^ 0x1A2AEBE44253AF03;
  *(v11 + 3) = v10 ^ a5 ^ (((__ROR8__(v78, 8) + (v78 ^ __ROR8__(v77, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v11 + 3) & 7)));
  return v37();
}

uint64_t sub_1E3320080(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = 1710126949 * (((a1 | 0x1DAA112) - (a1 & 0x1DAA112)) ^ 0x33C1FA82);
  v3 = *(a1 + 8) ^ v2;
  v19 = v3 - 1875091903 * (&v18 ^ 0x36758383) + 20587403;
  v4 = *(&off_1F5DB1610 + v3 - 940080099) - 8;
  (*&v4[8 * (v3 ^ 0x38085938)])(&v18);
  v5 = 1875091903 * (((&v18 | 0x402FB4F9) - &v18 + (&v18 & 0xBFD04B04)) ^ 0x765A377A);
  v18 = v5 ^ (v3 - 1059747090);
  v19 = v5 ^ 0x5D845C70;
  result = (*&v4[8 * v3 - 0x1C042B9C8])(&v18);
  if (v20 == 203186117 || v20 == 203186114)
  {
    v7 = *(a1 + 12) + v2;
    v8 = ((v7 & 0xD9A67BD6) << (-93 * (v3 ^ 0xF7) - 70)) & (v7 ^ 0x9DA57387) ^ v7 & 0xD9A67BD6;
    v9 = ((2 * (v7 ^ 0xADAD808B)) ^ 0xE817F6BA) & (v7 ^ 0xADAD808B) ^ (2 * (v7 ^ 0xADAD808B)) & 0x740BFB5C;
    v10 = v9 ^ 0x14080945;
    v11 = (v9 ^ 0x7003F21C) & (4 * v8) ^ v8;
    v12 = ((4 * v10) ^ 0xD02FED74) & v10 ^ (4 * v10) & 0x740BFB5C;
    v13 = (v12 ^ 0x500BE940) & (16 * v11) ^ v11;
    v14 = ((16 * (v12 ^ 0x24001209)) ^ 0x40BFB5D0) & (v12 ^ 0x24001209) ^ (16 * (v12 ^ 0x24001209)) & 0x740BFB50;
    v15 = v13 ^ 0x740BFB5D ^ (v14 ^ 0x400BB100) & (v13 << 8);
    v16 = (v15 << 16) & 0x740B0000 ^ v15 ^ ((v15 << 16) ^ 0x7B5D0000) & (((v14 ^ 0x34004A0D) << 8) & 0x740B0000 ^ 0x74000000 ^ (((v14 ^ 0x34004A0D) << 8) ^ 0xBFB0000) & (v14 ^ 0x34004A0D));
    v17 = 956911519 * (((&v18 | 0x4ECBBE91) - &v18 + (&v18 & 0xB134416C)) ^ 0xA45ACE94);
    v20 = v3 - v17 + 1927849047;
    v18 = v17 ^ v7 ^ (2 * v16) ^ 0x1B46DBD6;
    (*&v4[8 * v3 - 0x1C042B788])(&v18);
    __asm { BRAA            X8, X17 }
  }

  return result;
}

uint64_t sub_1E33204B4()
{
  if (v1)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v4 || v0 == 0;
  return (*(v3 + 8 * ((97 * v6) ^ 0x4B6u)))();
}

uint64_t sub_1E3320608@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, __int16 a4@<W8>)
{
  v9 = 2493 * (v5 ^ 0x1392);
  v10 = ((v9 ^ 0x1375) & v4) + 19;
  v11 = *(v6 + (v10 * a1 - (((((v10 * a1) & 0xFFFEu) * a2) >> 16) >> 7) * a3));
  v12 = v8;
  v13 = v8 % 0xE;
  v14 = STACK[0x77F];
  v15 = STACK[0x588];
  LOBYTE(STACK[0x77F]) = v11;
  v16 = v10 * ((v11 ^ 0xFF87 | v11 ^ 0x18) & a1);
  *(v6 + (v16 - ((((v16 & 0xFFFEu) * a2) >> 16) >> 7) * a3)) = v14;
  v17 = STACK[0x5B0];
  v18 = LODWORD(STACK[0x5B0]) % 0xD;
  v19 = STACK[0x81D];
  v20 = (v15 % 0xF * a1 + 3160 - (((4329 * ((v15 % 0xF * a1 + 3160) & 0xFFFE)) >> 16) >> 6) * a3);
  LOBYTE(STACK[0x81D]) = *(v6 + v20);
  *(v6 + v20) = v19;
  LOBYTE(v20) = STACK[0x8BB];
  v21 = (v13 * a1 + 3318 - (((4329 * ((v13 * a1 + 3318) & 0xFFFEu)) >> 16) >> 6) * a3);
  v17 ^= 0x1076C98Bu;
  v22 = v17 - 1738597062;
  LOBYTE(STACK[0x8BB]) = *(v6 + v21);
  v23 = v4 ^ 0xBCF3EAF2;
  *(v6 + v21) = v20;
  LODWORD(v20) = (v12 - (v4 ^ 0xBCF3EAF2)) ^ v17;
  v24 = (v18 * a1 + 3476 - (((4329 * ((v18 * a1 + 3476) & 0xFFFEu)) >> 16) >> 6) * a3);
  LOBYTE(v17) = STACK[0x959];
  v25 = v15 + v4 - 580771575;
  v26 = v23 - v20;
  LOBYTE(STACK[0x959]) = *(v6 + v24);
  *(v6 + v24) = v17;
  LOWORD(v12) = a4 + (((2 * (v25 % 0xB)) & 0xA) + ((v25 % 0xB) ^ 5)) * a1;
  v27 = STACK[0x9F7];
  v28 = (v26 % 0xC * a1 + 3634 - (((4329 * ((v26 % 0xC * a1 + 3634) & 0xFFFE)) >> 16) >> 6) * a3);
  LOBYTE(STACK[0x9F7]) = *(v6 + v28);
  *(v6 + v28) = v27;
  LOBYTE(v28) = STACK[0xA95];
  v29 = (v12 - ((((v12 & 0xFFFE) * a2) >> 16) >> 7) * a3);
  LOBYTE(STACK[0xA95]) = *(v6 + v29);
  *(v6 + v29) = v28;
  LOBYTE(v29) = STACK[0x76A];
  v30 = (v20 % 0xA * a1 + 3950 - (((4329 * ((v20 % 0xA * a1 + 3950) & 0xFFFE)) >> 16) >> 6) * a3);
  LOBYTE(STACK[0x76A]) = *(v6 + v30);
  *(v6 + v30) = v29;
  v31 = (v22 % 9 * a1 + 4108 - (((((v22 % 9 * a1 + 4108) & 0xFFFE) * a2) >> 16) >> 7) * a3);
  v26 ^= 0x154201F3u;
  v32 = v26 ^ v25;
  LOBYTE(v28) = STACK[0x808];
  LOBYTE(STACK[0x808]) = *(v6 + v31);
  *(v6 + v31) = v28;
  LOBYTE(v28) = STACK[0x8A6];
  v33 = (((v26 + 15100) & 7) * a1 + 4266 - (((4329 * (((v26 + 700922620) & 7) * a1 + 4266)) >> 16) >> 6) * a3);
  LOBYTE(STACK[0x8A6]) = *(v6 + v33);
  LODWORD(v20) = (v26 ^ v22) + v20 + v32;
  *(v6 + v33) = v28;
  LOWORD(v29) = (v32 + 1229034082) % 7u * a1 + 4424;
  LOBYTE(v28) = STACK[0x944];
  v34 = (v29 - (((4329 * (v29 & 0xFFFE)) >> 16) >> 6) * a3);
  LOBYTE(STACK[0x944]) = *(v6 + v34);
  *(v6 + v34) = v28;
  LOBYTE(v28) = STACK[0x9E2];
  LODWORD(v24) = v22 % 5;
  v35 = (v20 % 6 * a1 + 4582 - (((4329 * ((v20 % 6 * a1 + 4582) & 0xFFFE)) >> 16) >> 6) * a3);
  LOBYTE(STACK[0x9E2]) = *(v6 + v35);
  *(v6 + v35) = v28;
  LOBYTE(v22) = (v26 - 4) ^ v22;
  LODWORD(v24) = v24 * a1;
  LOBYTE(v26) = v22 + v26 - v20;
  LOBYTE(v35) = STACK[0xA80];
  LOBYTE(STACK[0xA80]) = *(v6 + ((v24 + 4740) & 0xFFFEu) % ((379 - v24) & a3 ^ (v24 + 4740) & 0x3C8u));
  *(v6 + (v24 + 4740 - (((4329 * (v24 + 4740)) >> 16) >> 6) * a3)) = v35;
  LOBYTE(v20) = v20 - v22;
  v36 = ((v26 & 3) * a1 + 4898 - (((4329 * ((v26 & 3) * a1 + 4898)) >> 16) >> 6) * a3);
  LOBYTE(v22) = STACK[0x755];
  LOBYTE(STACK[0x755]) = *(v6 + v36);
  *(v6 + v36) = v22;
  v37 = ((v32 - 824529894) % 3u * a1 + 5056 - (((4329 * (((v32 - 824529894) % 3u * a1 + 5056) & 0xFFFE)) >> 16) >> 6) * a3);
  LOBYTE(v32) = STACK[0x7F3];
  LOBYTE(STACK[0x7F3]) = *(v6 + v37);
  *(v6 + v37) = v32;
  v38 = (v20 & 1) == 0;
  v39 = 433;
  if (!v38)
  {
    v39 = 591;
  }

  v40 = STACK[0x891];
  LOBYTE(STACK[0x891]) = *(&STACK[0x6E0] + v39);
  *(&STACK[0x6E0] + v39) = v40;
  v41 = (16 * *(STACK[0x5A0] + (-6286 - (((59250 * a2) >> 16) >> 7) * a3))) ^ 0x90;
  v42 = (v41 - ((2 * v41) & 0x20) + 25) ^ *(STACK[0x5A0] + (-6286 - (((59250 * a2) >> 16) >> 7) * a3));
  v43 = (*(*(&off_1F5DB1610 + (v9 ^ 0x121B)) + (353 * (v42 ^ 0xBF) + 6354 - 944 * ((4549754 * (353 * (v42 ^ 0xBFu) + 6354)) >> 32)) - 4) ^ v42 ^ 0x81 ^ ((v42 ^ 0x81) + 116) ^ 0x4D) * a1;
  *(STACK[0x5A0] + (70942 - 73 * a3)) = *(STACK[0x5A0] + ((v43 + 3002) & 0xFFFEu) % ((((v43 + 3002) & 0x2BCA) + ((13381 - v43) & 0x2BCB)) & 0x47CDu));
  return (*(v7 + 8 * (v9 ^ 0xEA)))();
}

uint64_t sub_1E3320C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (v3 - 4424)) ^ v3)))();
}

uint64_t sub_1E3320D34()
{
  v4 = 17 * (v3 ^ 0x6A8);
  v10 = (v3 + 6579) ^ ((((&v8 | 0x626C3763) - &v8 + (&v8 & 0x9D93C898)) ^ 0x3A05E401) * v1);
  v9 = v7;
  (*(v0 + 8 * (v3 + 7845)))(&v8);
  v9 = v6;
  v10 = (v4 + 7003) ^ (((&v8 & 0x29BBA9E8 | ~(&v8 | 0x29BBA9E8)) ^ 0x8E2D8575) * v1);
  (*(v0 + 8 * (v4 ^ 0x20B3)))(&v8);
  return (v2 - 16257999);
}

uint64_t sub_1E3320EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v11 = v8 + 32;
  v12 = (((v7 + v6) + a2) ^ v11) + v5;
  v13 = *(a4 + v12 - 15);
  v14 = *(a4 + v12 - 31);
  v15 = a1 + v12;
  *(v15 - 15) = v13;
  *(v15 - 31) = v14;
  return (*(v10 + 8 * (((v9 == v11) * a3) ^ (v4 + v7 + 2200))))();
}

uint64_t sub_1E3320EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 != 0) * v4) ^ v2)))();
}

uint64_t sub_1E3320ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = v13 ^ 0x1E31;
  v18 = ((v14 + 444718648) ^ 0x1A81DE38u) < (v16 ^ 0x4B0u) || (a13 - a1) < 0x20;
  return (*(v15 + 8 * ((90 * (((v16 + 107) ^ v18) & 1)) ^ v16)))();
}

uint64_t sub_1E3320F44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W8>)
{
  v4 = (a3 + 1256909949) & 0xB5153478;
  v5 = STACK[0x6F0];
  if (STACK[0x8B0])
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  return (*(v3 + 8 * ((v7 * (v4 ^ 0x37A8)) ^ (v4 - 5207))))(v5, a1, a2, 16215976);
}

uint64_t sub_1E3320F68@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 ^ 0x1DA6;
  v6 = _byteswap_ulong(*(((2 * (a1 + 6)) & 0x1F5E7BBBEFFF94DCLL) + ((a1 + 6) ^ 0xFAF3DDDF7FFCA6ELL) + v1 - 0xFAF3DDDF7FFCA6ELL));
  v7 = ((v6 + 197499219 - 2 * (v6 & 0xBC5995F ^ *(((2 * (a1 + 6)) & 0x1F5E7BBBEFFF94DCLL) + ((a1 + 6) ^ 0xFAF3DDDF7FFCA6ELL) + v1 - 0xFAF3DDDF7FFCA6BLL) & 0xC)) ^ 0xBC59953) + a1 + 10 > v3;
  return (*(v4 + 8 * (((4 * v7) | (8 * v7)) ^ v5)))();
}

uint64_t sub_1E3321058@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = a2 - 2915;
  v4 = (a2 + 1209375294) & 0xB7EA5F5F;
  v5 = (*(v2 + 8 * (a2 + 3297)))(a1, 3597337111) != 0;
  return (*(v2 + 8 * ((v5 * (v4 - 4649)) ^ v3)))();
}

uint64_t sub_1E33210BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22, uint64_t a23, uint64_t a24)
{
  v29 = 1875091903 * (((&a21 | 0xAFACA343) + (~&a21 | 0x50535CBC)) ^ 0x99D920C1);
  HIDWORD(a21) = (v27 ^ 0x745FF6AE) + ((2 * v27) & 0xE8BFED5C) - 1413693444 + v29;
  a22 = v29 + 7724;
  a23 = a17;
  (*(v28 + 77160))(&a21);
  a22 = 1824088897 * (((&a21 | 0xDB43A985) - (&a21 & 0xDB43A985)) ^ 0x832A7AE7) + 2305;
  a21 = v26;
  a23 = a17;
  (*(v28 + 76720))(&a21);
  v30 = 1875091903 * (&a21 ^ 0x36758383);
  HIDWORD(a21) = (v25 ^ 0x705EBEFE) + ((2 * v25) & 0xE0BD7DFC) - 1346504788 + v30;
  a22 = v30 + 7724;
  a23 = a17;
  (*(v28 + 77160))(&a21);
  v31 = 1824088897 * (((~&a21 & 0xD6EC4ADE) - (~&a21 | 0xD6EC4ADF)) ^ 0x8E8599BD);
  LODWORD(a21) = v31 + 3757;
  a22 = (v24 ^ 0xEFBCFEFA) + ((2 * v24) & 0xDF79FDF4) - v31 + 1592257424;
  a24 = a17;
  a23 = a14;
  v32 = (*(v28 + 77048))(&a21);
  return (*(v28 + 8 * ((1579 * (HIDWORD(a21) == 16257999)) ^ 0x10D3u)))(v32);
}

uint64_t sub_1E33212F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, unint64_t a17, uint64_t a18, uint64_t a19)
{
  v24 = 956911519 * ((v23 - 2 * (v23 & 0xA952DA6382B3F005) - 0x56AD259C7D4C0FFBLL) ^ 0xEC64AFBF68228000);
  a15 = v24 ^ 0x3FE;
  a17 = v21 - ((2 * v21) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + v24;
  a18 = a14;
  (*(v22 + 76792))(&a15);
  v25 = 1824088897 * ((v23 & 0xEFBDF3CC | ~(v23 | 0xEFBDF3CC)) ^ 0x482BDF51);
  a15 = v25 + 3757;
  LODWORD(a17) = (v20 ^ 0xEEBFEB9A) + ((2 * v20) & 0xDD7FD734) - v25 + 1608842992;
  a18 = v19;
  a19 = a14;
  v26 = (*(v22 + 77048))(&a15);
  return (*(v22 + 8 * ((5241 * (a16 == 16257999)) ^ 0xF58u)))(v26);
}

uint64_t sub_1E3321460@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 40 * v1 + 28);
  switch(v4)
  {
    case 1:
      v7 = STACK[0x900];
      STACK[0x530] = *(v2 + 8 * (v3 - 5989));
      return (*(v2 + 8 * ((((((v3 - 50622660) & 0x3047BFE) + 804579327) & 0xD00AF777 ^ 0x3B8) * (v7 == 0)) ^ (v3 - 50622660) & 0x3047BFE)))();
    case 3:
      v6 = *(a1 + 40 * v1 + 16);
      return (*(v2 + 8 * ((((((v3 ^ 0x1BD3u) + 0x7DFFC3FB333AE65ELL) & (2 * v6)) + (v6 ^ 0x3EFFE1FD999D7937) != 0x3EFFE1FD999D7937) * ((v3 ^ 0x157E) - 598)) ^ (v3 + 3303))))();
    case 2:
      return (*(v2 + 8 * (((STACK[0x900] == 0) * ((v3 - 5471) ^ 0x210)) ^ (v3 - 4361))))();
    default:
      return (STACK[0x780])();
  }
}

uint64_t sub_1E33215C0(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *v1 = a1;
  return (*(v3 + 8 * (((STACK[0x8C0] != 0) * ((v2 + 3765) ^ 0x1680)) ^ (v2 + 3675))))();
}

void sub_1E33215FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x534]) = v6;
  LODWORD(STACK[0x56C]) = v5;
  LODWORD(STACK[0x528]) = a4 + 1;
  LODWORD(STACK[0x5A8]) = v4 + 4781;
  JUMPOUT(0x1E3321694);
}

uint64_t sub_1E3321790(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, unsigned int a40)
{
  LODWORD(STACK[0x4A0]) += v41;
  LODWORD(STACK[0x540]) = a5 + LODWORD(STACK[0x44C]);
  LODWORD(STACK[0x4C8]) += 64;
  LODWORD(STACK[0x56C]) = LODWORD(STACK[0x4C0]) + LODWORD(STACK[0x548]);
  v48 = a6 & 0x40000;
  if ((a6 & 0x40000 & a8) != 0)
  {
    v48 = -v48;
  }

  LODWORD(STACK[0x588]) = a4 ^ a7;
  LODWORD(STACK[0x548]) = ((((v48 + a8) ^ a6 & 0xFFFBFFFF) - a6) ^ ((v44 ^ a8) - v44) ^ ((a4 ^ a7 ^ v43 ^ a8) - (a4 ^ a7 ^ v43))) - v47;
  v49 = v40 + 951808442;
  v50 = (a7 - v43) ^ a3;
  v51 = a7 - v43 + v40 + 951808442;
  v52 = LODWORD(STACK[0x310]) + 914;
  LODWORD(STACK[0x538]) = v52;
  v53 = v52 ^ 0xA1Au;
  STACK[0x5B0] = v53;
  v54 = v50 ^ v43 ^ (v53 - 208039948);
  v55 = STACK[0x584];
  v56 = v44 - a6;
  v57 = v46 + 951808442;
  v58 = v56 ^ v42;
  v59 = v56 + v57;
  v60 = v58 ^ a6 ^ 0xF399A2F4;
  v61 = ((LODWORD(STACK[0x590]) ^ 0xF399A2F4 ^ v58 ^ a6) - v60) ^ ((v59 ^ LODWORD(STACK[0x590])) - v59) ^ ((v51 ^ LODWORD(STACK[0x584]) ^ v54 ^ LODWORD(STACK[0x590])) - (v51 ^ LODWORD(STACK[0x584]) ^ v54));
  v62 = v51 - (v50 ^ 0xB72E331);
  v63 = v59 - (v58 ^ 0xB72E331);
  v50 ^= 0x7E07931Au;
  v64 = v50 - 284194973;
  v65 = v54 - v50 + v62;
  v66 = STACK[0x550];
  v67 = STACK[0x580];
  v68 = ((v50 - 284194973 + v62) ^ v66 ^ v65 ^ LODWORD(STACK[0x580])) - ((v50 - 284194973 + v62) ^ v66 ^ v65);
  LODWORD(STACK[0x53C]) = v61 - v57;
  v69 = v57 - v60;
  v58 ^= 0x7E07931Au;
  v70 = v60 - v58;
  v58 -= 284194973;
  v71 = v70 + v63;
  v72 = (((v70 + v63) ^ v67) - (v70 + v63)) ^ (((v63 + v58) ^ v67) - (v63 + v58)) ^ v68;
  v73 = (v40 + 951808442 - v54) ^ v64;
  v64 ^= 0x6B189F9Au;
  v74 = v65 + v64;
  v75 = (v73 + 262065247) ^ v62;
  v62 += 1311201533;
  v76 = v74 ^ 0x8598ACE6;
  v77 = STACK[0x57C];
  v78 = STACK[0x58C];
  v79 = (v62 ^ LODWORD(STACK[0x57C]) ^ v74 ^ 0x8598ACE6 ^ LODWORD(STACK[0x58C])) - (v62 ^ LODWORD(STACK[0x57C]) ^ v74 ^ 0x8598ACE6);
  v80 = v69 ^ v58;
  LODWORD(STACK[0x590]) = v72 - v80;
  v81 = (v80 + 262065247) ^ v63;
  v82 = v58 ^ 0x6B189F9A;
  v83 = v71 + (v58 ^ 0x6B189F9A);
  v63 += 1311201533;
  v84 = v78 ^ 0x8598ACE6 ^ v83;
  v83 ^= 0x8598ACE6;
  v85 = (v84 - v83) ^ ((v63 ^ v78) - v63) ^ v79;
  v86 = v75 + v62;
  v87 = (v75 + v62) ^ v74 ^ 0x8598ACE6;
  v88 = v62 - v87;
  v89 = v85 - v81;
  v90 = v81 + v82;
  v91 = v81 + v63;
  v92 = (v81 + v63) ^ v83;
  v93 = v90 + v92;
  v94 = v63 - v92;
  v95 = v88 - 2095050516;
  v96 = v86 - v88;
  v97 = v93 ^ v94;
  v98 = v91 - v94;
  v99 = v94 - 2095050516;
  v100 = ((LODWORD(STACK[0x524]) ^ v99) - v99) ^ ((LODWORD(STACK[0x524]) ^ v83) - v83) ^ ((v76 ^ v45 ^ (v88 - 2095050516) ^ LODWORD(STACK[0x524])) - (v76 ^ v45 ^ (v88 - 2095050516)));
  v101 = ((v75 + v64 + v87) ^ v88) + v76;
  v102 = v101 + v96;
  v103 = (v95 - (v101 + v96)) ^ (v101 + v96);
  v104 = v76 + 748749322;
  v105 = STACK[0x560];
  LODWORD(v106) = __ROR4__((v76 + 748749322) ^ STACK[0x560] ^ v103, 21) ^ 0x49CBD68F;
  HIDWORD(v106) = v106;
  v107 = STACK[0x54C];
  v108 = (LODWORD(STACK[0x54C]) ^ 0xD1E9397A ^ (v106 >> 11)) - ((v106 >> 11) ^ 0xD1E9397A);
  v109 = v97 + v83;
  LODWORD(STACK[0x58C]) = v100 - v98;
  v110 = v97 + v83 + v98;
  v111 = (v99 - v110) ^ v110;
  v112 = v109 + v83 + 748749322;
  v110 ^= 0xB915FEB5;
  v113 = (((v111 ^ v107) - v111) ^ (((v83 + 748749322) ^ v107) - (v83 + 748749322)) ^ v108) - v110;
  v114 = v110 - (v83 + 748749322);
  v115 = v101 + v76 + 748749322;
  v116 = v76 + 2103518918 + v115 - v103;
  v117 = STACK[0x570];
  v118 = v83 + 2103518918 + v112 - v111;
  v119 = (((v118 ^ LODWORD(STACK[0x55C])) - v118) ^ (((v111 + 1814602028) ^ LODWORD(STACK[0x55C])) - (v111 + 1814602028)) ^ (((v103 + 1814602028) ^ v117 ^ v116 ^ LODWORD(STACK[0x55C])) - ((v103 + 1814602028) ^ v117 ^ v116))) - (v114 + v118);
  v120 = v102 ^ 0xB915FEB5;
  v121 = (v102 ^ 0xB915FEB5) - v104;
  v122 = (v121 ^ v115 ^ v116) - v121;
  v123 = v121 + v116;
  LODWORD(STACK[0x450]) += v77 + v75;
  LODWORD(STACK[0x46C]) += LODWORD(STACK[0x53C]);
  LODWORD(STACK[0x480]) += v66 + v73;
  LODWORD(STACK[0x44C]) = LODWORD(STACK[0x540]) + a4;
  LODWORD(STACK[0x490]) += v119;
  LODWORD(STACK[0x47C]) += v45 + v96;
  LODWORD(STACK[0x458]) += v89;
  v124 = v116 - 1213748154;
  v125 = v123 + (((v119 & 0x9FFBB896 ^ 0x9FFBB896) + (v119 & 0x9FFBB896)) & 0xB5EF29BE) * (((v103 + 1806959417) & 0xA9A0A84F ^ 0xA9A0A84F) + ((v103 + 1806959417) & 0xA9A0A84F)) - 1112295940;
  v126 = v83 - 58 + v112 - v111 + 70;
  LODWORD(STACK[0x45C]) += v55 + v49;
  v127 = v126 ^ (v111 + 45);
  v128 = v122 + v116 - 1213748154;
  v129 = (((v114 ^ v112 ^ (v83 - 58 + v112 - v111)) - v114) ^ v126) + 2 * (((v114 ^ v112 ^ (v83 - 58 + v112 - v111)) - v114) & v126);
  v130 = LODWORD(STACK[0x548]) + LODWORD(STACK[0x460]);
  LOBYTE(STACK[0x94C]) = (v116 + 70) ^ (v103 + 45) ^ 0x34;
  LODWORD(STACK[0x4C0]) = LODWORD(STACK[0x56C]) - 2124391199;
  LODWORD(STACK[0x440]) += v105 + v120;
  v131 = ((v116 - 1213748154) ^ (v103 + 1252981805)) - 1452489720;
  v132 = LODWORD(STACK[0x4C4]) - 1699839473;
  v133 = a40 - 1734770482 < v132;
  if (v132 < 0x989980CE != a40 > 0x67667F31)
  {
    v133 = v132 < 0x989980CE;
  }

  LOBYTE(STACK[0x858]) = v118 + 70 + v114 - ((2 * (v118 + 70 + v114)) & 0xE7) - 13;
  LODWORD(STACK[0x488]) += v113;
  LOBYTE(STACK[0x9B1]) = v129 - ((2 * v129) & 0xE7) - 13;
  LOBYTE(STACK[0xAC0]) = v118 + 70 - ((2 * (v118 + 70)) & 0xE7) - 13;
  LOBYTE(STACK[0x967]) = v127 - ((2 * v127) & 0xE7) - 13;
  v134 = v118 + 70 + v114 - 112;
  LODWORD(STACK[0x498]) += v123 + v117;
  LOBYTE(STACK[0x83D]) = v125 ^ 0x34;
  v135 = (v125 - 721262192) ^ v131;
  LOBYTE(STACK[0xAA5]) = (v116 + 70) ^ 0x34;
  v136 = v131 + v128;
  v137 = v125 - 721262192 + v136;
  v138 = v127 + 8;
  v139 = v129 + v127 + 8;
  v140 = (v137 ^ v124 ^ 0x67718FEE) + 2 * (v137 & (v124 ^ 0x67718FEE));
  v141 = v138 ^ v134;
  LOBYTE(STACK[0x996]) = v128 ^ 0x34;
  LOBYTE(STACK[0x72E]) = v135 ^ 0x34;
  LOBYTE(STACK[0x887]) = v140 ^ 0x34;
  LOBYTE(STACK[0x9E0]) = v137 ^ 0x34;
  LOBYTE(STACK[0x749]) = v141 - ((2 * v141) & 0xE7) - 13;
  v142 = v140 - v137;
  v143 = v139 + v134;
  v144 = v137 ^ v135;
  LOBYTE(v135) = v143 + (v126 ^ 0xEE);
  v139 ^= 0x59u;
  v145 = v140 + (v136 ^ 0x46DC7F59);
  LOBYTE(STACK[0x9FB]) = v143 - ((2 * v143) & 0xE7) - 13;
  LOBYTE(STACK[0x793]) = v139 - ((2 * v139) & 0xE7) - 13;
  v146 = v144 ^ v145;
  v145 -= 217335541;
  v147 = v142 ^ 0x2568FC38;
  LOBYTE(STACK[0x8A2]) = v135 - ((2 * v135) & 0xE7) - 13;
  LOBYTE(STACK[0x778]) = v136 ^ 0x6D;
  v148 = v135 + v139;
  v149 = v143 ^ v141 ^ v148;
  LOBYTE(STACK[0x8D1]) = v146 ^ 0x34;
  v150 = v148 + 11;
  LOBYTE(STACK[0x8EC]) = v149 - ((2 * v149) & 0xE7) - 13;
  v151 = (v148 + 11) ^ (v143 - 30);
  v152 = v145 ^ (v137 - 951641630);
  LOBYTE(STACK[0xA2A]) = v142 ^ 0xC;
  v153 = v146 - v152;
  v154 = v126 ^ 0xD6;
  LOBYTE(STACK[0xA45]) = v154 - ((2 * v154) & 0xE7) - 13;
  v155 = v147 + v145;
  LOBYTE(STACK[0x7DD]) = v151 - ((2 * v151) & 0xE7) - 13;
  v156 = (v152 ^ 0xE195107B) - (v147 + v145);
  v157 = v156 & 0x8000000;
  LOBYTE(STACK[0x7C2]) = v152 ^ 0x34;
  LOBYTE(STACK[0x91B]) = v145 ^ 0x34;
  LOBYTE(STACK[0x936]) = v150 - ((2 * v150) & 0xE7) - 13;
  v158 = v149 - v151;
  v159 = v147 - 1431892761;
  v160 = STACK[0x4C8] & 0x1005309;
  v161 = v155 - 640345925;
  if ((v156 & 0x8000000 & v153) != 0)
  {
    v157 = -v157;
  }

  v162 = v150 + v154;
  v163 = (v157 + v153) ^ v156 & 0xF7FFFFFF;
  v164 = (v151 ^ 0x7B) - v162;
  LOBYTE(STACK[0xA74]) = (v157 + v153) ^ v156 ^ 0x34;
  v165 = v164 ^ v158;
  v166 = v162 - 69;
  LOBYTE(STACK[0xA8F]) = v165 - ((2 * v165) & 0xE7) - 13;
  v167 = (v161 ^ v159) - v156;
  LOBYTE(STACK[0xAD9]) = v166 - ((2 * v166) & 0xE7) - 13;
  LOBYTE(STACK[0x965]) = v156 ^ 0x34;
  v168 = v156 + (v161 ^ 0x543C7D45);
  v169 = v166 ^ (v154 - (((v160 ^ 9) + v160) | 0x10));
  LOBYTE(STACK[0x827]) = v169 + (~(2 * v169) | 0x19) - 12;
  v170 = v169 - v164;
  v171 = v163 + v167;
  v172 = v168 ^ v161 ^ 0x543C7D45;
  v173 = v165 - 37 + v170;
  LOBYTE(STACK[0xABE]) = v161 ^ 0x34;
  LOBYTE(STACK[0x980]) = v164 - ((2 * v164) & 0xE7) - 13;
  LOBYTE(STACK[0x80C]) = v161 ^ v159 ^ 0x34;
  v174 = (v171 + 39950555) ^ v167;
  v175 = v164 + (v166 ^ 0x45);
  v176 = v175 ^ v166 ^ 0x45;
  LOBYTE(STACK[0x9AF]) = (v171 - 37) ^ v167 ^ 0x34;
  v168 += 1235244956;
  v175 -= 100;
  LOBYTE(STACK[0x856]) = (v171 - 37) ^ 0x34;
  LOBYTE(STACK[0x8BB]) = v176 + (~(2 * v176) | 0x19) - 12;
  LOBYTE(STACK[0x747]) = v168 ^ 0x34;
  LOBYTE(STACK[0x762]) = v175 - ((2 * v175) & 0xE7) - 13;
  LOBYTE(v171) = v173 ^ v170;
  v177 = v175 + v176;
  v178 = v174 + v172 + v168;
  LOBYTE(STACK[0x871]) = v173 - ((2 * v173) & 0xE7) - 13;
  LOBYTE(STACK[0x9CA]) = (v173 ^ v170) - ((2 * (v173 ^ v170)) & 0xE7) - 13;
  v179 = (v176 ^ 0x9C) + 48;
  v180 = (v172 ^ 0xACBAD39C) - 660219088;
  v181 = v179 ^ v170;
  v182 = v180 ^ v167;
  LOBYTE(v171) = v171 + v177;
  LOBYTE(STACK[0x8A0]) = v172 ^ 0x34;
  v183 = v178 ^ (v172 + v168);
  LOBYTE(STACK[0x9F9]) = v182 ^ 0x34;
  v184 = v171 ^ v177;
  LOBYTE(v171) = v171 + 63;
  v185 = v182 - 2136490433 + v178;
  LOBYTE(STACK[0xA14]) = v181 - ((2 * v181) & 0xE7) - 13;
  LOBYTE(STACK[0x791]) = (v178 + 63) ^ 0x34;
  LOBYTE(STACK[0xA43]) = ((v172 ^ 0x9C) + 48) ^ 0x34;
  LOBYTE(STACK[0x905]) = v184 + (~(2 * v184) | 0x19) - 12;
  v186 = v184 ^ v181;
  LOBYTE(STACK[0x7AC]) = v171 - ((2 * v171) & 0xE7) - 13;
  v187 = v185 ^ v180;
  v188 = (v185 ^ v180) - 1083229416;
  v189 = v185 - v188;
  LOBYTE(v171) = v171 + v181;
  LOBYTE(STACK[0xA5E]) = v179 - ((2 * v179) & 0xE7) - 13;
  v190 = v182 + 1486567716 + v189;
  LOBYTE(STACK[0x8EA]) = v183 ^ 0x34;
  v191 = (v183 ^ v182) + 1662668881;
  v192 = (v171 ^ v179) + 24;
  LOBYTE(v171) = v171 - v192;
  LOBYTE(STACK[0x7DB]) = v190 ^ 0x34;
  LOBYTE(STACK[0x934]) = v189 ^ 0x34;
  v193 = ((2 * v181) & 0x48) + (v181 ^ 0x24) + v171;
  v194 = v189 + v191;
  LOBYTE(STACK[0x7F6]) = v193 - ((2 * v193) & 0xE7) - 13;
  v186 += 81;
  LOBYTE(STACK[0x94F]) = v171 - ((2 * v171) & 0xE7) - 13;
  LOBYTE(STACK[0x825]) = v188 ^ 0x34;
  LOBYTE(STACK[0xAA8]) = v186 - ((2 * v186) & 0xE7) - 13;
  LOBYTE(STACK[0xA8D]) = v191 ^ 0x34;
  v195 = v190 ^ (v189 + v191);
  v196 = v189 + 44792061;
  v197 = v195 ^ (v189 + 44792061);
  LOBYTE(STACK[0x840]) = v192 - ((2 * v192) & 0xE7) - 13;
  v198 = v171 + v186;
  v199 = v192 - v193;
  v200 = v198 ^ v193;
  v201 = v187 - v190 + 1973029423;
  LOBYTE(v171) = v171 - 3;
  v202 = v194 + v196;
  v203 = v171 + v198;
  v199 += 23;
  LOBYTE(v171) = v200 ^ v171;
  LOBYTE(STACK[0x97E]) = v195 ^ 0x50;
  LOBYTE(STACK[0x731]) = v171 - ((2 * v171) & 0xE7) - 13;
  LOBYTE(STACK[0x86F]) = v202 ^ 0x34;
  LOBYTE(STACK[0x88A]) = v203 + (~(2 * v203) | 0x19) - 12;
  LOBYTE(STACK[0x9E3]) = v199 - ((2 * v199) & 0xE7) - 13;
  v200 ^= 0x64u;
  LOBYTE(STACK[0x999]) = v200 - ((2 * v200) & 0xE7) - 13;
  LOBYTE(v190) = (v195 ^ 0x64) - 50;
  v204 = (v195 ^ 0x14132764) + 1311296718 + v201;
  LOBYTE(STACK[0x9C8]) = v201 ^ 0x34;
  LOBYTE(STACK[0xAD7]) = v197 ^ 0x34;
  LOBYTE(v201) = v200 - 50;
  v205 = ((v197 + 101452214) ^ 0xF9F3F64A) - v204 + ((2 * (v197 + 101452214)) & 0xF3E7EC94);
  v206 = v200 - 50 + v199;
  v207 = v202 - (v195 ^ 0x14132764) - v204;
  v208 = v204 - v205;
  v209 = ((v195 ^ 0x14132764) + 1311296718) ^ 0x6B57CBDE;
  v210 = v205 - v207 - 938888900;
  LOBYTE(v171) = v171 - v206;
  v211 = v203 - v200 + v206 - 2 * v206;
  v212 = v206 - v171;
  LOBYTE(STACK[0xA2D]) = v211 - ((2 * v211) & 0xE7) - 13;
  LOBYTE(v171) = v171 + 60;
  LOBYTE(STACK[0x8B9]) = (v205 + 60) ^ 0x34;
  v213 = v201 ^ 0xDE;
  LOBYTE(STACK[0x760]) = v190 ^ 0xEA;
  LOBYTE(STACK[0x8D4]) = v171 - ((2 * v171) & 0xE7) - 13;
  LOBYTE(STACK[0x77B]) = (v201 ^ 0xDE) - ((2 * (v201 ^ 0xDE)) & 0xE7) - 13;
  v214 = v210 ^ 0x8D1A1D5C;
  v215 = v171 - v211;
  v216 = v211 - 40;
  LOBYTE(STACK[0xA12]) = v207 ^ 0x34;
  v217 = v207 + 1463020248;
  LOBYTE(STACK[0x7C5]) = v212 + (~(2 * v212) | 0x19) - 12;
  v218 = (v210 ^ 0x5C) & 0xF7;
  LOBYTE(STACK[0x7AA]) = v208 ^ 0x34;
  v219 = v208 ^ 0x767DD0E3;
  v220 = v209 - v208 - (v208 ^ 0x767DD0E3);
  LODWORD(STACK[0x460]) = v130;
  if (v43 == LODWORD(STACK[0x588]))
  {
    v221 = v218 ^ 0xC7;
  }

  else
  {
    v221 = -9;
  }

  v222 = v215 ^ 0x5C;
  LOBYTE(STACK[0xA77]) = v222 - ((2 * v222) & 0xE7) - 13;
  v223 = v212 ^ 0xE3;
  v224 = v213 - v212 - (v212 ^ 0xE3);
  v225 = v223 ^ v216;
  v226 = v221 | v218;
  v227 = v219 - v214;
  LOBYTE(STACK[0x968]) = v223 - v222 - ((2 * (v223 - v222)) & 0xE7) - 13;
  LOBYTE(STACK[0xA5C]) = v210 ^ 0x68;
  v228 = v226 & ((v130 & 0xC7 ^ 0xC7) + (v130 & 0xC7));
  LOBYTE(STACK[0x91E]) = v224 - ((2 * v224) & 0xE7) - 13;
  v229 = v223 - v222 - v224;
  v230 = v219 ^ v217 ^ v214;
  LOBYTE(STACK[0x7F4]) = v219 ^ v217 ^ 0x34;
  v231 = v222 ^ v225;
  v232 = (v219 ^ v217) + 16;
  v233 = v220 - (v219 ^ v217) - v230;
  LOBYTE(STACK[0x80F]) = v225 - ((2 * v225) & 0xE7) - 13;
  LOBYTE(STACK[0x94D]) = v227 ^ 0x34;
  v234 = v224 - v225 - v231;
  v235 = v225 + 16;
  v236 = (v227 - v220) ^ v232;
  LOBYTE(STACK[0x903]) = (v228 ^ v220) + (~(2 * (v228 ^ v220)) | 0x19) - 12;
  LOBYTE(STACK[0xAC1]) = v234 + (~(2 * v234) | 0x19) - 12;
  v237 = v236 ^ 0xB5;
  if (v233 == 7642611)
  {
    v237 = 8;
  }

  LOBYTE(STACK[0xAA6]) = v233 ^ 0x34;
  v238 = v230 + (v237 & v236 | ~v236 & 8 | 0x42);
  v239 = v231 - 85;
  v240 = v229 ^ v235;
  LOBYTE(STACK[0x997]) = v232 ^ 0xE6;
  LOBYTE(STACK[0x74A]) = v240 - ((2 * v240) & 0xE7) - 13;
  v241 = v230 - 85;
  LOBYTE(STACK[0x83E]) = (v238 + 97) ^ 0x34;
  v242 = v240 - v239;
  LOBYTE(STACK[0x859]) = v239 - ((2 * v239) & 0xE7) - 13;
  v243 = v236 - v241;
  v244 = v233 ^ v241;
  v245 = v235 ^ 0xD2;
  v246 = v232 ^ 0xD2 ^ (v236 - v241);
  v247 = (v236 - v241) ^ v233;
  LOBYTE(STACK[0x9B2]) = v245 - ((2 * v245) & 0xE7) - 13;
  v248 = v239 ^ v234;
  v249 = (v242 ^ v234) + 53;
  v250 = v242 ^ v245;
  LOBYTE(STACK[0x72F]) = (v236 ^ 0xC7) - ((2 * (v236 ^ 0xC7)) & 0xE7) - 13;
  v251 = v248 + 23;
  LOBYTE(STACK[0x8A3]) = v249 - ((2 * v249) & 0xE7) - 13;
  v252 = v249 - (v242 - 29);
  LOBYTE(STACK[0x8ED]) = v242 - 29 - ((2 * (v242 - 29)) & 0xE7) - 13;
  LOBYTE(STACK[0x888]) = (v247 + 53) ^ 0x34;
  v253 = (v250 + 15) & 0x1F ^ 0xAD;
  v254 = (v250 + 15) ^ 0x44;
  LOBYTE(STACK[0x794]) = (v250 + 15) ^ (2 * (v254 & (2 * (v254 & (2 * (v254 & (2 * (v254 & (2 * (v254 & (2 * (((2 * (v250 + 15)) & 0xA ^ 0x5A) & (v250 + 15) ^ v253)) ^ v253)) ^ v253)) ^ v253)) ^ v253)) ^ v253)) ^ 0xEC;
  LOBYTE(STACK[0x9E1]) = (v244 + 23) ^ 0x34;
  LOBYTE(STACK[0x9FC]) = v248 + 23 + (~(2 * (v248 + 23)) | 0x19) - 12;
  LOBYTE(STACK[0x779]) = (v246 - 44) ^ 0x34;
  v255 = v247 - v243 + 82;
  LOBYTE(STACK[0x8D2]) = (v243 - 29) ^ 0x34;
  v256 = (v243 - 127) ^ (v244 + 23);
  v257 = v246 + 34 - (v256 ^ 0x6B);
  v258 = v251 ^ 0x6B ^ (v242 - 127);
  v259 = v250 + 34 - v258;
  LOBYTE(STACK[0x7DE]) = v258 - ((2 * v258) & 0xE7) - 13;
  LOBYTE(STACK[0xA2B]) = (v255 - v257) ^ 0x34;
  LOBYTE(STACK[0x937]) = v259 - ((2 * v259) & 0xE7) - 13;
  v260 = (v256 ^ 0x6B) + v243 + 60;
  LOBYTE(STACK[0x7C3]) = v256 ^ 0x5F;
  LOBYTE(STACK[0xA46]) = v252 - v259 + (~(2 * (v252 - v259)) | 0x19) - 12;
  LOBYTE(STACK[0x91C]) = v257 ^ 0x34;
  v261 = (v243 + 60) ^ 0x34;
  v243 += 106;
  LOBYTE(STACK[0xA75]) = v261;
  LOBYTE(STACK[0xA90]) = v242 + 60 - ((2 * (v242 + 60)) & 0xE7) - 13;
  v262 = v258 + v242 + 60;
  v263 = v257 ^ v243;
  v264 = v243 - v263;
  v242 += 106;
  v265 = v263 ^ v255;
  v266 = v264 ^ v255;
  v267 = v259 ^ v242;
  LOBYTE(STACK[0x80D]) = v266 ^ 0x34;
  v268 = v242 - v267;
  v269 = v267 ^ v252;
  v270 = v268 ^ v252;
  LOBYTE(STACK[0x828]) = v270 - ((2 * v270) & 0xE7) - 13;
  LOBYTE(STACK[0x981]) = v262 ^ 0x7B;
  LOBYTE(STACK[0x966]) = v260 ^ 0xBC;
  LOBYTE(STACK[0xABF]) = v265 ^ 0x34;
  v265 -= 85;
  LOBYTE(STACK[0xADA]) = v269 - ((2 * v269) & 0xE7) - 13;
  LOBYTE(STACK[0x872]) = v268 - ((2 * v268) & 0xE7) - 13;
  v269 -= 85;
  v271 = v270 - v269;
  v272 = (v262 ^ 0x60 ^ v268) - v271;
  LOBYTE(STACK[0x857]) = v264 ^ 0x34;
  v273 = (v260 ^ 0x60 ^ v264) - (v266 - v265);
  LOBYTE(STACK[0x9B0]) = (v266 - v265 + 81) ^ 0x34;
  v262 ^= 0xAAu;
  v274 = v269 - v272;
  LOBYTE(STACK[0x763]) = v262 - ((2 * v262) & 0xE7) - 13;
  v275 = (v271 - 101) & 0x74 ^ 0x63;
  v276 = (v271 - 101) ^ 0x36;
  LOBYTE(STACK[0x9CB]) = (v271 - 101) ^ (2 * (v276 & (2 * (v276 & (2 * (v276 & (2 * (v276 & (2 * (((2 * (v275 ^ (v271 - 101) & 0x42)) ^ 4) & v276 ^ v275)) ^ v275)) ^ v275)) ^ v275)) ^ v275)) ^ 0x87;
  LOBYTE(STACK[0x748]) = v260 ^ 0x9E;
  LOBYTE(STACK[0x8BC]) = v274 - ((2 * v274) & 0xE7) - 13;
  LOBYTE(STACK[0x8A1]) = (v265 - v273) ^ 0x34;
  LOBYTE(STACK[0xA15]) = v272 - ((2 * v272) & 0xE7) - 13;
  LOBYTE(STACK[0x7AD]) = v271 - 32 + (v274 ^ 0xFA) - ((2 * (v271 - 32 + (v274 ^ 0xFA))) & 0xE7) - 13;
  LOBYTE(STACK[0x7F7]) = (v272 ^ v262) + 95 - ((2 * ((v272 ^ v262) + 95)) & 0xE7) - 13;
  LOBYTE(STACK[0x9FA]) = v273 ^ 0x34;
  LOBYTE(STACK[0xA5F]) = (v274 ^ 0xFA) - 110 - ((2 * ((v274 ^ 0xFA) - 110)) & 0xE7) - 13;
  LOBYTE(STACK[0x8EB]) = ((v260 ^ 0xAA) + 28) ^ 0x34;
  LOBYTE(STACK[0xA44]) = (((v265 - v273) ^ 0xFA) - 110) ^ 0x34;
  LOBYTE(STACK[0x906]) = v262 + 28 - ((2 * (v262 + 28)) & 0xE7) - 13;
  LOBYTE(STACK[0x792]) = (v266 - v265 - 32 + ((v265 - v273) ^ 0xFA)) ^ 0x34;
  LOBYTE(STACK[0x7DC]) = ((v273 ^ v260 ^ 0xAA) + 95) ^ 0x34;
  LODWORD(STACK[0x454]) += LODWORD(STACK[0x590]);
  LODWORD(STACK[0x470]) += LODWORD(STACK[0x58C]);
  return (*(STACK[0x598] + 8 * (LODWORD(STACK[0x310]) ^ (3715 * v133))))();
}

uint64_t sub_1E3322B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, int a19, unsigned int a20, uint64_t a21, char *a22, unsigned int a23, unsigned int a24)
{
  v28 = ((2 * (&a19 & 0x171C0A88) - &a19 - 387713678) ^ 0xB08A2610) * v27;
  a21 = a16;
  a22 = &a17;
  a20 = v28 - 136092114;
  a23 = -654855621 - v28;
  a24 = v28 + v26 + 1674574757;
  v29 = (*(v24 + 8 * (v26 ^ 0x348D)))(&a19);
  return (*(v24 + 8 * ((31 * (a19 == ((v26 - 1223) ^ 0x4F1 ^ (v25 + 1841)))) ^ v26)))(v29);
}

uint64_t sub_1E3322C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (((v4 + 418) - 3138) ^ v3) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((5048 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_1E3322CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20)
{
  v23 = v20 ^ 0x17D3;
  a18 = (v23 - 1180) ^ (33731311 * ((&a17 - 1688564590 - 2 * (&a17 & 0x9B5A8C92)) ^ 0xA2AC46B1));
  a19 = a14;
  a20 = &a13;
  (*(v22 + 8 * (v23 ^ 0x3451)))(&a17);
  a19 = a14;
  LODWORD(a20) = v23 - 2008441969 * ((((2 * &a17) | 0x808FE292) - &a17 - 1078456649) ^ 0x8DEA547) + 1253;
  v24 = (*(v22 + 8 * (v23 + 5219)))(&a17);
  return (*(v22 + 8 * (((a17 == v21) * ((v23 + 483) ^ 0x217A)) ^ v23)))(v24);
}

uint64_t sub_1E3322D98()
{
  v11 = *v0;
  v12 = (2 * *v0) & 0xC0A4457886BED430;
  v13 = (((v8 | 0x9F89969FD3432D9ELL) - v8 + (v8 & 0x607669602CBCD260)) ^ 0xCC9BA704B0EA6BE6) * v5;
  *(v10 - 104) = v6 - v13 + v2;
  *(v10 - 120) = v7;
  *(v10 - 112) = v13 + v4 + v11 - v12;
  v14 = (*(v1 + 8 * v9))(v10 - 120);
  return (*(v1 + 8 * ((8722 * (*(v10 - 100) == v3)) ^ v2)))(v14);
}

void sub_1E3322E48(uint64_t a1)
{
  v1 = *(a1 + 12) - 956911519 * ((((2 * a1) | 0xF065BBFC) - a1 - 2016599550) ^ 0x92A3ADFB);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1E3323074()
{
  STACK[0xAA8] = v1;
  v3 = STACK[0x7D0];
  STACK[0xAB0] = STACK[0x7D0];
  return (*(v2 + 8 * (((v1 - v3 > 9) * (((v0 - 8431) | 0x194) + 379)) ^ v0)))();
}

uint64_t sub_1E33230B8@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = *(*a3 + (v4 - 1374807825)) ^ 0x3C;
  v7 = ((*(*a3 + (v4 - 1374807827)) ^ 0x3C) << (v5 & 0x7F ^ 0x4B)) + ((*(*a3 + (v4 - 1374807828)) ^ 0x3C) << 24) + ((*(*a3 + v4 - 1374809417 + 37 * (v5 & 0x610CBE7F ^ 0x1C70u)) ^ 0x3C) << 8) + v6;
  return (*(v3 + 8 * ((60 * (((v7 - 2 * (v7 & 0x11AB605A ^ v6 & 8) - 1851039662) & 0xFFFFFF ^ 0xAB6052) - (a2 + *(a1 + 32)) != -1585842996)) ^ v5 & 0x610CBE7Fu)))();
}

void sub_1E33231FC()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 44) ^ (956911519 * ((2 * (v0 & 0x7D96F6F4) - v0 - 2107045621) ^ 0x68F8790E));
  v2 = *(v0 + 24);
  v3 = *(v0 + 32) ^ (956911519 * ((2 * (v0 & 0x7D96F6F4) - v0 - 2107045621) ^ 0x68F8790E));
  v4 = *(&off_1F5DB1610 + (v1 ^ 0xB0F)) - 8;
  (*&v4[8 * (v1 ^ 0x2F98)])(v7, 0, 296);
  if (v2)
  {
    v5 = v3 == 16150012;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1E3323394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = (v5 ^ v3) + v4;
  *(a1 + v8) = *(a2 + v8);
  return (*(v7 + 8 * (((v8 != 0) * v6) ^ v2)))();
}

uint64_t sub_1E33233BC@<X0>(int a1@<W8>)
{
  v6 = a1 - 6116;
  (*(v5 + 8 * (a1 ^ 0x3BB7)))();
  *(v1 + 24) = 0;
  v7 = (*(v5 + 8 * (v6 ^ v3)))(v1);
  return (*(v5 + 8 * (((((v4 == 0) ^ (v6 - 80)) & 1) * ((v6 ^ 0x1FC1) + v2)) ^ v6)))(v7);
}

uint64_t sub_1E3323520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, int a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = (*(v72 + 8 * ((a72 - 1425) ^ 0x3798)))(LODWORD(STACK[0x544]) ^ 0xBC59953u, 0x100004077774924);
  STACK[0xAB8] = v73;
  if (v73)
  {
    a53 = 16257999;
  }

  LODWORD(STACK[0xAC4]) = a53;
  return (*(v72 + 8 * (((v73 == 0) * (((a72 - 5541) ^ 0xFFFFE632) + ((a72 - 1425) ^ 0xE77))) ^ (a72 - 1425))))();
}

void sub_1E33235F4()
{
  STACK[0x680] = 0;
  STACK[0x7B0] = 0;
  STACK[0x500] = *(v1 + 8 * v0);
  JUMPOUT(0x1E33B61E8);
}

void sub_1E3323620()
{
  STACK[0x718] = 0;
  STACK[0x3F0] = 0;
  STACK[0x500] = *(v1 + 8 * v0);
  JUMPOUT(0x1E33B61E8);
}

uint64_t sub_1E332374C(unint64_t a1)
{
  STACK[0x918] = *(v5 + 8 * v1);
  STACK[0x840] = a1;
  LODWORD(STACK[0xAF8]) = v4;
  LOWORD(STACK[0xAFE]) = 28239;
  LODWORD(STACK[0xB00]) = v2;
  LODWORD(STACK[0xB04]) = 197499219;
  STACK[0xB08] = 0x431A33AA2E6D965FLL;
  STACK[0xB10] = v3;
  return (*(v5 + 8 * (((a1 != 0) * (((v1 - 1321150507) & 0x4EBF3FF7) - 6435)) ^ (v1 - 1321150507) & 0x4EBF3FF7)))();
}

uint64_t sub_1E332377C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = STACK[0x360];
  if (LODWORD(STACK[0x360]) == 17168)
  {
    return (*(a72 + 8 * (LODWORD(STACK[0x2E0]) ^ (4596 * (LODWORD(STACK[0x300]) == LODWORD(STACK[0x370]))))))();
  }

  if (v72 == 20706)
  {
    return (*(a72 + 8 * (((LODWORD(STACK[0xA10]) == 197499227) * ((a71 - 1545756269) & 0x5C2247FF ^ 0xA58)) ^ (a71 - 4372))))();
  }

  if (v72 != 33980)
  {
    return (*(a72 + 8 * (((*(STACK[0x7C0] + 24) == 0) * ((a71 ^ 0xFFFFECE1) + a71 - 4831)) ^ (a71 - 3720))))();
  }

  v74 = LODWORD(STACK[0xA20]) - ((2 * LODWORD(STACK[0xA20])) & 0xDCE86D8E) + a71 - 294379772 == -294373689;
  return (*(a72 + 8 * (((4 * v74) | (32 * v74)) ^ (a71 + 1800))))();
}

uint64_t sub_1E3323A78@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = a2 + 2984;
  v4 = (*(v2 + 8 * (a2 + 3139)))(a1, 3466631855) == 0;
  return (*(v2 + 8 * ((50 * ((v4 ^ (v3 + 10)) & 1)) ^ v3)))();
}

uint64_t sub_1E3323C00@<X0>(int a1@<W8>)
{
  v2 = (a1 - 1450522996) & 0x56753FFF;
  v3 = STACK[0x720];
  if (STACK[0x368])
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  return (*(v1 + 8 * ((v5 * ((v2 - 95711010) & 0x5B47DFF ^ 0x15C8)) ^ v2)))(v3);
}

uint64_t sub_1E3323C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  a15 = 476323082 - 1710126949 * ((2 * ((&a15 ^ 0xDF91B755) & 0x19502C5D) - (&a15 ^ 0xDF91B755) + 1722799010) ^ 0x8B253F67);
  v17 = (*(v16 + 77088))(&a15);
  return (*(v16 + 8 * ((99 * (((a16 == 16257999) ^ 0xA5) & 1)) ^ 0x1BB8u)))(v17);
}

uint64_t sub_1E3323D3C@<X0>(int a1@<W8>)
{
  v2 = a1 ^ 0x1C;
  v3 = (2 * (a1 ^ 0x1C)) ^ 0x28B2;
  STACK[0xAB8] = v1;
  v4 = STACK[0x5E8];
  STACK[0xAC0] = STACK[0x5E8];
  return (*(STACK[0x400] + 8 * (((v1 - v4 > 9) * (v3 ^ (v2 + 10284))) ^ v2)))();
}

uint64_t sub_1E3323D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, int a7)
{
  v12 = v8 + 8;
  v13 = (v12 ^ a6 ^ ((v10 + 661) | a5)) + v7;
  *(a3 + v13) = *(v9 + v13);
  return (*(v11 + 8 * (((a4 == v12) * a7) ^ v10)))();
}

uint64_t sub_1E3323E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, int a13, char a14, uint64_t a15, char a16, int a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, char *a23)
{
  a23 = &a14;
  a22 = (v24 + 1305603437) ^ (1358806181 * ((&a18 & 0x6E63D813 | ~(&a18 | 0x6E63D813)) ^ 0xAEB34B6F));
  a20 = a15;
  a21 = &a16;
  (*(v23 + 8 * (v24 + 4986)))(&a18);
  a19 = (v24 - 1468) ^ (33731311 * ((&a18 - 1528811583 - 2 * (&a18 & 0xA4E02FC1)) ^ 0x9D16E5E2));
  a20 = a15;
  a21 = &a11;
  (*(v23 + 8 * ((v24 - 1274) ^ 0x2837)))(&a18);
  LODWORD(a21) = v24 - 1274 - 2008441969 * ((((2 * &a18) | 0x85ACE902) - &a18 + 1026132863) ^ 0x8A4F208F) + 2239;
  a20 = a15;
  v25 = (*(v23 + 8 * (v24 + 4931)))(&a18);
  return (*(v23 + 8 * (((a18 == 16257999) * (((v24 - 574) | 0x245) - 4545)) ^ (v24 - 1274))))(v25);
}

uint64_t sub_1E3323FA0@<X0>(int a1@<W3>, unint64_t a2@<X8>)
{
  v7 = LOWORD(STACK[0x9DE]);
  if (v7 == 17168)
  {
LABEL_4:
    STACK[0x4B8] = a2;
    LODWORD(STACK[0x7EC]) = v3;
    a1 = v5 - 338;
    goto LABEL_6;
  }

  if (v7 != 33980)
  {
    if (v7 != 20706)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  v8 = STACK[0x778];
  STACK[0x4B8] = a2;
  LODWORD(STACK[0x7EC]) = v3;
  STACK[0x718] = v8 + v2;
  a1 = 16257999;
LABEL_6:
  if (a1 == 16215947)
  {
    return (*(v6 + 8 * (((((*(STACK[0x6F0] + 97) == 65) ^ (v4 + 1)) & 1) * (v4 ^ 0x247F)) ^ (v4 - 4726))))();
  }

  if (a1 == 16257999)
  {
    v9 = STACK[0x6F0];
    v10 = *(STACK[0x6F0] + 20);
    if (v10 == 1)
    {
      LODWORD(STACK[0x3C0]) = (v4 - 7187) | 0x350;
      LODWORD(STACK[0x390]) = v4 - 6992;
      LODWORD(STACK[0x3D0]) = 952 * (v4 ^ 0x2426);
      LODWORD(STACK[0x3A0]) = v4 - 8200;
      LODWORD(STACK[0x3B0]) = v4 - 8169;
      v15 = *v9;
      STACK[0x728] = *(v6 + 8 * (v4 - 8927));
      return (*(v6 + 8 * ((98 * (((((((v4 - 49) & 0xF3) - 36) & 0xF5) + 107) ^ 0x31 ^ (v15 == 0)) & 1)) ^ (((v4 - 1604187185) & 0x5F9DDFF3) + 2035623900) & 0x86AADFF5)))();
    }

    else
    {
      v11 = v5 - 26;
      LODWORD(v12) = v4;
      if (!v10)
      {
        if (*(v9 + 97) == 65)
        {
          v11 = 16215797;
        }

        v12 = STACK[0x3F8];
      }

      LODWORD(STACK[0x794]) = v11;
      STACK[0x868] = STACK[0x6F0];
      STACK[0x610] = *(v6 + 8 * (v12 - 8474));
      STACK[0x668] = &STACK[0x868];
      v14 = STACK[0x868];
      STACK[0x548] = STACK[0x868];
      return (*(v6 + 8 * ((45 * ((((v12 - 8474) ^ 0x2352 ^ (v14 == 0)) & 1) == 0)) ^ (v12 - 8474) ^ 0x2352)))();
    }
  }

  else
  {
    LODWORD(STACK[0x794]) = a1;
    return (*(v6 + 8 * (v4 - 3932)))();
  }
}

uint64_t sub_1E3324368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, char a14, int a15, int a16, char a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, char *a23)
{
  v26 = v23 + 1369;
  a19 = (v26 - 492) ^ (33731311 * ((2 * (&a18 & 0x683AF510) - &a18 + 398789358) ^ 0x2E33C0CD));
  a20 = a10;
  a21 = &a17;
  (*(v24 + 8 * (v26 ^ 0x2BE1)))(&a18);
  a22 = (v26 - 386) ^ (1710126949 * ((&a18 & 0x647C2756 | ~(&a18 | 0x647C2756)) ^ 0xA9988339));
  a23 = &a14;
  a20 = a10;
  a21 = &a12;
  (*(v24 + 8 * (v26 + 5863)))(&a18);
  a20 = a10;
  LODWORD(a21) = v26 - 2008441969 * ((&a18 & 0x95A0649 | ~(&a18 | 0x95A0649)) ^ 0xBE3CADB8) + 1941;
  v27 = (*(v24 + 8 * (v26 ^ 0x2B13)))(&a18);
  return (*(v24 + 8 * (((a18 == v25) * ((v26 + 1582157663) & 0x2BDC ^ 0x812)) ^ v26)))(v27);
}

uint64_t sub_1E3324524@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int64x2_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int8x16_t a58, uint64_t a59, uint64_t a60, int8x16_t a61)
{
  v76 = a2 - 16;
  v77.i64[0] = v76 + a1 + 7;
  v77.i64[1] = v76 + a1 + v66;
  v78 = v77;
  *&STACK[0x2B0] = v77;
  v79.i64[0] = v76 + a1 + 9;
  v79.i64[1] = v76 + a1 + 8;
  v80.i64[0] = v76 + a1 + 5;
  v80.i64[1] = v76 + a1 + 4;
  v81.i64[0] = v76 + a1 + 3;
  v81.i64[1] = v76 + a1 + 2;
  v77.i64[0] = v76 + a1 + 1;
  v77.i64[1] = v76 + a1;
  *&STACK[0x310] = v77;
  v77.i64[0] = v76 + a1 - 1;
  v77.i64[1] = v76 + a1 - 2;
  *&STACK[0x300] = v77;
  v82 = vandq_s8(v81, *&STACK[0x2F0]);
  v83 = vandq_s8(v80, *&STACK[0x2F0]);
  v84 = vandq_s8(v79, *&STACK[0x2F0]);
  v85 = vandq_s8(v78, *&STACK[0x2F0]);
  v86 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v87 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v88 = *&STACK[0x280];
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), *&STACK[0x280]);
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), *&STACK[0x280]);
  v91 = veorq_s8(v90, *&STACK[0x270]);
  v92 = veorq_s8(v89, *&STACK[0x270]);
  v93 = *&STACK[0x270];
  v94 = *&STACK[0x260];
  v95 = veorq_s8(v89, *&STACK[0x260]);
  v96 = veorq_s8(v90, *&STACK[0x260]);
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v95), v68);
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v96), v68);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v100 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v101 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v100);
  v103 = vaddq_s64(v101, v99);
  v105 = *&STACK[0x230];
  v104 = *&STACK[0x240];
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v103, v103), *&STACK[0x240]), v103), *&STACK[0x230]), v69);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v102, v102), *&STACK[0x240]), v102), *&STACK[0x230]), v69);
  v108 = vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL);
  v109 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v110 = veorq_s8(v106, v108);
  v111 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v110);
  v113 = vaddq_s64(v111, v109);
  v115 = *&STACK[0x200];
  v114 = *&STACK[0x210];
  v116 = veorq_s8(vaddq_s64(vsubq_s64(v113, vandq_s8(vaddq_s64(v113, v113), *&STACK[0x210])), *&STACK[0x200]), v73);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(v112, vandq_s8(vaddq_s64(v112, v112), *&STACK[0x210])), *&STACK[0x200]), v73);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v119 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v120 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v119);
  v122 = veorq_s8(vaddq_s64(v120, v118), a61);
  v123 = veorq_s8(v121, a61);
  v124 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v125 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v126 = veorq_s8(v122, v124);
  v127 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v126);
  v129 = vaddq_s64(v127, v125);
  v130 = *&STACK[0x2E0];
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v128, *&STACK[0x2E0]), vorrq_s8(v128, v72)), v72), v67);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v129, *&STACK[0x2E0]), vorrq_s8(v129, v72)), v72), v67);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v134 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v135 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133), v71);
  v136 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v134), v71);
  v137 = vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL);
  v138.i64[0] = v76 + a1 - 3;
  v138.i64[1] = v76 + a1 - 4;
  *&STACK[0x2A0] = v138;
  v139 = vaddq_s64(v87, v88);
  v140 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL))), a58);
  v141 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), veorq_s8(v135, v137)), a58);
  v236.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v141, v74), vorrq_s8(v141, a51)), a51), v70), vnegq_s64(vandq_s8(vshlq_n_s64(v81, 3uLL), v75)));
  v236.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v140, v74), vorrq_s8(v140, a51)), a51), v70), vnegq_s64(vandq_s8(vshlq_n_s64(v80, 3uLL), v75)));
  v142 = v93;
  v143 = veorq_s8(v139, v93);
  v144 = veorq_s8(v139, v94);
  v145 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v144), v68);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v147 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146);
  v148 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v147, v147), v104), v147), v105), v69);
  v149 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v150 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v149);
  v151 = veorq_s8(vaddq_s64(vsubq_s64(v150, vandq_s8(vaddq_s64(v150, v150), v114)), v115), v73);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v153 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v152), a61);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v155 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v154);
  v156 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v155, v130), vorrq_s8(v155, v72)), v72), v67);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), v71);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v157.i64[0] = v76 + a1 - 5;
  v157.i64[1] = v76 + a1 - 6;
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159), a58);
  v161 = vandq_s8(v157, *&STACK[0x2F0]);
  v162 = vaddq_s64(v86, v88);
  v236.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v160, v74), vorrq_s8(v160, a51)), a51), v70), vnegq_s64(vandq_s8(vshlq_n_s64(v79, 3uLL), v75)));
  v163 = veorq_s8(v162, v93);
  v164 = veorq_s8(v162, v94);
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164), v68);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v167, v167), v104), v167), v105), v69);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(v170, vandq_s8(vaddq_s64(v170, v170), v114)), v115), v73);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172), a61);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v175, v130), vorrq_s8(v175, v72)), v72), v67);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v178 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177), v71);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v180 = vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL);
  v181 = vandq_s8(v138, *&STACK[0x2F0]);
  v182 = veorq_s8(vaddq_s64(v180, v179), a58);
  v183 = vandq_s8(*&STACK[0x300], *&STACK[0x2F0]);
  v236.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v182, v74), vorrq_s8(v182, a51)), a51), v70), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2B0], 3uLL), v75)));
  v184 = vandq_s8(*&STACK[0x310], *&STACK[0x2F0]);
  v185 = vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL);
  v186 = vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL);
  v187 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v88);
  v188 = vaddq_s64(v186, v88);
  v186.i64[0] = vqtbl4q_s8(v236, *&STACK[0x2C0]).u64[0];
  v236.val[0] = veorq_s8(v188, v142);
  v236.val[1] = veorq_s8(v187, v142);
  v236.val[2] = veorq_s8(v187, v94);
  v236.val[3] = veorq_s8(v188, v94);
  v236.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[1], 0x38uLL), v236.val[1], 8uLL), v236.val[2]), v68);
  v236.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL), v236.val[3]), v68);
  v189 = vsraq_n_u64(vshlq_n_s64(v236.val[2], 3uLL), v236.val[2], 0x3DuLL);
  v236.val[2] = veorq_s8(v236.val[0], vsraq_n_u64(vshlq_n_s64(v236.val[3], 3uLL), v236.val[3], 0x3DuLL));
  v236.val[3] = veorq_s8(v236.val[1], v189);
  v190 = vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL);
  v236.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[1], 0x38uLL), v236.val[1], 8uLL), v236.val[3]);
  v236.val[1] = vaddq_s64(v190, v236.val[2]);
  v236.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v236.val[1], v236.val[1]), v104), v236.val[1]), v105), v69);
  v236.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v236.val[0], v236.val[0]), v104), v236.val[0]), v105), v69);
  v191 = vsraq_n_u64(vshlq_n_s64(v236.val[2], 3uLL), v236.val[2], 0x3DuLL);
  v236.val[2] = veorq_s8(v236.val[0], vsraq_n_u64(vshlq_n_s64(v236.val[3], 3uLL), v236.val[3], 0x3DuLL));
  v236.val[3] = veorq_s8(v236.val[1], v191);
  v192 = vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL);
  v236.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[1], 0x38uLL), v236.val[1], 8uLL), v236.val[3]);
  v236.val[1] = vaddq_s64(v192, v236.val[2]);
  v236.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v236.val[1], vandq_s8(vaddq_s64(v236.val[1], v236.val[1]), v114)), v115), v73);
  v236.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v236.val[0], vandq_s8(vaddq_s64(v236.val[0], v236.val[0]), v114)), v115), v73);
  v193 = vsraq_n_u64(vshlq_n_s64(v236.val[2], 3uLL), v236.val[2], 0x3DuLL);
  v236.val[2] = veorq_s8(v236.val[0], vsraq_n_u64(vshlq_n_s64(v236.val[3], 3uLL), v236.val[3], 0x3DuLL));
  v236.val[3] = veorq_s8(v236.val[1], v193);
  v194 = vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL);
  v236.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[1], 0x38uLL), v236.val[1], 8uLL), v236.val[3]);
  v236.val[1] = veorq_s8(vaddq_s64(v194, v236.val[2]), a61);
  v236.val[0] = veorq_s8(v236.val[0], a61);
  v195 = vsraq_n_u64(vshlq_n_s64(v236.val[2], 3uLL), v236.val[2], 0x3DuLL);
  v236.val[2] = veorq_s8(v236.val[0], vsraq_n_u64(vshlq_n_s64(v236.val[3], 3uLL), v236.val[3], 0x3DuLL));
  v236.val[3] = veorq_s8(v236.val[1], v195);
  v196 = vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL);
  v236.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[1], 0x38uLL), v236.val[1], 8uLL), v236.val[3]);
  v236.val[1] = vaddq_s64(v196, v236.val[2]);
  v236.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v236.val[0], *&STACK[0x2E0]), vorrq_s8(v236.val[0], v72)), v72), *&STACK[0x2D0]);
  v236.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v236.val[1], *&STACK[0x2E0]), vorrq_s8(v236.val[1], v72)), v72), *&STACK[0x2D0]);
  v236.val[2] = veorq_s8(v236.val[1], vsraq_n_u64(vshlq_n_s64(v236.val[2], 3uLL), v236.val[2], 0x3DuLL));
  v236.val[3] = veorq_s8(v236.val[0], vsraq_n_u64(vshlq_n_s64(v236.val[3], 3uLL), v236.val[3], 0x3DuLL));
  v236.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[1], 0x38uLL), v236.val[1], 8uLL), v236.val[2]), v71);
  v236.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL), v236.val[3]), v71);
  v197 = vsraq_n_u64(vshlq_n_s64(v236.val[2], 3uLL), v236.val[2], 0x3DuLL);
  v236.val[2] = veorq_s8(v236.val[0], vsraq_n_u64(vshlq_n_s64(v236.val[3], 3uLL), v236.val[3], 0x3DuLL));
  v236.val[3] = veorq_s8(v236.val[1], v197);
  v198 = vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL);
  v199 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v88);
  v236.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[1], 0x38uLL), v236.val[1], 8uLL), v236.val[3]);
  v236.val[1] = veorq_s8(vaddq_s64(v198, v236.val[2]), a58);
  v236.val[0] = veorq_s8(v236.val[0], a58);
  v236.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v236.val[0], v74), vorrq_s8(v236.val[0], a51)), a51), v70), vnegq_s64(vandq_s8(vshlq_n_s64(v157, 3uLL), v75)));
  v236.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v236.val[1], v74), vorrq_s8(v236.val[1], a51)), a51), v70), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2A0], 3uLL), v75)));
  v200 = veorq_s8(v199, v142);
  v201 = veorq_s8(v199, v94);
  v202 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v201), v68);
  v203 = veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL));
  v204 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL), v203);
  v205 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v204, v204), v104), v204), v105), v69);
  v206 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL));
  v207 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v206);
  v208 = veorq_s8(vaddq_s64(vsubq_s64(v207, vandq_s8(vaddq_s64(v207, v207), v114)), v115), v73);
  v209 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v210 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), v209), a61);
  v211 = veorq_s8(v210, vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL));
  v212 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL), v211);
  v213 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v212, *&STACK[0x2E0]), vorrq_s8(v212, v72)), v72), *&STACK[0x2D0]);
  v214 = veorq_s8(v213, vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL));
  v215 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), v214), v71);
  v216 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL))), a58);
  v217 = vaddq_s64(v185, v88);
  v236.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v216, v74), vorrq_s8(v216, a51)), a51), v70), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x300], 3uLL), v75)));
  v218 = veorq_s8(v217, v142);
  v219 = veorq_s8(v217, v94);
  v220 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), v219), v68);
  v221 = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL));
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v221);
  v223 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v222, v222), v104), v222), v105), v69);
  v224 = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v225 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v224);
  v226 = veorq_s8(vaddq_s64(vsubq_s64(v225, vandq_s8(vaddq_s64(v225, v225), v114)), v115), v73);
  v227 = veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v228 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v227), a61);
  v229 = veorq_s8(v228, vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL));
  v230 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), v229);
  v231 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v230, *&STACK[0x2E0]), vorrq_s8(v230, v72)), v72), *&STACK[0x2D0]);
  v232 = veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL));
  v233 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), v232), v71);
  v234 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL), veorq_s8(v233, vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL))), a58);
  v236.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v234, v74), vorrq_s8(v234, a51)), a51), v70), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x310], 3uLL), v75)));
  v186.i64[1] = vqtbl4q_s8(v236, *&STACK[0x2C0]).u64[0];
  v236.val[0] = vrev64q_s8(*(v65 - 16 + a1));
  v236.val[1].i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v236.val[1].i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v236.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v236.val[0], v236.val[0], 8uLL), v236.val[1]), v186));
  *v157.i64[1] = vextq_s8(v236.val[0], v236.val[0], 8uLL);
  return (*(v61 + 8 * (((v64 != 16) * v62) ^ v63)))();
}

uint64_t sub_1E3324620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14)
{
  *(v16 + 24) = 107;
  *(v16 + 40) = 0;
  (*(v17 + 8 * ((v15 + 531) ^ 0x3747)))(v14);
  return (*(v17 + 8 * (((a14 != 0) * (((v15 - 1549455557) & 0x5C5AD1AD) - 3983)) ^ (v15 - 1549455557) & 0x5C5AD1AD)))();
}

uint64_t sub_1E33246D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, int a22, unsigned int a23, uint64_t a24)
{
  a21 = ((3 * v27) ^ 0x2D) + 113 * (((&a21 | 0xAA) - (&a21 | 0x55) + 85) ^ 0xA4);
  a24 = v24;
  a23 = (v25 + 276) ^ (2008441969 * (((&a21 | 0x23B2B6AA) - (&a21 | 0xDC4D4955) - 598914731) ^ 0x6B2BE2A4));
  v28 = (*(v26 + 8 * (v25 ^ 0x2234)))(&a21);
  return (*(v26 + 8 * ((6701 * (a22 == ((v25 - 2033734744) & 0x79385F5F ^ 0xF81C8C))) ^ v25)))(v28);
}

uint64_t sub_1E33247E0()
{
  STACK[0x770] = v1 - 9328 + (v0 - 265);
  LODWORD(STACK[0x43C]) = 16215976;
  STACK[0x610] = *(v2 + 8 * (v0 - 8722));
  STACK[0x668] = &STACK[0x978];
  v3 = STACK[0x978];
  STACK[0x548] = STACK[0x978];
  return (*(v2 + 8 * ((45 * ((((v0 + 1448199756) & 0xA9AE34DE ^ (v3 == 0)) & 1) == 0)) ^ (v0 + 1448199756) & 0xA9AE34DE)))();
}

uint64_t sub_1E3324838@<X0>(int a1@<W8>)
{
  v2 = *(STACK[0x610] + 24);
  STACK[0x7E0] = v2;
  return (*(v1 + 8 * ((((a1 + 113) ^ (v2 == 0)) & 1 | (32 * (((a1 + 113) ^ (v2 == 0)) & 1))) ^ a1)))();
}

uint64_t sub_1E3324878()
{
  v3 = v0 - 5446;
  v4 = (v0 - 5446) ^ 0x960u;
  STACK[0xA28] = v1;
  v5 = STACK[0x898];
  STACK[0xA30] = STACK[0x898];
  return (*(v2 + 8 * (((v1 - v5 > v4 - 747) * (v3 ^ 0x1F9B)) ^ v3)))();
}

uint64_t sub_1E33249B4(uint64_t a1)
{
  STACK[0x5B0] = v1;
  LODWORD(STACK[0x554]) = STACK[0x804];
  return (*(v3 + 8 * (((((v2 - 118) ^ (STACK[0x5A8] == 0)) & 1) * ((v2 - 3440) ^ 0x210)) ^ v2)))(a1, 197499219);
}

uint64_t sub_1E3324B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, int a13)
{
  a12 = 476323082 - 1710126949 * ((&a12 + 943502261 - 2 * (&a12 & 0x383CB3B5)) ^ 0xA27E825);
  v14 = (*(v13 + 77088))(&a12);
  return (*(v13 + 8 * ((2973 * (a13 == 16257999)) ^ 0x14A1u)))(v14);
}

void sub_1E3324C0C(uint64_t a1, uint64_t a2, int a3)
{
  v3 = (((a3 - 686875352) & 0x28F0FA3F) + 849044933) & 0xCD64A43B;
  STACK[0x2A0] = ((STACK[0xAD0] + 4) ^ 0xE7EB427BF37FAF1ELL) + 0x7E57FFF5BCFFF4F8 + ((2 * (STACK[0xAD0] + 4)) & 0xCFD684F7E6FF5E3CLL);
  STACK[0x290] = ((STACK[0xAE0] + (v3 ^ 0x2424)) ^ 0xF6F3DEFFB37FFC97) + 0x6F4F6371FCFFA77FLL + ((2 * (STACK[0xAE0] + (v3 ^ 0x2424))) & 0xEDE7BDFF66FFF92ELL);
  STACK[0x280] = ((STACK[0xAC0] + 4) ^ 0xF6F767F3B47FAEFELL) + 0x6F4BDA7DFBFFF518 + ((2 * (STACK[0xAC0] + 4)) & 0xEDEECFE768FF5DFCLL);
  STACK[0x270] = ((STACK[0xAB0] + 4) ^ 0x7FCF67F9B8FFA716) - 0x198C258808800300 + ((2 * (STACK[0xAB0] + 4)) & 0xFF9ECFF371FF4E2CLL);
  STACK[0x260] = ((STACK[0xAA0] + 4) ^ 0xE66F43FFB6FFA5D7) + 0x7FD3FE71F97FFE3FLL + ((2 * (STACK[0xAA0] + 4)) & 0xCCDE87FF6DFF4BAELL);
  v4 = STACK[0xB28];
  STACK[0x250] = ((STACK[0xB28] + 4) ^ 0x76F7DB71B3FFEEDELL) - 0x10B4990003804AC8 + ((2 * (STACK[0xB28] + 4)) & 0xEDEFB6E367FFDDBCLL);
  STACK[0x240] = ((STACK[0xA80] + 4) ^ 0xEECF7F7DFFFFBE56) + 0x7773C2F3B07FE5C0 + ((2 * (STACK[0xA80] + 4)) & 0xDD9EFEFBFFFF7CACLL);
  STACK[0x230] = ((STACK[0xA60] + 4) ^ 0x76737E73B67FBF5FLL) - 0x10303C0206001B49 + ((2 * (STACK[0xA60] + 4)) & 0xECE6FCE76CFF7EBELL);
  STACK[0x220] = ((STACK[0xB68] + 4) ^ 0x6E7FCE79FD7FBEFFLL) - 0x83C8C084D001AE9 + ((2 * (STACK[0xB68] + 4)) & 0xDCFF9CF3FAFF7DFELL);
  STACK[0x210] = ((STACK[0xB78] + 4) ^ 0xE75FE3F5BD7FE4FFLL) + 0x7EE35E7BF2FFBF17 + ((2 * (STACK[0xB78] + 4)) & 0xCEBFC7EB7AFFC9FELL);
  STACK[0x200] = ((STACK[0xB88] + 4) ^ 0xF77FD2F5B9FFBD17) + 0x6EC36F7BF67FE6FFLL + ((2 * (STACK[0xB88] + 4)) & 0xEEFFA5EB73FF7A2ELL);
  STACK[0x2B0] = v4 + 10;
  STACK[0x3B0] = STACK[0x798];
  STACK[0x300] = STACK[0x708];
  STACK[0x3E0] = STACK[0x8C0];
  STACK[0x3D0] = STACK[0x588];
  STACK[0x3C0] = STACK[0x710];
  STACK[0x3A0] = STACK[0x5E0];
  STACK[0x320] = STACK[0x4C8];
  STACK[0x310] = STACK[0x6C0];
  STACK[0x2F0] = STACK[0x778];
  STACK[0x2E0] = STACK[0x528];
  STACK[0x2D0] = STACK[0x6D8];
  STACK[0x2C0] = STACK[0x698];
  STACK[0x390] = STACK[0x4E0];
  LODWORD(STACK[0x330]) = LOWORD(STACK[0xA3E]);
  LODWORD(STACK[0x370]) = LOWORD(STACK[0xA26]);
  LODWORD(STACK[0x360]) = LOWORD(STACK[0xA0E]);
  LODWORD(STACK[0x380]) = LOWORD(STACK[0x9FE]);
  LODWORD(STACK[0x340]) = LOWORD(STACK[0x9EA]);
  LODWORD(STACK[0x350]) = LOWORD(STACK[0x9BE]);
  JUMPOUT(0x1E342149CLL);
}

uint64_t sub_1E3324CD0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int a6)
{
  v12 = v7 - 1;
  *(a2 + v12) = *(a3 + v12) ^ *(v8 + ((v12 + 31) & 0xF)) ^ *(((v12 + 31) & 0xF) + v9 + 3) ^ (((v12 + 31) & 0xF) * a4) ^ *(v10 + ((v12 + 31) & 0xF)) ^ 0x3C;
  return (*(v11 + 8 * (((v12 + 31 == a5) * a6) ^ v6)))();
}

uint64_t sub_1E3324DC8()
{
  *(v7 - 224) = v3 ^ (((((v7 - 232) | 0xDDFDD24D) - ((v7 - 232) & 0xDDFDD24D)) ^ 0xF1016336) * v5);
  v8 = (*(v6 + 8 * v4))(v7 - 232);
  *(v1 + 8) = *(v7 - 232) ^ v0;
  return (*(v6 + 8 * ((v2 - 1878) ^ 0x15E)))(v8, 197499219);
}

uint64_t sub_1E3324E64(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, unsigned __int8 a53, unsigned int a54, int a55, unsigned int a56, uint64_t a57, uint64_t a58, _BYTE *a59, uint64_t a60)
{
  v69 = v68;
  v70 = (v68 - 1059753686) ^ v67 ^ (v64 ^ (v68 + 744417400) ^ 0xBE225FBF ^ (((a40 ^ 0x5322272) & a38 | a36) ^ 0x7C163350) & v61) & a7;
  v71 = *(&off_1F5DB1610 + v68 - 2990);
  v72 = *(v71 + 8 * (*(a10 + (v70 >> 24)) ^ a3)) ^ 0xA8A762F367B548BCLL;
  v73 = v72 ^ (32 * v72) ^ (8 * v72);
  v74 = (((((a5 ^ 0x5DDFBB0B) & a6 | a42) ^ 0x4AE62C8) & a8 ^ v63) & v65 | v66) ^ 0x47BB4B1u;
  v75 = *(a10 + ((((((a5 ^ 0xB) & a6 | a42) ^ 0xC8) & a8 ^ v63) & v65 | v66) ^ 0xB1u));
  v76 = *(v71 + 8 * (*(a10 + BYTE2(v60)) ^ a3)) ^ 0x4BA8C5E094D2F929;
  v77 = a50 ^ 0xC6C93CC6 ^ (a46 & (a48 ^ 0x10860EC6) | a44);
  v78 = *(a10 + BYTE1(v74));
  v79 = *(a10 + (v74 >> 24));
  v80 = *(v71 + 8 * (*(a10 + (v77 >> 24)) ^ a3)) ^ 0xF1A62D5B8687E9B6;
  LODWORD(v73) = ((v76 ^ (32 * v76) ^ (8 * v76)) >> 24) ^ ((v80 ^ (32 * v80) ^ (8 * v80)) >> 32) ^ (v73 >> 16);
  v81 = *(v71 + 8 * (v75 ^ a3)) ^ 0x1DD37837EB6F15A7;
  v82 = *(v71 + 8 * (*(a10 + (v60 >> 24)) ^ a3)) ^ 0x72FD46093CAA22B4;
  LODWORD(v81) = v73 ^ ((v81 ^ (32 * v81) ^ (8 * v81)) >> 8);
  v83 = *(v71 + 8 * (*(a10 + (a50 ^ 0xC6 ^ (a46 & (a48 ^ 0xC6u) | a44))) ^ a3)) ^ 0x2B533E5815CA48E0;
  v84 = *(v71 + 8 * (*(a10 + v70) ^ a3)) ^ 0xF9AD650087DE27EBLL;
  LODWORD(v82) = ((v83 ^ (32 * v83) ^ (8 * v83)) >> 8) ^ ((v82 ^ (32 * v82) ^ (8 * v82)) >> 32) ^ ((v84 ^ (32 * v84) ^ (8 * v84)) >> 24) ^ ((*(v71 + 8 * (v78 ^ a3)) ^ (32 * (*(v71 + 8 * (v78 ^ a3)) ^ 0xA24179F39E8E1F11)) ^ (8 * (*(v71 + 8 * (v78 ^ a3)) ^ 0xA24179F39E8E1F11))) >> 16);
  v85 = *(v71 + 8 * (*(a10 + BYTE1(v77)) ^ a3));
  v86 = *(v71 + 8 * (*(a10 + BYTE2(v74)) ^ a3)) ^ 0x703B8964564B6A3BLL;
  v87 = *(v71 + 8 * (*(a10 + BYTE1(v70)) ^ a3)) ^ 0x6120E2BC7DE99F20;
  v88 = *(v71 + 8 * (*(a10 + v60) ^ a3)) ^ 0xDA0D5694ECA90550;
  LODWORD(v85) = ((v86 ^ (32 * v86) ^ (8 * v86)) >> 24) ^ ((v85 ^ (32 * (v85 ^ 0x2A1AEADD188EF275)) ^ (8 * (v85 ^ 0x2A1AEADD188EF275uLL))) >> 16) ^ ((v87 ^ (32 * v87) ^ (8 * v87)) >> 32);
  v89 = *(v71 + 8 * (*(a10 + BYTE2(v70)) ^ a3));
  v90 = *(v71 + 8 * (*(a10 + BYTE1(v60)) ^ a3)) ^ 0x9024FE5A826BBEA6;
  v91 = *(v71 + 8 * (*(a10 + BYTE2(v77)) ^ a3)) ^ 0xBC8D37CE9CD278C5;
  v92 = v81 ^ 0xB3D4D192;
  v93 = v82 ^ 0xBA2906E0;
  v94 = v85 ^ ((v88 ^ (32 * v88) ^ (8 * v88)) >> 8) ^ 0xEBE95A67;
  v95 = ((v89 ^ (32 * (v89 ^ 0xA4D596E8B42B887FLL)) ^ (8 * (v89 ^ 0xA4D596E8B42B887FLL))) >> 8) ^ ((v90 ^ (32 * v90) ^ (8 * v90)) >> 16) ^ ((*(v71 + 8 * (v79 ^ a3)) ^ (32 * (*(v71 + 8 * (v79 ^ a3)) ^ 0xA7ED73001B85FCCCLL)) ^ (8 * (*(v71 + 8 * (v79 ^ a3)) ^ 0xA7ED73001B85FCCCLL))) >> 32) ^ ((v91 ^ (32 * v91) ^ (8 * v91)) >> 24) ^ 0xCE3F4363;
  v96 = *(a10 + (v94 >> 24));
  v97 = *(a10 + v95);
  v98 = *(a10 + BYTE1(v95));
  v99 = *(a10 + v94);
  v100 = *(a10 + BYTE1(v94));
  v101 = *(a10 + (v92 >> 24));
  v102 = *(a10 + BYTE2(v95));
  v103 = *(a10 + v93);
  v104 = *(a10 + (v95 >> 24));
  v105 = *(a10 + BYTE1(v93));
  v106 = *(a10 + BYTE2(v94));
  v107 = *(v71 + 8 * (*(a10 + BYTE1(v92)) ^ a3));
  v108 = *(v71 + 8 * (*(a10 + BYTE2(v93)) ^ a3)) ^ 0x7D254B6D0022DEC4;
  v109 = *(v71 + 8 * (v96 ^ a3)) ^ 0x54395B58BC4B9E6ALL;
  LODWORD(v107) = ((v108 ^ (32 * v108) ^ (8 * v108)) >> 16) ^ ((v107 ^ 0x49394AF1E521B455 ^ (32 * (v107 ^ 0x49394AF1E521B455)) ^ (8 * (v107 ^ 0x49394AF1E521B455uLL))) >> 8);
  v110 = *(v71 + 8 * (v97 ^ a3)) ^ 0x699DF1409B2D36E1;
  v111 = *(v71 + 8 * (*(a10 + (v93 >> 24)) ^ a3)) ^ 0x5F2807802D73BD78;
  LODWORD(v81) = v107 ^ ((v109 ^ (32 * v109) ^ (8 * v109)) >> 24) ^ ((v110 ^ (32 * v110) ^ (8 * v110)) >> 32);
  v112 = (*(v71 + 8 * (v98 ^ a3)) ^ (32 * (*(v71 + 8 * (v98 ^ a3)) ^ 0xBA12001EBB5EA5B1)) ^ (8 * (*(v71 + 8 * (v98 ^ a3)) ^ 0xBA12001EBB5EA5B1))) >> 16;
  v113 = *(v71 + 8 * (*(a10 + BYTE2(v92)) ^ a3)) ^ (32 * (*(v71 + 8 * (*(a10 + BYTE2(v92)) ^ a3)) ^ 0x652588B6FB6DDC91)) ^ (8 * (*(v71 + 8 * (*(a10 + BYTE2(v92)) ^ a3)) ^ 0x652588B6FB6DDC91));
  v114 = *(v71 + 8 * (v100 ^ a3)) & 0xFFFFFDFFFFFFFFFFLL ^ 0xE3349C62B2297655 ^ (0x18CB4FC383E94FCDLL - (*(v71 + 8 * (v100 ^ a3)) & 0x20000000000));
  LODWORD(v103) = ((v114 ^ (32 * v114) ^ (8 * v114)) >> 16) ^ ((*(v71 + 8 * (v102 ^ a3)) ^ (32 * (*(v71 + 8 * (v102 ^ a3)) ^ 0x6EA53714763B4668)) ^ (8 * (*(v71 + 8 * (v102 ^ a3)) ^ 0x6EA53714763B4668uLL))) >> 24) ^ ((*(v71 + 8 * (v101 ^ a3)) ^ (32 * (*(v71 + 8 * (v101 ^ a3)) ^ 0xE82B74CABB843A0ELL)) ^ (8 * (*(v71 + 8 * (v101 ^ a3)) ^ 0xE82B74CABB843A0ELL))) >> 32) ^ ((*(v71 + 8 * (v103 ^ a3)) ^ (32 * (*(v71 + 8 * (v103 ^ a3)) ^ 0xEA8E1A68D9419258)) ^ (8 * (*(v71 + 8 * (v103 ^ a3)) ^ 0xEA8E1A68D9419258))) >> 8);
  v115 = *(v71 + 8 * (v104 ^ a3)) ^ 0x1B188605063579A2;
  v116 = *(v71 + 8 * ((*(a10 + v92) - 2 * (*(a10 + v92) & 0xE8u) + 232) ^ 0xD3)) ^ 0x57B467F08DD9E7B4;
  LODWORD(v105) = ((v115 ^ (32 * v115) ^ (8 * v115)) >> 32) ^ ((*(v71 + 8 * (v105 ^ a3)) ^ (32 * (*(v71 + 8 * (v105 ^ a3)) ^ 0x1DF48BCF4384E593)) ^ (8 * (*(v71 + 8 * (v105 ^ a3)) ^ 0x1DF48BCF4384E593uLL))) >> 16);
  v117 = v81 ^ 0x93DCE477;
  v118 = ((*(v71 + 8 * (v99 ^ a3)) ^ (32 * (*(v71 + 8 * (v99 ^ a3)) ^ 0xDF3FB549FED56743)) ^ (8 * (*(v71 + 8 * (v99 ^ a3)) ^ 0xDF3FB549FED56743))) >> 8) ^ ((v111 ^ (32 * v111) ^ (8 * v111)) >> 32) ^ v112 ^ (v113 >> 24) ^ 0x352D3F51;
  v119 = v103 ^ 0x556DC357;
  v120 = ((v116 ^ (32 * v116) ^ (8 * v116)) >> 8) ^ v105 ^ ((*(v71 + 8 * (v106 ^ a3)) ^ (32 * (*(v71 + 8 * (v106 ^ a3)) ^ 0xA3FF3FF626DBFBF3)) ^ (8 * (*(v71 + 8 * (v106 ^ a3)) ^ 0xA3FF3FF626DBFBF3))) >> 24) ^ 0xD4DE097D;
  v121 = *(a10 + (v119 >> 24));
  v122 = *(a10 + BYTE2(v118));
  v123 = *(a10 + v120);
  v124 = *(a10 + (v118 >> 24));
  v125 = *(a10 + (v103 ^ 0x57u));
  v126 = *(a10 + (v117 >> 24));
  v127 = *(a10 + BYTE1(v120));
  v128 = *(a10 + BYTE1(v117));
  v129 = *(a10 + (v81 ^ 0x77u));
  v130 = *(a10 + BYTE1(v119));
  v131 = *(a10 + v118);
  v132 = *(a10 + BYTE1(v118));
  v133 = *(v71 + 8 * (*(a10 + BYTE2(v117)) ^ a3));
  v134 = *(a10 + BYTE2(v119));
  v135 = *(v71 + 8 * (v122 ^ a3)) ^ 0x9B4EF10CD2567C9BLL;
  v136 = *(v71 + 8 * (v121 ^ a3)) ^ 0x97DB90A1B0774394;
  LODWORD(v136) = ((v135 ^ (32 * v135) ^ (8 * v135)) >> 32) ^ ((v133 ^ (32 * (v133 ^ 0x2DB0C3C2A35DA957)) ^ (8 * (v133 ^ 0x2DB0C3C2A35DA957uLL))) >> 24) ^ ((v136 ^ (32 * v136) ^ (8 * v136)) >> 8);
  v137 = *(v71 + 8 * (*(a10 + BYTE2(v120)) ^ a3)) ^ 0x560AF4423A1ACFC4;
  v138 = *(v71 + 8 * (v129 ^ a3)) ^ 0x193B1573A21403BFLL;
  LODWORD(v133) = ((*(v71 + 8 * (v130 ^ a3)) ^ (32 * (*(v71 + 8 * (v130 ^ a3)) ^ 0xE6D212A2949244E1)) ^ (8 * (*(v71 + 8 * (v130 ^ a3)) ^ 0xE6D212A2949244E1))) >> 8) ^ ((v138 ^ (32 * v138) ^ (8 * v138)) >> 24);
  v139 = *(v71 + 8 * (v131 ^ a3)) ^ 0xC1D298D994877AE3;
  v140 = *(v71 + 8 * (*(a10 + (v120 >> 24)) ^ a3));
  v141 = *(v71 + 8 * (v128 ^ a3)) ^ 0x5539C8B388F97DF8;
  v142 = *(v71 + 8 * (v132 ^ a3)) ^ 0xF151B33D5F14FF2FLL;
  LODWORD(v141) = ((v141 ^ (32 * v141) ^ (8 * v141)) >> 8) ^ ((v142 ^ (32 * v142) ^ (8 * v142)) >> 16);
  v143 = *(v71 + 8 * (v134 ^ a3)) ^ 0xF83DD0B818F2531DLL;
  v144 = v136 ^ 0x9DADF1DE ^ ((*(v71 + 8 * (v123 ^ a3)) ^ (32 * (*(v71 + 8 * (v123 ^ a3)) ^ 0x7C7DCEBF58BD8FE4)) ^ (8 * (*(v71 + 8 * (v123 ^ a3)) ^ 0x7C7DCEBF58BD8FE4uLL))) >> 16);
  LODWORD(v141) = v141 ^ ((v143 ^ (32 * v143) ^ (8 * v143)) >> 24);
  v145 = ((v137 ^ (32 * v137) ^ (8 * v137)) >> 16) ^ v133 ^ ((v139 ^ (32 * v139) ^ (8 * v139)) >> 32) ^ 0x516FE8C0;
  v146 = ((*(v71 + 8 * (v125 ^ a3)) ^ (32 * (*(v71 + 8 * (v125 ^ a3)) ^ 0x2C0B5B3CEA195FE7)) ^ (8 * (*(v71 + 8 * (v125 ^ a3)) ^ 0x2C0B5B3CEA195FE7uLL))) >> 24) ^ ((*(v71 + 8 * (v124 ^ a3)) ^ 0xC08BA403D7DDBADFLL ^ (32 * (*(v71 + 8 * (v124 ^ a3)) ^ 0xC08BA403D7DDBADFLL)) ^ (8 * (*(v71 + 8 * (v124 ^ a3)) ^ 0xC08BA403D7DDBADFLL))) >> 16) ^ ((*(v71 + 8 * (v126 ^ a3)) ^ (32 * (*(v71 + 8 * (v126 ^ a3)) ^ 0x2A18691AF1F15627)) ^ (8 * (*(v71 + 8 * (v126 ^ a3)) ^ 0x2A18691AF1F15627uLL))) >> 8) ^ 0x3738396D ^ ((*(v71 + 8 * (v127 ^ a3)) ^ (32 * (*(v71 + 8 * (v127 ^ a3)) ^ 0xA98719CFF0F2CE69)) ^ (8 * (*(v71 + 8 * (v127 ^ a3)) ^ 0xA98719CFF0F2CE69))) >> 32);
  v147 = v141 ^ 0x74FA56EE ^ ((v140 ^ (32 * (v140 ^ 0x69B6B2A5BD483F25)) ^ (8 * (v140 ^ 0x69B6B2A5BD483F25uLL))) >> 32);
  v148 = *(v62 + (v136 ^ 0xDEu ^ ((*(v71 + 8 * (v123 ^ a3)) ^ (32 * (*(v71 + 8 * (v123 ^ a3)) ^ 0x58BD8FE4)) ^ (8 * (*(v71 + 8 * (v123 ^ a3)) ^ 0x58BD8FE4u))) >> 16)));
  v149 = *(v62 + v147);
  v150 = *(v62 + v146);
  v151 = *(v62 + BYTE1(v147));
  v152 = *(v62 + ((v136 ^ 0xF1DE ^ ((*(v71 + 8 * (v123 ^ a3)) ^ (32 * (*(v71 + 8 * (v123 ^ a3)) ^ 0x58BD8FE4)) ^ (8 * (*(v71 + 8 * (v123 ^ a3)) ^ 0x58BD8FE4u))) >> 16)) >> 8));
  v153 = v147 >> 24;
  v154 = *(v62 + BYTE2(v147));
  v155 = *(v62 + BYTE2(v146));
  v156 = v146 >> 24;
  v157 = *(v71 + 8 * (v148 ^ a3)) ^ 0x2B117C8446397D9CLL;
  v158 = *(v71 + 8 * (*(v62 + v145) ^ a3)) ^ 0x2419C05B14A81C2DLL;
  LODWORD(v157) = ((*(v71 + 8 * (v150 ^ a3)) ^ (32 * (*(v71 + 8 * (v150 ^ a3)) ^ 0xE225B8598A91DDE8)) ^ (8 * (*(v71 + 8 * (v150 ^ a3)) ^ 0xE225B8598A91DDE8))) >> 8) ^ ((v157 ^ (32 * v157) ^ (8 * v157)) >> 32) ^ ((v158 ^ (32 * v158) ^ (8 * v158)) >> 16);
  v159 = (-*(v71 + 8 * (v149 ^ a3)) ^ 0x330AF6AD5D43BD4ELL ^ (0x18CB4FC383E94FCDLL - (*(v71 + 8 * (v149 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (*(v71 + 8 * (v149 ^ a3)) + 0x330AF6AD5D43BD4ELL - ((2 * *(v71 + 8 * (v149 ^ a3))) & 0x6615ED5ABA877A9CLL))) + 0x18CB4FC383E94FCDLL;
  v160 = (v159 ^ (32 * v159) ^ (8 * v159)) >> 24;
  v161 = v151 ^ a3;
  v162 = (*(v71 + 8 * (*(v62 + BYTE1(v145)) ^ a3)) ^ (32 * (*(v71 + 8 * (*(v62 + BYTE1(v145)) ^ a3)) ^ 0x2BC517F18E42CD9CLL)) ^ (8 * (*(v71 + 8 * (*(v62 + BYTE1(v145)) ^ a3)) ^ 0x2BC517F18E42CD9CLL)) ^ 0xB46E282963981CE2) >> (v160 & 8 ^ 8) >> (v160 & 8);
  v163 = *(v71 + 8 * (v152 ^ a3)) ^ 0x28B95D6406A87FELL;
  v164 = *(v71 + 8 * (*(v62 + BYTE2(v145)) ^ a3));
  LODWORD(v131) = ((*(v71 + 8 * v161) ^ 0x3B0B162A8120B0C7 ^ (32 * (*(v71 + 8 * v161) ^ 0x3B0B162A8120B0C7)) ^ (8 * (*(v71 + 8 * v161) ^ 0x3B0B162A8120B0C7uLL))) >> 16) ^ ((*(v71 + 8 * (*(v62 + BYTE1(v146)) ^ a3)) ^ (32 * (*(v71 + 8 * (*(v62 + BYTE1(v146)) ^ a3)) ^ 0x67675882390CD366)) ^ (8 * (*(v71 + 8 * (*(v62 + BYTE1(v146)) ^ a3)) ^ 0x67675882390CD366uLL))) >> 32);
  v165 = *(v71 + 8 * (*(v62 + BYTE2(v144)) ^ a3)) ^ 0x2DDF4E920D0C10CELL;
  v166 = *(v71 + 8 * (*(v62 + v153) ^ a3));
  v167 = *(v71 + 8 * (*(v62 + (v144 >> 24)) ^ a3)) ^ 0xA2BF211654ECD9F3;
  LODWORD(v167) = ((v167 ^ (32 * v167) ^ (8 * v167)) >> 16) ^ ((v166 ^ (32 * (v166 ^ 0x91AFA219B99565E6)) ^ (8 * (v166 ^ 0x91AFA219B99565E6))) >> 8);
  v168 = *(v71 + 8 * (*(v62 + v156) ^ a3)) ^ 0x4E6B23F3382BD75ELL;
  v169 = *(v71 + 8 * (*(v62 + (v145 >> 24)) ^ a3)) ^ 0xA70C8E3562C1E916;
  v171 = __ROR4__(__ROR4__(v157 ^ 0x6DEC0BEA ^ v160, 26) ^ 0xAD6B03E1, 6);
  v170 = v171 ^ 0x79F6A83Du;
  LODWORD(v168) = v167 ^ ((v168 ^ (32 * v168) ^ (8 * v168)) >> 24) ^ ((v169 ^ (32 * v169) ^ (8 * v169)) >> 32);
  v172 = ((*(v71 + 8 * (v154 ^ a3)) ^ (32 * (*(v71 + 8 * (v154 ^ a3)) ^ 0x4AF38DD187CF06EFLL)) ^ (8 * (*(v71 + 8 * (v154 ^ a3)) ^ 0x4AF38DD187CF06EFuLL))) >> 16) ^ ((v164 ^ 0xDC6A572A04A091D3 ^ (32 * (v164 ^ 0xDC6A572A04A091D3)) ^ (8 * (v164 ^ 0xDC6A572A04A091D3))) >> 8) ^ ((v165 ^ (32 * v165) ^ (8 * v165)) >> 24) ^ ((*(v71 + 8 * (v155 ^ a3)) ^ (32 * (*(v71 + 8 * (v155 ^ a3)) ^ 0x19C544A0C99203DALL)) ^ (8 * (*(v71 + 8 * (v155 ^ a3)) ^ 0x19C544A0C99203DAuLL))) >> 32) ^ 0x94BD4172;
  v173 = *(v62 + ((((*(v71 + 8 * (v154 ^ a3)) ^ (32 * (*(v71 + 8 * (v154 ^ a3)) ^ 0x87CF06EF)) ^ (8 * (*(v71 + 8 * (v154 ^ a3)) ^ 0x87CF06EF))) >> 16) ^ ((v164 ^ 0x91D3 ^ (32 * (v164 ^ 0x91D3)) ^ (8 * (v164 ^ 0x91D3))) >> 8) ^ ((v165 ^ (32 * v165) ^ (8 * v165)) >> 24) ^ ((*(v71 + 8 * (v155 ^ a3)) ^ (32 * (*(v71 + 8 * (v155 ^ a3)) ^ 0x19C544A0C99203DALL)) ^ (8 * (*(v71 + 8 * (v155 ^ a3)) ^ 0x19C544A0C99203DAuLL))) >> 32)) ^ 0x72u));
  v174 = v168 ^ 0x92E2C65E;
  v175 = *(v62 + (v174 >> 24));
  v176 = v131 ^ ((v163 ^ (32 * v163) ^ (8 * v163)) >> 24) ^ 0xB7B28FFB ^ v162;
  v177 = *(v62 + BYTE1(v172));
  v178 = *(v62 + v174);
  v179 = *(v62 + BYTE2(v172));
  v180 = *(v62 + (v176 >> 24));
  v181 = *(v62 + v176);
  v182 = *(v62 + BYTE2(v174));
  v183 = *(v62 + BYTE1(v174));
  v184 = *(v71 + 8 * (*(v62 + (v170 >> 24)) ^ a3)) ^ 0x89F00C7E2DE640F4;
  v185 = *(v62 + BYTE1(v176));
  v186 = *(v62 + (v172 >> 24));
  v187 = *(v71 + 8 * (*(v62 + BYTE2(v176)) ^ a3)) ^ 0xBDBC0F8C4B91BA6DLL;
  v188 = *(v71 + 8 * (v173 ^ a3));
  LODWORD(v173) = ((v187 ^ (32 * v187) ^ (8 * v187)) >> 32) ^ ((v184 ^ (32 * v184) ^ (8 * v184)) >> 24);
  v189 = *(v71 + 8 * (v180 ^ a3)) ^ 0x112D85830F3848FFLL;
  v190 = *(v71 + 8 * (v178 ^ a3)) ^ 0x4A2DC42FC497DCCDLL;
  LODWORD(v154) = ((*(v71 + 8 * (v177 ^ a3)) ^ (32 * (*(v71 + 8 * (v177 ^ a3)) ^ 0x6B21C7439A5E39EALL)) ^ (8 * (*(v71 + 8 * (v177 ^ a3)) ^ 0x6B21C7439A5E39EAuLL))) >> 24) ^ ((v190 ^ (32 * v190) ^ (8 * v190)) >> 32) ^ ((v189 ^ (32 * v189) ^ (8 * v189)) >> 16);
  v191 = *(v71 + 8 * (*(v62 + (v171 ^ 0x3Du)) ^ a3)) ^ 0x311F857C78CBD71DLL;
  v192 = (v191 ^ (32 * v191) ^ (8 * v191)) >> 8;
  v193 = (-*(v71 + 8 * (v183 ^ a3)) ^ 0x947B763962B63FD7 ^ (0x18CB4FC383E94FCDLL - (*(v71 + 8 * (v183 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (*(v71 + 8 * (v183 ^ a3)) - 0x6B8489C69D49C029 - ((2 * *(v71 + 8 * (v183 ^ a3))) & 0x28F6EC72C56C7FAELL))) + 0x18CB4FC383E94FCDLL;
  v194 = *(v71 + 8 * (*(v62 + BYTE1(v170)) ^ a3)) ^ 0x85D5EEB22C07F706;
  v195 = *(v71 + 8 * (v181 ^ a3)) ^ 0x83DBDF385BF5C46BLL;
  LODWORD(v191) = ((v194 ^ (32 * v194) ^ (8 * v194)) >> 16) ^ ((*(v71 + 8 * (v179 ^ a3)) ^ (32 * (*(v71 + 8 * (v179 ^ a3)) ^ 0x683194D50881A61DLL)) ^ (8 * (*(v71 + 8 * (v179 ^ a3)) ^ 0x683194D50881A61DuLL))) >> 32) ^ ((v195 ^ (32 * v195) ^ (8 * v195)) >> 24) ^ ((v193 ^ (32 * v193) ^ (8 * v193)) >> 8);
  v196 = *(v71 + 8 * (v182 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v197 = *(v71 + 8 * (*(v62 + BYTE2(v170)) ^ a3));
  v198 = *(v71 + 8 * (v185 ^ a3)) ^ 0xE8013709C4FA46B0;
  v199 = *(v71 + 8 * (v186 ^ a3)) ^ 0x83E045FAA277B081;
  v200 = (((8 * v199) ^ (32 * v199) ^ 0xBC3916ED3F2813E0) - 2 * (((8 * v199) ^ (32 * v199) ^ 0xBC3916ED3F2813E0) & 0x1B2B0A39219EFF58 ^ (8 * v199) & 0x10) - 0x64D4F5C6DE6100B4) ^ v199;
  v201 = v173 ^ ((v188 ^ (32 * (v188 ^ 0xA379CC0C61969AF8)) ^ (8 * (v188 ^ 0xA379CC0C61969AF8))) >> 8) ^ ((*(v71 + 8 * (v175 ^ a3)) ^ (32 * (*(v71 + 8 * (v175 ^ a3)) ^ 0xBB6864B07BC49549)) ^ (8 * (*(v71 + 8 * (v175 ^ a3)) ^ 0xBB6864B07BC49549))) >> 16) ^ 0x972982EA;
  v202 = ((v197 ^ (32 * (v197 ^ 0x4DB41DAF87559D83)) ^ (8 * (v197 ^ 0x4DB41DAF87559D83uLL))) >> 24) ^ ((v198 ^ (32 * v198) ^ (8 * v198)) >> 32) ^ (((-v196 ^ 0x4AEB5B0061E64500 ^ (v196 + 0x4AEB5B0061E64500 - ((2 * v196) & 0x95D6B600C3CC8A04) + 2) ^ (((32 * v196) ^ (8 * v196)) - ((32 * v196) ^ (8 * v196) ^ v196))) + ((32 * v196) ^ (8 * v196))) >> 16) ^ ((v200 >> 8) - ((v200 >> 7) & 0x959A85714E6294) + 0x5A4ACD42B8A7314ALL) ^ 0x5A4ACD46C7AF7628;
  v203 = *(v62 + v201);
  v204 = v191 ^ 0x4B4EF4AD;
  v205 = v154 ^ v192 ^ 0x374541D0;
  v206 = *(v62 + BYTE1(v204));
  v207 = *(v62 + BYTE2(v204));
  v208 = v202 ^ 0x67F01339;
  v209 = *(v62 + BYTE1(v205));
  v210 = *(v62 + (BYTE2(v202) ^ 0xF0));
  v211 = *(v62 + (v202 ^ 0x39u));
  v212 = *(v62 + (v204 >> 24));
  v213 = *(v62 + BYTE2(v201));
  v214 = *(v62 + BYTE1(v201));
  v215 = v201 >> 24;
  v216 = *(v62 + (v205 >> 24));
  v217 = *(v62 + v215);
  v218 = *(v62 + BYTE2(v205));
  v219 = v203 ^ a3;
  v220 = *(v62 + v204);
  v221 = *(v71 + 8 * (*(v62 + v205) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v221) = ((v221 ^ (32 * v221) ^ (8 * v221)) >> 32) ^ ((*(v71 + 8 * v219) ^ (32 * (*(v71 + 8 * v219) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * v219) ^ 0x18CB4FC383E94FCDuLL))) >> 24) ^ ((*(v71 + 8 * (v206 ^ a3)) ^ (32 * (*(v71 + 8 * (v206 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v206 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 8);
  v222 = *(v71 + 8 * (v209 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v222) = ((*(v71 + 8 * (v207 ^ a3)) ^ (32 * (*(v71 + 8 * (v207 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v207 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 32) ^ ((v222 ^ (32 * v222) ^ (8 * v222)) >> 24);
  v223 = *(v71 + 8 * (*(v62 + (v208 >> 24)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v224 = *(v71 + 8 * (v214 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v225 = (v223 ^ (32 * v223) ^ (8 * v223)) >> 8;
  v226 = *(v71 + 8 * (v213 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v223) = ((*(v71 + 8 * (v212 ^ a3)) ^ (32 * (*(v71 + 8 * (v212 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v212 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 32) ^ ((v226 ^ (32 * v226) ^ (8 * v226)) >> 16) ^ ((*(v71 + 8 * (v218 ^ a3)) ^ (32 * (*(v71 + 8 * (v218 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v218 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 24);
  v227 = *(v71 + 8 * (*(v62 + BYTE1(v208)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v228 = *(v71 + 8 * (v217 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v229 = __ROR8__(__ROR8__(v228 ^ (32 * v228) ^ (8 * v228), 31) ^ 0xAA000000012CAEE6, 33);
  v230 = *(v71 + 8 * (v216 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v231 = *(v71 + 8 * (v220 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v232 = (v231 ^ (32 * v231) ^ (8 * v231)) >> 8;
  v233 = v221 ^ ((*(v71 + 8 * (v210 ^ a3)) ^ (8 * *(v71 + 8 * (v210 ^ a3))) ^ (32 * *(v71 + 8 * (v210 ^ a3)))) >> 16) ^ 0x9BD1F07D;
  v234 = v222 ^ ((v224 ^ (32 * v224) ^ (8 * v224)) >> 16) ^ 0x4484838 ^ v225;
  v235 = ((*(v71 + 8 * (v211 ^ a3)) ^ (32 * (*(v71 + 8 * (v211 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v211 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 8) ^ v223 ^ 0x521B0D21;
  v236 = ((v230 ^ (32 * v230) ^ (8 * v230)) >> 32) ^ v232 ^ ((v227 ^ (32 * v227) ^ (8 * v227)) >> 16) ^ (v229 >> 24) ^ 0x60FEF739;
  v237 = *(v62 + BYTE2(v236));
  v238 = *(v62 + (v236 >> 24));
  v239 = *(v62 + (v221 ^ ((*(v71 + 8 * (v210 ^ a3)) ^ (8 * *(v71 + 8 * (v210 ^ a3))) ^ (32 * *(v71 + 8 * (v210 ^ a3)))) >> 16) ^ 0x7D));
  v240 = *(v62 + BYTE1(v236));
  v241 = *(v62 + v236);
  v242 = *(v62 + BYTE2(v234));
  v243 = *(v62 + BYTE1(v234));
  v244 = ((*(v71 + 8 * (*(v62 + (v234 >> 24)) ^ a3)) - (*(v71 + 8 * (*(v62 + (v234 >> 24)) ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ 0xFFFFFFFFFFFFFFFELL) + *(v71 + 8 * (*(v62 + (v234 >> 24)) ^ a3));
  v245 = (v244 ^ (32 * v244) ^ (8 * v244) ^ 0x551CA03B385D0B87) >> (v219 & 0x20) >> (~v219 & 0x20);
  v246 = *(v71 + 8 * (*(v62 + BYTE1(v235)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v237) = ((v246 ^ (32 * v246) ^ (8 * v246)) >> 8) ^ ((*(v71 + 8 * (v239 ^ a3)) ^ (32 * (*(v71 + 8 * (v239 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v239 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 24) ^ ((*(v71 + 8 * (v237 ^ a3)) ^ (32 * (*(v71 + 8 * (v237 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v237 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 16);
  v247 = *(v71 + 8 * (*(v62 + BYTE2(v235)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v248 = *(v71 + 8 * (v238 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v234) = ((v247 ^ (32 * v247) ^ (8 * v247)) >> 16) ^ ((*(v71 + 8 * (*(v62 + v234) ^ a3)) ^ (32 * (*(v71 + 8 * (*(v62 + v234) ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (*(v62 + v234) ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 8);
  v249 = v248 ^ (32 * v248) ^ (8 * v248);
  v250 = *(v71 + 8 * (*(v62 + BYTE1(v233)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v251 = v234 ^ (v249 >> 24);
  v252 = ((v250 ^ (32 * v250) ^ (8 * v250)) >> 32) ^ 0x551CA03B;
  v253 = (((v251 ^ 0x4420B721uLL) >> 18) | ((v251 ^ 0x4420B721) << 14)) ^ ((v252 >> 18) | (v252 << 14));
  v254 = *(v71 + 8 * (*(v62 + (v235 >> 24)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v255 = *(v71 + 8 * (*(v62 + BYTE2(v233)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v256 = *(v71 + 8 * (v243 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v257 = *(v71 + 8 * (*(v62 + (v233 >> 24)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v258 = *(v71 + 8 * (v242 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v259 = *(v71 + 8 * (*(v62 + v235) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v240) = ((v257 ^ (32 * v257) ^ (8 * v257)) >> 24) ^ ((v258 ^ (32 * v258) ^ (8 * v258)) >> 32) ^ ((*(v71 + 8 * (v240 ^ a3)) ^ (32 * (*(v71 + 8 * (v240 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v240 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 16);
  v260 = (((v253 ^ 0x55272016uLL) >> 14) | ((v253 ^ 0x55272016) << 18)) ^ 0x38A68048;
  v261 = v237 ^ 0x80306567 ^ v245;
  v262 = ((*(v71 + 8 * (v241 ^ a3)) ^ (32 * (*(v71 + 8 * (v241 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v241 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 24) ^ ((v254 ^ (32 * v254) ^ (8 * v254)) >> 16) ^ ((v255 ^ (32 * v255) ^ (8 * v255)) >> 32) ^ ((v256 ^ (32 * v256) ^ (8 * v256)) >> 8) ^ 0x39155CB;
  v263 = *(v62 + v261);
  v264 = *(v62 + (v262 >> 24));
  v265 = *(v62 + BYTE2(v260));
  v266 = v240 ^ ((v259 ^ (32 * v259) ^ (8 * v259)) >> 8) ^ 0x5D655F8D;
  v267 = *(v62 + BYTE2(v266));
  v268 = *(v62 + BYTE1(v260));
  v269 = *(v62 + BYTE1(v261));
  v270 = *(v62 + v262);
  v271 = *(v62 + BYTE1(v262));
  v272 = *(v62 + (v266 >> 24));
  v273 = *(v62 + v266);
  v274 = *(v62 + (v260 >> 24));
  v275 = *(v62 + BYTE2(v261));
  v276 = v261 >> 24;
  v277 = *(v62 + BYTE2(v262));
  v278 = *(v62 + BYTE1(v266));
  v279 = *(v71 + 8 * (v263 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v280 = *(v62 + v260);
  v281 = v279 ^ (32 * v279) ^ (8 * v279);
  v282 = ((v268 >> 5) & 0xFFFFFFFF07FFFFFFLL | ((v268 & 0x1F) << 27)) ^ 0xFB18B9FF;
  v283 = v281 >> 16;
  v284 = *(v71 + 8 * (((32 * v282) & 0x63173FE0 | (v282 >> 27)) ^ 0x63173FC4)) ^ 0x18CB4FC383E94FCDLL;
  v285 = *(v71 + 8 * (v264 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v286 = *(v71 + 8 * (v267 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v287 = *(v71 + 8 * (v265 ^ a3));
  LODWORD(v265) = v283 ^ ((v285 ^ (32 * v285) ^ (8 * v285)) >> 32) ^ ((v286 ^ (32 * v286) ^ (8 * v286)) >> 8);
  v288 = *(v71 + 8 * (v270 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v289 = *(v71 + 8 * (v269 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v290 = v271 ^ a3;
  LODWORD(v271) = ((v288 ^ (32 * v288) ^ (8 * v288)) >> 32) ^ ((*(v71 + 8 * (v272 ^ a3)) ^ (32 * (*(v71 + 8 * (v272 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v272 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 8) ^ ((v289 ^ (32 * v289) ^ (8 * v289)) >> 16);
  v291 = *(v71 + 8 * (v273 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v288) = ((v291 ^ (32 * v291) ^ (8 * v291)) >> 24) ^ ((*(v71 + 8 * v290) ^ 0x18CB4FC383E94FCDLL ^ (32 * (*(v71 + 8 * v290) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * v290) ^ 0x18CB4FC383E94FCDuLL))) >> 16);
  v292 = *(v71 + 8 * (v275 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v288) = v288 ^ ((v292 ^ (32 * v292) ^ (8 * v292)) >> 32);
  v293 = *(v71 + 8 * (v278 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v294 = *(v71 + 8 * (*(v62 + v276) ^ a3));
  v295 = *(v71 + 8 * (v280 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v294) = ((v293 ^ (32 * v293) ^ (8 * v293)) >> 32) ^ ((((32 * (v294 ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (v294 ^ 0x18CB4FC383E94FCDLL))) + (v294 ^ 0x4DD7EFF8BBB4444ALL) - 2 * (((32 * (v294 ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (v294 ^ 0x18CB4FC383E94FCDLL))) & (v294 ^ 0x4DD7EFF8BBB4444AuLL))) >> 8) ^ ((*(v71 + 8 * (v277 ^ a3)) ^ (32 * (*(v71 + 8 * (v277 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v277 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 24);
  v296 = v271 ^ 0xBB8FF93F ^ ((v287 ^ (32 * (v287 ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (v287 ^ 0x18CB4FC383E94FCDuLL))) >> 24);
  v297 = ((v284 ^ (32 * v284) ^ (8 * v284)) >> 24) ^ v265 ^ 0x7EF118D0;
  v298 = *(v62 + (v296 >> 24));
  v299 = v288 ^ 0x304D88E ^ ((*(v71 + 8 * (v274 ^ a3)) ^ (32 * (*(v71 + 8 * (v274 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v274 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 8);
  v300 = ((v295 ^ (32 * v295) ^ (8 * v295)) >> 16) ^ v294 ^ 0xEED525B0;
  v301 = *(v62 + (v271 ^ 0x3F ^ ((v287 ^ (32 * (v287 ^ 0x83E94FCD)) ^ (8 * (v287 ^ 0x83E94FCD))) >> 24)));
  v302 = *(v62 + (v299 >> 24));
  v303 = *(v62 + BYTE1(v299));
  v304 = *(v62 + v299);
  v305 = *(v62 + BYTE1(v300));
  v306 = *(v62 + BYTE2(v300));
  v307 = *(v62 + v300);
  v308 = *(v62 + BYTE2(v297));
  v309 = *(v62 + (v297 >> 24));
  v310 = v300 >> 24;
  v311 = *(v62 + BYTE1(v296));
  v312 = *(v62 + v297);
  v313 = *(v62 + BYTE2(v296));
  v314 = *(v62 + BYTE1(v297)) ^ a3;
  v315 = *(v62 + BYTE2(v299));
  v316 = *(v71 + 8 * v314) ^ 0x18CB4FC383E94FCDLL ^ (32 * (*(v71 + 8 * v314) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * v314) ^ 0x18CB4FC383E94FCDLL));
  v317 = v298 ^ a3;
  v318 = v316 >> 8;
  v319 = *(v71 + 8 * (v307 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v316) = ((*(v71 + 8 * v317) ^ 0x18CB4FC383E94FCDLL ^ (32 * (*(v71 + 8 * v317) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * v317) ^ 0x18CB4FC383E94FCDuLL))) >> 16) ^ ((*(v71 + 8 * (v302 ^ a3)) ^ (32 * (*(v71 + 8 * (v302 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v302 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 24);
  v320 = (v319 ^ (32 * v319) ^ (8 * v319)) >> 32;
  v321 = *(v71 + 8 * (v301 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v301) = v316 ^ v320;
  v322 = *(v71 + 8 * (v304 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v323 = *(v71 + 8 * (v305 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v316) = ((v322 ^ (32 * v322) ^ (8 * v322)) >> 8) ^ ((v321 ^ (32 * v321) ^ (8 * v321)) >> 32);
  v324 = (v323 ^ (32 * v323) ^ (8 * v323)) >> 16;
  v325 = v308 ^ a3;
  LODWORD(v308) = v316 ^ v324;
  v326 = *(v71 + 8 * (v303 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v327 = *(v71 + 8 * (v306 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v328 = *(v71 + 8 * (*(v62 + v310) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v329 = *(v71 + 8 * (v313 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v330 = v301 ^ 0xFEFCEE0 ^ v318;
  LODWORD(v315) = ((v328 ^ (32 * v328) ^ (8 * v328)) >> 16) ^ ((v329 ^ (32 * v329) ^ (8 * v329)) >> 32) ^ ((*(v71 + 8 * (v315 ^ a3)) ^ (32 * (*(v71 + 8 * (v315 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v315 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 8);
  v331 = v308 ^ 0xDF327E42 ^ ((*(v71 + 8 * v325) ^ 0x18CB4FC383E94FCDLL ^ (32 * (*(v71 + 8 * v325) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * v325) ^ 0x18CB4FC383E94FCDuLL))) >> 24);
  v332 = ((v327 ^ (32 * v327) ^ (8 * v327)) >> 24) ^ ((v326 ^ (32 * v326) ^ (8 * v326)) >> 16) ^ ((*(v71 + 8 * (v311 ^ a3)) ^ (32 * (*(v71 + 8 * (v311 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v311 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 8) ^ 0xE8B556D6 ^ ((*(v71 + 8 * (v309 ^ a3)) ^ (32 * (*(v71 + 8 * (v309 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v309 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 32);
  v333 = ((*(v71 + 8 * (v312 ^ a3)) ^ (32 * (*(v71 + 8 * (v312 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v312 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 24) ^ v315 ^ 0x80CAF789;
  v334 = *(v62 + (v332 >> 24));
  v335 = *(v62 + BYTE2(v333));
  v336 = *(v62 + v333);
  v337 = *(v62 + BYTE1(v332));
  v338 = *(v62 + (v330 >> 24));
  v339 = *(v62 + (v333 >> 24));
  v340 = *(v62 + v331);
  v341 = *(v62 + v330);
  v342 = *(v62 + BYTE1(v333));
  v343 = *(v62 + BYTE1(v330));
  v344 = *(v71 + 8 * (*(v62 + BYTE2(v330)) ^ a3));
  v345 = *(v62 + BYTE2(v332));
  v346 = *(v71 + 8 * (*(v62 + BYTE2(v331)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v347 = *(v71 + 8 * (*(v62 + (v331 >> 24)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v346) = ((v346 ^ (32 * v346) ^ (8 * v346)) >> 8) ^ ((v344 ^ (32 * (v344 ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (v344 ^ 0x18CB4FC383E94FCDuLL))) >> 32) ^ ((*(v71 + 8 * (v334 ^ a3)) ^ (32 * (*(v71 + 8 * (v334 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v334 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 16) ^ ((*(v71 + 8 * (v335 ^ a3)) ^ (32 * (*(v71 + 8 * (v335 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v335 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 24);
  v348 = *(v71 + 8 * (*(v62 + v332) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v332) = ((v348 ^ (32 * v348) ^ (8 * v348)) >> 8) ^ ((v347 ^ (32 * v347) ^ (8 * v347)) >> 32);
  v349 = *(v71 + 8 * (v339 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v350 = *(v71 + 8 * (v338 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v351 = *(v71 + 8 * (v337 ^ a3));
  LODWORD(v337) = v332 ^ ((v349 ^ (32 * v349) ^ (8 * v349)) >> 16) ^ ((v350 ^ (32 * v350) ^ (8 * v350)) >> 24);
  v352 = *(v71 + 8 * (v336 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v353 = *(v71 + 8 * (v341 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v354 = *(v71 + 8 * (v342 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v352) = ((v352 ^ (32 * v352) ^ (8 * v352)) >> 16) ^ ((v351 ^ (32 * (v351 ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (v351 ^ 0x18CB4FC383E94FCDuLL))) >> 8) ^ ((v353 ^ (32 * v353) ^ (8 * v353)) >> 24) ^ ((*(v71 + 8 * (v340 ^ a3)) ^ (32 * (*(v71 + 8 * (v340 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v340 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 32);
  v355 = *(v71 + 8 * (*(v62 + BYTE1(v331)) ^ a3));
  v356 = *(v71 + 8 * (v345 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v357 = v346 ^ 0x9318DA7D;
  LODWORD(v356) = ((*(v71 + 8 * (v343 ^ a3)) ^ (32 * (*(v71 + 8 * (v343 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v343 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 16) ^ ((v354 ^ (32 * v354) ^ (8 * v354)) >> 8) ^ ((v355 ^ (32 * (v355 ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (v355 ^ 0x18CB4FC383E94FCDuLL))) >> 24) ^ ((v356 ^ (32 * v356) ^ (8 * v356)) >> 32);
  v358 = v352 ^ 0xEB982E9F;
  v359 = v337 ^ 0x947B4DBF;
  v360 = v356 ^ 0x4087B74E;
  v361 = *(v62 + BYTE1(v358));
  v362 = *(v62 + (v356 ^ 0x4Eu));
  v363 = *(v62 + (v346 ^ 0x7Du));
  v364 = *(v62 + BYTE1(v357));
  v365 = *(v62 + BYTE1(v359));
  v366 = *(v62 + BYTE2(v357));
  v367 = *(v71 + 8 * (*(v62 + (v357 >> 24)) ^ a3));
  v368 = *(v71 + 8 * (*(v62 + BYTE2(v359)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v369 = *(v71 + 8 * (*(v62 + (v352 ^ 0x9Fu)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v370 = *(v71 + 8 * (*(v62 + (v360 >> 24)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v368) = ((v368 ^ (32 * v368) ^ (8 * v368)) >> 32) ^ ((v367 ^ (32 * (v367 ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (v367 ^ 0x18CB4FC383E94FCDuLL))) >> 24) ^ ((v369 ^ (32 * v369) ^ (8 * v369)) >> 8) ^ ((v370 ^ (32 * v370) ^ (8 * v370)) >> 16);
  v371 = *(v71 + 8 * (*(v62 + (v359 >> 24)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v372 = *(v71 + 8 * (v362 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v373 = *(v71 + 8 * (v363 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v374 = *(v71 + 8 * (*(v62 + BYTE2(v358)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v372) = ((*(v71 + 8 * (v361 ^ a3)) ^ (32 * (*(v71 + 8 * (v361 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v361 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 24) ^ ((v371 ^ (32 * v371) ^ (8 * v371)) >> 16) ^ ((v372 ^ (32 * v372) ^ (8 * v372)) >> 32) ^ ((v373 ^ (32 * v373) ^ (8 * v373)) >> 8);
  v375 = *(v71 + 8 * (*(v62 + BYTE1(v360)) ^ a3));
  v376 = *(v71 + 8 * (*(v62 + v359) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v377 = *(v71 + 8 * (*(v62 + BYTE2(v360)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v378 = *(v71 + 8 * (v366 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v379 = *(v71 + 8 * (v365 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v380 = *(v71 + 8 * (*(v62 + (v358 >> 24)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v381 = v368 ^ 0xEC7378ED;
  v382 = v372 ^ 0x940D5EB7;
  LODWORD(v379) = ((v378 ^ (32 * v378) ^ (8 * v378)) >> 32) ^ ((v377 ^ (32 * v377) ^ (8 * v377)) >> 24) ^ ((v379 ^ (32 * v379) ^ (8 * v379)) >> 8) ^ ((v380 ^ (32 * v380) ^ (8 * v380)) >> 16);
  v383 = ((v375 ^ (32 * (v375 ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (v375 ^ 0x18CB4FC383E94FCDuLL))) >> 16) ^ ((v374 ^ (32 * v374) ^ (8 * v374)) >> 8) ^ ((*(v71 + 8 * (v364 ^ a3)) ^ (32 * (*(v71 + 8 * (v364 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v364 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 24) ^ ((v376 ^ (32 * v376) ^ (8 * v376)) >> 32) ^ 0x18FC90DF;
  v384 = *(v62 + (v368 ^ 0xEDu));
  v385 = v379 ^ 0x66E00D81;
  v386 = *(v62 + (v372 ^ 0xB7u));
  v387 = *(v62 + ((((v375 ^ (32 * (v375 ^ 0x83E94FCD)) ^ (8 * (v375 ^ 0x83E94FCD))) >> 16) ^ ((v374 ^ (32 * v374) ^ (8 * v374)) >> 8) ^ ((*(v71 + 8 * (v364 ^ a3)) ^ (32 * (*(v71 + 8 * (v364 ^ a3)) ^ 0x83E94FCD)) ^ (8 * (*(v71 + 8 * (v364 ^ a3)) ^ 0x83E94FCD))) >> 24) ^ ((v376 ^ (32 * v376) ^ (8 * v376)) >> 32)) ^ 0xDFu));
  v388 = *(v62 + BYTE1(v385));
  v389 = *(v62 + BYTE1(v381));
  v390 = *(v62 + BYTE1(v382));
  v391 = *(v62 + BYTE1(v383));
  v392 = *(v62 + BYTE2(v385));
  v393 = *(v62 + BYTE2(v383));
  v394 = *(v62 + BYTE2(v381));
  v395 = *(v62 + (v385 >> 24));
  v396 = *(v62 + BYTE2(v382));
  v397 = *(v62 + v385);
  v398 = *(v62 + (v381 >> 24));
  v399 = v383 >> 24;
  v400 = *(v62 + (v382 >> 24));
  v401 = *(v71 + 8 * (v384 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v402 = *(v71 + 8 * (v386 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v403 = *(v71 + 8 * (v387 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v388) = ((v402 ^ (32 * v402) ^ (8 * v402)) >> 16) ^ ((v401 ^ (32 * v401) ^ (8 * v401)) >> 8) ^ ((v403 ^ (32 * v403) ^ (8 * v403)) >> 24) ^ ((*(v71 + 8 * (v388 ^ a3)) ^ (32 * (*(v71 + 8 * (v388 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v388 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 32);
  v404 = *(v71 + 8 * (v390 ^ a3)) + 0x18CB4FC383E94FCDLL - ((2 * *(v71 + 8 * (v390 ^ a3))) & 0x31969F8707D29F9ALL);
  v405 = *(v71 + 8 * (v391 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v406 = *(v71 + 8 * (v392 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v407 = *(v71 + 8 * (v389 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v408 = *(v71 + 8 * (v393 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v407) = ((v404 ^ (32 * v404) ^ (8 * v404)) >> 24) ^ ((v405 ^ (32 * v405) ^ (8 * v405)) >> 32) ^ ((v406 ^ (32 * v406) ^ (8 * v406)) >> 8) ^ ((v407 ^ (32 * v407) ^ (8 * v407)) >> 16);
  v409 = *(v71 + 8 * (v395 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v410 = *(v71 + 8 * (v396 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v411 = *(v71 + 8 * (v397 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v412 = ((v409 ^ (32 * v409) ^ (8 * v409)) >> 24) ^ ((v408 ^ (32 * v408) ^ (8 * v408)) >> 16) ^ ((*(v71 + 8 * (v394 ^ a3)) ^ (32 * (*(v71 + 8 * (v394 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v394 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 32) ^ ((v410 ^ (32 * v410) ^ (8 * v410)) >> 8);
  v413 = *(v71 + 8 * (v400 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v414 = *(v71 + 8 * (*(v62 + v399) ^ a3));
  LODWORD(v414) = ((*(v71 + 8 * (v398 ^ a3)) ^ (32 * (*(v71 + 8 * (v398 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v398 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 32) ^ ((v411 ^ (32 * v411) ^ (8 * v411)) >> 24) ^ ((v413 ^ (32 * v413) ^ (8 * v413)) >> 8) ^ ((v414 ^ (32 * (v414 ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (v414 ^ 0x18CB4FC383E94FCDuLL))) >> 16);
  v415 = v388 ^ 0x1104DEA5;
  v416 = *(v62 + BYTE2(v415));
  v417 = v407 ^ 0xB7E429BC;
  v418 = *(v62 + (v417 >> 24));
  v419 = v414 ^ 0xBADBE30;
  v420 = *(v62 + BYTE1(v419));
  v421 = *(v62 + (v407 ^ 0xBCu));
  v422 = *(v62 + (v412 ^ 0x6Eu));
  v423 = *(v62 + (v415 >> 24));
  v424 = *(v62 + ((v412 ^ 0x696E) >> 8));
  v425 = *(v62 + BYTE2(v419));
  v426 = *(v62 + (v419 >> 24));
  v427 = *(v62 + v415);
  v428 = *(v62 + v419);
  v429 = *(v62 + BYTE1(v417));
  v430 = *(v62 + BYTE2(v417));
  v431 = *(v62 + BYTE1(v415));
  v432 = *(v62 + ((v412 ^ 0x3C73696E) >> 16));
  v433 = (*(v71 + 8 * (v416 ^ a3)) ^ (32 * (*(v71 + 8 * (v416 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v416 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 24;
  v434 = *(v71 + 8 * (v418 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v435 = (v434 ^ (32 * v434) ^ (8 * v434)) >> 32;
  v436 = *(v71 + 8 * (*(v62 + (BYTE3(v412) ^ 0x3CLL)) ^ a3));
  v437 = 0x4000000000;
  if ((v436 & 0x4000000000) != 0)
  {
    v437 = 0xFFFFFFC000000000;
  }

  v438 = v433 ^ ((*(v71 + 8 * (v420 ^ a3)) ^ (32 * (*(v71 + 8 * (v420 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v420 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 16);
  v439 = *(v71 + 8 * (v421 ^ a3));
  v440 = v435 ^ v438;
  v441 = *(v71 + 8 * (v422 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v442 = (v441 ^ (32 * v441) ^ (8 * v441)) >> 32;
  v443 = *(v71 + 8 * (v425 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v444 = ((v439 ^ (32 * (v439 ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (v439 ^ 0x18CB4FC383E94FCDuLL))) >> 24) ^ ((v443 ^ (32 * v443) ^ (8 * v443)) >> 8);
  v445 = *(v71 + 8 * (v423 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v446 = *(v71 + 8 * (v424 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v447 = v444 ^ ((v445 ^ (32 * v445) ^ (8 * v445)) >> 16);
  v448 = (0x18CB4FC383E94FCDLL - (*(v71 + 8 * (v426 ^ a3)) & 0x20000000000)) ^ *(v71 + 8 * (v426 ^ a3)) & 0xFFFFFDFFFFFFFFFFLL;
  v449 = *(v71 + 8 * (v427 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v450 = ((v449 ^ (32 * v449) ^ (8 * v449)) >> 32) ^ ((v448 ^ (32 * v448) ^ (8 * v448)) >> 24) ^ ((*(v71 + 8 * (v429 ^ a3)) ^ (32 * (*(v71 + 8 * (v429 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v429 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 8) ^ ((v446 ^ (32 * v446) ^ (8 * v446)) >> 16);
  v451 = *(v71 + 8 * (v431 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v452 = *(v71 + 8 * (v430 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v452) = ((v451 ^ (32 * v451) ^ (8 * v451)) >> 24) ^ ((*(v71 + 8 * (v428 ^ a3)) ^ (32 * (*(v71 + 8 * (v428 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v428 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 16) ^ ((v452 ^ (32 * v452) ^ (8 * v452)) >> 32);
  v453 = *(v71 + 8 * (v432 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v454 = v440 ^ 0xF133B5DD ^ (((v437 + v436) ^ 0x18CB4F8383E94FCDLL ^ (32 * ((v437 + v436) ^ 0x18CB4F8383E94FCDLL)) ^ (8 * ((v437 + v436) ^ 0x18CB4F8383E94FCDLL))) >> 8);
  v455 = *(a10 + (v440 ^ 0xDDu ^ (((v437 + v436) ^ 0x4FCD ^ (32 * ((v437 + v436) ^ 0x4FCD)) ^ (8 * ((v437 + v436) ^ 0x4FCD))) >> 8)));
  v456 = v442 ^ v447 ^ 0xBE3E25D6;
  v457 = v450 ^ 0xEBF5A7DC;
  v458 = *(a10 + (v457 >> 24));
  v459 = v452 ^ 0xF77C9907 ^ ((v453 ^ (32 * v453) ^ (8 * v453)) >> 8);
  v460 = *(a10 + (v442 ^ v447 ^ 0xD6));
  v461 = *(a10 + BYTE2(v459));
  v462 = *(a10 + v457);
  v463 = *(a10 + v459);
  v464 = *(a10 + (v459 >> 24));
  v465 = *(a10 + BYTE1(v457));
  v466 = *(a10 + BYTE1(v454));
  v467 = *(a10 + BYTE1(v459));
  v468 = *(a10 + BYTE2(v457));
  v469 = *(v71 + 8 * (v455 ^ a3)) ^ (32 * (*(v71 + 8 * (v455 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v455 ^ a3)) ^ 0x18CB4FC383E94FCDLL));
  v470 = *(v71 + 8 * (*(a10 + (v456 >> 24)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v469) = ((v470 ^ (32 * v470) ^ (8 * v470)) >> 8) ^ HIDWORD(v469);
  v471 = *(v71 + 8 * (v461 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v472 = *(v71 + 8 * (v460 ^ a3));
  LODWORD(v460) = v469 ^ ((*(v71 + 8 * (v458 ^ a3)) ^ (32 * (*(v71 + 8 * (v458 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v458 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 16) ^ ((v471 ^ (32 * v471) ^ (8 * v471)) >> 24);
  v473 = *(v71 + 8 * (v462 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v462) = ((v473 ^ (32 * v473) ^ (8 * v473)) >> 24) ^ ((v472 ^ (32 * (v472 ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (v472 ^ 0x18CB4FC383E94FCDuLL))) >> 16) ^ ((*(v71 + 8 * (v464 ^ a3)) ^ (32 * (*(v71 + 8 * (v464 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v464 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 32);
  v474 = *(v71 + 8 * (v465 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v475 = *(v71 + 8 * (v463 ^ a3));
  v476 = (32 * (v475 ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (v475 ^ 0x18CB4FC383E94FCDLL));
  v477 = (v476 + (v475 ^ 0x4DD7EFF8BBB4444ALL) - 2 * (v476 & (v475 ^ 0x4DD7EFF8BBB4444AuLL))) >> 16;
  v478 = *(v71 + 8 * (*(a10 + BYTE2(v454)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v479 = *(v71 + 8 * (*(a10 + BYTE1(v456)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v474) = ((v478 ^ (32 * v478) ^ (8 * v478)) >> 24) ^ ((v474 ^ (32 * v474) ^ (8 * v474)) >> 8) ^ v477;
  v480 = *(v71 + 8 * (*(a10 + (v454 >> 24)) ^ a3));
  v481 = (*(v71 + 8 * (v467 ^ a3)) ^ (32 * (*(v71 + 8 * (v467 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v467 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 8;
  v482 = (32 * (v480 ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (v480 ^ 0x18CB4FC383E94FCDLL));
  v483 = ((v482 ^ -v482 ^ ((v480 ^ 0x4DD7EFF8BBB4444ALL) - (v480 ^ 0x4DD7EFF8BBB4444ALL ^ v482))) + (v480 ^ 0x4DD7EFF8BBB4444AuLL)) >> 16;
  v484 = *(v71 + 8 * (*(a10 + BYTE2(v456)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v485 = v460 ^ 0x6E84EAC2;
  v486 = v462 ^ ((*(v71 + 8 * (v466 ^ a3)) ^ (32 * (*(v71 + 8 * (v466 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v466 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 8) ^ 0xFFCFAB12;
  v487 = v474 ^ ((v479 ^ (32 * v479) ^ (8 * v479)) >> 32) ^ 0xA23D1DEA;
  v488 = *(a10 + (v462 ^ ((*(v71 + 8 * (v466 ^ a3)) ^ (32 * (*(v71 + 8 * (v466 ^ a3)) ^ 0x4FCD)) ^ (8 * (*(v71 + 8 * (v466 ^ a3)) ^ 0x4FCD))) >> 8) ^ 0x12));
  v489 = ((v484 ^ (32 * v484) ^ (8 * v484)) >> 24) ^ v481 ^ ((*(v71 + 8 * (v468 ^ a3)) ^ (32 * (*(v71 + 8 * (v468 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v468 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 32) ^ 0xBA0F008B ^ v483;
  v490 = *(a10 + v487);
  v491 = *(a10 + (v489 >> 24));
  v492 = *(a10 + ((v462 ^ ((*(v71 + 8 * (v466 ^ a3)) ^ (32 * (*(v71 + 8 * (v466 ^ a3)) ^ 0x83E94FCD)) ^ (8 * (*(v71 + 8 * (v466 ^ a3)) ^ 0x83E94FCD))) >> 8) ^ 0xAB12) >> 8));
  v493 = *(a10 + BYTE1(v489));
  v494 = *(a10 + BYTE2(v487));
  v495 = *(a10 + BYTE1(v487));
  v496 = *(a10 + v485);
  v497 = *(a10 + BYTE1(v485));
  v498 = *(a10 + BYTE2(v486));
  v499 = *(a10 + BYTE2(v489));
  v500 = *(a10 + v489);
  v501 = *(a10 + (v486 >> 24));
  v502 = *(a10 + (v487 >> 24));
  v503 = *(v71 + 8 * (*(a10 + (v485 >> 24)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v504 = *(a10 + BYTE2(v485));
  v505 = *(v71 + 8 * (v490 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v485) = ((*(v71 + 8 * (v488 ^ a3)) ^ (32 * (*(v71 + 8 * (v488 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v488 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 24) ^ ((v503 ^ (32 * v503) ^ (8 * v503)) >> 16) ^ ((v505 ^ (32 * v505) ^ (8 * v505)) >> 32);
  v506 = *(v71 + 8 * (v491 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v507 = (v506 ^ (32 * v506) ^ (8 * v506)) >> 8;
  v508 = *(v71 + 8 * (v495 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v506) = ((v508 ^ (32 * v508) ^ (8 * v508)) >> 8) ^ ((*(v71 + 8 * (v492 ^ a3)) ^ (32 * (*(v71 + 8 * (v492 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v492 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 32);
  v509 = *(v71 + 8 * (v500 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v510 = *(v71 + 8 * (v496 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v496) = v506 ^ ((v509 ^ (32 * v509) ^ (8 * v509)) >> 16);
  v511 = *(v71 + 8 * (v494 ^ a3));
  v512 = *(v71 + 8 * (v493 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v513 = ((*(v71 + 8 * (v498 ^ a3)) - (*(v71 + 8 * (v498 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ 0xFFFFFFFFFFFFFFFELL) + *(v71 + 8 * (v498 ^ a3));
  v514 = *(v71 + 8 * (v499 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v511) = ((*(v71 + 8 * (v497 ^ a3)) ^ (32 * (*(v71 + 8 * (v497 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v497 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 24) ^ ((v512 ^ (32 * v512) ^ (8 * v512)) >> 16) ^ ((v513 ^ (32 * v513) ^ (8 * v513)) >> 32) ^ ((v511 ^ (8 * (((4 * (v511 ^ 0x18CB4FC383E94FCDLL)) ^ (-4 * (v511 ^ 0x18CB4FC383E94FCDLL)) ^ ((v511 ^ 0x18CB4FC383E94FCDLL) - ((4 * (v511 ^ 0x18CB4FC383E94FCDLL)) ^ v511 ^ 0x18CB4FC383E94FCDLL))) + (v511 ^ 0x18CB4FC383E94FCDuLL)))) >> 8);
  v515 = *(v71 + 8 * (v504 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v516 = *(v71 + 8 * (v501 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v517 = *(v71 + 8 * (v502 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v514) = ((v515 ^ (32 * v515) ^ (8 * v515)) >> 24) ^ ((v516 ^ (32 * v516) ^ (8 * v516)) >> 32) ^ ((v514 ^ (32 * v514) ^ (8 * v514)) >> 16);
  v518 = v496 ^ ((v510 ^ (32 * v510) ^ (8 * v510)) >> 24) ^ 0xED471B1;
  v519 = v485 ^ v507 ^ 0x2974DCF6;
  v520 = v511 ^ 0x9219EB3C;
  v521 = v514 ^ ((v517 ^ (32 * v517) ^ (8 * v517)) >> 8) ^ 0xE6529A41;
  LODWORD(v497) = (*(a10 + BYTE1(v519)) << 24) | (*(a10 + BYTE2(v518)) << 16) | *(a10 + BYTE2(v521)) | (*(a10 + (v511 ^ 0x3Cu)) << 8);
  v522 = (__ROR8__(a59, 8) & 0xF8FFFFFFFFFFFFFFLL) - 0x2607A7720729A79;
  v523 = __ROR8__(v522 ^ 0xDE361A1E0EB919D3, 8);
  v522 ^= 0x32CA3658F2D235ECuLL;
  v524 = (v523 + v522) ^ 0x3EC7945A9334A12DLL;
  v526 = __ROR8__(v522, 61);
  v525 = v524 ^ v526;
  v527 = ((v524 ^ v526) + (v524 << 56) + (v524 >> 8)) ^ 0x4ABA94BA7BE94F4;
  v528 = v527 ^ __ROR8__(v525, 61);
  v529 = (__ROR8__(v527, 8) + v528) ^ 0x87C30A0A7B081733;
  v530 = v529 ^ __ROR8__(v528, 61);
  v531 = (v530 + __ROR8__(v529, 8)) ^ 0x257DF8190A0FAA7CLL;
  v532 = v531 ^ __ROR8__(v530, 61);
  v533 = (v532 + __ROR8__(v531, 8)) ^ 0x2E769D09049CAA6ALL;
  v534 = v533 ^ __ROR8__(v532, 61);
  v535 = (v534 + __ROR8__(v533, 8)) ^ 0xCAC8DE2EE114DF37;
  v536 = __ROR8__(v535, 8);
  v537 = v535 ^ __ROR8__(v534, 61);
  v538 = __ROR8__((a59 + 8) & 0xFFFFFFFFFFFFFFF8, 8) - 0x2607A7720729A79;
  v539 = __ROR8__(v538 ^ 0xDE361A1E0EB919D3, 8);
  v538 ^= 0x32CA3658F2D235ECuLL;
  v540 = (v539 + v538) ^ 0x3EC7945A9334A12DLL;
  v541 = v540 ^ __ROR8__(v538, 61);
  v542 = __ROR8__(v540, 8) + v541;
  v544 = __ROR8__(v541, 61);
  v543 = v542 ^ v544;
  v545 = (v542 ^ v544 ^ 0x4ABA94BA7BE94F4) + ((v542 ^ 0x4ABA94BA7BE94F4uLL) >> 8) + ((v542 ^ 0x4ABA94BA7BE94F4) << 56);
  *(&v546 + 1) = v543 ^ 0x4ABA94BA7BE94F4;
  *&v546 = v543;
  v545 ^= 0x87C30A0A7B081733;
  v547 = v545 ^ (v546 >> 61);
  v548 = (v547 + __ROR8__(v545, 8)) ^ 0x257DF8190A0FAA7CLL;
  v549 = v548 ^ __ROR8__(v547, 61);
  v550 = (__ROR8__(v548, 8) + v549) ^ 0x2E769D09049CAA6ALL;
  v551 = v550 ^ __ROR8__(v549, 61);
  v552 = (v551 + __ROR8__(v550, 8)) ^ 0xCAC8DE2EE114DF37;
  v553 = (__ROR8__(v552, 8) + (v552 ^ __ROR8__(v551, 61))) ^ 0x67C4AB124F7C297BLL;
  LOBYTE(v552) = 8 * (a59 & 7);
  v554 = ((v537 + v536) ^ 0x67C4AB124F7C297BLL) >> v552;
  v555 = v554 + 4 * (v553 << (v552 ^ 0x3Eu));
  v556 = (__ROR8__(a59 + 16, 8) & 0xF8FFFFFFFFFFFFFFLL) - 0x2607A7720729A79;
  *&v546 = __ROR8__(v556 ^ 0xDE361A1E0EB919D3, 8);
  v556 ^= 0x32CA3658F2D235ECuLL;
  v557 = (v546 + v556) ^ 0x3EC7945A9334A12DLL;
  v558 = v557 ^ __ROR8__(v556, 61);
  v559 = (v558 + __ROR8__(v557, 8)) ^ 0x4ABA94BA7BE94F4;
  v560 = v559 ^ __ROR8__(v558, 61);
  v561 = (__ROR8__(v559, 8) + v560) ^ 0x87C30A0A7B081733;
  v562 = v561 ^ __ROR8__(v560, 61);
  v563 = (v562 + __ROR8__(v561, 8)) ^ 0x257DF8190A0FAA7CLL;
  v564 = v563 ^ __ROR8__(v562, 61);
  v565 = (v564 + __ROR8__(v563, 8)) ^ 0x2E769D09049CAA6ALL;
  v566 = v565 ^ __ROR8__(v564, 61);
  v567 = (v566 + __ROR8__(v565, 8)) ^ 0xCAC8DE2EE114DF37;
  v568 = v567 ^ __ROR8__(v566, 61);
  *&v546 = __ROR8__(v567, 8);
  v593 = v555 >> 8;
  LODWORD(v567) = v497 ^ 0x6775DE63;
  v569 = *(a57 + (v554 ^ a53 ^ 0x4E)) ^ ((v497 ^ 0x6775DE63) >> 24);
  LODWORD(v566) = *(a57 + ((BYTE1(v555) ^ a53) ^ 0x7Cu)) ^ ((v497 ^ 0x6775DE63) >> 16);
  v591 = v555 >> 16;
  LODWORD(v491) = *(a57 + (BYTE2(v555) ^ a53 ^ 0x28u)) ^ ((v497 ^ 0x6775DE63) >> 8);
  v592 = HIDWORD(v555);
  LODWORD(v507) = *(a57 + (BYTE4(v555) ^ a53 ^ 0x94u)) ^ 0xFFFFFFB5;
  LODWORD(v493) = ((*(a10 + (v518 >> 24)) << 8) | (*(a10 + (v521 >> 24)) << 24) | *(a10 + BYTE1(v520)) | (*(a10 + BYTE2(v519)) << 16)) ^ 0xBD9E26C2;
  LODWORD(v507) = ((v507 >> 5) | (8 * v507)) ^ ((v493 >> 5) & 0xF8 | (v493 >> 13));
  LOBYTE(v500) = (v507 >> 3) | (32 * v507);
  LODWORD(v507) = (*(a10 + (v519 >> 24)) << 24) | (*(a10 + BYTE2(v520)) << 8) | (*(a10 + v518) << 16) | *(a10 + v521);
  v570 = v546 + v568;
  v590 = v555 >> 24;
  v589 = HIWORD(v555);
  v571 = *(a57 + (((v554 + 4 * (v553 << (v552 ^ 0x3E))) >> 24) ^ a53 ^ 5)) ^ v567;
  LODWORD(v494) = *(a57 + (BYTE6(v555) ^ a53 ^ 0xA9u)) ^ BYTE3(v493);
  v587 = HIBYTE(v555);
  LODWORD(v490) = *(a57 + (HIBYTE(v555) ^ a53 ^ 0x9Au)) ^ WORD1(v493);
  v588 = v555 >> 40;
  v572 = *(a57 + (BYTE5(v555) ^ a53 ^ 0xD1u)) ^ *(a10 + BYTE1(v520)) ^ 0xC2;
  v573 = v69;
  v574 = *(&off_1F5DB1610 + (v69 ^ 0xB6D)) - 4;
  LOBYTE(v555) = v569 ^ v574[v569 ^ 0x41];
  LOBYTE(v568) = v566 ^ v574[v566 ^ 0x41];
  v575 = v571 ^ v574[v571 ^ 0x41];
  LOBYTE(v571) = v572 ^ v574[v572 ^ 0x41];
  v576 = v491 ^ v574[v491 ^ 0x41];
  v577 = v553 >> v552;
  LODWORD(v491) = v507 ^ 0xCEA4DA1;
  LODWORD(v507) = *(a57 + (v577 ^ a53 ^ 0x69)) ^ ((v507 ^ 0xCEA4DA1) >> 8) ^ v574[(*(a57 + (v577 ^ a53 ^ 0x69)) ^ ((v507 ^ 0x4DA1) >> 8)) ^ 0x41];
  LOBYTE(v569) = v500 ^ 0xBD ^ v574[v500 ^ 0xF4];
  LOBYTE(v500) = v490 ^ v574[v490 ^ 0x41];
  v578 = v494 ^ v574[v494 ^ 0x41];
  v579 = v577 + 4 * ((v570 ^ 0x27C4AB124F7C297BLL) << (v552 ^ 0x3Eu));
  LOBYTE(v570) = *(a57 + ((BYTE1(v579) ^ a53) ^ 0x11u)) ^ v491 ^ v574[(*(a57 + ((BYTE1(v579) ^ a53) ^ 0x11u)) ^ v491) ^ 0x41];
  LODWORD(v552) = *(a57 + ((BYTE2(v579) ^ a53) ^ 0xF1u)) ^ BYTE3(v491) ^ v574[(*(a57 + ((BYTE2(v579) ^ a53) ^ 0xF1u)) ^ BYTE3(v491)) ^ 0x41];
  LODWORD(v518) = (*(a10 + (v520 >> 24)) | (*(a10 + v519) << 16) | (*(a10 + BYTE1(v521)) << 24) | (*(a10 + BYTE1(v518)) << 8)) ^ 0xBD6A5F57;
  v580 = *(a57 + (BYTE4(v579) ^ a53 ^ 0x21u)) ^ BYTE3(v518) ^ v574[(*(a57 + (BYTE4(v579) ^ a53 ^ 0x21u)) ^ BYTE3(v518)) ^ 0x41];
  v581 = *(a57 + (BYTE5(v579) ^ a53 ^ 0x27u)) ^ WORD1(v518) ^ v574[(*(a57 + (BYTE5(v579) ^ a53 ^ 0x27u)) ^ BYTE2(v518)) ^ 0x41];
  LODWORD(v494) = *(a57 + (BYTE3(v579) ^ a53 ^ 0xC5u)) ^ WORD1(v491) ^ v574[(*(a57 + (BYTE3(v579) ^ a53 ^ 0xC5u)) ^ BYTE2(v491)) ^ 0x41];
  LOBYTE(v490) = *(a57 + ((HIBYTE(v579) ^ a53) ^ 0x40u)) ^ v518 ^ v574[(*(a57 + ((HIBYTE(v579) ^ a53) ^ 0x40u)) ^ v518) ^ 0x41];
  LODWORD(v518) = *(a57 + (BYTE6(v579) ^ a53 ^ 0x8Cu)) ^ (v518 >> 8);
  v582 = v518 ^ v574[v518 ^ 0x41];
  *a59 = v555 ^ 8;
  a59[1] = v568 ^ 8;
  a59[3] = v575 ^ 8;
  a59[2] = v576 ^ 8;
  a59[5] = v571 ^ 8;
  v583 = v507 ^ 8;
  a59[8] = v507 ^ 8;
  a59[4] = v569;
  a59[7] = v500 ^ 8;
  a59[6] = v578 ^ 8;
  a59[9] = v570 ^ 8;
  a59[10] = v552 ^ 8;
  a59[12] = v580 ^ 8;
  a59[13] = v581 ^ 8;
  a59[11] = v494 ^ 8;
  a59[15] = v490 ^ 8;
  a59[14] = v582 ^ 8;
  if (a56 < 0x9A5B1D0F != a54 - 1705304801 < 0x9A5B1D0F)
  {
    v584 = a56 < 0x9A5B1D0F;
  }

  else
  {
    v584 = a54 - 1705304801 < a56;
  }

  v585 = *(a60 + 8 * (v573 ^ (7998 * v584)));
  return v585(v585, v583, a3, v581 ^ 8, a54, v575 ^ 8u, v582 ^ 8u, v580 ^ 8, a9, a10, a11, HIWORD(v579), HIDWORD(v579), HIBYTE(v579), v579 >> 24, v579 >> 40, v579 >> 16, v579 >> 8, v587, v588, v589, v590, v591, v592, v593, v554, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_1E332827C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, unsigned __int8 a40, uint64_t a41, unsigned __int8 a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  v56 = 3 * (a28 ^ 0x1F84);
  v65 = a1 ^ 0x13u;
  LODWORD(a29) = *(a47 + (a29 ^ 0x5DLL)) ^ *(a47 + (v54 ^ 0xB3));
  v57 = *(a47 + (a32 ^ 0x5DLL)) ^ *(a47 + (((v56 - 75) ^ v54) ^ 0x2ALL));
  LODWORD(a33) = *(a47 + (v54 ^ 0xD7));
  LODWORD(a32) = *(a47 + (v54 ^ 0xD3));
  v58 = v65;
  LODWORD(v65) = *(a47 + (v54 ^ 0x71));
  LODWORD(a36) = ((*(a47 + (v54 ^ 0xBELL)) ^ *(a47 + (v55 ^ 0x5DLL)) ^ 0x9A) << 24) & 0xFA000000;
  v59 = *(a47 + (a42 ^ 0x5DLL)) ^ *(a47 + (v54 ^ 0xCFLL));
  v60 = (*(a47 + (a40 ^ 0x5DLL)) ^ v65) << 16;
  v61 = (*(a47 + (v58 ^ 0x9E)) << 24) ^ 0xA3FFBB0B;
  v62 = 0xD10BA1A4035EB46DLL * *(v53 + 8 * (a30 & 7 ^ 0xC7));
  v63 = 0xD10BA1A4035EB46DLL * *(v53 + 8 * (((a30 & 7 ^ 0xAF36DD6F) & ~(1 << (v56 ^ 0xFB)) | (1 << (v56 ^ 0xFB)) & 0x90) ^ 0xAF36DDA8));
  *(&a51 + (~a30 >> 3)) = v52 ^ v51 ^ 0x8B2B426DDDB2962ELL ^ v62 ^ (v62 >> 4) & 0xC4616F6EC3FF13ALL;
  *(&a51 + ((~a30 >> 3) ^ 1u)) = v52 ^ v51 ^ 0x8B2B426DDDB2962ELL ^ v63 ^ (v63 >> 4) & 0xC4616F6EC3FF13ALL;
  return (*(a50 + 8 * v56))(*(a50 + 8 * v56), v56 ^ 0x7FBu, a3, v52 ^ v51 ^ 0x8B2B426DDDB2962ELL, v60, v61, v57 ^ 0xFFFFFFF3, (v59 << 8) ^ 0xFFFFF9EB, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, v65, v54 ^ 0xCu, v52 ^ v51, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_1E3328804@<X0>(_DWORD *a1@<X3>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, int a12)
{
  *a1 = 0;
  v14 = v13 + a2;
  a11 = v13 - 1710126949 * (((&a11 | 0x26F9DF46) - &a11 + (&a11 & 0xD90620B8)) ^ 0x14E284D6) + 1259031490;
  v15 = (*(v12 + 8 * (v13 ^ 0xD158F4EC)))(&a11);
  return (*(v12 + 8 * (((a12 == 16257999) * (v14 + 2049)) ^ v14)))(v15);
}

uint64_t sub_1E3328ADC()
{
  v2.i64[0] = 0x7878787878787878;
  v2.i64[1] = 0x7878787878787878;
  v3 = vsubq_s8(v1[1], vandq_s8(vaddq_s8(v1[1], v1[1]), v2));
  v4 = vandq_s8(vaddq_s8(*v1, *v1), v2);
  v2.i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v2.i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  *v0 = vaddq_s8(vsubq_s8(*v1, v4), v2);
  v0[1] = vaddq_s8(v3, v2);
  return sub_1E3328B24();
}

uint64_t sub_1E3328B24()
{
  (*(v3 + 8 * (v0 ^ 0x2F2D)))(v2, 0, 24);
  *(v1 + 104) = 0x1FA834112;
  *(v1 + 112) = 0x200000004;
  STACK[0x8C0] = v2;
  LODWORD(STACK[0x40C]) = 0;
  STACK[0x708] = 0;
  v4 = (*(v3 + 8 * (v0 ^ 0x2F0F)))(128, 0x10800400FED9166);
  STACK[0x618] = v4;
  return (*(v3 + 8 * (((v4 != 0) * (((869 * (v0 ^ 0xAAA) + 595560508) & 0xDC8077C3) - 6081)) | v0)))();
}

uint64_t sub_1E3328E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unint64_t a15, uint64_t a16, int a17)
{
  a15 = 956911519 * ((v22 - 2 * (v22 & 0x476F404D94A63867) + 0x476F404D94A63867) ^ 0x25935917E374862) + v19 + ((v21 + 6397) ^ 0x9CD6A715681F7E5BLL) - ((v19 << ((v21 ^ 0x3Au) + 97)) & 0x39AD4E2AD03EC198);
  a16 = a11;
  a14 = (v21 - 412) ^ (956911519 * ((v22 - 2 * (v22 & 0x94A63867) - 1801045913) ^ 0x7E374862));
  (*(v20 + 8 * (v21 + 8165)))(&a14);
  v23 = 956911519 * ((~v22 & 0x3EF880EE121F02A6 | v22 & 0xC1077F11EDE0FD59) ^ 0x7BCEF532F88E72A3);
  a14 = (v21 - 412) ^ v23;
  a15 = v18 - ((2 * v18) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + v23;
  a16 = a11;
  (*(v20 + 8 * (v21 ^ 0x20E5)))(&a14);
  v24 = 956911519 * ((~v22 & 0x6E2460BF8BE064D9 | v22 & 0x91DB9F40741F9B26) ^ 0x2B121563617114DCLL);
  a15 = v17 - ((2 * v17) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + v24;
  a16 = a11;
  a14 = (v21 - 412) ^ v24;
  v25 = (*(v20 + 8 * (v21 ^ 0x20E5)))(&a14);
  return (*(v20 + 8 * ((58 * (a17 != 16257999)) ^ v21)))(v25);
}

uint64_t sub_1E3329058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (((v4 ^ 0x1236u) - 3917) ^ v3) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((14344 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_1E33290AC@<X0>(int a1@<W8>)
{
  STACK[0xBA0] = v1;
  v2 = STACK[0x968];
  STACK[0xBA8] = STACK[0x968];
  return (*(STACK[0x400] + 8 * (((v1 - v2 > (a1 + 5520) - 9239) * (((a1 - 3708) | 0x20A) + 6600)) ^ a1)))();
}

uint64_t sub_1E3329114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x680];
  STACK[0x938] = STACK[0x680];
  return (*(STACK[0x400] + 8 * (((2312 * (v3 ^ 0x486) + ((v3 - 1010) | 0x2027) - 17533) * (v4 == 0)) ^ v3)))(a1, a2, a3, 16215976);
}

uint64_t sub_1E3329590(uint64_t a1, int8x16_t a2, int8x16_t a3, int64x2_t a4, int8x16_t a5, int64x2_t a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, uint64_t a10, unsigned int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16)
{
  v27 = v17 - 16;
  v28.i64[0] = v27 + a1 - 5;
  v28.i64[1] = v27 + a1 - 6;
  v29.i64[0] = v27 + a1 - 3;
  v29.i64[1] = v27 + a1 - 4;
  v30.i64[0] = v27 + a1 - 1;
  v30.i64[1] = v27 + a1 - 2;
  v31.i64[0] = v27 + a1 + 5;
  v31.i64[1] = v27 + a1 + 4;
  v32.i64[0] = v27 + a1 + 7;
  v32.i64[1] = v27 + a1 + 6;
  v33.i64[0] = v27 + a1 + 9;
  v33.i64[1] = v27 + a1 + 8;
  v34.i64[0] = v27 + a1 + a15;
  v34.i64[1] = v27 + a1 + 2;
  v35 = vandq_s8(v34, a2);
  v36 = vandq_s8(v33, a2);
  v37 = vandq_s8(v32, a2);
  v38 = vandq_s8(v31, a2);
  v39 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v43 = vsubq_s64(v41, vandq_s8(vaddq_s64(vaddq_s64(v41, v41), a4), a5));
  v44 = vsubq_s64(v42, vandq_s8(vaddq_s64(vaddq_s64(v42, v42), a4), a5));
  v45 = vaddq_s64(vsubq_s64(v40, vandq_s8(vaddq_s64(vaddq_s64(v40, v40), a4), a5)), a6);
  v46 = vaddq_s64(vsubq_s64(v39, vandq_s8(vaddq_s64(vaddq_s64(v39, v39), a4), a5)), a6);
  v47 = veorq_s8(v46, a7);
  v48 = veorq_s8(v45, a7);
  v49 = veorq_s8(v45, a8);
  v50 = veorq_s8(v46, a8);
  v51 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v49), a9);
  v52 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v50), a9);
  v53 = vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL);
  v54 = veorq_s8(v52, vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL));
  v55 = veorq_s8(v51, v53);
  v56 = vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v55);
  v58 = veorq_s8(vaddq_s64(v56, v54), v18);
  v59 = veorq_s8(v57, v18);
  v60 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v61 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v62 = veorq_s8(v58, v60);
  v63 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v62);
  v65 = veorq_s8(vaddq_s64(v63, v61), v19);
  v66 = veorq_s8(v64, v19);
  v67 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v68 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v69 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v68);
  v71 = vaddq_s64(v69, v67);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v71, v71), v20), v71), v21), v22);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v70, v70), v20), v70), v21), v22);
  v74 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v75 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v76 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v75);
  v78 = veorq_s8(vaddq_s64(v76, v74), v23);
  v79 = veorq_s8(v77, v23);
  v80 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v81 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v82 = veorq_s8(v78, v80);
  v83 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v82);
  v85 = veorq_s8(vaddq_s64(v83, v81), v24);
  v86 = veorq_s8(v84, v24);
  v87 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v81.i64[0] = v27 + a1 + 1;
  v81.i64[1] = v27 + a1;
  v88 = vaddq_s64(v43, a6);
  v190.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v87), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a3)));
  v190.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a3)));
  v89 = veorq_s8(v88, a7);
  v90 = veorq_s8(v88, a8);
  v91 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v90), a9);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92), v18);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94), v19);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96);
  v98 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v97, v97), v20), v97), v21), v22);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), v23);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v24);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL)));
  v104 = vandq_s8(v81, a2);
  v105 = vaddq_s64(v44, a6);
  v190.val[0] = vshlq_u64(veorq_s8(v103, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a3)));
  v106 = veorq_s8(v105, a7);
  v107 = veorq_s8(v105, a8);
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), a9);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v18);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v19);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v114, v114), v20), v114), v21), v22);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v23);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v24);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL);
  v122 = vandq_s8(v30, a2);
  v123 = vaddq_s64(v121, v120);
  v124 = vandq_s8(v29, a2);
  v190.val[3] = vshlq_u64(veorq_s8(v123, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a3)));
  v125 = vandq_s8(v28, a2);
  v126 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v127 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  v129 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v130 = vsubq_s64(v128, vandq_s8(vaddq_s64(vaddq_s64(v128, v128), a4), a5));
  v131 = vaddq_s64(vsubq_s64(v127, vandq_s8(vaddq_s64(vaddq_s64(v127, v127), a4), a5)), a6);
  v132 = vaddq_s64(vsubq_s64(v126, vandq_s8(vaddq_s64(vaddq_s64(v126, v126), a4), a5)), a6);
  v127.i64[0] = vqtbl4q_s8(v190, v25).u64[0];
  v133 = veorq_s8(v132, a7);
  v190.val[0] = veorq_s8(v131, a7);
  v134 = veorq_s8(v131, a8);
  v135 = veorq_s8(v132, a8);
  v190.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v134), a9);
  v136 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v135), a9);
  v137 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v138 = veorq_s8(v190.val[0], vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v190.val[1] = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v138);
  v190.val[0] = veorq_s8(vaddq_s64(v190.val[1], v137), v18);
  v140 = veorq_s8(v139, v18);
  v190.val[1] = vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v142 = veorq_s8(v190.val[0], v190.val[1]);
  v190.val[1] = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v142);
  v190.val[0] = veorq_s8(vaddq_s64(v190.val[1], v141), v19);
  v144 = veorq_s8(v143, v19);
  v190.val[1] = vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v146 = veorq_s8(v190.val[0], v190.val[1]);
  v190.val[1] = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v147 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v146);
  v190.val[0] = vaddq_s64(v190.val[1], v145);
  v190.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v190.val[0], v190.val[0]), v20), v190.val[0]), v21), v22);
  v148 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v147, v147), v20), v147), v21), v22);
  v190.val[1] = vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL);
  v149 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v150 = veorq_s8(v190.val[0], v190.val[1]);
  v190.val[1] = vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL);
  v151 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v150);
  v190.val[0] = veorq_s8(vaddq_s64(v190.val[1], v149), v23);
  v152 = veorq_s8(v151, v23);
  v190.val[1] = vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v154 = veorq_s8(v190.val[0], v190.val[1]);
  v190.val[1] = vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL);
  v155 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v154);
  v190.val[0] = veorq_s8(vaddq_s64(v190.val[1], v153), v24);
  v156 = veorq_s8(v155, v24);
  v157 = vaddq_s64(v130, a6);
  v190.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), veorq_s8(v190.val[0], vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), a3)));
  v190.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a3)));
  v158 = veorq_s8(v157, a7);
  v159 = veorq_s8(v157, a8);
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159), a9);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161), v18);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), v19);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v166, v166), v20), v166), v21), v22);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v169 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168), v23);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170), v24);
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL)));
  v173 = vaddq_s64(vsubq_s64(v129, vandq_s8(vaddq_s64(vaddq_s64(v129, v129), a4), a5)), a6);
  v190.val[1] = vshlq_u64(veorq_s8(v172, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a3)));
  v174 = veorq_s8(v173, a7);
  v175 = veorq_s8(v173, a8);
  v176 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175), a9);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v178 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177), v18);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v180 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179), v19);
  v181 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v182 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v181);
  v183 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v182, v182), v20), v182), v21), v22);
  v184 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v185 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v184), v23);
  v186 = veorq_s8(v185, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v187 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v186), v24);
  v190.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v81, 3uLL), a3)));
  v127.i64[1] = vqtbl4q_s8(v190, v25).u64[0];
  v188 = vrev64q_s8(v127);
  *(v81.i64[1] - 6) = veorq_s8(vextq_s8(v188, v188, 8uLL), *(a14 - 16 + a1));
  return (*(v16 + 8 * (((a13 == 16) * a16) ^ a11)))();
}

uint64_t sub_1E33295A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a15 = &a12;
  a17 = 1317436891 * ((((2 * &a15) | 0xCDEF1EA) - &a15 + 2039514891) ^ 0x366CE083) + 8154;
  v20 = (*(v18 + 77096))(&a15);
  return (*(v18 + 8 * ((14201 * (a16 == v19)) ^ v17)))(v20);
}

uint64_t sub_1E3329624()
{
  v3 = 7 * (v2 ^ 0xB03);
  v4 = (v3 - 399971687) & 0x17D71DFD;
  v10 = v6;
  v11 = (v3 + 5077) ^ (((&v9 & 0xAEACBA1F | ~(&v9 | 0xAEACBA1F)) ^ 0x93A9682) * v1);
  (*(v0 + 8 * (v3 + 6343)))(&v9);
  v10 = v7;
  v11 = (v4 + 2878) ^ (((2 * (&v9 & 0x3137ACE8) - &v9 - 825732335) ^ 0x96A18073) * v1);
  (*(v0 + 8 * (v4 ^ 0x30D0)))(&v9);
  return (v8 ^ 0x67FCB3FF) - 1728356400 + ((v3 ^ 0xCFF96B3A) & (2 * v8)) - 16257999;
}

uint64_t sub_1E33297DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a11;
  a16 = 1317436891 * ((&a14 + 859900673 - 2 * (&a14 & 0x33410B01)) ^ 0x83429377) + 8154;
  v18 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * (((a15 == 16257999) * ((v17 - 1504397114) ^ 0x3A06)) ^ 0x1E97)))(v18);
}

uint64_t sub_1E33298E0@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0x400];
  STACK[0x540] = *(STACK[0x400] + 8 * (v1 - 7537));
  LODWORD(STACK[0xB54]) = -213646401;
  STACK[0xB58] = &STACK[0x9B0];
  return (*(v2 + 8 * ((((((((v1 + 108221252) & 0xF98CAFDD) - 4567) ^ (a1 == 0)) & 1) == 0) * (((((v1 + 108221252) & 0xF98CAFDD) - 4567) | 0x181) - 4960)) ^ (v1 + 108221252) & 0xF98CAFDD)))();
}

uint64_t sub_1E332991C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return (*(v3 + 8 * ((11 * (((149 * (v2 ^ 0xA06) + 647) ^ 0xBC59C3C ^ v1 ^ ((149 * (v2 ^ 0xA06) + 1378) | 0x42)) != 0)) ^ (149 * (v2 ^ 0xA06)))))();
}

uint64_t sub_1E332997C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (a1 + v2 - 16);
  v7 = (a2 + v2 - 16);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v4 + 8 * ((((v2 & 0xFFFFFFE0) == 32) * (802 * (v3 ^ (v5 - 6)) + 7207)) ^ (v3 + 782715465))))();
}

uint64_t sub_1E33299D8()
{
  v3 = STACK[0x5B0];
  STACK[0x698] = STACK[0x5B0];
  v4 = STACK[0x5F0];
  v5 = STACK[0x5A8];
  v6 = 2048652491 * ((((v2 - 232) | 0x6615652B) + (~(v2 - 232) | 0x99EA9AD4)) ^ 0xD7A4F22F);
  v7 = (((LODWORD(STACK[0x554]) ^ 0x8AB466B7) + 1967888713) ^ ((LODWORD(STACK[0x554]) ^ 0x1FDE0A17) - 534645271) ^ ((LODWORD(STACK[0x554]) ^ 0x9EAFF5F3) + 1632635405)) - v6 + 340520430;
  *(v2 - 208) = v6 + v0 + 4106;
  *(v2 - 204) = v7;
  *(v2 - 224) = v4;
  *(v2 - 216) = v5;
  *(v2 - 192) = v3;
  *(v2 - 184) = v3;
  *(v2 - 200) = v6 ^ 0x6600C1C6;
  v8 = (*(v1 + 8 * (v0 + 8225)))(v2 - 232);
  return (*(v1 + 8 * ((9478 * (*(v2 - 232) == 31 * (((v0 + 4209) | 0x1C0) ^ 0x17DA) + 16257224)) ^ v0)))(v8, 197499219);
}

void sub_1E3329B98()
{
  v3 = *(v0 + 8) - v2;
  *v4 = (HIBYTE(v3) ^ 0x9C) - 2 * ((HIBYTE(v3) ^ 0x9C) & 0x3D ^ HIBYTE(v3) & 1) + 60;
  v4[1] = (BYTE6(v3) ^ 0xD6) - ((2 * (BYTE6(v3) ^ 0xD6)) & 0x78) + 60;
  v4[2] = (BYTE5(v3) ^ 0xA7) + (~(2 * (BYTE5(v3) ^ 0xA7)) | 0x87) + 61;
  v4[3] = (BYTE4(v3) ^ 0x15) - ((2 * (BYTE4(v3) ^ 0x15)) & 0x78) + 60;
  v4[4] = (BYTE3(v3) ^ 0x68) - 2 * ((BYTE3(v3) ^ 0x68) & 0x3D ^ BYTE3(v3) & 1) + 60;
  v4[5] = (BYTE2(v3) ^ 0x1F) - ((2 * (BYTE2(v3) ^ 0x1F)) & 0x78) + 60;
  v4[6] = (BYTE1(v3) ^ 0x60) - 2 * ((BYTE1(v3) ^ 0x60) & 0x3D ^ BYTE1(v3) & 1) + 60;
  v4[7] = v3 ^ 0xF0;
  *(v0 + 24) = *(v1 + 24);
}

uint64_t sub_1E3329CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, int a11, uint64_t a12, int a13, unsigned int a14)
{
  v17 = 914963389 * ((&a10 + 315556834 - 2 * (&a10 & 0x12CF03E2)) ^ 0x3E33B299);
  a10 = &a9;
  a13 = v17 ^ 0x19EC4101;
  a14 = -1693904160 - v17;
  a11 = (v15 - 34) ^ v17;
  a12 = v14;
  v18 = (*(v16 + 8 * (v15 ^ 0x263E)))(&a10);
  return (*(v16 + 8 * ((8802 * (*(v14 + 24) == 16257999)) ^ v15)))(v18);
}

uint64_t sub_1E3329D80()
{
  v2 = STACK[0x440];
  STACK[0x838] = *(v1 + 8 * (v0 - 6242));
  return (*(v1 + 8 * ((v0 - 6242) ^ 0x17BF ^ ((((v2 == 0) ^ (((v0 - 98) ^ 0xBF) + 1)) & 1) * (v0 - 6531)))))();
}

void sub_1E3329DC8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18, int a19, char *a20)
{
  v21 = 2048652491 * ((((&a18 | 0x3571401E) ^ 0xFFFFFFFE) - (~&a18 | 0xCA8EBFE1)) ^ 0x7B3F28E4);
  a20 = &a11;
  a18 = v21 + (a1 ^ 0x89FB33FF) + ((a1 << ((v20 ^ 3) + 39)) & 0x13F667FE) + 1996283856;
  a19 = (v20 ^ 0x18AE) - v21 + 2753;
  JUMPOUT(0x1E3329E68);
}

uint64_t sub_1E3329EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = v9 - 1;
  a9 = v12;
  *(a2 + v12) = (&a9 ^ 0xBA) * (&a9 + 17);
  v13 = *(v11 + 8 * ((2368 * (v12 == 0)) ^ (v10 - 3904)));
  return v13(v13);
}

uint64_t sub_1E3329F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, int a22)
{
  *a5 = 0;
  *a6 = 0;
  a21 = 476323082 - 1710126949 * ((773898187 - (&a21 | 0x2E20BFCB) + (&a21 | 0xD1DF4034)) ^ 0xE3C41BA4);
  v23 = (*(v22 + 77088))(&a21);
  return (*(v22 + 8 * ((360 * (a22 == 16257999)) | 0x1686u)))(v23);
}

uint64_t sub_1E3329FC0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = a1 - 7070;
  v10 = (a1 + 671113435) | 0x450205;
  *(v8 - 136) = a1 - 7070 + ((v8 + 1496915627 - 2 * ((v8 - 136) & 0x59391F33)) ^ 0x6B2244A3) * v7 + 3074;
  *(v8 - 128) = &a6;
  v11 = (*(v6 + 8 * (a1 + 1331)))(v8 - 136);
  return (*(v6 + 8 * (((*(v8 - 120) == v10 - 659386246) * (v9 ^ 0x1CDF)) ^ v9)))(v11);
}

uint64_t sub_1E332A070@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, int a4)
{
  if (v6)
  {
    v7 = a4 == ((a1 - 802596462) & 0x2FD687EF ^ 0x6CB);
  }

  else
  {
    v7 = 1;
  }

  v9 = v7 || v5 == 0;
  return (*(v4 + 8 * (((2 * (((a1 + 114) ^ v9) & 1)) & 0xFB | (4 * (((a1 + 1745351282) ^ v9) & 1))) ^ a1)))();
}

uint64_t sub_1E332A1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16, unsigned int a17, uint64_t a18, uint64_t a19)
{
  v23 = 1824088897 * ((2 * (&a15 & 0x2E772E98) - &a15 - 779562653) ^ 0x89E10201);
  a15 = v23 + 3757;
  a17 = ((2 * v20) & 0xBDCBD59E) - v23 + (v20 ^ 0x5EE5EACF) - 272695365;
  a18 = v19;
  a19 = a13;
  v24 = (*(v21 + 77048))(&a15);
  return (*(v21 + 8 * (((32 * (a16 == v22)) | ((a16 == v22) << 9)) ^ 0x932u)))(v24);
}

uint64_t sub_1E332A2B8()
{
  v2 = STACK[0x538];
  STACK[0x4D0] = *(v1 + 8 * (v0 + 577));
  return (*(v1 + 8 * (((v2 != 0) * ((((v0 + 464) | 0xD14) + 5220) ^ 0x246E)) ^ ((v0 + 464) | 0xD14))))();
}

uint64_t sub_1E332A2E8()
{
  v2 = (*(v1 + 8 * (v0 + 277)))(64, 0x100004077774924);
  STACK[0x558] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 - 6075) ^ 0xB43) - 1891)) ^ v0)))();
}

uint64_t sub_1E332A344(uint64_t a1)
{
  v5 = (v1 + 2164275) & 0xFFDEFBDD;
  *v3 = a1;
  *v2 = v9;
  v6 = v5 + 735;
  v12 = v8;
  v13 = (v5 + 3265) ^ (1824088897 * (&v11 ^ 0x5869D362));
  (*(v4 + 8 * (v5 + 4531)))(&v11);
  v13 = (v6 + 2530) ^ (1824088897 * (((&v11 | 0xC30D1145) + (~&v11 | 0x3CF2EEBA)) ^ 0x9B64C226));
  v12 = v10;
  (*(v4 + 8 * (v6 + 3796)))(&v11);
  return 0;
}

uint64_t sub_1E332A454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int8x16_t a25, int8x16_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int8x16_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int8x16_t a42, int8x16_t a43, uint64_t a44, uint64_t a45, int8x16_t a46, int8x16_t a47, int64x2_t a48, int8x16_t a49, int8x16_t a50, int8x16_t a51, int8x16_t a52, int64x2_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int8x16_t a58)
{
  v64 = (a16 + v58 + a21 + a22);
  v65 = 1213 * (a2 ^ 0x549);
  v66.i64[0] = v59 + v58 - 15;
  v66.i64[1] = v59 + v58 - 16;
  v255 = v66;
  v66.i64[0] = v59 + v58 - 13;
  v66.i64[1] = v59 + v58 - 14;
  v254 = v66;
  v67.i64[0] = v59 + v58 - 7;
  v67.i64[1] = v59 + v58 - 8;
  v68.i64[0] = v59 + v58 - 3;
  v68.i64[1] = v59 + v58 - 4;
  v69.i64[0] = v59 + v58 - 1;
  v69.i64[1] = v59 + v58 - 2;
  v70.i64[0] = v59 + v58 - 5;
  v70.i64[1] = v59 + v58 + (v65 ^ 0xFFFFFFFFFFFFE394);
  v71 = vandq_s8(v70, a37);
  v72 = vandq_s8(v69, a37);
  v73 = vandq_s8(v68, a37);
  v74 = vandq_s8(v67, a37);
  v75 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v76 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v77 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v78 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v252 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v78), *&STACK[0x210]), vorrq_s8(vaddq_s64(v78, *&STACK[0x270]), *&STACK[0x230]));
  v79 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v77), *&STACK[0x210]), vorrq_s8(vaddq_s64(v77, *&STACK[0x270]), *&STACK[0x230]));
  v80 = vsubq_s64(a53, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v75), *&STACK[0x210]), vorrq_s8(vaddq_s64(v75, *&STACK[0x270]), *&STACK[0x230])));
  v81 = vsubq_s64(a53, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v76), *&STACK[0x210]), vorrq_s8(vaddq_s64(v76, *&STACK[0x270]), *&STACK[0x230])));
  v82 = veorq_s8(v81, a52);
  v83 = veorq_s8(v80, a52);
  v84 = veorq_s8(v80, a51);
  v85 = veorq_s8(v81, a51);
  v86 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v84), a50);
  v87 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v85), a50);
  v88 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v89 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v90 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v89);
  v92 = vaddq_s64(v90, v88);
  v93 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v92, v92), a49), v92), a48), a47);
  v94 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v91, v91), a49), v91), a48), a47);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v96 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v97 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v96);
  v99 = veorq_s8(vaddq_s64(v97, v95), a46);
  v100 = veorq_s8(v98, a46);
  v101 = vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL);
  v102 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v103 = veorq_s8(v99, v101);
  v104 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v103);
  v106 = veorq_s8(vaddq_s64(v104, v102), *&STACK[0x200]);
  v107 = veorq_s8(v105, *&STACK[0x200]);
  v108 = vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL);
  v109 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v110 = veorq_s8(v106, v108);
  v111 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v110);
  v113 = vaddq_s64(v111, v109);
  v114 = veorq_s8(v113, a58);
  v115 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v113, v62), v63), v114), vandq_s8(v114, v62));
  v116 = veorq_s8(v112, a58);
  v117 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v112, v62), v63), v116), vandq_s8(v116, v62)), a43);
  v118 = veorq_s8(v115, a43);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v120 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), a42);
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v120), a42);
  v123 = vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL);
  v124 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v125 = veorq_s8(v121, v123);
  v126 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  v127 = vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL);
  v128.i64[0] = v59 + v58 - 11;
  v128.i64[1] = v59 + v58 - 12;
  v129 = vsubq_s64(a53, v79);
  v257.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v127, v125), v61), vnegq_s64(vandq_s8(vshlq_n_s64(v67, 3uLL), a26)));
  v257.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v126, v124), v61), vnegq_s64(vandq_s8(vshlq_n_s64(v68, 3uLL), a26)));
  v130 = veorq_s8(v129, a52);
  v131 = veorq_s8(v129, a51);
  v132 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131), a50);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v134, v134), a49), v134), a48), a47);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v137 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136), a46);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138), *&STACK[0x200]);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140);
  v142 = veorq_s8(v141, a58);
  v143 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v141, v62), v63), v142), vandq_s8(v142, v62)), a43);
  v144 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v145 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v144), a42);
  v142.i64[0] = v59 + v58 - 9;
  v142.i64[1] = v59 + v58 - 10;
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL)));
  v147 = vandq_s8(v142, a37);
  v148 = vsubq_s64(a53, v252);
  v257.val[0] = vshlq_u64(veorq_s8(v146, v61), vnegq_s64(vandq_s8(vshlq_n_s64(v69, 3uLL), a26)));
  v149 = veorq_s8(v148, a52);
  v150 = veorq_s8(v148, a51);
  v151 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150), a50);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v152);
  v154 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v153, v153), a49), v153), a48), a47);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), a46);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), *&STACK[0x200]);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159);
  v161 = veorq_s8(v160, a58);
  v162 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v160, v62), v63), v161), vandq_s8(v161, v62)), a43);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), a42);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL);
  v167 = vandq_s8(v128, a37);
  v168 = vaddq_s64(v166, v165);
  v169 = vandq_s8(v254, a37);
  v257.val[2] = vshlq_u64(veorq_s8(v168, v61), vnegq_s64(vandq_s8(vshlq_n_s64(v70, 3uLL), a26)));
  v170 = vandq_s8(v255, a37);
  v171 = vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL);
  v172 = vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL);
  v173 = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  v174 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v253 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v174), *&STACK[0x210]), vorrq_s8(vaddq_s64(v174, *&STACK[0x270]), *&STACK[0x230]));
  v175 = vsubq_s64(a53, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v171), *&STACK[0x210]), vorrq_s8(vaddq_s64(v171, *&STACK[0x270]), *&STACK[0x230])));
  v176 = vsubq_s64(a53, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v172), *&STACK[0x210]), vorrq_s8(vaddq_s64(v172, *&STACK[0x270]), *&STACK[0x230])));
  v171.i64[0] = vqtbl4q_s8(v257, a25).u64[0];
  v177 = veorq_s8(v176, a52);
  v178 = veorq_s8(v175, a52);
  v179 = veorq_s8(v175, a51);
  v180 = veorq_s8(v176, a51);
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179), a50);
  v182 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v180), a50);
  v183 = vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL);
  v184 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v185 = veorq_s8(v181, v183);
  v186 = vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL);
  v187 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v185);
  v188 = vaddq_s64(v186, v184);
  v189 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v188, v188), a49), v188), a48), a47);
  v190 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v187, v187), a49), v187), a48), a47);
  v191 = vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL);
  v192 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v193 = veorq_s8(v189, v191);
  v194 = vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL);
  v195 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v193);
  v196 = veorq_s8(vaddq_s64(v194, v192), a46);
  v197 = veorq_s8(v195, a46);
  v198 = vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL);
  v199 = veorq_s8(v197, vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL));
  v200 = veorq_s8(v196, v198);
  v201 = vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL);
  v202 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v200);
  v203 = veorq_s8(vaddq_s64(v201, v199), *&STACK[0x200]);
  v204 = veorq_s8(v202, *&STACK[0x200]);
  v205 = vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL);
  v206 = veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL));
  v207 = veorq_s8(v203, v205);
  v208 = vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL);
  v209 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v207);
  v210 = vaddq_s64(v208, v206);
  v211 = veorq_s8(v210, a58);
  v212 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v210, v62), v63), v211), vandq_s8(v211, v62));
  v213 = veorq_s8(v209, a58);
  v214 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v209, v62), v63), v213), vandq_s8(v213, v62)), a43);
  v215 = veorq_s8(v212, a43);
  v216 = veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v217 = veorq_s8(v214, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v218 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), v216), a42);
  v219 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v217), a42);
  v220 = vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL);
  v221 = veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL));
  v222 = vsubq_s64(a53, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v173), *&STACK[0x210]), vorrq_s8(vaddq_s64(v173, *&STACK[0x270]), *&STACK[0x230])));
  v256.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), veorq_s8(v218, v220)), v61), vnegq_s64(vandq_s8(vshlq_n_s64(v255, 3uLL), a26)));
  v256.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), v221), v61), vnegq_s64(vandq_s8(vshlq_n_s64(v254, 3uLL), a26)));
  v223 = veorq_s8(v222, a52);
  v224 = veorq_s8(v222, a51);
  v225 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v224), a50);
  v226 = veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v227 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), v226);
  v228 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v227, v227), a49), v227), a48), a47);
  v229 = veorq_s8(v228, vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL));
  v230 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), v229), a46);
  v231 = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL));
  v232 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL), v231), *&STACK[0x200]);
  v233 = veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL));
  v234 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), v233);
  v235 = veorq_s8(v234, a58);
  v236 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v234, v62), v63), v235), vandq_s8(v235, v62)), a43);
  v237 = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v233, 3uLL), v233, 0x3DuLL));
  v238 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), v237), a42);
  v239 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v238, 0x38uLL), v238, 8uLL), veorq_s8(v238, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL)));
  v240 = vsubq_s64(a53, v253);
  v256.val[1] = vshlq_u64(veorq_s8(v239, v61), vnegq_s64(vandq_s8(vshlq_n_s64(v128, 3uLL), a26)));
  v241 = veorq_s8(v240, a52);
  v257.val[0] = veorq_s8(v240, a51);
  v242 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), v257.val[0]), a50);
  v257.val[0] = veorq_s8(v242, vsraq_n_u64(vshlq_n_s64(v257.val[0], 3uLL), v257.val[0], 0x3DuLL));
  v243 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL), v257.val[0]);
  v244 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v243, v243), a49), v243), a48), a47);
  v257.val[0] = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v257.val[0], 3uLL), v257.val[0], 0x3DuLL));
  v245 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v257.val[0]), a46);
  v257.val[0] = veorq_s8(v245, vsraq_n_u64(vshlq_n_s64(v257.val[0], 3uLL), v257.val[0], 0x3DuLL));
  v246 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL), v257.val[0]), *&STACK[0x200]);
  v257.val[0] = veorq_s8(v246, vsraq_n_u64(vshlq_n_s64(v257.val[0], 3uLL), v257.val[0], 0x3DuLL));
  v247 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL), v257.val[0]);
  v248 = veorq_s8(v247, a58);
  v249 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v247, v62), v63), v248), vandq_s8(v248, v62)), a43);
  v257.val[0] = veorq_s8(v249, vsraq_n_u64(vshlq_n_s64(v257.val[0], 3uLL), v257.val[0], 0x3DuLL));
  v250 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL), v257.val[0]), a42);
  v256.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL), veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v257.val[0], 3uLL), v257.val[0], 0x3DuLL))), v61), vnegq_s64(vandq_s8(vshlq_n_s64(v142, 3uLL), a26)));
  v171.i64[1] = vqtbl4q_s8(v256, a25).u64[0];
  v256.val[0] = vrev64q_s8(v171);
  *v64 = veorq_s8(vextq_s8(v256.val[0], v256.val[0], 8uLL), *(v59 + v58 - 16));
  return (*(*(v60 - 256) + 8 * ((5957 * ((v58 & 0xFFFFFFF0) == 16)) ^ (a2 + 1513))))(v58 & 0xFFFFFFF0, a2, v65, 16 - (v58 & 0xFFFFFFF0), v59 + v58, a6, v64, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25.i64[0], a25.i64[1], a26.i64[0], a26.i64[1], a27, a28);
}

uint64_t sub_1E332AED4@<X0>(uint64_t a1@<X8>)
{
  STACK[0x540] = *(v2 + 8 * v1);
  LODWORD(STACK[0xB54]) = 1474397153;
  STACK[0xB58] = &STACK[0x758];
  return (*(v2 + 8 * ((((((((v1 - 1970225996) & 0x756F63DB) - 4567) ^ (a1 == 0)) & 1) == 0) * (((((v1 - 1970225996) & 0x756F63DB) - 4567) | 0x181) - 4960)) ^ (v1 - 1970225996) & 0x756F63DB)))();
}

uint64_t sub_1E332AF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  LODWORD(STACK[0x25C]) = v67;
  v71 = (4 * v63) ^ 0x8840;
  v139 = (((v66 ^ 0x7ABE2DC265D207ABLL) - 0x7ABE2DC265D2197FLL + v62) ^ ((v66 ^ 0xBA4753D6669FA826) + 0x45B8AC29996057DALL) ^ ((v66 ^ v71 ^ 0xC0F97E1408883742) + 0x3F0681EBF777C922)) + 0x6720E9302410965ALL;
  LODWORD(STACK[0x200]) = LODWORD(STACK[0x2B0]) >> ((((4 * v63) ^ 0x40) - 77) ^ 0x47);
  v72 = LODWORD(STACK[0x2BC]);
  LODWORD(STACK[0x220]) = v69;
  v73 = v68;
  v74 = *(v64 + 24);
  v75 = __ROR8__(v74 & 0xFFFFFFFFFFFFFFF8, 8);
  v76 = ((0x6AF7234D0CC131D4 - v75) & 0x435B154A729201BFLL) + v75 - 0x6AF7234D0CC131D5 - ((v75 - 0x6AF7234D0CC131D5) & 0x435B154A729201BFLL);
  v77 = __ROR8__(v76 ^ 0xAB257711D84E66DLL, 8);
  v76 ^= 0xA2F4B2E684729731;
  v78 = (((v77 + v76) & 0xB9CE2113715ACFF7 ^ 0x184A000231524D61) + ((v77 + v76) & 0x4631DEEC8EA53008 ^ 0x460196A406053009) - 1) ^ 0xBAD6E179B06AC217;
  v79 = v78 ^ __ROR8__(v76, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ 0xF5A2F1B9B5D0B209;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0x5963B6C555D97F1FLL;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ v65;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0x64C31C027084DE6CLL;
  v87 = __ROR8__(v86, 8);
  v88 = v86 ^ __ROR8__(v85, 61);
  v89 = __ROR8__((v74 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v90 = (0x6AF7234D0CC131D4 - v89) & 0xC2A16714FA488FC8 | (v89 + 0x1508DCB2F33ECE2BLL) & 0x3D5E98EB05B77037;
  v91 = __ROR8__(v90 ^ 0x8B48252F955E681ALL, 8);
  v90 ^= 0x230EC0B80CA81946uLL;
  v92 = (((2 * (v91 + v90)) & 0xAC7FF88AB7D467A0) - (v91 + v90) - 0x563FFC455BEA33D1) ^ 0x4D5D746523287351;
  v93 = v92 ^ __ROR8__(v90, 61);
  v94 = __ROR8__(v92, 8);
  v95 = *(*(v70 - 256) + 8 * v71);
  v96 = (v94 + v93 - ((2 * (v94 + v93)) & 0xBB63D01A1060ED3ALL) - 0x224E17F2F7CF8963) ^ 0x281319B4BDE0C494;
  v97 = v96 ^ __ROR8__(v93, 61);
  *v74 = (((__ROR8__((((2 * (v87 + v88)) | 0x36A4398A31861B6ALL) - (v87 + v88) - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6, 8) + ((((2 * (v87 + v88)) | 0x36A4398A31861B6ALL) - (v87 + v88) - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6 ^ __ROR8__(v88, 61))) ^ 0xAB3042D228875C41) >> (8 * (v74 & 7u))) ^ HIBYTE(v69) ^ 0xB;
  v98 = (__ROR8__(v96, 8) + v97) ^ 0x5963B6C555D97F1FLL;
  v99 = v98 ^ __ROR8__(v97, 61);
  v100 = (__ROR8__(v98, 8) + v99) ^ 0x61459D2AF01F24F7;
  v101 = v100 ^ __ROR8__(v99, 61);
  v102 = __ROR8__(v100, 8);
  v103 = (((2 * (v102 + v101)) | 0x63B77BB044F1F226) - (v102 + v101) + 0x4E244227DD8706EDLL) ^ 0xD518A1DA52FC277FLL;
  v104 = v103 ^ __ROR8__(v101, 61);
  v105 = (__ROR8__(v103, 8) + v104) ^ v73;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = __ROR8__(v105, 8);
  *(v74 + 1) = (((v107 + v106 - ((2 * (v107 + v106)) & 0x7F0D34FB28D08226) + 0x3F869A7D94684113) ^ 0x94B6D8AFBCEF1D52) >> (8 * ((v74 + 1) & 7))) ^ BYTE2(v69) ^ 0xC5;
  v108 = __ROR8__((v74 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v109 = ((2 * v108 + 0x2A11B965E67D9C56) & 0xC8758E867E4F43EALL) - v108 + 0x6BC5C09CD998FDFLL;
  v110 = v109 ^ 0xD22C7A87AFCEB9D8;
  v109 ^= 0x7A6A9F103638C884uLL;
  v111 = (__ROR8__(v110, 8) + v109) ^ 0xE49D77DF873DBF7ELL;
  v112 = v111 ^ __ROR8__(v109, 61);
  v113 = (__ROR8__(v111, 8) + v112) ^ 0xF5A2F1B9B5D0B209;
  v114 = v113 ^ __ROR8__(v112, 61);
  v115 = (__ROR8__(v113, 8) + v114) ^ 0x5963B6C555D97F1FLL;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = __ROR8__(v115, 8);
  v118 = __ROR8__((((2 * (v117 + v116)) | 0x316A40512FDE1242) - (v117 + v116) + 0x674ADFD76810F6DFLL) ^ 0xF9F0BD0267F02DD6, 8);
  v119 = (((2 * (v117 + v116)) | 0x316A40512FDE1242) - (v117 + v116) + 0x674ADFD76810F6DFLL) ^ 0xF9F0BD0267F02DD6 ^ __ROR8__(v116, 61);
  v120 = (v118 + v119) ^ 0x64C31C027084DE6CLL;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = (__ROR8__(v120, 8) + v121) ^ v73;
  *(v74 + 2) = (((__ROR8__(v122, 8) + (v122 ^ __ROR8__(v121, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v74 + 2) & 7))) ^ BYTE1(v69) ^ 0x99;
  v123 = __ROR8__((v74 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v124 = (0xAF7234D0CC131D4 - v123) & 0x126AA61F6F56C0D8 | (v123 - 0x6AF7234D0CC131D5) & 0xE99559E090A93F27;
  v125 = __ROR8__(v124 ^ 0x5F83E4240040270ALL, 8);
  v124 ^= 0xF7C501B399B65656;
  v126 = (v125 + v124) ^ 0xE49D77DF873DBF7ELL;
  v127 = v126 ^ __ROR8__(v124, 61);
  v128 = (__ROR8__(v126, 8) + v127) ^ 0xF5A2F1B9B5D0B209;
  v129 = v128 ^ __ROR8__(v127, 61);
  v130 = __ROR8__(v128, 8);
  v131 = __ROR8__((((2 * (v130 + v129)) | 0x2A5638492DD55EAELL) - (v130 + v129) - 0x152B1C2496EAAF57) ^ 0x4C48AAE1C333D048, 8);
  v132 = (((2 * (v130 + v129)) | 0x2A5638492DD55EAELL) - (v130 + v129) - 0x152B1C2496EAAF57) ^ 0x4C48AAE1C333D048 ^ __ROR8__(v129, 61);
  v133 = (v131 + v132) ^ 0x61459D2AF01F24F7;
  v134 = v133 ^ __ROR8__(v132, 61);
  v135 = (__ROR8__(v133, 8) + v134) ^ 0x64C31C027084DE6CLL;
  v136 = v135 ^ __ROR8__(v134, 61);
  v137 = (__ROR8__(v135, 8) + v136) ^ v73;
  *(v74 + 3) = v69 ^ 0x53 ^ (((__ROR8__(v137, 8) + (v137 ^ __ROR8__(v136, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v74 + 3) & 7)));
  return v95(0x435B154A729201BFLL, 0xEAD4E3DB691550A9, 0x126AA61F6F56C0D8, v72, 0x5F83E4240040270ALL, 83, v74, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, v139, a60, a61, a62);
}

uint64_t sub_1E332B15C()
{
  v4 = STACK[0x7F0];
  STACK[0x780] = STACK[0x7F0];
  v5 = *(STACK[0x4B8] + 100);
  v6 = STACK[0x4B8] + 104;
  v7 = (*(STACK[0x4B8] + 120) ^ 0x57F3F5FE) - 1149321408 + (((3 * (v0 ^ 0x4A1) + 1655271933) & 0x9D567A2D ^ 0xAFE7E9DD) & (2 * *(STACK[0x4B8] + 120)));
  v8 = 1358806181 * ((((v2 - 232) | 0x59631A57) - (v2 - 232) + ((v2 - 232) & 0xA69CE5A8)) ^ 0x664C76D4);
  v9 = (236591001 * (((LODWORD(STACK[0x82C]) ^ 0x4C3A3F30) - 1278885680) ^ ((LODWORD(STACK[0x82C]) ^ 0x5E7D318B) - 1585262987) ^ ((LODWORD(STACK[0x82C]) ^ 0x198297E8) - 427988968)) + 179962559) ^ v8;
  *(v2 - 224) = STACK[0x700];
  *(v2 - 184) = v4;
  *(v2 - 176) = v4;
  *(v2 - 200) = v8 + v0 + 1461;
  *(v2 - 196) = v7 ^ v8;
  *(v2 - 208) = v6;
  *(v2 - 192) = v9;
  *(v2 - 188) = v8 + 1334444757 * v5 + 206659825;
  *(v2 - 216) = v8 - 1498995465;
  v10 = (*(v3 + 8 * (v0 ^ 0x2610)))(v2 - 232);
  return (*(STACK[0x330] + 8 * ((7319 * (*(v2 - 232) == v1)) ^ v0)))(v10);
}

uint64_t sub_1E332C0EC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0x9D8] = v1 ^ 0xBC59953u;
  *(a1 + 16) = (((v1 ^ 0x57749467) - 1467258021 + v2 - 7557) ^ ((v1 ^ 0x990522EF) + 1727716625) ^ ((v1 ^ 0xC5B43A2D ^ ((v2 - 2481) | 0x1E4)) + 978047013)) + 197499229;
  v5 = (*(v3 + 8 * (v2 ^ 0x3861)))();
  v6 = STACK[0x330];
  *(a1 + 24) = v5;
  return (*(v6 + 8 * (((v5 == 0) | (4 * (v5 == 0))) ^ v2)))();
}

uint64_t sub_1E332C1C4@<X0>(int a1@<W8>)
{
  result = (*(v1 + 8 * (a1 + 6244)))();
  *(v3 + 4) = v4;
  return result;
}

uint64_t sub_1E332C234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v71 = *STACK[0x340] + 6;
  v72 = __ROR8__(v71 & 0xFFFFFFFFFFFFFFF8, 8);
  v73 = ((0x6AF7234D0CC131D4 - v72) & 0x435B154A729201BFLL) + v72 - 0x6AF7234D0CC131D5 - ((v72 - 0x6AF7234D0CC131D5) & 0x435B154A729201BFLL);
  v74 = __ROR8__(v73 ^ 0xAB257711D84E66DLL, 8);
  v73 ^= 0xA2F4B2E684729731;
  v75 = (((v74 + v73) & 0xB9CE2113715ACFF7 ^ 0x184A000231524D61) + ((v74 + v73) & 0x4631DEEC8EA53008 ^ 0x460196A406053009) - 1) ^ 0xBAD6E179B06AC217;
  v76 = v75 ^ __ROR8__(v73, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ 0xF5A2F1B9B5D0B209;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ 0x5963B6C555D97F1FLL;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ a8;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ a7;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = __ROR8__(v83, 8) + v84;
  v86 = __ROR8__((*STACK[0x340] + 7) & 0xFFFFFFFFFFFFFFF8, 8);
  v87 = (0x6AF7234D0CC131D4 - v86) & 0xC2A16714FA488FC8 | (v86 + 0x1508DCB2F33ECE2BLL) & 0x3D5E98EB05B77037;
  v88 = __ROR8__(v87 ^ 0x8B48252F955E681ALL, 8);
  v87 ^= 0x230EC0B80CA81946uLL;
  v89 = (((2 * v85) | 0x36A4398A31861B6ALL) - v85 - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6;
  v90 = (((2 * (v88 + v87)) & 0xAC7FF88AB7D467A0) - (v88 + v87) - 0x563FFC455BEA33D1) ^ 0x4D5D746523287351;
  v91 = v90 ^ __ROR8__(v87, 61);
  v92 = __ROR8__(v90, 8);
  v93 = (v92 + v91 - ((2 * (v92 + v91)) & 0xBB63D01A1060ED3ALL) - 0x224E17F2F7CF8963) ^ 0x281319B4BDE0C494;
  v94 = v93 ^ __ROR8__(v91, 61);
  v95 = *(a64 + 8 * (a63 - 1950));
  *v71 = ((__ROR8__(v89, 8) + (v89 ^ __ROR8__(v84, 61))) ^ 0xAB3042D228875C41) >> (8 * (v71 & 7u));
  v96 = (__ROR8__(v93, 8) + v94) ^ 0x5963B6C555D97F1FLL;
  v97 = v96 ^ __ROR8__(v94, 61);
  v98 = (__ROR8__(v96, 8) + v97) ^ a8;
  v99 = v98 ^ __ROR8__(v97, 61);
  v100 = __ROR8__(v98, 8);
  v101 = (((2 * (v100 + v99)) | 0x63B77BB044F1F226) - (v100 + v99) + 0x4E244227DD8706EDLL) ^ 0xD518A1DA52FC277FLL;
  v102 = v101 ^ __ROR8__(v99, 61);
  v103 = (__ROR8__(v101, 8) + v102) ^ 0x1A2AEBE44253AF03;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = __ROR8__(v103, 8);
  *(v71 + 1) = ((v105 + v104 - ((2 * (v105 + v104)) & 0x7F0D34FB28D08226) + 0x3F869A7D94684113) ^ 0x94B6D8AFBCEF1D52) >> (8 * ((v71 + 1) & 7));
  v106 = __ROR8__((v71 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v107 = ((2 * v106 + 0x2A11B965E67D9C56) & 0xC8758E867E4F43EALL) - v106 + 0x6BC5C09CD998FDFLL;
  v108 = __ROR8__(v107 ^ 0xD22C7A87AFCEB9D8, 8);
  v109 = v107 ^ v66;
  v110 = (v108 + v109) ^ 0xE49D77DF873DBF7ELL;
  v111 = v110 ^ __ROR8__(v109, 61);
  v112 = (__ROR8__(v110, 8) + v111) ^ 0xF5A2F1B9B5D0B209;
  v113 = v112 ^ __ROR8__(v111, 61);
  v114 = (__ROR8__(v112, 8) + v113) ^ 0x5963B6C555D97F1FLL;
  v115 = v114 ^ __ROR8__(v113, 61);
  v116 = __ROR8__(v114, 8);
  v117 = ((v67 | (2 * (v116 + v115))) - (v116 + v115) + v68) ^ v69;
  v118 = v117 ^ __ROR8__(v115, 61);
  v119 = (__ROR8__(v117, 8) + v118) ^ a7;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = (__ROR8__(v119, 8) + v120) ^ 0x1A2AEBE44253AF03;
  *(v71 + 2) = ((__ROR8__(v121, 8) + (v121 ^ __ROR8__(v120, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v71 + 2) & 7));
  v122 = __ROR8__((v71 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v123 = (0xAF7234D0CC131D4 - v122) & a1 | (v122 - 0x6AF7234D0CC131D5) & v70;
  v124 = v123 ^ v64;
  v125 = v123 ^ v65;
  v126 = (__ROR8__(v124, 8) + v125) ^ 0xE49D77DF873DBF7ELL;
  v127 = v126 ^ __ROR8__(v125, 61);
  v128 = (__ROR8__(v126, 8) + v127) ^ 0xF5A2F1B9B5D0B209;
  v129 = v128 ^ __ROR8__(v127, 61);
  v130 = __ROR8__(v128, 8);
  v131 = ((a3 | (2 * (v130 + v129))) - (v130 + v129) + a5) ^ a4;
  v132 = v131 ^ __ROR8__(v129, 61);
  v133 = (__ROR8__(v131, 8) + v132) ^ a8;
  v134 = v133 ^ __ROR8__(v132, 61);
  v135 = (__ROR8__(v133, 8) + v134) ^ a7;
  v136 = v135 ^ __ROR8__(v134, 61);
  v137 = (__ROR8__(v135, 8) + v136) ^ 0x1A2AEBE44253AF03;
  *(v71 + 3) = a6 ^ 0xB9 ^ (((__ROR8__(v137, 8) + (v137 ^ __ROR8__(v136, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v71 + 3) & 7)));
  return v95();
}

void sub_1E332C260(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8) + 869295389 * ((a1 & 0x846F91CA | ~(a1 | 0x846F91CA)) ^ 0xCAC44266);
  v2 = *(&off_1F5DB1610 + v1 - 1545) - 8;
  (*&v2[8 * v1 + 62208])(v5, 0, 128);
  v3 = 1710126949 * ((2 * (&v6 & 0x2A608FD8) - &v6 - 710971355) ^ 0xE7842BB5);
  v6 = v5;
  LODWORD(v7) = v3 ^ (v1 + 940078554);
  HIDWORD(v7) = -733388397 - v3;
  (*&v2[8 * (v1 ^ 0x229D)])(&v6);
  v4 = 31943069 * (&v6 ^ 0x5312319B63A94678);
  v6 = v5;
  v7 = (v4 + 0x605222BC435F6A18) | 5;
  v8 = v1 - v4 + 584254877;
  (*&v2[8 * v1 + 62760])(&v6);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1E332C47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, int a18, unsigned int a19)
{
  a19 = v21 + 1317436891 * (&a17 ^ 0xB0039876) + 3510;
  a17 = &a12;
  v22 = (*(v20 + 8 * (v21 ^ 0x3781)))(&a17);
  return (*(v20 + 8 * (((a18 != v19) * (((v21 ^ 0x123D) + 7018) ^ (286 * (v21 ^ 0x123D)))) ^ v21)))(v22);
}

uint64_t sub_1E332C588@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v13 = (v3 + v6) ^ *(a1 + v5 * v8 + v12 - ((((v5 * v8 + v12) * v9) >> 32) >> 9) * v7);
  *(a1 + v5 * v8 + 209760 - ((((v5 * v8 + 209760) * v9) >> 32) >> 9) * v7) = *(a3 + (v13 * a2 + 510419 - (((v13 * a2 + 510419) * v4) >> 32) * v10)) ^ 0x65;
  return (*(v11 + 8 * ((6989 * (v5 == 15)) ^ v3)))();
}

uint64_t sub_1E332C660()
{
  *(v3 - 224) = (v1 - 2140803489) ^ (914963389 * (((((v3 - 232) | 0xEC08A0AE) ^ 0xFFFFFFFE) - (~(v3 - 232) | 0x13F75F51)) ^ 0x3F0BEE2A));
  v4 = (*(v2 + 8 * (v1 ^ 0x3975u)))(v3 - 232);
  *v0 = *(v3 - 232) ^ 0xAC;
  return (*(v2 + 8 * ((v1 - 1221099236) & 0x48C87EDB ^ 0x18u)))(v4);
}

void sub_1E332C758(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  STACK[0x918] = a4;
  v4 = STACK[0x868];
  *(v4 + 112) = 197499219;
  *(v4 + 116) = 197499219;
  *(v4 + 108) = 0;
  *(v4 + 104) = 0;
  JUMPOUT(0x1E330ED88);
}

uint64_t sub_1E332C778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, _DWORD *a11)
{
  *a9 = a1;
  *a11 = v12;
  return (*(v13 + 8 * (((((a10 == 0) ^ v11) & 1) * ((v11 + 962) ^ 0x9D5)) ^ v11)))();
}

uint64_t sub_1E332C890()
{
  v2 = ((v0 + 3550) ^ 0x17FE) + LODWORD(STACK[0x528]);
  LODWORD(STACK[0x528]) = v2;
  return (*(v1 + 8 * ((3185 * (v2 == ((v0 - 1109) ^ 0x5CC))) ^ (v0 + 3550))))();
}

void sub_1E332C940(int a1@<W8>)
{
  if ((a1 - 203186114) < 2)
  {
    __asm { BRAA            X9, X17 }
  }

  if (a1 == 203186112 || a1 == 203186117)
  {
    __asm { BRAA            X8, X17 }
  }

  *(v3 + 12) = (((v2 ^ 0x637E21B1) - 1219133494) ^ ((v2 ^ 0x40485C57) - 1805450704) ^ ((v2 ^ 0x7A929D83) - 1363557380)) + 1936217521;
}

void sub_1E332CFEC(uint64_t a1@<X6>, char a2@<W8>, uint64_t a3, unint64_t a4)
{
  v5 = *(a1 + 24);
  v6 = __ROR8__((v5 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v7 = (v6 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v8 = (__ROR8__((v6 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v7) ^ 0xE49D77DF873DBF7ELL;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0xF5A2F1B9B5D0B209;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (v12 + v11 - ((2 * (v12 + v11)) & 0x512B57FB6494046ALL) + 0x2895ABFDB24A0235) ^ 0x71F61D38E7937D2ALL;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x61459D2AF01F24F7;
  v16 = __ROR8__(v15, 8);
  v17 = v15 ^ __ROR8__(v14, 61);
  v18 = (((v16 + v17) ^ 0x79C11BFC4894BC72 | 0xC3906BA06D3A2EC5) - ((v16 + v17) ^ 0x79C11BFC4894BC72 | 0x3C6F945F92C5D13ALL) + 0x3C6F945F92C5D13ALL) ^ 0xDE926C5E552A4CDBLL;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x1A2AEBE44253AF03;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v5[10] = (((((2 * (v22 + v21)) | 0xC38C36871CFCF294) - (v22 + v21) - 0x61C61B438E7E794ALL) ^ 0xCAF65991A6F9250BLL) >> (8 * ((v5 + 10) & 7u))) ^ (a4 >> (a2 ^ 0xB8u)) ^ 0x43;
  v23 = __ROR8__((v5 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = v23 - ((2 * v23 + 0x2A11B965E67D9C56) & 0x89AD15096A95E46ELL) - 0x262098C857763F9ELL;
  v25 = v24 ^ 0xD3FC8BFDA5C15E5;
  v24 ^= 0xA5792D2843AA64B9;
  v26 = __ROR8__(v25, 8);
  v27 = (((2 * (v26 + v24)) & 0x172EA68DBB7EC94) - (v26 + v24) + 0x7F468ACB922409B5) ^ 0x9BDBFD141519B6CBLL;
  v28 = v27 ^ __ROR8__(v24, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((2 * (v29 + v28)) & 0xD4F2B43A3958542) - (v29 + v28) - 0x6A795A1D1CAC2A2) ^ 0xCFA9BE79BE58F57;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x5963B6C555D97F1FLL;
  v33 = __ROR8__(v32, 8);
  v34 = v32 ^ __ROR8__(v31, 61);
  v35 = (((v33 + v34) | 0x3A57A17B6EDF06BLL) - ((v33 + v34) | 0xFC5A85E849120F94) - 0x3A57A17B6EDF06CLL) ^ 0x62E0E73D46F2D49CLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x64C31C027084DE6CLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (((v39 + v38) | 0x3F31863D75651161) - ((v39 + v38) | 0xC0CE79C28A9AEE9ELL) - 0x3F31863D75651162) ^ 0x251B6DD93736BE62;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  v5[11] = (((((2 * (v42 + v41)) | 0xAB41BFF64D60CE6CLL) - (v42 + v41) - 0x55A0DFFB26B06736) ^ 0xFE909D290E373B77) >> (8 * ((v5 + 11) & 7u))) ^ BYTE6(a4) ^ 0x1A;
  v43 = (__ROR8__((v5 + 12) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v44 = v43 ^ 0x4DE9423B6F16E7D2;
  v43 ^= 0xE5AFA7ACF6E0968ELL;
  v45 = __ROR8__(v44, 8);
  v46 = (v45 + v43 - ((2 * (v45 + v43)) & 0xA684DABE1F7F2120) - 0x2CBD92A0F0406F70) ^ 0x37DF1A8088822FEELL;
  v47 = v46 ^ __ROR8__(v43, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (((v48 + v47) | 0x2D1013F9AFD52057) - ((v48 + v47) | 0xD2EFEC06502ADFA8) - 0x2D1013F9AFD52058) ^ 0xD8B2E2401A05925ELL;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0x5963B6C555D97F1FLL;
  v52 = __ROR8__(v51, 8);
  v53 = v51 ^ __ROR8__(v50, 61);
  v54 = (v52 + v53 - ((2 * (v52 + v53)) & 0x505C9B69C721B602) + 0x282E4DB4E390DB01) ^ 0x496BD09E138FFFF6;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0x64C31C027084DE6CLL;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0x1A2AEBE44253AF03;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = __ROR8__(v58, 8);
  v5[12] = (((((2 * (v60 + v59)) & 0xA6AF603E61524BD2) - (v60 + v59) + 0x2CA84FE0CF56DA16) ^ 0x87980D32E7D18657) >> (8 * ((v5 + 12) & 7u))) ^ BYTE5(a4) ^ 0x33;
  v61 = __ROR8__((v5 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v62 = ((2 * (v61 - 0x6AF7234D0CC131D5)) | 0xBCD338F7A72AF0E2) - (v61 - 0x6AF7234D0CC131D5) - 0x5E699C7BD3957871;
  v63 = v62 ^ 0x1780DE40BC839FA3;
  v62 ^= 0xBFC63BD72575EEFFLL;
  v64 = __ROR8__(v63, 8);
  v65 = (((v64 + v62) | 0x524D786A2DAA5236) - ((v64 + v62) | 0xADB28795D255ADC9) - 0x524D786A2DAA5237) ^ 0xB6D00FB5AA97ED48;
  v66 = v65 ^ __ROR8__(v62, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (((2 * (v67 + v66)) | 0xC461725543BD74EALL) - (v67 + v66) - 0x6230B92AA1DEBA75) ^ 0x97924893140E087CLL;
  v69 = v68 ^ __ROR8__(v66, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0x5963B6C555D97F1FLL;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ 0x61459D2AF01F24F7;
  v73 = __ROR8__(v72, 8);
  v74 = v72 ^ __ROR8__(v71, 61);
  v75 = (((v73 + v74) | 0xD6A77E9273FF605BLL) - ((v73 + v74) | 0x2958816D8C009FA4) + 0x2958816D8C009FA4) ^ 0xB2646290037BBE37;
  v76 = __ROR8__(v75, 8);
  v77 = v75 ^ __ROR8__(v74, 61);
  v78 = (v76 + v77 - ((2 * (v76 + v77)) & 0x9E7D2340626A9232) - 0x30C16E5FCECAB6E7) ^ 0xD5147A447366E61ALL;
  v5[13] = (((__ROR8__(v78, 8) + (v78 ^ __ROR8__(v77, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v5 + 13) & 7u))) ^ BYTE4(a4) ^ 0xAA;
  v79 = __ROR8__((v5 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v80 = v79 - ((2 * v79 + 0x2A11B965E67D9C56) & 0x20559374910370F8) - 0x5ACC5992C43F7959;
  v81 = v80 ^ 0x59C38B8127975FAELL;
  v80 ^= 0xF1856E16BE612EF2;
  v82 = (__ROR8__(v81, 8) + v80) ^ 0xE49D77DF873DBF7ELL;
  v83 = v82 ^ __ROR8__(v80, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0xF5A2F1B9B5D0B209;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0x5963B6C555D97F1FLL;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = __ROR8__(v86, 8);
  v89 = __ROR8__((v88 + v87 - ((2 * (v88 + v87)) & 0xF9BA02E111CAE97ALL) + 0x7CDD017088E574BDLL) ^ 0x1D989C5A78FA504ALL, 8);
  v90 = (v88 + v87 - ((2 * (v88 + v87)) & 0xF9BA02E111CAE97ALL) + 0x7CDD017088E574BDLL) ^ 0x1D989C5A78FA504ALL ^ __ROR8__(v87, 61);
  v91 = (v89 + v90 - ((2 * (v89 + v90)) & 0xBB2E9B3140AA9E2CLL) + 0x5D974D98A0554F16) ^ 0x3954519AD0D1917ALL;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = (__ROR8__(v91, 8) + v92) ^ 0x1A2AEBE44253AF03;
  v94 = v93 ^ __ROR8__(v92, 61);
  v95 = __ROR8__(v93, 8);
  v5[14] = (((((v95 + v94) | 0x6B6AF9C6B406ECE7) - ((v95 + v94) | 0x949506394BF91318) - 0x6B6AF9C6B406ECE8) ^ 0xC05ABB149C81B0A6) >> (8 * ((v5 + 14) & 7u))) ^ BYTE3(a4) ^ 0x2E;
  v96 = __ROR8__((v5 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v97 = ((v96 - 0x6AF7234D0CC131D5) & 0xF89A3C6BA21CFB5FLL ^ 0x40000C09A010C112) + ((v96 - 0x6AF7234D0CC131D5) ^ 0xB9DB32660AEF3ECDLL) - (((v96 - 0x6AF7234D0CC131D5) ^ 0xB9DB32660AEF3ECDLL) & 0xF89A3C6BA21CFB5FLL);
  v98 = v97 ^ 0x8A84C36C7E52240;
  v97 ^= 0xA0EEA9A15E13531CLL;
  v99 = (__ROR8__(v98, 8) + v97) ^ 0xE49D77DF873DBF7ELL;
  v100 = v99 ^ __ROR8__(v97, 61);
  v101 = (__ROR8__(v99, 8) + v100) ^ 0xF5A2F1B9B5D0B209;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = __ROR8__(v101, 8);
  v104 = __ROR8__((((2 * (v103 + v102)) & 0x7EC0B560615BD22) - (v103 + v102) - 0x3F605AB030ADE92) ^ 0xA56A4C91A92C5E71, 8);
  v105 = (((2 * (v103 + v102)) & 0x7EC0B560615BD22) - (v103 + v102) - 0x3F605AB030ADE92) ^ 0xA56A4C91A92C5E71 ^ __ROR8__(v102, 61);
  v106 = (((v104 + v105) & 0xF4B1E271DC896087 ^ 0xA0425158896006) + ((v104 + v105) ^ 0xFE51A922A5729599) - (((v104 + v105) ^ 0xFE51A922A5729599) & 0xF4B1E271DC896087)) ^ 0x6BA5D67989E4D1E9;
  v107 = v106 ^ __ROR8__(v105, 61);
  v108 = __ROR8__(v106, 8);
  v109 = (((2 * (v108 + v107)) | 0x81910D2EFE6F15ACLL) - (v108 + v107) - 0x40C886977F378AD6) ^ 0x240B9A950FB354BALL;
  v110 = v109 ^ __ROR8__(v107, 61);
  v111 = __ROR8__(v109, 8);
  v112 = (((v111 + v110) | 0x452FEAF2D8983268) - ((v111 + v110) | 0xBAD0150D2767CD97) - 0x452FEAF2D8983269) ^ 0x5F0501169ACB9D6BLL;
  v113 = v112 ^ __ROR8__(v110, 61);
  v114 = __ROR8__(v112, 8);
  v5[15] = (((v114 + v113 - ((2 * (v114 + v113)) & 0x5CD5F962F5DFE9B2) - 0x5195034E85100B27) ^ 0x55ABE635268A898) >> (8 * ((v5 + 15) & 7u))) ^ BYTE2(a4) ^ 0x6D;
  v115 = __ROR8__((v5 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v116 = -2 - (((0x6AF7234D0CC131D4 - v115) | 0xB9373BCC9E95648DLL) + ((v115 - 0x6AF7234D0CC131D5) | 0x46C8C433616A9B72));
  v117 = v116 ^ 0xF0DE79F7F183835FLL;
  v116 ^= 0x58989C606875F203uLL;
  v118 = (__ROR8__(v117, 8) + v116) ^ 0xE49D77DF873DBF7ELL;
  v119 = v118 ^ __ROR8__(v116, 61);
  v120 = (__ROR8__(v118, 8) + v119) ^ 0xF5A2F1B9B5D0B209;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = (__ROR8__(v120, 8) + v121) ^ 0x5963B6C555D97F1FLL;
  v123 = v122 ^ __ROR8__(v121, 61);
  v124 = __ROR8__(v122, 8);
  v125 = (((2 * (v124 + v123)) & 0x24C3B6EDA515D42ALL) - (v124 + v123) + 0x6D9E24892D7515EALL) ^ 0xCDBB9A3DD6A311DLL;
  v126 = v125 ^ __ROR8__(v123, 61);
  v127 = __ROR8__(v125, 8);
  v128 = (((v127 + v126) | 0x3A521DF821A27A3ELL) - ((v127 + v126) | 0xC5ADE207DE5D85C1) - 0x3A521DF821A27A3FLL) ^ 0x5E9101FA5126A452;
  v129 = v128 ^ __ROR8__(v126, 61);
  v130 = (__ROR8__(v128, 8) + v129) ^ 0x1A2AEBE44253AF03;
  v131 = __ROR8__(v130, 8);
  v132 = __ROR8__(v129, 61);
  LOBYTE(v129) = (((((2 * (v131 + (v130 ^ v132))) | 0x4D724CAE0D8F11E6) - (v131 + (v130 ^ v132)) + 0x5946D9A8F938770DLL) ^ 0xD8964852E40D4B2uLL) >> (8 * ((v5 + 16) & 7u))) ^ BYTE1(a4) ^ 0x96;
  v133 = __ROR8__((v5 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v5[16] = v129;
  v134 = ((2 * ((v133 - 0x6AF7234D0CC131D5) ^ 0x5C0D666DD0C97AA4)) | 0x301A5F137AACAE0ELL) - ((v133 - 0x6AF7234D0CC131D5) ^ 0x5C0D666DD0C97AA4) - 0x180D2F89BD565707;
  v135 = v134 ^ 0xDE90BDF0289CA71;
  v134 ^= 0xA5AFEE489B7FBB2DLL;
  v136 = __ROR8__(v135, 8);
  v137 = (((2 * (v136 + v134)) | 0x692CEF71A0CBBC0ELL) - (v136 + v134) - 0x349677B8D065DE07) ^ 0xD00B006757586179;
  v138 = v137 ^ __ROR8__(v134, 61);
  v139 = __ROR8__(v137, 8);
  v140 = __ROR8__((((2 * (v139 + v138)) & 0xFD81E0C09A12569ALL) - (v139 + v138) - 0x7EC0F0604D092B4ELL) ^ 0x749DFE26072666BBLL, 8);
  v141 = (((2 * (v139 + v138)) & 0xFD81E0C09A12569ALL) - (v139 + v138) - 0x7EC0F0604D092B4ELL) ^ 0x749DFE26072666BBLL ^ __ROR8__(v138, 61);
  v142 = (v140 + v141) ^ 0x5963B6C555D97F1FLL;
  v143 = v142 ^ __ROR8__(v141, 61);
  v144 = (__ROR8__(v142, 8) + v143) ^ 0x61459D2AF01F24F7;
  v145 = v144 ^ __ROR8__(v143, 61);
  v146 = __ROR8__(v144, 8);
  v147 = (v146 + v145 - ((2 * (v146 + v145)) & 0x3076304A369A11B8) - 0x67C4E7DAE4B2F724) ^ 0xFCF804276BC9D6B0;
  v148 = v147 ^ __ROR8__(v145, 61);
  v149 = __ROR8__(v147, 8);
  v150 = (v149 + v148 - ((2 * (v149 + v148)) & 0x43F5BC2EBD15E7BELL) + 0x21FADE175E8AF3DFLL) ^ 0x3BD035F31CD95CDCLL;
  v5[17] = (((__ROR8__(v150, 8) + (v150 ^ __ROR8__(v148, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v5 + 17) & 7u))) ^ a4 ^ 0x5F;
  *(v4 - 160) = 0;
  STACK[0x280] = v4 - 160;
  JUMPOUT(0x1E32EC23CLL);
}

uint64_t sub_1E332E07C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36)
{
  *a22 = a36 + 1;
  v39 = 1710126949 * ((((v38 - 152) | 0x277B28D23B42D113) - (v38 - 152) + ((v38 - 152) & 0xD884D72DC4BD2EE8)) ^ 0x4F7D4C0B09598A83);
  v40 = v38 - 152;
  *(v40 + 16) = *v36 - v39;
  *(v40 + 32) = v39 ^ 0x13FF;
  *(v38 - 144) = ((a1 + 1232977275) ^ 0x6F) - v39;
  *(v38 - 140) = a1 + 1232977275 - v39 + 579;
  *(v38 - 152) = (a1 + 1232977275) ^ v39;
  *(v38 - 148) = v39;
  *(v38 - 128) = (a1 - 1737626868) ^ v39;
  v41 = (*(v37 + 8 * (a1 + 1232701059)))(v38 - 152);
  return (*(v37 + 8 * *(v38 - 124)))(v41);
}

uint64_t sub_1E332E170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x490]) = 16257999;
  v5 = STACK[0x9A0];
  STACK[0x978] = STACK[0x9A0];
  return (*(v4 + 8 * (((((((v3 - 5936) | 0x340) + 6347) | 0x400) - 9201) * (v5 == 0)) ^ ((v3 - 5936) | 0x340))))(a1, a2, a3, 16215976);
}

uint64_t sub_1E332E24C()
{
  v2 = LODWORD(STACK[0x380]) - 1556;
  LODWORD(STACK[0x314]) = LODWORD(STACK[0x374]) + 1405210103 + LODWORD(STACK[0x57C]);
  LODWORD(STACK[0x308]) = LODWORD(STACK[0x370]) - 339580378 + LODWORD(STACK[0x584]);
  LODWORD(STACK[0x338]) = (v2 ^ 0x293CF999) + LODWORD(STACK[0x424]);
  v3 = (((v2 + 2041769899) & 0x864D2FFF ^ ((v2 - 450) | 0x1C80) ^ 0x368D) * (STACK[0x378] & 1)) | v2;
  LODWORD(STACK[0x354]) = LODWORD(STACK[0x3F4]) + 1157472793;
  LODWORD(STACK[0x340]) = v0 - 134760406;
  LODWORD(STACK[0x2E4]) = LODWORD(STACK[0x3F8]) + 517689445;
  LODWORD(STACK[0x318]) = LODWORD(STACK[0x3F0]) - 566100543;
  LODWORD(STACK[0x2FC]) = LODWORD(STACK[0x3FC]) + 184116032;
  v4 = *(v1 + 8 * v3);
  LODWORD(STACK[0x2F4]) = STACK[0x418];
  LODWORD(STACK[0x2E0]) = STACK[0x40C];
  LODWORD(STACK[0x300]) = STACK[0x400];
  LODWORD(STACK[0x310]) = STACK[0x404];
  LODWORD(STACK[0x2C8]) = STACK[0x414];
  LODWORD(STACK[0x348]) = STACK[0x410];
  LODWORD(STACK[0x2E8]) = STACK[0x41C];
  LODWORD(STACK[0x344]) = STACK[0x408];
  return v4();
}

uint64_t sub_1E332E394(int a1, uint64_t a2, int a3, int a4, int a5, int a6)
{
  LODWORD(STACK[0x410]) += LODWORD(STACK[0x55C]);
  LODWORD(STACK[0x5B0]) = v15 + v13;
  v19 = (v12 - v10 - 1951064141) ^ (a4 - 1958870687);
  v20 = (((v11 ^ v18) - v18) ^ ((v7 ^ a1) - v17) ^ ((v11 ^ v14 ^ (a4 + 1298106656) ^ a6) - (v14 ^ (a4 + 1298106656) ^ a6))) - v16;
  v21 = (a3 - (v16 + 1951064141)) ^ (a5 - 1958870687);
  v22 = (a6 + 578669096) ^ 0x6E571C18;
  v23 = a5 + 1123955400;
  v24 = v16 + 1951064141 + v17 + 578669096;
  v25 = (v17 + 578669096) ^ 0x6E571C18;
  v26 = ((LODWORD(STACK[0x534]) ^ 0x6E571C18 ^ (v17 + 578669096)) - v25) ^ ((v23 ^ LODWORD(STACK[0x534])) - v23) ^ (((a4 + 1123955400) ^ LODWORD(STACK[0x584]) ^ v22 ^ LODWORD(STACK[0x534])) - ((a4 + 1123955400) ^ LODWORD(STACK[0x584]) ^ v22));
  v27 = v10 + v8 - 57528667;
  LODWORD(STACK[0x584]) += v27;
  v28 = v27 ^ (a4 + 1123955400) ^ (v19 + 160490879);
  v29 = v27 - v22;
  v30 = v22 - (v19 + 160490879) + 2140257556;
  v31 = v24 ^ v23 ^ (v21 + 160490879);
  v32 = v25 - (v21 + 160490879) + 2140257556;
  v33 = ((v32 ^ LODWORD(STACK[0x588])) - v32) ^ ((v31 ^ LODWORD(STACK[0x588])) - v31) ^ ((v28 ^ LODWORD(STACK[0x54C]) ^ v30 ^ LODWORD(STACK[0x588])) - (v28 ^ LODWORD(STACK[0x54C]) ^ v30));
  LODWORD(STACK[0x588]) = v26 - v24;
  v34 = v24 - v25;
  v35 = v29 - v19;
  v36 = v19 - v35;
  v37 = v35 - 160490879;
  v38 = v30 + v28;
  v39 = v30 - (v28 ^ (v35 - 160490879));
  v40 = (v28 ^ (v35 - 160490879)) + v36 + 1519097918;
  v41 = v14;
  v39 ^= 0xFABA49CA;
  v42 = v38 + v36 + 1519097918;
  v43 = v38 ^ v40;
  v44 = STACK[0x58C];
  v45 = STACK[0x590];
  v46 = (v39 ^ LODWORD(STACK[0x58C]) ^ v43 ^ LODWORD(STACK[0x590])) - (v39 ^ LODWORD(STACK[0x58C]) ^ v43);
  LODWORD(STACK[0x57C]) = v33 - (v34 - v21 - 160490879);
  v47 = v21 - (v34 - v21) + 1519097918;
  v48 = (v34 - v21 - 160490879) ^ v31;
  v49 = v32 + v31;
  v50 = v32 - v48;
  v51 = v48 + v47;
  v52 = v49 + v47;
  v53 = v51 ^ v49;
  v54 = v45 ^ 0xFABA49CA ^ v50;
  v50 ^= 0xFABA49CA;
  v55 = (v45 - 2 * (v53 & v45)) ^ (v54 - v50) ^ v46;
  v56 = v42 + v40 - 2 * (v42 & v40);
  v57 = v39 ^ v42;
  v58 = v43 - v39;
  v59 = v40 + v44;
  v60 = -1707705392 - (v53 & 0x66B11AA6) + (v53 | 0x994EE559) + v57 + ((v40 + v44) | 0xCC7A9ED5) - ((v40 + v44) & 0x3385612A);
  v61 = v57 ^ v40;
  v62 = v53 - v50;
  v63 = v60 - v56 + 2;
  v64 = STACK[0x56C];
  v65 = v55 - v51;
  v66 = v50 ^ v52 ^ v51;
  v67 = (v50 ^ v52) - (v52 ^ v51);
  v68 = ((v9 ^ v67) - v67) ^ ((v9 ^ (v62 - (v52 ^ v51))) - (v62 - (v52 ^ v51))) ^ ((v9 ^ (v58 - v56) ^ v64 ^ v63) - ((v58 - v56) ^ v64 ^ v63));
  v69 = v61 + v63;
  v70 = v58 + v63 + 583590656;
  v71 = STACK[0x548];
  v72 = v62 - v66;
  v73 = v66 - 2003671248 + v67;
  v74 = v72 + v73;
  v75 = (((v73 - 725678567) ^ LODWORD(STACK[0x580])) - (v73 - 725678567)) ^ (((v72 + v73) ^ LODWORD(STACK[0x580])) - (v72 + v73)) ^ (((v69 + 1565617481) ^ v71 ^ (v70 + 1707705392) ^ LODWORD(STACK[0x580])) - ((v69 + 1565617481) ^ v71 ^ (v70 + 1707705392)));
  v76 = STACK[0x540];
  v77 = v70 + 1707705392 + ((v61 - 2003671248) ^ 0x87D8BB14);
  v78 = v68 - (v66 - 2003671248);
  v79 = v74 + ((v66 - 2003671248) ^ 0x87D8BB14);
  v80 = (((v74 - 1729525651) ^ LODWORD(STACK[0x53C])) - (v74 - 1729525651)) ^ (((v73 - 281335021) ^ LODWORD(STACK[0x53C])) - (v73 - 281335021)) ^ (((v69 + 2009961027) ^ v76 ^ (v70 - 21820259) ^ LODWORD(STACK[0x53C])) - ((v69 + 2009961027) ^ v76 ^ (v70 - 21820259)));
  LODWORD(STACK[0x3F0]) += v78;
  LODWORD(STACK[0x3FC]) += v65;
  LODWORD(STACK[0x3F8]) += v20;
  LODWORD(STACK[0x418]) += v59;
  v81 = STACK[0x5B0];
  v82 = LODWORD(STACK[0x3EC]) + LODWORD(STACK[0x5B0]);
  LODWORD(STACK[0x41C]) += LODWORD(STACK[0x54C]) + v37;
  LODWORD(STACK[0x404]) += v64 + v61 - 2003671248;
  LODWORD(STACK[0x414]) += v41 + v10;
  LODWORD(STACK[0x40C]) += LODWORD(STACK[0x588]);
  LODWORD(STACK[0x3F4]) += v76 + (v77 ^ (v70 + 1707705392) ^ (v70 - 21820259));
  LODWORD(STACK[0x400]) += v75 - v79;
  LODWORD(STACK[0x424]) += v71 + v77;
  LODWORD(STACK[0x408]) += v80 - (v79 ^ v74 ^ (v74 - 1729525651));
  v83 = v82 - 1468338657 + ((v81 | (32218765 - v6)) & 0x80847D6);
  if (LODWORD(STACK[0x394]) == 52)
  {
    LODWORD(STACK[0x31C]) = LODWORD(STACK[0x374]) + 1405210103 + LODWORD(STACK[0x57C]);
    LODWORD(STACK[0x2DC]) = LODWORD(STACK[0x370]) - 339580378 + LODWORD(STACK[0x584]);
    v85 = STACK[0x2B4];
    LODWORD(STACK[0x360]) = (LODWORD(STACK[0x2B4]) ^ 0xF7F7BC2E) + v83;
    v86 = ((v85 + 2041769899) & 0x864D2FFF ^ ((v85 - 450) | 0x1C80) ^ 0x368D) * (STACK[0x378] & 1);
    LODWORD(STACK[0x2D0]) = LODWORD(STACK[0x3F8]) + 517689445;
    LODWORD(STACK[0x328]) = LODWORD(STACK[0x3F0]) - 566100543;
    LODWORD(STACK[0x33C]) = LODWORD(STACK[0x3F4]) + 1157472793;
    LODWORD(STACK[0x320]) = LODWORD(STACK[0x424]) + 691862941;
    LODWORD(STACK[0x2F8]) = LODWORD(STACK[0x3FC]) + 184116032;
    v87 = *(STACK[0x598] + 8 * (v86 | v85));
    LODWORD(STACK[0x2C0]) = STACK[0x40C];
    LODWORD(STACK[0x2CC]) = STACK[0x414];
    LODWORD(STACK[0x330]) = STACK[0x408];
    LODWORD(STACK[0x2F0]) = STACK[0x404];
    LODWORD(STACK[0x2EC]) = STACK[0x400];
    LODWORD(STACK[0x358]) = STACK[0x410];
    LODWORD(STACK[0x2D8]) = STACK[0x418];
    LODWORD(STACK[0x2D4]) = STACK[0x41C];
    return v87();
  }

  else if (LODWORD(STACK[0x394]) == 86)
  {
    return sub_1E332E24C();
  }

  else
  {
    return (*(STACK[0x598] + 8 * ((((STACK[0x37C] & 0x8B90FCED) + ((LODWORD(STACK[0x380]) - 934) ^ 0xFFFFFAAC)) * (STACK[0x3A8] & 1)) ^ (LODWORD(STACK[0x380]) + 1338))))();
  }
}

void sub_1E332EAE4(uint64_t a1)
{
  v1 = *(a1 + 16) - 956911519 * (((a1 | 0xE515A6CD) - a1 + (a1 & 0x1AEA5932)) ^ 0xF84D6C8);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1E332EBB0()
{
  v2 = (v0 - 7944) ^ 0x719;
  v3 = (*(v1 + 8 * (v0 + 144)))();
  v4 = STACK[0x400];
  STACK[0x688] = 0;
  STACK[0x610] = *(v4 + 8 * v2);
  STACK[0x668] = &STACK[0x928];
  v5 = STACK[0x928];
  STACK[0x548] = STACK[0x928];
  return (*(v4 + 8 * ((45 * ((((v2 + 7519) ^ (v5 == 0)) & 1) == 0)) ^ (v2 + 7519))))(v3);
}

_DWORD *sub_1E332ECC4@<X0>(_DWORD *result@<X0>, int a2@<W8>)
{
  *(v2 + 24) = a2;
  *result = 16215812;
  return result;
}

uint64_t sub_1E332ECD8()
{
  (*(v1 + 8 * (v0 ^ 0x3C0A)))(*(v2 - 256));
  **(v2 - 216) = 0;
  return (*(v2 - 240))();
}

void Fhjfdethrte87erhy4()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 + dword_1ECF431A0) ^ 0xDF)) ^ byte_1E430E980[byte_1E4307AA0[(-85 * ((dword_1ECF432C0 + dword_1ECF431A0) ^ 0xDF))] ^ 0x67]) + 29);
  v1 = *(v0 - 4);
  v2 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 + v1) ^ 0xDF)) ^ byte_1E43079A0[byte_1E42FD430[(-85 * ((dword_1ECF432C0 + v1) ^ 0xDF))] ^ 0x21]) + 72);
  v3 = v1 ^ &v5 ^ *v2;
  *(v0 - 4) = 2054362027 * v3 + 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((2 * (v6 & 0x7B0EC2D8) - v6 + 82918694) ^ 0x36EA66B6);
  LOBYTE(v2) = -85 * (*(v0 - 4) ^ 0xDF ^ *v2);
  v4 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 + dword_1ECF431A0) ^ 0xDF)) ^ byte_1E43079A0[byte_1E42FD430[(-85 * ((dword_1ECF432C0 + dword_1ECF431A0) ^ 0xDF))] ^ 0xEE]) + 163) - 8;
  (*&v4[8 * (*(off_1F5DB1CB0 + (*(off_1F5DB1C08 + v2 - 4) ^ 0x80u) - 12) ^ v2) + 76280])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1E332EF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v42 = STACK[0x3F8] - 600;
  v43 = (v40 ^ v41) + a40;
  STACK[0xA00] = v43;
  return (*(STACK[0x400] + 8 * (v42 ^ (35 * (v43 <= a33)))))();
}

void sub_1E332EF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, char a16, uint64_t a17, unsigned int a18)
{
  *v20 = a1;
  *v19 = a15;
  a18 = ((v18 ^ 0x14DA) + 7201) ^ (1824088897 * ((&a16 & 0x79EBB262 | ~(&a16 | 0x79EBB262)) ^ 0xDE7D9EFF));
  a17 = a10;
  (*(v21 + 8 * (((v18 ^ 0x14DA) + 2624) ^ 0x2B35)))(&a16);
  JUMPOUT(0x1E332F014);
}

void h5eRUOOOhxuaBmELCqQZZEcx()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 - dword_1ECF42F70) ^ 0xDF)) ^ byte_1E42FD530[byte_1E4316BE0[(-85 * ((dword_1ECF432C0 - dword_1ECF42F70) ^ 0xDF))] ^ 0xDD]) - 82);
  v1 = -85 * ((dword_1ECF432C0 + *v0) ^ 0xDF);
  v2 = *(&off_1F5DB1610 + (*(off_1F5DB16B8 + (*(off_1F5DB1D28 + v1 - 8) ^ 0x6Du) - 8) ^ v1) + 184);
  v3 = &v5[*v2 ^ *v0];
  *v0 = 2054362027 * v3 + 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((v6 - 1017940651 - 2 * (v6 & 0xC3537555)) ^ 0xF1482EC5);
  LOBYTE(v0) = -85 * ((*v2 + *v0) ^ 0xDF);
  v4 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 - dword_1ECF42F70) ^ 0xDF)) ^ byte_1E430E980[byte_1E4307AA0[(-85 * ((dword_1ECF432C0 - dword_1ECF42F70) ^ 0xDF))] ^ 0x6D]) + 262) - 8;
  (*&v4[8 * (*(off_1F5DB1800 + (*(off_1F5DB19C8 + v0 - 12) ^ 0xE2u) - 12) ^ v0) + 76848])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1E332F310()
{
  v6 = (v1 + 6822) ^ (1824088897 * ((((2 * v5) | 0x32C017CE) - v5 - 425724903) ^ 0x4109D885));
  v5[1] = v4;
  (*(v0 + 8 * (v1 + 8088)))(v5);
  return (v2 - 16257999);
}

uint64_t sub_1E332F31C(uint64_t a1)
{
  v8 = LOWORD(STACK[0x9A4]);
  if (v8 == 17168)
  {
    goto LABEL_4;
  }

  if (v8 != 33980)
  {
    if (v8 != 20706)
    {
LABEL_5:
      STACK[0x8A8] = 0;
      LODWORD(STACK[0x654]) = v5;
      return (*(v6 + 8 * ((7980 * (v2 == (v7 ^ 0x1B11) + 16254717)) ^ v7 ^ 0x1B11)))(a1, 197499219);
    }

LABEL_4:
    STACK[0x670] = v3;
    v2 = 16215638;
    goto LABEL_5;
  }

  v9 = STACK[0x3E8];
  STACK[0x670] = v3;
  LODWORD(STACK[0x654]) = v1;
  return (*(v6 + 8 * (((v9 + v4 == 0) * (((v7 + 727563419) & 0xD4A22FFD) - 1018)) ^ (v7 - 4111))))();
}

void V0YaM92nP0Xx19HNvczPJ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v6 = a6 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1E332F5A4()
{
  *(v4 - 224) = (v0 - 2140802193) ^ (((v4 - 1465866490 - 2 * ((v4 - 232) & 0xA8A0A7EE)) ^ 0x845C1695) * v3);
  v5 = (*(v2 + 8 * (v0 + 3555)))(v4 - 232);
  *(v1 + 8) = *(v4 - 232) ^ 0xAC;
  return (*(v2 + 8 * (v0 - 756)))(v5);
}

uint64_t sub_1E332F674()
{
  v2 = (*(v1 + 8 * (v0 + 7321)))();
  STACK[0x550] = 0;
  return (*(v1 + 8 * ((((v0 - 1865) | 8) + 5665) ^ 0x1DAD ^ ((v0 - 1865) | 8))))(v2);
}

uint64_t sub_1E332F744(int a1)
{
  v4 = v2 + 1;
  v5 = v1 < 0x435814D6;
  if (v5 == v4 < 0x435814D6)
  {
    v5 = v4 < v1;
  }

  return (*(v3 + 8 * (a1 ^ (2 * v5))))();
}

uint64_t sub_1E332F754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, int a17, uint64_t a18, uint64_t a19)
{
  v23 = 1875091903 * ((((2 * &a15) | 0xA58EC02E) - &a15 + 758685673) ^ 0xE4B2E394);
  a18 = a14;
  a16 = ((2 * v20) & 0xD6BBEDF6) + (v20 ^ 0x6B5DF6FB) + ((v22 + 377) ^ 0xB4BEAD9C) + v23;
  a17 = v23 + v22 + 3442;
  (*(v21 + 8 * (v22 + 5363)))(&a15);
  v24 = 1824088897 * ((-526740077 - (&a15 | 0xE09A9593) + (&a15 | 0x1F656A6C)) ^ 0x470CB90E);
  a18 = a10;
  a19 = a14;
  a17 = (v19 ^ 0x5EF7EE9A) + ((2 * v19) & 0xBDEFDD34) - v24 - 273875984;
  a15 = v24 + v22 - 525;
  v25 = (*(v21 + 8 * (v22 + 5349)))(&a15);
  return (*(v21 + 8 * ((1159 * (a16 == 16257999)) ^ v22)))(v25);
}

uint64_t sub_1E332F94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a15 = &a12;
  a17 = 1317436891 * ((&a15 & 0x1D596EE2 | ~(&a15 | 0x1D596EE2)) ^ 0x52A5096B) + 8154;
  v18 = (*(v17 + 77096))(&a15);
  return (*(v17 + 8 * ((7705 * (a16 == 16257999)) ^ 0x92Fu)))(v18);
}

uint64_t sub_1E332F9F4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, unint64_t a58)
{
  v62 = *(v58 + 24);
  v63 = __ROR8__((v62 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v64 = (v63 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v65 = (__ROR8__((v63 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v64) ^ 0xE49D77DF873DBF7ELL;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0xF5A2F1B9B5D0B209;
  v68 = __ROR8__(v67, 8);
  v69 = v67 ^ __ROR8__(v66, 61);
  v70 = (v68 + v69 - ((2 * (v68 + v69)) & 0x512B57FB6494046ALL) + 0x2895ABFDB24A0235) ^ 0x71F61D38E7937D2ALL;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ v59;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = __ROR8__(v72, 8);
  v75 = (((v74 + v73) ^ 0x79C11BFC4894BC72 | 0xC3906BA06D3A2EC5) - ((v74 + v73) ^ 0x79C11BFC4894BC72 | 0x3C6F945F92C5D13ALL) + 0x3C6F945F92C5D13ALL) ^ 0xDE926C5E552A4CDBLL;
  v76 = v75 ^ __ROR8__(v73, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ v60;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = __ROR8__(v77, 8);
  v62[10] = (((((2 * (v79 + v78)) | 0xC38C36871CFCF294) - (v79 + v78) - 0x61C61B438E7E794ALL) ^ 0xCAF65991A6F9250BLL) >> (8 * ((v62 + 10) & 7u))) ^ (a58 >> ((a1 + 93) ^ 0x77u)) ^ 0x43;
  v80 = __ROR8__((v62 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v81 = v80 - ((2 * v80 + 0x2A11B965E67D9C56) & 0x89AD15096A95E46ELL) - 0x262098C857763F9ELL;
  v82 = v81 ^ 0xD3FC8BFDA5C15E5;
  v81 ^= 0xA5792D2843AA64B9;
  v83 = __ROR8__(v82, 8);
  v84 = (((2 * (v83 + v81)) & 0x172EA68DBB7EC94) - (v83 + v81) + 0x7F468ACB922409B5) ^ 0x9BDBFD141519B6CBLL;
  v85 = v84 ^ __ROR8__(v81, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (((2 * (v86 + v85)) & 0xD4F2B43A3958542) - (v86 + v85) - 0x6A795A1D1CAC2A2) ^ 0xCFA9BE79BE58F57;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ 0x5963B6C555D97F1FLL;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = __ROR8__(v89, 8);
  v92 = (((v91 + v90) | 0x3A57A17B6EDF06BLL) - ((v91 + v90) | 0xFC5A85E849120F94) - 0x3A57A17B6EDF06CLL) ^ 0x62E0E73D46F2D49CLL;
  v93 = v92 ^ __ROR8__(v90, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ 0x64C31C027084DE6CLL;
  v95 = __ROR8__(v94, 8);
  v96 = v94 ^ __ROR8__(v93, 61);
  v97 = (((v95 + v96) | 0x3F31863D75651161) - ((v95 + v96) | 0xC0CE79C28A9AEE9ELL) - 0x3F31863D75651162) ^ 0x251B6DD93736BE62;
  v98 = __ROR8__(v97, 8);
  v99 = __ROR8__(v96, 61);
  v62[11] = (((((2 * (v98 + (v97 ^ v99))) | 0xAB41BFF64D60CE6CLL) - (v98 + (v97 ^ v99)) - 0x55A0DFFB26B06736) ^ 0xFE909D290E373B77) >> (8 * ((v62 + 11) & 7u))) ^ BYTE6(a58) ^ 0x1A;
  v100 = (__ROR8__((v62 + 12) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v101 = v100 ^ 0x4DE9423B6F16E7D2;
  v100 ^= 0xE5AFA7ACF6E0968ELL;
  v102 = __ROR8__(v101, 8);
  v103 = (v102 + v100 - ((2 * (v102 + v100)) & 0xA684DABE1F7F2120) - 0x2CBD92A0F0406F70) ^ 0x37DF1A8088822FEELL;
  v104 = v103 ^ __ROR8__(v100, 61);
  v105 = __ROR8__(v103, 8);
  v106 = (((v105 + v104) | 0x2D1013F9AFD52057) - ((v105 + v104) | 0xD2EFEC06502ADFA8) - 0x2D1013F9AFD52058) ^ 0xD8B2E2401A05925ELL;
  v107 = v106 ^ __ROR8__(v104, 61);
  v108 = (__ROR8__(v106, 8) + v107) ^ 0x5963B6C555D97F1FLL;
  v109 = v108 ^ __ROR8__(v107, 61);
  v110 = __ROR8__(v108, 8);
  v111 = __ROR8__((v110 + v109 - ((2 * (v110 + v109)) & 0x505C9B69C721B602) + 0x282E4DB4E390DB01) ^ 0x496BD09E138FFFF6, 8);
  v112 = (v110 + v109 - ((2 * (v110 + v109)) & 0x505C9B69C721B602) + 0x282E4DB4E390DB01) ^ 0x496BD09E138FFFF6 ^ __ROR8__(v109, 61);
  v113 = (v111 + v112) ^ 0x64C31C027084DE6CLL;
  v114 = v113 ^ __ROR8__(v112, 61);
  v115 = (__ROR8__(v113, 8) + v114) ^ v60;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = __ROR8__(v115, 8);
  v62[12] = (((((2 * (v117 + v116)) & 0xA6AF603E61524BD2) - (v117 + v116) + 0x2CA84FE0CF56DA16) ^ 0x87980D32E7D18657) >> (8 * ((v62 + 12) & 7u))) ^ BYTE5(a58) ^ 0x33;
  v118 = __ROR8__((v62 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v119 = ((2 * (v118 - 0x6AF7234D0CC131D5)) | 0xBCD338F7A72AF0E2) - (v118 - 0x6AF7234D0CC131D5) - 0x5E699C7BD3957871;
  v120 = v119 ^ 0x1780DE40BC839FA3;
  v119 ^= 0xBFC63BD72575EEFFLL;
  v121 = __ROR8__(v120, 8);
  v122 = (((v121 + v119) | 0x524D786A2DAA5236) - ((v121 + v119) | 0xADB28795D255ADC9) - 0x524D786A2DAA5237) ^ 0xB6D00FB5AA97ED48;
  v123 = v122 ^ __ROR8__(v119, 61);
  v124 = __ROR8__(v122, 8);
  v125 = (((2 * (v124 + v123)) | 0xC461725543BD74EALL) - (v124 + v123) - 0x6230B92AA1DEBA75) ^ 0x97924893140E087CLL;
  v126 = v125 ^ __ROR8__(v123, 61);
  v127 = (__ROR8__(v125, 8) + v126) ^ 0x5963B6C555D97F1FLL;
  v128 = v127 ^ __ROR8__(v126, 61);
  v129 = (__ROR8__(v127, 8) + v128) ^ v59;
  v130 = v129 ^ __ROR8__(v128, 61);
  v131 = __ROR8__(v129, 8);
  v132 = (((v131 + v130) | 0xD6A77E9273FF605BLL) - ((v131 + v130) | 0x2958816D8C009FA4) + 0x2958816D8C009FA4) ^ 0xB2646290037BBE37;
  v133 = v132 ^ __ROR8__(v130, 61);
  v134 = __ROR8__(v132, 8);
  v62[13] = (((__ROR8__((v134 + v133 - ((2 * (v134 + v133)) & 0x9E7D2340626A9232) - 0x30C16E5FCECAB6E7) ^ 0xD5147A447366E61ALL, 8) + ((v134 + v133 - ((2 * (v134 + v133)) & 0x9E7D2340626A9232) - 0x30C16E5FCECAB6E7) ^ 0xD5147A447366E61ALL ^ __ROR8__(v133, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v62 + 13) & 7u))) ^ BYTE4(a58) ^ 0xAA;
  v135 = __ROR8__((v62 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v136 = v135 - ((2 * v135 + 0x2A11B965E67D9C56) & 0x20559374910370F8) - 0x5ACC5992C43F7959;
  v137 = v136 ^ 0x59C38B8127975FAELL;
  v136 ^= 0xF1856E16BE612EF2;
  v138 = (__ROR8__(v137, 8) + v136) ^ 0xE49D77DF873DBF7ELL;
  v139 = v138 ^ __ROR8__(v136, 61);
  v140 = (__ROR8__(v138, 8) + v139) ^ 0xF5A2F1B9B5D0B209;
  v141 = v140 ^ __ROR8__(v139, 61);
  v142 = (__ROR8__(v140, 8) + v141) ^ 0x5963B6C555D97F1FLL;
  v143 = v142 ^ __ROR8__(v141, 61);
  v144 = __ROR8__(v142, 8);
  v145 = (v144 + v143 - ((2 * (v144 + v143)) & 0xF9BA02E111CAE97ALL) + 0x7CDD017088E574BDLL) ^ 0x1D989C5A78FA504ALL;
  v146 = v145 ^ __ROR8__(v143, 61);
  v147 = __ROR8__(v145, 8);
  v148 = __ROR8__((v147 + v146 - ((2 * (v147 + v146)) & 0xBB2E9B3140AA9E2CLL) + 0x5D974D98A0554F16) ^ 0x3954519AD0D1917ALL, 8);
  v149 = (v147 + v146 - ((2 * (v147 + v146)) & 0xBB2E9B3140AA9E2CLL) + 0x5D974D98A0554F16) ^ 0x3954519AD0D1917ALL ^ __ROR8__(v146, 61);
  v150 = (v148 + v149) ^ v60;
  v151 = v150 ^ __ROR8__(v149, 61);
  v152 = __ROR8__(v150, 8);
  LOBYTE(v151) = (((((v152 + v151) | 0x6B6AF9C6B406ECE7) - ((v152 + v151) | 0x949506394BF91318) - 0x6B6AF9C6B406ECE8) ^ 0xC05ABB149C81B0A6) >> (8 * ((v62 + 14) & 7u))) ^ BYTE3(a58) ^ 0x2E;
  v153 = __ROR8__((v62 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v62[14] = v151;
  v154 = ((v153 - 0x6AF7234D0CC131D5) & 0xF89A3C6BA21CFB5FLL ^ 0x40000C09A010C112) + ((v153 - 0x6AF7234D0CC131D5) ^ 0xB9DB32660AEF3ECDLL) - (((v153 - 0x6AF7234D0CC131D5) ^ 0xB9DB32660AEF3ECDLL) & 0xF89A3C6BA21CFB5FLL);
  v155 = v154 ^ 0x8A84C36C7E52240;
  v154 ^= 0xA0EEA9A15E13531CLL;
  v156 = (__ROR8__(v155, 8) + v154) ^ 0xE49D77DF873DBF7ELL;
  v157 = v156 ^ __ROR8__(v154, 61);
  v158 = (__ROR8__(v156, 8) + v157) ^ 0xF5A2F1B9B5D0B209;
  v159 = v158 ^ __ROR8__(v157, 61);
  v160 = __ROR8__(v158, 8);
  v161 = (((2 * (v160 + v159)) & 0x7EC0B560615BD22) - (v160 + v159) - 0x3F605AB030ADE92) ^ 0xA56A4C91A92C5E71;
  v162 = v161 ^ __ROR8__(v159, 61);
  v163 = __ROR8__(v161, 8);
  v164 = (((v163 + v162) & 0xF4B1E271DC896087 ^ 0xA0425158896006) + ((v163 + v162) ^ 0xFE51A922A5729599) - (((v163 + v162) ^ 0xFE51A922A5729599) & 0xF4B1E271DC896087)) ^ 0x6BA5D67989E4D1E9;
  v165 = v164 ^ __ROR8__(v162, 61);
  v166 = __ROR8__(v164, 8);
  v167 = (((2 * (v166 + v165)) | 0x81910D2EFE6F15ACLL) - (v166 + v165) - 0x40C886977F378AD6) ^ 0x240B9A950FB354BALL;
  v168 = v167 ^ __ROR8__(v165, 61);
  v169 = __ROR8__(v167, 8);
  v170 = (((v169 + v168) | 0x452FEAF2D8983268) - ((v169 + v168) | 0xBAD0150D2767CD97) - 0x452FEAF2D8983269) ^ 0x5F0501169ACB9D6BLL;
  v171 = v170 ^ __ROR8__(v168, 61);
  v172 = __ROR8__(v170, 8);
  v62[15] = (((v172 + v171 - ((2 * (v172 + v171)) & 0x5CD5F962F5DFE9B2) - 0x5195034E85100B27) ^ 0x55ABE635268A898) >> (8 * ((v62 + 15) & 7u))) ^ BYTE2(a58) ^ 0x6D;
  v173 = __ROR8__((v62 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v174 = -2 - (((0x6AF7234D0CC131D4 - v173) | 0xB9373BCC9E95648DLL) + ((v173 - 0x6AF7234D0CC131D5) | 0x46C8C433616A9B72));
  v175 = __ROR8__(v174 ^ 0xF0DE79F7F183835FLL, 8);
  v174 ^= 0x58989C606875F203uLL;
  v176 = (v175 + v174) ^ 0xE49D77DF873DBF7ELL;
  v177 = v176 ^ __ROR8__(v174, 61);
  v178 = (__ROR8__(v176, 8) + v177) ^ 0xF5A2F1B9B5D0B209;
  v179 = v178 ^ __ROR8__(v177, 61);
  v180 = (__ROR8__(v178, 8) + v179) ^ 0x5963B6C555D97F1FLL;
  v181 = v180 ^ __ROR8__(v179, 61);
  v182 = __ROR8__(v180, 8);
  v183 = (((2 * (v182 + v181)) & 0x24C3B6EDA515D42ALL) - (v182 + v181) + 0x6D9E24892D7515EALL) ^ 0xCDBB9A3DD6A311DLL;
  v184 = v183 ^ __ROR8__(v181, 61);
  v185 = __ROR8__(v183, 8);
  v186 = (((v185 + v184) | 0x3A521DF821A27A3ELL) - ((v185 + v184) | 0xC5ADE207DE5D85C1) - 0x3A521DF821A27A3FLL) ^ 0x5E9101FA5126A452;
  v187 = v186 ^ __ROR8__(v184, 61);
  v188 = (__ROR8__(v186, 8) + v187) ^ v60;
  v189 = v188 ^ __ROR8__(v187, 61);
  v190 = __ROR8__(v188, 8);
  v62[16] = (((((2 * (v190 + v189)) | 0x4D724CAE0D8F11E6) - (v190 + v189) + 0x5946D9A8F938770DLL) ^ 0xD8964852E40D4B2) >> (8 * ((v62 + 16) & 7u))) ^ BYTE1(a58) ^ 0x96;
  v191 = __ROR8__((v62 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v192 = ((2 * ((v191 - 0x6AF7234D0CC131D5) ^ 0x5C0D666DD0C97AA4)) | 0x301A5F137AACAE0ELL) - ((v191 - 0x6AF7234D0CC131D5) ^ 0x5C0D666DD0C97AA4) - 0x180D2F89BD565707;
  v193 = v192 ^ 0xDE90BDF0289CA71;
  v192 ^= 0xA5AFEE489B7FBB2DLL;
  v194 = __ROR8__(v193, 8);
  v195 = (((2 * (v194 + v192)) | 0x692CEF71A0CBBC0ELL) - (v194 + v192) - 0x349677B8D065DE07) ^ 0xD00B006757586179;
  v196 = v195 ^ __ROR8__(v192, 61);
  v197 = __ROR8__(v195, 8);
  v198 = (((2 * (v197 + v196)) & 0xFD81E0C09A12569ALL) - (v197 + v196) - 0x7EC0F0604D092B4ELL) ^ 0x749DFE26072666BBLL;
  v199 = v198 ^ __ROR8__(v196, 61);
  v200 = (__ROR8__(v198, 8) + v199) ^ 0x5963B6C555D97F1FLL;
  v201 = v200 ^ __ROR8__(v199, 61);
  v202 = (__ROR8__(v200, 8) + v201) ^ v59;
  v203 = v202 ^ __ROR8__(v201, 61);
  v204 = __ROR8__(v202, 8);
  v205 = (v204 + v203 - ((2 * (v204 + v203)) & 0x3076304A369A11B8) - 0x67C4E7DAE4B2F724) ^ 0xFCF804276BC9D6B0;
  v206 = v205 ^ __ROR8__(v203, 61);
  v207 = __ROR8__(v205, 8);
  v208 = (v207 + v206 - ((2 * (v207 + v206)) & 0x43F5BC2EBD15E7BELL) + 0x21FADE175E8AF3DFLL) ^ 0x3BD035F31CD95CDCLL;
  v62[17] = (((__ROR8__(v208, 8) + (v208 ^ __ROR8__(v206, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v62 + 17) & 7u))) ^ a58 ^ 0x5F;
  v209 = STACK[0x2BC];
  *(v61 - 208) = 0;
  v210 = *(v61 - 256);
  STACK[0x210] = *(v210 + 8 * (a1 - 858));
  LODWORD(STACK[0x200]) = v209 + 4247;
  LODWORD(STACK[0x2B0]) = v209 + 5752;
  LODWORD(STACK[0x270]) = (v209 + 6962) | 0x30;
  return (*(v210 + 8 * (((*a23 != 0) * ((((216 * ((a1 + 349) ^ 0x543)) ^ 0xF6F) - 1128) ^ 0xF3)) | (216 * ((a1 + 349) ^ 0x543)))))(0x8893D652EA3595FFLL, 0x6FEAED2DD55A32A7, 0x3D2CC4E5C304AE09);
}

void sub_1E333095C()
{
  LODWORD(STACK[0x514]) = v2;
  STACK[0x528] = STACK[0x880];
  STACK[0x580] = *(v1 + 8 * (v0 - 5608));
  JUMPOUT(0x1E34086C8);
}

uint64_t sub_1E3330998(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *(v4 + a3 + 16);
  v8 = (v5 + a3);
  *(v8 - 1) = *(v4 + a3);
  *v8 = v7;
  return (*(v6 + 8 * ((28 * (v3 != a3)) ^ a2)))();
}

uint64_t sub_1E33309CC(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v26 = a10 - 16;
  v27.i64[0] = a14 + v26 - 15;
  v27.i64[1] = a14 + v26 - 16;
  v28.i64[0] = a14 + v26 - 13;
  v28.i64[1] = a14 + v26 - 14;
  v29.i64[0] = a14 + v26 - 11;
  v29.i64[1] = a14 + v26 - 12;
  v30.i64[0] = a14 + v26 - 5;
  v30.i64[1] = a14 + v26 - 6;
  v31.i64[0] = a14 + v26 - 3;
  v31.i64[1] = a14 + v26 - 4;
  v32.i64[0] = a14 + v26 - 1;
  v32.i64[1] = a14 + v26 - 2;
  v33.i64[0] = a14 + v26 - 7;
  v33.i64[1] = a14 + v26 + a16;
  v34 = vandq_s8(v33, a1);
  v35 = vandq_s8(v32, a1);
  v36 = vandq_s8(v31, a1);
  v37 = vandq_s8(v30, a1);
  v38 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v40 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), a3);
  v41 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), a3);
  v42 = veorq_s8(v41, a4);
  v43 = veorq_s8(v40, a4);
  v44 = veorq_s8(v40, a5);
  v45 = veorq_s8(v41, a5);
  v46 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v45);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), v44);
  v48 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v46, a6), vorrq_s8(v46, a7)), a7), a8);
  v49 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v47, a6), vorrq_s8(v47, a7)), a7), a8);
  v50 = veorq_s8(v49, vsraq_n_u64(vshlq_n_s64(v44, 3uLL), v44, 0x3DuLL));
  v51 = veorq_s8(v48, vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL));
  v52 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v50), v18);
  v53 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v51), v18);
  v54 = vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL);
  v55 = veorq_s8(v53, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v56 = veorq_s8(v52, v54);
  v57 = vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v56);
  v59 = vaddq_s64(v57, v55);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v58, v19), vorrq_s8(v58, v20)), v20), v21);
  v61 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v59, v19), vorrq_s8(v59, v20)), v20), v21);
  v62 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v63 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v64 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v62), v22);
  v65 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v63), v22);
  v66 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v67 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v68 = veorq_s8(v64, v66);
  v69 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v68);
  v71 = veorq_s8(vaddq_s64(v69, v67), v23);
  v72 = veorq_s8(v70, v23);
  v73 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v74 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v75 = veorq_s8(v71, v73);
  v76 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v75);
  v78 = veorq_s8(vaddq_s64(v76, v74), v24);
  v79 = veorq_s8(v77, v24);
  v80 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v81 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v82 = veorq_s8(v78, v80);
  v80.i64[0] = a14 + v26 - 9;
  v80.i64[1] = a14 + v26 - 10;
  v83 = vaddq_s64(v38, a3);
  v84 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v81), v25);
  v169.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v82), v25), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a2)));
  v169.val[1] = vshlq_u64(v84, vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a2)));
  v85 = veorq_s8(v83, a4);
  v86 = veorq_s8(v83, a5);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v86);
  v88 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v87, a6), vorrq_s8(v87, a7)), a7), a8);
  v89 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v90 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v89), v18);
  v91 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91);
  v93 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v92, v19), vorrq_s8(v92, v20)), v20), v21);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94), v22);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), v23);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), v24);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL)));
  v101 = vandq_s8(v80, a1);
  v102 = vaddq_s64(v39, a3);
  v169.val[0] = vshlq_u64(veorq_s8(v100, v25), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a2)));
  v103 = veorq_s8(v102, a4);
  v104 = veorq_s8(v102, a5);
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v105, a6), vorrq_s8(v105, a7)), a7), a8);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), v18);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v110, v19), vorrq_s8(v110, v20)), v20), v21);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), v22);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v23);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v24);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v120 = vandq_s8(v29, a1);
  v121 = vaddq_s64(v119, v118);
  v122 = vandq_s8(v28, a1);
  v169.val[3] = vshlq_u64(veorq_s8(v121, v25), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a2)));
  v123 = vandq_s8(v27, a1);
  v124 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL);
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), a3);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), a3);
  v123.i64[0] = vqtbl4q_s8(v169, *&STACK[0x3E0]).u64[0];
  v169.val[0] = veorq_s8(v127, a4);
  v169.val[1] = veorq_s8(v126, a4);
  v169.val[2] = veorq_s8(v126, a5);
  v169.val[3] = veorq_s8(v127, a5);
  v169.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[0], 0x38uLL), v169.val[0], 8uLL), v169.val[3]);
  v169.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[1], 0x38uLL), v169.val[1], 8uLL), v169.val[2]);
  v169.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v169.val[0], a6), vorrq_s8(v169.val[0], a7)), a7), a8);
  v169.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v169.val[1], a6), vorrq_s8(v169.val[1], a7)), a7), a8);
  v169.val[2] = veorq_s8(v169.val[1], vsraq_n_u64(vshlq_n_s64(v169.val[2], 3uLL), v169.val[2], 0x3DuLL));
  v169.val[3] = veorq_s8(v169.val[0], vsraq_n_u64(vshlq_n_s64(v169.val[3], 3uLL), v169.val[3], 0x3DuLL));
  v169.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[1], 0x38uLL), v169.val[1], 8uLL), v169.val[2]), v18);
  v169.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[0], 0x38uLL), v169.val[0], 8uLL), v169.val[3]), v18);
  v128 = vsraq_n_u64(vshlq_n_s64(v169.val[2], 3uLL), v169.val[2], 0x3DuLL);
  v169.val[2] = veorq_s8(v169.val[0], vsraq_n_u64(vshlq_n_s64(v169.val[3], 3uLL), v169.val[3], 0x3DuLL));
  v169.val[3] = veorq_s8(v169.val[1], v128);
  v129 = vsraq_n_u64(vshlq_n_s64(v169.val[0], 0x38uLL), v169.val[0], 8uLL);
  v169.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[1], 0x38uLL), v169.val[1], 8uLL), v169.val[3]);
  v169.val[1] = vaddq_s64(v129, v169.val[2]);
  v169.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v169.val[0], v19), vorrq_s8(v169.val[0], v20)), v20), v21);
  v169.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v169.val[1], v19), vorrq_s8(v169.val[1], v20)), v20), v21);
  v169.val[2] = veorq_s8(v169.val[1], vsraq_n_u64(vshlq_n_s64(v169.val[2], 3uLL), v169.val[2], 0x3DuLL));
  v169.val[3] = veorq_s8(v169.val[0], vsraq_n_u64(vshlq_n_s64(v169.val[3], 3uLL), v169.val[3], 0x3DuLL));
  v169.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[1], 0x38uLL), v169.val[1], 8uLL), v169.val[2]), v22);
  v169.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[0], 0x38uLL), v169.val[0], 8uLL), v169.val[3]), v22);
  v130 = vsraq_n_u64(vshlq_n_s64(v169.val[2], 3uLL), v169.val[2], 0x3DuLL);
  v169.val[2] = veorq_s8(v169.val[0], vsraq_n_u64(vshlq_n_s64(v169.val[3], 3uLL), v169.val[3], 0x3DuLL));
  v169.val[3] = veorq_s8(v169.val[1], v130);
  v131 = vsraq_n_u64(vshlq_n_s64(v169.val[0], 0x38uLL), v169.val[0], 8uLL);
  v169.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[1], 0x38uLL), v169.val[1], 8uLL), v169.val[3]);
  v169.val[1] = veorq_s8(vaddq_s64(v131, v169.val[2]), v23);
  v169.val[0] = veorq_s8(v169.val[0], v23);
  v132 = vsraq_n_u64(vshlq_n_s64(v169.val[2], 3uLL), v169.val[2], 0x3DuLL);
  v169.val[2] = veorq_s8(v169.val[0], vsraq_n_u64(vshlq_n_s64(v169.val[3], 3uLL), v169.val[3], 0x3DuLL));
  v169.val[3] = veorq_s8(v169.val[1], v132);
  v133 = vsraq_n_u64(vshlq_n_s64(v169.val[0], 0x38uLL), v169.val[0], 8uLL);
  v169.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[1], 0x38uLL), v169.val[1], 8uLL), v169.val[3]);
  v169.val[1] = veorq_s8(vaddq_s64(v133, v169.val[2]), v24);
  v169.val[0] = veorq_s8(v169.val[0], v24);
  v134 = vsraq_n_u64(vshlq_n_s64(v169.val[2], 3uLL), v169.val[2], 0x3DuLL);
  v169.val[2] = veorq_s8(v169.val[0], vsraq_n_u64(vshlq_n_s64(v169.val[3], 3uLL), v169.val[3], 0x3DuLL));
  v135 = vaddq_s64(v124, a3);
  v169.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[1], 0x38uLL), v169.val[1], 8uLL), veorq_s8(v169.val[1], v134)), v25), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), a2)));
  v169.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[0], 0x38uLL), v169.val[0], 8uLL), v169.val[2]), v25), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), a2)));
  v136 = veorq_s8(v135, a4);
  v137 = veorq_s8(v135, a5);
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v137);
  v139 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v138, a6), vorrq_s8(v138, a7)), a7), a8);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v141 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140), v18);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v143, v19), vorrq_s8(v143, v20)), v20), v21);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v146 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145), v22);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v148 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147), v23);
  v149 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v150 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v149), v24);
  v151 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL)));
  v152 = vaddq_s64(v125, a3);
  v169.val[1] = vshlq_u64(veorq_s8(v151, v25), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a2)));
  v153 = veorq_s8(v152, a4);
  v154 = veorq_s8(v152, a5);
  v155 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v154);
  v156 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v155, a6), vorrq_s8(v155, a7)), a7), a8);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), v18);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159);
  v161 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v160, v19), vorrq_s8(v160, v20)), v20), v21);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v163 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162), v22);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164), v23);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166), v24);
  v169.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL))), v25), vnegq_s64(vandq_s8(vshlq_n_s64(v80, 3uLL), a2)));
  v123.i64[1] = vqtbl4q_s8(v169, *&STACK[0x3E0]).u64[0];
  v169.val[0] = vrev64q_s8(*(a14 + v26 - 16));
  v169.val[1].i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v169.val[1].i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v169.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v169.val[0], v169.val[0], 8uLL), v169.val[1]), v123));
  *(a15 + v26) = vextq_s8(v169.val[0], v169.val[0], 8uLL);
  return (*(v17 + 8 * (((a13 == v26) * v16) | a11)))();
}

uint64_t sub_1E33309D4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v14 = a1 - 5502;
  if (v12)
  {
    v15 = a12 == (v14 ^ 0x2D66) - 8498;
  }

  else
  {
    v15 = 1;
  }

  v17 = v15 || a3 == 0;
  return (*(v13 + 8 * ((v17 * (v14 ^ 0xC7F)) | v14)))();
}

uint64_t sub_1E3330AB4@<X0>(int a1@<W8>)
{
  v2 = a1 + 8431;
  v3 = STACK[0x730];
  v4 = STACK[0x924];
  v5 = a1 + 5;
  v6 = a1 + 8330;
  STACK[0x4C0] = *(v1 + 8 * a1);
  STACK[0x6A8] = &STACK[0x7B8];
  LODWORD(STACK[0x7F4]) = v4;
  STACK[0x4F8] = v3;
  STACK[0x440] = 0;
  LODWORD(STACK[0x46C]) = 197499219;
  STACK[0x7D8] = 0x4789E5A74F535ADDLL;
  STACK[0x780] = 0;
  v7 = (*(v1 + 8 * ((a1 + 8431) ^ 0x127)))(16, 0x20040A4A59CD2);
  v8 = STACK[0x400];
  STACK[0x880] = v7;
  return (*(v8 + 8 * ((((v5 ^ (v7 == 0)) & 1) * (v6 ^ 0x2433)) ^ v2)))();
}

uint64_t sub_1E3330B68()
{
  STACK[0x3E0] = STACK[0x4F0] + 24;
  v3 = LOWORD(STACK[0xAFE]);
  LODWORD(STACK[0x380]) = v3;
  LODWORD(STACK[0x370]) = v3 ^ 0xFFFFA60A;
  v4 = STACK[0xB00];
  LODWORD(STACK[0x390]) = 197499223;
  LODWORD(STACK[0x2D0]) = LODWORD(STACK[0xB04]) ^ 0xD6A561FA;
  STACK[0x3D0] = STACK[0x988] + 24;
  v5 = LOWORD(STACK[0xB36]);
  LODWORD(STACK[0x360]) = v5;
  LODWORD(STACK[0x350]) = v5 ^ 0x4CF9;
  v6 = STACK[0xB38];
  LODWORD(STACK[0x2C0]) = LODWORD(STACK[0xB3C]) ^ 0xD6A561FA;
  STACK[0x3C0] = STACK[0x8A8] + 24;
  STACK[0x3B0] = STACK[0x998] + 24;
  STACK[0x3A0] = STACK[0x750] + 24;
  v7 = STACK[0x6A4];
  v8 = (LODWORD(STACK[0x6A4]) ^ 0x1584243D) - 291580786;
  v9 = (LODWORD(STACK[0x6A4]) ^ 0xE8328CAC) + 321420317;
  v10 = (LODWORD(STACK[0x6A4]) ^ 0x26AC58A1) - 575231982;
  v11 = (LODWORD(STACK[0x6A4]) ^ 0xDFFFFF7F) + 618991568;
  LODWORD(STACK[0x300]) = v4;
  LODWORD(STACK[0x340]) = v4 ^ 0xD6A561FA;
  LODWORD(STACK[0x330]) = LODWORD(STACK[0x724]) ^ 0xD6A561FA;
  LODWORD(STACK[0x2F0]) = v6;
  LODWORD(STACK[0x320]) = v6 ^ 0xD6A561FA;
  LODWORD(STACK[0x310]) = v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ 0xD985F7E6;
  LODWORD(STACK[0x2E0]) = v2 - 4131;
  v12 = *v1;
  v13 = __ROR8__(v12 & 0xFFFFFFFFFFFFFFF8, 8);
  v14 = ((0x6AF7234D0CC131D4 - v13) & 0x435B154A729201BFLL) + v13 - 0x6AF7234D0CC131D5 - ((v13 - 0x6AF7234D0CC131D5) & 0x435B154A729201BFLL);
  v15 = __ROR8__(v14 ^ 0xAB257711D84E66DLL, 8);
  v14 ^= 0xA2F4B2E684729731;
  v16 = (((v15 + v14) & 0xB9CE2113715ACFF7 ^ 0x184A000231524D61) + ((v15 + v14) & 0x4631DEEC8EA53008 ^ 0x460196A406053009) - 1) ^ 0xBAD6E179B06AC217;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xF5A2F1B9B5D0B209;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x5963B6C555D97F1FLL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x61459D2AF01F24F7;
  v23 = __ROR8__(v22, 8);
  v24 = v22 ^ __ROR8__(v21, 61);
  v25 = (v23 + v24) ^ 0x64C31C027084DE6CLL;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8) + v26;
  v28 = __ROR8__((v12 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v29 = (0x6AF7234D0CC131D4 - v28) & 0xC2A16714FA488FC8 | (v28 + 0x1508DCB2F33ECE2BLL) & 0x3D5E98EB05B77037;
  v30 = __ROR8__(v29 ^ 0x8B48252F955E681ALL, 8);
  v29 ^= 0x230EC0B80CA81946uLL;
  v31 = (((2 * v27) | 0x36A4398A31861B6ALL) - v27 - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6;
  v32 = (((2 * (v30 + v29)) & 0xAC7FF88AB7D467A0) - (v30 + v29) - 0x563FFC455BEA33D1) ^ 0x4D5D746523287351;
  v33 = v32 ^ __ROR8__(v29, 61);
  v34 = __ROR8__(v32, 8);
  LOBYTE(v26) = (((__ROR8__(v31, 8) + (v31 ^ __ROR8__(v26, 61))) ^ 0xAB3042D228875C41) >> (8 * (v12 & 7u))) ^ 0x2E;
  v35 = (v34 + v33 - ((2 * (v34 + v33)) & 0xBB63D01A1060ED3ALL) - 0x224E17F2F7CF8963) ^ 0x281319B4BDE0C494;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = *(STACK[0x400] + 8 * (v0 - 8648));
  *v12 = v26 ^ 0xDD;
  v38 = (__ROR8__(v35, 8) + v36) ^ 0x5963B6C555D97F1FLL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0x61459D2AF01F24F7;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (((2 * (v42 + v41)) | 0x63B77BB044F1F226) - (v42 + v41) + 0x4E244227DD8706EDLL) ^ 0xD518A1DA52FC277FLL;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0x1A2AEBE44253AF03;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  *(v12 + 1) = (((v47 + v46 - ((2 * (v47 + v46)) & 0x7F0D34FB28D08226) + 0x3F869A7D94684113) ^ 0x94B6D8AFBCEF1D52) >> (8 * ((v12 + 1) & 7))) ^ 0xAA;
  v48 = __ROR8__((v12 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v49 = ((2 * v48 + 0x2A11B965E67D9C56) & 0xC8758E867E4F43EALL) - v48 + 0x6BC5C09CD998FDFLL;
  v50 = __ROR8__(v49 ^ 0xD22C7A87AFCEB9D8, 8);
  v49 ^= 0x7A6A9F103638C884uLL;
  v51 = (v50 + v49) ^ 0xE49D77DF873DBF7ELL;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0xF5A2F1B9B5D0B209;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0x5963B6C555D97F1FLL;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = __ROR8__(v55, 8);
  v58 = (((2 * (v57 + v56)) | 0x316A40512FDE1242) - (v57 + v56) + 0x674ADFD76810F6DFLL) ^ 0xF9F0BD0267F02DD6;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0x64C31C027084DE6CLL;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ 0x1A2AEBE44253AF03;
  *(v12 + 2) = (((__ROR8__(v62, 8) + (v62 ^ __ROR8__(v61, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v12 + 2) & 7))) ^ 0x23;
  v63 = __ROR8__((v12 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v64 = (0xAF7234D0CC131D4 - v63) & 0x126AA61F6F56C0D8 | (v63 - 0x6AF7234D0CC131D5) & 0xE99559E090A93F27;
  v65 = v64 ^ 0x5F83E4240040270ALL;
  v64 ^= 0xF7C501B399B65656;
  v66 = (__ROR8__(v65, 8) + v64) ^ 0xE49D77DF873DBF7ELL;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0xF5A2F1B9B5D0B209;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (((2 * (v70 + v69)) | 0x2A5638492DD55EAELL) - (v70 + v69) - 0x152B1C2496EAAF57) ^ 0x4C48AAE1C333D048;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0x61459D2AF01F24F7;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0x64C31C027084DE6CLL;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ 0x1A2AEBE44253AF03;
  *(v12 + 3) = (((__ROR8__(v77, 8) + (v77 ^ __ROR8__(v76, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v12 + 3) & 7))) ^ 0x9E;
  return v37();
}

uint64_t sub_1E3330C1C@<X0>(int a1@<W8>)
{
  STACK[0xA98] = v1;
  v2 = STACK[0x520];
  STACK[0xAA0] = STACK[0x520];
  return (*(STACK[0x400] + 8 * (((v1 - v2 > (3 * (a1 ^ 0x4A2u)) - 624) * ((a1 ^ 0x2051) - 9043)) ^ a1)))();
}

uint64_t sub_1E3330CDC@<X0>(int a1@<W8>)
{
  v3 = LODWORD(STACK[0x4C4]) + 1185649741;
  v4 = v3 < v1;
  if (v4 == v1 + 1 < v1)
  {
    v4 = v1 + 1 < v3;
  }

  return (*(v2 + 8 * ((2826 * v4) ^ (a1 + 2855))))();
}

void V3lNO(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
    v7 = a7 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1E3330EFC()
{
  LODWORD(STACK[0x848]) = v0 - v1 + 26;
  v4 = (*(v3 + 8 * (v2 + 4063)))();
  v5 = STACK[0x400];
  STACK[0x4B0] = v4;
  return (*(v5 + 8 * (((v4 == 0) * (((v2 - 4515) | 0x2000) ^ 0x242B)) ^ v2)))();
}

void sub_1E3330F7C()
{
  **(v1 + 8 * ((v3 - 4144) ^ 0xF7A)) = 538291947;
  **(v1 + 8 * (v3 - 7980)) = *v2;
  *(v0 + 8) = 16257999;
}

uint64_t sub_1E3330FD8()
{
  v5 = (v2 | 0x311) - 30;
  v6.i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v6.i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v7 = (((v2 | 0x311) - 4025) | 0x46u) - 1095 + v1;
  v8 = *(v4 + v7 - 15);
  v9 = *(v4 + v7 - 31);
  v10 = v0 + v7;
  *(v10 - 15) = veorq_s8(v8, v6);
  *(v10 - 31) = veorq_s8(v9, v6);
  LODWORD(v10) = ((v5 ^ 0x7FFFEC7B) & v1) != 32;
  return (*(v3 + 8 * (((2 * v10) | (32 * v10)) ^ v5)))();
}

void sub_1E33310A8()
{
  STACK[0x568] = 0;
  STACK[0x500] = *(v0 + 8 * (v1 - 6063));
  JUMPOUT(0x1E33B61E8);
}

uint64_t sub_1E33310E8@<X0>(int a1@<W8>)
{
  v4 = (a1 + 759503079) & 0x52BAF579;
  *(v2 - 224) = (a1 - 2140801677) ^ (914963389 * ((2 * ((v2 - 232) & 0x5F110898) - (v2 - 232) + 552531814) ^ 0xC12461D));
  (*(v3 + 8 * (a1 + 4071)))(v2 - 232);
  v5 = STACK[0x400];
  *(v1 + 112) = *(v2 - 232) ^ (v4 - 1232140833);
  v6 = STACK[0x978];
  STACK[0x7F8] = *(v5 + 8 * (v4 - 8669));
  return (*(v5 + 8 * ((222 * (v6 != 0)) ^ (v4 - 6597))))();
}

uint64_t sub_1E333121C@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  v8 = (v2 ^ v4 ^ v5) + v3;
  STACK[0xA30] = v8;
  *(a1 + v8) = ((a2 + 1) ^ v6) * (a2 + 18);
  return (*(v7 + 8 * (v2 | (4 * (v8 == 0)))))();
}

uint64_t sub_1E3331264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v55 = (a7 - 4584);
  v56 = *(v53 + 8 * (((v55 ^ 0xF41) * (a44 < 0x10)) ^ a7));
  return v56(a1, a2, a3, a4, v55, v55 ^ 0x1720, v56, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v54, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53);
}

uint64_t sub_1E33313AC@<X0>(int a1@<W8>)
{
  v2 = STACK[0x508];
  STACK[0x478] = *(v1 + 8 * a1);
  return (*(v1 + 8 * (((v2 == 0) * ((149 * ((a1 + 862410603) & 0xCC98BFEB ^ 0x17C8)) ^ 0x140)) ^ (a1 + 3851))))();
}

uint64_t sub_1E33313D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22)
{
  v25 = *(a22 + 40);
  v26 = a9 ^ 0x3AAD;
  v27 = (v23 + a21 + (a9 ^ 0x3AADu) - 1505084478);
  v25[15] = v27[15];
  v25[14] = v27[14];
  v25[13] = v27[13];
  v25[12] = v27[12];
  v25[11] = v27[11];
  v25[10] = v27[10];
  v25[9] = v27[9];
  v25[8] = v27[8];
  v25[7] = v27[7];
  v25[6] = v27[6];
  v25[5] = v27[5];
  v25[4] = v27[4];
  v25[3] = v27[3];
  v25[2] = v27[2];
  v25[1] = v27[1];
  *v25 = *v27;
  return (*(v24 + 8 * (((((v22 == 0) ^ (v26 - 3)) & 1) * ((v26 - 656102915) ^ 0xD8E4CF49)) ^ v26)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

void F21B5Tc5GK6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    v7 = a7 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1E3331620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, int a20)
{
  *a5 = 0;
  a19 = v21 - 1710126949 * ((&a19 & 0xD0939F21 | ~(&a19 | 0xD0939F21)) ^ 0x1D773B4E) - 934168436;
  v22 = (*(v20 + 8 * (v21 - 1410481882)))(&a19);
  return (*(v20 + 8 * (((a20 == 16257999) * ((v21 ^ (v21 + 2010)) + 9212)) ^ (v21 - 1410489432))))(v22);
}

uint64_t sub_1E333177C(uint64_t a1, unint64_t a2)
{
  *&STACK[0x240] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3D0] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x3E0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x3B0] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x3C0] = vdupq_n_s64(0xE79B7CAD81EAE601);
  *&STACK[0x3A0] = vdupq_n_s64(0x186483527E1519FEuLL);
  *&STACK[0x360] = vdupq_n_s64(0x518DC1691103FE2CuLL);
  *&STACK[0x370] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x340] = vdupq_n_s64(a2);
  *&STACK[0x350] = vdupq_n_s64(0xF9CB24FE88F58F70);
  *&STACK[0x320] = vdupq_n_s64(0xD8E8834EF9F28923);
  *&STACK[0x330] = vdupq_n_s64(0x4E2EF9620C1AEDB8uLL);
  *&STACK[0x300] = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  *&STACK[0x310] = vdupq_n_s64(0x2D4A72F74C223B2AuLL);
  *&STACK[0x380] = vdupq_n_s64(0x71C80D200006C20uLL);
  *&STACK[0x390] = vdupq_n_s64(0xF8C32E29FF588391);
  *&STACK[0x2E0] = vdupq_n_s64(0x9BDDB8F1D8DC304DLL);
  *&STACK[0x2F0] = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  *&STACK[0x2D0] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x230] = xmmword_1E4316E10;
  *&STACK[0x2C0] = vdupq_n_s64(0xAB3042D228875C41);
  return sub_1E3300014();
}

uint64_t sub_1E3331A8C@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  STACK[0x2B0] = v65;
  STACK[0x290] = a3 & 0xFFFFFFF8;
  v68 = a2 + a3 - a1;
  STACK[0x2A0] = v63;
  v69.i64[0] = v68 - 5;
  v69.i64[1] = v68 - 6;
  v70.i64[0] = v68 - 3;
  v70.i64[1] = v68 - 4;
  v71.i64[0] = v68 - 1;
  v71.i64[1] = v68 - 2;
  v72.i64[0] = v68 + ((v64 + 1336814895) & 0xB051CAF4) - 2663;
  v72.i64[1] = v68 - 8;
  v73 = vandq_s8(v72, *&STACK[0x3E0]);
  v74 = vandq_s8(v71, *&STACK[0x3E0]);
  v75 = vandq_s8(v70, *&STACK[0x3E0]);
  v76 = vandq_s8(v69, *&STACK[0x3E0]);
  v77 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v78 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v79 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v80 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v81 = vdupq_n_s64(0x38uLL);
  v82 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x3B0], v80), *&STACK[0x3A0]), vorrq_s8(vaddq_s64(v80, *&STACK[0x3D0]), *&STACK[0x3C0]));
  v83 = vorrq_s8(vaddq_s64(v77, *&STACK[0x3D0]), *&STACK[0x3C0]);
  v84 = vorrq_s8(vsubq_s64(*&STACK[0x3B0], v77), *&STACK[0x3A0]);
  v85 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x3B0], v79), *&STACK[0x3A0]), vorrq_s8(vaddq_s64(v79, *&STACK[0x3D0]), *&STACK[0x3C0]));
  v86 = vsubq_s64(*&STACK[0x370], vaddq_s64(v84, v83));
  v87 = vsubq_s64(*&STACK[0x370], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x3B0], v78), *&STACK[0x3A0]), vorrq_s8(vaddq_s64(v78, *&STACK[0x3D0]), *&STACK[0x3C0])));
  v88 = veorq_s8(v87, *&STACK[0x360]);
  v89 = veorq_s8(v86, *&STACK[0x360]);
  v90 = veorq_s8(v86, *&STACK[0x350]);
  v91 = veorq_s8(v87, *&STACK[0x350]);
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v90), *&STACK[0x340]);
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v91), *&STACK[0x340]);
  v94 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v95 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v96 = veorq_s8(v92, v94);
  v97 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v96);
  v99 = vaddq_s64(v97, v95);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v99, v99), *&STACK[0x330]), v99), *&STACK[0x320]), *&STACK[0x310]);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v98, v98), *&STACK[0x330]), v98), *&STACK[0x320]), *&STACK[0x310]);
  v102 = vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL);
  v103 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v104 = veorq_s8(v100, v102);
  v105 = vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v104);
  v107 = veorq_s8(vaddq_s64(v105, v103), *&STACK[0x300]);
  v108 = veorq_s8(v106, *&STACK[0x300]);
  v109 = vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL);
  v110 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v111 = veorq_s8(v107, v109);
  v112 = vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL);
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v111);
  v114 = veorq_s8(vaddq_s64(v112, v110), *&STACK[0x2F0]);
  v115 = veorq_s8(v113, *&STACK[0x2F0]);
  v116 = vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL);
  v117 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v118 = veorq_s8(v114, v116);
  v119 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v118);
  v121 = vaddq_s64(v119, v117);
  v122 = veorq_s8(v121, *&STACK[0x390]);
  v123 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v121, v67), *&STACK[0x380]), v122), vandq_s8(v122, v67));
  v124 = veorq_s8(v120, *&STACK[0x390]);
  v125 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v120, v67), *&STACK[0x380]), v124), vandq_s8(v124, v67)), *&STACK[0x2E0]);
  v126 = veorq_s8(v123, *&STACK[0x2E0]);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v128 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v129 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127), *&STACK[0x2D0]);
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v128), *&STACK[0x2D0]);
  v131 = vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL);
  v132 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v133 = veorq_s8(v129, v131);
  v134 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v135 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v136 = vsubq_s64(*&STACK[0x370], v85);
  v173.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v135, v133), *&STACK[0x2C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v69, 3uLL), v81)));
  v173.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v134, v132), *&STACK[0x2C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v70, 3uLL), v81)));
  v137 = veorq_s8(v136, *&STACK[0x360]);
  v138 = veorq_s8(v136, *&STACK[0x350]);
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138), *&STACK[0x340]);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140);
  v142 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v141, v141), *&STACK[0x330]), v141), *&STACK[0x320]), *&STACK[0x310]);
  v143 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v144 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143), *&STACK[0x300]);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v146 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145), *&STACK[0x2F0]);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147);
  v149 = veorq_s8(v148, *&STACK[0x390]);
  v150 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v148, v67), *&STACK[0x380]), v149), vandq_s8(v149, v67)), *&STACK[0x2E0]);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), *&STACK[0x2D0]);
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL)));
  v154 = vsubq_s64(*&STACK[0x370], v82);
  v173.val[0] = vshlq_u64(veorq_s8(v153, *&STACK[0x2C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v71, 3uLL), v81)));
  v155 = veorq_s8(v154, *&STACK[0x360]);
  v156 = veorq_s8(v154, *&STACK[0x350]);
  v157 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v156), *&STACK[0x340]);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158);
  v160 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v159, v159), *&STACK[0x330]), v159), *&STACK[0x320]), *&STACK[0x310]);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161), *&STACK[0x300]);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), *&STACK[0x2F0]);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165);
  v167 = veorq_s8(v166, *&STACK[0x390]);
  v168 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v166, v67), *&STACK[0x380]), v167), vandq_s8(v167, v67)), *&STACK[0x2E0]);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169), *&STACK[0x2D0]);
  v173.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL))), *&STACK[0x2C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v72, 3uLL), v81)));
  *(a62 + v62 + v63 + a3 - a1) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v173, v66)), *(v68 - 8));
  v171 = a1 - (a3 & 0xFFFFFFF8) == -8;
  return (*(STACK[0x400] + 8 * ((v171 | (2 * v171)) ^ v64)))();
}

uint64_t sub_1E333208C()
{
  *v1 = 96;
  *(v1 + 4) = 0x817CD8C582DA5774;
  *(v1 + 12) = 0x6B1B3F6D9C6DE02BLL;
  *(v1 + 20) = 1333359008;
  *(v1 + 24) = 4;
  *(v1 + 28) = 0x70CC0723262192B4;
  return (*(v2 + 8 * ((v0 + 3344) ^ (2 * (*(v1 + 40) != 0)))))();
}

uint64_t sub_1E333210C@<X0>(int a1@<W8>)
{
  (*(v3 + 8 * (a1 ^ v1)))();
  *(v2 + 24) = 0;
  return sub_1E3303638();
}

void NQ7ggq70Owbvqj8qbExsJ5Hw()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 + dword_1ECF43330) ^ 0xDF)) ^ byte_1E4307CA0[byte_1E42FD630[(-85 * ((dword_1ECF432C0 + dword_1ECF43330) ^ 0xDF))] ^ 0x80]) + 102);
  v1 = -85 * ((dword_1ECF432C0 + *v0) ^ 0xDF);
  v2 = *(&off_1F5DB1610 + (*(off_1F5DB16B8 + (*(off_1F5DB1D28 + v1 - 8) ^ 0x6Du) - 8) ^ v1) + 184);
  v3 = *v2 - *v0 - &v5;
  *v0 = (2054362027 * v3) ^ 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * (((v6 | 0x96B1385F) - v6 + (v6 & 0x694EC7A0)) ^ 0xA4AA63CF);
  LOBYTE(v2) = -85 * (*v0 ^ 0xDF ^ *v2);
  v4 = *(&off_1F5DB1610 + ((-85 * (dword_1ECF43330 ^ 0xDF ^ dword_1ECF432C0)) ^ byte_1E43079A0[byte_1E42FD430[(-85 * (dword_1ECF43330 ^ 0xDF ^ dword_1ECF432C0))] ^ 0x21]) + 150) - 8;
  (*&v4[8 * (*(off_1F5DB1E80 + (*(off_1F5DB1BE0 + v2) ^ 0x2Au) - 8) ^ v2) + 75712])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1E333245C@<X0>(unsigned __int16 a1@<W8>)
{
  v4 = (((v2 ^ 0xFFEC) + 20) ^ ((v2 ^ 0xFA21) + 1503) ^ ((v2 ^ 0xE6C6) + 4634 + ((v1 + 2475) ^ 0x1507))) - 2697;
  v5 = v4;
  v6 = (v4 >> 2) < 0x49Bu;
  if (a1 > 0xED93u == v6)
  {
    v6 = v5 > (a1 + 4716);
  }

  return (*(v3 + 8 * ((10902 * v6) ^ v1)))();
}

void sub_1E33324F0(_DWORD *a1)
{
  v1 = *a1 + 1358806181 * (((a1 | 0x3472B3FC) - (a1 & 0x3472B3FC)) ^ 0xB5DDF7F);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1E33325E0@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v8 = a2 | 0x1048;
  v9 = (v8 - 1518416622) & 0x5A8137F7;
  (*(v6 + 8 * (v8 + 4816)))(a1, *(v7 + 8 * (v8 - 4632)));
  v10 = *v5;
  v11 = *(*(v7 + 8 * (v9 ^ 0x1697)) - 4);
  a4 = v9 + 1710126949 * ((((2 * &a4) | 0x8449EBE6) - &a4 + 1037765133) ^ 0xF03FAE63) + 2619;
  a5 = v11;
  v12 = (*(v6 + 8 * (v9 + 3530)))(&a4);
  return (*(v6 + 8 * (((v10 != 0x18487EF8CB592F80) * (((v9 + 1249003530) & 0xB58DBFC1) - 4055)) ^ v9)))(v12);
}

uint64_t sub_1E3332624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, unsigned int a13, unsigned int a14, uint64_t a15, uint64_t a16)
{
  v21 = 1875091903 * (((&a12 ^ 0x79F8533E) + 836021255 - 2 * ((&a12 ^ 0x79F8533E) & 0x31D4AC07)) ^ 0x7E597CBA);
  a15 = a11;
  a13 = (v17 ^ 0x3F3DB7BA) + ((2 * v17) & 0x7E7B6F74) - 522256656 + v21;
  a14 = v21 + (v19 ^ 0x9D508B17) + 1082;
  (*(v18 + 8 * (v19 ^ 0x9D50B748)))(&a12);
  v22 = *(v16 + 8);
  v23 = 1824088897 * (((&a12 | 0x95F7DA19) - &a12 + (&a12 & 0x6A0825E0)) ^ 0xCD9E097B);
  a14 = (*v16 ^ 0x7EA6FF8E) - v23 + (((v19 ^ 0x9D508B15) - 45226708) & (2 * *v16)) - 805442820;
  a12 = (v19 ^ 0x9D508B17) - 2885 + v23;
  a15 = v22;
  a16 = a11;
  (*(v18 + 8 * ((v19 ^ 0x9D508B17) + 2989)))(&a12);
  v24 = *(v16 + 24);
  v25 = 1824088897 * ((2 * ((&a12 ^ 0x36859D1A) & 0x5B1A6010) - (&a12 ^ 0x36859D1A) - 1528455189) ^ 0xCA09D193);
  a14 = (*(v16 + 16) ^ 0x6FB7FBCE) - v25 + ((2 * *(v16 + 16)) & 0xDF6FF79C) - 554897732;
  a12 = (v19 ^ 0x9D508B17) - 2885 + v25;
  a15 = v24;
  a16 = a11;
  v26 = (*(v18 + 8 * (v19 ^ 0x9D50B77A)))(&a12);
  return (*(v18 + 8 * ((1882 * (a13 == v20)) ^ v19 ^ 0x9D508B17)))(v26);
}

uint64_t sub_1E33328DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 + v2 - 1 - 31);
  v6 = a1 + v2 - 1;
  *(v6 - 15) = *(a2 + v2 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((51 * (((1178 * ((v3 + 1645879281) & 0x9DE5DFFD ^ 0x17DB)) ^ 0x914) != ((((v3 + 1645879281) & 0x9DE5DFFD) - 6137) & v2))) ^ (v3 + 1645879281) & 0x9DE5DFFD)))();
}

uint64_t sub_1E3332960()
{
  STACK[0xAD8] = v1;
  v3 = STACK[0x8B8];
  STACK[0xAE0] = STACK[0x8B8];
  return (*(v2 + 8 * (((v1 - v3 > 9) * (((v0 + 946420354) & 0xC796B6BC) + 1932)) ^ v0)))();
}

uint64_t sub_1E33329B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unsigned int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v23 = (v22 ^ 0xD1E74FD2) * v20 + 768039326;
  v24 = (v23 ^ 0xD6C97D99) & (2 * (v23 & (v21 - 427218400))) ^ v23 & (v21 - 427218400);
  v25 = ((2 * (v23 ^ 0x9ED9FCB9)) ^ 0xF0A17A40) & (v23 ^ 0x9ED9FCB9) ^ (2 * (v23 ^ 0x9ED9FCB9)) & 0x7850BD20;
  v26 = (v25 ^ 0x30108900) & (4 * v24) ^ v24;
  v27 = ((4 * (v25 ^ 0x8508520)) ^ 0xE142F480) & (v25 ^ 0x8508520) ^ (4 * (v25 ^ 0x8508520)) & 0x7850BD20;
  v28 = (v27 ^ 0x6040B400) & (16 * v26) ^ v26;
  v29 = ((16 * (v27 ^ 0x18100920)) ^ 0x850BD200) & (v27 ^ 0x18100920) ^ (16 * (v27 ^ 0x18100920)) & 0x7850BD20;
  v30 = v28 ^ 0x7850BD20 ^ (v29 ^ 0x9000) & (v28 << 8);
  v31 = v23 ^ (2 * ((v30 << 16) & 0x78500000 ^ v30 ^ ((v30 << 16) ^ 0x3D200000) & (((v29 ^ 0x78502D20) << 8) & 0x78500000 ^ 0x28400000 ^ (((v29 ^ 0x78502D20) << 8) ^ 0x50BD0000) & (v29 ^ 0x78502D20))));
  LODWORD(a17) = (a9 - 4075) | 0x402;
  v33 = v31 == a17 + 1713911591 || ((((a9 - 3177) | 0x1C9) - 1516) & v31) != 9;
  return (*(a2 + 8 * ((92 * v33) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1E3332C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v6 + 8 * ((42 * (((((v5 ^ 0x825) + 3075) ^ (STACK[0x220] < 0x10)) & 1) == 0)) ^ v5));
  STACK[0x210] = v4;
  return v7(a1, a2, a3, a4, 0);
}

uint64_t sub_1E3332C5C(_DWORD *a1)
{
  v1 = 2048652491 * ((-871686245 - (a1 | 0xCC0B1F9B) + (a1 | 0x33F4E064)) ^ 0x82457761);
  v2 = a1[1] + v1;
  return (*(*(&off_1F5DB1610 + (v2 ^ 0x1D2F)) + (((*a1 - v1 - 16258000 < 0x63) * (((v2 - 6712) ^ 0x22FA) + ((v2 - 6712) | 0x44A) - 9962)) ^ v2) - 1))();
}

uint64_t sub_1E3332D78@<X0>(int a1@<W8>)
{
  STACK[0x9C8] = v1;
  v4 = STACK[0x6A8];
  STACK[0x9D0] = STACK[0x6A8];
  return (*(v3 + 8 * (((v1 - v4 > 9) * (v2 + a1 - 1624 + 524)) ^ a1)))();
}

uint64_t sub_1E3332E00()
{
  v2 = (*(v1 + 8 * (v0 + 7578)))(128, 0x10800400FED9166);
  STACK[0x830] = v2;
  return (*(v1 + 8 * (v0 ^ (32 * ((((v0 + 1226) ^ (v2 == 0)) & 1) == 0)))))();
}

uint64_t sub_1E3333008(uint64_t a1)
{
  v4 = (v1 - 704908296) & 0x2A03FBDF;
  *v7 = a1;
  *v8 = v11;
  v5 = (v4 + 4181) ^ 0x9A7;
  v14 = (v4 + 5377) ^ (((&v12 - 888649298 - 2 * (&v12 & 0xCB0849AE)) ^ 0x93619ACC) * v3);
  v13 = v10;
  (*(v2 + 8 * (v4 + 6643)))(&v12);
  v13 = v9;
  v14 = (v5 + 3665) ^ ((((&v12 | 0xDB62037A) - &v12 + (&v12 & 0x249DFC80)) ^ 0x830BD018) * v3);
  (*(v2 + 8 * (v5 + 4931)))(&v12);
  return 0;
}

uint64_t sub_1E3333144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v8 = (v6 - 2043) | 0x102;
  *a6 = v12 >> ((((v6 + 5) | 2) ^ 0x2C) + 6);
  v9 = ((v8 ^ 0xA2C) - 1811124949) & 0x6BF387DE;
  v15 = v13;
  v16 = ((v8 ^ 0xA2C) + 4252) ^ (1824088897 * (((&v14 | 0xEED438A6) - &v14 + (&v14 & 0x112BC758)) ^ 0xB6BDEBC4));
  (*(v7 + 8 * ((v8 ^ 0xA2C) + 5518)))(&v14);
  v16 = (v9 + 7058) ^ (1824088897 * ((2 * (&v14 & 0x56ECA748) - &v14 - 1458349904) ^ 0xF17A8BD2));
  v15 = v11;
  (*(v7 + 8 * (v9 | 0x2084)))(&v14);
  return 0;
}

uint64_t sub_1E33350B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  *a4 = 0;
  *a5 = 0;
  a15 = 476323082 - 1710126949 * ((1056416897 - (&a15 | 0x3EF7A481) + (&a15 | 0xC1085B7E)) ^ 0xF31300EE);
  v17 = (*(v16 + 77088))(&a15);
  return (*(v16 + 8 * ((102 * (a16 == 16257999)) ^ 0x1832u)))(v17);
}

uint64_t sub_1E3335210(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v29 = a14 - 8;
  v30.i64[0] = a15 + v29 - 5;
  v30.i64[1] = a15 + v29 - 6;
  v31.i64[0] = a15 + v29 - 3;
  v31.i64[1] = a15 + v29 - 4;
  v32.i64[0] = a15 + v29 - 1;
  v32.i64[1] = a15 + v29 - 2;
  v33.i64[0] = a15 + v29 + v16;
  v33.i64[1] = a15 + v29 - 8;
  v34 = vandq_s8(v33, a1);
  v35 = vandq_s8(v32, a1);
  v36 = vandq_s8(v31, a1);
  v37 = vandq_s8(v30, a1);
  v38 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v42 = vaddq_s64(v39, a3);
  v43 = vaddq_s64(v38, a3);
  v44 = veorq_s8(v43, a4);
  v45 = veorq_s8(v42, a4);
  v46 = veorq_s8(v42, a5);
  v47 = veorq_s8(v43, a5);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v47);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v46);
  v50 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v48, a6), vorrq_s8(v48, a7)), a7), a8);
  v51 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v49, a6), vorrq_s8(v49, a7)), a7), a8);
  v52 = veorq_s8(v51, vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL));
  v53 = veorq_s8(v50, vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL));
  v54 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v52), v19);
  v55 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v53), v19);
  v56 = vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL);
  v57 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v58 = veorq_s8(v54, v56);
  v59 = vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v58);
  v61 = vaddq_s64(v59, v57);
  v62 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v60, v20), vorrq_s8(v60, v21)), v21), v22);
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v61, v20), vorrq_s8(v61, v21)), v21), v22);
  v64 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v65 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v66 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v64), v23);
  v67 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v65), v23);
  v68 = vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL);
  v69 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v70 = veorq_s8(v66, v68);
  v71 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v72 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v70);
  v73 = veorq_s8(vaddq_s64(v71, v69), v24);
  v74 = veorq_s8(v72, v24);
  v75 = vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL);
  v76 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v77 = veorq_s8(v73, v75);
  v78 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v79 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v77);
  v80 = veorq_s8(vaddq_s64(v78, v76), v25);
  v81 = veorq_s8(v79, v25);
  v82 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v83 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v84 = veorq_s8(v80, v82);
  v85 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v86 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v87 = vaddq_s64(v40, a3);
  v120.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v86, v84), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a2)));
  v120.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v85, v83), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a2)));
  v88 = veorq_s8(v87, a4);
  v89 = veorq_s8(v87, a5);
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v89);
  v91 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v90, a6), vorrq_s8(v90, a7)), a7), a8);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92), v19);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v95, v20), vorrq_s8(v95, v21)), v21), v22);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), v23);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), v24);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v25);
  v103 = vaddq_s64(v41, a3);
  v120.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a2)));
  v104 = veorq_s8(v103, a4);
  v105 = veorq_s8(v103, a5);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v106, a6), vorrq_s8(v106, a7)), a7), a8);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), v19);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v111, v20), vorrq_s8(v111, v21)), v21), v22);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v23);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v24);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v25);
  v120.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a2)));
  *(a16 + v29) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*v33.i64[1]), v27), *&vqtbl4q_s8(v120, v28)));
  return (*(v18 + 8 * (((a13 == v29) * v17) ^ a11)))();
}

uint64_t sub_1E3335218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  STACK[0x308] = a6;
  v8 = ((2 * *(a6 + 16)) & 0xFBD5FD7E) + (*(a6 + 16) ^ 0xFDEAFEBF);
  v9 = (v6 + 1401415487) & 0xAC77FF61;
  LODWORD(STACK[0x4C4]) = v8;
  LODWORD(STACK[0x5B0]) = v9 - 34932865;
  return (*(v7 + 8 * ((49 * (v8 != v9 - 34932865)) ^ v6)))();
}

uint64_t sub_1E3335304(int8x16_t a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v29 = a7 - 8;
  v30 = a8 - 8;
  v31.i64[0] = v30 + v19 - 5;
  v31.i64[1] = v30 + v19 + v15;
  v32.i64[0] = v30 + v19 - 1;
  v32.i64[1] = v30 + v19 - 2;
  v33.i64[0] = v30 + v19 - 3;
  v33.i64[1] = v30 + v19 - 4;
  v34.i64[0] = v30 + v19 - 7;
  STACK[0x3E0] = *(v30 + v19 - 8);
  v34.i64[1] = v30 + v19 - 8;
  v35.i64[0] = v29 + v19 + 3;
  v35.i64[1] = v29 + v19 + 2;
  v36.i64[0] = v29 + v19 + 7;
  v36.i64[1] = v29 + v19 + 6;
  v37.i64[0] = v29 + v19 + 9;
  v37.i64[1] = v29 + v19 + 8;
  v38.i64[0] = v29 + v19 + 5;
  v38.i64[1] = v29 + v19 + 4;
  v39 = vandq_s8(v34, a1);
  v40 = vandq_s8(v33, a1);
  v41 = vandq_s8(v32, a1);
  v42 = vandq_s8(v31, a1);
  v43 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v44 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v45 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v47 = vaddq_s64(vsubq_s64(v46, vandq_s8(vaddq_s64(vaddq_s64(v46, v46), *&STACK[0x3C0]), *&STACK[0x3B0])), *&STACK[0x3A0]);
  v48 = vaddq_s64(vsubq_s64(v45, vandq_s8(vaddq_s64(vaddq_s64(v45, v45), *&STACK[0x3C0]), *&STACK[0x3B0])), *&STACK[0x3A0]);
  v49 = vaddq_s64(vsubq_s64(v44, vandq_s8(vaddq_s64(vaddq_s64(v44, v44), *&STACK[0x3C0]), *&STACK[0x3B0])), *&STACK[0x3A0]);
  v50 = vaddq_s64(vsubq_s64(v43, vandq_s8(vaddq_s64(vaddq_s64(v43, v43), *&STACK[0x3C0]), *&STACK[0x3B0])), *&STACK[0x3A0]);
  v51 = veorq_s8(v50, *&STACK[0x390]);
  v52 = veorq_s8(v49, *&STACK[0x390]);
  v53 = veorq_s8(v48, *&STACK[0x390]);
  v54 = veorq_s8(v47, *&STACK[0x390]);
  v55 = veorq_s8(v47, *&STACK[0x380]);
  v56 = veorq_s8(v48, *&STACK[0x380]);
  v57 = veorq_s8(v49, *&STACK[0x380]);
  v58 = veorq_s8(v50, *&STACK[0x380]);
  v59 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v55), *&STACK[0x370]);
  v60 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v56), *&STACK[0x370]);
  v61 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v57), *&STACK[0x370]);
  v62 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v58), *&STACK[0x370]);
  v63 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v64 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v65 = vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL);
  v66 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v67 = veorq_s8(v61, v65);
  v68 = veorq_s8(v60, v64);
  v69 = veorq_s8(v59, v63);
  v70 = vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL);
  v71 = vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL);
  v72 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v69);
  v74 = vaddq_s64(v72, v68);
  v75 = vaddq_s64(v71, v67);
  v76 = vaddq_s64(v70, v66);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v76, v76), *&STACK[0x360]), v76), *&STACK[0x350]), *&STACK[0x340]);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v75, v75), *&STACK[0x360]), v75), *&STACK[0x350]), *&STACK[0x340]);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v74, v74), *&STACK[0x360]), v74), *&STACK[0x350]), *&STACK[0x340]);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v73, v73), *&STACK[0x360]), v73), *&STACK[0x350]), *&STACK[0x340]);
  v81 = vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL);
  v82 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v83 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v84 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v85 = veorq_s8(v79, v83);
  v86 = veorq_s8(v78, v82);
  v87 = veorq_s8(v77, v81);
  v88 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v89 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v90 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v87);
  v92 = veorq_s8(vaddq_s64(v88, v84), *&STACK[0x330]);
  v93 = veorq_s8(vaddq_s64(v89, v85), *&STACK[0x330]);
  v94 = veorq_s8(vaddq_s64(v90, v86), *&STACK[0x330]);
  v95 = veorq_s8(v91, *&STACK[0x330]);
  v96 = vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL);
  v97 = vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL);
  v98 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v99 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v100 = veorq_s8(v94, v98);
  v101 = veorq_s8(v93, v97);
  v102 = veorq_s8(v92, v96);
  v103 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v104 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v105 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v102);
  v107 = vaddq_s64(v105, v101);
  v108 = vaddq_s64(v104, v100);
  v109 = vaddq_s64(v103, v99);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(v109, vandq_s8(vaddq_s64(v109, v109), *&STACK[0x320])), *&STACK[0x310]), *&STACK[0x300]);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(v108, vandq_s8(vaddq_s64(v108, v108), *&STACK[0x320])), *&STACK[0x310]), *&STACK[0x300]);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(v107, vandq_s8(vaddq_s64(v107, v107), *&STACK[0x320])), *&STACK[0x310]), *&STACK[0x300]);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(v106, vandq_s8(vaddq_s64(v106, v106), *&STACK[0x320])), *&STACK[0x310]), *&STACK[0x300]);
  v114 = vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL);
  v115 = vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL);
  v116 = vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL);
  v117 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v118 = veorq_s8(v112, v116);
  v119 = veorq_s8(v111, v115);
  v120 = veorq_s8(v110, v114);
  v121 = vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL);
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v120);
  v125 = veorq_s8(vaddq_s64(v121, v117), *&STACK[0x2F0]);
  v126 = veorq_s8(vaddq_s64(v122, v118), *&STACK[0x2F0]);
  v127 = veorq_s8(vaddq_s64(v123, v119), *&STACK[0x2F0]);
  v128 = veorq_s8(v124, *&STACK[0x2F0]);
  v129 = vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v131 = vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL);
  v132 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v133 = veorq_s8(v127, v131);
  v134 = veorq_s8(v126, v130);
  v135 = veorq_s8(v125, v129);
  v136 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v137 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v135);
  v140 = veorq_s8(vaddq_s64(v136, v132), *&STACK[0x2E0]);
  v141 = veorq_s8(vaddq_s64(v137, v133), *&STACK[0x2E0]);
  v142 = veorq_s8(vaddq_s64(v138, v134), *&STACK[0x2E0]);
  v143 = veorq_s8(v139, *&STACK[0x2E0]);
  v144 = vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL);
  v145 = vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL);
  v146 = vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL);
  v147 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), veorq_s8(v140, v144));
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), veorq_s8(v141, v145));
  v150 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), veorq_s8(v142, v146));
  v151 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v147);
  v152 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v151, v151), *&STACK[0x2D0]), v151), *&STACK[0x2C0]), *&STACK[0x2B0]);
  v153 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v150, v150), *&STACK[0x2D0]), v150), *&STACK[0x2C0]), *&STACK[0x2B0]);
  v154 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v149, v149), *&STACK[0x2D0]), v149), *&STACK[0x2C0]), *&STACK[0x2B0]);
  *&STACK[0x3D0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v148, v148), *&STACK[0x2D0]), v148), *&STACK[0x2C0]), *&STACK[0x2B0]), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a2)));
  v155 = vshlq_u64(v154, vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a2)));
  v156 = vshlq_u64(v153, vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a2)));
  v157 = vshlq_u64(v152, vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a2)));
  v158 = vandq_s8(v38, a1);
  v159 = vandq_s8(v37, a1);
  v160 = vandq_s8(v36, a1);
  v161 = vandq_s8(v35, a1);
  v162 = vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL);
  v163 = vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL);
  v164 = vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL);
  v165 = vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL);
  v166 = vaddq_s64(v165, *&STACK[0x2A0]);
  v167 = vaddq_s64(v164, *&STACK[0x2A0]);
  v168 = vaddq_s64(v163, *&STACK[0x2A0]);
  v169 = vsubq_s64(*&STACK[0x290], v165);
  v170 = vsubq_s64(*&STACK[0x290], v164);
  v171 = vsubq_s64(*&STACK[0x290], v163);
  v172 = vbslq_s8(*&STACK[0x280], vsubq_s64(*&STACK[0x290], v162), vaddq_s64(v162, *&STACK[0x2A0]));
  v173 = vbslq_s8(*&STACK[0x280], v171, v168);
  v174 = vbslq_s8(*&STACK[0x280], v170, v167);
  v175 = vbslq_s8(*&STACK[0x280], v169, v166);
  v176 = veorq_s8(v173, v28);
  v177 = veorq_s8(v172, v28);
  v178 = veorq_s8(v172, v21);
  v179 = veorq_s8(v173, v21);
  v180 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178), v22);
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v179), v22);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v183 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v184 = vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL);
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v183);
  v186 = veorq_s8(vaddq_s64(v184, v182), v23);
  v187 = veorq_s8(v185, v23);
  v188 = vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL);
  v189 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v190 = veorq_s8(v186, v188);
  v191 = vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL);
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v190);
  v193 = vaddq_s64(v191, v189);
  v194 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v192, v24), vorrq_s8(v192, v25)), v25), v26);
  v195 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v193, v24), vorrq_s8(v193, v25)), v25), v26);
  v196 = veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v197 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v198 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v197);
  v199 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v196);
  v200 = vsubq_s64(vorrq_s8(vaddq_s64(v199, v199), v27), v199);
  v201 = vdupq_n_s64(a10);
  v202 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v198, v198), v27), v198), v201);
  v203 = vdupq_n_s64(v17);
  v204 = veorq_s8(vaddq_s64(v200, v201), v203);
  v205 = veorq_s8(v202, v203);
  v206 = vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL);
  v207 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v208 = veorq_s8(v204, v206);
  v209 = vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL);
  v210 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL), v208);
  v211 = vaddq_s64(v209, v207);
  v212 = vdupq_n_s64(v18);
  v213 = vsubq_s64(v210, vandq_s8(vaddq_s64(v210, v210), v212));
  v214 = vdupq_n_s64(v20);
  v215 = vaddq_s64(vsubq_s64(v211, vandq_s8(vaddq_s64(v211, v211), v212)), v214);
  v216 = vdupq_n_s64(v11);
  v217 = veorq_s8(v215, v216);
  v218 = veorq_s8(vaddq_s64(v213, v214), v216);
  v219 = veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL));
  v220 = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v221 = vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL);
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v220);
  v223 = vaddq_s64(v221, v219);
  v224 = vdupq_n_s64(v12);
  v225 = vdupq_n_s64(v13);
  v226 = vaddq_s64(vsubq_s64(vorrq_s8(v222, v224), vorrq_s8(v222, v225)), v225);
  v227 = vdupq_n_s64(v14);
  v228 = veorq_s8(v226, v227);
  v229 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v223, v224), vorrq_s8(v223, v225)), v225), v227);
  v230 = vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL);
  v231 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL)));
  v232 = vdupq_n_s64(0xAB3042D228875C41);
  v233 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), veorq_s8(v228, v230)), v232), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), a2)));
  v269.val[3] = veorq_s8(vshlq_u64(veorq_s8(v231, v232), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), a2))), v157);
  v269.val[1] = veorq_s8(v233, v156);
  v234 = veorq_s8(v174, v28);
  v235 = veorq_s8(v174, v21);
  v236 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v235), v22);
  v237 = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL));
  v238 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), v237), v23);
  v239 = veorq_s8(v238, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL));
  v240 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v238, 0x38uLL), v238, 8uLL), v239);
  v241 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v240, v24), vorrq_s8(v240, v25)), v25), v26);
  v242 = veorq_s8(v241, vsraq_n_u64(vshlq_n_s64(v239, 3uLL), v239, 0x3DuLL));
  v243 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), v242);
  v244 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v243, v243), v27), v243), v201), v203);
  v245 = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL));
  v246 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v245);
  v247 = veorq_s8(vaddq_s64(vsubq_s64(v246, vandq_s8(vaddq_s64(v246, v246), v212)), v214), v216);
  v248 = veorq_s8(v247, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL));
  v249 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v248);
  v250 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v249, v224), vorrq_s8(v249, v225)), v225), v227);
  v269.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL), veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL))), v232), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), a2))), v155);
  v251 = veorq_s8(v175, v28);
  v252 = veorq_s8(v175, v21);
  v253 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251, 0x38uLL), v251, 8uLL), v252), v22);
  v254 = veorq_s8(v253, vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL));
  v255 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v253, 0x38uLL), v253, 8uLL), v254), v23);
  v256 = veorq_s8(v255, vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL));
  v257 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL), v256);
  v258 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v257, v24), vorrq_s8(v257, v25)), v25), v26);
  v259 = veorq_s8(v258, vsraq_n_u64(vshlq_n_s64(v256, 3uLL), v256, 0x3DuLL));
  v260 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v258, 0x38uLL), v258, 8uLL), v259);
  v261 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v260, v260), v27), v260), v201), v203);
  v262 = veorq_s8(v261, vsraq_n_u64(vshlq_n_s64(v259, 3uLL), v259, 0x3DuLL));
  v263 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL), v262);
  v264 = veorq_s8(vaddq_s64(vsubq_s64(v263, vandq_s8(vaddq_s64(v263, v263), v212)), v214), v216);
  v265 = veorq_s8(v264, vsraq_n_u64(vshlq_n_s64(v262, 3uLL), v262, 0x3DuLL));
  v266 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL), v265);
  v267 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v266, v224), vorrq_s8(v266, v225)), v225), v227);
  v269.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v267, 0x38uLL), v267, 8uLL), veorq_s8(v267, vsraq_n_u64(vshlq_n_s64(v265, 3uLL), v265, 0x3DuLL))), v232), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), a2))), *&STACK[0x3D0]);
  *(v29 + v19 + 2) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v269, *&STACK[0x270])), STACK[0x3E0]);
  return (*(STACK[0x400] + 8 * (((a6 == -8) * v16) ^ v10)))();
}

uint64_t sub_1E3335314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v29 = 1875091903 * (((v22 | 0xED180485) - (v22 & 0xED180485)) ^ 0xDB6D8706);
  a20 = a15;
  a18 = (v27 ^ 0xE2BEFEBA) + ((2 * v27) & 0xC57DFD74) + 1029552112 + v29;
  LODWORD(a19) = v21 + 3707 + v29;
  (*(v28 + 8 * (v21 ^ 0x2A1C)))(&a17);
  v30 = 956911519 * ((2 * (v22 & 0x6DD48E8248103740) - v22 - 0x6DD48E8248103748) ^ 0xD71D04A15D7EB8BDLL);
  a17 = (v21 - 2995) ^ v30;
  a19 = v26 + v30 - ((((v21 + 14910) & 0x3FFEu) + 1464 + 0x39AD4E2AD03EB1F2) & (2 * v26)) - 0x632958EA97E09F34;
  a20 = a15;
  (*(v28 + 8 * (v21 ^ 0x2ACE)))(&a17);
  v31 = 1875091903 * ((v22 + 114971588 - 2 * (v22 & 0x6DA53C4)) ^ 0x30AFD047);
  a20 = a15;
  a18 = (v25 ^ 0x297DB6AB) + ((2 * v25) & 0x52FB6D56) - 157351937 + v31;
  LODWORD(a19) = v21 + 3707 + v31;
  (*(v28 + 8 * (v21 + 5628)))(&a17);
  v32 = 1824088897 * ((((2 * v22) | 0x326ABCE4) - v22 + 1724555662) ^ 0xC15C8D10);
  a20 = v23;
  a21 = a15;
  LODWORD(a19) = (v24 ^ 0xFEAEFFEA) + ((2 * v24) & 0xFD5DFFD4) - v32 + 1341516448;
  a17 = v32 + v21 - 260;
  v33 = (*(v28 + 8 * (v21 + 5614)))(&a17);
  return (*(v28 + 8 * ((11388 * (a18 == 16257999)) ^ v21)))(v33);
}

uint64_t sub_1E33355A8(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  v4 = (*(v3 + 8 * (v2 ^ 0x6B4u)))(16, 0x20040A4A59CD2) == 0;
  return (*(v3 + 8 * ((v4 * ((((v2 - 1231852860) ^ 0xB6939A11) - 2554) ^ (v2 - 1231852860) & 0x496C7FFF)) ^ v2)))();
}

uint64_t sub_1E3335624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, int a14, char a15, _BYTE *a16, uint64_t a17, int a18, unsigned int a19, char *a20, char *a21, _BYTE *a22)
{
  a20 = &a12;
  a22 = a16;
  LODWORD(a21) = v22 + 956911519 * (((&a18 | 0xEF0FA4FA) - (&a18 & 0xEF0FA4FA)) ^ 0x59ED4FF) + 4299;
  (*(v24 + 8 * (v22 + 4633)))(&a18);
  a19 = (v22 - 1761) ^ (33731311 * (&a18 ^ 0x39F6CA23));
  a20 = a16;
  a21 = &a15;
  (*(v24 + 8 * (v22 + 4588)))(&a18);
  LODWORD(a21) = v22 - 2008441969 * ((2 * ((&a18 ^ 0x74A7FA33) & 0x31ECEB81) - (&a18 ^ 0x74A7FA33) + 1309873274) ^ 0x722DBA47) + 672;
  a20 = a16;
  v25 = (*(v24 + 8 * (v22 ^ 0x36E6)))(&a18);
  return (*(v24 + 8 * (((a18 == v23) * (v22 ^ 0x13C3)) ^ v22)))(v25);
}

uint64_t sub_1E3335778()
{
  v4 = 176 * (v2 ^ 0x14A9);
  v5 = (((v0 - v1 + 533286816) ^ 0x5AA8E0FB) - 1164029821) ^ (v0 - v1 + 533286816) ^ (((v0 - v1 + 533286816) ^ 0x5E4D9975) - 1099224819) ^ (((v0 - v1 + 533286816) ^ 0x7BCFFFFB) - 1678159997) ^ (((5 * ((v4 - 2039067749) & 0x7989BFCF ^ 0x1558)) ^ 0x80D57554) + ((v0 - v1 + 533286816) ^ 0x60E3C9F3));
  LODWORD(STACK[0x774]) = v5 ^ 0x140CD6D5;
  v6 = (*(v3 + 8 * (v4 + 6466)))(v5 ^ 0x1FC94F86, 0x100004077774924);
  STACK[0x768] = v6;
  return (*(v3 + 8 * (((v6 == 0) | (4 * (v6 == 0))) + v4)))();
}

uint64_t sub_1E333592C(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v7 = 30 * ((v4 - 4431) ^ 0x8F8);
  *a4 = a1;
  *a3 = v9;
  v14 = (v7 + 4116) ^ (((&v12 - 1356712562 - 2 * (&v12 & 0xAF22358E)) ^ 0xF74BE6EC) * v6);
  v13 = v11;
  (*(v5 + 8 * (v7 ^ 0x350A)))(&v12);
  v13 = v10;
  v14 = (v7 + 4116) ^ (((((&v12 | 0xBD69CD6A) ^ 0xFFFFFFFE) - (~&v12 | 0x42963295)) ^ 0x1AFFE1F7) * v6);
  (*(v5 + 8 * ((v7 + 1010) ^ 0x31F4)))(&v12);
  return 0;
}

uint64_t sub_1E3335A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v7 = LOWORD(STACK[0x9E0]);
  if (v7 == 17168)
  {
    goto LABEL_4;
  }

  if (v7 == 33980)
  {
    v15 = STACK[0x3F8];
    v16 = STACK[0x3F8] - 6908;
    v17 = STACK[0x6C0];
    STACK[0x590] = a4;
    LODWORD(STACK[0x964]) = v5;
    return (*(v6 + 8 * ((26 * (((v17 + v4 == 0) ^ (v15 + 1)) & 1)) ^ v16)))();
  }

  v8 = STACK[0x3F8];
  if (v7 == 20706)
  {
LABEL_4:
    STACK[0x590] = a4;
    v8 = STACK[0x3F8];
  }

  v9 = 3 * (v8 ^ 0x2C03);
  *STACK[0x818] = 0;
  LODWORD(STACK[0x964]) = 197499219;
  v10 = STACK[0x458];
  v11 = *STACK[0x8C8];
  STACK[0x408] = STACK[0x458];
  if (v11)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  return (*(v6 + 8 * ((v13 * ((2 * v9) ^ 0x3038)) ^ v9)))(a1, a2, a3, 16215976);
}

uint64_t sub_1E3335BAC()
{
  v4 = v0 - v1 + 1326935087;
  v5 = ((v4 ^ 0x835C9953) + 867437242) ^ v4 ^ ((v4 ^ 0x3A076EE) - 1287068411) ^ (((v2 + 506082138) & 0xE1D5DCF7 ^ 0x4FEF7C3) + (v4 ^ 0xB4167C45)) ^ ((v4 ^ (v2 - 1177129143) & 0x4629ACB5 ^ 0x7BFDDBCD) - 887788536);
  LODWORD(STACK[0x5D4]) = v5 ^ 0x44D2F546;
  v6 = (*(v3 + 8 * (v2 ^ 0x2D83)))(v5 ^ 0x4F176C15, 0x100004077774924);
  v7 = STACK[0x400];
  STACK[0x6D0] = v6;
  return (*(v7 + 8 * ((27 * (v6 == 0)) ^ v2)))();
}

void sub_1E3335D3C(_DWORD *a1)
{
  v1 = *a1 ^ (869295389 * (((a1 | 0x7D4E8F11) - a1 + (a1 & 0x82B170EE)) ^ 0xCC1AA342));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1E3335F34(uint64_t a1)
{
  *v5 = a1;
  v10 = (v1 + 4300) ^ (1824088897 * (((&v8 | 0x5E24FB22) - &v8 + (&v8 & 0xA1DB04D8)) ^ 0x64D2840));
  v9 = v7;
  (*(v2 + 8 * (v1 + 5566)))(&v8);
  v10 = (v1 + 4300) ^ (1824088897 * ((&v8 & 0xC7D00381 | ~(&v8 | 0xC7D00381)) ^ 0x60462F1C));
  v9 = v6;
  (*(v2 + 8 * (v1 + 5566)))(&v8);
  return (v3 - 16257999);
}

uint64_t sub_1E33360CC()
{
  v6 = v4 + 1;
  v7 = v3 < v2;
  if (v7 == v6 < v2)
  {
    v7 = v6 < v3;
  }

  v8 = v7 ^ v5;
  if (v7)
  {
    v9 = v1;
  }

  else
  {
    v9 = 0;
  }

  return (*(STACK[0x598] + 8 * ((15 * (v8 + v9 == 111)) ^ (v0 + 1545))))();
}

uint64_t sub_1E333B2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10, int a11, unsigned int a12, unsigned int a13, int a14)
{
  v16 = 1317436891 * (((&a10 | 0x35DBFAB4) - (&a10 & 0x35DBFAB4)) ^ 0x85D862C2);
  a10 = 1256234026 - v16;
  a11 = (v14 + 453) ^ v16;
  a12 = 1384933332 - v16;
  a13 = 1989749809 - v16;
  v17 = (*(v15 + 8 * (v14 + 7461)))(&a10);
  return (*(v15 + 8 * ((62 * ((a14 - 651244051) < 0xD97ABAD6)) ^ v14)))(v17);
}

uint64_t sub_1E333B384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, char *a16)
{
  a15 = a9;
  a16 = &a11;
  a14 = (v17 - 1308) ^ (33731311 * (((&a13 | 0x388EB50) - (&a13 & 0x388EB50)) ^ 0x3A7E2173));
  (*(v16 + 8 * (v17 ^ 0x34D1)))(&a13);
  LODWORD(a16) = v17 - 2008441969 * (&a13 ^ 0x4899540E) + 1125;
  a15 = a9;
  v19 = (*(v16 + 8 * (v17 ^ 0x3423)))(&a13);
  return (*(v16 + 8 * ((13204 * (a13 == v18 + ((8 * v17) ^ 0x8358) + 788)) ^ v17)))(v19);
}

uint64_t sub_1E333B460(int a1, unint64_t a2)
{
  v8 = (v5 - 1) & 0xF;
  v12 = a2 > 0xF && (1 - v7 + v2 - v5 + v8) > 0xF && v3 - v7 - v5 + v8 + ((a1 + 1877) ^ 0x24E9uLL) > 0xF && (1 - v7 + v4 - v5 + v8) > 0xF;
  return (*(v6 + 8 * ((7 * v12) ^ a1)))();
}

uint64_t sub_1E333B4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, int a11, uint64_t a12, int a13, unsigned int a14)
{
  v17 = 914963389 * ((((&a10 | 0x145C9C48) ^ 0xFFFFFFFE) - (~&a10 | 0xEBA363B7)) ^ 0xC75FD2CC);
  a11 = (v15 - 6739) ^ v17;
  a10 = &a9;
  a12 = v14;
  a13 = v17 ^ 0x19EC40FD;
  a14 = -1693904160 - v17;
  v18 = (*(v16 + 8 * (v15 + 1937)))(&a10);
  return (*(v16 + 8 * ((16254 * (*(v14 + 24) == ((v15 - 4591) | 0x1100) + 16250511)) ^ v15)))(v18);
}

uint64_t sub_1E333B5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = (((2 * v8) & 0x1E1E7FFB6FFF956CLL) + 0x70F0C002480025FFLL + v11 + (v8 ^ 0x8F0F3FFDB7FFC5FDLL ^ v9));
  v15 = (v14[v9] << 24) | (v14[3916] << 16) | (v14[3917] << 8);
  v16 = (v15 | v14[3918]) + 197499219 - 2 * ((v15 | v14[3918]) & v7 ^ v14[3918] & 0xCu);
  v17 = v11 + ((2 * (v8 + 4)) & 0x5BF67977E453F76ELL) + ((v8 + 4) ^ 0x6DFB3CBBF229FBB7) - 0x6DFB3CBBF229FBB7;
  v18 = (_byteswap_ushort(*v17) - 2 * (_byteswap_ushort(*v17) & 0x3E9E ^ *(v17 + 1) & 0xA) + 16023);
  if (v18 == 28242)
  {
    return (*(v12 + 8 * (((((a6 - 3387) | 0x41) + ((a6 - 3176) ^ 0xB8B)) * (v16 == 197499219)) ^ (a6 + 1045))))(a1, v16, a3, a4, a5, a6, a7);
  }

  if (v18 == 47636)
  {
    return (*(v12 + 8 * ((489 * (v10 == 10 * (a6 ^ 0xEBB) + 197494267)) ^ (a6 + 760))))(a1, v16);
  }

  if (v18 != 43494)
  {
    *(v13 - 200) = a1;
    JUMPOUT(0x1E32FF6D8);
  }

  v19 = v10 == ((a6 + 1233553575) & 0xB6797B6D ^ 0xBC58A37);
  return (*(v12 + 8 * (((v19 << 8) | (v19 << 11)) ^ (a6 + 760))))(a1, v16);
}

uint64_t sub_1E333B7CC(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = a4 - 1;
  *a2 = *a3 ^ *(v7 + (v11 & 0xF)) ^ ((v11 & 0xF) * a6) ^ *(a1 + (v11 & 0xF)) ^ *(v6 + (v11 & 0xF) + v8 + a5) ^ 0x3C;
  return (*(v10 + 8 * (((16 * (v11 != 0)) | ((v11 != 0) << 6)) ^ v9)))();
}

uint64_t sub_1E333B900()
{
  v5 = ((v2 - 597860345) & 0x23A2933B ^ 0xFFFFFFFFFFFFECD5) + v1;
  v6 = *(v0 + v5 - 15);
  v7 = *(v0 + v5 - 31);
  v8 = v3 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((104 * ((v1 & 0xFFFFFFE0) != 32)) ^ (v2 - 3246))))();
}

uint64_t sub_1E333BA00@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v5 = 109 * (a2 ^ 0x1C44);
  result = (*(v2 + 8 * (a2 ^ 0x39B6)))(a1, *(v4 + 8 * (a2 ^ 0x1C5E)) - 4);
  *v3 = **(v4 + 8 * (v5 - 7933)) & 0x2D ^ 0xDE;
  return result;
}

uint64_t sub_1E333BAF0(uint64_t a1, uint64_t a2, double a3, int8x16_t a4, int64x2_t a5, int8x16_t a6, int64x2_t a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v91 = a1 - 8;
  v92.i64[0] = v91 + a2 + v75 + 4;
  v92.i64[1] = v91 + a2;
  v93.i64[0] = v91 + a2 + 3;
  v93.i64[1] = v91 + a2 + 2;
  v94.i64[0] = v91 + a2 - 1;
  v94.i64[1] = v91 + a2 - 2;
  v95.i64[0] = v91 + a2 - 3;
  v95.i64[1] = v91 + a2 - 4;
  v96 = vandq_s8(v95, *&STACK[0x3B0]);
  v97 = vandq_s8(v94, *&STACK[0x3B0]);
  v98 = vandq_s8(v93, *&STACK[0x3B0]);
  v99 = vandq_s8(v92, *&STACK[0x3B0]);
  v100 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v101 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), a5);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), a5);
  v104 = vaddq_s64(v101, a5);
  v105 = vaddq_s64(v100, a5);
  v106 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v102, v102), a6), v102), a7);
  v107 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v103, v103), a6), v103), a7);
  v108 = veorq_s8(v107, a8);
  v109 = veorq_s8(v106, a8);
  v110 = veorq_s8(v106, a9);
  v111 = veorq_s8(v107, a9);
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v111);
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v113, v113), a10), v113), v77), v78);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v112, v112), a10), v112), v77), v78);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v117 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v118 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v117);
  v120 = vaddq_s64(v118, v116);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v120, v120), v79), v120), v80), v81);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v119, v119), v79), v119), v80), v81);
  v123 = vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL);
  v124 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v125 = veorq_s8(v121, v123);
  v126 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v125);
  v128 = vaddq_s64(v126, v124);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v127, v82), vorrq_s8(v127, v83)), v83), v84);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v128, v82), vorrq_s8(v128, v83)), v83), v84);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v132 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v133 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131), v85);
  v134 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v132), v85);
  v135 = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v136 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v137 = veorq_s8(v133, v135);
  v138 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v137);
  v140 = vaddq_s64(v138, v136);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v140, v140), v86), v140), v87), v88);
  v142 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v139, v139), v86), v139), v87), v88);
  v143 = vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL);
  v144 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v145 = veorq_s8(v141, v143);
  v146 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v147 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v145);
  v148 = veorq_s8(vaddq_s64(v146, v144), v89);
  v149 = veorq_s8(v147, v89);
  v150 = vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL);
  v151 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v152 = veorq_s8(v148, v150);
  v153 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v154 = vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL);
  v155 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v104, v104), a6), v104), a7);
  v193.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v154, v152), v90), vnegq_s64(vandq_s8(vshlq_n_s64(v95, 3uLL), a4)));
  v193.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v153, v151), v90), vnegq_s64(vandq_s8(vshlq_n_s64(v94, 3uLL), a4)));
  v156 = veorq_s8(v155, a8);
  v157 = veorq_s8(v155, a9);
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157);
  v159 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v158, v158), a10), v158), v77), v78);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160);
  v162 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v161, v161), v79), v161), v80), v81);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v164, v82), vorrq_s8(v164, v83)), v83), v84);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166), v85);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v169, v169), v86), v169), v87), v88);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171), v89);
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL)));
  v174 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v105, v105), a6), v105), a7);
  v193.val[0] = vshlq_u64(veorq_s8(v173, v90), vnegq_s64(vandq_s8(vshlq_n_s64(v93, 3uLL), a4)));
  v175 = veorq_s8(v174, a8);
  v176 = veorq_s8(v174, a9);
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v177, v177), a10), v177), v77), v78);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179);
  v181 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v180, v180), v79), v180), v80), v81);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182);
  v184 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v183, v82), vorrq_s8(v183, v83)), v83), v84);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v186 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185), v85);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v188 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187);
  v189 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v188, v188), v86), v188), v87), v88);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v191 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190), v89);
  v193.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL))), v90), vnegq_s64(vandq_s8(vshlq_n_s64(v92, 3uLL), a4)));
  *(v92.i64[1] - 4) = vrev64_s8(*&vqtbl4q_s8(v193, *&STACK[0x3A0]));
  return (*(a72 + 8 * (((v73 != v74 + 8) * v76) | v72)))();
}

uint64_t sub_1E333BB44(uint64_t a1)
{
  *v8 = a1;
  *v2 = v10;
  v6 = (v1 - 2428) | 0x2A;
  v14 = (v1 + 3609) ^ ((&v12 ^ 0x5869D362) * v3);
  v13 = v9;
  (*(v4 + 8 * ((v1 - 2237) ^ 0x2C48)))(&v12);
  v13 = v11;
  v14 = (v6 + 5995) ^ (((-1253558873 - (&v12 | 0xB54835A7) + (&v12 | 0x4AB7CA58)) ^ 0x12DE193A) * v3);
  (*(v4 + 8 * (v6 + 7261)))(&v12);
  return (v5 - 16257999);
}

uint64_t sub_1E333BC5C()
{
  v4 = v0 - 2426;
  v5 = v0 - 2550;
  *v3 = v5 & v1;
  v6 = __rev16(*(v3 + 6)) | ((*(v3 + 2) << ((5 * (v4 ^ 0x7F)) ^ 0x22u)) + (((v5 & v1) << 56) | (*(v3 + 1) << 48)) + (*(v3 + 3) << 32) + (*(v3 + 4) << 24) + (*(v3 + 5) << 16));
  v7 = 2 * (v4 ^ 0xC2Cu) + v6 - ((2 * v6) & 0x401616DEB349C0CALL) + 0x600B0B6F59A4CFC3;
  return (*(v2 + 8 * ((2497 * ((((v7 ^ 0xACECAA36140C1E02) + 0x531355C9EBF3E1FELL) ^ ((v7 ^ 0x6FA399918A67B47CLL) - 0x6FA399918A67B47CLL) ^ ((v7 ^ 0xA34438C8C7CF4A1BLL) + 0x5CBBC7373830B5E5)) + 0x600B0B6F59A4E065 < 0xE)) ^ v4)))();
}

uint64_t sub_1E333BD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18)
{
  *a5 = 0;
  *a6 = 0;
  a17 = 476323082 - 1710126949 * (&a17 ^ 0x321B5B90);
  v19 = (*(v18 + 77088))(&a17);
  return (*(v18 + 8 * ((491 * (a18 == 16257999)) ^ 0x6F5u)))(v19);
}

uint64_t sub_1E333BDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a17 = a13;
  a18 = &a12;
  a16 = (v18 - 2493) ^ (33731311 * (((&a15 | 0x51855AB2) - &a15 + (&a15 & 0xAE7AA548)) ^ 0x68739091));
  (*(v19 + 8 * (v18 ^ 0x3330u)))(&a15);
  LODWORD(a18) = v18 - 2008441969 * ((2 * (&a15 & 0x2EF154F8) - &a15 + 1359915780) ^ 0x1997FF0A) - 60;
  a17 = a13;
  v21 = (*(v19 + 8 * (v18 ^ 0x33C2u)))(&a15);
  return (*(v19 + 8 * (((a15 == v20) * (((v18 - 5649) | 0x1014) - 1553)) ^ v18)))(v21);
}

void myda13fYo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1E333C060@<X0>(int a1@<W8>)
{
  v2 = a1 - 3276;
  v3 = (a1 + 2102169762) & 0x82B35CDA;
  v4 = STACK[0x8A8];
  v5 = STACK[0x6E8];
  STACK[0x628] = ((a1 + 699) | 0x24u) + STACK[0x628] - 8724;
  STACK[0x6F0] = v4;
  STACK[0x4C8] = v5;
  v6 = (*(v1 + 8 * ((a1 - 3276) ^ 0x3709)))();
  STACK[0x878] = 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  return (*(v1 + 8 * ((v8 * (v3 ^ 0xC87)) ^ v2)))(v6);
}

uint64_t sub_1E333C100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a17 = a13;
  a18 = &a11;
  a16 = (v18 + 2252) ^ (33731311 * (((&a15 | 0x7C4A37B2) - &a15 + (&a15 & 0x83B5C848)) ^ 0x45BCFD91));
  (*(v19 + 8 * (v18 + 8601)))(&a15);
  LODWORD(a18) = v18 - 2008441969 * ((&a15 & 0x8AA3C20E | ~(&a15 | 0x8AA3C20E)) ^ 0x3DC569FF) + 4685;
  a17 = a13;
  v21 = (*(v19 + 8 * (v18 + 8651)))(&a15);
  return (*(v19 + 8 * (((v18 + 105) ^ (a15 == v20)) & 1 | (4 * (((v18 + 105) ^ (a15 == v20)) & 1)) | v18)))(v21);
}

uint64_t sub_1E333C260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, unsigned int a16, uint64_t a17)
{
  v20 = 1875091903 * ((-86425387 - (&a14 | 0xFAD940D5) + (&a14 | 0x526BF2A)) ^ 0x33533CA9);
  a17 = a11;
  a15 = (v17 ^ 0xED3EBEBE) + ((2 * v17) & 0xDA7D7D7C) + 853407724 + v20;
  a16 = v20 + 7724;
  v21 = (*(v18 + 77160))(&a14);
  return (*(v18 + 8 * ((216 * (a14 == v19)) ^ 0x57Bu)))(v21);
}

uint64_t sub_1E333C348(int a1, uint64_t a2, int8x16_t *a3, uint64_t a4, double a5, __n128 a6, __n128 a7, __n128 a8, int8x16_t a9, double a10, int8x16_t a11, uint64_t a12, int a13)
{
  v18 = (v16 - 16) & 0xF;
  v20.i64[0] = vqtbl4q_s8(*(&a6 - 1), a9).u64[0];
  *&v20.i64[1] = a10;
  v21 = vrev64q_s8(vmulq_s8(v20, a11));
  *a3 = veorq_s8(veorq_s8(veorq_s8(*(v15 + v18 - 15), *a3), veorq_s8(*(v14 + v18 - 15), *(v18 + v13 - 14))), vextq_s8(v21, v21, 8uLL));
  return (*(v17 + 8 * (((a4 != 16) * a13) ^ a1)))();
}

uint64_t sub_1E333C384()
{
  *v0 = 0;
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  *(v0 + 360) = 0;
  *(v0 + 56) = 887888748;
  *(v0 + 376) = 0;
  return (*(v1 + 8 * (((*(v0 + 368) == 0) * (((v2 - 1016) | 0x410) ^ (v2 - 97015325) & 0x5C85BB2 ^ 0xEAE)) ^ v2)))();
}

uint64_t sub_1E333C3F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (a1 + v2 - 16);
  v7 = (a2 + v2 - 16);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * ((60 * (((v4 - 4) ^ ((v2 & 0xFFFFFFE0) == 32)) & 1)) ^ (v4 + v3))))();
}

uint64_t sub_1E333C444(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, int8x16_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int8x16_t a61, uint64_t a62, uint64_t a63)
{
  v77 = a1 + a52 - a68;
  v78.i64[0] = v77 - 7;
  v78.i64[1] = v77 - 8;
  v79.i64[0] = v77 - 3;
  v79.i64[1] = v77 - 4;
  v80.i64[0] = v77 - 1;
  v80.i64[1] = v77 - 2;
  v81.i64[0] = v77 + ((a14 + 1549280340) & 0xA3A7DB7C ^ 0xFFFFFFFFFFFFE7C7);
  v81.i64[1] = v77 - 6;
  v82 = vandq_s8(v81, v75);
  v83 = vandq_s8(v80, v75);
  v84 = vandq_s8(v79, v75);
  v85 = vandq_s8(v78, v75);
  v86 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v87 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v88 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v89 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v91 = *(v74 - 256);
  v90 = *(v74 - 240);
  v92 = vaddq_s64(vorrq_s8(vsubq_s64(v90, v89), v91), vorrq_s8(vaddq_s64(v89, *&STACK[0x290]), *&STACK[0x280]));
  v93 = vaddq_s64(vorrq_s8(vsubq_s64(v90, v88), v91), vorrq_s8(vaddq_s64(v88, *&STACK[0x290]), *&STACK[0x280]));
  v94 = vsubq_s64(*&STACK[0x270], vaddq_s64(vorrq_s8(vsubq_s64(v90, v86), v91), vorrq_s8(vaddq_s64(v86, *&STACK[0x290]), *&STACK[0x280])));
  v95 = vsubq_s64(*&STACK[0x270], vaddq_s64(vorrq_s8(vsubq_s64(v90, v87), v91), vorrq_s8(vaddq_s64(v87, *&STACK[0x290]), *&STACK[0x280])));
  v96 = veorq_s8(v95, *&STACK[0x260]);
  v97 = veorq_s8(v94, *&STACK[0x260]);
  v98 = veorq_s8(v94, *&STACK[0x250]);
  v99 = veorq_s8(v95, *&STACK[0x250]);
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), *&STACK[0x240]);
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v99), *&STACK[0x240]);
  v102 = vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL);
  v103 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v104 = veorq_s8(v100, v102);
  v105 = vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v104);
  v107 = vaddq_s64(v105, v103);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v107, v107), *&STACK[0x230]), v107), *&STACK[0x220]), *&STACK[0x210]);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v106, v106), *&STACK[0x230]), v106), *&STACK[0x220]), *&STACK[0x210]);
  v110 = vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL);
  v111 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v112 = veorq_s8(v108, v110);
  v113 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v112);
  v115 = veorq_s8(vaddq_s64(v113, v111), *&STACK[0x200]);
  v116 = veorq_s8(v114, *&STACK[0x200]);
  v117 = vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL);
  v118 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v119 = veorq_s8(v115, v117);
  v120 = vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v119);
  v122 = veorq_s8(vaddq_s64(v120, v118), *&STACK[0x2B0]);
  v123 = veorq_s8(v121, *&STACK[0x2B0]);
  v124 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v125 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v126 = veorq_s8(v122, v124);
  v127 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v126);
  v129 = vaddq_s64(v127, v125);
  v130 = veorq_s8(v129, a74);
  v131 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v129, v76), a73), v130), vandq_s8(v130, v76));
  v132 = veorq_s8(v128, a74);
  v133 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v128, v76), a73), v132), vandq_s8(v132, v76)), a72);
  v134 = veorq_s8(v131, a72);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v136 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v137 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135), a71);
  v138 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v136), a71);
  v139 = vsubq_s64(*&STACK[0x270], v93);
  v174.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL))), a70), vnegq_s64(vandq_s8(vshlq_n_s64(v78, 3uLL), a61)));
  v174.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL))), a70), vnegq_s64(vandq_s8(vshlq_n_s64(v79, 3uLL), a61)));
  v140 = veorq_s8(v139, *&STACK[0x260]);
  v141 = veorq_s8(v139, *&STACK[0x250]);
  v142 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v141), *&STACK[0x240]);
  v143 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143);
  v145 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v144, v144), *&STACK[0x230]), v144), *&STACK[0x220]), *&STACK[0x210]);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v147 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146), *&STACK[0x200]);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v149 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148), *&STACK[0x2B0]);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v151 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150);
  v152 = veorq_s8(v151, a74);
  v153 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v151, v76), a73), v152), vandq_s8(v152, v76)), a72);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v155 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v154), a71);
  v156 = vsubq_s64(*&STACK[0x270], v92);
  v174.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL))), a70), vnegq_s64(vandq_s8(vshlq_n_s64(v80, 3uLL), a61)));
  v157 = veorq_s8(v156, *&STACK[0x260]);
  v158 = veorq_s8(v156, *&STACK[0x250]);
  v159 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158), *&STACK[0x240]);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160);
  v162 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v161, v161), *&STACK[0x230]), v161), *&STACK[0x220]), *&STACK[0x210]);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), *&STACK[0x200]);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165), *&STACK[0x2B0]);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v168 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167);
  v169 = veorq_s8(v168, a74);
  v170 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v168, v76), a73), v169), vandq_s8(v169, v76)), a72);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171), a71);
  v174.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL))), a70), vnegq_s64(vandq_s8(vshlq_n_s64(v81, 3uLL), a61)));
  *(a26 + a48 + a49 + a52 - a68) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v174, a9)), *(v77 - 8));
  return (*(STACK[0x2A8] + 8 * ((7 * (a68 - (a52 & 0xFFFFFFF8) == -8)) ^ a14)))();
}

uint64_t sub_1E333C9B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v26 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v27 = vdupq_n_s64(0x38uLL);
  v28 = vdupq_n_s64(0x2A11B965E67D9C56uLL);
  v29 = vdupq_n_s64(v15);
  v30 = vdupq_n_s64(v16);
  v31 = vdupq_n_s64(v25);
  v32 = vdupq_n_s64(v17);
  v33 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v34 = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  v35 = vdupq_n_s64(v21);
  v36 = vdupq_n_s64(v18);
  v37 = vdupq_n_s64(v19);
  v38 = vdupq_n_s64(v20);
  v39 = vdupq_n_s64(0x64C31C027084DE6CuLL);
  v40 = vdupq_n_s64(v23);
  v41 = vdupq_n_s64(v24);
  v42.i64[0] = v22 - a2 + a1 + 3;
  v42.i64[1] = v22 - a2 + a1 + 2;
  v43.i64[0] = v22 - a2 + a1 + 5;
  v43.i64[1] = v22 - a2 + a1 + 4;
  v44.i64[0] = v22 - a2 + a1 + 9;
  v44.i64[1] = v22 - a2 + a1 + 8;
  v45.i64[0] = v22 - a2 - 4352 + a1 + 1453 * (a4 ^ 0x19DAu);
  v45.i64[1] = v22 - a2 + a1 + 6;
  v46 = vandq_s8(v45, v26);
  v47 = vandq_s8(v44, v26);
  v48 = vandq_s8(v43, v26);
  v49 = vandq_s8(v42, v26);
  v50 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v51 = vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL);
  v52 = vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL);
  v53 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v54 = vsubq_s64(v52, vandq_s8(vaddq_s64(vaddq_s64(v52, v52), v28), v29));
  v55 = vsubq_s64(v53, vandq_s8(vaddq_s64(vaddq_s64(v53, v53), v28), v29));
  v56 = vaddq_s64(vsubq_s64(v51, vandq_s8(vaddq_s64(vaddq_s64(v51, v51), v28), v29)), v30);
  v57 = vaddq_s64(vsubq_s64(v50, vandq_s8(vaddq_s64(vaddq_s64(v50, v50), v28), v29)), v30);
  v58 = veorq_s8(v57, v31);
  v59 = veorq_s8(v56, v31);
  v60 = veorq_s8(v56, v32);
  v61 = veorq_s8(v57, v32);
  v62 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v60), v33);
  v63 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v61), v33);
  v64 = vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL);
  v65 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v66 = veorq_s8(v62, v64);
  v67 = vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v66);
  v69 = veorq_s8(vaddq_s64(v67, v65), v34);
  v70 = veorq_s8(v68, v34);
  v71 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v72 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v73 = veorq_s8(v69, v71);
  v74 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v73);
  v76 = veorq_s8(vaddq_s64(v74, v72), v35);
  v77 = veorq_s8(v75, v35);
  v78 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v79 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v80 = veorq_s8(v76, v78);
  v81 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v80);
  v83 = vaddq_s64(v81, v79);
  v84 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v83, v83), v36), v83), v37), v38);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v82, v82), v36), v82), v37), v38);
  v86 = vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL);
  v87 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v88 = veorq_s8(v84, v86);
  v89 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v88);
  v91 = veorq_s8(vaddq_s64(v89, v87), v39);
  v92 = veorq_s8(v90, v39);
  v93 = vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL);
  v94 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v95 = veorq_s8(v91, v93);
  v96 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v95);
  v98 = veorq_s8(vaddq_s64(v96, v94), v40);
  v99 = veorq_s8(v97, v40);
  v100 = vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL);
  v101 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v102 = veorq_s8(v98, v100);
  v103 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v104 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v105 = vaddq_s64(v54, v30);
  v106 = vaddq_s64(v104, v102);
  v107 = veorq_s8(vaddq_s64(v103, v101), v41);
  v138.val[3] = vshlq_u64(veorq_s8(v106, v41), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), v27)));
  v138.val[2] = vshlq_u64(v107, vnegq_s64(vandq_s8(vshlq_n_s64(v43, 3uLL), v27)));
  v108 = veorq_s8(v105, v31);
  v109 = veorq_s8(v105, v32);
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v33);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v34);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v35);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v116, v116), v36), v116), v37), v38);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v39);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v40);
  v122 = vaddq_s64(v55, v30);
  v138.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL))), v41), vnegq_s64(vandq_s8(vshlq_n_s64(v44, 3uLL), v27)));
  v123 = veorq_s8(v122, v31);
  v124 = veorq_s8(v122, v32);
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124), v33);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v127 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126), v34);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v129 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128), v35);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v131, v131), v36), v131), v37), v38);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v134 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133), v39);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v136 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135), v40);
  v138.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL))), v41), vnegq_s64(vandq_s8(vshlq_n_s64(v45, 3uLL), v27)));
  *(v22 - a2 + a1 + 2) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v138, xmmword_1E4316DF0)), *(a15 - a2 - 8 + a1));
  return (*(STACK[0x2A8] + 8 * ((1898 * (a2 - (a1 & 0xFFFFFFF8) == -8)) ^ a4)))();
}

uint64_t sub_1E333CFA4()
{
  v4 = (*(v1 + 8 * (v3 ^ 0x2A3F)))(*v2, *(v0 + 8 * (v3 - 3823)) - 8);
  *(*(v0 + 8 * (v3 - 3949)) - 4) = v4;
  return (*(v1 + 8 * (((v4 != 0) * (((v3 + 1834569844) & 0x92A6BF3C) + ((v3 + 1036348758) & 0xC23A9FEB) - 15349)) ^ v3)))();
}

uint64_t sub_1E333D034()
{
  *(v1 - 232) = v0 - 1710126949 * ((2 * ((v1 - 232) & 0x360556C0) - (v1 - 232) + 1241164088) ^ 0x7BE1F2A8) + 5736;
  (*(v2 + 8 * (v0 ^ 0x2668)))(v1 - 232);
  *(v1 - 216) = (v0 + 6785) ^ (956911519 * ((((v1 - 232) | 0xC09DD253) - (v1 - 232) + ((v1 - 232) & 0x3F622DA8)) ^ 0x2A0CA256));
  v3 = (*(STACK[0x400] + 8 * (v0 ^ 0x25D1)))(v1 - 232);
  return (*(STACK[0x400] + 8 * ((1880 * (*(v1 - 232) == v0 + 16256986)) ^ v0)))(v3);
}

uint64_t sub_1E333D138(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 42;
  v4 = (*(v2 + 8 * (v1 ^ 0x2009)))(42, 0x100004077774924);
  *(a1 + 24) = v4;
  return (*(v2 + 8 * (((v4 == 0) * (((v1 - 2095296) & 0x1FFBFF) + (v1 ^ 0xFFFFF229))) ^ v1)))();
}

uint64_t sub_1E333D1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5.i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v5.i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v6 = a1 + v2 - 1;
  v7 = veorq_s8(*(a2 + v2 - 1 - 31), v5);
  *(v6 - 15) = veorq_s8(*(a2 + v2 - 1 - 15), v5);
  *(v6 - 31) = v7;
  return (*(v4 + 8 * ((6382 * (((v3 + 630068243) & 0x259EF7F) - 9521 == (v2 & 0xFFFFFFE0))) ^ (v3 + 669510590))))();
}

uint64_t sub_1E333D2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(STACK[0x660] + 24);
  STACK[0x528] = v5;
  return (*(v4 + 8 * (((v5 == 0) * (((v3 - 1196079143) & 0x474AB6FB) + ((v3 + 541610558) & 0xDFB7BFE6) - 12541)) ^ v3)))(a1, a2, a3, 16215976);
}

uint64_t sub_1E333D878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
{
  v9 = (a7 - 1678995912) & 0x6413729E;
  v10 = 94 * (v9 ^ 0x12BE);
  LODWORD(STACK[0x380]) = v10;
  return (*(v8 + 8 * (((v7 < (v9 ^ 0x12BEu) - 18) * (v10 - 3153)) ^ v9)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1E333D8E4@<X0>(int a1@<W8>)
{
  v2 = STACK[0x438];
  STACK[0x508] = *(v1 + 8 * a1);
  return (*(v1 + 8 * (((((v2 == 0) ^ (((a1 - 111) & 0xFA) - 1)) & 1) * (((((a1 - 299387759) & 0x11D85DFA) - 4905) | 0x1582) - 6078)) ^ (a1 - 299387759) & 0x11D85DFA)))();
}

uint64_t sub_1E333D91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, int a13, unsigned int a14)
{
  a12 = &a9;
  a14 = 1317436891 * (((&a12 | 0x9975C2EA) - &a12 + (&a12 & 0x668A3D10)) ^ 0x29765A9C) + 8154;
  v16 = (*(v14 + 77096))(&a12);
  return (*(v14 + 8 * ((11596 * (a13 == v15)) ^ 0xE61u)))(v16);
}

uint64_t sub_1E333D9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  STACK[0x640] = 0;
  STACK[0x410] = 0;
  return (*(a4 + 8 * (((v6 == 0) ^ (((v4 - 81) | 0x20) + 34)) & 1 | (32 * (((v6 == 0) ^ (((v4 - 81) | 0x20) + 34)) & 1)) | v4)))();
}

uint64_t sub_1E333DA3C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *&STACK[0x2D0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x2E0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x340] = vdupq_n_s64(a2);
  *&STACK[0x350] = vdupq_n_s64(0x2D9C56C6ED9D3E2EuLL);
  *&STACK[0x2B0] = vdupq_n_s64(a1);
  *&STACK[0x2C0] = vdupq_n_s64(a3);
  *&STACK[0x290] = vdupq_n_s64(a5);
  *&STACK[0x2A0] = vdupq_n_s64(a4);
  v72 = v68 + v70 + v69;
  *&STACK[0x270] = vdupq_n_s64(v67);
  *&STACK[0x280] = vdupq_n_s64(a6);
  *&STACK[0x330] = vdupq_n_s64(0x365717C7E4CB1A76uLL);
  *&STACK[0x250] = vdupq_n_s64(0x8BD86B3AFACC8D6DLL);
  *&STACK[0x260] = vdupq_n_s64(a7);
  *&STACK[0x230] = vdupq_n_s64(0xEEA89D249DAFB75ALL);
  *&STACK[0x240] = vdupq_n_s64(0x1323CE1A44C5F46EuLL);
  *&STACK[0x320] = vdupq_n_s64(0xAC7DA0564C1838BuLL);
  *&STACK[0x210] = vdupq_n_s64(0xEAD3CF27A2EF22E5);
  *&STACK[0x220] = vdupq_n_s64(0x2A5861B0BA21BA34uLL);
  *&STACK[0x200] = vdupq_n_s64(0x8B436845DC92299CLL);
  v259 = vdupq_n_s64(0x51BB4171AFEDC628uLL);
  *&STACK[0x310] = xmmword_1E4316E10;
  v73 = *&STACK[0x2B0];
  v74 = *&STACK[0x2C0];
  v75 = *&STACK[0x290];
  v76 = *&STACK[0x2A0];
  v77 = *&STACK[0x280];
  v78 = *&STACK[0x250];
  v79 = vdupq_n_s64(v66);
  v81 = *&STACK[0x220];
  v80 = *&STACK[0x230];
  v83 = *&STACK[0x200];
  v82 = *&STACK[0x210];
  v84 = vdupq_n_s64(0x8E4D6ECA343D275ELL);
  v85 = *&STACK[0x2D0];
  v86.i64[0] = v64 + v71 + v72 + 15;
  v86.i64[1] = v64 + v71 + (v65 ^ 0x2B60u) + v72 - 2620;
  v87.i64[0] = v64 + v71 + v72 + 13;
  v87.i64[1] = v64 + v71 + v72 + 12;
  v88.i64[0] = v64 + v71 + v72 + 11;
  v88.i64[1] = v64 + v71 + v72 + 10;
  v89.i64[0] = v64 + v71 + v72 + 9;
  v89.i64[1] = v64 + v71 + v72 + 8;
  *&v90 = v64 + v71 + v72 + 7;
  *(&v90 + 1) = v64 + v71 + v72 + 6;
  *&STACK[0x370] = v90;
  *&v90 = v64 + v71 + v72 + 5;
  *(&v90 + 1) = v64 + v71 + v72 + 4;
  *&STACK[0x360] = v90;
  v91 = *&STACK[0x2E0];
  v92 = vandq_s8(v89, *&STACK[0x2E0]);
  v93 = vandq_s8(v88, *&STACK[0x2E0]);
  v94 = vandq_s8(v87, *&STACK[0x2E0]);
  v95 = vandq_s8(v86, *&STACK[0x2E0]);
  v96 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v97 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v98 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v99 = *&STACK[0x340];
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), *&STACK[0x350]);
  v101 = vaddq_s64(v98, *&STACK[0x350]);
  v102 = vaddq_s64(v97, *&STACK[0x350]);
  v103 = vaddq_s64(v96, *&STACK[0x350]);
  *&STACK[0x300] = vsubq_s64(vorrq_s8(vaddq_s64(v103, v103), *&STACK[0x340]), v103);
  v104 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v100, v100), v99), v100), v74);
  v105 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v101, v101), v99), v101), v74);
  v106 = veorq_s8(v105, v73);
  v107 = veorq_s8(v104, v73);
  v108 = veorq_s8(v104, v76);
  v109 = veorq_s8(v105, v76);
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v109);
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v113 = *&STACK[0x260];
  v112 = *&STACK[0x270];
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v111, v111), v75), v111), v77), *&STACK[0x270]);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v110, v110), v75), v110), v77), *&STACK[0x270]);
  v116 = vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL);
  v117 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v118 = veorq_s8(v114, v116);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v118);
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v117);
  v121 = *&STACK[0x330];
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v120, v120), *&STACK[0x260]), v120), *&STACK[0x330]), v78);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v119, v119), *&STACK[0x260]), v119), *&STACK[0x330]), v78);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v125 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v126 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v125);
  v128 = vaddq_s64(v126, v124);
  v129 = *&STACK[0x240];
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v127, *&STACK[0x240]), vorrq_s8(v127, v79)), v79), v80);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v128, *&STACK[0x240]), vorrq_s8(v128, v79)), v79), v80);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v133 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v134 = *&STACK[0x320];
  v135 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132), *&STACK[0x320]);
  v136 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v133), *&STACK[0x320]);
  v137 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v138 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v139 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v138);
  v141 = vaddq_s64(v139, v137);
  v142 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v141, v141), v81), v141), v82), v83);
  v143 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v140, v140), v81), v140), v82), v83);
  v144 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v145 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v146 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v147 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v145);
  v148 = veorq_s8(vaddq_s64(v146, v144), v84);
  v149 = veorq_s8(v147, v84);
  v150 = vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL);
  v151 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v152 = veorq_s8(v148, v150);
  v153 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v154 = vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL);
  v155.i64[0] = v64 + v71 + v72 + 3;
  v155.i64[1] = v64 + v71 + v72 + 2;
  *&STACK[0x2F0] = v155;
  v156 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v102, v102), v99), v102), v74);
  v260.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v154, v152), v259), vnegq_s64(vandq_s8(vshlq_n_s64(v89, 3uLL), v85)));
  v260.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v153, v151), v259), vnegq_s64(vandq_s8(vshlq_n_s64(v88, 3uLL), v85)));
  v157 = veorq_s8(v156, v73);
  v158 = veorq_s8(v156, v76);
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158);
  v160 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v159, v159), v75), v159), v77), v112);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v162 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161);
  v163 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v162, v162), v113), v162), v121), v78);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v165 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164);
  v166 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v165, v129), vorrq_s8(v165, v79)), v79), v80);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v168 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167), v134);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v170, v170), v81), v170), v82), v83);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172), v84);
  v88.i64[0] = v64 + v71 + v72 + 1;
  v88.i64[1] = v64 + v71 + v72;
  v174 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL)));
  v175 = vandq_s8(v88, v91);
  v176 = vaddq_s64(*&STACK[0x300], v74);
  v260.val[1] = vshlq_u64(veorq_s8(v174, v259), vnegq_s64(vandq_s8(vshlq_n_s64(v87, 3uLL), v85)));
  v177 = veorq_s8(v176, v73);
  v178 = veorq_s8(v176, v76);
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178);
  v180 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v179, v179), v75), v179), v77), v112);
  v181 = v112;
  v182 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v182);
  v184 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v183, v183), v113), v183), v121), v78);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185);
  v187 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v186, v129), vorrq_s8(v186, v79)), v79), v80);
  v188 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v189 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v188), v134);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v191 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190);
  v192 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v191, v191), v81), v191), v82), v83);
  v193 = veorq_s8(v192, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v194 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL), v193), v84);
  v195 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL));
  v196 = vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL);
  v197 = vandq_s8(v155, v91);
  v198 = vaddq_s64(v196, v195);
  v199 = vandq_s8(*&STACK[0x360], v91);
  v260.val[0] = vshlq_u64(veorq_s8(v198, v259), vnegq_s64(vandq_s8(vshlq_n_s64(v86, 3uLL), v85)));
  v200 = vandq_s8(*&STACK[0x370], v91);
  v201 = vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL);
  v202 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v203 = vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL);
  v204 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), *&STACK[0x350]);
  v205 = vaddq_s64(v203, *&STACK[0x350]);
  v206 = vaddq_s64(v202, *&STACK[0x350]);
  v207 = vaddq_s64(v201, *&STACK[0x350]);
  v208 = vsubq_s64(vorrq_s8(vaddq_s64(v207, v207), *&STACK[0x340]), v207);
  v209 = vsubq_s64(vorrq_s8(vaddq_s64(v206, v206), *&STACK[0x340]), v206);
  v210 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v204, v204), *&STACK[0x340]), v204), v74);
  v211 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v205, v205), *&STACK[0x340]), v205), v74);
  v207.i64[0] = vqtbl4q_s8(v260, *&STACK[0x310]).u64[0];
  v260.val[0] = veorq_s8(v211, v73);
  v260.val[1] = veorq_s8(v210, v73);
  v260.val[2] = veorq_s8(v210, v76);
  v260.val[3] = veorq_s8(v211, v76);
  v260.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260.val[0], 0x38uLL), v260.val[0], 8uLL), v260.val[3]);
  v260.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260.val[1], 0x38uLL), v260.val[1], 8uLL), v260.val[2]);
  v260.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v260.val[1], v260.val[1]), v75), v260.val[1]), v77), v181);
  v260.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v260.val[0], v260.val[0]), v75), v260.val[0]), v77), v181);
  v212 = vsraq_n_u64(vshlq_n_s64(v260.val[2], 3uLL), v260.val[2], 0x3DuLL);
  v260.val[2] = veorq_s8(v260.val[0], vsraq_n_u64(vshlq_n_s64(v260.val[3], 3uLL), v260.val[3], 0x3DuLL));
  v260.val[3] = veorq_s8(v260.val[1], v212);
  v213 = vsraq_n_u64(vshlq_n_s64(v260.val[0], 0x38uLL), v260.val[0], 8uLL);
  v260.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260.val[1], 0x38uLL), v260.val[1], 8uLL), v260.val[3]);
  v260.val[1] = vaddq_s64(v213, v260.val[2]);
  v260.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v260.val[1], v260.val[1]), v113), v260.val[1]), *&STACK[0x330]), v78);
  v260.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v260.val[0], v260.val[0]), v113), v260.val[0]), *&STACK[0x330]), v78);
  v214 = vsraq_n_u64(vshlq_n_s64(v260.val[2], 3uLL), v260.val[2], 0x3DuLL);
  v260.val[2] = veorq_s8(v260.val[0], vsraq_n_u64(vshlq_n_s64(v260.val[3], 3uLL), v260.val[3], 0x3DuLL));
  v260.val[3] = veorq_s8(v260.val[1], v214);
  v215 = vsraq_n_u64(vshlq_n_s64(v260.val[0], 0x38uLL), v260.val[0], 8uLL);
  v260.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260.val[1], 0x38uLL), v260.val[1], 8uLL), v260.val[3]);
  v260.val[1] = vaddq_s64(v215, v260.val[2]);
  v260.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v260.val[0], v129), vorrq_s8(v260.val[0], v79)), v79), v80);
  v260.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v260.val[1], v129), vorrq_s8(v260.val[1], v79)), v79), v80);
  v260.val[2] = veorq_s8(v260.val[1], vsraq_n_u64(vshlq_n_s64(v260.val[2], 3uLL), v260.val[2], 0x3DuLL));
  v260.val[3] = veorq_s8(v260.val[0], vsraq_n_u64(vshlq_n_s64(v260.val[3], 3uLL), v260.val[3], 0x3DuLL));
  v260.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260.val[1], 0x38uLL), v260.val[1], 8uLL), v260.val[2]), *&STACK[0x320]);
  v260.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260.val[0], 0x38uLL), v260.val[0], 8uLL), v260.val[3]), *&STACK[0x320]);
  v216 = vsraq_n_u64(vshlq_n_s64(v260.val[2], 3uLL), v260.val[2], 0x3DuLL);
  v260.val[2] = veorq_s8(v260.val[0], vsraq_n_u64(vshlq_n_s64(v260.val[3], 3uLL), v260.val[3], 0x3DuLL));
  v260.val[3] = veorq_s8(v260.val[1], v216);
  v217 = vsraq_n_u64(vshlq_n_s64(v260.val[0], 0x38uLL), v260.val[0], 8uLL);
  v260.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260.val[1], 0x38uLL), v260.val[1], 8uLL), v260.val[3]);
  v260.val[1] = vaddq_s64(v217, v260.val[2]);
  v260.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v260.val[1], v260.val[1]), v81), v260.val[1]), v82), v83);
  v260.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v260.val[0], v260.val[0]), v81), v260.val[0]), v82), v83);
  v218 = vsraq_n_u64(vshlq_n_s64(v260.val[2], 3uLL), v260.val[2], 0x3DuLL);
  v260.val[2] = veorq_s8(v260.val[0], vsraq_n_u64(vshlq_n_s64(v260.val[3], 3uLL), v260.val[3], 0x3DuLL));
  v260.val[3] = veorq_s8(v260.val[1], v218);
  v219 = vsraq_n_u64(vshlq_n_s64(v260.val[0], 0x38uLL), v260.val[0], 8uLL);
  v260.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260.val[1], 0x38uLL), v260.val[1], 8uLL), v260.val[3]);
  v260.val[1] = veorq_s8(vaddq_s64(v219, v260.val[2]), v84);
  v260.val[0] = veorq_s8(v260.val[0], v84);
  v220 = vsraq_n_u64(vshlq_n_s64(v260.val[2], 3uLL), v260.val[2], 0x3DuLL);
  v260.val[2] = veorq_s8(v260.val[0], vsraq_n_u64(vshlq_n_s64(v260.val[3], 3uLL), v260.val[3], 0x3DuLL));
  v221 = vaddq_s64(v209, v74);
  v260.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260.val[1], 0x38uLL), v260.val[1], 8uLL), veorq_s8(v260.val[1], v220)), v259), vnegq_s64(vandq_s8(vshlq_n_s64(v88, 3uLL), v85)));
  v260.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260.val[0], 0x38uLL), v260.val[0], 8uLL), v260.val[2]), v259), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2F0], 3uLL), v85)));
  v222 = veorq_s8(v221, v73);
  v223 = veorq_s8(v221, v76);
  v224 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), v223);
  v225 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v224, v224), v75), v224), v77), v181);
  v226 = veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL));
  v227 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), v226);
  v228 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v227, v227), v113), v227), *&STACK[0x330]), v78);
  v229 = veorq_s8(v228, vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL));
  v230 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), v229);
  v231 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v230, v129), vorrq_s8(v230, v79)), v79), v80);
  v232 = veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL));
  v233 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), v232), *&STACK[0x320]);
  v234 = veorq_s8(v233, vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL));
  v235 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL), v234);
  v236 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v235, v235), v81), v235), v82), v83);
  v237 = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v234, 3uLL), v234, 0x3DuLL));
  v238 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), v237), v84);
  v239 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v238, 0x38uLL), v238, 8uLL), veorq_s8(v238, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL)));
  v240 = vaddq_s64(v208, v74);
  v260.val[1] = vshlq_u64(veorq_s8(v239, v259), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x360], 3uLL), v85)));
  v241 = veorq_s8(v240, v73);
  v242 = veorq_s8(v240, v76);
  v243 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), v242);
  v244 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v243, v243), v75), v243), v77), v181);
  v245 = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL));
  v246 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v245);
  v247 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v246, v246), v113), v246), *&STACK[0x330]), v78);
  v248 = veorq_s8(v247, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL));
  v249 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v248);
  v250 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v249, v129), vorrq_s8(v249, v79)), v79), v80);
  v251 = veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL));
  v252 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL), v251), *&STACK[0x320]);
  v253 = veorq_s8(v252, vsraq_n_u64(vshlq_n_s64(v251, 3uLL), v251, 0x3DuLL));
  v254 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL), v253);
  v255 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v254, v254), v81), v254), v82), v83);
  v256 = veorq_s8(v255, vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL));
  v257 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL), v256), v84);
  v260.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL), veorq_s8(v257, vsraq_n_u64(vshlq_n_s64(v256, 3uLL), v256, 0x3DuLL))), v259), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x370], 3uLL), v85)));
  v207.i64[1] = vqtbl4q_s8(v260, *&STACK[0x310]).u64[0];
  v260.val[0] = vrev64q_s8(v207);
  *v88.i64[1] = vextq_s8(v260.val[0], v260.val[0], 8uLL);
  return (*(a64 + 8 * ((19 * ((v68 & 0xFFFFFFF0) != 16)) | ((v65 ^ 0x2B60) + 770))))(a7);
}

uint64_t sub_1E333E740(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v80 = v72 - 8;
  v81.i64[0] = v75 + v80 - 7;
  v81.i64[1] = v75 + v80 - 8;
  v82.i64[0] = v75 + v80 - 5;
  v82.i64[1] = v75 + v80 - 6;
  v83.i64[0] = v75 + v80 - 1;
  v83.i64[1] = v75 + v80 - 2;
  v84.i64[0] = v75 + v80 - 3;
  v84.i64[1] = v76 + v80 + v74;
  v85 = vandq_s8(v84, *&STACK[0x3B0]);
  v86 = vandq_s8(v83, *&STACK[0x3B0]);
  v87 = vandq_s8(v82, *&STACK[0x3B0]);
  v88 = vandq_s8(v81, *&STACK[0x3B0]);
  v89 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v90 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v91 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v92 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v93 = vdupq_n_s64(0x38uLL);
  v94 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x380], v92), *&STACK[0x370]), vorrq_s8(vaddq_s64(v92, *&STACK[0x3A0]), *&STACK[0x390]));
  v95 = vorrq_s8(vaddq_s64(v89, *&STACK[0x3A0]), *&STACK[0x390]);
  v96 = vorrq_s8(vsubq_s64(*&STACK[0x380], v89), *&STACK[0x370]);
  v97 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x380], v91), *&STACK[0x370]), vorrq_s8(vaddq_s64(v91, *&STACK[0x3A0]), *&STACK[0x390]));
  v98 = vsubq_s64(*&STACK[0x330], vaddq_s64(v96, v95));
  v99 = vsubq_s64(*&STACK[0x330], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x380], v90), *&STACK[0x370]), vorrq_s8(vaddq_s64(v90, *&STACK[0x3A0]), *&STACK[0x390])));
  v100 = veorq_s8(v99, *&STACK[0x320]);
  v101 = veorq_s8(v98, *&STACK[0x320]);
  v102 = veorq_s8(v98, *&STACK[0x310]);
  v103 = veorq_s8(v99, *&STACK[0x310]);
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), *&STACK[0x300]);
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v103), *&STACK[0x300]);
  v106 = vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL);
  v107 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v108 = veorq_s8(v104, v106);
  v109 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v108);
  v111 = vaddq_s64(v109, v107);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v111, v111), *&STACK[0x2F0]), v111), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v110, v110), *&STACK[0x2F0]), v110), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v114 = vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL);
  v115 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v116 = veorq_s8(v112, v114);
  v117 = vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL);
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v116);
  v119 = veorq_s8(vaddq_s64(v117, v115), *&STACK[0x2C0]);
  v120 = veorq_s8(v118, *&STACK[0x2C0]);
  v121 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v122 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v123 = veorq_s8(v119, v121);
  v124 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v123);
  v126 = veorq_s8(vaddq_s64(v124, v122), *&STACK[0x360]);
  v127 = veorq_s8(v125, *&STACK[0x360]);
  v128 = vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL);
  v129 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v130 = veorq_s8(v126, v128);
  v131 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v130);
  v133 = vaddq_s64(v131, v129);
  v134 = veorq_s8(v133, *&STACK[0x350]);
  v135 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v133, v78), *&STACK[0x340]), v134), vandq_s8(v134, v78));
  v136 = veorq_s8(v132, *&STACK[0x350]);
  v137 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v132, v78), *&STACK[0x340]), v136), vandq_s8(v136, v78)), *&STACK[0x2B0]);
  v138 = veorq_s8(v135, *&STACK[0x2B0]);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v140 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v141 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139), *&STACK[0x2A0]);
  v142 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v140), *&STACK[0x2A0]);
  v143 = vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL);
  v144 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v145 = veorq_s8(v141, v143);
  v146 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v148 = vsubq_s64(*&STACK[0x330], v97);
  v149 = veorq_s8(vaddq_s64(v146, v144), *&STACK[0x290]);
  v185.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v147, v145), *&STACK[0x290]), vnegq_s64(vandq_s8(vshlq_n_s64(v81, 3uLL), v93)));
  v185.val[2] = vshlq_u64(v149, vnegq_s64(vandq_s8(vshlq_n_s64(v82, 3uLL), v93)));
  v150 = veorq_s8(v148, *&STACK[0x320]);
  v151 = veorq_s8(v148, *&STACK[0x310]);
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), *&STACK[0x300]);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153);
  v155 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v154, v154), *&STACK[0x2F0]), v154), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v156 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v157 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v156), *&STACK[0x2C0]);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v159 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158), *&STACK[0x360]);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160);
  v162 = veorq_s8(v161, *&STACK[0x350]);
  v163 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v161, v78), *&STACK[0x340]), v162), vandq_s8(v162, v78)), *&STACK[0x2B0]);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164), *&STACK[0x2A0]);
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL)));
  v167 = vsubq_s64(*&STACK[0x330], v94);
  v185.val[0] = vshlq_u64(veorq_s8(v166, *&STACK[0x290]), vnegq_s64(vandq_s8(vshlq_n_s64(v83, 3uLL), v93)));
  v168 = veorq_s8(v167, *&STACK[0x320]);
  v169 = veorq_s8(v167, *&STACK[0x310]);
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169), *&STACK[0x300]);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171);
  v173 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v172, v172), *&STACK[0x2F0]), v172), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v175 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174), *&STACK[0x2C0]);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v177 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176), *&STACK[0x360]);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178);
  v180 = veorq_s8(v179, *&STACK[0x350]);
  v181 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v179, v78), *&STACK[0x340]), v180), vandq_s8(v180, v78)), *&STACK[0x2B0]);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v183 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182), *&STACK[0x2A0]);
  v185.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL))), *&STACK[0x290]), vnegq_s64(vandq_s8(vshlq_n_s64(v84, 3uLL), v93)));
  *(v77 + v80) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v185, v79)), *(v75 + v80 - 8));
  return (*(a72 + 8 * ((6566 * (v73 == v80)) ^ a2)))();
}

void sub_1E333E748(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  v1 = *(a1 + 16) ^ (1875091903 * ((~a1 & 0x49F1AE8C | a1 & 0xB60E5173) ^ 0x7F842D0F));
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1E333E808(uint64_t a1)
{
  v3 = v1 & 0x61B24AFF;
  v4 = (*(v2 + 8 * ((v1 & 0x61B24AFF) + 6964)))(a1, 3767223957) == 0;
  return (*(v2 + 8 * ((v4 * (((v3 - 1367) ^ 0xFFFFE5AD) + (v3 ^ 0x150F))) ^ v3)))();
}

uint64_t sub_1E333E86C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v10 = v2 + v6 + (v4 & v5);
  STACK[0xA18] = v10;
  *(a1 + v10) = ((v3 + 1) ^ v7) * (v3 + 18);
  return (*(v9 + 8 * (((v10 != 0) * v8) ^ a2)))();
}

uint64_t sub_1E333E874@<X0>(uint64_t a1@<X3>, unint64_t a2@<X8>)
{
  STACK[0x850] = a2;
  LODWORD(STACK[0x9B8]) = v7;
  LOWORD(STACK[0x9BE]) = v2;
  LODWORD(STACK[0x9C0]) = v6;
  LODWORD(STACK[0x9C4]) = v3;
  STACK[0x9C8] = 0x431A33AA2E6D965FLL;
  STACK[0x9D0] = v5;
  return (*(a1 + 8 * (((((v4 - 91) ^ (a2 == 0)) & 1) * ((v4 ^ 0x363F) - 5170)) ^ v4)))();
}

void sub_1E333E8E8(unint64_t a1)
{
  STACK[0x730] = a1;
  LODWORD(STACK[0x924]) = v1;
  LODWORD(STACK[0x57C]) = 16257999;
  JUMPOUT(0x1E333E908);
}

uint64_t sub_1E333E9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v33 = 914963389 * ((2 * ((v32 - 152) & 0x12B1C270) - (v32 - 152) - 313639541) ^ 0xC1B28CF0);
  *(v32 - 152) = &a29;
  *(v32 - 144) = (v31 - 368) ^ v33;
  *(v32 - 136) = v30;
  *(v32 - 128) = (a21 - 1520948538) ^ v33;
  *(v32 - 124) = -1683109072 - v33;
  v34 = (*(v29 + 8 * (v31 + 8308)))(v32 - 152);
  return (*(v29 + 8 * (v31 | (16 * (*(v30 + 24) != ((v31 + 2816) | 0x102) + 16253569)))))(v34);
}

uint64_t sub_1E333EAC4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v13 = *(v8 + 8 * (v10 - 7927));
  v14 = *v5;
  v15 = v9 + 8 + a5;
  *(*v5 + v15) = (HIBYTE(a1) ^ v12) - 2 * ((HIBYTE(a1) ^ v12) & 0x3E ^ HIBYTE(a1) & 2) + 60;
  *(v14 + v15 + 1) = (v11 ^ BYTE2(a1)) - ((2 * (v11 ^ BYTE2(a1))) & 0x78) + 60;
  *(v14 + v15 + 2) = (v7 ^ BYTE1(a1)) - ((2 * (v7 ^ BYTE1(a1))) & 0x78) + 60;
  *(v14 + v15 + 3) = a1 ^ v6;
  return v13();
}

uint64_t sub_1E333EC00()
{
  v4 = (*(v2 + 8 * (4 * (v3 ^ 0x1219) + 3612)))();
  *v0 = 0;
  return v1(v4, 197499219);
}

uint64_t sub_1E333ED50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *STACK[0x600] = STACK[0x6F0];
  STACK[0x770] -= 32;
  return (STACK[0x410])(a1, a2, a3, 16257999);
}

uint64_t sub_1E333ED7C()
{
  v2 = *STACK[0x750];
  v3 = STACK[0x4A8];
  STACK[0x660] = *(v1 + 8 * v0);
  STACK[0x808] = v3;
  STACK[0x3E0] = 0;
  STACK[0x690] = 0;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  return (*(v1 + 8 * ((173 * v5) ^ v0 ^ 0x11C0)))();
}

uint64_t sub_1E333ED98(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return (*(v3 + 8 * ((78 * ((v1 ^ 0xBC58AE5 ^ (87 * (((((v2 - 1127151514) & 0x432EEDA7) - 1174) | 0xC62) ^ 0xCC8))) != 0)) ^ (v2 - 1127151514) & 0x432EEDA7)))();
}

uint64_t sub_1E333EE08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  v5 = STACK[0x928];
  STACK[0x7C8] = STACK[0x928];
  return (*(v4 + 8 * ((((((a4 - 830) | 0x1419) ^ 0xFFFFEB9F) + ((a4 - 1362643431) & 0x513846EF)) * (v5 == 0)) | a4)))(a1, a2, a3, 16215976);
}

void sub_1E333EEC0()
{
  (*(v2 + 8 * ((v0 | 0x702) + 7781)))();
  *(v1 + 24) = 0;
  sub_1E3336128();
}

uint64_t sub_1E333EF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, int a20, unsigned int a21)
{
  a19 = &a14;
  a21 = 1317436891 * ((2 * (&a19 & 0x334DD4B0) - &a19 - 860738738) ^ 0x7CB1B338) + 8154;
  v23 = (*(v22 + 77096))(&a19);
  return (*(v22 + 8 * ((117 * (a20 == 16257999)) ^ v21)))(v23);
}

uint64_t sub_1E333EFE4(uint64_t a1)
{
  v4 = v3 ^ 0x1D92;
  v5 = (*(v2 + 8 * (v4 + 7364)))(a1, *(v1 + 8 * (v4 - 2051)));
  **(v1 + 8 * (v4 ^ 0x846)) = v5;
  return (*(v2 + 8 * (((v5 == 0) * ((((v4 ^ 0xC63) + 6817) ^ 0xFFFFEB1B) + 3 * (v4 ^ 0xC63))) ^ v4)))();
}

uint64_t sub_1E333F0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, void *a6)
{
  v9 = (((v6 - 884913452) & 0x34BEBB4F) - 2218) | 0x212;
  *a6 = a1;
  *a5 = v14;
  v10 = 98 * (v9 ^ 0xB9C);
  v17 = (v9 + 5351) ^ (((&v15 & 0x86B5CC01 | ~(&v15 | 0x86B5CC01)) ^ 0x2123E09C) * v7);
  v16 = v13;
  (*(v8 + 8 * (v9 ^ 0x2E3F)))(&v15);
  v17 = (v10 + 3740) ^ (1824088897 * ((&v15 & 0x34AF33E6 | ~(&v15 | 0x34AF33E6)) ^ 0x93391F7B));
  v16 = v12;
  (*(v8 + 8 * (v10 + 5006)))(&v15);
  return 0;
}

uint64_t sub_1E333F2A0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0x270] = a1;
  *(a1 + 16) = v61 + (((v62 ^ 0xB8D341E2) + 1194114590) ^ ((v62 ^ 0x1505E94) - 22044308) ^ ((v62 ^ 0xB2468625) + 1304000987)) + 10;
  v64 = (*(a7 + 8 * (v60 + 811)))();
  v65 = *(v63 - 256);
  *(STACK[0x270] + 24) = v64;
  return (*(v65 + 8 * ((241 * (v64 != 0)) ^ v60)))(v64, v66, v67, v68, v69, v70, v65, v71, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_1E333F374(uint64_t result)
{
  **(result + 8) = 0;
  *(result + 4) = 242661640;
  return result;
}

void Mib5yocT(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 1;
  }

  v12 = !v8 && a6 != 0 && a7 != 0 && a8 != 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1E333F414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, char *a15, unsigned int a16, unsigned int a17)
{
  v21 = (&a12 ^ 0x5869D362) * v17;
  a16 = -654855621 - v21;
  a17 = v21 + v19 + 1674574889;
  a13 = v21 + 857015740;
  a14 = a9;
  a15 = &a10;
  v22 = (*(v18 + 8 * (v19 + 5383)))(&a12);
  return (*(v18 + 8 * (((a12 == v20) * ((v19 + 588531113) ^ 0x2314562C)) | v19)))(v22);
}

uint64_t sub_1E333F4B8(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16, int a17, int a18, int a19, int a20, int a21, int a22, int a23, int a24, int a25, int a26, int a27, int a28, unsigned int a29, int a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50)
{
  v55 = (*(v54 - 124) - 941896218) & 0x38243DF1;
  v56 = a8 - 5601 + v55;
  v57 = v50 ^ 0x558EC118;
  v58 = a6 ^ 0x26670E33;
  *(v54 - 128) = 0;
  v59 = (v52 + v56);
  *(v54 - 120) = v56;
  v60 = (v55 - 821565972) & 0x30F80E3B;
  v61 = *(a32 + (v59[15] ^ 0xEALL));
  v62 = *(a33 + (v59[2] ^ 0xB7)) ^ 0xB2;
  *(v54 - 124) = v60;
  v63 = v56 | v60 ^ 0xA18;
  *(v54 - 116) = v63;
  v64 = *(v52 + v63) ^ 0xA3;
  v65 = (v62 << 8) & 0xFF00FFFF | ((((*(a34 + v64) >> 3) | (32 * *(a34 + v64))) ^ 0xB3) << 16) | (((41 * *(a35 + (*v59 ^ 0xCBLL))) ^ 0xCE) << 24);
  LODWORD(v64) = *(a34 + (v59[13] ^ 0xAFLL));
  v66 = *(a34 + (v59[9] ^ 0x3ELL));
  v67 = *(a34 + (v59[5] ^ 0xDELL));
  v68 = ((v61 ^ 0xDF) & 0xFF00FFFF | ((((v64 >> 3) | (32 * v64)) ^ 0x1C) << 16) | (((41 * *(a35 + (v59[12] ^ 0xE6))) ^ 0xBC) << 24) | ((*(a33 + (v59[14] ^ 0xA9)) ^ 0x77) << 8)) ^ v51 ^ 0x6EACDB51;
  LODWORD(v64) = ((*(a32 + (v59[7] ^ 0xE7)) ^ 0x60) & 0xFF00FFFF | ((((v67 >> 3) | (32 * v67)) ^ 0xE5) << 16) | (((41 * *(a35 + (v59[4] ^ 0xE3))) ^ 0x57) << 24) | ((*(a33 + (v59[6] ^ 0x68)) ^ 0xD8) << 8)) ^ v57;
  v69 = (*(a32 + (v59[3] ^ 0x13)) ^ 0xB3 | v65) ^ a4 ^ 0xCEA4FBA3;
  v70 = (*(a32 + (v59[11] ^ 0x5BLL)) | ((((v66 >> 3) | (32 * v66)) ^ 0xD7) << 16) | ((*(a33 + (v59[10] ^ 0x20)) ^ 3) << 8) | (((41 * *(a35 + (v59[8] ^ 0x56))) ^ 0x12) << 24)) ^ v58;
  v71 = (v70 - ((2 * v70) & 0x7BCC2998) - 1108994868) ^ *(v54 - 152);
  LODWORD(v64) = (v64 - ((2 * v64) & 0xB2A37178) - 648955716) ^ *(v54 - 156);
  v72 = v68 - ((2 * v68) & 0x84561204) + 1110116610;
  v73 = (v69 + 861339867 - ((2 * v69) & 0x66AE01B6)) ^ *(v54 - 148);
  v74 = v71 ^ 0x4A9A;
  v75 = a28 ^ v72;
  v76 = (v71 ^ 0x1FC94A9Au) >> 24;
  v77 = *(&off_1F5DB1610 + v55 - 5484);
  v78 = (a28 ^ v72) >> 24;
  v79 = *(&off_1F5DB1610 + v55 - 5595) - 4;
  v80 = *(v77 + 4 * (BYTE2(v71) ^ 0x21u)) * v53;
  v81 = ((a28 ^ v72) >> 8);
  v82 = *(&off_1F5DB1610 + (v55 ^ 0x1504)) - 8;
  v83 = *&v82[4 * v81];
  v84 = *(&off_1F5DB1610 + (v55 ^ 0x14B9)) - 8;
  v85 = v83 ^ (*&v79[4 * (v73 ^ 0xC0)] + a7) ^ v80 ^ (*&v84[4 * (BYTE3(v64) ^ 0x54)] + a3);
  v86 = *&v82[4 * ((v64 ^ 0x31A0) >> 8)] ^ (*&v79[4 * v74] + a7) ^ (*&v84[4 * v78] + a3) ^ (*(v77 + 4 * ((v73 ^ 0xC9038120) >> 16)) * v53);
  v87 = (*&v84[4 * v76] + a3) ^ (*&v79[4 * (v64 ^ 0xA0)] + a7) ^ *&v82[4 * ((v73 ^ 0x8120) >> 8)] ^ (*(v77 + 4 * BYTE2(v75)) * v53);
  v88 = (*&v79[4 * v75] + a7) ^ *&v82[4 * HIBYTE(v74)] ^ (*(v77 + 4 * ((v64 ^ 0x9F9F31A0) >> 16)) * v53) ^ (*&v84[4 * ((v73 ^ 0xC9038120) >> 24)] + a3);
  v89 = (v87 - ((2 * v87) & 0x8CA07692) - 967820471) ^ *(v54 - 164);
  v90 = (v86 - ((2 * v86) & 0x6DAA36B2) - 1227547815) ^ *(v54 - 168);
  v91 = (v88 - ((2 * v88) & 0xE101814) + 117967882) ^ *(v54 - 160);
  LOBYTE(v64) = v89 ^ 0xA;
  v92 = a27 ^ (v85 - ((2 * v85) & 0x6689BA06) - 1287332605);
  v93 = HIBYTE(v92);
  v94 = *&v82[4 * (BYTE1(v90) ^ 0x93)] ^ (*&v79[4 * (v91 ^ 0x3D)] + a7) ^ (*(v77 + 4 * ((v89 ^ 0x31E4870A) >> 16)) * v53);
  v95 = (*&v84[4 * ((v91 ^ 0x19FCC23Du) >> 24)] + a3) ^ *&v82[4 * ((v89 ^ 0x870A) >> 8)] ^ (*&v79[4 * (v90 ^ 0xBC)] + a7) ^ (*(v77 + 4 * BYTE2(v92)) * v53);
  v96 = (*&v79[4 * v92] + a7) ^ (*&v84[4 * (HIBYTE(v89) ^ 0xFA)] + a3) ^ *&v82[4 * (BYTE1(v91) ^ 0xC2)] ^ (*(v77 + 4 * (BYTE2(v90) ^ 0x9Cu)) * v53);
  v97 = (*(v77 + 4 * (BYTE2(v91) ^ 0x14u)) * v53) ^ (*&v84[4 * (HIBYTE(v90) ^ 0xA2)] + a3) ^ (*&v79[4 * v64] + a7) ^ *&v82[4 * BYTE1(v92)];
  v98 = v94 ^ (*&v84[4 * v93] + a3);
  v99 = (v96 - ((2 * v96) & 0x15F7BCF6) + 184278651) ^ *(v54 - 172);
  BYTE1(v91) = BYTE1(v99) ^ 0x80;
  v100 = a26 ^ (v95 + 861339867 - ((2 * v95) & 0x66AE01B6));
  v101 = a25 ^ (v98 - ((2 * v98) & 0xCEBE60) - 2140709072);
  v102 = a24 ^ (v97 - ((2 * v97) & 0x785D8A44) - 1137785566);
  v103 = *&v82[4 * BYTE1(v102)];
  v104 = *(v77 + 4 * (BYTE2(v99) ^ 0xF4u)) * v53;
  LODWORD(v64) = (*(v77 + 4 * BYTE2(v102)) * v53) ^ (*&v84[4 * ((v99 ^ 0xB1C805Fu) >> 24)] + a3);
  v105 = *&v82[4 * BYTE1(v101)] ^ (*&v84[4 * HIBYTE(v102)] + a3);
  v106 = (*&v84[4 * HIBYTE(v100)] + a3) ^ (*&v79[4 * v102] + a7);
  v107 = v105 ^ (*(v77 + 4 * BYTE2(v100)) * v53) ^ (*&v79[4 * (v99 ^ 0xBF)] + a7);
  v108 = v104 ^ v103 ^ (*&v79[4 * (a26 ^ (v95 - 37 - ((2 * v95) & 0xB6)))] + a7) ^ (*&v84[4 * HIBYTE(v101)] + a3);
  v109 = v64 ^ (*&v79[4 * v101] + a7) ^ *&v82[4 * BYTE1(v100)];
  v110 = (v107 - ((2 * v107) & 0xC0C834E6) + 1617173107) ^ *(v54 - 180);
  v111 = (*(v77 + 4 * BYTE2(v101)) * v53) ^ v106 ^ *&v82[4 * BYTE1(v91)];
  v112 = (v109 - ((2 * v109) & 0x82596B56) - 1054034517) ^ *(v54 - 176);
  LODWORD(v113) = __ROR4__(a23 ^ (v108 - ((2 * v108) & 0x97AED7A0) - 875074608), 15) ^ 0x16F4A66E;
  HIDWORD(v113) = v113;
  LODWORD(v64) = v113 >> 17;
  v114 = a22 ^ (v111 + 125603555 + (~(2 * v111) | 0xF106E23B));
  v115 = HIBYTE(v110) ^ 0x13;
  v116 = HIBYTE(v114);
  v117 = (*(v77 + 4 * ((v112 ^ 0x29572AB2) >> 16)) * v53) ^ *&v82[4 * (BYTE1(v110) ^ 0x2B)];
  v118 = (*(v77 + 4 * (BYTE2(v110) ^ 0x9Du)) * v53) ^ *&v82[4 * BYTE1(v114)];
  v119 = *&v82[4 * ((v112 ^ 0x2AB2) >> 8)] ^ (*&v79[4 * (v110 ^ 0x84)] + a7);
  v120 = v118 ^ (*&v84[4 * ((v112 ^ 0x29572AB2) >> 24)] + a3) ^ (*&v79[4 * (v64 ^ 0x80)] + a7);
  v121 = v117 ^ (*&v79[4 * v114] + a7) ^ (*&v84[4 * (BYTE3(v64) ^ 0x9C)] + a3);
  v122 = *(v77 + 4 * ((v64 ^ 0x575C3580) >> 16)) * v53;
  v123 = (*&v84[4 * v115] + a3) ^ (*(v77 + 4 * BYTE2(v114)) * v53) ^ (*&v79[4 * (v112 ^ 0x52)] + a7) ^ *&v82[4 * ((v64 ^ 0x3580) >> 8)];
  v124 = a21 ^ (v123 - ((2 * v123) & 0x725A9AA4) + 959270226);
  LODWORD(v64) = *&v84[4 * v116] + a3;
  v125 = a20 ^ (v120 - ((2 * v120) & 0x72E3599A) - 1183732531);
  LODWORD(v64) = ((v119 ^ v64 ^ v122) - 1360258996 - ((2 * (v119 ^ v64 ^ v122)) & 0x5DD83098)) ^ *(v54 - 184);
  v126 = (v121 - ((2 * v121) & 0xCA76E738) + 1698395036) ^ *(v54 - 188);
  BYTE2(v119) = BYTE2(v126) ^ 0x1F;
  v127 = (*&v84[4 * HIBYTE(v124)] + a3) ^ (*&v79[4 * (a20 ^ (v120 - ((2 * v120) & 0x9A) - 51))] + a7) ^ *&v82[4 * ((v126 ^ 0x7251) >> 8)];
  v128 = (*&v84[4 * HIBYTE(v125)] + a3) ^ (*&v79[4 * (v126 ^ 0xB1)] + a7) ^ *&v82[4 * ((v64 ^ 0xD85C) >> 8)] ^ (*(v77 + 4 * BYTE2(v124)) * v53);
  v129 = *&v79[4 * v124] + a7;
  v130 = (*&v84[4 * (HIBYTE(v126) ^ 0xF)] + a3) ^ *&v82[4 * BYTE1(v124)] ^ (*&v79[4 * (v64 ^ 0x5C)] + a7);
  v131 = *&v82[4 * BYTE1(v125)];
  v132 = v130 ^ (*(v77 + 4 * BYTE2(v125)) * v53);
  v133 = v127 ^ (*(v77 + 4 * (BYTE2(v64) ^ 0xBCu)) * v53);
  v134 = v129 ^ v131 ^ (*&v84[4 * ((v64 ^ 0x2D54D85C) >> 24)] + a3) ^ (*(v77 + 4 * BYTE2(v119)) * v53);
  v135 = v133 - ((2 * v133) & 0x61B15AA4) - 1327977134;
  v136 = a19 ^ (v132 - ((2 * v132) & 0xFF10CE02) - 7837951);
  v137 = a18 ^ (v128 - ((2 * v128) & 0xDFE566EA) - 269307019);
  v138 = (v134 - 1699539811 - ((2 * v134) & 0x3566293A)) ^ a50;
  v139 = a17 ^ v135;
  v140 = (*&v84[4 * (HIBYTE(v138) ^ 0xAE)] + a3) ^ (*&v79[4 * v139] + a7) ^ (*(v77 + 4 * BYTE2(v136)) * v53) ^ *&v82[4 * BYTE1(v137)];
  v141 = *&v84[4 * HIBYTE(v139)] + a3;
  v142 = (*&v79[4 * (v138 ^ 0xD)] + a7) ^ (*&v84[4 * HIBYTE(v136)] + a3) ^ *&v82[4 * BYTE1(v139)] ^ (*(v77 + 4 * BYTE2(v137)) * v53);
  v143 = (*&v79[4 * v136] + a7) ^ *&v82[4 * (BYTE1(v138) ^ 0xF7)] ^ (*&v84[4 * HIBYTE(v137)] + a3) ^ (*(v77 + 4 * BYTE2(v139)) * v53);
  v144 = (v142 - ((2 * v142) & 0x30AFF830) + 408419352) ^ a49;
  LOBYTE(v136) = v144 ^ 0xBE;
  v145 = (*&v79[4 * v137] + a7) ^ *&v82[4 * BYTE1(v136)] ^ v141 ^ (*(v77 + 4 * (BYTE2(v138) ^ 0x69u)) * v53);
  v146 = (v145 - ((2 * v145) & 0xF1C928BA) + 2028246109) ^ a48;
  v147 = a16 ^ (v140 - 1360258996 - ((2 * v140) & 0x5DD83098));
  BYTE2(v64) = BYTE2(v146) ^ 0x24;
  v148 = a15 ^ (v143 - ((2 * v143) & 0x9078721E) - 935577329);
  v149 = *&v82[4 * BYTE1(v148)] ^ (*&v79[4 * (v146 ^ 0x68)] + a7);
  v150 = (*&v79[4 * v148] + a7) ^ (*&v84[4 * ((v146 ^ 0xA324CD68) >> 24)] + a3);
  v151 = *(v77 + 4 * ((v144 ^ 0x916D9CBE) >> 16)) * v53;
  v152 = (*&v79[4 * (a16 ^ (v140 + 76 - ((2 * v140) & 0x98)))] + a7) ^ *&v82[4 * (BYTE1(v146) ^ 0x8E)] ^ (*&v84[4 * (HIBYTE(v144) ^ 0x5A)] + a3);
  v153 = v150 ^ (*(v77 + 4 * BYTE2(v147)) * v53) ^ *&v82[4 * (BYTE1(v144) ^ 0xDF)];
  v154 = v149 ^ (*&v84[4 * HIBYTE(v147)] + a3) ^ v151;
  v155 = v152 ^ (*(v77 + 4 * BYTE2(v148)) * v53);
  v156 = (v155 - ((2 * v155) & 0x5C9D10A) - 2098927483) ^ a47;
  v157 = (v154 - 1699539811 - ((2 * v154) & 0x3566293A)) ^ a45;
  v158 = (*&v84[4 * HIBYTE(v148)] + a3) ^ *&v82[4 * ((a16 ^ (v140 + 6220 - ((2 * v140) & 0x3098))) >> 8)] ^ (*&v79[4 * v136] + a7) ^ (*(v77 + 4 * BYTE2(v64)) * v53);
  v159 = a14 ^ (v153 - ((2 * v153) & 0x8835B612) - 1004872951);
  v160 = (v158 - ((2 * v158) & 0x7BEA024) - 2082516974) ^ a46;
  LOWORD(v136) = v157 ^ 0xF70D;
  v161 = v156 ^ 0x428ACE5B;
  v162 = *(v77 + 4 * ((v157 ^ 0xF669F70D) >> 16)) * v53;
  LODWORD(v64) = *&v84[4 * HIBYTE(v159)] + a3;
  v163 = (*&v84[4 * (HIBYTE(v157) ^ 0x3D)] + a3) ^ *&v82[4 * ((v160 ^ 0x8049) >> 8)] ^ (*&v79[4 * v159] + a7);
  v164 = *(v77 + 4 * BYTE2(v159)) * v53;
  v165 = (*&v79[4 * v136] + a7) ^ *&v82[4 * BYTE1(v159)] ^ (*&v84[4 * ((v156 ^ 0x428ACE5Bu) >> 24)] + a3) ^ (*(v77 + 4 * ((v160 ^ 0x21118049u) >> 16)) * v53);
  v166 = v164 ^ (*&v79[4 * (v156 ^ 0xBB)] + a7) ^ (*&v84[4 * ((v160 ^ 0x21118049u) >> 24)] + a3) ^ *&v82[4 * BYTE1(v136)];
  v167 = (v166 - ((2 * v166) & 0x90E75A40) - 931943136) ^ a43;
  v168 = v64 ^ *&v82[4 * BYTE1(v161)] ^ v162 ^ (*&v79[4 * (v160 ^ 0xA9)] + a7);
  v169 = (v165 - ((2 * v165) & 0xC248E22) + 101861137) ^ a44;
  v170 = v163 ^ (*(v77 + 4 * BYTE2(v161)) * v53);
  v171 = (v168 - ((2 * v168) & 0x18D2EC52) + 208238121) ^ a42;
  v172 = a13 ^ (v170 - 1360258996 - ((2 * v170) & 0x5DD83098));
  BYTE1(v163) = BYTE1(v169) ^ 0x93;
  v173 = *(v77 + 4 * ((v169 ^ 0x6095933Bu) >> 16)) * v53;
  v174 = (*&v79[4 * v172] + a7) ^ *&v82[4 * ((v171 ^ 0xE18D) >> 8)] ^ (*&v84[4 * ((v169 ^ 0x6095933Bu) >> 24)] + a3);
  v175 = (*&v84[4 * ((v167 ^ 0x565D9E7A) >> 24)] + a3) ^ *&v82[4 * BYTE1(v172)] ^ (*&v79[4 * (v169 ^ 0xDB)] + a7) ^ (*(v77 + 4 * ((v171 ^ 0x7C56E18D) >> 16)) * v53) ^ 0xF3A2B649;
  LODWORD(v64) = (*&v84[4 * HIBYTE(v172)] + a3) ^ (*&v79[4 * (v171 ^ 0x8D)] + a7) ^ *&v82[4 * ((v167 ^ 0x9E7A) >> 8)] ^ v173;
  v176 = (*(v77 + 4 * BYTE2(v172)) * v53) ^ (*&v79[4 * (v167 ^ 0x7A)] + a7) ^ *&v82[4 * BYTE1(v163)] ^ (*&v84[4 * (HIBYTE(v171) ^ 0xB7)] + a3);
  v177 = v174 ^ (*(v77 + 4 * (BYTE2(v167) ^ 0xB5u)) * v53);
  v178 = (v176 - 1965687856 - ((2 * v176) & 0x15ABF7A0)) ^ a38;
  LODWORD(v84) = (v177 - ((2 * v177) & 0xD4B26C96) + 1784231499) ^ a41;
  LODWORD(v79) = (v175 - ((2 * v175) & 0x866F765E) - 1019757777) ^ a40;
  LODWORD(v82) = (v64 - ((2 * v64) & 0x569A4FE8) + 726476788) ^ a39;
  v179 = *(&off_1F5DB1610 + (v55 ^ 0x14EF)) - 12;
  v180 = *&v179[4 * ((v178 ^ 0xCB23) >> 8)];
  v181 = *(&off_1F5DB1610 + v55 - 5564) - 4;
  v182 = *(&off_1F5DB1610 + v55 - 5552);
  v183 = *(&off_1F5DB1610 + (v55 & 0x82066A66)) - 12;
  v184 = *&v179[4 * ((v84 ^ 0xBFBD) >> 8)];
  v185 = *&v179[4 * ((v79 ^ 0x6CC9) >> 8)];
  v186 = *&v179[4 * ((v82 ^ 0x9011) >> 8)] ^ (-1388873059 * *(v182 + 4 * ((v79 ^ 0x82616CC9) >> 24)));
  LODWORD(v179) = *&v183[4 * ((v178 ^ 0x2991CB23u) >> 16)];
  v187 = *&v183[4 * ((v79 ^ 0x82616CC9) >> 16)];
  v188 = (v186 ^ (v179 >> 12)) & 0xC4367ED3 ^ (v179 << 20) & 0xC4300000 | (v186 ^ (v179 >> 12)) & 0x3BC9812C ^ (v179 << 20) & 0x3BC00000;
  LODWORD(v179) = v178 ^ 0x23 ^ *&v181[4 * (v178 ^ 0xB0)] ^ v185 ^ (-1388873059 * *(v182 + 4 * ((v82 ^ 0xC4A49011) >> 24))) ^ __ROR4__(*&v183[4 * ((v84 ^ 0xCDE6BFBD) >> 16)], 12);
  v189 = *(v54 - 144);
  LODWORD(v183) = v184 ^ v79 ^ 0xC9 ^ __ROR4__(*&v183[4 * ((v82 ^ 0xC4A49011) >> 16)], 12) ^ *&v181[4 * (v79 ^ 0x5A)] ^ (-1388873059 * *(v182 + 4 * ((v178 ^ 0x2991CB23u) >> 24)));
  v190 = *(v54 - 120);
  v191 = *&v181[4 * (v82 ^ 0x82)] ^ v180 ^ v82 ^ 0x11 ^ __ROR4__(v187, 12) ^ (-1388873059 * *(v182 + 4 * ((v84 >> 24) ^ 0xF2)));
  LODWORD(v77) = (v179 - ((2 * v179) & 0x8737E578) + 1134293692) ^ a37;
  v192 = a12 ^ v84 ^ 0xBD ^ *&v181[4 * (v84 ^ 0x2E)] ^ 0xEF8CCAB4 ^ v188;
  LODWORD(v84) = (v191 - ((2 * v191) & 0xD2872332) + 1766035865) ^ a31;
  LODWORD(v179) = (v183 - 1965687856 - ((2 * v183) & 0x15ABF7A0)) ^ a38;
  LODWORD(v82) = (v179 - ((2 * v179) & 0x54E8556C) - 1435227466) ^ a30;
  v193 = (v192 - ((2 * v192) & 0x8BF1C004) + 1173938178) ^ a36;
  LODWORD(v181) = (v77 ^ 0xA510079D) - ((2 * (v77 ^ 0xA510079D)) & 0x10E14CA2) - 2005883311;
  v194 = *(&off_1F5DB1610 + v55 - 5574) - 12;
  v59[4] = v194[(v84 >> 24) ^ 0xD8] ^ 0xCD;
  v195 = *(&off_1F5DB1610 + v55 - 5302) - 12;
  v59[7] = v195[v84 ^ 0xBELL] ^ 0x93;
  v59[11] = v195[((v192 - ((2 * v192) & 4) + 2) ^ a36) ^ 0xE7] ^ 0x70;
  v196 = *(&off_1F5DB1610 + v55 - 5297) - 4;
  v59[14] = v196[BYTE1(v82) ^ 0x45] ^ 0xAE;
  v59[3] = v195[((v77 ^ 0x9D) - ((2 * (v77 ^ 0x9D)) & 0xA2) + 81) ^ 0x3FLL] ^ 0xFB;
  v59[10] = v196[(((v192 - ((2 * v192) & 0xC004) - 8190) ^ a36) >> 8) ^ 0x8BLL] ^ 0x2F;
  v197 = *(&off_1F5DB1610 + v55 - 5606) - 4;
  *(v189 + *(v54 - 116)) = (v197[BYTE2(v181) ^ 0x1DLL] - 93) ^ 0x7B;
  v59[5] = (v197[BYTE2(v84) ^ 0x4DLL] - 93) ^ 0xA5;
  v59[13] = (v197[BYTE2(v82) ^ 0x92] - 93) ^ 0xD6;
  v59[6] = v196[BYTE1(v84) ^ 0x15] ^ 0x99;
  v59[2] = v196[BYTE1(v181) ^ 0xBALL] ^ 0xC4;
  *v59 = v194[(v181 >> 24) ^ 0x25] ^ 0xCA;
  v59[15] = v195[v82 ^ 0xEFLL] ^ 0xC2;
  v59[12] = v194[(v82 >> 24) ^ 0xC5] ^ 0x87;
  v59[9] = (v197[BYTE2(v193) ^ 0x75] - 93) ^ 0x2E;
  v59[8] = v194[HIBYTE(v193) ^ 0xEFLL] ^ 3;
  v198 = v190 + 691207934 < a29;
  if (a29 < 0x2932FEEE != (v190 + 691207934) < 0x2932FEEE)
  {
    v198 = a29 < 0x2932FEEE;
  }

  return (*(*(v54 - 136) + 8 * ((2251 * v198) ^ v55)))();
}

uint64_t sub_1E333F518(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  *a4 = 0;
  *a5 = 0;
  a15 = 476323082 - 1710126949 * (&a15 ^ 0x321B5B90);
  v17 = (*(v16 + 77088))(&a15);
  return (*(v16 + 8 * ((17 * (a16 == 16257999)) | 0x846)))(v17);
}

uint64_t sub_1E333F5A8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  STACK[0x6CC] = 0xD149F2C91468C2FELL;
  v11 = (STACK[0x2C8] & 0x7FEFFEFF ^ 0x7FEFFEFF) + (STACK[0x2C8] & 0x7FEFFEFF);
  v12 = -2009212831 * (LODWORD(STACK[0x2C8]) ^ 0xC5FC7CCA ^ (a1 - 6096));
  v13 = v12 - 75026750;
  v14 = -2009212831 * (LODWORD(STACK[0x2DC]) ^ 0x630F1FFD) - 75026750;
  LODWORD(STACK[0x5B8]) = -2009212831 * (LODWORD(STACK[0x2D0]) ^ (a1 - 7145) ^ 0x630F183B) - 75026750;
  LODWORD(STACK[0x5BC]) = v14;
  v15 = (v11 & (((75026749 - v12) & 0xE3253F02) + ((v12 - 75026750) & 0xE3253F02)) & 0xFFFEFFFF) + (LODWORD(STACK[0x2C0]) ^ 0x173407E2);
  v16 = -2009212831 * (LODWORD(STACK[0x2CC]) ^ 0x173407E2) - 75026750;
  LODWORD(STACK[0x5DC]) = -2009212831 * v15;
  LODWORD(STACK[0x5D8]) = v16;
  v17 = STACK[0x308];
  v18 = -2009212831 * (LODWORD(STACK[0x308]) ^ 0x91482E8D) - 75026750;
  LODWORD(STACK[0x5F8]) = -2009212831 * (LODWORD(STACK[0x2E4]) ^ 0x91482E8D) - 75026750;
  LODWORD(STACK[0x5FC]) = v18;
  v19 = -2009212831 * (LODWORD(STACK[0x2D8]) ^ 0x173407E2) - 75026750;
  LODWORD(STACK[0x5E0]) = -2009212831 * (LODWORD(STACK[0x2D4]) ^ 0x173407E2) - 75026750;
  LODWORD(STACK[0x5E4]) = v19;
  v20 = -2009212831 * (((2 * LODWORD(STACK[0x2E0])) & 0xC6487C04 ^ 0x82486C00) + (LODWORD(STACK[0x2E0]) ^ 0xA6D84917));
  LODWORD(STACK[0x618]) = v13;
  LODWORD(STACK[0x61C]) = v20;
  v21 = -2009212831 * (LODWORD(STACK[0x2FC]) ^ 0x91482E8D) - 75026750;
  LODWORD(STACK[0x600]) = -2009212831 * (LODWORD(STACK[0x314]) ^ 0x91482E8D) - 75026750;
  LODWORD(STACK[0x604]) = v21;
  v22 = ((v17 & 0x883DD861 ^ 0x883DD861) + (v17 & 0x883DD861)) * ((LODWORD(STACK[0x2F8]) ^ 0x630F1FFD) + 1663319554);
  LODWORD(STACK[0x5C0]) = -2009212831 * (LODWORD(STACK[0x31C]) ^ 0x630F1FFD) - 75026750;
  LODWORD(STACK[0x5C4]) = v22;
  v23 = LODWORD(STACK[0x2E8]) ^ 0xC5FC7715;
  v24 = -2009212831 * (LODWORD(STACK[0x2EC]) ^ 0x173407E2) - 75026750;
  LODWORD(STACK[0x5E8]) = -2009212831 * (LODWORD(STACK[0x2F0]) ^ 0x173407E2) - 75026750;
  LODWORD(STACK[0x5EC]) = v24;
  v25 = -2009212831 * v23 - 75026750;
  v26 = LODWORD(STACK[0x2F4]) ^ 0xC5FC7715;
  LODWORD(STACK[0x620]) = v25;
  LODWORD(STACK[0x624]) = -2009212831 * (v26 + 1663319554);
  v27 = -2009212831 * (LODWORD(STACK[0x338]) ^ 0x91482E8D) - 75026750;
  LODWORD(STACK[0x608]) = -2009212831 * (LODWORD(STACK[0x318]) ^ 0x91482E8D) - 75026750;
  LODWORD(STACK[0x60C]) = v27;
  v28 = -2009212831 * (LODWORD(STACK[0x320]) ^ 0x630F1FFD) - 75026750;
  LODWORD(STACK[0x5C8]) = -2009212831 * (LODWORD(STACK[0x328]) ^ 0x630F1FFD) - 75026750;
  LODWORD(STACK[0x5CC]) = v28;
  v29 = -2009212831 * (LODWORD(STACK[0x300]) ^ 0xC5FC7715) - 75026750;
  LODWORD(STACK[0x628]) = -2009212831 * (LODWORD(STACK[0x310]) ^ 0xC5FC7715) - 75026750;
  LODWORD(STACK[0x62C]) = v29;
  LODWORD(STACK[0x688]) = 1178129428;
  LODWORD(STACK[0x684]) = 1218127567;
  STACK[0x654] = 0xA924FDCAF9332495;
  STACK[0x67C] = 0x6807693B5FE27444;
  v30 = LODWORD(STACK[0x33C]) ^ 0x630F1FFD;
  v31 = LODWORD(STACK[0x354]) ^ 0x91482E8D;
  v32 = LODWORD(STACK[0x340]) ^ 0x91482E8D;
  v33 = STACK[0x358];
  LODWORD(STACK[0x5F0]) = -2009212831 * (LODWORD(STACK[0x330]) ^ 0x173407E2) - 75026750;
  LODWORD(STACK[0x5F4]) = -2009212831 * (v33 ^ 0x173407E2) - 75026750;
  STACK[0x698] = 0x2F225416AFC79A52;
  LODWORD(STACK[0x610]) = -2009212831 * v31 - 75026750;
  LODWORD(STACK[0x614]) = -2009212831 * v32 - 75026750;
  LODWORD(STACK[0x648]) = -375330420;
  LODWORD(STACK[0x64C]) = -1952594072;
  STACK[0x664] = 0x8FC0C9B5E255CEC4;
  v34 = -2009212831 * ((((484164093 - v26) | (v26 + 1663319554)) & 0x400A17F5 | 0x23050808) ^ LODWORD(STACK[0x360])) - 75026750;
  LODWORD(STACK[0x5D0]) = -2009212831 * v30 - 75026750;
  LODWORD(STACK[0x5D4]) = v34;
  LODWORD(STACK[0x6A0]) = -931755398;
  LODWORD(STACK[0x694]) = -270646802;
  LODWORD(STACK[0x650]) = -585783300;
  LODWORD(STACK[0x65C]) = 1884139693;
  STACK[0x640] = 0x129868B4113217A3;
  v35 = STACK[0x348];
  LODWORD(STACK[0x630]) = -2009212831 * (LODWORD(STACK[0x344]) ^ 0xC5FC7715) - 75026750;
  LODWORD(STACK[0x634]) = -2009212831 * (v35 ^ 0xC5FC7715) - 75026750;
  LODWORD(STACK[0x638]) = 894163408;
  LODWORD(STACK[0x63C]) = 191254143;
  LODWORD(STACK[0x690]) = -902277532;
  LODWORD(STACK[0x68C]) = -1244205413;
  LODWORD(STACK[0x678]) = 1950176088;
  LODWORD(STACK[0x660]) = -1409308190;
  *(&STACK[0x5B8] + ((v33 ^ 0x173407E2) & 0x3B | v33 & 0x3B ^ 0x19u)) = 741579007;
  v36 = *(a10 + 8);
  STACK[0x6C0] = 0x6050C503EFFCC8E9;
  STACK[0x6D4] = 0xF4463CFA4DD9278BLL;
  LODWORD(STACK[0x6C8]) = 472568529;
  LODWORD(STACK[0x6DC]) = -2040343600;
  LODWORD(STACK[0x6B8]) = 1058188639;
  LODWORD(STACK[0x6BC]) = -1648436380;
  STACK[0x6A8] = 0x57E8F01A2AA2CD2DLL;
  LODWORD(STACK[0x674]) = 873266381;
  STACK[0x66C] = 0x69E752825FBA9A9;
  LODWORD(STACK[0x6B4]) = -956194762;
  LODWORD(STACK[0x6B0]) = -769747008;
  return (*(v10 + 8 * ((1833 * (*v36 != 0)) ^ a1)))();
}

uint64_t sub_1E333FD60()
{
  v2 = *(v1 + 8 * ((216 * (((LODWORD(STACK[0x2B0]) == LODWORD(STACK[0x2A0])) ^ (v0 + 18)) & 1)) ^ v0));
  LODWORD(STACK[0x2D0]) = 16257999;
  return v2();
}

uint64_t sub_1E333FE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a16 = 1317436891 * ((335551690 - (&a14 | 0x14001CCA) + (&a14 | 0xEBFFE335)) ^ 0x5BFC7B43) + 8154;
  a14 = &a12;
  v19 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((2094 * (a15 == ((v17 + 610) ^ 0x5FE))) ^ v18)))(v19);
}

void sub_1E333FF58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  STACK[0x260] = v4 & 0xFFFFFFF8;
  STACK[0x280] = a4;
  STACK[0x270] = v4;
  JUMPOUT(0x1E333FFB0);
}

uint64_t sub_1E33404D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char *a19, int a20, unsigned int a21)
{
  a19 = &a16;
  a21 = 1317436891 * ((-1365208342 - (&a19 | 0xAEA092EA) + (&a19 | 0x515F6D15)) ^ 0xE15CF563) + 8154;
  v23 = (*(v22 + 77096))(&a19);
  return (*(v22 + 8 * ((1592 * (a20 == v21 + 16253841)) ^ v21)))(v23);
}

uint64_t sub_1E3340714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 == 0) ^ v4) & 1 | v2)))();
}

uint64_t sub_1E334073C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v34 = v31 ^ 0xF29;
  v35 = (v31 ^ 0xF29u) + 8627 + (a2 ^ 0xFF7E1FB1DFF7EEDELL) + ((2 * a2) & 0x1BFEFDDBCLL) + 0x7EB7E1FFEFFF15CCLL;
  v36 = ((2 * (a2 + 4)) & 0x157797DECLL) + ((a2 + 4) ^ 0xFFFFD2DFABBCBEF6) + STACK[0x6D0] + 0x2D205443410ALL;
  v37 = __ROR8__(v36 & 0xFFFFFFFFFFFFFFF8, 8);
  v38 = v37 - ((2 * v37 + 0x2D1FA1F3BF05E3C6) & 0x75C00D07A8167688) - 0x6E9028824C71D2D9;
  v39 = v38 ^ 0xBBFDD7D6D5C2B1ALL;
  v38 ^= 0xBFC15AB3914BA400;
  v40 = (__ROR8__(v39, 8) + v38) ^ 0x8174304F61371433;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0x48DE3944125A0254;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ v32;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (((2 * ((v46 + v45) ^ 0x447529156CDBD5D4)) & 0x50AFE6D689874340) - ((v46 + v45) ^ 0x447529156CDBD5D4) + 0x57A80C94BB3C5E5FLL) ^ 0xE1BF27E7083F5509;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (((v49 + v48) | 0x4EC3C0C8DA61D2DELL) - ((v49 + v48) | 0xB13C3F37259E2D21) - 0x4EC3C0C8DA61D2DFLL) ^ 0xF77D30055C3CF323;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ v33;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (((((2 * ((v54 + v53) ^ 0x111389794E5CD960)) & 0xA61BA91267C30EB0) - ((v54 + v53) ^ 0x111389794E5CD960) + 0x2CF22B76CC1E78A7) ^ 0x8D36F9F7F19B7E5) >> (8 * (v36 & 7u))) ^ 0x50;
  v56 = ((2 * (a2 + 4)) & 0x157797DECLL) + ((a2 + 4) ^ 0xFFFFD2DFABBCBEF6) + STACK[0x6D0] + 0x2D205443410BLL;
  v57 = STACK[0x6D0] + v35 - 0x7E3601B1CFF728CALL;
  v58 = __ROR8__(v57 & 0xFFFFFFFFFFFFFFF8, 8);
  v59 = v58 - ((2 * v58 + 0xD1FA1F3BF05E3C6) & 0x1522CB6B6EA8E362) - 0x1EDEC95069289C6CLL;
  v60 = __ROR8__(v59 ^ 0xBBCEBE4B0E0361EFLL, 8);
  v59 ^= 0xFB03985F214EEF5uLL;
  v61 = __ROR8__((v60 + v59) ^ 0x8174304F61371433, 8);
  v62 = *(STACK[0x400] + 8 * v34);
  v63 = (v60 + v59) ^ 0x8174304F61371433 ^ __ROR8__(v59, 61);
  v64 = (v61 + v63) ^ 0x48DE3944125A0254;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = __ROR8__(v64, 8);
  v67 = (v66 + v65 - ((2 * (v66 + v65)) & 0x92A42596A0926910) + 0x495212CB50493488) ^ 0x1E82601493ECC2DFLL;
  v68 = v67 ^ __ROR8__(v65, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ 0xF2620266DFD8DE82;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ 0xB9BEF0CD865D21FDLL;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0x6E1E19DDB33CB23ALL;
  *v57 = ((__ROR8__(v73, 8) + (v73 ^ __ROR8__(v72, 61))) ^ 0x3532CD90FD5B1622uLL) >> (8 * (v57 & 7u));
  v74 = __ROR8__((v57 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v75 = (0x29702F06207D0E1CLL - v74) & 0x79175E2C12C0C2DDLL | (v74 + 0x568FD0F9DF82F1E3) & 0x84E8A1D3ED3F3D22;
  v76 = __ROR8__(v75 ^ 0x4A4885D2AB97D283, 8);
  v75 ^= 0xFE36021C57805D99;
  v77 = (v76 + v75 - ((2 * (v76 + v75)) & 0xE50EC2BE45B2CC5ELL) - 0xD789EA0DD2699D1) ^ 0x73F3511043EE721CLL;
  v78 = v77 ^ __ROR8__(v75, 61);
  v79 = __ROR8__(v77, 8);
  v80 = (((2 * (v79 + v78)) | 0xC127DFD94147335ELL) - (v79 + v78) - 0x6093EFECA0A399AFLL) ^ 0x284DD6A8B2F99BFBLL;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = __ROR8__(v80, 8);
  v83 = __ROR8__((((2 * (v82 + v81)) | 0x6287D6B764F85500) - (v82 + v81) - 0x3143EB5BB27C2A80) ^ 0x6693998471D9DCD7, 8);
  v84 = (((2 * (v82 + v81)) | 0x6287D6B764F85500) - (v82 + v81) - 0x3143EB5BB27C2A80) ^ 0x6693998471D9DCD7 ^ __ROR8__(v81, 61);
  v85 = (v83 + v84) ^ 0xF2620266DFD8DE82;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ 0xB9BEF0CD865D21FDLL;
  v88 = v87 ^ __ROR8__(v86, 61);
  v89 = __ROR8__(v87, 8);
  *(v57 + 1) = ((__ROR8__((((2 * (v89 + v88)) | 0x360AC320C760007CLL) - (v89 + v88) + 0x64FA9E6F9C4FFFC2) ^ 0xF51B784DD08CB204, 8) + ((((2 * (v89 + v88)) | 0x360AC320C760007CLL) - (v89 + v88) + 0x64FA9E6F9C4FFFC2) ^ 0xF51B784DD08CB204 ^ __ROR8__(v88, 61))) ^ 0x3532CD90FD5B1622) >> (8 * ((v57 + 1) & 7));
  v90 = __ROR8__((v57 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v91 = -2 - (((0x29702F06207D0E1CLL - v90) | 0xC0963AD6F9C849DALL) + ((v90 + 0x568FD0F9DF82F1E3) | 0x3F69C5290637B625));
  v92 = v91 ^ 0xF1C9E128409F5984;
  v91 ^= 0x45B766E6BC88D69EuLL;
  v93 = (__ROR8__(v92, 8) + v91) ^ 0x8174304F61371433;
  v94 = v93 ^ __ROR8__(v91, 61);
  v95 = (__ROR8__(v93, 8) + v94) ^ 0x48DE3944125A0254;
  v96 = v95 ^ __ROR8__(v94, 61);
  v97 = __ROR8__(v95, 8);
  v98 = (((2 * (v97 + v96)) & 0x3491A382ECB7AD6) - (v97 + v96) - 0x1A48D1C1765BD6CLL) ^ 0xA98B003C2B3FB4C3;
  v99 = v98 ^ __ROR8__(v96, 61);
  v100 = __ROR8__(v98, 8);
  v101 = (((2 * (v100 + v99)) | 0xBC926A3ADA0D4D3ALL) - (v100 + v99) - 0x5E49351D6D06A69DLL) ^ 0xAC2B377BB2DE781FLL;
  v102 = v101 ^ __ROR8__(v99, 61);
  v103 = __ROR8__(v101, 8);
  v104 = (((2 * (v103 + v102)) & 0xC0B992F3FD58C89ALL) - (v103 + v102) - 0x605CC979FEAC644ELL) ^ 0x261DC64B870EBA4FLL;
  v105 = v104 ^ __ROR8__(v102, 61);
  v106 = __ROR8__(v104, 8);
  v107 = (((2 * (v106 + v105)) | 0x526500C12C79ADD0) - (v106 + v105) - 0x29328060963CD6E8) ^ 0x472C99BD250064D2;
  v108 = v107 ^ __ROR8__(v105, 61);
  v109 = __ROR8__(v107, 8);
  *(v57 + 2) = ((((2 * (v109 + v108)) & 0x243286079BD1E962) - (v109 + v108) + 0x6DE6BCFC32170B4ELL) ^ 0x58D4716CCF4C1D6CuLL) >> (8 * ((v57 + 2) & 7));
  v110 = __ROR8__((v57 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v111 = v110 - ((2 * v110 - 0x52E05E0C40FA1C3ALL) & 0xDABB7CACD8D286FCLL) + 0x43ED8F504BEC3561;
  v112 = v111 ^ 0xDC0265A8D53E5320;
  v111 ^= 0x687CE2662929DC3AuLL;
  v113 = __ROR8__(v112, 8);
  v114 = (((2 * (v113 + v111)) | 0xC1B61E594159C0E2) - (v113 + v111) - 0x60DB0F2CA0ACE071) ^ 0xE1AF3F63C19BF442;
  v115 = v114 ^ __ROR8__(v111, 61);
  v116 = (__ROR8__(v114, 8) + v115) ^ 0x48DE3944125A0254;
  v117 = v116 ^ __ROR8__(v115, 61);
  v118 = (__ROR8__(v116, 8) + v117) ^ 0x57D072DFC3A5F657;
  v119 = v118 ^ __ROR8__(v117, 61);
  v120 = __ROR8__(v118, 8);
  v121 = (2 * (v120 + v119)) & 0x2BA12D4EAE20A528;
  v122 = (v121 - (v120 + v119) + 0x6A2F6958A8EFAD6BLL) ^ 0x984D6B3E773773E9;
  v123 = v122 ^ __ROR8__(v119, 61);
  v124 = (__ROR8__(v122, 8) + v123) ^ 0xB9BEF0CD865D21FDLL;
  v125 = v124 ^ __ROR8__(v123, 61);
  v126 = (__ROR8__(v124, 8) + v125) ^ 0x6E1E19DDB33CB23ALL;
  v127 = v126 ^ __ROR8__(v125, 61);
  v128 = __ROR8__(v126, 8);
  *(v57 + 3) = ((v128 + v127 - ((2 * (v128 + v127)) & 0xE9E0361E02A86F7ALL) - 0xB0FE4F0FEABC843) ^ 0xC1C2D69FFC0F219FLL) >> (8 * ((v57 + 3) & 7));
  return v62(v121, 0x6E1E19DDB33CB23ALL, 0x8174304F61371433, 0x48DE3944125A0254, v36, v55, v56, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

uint64_t sub_1E334074C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = (v2 + v3 - 32);
  v9 = *v7;
  v8 = v7[1];
  v10 = (a1 + v3 - 32);
  *v10 = v9;
  v10[1] = v8;
  LODWORD(v10) = (v5 - 2395) - (v3 & 0xFFFFFFE0) == 1018;
  return (*(v6 + 8 * (((16 * v10) | (v10 << 6)) ^ (a2 + v4 + 1447))))();
}

uint64_t sub_1E33407B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = (*(a7 + 8 * (v7 + 5750)))(v8);
  v11 = *(v9 - 256);
  *(v9 - 208) = 0;
  return (*(v11 + 8 * ((60 * (((((v7 + 303652945) & 0xEDE695EF) + 6905) ^ 0xF83387) == 16257999)) ^ (v7 + 710))))(v10);
}

uint64_t sub_1E33408C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v51 = 473 * ((v46 - 719) ^ 0xAE7);
  *&STACK[0x230] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3A0] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x3B0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x380] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x390] = vdupq_n_s64(0xE79B7CAD81EAE601);
  *&STACK[0x370] = vdupq_n_s64(0x186483527E1519FEuLL);
  *&STACK[0x320] = vdupq_n_s64(0x518DC1691103FE2CuLL);
  *&STACK[0x330] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x300] = vdupq_n_s64(v48);
  *&STACK[0x310] = vdupq_n_s64(0xF9CB24FE88F58F70);
  *&STACK[0x2E0] = vdupq_n_s64(0xD8E8834EF9F28923);
  *&STACK[0x2F0] = vdupq_n_s64(0x4E2EF9620C1AEDB8uLL);
  *&STACK[0x2C0] = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  *&STACK[0x2D0] = vdupq_n_s64(0x2D4A72F74C223B2AuLL);
  *&STACK[0x350] = vdupq_n_s64(0xF8C32E29FF588391);
  *&STACK[0x360] = vdupq_n_s64(v47);
  *&STACK[0x340] = vdupq_n_s64(0x71C80D200006C20uLL);
  *&STACK[0x2A0] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x2B0] = vdupq_n_s64(0x9BDDB8F1D8DC304DLL);
  *&STACK[0x290] = vdupq_n_s64(v50);
  *&STACK[0x220] = xmmword_1E4316E10;
  v52 = (v51 + 7858);
  v53 = (v51 + 1369);
  v54 = *(v45 + 16);
  v55 = v54 + (v52 ^ 0x7882A74D) - ((2 * v54) & 0xF10506E0) != (v53 ^ 0x78828994);
  return (*(v49 + 8 * ((v55 | (v55 << 6)) ^ v51)))(a1, v52, v53, 0, v54, 0x518DC1691103FE2CLL, 0xF9CB24FE88F58F70, 0x4E2EF9620C1AEDB8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_1E3340AFC(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24) ^ (1358806181 * ((((2 * a1) | 0x43C98296) - a1 - 568639819) ^ 0x1ECBADC8));
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = 1317436891 * (((&v7 | 0x74E107A7) + (~&v7 | 0x8B1EF858)) ^ 0xC4E29FD0);
  v9 = *(a1 + 32);
  v10 = v3;
  v8 = v4;
  v11 = 1592118204 - v5;
  v12 = v5 ^ (v2 - 1305605689);
  result = (*(*(&off_1F5DB1610 + v2 - 1305607854) + (v2 ^ 0x4DD1DA24) - 1))(&v7);
  *a1 = v7;
  return result;
}

void sub_1E3340C2C(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4) + 1824088897 * ((((2 * a1) | 0xCA28425E) - a1 - 1695818031) ^ 0x3D7DF24D);
  v3[0] = v1 - 1710126949 * (((v3 | 0x651A712C) - (v3 & 0x651A712C)) ^ 0x57012ABC) + 476318494;
  v2 = *(&off_1F5DB1610 + (v1 ^ 0x10FB)) - 8;
  (*&v2[8 * (v1 ^ 0x3448)])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1E3340D60(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = 63 * ((v3 - 42) ^ 0xC17);
  *a3 = a1;
  *v5 = v11;
  v7 = (v6 - 566855523) & 0x75DBE47E;
  v14 = v10;
  v15 = (v6 + 6456) ^ (1824088897 * ((((&v13 | 0xBC769890) ^ 0xFFFFFFFE) - (~&v13 | 0x4389676F)) ^ 0x1BE0B40D));
  (*(v4 + 8 * (v6 ^ 0x22EE)))(&v13);
  v14 = v12;
  v15 = (v9 + v7 + 622) ^ (1824088897 * ((((&v13 | 0x741665E0) ^ 0xFFFFFFFE) - (~&v13 | 0x8BE99A1F)) ^ 0xD380497D));
  (*(v4 + 8 * (v7 - 1410481906)))(&v13);
  return 0;
}

uint64_t sub_1E3340F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, uint64_t *a16, unsigned int a17, unsigned int a18)
{
  v22 = ((2 * ((&a13 ^ 0x895D912F) & 0x289131E6) - (&a13 ^ 0x895D912F) - 680604135) ^ 0x65A8C54) * v19;
  a14 = v22 - 1965453638;
  a17 = -654855621 - v22;
  a18 = v22 + v21 + 1674572241;
  a15 = a12;
  a16 = &a9;
  v23 = (*(v18 + 8 * (v21 + 2735)))(&a13);
  return (*(v18 + 8 * (((a13 == v20 + 626 * (v21 ^ 0x1ADF) - 3756) * (v21 + 9403)) ^ v21)))(v23);
}

uint64_t sub_1E33455CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xAF8] = v73 ^ 0xBC59953u;
  *(a1 + 16) = (((v73 ^ 0x8A168229) + 1978236375) ^ ((v73 ^ 0x8BE1B8AD) + 1948141395) ^ ((v73 ^ 0xA32B414 ^ ((v72 - 543) | 0x583)) - 171090903)) + 197499229;
  v75 = (*(a72 + 8 * (v72 ^ 0x31FD)))();
  *(a1 + 24) = v75;
  return (*(a72 + 8 * ((50 * (v75 == 0)) ^ v72)))();
}

uint64_t sub_1E3345704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, unint64_t a5@<X8>)
{
  v9 = LOWORD(STACK[0x9E2]);
  if (v9 == 17168)
  {
    goto LABEL_4;
  }

  if (v9 != 33980)
  {
    v10 = STACK[0x3F8];
    if (v9 != 20706)
    {
LABEL_5:
      *STACK[0x408] = 0;
      LODWORD(STACK[0x964]) = 197499219;
      LODWORD(STACK[0x9A8]) = a4;
      v14 = STACK[0x400];
      STACK[0x610] = *(STACK[0x400] + 8 * (v10 - 8476));
      STACK[0x668] = &STACK[0x680];
      v15 = STACK[0x680];
      STACK[0x548] = STACK[0x680];
      return (*(v14 + 8 * ((45 * ((((v10 - 972) ^ (v15 == 0)) & 1) == 0)) ^ (v10 - 972))))();
    }

LABEL_4:
    STACK[0x648] = a5;
    a4 = v8 - 338;
    v10 = STACK[0x3F8];
    goto LABEL_5;
  }

  v11 = 1181 * (STACK[0x3F8] ^ 0x2422);
  v12 = STACK[0x3F8] - 4302;
  v13 = STACK[0x4C8];
  STACK[0x648] = a5;
  LODWORD(STACK[0x964]) = v7;
  return (*(v6 + 8 * (((v13 + v5 == 0) * (v11 - 2351)) ^ v12)))(a1, a2, a3, (v8 - 5));
}

uint64_t sub_1E33461D0()
{
  v3 = LOWORD(STACK[0x93E]);
  LODWORD(STACK[0x3B0]) = v3;
  LODWORD(STACK[0x3A0]) = v3 ^ 0x4CF9;
  v4 = STACK[0x940];
  LODWORD(STACK[0x3C0]) = 197499223;
  LODWORD(STACK[0x330]) = LODWORD(STACK[0x944]) ^ 0xD6A561FA;
  v5 = LOWORD(STACK[0x9BE]);
  LODWORD(STACK[0x390]) = v5;
  LODWORD(STACK[0x380]) = v5 ^ 0xFFFFA60A;
  v6 = STACK[0x9C0];
  LODWORD(STACK[0x320]) = LODWORD(STACK[0x9C4]) ^ 0xD6A561FA;
  STACK[0x3D0] = STACK[0x4C0] + 24;
  LODWORD(STACK[0x350]) = v4;
  LODWORD(STACK[0x370]) = v4 ^ 0xD6A561FA;
  LODWORD(STACK[0x340]) = v6;
  LODWORD(STACK[0x360]) = v6 ^ 0xD6A561FA;
  v7 = *v2;
  v8 = __ROR8__(*v2 & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = ((0x6AF7234D0CC131D4 - v8) & 0x435B154A729201BFLL) + v8 - 0x6AF7234D0CC131D5 - ((v8 - 0x6AF7234D0CC131D5) & 0x435B154A729201BFLL);
  v10 = __ROR8__(v9 ^ 0xAB257711D84E66DLL, 8);
  v9 ^= 0xA2F4B2E684729731;
  v11 = (((v10 + v9) & 0xB9CE2113715ACFF7 ^ 0x184A000231524D61) + ((v10 + v9) & 0x4631DEEC8EA53008 ^ 0x460196A406053009) - 1) ^ 0xBAD6E179B06AC217;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xF5A2F1B9B5D0B209;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x5963B6C555D97F1FLL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x61459D2AF01F24F7;
  v18 = __ROR8__(v17, 8);
  v19 = v17 ^ __ROR8__(v16, 61);
  v20 = (v18 + v19) ^ 0x64C31C027084DE6CLL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8) + v21;
  v23 = __ROR8__((v7 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = (0x6AF7234D0CC131D4 - v23) & 0xC2A16714FA488FC8 | (v23 + 0x1508DCB2F33ECE2BLL) & 0x3D5E98EB05B77037;
  v25 = __ROR8__(v24 ^ 0x8B48252F955E681ALL, 8);
  v24 ^= 0x230EC0B80CA81946uLL;
  v26 = (((2 * v22) | 0x36A4398A31861B6ALL) - v22 - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6;
  v27 = (((2 * (v25 + v24)) & 0xAC7FF88AB7D467A0) - (v25 + v24) - 0x563FFC455BEA33D1) ^ 0x4D5D746523287351;
  v28 = v27 ^ __ROR8__(v24, 61);
  v29 = __ROR8__(v27, 8);
  LOBYTE(v21) = (((__ROR8__(v26, 8) + (v26 ^ __ROR8__(v21, 61))) ^ 0xAB3042D228875C41) >> (8 * (v7 & 7u))) ^ HIBYTE(v0);
  v30 = (v29 + v28 - ((2 * (v29 + v28)) & 0xBB63D01A1060ED3ALL) - 0x224E17F2F7CF8963) ^ 0x281319B4BDE0C494;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = *(STACK[0x3E8] + 8 * v1);
  *v7 = v21 ^ 0xDD;
  v33 = (__ROR8__(v30, 8) + v31) ^ 0x5963B6C555D97F1FLL;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x61459D2AF01F24F7;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((2 * (v37 + v36)) | 0x63B77BB044F1F226) - (v37 + v36) + 0x4E244227DD8706EDLL) ^ 0xD518A1DA52FC277FLL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0x1A2AEBE44253AF03;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v7[1] = (((v42 + v41 - ((2 * (v42 + v41)) & 0x7F0D34FB28D08226) + 0x3F869A7D94684113) ^ 0x94B6D8AFBCEF1D52) >> (8 * ((v7 + 1) & 7u))) ^ BYTE2(v0) ^ 0x60;
  v43 = __ROR8__((v7 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v44 = ((2 * v43 + 0x2A11B965E67D9C56) & 0xC8758E867E4F43EALL) - v43 + 0x6BC5C09CD998FDFLL;
  v45 = __ROR8__(v44 ^ 0xD22C7A87AFCEB9D8, 8);
  v44 ^= 0x7A6A9F103638C884uLL;
  v46 = (v45 + v44) ^ 0xE49D77DF873DBF7ELL;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0xF5A2F1B9B5D0B209;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0x5963B6C555D97F1FLL;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = __ROR8__(v50, 8);
  v53 = (((2 * (v52 + v51)) | 0x316A40512FDE1242) - (v52 + v51) + 0x674ADFD76810F6DFLL) ^ 0xF9F0BD0267F02DD6;
  v54 = v53 ^ __ROR8__(v51, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0x64C31C027084DE6CLL;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0x1A2AEBE44253AF03;
  v7[2] = (((__ROR8__(v57, 8) + (v57 ^ __ROR8__(v56, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v7 + 2) & 7u))) ^ BYTE1(v0) ^ 0xF8;
  v58 = __ROR8__((v7 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v59 = (0xAF7234D0CC131D4 - v58) & 0x126AA61F6F56C0D8 | (v58 - 0x6AF7234D0CC131D5) & 0xE99559E090A93F27;
  v60 = v59 ^ 0x5F83E4240040270ALL;
  v59 ^= 0xF7C501B399B65656;
  v61 = (__ROR8__(v60, 8) + v59) ^ 0xE49D77DF873DBF7ELL;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0xF5A2F1B9B5D0B209;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = __ROR8__(v63, 8);
  v66 = (((2 * (v65 + v64)) | 0x2A5638492DD55EAELL) - (v65 + v64) - 0x152B1C2496EAAF57) ^ 0x4C48AAE1C333D048;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0x61459D2AF01F24F7;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0x64C31C027084DE6CLL;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ 0x1A2AEBE44253AF03;
  v7[3] = v0 ^ 0xA9 ^ (((__ROR8__(v72, 8) + (v72 ^ __ROR8__(v71, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v7 + 3) & 7u)));
  return v32();
}

uint64_t sub_1E3346344@<X0>(int a1@<W3>, unsigned int a2@<W4>, unsigned int a3@<W6>, unsigned int a4@<W8>)
{
  v4 = 158 * (((a1 & 0xF ^ 0xEBF9BE7) + 2011964437) ^ ((a1 & 0xF ^ 0x5368BC0F) + 708510717) ^ ((a1 & 0xF ^ 0x5DD727E8) + 612669468));
  v5 = STACK[0x5A0];
  v6 = *(STACK[0x5A0] + (v4 + 508531490) % 0x3C9u);
  v4 += 1526167479;
  v7 = (2 * (v4 & 0xC3581B6A)) & 0x6B00090 ^ v4 & 0xC3581B6A ^ ((2 * (v4 & 0xC3581B6A)) | 2) & (v4 ^ 0x34A85BD2);
  v8 = (2 * (v4 ^ 0x34A85BD2)) & 0x77F040B8 ^ 0x10104089 ^ ((2 * (v4 ^ 0x34A85BD2)) ^ 0xEFE08172) & (v4 ^ 0x34A85BD2);
  v9 = (4 * v7) & 0x77F040B8 ^ v7 ^ ((4 * v7) | 4) & v8;
  v10 = (4 * v8) & 0x77F040B8 ^ 0x20304019 ^ ((4 * v8) ^ 0xDFC102E4) & v8;
  v11 = v9 ^ (16 * v9) & 0x77F040B0 ^ ((16 * v9) ^ 0x10) & v10 ^ 0xF7F040A8;
  v12 = (16 * v10) & 0xF7F040B0 ^ 0x80F04029 ^ ((16 * v10) ^ 0x7F040B90) & v10;
  v13 = (v11 << 8) & 0xF7F04000 ^ v11 ^ ((v11 << 8) ^ 0xF040B900) & v12;
  v14 = v4 ^ (2 * ((v13 << 16) & 0x77F00000 ^ v13 ^ ((v13 << 16) ^ 0x40B90000) & ((v12 << 8) & 0xF7F00000 ^ 0x7B00000 ^ ((v12 << 8) ^ 0x70400000) & v12))) ^ 0xD7A91B25;
  v15 = 0x43A1F2CA5E947ALL * (((v14 ^ 0x5751470F3C6DC838) + 0x28AEB8F0C39237C8) ^ ((v14 ^ 0x1ED54C57D6D0D16DLL) + 0x612AB3A8292F2E93) ^ ((v14 ^ 0x49840B58704C9869) - 0x49840B58704C9869)) - 0x3118728DEA236166;
  v16 = v15 ^ ((v15 ^ 0x7FE9512D32CD9AF0) - 0x58CD8918E6CBC2F2) ^ ((v15 ^ 0x72C4578AA1D7406CLL) - 0x55E08FBF75D1186ELL) ^ ((v15 ^ 0x57E4306935F7D962) - 0x70C0E85CE1F18160) ^ ((v15 ^ 0x7DEDEEFB72EB5BFCLL) - 0x5AC936CEA6ED03FELL);
  v17 = ((v16 ^ 0x9D22A108E2AB0D0FLL) - 0x3E1171EEC1069473) ^ ((v16 ^ 0x5288593E481DABF2) + 0xE447627944FCD72);
  LODWORD(v16) = __CFADD__(969 * (v17 ^ ((v16 ^ 0xE88E20037EB0FEFFLL) - 0x4BBDF0E55D1D6783)), 0xFB306A54791F65EELL) + (((v17 ^ ((v16 ^ 0xE88E20037EB0FEFFLL) - 0x4BBDF0E55D1D6783)) * 0x3C9uLL) >> 64) + 969 * ((__CFADD__(v16 ^ 0x9D22A108E2AB0D0FLL, 0xC1EE8E113EF96B8DLL) - 1) ^ (__CFADD__(v16 ^ 0x5288593E481DABF2, 0xE447627944FCD72) - 1) ^ (__CFADD__(v16 ^ 0xE88E20037EB0FEFFLL, 0xB4420F1AA2E2987DLL) - 1)) + 1098699960;
  v18 = ((v16 ^ 0xA3F2EB59) + 493995620) ^ v16 ^ ((v16 ^ 0xABB42486) + 355928509) ^ ((v16 ^ 0xB645E6E3) + 147246042) ^ ((v16 ^ 0xFF7FFBF9) + 1107089092);
  v19 = STACK[0x77F];
  LOBYTE(STACK[0x77F]) = v6;
  v20 = (((v18 & 0x6E ^ 0x8C) - 16) ^ ((v18 & 0x6E ^ 0x38) + 92) ^ ((v18 & 0x6E ^ 0x9E) - 2)) + (((v18 & 0x6E ^ 0x68) + 82) ^ ((v18 & 0x6E ^ 0x15) + 45) ^ ((v18 & 0x6E ^ 0x39) + 1)) - 45;
  *(v5 + (v18 ^ 0x417CD2C5)) = v19;
  LOBYTE(v18) = v18 & 9;
  v21 = a4 % ((((v20 ^ 0x37) + 51) ^ v20 ^ ((v20 ^ 0xE4) - 30) ^ ((v20 ^ 0x96) - 108) ^ ((v20 ^ 0xBF) - 69)) ^ 0xFAu);
  v22 = 2 * (v21 & 0x7F) + (v21 ^ 0x177DBF7F);
  LOBYTE(v18) = (((a1 & 9 ^ 0xAE) - 101) ^ ((a1 & 9) - 75) ^ ((a1 & 9 ^ 0x5E) + 107)) + (((a1 & 9 ^ 3) - 10) ^ ((a1 & 9 ^ 0xC1) + 56) ^ ((a1 & 9 ^ 0xCB) + 62)) - ((v18 + 71) ^ (v18 + 7) ^ ((v18 ^ 0xA8) - 81)) - (((v18 ^ 0xF9) - 26) ^ (v18 - 99) ^ ((v18 ^ 0xAC) - 79));
  v23 = (v18 ^ 0xF9) & (2 * (v18 & 0xF8)) ^ v18 & 0xF8;
  v24 = ((2 * (v18 ^ 0x79)) ^ 2) & (v18 ^ 0x79) ^ (2 * (v18 ^ 0x79)) & 0x80;
  LOBYTE(v18) = v18 ^ (2 * (v24 & (4 * v23) ^ v23 ^ ((4 * (v24 ^ 0x81)) & (v24 ^ 0x81) ^ (4 * (v24 ^ 0x81)) & 0x80) & (16 * (v24 & (4 * v23) ^ v23))));
  v25 = 2 * ((a2 % 0xD) & 3) + ((a2 % 0xD) ^ 0x3674FB73);
  v26 = 158 * v22 - 2140939274;
  LODWORD(v18) = (((v18 & 0xEC ^ 0x2A435E09) + 2125586553) ^ ((v18 & 0xEC ^ 0x2ED9ACB4) - 97840442) ^ ((v18 & 0xEC ^ 0x49AF246) + 1349012536)) + v22;
  LOBYTE(v22) = STACK[0x81D];
  LOBYTE(STACK[0x81D]) = *(v5 + (158 * v18 + 311572082) % 0x3C9u);
  *(v5 + v26 % 0x3C9) = v22;
  LOWORD(v18) = 158 * (((a3 % 0xE) ^ 0x7FF9) + ((2 * (a3 % 0xE)) & 0x12)) + 4424 - 969 * (((158 * (((a3 % 0xE) ^ 0x7FF9) + ((2 * (a3 % 0xE)) & 0x12)) + 4424) & 0xFFFE) / 0x3C9);
  v27 = ((a1 ^ 0x2A3EBA4B) + 1764929351) ^ ((a1 ^ 0x275E964B) + 1683129159) ^ ((a1 ^ 0xB193C6F2) - 224406528);
  v28 = a3 - v27 + 1365625382;
  v29 = (v28 ^ 0xAE50B1D9) & (2 * (v28 & 0xAE9A35DA)) ^ v28 & 0xAE9A35DA;
  v30 = ((2 * (v28 ^ 0xE34098E9)) ^ 0x9BB55A66) & (v28 ^ 0xE34098E9) ^ (2 * (v28 ^ 0xE34098E9)) & 0x4DDAAD32;
  v31 = v30 ^ 0x444AA511;
  v32 = (v30 ^ 0x8900820) & (4 * v29) ^ v29;
  v33 = ((4 * v31) ^ 0x376AB4CC) & v31 ^ (4 * v31) & 0x4DDAAD30;
  v34 = (v33 ^ 0x54AA400) & (16 * v32) ^ v32;
  v35 = ((16 * (v33 ^ 0x48900933)) ^ 0xDDAAD330) & (v33 ^ 0x48900933) ^ (16 * (v33 ^ 0x48900933)) & 0x4DDAAD30;
  v36 = v34 ^ 0x4DDAAD33 ^ (v35 ^ 0x4D8A8100) & (v34 << 8);
  v37 = v28 ^ a2 ^ (2 * ((v36 << 16) & 0x4DDA0000 ^ v36 ^ ((v36 << 16) ^ 0x2D330000) & (((v35 ^ 0x502C03) << 8) & 0x4DDA0000 ^ 0x5520000 ^ (((v35 ^ 0x502C03) << 8) ^ 0x5AAD0000) & (v35 ^ 0x502C03))));
  v38 = ((v37 ^ 0x57A8BF) - 1059720840) ^ ((v37 ^ 0xC66D65B3) + 116341884) ^ ((v37 ^ 0xF9476B3B) + 969224948);
  v39 = v18;
  LOBYTE(v36) = *(v5 + v18);
  LODWORD(v18) = v27 - (v38 + 392512853);
  LOBYTE(v27) = STACK[0x8BB];
  LOBYTE(STACK[0x8BB]) = v36;
  *(v5 + v39) = v27;
  v40 = ((-2002476554 - v25) ^ 0xB25A3146) & (2 * ((-2002476554 - v25) & 0x266)) ^ (-2002476554 - v25) & 0x266;
  v41 = ((2 * ((-2002476554 - v25) ^ 0xB25A3506)) ^ 0x201492C0) & ((-2002476554 - v25) ^ 0xB25A3506) ^ (2 * ((-2002476554 - v25) ^ 0xB25A3506)) & 0x1F8A6F60;
  v42 = ((-2002476554 - v25) ^ (2 * ((16 * (v40 ^ 0x1F8A6F60 ^ v41 & (4 * v40))) & 0xFFFFFFCF ^ v40 ^ 0x1F8A6F60 ^ v41 & (4 * v40) ^ ((4 * (v41 ^ 0x8A2120)) & 0x1F8A6F60 ^ ((4 * (v41 ^ 0x8A2120)) ^ 0x7E29BD80) & (v41 ^ 0x8A2120) ^ 0x40) & (16 * (v40 ^ 0x1F8A6F60 ^ v41 & (4 * v40)))))) & 0xBF;
  v43 = a4 + 2025144679 + (((a1 ^ 0xA4E92463) + 507474999) ^ ((a1 ^ 0xB4D676C3) + 234890903) ^ ((a1 ^ 0x103F52A0) - 1427569930));
  LODWORD(v39) = (((v42 ^ 0x8F1ED0C1) + 453030192) ^ ((v42 ^ 0xC02F229) - 1742957624) ^ ((v42 ^ 0x831C224E) + 386024353)) + v25;
  LODWORD(v39) = ((v39 + 1292355491) ^ (166 - v39) ^ (((v39 + 1292355491) ^ 0x75) + 196) ^ (((v39 + 1292355491) ^ 0xC8) + 127) ^ (((v39 + 1292355491) ^ 0xA) + 190)) & 0x9E;
  v44 = v18 + 1124821259;
  v45 = v44 ^ ((v44 ^ 0xA1058E93) + 1968984795) ^ ((v44 ^ 0xC9117231) + 491302521) ^ ((v44 ^ 0x1D4D20BF) - 921371401) ^ ((v44 ^ 0x5EFFFFAB) - 1968823325) ^ 0x77B519F7;
  v46 = 0x1555555555555556 * (((v45 ^ 0x79369C40ACDED14CLL) + 0x6C963BF53212EB4) ^ ((v45 ^ 0x209674432B596355) - 0x209674432B596355) ^ ((v45 ^ 0x59A0E803DB948858) + 0x265F17FC246B77A8)) - 0x1F85C36EE240E2D5;
  v47 = (v46 ^ 0x9FE58B4F9F23C10BLL) & (2 * (v46 & 0xDF85C36F1FA309ABLL)) ^ v46 & 0xDF85C36F1FA309ABLL;
  v48 = ((2 * (v46 ^ 0x8EE50F4BB621D05BLL)) ^ 0xA2C198495305B3E0) & (v46 ^ 0x8EE50F4BB621D05BLL) ^ (2 * (v46 ^ 0x8EE50F4BB621D05BLL)) & 0x5160CC24A982D9F0;
  v49 = v48 ^ 0x51204424A8824810;
  v50 = (v48 ^ 0x800010001E0) & (4 * v47) ^ v47;
  v51 = ((4 * v49) ^ 0x45833092A60B67C0) & v49 ^ (4 * v49) & 0x5160CC24A982D9F0;
  v52 = (v51 ^ 0x41000000A00241C0) & (16 * v50) ^ v50;
  v53 = ((16 * (v51 ^ 0x1060CC2409809830)) ^ 0x160CC24A982D9F00) & (v51 ^ 0x1060CC2409809830) ^ (16 * (v51 ^ 0x1060CC2409809830)) & 0x5160CC24A982D9F0;
  v54 = (v53 ^ 0x1000C00088009900) & (v52 << 8) ^ v52;
  v55 = (((v53 ^ 0x41600C24218240F0) << 8) ^ 0x60CC24A982D9F000) & (v53 ^ 0x41600C24218240F0) ^ ((v53 ^ 0x41600C24218240F0) << 8) & 0x5160CC24A982D900;
  v56 = v54 ^ 0x5160CC24A982D9F0 ^ (v55 ^ 0x4040042080800000) & (v54 << 16);
  v57 = v46 ^ (2 * ((v56 << 32) & 0x5160CC2400000000 ^ v56 ^ ((v56 << 32) ^ 0x2982D9F000000000) & (((v55 ^ 0x1120C804290209F0) << 16) & 0x5160CC2400000000 ^ 0x1140442400000000 ^ (((v55 ^ 0x1120C804290209F0) << 16) ^ 0x4C24A98200000000) & (v55 ^ 0x1120C804290209F0))));
  v58 = ((v57 ^ 0x6C9CB6150C40BE00) - 0xE17EA10E34DB3F3) ^ ((v57 ^ 0x96F342A37D16E7DELL) + 0xB87E1596DE415D3);
  v59 = __CFADD__(12 * (v58 ^ ((v57 ^ 0x852A3FD03DF0E395) + 0x185E9C2A2D02119ALL)), 0x65AF18ABAC0C9CA0) + (((v58 ^ ((v57 ^ 0x852A3FD03DF0E395) + 0x185E9C2A2D02119ALL)) * 0xCuLL) >> 64) + 12 * ((__CFADD__(v57 ^ 0x6C9CB6150C40BE00, 0xF1E815EF1CB24C0DLL) - 1) ^ (__CFADD__(v57 ^ 0x96F342A37D16E7DELL, 0xB87E1596DE415D3) - 1) ^ (__CFADD__(v57 ^ 0x852A3FD03DF0E395, 0x185E9C2A2D02119ALL) - 1)) + 1020413571;
  v60 = v43 ^ ((v43 ^ 0x2AA7B3DF) - 2089730923) ^ ((v43 ^ 0x416EDD22) - 390573462) ^ ((v43 ^ 0xCA3FE197) + 1676242653) ^ ((v43 ^ 0xF7DFFFDE) + 1577676950) ^ 0xE67BF2E6;
  v61 = 0x1745D1745D1745D2 * (((v60 ^ 0x7B2014ECDF8CFADFLL) + 0x4DFEB1320730521) ^ ((v60 ^ 0x5985A8E1F1127D2CLL) - 0x5985A8E1F1127D2CLL) ^ ((v60 ^ 0x22A5BC0D9ECC05A1) + 0x5D5A43F26133FA5FLL)) + 0x16615F40BBD844E5;
  LOBYTE(v60) = STACK[0x959];
  v62 = v61 ^ ((v61 ^ 0x9455F01D94BBD8F6) + 0x7DCB50A230EF64A9) ^ ((v61 ^ 0x55890FF5FD3ECDA8) - 0x43E850B5A6958E09) ^ ((v61 ^ 0x68521D7FC5F523C0) - 0x7E33423F9E5E6061) ^ ((v61 ^ 0xBFEFBDD7F7DB753FLL) + 0x56711D68538FC962);
  v63 = ((v62 ^ 0xAF7469702776C79BLL) - 0x64241EB5796829F4) ^ ((v62 ^ 0xB9E057E0D65497D1) - 0x72B02025884A79BELL);
  LODWORD(v49) = __CFADD__(11 * (v63 ^ ((v62 ^ 0xF561D0AA8913EBLL) + 0x345AE9EA0B68027CLL)), 0x811CBDB73ECE77DALL) + (((v63 ^ ((v62 ^ 0xF561D0AA8913EBLL) + 0x345AE9EA0B68027CLL)) * 0xBuLL) >> 64) + 11 * ((__CFADD__(v62 ^ 0xAF7469702776C79BLL, 0x9BDBE14A8697D60CLL) - 1) ^ (__CFADD__(v62 ^ 0xB9E057E0D65497D1, 0x8D4FDFDA77B58642) - 1) ^ (__CFADD__(v62 ^ 0xF561D0AA8913EBLL, 0x345AE9EA0B68027CLL) - 1)) + 772997144;
  LOBYTE(STACK[0x959]) = *(v5 + (((((v39 ^ 0xFC29F884) + 1066915516) ^ ((v39 ^ 0xA601C0BF) + 1707077249) ^ ((v39 ^ 0x5A283833) - 1718217203)) + 99579889) * (v25 - 913636189) + 911366615 * v25 + 1989382117) % 0x3C9);
  v64 = (((a2 ^ 0xB509932F) - 1889125151) ^ ((a2 ^ 0x2B2987E0) + 289810480) ^ ((a2 ^ 0x8E56DD44) - 1271303540)) - 1592391855;
  v65 = v64 ^ ((v64 ^ 0x35085BE3) - 131599295) ^ ((v64 ^ 0x68F6300E) - 1512464466) ^ ((v64 ^ 0xB5D1C54E) + 2029939438) ^ ((v64 ^ 0xDAFFFEFF) + 399528285) ^ 0xFC9F38A0;
  *(v5 + (158 * v25 - 9062 - 969 * (((158 * v25 - 9062) & 0xFFFEu) / 0x3C9))) = v60;
  LOBYTE(v60) = STACK[0x9F7];
  v66 = (158 * v59 + 1983416822) % 0x3C9u;
  v67 = (v38 + 392512853) ^ (((v38 + 392512853) ^ 0x8879F03) - 534960726) ^ (((v38 + 392512853) ^ 0x716CEF76) - 1711909411) ^ (((v38 + 392512853) ^ 0x5971CA97) - 1309970370) ^ (((v38 + 392512853) ^ 0x37FFFFB7) - 547011298) ^ 0xEFBE734A;
  v68 = 0x199999999999999ALL * (((v67 ^ 0x59C05D65880DF287) + 0x263FA29A77F20D79) ^ ((v67 ^ 0x2C8EDE1BCE204E72) + 0x537121E431DFB18ELL) ^ ((v67 ^ 0x754E837EBEF68AEALL) - 0x754E837EBEF68AEALL)) + 0x26B96651197CFEC5;
  v69 = v68 ^ ((v68 ^ 0xEDA68BCE773C80F2) + 0x61DF472C0A7D9613) ^ ((v68 ^ 0x1FD193EB0896E62BLL) - 0x6C57A0F68A280F34) ^ ((v68 ^ 0xBE3ADC70C0E1323DLL) + 0x32431092BDA024DELL) ^ ((v68 ^ 0x3FCBF7483DF5BDFBLL) - 0x4C4DC455BF4B54E4);
  v70 = ((v69 ^ 0x13C024D81B7F9D19) - 0x7B0267F748019E46) ^ ((v69 ^ 0xA99E3CB7DA467D02) + 0x3EA3806776C781A3);
  LOBYTE(STACK[0x9F7]) = *(v5 + v66);
  *(v5 + v66) = v60;
  LODWORD(v60) = (158 * v49 - 1874459250) % 0x3C9u;
  LOBYTE(v66) = STACK[0xA95];
  LOBYTE(STACK[0xA95]) = *(v5 + v60);
  LODWORD(v69) = (158 * (__CFADD__(10 * (v70 ^ ((v69 ^ 0xC9D82B7243870904) + 0x5EE597A2EF06F5A5)), 0x10AC61FC31892680) + (((v70 ^ ((v69 ^ 0xC9D82B7243870904) + 0x5EE597A2EF06F5A5)) * 0xAuLL) >> 64) + 10 * ((__CFADD__(v69 ^ 0x13C024D81B7F9D19, 0x84FD9808B7FE61BALL) - 1) ^ (__CFADD__(v69 ^ 0xA99E3CB7DA467D02, 0x3EA3806776C781A3) - 1) ^ (__CFADD__(v69 ^ 0xC9D82B7243870904, 0x5EE597A2EF06F5A5) - 1)) + 1982458362) + 304195520) % 0x3C9;
  v71 = 0x1C71C71C71C71C72 * (((v65 ^ 0x3106703DE94CC773) + 0x4EF98FC216B3388DLL) ^ ((v65 ^ 0x6314187C512F3BA1) - 0x6314187C512F3BA1) ^ ((v65 ^ 0x52126841762C942ELL) + 0x2DED97BE89D36BD2)) - 0x1B0F97B04ACAE704;
  v72 = v71 ^ ((v71 ^ 0x498B9FC2B6CFF395) - 0x1F3C1B03F8B73B51) ^ ((v71 ^ 0xCAB6460BBF6A631DLL) + 0x63FE3D350EED5427) ^ ((v71 ^ 0x2A7523DF9026D6BFLL) - 0x7CC2A71EDE5E1E7BLL) ^ ((v71 ^ 0xFFFF7ED7D7FB8EF3) + 0x56B705E9667CB9C9);
  v73 = ((v72 ^ 0xE72975B7FB8568BDLL) - 0x76E949B1CA5A5311) ^ ((v72 ^ 0xDAEF529E2902130CLL) - 0x4B2F6E9818DD28A0);
  *(v5 + v60) = v66;
  v74 = STACK[0x76A];
  LOBYTE(STACK[0x76A]) = *(v5 + v69);
  *(v5 + v69) = v74;
  v75 = ((v44 ^ 0x4DF15A08) - 1717008830) ^ v44 ^ ((v44 ^ 0x83E90896) + 1471206624) ^ ((v44 ^ 0x1A419ED7) - 837270881) ^ ((v44 ^ 0xFFFFEFFF) + 732312503);
  v76 = a1 & 0x3C9;
  v77 = ((v43 ^ 0xF7099AC7) + 1591678349) ^ v43 ^ ((v43 ^ 0x4FC2009D) - 434860073) ^ ((v43 ^ 0xB39D1111) + 441163355) ^ ((v43 ^ 0x5D7FFBFF) - 190221131) ^ v75 ^ 0x28F5EB02;
  v78 = ((v77 ^ 0x923B22B5) + 1896201282) ^ ((v77 ^ 0xD38BF595) + 817195874) ^ ((v77 ^ 0x1886ED3) - 491327448);
  v79 = (((v75 ^ 0xE8DC7AC7) + 1071017531) ^ ((v75 ^ 0x83C696A8) + 1422688854) ^ ((v75 ^ 0x55FECE2A) - 2097882408)) - 1709592539;
  LODWORD(v69) = (v79 ^ 0x5BF051D) & (2 * (v79 & 0xA5BF541E)) ^ v79 & 0xA5BF541E;
  LODWORD(v69) = v79 ^ (2 * (((2 * (v79 ^ 0x47978D31)) & 0x6228D92E ^ 0x9909 ^ ((2 * (v79 ^ 0x47978D31)) ^ 0x4451B25E) & (v79 ^ 0x47978D31)) & (4 * v69) ^ v69));
  v80 = v69 ^ 0xAB484747;
  v81 = 158 * (__CFADD__(9 * (v73 ^ ((v72 ^ 0x6B71A3E89CFFB375) + 0x54E601152DF7727)), 0x3357F037CE78EA8) + (((v73 ^ ((v72 ^ 0x6B71A3E89CFFB375) + 0x54E601152DF7727)) * 9uLL) >> 64) + 9 * ((__CFADD__(v72 ^ 0xE72975B7FB8568BDLL, 0x8916B64E35A5ACEFLL) - 1) ^ (__CFADD__(v72 ^ 0xDAEF529E2902130CLL, 0xB4D09167E722D760) - 1) ^ (__CFADD__(v72 ^ 0x6B71A3E89CFFB375, 0x54E601152DF7727) - 1)) + 613308040) + 1881582702;
  LODWORD(v73) = ((v69 & 7 ^ 0x6745C794) + 300699124) ^ ((v69 & 7) + 1999522936) ^ ((v69 & 7 ^ 0x18EAEDA) + 1999054014);
  LOBYTE(v69) = STACK[0x808];
  LOBYTE(STACK[0x808]) = *(v5 + v81 % 0x3C9);
  v82 = v38 + (((v75 ^ 0x28F5EB02 ^ v65 ^ 0xCE4CE403) + 833821693) ^ ((v75 ^ 0x28F5EB02 ^ v65 ^ 0x289DD16C) - 681431404) ^ ((v75 ^ 0x28F5EB02 ^ v65 ^ 0x3E8F94D4) - 1049597140)) + v78 - 1922569718;
  *(v5 + v81 % ((((v76 ^ 0x47535BD1) - 1383227087) ^ ((v76 ^ 0x7184DC6C) - 1688590706) ^ ((v76 ^ 0x36D78474) - 603357546)) + (((v76 ^ 0xBC41DEE0) - 1815887007) ^ ((v76 ^ 0x9B606E5F) - 1260227616) ^ ((v76 ^ 0x2721B0BF) + 144944448)) - 442570410)) = v69;
  v83 = v82 ^ ((v82 ^ 0x5F063BFD) - 118052010) ^ ((v82 ^ 0x9815E556) + 1072002559) ^ ((v82 ^ 0x24F34F03) - 2096898132) ^ ((v82 ^ 0xBBEFFEFF) + 471821912) ^ 0xD592B84F;
  v84 = 0x2AAAAAAAAAAAAAABLL * (((v83 ^ 0x1099E0792D3D4B5CLL) - 0x1099E0792D3D4B5CLL) ^ ((v83 ^ 0x1EC395E636876361) - 0x1EC395E636876361) ^ ((v83 ^ 0xE5A759F9627FF25) - 0xE5A759F9627FF25)) + 0xD7E3E4558D5F132;
  v85 = v84 ^ ((v84 ^ 0xCB4F51DB9A625BD9) + 0x39CE90614C3CF00DLL) ^ ((v84 ^ 0x967A044079621247) + 0x64FBC5FAAF3CB993) ^ ((v84 ^ 0xF682239775AEE43) - 0x2161C7C5EFBBA69) ^ ((v84 ^ 0x5F2349E7BDFBF3F7) - 0x525D77A2945AA7DDLL);
  v86 = ((v85 ^ 0xFE04463BDED477AALL) + 0x5EF68EC737C3717BLL) ^ ((v85 ^ 0xE44D1576C379D126) + 0x44BFDD8A2A6ED7F7);
  LODWORD(v85) = __CFADD__(6 * (v86 ^ ((v85 ^ 0x17376D08340CF2A6) - 0x483A5A0B22E40B89)), 0xEEB237A57BBA0E1ELL) + (((v86 ^ ((v85 ^ 0x17376D08340CF2A6) - 0x483A5A0B22E40B89)) * 6uLL) >> 64) + 6 * ((__CFADD__(v85 ^ 0xFE04463BDED477AALL, 0x5EF68EC737C3717BLL) - 1) ^ (__CFADD__(v85 ^ 0xE44D1576C379D126, 0x44BFDD8A2A6ED7F7) - 1) ^ (__CFADD__(v85 ^ 0x17376D08340CF2A6, 0xB7C5A5F4DD1BF477) - 1)) + 1657941401;
  LOBYTE(v38) = ((-98 - v73) ^ 0x21) & (2 * ((-98 - v73) & 0x28)) | (-98 - v73) & 0x28;
  LOBYTE(v72) = ((2 * ((-98 - v73) ^ 0x21)) ^ 0x12) & ((-98 - v73) ^ 0x21) ^ (2 * ((-98 - v73) ^ 0x21)) & 0x88;
  LOBYTE(v49) = v72 ^ 0x89;
  LOBYTE(v72) = v72 & (4 * v38) ^ v38;
  LOBYTE(v38) = STACK[0x8A6];
  LOBYTE(v49) = (-98 - v73) ^ (2 * (v72 ^ 0x89 ^ (((4 * v49) ^ 0x20) & v49 ^ (4 * v49) & 0x88) & (16 * v72)));
  LOBYTE(STACK[0x8A6]) = *(v5 + (158 * v73 - 22482 - 969 * (((158 * v73 - 22482) & 0xFFFEu) / 0x3C9)));
  v87 = (v78 - 747493812) ^ (((v78 - 747493812) ^ 0xE353F3) - 768993537) ^ (((v78 - 747493812) ^ 0xE2152ECD) + 819751873) ^ (((v78 - 747493812) ^ 0xB07F3033) + 1656124735) ^ (((v78 - 747493812) ^ 0x7FBFF7FF) - 1384729869) ^ 0x4068199D;
  v88 = 0x2492492492492493 * (((v87 ^ 0xFEA5F2D9EC149BLL) - 0xFEA5F2D9EC149BLL) ^ ((v87 ^ 0xDE8115D6284F69DELL) + 0x217EEA29D7B09622) ^ ((v87 ^ 0xDE7FB0249CFDDE2ALL) + 0x21804FDB630221D6)) + 0x1C042E9E39E23A0;
  v89 = (v88 ^ 0x43E45E15B81D1059) & (2 * (v88 & 0x6BF69884215C511DLL)) ^ v88 & 0x6BF69884215C511DLL;
  v90 = ((2 * (v88 ^ 0x7A05E1DF88D1263)) ^ 0xD8AD8D33B3A286FCLL) & (v88 ^ 0x7A05E1DF88D1263) ^ (2 * (v88 ^ 0x7A05E1DF88D1263)) & 0x6C56C699D9D1437ELL;
  v91 = v90 ^ 0x2452428848514102;
  v92 = (v90 ^ 0x480484118180007CLL) & (4 * v89) ^ v89;
  v93 = ((4 * v91) ^ 0xB15B1A6767450DF8) & v91 ^ (4 * v91) & 0x6C56C699D9D1437CLL;
  v94 = (v93 ^ 0x2052020141410170) & (16 * v92) ^ v92;
  v95 = ((16 * (v93 ^ 0x4C04C49898904206)) ^ 0xC56C699D9D1437E0) & (v93 ^ 0x4C04C49898904206) ^ (16 * (v93 ^ 0x4C04C49898904206)) & 0x6C56C699D9D14370;
  v96 = (v95 ^ 0x4444409999100300) & (v94 << 8) ^ v94;
  v97 = (((v95 ^ 0x2812860040C1401ELL) << 8) ^ 0x56C699D9D1437E00) & (v95 ^ 0x2812860040C1401ELL) ^ ((v95 ^ 0x2812860040C1401ELL) << 8) & 0x6C56C699D9D14300;
  v98 = v97 ^ 0x281046000890017ELL;
  v99 = v96 ^ 0x6C56C699D9D1437ELL ^ (v97 ^ 0x44468099D1410000) & (v96 << 16);
  v100 = (((((v73 - 27) ^ 8) + 28) ^ (8 - v73)) ^ (((v73 - 27) ^ 6) + 22)) & 0x1E;
  v101 = v88 ^ (2 * ((v99 << 32) & 0x6C56C69900000000 ^ v99 ^ ((v99 << 32) ^ 0x59D1437E00000000) & ((v98 << 16) & 0x6C56C69900000000 ^ 0x2846060800000000 ^ ((v98 << 16) ^ 0x4699D9D100000000) & v98)));
  v102 = ((v101 ^ 0x6C918A048E83D3F1) + 0x7C6DBD4BBF039DE0) ^ ((v101 ^ 0xA7D0F2641CD112DCLL) - 0x48D33AD4D2AEA30DLL);
  LODWORD(v98) = (__CFADD__(v101 ^ 0x6C918A048E83D3F1, 0x7C6DBD4BBF039DE0) - 1) ^ (__CFADD__(v101 ^ 0xA7D0F2641CD112DCLL, 0xB72CC52B2D515CF3) - 1);
  *(v5 + (((((v100 ^ 0xAAAB0B0D) - 498421369) ^ ((v100 ^ 0x583E9A56) + 283058398) ^ ((v100 ^ 0xF295915B) - 1166791727)) + 418159619 + (((v49 & 0x9E ^ 0x6C1E4988) + 506565021) ^ ((v49 & 0x9E ^ 0x73697A3A) + 21406255) ^ ((v49 & 0x9E ^ 0x1F773328) + 1834543933))) * (v73 - 1990822471) + 738316514 * v73 - 1078772398) % 0x3C9) = v38;
  v103 = 158 * (__CFADD__(7 * (v102 ^ ((v101 ^ 0xE8BAE9E700AC16CCLL) - 0x7B92157CED3A71DLL)), 0x9ACA70838789CB50) + (((v102 ^ ((v101 ^ 0xE8BAE9E700AC16CCLL) - 0x7B92157CED3A71DLL)) * 7uLL) >> 64) - (v98 ^ (__CFADD__(v101 ^ 0xE8BAE9E700AC16CCLL, 0xF846DEA8312C58E3) - 1)) + 8 * (v98 ^ (__CFADD__(v101 ^ 0xE8BAE9E700AC16CCLL, 0xF846DEA8312C58E3) - 1)) + 1003853267);
  v104 = (v103 + 648323860) ^ (((v103 + 648323860) ^ 0x36448776) - 573800838) ^ (((v103 + 648323860) ^ 0xB3EB5ED0) + 1482926048) ^ (((v103 + 648323860) ^ 0xEF6332A9) + 82561959) ^ (((v103 + 648323860) ^ 0x7EBBEDFF) - 1791814415) ^ 0xAECFA70F;
  v105 = 0x43A1F2CA5E947ALL * (((v104 ^ 0x43906AA090D2A73BLL) - 0x43906AA090D2A73BLL) ^ ((v104 ^ 0x791544506B6C6B46) + 0x6EABBAF949394BALL) ^ ((v104 ^ 0x3A852EF041066D82) + 0x457AD10FBEF9927ELL)) - 0x719DA6A8EF3AD232;
  v106 = v105 ^ ((v105 ^ 0x4FBA14FE14D8BC17) + 0x44E5C05F4E59CDA1) ^ ((v105 ^ 0x964B67C581A505F4) - 0x62EB4C9B24DB8BBCLL) ^ ((v105 ^ 0xC2BEFBFA4B74E854) - 0x361ED0A4EE0A661CLL) ^ ((v105 ^ 0xEFEFA39F7B77DFFFLL) - 0x1B4F88C1DE0951B7);
  v107 = ((v106 ^ 0x1C1CD2CD687BF484) - 0x155957A884B14D59) ^ ((v106 ^ 0x42B8BA44567B601BLL) - 0x4BFD3F21BAB1D9C6);
  LODWORD(v106) = __CFADD__(969 * (v107 ^ ((v106 ^ 0xAA0443D79B7E1AD7) + 0x5CBE394D884B5CF6)), 0xA607E69FB2662FDLL) + (((v107 ^ ((v106 ^ 0xAA0443D79B7E1AD7) + 0x5CBE394D884B5CF6)) * 0x3C9uLL) >> 64) + 969 * ((__CFADD__(v106 ^ 0x1C1CD2CD687BF484, 0xEAA6A8577B4EB2A7) - 1) ^ (__CFADD__(v106 ^ 0x42B8BA44567B601BLL, 0xB402C0DE454E263ALL) - 1) ^ (__CFADD__(v106 ^ 0xAA0443D79B7E1AD7, 0x5CBE394D884B5CF6) - 1)) + 1100851184;
  LODWORD(v102) = (v106 ^ 0x3D501391) & (2 * (v106 & 0xBE625BD1)) ^ v106 & 0xBE625BD1;
  LODWORD(v107) = ((2 * (v106 ^ 0x1DD43791)) ^ 0x476CD880) & (v106 ^ 0x1DD43791) ^ (2 * (v106 ^ 0x1DD43791)) & 0xA3B66C40;
  LODWORD(v73) = v107 ^ 0xA0922440;
  LODWORD(v107) = (v107 ^ 0x3004800) & (4 * v102) ^ v102;
  LODWORD(v102) = ((4 * v73) ^ 0x8ED9B100) & v73 ^ (4 * v73) & 0xA3B66C40;
  LODWORD(v107) = (v102 ^ 0x82902000) & (16 * v107) ^ v107;
  LODWORD(v102) = ((16 * (v102 ^ 0x21264C40)) ^ 0x3B66C400) & (v102 ^ 0x21264C40) ^ (16 * (v102 ^ 0x21264C40)) & 0xA3B66C40;
  LODWORD(v107) = v107 ^ 0xA3B66C40 ^ (v102 ^ 0x23264400) & (v107 << 8);
  v108 = v106 ^ (2 * ((v107 << 16) & 0x23B60000 ^ v107 ^ ((v107 << 16) ^ 0x6C400000) & (((v102 ^ 0x80902840) << 8) & 0x23B60000 ^ 0x1920000 ^ (((v102 ^ 0x80902840) << 8) ^ 0x366C0000) & (v102 ^ 0x80902840))));
  v109 = v108 ^ 0xB90E8351;
  LODWORD(v108) = v108 & 0x34;
  LODWORD(v98) = (((v108 ^ 0xFAD3EEF8) + 777949517) ^ (v108 + 619610043) ^ ((v108 ^ 0x4E387B5F) - 1699412756)) + (((v108 ^ 0x827CD138) + 784852355) ^ ((v108 ^ 0xB6948406) + 439333053) ^ ((v108 ^ 0x34E8552E) - 1739365995)) + 1846758836;
  v110 = 0x3333333333333334 * (((v65 ^ 0x21CE2B12846B3CF1) - 0x61CE2B12846B3CF1) ^ ((v65 ^ 0xA5B330D15254743) - 0xA5B330D15254743) ^ ((v65 ^ 0x2B95181F5F01134ELL) - 0x6B95181F5F01134ELL)) - 0x550D2FCA3481729DLL;
  v111 = v110 ^ ((v110 ^ 0xB34BCBB1B017D383) + 0x3B0BA94FBCD72A50) ^ ((v110 ^ 0x32AEB11E06C3B0D0) - 0x45112C1FF5FCB6E3) ^ ((v110 ^ 0x2A9C9AD4EA3C8E2FLL) - 0x5D2307D51903881CLL) ^ ((v110 ^ 0xDCC67D7AAFD7EB4FLL) + 0x54861F84A3171284);
  v112 = ((v111 ^ 0xE26453709A67EA6ALL) + 0x4DD310941B42CE12) ^ ((v111 ^ 0x185FAA6E4F3F3579) - 0x4817167531E5EEFDLL);
  LODWORD(v111) = __CFADD__(5 * (v112 ^ ((v111 ^ 0x8D84641F2667D920) + 0x223327FBA742FD5CLL)), 0xC7D3A584C57D5493) + (((v112 ^ ((v111 ^ 0x8D84641F2667D920) + 0x223327FBA742FD5CLL)) * 5uLL) >> 64) + 5 * ((__CFADD__(v111 ^ 0xE26453709A67EA6ALL, 0x4DD310941B42CE12) - 1) ^ (__CFADD__(v111 ^ 0x185FAA6E4F3F3579, 0xB7E8E98ACE1A1103) - 1) ^ (__CFADD__(v111 ^ 0x8D84641F2667D920, 0x223327FBA742FD5CLL) - 1)) + 486611642;
  LODWORD(v102) = (v111 ^ 0xD0FEC067) & (2 * (v111 & 0xE2FEE546)) ^ v111 & 0xE2FEE546;
  LODWORD(v112) = ((2 * (v111 ^ 0x510388E3)) ^ 0x67FADB4A) & (v111 ^ 0x510388E3) ^ (2 * (v111 ^ 0x510388E3)) & 0xB3FD6DA4;
  v113 = v112 ^ 0x900524A5;
  LODWORD(v112) = (v112 ^ 0x3F80900) & (4 * v102) ^ v102;
  LODWORD(v102) = ((4 * v113) ^ 0xCFF5B694) & v113 ^ (4 * v113) & 0xB3FD6DA4;
  LODWORD(v112) = (v102 ^ 0x83F52480) & (16 * v112) ^ v112;
  LODWORD(v102) = ((16 * (v102 ^ 0x30084921)) ^ 0x3FD6DA50) & (v102 ^ 0x30084921) ^ (16 * (v102 ^ 0x30084921)) & 0xB3FD6DA0;
  LODWORD(v112) = v112 ^ 0xB3FD6DA5 ^ (v102 ^ 0x33D44800) & (v112 << 8);
  LOBYTE(v98) = *(v5 + v98);
  LODWORD(v111) = v111 ^ (2 * ((v112 << 16) & 0x33FD0000 ^ v112 ^ ((v112 << 16) ^ 0x6DA50000) & (((v102 ^ 0x802925A5) << 8) & 0x33FD0000 ^ 0x2900000 ^ (((v102 ^ 0x802925A5) << 8) ^ 0x7D6D0000) & (v102 ^ 0x802925A5))));
  LOBYTE(STACK[0x944]) = *(v5 + v109);
  *(v5 + (v103 + 304978980) % 0x3C9u) = v98;
  LODWORD(v85) = (158 * v85 + 38268438) % 0x3C9u;
  LOBYTE(v102) = STACK[0x9E2];
  LOBYTE(STACK[0x9E2]) = *(v5 + v85);
  *(v5 + v85) = v102;
  LOBYTE(v85) = ((v80 ^ v65 ^ 0x52) - 82) ^ ((v80 ^ v65 ^ 0x39) - 57) ^ ((v80 ^ v65 ^ 0xCE) + 50);
  LODWORD(v65) = v78 + 1386392365;
  LODWORD(v111) = 158 * (((((2 * (v111 & 3)) ^ 0x70A2908F) + 2056682) ^ (2 * (v111 & 3) - 54654585) ^ (((2 * (v111 & 3)) ^ 0x16928C9F) + 1714388474)) + (((v111 ^ 0x4A38D7FF) - 327565082) ^ ((v111 ^ 0x110AFACB) - 1219760686) ^ ((v111 ^ 0x1D7C1333) - 1153629142))) + 2128440737;
  v114 = v111 ^ ((v111 ^ 0xD391E29) - 1347068372) ^ ((v111 ^ 0x1FF624D7) - 1116052266) ^ ((v111 ^ 0xF1437A3C) + 1406089791) ^ ((v111 ^ 0xBEFFFF3F) + 477347646) ^ 0x72BB5DF4;
  v115 = 0x43A1F2CA5E947ALL * (((v114 ^ 0x66D8E2F8906B6BF6) + 0x19271D076F94940ALL) ^ ((v114 ^ 0x69CDA9CBE039D8ACLL) + 0x163256341FC62754) ^ ((v114 ^ 0xF154B335F9A5153) - 0xF154B335F9A5153)) - 0x283C14088B1F87C2;
  v116 = (v115 ^ 0xF042DB1FECC665EALL) & (2 * (v115 & 0xF86A935F8CD6740CLL)) ^ v115 & 0xF86A935F8CD6740CLL;
  v117 = ((2 * (v115 ^ 0x8046DD33EC660DE2)) ^ 0xF0589CD8C160F3DCLL) & (v115 ^ 0x8046DD33EC660DE2) ^ (2 * (v115 ^ 0x8046DD33EC660DE2)) & 0x782C4E6C60B079ECLL;
  v118 = v117 ^ 0x824422420900822;
  v119 = (v117 ^ 0x60080C4840207040) & (4 * v116) ^ v116;
  v120 = ((4 * v118) ^ 0xE0B139B182C1E7B8) & v118 ^ (4 * v118) & 0x782C4E6C60B079ECLL;
  v121 = (v120 ^ 0x60200820008061A0) & (16 * v119) ^ v119;
  v122 = ((16 * (v120 ^ 0x180C464C60301846)) ^ 0x82C4E6C60B079EE0) & (v120 ^ 0x180C464C60301846) ^ (16 * (v120 ^ 0x180C464C60301846)) & 0x782C4E6C60B079E0;
  v123 = (v122 ^ 0x4464400001800) & (v121 << 8) ^ v121;
  v124 = (((v122 ^ 0x7828082860B0610ELL) << 8) ^ 0x2C4E6C60B079EE00) & (v122 ^ 0x7828082860B0610ELL) ^ ((v122 ^ 0x7828082860B0610ELL) << 8) & 0x782C4E6C60B07900;
  v125 = v123 ^ 0x782C4E6C60B079EELL ^ (v124 ^ 0x280C4C6020300000) & (v123 << 16);
  v126 = v115 ^ (2 * ((v125 << 32) & 0x782C4E6C00000000 ^ v125 ^ ((v125 << 32) ^ 0x60B079EE00000000) & (((v124 ^ 0x5020020C408011EELL) << 16) & 0x782C4E6C00000000 ^ 0x30000E4C00000000 ^ (((v124 ^ 0x5020020C408011EELL) << 16) ^ 0x4E6C60B000000000) & (v124 ^ 0x5020020C408011EELL))));
  v127 = ((v126 ^ 0x7BB95CB2464E4FF2) + 0x70F3CA7E590A0CAFLL) ^ ((v126 ^ 0xC1CD6DAB006C53EBLL) - 0x35780498E0D7EF48);
  LODWORD(v126) = __CFADD__(969 * (v127 ^ ((v126 ^ 0x7206AE460B949BC9) + 0x794C388A14D0D896)), 0x10E3C15B0716064BLL) + (((v127 ^ ((v126 ^ 0x7206AE460B949BC9) + 0x794C388A14D0D896)) * 0x3C9uLL) >> 64) + 969 * ((__CFADD__(v126 ^ 0x7BB95CB2464E4FF2, 0x70F3CA7E590A0CAFLL) - 1) ^ (__CFADD__(v126 ^ 0xC1CD6DAB006C53EBLL, 0xCA87FB671F2810B8) - 1) ^ (__CFADD__(v126 ^ 0x7206AE460B949BC9, 0x794C388A14D0D896) - 1)) + 97815964;
  v128 = ((v126 ^ 0x1527AF45) - 284369907) ^ v126 ^ ((v126 ^ 0x8A048FAF) + 1882193127) ^ ((v126 ^ 0xE58850A3) + 530785259) ^ ((v126 ^ 0x7F7FFCFF) - 2058055753);
  v129 = v65 ^ ((v65 ^ 0x2C17B63F) - 182030372) ^ ((v65 ^ 0xCFDE93DE) + 384780859) ^ ((v65 ^ 0x6AB9FC01) - 1282923034) ^ ((v65 ^ 0xAFBEFFFB) + 1989092896) ^ 0x4B97058A;
  v130 = 0x5555555555555556 * (((v129 ^ 0x2D174BC58138BFABLL) - 0x2D174BC58138BFABLL) ^ ((v129 ^ 0x4E4BC045F6650E78) + 0x31B43FBA099AF188) ^ ((v129 ^ 0x635C8B801A049242) + 0x1CA3747FE5FB6DBELL)) - 0x135FEAF64CA6F035;
  v131 = (2 * (v130 & 0x135FEAF6958D07EALL)) & 0x2AF818803020F80 ^ v130 & 0x135FEAF6958D07EALL ^ ((2 * (v130 & 0x135FEAF6958D07EALL)) | 2) & (v130 ^ 0x48F0617E468B1863);
  v132 = (2 * (v130 ^ 0x48F0617E468B1863)) & 0x5BAF8B88D3061F88 ^ 0x48A0888851020088 ^ ((2 * (v130 ^ 0x48F0617E468B1863)) ^ 0xB75F1711A60C3F10) & (v130 ^ 0x48F0617E468B1863);
  v133 = (4 * v131) & 0x5BAF8B88D3061F88 ^ v131 ^ ((4 * v131) | 4) & v132;
  v134 = (4 * v132) & 0x5BAF8B88D3061F88 ^ 0x1101818893060188 ^ ((4 * v132) ^ 0x6EBE2E234C187E20) & v132;
  v135 = (16 * v133) & 0x5BAF8B88D3061F80 ^ v133 ^ ((16 * v133) ^ 0x10) & v134;
  v136 = (16 * v134) & 0x5BAF8B88D3061F80 ^ 0x41070300C3060708 ^ ((16 * v134) ^ 0xBAF8B88D3061F880) & v134;
  v137 = (v135 << 8) & 0x5BAF8B88D3061F00 ^ v135 ^ ((v135 << 8) ^ 0x100) & v136;
  v138 = (v136 << 8) & 0x5BAF8B88D3061F00 ^ 0x50240308D1001788 ^ ((v136 << 8) ^ 0xAF8B88D3061F8800) & v136;
  v139 = v137 ^ (v137 << 16) & 0x5BAF8B88D3060000 ^ ((v137 << 16) ^ 0x1010000) & v138 ^ 0x5BAF8B88D2061E89;
  v140 = v130 ^ (2 * ((v139 << 32) & 0x5BAF8B8800000000 ^ v139 ^ ((v139 << 32) ^ 0x53061F8800000000) & ((v138 << 16) & 0x5BAF8B8800000000 ^ 0x5027088800000000 ^ ((v138 << 16) ^ 0xB88D30600000000) & v138)));
  v141 = ((v140 ^ 0x95E203C424CD5A30) - 0x130017E20EF8F9E4) ^ ((v140 ^ 0xED352BE56B24C713) - 0x6BD73FC3411164C7);
  LOBYTE(v139) = STACK[0xA80];
  v142 = __CFADD__(3 * (v141 ^ ((v140 ^ 0x7ADBC2D67C68A5D8) + 0x3C6290FA9A2F9F4)), 0x8ECCFC734D1DD18DLL) + (((v141 ^ ((v140 ^ 0x7ADBC2D67C68A5D8) + 0x3C6290FA9A2F9F4)) * 3uLL) >> 64) + 3 * ((__CFADD__(v140 ^ 0x95E203C424CD5A30, 0xECFFE81DF107061CLL) - 1) ^ (__CFADD__(v140 ^ 0xED352BE56B24C713, 0x9428C03CBEEE9B39) - 1) ^ (__CFADD__(v140 ^ 0x7ADBC2D67C68A5D8, 0x3C6290FA9A2F9F4) - 1)) + 1220526600;
  LODWORD(v141) = (((((v75 ^ 0x5D) - 95) ^ ((v75 ^ 0x97) + 107)) ^ ((v75 ^ 0x8F) - 1)) - v82 + v85 + 1) & 3;
  LOBYTE(STACK[0xA80]) = *(v5 + (v128 ^ 0x5D48CB6));
  LOBYTE(v85) = v82 - v85;
  *(v5 + (v128 ^ 0x5D48CB6)) = v139;
  LODWORD(v140) = ((v128 & 0x3ED ^ 0x7BF8F5BC) - 2101768545) ^ ((v128 & 0x3ED ^ 0xE60F7818) + 525206331) ^ ((v128 & 0x3ED ^ 0x1DF78D00) + 1689712163);
  v143 = ((v128 & 0x3ED ^ 0xA5E74B2) + 1229155396) ^ ((v128 & 0x3ED ^ 0x2FAC9275) + 1823574661) ^ ((v128 & 0x3ED ^ 0x5A0D198E) + 420479360);
  v144 = 278786621 - (((v75 ^ 0xE48ECC03) + 864344319) ^ ((v75 ^ 0x9600A873) + 1091222671) ^ ((v75 ^ 0x4C6A4635) - 1688186167));
  LODWORD(v133) = (2 * v144) & 0xD419617E | v144 & ~(2 * v144);
  LODWORD(v128) = ((2 * (v144 ^ 0x76B961D6)) ^ 0x5FD24B52) & (v144 ^ 0x76B961D6) ^ (2 * (v144 ^ 0x76B961D6)) & 0xAFE925A8;
  LOBYTE(v139) = STACK[0x755];
  *(v5 + ((v80 ^ v144 ^ (2 * (v128 & (4 * v128) & (16 * (v128 & (4 * v133) ^ v133)) ^ v128 & (4 * v133) ^ v133))) & 0x35 ^ 0x24)) = *(v5 + (158 * ((((v141 ^ 0xAAAD05D) + 974592069) ^ (v141 - 1296176094) ^ ((v141 ^ 0x6B3FC257) + 1535248975)) - v140 - v143) + 1431552688) % 0x3C9);
  *(v5 + (158 * (((v141 ^ 0x1692) + 10915) ^ ((v141 ^ 0x4CD9) - 3862) ^ ((v141 ^ 0x5A49) + 26234)) - 5208 - 969 * (((158 * ((((v141 ^ 0x1692) + 10915) ^ ((v141 ^ 0x4CD9) - 3862)) ^ ((v141 ^ 0x5A49) + 26234)) - 5208) & 0xFFFEu) / 0x3C9))) = v139;
  v142 *= 158;
  LODWORD(v140) = (v142 - 1774911153) ^ 0xD0CFF27;
  v145 = (2 * ((v142 - 1774911153) & 0x8371521E)) & 0x660A438 ^ (v142 - 1774911153) & 0x8371521E ^ ((2 * ((v142 - 1774911153) & 0x8371521E)) | 2) & v140;
  LODWORD(v140) = (2 * v140) & 0x8E7DAD38 ^ 0x8204A508 ^ ((2 * v140) ^ 0x1CFB5A70) & v140;
  v146 = (4 * v145) & 0x8E7DAD38 ^ v145 ^ ((4 * v145) | 4) & v140;
  LODWORD(v140) = ((4 * v140) ^ 0x39F6B4E0) & v140 ^ (4 * v140) & 0x8E7DAD38;
  LODWORD(v141) = v140 ^ 0x86090918;
  LODWORD(v140) = v146 ^ 0x8E7DAD29 ^ (v140 ^ 0x874A428) & (16 * v146);
  LODWORD(v133) = ((-290785368 - v142) ^ 0xE78EAAC7) & (2 * ((-290785368 - v142) & 0xF7AEC8E8)) ^ (-290785368 - v142) & 0xF7AEC8E8;
  LODWORD(v128) = ((2 * ((-290785368 - v142) ^ 0x6962B07)) ^ 0xE271C7DC) & ((-290785368 - v142) ^ 0x6962B07) ^ (2 * ((-290785368 - v142) ^ 0x6962B07)) & 0xF138E3EC;
  LODWORD(v139) = v128 ^ 0x11082020;
  LODWORD(v128) = (v128 ^ 0xE03043C0) & (4 * v133) ^ v133;
  LODWORD(v133) = ((4 * v139) ^ 0xC4E38FB8) & v139 ^ (4 * v139) & 0xF138E3EC;
  LODWORD(v128) = v128 ^ 0xF138E3EE ^ (v133 ^ 0xC02083A0) & (16 * v128);
  LODWORD(v140) = ((v142 - 1774911153) ^ (-290785368 - v142) ^ (2 * (v140 ^ v128 ^ ((v133 ^ 0xF138E300) & (16 * v133) ^ 0x6030C000) & (v128 << 8) ^ ((16 * v141) & 0x8E7DAD30 ^ ((16 * v141) ^ 0x67DAD380) & v141 ^ 0x100) & (v140 << 8)))) & 0x3C8;
  v142 += 430330734;
  LOBYTE(v144) = STACK[0x7F3];
  LOBYTE(STACK[0x7F3]) = *(v5 + v142 % (v140 ^ 0x349));
  *(v5 + v142 % 0x3C9) = v144;
  LOWORD(v85) = 158 * (((v85 & 1 ^ 0x59EF) - 14251) ^ (v85 & 1 | 0x1644) ^ ((v85 & 1 ^ 0xBA1) + 6683)) + 8790;
  v147 = (v85 - 969 * ((v85 & 0xFFFE) / 0x3C9));
  LOBYTE(v142) = STACK[0x891];
  LOBYTE(STACK[0x891]) = *(v5 + v147);
  *(v5 + v147) = v142;
  return sub_1E3349F8C();
}

uint64_t sub_1E3349F8C@<X0>(int a1@<W0>, char a2@<W1>, int a3@<W2>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, __int16 a8@<W8>)
{
  v13 = a6 + (*(v11 + (a8 + a4 * v9 - (((((a8 + a4 * v9) & 0xFFFEu) * a3) >> 16) >> 7) * a1)) ^ a5) * (v8 - 3822);
  *(v11 + v13 - (((v13 * v10) >> 32) >> 9) * a1) = a4 - (a2 & (2 * a4)) + 25;
  return (*(v12 + 8 * (((a4 == 15) * a7) ^ v8)))();
}

uint64_t sub_1E334A054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, char *a16)
{
  a15 = a12;
  a16 = &a10;
  a14 = (v16 + 884) ^ (33731311 * ((2 * (&a13 & 0x3AE4C840) - &a13 - 988072006) ^ 0xFCEDFD99));
  (*(v17 + 8 * (v16 + 7233)))(&a13);
  a15 = a12;
  LODWORD(a16) = v16 - 2008441969 * ((((&a13 | 0xFCFB793A) ^ 0xFFFFFFFE) - (~&a13 | 0x30486C5)) ^ 0x4B9DD2CB) + 3317;
  v19 = (*(v17 + 8 * (v16 + 7283)))(&a13);
  return (*(v17 + 8 * (((a13 == v18) * (v16 ^ 0x1BDF)) ^ v16)))(v19);
}

uint64_t sub_1E334A24C@<X0>(int a1@<W8>)
{
  STACK[0x9D8] = v1;
  v3 = STACK[0x658];
  STACK[0x9E0] = STACK[0x658];
  return (*(v2 + 8 * (((v1 - v3 > (a1 ^ 0x89Au) - 793) * ((a1 + 3083) ^ 0xA75)) ^ a1)))();
}

uint64_t sub_1E334A29C(uint64_t a1)
{
  v2 = 1710126949 * (((a1 | 0x52FA8834) - (a1 & 0x52FA8834)) ^ 0x60E1D3A4);
  result = (**(&off_1F5DB1610 + (*(a1 + 44) - v2 + 1166560586)))((*(a1 + 40) ^ v2) - 1561180546, *(a1 + 16), *(a1 + 24), v2 ^ *(a1 + 8) ^ 0xDC62B379, *(a1 + 32), *a1);
  *(a1 + 12) = (result ^ 0x42FA9BCF) - 1107462144 + ((2 * result) & 0x85F5379E);
  return result;
}

uint64_t sub_1E334A374()
{
  v2 = (v0 + 3303) | 0x122;
  v3 = STACK[0x550];
  v4 = STACK[0x454];
  STACK[0x740] = *(v1 + 8 * v0);
  STACK[0x950] = &STACK[0x858];
  LODWORD(STACK[0x6BC]) = v4;
  STACK[0x828] = v3;
  STACK[0x658] = 0;
  LODWORD(STACK[0x494]) = 197499219;
  STACK[0x788] = 0x431A33AA2E6D965FLL;
  STACK[0x570] = 0;
  v5 = (*(v1 + 8 * (v2 ^ 0x2AC0)))(16, 0x20040A4A59CD2);
  v6 = STACK[0x400];
  STACK[0x5B0] = v5;
  return (*(v6 + 8 * (((v5 == 0) * ((68 * (v2 ^ 0xFEA) - 6730) ^ (v2 - 1426))) ^ v2)))();
}

uint64_t sub_1E334A390(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x87C]) = a3;
  v3 = STACK[0x3E4];
  v4 = STACK[0x3E8];
  STACK[0x6B0] = STACK[0x8E0];
  v6 = LODWORD(STACK[0x8D4]) == 197499219 && LOWORD(STACK[0x8DA]) == (v3 ^ 0x90D9);
  return (*(v4 + 8 * ((92 * v6) ^ (v3 + 4266))))();
}

uint64_t sub_1E334A450@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W8>, int8x16_t a5@<Q0>)
{
  v12 = v9 + 32;
  v13 = (v12 ^ a3 ^ ((v8 ^ v7) * a2)) + v6;
  v14 = *(v5 + v13 - 15);
  v15 = *(v5 + v13 - 31);
  v16 = a1 + v13;
  *(v16 - 15) = veorq_s8(v14, a5);
  *(v16 - 31) = veorq_s8(v15, a5);
  return (*(v11 + 8 * (((2 * (v10 == v12)) | ((v10 == v12) << 6)) ^ (a4 + v8 + 3830))))();
}

void NnzznRTkqBtQzU(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = !v5 && a5 != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1E334A4E0(uint64_t a1, int a2)
{
  STACK[0x808] = v4 + v5;
  STACK[0x628] = v3 + ((v6 - 6871) | 0x808u) - 1976;
  STACK[0x728] = v2;
  STACK[0x738] = 0;
  STACK[0x6D0] = 0;
  STACK[0x428] = 0;
  LODWORD(STACK[0x844]) = a2;
  LODWORD(STACK[0x6B0]) = 0;
  STACK[0x608] = 0;
  STACK[0x4A0] = 0;
  LODWORD(STACK[0x4F4]) = a2;
  v9 = (*(v8 + 8 * (v6 + 2729)))();
  return (*(v8 + 8 * (v6 ^ (62 * (v7 != 197499219)))))(v9);
}

uint64_t sub_1E334A6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x584]) = a7;
  LODWORD(STACK[0x590]) = v7;
  LODWORD(STACK[0x56C]) = a5;
  return (*(v8 + 8 * ((101 * (LODWORD(STACK[0x3D8]) != LODWORD(STACK[0x438]) + LODWORD(STACK[0x370]))) ^ LODWORD(STACK[0x57C]))))(LODWORD(STACK[0x42C]), a2, LODWORD(STACK[0x428]), 969, STACK[0x358], 1056, 25);
}

uint64_t sub_1E334AAC4()
{
  v5 = v0 + v2 - 1284;
  *v1 = v8;
  v1[1] = v10;
  v1[2] = v12;
  v1[3] = v7;
  v15 = (v0 + v2 + 1191548538) ^ (1824088897 * ((((2 * &v13) | 0x86A4A00A) - &v13 + 1018015739) ^ 0x9B3B8367));
  v14 = v11;
  (*(v3 + 8 * (v5 ^ v4)))(&v13);
  v14 = v9;
  v15 = (v5 + 1191549822) ^ (1824088897 * ((&v13 - 730698431 - 2 * (&v13 & 0xD4726D41)) ^ 0x8C1BBE23));
  (*(v3 + 8 * (v5 ^ v4)))(&v13);
  return 0;
}

void Fc3vhtJDvr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1E334AF50@<X0>(unint64_t a1@<X0>, unint64_t a2@<X6>, unint64_t a3@<X7>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v76 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v77 = vdupq_n_s64(0x38uLL);
  v78 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x390] = vdupq_n_s64(v72);
  *&STACK[0x3A0] = vdupq_n_s64(a2);
  *&STACK[0x370] = vdupq_n_s64(v67);
  *&STACK[0x380] = vdupq_n_s64(v75);
  *&STACK[0x350] = vdupq_n_s64(v69);
  *&STACK[0x360] = vdupq_n_s64(v68);
  *&STACK[0x330] = vdupq_n_s64(v73);
  *&STACK[0x340] = vdupq_n_s64(v70);
  *&STACK[0x310] = vdupq_n_s64(a3);
  *&STACK[0x320] = vdupq_n_s64(a1);
  v79 = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  v80 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v81 = vdupq_n_s64(0x64C31C027084DE6CuLL);
  *&STACK[0x2F0] = vdupq_n_s64(0x52D1CFA255142C6CuLL);
  *&STACK[0x300] = vdupq_n_s64(0xA5A39F44AA2858D8);
  v82 = vdupq_n_s64(0x48FB24461747836FuLL);
  v83 = vdupq_n_s64(0xAB3042D228875C41);
  v84 = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  v85 = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  v86 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v87 = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  v88 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v89 = vdupq_n_s64(0xBCFFAF874FA44A5ALL);
  v90 = vdupq_n_s64(0xDE7FD7C3A7D2252DLL);
  v91 = vdupq_n_s64(0x754F95118F55796CuLL);
  *&STACK[0x2E0] = xmmword_1E4316DF0;
  STACK[0x3B0] = *(v65 + v71 - v74 - 8);
  v92.i64[0] = v65 + v71 - v74 + (v66 ^ 0xFFFFFFFFFFFFE922);
  v92.i64[1] = v65 + v71 - v74 - 8;
  v93.i64[0] = v65 + v71 - v74 - 1;
  v93.i64[1] = v65 + v71 - v74 - 2;
  v94.i64[0] = v65 + v71 - v74 - 3;
  v94.i64[1] = v65 + v71 - v74 - 4;
  v95.i64[0] = v65 + v71 - v74 - 5;
  v95.i64[1] = v65 + v71 - v74 - 6;
  v96.i64[0] = a4 + v71 - v74 + 3;
  v96.i64[1] = a4 + v71 - v74 + 2;
  v97.i64[0] = a4 + v71 - v74 + 9;
  v97.i64[1] = a4 + v71 - v74 + 8;
  v98 = vandq_s8(v95, v76);
  v99 = vandq_s8(v94, v76);
  v100 = vandq_s8(v93, v76);
  v101 = vandq_s8(v92, v76);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v78);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v78);
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v78);
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v78);
  v106 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v102, v102), *&STACK[0x3A0]), v102), *&STACK[0x390]);
  v107 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v103, v103), *&STACK[0x3A0]), v103), *&STACK[0x390]);
  v108 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v104, v104), *&STACK[0x3A0]), v104), *&STACK[0x390]);
  v109 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v105, v105), *&STACK[0x3A0]), v105), *&STACK[0x390]);
  v110 = veorq_s8(v109, *&STACK[0x380]);
  v111 = veorq_s8(v108, *&STACK[0x380]);
  v112 = veorq_s8(v107, *&STACK[0x380]);
  v113 = veorq_s8(v106, *&STACK[0x380]);
  v114 = veorq_s8(v106, *&STACK[0x370]);
  v115 = veorq_s8(v107, *&STACK[0x370]);
  v116 = veorq_s8(v108, *&STACK[0x370]);
  v117 = veorq_s8(v109, *&STACK[0x370]);
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v117);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v116);
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v115);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v121, v121), *&STACK[0x360]), v121), *&STACK[0x350]), *&STACK[0x340]);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v120, v120), *&STACK[0x360]), v120), *&STACK[0x350]), *&STACK[0x340]);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v119, v119), *&STACK[0x360]), v119), *&STACK[0x350]), *&STACK[0x340]);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v118, v118), *&STACK[0x360]), v118), *&STACK[0x350]), *&STACK[0x340]);
  v126 = vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL);
  v127 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL);
  v129 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v130 = veorq_s8(v124, v128);
  v131 = veorq_s8(v123, v127);
  v132 = veorq_s8(v122, v126);
  v133 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v134 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v135 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v132);
  v137 = vaddq_s64(v135, v131);
  v138 = vaddq_s64(v134, v130);
  v139 = vaddq_s64(v133, v129);
  v140 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v139, v139), *&STACK[0x330]), v139), *&STACK[0x320]), *&STACK[0x310]);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v138, v138), *&STACK[0x330]), v138), *&STACK[0x320]), *&STACK[0x310]);
  v142 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v137, v137), *&STACK[0x330]), v137), *&STACK[0x320]), *&STACK[0x310]);
  v143 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v136, v136), *&STACK[0x330]), v136), *&STACK[0x320]), *&STACK[0x310]);
  v144 = vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL);
  v145 = vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL);
  v146 = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v147 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v148 = veorq_s8(v142, v146);
  v149 = veorq_s8(v141, v145);
  v150 = veorq_s8(v140, v144);
  v151 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v152 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v150);
  v155 = veorq_s8(vaddq_s64(v151, v147), v79);
  v156 = veorq_s8(vaddq_s64(v152, v148), v79);
  v157 = veorq_s8(vaddq_s64(v153, v149), v79);
  v158 = veorq_s8(v154, v79);
  v159 = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v160 = vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL);
  v161 = vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL);
  v162 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v163 = veorq_s8(v157, v161);
  v164 = veorq_s8(v156, v160);
  v165 = veorq_s8(v155, v159);
  v166 = vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL);
  v167 = vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL);
  v168 = vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL);
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v165);
  v170 = veorq_s8(vaddq_s64(v166, v162), v80);
  v171 = veorq_s8(vaddq_s64(v167, v163), v80);
  v172 = veorq_s8(vaddq_s64(v168, v164), v80);
  v173 = veorq_s8(v169, v80);
  v174 = vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL);
  v175 = vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL);
  v176 = vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL);
  v177 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v178 = veorq_s8(v172, v176);
  v179 = veorq_s8(v171, v175);
  v180 = veorq_s8(v170, v174);
  v181 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v182 = vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL);
  v183 = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  v184 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v180);
  v185 = veorq_s8(vaddq_s64(v181, v177), v81);
  v186 = veorq_s8(vaddq_s64(v182, v178), v81);
  v187 = veorq_s8(vaddq_s64(v183, v179), v81);
  v188 = veorq_s8(v184, v81);
  v189 = vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL);
  v190 = vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL);
  v191 = vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL);
  v192 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v193 = veorq_s8(v187, v191);
  v194 = veorq_s8(v186, v190);
  v195 = veorq_s8(v185, v189);
  v196 = vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL);
  v197 = vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL);
  v198 = vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL);
  v199 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v195);
  v200 = vaddq_s64(v198, v194);
  v201 = vaddq_s64(v197, v193);
  v202 = vaddq_s64(v196, v192);
  v203 = veorq_s8(vaddq_s64(vsubq_s64(v202, vandq_s8(vaddq_s64(v202, v202), *&STACK[0x300])), *&STACK[0x2F0]), v82);
  v204 = veorq_s8(vaddq_s64(vsubq_s64(v201, vandq_s8(vaddq_s64(v201, v201), *&STACK[0x300])), *&STACK[0x2F0]), v82);
  v205 = veorq_s8(vaddq_s64(vsubq_s64(v200, vandq_s8(vaddq_s64(v200, v200), *&STACK[0x300])), *&STACK[0x2F0]), v82);
  v206 = veorq_s8(vaddq_s64(vsubq_s64(v199, vandq_s8(vaddq_s64(v199, v199), *&STACK[0x300])), *&STACK[0x2F0]), v82);
  v207 = vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL);
  v208 = veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL));
  v209 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v210 = veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL));
  v211 = veorq_s8(v203, v207);
  v212 = vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL);
  v213 = vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL);
  v214 = vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL);
  v194.i64[0] = a4 + v71 - v74 + 7;
  v194.i64[1] = a4 + v71 - v74 + 6;
  v215 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v211);
  v211.i64[0] = a4 + v71 - v74 + 5;
  v211.i64[1] = a4 + v71 - v74 + 4;
  v216 = vshlq_u64(veorq_s8(v215, v83), vnegq_s64(vandq_s8(vshlq_n_s64(v92, 3uLL), v77)));
  v217 = vshlq_u64(veorq_s8(vaddq_s64(v214, v210), v83), vnegq_s64(vandq_s8(vshlq_n_s64(v93, 3uLL), v77)));
  v218 = vshlq_u64(veorq_s8(vaddq_s64(v213, v209), v83), vnegq_s64(vandq_s8(vshlq_n_s64(v94, 3uLL), v77)));
  v219 = vshlq_u64(veorq_s8(vaddq_s64(v212, v208), v83), vnegq_s64(vandq_s8(vshlq_n_s64(v95, 3uLL), v77)));
  v220 = vandq_s8(v211, v76);
  v221 = vandq_s8(v194, v76);
  v222 = vandq_s8(v97, v76);
  v223 = vandq_s8(v96, v76);
  v224 = vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL);
  v225 = vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL);
  v226 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v78);
  v227 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL), v78);
  v228 = veorq_s8(v227, v84);
  v229 = veorq_s8(v226, v84);
  v230 = veorq_s8(v226, v85);
  v231 = veorq_s8(v227, v85);
  v232 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v230), v86);
  v233 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), v231), v86);
  v234 = vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL);
  v235 = veorq_s8(v233, vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL));
  v236 = veorq_s8(v232, v234);
  v237 = vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL);
  v238 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), v236);
  v239 = veorq_s8(vaddq_s64(v237, v235), v87);
  v240 = veorq_s8(v238, v87);
  v241 = vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL);
  v242 = veorq_s8(v240, vsraq_n_u64(vshlq_n_s64(v236, 3uLL), v236, 0x3DuLL));
  v243 = veorq_s8(v239, v241);
  v244 = vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL);
  v245 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), v243);
  v246 = veorq_s8(vaddq_s64(v244, v242), v79);
  v247 = veorq_s8(v245, v79);
  v248 = vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL);
  v249 = veorq_s8(v247, vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL));
  v250 = veorq_s8(v246, v248);
  v251 = vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL);
  v252 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL), v250);
  v253 = veorq_s8(vaddq_s64(v251, v249), v80);
  v254 = veorq_s8(v252, v80);
  v255 = vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL);
  v256 = veorq_s8(v254, vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL));
  v257 = veorq_s8(v253, v255);
  v258 = vsraq_n_u64(vshlq_n_s64(v254, 0x38uLL), v254, 8uLL);
  v259 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v253, 0x38uLL), v253, 8uLL), v257);
  v260 = veorq_s8(vaddq_s64(v258, v256), v81);
  v261 = veorq_s8(v259, v81);
  v262 = vsraq_n_u64(vshlq_n_s64(v256, 3uLL), v256, 0x3DuLL);
  v263 = veorq_s8(v261, vsraq_n_u64(vshlq_n_s64(v257, 3uLL), v257, 0x3DuLL));
  v264 = veorq_s8(v260, v262);
  v265 = vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL);
  v266 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL), v264);
  v267 = veorq_s8(vaddq_s64(v265, v263), v88);
  v268 = veorq_s8(v266, v88);
  v269 = vsraq_n_u64(vshlq_n_s64(v263, 3uLL), v263, 0x3DuLL);
  v270 = veorq_s8(v268, vsraq_n_u64(vshlq_n_s64(v264, 3uLL), v264, 0x3DuLL));
  v271 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v267, 0x38uLL), v267, 8uLL), veorq_s8(v267, v269));
  v272 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL), v270);
  v273 = vaddq_s64(v225, v78);
  v274 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v271, vandq_s8(vaddq_s64(v271, v271), v89)), v90), v91), vnegq_s64(vandq_s8(vshlq_n_s64(v194, 3uLL), v77)));
  v305.val[2] = veorq_s8(v219, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v272, vandq_s8(vaddq_s64(v272, v272), v89)), v90), v91), vnegq_s64(vandq_s8(vshlq_n_s64(v211, 3uLL), v77))));
  v305.val[1] = veorq_s8(v218, v274);
  v275 = veorq_s8(v273, v84);
  v276 = veorq_s8(v273, v85);
  v277 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v275, 0x38uLL), v275, 8uLL), v276), v86);
  v278 = veorq_s8(v277, vsraq_n_u64(vshlq_n_s64(v276, 3uLL), v276, 0x3DuLL));
  v279 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v277, 0x38uLL), v277, 8uLL), v278), v87);
  v280 = veorq_s8(v279, vsraq_n_u64(vshlq_n_s64(v278, 3uLL), v278, 0x3DuLL));
  v281 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v279, 0x38uLL), v279, 8uLL), v280), v79);
  v282 = veorq_s8(v281, vsraq_n_u64(vshlq_n_s64(v280, 3uLL), v280, 0x3DuLL));
  v283 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v281, 0x38uLL), v281, 8uLL), v282), v80);
  v284 = veorq_s8(v283, vsraq_n_u64(vshlq_n_s64(v282, 3uLL), v282, 0x3DuLL));
  v285 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v283, 0x38uLL), v283, 8uLL), v284), v81);
  v286 = veorq_s8(v285, vsraq_n_u64(vshlq_n_s64(v284, 3uLL), v284, 0x3DuLL));
  v287 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v285, 0x38uLL), v285, 8uLL), v286), v88);
  v288 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v287, 0x38uLL), v287, 8uLL), veorq_s8(v287, vsraq_n_u64(vshlq_n_s64(v286, 3uLL), v286, 0x3DuLL)));
  v289 = vaddq_s64(v224, v78);
  v305.val[0] = veorq_s8(v217, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v288, vandq_s8(vaddq_s64(v288, v288), v89)), v90), v91), vnegq_s64(vandq_s8(vshlq_n_s64(v97, 3uLL), v77))));
  v290 = veorq_s8(v289, v84);
  v291 = veorq_s8(v289, v85);
  v292 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v290, 0x38uLL), v290, 8uLL), v291), v86);
  v293 = veorq_s8(v292, vsraq_n_u64(vshlq_n_s64(v291, 3uLL), v291, 0x3DuLL));
  v294 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v292, 0x38uLL), v292, 8uLL), v293), v87);
  v295 = veorq_s8(v294, vsraq_n_u64(vshlq_n_s64(v293, 3uLL), v293, 0x3DuLL));
  v296 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL), v295), v79);
  v297 = veorq_s8(v296, vsraq_n_u64(vshlq_n_s64(v295, 3uLL), v295, 0x3DuLL));
  v298 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v296, 0x38uLL), v296, 8uLL), v297), v80);
  v299 = veorq_s8(v298, vsraq_n_u64(vshlq_n_s64(v297, 3uLL), v297, 0x3DuLL));
  v300 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v298, 0x38uLL), v298, 8uLL), v299), v81);
  v301 = veorq_s8(v300, vsraq_n_u64(vshlq_n_s64(v299, 3uLL), v299, 0x3DuLL));
  v302 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v300, 0x38uLL), v300, 8uLL), v301), v88);
  v303 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v302, 0x38uLL), v302, 8uLL), veorq_s8(v302, vsraq_n_u64(vshlq_n_s64(v301, 3uLL), v301, 0x3DuLL)));
  v305.val[3] = veorq_s8(v216, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v303, vandq_s8(vaddq_s64(v303, v303), v89)), v90), v91), vnegq_s64(vandq_s8(vshlq_n_s64(v96, 3uLL), v77))));
  *v96.i64[1] = veor_s8(vrev64_s8(*&vqtbl4q_s8(v305, *&STACK[0x2E0])), STACK[0x3B0]);
  return (*(a65 + 8 * ((13576 * (8 - (v71 & 0xFFFFFFF8) == -v74)) ^ v66)))(v73);
}

uint64_t sub_1E334BA6C()
{
  v4 = (*(v1 + 8 * (v3 ^ 0x22C3)))(*v2, *(v0 + 8 * (v3 - 1812)) - 8);
  **(v0 + 8 * (v3 - 1902)) = v4;
  return (*(v1 + 8 * ((235 * ((((v3 ^ 0x43) + 127) ^ (v4 == 0)) & 1)) ^ v3)))();
}

uint64_t sub_1E334BAE4()
{
  STACK[0xA68] = v1;
  v3 = STACK[0x7B0];
  STACK[0xA70] = STACK[0x7B0];
  v4 = v1 - v3 > ((11 * ((v0 + 2142734458) & 0x80487373 ^ 0x11A)) ^ 0x17CAuLL);
  return (*(v2 + 8 * ((v4 | (2 * v4)) ^ v0)))();
}

uint64_t sub_1E334BB60()
{
  v6 = *(v5 + 8 * (v4 - 9082));
  v7 = *STACK[0x3B0];
  v8 = __ROR8__((v7 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = (v8 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v10 = __ROR8__((v8 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8);
  v11 = (v3 - ((v10 + v9) | v3) + ((v10 + v9) | 0x1EC48F9A8BC8C84FLL)) ^ 0xFA59F8450CF57731;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (v1 - ((v13 + v12) | v1) + ((v13 + v12) | 0x15BDDEA04F62FFAALL)) ^ 0xE01F2F19FAB24DA3;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x5963B6C555D97F1FLL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (v0 - ((v18 + v17) | v0) + ((v18 + v17) | 0x43769D215A5E7E7)) ^ 0x6572F4F8E5BAC310;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((2 * (v21 + v20)) & 0x95D159776768EC9ALL) - (v21 + v20) - 0x4AE8ACBBB3B4764ELL) ^ 0xD1D44F463CCF57DELL;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((2 * (v24 + v23)) & 0xD800CF627F7DCE02) - (v24 + v23) + 0x13FF984EC04118FELL) ^ 0x9D573AA8212B7FDLL;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  *(v7 + 4) = (((((2 * (v27 + v26)) & 0x4CC31BBC7D14A244) - (v27 + v26) + 0x599E7221C175AEDDLL) ^ 0xF2AE30F3E9F2F29CLL) >> (8 * ((v7 + 4) & 7))) ^ 0x50;
  v28 = __ROR8__((v7 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v29 = ((2 * (v28 - 0x6AF7234D0CC131D5)) | 0x3E48AF211110F5F6) - (v28 - 0x6AF7234D0CC131D5) - 0x1F24579088887AFBLL;
  v30 = v29 ^ 0x56CD15ABE79E9D29;
  v29 ^= 0xFE8BF03C7E68EC75;
  v31 = __ROR8__(v30, 8);
  v32 = (((2 * (v31 + v29)) & 0x42379E9795A534D6) - (v31 + v29) + 0x5EE430B4352D6594) ^ 0xBA79476BB210DAEALL;
  v33 = v32 ^ __ROR8__(v29, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((2 * (v34 + v33)) | 0xF087926224A8E20ALL) - (v34 + v33) - 0x7843C93112547105) ^ 0x8DE13888A784C30CLL;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x5963B6C555D97F1FLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x61459D2AF01F24F7;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((2 * (v41 + v40)) | 0x8BD1FBA0C354CF8ELL) - (v41 + v40) - 0x45E8FDD061AA67C7) ^ 0x212BE1D2112EB9ABLL;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x1A2AEBE44253AF03;
  v45 = __ROR8__(v44, 8) + (v44 ^ __ROR8__(v43, 61));
  *(v7 + 5) = (((v2 - (v45 | v2) + (v45 | 0x1B453AE3A5BDDFB3)) ^ 0xB07578318D3A83F2) >> (8 * ((v7 + 5) & 7))) ^ 0xDB;
  return v6();
}

uint64_t sub_1E334BB78@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = (v66 ^ 0x72CEBFBFFDFBF73BLL) - 0x10C0000605000602 + (((v65 + 4325) ^ 0xE59D7F7FFBF7FCDELL) & (2 * v66));
  v68 = STACK[0xA40];
  STACK[0x290] = ((STACK[0xA70] + 4) ^ 0x6EEB7373FE7FF71FLL) - 0x8A831024E005309 + ((2 * (STACK[0xA70] + 4)) & 0xDDD6E6E7FCFFEE3ELL);
  v69 = STACK[0xA90];
  STACK[0x280] = (((v65 + 5640) + STACK[0xA90] - 6087) ^ 0x76DF63FFBEFFEF9FLL) - 0x109C218E0E804B89 + ((2 * ((v65 + 5640) + STACK[0xA90] - 6087)) & 0xEDBEC7FF7DFFDF3ELL);
  STACK[0x270] = ((v68 + 4) ^ 0xFE6347F3F67FB71FLL) + 0x67DFFA7DB9FFECF7 + ((2 * (v68 + 4)) & 0xFCC68FE7ECFF6E3ELL);
  v70 = STACK[0xAB0];
  STACK[0x260] = ((STACK[0xAB0] + 4) ^ 0x6E536371BE7FB53FLL) - 0x81021000E001129 + ((2 * (STACK[0xAB0] + 4)) & 0xDCA6C6E37CFF6A7ELL);
  v71 = STACK[0xAD0];
  STACK[0x250] = ((STACK[0xAD0] + 4) ^ 0xF74FFE7DFDFFBFF6) + 0x6EF343F3B27FE420 + ((2 * (STACK[0xAD0] + 4)) & 0xEE9FFCFBFBFF7FECLL);
  v72 = STACK[0xAF0];
  STACK[0x240] = ((STACK[0xAF0] + 4) ^ 0x7FDBF6F3B77FA51FLL) - 0x1998B48207000109 + ((2 * (STACK[0xAF0] + 4)) & 0xFFB7EDE76EFF4A3ELL);
  v73 = STACK[0xB00];
  STACK[0x230] = ((STACK[0xB00] + 4) ^ 0xFE6346F5B5FFB4B7) + 0x67DFFB7BFA7FEF5FLL + ((2 * (STACK[0xB00] + 4)) & 0xFCC68DEB6BFF696ELL);
  v74 = STACK[0xA30];
  STACK[0x220] = ((STACK[0xA30] + 4) ^ 0xE77F6F75BF7FBCD7) + 0x7EC3D2FBF0FFE73FLL + ((2 * (STACK[0xA30] + 4)) & 0xCEFEDEEB7EFF79AELL);
  v75 = STACK[0xA20];
  STACK[0x210] = ((STACK[0xA20] + 4) ^ 0xFECFDBF1BE7FBDF6) + 0x6773667FF1FFE620 + ((2 * (STACK[0xA20] + 4)) & 0xFD9FB7E37CFF7BECLL);
  v76 = STACK[0xA10];
  STACK[0x200] = ((STACK[0xA10] + 4) ^ 0xE6DFF379B3FFAF56) + 0x7F634EF7FC7FF4C0 + ((2 * (STACK[0xA10] + 4)) & 0xCDBFE6F367FF5EACLL);
  v77 = STACK[0xB58];
  v157 = ((v72 + 6) ^ 0xF34EFFFFFDFFF3FFLL) + 0x6EBFBFB9FAFBFD3ALL + ((2 * (v72 + 6)) & 0xE69DFFFFFBFFE7FELL);
  v156 = ((STACK[0xA00] + 6) ^ 0xEA2FFFBBFAFFFB7BLL) + 0x77DEBFFDFDFBF5BELL + ((2 * (STACK[0xA00] + 6)) & 0xD45FFF77F5FFF6F6);
  v155 = ((STACK[0x9F0] + 6) ^ 0xFB3EBFFDFFFBF7B9) + 0x66CFFFBBF8FFF980 + ((2 * (STACK[0x9F0] + 6)) & 0xF67D7FFBFFF7EF72);
  v154 = ((STACK[0xB58] + 6) ^ 0x627EBFB9FEFFF1BBLL) - 0x70000006040082 + ((2 * (STACK[0xB58] + 6)) & 0xC4FD7F73FDFFE376);
  STACK[0x2A0] = v68 + 10;
  v153 = v72 + 10;
  v149 = ((v72 + 10) ^ 0xF2FEFFBBF8FBFB7DLL) + 0x6F0FBFFDFFFFF5BCLL + ((2 * (v72 + 10)) & 0xE5FDFF77F1F7F6FALL);
  v152 = STACK[0xA38];
  STACK[0x3B0] = STACK[0x758];
  STACK[0x330] = STACK[0x5B0];
  STACK[0x320] = STACK[0x920];
  STACK[0x310] = STACK[0x890];
  STACK[0x300] = STACK[0x870];
  STACK[0x3A0] = STACK[0x3F8];
  v78 = STACK[0xAE8];
  STACK[0x390] = STACK[0x3D0];
  v151 = STACK[0xAF8];
  STACK[0x2F0] = STACK[0x480];
  STACK[0x2E0] = STACK[0x6F8];
  STACK[0x2D0] = STACK[0x438];
  STACK[0x2C0] = STACK[0x4B0];
  STACK[0x2B0] = STACK[0x430];
  STACK[0x380] = STACK[0x810];
  v150 = STACK[0xB50];
  LODWORD(STACK[0x340]) = LOWORD(STACK[0x9D2]);
  LODWORD(STACK[0x370]) = LOWORD(STACK[0x9B6]);
  LODWORD(STACK[0x350]) = LOWORD(STACK[0x9A6]);
  LODWORD(STACK[0x360]) = LOWORD(STACK[0x966]);
  v79 = a1 + v67 - 0x620EBFB9F8FBF139;
  v80 = __ROR8__(v79 & 0xFFFFFFFFFFFFFFF8, 8);
  v81 = ((v80 - 0x6AF7234D0CC131D5) | 0x620C1E399F07C1E1) - ((v80 - 0x6AF7234D0CC131D5) | 0x9DF3E1C660F83E1ELL) - 0x620C1E399F07C1E2;
  v82 = __ROR8__(v81 ^ 0x2BE55C02F0112633, 8);
  v81 ^= 0x83A3B99569E7576FLL;
  v83 = (0x4734BEE9B76BBF54 - ((v82 + v81) | 0x4734BEE9B76BBF54) + ((v82 + v81) | 0xB8CB4116489440ABLL)) ^ 0x5C5636C9CFA9FFD5;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ 0xF5A2F1B9B5D0B209;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  v88 = (v87 + v86 - ((2 * (v87 + v86)) & 0xE23443A9F31DA1F6) - 0xEE5DE2B06712F05) ^ 0xA8799711AC57AFE4;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0x61459D2AF01F24F7;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = __ROR8__(v90, 8);
  v93 = (((2 * (v92 + v91)) & 0xD3AC5102AF83FE00) - (v92 + v91) + 0x1629D77EA83E00FFLL) ^ 0x72EACB7CD8BADE93;
  v94 = v93 ^ __ROR8__(v91, 61);
  v95 = __ROR8__(v93, 8);
  v96 = (0x6090076F5B42657CLL - ((v95 + v94) | 0x6090076F5B42657CLL) + ((v95 + v94) | 0x9F6FF890A4BD9A83)) ^ 0x85451374E6EE3580;
  LODWORD(v94) = (((__ROR8__(v96, 8) + (v96 ^ __ROR8__(v94, 61))) ^ 0xAB3042D228875C41) >> (8 * (v79 & 7u))) ^ *v79;
  v97 = __ROR8__((v79 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v98 = (0xAF7234D0CC131D4 - v97) & 0x1376FB96DEDB029ELL | (v97 - 0x6AF7234D0CC131D5) & 0xE88904692124FD61;
  v99 = __ROR8__(v98 ^ 0x5E9FB9ADB1CDE54CLL, 8);
  v98 ^= 0xF6D95C3A283B9410;
  v100 = (v99 + v98) ^ 0xE49D77DF873DBF7ELL;
  v101 = v100 ^ __ROR8__(v98, 61);
  v102 = (__ROR8__(v100, 8) + v101) ^ 0xF5A2F1B9B5D0B209;
  v103 = v102 ^ __ROR8__(v101, 61);
  v104 = __ROR8__(v102, 8);
  v105 = __ROR8__((((2 * (v104 + v103)) & 0xF97DE0A8B699E254) - (v104 + v103) + 0x3410FABA4B30ED5) ^ 0x5A22B96EF16A71CALL, 8);
  v106 = (((2 * (v104 + v103)) & 0xF97DE0A8B699E254) - (v104 + v103) + 0x3410FABA4B30ED5) ^ 0x5A22B96EF16A71CALL ^ __ROR8__(v103, 61);
  v107 = (((2 * (v105 + v106)) | 0x619515DA41C001B4) - (v105 + v106) - 0x30CA8AED20E000DALL) ^ 0x518F17C7D0FF242DLL;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = (__ROR8__(v107, 8) + v108) ^ 0x64C31C027084DE6CLL;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = __ROR8__(v109, 8);
  v112 = (0x520A6A7D4150B8F6 - ((v111 + v110) | 0x520A6A7D4150B8F6) + ((v111 + v110) | 0xADF59582BEAF4709)) ^ 0xB7DF7E66FCFCE80ALL;
  v113 = v112 ^ __ROR8__(v110, 61);
  v114 = __ROR8__(v112, 8);
  LODWORD(v113) = (((((2 * (v114 + v113)) & 0xA59E74269BC385B2) - (v114 + v113) + 0x2D30C5ECB21E3D26) ^ 0x8600873E9A996167) >> (8 * ((v79 + 1) & 7))) ^ *(v79 + 1);
  v115 = __ROR8__((v79 + 2) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5;
  v116 = __ROR8__(v115 ^ 0x49E9423B6F16E7D2, 8);
  v115 ^= 0xE1AFA7ACF6E0968ELL;
  v117 = (v116 + v115) ^ 0xE49D77DF873DBF7ELL;
  v118 = v117 ^ __ROR8__(v115, 61);
  v119 = (__ROR8__(v117, 8) + v118) ^ 0xF5A2F1B9B5D0B209;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = (__ROR8__(v119, 8) + v120) ^ 0x5963B6C555D97F1FLL;
  v122 = v121 ^ __ROR8__(v120, 61);
  v123 = (__ROR8__(v121, 8) + v122) ^ 0x61459D2AF01F24F7;
  v124 = v123 ^ __ROR8__(v122, 61);
  v125 = __ROR8__(v123, 8);
  v126 = (v125 + v124 - ((2 * (v125 + v124)) & 0xC4D307BC96551EAELL) + 0x626983DE4B2A8F57) ^ 0x6AA9FDC3BAE513BLL;
  v127 = v126 ^ __ROR8__(v124, 61);
  v128 = __ROR8__(v126, 8);
  v129 = (v128 + v127 - ((2 * (v128 + v127)) & 0xF9C792D90B62E070) + 0x7CE3C96C85B17038) ^ 0x66C92288C7E2DF3BLL;
  v130 = __ROR8__(v129, 8);
  v131 = __ROR8__(v127, 61);
  LODWORD(v129) = (((((2 * (v130 + (v129 ^ v131))) | 0x84D53DF2213B4FA4) - (v130 + (v129 ^ v131)) + 0x3D956106EF62582ELL) ^ 0x695ADC2B381AFB93) >> (8 * ((v79 + 2) & 7))) ^ *(v79 + 2);
  v132 = *(v79 + 3);
  v79 += 3;
  v133 = __ROR8__(v79 & 0xFFFFFFFFFFFFFFF8, 8);
  v134 = (v133 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v135 = (__ROR8__((v133 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v134) ^ 0xE49D77DF873DBF7ELL;
  v136 = __ROR8__(v135, 8);
  v137 = v135 ^ __ROR8__(v134, 61);
  v138 = (((2 * (v136 + v137)) & 0xCC6D33EEA00FE42) - (v136 + v137) - 0x663699F75007F22) ^ 0xC3E67D93F2F32D7;
  v139 = v138 ^ __ROR8__(v137, 61);
  v140 = (__ROR8__(v138, 8) + v139) ^ 0x5963B6C555D97F1FLL;
  v141 = v140 ^ __ROR8__(v139, 61);
  v142 = __ROR8__(v140, 8);
  v143 = (((2 * (v142 + v141)) | 0x1D5EE00E4A8A2CA0) - (v142 + v141) - 0xEAF700725451650) ^ 0x6FEAED2DD55A32A7;
  v144 = v143 ^ __ROR8__(v141, 61);
  v145 = __ROR8__(v143, 8);
  v146 = __ROR8__((((2 * ((v145 + v144) ^ 0x3D2CC4E5C304AE09)) & 0x5D07E2954C9434CALL) - ((v145 + v144) ^ 0x3D2CC4E5C304AE09) - 0x2E83F14AA64A1A66) ^ 0x8893D652EA3595FFLL, 8);
  v147 = (((2 * ((v145 + v144) ^ 0x3D2CC4E5C304AE09)) & 0x5D07E2954C9434CALL) - ((v145 + v144) ^ 0x3D2CC4E5C304AE09) - 0x2E83F14AA64A1A66) ^ 0x8893D652EA3595FFLL ^ __ROR8__(v144, 61);
  return (*(a65 + 8 * v65))(0xF99C96608AFF80DELL, 0x6FEAED2DD55A32A7, 0xC3E67D93F2F32D7, ((v113 << 16) | (v94 << 24) | (v129 << 8) | (((__ROR8__((v146 + v147) ^ 0x1A2AEBE44253AF03, 8) + ((v146 + v147) ^ 0x1A2AEBE44253AF03 ^ __ROR8__(v147, 61))) ^ 0xAB3042D228875C41) >> (8 * (v79 & 7u))) ^ v132) & 0xBC59957, 0x1D5EE00E4A8A2CA0, 0x84D53DF2213B4FA4, (v113 << 16), 0xF1508FF8DABAE9B0, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, ((v77 + 10) ^ 0xEF3EBFFBFBFFF1FBLL) + 0x72CFFFBDFCFBFF3ELL + ((2 * (v77 + 10)) & 0xDE7D7FF7F7FFE3F6), ((v73 + 10) ^ 0x738EBFBBF8FBFFFDLL) - 0x1180000200000EC4 + ((2 * (v73 + 10)) & 0xE71D7F77F1F7FFFALL), v149, ((v68 + 10) ^ 0xE3AEBFFBF9FFFF7BLL) + 0x7E5FFFBDFEFBF1BELL + ((2 * (v68 + 10)) & 0xC75D7FF7F3FFFEF6), v150, v151, v78, v152, v77 + 10, v73 + 10, a27, v153, a29, v154, a31, v155, a33, v156, a35, ((v76 + 6) ^ 0xFE1EBFBFF9FFFDFDLL) + 0x63EFFFF9FEFBF33CLL + ((2 * (v76 + 6)) & 0xFC3D7F7FF3FFFBFALL), a37, ((v75 + 6) ^ 0x7B5EFFBFFEFFFB79) - 0x1950400606040A40 + ((2 * (v75 + 6)) & 0xF6BDFF7FFDFFF6F2), a39, ((v73 + 6) ^ 0x6EDFBFBDF9FBF93FLL) - 0xCD1000401000806 + ((2 * (v73 + 6)) & 0xDDBF7F7BF3F7F27ELL), a41, v157, a43, a44, a45, ((v74 + 6) ^ 0xFA7EFFB9FDFBF33FLL) + 0x678FBFFFFAFFFDFALL + ((2 * (v74 + 6)) & 0xF4FDFF73FBF7E67ELL), a47, ((v71 + 6) ^ 0xEB7EBFFDFFFFF3B9) + 0x768FFFBBF8FBFD80 + ((2 * (v71 + 6)) & 0xD6FD7FFBFFFFE772), a49, ((v70 + 6) ^ 0xEA7FFFB9FEFBFBFFLL) + 0x778EBFFFF9FFF53ALL + ((2 * (v70 + 6)) & 0xD4FFFF73FDF7F7FELL), a51, ((v69 + 6) ^ 0x6F6FFFBFF9FBFF79) - 0xD61400601000E40 + ((2 * (v69 + 6)) & 0xDEDFFF7FF3F7FEF2), a53, ((v68 + 6) ^ 0xF22FFFFDFEFFFFBDLL) + 0x6FDEBFBBF9FBF17CLL + ((2 * (v68 + 6)) & 0xE45FFFFBFDFFFF7ALL));
}

uint64_t sub_1E334BDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a16 = (v20 + 1924) ^ (33731311 * (((&a15 | 0xFAB9C9ED) - (&a15 & 0xFAB9C9ED)) ^ 0xC34F03CE));
  a17 = a12;
  a18 = &a11;
  (*(v18 + 8 * (v20 ^ 0x2071)))(&a15);
  LODWORD(a18) = v20 - 2008441969 * ((&a15 & 0xDABD4C39 | ~(&a15 | 0xDABD4C39)) ^ 0x6DDBE7C8) + 4357;
  a17 = a12;
  v21 = (*(v18 + 8 * (v20 ^ 0x2083)))(&a15);
  return (*(v18 + 8 * (((a15 == v19) * (13 * (v20 ^ 0x56E) + 8385)) ^ v20)))(v21);
}

uint64_t sub_1E334BECC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x588]) = a1;
  STACK[0x5A0] = &STACK[0x720];
  STACK[0x5A8] = &STACK[0xAF0];
  v8 = STACK[0x598];
  v9 = STACK[0x5A0];
  *(v9 + ((a8 - 1065) | 0x380) - 969 * ((((a8 - 1065) | 0x380u) - 978) / 0x3C9) - 978) = 25;
  *(v9 + 253) = 24;
  return (*(v8 + 8 * a8))(2269373845, 969);
}

uint64_t sub_1E334BFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v29 = (((-773372235 * v26 + 677896456) ^ 0xB8832E66) + 1399559241) ^ (-773372235 * v26 + 677896456) ^ (((-773372235 * v26 + 677896456) ^ 0xFFDFF73F) + 339168530) ^ ((v27 ^ 0xCAF6BC7E) + ((-773372235 * v26 + 677896456) ^ 0x211E1C4B)) ^ (((-773372235 * v26 + 677896456) ^ 0x725580C3) + v25 - 1715661044);
  v30 = (v28 + 1091421423) & 0xBEF227FA;
  v32 = v29 != 337069521 && ((v30 - 1187) & v29) == 1;
  return (*(a2 + 8 * ((v32 * ((v28 + 1278289063) & 0xB3CED7D8 ^ 0x1471)) ^ v28)))(2579306252, a2, a3, a4, a5, v30, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_1E334C0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, int a15, char a16, uint64_t a17, char *a18, char a19, int a20, int a21, char a22, int a23, unsigned int a24, char *a25, char *a26, char *a27, char *a28)
{
  LODWORD(a27) = (v28 + 1760) ^ (1710126949 * (((&a23 | 0xCB3B8A3B) - &a23 + (&a23 & 0x34C475C0)) ^ 0xF920D1AB));
  a28 = &a19;
  a25 = a18;
  a26 = &a22;
  (*(v29 + 8 * (v28 + 8009)))(&a23);
  a27 = a18;
  a25 = &a13;
  LODWORD(a26) = v28 + 956911519 * ((&a23 & 0xD7BFEF72 | ~(&a23 | 0xD7BFEF72)) ^ 0xC2D16088) + 7714;
  (*(v29 + 8 * (v28 + 8048)))(&a23);
  a24 = (v28 + 1654) ^ (33731311 * (&a23 ^ 0x39F6CA23));
  a25 = a18;
  a26 = &a16;
  (*(v29 + 8 * (v28 ^ 0x234F)))(&a23);
  LODWORD(a26) = v28 - 2008441969 * ((((2 * &a23) | 0x1C841EBE) - &a23 + 1908273313) ^ 0xC6DB5B51) + 4087;
  a25 = a18;
  v30 = (*(v29 + 8 * (v28 + 8053)))(&a23);
  v31 = a23 == 61 * (v28 ^ 0x66D) + 16253424;
  return (*(v29 + 8 * (((32 * v31) | (v31 << 6)) ^ v28)))(v30);
}

uint64_t sub_1E334C2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v25 = (v21 + 1514618324) & 0xA5B8BFCE;
  v26 = v23[1] + *v23 + v23[2] + v23[3] + v23[4] + v23[5] + v23[6] + v23[7] + v23[8] + v23[9] + v23[10] + v23[11] + v23[12] + v23[13] + v23[14] + v23[15] + v23[16] + v23[17] + v23[18] + v23[19] + v23[20] + v23[21] + v23[22] + v23[23] + v23[24] + v23[25] + v23[26] + v23[27] + v23[28];
  v27 = (v26 + v23[29] + v23[30] + v23[31] + v23[32] + v23[33] + v23[34] + v23[35] + v23[36] + v23[37] + v23[38] + v23[39] + v23[40] + v23[41] + v23[42] + v23[43] + v23[44] + v23[45] + v23[46] + v23[47]) & (((v21 - 44) & 0xCE) + 53);
  *(a1 + 48) = (v27 + 2 * ((((2 * v27) ^ 0xA6) & 0x22 | v27) ^ ((2 * v27) ^ 0xA6) & (v27 | 0xE))) ^ 0x75;
  v28 = *(a21 + 16);
  *(v24 - 153) = v28[15] - ((2 * v28[15]) & 0x78) + 60;
  *(v24 - 154) = v28[14] - ((2 * v28[14]) & 0x78) + 60;
  *(v24 - 155) = v28[13] - ((v28[13] << (((v21 - 44) & 0xCE) + 56 + ((((v21 - 44) & 0xCE) + 97) | 0x90) + 64)) & 0x78) + 60;
  *(v24 - 156) = v28[12] - ((2 * v28[12]) & 0x78) + 60;
  *(v24 - 157) = v28[11] - ((2 * v28[11]) & 0x78) + 60;
  *(v24 - 158) = v28[10] - ((2 * v28[10]) & 0x78) + 60;
  *(v24 - 159) = v28[9] - ((2 * v28[9]) & 0x78) + 60;
  *(v24 - 160) = v28[8] - ((2 * v28[8]) & 0x78) + 60;
  *(v24 - 161) = v28[7] - ((2 * v28[7]) & 0x78) + 60;
  *(v24 - 162) = v28[6] - ((2 * v28[6]) & 0x78) + 60;
  *(v24 - 163) = v28[5] - ((2 * v28[5]) & 0x78) + 60;
  *(v24 - 164) = v28[4] - ((2 * v28[4]) & 0x78) + 60;
  *(v24 - 165) = v28[3] - ((2 * v28[3]) & 0x78) + 60;
  *(v24 - 166) = v28[2] - ((2 * v28[2]) & 0x78) + 60;
  *(v24 - 167) = v28[1] - ((2 * v28[1]) & 0x78) + 60;
  *(v24 - 168) = *v28 - ((2 * *v28) & 0x78) + 60;
  *(v24 - 148) = v25 - 956911519 * (((v24 - 152) & 0xF4C4C6ED | ~((v24 - 152) | 0xF4C4C6ED)) ^ 0xE1AA4917) + 1986974298;
  v29 = (*(v22 + 8 * (v25 ^ 0x2C78)))(v24 - 152);
  return (*(v22 + 8 * ((47 * (*(v24 - 152) == 222)) ^ v25)))(v29);
}

uint64_t sub_1E334C474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, unsigned int a31)
{
  *(v34 - 256) = 166012007;
  v31 = *(v34 - 192);
  *(v34 - 208) = 0;
  return (*(v33 + 8 * ((v31 != 0) | (a6 - 2219))))(a1, a2, a3, a4, a5, a6, a7, a31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a27 + 352, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_1E334C490@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v68 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v69 = vdupq_n_s64(0x38uLL);
  v70 = vdupq_n_s64(0x2A11B965E67D9C56uLL);
  v71 = vdupq_n_s64(v58);
  v72 = vdupq_n_s64(v59);
  v73 = vdupq_n_s64(v60);
  v74 = vdupq_n_s64(v66);
  v75 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v76 = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  v77 = vdupq_n_s64(v64);
  v78 = vdupq_n_s64(v61);
  v79 = vdupq_n_s64(v62);
  v80 = vdupq_n_s64(v63);
  v81 = vdupq_n_s64(0x64C31C027084DE6CuLL);
  v82 = vdupq_n_s64(v65);
  v83 = vdupq_n_s64(0xAB3042D228875C41);
  v84.i64[0] = v57 + a1 - 5;
  v84.i64[1] = v57 + a1 - 6;
  v85.i64[0] = v57 + a1 - 3;
  v85.i64[1] = v57 + a1 - 4;
  v86.i64[0] = v57 + a1 - 1;
  v86.i64[1] = v57 + a1 - 2;
  v87.i64[0] = v57 + a1 + 3;
  v87.i64[1] = v57 + a1 + 2;
  v88.i64[0] = v57 + a1 + 5;
  v88.i64[1] = v57 + a1 + 4;
  v89.i64[0] = v57 + a1 + 7;
  v89.i64[1] = v57 + a1 + 6;
  v90.i64[0] = v57 + a1 + 9;
  v90.i64[1] = v57 + a1 + (((a2 - 6503) | 0x400u) ^ 0x451);
  v91 = vandq_s8(v90, v68);
  v92 = vandq_s8(v89, v68);
  v93 = vandq_s8(v88, v68);
  v94 = vandq_s8(v87, v68);
  v95 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v96 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v97 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v98 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v99 = vsubq_s64(v97, vandq_s8(vaddq_s64(vaddq_s64(v97, v97), v70), v71));
  v100 = vsubq_s64(v98, vandq_s8(vaddq_s64(vaddq_s64(v98, v98), v70), v71));
  v101 = vaddq_s64(vsubq_s64(v96, vandq_s8(vaddq_s64(vaddq_s64(v96, v96), v70), v71)), v72);
  v102 = vaddq_s64(vsubq_s64(v95, vandq_s8(vaddq_s64(vaddq_s64(v95, v95), v70), v71)), v72);
  v103 = veorq_s8(v102, v73);
  v104 = veorq_s8(v101, v73);
  v105 = veorq_s8(v101, v74);
  v106 = veorq_s8(v102, v74);
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105), v75);
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v106), v75);
  v109 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  v110 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v111 = veorq_s8(v107, v109);
  v112 = vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL);
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v111);
  v114 = veorq_s8(vaddq_s64(v112, v110), v76);
  v115 = veorq_s8(v113, v76);
  v116 = vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL);
  v117 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v118 = veorq_s8(v114, v116);
  v119 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v118);
  v121 = veorq_s8(vaddq_s64(v119, v117), v77);
  v122 = veorq_s8(v120, v77);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v124 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v125 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v124);
  v127 = vaddq_s64(v125, v123);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), v78), v127), v79), v80);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v126, v126), v78), v126), v79), v80);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v131 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v132 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v131);
  v134 = veorq_s8(vaddq_s64(v132, v130), v81);
  v135 = veorq_s8(v133, v81);
  v136 = vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL);
  v137 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v138 = veorq_s8(v134, v136);
  v139 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v138);
  v141 = veorq_s8(vaddq_s64(v139, v137), v82);
  v142 = veorq_s8(v140, v82);
  v143 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v137.i64[0] = v57 + a1 + 1;
  v137.i64[1] = v57 + a1;
  v144 = vaddq_s64(v99, v72);
  v246.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v143), v83), vnegq_s64(vandq_s8(vshlq_n_s64(v87, 3uLL), v69)));
  v246.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL))), v83), vnegq_s64(vandq_s8(vshlq_n_s64(v88, 3uLL), v69)));
  v145 = veorq_s8(v144, v73);
  v146 = veorq_s8(v144, v74);
  v147 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146), v75);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v149 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148), v76);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v151 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150), v77);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v152);
  v154 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v153, v153), v78), v153), v79), v80);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), v81);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), v82);
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL)));
  v160 = vandq_s8(v137, v68);
  v161 = vaddq_s64(v100, v72);
  v246.val[1] = vshlq_u64(veorq_s8(v159, v83), vnegq_s64(vandq_s8(vshlq_n_s64(v89, 3uLL), v69)));
  v162 = veorq_s8(v161, v73);
  v163 = veorq_s8(v161, v74);
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), v75);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165), v76);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v168 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167), v77);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v170, v170), v78), v170), v79), v80);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172), v81);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v175 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174), v82);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v177 = vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL);
  v178 = vandq_s8(v86, v68);
  v179 = vaddq_s64(v177, v176);
  v180 = vandq_s8(v85, v68);
  v246.val[0] = vshlq_u64(veorq_s8(v179, v83), vnegq_s64(vandq_s8(vshlq_n_s64(v90, 3uLL), v69)));
  v181 = vandq_s8(v84, v68);
  v182 = vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL);
  v183 = vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL);
  v184 = vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL);
  v185 = vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL);
  v186 = vsubq_s64(v184, vandq_s8(vaddq_s64(vaddq_s64(v184, v184), v70), v71));
  v187 = vaddq_s64(vsubq_s64(v183, vandq_s8(vaddq_s64(vaddq_s64(v183, v183), v70), v71)), v72);
  v188 = vaddq_s64(vsubq_s64(v182, vandq_s8(vaddq_s64(vaddq_s64(v182, v182), v70), v71)), v72);
  v183.i64[0] = vqtbl4q_s8(v246, xmmword_1E4316E10).u64[0];
  v189 = veorq_s8(v188, v73);
  v246.val[0] = veorq_s8(v187, v73);
  v190 = veorq_s8(v187, v74);
  v191 = veorq_s8(v188, v74);
  v246.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246.val[0], 0x38uLL), v246.val[0], 8uLL), v190), v75);
  v192 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v191), v75);
  v193 = veorq_s8(v192, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v194 = veorq_s8(v246.val[0], vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v246.val[1] = vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL);
  v195 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246.val[0], 0x38uLL), v246.val[0], 8uLL), v194);
  v246.val[0] = veorq_s8(vaddq_s64(v246.val[1], v193), v76);
  v196 = veorq_s8(v195, v76);
  v246.val[1] = vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL);
  v197 = veorq_s8(v196, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v198 = veorq_s8(v246.val[0], v246.val[1]);
  v246.val[1] = vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL);
  v199 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246.val[0], 0x38uLL), v246.val[0], 8uLL), v198);
  v246.val[0] = veorq_s8(vaddq_s64(v246.val[1], v197), v77);
  v200 = veorq_s8(v199, v77);
  v246.val[1] = vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL);
  v201 = veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL));
  v202 = veorq_s8(v246.val[0], v246.val[1]);
  v246.val[1] = vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL);
  v203 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246.val[0], 0x38uLL), v246.val[0], 8uLL), v202);
  v246.val[0] = vaddq_s64(v246.val[1], v201);
  v246.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v246.val[0], v246.val[0]), v78), v246.val[0]), v79), v80);
  v204 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v203, v203), v78), v203), v79), v80);
  v246.val[1] = vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL);
  v205 = veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL));
  v206 = veorq_s8(v246.val[0], v246.val[1]);
  v246.val[1] = vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL);
  v207 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246.val[0], 0x38uLL), v246.val[0], 8uLL), v206);
  v246.val[0] = veorq_s8(vaddq_s64(v246.val[1], v205), v81);
  v208 = veorq_s8(v207, v81);
  v246.val[1] = vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL);
  v209 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v210 = veorq_s8(v246.val[0], v246.val[1]);
  v246.val[1] = vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL);
  v211 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246.val[0], 0x38uLL), v246.val[0], 8uLL), v210);
  v246.val[0] = veorq_s8(vaddq_s64(v246.val[1], v209), v82);
  v212 = veorq_s8(v211, v82);
  v213 = vaddq_s64(v186, v72);
  v246.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246.val[0], 0x38uLL), v246.val[0], 8uLL), veorq_s8(v246.val[0], vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL))), v83), vnegq_s64(vandq_s8(vshlq_n_s64(v84, 3uLL), v69)));
  v246.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL), veorq_s8(v212, vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL))), v83), vnegq_s64(vandq_s8(vshlq_n_s64(v85, 3uLL), v69)));
  v214 = veorq_s8(v213, v73);
  v215 = veorq_s8(v213, v74);
  v216 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v215), v75);
  v217 = veorq_s8(v216, vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL));
  v218 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL), v217), v76);
  v219 = veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL));
  v220 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), v219), v77);
  v221 = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL));
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v221);
  v223 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v222, v222), v78), v222), v79), v80);
  v224 = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v225 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v224), v81);
  v226 = veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v227 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), v226), v82);
  v228 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL), veorq_s8(v227, vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL)));
  v229 = vaddq_s64(vsubq_s64(v185, vandq_s8(vaddq_s64(vaddq_s64(v185, v185), v70), v71)), v72);
  v246.val[1] = vshlq_u64(veorq_s8(v228, v83), vnegq_s64(vandq_s8(vshlq_n_s64(v86, 3uLL), v69)));
  v230 = veorq_s8(v229, v73);
  v231 = veorq_s8(v229, v74);
  v232 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL), v231), v75);
  v233 = veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL));
  v234 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), v233), v76);
  v235 = veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v233, 3uLL), v233, 0x3DuLL));
  v236 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v235), v77);
  v237 = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL));
  v238 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), v237);
  v239 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v238, v238), v78), v238), v79), v80);
  v240 = veorq_s8(v239, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL));
  v241 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), v240), v81);
  v242 = veorq_s8(v241, vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL));
  v243 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), v242), v82);
  v246.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL), veorq_s8(v243, vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL))), v83), vnegq_s64(vandq_s8(vshlq_n_s64(v137, 3uLL), v69)));
  v183.i64[1] = vqtbl4q_s8(v246, xmmword_1E4316E10).u64[0];
  v244 = vrev64q_s8(v183);
  *(v137.i64[1] - 6) = veorq_s8(vextq_s8(v244, v244, 8uLL), *(a57 - 16 + a1));
  return (*(*(v67 - 256) + 8 * ((115 * ((((a2 - 13) ^ 0xFFFFE643) & a1) != 16)) ^ (a2 - 13))))();
}

uint64_t sub_1E334CE28(uint64_t a1)
{
  *(a1 + v3 - 1955862068) = *(v5 + v3 - 1955862068) - ((2 * *(v5 + v3 - 1955862068)) & 0x78) + 60;
  v6 = v3 - 1 != 11 * (v2 ^ 0x11FFu) + v1;
  return (*(v4 + 8 * (((4 * v6) | (8 * v6)) ^ v2)))();
}

void sub_1E334CFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  v13 = 2008441969 * ((~&a10 & 0xA25BEAEB | &a10 & 0x5DA41514) ^ 0xEAC2BEE5);
  a11 = 9 - v13;
  a10 = v13 + v12 - 791;
  (*(v11 + 8 * (v12 + 1495)))(&a10);
  JUMPOUT(0x1E3349FFCLL);
}

uint64_t sub_1E334D070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20, uint64_t a21, char *a22, unsigned int a23, unsigned int a24)
{
  v28 = ((&a19 & 0x41465F88 | ~(&a19 | 0x41465F88)) ^ 0xE6D07315) * v26;
  a21 = a16;
  a22 = &a14;
  a20 = v28 + 890171713;
  a23 = -654855621 - v28;
  a24 = v28 + v25 + 1674575081;
  v29 = (*(v27 + 8 * (v25 + 5575)))(&a19);
  return (*(v27 + 8 * ((7605 * (a19 == ((v25 + 125) ^ 0xD87 ^ (v24 + 2789)))) ^ v25)))(v29);
}

uint64_t sub_1E334D12C@<X0>(int a1@<W8>)
{
  v4 = a1 | 0x440;
  v5 = 1317436891 * ((2 * ((v3 - 120) & 0x216E73B8) - (v3 - 120) + 1586596935) ^ 0xEE921431);
  *(v3 - 120) = (a1 | 0x440) - v5 + 1485;
  *(v3 - 116) = (v2 + (a1 | 0x440) - 149383288) ^ v5;
  v6 = (*(v1 + 8 * ((a1 | 0x440) + 8582)))(v3 - 120);
  return (*(v1 + 8 * ((6354 * (*(v3 - 112) == 16257999)) ^ v4)))(v6);
}

uint64_t sub_1E334D244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = ~v5 + v2;
  v12 = *(a2 + v11 - 15);
  v13 = *(a2 + v11 - 31);
  v14 = a1 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v9 + 8 * (((v5 + v7 + v6 == v3) * v8) ^ (v10 + v4 + 2999))))();
}

void bcn5Uck5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v7 = a6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = !v7 && a7 != 0;
  __asm { BRAA            X9, X17 }
}

void sub_1E334D408()
{
  (*(v1 + 8 * (v0 + 6691)))();
  STACK[0x6B8] = 0;
  JUMPOUT(0x1E334D430);
}

uint64_t sub_1E334D44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a17 = a13;
  a18 = &a12;
  a16 = (v18 - 2573) ^ (33731311 * ((&a15 + 1491350229 - 2 * (&a15 & 0x58E432D5)) ^ 0x6112F8F6));
  (*(v20 + 8 * (v18 + 3776)))(&a15);
  LODWORD(a18) = v18 - 2008441969 * (((&a15 | 0xA195217A) - &a15 + (&a15 & 0x5E6ADE80)) ^ 0xE90C7574) - 140;
  a17 = a13;
  v21 = (*(v20 + 8 * (v18 ^ 0x3332)))(&a15);
  return (*(v20 + 8 * ((26 * (a15 == ((v18 - 2777) ^ (v19 + 1104)))) ^ v18)))(v21);
}

uint64_t sub_1E334D540(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v76 = *STACK[0x390] + 6;
  v77 = __ROR8__(v76 & 0xFFFFFFFFFFFFFFF8, 8);
  v78 = ((0x6AF7234D0CC131D4 - v77) & 0x435B154A729201BFLL) + v77 - 0x6AF7234D0CC131D5 - ((v77 - 0x6AF7234D0CC131D5) & 0x435B154A729201BFLL);
  v79 = __ROR8__(v78 ^ 0xAB257711D84E66DLL, 8);
  v78 ^= 0xA2F4B2E684729731;
  v80 = (((v79 + v78) & 0xB9CE2113715ACFF7 ^ 0x184A000231524D61) + ((v79 + v78) & 0x4631DEEC8EA53008 ^ 0x460196A406053009) - 1) ^ 0xBAD6E179B06AC217;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0xF5A2F1B9B5D0B209;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ a1;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ a8;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ a7;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = __ROR8__(v88, 8) + v89;
  v91 = __ROR8__((*STACK[0x390] + 7) & 0xFFFFFFFFFFFFFFF8, 8);
  v92 = (0x6AF7234D0CC131D4 - v91) & 0xC2A16714FA488FC8 | (v91 + 0x1508DCB2F33ECE2BLL) & 0x3D5E98EB05B77037;
  v93 = __ROR8__(v92 ^ 0x8B48252F955E681ALL, 8);
  v94 = ((2 * v90) | 0x36A4398A31861B6ALL) - v90;
  v95 = v92 ^ 0x230EC0B80CA81946;
  v96 = (((2 * (v93 + (v92 ^ 0x230EC0B80CA81946))) & 0xAC7FF88AB7D467A0) - (v93 + (v92 ^ 0x230EC0B80CA81946)) - 0x563FFC455BEA33D1) ^ 0x4D5D746523287351;
  v97 = v96 ^ __ROR8__(v95, 61);
  v98 = __ROR8__(v96, 8);
  LOBYTE(v96) = (((__ROR8__((v94 - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6, 8) + ((v94 - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6 ^ __ROR8__(v89, 61))) ^ 0xAB3042D228875C41) >> (8 * (v76 & 7u))) ^ 0xDD;
  v99 = (v98 + v97 - ((2 * (v98 + v97)) & 0xBB63D01A1060ED3ALL) - 0x224E17F2F7CF8963) ^ 0x281319B4BDE0C494;
  v100 = v99 ^ __ROR8__(v97, 61);
  v101 = *(a67 + 8 * (a66 - 5992));
  *v76 = v96 ^ 0xDD;
  v102 = (__ROR8__(v99, 8) + v100) ^ a1;
  v103 = v102 ^ __ROR8__(v100, 61);
  v104 = (__ROR8__(v102, 8) + v103) ^ a8;
  v105 = v104 ^ __ROR8__(v103, 61);
  v106 = __ROR8__(v104, 8);
  v107 = (((2 * (v106 + v105)) | 0x63B77BB044F1F226) - (v106 + v105) + 0x4E244227DD8706EDLL) ^ 0xD518A1DA52FC277FLL;
  v108 = v107 ^ __ROR8__(v105, 61);
  v109 = (__ROR8__(v107, 8) + v108) ^ 0x1A2AEBE44253AF03;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = __ROR8__(v109, 8);
  *(v76 + 1) = ((v111 + v110 - ((2 * (v111 + v110)) & 0x7F0D34FB28D08226) + 0x3F869A7D94684113) ^ 0x94B6D8AFBCEF1D52) >> (8 * ((v76 + 1) & 7));
  v112 = __ROR8__((v76 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v113 = ((2 * v112 + 0x2A11B965E67D9C56) & 0xC8758E867E4F43EALL) - v112 + 0x6BC5C09CD998FDFLL;
  v114 = __ROR8__(v113 ^ v69, 8);
  v115 = v113 ^ v70;
  v116 = (v114 + v115) ^ 0xE49D77DF873DBF7ELL;
  v117 = v116 ^ __ROR8__(v115, 61);
  v118 = (__ROR8__(v116, 8) + v117) ^ 0xF5A2F1B9B5D0B209;
  v119 = v118 ^ __ROR8__(v117, 61);
  v120 = (__ROR8__(v118, 8) + v119) ^ a1;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = __ROR8__(v120, 8);
  v123 = ((v71 | (2 * (v122 + v121))) - (v122 + v121) + v72) ^ v73;
  v124 = v123 ^ __ROR8__(v121, 61);
  v125 = (__ROR8__(v123, 8) + v124) ^ a7;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = (__ROR8__(v125, 8) + v126) ^ 0x1A2AEBE44253AF03;
  *(v76 + 2) = ((__ROR8__(v127, 8) + (v127 ^ __ROR8__(v126, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v76 + 2) & 7));
  v128 = __ROR8__((v76 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v129 = (0xAF7234D0CC131D4 - v128) & v74 | (v128 - 0x6AF7234D0CC131D5) & v75;
  v130 = v129 ^ v67;
  v131 = v129 ^ v68;
  v132 = (__ROR8__(v130, 8) + v131) ^ 0xE49D77DF873DBF7ELL;
  v133 = v132 ^ __ROR8__(v131, 61);
  v134 = (__ROR8__(v132, 8) + v133) ^ 0xF5A2F1B9B5D0B209;
  v135 = v134 ^ __ROR8__(v133, 61);
  v136 = __ROR8__(v134, 8);
  v137 = ((a3 | (2 * (v136 + v135))) - (v136 + v135) + a5) ^ a6;
  v138 = v137 ^ __ROR8__(v135, 61);
  v139 = (__ROR8__(v137, 8) + v138) ^ a8;
  v140 = v139 ^ __ROR8__(v138, 61);
  v141 = (__ROR8__(v139, 8) + v140) ^ a7;
  v142 = v141 ^ __ROR8__(v140, 61);
  v143 = (__ROR8__(v141, 8) + v142) ^ 0x1A2AEBE44253AF03;
  *(v76 + 3) = a4 ^ 0x89 ^ (((__ROR8__(v143, 8) + (v143 ^ __ROR8__(v142, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v76 + 3) & 7)));
  return v101();
}

uint64_t sub_1E334D56C()
{
  v4 = STACK[0x700];
  v5 = STACK[0x630];
  STACK[0xAC8] = &STACK[0xB20] + v2;
  STACK[0x628] = v0;
  STACK[0x570] = v4;
  STACK[0x410] = v5;
  v6 = (*(v3 + 8 * (v1 + 4131)))();
  STACK[0x4B0] = 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  return (*(v3 + 8 * ((v8 * (((v1 - 4305) | 0x2001) + (v1 ^ 0xFFFFC95F))) ^ v1)))(v6);
}

uint64_t sub_1E334D67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v64 = v60 - v61 - 1362066502;
  v65 = (v64 ^ 0x550F7F49) & (2 * (v64 & 0x512F7C60)) ^ v64 & 0x512F7C60;
  v66 = ((2 * (v64 ^ 0x754F6749)) ^ 0x48C03652) & (v64 ^ 0x754F6749) ^ (((v62 - 2925) | 0xC93) ^ 0x2460169B) & (2 * (v64 ^ 0x754F6749)) ^ 0x24200929;
  v67 = ((4 * v65) & 0x4601300 | 0x820) ^ v65 ^ v66 & (4 * v65);
  v68 = (4 * v66) & 0x24601B28 ^ 0x24601309 ^ ((4 * v66) ^ 0x91806CA4) & v66;
  v69 = (16 * v67) & 0x24601B20 ^ v67 ^ ((16 * v67) ^ 0x8200) & v68;
  v70 = (16 * v68) & 0x24601B20 ^ 0x20600929 ^ ((16 * v68) ^ 0x4601B290) & v68;
  v71 = v69 ^ 0x24601109 ^ (v69 << 8) & 0x24601B00 ^ ((v69 << 8) ^ 0xA2000) & v70;
  v72 = v64 ^ (2 * ((v71 << 16) & 0x24600000 ^ v71 ^ ((v71 << 16) ^ 0x1B290000) & ((v70 << 8) & 0x24600000 ^ 0x4600000 ^ ((v70 << 8) ^ 0x601B0000) & v70)));
  v73 = *(v63 + 8 * (v62 ^ 0x292F));
  STACK[0x200] = a5;
  v74 = v73(v72 ^ 0x19AF4A32u, 0x100004077774924);
  return (*(v63 + 8 * ((101 * (v74 != 0)) ^ v62)))(v74, 197499219, v75, v76, STACK[0x200], v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_1E334D8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, unsigned int a22, uint64_t a23, uint64_t a24)
{
  v29 = ((2 * ((&a20 ^ 0x94894EF1) & 0x7BCE3E91) - (&a20 ^ 0x94894EF1) - 2077114008) ^ 0x48D15CFB) * v25;
  a23 = v26;
  a24 = a18;
  a22 = (v27 ^ 0xEEFCEABE) + ((2 * v27) & 0xDDF9D57C) - v29 + 1604845516;
  a20 = v29 + v24 + 2586;
  v30 = (*(v28 + 8 * (v24 ^ 0x210C)))(&a20);
  return (*(v28 + 8 * (((a21 == 16257999) * ((222 * (v24 ^ 0x496) + 242038167) & 0x92DEDB ^ 0x12F8)) ^ v24)))(v30);
}

uint64_t sub_1E334E3A0(uint64_t a1)
{
  *(a1 + 16) = *v2;
  *(a1 + 88) = *(v2 + 72);
  *(a1 + 92) = *(v2 + 76);
  *(a1 + 96) = *(v2 + 80);
  *(a1 + 97) = *(v2 + 81);
  *(a1 + 120) = *(v2 + 104);
  *(a1 + 100) = *(v2 + 84);
  *(a1 + 124) = *(v2 + 108) & 1;
  *(a1 + 55) = *(v2 + 39) ^ 0x13 ^ *(*(&off_1F5DB1610 + (v1 ^ 0x32D4) - 5758) + 7) ^ *(*(&off_1F5DB1610 + (v1 ^ 0x256C)) + (((v1 ^ 0x32D4) - 729015424) & 0x2B73EFAF) - 8734) ^ *(*(&off_1F5DB1610 + (v1 ^ 0x2507)) + 15) ^ 0x3C;
  return (*(v3 + 8 * (v1 ^ 0x32D4)))();
}

uint64_t sub_1E334E4B0()
{
  *(v1 - 232) = v0 + 869295389 * (((v1 - 232) & 0xE57AF245 | ~((v1 - 232) | 0xE57AF245)) ^ 0xABD121E9) - 379707652;
  v3 = (*(v2 + 8 * (v0 ^ 0x349A)))(v1 - 232);
  v4 = STACK[0x400];
  v5 = *(v1 - 228);
  v6 = (v0 - 86) ^ 1;
  v7 = *(&off_1F5DB1610 + (v0 ^ 0x113E));
  v8 = *(&off_1F5DB1610 + (v0 ^ 0x11E9));
  if (v5 == v6)
  {
    v9 = v7 - 12;
  }

  else
  {
    v9 = *(&off_1F5DB1610 + (v0 ^ 0x11E9));
  }

  STACK[0x930] = v9;
  v10 = (v7 + 12);
  if (v5 != v6)
  {
    v10 = (v8 + 24);
  }

  return (*(v4 + 8 * (((*v10 == 108) * (((v0 - 4469) | 0x1066) - 4024)) ^ v0)))(v3);
}

void PjPfaWZz()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 + dword_1ECF431C0) ^ 0xDF)) ^ byte_1E430E980[byte_1E4307AA0[(-85 * ((dword_1ECF432C0 + dword_1ECF431C0) ^ 0xDF))] ^ 0x6D]) + 16);
  v1 = -85 * ((dword_1ECF432C0 + *v0) ^ 0xDF);
  v2 = *(&off_1F5DB1610 + (*(off_1F5DB1800 + (*(off_1F5DB19C8 + v1 - 12) ^ 0xE2u) - 12) ^ v1) + 171);
  v3 = *v0 ^ &v5 ^ *v2;
  *v0 = 2054362027 * v3 + 0x1FC86B74B1533AF5;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * (((v6 | 0x4D202153) + (~v6 | 0xB2DFDEAC)) ^ 0x7F3B7AC2);
  LOBYTE(v2) = -85 * ((*v2 - *v0) ^ 0xDF);
  v4 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 - dword_1ECF431C0) ^ 0xDF)) ^ byte_1E42FD730[byte_1E4316CE0[(-85 * ((dword_1ECF432C0 - dword_1ECF431C0) ^ 0xDF))] ^ 0xE9]) + 135) - 8;
  (*&v4[8 * (*(off_1F5DB1E80 + (*(off_1F5DB1BE0 + v2) ^ 0x2Au) - 8) ^ v2) + 75712])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1E334E7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v78 = v64;
  v77 = v63;
  v67 = *(v61 + 8 * (v65 + 389));
  LODWORD(STACK[0x2BC]) = v62;
  *(v66 - 256) = v61;
  v68 = v67(16, 0x20040A4A59CD2);
  v69 = *(v66 - 256);
  v70 = LODWORD(STACK[0x2BC]);
  STACK[0x240] = 0;
  return (*(v69 + 8 * (((v68 != 0) * ((v65 ^ 0x249A) + 14 * (v65 ^ 0x2433) - 623)) ^ v65)))(v68, v71, v72, v73, v74, v75, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v77, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, v78, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61);
}

uint64_t sub_1E334E9AC(uint64_t a1)
{
  v1 = 956911519 * (((a1 | 0x8055C80B) - a1 + (a1 & 0x7FAA37F4)) ^ 0x6AC4B80E);
  v2 = *(a1 + 16) ^ v1;
  v3 = *(*(&off_1F5DB1610 + (v2 ^ 0x1710)) + 83);
  v4 = *(a1 + 12) + v1 - 1094129442;
  v5 = v3 - 91929968 > v4;
  if (v4 < 0xFA854290 != v3 > 0x57ABD6F)
  {
    v5 = v3 > 0x57ABD6F;
  }

  return (*(*(&off_1F5DB1610 + v2 - 5355) + (((v2 + 93) ^ v5) & 1 | v2) - 1))();
}

uint64_t sub_1E334EAE4@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v17 = vdupq_n_s64(0x38uLL);
  v18 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x3C0] = vdupq_n_s64(0x731CB210FB4C4567uLL);
  *&STACK[0x3D0] = vdupq_n_s64(0x19C69BDE09677532uLL);
  STACK[0x300] = v10 & 0xFFFFFFF8;
  *&STACK[0x3A0] = vdupq_n_s64(0x6D4CEA43F2532C17uLL);
  *&STACK[0x3B0] = vdupq_n_s64(0xC50A0FD46BA55D4BLL);
  *&STACK[0x380] = vdupq_n_s64(v12);
  *&STACK[0x390] = vdupq_n_s64(0xE7FEEAD13AAEBCF2);
  *&STACK[0x360] = vdupq_n_s64(a1);
  *&STACK[0x370] = vdupq_n_s64(v13);
  *&STACK[0x340] = vdupq_n_s64(a3);
  *&STACK[0x350] = vdupq_n_s64(a2);
  v19 = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  v20 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v21 = vdupq_n_s64(0x64C31C027084DE6CuLL);
  *&STACK[0x320] = vdupq_n_s64(a5);
  *&STACK[0x330] = vdupq_n_s64(a4);
  v22 = vdupq_n_s64(a6);
  v23 = vdupq_n_s64(0xAB3042D228875C41);
  v24 = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  v25 = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  v26 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v27 = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  v28 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v29 = vdupq_n_s64(a7);
  v30 = vdupq_n_s64(a8);
  *&STACK[0x310] = xmmword_1E4316DF0;
  v31 = vdupq_n_s64(v15);
  STACK[0x3E0] = *(v9 + v10 - v11 - 8);
  v32.i64[0] = v9 + v10 - v11 - 5;
  v32.i64[1] = v9 + v10 - v11 + ((v14 - 3520) | 0x834u) - 4090;
  v33.i64[0] = v9 + v10 - v11 - 1;
  v33.i64[1] = v9 + v10 - v11 - 2;
  v34.i64[0] = v9 + v10 - v11 - 3;
  v34.i64[1] = v9 + v10 - v11 - 4;
  v35.i64[0] = v9 + v10 - v11 - 7;
  v35.i64[1] = v9 + v10 - v11 - 8;
  v36.i64[0] = a9 + v10 - v11 + 5;
  v36.i64[1] = a9 + v10 - v11 + 4;
  v37.i64[0] = a9 + v10 - v11 + 9;
  v37.i64[1] = a9 + v10 - v11 + 8;
  v38 = vandq_s8(v35, v16);
  v39 = vandq_s8(v34, v16);
  v40 = vandq_s8(v33, v16);
  v41 = vandq_s8(v32, v16);
  v42 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), v18);
  v43 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), v18);
  v44 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), v18);
  v45 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), v18);
  v46 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v42, v42), *&STACK[0x3D0]), v42), *&STACK[0x3C0]);
  v47 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v43, v43), *&STACK[0x3D0]), v43), *&STACK[0x3C0]);
  v48 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v44, v44), *&STACK[0x3D0]), v44), *&STACK[0x3C0]);
  v49 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v45, v45), *&STACK[0x3D0]), v45), *&STACK[0x3C0]);
  v50 = veorq_s8(v49, *&STACK[0x3B0]);
  v51 = veorq_s8(v48, *&STACK[0x3B0]);
  v52 = veorq_s8(v47, *&STACK[0x3B0]);
  v53 = veorq_s8(v46, *&STACK[0x3B0]);
  v54 = veorq_s8(v46, *&STACK[0x3A0]);
  v55 = veorq_s8(v47, *&STACK[0x3A0]);
  v56 = veorq_s8(v48, *&STACK[0x3A0]);
  v57 = veorq_s8(v49, *&STACK[0x3A0]);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v57);
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v56);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v55);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v54);
  v62 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v61, v61), *&STACK[0x390]), v61), *&STACK[0x380]), *&STACK[0x370]);
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v60, v60), *&STACK[0x390]), v60), *&STACK[0x380]), *&STACK[0x370]);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v59, v59), *&STACK[0x390]), v59), *&STACK[0x380]), *&STACK[0x370]);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v58, v58), *&STACK[0x390]), v58), *&STACK[0x380]), *&STACK[0x370]);
  v66 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v67 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v68 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v69 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v70 = veorq_s8(v64, v68);
  v71 = veorq_s8(v63, v67);
  v72 = veorq_s8(v62, v66);
  v73 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v74 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v75 = vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL);
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v72);
  v77 = vaddq_s64(v75, v71);
  v78 = vaddq_s64(v74, v70);
  v79 = vaddq_s64(v73, v69);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v79, v79), *&STACK[0x360]), v79), *&STACK[0x350]), *&STACK[0x340]);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v78, v78), *&STACK[0x360]), v78), *&STACK[0x350]), *&STACK[0x340]);
  v82 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v77, v77), *&STACK[0x360]), v77), *&STACK[0x350]), *&STACK[0x340]);
  v83 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v76, v76), *&STACK[0x360]), v76), *&STACK[0x350]), *&STACK[0x340]);
  v84 = vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL);
  v85 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v86 = vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL);
  v87 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v88 = veorq_s8(v82, v86);
  v89 = veorq_s8(v81, v85);
  v90 = veorq_s8(v80, v84);
  v91 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v92 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v90);
  v95 = veorq_s8(vaddq_s64(v91, v87), v19);
  v96 = veorq_s8(vaddq_s64(v92, v88), v19);
  v97 = veorq_s8(vaddq_s64(v93, v89), v19);
  v98 = veorq_s8(v94, v19);
  v99 = vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL);
  v100 = vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL);
  v101 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v102 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v103 = veorq_s8(v97, v101);
  v104 = veorq_s8(v96, v100);
  v105 = veorq_s8(v95, v99);
  v106 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v107 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v108 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v105);
  v110 = veorq_s8(vaddq_s64(v106, v102), v20);
  v111 = veorq_s8(vaddq_s64(v107, v103), v20);
  v112 = veorq_s8(vaddq_s64(v108, v104), v20);
  v113 = veorq_s8(v109, v20);
  v114 = vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL);
  v115 = vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL);
  v116 = vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL);
  v117 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v118 = veorq_s8(v112, v116);
  v119 = veorq_s8(v111, v115);
  v120 = veorq_s8(v110, v114);
  v121 = vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL);
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v120);
  v125 = veorq_s8(vaddq_s64(v121, v117), v21);
  v126 = veorq_s8(vaddq_s64(v122, v118), v21);
  v127 = veorq_s8(vaddq_s64(v123, v119), v21);
  v128 = veorq_s8(v124, v21);
  v129 = vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v131 = vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL);
  v132 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v133 = veorq_s8(v127, v131);
  v134 = veorq_s8(v126, v130);
  v135 = veorq_s8(v125, v129);
  v136 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v137 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v135);
  v140 = vaddq_s64(v138, v134);
  v141 = vaddq_s64(v137, v133);
  v142 = vaddq_s64(v136, v132);
  v143 = veorq_s8(vaddq_s64(vsubq_s64(v142, vandq_s8(vaddq_s64(v142, v142), *&STACK[0x330])), *&STACK[0x320]), v22);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(v141, vandq_s8(vaddq_s64(v141, v141), *&STACK[0x330])), *&STACK[0x320]), v22);
  v145 = veorq_s8(vaddq_s64(vsubq_s64(v140, vandq_s8(vaddq_s64(v140, v140), *&STACK[0x330])), *&STACK[0x320]), v22);
  v146 = veorq_s8(vaddq_s64(vsubq_s64(v139, vandq_s8(vaddq_s64(v139, v139), *&STACK[0x330])), *&STACK[0x320]), v22);
  v147 = vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL);
  v148 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v149 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v150 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v151 = veorq_s8(v143, v147);
  v152 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v154 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v134.i64[0] = a9 + v10 - v11 + 7;
  v134.i64[1] = a9 + v10 - v11 + 6;
  v155 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v151);
  v151.i64[0] = a9 + v10 - v11 + 3;
  v151.i64[1] = a9 + v10 - v11 + 2;
  v156 = vshlq_u64(veorq_s8(v155, v23), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v17)));
  v157 = vshlq_u64(veorq_s8(vaddq_s64(v154, v150), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), v17)));
  v158 = vshlq_u64(veorq_s8(vaddq_s64(v153, v149), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), v17)));
  v159 = vshlq_u64(veorq_s8(vaddq_s64(v152, v148), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), v17)));
  v160 = vandq_s8(v151, v16);
  v161 = vandq_s8(v134, v16);
  v162 = vandq_s8(v37, v16);
  v163 = vandq_s8(v36, v16);
  v164 = vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL);
  v165 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v18);
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v18);
  v168 = veorq_s8(v167, v24);
  v169 = veorq_s8(v166, v24);
  v170 = veorq_s8(v166, v25);
  v171 = veorq_s8(v167, v25);
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170), v26);
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v171), v26);
  v174 = vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL);
  v175 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v176 = veorq_s8(v172, v174);
  v177 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v176);
  v179 = veorq_s8(vaddq_s64(v177, v175), v27);
  v180 = veorq_s8(v178, v27);
  v181 = vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL);
  v182 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v183 = veorq_s8(v179, v181);
  v184 = vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL);
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v183);
  v186 = veorq_s8(vaddq_s64(v184, v182), v19);
  v187 = veorq_s8(v185, v19);
  v188 = vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL);
  v189 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v190 = veorq_s8(v186, v188);
  v191 = vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL);
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v190);
  v193 = veorq_s8(vaddq_s64(v191, v189), v20);
  v194 = veorq_s8(v192, v20);
  v195 = vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL);
  v196 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v197 = veorq_s8(v193, v195);
  v198 = vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL);
  v199 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v197);
  v200 = veorq_s8(vaddq_s64(v198, v196), v21);
  v201 = veorq_s8(v199, v21);
  v202 = vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL);
  v203 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v204 = veorq_s8(v200, v202);
  v205 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v206 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v204);
  v207 = veorq_s8(vaddq_s64(v205, v203), v28);
  v208 = veorq_s8(v206, v28);
  v209 = vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL);
  v210 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL));
  v211 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL), veorq_s8(v207, v209));
  v212 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), v210);
  v213 = vaddq_s64(v165, v18);
  v244.val[3] = veorq_s8(v159, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v212, vandq_s8(vaddq_s64(v212, v212), v29)), v30), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v151, 3uLL), v17))));
  v244.val[1] = veorq_s8(v158, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v211, vandq_s8(vaddq_s64(v211, v211), v29)), v30), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v134, 3uLL), v17))));
  v214 = veorq_s8(v213, v24);
  v215 = veorq_s8(v213, v25);
  v216 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v215), v26);
  v217 = veorq_s8(v216, vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL));
  v218 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL), v217), v27);
  v219 = veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL));
  v220 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), v219), v19);
  v221 = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL));
  v222 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v221), v20);
  v223 = veorq_s8(v222, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v224 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), v223), v21);
  v225 = veorq_s8(v224, vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL));
  v226 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), v225), v28);
  v227 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL)));
  v228 = vaddq_s64(v164, v18);
  v244.val[0] = veorq_s8(v157, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v227, vandq_s8(vaddq_s64(v227, v227), v29)), v30), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), v17))));
  v229 = veorq_s8(v228, v24);
  v230 = veorq_s8(v228, v25);
  v231 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v230), v26);
  v232 = veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL));
  v233 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), v232), v27);
  v234 = veorq_s8(v233, vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL));
  v235 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL), v234), v19);
  v236 = veorq_s8(v235, vsraq_n_u64(vshlq_n_s64(v234, 3uLL), v234, 0x3DuLL));
  v237 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL), v236), v20);
  v238 = veorq_s8(v237, vsraq_n_u64(vshlq_n_s64(v236, 3uLL), v236, 0x3DuLL));
  v239 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v237, 0x38uLL), v237, 8uLL), v238), v21);
  v240 = veorq_s8(v239, vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL));
  v241 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), v240), v28);
  v242 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), veorq_s8(v241, vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL)));
  v244.val[2] = veorq_s8(v156, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v242, vandq_s8(vaddq_s64(v242, v242), v29)), v30), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), v17))));
  *(a9 + v10 - v11 + 2) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v244, *&STACK[0x310])), STACK[0x3E0]);
  return (*(STACK[0x400] + 8 * ((25 * (8 - (v10 & 0xFFFFFFF8) == -v11)) | v14)))();
}