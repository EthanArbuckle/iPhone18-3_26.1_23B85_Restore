uint64_t sub_23323D6B8()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23323D7F4, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_23323D7F4()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_23323D858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17[0] = a6;
  v17[1] = a7;
  sub_233237A9C();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3738, &qword_23329F880);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v17 - v12;
  (*(v9 + 16))(v17 - v12, a1, v8, v11);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v13, v8);
  TTSVBService.importTrainingData(fromDirectory:creatingVoiceName:localeID:completion:)();
}

uint64_t sub_23323D9DC(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B8, &unk_233299B20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - v8;
  sub_233121D34(a1, v21 - v8, &qword_27DDE19B8, &unk_233299B20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_233257410(v9, v5, type metadata accessor for TTSVBError);
    sub_233254FD8(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    v10 = swift_allocError();
    sub_233257478(v5, v11, type metadata accessor for TTSVBError);
    v21[0] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3738, &qword_23329F880);
    sub_23328DC8C();
    return sub_2332574E0(v5, type metadata accessor for TTSVBError);
  }

  else
  {
    v13 = sub_23328CE8C();
    v14 = *(v13 - 8);
    v15 = *(v14 + 64);
    v16 = MEMORY[0x28223BE20](v13);
    v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
    (*(v14 + 32))(v21 - v17, v9, v13, v16);
    sub_23328D30C();
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD000000000000036, 0x80000002332AE560);
    v18 = sub_23328CE3C();
    MEMORY[0x23839B7E0](v18);

    sub_23328D27C();

    v20 = MEMORY[0x28223BE20](v19);
    (*(v14 + 16))(v21 - v17, v21 - v17, v13, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3738, &qword_23329F880);
    sub_23328DC9C();
    return (*(v14 + 8))(v21 - v17, v13);
  }
}

uint64_t sub_23323DD90()
{
  sub_23328D30C();
  sub_23328D27C();

  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_23323C82C;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v2, 0, 0, 0xD00000000000001FLL, 0x80000002332AC7E0, sub_233254F78, v3, v4);
}

uint64_t sub_23323DE9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_233237A9C();
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  TTSVBService.repairDatastoreFromFilesystem(completion:)();
}

uint64_t sub_23323DFF4(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - v8;
  sub_233121D34(a1, v13 - v8, &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_233257410(v9, v5, type metadata accessor for TTSVBError);
    sub_233254FD8(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    v10 = swift_allocError();
    sub_233257478(v5, v11, type metadata accessor for TTSVBError);
    v13[1] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    sub_23328DC8C();
    return sub_2332574E0(v5, type metadata accessor for TTSVBError);
  }

  else
  {
    sub_23328D30C();
    sub_23328D27C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    return sub_23328DC9C();
  }
}

uint64_t sub_23323E22C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 65) = a4;
  *(v5 + 64) = a3;
  *(v5 + 16) = a1;
  return MEMORY[0x2822009F8](sub_23323E258, 0, 0);
}

uint64_t sub_23323E258()
{
  v1 = *(v0 + 65);
  v2 = *(v0 + 64);
  v10 = *(v0 + 24);
  sub_23328D30C();
  sub_23328E24C();

  v3 = sub_23328CE3C();
  MEMORY[0x23839B7E0](v3);

  sub_23328D27C();

  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  v4[1] = vextq_s8(v10, v10, 8uLL);
  v4[2].i8[0] = v2;
  v4[2].i8[1] = v1;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  v7 = sub_23328CC9C();
  *v6 = v0;
  v6[1] = sub_23323E404;
  v8 = *(v0 + 16);

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000045, 0x80000002332AC830, sub_233254F80, v4, v7);
}

uint64_t sub_23323E404()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_233257C94, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_23323E540(uint64_t a1)
{
  sub_233237A9C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3730, &qword_23329F858);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v11 - v6;
  (*(v3 + 16))(&v11 - v6, a1, v2, v5);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v7, v2);
  TTSVBService.exportTrainingData(voiceID:shouldCompressResult:includeEntireScript:completion:)();
}

uint64_t sub_23323E6B8(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A8, &qword_233299A30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  sub_233121D34(a1, &v21 - v8, &qword_27DDE19A8, &qword_233299A30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_233257410(v9, v5, type metadata accessor for TTSVBError);
    sub_233254FD8(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    v10 = swift_allocError();
    sub_233257478(v5, v11, type metadata accessor for TTSVBError);
    v21 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3730, &qword_23329F858);
    sub_23328DC8C();
    return sub_2332574E0(v5, type metadata accessor for TTSVBError);
  }

  else
  {
    v13 = sub_23328CC9C();
    v14 = *(v13 - 8);
    v15 = *(v14 + 64);
    v16 = MEMORY[0x28223BE20](v13);
    v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
    (*(v14 + 32))(&v21 - v17, v9, v13, v16);
    sub_23328D30C();
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_23328E24C();

    v21 = 0xD000000000000018;
    v22 = 0x80000002332AE520;
    v18 = sub_23328CC6C();
    MEMORY[0x23839B7E0](v18);

    sub_23328D27C();

    v20 = MEMORY[0x28223BE20](v19);
    (*(v14 + 16))(&v21 - v17, &v21 - v17, v13, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3730, &qword_23329F858);
    sub_23328DC9C();
    return (*(v14 + 8))(&v21 - v17, v13);
  }
}

uint64_t sub_23323EA4C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v20 = *MEMORY[0x277D85DE8];
  *(v5 + 472) = a2;
  *(v5 + 480) = v4;
  *(v5 + 765) = a4;
  *(v5 + 764) = a3;
  *(v5 + 464) = a1;
  v6 = *(type metadata accessor for TTSVBInstalledVoiceModel() - 8);
  *(v5 + 488) = v6;
  v7 = *(v6 + 64) + 15;
  *(v5 + 496) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3670, &qword_23329F320);
  *(v5 + 504) = v8;
  v9 = *(v8 - 8);
  *(v5 + 512) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 520) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3678, &qword_23329F328) - 8) + 64) + 15;
  *(v5 + 528) = swift_task_alloc();
  *(v5 + 536) = swift_task_alloc();
  v12 = type metadata accessor for TTSVBPath();
  *(v5 + 544) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v5 + 552) = swift_task_alloc();
  v14 = type metadata accessor for TTSVBVoice();
  *(v5 + 560) = v14;
  v15 = *(v14 - 8);
  *(v5 + 568) = v15;
  v16 = *(v15 + 64) + 15;
  *(v5 + 576) = swift_task_alloc();
  *(v5 + 584) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3680, &qword_23329F330) - 8) + 64) + 15;
  *(v5 + 592) = swift_task_alloc();
  *(v5 + 600) = swift_task_alloc();
  v18 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23323ECC8, 0, 0);
}

uint64_t sub_23323ECC8()
{
  v125 = *MEMORY[0x277D85DE8];
  v1 = v0[59];
  v2 = [objc_opt_self() defaultManager];
  v0[76] = v2;
  sub_23328CC6C();
  v3 = sub_23328D95C();

  LODWORD(v1) = [v2 fileExistsAtPath_];

  v123 = v0;
  if (!v1)
  {
    v18 = v0[59];
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD00000000000003ELL, 0x80000002332AC880);
    v19 = sub_23328CC6C();
    MEMORY[0x23839B7E0](v19);

    sub_23328D1BC();
    sub_233254FD8(&qword_27DDE3688, MEMORY[0x277CE66C0]);
    swift_allocError();
LABEL_12:
    sub_23328D1CC();
    swift_willThrow();

LABEL_13:
    v51 = v0[75];
    v52 = v0[74];
    v53 = v0[73];
    v54 = v0[72];
    v55 = v0[69];
    v56 = v0[67];
    v57 = v0[66];
    v58 = v0[65];
    v59 = v123[62];

    v49 = v123[1];
    v60 = *MEMORY[0x277D85DE8];
    goto LABEL_14;
  }

  v4 = v0[58];
  v5 = *(v4 + 16);
  v0[77] = v5;
  if (!v5)
  {
    sub_23328D1BC();
    sub_233254FD8(&qword_27DDE3688, MEMORY[0x277CE66C0]);
    swift_allocError();
    goto LABEL_12;
  }

  v6 = v0[73];
  v7 = v0[71];
  sub_23328D30C();
  sub_23328E24C();

  v0[41] = v5;
  v8 = v6;
  v9 = sub_23328E51C();
  MEMORY[0x23839B7E0](v9);

  MEMORY[0x23839B7E0](0x73286563696F7620, 0xEC0000005B203A29);
  v124 = MEMORY[0x277D84F90];
  sub_23312676C(0, v5, 0);
  v10 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v11 = *(v7 + 72);
  do
  {
    v12 = v123[73];
    sub_233257478(v10, v12, type metadata accessor for TTSVBVoice);
    v13 = *v12;
    v14 = *(v8 + 8);

    sub_2332574E0(v12, type metadata accessor for TTSVBVoice);
    v16 = *(v124 + 16);
    v15 = *(v124 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_23312676C((v15 > 1), v16 + 1, 1);
    }

    *(v124 + 16) = v16 + 1;
    v17 = v124 + 16 * v16;
    *(v17 + 32) = v13;
    *(v17 + 40) = v14;
    v10 += v11;
    --v5;
  }

  while (v5);
  v20 = v123[58];
  v21 = v123[59];
  v123[54] = v124;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
  sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0);
  v22 = sub_23328D8FC();
  v24 = v23;

  MEMORY[0x23839B7E0](v22, v24);

  MEMORY[0x23839B7E0](0x206F74205DLL, 0xE500000000000000);
  v25 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v25);

  sub_23328D27C();

  v26 = sub_23328C8BC();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v123[78] = sub_23328C8AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3690, &qword_23329F338);
  v29 = *(sub_23328C87C() - 8);
  v30 = *(v29 + 72);
  v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_233297B30;
  sub_23328C86C();
  v33 = *(v29 + 64) + 15;
  swift_task_alloc();
  v123[53] = v32;
  sub_233254F90(&qword_27DDE3698, MEMORY[0x28220B498]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36A0, &qword_23329F340);
  sub_23315246C(&qword_27DDE36A8, &qword_27DDE36A0, &qword_23329F340);
  sub_23328E14C();
  sub_23328C88C();

  v123[3] = 0;
  v123[4] = 0;
  v123[2] = v20;
  v34 = v123[75];
  v35 = v123[74];

  sub_2332422FC(v35);
  sub_233121D9C(v35, v34, &qword_27DDE3680, &qword_23329F330);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36B0, &unk_23329F348);
  v37 = (*(*(v36 - 8) + 48))(v34, 1, v36);
  if (v37 == 1)
  {
    v38 = v123[78];
    v39 = v123[76];
    v40 = v123[75];
    v41 = v123[74];
    v42 = v123[73];
    v43 = v123[72];
    v44 = v123[69];
    v45 = v123[67];
    v46 = v123[66];
    v47 = v123[65];
    v120 = v123[62];
    v48 = v123[2];

    v49 = v123[1];
    v50 = *MEMORY[0x277D85DE8];
LABEL_14:

    return v49();
  }

  v62 = v123[75];
  v63 = *v62;
  sub_233257410(v62 + *(v36 + 48), v123[72], type metadata accessor for TTSVBVoice);
  sub_23328D30C();
  v123[13] = 0;
  v123[14] = 0xE000000000000000;
  sub_23328E24C();
  v64 = v123[14];

  v123[11] = 0xD000000000000010;
  v123[12] = 0x80000002332AC8E0;
  v65 = v63 + 1;
  if (__OFADD__(v63, 1))
  {
    __break(1u);
  }

  v66 = v123[77];
  v67 = v123[76];
  v68 = v123[72];
  v69 = v123[59];
  v123[50] = v65;
  v70 = sub_23328E51C();
  MEMORY[0x23839B7E0](v70);

  MEMORY[0x23839B7E0](543584032, 0xE400000000000000);
  v123[49] = v66;
  v71 = sub_23328E51C();
  MEMORY[0x23839B7E0](v71);

  MEMORY[0x23839B7E0](8250, 0xE200000000000000);
  v72 = *v68;
  v73 = v68[1];
  v0 = v123;
  MEMORY[0x23839B7E0](*v68, v73);
  v74 = v123[11];
  v75 = v123[12];
  sub_23328D27C();

  v76 = sub_23328CC9C();
  v123[79] = v76;
  v121 = v76;
  v77 = *(v76 - 8);
  v78 = v77;
  v123[80] = v77;
  v123[81] = *(v77 + 64);
  v79 = swift_task_alloc();
  v123[82] = v79;
  v123[21] = 0;
  v123[22] = 0xE000000000000000;
  sub_23328E24C();
  v80 = v123[22];

  v123[19] = v72;
  v123[20] = v73;
  MEMORY[0x23839B7E0](0xD000000000000015, 0x80000002332AC900);
  v81 = v123[19];
  v82 = v123[20];
  sub_23328CBEC();

  sub_23328CC6C();
  v83 = sub_23328D95C();

  LODWORD(v80) = [v67 fileExistsAtPath_];

  if (v80)
  {
    v84 = v123[76];
    v85 = sub_23328CBCC();
    v123[57] = 0;
    LODWORD(v84) = [v84 removeItemAtURL:v85 error:v123 + 57];

    v86 = v123[57];
    if (!v84)
    {
      v99 = v123[78];
      goto LABEL_24;
    }

    v87 = v86;
  }

  v88 = v123[76];
  v89 = sub_23328CBCC();
  v123[45] = 0;
  LODWORD(v88) = [v88 createDirectoryAtURL:v89 withIntermediateDirectories:1 attributes:0 error:v123 + 45];

  v86 = v123[45];
  v90 = v123[78];
  if (!v88)
  {
LABEL_24:
    v100 = v123[76];
    v101 = v123[72];
    v102 = v123[2];
    v103 = v86;

    sub_23328CA7C();

    swift_willThrow();

    (*(v78 + 8))(v79, v121);

    sub_2332574E0(v101, type metadata accessor for TTSVBVoice);
    goto LABEL_13;
  }

  v91 = v123[72];
  v92 = v123[70];
  v93 = v86;
  sub_23328D30C();
  v123[27] = 0;
  v123[28] = 0xE000000000000000;
  sub_23328E24C();
  v94 = v123[28];

  v123[25] = 0xD00000000000002BLL;
  v123[26] = 0x80000002332AC920;
  v95 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v95);

  v96 = v123[25];
  v97 = v123[26];
  sub_23328D27C();

  sub_233254FD8(&qword_27DDE1998, type metadata accessor for TTSVBVoice);
  v123[83] = sub_23328C89C();
  v123[84] = v98;
  v123[85] = swift_task_alloc();
  sub_23328CBEC();
  sub_23328CCEC();
  v122 = v123[72];
  v104 = v123[70];
  v105 = v123[60];
  sub_23328D30C();
  v123[31] = 0;
  v123[32] = 0xE000000000000000;
  sub_23328E24C();
  v106 = v123[32];

  v123[29] = 0xD00000000000001ALL;
  v123[30] = 0x80000002332AC950;
  v107 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v107);

  v108 = v123[29];
  v109 = v123[30];
  sub_23328D27C();

  sub_23328D30C();
  sub_23328D27C();

  v110 = swift_task_alloc();
  v123[86] = v110;
  v111 = *(v104 + 20);
  *(v123 + 190) = v111;
  v112 = (*v105 + 304);
  v119 = (*v112 + **v112);
  v113 = (*v112)[1];
  v114 = swift_task_alloc();
  v123[87] = v114;
  *v114 = v123;
  v114[1] = sub_23323FCEC;
  v115 = v123[60];
  v116 = *(v123 + 765);
  v117 = *(v123 + 764);
  v118 = *MEMORY[0x277D85DE8];

  return v119(v110, v122 + v111, v117, v116);
}

uint64_t sub_23323FCEC()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 696);
  v7 = *v1;
  *(*v1 + 704) = v0;

  if (v0)
  {
    v3 = sub_233241BFC;
  }

  else
  {
    v3 = sub_23323FE2C;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23323FE2C()
{
  v60 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 688);
  v2 = *(v0 + 656);
  v3 = *(v0 + 608);
  v4 = *(v0 + 648) + 15;
  v5 = swift_task_alloc();
  sub_23328CBEC();
  v6 = sub_23328CBCC();
  v7 = sub_23328CBCC();
  *(v0 + 448) = 0;
  LODWORD(v3) = [v3 moveItemAtURL:v6 toURL:v7 error:v0 + 448];

  v8 = *(v0 + 448);
  if (v3)
  {
    v9 = *(v0 + 688);
    v10 = *(v0 + 632);
    v11 = *(*(v0 + 640) + 8);
    v12 = v8;
    v11(v5, v10);
    v11(v9, v10);
  }

  else
  {
    v13 = *(v0 + 688);
    v14 = *(v0 + 640);
    v15 = *(v0 + 632);
    v16 = v8;
    v17 = sub_23328CA7C();

    swift_willThrow();
    v18 = *(v14 + 8);
    v18(v5, v15);
    v18(v13, v15);

    v19 = *(v0 + 688);

    sub_23328D30C();
    *(v0 + 280) = 0;
    *(v0 + 288) = 0xE000000000000000;
    sub_23328E24C();
    v20 = *(v0 + 288);
    *(v0 + 264) = *(v0 + 280);
    *(v0 + 272) = v20;
    MEMORY[0x23839B7E0](0xD000000000000023, 0x80000002332AC990);
    *(v0 + 352) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
    sub_23328E30C();
    v21 = *(v0 + 264);
    v22 = *(v0 + 272);
    sub_23328D25C();
  }

  v23 = *(v0 + 760);
  v24 = *(v0 + 608);
  v25 = *(v0 + 576);
  v26 = *(v0 + 552);
  v27 = *(v0 + 544);
  v28 = *(v0 + 648) + 15;
  sub_23328D30C();
  sub_23328D27C();

  v29 = swift_task_alloc();
  v30 = sub_23328CE8C();
  *(v0 + 712) = v30;
  v31 = *(v30 - 8);
  *(v0 + 720) = v31;
  (*(v31 + 16))(v26, v25 + v23, v30);
  swift_storeEnumTagMultiPayload();
  TTSVBPath.url.getter(v29);
  sub_2332574E0(v26, type metadata accessor for TTSVBPath);
  sub_23328CC6C();
  v32 = sub_23328D95C();

  v33 = [v24 fileExistsAtPath_];

  if (!v33)
  {
    v46 = *(v0 + 640);
    v47 = *(v0 + 632);
    sub_23328D30C();
    sub_23328D27C();

    v44 = *(v46 + 8);
    v44(v29, v47);
    goto LABEL_8;
  }

  v34 = *(v0 + 656);
  v35 = *(v0 + 608);
  v36 = *(v0 + 648) + 15;
  v37 = swift_task_alloc();
  sub_23328CBEC();
  v38 = sub_23328CBCC();
  v39 = sub_23328CBCC();
  *(v0 + 416) = 0;
  v40 = [v35 copyItemAtURL:v38 toURL:v39 error:v0 + 416];

  v41 = *(v0 + 416);
  v42 = *(v0 + 640);
  v43 = *(v0 + 632);
  if (v40)
  {
    v44 = *(v42 + 8);
    v45 = v41;
    v44(v37, v43);
    v44(v29, v43);

LABEL_8:

    goto LABEL_10;
  }

  v48 = v41;
  v49 = sub_23328CA7C();

  swift_willThrow();
  v44 = *(v42 + 8);
  v44(v37, v43);
  v44(v29, v43);

  sub_23328D30C();
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  sub_23328E24C();
  v50 = *(v0 + 64);
  *(v0 + 72) = *(v0 + 56);
  *(v0 + 80) = v50;
  MEMORY[0x23839B7E0](0xD000000000000025, 0x80000002332ACAE0);
  *(v0 + 440) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
  sub_23328E30C();
  v51 = *(v0 + 72);
  v52 = *(v0 + 80);
  sub_23328D25C();

LABEL_10:
  *(v0 + 728) = v44;
  v53 = **(v0 + 480);
  v59 = (*(v53 + 216) + **(v53 + 216));
  v54 = *(*(v53 + 216) + 4);
  v55 = swift_task_alloc();
  *(v0 + 736) = v55;
  *v55 = v0;
  v55[1] = sub_2332404C4;
  v56 = *(v0 + 480);
  v57 = *MEMORY[0x277D85DE8];

  return v59();
}

