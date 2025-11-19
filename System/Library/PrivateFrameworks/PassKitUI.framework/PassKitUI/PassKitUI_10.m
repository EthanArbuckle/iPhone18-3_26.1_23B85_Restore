unint64_t sub_1BD14EDD8()
{
  result = sub_1BD14EE5C();
  if (v1 <= 0x3F)
  {
    result = _s11TotalAmountVMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BD14EE5C()
{
  result = qword_1EBD3A3D8;
  if (!qword_1EBD3A3D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3A3D8);
  }

  return result;
}

id sub_1BD14EEC4(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v96 = v3;
  v97 = v2;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v92 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v86 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A3E0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v86 - v14;
  KeyPath = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A3E8);
  v17 = MEMORY[0x1EEE9AC00](KeyPath, v16);
  v95 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v86 - v21;
  MEMORY[0x1EEE9AC00](v20, v23);
  v94 = &v86 - v24;
  v25 = *(v5 + 104);
  LODWORD(v90) = *MEMORY[0x1E69B8088];
  v91 = v5 + 104;
  v89 = v25;
  v25(v11);
  result = PKPassKitBundle();
  if (result)
  {
    v27 = result;
    v28 = sub_1BE04B6F4();
    v30 = v29;

    v87 = *(v5 + 8);
    v88 = v4;
    v87(v11, v4);
    v106[0] = v28;
    v106[1] = v30;
    v31 = sub_1BD0DDEBC();
    v32 = MEMORY[0x1E69E6158];
    *v15 = sub_1BE0506C4();
    *(v15 + 1) = v33;
    v15[16] = v34 & 1;
    *(v15 + 3) = v35;
    v36 = &v15[v12[21]];
    *v36 = swift_getKeyPath();
    v36[8] = 0;
    v37 = &v15[v12[22]];
    *v37 = swift_getKeyPath();
    v37[8] = 0;
    v38 = &v15[v12[18]];
    *v38 = sub_1BE04F7C4();
    *(v38 + 1) = 0;
    v38[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A3F0);
    v39 = v97;
    sub_1BD14F6BC(v97, v40);
    v41 = &v15[v12[19]];
    *v41 = 0x4020000000000000;
    v41[8] = 0;
    v15[v12[20]] = 1;
    LOBYTE(v38) = sub_1BE0501F4();
    sub_1BE04E1F4();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    sub_1BD0DE204(v15, v22, &qword_1EBD3A3E0);
    v50 = v94;
    v51 = &v22[*(KeyPath + 36)];
    *v51 = v38;
    *(v51 + 1) = v43;
    *(v51 + 2) = v45;
    *(v51 + 3) = v47;
    *(v51 + 4) = v49;
    v51[40] = 0;
    sub_1BD0DE204(v22, v50, &qword_1EBD3A3E8);
    v52 = *v39;
    v53 = [*v39 monetaryValue];
    if (v53 && (v54 = v53, v55 = [v53 formattedStringValue], v54, v55))
    {

      v86 = "REWARDS_DETAILS_SUMMARY_HEADER";
      v56 = v32;
      v57 = v92;
      KeyPath = v31;
      v58 = v88;
      v89(v92, v90, v88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_1BE0B69E0;
      v60 = [v52 programName];
      v61 = sub_1BE052434();
      v63 = v62;

      *(v59 + 56) = v56;
      *(v59 + 64) = sub_1BD110550();
      *(v59 + 32) = v61;
      *(v59 + 40) = v63;
      v64 = sub_1BE04B714();
      v66 = v65;

      v87(v57, v58);
      v106[0] = v64;
      v106[1] = v66;
      v67 = sub_1BE0506C4();
      v90 = v68;
      v91 = v67;
      v70 = v69;
      v102 = v71 & 1;
      KeyPath = swift_getKeyPath();
      v101 = 0;
      v92 = swift_getKeyPath();
      v100 = 0;
      v72 = sub_1BE04F7C4();
      v99 = 0;
      sub_1BD1518F4(v97, v73);
      memcpy(v103, v106, 0x551uLL);
      memcpy(v104, v106, 0x551uLL);
      sub_1BD0DE19C(v103, v105, &qword_1EBD3A408);
      sub_1BD0DE53C(v104, &qword_1EBD3A408);
      memcpy(&v98[7], v103, 0x551uLL);
      LOBYTE(v66) = v99;
      LOBYTE(v105[0]) = 0;
      LOBYTE(v64) = v102;
      LOBYTE(v63) = v101;
      LOBYTE(v58) = v100;
      LOBYTE(v59) = sub_1BE0501F4();
      sub_1BE04E1F4();
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v81 = v80;
      LOBYTE(v106[0]) = 0;
      v105[0] = v91;
      v105[1] = v90;
      LOBYTE(v105[2]) = v64;
      v105[3] = v70;
      v105[4] = v72;
      v105[5] = 0;
      LOBYTE(v105[6]) = v66;
      memcpy(&v105[6] + 1, v98, 0x558uLL);
      v105[178] = 0x4020000000000000;
      LOWORD(v105[179]) = 256;
      v105[180] = KeyPath;
      LOBYTE(v105[181]) = v63;
      v105[182] = v92;
      LOBYTE(v105[183]) = v58;
      LOBYTE(v105[184]) = v59;
      v105[185] = v75;
      v105[186] = v77;
      v105[187] = v79;
      v105[188] = v81;
      LOBYTE(v105[189]) = 0;
      PKEdgeInsetsMake(v105, v82);
      memcpy(v106, v105, 0x5E9uLL);
    }

    else
    {
      sub_1BD154B18(v106);
    }

    v83 = v95;
    sub_1BD0DE19C(v50, v95, &qword_1EBD3A3E8);
    memcpy(v103, v106, 0x5E9uLL);
    v84 = v96;
    sub_1BD0DE19C(v83, v96, &qword_1EBD3A3E8);
    v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A3F8) + 48);
    memcpy(v104, v103, 0x5E9uLL);
    sub_1BD0DE19C(v104, v105, &qword_1EBD3A400);
    sub_1BD0DE53C(v50, &qword_1EBD3A3E8);
    memcpy((v84 + v85), v104, 0x5E9uLL);
    memcpy(v105, v103, 0x5E9uLL);
    sub_1BD0DE53C(v105, &qword_1EBD3A400);
    return sub_1BD0DE53C(v83, &qword_1EBD3A3E8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD14F6BC(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v310 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A428);
  v306 = *(v4 - 8);
  v307 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v299 = &v290 - v6;
  v7 = sub_1BE04BD74();
  v302 = *(v7 - 8);
  v303 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v301 = &v290 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8);
  v11 = MEMORY[0x1EEE9AC00](v300, v10);
  v298 = &v290 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v290 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A430);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v309 = &v290 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v290 - v21;
  v23 = *v2;
  v24 = [*v2 programName];
  v25 = sub_1BE052434();
  v325 = v26;

  v27 = [v23 rewardsType];
  v308 = v22;
  v304 = v15;
  v318 = v23;
  if (v27 == 1 || v27 == 2)
  {
    v319 = sub_1BD1546B0();
    v324 = v32;
  }

  else if (v27 == 3 && (v28 = [v23 monetaryValue]) != 0 && (v29 = v28, v30 = objc_msgSend(v28, sel_formattedStringValue), v29, v30))
  {
    v319 = sub_1BE052434();
    v324 = v31;
  }

  else
  {
    v319 = 0;
    v324 = 0;
  }

  v33 = sub_1BE051464();
  v323 = sub_1BE051494();
  v327 = sub_1BE050324();
  v305 = sub_1BE050194();
  v317 = sub_1BE04F504();
  v569 = 1;
  v314 = v25;
  *v453 = v25;
  *&v453[8] = v325;
  v34 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v326 = v34;
  v35 = sub_1BE0506C4();
  v37 = v36;
  v39 = v38;
  v322 = v33;
  v40 = sub_1BE050564();
  v42 = v41;
  v44 = v43;
  sub_1BD0DDF10(v35, v37, v39 & 1);

  v45 = sub_1BE0505E4();
  v47 = v46;
  v49 = v48;
  sub_1BD0DDF10(v40, v42, v44 & 1);

  v50 = sub_1BE0505F4();
  v320 = v51;
  v321 = v50;
  LOBYTE(v42) = v52;
  v315 = v53;
  sub_1BD0DDF10(v45, v47, v49 & 1);

  KeyPath = swift_getKeyPath();
  v312 = swift_getKeyPath();
  LODWORD(v311) = v42 & 1;
  v453[0] = v42 & 1;
  LOBYTE(v452[0]) = 1;
  v54 = v324;
  if (v324)
  {
    *v453 = v319;
    *&v453[8] = v324;
    sub_1BE048C84();
    v55 = sub_1BE0506C4();
    v57 = v56;
    v59 = v58;
    v60 = sub_1BE050564();
    v62 = v61;
    v64 = v63;
    sub_1BD0DDF10(v55, v57, v59 & 1);

    v65 = sub_1BE0505E4();
    v67 = v66;
    v69 = v68;
    sub_1BD0DDF10(v60, v62, v64 & 1);

    v70 = sub_1BE0505F4();
    v72 = v71;
    v74 = v73;
    v76 = v75;
    sub_1BD0DDF10(v65, v67, v69 & 1);

    v77 = swift_getKeyPath();
    v54 = swift_getKeyPath();
    v78 = v72;
    v79 = v70;
    v453[0] = v74 & 1;
    LOBYTE(v452[0]) = 1;
    v80 = v74 & 1;
    v81 = 1;
  }

  else
  {
    v79 = 0;
    v78 = 0;
    v76 = 0;
    v77 = 0;
    v81 = 0;
    v80 = 0;
  }

  *&v536 = v321;
  *(&v536 + 1) = v320;
  v82 = v311;
  LOBYTE(v537) = v311;
  *(&v537 + 1) = *v567;
  DWORD1(v537) = *&v567[3];
  v83 = v315;
  *(&v537 + 1) = v315;
  v84 = v312;
  v85 = KeyPath;
  *&v538 = KeyPath;
  BYTE8(v538) = 0;
  HIDWORD(v538) = *&v566[3];
  *(&v538 + 9) = *v566;
  v539 = v312;
  v540 = 0;
  v541 = 1;
  LOBYTE(v553) = 1;
  v551 = v538;
  v552 = v312;
  v550 = v537;
  v549 = v536;
  v535 = 1;
  *&v542 = v79;
  *(&v542 + 1) = v78;
  *&v543 = v80;
  *(&v543 + 1) = v76;
  v544 = v77;
  v545 = 0;
  v546 = v54;
  v547 = 0;
  v548 = v81;
  *&v534[7] = v542;
  v534[71] = v81;
  *&v534[55] = v54;
  *&v534[39] = v77;
  *&v534[23] = v543;
  LODWORD(v316) = 1;
  v554[0] = v79;
  v554[1] = v78;
  v554[2] = v80;
  v554[3] = v76;
  v554[4] = v77;
  v554[5] = 0;
  v554[6] = v54;
  v554[7] = 0;
  v555 = v81;
  sub_1BD0DE19C(&v536, v453, &qword_1EBD39160);
  sub_1BD0DE19C(&v542, v453, &qword_1EBD39160);
  sub_1BD0DE53C(v554, &qword_1EBD39160);
  v556[0] = v321;
  v556[1] = v320;
  v557 = v82;
  *v558 = *v567;
  *&v558[3] = *&v567[3];
  v559 = v83;
  v560 = v85;
  v561 = 0;
  *v562 = *v566;
  *&v562[3] = *&v566[3];
  v563 = v84;
  v564 = 0;
  v565 = 1;
  sub_1BD0DE53C(v556, &qword_1EBD39160);
  *&v568[39] = v551;
  *&v568[55] = v552;
  *&v568[71] = v553;
  *&v568[7] = v549;
  *&v568[23] = v550;
  LODWORD(v320) = v569;
  v315 = sub_1BE04F7C4();
  v533 = 1;
  *v453 = v314;
  *&v453[8] = v325;
  sub_1BE048C84();
  v86 = sub_1BE0506C4();
  v88 = v87;
  LOBYTE(v84) = v89;
  v90 = sub_1BE050564();
  v92 = v91;
  LOBYTE(v85) = v93;
  sub_1BD0DDF10(v86, v88, v84 & 1);

  v94 = sub_1BE0505E4();
  v96 = v95;
  LOBYTE(v86) = v97;
  sub_1BD0DDF10(v90, v92, v85 & 1);

  v98 = sub_1BE0505F4();
  v321 = v99;
  LOBYTE(v92) = v100;
  v314 = v101;
  sub_1BD0DDF10(v94, v96, v86 & 1);

  KeyPath = swift_getKeyPath();
  v312 = swift_getKeyPath();
  LODWORD(v311) = v92 & 1;
  v453[0] = v92 & 1;
  LOBYTE(v452[0]) = 1;
  v102 = v324;
  if (v324)
  {
    *v453 = v319;
    *&v453[8] = v324;
    sub_1BE048C84();
    v103 = sub_1BE0506C4();
    v105 = v104;
    v107 = v106;
    v108 = sub_1BE050564();
    v110 = v109;
    v319 = v98;
    v112 = v111;
    sub_1BD0DDF10(v103, v105, v107 & 1);

    v113 = sub_1BE0505E4();
    v115 = v114;
    v117 = v116;
    sub_1BD0DDF10(v108, v110, v112 & 1);

    v118 = sub_1BE0505F4();
    v120 = v119;
    v122 = v121;
    v124 = v123;
    sub_1BD0DDF10(v113, v115, v117 & 1);

    v125 = swift_getKeyPath();
    v102 = swift_getKeyPath();
    v126 = v124;
    v127 = v120;
    v128 = v118;
    v129 = v122 & 1;
    v98 = v319;
    v453[0] = v129;
    v130 = 1;
    LOBYTE(v452[0]) = 1;
    v131 = v453[0];
  }

  else
  {
    v128 = 0;
    v127 = 0;
    v126 = 0;
    v125 = 0;
    v130 = 0;
    v131 = 0;
  }

  v132 = v98;
  *&v476 = v98;
  *(&v476 + 1) = v321;
  v133 = v311;
  LOBYTE(v477) = v311;
  *(&v477 + 1) = *v531;
  DWORD1(v477) = *&v531[3];
  v147 = KeyPath;
  v134 = v314;
  *(&v477 + 1) = v314;
  *&v478 = KeyPath;
  BYTE8(v478) = 0;
  HIDWORD(v478) = *&v530[3];
  *(&v478 + 9) = *v530;
  v135 = v312;
  v479 = v312;
  v480 = 0;
  v481 = 1;
  LOBYTE(v475[0]) = 1;
  v474 = v312;
  v473 = v478;
  v471 = v476;
  v472 = v477;
  *&v482 = v128;
  *(&v482 + 1) = v127;
  *&v483 = v131;
  *(&v483 + 1) = v126;
  v484 = v125;
  v485 = 0;
  v486 = v102;
  v487 = 0;
  v488 = v130;
  *(v475 + 8) = v482;
  BYTE8(v475[4]) = v130;
  *(&v475[3] + 8) = v102;
  *(&v475[2] + 8) = v125;
  *(&v475[1] + 8) = v483;
  v489[0] = v128;
  v489[1] = v127;
  v489[2] = v131;
  v489[3] = v126;
  v489[4] = v125;
  v489[5] = 0;
  v489[6] = v102;
  v489[7] = 0;
  v490 = v130;
  sub_1BD0DE19C(&v476, v453, &qword_1EBD39160);
  sub_1BD0DE19C(&v482, v453, &qword_1EBD39160);
  sub_1BD0DE53C(v489, &qword_1EBD39160);
  v491[0] = v132;
  v491[1] = v321;
  v492 = v133;
  *v493 = *v531;
  *&v493[3] = *&v531[3];
  v494 = v134;
  v495 = v147;
  v496 = 0;
  *v497 = *v530;
  *&v497[3] = *&v530[3];
  v498 = v135;
  v499 = 0;
  v500 = 1;
  sub_1BD0DE53C(v491, &qword_1EBD39160);
  *(&v532[5] + 7) = v475[1];
  *(&v532[6] + 7) = v475[2];
  *(&v532[7] + 7) = v475[3];
  v532[8] = *(&v475[3] + 9);
  *(&v532[1] + 7) = v472;
  *(&v532[2] + 7) = v473;
  *(&v532[3] + 7) = v474;
  *(&v532[4] + 7) = v475[0];
  *(v532 + 7) = v471;
  v136 = v317;
  v501[0] = v317;
  v501[1] = 0;
  v137 = v320;
  LOBYTE(v502[0]) = v320;
  *(&v502[1] + 1) = *&v568[16];
  *(&v502[2] + 1) = *&v568[32];
  *(&v502[3] + 1) = *&v568[48];
  v502[4] = *&v568[63];
  *(v502 + 1) = *v568;
  *v503 = 0;
  LOBYTE(v132) = v316;
  v503[8] = v316;
  *&v503[9] = *v534;
  *&v503[41] = *&v534[32];
  *&v503[25] = *&v534[16];
  *&v503[57] = *&v534[48];
  *&v503[73] = *&v534[64];
  v470[4] = v502[3];
  v470[5] = *&v568[63];
  v470[0] = v317;
  v470[1] = v502[0];
  v470[2] = v502[1];
  v470[3] = v502[2];
  v470[8] = *&v503[32];
  v470[9] = *&v503[48];
  v470[10] = *&v503[64];
  v470[6] = *v503;
  v470[7] = *&v503[16];
  v504[0] = v315;
  v504[1] = 0;
  v505[0] = v533;
  *&v505[97] = v532[6];
  *&v505[81] = v532[5];
  *&v505[33] = v532[2];
  *&v505[17] = v532[1];
  *&v505[113] = v532[7];
  *&v505[129] = *(&v475[3] + 9);
  *&v505[49] = v532[3];
  *&v505[65] = v532[4];
  *&v505[1] = v532[0];
  *(&v470[18] + 8) = *&v505[96];
  *(&v470[19] + 8) = *&v505[112];
  *(&v470[20] + 8) = *&v505[128];
  *(&v470[16] + 8) = *&v505[64];
  *(&v470[17] + 8) = *&v505[80];
  *(&v470[14] + 8) = *&v505[32];
  *(&v470[15] + 8) = *&v505[48];
  *(&v470[11] + 8) = v315;
  *(&v470[12] + 8) = *v505;
  *(&v470[13] + 8) = *&v505[16];
  v513 = v532[5];
  v514 = v532[6];
  v515 = v532[7];
  v516 = *(&v475[3] + 9);
  v509 = v532[1];
  v510 = v532[2];
  LOBYTE(v470[11]) = v534[71];
  BYTE8(v470[21]) = BYTE8(v475[4]);
  v506[0] = v315;
  v506[1] = 0;
  v507 = v533;
  v511 = v532[3];
  v512 = v532[4];
  v508 = v532[0];
  sub_1BD0DE19C(v501, v453, &qword_1EBD391E8);
  sub_1BD0DE19C(v504, v453, &qword_1EBD3A420);
  sub_1BD0DE53C(v506, &qword_1EBD3A420);
  v517[0] = v136;
  v517[1] = 0;
  v518 = v137;
  v520 = *&v568[16];
  v521 = *&v568[32];
  *v522 = *&v568[48];
  *&v522[15] = *&v568[63];
  v519 = *v568;
  v523 = 0;
  v524 = v132;
  v525 = *v534;
  v529 = *&v534[64];
  v528 = *&v534[48];
  v527 = *&v534[32];
  v526 = *&v534[16];
  sub_1BD0DE53C(v517, &qword_1EBD391E8);

  memcpy(&v570[7], v470, 0x159uLL);
  LODWORD(v138) = sub_1BE0501C4();
  sub_1BE04E1F4();
  v140 = v139;
  v142 = v141;
  v144 = v143;
  v146 = v145;
  v570[352] = 0;
  LODWORD(v147) = sub_1BE050234();
  sub_1BE04E1F4();
  v149 = v148;
  v151 = v150;
  v153 = v152;
  v155 = v154;

  v573 = 0;
  v156 = v318;
  v157 = [v318 rewardsBalance];
  v158 = [v157 isQuantitative];

  if (!v158 || (v159 = [v156 monetaryValue]) == 0 || (v160 = v159, v161 = objc_msgSend(v159, sel_formattedStringValue), v160, !v161))
  {
    v285 = v308;
    (*(v306 + 56))(v308, 1, 1, v307);
    goto LABEL_21;
  }

  v296 = v138;
  v297 = v146;
  v311 = v144;
  v312 = v142;
  KeyPath = v140;
  LODWORD(v314) = v147;
  v315 = v155;
  v316 = v153;
  v317 = v151;
  v318 = v149;
  v323 = sub_1BE052434();
  v325 = v162;

  v163 = v304;
  sub_1BE051984();
  v164 = sub_1BE050204();
  sub_1BE04E1F4();
  v165 = v301;
  v166 = v163 + *(v300 + 36);
  *v166 = v164;
  *(v166 + 8) = v167;
  *(v166 + 16) = v168;
  *(v166 + 24) = v169;
  *(v166 + 32) = v170;
  *(v166 + 40) = 0;
  v172 = v302;
  v171 = v303;
  (*(v302 + 104))(v165, *MEMORY[0x1E69B8088], v303);
  result = PKPassKitBundle();
  if (result)
  {
    v174 = result;
    v175 = sub_1BE04B6F4();
    v295 = v175;
    v177 = v176;

    (*(v172 + 8))(v165, v171);
    v322 = sub_1BE051464();
    v324 = sub_1BE051494();
    v327 = sub_1BE050324();
    LODWORD(v303) = sub_1BE050194();
    v302 = sub_1BE04F504();
    v347 = 1;
    *v453 = v175;
    v321 = v177;
    *&v453[8] = v177;
    sub_1BE048C84();
    v178 = sub_1BE0506C4();
    v180 = v179;
    v182 = v181;
    v183 = sub_1BE050564();
    v185 = v184;
    LOBYTE(v177) = v186;
    sub_1BD0DDF10(v178, v180, v182 & 1);

    v187 = sub_1BE0505E4();
    v189 = v188;
    v191 = v190;
    sub_1BD0DDF10(v183, v185, v177 & 1);

    v192 = sub_1BE0505F4();
    v293 = v193;
    v294 = v192;
    LOBYTE(v183) = v194;
    v300 = v195;
    sub_1BD0DDF10(v187, v189, v191 & 1);

    v292 = swift_getKeyPath();
    v320 = swift_getKeyPath();
    LODWORD(v319) = v183 & 1;
    LOBYTE(v452[0]) = 1;
    *v453 = v323;
    *&v453[8] = v325;
    sub_1BE048C84();
    v196 = sub_1BE0506C4();
    v198 = v197;
    LOBYTE(v185) = v199;
    v200 = sub_1BE050564();
    v202 = v201;
    v204 = v203;
    sub_1BD0DDF10(v196, v198, v185 & 1);

    v205 = sub_1BE0505E4();
    v207 = v206;
    LOBYTE(v196) = v208;
    sub_1BD0DDF10(v200, v202, v204 & 1);

    v209 = sub_1BE0505F4();
    v211 = v210;
    v213 = v212;
    v215 = v214;
    sub_1BD0DDF10(v205, v207, v196 & 1);

    v216 = swift_getKeyPath();
    v217 = swift_getKeyPath();
    v218 = v213 & 1;
    v453[0] = v213 & 1;
    LOBYTE(v452[0]) = 1;
    v220 = v293;
    v219 = v294;
    *&v354 = v294;
    *(&v354 + 1) = v293;
    LOBYTE(v355) = v319;
    *(&v355 + 1) = *v345;
    DWORD1(v355) = *&v345[3];
    v221 = v300;
    *(&v355 + 1) = v300;
    v222 = v292;
    *&v356 = v292;
    BYTE8(v356) = 0;
    HIDWORD(v356) = *&v344[3];
    *(&v356 + 9) = *v344;
    v357 = v320;
    v358 = 0;
    v359 = 1;
    LOBYTE(v370) = 1;
    v369 = v320;
    v368 = v356;
    v366 = v354;
    v367 = v355;
    v341 = 1;
    *&v360 = v209;
    *(&v360 + 1) = v211;
    LOBYTE(v361) = v218;
    DWORD1(v361) = *(v343 + 3);
    *(&v361 + 1) = v343[0];
    *(&v361 + 1) = v215;
    *&v362 = v216;
    BYTE8(v362) = 0;
    HIDWORD(v362) = *&v342[3];
    *(&v362 + 9) = *v342;
    v363 = v217;
    v364 = 0;
    v365 = 1;
    *&v340[7] = v360;
    v340[71] = 1;
    *&v340[55] = v217;
    *&v340[39] = v362;
    *&v340[23] = v361;
    LODWORD(v301) = 1;
    v371[0] = v209;
    v371[1] = v211;
    v372 = v218;
    *&v373[3] = *(v343 + 3);
    *v373 = v343[0];
    v374 = v215;
    v375 = v216;
    v376 = 0;
    *&v377[3] = *&v342[3];
    *v377 = *v342;
    v378 = v217;
    v379 = 0;
    v380 = 1;
    sub_1BD0DE19C(&v354, v453, &qword_1EBD39160);
    sub_1BD0DE19C(&v360, v453, &qword_1EBD39160);
    sub_1BD0DE53C(v371, &qword_1EBD39160);
    v381[0] = v219;
    v381[1] = v220;
    v382 = v319;
    *v383 = *v345;
    *&v383[3] = *&v345[3];
    v384 = v221;
    v385 = v222;
    v386 = 0;
    *v387 = *v344;
    *&v387[3] = *&v344[3];
    v388 = v320;
    v389 = 0;
    v390 = 1;
    sub_1BD0DE53C(v381, &qword_1EBD39160);
    *(&v346[1] + 7) = v367;
    *(&v346[2] + 7) = v368;
    *(&v346[3] + 7) = v369;
    *(&v346[4] + 7) = v370;
    *(v346 + 7) = v366;
    LODWORD(v320) = v347;
    v300 = sub_1BE04F7C4();
    v339 = 1;
    *v453 = v295;
    *&v453[8] = v321;
    sub_1BE048C84();
    v223 = sub_1BE0506C4();
    v225 = v224;
    LOBYTE(v196) = v226;
    v227 = sub_1BE050564();
    v229 = v228;
    LOBYTE(v216) = v230;
    sub_1BD0DDF10(v223, v225, v196 & 1);

    v231 = sub_1BE0505E4();
    v233 = v232;
    LOBYTE(v220) = v234;
    sub_1BD0DDF10(v227, v229, v216 & 1);

    v235 = sub_1BE0505F4();
    v293 = v236;
    v294 = v235;
    LOBYTE(v227) = v237;
    v295 = v238;
    sub_1BD0DDF10(v231, v233, v220 & 1);

    v291 = swift_getKeyPath();
    v292 = swift_getKeyPath();
    LODWORD(v319) = v227 & 1;
    LOBYTE(v452[0]) = 1;
    *v453 = v323;
    *&v453[8] = v325;
    sub_1BE048C84();
    v239 = sub_1BE0506C4();
    v241 = v240;
    LOBYTE(v227) = v242;
    v243 = sub_1BE050564();
    v245 = v244;
    LOBYTE(v219) = v246;
    sub_1BD0DDF10(v239, v241, v227 & 1);

    v247 = sub_1BE0505E4();
    v249 = v248;
    LOBYTE(v220) = v250;
    sub_1BD0DDF10(v243, v245, v219 & 1);

    v251 = sub_1BE0505F4();
    v253 = v252;
    LOBYTE(v245) = v254;
    v256 = v255;
    sub_1BD0DDF10(v247, v249, v220 & 1);

    v257 = swift_getKeyPath();
    v258 = swift_getKeyPath();
    v259 = v245 & 1;
    v453[0] = v245 & 1;
    LOBYTE(v452[0]) = 1;
    v261 = v293;
    v260 = v294;
    *&v391 = v294;
    *(&v391 + 1) = v293;
    LOBYTE(v392) = v319;
    *(&v392 + 1) = *v337;
    DWORD1(v392) = *&v337[3];
    v262 = v295;
    *(&v392 + 1) = v295;
    v263 = v291;
    v147 = v292;
    *&v393 = v291;
    BYTE8(v393) = 0;
    HIDWORD(v393) = *&v336[3];
    *(&v393 + 9) = *v336;
    v394 = v292;
    v395 = 0;
    v396 = 1;
    LOBYTE(v333[0]) = 1;
    v331 = v393;
    v332 = v292;
    v329 = v391;
    v330 = v392;
    *&v397 = v251;
    *(&v397 + 1) = v253;
    LOBYTE(v398) = v259;
    DWORD1(v398) = *(v335 + 3);
    *(&v398 + 1) = v335[0];
    *(&v398 + 1) = v256;
    *&v399 = v257;
    BYTE8(v399) = 0;
    HIDWORD(v399) = *&v334[3];
    *(&v399 + 9) = *v334;
    v400 = v258;
    v401 = 0;
    v402 = 1;
    *(v333 + 8) = v397;
    BYTE8(v333[4]) = 1;
    *(&v333[3] + 8) = v258;
    *(&v333[2] + 8) = v399;
    *(&v333[1] + 8) = v398;
    v403[0] = v251;
    v403[1] = v253;
    v404 = v259;
    *&v405[3] = *(v335 + 3);
    *v405 = v335[0];
    v406 = v256;
    v407 = v257;
    v408 = 0;
    *&v409[3] = *&v334[3];
    *v409 = *v334;
    v410 = v258;
    v411 = 0;
    v412 = 1;
    sub_1BD0DE19C(&v391, v453, &qword_1EBD39160);
    sub_1BD0DE19C(&v397, v453, &qword_1EBD39160);
    sub_1BD0DE53C(v403, &qword_1EBD39160);
    v413[0] = v260;
    v413[1] = v261;
    v414 = v319;
    *v415 = *v337;
    *&v415[3] = *&v337[3];
    v416 = v262;
    v417 = v263;
    v418 = 0;
    *v419 = *v336;
    *&v419[3] = *&v336[3];
    v420 = v147;
    v421 = 0;
    v422 = 1;
    sub_1BD0DE53C(v413, &qword_1EBD39160);
    *(&v338[5] + 7) = v333[1];
    *(&v338[6] + 7) = v333[2];
    *(&v338[7] + 7) = v333[3];
    v338[8] = *(&v333[3] + 9);
    *(&v338[1] + 7) = v330;
    *(&v338[2] + 7) = v331;
    *(&v338[3] + 7) = v332;
    *(&v338[4] + 7) = v333[0];
    *(v338 + 7) = v329;
    v264 = v302;
    v423[0] = v302;
    v423[1] = 0;
    LOBYTE(v424[0]) = v320;
    *(&v424[1] + 1) = v346[1];
    *(&v424[2] + 1) = v346[2];
    *(&v424[3] + 1) = v346[3];
    v424[4] = *(&v346[3] + 15);
    *(v424 + 1) = v346[0];
    *v425 = 0;
    LOBYTE(v261) = v301;
    v425[8] = v301;
    *&v425[9] = *v340;
    *&v425[41] = *&v340[32];
    *&v425[25] = *&v340[16];
    *&v425[57] = *&v340[48];
    *&v425[73] = *&v340[64];
    v328[4] = v424[3];
    v328[5] = *(&v346[3] + 15);
    v328[0] = v302;
    v328[1] = v424[0];
    v328[2] = v424[1];
    v328[3] = v424[2];
    v328[8] = *&v425[32];
    v328[9] = *&v425[48];
    v328[10] = *&v425[64];
    v328[6] = *v425;
    v328[7] = *&v425[16];
    v426[0] = v300;
    v426[1] = 0;
    v427[0] = v339;
    *&v427[97] = v338[6];
    *&v427[81] = v338[5];
    *&v427[33] = v338[2];
    *&v427[17] = v338[1];
    *&v427[113] = v338[7];
    *&v427[129] = *(&v333[3] + 9);
    *&v427[49] = v338[3];
    *&v427[65] = v338[4];
    *&v427[1] = v338[0];
    *(&v328[18] + 8) = *&v427[96];
    *(&v328[19] + 8) = *&v427[112];
    *(&v328[20] + 8) = *&v427[128];
    *(&v328[16] + 8) = *&v427[64];
    *(&v328[17] + 8) = *&v427[80];
    *(&v328[14] + 8) = *&v427[32];
    *(&v328[15] + 8) = *&v427[48];
    *(&v328[11] + 8) = v300;
    *(&v328[12] + 8) = *v427;
    *(&v328[13] + 8) = *&v427[16];
    v435 = v338[5];
    v436 = v338[6];
    v437 = v338[7];
    v438 = *(&v333[3] + 9);
    v431 = v338[1];
    v432 = v338[2];
    LOBYTE(v328[11]) = v340[71];
    BYTE8(v328[21]) = BYTE8(v333[4]);
    v428[0] = v300;
    v428[1] = 0;
    v429 = v339;
    v433 = v338[3];
    v434 = v338[4];
    v430 = v338[0];
    sub_1BD0DE19C(v423, v453, &qword_1EBD391E8);
    sub_1BD0DE19C(v426, v453, &qword_1EBD3A420);
    sub_1BD0DE53C(v428, &qword_1EBD3A420);
    v439[0] = v264;
    v439[1] = 0;
    v440 = v320;
    v442 = v346[1];
    v443 = v346[2];
    *v444 = v346[3];
    *&v444[15] = *(&v346[3] + 15);
    v441 = v346[0];
    v445 = 0;
    v446 = v261;
    v447 = *v340;
    v451 = *&v340[64];
    v450 = *&v340[48];
    v449 = *&v340[32];
    v448 = *&v340[16];
    sub_1BD0DE53C(v439, &qword_1EBD391E8);

    memcpy(&v348[7], v328, 0x159uLL);
    v265 = sub_1BE0501C4();
    LOBYTE(v263) = v265;
    LODWORD(v326) = v265;
    sub_1BE04E1F4();
    v267 = v266;
    v269 = v268;
    v271 = v270;
    v273 = v272;
    v348[352] = 0;
    LOBYTE(v147) = sub_1BE050234();
    sub_1BE04E1F4();
    v275 = v274;
    v277 = v276;
    v279 = v278;
    v281 = v280;

    v351 = 0;
    v282 = v304;
    v283 = v298;
    sub_1BD0DE19C(v304, v298, &qword_1EBD390F8);
    v284 = v299;
    sub_1BD0DE19C(v283, v299, &qword_1EBD390F8);
    v138 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A440) + 48);
    LOBYTE(v256) = v303;
    LOBYTE(v452[0]) = v303;
    memcpy(v452 + 1, v348, 0x160uLL);
    *(&v452[44] + 1) = *v350;
    HIDWORD(v452[44]) = *&v350[3];
    LOBYTE(v452[45]) = v263;
    *(&v452[45] + 1) = *v349;
    HIDWORD(v452[45]) = *&v349[3];
    v452[46] = v267;
    v452[47] = v269;
    v452[48] = v271;
    v452[49] = v273;
    LOBYTE(v452[50]) = 0;
    *(&v452[50] + 1) = *v353;
    HIDWORD(v452[50]) = *&v353[3];
    LOBYTE(v452[51]) = v147;
    *(&v452[51] + 1) = *v352;
    HIDWORD(v452[51]) = *&v352[3];
    v452[52] = v275;
    v452[53] = v277;
    v452[54] = v279;
    v452[55] = v281;
    LOBYTE(v452[56]) = 0;
    memcpy((v284 + v138), v452, 0x1C1uLL);
    sub_1BD0DE19C(v452, v453, &qword_1EBD3A410);
    sub_1BD0DE53C(v282, &qword_1EBD390F8);
    v453[0] = v256;
    memcpy(&v453[1], v348, 0x160uLL);
    *v454 = *v350;
    *&v454[3] = *&v350[3];
    v455 = v326;
    *v456 = *v349;
    *&v456[3] = *&v349[3];
    v457 = v267;
    v458 = v269;
    v459 = v271;
    v460 = v273;
    v461 = 0;
    *v462 = *v353;
    *&v462[3] = *&v353[3];
    v463 = v147;
    *v464 = *v352;
    *&v464[3] = *&v352[3];
    v465 = v275;
    v466 = v277;
    v467 = v279;
    v468 = v281;
    v469 = 0;
    sub_1BD0DE53C(v453, &qword_1EBD3A410);
    sub_1BD0DE53C(v283, &qword_1EBD390F8);
    v285 = v308;
    sub_1BD0DE204(v284, v308, &qword_1EBD3A428);
    (*(v306 + 56))(v285, 0, 1, v307);
    v151 = v317;
    v149 = v318;
    v155 = v315;
    v153 = v316;
    LOBYTE(v147) = v314;
    v142 = v312;
    v140 = KeyPath;
    v144 = v311;
    v146 = v297;
    LOBYTE(v138) = v296;
