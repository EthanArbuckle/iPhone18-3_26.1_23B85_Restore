uint64_t sub_21A3F33C0()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 72);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_21A3F34D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[86] = v5;
  v6[85] = a5;
  v6[84] = a4;
  v6[83] = a3;
  v6[82] = a2;
  v6[81] = a1;
  return MEMORY[0x2822009F8](sub_21A3F350C, 0, 0);
}

uint64_t sub_21A3F350C()
{
  v50 = v0;
  v1 = v0[86];
  v2 = v0[85];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v1[3];
  aBlock = v1[2];
  swift_beginAccess();
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  v9 = v1[4];
  v8 = v1[5];

  swift_beginAccess();
  v10 = *(v4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49[0] = v2;
  sub_21A3D3D28(v10, sub_21A3EC9F8, 0, isUniquelyReferenced_nonNull_native, v49);

  v12 = v49[0];
  v46 = v5;
  v45 = v3;
  v47 = v8;
  v13 = v0[84];
  v14 = v0[83];
  v15 = v0[82];
  v16 = v0[81];
  type metadata accessor for DediscoUploader();
  swift_beginAccess();
  v18 = *(v16 + 24);
  v17 = *(v16 + 32);
  sub_21A3F74C8(v18, v17);
  v19 = sub_21A4016D8(v12);

  static DediscoUploader.upload(binaryResult:jsonResult:task:privacyBudgetPrefix:taskSucceeded:)(v18, v17, v19, v15, v14, v13, 1);

  sub_21A3ECC34(v18, v17);
  v0[76] = aBlock;
  v0[77] = v46;
  v0[78] = 46;
  v20 = 0xE100000000000000;
  v0[79] = 0xE100000000000000;
  sub_21A3ED2CC();
  v21 = sub_21A451644();

  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = (v21 + 16 + 16 * v22);
    v24 = *v23;
    v20 = v23[1];
  }

  else
  {
    v24 = 85;
  }

  if (v9 == v24 && v47 == v20 || (sub_21A4519B4() & 1) != 0)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A456280;
  *(inited + 32) = 0x6E6967756C70;
  *(inited + 40) = 0xE600000000000000;
  v26 = sub_21A451054();

  *(inited + 48) = v26;
  *(inited + 56) = 0x64496B736174;
  *(inited + 64) = 0xE600000000000000;
  v27 = sub_21A451054();

  *(inited + 72) = v27;
  *(inited + 80) = 0x6E6F697461636F6CLL;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_21A451054();
  *(inited + 104) = 0x65736143657375;
  *(inited + 112) = 0xE700000000000000;
  v28 = sub_21A451054();

  *(inited + 120) = v28;
  *(inited + 128) = 0x646F43726F727265;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = sub_21A4514E4();
  *(inited + 152) = 0x6D6F44726F727265;
  *(inited + 160) = 0xEB000000006E6961;
  *(inited + 168) = sub_21A451054();
  v29 = sub_21A3E57A0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  v31 = sub_21A451054();
  v0[56] = sub_21A3ED530;
  v0[57] = v30;
  v0[52] = MEMORY[0x277D85DD0];
  v0[53] = 1107296256;
  v0[54] = sub_21A432B2C;
  v0[55] = &block_descriptor_102;
  v32 = _Block_copy(v0 + 52);

  AnalyticsSendEventLazy();

  _Block_release(v32);
  v33 = v0[57];

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v34 = v0[82];
  v35 = sub_21A450F24();
  __swift_project_value_buffer(v35, qword_27CD28C90);

  v36 = sub_21A450F04();
  v37 = sub_21A451574();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v49[0] = v39;
    *v38 = 136315138;
    v40 = *(v45 + 16);
    v41 = *(v45 + 24);

    v42 = sub_21A3E2554(v40, v41, v49);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_21A3C2000, v36, v37, "Successfully donate to Dedisco for recipe %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x21CEDB220](v39, -1, -1);
    MEMORY[0x21CEDB220](v38, -1, -1);
  }

  v43 = v0[1];

  return v43();
}

uint64_t sub_21A3F3F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[92] = v4;
  v5[91] = a4;
  v5[90] = a3;
  v5[89] = a2;
  v5[88] = a1;
  return MEMORY[0x2822009F8](sub_21A3F3F74, 0, 0);
}

uint64_t sub_21A3F3F74()
{
  v46 = v0;
  v1 = v0[88];
  v2 = sub_21A450A74();
  v42 = [v2 code];

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v3 = v0[89];
  v4 = sub_21A450F24();
  __swift_project_value_buffer(v4, qword_27CD28C90);

  v5 = sub_21A450F04();
  v6 = sub_21A451564();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[89];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v45 = v9;
    *v8 = 136315138;
    swift_beginAccess();
    v10 = *(v7 + 16);
    v11 = *(v7 + 24);

    v12 = sub_21A3E2554(v10, v11, &v45);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_21A3C2000, v5, v6, "Try to donate error to Dedisco for recipe %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x21CEDB220](v9, -1, -1);
    MEMORY[0x21CEDB220](v8, -1, -1);
  }

  v13 = v0[92];
  v14 = v0[91];
  v15 = v0[90];
  v16 = v0[89];
  v17 = v13[3];
  aBlock = v13[2];
  swift_beginAccess();
  v18 = v16[3];
  v43 = v16[2];
  v19 = v13[4];
  v20 = v13[5];
  v44 = v19;
  type metadata accessor for DediscoUploader();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A455E00;
  *(inited + 32) = 0x6F635F726F727265;
  v22 = inited + 32;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = 0xEA00000000006564;
  *(inited + 48) = v42;
  v23 = sub_21A3E4F6C(inited);
  swift_setDeallocating();
  sub_21A3D3BF0(v22, &qword_27CD28438, &unk_21A455EA0);
  v24 = sub_21A4016D8(v23);

  static DediscoUploader.upload(binaryResult:jsonResult:task:privacyBudgetPrefix:taskSucceeded:)(0, 0xF000000000000000, v24, v16, v15, v14, 0);

  v0[83] = aBlock;
  v0[84] = v17;
  v0[85] = 46;
  v25 = 0xE100000000000000;
  v0[86] = 0xE100000000000000;
  sub_21A3ED2CC();
  v26 = sub_21A451644();

  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = (v26 + 16 + 16 * v27);
    v29 = *v28;
    v25 = v28[1];
  }

  else
  {
    v29 = 85;
  }

  if (v44 == v29 && v20 == v25 || (sub_21A4519B4() & 1) != 0)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_21A456280;
  *(v30 + 32) = 0x6E6967756C70;
  *(v30 + 40) = 0xE600000000000000;
  v31 = sub_21A451054();

  *(v30 + 48) = v31;
  *(v30 + 56) = 0x64496B736174;
  *(v30 + 64) = 0xE600000000000000;
  v32 = sub_21A451054();

  *(v30 + 72) = v32;
  *(v30 + 80) = 0x6E6F697461636F6CLL;
  *(v30 + 88) = 0xE800000000000000;
  *(v30 + 96) = sub_21A451054();
  *(v30 + 104) = 0x65736143657375;
  *(v30 + 112) = 0xE700000000000000;
  v33 = sub_21A451054();

  *(v30 + 120) = v33;
  *(v30 + 128) = 0x646F43726F727265;
  *(v30 + 136) = 0xE900000000000065;
  *(v30 + 144) = sub_21A4514E4();
  *(v30 + 152) = 0x6D6F44726F727265;
  *(v30 + 160) = 0xEB000000006E6961;
  *(v30 + 168) = sub_21A451054();
  v34 = sub_21A3E57A0(v30);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  v36 = sub_21A451054();
  v0[66] = sub_21A3ED530;
  v0[67] = v35;
  v0[62] = MEMORY[0x277D85DD0];
  v0[63] = 1107296256;
  v0[64] = sub_21A432B2C;
  v0[65] = &block_descriptor_143;
  v37 = _Block_copy(v0 + 62);

  AnalyticsSendEventLazy();

  _Block_release(v37);
  v38 = v0[67];

  v39 = v0[1];

  return v39();
}

uint64_t sub_21A3F4984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 432) = a6;
  *(v7 + 440) = v6;
  *(v7 + 465) = a5;
  *(v7 + 416) = a3;
  *(v7 + 424) = a4;
  *(v7 + 400) = a1;
  *(v7 + 408) = a2;
  return MEMORY[0x2822009F8](sub_21A3F49B0, 0, 0);
}

uint64_t sub_21A3F49B0()
{
  v79 = v0;
  v1 = *(v0 + 400);
  *(v0 + 384) = v1;
  v2 = v1;
  *(v0 + 448) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 464);
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 408);
    v5 = sub_21A450F24();
    __swift_project_value_buffer(v5, qword_27CD28C90);

    v6 = sub_21A450F04();
    v7 = sub_21A451584();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 408);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v78 = v11;
      *v9 = 136315394;
      swift_beginAccess();
      v12 = *(v8 + 16);
      v13 = *(v8 + 24);

      v14 = sub_21A3E2554(v12, v13, &v78);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2112;
      sub_21A3D3C88();
      swift_allocError();
      *v15 = v3;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v16;
      *v10 = v16;
      _os_log_impl(&dword_21A3C2000, v6, v7, "Failed to donate to Dedisco for recipe %s with error %@", v9, 0x16u);
      sub_21A3D3BF0(v10, &qword_27CD28608, &qword_21A456570);
      MEMORY[0x21CEDB220](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x21CEDB220](v11, -1, -1);
      MEMORY[0x21CEDB220](v9, -1, -1);
    }

LABEL_17:
    v40 = *(v0 + 440);
    v41 = *(v0 + 448);
    v43 = *(v0 + 400);
    v42 = *(v0 + 408);
    v44 = v40[2];
    v45 = v40[3];
    swift_beginAccess();
    v46 = *(v42 + 24);
    v77 = *(v42 + 16);
    v48 = v40[4];
    v47 = v40[5];

    v49 = sub_21A450A74();
    [v49 code];

    *(v0 + 392) = v43;
    v50 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 240));
    }

    else
    {
      v51 = *(v0 + 400);
      v52 = sub_21A450A74();
      v53 = [v52 domain];

      sub_21A451084();
    }

    *(v0 + 352) = v44;
    *(v0 + 360) = v45;
    v54 = 0xE100000000000000;
    *(v0 + 368) = 46;
    *(v0 + 376) = 0xE100000000000000;
    sub_21A3ED2CC();
    v55 = sub_21A451644();

    v56 = *(v55 + 16);
    if (v56)
    {
      v57 = (v55 + 16 + 16 * v56);
      v58 = *v57;
      v54 = v57[1];
    }

    else
    {
      v58 = 85;
    }

    if (v48 == v58 && v47 == v54 || (sub_21A4519B4() & 1) != 0)
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A456280;
    *(inited + 32) = 0x6E6967756C70;
    *(inited + 40) = 0xE600000000000000;
    v60 = sub_21A451054();

    *(inited + 48) = v60;
    *(inited + 56) = 0x64496B736174;
    *(inited + 64) = 0xE600000000000000;
    v61 = sub_21A451054();

    *(inited + 72) = v61;
    *(inited + 80) = 0x6E6F697461636F6CLL;
    *(inited + 88) = 0xE800000000000000;
    *(inited + 96) = sub_21A451054();
    *(inited + 104) = 0x65736143657375;
    *(inited + 112) = 0xE700000000000000;
    v62 = sub_21A451054();

    *(inited + 120) = v62;
    *(inited + 128) = 0x646F43726F727265;
    *(inited + 136) = 0xE900000000000065;
    *(inited + 144) = sub_21A4514E4();
    *(inited + 152) = 0x6D6F44726F727265;
    *(inited + 160) = 0xEB000000006E6961;
    v63 = sub_21A451054();

    *(inited + 168) = v63;
    v64 = sub_21A3E57A0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
    swift_arrayDestroy();
    v65 = swift_allocObject();
    *(v65 + 16) = v64;
    v66 = sub_21A451054();
    *(v0 + 224) = sub_21A3ED530;
    *(v0 + 232) = v65;
    *(v0 + 192) = MEMORY[0x277D85DD0];
    *(v0 + 200) = 1107296256;
    *(v0 + 208) = sub_21A432B2C;
    *(v0 + 216) = &block_descriptor_110;
    v67 = _Block_copy((v0 + 192));

    AnalyticsSendEventLazy();

    _Block_release(v67);
    v68 = *(v0 + 232);

    v69 = *(v0 + 8);

    return v69();
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 400);
  v17 = *(v0 + 408);
  v19 = sub_21A450F24();
  __swift_project_value_buffer(v19, qword_27CD28C90);
  v20 = v18;

  v21 = sub_21A450F04();
  v22 = sub_21A451584();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 400);
    v24 = *(v0 + 408);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v78 = v27;
    *v25 = 136315394;
    swift_beginAccess();
    v28 = *(v24 + 16);
    v29 = *(v24 + 24);

    v30 = sub_21A3E2554(v28, v29, &v78);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2112;
    v31 = v23;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v32;
    *v26 = v32;
    _os_log_impl(&dword_21A3C2000, v21, v22, "Failed to execute plugin for recipe %s with error %@", v25, 0x16u);
    sub_21A3D3BF0(v26, &qword_27CD28608, &qword_21A456570);
    MEMORY[0x21CEDB220](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x21CEDB220](v27, -1, -1);
    MEMORY[0x21CEDB220](v25, -1, -1);
  }

  if (*(v0 + 465) == 1)
  {
    v33 = *(v0 + 408);
    v34 = **(v0 + 432);
    v35 = *(v0 + 400);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_21A40886C(0, v34[2] + 1, 1, v34);
    }

    v37 = v34[2];
    v36 = v34[3];
    if (v37 >= v36 >> 1)
    {
      v34 = sub_21A40886C((v36 > 1), v37 + 1, 1, v34);
    }

    v38 = *(v0 + 432);
    v39 = *(v0 + 400);
    v34[2] = v37 + 1;
    *&v34[2 * v37 + 4] = v39;
    *v38 = v34;
    goto LABEL_17;
  }

  v71 = swift_task_alloc();
  *(v0 + 456) = v71;
  *v71 = v0;
  v71[1] = sub_21A3F52D0;
  v72 = *(v0 + 440);
  v73 = *(v0 + 416);
  v74 = *(v0 + 424);
  v76 = *(v0 + 400);
  v75 = *(v0 + 408);

  return sub_21A3F3F44(v76, v75, v73, v74);
}

uint64_t sub_21A3F52D0()
{
  v1 = *(*v0 + 456);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21A3F53CC, 0, 0);
}

