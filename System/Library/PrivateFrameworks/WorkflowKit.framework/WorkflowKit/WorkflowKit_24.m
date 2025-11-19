uint64_t sub_1CA4BDB9C()
{
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  v126 = xmmword_1CA981350;
  *(inited + 16) = xmmword_1CA981350;
  strcpy((inited + 32), "DocumentTypes");
  *(inited + 46) = -4864;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 48) = &unk_1F4A00BC8;
  *(inited + 72) = v1;
  *(inited + 80) = 0xD000000000000010;
  v2 = MEMORY[0x1E69E6158];
  *(inited + 88) = 0x80000001CA9A8AF0;
  *(inited + 96) = 0x3038393434363836;
  *(inited + 104) = 0xE900000000000037;
  *(inited + 120) = v2;
  *(inited + 128) = 1701667150;
  *(inited + 136) = 0xE400000000000000;
  v3 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v139 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v140 = v11;
  v12 = &v117 - v139;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v137 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v138 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v136 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v117 - v136;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v3, v5, v6, v8, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v135 = v19;
  *(inited + 144) = v18;
  *(inited + 168) = v19;
  *(inited + 176) = 0x6D656863534C5255;
  *(inited + 184) = 0xEA00000000007365;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v130 = swift_allocObject();
  v134 = xmmword_1CA981310;
  *(v130 + 16) = xmmword_1CA981310;
  v20 = swift_initStackObject();
  v129 = v20;
  v125 = xmmword_1CA97EDF0;
  *(v20 + 16) = xmmword_1CA97EDF0;
  *(v20 + 32) = 0x736E6F69746341;
  *(v20 + 40) = 0xE700000000000000;
  v128 = swift_allocObject();
  *(v128 + 16) = v134;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981420;
  *(v21 + 32) = 0x79726F6765746143;
  *(v21 + 40) = 0xE800000000000000;
  v22 = *MEMORY[0x1E6996FE8];
  type metadata accessor for WFContentCategory(0);
  *(v21 + 48) = v22;
  *(v21 + 72) = v23;
  strcpy((v21 + 80), "CreationDate");
  *(v21 + 93) = 0;
  *(v21 + 94) = -5120;
  *(v21 + 120) = sub_1CA948CB8();
  __swift_allocate_boxed_opaque_existential_1((v21 + 96));
  v24 = v22;
  sub_1CA948C28();
  *(v21 + 128) = 0x7470697263736544;
  *(v21 + 136) = 0xEB000000006E6F69;
  *&v131 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v25 = swift_initStackObject();
  *(v25 + 16) = v134;
  *(v25 + 32) = @"DescriptionSummary";
  v26 = @"DescriptionSummary";
  v127 = inited;
  v27 = sub_1CA94C438();
  v123 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v124 = &v117;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v117 - v139;
  sub_1CA948D98();
  v33 = [v137 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v117 - v136;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v123, v29, v31, 0, 0, v32, v34);
  *(v25 + 64) = v135;
  *(v25 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA35B280(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v131;
  *(v21 + 144) = sub_1CA6B3784();
  *(v21 + 168) = v37;
  strcpy((v21 + 176), "Discontinued");
  *(v21 + 189) = 0;
  *(v21 + 190) = -5120;
  v38 = MEMORY[0x1E69E6370];
  *(v21 + 192) = 1;
  *(v21 + 216) = v38;
  *(v21 + 224) = 0x74616D726F46;
  *(v21 + 232) = 0xE600000000000000;
  *(v21 + 240) = 0x67736D2F2F3A6774;
  *(v21 + 248) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6158];
  *(v21 + 264) = MEMORY[0x1E69E6158];
  *(v21 + 272) = 0x696669746E656449;
  *(v21 + 280) = 0xEA00000000007265;
  *(v21 + 288) = 6779757;
  *(v21 + 296) = 0xE300000000000000;
  *(v21 + 312) = v39;
  strcpy((v21 + 320), "InputMapping");
  *(v21 + 333) = 0;
  *(v21 + 334) = -5120;
  v40 = swift_allocObject();
  v131 = xmmword_1CA9813C0;
  *(v40 + 16) = xmmword_1CA9813C0;
  v41 = v40;
  v132 = v40;
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1CA981370;
  strcpy((v42 + 32), "DestinationKey");
  *(v42 + 47) = -18;
  *(v42 + 48) = 1954047348;
  *(v42 + 56) = 0xE400000000000000;
  *(v42 + 72) = v39;
  *(v42 + 80) = 0x74616E6974736544;
  *(v42 + 88) = 0xEF657079546E6F69;
  strcpy((v42 + 96), "URLQueryValue");
  *(v42 + 110) = -4864;
  *(v42 + 120) = v39;
  *(v42 + 128) = 0x73616C436D657449;
  v124 = 0xE900000000000073;
  v122 = 0xD000000000000013;
  *(v42 + 136) = 0xE900000000000073;
  *(v42 + 144) = 0xD000000000000013;
  *(v42 + 152) = 0x80000001CA993390;
  *(v42 + 168) = v39;
  *(v42 + 176) = 0x654B656372756F53;
  *(v42 + 184) = 0xE900000000000079;
  strcpy((v42 + 192), "TelegramInput");
  *(v42 + 206) = -4864;
  *(v42 + 216) = v39;
  *(v42 + 224) = 0x7954656372756F53;
  *(v42 + 264) = v39;
  *(v42 + 232) = 0xEA00000000006570;
  *(v42 + 240) = 0x7475706E49;
  *(v42 + 248) = 0xE500000000000000;
  *(v41 + 32) = sub_1CA94C1E8();
  v43 = swift_allocObject();
  *(v43 + 16) = v131;
  *(v43 + 32) = 0x6574656D61726150;
  *(v43 + 40) = 0xEB00000000495572;
  *&v131 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v44 = swift_allocObject();
  *(v44 + 16) = v125;
  *(v44 + 32) = @"Class";
  *(v44 + 40) = 0xD000000000000014;
  *(v44 + 48) = 0x80000001CA99B500;
  *(v44 + 64) = v39;
  *(v44 + 72) = @"Label";
  v45 = @"Class";
  v46 = @"Label";
  v119 = v45;
  v120 = v46;
  v123 = sub_1CA94C438();
  v118 = v47;
  v48 = sub_1CA94C438();
  v50 = v49;
  *&v125 = &v117;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v117 - v139;
  sub_1CA948D98();
  v52 = [v137 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v117 - v136;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v55 = sub_1CA2F9F14(v123, v118, v48, v50, 0, 0, v51, v53);
  *(v44 + 104) = v135;
  *(v44 + 80) = v55;
  _s3__C3KeyVMa_0(0);
  *&v125 = v56;
  v123 = sub_1CA35B280(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v57 = v131;
  *(v43 + 48) = sub_1CA2F864C();
  *(v43 + 72) = v57;
  *(v43 + 80) = 0x654B656372756F53;
  *(v43 + 88) = 0xE900000000000079;
  strcpy((v43 + 96), "TelegramInput");
  *(v43 + 110) = -4864;
  v58 = MEMORY[0x1E69E6158];
  *(v43 + 120) = MEMORY[0x1E69E6158];
  *(v43 + 128) = 0x7954656372756F53;
  *(v43 + 168) = v58;
  *(v43 + 136) = 0xEA00000000006570;
  *(v43 + 144) = 0x7475706E49;
  *(v43 + 152) = 0xE500000000000000;
  v132[5] = sub_1CA94C1E8();
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1CA981400;
  *(v59 + 32) = v122;
  *(v59 + 40) = 0x80000001CA9ACAF0;
  *(v59 + 48) = 0xD00000000000001BLL;
  *(v59 + 56) = 0x80000001CA9BEDD0;
  *(v59 + 72) = v58;
  strcpy((v59 + 80), "DestinationKey");
  *(v59 + 95) = -18;
  *(v59 + 96) = 28532;
  *(v59 + 104) = 0xE200000000000000;
  *(v59 + 120) = v58;
  *(v59 + 128) = 0x74616E6974736544;
  *(v59 + 136) = 0xEF657079546E6F69;
  strcpy((v59 + 144), "URLQueryValue");
  *(v59 + 158) = -4864;
  *(v59 + 168) = v58;
  *(v59 + 176) = 0x73616C436D657449;
  *(v59 + 184) = v124;
  *(v59 + 192) = 0xD000000000000018;
  *(v59 + 200) = 0x80000001CA997190;
  *(v59 + 216) = v58;
  *(v59 + 224) = 0x6574656D61726150;
  *(v59 + 232) = 0xEB00000000495572;
  v60 = swift_allocObject();
  *(v60 + 16) = v126;
  *(v60 + 32) = @"AllowsTextEntry";
  *(v60 + 40) = 0;
  v61 = v119;
  *(v60 + 64) = MEMORY[0x1E69E6370];
  *(v60 + 72) = v61;
  *(v60 + 80) = 0xD00000000000001BLL;
  *(v60 + 88) = 0x80000001CA9BEDF0;
  v62 = v120;
  *(v60 + 104) = v58;
  *(v60 + 112) = v62;
  v63 = @"AllowsTextEntry";
  *&v126 = sub_1CA94C438();
  v124 = v64;
  v65 = sub_1CA94C438();
  v121 = v66;
  v122 = v65;
  v133 = &v117;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v117 - v139;
  sub_1CA948D98();
  v68 = v137;
  v69 = [v137 bundleURL];
  MEMORY[0x1EEE9AC00](v69);
  v70 = v136;
  sub_1CA948B68();

  v71 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v60 + 120) = sub_1CA2F9F14(v126, v124, v122, v121, 0, 0, v67, &v117 - v70);
  v72 = v135;
  *(v60 + 144) = v135;
  *(v60 + 152) = @"Placeholder";
  v73 = @"Placeholder";
  *&v126 = sub_1CA94C438();
  v124 = v74;
  v75 = sub_1CA94C438();
  v121 = v76;
  v122 = v75;
  v133 = &v117;
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v117 - v139;
  sub_1CA948D98();
  v78 = [v68 bundleURL];
  MEMORY[0x1EEE9AC00](v78);
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v80 = sub_1CA2F9F14(v126, v124, v122, v121, 0, 0, v77, &v117 - v70);
  *(v60 + 184) = v72;
  *(v60 + 160) = v80;
  sub_1CA94C1E8();
  v81 = v131;
  *(v59 + 240) = sub_1CA2F864C();
  *(v59 + 264) = v81;
  *(v59 + 272) = 0x654B656372756F53;
  *(v59 + 280) = 0xE900000000000079;
  *(v59 + 288) = 0x6D617267656C6554;
  *(v59 + 296) = 0xEF746361746E6F43;
  v82 = MEMORY[0x1E69E6158];
  *(v59 + 312) = MEMORY[0x1E69E6158];
  *(v59 + 320) = 0x7954656372756F53;
  *(v59 + 360) = v82;
  *(v59 + 328) = 0xEA00000000006570;
  *(v59 + 336) = 0x6574656D61726150;
  *(v59 + 344) = 0xE900000000000072;
  v83 = sub_1CA94C1E8();
  v84 = v132;
  v132[6] = v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v133 = v85;
  *(v21 + 336) = v84;
  *(v21 + 360) = v85;
  *(v21 + 368) = 1701667150;
  *(v21 + 376) = 0xE400000000000000;
  v86 = sub_1CA94C438();
  *&v131 = v87;
  v88 = sub_1CA94C438();
  v90 = v89;
  v132 = &v117;
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v117 - v139;
  sub_1CA948D98();
  v92 = [v137 bundleURL];
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v117 - v136;
  sub_1CA948B68();

  v94 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 384) = sub_1CA2F9F14(v86, v131, v88, v90, 0, 0, v91, v93);
  *(v21 + 408) = v135;
  *(v21 + 416) = 0xD000000000000010;
  *(v21 + 424) = 0x80000001CA9A8F60;
  v95 = sub_1CA94C438();
  v132 = v96;
  v97 = sub_1CA94C438();
  v99 = v98;
  v135 = &v117;
  MEMORY[0x1EEE9AC00](v97);
  v100 = &v117 - v139;
  sub_1CA948D98();
  v101 = [v137 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v117 - v136;
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v104 = sub_1CA2F9F14(v95, v132, v97, v99, 0, 0, v100, v102);
  v105 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v106 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v21 + 432) = v105;
  *(v21 + 456) = v106;
  *(v21 + 464) = 0xD000000000000011;
  *(v21 + 472) = 0x80000001CA99B240;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v107 = swift_allocObject();
  *(v107 + 16) = v134;
  v108 = MEMORY[0x1E69E6158];
  *(v107 + 32) = sub_1CA94C1E8();
  *(v21 + 504) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v21 + 480) = v107;
  v109 = sub_1CA94C1E8();
  v110 = v128;
  *(v128 + 32) = v109;
  v111 = v129;
  v129[6] = v110;
  v112 = v133;
  v111[9] = v133;
  v111[10] = 0x656D65686353;
  v111[15] = v108;
  v111[11] = 0xE600000000000000;
  v111[12] = 26484;
  v111[13] = 0xE200000000000000;
  v113 = sub_1CA94C1E8();
  v114 = v130;
  *(v130 + 32) = v113;
  v115 = v127;
  *(v127 + 216) = v112;
  *(v115 + 192) = v114;
  return sub_1CA94C1E8();
}

id sub_1CA4BEF3C()
{
  sub_1CA4BEFF0();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EC445BE0 = result;
  return result;
}

id static NSBundle.workflowKit.getter()
{
  if (qword_1EC442D88 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC445BE0;

  return v1;
}

unint64_t sub_1CA4BEFF0()
{
  result = qword_1EC4441F0;
  if (!qword_1EC4441F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4441F0);
  }

  return result;
}