uint64_t sub_2332404C4(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 736);
  v11 = *v2;
  *(*v2 + 744) = v1;

  if (v1)
  {
    v6 = *(v4 + 16);

    v7 = sub_23324215C;
  }

  else
  {
    *(v4 + 752) = a1;
    v7 = sub_23324061C;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23324061C()
{
  v215 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  v3 = *(v0 + 576);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  sub_2332384C4(sub_233255020, v4, v1);
  v6 = v5;
  v187 = v2;

  if (*(v6 + 16))
  {
    v7 = *(v0 + 656);
    v8 = *(v0 + 608);
    v9 = *(v0 + 648) + 15;
    v10 = swift_task_alloc();
    sub_23328CBEC();
    v11 = sub_23328CBCC();
    *(v0 + 336) = 0;
    LODWORD(v8) = [v8 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:v0 + 336];

    v12 = *(v0 + 336);
    v194 = v10;
    if (!v8)
    {
      v52 = *(v0 + 728);
      v53 = *(v0 + 664);
      v54 = *(v0 + 656);
      v201 = *(v0 + 640);
      v206 = *(v0 + 680);
      v55 = *(v0 + 632);
      v190 = *(v0 + 624);
      v192 = *(v0 + 672);
      v197 = *(v0 + 608);
      v56 = *(v0 + 576);
      v57 = *(v0 + 16);
      v58 = v12;

      sub_23328CA7C();

      swift_willThrow();
      sub_233121870(v53, v192);

      v52(v194, v55);
      v52(v206, v55);
      v52(v54, v55);

LABEL_34:

      goto LABEL_35;
    }

    v188 = *(v0 + 720);
    v191 = *(v0 + 640) + 8;
    v13 = v12;

    v14 = 0;
    for (i = v6; ; v6 = i)
    {
      v15 = *(v6 + 16);
      if (v14 == v15)
      {
        v16 = 1;
      }

      else
      {
        if (v14 >= v15)
        {
          goto LABEL_45;
        }

        v17 = *(v0 + 528);
        v18 = *(v0 + 520);
        v19 = v6 + ((*(*(v0 + 488) + 80) + 32) & ~*(*(v0 + 488) + 80)) + *(*(v0 + 488) + 72) * v14;
        v20 = *(*(v0 + 504) + 48);
        *v18 = v14;
        sub_233257478(v19, v18 + v20, type metadata accessor for TTSVBInstalledVoiceModel);
        sub_233121D9C(v18, v17, &qword_27DDE3670, &qword_23329F320);
        v16 = 0;
        ++v14;
      }

      v21 = *(v0 + 536);
      v22 = *(v0 + 528);
      v24 = *(v0 + 504);
      v23 = *(v0 + 512);
      (*(v23 + 56))(v22, v16, 1, v24);
      sub_233121D9C(v22, v21, &qword_27DDE3678, &qword_23329F328);
      if ((*(v23 + 48))(v21, 1, v24) == 1)
      {
        break;
      }

      v25 = *(v0 + 536);
      v26 = *(v0 + 648) + 15;
      v27 = *v25;
      sub_233257410(v25 + *(*(v0 + 504) + 48), *(v0 + 496), type metadata accessor for TTSVBInstalledVoiceModel);
      v28 = swift_task_alloc();
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      sub_23328D30C();
      *(v0 + 184) = 0;
      *(v0 + 192) = 0xE000000000000000;
      sub_23328E24C();
      v29 = *(v0 + 192);

      *(v0 + 296) = 0xD000000000000010;
      *(v0 + 304) = 0x80000002332ACA70;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
      }

      v205 = *(v0 + 608);
      v211 = v14;
      v30 = *(v0 + 496);
      v196 = *(v0 + 712);
      v200 = *(v0 + 648) + 15;
      *(v0 + 368) = v27 + 1;
      v31 = sub_23328E51C();
      MEMORY[0x23839B7E0](v31);

      MEMORY[0x23839B7E0](543584032, 0xE400000000000000);
      *(v0 + 376) = *(v6 + 16);
      v32 = sub_23328E51C();
      MEMORY[0x23839B7E0](v32);

      MEMORY[0x23839B7E0](8250, 0xE200000000000000);
      swift_getKeyPath();
      v33 = *(v188 + 64) + 15;
      v34 = swift_task_alloc();
      TTSVBInstalledVoiceModel.subscript.getter();

      v35 = sub_23328CE3C();
      v37 = v36;
      (*(v188 + 8))(v34, v196);
      MEMORY[0x23839B7E0](v35, v37);

      v38 = *(v0 + 296);
      v39 = *(v0 + 304);
      sub_23328D27C();

      v40 = swift_task_alloc();
      sub_23328CB9C();
      sub_23328CBEC();

      v41 = sub_23328CBCC();
      v42 = sub_23328CBCC();
      *(v0 + 384) = 0;
      LODWORD(v34) = [v205 copyItemAtURL:v41 toURL:v42 error:v0 + 384];

      v43 = *(v0 + 384);
      v44 = *(v0 + 728);
      v45 = *(v0 + 632);
      v46 = *(v0 + 496);
      if (v34)
      {
        v44(v40, *(v0 + 632));
        v44(v28, v45);
        sub_2332574E0(v46, type metadata accessor for TTSVBInstalledVoiceModel);
      }

      else
      {
        v47 = v43;
        v48 = sub_23328CA7C();

        swift_willThrow();
        v44(v40, v45);

        sub_23328D30C();
        *(v0 + 120) = 0;
        *(v0 + 128) = 0xE000000000000000;
        sub_23328E24C();
        v49 = *(v0 + 128);
        *(v0 + 136) = *(v0 + 120);
        *(v0 + 144) = v49;
        MEMORY[0x23839B7E0](0xD00000000000001ELL, 0x80000002332ACA90);
        *(v0 + 408) = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
        sub_23328E30C();
        v50 = *(v0 + 136);
        v51 = *(v0 + 144);
        sub_23328D25C();

        v44(v28, v45);
        sub_2332574E0(v46, type metadata accessor for TTSVBInstalledVoiceModel);
        v187 = 0;
      }

      v14 = v211;

      v10 = v194;
    }

    v59 = *(v0 + 728);
    v60 = *(v0 + 632);
    swift_bridgeObjectRelease_n();
    v59(v10, v60);
  }

  else
  {

    sub_23328D30C();
    sub_23328D27C();
  }

  if (*(v0 + 764) == 1)
  {
    v61 = *(v0 + 656);
    v62 = *(v0 + 648) + 15;
    v63 = swift_task_alloc();
    sub_23328CBFC();
    sub_23328D30C();
    sub_23328D27C();

    sub_23328D1AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_23329B0B0;
    *(v64 + 32) = 25389;
    *(v64 + 40) = 0xE200000000000000;
    *(v64 + 48) = 31277;
    *(v64 + 56) = 0xE200000000000000;
    *(v64 + 64) = 26157;
    *(v64 + 72) = 0xE200000000000000;
    *(v64 + 80) = sub_23328CC6C();
    *(v64 + 88) = v65;
    *(v64 + 96) = 17197;
    *(v64 + 104) = 0xE200000000000000;
    *(v64 + 112) = sub_23328CC6C();
    *(v64 + 120) = v66;
    *(v64 + 128) = 46;
    *(v64 + 136) = 0xE100000000000000;
    sub_23328D15C();
    if (v187)
    {
      v67 = *(v0 + 728);
      v68 = *(v0 + 672);
      v69 = *(v0 + 664);
      v207 = *(v0 + 656);
      v70 = *(v0 + 640);
      v71 = *(v0 + 632);
      v72 = *(v0 + 624);
      v73 = v63;
      v74 = *(v0 + 608);
      v198 = *(v0 + 680);
      v202 = *(v0 + 576);

      sub_233121870(v69, v68);

      v67(v73, v71);
      v67(v198, v71);
      v75 = v71;
      v56 = v202;
      v67(v207, v75);
      v76 = *(v0 + 16);

LABEL_33:

      goto LABEL_34;
    }

    v138 = *(v0 + 656);
    v139 = *(v0 + 608);

    sub_23328D30C();
    *(v0 + 312) = 0;
    *(v0 + 320) = 0xE000000000000000;
    sub_23328E24C();
    v140 = *(v0 + 320);

    *(v0 + 40) = 0xD000000000000027;
    *(v0 + 48) = 0x80000002332ACA40;
    v141 = sub_23328CC6C();
    MEMORY[0x23839B7E0](v141);

    v142 = *(v0 + 40);
    v143 = *(v0 + 48);
    sub_23328D27C();

    v144 = sub_23328CBCC();
    *(v0 + 344) = 0;
    v145 = [v139 removeItemAtURL:v144 error:v0 + 344];

    v146 = *(v0 + 344);
    v147 = *(v0 + 728);
    v203 = *(v0 + 680);
    v148 = *(v0 + 672);
    v149 = *(v0 + 664);
    v150 = *(v0 + 656);
    v151 = *(v0 + 640);
    v152 = *(v0 + 632);
    if (!v145)
    {
      v193 = *(v0 + 624);
      v195 = *(v0 + 608);
      v199 = v63;
      v154 = *(v0 + 576);
      v155 = *(v0 + 16);
      v209 = *(v0 + 656);
      v156 = v146;

      sub_23328CA7C();

      v56 = v154;
      swift_willThrow();
      sub_233121870(v149, v148);

      v147(v199, v152);
      v147(v203, v152);
      v147(v209, v152);
      goto LABEL_33;
    }

    v153 = v146;
    sub_233121870(v149, v148);
    v147(v63, v152);
    v147(v203, v152);
    v147(v150, v152);

    v187 = 0;
  }

  else
  {
    v77 = *(v0 + 728);
    v78 = *(v0 + 680);
    v79 = *(v0 + 656);
    v80 = *(v0 + 640);
    v81 = *(v0 + 632);
    sub_233121870(*(v0 + 664), *(v0 + 672));
    v77(v78, v81);
    v77(v79, v81);
  }

  v82 = *(v0 + 680);
  v83 = *(v0 + 656);
  v84 = *(v0 + 576);

  sub_2332574E0(v84, type metadata accessor for TTSVBVoice);
  v85 = *(v0 + 600);
  v86 = *(v0 + 592);
  sub_2332422FC(v86);
  sub_233121D9C(v86, v85, &qword_27DDE3680, &qword_23329F330);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36B0, &unk_23329F348);
  if ((*(*(v87 - 8) + 48))(v85, 1, v87) == 1)
  {
    v88 = *(v0 + 624);
    v89 = *(v0 + 608);
    v90 = *(v0 + 600);
    v91 = *(v0 + 592);
    v92 = *(v0 + 584);
    v93 = *(v0 + 576);
    v94 = *(v0 + 552);
    v95 = *(v0 + 536);
    v96 = *(v0 + 528);
    v208 = *(v0 + 520);
    v212 = *(v0 + 496);
    v97 = *(v0 + 16);

    v98 = *(v0 + 8);
    v99 = *MEMORY[0x277D85DE8];
LABEL_36:

    return v98();
  }

  v100 = *(v0 + 600);
  v101 = *v100;
  sub_233257410(v100 + *(v87 + 48), *(v0 + 576), type metadata accessor for TTSVBVoice);
  sub_23328D30C();
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  sub_23328E24C();
  v102 = *(v0 + 112);

  *(v0 + 88) = 0xD000000000000010;
  *(v0 + 96) = 0x80000002332AC8E0;
  if (__OFADD__(v101, 1))
  {
    goto LABEL_46;
  }

  v103 = *(v0 + 616);
  v213 = *(v0 + 608);
  v104 = *(v0 + 576);
  v105 = *(v0 + 472);
  *(v0 + 400) = v101 + 1;
  v106 = sub_23328E51C();
  MEMORY[0x23839B7E0](v106);

  MEMORY[0x23839B7E0](543584032, 0xE400000000000000);
  *(v0 + 392) = v103;
  v107 = sub_23328E51C();
  MEMORY[0x23839B7E0](v107);

  MEMORY[0x23839B7E0](8250, 0xE200000000000000);
  v108 = *v104;
  v109 = v104[1];
  MEMORY[0x23839B7E0](*v104, v109);
  v110 = *(v0 + 88);
  v111 = *(v0 + 96);
  sub_23328D27C();

  v112 = sub_23328CC9C();
  *(v0 + 632) = v112;
  v113 = *(v112 - 8);
  v114 = v113;
  *(v0 + 640) = v113;
  *(v0 + 648) = *(v113 + 64);
  v115 = swift_task_alloc();
  *(v0 + 656) = v115;
  *(v0 + 168) = 0;
  *(v0 + 176) = 0xE000000000000000;
  sub_23328E24C();
  v116 = *(v0 + 176);

  *(v0 + 152) = v108;
  *(v0 + 160) = v109;
  v117 = v115;
  MEMORY[0x23839B7E0](0xD000000000000015, 0x80000002332AC900);
  v118 = *(v0 + 152);
  v119 = *(v0 + 160);
  sub_23328CBEC();

  sub_23328CC6C();
  v120 = sub_23328D95C();

  LODWORD(v116) = [v213 fileExistsAtPath_];

  if (v116)
  {
    v121 = *(v0 + 608);
    v122 = sub_23328CBCC();
    *(v0 + 456) = 0;
    LODWORD(v121) = [v121 removeItemAtURL:v122 error:v0 + 456];

    v123 = *(v0 + 456);
    if (!v121)
    {
      v168 = *(v0 + 624);
      goto LABEL_40;
    }

    v124 = v123;
  }

  v125 = *(v0 + 608);
  v126 = sub_23328CBCC();
  *(v0 + 360) = 0;
  LODWORD(v125) = [v125 createDirectoryAtURL:v126 withIntermediateDirectories:1 attributes:0 error:v0 + 360];

  v123 = *(v0 + 360);
  v127 = *(v0 + 624);
  if (!v125)
  {
LABEL_40:
    v169 = *(v0 + 608);
    v56 = *(v0 + 576);
    v170 = *(v0 + 16);
    v171 = v123;

    sub_23328CA7C();

    swift_willThrow();

    (*(v114 + 8))(v117, v112);
    goto LABEL_35;
  }

  v214 = *(v0 + 576);
  v128 = *(v0 + 560);
  v129 = v123;
  sub_23328D30C();
  *(v0 + 216) = 0;
  *(v0 + 224) = 0xE000000000000000;
  sub_23328E24C();
  v130 = *(v0 + 224);

  *(v0 + 200) = 0xD00000000000002BLL;
  *(v0 + 208) = 0x80000002332AC920;
  v131 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v131);

  v132 = *(v0 + 200);
  v133 = *(v0 + 208);
  sub_23328D27C();

  sub_233254FD8(&qword_27DDE1998, type metadata accessor for TTSVBVoice);
  *(v0 + 664) = sub_23328C89C();
  *(v0 + 672) = v134;
  if (v187)
  {
    v135 = *(v0 + 624);
    v136 = *(v0 + 608);
    v56 = *(v0 + 576);

    (*(v114 + 8))(v115, v112);
    v137 = *(v0 + 16);

LABEL_35:

    sub_2332574E0(v56, type metadata accessor for TTSVBVoice);
    v157 = *(v0 + 600);
    v158 = *(v0 + 592);
    v159 = *(v0 + 584);
    v160 = *(v0 + 576);
    v161 = *(v0 + 552);
    v162 = *(v0 + 536);
    v163 = *(v0 + 528);
    v164 = *(v0 + 520);
    v165 = *(v0 + 496);

    v98 = *(v0 + 8);
    v166 = *MEMORY[0x277D85DE8];
    goto LABEL_36;
  }

  *(v0 + 680) = swift_task_alloc();
  sub_23328CBEC();
  sub_23328CCEC();
  v204 = *(v0 + 576);
  v172 = *(v0 + 560);
  v173 = *(v0 + 480);
  sub_23328D30C();
  *(v0 + 248) = 0;
  *(v0 + 256) = 0xE000000000000000;
  sub_23328E24C();
  v174 = *(v0 + 256);

  *(v0 + 232) = 0xD00000000000001ALL;
  *(v0 + 240) = 0x80000002332AC950;
  v175 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v175);

  v176 = *(v0 + 232);
  v177 = *(v0 + 240);
  sub_23328D27C();

  sub_23328D30C();
  sub_23328D27C();

  v178 = swift_task_alloc();
  *(v0 + 688) = v178;
  v179 = *(v172 + 20);
  *(v0 + 760) = v179;
  v180 = (*v173 + 304);
  v210 = (*v180 + **v180);
  v181 = (*v180)[1];
  v182 = swift_task_alloc();
  *(v0 + 696) = v182;
  *v182 = v0;
  v182[1] = sub_23323FCEC;
  v183 = *(v0 + 480);
  v184 = *(v0 + 765);
  v185 = *(v0 + 764);
  v186 = *MEMORY[0x277D85DE8];

  return v210(v178, v204 + v179, v185, v184);
}

uint64_t sub_233241BFC()
{
  v43 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 704);
  v2 = *(v0 + 688);

  sub_23328D30C();
  *(v0 + 280) = 0;
  *(v0 + 288) = 0xE000000000000000;
  sub_23328E24C();
  v3 = *(v0 + 288);
  *(v0 + 264) = *(v0 + 280);
  *(v0 + 272) = v3;
  MEMORY[0x23839B7E0](0xD000000000000023, 0x80000002332AC990);
  *(v0 + 352) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
  sub_23328E30C();
  v4 = *(v0 + 264);
  v5 = *(v0 + 272);
  sub_23328D25C();

  v6 = *(v0 + 760);
  v7 = *(v0 + 608);
  v8 = *(v0 + 576);
  v9 = *(v0 + 552);
  v10 = *(v0 + 544);
  v11 = *(v0 + 648) + 15;
  sub_23328D30C();
  sub_23328D27C();

  v12 = swift_task_alloc();
  v13 = sub_23328CE8C();
  *(v0 + 712) = v13;
  v14 = *(v13 - 8);
  *(v0 + 720) = v14;
  (*(v14 + 16))(v9, v8 + v6, v13);
  swift_storeEnumTagMultiPayload();
  TTSVBPath.url.getter(v12);
  sub_2332574E0(v9, type metadata accessor for TTSVBPath);
  sub_23328CC6C();
  v15 = sub_23328D95C();

  v16 = [v7 fileExistsAtPath_];

  if (!v16)
  {
    v29 = *(v0 + 640);
    v30 = *(v0 + 632);
    sub_23328D30C();
    sub_23328D27C();

    v27 = *(v29 + 8);
    v27(v12, v30);
    goto LABEL_5;
  }

  v17 = *(v0 + 656);
  v18 = *(v0 + 608);
  v19 = *(v0 + 648) + 15;
  v20 = swift_task_alloc();
  sub_23328CBEC();
  v21 = sub_23328CBCC();
  v22 = sub_23328CBCC();
  *(v0 + 416) = 0;
  v23 = [v18 copyItemAtURL:v21 toURL:v22 error:v0 + 416];

  v24 = *(v0 + 416);
  v25 = *(v0 + 640);
  v26 = *(v0 + 632);
  if (v23)
  {
    v27 = *(v25 + 8);
    v28 = v24;
    v27(v20, v26);
    v27(v12, v26);

LABEL_5:

    goto LABEL_7;
  }

  v31 = v24;
  v32 = sub_23328CA7C();

  swift_willThrow();
  v27 = *(v25 + 8);
  v27(v20, v26);
  v27(v12, v26);

  sub_23328D30C();
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  sub_23328E24C();
  v33 = *(v0 + 64);
  *(v0 + 72) = *(v0 + 56);
  *(v0 + 80) = v33;
  MEMORY[0x23839B7E0](0xD000000000000025, 0x80000002332ACAE0);
  *(v0 + 440) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
  sub_23328E30C();
  v34 = *(v0 + 72);
  v35 = *(v0 + 80);
  sub_23328D25C();

LABEL_7:
  *(v0 + 728) = v27;
  v36 = **(v0 + 480);
  v42 = (*(v36 + 216) + **(v36 + 216));
  v37 = *(*(v36 + 216) + 4);
  v38 = swift_task_alloc();
  *(v0 + 736) = v38;
  *v38 = v0;
  v38[1] = sub_2332404C4;
  v39 = *(v0 + 480);
  v40 = *MEMORY[0x277D85DE8];

  return v42();
}

uint64_t sub_23324215C()
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = v0[91];
  v2 = v0[85];
  v3 = v0[82];
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[76];
  v8 = v0[72];
  sub_233121870(v0[83], v0[84]);

  v1(v2, v5);
  v1(v3, v5);

  sub_2332574E0(v8, type metadata accessor for TTSVBVoice);
  v9 = v0[93];
  v10 = v0[75];
  v11 = v0[74];
  v12 = v0[73];
  v13 = v0[72];
  v14 = v0[69];
  v15 = v0[67];
  v16 = v0[66];
  v17 = v0[65];
  v18 = v0[62];

  v19 = v0[1];
  v20 = *MEMORY[0x277D85DE8];

  return v19();
}

void sub_2332422FC(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36B0, &unk_23329F348);
  v4 = *(*(v3 - 8) + 64);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v3);
  v8 = (&v17 - v7);
  v10 = *v1;
  v9 = v1[1];
  v11 = *(*v1 + 16);
  if (v9 == v11)
  {
    v12 = *(v5 + 56);

    v12(a1, 1, 1, v3, v6);
  }

  else
  {
    if (v9 >= v11)
    {
      __break(1u);
    }

    else
    {
      v18 = v5;
      v13 = *(type metadata accessor for TTSVBVoice() - 8);
      v14 = v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v9;
      v1[1] = v9 + 1;
      v15 = *(v3 + 48);
      v16 = v1[2];
      *v8 = v16;
      sub_233257478(v14, v8 + v15, type metadata accessor for TTSVBVoice);
      if (!__OFADD__(v16, 1))
      {
        v1[2] = v16 + 1;
        sub_233121D9C(v8, a1, &qword_27DDE36B0, &unk_23329F348);
        (*(v18 + 56))(a1, 0, 1, v3);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2332424EC()
{
  swift_getKeyPath();
  v0 = sub_23328CE8C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTSVBInstalledVoiceModel.subscript.getter();

  v5 = *(type metadata accessor for TTSVBVoice() + 20);
  v6 = sub_23328CE5C();
  (*(v1 + 8))(v4, v0);
  return v6 & 1;
}

uint64_t sub_23324261C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = type metadata accessor for TTSVBPath();
  v4[20] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36B8, &qword_23329F3A8) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_233242730, 0, 0);
}

uint64_t sub_233242730()
{
  v94 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 128);
  v2 = [objc_opt_self() defaultManager];
  *(v0 + 200) = v2;
  *(v0 + 488) = 0;
  sub_23328CC6C();
  v3 = sub_23328D95C();

  LODWORD(v1) = [v2 fileExistsAtPath:v3 isDirectory:v0 + 488];

  v4 = *(v0 + 128);
  if (v1)
  {
    v5 = sub_23328CC9C();
    *(v0 + 208) = v5;
    v6 = *(v5 - 8);
    v7 = v6;
    *(v0 + 216) = v6;
    *(v0 + 224) = *(v6 + 64);
    v8 = swift_task_alloc();
    *(v0 + 232) = v8;
    sub_23328CC6C();
    v9 = sub_23328DACC();
    *(v0 + 489) = v9 & 1;

    if (v9)
    {
      v10 = *(v0 + 128);
      sub_23328CBDC();
      v11 = sub_23328CBCC();
      *(v0 + 120) = 0;
      v12 = [v2 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:v0 + 120];

      v13 = *(v0 + 120);
      v93 = v7;
      if (v12)
      {
        v14 = v13;
      }

      else
      {
        v16 = v13;
        v17 = sub_23328CA7C();

        swift_willThrow();
      }

      v18 = *(v0 + 128);
      sub_23328D30C();
      sub_23328D27C();

      sub_23328D1AC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_23329F260;
      *(v19 + 32) = 30765;
      *(v19 + 40) = 0xE200000000000000;
      *(v19 + 48) = 31277;
      *(v19 + 56) = 0xE200000000000000;
      *(v19 + 64) = 26157;
      *(v19 + 72) = 0xE200000000000000;
      *(v19 + 80) = sub_23328CC6C();
      *(v19 + 88) = v20;
      *(v19 + 96) = 17197;
      *(v19 + 104) = 0xE200000000000000;
      *(v19 + 112) = sub_23328CC6C();
      *(v19 + 120) = v21;
      sub_23328D15C();

LABEL_14:
      v29 = *(v0 + 192);
      sub_23328D30C();
      sub_23328E24C();

      v30 = sub_23328CC6C();
      MEMORY[0x23839B7E0](v30);

      sub_23328D27C();

      v31 = type metadata accessor for TTSVBVoice();
      *(v0 + 240) = v31;
      v92 = *(v31 - 8);
      v32 = *(v92 + 56);
      v32(v29, 1, 1, v31);
      v33 = swift_task_alloc();
      sub_23328CBEC();
      v34 = sub_23328CCAC();
      v88 = v5;
      v91 = *(v0 + 184);
      v35 = v34;
      v37 = v36;
      v38 = sub_23328C85C();
      v39 = *(v38 + 48);
      v40 = *(v38 + 52);
      swift_allocObject();
      sub_23328C84C();
      sub_233254FD8(&qword_27DDE1990, type metadata accessor for TTSVBVoice);
      v86 = v35;
      v87 = v37;
      sub_23328C83C();
      v79 = *(v0 + 184);
      v80 = *(v0 + 192);
      v81 = *(v0 + 176);

      v32(v79, 0, 1, v31);
      sub_2332550EC(v79, v80);
      sub_23328D30C();
      sub_23328E24C();
      *(v0 + 64) = 0;
      *(v0 + 72) = 0xE000000000000000;
      MEMORY[0x23839B7E0](0xD000000000000019, 0x80000002332ACD60);
      sub_233121D34(v80, v81, &qword_27DDE36B8, &qword_23329F3A8);
      result = (*(v92 + 48))(v81, 1, v31);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        v82 = *(v0 + 176);
        sub_23328E30C();
        sub_2332574E0(v82, type metadata accessor for TTSVBVoice);
        v83 = *(v0 + 64);
        v84 = *(v0 + 72);
        sub_23328D27C();

        sub_233121870(v86, v87);
        v85 = *(v93 + 8);
        v85(v33, v88);

        *(v0 + 248) = v85;
        v41 = *(v0 + 144);
        if (v41)
        {
          v42 = *(v0 + 136);
        }

        else
        {
          v48 = *(v0 + 192);
          if ((*(v92 + 48))(v48, 1, v31))
          {
            v49 = swift_task_alloc();
            sub_23328CBDC();
            v42 = sub_23328CB9C();
            v41 = v50;
            v85(v49, v88);

            if (sub_23328DACC())
            {
              v51 = sub_23328DA4C();
              v52 = sub_233255050(v51);
              v54 = v53;
              v56 = v55;
              v58 = v57;

              v42 = MEMORY[0x23839B770](v52, v54, v56, v58);
              v41 = v59;
            }
          }

          else
          {
            v42 = *v48;
            v41 = v48[1];
          }
        }

        *(v0 + 256) = v41;
        v43 = *(v0 + 192);
        v44 = *(v0 + 144);

        sub_23328D30C();
        sub_23328E24C();

        MEMORY[0x23839B7E0](v42, v41);
        sub_23328D27C();

        v45 = *(v92 + 48);
        *(v0 + 264) = v45;
        *(v0 + 272) = (v92 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        if (v45(v43, 1, v31))
        {
          v46 = 0xE500000000000000;
          v47 = 0x53552D6E65;
        }

        else
        {
          v60 = (*(v0 + 192) + *(v31 + 24));
          v47 = *v60;
          v46 = v60[1];
        }

        *(v0 + 280) = v46;
        sub_23328D30C();
        sub_23328E24C();

        MEMORY[0x23839B7E0](v47, v46);
        sub_23328D27C();

        v61 = sub_23328CE8C();
        *(v0 + 288) = v61;
        v62 = *(v61 - 8);
        *(v0 + 296) = v62;
        *(v0 + 304) = *(v62 + 64);
        *(v0 + 312) = swift_task_alloc();
        v63 = swift_task_alloc();
        *(v0 + 320) = v63;
        sub_23328CBEC();
        sub_23328CC6C();
        v64 = sub_23328D95C();

        v65 = [v2 fileExistsAtPath_];

        sub_23328D30C();
        v66 = *(v0 + 152);
        if (v65)
        {
          sub_23328E24C();
          MEMORY[0x23839B7E0](0xD00000000000002FLL, 0x80000002332ACD30);
          MEMORY[0x23839B7E0](v42, v41);
          MEMORY[0x23839B7E0](0x656C61636F4C2027, 0xEC000000273D4449);
          MEMORY[0x23839B7E0](v47, v46);
          MEMORY[0x23839B7E0](39, 0xE100000000000000);
          sub_23328D27C();

          v67 = swift_task_alloc();
          *(v0 + 328) = v67;
          v68 = (*v66 + 288);
          v89 = (*v68 + **v68);
          v69 = (*v68)[1];
          v70 = swift_task_alloc();
          *(v0 + 336) = v70;
          *v70 = v0;
          v70[1] = sub_233243818;
          v71 = *(v0 + 152);
          v72 = *MEMORY[0x277D85DE8];

          return v89(v67, v42, v41, v47, v46, v63);
        }

        else
        {
          sub_23328E24C();
          MEMORY[0x23839B7E0](0xD000000000000031, 0x80000002332ACC50);
          MEMORY[0x23839B7E0](v42, v41);
          MEMORY[0x23839B7E0](0x656C61636F4C2027, 0xEC000000273D4449);
          MEMORY[0x23839B7E0](v47, v46);
          MEMORY[0x23839B7E0](39, 0xE100000000000000);
          sub_23328D27C();

          v73 = swift_task_alloc();
          *(v0 + 352) = v73;
          v74 = (*v66 + 256);
          v90 = (*v74 + **v74);
          v75 = (*v74)[1];
          v76 = swift_task_alloc();
          *(v0 + 360) = v76;
          *v76 = v0;
          v76[1] = sub_23324456C;
          v77 = *(v0 + 152);
          v78 = *MEMORY[0x277D85DE8];

          return v90(v73, v42, v41, v47, v46);
        }
      }

      return result;
    }

    if (*(v0 + 488))
    {
      v93 = v7;
      (*(v7 + 16))(v8, *(v0 + 128), v5);
      goto LABEL_14;
    }

    sub_23328D1BC();
    sub_233254FD8(&qword_27DDE3688, MEMORY[0x277CE66C0]);
    swift_allocError();
    sub_23328D1CC();
    swift_willThrow();
  }

  else
  {
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD000000000000032, 0x80000002332ACB40);
    v15 = sub_23328CC6C();
    MEMORY[0x23839B7E0](v15);

    sub_23328D1BC();
    sub_233254FD8(&qword_27DDE3688, MEMORY[0x277CE66C0]);
    swift_allocError();
    sub_23328D1CC();
    swift_willThrow();
  }

  v23 = *(v0 + 184);
  v22 = *(v0 + 192);
  v25 = *(v0 + 168);
  v24 = *(v0 + 176);

  v26 = *(v0 + 8);
  v27 = *MEMORY[0x277D85DE8];

  return v26();
}