LABEL_21:
    v286 = v309;
    sub_1BD0DE19C(v285, v309, &qword_1EBD3A430);
    v287 = v305;
    LOBYTE(v452[0]) = v305;
    memcpy(v452 + 1, v570, 0x160uLL);
    *(&v452[44] + 1) = *v572;
    HIDWORD(v452[44]) = *&v572[3];
    LOBYTE(v452[45]) = v138;
    *(&v452[45] + 1) = *v571;
    HIDWORD(v452[45]) = *&v571[3];
    v452[46] = v140;
    v452[47] = v142;
    v452[48] = v144;
    v452[49] = v146;
    LOBYTE(v452[50]) = 0;
    *(&v452[50] + 1) = v575[0];
    HIDWORD(v452[50]) = *(v575 + 3);
    LOBYTE(v452[51]) = v147;
    *(&v452[51] + 1) = *v574;
    HIDWORD(v452[51]) = *&v574[3];
    v452[52] = v149;
    v452[53] = v151;
    v452[54] = v153;
    v452[55] = v155;
    LOBYTE(v452[56]) = 0;
    v288 = v310;
    memcpy(v310, v452, 0x1C1uLL);
    v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A438);
    sub_1BD0DE19C(v286, v288 + *(v289 + 48), &qword_1EBD3A430);
    sub_1BD0DE19C(v452, v453, &qword_1EBD3A410);
    sub_1BD0DE53C(v285, &qword_1EBD3A430);
    sub_1BD0DE53C(v286, &qword_1EBD3A430);
    v453[0] = v287;
    memcpy(&v453[1], v570, 0x160uLL);
    *v454 = *v572;
    *&v454[3] = *&v572[3];
    v455 = v138;
    *v456 = *v571;
    *&v456[3] = *&v571[3];
    v457 = v140;
    v458 = v142;
    v459 = v144;
    v460 = v146;
    v461 = 0;
    *v462 = v575[0];
    *&v462[3] = *(v575 + 3);
    v463 = v147;
    *v464 = *v574;
    *&v464[3] = *&v574[3];
    v465 = v149;
    v466 = v151;
    v467 = v153;
    v468 = v155;
    v469 = 0;
    return sub_1BD0DE53C(v453, &qword_1EBD3A410);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD1518F4(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v3 = v2;
  sub_1BD151AE8(__src);
  sub_1BD15298C(v9);
  sub_1BD153828(v10);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v6, v9, sizeof(v6));
  memcpy(v14, v10, 0x1C1uLL);
  memcpy(v11, __src, 0x1C1uLL);
  memcpy(v5, __src, 0x1C1uLL);
  memcpy(v12, v9, 0x1C1uLL);
  memcpy(&v5[456], v9, 0x1C1uLL);
  memcpy(v13, v10, 0x1C1uLL);
  memcpy(&v5[912], v10, 0x1C1uLL);
  memcpy(v3, v5, 0x551uLL);
  sub_1BD0DE19C(v11, v16, &qword_1EBD3A410);
  sub_1BD0DE19C(v12, v16, &qword_1EBD3A418);
  sub_1BD0DE19C(v13, v16, &qword_1EBD3A418);
  sub_1BD0DE53C(v14, &qword_1EBD3A418);
  memcpy(v15, v6, 0x1C1uLL);
  sub_1BD0DE53C(v15, &qword_1EBD3A418);
  memcpy(v16, __dst, 0x1C1uLL);
  return sub_1BD0DE53C(v16, &qword_1EBD3A410);
}

void sub_1BD151AE8(_BYTE *a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x1E69B8088], v3);
  v8 = PKPassKitBundle();
  if (!v8)
  {
    __break(1u);
    goto LABEL_6;
  }

  v9 = v8;
  v10 = sub_1BE04B6F4();
  v12 = v11;

  (*(v4 + 8))(v7, v3);
  v13 = *(v1 + *(type metadata accessor for PaymentOfferRewardsIntentSummaryView() + 20) + 8);
  v14 = objc_allocWithZone(MEMORY[0x1E69B8780]);
  v15 = v13;
  v16 = sub_1BE052404();
  v17 = [v14 initWithAmount:v15 currency:v16 exponent:0];

  if (!v17)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v132 = a1;
  v18 = [v17 formattedStringValue];

  if (v18)
  {
    v135 = sub_1BE052434();
    v139 = v19;

    v20 = sub_1BE051464();
    v141 = sub_1BE050324();
    v131 = sub_1BE050194();
    v130 = sub_1BE04F504();
    v161 = 1;
    v248 = v10;
    v249 = v12;
    v138 = sub_1BD0DDEBC();
    sub_1BE048C84();
    v21 = sub_1BE0506C4();
    v23 = v22;
    v25 = v24;
    v140 = v20;
    v26 = sub_1BE050564();
    v137 = v12;
    v28 = v27;
    v128 = v10;
    v30 = v29;
    sub_1BD0DDF10(v21, v23, v25 & 1);

    v31 = sub_1BE0505E4();
    v33 = v32;
    LOBYTE(v21) = v34;
    sub_1BD0DDF10(v26, v28, v30 & 1);

    v35 = sub_1BE0505F4();
    v125 = v36;
    v126 = v35;
    LOBYTE(v28) = v37;
    v127 = v38;
    sub_1BD0DDF10(v31, v33, v21 & 1);

    KeyPath = swift_getKeyPath();
    v134 = swift_getKeyPath();
    LODWORD(v133) = v28 & 1;
    LOBYTE(v232[0]) = 1;
    v248 = v135;
    v249 = v139;
    sub_1BE048C84();
    v39 = sub_1BE0506C4();
    v41 = v40;
    v43 = v42;
    v44 = sub_1BE050564();
    v46 = v45;
    LOBYTE(v20) = v47;
    sub_1BD0DDF10(v39, v41, v43 & 1);

    v48 = sub_1BE0505E4();
    v50 = v49;
    LOBYTE(v26) = v51;
    sub_1BD0DDF10(v44, v46, v20 & 1);

    v52 = sub_1BE0505F4();
    v54 = v53;
    LOBYTE(v33) = v55;
    v57 = v56;
    sub_1BD0DDF10(v48, v50, v26 & 1);

    v58 = swift_getKeyPath();
    v59 = swift_getKeyPath();
    v60 = v33 & 1;
    LOBYTE(v248) = v33 & 1;
    LOBYTE(v232[0]) = 1;
    v61 = v125;
    v62 = v126;
    *&v163 = v126;
    *(&v163 + 1) = v125;
    LOBYTE(v164) = v133;
    *(&v164 + 1) = *v159;
    DWORD1(v164) = *&v159[3];
    v63 = v127;
    *(&v164 + 1) = v127;
    *&v165 = KeyPath;
    BYTE8(v165) = 0;
    HIDWORD(v165) = *&v158[3];
    *(&v165 + 9) = *v158;
    v166 = v134;
    v167 = 0;
    v168 = 1;
    LOBYTE(v179) = 1;
    v178 = v134;
    v177 = v165;
    v175 = v163;
    v176 = v164;
    v155 = 1;
    *&v169 = v52;
    *(&v169 + 1) = v54;
    LOBYTE(v170) = v60;
    DWORD1(v170) = *(v157 + 3);
    *(&v170 + 1) = v157[0];
    *(&v170 + 1) = v57;
    *&v171 = v58;
    BYTE8(v171) = 0;
    HIDWORD(v171) = *&v156[3];
    *(&v171 + 9) = *v156;
    v172 = v59;
    v173 = 0;
    v174 = 1;
    *&v154[7] = v169;
    v154[71] = 1;
    *&v154[55] = v59;
    *&v154[39] = v171;
    *&v154[23] = v170;
    v129 = 1;
    v180[0] = v52;
    v180[1] = v54;
    v181 = v60;
    *&v182[3] = *(v157 + 3);
    *v182 = v157[0];
    v183 = v57;
    v184 = v58;
    v185 = 0;
    *&v186[3] = *&v156[3];
    *v186 = *v156;
    v187 = v59;
    v188 = 0;
    v189 = 1;
    sub_1BD0DE19C(&v163, &v248, &qword_1EBD39160);
    sub_1BD0DE19C(&v169, &v248, &qword_1EBD39160);
    sub_1BD0DE53C(v180, &qword_1EBD39160);
    v190[0] = v62;
    v190[1] = v61;
    v191 = v133;
    *v192 = *v159;
    *&v192[3] = *&v159[3];
    v193 = v63;
    v194 = KeyPath;
    v195 = 0;
    *v196 = *v158;
    *&v196[3] = *&v158[3];
    v197 = v134;
    v198 = 0;
    v199 = 1;
    sub_1BD0DE53C(v190, &qword_1EBD39160);
    *(&v160[1] + 7) = v176;
    *(&v160[2] + 7) = v177;
    *(&v160[3] + 7) = v178;
    *(&v160[4] + 7) = v179;
    *(v160 + 7) = v175;
    LODWORD(KeyPath) = v161;
    v133 = sub_1BE04F7C4();
    v153 = 1;
    v248 = v128;
    v249 = v137;
    sub_1BE048C84();
    v64 = sub_1BE0506C4();
    v66 = v65;
    LOBYTE(v57) = v67;
    v68 = sub_1BE050564();
    v70 = v69;
    LOBYTE(v54) = v71;
    sub_1BD0DDF10(v64, v66, v57 & 1);

    v72 = sub_1BE0505E4();
    v74 = v73;
    LOBYTE(v57) = v75;
    sub_1BD0DDF10(v68, v70, v54 & 1);

    v76 = sub_1BE0505F4();
    v126 = v77;
    v127 = v76;
    LOBYTE(v54) = v78;
    v128 = v79;
    sub_1BD0DDF10(v72, v74, v57 & 1);

    v124 = swift_getKeyPath();
    v125 = swift_getKeyPath();
    LODWORD(v134) = v54 & 1;
    LOBYTE(v232[0]) = 1;
    v248 = v135;
    v249 = v139;
    sub_1BE048C84();
    v80 = sub_1BE0506C4();
    v82 = v81;
    LOBYTE(v57) = v83;
    v84 = sub_1BE050564();
    v86 = v85;
    LOBYTE(v68) = v87;
    sub_1BD0DDF10(v80, v82, v57 & 1);

    v88 = sub_1BE0505E4();
    v90 = v89;
    LOBYTE(v58) = v91;
    sub_1BD0DDF10(v84, v86, v68 & 1);

    v92 = sub_1BE0505F4();
    v94 = v93;
    LOBYTE(v68) = v95;
    v97 = v96;
    sub_1BD0DDF10(v88, v90, v58 & 1);

    v98 = swift_getKeyPath();
    v99 = swift_getKeyPath();
    v100 = v68 & 1;
    LOBYTE(v248) = v68 & 1;
    LOBYTE(v232[0]) = 1;
    v102 = v126;
    v101 = v127;
    *&v200 = v127;
    *(&v200 + 1) = v126;
    LOBYTE(v201) = v134;
    *(&v201 + 1) = *v151;
    DWORD1(v201) = *&v151[3];
    v103 = v128;
    *(&v201 + 1) = v128;
    v104 = v124;
    v105 = v125;
    *&v202 = v124;
    BYTE8(v202) = 0;
    HIDWORD(v202) = *&v150[3];
    *(&v202 + 9) = *v150;
    v203 = v125;
    v204 = 0;
    v205 = 1;
    LOBYTE(v147[0]) = 1;
    v145 = v202;
    v146 = v125;
    v143 = v200;
    v144 = v201;
    *&v206 = v92;
    *(&v206 + 1) = v94;
    LOBYTE(v207) = v100;
    DWORD1(v207) = *(v149 + 3);
    *(&v207 + 1) = v149[0];
    *(&v207 + 1) = v97;
    *&v208 = v98;
    BYTE8(v208) = 0;
    HIDWORD(v208) = *&v148[3];
    *(&v208 + 9) = *v148;
    v209 = v99;
    v210 = 0;
    v211 = 1;
    *(v147 + 8) = v206;
    BYTE8(v147[4]) = 1;
    *(&v147[3] + 8) = v99;
    *(&v147[2] + 8) = v208;
    *(&v147[1] + 8) = v207;
    v212[0] = v92;
    v212[1] = v94;
    v213 = v100;
    *&v214[3] = *(v149 + 3);
    *v214 = v149[0];
    v215 = v97;
    v216 = v98;
    v217 = 0;
    *&v218[3] = *&v148[3];
    *v218 = *v148;
    v219 = v99;
    v220 = 0;
    v221 = 1;
    sub_1BD0DE19C(&v200, &v248, &qword_1EBD39160);
    sub_1BD0DE19C(&v206, &v248, &qword_1EBD39160);
    sub_1BD0DE53C(v212, &qword_1EBD39160);
    v222[0] = v101;
    v222[1] = v102;
    v223 = v134;
    *v224 = *v151;
    *&v224[3] = *&v151[3];
    v225 = v103;
    v226 = v104;
    v227 = 0;
    *v228 = *v150;
    *&v228[3] = *&v150[3];
    v229 = v105;
    v230 = 0;
    v231 = 1;
    sub_1BD0DE53C(v222, &qword_1EBD39160);
    *(&v152[5] + 7) = v147[1];
    *(&v152[6] + 7) = v147[2];
    *(&v152[7] + 7) = v147[3];
    v152[8] = *(&v147[3] + 9);
    *(&v152[1] + 7) = v144;
    *(&v152[2] + 7) = v145;
    *(&v152[3] + 7) = v146;
    *(&v152[4] + 7) = v147[0];
    *(v152 + 7) = v143;
    v106 = v130;
    v232[0] = v130;
    v232[1] = 0;
    LOBYTE(v233[0]) = KeyPath;
    *(&v233[1] + 1) = v160[1];
    *(&v233[2] + 1) = v160[2];
    *(&v233[3] + 1) = v160[3];
    v233[4] = *(&v160[3] + 15);
    *(v233 + 1) = v160[0];
    *v234 = 0;
    LOBYTE(v102) = v129;
    v234[8] = v129;
    *&v234[9] = *v154;
    *&v234[41] = *&v154[32];
    *&v234[25] = *&v154[16];
    *&v234[57] = *&v154[48];
    *&v234[73] = *&v154[64];
    v142[4] = v233[3];
    v142[5] = *(&v160[3] + 15);
    v142[0] = v130;
    v142[1] = v233[0];
    v142[2] = v233[1];
    v142[3] = v233[2];
    v142[8] = *&v234[32];
    v142[9] = *&v234[48];
    v142[10] = *&v234[64];
    v142[6] = *v234;
    v142[7] = *&v234[16];
    v235[0] = v133;
    v235[1] = 0;
    v236[0] = v153;
    *&v236[97] = v152[6];
    *&v236[81] = v152[5];
    *&v236[33] = v152[2];
    *&v236[17] = v152[1];
    *&v236[113] = v152[7];
    *&v236[129] = *(&v147[3] + 9);
    *&v236[49] = v152[3];
    *&v236[65] = v152[4];
    *&v236[1] = v152[0];
    *(&v142[18] + 8) = *&v236[96];
    *(&v142[19] + 8) = *&v236[112];
    *(&v142[20] + 8) = *&v236[128];
    *(&v142[16] + 8) = *&v236[64];
    *(&v142[17] + 8) = *&v236[80];
    *(&v142[14] + 8) = *&v236[32];
    *(&v142[15] + 8) = *&v236[48];
    *(&v142[11] + 8) = v133;
    *(&v142[12] + 8) = *v236;
    *(&v142[13] + 8) = *&v236[16];
    v244 = v152[5];
    v245 = v152[6];
    v246 = v152[7];
    v247 = *(&v147[3] + 9);
    v240 = v152[1];
    v241 = v152[2];
    LOBYTE(v142[11]) = v154[71];
    BYTE8(v142[21]) = BYTE8(v147[4]);
    v237[0] = v133;
    v237[1] = 0;
    v238 = v153;
    v242 = v152[3];
    v243 = v152[4];
    v239 = v152[0];
    sub_1BD0DE19C(v232, &v248, &qword_1EBD391E8);
    sub_1BD0DE19C(v235, &v248, &qword_1EBD3A420);
    sub_1BD0DE53C(v237, &qword_1EBD3A420);
    v248 = v106;
    v249 = 0;
    v250 = KeyPath;
    v252 = v160[1];
    v253 = v160[2];
    *v254 = v160[3];
    *&v254[15] = *(&v160[3] + 15);
    v251 = v160[0];
    v255 = 0;
    v256 = v102;
    v257 = *v154;
    v261 = *&v154[64];
    v260 = *&v154[48];
    v259 = *&v154[32];
    v258 = *&v154[16];
    sub_1BD0DE53C(&v248, &qword_1EBD391E8);

    memcpy(&v162[7], v142, 0x159uLL);
    LOBYTE(v98) = sub_1BE0501C4();
    sub_1BE04E1F4();
    v108 = v107;
    v110 = v109;
    v112 = v111;
    v114 = v113;
    v162[352] = 0;
    LOBYTE(v92) = sub_1BE050234();
    sub_1BE04E1F4();
    v116 = v115;
    v118 = v117;
    v120 = v119;
    v122 = v121;

    v162[360] = 0;
    v123 = v132;
    *v132 = v131;
    memcpy(v123 + 1, v162, 0x160uLL);
    v123[360] = v98;
    *(v123 + 46) = v108;
    *(v123 + 47) = v110;
    *(v123 + 48) = v112;
    *(v123 + 49) = v114;
    v123[400] = 0;
    v123[408] = v92;
    *(v123 + 52) = v116;
    *(v123 + 53) = v118;
    *(v123 + 54) = v120;
    *(v123 + 55) = v122;
    v123[448] = 0;
    return;
  }

LABEL_7:
  __break(1u);
}

id sub_1BD15298C@<X0>(void *a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*v1 monetaryValue];
  if (!v8 || (v9 = v8, v10 = [v8 formattedStringValue], v9, !v10))
  {
    sub_1BD154B20(v256);
    return memcpy(a1, v256, 0x1C1uLL);
  }

  v126 = a1;
  v131 = sub_1BE052434();
  v133 = v11;

  (*(v4 + 104))(v7, *MEMORY[0x1E69B8088], v3);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_1BE04B6F4();
    v121 = v14;
    v16 = v15;

    (*(v4 + 8))(v7, v3);
    v134 = sub_1BE051494();
    v135 = sub_1BE050324();
    v125 = sub_1BE050194();
    v124 = sub_1BE04F504();
    v155 = 1;
    v256[0] = v14;
    v130 = v16;
    v256[1] = v16;
    v132 = sub_1BD0DDEBC();
    sub_1BE048C84();
    v17 = sub_1BE0506C4();
    v19 = v18;
    LOBYTE(v13) = v20;
    v21 = sub_1BE050564();
    v23 = v22;
    v25 = v24;
    sub_1BD0DDF10(v17, v19, v13 & 1);

    v26 = sub_1BE0505E4();
    v28 = v27;
    v30 = v29;
    sub_1BD0DDF10(v21, v23, v25 & 1);

    v31 = sub_1BE0505F4();
    v119 = v32;
    v120 = v31;
    LOBYTE(v21) = v33;
    v122 = v34;
    sub_1BD0DDF10(v26, v28, v30 & 1);

    KeyPath = swift_getKeyPath();
    v128 = swift_getKeyPath();
    v127 = v21 & 1;
    LOBYTE(v255[0]) = 1;
    v256[0] = v131;
    v256[1] = v133;
    sub_1BE048C84();
    v35 = sub_1BE0506C4();
    v37 = v36;
    LOBYTE(v21) = v38;
    v39 = sub_1BE050564();
    v41 = v40;
    LOBYTE(v13) = v42;
    sub_1BD0DDF10(v35, v37, v21 & 1);

    v43 = sub_1BE0505E4();
    v45 = v44;
    LOBYTE(v23) = v46;
    sub_1BD0DDF10(v39, v41, v13 & 1);

    v47 = sub_1BE0505F4();
    v49 = v48;
    LOBYTE(v28) = v50;
    v52 = v51;
    sub_1BD0DDF10(v43, v45, v23 & 1);

    v53 = swift_getKeyPath();
    v54 = swift_getKeyPath();
    v55 = v28 & 1;
    LOBYTE(v256[0]) = v28 & 1;
    LOBYTE(v255[0]) = 1;
    v56 = v119;
    v57 = v120;
    *&v157 = v120;
    *(&v157 + 1) = v119;
    LOBYTE(v158) = v127;
    *(&v158 + 1) = *v153;
    DWORD1(v158) = *&v153[3];
    v58 = v122;
    *(&v158 + 1) = v122;
    *&v159 = KeyPath;
    BYTE8(v159) = 0;
    HIDWORD(v159) = *&v152[3];
    *(&v159 + 9) = *v152;
    v160 = v128;
    v161 = 0;
    v162 = 1;
    LOBYTE(v173) = 1;
    v172 = v128;
    v171 = v159;
    v169 = v157;
    v170 = v158;
    v149 = 1;
    *&v163 = v47;
    *(&v163 + 1) = v49;
    LOBYTE(v164) = v55;
    DWORD1(v164) = *(v151 + 3);
    *(&v164 + 1) = v151[0];
    *(&v164 + 1) = v52;
    *&v165 = v53;
    BYTE8(v165) = 0;
    HIDWORD(v165) = *&v150[3];
    *(&v165 + 9) = *v150;
    v166 = v54;
    v167 = 0;
    v168 = 1;
    *&v148[7] = v163;
    v148[71] = 1;
    *&v148[55] = v54;
    *&v148[39] = v165;
    *&v148[23] = v164;
    v123 = 1;
    v174[0] = v47;
    v174[1] = v49;
    v175 = v55;
    *&v176[3] = *(v151 + 3);
    *v176 = v151[0];
    v177 = v52;
    v178 = v53;
    v179 = 0;
    *&v180[3] = *&v150[3];
    *v180 = *v150;
    v181 = v54;
    v182 = 0;
    v183 = 1;
    sub_1BD0DE19C(&v157, v256, &qword_1EBD39160);
    sub_1BD0DE19C(&v163, v256, &qword_1EBD39160);
    sub_1BD0DE53C(v174, &qword_1EBD39160);
    v184[0] = v57;
    v184[1] = v56;
    v185 = v127;
    *v186 = *v153;
    *&v186[3] = *&v153[3];
    v187 = v58;
    v188 = KeyPath;
    v189 = 0;
    *v190 = *v152;
    *&v190[3] = *&v152[3];
    v191 = v128;
    v192 = 0;
    v193 = 1;
    sub_1BD0DE53C(v184, &qword_1EBD39160);
    *(&v154[1] + 7) = v170;
    *(&v154[2] + 7) = v171;
    *(&v154[3] + 7) = v172;
    *(&v154[4] + 7) = v173;
    *(v154 + 7) = v169;
    LODWORD(KeyPath) = v155;
    v122 = sub_1BE04F7C4();
    v147 = 1;
    v256[0] = v121;
    v256[1] = v130;
    sub_1BE048C84();
    v59 = sub_1BE0506C4();
    v61 = v60;
    LOBYTE(v52) = v62;
    v63 = sub_1BE050564();
    v65 = v64;
    LOBYTE(v47) = v66;
    sub_1BD0DDF10(v59, v61, v52 & 1);

    v67 = sub_1BE0505E4();
    v69 = v68;
    LOBYTE(v57) = v70;
    sub_1BD0DDF10(v63, v65, v47 & 1);

    v71 = sub_1BE0505F4();
    v119 = v72;
    v120 = v71;
    LOBYTE(v63) = v73;
    v121 = v74;
    sub_1BD0DDF10(v67, v69, v57 & 1);

    v128 = swift_getKeyPath();
    v118 = swift_getKeyPath();
    v127 = v63 & 1;
    LOBYTE(v255[0]) = 1;
    v256[0] = v131;
    v256[1] = v133;
    sub_1BE048C84();
    v75 = sub_1BE0506C4();
    v77 = v76;
    LOBYTE(v63) = v78;
    v79 = sub_1BE050564();
    v81 = v80;
    LOBYTE(v49) = v82;
    sub_1BD0DDF10(v75, v77, v63 & 1);

    v83 = sub_1BE0505E4();
    v85 = v84;
    LOBYTE(v65) = v86;
    sub_1BD0DDF10(v79, v81, v49 & 1);

    v87 = sub_1BE0505F4();
    v89 = v88;
    LOBYTE(v69) = v90;
    v92 = v91;
    sub_1BD0DDF10(v83, v85, v65 & 1);

    v93 = swift_getKeyPath();
    v94 = swift_getKeyPath();
    v95 = v69 & 1;
    LOBYTE(v256[0]) = v69 & 1;
    LOBYTE(v255[0]) = 1;
    v96 = v119;
    v97 = v120;
    *&v194 = v120;
    *(&v194 + 1) = v119;
    LOBYTE(v195) = v127;
    *(&v195 + 1) = *v145;
    DWORD1(v195) = *&v145[3];
    v98 = v121;
    *(&v195 + 1) = v121;
    *&v196 = v128;
    BYTE8(v196) = 0;
    HIDWORD(v196) = *&v144[3];
    *(&v196 + 9) = *v144;
    v99 = v118;
    v197 = v118;
    v198 = 0;
    v199 = 1;
    LOBYTE(v141[0]) = 1;
    v139 = v196;
    v140 = v118;
    v137 = v194;
    v138 = v195;
    *&v200 = v87;
    *(&v200 + 1) = v89;
    LOBYTE(v201) = v95;
    DWORD1(v201) = *(v143 + 3);
    *(&v201 + 1) = v143[0];
    *(&v201 + 1) = v92;
    *&v202 = v93;
    BYTE8(v202) = 0;
    HIDWORD(v202) = *&v142[3];
    *(&v202 + 9) = *v142;
    v203 = v94;
    v204 = 0;
    v205 = 1;
    *(v141 + 8) = v200;
    BYTE8(v141[4]) = 1;
    *(&v141[3] + 8) = v94;
    *(&v141[2] + 8) = v202;
    *(&v141[1] + 8) = v201;
    v206[0] = v87;
    v206[1] = v89;
    v207 = v95;
    *&v208[3] = *(v143 + 3);
    *v208 = v143[0];
    v209 = v92;
    v210 = v93;
    v211 = 0;
    *&v212[3] = *&v142[3];
    *v212 = *v142;
    v213 = v94;
    v214 = 0;
    v215 = 1;
    sub_1BD0DE19C(&v194, v256, &qword_1EBD39160);
    sub_1BD0DE19C(&v200, v256, &qword_1EBD39160);
    sub_1BD0DE53C(v206, &qword_1EBD39160);
    v216[0] = v97;
    v216[1] = v96;
    v217 = v127;
    *v218 = *v145;
    *&v218[3] = *&v145[3];
    v219 = v98;
    v220 = v128;
    v221 = 0;
    *v222 = *v144;
    *&v222[3] = *&v144[3];
    v223 = v99;
    v224 = 0;
    v225 = 1;
    sub_1BD0DE53C(v216, &qword_1EBD39160);
    *(&v146[5] + 7) = v141[1];
    *(&v146[6] + 7) = v141[2];
    *(&v146[7] + 7) = v141[3];
    v146[8] = *(&v141[3] + 9);
    *(&v146[1] + 7) = v138;
    *(&v146[2] + 7) = v139;
    *(&v146[3] + 7) = v140;
    *(&v146[4] + 7) = v141[0];
    *(v146 + 7) = v137;
    v100 = v124;
    v226[0] = v124;
    v226[1] = 0;
    LOBYTE(v227[0]) = KeyPath;
    *(&v227[1] + 1) = v154[1];
    *(&v227[2] + 1) = v154[2];
    *(&v227[3] + 1) = v154[3];
    v227[4] = *(&v154[3] + 15);
    *(v227 + 1) = v154[0];
    *v228 = 0;
    LOBYTE(v87) = v123;
    v228[8] = v123;
    *&v228[9] = *v148;
    *&v228[41] = *&v148[32];
    *&v228[25] = *&v148[16];
    *&v228[57] = *&v148[48];
    *&v228[73] = *&v148[64];
    v136[4] = v227[3];
    v136[5] = *(&v154[3] + 15);
    v136[0] = v124;
    v136[1] = v227[0];
    v136[2] = v227[1];
    v136[3] = v227[2];
    v136[8] = *&v228[32];
    v136[9] = *&v228[48];
    v136[10] = *&v228[64];
    v136[6] = *v228;
    v136[7] = *&v228[16];
    v229[0] = v122;
    v229[1] = 0;
    v230[0] = v147;
    *&v230[97] = v146[6];
    *&v230[81] = v146[5];
    *&v230[33] = v146[2];
    *&v230[17] = v146[1];
    *&v230[113] = v146[7];
    *&v230[129] = *(&v141[3] + 9);
    *&v230[49] = v146[3];
    *&v230[65] = v146[4];
    *&v230[1] = v146[0];
    *(&v136[18] + 8) = *&v230[96];
    *(&v136[19] + 8) = *&v230[112];
    *(&v136[20] + 8) = *&v230[128];
    *(&v136[16] + 8) = *&v230[64];
    *(&v136[17] + 8) = *&v230[80];
    *(&v136[14] + 8) = *&v230[32];
    *(&v136[15] + 8) = *&v230[48];
    *(&v136[11] + 8) = v122;
    *(&v136[12] + 8) = *v230;
    *(&v136[13] + 8) = *&v230[16];
    v238 = v146[5];
    v239 = v146[6];
    v240 = v146[7];
    v241 = *(&v141[3] + 9);
    v234 = v146[1];
    v235 = v146[2];
    LOBYTE(v136[11]) = v148[71];
    BYTE8(v136[21]) = BYTE8(v141[4]);
    v231[0] = v122;
    v231[1] = 0;
    v232 = v147;
    v236 = v146[3];
    v237 = v146[4];
    v233 = v146[0];
    sub_1BD0DE19C(v226, v256, &qword_1EBD391E8);
    sub_1BD0DE19C(v229, v256, &qword_1EBD3A420);
    sub_1BD0DE53C(v231, &qword_1EBD3A420);
    v242[0] = v100;
    v242[1] = 0;
    v243 = KeyPath;
    v245 = v154[1];
    v246 = v154[2];
    *v247 = v154[3];
    *&v247[15] = *(&v154[3] + 15);
    v244 = v154[0];
    v248 = 0;
    v249 = v87;
    v250 = *v148;
    v254 = *&v148[64];
    v253 = *&v148[48];
    v252 = *&v148[32];
    v251 = *&v148[16];
    sub_1BD0DE53C(v242, &qword_1EBD391E8);

    memcpy(&v156[7], v136, 0x159uLL);
    LOBYTE(v89) = sub_1BE0501C4();
    sub_1BE04E1F4();
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v108 = v107;
    v156[352] = 0;
    LOBYTE(v99) = sub_1BE050234();
    sub_1BE04E1F4();
    v110 = v109;
    v112 = v111;
    v114 = v113;
    v116 = v115;

    v156[360] = 0;
    LOBYTE(v255[0]) = v125;
    memcpy(v255 + 1, v156, 0x160uLL);
    LOBYTE(v255[45]) = v89;
    v255[46] = v102;
    v255[47] = v104;
    v255[48] = v106;
    v255[49] = v108;
    LOBYTE(v255[50]) = 0;
    LOBYTE(v255[51]) = v99;
    v255[52] = v110;
    v255[53] = v112;
    v255[54] = v114;
    v255[55] = v116;
    LOBYTE(v255[56]) = 0;
    PKEdgeInsetsMake(v255, v117);
    memcpy(v256, v255, 0x1C1uLL);
    a1 = v126;
    return memcpy(a1, v256, 0x1C1uLL);
  }

  __break(1u);
  return result;
}