uint64_t sub_1CA4BF068()
{
  v996 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  v989 = xmmword_1CA981380;
  *(inited + 16) = xmmword_1CA981380;
  v967 = 0xD000000000000011;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001CA9A8AD0;
  v1 = MEMORY[0x1E69E6158];
  v2 = sub_1CA94C1E8();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 48) = v2;
  v980 = v3;
  *(inited + 72) = v3;
  strcpy((inited + 80), "DocumentTypes");
  *(inited + 94) = -4864;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 96) = &unk_1F4A00CE8;
  *(inited + 120) = v4;
  strcpy((inited + 128), "ExportedTypes");
  *(inited + 142) = -4864;
  *(inited + 144) = &unk_1F4A00D58;
  v962 = v4;
  *(inited + 168) = v4;
  *(inited + 176) = 0xD000000000000010;
  v987 = 0xD000000000000010;
  *(inited + 184) = 0x80000001CA9A8AF0;
  *(inited + 192) = 0x3436363336313031;
  *(inited + 200) = 0xEA00000000003734;
  *(inited + 216) = v1;
  *(inited + 224) = 1701667150;
  *(inited + 232) = 0xE400000000000000;
  v5 = sub_1CA94C438();
  v7 = v6;
  v8 = sub_1CA94C438();
  v10 = v9;
  v11 = sub_1CA948E58();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v1002 = v13;
  v999 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v924 - v999;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v1001 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v1000 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v924 - v1000;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v14, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v997 = v21;
  *(inited + 240) = v20;
  *(inited + 264) = v21;
  *(inited + 272) = 0x6D656863534C5255;
  v946 = 0xEA00000000007365;
  *(inited + 280) = 0xEA00000000007365;
  v979 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v949 = swift_allocObject();
  v976 = xmmword_1CA981310;
  *(v949 + 16) = xmmword_1CA981310;
  v22 = swift_initStackObject();
  v948 = v22;
  v982 = xmmword_1CA9813C0;
  *(v22 + 16) = xmmword_1CA9813C0;
  *(v22 + 32) = 0x736E6F69746341;
  *(v22 + 40) = 0xE700000000000000;
  v981 = swift_allocObject();
  *(v981 + 16) = v989;
  v23 = swift_allocObject();
  v943 = xmmword_1CA9813F0;
  *(v23 + 16) = xmmword_1CA9813F0;
  strcpy((v23 + 32), "ActionKeywords");
  *(v23 + 47) = -18;
  v24 = sub_1CA94C438();
  v26 = v25;
  v27 = sub_1CA94C438();
  v29 = v28;
  v998 = &v924;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v924 - v999;
  sub_1CA948D98();
  v31 = [qword_1EDB9F690 bundleURL];
  MEMORY[0x1EEE9AC00](v31);
  v947 = inited;
  v32 = &v924 - v1000;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 48) = sub_1CA2F9F14(v24, v26, v27, v29, 0, 0, v30, v32);
  *(v23 + 72) = v997;
  *(v23 + 80) = 0x79726F6765746143;
  *(v23 + 88) = 0xE800000000000000;
  v34 = *MEMORY[0x1E6996FC8];
  type metadata accessor for WFContentCategory(0);
  v975 = v35;
  *(v23 + 96) = v34;
  *(v23 + 120) = v35;
  strcpy((v23 + 128), "CreationDate");
  *(v23 + 141) = 0;
  *(v23 + 142) = -5120;
  v974 = sub_1CA948CB8();
  *(v23 + 168) = v974;
  __swift_allocate_boxed_opaque_existential_1((v23 + 144));
  v953 = v34;
  sub_1CA948C28();
  *(v23 + 176) = 0x7470697263736544;
  *(v23 + 184) = 0xEB000000006E6F69;
  v977 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  v973 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v36 = swift_initStackObject();
  *(v36 + 16) = v982;
  *(v36 + 32) = @"DescriptionInput";
  v942 = @"DescriptionInput";
  v995 = sub_1CA94C438();
  v994 = v37;
  v38 = sub_1CA94C438();
  v993 = v39;
  v998 = &v924;
  MEMORY[0x1EEE9AC00](v38);
  v40 = v999;
  sub_1CA948D98();
  v41 = [qword_1EDB9F690 bundleURL];
  v992 = &v924;
  MEMORY[0x1EEE9AC00](v41);
  v42 = v1000;
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v36 + 40) = sub_1CA2F9F14(v995, v994, v38, v993, 0, 0, &v924 - v40, &v924 - v42);
  *(v36 + 64) = v997;
  *(v36 + 72) = @"DescriptionResult";
  v951 = @"DescriptionResult";
  v995 = sub_1CA94C438();
  v994 = v44;
  v993 = sub_1CA94C438();
  v46 = v45;
  v998 = &v924;
  MEMORY[0x1EEE9AC00](v993);
  sub_1CA948D98();
  v47 = [qword_1EDB9F690 bundleURL];
  MEMORY[0x1EEE9AC00](v47);
  sub_1CA948B68();

  v48 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v36 + 80) = sub_1CA2F9F14(v995, v994, v993, v46, 0, 0, &v924 - v40, &v924 - v42);
  v49 = v997;
  *(v36 + 104) = v997;
  *(v36 + 112) = @"DescriptionSummary";
  v941 = @"DescriptionSummary";
  v995 = sub_1CA94C438();
  v994 = v50;
  v993 = sub_1CA94C438();
  v52 = v51;
  v998 = &v924;
  MEMORY[0x1EEE9AC00](v993);
  v53 = &v924 - v999;
  sub_1CA948D98();
  v54 = [qword_1EDB9F690 bundleURL];
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v924 - v1000;
  sub_1CA948B68();

  v56 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v57 = sub_1CA2F9F14(v995, v994, v993, v52, 0, 0, v53, v55);
  *(v36 + 144) = v49;
  *(v36 + 120) = v57;
  type metadata accessor for DescriptionKey(0);
  v972 = v58;
  v971 = sub_1CA35B280(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v59 = v977;
  v60 = sub_1CA6B3784();
  v954 = v23;
  *(v23 + 192) = v60;
  *(v23 + 216) = v59;
  *(v23 + 224) = 0x74616D726F46;
  *(v23 + 232) = 0xE600000000000000;
  *(v23 + 240) = 0xD000000000000028;
  *(v23 + 248) = 0x80000001CA9C0C00;
  v61 = MEMORY[0x1E69E6158];
  *(v23 + 264) = MEMORY[0x1E69E6158];
  *(v23 + 272) = 0x696669746E656449;
  v970 = 0xEA00000000007265;
  *(v23 + 280) = 0xEA00000000007265;
  *(v23 + 288) = 0x657461657263;
  *(v23 + 296) = 0xE600000000000000;
  *(v23 + 312) = v61;
  strcpy((v23 + 320), "InputMapping");
  *(v23 + 333) = 0;
  *(v23 + 334) = -5120;
  v62 = swift_allocObject();
  v983 = xmmword_1CA981370;
  *(v62 + 16) = xmmword_1CA981370;
  v63 = v62;
  *&v968 = v62;
  v64 = swift_initStackObject();
  *(v64 + 16) = v989;
  v961 = 0x80000001CA9ACAF0;
  *(v64 + 32) = 0xD000000000000013;
  *(v64 + 40) = 0x80000001CA9ACAF0;
  v936 = 0x80000001CA9C0C30;
  v990 = 0xD000000000000014;
  *(v64 + 48) = 0xD000000000000014;
  *(v64 + 56) = 0x80000001CA9C0C30;
  *(v64 + 72) = v61;
  strcpy((v64 + 80), "DestinationKey");
  *(v64 + 95) = -18;
  *(v64 + 96) = 0x746E65746E6F63;
  *(v64 + 104) = 0xE700000000000000;
  *(v64 + 120) = v61;
  *(v64 + 128) = 0x74616E6974736544;
  *(v64 + 136) = 0xEF657079546E6F69;
  *(v64 + 144) = 0x74736275534C5255;
  *(v64 + 152) = 0xEF6E6F6974757469;
  *(v64 + 168) = v61;
  strcpy((v64 + 176), "MultipleItems");
  *(v64 + 190) = -4864;
  v65 = MEMORY[0x1E69E6370];
  *(v64 + 192) = 1;
  *(v64 + 216) = v65;
  *(v64 + 224) = 0x654B656372756F53;
  v66 = v65;
  *(v64 + 232) = 0xE900000000000079;
  strcpy((v64 + 240), "BearNoteInput");
  *(v64 + 254) = -4864;
  *(v64 + 264) = v61;
  *(v64 + 272) = 0x7954656372756F53;
  *(v64 + 312) = v61;
  *(v64 + 280) = 0xEA00000000006570;
  *(v64 + 288) = 0x7475706E49;
  *(v64 + 296) = 0xE500000000000000;
  *(v63 + 32) = sub_1CA94C1E8();
  v67 = swift_allocObject();
  v984 = xmmword_1CA981350;
  *(v67 + 16) = xmmword_1CA981350;
  strcpy((v67 + 32), "MultipleItems");
  *(v67 + 46) = -4864;
  *(v67 + 48) = 1;
  *(v67 + 72) = v66;
  *(v67 + 80) = 0x6574656D61726150;
  *(v67 + 88) = 0xEB00000000495572;
  v994 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v993 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v68 = swift_allocObject();
  v963 = xmmword_1CA97EDF0;
  *(v68 + 16) = xmmword_1CA97EDF0;
  *(v68 + 32) = @"Class";
  *(v68 + 40) = 0xD000000000000019;
  *(v68 + 48) = 0x80000001CA99B030;
  *(v68 + 64) = v61;
  *(v68 + 72) = @"Label";
  v978 = @"Class";
  v998 = @"Label";
  v69 = sub_1CA94C438();
  v992 = v70;
  v71 = sub_1CA94C438();
  v73 = v72;
  v995 = &v924;
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v924 - v999;
  sub_1CA948D98();
  v75 = [qword_1EDB9F690 bundleURL];
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v924 - v1000;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v78 = sub_1CA2F9F14(v69, v992, v71, v73, 0, 0, v74, v76);
  *(v68 + 104) = v997;
  *(v68 + 80) = v78;
  _s3__C3KeyVMa_0(0);
  v992 = v79;
  v991 = sub_1CA35B280(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v80 = v994;
  *(v67 + 96) = sub_1CA2F864C();
  *(v67 + 120) = v80;
  *(v67 + 128) = 0x654B656372756F53;
  *(v67 + 136) = 0xE900000000000079;
  strcpy((v67 + 144), "BearNoteInput");
  *(v67 + 158) = -4864;
  v81 = MEMORY[0x1E69E6158];
  *(v67 + 168) = MEMORY[0x1E69E6158];
  *(v67 + 176) = 0x7954656372756F53;
  *(v67 + 216) = v81;
  *(v67 + 184) = 0xEA00000000006570;
  *(v67 + 192) = 0x6574656D61726150;
  v995 = 0xE900000000000072;
  *(v67 + 200) = 0xE900000000000072;
  *(v968 + 40) = sub_1CA94C1E8();
  v82 = swift_allocObject();
  *(v82 + 16) = v989;
  strcpy((v82 + 32), "DestinationKey");
  *(v82 + 47) = -18;
  *(v82 + 48) = 0x656C746974;
  *(v82 + 56) = 0xE500000000000000;
  *(v82 + 72) = v81;
  *(v82 + 80) = 0x74616E6974736544;
  *(v82 + 88) = 0xEF657079546E6F69;
  strcpy((v82 + 96), "URLQueryValue");
  *(v82 + 110) = -4864;
  *(v82 + 120) = v81;
  *(v82 + 128) = 0x73616C436D657449;
  v988 = 0xE900000000000073;
  v985 = 0x80000001CA993390;
  *(v82 + 136) = 0xE900000000000073;
  *(v82 + 144) = 0xD000000000000013;
  *(v82 + 152) = 0x80000001CA993390;
  *(v82 + 168) = v81;
  *(v82 + 176) = 0x6574656D61726150;
  *(v82 + 184) = 0xEB00000000495572;
  v83 = swift_allocObject();
  *(v83 + 16) = v984;
  v986 = 0x80000001CA99B500;
  v84 = v978;
  v85 = v990;
  *(v83 + 32) = v978;
  *(v83 + 40) = v85;
  *(v83 + 48) = 0x80000001CA99B500;
  *(v83 + 64) = v81;
  *(v83 + 72) = @"Description";
  v978 = v84;
  v966 = @"Description";
  v965 = sub_1CA94C438();
  *&v964 = v86;
  v87 = sub_1CA94C438();
  v960 = v88;
  v969 = &v924;
  MEMORY[0x1EEE9AC00](v87);
  v89 = v999;
  sub_1CA948D98();
  v90 = [qword_1EDB9F690 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = v1000;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v83 + 80) = sub_1CA2F9F14(v965, v964, v87, v960, 0, 0, &v924 - v89, &v924 - v91);
  v93 = v997;
  v94 = v998;
  *(v83 + 104) = v997;
  *(v83 + 112) = v94;
  *&v964 = v94;
  v965 = sub_1CA94C438();
  v960 = v95;
  v96 = sub_1CA94C438();
  v959 = v97;
  v969 = &v924;
  MEMORY[0x1EEE9AC00](v96);
  sub_1CA948D98();
  v998 = qword_1EDB9F690;
  v98 = [qword_1EDB9F690 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v83 + 120) = sub_1CA2F9F14(v965, v960, v96, v959, 0, 0, &v924 - v89, &v924 - v91);
  *(v83 + 144) = v93;
  *(v83 + 152) = @"TextAlignment";
  v100 = MEMORY[0x1E69E6158];
  *(v83 + 184) = MEMORY[0x1E69E6158];
  *(v83 + 160) = 0x7468676952;
  *(v83 + 168) = 0xE500000000000000;
  v969 = @"TextAlignment";
  sub_1CA94C1E8();
  v101 = v994;
  *(v82 + 192) = sub_1CA2F864C();
  *(v82 + 216) = v101;
  *(v82 + 224) = 0x654B656372756F53;
  *(v82 + 232) = 0xE900000000000079;
  *(v82 + 240) = 0x6C74695472616542;
  v958 = 0xE900000000000065;
  *(v82 + 248) = 0xE900000000000065;
  *(v82 + 264) = v100;
  *(v82 + 272) = 0x7954656372756F53;
  *(v82 + 312) = v100;
  *(v82 + 280) = 0xEA00000000006570;
  *(v82 + 288) = 0x6574656D61726150;
  *(v82 + 296) = v995;
  *(v968 + 48) = sub_1CA94C1E8();
  v102 = swift_allocObject();
  *(v102 + 16) = v989;
  strcpy((v102 + 32), "DestinationKey");
  *(v102 + 47) = -18;
  *(v102 + 48) = 1936154996;
  *(v102 + 56) = 0xE400000000000000;
  *(v102 + 72) = v100;
  *(v102 + 80) = 0x74616E6974736544;
  *(v102 + 88) = 0xEF657079546E6F69;
  strcpy((v102 + 96), "URLQueryValue");
  *(v102 + 110) = -4864;
  *(v102 + 120) = v100;
  *(v102 + 128) = 0x73616C436D657449;
  *(v102 + 136) = v988;
  *(v102 + 144) = 0xD000000000000013;
  *(v102 + 152) = v985;
  *(v102 + 168) = v100;
  *(v102 + 176) = 0x6574656D61726150;
  *(v102 + 184) = 0xEB00000000495572;
  v103 = swift_allocObject();
  *(v103 + 16) = v989;
  *(v103 + 64) = v100;
  v104 = v978;
  v105 = v990;
  *(v103 + 32) = v978;
  *(v103 + 40) = v105;
  *(v103 + 48) = v986;
  v978 = v104;
  *(v103 + 72) = sub_1CA94C368();
  *(v103 + 80) = 0xD000000000000025;
  v944 = 0x80000001CA9ADCE0;
  v945 = 0xD000000000000025;
  *(v103 + 88) = 0x80000001CA9ADCE0;
  v106 = v966;
  *(v103 + 104) = v100;
  *(v103 + 112) = v106;
  v965 = v106;
  v107 = sub_1CA94C438();
  v959 = v108;
  v960 = v107;
  v109 = sub_1CA94C438();
  v111 = v110;
  v966 = &v924;
  MEMORY[0x1EEE9AC00](v109);
  v112 = &v924 - v999;
  sub_1CA948D98();
  v113 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v924 - v1000;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v103 + 120) = sub_1CA2F9F14(v960, v959, v109, v111, 0, 0, v112, v114);
  v116 = v964;
  *(v103 + 144) = v997;
  *(v103 + 152) = v116;
  v966 = v116;
  v117 = sub_1CA94C438();
  v959 = v118;
  v960 = v117;
  v119 = sub_1CA94C438();
  v957 = v120;
  *&v964 = &v924;
  MEMORY[0x1EEE9AC00](v119);
  v121 = v999;
  sub_1CA948D98();
  v122 = v998;
  v123 = [(__CFString *)v998 bundleURL];
  v956 = &v924;
  MEMORY[0x1EEE9AC00](v123);
  v124 = &v924 - v1000;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v103 + 160) = sub_1CA2F9F14(v960, v959, v119, v957, 0, 0, &v924 - v121, v124);
  *(v103 + 184) = v997;
  *(v103 + 192) = @"Placeholder";
  v952 = @"Placeholder";
  v126 = sub_1CA94C438();
  v959 = v127;
  v960 = v126;
  v128 = sub_1CA94C438();
  v957 = v129;
  *&v964 = &v924;
  MEMORY[0x1EEE9AC00](v128);
  sub_1CA948D98();
  v130 = [(__CFString *)v122 bundleURL];
  MEMORY[0x1EEE9AC00](v130);
  v131 = &v924 - v1000;
  sub_1CA948B68();

  v132 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v103 + 200) = sub_1CA2F9F14(v960, v959, v128, v957, 0, 0, &v924 - v121, v131);
  v133 = v969;
  *(v103 + 224) = v997;
  *(v103 + 232) = v133;
  v134 = MEMORY[0x1E69E6158];
  *(v103 + 264) = MEMORY[0x1E69E6158];
  *(v103 + 240) = 0x7468676952;
  *(v103 + 248) = 0xE500000000000000;
  v937 = v133;
  sub_1CA94C1E8();
  v135 = v994;
  *(v102 + 192) = sub_1CA2F864C();
  *(v102 + 216) = v135;
  *(v102 + 224) = 0x654B656372756F53;
  *(v102 + 232) = 0xE900000000000079;
  *(v102 + 240) = 0x7367615472616542;
  *(v102 + 248) = 0xE800000000000000;
  *(v102 + 264) = v134;
  *(v102 + 272) = 0x7954656372756F53;
  *(v102 + 312) = v134;
  *(v102 + 280) = 0xEA00000000006570;
  *(v102 + 288) = 0x6574656D61726150;
  *(v102 + 296) = v995;
  *(v968 + 56) = sub_1CA94C1E8();
  v136 = swift_allocObject();
  v964 = xmmword_1CA981400;
  *(v136 + 16) = xmmword_1CA981400;
  *(v136 + 32) = 0x74616E6974736544;
  *(v136 + 40) = 0xEF657079546E6F69;
  *(v136 + 48) = 0x43656C6261736944;
  *(v136 + 56) = 0xEF6B6361626C6C61;
  *(v136 + 72) = v134;
  *(v136 + 80) = 0x73616C436D657449;
  v960 = 0x80000001CA993A60;
  v137 = v990;
  *(v136 + 88) = v988;
  *(v136 + 96) = v137;
  *(v136 + 104) = 0x80000001CA993A60;
  v969 = 0x80000001CA9A8C50;
  v138 = v987;
  *(v136 + 120) = v134;
  *(v136 + 128) = v138;
  *(v136 + 136) = 0x80000001CA9A8C50;
  *(v136 + 144) = 1;
  *(v136 + 168) = MEMORY[0x1E69E6370];
  *(v136 + 176) = 0x6574656D61726150;
  *(v136 + 184) = 0xEB00000000495572;
  v139 = swift_allocObject();
  *(v139 + 16) = v982;
  v959 = 0x80000001CA99E620;
  v140 = v978;
  v141 = v967;
  *(v139 + 32) = v978;
  *(v139 + 40) = v141;
  *(v139 + 48) = 0x80000001CA99E620;
  v142 = v965;
  *(v139 + 64) = v134;
  *(v139 + 72) = v142;
  v933 = v140;
  v935 = v142;
  v965 = sub_1CA94C438();
  v957 = v143;
  v956 = sub_1CA94C438();
  v145 = v144;
  v978 = &v924;
  MEMORY[0x1EEE9AC00](v956);
  v146 = &v924 - v999;
  sub_1CA948D98();
  v147 = [(__CFString *)v122 bundleURL];
  MEMORY[0x1EEE9AC00](v147);
  v148 = v1000;
  sub_1CA948B68();

  v149 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v139 + 80) = sub_1CA2F9F14(v965, v957, v956, v145, 0, 0, v146, &v924 - v148);
  v150 = v997;
  v151 = v966;
  *(v139 + 104) = v997;
  *(v139 + 112) = v151;
  v934 = v151;
  v152 = sub_1CA94C438();
  v965 = v153;
  v966 = v152;
  v154 = sub_1CA94C438();
  v957 = v155;
  v978 = &v924;
  MEMORY[0x1EEE9AC00](v154);
  v156 = &v924 - v999;
  sub_1CA948D98();
  v157 = [(__CFString *)v998 bundleURL];
  v956 = &v924;
  MEMORY[0x1EEE9AC00](v157);
  sub_1CA948B68();

  v158 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v159 = sub_1CA2F9F14(v966, v965, v154, v957, 0, 0, v156, &v924 - v148);
  *(v139 + 144) = v150;
  *(v139 + 120) = v159;
  sub_1CA94C1E8();
  v160 = v994;
  *(v136 + 192) = sub_1CA2F864C();
  *(v136 + 216) = v160;
  *(v136 + 224) = 0x654B656372756F53;
  *(v136 + 232) = 0xE900000000000079;
  *(v136 + 240) = 0x7574655272616542;
  v955 = 0xEA00000000006E72;
  *(v136 + 248) = 0xEA00000000006E72;
  v161 = MEMORY[0x1E69E6158];
  *(v136 + 264) = MEMORY[0x1E69E6158];
  *(v136 + 272) = 0x7954656372756F53;
  *(v136 + 280) = 0xEA00000000006570;
  *(v136 + 288) = 0x6574656D61726150;
  *(v136 + 296) = v995;
  *(v136 + 312) = v161;
  strcpy((v136 + 320), "ValueMapping");
  *(v136 + 333) = 0;
  *(v136 + 334) = -5120;
  v162 = sub_1CA94C1E8();
  *(v136 + 360) = v980;
  *(v136 + 336) = v162;
  v163 = sub_1CA94C1E8();
  v164 = v968;
  *(v968 + 64) = v163;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v978 = v165;
  v166 = v954;
  *(v954 + 42) = v164;
  *(v166 + 45) = v165;
  *(v166 + 46) = 1701667150;
  *(v166 + 47) = 0xE400000000000000;
  v167 = sub_1CA94C438();
  v966 = v168;
  v169 = sub_1CA94C438();
  v171 = v170;
  *&v968 = &v924;
  MEMORY[0x1EEE9AC00](v169);
  v172 = &v924 - v999;
  sub_1CA948D98();
  v173 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v173);
  v174 = &v924 - v1000;
  sub_1CA948B68();

  v175 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v166 + 48) = sub_1CA2F9F14(v167, v966, v169, v171, 0, 0, v172, v174);
  *(v166 + 51) = v997;
  strcpy(v166 + 416, "OutputMapping");
  *(v166 + 215) = -4864;
  v957 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v176 = swift_allocObject();
  *(v176 + 16) = v976;
  *(v176 + 32) = sub_1CA94C1E8();
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  v956 = v177;
  *(v166 + 54) = v176;
  v966 = 0x80000001CA9A8F60;
  v178 = v987;
  *(v166 + 57) = v177;
  *(v166 + 58) = v178;
  *(v166 + 59) = 0x80000001CA9A8F60;
  v179 = sub_1CA94C438();
  v965 = v180;
  v181 = sub_1CA94C438();
  v183 = v182;
  *&v968 = &v924;
  MEMORY[0x1EEE9AC00](v181);
  v184 = &v924 - v999;
  sub_1CA948D98();
  v185 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v185);
  v186 = &v924 - v1000;
  sub_1CA948B68();

  v187 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v188 = sub_1CA2F9F14(v179, v965, v181, v183, 0, 0, v184, v186);
  v189 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v190 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v965 = v190;
  *(v166 + 60) = v189;
  v950 = 0xD00000000000001ELL;
  *(v166 + 63) = v190;
  *(v166 + 64) = 0xD00000000000001ELL;
  v940 = 0x80000001CA9BA930;
  *(v166 + 65) = 0x80000001CA9BA930;
  *(v166 + 69) = MEMORY[0x1E69E6370];
  v166[528] = 1;
  *(v981 + 32) = sub_1CA94C1E8();
  v191 = swift_allocObject();
  *(v191 + 16) = xmmword_1CA9813E0;
  strcpy((v191 + 32), "ActionKeywords");
  *(v191 + 47) = -18;
  v192 = sub_1CA94C438();
  v194 = v193;
  v195 = sub_1CA94C438();
  v197 = v196;
  *&v968 = &v924;
  MEMORY[0x1EEE9AC00](v195);
  v198 = &v924 - v999;
  sub_1CA948D98();
  v199 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v199);
  v200 = &v924 - v1000;
  sub_1CA948B68();

  v201 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v191 + 48) = sub_1CA2F9F14(v192, v194, v195, v197, 0, 0, v198, v200);
  *(v191 + 72) = v997;
  *(v191 + 80) = 0x79726F6765746143;
  v202 = v953;
  *(v191 + 88) = 0xE800000000000000;
  *(v191 + 96) = v202;
  *(v191 + 120) = v975;
  strcpy((v191 + 128), "CreationDate");
  *(v191 + 141) = 0;
  *(v191 + 142) = -5120;
  *(v191 + 168) = v974;
  __swift_allocate_boxed_opaque_existential_1((v191 + 144));
  v938 = v202;
  sub_1CA948C28();
  *(v191 + 176) = 0x7470697263736544;
  *(v191 + 184) = 0xEB000000006E6F69;
  v203 = swift_allocObject();
  *(v203 + 16) = v963;
  v204 = v942;
  *(v203 + 32) = v942;
  v942 = v204;
  v953 = sub_1CA94C438();
  v939 = v205;
  v206 = sub_1CA94C438();
  v208 = v207;
  *&v968 = &v924;
  MEMORY[0x1EEE9AC00](v206);
  v209 = v999;
  sub_1CA948D98();
  v210 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v210);
  v211 = &v924 - v1000;
  sub_1CA948B68();

  v212 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v203 + 40) = sub_1CA2F9F14(v953, v939, v206, v208, 0, 0, &v924 - v209, v211);
  v213 = v997;
  v214 = v941;
  *(v203 + 64) = v997;
  *(v203 + 72) = v214;
  v939 = v214;
  v953 = sub_1CA94C438();
  v941 = v215;
  v216 = sub_1CA94C438();
  v932 = v217;
  *&v968 = &v924;
  MEMORY[0x1EEE9AC00](v216);
  sub_1CA948D98();
  v218 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v218);
  v219 = &v924 - v1000;
  sub_1CA948B68();

  v220 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v221 = sub_1CA2F9F14(v953, v941, v216, v932, 0, 0, &v924 - v209, v219);
  *(v203 + 104) = v213;
  *(v203 + 80) = v221;
  sub_1CA94C1E8();
  v222 = v977;
  v223 = sub_1CA6B3784();
  v954 = v191;
  *(v191 + 192) = v223;
  *(v191 + 216) = v222;
  *(v191 + 224) = 0x74616D726F46;
  *(v191 + 232) = 0xE600000000000000;
  *(v191 + 240) = 0xD00000000000002ELL;
  *(v191 + 248) = 0x80000001CA9C0EB0;
  v224 = MEMORY[0x1E69E6158];
  *(v191 + 264) = MEMORY[0x1E69E6158];
  *(v191 + 272) = 0x696669746E656449;
  *(v191 + 280) = v970;
  *(v191 + 288) = 6579297;
  *(v191 + 296) = 0xE300000000000000;
  *(v191 + 312) = v224;
  strcpy((v191 + 320), "InputMapping");
  *(v191 + 333) = 0;
  *(v191 + 334) = -5120;
  v225 = swift_allocObject();
  *(v225 + 16) = v989;
  v226 = v225;
  *&v968 = v225;
  v227 = swift_allocObject();
  *(v227 + 16) = v984;
  v228 = v961;
  *(v227 + 32) = 0xD000000000000013;
  *(v227 + 40) = v228;
  v229 = v936;
  *(v227 + 48) = v990;
  *(v227 + 56) = v229;
  *(v227 + 72) = v224;
  strcpy((v227 + 80), "DestinationKey");
  *(v227 + 95) = -18;
  *(v227 + 96) = 0x746E65746E6F63;
  *(v227 + 104) = 0xE700000000000000;
  *(v227 + 120) = v224;
  *(v227 + 128) = 0x74616E6974736544;
  *(v227 + 136) = 0xEF657079546E6F69;
  *(v227 + 144) = 0x74736275534C5255;
  *(v227 + 152) = 0xEF6E6F6974757469;
  *(v227 + 168) = v224;
  *(v227 + 176) = 0x7954656372756F53;
  *(v227 + 216) = v224;
  *(v227 + 184) = 0xEA00000000006570;
  *(v227 + 192) = 0x7475706E49;
  *(v227 + 200) = 0xE500000000000000;
  *(v226 + 32) = sub_1CA94C1E8();
  v230 = swift_allocObject();
  *(v230 + 16) = v964;
  strcpy((v230 + 32), "DestinationKey");
  *(v230 + 47) = -18;
  *(v230 + 48) = 1701869940;
  *(v230 + 56) = 0xE400000000000000;
  *(v230 + 72) = v224;
  *(v230 + 80) = 0x74616E6974736544;
  *(v230 + 88) = 0xEF657079546E6F69;
  *(v230 + 96) = 0x74736275534C5255;
  *(v230 + 104) = 0xEF6E6F6974757469;
  v231 = v987;
  *(v230 + 120) = v224;
  *(v230 + 128) = v231;
  *(v230 + 136) = v969;
  *(v230 + 144) = 1954047316;
  *(v230 + 152) = 0xE400000000000000;
  *(v230 + 168) = v224;
  *(v230 + 176) = 0x6574656D61726150;
  *(v230 + 184) = 0xEB00000000495572;
  v232 = swift_allocObject();
  *(v232 + 16) = v984;
  v932 = 0x80000001CA99C4A0;
  v936 = 0xD000000000000016;
  v233 = v933;
  *(v232 + 32) = v933;
  *(v232 + 40) = 0xD000000000000016;
  *(v232 + 48) = 0x80000001CA99C4A0;
  *(v232 + 64) = v224;
  *(v232 + 72) = @"DisallowedVariableTypes";
  *(v232 + 80) = &unk_1F4A00E98;
  *(v232 + 104) = v962;
  *(v232 + 112) = @"Items";
  v931 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v953 = swift_allocObject();
  v930 = xmmword_1CA981360;
  *&v953->data = xmmword_1CA981360;
  v929 = v233;
  v928 = @"DisallowedVariableTypes";
  v927 = @"Items";
  v933 = sub_1CA94C438();
  v926 = v234;
  v235 = sub_1CA94C438();
  v925 = v236;
  v941 = &v924;
  MEMORY[0x1EEE9AC00](v235);
  v237 = v999;
  sub_1CA948D98();
  v238 = [(__CFString *)v998 bundleURL];
  v924 = &v924;
  MEMORY[0x1EEE9AC00](v238);
  v239 = v1000;
  sub_1CA948B68();

  v240 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v241 = sub_1CA2F9F14(v933, v926, v235, v925, 0, 0, &v924 - v237, &v924 - v239);
  v953[1].isa = v241;
  v933 = sub_1CA94C438();
  v926 = v242;
  v925 = sub_1CA94C438();
  v244 = v243;
  v941 = &v924;
  MEMORY[0x1EEE9AC00](v925);
  sub_1CA948D98();
  v245 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v245);
  sub_1CA948B68();

  v246 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v247 = sub_1CA2F9F14(v933, v926, v925, v244, 0, 0, &v924 - v237, &v924 - v239);
  v248 = v953;
  v953[1].info = v247;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v933 = v249;
  *(v232 + 120) = v248;
  v250 = v934;
  *(v232 + 144) = v249;
  *(v232 + 152) = v250;
  v934 = v250;
  v941 = sub_1CA94C438();
  v926 = v251;
  v252 = sub_1CA94C438();
  v254 = v253;
  v953 = &v924;
  MEMORY[0x1EEE9AC00](v252);
  v255 = &v924 - v999;
  sub_1CA948D98();
  v256 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v256);
  v257 = &v924 - v1000;
  sub_1CA948B68();

  v258 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v259 = sub_1CA2F9F14(v941, v926, v252, v254, 0, 0, v255, v257);
  *(v232 + 184) = v997;
  *(v232 + 160) = v259;
  sub_1CA94C1E8();
  v260 = v994;
  *(v230 + 192) = sub_1CA2F864C();
  *(v230 + 216) = v260;
  *(v230 + 224) = 0x654B656372756F53;
  v941 = 0xD000000000000012;
  *(v230 + 232) = 0xE900000000000079;
  *(v230 + 240) = 0xD000000000000012;
  *(v230 + 248) = 0x80000001CA9C0F20;
  v261 = MEMORY[0x1E69E6158];
  *(v230 + 264) = MEMORY[0x1E69E6158];
  *(v230 + 272) = 0x7954656372756F53;
  *(v230 + 280) = 0xEA00000000006570;
  *(v230 + 288) = 0x6574656D61726150;
  *(v230 + 296) = v995;
  *(v230 + 312) = v261;
  strcpy((v230 + 320), "ValueMapping");
  *(v230 + 333) = 0;
  *(v230 + 334) = -5120;
  v262 = v261;
  v263 = sub_1CA94C1E8();
  *(v230 + 360) = v980;
  *(v230 + 336) = v263;
  *(v968 + 40) = sub_1CA94C1E8();
  v264 = swift_allocObject();
  *(v264 + 16) = v964;
  strcpy((v264 + 32), "DestinationKey");
  *(v264 + 47) = -18;
  *(v264 + 48) = 1701080941;
  *(v264 + 56) = 0xE400000000000000;
  *(v264 + 72) = v262;
  *(v264 + 80) = 0x74616E6974736544;
  *(v264 + 88) = 0xEF657079546E6F69;
  strcpy((v264 + 96), "URLQueryValue");
  *(v264 + 110) = -4864;
  v265 = v987;
  *(v264 + 120) = v262;
  *(v264 + 128) = v265;
  *(v264 + 136) = v969;
  *(v264 + 144) = 0x646E65707041;
  *(v264 + 152) = 0xE600000000000000;
  *(v264 + 168) = v262;
  *(v264 + 176) = 0x6574656D61726150;
  v266 = v262;
  *(v264 + 184) = 0xEB00000000495572;
  v267 = swift_allocObject();
  *(v267 + 16) = v984;
  v269 = v928;
  v268 = v929;
  v270 = v936;
  *(v267 + 32) = v929;
  *(v267 + 40) = v270;
  *(v267 + 48) = v932;
  *(v267 + 64) = v266;
  *(v267 + 72) = v269;
  *(v267 + 80) = &unk_1F4A00F38;
  v271 = v927;
  *(v267 + 104) = v962;
  *(v267 + 112) = v271;
  v953 = swift_allocObject();
  *&v953->data = v930;
  v936 = v268;
  v272 = v269;
  v273 = v271;
  v931 = sub_1CA94C438();
  *&v930 = v274;
  v275 = sub_1CA94C438();
  v928 = v276;
  v929 = v275;
  v932 = &v924;
  MEMORY[0x1EEE9AC00](v275);
  v277 = v999;
  sub_1CA948D98();
  v278 = v998;
  v279 = [(__CFString *)v998 bundleURL];
  v927 = &v924;
  MEMORY[0x1EEE9AC00](v279);
  v280 = v1000;
  sub_1CA948B68();

  v281 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v282 = sub_1CA2F9F14(v931, v930, v929, v928, 0, 0, &v924 - v277, &v924 - v280);
  v953[1].isa = v282;
  v931 = sub_1CA94C438();
  *&v930 = v283;
  v284 = sub_1CA94C438();
  v928 = v285;
  v929 = v284;
  v932 = &v924;
  MEMORY[0x1EEE9AC00](v284);
  sub_1CA948D98();
  v286 = [(__CFString *)v278 bundleURL];
  MEMORY[0x1EEE9AC00](v286);
  sub_1CA948B68();

  v287 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v288 = sub_1CA2F9F14(v931, v930, v929, v928, 0, 0, &v924 - v277, &v924 - v280);
  v289 = v953;
  v953[1].info = v288;
  *(v267 + 120) = v289;
  v290 = v934;
  *(v267 + 144) = v933;
  *(v267 + 152) = v290;
  v953 = v290;
  v291 = sub_1CA94C438();
  v933 = v292;
  v293 = sub_1CA94C438();
  v295 = v294;
  v934 = &v924;
  MEMORY[0x1EEE9AC00](v293);
  v296 = &v924 - v999;
  sub_1CA948D98();
  v297 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v297);
  v298 = &v924 - v1000;
  sub_1CA948B68();

  v299 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v300 = sub_1CA2F9F14(v291, v933, v293, v295, 0, 0, v296, v298);
  *(v267 + 184) = v997;
  *(v267 + 160) = v300;
  sub_1CA94C1E8();
  v301 = v994;
  *(v264 + 192) = sub_1CA2F864C();
  *(v264 + 216) = v301;
  *(v264 + 224) = 0x654B656372756F53;
  *(v264 + 232) = 0xE900000000000079;
  *(v264 + 240) = 0x65646F4D72616542;
  *(v264 + 248) = 0xE800000000000000;
  v302 = MEMORY[0x1E69E6158];
  *(v264 + 264) = MEMORY[0x1E69E6158];
  *(v264 + 272) = 0x7954656372756F53;
  *(v264 + 280) = 0xEA00000000006570;
  *(v264 + 288) = 0x6574656D61726150;
  *(v264 + 296) = v995;
  *(v264 + 312) = v302;
  strcpy((v264 + 320), "ValueMapping");
  *(v264 + 333) = 0;
  *(v264 + 334) = -5120;
  v303 = v302;
  v304 = sub_1CA94C1E8();
  *(v264 + 360) = v980;
  *(v264 + 336) = v304;
  *(v968 + 48) = sub_1CA94C1E8();
  v305 = swift_allocObject();
  *(v305 + 16) = v989;
  strcpy((v305 + 32), "DestinationKey");
  *(v305 + 47) = -18;
  *(v305 + 48) = 0x656C746974;
  *(v305 + 56) = 0xE500000000000000;
  *(v305 + 72) = v303;
  *(v305 + 80) = 0x74616E6974736544;
  *(v305 + 88) = 0xEF657079546E6F69;
  strcpy((v305 + 96), "URLQueryValue");
  *(v305 + 110) = -4864;
  *(v305 + 120) = v303;
  *(v305 + 128) = 0x73616C436D657449;
  *(v305 + 136) = v988;
  *(v305 + 144) = 0xD000000000000013;
  *(v305 + 152) = v985;
  *(v305 + 168) = v303;
  *(v305 + 176) = 0x6574656D61726150;
  v306 = v303;
  *(v305 + 184) = 0xEB00000000495572;
  v307 = swift_allocObject();
  *(v307 + 16) = v983;
  v308 = v936;
  v309 = v990;
  *(v307 + 32) = v936;
  *(v307 + 40) = v309;
  *(v307 + 48) = v986;
  *(v307 + 64) = v306;
  v310 = v935;
  *(v307 + 72) = v935;
  v934 = v308;
  v935 = v310;
  v311 = sub_1CA94C438();
  v932 = v312;
  v933 = v311;
  v313 = sub_1CA94C438();
  v931 = v314;
  v936 = &v924;
  MEMORY[0x1EEE9AC00](v313);
  v315 = &v924 - v999;
  sub_1CA948D98();
  v316 = v998;
  v317 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v317);
  v318 = &v924 - v1000;
  sub_1CA948B68();

  v319 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v307 + 80) = sub_1CA2F9F14(v933, v932, v313, v931, 0, 0, v315, v318);
  v320 = v953;
  *(v307 + 104) = v997;
  *(v307 + 112) = v320;
  v953 = v320;
  v321 = sub_1CA94C438();
  v932 = v322;
  v933 = v321;
  v323 = sub_1CA94C438();
  v931 = v324;
  v936 = &v924;
  MEMORY[0x1EEE9AC00](v323);
  v325 = v999;
  sub_1CA948D98();
  v326 = [(__CFString *)v316 bundleURL];
  MEMORY[0x1EEE9AC00](v326);
  v327 = &v924 - v1000;
  sub_1CA948B68();

  v328 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v307 + 120) = sub_1CA2F9F14(v933, v932, v323, v931, 0, 0, &v924 - v325, v327);
  v329 = v997;
  v330 = v952;
  *(v307 + 144) = v997;
  *(v307 + 152) = v330;
  v936 = v330;
  v331 = sub_1CA94C438();
  v932 = v332;
  v933 = v331;
  v333 = sub_1CA94C438();
  v931 = v334;
  v952 = &v924;
  MEMORY[0x1EEE9AC00](v333);
  sub_1CA948D98();
  v335 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v335);
  v336 = &v924 - v1000;
  sub_1CA948B68();

  v337 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v307 + 160) = sub_1CA2F9F14(v933, v932, v333, v931, 0, 0, &v924 - v325, v336);
  v338 = v937;
  *(v307 + 184) = v329;
  *(v307 + 192) = v338;
  v339 = MEMORY[0x1E69E6158];
  *(v307 + 224) = MEMORY[0x1E69E6158];
  *(v307 + 200) = 0x7468676952;
  *(v307 + 208) = 0xE500000000000000;
  v937 = v338;
  sub_1CA94C1E8();
  v340 = v994;
  *(v305 + 192) = sub_1CA2F864C();
  *(v305 + 216) = v340;
  *(v305 + 224) = 0x654B656372756F53;
  *(v305 + 232) = 0xE900000000000079;
  *(v305 + 240) = 0x6C74695472616542;
  *(v305 + 248) = v958;
  *(v305 + 264) = v339;
  *(v305 + 272) = 0x7954656372756F53;
  *(v305 + 312) = v339;
  *(v305 + 280) = 0xEA00000000006570;
  *(v305 + 288) = 0x6574656D61726150;
  *(v305 + 296) = v995;
  *(v968 + 56) = sub_1CA94C1E8();
  v341 = swift_allocObject();
  *(v341 + 16) = v989;
  strcpy((v341 + 32), "DestinationKey");
  *(v341 + 47) = -18;
  *(v341 + 48) = 25705;
  *(v341 + 56) = 0xE200000000000000;
  *(v341 + 72) = v339;
  *(v341 + 80) = 0x74616E6974736544;
  *(v341 + 88) = 0xEF657079546E6F69;
  strcpy((v341 + 96), "URLQueryValue");
  *(v341 + 110) = -4864;
  *(v341 + 120) = v339;
  *(v341 + 128) = 0x73616C436D657449;
  *(v341 + 136) = v988;
  *(v341 + 144) = 0xD000000000000013;
  *(v341 + 152) = v985;
  *(v341 + 168) = v339;
  *(v341 + 176) = 0x6574656D61726150;
  *(v341 + 184) = 0xEB00000000495572;
  v342 = swift_allocObject();
  *(v342 + 16) = v983;
  v343 = v934;
  v344 = v935;
  v345 = v990;
  *(v342 + 32) = v934;
  *(v342 + 40) = v345;
  *(v342 + 48) = v986;
  *(v342 + 64) = v339;
  *(v342 + 72) = v344;
  v934 = v343;
  v933 = v344;
  v935 = sub_1CA94C438();
  v932 = v346;
  v347 = sub_1CA94C438();
  v931 = v348;
  v952 = &v924;
  MEMORY[0x1EEE9AC00](v347);
  v349 = &v924 - v999;
  sub_1CA948D98();
  v350 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v350);
  v351 = v1000;
  sub_1CA948B68();

  v352 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v342 + 80) = sub_1CA2F9F14(v935, v932, v347, v931, 0, 0, v349, &v924 - v351);
  v353 = v997;
  v354 = v953;
  *(v342 + 104) = v997;
  *(v342 + 112) = v354;
  v935 = v354;
  v952 = sub_1CA94C438();
  v932 = v355;
  v356 = sub_1CA94C438();
  v931 = v357;
  v953 = &v924;
  MEMORY[0x1EEE9AC00](v356);
  v358 = &v924 - v999;
  sub_1CA948D98();
  v359 = [(__CFString *)v998 bundleURL];
  *&v930 = &v924;
  MEMORY[0x1EEE9AC00](v359);
  sub_1CA948B68();

  v360 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v342 + 120) = sub_1CA2F9F14(v952, v932, v356, v931, 0, 0, v358, &v924 - v351);
  v361 = v936;
  v362 = v937;
  *(v342 + 144) = v353;
  *(v342 + 152) = v361;
  v952 = 0xD00000000000003ALL;
  v953 = 0x80000001CA9C10B0;
  *(v342 + 160) = 0xD00000000000003ALL;
  *(v342 + 168) = 0x80000001CA9C10B0;
  v363 = MEMORY[0x1E69E6158];
  *(v342 + 184) = MEMORY[0x1E69E6158];
  *(v342 + 192) = v362;
  *(v342 + 224) = v363;
  v364 = v363;
  *(v342 + 200) = 0x7468676952;
  *(v342 + 208) = 0xE500000000000000;
  v365 = v361;
  v366 = v362;
  v367 = v365;
  v936 = v366;
  v937 = v367;
  sub_1CA94C1E8();
  v368 = v994;
  *(v341 + 192) = sub_1CA2F864C();
  *(v341 + 216) = v368;
  *(v341 + 224) = 0x654B656372756F53;
  *(v341 + 232) = 0xE900000000000079;
  strcpy((v341 + 240), "BearIdentifier");
  *(v341 + 255) = -18;
  *(v341 + 264) = v364;
  *(v341 + 272) = 0x7954656372756F53;
  *(v341 + 312) = v364;
  *(v341 + 280) = 0xEA00000000006570;
  *(v341 + 288) = 0x6574656D61726150;
  *(v341 + 296) = v995;
  *(v968 + 64) = sub_1CA94C1E8();
  v369 = swift_allocObject();
  *(v369 + 16) = v964;
  *(v369 + 32) = 0x74616E6974736544;
  *(v369 + 40) = 0xEF657079546E6F69;
  *(v369 + 48) = 0x43656C6261736944;
  *(v369 + 56) = 0xEF6B6361626C6C61;
  *(v369 + 72) = v364;
  *(v369 + 80) = 0x73616C436D657449;
  v370 = v990;
  *(v369 + 88) = v988;
  *(v369 + 96) = v370;
  *(v369 + 104) = v960;
  v371 = v987;
  *(v369 + 120) = v364;
  *(v369 + 128) = v371;
  *(v369 + 136) = v969;
  *(v369 + 144) = 1;
  *(v369 + 168) = MEMORY[0x1E69E6370];
  *(v369 + 176) = 0x6574656D61726150;
  *(v369 + 184) = 0xEB00000000495572;
  v372 = swift_allocObject();
  *(v372 + 16) = v982;
  v374 = v933;
  v373 = v934;
  v375 = v967;
  *(v372 + 32) = v934;
  *(v372 + 40) = v375;
  *(v372 + 48) = v959;
  *(v372 + 64) = v364;
  *(v372 + 72) = v374;
  v376 = v373;
  v377 = v374;
  v378 = v376;
  v379 = v377;
  v934 = v378;
  v933 = v379;
  v931 = sub_1CA94C438();
  *&v930 = v380;
  v381 = sub_1CA94C438();
  v929 = v382;
  v932 = &v924;
  MEMORY[0x1EEE9AC00](v381);
  v383 = &v924 - v999;
  sub_1CA948D98();
  v384 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v384);
  sub_1CA948B68();

  v385 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v372 + 80) = sub_1CA2F9F14(v931, v930, v381, v929, 0, 0, v383, &v924 - v351);
  v386 = v935;
  *(v372 + 104) = v997;
  *(v372 + 112) = v386;
  v932 = v386;
  v931 = sub_1CA94C438();
  *&v930 = v387;
  v388 = sub_1CA94C438();
  v929 = v389;
  v935 = &v924;
  MEMORY[0x1EEE9AC00](v388);
  v390 = &v924 - v999;
  sub_1CA948D98();
  v391 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v391);
  sub_1CA948B68();

  v392 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v393 = sub_1CA2F9F14(v931, v930, v388, v929, 0, 0, v390, &v924 - v351);
  *(v372 + 144) = v997;
  *(v372 + 120) = v393;
  sub_1CA94C1E8();
  v394 = v994;
  *(v369 + 192) = sub_1CA2F864C();
  *(v369 + 216) = v394;
  *(v369 + 224) = 0x654B656372756F53;
  *(v369 + 232) = 0xE900000000000079;
  *(v369 + 240) = 0x7574655272616542;
  *(v369 + 248) = v955;
  v395 = MEMORY[0x1E69E6158];
  *(v369 + 264) = MEMORY[0x1E69E6158];
  *(v369 + 272) = 0x7954656372756F53;
  *(v369 + 280) = 0xEA00000000006570;
  *(v369 + 288) = 0x6574656D61726150;
  *(v369 + 296) = v995;
  *(v369 + 312) = v395;
  strcpy((v369 + 320), "ValueMapping");
  *(v369 + 333) = 0;
  *(v369 + 334) = -5120;
  v396 = sub_1CA94C1E8();
  *(v369 + 360) = v980;
  *(v369 + 336) = v396;
  v397 = sub_1CA94C1E8();
  v398 = v968;
  *(v968 + 72) = v397;
  v399 = v954;
  *(v954 + 42) = v398;
  *(v399 + 45) = v978;
  *(v399 + 46) = 1701667150;
  *(v399 + 47) = 0xE400000000000000;
  v935 = sub_1CA94C438();
  v931 = v400;
  v401 = sub_1CA94C438();
  *&v930 = v402;
  *&v968 = &v924;
  MEMORY[0x1EEE9AC00](v401);
  v403 = v999;
  sub_1CA948D98();
  v404 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v404);
  v405 = v1000;
  sub_1CA948B68();

  v406 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v407 = sub_1CA2F9F14(v935, v931, v401, v930, 0, 0, &v924 - v403, &v924 - v405);
  v408 = v954;
  *(v954 + 48) = v407;
  v409 = v950;
  *(v408 + 51) = v997;
  *(v408 + 52) = v409;
  *(v408 + 53) = v940;
  *(v408 + 57) = MEMORY[0x1E69E6370];
  v408[432] = 1;
  *(v981 + 40) = sub_1CA94C1E8();
  v410 = swift_allocObject();
  v968 = xmmword_1CA981420;
  *(v410 + 16) = xmmword_1CA981420;
  strcpy((v410 + 32), "ActionKeywords");
  *(v410 + 47) = -18;
  v950 = sub_1CA94C438();
  v940 = v411;
  v412 = sub_1CA94C438();
  v935 = v413;
  v954 = &v924;
  MEMORY[0x1EEE9AC00](v412);
  v414 = &v924 - v403;
  sub_1CA948D98();
  v415 = v998;
  v416 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v416);
  sub_1CA948B68();

  v417 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v410 + 48) = sub_1CA2F9F14(v950, v940, v412, v935, 0, 0, v414, &v924 - v405);
  *(v410 + 72) = v997;
  *(v410 + 80) = 0x79726F6765746143;
  v418 = v938;
  *(v410 + 88) = 0xE800000000000000;
  *(v410 + 96) = v418;
  *(v410 + 120) = v975;
  strcpy((v410 + 128), "CreationDate");
  *(v410 + 141) = 0;
  *(v410 + 142) = -5120;
  *(v410 + 168) = v974;
  __swift_allocate_boxed_opaque_existential_1((v410 + 144));
  v950 = v418;
  sub_1CA948C28();
  *(v410 + 176) = 0x7470697263736544;
  *(v410 + 184) = 0xEB000000006E6F69;
  v419 = swift_allocObject();
  *(v419 + 16) = v963;
  v420 = v951;
  *(v419 + 32) = v951;
  v940 = v420;
  v951 = sub_1CA94C438();
  v938 = v421;
  v422 = sub_1CA94C438();
  v424 = v423;
  v954 = &v924;
  MEMORY[0x1EEE9AC00](v422);
  v425 = &v924 - v999;
  sub_1CA948D98();
  v426 = [(__CFString *)v415 bundleURL];
  MEMORY[0x1EEE9AC00](v426);
  v427 = v1000;
  sub_1CA948B68();

  v428 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v419 + 40) = sub_1CA2F9F14(v951, v938, v422, v424, 0, 0, v425, &v924 - v427);
  v429 = v997;
  v430 = v939;
  *(v419 + 64) = v997;
  *(v419 + 72) = v430;
  v935 = v430;
  v951 = sub_1CA94C438();
  v939 = v431;
  v938 = sub_1CA94C438();
  v433 = v432;
  v954 = &v924;
  MEMORY[0x1EEE9AC00](v938);
  v434 = &v924 - v999;
  sub_1CA948D98();
  v435 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v435);
  sub_1CA948B68();

  v436 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v437 = sub_1CA2F9F14(v951, v939, v938, v433, 0, 0, v434, &v924 - v427);
  *(v419 + 104) = v429;
  *(v419 + 80) = v437;
  sub_1CA94C1E8();
  v438 = v977;
  *(v410 + 192) = sub_1CA6B3784();
  *(v410 + 216) = v438;
  *(v410 + 224) = 0x74616D726F46;
  v938 = 0xD00000000000001FLL;
  v939 = 0x80000001CA9C11C0;
  *(v410 + 232) = 0xE600000000000000;
  *(v410 + 240) = 0xD00000000000001FLL;
  *(v410 + 248) = 0x80000001CA9C11C0;
  v439 = MEMORY[0x1E69E6158];
  *(v410 + 264) = MEMORY[0x1E69E6158];
  *(v410 + 272) = 0x696669746E656449;
  *(v410 + 280) = v970;
  *(v410 + 288) = 0x73746E65746E6F63;
  *(v410 + 296) = 0xE800000000000000;
  *(v410 + 312) = v439;
  strcpy((v410 + 320), "InputMapping");
  *(v410 + 333) = 0;
  *(v410 + 334) = -5120;
  v954 = swift_allocObject();
  *(v954 + 1) = v963;
  v440 = swift_allocObject();
  *(v440 + 16) = v989;
  strcpy((v440 + 32), "DestinationKey");
  *(v440 + 47) = -18;
  *(v440 + 48) = 0x656C746974;
  *(v440 + 56) = 0xE500000000000000;
  *(v440 + 72) = v439;
  *(v440 + 80) = 0x74616E6974736544;
  *(v440 + 88) = 0xEF657079546E6F69;
  strcpy((v440 + 96), "URLQueryValue");
  *(v440 + 110) = -4864;
  *(v440 + 120) = v439;
  *(v440 + 128) = 0x73616C436D657449;
  *(v440 + 136) = v988;
  *(v440 + 144) = 0xD000000000000013;
  *(v440 + 152) = v985;
  *(v440 + 168) = v439;
  *(v440 + 176) = 0x6574656D61726150;
  *(v440 + 184) = 0xEB00000000495572;
  v441 = swift_allocObject();
  *(v441 + 16) = v984;
  v443 = v933;
  v442 = v934;
  v444 = v990;
  *(v441 + 32) = v934;
  *(v441 + 40) = v444;
  *(v441 + 48) = v986;
  *(v441 + 64) = v439;
  *(v441 + 72) = v443;
  v931 = v442;
  v933 = v443;
  v934 = sub_1CA94C438();
  *&v930 = v445;
  v446 = sub_1CA94C438();
  v928 = v447;
  v929 = v446;
  v951 = &v924;
  MEMORY[0x1EEE9AC00](v446);
  v448 = v999;
  sub_1CA948D98();
  v449 = v998;
  v450 = [(__CFString *)v998 bundleURL];
  v927 = &v924;
  MEMORY[0x1EEE9AC00](v450);
  v451 = &v924 - v1000;
  sub_1CA948B68();

  v452 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v441 + 80) = sub_1CA2F9F14(v934, v930, v929, v928, 0, 0, &v924 - v448, v451);
  v453 = v997;
  v454 = v932;
  *(v441 + 104) = v997;
  *(v441 + 112) = v454;
  v934 = v454;
  v932 = sub_1CA94C438();
  *&v930 = v455;
  v456 = sub_1CA94C438();
  v928 = v457;
  v929 = v456;
  v951 = &v924;
  MEMORY[0x1EEE9AC00](v456);
  v458 = &v924 - v448;
  sub_1CA948D98();
  v459 = [(__CFString *)v449 bundleURL];
  MEMORY[0x1EEE9AC00](v459);
  v460 = &v924 - v1000;
  sub_1CA948B68();

  v461 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v441 + 120) = sub_1CA2F9F14(v932, v930, v929, v928, 0, 0, v458, v460);
  v462 = v936;
  *(v441 + 144) = v453;
  *(v441 + 152) = v462;
  v463 = MEMORY[0x1E69E6158];
  *(v441 + 184) = MEMORY[0x1E69E6158];
  *(v441 + 160) = 0x7468676952;
  *(v441 + 168) = 0xE500000000000000;
  v951 = v462;
  sub_1CA94C1E8();
  v464 = v994;
  *(v440 + 192) = sub_1CA2F864C();
  *(v440 + 216) = v464;
  *(v440 + 224) = 0x654B656372756F53;
  *(v440 + 232) = 0xE900000000000079;
  *(v440 + 240) = 0x6C74695472616542;
  *(v440 + 248) = v958;
  *(v440 + 264) = v463;
  *(v440 + 272) = 0x7954656372756F53;
  *(v440 + 312) = v463;
  *(v440 + 280) = 0xEA00000000006570;
  *(v440 + 288) = 0x6574656D61726150;
  *(v440 + 296) = v995;
  *(v954 + 4) = sub_1CA94C1E8();
  v465 = swift_allocObject();
  *(v465 + 16) = v989;
  strcpy((v465 + 32), "DestinationKey");
  *(v465 + 47) = -18;
  *(v465 + 48) = 25705;
  *(v465 + 56) = 0xE200000000000000;
  *(v465 + 72) = v463;
  *(v465 + 80) = 0x74616E6974736544;
  *(v465 + 88) = 0xEF657079546E6F69;
  strcpy((v465 + 96), "URLQueryValue");
  *(v465 + 110) = -4864;
  *(v465 + 120) = v463;
  *(v465 + 128) = 0x73616C436D657449;
  *(v465 + 136) = v988;
  *(v465 + 144) = 0xD000000000000013;
  *(v465 + 152) = v985;
  *(v465 + 168) = v463;
  *(v465 + 176) = 0x6574656D61726150;
  *(v465 + 184) = 0xEB00000000495572;
  v466 = swift_allocObject();
  *(v466 + 16) = v983;
  v467 = v931;
  v468 = v990;
  *(v466 + 32) = v931;
  *(v466 + 40) = v468;
  *(v466 + 48) = v986;
  v469 = v933;
  *(v466 + 64) = v463;
  *(v466 + 72) = v469;
  v932 = v467;
  v931 = v469;
  v933 = sub_1CA94C438();
  *&v930 = v470;
  v471 = sub_1CA94C438();
  v928 = v472;
  v929 = v471;
  v936 = &v924;
  MEMORY[0x1EEE9AC00](v471);
  v473 = &v924 - v999;
  sub_1CA948D98();
  v474 = v998;
  v475 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v475);
  v476 = &v924 - v1000;
  sub_1CA948B68();

  v477 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v466 + 80) = sub_1CA2F9F14(v933, v930, v929, v928, 0, 0, v473, v476);
  v478 = v997;
  v479 = v934;
  *(v466 + 104) = v997;
  *(v466 + 112) = v479;
  v934 = v479;
  v933 = sub_1CA94C438();
  *&v930 = v480;
  v481 = sub_1CA94C438();
  v928 = v482;
  v929 = v481;
  v936 = &v924;
  MEMORY[0x1EEE9AC00](v481);
  v483 = &v924 - v999;
  sub_1CA948D98();
  v484 = [(__CFString *)v474 bundleURL];
  MEMORY[0x1EEE9AC00](v484);
  v485 = &v924 - v1000;
  sub_1CA948B68();

  v486 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v487 = sub_1CA2F9F14(v933, v930, v929, v928, 0, 0, v483, v485);
  v488 = v937;
  *(v466 + 120) = v487;
  *(v466 + 144) = v478;
  *(v466 + 152) = v488;
  v489 = v953;
  *(v466 + 160) = v952;
  *(v466 + 168) = v489;
  v490 = MEMORY[0x1E69E6158];
  v491 = v951;
  *(v466 + 184) = MEMORY[0x1E69E6158];
  *(v466 + 192) = v491;
  *(v466 + 224) = v490;
  v492 = v490;
  *(v466 + 200) = 0x7468676952;
  *(v466 + 208) = 0xE500000000000000;
  v933 = v491;
  v936 = v488;
  sub_1CA94C1E8();
  v493 = v994;
  *(v465 + 192) = sub_1CA2F864C();
  *(v465 + 216) = v493;
  *(v465 + 224) = 0x654B656372756F53;
  *(v465 + 232) = 0xE900000000000079;
  strcpy((v465 + 240), "BearIdentifier");
  *(v465 + 255) = -18;
  *(v465 + 264) = v492;
  *(v465 + 272) = 0x7954656372756F53;
  *(v465 + 312) = v492;
  *(v465 + 280) = 0xEA00000000006570;
  *(v465 + 288) = 0x6574656D61726150;
  *(v465 + 296) = v995;
  v494 = sub_1CA94C1E8();
  v495 = v954;
  *(v954 + 5) = v494;
  *(v410 + 336) = v495;
  *(v410 + 360) = v978;
  *(v410 + 368) = 1701667150;
  *(v410 + 376) = 0xE400000000000000;
  v951 = sub_1CA94C438();
  v937 = v496;
  v497 = sub_1CA94C438();
  *&v930 = v498;
  v954 = &v924;
  MEMORY[0x1EEE9AC00](v497);
  v499 = v999;
  sub_1CA948D98();
  v500 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v500);
  v501 = v1000;
  sub_1CA948B68();

  v502 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v410 + 384) = sub_1CA2F9F14(v951, v937, v497, v930, 0, 0, &v924 - v499, &v924 - v501);
  *(v410 + 408) = v997;
  strcpy((v410 + 416), "OutputMapping");
  *(v410 + 430) = -4864;
  v503 = swift_allocObject();
  *(v503 + 16) = v976;
  *(v503 + 32) = sub_1CA94C1E8();
  *(v410 + 432) = v503;
  v504 = v987;
  *(v410 + 456) = v956;
  *(v410 + 464) = v504;
  *(v410 + 472) = v966;
  v951 = sub_1CA94C438();
  v937 = v505;
  v506 = sub_1CA94C438();
  *&v930 = v507;
  v954 = &v924;
  MEMORY[0x1EEE9AC00](v506);
  sub_1CA948D98();
  v508 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v508);
  sub_1CA948B68();

  v509 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v510 = sub_1CA2F9F14(v951, v937, v506, v930, 0, 0, &v924 - v499, &v924 - v501);
  v511 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(v410 + 504) = v965;
  *(v410 + 480) = v511;
  *(v981 + 48) = sub_1CA94C1E8();
  v512 = swift_allocObject();
  *(v512 + 16) = v968;
  strcpy((v512 + 32), "ActionKeywords");
  *(v512 + 47) = -18;
  v513 = sub_1CA94C438();
  v515 = v514;
  v516 = sub_1CA94C438();
  v518 = v517;
  v954 = &v924;
  MEMORY[0x1EEE9AC00](v516);
  v519 = &v924 - v999;
  sub_1CA948D98();
  v520 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v520);
  v521 = &v924 - v1000;
  sub_1CA948B68();

  v522 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v512 + 48) = sub_1CA2F9F14(v513, v515, v516, v518, 0, 0, v519, v521);
  v937 = 0x80000001CA9BA6E0;
  *(v512 + 72) = v997;
  *(v512 + 80) = 0xD000000000000013;
  *(v512 + 88) = 0x80000001CA9BA6E0;
  *(v512 + 96) = 1;
  *(v512 + 120) = MEMORY[0x1E69E6370];
  *(v512 + 128) = 0x79726F6765746143;
  v523 = v950;
  *(v512 + 136) = 0xE800000000000000;
  *(v512 + 144) = v523;
  *(v512 + 168) = v975;
  strcpy((v512 + 176), "CreationDate");
  *(v512 + 189) = 0;
  *(v512 + 190) = -5120;
  *(v512 + 216) = v974;
  __swift_allocate_boxed_opaque_existential_1((v512 + 192));
  v951 = v523;
  sub_1CA948C28();
  *(v512 + 224) = 0x7470697263736544;
  *(v512 + 232) = 0xEB000000006E6F69;
  v524 = swift_allocObject();
  *(v524 + 16) = v976;
  v525 = v935;
  *(v524 + 32) = v935;
  v954 = v525;
  v526 = sub_1CA94C438();
  v935 = v527;
  v528 = sub_1CA94C438();
  v530 = v529;
  v950 = &v924;
  MEMORY[0x1EEE9AC00](v528);
  v531 = &v924 - v999;
  sub_1CA948D98();
  v532 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v532);
  v533 = &v924 - v1000;
  sub_1CA948B68();

  v534 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v535 = sub_1CA2F9F14(v526, v935, v528, v530, 0, 0, v531, v533);
  *(v524 + 64) = v997;
  *(v524 + 40) = v535;
  sub_1CA94C1E8();
  v536 = v977;
  *(v512 + 240) = sub_1CA6B3784();
  *(v512 + 264) = v536;
  *(v512 + 272) = 0x74616D726F46;
  v538 = v938;
  v537 = v939;
  *(v512 + 280) = 0xE600000000000000;
  *(v512 + 288) = v538;
  *(v512 + 296) = v537;
  v539 = MEMORY[0x1E69E6158];
  *(v512 + 312) = MEMORY[0x1E69E6158];
  *(v512 + 320) = 0x696669746E656449;
  *(v512 + 328) = v970;
  *(v512 + 336) = 1852141679;
  *(v512 + 344) = 0xE400000000000000;
  *(v512 + 360) = v539;
  strcpy((v512 + 368), "InputMapping");
  *(v512 + 381) = 0;
  *(v512 + 382) = -5120;
  v950 = swift_allocObject();
  *(v950 + 1) = v963;
  v540 = swift_allocObject();
  *(v540 + 16) = v989;
  strcpy((v540 + 32), "DestinationKey");
  *(v540 + 47) = -18;
  *(v540 + 48) = 0x656C746974;
  *(v540 + 56) = 0xE500000000000000;
  *(v540 + 72) = v539;
  *(v540 + 80) = 0x74616E6974736544;
  *(v540 + 88) = 0xEF657079546E6F69;
  strcpy((v540 + 96), "URLQueryValue");
  *(v540 + 110) = -4864;
  *(v540 + 120) = v539;
  *(v540 + 128) = 0x73616C436D657449;
  *(v540 + 136) = v988;
  *(v540 + 144) = 0xD000000000000013;
  *(v540 + 152) = v985;
  *(v540 + 168) = v539;
  *(v540 + 176) = 0x6574656D61726150;
  *(v540 + 184) = 0xEB00000000495572;
  v541 = swift_allocObject();
  *(v541 + 16) = v984;
  v542 = v932;
  v543 = v990;
  *(v541 + 32) = v932;
  *(v541 + 40) = v543;
  *(v541 + 48) = v986;
  *(v541 + 64) = v539;
  v544 = v931;
  *(v541 + 72) = v931;
  v939 = v542;
  v938 = v544;
  v935 = sub_1CA94C438();
  v932 = v545;
  v931 = sub_1CA94C438();
  *&v930 = v546;
  *&v963 = &v924;
  MEMORY[0x1EEE9AC00](v931);
  v547 = v999;
  sub_1CA948D98();
  v548 = v998;
  v549 = [(__CFString *)v998 bundleURL];
  v929 = &v924;
  MEMORY[0x1EEE9AC00](v549);
  v550 = v1000;
  sub_1CA948B68();

  v551 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v541 + 80) = sub_1CA2F9F14(v935, v932, v931, v930, 0, 0, &v924 - v547, &v924 - v550);
  v552 = v997;
  v553 = v934;
  *(v541 + 104) = v997;
  *(v541 + 112) = v553;
  *&v963 = v553;
  v934 = sub_1CA94C438();
  v932 = v554;
  v931 = sub_1CA94C438();
  *&v930 = v555;
  v935 = &v924;
  MEMORY[0x1EEE9AC00](v931);
  v556 = &v924 - v547;
  sub_1CA948D98();
  v557 = [(__CFString *)v548 bundleURL];
  MEMORY[0x1EEE9AC00](v557);
  sub_1CA948B68();

  v558 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v541 + 120) = sub_1CA2F9F14(v934, v932, v931, v930, 0, 0, v556, &v924 - v550);
  v559 = v933;
  *(v541 + 144) = v552;
  *(v541 + 152) = v559;
  v560 = MEMORY[0x1E69E6158];
  *(v541 + 184) = MEMORY[0x1E69E6158];
  *(v541 + 160) = 0x7468676952;
  *(v541 + 168) = 0xE500000000000000;
  v935 = v559;
  sub_1CA94C1E8();
  v561 = v994;
  *(v540 + 192) = sub_1CA2F864C();
  *(v540 + 216) = v561;
  *(v540 + 224) = 0x654B656372756F53;
  *(v540 + 232) = 0xE900000000000079;
  *(v540 + 240) = 0x6C74695472616542;
  *(v540 + 248) = v958;
  *(v540 + 264) = v560;
  *(v540 + 272) = 0x7954656372756F53;
  *(v540 + 312) = v560;
  *(v540 + 280) = 0xEA00000000006570;
  *(v540 + 288) = 0x6574656D61726150;
  *(v540 + 296) = v995;
  v950[4] = sub_1CA94C1E8();
  v562 = swift_allocObject();
  *(v562 + 16) = v989;
  strcpy((v562 + 32), "DestinationKey");
  *(v562 + 47) = -18;
  *(v562 + 48) = 25705;
  *(v562 + 56) = 0xE200000000000000;
  *(v562 + 72) = v560;
  *(v562 + 80) = 0x74616E6974736544;
  *(v562 + 88) = 0xEF657079546E6F69;
  strcpy((v562 + 96), "URLQueryValue");
  *(v562 + 110) = -4864;
  *(v562 + 120) = v560;
  *(v562 + 128) = 0x73616C436D657449;
  *(v562 + 136) = v988;
  *(v562 + 144) = 0xD000000000000013;
  *(v562 + 152) = v985;
  *(v562 + 168) = v560;
  *(v562 + 176) = 0x6574656D61726150;
  *(v562 + 184) = 0xEB00000000495572;
  v563 = swift_allocObject();
  *(v563 + 16) = v983;
  v565 = v938;
  v564 = v939;
  v566 = v990;
  *(v563 + 32) = v939;
  *(v563 + 40) = v566;
  *(v563 + 48) = v986;
  *(v563 + 64) = v560;
  *(v563 + 72) = v565;
  v939 = v564;
  v938 = v565;
  v567 = sub_1CA94C438();
  v933 = v568;
  v934 = v567;
  v569 = sub_1CA94C438();
  v931 = v570;
  v932 = v569;
  v958 = &v924;
  MEMORY[0x1EEE9AC00](v569);
  v571 = &v924 - v999;
  sub_1CA948D98();
  v572 = v998;
  v573 = [(__CFString *)v998 bundleURL];
  *&v930 = &v924;
  MEMORY[0x1EEE9AC00](v573);
  v574 = &v924 - v1000;
  sub_1CA948B68();

  v575 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v563 + 80) = sub_1CA2F9F14(v934, v933, v932, v931, 0, 0, v571, v574);
  v576 = v997;
  v577 = v963;
  *(v563 + 104) = v997;
  *(v563 + 112) = v577;
  *&v963 = v577;
  v578 = sub_1CA94C438();
  v933 = v579;
  v934 = v578;
  v580 = sub_1CA94C438();
  v931 = v581;
  v932 = v580;
  v958 = &v924;
  MEMORY[0x1EEE9AC00](v580);
  v582 = &v924 - v999;
  sub_1CA948D98();
  v583 = [(__CFString *)v572 bundleURL];
  MEMORY[0x1EEE9AC00](v583);
  v584 = &v924 - v1000;
  sub_1CA948B68();

  v585 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v563 + 120) = sub_1CA2F9F14(v934, v933, v932, v931, 0, 0, v582, v584);
  v586 = v935;
  v587 = v936;
  *(v563 + 144) = v576;
  *(v563 + 152) = v587;
  v588 = v953;
  *(v563 + 160) = v952;
  *(v563 + 168) = v588;
  v589 = MEMORY[0x1E69E6158];
  *(v563 + 184) = MEMORY[0x1E69E6158];
  *(v563 + 192) = v586;
  *(v563 + 224) = v589;
  v590 = v589;
  *(v563 + 200) = 0x7468676952;
  *(v563 + 208) = 0xE500000000000000;
  v958 = v586;
  v952 = v587;
  sub_1CA94C1E8();
  v591 = v994;
  *(v562 + 192) = sub_1CA2F864C();
  *(v562 + 216) = v591;
  *(v562 + 224) = 0x654B656372756F53;
  *(v562 + 232) = 0xE900000000000079;
  strcpy((v562 + 240), "BearIdentifier");
  *(v562 + 255) = -18;
  *(v562 + 264) = v590;
  *(v562 + 272) = 0x7954656372756F53;
  *(v562 + 312) = v590;
  *(v562 + 280) = 0xEA00000000006570;
  *(v562 + 288) = 0x6574656D61726150;
  *(v562 + 296) = v995;
  v592 = sub_1CA94C1E8();
  v593 = v950;
  v950[5] = v592;
  *(v512 + 384) = v593;
  *(v512 + 408) = v978;
  *(v512 + 416) = 1701667150;
  *(v512 + 424) = 0xE400000000000000;
  v950 = sub_1CA94C438();
  v936 = v594;
  v595 = sub_1CA94C438();
  v935 = v596;
  v953 = &v924;
  MEMORY[0x1EEE9AC00](v595);
  v597 = v999;
  sub_1CA948D98();
  v598 = [(__CFString *)v998 bundleURL];
  v934 = &v924;
  MEMORY[0x1EEE9AC00](v598);
  v599 = v1000;
  sub_1CA948B68();

  v600 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v512 + 432) = sub_1CA2F9F14(v950, v936, v595, v935, 0, 0, &v924 - v597, &v924 - v599);
  v601 = v987;
  *(v512 + 456) = v997;
  *(v512 + 464) = v601;
  *(v512 + 472) = v966;
  v950 = sub_1CA94C438();
  v936 = v602;
  v603 = sub_1CA94C438();
  v935 = v604;
  v953 = &v924;
  MEMORY[0x1EEE9AC00](v603);
  sub_1CA948D98();
  v605 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v605);
  sub_1CA948B68();

  v606 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v607 = sub_1CA2F9F14(v950, v936, v603, v935, 0, 0, &v924 - v597, &v924 - v599);
  v608 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(v512 + 504) = v965;
  *(v512 + 480) = v608;
  v609 = MEMORY[0x1E69E6158];
  *(v981 + 56) = sub_1CA94C1E8();
  v610 = swift_allocObject();
  *(v610 + 16) = v943;
  *(v610 + 32) = 0x6C436E6F69746341;
  *(v610 + 40) = 0xEB00000000737361;
  *(v610 + 48) = v941;
  *(v610 + 56) = 0x80000001CA9C1480;
  *(v610 + 72) = v609;
  strcpy((v610 + 80), "ActionKeywords");
  *(v610 + 95) = -18;
  v950 = sub_1CA94C438();
  v612 = v611;
  v613 = sub_1CA94C438();
  v615 = v614;
  v953 = &v924;
  MEMORY[0x1EEE9AC00](v613);
  v616 = &v924 - v999;
  sub_1CA948D98();
  v617 = v998;
  v618 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v618);
  v619 = &v924 - v1000;
  sub_1CA948B68();

  v620 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v610 + 96) = sub_1CA2F9F14(v950, v612, v613, v615, 0, 0, v616, v619);
  v621 = v997;
  *(v610 + 120) = v997;
  *(v610 + 128) = 0xD000000000000013;
  *(v610 + 136) = v937;
  *(v610 + 144) = 1;
  *(v610 + 168) = MEMORY[0x1E69E6370];
  *(v610 + 176) = 0x79726F6765746143;
  v622 = v951;
  *(v610 + 184) = 0xE800000000000000;
  *(v610 + 192) = v622;
  *(v610 + 216) = v975;
  strcpy((v610 + 224), "CreationDate");
  *(v610 + 237) = 0;
  *(v610 + 238) = -5120;
  *(v610 + 264) = v974;
  __swift_allocate_boxed_opaque_existential_1((v610 + 240));
  sub_1CA948C28();
  *(v610 + 272) = 0x7470697263736544;
  *(v610 + 280) = 0xEB000000006E6F69;
  v623 = swift_allocObject();
  *(v623 + 16) = v976;
  *(v623 + 32) = v954;
  v950 = sub_1CA94C438();
  *&v943 = v624;
  v625 = sub_1CA94C438();
  v627 = v626;
  v953 = &v924;
  MEMORY[0x1EEE9AC00](v625);
  v628 = &v924 - v999;
  sub_1CA948D98();
  v629 = [(__CFString *)v617 bundleURL];
  MEMORY[0x1EEE9AC00](v629);
  v630 = &v924 - v1000;
  sub_1CA948B68();

  v631 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v632 = sub_1CA2F9F14(v950, v943, v625, v627, 0, 0, v628, v630);
  *(v623 + 64) = v621;
  *(v623 + 40) = v632;
  sub_1CA94C1E8();
  v633 = v977;
  *(v610 + 288) = sub_1CA6B3784();
  *(v610 + 312) = v633;
  *(v610 + 320) = 0x74616D726F46;
  *(v610 + 328) = 0xE600000000000000;
  *(v610 + 336) = 0xD000000000000020;
  *(v610 + 344) = 0x80000001CA9C1500;
  v634 = MEMORY[0x1E69E6158];
  *(v610 + 360) = MEMORY[0x1E69E6158];
  *(v610 + 368) = 0x696669746E656449;
  *(v610 + 376) = v970;
  *(v610 + 384) = 0x686372616573;
  *(v610 + 392) = 0xE600000000000000;
  *(v610 + 408) = v634;
  strcpy((v610 + 416), "InputMapping");
  *(v610 + 429) = 0;
  *(v610 + 430) = -5120;
  v635 = swift_allocObject();
  *(v635 + 16) = v984;
  v636 = v635;
  v953 = v635;
  v637 = swift_allocObject();
  *(v637 + 16) = v984;
  strcpy((v637 + 32), "DestinationKey");
  *(v637 + 47) = -18;
  *(v637 + 48) = 0x6E6F69746361;
  *(v637 + 56) = 0xE600000000000000;
  *(v637 + 72) = v634;
  *(v637 + 80) = 0x74616E6974736544;
  *(v637 + 88) = 0xEF657079546E6F69;
  *(v637 + 96) = 0x74736275534C5255;
  *(v637 + 104) = 0xEF6E6F6974757469;
  *(v637 + 120) = v634;
  *(v637 + 128) = 0x654B656372756F53;
  *(v637 + 136) = 0xE900000000000079;
  *(v637 + 144) = 0x6974634172616542;
  *(v637 + 152) = 0xEA00000000006E6FLL;
  *(v637 + 168) = v634;
  *(v637 + 176) = 0x7954656372756F53;
  *(v637 + 216) = v634;
  *(v637 + 184) = 0xEA00000000006570;
  *(v637 + 192) = 0x6574656D61726150;
  *(v637 + 200) = v995;
  *(v636 + 32) = sub_1CA94C1E8();
  v638 = swift_allocObject();
  *(v638 + 16) = v989;
  strcpy((v638 + 32), "DestinationKey");
  *(v638 + 47) = -18;
  *(v638 + 48) = 1836213620;
  *(v638 + 56) = 0xE400000000000000;
  *(v638 + 72) = v634;
  *(v638 + 80) = 0x74616E6974736544;
  *(v638 + 88) = 0xEF657079546E6F69;
  strcpy((v638 + 96), "URLQueryValue");
  *(v638 + 110) = -4864;
  *(v638 + 120) = v634;
  *(v638 + 128) = 0x73616C436D657449;
  *(v638 + 136) = v988;
  *(v638 + 144) = 0xD000000000000013;
  *(v638 + 152) = v985;
  *(v638 + 168) = v634;
  *(v638 + 176) = 0x6574656D61726150;
  *(v638 + 184) = 0xEB00000000495572;
  v639 = swift_allocObject();
  *(v639 + 16) = v983;
  v641 = v938;
  v640 = v939;
  v642 = v990;
  *(v639 + 32) = v939;
  *(v639 + 40) = v642;
  *(v639 + 48) = v986;
  *(v639 + 64) = v634;
  *(v639 + 72) = v641;
  *&v943 = v640;
  v941 = v641;
  v643 = sub_1CA94C438();
  v938 = v644;
  v939 = v643;
  v645 = sub_1CA94C438();
  v936 = v646;
  v937 = v645;
  v950 = &v924;
  MEMORY[0x1EEE9AC00](v645);
  v647 = v999;
  sub_1CA948D98();
  v648 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v648);
  v649 = &v924 - v1000;
  sub_1CA948B68();

  v650 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v639 + 80) = sub_1CA2F9F14(v939, v938, v937, v936, 0, 0, &v924 - v647, v649);
  v651 = v963;
  *(v639 + 104) = v997;
  *(v639 + 112) = v651;
  v950 = v651;
  v652 = sub_1CA94C438();
  v938 = v653;
  v939 = v652;
  v654 = sub_1CA94C438();
  v936 = v655;
  v937 = v654;
  *&v963 = &v924;
  MEMORY[0x1EEE9AC00](v654);
  v656 = &v924 - v647;
  sub_1CA948D98();
  v657 = v998;
  v658 = [(__CFString *)v998 bundleURL];
  v935 = &v924;
  MEMORY[0x1EEE9AC00](v658);
  v659 = v1000;
  sub_1CA948B68();

  v660 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v639 + 120) = sub_1CA2F9F14(v939, v938, v937, v936, 0, 0, v656, &v924 - v659);
  v661 = v997;
  v662 = v952;
  *(v639 + 144) = v997;
  *(v639 + 152) = v662;
  *&v963 = v662;
  v663 = sub_1CA94C438();
  v938 = v664;
  v939 = v663;
  v665 = sub_1CA94C438();
  v936 = v666;
  v937 = v665;
  v952 = &v924;
  MEMORY[0x1EEE9AC00](v665);
  v667 = &v924 - v999;
  sub_1CA948D98();
  v668 = [(__CFString *)v657 bundleURL];
  MEMORY[0x1EEE9AC00](v668);
  sub_1CA948B68();

  v669 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v639 + 160) = sub_1CA2F9F14(v939, v938, v937, v936, 0, 0, v667, &v924 - v659);
  v670 = v958;
  *(v639 + 184) = v661;
  *(v639 + 192) = v670;
  v671 = MEMORY[0x1E69E6158];
  *(v639 + 224) = MEMORY[0x1E69E6158];
  *(v639 + 200) = 0x7468676952;
  *(v639 + 208) = 0xE500000000000000;
  v958 = v670;
  sub_1CA94C1E8();
  v672 = v994;
  *(v638 + 192) = sub_1CA2F864C();
  *(v638 + 216) = v672;
  *(v638 + 224) = 0x654B656372756F53;
  *(v638 + 232) = 0xE900000000000079;
  *(v638 + 240) = 0x6D72655472616542;
  *(v638 + 248) = 0xE800000000000000;
  *(v638 + 264) = v671;
  *(v638 + 312) = v671;
  *(v638 + 272) = 0x7954656372756F53;
  *(v638 + 280) = 0xEA00000000006570;
  v673 = v995;
  *(v638 + 288) = 0x6574656D61726150;
  *(v638 + 296) = v673;
  v674 = sub_1CA94C1E8();
  v675 = v953;
  v953[1].info = v674;
  v676 = swift_allocObject();
  *(v676 + 16) = v983;
  strcpy((v676 + 32), "DestinationKey");
  *(v676 + 47) = -18;
  *(v676 + 48) = 1701667182;
  *(v676 + 56) = 0xE400000000000000;
  *(v676 + 72) = v671;
  *(v676 + 80) = 0x74616E6974736544;
  *(v676 + 88) = 0xEF657079546E6F69;
  strcpy((v676 + 96), "URLQueryValue");
  *(v676 + 110) = -4864;
  *(v676 + 120) = v671;
  *(v676 + 128) = 0x73616C436D657449;
  v677 = v988;
  *(v676 + 136) = v988;
  *(v676 + 144) = 0xD000000000000013;
  v678 = v985;
  *(v676 + 152) = v985;
  *(v676 + 168) = v671;
  *(v676 + 176) = 0x654B656372756F53;
  *(v676 + 184) = 0xE900000000000079;
  *(v676 + 192) = 0x656D614E72616542;
  *(v676 + 200) = 0xE800000000000000;
  *(v676 + 216) = v671;
  *(v676 + 224) = 0x7954656372756F53;
  *(v676 + 264) = v671;
  *(v676 + 232) = 0xEA00000000006570;
  *(v676 + 240) = 0x6574656D61726150;
  *(v676 + 248) = v673;
  *(v675 + 48) = sub_1CA94C1E8();
  v679 = swift_allocObject();
  *(v679 + 16) = v989;
  strcpy((v679 + 32), "DestinationKey");
  *(v679 + 47) = -18;
  *(v679 + 48) = 6775156;
  *(v679 + 56) = 0xE300000000000000;
  *(v679 + 72) = v671;
  *(v679 + 80) = 0x74616E6974736544;
  *(v679 + 88) = 0xEF657079546E6F69;
  strcpy((v679 + 96), "URLQueryValue");
  *(v679 + 110) = -4864;
  *(v679 + 120) = v671;
  *(v679 + 128) = 0x73616C436D657449;
  *(v679 + 136) = v677;
  *(v679 + 144) = 0xD000000000000013;
  *(v679 + 152) = v678;
  *(v679 + 168) = v671;
  *(v679 + 176) = 0x6574656D61726150;
  *(v679 + 184) = 0xEB00000000495572;
  v680 = swift_allocObject();
  *(v680 + 16) = v983;
  v681 = v943;
  v682 = v990;
  *(v680 + 32) = v943;
  *(v680 + 40) = v682;
  *(v680 + 48) = v986;
  v683 = v941;
  *(v680 + 64) = v671;
  *(v680 + 72) = v683;
  *&v943 = v681;
  v952 = v683;
  v684 = sub_1CA94C438();
  v938 = v685;
  v939 = v684;
  v686 = sub_1CA94C438();
  v936 = v687;
  v937 = v686;
  v941 = &v924;
  MEMORY[0x1EEE9AC00](v686);
  v688 = v999;
  sub_1CA948D98();
  v689 = [(__CFString *)v998 bundleURL];
  v935 = &v924;
  MEMORY[0x1EEE9AC00](v689);
  v690 = &v924 - v1000;
  sub_1CA948B68();

  v691 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v680 + 80) = sub_1CA2F9F14(v939, v938, v937, v936, 0, 0, &v924 - v688, v690);
  v692 = v950;
  *(v680 + 104) = v997;
  *(v680 + 112) = v692;
  v950 = v692;
  v693 = sub_1CA94C438();
  v938 = v694;
  v939 = v693;
  v695 = sub_1CA94C438();
  v936 = v696;
  v937 = v695;
  v941 = &v924;
  MEMORY[0x1EEE9AC00](v695);
  v697 = &v924 - v688;
  sub_1CA948D98();
  v698 = v998;
  v699 = [(__CFString *)v998 bundleURL];
  v935 = &v924;
  MEMORY[0x1EEE9AC00](v699);
  v700 = v1000;
  sub_1CA948B68();

  v701 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v680 + 120) = sub_1CA2F9F14(v939, v938, v937, v936, 0, 0, v697, &v924 - v700);
  v702 = v997;
  v703 = v963;
  *(v680 + 144) = v997;
  *(v680 + 152) = v703;
  v704 = sub_1CA94C438();
  v938 = v705;
  v939 = v704;
  v706 = sub_1CA94C438();
  v936 = v707;
  v937 = v706;
  v941 = &v924;
  MEMORY[0x1EEE9AC00](v706);
  v708 = &v924 - v999;
  sub_1CA948D98();
  v709 = [(__CFString *)v698 bundleURL];
  MEMORY[0x1EEE9AC00](v709);
  sub_1CA948B68();

  v710 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v680 + 160) = sub_1CA2F9F14(v939, v938, v937, v936, 0, 0, v708, &v924 - v700);
  v711 = v958;
  *(v680 + 184) = v702;
  *(v680 + 192) = v711;
  v712 = MEMORY[0x1E69E6158];
  *(v680 + 224) = MEMORY[0x1E69E6158];
  *(v680 + 200) = 0x7468676952;
  *(v680 + 208) = 0xE500000000000000;
  sub_1CA94C1E8();
  v713 = v994;
  *(v679 + 192) = sub_1CA2F864C();
  *(v679 + 216) = v713;
  *(v679 + 224) = 0x654B656372756F53;
  *(v679 + 232) = 0xE900000000000079;
  *(v679 + 240) = 0x67615472616542;
  *(v679 + 248) = 0xE700000000000000;
  *(v679 + 264) = v712;
  *(v679 + 272) = 0x7954656372756F53;
  *(v679 + 312) = v712;
  *(v679 + 280) = 0xEA00000000006570;
  *(v679 + 288) = 0x6574656D61726150;
  *(v679 + 296) = v995;
  v714 = sub_1CA94C1E8();
  v715 = v953;
  v953[1].length = v714;
  *(v610 + 432) = v715;
  *(v610 + 456) = v978;
  *(v610 + 464) = 1701667150;
  *(v610 + 472) = 0xE400000000000000;
  v941 = sub_1CA94C438();
  v939 = v716;
  v717 = sub_1CA94C438();
  v938 = v718;
  v953 = &v924;
  MEMORY[0x1EEE9AC00](v717);
  v719 = v999;
  sub_1CA948D98();
  v720 = v998;
  v721 = [(__CFString *)v998 bundleURL];
  v937 = &v924;
  MEMORY[0x1EEE9AC00](v721);
  v722 = v1000;
  sub_1CA948B68();

  v723 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v610 + 480) = sub_1CA2F9F14(v941, v939, v717, v938, 0, 0, &v924 - v719, &v924 - v722);
  v724 = v987;
  *(v610 + 504) = v997;
  *(v610 + 512) = v724;
  *(v610 + 520) = v966;
  v941 = sub_1CA94C438();
  v939 = v725;
  v726 = sub_1CA94C438();
  v938 = v727;
  v953 = &v924;
  MEMORY[0x1EEE9AC00](v726);
  sub_1CA948D98();
  v728 = [(__CFString *)v720 bundleURL];
  MEMORY[0x1EEE9AC00](v728);
  sub_1CA948B68();

  v729 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v730 = sub_1CA2F9F14(v941, v939, v726, v938, 0, 0, &v924 - v719, &v924 - v722);
  v731 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(v610 + 552) = v965;
  *(v610 + 528) = v731;
  *(v981 + 64) = sub_1CA94C1E8();
  v732 = swift_allocObject();
  *(v732 + 16) = v968;
  strcpy((v732 + 32), "ActionKeywords");
  *(v732 + 47) = -18;
  v941 = sub_1CA94C438();
  v734 = v733;
  v735 = sub_1CA94C438();
  v737 = v736;
  *&v968 = &v924;
  MEMORY[0x1EEE9AC00](v735);
  v738 = &v924 - v999;
  sub_1CA948D98();
  v739 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v739);
  v740 = &v924 - v1000;
  sub_1CA948B68();

  v741 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v732 + 48) = sub_1CA2F9F14(v941, v734, v735, v737, 0, 0, v738, v740);
  *(v732 + 72) = v997;
  *(v732 + 80) = 0x79726F6765746143;
  v742 = v951;
  *(v732 + 88) = 0xE800000000000000;
  *(v732 + 96) = v742;
  *(v732 + 120) = v975;
  strcpy((v732 + 128), "CreationDate");
  *(v732 + 141) = 0;
  *(v732 + 142) = -5120;
  *(v732 + 168) = v974;
  __swift_allocate_boxed_opaque_existential_1((v732 + 144));
  sub_1CA948C28();
  *(v732 + 176) = 0x7470697263736544;
  *(v732 + 184) = 0xEB000000006E6F69;
  v743 = swift_allocObject();
  *(v743 + 16) = v982;
  *(v743 + 32) = v942;
  v744 = sub_1CA94C438();
  v973 = v745;
  v974 = v744;
  *&v968 = sub_1CA94C438();
  v747 = v746;
  v975 = &v924;
  MEMORY[0x1EEE9AC00](v968);
  v748 = v999;
  sub_1CA948D98();
  v749 = v998;
  v750 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v750);
  v751 = &v924 - v1000;
  sub_1CA948B68();

  v752 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v743 + 40) = sub_1CA2F9F14(v974, v973, v968, v747, 0, 0, &v924 - v748, v751);
  v753 = v940;
  *(v743 + 64) = v997;
  *(v743 + 72) = v753;
  v754 = sub_1CA94C438();
  v973 = v755;
  v974 = v754;
  v756 = sub_1CA94C438();
  v758 = v757;
  v975 = &v924;
  MEMORY[0x1EEE9AC00](v756);
  sub_1CA948D98();
  v759 = [(__CFString *)v749 bundleURL];
  MEMORY[0x1EEE9AC00](v759);
  v760 = v1000;
  sub_1CA948B68();

  v761 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v743 + 80) = sub_1CA2F9F14(v974, v973, v756, v758, 0, 0, &v924 - v748, &v924 - v760);
  v762 = v997;
  v763 = v954;
  *(v743 + 104) = v997;
  *(v743 + 112) = v763;
  v764 = sub_1CA94C438();
  v973 = v765;
  v974 = v764;
  *&v968 = sub_1CA94C438();
  v767 = v766;
  v975 = &v924;
  MEMORY[0x1EEE9AC00](v968);
  v768 = &v924 - v999;
  sub_1CA948D98();
  v769 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v769);
  sub_1CA948B68();

  v770 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v771 = sub_1CA2F9F14(v974, v973, v968, v767, 0, 0, v768, &v924 - v760);
  *(v743 + 144) = v762;
  *(v743 + 120) = v771;
  sub_1CA94C1E8();
  v772 = v977;
  v773 = sub_1CA6B3784();
  v953 = v732;
  *(v732 + 192) = v773;
  *(v732 + 216) = v772;
  *(v732 + 224) = 0x74616D726F46;
  *(v732 + 232) = 0xE600000000000000;
  *(v732 + 240) = 0xD00000000000002ALL;
  *(v732 + 248) = 0x80000001CA9C16C0;
  v774 = MEMORY[0x1E69E6158];
  *(v732 + 264) = MEMORY[0x1E69E6158];
  *(v732 + 272) = 0x696669746E656449;
  *(v732 + 280) = v970;
  *(v732 + 288) = 1650553447;
  *(v732 + 296) = 0xE400000000000000;
  *(v732 + 312) = v774;
  strcpy((v732 + 320), "InputMapping");
  *(v732 + 333) = 0;
  *(v732 + 334) = -5120;
  v775 = swift_allocObject();
  *(v775 + 16) = v983;
  v776 = v775;
  v979 = v775;
  v777 = swift_allocObject();
  *(v777 + 16) = v983;
  strcpy((v777 + 32), "DestinationKey");
  *(v777 + 47) = -18;
  *(v777 + 48) = 7107189;
  *(v777 + 56) = 0xE300000000000000;
  *(v777 + 72) = v774;
  *(v777 + 80) = 0x74616E6974736544;
  *(v777 + 88) = 0xEF657079546E6F69;
  *(v777 + 96) = 0x74736275534C5255;
  *(v777 + 104) = 0xEF6E6F6974757469;
  *(v777 + 120) = v774;
  v778 = v988;
  *(v777 + 128) = 0x73616C436D657449;
  *(v777 + 136) = v778;
  *(v777 + 144) = v987;
  *(v777 + 152) = 0x80000001CA9934F0;
  *(v777 + 168) = v774;
  *(v777 + 176) = 0x654B656372756F53;
  *(v777 + 184) = 0xE900000000000079;
  *(v777 + 192) = 0x4C525572616542;
  *(v777 + 200) = 0xE700000000000000;
  *(v777 + 216) = v774;
  *(v777 + 224) = 0x7954656372756F53;
  *(v777 + 264) = v774;
  *(v777 + 232) = 0xEA00000000006570;
  *(v777 + 240) = 0x7475706E49;
  *(v777 + 248) = 0xE500000000000000;
  *(v776 + 32) = sub_1CA94C1E8();
  v779 = swift_allocObject();
  *(v779 + 16) = v989;
  strcpy((v779 + 32), "DestinationKey");
  *(v779 + 47) = -18;
  *(v779 + 48) = 1936154996;
  *(v779 + 56) = 0xE400000000000000;
  *(v779 + 72) = v774;
  *(v779 + 80) = 0x74616E6974736544;
  *(v779 + 88) = 0xEF657079546E6F69;
  strcpy((v779 + 96), "URLQueryValue");
  *(v779 + 110) = -4864;
  *(v779 + 120) = v774;
  *(v779 + 128) = 0x73616C436D657449;
  *(v779 + 136) = v778;
  *(v779 + 144) = 0xD000000000000013;
  *(v779 + 152) = v985;
  *(v779 + 168) = v774;
  *(v779 + 176) = 0x6574656D61726150;
  *(v779 + 184) = 0xEB00000000495572;
  v780 = swift_allocObject();
  *(v780 + 16) = v989;
  *(v780 + 64) = v774;
  v781 = v943;
  v782 = v990;
  *(v780 + 32) = v943;
  *(v780 + 40) = v782;
  *(v780 + 48) = v986;
  v985 = v781;
  v783 = sub_1CA94C368();
  v784 = v944;
  v785 = v945;
  *(v780 + 72) = v783;
  *(v780 + 80) = v785;
  *(v780 + 88) = v784;
  v786 = v952;
  *(v780 + 104) = v774;
  *(v780 + 112) = v786;
  *&v989 = v786;
  v977 = sub_1CA94C438();
  v975 = v787;
  v788 = sub_1CA94C438();
  v973 = v789;
  v974 = v788;
  *&v983 = &v924;
  MEMORY[0x1EEE9AC00](v788);
  v790 = v999;
  sub_1CA948D98();
  v791 = v998;
  v792 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v792);
  v793 = &v924 - v1000;
  sub_1CA948B68();

  v794 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v780 + 120) = sub_1CA2F9F14(v977, v975, v974, v973, 0, 0, &v924 - v790, v793);
  v795 = v950;
  *(v780 + 144) = v997;
  *(v780 + 152) = v795;
  *&v983 = v795;
  v796 = sub_1CA94C438();
  v974 = v797;
  v975 = v796;
  v798 = sub_1CA94C438();
  v972 = v799;
  v973 = v798;
  v977 = &v924;
  MEMORY[0x1EEE9AC00](v798);
  v800 = v790;
  v801 = &v924 - v790;
  sub_1CA948D98();
  v802 = [(__CFString *)v791 bundleURL];
  MEMORY[0x1EEE9AC00](v802);
  v803 = v1000;
  sub_1CA948B68();

  v804 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v780 + 160) = sub_1CA2F9F14(v975, v974, v973, v972, 0, 0, v801, &v924 - v803);
  v805 = v997;
  v806 = v963;
  *(v780 + 184) = v997;
  *(v780 + 192) = v806;
  v807 = sub_1CA94C438();
  v974 = v808;
  v975 = v807;
  v809 = sub_1CA94C438();
  v972 = v810;
  v973 = v809;
  v977 = &v924;
  MEMORY[0x1EEE9AC00](v809);
  sub_1CA948D98();
  v811 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v811);
  sub_1CA948B68();

  v812 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v780 + 200) = sub_1CA2F9F14(v975, v974, v973, v972, 0, 0, &v924 - v800, &v924 - v803);
  v813 = v958;
  *(v780 + 224) = v805;
  *(v780 + 232) = v813;
  v814 = MEMORY[0x1E69E6158];
  *(v780 + 264) = MEMORY[0x1E69E6158];
  *(v780 + 240) = 0x7468676952;
  *(v780 + 248) = 0xE500000000000000;
  sub_1CA94C1E8();
  v815 = v994;
  *(v779 + 192) = sub_1CA2F864C();
  *(v779 + 216) = v815;
  *(v779 + 224) = 0x654B656372756F53;
  *(v779 + 232) = 0xE900000000000079;
  *(v779 + 240) = 0x7367615472616542;
  *(v779 + 248) = 0xE800000000000000;
  *(v779 + 264) = v814;
  *(v779 + 272) = 0x7954656372756F53;
  *(v779 + 312) = v814;
  *(v779 + 280) = 0xEA00000000006570;
  *(v779 + 288) = 0x6574656D61726150;
  *(v779 + 296) = v995;
  *(v979 + 5) = sub_1CA94C1E8();
  v816 = swift_allocObject();
  *(v816 + 16) = xmmword_1CA981300;
  strcpy((v816 + 32), "DestinationKey");
  *(v816 + 47) = -18;
  *(v816 + 48) = 0x736567616D696F6ELL;
  *(v816 + 56) = 0xE800000000000000;
  *(v816 + 72) = v814;
  *(v816 + 80) = 0x74616E6974736544;
  *(v816 + 88) = 0xEF657079546E6F69;
  strcpy((v816 + 96), "URLQueryValue");
  *(v816 + 110) = -4864;
  *(v816 + 120) = v814;
  *(v816 + 128) = 0x73616C436D657449;
  v817 = v990;
  *(v816 + 136) = v988;
  *(v816 + 144) = v817;
  *(v816 + 152) = v960;
  v818 = v987;
  *(v816 + 168) = v814;
  *(v816 + 176) = v818;
  *(v816 + 184) = v969;
  *(v816 + 192) = 1;
  *(v816 + 216) = MEMORY[0x1E69E6370];
  *(v816 + 224) = 0x6574656D61726150;
  *(v816 + 232) = 0xEB00000000495572;
  v819 = swift_allocObject();
  *(v819 + 16) = v982;
  v820 = v985;
  v821 = v967;
  *(v819 + 32) = v985;
  *(v819 + 40) = v821;
  *(v819 + 48) = v959;
  v822 = v989;
  *(v819 + 64) = v814;
  *(v819 + 72) = v822;
  v985 = v820;
  v823 = sub_1CA94C438();
  v974 = v824;
  v975 = v823;
  v825 = sub_1CA94C438();
  v972 = v826;
  v973 = v825;
  v977 = &v924;
  MEMORY[0x1EEE9AC00](v825);
  v827 = v999;
  sub_1CA948D98();
  v828 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v828);
  v829 = &v924 - v1000;
  sub_1CA948B68();

  v830 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v819 + 80) = sub_1CA2F9F14(v975, v974, v973, v972, 0, 0, &v924 - v827, v829);
  v831 = v997;
  v832 = v983;
  *(v819 + 104) = v997;
  *(v819 + 112) = v832;
  *&v983 = v832;
  v833 = sub_1CA94C438();
  v974 = v834;
  v975 = v833;
  v835 = sub_1CA94C438();
  v972 = v836;
  v973 = v835;
  v977 = &v924;
  MEMORY[0x1EEE9AC00](v835);
  sub_1CA948D98();
  v837 = v998;
  v838 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v838);
  v839 = &v924 - v1000;
  sub_1CA948B68();

  v840 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v841 = sub_1CA2F9F14(v975, v974, v973, v972, 0, 0, &v924 - v827, v839);
  *(v819 + 144) = v831;
  *(v819 + 120) = v841;
  sub_1CA94C1E8();
  v842 = v994;
  *(v816 + 240) = sub_1CA2F864C();
  *(v816 + 264) = v842;
  *(v816 + 272) = 0x654B656372756F53;
  *(v816 + 280) = 0xE900000000000079;
  *(v816 + 288) = 0x67616D4972616542;
  *(v816 + 296) = v946;
  v843 = MEMORY[0x1E69E6158];
  *(v816 + 312) = MEMORY[0x1E69E6158];
  *(v816 + 320) = 0x7954656372756F53;
  *(v816 + 328) = 0xEA00000000006570;
  *(v816 + 336) = 0x6574656D61726150;
  *(v816 + 344) = v995;
  *(v816 + 360) = v843;
  strcpy((v816 + 368), "ValueMapping");
  *(v816 + 381) = 0;
  *(v816 + 382) = -5120;
  v844 = v843;
  v845 = sub_1CA94C1E8();
  *(v816 + 408) = v980;
  *(v816 + 384) = v845;
  *(v979 + 6) = sub_1CA94C1E8();
  v846 = swift_allocObject();
  *(v846 + 16) = v964;
  *(v846 + 32) = 0x74616E6974736544;
  *(v846 + 40) = 0xEF657079546E6F69;
  *(v846 + 48) = 0x43656C6261736944;
  *(v846 + 56) = 0xEF6B6361626C6C61;
  *(v846 + 72) = v844;
  *(v846 + 80) = 0x73616C436D657449;
  v847 = v990;
  *(v846 + 88) = v988;
  *(v846 + 96) = v847;
  *(v846 + 104) = v960;
  v848 = v987;
  *(v846 + 120) = v844;
  *(v846 + 128) = v848;
  *(v846 + 136) = v969;
  *(v846 + 144) = 1;
  *(v846 + 168) = MEMORY[0x1E69E6370];
  *(v846 + 176) = 0x6574656D61726150;
  *(v846 + 184) = 0xEB00000000495572;
  v849 = swift_allocObject();
  *(v849 + 16) = v982;
  v850 = v967;
  *(v849 + 32) = v985;
  *(v849 + 40) = v850;
  *(v849 + 48) = v959;
  v851 = v989;
  *(v849 + 64) = v844;
  *(v849 + 72) = v851;
  v988 = sub_1CA94C438();
  v977 = v852;
  v853 = sub_1CA94C438();
  v974 = v854;
  v975 = v853;
  *&v989 = &v924;
  MEMORY[0x1EEE9AC00](v853);
  v855 = v999;
  sub_1CA948D98();
  v856 = v837;
  v857 = [(__CFString *)v837 bundleURL];
  MEMORY[0x1EEE9AC00](v857);
  v858 = &v924 - v1000;
  sub_1CA948B68();

  v859 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v849 + 80) = sub_1CA2F9F14(v988, v977, v975, v974, 0, 0, &v924 - v855, v858);
  v860 = v997;
  v861 = v983;
  *(v849 + 104) = v997;
  *(v849 + 112) = v861;
  v988 = sub_1CA94C438();
  v977 = v862;
  v863 = sub_1CA94C438();
  v974 = v864;
  v975 = v863;
  *&v989 = &v924;
  MEMORY[0x1EEE9AC00](v863);
  sub_1CA948D98();
  v865 = [(__CFString *)v856 bundleURL];
  MEMORY[0x1EEE9AC00](v865);
  v866 = &v924 - v1000;
  sub_1CA948B68();

  v867 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v868 = sub_1CA2F9F14(v988, v977, v975, v974, 0, 0, &v924 - v855, v866);
  *(v849 + 144) = v860;
  *(v849 + 120) = v868;
  sub_1CA94C1E8();
  v869 = v994;
  *(v846 + 192) = sub_1CA2F864C();
  *(v846 + 216) = v869;
  *(v846 + 224) = 0x654B656372756F53;
  *(v846 + 232) = 0xE900000000000079;
  *(v846 + 240) = 0x7574655272616542;
  *(v846 + 248) = v955;
  v870 = MEMORY[0x1E69E6158];
  *(v846 + 264) = MEMORY[0x1E69E6158];
  *(v846 + 272) = 0x7954656372756F53;
  *(v846 + 280) = 0xEA00000000006570;
  *(v846 + 288) = 0x6574656D61726150;
  *(v846 + 296) = v995;
  *(v846 + 312) = v870;
  strcpy((v846 + 320), "ValueMapping");
  *(v846 + 333) = 0;
  *(v846 + 334) = -5120;
  v871 = v870;
  v872 = sub_1CA94C1E8();
  *(v846 + 360) = v980;
  *(v846 + 336) = v872;
  *(v979 + 7) = sub_1CA94C1E8();
  v873 = swift_allocObject();
  *(v873 + 16) = v982;
  *(v873 + 32) = 0x6574656D61726150;
  *(v873 + 40) = 0xEB00000000495572;
  v874 = swift_allocObject();
  *(v874 + 16) = v984;
  v875 = v990;
  *(v874 + 32) = v985;
  *(v874 + 40) = v875;
  *(v874 + 48) = v986;
  *(v874 + 64) = v871;
  *(v874 + 72) = @"KeyboardType";
  *(v874 + 80) = 5001813;
  *(v874 + 88) = 0xE300000000000000;
  v876 = v983;
  *(v874 + 104) = v871;
  *(v874 + 112) = v876;
  v877 = @"KeyboardType";
  v993 = sub_1CA94C438();
  v990 = v878;
  v879 = sub_1CA94C438();
  v881 = v880;
  v996 = &v924;
  MEMORY[0x1EEE9AC00](v879);
  v882 = &v924 - v999;
  sub_1CA948D98();
  v883 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v883);
  v884 = &v924 - v1000;
  sub_1CA948B68();

  v885 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v874 + 120) = sub_1CA2F9F14(v993, v990, v879, v881, 0, 0, v882, v884);
  *(v874 + 144) = v997;
  *(v874 + 152) = @"TextContentType";
  *(v874 + 184) = v871;
  *(v874 + 160) = 5001813;
  *(v874 + 168) = 0xE300000000000000;
  v886 = @"TextContentType";
  sub_1CA94C1E8();
  v887 = v994;
  *(v873 + 48) = sub_1CA2F864C();
  *(v873 + 72) = v887;
  *(v873 + 80) = 0x654B656372756F53;
  *(v873 + 88) = 0xE900000000000079;
  *(v873 + 96) = 0x4C525572616542;
  *(v873 + 104) = 0xE700000000000000;
  *(v873 + 120) = v871;
  *(v873 + 128) = 0x7954656372756F53;
  *(v873 + 168) = v871;
  *(v873 + 136) = 0xEA00000000006570;
  *(v873 + 144) = 0x6574656D61726150;
  *(v873 + 152) = v995;
  v888 = sub_1CA94C1E8();
  v889 = v979;
  *(v979 + 8) = v888;
  v890 = v953;
  v953[10].data = v889;
  *(v890 + 360) = v978;
  *(v890 + 368) = 1701667150;
  *(v890 + 376) = 0xE400000000000000;
  v891 = sub_1CA94C438();
  v893 = v892;
  v894 = sub_1CA94C438();
  v896 = v895;
  v996 = &v924;
  MEMORY[0x1EEE9AC00](v894);
  v897 = &v924 - v999;
  sub_1CA948D98();
  v898 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v898);
  v899 = &v924 - v1000;
  sub_1CA948B68();

  v900 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v890 + 384) = sub_1CA2F9F14(v891, v893, v894, v896, 0, 0, v897, v899);
  *(v890 + 408) = v997;
  strcpy((v890 + 416), "OutputMapping");
  *(v890 + 430) = -4864;
  v901 = swift_allocObject();
  *(v901 + 16) = v976;
  *(v901 + 32) = sub_1CA94C1E8();
  *(v890 + 432) = v901;
  v902 = v987;
  *(v890 + 456) = v956;
  *(v890 + 464) = v902;
  *(v890 + 472) = v966;
  v903 = sub_1CA94C438();
  v905 = v904;
  v906 = sub_1CA94C438();
  v908 = v907;
  v997 = &v924;
  MEMORY[0x1EEE9AC00](v906);
  v909 = &v924 - v999;
  sub_1CA948D98();
  v910 = [(__CFString *)v998 bundleURL];
  MEMORY[0x1EEE9AC00](v910);
  v911 = &v924 - v1000;
  sub_1CA948B68();

  v912 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v913 = sub_1CA2F9F14(v903, v905, v906, v908, 0, 0, v909, v911);
  v914 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(v890 + 504) = v965;
  *(v890 + 480) = v914;
  v915 = MEMORY[0x1E69E6158];
  v916 = sub_1CA94C1E8();
  v917 = v981;
  *(v981 + 72) = v916;
  v918 = v948;
  *(v948 + 48) = v917;
  v919 = v978;
  *(v918 + 72) = v978;
  strcpy((v918 + 80), "Capabilities");
  *(v918 + 93) = 0;
  *(v918 + 94) = -5120;
  *(v918 + 96) = &unk_1F4A01238;
  *(v918 + 120) = v962;
  *(v918 + 128) = 0x656D65686353;
  *(v918 + 168) = v915;
  *(v918 + 136) = 0xE600000000000000;
  *(v918 + 144) = 1918985570;
  *(v918 + 152) = 0xE400000000000000;
  v920 = sub_1CA94C1E8();
  v921 = v949;
  *(v949 + 32) = v920;
  v922 = v947;
  *(v947 + 312) = v919;
  *(v922 + 288) = v921;
  return sub_1CA94C1E8();
}