uint64_t sub_233243818()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  v2[43] = v0;

  v5 = v2[35];
  if (v0)
  {
    v6 = v2[32];

    v7 = sub_233245B90;
  }

  else
  {

    v7 = sub_233243990;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_233243990()
{
  v136 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 232);
  v2 = *(v0 + 200);
  v3 = *(v0 + 224) + 15;
  (*(*(v0 + 296) + 32))(*(v0 + 312), *(v0 + 328), *(v0 + 288));

  v4 = swift_task_alloc();
  *(v0 + 376) = v4;
  sub_23328CBEC();
  sub_23328CC6C();
  v5 = sub_23328D95C();

  LODWORD(v2) = [v2 fileExistsAtPath_];

  sub_23328D30C();
  if (v2)
  {
    v6 = *(v0 + 312);
    v8 = *(v0 + 288);
    v7 = *(v0 + 296);
    v117 = *(v0 + 216);
    v121 = *(v0 + 208);
    v126 = *(v0 + 248);
    v130 = *(v0 + 200);
    v10 = *(v0 + 160);
    v9 = *(v0 + 168);
    v11 = *(v0 + 224) + 15;
    sub_23328D27C();

    v12 = sub_23328CBCC();
    (*(v7 + 16))(v9, v6, v8);
    swift_storeEnumTagMultiPayload();
    v13 = swift_task_alloc();
    TTSVBPath.url.getter(v13);
    sub_2332574E0(v9, type metadata accessor for TTSVBPath);
    v14 = sub_23328CBCC();
    v126(v13, v121);

    *(v0 + 112) = 0;
    LODWORD(v11) = [v130 copyItemAtURL:v12 toURL:v14 error:v0 + 112];

    v15 = *(v0 + 112);
    if (!v11)
    {
      v76 = *(v0 + 296);
      v113 = *(v0 + 320);
      v115 = *(v0 + 288);
      v78 = *(v0 + 248);
      v77 = *(v0 + 256);
      v134 = *(v0 + 489);
      v79 = *(v0 + 232);
      v80 = *(v0 + 208);
      v128 = *(v0 + 200);
      v119 = *(v0 + 312);
      v123 = *(v0 + 192);
      v81 = v15;

      sub_23328CA7C();

      swift_willThrow();
      v78(v4, v80);
      v78(v113, v80);
      (*(v76 + 8))(v119, v115);

      sub_233121E04(v123, &qword_27DDE36B8, &qword_23329F3A8);
      sub_23324604C(v134, v79, v128);

      v78(v79, v80);

      v83 = *(v0 + 184);
      v82 = *(v0 + 192);
      v85 = *(v0 + 168);
      v84 = *(v0 + 176);

      v74 = *(v0 + 8);
      v86 = *MEMORY[0x277D85DE8];
      goto LABEL_15;
    }

    v16 = v15;
  }

  else
  {
    sub_23328D27C();
  }

  v17 = *(v0 + 232);
  v18 = *(v0 + 200);
  v19 = *(v0 + 224) + 15;
  v20 = swift_task_alloc();
  *(v0 + 384) = v20;
  sub_23328CBEC();
  v21 = sub_23328CBCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2728, &qword_23329F3B0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_233297B30;
  v23 = *MEMORY[0x277CBE868];
  *(v22 + 32) = *MEMORY[0x277CBE868];
  type metadata accessor for URLResourceKey(0);
  v24 = v23;
  v25 = sub_23328DBDC();

  *(v0 + 88) = 0;
  v26 = [v18 contentsOfDirectoryAtURL:v21 includingPropertiesForKeys:v25 options:4 error:v0 + 88];

  v27 = *(v0 + 88);
  v28 = *(v0 + 256);
  if (v26)
  {
    v29 = *(v0 + 208);
    v30 = sub_23328DBFC();
    v31 = v27;
  }

  else
  {
    v32 = v27;
    v33 = sub_23328CA7C();

    swift_willThrow();
    v30 = MEMORY[0x277D84F90];
  }

  *(v0 + 392) = v30;
  v34 = *(v30 + 16);
  *(v0 + 400) = v34;
  if (!v34)
  {
    v59 = *(v0 + 320);
    v132 = *(v0 + 312);
    v60 = *(v0 + 288);
    v61 = *(v0 + 296);
    v62 = *(v0 + 248);
    v63 = *(v0 + 208);
    v64 = *(v0 + 216);

    sub_23328D30C();
    sub_23328D27C();

    v62(v20, v63);
    v62(v4, v63);
    v62(v59, v63);
    (*(v61 + 8))(v132, v60);
    goto LABEL_13;
  }

  *(v0 + 408) = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36C0, &qword_23329F3B8) - 8) + 64);
  *(v0 + 416) = swift_task_alloc();
  v35 = swift_task_alloc();
  if (!*(v30 + 16))
  {
    __break(1u);
    goto LABEL_26;
  }

  v36 = v35;
  v37 = *(v0 + 208);
  v38 = *(v0 + 216);
  v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36C8, qword_23329F3C0);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64) + 15;
  v43 = swift_task_alloc();
  v44 = *(v40 + 48);
  *v43 = 0;
  (*(v38 + 16))(&v43[v44], v30 + v39, v37);
  sub_233121D9C(v43, v36, &qword_27DDE36C8, qword_23329F3C0);
  (*(v41 + 56))(v36, 0, 1, v40);

  v45 = *(v0 + 416);
  *(v0 + 424) = 1;
  sub_233121D9C(v36, v45, &qword_27DDE36C0, &qword_23329F3B8);

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36C8, qword_23329F3C0);
  v47 = (*(*(v46 - 8) + 48))(v45, 1, v46);
  v48 = *(v0 + 416);
  if (v47 == 1)
  {
    v50 = *(v0 + 384);
    v49 = *(v0 + 392);
    v51 = *(v0 + 376);
    v52 = *(v0 + 320);
    v131 = *(v0 + 312);
    v53 = *(v0 + 288);
    v54 = *(v0 + 296);
    v55 = *(v0 + 248);
    v57 = *(v0 + 208);
    v56 = *(v0 + 216);

    v55(v50, v57);
    v55(v51, v57);
    v55(v52, v57);
    (*(v54 + 8))(v131, v53);

    v58 = *(v0 + 216) + 8;
LABEL_13:
    v66 = *(v0 + 376);
    v65 = *(v0 + 384);
    v68 = *(v0 + 312);
    v67 = *(v0 + 320);
    v69 = *(v0 + 489);
    v70 = *(v0 + 232);
    v72 = *(v0 + 200);
    v71 = *(v0 + 208);
    v73 = *(v0 + 192);
    v118 = *(v0 + 248);
    v122 = *(v0 + 184);
    v127 = *(v0 + 176);
    v133 = *(v0 + 168);

    sub_233121E04(v73, &qword_27DDE36B8, &qword_23329F3A8);
    sub_23324604C(v69, v70, v72);

    v118(v70, v71);

    v74 = *(v0 + 8);
    v75 = *MEMORY[0x277D85DE8];
LABEL_15:

    return v74();
  }

  v88 = *(v0 + 216);
  v89 = *(v0 + 208);
  v90 = *(v0 + 224) + 15;
  v91 = swift_task_alloc();
  *(v0 + 432) = v91;
  v92 = *v48;
  v93 = *(v46 + 48);
  v135 = v91;
  (*(v88 + 32))();
  sub_23328D30C();
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  sub_23328E24C();
  v94 = *(v0 + 56);

  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x80000002332ACCC0;
  v95 = v92 + 1;
  if (__OFADD__(v92, 1))
  {
LABEL_26:
    __break(1u);
  }

  v96 = *(v0 + 392);
  v116 = *(v0 + 312);
  v97 = *(v0 + 296);
  v114 = *(v0 + 288);
  v124 = *(v0 + 264);
  v129 = *(v0 + 272);
  v120 = *(v0 + 240);
  v98 = *(v0 + 192);
  v99 = *(v0 + 304) + 15;
  *(v0 + 96) = v95;
  v100 = sub_23328E51C();
  MEMORY[0x23839B7E0](v100);

  MEMORY[0x23839B7E0](543584032, 0xE400000000000000);
  *(v0 + 104) = *(v96 + 16);
  v101 = sub_23328E51C();
  MEMORY[0x23839B7E0](v101);

  v102 = *(v0 + 32);
  v103 = *(v0 + 40);
  sub_23328D27C();

  v104 = swift_task_alloc();
  *(v0 + 440) = v104;
  (*(v97 + 16))();
  if (v124(v98, 1, v120))
  {
    v105 = 0;
    v106 = 0;
  }

  else
  {
    v107 = (*(v0 + 192) + *(*(v0 + 240) + 24));
    v105 = *v107;
    v106 = v107[1];
  }

  *(v0 + 448) = v106;
  v108 = *(**(v0 + 152) + 280);
  v125 = (v108 + *v108);
  v109 = v108[1];
  v110 = swift_task_alloc();
  *(v0 + 456) = v110;
  *v110 = v0;
  v110[1] = sub_2332452C0;
  v111 = *(v0 + 152);
  v112 = *MEMORY[0x277D85DE8];

  return v125(v104, v105, v106, v135);
}

uint64_t sub_23324456C()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  v2[46] = v0;

  v5 = v2[35];
  if (v0)
  {
    v6 = v2[32];

    v7 = sub_233245CF4;
  }

  else
  {

    v7 = sub_2332446E4;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2332446E4()
{
  v136 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 232);
  v2 = *(v0 + 200);
  v3 = *(v0 + 224) + 15;
  (*(*(v0 + 296) + 32))(*(v0 + 312), *(v0 + 352), *(v0 + 288));

  v4 = swift_task_alloc();
  *(v0 + 376) = v4;
  sub_23328CBEC();
  sub_23328CC6C();
  v5 = sub_23328D95C();

  LODWORD(v2) = [v2 fileExistsAtPath_];

  sub_23328D30C();
  if (v2)
  {
    v6 = *(v0 + 312);
    v8 = *(v0 + 288);
    v7 = *(v0 + 296);
    v117 = *(v0 + 216);
    v121 = *(v0 + 208);
    v126 = *(v0 + 248);
    v130 = *(v0 + 200);
    v10 = *(v0 + 160);
    v9 = *(v0 + 168);
    v11 = *(v0 + 224) + 15;
    sub_23328D27C();

    v12 = sub_23328CBCC();
    (*(v7 + 16))(v9, v6, v8);
    swift_storeEnumTagMultiPayload();
    v13 = swift_task_alloc();
    TTSVBPath.url.getter(v13);
    sub_2332574E0(v9, type metadata accessor for TTSVBPath);
    v14 = sub_23328CBCC();
    v126(v13, v121);

    *(v0 + 112) = 0;
    LODWORD(v11) = [v130 copyItemAtURL:v12 toURL:v14 error:v0 + 112];

    v15 = *(v0 + 112);
    if (!v11)
    {
      v76 = *(v0 + 296);
      v113 = *(v0 + 320);
      v115 = *(v0 + 288);
      v78 = *(v0 + 248);
      v77 = *(v0 + 256);
      v134 = *(v0 + 489);
      v79 = *(v0 + 232);
      v80 = *(v0 + 208);
      v128 = *(v0 + 200);
      v119 = *(v0 + 312);
      v123 = *(v0 + 192);
      v81 = v15;

      sub_23328CA7C();

      swift_willThrow();
      v78(v4, v80);
      v78(v113, v80);
      (*(v76 + 8))(v119, v115);

      sub_233121E04(v123, &qword_27DDE36B8, &qword_23329F3A8);
      sub_23324604C(v134, v79, v128);

      v78(v79, v80);

      v83 = *(v0 + 184);
      v82 = *(v0 + 192);
      v85 = *(v0 + 168);
      v84 = *(v0 + 176);

      v74 = *(v0 + 8);
      v86 = *MEMORY[0x277D85DE8];
      goto LABEL_15;
    }

    v16 = v15;
  }

  else
  {
    sub_23328D27C();
  }

  v17 = *(v0 + 232);
  v18 = *(v0 + 200);
  v19 = *(v0 + 224) + 15;
  v20 = swift_task_alloc();
  *(v0 + 384) = v20;
  sub_23328CBEC();
  v21 = sub_23328CBCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2728, &qword_23329F3B0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_233297B30;
  v23 = *MEMORY[0x277CBE868];
  *(v22 + 32) = *MEMORY[0x277CBE868];
  type metadata accessor for URLResourceKey(0);
  v24 = v23;
  v25 = sub_23328DBDC();

  *(v0 + 88) = 0;
  v26 = [v18 contentsOfDirectoryAtURL:v21 includingPropertiesForKeys:v25 options:4 error:v0 + 88];

  v27 = *(v0 + 88);
  v28 = *(v0 + 256);
  if (v26)
  {
    v29 = *(v0 + 208);
    v30 = sub_23328DBFC();
    v31 = v27;
  }

  else
  {
    v32 = v27;
    v33 = sub_23328CA7C();

    swift_willThrow();
    v30 = MEMORY[0x277D84F90];
  }

  *(v0 + 392) = v30;
  v34 = *(v30 + 16);
  *(v0 + 400) = v34;
  if (!v34)
  {
    v59 = *(v0 + 320);
    v132 = *(v0 + 312);
    v60 = *(v0 + 288);
    v61 = *(v0 + 296);
    v62 = *(v0 + 248);
    v63 = *(v0 + 208);
    v64 = *(v0 + 216);

    sub_23328D30C();
    sub_23328D27C();

    v62(v20, v63);
    v62(v4, v63);
    v62(v59, v63);
    (*(v61 + 8))(v132, v60);
    goto LABEL_13;
  }

  *(v0 + 408) = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36C0, &qword_23329F3B8) - 8) + 64);
  *(v0 + 416) = swift_task_alloc();
  v35 = swift_task_alloc();
  if (!*(v30 + 16))
  {
    __break(1u);
    goto LABEL_26;
  }

  v36 = v35;
  v37 = *(v0 + 208);
  v38 = *(v0 + 216);
  v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36C8, qword_23329F3C0);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64) + 15;
  v43 = swift_task_alloc();
  v44 = *(v40 + 48);
  *v43 = 0;
  (*(v38 + 16))(&v43[v44], v30 + v39, v37);
  sub_233121D9C(v43, v36, &qword_27DDE36C8, qword_23329F3C0);
  (*(v41 + 56))(v36, 0, 1, v40);

  v45 = *(v0 + 416);
  *(v0 + 424) = 1;
  sub_233121D9C(v36, v45, &qword_27DDE36C0, &qword_23329F3B8);

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36C8, qword_23329F3C0);
  v47 = (*(*(v46 - 8) + 48))(v45, 1, v46);
  v48 = *(v0 + 416);
  if (v47 == 1)
  {
    v50 = *(v0 + 384);
    v49 = *(v0 + 392);
    v51 = *(v0 + 376);
    v52 = *(v0 + 320);
    v131 = *(v0 + 312);
    v53 = *(v0 + 288);
    v54 = *(v0 + 296);
    v55 = *(v0 + 248);
    v57 = *(v0 + 208);
    v56 = *(v0 + 216);

    v55(v50, v57);
    v55(v51, v57);
    v55(v52, v57);
    (*(v54 + 8))(v131, v53);

    v58 = *(v0 + 216) + 8;
LABEL_13:
    v66 = *(v0 + 376);
    v65 = *(v0 + 384);
    v68 = *(v0 + 312);
    v67 = *(v0 + 320);
    v69 = *(v0 + 489);
    v70 = *(v0 + 232);
    v72 = *(v0 + 200);
    v71 = *(v0 + 208);
    v73 = *(v0 + 192);
    v118 = *(v0 + 248);
    v122 = *(v0 + 184);
    v127 = *(v0 + 176);
    v133 = *(v0 + 168);

    sub_233121E04(v73, &qword_27DDE36B8, &qword_23329F3A8);
    sub_23324604C(v69, v70, v72);

    v118(v70, v71);

    v74 = *(v0 + 8);
    v75 = *MEMORY[0x277D85DE8];
LABEL_15:

    return v74();
  }

  v88 = *(v0 + 216);
  v89 = *(v0 + 208);
  v90 = *(v0 + 224) + 15;
  v91 = swift_task_alloc();
  *(v0 + 432) = v91;
  v92 = *v48;
  v93 = *(v46 + 48);
  v135 = v91;
  (*(v88 + 32))();
  sub_23328D30C();
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  sub_23328E24C();
  v94 = *(v0 + 56);

  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x80000002332ACCC0;
  v95 = v92 + 1;
  if (__OFADD__(v92, 1))
  {
LABEL_26:
    __break(1u);
  }

  v96 = *(v0 + 392);
  v116 = *(v0 + 312);
  v97 = *(v0 + 296);
  v114 = *(v0 + 288);
  v124 = *(v0 + 264);
  v129 = *(v0 + 272);
  v120 = *(v0 + 240);
  v98 = *(v0 + 192);
  v99 = *(v0 + 304) + 15;
  *(v0 + 96) = v95;
  v100 = sub_23328E51C();
  MEMORY[0x23839B7E0](v100);

  MEMORY[0x23839B7E0](543584032, 0xE400000000000000);
  *(v0 + 104) = *(v96 + 16);
  v101 = sub_23328E51C();
  MEMORY[0x23839B7E0](v101);

  v102 = *(v0 + 32);
  v103 = *(v0 + 40);
  sub_23328D27C();

  v104 = swift_task_alloc();
  *(v0 + 440) = v104;
  (*(v97 + 16))();
  if (v124(v98, 1, v120))
  {
    v105 = 0;
    v106 = 0;
  }

  else
  {
    v107 = (*(v0 + 192) + *(*(v0 + 240) + 24));
    v105 = *v107;
    v106 = v107[1];
  }

  *(v0 + 448) = v106;
  v108 = *(**(v0 + 152) + 280);
  v125 = (v108 + *v108);
  v109 = v108[1];
  v110 = swift_task_alloc();
  *(v0 + 456) = v110;
  *v110 = v0;
  v110[1] = sub_2332452C0;
  v111 = *(v0 + 152);
  v112 = *MEMORY[0x277D85DE8];

  return v125(v104, v105, v106, v135);
}

uint64_t sub_2332452C0()
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *v1;
  v2[58] = v0;

  v5 = v2[56];
  v6 = v2[55];
  if (v0)
  {
    v7 = v2[49];
    v8 = v2[36];
    v9 = v2[37];
    v10 = *(v9 + 8);
    v2[59] = v10;
    v2[60] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v8);

    v11 = sub_233245E58;
  }

  else
  {
    v12 = v2[36];
    v13 = v2[55];
    (*(v2[37] + 8))();

    v11 = sub_233245494;
  }

  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_233245494()
{
  v79 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 216) + 8;
  (*(v0 + 248))(*(v0 + 432), *(v0 + 208));

  v2 = *(v0 + 424);
  v3 = *(v0 + 400);
  v4 = *(v0 + 408) + 15;
  v5 = swift_task_alloc();
  if (v2 == v3)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36C8, qword_23329F3C0);
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = *(v0 + 400);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
    }

    v8 = *(v0 + 392);
    if (v2 >= *(v8 + 16))
    {
      goto LABEL_19;
    }

    v9 = *(v0 + 208);
    v10 = *(v0 + 216);
    v7 = v2 + 1;
    v11 = v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v2;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36C8, qword_23329F3C0);
    v13 = *(v12 - 8);
    v14 = *(v13 + 64) + 15;
    v15 = swift_task_alloc();
    v16 = *(v12 + 48);
    *v15 = v2;
    (*(v10 + 16))(&v15[v16], v11, v9);
    sub_233121D9C(v15, v5, &qword_27DDE36C8, qword_23329F3C0);
    (*(v13 + 56))(v5, 0, 1, v12);
  }

  *(v0 + 424) = v7;
  v17 = *(v0 + 416);
  sub_233121D9C(v5, v17, &qword_27DDE36C0, &qword_23329F3B8);

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36C8, qword_23329F3C0);
  if ((*(*(v18 - 8) + 48))(v17, 1, v18) == 1)
  {
    v76 = *(v0 + 416);
    v20 = *(v0 + 384);
    v19 = *(v0 + 392);
    v21 = *(v0 + 376);
    v23 = *(v0 + 312);
    v22 = *(v0 + 320);
    v24 = *(v0 + 288);
    v25 = *(v0 + 296);
    v26 = *(v0 + 248);
    v28 = *(v0 + 208);
    v27 = *(v0 + 216);

    v26(v20, v28);
    v26(v21, v28);
    v26(v22, v28);
    (*(v25 + 8))(v23, v24);

    v29 = *(v0 + 208);
    v31 = *(v0 + 376);
    v30 = *(v0 + 384);
    v33 = *(v0 + 312);
    v32 = *(v0 + 320);
    v34 = *(v0 + 248);
    LOBYTE(v22) = *(v0 + 489);
    v35 = *(v0 + 232);
    v37 = *(v0 + 192);
    v36 = *(v0 + 200);
    v69 = *(v0 + 184);
    v71 = *(v0 + 216) + 8;
    v73 = *(v0 + 176);
    v77 = *(v0 + 168);

    sub_233121E04(v37, &qword_27DDE36B8, &qword_23329F3A8);
    sub_23324604C(v22, v35, v36);

    v34(v35, v29);

    v38 = *(v0 + 8);
    v39 = *MEMORY[0x277D85DE8];

    return v38();
  }

  v41 = *(v0 + 416);
  v42 = *(v0 + 216);
  v43 = *(v0 + 208);
  v44 = *(v0 + 224) + 15;
  v45 = swift_task_alloc();
  *(v0 + 432) = v45;
  v46 = *v41;
  v47 = *(v18 + 48);
  (*(v42 + 32))();
  sub_23328D30C();
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  sub_23328E24C();
  v48 = *(v0 + 56);

  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x80000002332ACCC0;
  v49 = v46 + 1;
  if (__OFADD__(v46, 1))
  {
    goto LABEL_18;
  }

  v50 = *(v0 + 392);
  v70 = *(v0 + 312);
  v51 = *(v0 + 296);
  v67 = v45;
  v68 = *(v0 + 288);
  v74 = *(v0 + 264);
  v78 = *(v0 + 272);
  v72 = *(v0 + 240);
  v52 = *(v0 + 192);
  v53 = *(v0 + 304) + 15;
  *(v0 + 96) = v49;
  v54 = sub_23328E51C();
  MEMORY[0x23839B7E0](v54);

  MEMORY[0x23839B7E0](543584032, 0xE400000000000000);
  *(v0 + 104) = *(v50 + 16);
  v55 = sub_23328E51C();
  MEMORY[0x23839B7E0](v55);

  v56 = *(v0 + 32);
  v57 = *(v0 + 40);
  sub_23328D27C();

  v58 = swift_task_alloc();
  *(v0 + 440) = v58;
  (*(v51 + 16))();
  if (v74(v52, 1, v72))
  {
    v59 = 0;
    v60 = 0;
  }

  else
  {
    v61 = (*(v0 + 192) + *(*(v0 + 240) + 24));
    v59 = *v61;
    v60 = v61[1];
  }

  *(v0 + 448) = v60;
  v62 = *(**(v0 + 152) + 280);
  v75 = (v62 + *v62);
  v63 = v62[1];
  v64 = swift_task_alloc();
  *(v0 + 456) = v64;
  *v64 = v0;
  v64[1] = sub_2332452C0;
  v65 = *(v0 + 152);
  v66 = *MEMORY[0x277D85DE8];

  return v75(v58, v59, v60, v67);
}

uint64_t sub_233245B90()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 328);
  v2 = *(v0 + 312);
  v3 = *(v0 + 248);
  v16 = *(v0 + 489);
  v4 = *(v0 + 232);
  v5 = *(v0 + 208);
  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v3(*(v0 + 320), v5);

  sub_233121E04(v7, &qword_27DDE36B8, &qword_23329F3A8);
  sub_23324604C(v16, v4, v6);

  v3(v4, v5);

  v8 = *(v0 + 344);
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v12 = *(v0 + 168);
  v11 = *(v0 + 176);

  v13 = *(v0 + 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13();
}

uint64_t sub_233245CF4()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 352);
  v2 = *(v0 + 312);
  v3 = *(v0 + 248);
  v16 = *(v0 + 489);
  v4 = *(v0 + 232);
  v5 = *(v0 + 208);
  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v3(*(v0 + 320), v5);

  sub_233121E04(v7, &qword_27DDE36B8, &qword_23329F3A8);
  sub_23324604C(v16, v4, v6);

  v3(v4, v5);

  v8 = *(v0 + 368);
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v12 = *(v0 + 168);
  v11 = *(v0 + 176);

  v13 = *(v0 + 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13();
}

uint64_t sub_233245E58()
{
  v24 = *MEMORY[0x277D85DE8];
  v17 = *(v0 + 472);
  v18 = *(v0 + 480);
  v19 = *(v0 + 440);
  v20 = *(v0 + 416);
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v16 = *(v0 + 288);
  v5 = *(v0 + 248);
  v23 = *(v0 + 489);
  v6 = *(v0 + 232);
  v7 = *(v0 + 208);
  v21 = *(v0 + 192);
  v22 = *(v0 + 200);
  v5(*(v0 + 432), v7);
  v5(v2, v7);
  v5(v1, v7);
  v5(v4, v7);
  v17(v3, v16);

  sub_233121E04(v21, &qword_27DDE36B8, &qword_23329F3A8);
  sub_23324604C(v23, v6, v22);

  v5(v6, v7);

  v8 = *(v0 + 464);
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v12 = *(v0 + 168);
  v11 = *(v0 + 176);

  v13 = *(v0 + 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13();
}

void sub_23324604C(char a1, uint64_t a2, void *a3)
{
  v12[2] = *MEMORY[0x277D85DE8];
  if ((a1 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_23328D30C();
  sub_23328E24C();

  v12[1] = 0x80000002332AE4F0;
  v4 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v4);

  sub_23328D27C();

  v5 = sub_23328CBCC();
  v12[0] = 0;
  LODWORD(a3) = [a3 removeItemAtURL:v5 error:v12];

  v6 = v12[0];
  if (!a3)
  {
    v9 = v12[0];
    v10 = sub_23328CA7C();

    swift_willThrow();
LABEL_7:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  v7 = *MEMORY[0x277D85DE8];

  v8 = v6;
}

uint64_t sub_2332461E0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_233246200, 0, 0);
}

uint64_t sub_233246200()
{
  v7 = v0[1];
  sub_23328D30C();
  sub_23328E24C();

  v1 = sub_23328CE3C();
  MEMORY[0x23839B7E0](v1);

  sub_23328D27C();

  v2 = swift_task_alloc();
  v0[2].i64[0] = v2;
  v2[1] = vextq_s8(v7, v7, 8uLL);
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[2].i64[1] = v4;
  *v4 = v0;
  v4[1] = sub_233246394;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000015, 0x80000002332ACDC0, sub_23325515C, v2, v5);
}

uint64_t sub_233246394()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_233257C90;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_233257C7C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2332464B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_233237A9C();
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  TTSVBService.deleteVoice(withID:completion:)();
}

uint64_t sub_233246610(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - v8;
  sub_233121D34(a1, v13 - v8, &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_233257410(v9, v5, type metadata accessor for TTSVBError);
    sub_233254FD8(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    v10 = swift_allocError();
    sub_233257478(v5, v11, type metadata accessor for TTSVBError);
    v13[1] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    sub_23328DC8C();
    return sub_2332574E0(v5, type metadata accessor for TTSVBError);
  }

  else
  {
    sub_23328D30C();
    sub_23328D27C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    return sub_23328DC9C();
  }
}

uint64_t sub_233246848(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_233246868, 0, 0);
}

uint64_t sub_233246868()
{
  v7 = v0[1];
  sub_23328D30C();
  sub_23328E24C();

  v1 = sub_23328CE3C();
  MEMORY[0x23839B7E0](v1);

  sub_23328D27C();

  v2 = swift_task_alloc();
  v0[2].i64[0] = v2;
  v2[1] = vextq_s8(v7, v7, 8uLL);
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[2].i64[1] = v4;
  *v4 = v0;
  v4[1] = sub_233246394;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000015, 0x80000002332ACDE0, sub_233255164, v2, v5);
}

uint64_t sub_2332469FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_233237A9C();
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  TTSVBService.deleteModel(withID:completion:)();
}