id sub_1BD153828@<X0>(void *a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BD1549A4();
  if (!v7 || (v8 = v7, v9 = [v7 formattedStringValue], v8, !v9))
  {
    sub_1BD154B20(v257);
    return memcpy(a1, v257, 0x1C1uLL);
  }

  v127 = a1;
  v132 = sub_1BE052434();
  v134 = v10;

  (*(v3 + 104))(v6, *MEMORY[0x1E69B8088], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v12 = result;
    v13 = sub_1BE04B6F4();
    v122 = v13;
    v15 = v14;

    (*(v3 + 8))(v6, v2);
    v135 = sub_1BE051494();
    v136 = sub_1BE050324();
    v126 = sub_1BE050194();
    v125 = sub_1BE04F504();
    v156 = 1;
    v257[0] = v13;
    v131 = v15;
    v257[1] = v15;
    v133 = sub_1BD0DDEBC();
    sub_1BE048C84();
    v16 = sub_1BE0506C4();
    v18 = v17;
    v20 = v19;
    v21 = sub_1BE050564();
    v23 = v22;
    v25 = v24;
    sub_1BD0DDF10(v16, v18, v20 & 1);

    v26 = sub_1BE0505E4();
    v28 = v27;
    v30 = v29;
    sub_1BD0DDF10(v21, v23, v25 & 1);

    v31 = sub_1BE0505F4();
    v120 = v32;
    v121 = v31;
    LOBYTE(v21) = v33;
    v123 = v34;
    sub_1BD0DDF10(v26, v28, v30 & 1);

    KeyPath = swift_getKeyPath();
    v129 = swift_getKeyPath();
    v128 = v21 & 1;
    LOBYTE(v256[0]) = 1;
    v257[0] = v132;
    v257[1] = v134;
    sub_1BE048C84();
    v35 = sub_1BE0506C4();
    v37 = v36;
    LOBYTE(v21) = v38;
    v39 = sub_1BE050564();
    v41 = v40;
    v43 = v42;
    sub_1BD0DDF10(v35, v37, v21 & 1);

    v44 = sub_1BE0505E4();
    v46 = v45;
    LOBYTE(v23) = v47;
    sub_1BD0DDF10(v39, v41, v43 & 1);

    v48 = sub_1BE0505F4();
    v50 = v49;
    LOBYTE(v28) = v51;
    v53 = v52;
    sub_1BD0DDF10(v44, v46, v23 & 1);

    v54 = swift_getKeyPath();
    v55 = swift_getKeyPath();
    v56 = v28 & 1;
    LOBYTE(v257[0]) = v28 & 1;
    LOBYTE(v256[0]) = 1;
    v57 = v120;
    v58 = v121;
    *&v158 = v121;
    *(&v158 + 1) = v120;
    LOBYTE(v159) = v128;
    *(&v159 + 1) = *v154;
    DWORD1(v159) = *&v154[3];
    v59 = v123;
    *(&v159 + 1) = v123;
    *&v160 = KeyPath;
    BYTE8(v160) = 0;
    HIDWORD(v160) = *&v153[3];
    *(&v160 + 9) = *v153;
    v161 = v129;
    v162 = 0;
    v163 = 1;
    LOBYTE(v174) = 1;
    v173 = v129;
    v172 = v160;
    v170 = v158;
    v171 = v159;
    v150 = 1;
    *&v164 = v48;
    *(&v164 + 1) = v50;
    LOBYTE(v165) = v56;
    DWORD1(v165) = *(v152 + 3);
    *(&v165 + 1) = v152[0];
    *(&v165 + 1) = v53;
    *&v166 = v54;
    BYTE8(v166) = 0;
    HIDWORD(v166) = *&v151[3];
    *(&v166 + 9) = *v151;
    v167 = v55;
    v168 = 0;
    v169 = 1;
    *&v149[7] = v164;
    v149[71] = 1;
    *&v149[55] = v55;
    *&v149[39] = v166;
    *&v149[23] = v165;
    v124 = 1;
    v175[0] = v48;
    v175[1] = v50;
    v176 = v56;
    *&v177[3] = *(v152 + 3);
    *v177 = v152[0];
    v178 = v53;
    v179 = v54;
    v180 = 0;
    *&v181[3] = *&v151[3];
    *v181 = *v151;
    v182 = v55;
    v183 = 0;
    v184 = 1;
    sub_1BD0DE19C(&v158, v257, &qword_1EBD39160);
    sub_1BD0DE19C(&v164, v257, &qword_1EBD39160);
    sub_1BD0DE53C(v175, &qword_1EBD39160);
    v185[0] = v58;
    v185[1] = v57;
    v186 = v128;
    *v187 = *v154;
    *&v187[3] = *&v154[3];
    v188 = v59;
    v189 = KeyPath;
    v190 = 0;
    *v191 = *v153;
    *&v191[3] = *&v153[3];
    v192 = v129;
    v193 = 0;
    v194 = 1;
    sub_1BD0DE53C(v185, &qword_1EBD39160);
    *(&v155[1] + 7) = v171;
    *(&v155[2] + 7) = v172;
    *(&v155[3] + 7) = v173;
    *(&v155[4] + 7) = v174;
    *(v155 + 7) = v170;
    LODWORD(KeyPath) = v156;
    v123 = sub_1BE04F7C4();
    v148 = 1;
    v257[0] = v122;
    v257[1] = v131;
    sub_1BE048C84();
    v60 = sub_1BE0506C4();
    v62 = v61;
    LOBYTE(v53) = v63;
    v64 = sub_1BE050564();
    v66 = v65;
    LOBYTE(v48) = v67;
    sub_1BD0DDF10(v60, v62, v53 & 1);

    v68 = sub_1BE0505E4();
    v70 = v69;
    LOBYTE(v58) = v71;
    sub_1BD0DDF10(v64, v66, v48 & 1);

    v72 = sub_1BE0505F4();
    v120 = v73;
    v121 = v72;
    LOBYTE(v64) = v74;
    v122 = v75;
    sub_1BD0DDF10(v68, v70, v58 & 1);

    v129 = swift_getKeyPath();
    v119 = swift_getKeyPath();
    v128 = v64 & 1;
    LOBYTE(v256[0]) = 1;
    v257[0] = v132;
    v257[1] = v134;
    sub_1BE048C84();
    v76 = sub_1BE0506C4();
    v78 = v77;
    LOBYTE(v64) = v79;
    v80 = sub_1BE050564();
    v82 = v81;
    LOBYTE(v50) = v83;
    sub_1BD0DDF10(v76, v78, v64 & 1);

    v84 = sub_1BE0505E4();
    v86 = v85;
    LOBYTE(v66) = v87;
    sub_1BD0DDF10(v80, v82, v50 & 1);

    v88 = sub_1BE0505F4();
    v90 = v89;
    LOBYTE(v70) = v91;
    v93 = v92;
    sub_1BD0DDF10(v84, v86, v66 & 1);

    v94 = swift_getKeyPath();
    v95 = swift_getKeyPath();
    v96 = v70 & 1;
    LOBYTE(v257[0]) = v70 & 1;
    LOBYTE(v256[0]) = 1;
    v97 = v120;
    v98 = v121;
    *&v195 = v121;
    *(&v195 + 1) = v120;
    LOBYTE(v196) = v128;
    *(&v196 + 1) = *v146;
    DWORD1(v196) = *&v146[3];
    v99 = v122;
    *(&v196 + 1) = v122;
    *&v197 = v129;
    BYTE8(v197) = 0;
    HIDWORD(v197) = *&v145[3];
    *(&v197 + 9) = *v145;
    v100 = v119;
    v198 = v119;
    v199 = 0;
    v200 = 1;
    LOBYTE(v142[0]) = 1;
    v140 = v197;
    v141 = v119;
    v138 = v195;
    v139 = v196;
    *&v201 = v88;
    *(&v201 + 1) = v90;
    LOBYTE(v202) = v96;
    DWORD1(v202) = *(v144 + 3);
    *(&v202 + 1) = v144[0];
    *(&v202 + 1) = v93;
    *&v203 = v94;
    BYTE8(v203) = 0;
    HIDWORD(v203) = *&v143[3];
    *(&v203 + 9) = *v143;
    v204 = v95;
    v205 = 0;
    v206 = 1;
    *(v142 + 8) = v201;
    BYTE8(v142[4]) = 1;
    *(&v142[3] + 8) = v95;
    *(&v142[2] + 8) = v203;
    *(&v142[1] + 8) = v202;
    v207[0] = v88;
    v207[1] = v90;
    v208 = v96;
    *&v209[3] = *(v144 + 3);
    *v209 = v144[0];
    v210 = v93;
    v211 = v94;
    v212 = 0;
    *&v213[3] = *&v143[3];
    *v213 = *v143;
    v214 = v95;
    v215 = 0;
    v216 = 1;
    sub_1BD0DE19C(&v195, v257, &qword_1EBD39160);
    sub_1BD0DE19C(&v201, v257, &qword_1EBD39160);
    sub_1BD0DE53C(v207, &qword_1EBD39160);
    v217[0] = v98;
    v217[1] = v97;
    v218 = v128;
    *v219 = *v146;
    *&v219[3] = *&v146[3];
    v220 = v99;
    v221 = v129;
    v222 = 0;
    *v223 = *v145;
    *&v223[3] = *&v145[3];
    v224 = v100;
    v225 = 0;
    v226 = 1;
    sub_1BD0DE53C(v217, &qword_1EBD39160);
    *(&v147[5] + 7) = v142[1];
    *(&v147[6] + 7) = v142[2];
    *(&v147[7] + 7) = v142[3];
    v147[8] = *(&v142[3] + 9);
    *(&v147[1] + 7) = v139;
    *(&v147[2] + 7) = v140;
    *(&v147[3] + 7) = v141;
    *(&v147[4] + 7) = v142[0];
    *(v147 + 7) = v138;
    v101 = v125;
    v227[0] = v125;
    v227[1] = 0;
    LOBYTE(v228[0]) = KeyPath;
    *(&v228[1] + 1) = v155[1];
    *(&v228[2] + 1) = v155[2];
    *(&v228[3] + 1) = v155[3];
    v228[4] = *(&v155[3] + 15);
    *(v228 + 1) = v155[0];
    *v229 = 0;
    LOBYTE(v88) = v124;
    v229[8] = v124;
    *&v229[9] = *v149;
    *&v229[41] = *&v149[32];
    *&v229[25] = *&v149[16];
    *&v229[57] = *&v149[48];
    *&v229[73] = *&v149[64];
    v137[4] = v228[3];
    v137[5] = *(&v155[3] + 15);
    v137[0] = v125;
    v137[1] = v228[0];
    v137[2] = v228[1];
    v137[3] = v228[2];
    v137[8] = *&v229[32];
    v137[9] = *&v229[48];
    v137[10] = *&v229[64];
    v137[6] = *v229;
    v137[7] = *&v229[16];
    v230[0] = v123;
    v230[1] = 0;
    v231[0] = v148;
    *&v231[97] = v147[6];
    *&v231[81] = v147[5];
    *&v231[33] = v147[2];
    *&v231[17] = v147[1];
    *&v231[113] = v147[7];
    *&v231[129] = *(&v142[3] + 9);
    *&v231[49] = v147[3];
    *&v231[65] = v147[4];
    *&v231[1] = v147[0];
    *(&v137[18] + 8) = *&v231[96];
    *(&v137[19] + 8) = *&v231[112];
    *(&v137[20] + 8) = *&v231[128];
    *(&v137[16] + 8) = *&v231[64];
    *(&v137[17] + 8) = *&v231[80];
    *(&v137[14] + 8) = *&v231[32];
    *(&v137[15] + 8) = *&v231[48];
    *(&v137[11] + 8) = v123;
    *(&v137[12] + 8) = *v231;
    *(&v137[13] + 8) = *&v231[16];
    v239 = v147[5];
    v240 = v147[6];
    v241 = v147[7];
    v242 = *(&v142[3] + 9);
    v235 = v147[1];
    v236 = v147[2];
    LOBYTE(v137[11]) = v149[71];
    BYTE8(v137[21]) = BYTE8(v142[4]);
    v232[0] = v123;
    v232[1] = 0;
    v233 = v148;
    v237 = v147[3];
    v238 = v147[4];
    v234 = v147[0];
    sub_1BD0DE19C(v227, v257, &qword_1EBD391E8);
    sub_1BD0DE19C(v230, v257, &qword_1EBD3A420);
    sub_1BD0DE53C(v232, &qword_1EBD3A420);
    v243[0] = v101;
    v243[1] = 0;
    v244 = KeyPath;
    v246 = v155[1];
    v247 = v155[2];
    *v248 = v155[3];
    *&v248[15] = *(&v155[3] + 15);
    v245 = v155[0];
    v249 = 0;
    v250 = v88;
    v251 = *v149;
    v255 = *&v149[64];
    v254 = *&v149[48];
    v253 = *&v149[32];
    v252 = *&v149[16];
    sub_1BD0DE53C(v243, &qword_1EBD391E8);

    memcpy(&v157[7], v137, 0x159uLL);
    LOBYTE(v100) = sub_1BE0501C4();
    sub_1BE04E1F4();
    v103 = v102;
    v105 = v104;
    v107 = v106;
    v109 = v108;
    v157[352] = 0;
    LOBYTE(v90) = sub_1BE050234();
    sub_1BE04E1F4();
    v111 = v110;
    v113 = v112;
    v115 = v114;
    v117 = v116;

    v157[360] = 0;
    LOBYTE(v256[0]) = v126;
    memcpy(v256 + 1, v157, 0x160uLL);
    LOBYTE(v256[45]) = v100;
    v256[46] = v103;
    v256[47] = v105;
    v256[48] = v107;
    v256[49] = v109;
    LOBYTE(v256[50]) = 0;
    LOBYTE(v256[51]) = v90;
    v256[52] = v111;
    v256[53] = v113;
    v256[54] = v115;
    v256[55] = v117;
    LOBYTE(v256[56]) = 0;
    PKEdgeInsetsMake(v256, v118);
    memcpy(v257, v256, 0x1C1uLL);
    a1 = v127;
    return memcpy(a1, v257, 0x1C1uLL);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD1546B0()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE053304();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  v12 = [*v0 rewardsType];
  result = 0;
  if ((v12 - 1) <= 1)
  {
    v14 = [v11 value];
    if (v14 && (v20[1] = 0, v20[2] = 0, v21 = 0, v22 = 1, v15 = v14, sub_1BE0533E4(), v15, v22 != 1))
    {
      MEMORY[0x1BFB37210]();
      sub_1BD154B6C();
      sub_1BE053464();
      (*(v7 + 8))(v10, v6);
      v16 = v23;
      v17 = v24;
      (*(v2 + 104))(v5, *MEMORY[0x1E69B8088], v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1BE0B69E0;
      *(v18 + 56) = MEMORY[0x1E69E6158];
      *(v18 + 64) = sub_1BD110550();
      *(v18 + 32) = v16;
      *(v18 + 40) = v17;
      v19 = sub_1BE04B714();

      (*(v2 + 8))(v5, v1);
      return v19;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_1BD1549A4()
{
  v1 = [*v0 monetaryValue];
  if (!v1 || (v2 = v1, v3 = [v1 amount], v2, !v3))
  {
    v3 = [objc_opt_self() zero];
  }

  v4 = *(v0 + *(type metadata accessor for PaymentOfferRewardsIntentSummaryView() + 20) + 8);
  v5 = [v4 decimalNumberBySubtracting_];
  if ([v5 pk_isNegativeNumber] || objc_msgSend(v5, sel_pk_isNotANumber))
  {

    return 0;
  }

  else
  {
    v7 = [v4 decimalNumberBySubtracting_];
    v8 = objc_allocWithZone(MEMORY[0x1E69B8780]);
    v9 = sub_1BE052404();
    v10 = [v8 initWithAmount:v7 currency:v9 exponent:0];

    return v10;
  }
}

double sub_1BD154B20(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0;
  return result;
}

unint64_t sub_1BD154B6C()
{
  result = qword_1EBD45110;
  if (!qword_1EBD45110)
  {
    sub_1BE053304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45110);
  }

  return result;
}

unint64_t sub_1BD154BC4()
{
  result = qword_1EBD3A448;
  if (!qword_1EBD3A448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A450);
    sub_1BD154C48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A448);
  }

  return result;
}

unint64_t sub_1BD154C48()
{
  result = qword_1EBD3A458;
  if (!qword_1EBD3A458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A458);
  }

  return result;
}

uint64_t sub_1BD154CAC(uint64_t a1)
{
  v27[2] = a1;
  v1 = sub_1BE048974();
  v33 = *(v1 - 8);
  v34 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v32 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A688);
  v5 = *(v4 - 8);
  v37 = v4;
  v38 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A690);
  MEMORY[0x1EEE9AC00](v9, v10);
  v11 = sub_1BD035EBC();
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  v35 = sub_1BD030618();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v31 = sub_1BE048994();
  v12 = v37;
  v13 = *(v38 + 8);
  v38 += 8;
  v13(v8, v37);
  v36 = v13;
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v30 = sub_1BE048994();
  v13(v8, v12);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v27[1] = v11;
  v29 = sub_1BE048994();
  v14 = v8;
  v15 = v8;
  v16 = v36;
  v36(v14, v37);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  v17 = v15;
  sub_1BE048A64();
  v28 = sub_1BE048994();
  v16(v15, v37);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  v19 = v32;
  v18 = v33;
  v20 = v34;
  (*(v33 + 104))(v32, *MEMORY[0x1E695A1E0], v34);
  sub_1BE048A24();
  (*(v18 + 8))(v19, v20);
  sub_1BE048A44();
  sub_1BE048A64();
  v21 = sub_1BE048994();
  v36(v17, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A698);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BE0BA730;
  v23 = v30;
  *(v22 + 32) = v31;
  *(v22 + 40) = v23;
  v24 = v28;
  *(v22 + 48) = v29;
  *(v22 + 56) = v24;
  *(v22 + 64) = v21;
  v25 = sub_1BE048984();

  return v25;
}

uint64_t sub_1BD155390(uint64_t a1)
{
  v40 = a1;
  v1 = sub_1BE048974();
  v36 = *(v1 - 8);
  v37 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v35 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A670);
  v5 = *(v4 - 8);
  v41 = v4;
  v42 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A678);
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_1BD15CFA8();
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  v11 = sub_1BD030618();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v34 = sub_1BE048994();
  v12 = v41;
  v38 = *(v42 + 8);
  v42 += 8;
  v38(v8, v41);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  v39 = v11;
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v33 = sub_1BE048994();
  v13 = v38;
  v38(v8, v12);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v32 = sub_1BE048994();
  v13(v8, v41);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v31 = sub_1BE048994();
  v14 = v38;
  v38(v8, v41);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v30 = sub_1BE048994();
  v14(v8, v41);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v29 = sub_1BE048994();
  v15 = v38;
  v38(v8, v41);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v28 = sub_1BE048994();
  v16 = v41;
  v15(v8, v41);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  v18 = v35;
  v17 = v36;
  v19 = v37;
  (*(v36 + 104))(v35, *MEMORY[0x1E695A1E0], v37);
  sub_1BE048A24();
  (*(v17 + 8))(v18, v19);
  sub_1BE048A44();
  sub_1BE048A64();
  v20 = sub_1BE048994();
  v38(v8, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A680);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BE0B76F0;
  v22 = v33;
  *(v21 + 32) = v34;
  *(v21 + 40) = v22;
  v23 = v31;
  *(v21 + 48) = v32;
  *(v21 + 56) = v23;
  v24 = v29;
  *(v21 + 64) = v30;
  *(v21 + 72) = v24;
  *(v21 + 80) = v28;
  *(v21 + 88) = v20;
  v25 = sub_1BE048984();

  return v25;
}

uint64_t sub_1BD155D20()
{
  v0 = sub_1BE0489B4();
  v1 = sub_1BE0489B4();
  v2 = sub_1BE0489B4();
  v3 = sub_1BE0489B4();
  v4 = sub_1BE0489B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BE0BA730;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_1BE0489A4();

  return v6;
}

uint64_t sub_1BD155E44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A660);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v14 - v3;
  sub_1BD15CFFC();
  sub_1BE048A14();
  v15 = sub_1BE048994();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_1BE048A14();
  v14 = sub_1BE048994();
  v5(v4, v0);
  sub_1BE048A14();
  v6 = sub_1BE048994();
  v5(v4, v0);
  sub_1BE048A14();
  v7 = sub_1BE048994();
  v5(v4, v0);
  sub_1BE048A14();
  v8 = sub_1BE048994();
  v5(v4, v0);
  sub_1BE048A14();
  v9 = sub_1BE048994();
  v5(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A668);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BE0BA740;
  v11 = v14;
  *(v10 + 32) = v15;
  *(v10 + 40) = v11;
  *(v10 + 48) = v6;
  *(v10 + 56) = v7;
  *(v10 + 64) = v8;
  *(v10 + 72) = v9;
  v12 = sub_1BE048984();

  return v12;
}

uint64_t sub_1BD156150()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A650);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v13 - v3;
  sub_1BD03548C();
  sub_1BE048A14();
  v14 = sub_1BE048994();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_1BE048A14();
  v6 = sub_1BE048994();
  v5(v4, v0);
  sub_1BE048A14();
  v7 = sub_1BE048994();
  v5(v4, v0);
  sub_1BE048A14();
  v8 = sub_1BE048994();
  v5(v4, v0);
  sub_1BE048A14();
  v9 = sub_1BE048994();
  v5(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A658);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BE0BA730;
  *(v10 + 32) = v14;
  *(v10 + 40) = v6;
  *(v10 + 48) = v7;
  *(v10 + 56) = v8;
  *(v10 + 64) = v9;
  v11 = sub_1BE048984();

  return v11;
}

uint64_t sub_1BD15640C(uint64_t a1)
{
  v34 = a1;
  v1 = sub_1BE048974();
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A638);
  v4 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A640);
  MEMORY[0x1EEE9AC00](v8, v9);
  sub_1BD15D050();
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  v35 = sub_1BD030618();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v28 = sub_1BE048994();
  v10 = *(v4 + 8);
  v33 = v4 + 8;
  v11 = v36;
  v10(v7, v36);
  v32 = v10;
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v27 = sub_1BE048994();
  v10(v7, v11);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v26 = sub_1BE048994();
  v12 = v7;
  v13 = v7;
  v14 = v32;
  v32(v12, v36);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  v15 = v13;
  sub_1BE048A64();
  v25 = sub_1BE048994();
  v14(v13, v36);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  v17 = v29;
  v16 = v30;
  v18 = v31;
  (*(v30 + 104))(v29, *MEMORY[0x1E695A1E0], v31);
  sub_1BE048A24();
  (*(v16 + 8))(v17, v18);
  sub_1BE048A44();
  sub_1BE048A64();
  v19 = sub_1BE048994();
  v32(v15, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A648);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BE0BA730;
  v21 = v27;
  *(v20 + 32) = v28;
  *(v20 + 40) = v21;
  v22 = v25;
  *(v20 + 48) = v26;
  *(v20 + 56) = v22;
  *(v20 + 64) = v19;
  v23 = sub_1BE048984();

  return v23;
}

uint64_t sub_1BD156AF4(uint64_t a1)
{
  v30 = a1;
  v1 = sub_1BE048974();
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v26 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A620);
  v4 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A628);
  MEMORY[0x1EEE9AC00](v8, v9);
  sub_1BD15D0A4();
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  v29 = sub_1BD030618();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v25 = sub_1BE048994();
  v10 = *(v4 + 8);
  v11 = v23;
  v10(v7, v23);
  v22 = v10;
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v24 = sub_1BE048994();
  v12 = v11;
  v10(v7, v11);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  v14 = v26;
  v13 = v27;
  v15 = v28;
  (*(v27 + 104))(v26, *MEMORY[0x1E695A1E0], v28);
  sub_1BE048A24();
  (*(v13 + 8))(v14, v15);
  sub_1BE048A44();
  sub_1BE048A64();
  v16 = sub_1BE048994();
  v22(v7, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A630);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BE0B98D0;
  v18 = v24;
  *(v17 + 32) = v25;
  *(v17 + 40) = v18;
  *(v17 + 48) = v16;
  v19 = sub_1BE048984();

  return v19;
}

uint64_t sub_1BD157008()
{
  v0 = sub_1BE0489B4();
  v1 = sub_1BE0489B4();
  v2 = sub_1BE0489B4();
  v3 = sub_1BE0489B4();
  v4 = sub_1BE0489B4();
  v5 = sub_1BE0489B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BE0BA740;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = sub_1BE0489A4();

  return v7;
}

uint64_t sub_1BD157154(uint64_t a1)
{
  v29 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A608);
  v1 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v2);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A610);
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_1BD0373E4();
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  v30 = sub_1BD030618();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v26 = sub_1BE048994();
  v7 = v1 + 8;
  v8 = *(v1 + 8);
  v9 = v31;
  v8(v4, v31);
  v27 = v8;
  v28 = v7;
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v25 = sub_1BE048994();
  v8(v4, v9);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v24 = sub_1BE048994();
  v27(v4, v31);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v23 = sub_1BE048994();
  v10 = v31;
  v11 = v27;
  v27(v4, v31);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v22 = sub_1BE048994();
  v11(v4, v10);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v21 = sub_1BE048994();
  v12 = v27;
  v27(v4, v31);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v13 = sub_1BE048994();
  v12(v4, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A618);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BE0BA750;
  v15 = v25;
  *(v14 + 32) = v26;
  *(v14 + 40) = v15;
  v16 = v23;
  *(v14 + 48) = v24;
  *(v14 + 56) = v16;
  v17 = v21;
  *(v14 + 64) = v22;
  *(v14 + 72) = v17;
  *(v14 + 80) = v13;
  v18 = sub_1BE048984();

  return v18;
}