void Library.folderWithName(_:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = [v4 folders];
  OUTLINED_FUNCTION_36_0();
  sub_1CA27E37C();
  v8 = sub_1CA94C658();

  v9 = sub_1CA25B410();
  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {
      goto LABEL_16;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1CCAA22D0](i, v8);
    }

    else
    {
      if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v11 = *(v8 + 8 * i + 32);
    }

    v12 = v11;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v13 = [v11 name];
    v14 = sub_1CA94C3A8();
    v16 = v15;

    if (v14 == a1 && v16 == a2)
    {

LABEL_16:

      return;
    }

    OUTLINED_FUNCTION_204();
    v18 = sub_1CA94D7F8();

    if (v18)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t Library.insertFolder(name:icon:identifier:)()
{
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_10_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_36_0();
  sub_1CA27E37C();
  OUTLINED_FUNCTION_6_27();
  swift_endAccess();
  return v1;
}

uint64_t Library.insertFolder(name:icon:identifier:insertAt:)()
{
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_10_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_36_0();
  sub_1CA27E37C();
  OUTLINED_FUNCTION_6_27();
  swift_endAccess();
  return v1;
}

Swift::Void __swiftcall Library.delete(folderWithIdentifier:)(Swift::String folderWithIdentifier)
{
  OUTLINED_FUNCTION_37_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE8, &qword_1CA982098);
  OUTLINED_FUNCTION_18_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_5();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_1_0(v14);
  v32[0] = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v32 - v19;
  v21 = OBJC_IVAR___WFLibrary_capsule;
  OUTLINED_FUNCTION_8_17();
  swift_beginAccess();
  (*(v6 + 16))(v3, v1 + v21, v4);
  sub_1CA2C9BB4();
  (*(v6 + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF0, &qword_1CA9820A0);
  v22 = OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_49(v22, v23, v24);
  if (v29)
  {
    v25 = &qword_1EC443BE8;
    v26 = &qword_1CA982098;
LABEL_7:
    sub_1CA27080C(v2, v25, v26);
    goto LABEL_8;
  }

  v27 = OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_49(v27, v28, v14);
  if (v29)
  {
    v25 = &qword_1EC443BF0;
    v26 = &qword_1CA9820A0;
    goto LABEL_7;
  }

  v30 = v32[0];
  v31 = (*(v32[0] + 32))(v20, v2, v14);
  MEMORY[0x1EEE9AC00](v31);
  v32[-2] = v20;
  swift_beginAccess();
  sub_1CA94BFF8();
  swift_endAccess();
  (*(v30 + 8))(v20, v14);
LABEL_8:
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA4C8710()
{
  v0 = sub_1CA94BFA8();
  v1 = *(type metadata accessor for LibraryModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
  sub_1CA94BDA8();
  return v0(&v3, 0);
}

uint64_t Library.update(folderWithIdentifier:newName:newIcon:)()
{
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_10_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_36_0();
  sub_1CA27E37C();
  OUTLINED_FUNCTION_6_27();
  result = swift_endAccess();
  if (!v0)
  {
    return v2;
  }

  return result;
}

void sub_1CA4C88AC(void *a1@<X8>)
{
  sub_1CA2D2D54();
  if (!v1)
  {
    *a1 = v3;
  }
}

void Library.folder(containing:)()
{
  OUTLINED_FUNCTION_37_0();
  v128 = v1;
  v129 = v2;
  v3 = sub_1CA94C168();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v114 = v5;
  v115 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v113 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC443BD0, &unk_1CA983B10);
  v11 = OUTLINED_FUNCTION_18_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_1();
  v118 = v14;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v15);
  v120 = &v107 - v16;
  v17 = type metadata accessor for LibraryModel.FolderCollection(0);
  v18 = OUTLINED_FUNCTION_18_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_3_1();
  v116 = v21;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v22);
  v117 = &v107 - v23;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
  OUTLINED_FUNCTION_1_0(v125);
  v123 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_43();
  v124 = v28;
  v127 = type metadata accessor for LibraryModel(0);
  v29 = OUTLINED_FUNCTION_52(v127);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_6_0();
  v121 = v33 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0(v34);
  v36 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v107 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70);
  v43 = OUTLINED_FUNCTION_18_0(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_3_1();
  v122 = v46;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v107 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  v51 = OUTLINED_FUNCTION_1_0(v50);
  v130 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_3_1();
  v119 = v55;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v107 - v57;
  v59 = OBJC_IVAR___WFLibrary_capsule;
  swift_beginAccess();
  v60 = *(v36 + 16);
  v126 = v0;
  v60(v41, v0 + v59, v34);
  sub_1CA2C99D8();
  v61 = v34;
  v64 = *(v36 + 8);
  v63 = v36 + 8;
  v62 = v64;
  v64(v41, v61);
  v65 = OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_49(v65, v66, v50);
  if (v76)
  {
    v67 = &qword_1EC443BB8;
    v68 = &unk_1CA983A70;
LABEL_4:
    v69 = v49;
LABEL_11:
    sub_1CA27080C(v69, v67, v68);
    goto LABEL_12;
  }

  v128 = *(v130 + 32);
  v129 = v130 + 32;
  v128(v58, v49, v50);
  v70 = v126;
  v110 = v59;
  v108 = v60;
  v60(v41, v126 + v59, v61);
  v71 = v121;
  sub_1CA94BFD8();
  v111 = v61;
  v112 = v63;
  v109 = v62;
  v62(v41, v61);
  v73 = v123;
  v72 = v124;
  v74 = v125;
  (*(v123 + 16))(v124, v71 + *(v127 + 20), v125);
  sub_1CA4C9F7C(v71, type metadata accessor for LibraryModel);
  v75 = v122;
  OUTLINED_FUNCTION_18_2();
  sub_1CA94BD98();
  (*(v73 + 8))(v72, v74);
  OUTLINED_FUNCTION_49(v75, 1, v50);
  if (v76)
  {
    (*(v130 + 8))(v58, v50);
    v67 = &qword_1EC443BB8;
    v68 = &unk_1CA983A70;
    v69 = v75;
    goto LABEL_11;
  }

  v125 = v58;
  v128(v119, v75, v50);
  v77 = v120;
  sub_1CA94BE38();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BD8, &qword_1CA982068);
  OUTLINED_FUNCTION_49(v77, 1, v78);
  if (v79)
  {
    v80 = *(v130 + 8);
    v81 = OUTLINED_FUNCTION_18_2();
    v80(v81);
    v82 = OUTLINED_FUNCTION_24_14();
    v80(v82);
    v67 = &off_1EC443BD0;
    v68 = &unk_1CA983B10;
    v69 = v77;
    goto LABEL_11;
  }

  v83 = v111;
  v108(v41, v70 + v110, v111);
  sub_1CA34137C();
  v84 = v116;
  sub_1CA94BEC8();
  v109(v41, v83);
  OUTLINED_FUNCTION_39(v78);
  v86 = *(v85 + 8);
  v86(v77, v78);
  v87 = v117;
  sub_1CA3413D4(v84, v117);
  v49 = v118;
  sub_1CA94BE38();
  v88 = OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_49(v88, v89, v78);
  if (v90)
  {
    OUTLINED_FUNCTION_0_42();
    sub_1CA4C9F7C(v87, v91);
    v92 = *(v130 + 8);
    v93 = OUTLINED_FUNCTION_18_2();
    v92(v93);
    v94 = OUTLINED_FUNCTION_24_14();
    v92(v94);
    v67 = &off_1EC443BD0;
    v68 = &unk_1CA983B10;
    goto LABEL_4;
  }

  v95 = v113;
  sub_1CA94BE88();
  CRKeyPath.recoveredStringIdentifier.getter();
  v97 = v96;
  (*(v114 + 8))(v95, v115);
  v86(v49, v78);
  v98 = v130;
  if (v97)
  {
    LibraryModel.FolderCollection.workflowCollection(id:)();

    OUTLINED_FUNCTION_0_42();
    sub_1CA4C9F7C(v87, v99);
    v100 = *(v98 + 8);
    v101 = OUTLINED_FUNCTION_18_2();
    v100(v101);
    v102 = OUTLINED_FUNCTION_24_14();
    v100(v102);
  }

  else
  {
    OUTLINED_FUNCTION_0_42();
    sub_1CA4C9F7C(v87, v103);
    v104 = *(v98 + 8);
    v105 = OUTLINED_FUNCTION_18_2();
    v104(v105);
    v106 = OUTLINED_FUNCTION_24_14();
    v104(v106);
  }