uint64_t sub_233246B5C(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - v8;
  sub_233121D34(a1, v13 - v8, &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_233257410(v9, v5, type metadata accessor for TTSVBError);
    sub_233254FD8(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    v10 = swift_allocError();
    sub_233257478(v5, v11, type metadata accessor for TTSVBError);
    v13[1] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    sub_23328DC8C();
    return sub_2332574E0(v5, type metadata accessor for TTSVBError);
  }

  else
  {
    sub_23328D30C();
    sub_23328D27C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    return sub_23328DC9C();
  }
}

uint64_t sub_233246D94()
{
  v1 = type metadata accessor for TTSVBPath();
  *(v0 + 160) = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  *(v0 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_233246E24, 0, 0);
}

uint64_t sub_233246E24()
{
  v2 = v0[20];
  v1 = v0[21];
  sub_23328D30C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE26E0, &unk_23329B9C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_233297B30;
  v4 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 32) = 0xD00000000000002FLL;
  *(v3 + 40) = 0x80000002332ACE00;
  sub_23328D26C();

  v40 = sub_23328CC9C();
  v39 = *(v40 - 8);
  v5 = *(v39 + 64) + 15;
  v6 = swift_task_alloc();
  swift_storeEnumTagMultiPayload();
  TTSVBPath.url.getter(v6);
  sub_2332574E0(v1, type metadata accessor for TTSVBPath);
  v7 = [objc_opt_self() defaultManager];
  sub_23328CC6C();
  v8 = sub_23328D95C();

  v9 = [v7 fileExistsAtPath_];

  if (v9)
  {
    v10 = v0[21];
    v36 = v0[20];
    v38 = v6;
    sub_23328D30C();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_233297B30;
    sub_23328E24C();

    swift_storeEnumTagMultiPayload();
    v12 = swift_task_alloc();
    TTSVBPath.url.getter(v12);
    sub_2332574E0(v10, type metadata accessor for TTSVBPath);
    v13 = sub_23328CC6C();
    v15 = v14;
    v16 = *(v39 + 8);
    v16(v12, v40);
    MEMORY[0x23839B7E0](v13, v15);

    *(v11 + 56) = v4;
    *(v11 + 32) = 0xD000000000000014;
    *(v11 + 40) = 0x80000002332ACEF0;
    sub_23328D26C();

    sub_23328D1AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_233297630;
    *(v17 + 32) = 6713901;
    *(v17 + 40) = 0xE300000000000000;
    swift_storeEnumTagMultiPayload();
    v18 = swift_task_alloc();
    TTSVBPath.url.getter(v18);
    sub_2332574E0(v10, type metadata accessor for TTSVBPath);
    v19 = sub_23328CC6C();
    v21 = v20;
    v37 = v16;
    v16(v18, v40);
    *(v17 + 48) = v19;
    *(v17 + 56) = v21;

    sub_23328D15C();

    v23 = v0[20];
    v22 = v0[21];
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_233297630;
    *(v24 + 32) = 6713901;
    *(v24 + 40) = 0xE300000000000000;
    swift_storeEnumTagMultiPayload();
    v25 = swift_task_alloc();
    TTSVBPath.url.getter(v25);
    sub_2332574E0(v22, type metadata accessor for TTSVBPath);
    v26 = sub_23328CC6C();
    v28 = v27;
    v37(v25, v40);
    *(v24 + 48) = v26;
    *(v24 + 56) = v28;

    sub_23328D15C();

    v6 = v38;
    v4 = MEMORY[0x277D837D0];
  }

  sub_23328D30C();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_233297B30;
  *(v29 + 56) = v4;
  *(v29 + 32) = 0xD000000000000030;
  *(v29 + 40) = 0x80000002332ACE30;
  sub_23328D26C();

  sub_23328D1AC();
  sub_23328D15C();
  sub_23328D15C();
  sub_23328D30C();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_233297B30;
  v31 = MEMORY[0x277D837D0];
  *(v30 + 56) = MEMORY[0x277D837D0];
  *(v30 + 32) = 0xD000000000000015;
  *(v30 + 40) = 0x80000002332ACE90;
  sub_23328D26C();

  sub_23328D15C();
  sub_23328D30C();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_233297B30;
  *(v32 + 56) = v31;
  *(v32 + 32) = 0xD000000000000010;
  *(v32 + 40) = 0x80000002332ACED0;
  sub_23328D26C();

  sub_23328D15C();
  v33 = v0[21];
  (*(v39 + 8))(v6, v40);

  v34 = v0[1];

  return v34();
}

uint64_t VoiceBankingCommand.Helper.DeletionType.hashValue.getter()
{
  v1 = *v0;
  sub_23328E61C();
  MEMORY[0x23839C380](v1);
  return sub_23328E66C();
}

uint64_t sub_233247944(_BYTE *a1)
{
  v2[2] = v1;
  v3 = *v1;
  if (*a1 == 1)
  {
    v10 = (*(v3 + 200) + **(v3 + 200));
    v4 = *(*(v3 + 200) + 4);
    v5 = swift_task_alloc();
    v2[3] = v5;
    *v5 = v2;
    v5[1] = sub_233247B4C;
    v6 = v10;
  }

  else
  {
    v11 = (*(v3 + 184) + **(v3 + 184));
    v7 = *(*(v3 + 184) + 4);
    v8 = swift_task_alloc();
    v2[12] = v8;
    *v8 = v2;
    v8[1] = sub_233248320;
    v6 = v11;
  }

  return v6();
}

uint64_t sub_233247B4C(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v4 = *v2;
  *(v4 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_233247C80, 0, 0);
  }
}

void sub_233247C80()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  v0[5] = v2;
  if (v2)
  {
    v0[6] = 0;
    if (*(v1 + 16))
    {
      v3 = v0[2];
      v4 = type metadata accessor for TTSVBVoiceModel();
      v5 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
      v6 = v1 + *(v4 + 24);
      v7 = sub_23328CE8C();
      v0[7] = v7;
      v8 = *(v7 - 8);
      v9 = v8;
      v0[8] = v8;
      v10 = *(v8 + 64) + 15;
      v11 = swift_task_alloc();
      v0[9] = v11;
      (*(v9 + 16))();
      v16 = (*v3 + 336);
      v17 = (*v16 + **v16);
      v12 = (*v16)[1];
      v13 = swift_task_alloc();
      v0[10] = v13;
      *v13 = v0;
      v13[1] = sub_233247EF4;
      v14 = v0[2];

      v17(v11);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v15 = v0[1];

    v15();
  }
}

uint64_t sub_233247EF4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  v2[11] = v0;

  v5 = v2[8];
  if (v0)
  {
    v6 = v2[4];
    (*(v5 + 8))(v2[9], v2[7]);

    v7 = sub_233248AF4;
  }

  else
  {
    v8 = v2[9];
    (*(v5 + 8))();

    v7 = sub_233248084;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_233248084()
{
  v1 = v0[6] + 1;
  if (v1 == v0[5])
  {
    v2 = v0[4];

    v3 = v0[1];

    v3();
  }

  else
  {
    v0[6] = v1;
    v4 = v0[4];
    if (v1 >= *(v4 + 16))
    {
      __break(1u);
    }

    else
    {
      v5 = v0[2];
      v6 = type metadata accessor for TTSVBVoiceModel();
      v7 = v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v1;
      v8 = *(v6 + 24);
      v9 = sub_23328CE8C();
      v0[7] = v9;
      v10 = *(v9 - 8);
      v11 = v10;
      v0[8] = v10;
      v12 = *(v10 + 64) + 15;
      v13 = swift_task_alloc();
      v0[9] = v13;
      (*(v11 + 16))();
      v17 = (*v5 + 336);
      v18 = (*v17 + **v17);
      v14 = (*v17)[1];
      v15 = swift_task_alloc();
      v0[10] = v15;
      *v15 = v0;
      v15[1] = sub_233247EF4;
      v16 = v0[2];

      v18(v13);
    }
  }
}

uint64_t sub_233248320(uint64_t a1)
{
  v3 = *(*v2 + 96);
  v4 = *v2;
  *(v4 + 104) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_233248454, 0, 0);
  }
}

void sub_233248454()
{
  v1 = v0[13];
  v2 = *(v1 + 16);
  v0[14] = v2;
  if (v2)
  {
    v0[15] = 0;
    if (*(v1 + 16))
    {
      v3 = v0[2];
      v4 = type metadata accessor for TTSVBVoice();
      v5 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
      v6 = v1 + *(v4 + 20);
      v7 = sub_23328CE8C();
      v0[16] = v7;
      v8 = *(v7 - 8);
      v9 = v8;
      v0[17] = v8;
      v10 = *(v8 + 64) + 15;
      v11 = swift_task_alloc();
      v0[18] = v11;
      (*(v9 + 16))();
      v16 = (*v3 + 328);
      v17 = (*v16 + **v16);
      v12 = (*v16)[1];
      v13 = swift_task_alloc();
      v0[19] = v13;
      *v13 = v0;
      v13[1] = sub_2332486C8;
      v14 = v0[2];

      v17(v11);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v15 = v0[1];

    v15();
  }
}

uint64_t sub_2332486C8()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  v2[20] = v0;

  v5 = v2[17];
  if (v0)
  {
    v6 = v2[13];
    (*(v5 + 8))(v2[18], v2[16]);

    v7 = sub_233248B58;
  }

  else
  {
    v8 = v2[18];
    (*(v5 + 8))();

    v7 = sub_233248858;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_233248858()
{
  v1 = v0[15] + 1;
  if (v1 == v0[14])
  {
    v2 = v0[13];

    v3 = v0[1];

    v3();
  }

  else
  {
    v0[15] = v1;
    v4 = v0[13];
    if (v1 >= *(v4 + 16))
    {
      __break(1u);
    }

    else
    {
      v5 = v0[2];
      v6 = type metadata accessor for TTSVBVoice();
      v7 = v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v1;
      v8 = *(v6 + 20);
      v9 = sub_23328CE8C();
      v0[16] = v9;
      v10 = *(v9 - 8);
      v11 = v10;
      v0[17] = v10;
      v12 = *(v10 + 64) + 15;
      v13 = swift_task_alloc();
      v0[18] = v13;
      (*(v11 + 16))();
      v17 = (*v5 + 328);
      v18 = (*v17 + **v17);
      v14 = (*v17)[1];
      v15 = swift_task_alloc();
      v0[19] = v15;
      *v15 = v0;
      v15[1] = sub_2332486C8;
      v16 = v0[2];

      v18(v13);
    }
  }
}

uint64_t sub_233248AF4()
{
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_233248B58()
{
  v1 = v0[20];
  v2 = v0[18];

  v3 = v0[1];

  return v3();
}

uint64_t static VoiceBankingCommand.Helper.TrainingMode.bestTrainingModeForDevice()@<X0>(char *a1@<X8>)
{
  result = TTSVBIsPersonalVoiceVersion2Enabled();
  if (result && (result = TTSVBDeviceSupportsV2Voices()(), (result & 1) != 0))
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t VoiceBankingCommand.Helper.TrainingMode.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_23328E37C();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t VoiceBankingCommand.Helper.TrainingMode.rawValue.getter()
{
  v1 = 0x6C616974726170;
  if (*v0 != 1)
  {
    v1 = 6369904;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1819047270;
  }
}

uint64_t sub_233248CC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6C616974726170;
  if (v2 != 1)
  {
    v4 = 6369904;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1819047270;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6C616974726170;
  if (*a2 != 1)
  {
    v8 = 6369904;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1819047270;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23328E54C();
  }

  return v11 & 1;
}

uint64_t sub_233248DB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1769300333;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1634627435;
    }

    else
    {
      v4 = 1769300333;
    }

    v3 = 0xE400000000000000;
  }

  else if (a1 == 2)
  {
    v4 = 0x6C61746E6963616DLL;
    v3 = 0xE90000000000006BLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E6F6870797267;
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x726568746FLL;
  }

  if (a2 <= 1u)
  {
    v5 = 0xE400000000000000;
    v6 = 0xE400000000000000;
    v7 = 1634627435;
    v8 = a2 == 0;
  }

  else
  {
    v2 = 0x6C61746E6963616DLL;
    v5 = 0xE90000000000006BLL;
    v6 = 0xE700000000000000;
    v7 = 0x6E6F6870797267;
    if (a2 != 3)
    {
      v7 = 0x726568746FLL;
      v6 = 0xE500000000000000;
    }

    v8 = a2 == 2;
  }

  if (v8)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  if (v4 == v9 && v3 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23328E54C();
  }

  return v11 & 1;
}

uint64_t sub_233248F14()
{
  v1 = *v0;
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_233248FA8()
{
  *v0;
  *v0;
  sub_23328DA3C();
}

uint64_t sub_233249028()
{
  v1 = *v0;
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_2332490B8@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return VoiceBankingCommand.Helper.TrainingMode.init(rawValue:)(a1);
}

void sub_2332490C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6C616974726170;
  if (v2 != 1)
  {
    v5 = 6369904;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1819047270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_233249124(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, char a6, char a7)
{
  *(v8 + 75) = a7;
  *(v8 + 74) = a6;
  *(v8 + 32) = a5;
  *(v8 + 40) = v7;
  *(v8 + 73) = a4;
  *(v8 + 72) = a3;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return MEMORY[0x2822009F8](sub_233249158, 0, 0);
}

uint64_t sub_233249158()
{
  v22 = *(v0 + 75);
  v26 = *(v0 + 74);
  v24 = *(v0 + 40);
  v25 = *(v0 + 32);
  v1 = *(v0 + 73);
  v2 = *(v0 + 72);
  v20 = *(v0 + 72);
  v3 = *(v0 + 24);
  v21 = v3;
  v23 = *(v0 + 16);
  sub_23328D30C();
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000023, 0x80000002332ACF10);
  v4 = sub_23328CE3C();
  MEMORY[0x23839B7E0](v4);

  MEMORY[0x23839B7E0](0x6E696E6961727420, 0xEE003D65646F4D67);
  v5 = TTSVBSiriTTSTrainerTaskModeStringForMode(v3);
  v6 = sub_23328D98C();
  v8 = v7;

  MEMORY[0x23839B7E0](v6, v8);

  MEMORY[0x23839B7E0](0xD000000000000012, 0x80000002332A8C20);
  if (v2)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v2)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x23839B7E0](v9, v10);

  MEMORY[0x23839B7E0](0xD000000000000010, 0x80000002332ACF40);
  if (v1)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v1)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x23839B7E0](v11, v12);

  MEMORY[0x23839B7E0](0xD00000000000001ELL, 0x80000002332ACF60);
  if (v22)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v22)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x23839B7E0](v13, v14);

  sub_23328D27C();

  v15 = swift_task_alloc();
  *(v0 + 48) = v15;
  *(v15 + 16) = v24;
  *(v15 + 24) = v23;
  *(v15 + 32) = v21;
  *(v15 + 40) = v20;
  *(v15 + 41) = v1;
  *(v15 + 48) = v25;
  *(v15 + 56) = v26 & 1;
  *(v15 + 57) = v22;
  v16 = *(MEMORY[0x277D85A40] + 4);
  v17 = swift_task_alloc();
  *(v0 + 56) = v17;
  *v17 = v0;
  v17[1] = sub_2332494A4;
  v18 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v17, 0, 0, 0xD000000000000071, 0x80000002332ACF80, sub_23325516C, v15, v18);
}

uint64_t sub_2332494A4()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2332495C0;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_233257C7C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2332495C0()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_233249624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v17 = a7;
  v16[0] = a5;
  v16[1] = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  sub_233237A9C();
  (*(v9 + 16))(v12, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  TTSVBService.trainModel(withID:mode:startImmediately:skipValidation:overrideMinimumPhraseCount:useUserRecordingsForTraining:completion:)();
}

uint64_t sub_2332497BC(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - v8;
  sub_233121D34(a1, v13 - v8, &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_233257410(v9, v5, type metadata accessor for TTSVBError);
    sub_233254FD8(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    v10 = swift_allocError();
    sub_233257478(v5, v11, type metadata accessor for TTSVBError);
    v13[1] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    sub_23328DC8C();
    return sub_2332574E0(v5, type metadata accessor for TTSVBError);
  }

  else
  {
    sub_23328D30C();
    sub_23328D27C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    return sub_23328DC9C();
  }
}

uint64_t sub_2332499F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_233249A18, 0, 0);
}

uint64_t sub_233249A18()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_23328D30C();
  sub_23328D27C();

  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_233249B54;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD00000000000001BLL, 0x80000002332AD030, sub_2332551AC, v4, v7);
}

uint64_t sub_233249B54()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_2332396B0;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_233257C7C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_233249C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  sub_233237A9C();
  (*(v8 + 16))(v11, a1, v7);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  (*(v8 + 32))(v13 + v12, v11, v7);

  TTSVBService.cancelTrainingTask(taskID:completion:)();
}

uint64_t sub_233249DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTSVBError(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  sub_233121D34(a1, &v17 - v12, &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_233257410(v13, v9, type metadata accessor for TTSVBError);
    sub_233254FD8(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    v14 = swift_allocError();
    sub_233257478(v9, v15, type metadata accessor for TTSVBError);
    v17 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    sub_23328DC8C();
    return sub_2332574E0(v9, type metadata accessor for TTSVBError);
  }

  else
  {
    sub_23328D30C();
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_23328E24C();

    v17 = 0xD000000000000027;
    v18 = 0x80000002332AE460;
    MEMORY[0x23839B7E0](a2, a3);
    sub_23328D27C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    return sub_23328DC9C();
  }
}

uint64_t sub_23324A094()
{
  sub_23328D30C();
  sub_23328D27C();

  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_23323C82C;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v2, 0, 0, 0xD000000000000016, 0x80000002332AD080, sub_2332551B8, v3, v4);
}

uint64_t sub_23324A1A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_233237A9C();
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  TTSVBService.discardTrainingTasks(completion:)();
}

uint64_t sub_23324A2F8(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - v8;
  sub_233121D34(a1, v13 - v8, &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_233257410(v9, v5, type metadata accessor for TTSVBError);
    sub_233254FD8(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    v10 = swift_allocError();
    sub_233257478(v5, v11, type metadata accessor for TTSVBError);
    v13[1] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    sub_23328DC8C();
    return sub_2332574E0(v5, type metadata accessor for TTSVBError);
  }

  else
  {
    sub_23328D30C();
    sub_23328D27C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    return sub_23328DC9C();
  }
}

uint64_t sub_23324A530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_23324A558, 0, 0);
}

uint64_t sub_23324A558()
{
  v1 = v0[5] == 0x746C7561666564 && v0[6] == 0xE700000000000000;
  if (v1 || (sub_23328E54C() & 1) != 0)
  {
    v2 = TTSVBSiriTrainingScriptTypeDefault;
LABEL_7:
    v3 = *v2;
LABEL_8:
    v0[7] = v3;
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_task_alloc();
    v0[8] = v6;
    v6[2] = v5;
    v6[3] = v4;
    v6[4] = v3;
    v7 = *(MEMORY[0x277D85A40] + 4);
    v8 = v3;
    v9 = swift_task_alloc();
    v0[9] = v9;
    v10 = sub_23328CC9C();
    *v9 = v0;
    v9[1] = sub_23324A81C;
    v11 = v0[2];

    return MEMORY[0x2822008A0](v11, 0, 0, 0xD00000000000002CLL, 0x80000002332AD0A0, sub_2332551C0, v6, v10);
  }

  if (v0[5] == 0x74726F6873 && v0[6] == 0xE500000000000000 || (sub_23328E54C() & 1) != 0)
  {
    v2 = TTSVBSiriTrainingScriptTypeShortPhrases;
    goto LABEL_7;
  }

  v13 = v0[5];
  v12 = v0[6];
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD00000000000001BLL, 0x80000002332AE3E0);
  MEMORY[0x23839B7E0](v13, v12);
  MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332AE400);
  sub_23328D1BC();
  sub_233254FD8(&qword_27DDE3688, MEMORY[0x277CE66C0]);
  v14 = swift_allocError();
  sub_23328D1CC();
  v3 = v14;
  swift_willThrow();
  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_23324A81C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_23324A99C;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_23324A938;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23324A938()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23324A99C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);
  v3 = *(v0 + 8);

  return v3();
}

void sub_23324AA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TTSVBVoiceBankingManager();
  v8 = TTSVBVoiceBankingManager.__allocating_init()();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3730, &qword_23329F858);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v17 - v13;
  (*(v10 + 16))(&v17 - v13, a1, v9, v12);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v14, v9);
  TTSVBVoiceBankingManager.getTrainingMetadataDownloadingIfNeeded(localeID:scriptType:_:)(a2, a3, a4, sub_233257660, v16);
}

uint64_t sub_23324AB84(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A8, &qword_233299A30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - v8;
  sub_233121D34(a1, v20 - v8, &qword_27DDE19A8, &qword_233299A30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_233257410(v9, v5, type metadata accessor for TTSVBError);
    sub_233254FD8(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    v10 = swift_allocError();
    sub_233257478(v5, v11, type metadata accessor for TTSVBError);
    v20[1] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3730, &qword_23329F858);
    sub_23328DC8C();
    return sub_2332574E0(v5, type metadata accessor for TTSVBError);
  }

  else
  {
    v13 = sub_23328CC9C();
    v14 = *(v13 - 8);
    v15 = *(v14 + 64);
    v16 = MEMORY[0x28223BE20](v13);
    v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
    v18 = (*(v14 + 32))(v20 - v17, v9, v13, v16);
    v19 = MEMORY[0x28223BE20](v18);
    (*(v14 + 16))(v20 - v17, v20 - v17, v13, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3730, &qword_23329F858);
    sub_23328DC9C();
    return (*(v14 + 8))(v20 - v17, v13);
  }
}

uint64_t sub_23324AE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = sub_23328CC9C();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v5[3] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v5[4] = v13;
  v17 = (*v4 + 384);
  v18 = (*v17 + **v17);
  v14 = (*v17)[1];
  v15 = swift_task_alloc();
  v5[5] = v15;
  *v15 = v5;
  v15[1] = sub_23324B048;

  return v18(v13, a1, a2, a3, a4);
}

uint64_t sub_23324B048()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_23324B2B8;
  }

  else
  {
    v3 = sub_23324B15C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23324B15C()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = *(*(sub_23328D9DC() - 8) + 64) + 15;
  swift_task_alloc();
  sub_23328D9CC();
  sub_23328D91C();
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  if (v1)
  {
    (*(v5 + 8))(v0[4], v0[2]);

    v7 = v0[4];
  }

  else
  {

    sub_23328D30C();
    sub_23328D27C();

    (*(v5 + 8))(v4, v6);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_23324B2B8()
{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23324B31C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_23324B33C, 0, 0);
}

uint64_t sub_23324B33C()
{
  v7 = v0[1];
  sub_23328D30C();
  sub_23328E24C();

  v1 = sub_23328CE3C();
  MEMORY[0x23839B7E0](v1);

  sub_23328D27C();

  v2 = swift_task_alloc();
  v0[2].i64[0] = v2;
  v2[1] = vextq_s8(v7, v7, 8uLL);
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[2].i64[1] = v4;
  *v4 = v0;
  v4[1] = sub_233246394;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000014, 0x80000002332AD100, sub_2332551CC, v2, v5);
}

uint64_t sub_23324B4D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_233237A9C();
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  TTSVBService.synchronizeFileBackedFuturesForModelID(_:completion:)();
}

uint64_t sub_23324B630(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - v8;
  sub_233121D34(a1, v13 - v8, &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_233257410(v9, v5, type metadata accessor for TTSVBError);
    sub_233254FD8(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    v10 = swift_allocError();
    sub_233257478(v5, v11, type metadata accessor for TTSVBError);
    v13[1] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    sub_23328DC8C();
    return sub_2332574E0(v5, type metadata accessor for TTSVBError);
  }

  else
  {
    sub_23328D30C();
    sub_23328D27C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    return sub_23328DC9C();
  }
}

uint64_t sub_23324B888()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_23324B964;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v2, 0, 0, 0x41657A796C616E61, 0xEF29287373656363, sub_2332551D4, v3, v4);
}

uint64_t sub_23324B964()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_23324BE90;
  }

  else
  {
    v3 = sub_23324BA78;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23324BA78()
{
  v1 = *(v0 + 16);
  sub_23328D30C();
  sub_23328E24C();

  v2 = sub_233237B6C();
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v2) + 0xE8))();

  if (v4)
  {
    v5 = 7562585;
  }

  else
  {
    v5 = 28494;
  }

  if (v4)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  MEMORY[0x23839B7E0](v5, v6);

  sub_23328D27C();

  sub_23328D30C();
  sub_23328E24C();

  v7 = *(v1 + 32);
  v8 = *((*v3 & *v7) + 0x118);
  v9 = v7;
  v10 = v8();

  v11 = TTSVBTCCCloudKitAccess.rawValue.getter(v10);
  MEMORY[0x23839B7E0](v11);

  sub_23328D27C();

  sub_23328D30C();
  sub_23328E24C();

  v12 = *(v1 + 32);
  v13 = *((*v3 & *v12) + 0x130);
  v14 = v12;
  v15 = v13();

  if (v15)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v15)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x23839B7E0](v16, v17);

  sub_23328D27C();

  sub_23328D30C();
  sub_23328E24C();

  v18 = *(v1 + 32);
  v19 = *((*MEMORY[0x277D85000] & *v18) + 0x138);
  v20 = v18;
  v21 = v19();

  if (v21)
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (v21)
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x23839B7E0](v22, v23);

  sub_23328D27C();

  v24 = *(v0 + 8);

  return v24();
}

void sub_23324BEA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = sub_233237B6C();
  (*(v3 + 16))(v6, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v6, v2);
  (*((*MEMORY[0x277D85000] & *v7) + 0x128))(sub_233257C84, v9);
}