uint64_t sub_1BD157910(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5F0);
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5F8);
  MEMORY[0x1EEE9AC00](v7, v8);
  sub_1BD15D0F8();
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  v23 = sub_1BD030618();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BD15D344();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v25 = sub_1BE048994();
  v27 = *(v29 + 8);
  v29 += 8;
  v27(v6, v28);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A5B0, &unk_1EBD39970, &unk_1BE0B9F80, sub_1BD15D3EC);
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v24 = sub_1BE048994();
  v9 = v28;
  v10 = v27;
  v27(v6, v28);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A568, &qword_1EBD3A570, &unk_1BE0BA8E0, sub_1BD0EF8C4);
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  swift_getKeyPath();
  v26 = a1;
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v23 = sub_1BE048994();
  v10(v6, v9);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A5C0, &qword_1EBD3A5C8, &unk_1BE0BAA50, sub_1BD15D444);
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v22 = sub_1BE048994();
  v10(v6, v28);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A580, &qword_1EBD3A588, &unk_1BE0BA938, sub_1BD15D398);
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v21 = sub_1BE048994();
  v11 = v28;
  v27(v6, v28);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A5D8, &qword_1EBD3A5E0, &unk_1BE0BAAA8, sub_1BD15D588);
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v20 = sub_1BE048994();
  v12 = v27;
  v27(v6, v11);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v13 = sub_1BE048994();
  v12(v6, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A600);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BE0BA750;
  v15 = v24;
  *(v14 + 32) = v25;
  *(v14 + 40) = v15;
  v16 = v22;
  *(v14 + 48) = v23;
  *(v14 + 56) = v16;
  v17 = v20;
  *(v14 + 64) = v21;
  *(v14 + 72) = v17;
  *(v14 + 80) = v13;
  v18 = sub_1BE048984();

  return v18;
}

uint64_t sub_1BD15832C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - v8;
  sub_1BD15D62C(a1, &v11 - v8);
  sub_1BD15D62C(v9, v6);
  sub_1BE048884();
  return sub_1BD15D69C(v9);
}

uint64_t sub_1BD1583F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - v8;
  sub_1BD15D62C(a1, &v11 - v8);
  sub_1BD15D62C(v9, v6);
  sub_1BE048884();
  return sub_1BD15D69C(v9);
}

uint64_t sub_1BD158510()
{
  v0 = sub_1BE048A04();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1BD030618();
  sub_1BE048964();

  sub_1BD15D0F8();
  sub_1BE0489F4();
  v19 = sub_1BE0489E4();
  v5 = *(v1 + 8);
  v5(v4, v0);
  swift_getKeyPath();
  sub_1BD15D344();
  sub_1BE048964();

  sub_1BE0489F4();
  v18 = sub_1BE0489E4();
  v5(v4, v0);
  swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A5B0, &unk_1EBD39970, &unk_1BE0B9F80, sub_1BD15D3EC);
  sub_1BE048964();

  sub_1BE0489F4();
  v17 = sub_1BE0489E4();
  v5(v4, v0);
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE0489F4();
  v16 = sub_1BE0489E4();
  v6 = v0;
  v5(v4, v0);
  swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A568, &qword_1EBD3A570, &unk_1BE0BA8E0, sub_1BD0EF8C4);
  sub_1BE048964();

  sub_1BE0489F4();
  v7 = sub_1BE0489E4();
  v5(v4, v6);
  swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A5C0, &qword_1EBD3A5C8, &unk_1BE0BAA50, sub_1BD15D444);
  sub_1BE048964();

  sub_1BE0489F4();
  v8 = sub_1BE0489E4();
  v5(v4, v6);
  swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A580, &qword_1EBD3A588, &unk_1BE0BA938, sub_1BD15D398);
  sub_1BE048964();

  sub_1BE0489F4();
  v9 = sub_1BE0489E4();
  v5(v4, v6);
  swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A5D8, &qword_1EBD3A5E0, &unk_1BE0BAAA8, sub_1BD15D588);
  sub_1BE048964();

  sub_1BE0489F4();
  v10 = sub_1BE0489E4();
  v5(v4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A4E8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BE0B76F0;
  v12 = v18;
  *(v11 + 32) = v19;
  *(v11 + 40) = v12;
  v13 = v16;
  *(v11 + 48) = v17;
  *(v11 + 56) = v13;
  *(v11 + 64) = v7;
  *(v11 + 72) = v8;
  *(v11 + 80) = v9;
  *(v11 + 88) = v10;
  v14 = sub_1BE0489D4();

  return v14;
}

uint64_t sub_1BD158AE4()
{
  v0 = sub_1BE0489B4();
  v1 = sub_1BE0489B4();
  v2 = sub_1BE0489B4();
  v3 = sub_1BE0489B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BE0B98E0;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_1BE0489A4();

  return v5;
}

uint64_t sub_1BD158C18()
{
  v0 = sub_1BE0489B4();
  v1 = sub_1BE0489B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BE0B6CA0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_1BE0489A4();

  return v3;
}

uint64_t sub_1BD158CA4()
{
  v0 = sub_1BE0489B4();
  v1 = sub_1BE0489B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BE0B6CA0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_1BE0489A4();

  return v3;
}

uint64_t sub_1BD158D4C()
{
  v0 = sub_1BE0489B4();
  v1 = sub_1BE0489B4();
  v2 = sub_1BE0489B4();
  v3 = sub_1BE0489B4();
  v4 = sub_1BE0489B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BE0BA730;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_1BE0489A4();

  return v6;
}

uint64_t sub_1BD158E60()
{
  v0 = sub_1BE0489B4();
  v1 = sub_1BE0489B4();
  v2 = sub_1BE0489B4();
  v3 = sub_1BE0489B4();
  v4 = sub_1BE0489B4();
  v5 = sub_1BE0489B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BE0BA740;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = sub_1BE0489A4();

  return v7;
}

uint64_t sub_1BD158F9C()
{
  v0 = sub_1BE0489B4();
  v1 = sub_1BE0489B4();
  v2 = sub_1BE0489B4();
  v3 = sub_1BE0489B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BE0B98E0;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_1BE0489A4();

  return v5;
}

uint64_t sub_1BD15909C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A598);
  v1 = *(v0 - 8);
  v15 = v0;
  v16 = v1;
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5A0);
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_1BD15D14C();
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A568, &qword_1EBD3A570, &unk_1BE0BA8E0, sub_1BD0EF8C4);
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BD15D344();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v14 = sub_1BE048994();
  v7 = v15;
  v8 = *(v16 + 8);
  v16 += 8;
  v8(v4, v15);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A580, &qword_1EBD3A588, &unk_1BE0BA938, sub_1BD15D398);
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v9 = sub_1BE048994();
  v8(v4, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5A8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BE0B6CA0;
  *(v10 + 32) = v14;
  *(v10 + 40) = v9;
  v11 = sub_1BE048984();

  return v11;
}

uint64_t sub_1BD159478()
{
  v0 = sub_1BE048A04();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A568, &qword_1EBD3A570, &unk_1BE0BA8E0, sub_1BD0EF8C4);
  sub_1BE048964();

  sub_1BD15D14C();
  sub_1BE0489F4();
  v5 = sub_1BE0489E4();
  v6 = *(v1 + 8);
  v6(v4, v0);
  swift_getKeyPath();
  sub_1BD15D344();
  sub_1BE048964();

  sub_1BE0489F4();
  v7 = sub_1BE0489E4();
  v6(v4, v0);
  swift_getKeyPath();
  sub_1BD15D50C(&qword_1EBD3A580, &qword_1EBD3A588, &unk_1BE0BA938, sub_1BD15D398);
  sub_1BE048964();

  sub_1BE0489F4();
  v8 = sub_1BE0489E4();
  v6(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A4E8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BE0B98D0;
  *(v9 + 32) = v5;
  *(v9 + 40) = v7;
  *(v9 + 48) = v8;
  v10 = sub_1BE0489D4();

  return v10;
}

uint64_t sub_1BD159740()
{
  v0 = sub_1BE0489B4();
  v1 = sub_1BE0489B4();
  v2 = sub_1BE0489B4();
  v3 = sub_1BE0489B4();
  v4 = sub_1BE0489B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BE0BA730;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_1BE0489A4();

  return v6;
}

uint64_t sub_1BD159844()
{
  v0 = sub_1BE0489B4();
  v1 = sub_1BE0489B4();
  v2 = sub_1BE0489B4();
  v3 = sub_1BE0489B4();
  v4 = sub_1BE0489B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BE0BA730;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_1BE0489A4();

  return v6;
}

uint64_t sub_1BD159970()
{
  v0 = sub_1BE0489B4();
  v1 = sub_1BE0489B4();
  v2 = sub_1BE0489B4();
  v3 = sub_1BE0489B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BE0B98E0;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_1BE0489A4();

  return v5;
}

uint64_t sub_1BD159A74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A558);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v18 - v3;
  sub_1BD15D1A0();
  sub_1BE048A14();
  v27 = sub_1BE048994();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_1BE048A14();
  v26 = sub_1BE048994();
  v5(v4, v0);
  sub_1BE048A14();
  v25 = sub_1BE048994();
  v5(v4, v0);
  sub_1BE048A14();
  v24 = sub_1BE048994();
  v5(v4, v0);
  sub_1BE048A14();
  v23 = sub_1BE048994();
  v5(v4, v0);
  sub_1BE048A14();
  v22 = sub_1BE048994();
  v5(v4, v0);
  sub_1BE048A14();
  v21 = sub_1BE048994();
  v5(v4, v0);
  sub_1BE048A14();
  v20 = sub_1BE048994();
  v5(v4, v0);
  sub_1BE048A14();
  v19 = sub_1BE048994();
  v5(v4, v0);
  sub_1BE048A14();
  v18 = sub_1BE048994();
  v5(v4, v0);
  sub_1BE048A14();
  v6 = sub_1BE048994();
  v5(v4, v0);
  sub_1BE048A14();
  v7 = sub_1BE048994();
  v5(v4, v0);
  sub_1BE048A14();
  v8 = sub_1BE048994();
  v5(v4, v0);
  sub_1BE048A14();
  v9 = sub_1BE048994();
  v5(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A560);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BE0BA760;
  v11 = v26;
  *(v10 + 32) = v27;
  *(v10 + 40) = v11;
  v12 = v24;
  *(v10 + 48) = v25;
  *(v10 + 56) = v12;
  v13 = v22;
  *(v10 + 64) = v23;
  *(v10 + 72) = v13;
  v14 = v20;
  *(v10 + 80) = v21;
  *(v10 + 88) = v14;
  v15 = v18;
  *(v10 + 96) = v19;
  *(v10 + 104) = v15;
  *(v10 + 112) = v6;
  *(v10 + 120) = v7;
  *(v10 + 128) = v8;
  *(v10 + 136) = v9;
  v16 = sub_1BE048984();

  return v16;
}

uint64_t sub_1BD15A014()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A548);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v13 - v3;
  sub_1BD15D1F4();
  sub_1BE048A14();
  v5 = sub_1BE048994();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_1BE048A14();
  v7 = sub_1BE048994();
  v6(v4, v0);
  sub_1BE048A14();
  v8 = sub_1BE048994();
  v6(v4, v0);
  sub_1BE048A14();
  v9 = sub_1BE048994();
  v6(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A550);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BE0B98E0;
  *(v10 + 32) = v5;
  *(v10 + 40) = v7;
  *(v10 + 48) = v8;
  *(v10 + 56) = v9;
  v11 = sub_1BE048984();

  return v11;
}

uint64_t sub_1BD15A288()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A530);
  v69 = *(v0 - 8);
  v70 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v51 - v2;
  v4 = sub_1BE048974();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A538);
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_1BD0353D4();
  sub_1BE048A54();
  sub_1BE048A44();
  v11 = *MEMORY[0x1E695A1E0];
  v64 = *(v5 + 104);
  v65 = v4;
  v71 = v5 + 104;
  v63 = v11;
  v64(v8, v11, v4);
  sub_1BE048A24();
  v12 = *(v5 + 8);
  v67 = v5 + 8;
  v68 = v12;
  v12(v8, v4);
  sub_1BE048A44();
  sub_1BE048A64();
  v61 = sub_1BE048994();
  v13 = v70;
  v15 = v69 + 8;
  v14 = *(v69 + 8);
  v14(v3, v70);
  v69 = v15;
  sub_1BE048A14();
  v60 = sub_1BE048994();
  v14(v3, v13);
  v16 = v14;
  v66 = v14;
  sub_1BE048A54();
  sub_1BE048A44();
  v18 = v64;
  v17 = v65;
  v64(v8, v11, v65);
  sub_1BE048A24();
  v68(v8, v17);
  sub_1BE048A44();
  sub_1BE048A64();
  v59 = sub_1BE048994();
  v19 = v70;
  v16(v3, v70);
  sub_1BE048A54();
  sub_1BE048A44();
  v20 = v65;
  v18(v8, v63, v65);
  sub_1BE048A24();
  v21 = v68;
  v68(v8, v20);
  sub_1BE048A44();
  sub_1BE048A64();
  v58 = sub_1BE048994();
  v66(v3, v19);
  sub_1BE048A54();
  sub_1BE048A44();
  v62 = v8;
  v22 = v63;
  v23 = v20;
  v24 = v20;
  v25 = v64;
  v64(v8, v63, v24);
  sub_1BE048A24();
  v21(v8, v23);
  sub_1BE048A44();
  sub_1BE048A64();
  v57 = sub_1BE048994();
  v66(v3, v70);
  sub_1BE048A54();
  sub_1BE048A44();
  v26 = v62;
  v27 = v22;
  v28 = v65;
  v25(v62, v27, v65);
  sub_1BE048A24();
  v68(v26, v28);
  sub_1BE048A44();
  sub_1BE048A64();
  v56 = sub_1BE048994();
  v29 = v70;
  v30 = v66;
  v66(v3, v70);
  sub_1BE048A14();
  v55 = sub_1BE048994();
  v30(v3, v29);
  sub_1BE048A14();
  v54 = sub_1BE048994();
  v30(v3, v29);
  sub_1BE048A14();
  v53 = sub_1BE048994();
  v30(v3, v29);
  sub_1BE048A54();
  sub_1BE048A44();
  v31 = v62;
  v32 = v63;
  v33 = v64;
  v34 = v65;
  v64(v62, v63, v65);
  sub_1BE048A24();
  v35 = v34;
  v36 = v68;
  v68(v31, v35);
  sub_1BE048A44();
  sub_1BE048A64();
  v52 = sub_1BE048994();
  v66(v3, v70);
  sub_1BE048A54();
  sub_1BE048A44();
  v37 = v32;
  v38 = v65;
  v33(v31, v37, v65);
  sub_1BE048A24();
  v39 = v38;
  v36(v31, v38);
  sub_1BE048A44();
  sub_1BE048A64();
  v51 = sub_1BE048994();
  v40 = v70;
  v41 = v66;
  v66(v3, v70);
  sub_1BE048A54();
  sub_1BE048A44();
  v64(v31, v63, v39);
  sub_1BE048A24();
  v68(v31, v39);
  sub_1BE048A44();
  sub_1BE048A64();
  v42 = sub_1BE048994();
  v41(v3, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A540);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1BE0BA770;
  v44 = v60;
  *(v43 + 32) = v61;
  *(v43 + 40) = v44;
  v45 = v58;
  *(v43 + 48) = v59;
  *(v43 + 56) = v45;
  v46 = v56;
  *(v43 + 64) = v57;
  *(v43 + 72) = v46;
  v47 = v54;
  *(v43 + 80) = v55;
  *(v43 + 88) = v47;
  v48 = v52;
  *(v43 + 96) = v53;
  *(v43 + 104) = v48;
  *(v43 + 112) = v51;
  *(v43 + 120) = v42;
  v49 = sub_1BE048984();

  return v49;
}

uint64_t sub_1BD15ACDC()
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A518);
  v43 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v0);
  v2 = &v28 - v1;
  v3 = sub_1BE048974();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A520);
  MEMORY[0x1EEE9AC00](v8, v9);
  sub_1BD15D248();
  sub_1BE048A54();
  sub_1BE048A44();
  v10 = *MEMORY[0x1E695A1E0];
  v41 = *(v4 + 104);
  v42 = v4 + 104;
  v41(v7, v10, v3);
  sub_1BE048A24();
  v11 = *(v4 + 8);
  v36 = v4 + 8;
  v39 = v11;
  v11(v7, v3);
  sub_1BE048A44();
  sub_1BE048A64();
  v33 = sub_1BE048994();
  v40 = *(v43 + 8);
  v43 += 8;
  v40(v2, v37);
  sub_1BE048A54();
  sub_1BE048A44();
  v38 = v10;
  v35 = v3;
  v41(v7, v10, v3);
  sub_1BE048A24();
  v39(v7, v3);
  sub_1BE048A44();
  sub_1BE048A64();
  v32 = sub_1BE048994();
  v12 = v37;
  v40(v2, v37);
  sub_1BE048A54();
  sub_1BE048A44();
  v34 = v7;
  v13 = v10;
  v14 = v35;
  v15 = v41;
  v41(v7, v13, v35);
  sub_1BE048A24();
  v16 = v39;
  v39(v7, v14);
  sub_1BE048A44();
  sub_1BE048A64();
  v31 = sub_1BE048994();
  v40(v2, v12);
  sub_1BE048A54();
  sub_1BE048A44();
  v17 = v34;
  v15(v34, v38, v14);
  sub_1BE048A24();
  v16(v17, v14);
  sub_1BE048A44();
  sub_1BE048A64();
  v30 = sub_1BE048994();
  v18 = v40;
  v40(v2, v12);
  sub_1BE048A14();
  v29 = sub_1BE048994();
  v18(v2, v12);
  sub_1BE048A14();
  v28 = sub_1BE048994();
  v18(v2, v12);
  sub_1BE048A54();
  sub_1BE048A44();
  v20 = v34;
  v19 = v35;
  v41(v34, v38, v35);
  sub_1BE048A24();
  v39(v20, v19);
  sub_1BE048A44();
  sub_1BE048A64();
  v21 = sub_1BE048994();
  v18(v2, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A528);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BE0BA750;
  v23 = v32;
  *(v22 + 32) = v33;
  *(v22 + 40) = v23;
  v24 = v30;
  *(v22 + 48) = v31;
  *(v22 + 56) = v24;
  v25 = v28;
  *(v22 + 64) = v29;
  *(v22 + 72) = v25;
  *(v22 + 80) = v21;
  v26 = sub_1BE048984();

  return v26;
}

uint64_t sub_1BD15B3EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A508);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12 - v3;
  sub_1BD15D29C();
  sub_1BE048A14();
  v5 = sub_1BE048994();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_1BE048A14();
  v7 = sub_1BE048994();
  v6(v4, v0);
  sub_1BE048A14();
  v8 = sub_1BE048994();
  v6(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A510);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BE0B98D0;
  *(v9 + 32) = v5;
  *(v9 + 40) = v7;
  *(v9 + 48) = v8;
  v10 = sub_1BE048984();

  return v10;
}

uint64_t sub_1BD15B604(uint64_t a1)
{
  v35 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A4F0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A4F8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v23 - v6;
  sub_1BD036728();
  sub_1BE048A14();
  v34 = sub_1BE048994();
  v8 = *(v4 + 8);
  v8(v7, v3);
  v38 = v8;
  sub_1BE048A14();
  v33 = sub_1BE048994();
  v8(v7, v3);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  v23 = sub_1BD030618();
  sub_1BE048964();

  sub_1BE048A34();

  v30 = "Select default card";
  sub_1BE048A44();
  sub_1BE048A64();
  v32 = sub_1BE048994();
  v36 = v4 + 8;
  v37 = v3;
  v9 = v38;
  v38(v7, v3);
  sub_1BE048A14();
  v31 = sub_1BE048994();
  v9(v7, v3);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v30 = sub_1BE048994();
  v38(v7, v37);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v29 = sub_1BE048994();
  v10 = v37;
  v11 = v38;
  v38(v7, v37);
  sub_1BE048A14();
  v28 = sub_1BE048994();
  v11(v7, v10);
  sub_1BE048A14();
  v27 = sub_1BE048994();
  v11(v7, v10);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v26 = sub_1BE048994();
  v38(v7, v37);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v25 = sub_1BE048994();
  v13 = v37;
  v12 = v38;
  v38(v7, v37);
  sub_1BE048A14();
  v24 = sub_1BE048994();
  v12(v7, v13);
  sub_1BE048A54();
  sub_1BE048A44();
  swift_getKeyPath();
  sub_1BE048964();

  sub_1BE048A34();

  sub_1BE048A44();
  sub_1BE048A64();
  v14 = sub_1BE048994();
  v38(v7, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A500);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BE0BA770;
  v16 = v33;
  *(v15 + 32) = v34;
  *(v15 + 40) = v16;
  v17 = v31;
  *(v15 + 48) = v32;
  *(v15 + 56) = v17;
  v18 = v29;
  *(v15 + 64) = v30;
  *(v15 + 72) = v18;
  v19 = v27;
  *(v15 + 80) = v28;
  *(v15 + 88) = v19;
  v20 = v25;
  *(v15 + 96) = v26;
  *(v15 + 104) = v20;
  *(v15 + 112) = v24;
  *(v15 + 120) = v14;
  v21 = sub_1BE048984();

  return v21;
}

uint64_t sub_1BD15BEE4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_1BE048A04();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1BD030618();
  sub_1BE048964();

  a3(v9);
  sub_1BE0489F4();
  v10 = sub_1BE0489E4();
  (*(v5 + 8))(v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A4E8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BE0B69E0;
  *(v11 + 32) = v10;
  v12 = sub_1BE0489D4();

  return v12;
}

uint64_t sub_1BD15C05C()
{
  v16 = sub_1BE0489B4();
  v15 = sub_1BE0489B4();
  v14 = sub_1BE0489B4();
  v13 = sub_1BE0489B4();
  v12 = sub_1BE0489B4();
  v0 = sub_1BE0489B4();
  v1 = sub_1BE0489B4();
  v2 = sub_1BE0489B4();
  v3 = sub_1BE0489B4();
  v4 = sub_1BE0489B4();
  v5 = sub_1BE0489B4();
  v6 = sub_1BE0489B4();
  v7 = sub_1BE0489B4();
  v8 = sub_1BE0489B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BE0BA760;
  *(v9 + 32) = v16;
  *(v9 + 40) = v15;
  *(v9 + 48) = v14;
  *(v9 + 56) = v13;
  *(v9 + 64) = v12;
  *(v9 + 72) = v0;
  *(v9 + 80) = v1;
  *(v9 + 88) = v2;
  *(v9 + 96) = v3;
  *(v9 + 104) = v4;
  *(v9 + 112) = v5;
  *(v9 + 120) = v6;
  *(v9 + 128) = v7;
  *(v9 + 136) = v8;
  v10 = sub_1BE0489A4();

  return v10;
}

uint64_t sub_1BD15C2DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A4D8);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v13 - v3;
  sub_1BD15D2F0();
  sub_1BE048A14();
  v14 = sub_1BE048994();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_1BE048A14();
  v6 = sub_1BE048994();
  v5(v4, v0);
  sub_1BE048A14();
  v7 = sub_1BE048994();
  v5(v4, v0);
  sub_1BE048A14();
  v8 = sub_1BE048994();
  v5(v4, v0);
  sub_1BE048A14();
  v9 = sub_1BE048994();
  v5(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A4E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BE0BA730;
  *(v10 + 32) = v14;
  *(v10 + 40) = v6;
  *(v10 + 48) = v7;
  *(v10 + 56) = v8;
  *(v10 + 64) = v9;
  v11 = sub_1BE048984();

  return v11;
}

uint64_t sub_1BD15C5B4()
{
  v0 = sub_1BE0489B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BE0B69E0;
  *(v1 + 32) = v0;
  v2 = sub_1BE0489A4();

  return v2;
}

uint64_t sub_1BD15C640()
{
  v0 = sub_1BE048954();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD035EBC();
  sub_1BE048944();
  v5 = sub_1BE048934();
  (*(v1 + 8))(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A470);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BE0B69E0;
  *(v6 + 32) = v5;
  v7 = sub_1BE048924();

  return v7;
}

uint64_t sub_1BD15C790()
{
  v0 = sub_1BE048A94();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = sub_1BD0354E0();
  sub_1BD035EBC();
  sub_1BE048AA4();
  v29 = sub_1BE048A84();
  v5 = *(v1 + 8);
  v5(v4, v0);
  v30[0] = sub_1BDA95DEC();
  sub_1BD15CFA8();
  sub_1BE048AA4();
  v28 = sub_1BE048A84();
  v5(v4, v0);
  sub_1BD15CFFC();
  sub_1BE048AA4();
  v27 = sub_1BE048A84();
  v5(v4, v0);
  sub_1BD03548C();
  sub_1BE048AA4();
  v26 = sub_1BE048A84();
  v5(v4, v0);
  v30[0] = sub_1BD78DA0C();
  sub_1BD15D050();
  sub_1BE048AA4();
  v25 = sub_1BE048A84();
  v5(v4, v0);
  v30[0] = sub_1BD4DC4C4();
  sub_1BD15D0A4();
  sub_1BE048AA4();
  v24 = sub_1BE048A84();
  v5(v4, v0);
  v30[0] = sub_1BD036998();
  sub_1BD0373E4();
  sub_1BE048AA4();
  v23 = sub_1BE048A84();
  v5(v4, v0);
  sub_1BD86FB14(v30);
  sub_1BD15D0F8();
  sub_1BE048AA4();
  v22 = sub_1BE048A84();
  v5(v4, v0);
  sub_1BD8F2E80(v30);
  sub_1BD15D14C();
  sub_1BE048AA4();
  v21 = sub_1BE048A84();
  v5(v4, v0);
  sub_1BD15D1A0();
  sub_1BE048AA4();
  v20 = sub_1BE048A84();
  v5(v4, v0);
  sub_1BD15D1F4();
  sub_1BE048AA4();
  v6 = sub_1BE048A84();
  v5(v4, v0);
  sub_1BD0353D4();
  sub_1BE048AA4();
  v7 = sub_1BE048A84();
  v5(v4, v0);
  sub_1BD15D248();
  sub_1BE048AA4();
  v8 = sub_1BE048A84();
  v5(v4, v0);
  sub_1BD15D29C();
  sub_1BE048AA4();
  v9 = sub_1BE048A84();
  v5(v4, v0);
  v30[0] = sub_1BD035F7C();
  sub_1BD036728();
  sub_1BE048AA4();
  v10 = sub_1BE048A84();
  v5(v4, v0);
  sub_1BD15D2F0();
  sub_1BE048AA4();
  v11 = sub_1BE048A84();
  v5(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A4D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BE0BA780;
  v13 = v28;
  *(v12 + 32) = v29;
  *(v12 + 40) = v13;
  v14 = v26;
  *(v12 + 48) = v27;
  *(v12 + 56) = v14;
  v15 = v24;
  *(v12 + 64) = v25;
  *(v12 + 72) = v15;
  v16 = v22;
  *(v12 + 80) = v23;
  *(v12 + 88) = v16;
  v17 = v20;
  *(v12 + 96) = v21;
  *(v12 + 104) = v17;
  *(v12 + 112) = v6;
  *(v12 + 120) = v7;
  *(v12 + 128) = v8;
  *(v12 + 136) = v9;
  *(v12 + 144) = v10;
  *(v12 + 152) = v11;
  v18 = sub_1BE048A74();

  return v18;
}

unint64_t sub_1BD15CFA8()
{
  result = qword_1EBD3A478;
  if (!qword_1EBD3A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A478);
  }

  return result;
}

unint64_t sub_1BD15CFFC()
{
  result = qword_1EBD3A480;
  if (!qword_1EBD3A480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A480);
  }

  return result;
}

unint64_t sub_1BD15D050()
{
  result = qword_1EBD528B0;
  if (!qword_1EBD528B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD528B0);
  }

  return result;
}

unint64_t sub_1BD15D0A4()
{
  result = qword_1EBD3A490;
  if (!qword_1EBD3A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A490);
  }

  return result;
}

unint64_t sub_1BD15D0F8()
{
  result = qword_1EBD560A0;
  if (!qword_1EBD560A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD560A0);
  }

  return result;
}

unint64_t sub_1BD15D14C()
{
  result = qword_1EBD3A498;
  if (!qword_1EBD3A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A498);
  }

  return result;
}

unint64_t sub_1BD15D1A0()
{
  result = qword_1EBD3A4A0;
  if (!qword_1EBD3A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A4A0);
  }

  return result;
}

unint64_t sub_1BD15D1F4()
{
  result = qword_1EBD3A4A8;
  if (!qword_1EBD3A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A4A8);
  }

  return result;
}

unint64_t sub_1BD15D248()
{
  result = qword_1EBD3A4B8;
  if (!qword_1EBD3A4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A4B8);
  }

  return result;
}

unint64_t sub_1BD15D29C()
{
  result = qword_1EBD3A4C0;
  if (!qword_1EBD3A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A4C0);
  }

  return result;
}

unint64_t sub_1BD15D2F0()
{
  result = qword_1EBD3A4C8;
  if (!qword_1EBD3A4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A4C8);
  }

  return result;
}

unint64_t sub_1BD15D344()
{
  result = qword_1EBD3A578;
  if (!qword_1EBD3A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A578);
  }

  return result;
}

unint64_t sub_1BD15D398()
{
  result = qword_1EBD3A590;
  if (!qword_1EBD3A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A590);
  }

  return result;
}

unint64_t sub_1BD15D3EC()
{
  result = qword_1EBD3A5B8;
  if (!qword_1EBD3A5B8)
  {
    sub_1BE04AF64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A5B8);
  }

  return result;
}

unint64_t sub_1BD15D444()
{
  result = qword_1EBD3A5D0;
  if (!qword_1EBD3A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A5D0);
  }

  return result;
}

uint64_t keypath_get_2Tm@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE048874();
  *a1 = v3;
  return result;
}

uint64_t sub_1BD15D50C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD15D588()
{
  result = qword_1EBD3A5E8;
  if (!qword_1EBD3A5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A5E8);
  }

  return result;
}

uint64_t sub_1BD15D5DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1BE048C84();
    sub_1BE048964();

    return sub_1BE048964();
  }

  return result;
}

uint64_t sub_1BD15D62C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD15D69C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t keypath_setTm(_OWORD *a1)
{
  v1 = a1[1];
  v8[0] = *a1;
  v8[1] = v1;
  v2 = a1[3];
  v4 = *a1;
  v3 = a1[1];
  v8[2] = a1[2];
  v8[3] = v2;
  v7[4] = v4;
  v7[5] = v3;
  v5 = a1[3];
  v7[6] = a1[2];
  v7[7] = v5;
  sub_1BD0303B8(v8, v7);
  return sub_1BE048884();
}