LABEL_12:
  OUTLINED_FUNCTION_36();
}

id sub_1CA4C91FC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1CA94C3A8();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);

  return v10;
}

id Library.folderCollection(identifier:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for LibraryModel.FolderCollection(0);
  v7 = OUTLINED_FUNCTION_18_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC443BD0, &unk_1CA983B10);
  OUTLINED_FUNCTION_18_0(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_43();
  v73 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE8, &qword_1CA982098);
  OUTLINED_FUNCTION_18_0(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_14_5();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  v29 = OUTLINED_FUNCTION_1_0(v28);
  v74 = v30;
  v75 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v66 - v34;
  if (sub_1CA94C3A8() == a1 && v36 == a2)
  {
  }

  else
  {
    v72 = v12;
    v38 = a1;
    v39 = sub_1CA94D7F8();

    if ((v39 & 1) == 0)
    {
      v69 = v35;
      v40 = OBJC_IVAR___WFLibrary_capsule;
      v41 = v76;
      OUTLINED_FUNCTION_8_17();
      swift_beginAccess();
      v42 = *(v20 + 16);
      v68 = v40;
      v43 = v41 + v40;
      v44 = v42;
      v42(v3, v43, v18);
      v70 = a2;
      v71 = v38;
      sub_1CA2C9BB4();
      v45 = *(v20 + 8);
      v45(v3, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF0, &qword_1CA9820A0);
      v46 = OUTLINED_FUNCTION_83();
      if (__swift_getEnumTagSinglePayload(v46, v47, v48) == 1)
      {
        v49 = &qword_1EC443BE8;
        v50 = &qword_1CA982098;
      }

      else
      {
        v52 = OUTLINED_FUNCTION_83();
        v53 = v75;
        if (__swift_getEnumTagSinglePayload(v52, v54, v75) != 1)
        {
          v67 = v45;
          (*(v74 + 32))(v69, v2, v53);
          v60 = v73;
          sub_1CA94BE38();
          v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BD8, &qword_1CA982068);
          if (__swift_getEnumTagSinglePayload(v60, 1, v61) != 1)
          {
            v44(v3, v76 + v68, v18);
            type metadata accessor for LibraryModel(0);
            sub_1CA34137C();
            v62 = v53;
            v63 = v72;
            sub_1CA94BEC8();
            v67(v3, v18);
            OUTLINED_FUNCTION_39(v61);
            (*(v64 + 8))(v60, v61);
            v56 = v70;
            v51 = LibraryModel.FolderCollection.workflowCollection(id:)();
            OUTLINED_FUNCTION_0_42();
            sub_1CA4C9F7C(v63, v65);
            (*(v74 + 8))(v69, v62);
            if (v51)
            {
              return v51;
            }

            goto LABEL_17;
          }

          (*(v74 + 8))(v69, v53);
          v49 = &off_1EC443BD0;
          v50 = &unk_1CA983B10;
          v55 = v60;
LABEL_16:
          sub_1CA27080C(v55, v49, v50);
          v56 = v70;
LABEL_17:
          v77 = 0;
          v78 = 0xE000000000000000;
          sub_1CA94D408();

          v77 = 0xD000000000000023;
          v78 = 0x80000001CA9AD570;
          MEMORY[0x1CCAA1300](v71, v56);
          v57 = v77;
          v51 = v78;
          sub_1CA2D9AF4();
          swift_allocError();
          *v58 = v57;
          *(v58 + 8) = v51;
          *(v58 + 16) = 1;
          swift_willThrow();
          return v51;
        }

        v49 = &qword_1EC443BF0;
        v50 = &qword_1CA9820A0;
      }

      v55 = v2;
      goto LABEL_16;
    }
  }

  if (qword_1EC442C58 != -1)
  {
    swift_once();
  }

  return qword_1EC442C60;
}

Swift::Bool __swiftcall Library.hasFolder(identifier:)(Swift::String identifier)
{
  OUTLINED_FUNCTION_37_0();
  v66 = v4;
  v67 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC443BD0, &unk_1CA983B10);
  OUTLINED_FUNCTION_18_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_43();
  v63 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C08, &qword_1CA9820B0);
  OUTLINED_FUNCTION_18_0(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_43();
  v64 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14_5();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE8, &qword_1CA982098);
  OUTLINED_FUNCTION_18_0(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v61 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_1_0(v28);
  v65 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_25();
  v33 = OBJC_IVAR___WFLibrary_capsule;
  OUTLINED_FUNCTION_8_17();
  swift_beginAccess();
  v34 = *(v18 + 16);
  v62 = v1;
  v34(v2, v1 + v33, v16);
  sub_1CA2C9BB4();
  v35 = *(v18 + 8);
  v35(v2, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF0, &qword_1CA9820A0);
  v36 = OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_49(v36, v37, v38);
  if (v43)
  {
    v39 = &qword_1EC443BE8;
    v40 = &qword_1CA982098;
LABEL_7:
    v44 = v27;
    goto LABEL_8;
  }

  v41 = OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_49(v41, v42, v28);
  if (v43)
  {
    v39 = &qword_1EC443BF0;
    v40 = &qword_1CA9820A0;
    goto LABEL_7;
  }

  v67 = v35;
  (*(v65 + 32))(v3, v27, v28);
  v46 = v63;
  sub_1CA94BE38();
  v47 = v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BD8, &qword_1CA982068);
  OUTLINED_FUNCTION_49(v47, 1, v48);
  if (!v49)
  {
    v34(v2, v62 + v33, v16);
    type metadata accessor for LibraryModel(0);
    sub_1CA34137C();
    v55 = v64;
    sub_1CA94BEC8();
    v67(v2, v16);
    v56 = *(v65 + 8);
    v57 = OUTLINED_FUNCTION_204();
    v58(v57);
    OUTLINED_FUNCTION_39(v48);
    (*(v59 + 8))(v47, v48);
    v60 = type metadata accessor for LibraryModel.FolderCollection(0);
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v60);
    sub_1CA27080C(v55, &qword_1EC443C08, &qword_1CA9820B0);
    goto LABEL_9;
  }

  v50 = *(v65 + 8);
  v51 = OUTLINED_FUNCTION_204();
  v52(v51);
  sub_1CA27080C(v47, &off_1EC443BD0, &unk_1CA983B10);
  v53 = type metadata accessor for LibraryModel.FolderCollection(0);
  v54 = v64;
  __swift_storeEnumTagSinglePayload(v64, 1, 1, v53);
  v39 = &qword_1EC443C08;
  v40 = &qword_1CA9820B0;
  v44 = v54;
LABEL_8:
  sub_1CA27080C(v44, v39, v40);
LABEL_9:
  OUTLINED_FUNCTION_36();
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Library.moveFolders(_:toIndex:)(Swift::OpaquePointer _, Swift::Int toIndex)
{
  OUTLINED_FUNCTION_22_14();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  sub_1CA94BFF8();
  swift_endAccess();
}

void sub_1CA4C9EC0()
{
  OUTLINED_FUNCTION_20_16();
  v2 = *(v0 + 32);
  sub_1CA2D0DF0();
  *v1 = v3;
}

void sub_1CA4C9EFC()
{
  OUTLINED_FUNCTION_20_16();
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  sub_1CA2D1078();
  *v1 = v4;
}

void sub_1CA4C9F58(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  sub_1CA4C88AC(a1);
}

uint64_t sub_1CA4C9F7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_52(v3);
  (*(v4 + 8))(a1);
  return a1;
}