void sub_23324C040()
{
  v146 = *MEMORY[0x277D85DE8];
  v126 = _s6HelperC9StoreInfoVMa();
  v135 = *(v126 - 8);
  v0 = v135[8];
  MEMORY[0x28223BE20](v126);
  v127 = v111 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for TTSVBPath();
  v2 = *(*(v137 - 1) + 64);
  MEMORY[0x28223BE20](v137);
  v136 = v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for TTSVBDataStore(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_23328CC9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = v111 - v9;
  v11 = sub_23328D95C();
  v12 = sub_23328D95C();
  v13 = [v5 URLForResource:v11 withExtension:v12];

  MEMORY[0x28223BE20](v14);
  if (!v13)
  {
    sub_23328D1BC();
    sub_233254FD8(&qword_27DDE3688, MEMORY[0x277CE66C0]);
    swift_allocError();
    sub_23328D1CC();
    swift_willThrow();

    goto LABEL_28;
  }

  v128 = v5;
  sub_23328CC4C();

  (*(v7 + 32))(v111 - v9, v111 - v9, v6);
  v15 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v16 = sub_23328CBCC();
  v17 = [v15 initWithContentsOfURL_];

  v18 = v6;
  if (!v17)
  {
    v144 = 0;
    v145 = 0xE000000000000000;
    sub_23328E24C();

    v144 = 0xD00000000000002BLL;
    v145 = 0x80000002332AD1D0;
    v21 = sub_23328CC6C();
    MEMORY[0x23839B7E0](v21);

    sub_23328D1BC();
    sub_233254FD8(&qword_27DDE3688, MEMORY[0x277CE66C0]);
    swift_allocError();
    sub_23328D1CC();
    swift_willThrow();

    (*(v7 + 8))(v10, v6);
    goto LABEL_28;
  }

  v19 = v139;
  static TTSVBDataStore.applyVoicebankingAttributesToMom(_:)(v17);
  v20 = v128;
  if (v19)
  {
    (*(v7 + 8))(v10, v18);

LABEL_28:
    v103 = *MEMORY[0x277D85DE8];
    return;
  }

  v111[0] = 0;
  v114 = v10;
  v22 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  v23 = v17;
  v24 = sub_23328D95C();
  v123 = [v22 initWithName:v24 managedObjectModel:v23];

  v113 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36D0, qword_23329F428);
  v134 = v135[9];
  v25 = (*(v135 + 80) + 32) & ~*(v135 + 80);
  v26 = swift_allocObject();
  v135 = v111;
  v111[1] = v26;
  v27 = (v26 + v25);
  MEMORY[0x28223BE20](v26);
  v28 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v138 = v7;
  v29 = v18;
  v30 = v136;
  v31 = swift_storeEnumTagMultiPayload();
  v133 = v111;
  MEMORY[0x28223BE20](v31);
  TTSVBPath.url.getter(v111 - v28);
  v139 = type metadata accessor for TTSVBPath;
  sub_2332574E0(v30, type metadata accessor for TTSVBPath);
  sub_23328CBEC();
  v32 = *(v138 + 8);
  v138 += 8;
  v33 = v29;
  v116 = v29;
  v32(v111 - v28, v29);
  v34 = v126;
  v35 = v27 + *(v126 + 20);
  sub_23328CBFC();
  v36 = (v32)(v111 - v28, v33);
  v135 = v111;
  *v27 = 0x6C61636F4CLL;
  v27[1] = 0xE500000000000000;
  v37 = (v27 + *(v34 + 24));
  *v37 = 0x6C61636F4CLL;
  v37[1] = 0xE500000000000000;
  v38 = (v27 + v134);
  MEMORY[0x28223BE20](v36);
  v40 = swift_storeEnumTagMultiPayload();
  v137 = v111;
  MEMORY[0x28223BE20](v40);
  v39 = v111 - v28;
  TTSVBPath.url.getter(v111 - v28);
  sub_2332574E0(v30, v139);
  sub_23328CBEC();
  v41 = v111 - v28;
  v42 = v27;
  v43 = v134;
  v44 = v116;
  v32(v41, v116);
  v45 = v38 + *(v34 + 20);
  sub_23328CBFC();
  v112 = v32;
  v32(v39, v44);
  v46 = 0;
  v47 = 0;
  *v38 = 0x64756F6C43;
  v38[1] = 0xE500000000000000;
  v48 = (v38 + *(v34 + 24));
  *v48 = 0x64756F6C43;
  v48[1] = 0xE500000000000000;
  v49 = v127;
  v50 = &v127[*(v34 + 20)];
  v51 = &v127[*(v34 + 24)];
  v52 = 0x80000002332AD200;
  v117 = "Could not load datastore: ";
  v53 = *MEMORY[0x277CBE240];
  v54 = *MEMORY[0x277CBE2E8];
  v121 = *MEMORY[0x277CCA1A0];
  v120 = v53;
  v119 = v54;
  v115 = v50;
  v135 = 0x80000002332AD200;
  v136 = v51;
  v118 = xmmword_233297620;
  v129 = v42;
  while (1)
  {
    v122 = v46;
    sub_233257478(v42 + v47 * v43, v49, _s6HelperC9StoreInfoVMa);
    sub_23328D30C();
    v144 = 0;
    v145 = 0xE000000000000000;
    sub_23328E24C();

    v144 = 0xD000000000000011;
    v145 = v52;
    MEMORY[0x23839B7E0](*v49, v49[1]);
    MEMORY[0x23839B7E0](0x203A4C52552027, 0xE700000000000000);
    v55 = sub_23328CC6C();
    MEMORY[0x23839B7E0](v55);

    sub_23328D27C();

    v56 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
    v57 = sub_23328CBCC();
    v58 = [v56 initWithURL_];

    v59 = *v51;
    v60 = *(v51 + 1);
    v61 = sub_23328D95C();
    sub_2332574E0(v49, _s6HelperC9StoreInfoVMa);
    [v58 setConfiguration_];

    [v58 setOption:v121 forKey:v120];
    [v58 setType_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2320, &qword_233297640);
    v62 = swift_allocObject();
    *(v62 + 16) = v118;
    *(v62 + 32) = v58;
    sub_233144EEC(0, &qword_280D39B78, 0x277CBE4E0);
    v125 = v58;
    v63 = sub_23328DBDC();

    v64 = v123;
    [v123 setPersistentStoreDescriptions_];

    v144 = 0;
    v65 = [v64 load_];
    v66 = v144;
    v67 = v128;
    if (!v65)
    {
      swift_setDeallocating();
      v104 = v66;
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v105 = sub_23328CA7C();

      swift_willThrow();
      v144 = 0;
      v145 = 0xE000000000000000;
      sub_23328E24C();

      v144 = 0xD00000000000001ALL;
      v145 = 0x80000002332AD220;
      v106 = sub_23328CA6C();
      v107 = [v106 debugDescription];

      v108 = sub_23328D98C();
      v110 = v109;

      MEMORY[0x23839B7E0](v108, v110);

      sub_23328D1BC();
      sub_233254FD8(&qword_27DDE3688, MEMORY[0x277CE66C0]);
      swift_allocError();
      sub_23328D1CC();
      swift_willThrow();

      v112(v114, v116);
      goto LABEL_28;
    }

    v68 = v144;
    v137 = [v64 viewContext];
    v69 = [v64 managedObjectModel];
    sub_23328D30C();
    sub_23328D27C();

    v124 = v69;
    v70 = [v69 entities];
    sub_233144EEC(0, &qword_280D39B98, 0x277CBE408);
    v71 = sub_23328DBFC();

    if (v71 >> 62)
    {
      break;
    }

    v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v52 = v135;
    v51 = v136;
    if (v72)
    {
      goto LABEL_12;
    }

LABEL_8:

    v46 = 1;
    v47 = 1;
    v49 = v127;
    if (v122)
    {

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();

      v112(v114, v116);
      goto LABEL_28;
    }
  }

  v72 = sub_23328E19C();
  v52 = v135;
  v51 = v136;
  if (!v72)
  {
    goto LABEL_8;
  }

LABEL_12:
  v73 = 0;
  v132 = v71 & 0xFFFFFFFFFFFFFF8;
  v133 = (v71 & 0xC000000000000001);
  v130 = v72;
  v131 = v71;
  while (1)
  {
    if (v133)
    {
      v75 = MEMORY[0x23839BFC0](v73, v71);
      v74 = &selRef_mainQueue;
      v76 = (v73 + 1);
      if (__OFADD__(v73, 1))
      {
        goto LABEL_31;
      }
    }

    else
    {
      v74 = &selRef_mainQueue;
      if (v73 >= *(v132 + 16))
      {
        goto LABEL_32;
      }

      v75 = *(v71 + 8 * v73 + 32);
      v76 = (v73 + 1);
      if (__OFADD__(v73, 1))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
      }
    }

    v139 = v76;
    v77 = [v75 v74[225]];
    if (!v77)
    {
      goto LABEL_33;
    }

    v78 = v77;
    v79 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

    [v79 setResultType_];
    v144 = 0;
    v80 = [v137 countForFetchRequest:v79 error:&v144];
    v81 = v144;
    if (v144)
    {
      break;
    }

    v82 = v80;
    sub_23328D30C();
    v144 = 0;
    v145 = 0xE000000000000000;
    sub_23328E24C();

    v144 = 2108704;
    v145 = 0xE300000000000000;
    v83 = [v75 v74[225]];
    if (!v83)
    {
      goto LABEL_34;
    }

    v84 = v83;
    v85 = sub_23328D98C();
    v87 = v86;

    v142 = v85;
    v143 = v87;
    v140 = 32;
    v141 = 0xE100000000000000;
    sub_23311A294();
    v88 = sub_23328E09C();
    v90 = v89;

    MEMORY[0x23839B7E0](v88, v90);

    MEMORY[0x23839B7E0](10272, 0xE200000000000000);
    v142 = v82;
    v91 = sub_23328E51C();
    MEMORY[0x23839B7E0](v91);

    MEMORY[0x23839B7E0](0x636E6174736E6920, 0xED00002929732865);
    sub_23328D27C();

    ++v73;
    v42 = v129;
    v43 = v134;
    v52 = v135;
    v51 = v136;
    v71 = v131;
    if (v139 == v130)
    {
      goto LABEL_8;
    }
  }

  swift_willThrow();
  v144 = 0;
  v145 = 0xE000000000000000;
  v92 = v81;
  sub_23328E24C();

  v144 = 0xD000000000000020;
  v145 = 0x80000002332AD260;
  v93 = [v75 v74[225]];
  if (v93)
  {
    v94 = v93;

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v95 = sub_23328D98C();
    v97 = v96;

    MEMORY[0x23839B7E0](v95, v97);

    MEMORY[0x23839B7E0](8238, 0xE200000000000000);
    v98 = sub_23328CA6C();
    v99 = [v98 debugDescription];

    v100 = sub_23328D98C();
    v102 = v101;

    MEMORY[0x23839B7E0](v100, v102);

    sub_23328D1BC();
    sub_233254FD8(&qword_27DDE3688, MEMORY[0x277CE66C0]);
    swift_allocError();
    sub_23328D1CC();
    swift_willThrow();

    v112(v114, v116);
    goto LABEL_28;
  }

  __break(1u);
}

uint64_t sub_23324D31C(uint64_t a1, void *a2, void *a3)
{
  v4[6] = a1;
  v4[7] = v3;
  v5 = a2[1];
  v4[8] = *a2;
  v4[9] = v5;
  v6 = a3[1];
  v4[10] = *a3;
  v4[11] = v6;
  return MEMORY[0x2822009F8](sub_23324D34C, 0, 0);
}

uint64_t sub_23324D34C()
{
  v2 = v0[5].i64[0];
  v1 = v0[5].i64[1];
  v3 = v0[4].i64[0];
  v4 = v0[4].i64[1];
  v13 = v0[3];
  sub_23328D30C();
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000027, 0x80000002332AD290);
  v5 = sub_23328CE3C();
  MEMORY[0x23839B7E0](v5);

  MEMORY[0x23839B7E0](0x3D656372756F7320, 0xE800000000000000);
  v0[1].i64[0] = v3;
  v0[1].i64[1] = v4;
  sub_233144FD0();
  v6 = sub_23328E51C();
  MEMORY[0x23839B7E0](v6);

  MEMORY[0x23839B7E0](0x3D74656772617420, 0xE800000000000000);
  v0[2].i64[0] = v2;
  v0[2].i64[1] = v1;
  v7 = sub_23328E51C();
  MEMORY[0x23839B7E0](v7);

  sub_23328D27C();

  v8 = swift_task_alloc();
  v0[6].i64[0] = v8;
  v8[1] = vextq_s8(v13, v13, 8uLL);
  v8[2].i64[0] = v3;
  v8[2].i64[1] = v4;
  v8[3].i64[0] = v2;
  v8[3].i64[1] = v1;
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  v0[6].i64[1] = v10;
  *v10 = v0;
  v10[1] = sub_23324D5AC;
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v10, 0, 0, 0xD000000000000036, 0x80000002332AD2C0, sub_233255228, v8, v11);
}

uint64_t sub_23324D5AC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_23324D6C8;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_233257C7C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23324D6C8()
{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t sub_23324D72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  sub_233237A9C();
  v23[0] = a4;
  v23[1] = a5;
  v22[0] = a6;
  v22[1] = a7;
  (*(v13 + 16))(v16, a1, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  TTSVBService.createSupplementaryModelForVoice(voiceID:sourceVersion:targetVersion:completion:)(v21, v23, v22);
}

uint64_t sub_23324D8B8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_23324D8D8, 0, 0);
}

uint64_t sub_23324D8D8()
{
  v7 = v0[1];
  sub_23328D30C();
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000033, 0x80000002332AD300);
  v1 = sub_23328CE3C();
  MEMORY[0x23839B7E0](v1);

  sub_23328D27C();

  v2 = swift_task_alloc();
  v0[2].i64[0] = v2;
  v2[1] = vextq_s8(v7, v7, 8uLL);
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[2].i64[1] = v4;
  *v4 = v0;
  v4[1] = sub_23324DA70;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000027, 0x80000002332AD340, sub_233255258, v2, v5);
}

uint64_t sub_23324DA70()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_23319D5D4;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_23319D898;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23324DB8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_233237A9C();
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  TTSVBService.synthesizeAudioSamplesForVoice(withID:completion:)();
}

uint64_t sub_23324DCEC(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - v8;
  sub_233121D34(a1, v13 - v8, &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_233257410(v9, v5, type metadata accessor for TTSVBError);
    sub_233254FD8(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    v10 = swift_allocError();
    sub_233257478(v5, v11, type metadata accessor for TTSVBError);
    v13[1] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    sub_23328DC8C();
    return sub_2332574E0(v5, type metadata accessor for TTSVBError);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    return sub_23328DC9C();
  }
}

uint64_t sub_23324DEE8(uint64_t a1, char a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_23324DF0C, 0, 0);
}

uint64_t sub_23324DF0C()
{
  sub_23328D1FC();
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_233297630;
  *(v3 + 32) = 25389;
  *(v3 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332AD370);
  v4 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v4);

  MEMORY[0x23839B7E0](0xD000000000000014, 0x80000002332AD3A0);
  *(v3 + 48) = 0;
  *(v3 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v3);

  if (v1 == 1)
  {
    sub_23328D30C();
    sub_23328D27C();
  }

  else
  {
    v5 = *(v0 + 16);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_233297630;
    *(v6 + 32) = 25389;
    *(v6 + 40) = 0xE200000000000000;
    sub_23328E24C();

    v7 = sub_23328CC6C();
    MEMORY[0x23839B7E0](v7);

    *(v6 + 48) = 0xD00000000000001BLL;
    *(v6 + 56) = 0x80000002332AD3C0;
    sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v6);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_23324E16C(uint64_t a1, char a2)
{
  v7 = *MEMORY[0x277D85DE8];
  *(v2 + 80) = a2;
  *(v2 + 56) = a1;
  v3 = type metadata accessor for TTSVBPath();
  *(v2 + 64) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23324E230, 0, 0);
}

uint64_t sub_23324E230()
{
  v78 = *MEMORY[0x277D85DE8];
  sub_23328D20C();
  v73 = *(v0 + 80);
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_233297630;
  *(v2 + 32) = 25389;
  *(v2 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000030, 0x80000002332AD410);
  v3 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v3);

  MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AD450);
  *(v2 + 48) = 0;
  *(v2 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v2);

  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_233297630;
  *(v4 + 32) = 25389;
  *(v4 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000030, 0x80000002332AD470);
  v5 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v5);

  MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AD4B0);
  *(v4 + 48) = 0;
  *(v4 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v4);

  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_233297630;
  *(v6 + 32) = 25389;
  *(v6 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD00000000000003ALL, 0x80000002332AD4D0);
  v7 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v7);

  MEMORY[0x23839B7E0](0xD000000000000027, 0x80000002332AD510);
  *(v6 + 48) = 0;
  *(v6 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v6);

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_233297630;
  *(v8 + 32) = 25389;
  *(v8 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD00000000000003FLL, 0x80000002332AD540);
  v9 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v9);

  MEMORY[0x23839B7E0](0xD00000000000002CLL, 0x80000002332AD580);
  *(v8 + 48) = 0;
  *(v8 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v8);

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_233297630;
  *(v10 + 32) = 25389;
  *(v10 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000036, 0x80000002332AD5B0);
  v11 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v11);

  MEMORY[0x23839B7E0]();
  *(v10 + 48) = 0;
  *(v10 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v10);

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_233297630;
  *(v12 + 32) = 25389;
  *(v12 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000033, 0x80000002332AD620);
  v13 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v13);

  MEMORY[0x23839B7E0](0xD00000000000001ELL, 0x80000002332AD660);
  *(v12 + 48) = 0;
  *(v12 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v12);

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_233297630;
  *(v14 + 32) = 25389;
  *(v14 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000034, 0x80000002332AD680);
  v15 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v15);

  MEMORY[0x23839B7E0]();
  *(v14 + 48) = 0;
  *(v14 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v14);

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_233297630;
  *(v16 + 32) = 25389;
  *(v16 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000039, 0x80000002332AD6F0);
  v17 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v17);

  MEMORY[0x23839B7E0](0xD000000000000026, 0x80000002332AD730);
  *(v16 + 48) = 0;
  *(v16 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v16);

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_233297630;
  *(v18 + 32) = 25389;
  *(v18 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD00000000000002DLL, 0x80000002332AD760);
  v19 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v19);

  MEMORY[0x23839B7E0]();
  *(v18 + 48) = 0;
  *(v18 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v18);

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_233297630;
  *(v20 + 32) = 25389;
  *(v20 + 40) = 0xE200000000000000;
  sub_23328E24C();

  v21 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v21);

  MEMORY[0x23839B7E0](0xD000000000000011, 0x80000002332AD7D0);
  *(v20 + 48) = 0xD00000000000001ELL;
  *(v20 + 56) = 0x80000002332AD7B0;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v20);

  if (v73 == 1)
  {
    sub_23328D30C();
    sub_23328D27C();
  }

  else
  {
    v22 = *(v0 + 56);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_233297630;
    *(v23 + 32) = 25389;
    *(v23 + 40) = 0xE200000000000000;
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD00000000000004FLL, 0x80000002332AD7F0);
    v24 = sub_23328CC6C();
    MEMORY[0x23839B7E0](v24);

    MEMORY[0x23839B7E0](0xD00000000000002FLL, 0x80000002332AD840);
    *(v23 + 48) = 0;
    *(v23 + 56) = 0xE000000000000000;
    sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v23);

    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_233297630;
    *(v25 + 32) = 25389;
    *(v25 + 40) = 0xE200000000000000;
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD000000000000062, 0x80000002332AD870);
    v26 = sub_23328CC6C();
    MEMORY[0x23839B7E0](v26);

    MEMORY[0x23839B7E0](0xD000000000000038, 0x80000002332AD8E0);
    *(v25 + 48) = 0;
    *(v25 + 56) = 0xE000000000000000;
    sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v25);
  }

  v27 = *(v0 + 56);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_233297630;
  *(v28 + 32) = 25389;
  *(v28 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000030, 0x80000002332AD920);
  v29 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v29);

  MEMORY[0x23839B7E0](0xD00000000000001BLL, 0x80000002332AD960);
  *(v28 + 48) = 0;
  *(v28 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v28);

  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_233297630;
  *(v30 + 32) = 25389;
  *(v30 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD00000000000002BLL, 0x80000002332AD980);
  v31 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v31);

  MEMORY[0x23839B7E0](0xD000000000000016, 0x80000002332AD9B0);
  *(v30 + 48) = 0;
  *(v30 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v30);

  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_233297630;
  *(v32 + 32) = 25389;
  *(v32 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000031, 0x80000002332AD9D0);
  v33 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v33);

  MEMORY[0x23839B7E0](0xD00000000000001CLL, 0x80000002332ADA10);
  *(v32 + 48) = 0;
  *(v32 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v32);

  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_233297630;
  *(v34 + 32) = 25389;
  *(v34 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000035, 0x80000002332ADA30);
  v35 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v35);

  MEMORY[0x23839B7E0](0xD00000000000001ELL, 0x80000002332ADA70);
  *(v34 + 48) = 0;
  *(v34 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v34);

  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_233297630;
  *(v36 + 32) = 25389;
  *(v36 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000033, 0x80000002332ADA90);
  v37 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v37);

  MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332ADAD0);
  *(v36 + 48) = 0;
  *(v36 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v36);

  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_233297630;
  *(v38 + 32) = 25389;
  *(v38 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD00000000000002ELL, 0x80000002332ADB00);
  v39 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v39);

  MEMORY[0x23839B7E0](0xD000000000000020, 0x80000002332ADB30);
  *(v38 + 48) = 0;
  *(v38 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v38);

  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_233297630;
  *(v40 + 32) = 25389;
  *(v40 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000032, 0x80000002332ADB60);
  v41 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v41);

  MEMORY[0x23839B7E0](0xD000000000000023, 0x80000002332ADBA0);
  *(v40 + 48) = 0;
  *(v40 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v40);

  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_233297630;
  *(v42 + 32) = 25389;
  *(v42 + 40) = 0xE200000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000028, 0x80000002332ADBD0);
  v43 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v43);

  MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332ADC00);
  *(v42 + 48) = 0;
  *(v42 + 56) = 0xE000000000000000;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v42);

  v44 = sub_23328CC9C();
  v76 = *(v44 - 8);
  v77 = v44;
  v45 = *(v76 + 64) + 15;
  v46 = swift_task_alloc();
  strcpy((v0 + 16), "VoicePackages");
  *(v0 + 30) = -4864;
  v47 = sub_23328CB3C();
  v48 = *(v47 - 8);
  v75 = v48[8] + 15;
  v49 = swift_task_alloc();
  v74 = *MEMORY[0x277CC91E0];
  v72 = v48[13];
  v72();
  sub_23311A294();
  sub_23328CC8C();
  v71 = v48[1];
  v71(v49, v47);

  v50 = [objc_opt_self() defaultManager];
  v51 = sub_23328CBCC();
  *(v0 + 48) = 0;
  LODWORD(v27) = [v50 createDirectoryAtURL:v51 withIntermediateDirectories:1 attributes:0 error:v0 + 48];

  v52 = *(v0 + 48);
  if (v27)
  {
    v53 = *(v0 + 72);
    v69 = *(v0 + 64);
    v70 = *(v0 + 56);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_233297630;
    *(v54 + 32) = 25389;
    *(v54 + 40) = 0xE200000000000000;
    v55 = v52;
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD00000000000004DLL, 0x80000002332ADC20);
    v56 = sub_23328CC6C();
    MEMORY[0x23839B7E0](v56);

    *(v54 + 48) = 0;
    *(v54 + 56) = 0xE000000000000000;
    sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v54);

    v57 = swift_task_alloc();
    swift_storeEnumTagMultiPayload();
    TTSVBPath.url.getter(v57);
    sub_2332574E0(v53, type metadata accessor for TTSVBPath);
    v58 = swift_task_alloc();
    *(v0 + 32) = 0xD00000000000001ALL;
    *(v0 + 40) = 0x80000002332ADC70;
    v59 = swift_task_alloc();
    (v72)(v59, v74, v47);
    sub_23328CC8C();
    v71(v59, v47);

    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_233297630;
    *(v60 + 32) = 25389;
    *(v60 + 40) = 0xE200000000000000;
    sub_23328E24C();

    v61 = sub_23328CC6C();
    MEMORY[0x23839B7E0](v61);

    MEMORY[0x23839B7E0](2564135, 0xE300000000000000);
    v62 = sub_23328CC6C();
    MEMORY[0x23839B7E0](v62);

    MEMORY[0x23839B7E0](39, 0xE100000000000000);
    *(v60 + 48) = 0xD000000000000010;
    *(v60 + 56) = 0x80000002332ADC90;
    sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v60);

    v63 = *(v76 + 8);
    v63(v58, v77);
    v63(v57, v77);
    v63(v46, v77);
  }

  else
  {
    v66 = v52;
    sub_23328CA7C();

    swift_willThrow();
    (*(v76 + 8))(v46, v77);

    v67 = *(v0 + 72);
  }

  v64 = *(v0 + 8);
  v65 = *MEMORY[0x277D85DE8];

  return v64();
}

uint64_t sub_23324F66C()
{
  v43 = v0;
  v1 = v0;
  sub_23328D30C();
  sub_23328D27C();

  v37 = sub_23328CC9C();
  v38 = *(v37 - 8);
  v2 = *(v38 + 64) + 15;
  v36 = swift_task_alloc();
  v39 = *sub_2331DEBE8();
  v3 = swift_task_alloc();
  v4 = v39;
  sub_23328CBBC();
  sub_23328E24C();

  v40 = 0xD000000000000015;
  v41 = 0x80000002332ADD20;
  v5 = sub_23328CE1C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  sub_23328CE0C();
  v9 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v10 = sub_23328D95C();
  [v9 setDateFormat_];

  v11 = sub_23328CD9C();
  v12 = [v9 stringFromDate_];

  v13 = sub_23328D98C();
  v15 = v14;

  (*(v6 + 8))(v8, v5);
  MEMORY[0x23839B7E0](v13, v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E20, qword_23329F460);
  inited = swift_initStackObject();
  v17 = *MEMORY[0x277CCA180];
  *(inited + 32) = *MEMORY[0x277CCA180];
  *(inited + 16) = xmmword_233297B30;
  *(inited + 64) = MEMORY[0x277D83B88];
  *(inited + 40) = 511;
  v18 = v17;
  v19 = sub_2331E2E64(inited);
  swift_setDeallocating();
  sub_233121E04(inited + 32, &qword_27DDE2E28, &qword_23329B310);
  v40 = 0;
  v41 = 0;
  v42 = -1;
  _TTSVBFileManager.getOrCreateDirectory(in:named:attributes:problem:)(v3, 0xD000000000000015, 0x80000002332ADD20, v19, &v40, v36);
  v34 = *(v1 + 88);

  v35 = *(v38 + 8);
  v35(v3, v37);

  sub_23328D30C();
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_23328E24C();

  v40 = 0xD000000000000029;
  v41 = 0x80000002332ADD60;
  v20 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v20);

  sub_23328D27C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_23329F260;
  strcpy((v21 + 32), "voicebanking");
  *(v21 + 45) = 0;
  *(v21 + 46) = -5120;
  *(v21 + 48) = 0x65736F6E67616964;
  *(v21 + 56) = 0xE800000000000000;
  *(v21 + 64) = 0xD00000000000001ALL;
  *(v21 + 72) = 0x80000002332ADD90;
  *(v21 + 80) = 0x6C72752D2DLL;
  *(v21 + 88) = 0xE500000000000000;
  *(v21 + 96) = sub_23328CC6C();
  *(v21 + 104) = v22;
  if (v34)
  {
    v23 = 0x6B636975712D2DLL;
  }

  else
  {
    v23 = 0x6975712D6F6E2D2DLL;
  }

  if (v34)
  {
    v24 = 0xE700000000000000;
  }

  else
  {
    v24 = 0xEA00000000006B63;
  }

  *(v21 + 112) = v23;
  *(v21 + 120) = v24;
  sub_233255260(0xD000000000000014, 0x80000002332ADDB0, v21);

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_23329F260;
  strcpy((v25 + 32), "voicebanking");
  *(v25 + 45) = 0;
  *(v25 + 46) = -5120;
  *(v25 + 48) = 0x65736F6E67616964;
  *(v25 + 56) = 0xE800000000000000;
  *(v25 + 64) = 0xD000000000000016;
  *(v25 + 72) = 0x80000002332ADDD0;
  *(v25 + 80) = 0x6C72752D2DLL;
  *(v25 + 88) = 0xE500000000000000;
  *(v25 + 96) = sub_23328CC6C();
  *(v25 + 104) = v26;
  *(v25 + 112) = v23;
  *(v25 + 120) = v24;
  sub_233255260(0xD000000000000014, 0x80000002332ADDB0, v25);

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_233297630;
  *(v27 + 32) = 25389;
  *(v27 + 40) = 0xE200000000000000;
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_23328E24C();

  v40 = 0xD000000000000012;
  v41 = 0x80000002332ADDF0;
  v28 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v28);

  MEMORY[0x23839B7E0](0x207A672E7261742ELL, 0xEB0000000020432DLL);
  v29 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v29);

  MEMORY[0x23839B7E0](11808, 0xE200000000000000);
  v30 = v41;
  *(v27 + 48) = v40;
  *(v27 + 56) = v30;
  sub_233255260(0x68737A2F6E69622FLL, 0xE800000000000000, v27);

  sub_23328D30C();
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_23328E24C();

  v40 = 0xD000000000000015;
  v41 = 0x80000002332ADE10;
  v31 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v31);

  MEMORY[0x23839B7E0](0x7A672E7261742ELL, 0xE700000000000000);
  sub_23328D27C();

  v35(v36, v37);

  v32 = *(v1 + 8);

  return v32();
}