id sub_1BD15D798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v64 = a6;
  v54 = a5;
  v65 = a4;
  v55 = a3;
  v53 = a2;
  v52 = a1;
  v63 = a7;
  v7 = sub_1BE04FFF4();
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v59 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A6A0);
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v10);
  v56 = &v51 - v11;
  v12 = sub_1BE051AD4();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v51 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v51 - v18;
  v20 = sub_1BE04BD74();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A6A8);
  MEMORY[0x1EEE9AC00](v62, v25);
  v27 = &v51 - v26;
  (*(v21 + 104))(v24, *MEMORY[0x1E69B8068], v20);
  result = PKPassKitBundle();
  if (result)
  {
    v29 = result;
    v30 = sub_1BE04B6F4();
    v32 = v31;

    (*(v21 + 8))(v24, v20);
    v33 = sub_1BD15E628(v52);
    v34 = v62;
    (*(v13 + 104))(v19, *MEMORY[0x1E697D710], v12);
    (*(v13 + 16))(v51, v19, v12);
    sub_1BE051694();
    (*(v13 + 8))(v19, v12);
    v35 = &v27[v34[9]];
    *v35 = v30;
    v35[1] = v32;
    v27[v34[10]] = v33;
    v36 = &v27[v34[11]];
    v37 = v55;
    *v36 = v53;
    *(v36 + 1) = v37;
    MEMORY[0x1EEE9AC00](v37, v38);
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A6B0);
    sub_1BD0DE4F4(&qword_1EBD3A6B8, &qword_1EBD3A6B0);
    v39 = v56;
    sub_1BE0504A4();
    v40 = v59;
    sub_1BE04FFE4();
    sub_1BD0DE4F4(&qword_1EBD3A6C0, &qword_1EBD3A6A0);
    v41 = v58;
    sub_1BE050E04();
    (*(v60 + 8))(v40, v61);
    (*(v57 + 8))(v39, v41);
    sub_1BE051CD4();
    sub_1BE04EE54();
    v42 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A6C8) + 36)];
    v43 = v71;
    *(v42 + 4) = v70;
    *(v42 + 5) = v43;
    *(v42 + 6) = v72;
    v44 = v67;
    *v42 = v66;
    *(v42 + 1) = v44;
    v45 = v69;
    *(v42 + 2) = v68;
    *(v42 + 3) = v45;
    v46 = sub_1BE051274();
    LOBYTE(v39) = sub_1BE0501D4();
    v47 = sub_1BE051CD4();
    v49 = v48;
    v50 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A6D0) + 36)];
    *v50 = v46;
    v50[8] = v39;
    *(v50 + 2) = v47;
    *(v50 + 3) = v49;
    sub_1BE052434();
    sub_1BD0DE4F4(&qword_1EBD3A6D8, &qword_1EBD3A6A8);
    sub_1BE050DE4();

    sub_1BD05065C(v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD15DE6C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = type metadata accessor for ContactEmailEditingSection();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v61 = (&v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A6E0);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v68 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v64 = &v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v61 - v18;
  v20 = type metadata accessor for ContactFormNameSection();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A6E8);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v65 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v61 - v30;
  if (a1[3])
  {
    v32 = sub_1BE04A704();
    (*(*(v32 - 8) + 56))(v19, 1, 1, v32);
    type metadata accessor for PersonName(0);
    v63 = v12;
    sub_1BD15E914(&qword_1EBD3A708, type metadata accessor for PersonName);
    sub_1BE048964();
    *v24 = sub_1BE04E954();
    *(v24 + 1) = v33;
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_1BE051694();
    v34 = v73;
    *(v24 + 1) = v72;
    *(v24 + 4) = v34;
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_1BE051694();
    v35 = v73;
    *(v24 + 40) = v72;
    *(v24 + 7) = v35;
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_1BE051694();
    v36 = v73;
    *(v24 + 4) = v72;
    *(v24 + 10) = v36;
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_1BE051694();
    v37 = v73;
    *(v24 + 88) = v72;
    *(v24 + 13) = v37;
    sub_1BD0DE19C(v19, v16, &unk_1EBD52A20);
    sub_1BE051694();
    sub_1BD0DE53C(v19, &unk_1EBD52A20);
    sub_1BD15E7C4(v24, v31, type metadata accessor for ContactFormNameSection);
    v38 = v31;
    (*(v21 + 56))(v31, 0, 1, v20);
  }

  else
  {
    v38 = &v61 - v30;
    (*(v21 + 56))(&v61 - v30, 1, 1, v20);
  }

  if (!a1[4])
  {
    v62 = 0;
    v63 = 0;
    v42 = 0;
    if (a1[5])
    {
      goto LABEL_6;
    }

LABEL_8:
    v52 = 1;
    v51 = v64;
    v49 = v67;
    goto LABEL_9;
  }

  v39 = a1[6];
  type metadata accessor for PhoneNumbers();
  sub_1BD15E914(&qword_1EBD3A700, type metadata accessor for PhoneNumbers);
  sub_1BE048964();
  v63 = v39;
  v40 = v39;
  v62 = sub_1BE04E954();
  v42 = v41;
  v43 = v40;
  sub_1BE048964();
  if (!a1[5])
  {
    goto LABEL_8;
  }

LABEL_6:
  v44 = a1[6];
  type metadata accessor for EmailAddresses();
  sub_1BD15E914(&qword_1EBD3A6F8, type metadata accessor for EmailAddresses);
  sub_1BE048964();
  v45 = v44;
  v46 = sub_1BE04E954();
  v47 = v61;
  *v61 = v46;
  *(v47 + 8) = v48;
  *(v47 + 16) = v44;
  v49 = v67;
  v50 = *(v67 + 24);
  *(v47 + v50) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  swift_storeEnumTagMultiPayload();
  v51 = v64;
  sub_1BD15E7C4(v47, v64, type metadata accessor for ContactEmailEditingSection);
  v52 = 0;
LABEL_9:
  (*(v66 + 56))(v51, v52, 1, v49);
  v53 = v65;
  sub_1BD0DE19C(v38, v65, &qword_1EBD3A6E8);
  v54 = v68;
  sub_1BD0DE19C(v51, v68, &qword_1EBD3A6E0);
  v55 = v69;
  sub_1BD0DE19C(v53, v69, &qword_1EBD3A6E8);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A6F0);
  v57 = (v55 + *(v56 + 48));
  v59 = v62;
  v58 = v63;
  *v57 = v62;
  v57[1] = v42;
  v57[2] = v58;
  sub_1BD0DE19C(v54, v55 + *(v56 + 64), &qword_1EBD3A6E0);
  sub_1BD15E740(v59, v42, v58);
  sub_1BD15E780(v59, v42, v58);
  sub_1BD0DE53C(v51, &qword_1EBD3A6E0);
  sub_1BD0DE53C(v38, &qword_1EBD3A6E8);
  sub_1BD0DE53C(v54, &qword_1EBD3A6E0);
  sub_1BD15E780(v59, v42, v58);
  return sub_1BD0DE53C(v53, &qword_1EBD3A6E8);
}

id sub_1BD15E5BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_1BE048964();
  sub_1BE048964();

  return sub_1BD15D798(v3, v4, v5, v3, v4, v5, a1);
}

BOOL sub_1BD15E628(uint64_t a1)
{
  result = 1;
  if (!*(a1 + 40) || (swift_getKeyPath(), swift_getKeyPath(), sub_1BE048964(), sub_1BE04D8B4(), , , , v2 = *(v5 + 16), , !v2))
  {
    if (!*(a1 + 32))
    {
      return 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4();

    v3 = *(v5 + 16);

    if (!v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BD15E740(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v3 = a3;

    return sub_1BE048964();
  }

  return result;
}

void sub_1BD15E780(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_1BD15E7C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD15E82C()
{
  result = qword_1EBD3A710;
  if (!qword_1EBD3A710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A718);
    sub_1BD0DE4F4(&qword_1EBD3A6D8, &qword_1EBD3A6A8);
    sub_1BD15E914(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A710);
  }

  return result;
}

uint64_t sub_1BD15E914(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s15PaymentDateInfoVMa()
{
  result = qword_1EBD3A728;
  if (!qword_1EBD3A728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD15E9D0()
{
  sub_1BD15EAC0(319, &qword_1EBD36A40, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_1BD15EAC0(319, &qword_1EBD3A738, MEMORY[0x1E6969BC0]);
    if (v1 <= 0x3F)
    {
      sub_1BD15EAC0(319, &qword_1EBD3A740, type metadata accessor for PKAccountPaymentFrequency);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD15EAC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BD15EB14()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v1 = sub_1BE052404();
  [v0 setDateFormat_];

  qword_1EBD3A720 = v0;
}

uint64_t sub_1BD15EB90()
{
  v1 = (v0 + *(_s15PaymentDateInfoVMa() + 24));
  if (v1[1])
  {
    return 0;
  }

  v2 = *v1;
  if ((v2 - 4) >= 4 && v2 != 2)
  {
    return 0;
  }

  v3 = sub_1BE052404();
  v4 = PKLocalizedFeatureString();

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1BE052434();

  return v5;
}

uint64_t sub_1BD15EC7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v31 - v3;
  v5 = sub_1BE04B3B4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v31 - v12;
  v14 = sub_1BE04AF64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _s15PaymentDateInfoVMa();
  v20 = v0 + *(v19 + 24);
  if (*(v20 + 8))
  {
    return 0;
  }

  v22 = v19;
  result = 0;
  v23 = *v20;
  if (v23 <= 4)
  {
    if (v23 == 2)
    {
      sub_1BD0DE19C(v0, v13, &unk_1EBD39970);
      if ((*(v15 + 48))(v13, 1, v14) == 1)
      {
        sub_1BD0DE53C(v13, &unk_1EBD39970);
      }

      else
      {
        (*(v15 + 32))(v18, v13, v14);
        sub_1BD0DE19C(v0 + *(v22 + 20), v4, &unk_1EBD3D260);
        if ((*(v6 + 48))(v4, 1, v5) != 1)
        {
          (*(v6 + 32))(v9, v4, v5);
          if (qword_1EBD36B20 != -1)
          {
            swift_once();
          }

          v27 = qword_1EBD3A720;
          v28 = sub_1BE04B374();
          [v27 setTimeZone_];

          v29 = sub_1BE04AE64();
          v30 = [v27 stringFromDate_];

          v26 = sub_1BE052434();
          (*(v6 + 8))(v9, v5);
          (*(v15 + 8))(v18, v14);
          return v26;
        }

        (*(v15 + 8))(v18, v14);
        sub_1BD0DE53C(v4, &unk_1EBD3D260);
      }

      return 0;
    }

    if (v23 != 4)
    {
      return result;
    }

LABEL_10:
    v24 = sub_1BE052404();
    v25 = PKLocalizedFeatureString();

    if (v25)
    {
      v26 = sub_1BE052434();

      return v26;
    }

    return 0;
  }

  if (v23 == 5 || v23 == 6 || v23 == 7)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1BD15F194()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v32 - v4;
  v6 = sub_1BE04B3B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v35 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v32 - v12;
  v14 = sub_1BE04AF64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(v1, v13, &unk_1EBD39970);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1BD0DE53C(v13, &unk_1EBD39970);
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    v19 = _s15PaymentDateInfoVMa();
    sub_1BD0DE19C(v1 + *(v19 + 20), v5, &unk_1EBD3D260);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      (*(v15 + 8))(v18, v14);
      sub_1BD0DE53C(v5, &unk_1EBD3D260);
    }

    else
    {
      (*(v7 + 32))(v35, v5, v6);
      if (qword_1EBD36B20 != -1)
      {
        swift_once();
      }

      v20 = qword_1EBD3A720;
      v21 = sub_1BE04B374();
      [v20 setTimeZone_];

      v22 = sub_1BE04AE64();
      v23 = [v20 stringFromDate_];

      v34 = sub_1BE052434();
      v25 = v24;

      v26 = sub_1BE052404();
      v27 = PKLocalizedFeatureString();

      if (v27)
      {
        v33 = sub_1BE052434();
      }

      else
      {
        v33 = 0;
      }

      v28 = v1 + *(v19 + 24);
      if ((*(v28 + 8) & 1) == 0 && (*v28 - 4) <= 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1BE0B69E0;
        *(v29 + 56) = MEMORY[0x1E69E6158];
        *(v29 + 64) = sub_1BD110550();
        *(v29 + 32) = v34;
        *(v29 + 40) = v25;
        v30 = sub_1BE052454();

        (*(v7 + 8))(v35, v6);
        (*(v15 + 8))(v18, v14);
        return v30;
      }

      (*(v7 + 8))(v35, v6);
      (*(v15 + 8))(v18, v14);
    }
  }

  return 0;
}

uint64_t sub_1BD15F6A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v30 - v10;
  v12 = _s15PaymentDateInfoVMa();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 itemForType_])
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34[0] = v32;
  v34[1] = v33;
  if (*(&v33 + 1))
  {
    sub_1BD1600E4();
    if (swift_dynamicCast())
    {
      v17 = v31;
      v18 = [v31 paymentDate];
      if (v18)
      {
        v19 = v18;
        sub_1BE04AEE4();

        v20 = 0;
      }

      else
      {
        v20 = 1;
      }

      v22 = sub_1BE04AF64();
      v23 = 1;
      (*(*(v22 - 8) + 56))(v11, v20, 1, v22);
      sub_1BD0DE204(v11, v16, &unk_1EBD39970);
      v24 = [v17 paymentTimeZone];
      if (v24)
      {
        v25 = v24;
        sub_1BE04B394();

        v23 = 0;
      }

      v26 = sub_1BE04B3B4();
      (*(*(v26 - 8) + 56))(v7, v23, 1, v26);
      sub_1BD0DE204(v7, &v16[*(v12 + 20)], &unk_1EBD3D260);
      v27 = [v17 paymentFrequency];

      v28 = &v16[*(v12 + 24)];
      *v28 = v27;
      v28[8] = 0;
      sub_1BD160130(v16, a2);
      v21 = 0;
    }

    else
    {

      v21 = 1;
    }
  }

  else
  {

    sub_1BD0DE53C(v34, &qword_1EBD3EC90);
    v21 = 1;
  }

  return (*(v13 + 56))(a2, v21, 1, v12);
}

BOOL sub_1BD15FA30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04B3B4();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v53 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v54 = &v53 - v9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A748);
  MEMORY[0x1EEE9AC00](v55, v10);
  v56 = &v53 - v11;
  v12 = sub_1BE04AF64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v53 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A750);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v53 - v23;
  v26 = *(v25 + 56);
  v59 = a1;
  sub_1BD0DE19C(a1, &v53 - v23, &unk_1EBD39970);
  v60 = a2;
  sub_1BD0DE19C(a2, &v24[v26], &unk_1EBD39970);
  v27 = *(v13 + 48);
  if (v27(v24, 1, v12) == 1)
  {
    if (v27(&v24[v26], 1, v12) == 1)
    {
      sub_1BD0DE53C(v24, &unk_1EBD39970);
      goto LABEL_8;
    }

LABEL_6:
    v28 = &qword_1EBD3A750;
    v29 = v24;
LABEL_14:
    sub_1BD0DE53C(v29, v28);
    return 0;
  }

  sub_1BD0DE19C(v24, v20, &unk_1EBD39970);
  if (v27(&v24[v26], 1, v12) == 1)
  {
    (*(v13 + 8))(v20, v12);
    goto LABEL_6;
  }

  (*(v13 + 32))(v16, &v24[v26], v12);
  sub_1BD16009C(&qword_1EBD3E460, MEMORY[0x1E6969530]);
  v30 = sub_1BE052334();
  v31 = *(v13 + 8);
  v31(v16, v12);
  v31(v20, v12);
  sub_1BD0DE53C(v24, &unk_1EBD39970);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v32 = _s15PaymentDateInfoVMa();
  v33 = *(v32 + 20);
  v34 = v56;
  v35 = *(v55 + 48);
  v36 = v59;
  sub_1BD0DE19C(v59 + v33, v56, &unk_1EBD3D260);
  v37 = v60 + v33;
  v38 = v60;
  sub_1BD0DE19C(v37, v34 + v35, &unk_1EBD3D260);
  v40 = v57;
  v39 = v58;
  v41 = *(v57 + 48);
  if (v41(v34, 1, v58) == 1)
  {
    if (v41(v34 + v35, 1, v39) == 1)
    {
      sub_1BD0DE53C(v34, &unk_1EBD3D260);
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v42 = v54;
  sub_1BD0DE19C(v34, v54, &unk_1EBD3D260);
  if (v41(v34 + v35, 1, v39) == 1)
  {
    (*(v40 + 8))(v42, v39);
LABEL_13:
    v28 = &qword_1EBD3A748;
    v29 = v34;
    goto LABEL_14;
  }

  v44 = v34 + v35;
  v45 = v53;
  (*(v40 + 32))(v53, v44, v39);
  sub_1BD16009C(&qword_1EBD3A758, MEMORY[0x1E6969BC0]);
  v46 = sub_1BE052334();
  v47 = *(v40 + 8);
  v47(v45, v39);
  v47(v42, v39);
  sub_1BD0DE53C(v34, &unk_1EBD3D260);
  if ((v46 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v48 = *(v32 + 24);
  v49 = (v36 + v48);
  v50 = *(v36 + v48 + 8);
  v51 = (v38 + v48);
  v52 = *(v38 + v48 + 8);
  if ((v50 & 1) == 0)
  {
    if (*v49 != *v51)
    {
      v52 = 1;
    }

    return (v52 & 1) == 0;
  }

  return (v52 & 1) != 0;
}

uint64_t sub_1BD16009C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD1600E4()
{
  result = qword_1EBD3A760;
  if (!qword_1EBD3A760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3A760);
  }

  return result;
}

uint64_t sub_1BD160130(uint64_t a1, uint64_t a2)
{
  v4 = _s15PaymentDateInfoVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1BD160194(uint64_t a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI31PaymentSetupProductTypeFlowItem_viewController] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI31PaymentSetupProductTypeFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI31PaymentSetupProductTypeFlowItem_identifier];
  *v8 = 0xD000000000000013;
  v8[1] = 0x80000001BE11ACF0;
  *&v3[OBJC_IVAR____TtC9PassKitUI31PaymentSetupProductTypeFlowItem_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI31PaymentSetupProductTypeFlowItem_product] = a2;
  v3[OBJC_IVAR____TtC9PassKitUI31PaymentSetupProductTypeFlowItem_showOtherProviders] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1BD160338(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04BAC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04BBD4();
  sub_1BE04BC34();
  v12 = sub_1BE04B9A4();
  (*(v7 + 8))(v10, v6);
  v13 = [objc_allocWithZone(PKPaymentSetupChooseProductTypeViewController) initWithProvisioningController:v11 context:v12 setupDelegate:0 product:*(v3 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupProductTypeFlowItem_product)];

  v14 = *(v3 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupProductTypeFlowItem_viewController);
  *(v3 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupProductTypeFlowItem_viewController) = v13;
  v15 = v13;

  if (v15)
  {
    [v15 setFlowDelegate_];
    sub_1BE052434();
    v16 = sub_1BE04BB74();

    [v15 setReporter_];

    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD976224;
    aBlock[3] = &block_descriptor_10;
    v17 = _Block_copy(aBlock);
    sub_1BE048964();

    [v15 preflightWithCompletion_];
    _Block_release(v17);
  }

  else
  {
    a1(0);
  }
}

uint64_t sub_1BD160590()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupProductTypeFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD1605CC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupProductTypeFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD16061C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupProductTypeFlowItem_viewController);
  v2 = v1;
  return v1;
}

void sub_1BD1606AC(void *a1, void *a2)
{
  v4 = [a1 purchaseController];
  v5 = [v4 acceptedTerms];

  v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupProductTypeFlowItem_context);
  v7 = *(v2 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupProductTypeFlowItem_product);
  v8 = type metadata accessor for ProvisioningCredentialFlowSection();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = &v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_identifier];
  *v10 = 0x100000000000001ALL;
  v10[1] = 0x80000001BE1199C0;
  v11 = OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_dismissalConfiguration;
  v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_dismissalConfiguration] = 2;
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_provisionedPasses] = 0;
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context] = v6;
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_credential] = a2;
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_product] = v7;
  v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_allowManualEntry] = 0;
  v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_previouslyAcceptedTerms] = v5;
  v9[v11] = 1;
  v18.receiver = v9;
  v18.super_class = v8;
  v12 = v7;
  sub_1BE048964();
  v13 = a2;
  v14 = objc_msgSendSuper2(&v18, sel_init);
  v15 = v2 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupProductTypeFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v2, &off_1F3B93C18, v14, &off_1F3BCBBE8, ObjectType, v16);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

unint64_t sub_1BD160A1C()
{
  result = qword_1EBD3A808;
  if (!qword_1EBD3A808)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3A808);
  }

  return result;
}

void sub_1BD160A68()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupProductTypeFlowItem_context);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupProductTypeFlowItem_product);
  v4 = objc_allocWithZone(type metadata accessor for PaymentSetupPurchaseProductFlowItem());
  sub_1BE048964();
  v8 = sub_1BD7F6138(v2, v3);
  v5 = v1 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupProductTypeFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v1, &off_1F3B93C18, v8, &off_1F3BBD7D0, ObjectType, v6);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1BD160B6C(unint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupProductTypeFlowItem_context);
  v5 = *(v2 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupProductTypeFlowItem_product);
  v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupProductTypeFlowItem_showOtherProviders);
  type metadata accessor for PaymentSetupServiceProviderProductsFlowSection();
  swift_allocObject();
  sub_1BE048964();
  v7 = v5;
  sub_1BE048C84();
  v8 = sub_1BD59AB30(v4, v7, a1, v6);

  v9 = v2 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupProductTypeFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v2, &off_1F3B93C18, v8, &off_1F3B98C00, ObjectType, v10);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t type metadata accessor for PaymentTotalAmountItem()
{
  result = qword_1EBD3A810;
  if (!qword_1EBD3A810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD160D1C()
{
  _s11TotalAmountVMa(319);
  if (v0 <= 0x3F)
  {
    sub_1BD127BD0(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1BD0FA9D0();
      if (v2 <= 0x3F)
      {
        sub_1BD127BD0(319, &unk_1EBD59650, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1BD160E34@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v55 = sub_1BE04FF64();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v2);
  v52 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PaymentTotalAmountDetails();
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A820);
  MEMORY[0x1EEE9AC00](v51, v9);
  v11 = &v48 - v10;
  sub_1BD161254(v1, v8);
  v12 = type metadata accessor for PaymentTotalAmountItem();
  v13 = (v1 + v12[5]);
  v14 = v13[1];
  v49 = *v13;
  *&v50 = v1;
  v15 = (v1 + v12[7]);
  v17 = v15[1];
  v58 = *v15;
  v16 = v58;
  v59 = v17;
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59830);
  sub_1BE0516C4();
  v18 = v56;
  v19 = v57;
  v20 = v5[9];
  *&v8[v20] = sub_1BE0502B4();
  v21 = &v8[v5[10]];
  v22 = sub_1BE051234();
  v23 = MEMORY[0x1E6981568];
  v21[3] = MEMORY[0x1E69815C0];
  v21[4] = v23;
  *v21 = v22;
  v24 = &v8[v5[7]];
  v25 = v50;
  *v24 = v49;
  *(v24 + 1) = v14;
  v26 = &v8[v5[8]];
  *v26 = v18;
  *(v26 + 2) = v19;
  v27 = (v25 + v12[6]);
  v28 = *v27;
  v29 = v27[1];
  v58 = v16;
  v59 = v17;
  sub_1BD0D44B8(v28);
  sub_1BE0516C4();
  v50 = v56;
  v30 = v57;
  KeyPath = swift_getKeyPath();
  v32 = swift_getKeyPath();
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  *(v11 + 2) = KeyPath;
  v11[24] = 0;
  *(v11 + 4) = v32;
  v11[40] = 0;
  LOBYTE(v58) = 0;
  sub_1BE051694();
  v33 = *(&v56 + 1);
  v11[48] = v56;
  *(v11 + 7) = v33;
  v34 = v51;
  sub_1BD1612B8(v8, &v11[*(v51 + 48)]);
  v35 = &v11[v34[13]];
  *v35 = v28;
  v35[1] = v29;
  v36 = &v11[v34[14]];
  *v36 = v50;
  *(v36 + 2) = v30;
  v37 = v34[15];
  LOBYTE(KeyPath) = sub_1BE051C54();
  v38 = sub_1BE04C894();
  v39 = MEMORY[0x1E69BCA08];
  if ((KeyPath & 1) == 0)
  {
    v39 = MEMORY[0x1E69BCA00];
  }

  (*(*(v38 - 8) + 104))(&v11[v37], *v39, v38);
  v40 = &v11[v34[16]];
  sub_1BE04C7E4();
  v42 = v41;
  v43 = *(sub_1BE04EDE4() + 20);
  v44 = *MEMORY[0x1E697F468];
  v45 = sub_1BE04F684();
  (*(*(v45 - 8) + 104))(&v40[v43], v44, v45);
  *v40 = v42;
  *(v40 + 1) = v42;
  v46 = v52;
  sub_1BE04FF44();
  sub_1BD16131C();
  sub_1BE050D14();
  (*(v53 + 8))(v46, v55);
  return sub_1BD161380(v11);
}

uint64_t sub_1BD161254(uint64_t a1, uint64_t a2)
{
  v4 = _s11TotalAmountVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1612B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentTotalAmountDetails();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD16131C()
{
  result = qword_1EBD3A828;
  if (!qword_1EBD3A828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A828);
  }

  return result;
}

uint64_t sub_1BD161380(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD161414(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v42 = a1;
  v2 = sub_1BE04F434();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A830);
  v38 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A838);
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A840);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v37 = &v35 - v17;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A848);
  MEMORY[0x1EEE9AC00](v35, v18);
  v36 = &v35 - v19;
  v43 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A850);
  sub_1BD162278();
  sub_1BE04E934();
  v20 = sub_1BE052404();
  v21 = PKLocalizedBankConnectString(v20);

  if (v21)
  {
    v22 = sub_1BE052434();
    v24 = v23;

    v44 = v22;
    v45 = v24;
    (*(v3 + 104))(v6, *MEMORY[0x1E697C428], v2);
    v25 = sub_1BD0DE4F4(&qword_1EBD3A8F0, &qword_1EBD3A830);
    v26 = sub_1BD0DDEBC();
    v27 = MEMORY[0x1E69E6158];
    sub_1BE050C94();
    (*(v3 + 8))(v6, v2);

    (*(v38 + 8))(v10, v7);
    v44 = v7;
    v45 = v27;
    v46 = v25;
    v47 = v26;
    swift_getOpaqueTypeConformance2();
    v28 = v37;
    v29 = v40;
    sub_1BE050DE4();
    (*(v39 + 8))(v14, v29);
    v30 = swift_allocObject();
    *(v30 + 16) = v42;
    v31 = v36;
    sub_1BD0DE204(v28, v36, &qword_1EBD3A840);
    v32 = (v31 + *(v35 + 36));
    *v32 = sub_1BD162660;
    v32[1] = v30;
    v32[2] = 0;
    v32[3] = 0;
    sub_1BD0DE204(v31, v41, &qword_1EBD3A848);
    v33 = v42;

    v34 = v33;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD1618F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A8C8);
  MEMORY[0x1EEE9AC00](v36, v4);
  v35 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A8F8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A900);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v33 - v12;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A868);
  MEMORY[0x1EEE9AC00](v37, v14);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A878);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v33 - v19;
  v21 = [a1 accountType];
  v38 = v6;
  v39 = a2;
  if (v21 == 1)
  {
    v34 = &v33;
    MEMORY[0x1EEE9AC00](1, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A908);
    sub_1BD0DE4F4(&qword_1EBD3A910, &qword_1EBD3A908);
    v23 = v35;
    sub_1BE0504E4();
    KeyPath = swift_getKeyPath();
    v25 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A8D8) + 36);
    *v25 = KeyPath;
    *(v25 + 8) = 0;
    *(v25 + 16) = 0;
    v26 = swift_getKeyPath();
    v27 = (v23 + *(v36 + 36));
    *v27 = v26;
    v27[1] = 0;
    sub_1BD0DE19C(v23, v13, &qword_1EBD3A8C8);
    swift_storeEnumTagMultiPayload();
    sub_1BD1623E8(&qword_1EBD3A870, &qword_1EBD3A878, &unk_1BE0BB030, sub_1BD162498);
    sub_1BD1623E8(&qword_1EBD3A8C0, &qword_1EBD3A8C8, &unk_1BE0BB058, sub_1BD16257C);
    sub_1BE04F9A4();
    sub_1BD0DE19C(v16, v9, &qword_1EBD3A868);
    swift_storeEnumTagMultiPayload();
    sub_1BD162304();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v16, &qword_1EBD3A868);
    return sub_1BD0DE53C(v23, &qword_1EBD3A8C8);
  }

  else
  {
    v34 = v13;
    v35 = v9;
    if (v21)
    {
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_1BE053834();
      MEMORY[0x1BFB3F610](0xD00000000000001BLL, 0x80000001BE11ADE0);
      v40 = [a1 accountType];
      type metadata accessor for FKAccountType(0);
      sub_1BE053974();
      result = sub_1BE053994();
      __break(1u);
    }

    else
    {
      MEMORY[0x1EEE9AC00](0, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A918);
      sub_1BD0DE4F4(&qword_1EBD3A920, &qword_1EBD3A918);
      sub_1BE0504E4();
      v29 = swift_getKeyPath();
      v30 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A888) + 36)];
      *v30 = v29;
      *(v30 + 1) = 0;
      v30[16] = 0;
      v31 = swift_getKeyPath();
      v32 = &v20[*(v17 + 36)];
      *v32 = v31;
      v32[1] = 0;
      sub_1BD0DE19C(v20, v34, &qword_1EBD3A878);
      swift_storeEnumTagMultiPayload();
      sub_1BD1623E8(&qword_1EBD3A870, &qword_1EBD3A878, &unk_1BE0BB030, sub_1BD162498);
      sub_1BD1623E8(&qword_1EBD3A8C0, &qword_1EBD3A8C8, &unk_1BE0BB058, sub_1BD16257C);
      sub_1BE04F9A4();
      sub_1BD0DE19C(v16, v35, &qword_1EBD3A868);
      swift_storeEnumTagMultiPayload();
      sub_1BD162304();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v16, &qword_1EBD3A868);
      return sub_1BD0DE53C(v20, &qword_1EBD3A878);
    }
  }

  return result;
}