uint64_t sub_21A3F53CC()
{
  v1 = v0[55];
  v2 = v0[56];
  v4 = v0[50];
  v3 = v0[51];
  v5 = v1[2];
  v6 = v1[3];
  swift_beginAccess();
  v7 = *(v3 + 24);
  v32 = *(v3 + 16);
  v9 = v1[4];
  v8 = v1[5];

  v10 = sub_21A450A74();
  [v10 code];

  v0[49] = v4;
  v11 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 30);
  }

  else
  {
    v12 = v0[50];
    v13 = sub_21A450A74();
    v14 = [v13 domain];

    sub_21A451084();
  }

  v0[44] = v5;
  v0[45] = v6;
  v15 = 0xE100000000000000;
  v0[46] = 46;
  v0[47] = 0xE100000000000000;
  sub_21A3ED2CC();
  v16 = sub_21A451644();

  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = (v16 + 16 + 16 * v17);
    v19 = *v18;
    v15 = v18[1];
  }

  else
  {
    v19 = 85;
  }

  if (v9 == v19 && v8 == v15 || (sub_21A4519B4() & 1) != 0)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A456280;
  *(inited + 32) = 0x6E6967756C70;
  *(inited + 40) = 0xE600000000000000;
  v21 = sub_21A451054();

  *(inited + 48) = v21;
  *(inited + 56) = 0x64496B736174;
  *(inited + 64) = 0xE600000000000000;
  v22 = sub_21A451054();

  *(inited + 72) = v22;
  *(inited + 80) = 0x6E6F697461636F6CLL;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_21A451054();
  *(inited + 104) = 0x65736143657375;
  *(inited + 112) = 0xE700000000000000;
  v23 = sub_21A451054();

  *(inited + 120) = v23;
  *(inited + 128) = 0x646F43726F727265;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = sub_21A4514E4();
  *(inited + 152) = 0x6D6F44726F727265;
  *(inited + 160) = 0xEB000000006E6961;
  v24 = sub_21A451054();

  *(inited + 168) = v24;
  v25 = sub_21A3E57A0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  v27 = sub_21A451054();
  v0[28] = sub_21A3ED530;
  v0[29] = v26;
  v0[24] = MEMORY[0x277D85DD0];
  v0[25] = 1107296256;
  v0[26] = sub_21A432B2C;
  v0[27] = &block_descriptor_110;
  v28 = _Block_copy(v0 + 24);

  AnalyticsSendEventLazy();

  _Block_release(v28);
  v29 = v0[29];

  v30 = v0[1];

  return v30();
}

void *PFLPlugin.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[9];
  v4 = v0[10];
  sub_21A3ED49C(v0[7], v0[8]);
  return v0;
}

uint64_t PFLPlugin.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[9];
  v4 = v0[10];
  sub_21A3ED49C(v0[7], v0[8]);

  return swift_deallocClassInstance();
}

char *sub_21A3F58B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28548, &qword_21A459460);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_21A3F59B4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28458, &qword_21A457210);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21A3F5AFC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_21A3F5BF8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD286B0, &qword_21A456A30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21A3F5D04(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD286B8, &qword_21A456A38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD286C0, &unk_21A456A40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21A3F5E38(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28698, &unk_21A459800);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28590, &qword_21A4564A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21A3F5F80(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD286C8, &unk_21A456A50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21A3F60A4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28680, &qword_21A456A18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_21A3F6200(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_21A3F63DC()
{
  v1 = type metadata accessor for CKRecipeDescriptorRecord(0);
  v22 = *(v1 - 8);
  v2 = *(v22 + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v3);
  v23 = &v19 - v7;
  v21 = v0;
  v8 = *v0;
  v9 = *(*v0 + 16);
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    v11 = 0;
    v20 = v9 - 2;
    while (1)
    {
      v24 = 0;
      result = MEMORY[0x21CEDB240](&v24, 8);
      v13 = (v24 * v9) >> 64;
      if (v9 > v24 * v9)
      {
        v14 = -v9 % v9;
        if (v14 > v24 * v9)
        {
          do
          {
            v24 = 0;
            result = MEMORY[0x21CEDB240](&v24, 8);
          }

          while (v14 > v24 * v9);
          v13 = (v24 * v9) >> 64;
        }
      }

      v15 = v11 + v13;
      if (__OFADD__(v11, v13))
      {
        break;
      }

      if (v11 != v15)
      {
        v16 = v8[2];
        if (v11 >= v16)
        {
          goto LABEL_19;
        }

        v17 = (*(v22 + 80) + 32) & ~*(v22 + 80);
        v18 = *(v22 + 72);
        result = sub_21A3F924C(v8 + v17 + v18 * v11, v23, type metadata accessor for CKRecipeDescriptorRecord);
        if (v15 >= v16)
        {
          goto LABEL_20;
        }

        sub_21A3F924C(v8 + v17 + v18 * v15, v5, type metadata accessor for CKRecipeDescriptorRecord);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_21A3F69F0(v8);
          v8 = result;
        }

        if (v11 >= v8[2])
        {
          goto LABEL_21;
        }

        result = sub_21A3F92B4(v5, v8 + v17 + v18 * v11);
        if (v15 >= v8[2])
        {
          goto LABEL_22;
        }

        result = sub_21A3F92B4(v23, v8 + v17 + v18 * v15);
        v10 = v20;
        *v21 = v8;
      }

      --v9;
      if (v11++ == v10)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

void sub_21A3F6630()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v20 = 0;
      MEMORY[0x21CEDB240](&v20, 8);
      v6 = (v20 * v2) >> 64;
      if (v2 > v20 * v2)
      {
        v7 = -v2 % v2;
        if (v7 > v20 * v2)
        {
          do
          {
            v20 = 0;
            MEMORY[0x21CEDB240](&v20, 8);
          }

          while (v7 > v20 * v2);
          v6 = (v20 * v2) >> 64;
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = v1[2];
        if (v4 >= v9)
        {
          goto LABEL_19;
        }

        if (v8 >= v9)
        {
          goto LABEL_20;
        }

        v18 = *&v1[2 * v4 + 4];
        v19 = *&v1[2 * v8 + 4];
        v10 = v18;

        v11 = v19;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_21A3F6A3C(v1);
        }

        if (v4 >= v1[2])
        {
          goto LABEL_21;
        }

        v12 = &v1[2 * v4 + 4];
        v13 = *v12;
        v14 = *(v12 + 8);
        *v12 = v19;

        if (v8 >= v1[2])
        {
          goto LABEL_22;
        }

        v15 = &v1[2 * v8 + 4];
        v16 = *v15;
        v17 = *(v15 + 8);
        *v15 = v18;

        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

void sub_21A3F67DC()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_32;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2 > 1)
  {
    do
    {
      v3 = 0;
      v4 = v2 - 2;
      while (1)
      {
        v17 = 0;
        MEMORY[0x21CEDB240](&v17, 8);
        v6 = (v17 * v2) >> 64;
        if (v2 > v17 * v2)
        {
          v7 = -v2 % v2;
          if (v7 > v17 * v2)
          {
            do
            {
              v17 = 0;
              MEMORY[0x21CEDB240](&v17, 8);
            }

            while (v7 > v17 * v2);
            v6 = (v17 * v2) >> 64;
          }
        }

        v8 = v3 + v6;
        if (__OFADD__(v3, v6))
        {
          break;
        }

        if (v3 != v8)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x21CED9EA0](v3, v1);
            v11 = MEMORY[0x21CED9EA0](v8, v1);
          }

          else
          {
            v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v3 >= v9)
            {
              goto LABEL_29;
            }

            if (v8 >= v9)
            {
              goto LABEL_30;
            }

            v10 = *(v1 + 32 + 8 * v3);
            v11 = *(v1 + 32 + 8 * v8);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
          {
            v1 = sub_21A4131E4(v1);
            v12 = (v1 >> 62) & 1;
          }

          else
          {
            LODWORD(v12) = 0;
          }

          v13 = v1 & 0xFFFFFFFFFFFFFF8;
          v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20);
          *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20) = v11;

          if ((v1 & 0x8000000000000000) != 0 || v12)
          {
            v1 = sub_21A4131E4(v1);
            v13 = v1 & 0xFFFFFFFFFFFFFF8;
            if ((v8 & 0x8000000000000000) != 0)
            {
LABEL_27:
              __break(1u);
              break;
            }
          }

          else if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_27;
          }

          if (v8 >= *(v13 + 16))
          {
            goto LABEL_31;
          }

          v15 = v13 + 8 * v8;
          v16 = *(v15 + 32);
          *(v15 + 32) = v10;

          *v0 = v1;
        }

        --v2;
        if (v3++ == v4)
        {
          return;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      if (sub_21A451844() < 2)
      {
        break;
      }

      v2 = sub_21A451844();
    }

    while (v2 >= 2);
  }
}

unint64_t sub_21A3F6A64(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = sub_21A3F6DB4(0xFuLL, a1, a2);
  v8 = sub_21A3F6DB4(v6, a1, a2);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_21A451104();
      }

      else
      {
        v14 = result >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v28 = a1;
          v29 = a2 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v15 = sub_21A4517E4();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_21A451114();
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v28 = a1;
          v29 = a2 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = sub_21A4517E4();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_40;
  }

  return 0;
}

unint64_t sub_21A3F6CA0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_21A4517E4();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_21A3F6DB4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_21A3F6E4C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_21A3F6CA0(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_21A3F6E4C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_21A424280(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A3F6EC0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, char a6, uint64_t a7)
{
  v13 = type metadata accessor for PFLTaskDiscovery();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v44[3] = type metadata accessor for PFLPluginTaskDiscoveryPolicy();
  v44[4] = &off_282B406C0;
  v44[0] = a7;
  *(v16 + 88) = 0u;
  *(v16 + 104) = 0u;
  *(v16 + 120) = 0;
  *(v16 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_numDeliveries) = 0;
  v17 = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_pm;
  type metadata accessor for PerformanceMeasure();
  v18 = swift_allocObject();
  *(v18 + 16) = MEMORY[0x277D84F98];
  *(v16 + v17) = v18;
  *(v16 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_policyDownloadTimeSeconds) = 0;
  *(v16 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskDownloadTimeSeconds) = 0;
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v39 = a3;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  v19 = type metadata accessor for PFLTaskPreferences(0);
  v20 = (a5 + *(v19 + 20));
  v21 = (v20 + *(type metadata accessor for PFLDecodableTaskParameters(0) + 48));
  v22 = v21[1];
  v37 = *v21;
  if (*(a5 + *(v19 + 24)) == 1)
  {
    v23 = v20[1];
    if (v23 == 6)
    {
      v23 = a5[1];
      if (v23 == 3)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v23 = 4;
LABEL_9:
        *&v40 = v24;
        *(&v40 + 1) = v23;
        v41 = v25;
        v42 = v26;
        v27 = type metadata accessor for PFLCKTaskDownloader();
        swift_allocObject();

        sub_21A3ED4E4(v24, v23);
        v28 = sub_21A3E8C70(&v40, v37, v22, v39, a4, a6 & 1);
        v42 = v27;
        v43 = &off_282B40358;
        sub_21A3ED49C(v24, v23);
        goto LABEL_11;
      }

      v25 = a5[2];
      v26 = a5[3];
      v24 = *a5;
    }

    else
    {
      v25 = v20[2];
      v26 = v20[3];
      v24 = *v20;
    }
  }

  else
  {
    v24 = *a5;
    v23 = a5[1];
    v25 = a5[2];
    v26 = a5[3];
  }

  sub_21A3ED4E4(v24, v23);
  if (v23 < 6)
  {
    goto LABEL_9;
  }

  v29 = type metadata accessor for PFLLocalTaskDownloader();
  v28 = swift_allocObject();
  v28[2] = v24;
  v28[3] = v23;
  v28[4] = v25;
  v28[5] = v26;
  v42 = v29;
  v43 = &off_282B40FF0;

  sub_21A3ED49C(v24, v23);
LABEL_11:
  *&v40 = v28;
  sub_21A3C50DC(&v40, v16 + 48);
  type metadata accessor for PopulationSegmentation();
  swift_initStackObject();
  sub_21A401DA8();
  *&v40 = 0x2D676553706F50;
  *(&v40 + 1) = 0xE700000000000000;
  sub_21A3ED2CC();
  v30 = sub_21A451654();
  MEMORY[0x21CED98B0](v30);

  v31 = sub_21A402528(v40, *(&v40 + 1));
  v33 = v32;

  if (v33)
  {
  }

  else
  {
    v34 = sub_21A3ECA44(100) + 1;
    if (v34 <= 100)
    {
      if (v34 < 91)
      {
        if (v34 <= 80)
        {
          v31 = 0x6E69617274;
        }

        else
        {
          v31 = 7102838;
        }

        if (v34 <= 80)
        {
          v33 = 0xE500000000000000;
        }

        else
        {
          v33 = 0xE300000000000000;
        }
      }

      else
      {
        v33 = 0xE400000000000000;
        v31 = 1953719668;
      }
    }

    else
    {
      v33 = 0xEB00000000646572;
      v31 = 0x6574736575716573;
    }

    *&v40 = 0x2D676553706F50;
    *(&v40 + 1) = 0xE700000000000000;
    v35 = sub_21A451654();
    MEMORY[0x21CED98B0](v35);

    sub_21A4023B0(v40, *(&v40 + 1), v31, v33);
  }

  *(v16 + 128) = v31;
  *(v16 + 136) = v33;
  sub_21A3F924C(a5, v16 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskPreferences, type metadata accessor for PFLTaskPreferences);
  sub_21A3F939C(v44, v16 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_policy);
  sub_21A3D843C(a5);
  *(v16 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_maximumTasksToDeliver) = 1;
  __swift_destroy_boxed_opaque_existential_0(v44);
  return v16;
}

uint64_t sub_21A3F73FC()
{
  v0 = sub_21A450A74();
  v1 = [v0 domain];
  v2 = sub_21A451084();
  v4 = v3;

  MEMORY[0x21CED98B0](58, 0xE100000000000000);
  [v0 code];
  v5 = sub_21A451974();
  MEMORY[0x21CED98B0](v5);

  type metadata accessor for PFLPluginError();
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v4;
  return result;
}

uint64_t sub_21A3F74C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21A3E700C(a1, a2);
  }

  return a1;
}

uint64_t sub_21A3F74DC()
{
  v0 = sub_21A450D14();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A450D04();
  v5 = _s24PrivateFederatedLearning8PFLUtilsO18getDayAndHourInGMT4dateSi3day_Si4hourt10Foundation4DateV_tFZ_0(v4);
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v12 = v5;
  v13 = sub_21A451974();
  v14 = v8;
  MEMORY[0x21CED98B0](58, 0xE100000000000000);
  v12 = v7;
  v9 = sub_21A451974();
  MEMORY[0x21CED98B0](v9);

  return v13;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21A3F7634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 664) = v14;
  *(v8 + 640) = a8;
  *(v8 + 632) = a7;
  *(v8 + 624) = a6;
  *(v8 + 616) = a5;
  *(v8 + 608) = a4;
  *(v8 + 600) = a3;
  *(v8 + 592) = a2;
  *(v8 + 584) = a1;
  v12 = (v15 + *v15);
  v9 = v15[1];
  v10 = swift_task_alloc();
  *(v8 + 648) = v10;
  *v10 = v8;
  v10[1] = sub_21A3F7750;

  return v12(v8 + 568);
}