uint64_t sub_23324FE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36D8, &qword_23329F478) - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for TTSVBInstalledVoiceModel();
  v6[11] = v8;
  v9 = *(v8 - 8);
  v6[12] = v9;
  v10 = *(v9 + 64) + 15;
  v6[13] = swift_task_alloc();
  v11 = *(*v5 + 216);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v6[14] = v13;
  *v13 = v6;
  v13[1] = sub_23325001C;

  return v15();
}

uint64_t sub_23325001C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = v4[13];
    v8 = v4[10];

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    v4[16] = a1;

    return MEMORY[0x2822009F8](sub_233250180, 0, 0);
  }
}

uint64_t sub_233250180()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[4];
  *(swift_task_alloc() + 16) = v6;
  sub_233250B6C(sub_23325554C, v1, v5);

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v7 = v0[4];
    sub_233121E04(v0[10], &qword_27DDE36D8, &qword_23329F478);
    sub_23328E24C();

    sub_23328CE8C();
    sub_233254F90(&qword_27DDE2830, MEMORY[0x28220C048]);
    v8 = sub_23328E51C();
    MEMORY[0x23839B7E0](v8);

    sub_23328D1BC();
    sub_233254FD8(&qword_27DDE3688, MEMORY[0x277CE66C0]);
    swift_allocError();
    sub_23328D1CC();
    swift_willThrow();
    v9 = v0[13];
    v10 = v0[10];

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[13];
    v15 = v0[7];
    v14 = v0[8];
    v17 = v0[5];
    v16 = v0[6];
    v38 = v16;
    v37 = v17;
    sub_233257410(v0[10], v13, type metadata accessor for TTSVBInstalledVoiceModel);
    sub_23328D30C();
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD000000000000013, 0x80000002332ADE60);
    MEMORY[0x23839B7E0](v17, v16);
    MEMORY[0x23839B7E0](0x4D6563696F562027, 0xEE005B3D6C65646FLL);
    swift_getKeyPath();
    TTSVBInstalledVoiceModel.subscript.getter();

    MEMORY[0x23839B7E0](v0[2], v0[3]);

    MEMORY[0x23839B7E0](2108704, 0xE300000000000000);
    swift_getKeyPath();
    v18 = sub_23328CE8C();
    v19 = *(v18 - 8);
    v20 = *(v19 + 64) + 15;
    v21 = swift_task_alloc();
    TTSVBInstalledVoiceModel.subscript.getter();

    v22 = sub_23328CE3C();
    v24 = v23;
    (*(v19 + 8))(v21, v18);
    MEMORY[0x23839B7E0](v22, v24);

    MEMORY[0x23839B7E0](0x656C61636F6C205DLL, 0xE90000000000003DLL);
    MEMORY[0x23839B7E0](v15, v14);
    sub_23328D27C();

    sub_23328D30C();
    sub_23328E24C();

    v25 = sub_23328CC9C();
    v26 = *(v25 - 8);
    v27 = *(v26 + 64) + 15;
    v28 = swift_task_alloc();
    TTSVBInstalledVoiceModel.assetDataURL.getter();
    v29 = sub_23328CC6C();
    v31 = v30;
    (*(v26 + 8))(v28, v25);
    MEMORY[0x23839B7E0](v29, v31);

    sub_23328D27C();

    swift_unownedRetainStrong();
    swift_unownedRetain();
    v32 = swift_unownedRetain();

    v33 = swift_task_alloc();
    v0[17] = v33;
    v33[2] = v32;
    v33[3] = v15;
    v33[4] = v14;
    v33[5] = v37;
    v33[6] = v38;
    v33[7] = v13;
    v34 = *(MEMORY[0x277D85A40] + 4);
    v35 = swift_task_alloc();
    v0[18] = v35;
    *v35 = v0;
    v35[1] = sub_2332507E0;
    v36 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v35, 0, 0, 0xD00000000000002ELL, 0x80000002332ADEA0, sub_23325557C, v33, v36);
  }
}

uint64_t sub_2332507E0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 72);
  swift_unownedRelease();
  if (v0)
  {

    v7 = sub_2332509D4;
  }

  else
  {
    swift_unownedRelease();

    v7 = sub_233250944;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_233250944()
{
  v1 = v0[10];
  sub_2332574E0(v0[13], type metadata accessor for TTSVBInstalledVoiceModel);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2332509D4()
{
  v1 = v0[13];
  v2 = v0[9];
  swift_unownedRelease();
  sub_2332574E0(v1, type metadata accessor for TTSVBInstalledVoiceModel);
  v3 = v0[19];
  v4 = v0[13];
  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_233250A6C()
{
  swift_getKeyPath();
  v0 = sub_23328CE8C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTSVBInstalledVoiceModel.subscript.getter();

  v5 = sub_23328CE5C();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_233250B6C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for TTSVBInstalledVoiceModel();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_233257478(v13, v11, type metadata accessor for TTSVBInstalledVoiceModel);
      v15 = a1(v11);
      if (v3)
      {
        return sub_2332574E0(v11, type metadata accessor for TTSVBInstalledVoiceModel);
      }

      if (v15)
      {
        break;
      }

      sub_2332574E0(v11, type metadata accessor for TTSVBInstalledVoiceModel);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_233257410(v11, v19, type metadata accessor for TTSVBInstalledVoiceModel);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

uint64_t sub_233250D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a1;
  v23 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  swift_unownedRetainStrong();
  v16 = sub_233237B04();

  v24 = 0x3D676E616C5C1BLL;
  v25 = 0xE700000000000000;
  MEMORY[0x23839B7E0](a3, a4);
  MEMORY[0x23839B7E0](92, 0xE100000000000000);

  MEMORY[0x23839B7E0](a5, a6);

  v17 = v24;
  v18 = v25;
  (*(v12 + 16))(v15, v22, v11);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = swift_allocObject();
  (*(v12 + 32))(v20 + v19, v15, v11);
  sub_233250F2C(v17, v18, v23, sub_233257240, v20);
}

void sub_233250F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = sub_23328CC9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTSVBInstalledVoiceModel.assetDataURL.getter();
  sub_23328CC6C();
  (*(v10 + 8))(v13, v9);
  v14 = objc_allocWithZone(MEMORY[0x277D603F0]);
  v15 = sub_23328D95C();

  v16 = [v14 initWithPath_];

  v17 = [objc_allocWithZone(MEMORY[0x277D60400]) initWithVoiceAsset:v16 resourceAsset:0];
  v18 = *(v6 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport11SpeechSynth_siriVoice);
  *(v6 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport11SpeechSynth_siriVoice) = v17;
  v19 = v17;

  if (v19)
  {
    v20 = [objc_allocWithZone(MEMORY[0x277D60408]) initWithVoice_];

    v21 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport11SpeechSynth_siriSynth;
    v22 = *(v6 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport11SpeechSynth_siriSynth);
    *(v6 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport11SpeechSynth_siriSynth) = v20;

    v23 = [objc_allocWithZone(MEMORY[0x277D603F8]) init];
    v24 = sub_23328D95C();
    [v23 setText_];

    [v23 setSolutionType_];
    [v23 setType_];
    [v23 setUseCache_];
    v25 = *(v6 + v21);
    if (v25)
    {
      v26 = swift_allocObject();
      *(v26 + 16) = a4;
      *(v26 + 24) = a5;
      aBlock[4] = sub_23325558C;
      aBlock[5] = v26;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2331889C4;
      aBlock[3] = &block_descriptor_8;
      v27 = _Block_copy(aBlock);
      v28 = v25;

      v29 = [v28 startTaskWithRequest:v23 completion:v27];

      _Block_release(v27);
      v23 = v29;
      v16 = v28;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_233251254(void *a1)
{
  sub_23328D30C();
  sub_23328E24C();

  v2 = 0xD000000000000011;
  if (a1)
  {
    v2 = sub_23328D98C();
    v4 = v3;
  }

  else
  {
    v4 = 0x80000002332ADEF0;
  }

  MEMORY[0x23839B7E0](v2, v4);

  sub_23328D27C();

  v5 = *sub_233165CA0();
  v6 = a1;
  v7 = v5;
  NSUserDefaults.ttsvb_overrideBuiltInMicPolarPattern.setter(a1);
}

void sub_233251360(uint64_t a1)
{
  sub_23328D30C();
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000035, 0x80000002332ADF10);
  v2 = sub_23328E51C();
  MEMORY[0x23839B7E0](v2);

  sub_23328D27C();

  v3 = *sub_233165CA0();
  NSUserDefaults.ttsvb_internalPhraseCountOverride.setter(a1, 0);
}

uint64_t sub_23325144C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 288) = a8;
  *(v9 + 296) = v8;
  *(v9 + 59) = v11;
  *(v9 + 272) = a6;
  *(v9 + 280) = a7;
  *(v9 + 256) = a4;
  *(v9 + 264) = a5;
  *(v9 + 240) = a2;
  *(v9 + 248) = a3;
  *(v9 + 232) = a1;
  return MEMORY[0x2822009F8](sub_233251488, 0, 0);
}

uint64_t sub_233251488()
{
  v2 = v0[35];
  if (v2)
  {
    v145 = 0;
    v3 = v0 + 34;
    v144 = 2;
    v4 = v2;
  }

  else
  {
    v4 = v0[31];
    v3 = v0 + 30;
    swift_bridgeObjectRetain_n();
    v144 = 1;
    v145 = 1284;
  }

  v154 = *v3;
  swift_bridgeObjectRetain_n();
  v5 = [objc_opt_self() _speechVoicesIncludingSiriAndSuperCompact];
  sub_233144EEC(0, &qword_27DDE3728, 0x277CB84A8);
  v6 = sub_23328DBFC();

  v151 = v4;
  v152 = v6;
  v7 = v6 >> 62;
  if (v2)
  {
    if (v7)
    {
      goto LABEL_207;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23328E19C())
    {
      v9 = 0;
      while (1)
      {
        if ((v152 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x23839BFC0](v9, v152);
        }

        else
        {
          if (v9 >= *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_198;
          }

          v10 = *(v152 + 8 * v9 + 32);
        }

        v1 = v10;
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v12 = [v10 identifier];
        v13 = sub_23328D98C();
        v15 = v14;

        *(v150 + 112) = v13;
        *(v150 + 120) = v15;
        *(v150 + 128) = v154;
        *(v150 + 136) = v151;
        sub_23311A294();
        LOBYTE(v12) = sub_23328E0AC();

        if (v12)
        {

          goto LABEL_73;
        }

        ++v9;
        if (v11 == i)
        {
          goto LABEL_208;
        }
      }

      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      ;
    }

LABEL_208:

    sub_23328E24C();

    v4 = v151;
    MEMORY[0x23839B7E0](v154, v151);
    goto LABEL_232;
  }

  LOBYTE(v16) = v145;
  v17 = BYTE1(v145) != 5 || v145 == 0;
  if (v17)
  {
    v18 = v145 >> 8;
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  v149 = v18;
  v156 = MEMORY[0x277D84F90];
  if (v7)
  {
    goto LABEL_211;
  }

  for (j = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_23328E19C())
  {
    v20 = MEMORY[0x277D84F90];
    v147 = j;
    if (!j)
    {
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
      {
        goto LABEL_212;
      }

LABEL_77:
      if ((v20 & 0x4000000000000000) != 0)
      {
        goto LABEL_212;
      }

      if (*(v20 + 16))
      {
        goto LABEL_117;
      }

LABEL_79:

      v20 = MEMORY[0x277D84F90];
      v157 = MEMORY[0x277D84F90];
      if (!j)
      {
        goto LABEL_117;
      }

      v47 = 0;
      v48 = v152 & 0xC000000000000001;
      v49 = v152 & 0xFFFFFFFFFFFFFF8;
      v148 = *MEMORY[0x277D70450];
      v143 = *MEMORY[0x277D70448];
      v50 = *MEMORY[0x277D70440];
      while (1)
      {
        if (v48)
        {
          v51 = MEMORY[0x23839BFC0](v47, v152);
        }

        else
        {
          if (v47 >= *(v49 + 16))
          {
            goto LABEL_204;
          }

          v51 = *(v152 + 8 * v47 + 32);
        }

        v1 = v51;
        v52 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          goto LABEL_203;
        }

        v53 = [v51 language];
        sub_23328D98C();

        LOBYTE(v53) = sub_23328DABC();

        if ((v53 & 1) == 0)
        {
          goto LABEL_81;
        }

        if (v149 != 5)
        {
          v54 = v48;
          v55 = [v1 identifier];
          sub_23328D98C();

          sub_23328D98C();
          v56 = sub_23328DABC();

          if (v56)
          {

            v57 = 0xE400000000000000;
            v58 = 1769300333;
          }

          else if (sub_23328DABC())
          {

            v57 = 0xE400000000000000;
            v58 = 1634627435;
          }

          else
          {
            sub_23328D98C();
            v59 = sub_23328DABC();

            if (v59)
            {

              v58 = 0x6C61746E6963616DLL;
              v57 = 0xE90000000000006BLL;
            }

            else
            {
              sub_23328D98C();
              v60 = sub_23328DABC();

              if (v60)
              {
                v58 = 0x6E6F6870797267;
              }

              else
              {
                v58 = 0x726568746FLL;
              }

              if (v60)
              {
                v57 = 0xE700000000000000;
              }

              else
              {
                v57 = 0xE500000000000000;
              }
            }
          }

          v48 = v54;
          if (v149)
          {
            v49 = v152 & 0xFFFFFFFFFFFFFF8;
            if (v149 == 1)
            {
              v61 = 0xE400000000000000;
              if (v58 != 1634627435)
              {
                goto LABEL_110;
              }
            }

            else
            {
              v61 = 0xE500000000000000;
              if (v58 != 0x726568746FLL)
              {
                goto LABEL_110;
              }
            }
          }

          else
          {
            v61 = 0xE400000000000000;
            v49 = v152 & 0xFFFFFFFFFFFFFF8;
            if (v58 != 1769300333)
            {
              goto LABEL_110;
            }
          }

          if (v57 != v61)
          {
LABEL_110:
            v62 = sub_23328E54C();

            if ((v62 & 1) == 0)
            {
              goto LABEL_81;
            }

            goto LABEL_111;
          }
        }

LABEL_111:
        if (v16 || !sub_233254680())
        {
          sub_23328E2BC();
          v63 = *(v157 + 16);
          sub_23328E2EC();
          sub_23328E2FC();
          sub_23328E2CC();
          goto LABEL_82;
        }

LABEL_81:

LABEL_82:
        ++v47;
        if (v52 == v147)
        {
          v20 = v157;
          goto LABEL_117;
        }
      }
    }

    v21 = 0;
    v146 = *MEMORY[0x277D70450];
    v142 = *MEMORY[0x277D70448];
    v141 = *MEMORY[0x277D70440];
    do
    {
      if ((v152 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x23839BFC0](v21, v152);
      }

      else
      {
        if (v21 >= *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_200;
        }

        v23 = *(v152 + 8 * v21 + 32);
      }

      v1 = v23;
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_199;
      }

      v25 = [v23 language];
      v26 = sub_23328D98C();
      v28 = v27;

      if (v26 == v154 && v4 == v28)
      {
        goto LABEL_43;
      }

      v30 = sub_23328E54C();

      if (v30)
      {
        goto LABEL_44;
      }

      if ((sub_23328DABC() & 1) == 0)
      {
        goto LABEL_70;
      }

      *(v150 + 64) = v154;
      *(v150 + 72) = v4;
      *(v150 + 80) = 7236963;
      *(v150 + 88) = 0xE300000000000000;
      *(v150 + 96) = 26746;
      *(v150 + 104) = 0xE200000000000000;
      v140 = sub_23311A294();
      v139 = MEMORY[0x277D837D0];
      v31 = sub_23328E06C();
      v33 = v32;
      v34 = [v1 language];
      v35 = sub_23328D98C();
      v37 = v36;

      if (v35 == v31 && v37 == v33)
      {

        j = v147;
LABEL_43:

        goto LABEL_44;
      }

      v43 = sub_23328E54C();

      j = v147;
      if ((v43 & 1) == 0)
      {
        goto LABEL_70;
      }

LABEL_44:
      if (v149 != 5)
      {
        v38 = [v1 identifier];
        sub_23328D98C();

        sub_23328D98C();
        v39 = sub_23328DABC();

        if (v39)
        {

          v40 = 0xE400000000000000;
          v41 = 1769300333;
        }

        else if (sub_23328DABC())
        {

          v40 = 0xE400000000000000;
          v41 = 1634627435;
        }

        else
        {
          sub_23328D98C();
          v42 = sub_23328DABC();

          if (v42)
          {

            v41 = 0x6C61746E6963616DLL;
            v40 = 0xE90000000000006BLL;
          }

          else
          {
            sub_23328D98C();
            v44 = sub_23328DABC();

            if (v44)
            {
              v41 = 0x6E6F6870797267;
            }

            else
            {
              v41 = 0x726568746FLL;
            }

            if (v44)
            {
              v40 = 0xE700000000000000;
            }

            else
            {
              v40 = 0xE500000000000000;
            }
          }
        }

        j = v147;
        if (v149)
        {
          if (v149 == 1)
          {
            v45 = 0xE400000000000000;
            if (v41 != 1634627435)
            {
              goto LABEL_69;
            }
          }

          else
          {
            v45 = 0xE500000000000000;
            if (v41 != 0x726568746FLL)
            {
              goto LABEL_69;
            }
          }
        }

        else
        {
          v45 = 0xE400000000000000;
          if (v41 != 1769300333)
          {
            goto LABEL_69;
          }
        }

        if (v40 != v45)
        {
LABEL_69:
          v46 = sub_23328E54C();

          if ((v46 & 1) == 0)
          {
            goto LABEL_70;
          }

          goto LABEL_27;
        }
      }

LABEL_27:
      if (v16 || !sub_233254680())
      {
        sub_23328E2BC();
        v22 = *(v156 + 16);
        sub_23328E2EC();
        sub_23328E2FC();
        sub_23328E2CC();
        goto LABEL_29;
      }

LABEL_70:

LABEL_29:
      ++v21;
    }

    while (v24 != j);
    v20 = v156;
    if ((v156 & 0x8000000000000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_212:
    if (!sub_23328E19C())
    {
      goto LABEL_79;
    }

LABEL_117:

    if (v20 >> 62)
    {
      v64 = sub_23328E19C();
      if (v64)
      {
        goto LABEL_119;
      }

LABEL_215:

      sub_23328E24C();
      MEMORY[0x23839B7E0](0xD000000000000020, 0x80000002332AE2B0);
      MEMORY[0x23839B7E0](v154, v4);
      MEMORY[0x23839B7E0](0x7974696C61757120, 0xE90000000000003ALL);
      if (v16)
      {
        v111 = 0x6669636570736E55;
      }

      else
      {
        v111 = 0x6D6F437265707553;
      }

      if (v16)
      {
        v112 = 0xEB00000000646569;
      }

      else
      {
        v112 = 0xEC00000074636170;
      }

      MEMORY[0x23839B7E0](v111, v112);

      MEMORY[0x23839B7E0](0x3A6570797420, 0xE600000000000000);
      v113 = 0xE500000000000000;
      v114 = 0x726568746FLL;
      if (v149 != 4)
      {
        v114 = 0x6669636570736E55;
        v113 = 0xEB00000000646569;
      }

      v115 = 1634627435;
      if (!v149)
      {
        v115 = 1769300333;
      }

      if (v149 <= 3u)
      {
        v116 = v115;
      }

      else
      {
        v116 = v114;
      }

      if (v149 <= 3u)
      {
        v117 = 0xE400000000000000;
      }

      else
      {
        v117 = v113;
      }

      MEMORY[0x23839B7E0](v116, v117);

LABEL_232:
      sub_23328D1BC();
      sub_233254FD8(&qword_27DDE3688, MEMORY[0x277CE66C0]);
      v118 = swift_allocError();
      sub_23328D1CC();
      swift_willThrow();
      v16 = v150;
      if (!v118)
      {
        goto LABEL_244;
      }

      sub_2332555CC(v154, v4, v145, v144);
      sub_23328E24C();
      *(v150 + 144) = 0;
      *(v150 + 152) = 0xE000000000000000;
      MEMORY[0x23839B7E0](0xD000000000000023, 0x80000002332ADF50);
      *(v150 + 40) = v154;
      *(v150 + 48) = v4;
      *(v150 + 56) = v145;
      *(v150 + 58) = v144;
      sub_23328E30C();
      sub_2332555CC(v154, v4, v145, v144);
      MEMORY[0x23839B7E0](0x3D726F727245202ELL, 0xE800000000000000);
      *(v150 + 224) = v118;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
      sub_23328E30C();
      v119 = *(v150 + 144);
      v120 = *(v150 + 152);
      sub_23328D1BC();
      sub_233254FD8(&qword_27DDE3688, MEMORY[0x277CE66C0]);
      swift_allocError();
      sub_23328D1CC();
      swift_willThrow();

      v121 = *(v150 + 8);

      return v121();
    }

    v64 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v64)
    {
      goto LABEL_215;
    }

LABEL_119:
    if (!v16 || v149 != 5)
    {
      if (v20 >> 62)
      {
        if (sub_23328E19C() > 1)
        {
          goto LABEL_146;
        }

LABEL_133:
        v70 = v20 & 0xC000000000000001;
      }

      else
      {
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1)
        {
          goto LABEL_133;
        }

LABEL_146:
        sub_23328E24C();
        MEMORY[0x23839B7E0](0xD000000000000024, 0x80000002332AE280);
        MEMORY[0x23839B7E0](v154, v4);
        MEMORY[0x23839B7E0](0x7974696C61757120, 0xE90000000000003DLL);
        if (v16)
        {
          v73 = 0x6669636570736E55;
        }

        else
        {
          v73 = 0x6D6F437265707553;
        }

        if (v16)
        {
          v74 = 0xEB00000000646569;
        }

        else
        {
          v74 = 0xEC00000074636170;
        }

        MEMORY[0x23839B7E0](v73, v74);

        MEMORY[0x23839B7E0](0x3D6570797420, 0xE600000000000000);
        v75 = 0xE500000000000000;
        v76 = 0x726568746FLL;
        if (v149 != 4)
        {
          v76 = 0x6669636570736E55;
          v75 = 0xEB00000000646569;
        }

        v77 = 1634627435;
        if (!v149)
        {
          v77 = 1769300333;
        }

        if (v149 <= 3u)
        {
          v78 = v77;
        }

        else
        {
          v78 = v76;
        }

        if (v149 <= 3u)
        {
          v79 = 0xE400000000000000;
        }

        else
        {
          v79 = v75;
        }

        MEMORY[0x23839B7E0](v78, v79);

        MEMORY[0x23839B7E0](10, 0xE100000000000000);
        v1 = 0;
        v80 = v20 & 0xC000000000000001;
        do
        {
          if (v80)
          {
            v81 = MEMORY[0x23839BFC0](v1, v20);
          }

          else
          {
            if (v1 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_206;
            }

            v81 = *(v20 + 8 * v1 + 32);
          }

          v82 = v81;
          v83 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
            goto LABEL_205;
          }

          *(v150 + 216) = v83;
          v84 = sub_23328E51C();
          MEMORY[0x23839B7E0](v84);

          MEMORY[0x23839B7E0](2107694, 0xE300000000000000);
          v85 = [v82 description];
          v86 = sub_23328D98C();
          v88 = v87;

          MEMORY[0x23839B7E0](v86, v88);

          MEMORY[0x23839B7E0](10, 0xE100000000000000);
          MEMORY[0x23839B7E0](8224, 0xE200000000000000);

          ++v1;
          v17 = v83 == v64;
          v4 = v151;
        }

        while (!v17);
        if (v80)
        {
          v89 = MEMORY[0x23839BFC0](0, v20);
        }

        else
        {
          if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_249:
            v1 = MEMORY[0x23839BFC0](0, v20);

            goto LABEL_144;
          }

          v89 = *(v20 + 32);
        }

        v90 = v89;
        v91 = [v89 description];
        v92 = sub_23328D98C();
        v94 = v93;

        MEMORY[0x23839B7E0](v92, v94);

        MEMORY[0x23839B7E0](0xD000000000000027, 0x80000002332AE1F0);

        sub_23328D30C();
        v64 = 0xE000000000000000;
        sub_23328D28C();

        v70 = v20 & 0xC000000000000001;
      }

      v16 = v150;
      if (v70)
      {
        v122 = MEMORY[0x23839BFC0](0, v20);
        goto LABEL_242;
      }

      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_241;
      }

      __break(1u);
      goto LABEL_178;
    }

    v1 = 0;
    v158 = MEMORY[0x277D84F90];
    v65 = v20 & 0xC000000000000001;
    do
    {
      if (v65)
      {
        v66 = MEMORY[0x23839BFC0](v1, v20);
      }

      else
      {
        if (v1 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_202;
        }

        v66 = *(v20 + 8 * v1 + 32);
      }

      v67 = v66;
      v68 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_201;
      }

      if ([v66 isDefault])
      {
        sub_23328E2BC();
        v69 = *(v158 + 16);
        sub_23328E2EC();
        sub_23328E2FC();
        sub_23328E2CC();
      }

      else
      {
      }

      ++v1;
      v4 = v151;
    }

    while (v68 != v64);
    v64 = v158;
    LODWORD(v16) = v158 < 0 || (v158 & 0x4000000000000000) != 0;
    if (v16 != 1)
    {
      break;
    }

    v71 = sub_23328E19C();
    if (!v71)
    {
      goto LABEL_239;
    }

LABEL_139:

    if (v71 == 1)
    {
      if ((v158 & 0xC000000000000001) == 0)
      {
        if (*(v158 + 16))
        {
          v72 = *(v158 + 32);
          goto LABEL_143;
        }

        __break(1u);
LABEL_253:
        v104 = MEMORY[0x23839BFC0](0, v64);
        goto LABEL_193;
      }

LABEL_251:
      v72 = MEMORY[0x23839BFC0](0, v64);
LABEL_143:
      v1 = v72;

LABEL_144:
      v16 = v150;
      goto LABEL_243;
    }