void sub_1BD162000(void *a1)
{
  v2 = *MEMORY[0x1E69BB6F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98E0;
  v4 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v5 = sub_1BE052434();
  v6 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v5;
  *(inited + 48) = v7;
  v8 = *v6;
  *(inited + 56) = *v6;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v9;
  v10 = *MEMORY[0x1E69BACC8];
  *(inited + 80) = *MEMORY[0x1E69BACC8];
  v11 = v4;
  v12 = v8;
  v13 = v10;
  v14 = [a1 payAction];
  if (v14 && (_Block_release(v14), [a1 accountType] == 1))
  {
    v15 = 0xE400000000000000;
    v16 = 1702195828;
  }

  else
  {
    v15 = 0xE500000000000000;
    v16 = 0x65736C6166;
  }

  *(inited + 88) = v16;
  *(inited + 96) = v15;
  v17 = *MEMORY[0x1E69BA2C0];
  *(inited + 104) = *MEMORY[0x1E69BA2C0];
  v18 = v17;
  v19 = [a1 payAction];
  if (v19 && (_Block_release(v19), ![a1 accountType]))
  {
    v20 = 0xE400000000000000;
    v21 = 1702195828;
  }

  else
  {
    v20 = 0xE500000000000000;
    v21 = 0x65736C6166;
  }

  v22 = objc_opt_self();
  *(inited + 112) = v21;
  *(inited + 120) = v20;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1673D0(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v23 = sub_1BE052224();

  [v22 subject:v2 sendEvent:v23];
}

unint64_t sub_1BD162278()
{
  result = qword_1EBD3A858;
  if (!qword_1EBD3A858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A850);
    sub_1BD162304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A858);
  }

  return result;
}

unint64_t sub_1BD162304()
{
  result = qword_1EBD3A860;
  if (!qword_1EBD3A860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A868);
    sub_1BD1623E8(&qword_1EBD3A870, &qword_1EBD3A878, &unk_1BE0BB030, sub_1BD162498);
    sub_1BD1623E8(&qword_1EBD3A8C0, &qword_1EBD3A8C8, &unk_1BE0BB058, sub_1BD16257C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A860);
  }

  return result;
}

uint64_t sub_1BD1623E8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BD0DE4F4(&qword_1EBD3A8B0, &qword_1EBD3A8B8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD162498()
{
  result = qword_1EBD3A880;
  if (!qword_1EBD3A880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A888);
    sub_1BD0DE4F4(&qword_1EBD3A890, &qword_1EBD3A898);
    sub_1BD0DE4F4(&qword_1EBD3A8A0, &qword_1EBD3A8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A880);
  }

  return result;
}

unint64_t sub_1BD16257C()
{
  result = qword_1EBD3A8D0;
  if (!qword_1EBD3A8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A8D8);
    sub_1BD0DE4F4(&qword_1EBD3A8E0, &qword_1EBD3A8E8);
    sub_1BD0DE4F4(&qword_1EBD3A8A0, &qword_1EBD3A8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A8D0);
  }

  return result;
}

id sub_1BD162668@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v95 = a4;
  v96 = a3;
  v92 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A9E0);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v100 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v99 = &v89 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v101 = &v89 - v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v102 = &v89 - v16;
  v97 = a1;
  v17 = [a1 balanceTitle];
  v18 = sub_1BE052434();
  v20 = v19;

  *&v120[0] = v18;
  *(&v120[0] + 1) = v20;
  v98 = sub_1BD0DDEBC();
  v21 = sub_1BE0506C4();
  v23 = v22;
  v25 = v24;
  result = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC40]);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1BE050484();
  v27 = sub_1BE0505F4();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_1BD0DDF10(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath();
  v122 = v31 & 1;
  v121 = 1;
  v35 = sub_1BE051494();
  v36 = swift_getKeyPath();
  *&v115 = v27;
  *(&v115 + 1) = v29;
  LOBYTE(v116) = v31 & 1;
  *(&v116 + 1) = v33;
  *&v117 = KeyPath;
  *(&v117 + 1) = 0x3FC999999999999ALL;
  *&v118 = 0;
  WORD4(v118) = 1;
  *&v119 = v36;
  *(&v119 + 1) = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A9E8);
  v93 = sub_1BD166EA8();
  v94 = v37;
  sub_1BE050DE4();
  v120[2] = v117;
  v120[3] = v118;
  v120[4] = v119;
  v120[0] = v115;
  v120[1] = v116;
  sub_1BD0DE53C(v120, &qword_1EBD3A9E8);
  v38 = [v97 displayedBalance];
  v39 = sub_1BE052434();
  v41 = v40;

  *&v115 = v39;
  *(&v115 + 1) = v41;
  v42 = sub_1BE0506C4();
  v44 = v43;
  v46 = v45;
  v47 = *MEMORY[0x1E69DB8D8];
  v48 = *MEMORY[0x1E69DDDB8];
  v49 = *MEMORY[0x1E69DB958];
  v97 = *MEMORY[0x1E69DDC38];
  result = PKFontForDesign(v47, v48, v97, 2, 0, v49);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1BE050484();
  v50 = sub_1BE0505F4();
  v52 = v51;
  v54 = v53;
  v56 = v55;

  sub_1BD0DDF10(v42, v44, v46 & 1);

  v57 = swift_getKeyPath();
  v114 = v54 & 1;
  v113 = 1;
  v58 = sub_1BE051464();
  v59 = swift_getKeyPath();
  *&v108 = v50;
  *(&v108 + 1) = v52;
  LOBYTE(v109) = v54 & 1;
  *(&v109 + 1) = v56;
  *&v110 = v57;
  *(&v110 + 1) = 0x3FC999999999999ALL;
  *&v111 = 0;
  WORD4(v111) = 1;
  *&v112 = v59;
  *(&v112 + 1) = v58;
  sub_1BE050DE4();
  v117 = v110;
  v118 = v111;
  v119 = v112;
  v115 = v108;
  v116 = v109;
  sub_1BD0DE53C(&v115, &qword_1EBD3A9E8);
  if (!v96)
  {
    v97 = 0;
    v98 = 0;
    v92 = 0;
    v93 = 0;
    v96 = 0;
    v72 = 0;
    v71 = 0;
    v94 = 0;
    v70 = 0;
    goto LABEL_7;
  }

  *&v108 = v92;
  *(&v108 + 1) = v96;
  sub_1BE048C84();
  v60 = sub_1BE0506C4();
  v62 = v61;
  v64 = v63;
  result = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], v97, 0x8000, 0, *MEMORY[0x1E69DB978]);
  if (result)
  {
    sub_1BE050484();
    v65 = sub_1BE0505F4();
    v97 = v66;
    v98 = v65;
    v92 = v67;
    v69 = v68;

    sub_1BD0DDF10(v60, v62, v64 & 1);

    v96 = swift_getKeyPath();
    LOBYTE(v108) = v69 & 1;
    LOBYTE(v103) = 1;
    v70 = v69 & 1;
    v94 = 1;
    v93 = sub_1BE051494();
    v71 = swift_getKeyPath();
    v72 = 0x3FC999999999999ALL;
LABEL_7:
    v90 = v70;
    v91 = v72;
    v73 = v99;
    sub_1BD0DE19C(v102, v99, &qword_1EBD3A9E0);
    v74 = v100;
    sub_1BD0DE19C(v101, v100, &qword_1EBD3A9E0);
    v75 = v73;
    v76 = v95;
    sub_1BD0DE19C(v75, v95, &qword_1EBD3A9E0);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AA10);
    sub_1BD0DE19C(v74, v76 + *(v77 + 48), &qword_1EBD3A9E0);
    v78 = (v76 + *(v77 + 64));
    v79 = v97;
    v80 = v98;
    v81 = v92;
    *&v103 = v98;
    *(&v103 + 1) = v92;
    *&v104 = v70;
    *(&v104 + 1) = v97;
    v82 = v96;
    *&v105 = v96;
    *(&v105 + 1) = v72;
    v83 = v93;
    v84 = v94;
    *&v106 = 0;
    *(&v106 + 1) = v94;
    v85 = v71;
    *&v107 = v71;
    *(&v107 + 1) = v93;
    v86 = v106;
    v78[2] = v105;
    v78[3] = v86;
    v87 = v104;
    *v78 = v103;
    v78[1] = v87;
    v78[4] = v107;
    v88 = v81;
    sub_1BD0DE19C(&v103, &v108, &qword_1EBD3AA18);
    sub_1BD0DE53C(v101, &qword_1EBD3A9E0);
    sub_1BD0DE53C(v102, &qword_1EBD3A9E0);
    *&v108 = v80;
    *(&v108 + 1) = v88;
    *&v109 = v90;
    *(&v109 + 1) = v79;
    *&v110 = v82;
    *(&v110 + 1) = v91;
    *&v111 = 0;
    *(&v111 + 1) = v84;
    *&v112 = v85;
    *(&v112 + 1) = v83;
    sub_1BD0DE53C(&v108, &qword_1EBD3AA18);
    sub_1BD0DE53C(v100, &qword_1EBD3A9E0);
    return sub_1BD0DE53C(v99, &qword_1EBD3A9E0);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1BD162D74@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v86 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A928);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v85 = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v87 = v79 - v8;
  v9 = sub_1BE04AF64();
  v80 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v79 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A930);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v82 = v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = v79 - v22;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A938);
  v84 = *(v81 - 8);
  v25 = MEMORY[0x1EEE9AC00](v81, v24);
  v83 = v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = v79 - v28;
  v89 = a1;
  v94 = 0;
  v95 = 0;
  sub_1BD163680(a1, &v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A948);
  v77 = sub_1BD0DE4F4(&qword_1EBD3A950, &qword_1EBD3A940);
  v78 = sub_1BD166E04();
  v88 = v29;
  sub_1BE051A34();
  if (![a1 accountType] && (v52 = v80, (v53 = objc_msgSend(a1, sel_bookedBalance)) != 0) && (v53, (v54 = objc_msgSend(a1, sel_availableBalance)) != 0) && (v54, (v55 = objc_msgSend(a1, sel_bookedBalance)) != 0))
  {
    v56 = v55;
    v57 = sub_1BE052434();
    v59 = v58;

    v79[1] = v79;
    MEMORY[0x1EEE9AC00](v60, v61);
    v79[0] = &v79[-6];
    v79[-4] = a1;
    v79[-3] = v57;
    v79[2] = v59;
    v77 = v59;
    v62 = [a1 asOfDate];
    if (v62)
    {
      v63 = v62;
      sub_1BE04AEE4();

      v64 = v9;
      (*(v52 + 32))(v16, v13, v9);
      v65 = [objc_allocWithZone(type metadata accessor for BankConnectFormatter()) init];
      BankConnectFormatter.formatAsOfDate(_:hasMultipleBalances:)(v16, [a1 hasMultipleBalances]);
      v67 = v66;
      v69 = v68;

      v90 = v67;
      v91 = v69;
      sub_1BD0DDEBC();
      v70 = sub_1BE0506C4();
      v72 = v71;
      LOBYTE(v69) = v73;
      v75 = v74;
      (*(v52 + 8))(v16, v64);
      v76 = v69 & 1;
    }

    else
    {
      v70 = 0;
      v72 = 0;
      v76 = 0;
      v75 = 0;
    }

    v90 = v70;
    v91 = v72;
    v92 = v76;
    v93 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A988);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98);
    sub_1BD0DE4F4(&qword_1EBD3A990, &qword_1EBD3A988);
    sub_1BD12E194();
    sub_1BE051A54();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A960);
  v32 = 1;
  v33 = v23;
  (*(*(v31 - 8) + 56))(v23, v30, 1, v31);
  v34 = [a1 payAction];
  if (v34)
  {
    v35 = v34;
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    v38 = MEMORY[0x1EEE9AC00](v36, v37);
    v79[-4] = a1;
    v79[-3] = sub_1BD166E88;
    v77 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A978);
    sub_1BD0DE4F4(&qword_1EBD3A980, &qword_1EBD3A978);
    sub_1BE051A44();

    v32 = 0;
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A968);
  v40 = v87;
  (*(*(v39 - 8) + 56))(v87, v32, 1, v39);
  v42 = v83;
  v41 = v84;
  v43 = *(v84 + 16);
  v44 = v81;
  v43(v83, v88, v81);
  v45 = v33;
  v46 = v82;
  sub_1BD0DE19C(v33, v82, &qword_1EBD3A930);
  v47 = v85;
  sub_1BD0DE19C(v40, v85, &qword_1EBD3A928);
  v48 = v86;
  v43(v86, v42, v44);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A970);
  sub_1BD0DE19C(v46, &v48[*(v49 + 48)], &qword_1EBD3A930);
  sub_1BD0DE19C(v47, &v48[*(v49 + 64)], &qword_1EBD3A928);
  sub_1BD0DE53C(v40, &qword_1EBD3A928);
  sub_1BD0DE53C(v45, &qword_1EBD3A930);
  v50 = *(v41 + 8);
  v50(v88, v44);
  sub_1BD0DE53C(v47, &qword_1EBD3A928);
  sub_1BD0DE53C(v46, &qword_1EBD3A930);
  return (v50)(v42, v44);
}

id sub_1BD163624@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F7C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A9D8);
  return sub_1BD162668(a1, 0, 0, a2 + *(v4 + 44));
}

void sub_1BD163680(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v30 - v11;
  if (![a1 accountType] && (v28 = objc_msgSend(a1, sel_bookedBalance)) != 0 && (v28, (v29 = objc_msgSend(a1, sel_availableBalance)) != 0))
  {

    v20 = 0;
    v22 = 0;
    v27 = 0;
    v26 = 1;
  }

  else
  {
    v13 = [a1 asOfDate];
    if (v13)
    {
      v14 = v13;
      sub_1BE04AEE4();

      (*(v5 + 32))(v12, v9, v4);
      v15 = [objc_allocWithZone(type metadata accessor for BankConnectFormatter()) init];
      BankConnectFormatter.formatAsOfDate(_:hasMultipleBalances:)(v12, [a1 hasMultipleBalances]);
      v17 = v16;
      v19 = v18;

      v30[0] = v17;
      v30[1] = v19;
      sub_1BD0DDEBC();
      v20 = sub_1BE0506C4();
      v22 = v21;
      v24 = v23;
      v26 = v25;
      (*(v5 + 8))(v12, v4);
      v27 = v24 & 1;
    }

    else
    {
      v20 = 0;
      v22 = 0;
      v27 = 0;
      v26 = 0;
    }
  }

  *a2 = v20;
  a2[1] = v22;
  a2[2] = v27;
  a2[3] = v26;
}

double sub_1BD1638BC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04F504();
  v30 = 1;
  sub_1BD163DA8(a1, a2, &v16);
  v41 = v26;
  v42 = v27;
  v43 = v28;
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v40 = v25;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v31 = v16;
  v32 = v17;
  v44[10] = v26;
  v44[11] = v27;
  v44[12] = v28;
  v44[6] = v22;
  v44[7] = v23;
  v44[8] = v24;
  v44[9] = v25;
  v44[2] = v18;
  v44[3] = v19;
  v44[4] = v20;
  v44[5] = v21;
  v44[0] = v16;
  v44[1] = v17;
  sub_1BD0DE19C(&v31, &v15, &qword_1EBD3A998);
  sub_1BD0DE53C(v44, &qword_1EBD3A998);
  *&v29[151] = v40;
  *&v29[167] = v41;
  *&v29[183] = v42;
  *&v29[199] = v43;
  *&v29[87] = v36;
  *&v29[103] = v37;
  *&v29[119] = v38;
  *&v29[135] = v39;
  *&v29[23] = v32;
  *&v29[39] = v33;
  *&v29[55] = v34;
  *&v29[71] = v35;
  *&v29[7] = v31;
  v7 = *&v29[176];
  *(a3 + 177) = *&v29[160];
  *(a3 + 193) = v7;
  *(a3 + 209) = *&v29[192];
  v8 = *&v29[112];
  *(a3 + 113) = *&v29[96];
  *(a3 + 129) = v8;
  v9 = *&v29[144];
  *(a3 + 145) = *&v29[128];
  *(a3 + 161) = v9;
  v10 = *&v29[48];
  *(a3 + 49) = *&v29[32];
  *(a3 + 65) = v10;
  v11 = *&v29[80];
  *(a3 + 81) = *&v29[64];
  *(a3 + 97) = v11;
  result = *v29;
  v13 = *&v29[16];
  *(a3 + 17) = *v29;
  v14 = v30;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v14;
  *(a3 + 224) = *&v29[207];
  *(a3 + 33) = v13;
  return result;
}

uint64_t sub_1BD163A78()
{
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A9B8);
  sub_1BD0DE4F4(&qword_1EBD3A9C0, &qword_1EBD3A9B8);

  return sub_1BE051704();
}

uint64_t sub_1BD163B3C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1BE04F264();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1BD163BA0@<X0>(void *a1@<X8>)
{
  result = sub_1BE04F244();
  *a1 = v3;
  return result;
}

void sub_1BD163C0C(uint64_t a1@<X8>)
{
  v2 = sub_1BE052404();
  v3 = PKLocalizedBankConnectString(v2);

  if (v3)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    v4 = sub_1BE0506C4();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    KeyPath = swift_getKeyPath();
    v30 = v8 & 1;
    v29 = 1;
    v12 = sub_1BE051574();
    *&v16 = v4;
    *(&v16 + 1) = v6;
    LOBYTE(v17) = v8 & 1;
    *(&v17 + 1) = v10;
    *v18 = KeyPath;
    *&v18[8] = 0x3FC999999999999ALL;
    *&v18[16] = 0;
    *&v18[24] = 1;
    v19 = v16;
    v20 = v17;
    *&v21[10] = *&v18[10];
    *v21 = *v18;
    v13 = v16;
    v14 = v17;
    v15 = *&v21[16];
    *(a1 + 32) = *v18;
    *(a1 + 48) = v15;
    *a1 = v13;
    *(a1 + 16) = v14;
    *(a1 + 64) = v12;
    sub_1BD0DE19C(&v16, v22, &qword_1EBD3A9D0);
    v22[0] = v4;
    v22[1] = v6;
    v23 = v8 & 1;
    v24 = v10;
    v25 = KeyPath;
    v26 = 0x3FC999999999999ALL;
    v27 = 0;
    v28 = 1;
    sub_1BD0DE53C(v22, &qword_1EBD3A9D0);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD163DA8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE052404();
  v7 = PKLocalizedBankConnectString(v6);

  if (v7)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    v8 = sub_1BE0506C4();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = sub_1BE051464();
    sub_1BD164064(v15, v8, v10, v12 & 1, v14, &v42);

    sub_1BD0DDF10(v8, v10, v12 & 1);

    *&v41[0] = a1;
    *(&v41[0] + 1) = a2;
    sub_1BE048C84();
    v16 = sub_1BE0506C4();
    v18 = v17;
    v20 = v19;
    sub_1BD164250(v16, v17, v19 & 1, v21, &v32);
    sub_1BD0DDF10(v16, v18, v20 & 1);

    v22 = v45;
    v38[2] = v44;
    v23 = v44;
    v38[3] = v45;
    v24 = v47;
    v38[4] = v46;
    v25 = v46;
    v38[5] = v47;
    v26 = v43;
    v38[0] = v42;
    v38[1] = v43;
    v27 = v34;
    v39[0] = v32;
    v39[1] = v33;
    v28 = v35;
    v39[4] = v36;
    v29 = v36;
    v39[5] = v37;
    v30 = v33;
    v39[2] = v34;
    v39[3] = v35;
    *&v31[87] = v37;
    *&v31[39] = v34;
    *&v31[55] = v35;
    *&v31[23] = v33;
    *&v31[7] = v32;
    *&v31[71] = v36;
    *a3 = v42;
    *(a3 + 16) = v26;
    *(a3 + 64) = v25;
    *(a3 + 80) = v24;
    *(a3 + 32) = v23;
    *(a3 + 48) = v22;
    *(a3 + 137) = *&v31[32];
    *(a3 + 121) = *&v31[16];
    *(a3 + 105) = *v31;
    *(a3 + 200) = *&v31[95];
    *(a3 + 185) = *&v31[80];
    *(a3 + 169) = *&v31[64];
    *(a3 + 96) = 0;
    *(a3 + 104) = 1;
    *(a3 + 153) = *&v31[48];
    v40[0] = v32;
    v40[1] = v30;
    v40[4] = v29;
    v40[5] = v37;
    v40[2] = v27;
    v40[3] = v28;
    sub_1BD0DE19C(v38, v41, &qword_1EBD3A9A0);
    sub_1BD0DE19C(v39, v41, &qword_1EBD3A9A0);
    sub_1BD0DE53C(v40, &qword_1EBD3A9A0);
    v41[2] = v44;
    v41[3] = v45;
    v41[4] = v46;
    v41[5] = v47;
    v41[0] = v42;
    v41[1] = v43;
    sub_1BD0DE53C(v41, &qword_1EBD3A9A0);
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD164064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC40]);
  if (result)
  {
    v13 = sub_1BE050484();
    LOBYTE(v30) = a4 & 1;
    *&v19 = a2;
    *(&v19 + 1) = a3;
    LOBYTE(v20) = a4 & 1;
    *(&v20 + 1) = a5;
    *&v21 = swift_getKeyPath();
    *(&v21 + 1) = v13;
    *&v22 = swift_getKeyPath();
    *(&v22 + 1) = 0x3FC999999999999ALL;
    v23[0] = a2;
    v39 = v19;
    v40 = v20;
    v41 = v21;
    v42 = v22;
    v38 = 1;
    v23[1] = a3;
    v24 = a4 & 1;
    v25 = a5;
    v26 = v21;
    v27 = v13;
    v28 = v22;
    v29 = 0x3FC999999999999ALL;
    sub_1BD0D7F18(a2, a3, a4 & 1);
    sub_1BE048C84();
    sub_1BD0DE19C(&v19, v34, &qword_1EBD3A9A8);
    sub_1BD0DE53C(v23, &qword_1EBD3A9A8);
    v30 = v39;
    v31 = v40;
    v32 = v41;
    *v33 = v42;
    *&v33[16] = 0;
    v14 = v38;
    v33[24] = v38;
    v33[25] = 0;
    KeyPath = swift_getKeyPath();
    v16 = *v33;
    *(a6 + 32) = v32;
    *(a6 + 48) = v16;
    *(a6 + 58) = *&v33[10];
    v17 = v31;
    *a6 = v30;
    *(a6 + 16) = v17;
    *(a6 + 80) = KeyPath;
    *(a6 + 88) = a1;
    v34[0] = v39;
    v34[1] = v40;
    v34[2] = v41;
    v34[3] = v42;
    v35 = 0;
    v36 = v14;
    v37 = 0;
    sub_1BD0DE19C(&v30, &v18, &qword_1EBD3A9B0);
    sub_1BE048964();
    return sub_1BD0DE53C(v34, &qword_1EBD3A9B0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD164250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC40]);
  if (result)
  {
    v11 = sub_1BE050484();
    LOBYTE(v29) = a3 & 1;
    *&v18 = a1;
    *(&v18 + 1) = a2;
    LOBYTE(v19) = a3 & 1;
    *(&v19 + 1) = a4;
    *&v20 = swift_getKeyPath();
    *(&v20 + 1) = v11;
    *&v21 = swift_getKeyPath();
    *(&v21 + 1) = 0x3FC999999999999ALL;
    v22[0] = a1;
    v38 = v18;
    v39 = v19;
    v40 = v20;
    v41 = v21;
    v37 = 1;
    v22[1] = a2;
    v23 = a3 & 1;
    v24 = a4;
    v25 = v20;
    v26 = v11;
    v27 = v21;
    v28 = 0x3FC999999999999ALL;
    sub_1BD0D7F18(a1, a2, a3 & 1);
    sub_1BE048C84();
    sub_1BD0DE19C(&v18, v33, &qword_1EBD3A9A8);
    sub_1BD0DE53C(v22, &qword_1EBD3A9A8);
    v12 = sub_1BE051494();
    v29 = v38;
    v30 = v39;
    v31 = v40;
    *v32 = v41;
    *&v32[16] = 0;
    v13 = v37;
    v32[24] = v37;
    v32[25] = 0;
    KeyPath = swift_getKeyPath();
    v15 = *v32;
    *(a5 + 32) = v31;
    *(a5 + 48) = v15;
    *(a5 + 58) = *&v32[10];
    v16 = v30;
    *a5 = v29;
    *(a5 + 16) = v16;
    *(a5 + 80) = KeyPath;
    *(a5 + 88) = v12;
    v33[0] = v38;
    v33[1] = v39;
    v33[2] = v40;
    v33[3] = v41;
    v34 = 0;
    v35 = v13;
    v36 = 0;
    sub_1BD0DE19C(&v29, &v17, &qword_1EBD3A9B0);
    return sub_1BD0DE53C(v33, &qword_1EBD3A9B0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD164430@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v71 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AA20);
  v70 = *(v72 - 8);
  v4 = MEMORY[0x1EEE9AC00](v72, v3);
  v79 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v78 = &v65 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AA28);
  v69 = *(v73 - 8);
  v9 = MEMORY[0x1EEE9AC00](v73, v8);
  v80 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v76 = &v65 - v12;
  v13 = sub_1BE04AF64();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v65 - v20;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AA30);
  v75 = *(v77 - 8);
  v23 = MEMORY[0x1EEE9AC00](v77, v22);
  v74 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v65 - v26;
  v81 = a1;
  v86 = 0;
  v87 = 0;
  v28 = [a1 asOfDate];
  if (v28)
  {
    v29 = v28;
    sub_1BE04AEE4();

    (*(v14 + 32))(v21, v18, v13);
    v30 = [objc_allocWithZone(type metadata accessor for BankConnectFormatter()) init];
    BankConnectFormatter.formatAsOfDate(_:hasMultipleBalances:)(v21, [a1 hasMultipleBalances]);
    v32 = v31;
    v34 = v33;

    v82 = v32;
    v83 = v34;
    sub_1BD0DDEBC();
    v35 = sub_1BE0506C4();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    (*(v14 + 8))(v21, v13);
    v42 = v39 & 1;
  }

  else
  {
    v35 = 0;
    v37 = 0;
    v42 = 0;
    v41 = 0;
  }

  v82 = v35;
  v83 = v37;
  v84 = v42;
  v85 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98);
  sub_1BD0DE4F4(&qword_1EBD3A950, &qword_1EBD3A940);
  sub_1BD12E194();
  v68 = v27;
  v43 = sub_1BE051A34();
  MEMORY[0x1EEE9AC00](v43, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AA38);
  sub_1BD0DE4F4(&qword_1EBD3AA40, &qword_1EBD3AA38);
  v45 = v76;
  v46 = sub_1BE051A44();
  MEMORY[0x1EEE9AC00](v46, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AA48);
  sub_1BD1670BC();
  v48 = v78;
  sub_1BE051A44();
  v66 = *(v75 + 16);
  v49 = v74;
  v50 = v77;
  v66(v74, v27, v77);
  v51 = v69;
  v67 = *(v69 + 16);
  v67(v80, v45, v73);
  v52 = v70;
  v53 = *(v70 + 16);
  v54 = v48;
  v55 = v72;
  v53(v79, v54, v72);
  v56 = v71;
  v66(v71, v49, v50);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AA58);
  v58 = v73;
  v67(&v56[*(v57 + 48)], v80, v73);
  v59 = v79;
  v53(&v56[*(v57 + 64)], v79, v55);
  v60 = *(v52 + 8);
  v60(v78, v55);
  v61 = *(v51 + 8);
  v61(v76, v58);
  v62 = *(v75 + 8);
  v63 = v77;
  v62(v68, v77);
  v60(v59, v55);
  v61(v80, v58);
  return (v62)(v74, v63);
}

uint64_t sub_1BD164B7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 balanceSubtitle];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1BE052434();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = sub_1BE04F7C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A9D8);
  sub_1BD162668(a1, v6, v8, a2 + *(v9 + 44));
}

uint64_t sub_1BD164C34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AA60);
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v15 - v6;
  v8 = [a1 creditLimit];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1BE052434();
    v12 = v11;

    sub_1BD165C48(v10, v12, sub_1BD166B30, v7);

    (*(v16 + 32))(a2, v7, v4);
    return (*(v16 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v14 = *(v16 + 56);

    return v14(a2, 1, 1, v4);
  }
}

uint64_t sub_1BD164DE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a1;
  v111 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A978);
  v107 = *(v2 - 8);
  v108 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v97 = &v91 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AA68);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v110 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v109 = &v91 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AA70);
  MEMORY[0x1EEE9AC00](v11, v12);
  v94 = &v91 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AA48);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v96 = &v91 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AA78);
  MEMORY[0x1EEE9AC00](v21, v22);
  v99 = &v91 - v23;
  v24 = sub_1BE04FF64();
  v95 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AA60);
  v28 = *(v101 - 8);
  v30 = MEMORY[0x1EEE9AC00](v101, v29);
  v32 = &v91 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v33);
  v98 = (&v91 - v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AA80);
  v103 = *(v35 - 8);
  v104 = v35;
  MEMORY[0x1EEE9AC00](v35, v36);
  v100 = &v91 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AA88);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v105 = &v91 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v42);
  v44 = &v91 - v43;
  *(&v131 + 1) = &type metadata for BankConnectFeatureFlags;
  v102 = sub_1BD1671B0();
  *&v132 = v102;
  LOBYTE(v130) = 0;
  v45 = sub_1BE04C584();
  __swift_destroy_boxed_opaque_existential_0(&v130);
  v46 = 1;
  if (v45)
  {
    v93 = v11;
    v47 = v106;
    if ([v106 isPaymentOverdue])
    {
      v92 = v21;
      v48 = sub_1BE04F504();
      v96 = v28;
      v49 = v48;
      v115 = 1;
      sub_1BD165F84(&v130);
      v126 = v140;
      v127 = v141;
      v122 = v136;
      v123 = v137;
      v124 = v138;
      v125 = v139;
      v118 = v132;
      v119 = v133;
      v120 = v134;
      v121 = v135;
      v116 = v130;
      v117 = v131;
      v129[9] = v139;
      v129[10] = v140;
      v129[11] = v141;
      v129[12] = v142;
      v129[5] = v135;
      v129[6] = v136;
      v129[7] = v137;
      v129[8] = v138;
      v129[1] = v131;
      v129[2] = v132;
      v129[3] = v133;
      v129[4] = v134;
      v128 = v142;
      v129[0] = v130;
      sub_1BD0DE19C(&v116, &v112, &qword_1EBD3A998);
      sub_1BD0DE53C(v129, &qword_1EBD3A998);
      *&v114[151] = v125;
      *&v114[167] = v126;
      *&v114[183] = v127;
      *&v114[199] = v128;
      *&v114[87] = v121;
      *&v114[103] = v122;
      *&v114[119] = v123;
      *&v114[135] = v124;
      *&v114[23] = v117;
      *&v114[39] = v118;
      *&v114[55] = v119;
      *&v114[71] = v120;
      *&v114[7] = v116;
      *&v113[161] = *&v114[160];
      *&v113[177] = *&v114[176];
      *&v113[193] = *&v114[192];
      *&v113[97] = *&v114[96];
      *&v113[113] = *&v114[112];
      *&v113[129] = *&v114[128];
      *&v113[145] = *&v114[144];
      *&v113[33] = *&v114[32];
      *&v113[49] = *&v114[48];
      *&v113[65] = *&v114[64];
      *&v113[81] = *&v114[80];
      *&v113[1] = *v114;
      v112 = v49;
      v113[0] = v115;
      *&v113[208] = *(&v128 + 1);
      *&v113[17] = *&v114[16];
      sub_1BE04FF44();
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A988);
      v51 = sub_1BD0DE4F4(&qword_1EBD3A990, &qword_1EBD3A988);
      v52 = v98;
      sub_1BE050D14();
      (*(v95 + 8))(v27, v24);
      v142 = *&v113[176];
      v143 = *&v113[192];
      v144 = *&v113[208];
      v138 = *&v113[112];
      v139 = *&v113[128];
      v140 = *&v113[144];
      v141 = *&v113[160];
      v134 = *&v113[48];
      v135 = *&v113[64];
      v136 = *&v113[80];
      v137 = *&v113[96];
      v130 = v112;
      v131 = *v113;
      v132 = *&v113[16];
      v133 = *&v113[32];
      sub_1BD0DE53C(&v130, &qword_1EBD3A988);
      v53 = v96;
      v54 = v101;
      (*(v96 + 16))(v99, v52, v101);
      swift_storeEnumTagMultiPayload();
      *&v112 = v50;
      *(&v112 + 1) = v51;
      swift_getOpaqueTypeConformance2();
      sub_1BD0DE4F4(&qword_1EBD3AAB0, &qword_1EBD3AA70);
      v55 = v100;
      sub_1BE04F9A4();
      (*(v53 + 8))(v52, v54);
    }

    else
    {
      v56 = [v47 paymentDueDate];
      if (!v56)
      {
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AAA0);
        v55 = v100;
        (*(*(v71 - 8) + 56))(v100, 1, 1, v71);
LABEL_11:
        sub_1BD0DE204(v55, v44, &qword_1EBD3AA80);
        v46 = 0;
        goto LABEL_12;
      }

      v92 = v21;
      v57 = v56;
      v58 = sub_1BE052434();
      v60 = v59;

      sub_1BD165C48(v58, v60, sub_1BD1662E4, v32);

      v61 = [v47 minimumCreditPayment];
      if (v61)
      {
        v62 = v61;
        v63 = sub_1BE052434();
        v65 = v64;

        v66 = v98;
        sub_1BD165C48(v63, v65, sub_1BD1665A0, v98);

        v67 = v96;
        v68 = v28;
        v69 = v101;
        (*(v28 + 32))(v96, v66, v101);
        v70 = 0;
      }

      else
      {
        v70 = 1;
        v68 = v28;
        v69 = v101;
        v66 = v98;
        v67 = v96;
      }

      (*(v68 + 56))(v67, v70, 1, v69);
      v72 = *(v68 + 16);
      v72(v66, v32, v69);
      sub_1BD0DE19C(v67, v18, &qword_1EBD3AA48);
      v73 = v94;
      v72(v94, v66, v69);
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AAA8);
      sub_1BD0DE19C(v18, v73 + *(v74 + 48), &qword_1EBD3AA48);
      sub_1BD0DE53C(v18, &qword_1EBD3AA48);
      v98 = *(v68 + 8);
      (v98)(v66, v69);
      sub_1BD0DE19C(v73, v99, &qword_1EBD3AA70);
      swift_storeEnumTagMultiPayload();
      v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A988);
      v76 = sub_1BD0DE4F4(&qword_1EBD3A990, &qword_1EBD3A988);
      *&v130 = v75;
      *(&v130 + 1) = v76;
      swift_getOpaqueTypeConformance2();
      sub_1BD0DE4F4(&qword_1EBD3AAB0, &qword_1EBD3AA70);
      v55 = v100;
      v77 = v101;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v73, &qword_1EBD3AA70);
      sub_1BD0DE53C(v96, &qword_1EBD3AA48);
      (v98)(v32, v77);
    }

    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AAA0);
    (*(*(v78 - 8) + 56))(v55, 0, 1, v78);
    goto LABEL_11;
  }