uint64_t sub_21A3F7750()
{
  v2 = *(*v1 + 648);
  v5 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v3 = sub_21A3F7C10;
  }

  else
  {
    v3 = sub_21A3F7864;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A3F7864()
{
  if (*(v0 + 664) == 1)
  {
    v1 = v0[76];
    v0[67] = v0[75];
    v0[68] = v1;
    v0[69] = 46;
    v2 = 0xE100000000000000;
    v0[70] = 0xE100000000000000;
    sub_21A3ED2CC();
    v3 = sub_21A451644();
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = (v3 + 16 + 16 * v4);
      v6 = *v5;
      v2 = v5[1];
    }

    else
    {
      v6 = 85;
    }

    v7 = v0[80];
    v8 = v0[79];

    if (v6 != v8 || v2 != v7)
    {
      v9 = v0[80];
      v10 = v0[79];
      if ((sub_21A4519B4() & 1) == 0)
      {
        v11 = v0[80];

        v27 = v0[79];
      }
    }

    v12 = v0[78];
    v13 = v0[77];
    v26 = v0[74];
    v14 = v0[73];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A456280;
    *(inited + 32) = 0x6E6967756C70;
    *(inited + 40) = 0xE600000000000000;
    v16 = sub_21A451054();

    *(inited + 48) = v16;
    *(inited + 56) = 0x64496B736174;
    *(inited + 64) = 0xE600000000000000;
    *(inited + 72) = sub_21A451054();
    *(inited + 80) = 0x6E6F697461636F6CLL;
    *(inited + 88) = 0xE800000000000000;
    *(inited + 96) = sub_21A451054();
    *(inited + 104) = 0x65736143657375;
    *(inited + 112) = 0xE700000000000000;
    v17 = sub_21A451054();

    *(inited + 120) = v17;
    *(inited + 128) = 0x646F43726F727265;
    *(inited + 136) = 0xE900000000000065;
    *(inited + 144) = sub_21A4514E4();
    *(inited + 152) = 0x6D6F44726F727265;
    *(inited + 160) = 0xEB000000006E6961;
    *(inited + 168) = sub_21A451054();
    v18 = sub_21A3E57A0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
    swift_arrayDestroy();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    v20 = sub_21A451054();
    v0[56] = sub_21A3ED530;
    v0[57] = v19;
    v0[52] = MEMORY[0x277D85DD0];
    v0[53] = 1107296256;
    v0[54] = sub_21A432B2C;
    v0[55] = &block_descriptor_127;
    v21 = _Block_copy(v0 + 52);

    AnalyticsSendEventLazy();

    _Block_release(v21);
    v22 = v0[57];
  }

  v23 = v0[71];
  v24 = v0[1];

  return v24(v23);
}

uint64_t sub_21A3F7C10()
{
  v1 = v0[82];
  v2 = sub_21A450A74();
  [v2 code];

  v0[72] = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 58);
  }

  else
  {
    v4 = v0[82];
    v5 = sub_21A450A74();
    v6 = [v5 domain];

    sub_21A451084();
  }

  v7 = v0[76];
  v0[63] = v0[75];
  v0[64] = v7;
  v0[65] = 46;
  v8 = 0xE100000000000000;
  v0[66] = 0xE100000000000000;
  sub_21A3ED2CC();
  v9 = sub_21A451644();
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 16 + 16 * v10);
    v12 = *v11;
    v8 = v11[1];
  }

  else
  {
    v12 = 85;
  }

  v13 = v0[80];
  v14 = v0[79];

  if (v12 != v14 || v8 != v13)
  {
    v15 = v0[80];
    v16 = v0[79];
    if ((sub_21A4519B4() & 1) == 0)
    {
      v17 = v0[80];

      v34 = v0[79];
    }
  }

  v35 = v0[82];
  v18 = v0[78];
  v19 = v0[77];
  v33 = v0[74];
  v20 = v0[73];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A456280;
  *(inited + 32) = 0x6E6967756C70;
  *(inited + 40) = 0xE600000000000000;
  v22 = sub_21A451054();

  *(inited + 48) = v22;
  *(inited + 56) = 0x64496B736174;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = sub_21A451054();
  *(inited + 80) = 0x6E6F697461636F6CLL;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_21A451054();
  *(inited + 104) = 0x65736143657375;
  *(inited + 112) = 0xE700000000000000;
  v23 = sub_21A451054();

  *(inited + 120) = v23;
  *(inited + 128) = 0x646F43726F727265;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = sub_21A4514E4();
  *(inited + 152) = 0x6D6F44726F727265;
  *(inited + 160) = 0xEB000000006E6961;
  v24 = sub_21A451054();

  *(inited + 168) = v24;
  v25 = sub_21A3E57A0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  v27 = sub_21A451054();
  v0[50] = sub_21A3ED530;
  v0[51] = v26;
  v0[46] = MEMORY[0x277D85DD0];
  v0[47] = 1107296256;
  v0[48] = sub_21A432B2C;
  v0[49] = &block_descriptor_118;
  v28 = _Block_copy(v0 + 46);

  AnalyticsSendEventLazy();

  _Block_release(v28);
  v29 = v0[51];

  swift_willThrow();
  v30 = v0[1];
  v31 = v0[82];

  return v30();
}

uint64_t sub_21A3F80CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21A3F9470;

  return sub_21A3F2B4C(a1, v4, v5, v7, v6);
}

unint64_t sub_21A3F8224()
{
  result = qword_27CD28648;
  if (!qword_27CD28648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28648);
  }

  return result;
}

unint64_t sub_21A3F827C()
{
  result = qword_27CD28650;
  if (!qword_27CD28650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28650);
  }

  return result;
}

unint64_t sub_21A3F82D4()
{
  result = qword_281561F18;
  if (!qword_281561F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281561F18);
  }

  return result;
}

unint64_t sub_21A3F832C()
{
  result = qword_27CD28658;
  if (!qword_27CD28658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28658);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EspressoFunction(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EspressoFunction(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_24PrivateFederatedLearning14TaskResolutionO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21A3F8428(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A3F847C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_21A3F84D8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t dispatch thunk of PFLTaskRunner.resolveTask(for:taskPreferences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_21A3EC5D4;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PFLTaskRunner.ensureDataAvailability(taskPreferences:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21A3EC5D4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PFLTaskRunner.isDataAvailable(taskPreferences:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21A3F88EC;

  return v11(a1, a2, a3);
}

uint64_t sub_21A3F88EC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of PFLTaskRunner.isDataAvailable()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A3F9478;

  return v9(a1, a2);
}

uint64_t dispatch thunk of PFLTaskRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 56);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_21A3F8C48;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_21A3F8C48(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of PFLTaskRunner.handleNoTasksAvailable(taskPreferences:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 80);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21A3F9470;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PFLTaskRunner.handleNoAvailableTasks(taskPreferences:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21A3F9470;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PFLPlugin.run(context:runner:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 216);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21A3F88EC;

  return v10(a1, a2);
}

uint64_t sub_21A3F924C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A3F92B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKRecipeDescriptorRecord(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A3F9338()
{
  result = qword_27CD286A8;
  if (!qword_27CD286A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD286A0, &qword_21A456A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD286A8);
  }

  return result;
}

uint64_t sub_21A3F939C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21A3F9400(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A3F94A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_21A451254() != a1 || v9 != a2)
  {
    v10 = sub_21A4519B4();

    if (v10)
    {
      return v8;
    }

    v8 = sub_21A451164();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t static PFLUtils.deviceLocale()()
{
  v0 = sub_21A450D94();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A450E14();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A450DD4();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9668], v0);
  sub_21A450D54();
  v10 = sub_21A450D64();
  v12 = v11;

  (*(v1 + 8))(v4, v0);
  v13 = sub_21A3FFDD0(v10, v12);
  v15 = v14;

  v18[4] = v13;
  v18[5] = v15;
  v18[2] = 45;
  v18[3] = 0xE100000000000000;
  v18[0] = 95;
  v18[1] = 0xE100000000000000;
  sub_21A3ED2CC();
  v16 = sub_21A451654();
  (*(v6 + 8))(v9, v5);

  return v16;
}

uint64_t static PFLUtils.deviceLanguage()()
{
  v0 = sub_21A450DF4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28620, &unk_21A456510);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_21A450E14();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A450DD4();
  sub_21A450E04();
  sub_21A450DE4();
  (*(v1 + 8))(v4, v0);
  v14 = sub_21A450D84();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    sub_21A3D3BF0(v8, &qword_27CD28620, &unk_21A456510);
    v16 = 0x6E776F6E6B6E7524;
  }

  else
  {
    v16 = sub_21A450D74();
    (*(v15 + 8))(v8, v14);
  }

  (*(v10 + 8))(v13, v9);
  return v16;
}

uint64_t static PFLUtils.deviceRegion()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28618, &qword_21A456508);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_21A450E14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A450DD4();
  sub_21A450DC4();
  v9 = sub_21A450DB4();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {
    sub_21A3D3BF0(v3, &qword_27CD28618, &qword_21A456508);
    v11 = 0x6E776F6E6B6E7524;
  }

  else
  {
    v11 = sub_21A450D74();
    (*(v10 + 8))(v3, v9);
  }

  (*(v5 + 8))(v8, v4);
  return v11;
}

uint64_t sub_21A3F9D40(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_21A3F9E38;

  return v8(a2);
}

uint64_t sub_21A3F9E38(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    v9[1] = a2;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t static PFLUtils.rethrow<A>(_:for:)(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a2;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_21A3FA050;

  return v8(a1);
}

uint64_t sub_21A3FA050()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21A3FA184, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_21A3FA184()
{
  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_21A450F24();
  __swift_project_value_buffer(v3, qword_27CD28C90);
  v4 = v1;
  v5 = v2;
  v6 = sub_21A450F04();
  v7 = sub_21A451584();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[4];
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    *(v10 + 12) = 2112;
    v14 = v9;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v15;
    v11[1] = v15;
    _os_log_impl(&dword_21A3C2000, v6, v7, "Override error: %@ -> with %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28608, &qword_21A456570);
    swift_arrayDestroy();
    MEMORY[0x21CEDB220](v11, -1, -1);
    MEMORY[0x21CEDB220](v10, -1, -1);
  }

  v16 = v0[4];
  v17 = v0[2];

  swift_willThrow();
  v18 = v17;
  v19 = v0[1];
  v20 = v0[2];

  return v19();
}

uint64_t static PFLUtils.catchAndHandle<A>(for:handler:)(uint64_t (*a1)(void), uint64_t a2, void (*a3)(uint64_t))
{
  result = a1();
  if (v3)
  {
    a3(v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t static PFLUtils.language(locale:)()
{
  v0 = sub_21A450DF4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28620, &unk_21A456510);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  sub_21A450E04();
  sub_21A450DE4();
  (*(v1 + 8))(v4, v0);
  v9 = sub_21A450D84();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21A3D3BF0(v8, &qword_27CD28620, &unk_21A456510);
    return 0x6E776F6E6B6E7524;
  }

  else
  {
    v12 = sub_21A450D74();
    (*(v10 + 8))(v8, v9);
    return v12;
  }
}

uint64_t static PFLUtils.region(locale:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28618, &qword_21A456508);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  sub_21A450DC4();
  v4 = sub_21A450DB4();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_21A3D3BF0(v3, &qword_27CD28618, &qword_21A456508);
    return 0x6E776F6E6B6E7524;
  }

  else
  {
    v7 = sub_21A450D74();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_21A3FA748(void *a1, uint64_t a2)
{
  sub_21A4352F4(a2);
  if (!v2)
  {
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v4 = sub_21A450F24();
  __swift_project_value_buffer(v4, qword_27CD28C90);
  v5 = v2;
  v6 = a1;
  v7 = sub_21A450F04();
  v8 = sub_21A451584();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    v11 = v2;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    *(v9 + 12) = 2112;
    v13 = a1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v14;
    v10[1] = v14;
    _os_log_impl(&dword_21A3C2000, v7, v8, "Override error: %@ -> with %@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28608, &qword_21A456570);
    swift_arrayDestroy();
    MEMORY[0x21CEDB220](v10, -1, -1);
    MEMORY[0x21CEDB220](v9, -1, -1);
  }

  swift_willThrow();
  v15 = a1;
}

uint64_t sub_21A3FA920@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v42 = a1;
  v41 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD287D8, &qword_21A456BD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v40 - v6;
  v8 = sub_21A450AB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21A450BE4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a2;
  v19 = *(a2 + 16);
  v18 = *(a2 + 24);
  (*(v9 + 104))(v12, *MEMORY[0x277CC91D0], v8);
  (*(v14 + 56))(v7, 1, 1, v13);

  sub_21A450BA4();
  v20 = v43;
  v21 = sub_21A450C04();
  if (v20)
  {
    (*(v14 + 8))(v17, v13);
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v23 = sub_21A450F24();
    __swift_project_value_buffer(v23, qword_27CD28C90);
    v24 = v20;
    v25 = v42;
    v26 = v42;
    v27 = sub_21A450F04();
    v28 = sub_21A451584();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412546;
      v31 = v20;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      *(v29 + 12) = 2112;
      v33 = v25;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v34;
      v30[1] = v34;
      _os_log_impl(&dword_21A3C2000, v27, v28, "Override error: %@ -> with %@", v29, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28608, &qword_21A456570);
      swift_arrayDestroy();
      MEMORY[0x21CEDB220](v30, -1, -1);
      MEMORY[0x21CEDB220](v29, -1, -1);
    }

    swift_willThrow();
    v35 = v25;
  }

  else
  {
    v37 = v21;
    v38 = v22;
    (*(v14 + 8))(v17, v13);

    v39 = v41;
    *v41 = v37;
    v39[1] = v38;
  }

  return result;
}

id static PFLUtils.rethrow<A>(_:for:)(void *a1, uint64_t (*a2)(void))
{
  result = a2();
  if (v2)
  {
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v5 = sub_21A450F24();
    __swift_project_value_buffer(v5, qword_27CD28C90);
    v6 = v2;
    v7 = a1;
    v8 = sub_21A450F04();
    v9 = sub_21A451584();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      v12 = v2;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      *(v10 + 12) = 2112;
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v15;
      v11[1] = v15;
      _os_log_impl(&dword_21A3C2000, v8, v9, "Override error: %@ -> with %@", v10, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28608, &qword_21A456570);
      swift_arrayDestroy();
      MEMORY[0x21CEDB220](v11, -1, -1);
      MEMORY[0x21CEDB220](v10, -1, -1);
    }

    swift_willThrow();
    return a1;
  }

  return result;
}

uint64_t static PFLUtils.throwIfFalse(error:for:)(void *a1, uint64_t (*a2)(void))
{
  result = a2();
  if ((result & 1) == 0)
  {
    swift_willThrow();
    return a1;
  }

  return result;
}

uint64_t static PFLUtils.throwIfFalse(error:for:)(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_21A3FB004;

  return v6();
}

uint64_t sub_21A3FB004(char a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_21A3FB104, 0, 0);
}

uint64_t sub_21A3FB104()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 8);
  }

  else
  {
    v2 = *(v0 + 16);
    swift_willThrow();
    v3 = v2;
    v1 = *(v0 + 8);
    v4 = *(v0 + 16);
  }

  return v1();
}