LABEL_178:
    v156 = 0xD00000000000002BLL;
    v159 = 0x80000002332AE1C0;
    MEMORY[0x23839B7E0](v154, v4);
    result = MEMORY[0x23839B7E0](10, 0xE100000000000000);
    if (v16)
    {
      result = sub_23328E19C();
      v96 = result;
    }

    else
    {
      v96 = *(v64 + 16);
    }

    v4 = v64 & 0xC000000000000001;
    if (!v96)
    {
LABEL_190:
      v158 = 0xD000000000000027;
      v159 = 0x80000002332AE1F0;
      if (v4)
      {
        goto LABEL_253;
      }

      if (!*(v64 + 16))
      {
        __break(1u);
        return result;
      }

      v104 = *(v64 + 32);
LABEL_193:
      v105 = v104;
      v106 = [v104 description];
      v107 = sub_23328D98C();
      v109 = v108;

      MEMORY[0x23839B7E0](v107, v109);

      MEMORY[0x23839B7E0](v158, v159);

      sub_23328D30C();
      sub_23328D28C();

      if (v4)
      {
        v110 = MEMORY[0x23839BFC0](0, v64);
      }

      else
      {
        v110 = *(v64 + 32);
      }

      v1 = v110;

LABEL_73:
      v16 = v150;
      v4 = v151;
      goto LABEL_243;
    }

    v1 = 0;
    while (1)
    {
      if (v4)
      {
        v97 = MEMORY[0x23839BFC0](v1, v64);
      }

      else
      {
        if (v1 >= *(v64 + 16))
        {
          goto LABEL_210;
        }

        v97 = *(v64 + 8 * v1 + 32);
      }

      v98 = v97;
      v16 = (v1 + 1);
      if (__OFADD__(v1, 1))
      {
        break;
      }

      v156 = 8224;
      v159 = 0xE200000000000000;
      *(v150 + 208) = v16;
      v99 = sub_23328E51C();
      MEMORY[0x23839B7E0](v99);

      MEMORY[0x23839B7E0](2107694, 0xE300000000000000);
      v100 = [v98 description];
      v101 = sub_23328D98C();
      v103 = v102;

      MEMORY[0x23839B7E0](v101, v103);

      MEMORY[0x23839B7E0](10, 0xE100000000000000);
      MEMORY[0x23839B7E0](8224, 0xE200000000000000);

      ++v1;
      if (v16 == v96)
      {
        goto LABEL_190;
      }
    }

    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    ;
  }

  v71 = *(v158 + 16);
  if (v71)
  {
    goto LABEL_139;
  }

LABEL_239:

  v64 = sub_23328D30C();
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000026, 0x80000002332AE220);
  MEMORY[0x23839B7E0](v154, v151);
  MEMORY[0x23839B7E0](0xD000000000000028, 0x80000002332AE250);
  sub_23328D28C();

  if (v65)
  {
    goto LABEL_249;
  }

  v16 = v150;
  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_251;
  }

LABEL_241:
  v122 = *(v20 + 32);
LABEL_242:
  v1 = v122;

LABEL_243:
  v16[38] = v1;
LABEL_244:
  v123 = v16[37];
  sub_2332555CC(v154, v4, v145, v144);
  sub_2332555CC(v154, v4, v145, v144);
  v124 = v1;
  sub_23328D30C();
  sub_23328E24C();

  v125 = [v124 identifier];

  v126 = sub_23328D98C();
  v128 = v127;

  MEMORY[0x23839B7E0](v126, v128);

  sub_23328D27C();

  sub_23328D30C();
  sub_23328D27C();

  v129 = sub_23328CC9C();
  v16[39] = v129;
  v130 = *(v129 - 8);
  v16[40] = v130;
  v16[41] = *(v130 + 64);
  v131 = swift_task_alloc();
  v16[42] = v131;
  v153 = (*v123 + 384);
  v155 = (*v153 + **v153);
  v132 = (*v153)[1];
  v133 = swift_task_alloc();
  v16[43] = v133;
  *v133 = v16;
  v133[1] = sub_233252E3C;
  v134 = v16[37];
  v135 = v16[32];
  v136 = v16[33];
  v137 = v16[30];
  v138 = v16[31];

  return v155(v131, v137, v138, v135, v136);
}

uint64_t sub_233252E3C()
{
  v2 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_23325371C;
  }

  else
  {
    v3 = sub_233252F50;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_233252F50()
{
  v61 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 336);
  v3 = *(*(sub_23328D9DC() - 8) + 64) + 15;
  swift_task_alloc();
  sub_23328D9CC();
  v4 = sub_23328D91C();
  if (v1)
  {
    v6 = *(v0 + 304);
    (*(*(v0 + 320) + 8))(*(v0 + 336), *(v0 + 312));

LABEL_5:

    v43 = *(v0 + 8);
    goto LABEL_6;
  }

  v7 = v5;
  v55 = v4;
  v8 = *(v0 + 328) + 15;

  v9 = swift_task_alloc();
  v57 = *sub_2331DEBE8();
  v10 = swift_task_alloc();
  v11 = v57;
  sub_23328CBBC();
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_23328E24C();
  *(v0 + 160) = 0;
  *(v0 + 168) = 0xE000000000000000;
  MEMORY[0x23839B7E0](0xD000000000000012, 0x80000002332ADFC0);
  sub_23328CD0C();
  sub_23328DCDC();
  v12 = *(v0 + 160);
  v13 = *(v0 + 168);
  v58 = 0;
  v59 = 0;
  v60 = -1;
  _TTSVBFileManager.getOrCreateDirectory(in:named:attributes:problem:)(v10, v12, v13, 0, &v58, v9);
  v14 = *(v0 + 312);
  v15 = *(v0 + 320);
  v54 = v7;
  v16 = *(v0 + 328);

  v53 = *(v15 + 8);
  v53(v10, v14);

  sub_23328D30C();
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_23328E24C();

  v58 = 0xD00000000000001ALL;
  v59 = 0x80000002332ADFE0;
  v17 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v17);

  sub_23328D27C();

  v18 = swift_task_alloc();
  *(v0 + 176) = 0xD000000000000012;
  *(v0 + 184) = 0x80000002332A8B70;
  v19 = sub_23328CB3C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64) + 15;
  v22 = swift_task_alloc();
  (*(v20 + 104))(v22, *MEMORY[0x277CC91E0], v19);
  sub_23311A294();
  sub_23328CC8C();
  (*(v20 + 8))(v22, v19);

  v23 = [objc_opt_self() defaultManager];
  sub_23328CC6C();
  v24 = sub_23328D95C();

  [v23 createFileAtPath:v24 contents:0 attributes:0];

  sub_233144EEC(0, &qword_27DDE29D8, 0x277CCA9F8);
  v25 = swift_task_alloc();
  v26 = *(v15 + 16);
  v26(v25, v18, v14);
  v27 = sub_23318BF18(v25);
  v29 = *(v0 + 320);
  v28 = *(v0 + 328);
  v30 = *(v0 + 312);
  v51 = *(v0 + 304);
  v52 = v18;
  v49 = *(v0 + 59);
  v47 = *(v0 + 288);
  v50 = v27;

  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v0 + 192) = v55;
  *(v0 + 200) = v54;
  v56 = swift_task_alloc();
  v26(v56, v9, v30);
  v32 = (*(v29 + 80) + 40) & ~*(v29 + 80);
  v33 = (v28 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  *(v35 + 24) = v49 & 1;
  *(v35 + 32) = v46;
  v48 = *(v29 + 32);
  v48(v35 + v32, v56, v30);
  *(v35 + v33) = v51;
  *(v35 + v34) = v50;
  *(v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8)) = v31;
  v36 = v51;

  v37 = v50;

  sub_23328E03C();

  [v37 closeFile];
  swift_beginAccess();
  v38 = *(v31 + 16);
  v39 = *(v0 + 336);
  v41 = *(v0 + 304);
  v40 = *(v0 + 312);
  if (v38)
  {
    swift_willThrow();
    v42 = v38;

    v53(v52, v40);
    v53(v9, v40);
    v53(v39, v40);

    goto LABEL_5;
  }

  v45 = *(v0 + 232);

  v53(v52, v40);
  v53(v39, v40);
  v48(v45, v9, v40);

  v43 = *(v0 + 8);
LABEL_6:

  return v43();
}

uint64_t sub_23325371C()
{
  v1 = *(v0 + 336);

  v2 = *(v0 + 352);
  v3 = *(v0 + 8);

  return v3();
}

void sub_23325378C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v86 = a7;
  v91 = *MEMORY[0x277D85DE8];
  v14 = sub_23328D19C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a5 & 1) == 0)
  {
    swift_beginAccess();
    if (*(a6 + 16) >= a4)
    {
      *a3 = 1;
      goto LABEL_18;
    }
  }

  v83 = a8;
  v84 = v15;
  v85 = a6;
  v82 = a3;
  v19 = sub_23328D9DC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_23328D9CC();
  v22 = sub_23328D99C();
  v24 = v23;
  v25 = *(v20 + 8);
  v25(&v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  if (v24 >> 60 == 15)
  {
LABEL_18:
    v60 = *MEMORY[0x277D85DE8];
    return;
  }

  v81 = v25;
  v26 = objc_opt_self();
  v27 = sub_23328CCBC();
  v89 = 0;
  v28 = [v26 JSONObjectWithData:v27 options:0 error:&v89];

  v29 = v22;
  if (!v28)
  {
    v58 = v89;
    v59 = sub_23328CA7C();

    swift_willThrow();
    sub_23312185C(v29, v24);

    goto LABEL_18;
  }

  v30 = v89;
  sub_23328E0DC();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_23312185C(v22, v24);
    goto LABEL_18;
  }

  v31 = v87;
  if (!v87[2] || (v32 = sub_233144260(0x636E617265747475, 0xEE00656D616E5F65), (v33 & 1) == 0) || (sub_23311B0C0(v31[7] + 32 * v32, &v89), (swift_dynamicCast() & 1) == 0))
  {
    sub_23312185C(v29, v24);
LABEL_17:

    goto LABEL_18;
  }

  if (!v31[2] || (v79 = v87, v80 = v88, v34 = sub_233144260(0x7364726F77, 0xE500000000000000), v35 = v80, (v36 & 1) == 0) || (sub_23311B0C0(v31[7] + 32 * v34, &v89), (swift_dynamicCast() & 1) == 0))
  {
    sub_23312185C(v29, v24);

    goto LABEL_17;
  }

  v75 = a9;
  v77 = v87;
  v78 = v88;
  v76 = sub_23328D30C();
  v89 = 0;
  v90 = 0xE000000000000000;
  sub_23328E24C();

  v89 = 0xD000000000000016;
  v90 = 0x80000002332AE120;
  MEMORY[0x23839B7E0](v79, v35);
  MEMORY[0x23839B7E0](0x786574206661632ELL, 0xEA00000000003D74);
  MEMORY[0x23839B7E0](v77, v78);
  sub_23328D27C();

  v72 = sub_23328CC9C();
  v73 = &v68;
  v71 = *(v72 - 8);
  v37 = *(v71 + 64);
  MEMORY[0x28223BE20](v72);
  v76 = &v68 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v79;
  v90 = v80;

  MEMORY[0x23839B7E0](1717658414, 0xE400000000000000);
  v74 = v90;
  v39 = sub_23328CB3C();
  v70 = &v68;
  v69 = v39;
  v40 = *(v39 - 8);
  v79 = v29;
  v41 = v40;
  v42 = *(v40 + 64);
  v43 = MEMORY[0x28223BE20](v39);
  v45 = &v68 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v41 + 104))(v45, *MEMORY[0x277CC91E0], v43);
  sub_23311A294();
  sub_23328CC8C();
  (*(v41 + 8))(v45, v69);

  v46 = v76;
  v74 = sub_23328CC6C();
  v86 = v47;
  (*(v71 + 8))(v46, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_233297630;
  *(v48 + 32) = 25389;
  *(v48 + 40) = 0xE200000000000000;
  v89 = 0;
  v90 = 0xE000000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD00000000000002CLL, 0x80000002332AE140);
  MEMORY[0x23839B7E0](v77, v78);
  MEMORY[0x23839B7E0](0x6E6564692D2D2022, 0xEF20726569666974);
  v49 = [v83 identifier];
  v83 = sub_23328D98C();
  v51 = v50;

  MEMORY[0x23839B7E0](v83, v51);

  MEMORY[0x23839B7E0](0x757074756F2D2D20, 0xEA00000000002074);
  MEMORY[0x23839B7E0](v74, v86);
  v52 = v90;
  *(v48 + 48) = v89;
  *(v48 + 56) = v52;
  v53 = objc_allocWithZone(sub_23328D1AC());
  v54 = sub_23328D14C();
  sub_23328D16C();

  v55 = v18;
  v56 = v79;
  (*(v84 + 8))(v55, v14);
  v89 = v56;
  v90 = v24;
  sub_2332571F8();
  v57 = sub_23328DDEC();
  MEMORY[0x28223BE20](v57);
  sub_23328D9CC();
  v61 = sub_23328D99C();
  v63 = v62;
  v81(&v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  if (v63 >> 60 != 15)
  {

    v89 = v61;
    v90 = v63;
    sub_23328DDEC();
    sub_233121870(v89, v90);
    sub_23312185C(v79, v24);
    v64 = v85;
    swift_beginAccess();
    v65 = *(v64 + 16);
    v66 = __OFADD__(v65, 1);
    v67 = v65 + 1;
    if (v66)
    {
      __break(1u);
    }

    *(v64 + 16) = v67;
    goto LABEL_18;
  }

  __break(1u);
}

uint64_t sub_2332541C4()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_233254298;
  v3 = *(v0 + 16);

  return MEMORY[0x2822007B8]();
}

uint64_t sub_233254298()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_233254394, 0, 0);
}

uint64_t sub_2332543A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3718, &qword_23329F850);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_233237A9C();
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  TTSVBService.sendMockUserNotification(completion:)();
}

uint64_t VoiceBankingCommand.Helper.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t VoiceBankingCommand.Helper.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

id sub_2332545FC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_233254680()
{
  v1 = v0;
  v2 = [v0 identifier];
  sub_23328D98C();

  v3 = *MEMORY[0x277D70450];
  sub_23328D98C();
  v4 = sub_23328DABC();

  if (v4)
  {

    goto LABEL_9;
  }

  if ((sub_23328DABC() & 1) == 0)
  {
    v5 = *MEMORY[0x277D70448];
    sub_23328D98C();
    v6 = sub_23328DABC();

    if ((v6 & 1) == 0)
    {
      v7 = *MEMORY[0x277D70440];
      sub_23328D98C();
      sub_23328DABC();
    }
  }

  v8 = sub_23328E54C();

  if (v8)
  {
LABEL_9:
    v9 = [v0 identifier];
    sub_23328D98C();

    sub_23328D98C();
    MEMORY[0x23839B7E0](46, 0xE100000000000000);
    MEMORY[0x23839B7E0](0x6D75696D657270, 0xE700000000000000);
    v10 = sub_23328DABC();

    if (v10)
    {

      return 3;
    }

    sub_23328D98C();
    MEMORY[0x23839B7E0](46, 0xE100000000000000);
    MEMORY[0x23839B7E0](0x6465636E61686E65, 0xE800000000000000);
    v12 = sub_23328DABC();

    if (v12)
    {

      return 2;
    }

    sub_23328D98C();
    MEMORY[0x23839B7E0](46, 0xE100000000000000);
    MEMORY[0x23839B7E0](0x746361706D6F63, 0xE700000000000000);
    v13 = sub_23328DABC();

    if (v13)
    {

      return 1;
    }

    sub_23328D98C();
    MEMORY[0x23839B7E0](46, 0xE100000000000000);
    MEMORY[0x23839B7E0](0x6F632D7265707573, 0xED0000746361706DLL);
    v14 = sub_23328DABC();

    if (v14)
    {
      return 0;
    }

    goto LABEL_20;
  }

  result = [v0 quality];
  if (result != 1)
  {
    result = [v0 quality];
    if (result != 2)
    {
LABEL_20:
      sub_23328E24C();

      v15 = [v1 identifier];
      v16 = sub_23328D98C();
      v18 = v17;

      MEMORY[0x23839B7E0](v16, v18);

      sub_23328D1BC();
      sub_233254FD8(&qword_27DDE3688, MEMORY[0x277CE66C0]);
      swift_allocError();
      sub_23328D1CC();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_233254B6C()
{
  v1 = *v0;
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_233254C40()
{
  *v0;
  *v0;
  *v0;
  sub_23328DA3C();
}

uint64_t sub_233254D00()
{
  v1 = *v0;
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_233254DD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_233257C1C();
  *a2 = result;
  return result;
}

void sub_233254E00(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1769300333;
  v5 = 0xE90000000000006BLL;
  v6 = 0x6C61746E6963616DLL;
  v7 = 0xE700000000000000;
  v8 = 0x6E6F6870797267;
  if (v2 != 3)
  {
    v8 = 0x726568746FLL;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1634627435;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_233254E90@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_233257C68(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_233254F24(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_233239714(a1);
}

uint64_t sub_233254F3C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_23323C368(a1);
}

uint64_t sub_233254F80(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 33);
  return sub_23323E540(a1);
}

uint64_t sub_233254F90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_233254FD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_233255050(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_23328DA6C();

    return sub_23328DB0C();
  }

  return result;
}

uint64_t sub_2332550EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE36B8, &qword_23329F3A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23325515C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2332464B0(a1);
}

uint64_t sub_233255164(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2332469FC(a1);
}

uint64_t sub_23325516C(uint64_t a1)
{
  v2 = *(v1 + 56);
  v4 = *(v1 + 57);
  return sub_233249624(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 41), *(v1 + 48));
}

uint64_t sub_2332551CC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_23324B4D0(a1);
}

uint64_t _s6HelperC9StoreInfoVMa()
{
  result = qword_27DDFF040;
  if (!qword_27DDFF040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_233255258(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_23324DB8C(a1);
}

uint64_t sub_233255260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23328D19C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D30C();
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_23328E24C();

  v19 = 0x6E69747563657845;
  v20 = 0xEB00000000203A67;
  MEMORY[0x23839B7E0](a1, a2);
  MEMORY[0x23839B7E0](32, 0xE100000000000000);
  v18 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
  sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0);
  v11 = sub_23328D8FC();
  MEMORY[0x23839B7E0](v11);

  sub_23328D27C();

  v12 = objc_allocWithZone(sub_23328D1AC());

  v13 = sub_23328D14C();
  sub_23328D16C();

  if (sub_23328D17C())
  {
    sub_23328D30C();
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_23328E24C();

    v19 = 0xD000000000000028;
    v20 = 0x80000002332AE380;
    v18 = sub_23328D17C();
    v14 = sub_23328E51C();
    MEMORY[0x23839B7E0](v14);

    MEMORY[0x23839B7E0](8238, 0xE200000000000000);
    v15 = sub_23328D18C();
    MEMORY[0x23839B7E0](v15);

    sub_23328D25C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_23325558C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2332555CC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }

  return result;
}

void sub_2332555E4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = *(sub_23328CC9C() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  sub_23325378C(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32), v3 + v8, *(v3 + v9), *(v3 + v10));
}

unint64_t sub_2332556C8()
{
  result = qword_27DDE36F0;
  if (!qword_27DDE36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE36F0);
  }

  return result;
}

unint64_t sub_23325571C()
{
  result = qword_27DDE36F8;
  if (!qword_27DDE36F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE36F8);
  }

  return result;
}

unint64_t sub_233255774()
{
  result = qword_27DDE3700;
  if (!qword_27DDE3700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3700);
  }

  return result;
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.fetchVoices()()
{
  v2 = *(*v0 + 184);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23322400C;

  return v6();
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.fetchVoices(matching:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 192);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23322400C;

  return v10(a1, a2);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.fetchModels()()
{
  v2 = *(*v0 + 200);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23322400C;

  return v6();
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.fetchModels(matching:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 208);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_233223D00;

  return v10(a1, a2);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.fetchInstalledModels()()
{
  v2 = *(*v0 + 216);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23322400C;

  return v6();
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.fetchTrainingMetadata(voiceID:)(uint64_t a1)
{
  v4 = *(*v1 + 232);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23322400C;

  return v8(a1);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.createVoice(named:localeID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 256);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_233127268;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.importModel(addingToVoice:overrideLocaleID:modelPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 280);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_233127268;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.importTrainingData(creatingVoiceNamed:localeID:dataDirectory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 288);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_233127268;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.deleteVoice(voiceID:)(uint64_t a1)
{
  v4 = *(*v1 + 328);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_233127268;

  return v8(a1);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.deleteModel(modelID:)(uint64_t a1)
{
  v4 = *(*v1 + 336);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_233127268;

  return v8(a1);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.deleteAll(type:)(uint64_t a1)
{
  v4 = *(*v1 + 352);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_233127268;

  return v8(a1);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.trainModel(voiceID:mode:startImmediately:skipValidation:overrideMinimumPhraseCount:useUserRecordingsForTraining:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v16 = *(*v7 + 360);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_233127268;

  return (v20)(a1, a2, a3, a4, a5, a6 & 1, a7);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.cancelTrainingTask(taskID:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 368);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_233127268;

  return v10(a1, a2);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.discardTrainingTasks()()
{
  v2 = *(*v0 + 376);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_233127268;

  return v6();
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.fetchScriptMetadataURL(localeID:scriptType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 384);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_233127268;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.synthesizeAudioSamplesForVoice(withID:)(uint64_t a1)
{
  v4 = *(*v1 + 440);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_233126374;

  return v8(a1);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.generateTrainingData(localeID:scriptType:voiceID:overridePhraseCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(*v8 + 504);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_233127268;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of VoiceBankingCommand.Helper.sendMockUserNotification()()
{
  v2 = *(*v0 + 512);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_233126374;

  return v6();
}

uint64_t sub_233256FC8()
{
  result = sub_23328CC9C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_233257088(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 19))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 18);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2332570D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 18) = -a2;
    }
  }

  return result;
}

uint64_t sub_233257130()
{
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3718, &qword_23329F850) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  sub_23328D30C();
  sub_23328D27C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3718, &qword_23329F850);
  return sub_23328DC9C();
}

unint64_t sub_2332571F8()
{
  result = qword_27DDE3720;
  if (!qword_27DDE3720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3720);
  }

  return result;
}

uint64_t sub_233257240(void *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  if (a1)
  {
    v4 = a1;
    sub_23328D30C();
    sub_23328E24C();

    v5 = sub_23328CA6C();
    v6 = [v5 debugDescription];

    v7 = sub_23328D98C();
    v9 = v8;

    MEMORY[0x23839B7E0](v7, v9);

    sub_23328D25C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    return sub_23328DC8C();
  }

  else
  {
    sub_23328D30C();
    sub_23328D27C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    return sub_23328DC9C();
  }
}

uint64_t sub_233257410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_233257478(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2332574E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2332575D8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_2332576B0(uint64_t a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0) - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_233249DEC(a1, v4, v5);
}

uint64_t getEnumTagSinglePayload for SpeechVoiceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SpeechVoiceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_233257B6C()
{
  result = qword_27DDFF0D8[0];
  if (!qword_27DDFF0D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFF0D8);
  }

  return result;
}

unint64_t sub_233257BC8()
{
  result = qword_27DDFF360[0];
  if (!qword_27DDFF360[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFF360);
  }

  return result;
}

uint64_t sub_233257C1C()
{
  v0 = sub_23328E37C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_233257C68(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_233257CB8()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x7461506563696F76;
  v4 = 0x6E6964726F636572;
  if (v1 != 4)
  {
    v4 = 0x736C65646F6DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 25705;
  if (v1 != 1)
  {
    v5 = 0x656C61636F6CLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_233257D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23325D1AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_233257D8C(uint64_t a1)
{
  v2 = sub_2332580C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233257DC8(uint64_t a1)
{
  v2 = sub_2332580C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233257E04(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3760, &qword_23329FAA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2332580C8();
  sub_23328E69C();
  v11 = *v3;
  v12 = v3[1];
  v31 = 0;
  sub_23328E48C();
  if (!v2)
  {
    v13 = _s13LisVoicesJsonVMa(0);
    v14 = v13[5];
    v30 = 1;
    sub_23328CE8C();
    sub_23325C038(&qword_27DDE1F80, MEMORY[0x28220C058]);
    sub_23328E4DC();
    v15 = (v3 + v13[6]);
    v16 = *v15;
    v17 = v15[1];
    v29 = 2;
    sub_23328E48C();
    v18 = (v3 + v13[7]);
    v19 = *v18;
    v20 = v18[1];
    v28 = 3;
    sub_23328E48C();
    v21 = (v3 + v13[8]);
    v22 = *v21;
    v23 = v21[1];
    v27 = 4;
    sub_23328E48C();
    v26 = *(v3 + v13[9]);
    v25[15] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3768, &qword_23329FAA8);
    sub_2332586A0(&qword_27DDE3770, &qword_27DDE3778);
    sub_23328E4DC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2332580C8()
{
  result = qword_27DDFF478;
  if (!qword_27DDFF478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDFF478);
  }

  return result;
}

uint64_t sub_23325811C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3780, &unk_23329FAB0);
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v37);
  v8 = v35 - v7;
  v9 = _s13LisVoicesJsonVMa(0);
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[3];
  v13 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2332580C8();
  sub_23328E68C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v38);
  }

  v36 = a2;
  v15 = v5;
  v45 = 0;
  v16 = v12;
  *v12 = sub_23328E3CC();
  v12[1] = v17;
  v18 = sub_23328CE8C();
  v35[1] = v35;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = 1;
  sub_23325C038(&qword_27DDE21D0, MEMORY[0x28220C058]);
  sub_23328E41C();
  v23 = v9[5];
  v35[0] = v19;
  (*(v19 + 32))(v16 + v23, v22, v18);
  v43 = 2;
  v24 = v37;
  v25 = sub_23328E3CC();
  v26 = (v16 + v9[6]);
  *v26 = v25;
  v26[1] = v27;
  v42 = 3;
  v28 = sub_23328E3CC();
  v29 = (v16 + v9[7]);
  *v29 = v28;
  v29[1] = v30;
  v41 = 4;
  v31 = sub_23328E3CC();
  v32 = (v16 + v9[8]);
  *v32 = v31;
  v32[1] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3768, &qword_23329FAA8);
  v40 = 5;
  sub_2332586A0(&qword_27DDE3788, &qword_27DDE3790);
  sub_23328E41C();
  (*(v15 + 8))(v8, v24);
  *(v16 + v9[9]) = v39;
  sub_23325BF70(v16, v36, _s13LisVoicesJsonVMa);
  __swift_destroy_boxed_opaque_existential_0(v38);
  return sub_23325BFD8(v16, _s13LisVoicesJsonVMa);
}

uint64_t sub_2332586A0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE3768, &qword_23329FAA8);
    sub_23325873C(a2, _s14ListModelsJsonVMa);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23325873C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2332587B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08B48);
  __swift_project_value_buffer(v4, qword_27DE08B48);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t sub_233258908()
{
  v1[18] = v0;
  v2 = type metadata accessor for TTSVBPath();
  v1[19] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v4 = type metadata accessor for TTSVBVoice();
  v1[26] = v4;
  v5 = *(v4 - 8);
  v1[27] = v5;
  v6 = *(v5 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v7 = _s13LisVoicesJsonVMa(0);
  v1[30] = v7;
  v8 = *(v7 - 8);
  v1[31] = v8;
  v9 = *(v8 + 64) + 15;
  v1[32] = swift_task_alloc();
  v10 = type metadata accessor for TTSVBVoiceModel();
  v1[33] = v10;
  v11 = *(v10 - 8);
  v1[34] = v11;
  v12 = *(v11 + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v13 = *(_s14ListModelsJsonVMa(0) - 8);
  v1[37] = v13;
  v14 = *(v13 + 64) + 15;
  v1[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_233258B5C, 0, 0);
}

uint64_t sub_233258B5C()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 312) = *v1;
  v3 = *(*v2 + 184);

  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 320) = v5;
  *v5 = v0;
  v5[1] = sub_233258D74;

  return v7();
}