LABEL_12:
  (*(v103 + 56))(v44, v46, 1, v104);
  *(&v131 + 1) = &type metadata for BankConnectFeatureFlags;
  *&v132 = v102;
  v79 = 1;
  LOBYTE(v130) = 1;
  v80 = sub_1BE04C584();
  __swift_destroy_boxed_opaque_existential_0(&v130);
  v81 = v108;
  v82 = v109;
  v83 = v107;
  if (v80)
  {
    v84 = [v106 payAction];
    if (v84)
    {
      *(swift_allocObject() + 16) = v84;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A9B8);
      sub_1BD0DE4F4(&qword_1EBD3A9C0, &qword_1EBD3A9B8);
      v85 = v97;
      sub_1BE051704();
      (*(v83 + 32))(v82, v85, v81);
      v79 = 0;
    }
  }

  (*(v83 + 56))(v82, v79, 1, v81);
  v86 = v105;
  sub_1BD0DE19C(v44, v105, &qword_1EBD3AA88);
  v87 = v110;
  sub_1BD0DE19C(v82, v110, &qword_1EBD3AA68);
  v88 = v111;
  sub_1BD0DE19C(v86, v111, &qword_1EBD3AA88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AA98);
  sub_1BD0DE19C(v87, v88 + *(v89 + 48), &qword_1EBD3AA68);
  sub_1BD0DE53C(v82, &qword_1EBD3AA68);
  sub_1BD0DE53C(v44, &qword_1EBD3AA88);
  sub_1BD0DE53C(v87, &qword_1EBD3AA68);
  return sub_1BD0DE53C(v86, &qword_1EBD3AA88);
}

uint64_t sub_1BD165C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(__int128 *__return_ptr, uint64_t, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v14 = a4;
  v7 = sub_1BE04FF64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04F504();
  v18 = 1;
  a3(&v33, a1, a2);
  v29 = v43;
  v30 = v44;
  v25 = v39;
  v26 = v40;
  v27 = v41;
  v28 = v42;
  v21 = v35;
  v22 = v36;
  v23 = v37;
  v24 = v38;
  v19 = v33;
  v20 = v34;
  v32[9] = v42;
  v32[10] = v43;
  v32[11] = v44;
  v32[12] = v45;
  v32[5] = v38;
  v32[6] = v39;
  v32[7] = v40;
  v32[8] = v41;
  v32[1] = v34;
  v32[2] = v35;
  v32[3] = v36;
  v32[4] = v37;
  v31 = v45;
  v32[0] = v33;
  sub_1BD0DE19C(&v19, &v15, &qword_1EBD3A998);
  sub_1BD0DE53C(v32, &qword_1EBD3A998);
  *&v17[151] = v28;
  *&v17[167] = v29;
  *&v17[183] = v30;
  *&v17[199] = v31;
  *&v17[87] = v24;
  *&v17[103] = v25;
  *&v17[119] = v26;
  *&v17[135] = v27;
  *&v17[23] = v20;
  *&v17[39] = v21;
  *&v17[55] = v22;
  *&v17[71] = v23;
  *&v17[7] = v19;
  *&v16[161] = *&v17[160];
  *&v16[177] = *&v17[176];
  *&v16[193] = *&v17[192];
  *&v16[97] = *&v17[96];
  *&v16[113] = *&v17[112];
  *&v16[129] = *&v17[128];
  *&v16[145] = *&v17[144];
  *&v16[33] = *&v17[32];
  *&v16[49] = *&v17[48];
  *&v16[65] = *&v17[64];
  *&v16[81] = *&v17[80];
  *&v16[1] = *v17;
  v15 = v12;
  v16[0] = v18;
  *&v16[208] = *(&v31 + 1);
  *&v16[17] = *&v17[16];
  sub_1BE04FF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A988);
  sub_1BD0DE4F4(&qword_1EBD3A990, &qword_1EBD3A988);
  sub_1BE050D14();
  (*(v8 + 8))(v11, v7);
  v45 = *&v16[176];
  v46 = *&v16[192];
  v47 = *&v16[208];
  v41 = *&v16[112];
  v42 = *&v16[128];
  v43 = *&v16[144];
  v44 = *&v16[160];
  v37 = *&v16[48];
  v38 = *&v16[64];
  v39 = *&v16[80];
  v40 = *&v16[96];
  v33 = v15;
  v34 = *v16;
  v35 = *&v16[16];
  v36 = *&v16[32];
  return sub_1BD0DE53C(&v33, &qword_1EBD3A988);
}

void sub_1BD165F84(uint64_t a1@<X8>)
{
  v2 = sub_1BE052404();
  v3 = PKLocalizedBankConnectString(v2);

  if (v3)
  {
    v4 = sub_1BE052434();
    v6 = v5;

    *&v39[0] = v4;
    *(&v39[0] + 1) = v6;
    sub_1BD0DDEBC();
    v7 = sub_1BE0506C4();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = sub_1BE0513B4();
    sub_1BD164064(v14, v7, v9, v11 & 1, v13, &v46);

    sub_1BD0DDF10(v7, v9, v11 & 1);

    v15 = sub_1BE052404();
    v16 = PKLocalizedBankConnectString(v15);

    if (v16)
    {
      v17 = sub_1BE052434();
      v19 = v18;

      *&v39[0] = v17;
      *(&v39[0] + 1) = v19;
      v20 = sub_1BE0506C4();
      v22 = v21;
      LOBYTE(v17) = v23;
      sub_1BD164250(v20, v21, v23 & 1, v24, &v40);
      sub_1BD0DDF10(v20, v22, v17 & 1);

      v25 = v49;
      v26 = v48;
      v36[3] = v49;
      v36[4] = v50;
      v27 = v47;
      v36[0] = v46;
      v36[1] = v47;
      v36[2] = v48;
      v28 = v50;
      v36[5] = v51;
      v37[0] = v40;
      v29 = v42;
      v37[3] = v43;
      v37[4] = v44;
      v30 = v40;
      v37[1] = v41;
      v37[2] = v42;
      v31 = v45;
      *&v35[87] = v45;
      *&v35[39] = v42;
      v32 = v43;
      *&v35[55] = v43;
      v33 = v41;
      *&v35[23] = v41;
      *&v35[7] = v40;
      *&v35[71] = v44;
      *a1 = v46;
      *(a1 + 16) = v27;
      v34 = v51;
      *(a1 + 64) = v28;
      *(a1 + 80) = v34;
      *(a1 + 32) = v26;
      *(a1 + 48) = v25;
      *(a1 + 137) = *&v35[32];
      *(a1 + 121) = *&v35[16];
      *(a1 + 105) = *v35;
      *(a1 + 200) = *&v35[95];
      *(a1 + 185) = *&v35[80];
      *(a1 + 169) = *&v35[64];
      *(a1 + 153) = *&v35[48];
      v37[5] = v45;
      v38[0] = v30;
      v38[4] = v44;
      v38[5] = v31;
      *(a1 + 96) = 0;
      *(a1 + 104) = 1;
      v38[2] = v29;
      v38[3] = v32;
      v38[1] = v33;
      sub_1BD0DE19C(v36, v39, &qword_1EBD3A9A0);
      sub_1BD0DE19C(v37, v39, &qword_1EBD3A9A0);
      sub_1BD0DE53C(v38, &qword_1EBD3A9A0);
      v39[2] = v48;
      v39[3] = v49;
      v39[4] = v50;
      v39[5] = v51;
      v39[0] = v46;
      v39[1] = v47;
      sub_1BD0DE53C(v39, &qword_1EBD3A9A0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD1662E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE052404();
  v7 = PKLocalizedBankConnectString(v6);

  if (v7)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    v8 = sub_1BE0506C4();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = sub_1BE051464();
    sub_1BD164064(v15, v8, v10, v12 & 1, v14, &v42);

    sub_1BD0DDF10(v8, v10, v12 & 1);

    *&v41[0] = a1;
    *(&v41[0] + 1) = a2;
    sub_1BE048C84();
    v16 = sub_1BE0506C4();
    v18 = v17;
    v20 = v19;
    sub_1BD164250(v16, v17, v19 & 1, v21, &v32);
    sub_1BD0DDF10(v16, v18, v20 & 1);

    v22 = v45;
    v38[2] = v44;
    v23 = v44;
    v38[3] = v45;
    v24 = v47;
    v38[4] = v46;
    v25 = v46;
    v38[5] = v47;
    v26 = v43;
    v38[0] = v42;
    v38[1] = v43;
    v27 = v34;
    v39[0] = v32;
    v39[1] = v33;
    v28 = v35;
    v39[4] = v36;
    v29 = v36;
    v39[5] = v37;
    v30 = v33;
    v39[2] = v34;
    v39[3] = v35;
    *&v31[87] = v37;
    *&v31[39] = v34;
    *&v31[55] = v35;
    *&v31[23] = v33;
    *&v31[7] = v32;
    *&v31[71] = v36;
    *a3 = v42;
    *(a3 + 16) = v26;
    *(a3 + 64) = v25;
    *(a3 + 80) = v24;
    *(a3 + 32) = v23;
    *(a3 + 48) = v22;
    *(a3 + 137) = *&v31[32];
    *(a3 + 121) = *&v31[16];
    *(a3 + 105) = *v31;
    *(a3 + 200) = *&v31[95];
    *(a3 + 185) = *&v31[80];
    *(a3 + 169) = *&v31[64];
    *(a3 + 96) = 0;
    *(a3 + 104) = 1;
    *(a3 + 153) = *&v31[48];
    v40[0] = v32;
    v40[1] = v30;
    v40[4] = v29;
    v40[5] = v37;
    v40[2] = v27;
    v40[3] = v28;
    sub_1BD0DE19C(v38, v41, &qword_1EBD3A9A0);
    sub_1BD0DE19C(v39, v41, &qword_1EBD3A9A0);
    sub_1BD0DE53C(v40, &qword_1EBD3A9A0);
    v41[2] = v44;
    v41[3] = v45;
    v41[4] = v46;
    v41[5] = v47;
    v41[0] = v42;
    v41[1] = v43;
    sub_1BD0DE53C(v41, &qword_1EBD3A9A0);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD1665A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE052404();
  v7 = PKLocalizedBankConnectString(v6);

  if (v7)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    v8 = sub_1BE0506C4();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = sub_1BE051464();
    sub_1BD164064(v15, v8, v10, v12 & 1, v14, &v42);

    sub_1BD0DDF10(v8, v10, v12 & 1);

    *&v41[0] = a1;
    *(&v41[0] + 1) = a2;
    sub_1BE048C84();
    v16 = sub_1BE0506C4();
    v18 = v17;
    v20 = v19;
    sub_1BD164250(v16, v17, v19 & 1, v21, &v32);
    sub_1BD0DDF10(v16, v18, v20 & 1);

    v22 = v45;
    v38[2] = v44;
    v23 = v44;
    v38[3] = v45;
    v24 = v47;
    v38[4] = v46;
    v25 = v46;
    v38[5] = v47;
    v26 = v43;
    v38[0] = v42;
    v38[1] = v43;
    v27 = v34;
    v39[0] = v32;
    v39[1] = v33;
    v28 = v35;
    v39[4] = v36;
    v29 = v36;
    v39[5] = v37;
    v30 = v33;
    v39[2] = v34;
    v39[3] = v35;
    *&v31[87] = v37;
    *&v31[39] = v34;
    *&v31[55] = v35;
    *&v31[23] = v33;
    *&v31[7] = v32;
    *&v31[71] = v36;
    *a3 = v42;
    *(a3 + 16) = v26;
    *(a3 + 64) = v25;
    *(a3 + 80) = v24;
    *(a3 + 32) = v23;
    *(a3 + 48) = v22;
    *(a3 + 137) = *&v31[32];
    *(a3 + 121) = *&v31[16];
    *(a3 + 105) = *v31;
    *(a3 + 200) = *&v31[95];
    *(a3 + 185) = *&v31[80];
    *(a3 + 169) = *&v31[64];
    *(a3 + 96) = 0;
    *(a3 + 104) = 1;
    *(a3 + 153) = *&v31[48];
    v40[0] = v32;
    v40[1] = v30;
    v40[4] = v29;
    v40[5] = v37;
    v40[2] = v27;
    v40[3] = v28;
    sub_1BD0DE19C(v38, v41, &qword_1EBD3A9A0);
    sub_1BD0DE19C(v39, v41, &qword_1EBD3A9A0);
    sub_1BD0DE53C(v40, &qword_1EBD3A9A0);
    v41[2] = v44;
    v41[3] = v45;
    v41[4] = v46;
    v41[5] = v47;
    v41[0] = v42;
    v41[1] = v43;
    sub_1BD0DE53C(v41, &qword_1EBD3A9A0);
  }

  else
  {
    __break(1u);
  }
}

double sub_1BD166874@<D0>(void (*a1)(__int128 *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F504();
  v16 = 1;
  a1(&v10);
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v17 = v10;
  v22[1] = v11;
  v22[2] = v12;
  v22[3] = v13;
  v23 = v14;
  v22[0] = v10;
  sub_1BD0DE19C(&v17, v9, &qword_1EBD3A9C8);
  sub_1BD0DE53C(v22, &qword_1EBD3A9C8);
  *&v15[7] = v17;
  *&v15[71] = v21;
  *&v15[55] = v20;
  *&v15[39] = v19;
  *&v15[23] = v18;
  v5 = *v15;
  *(a2 + 33) = *&v15[16];
  v6 = *&v15[48];
  *(a2 + 49) = *&v15[32];
  *(a2 + 65) = v6;
  result = *&v15[63];
  *(a2 + 80) = *&v15[63];
  v8 = v16;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 17) = v5;
  return result;
}

void sub_1BD166994(uint64_t a1@<X8>)
{
  v2 = sub_1BE052404();
  v3 = PKLocalizedBankConnectString(v2);

  if (v3)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    v4 = sub_1BE0506C4();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    KeyPath = swift_getKeyPath();
    v30 = v8 & 1;
    v29 = 1;
    v12 = sub_1BE051574();
    *&v16 = v4;
    *(&v16 + 1) = v6;
    LOBYTE(v17) = v8 & 1;
    *(&v17 + 1) = v10;
    *v18 = KeyPath;
    *&v18[8] = 0x3FC999999999999ALL;
    *&v18[16] = 0;
    *&v18[24] = 1;
    v19 = v16;
    v20 = v17;
    *&v21[10] = *&v18[10];
    *v21 = *v18;
    v13 = v16;
    v14 = v17;
    v15 = *&v21[16];
    *(a1 + 32) = *v18;
    *(a1 + 48) = v15;
    *a1 = v13;
    *(a1 + 16) = v14;
    *(a1 + 64) = v12;
    sub_1BD0DE19C(&v16, v22, &qword_1EBD3A9D0);
    v22[0] = v4;
    v22[1] = v6;
    v23 = v8 & 1;
    v24 = v10;
    v25 = KeyPath;
    v26 = 0x3FC999999999999ALL;
    v27 = 0;
    v28 = 1;
    sub_1BD0DE53C(v22, &qword_1EBD3A9D0);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD166B30(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE052404();
  v7 = PKLocalizedBankConnectString(v6);

  if (v7)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    v8 = sub_1BE0506C4();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = sub_1BE051464();
    sub_1BD164064(v15, v8, v10, v12 & 1, v14, &v42);

    sub_1BD0DDF10(v8, v10, v12 & 1);

    *&v41[0] = a1;
    *(&v41[0] + 1) = a2;
    sub_1BE048C84();
    v16 = sub_1BE0506C4();
    v18 = v17;
    v20 = v19;
    sub_1BD164250(v16, v17, v19 & 1, v21, &v32);
    sub_1BD0DDF10(v16, v18, v20 & 1);

    v22 = v45;
    v38[2] = v44;
    v23 = v44;
    v38[3] = v45;
    v24 = v47;
    v38[4] = v46;
    v25 = v46;
    v38[5] = v47;
    v26 = v43;
    v38[0] = v42;
    v38[1] = v43;
    v27 = v34;
    v39[0] = v32;
    v39[1] = v33;
    v28 = v35;
    v39[4] = v36;
    v29 = v36;
    v39[5] = v37;
    v30 = v33;
    v39[2] = v34;
    v39[3] = v35;
    *&v31[87] = v37;
    *&v31[39] = v34;
    *&v31[55] = v35;
    *&v31[23] = v33;
    *&v31[7] = v32;
    *&v31[71] = v36;
    *a3 = v42;
    *(a3 + 16) = v26;
    *(a3 + 64) = v25;
    *(a3 + 80) = v24;
    *(a3 + 32) = v23;
    *(a3 + 48) = v22;
    *(a3 + 137) = *&v31[32];
    *(a3 + 121) = *&v31[16];
    *(a3 + 105) = *v31;
    *(a3 + 200) = *&v31[95];
    *(a3 + 185) = *&v31[80];
    *(a3 + 169) = *&v31[64];
    *(a3 + 96) = 0;
    *(a3 + 104) = 1;
    *(a3 + 153) = *&v31[48];
    v40[0] = v32;
    v40[1] = v30;
    v40[4] = v29;
    v40[5] = v37;
    v40[2] = v27;
    v40[3] = v28;
    sub_1BD0DE19C(v38, v41, &qword_1EBD3A9A0);
    sub_1BD0DE19C(v39, v41, &qword_1EBD3A9A0);
    sub_1BD0DE53C(v40, &qword_1EBD3A9A0);
    v41[2] = v44;
    v41[3] = v45;
    v41[4] = v46;
    v41[5] = v47;
    v41[0] = v42;
    v41[1] = v43;
    sub_1BD0DE53C(v41, &qword_1EBD3A9A0);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1BD166E04()
{
  result = qword_1EBD3A958;
  if (!qword_1EBD3A958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A948);
    sub_1BD12E194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A958);
  }

  return result;
}

unint64_t sub_1BD166EA8()
{
  result = qword_1EBD3A9F0;
  if (!qword_1EBD3A9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A9E8);
    sub_1BD166F60();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A9F0);
  }

  return result;
}

unint64_t sub_1BD166F60()
{
  result = qword_1EBD3A9F8;
  if (!qword_1EBD3A9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A9D0);
    sub_1BD166FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A9F8);
  }

  return result;
}

unint64_t sub_1BD166FEC()
{
  result = qword_1EBD3AA00;
  if (!qword_1EBD3AA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AA08);
    sub_1BD0DE4F4(&qword_1EBD3A8B0, &qword_1EBD3A8B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AA00);
  }

  return result;
}

unint64_t sub_1BD1670BC()
{
  result = qword_1EBD3AA50;
  if (!qword_1EBD3AA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AA48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A988);
    sub_1BD0DE4F4(&qword_1EBD3A990, &qword_1EBD3A988);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AA50);
  }

  return result;
}

unint64_t sub_1BD1671B0()
{
  result = qword_1EBD3AA90;
  if (!qword_1EBD3AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AA90);
  }

  return result;
}

unint64_t sub_1BD167204()
{
  result = qword_1EBD3AAB8;
  if (!qword_1EBD3AAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A848);
    sub_1BD167290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AAB8);
  }

  return result;
}

unint64_t sub_1BD167290()
{
  result = qword_1EBD3AAC0;
  if (!qword_1EBD3AAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A840);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A830);
    sub_1BD0DE4F4(&qword_1EBD3A8F0, &qword_1EBD3A830);
    sub_1BD0DDEBC();
    swift_getOpaqueTypeConformance2();
    sub_1BD1673D0(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AAC0);
  }

  return result;
}

uint64_t sub_1BD1673D0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BD16741C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for VirtualCardDetailsSheet(0);
  sub_1BD0DE19C(v1 + *(v12 + 32), v11, &qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1BE04E664();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_1BE052C44();
    v15 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

id sub_1BD167628()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v27 - v7;
  type metadata accessor for VirtualCardPublisher(0);
  sub_1BD1710E4(&qword_1EBD3AB78, type metadata accessor for VirtualCardPublisher);
  sub_1BE04E3D4();
  swift_getKeyPath();
  sub_1BE04E974();

  v9 = v36;
  v30 = v34;
  v31 = v35;
  v32 = v36;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA0);
  MEMORY[0x1BFB3E970](&v33, v10);

  v11 = v33;
  if (v33 && (ErrorValue = swift_getErrorValue(), v13 = v28, v14 = v29, v15 = *(v28 - 8), MEMORY[0x1EEE9AC00](ErrorValue, v27[1]), v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), (*(v15 + 16))(v17), v11, v18 = sub_1BD167A0C(v13, v14), (*(v15 + 8))(v17, v13), v18))
  {
    (*(v1 + 104))(v8, *MEMORY[0x1E69B8058], v0);
    result = PKPassKitBundle();
    if (result)
    {
      v20 = result;
      v21 = sub_1BE04B6F4();
      v23 = v22;

      (*(v1 + 8))(v8, v0);
      v34 = v21;
LABEL_7:
      v35 = v23;
      sub_1BD0DDEBC();
      return sub_1BE0506C4();
    }
  }

  else
  {
    (*(v1 + 104))(v5, *MEMORY[0x1E69B8058], v0);
    result = PKPassKitBundle();
    if (result)
    {
      v24 = result;
      v25 = sub_1BE04B6F4();
      v23 = v26;

      (*(v1 + 8))(v5, v0);
      v34 = v25;
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_1BD167A0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_1BE053B54();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_1BE04A844();

  v11 = [v10 domain];
  v12 = sub_1BE052434();
  v14 = v13;

  if (v12 == sub_1BE052434() && v14 == v15)
  {
  }

  else
  {
    v17 = sub_1BE053B84();

    if ((v17 & 1) == 0)
    {

      return 0;
    }
  }

  v19 = [v10 code];

  return v19 == 3;
}

uint64_t sub_1BD167C08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = type metadata accessor for VirtualCardDetailsSheet(0);
  v4 = *(v3 - 8);
  v41 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AB90);
  MEMORY[0x1EEE9AC00](v48, v8);
  v10 = &v36 - v9;
  sub_1BD1681D0(&v36 - v9);
  v11 = *(v1 + 8);
  v12 = *(v1 + 16);
  v43 = v11;
  v44 = v12;
  v47 = *(v2 + 24);
  v46 = type metadata accessor for VirtualCardPublisher(0);
  v45 = sub_1BD1710E4(&qword_1EBD3AB78, type metadata accessor for VirtualCardPublisher);
  sub_1BE04E3C4();
  swift_beginAccess();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AB98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AB50);
  sub_1BE04D884();
  swift_endAccess();

  v40 = v7;
  sub_1BD170F0C(v2, v7, type metadata accessor for VirtualCardDetailsSheet);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_1BD1719A4(v7, v15 + v14, type metadata accessor for VirtualCardDetailsSheet);
  v16 = &v10[*(v13 + 56)];
  *v16 = sub_1BD170C74;
  v16[1] = v15;
  sub_1BE04E3C4();
  swift_beginAccess();
  v17 = v48;
  sub_1BE04D884();
  swift_endAccess();

  v18 = v40;
  sub_1BD170F0C(v2, v40, type metadata accessor for VirtualCardDetailsSheet);
  v19 = swift_allocObject();
  sub_1BD1719A4(v18, v19 + v14, type metadata accessor for VirtualCardDetailsSheet);
  v20 = *(v17 + 56);
  v38 = v10;
  v21 = &v10[v20];
  *v21 = sub_1BD170DD4;
  v21[1] = v19;
  v22 = sub_1BD167628();
  v39 = v23;
  v40 = v22;
  v25 = v24;
  v41 = v26;
  v27 = *(v2 + 64);
  LOBYTE(v52) = *(v2 + 56);
  v53 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v36 = v55;
  v37 = v57;
  sub_1BE04E3D4();
  swift_getKeyPath();
  sub_1BE04E974();

  v28 = v57;
  v52 = v55;
  v53 = v56;
  v54 = v57;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA0);
  MEMORY[0x1BFB3E970](&v51, v29);
  v30 = v51;

  if (v30)
  {
    v50 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    sub_1BD0E5E8C(0, &qword_1EBD45E80);
    if (swift_dynamicCast())
    {
      v31 = v49;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  v55 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
  sub_1BD0E5E8C(0, &qword_1EBD45E80);
  sub_1BD0DE4F4(&qword_1EBD3ABB0, &qword_1EBD3AB90);
  sub_1BD170E70();
  v32 = v39;
  v33 = v40;
  v34 = v38;
  sub_1BE050F04();

  sub_1BD0DDF10(v33, v32, v25 & 1);

  return sub_1BD0DE53C(v34, &qword_1EBD3AB90);
}

uint64_t sub_1BD1681D0@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v29 = type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet(0);
  MEMORY[0x1EEE9AC00](v29, v1);
  v3 = (&v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABC0);
  MEMORY[0x1EEE9AC00](v25, v4);
  v27 = &v24 - v5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABC8);
  MEMORY[0x1EEE9AC00](v26, v6);
  v8 = &v24 - v7;
  type metadata accessor for VirtualCardPublisher(0);
  sub_1BD1710E4(&qword_1EBD3AB78, type metadata accessor for VirtualCardPublisher);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v31)
  {
    v24 = v31;
    sub_1BE04E3C4();
    *v3 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
    swift_storeEnumTagMultiPayload();
    v9 = v29;
    v10 = v3 + *(v29 + 28);
    v30 = 0;
    sub_1BE051694();
    v11 = *(&v31 + 1);
    *v10 = v31;
    *(v10 + 1) = v11;
    v12 = v3 + *(v9 + 20);
    *v12 = v24;
    v12[16] = 1;
    *(v12 + 3) = 0;
    v13 = (v3 + *(v9 + 24));
    *v13 = sub_1BE04E954();
    v13[1] = v14;
    sub_1BD170F0C(v3, v27, type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet);
    swift_storeEnumTagMultiPayload();
    sub_1BD170F74();
    sub_1BD1710E4(&qword_1EBD3ABF8, type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet);
    sub_1BE04F9A4();
    return sub_1BD17112C(v3);
  }

  else
  {
    sub_1BE04E4F4();
    v16 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABE0) + 36)];
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABF0) + 28);
    v18 = *MEMORY[0x1E697DC20];
    v19 = sub_1BE04E364();
    (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
    *v16 = swift_getKeyPath();
    sub_1BE051CD4();
    sub_1BE04EE54();
    v20 = &v8[*(v26 + 36)];
    v21 = v36;
    *(v20 + 4) = v35;
    *(v20 + 5) = v21;
    *(v20 + 6) = v37;
    v22 = v32;
    *v20 = v31;
    *(v20 + 1) = v22;
    v23 = v34;
    *(v20 + 2) = v33;
    *(v20 + 3) = v23;
    sub_1BD0DE19C(v8, v27, &qword_1EBD3ABC8);
    swift_storeEnumTagMultiPayload();
    sub_1BD170F74();
    sub_1BD1710E4(&qword_1EBD3ABF8, type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet);
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v8, &qword_1EBD3ABC8);
  }
}