uint64_t static PFLUtils.throwIfError(_:)(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    v2 = result;
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v3 = sub_21A450F24();
    __swift_project_value_buffer(v3, qword_27CD28C90);
    v4 = v2;
    v5 = sub_21A450F04();
    v6 = sub_21A451584();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_21A3C2000, v5, v6, "%@", v7, 0xCu);
      sub_21A3D3BF0(v8, &qword_27CD28608, &qword_21A456570);
      MEMORY[0x21CEDB220](v8, -1, -1);
      MEMORY[0x21CEDB220](v7, -1, -1);
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t static PFLUtils.throwIfTimeout<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 32) = a2;
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  return MEMORY[0x2822009F8](sub_21A3FB330, 0, 0);
}

uint64_t sub_21A3FB330()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = *(MEMORY[0x277D859B8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_21A3FB42C;
  v7 = *(v0 + 16);
  v10 = *(v0 + 48);

  return MEMORY[0x282200740](v7);
}

uint64_t sub_21A3FB42C()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21A3FB568, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_21A3FB568()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_21A3FB5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 56) = a5;
  *(v6 + 48) = a6;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = sub_21A4515F4();
  *(v6 + 64) = v7;
  v8 = *(v7 - 8);
  *(v6 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD286D0, &qword_21A456AA8) - 8) + 64) + 15;
  *(v6 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3FB6D4, 0, 0);
}

uint64_t sub_21A3FB6D4()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[6];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  v7 = sub_21A451434();
  v8 = *(*(v7 - 8) + 56);
  v8(v1, 1, 1, v7);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = v5;
  v9[6] = v4;

  v0[12] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  v10 = sub_21A451484();
  sub_21A3FBD10(v1, &unk_21A456C48, v9, v10);
  sub_21A3D3BF0(v1, qword_27CD286D0, &qword_21A456AA8);
  v8(v1, 1, 1, v7);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v2;
  v11[5] = v3;
  sub_21A3FBD10(v1, &unk_21A456C58, v11, v10);
  sub_21A3D3BF0(v1, qword_27CD286D0, &qword_21A456AA8);
  v12 = *(MEMORY[0x277D85818] + 4);
  v13 = swift_task_alloc();
  v0[13] = v13;
  *v13 = v0;
  v13[1] = sub_21A3FB908;
  v14 = v0[10];
  v15 = v0[3];

  return MEMORY[0x2822004D0](v14, 0, 0, v10);
}

uint64_t sub_21A3FB908()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_21A3FBBAC;
  }

  else
  {
    v3 = sub_21A3FBA1C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A3FBA1C()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v1, v0[8]);
    sub_21A3DCAF8();
    swift_allocError();
    *v4 = 5;
    swift_willThrow();
    v6 = v0[10];
    v5 = v0[11];
  }

  else
  {
    v9 = v0[11];
    v8 = v0[12];
    v10 = v0[3];
    (*(v3 + 32))(v0[2], v1, v2);
    v11 = *v10;
    sub_21A451474();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_21A3FBBAC()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_21A3FBC18(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_21A3EC5D4;

  return v9(a1);
}

uint64_t sub_21A3FBD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD286D0, &qword_21A456AA8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v23 - v11;
  sub_21A401424(a1, v23 - v11);
  v13 = sub_21A451434();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_21A3D3BF0(v12, qword_27CD286D0, &qword_21A456AA8);
    if (*(a3 + 16))
    {
LABEL_3:
      v15 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = sub_21A4513E4();
      v18 = v17;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_21A451424();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  v18 = 0;
LABEL_6:
  v19 = *v5;
  v20 = *(a4 + 16);
  v21 = (v18 | v16);
  if (v18 | v16)
  {
    v24[0] = 0;
    v24[1] = 0;
    v21 = v24;
    v24[2] = v16;
    v24[3] = v18;
  }

  v23[1] = 1;
  v23[2] = v21;
  v23[3] = v19;
  swift_task_create();
}

uint64_t sub_21A3FBF14(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v4 = v3;
  v5 = *(MEMORY[0x277D857E8] + 4);
  v6 = swift_task_alloc();
  *(v1 + 24) = v6;
  *v6 = v1;
  v6[1] = sub_21A3FBFFC;
  a1 = v4;

  return MEMORY[0x282200480](a1);
}

uint64_t sub_21A3FBFFC()
{
  v2 = *(*v1 + 24);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21A3FC12C, 0, 0);
  }
}

uint64_t sub_21A3FC12C()
{
  sub_21A3DCAF8();
  swift_allocError();
  *v1 = 4;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21A3FC1BC(uint64_t a1)
{
  v36 = a1;
  v2 = *v1;
  v3 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  v4 = sub_21A451414();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v31 = &v31 - v6;
  v35 = v7;
  v8 = sub_21A4515F4();
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = sub_21A451B84();
  v13 = sub_21A4515F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;
  v21 = *(v2 + 96);
  swift_beginAccess();
  (*(v14 + 16))(v20, v1 + v21, v13);
  v22 = *(v12 - 8);
  LODWORD(v2) = (*(v22 + 48))(v20, 1, v12);
  result = (*(v14 + 8))(v20, v13);
  if (v2 == 1)
  {
    v24 = v36;
    (*(v22 + 16))(v18, v36, v12);
    (*(v22 + 56))(v18, 0, 1, v12);
    swift_beginAccess();
    (*(v14 + 40))(v1 + v21, v18, v13);
    swift_endAccess();
    v25 = *(*v1 + 104);
    swift_beginAccess();
    v27 = v32;
    v26 = v33;
    (*(v32 + 16))(v11, v1 + v25, v33);
    v29 = v34;
    v28 = v35;
    if ((*(v34 + 48))(v11, 1, v35))
    {
      return (*(v27 + 8))(v11, v26);
    }

    else
    {
      v30 = v31;
      (*(v29 + 16))(v31, v11, v28);
      (*(v27 + 8))(v11, v26);
      sub_21A3FC60C(v24, v28);
      return (*(v29 + 8))(v30, v28);
    }
  }

  return result;
}

uint64_t sub_21A3FC60C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v6);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = sub_21A451B84();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v23 - v19;
  (*(v21 + 16))(&v23 - v19, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v20, v10);
    return sub_21A4513F4();
  }

  else
  {
    (*(v4 + 32))(v8, v20, v3);
    return sub_21A451404();
  }
}

uint64_t sub_21A3FC848(uint64_t a1)
{
  v3 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  v4 = sub_21A451B84();
  v5 = sub_21A4515F4();
  v32 = *(v5 - 8);
  v33 = v5;
  v6 = *(v32 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = *(v4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v30 = &v29 - v12;
  v13 = sub_21A451414();
  v14 = sub_21A4515F4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  v19 = *(v13 - 8);
  v20 = *(v19 + 16);
  v31 = a1;
  v21 = a1;
  v22 = v32;
  v20(&v29 - v17, v21, v13);
  (*(v19 + 56))(v18, 0, 1, v13);
  v23 = *(*v1 + 104);
  swift_beginAccess();
  (*(v15 + 40))(v1 + v23, v18, v14);
  swift_endAccess();
  v24 = *(*v1 + 96);
  swift_beginAccess();
  v25 = v1 + v24;
  v26 = v33;
  (*(v22 + 16))(v9, v25, v33);
  if ((*(v10 + 48))(v9, 1, v4) == 1)
  {
    return (*(v22 + 8))(v9, v26);
  }

  v28 = v30;
  (*(v10 + 32))(v30, v9, v4);
  sub_21A3FC60C(v28, v13);
  return (*(v10 + 8))(v28, v4);
}

uint64_t sub_21A3FCBE4()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  sub_21A451B84();
  v3 = sub_21A4515F4();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(*v0 + 104);
  sub_21A451414();
  v5 = sub_21A4515F4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_21A3FCD1C()
{
  v0 = sub_21A3FCBE4();

  return MEMORY[0x282200960](v0);
}

uint64_t *sub_21A3FCD5C()
{
  v1 = *v0;
  swift_defaultActor_initialize();
  v2 = *(*v0 + 96);
  v3 = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  v4 = sub_21A451B84();
  (*(*(v4 - 8) + 56))(v0 + v2, 1, 1, v4);
  v5 = *(*v0 + 104);
  v6 = sub_21A451414();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  return v0;
}

uint64_t static PFLUtils.withTimeout<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 32) = a2;
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD286D0, &qword_21A456AA8) - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3FCF44, 0, 0);
}

uint64_t sub_21A3FCF44()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = type metadata accessor for PFLUtils.TimeoutCoordinator();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_21A3FCD5C();
  v0[8] = v9;
  v10 = sub_21A451434();
  v11 = *(*(v10 - 8) + 56);
  v11(v2, 1, 1, v10);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v4;
  v12[5] = v3;
  v12[6] = v9;

  v13 = sub_21A3FDA40(0, 0, v2, &unk_21A456AB8, v12);
  v0[9] = v13;
  v11(v2, 1, 1, v10);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v5;
  v14[5] = v9;
  v14[6] = v13;

  v0[10] = sub_21A3FDA40(0, 0, v2, &unk_21A456AC8, v14);
  v15 = *(MEMORY[0x277D85A40] + 4);
  v16 = swift_task_alloc();
  v0[11] = v16;
  *v16 = v0;
  v16[1] = sub_21A3FD18C;
  v17 = v0[6];
  v18 = v0[2];

  return MEMORY[0x2822008A0](v18, 0, 0, 0xD000000000000013, 0x800000021A45C100, sub_21A400138, v9, v17);
}

uint64_t sub_21A3FD18C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_21A3FD350;
  }

  else
  {
    v3 = sub_21A3FD2A0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A3FD2A0()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  sub_21A451444();

  v5 = v0[1];

  return v5();
}

uint64_t sub_21A3FD350()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  sub_21A451444();

  v5 = v0[1];
  v6 = v0[12];

  return v5();
}

uint64_t sub_21A3FD400(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = *(*a6 + 80);
  v6[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  v9 = sub_21A451B84();
  v6[4] = v9;
  v10 = *(v9 - 8);
  v6[5] = v10;
  v11 = *(v10 + 64) + 15;
  v6[6] = swift_task_alloc();
  v12 = *(v8 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v6[8] = v14;
  v18 = (a4 + *a4);
  v15 = a4[1];
  v16 = swift_task_alloc();
  v6[9] = v16;
  *v16 = v6;
  v16[1] = sub_21A3FD5EC;

  return v18(v14);
}

uint64_t sub_21A3FD5EC()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_21A3FD8B4;
  }

  else
  {
    v3 = sub_21A3FD700;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A3FD700()
{
  v1 = v0[4];
  v2 = v0[2];
  (*(v0[7] + 16))(v0[6], v0[8], v0[3]);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x2822009F8](sub_21A3FD79C, v2, 0);
}

uint64_t sub_21A3FD79C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  sub_21A3FC1BC(v1);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_21A3FD830, 0, 0);
}

uint64_t sub_21A3FD830()
{
  (*(v0[7] + 8))(v0[8], v0[3]);
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21A3FD8B4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  **(v0 + 48) = v1;
  swift_storeEnumTagMultiPayload();
  v4 = v1;

  return MEMORY[0x2822009F8](sub_21A3FD938, v3, 0);
}

uint64_t sub_21A3FD938()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  sub_21A3FC1BC(v1);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_21A3FD9CC, 0, 0);
}

uint64_t sub_21A3FD9CC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21A3FDA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD286D0, &qword_21A456AA8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_21A401424(a3, v27 - v11);
  v13 = sub_21A451434();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21A3D3BF0(v12, qword_27CD286D0, &qword_21A456AA8);
  }

  else
  {
    sub_21A451424();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21A4513E4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_21A4510E4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_21A3D3BF0(a3, qword_27CD286D0, &qword_21A456AA8);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21A3D3BF0(a3, qword_27CD286D0, &qword_21A456AA8);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_21A3FDD30(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  *(v6 + 16) = a1;
  v7 = *(*a5 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  v8 = sub_21A451B84();
  *(v6 + 40) = v8;
  v9 = *(v8 - 8);
  *(v6 + 48) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3FDE2C, 0, 0);
}

uint64_t sub_21A3FDE2C(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v4 = v3;
  v5 = *(MEMORY[0x277D857E8] + 4);
  v6 = swift_task_alloc();
  *(v1 + 64) = v6;
  *v6 = v1;
  v6[1] = sub_21A3FDF14;
  a1 = v4;

  return MEMORY[0x282200480](a1);
}

uint64_t sub_21A3FDF14()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_21A3FE1EC;
  }

  else
  {
    v3 = sub_21A3FE028;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A3FE028()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[3];
  sub_21A3DCAF8();
  v4 = swift_allocError();
  *v5 = 4;
  *v1 = v4;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x2822009F8](sub_21A3FE0D4, v3, 0);
}

uint64_t sub_21A3FE0D4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  sub_21A3FC1BC(v1);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_21A3FE168, 0, 0);
}

uint64_t sub_21A3FE168()
{
  v1 = v0[4];
  sub_21A451444();
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21A3FE1EC()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21A3FE254(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  v5 = sub_21A451414();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD286D0, &qword_21A456AA8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = sub_21A451434();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v6 + 16))(v9, a1, v5);
  v15 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = v4;
  *(v16 + 5) = a2;
  (*(v6 + 32))(&v16[v15], v9, v5);

  sub_21A3FDA40(0, 0, v13, &unk_21A456C20, v16);
}

uint64_t sub_21A3FE474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_21A3FE494, a4, 0);
}

uint64_t sub_21A3FE494()
{
  v1 = v0[2];
  sub_21A3FC848(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t static PFLUtils.catchAndHandle<A>(for:handler:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = sub_21A3FE5F0;

  return v10(a1);
}

uint64_t sub_21A3FE5F0()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21A3FE724, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_21A3FE724()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 40));
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 40);

  return v2();
}

void static PFLUtils.runAsync<A>(work:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a1;
  v27 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  v6 = sub_21A451B84();
  v30 = sub_21A4515F4();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v30);
  v10 = (&v26 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD286D0, &qword_21A456AA8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - v13;
  v15 = dispatch_semaphore_create(0);
  v28 = a3;
  v16 = type metadata accessor for AsyncResult();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_21A3FF498();
  v20 = sub_21A451434();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v29;
  v21[5] = a2;
  v21[6] = v19;
  v21[7] = v15;

  v22 = v15;
  sub_21A3FDA40(0, 0, v14, &unk_21A456AE8, v21);

  sub_21A451594();
  v23 = *(*v19 + 88);
  swift_beginAccess();
  (*(v7 + 16))(v10, v19 + v23, v30);
  if ((*(*(v6 - 8) + 48))(v10, 1, v6) == 1)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v24 = 5;
LABEL_5:
    swift_willThrow();

    return;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v10;
    goto LABEL_5;
  }

  (*(*(v28 - 8) + 32))(v27, v10);
}

uint64_t sub_21A3FEB04(uint64_t (*a1)(void))
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return a1();
}

uint64_t sub_21A3FEB40(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v9 = *(*a6 + 80);
  v7[10] = v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  v7[11] = sub_21A451B84();
  v10 = sub_21A4515F4();
  v7[12] = v10;
  v11 = *(v10 - 8);
  v7[13] = v11;
  v12 = *(v11 + 64) + 15;
  v7[14] = swift_task_alloc();
  v13 = *(v9 - 8);
  v7[15] = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v7[16] = v15;
  v19 = (a4 + *a4);
  v16 = a4[1];
  v17 = swift_task_alloc();
  v7[17] = v17;
  *v17 = v7;
  v17[1] = sub_21A3FED3C;

  return v19(v15);
}