id sub_1CA4CA034()
{
  v115 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA99BD90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v121 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v122 = v12;
  v13 = &v108 - v121;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v118 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v119 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v120 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v108 - v120;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v117 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 104) = v117;
  *(inited + 80) = v19;
  *(inited + 112) = sub_1CA94C368();
  *(inited + 120) = 0xD000000000000013;
  *(inited + 128) = 0x80000001CA993390;
  *(inited + 144) = MEMORY[0x1E69E6158];
  *(inited + 152) = @"Description";
  *&v116 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438();
  v113 = v24;
  v25 = sub_1CA94C438();
  v27 = v26;
  v114 = &v108;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v108 - v121;
  sub_1CA948D98();
  v29 = [v118 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v108 - v120;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v113, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v117;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v33 = v116;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v33;
  *(inited + 192) = @"IconName";
  *(inited + 200) = 1954047316;
  *(inited + 208) = 0xE400000000000000;
  v34 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"Input";
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v35 = swift_initStackObject();
  v116 = xmmword_1CA981350;
  *(v35 + 16) = xmmword_1CA981350;
  *(v35 + 32) = 0x656C7069746C754DLL;
  *(v35 + 40) = 0xE800000000000000;
  v36 = MEMORY[0x1E69E6370];
  *(v35 + 48) = 1;
  *(v35 + 72) = v36;
  strcpy((v35 + 80), "ParameterKey");
  *(v35 + 93) = 0;
  *(v35 + 94) = -5120;
  *(v35 + 96) = 0x7475706E494657;
  *(v35 + 104) = 0xE700000000000000;
  *(v35 + 120) = v34;
  *(v35 + 128) = 0x6465726975716552;
  *(v35 + 136) = 0xE800000000000000;
  *(v35 + 144) = 1;
  *(v35 + 168) = v36;
  *(v35 + 176) = 0x7365707954;
  *(v35 + 184) = 0xE500000000000000;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v35 + 216) = v114;
  *(v35 + 192) = &unk_1F4A01268;
  v37 = @"IconName";
  v38 = @"Input";
  v39 = sub_1CA94C1E8();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v113 = v40;
  *(inited + 240) = v39;
  *(inited + 264) = v40;
  *(inited + 272) = @"Name";
  v41 = @"Name";
  v42 = sub_1CA94C438();
  v109 = v43;
  v110 = v42;
  v44 = sub_1CA94C438();
  v46 = v45;
  v111 = &v108;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v108 - v121;
  sub_1CA948D98();
  v48 = v118;
  v49 = [v118 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v108 - v120;
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v110, v109, v44, v46, 0, 0, v47, v50);
  v52 = v117;
  *(inited + 304) = v117;
  *(inited + 312) = @"Output";
  v53 = swift_initStackObject();
  *(v53 + 16) = v116;
  *(v53 + 32) = 0x75736F6C63736944;
  *(v53 + 40) = 0xEF6C6576654C6572;
  *(v53 + 48) = 0x63696C627550;
  *(v53 + 56) = 0xE600000000000000;
  *(v53 + 72) = MEMORY[0x1E69E6158];
  *(v53 + 80) = 0x656C7069746C754DLL;
  *(v53 + 88) = 0xE800000000000000;
  *(v53 + 96) = 1;
  *(v53 + 120) = MEMORY[0x1E69E6370];
  *(v53 + 128) = 0x614E74757074754FLL;
  *(v53 + 136) = 0xEA0000000000656DLL;
  v54 = @"Output";
  v55 = sub_1CA94C438();
  v110 = v56;
  v111 = v55;
  v109 = sub_1CA94C438();
  v58 = v57;
  v112 = &v108;
  MEMORY[0x1EEE9AC00](v109);
  v59 = &v108 - v121;
  sub_1CA948D98();
  v60 = [v48 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v108 - v120;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v53 + 144) = sub_1CA2F9F14(v111, v110, v109, v58, 0, 0, v59, v61);
  *(v53 + 168) = v52;
  *(v53 + 176) = 0x7365707954;
  *(v53 + 216) = v114;
  *(v53 + 184) = 0xE500000000000000;
  *(v53 + 192) = &unk_1F4A01298;
  v63 = MEMORY[0x1E69E6158];
  *(inited + 320) = sub_1CA94C1E8();
  *(inited + 344) = v113;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v114 = swift_allocObject();
  *(v114 + 1) = xmmword_1CA9813B0;
  v113 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v64 = swift_allocObject();
  *(v64 + 16) = v116;
  *(v64 + 32) = @"Class";
  *(v64 + 40) = 0xD000000000000019;
  *(v64 + 48) = 0x80000001CA99B030;
  *(v64 + 64) = v63;
  *(v64 + 72) = @"Key";
  *(v64 + 80) = 0x7475706E494657;
  *(v64 + 88) = 0xE700000000000000;
  *(v64 + 104) = v63;
  *(v64 + 112) = @"Label";
  v65 = @"Parameters";
  v66 = @"Class";
  v67 = @"Key";
  v68 = @"Label";
  v69 = sub_1CA94C438();
  v110 = v70;
  v111 = v69;
  v71 = sub_1CA94C438();
  v109 = v72;
  v112 = &v108;
  MEMORY[0x1EEE9AC00](v71);
  v73 = v121;
  sub_1CA948D98();
  v74 = v118;
  v75 = [v118 bundleURL];
  v108 = &v108;
  MEMORY[0x1EEE9AC00](v75);
  *&v116 = inited;
  v76 = v120;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v64 + 120) = sub_1CA2F9F14(v111, v110, v71, v109, 0, 0, &v108 - v73, &v108 - v76);
  v78 = v117;
  *(v64 + 144) = v117;
  *(v64 + 152) = @"Placeholder";
  v79 = @"Placeholder";
  v80 = sub_1CA94C438();
  v110 = v81;
  v111 = v80;
  v109 = sub_1CA94C438();
  v83 = v82;
  v112 = &v108;
  MEMORY[0x1EEE9AC00](v109);
  v84 = &v108 - v73;
  sub_1CA948D98();
  v85 = [v74 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v87 = sub_1CA2F9F14(v111, v110, v109, v83, 0, 0, v84, &v108 - v76);
  *(v64 + 184) = v78;
  *(v64 + 160) = v87;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v88 = sub_1CA2F864C();
  v89 = v114;
  v114[4] = v88;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v91 = v116;
  *(v116 + 360) = v89;
  *(v91 + 384) = v90;
  *(v91 + 392) = @"ParameterSummary";
  v92 = @"ParameterSummary";
  v93 = sub_1CA94C438();
  v95 = v94;
  v96 = sub_1CA94C438();
  v98 = v97;
  v117 = &v108;
  MEMORY[0x1EEE9AC00](v96);
  v99 = &v108 - v121;
  sub_1CA948D98();
  v100 = [v118 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v108 - v120;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v103 = sub_1CA2F9F14(v93, v95, v96, v98, 0, 0, v99, v101);
  v104 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v105 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v91 + 400) = v104;
  *(v91 + 424) = v105;
  *(v91 + 432) = @"ResidentCompatible";
  *(v91 + 464) = MEMORY[0x1E69E6370];
  *(v91 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v106 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4CAF54()
{
  v33[1] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"IconColor";
  *(inited + 80) = 1953392980;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 104) = v1;
  *(inited + 112) = @"IconSymbol";
  *(inited + 120) = 0xD000000000000017;
  *(inited + 128) = 0x80000001CA9C1A40;
  *(inited + 144) = v1;
  *(inited + 152) = @"IconSymbolColor";
  *(inited + 160) = 1702194242;
  *(inited + 168) = 0xE400000000000000;
  *(inited + 184) = v1;
  *(inited + 192) = @"Input";
  v2 = @"ActionClass";
  v3 = @"IconColor";
  v4 = @"IconSymbol";
  v5 = @"IconSymbolColor";
  v6 = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v7 = sub_1CA94C1E8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442F0, &qword_1CA982FA8);
  *(inited + 200) = v7;
  *(inited + 224) = v8;
  *(inited + 232) = @"LocallyProcessesData";
  v9 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v9;
  *(inited + 272) = @"Name";
  v10 = @"LocallyProcessesData";
  v11 = @"Name";
  v12 = sub_1CA94C438();
  v14 = v13;
  v15 = sub_1CA94C438();
  v17 = v16;
  v18 = sub_1CA948E58();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v22 = [qword_1EDB9F690 bundleURL];
  v23 = sub_1CA948BA8();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v27 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v28 = sub_1CA2F9F14(v12, v14, v15, v17, 0, 0, v21, v26);
  v29 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 280) = v28;
  *(inited + 304) = v29;
  *(inited + 312) = @"ResidentCompatible";
  *(inited + 344) = MEMORY[0x1E69E6370];
  *(inited + 320) = 1;
  v30 = @"ResidentCompatible";
  v31 = sub_1CA94C368();
  *(inited + 384) = MEMORY[0x1E69E6158];
  *(inited + 352) = v31;
  *(inited + 360) = 0xD000000000000018;
  *(inited + 368) = 0x80000001CA9933D0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4CB3B0()
{
  v180 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9C1AC0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v190 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v191 = v12;
  v13 = &v170 - v190;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v187 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v188 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v189 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v170 - v189;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v186 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v183 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v184 = xmmword_1CA981350;
  *(v24 + 16) = xmmword_1CA981350;
  *(v24 + 32) = @"DescriptionInput";
  v25 = @"Description";
  v26 = @"DescriptionInput";
  v181 = sub_1CA94C438();
  v179 = v27;
  v28 = sub_1CA94C438();
  v30 = v29;
  v182 = &v170;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v170 - v190;
  sub_1CA948D98();
  v32 = v187;
  v33 = [v187 bundleURL];
  v185 = inited;
  MEMORY[0x1EEE9AC00](v33);
  v34 = v189;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v181, v179, v28, v30, 0, 0, v31, &v170 - v34);
  *(v24 + 64) = v186;
  *(v24 + 72) = @"DescriptionNote";
  v36 = @"DescriptionNote";
  v181 = sub_1CA94C438();
  v179 = v37;
  v178 = sub_1CA94C438();
  v39 = v38;
  v182 = &v170;
  MEMORY[0x1EEE9AC00](v178);
  v40 = &v170 - v190;
  sub_1CA948D98();
  v41 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 80) = sub_1CA2F9F14(v181, v179, v178, v39, 0, 0, v40, &v170 - v34);
  *(v24 + 104) = v186;
  *(v24 + 112) = @"DescriptionResult";
  v43 = @"DescriptionResult";
  v181 = sub_1CA94C438();
  v179 = v44;
  v45 = sub_1CA94C438();
  v47 = v46;
  v182 = &v170;
  MEMORY[0x1EEE9AC00](v45);
  v48 = v190;
  sub_1CA948D98();
  v49 = [v187 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  v50 = v189;
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 120) = sub_1CA2F9F14(v181, v179, v45, v47, 0, 0, &v170 - v48, &v170 - v50);
  v52 = v186;
  *(v24 + 144) = v186;
  *(v24 + 152) = @"DescriptionSummary";
  v53 = @"DescriptionSummary";
  v181 = sub_1CA94C438();
  v179 = v54;
  v55 = sub_1CA94C438();
  v57 = v56;
  v182 = &v170;
  MEMORY[0x1EEE9AC00](v55);
  sub_1CA948D98();
  v58 = [v187 bundleURL];
  MEMORY[0x1EEE9AC00](v58);
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v60 = sub_1CA2F9F14(v181, v179, v55, v57, 0, 0, &v170 - v48, &v170 - v50);
  *(v24 + 184) = v52;
  *(v24 + 160) = v60;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v61 = v183;
  v62 = sub_1CA6B3784();
  v63 = v185;
  v185[20] = v62;
  v63[23] = v61;
  v63[24] = @"DisabledOnPlatforms";
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v63[25] = &unk_1F4A01370;
  v63[28] = v64;
  v63[29] = @"Input";
  v65 = v64;
  v183 = v64;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v66 = swift_initStackObject();
  *(v66 + 16) = v184;
  *(v66 + 32) = 0x656C7069746C754DLL;
  *(v66 + 40) = 0xE800000000000000;
  v67 = MEMORY[0x1E69E6370];
  *(v66 + 48) = 1;
  *(v66 + 72) = v67;
  strcpy((v66 + 80), "ParameterKey");
  *(v66 + 93) = 0;
  *(v66 + 94) = -5120;
  *(v66 + 96) = 0x7475706E494657;
  *(v66 + 104) = 0xE700000000000000;
  *(v66 + 120) = MEMORY[0x1E69E6158];
  *(v66 + 128) = 0x6465726975716552;
  *(v66 + 136) = 0xE800000000000000;
  *(v66 + 144) = 1;
  *(v66 + 168) = v67;
  *(v66 + 176) = 0x7365707954;
  v68 = v67;
  *(v66 + 216) = v65;
  *(v66 + 184) = 0xE500000000000000;
  *(v66 + 192) = &unk_1F4A013A0;
  v69 = @"DisabledOnPlatforms";
  v70 = @"Input";
  v71 = sub_1CA94C1E8();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v182 = v72;
  v63[30] = v71;
  v63[33] = v72;
  v63[34] = @"InputPassthrough";
  *(v63 + 280) = 0;
  v63[38] = v68;
  v63[39] = @"Name";
  v73 = @"InputPassthrough";
  v74 = @"Name";
  v75 = sub_1CA94C438();
  v177 = v76;
  v178 = v75;
  v77 = sub_1CA94C438();
  v79 = v78;
  v179 = &v170;
  MEMORY[0x1EEE9AC00](v77);
  v80 = &v170 - v190;
  sub_1CA948D98();
  v81 = v187;
  v82 = [v187 bundleURL];
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v170 - v189;
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v85 = sub_1CA2F9F14(v178, v177, v77, v79, 0, 0, v80, v83);
  v86 = v185;
  v87 = v186;
  v185[40] = v85;
  v86[43] = v87;
  v86[44] = @"Output";
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1CA9813C0;
  *(v88 + 32) = 0x656C7069746C754DLL;
  *(v88 + 40) = 0xE800000000000000;
  *(v88 + 48) = 1;
  *(v88 + 72) = MEMORY[0x1E69E6370];
  *(v88 + 80) = 0x614E74757074754FLL;
  *(v88 + 88) = 0xEA0000000000656DLL;
  v89 = @"Output";
  v90 = sub_1CA94C438();
  v178 = v91;
  v179 = v90;
  v177 = sub_1CA94C438();
  v93 = v92;
  v181 = &v170;
  MEMORY[0x1EEE9AC00](v177);
  v94 = &v170 - v190;
  sub_1CA948D98();
  v95 = [v81 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v170 - v189;
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v88 + 96) = sub_1CA2F9F14(v179, v178, v177, v93, 0, 0, v94, v96);
  *(v88 + 120) = v87;
  *(v88 + 128) = 0x7365707954;
  *(v88 + 168) = v183;
  *(v88 + 136) = 0xE500000000000000;
  *(v88 + 144) = &unk_1F4A013F0;
  v98 = MEMORY[0x1E69E6158];
  v99 = sub_1CA94C1E8();
  v100 = v185;
  v185[45] = v99;
  v100[48] = v182;
  v100[49] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v182 = swift_allocObject();
  *(v182 + 1) = xmmword_1CA981360;
  v181 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_1CA981370;
  *(v101 + 32) = @"AlwaysShowsButton";
  *(v101 + 40) = 1;
  *(v101 + 64) = MEMORY[0x1E69E6370];
  *(v101 + 72) = @"Class";
  *(v101 + 80) = 0xD00000000000001BLL;
  *(v101 + 88) = 0x80000001CA9C1C80;
  *(v101 + 104) = v98;
  *(v101 + 112) = @"Key";
  *(v101 + 120) = 0xD000000000000019;
  *(v101 + 128) = 0x80000001CA9C1CA0;
  *(v101 + 144) = v98;
  *(v101 + 152) = @"Label";
  v102 = @"Class";
  v103 = @"Key";
  v104 = @"Label";
  v178 = v102;
  v177 = v103;
  v176 = v104;
  v105 = @"Parameters";
  v106 = @"AlwaysShowsButton";
  v107 = sub_1CA94C438();
  v173 = v108;
  v174 = v107;
  v109 = sub_1CA94C438();
  v111 = v110;
  v175 = &v170;
  MEMORY[0x1EEE9AC00](v109);
  v112 = v190;
  sub_1CA948D98();
  v113 = [v187 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v170 - v189;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v101 + 160) = sub_1CA2F9F14(v174, v173, v109, v111, 0, 0, &v170 - v112, v114);
  v116 = v186;
  *(v101 + 184) = v186;
  *(v101 + 192) = @"Placeholder";
  v175 = @"Placeholder";
  v117 = sub_1CA94C438();
  v172 = v118;
  v173 = v117;
  v171 = sub_1CA94C438();
  v120 = v119;
  v174 = &v170;
  MEMORY[0x1EEE9AC00](v171);
  v121 = &v170 - v112;
  sub_1CA948D98();
  v122 = v187;
  v123 = [v187 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  v124 = &v170 - v189;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v126 = sub_1CA2F9F14(v173, v172, v171, v120, 0, 0, v121, v124);
  *(v101 + 224) = v116;
  *(v101 + 200) = v126;
  _s3__C3KeyVMa_0(0);
  v174 = v127;
  v173 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v182[4] = sub_1CA2F864C();
  v128 = swift_allocObject();
  *(v128 + 16) = v184;
  *(v128 + 32) = v178;
  *(v128 + 40) = 0xD000000000000019;
  *(v128 + 48) = 0x80000001CA99B030;
  v129 = MEMORY[0x1E69E6158];
  v130 = v177;
  *(v128 + 64) = MEMORY[0x1E69E6158];
  *(v128 + 72) = v130;
  *(v128 + 80) = 0x7475706E494657;
  *(v128 + 88) = 0xE700000000000000;
  v131 = v176;
  *(v128 + 104) = v129;
  *(v128 + 112) = v131;
  v132 = sub_1CA94C438();
  v178 = v133;
  v179 = v132;
  v177 = sub_1CA94C438();
  v135 = v134;
  *&v184 = &v170;
  MEMORY[0x1EEE9AC00](v177);
  v136 = v190;
  sub_1CA948D98();
  v137 = v122;
  v138 = [v122 bundleURL];
  v176 = &v170;
  MEMORY[0x1EEE9AC00](v138);
  v139 = v189;
  sub_1CA948B68();

  v140 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v128 + 120) = sub_1CA2F9F14(v179, v178, v177, v135, 0, 0, &v170 - v136, &v170 - v139);
  v141 = v175;
  *(v128 + 144) = v186;
  *(v128 + 152) = v141;
  v142 = sub_1CA94C438();
  v178 = v143;
  v179 = v142;
  v144 = sub_1CA94C438();
  v177 = v145;
  *&v184 = &v170;
  MEMORY[0x1EEE9AC00](v144);
  sub_1CA948D98();
  v146 = [v137 bundleURL];
  MEMORY[0x1EEE9AC00](v146);
  sub_1CA948B68();

  v147 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v148 = sub_1CA2F9F14(v179, v178, v144, v177, 0, 0, &v170 - v136, &v170 - v139);
  *(v128 + 184) = v186;
  *(v128 + 160) = v148;
  sub_1CA94C1E8();
  v149 = sub_1CA2F864C();
  v150 = v182;
  v182[5] = v149;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v152 = v185;
  v185[50] = v150;
  v152[53] = v151;
  v152[54] = @"ParameterSummary";
  v153 = @"ParameterSummary";
  v154 = sub_1CA94C438();
  v156 = v155;
  v157 = sub_1CA94C438();
  v159 = v158;
  MEMORY[0x1EEE9AC00](v157);
  v160 = &v170 - v190;
  sub_1CA948D98();
  v161 = [v187 bundleURL];
  MEMORY[0x1EEE9AC00](v161);
  v162 = &v170 - v189;
  sub_1CA948B68();

  v163 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v164 = sub_1CA2F9F14(v154, v156, v157, v159, 0, 0, v160, v162);
  v165 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v166 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v167 = v185;
  v185[55] = v165;
  v167[58] = v166;
  v167[59] = @"RequiredResources";
  v167[63] = v183;
  v167[60] = &unk_1F4A01420;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v168 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4CC8FC()
{
  v285 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA9C1DC0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  *&v298 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v302 = v11;
  v304 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v277 - v304;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v301 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v300 = v15;
  v303 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v277 - v303;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v298, v5, v6, v8, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *&v298 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v297 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  v284 = xmmword_1CA97EDF0;
  *(v20 + 16) = xmmword_1CA97EDF0;
  *(v20 + 32) = @"DescriptionNote";
  v21 = @"Description";
  v22 = @"DescriptionNote";
  v23 = sub_1CA94C438();
  v294 = v24;
  v295 = v23;
  v25 = sub_1CA94C438();
  v27 = v26;
  v296 = &v277;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v277 - v304;
  sub_1CA948D98();
  v29 = v301;
  v30 = [v301 bundleURL];
  v299 = inited;
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v303;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 40) = sub_1CA2F9F14(v295, v294, v25, v27, 0, 0, v28, &v277 - v32);
  v34 = v298;
  *(v20 + 64) = v298;
  *(v20 + 72) = @"DescriptionSummary";
  v35 = @"DescriptionSummary";
  v36 = sub_1CA94C438();
  v294 = v37;
  v295 = v36;
  v38 = sub_1CA94C438();
  v40 = v39;
  v296 = &v277;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v277 - v304;
  sub_1CA948D98();
  v42 = [v29 bundleURL];
  MEMORY[0x1EEE9AC00](v42);
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v44 = sub_1CA2F9F14(v295, v294, v38, v40, 0, 0, v41, &v277 - v32);
  *(v20 + 104) = v34;
  *(v20 + 80) = v44;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v45 = v297;
  v46 = sub_1CA6B3784();
  v47 = v299;
  v299[15] = v46;
  v47[18] = v45;
  v47[19] = @"IconColor";
  v47[20] = 1953392980;
  v47[21] = 0xE400000000000000;
  v48 = MEMORY[0x1E69E6158];
  v47[23] = MEMORY[0x1E69E6158];
  v47[24] = @"IconSymbol";
  v291 = 0xD000000000000014;
  v47[25] = 0xD000000000000014;
  v47[26] = 0x80000001CA9C1F10;
  v47[28] = v48;
  v47[29] = @"IconSymbolColor";
  v47[30] = 6579538;
  v47[31] = 0xE300000000000000;
  v47[33] = v48;
  v47[34] = @"Input";
  v49 = v47;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v50 = swift_initStackObject();
  v292 = xmmword_1CA981350;
  *(v50 + 16) = xmmword_1CA981350;
  *(v50 + 32) = 0x656C7069746C754DLL;
  *(v50 + 40) = 0xE800000000000000;
  v51 = MEMORY[0x1E69E6370];
  *(v50 + 48) = 1;
  *(v50 + 72) = v51;
  strcpy((v50 + 80), "ParameterKey");
  *(v50 + 93) = 0;
  *(v50 + 94) = -5120;
  *(v50 + 96) = 0x657461444657;
  *(v50 + 104) = 0xE600000000000000;
  *(v50 + 120) = v48;
  *(v50 + 128) = 0x6465726975716552;
  *(v50 + 136) = 0xE800000000000000;
  *(v50 + 144) = 1;
  *(v50 + 168) = v51;
  *(v50 + 176) = 0x7365707954;
  v52 = v51;
  *(v50 + 184) = 0xE500000000000000;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v50 + 216) = v296;
  *(v50 + 192) = &unk_1F4A01450;
  v53 = @"IconColor";
  v54 = @"IconSymbol";
  v55 = @"IconSymbolColor";
  v56 = @"Input";
  v57 = sub_1CA94C1E8();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v295 = v58;
  v49[35] = v57;
  v49[38] = v58;
  v49[39] = @"InputPassthrough";
  *(v49 + 320) = 0;
  v49[43] = v52;
  v49[44] = @"Name";
  v59 = @"InputPassthrough";
  v60 = @"Name";
  v293 = sub_1CA94C438();
  *&v290 = v61;
  v62 = sub_1CA94C438();
  v64 = v63;
  v294 = &v277;
  MEMORY[0x1EEE9AC00](v62);
  v65 = v304;
  sub_1CA948D98();
  v66 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v277 - v303;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v69 = sub_1CA2F9F14(v293, v290, v62, v64, 0, 0, &v277 - v65, v67);
  v70 = v299;
  v299[45] = v69;
  v71 = v298;
  v70[48] = v298;
  v70[49] = @"Output";
  v72 = swift_allocObject();
  *(v72 + 16) = v292;
  *(v72 + 32) = 0x75736F6C63736944;
  *(v72 + 40) = 0xEF6C6576654C6572;
  *(v72 + 48) = 0x63696C627550;
  *(v72 + 56) = 0xE600000000000000;
  *(v72 + 72) = MEMORY[0x1E69E6158];
  *(v72 + 80) = 0x656C7069746C754DLL;
  *(v72 + 88) = 0xE800000000000000;
  *(v72 + 96) = 1;
  *(v72 + 120) = MEMORY[0x1E69E6370];
  *(v72 + 128) = 0x614E74757074754FLL;
  *(v72 + 136) = 0xEA0000000000656DLL;
  v73 = @"Output";
  v293 = sub_1CA94C438();
  *&v290 = v74;
  v75 = sub_1CA94C438();
  v289 = v76;
  v294 = &v277;
  MEMORY[0x1EEE9AC00](v75);
  sub_1CA948D98();
  v77 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v277 - v303;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v72 + 144) = sub_1CA2F9F14(v293, v290, v75, v289, 0, 0, &v277 - v65, v78);
  *(v72 + 168) = v71;
  *(v72 + 176) = 0x7365707954;
  *(v72 + 216) = v296;
  *(v72 + 184) = 0xE500000000000000;
  *(v72 + 192) = &unk_1F4A014A0;
  v80 = MEMORY[0x1E69E6158];
  v81 = sub_1CA94C1E8();
  v82 = v299;
  v299[50] = v81;
  v82[53] = v295;
  v82[54] = @"Parameters";
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v295 = swift_allocObject();
  v283 = xmmword_1CA981470;
  *(v295 + 16) = xmmword_1CA981470;
  v294 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *&v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v83 = swift_allocObject();
  *(v83 + 16) = v292;
  v84 = v291;
  *(v83 + 32) = @"Class";
  *(v83 + 40) = v84;
  *(v83 + 48) = 0x80000001CA9AB710;
  *(v83 + 64) = v80;
  *(v83 + 72) = @"Key";
  *(v83 + 80) = 0x657461444657;
  *(v83 + 88) = 0xE600000000000000;
  *(v83 + 104) = v80;
  *(v83 + 112) = @"Label";
  v85 = @"Class";
  v86 = @"Key";
  v87 = @"Label";
  v88 = v85;
  v89 = v86;
  v90 = v87;
  v287 = v88;
  v288 = v89;
  v289 = v90;
  v91 = @"Parameters";
  v92 = sub_1CA94C438();
  v94 = v93;
  v95 = sub_1CA94C438();
  v97 = v96;
  *&v292 = &v277;
  MEMORY[0x1EEE9AC00](v95);
  v98 = &v277 - v304;
  sub_1CA948D98();
  v99 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v99);
  v100 = &v277 - v303;
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v83 + 120) = sub_1CA2F9F14(v92, v94, v95, v97, 0, 0, v98, v100);
  *(v83 + 144) = v298;
  *(v83 + 152) = @"TextAlignment";
  v102 = MEMORY[0x1E69E6158];
  *(v83 + 184) = MEMORY[0x1E69E6158];
  *(v83 + 160) = 0x7468676952;
  *(v83 + 168) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  *&v292 = v103;
  v291 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v104 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v295 + 32) = sub_1CA2F864C();
  v105 = swift_allocObject();
  v282 = v105;
  *(v105 + 16) = xmmword_1CA981380;
  *(v105 + 32) = v287;
  *(v105 + 40) = 0xD000000000000016;
  *(v105 + 48) = 0x80000001CA99C4A0;
  *(v105 + 64) = v102;
  *(v105 + 72) = @"DefaultValue";
  *(v105 + 80) = 6579265;
  *(v105 + 88) = 0xE300000000000000;
  *(v105 + 104) = v102;
  *(v105 + 112) = @"DisallowedVariableTypes";
  *(v105 + 120) = &unk_1F4A014D0;
  *(v105 + 144) = v296;
  *(v105 + 152) = @"Items";
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_1CA985370;
  v107 = @"DefaultValue";
  v108 = @"DisallowedVariableTypes";
  v109 = @"Items";
  v110 = sub_1CA94C438();
  v279 = v111;
  v280 = v110;
  v112 = sub_1CA94C438();
  v278 = v113;
  v281 = &v277;
  MEMORY[0x1EEE9AC00](v112);
  v114 = v304;
  sub_1CA948D98();
  v115 = v301;
  v116 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v116);
  v117 = &v277 - v303;
  sub_1CA948B68();

  v118 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v106 + 32) = sub_1CA2F9F14(v280, v279, v112, v278, 0, 0, &v277 - v114, v117);
  v119 = sub_1CA94C438();
  v279 = v120;
  v280 = v119;
  v121 = sub_1CA94C438();
  v278 = v122;
  v281 = &v277;
  MEMORY[0x1EEE9AC00](v121);
  sub_1CA948D98();
  v123 = [v115 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  v124 = v303;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v126 = sub_1CA2F9F14(v280, v279, v121, v278, 0, 0, &v277 - v114, &v277 - v124);
  v286 = v106;
  *(v106 + 40) = v126;
  v127 = sub_1CA94C438();
  v279 = v128;
  v280 = v127;
  v129 = sub_1CA94C438();
  v278 = v130;
  v281 = &v277;
  MEMORY[0x1EEE9AC00](v129);
  v131 = v304;
  sub_1CA948D98();
  v132 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v132);
  sub_1CA948B68();

  v133 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v106 + 48) = sub_1CA2F9F14(v280, v279, v129, v278, 0, 0, &v277 - v131, &v277 - v124);
  v134 = sub_1CA94C438();
  v279 = v135;
  v280 = v134;
  v136 = sub_1CA94C438();
  v278 = v137;
  v281 = &v277;
  MEMORY[0x1EEE9AC00](v136);
  sub_1CA948D98();
  v138 = v301;
  v139 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v139);
  v140 = &v277 - v303;
  sub_1CA948B68();

  v141 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v142 = sub_1CA2F9F14(v280, v279, v136, v278, 0, 0, &v277 - v131, v140);
  v143 = v286;
  v286[7] = v142;
  v144 = sub_1CA94C438();
  v279 = v145;
  v280 = v144;
  v146 = sub_1CA94C438();
  v278 = v147;
  v281 = &v277;
  MEMORY[0x1EEE9AC00](v146);
  v148 = v304;
  sub_1CA948D98();
  v149 = [v138 bundleURL];
  v277 = &v277;
  MEMORY[0x1EEE9AC00](v149);
  v150 = v303;
  sub_1CA948B68();

  v151 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v143[8] = sub_1CA2F9F14(v280, v279, v146, v278, 0, 0, &v277 - v148, &v277 - v150);
  v152 = sub_1CA94C438();
  v279 = v153;
  v280 = v152;
  v154 = sub_1CA94C438();
  v278 = v155;
  v281 = &v277;
  MEMORY[0x1EEE9AC00](v154);
  v156 = &v277 - v148;
  sub_1CA948D98();
  v157 = v138;
  v158 = [v138 bundleURL];
  MEMORY[0x1EEE9AC00](v158);
  sub_1CA948B68();

  v159 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v160 = sub_1CA2F9F14(v280, v279, v154, v278, 0, 0, v156, &v277 - v150);
  v161 = v286;
  v286[9] = v160;
  v162 = sub_1CA94C438();
  v279 = v163;
  v280 = v162;
  v164 = sub_1CA94C438();
  v278 = v165;
  v281 = &v277;
  MEMORY[0x1EEE9AC00](v164);
  v166 = v304;
  sub_1CA948D98();
  v167 = [v157 bundleURL];
  MEMORY[0x1EEE9AC00](v167);
  v168 = v303;
  sub_1CA948B68();

  v169 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v161[10] = sub_1CA2F9F14(v280, v279, v164, v278, 0, 0, &v277 - v166, &v277 - v168);
  v170 = sub_1CA94C438();
  v279 = v171;
  v280 = v170;
  v172 = sub_1CA94C438();
  v278 = v173;
  v281 = &v277;
  MEMORY[0x1EEE9AC00](v172);
  sub_1CA948D98();
  v174 = [v157 bundleURL];
  MEMORY[0x1EEE9AC00](v174);
  sub_1CA948B68();

  v175 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v176 = sub_1CA2F9F14(v280, v279, v172, v278, 0, 0, &v277 - v166, &v277 - v168);
  v177 = v161;
  v161[11] = v176;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v179 = v282;
  v282[20] = v177;
  v180 = v288;
  v179[23] = v178;
  v179[24] = v180;
  v281 = 0x80000001CA9C21E0;
  v179[25] = 0xD000000000000011;
  v179[26] = 0x80000001CA9C21E0;
  v181 = v289;
  v179[28] = MEMORY[0x1E69E6158];
  v179[29] = v181;
  v182 = sub_1CA94C438();
  v280 = v183;
  v184 = sub_1CA94C438();
  v186 = v185;
  v286 = &v277;
  MEMORY[0x1EEE9AC00](v184);
  v187 = &v277 - v304;
  sub_1CA948D98();
  v188 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v188);
  v189 = &v277 - v303;
  sub_1CA948B68();

  v190 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v191 = sub_1CA2F9F14(v182, v280, v184, v186, 0, 0, v187, v189);
  v179[33] = v298;
  v179[30] = v191;
  sub_1CA94C1E8();
  *(v295 + 40) = sub_1CA2F864C();
  v192 = swift_allocObject();
  *(v192 + 16) = xmmword_1CA981400;
  *(v192 + 32) = v287;
  *(v192 + 40) = 0xD000000000000020;
  *(v192 + 48) = 0x80000001CA9A44A0;
  v193 = MEMORY[0x1E69E6158];
  *(v192 + 64) = MEMORY[0x1E69E6158];
  *(v192 + 72) = @"DefaultUnit";
  *(v192 + 80) = 6514035;
  *(v192 + 88) = 0xE300000000000000;
  v194 = v288;
  *(v192 + 104) = v193;
  *(v192 + 112) = v194;
  *(v192 + 120) = 0x6974617275444657;
  *(v192 + 128) = 0xEA00000000006E6FLL;
  v195 = v289;
  *(v192 + 144) = v193;
  *(v192 + 152) = v195;
  v196 = @"DefaultUnit";
  v197 = sub_1CA94C438();
  v288 = v198;
  v289 = v197;
  v199 = sub_1CA94C438();
  v287 = v200;
  *&v290 = &v277;
  MEMORY[0x1EEE9AC00](v199);
  v201 = v304;
  sub_1CA948D98();
  v202 = v301;
  v203 = [v301 bundleURL];
  v286 = &v277;
  MEMORY[0x1EEE9AC00](v203);
  v204 = v303;
  sub_1CA948B68();

  v205 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v192 + 160) = sub_1CA2F9F14(v289, v288, v199, v287, 0, 0, &v277 - v201, &v277 - v204);
  *(v192 + 184) = v298;
  *(v192 + 192) = @"Placeholder";
  v206 = @"Placeholder";
  v207 = sub_1CA94C438();
  v288 = v208;
  v289 = v207;
  v209 = sub_1CA94C438();
  v287 = v210;
  *&v290 = &v277;
  MEMORY[0x1EEE9AC00](v209);
  sub_1CA948D98();
  v211 = [v202 bundleURL];
  MEMORY[0x1EEE9AC00](v211);
  sub_1CA948B68();

  v212 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v192 + 200) = sub_1CA2F9F14(v289, v288, v209, v287, 0, 0, &v277 - v201, &v277 - v204);
  *(v192 + 224) = v298;
  *(v192 + 232) = @"PossibleUnits";
  *(v192 + 240) = &unk_1F4A01510;
  v213 = v296;
  *(v192 + 264) = v296;
  *(v192 + 272) = @"RequiredResources";
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v214 = swift_allocObject();
  v298 = xmmword_1CA981310;
  *(v214 + 16) = xmmword_1CA981310;
  v215 = swift_allocObject();
  v290 = xmmword_1CA9813C0;
  *(v215 + 16) = xmmword_1CA9813C0;
  strcpy((v215 + 32), "WFParameterKey");
  *(v215 + 47) = -18;
  v216 = v281;
  *(v215 + 48) = 0xD000000000000011;
  *(v215 + 56) = v216;
  v217 = MEMORY[0x1E69E6158];
  *(v215 + 72) = MEMORY[0x1E69E6158];
  *(v215 + 80) = 0xD000000000000011;
  *(v215 + 88) = 0x80000001CA9A2F30;
  *(v215 + 96) = &unk_1F4A015A0;
  *(v215 + 120) = v213;
  *(v215 + 128) = 0x72756F7365524657;
  *(v215 + 168) = v217;
  v288 = 0xD00000000000001BLL;
  v289 = 0x80000001CA993590;
  *(v215 + 136) = 0xEF7373616C436563;
  *(v215 + 144) = 0xD00000000000001BLL;
  *(v215 + 152) = 0x80000001CA993590;
  v218 = @"PossibleUnits";
  v219 = @"RequiredResources";
  *(v214 + 32) = sub_1CA94C1E8();
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v192 + 304) = v287;
  *(v192 + 280) = v214;
  sub_1CA94C1E8();
  v220 = sub_1CA2F864C();
  v221 = v295;
  *(v295 + 48) = v220;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v223 = v299;
  v299[55] = v221;
  v223[58] = v222;
  v223[59] = @"ParameterSummary";
  v295 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v296 = swift_allocObject();
  *(v296 + 1) = v283;
  v294 = "ustOperation)";
  v224 = @"ParameterSummary";
  v225 = sub_1CA94C438();
  v291 = v226;
  *&v292 = v225;
  v227 = sub_1CA94C438();
  v229 = v228;
  v293 = &v277;
  MEMORY[0x1EEE9AC00](v227);
  v230 = &v277 - v304;
  sub_1CA948D98();
  v231 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v231);
  v232 = v303;
  sub_1CA948B68();

  v233 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v234 = sub_1CA2F9F14(v292, v291, v227, v229, 0, 0, v230, &v277 - v232);
  v235 = objc_allocWithZone(WFActionParameterSummaryValue);
  v236 = sub_1CA65DD78(0xD000000000000018, v294 | 0x8000000000000000, v234);
  v296[4] = v236;
  v294 = "ion} from ${WFDate}";
  v237 = sub_1CA94C438();
  v291 = v238;
  *&v292 = v237;
  v239 = sub_1CA94C438();
  v241 = v240;
  v293 = &v277;
  MEMORY[0x1EEE9AC00](v239);
  v242 = &v277 - v304;
  sub_1CA948D98();
  v243 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v243);
  sub_1CA948B68();

  v244 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v245 = sub_1CA2F9F14(v292, v291, v239, v241, 0, 0, v242, &v277 - v232);
  v246 = objc_allocWithZone(WFActionParameterSummaryValue);
  v247 = sub_1CA65DD78(0xD000000000000023, v294 | 0x8000000000000000, v245);
  v248 = v296;
  v296[5] = v247;
  v294 = "ion} ${WFDuration} to ${WFDate}";
  v249 = sub_1CA94C438();
  v251 = v250;
  v252 = sub_1CA94C438();
  v254 = v253;
  v293 = &v277;
  MEMORY[0x1EEE9AC00](v252);
  v255 = &v277 - v304;
  sub_1CA948D98();
  v256 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v256);
  v257 = &v277 - v303;
  sub_1CA948B68();

  v258 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v259 = sub_1CA2F9F14(v249, v251, v252, v254, 0, 0, v255, v257);
  v260 = objc_allocWithZone(WFActionParameterSummaryValue);
  v248[6] = sub_1CA65DD78(0xD00000000000002DLL, v294 | 0x8000000000000000, v259);
  v261 = v295;
  v262 = sub_1CA65AF90();
  v263 = v299;
  v299[60] = v262;
  v263[63] = v261;
  v263[64] = @"RequiredResources";
  v264 = swift_allocObject();
  *(v264 + 16) = v298;
  v265 = swift_allocObject();
  *(v265 + 16) = v284;
  *(v265 + 32) = 0xD000000000000011;
  *(v265 + 40) = 0x80000001CA99B240;
  v266 = swift_allocObject();
  *(v266 + 16) = v298;
  v267 = swift_allocObject();
  *(v267 + 16) = v290;
  strcpy((v267 + 32), "WFParameterKey");
  *(v267 + 47) = -18;
  *(v267 + 48) = 0xD000000000000013;
  *(v267 + 56) = 0x80000001CA9C2350;
  v268 = MEMORY[0x1E69E6158];
  *(v267 + 72) = MEMORY[0x1E69E6158];
  *(v267 + 80) = 0xD000000000000010;
  *(v267 + 88) = 0x80000001CA993570;
  *(v267 + 96) = 1;
  v269 = MEMORY[0x1E69E6370];
  *(v267 + 120) = MEMORY[0x1E69E6370];
  *(v267 + 128) = 0x72756F7365524657;
  *(v267 + 168) = v268;
  v271 = v288;
  v270 = v289;
  *(v267 + 136) = 0xEF7373616C436563;
  *(v267 + 144) = v271;
  *(v267 + 152) = v270;
  v272 = @"RequiredResources";
  *(v266 + 32) = sub_1CA94C1E8();
  *(v265 + 48) = v266;
  v273 = v287;
  *(v265 + 72) = v287;
  *(v265 + 80) = 0x72756F7365524657;
  *(v265 + 120) = v268;
  *(v265 + 88) = 0xEF7373616C436563;
  *(v265 + 96) = 0xD000000000000019;
  *(v265 + 104) = 0x80000001CA9932D0;
  *(v264 + 32) = sub_1CA94C1E8();
  v274 = v299;
  v299[68] = v273;
  v274[65] = v264;
  v274[69] = @"ResidentCompatible";
  v274[73] = v269;
  *(v274 + 560) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v275 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4CEC00()
{
  v148 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9C2380;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v156 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v157 = v12;
  v13 = &v141 - v156;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v154 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v152 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v153 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v141 - v153;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v155 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v151 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v149 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v150 = &v141;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v141 - v156;
  sub_1CA948D98();
  v33 = [v154 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v141 - v153;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v149, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v155;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v151;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1953392980;
  *(inited + 208) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0xD000000000000016;
  *(inited + 248) = 0x80000001CA9C23C0;
  *(inited + 264) = v38;
  *(inited + 272) = @"IconSymbolColor";
  *(inited + 280) = 1702194242;
  *(inited + 288) = 0xE400000000000000;
  *(inited + 304) = v38;
  *(inited + 312) = @"Name";
  v39 = @"IconColor";
  v40 = @"IconSymbol";
  v41 = @"IconSymbolColor";
  v42 = @"Name";
  v43 = sub_1CA94C438();
  v45 = v44;
  v46 = sub_1CA94C438();
  v48 = v47;
  v151 = &v141;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v141 - v156;
  sub_1CA948D98();
  v50 = [v154 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v141 - v153;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v43, v45, v46, v48, 0, 0, v49, v51);
  *(inited + 344) = v155;
  *(inited + 352) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v53 = swift_initStackObject();
  *(v53 + 16) = xmmword_1CA981350;
  *(v53 + 32) = 0x75736F6C63736944;
  *(v53 + 40) = 0xEF6C6576654C6572;
  *(v53 + 48) = 0x63696C627550;
  *(v53 + 56) = 0xE600000000000000;
  *(v53 + 72) = MEMORY[0x1E69E6158];
  *(v53 + 80) = 0x656C7069746C754DLL;
  *(v53 + 88) = 0xE800000000000000;
  v54 = MEMORY[0x1E69E6370];
  *(v53 + 96) = 0;
  *(v53 + 120) = v54;
  *(v53 + 128) = 0x614E74757074754FLL;
  *(v53 + 136) = 0xEA0000000000656DLL;
  v55 = @"Output";
  v56 = sub_1CA94C438();
  v150 = v57;
  v58 = sub_1CA94C438();
  v60 = v59;
  v151 = &v141;
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v141 - v156;
  sub_1CA948D98();
  v62 = [v154 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v141 - v153;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v53 + 144) = sub_1CA2F9F14(v56, v150, v58, v60, 0, 0, v61, v63);
  *(v53 + 168) = v155;
  *(v53 + 176) = 0x7365707954;
  *(v53 + 184) = 0xE500000000000000;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v53 + 216) = v151;
  *(v53 + 192) = &unk_1F4A01620;
  v65 = MEMORY[0x1E69E6158];
  v66 = sub_1CA94C1E8();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 360) = v66;
  *(inited + 384) = v67;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v150 = swift_allocObject();
  *(v150 + 1) = xmmword_1CA981360;
  v149 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1CA981300;
  *(v68 + 32) = @"AutocapitalizationType";
  *(v68 + 40) = 1701736270;
  *(v68 + 48) = 0xE400000000000000;
  *(v68 + 64) = v65;
  *(v68 + 72) = @"Class";
  *(v68 + 80) = 0xD000000000000014;
  *(v68 + 88) = 0x80000001CA99B500;
  *(v68 + 104) = v65;
  *(v68 + 112) = @"Description";
  v146 = @"Class";
  v69 = @"Parameters";
  v70 = @"AutocapitalizationType";
  v71 = @"Description";
  v72 = sub_1CA94C438();
  v144 = v73;
  v74 = sub_1CA94C438();
  v76 = v75;
  v145 = &v141;
  MEMORY[0x1EEE9AC00](v74);
  v77 = &v141 - v156;
  sub_1CA948D98();
  v78 = [v154 bundleURL];
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v141 - v153;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 120) = sub_1CA2F9F14(v72, v144, v74, v76, 0, 0, v77, v79);
  *(v68 + 144) = v155;
  *(v68 + 152) = @"DisableAutocorrection";
  *(v68 + 160) = 1;
  *(v68 + 184) = MEMORY[0x1E69E6370];
  *(v68 + 192) = @"Key";
  *(v68 + 200) = 0x6150656C69464657;
  *(v68 + 208) = 0xEA00000000006874;
  v81 = MEMORY[0x1E69E6158];
  *(v68 + 224) = MEMORY[0x1E69E6158];
  *(v68 + 232) = @"KeyboardType";
  *(v68 + 240) = 0x6372616553626557;
  *(v68 + 248) = 0xE900000000000068;
  *(v68 + 264) = v81;
  *(v68 + 272) = @"Label";
  v82 = @"Key";
  v83 = @"Label";
  v142 = v82;
  v143 = v83;
  v84 = @"DisableAutocorrection";
  v85 = @"KeyboardType";
  v86 = sub_1CA94C438();
  v144 = v87;
  v88 = sub_1CA94C438();
  v90 = v89;
  v145 = &v141;
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v141 - v156;
  sub_1CA948D98();
  v92 = [v154 bundleURL];
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v141 - v153;
  sub_1CA948B68();

  v94 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 280) = sub_1CA2F9F14(v86, v144, v88, v90, 0, 0, v91, v93);
  *(v68 + 304) = v155;
  *(v68 + 312) = @"TextAlignment";
  v95 = MEMORY[0x1E69E6158];
  *(v68 + 344) = MEMORY[0x1E69E6158];
  *(v68 + 320) = 1952867660;
  *(v68 + 328) = 0xE400000000000000;
  _s3__C3KeyVMa_0(0);
  v145 = v96;
  v144 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v97 = @"TextAlignment";
  sub_1CA94C1E8();
  v150[4] = sub_1CA2F864C();
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_1CA981400;
  *(v98 + 32) = v146;
  *(v98 + 40) = 0xD000000000000015;
  *(v98 + 48) = 0x80000001CA99B1E0;
  *(v98 + 64) = v95;
  *(v98 + 72) = @"DefaultsToShortcutsFolder";
  *(v98 + 80) = 1;
  v99 = MEMORY[0x1E69E6370];
  *(v98 + 104) = MEMORY[0x1E69E6370];
  *(v98 + 112) = @"Optional";
  *(v98 + 120) = 0;
  *(v98 + 144) = v99;
  *(v98 + 152) = @"FilePickerSupportedTypes";
  *(v98 + 160) = &unk_1F4A01650;
  v100 = v142;
  *(v98 + 184) = v151;
  *(v98 + 192) = v100;
  *(v98 + 200) = 0x7265646C6F464657;
  *(v98 + 208) = 0xE800000000000000;
  v101 = v143;
  *(v98 + 224) = v95;
  *(v98 + 232) = v101;
  v102 = @"DefaultsToShortcutsFolder";
  v103 = @"Optional";
  v104 = @"FilePickerSupportedTypes";
  v146 = sub_1CA94C438();
  v143 = v105;
  v142 = sub_1CA94C438();
  v107 = v106;
  v147 = &v141;
  MEMORY[0x1EEE9AC00](v142);
  v108 = &v141 - v156;
  sub_1CA948D98();
  v109 = v154;
  v110 = [v154 bundleURL];
  v141 = &v141;
  MEMORY[0x1EEE9AC00](v110);
  v111 = v153;
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v98 + 240) = sub_1CA2F9F14(v146, v143, v142, v107, 0, 0, v108, &v141 - v111);
  *(v98 + 264) = v155;
  *(v98 + 272) = @"Placeholder";
  v113 = @"Placeholder";
  v146 = sub_1CA94C438();
  v143 = v114;
  v115 = sub_1CA94C438();
  v142 = v116;
  v147 = &v141;
  MEMORY[0x1EEE9AC00](v115);
  v117 = &v141 - v156;
  sub_1CA948D98();
  v118 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v118);
  sub_1CA948B68();

  v119 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v120 = sub_1CA2F9F14(v146, v143, v115, v142, 0, 0, v117, &v141 - v111);
  *(v98 + 304) = v155;
  *(v98 + 280) = v120;
  sub_1CA94C1E8();
  v121 = sub_1CA2F864C();
  v122 = v150;
  v150[5] = v121;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v122;
  *(inited + 424) = v123;
  *(inited + 432) = @"ParameterSummary";
  v124 = @"ParameterSummary";
  v125 = sub_1CA94C438();
  v127 = v126;
  v128 = sub_1CA94C438();
  v130 = v129;
  v155 = &v141;
  MEMORY[0x1EEE9AC00](v128);
  v131 = &v141 - v156;
  sub_1CA948D98();
  v132 = [v154 bundleURL];
  MEMORY[0x1EEE9AC00](v132);
  v133 = &v141 - v153;
  sub_1CA948B68();

  v134 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v135 = sub_1CA2F9F14(v125, v127, v128, v130, 0, 0, v131, v133);
  v136 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v137 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v136;
  *(inited + 464) = v137;
  *(inited + 472) = @"RemoteExecuteOnPlatforms";
  *(inited + 480) = &unk_1F4A01680;
  *(inited + 504) = v151;
  *(inited + 512) = @"SuggestedAsInitialAction";
  *(inited + 544) = MEMORY[0x1E69E6370];
  *(inited + 520) = 0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v138 = @"RemoteExecuteOnPlatforms";
  v139 = @"SuggestedAsInitialAction";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4CFE9C()
{
  v116 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9C2650;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v120 = v12;
  v124 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v110 - v124;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v123 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v122 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v121 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v110 - v121;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v119 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v118 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v115 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  *&v117 = v110;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v110 - v124;
  sub_1CA948D98();
  v30 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = v110 - v121;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v115, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v119;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v118;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1953392980;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000010;
  *(inited + 208) = 0x80000001CA9C26F0;
  *(inited + 224) = v35;
  *(inited + 232) = @"IconSymbolColor";
  *(inited + 240) = 1702194242;
  *(inited + 248) = 0xE400000000000000;
  *(inited + 264) = v35;
  *(inited + 272) = @"Input";
  v36 = v35;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  v117 = xmmword_1CA981350;
  *(v37 + 16) = xmmword_1CA981350;
  *(v37 + 32) = 0x656C7069746C754DLL;
  *(v37 + 40) = 0xE800000000000000;
  v38 = MEMORY[0x1E69E6370];
  *(v37 + 48) = 1;
  *(v37 + 72) = v38;
  strcpy((v37 + 80), "ParameterKey");
  *(v37 + 93) = 0;
  *(v37 + 94) = -5120;
  *(v37 + 96) = 0x656C69464657;
  *(v37 + 104) = 0xE600000000000000;
  *(v37 + 120) = v36;
  *(v37 + 128) = 0x6465726975716552;
  *(v37 + 136) = 0xE800000000000000;
  *(v37 + 144) = 1;
  *(v37 + 168) = v38;
  *(v37 + 176) = 0x7365707954;
  *(v37 + 184) = 0xE500000000000000;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 216) = v118;
  *(v37 + 192) = &unk_1F4A016B0;
  v39 = @"IconColor";
  v40 = @"IconSymbol";
  v41 = @"IconSymbolColor";
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v115 = v44;
  *(inited + 280) = v43;
  *(inited + 304) = v44;
  *(inited + 312) = @"Name";
  v45 = @"Name";
  v46 = sub_1CA94C438();
  v111 = v47;
  v112 = v46;
  v48 = sub_1CA94C438();
  v50 = v49;
  v113 = v110;
  MEMORY[0x1EEE9AC00](v48);
  v51 = v110 - v124;
  sub_1CA948D98();
  v52 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = v121;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v112, v111, v48, v50, 0, 0, v51, v110 - v53);
  v55 = v119;
  *(inited + 344) = v119;
  *(inited + 352) = @"Output";
  v56 = swift_allocObject();
  *(v56 + 16) = v117;
  *(v56 + 32) = 0x75736F6C63736944;
  *(v56 + 40) = 0xEF6C6576654C6572;
  *(v56 + 48) = 0x63696C627550;
  *(v56 + 56) = 0xE600000000000000;
  *(v56 + 72) = MEMORY[0x1E69E6158];
  *(v56 + 80) = 0x656C7069746C754DLL;
  *(v56 + 88) = 0xE800000000000000;
  *(v56 + 96) = 1;
  *(v56 + 120) = MEMORY[0x1E69E6370];
  *(v56 + 128) = 0x614E74757074754FLL;
  *(v56 + 136) = 0xEA0000000000656DLL;
  v57 = @"Output";
  v58 = sub_1CA94C438();
  v112 = v59;
  v113 = v58;
  v111 = sub_1CA94C438();
  v61 = v60;
  v114 = v110;
  MEMORY[0x1EEE9AC00](v111);
  v62 = v110 - v124;
  sub_1CA948D98();
  v63 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 144) = sub_1CA2F9F14(v113, v112, v111, v61, 0, 0, v62, v110 - v53);
  *(v56 + 168) = v55;
  *(v56 + 176) = 0x7365707954;
  *(v56 + 216) = v118;
  *(v56 + 184) = 0xE500000000000000;
  *(v56 + 192) = &unk_1F4A016E0;
  v65 = MEMORY[0x1E69E6158];
  *(inited + 360) = sub_1CA94C1E8();
  *(inited + 384) = v115;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_1CA9813B0;
  v114 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v66 = swift_initStackObject();
  *(v66 + 16) = v117;
  *(v66 + 32) = @"Class";
  *(v66 + 40) = 0xD000000000000019;
  *(v66 + 48) = 0x80000001CA99B030;
  *(v66 + 64) = v65;
  *(v66 + 72) = @"Key";
  *(v66 + 80) = 0x656C69464657;
  *(v66 + 88) = 0xE600000000000000;
  *(v66 + 104) = v65;
  *(v66 + 112) = @"Label";
  v67 = @"Parameters";
  v68 = @"Class";
  v69 = @"Key";
  v70 = @"Label";
  v71 = sub_1CA94C438();
  v112 = v72;
  v113 = v71;
  v73 = sub_1CA94C438();
  v111 = v74;
  *&v117 = v110;
  MEMORY[0x1EEE9AC00](v73);
  v75 = v110 - v124;
  sub_1CA948D98();
  v76 = v123;
  v77 = [v123 bundleURL];
  v110[1] = v110;
  MEMORY[0x1EEE9AC00](v77);
  v78 = v110 - v121;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 120) = sub_1CA2F9F14(v113, v112, v73, v111, 0, 0, v75, v78);
  v80 = v119;
  *(v66 + 144) = v119;
  *(v66 + 152) = @"Placeholder";
  v81 = @"Placeholder";
  v82 = sub_1CA94C438();
  v112 = v83;
  v113 = v82;
  v84 = sub_1CA94C438();
  v111 = v85;
  *&v117 = v110;
  MEMORY[0x1EEE9AC00](v84);
  v86 = v110 - v124;
  sub_1CA948D98();
  v87 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = v110 - v121;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v90 = sub_1CA2F9F14(v113, v112, v84, v111, 0, 0, v86, v88);
  *(v66 + 184) = v80;
  *(v66 + 160) = v90;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v91 = sub_1CA2F864C();
  v92 = v115;
  *(v115 + 32) = v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v92;
  *(inited + 424) = v93;
  *(inited + 432) = @"ParameterSummary";
  v94 = @"ParameterSummary";
  v95 = sub_1CA94C438();
  v97 = v96;
  v98 = sub_1CA94C438();
  v100 = v99;
  v119 = v110;
  MEMORY[0x1EEE9AC00](v98);
  v101 = v110 - v124;
  sub_1CA948D98();
  v102 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v102);
  v103 = v110 - v121;
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v105 = sub_1CA2F9F14(v95, v97, v98, v100, 0, 0, v101, v103);
  v106 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v107 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v106;
  *(inited + 464) = v107;
  *(inited + 472) = @"RemoteExecuteOnPlatforms";
  *(inited + 504) = v118;
  *(inited + 480) = &unk_1F4A01710;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v108 = @"RemoteExecuteOnPlatforms";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4D0DC8()
{
  v87 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001CLL;
  *(inited + 48) = 0x80000001CA9C27F0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v92 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v93 = v12;
  v13 = &v81 - v92;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v89 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v91 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v88 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v81 - v88;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v90 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v86 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionResult";
  v25 = @"Description";
  v26 = @"DescriptionResult";
  v27 = sub_1CA94C438();
  v83 = v28;
  v84 = v27;
  v29 = sub_1CA94C438();
  v82 = v30;
  v85 = &v81;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v81 - v92;
  sub_1CA948D98();
  v32 = v89;
  v33 = [v89 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = v88;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v84, v83, v29, v82, 0, 0, v31, &v81 - v34);
  *(v24 + 64) = v90;
  *(v24 + 72) = @"DescriptionSummary";
  v36 = @"DescriptionSummary";
  v37 = sub_1CA94C438();
  v83 = v38;
  v84 = v37;
  v39 = sub_1CA94C438();
  v41 = v40;
  v85 = &v81;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v81 - v92;
  sub_1CA948D98();
  v43 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  sub_1CA948B68();

  v44 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v45 = sub_1CA2F9F14(v84, v83, v39, v41, 0, 0, v42, &v81 - v34);
  *(v24 + 104) = v90;
  *(v24 + 80) = v45;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v46 = v86;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v46;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1953392980;
  *(inited + 208) = 0xE400000000000000;
  v47 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x6C6C69662E726163;
  *(inited + 248) = 0xE800000000000000;
  *(inited + 264) = v47;
  *(inited + 272) = @"IconSymbolColor";
  *(inited + 280) = 0x6E65657247;
  *(inited + 288) = 0xE500000000000000;
  *(inited + 304) = v47;
  *(inited + 312) = @"Name";
  v48 = @"IconColor";
  v49 = @"IconSymbol";
  v50 = @"IconSymbolColor";
  v51 = @"Name";
  v52 = sub_1CA94C438();
  v54 = v53;
  v55 = sub_1CA94C438();
  v57 = v56;
  v86 = &v81;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v81 - v92;
  sub_1CA948D98();
  v59 = [v89 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v81 - v88;
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v52, v54, v55, v57, 0, 0, v58, v60);
  *(inited + 344) = v90;
  *(inited + 352) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v62 = swift_initStackObject();
  *(v62 + 16) = xmmword_1CA9813C0;
  *(v62 + 32) = 0x656C7069746C754DLL;
  *(v62 + 40) = 0xE800000000000000;
  v63 = MEMORY[0x1E69E6370];
  *(v62 + 48) = 0;
  *(v62 + 72) = v63;
  *(v62 + 80) = 0x614E74757074754FLL;
  *(v62 + 88) = 0xEA0000000000656DLL;
  v64 = @"Output";
  v65 = sub_1CA94C438();
  v85 = v66;
  v67 = sub_1CA94C438();
  v69 = v68;
  v86 = &v81;
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v81 - v92;
  sub_1CA948D98();
  v71 = [v89 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v81 - v88;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v62 + 96) = sub_1CA2F9F14(v65, v85, v67, v69, 0, 0, v70, v72);
  *(v62 + 120) = v90;
  *(v62 + 128) = 0x7365707954;
  *(v62 + 136) = 0xE500000000000000;
  *(v62 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v62 + 144) = &unk_1F4A01780;
  v74 = sub_1CA94C1E8();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 360) = v74;
  *(inited + 384) = v75;
  *(inited + 392) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1CA9813B0;
  v94 = 0;
  v95 = 0;
  v77 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v78 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v94);
  *(v76 + 32) = v79;
  *(inited + 424) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 400) = v76;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4D184C()
{
  v130 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x80000001CA9C2980;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v138 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v139 = v12;
  v13 = v119 - v138;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v137 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v135 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v136 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v119 - v136;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v134 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v133 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v131 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v132 = v119;
  MEMORY[0x1EEE9AC00](v29);
  v32 = v119 - v138;
  sub_1CA948D98();
  v33 = [v137 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = v119 - v136;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v131, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v134;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v133;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"InputPassthrough";
  v38 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  *(inited + 224) = v38;
  *(inited + 232) = @"Name";
  v39 = @"InputPassthrough";
  v40 = @"Name";
  v41 = sub_1CA94C438();
  v43 = v42;
  v44 = sub_1CA94C438();
  v46 = v45;
  v133 = v119;
  MEMORY[0x1EEE9AC00](v44);
  v47 = v119 - v138;
  sub_1CA948D98();
  v48 = [v137 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = v119 - v136;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  *(inited + 264) = v134;
  *(inited + 272) = @"Parameters";
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v132 = swift_allocObject();
  v128 = xmmword_1CA981360;
  *(v132 + 1) = xmmword_1CA981360;
  v131 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v51 = swift_initStackObject();
  v126 = xmmword_1CA981350;
  *(v51 + 16) = xmmword_1CA981350;
  *(v51 + 32) = @"Class";
  *(v51 + 40) = 0xD000000000000015;
  *(v51 + 48) = 0x80000001CA99D5E0;
  v52 = MEMORY[0x1E69E6158];
  *(v51 + 64) = MEMORY[0x1E69E6158];
  *(v51 + 72) = @"Key";
  *(v51 + 80) = 0x656D6F484657;
  *(v51 + 88) = 0xE600000000000000;
  *(v51 + 104) = v52;
  *(v51 + 112) = @"DisallowedVariableTypes";
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v133 = v53;
  *(v51 + 120) = &unk_1F4A017F0;
  *(v51 + 144) = v53;
  *(v51 + 152) = @"Label";
  v54 = @"Class";
  v55 = @"Key";
  v56 = @"DisallowedVariableTypes";
  v57 = @"Label";
  v122 = v54;
  v124 = v55;
  v121 = v56;
  v123 = v57;
  v58 = @"Parameters";
  v59 = sub_1CA94C438();
  v120 = v60;
  v61 = sub_1CA94C438();
  v63 = v62;
  v125 = v119;
  MEMORY[0x1EEE9AC00](v61);
  v64 = v119 - v138;
  sub_1CA948D98();
  v65 = [v137 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  v66 = v119 - v136;
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v68 = sub_1CA2F9F14(v59, v120, v61, v63, 0, 0, v64, v66);
  *(v51 + 184) = v134;
  *(v51 + 160) = v68;
  _s3__C3KeyVMa_0(0);
  v120 = v69;
  v119[1] = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v132[4] = sub_1CA2F864C();
  v70 = swift_initStackObject();
  *(v70 + 16) = v126;
  v125 = 0xD00000000000001ELL;
  *(v70 + 32) = v122;
  *(v70 + 40) = 0xD00000000000001ELL;
  *(v70 + 48) = 0x80000001CA9C2A20;
  v71 = MEMORY[0x1E69E6158];
  v72 = v121;
  *(v70 + 64) = MEMORY[0x1E69E6158];
  *(v70 + 72) = v72;
  *(v70 + 80) = &unk_1F4A01830;
  v73 = v124;
  *(v70 + 104) = v133;
  *(v70 + 112) = v73;
  v127 = 0x80000001CA9C2A40;
  *&v126 = 0xD000000000000017;
  *(v70 + 120) = 0xD000000000000017;
  *(v70 + 128) = 0x80000001CA9C2A40;
  v74 = v123;
  *(v70 + 144) = v71;
  *(v70 + 152) = v74;
  v75 = sub_1CA94C438();
  v123 = v76;
  v77 = sub_1CA94C438();
  v79 = v78;
  v124 = v119;
  MEMORY[0x1EEE9AC00](v77);
  v80 = v119 - v138;
  sub_1CA948D98();
  v81 = [v137 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  v82 = v119 - v136;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v84 = sub_1CA2F9F14(v75, v123, v77, v79, 0, 0, v80, v82);
  *(v70 + 184) = v134;
  *(v70 + 160) = v84;
  sub_1CA94C1E8();
  v85 = sub_1CA2F864C();
  v86 = v132;
  v132[5] = v85;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 280) = v86;
  *(inited + 304) = v87;
  *(inited + 312) = @"ParameterSummary";
  v134 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v88 = swift_allocObject();
  *(v88 + 16) = v128;
  v131 = "Scenes and Accessories";
  v132 = v88;
  v89 = @"ParameterSummary";
  v90 = sub_1CA94C438();
  v92 = v91;
  v93 = sub_1CA94C438();
  v95 = v94;
  v129 = v119;
  MEMORY[0x1EEE9AC00](v93);
  v96 = v119 - v138;
  sub_1CA948D98();
  v97 = [v137 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v98 = v119 - v136;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v100 = sub_1CA2F9F14(v90, v92, v93, v95, 0, 0, v96, v98);
  v101 = objc_allocWithZone(WFActionParameterSummaryValue);
  v102 = sub_1CA65DD78(v125, v131 | 0x8000000000000000, v100);
  v103 = v132;
  v132[4] = v102;
  v104 = sub_1CA94C438();
  v129 = v105;
  v106 = sub_1CA94C438();
  v108 = v107;
  v131 = v119;
  MEMORY[0x1EEE9AC00](v106);
  v109 = v119 - v138;
  sub_1CA948D98();
  v110 = [v137 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  v111 = v119 - v136;
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v104, v129, v106, v108, 0, 0, v109, v111);
  v114 = objc_allocWithZone(WFActionParameterSummaryValue);
  v103[5] = sub_1CA65DD78(v126, v127, v113);
  v115 = v134;
  *(inited + 320) = sub_1CA65AF90();
  *(inited + 344) = v115;
  *(inited + 352) = @"RequiredResources";
  *(inited + 360) = &unk_1F4A01860;
  *(inited + 384) = v133;
  *(inited + 392) = @"ResidentCompatible";
  *(inited + 424) = MEMORY[0x1E69E6370];
  *(inited + 400) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v116 = @"RequiredResources";
  v117 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void WFDeviceIdiomResource.requirement.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WorkflowKit21WFDeviceIdiomResource_requirement + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC11WorkflowKit21WFDeviceIdiomResource_requirement);
  *(a1 + 8) = v2;
}

void WFDeviceIdiomResource.init(requirement:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = &v1[OBJC_IVAR____TtC11WorkflowKit21WFDeviceIdiomResource_requirement];
  *v3 = *a1;
  v3[8] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443DB8, &unk_1CA983950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  v16 = sub_1CA94C3A8();
  v17 = v5;
  v6 = MEMORY[0x1E69E6158];
  sub_1CA94D3A8();
  v7 = type metadata accessor for WFDeviceIdiomResource();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = NSStringFromClass(ObjCClassFromMetadata);
  v10 = sub_1CA94C3A8();
  v12 = v11;

  *(inited + 96) = v6;
  *(inited + 72) = v10;
  *(inited + 80) = v12;
  sub_1CA94C1E8();
  v13 = sub_1CA94C1A8();

  v15.receiver = v1;
  v15.super_class = v7;
  v14 = objc_msgSendSuper2(&v15, sel_initWithDefinition_, v13);

  if (!v14)
  {
    __break(1u);
  }
}

void sub_1CA4D28F0()
{
  v1 = *&v0[OBJC_IVAR____TtC11WorkflowKit21WFDeviceIdiomResource_requirement];
  v2 = v0[OBJC_IVAR____TtC11WorkflowKit21WFDeviceIdiomResource_requirement + 8];
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 idiom];

  if (v2)
  {
    if (v4 == v1)
    {
      v5 = [objc_opt_self() wf:@"NotAvailableOnSpecifiedPlatform" unsupportedActionErrorWithType:v1 platformIdiom:?];
LABEL_9:
      v6 = v5;
      v7 = sub_1CA948AC8();

      [v0 updateAvailability:0 withError:v7];

      return;
    }
  }

  else if (v4 != v1)
  {
    v5 = [objc_opt_self() wf:@"OnlyAvailableOnSpecifiedPlatform" unsupportedActionErrorWithType:v1 platformIdiom:?];
    goto LABEL_9;
  }

  [v0 updateAvailability:1 withError:0];
}

id WFDeviceIdiomResource.__allocating_init(definition:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1CA94C1A8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithDefinition_];

  return v3;
}

id WFDeviceIdiomResource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFDeviceIdiomResource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFDeviceIdiomResource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for WFDeviceIdiomResource.Requirement(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for WFDeviceIdiomResource.Requirement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

id sub_1CA4D2DA4()
{
  v252 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001BLL;
  *(inited + 48) = 0x80000001CA9B16F0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v269 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v271 = v11;
  *&v274 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v246 - v274;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDB9F690;
  v270 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v273 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v272 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v246 - v272;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v269, v5, v6, v8, 0, 0, v12, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v269 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v268 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v261 = xmmword_1CA981310;
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v266 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v267 = &v246;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v246 - v274;
  sub_1CA948D98();
  v30 = [v13 bundleURL];
  v31 = inited;
  v32 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v246 - v272;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v24, v266, v26, v28, 0, 0, v29, v33);
  *(v21 + 64) = v269;
  *(v21 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v36 = v268;
  *(v31 + 120) = sub_1CA6B3784();
  *(v31 + 144) = v36;
  *(v31 + 152) = @"InputPassthrough";
  *(v31 + 184) = MEMORY[0x1E69E6370];
  *(v31 + 160) = 1;
  v37 = @"InputPassthrough";
  v260 = 0xD000000000000010;
  v38 = sub_1CA94C368();
  v263 = v31;
  *(v31 + 192) = v38;
  *(v31 + 200) = 0xD00000000000002CLL;
  *(v31 + 208) = 0x80000001CA9C2C30;
  *(v31 + 224) = MEMORY[0x1E69E6158];
  *(v31 + 232) = @"Name";
  v39 = @"Name";
  v40 = sub_1CA94C438();
  v42 = v41;
  v43 = sub_1CA94C438();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v246 - v274;
  sub_1CA948D98();
  v47 = [v270 bundleURL];
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v246 - v272;
  sub_1CA948B68();

  v49 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v50 = sub_1CA2F9F14(v40, v42, v43, v45, 0, 0, v46, v48);
  v51 = v263;
  v263[30] = v50;
  v51[33] = v269;
  v51[34] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v268 = swift_allocObject();
  *(v268 + 16) = xmmword_1CA981410;
  v267 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v52 = swift_initStackObject();
  v262 = xmmword_1CA981400;
  *(v52 + 16) = xmmword_1CA981400;
  *(v52 + 32) = @"Class";
  *(v52 + 40) = 0xD00000000000001ALL;
  *(v52 + 48) = 0x80000001CA99B690;
  v53 = MEMORY[0x1E69E6158];
  *(v52 + 64) = MEMORY[0x1E69E6158];
  *(v52 + 72) = @"DefaultValue";
  v54 = @"Class";
  v55 = @"DefaultValue";
  v56 = v54;
  v57 = v55;
  v256 = v56;
  v258 = v57;
  v58 = @"Parameters";
  v59 = sub_1CA94C1E8();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(v52 + 80) = v59;
  *(v52 + 104) = v60;
  *(v52 + 112) = @"DisallowedVariableTypes";
  *(v52 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v52 + 120) = &unk_1F4A018D0;
  v61 = @"DisallowedVariableTypes";
  v62 = sub_1CA94C368();
  v259 = 0xD000000000000016;
  *(v52 + 152) = v62;
  *(v52 + 160) = 0xD000000000000016;
  *(v52 + 168) = 0x80000001CA9C2C90;
  *(v52 + 184) = v53;
  *(v52 + 192) = @"Key";
  v255 = 0xD000000000000013;
  *(v52 + 200) = 0xD000000000000013;
  *(v52 + 208) = 0x80000001CA99B6D0;
  *(v52 + 224) = v53;
  *(v52 + 232) = @"Label";
  v63 = @"Key";
  v64 = @"Label";
  v65 = v63;
  v66 = v64;
  v253 = v65;
  v254 = v66;
  v264 = sub_1CA94C438();
  v257 = v67;
  v68 = sub_1CA94C438();
  v70 = v69;
  v265 = &v246;
  MEMORY[0x1EEE9AC00](v68);
  v71 = &v246 - v274;
  sub_1CA948D98();
  v72 = v270;
  v73 = [v270 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v246 - v272;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v52 + 240) = sub_1CA2F9F14(v264, v257, v68, v70, 0, 0, v71, v74);
  v76 = v269;
  *(v52 + 264) = v269;
  *(v52 + 272) = @"Prompt";
  v257 = @"Prompt";
  v264 = sub_1CA94C438();
  v251 = v77;
  *&v250 = sub_1CA94C438();
  v79 = v78;
  v265 = &v246;
  MEMORY[0x1EEE9AC00](v250);
  v80 = &v246 - v274;
  sub_1CA948D98();
  v81 = [v72 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v246 - v272;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v84 = sub_1CA2F9F14(v264, v251, v250, v79, 0, 0, v80, v82);
  *(v52 + 304) = v76;
  *(v52 + 280) = v84;
  _s3__C3KeyVMa_0(0);
  v265 = v85;
  v264 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v268 + 32) = sub_1CA2F864C();
  v86 = swift_allocObject();
  *(v86 + 16) = v262;
  *(v86 + 32) = @"AllowsMultipleValues";
  *(v86 + 40) = 1;
  v87 = v256;
  *(v86 + 64) = MEMORY[0x1E69E6370];
  *(v86 + 72) = v87;
  *(v86 + 80) = 0xD00000000000001DLL;
  *(v86 + 88) = 0x80000001CA99EEC0;
  v88 = MEMORY[0x1E69E6158];
  *(v86 + 104) = MEMORY[0x1E69E6158];
  *(v86 + 112) = @"IntentSlotName";
  *(v86 + 120) = 0x7265796170;
  *(v86 + 128) = 0xE500000000000000;
  v89 = v253;
  v90 = v254;
  *(v86 + 144) = v88;
  *(v86 + 152) = v89;
  *(v86 + 160) = 0xD000000000000017;
  *(v86 + 168) = 0x80000001CA9B1820;
  *(v86 + 184) = v88;
  *(v86 + 192) = v90;
  v91 = @"IntentSlotName";
  *&v250 = v87;
  v253 = v89;
  v254 = v90;
  v256 = v91;
  v92 = @"AllowsMultipleValues";
  v93 = sub_1CA94C438();
  v248 = v94;
  v249 = v93;
  v95 = sub_1CA94C438();
  v247 = v96;
  v251 = &v246;
  MEMORY[0x1EEE9AC00](v95);
  v97 = v274;
  sub_1CA948D98();
  v98 = [v270 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  v99 = v272;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v86 + 200) = sub_1CA2F9F14(v249, v248, v95, v247, 0, 0, &v246 - v97, &v246 - v99);
  *(v86 + 224) = v269;
  *(v86 + 232) = @"Placeholder";
  v251 = @"Placeholder";
  v101 = sub_1CA94C438();
  v247 = v102;
  v248 = v101;
  v103 = sub_1CA94C438();
  v246 = v104;
  v249 = &v246;
  MEMORY[0x1EEE9AC00](v103);
  sub_1CA948D98();
  v105 = v270;
  v106 = [v270 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v86 + 240) = sub_1CA2F9F14(v248, v247, v103, v246, 0, 0, &v246 - v97, &v246 - v99);
  v108 = v269;
  v109 = v257;
  *(v86 + 264) = v269;
  *(v86 + 272) = v109;
  v257 = v109;
  v110 = sub_1CA94C438();
  v247 = v111;
  v248 = v110;
  v112 = sub_1CA94C438();
  v246 = v113;
  v249 = &v246;
  MEMORY[0x1EEE9AC00](v112);
  v114 = &v246 - v274;
  sub_1CA948D98();
  v115 = [v105 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v246 - v272;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v118 = sub_1CA2F9F14(v248, v247, v112, v246, 0, 0, v114, v116);
  *(v86 + 304) = v108;
  *(v86 + 280) = v118;
  sub_1CA94C1E8();
  *(v268 + 40) = sub_1CA2F864C();
  v119 = swift_allocObject();
  *(v119 + 16) = v262;
  *(v119 + 32) = @"AllowsDecimalNumbers";
  *(v119 + 40) = 1;
  v120 = v250;
  *(v119 + 64) = MEMORY[0x1E69E6370];
  *(v119 + 72) = v120;
  *(v119 + 80) = 0xD000000000000020;
  *(v119 + 88) = 0x80000001CA9B1920;
  v121 = MEMORY[0x1E69E6158];
  v122 = v256;
  *(v119 + 104) = MEMORY[0x1E69E6158];
  *(v119 + 112) = v122;
  strcpy((v119 + 120), "currencyAmount");
  *(v119 + 135) = -18;
  v123 = v253;
  v124 = v254;
  *(v119 + 144) = v121;
  *(v119 + 152) = v123;
  *(v119 + 160) = v255;
  *(v119 + 168) = 0x80000001CA9B1950;
  *(v119 + 184) = v121;
  *(v119 + 192) = v124;
  v248 = v120;
  *&v250 = v123;
  v255 = v124;
  v125 = @"AllowsDecimalNumbers";
  v253 = sub_1CA94C438();
  v249 = v126;
  v127 = sub_1CA94C438();
  v247 = v128;
  v254 = &v246;
  MEMORY[0x1EEE9AC00](v127);
  v129 = v274;
  sub_1CA948D98();
  v130 = v270;
  v131 = [v270 bundleURL];
  v246 = &v246;
  MEMORY[0x1EEE9AC00](v131);
  v132 = v272;
  sub_1CA948B68();

  v133 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v119 + 200) = sub_1CA2F9F14(v253, v249, v127, v247, 0, 0, &v246 - v129, &v246 - v132);
  v134 = v269;
  v135 = v257;
  *(v119 + 224) = v269;
  *(v119 + 232) = v135;
  v253 = sub_1CA94C438();
  v249 = v136;
  v247 = sub_1CA94C438();
  v138 = v137;
  v254 = &v246;
  MEMORY[0x1EEE9AC00](v247);
  v139 = &v246 - v129;
  sub_1CA948D98();
  v140 = [v130 bundleURL];
  MEMORY[0x1EEE9AC00](v140);
  sub_1CA948B68();

  v141 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v119 + 240) = sub_1CA2F9F14(v253, v249, v247, v138, 0, 0, v139, &v246 - v132);
  *(v119 + 264) = v134;
  *(v119 + 272) = @"TextAlignment";
  v142 = MEMORY[0x1E69E6158];
  *(v119 + 304) = MEMORY[0x1E69E6158];
  *(v119 + 280) = 0x7468676952;
  *(v119 + 288) = 0xE500000000000000;
  v143 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v268 + 48) = sub_1CA2F864C();
  v144 = swift_initStackObject();
  *(v144 + 16) = xmmword_1CA981350;
  v247 = 0x80000001CA99E620;
  v145 = v248;
  *(v144 + 32) = v248;
  *(v144 + 40) = 0xD000000000000011;
  *(v144 + 48) = 0x80000001CA99E620;
  v146 = v258;
  *(v144 + 64) = v142;
  *(v144 + 72) = v146;
  *(v144 + 80) = 0;
  v147 = v250;
  *(v144 + 104) = MEMORY[0x1E69E6370];
  *(v144 + 112) = v147;
  v249 = 0x80000001CA9B19F0;
  *(v144 + 120) = v259;
  *(v144 + 128) = 0x80000001CA9B19F0;
  *(v144 + 144) = v142;
  v148 = v255;
  *(v144 + 152) = v255;
  v253 = v145;
  v254 = v147;
  v255 = v148;
  v149 = sub_1CA94C438();
  v151 = v150;
  v152 = sub_1CA94C438();
  v154 = v153;
  *&v250 = &v246;
  MEMORY[0x1EEE9AC00](v152);
  v155 = &v246 - v274;
  sub_1CA948D98();
  v156 = [v270 bundleURL];
  MEMORY[0x1EEE9AC00](v156);
  v157 = &v246 - v272;
  sub_1CA948B68();

  v158 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v159 = sub_1CA2F9F14(v149, v151, v152, v154, 0, 0, v155, v157);
  v160 = v269;
  *(v144 + 184) = v269;
  *(v144 + 160) = v159;
  sub_1CA94C1E8();
  *(v268 + 56) = sub_1CA2F864C();
  v161 = swift_allocObject();
  *(v161 + 16) = xmmword_1CA981370;
  *(v161 + 32) = v253;
  *(v161 + 40) = 0xD000000000000011;
  *(v161 + 48) = v247;
  v162 = MEMORY[0x1E69E6158];
  v163 = v258;
  *(v161 + 64) = MEMORY[0x1E69E6158];
  *(v161 + 72) = v163;
  *(v161 + 80) = 1;
  v164 = v254;
  *(v161 + 104) = MEMORY[0x1E69E6370];
  *(v161 + 112) = v164;
  *(v161 + 120) = 0x6E656857776F6853;
  *(v161 + 128) = 0xEB000000006E7552;
  v165 = v255;
  *(v161 + 144) = v162;
  *(v161 + 152) = v165;
  v166 = sub_1CA94C438();
  *&v250 = v167;
  v168 = sub_1CA94C438();
  v170 = v169;
  v258 = &v246;
  MEMORY[0x1EEE9AC00](v168);
  v171 = &v246 - v274;
  sub_1CA948D98();
  v172 = [v270 bundleURL];
  MEMORY[0x1EEE9AC00](v172);
  v173 = &v246 - v272;
  sub_1CA948B68();

  v174 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v161 + 160) = sub_1CA2F9F14(v166, v250, v168, v170, 0, 0, v171, v173);
  *(v161 + 184) = v160;
  *(v161 + 192) = @"RequiredResources";
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v175 = swift_allocObject();
  *(v175 + 16) = v261;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v176 = swift_allocObject();
  v250 = xmmword_1CA9813C0;
  *(v176 + 16) = xmmword_1CA9813C0;
  strcpy((v176 + 32), "WFParameterKey");
  *(v176 + 47) = -18;
  v177 = v249;
  *(v176 + 48) = v259;
  *(v176 + 56) = v177;
  v259 = 0x80000001CA993570;
  v178 = MEMORY[0x1E69E6158];
  v179 = v260;
  *(v176 + 72) = MEMORY[0x1E69E6158];
  *(v176 + 80) = v179;
  *(v176 + 88) = 0x80000001CA993570;
  *(v176 + 96) = 0;
  *(v176 + 120) = MEMORY[0x1E69E6370];
  *(v176 + 128) = 0x72756F7365524657;
  *(v176 + 168) = v178;
  v248 = 0xD00000000000001BLL;
  v249 = 0x80000001CA993590;
  *(v176 + 136) = 0xEF7373616C436563;
  *(v176 + 144) = 0xD00000000000001BLL;
  *(v176 + 152) = 0x80000001CA993590;
  v180 = @"RequiredResources";
  *(v175 + 32) = sub_1CA94C1E8();
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v161 + 224) = v247;
  *(v161 + 200) = v175;
  sub_1CA94C1E8();
  *(v268 + 64) = sub_1CA2F864C();
  v181 = swift_allocObject();
  *(v181 + 16) = v262;
  *(v181 + 32) = v253;
  *(v181 + 40) = 0xD000000000000014;
  *(v181 + 48) = 0x80000001CA99B500;
  v182 = v256;
  *(v181 + 64) = v178;
  *(v181 + 72) = v182;
  *(v181 + 80) = 1702129518;
  *(v181 + 88) = 0xE400000000000000;
  v183 = v254;
  *(v181 + 104) = v178;
  *(v181 + 112) = v183;
  *(v181 + 120) = 0xD000000000000011;
  *(v181 + 128) = 0x80000001CA9B1A50;
  v184 = v255;
  *(v181 + 144) = v178;
  *(v181 + 152) = v184;
  *&v262 = sub_1CA94C438();
  v256 = v185;
  v186 = sub_1CA94C438();
  v188 = v187;
  v266 = &v246;
  MEMORY[0x1EEE9AC00](v186);
  v189 = &v246 - v274;
  sub_1CA948D98();
  v190 = [v270 bundleURL];
  MEMORY[0x1EEE9AC00](v190);
  v191 = &v246 - v272;
  sub_1CA948B68();

  v192 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v181 + 160) = sub_1CA2F9F14(v262, v256, v186, v188, 0, 0, v189, v191);
  v193 = v269;
  *(v181 + 184) = v269;
  *(v181 + 192) = @"Multiline";
  *(v181 + 200) = 1;
  v194 = v251;
  *(v181 + 224) = MEMORY[0x1E69E6370];
  *(v181 + 232) = v194;
  v195 = @"Multiline";
  *&v262 = sub_1CA94C438();
  v256 = v196;
  v197 = sub_1CA94C438();
  v255 = v198;
  v266 = &v246;
  MEMORY[0x1EEE9AC00](v197);
  v199 = v274;
  sub_1CA948D98();
  v200 = v270;
  v201 = [v270 bundleURL];
  v254 = &v246;
  MEMORY[0x1EEE9AC00](v201);
  v202 = v272;
  sub_1CA948B68();

  v203 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v181 + 240) = sub_1CA2F9F14(v262, v256, v197, v255, 0, 0, &v246 - v199, &v246 - v202);
  v204 = v257;
  *(v181 + 264) = v193;
  *(v181 + 272) = v204;
  *&v262 = sub_1CA94C438();
  v257 = v205;
  v206 = sub_1CA94C438();
  v208 = v207;
  v266 = &v246;
  MEMORY[0x1EEE9AC00](v206);
  sub_1CA948D98();
  v209 = [v200 bundleURL];
  MEMORY[0x1EEE9AC00](v209);
  sub_1CA948B68();

  v210 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v211 = sub_1CA2F9F14(v262, v257, v206, v208, 0, 0, &v246 - v199, &v246 - v202);
  *(v181 + 304) = v269;
  *(v181 + 280) = v211;
  sub_1CA94C1E8();
  v212 = sub_1CA2F864C();
  v213 = v268;
  *(v268 + 72) = v212;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v215 = v263;
  v263[35] = v213;
  v215[38] = v214;
  v215[39] = @"ParameterSummary";
  v216 = @"ParameterSummary";
  v217 = sub_1CA94C438();
  v219 = v218;
  v220 = sub_1CA94C438();
  v222 = v221;
  MEMORY[0x1EEE9AC00](v220);
  v223 = &v246 - v274;
  sub_1CA948D98();
  v224 = [v270 bundleURL];
  MEMORY[0x1EEE9AC00](v224);
  v225 = &v246 - v272;
  sub_1CA948B68();

  v226 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v227 = sub_1CA2F9F14(v217, v219, v220, v222, 0, 0, v223, v225);
  v228 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v229 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v230 = v263;
  v263[40] = v228;
  v230[43] = v229;
  v230[44] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v231 = swift_allocObject();
  v274 = xmmword_1CA97EDF0;
  *(v231 + 16) = xmmword_1CA97EDF0;
  v232 = swift_allocObject();
  *(v232 + 16) = v274;
  *(v232 + 32) = 0xD000000000000011;
  *(v232 + 40) = 0x80000001CA99B240;
  v233 = swift_allocObject();
  *(v233 + 16) = v261;
  v234 = swift_allocObject();
  *(v234 + 16) = v250;
  strcpy((v234 + 32), "WFParameterKey");
  *(v234 + 47) = -18;
  *(v234 + 48) = 0x6E656857776F6853;
  *(v234 + 56) = 0xEB000000006E7552;
  v235 = MEMORY[0x1E69E6158];
  v236 = v259;
  v237 = v260;
  *(v234 + 72) = MEMORY[0x1E69E6158];
  *(v234 + 80) = v237;
  *(v234 + 88) = v236;
  *(v234 + 96) = 0;
  *(v234 + 120) = MEMORY[0x1E69E6370];
  *(v234 + 128) = 0x72756F7365524657;
  *(v234 + 168) = v235;
  v239 = v248;
  v238 = v249;
  *(v234 + 136) = 0xEF7373616C436563;
  *(v234 + 144) = v239;
  *(v234 + 152) = v238;
  v240 = @"RequiredResources";
  *(v233 + 32) = sub_1CA94C1E8();
  *(v232 + 48) = v233;
  *(v232 + 72) = v247;
  *(v232 + 80) = 0x72756F7365524657;
  *(v232 + 120) = v235;
  *(v232 + 88) = 0xEF7373616C436563;
  *(v232 + 96) = 0xD00000000000001ELL;
  *(v232 + 104) = 0x80000001CA9C2E20;
  v241 = sub_1CA94C1E8();
  *(v231 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(v231 + 32) = v241;
  v275 = 2;
  v276 = 1;
  v242 = type metadata accessor for WFDeviceIdiomResource();
  v243 = objc_allocWithZone(v242);
  WFDeviceIdiomResource.init(requirement:)(&v275);
  *(v231 + 88) = v242;
  *(v231 + 64) = v244;
  v230[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v230[45] = v231;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4D4D28()
{
  v117 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981340;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA99BD90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v120 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v121 = v12;
  v13 = &v110 - v120;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v123 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v124 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v122 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v110 - v122;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v119 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = MEMORY[0x1E69E6158];
  v23 = sub_1CA94C1E8();
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v23;
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000015;
  *(inited + 168) = 0x80000001CA993430;
  *(inited + 184) = v22;
  *(inited + 192) = @"Description";
  *&v118 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v115 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v116 = &v110;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v110 - v120;
  sub_1CA948D98();
  v33 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v110 - v122;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v115, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v119;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v118;
  *(inited + 200) = sub_1CA6B3784();
  *(inited + 224) = v37;
  *(inited + 232) = @"IconColor";
  *(inited + 240) = 1953392980;
  *(inited + 248) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 272) = @"IconSymbol";
  *(inited + 280) = 0x6E697070616DLL;
  *(inited + 288) = 0xE600000000000000;
  *(inited + 304) = v38;
  *(inited + 312) = @"IconSymbolColor";
  *(inited + 320) = 0x6E65657247;
  *(inited + 328) = 0xE500000000000000;
  *(inited + 344) = v38;
  *(inited + 352) = @"Input";
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v39 = swift_initStackObject();
  v118 = xmmword_1CA981350;
  *(v39 + 16) = xmmword_1CA981350;
  *(v39 + 32) = 0x656C7069746C754DLL;
  *(v39 + 40) = 0xE800000000000000;
  v40 = MEMORY[0x1E69E6370];
  *(v39 + 48) = 1;
  *(v39 + 72) = v40;
  strcpy((v39 + 80), "ParameterKey");
  *(v39 + 93) = 0;
  *(v39 + 94) = -5120;
  *(v39 + 96) = 0x7475706E494657;
  *(v39 + 104) = 0xE700000000000000;
  *(v39 + 120) = v38;
  *(v39 + 128) = 0x6465726975716552;
  *(v39 + 136) = 0xE800000000000000;
  *(v39 + 144) = 1;
  *(v39 + 168) = v40;
  *(v39 + 176) = 0x7365707954;
  v41 = v40;
  *(v39 + 184) = 0xE500000000000000;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v39 + 216) = v116;
  *(v39 + 192) = &unk_1F4A01950;
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"IconSymbolColor";
  v45 = @"Input";
  v46 = sub_1CA94C1E8();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v115 = v47;
  *(inited + 360) = v46;
  *(inited + 384) = v47;
  *(inited + 392) = @"LocallyProcessesData";
  *(inited + 400) = 1;
  *(inited + 424) = v41;
  *(inited + 432) = @"Name";
  v48 = @"LocallyProcessesData";
  v49 = @"Name";
  v50 = sub_1CA94C438();
  v111 = v51;
  v112 = v50;
  v52 = sub_1CA94C438();
  v110 = v53;
  v113 = &v110;
  MEMORY[0x1EEE9AC00](v52);
  v54 = v120;
  sub_1CA948D98();
  v55 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v55);
  v56 = v122;
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 440) = sub_1CA2F9F14(v112, v111, v52, v110, 0, 0, &v110 - v54, &v110 - v56);
  v58 = v119;
  *(inited + 464) = v119;
  *(inited + 472) = @"Output";
  v59 = swift_allocObject();
  *(v59 + 16) = v118;
  *(v59 + 32) = 0x75736F6C63736944;
  *(v59 + 40) = 0xEF6C6576654C6572;
  *(v59 + 48) = 0x63696C627550;
  *(v59 + 56) = 0xE600000000000000;
  *(v59 + 72) = MEMORY[0x1E69E6158];
  *(v59 + 80) = 0x656C7069746C754DLL;
  *(v59 + 88) = 0xE800000000000000;
  *(v59 + 96) = 1;
  *(v59 + 120) = MEMORY[0x1E69E6370];
  *(v59 + 128) = 0x614E74757074754FLL;
  *(v59 + 136) = 0xEA0000000000656DLL;
  v60 = @"Output";
  v61 = sub_1CA94C438();
  v112 = v62;
  v113 = v61;
  v111 = sub_1CA94C438();
  v64 = v63;
  v114 = &v110;
  MEMORY[0x1EEE9AC00](v111);
  sub_1CA948D98();
  v65 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 144) = sub_1CA2F9F14(v113, v112, v111, v64, 0, 0, &v110 - v54, &v110 - v56);
  *(v59 + 168) = v58;
  *(v59 + 176) = 0x7365707954;
  *(v59 + 216) = v116;
  *(v59 + 184) = 0xE500000000000000;
  *(v59 + 192) = &unk_1F4A01980;
  v67 = MEMORY[0x1E69E6158];
  *(inited + 480) = sub_1CA94C1E8();
  *(inited + 504) = v115;
  *(inited + 512) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v116 = swift_allocObject();
  *(v116 + 1) = xmmword_1CA9813B0;
  v115 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v68 = swift_allocObject();
  *(v68 + 16) = v118;
  *(v68 + 32) = @"Class";
  *(v68 + 40) = 0xD000000000000019;
  *(v68 + 48) = 0x80000001CA99B030;
  *(v68 + 64) = v67;
  *(v68 + 72) = @"Key";
  *(v68 + 80) = 0x7475706E494657;
  *(v68 + 88) = 0xE700000000000000;
  *(v68 + 104) = v67;
  *(v68 + 112) = @"Label";
  v69 = @"Parameters";
  v70 = @"Class";
  v71 = @"Key";
  v72 = @"Label";
  v73 = sub_1CA94C438();
  v113 = v74;
  v114 = v73;
  v75 = sub_1CA94C438();
  v112 = v76;
  *&v118 = &v110;
  MEMORY[0x1EEE9AC00](v75);
  v77 = v120;
  sub_1CA948D98();
  v78 = v123;
  v79 = [v123 bundleURL];
  v111 = &v110;
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v110 - v122;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 120) = sub_1CA2F9F14(v114, v113, v75, v112, 0, 0, &v110 - v77, v80);
  v82 = v119;
  *(v68 + 144) = v119;
  *(v68 + 152) = @"Placeholder";
  v83 = @"Placeholder";
  v84 = sub_1CA94C438();
  v113 = v85;
  v114 = v84;
  v112 = sub_1CA94C438();
  v87 = v86;
  *&v118 = &v110;
  MEMORY[0x1EEE9AC00](v112);
  v88 = &v110 - v77;
  sub_1CA948D98();
  v89 = [v78 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v110 - v122;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v92 = sub_1CA2F9F14(v114, v113, v112, v87, 0, 0, v88, v90);
  *(v68 + 184) = v82;
  *(v68 + 160) = v92;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v93 = sub_1CA2F864C();
  v94 = v116;
  v116[4] = v93;
  *(inited + 544) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 520) = v94;
  *(inited + 552) = @"ParameterSummary";
  v95 = @"ParameterSummary";
  v96 = sub_1CA94C438();
  v98 = v97;
  v99 = sub_1CA94C438();
  v101 = v100;
  v119 = &v110;
  MEMORY[0x1EEE9AC00](v99);
  v102 = &v110 - v120;
  sub_1CA948D98();
  v103 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v110 - v122;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v106 = sub_1CA2F9F14(v96, v98, v99, v101, 0, 0, v102, v104);
  v107 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(inited + 584) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 560) = v107;
  *(inited + 592) = @"ResidentCompatible";
  *(inited + 624) = MEMORY[0x1E69E6370];
  *(inited + 600) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v108 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4D5D08()
{
  v77 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFExitAction");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v82 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v83 = v12;
  v13 = &v73 - v82;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v81 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v79 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v80 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v73 - v80;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v78 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v76 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v74 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v75 = &v73;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v73 - v82;
  sub_1CA948D98();
  v30 = [v81 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v73 - v80;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v74, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v78;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v76;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 2036429383;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0x6C69662E706F7473;
  *(inited + 208) = 0xE90000000000006CLL;
  *(inited + 224) = v35;
  *(inited + 232) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_1CA981350;
  *(v36 + 32) = 0x656C7069746C754DLL;
  *(v36 + 40) = 0xE800000000000000;
  v37 = MEMORY[0x1E69E6370];
  *(v36 + 48) = 1;
  *(v36 + 72) = v37;
  strcpy((v36 + 80), "ParameterKey");
  *(v36 + 93) = 0;
  *(v36 + 94) = -5120;
  *(v36 + 96) = 0x746C757365524657;
  *(v36 + 104) = 0xE800000000000000;
  *(v36 + 120) = v35;
  *(v36 + 128) = 0x6465726975716552;
  *(v36 + 136) = 0xE800000000000000;
  *(v36 + 144) = 0;
  *(v36 + 168) = v37;
  *(v36 + 176) = 0x7365707954;
  *(v36 + 184) = 0xE500000000000000;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v36 + 216) = v76;
  *(v36 + 192) = &unk_1F4A019B0;
  v38 = @"IconColor";
  v39 = @"IconSymbol";
  v40 = @"Input";
  v41 = sub_1CA94C1E8();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 240) = v41;
  *(inited + 264) = v42;
  *(inited + 272) = @"Name";
  v43 = @"Name";
  v44 = sub_1CA94C438();
  v46 = v45;
  v47 = sub_1CA94C438();
  v49 = v48;
  v75 = &v73;
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v73 - v82;
  sub_1CA948D98();
  v51 = [v81 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v73 - v80;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v44, v46, v47, v49, 0, 0, v50, v52);
  *(inited + 304) = v78;
  *(inited + 312) = @"Parameters";
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 320) = MEMORY[0x1E69E7CC0];
  *(inited + 344) = v54;
  *(inited + 352) = @"ParameterSummary";
  v55 = @"Parameters";
  v56 = @"ParameterSummary";
  v57 = sub_1CA94C438();
  v59 = v58;
  v60 = sub_1CA94C438();
  v62 = v61;
  v78 = &v73;
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v73 - v82;
  sub_1CA948D98();
  v64 = [v81 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v73 - v80;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v67 = sub_1CA2F9F14(v57, v59, v60, v62, 0, 0, v63, v65);
  v68 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v69 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 360) = v68;
  *(inited + 384) = v69;
  *(inited + 392) = @"RequiredResources";
  *(inited + 400) = &unk_1F4A019E0;
  *(inited + 424) = v76;
  *(inited + 432) = @"ResidentCompatible";
  *(inited + 464) = MEMORY[0x1E69E6370];
  *(inited + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key);
  v70 = @"RequiredResources";
  v71 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4D66A0()
{
  v28[1] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Name";
  v6 = @"Name";
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA94C438();
  v12 = v11;
  v13 = sub_1CA948E58();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v17 = [qword_1EDB9F690 bundleURL];
  v18 = sub_1CA948BA8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v7, v9, v10, v12, 0, 0, v16, v21);
  v24 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 120) = v23;
  *(inited + 144) = v24;
  *(inited + 152) = @"ResidentCompatible";
  *(inited + 184) = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  v25 = @"ResidentCompatible";
  v26 = sub_1CA94C368();
  *(inited + 224) = v1;
  *(inited + 192) = v26;
  *(inited + 200) = 0xD000000000000014;
  *(inited + 208) = 0x80000001CA993920;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4D6A18()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_116();
  v1 = sub_1CA94C368();

  v2 = [v0 initWithSymbolName_];

  return v2;
}