void *sub_1BD1686DC(void **a1, uint64_t a2)
{
  v4 = sub_1BE04E664();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *a1;
  if (*a1)
  {
    v10 = *(a2 + 48);
    v13 = *(a2 + 32);
    v14 = v10;
    v12 = result;
    v11 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA0);
    sub_1BE0518F4();
    sub_1BD16741C(v8);
    sub_1BE04E654();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

void *sub_1BD168800(void *result)
{
  if (*result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    return sub_1BE0516B4();
  }

  return result;
}

id sub_1BD16886C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v38 - v11;
  v13 = *a1;
  v14 = [v13 domain];
  v15 = sub_1BE052434();
  v17 = v16;

  if (v15 == sub_1BE052434() && v17 == v18)
  {
  }

  else
  {
    v20 = sub_1BE053B84();

    if ((v20 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if ([v13 code] != 3)
  {
LABEL_11:
    (*(v5 + 104))(v9, *MEMORY[0x1E69B8058], v4);
    result = PKPassKitBundle();
    if (result)
    {
      v29 = result;
      v30 = sub_1BE04B6F4();
      v32 = v31;

      (*(v5 + 8))(v9, v4);
      *&v44 = v30;
      *(&v44 + 1) = v32;
      sub_1BD0DDEBC();
      v39 = sub_1BE0506C4();
      v40 = v34;
      v41 = v33 & 1;
      v42 = v35;
      v43 = 1;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  (*(v5 + 104))(v12, *MEMORY[0x1E69B8058], v4);
  result = PKPassKitBundle();
  if (result)
  {
    v22 = result;
    v23 = sub_1BE04B6F4();
    v25 = v24;

    (*(v5 + 8))(v12, v4);
    *&v44 = v23;
    *(&v44 + 1) = v25;
    sub_1BD0DDEBC();
    v39 = sub_1BE0506C4();
    v40 = v26;
    v41 = v27 & 1;
    v42 = v28;
    v43 = 0;
LABEL_13:
    result = sub_1BE04F9A4();
    v36 = v45;
    v37 = v46;
    *a2 = v44;
    *(a2 + 16) = v36;
    *(a2 + 32) = v37;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1BD168BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v41 = sub_1BE04FE44();
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AD90);
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v6);
  v8 = &v39 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AD80);
  MEMORY[0x1EEE9AC00](v48, v9);
  v43 = &v39 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AD98);
  MEMORY[0x1EEE9AC00](v46, v11);
  v47 = &v39 - v12;
  v13 = sub_1BE04FED4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ADA0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v39 - v21;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AD70);
  MEMORY[0x1EEE9AC00](v45, v23);
  v25 = &v39 - v24;
  if (*(a1 + 64))
  {
    v51 = *(a1 + 32);
    v26 = *(a1 + 48);
    v27 = *(a1 + 56);
    v55 = v51;
    v56 = *(a1 + 48);
    v54 = v27;
    v52 = v26;
    v53 = v27;
    sub_1BD17239C(&v55, v50);
    sub_1BD0DE19C(&v54, v50, &qword_1EBD3AD88);
    sub_1BE04FEC4();
    v28 = MEMORY[0x1E6981148];
    v29 = MEMORY[0x1E6981138];
    sub_1BE050A74();
    (*(v14 + 8))(v17, v13);
    sub_1BD1723F8(&v55);
    sub_1BD0DE53C(&v54, &qword_1EBD3AD88);
    sub_1BE052434();
    *&v51 = v28;
    *(&v51 + 1) = v13;
    v52 = v29;
    v53 = MEMORY[0x1E6980518];
    swift_getOpaqueTypeConformance2();
    sub_1BE050DE4();

    (*(v19 + 8))(v22, v18);
    v30 = &qword_1EBD3AD70;
    sub_1BD0DE19C(v25, v47, &qword_1EBD3AD70);
  }

  else
  {
    v51 = *(a1 + 32);
    v31 = *(a1 + 48);
    v32 = *(a1 + 56);
    v55 = v51;
    v56 = *(a1 + 48);
    v54 = v32;
    v52 = v31;
    v53 = v32;
    sub_1BD17239C(&v55, v50);
    sub_1BD0DE19C(&v54, v50, &qword_1EBD3AD88);
    sub_1BE04FE34();
    v33 = MEMORY[0x1E6981148];
    v34 = MEMORY[0x1E6981138];
    v35 = MEMORY[0x1E69803B8];
    v36 = v41;
    sub_1BE050A74();
    (*(v40 + 8))(v5, v36);
    sub_1BD1723F8(&v55);
    sub_1BD0DE53C(&v54, &qword_1EBD3AD88);
    sub_1BE052434();
    *&v51 = v33;
    *(&v51 + 1) = v36;
    v52 = v34;
    v53 = v35;
    swift_getOpaqueTypeConformance2();
    v25 = v43;
    v37 = v44;
    sub_1BE050DE4();

    (*(v42 + 8))(v8, v37);
    v30 = &qword_1EBD3AD80;
    sub_1BD0DE19C(v25, v47, &qword_1EBD3AD80);
  }

  swift_storeEnumTagMultiPayload();
  sub_1BD17219C();
  sub_1BD17229C();
  sub_1BE04F9A4();
  return sub_1BD0DE53C(v25, v30);
}

uint64_t sub_1BD169230(__int128 *a1)
{
  v5 = *a1;
  v1 = *(a1 + 2);
  v2 = *(a1 + 3);
  v9 = v5;
  v10 = *(a1 + 16);
  v8 = v2;
  v6 = v1;
  v7 = v2;
  sub_1BE052434();
  sub_1BD17239C(&v9, v4);
  sub_1BD0DE19C(&v8, v4, &qword_1EBD3AD88);
  sub_1BE050DE4();

  sub_1BD1723F8(&v9);
  return sub_1BD0DE53C(&v8, &qword_1EBD3AD88);
}

uint64_t sub_1BD169314()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AD58);
  sub_1BD1103C8();
  sub_1BD172110();
  return sub_1BE04E844();
}

void sub_1BD1693EC(void *a1, id a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v4 = [a2 formattedExpiration];
    if (!v4)
    {
      v4 = [a1 expiration];
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    v5 = v4;
    sub_1BE052434();
  }

  v6 = sub_1BE052404();

  v7 = PKLTRString();

  if (v7)
  {
    sub_1BE052434();

    return;
  }

  __break(1u);
LABEL_8:
  __break(1u);
}

id sub_1BD1694E4(void *a1, id a2)
{
  v2 = a2;
  v4 = &selRef_cardType;
  if ([a2 cardType] || (v4 = &selRef_credentialType, result = objc_msgSend(a1, sel_credentialType), v2 = a1, result))
  {
    [v2 *v4];
    result = PKDisplayablePaymentNetworkNameForPaymentCredentialType();
    if (result)
    {
      v6 = result;
      v7 = sub_1BE052434();

      return v7;
    }
  }

  return result;
}

uint64_t sub_1BD169584()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AC58);
  MEMORY[0x1EEE9AC00](v0, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1BD16BE20();
  sub_1BD16BFE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AC48);
  sub_1BD1103C8();
  sub_1BD0DE4F4(&qword_1EBD3AC40, &qword_1EBD3AC48);
  sub_1BD171550();
  return sub_1BE051A34();
}

id sub_1BD169724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v208 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACF8);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v209 = &v201 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v207 = (&v201 - v8);
  v9 = sub_1BE04BD74();
  v236 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v203 = &v201 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v210 = &v201 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v211 = &v201 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v220 = &v201 - v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v201 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AD00);
  v26 = *(v25 - 8);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v227 = &v201 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v226 = &v201 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v217 = &v201 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v202 = &v201 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v228 = &v201 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v229 = &v201 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v230 = &v201 - v47;
  MEMORY[0x1EEE9AC00](v46, v48);
  v225 = &v201 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AD08);
  v52 = MEMORY[0x1EEE9AC00](v50 - 8, v51);
  v215 = &v201 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v52, v54);
  v216 = &v201 - v56;
  v58 = MEMORY[0x1EEE9AC00](v55, v57);
  v214 = &v201 - v59;
  MEMORY[0x1EEE9AC00](v58, v60);
  v62 = &v201 - v61;
  v63 = *(type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet(0) + 20);
  v206 = a1;
  v64 = (a1 + v63);
  v65 = *v64;
  v66 = v64[1];
  v67 = *(v64 + 16);
  v68 = v64[3];
  v231 = v66;
  v232 = v65;
  *&v265 = v65;
  *(&v265 + 1) = v66;
  v234 = v67;
  LOBYTE(v266) = v67;
  v235 = v68;
  *(&v266 + 1) = v68;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AD10);
  sub_1BE0516A4();
  v69 = v258;
  v70 = [v258 cardholderName];
  v71 = MEMORY[0x1E69B8058];
  v221 = v62;
  v212 = v26;
  v213 = v25;
  if (v70)
  {
    v72 = v70;
    v73 = sub_1BE052434();
    v223 = v74;
    v224 = v73;

    v75 = v236;
    (*(v236 + 104))(v24, *v71, v9);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v77 = result;
    v78 = v9;
    v79 = v75;
    v80 = sub_1BE04B6F4();
    v82 = v81;

    (*(v75 + 8))(v24, v78);
    *&v265 = v232;
    *(&v265 + 1) = v231;
    LOBYTE(v266) = v234;
    *(&v266 + 1) = v235;
    sub_1BE0516A4();

    v83 = v259;
    *&v265 = v80;
    *(&v265 + 1) = v82;
    sub_1BD0DDEBC();
    v84 = sub_1BE0506C4();
    v86 = v85;
    v88 = v87;
    v90 = v89;
    *&v265 = v224;
    *(&v265 + 1) = v223;
    v91 = sub_1BE0506C4();
    LOBYTE(v265) = v88 & 1;
    *&v258 = v84;
    *(&v258 + 1) = v86;
    LOBYTE(v259) = v88 & 1;
    *(&v259 + 1) = v251;
    DWORD1(v259) = *(&v251 + 3);
    *(&v259 + 1) = v90;
    *&v260 = v91;
    *(&v260 + 1) = v92;
    LOBYTE(v261) = v93 & 1;
    *(&v261 + 1) = v244;
    DWORD1(v261) = *(&v244 + 3);
    *(&v261 + 1) = v94;
    v262 = v83;
    sub_1BE052434();
    sub_1BD171AC4();
    v95 = v225;
    sub_1BE050DE4();

    v267 = v260;
    v268 = v261;
    v269 = v262;
    v265 = v258;
    v266 = v259;
    sub_1BD171B18(&v265);
    v96 = v221;
    sub_1BD171B48(v95, v221);
    (*(v212 + 56))(v96, 0, 1, v213);
  }

  else
  {

    (*(v26 + 56))(v62, 1, 1, v25);
    v78 = v9;
    v79 = v236;
  }

  v97 = *(v79 + 104);
  v98 = v220;
  LODWORD(v224) = *MEMORY[0x1E69B8058];
  v225 = (v79 + 104);
  v223 = v97;
  v97(v220);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v99 = result;
  v100 = sub_1BE04B6F4();
  v218 = v101;
  v219 = v100;

  v102 = *(v79 + 8);
  v236 = v79 + 8;
  v220 = v102;
  (v102)(v98, v78);
  v104 = v231;
  v103 = v232;
  *&v265 = v232;
  *(&v265 + 1) = v231;
  v105 = v234;
  LOBYTE(v266) = v234;
  v106 = v235;
  *(&v266 + 1) = v235;
  sub_1BE0516A4();
  v222 = v78;
  v107 = v258;
  sub_1BD170044(*(&v258 + 1), v259);
  v109 = v108;
  v111 = v110;

  *&v265 = v103;
  *(&v265 + 1) = v104;
  LOBYTE(v266) = v105;
  *(&v266 + 1) = v106;
  sub_1BE0516A4();

  LOBYTE(v104) = v259;
  *&v265 = v219;
  *(&v265 + 1) = v218;
  v112 = sub_1BD0DDEBC();
  v113 = sub_1BE0506C4();
  v115 = v114;
  v117 = v116;
  v119 = v118;
  *&v265 = v109;
  *(&v265 + 1) = v111;
  v219 = v112;
  v120 = sub_1BE0506C4();
  v121 = v222;
  LOBYTE(v265) = v117 & 1;
  *&v258 = v113;
  *(&v258 + 1) = v115;
  LOBYTE(v259) = v117 & 1;
  *(&v259 + 1) = *v264;
  DWORD1(v259) = *&v264[3];
  *(&v259 + 1) = v119;
  *&v260 = v120;
  *(&v260 + 1) = v122;
  LOBYTE(v261) = v123 & 1;
  *(&v261 + 1) = *v263;
  DWORD1(v261) = *&v263[3];
  *(&v261 + 1) = v124;
  v262 = v104;
  sub_1BE052434();
  v218 = sub_1BD171AC4();
  sub_1BE050DE4();

  v267 = v260;
  v268 = v261;
  v269 = v262;
  v265 = v258;
  v266 = v259;
  sub_1BD171B18(&v265);
  v125 = v211;
  v223(v211, v224, v121);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v126 = result;
  v127 = sub_1BE04B6F4();
  v204 = v128;
  v205 = v127;

  (v220)(v125, v121);
  v130 = v231;
  v129 = v232;
  *&v258 = v232;
  *(&v258 + 1) = v231;
  v131 = v234;
  LOBYTE(v259) = v234;
  v132 = v235;
  *(&v259 + 1) = v235;
  sub_1BE0516A4();
  v133 = v251;
  sub_1BD1693EC(v251, *(&v251 + 1), v252);
  v135 = v134;
  v137 = v136;

  *&v258 = v129;
  *(&v258 + 1) = v130;
  LOBYTE(v259) = v131;
  *(&v259 + 1) = v132;
  sub_1BE0516A4();

  LOBYTE(v129) = v252;
  *&v258 = v205;
  *(&v258 + 1) = v204;
  v138 = sub_1BE0506C4();
  v140 = v139;
  v142 = v141;
  v144 = v143;
  *&v258 = v135;
  *(&v258 + 1) = v137;
  v145 = v222;
  v146 = sub_1BE0506C4();
  LOBYTE(v258) = v142 & 1;
  *&v251 = v138;
  *(&v251 + 1) = v140;
  LOBYTE(v252) = v142 & 1;
  *(&v252 + 1) = *v257;
  DWORD1(v252) = *&v257[3];
  *(&v252 + 1) = v144;
  *&v253 = v146;
  *(&v253 + 1) = v147;
  LOBYTE(v254) = v148 & 1;
  *(&v254 + 1) = *v256;
  DWORD1(v254) = *&v256[3];
  *(&v254 + 1) = v149;
  v255 = v129;
  sub_1BE052434();
  sub_1BE050DE4();

  v260 = v253;
  v261 = v254;
  v262 = v255;
  v258 = v251;
  v259 = v252;
  sub_1BD171B18(&v258);
  v150 = v210;
  v223(v210, v224, v145);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v151 = result;
  v211 = sub_1BE04B6F4();
  v205 = v152;

  (v220)(v150, v145);
  v154 = v231;
  v153 = v232;
  *&v251 = v232;
  *(&v251 + 1) = v231;
  v155 = v234;
  LOBYTE(v252) = v234;
  v156 = v235;
  *(&v252 + 1) = v235;
  sub_1BE0516A4();
  v157 = v244;
  v204 = sub_1BD170148(*(&v244 + 1), v245);
  v159 = v158;
  v161 = v160;
  v210 = v162;

  *&v251 = v153;
  *(&v251 + 1) = v154;
  LOBYTE(v252) = v155;
  *(&v252 + 1) = v156;
  sub_1BE0516A4();

  LOBYTE(v151) = v245;
  *&v251 = v211;
  *(&v251 + 1) = v205;
  v163 = sub_1BE0506C4();
  LOBYTE(v251) = v164 & 1;
  *&v244 = v163;
  *(&v244 + 1) = v165;
  LOBYTE(v245) = v164 & 1;
  *(&v245 + 1) = *v250;
  DWORD1(v245) = *&v250[3];
  *(&v245 + 1) = v166;
  *&v246 = v204;
  *(&v246 + 1) = v159;
  LOBYTE(v247) = v161 & 1;
  *(&v247 + 1) = *v249;
  DWORD1(v247) = *&v249[3];
  *(&v247 + 1) = v210;
  v248 = v151;
  sub_1BE052434();
  sub_1BE050DE4();

  v253 = v246;
  v254 = v247;
  v255 = v248;
  v251 = v244;
  v252 = v245;
  sub_1BD171B18(&v251);
  *&v244 = v153;
  *(&v244 + 1) = v154;
  LOBYTE(v245) = v155;
  *(&v245 + 1) = v156;
  sub_1BE0516A4();
  v167 = v237;
  v168 = sub_1BD1694E4(v237, *(&v237 + 1));
  v170 = v169;

  if (!v170)
  {
    v191 = v214;
    (*(v212 + 56))(v214, 1, 1, v213);
    goto LABEL_12;
  }

  v171 = v153;
  v172 = v168;
  v173 = v203;
  v174 = v222;
  v223(v203, v224, v222);
  result = PKPassKitBundle();
  if (result)
  {
    v175 = result;
    v176 = sub_1BE04B6F4();
    v178 = v177;

    (v220)(v173, v174);
    *&v244 = v171;
    *(&v244 + 1) = v154;
    LOBYTE(v245) = v234;
    *(&v245 + 1) = v235;
    sub_1BE0516A4();

    v179 = v238;
    *&v244 = v176;
    *(&v244 + 1) = v178;
    v180 = sub_1BE0506C4();
    v182 = v181;
    LOBYTE(v178) = v183;
    v185 = v184;
    *&v244 = v172;
    *(&v244 + 1) = v170;
    v186 = sub_1BE0506C4();
    LOBYTE(v244) = v178 & 1;
    *&v237 = v180;
    *(&v237 + 1) = v182;
    LOBYTE(v238) = v178 & 1;
    *(&v238 + 1) = *v243;
    DWORD1(v238) = *&v243[3];
    *(&v238 + 1) = v185;
    *&v239 = v186;
    *(&v239 + 1) = v187;
    LOBYTE(v240) = v188 & 1;
    *(&v240 + 1) = *v242;
    DWORD1(v240) = *&v242[3];
    *(&v240 + 1) = v189;
    v241 = v179;
    sub_1BE052434();
    v190 = v202;
    sub_1BE050DE4();

    v246 = v239;
    v247 = v240;
    v248 = v241;
    v244 = v237;
    v245 = v238;
    sub_1BD171B18(&v244);
    v191 = v214;
    sub_1BD171B48(v190, v214);
    (*(v212 + 56))(v191, 0, 1, v213);
LABEL_12:
    v192 = sub_1BE04F504();
    v193 = v207;
    *v207 = v192;
    *(v193 + 8) = 0;
    *(v193 + 16) = 1;
    v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AD20);
    sub_1BD16A8F8(v206, v193 + *(v194 + 44));
    v195 = v216;
    sub_1BD0DE19C(v221, v216, &qword_1EBD3AD08);
    v196 = v217;
    sub_1BD0DE19C(v230, v217, &qword_1EBD3AD00);
    sub_1BD0DE19C(v229, v226, &qword_1EBD3AD00);
    sub_1BD0DE19C(v228, v227, &qword_1EBD3AD00);
    sub_1BD0DE19C(v191, v215, &qword_1EBD3AD08);
    v197 = v209;
    sub_1BD0DE19C(v193, v209, &qword_1EBD3ACF8);
    v198 = v208;
    sub_1BD0DE19C(v195, v208, &qword_1EBD3AD08);
    v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AD28);
    sub_1BD0DE19C(v196, v198 + v199[12], &qword_1EBD3AD00);
    sub_1BD0DE19C(v226, v198 + v199[16], &qword_1EBD3AD00);
    sub_1BD0DE19C(v227, v198 + v199[20], &qword_1EBD3AD00);
    v200 = v215;
    sub_1BD0DE19C(v215, v198 + v199[24], &qword_1EBD3AD08);
    sub_1BD0DE19C(v197, v198 + v199[28], &qword_1EBD3ACF8);
    sub_1BD0DE53C(v193, &qword_1EBD3ACF8);
    sub_1BD0DE53C(v214, &qword_1EBD3AD08);
    sub_1BD0DE53C(v228, &qword_1EBD3AD00);
    sub_1BD0DE53C(v229, &qword_1EBD3AD00);
    sub_1BD0DE53C(v230, &qword_1EBD3AD00);
    sub_1BD0DE53C(v221, &qword_1EBD3AD08);
    sub_1BD0DE53C(v197, &qword_1EBD3ACF8);
    sub_1BD0DE53C(v200, &qword_1EBD3AD08);
    sub_1BD0DE53C(v227, &qword_1EBD3AD00);
    sub_1BD0DE53C(v226, &qword_1EBD3AD00);
    sub_1BD0DE53C(v217, &qword_1EBD3AD00);
    return sub_1BD0DE53C(v216, &qword_1EBD3AD08);
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_1BD16A8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a1;
  v113 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v99 - v8;
  v124 = type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet(0);
  v122 = *(v124 - 8);
  v10 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v124, v11);
  v12 = sub_1BE04BD74();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v119 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v99 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v99 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v121 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v111 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v28);
  v125 = &v99 - v29;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AD30);
  v115 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117, v30);
  v114 = &v99 - v31;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AD38);
  MEMORY[0x1EEE9AC00](v116, v32);
  v118 = &v99 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AD40);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v110 = &v99 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v38);
  v120 = &v99 - v39;
  v40 = v13;
  v41 = *(v13 + 104);
  v127 = *MEMORY[0x1E69B8058];
  v128 = v13 + 104;
  v129 = v12;
  v126 = v41;
  v41(v23);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v43 = result;
  v112 = v24;
  v108 = v9;
  v109 = v6;
  v44 = sub_1BE04B6F4();
  v46 = v45;

  v49 = *(v40 + 8);
  v48 = v40 + 8;
  v47 = v49;
  v50 = v129;
  v49(v23, v129);
  *&v132 = v44;
  *(&v132 + 1) = v46;
  v51 = v123;
  sub_1BD170F0C(v123, &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet);
  v52 = *(v122 + 80);
  v53 = (v52 + 16) & ~v52;
  v107 = v10;
  v105 = v52;
  v54 = swift_allocObject();
  v106 = v53;
  v122 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD1719A4(v122, v54 + v53, type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet);
  v55 = sub_1BD0DDEBC();
  sub_1BE051744();
  v126(v20, v127, v50);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v56 = result;
  v57 = sub_1BE04B6F4();
  v59 = v58;

  v102 = v48;
  v100 = v47;
  v47(v20, v129);
  *&v132 = v57;
  *(&v132 + 1) = v59;
  v101 = v55;
  v60 = sub_1BE0506C4();
  v62 = v61;
  LOBYTE(v57) = v63;
  v104 = v64;
  v65 = v51 + *(v124 + 28);
  v66 = *v65;
  v67 = *(v65 + 8);
  LOBYTE(v130) = v66;
  v131 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  v68 = sub_1BE0516C4();
  v103 = &v99;
  MEMORY[0x1EEE9AC00](v68, v69);
  v99 = sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  v70 = v112;
  v71 = v114;
  v72 = v125;
  sub_1BE050C54();

  sub_1BD0DDF10(v60, v62, v57 & 1);

  v125 = *(v121 + 8);
  (v125)(v72, v70);
  v73 = v124;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v74 = v132;
  KeyPath = swift_getKeyPath();
  v76 = swift_allocObject();
  *(v76 + 16) = v74;
  v77 = v118;
  (*(v115 + 32))(v118, v71, v117);
  v78 = (v77 + *(v116 + 36));
  *v78 = KeyPath;
  v78[1] = sub_1BD10DF54;
  v78[2] = v76;
  sub_1BE052434();
  sub_1BD171DA8();
  v79 = v120;
  sub_1BE050DE4();

  sub_1BD0DE53C(v77, &qword_1EBD3AD38);
  v80 = v51 + *(v73 + 20);
  v81 = *(v80 + 16);
  v82 = *(v80 + 24);
  v132 = *v80;
  v133 = v81;
  v134 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AD10);
  sub_1BE0516A4();

  v83 = v119;
  v126(v119, v127, v129);
  result = PKPassKitBundle();
  if (result)
  {
    v84 = result;
    v85 = sub_1BE04B6F4();
    v87 = v86;

    v100(v83, v129);
    *&v132 = v85;
    *(&v132 + 1) = v87;
    v88 = v122;
    sub_1BD170F0C(v51, v122, type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet);
    v89 = v106;
    v90 = swift_allocObject();
    sub_1BD1719A4(v88, v90 + v89, type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet);
    v91 = v111;
    sub_1BE051744();
    sub_1BE052434();
    v92 = v108;
    sub_1BE050DE4();

    (v125)(v91, v70);
    v93 = v110;
    sub_1BD0DE19C(v79, v110, &qword_1EBD3AD40);
    v94 = v79;
    v95 = v109;
    sub_1BD0DE19C(v92, v109, &unk_1EBD45200);
    v96 = v113;
    sub_1BD0DE19C(v93, v113, &qword_1EBD3AD40);
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AD50);
    v98 = v96 + *(v97 + 48);
    *v98 = 0;
    *(v98 + 8) = 1;
    sub_1BD0DE19C(v95, v96 + *(v97 + 64), &unk_1EBD45200);
    sub_1BD0DE53C(v92, &unk_1EBD45200);
    sub_1BD0DE53C(v94, &qword_1EBD3AD40);
    sub_1BD0DE53C(v95, &unk_1EBD45200);
    return sub_1BD0DE53C(v93, &qword_1EBD3AD40);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1BD16B4E4()
{
  type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

id sub_1BD16B558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v3 = type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x1E69B8058], v7);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_1BE04B6F4();
    v16 = v15;

    (*(v8 + 8))(v11, v7);
    v19[2] = v14;
    v19[3] = v16;
    sub_1BD170F0C(a1, v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet);
    v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v18 = swift_allocObject();
    sub_1BD1719A4(v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet);
    sub_1BD0DDEBC();
    return sub_1BE051744();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD16B7A4(uint64_t a1)
{
  v2 = type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = sub_1BE0528D4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1BD170F0C(a1, v6, type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet);
  sub_1BE0528A4();
  v12 = sub_1BE052894();
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_1BD1719A4(v6, v14 + v13, type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet);
  sub_1BD122C00(0, 0, v10, &unk_1BE0BB968, v14);
}

uint64_t sub_1BD16B978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1BE0528A4();
  v4[3] = sub_1BE052894();
  v6 = sub_1BE052844();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD16BA10, v6, v5);
}

uint64_t sub_1BD16BA10()
{
  type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet(0);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1BD16BAB4;

  return sub_1BD16EB40();
}

uint64_t sub_1BD16BAB4()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1BD1724EC, v3, v2);
}

id sub_1BD16BBD4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8058], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD16BD40(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet(0) + 20);
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1BE048964();
  v4 = v2;
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AD10);
  sub_1BE0516A4();
  sub_1BE0516B4();
}

id sub_1BD16BE20()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B8058], v0);
  result = PKPassKitBundle();
  if (result)
  {
    v6 = result;
    v7 = sub_1BE04B6F4();
    v9 = v8;

    (*(v1 + 8))(v4, v0);
    v15 = v7;
    v16 = v9;
    sub_1BD0DDEBC();
    v10 = sub_1BE0506C4();
    v12 = v11;
    v15 = v10;
    v16 = v11;
    LOBYTE(v9) = v13 & 1;
    v17 = v13 & 1;
    v18 = v14;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v10, v12, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD16BFE8()
{
  v0 = sub_1BE04F7C4();
  v11 = 1;
  sub_1BD16C1C4(&v18);
  v14 = v20;
  v15 = v21;
  v12 = v18;
  v13 = v19;
  v17[2] = v20;
  v17[3] = v21;
  v17[4] = v22;
  v17[1] = v19;
  v16 = v22;
  v17[0] = v18;
  sub_1BD0DE19C(&v12, &v7, &qword_1EBD3ACE8);
  sub_1BD0DE53C(v17, &qword_1EBD3ACE8);
  *&v10[23] = v13;
  *&v10[39] = v14;
  *&v10[55] = v15;
  *&v10[71] = v16;
  *&v10[7] = v12;
  v1 = v11;
  v2 = sub_1BE050454();
  KeyPath = swift_getKeyPath();
  v4 = sub_1BE04FC94();
  v5 = swift_getKeyPath();
  *&v8[33] = *&v10[32];
  *&v8[49] = *&v10[48];
  *&v8[65] = *&v10[64];
  *&v8[1] = *v10;
  v7 = v0;
  v8[0] = v1;
  *&v8[17] = *&v10[16];
  *&v8[80] = *&v10[79];
  *&v8[88] = KeyPath;
  *v9 = v2;
  *&v9[8] = v4;
  *&v9[16] = v5;
  v9[24] = 0;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AC68);
  sub_1BD17160C();
  sub_1BE050DE4();

  v24 = *&v8[80];
  v25[0] = *v9;
  *(v25 + 9) = *&v9[9];
  v20 = *&v8[16];
  v21 = *&v8[32];
  v22 = *&v8[48];
  v23 = *&v8[64];
  v18 = v7;
  v19 = *v8;
  return sub_1BD0DE53C(&v18, &qword_1EBD3AC68);
}

id sub_1BD16C1C4@<X0>(uint64_t *a1@<X8>)
{
  v79 = a1;
  v1 = sub_1BE04A564();
  v77 = *(v1 - 8);
  v78 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v76 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1BE04A574();
  v70 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v4);
  v72 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04A594();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v69 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v68 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACF0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v71 = &v62 - v14;
  v15 = sub_1BE04A5B4();
  v74 = *(v15 - 8);
  v75 = v15;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v62 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v63 = &v62 - v20;
  v21 = sub_1BE04BD74();
  v22 = *(v21 - 8);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = &v62 - v28;
  v30 = *MEMORY[0x1E69B8058];
  v31 = *(v22 + 104);
  v31(&v62 - v28, v30, v21);
  result = PKPassKitBundle();
  if (result)
  {
    v33 = result;
    v34 = sub_1BE04B6F4();
    v36 = v35;

    v66 = *(v22 + 8);
    v66(v29, v21);
    v80 = v34;
    v81 = v36;
    sub_1BD0DDEBC();
    v37 = sub_1BE0506C4();
    v39 = v38;
    v67 = v40;
    v42 = v41;
    v31(v26, v30, v21);
    result = PKPassKitBundle();
    if (result)
    {
      v43 = result;
      v64 = v39;
      v65 = v42;
      v44 = v37;
      sub_1BE04B6F4();

      v66(v26, v21);
      v45 = sub_1BE04AA64();
      (*(*(v45 - 8) + 56))(v68, 1, 1, v45);
      (*(v70 + 104))(v72, *MEMORY[0x1E6968750], v73);
      (*(v77 + 104))(v76, *MEMORY[0x1E6968728], v78);
      sub_1BE04A584();
      v46 = v71;
      sub_1BE04A5A4();
      v48 = v74;
      v47 = v75;
      (*(v74 + 56))(v46, 0, 1, v75);
      v49 = v63;
      (*(v48 + 32))(v63, v46, v47);
      (*(v48 + 16))(v62, v49, v47);
      v50 = sub_1BE0506A4();
      v52 = v51;
      v54 = v53;
      v56 = v55 & 1;
      LOBYTE(v80) = v55 & 1;
      sub_1BD0D7F18(v50, v51, v55 & 1);
      v57 = *(v48 + 8);
      sub_1BE048C84();
      v57(v49, v47);
      sub_1BD0DDF10(v50, v52, v80);

      sub_1BD0D7F18(v50, v52, v56);
      sub_1BE048C84();
      LOBYTE(v47) = v67 & 1;
      LOBYTE(v80) = v67 & 1;
      v58 = v64;
      sub_1BD0D7F18(v44, v64, v67 & 1);
      v59 = v65;
      sub_1BE048C84();
      sub_1BD171A2C(0, 1, v50, v52, v56, v54);
      sub_1BD171A78(0, 1, v50, v52, v56, v54);
      v60 = v80;
      v61 = v79;
      *v79 = v44;
      v61[1] = v58;
      *(v61 + 16) = v60;
      v61[3] = v59;
      v61[4] = 0;
      v61[5] = 1;
      v61[6] = v50;
      v61[7] = v52;
      v61[8] = v56;
      v61[9] = v54;
      sub_1BD171A78(0, 1, v50, v52, v56, v54);
      sub_1BD0DDF10(v44, v58, v47);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}