uint64_t sub_21A3FED3C()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_21A3FEF94;
  }

  else
  {
    v3 = sub_21A3FEE50;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A3FEE50()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[8];
  (*(v0[15] + 32))(v1, v0[16], v0[10]);
  swift_storeEnumTagMultiPayload();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v6 = *(*v5 + 88);
  swift_beginAccess();
  (*(v2 + 40))(v5 + v6, v1, v3);
  swift_endAccess();
  v7 = v0[16];
  v8 = v0[14];
  v9 = v0[9];
  sub_21A4515A4();

  v10 = v0[1];

  return v10();
}

uint64_t sub_21A3FEF94()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[8];
  *v1 = v0[18];
  swift_storeEnumTagMultiPayload();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v6 = *(*v5 + 88);
  swift_beginAccess();
  (*(v2 + 40))(v5 + v6, v1, v3);
  swift_endAccess();
  v7 = v0[16];
  v8 = v0[14];
  v9 = v0[9];
  sub_21A4515A4();

  v10 = v0[1];

  return v10();
}

uint64_t sub_21A3FF0C4@<X0>(int *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (sub_21A4509B4())
  {
    result = sub_21A451134();
  }

  else
  {
    v5 = 0xE100000000000000;
    result = 95;
  }

  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t FloatingPoint.isNearlyEqual(to:absoluteTolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  v14 = *(*(*(v13 + 16) + 8) + 8);
  sub_21A451834();
  v15 = *(*(a4 + 24) + 8);
  sub_21A451A74();
  v16 = *(v6 + 8);
  v16(v10, a3);
  LOBYTE(v15) = sub_21A450FF4();
  v16(v12, a3);
  return v15 & 1;
}

uint64_t sub_21A3FF388()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  sub_21A451B84();
  v3 = sub_21A4515F4();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  return v0;
}

uint64_t sub_21A3FF444()
{
  v0 = *sub_21A3FF388();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21A3FF498()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  v3 = sub_21A451B84();
  (*(*(v3 - 8) + 56))(v0 + v1, 1, 1, v3);
  return v0;
}

uint64_t sub_21A3FF550(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A3FF648;

  return v7(a1);
}

uint64_t sub_21A3FF648()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21A3FF740(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!*(a1 + 32))
    {
      return MEMORY[0x2821FBD68](a1 + 32, 0);
    }

    a2 = 0;
    v3 = v2 - 1;
    while (v3 != a2)
    {
      if (!*(a1 + 33 + a2++))
      {
        a1 += 32;
        return MEMORY[0x2821FBD68](a1, a2);
      }
    }

    __break(1u);
  }

  __break(1u);
  return MEMORY[0x2821FBD68](a1, a2);
}

uint64_t _s24PrivateFederatedLearning8PFLUtilsO18sysctlStringByName4nameS2S_tFZ_0()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 256;
  v0 = sub_21A451344();
  *(v0 + 16) = 256;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 32) = 0u;
  v1 = sub_21A4510E4();
  sysctlbyname((v1 + 32), (v0 + 32), v6, 0, 0);

  v3 = sub_21A3FF740(v0, v2);

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t _s24PrivateFederatedLearning8PFLUtilsO18getDayAndHourInGMT4dateSi3day_Si4hourt10Foundation4DateV_tFZ_0(uint64_t a1)
{
  v37 = a1;
  v1 = sub_21A450E84();
  v38 = *(v1 - 8);
  v2 = *(v38 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v33[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD287F0, &unk_21A456C60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v33[-v10];
  v39 = sub_21A450EB4();
  v12 = *(v39 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v39);
  v15 = &v33[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_21A450E24();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v33[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_21A450E94();
  v35 = *(v21 - 8);
  v36 = v21;
  v22 = *(v35 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v33[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v17 + 104))(v20, *MEMORY[0x277CC9830], v16);
  sub_21A450E34();
  v25 = v20;
  v26 = v39;
  (*(v17 + 8))(v25, v16);
  sub_21A450EA4();
  result = (*(v12 + 48))(v11, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v12 + 32))(v15, v11, v26);
    sub_21A450E74();
    v28 = *MEMORY[0x277CC9968];
    v29 = v38;
    v30 = *(v38 + 104);
    v30(v7, v28, v1);
    v30(v5, *MEMORY[0x277CC9988], v1);
    v39 = sub_21A450E44();
    v34 = v31;
    v32 = *(v29 + 8);
    v32(v5, v1);
    v32(v7, v1);
    v30(v7, *MEMORY[0x277CC9980], v1);
    v30(v5, v28, v1);
    sub_21A450E44();
    v32(v5, v1);
    v32(v7, v1);
    (*(v35 + 8))(v24, v36);
    if (v34)
    {
      return 0;
    }

    else
    {
      return v39;
    }
  }

  return result;
}

void sub_21A3FFD44()
{
  v0 = sub_21A451054();
  v1 = MGCopyAnswer();

  if (v1)
  {
    swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_21A3FFDD0(uint64_t a1, unint64_t a2)
{
  v3 = a1;

  result = sub_21A3F94A4(64, 0xE100000000000000, v3, a2);
  if (v5)
  {
    return v3;
  }

  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v6 >= result >> 14)
  {
    sub_21A4510F4();
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_21A3FFE74(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_21A3F9470;

  return sub_21A3FB5CC(a1, a2, v7, v8, v6, v9);
}

uint64_t sub_21A3FFF60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21A3F9470;

  return sub_21A3FD400(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21A400070(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v8 = *(v1 + 5);
  v7 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21A3F9470;

  return sub_21A3FDD30(v6, a1, v4, v5, v8, v7);
}

uint64_t sub_21A400158(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21A3F9470;

  return sub_21A3FEB40(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_21A40023C(uint64_t a1)
{
  v1 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  sub_21A451B84();
  result = sub_21A4515F4();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    sub_21A451414();
    result = sub_21A4515F4();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_21A40036C(uint64_t a1)
{
  v1 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  sub_21A451B84();
  result = sub_21A4515F4();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21A400430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_21A400454, 0, 0);
}

uint64_t sub_21A400454()
{
  v1 = *(v0 + 40);
  v2 = v1[20];
  v4 = v1[22];
  v3 = v1[23];
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *(v5 + 16) = *(v0 + 48);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *(v6 + 16) = &unk_21A456BF8;
  *(v6 + 24) = v5;
  v7 = *(MEMORY[0x277CBBE68] + 4);
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD287E8, &qword_21A456C10);
  *v8 = v0;
  v8[1] = sub_21A40057C;

  return MEMORY[0x28210DEC0](v0 + 16, v3, v4, &unk_21A456C08, v6, v9);
}

uint64_t sub_21A40057C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_21A4006BC;
  }

  else
  {
    v6 = *(v2 + 64);
    v5 = *(v2 + 72);

    v4 = sub_21A4006A0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A4006BC()
{
  v2 = v0[8];
  v1 = v0[9];

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v3 = v0[11];
  v4 = v0[4];
  v5 = sub_21A450F24();
  __swift_project_value_buffer(v5, qword_27CD28C90);
  v6 = v3;
  v7 = v4;
  v8 = sub_21A450F04();
  v9 = sub_21A451584();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[11];
    v11 = v0[4];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412546;
    v14 = v10;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    *(v12 + 12) = 2112;
    v16 = v11;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v17;
    v13[1] = v17;
    _os_log_impl(&dword_21A3C2000, v8, v9, "Override error: %@ -> with %@", v12, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28608, &qword_21A456570);
    swift_arrayDestroy();
    MEMORY[0x21CEDB220](v13, -1, -1);
    MEMORY[0x21CEDB220](v12, -1, -1);
  }

  v18 = v0[11];
  v19 = v0[4];

  swift_willThrow();
  v20 = v19;
  v21 = v0[1];
  v22 = v0[4];

  return v21();
}

uint64_t sub_21A4008C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_21A4008EC, 0, 0);
}

uint64_t sub_21A4008EC()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v1[20];
  v5 = v1[22];
  v4 = v1[23];
  v6 = swift_task_alloc();
  v0[6] = v6;
  *(v6 + 16) = v2;
  v7 = *(MEMORY[0x277CBBE68] + 4);
  v8 = swift_task_alloc();
  v0[7] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD287E0, &qword_21A456BE8);
  *v8 = v0;
  v8[1] = sub_21A4009EC;

  return MEMORY[0x28210DEC0](v0 + 2, v4, v5, &unk_21A456BE0, v6, v9);
}

uint64_t sub_21A4009EC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_21A400B24;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_21A400B08;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A400B24()
{
  v1 = v0[6];

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v3 = v0[3];
  v4 = sub_21A450F24();
  __swift_project_value_buffer(v4, qword_27CD28C90);
  v5 = v2;
  v6 = v3;
  v7 = sub_21A450F04();
  v8 = sub_21A451584();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[8];
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    v13 = v9;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    *(v11 + 12) = 2112;
    v15 = v10;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    v12[1] = v16;
    _os_log_impl(&dword_21A3C2000, v7, v8, "Override error: %@ -> with %@", v11, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28608, &qword_21A456570);
    swift_arrayDestroy();
    MEMORY[0x21CEDB220](v12, -1, -1);
    MEMORY[0x21CEDB220](v11, -1, -1);
  }

  v17 = v0[8];
  v18 = v0[3];

  swift_willThrow();
  v19 = v18;
  v20 = v0[1];
  v21 = v0[3];

  return v20();
}

id sub_21A400D28(void *a1)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = sub_21A450C54();
  v21[0] = 0;
  v4 = [v2 JSONObjectWithData:v3 options:0 error:v21];

  v5 = v21[0];
  if (v4)
  {
    sub_21A451694();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
    swift_dynamicCast();
    result = v21[1];
  }

  else
  {
    v7 = v5;
    v8 = sub_21A450A84();

    swift_willThrow();
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v9 = sub_21A450F24();
    __swift_project_value_buffer(v9, qword_27CD28C90);
    v10 = v8;
    v11 = a1;
    v12 = sub_21A450F04();
    v13 = sub_21A451584();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412546;
      v16 = v8;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      *(v14 + 12) = 2112;
      v18 = a1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v19;
      v15[1] = v19;
      _os_log_impl(&dword_21A3C2000, v12, v13, "Override error: %@ -> with %@", v14, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28608, &qword_21A456570);
      swift_arrayDestroy();
      MEMORY[0x21CEDB220](v15, -1, -1);
      MEMORY[0x21CEDB220](v14, -1, -1);
    }

    swift_willThrow();
    result = a1;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21A400FD4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A3EC5D4;

  return sub_21A3EC188(a1, a2, v6);
}

uint64_t sub_21A401084(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21A40112C;

  return sub_21A3EB098(a1, v5, v4);
}

uint64_t sub_21A40112C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_21A401238(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21A3F9470;

  return sub_21A3F9D40(a1, a2, v7);
}

uint64_t sub_21A401300(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  v6 = *(sub_21A451414() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_21A3EC5D4;

  return sub_21A3FE474(a1, v8, v9, v10, v1 + v7);
}

uint64_t sub_21A401424(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD286D0, &qword_21A456AA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A401494(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21A3F9470;

  return sub_21A3FF550(a1, v5);
}

uint64_t sub_21A40154C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21A3F9470;

  return sub_21A3FBC18(a1, v4, v5, v7);
}

uint64_t sub_21A401614()
{
  v3 = *(v0 + 3);
  v2 = *(v0 + 4);
  v4 = *(v0 + 2);
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21A3F9470;

  return sub_21A3FBEF4(v5);
}

uint64_t sub_21A4016D8(unint64_t a1)
{
  v31 = a1;
  v1 = sub_21A450D94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_21A450E14();
  v29 = *(v30 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](v30);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A456A60;
  *(inited + 32) = 0x745F656369766564;
  *(inited + 40) = 0xEB00000000657079;
  sub_21A3FFD44();
  v10 = MEMORY[0x277D837D0];
  *(inited + 48) = v11;
  *(inited + 56) = v12;
  *(inited + 72) = v10;
  *(inited + 80) = 0x6F5F656369766564;
  *(inited + 88) = 0xE900000000000073;
  *(inited + 96) = _s24PrivateFederatedLearning8PFLUtilsO18sysctlStringByName4nameS2S_tFZ_0();
  *(inited + 104) = v13;
  *(inited + 120) = v10;
  *(inited + 128) = 0x656C61636F6CLL;
  *(inited + 136) = 0xE600000000000000;
  sub_21A450DD4();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9668], v1);
  sub_21A450D54();
  v14 = sub_21A450D64();
  v16 = v15;

  (*(v2 + 8))(v5, v1);
  v17 = sub_21A3FFDD0(v14, v16);
  v19 = v18;

  v36[0] = v17;
  v36[1] = v19;
  v34 = 45;
  v35 = 0xE100000000000000;
  v32 = 95;
  v33 = 0xE100000000000000;
  sub_21A3ED2CC();
  v20 = sub_21A451654();
  v22 = v21;
  (*(v29 + 8))(v8, v30);

  *(inited + 168) = v10;
  *(inited + 144) = v20;
  *(inited + 152) = v22;
  v23 = v31;
  v24 = sub_21A3E4F6C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28438, &unk_21A455EA0);
  swift_arrayDestroy();
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = sub_21A3E4F6C(MEMORY[0x277D84F90]);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36[0] = v24;
  sub_21A3D3D28(v25, sub_21A3EC9F8, 0, isUniquelyReferenced_nonNull_native, v36);

  return v36[0];
}

double sub_21A401B70@<D0>(SEL *a1@<X4>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  v6 = sub_21A451054();
  v7 = [v5 *a1];

  if (v7)
  {
    sub_21A451694();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_21A401C30(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  sub_21A3E7060(a1, v14, &qword_27CD28468, &unk_21A455FB0);
  v6 = v15;
  if (v15)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v8 = *(v6 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x28223BE20](v7);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11);
    v12 = sub_21A4519A4();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_21A451054();
  [v4 *a4];
  swift_unknownObjectRelease();
}

void *sub_21A401DA8()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAD80]);
  v2 = sub_21A451054();
  v3 = [v1 initWithStoreIdentifier:v2 type:1];

  v4 = sub_21A3ED284(0, &qword_27CD287F8, 0x277CCAD80);
  v0[2] = v3;
  v0[5] = v4;
  v0[6] = &off_282B40C50;
  v5 = [objc_opt_self() standardUserDefaults];
  v0[10] = sub_21A3ED284(0, &qword_27CD28800, 0x277CBEBD0);
  v0[11] = &off_282B40C68;
  v0[7] = v5;
  return v0;
}