uint64_t WFAskLLMModelParameter.localizedTitleForButton(with:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445BF0, &unk_1CA989120);
  OUTLINED_FUNCTION_18_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_11_22();
  v7 = OUTLINED_FUNCTION_5_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_41(v1);
  if (v13)
  {
    sub_1CA4D7558(v1);
    return 0;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_8_18(v9);
    v16(v15);
    v17 = v9[2];
    v18 = OUTLINED_FUNCTION_4_35();
    v19(v18);
    v20 = v9[11];
    v21 = OUTLINED_FUNCTION_106();
    if (v22(v21) == *MEMORY[0x1E6996C20])
    {
      v23 = *(v0 + OBJC_IVAR___WFAskLLMModelParameter_enablementHelper);
      v24 = sub_1CA9486E8();
      if (v25)
      {
        v14 = v24;
        v26 = v9[1];
        v27 = OUTLINED_FUNCTION_116();
        v28(v27);
LABEL_10:
        sub_1CA94C218();

        return v14;
      }

      v14 = sub_1CA9486D8();
      v33 = v32;
      v34 = v9[1];
      v35 = OUTLINED_FUNCTION_116();
      v36(v35);
      if (v33)
      {
        sub_1CA94C218();
        goto LABEL_10;
      }
    }

    else
    {
      v14 = sub_1CA948658();
      v29 = v9[1];
      v30 = OUTLINED_FUNCTION_116();
      v29(v30);
      v31 = OUTLINED_FUNCTION_106();
      v29(v31);
    }
  }

  return v14;
}