uint64_t sub_233258D74(uint64_t a1)
{
  v3 = *(*v2 + 320);
  v4 = *v2;
  *(v4 + 328) = a1;
  *(v4 + 336) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_23325B83C, 0, 0);
  }

  else
  {
    v5 = *(**(v4 + 312) + 200);
    v10 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v4 + 344) = v7;
    *v7 = v4;
    v7[1] = sub_233258F74;
    v8 = *(v4 + 312);

    return v10();
  }
}

uint64_t sub_233258F74(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  v7 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v5 = sub_23325B944;
  }

  else
  {
    v5 = sub_233259088;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_233259088()
{
  v1 = *(v0 + 18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  v340 = v0;
  if (*(v0 + 368) != 1)
  {
    result = *(v0 + 41);
    v268 = *(result + 16);
    if (!v268)
    {
      v225 = *(v0 + 44);

LABEL_63:
      v226 = *(v0 + 39);
      sub_23328D30C();
      sub_23328D27C();

      goto LABEL_69;
    }

    v49 = 0;
    v270 = *(v0 + 26);
    v267 = *(v0 + 27);
    v266 = result + ((*(v267 + 80) + 32) & ~*(v267 + 80));
    v271 = *(v0 + 35);
    v274 = *(v0 + 34);
    v264 = *(v0 + 41);
    v265 = *(v0 + 28);
    v50 = *(v0 + 45);
    v342 = *(v0 + 33);
    while (v49 < *(result + 16))
    {
      v51 = *(v0 + 28);
      v52 = *(v0 + 23);
      v53 = *(v0 + 19);
      v269 = v49;
      sub_23325BF70(v266 + *(v267 + 72) * v49, v51, type metadata accessor for TTSVBVoice);
      v305 = sub_2331DEBE8();
      v366 = *v305;
      v54 = *v305;
      v55 = *(v270 + 20);
      v56 = sub_23328CE8C();
      v354 = v55;
      v360 = (*(v56 - 8) + 16);
      v345 = v51;
      v349 = *v360;
      (*v360)(v52, v51 + v55, v56);
      swift_storeEnumTagMultiPayload();
      v316 = sub_23328CC9C();
      v57 = *(v316 - 8);
      v338 = *(v57 + 64) + 15;
      v58 = swift_task_alloc();
      v59 = v54;
      TTSVBPath.url.getter(v58);
      sub_23325BFD8(v52, type metadata accessor for TTSVBPath);
      v60 = _TTSVBFileManager.calculateSize(ofItemAtURL:)(v58);
      if (v50)
      {

        v308 = 0;
      }

      else
      {
        v308 = v60;
      }

      v61 = *(v0 + 22);
      v62 = *(v0 + 19);
      v314 = *(v57 + 8);
      v314(v58, v316);

      v63 = *v305;
      v349(v61, v51 + v354, v56);
      swift_storeEnumTagMultiPayload();
      v64 = swift_task_alloc();
      v65 = v63;
      TTSVBPath.url.getter(v64);
      sub_23325BFD8(v61, type metadata accessor for TTSVBPath);
      v276 = _TTSVBFileManager.calculateSize(ofItemAtURL:)(v64);
      v66 = *(v0 + 21);
      v67 = *(v0 + 19);
      v314(v64, v316);

      v367 = *v305;
      v68 = *v305;
      v349(v66, v51 + v354, v56);
      swift_storeEnumTagMultiPayload();
      v69 = swift_task_alloc();
      v70 = v68;
      TTSVBPath.url.getter(v69);
      sub_23325BFD8(v66, type metadata accessor for TTSVBPath);
      v277 = _TTSVBFileManager.calculateSize(ofItemAtURL:)(v69);
      v71 = *(v0 + 28);
      v72 = *(v0 + 25);
      v323 = *(v0 + 44);
      v327 = *(v0 + 19);
      v314(v69, v316);

      sub_23328E24C();
      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4DF0);
      v319 = v71;
      MEMORY[0x23839B7E0](*v71, *(v265 + 8));
      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4E10);
      v73 = sub_23328CE3C();
      MEMORY[0x23839B7E0](v73);

      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4E30);
      MEMORY[0x23839B7E0](*(v71 + *(v270 + 24)), *(v71 + *(v270 + 24) + 8));
      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4E50);
      v349(v72, v51 + v354, v56);
      swift_storeEnumTagMultiPayload();
      v74 = swift_task_alloc();
      TTSVBPath.url.getter(v74);
      sub_23325BFD8(v72, type metadata accessor for TTSVBPath);
      v331 = v56;
      v75 = sub_23328CC6C();
      v77 = v76;
      v314(v74, v316);
      MEMORY[0x23839B7E0](v75, v77);

      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4E70);
      *(v340 + 12) = v308;
      v78 = sub_23328CA4C();
      v309 = *(v78 - 8);
      v299 = *(v309 + 64) + 15;
      v79 = swift_task_alloc();
      v80 = sub_23328CA1C();
      v81 = *(v80 - 8);
      v296 = v81[8] + 15;
      v82 = swift_task_alloc();
      v293 = *MEMORY[0x277CC8DE0];
      v288 = v81[13];
      v288();
      v285 = sub_23328CA3C();
      v83 = *(v285 - 8);
      v282 = *(v83 + 64) + 15;
      v84 = swift_task_alloc();
      sub_23328CA2C();
      sub_23328C82C();
      v281 = *(v83 + 8);
      v281(v84, v285);
      v280 = v81[1];
      v280(v82, v80);

      sub_23312599C();
      sub_23325C038(&qword_27DDE1B30, MEMORY[0x28220BA50]);
      sub_233125A3C();
      v302 = v78;
      sub_23328E0CC();
      v279 = *(v309 + 8);
      v279(v79, v78);

      MEMORY[0x23839B7E0](*(v340 + 2), *(v340 + 3));

      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4E90);
      v349(v72, v345 + v354, v331);
      swift_storeEnumTagMultiPayload();
      v85 = swift_task_alloc();
      TTSVBPath.url.getter(v85);
      sub_23325BFD8(v72, type metadata accessor for TTSVBPath);
      v86 = sub_23328CC6C();
      v88 = v87;
      v314(v85, v316);
      MEMORY[0x23839B7E0](v86, v88);
      v0 = v340;

      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4EB0);
      *(v340 + 13) = v276;
      v89 = swift_task_alloc();
      v90 = swift_task_alloc();
      (v288)(v90, v293, v80);
      v91 = swift_task_alloc();
      sub_23328CA2C();
      sub_23328C82C();
      v281(v91, v285);
      v280(v90, v80);

      sub_23328E0CC();
      v279(v89, v302);

      MEMORY[0x23839B7E0](*(v0 + 4), *(v0 + 5));

      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4ED0);
      v349(v72, v345 + v354, v331);
      swift_storeEnumTagMultiPayload();
      v92 = swift_task_alloc();
      TTSVBPath.url.getter(v92);
      sub_23325BFD8(v72, type metadata accessor for TTSVBPath);
      v93 = sub_23328CC6C();
      v95 = v94;
      v314(v92, v316);
      MEMORY[0x23839B7E0](v93, v95);

      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4EF0);
      *(v340 + 14) = v277;
      v96 = swift_task_alloc();
      v97 = swift_task_alloc();
      (v288)(v97, v293, v80);
      v98 = swift_task_alloc();
      sub_23328CA2C();
      sub_23328C82C();
      v281(v98, v285);
      v278 = v80;
      v280(v97, v80);

      sub_23328E0CC();
      v279(v96, v302);

      MEMORY[0x23839B7E0](*(v0 + 6), *(v0 + 7));

      MEMORY[0x23839B7E0](657930, 0xE300000000000000);
      MEMORY[0x23839B7E0](0, 0xE000000000000000);

      v99 = swift_task_alloc();
      *(v99 + 16) = v319;

      v50 = 0;
      sub_23325BA58(sub_23325C080, v99, v323);
      v101 = v100;

      v275 = *(v101 + 16);
      if (v275)
      {
        result = MEMORY[0x23839B7E0](0x203A736C65646F4DLL, 0xEA00000000000A0ALL);
        v102 = 0;
        v272 = v101 + ((*(v274 + 80) + 32) & ~*(v274 + 80));
        v273 = v101;
        while (v102 < *(v101 + 16))
        {
          v117 = *(v0 + 35);
          v119 = *(v0 + 19);
          v118 = *(v0 + 20);
          v335 = v102;
          sub_23325BF70(v272 + *(v274 + 72) * v102, v117, type metadata accessor for TTSVBVoiceModel);
          v120 = *v305;
          sub_23325BF70(v117, v118, type metadata accessor for TTSVBVoiceModel);
          swift_storeEnumTagMultiPayload();
          v121 = swift_task_alloc();
          v122 = v120;
          TTSVBPath.url.getter(v121);
          sub_23325BFD8(v118, type metadata accessor for TTSVBPath);
          v332 = _TTSVBFileManager.calculateSize(ofItemAtURL:)(v121);
          v123 = *(v0 + 35);
          v124 = *(v0 + 25);
          v125 = *(v0 + 19);
          v314(v121, v316);

          sub_23328E24C();
          MEMORY[0x23839B7E0](0xD000000000000020, 0x80000002332A4F10);
          MEMORY[0x23839B7E0](*v123, *(v271 + 8));
          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A4F40);
          v126 = v342;
          v127 = v123 + v342[5];
          v128 = sub_23328CE3C();
          MEMORY[0x23839B7E0](v128);

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A4F70);
          v129 = v123 + v342[6];
          v130 = sub_23328CE3C();
          MEMORY[0x23839B7E0](v130);

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A4FA0);
          sub_23325BF70(v123, v124, type metadata accessor for TTSVBVoiceModel);
          swift_storeEnumTagMultiPayload();
          v131 = swift_task_alloc();
          TTSVBPath.url.getter(v131);
          sub_23325BFD8(v124, type metadata accessor for TTSVBPath);
          v132 = sub_23328CC6C();
          v134 = v133;
          v314(v131, v316);
          MEMORY[0x23839B7E0](v132, v134);

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A4FD0);
          MEMORY[0x23839B7E0](*(v123 + v126[14]), *(v123 + v126[14] + 8));
          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5000);
          v135 = TTSVBVoiceModel.primarySpeakingLocales.getter();
          v136 = *(v135 + 16);
          if (v136)
          {
            v369 = MEMORY[0x277D84F90];
            sub_23312676C(0, v136, 0);
            v137 = v369;
            v138 = sub_23328CF0C();
            v139 = 0;
            v140 = *(v138 - 8);
            v361 = v135 + ((*(v140 + 80) + 32) & ~*(v140 + 80));
            v355 = *(v140 + 64) + 15;
            do
            {
              v141 = swift_task_alloc();
              (*(v140 + 16))(v141, v361 + *(v140 + 72) * v139, v138);
              v142 = sub_23328CEAC();
              v144 = v143;
              (*(v140 + 8))(v141, v138);

              v146 = *(v369 + 16);
              v145 = *(v369 + 24);
              if (v146 >= v145 >> 1)
              {
                sub_23312676C((v145 > 1), v146 + 1, 1);
              }

              ++v139;
              *(v369 + 16) = v146 + 1;
              v147 = v369 + 16 * v146;
              *(v147 + 32) = v142;
              *(v147 + 40) = v144;
            }

            while (v136 != v139);

            v0 = v340;
            v126 = v342;
          }

          else
          {

            v137 = MEMORY[0x277D84F90];
          }

          v148 = *(v0 + 35);
          v149 = MEMORY[0x23839B960](v137, MEMORY[0x277D837D0]);
          v151 = v150;

          MEMORY[0x23839B7E0](v149, v151);

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5030);
          v152 = v126[7];
          v153 = sub_23328CD6C();
          v154 = *(v153 - 8);
          v346 = *(v154 + 64) + 15;
          v155 = swift_task_alloc();
          sub_23328CD5C();
          v156 = sub_23328CD3C();
          v157 = *(v156 - 8);
          v328 = *(v157 + 64) + 15;
          v158 = swift_task_alloc();
          sub_23328CD1C();
          v159 = sub_23328CDEC();
          v161 = v160;
          v350 = v156;
          v324 = *(v157 + 8);
          v324(v158, v156);
          v362 = v153;
          v320 = *(v154 + 8);
          v320(v155, v153);

          MEMORY[0x23839B7E0](v159, v161);

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5060);
          MEMORY[0x23839B7E0](*(v148 + v342[8]), *(v148 + v342[8] + 8));
          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5090);
          v162 = (v148 + v342[9]);
          if (v162[1])
          {
            v163 = *v162;
            v164 = v162[1];
          }

          else
          {
            v164 = 0xE500000000000000;
            v163 = 0x3E6C696E3CLL;
          }

          v165 = *(v340 + 35);

          MEMORY[0x23839B7E0](v163, v164);

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A50C0);
          v166 = (v165 + v342[10]);
          if (v166[1])
          {
            v167 = *v166;
            v168 = v166[1];
          }

          else
          {
            v168 = 0xE500000000000000;
            v167 = 0x3E6C696E3CLL;
          }

          v169 = *(v340 + 35);

          MEMORY[0x23839B7E0](v167, v168);

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A50F0);
          v170 = (v169 + v342[11]);
          if (v170[1])
          {
            v171 = *v170;
            v172 = v170[1];
          }

          else
          {
            v172 = 0xE500000000000000;
            v171 = 0x3E6C696E3CLL;
          }

          v173 = *(v340 + 35);

          MEMORY[0x23839B7E0](v171, v172);

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5120);
          MEMORY[0x23839B7E0](*(v173 + v342[12]), *(v173 + v342[12] + 8));
          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5150);
          MEMORY[0x23839B7E0](*(v173 + v342[17]), *(v173 + v342[17] + 8));
          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5180);
          v174 = *(v173 + v342[13]);
          v175 = TTSVBVoiceStatus.description.getter(v174);
          MEMORY[0x23839B7E0](v175);

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A51B0);
          v176 = TTSVBVoiceTrainingStatus.description.getter(*(v173 + v342[15]));
          MEMORY[0x23839B7E0](v176);

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A51E0);
          v177 = *(v340 + 35);
          v178 = 1.0;
          if (v174 != 7)
          {
            v178 = *(v177 + v342[16]);
          }

          v340[15] = v178;
          v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A00, &unk_2332905E0);
          v180 = *(v179 - 8);
          v181 = *(v180 + 64) + 15;
          v182 = swift_task_alloc();
          v183 = *(*(sub_23328CF0C() - 8) + 64) + 15;
          swift_task_alloc();
          sub_23328CEEC();
          sub_23312678C();
          sub_23328CA8C();

          sub_2331267E0();
          sub_23328D86C();
          (*(v180 + 8))(v182, v179);

          MEMORY[0x23839B7E0](*(v340 + 8), *(v340 + 9));

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5210);
          v184 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730) - 8) + 64) + 15;
          v185 = swift_task_alloc();
          sub_23312712C(v177 + v342[18], v185);
          v186 = sub_23328CE1C();
          v187 = *(v186 - 8);
          if ((*(v187 + 48))(v185, 1, v186) == 1)
          {
            sub_233126838(v185);
            v103 = 0x3E656E6F6E3CLL;
            v104 = 0xE600000000000000;
          }

          else
          {
            v188 = swift_task_alloc();
            sub_23328CD5C();
            v189 = swift_task_alloc();
            sub_23328CD1C();
            v103 = sub_23328CDEC();
            v104 = v190;
            v324(v189, v350);
            v320(v188, v362);

            (*(v187 + 8))(v185, v186);
          }

          v0 = v340;
          v105 = *(v340 + 35);

          MEMORY[0x23839B7E0](v103, v104);

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5240);
          *(swift_task_alloc() + 16) = v105;
          v106 = v105;
          v50 = 0;
          v107 = sub_233125BDC(sub_23325C7F4);
          v109 = v108;

          if (v109)
          {
            v110 = v107;
          }

          else
          {
            v110 = 0x3E656E6F4E3CLL;
          }

          if (v109)
          {
            v111 = v109;
          }

          else
          {
            v111 = 0xE600000000000000;
          }

          MEMORY[0x23839B7E0](v110, v111);

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5270);
          if (*(v106 + v342[19]))
          {
            v112 = 7562585;
          }

          else
          {
            v112 = 28494;
          }

          if (*(v106 + v342[19]))
          {
            v113 = 0xE300000000000000;
          }

          else
          {
            v113 = 0xE200000000000000;
          }

          MEMORY[0x23839B7E0](v112, v113);

          MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A52A0);
          *(v340 + 16) = v332;
          v114 = swift_task_alloc();
          v115 = swift_task_alloc();
          (v288)(v115, v293, v278);
          v116 = swift_task_alloc();
          sub_23328CA2C();
          sub_23328C82C();
          v281(v116, v285);
          v280(v115, v278);

          sub_23328E0CC();
          v279(v114, v302);
          v102 = v335 + 1;

          MEMORY[0x23839B7E0](*(v340 + 10), *(v340 + 11));

          MEMORY[0x23839B7E0](657930, 0xE300000000000000);
          MEMORY[0x23839B7E0](0, 0xE000000000000000);

          result = sub_23325BFD8(v106, type metadata accessor for TTSVBVoiceModel);
          v101 = v273;
          if (v335 + 1 == v275)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

LABEL_12:

      sub_23325BFD8(*(v0 + 28), type metadata accessor for TTSVBVoice);
      v49 = v269 + 1;
      result = v264;
      if (v269 + 1 == v268)
      {
        v191 = *(v0 + 44);
        v192 = *(v0 + 41);

        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
    return result;
  }

  v2 = *(v0 + 44);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v287 = *(v0 + 37);
    v284 = *(v0 + 36);
    v6 = *(v0 + 33);
    v5 = *(v0 + 34);
    v365 = MEMORY[0x277D84F90];
    sub_23325C894(0, v3, 0);
    v359 = v365;
    v7 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v283 = *(v5 + 72);
    do
    {
      v341 = v7;
      v344 = v3;
      v8 = *(v0 + 36);
      sub_23325BF70(v7, v8, type metadata accessor for TTSVBVoiceModel);
      v334 = *v8;
      v353 = *(v284 + 8);
      v9 = v6[5];
      v10 = sub_23328CE8C();
      v11 = *(v10 - 8);
      v12 = *(v11 + 64) + 15;
      v13 = swift_task_alloc();
      v14 = *(v11 + 16);
      v337 = v13;
      v14(v13, v8 + v9, v10);
      v15 = v6[6];
      v330 = swift_task_alloc();
      v14(v330, v8 + v15, v10);
      v16 = (v8 + v6[14]);
      v326 = *v16;
      v348 = v16[1];
      v17 = v6[7];
      v18 = sub_23328CE1C();
      v19 = *(v18 - 8);
      v20 = *(v19 + 64) + 15;
      v322 = swift_task_alloc();
      (*(v19 + 16))(v322, v8 + v17, v18);
      v21 = v6[9];
      v22 = (v8 + v6[8]);
      v23 = v22[1];
      v318 = *v22;
      v24 = *(v8 + v21 + 8);
      v313 = *(v8 + v21);
      v25 = v6[11];
      v26 = (v8 + v6[10]);
      v27 = v26[1];
      v307 = *v26;
      v301 = *(v8 + v25);
      v28 = (v8 + v6[12]);
      v29 = v28[1];
      v295 = *v28;
      v30 = (v8 + v6[17]);
      v31 = v30[1];
      v290 = *v30;
      v32 = *(v8 + v6[13]);
      v33 = *(v8 + v6[15]);
      v298 = *(v8 + v25 + 8);

      v292 = v29;
      v34 = v31;

      v315 = v23;

      v311 = v24;

      v304 = v27;

      v35 = TTSVBVoiceTrainingStatus.description.getter(v33);
      v37 = v36;
      v38 = *(v0 + 36);
      v39 = 1.0;
      if (v32 != 7)
      {
        v39 = *(v38 + v6[16]);
      }

      v0 = v340;
      v40 = *(v340 + 38);
      v41 = v6[18];
      v42 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730) - 8) + 64) + 15;
      v43 = swift_task_alloc();
      sub_23312712C(v38 + v41, v43);
      sub_233267C90(v334, v353, v337, v330, v326, v348, v322, v318, v40, v39, v315, v313, v311, v307, v304, v301, v298, v295, v292, v290, v34, v32, v35, v37, v43, *(v38 + v6[19]));
      sub_23325BFD8(v38, type metadata accessor for TTSVBVoiceModel);

      v44 = v359;
      v46 = *(v359 + 16);
      v45 = *(v359 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_23325C894(v45 > 1, v46 + 1, 1);
        v44 = v359;
      }

      v47 = *(v340 + 38);
      *(v44 + 16) = v46 + 1;
      v359 = v44;
      sub_23325C968(v47, v44 + ((*(v287 + 80) + 32) & ~*(v287 + 80)) + *(v287 + 72) * v46, _s14ListModelsJsonVMa);
      v7 = v341 + v283;
      v3 = v344 - 1;
    }

    while (v344 != 1);
    v4 = MEMORY[0x277D84F90];
  }

  else
  {
    v359 = MEMORY[0x277D84F90];
  }

  v193 = *(v0 + 41);
  v194 = *(v193 + 16);
  if (v194)
  {
    v297 = *(v0 + 32);
    v294 = *(v0 + 31);
    v347 = *(v0 + 30);
    v291 = *(v0 + 29);
    v195 = *(v0 + 27);
    v289 = *(v0 + 26);
    v368 = v4;
    sub_23325C850(0, v194, 0);
    v196 = v368;
    v197 = v193 + ((*(v195 + 80) + 32) & ~*(v195 + 80));
    v286 = *(v195 + 72);
    v351 = *(v0 + 45);
    do
    {
      v343 = v194;
      v198 = *(v0 + 32);
      v329 = v198;
      v333 = v196;
      v199 = *(v0 + 29);
      v200 = *(v0 + 25);
      v321 = *(v0 + 24);
      v306 = *(v0 + 19);
      v339 = v197;
      sub_23325BF70(v197, v199, type metadata accessor for TTSVBVoice);
      v336 = *v199;
      v356 = *(v291 + 8);
      v201 = *(v289 + 20);
      v303 = v201;
      v202 = v347[5];
      v203 = sub_23328CE8C();
      v300 = *(*(v203 - 8) + 16);
      v300(v198 + v202, v199 + v201, v203);
      v204 = (v199 + *(v289 + 24));
      v325 = *v204;
      v317 = v204[1];
      v300(v200, v199 + v201, v203);
      swift_storeEnumTagMultiPayload();
      v205 = sub_23328CC9C();
      v206 = *(v205 - 8);
      v207 = *(v206 + 64) + 15;
      v208 = swift_task_alloc();

      TTSVBPath.url.getter(v208);
      sub_23325BFD8(v200, type metadata accessor for TTSVBPath);
      v312 = sub_23328CC6C();
      v310 = v209;
      v210 = *(v206 + 8);
      v210(v208, v205);
      v300(v321, v199 + v303, v203);
      swift_storeEnumTagMultiPayload();
      v211 = swift_task_alloc();
      TTSVBPath.url.getter(v211);
      sub_23325BFD8(v321, type metadata accessor for TTSVBPath);
      v212 = sub_23328CC6C();
      v214 = v213;
      v210(v211, v205);
      v196 = v333;
      v215 = swift_task_alloc();
      *(v215 + 16) = v199;

      sub_23325BCE4(sub_23325C8D8, v215, v359);
      v217 = v216;

      *v329 = v336;
      *(v297 + 8) = v356;
      v218 = (v329 + v347[6]);
      *v218 = v325;
      v218[1] = v317;
      v219 = (v329 + v347[7]);
      *v219 = v312;
      v219[1] = v310;
      v220 = (v329 + v347[8]);
      *v220 = v212;
      v220[1] = v214;
      *(v329 + v347[9]) = v217;

      sub_23325BFD8(v199, type metadata accessor for TTSVBVoice);
      v222 = *(v333 + 16);
      v221 = *(v333 + 24);
      if (v222 >= v221 >> 1)
      {
        sub_23325C850(v221 > 1, v222 + 1, 1);
        v196 = v333;
      }

      v223 = *(v340 + 32);
      *(v196 + 16) = v222 + 1;
      sub_23325C968(v223, v196 + ((*(v294 + 80) + 32) & ~*(v294 + 80)) + *(v294 + 72) * v222, _s13LisVoicesJsonVMa);
      v197 = v339 + v286;
      v194 = v343 - 1;
      v0 = v340;
    }

    while (v343 != 1);
    v224 = v351;
  }

  else
  {
    v224 = *(v0 + 45);
    v196 = MEMORY[0x277D84F90];
  }

  v227 = sub_23328C8BC();
  v228 = *(v227 + 48);
  v229 = *(v227 + 52);
  swift_allocObject();
  sub_23328C8AC();
  v230 = *(*(sub_23328C87C() - 8) + 64) + 15;
  swift_task_alloc();
  sub_23328C86C();
  sub_23328C88C();

  *(v0 + 17) = v196;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3798, &qword_23329FAD0);
  sub_23325C9D0();
  v231 = sub_23328C89C();
  if (!v224)
  {
    v246 = v231;
    v247 = v232;
    sub_23328D30C();
    v248 = *(*(sub_23328D9DC() - 8) + 64) + 15;
    swift_task_alloc();
    sub_23328D9CC();
    sub_23328D9AC();
    v250 = v249;

    if (v250)
    {
      v251 = *(v0 + 44);
      v252 = *(v0 + 41);
      v253 = *(v340 + 39);

      sub_23328D27C();
      v0 = v340;

      sub_233121870(v246, v247);
LABEL_69:

      v254 = *(v0 + 38);
      v255 = *(v0 + 35);
      v256 = *(v0 + 36);
      v257 = *(v0 + 32);
      v259 = *(v0 + 28);
      v258 = *(v0 + 29);
      v261 = *(v0 + 24);
      v260 = *(v0 + 25);
      v263 = *(v0 + 22);
      v262 = *(v0 + 23);
      v358 = *(v0 + 21);
      v364 = *(v0 + 20);

      v245 = *(v0 + 1);
      goto LABEL_70;
    }

    goto LABEL_75;
  }

  v233 = *(v0 + 44);
  v234 = *(v0 + 41);
  v235 = *(v0 + 39);

  v236 = *(v0 + 38);
  v237 = *(v0 + 35);
  v238 = *(v0 + 36);
  v239 = *(v0 + 32);
  v241 = *(v0 + 28);
  v240 = *(v0 + 29);
  v243 = *(v0 + 24);
  v242 = *(v0 + 25);
  v244 = *(v0 + 23);
  v352 = *(v0 + 22);
  v357 = *(v0 + 21);
  v363 = *(v0 + 20);

  v245 = *(v0 + 1);
LABEL_70:

  return v245();
}