uint64_t sub_21A401E94(uint64_t a1)
{
  v2 = sub_21A450D44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A402528(0x444972657355, 0xE600000000000000);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
  }

  else
  {
    sub_21A450D34();
    v9 = sub_21A450D24();
    v10 = v11;
    (*(v3 + 8))(v6, v2);
    sub_21A4023B0(0x444972657355, 0xE600000000000000, v9, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28580, &qword_21A456480);
  inited = swift_initStackObject();
  v13 = MEMORY[0x277D837D0];
  v14 = MEMORY[0x277D83838];
  *(inited + 16) = xmmword_21A455E00;
  *(inited + 56) = v13;
  *(inited + 64) = v14;
  *(inited + 32) = v9;
  *(inited + 40) = v10;
  v18 = a1;

  sub_21A443918(inited);
  v15 = sub_21A402050(v18);

  return v15;
}

uint64_t sub_21A402050(uint64_t a1)
{
  v3 = sub_21A4510B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v27 = v4;
    v28 = v3;
    v29 = v1;
    v31 = MEMORY[0x277D84F90];
    sub_21A3E48DC(0, v8, 0);
    v9 = v31;
    v10 = a1 + 32;
    do
    {
      sub_21A3F939C(v10, v30);
      __swift_project_boxed_opaque_existential_1(v30, v30[3]);
      v11 = sub_21A451974();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_0(v30);
      v31 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_21A3E48DC((v14 > 1), v15 + 1, 1);
        v9 = v31;
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v10 += 40;
      --v8;
    }

    while (v8);
    v3 = v28;
    v4 = v27;
  }

  v30[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
  sub_21A402B04();
  sub_21A450FD4();

  sub_21A4510A4();
  v17 = sub_21A451094();
  v19 = v18;

  (*(v4 + 8))(v7, v3);
  if (v19 >> 60 == 15)
  {
    sub_21A3EC940();
    swift_allocError();
    *v20 = 51;
    return swift_willThrow();
  }

  v22 = sub_21A451344();
  *(v22 + 16) = 32;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  v30[0] = v22;
  sub_21A3F74C8(v17, v19);
  sub_21A4028EC(v17, v19, v17, v19, v30);
  v23 = *(v30[0] + 2);
  if (!v23)
  {
    goto LABEL_16;
  }

  v24 = 0;
  v25 = 32;
  do
  {
    v24 = v30[0][v25++] | (v24 << 8);
    --v23;
  }

  while (v23);
  sub_21A3ECC34(v17, v19);

  v26 = vcvtd_n_f64_u64(v24, 0x40uLL) * 10000.0;
  if (v26 != INFINITY)
  {
    if (v26 > -9.22337204e18)
    {
      if (v26 < 9.22337204e18)
      {
        return v26;
      }

      __break(1u);
LABEL_16:
      sub_21A3ECC34(v17, v19);

      return 0.0;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21A4023B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21A3E7060((v4 + 2), v18, &qword_27CD28808, &qword_21A456D38);
  v9 = v19;
  v10 = MEMORY[0x277D837D0];
  if (v19)
  {
    v11 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v17[3] = v10;
    v17[0] = a3;
    v17[1] = a4;
    v12 = *(v11 + 16);

    v12(v17, a1, a2, v9, v11);
    v10 = MEMORY[0x277D837D0];
    sub_21A3D3BF0(v17, &qword_27CD28468, &unk_21A455FB0);
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    sub_21A3D3BF0(v18, &qword_27CD28808, &qword_21A456D38);
  }

  v13 = v4[10];
  v14 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v13);
  v19 = v10;
  v18[0] = a3;
  v18[1] = a4;
  v15 = *(v14 + 16);

  v15(v18, a1, a2, v13, v14);
  return sub_21A3D3BF0(v18, &qword_27CD28468, &unk_21A455FB0);
}

uint64_t sub_21A402528(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_21A3E7060((v2 + 2), &v17, &qword_27CD28808, &qword_21A456D38);
  v6 = v18;
  if (!v18)
  {
    sub_21A3D3BF0(&v17, &qword_27CD28808, &qword_21A456D38);
    v20 = 0u;
    v21 = 0u;
    goto LABEL_6;
  }

  v7 = v19;
  __swift_project_boxed_opaque_existential_1(&v17, v18);
  (*(v7 + 8))(&v20, a1, a2, v6, v7);
  __swift_destroy_boxed_opaque_existential_0(&v17);
  if (!*(&v21 + 1))
  {
LABEL_6:
    sub_21A3D3BF0(&v20, &qword_27CD28468, &unk_21A455FB0);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    return v17;
  }

LABEL_7:
  v9 = v2[10];
  v10 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v9);
  (*(v10 + 8))(&v17, a1, a2, v9, v10);
  if (!v18)
  {
    sub_21A3D3BF0(&v17, &qword_27CD28468, &unk_21A455FB0);
    return 0;
  }

  v11 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v12 = *(&v20 + 1);
  v8 = v20;
  sub_21A3E7060((v3 + 2), &v17, &qword_27CD28808, &qword_21A456D38);
  v13 = v18;
  if (v18)
  {
    v14 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, v18);
    *(&v21 + 1) = v11;
    v20 = __PAIR128__(v12, v8);
    v15 = *(v14 + 16);

    v15(&v20, a1, a2, v13, v14);
    sub_21A3D3BF0(&v20, &qword_27CD28468, &unk_21A455FB0);
    __swift_destroy_boxed_opaque_existential_0(&v17);
  }

  else
  {
    sub_21A3D3BF0(&v17, &qword_27CD28808, &qword_21A456D38);
  }

  return v8;
}

uint64_t sub_21A4027A0()
{
  sub_21A3D3BF0(v0 + 16, &qword_27CD28808, &qword_21A456D38);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return swift_deallocClassInstance();
}

unsigned __int8 *sub_21A402814(unsigned __int8 *result, uint64_t a2, uint64_t a3, unint64_t a4, char **a5)
{
  v6 = result;
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_13;
    }

    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v8 = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_18;
    }

    v8 = HIDWORD(a3) - a3;
LABEL_10:
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v8))
      {
        goto LABEL_14;
      }

      __break(1u);
LABEL_13:
      LODWORD(v8) = 0;
      goto LABEL_14;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    goto LABEL_8;
  }

  LODWORD(v8) = BYTE6(a4);
LABEL_14:
  v11 = *a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_21A408084(0, *(v11 + 2), 0, v11);
  }

  *a5 = v11;
  return CC_SHA256(v6, v8, v11 + 32);
}

uint64_t sub_21A4028EC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char **a5)
{
  v5 = a4;
  v6 = a3;
  v26[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v26[0] = a1;
      LOWORD(v26[1]) = a2;
      BYTE2(v26[1]) = BYTE2(a2);
      BYTE3(v26[1]) = BYTE3(a2);
      BYTE4(v26[1]) = BYTE4(a2);
      BYTE5(v26[1]) = BYTE5(a2);
      v8 = v26 + BYTE6(a2);
      v9 = v26;
      goto LABEL_24;
    }

    v19 = a1;
    v20 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v10 = a5;
      v13 = sub_21A4509F4();
      if (!v13)
      {
        goto LABEL_16;
      }

      v21 = sub_21A450A24();
      if (!__OFSUB__(v19, v21))
      {
        v13 += v19 - v21;
LABEL_16:
        v22 = sub_21A450A14();
        if (v22 >= v20)
        {
          v18 = v20;
        }

        else
        {
          v18 = v22;
        }

        goto LABEL_19;
      }

LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v7 != 2)
  {
    memset(v26, 0, 14);
    v9 = v26;
    v8 = v26;
    goto LABEL_24;
  }

  v10 = a5;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = sub_21A4509F4();
  if (v13)
  {
    v14 = sub_21A450A24();
    if (__OFSUB__(v12, v14))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v13 += v12 - v14;
  }

  v15 = __OFSUB__(v11, v12);
  v16 = v11 - v12;
  if (v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = sub_21A450A14();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

LABEL_19:
  v23 = (v18 + v13);
  if (v13)
  {
    v8 = v23;
  }

  else
  {
    v8 = 0;
  }

  v9 = v13;
  a3 = v6;
  a4 = v5;
  a5 = v10;
LABEL_24:
  sub_21A402814(v9, v8, a3, a4, a5);
  result = sub_21A3E759C(v6, v5);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_21A402B04()
{
  result = qword_27CD28810[0];
  if (!qword_27CD28810[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284A0, &qword_21A4560F0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CD28810);
  }

  return result;
}

uint64_t PerformanceMeasure.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  return result;
}

uint64_t PerformanceMeasure.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F98];
  return result;
}

uint64_t sub_21A402BAC(uint64_t a1, uint64_t a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  swift_beginAccess();
  v6 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + 16);
  *(v2 + 16) = 0x8000000000000000;
  sub_21A4033E8(a1, a2, isUniquelyReferenced_nonNull_native, Current);
  *(v2 + 16) = v9;
  return swift_endAccess();
}

double sub_21A402C48(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = 0.0;
  if (*(v5 + 16))
  {

    v7 = sub_21A3DCA2C(a1, a2);
    if (v8)
    {
      v9 = *(*(v5 + 56) + 8 * v7);

      Current = CFAbsoluteTimeGetCurrent();
      if (qword_27CD28170 != -1)
      {
        v17 = Current;
        swift_once();
        Current = v17;
      }

      v6 = Current - v9;
      v11 = sub_21A450F24();
      __swift_project_value_buffer(v11, qword_27CD28C90);

      sub_21A3DCEF0();
      sub_21A3DCEF0();
      v12 = sub_21A450F04();
      v13 = sub_21A451574();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v18 = v15;
        *v14 = 136315650;
        *(v14 + 4) = sub_21A3E2554(a1, a2, &v18);
        *(v14 + 12) = 1040;
        *(v14 + 14) = 5;
        *(v14 + 18) = 2048;
        *(v14 + 20) = v6;
        _os_log_impl(&dword_21A3C2000, v12, v13, "⏲ Measure [%s]: %.*f sec", v14, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x21CEDB220](v15, -1, -1);
        MEMORY[0x21CEDB220](v14, -1, -1);
      }

      swift_beginAccess();
      sub_21A402F5C(a1, a2);
      swift_endAccess();
    }

    else
    {
    }
  }

  return v6;
}

uint64_t PerformanceMeasure.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PerformanceMeasure.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

double sub_21A402EB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_21A3DCA2C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21A3E3DD8();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_21A3D3B38((*(v12 + 56) + 32 * v9), a3);
    sub_21A418F30(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_21A402F5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_21A3DCA2C(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21A3E4294();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_21A4190E0(v7, v10);
  *v3 = v10;
  return v12;
}

_OWORD *sub_21A403008(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21A3DCA2C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_21A3E3DD8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21A3E2A88(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_21A3DCA2C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_21A451A94();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_21A3D3B38(a1, v23);
  }

  else
  {
    sub_21A419444(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_21A403158(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21A3DCA2C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_21A3E3F7C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21A3E2D40(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_21A3DCA2C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_21A451A94();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_21A4194B0(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_21A4032A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21A3DCA2C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_21A3E4280();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21A3E32BC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_21A3DCA2C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_21A451A94();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_21A4194B0(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_21A4033E8(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_21A3DCA2C(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = result;
      sub_21A3E4294();
      result = v19;
      goto LABEL_8;
    }

    sub_21A3E32D0(v16, a3 & 1);
    v20 = *v5;
    result = sub_21A3DCA2C(a1, a2);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_21A451A94();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a4;
  }

  else
  {
    sub_21A4194F8(result, a1, a2, v22, a4);
  }

  return result;
}

uint64_t sub_21A4035A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_21A3DCA2C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_21A3E4570();
      result = v19;
      goto LABEL_8;
    }

    sub_21A3E3828(v16, a4 & 1);
    v20 = *v5;
    result = sub_21A3DCA2C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_21A451A94();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 168 * result;
    v24 = *(a1 + 144);
    *(v23 + 128) = *(a1 + 128);
    *(v23 + 144) = v24;
    *(v23 + 160) = *(a1 + 160);
    v25 = *(a1 + 80);
    *(v23 + 64) = *(a1 + 64);
    *(v23 + 80) = v25;
    v26 = *(a1 + 112);
    *(v23 + 96) = *(a1 + 96);
    *(v23 + 112) = v26;
    v27 = *(a1 + 16);
    *v23 = *a1;
    *(v23 + 16) = v27;
    v28 = *(a1 + 48);
    *(v23 + 32) = *(a1 + 32);
    *(v23 + 48) = v28;
  }

  else
  {
    sub_21A419540(result, a2, a3, a1, v22);
  }

  return result;
}

uint64_t *sub_21A403750()
{
  sub_21A40379C(v0[2], v0[3], *(*v0 + 80));
  v1 = v0[2];
  v2 = v0[3];
  sub_21A451604();
  return v0;
}

uint64_t sub_21A40379C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    result = swift_arrayDestroy();
    if ((a2 * *(*(a3 - 8) + 72)) >> 64 == (a2 * *(*(a3 - 8) + 72)) >> 63)
    {
      return v3;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21A40380C()
{
  sub_21A403750();

  return swift_deallocClassInstance();
}

void static PFLTaskTargeting.ensureDeviceUnlocked()()
{
  sub_21A3EC940();
  v0 = swift_allocError();
  *v1 = 33;
  v2 = MKBGetDeviceLockState();
  if (v2 != 3 && v2)
  {
    swift_willThrow();
  }

  else
  {
  }
}

void sub_21A403918(char a1, SEL *a2)
{
  sub_21A3EC940();
  v4 = swift_allocError();
  *v5 = a1;
  v6 = [objc_opt_self() sharedConnection];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 *a2];

    if (v8)
    {
    }

    else
    {
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21A4039D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v14[0] = 0xD000000000000013;
  *(&v14[0] + 1) = 0x800000021A45C200;
  MEMORY[0x21CED98B0]();
  MEMORY[0x21CED98B0](45, 0xE100000000000000);
  MEMORY[0x21CED98B0](a3, a4);
  *&v12 = 46;
  *(&v12 + 1) = 0xE100000000000000;
  v15 = 95;
  v16 = 0xE100000000000000;
  v11 = sub_21A3ED2CC();
  v10 = MEMORY[0x277D837D0];
  sub_21A451654();

  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_21A451054();

  v8 = [v6 valueForKey_];

  if (v8)
  {
    sub_21A451694();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    if (swift_dynamicCast())
    {
      return v15;
    }
  }

  else
  {
    sub_21A403B88(v14);
  }

  return 0;
}

uint64_t sub_21A403B88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28468, &unk_21A455FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21A403BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v31 = a4;
  v40 = sub_21A450D14();
  v32 = *(v40 - 8);
  v9 = *(v32 + 64);
  v10 = MEMORY[0x28223BE20](v40);
  v30 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  *&v35[0] = 0;
  *(&v35[0] + 1) = 0xE000000000000000;
  sub_21A451754();

  *&v35[0] = 0xD000000000000010;
  *(&v35[0] + 1) = 0x800000021A45C220;
  *&v33 = a1;
  *(&v33 + 1) = a2;
  v38 = 46;
  v39 = 0xE100000000000000;
  v36 = 95;
  v37 = 0xE100000000000000;
  sub_21A3ED2CC();
  v14 = sub_21A451654();
  MEMORY[0x21CED98B0](v14);

  MEMORY[0x21CED98B0](45, 0xE100000000000000);
  *&v33 = a3;
  *(&v33 + 1) = v31;
  v38 = 46;
  v39 = 0xE100000000000000;
  v36 = 95;
  v37 = 0xE100000000000000;
  v15 = sub_21A451654();
  MEMORY[0x21CED98B0](v15);

  v16 = objc_opt_self();
  v17 = [v16 standardUserDefaults];
  v18 = sub_21A451054();
  v19 = [v17 valueForKey_];

  if (v19)
  {
    sub_21A451694();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  v35[0] = v33;
  v35[1] = v34;
  v20 = v40;
  v21 = v32;
  if (*(&v34 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_21A450D04();
      v22 = v30;
      sub_21A450CD4();
      sub_21A450CC4();
      v24 = v23;
      v25 = *(v21 + 8);
      v25(v22, v20);
      v25(v13, v20);
      if (v24 <= a5)
      {

        sub_21A3EC940();
        swift_allocError();
        *v26 = 50;
        swift_willThrow();
        return;
      }
    }
  }

  else
  {
    sub_21A403B88(v35);
  }

  v27 = [v16 standardUserDefaults];
  sub_21A450D04();
  sub_21A450CE4();
  (*(v21 + 8))(v13, v20);
  v28 = sub_21A451494();
  v29 = sub_21A451054();

  [v27 setValue:v28 forKey:v29];
}

void sub_21A404008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v18[0] = 0xD000000000000013;
  *(&v18[0] + 1) = 0x800000021A45C200;
  MEMORY[0x21CED98B0]();
  MEMORY[0x21CED98B0](45, 0xE100000000000000);
  MEMORY[0x21CED98B0](a3, a4);
  *&v16 = 46;
  *(&v16 + 1) = 0xE100000000000000;
  v19 = 95;
  v20 = 0xE100000000000000;
  v15 = sub_21A3ED2CC();
  v14 = MEMORY[0x277D837D0];
  sub_21A451654();

  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  v8 = sub_21A451054();
  v9 = [v7 valueForKey_];

  if (v9)
  {
    sub_21A451694();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    if (swift_dynamicCast())
    {
      v10 = v19;
      goto LABEL_9;
    }
  }

  else
  {
    sub_21A403B88(v18);
  }

  v10 = 0;
LABEL_9:
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = [v6 standardUserDefaults];
    v12 = sub_21A4514E4();
    v13 = sub_21A451054();

    [v11 setValue:v12 forKey:v13];
  }
}

uint64_t sub_21A404234@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

PrivateFederatedLearning::ShuffleMethod_optional __swiftcall ShuffleMethod.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_21A4042C8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_21A404320()
{
  result = qword_27CD28898;
  if (!qword_27CD28898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28898);
  }

  return result;
}

unint64_t sub_21A404378()
{
  result = qword_27CD288A0;
  if (!qword_27CD288A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD288A0);
  }

  return result;
}

unint64_t sub_21A4043D0()
{
  result = qword_27CD288A8;
  if (!qword_27CD288A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD288A8);
  }

  return result;
}