id WFAskLLMModelParameter.enumeration(_:accessoryIconForPossibleState:)(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445BF0, &unk_1CA989120);
  OUTLINED_FUNCTION_18_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = sub_1CA9486C8();
  v12 = OUTLINED_FUNCTION_5_4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  v19 = v18 - v17;
  sub_1CA4D7250(a2, v10);
  OUTLINED_FUNCTION_41(v10);
  if (v20)
  {
    sub_1CA4D7558(v10);
    return 0;
  }

  (*(v14 + 32))(v19, v10, v2);
  v21 = *(v3 + OBJC_IVAR___WFAskLLMModelParameter_enablementHelper);
  sub_1CA948668();
  if (!v22)
  {
    v27 = *(v14 + 8);
    v28 = OUTLINED_FUNCTION_116();
    v29(v28);
    return 0;
  }

  sub_1CA4D75C0();
  v23 = sub_1CA4D6A18();
  v24 = *(v14 + 8);
  v25 = OUTLINED_FUNCTION_116();
  v26(v25);
  return v23;
}

uint64_t WFAskLLMModelParameter.isPresentingOnboarding.getter()
{
  v1 = OBJC_IVAR___WFAskLLMModelParameter_isPresentingOnboarding;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WFAskLLMModelParameter.isPresentingOnboarding.setter(char a1)
{
  v3 = OBJC_IVAR___WFAskLLMModelParameter_isPresentingOnboarding;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1CA4D6F18(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___WFAskLLMModelParameter_enablementHelper;
  *&v1[v4] = [objc_allocWithZone(sub_1CA948708()) init];
  v1[OBJC_IVAR___WFAskLLMModelParameter_isPresentingOnboarding] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithDefinition_, a1);
  [v5 setDataSource_];

  return v5;
}

uint64_t WFAskLLMModelParameter.enumeration(_:localizedLabelForPossibleState:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445BF0, &unk_1CA989120);
  OUTLINED_FUNCTION_18_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_11_22();
  v6 = OUTLINED_FUNCTION_5_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_41(v0);
  if (v12)
  {
    sub_1CA4D7558(v0);
    return 0;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_8_18(v8);
    v15(v14);
    v16 = v8[2];
    v17 = OUTLINED_FUNCTION_4_35();
    v18(v17);
    v19 = v8[11];
    v20 = OUTLINED_FUNCTION_106();
    if (v21(v20) == *MEMORY[0x1E6996C20])
    {
      sub_1CA94C438();
      if (qword_1EDB9F5F0 != -1)
      {
        swift_once();
      }

      v22 = qword_1EDB9F690;
      v23 = sub_1CA94C368();
      v24 = sub_1CA94C368();

      v25 = [v22 localizedStringForKey:v23 value:v24 table:0];

      v13 = sub_1CA94C3A8();
      v26 = v8[1];
      v27 = OUTLINED_FUNCTION_116();
      v28(v27);
    }

    else
    {
      v13 = sub_1CA948658();
      v29 = v8[1];
      v30 = OUTLINED_FUNCTION_116();
      v29(v30);
      v31 = OUTLINED_FUNCTION_106();
      v29(v31);
    }
  }

  return v13;
}

uint64_t sub_1CA4D7250@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CA949F78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445BF0, &unk_1CA989120);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v27[-1] - v11;
  v13 = [a1 value];
  if (v13)
  {
    v27[2] = v13;
    if (swift_dynamicCast())
    {
      sub_1CA9486A8();
      v14 = sub_1CA9486C8();
      if (__swift_getEnumTagSinglePayload(v12, 1, v14) != 1)
      {
        (*(*(v14 - 8) + 32))(a2, v12, v14);
        v23 = a2;
        v24 = 0;
        v22 = v14;
        return __swift_storeEnumTagSinglePayload(v23, v24, 1, v22);
      }

      sub_1CA4D7558(v12);
    }
  }

  v15 = *MEMORY[0x1E69E1078];
  sub_1CA949C58();
  v16 = a1;
  v17 = sub_1CA949F68();
  v18 = sub_1CA94CC18();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27[0] = v20;
    *v19 = 136315138;
    v21 = [v16 value];
    swift_unknownObjectRelease();
    *(v19 + 4) = sub_1CA26B54C(0xD000000000000013, 0x80000001CA9C3180, v27);
    _os_log_impl(&dword_1CA256000, v17, v18, "WFAskLLMModelParameter could not create a WFGenerativeModelName from WFVariableSubstitutableParameterState with value type %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1CCAA4BF0](v20, -1, -1);
    MEMORY[0x1CCAA4BF0](v19, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v22 = sub_1CA9486C8();
  v23 = a2;
  v24 = 1;
  return __swift_storeEnumTagSinglePayload(v23, v24, 1, v22);
}

uint64_t sub_1CA4D7558(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445BF0, &unk_1CA989120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CA4D75C0()
{
  result = qword_1EC444870;
  if (!qword_1EC444870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC444870);
  }

  return result;
}

uint64_t WFAskLLMModelParameter.enumeration(_:localizedSubtitleLabelForPossibleState:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445BF0, &unk_1CA989120);
  OUTLINED_FUNCTION_18_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = sub_1CA9486C8();
  v11 = OUTLINED_FUNCTION_5_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_0();
  sub_1CA4D7250(a2, v9);
  OUTLINED_FUNCTION_41(v9);
  if (v16)
  {
    sub_1CA4D7558(v9);
    return 0;
  }

  else
  {
    v17 = *(v13 + 32);
    v18 = OUTLINED_FUNCTION_4_35();
    v19(v18);
    v20 = *(v2 + OBJC_IVAR___WFAskLLMModelParameter_enablementHelper);
    v21 = sub_1CA948688();
    v22 = *(v13 + 8);
    v23 = OUTLINED_FUNCTION_106();
    v24(v23);
  }

  return v21;
}

id sub_1CA4D7788(void *a1, uint64_t a2, void *a3, void *a4, void (*a5)(void))
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  a5();
  v12 = v11;

  if (v12)
  {
    v13 = sub_1CA94C368();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t WFAskLLMModelParameter.loadPossibleStates(forEnumeration:)()
{
  v1 = sub_1CA9486C8();
  v2 = OUTLINED_FUNCTION_5_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v2);
  v58 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v56 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v56 - v12);
  v14 = sub_1CA948698();
  v15 = 0;
  v16 = *(v14 + 16);
  v60 = OBJC_IVAR___WFAskLLMModelParameter_enablementHelper;
  v65 = v16;
  v66 = v4 + 16;
  v63 = *MEMORY[0x1E6996C20];
  v62 = v4 + 104;
  v67 = (v4 + 8);
  v57 = (v4 + 32);
  v59 = MEMORY[0x1E69E7CC0];
  v64 = v14;
  while (v65 != v15)
  {
    if (v15 >= *(v14 + 16))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v18 = *(v4 + 72);
    (*(v4 + 16))(v13, v14 + v17 + v18 * v15, v0);
    (*(v4 + 104))(v11, v63, v0);
    sub_1CA4D7EE0();
    v19 = sub_1CA94C358();
    v20 = *(v4 + 8);
    v21 = OUTLINED_FUNCTION_116();
    v20(v21);
    if ((v19 & 1) == 0 || (v22 = *(v61 + v60), (sub_1CA9486F8())) && (v23 = [objc_opt_self() shared], v24 = WFAskLLMAvailabilityProvider.isModelEnabled(modelName:)(v13), v23, (v24))
    {
      v25 = *v57;
      (*v57)(v58, v13, v0);
      v26 = v59;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v26;
      v56 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = *(v26 + 16);
        sub_1CA2B8F14();
        v26 = v68;
      }

      v29 = *(v26 + 16);
      if (v29 >= *(v26 + 24) >> 1)
      {
        sub_1CA2B8F14();
        v26 = v68;
      }

      ++v15;
      *(v26 + 16) = v29 + 1;
      v59 = v26;
      v56(v26 + v17 + v29 * v18, v58, v0);
      v14 = v64;
    }

    else
    {
      (v20)(v13, v0);
      ++v15;
      v14 = v64;
    }
  }

  v30 = *(v59 + 16);
  if (v30)
  {
    v31 = v59;
    v68 = MEMORY[0x1E69E7CC0];
    sub_1CA271524();
    v32 = v68;
    v33 = v31 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v34 = *(v4 + 72);
    v64 = *(v4 + 16);
    v65 = v34;
    do
    {
      v64(v11, v33, v0);
      v35 = sub_1CA9486B8();
      v37 = v36;
      v38 = *v67;
      v39 = OUTLINED_FUNCTION_116();
      v40(v39);
      v68 = v32;
      v41 = *(v32 + 16);
      if (v41 >= *(v32 + 24) >> 1)
      {
        sub_1CA271524();
        v32 = v68;
      }

      *(v32 + 16) = v41 + 1;
      v42 = v32 + 16 * v41;
      *(v42 + 32) = v35;
      *(v42 + 40) = v37;
      v33 += v65;
      --v30;
    }

    while (v30);
  }

  else
  {

    v32 = MEMORY[0x1E69E7CC0];
  }

  v68 = v32;
  sub_1CA94C218();
  sub_1CA334EF0(&v68);

  v43 = v68;
  v44 = *(v68 + 16);
  if (v44)
  {
    v68 = MEMORY[0x1E69E7CC0];
    sub_1CA94D508();
    v45 = (v43 + 40);
    do
    {
      v46 = *(v45 - 1);
      v47 = *v45;
      sub_1CA94C218();
      v48 = sub_1CA94C368();
      v49 = [objc_allocWithZone(WFStringSubstitutableState) initWithValue_];

      v50 = WFVariableSubstitutableParameterStateUpcast(v49);

      sub_1CA94D4D8();
      v51 = *(v68 + 16);
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
      v45 += 2;
      --v44;
    }

    while (v44);
  }

  v52 = objc_allocWithZone(MEMORY[0x1E696E918]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444F10, &qword_1CA98D960);
  v53 = sub_1CA94C648();

  v54 = [v52 initWithItems_];

  return v54;
}

unint64_t sub_1CA4D7EE0()
{
  result = qword_1EC445C10;
  if (!qword_1EC445C10)
  {
    sub_1CA9486C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445C10);
  }

  return result;
}

uint64_t WFAskLLMModelParameter.defaultSerializedRepresentation(forEnumeration:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1CA9486C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v7 = v6 - v5;
  (*(v3 + 104))(v6 - v5, *MEMORY[0x1E6996C18], v2);
  v8 = sub_1CA9486B8();
  v10 = v9;
  result = (*(v3 + 8))(v7, v2);
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v8;
  a1[1] = v10;
  return result;
}

id WFAskLLMModelParameter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void static WFActionDefinitionRegistry.register(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_1CA94C368();
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1CA4D8338;
  v9[3] = &block_descriptor_14;
  v8 = _Block_copy(v9);

  [ObjCClassFromMetadata registerDefinitionForKey:v7 definition:v8];
  _Block_release(v8);
}

id sub_1CA4D8338(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  return v4;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1CA4D83D4()
{
  v135 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFSocialAction");
  *(inited + 55) = -18;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = inited;
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v5 = sub_1CA94C438();
  v7 = v6;
  v8 = sub_1CA94C438();
  v10 = v9;
  v11 = sub_1CA948E58();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v144 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v145 = v13;
  v14 = &v124 - v144;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v143 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v140 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v142 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v124 - v142;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v14, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v141 = v21;
  *(v2 + 80) = v20;
  *(v2 + 104) = v21;
  *(v2 + 112) = @"AppDefinition";
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v22 = swift_initStackObject();
  v136 = xmmword_1CA981350;
  *(v22 + 16) = xmmword_1CA981350;
  *(v22 + 32) = 0xD00000000000001DLL;
  *(v22 + 40) = 0x80000001CA99DA80;
  v23 = MEMORY[0x1E69E6370];
  *(v22 + 48) = 1;
  *(v22 + 72) = v23;
  *(v22 + 80) = 0xD000000000000010;
  v24 = v23;
  v133 = 0x80000001CA993290;
  v134 = 0xD000000000000015;
  *(v22 + 88) = 0x80000001CA993290;
  *(v22 + 96) = 0xD000000000000015;
  *(v22 + 104) = 0x80000001CA9C31F0;
  v25 = MEMORY[0x1E69E6158];
  *(v22 + 120) = MEMORY[0x1E69E6158];
  *(v22 + 128) = 1701667150;
  *(v22 + 136) = 0xE400000000000000;
  *(v22 + 144) = 0x6B6F6F6265636146;
  *(v22 + 152) = 0xE800000000000000;
  *(v22 + 168) = v25;
  strcpy((v22 + 176), "TeamIdentifier");
  *(v22 + 216) = v25;
  *(v22 + 191) = -18;
  *(v22 + 192) = 0x4642505454573956;
  *(v22 + 200) = 0xEA0000000000394BLL;
  v26 = @"AppDefinition";
  v27 = sub_1CA94C1E8();
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(v2 + 144) = v137;
  *(v2 + 120) = v27;
  v28 = sub_1CA94C368();
  v139 = v2;
  *(v2 + 152) = v28;
  *(v2 + 160) = 1;
  *(v2 + 184) = v24;
  *(v2 + 192) = @"Description";
  v131 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v29 = swift_initStackObject();
  v132 = xmmword_1CA97EDF0;
  *(v29 + 16) = xmmword_1CA97EDF0;
  *(v29 + 32) = @"DescriptionInput";
  v30 = @"Description";
  v31 = @"DescriptionInput";
  v32 = sub_1CA94C438();
  v128 = v33;
  v129 = v32;
  v127 = sub_1CA94C438();
  v35 = v34;
  v130 = &v124;
  MEMORY[0x1EEE9AC00](v127);
  v36 = &v124 - v144;
  sub_1CA948D98();
  v37 = v143;
  v38 = [v143 bundleURL];
  MEMORY[0x1EEE9AC00](v38);
  v39 = v142;
  sub_1CA948B68();

  v40 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v29 + 40) = sub_1CA2F9F14(v129, v128, v127, v35, 0, 0, v36, &v124 - v39);
  v41 = v141;
  *(v29 + 64) = v141;
  *(v29 + 72) = @"DescriptionSummary";
  v42 = @"DescriptionSummary";
  v43 = sub_1CA94C438();
  v128 = v44;
  v129 = v43;
  v45 = sub_1CA94C438();
  v127 = v46;
  v130 = &v124;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v124 - v144;
  sub_1CA948D98();
  v48 = [v37 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  sub_1CA948B68();

  v49 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v50 = sub_1CA2F9F14(v129, v128, v45, v127, 0, 0, v47, &v124 - v39);
  *(v29 + 104) = v41;
  *(v29 + 80) = v50;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v51 = v131;
  v52 = sub_1CA6B3784();
  v53 = v139;
  v139[25] = v52;
  v53[28] = v51;
  v53[29] = @"Input";
  v54 = swift_allocObject();
  *(v54 + 16) = v136;
  *(v54 + 32) = 0x656C7069746C754DLL;
  *(v54 + 40) = 0xE800000000000000;
  *(v54 + 48) = 1;
  v55 = MEMORY[0x1E69E6370];
  *(v54 + 72) = MEMORY[0x1E69E6370];
  strcpy((v54 + 80), "ParameterKey");
  *(v54 + 93) = 0;
  *(v54 + 94) = -5120;
  *(v54 + 96) = 0x6B6F6F6265636146;
  *(v54 + 104) = 0xEF746E65746E6F43;
  *(v54 + 120) = MEMORY[0x1E69E6158];
  *(v54 + 128) = 0x6465726975716552;
  *(v54 + 136) = 0xE800000000000000;
  *(v54 + 144) = 1;
  *(v54 + 168) = v55;
  *(v54 + 176) = 0x7365707954;
  *(v54 + 184) = 0xE500000000000000;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v54 + 216) = v131;
  *(v54 + 192) = &unk_1F4A01A50;
  v56 = @"Input";
  v53[30] = sub_1CA94C1E8();
  v53[33] = v137;
  v53[34] = @"Name";
  v57 = @"Name";
  v58 = sub_1CA94C438();
  v60 = v59;
  v61 = sub_1CA94C438();
  v63 = v62;
  v130 = &v124;
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v124 - v144;
  sub_1CA948D98();
  v65 = [v143 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v124 - v142;
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v68 = sub_1CA2F9F14(v58, v60, v61, v63, 0, 0, v64, v66);
  v69 = v139;
  v139[35] = v68;
  v69[38] = v141;
  v69[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v130 = swift_allocObject();
  *(v130 + 1) = xmmword_1CA9813B0;
  v129 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v70 = swift_allocObject();
  *(v70 + 16) = v136;
  *&v136 = 0xD000000000000019;
  *(v70 + 32) = @"Class";
  *(v70 + 40) = 0xD000000000000019;
  *(v70 + 48) = 0x80000001CA99B030;
  v71 = MEMORY[0x1E69E6158];
  *(v70 + 64) = MEMORY[0x1E69E6158];
  *(v70 + 72) = @"Key";
  *(v70 + 80) = 0x6B6F6F6265636146;
  *(v70 + 88) = 0xEF746E65746E6F43;
  *(v70 + 104) = v71;
  *(v70 + 112) = @"Label";
  v72 = @"Parameters";
  v73 = @"Class";
  v74 = @"Key";
  v75 = @"Label";
  v76 = sub_1CA94C438();
  v126 = v77;
  v127 = v76;
  v78 = sub_1CA94C438();
  v125 = v79;
  v128 = &v124;
  MEMORY[0x1EEE9AC00](v78);
  v80 = v144;
  sub_1CA948D98();
  v81 = v143;
  v82 = [v143 bundleURL];
  v124 = &v124;
  MEMORY[0x1EEE9AC00](v82);
  v83 = v142;
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v70 + 120) = sub_1CA2F9F14(v127, v126, v78, v125, 0, 0, &v124 - v80, &v124 - v83);
  *(v70 + 144) = v141;
  *(v70 + 152) = @"Placeholder";
  v85 = @"Placeholder";
  v86 = sub_1CA94C438();
  v126 = v87;
  v127 = v86;
  v88 = sub_1CA94C438();
  v125 = v89;
  v128 = &v124;
  MEMORY[0x1EEE9AC00](v88);
  sub_1CA948D98();
  v90 = [v81 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v92 = sub_1CA2F9F14(v127, v126, v88, v125, 0, 0, &v124 - v80, &v124 - v83);
  *(v70 + 184) = v141;
  *(v70 + 160) = v92;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v93 = sub_1CA2F864C();
  v94 = v130;
  v130[4] = v93;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v96 = v139;
  v139[40] = v94;
  v96[43] = v95;
  v96[44] = @"ParameterSummary";
  v97 = @"ParameterSummary";
  v98 = sub_1CA94C438();
  v100 = v99;
  v101 = sub_1CA94C438();
  v103 = v102;
  v141 = &v124;
  MEMORY[0x1EEE9AC00](v101);
  sub_1CA948D98();
  v104 = [v143 bundleURL];
  MEMORY[0x1EEE9AC00](v104);
  v105 = &v124 - v142;
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v107 = sub_1CA2F9F14(v98, v100, v101, v103, 0, 0, &v124 - v80, v105);
  v108 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v109 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v96[45] = v108;
  v96[48] = v109;
  v96[49] = @"RequiredResources";
  v110 = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v111 = swift_allocObject();
  *(v111 + 16) = v132;
  v146 = 2;
  v147 = 1;
  v112 = type metadata accessor for WFDeviceIdiomResource();
  v113 = objc_allocWithZone(v112);
  v114 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v146);
  *(v111 + 32) = v115;
  v116 = MEMORY[0x1E69E6158];
  *(v111 + 88) = MEMORY[0x1E69E6158];
  v117 = v136;
  *(v111 + 56) = v112;
  *(v111 + 64) = v117;
  *(v111 + 72) = 0x80000001CA9932D0;
  v110[53] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v110[50] = v111;
  v110[54] = sub_1CA94C368();
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_1CA981370;
  v119 = v133;
  *(v118 + 32) = 0xD000000000000010;
  *(v118 + 40) = v119;
  *(v118 + 48) = 0xD000000000000024;
  *(v118 + 56) = 0x80000001CA9C3320;
  *(v118 + 72) = v116;
  *(v118 + 80) = 0xD000000000000012;
  *(v118 + 88) = 0x80000001CA99DDA0;
  *(v118 + 96) = &unk_1F4A01AB0;
  *(v118 + 120) = v131;
  *(v118 + 128) = 0x7079547475706E49;
  *(v118 + 136) = 0xE900000000000065;
  strcpy((v118 + 144), "ContentItems");
  *(v118 + 157) = 0;
  *(v118 + 158) = -5120;
  *(v118 + 168) = v116;
  *(v118 + 176) = 0x5465636976726553;
  *(v118 + 184) = 0xEB00000000657079;
  *(v118 + 192) = v117;
  *(v118 + 200) = 0x80000001CA9C3350;
  *(v118 + 216) = v116;
  *(v118 + 224) = 0xD000000000000010;
  *(v118 + 264) = v116;
  v120 = v134;
  *(v118 + 232) = 0x80000001CA99DDE0;
  *(v118 + 240) = v120;
  *(v118 + 248) = 0x80000001CA9C3370;
  v110[55] = sub_1CA94C1E8();
  v110[58] = v137;
  v110[59] = @"UserInterfaceClasses";
  v121 = @"UserInterfaceClasses";
  v122 = sub_1CA94C1E8();
  v110[63] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v110[60] = v122;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4D9560()
{
  v272 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000015;
  v271 = 0xD000000000000015;
  *(inited + 48) = 0x80000001CA9C33A0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v291 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v292 = v12;
  v13 = &v262 - v291;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v290 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v289 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v288 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v262 - v288;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v287 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v286 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v280 = xmmword_1CA9813C0;
  *(v21 + 16) = xmmword_1CA9813C0;
  *(v21 + 32) = @"DescriptionInput";
  v22 = @"Description";
  v23 = @"DescriptionInput";
  v24 = sub_1CA94C438();
  v283 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v285 = &v262;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v262 - v291;
  sub_1CA948D98();
  v30 = [v290 bundleURL];
  v284 = inited;
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v262 - v288;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v24, v283, v26, v28, 0, 0, v29, v32);
  *(v21 + 64) = v287;
  *(v21 + 72) = @"DescriptionResult";
  v34 = @"DescriptionResult";
  v35 = sub_1CA94C438();
  v282 = v36;
  v283 = v35;
  v281 = sub_1CA94C438();
  v38 = v37;
  v285 = &v262;
  MEMORY[0x1EEE9AC00](v281);
  v39 = v291;
  sub_1CA948D98();
  v40 = v290;
  v41 = [v290 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v262 - v288;
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 80) = sub_1CA2F9F14(v283, v282, v281, v38, 0, 0, &v262 - v39, v42);
  *(v21 + 104) = v287;
  *(v21 + 112) = @"DescriptionSummary";
  v44 = @"DescriptionSummary";
  v45 = sub_1CA94C438();
  v282 = v46;
  v283 = v45;
  v47 = sub_1CA94C438();
  v49 = v48;
  v285 = &v262;
  MEMORY[0x1EEE9AC00](v47);
  sub_1CA948D98();
  v50 = [v40 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v262 - v288;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v53 = sub_1CA2F9F14(v283, v282, v47, v49, 0, 0, &v262 - v39, v51);
  *(v21 + 144) = v287;
  *(v21 + 120) = v53;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v54 = v286;
  v55 = sub_1CA6B3784();
  v56 = v284;
  v284[15] = v55;
  v56[18] = v54;
  v56[19] = @"IconColor";
  v56[20] = 0x656C70727550;
  v56[21] = 0xE600000000000000;
  v57 = MEMORY[0x1E69E6158];
  v56[23] = MEMORY[0x1E69E6158];
  v56[24] = @"IconSymbol";
  v56[25] = 0xD000000000000027;
  v56[26] = 0x80000001CA99BB90;
  v56[28] = v57;
  v56[29] = @"Input";
  v58 = v56;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v59 = swift_initStackObject();
  v278 = xmmword_1CA981350;
  *(v59 + 16) = xmmword_1CA981350;
  *(v59 + 32) = 0x656C7069746C754DLL;
  *(v59 + 40) = 0xE800000000000000;
  v60 = MEMORY[0x1E69E6370];
  *(v59 + 48) = 0;
  *(v59 + 72) = v60;
  strcpy((v59 + 80), "ParameterKey");
  *(v59 + 93) = 0;
  *(v59 + 94) = -5120;
  *(v59 + 96) = 0x477475706E494657;
  *(v59 + 104) = 0xEA00000000004649;
  *(v59 + 120) = v57;
  *(v59 + 128) = 0x6465726975716552;
  *(v59 + 136) = 0xE800000000000000;
  *(v59 + 144) = 1;
  *(v59 + 168) = v60;
  *(v59 + 176) = 0x7365707954;
  v61 = v60;
  *(v59 + 184) = 0xE500000000000000;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v59 + 216) = v286;
  *(v59 + 192) = &unk_1F4A01B50;
  v62 = @"IconColor";
  v63 = @"IconSymbol";
  v64 = @"Input";
  v65 = sub_1CA94C1E8();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v285 = v66;
  v58[30] = v65;
  v58[33] = v66;
  v58[34] = @"InputPassthrough";
  *(v58 + 280) = 0;
  v58[38] = v61;
  v58[39] = @"Name";
  v67 = @"InputPassthrough";
  v68 = @"Name";
  v69 = sub_1CA94C438();
  v281 = v70;
  v282 = v69;
  v71 = sub_1CA94C438();
  v73 = v72;
  v283 = &v262;
  MEMORY[0x1EEE9AC00](v71);
  v74 = v291;
  sub_1CA948D98();
  v75 = [v290 bundleURL];
  MEMORY[0x1EEE9AC00](v75);
  v76 = v288;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v78 = sub_1CA2F9F14(v282, v281, v71, v73, 0, 0, &v262 - v74, &v262 - v76);
  v79 = v284;
  v284[40] = v78;
  v80 = v287;
  v79[43] = v287;
  v79[44] = @"Output";
  v81 = swift_allocObject();
  *(v81 + 16) = v280;
  *(v81 + 32) = 0x656C7069746C754DLL;
  *(v81 + 40) = 0xE800000000000000;
  *(v81 + 48) = 0;
  *(v81 + 72) = MEMORY[0x1E69E6370];
  *(v81 + 80) = 0x614E74757074754FLL;
  *(v81 + 88) = 0xEA0000000000656DLL;
  v82 = @"Output";
  v83 = sub_1CA94C438();
  v281 = v84;
  v282 = v83;
  v277 = sub_1CA94C438();
  v86 = v85;
  v283 = &v262;
  MEMORY[0x1EEE9AC00](v277);
  sub_1CA948D98();
  v87 = [v290 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v81 + 96) = sub_1CA2F9F14(v282, v281, v277, v86, 0, 0, &v262 - v74, &v262 - v76);
  *(v81 + 120) = v80;
  *(v81 + 128) = 0x7365707954;
  *(v81 + 168) = v286;
  *(v81 + 136) = 0xE500000000000000;
  *(v81 + 144) = &unk_1F4A01B80;
  v89 = MEMORY[0x1E69E6158];
  v90 = sub_1CA94C1E8();
  v91 = v284;
  v284[45] = v90;
  v91[48] = v285;
  v91[49] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v286 = swift_allocObject();
  *(v286 + 16) = xmmword_1CA981410;
  v285 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v92 = swift_allocObject();
  *(v92 + 16) = v278;
  v276 = 0xD000000000000019;
  v277 = 0x80000001CA99B030;
  *(v92 + 32) = @"Class";
  *(v92 + 40) = 0xD000000000000019;
  *(v92 + 48) = 0x80000001CA99B030;
  *(v92 + 64) = v89;
  *(v92 + 72) = @"Key";
  *(v92 + 80) = 0x6567616D494657;
  *(v92 + 88) = 0xE700000000000000;
  *(v92 + 104) = v89;
  *(v92 + 112) = @"Label";
  v93 = @"Class";
  v94 = @"Key";
  v95 = @"Label";
  v96 = v93;
  v97 = v94;
  v98 = v95;
  v274 = v96;
  v273 = v97;
  v275 = v98;
  v99 = @"Parameters";
  v281 = sub_1CA94C438();
  *&v270 = v100;
  v101 = sub_1CA94C438();
  v269 = v102;
  v282 = &v262;
  MEMORY[0x1EEE9AC00](v101);
  v103 = &v262 - v291;
  sub_1CA948D98();
  v104 = v290;
  v105 = [v290 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  v106 = v288;
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v92 + 120) = sub_1CA2F9F14(v281, v270, v101, v269, 0, 0, v103, &v262 - v106);
  v108 = v287;
  *(v92 + 144) = v287;
  *(v92 + 152) = @"Placeholder";
  *&v270 = @"Placeholder";
  v281 = sub_1CA94C438();
  v269 = v109;
  v110 = sub_1CA94C438();
  *&v268 = v111;
  v282 = &v262;
  MEMORY[0x1EEE9AC00](v110);
  v112 = &v262 - v291;
  sub_1CA948D98();
  v113 = [v104 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  sub_1CA948B68();

  v114 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v115 = sub_1CA2F9F14(v281, v269, v110, v268, 0, 0, v112, &v262 - v106);
  *(v92 + 184) = v108;
  *(v92 + 160) = v115;
  _s3__C3KeyVMa_0(0);
  v282 = v116;
  v281 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v286 + 32) = sub_1CA2F864C();
  v117 = swift_allocObject();
  *(v117 + 16) = v278;
  v119 = v273;
  v118 = v274;
  v121 = v276;
  v120 = v277;
  *(v117 + 32) = v274;
  *(v117 + 40) = v121;
  *(v117 + 48) = v120;
  v122 = MEMORY[0x1E69E6158];
  *(v117 + 64) = MEMORY[0x1E69E6158];
  *(v117 + 72) = v119;
  *(v117 + 80) = 0x477475706E494657;
  *(v117 + 88) = 0xEA00000000004649;
  v123 = v275;
  *(v117 + 104) = v122;
  *(v117 + 112) = v123;
  v274 = v118;
  v273 = v119;
  v275 = v123;
  v276 = sub_1CA94C438();
  v269 = v124;
  *&v268 = sub_1CA94C438();
  v126 = v125;
  v277 = &v262;
  MEMORY[0x1EEE9AC00](v268);
  v127 = v291;
  sub_1CA948D98();
  v128 = [v290 bundleURL];
  v267 = &v262;
  MEMORY[0x1EEE9AC00](v128);
  v129 = v106;
  sub_1CA948B68();

  v130 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v117 + 120) = sub_1CA2F9F14(v276, v269, v268, v126, 0, 0, &v262 - v127, &v262 - v106);
  v131 = v287;
  v132 = v270;
  *(v117 + 144) = v287;
  *(v117 + 152) = v132;
  v276 = v132;
  v133 = sub_1CA94C438();
  v269 = v134;
  *&v270 = v133;
  v135 = sub_1CA94C438();
  v137 = v136;
  v277 = &v262;
  MEMORY[0x1EEE9AC00](v135);
  sub_1CA948D98();
  v138 = [v290 bundleURL];
  MEMORY[0x1EEE9AC00](v138);
  sub_1CA948B68();

  v139 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v140 = sub_1CA2F9F14(v270, v269, v135, v137, 0, 0, &v262 - v127, &v262 - v129);
  *(v117 + 184) = v131;
  *(v117 + 160) = v140;
  sub_1CA94C1E8();
  *(v286 + 40) = sub_1CA2F864C();
  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_1CA981400;
  *(v141 + 32) = @"AllowsDecimalNumbers";
  *(v141 + 40) = 1;
  v142 = v274;
  *(v141 + 64) = MEMORY[0x1E69E6370];
  *(v141 + 72) = v142;
  v277 = 0x80000001CA99C180;
  *(v141 + 80) = 0xD000000000000016;
  *(v141 + 88) = 0x80000001CA99C180;
  v143 = MEMORY[0x1E69E6158];
  *(v141 + 104) = MEMORY[0x1E69E6158];
  *(v141 + 112) = @"DefaultValue";
  v144 = MEMORY[0x1E69E63B0];
  *(v141 + 120) = 0x3FD0000000000000;
  v145 = v273;
  *(v141 + 144) = v144;
  *(v141 + 152) = v145;
  strcpy((v141 + 160), "WFGIFDelayTime");
  *(v141 + 175) = -18;
  v146 = v275;
  *(v141 + 184) = v143;
  *(v141 + 192) = v146;
  v147 = @"DefaultValue";
  v274 = v142;
  v273 = v145;
  *&v270 = v146;
  v269 = v147;
  v148 = @"AllowsDecimalNumbers";
  v149 = sub_1CA94C438();
  v267 = v150;
  *&v268 = v149;
  v151 = sub_1CA94C438();
  v266 = v152;
  v275 = &v262;
  MEMORY[0x1EEE9AC00](v151);
  v153 = v291;
  sub_1CA948D98();
  v154 = v290;
  v155 = [v290 bundleURL];
  v265 = &v262;
  MEMORY[0x1EEE9AC00](v155);
  v156 = v288;
  sub_1CA948B68();

  v157 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v141 + 200) = sub_1CA2F9F14(v268, v267, v151, v266, 0, 0, &v262 - v153, &v262 - v156);
  v158 = v287;
  v159 = v276;
  *(v141 + 224) = v287;
  *(v141 + 232) = v159;
  v275 = v159;
  v160 = sub_1CA94C438();
  v267 = v161;
  *&v268 = v160;
  v162 = sub_1CA94C438();
  v164 = v163;
  v276 = &v262;
  MEMORY[0x1EEE9AC00](v162);
  sub_1CA948D98();
  v165 = [v154 bundleURL];
  MEMORY[0x1EEE9AC00](v165);
  sub_1CA948B68();

  v166 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v141 + 240) = sub_1CA2F9F14(v268, v267, v162, v164, 0, 0, &v262 - v153, &v262 - v156);
  *(v141 + 264) = v158;
  *(v141 + 272) = @"TextAlignment";
  v167 = MEMORY[0x1E69E6158];
  *(v141 + 304) = MEMORY[0x1E69E6158];
  *(v141 + 280) = 0x7468676952;
  *(v141 + 288) = 0xE500000000000000;
  v276 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v286 + 48) = sub_1CA2F864C();
  v168 = swift_allocObject();
  *(v168 + 16) = v278;
  v170 = v273;
  v169 = v274;
  *(v168 + 32) = v274;
  *(v168 + 40) = 0xD000000000000011;
  *(v168 + 48) = 0x80000001CA99E620;
  v171 = v269;
  *(v168 + 64) = v167;
  *(v168 + 72) = v171;
  *(v168 + 80) = 1;
  *(v168 + 104) = MEMORY[0x1E69E6370];
  *(v168 + 112) = v170;
  strcpy((v168 + 120), "WFGIFAutoSize");
  *(v168 + 134) = -4864;
  *(v168 + 144) = v167;
  v172 = v270;
  *(v168 + 152) = v270;
  v274 = v169;
  v273 = v170;
  *&v278 = v172;
  v173 = sub_1CA94C438();
  v175 = v174;
  v176 = sub_1CA94C438();
  v178 = v177;
  *&v270 = &v262;
  MEMORY[0x1EEE9AC00](v176);
  v179 = &v262 - v291;
  sub_1CA948D98();
  v180 = [v290 bundleURL];
  MEMORY[0x1EEE9AC00](v180);
  v181 = &v262 - v288;
  sub_1CA948B68();

  v182 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v183 = sub_1CA2F9F14(v173, v175, v176, v178, 0, 0, v179, v181);
  *(v168 + 184) = v287;
  *(v168 + 160) = v183;
  sub_1CA94C1E8();
  *(v286 + 56) = sub_1CA2F864C();
  v184 = swift_allocObject();
  v270 = xmmword_1CA981380;
  *(v184 + 16) = xmmword_1CA981380;
  *(v184 + 32) = v274;
  *(v184 + 40) = 0xD000000000000016;
  *(v184 + 48) = v277;
  v185 = MEMORY[0x1E69E6158];
  v186 = v273;
  *(v184 + 64) = MEMORY[0x1E69E6158];
  *(v184 + 72) = v186;
  *(v184 + 80) = 0xD000000000000014;
  *(v184 + 88) = 0x80000001CA9C3590;
  v187 = v278;
  *(v184 + 104) = v185;
  *(v184 + 112) = v187;
  v188 = sub_1CA94C438();
  v267 = v189;
  *&v268 = v188;
  v190 = sub_1CA94C438();
  v266 = v191;
  v269 = &v262;
  MEMORY[0x1EEE9AC00](v190);
  v192 = &v262 - v291;
  sub_1CA948D98();
  v193 = v290;
  v194 = [v290 bundleURL];
  MEMORY[0x1EEE9AC00](v194);
  v195 = v288;
  sub_1CA948B68();

  v196 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v184 + 120) = sub_1CA2F9F14(v268, v267, v190, v266, 0, 0, v192, &v262 - v195);
  v197 = v287;
  v198 = v275;
  *(v184 + 144) = v287;
  *(v184 + 152) = v198;
  v199 = sub_1CA94C438();
  v267 = v200;
  *&v268 = v199;
  v201 = sub_1CA94C438();
  v266 = v202;
  v269 = &v262;
  MEMORY[0x1EEE9AC00](v201);
  v203 = &v262 - v291;
  sub_1CA948D98();
  v204 = [v193 bundleURL];
  MEMORY[0x1EEE9AC00](v204);
  sub_1CA948B68();

  v205 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v184 + 160) = sub_1CA2F9F14(v268, v267, v201, v266, 0, 0, v203, &v262 - v195);
  *(v184 + 184) = v197;
  *(v184 + 192) = @"RequiredResources";
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v206 = swift_allocObject();
  v268 = xmmword_1CA981310;
  *(v206 + 16) = xmmword_1CA981310;
  v207 = swift_allocObject();
  *(v207 + 16) = v280;
  strcpy((v207 + 32), "WFParameterKey");
  *(v207 + 47) = -18;
  strcpy((v207 + 48), "WFGIFAutoSize");
  *(v207 + 62) = -4864;
  v266 = 0xD000000000000010;
  v267 = 0x80000001CA993570;
  v208 = MEMORY[0x1E69E6158];
  *(v207 + 72) = MEMORY[0x1E69E6158];
  *(v207 + 80) = 0xD000000000000010;
  *(v207 + 88) = 0x80000001CA993570;
  *(v207 + 96) = 0;
  *(v207 + 120) = MEMORY[0x1E69E6370];
  *(v207 + 128) = 0x72756F7365524657;
  *(v207 + 168) = v208;
  v264 = 0xD00000000000001BLL;
  v265 = 0x80000001CA993590;
  *(v207 + 136) = 0xEF7373616C436563;
  *(v207 + 144) = 0xD00000000000001BLL;
  *(v207 + 152) = 0x80000001CA993590;
  v262 = @"RequiredResources";
  *(v206 + 32) = sub_1CA94C1E8();
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v263 = v209;
  *(v184 + 200) = v206;
  v210 = v276;
  *(v184 + 224) = v209;
  *(v184 + 232) = v210;
  *(v184 + 264) = v208;
  *(v184 + 240) = 0x7468676952;
  *(v184 + 248) = 0xE500000000000000;
  sub_1CA94C1E8();
  *(v286 + 64) = sub_1CA2F864C();
  v211 = swift_allocObject();
  *(v211 + 16) = v270;
  *(v211 + 32) = v274;
  *(v211 + 40) = 0xD000000000000016;
  *(v211 + 48) = v277;
  v212 = v273;
  *(v211 + 64) = v208;
  *(v211 + 72) = v212;
  *(v211 + 80) = v271;
  *(v211 + 88) = 0x80000001CA9C35F0;
  v213 = v278;
  *(v211 + 104) = v208;
  *(v211 + 112) = v213;
  v214 = sub_1CA94C438();
  v277 = v215;
  *&v278 = v214;
  v216 = sub_1CA94C438();
  v274 = v217;
  v283 = &v262;
  MEMORY[0x1EEE9AC00](v216);
  v218 = v291;
  sub_1CA948D98();
  v219 = v290;
  v220 = [v290 bundleURL];
  v273 = &v262;
  MEMORY[0x1EEE9AC00](v220);
  v221 = &v262 - v288;
  sub_1CA948B68();

  v222 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v211 + 120) = sub_1CA2F9F14(v278, v277, v216, v274, 0, 0, &v262 - v218, v221);
  v223 = v287;
  v224 = v275;
  *(v211 + 144) = v287;
  *(v211 + 152) = v224;
  v225 = sub_1CA94C438();
  v277 = v226;
  *&v278 = v225;
  v227 = sub_1CA94C438();
  v275 = v228;
  v283 = &v262;
  MEMORY[0x1EEE9AC00](v227);
  sub_1CA948D98();
  v229 = [v219 bundleURL];
  MEMORY[0x1EEE9AC00](v229);
  v230 = &v262 - v288;
  sub_1CA948B68();

  v231 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v211 + 160) = sub_1CA2F9F14(v278, v277, v227, v275, 0, 0, &v262 - v218, v230);
  v232 = v262;
  *(v211 + 184) = v223;
  *(v211 + 192) = v232;
  v233 = swift_allocObject();
  *(v233 + 16) = v268;
  v234 = swift_allocObject();
  *(v234 + 16) = v280;
  strcpy((v234 + 32), "WFParameterKey");
  *(v234 + 47) = -18;
  strcpy((v234 + 48), "WFGIFAutoSize");
  *(v234 + 62) = -4864;
  v235 = MEMORY[0x1E69E6158];
  v237 = v266;
  v236 = v267;
  *(v234 + 72) = MEMORY[0x1E69E6158];
  *(v234 + 80) = v237;
  *(v234 + 88) = v236;
  *(v234 + 96) = 0;
  *(v234 + 120) = MEMORY[0x1E69E6370];
  *(v234 + 128) = 0x72756F7365524657;
  *(v234 + 168) = v235;
  *(v234 + 136) = 0xEF7373616C436563;
  v238 = v265;
  *(v234 + 144) = v264;
  *(v234 + 152) = v238;
  v239 = v235;
  *(v233 + 32) = sub_1CA94C1E8();
  *(v211 + 200) = v233;
  v240 = v276;
  *(v211 + 224) = v263;
  *(v211 + 232) = v240;
  *(v211 + 264) = v239;
  *(v211 + 240) = 0x7468676952;
  *(v211 + 248) = 0xE500000000000000;
  sub_1CA94C1E8();
  v241 = sub_1CA2F864C();
  v242 = v286;
  *(v286 + 72) = v241;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v244 = v284;
  v284[50] = v242;
  v244[53] = v243;
  v244[54] = @"ParameterSummary";
  v245 = @"ParameterSummary";
  v246 = sub_1CA94C438();
  v248 = v247;
  v249 = sub_1CA94C438();
  v251 = v250;
  MEMORY[0x1EEE9AC00](v249);
  v252 = &v262 - v291;
  sub_1CA948D98();
  v253 = [v290 bundleURL];
  MEMORY[0x1EEE9AC00](v253);
  v254 = &v262 - v288;
  sub_1CA948B68();

  v255 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v256 = sub_1CA2F9F14(v246, v248, v249, v251, 0, 0, v252, v254);
  v257 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v258 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v259 = v284;
  v284[55] = v257;
  v259[58] = v258;
  v259[59] = @"ResidentCompatible";
  v259[63] = MEMORY[0x1E69E6370];
  *(v259 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v260 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t WFParameter.arraySizeRange(for:)(uint64_t a1)
{
  v2 = [v1 arraySizeRangeForWidgetFamily_];
  v4 = v3;
  result = sub_1CA948778();
  if (v2 == result || v4 < 1)
  {
    return 0;
  }

  if (__OFSUB__(&v2[v4], 1))
  {
    __break(1u);
  }

  else if (&v2[v4 - 1] >= v2)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t WFParameterValuePickable<>.loadStates(withSearchTerm:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CA4DB718, 0, 0);
}

uint64_t sub_1CA4DB718()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 56);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445C18, &qword_1CA989160);
  *v5 = v0;
  v5[1] = sub_1CA4DB828;

  return MEMORY[0x1EEE6DE38](v0 + 16);
}

uint64_t sub_1CA4DB828()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1CA4DB964;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1CA4DB944;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1CA4DB964()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

void sub_1CA4DB9C8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445C20, &qword_1CA989168);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = aBlock - v10;
  if (a4)
  {
    a4 = sub_1CA94C368();
  }

  (*(v8 + 16))(v11, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  aBlock[4] = sub_1CA4DBCB4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA4DBD58;
  aBlock[3] = &block_descriptor_15;
  v14 = _Block_copy(aBlock);

  [a2 wf:a4 loadStatesWithSearchTerm:v14 completionHandler:?];
  _Block_release(v14);
}

uint64_t sub_1CA4DBBA8(void *a1, int a2, int a3, id a4)
{
  if (a4)
  {
    v4 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445C20, &qword_1CA989168);
    return sub_1CA94C7D8();
  }

  else
  {
    if (!a1)
    {
      v7 = objc_allocWithZone(MEMORY[0x1E696E918]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444F10, &qword_1CA98D960);
      v8 = sub_1CA94C648();
      [v7 initWithItems_];
    }

    sub_1CA94C218();
    v9 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445C20, &qword_1CA989168);
    return sub_1CA94C7E8();
  }
}

uint64_t sub_1CA4DBCB4(void *a1, int a2, int a3, void *a4)
{
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445C20, &qword_1CA989168) - 8) + 80);

  return sub_1CA4DBBA8(a1, a2, a3, a4);
}

uint64_t sub_1CA4DBD58(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a3)
  {
    v8 = sub_1CA94C3A8();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = a2;
  v12 = a4;
  v7(a2, v8, v10, a4);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1CA4DBE24()
{
  result = [v0 isLocked];
  if (result)
  {
    return ([v0 isHidden] ^ 1);
  }

  return result;
}

char *sub_1CA4DBE60(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (sub_1CA25B410())
  {
    sub_1CA2E8B78(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  *&v2[OBJC_IVAR___WFAppProtectionAccessResource_observers] = v6;
  *&v2[OBJC_IVAR___WFAppProtectionAccessResource_subjectSubscription] = 0;
  v7 = &v2[OBJC_IVAR___WFAppProtectionAccessResource_associatedAppBundleIdentifier];
  *v7 = a1;
  *(v7 + 1) = a2;
  v8 = objc_opt_self();
  sub_1CA94C218();
  v9 = sub_1CA94C368();

  v10 = [v8 applicationWithBundleIdentifier_];

  *&v2[OBJC_IVAR___WFAppProtectionAccessResource_apApp] = v10;
  v19.receiver = v2;
  v19.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v19, sel_initWithDefinition_enableDistributedNotifications_, 0, 0);
  v12 = qword_1EC442A78;
  v13 = v11;
  if (v12 != -1)
  {
    OUTLINED_FUNCTION_0_43();
  }

  v18 = *(qword_1EC461678 + 16);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445D48, &qword_1CA9891C0);
  sub_1CA25C3BC(&qword_1EC441D70, &qword_1EC445D48, &qword_1CA9891C0);
  sub_1CA94A108();

  swift_beginAccess();
  sub_1CA949F88();
  swift_endAccess();

  v14 = [objc_opt_self() sharedContext];
  [v14 addApplicationStateObserver:v13 forEvent:3];

  v15 = [objc_msgSend(objc_opt_self() subjectMonitorRegistry)];
  swift_unknownObjectRelease();

  v16 = *&v13[OBJC_IVAR___WFAppProtectionAccessResource_subjectSubscription];
  *&v13[OBJC_IVAR___WFAppProtectionAccessResource_subjectSubscription] = v15;

  swift_unknownObjectRelease();
  return v13;
}

void sub_1CA4DC140(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1CA4DC19C(v1);
  }
}

void sub_1CA4DC19C(char a1)
{
  v2 = v1;
  if ([*&v2[OBJC_IVAR___WFAppProtectionAccessResource_apApp] isLocked])
  {
    if (a1 == 2)
    {
      if (qword_1EC442A78 != -1)
      {
        swift_once();
      }

      v4 = *(qword_1EC461678 + 16);

      sub_1CA94A018();

      a1 = v10[0];
    }
  }

  else
  {
    a1 = 1;
  }

  v5 = [v2 isAvailable];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = a1 & 1;
  *(v6 + 17) = v7;
  *(v6 + 24) = v2;
  v10[4] = sub_1CA4DDC10;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1CA4DCA30;
  v10[3] = &block_descriptor_16;
  v8 = _Block_copy(v10);
  v9 = v2;

  [v9 updateAvailability:v7 withError:0 completionHandler:v8];
  _Block_release(v8);
}

void sub_1CA4DC358(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1E69E7CC0];
  v3 = sub_1CA25B410();
  v4 = 0;
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1CCAA22D0](v4, a1);
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      return;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x1CCAA1490]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CA94C698();
      }

      sub_1CA94C6E8();
      v2 = v19;
      ++v4;
    }

    else
    {

      ++v4;
    }
  }

  v7 = sub_1CA25B410();
  v8 = 0;
  v9 = (v18 + OBJC_IVAR___WFAppProtectionAccessResource_associatedAppBundleIdentifier);
  while (v7 != v8)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1CCAA22D0](v8, v2);
    }

    else
    {
      if (v8 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v10 = *(v2 + 8 * v8 + 32);
    }

    v11 = v10;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_35;
    }

    v12 = [v10 bundleIdentifier];
    v13 = sub_1CA94C3A8();
    v15 = v14;

    if (v13 == *v9 && v15 == v9[1])
    {

LABEL_30:

      sub_1CA4DC19C(2);
      return;
    }

    v17 = sub_1CA94D7F8();

    ++v8;
    if (v17)
    {
      goto LABEL_30;
    }
  }
}