unint64_t sub_21A404428()
{
  result = qword_27CD288B0;
  if (!qword_27CD288B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD288B0);
  }

  return result;
}

unint64_t sub_21A404480()
{
  result = qword_27CD288B8;
  if (!qword_27CD288B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD288B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShuffleMethod(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShuffleMethod(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_21A404798@<X0>(const char *a1@<X0>, char **a2@<X8>)
{
  result = strdup(a1);
  *a2 = result;
  return result;
}

uint64_t PortType.hashValue.getter()
{
  v1 = *v0;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v1);
  return sub_21A451B24();
}

void *sub_21A404854()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v1 = sub_21A405D20();
    v2 = *(v0 + 64);
    *(v0 + 64) = v1;
  }

  return v1;
}

uint64_t sub_21A4048D8(uint64_t a1)
{
  v2 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t (*sub_21A4048E8(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_21A404854();
  return sub_21A404930;
}

uint64_t sub_21A404930(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 64);
  *(v1 + 64) = v2;
}

void *sub_21A404940()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v1 = sub_21A405D94();
    v2 = *(v0 + 72);
    *(v0 + 72) = v1;
  }

  return v1;
}

uint64_t sub_21A4049C4(uint64_t a1)
{
  v2 = *(v1 + 72);
  *(v1 + 72) = a1;
}

uint64_t (*sub_21A4049D4(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_21A404940();
  return sub_21A404A1C;
}

uint64_t sub_21A404A1C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 72);
  *(v1 + 72) = v2;
}

uint64_t BaseE5Function.__allocating_init(functionName:library:lazyPrepareOpForEncode:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  BaseE5Function.init(functionName:library:lazyPrepareOpForEncode:)(a1, a2, a3);
  return v6;
}

void *BaseE5Function.init(functionName:library:lazyPrepareOpForEncode:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277D84F90];
  v3[6] = sub_21A3E5358(MEMORY[0x277D84F90]);
  v9 = sub_21A3E5358(v8);
  v3[8] = 0;
  v3[9] = 0;
  v3[7] = v9;
  v3[3] = a1;
  v3[4] = a2;
  v3[2] = a3;
  v10 = *(a3 + 16);
  sub_21A4510E4();

  v11 = e5rt_program_library_retain_program_function();

  sub_21A3DCF54(v11);
  if (!v4)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v20 = 6;
    swift_willThrow();
  }

  v12 = v3[2];

  v13 = v3[4];

  v14 = v3[6];

  v15 = v3[7];

  v16 = v3[8];

  v17 = v3[9];

  type metadata accessor for BaseE5Function();
  swift_deallocPartialClassInstance();
  v18 = *MEMORY[0x277D85DE8];
  return v3;
}

void *BaseE5Function.deinit()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = v0[5];
  e5rt_execution_stream_operation_release();
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  v7 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t BaseE5Function.__deallocating_deinit()
{
  BaseE5Function.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21A404DB4()
{
  v2 = v1;
  v80 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v3 = v0[6];
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = v0[6];
  swift_bridgeObjectRetain_n();
  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = *(*(*(v3 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v6))))) + 16);

      v12 = e5rt_io_port_bind_buffer_object();
      if (v12)
      {
        break;
      }

      v6 &= v6 - 1;

      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v58 = v12;

    LODWORD(v26) = v58;
    EspressoError.init(rawValue:)(v58 + 9150);
    v59 = v79;
    if (v79 != 48)
    {
      goto LABEL_70;
    }

LABEL_66:
    if (qword_27CD28170 == -1)
    {
LABEL_67:
      v61 = sub_21A450F24();
      __swift_project_value_buffer(v61, qword_27CD28C90);
      v62 = sub_21A450F04();
      v63 = sub_21A451584();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 67109120;
        *(v64 + 4) = v26;
        _os_log_impl(&dword_21A3C2000, v62, v63, "Unknown E5 code: %u", v64, 8u);
        MEMORY[0x21CEDB220](v64, -1, -1);
      }

      v59 = 27;
      goto LABEL_70;
    }

LABEL_91:
    swift_once();
    goto LABEL_67;
  }

  while (1)
  {
LABEL_5:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);

LABEL_81:
      swift_deallocPartialClassInstance();
      goto LABEL_82;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  swift_beginAccess();
  v13 = v0[7];
  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 64);
  v17 = (v14 + 63) >> 6;
  v18 = v0[7];
  swift_bridgeObjectRetain_n();
  v19 = 0;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
LABEL_18:
      v21 = *(*(*(v13 + 56) + ((v20 << 9) | (8 * __clz(__rbit64(v16))))) + 16);

      v22 = e5rt_io_port_bind_buffer_object();
      if (v22)
      {
        break;
      }

      v16 &= v16 - 1;

      v19 = v20;
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    v60 = v22;

    LODWORD(v26) = v60;
    EspressoError.init(rawValue:)(v60 + 9150);
    v59 = __s1[0];
    if (__s1[0] == 48)
    {
      goto LABEL_66;
    }

LABEL_70:
    sub_21A3DCAA4();
    swift_allocError();
    *v65 = v59;
    swift_willThrow();

    goto LABEL_83;
  }

LABEL_15:
  while (2)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      sub_21A3DCAF8();
      swift_allocError();
      *v69 = 6;
      swift_willThrow();

      goto LABEL_81;
    }

    if (v20 < v17)
    {
      v16 = *(v13 + 64 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_18;
      }

      continue;
    }

    break;
  }

  v23 = v0[6];
  v24 = MEMORY[0x277D84F98];
  v0[6] = MEMORY[0x277D84F98];

  v25 = v0[7];
  v0[7] = v24;

  v26 = MEMORY[0x277D84F90];

  v27 = sub_21A404854();
  v73 = v0;
  if (!v27[2])
  {

    v32 = *(v0[8] + 16);
    if (v32 >> 60)
    {
      goto LABEL_87;
    }

    v75 = v2;
    __dst = swift_slowAlloc();
    v33 = v0[8];
    v34 = *(v33 + 16);
    v35 = MEMORY[0x277D84F90];
    if (v34)
    {
      v71 = v32;
      v74 = v26;
      v76 = MEMORY[0x277D84F90];

      sub_21A3E48FC(0, v34, 0);
      v36 = 0;
      v35 = v76;
      v26 = v33 + 40;
      v0 = &qword_27CD288C0;
      while (1)
      {
        if (v36 >= *(v33 + 16))
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          v45 = sub_21A451844();
          goto LABEL_45;
        }

        v37 = *v26;
        if ((*v26 & 0x1000000000000000) != 0)
        {
          break;
        }

        if ((v37 & 0x2000000000000000) != 0)
        {
          *__s1 = *(v26 - 8);
          v78 = v37 & 0xFFFFFFFFFFFFFFLL;

          v39 = __s1;
        }

        else
        {
          if ((*(v26 - 8) & 0x1000000000000000) == 0)
          {
            break;
          }

          v38 = *v26;

          v39 = ((v37 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        v40 = strdup(v39);
        if (!v40)
        {
          goto LABEL_93;
        }

LABEL_34:

        v42 = *(v76 + 16);
        v41 = *(v76 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_21A3E48FC((v41 > 1), v42 + 1, 1);
        }

        ++v36;
        *(v76 + 16) = v42 + 1;
        *(v76 + 8 * v42 + 32) = v40;
        v26 += 16;
        if (v34 == v36)
        {

          v0 = v73;
          v26 = v74;
          v32 = v71;
          goto LABEL_40;
        }
      }

      v43 = *v26;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD288C0, &unk_21A4570D0);
      sub_21A451724();
      v40 = *__s1;
      if (!*__s1)
      {
        goto LABEL_93;
      }

      goto LABEL_34;
    }

LABEL_40:
    v44 = *(v35 + 16);
    if (v44)
    {
      if (v32 < v44)
      {
        __break(1u);
        goto LABEL_90;
      }

      memcpy(__dst, (v35 + 32), 8 * v44);
    }

    v74 = (v26 >> 62);
    if (v26 >> 62)
    {
      goto LABEL_88;
    }

    v45 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_45:
    v46 = v75;
    v47 = MEMORY[0x277D84F90];
    if (!v45)
    {
LABEL_57:
      v54 = v0[5];
      v55 = *(v0[8] + 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21A408AB8(0, *(v47 + 2), 0, v47, &qword_27CD28688, &unk_21A457230);
      }

      v56 = e5rt_execution_stream_operation_reshape_operation();

      sub_21A3DCF54(v56);
      if (v46)
      {
        goto LABEL_77;
      }

      if (v74)
      {
        v57 = sub_21A451844();
        if (!v57)
        {
LABEL_77:

          result = MEMORY[0x21CEDB220](__dst, -1, -1);
          goto LABEL_83;
        }
      }

      else
      {
        v57 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v57)
        {
          goto LABEL_77;
        }
      }

      if (v57 < 1)
      {
        __break(1u);
LABEL_93:
        __break(1u);
      }

      for (i = 0; i != v57; ++i)
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CED9EA0](i, v26);
          swift_unknownObjectRelease();
        }
      }

      goto LABEL_77;
    }

    *__s1 = MEMORY[0x277D84F90];
    sub_21A3E493C(0, v45 & ~(v45 >> 63), 0);
    if ((v45 & 0x8000000000000000) == 0)
    {
      v48 = 0;
      v47 = *__s1;
      v0 = (v26 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v49 = MEMORY[0x21CED9EA0](v48, v26);
        }

        else
        {
          if ((v48 & 0x8000000000000000) != 0)
          {
            goto LABEL_85;
          }

          if (v48 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_86;
          }

          v50 = *(v26 + 8 * v48 + 32);
        }

        v51 = *(v49 + 16);

        *__s1 = v47;
        v53 = *(v47 + 2);
        v52 = *(v47 + 3);
        if (v53 >= v52 >> 1)
        {
          sub_21A3E493C((v52 > 1), v53 + 1, 1);
          v47 = *__s1;
        }

        ++v48;
        *(v47 + 2) = v53 + 1;
        *&v47[8 * v53 + 32] = v51;
      }

      while (v45 != v48);
      v46 = v75;
      v0 = v73;
      goto LABEL_57;
    }

LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v29 = v27[4];
  v28 = v27[5];
  *__s1 = 0;
  v30 = v0[5];
  sub_21A4510E4();

  v31 = e5rt_execution_stream_operation_retain_input_port();

  sub_21A3DCF54(v31);

  if (!v2)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v68 = 6;
    swift_willThrow();
  }

LABEL_82:

LABEL_83:
  v70 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_21A405D20()
{
  v2 = *MEMORY[0x277D85DE8];
  result = sub_21A405E08(MEMORY[0x277D07878], sub_21A3DD0C8);
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_21A405D94()
{
  v2 = *MEMORY[0x277D85DE8];
  result = sub_21A405E08(MEMORY[0x277D07880], sub_21A3DD09C);
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_21A405E08(uint64_t (*a1)(void, void *), uint64_t (*a2)(uint64_t, void *))
{
  v20[1] = *MEMORY[0x277D85DE8];
  v20[0] = 0;
  v5 = a1(v2[5], v20);
  sub_21A3DCF54(v5);
  if (!v3)
  {
    v6 = v20[0];

    v7 = a2(v6, v2);

    v10 = *(v7 + 16);
    if (v10)
    {
      v20[0] = MEMORY[0x277D84F90];
      sub_21A3E48DC(0, v10, 0);
      v11 = 0;
      v2 = v20[0];
      while (1)
      {
        if (v11 >= *(v7 + 16))
        {
          __break(1u);
        }

        if (!*(v7 + 8 * v11 + 32))
        {
          break;
        }

        v12 = sub_21A4511C4();
        v20[0] = v2;
        v15 = v2[2];
        v14 = v2[3];
        if (v15 >= v14 >> 1)
        {
          v17 = v12;
          v18 = v13;
          sub_21A3E48DC((v14 > 1), v15 + 1, 1);
          v13 = v18;
          v12 = v17;
          v2 = v20[0];
        }

        ++v11;
        v2[2] = v15 + 1;
        v16 = &v2[2 * v15];
        v16[4] = v12;
        v16[5] = v13;
        if (v10 == v11)
        {

          goto LABEL_3;
        }
      }

      sub_21A3DCAF8();
      swift_allocError();
      *v19 = 5;
      swift_willThrow();
    }

    else
    {

      v2 = MEMORY[0x277D84F90];
    }
  }

LABEL_3:
  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_21A406000(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a3)
  {
    swift_beginAccess();
    v6 = *(v3 + 56);
    if (!*(v6 + 16))
    {
      return 0;
    }
  }

  else
  {
    swift_beginAccess();
    v6 = *(v3 + 48);
    if (!*(v6 + 16))
    {
      return 0;
    }
  }

  v7 = sub_21A3DCA2C(a1, a2);
  if (v8)
  {
    v9 = *(*(v6 + 56) + 8 * v7);

    return v9;
  }

  return 0;
}

uint64_t sub_21A4060C8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *(v3 + 40);
  if (*a3)
  {
    sub_21A4510E4();
    v6 = e5rt_execution_stream_operation_retain_output_port();
  }

  else
  {
    sub_21A4510E4();
    v6 = e5rt_execution_stream_operation_retain_input_port();
  }

  v7 = v6;

  result = sub_21A3DCF54(v7);
  if (!v4)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v10 = 6;
    result = swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21A4061FC(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = v4;
  v13 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v12 = 0;
  v7 = *(v3 + 40);
  sub_21A4510E4();
  v8 = e5rt_execution_stream_operation_retain_input_port();

  sub_21A3DCF54(v8);
  if (!v4)
  {
    v5 = v12;
    sub_21A3DCAF8();
    swift_allocError();
    *v11 = 6;
    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_21A4063A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = *(v3 + 40);
  sub_21A4510E4();
  v7 = e5rt_execution_stream_operation_retain_input_port();

  sub_21A3DCF54(v7);
  if (!v4)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v10 = 6;
    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t sub_21A406550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = *(v3 + 40);
  sub_21A4510E4();
  v7 = e5rt_execution_stream_operation_retain_input_port();

  sub_21A3DCF54(v7);
  if (!v4)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v10 = 6;
    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return a3;
}

void *sub_21A406700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IOPort();
  swift_allocObject();

  v10 = sub_21A425508(a3, a4);
  if (!v5)
  {
    swift_beginAccess();

    v11 = *(v4 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v4 + 48);
    *(v4 + 48) = 0x8000000000000000;
    sub_21A403158(v10, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v4 + 48) = v14;
    swift_endAccess();
  }

  return v10;
}

uint64_t sub_21A406810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 32);
  v6 = *(v3 + 40);
  sub_21A4510E4();
  v7 = e5rt_execution_stream_operation_retain_input_port();

  sub_21A3DCF54(v7);
  if (!v4)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v10 = 6;
    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_21A4069C0(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = v4;
  v13 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v12 = 0;
  v7 = *(v3 + 40);
  sub_21A4510E4();
  v8 = e5rt_execution_stream_operation_retain_output_port();

  sub_21A3DCF54(v8);
  if (!v4)
  {
    v5 = v12;
    sub_21A3DCAF8();
    swift_allocError();
    *v11 = 6;
    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_21A406B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = *(v3 + 40);
  sub_21A4510E4();
  v7 = e5rt_execution_stream_operation_retain_output_port();

  sub_21A3DCF54(v7);
  if (!v4)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v10 = 6;
    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t sub_21A406D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = *(v3 + 40);
  sub_21A4510E4();
  v7 = e5rt_execution_stream_operation_retain_output_port();

  sub_21A3DCF54(v7);
  if (!v4)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v10 = 6;
    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return a3;
}

void *sub_21A406EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IOPort();
  swift_allocObject();

  v10 = sub_21A425508(a3, a4);
  if (!v5)
  {
    swift_beginAccess();

    v11 = *(v4 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v4 + 56);
    *(v4 + 56) = 0x8000000000000000;
    sub_21A403158(v10, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v4 + 56) = v14;
    swift_endAccess();
  }

  return v10;
}

uint64_t sub_21A406FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 32);
  v6 = *(v3 + 40);
  sub_21A4510E4();
  v7 = e5rt_execution_stream_operation_retain_output_port();

  sub_21A3DCF54(v7);
  if (!v4)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v10 = 6;
    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_21A407184()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 48);
  sub_21A3DCAA4();
  v3 = swift_allocError();
  *v4 = 25;

  result = sub_21A404854();
  v6 = result;
  v7 = (result + 40);
  v8 = -*(result + 16);
  v9 = -1;
  while (v8 + v9 != -1)
  {
    if (++v9 >= *(v6 + 16))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    if (*(v2 + 16))
    {
      v10 = v7 + 2;
      v11 = *(v7 - 1);
      v12 = *v7;

      sub_21A3DCA2C(v11, v12);
      v14 = v13;

      v7 = v10;
      if (v14)
      {
        continue;
      }
    }

    swift_willThrow();
  }

  swift_beginAccess();
  v15 = *(v1 + 56);
  v16 = swift_allocError();
  *v17 = 26;

  result = sub_21A404940();
  v18 = result;
  v19 = (result + 40);
  v20 = -*(result + 16);
  v21 = -1;
  while (v20 + v21 != -1)
  {
    if (++v21 >= *(v18 + 16))
    {
      goto LABEL_16;
    }

    if (*(v15 + 16))
    {
      v22 = v19 + 2;
      v23 = *(v19 - 1);
      v24 = *v19;

      sub_21A3DCA2C(v23, v24);
      v26 = v25;

      v19 = v22;
      if (v26)
      {
        continue;
      }
    }

    swift_willThrow();
  }
}

uint64_t sub_21A4073C8()
{
  sub_21A3DCAF8();
  swift_allocError();
  *v0 = 2;
  return swift_willThrow();
}

uint64_t E5Function.__allocating_init(functionName:library:)()
{
  v0 = swift_allocObject();
  E5Function.init(functionName:library:)();
  return v0;
}

uint64_t E5Function.init(functionName:library:)()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = e5rt_execution_stream_create();
  sub_21A3DCF54(v2);
  if (!v1)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v5 = 6;
    swift_willThrow();
  }

  type metadata accessor for E5Function();
  swift_deallocPartialClassInstance();
  v3 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t E5Function.deinit()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *(v0 + 80);
  e5rt_execution_stream_release();
  BaseE5Function.deinit();
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t E5Function.__deallocating_deinit()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *(v0 + 80);
  e5rt_execution_stream_release();
  BaseE5Function.deinit();
  result = swift_deallocClassInstance();
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_21A40765C(uint64_t a1)
{
  v89 = *MEMORY[0x277D85DE8];
  sub_21A407184();
  if (!v2)
  {
    v78 = a1 + 64;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);

    swift_beginAccess();
    v7 = 0;
    v8 = (v4 + 63) >> 6;
    v79 = v1;
    v80 = a1;
    while (1)
    {
      if (v6)
      {
        v9 = v6;
        goto LABEL_13;
      }

      do
      {
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        if (v10 >= v8)
        {

          v51 = v1[10];
          v52 = v1[5];
          v53 = e5rt_execution_stream_encode_operation();
          sub_21A3DCF54(v53);
          v54 = e5rt_execution_stream_execute_sync();
          sub_21A3DCF54(v54);
          v55 = e5rt_execution_stream_reset();
          sub_21A3DCF54(v55);
          swift_beginAccess();
          v56 = v1[7];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28CF0, &unk_21A459110);
          v57 = sub_21A451854();
          v2 = v57;
          v58 = 0;
          v59 = 1 << *(v56 + 32);
          v60 = -1;
          if (v59 < 64)
          {
            v60 = ~(-1 << v59);
          }

          v61 = v60 & *(v56 + 64);
          v62 = (v59 + 63) >> 6;
          v63 = v57 + 64;
          if (!v61)
          {
            goto LABEL_84;
          }

LABEL_83:
          v64 = __clz(__rbit64(v61));
          for (v61 &= v61 - 1; ; v61 = (v66 - 1) & v66)
          {
            v67 = v64 | (v58 << 6);
            v68 = (*(v56 + 48) + 16 * v67);
            v70 = *v68;
            v69 = v68[1];
            v71 = *(*(*(v56 + 56) + 8 * v67) + 32);
            *(v63 + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v67;
            v72 = (v2[6] + 16 * v67);
            *v72 = v70;
            v72[1] = v69;
            *(v2[7] + 8 * v67) = v71;
            v73 = v2[2];
            v30 = __OFADD__(v73, 1);
            v74 = v73 + 1;
            if (v30)
            {
              break;
            }

            v2[2] = v74;

            if (v61)
            {
              goto LABEL_83;
            }

LABEL_84:
            v65 = v58;
            do
            {
              v58 = v65 + 1;
              if (__OFADD__(v65, 1))
              {
                goto LABEL_95;
              }

              if (v58 >= v62)
              {
                goto LABEL_93;
              }

              v66 = *(v56 + 64 + 8 * v58);
              ++v65;
            }

            while (!v66);
            v64 = __clz(__rbit64(v66));
          }

          goto LABEL_101;
        }

        v9 = *(v78 + 8 * v10);
        ++v7;
      }

      while (!v9);
      v7 = v10;
LABEL_13:
      v6 = (v9 - 1) & v9;
      v11 = v1[6];
      if (!*(v11 + 16))
      {
        continue;
      }

      v82 = (v9 - 1) & v9;
      v12 = __clz(__rbit64(v9)) | (v7 << 6);
      v13 = (*(a1 + 56) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(a1 + 48) + 16 * v12);
      v17 = *v16;
      v18 = v16[1];

      sub_21A3E700C(v14, v15);

      v19 = sub_21A3DCA2C(v17, v18);
      v21 = v20;

      if ((v21 & 1) == 0)
      {
        sub_21A3E759C(v14, v15);

        goto LABEL_6;
      }

      v81 = v14;
      v22 = *(*(v11 + 56) + 8 * v19);

      v77 = *(v22 + 32);
      sub_21A3DCAA4();
      v23 = swift_allocError();
      v24 = v23;
      *v25 = 23;
      v26 = v15 >> 62;
      if ((v15 >> 62) <= 1)
      {
        if (!v26)
        {
          v27 = BYTE6(v15);
          goto LABEL_24;
        }

        LODWORD(v27) = HIDWORD(v14) - v14;
        if (!__OFSUB__(HIDWORD(v14), v14))
        {
          v27 = v27;
          goto LABEL_24;
        }

LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
      }

      v27 = 0;
      if (v26 == 2)
      {
        v29 = *(v14 + 16);
        v28 = *(v14 + 24);
        v30 = __OFSUB__(v28, v29);
        v27 = v28 - v29;
        if (v30)
        {
          goto LABEL_100;
        }
      }

LABEL_24:
      v31 = *(v77 + 32);
      if (v27 < v31)
      {
        break;
      }

      if (v31 < 0)
      {
        goto LABEL_96;
      }

      if (!v31)
      {
        goto LABEL_37;
      }

      if (v26 > 1)
      {
        v32 = 0;
        if (v26 == 2)
        {
          v32 = *(v14 + 16);
        }
      }

      else if (v26)
      {
        v32 = v14;
      }

      else
      {
        v32 = 0;
      }

      v30 = __OFADD__(v32, v31);
      v33 = v32 + v31;
      if (v30)
      {
        goto LABEL_97;
      }

      v34 = v33 - v32;
      if (v33 < v32)
      {
        goto LABEL_98;
      }

      if (v33 == v32)
      {
        goto LABEL_37;
      }

      v35 = *(v77 + 24);
      if (v26 > 1)
      {
        if (v26 == 2)
        {
          if (v32 < *(v81 + 16))
          {
            goto LABEL_102;
          }

          if (*(v81 + 24) < v33)
          {
            goto LABEL_106;
          }

          v36 = sub_21A4509F4();
          if (v36)
          {
            v37 = sub_21A450A24();
            if (__OFSUB__(v32, v37))
            {
              goto LABEL_109;
            }

            v36 += v32 - v37;
          }

          v30 = __OFSUB__(v33, v32);
          v38 = v33 - v32;
          if (v30)
          {
            goto LABEL_107;
          }

          v39 = sub_21A450A14();
          if (v36)
          {
            if (v39 >= v38)
            {
              v40 = v38;
            }

            else
            {
              v40 = v39;
            }

            memmove(v35, v36, v40);
          }

          goto LABEL_37;
        }

        sub_21A3E759C(v81, v15);

        v50 = v33 | v32;
        v1 = v79;
        a1 = v80;
        v6 = v82;
        if (v50)
        {
          goto LABEL_103;
        }
      }

      else
      {
        if (!v26)
        {
          if (v32 > BYTE6(v15) || v33 > BYTE6(v15))
          {
            goto LABEL_104;
          }

          v83 = v81;
          v84 = v15;
          v85 = BYTE2(v15);
          v86 = BYTE3(v15);
          v87 = BYTE4(v15);
          v88 = BYTE5(v15);
          if (v34 > 13)
          {
            v34 = 14;
          }

          else if (v34 < 1)
          {
            goto LABEL_37;
          }

          memcpy(v35, &v83 + v32, v34);
          goto LABEL_37;
        }

        if (v81 >> 32 < v33 || v32 < v81 || v81 >> 32 < v32 || v33 < v81)
        {
          goto LABEL_105;
        }

        v44 = sub_21A4509F4();
        if (v44)
        {
          v45 = v44;
          v46 = sub_21A450A24();
          if (__OFSUB__(v32, v46))
          {
            goto LABEL_108;
          }

          v47 = (v32 - v46 + v45);
          v48 = sub_21A450A14();
          if (v47)
          {
            if (v48 >= v34)
            {
              v49 = v34;
            }

            else
            {
              v49 = v48;
            }

            memmove(v35, v47, v49);
          }
        }

        else
        {
          sub_21A450A14();
        }

LABEL_37:
        sub_21A3E759C(v81, v15);

LABEL_6:
        v1 = v79;
        a1 = v80;
        v6 = v82;
      }
    }

    v2 = v23;
    swift_willThrow();

    sub_21A3E759C(v14, v15);
  }

LABEL_93:
  v75 = *MEMORY[0x277D85DE8];
  return v2;
}

char *sub_21A407D80(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28548, &qword_21A459460);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_21A407E84(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28918, &qword_21A457258);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_21A407F88(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28910, &qword_21A457250);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_21A408098(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD288D0, &qword_21A4571F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_21A4081B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28678, &qword_21A456A10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_21A4082D8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_21A40840C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28580, &qword_21A456480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28588, &qword_21A456488);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21A408554(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

size_t sub_21A408690(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_21A40886C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD286B8, &qword_21A456A38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD286C0, &unk_21A456A40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21A4089A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28900, &qword_21A457240);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_21A408AB8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_21A408BB4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD288E8, &qword_21A457218);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_21A408CB8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28458, &qword_21A457210);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_21A408E10()
{
  result = qword_27CD288C8;
  if (!qword_27CD288C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD288C8);
  }

  return result;
}

uint64_t sub_21A409348()
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(v0 + 40) == 1)
  {
    v1 = *(v0 + 16);
    rank = e5rt_tensor_desc_get_rank();
    sub_21A3DCF54(rank);
    result = 0;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
  }

  else
  {
    result = *(v0 + 32);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}