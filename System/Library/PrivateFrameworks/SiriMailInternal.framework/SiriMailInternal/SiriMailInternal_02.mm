uint64_t sub_267604B58()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_8_6();
  *v3 = v2;
  v5 = v4[44];
  v6 = v4[20];
  v7 = v4[19];
  v8 = v4[18];
  v9 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v10 = v9;
  *(v11 + 360) = v0;

  v12 = *(v7 + 8);
  v13 = OUTLINED_FUNCTION_45();
  v14(v13);
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_267604CAC()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[43];
  v2 = v0[41];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  v6 = v0[14];
  v7 = sub_2676CBC6C();
  (*(v4 + 8))(v3, v5);
  v0[9] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC4E0, &qword_2676CF0A0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_2676CBD4C();
  v0[46] = v11;
  v0[10] = v11;
  sub_267607C38();
  OUTLINED_FUNCTION_55();
  sub_267605394();
  OUTLINED_FUNCTION_55();
  v12 = sub_2676054CC();
  v14 = v13;
  v0[47] = v12;
  v15 = *(MEMORY[0x277CEB000] + 4);
  v16 = swift_task_alloc();
  v0[48] = v16;
  *v16 = v0;
  v16[1] = sub_267604E30;
  v17 = v0[43];
  v19 = v0[40];
  v18 = v0[41];
  v20 = v0[17];
  v21 = v0[14];

  return MEMORY[0x28213DAA0](v20, v0 + 10, v21, v12, v14, v17, &type metadata for DeleteMessageIntent, v18);
}

uint64_t sub_267604E30()
{
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_8_6();
  *v4 = v3;
  v6 = *(v5 + 384);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  v3[49] = v0;

  if (v0)
  {
    v9 = v3[47];
    (*(v3[13] + 8))(v3[14], v3[12]);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = v3[47];
    v12 = v3[16];
    v11 = v3[17];
    v14 = v3[14];
    v13 = v3[15];
    v17 = v3 + 12;
    v15 = v3[12];
    v16 = v17[1];
    swift_unknownObjectRelease();
    (*(v16 + 8))(v14, v15);
    (*(v12 + 8))(v11, v13);
  }

  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_267604FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  v13 = v12[42];
  v14 = sub_2676CBE2C();
  v15 = sub_2676CC23C();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v12[46];
  v18 = v12[40];
  v20 = v12[25];
  v19 = v12[26];
  v21 = v12[24];
  if (v16)
  {
    v22 = OUTLINED_FUNCTION_17_3();
    *v22 = 0;
    _os_log_impl(&dword_2675D4000, v14, v15, "#DeleteMessage ✅ Delete Message succeeded!", v22, 2u);
    OUTLINED_FUNCTION_2_5();

    swift_unknownObjectRelease();
  }

  else
  {
    v23 = v12[46];

    swift_unknownObjectRelease();
  }

  v24 = *(v20 + 8);
  v25 = OUTLINED_FUNCTION_45();
  v26(v25);
  OUTLINED_FUNCTION_34_0();

  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_32_1();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_2676050FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  v13 = v12[40];
  v15 = v12[25];
  v14 = v12[26];
  v16 = v12[24];
  swift_unknownObjectRelease();
  (*(v15 + 8))(v14, v16);
  v17 = v12[45];
  OUTLINED_FUNCTION_28_1();

  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_32_1();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_2676051D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  v13 = v12[46];
  v14 = v12[40];
  v16 = v12[25];
  v15 = v12[26];
  v17 = v12[24];
  swift_unknownObjectRelease();
  v18 = *(v16 + 8);
  v19 = OUTLINED_FUNCTION_45();
  v20(v19);

  v21 = v12[49];
  OUTLINED_FUNCTION_28_1();

  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_32_1();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_2676052B4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = (v1 + 16 * v2);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_2676052FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC560, &qword_2676CF2C8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v6 - v2;
  v4 = sub_2676CBDBC();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  return sub_2676CBD6C();
}

uint64_t sub_267605394()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC558, &qword_2676CF2C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC560, &qword_2676CF2C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_2676CBDBC();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = sub_2676CBD5C();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  sub_2676CBCBC();
  return sub_2676CBCAC();
}

uint64_t sub_2676054CC()
{
  v0 = sub_2676CBBAC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_2676CBB9C();
}

uint64_t LinkServicesProvider.resolveMailViewEntities()()
{
  OUTLINED_FUNCTION_3_0();
  v1 = type metadata accessor for Signpost.OpenSignpost();
  *(v0 + 48) = v1;
  OUTLINED_FUNCTION_4_1(v1);
  v3 = *(v2 + 64);
  *(v0 + 56) = OUTLINED_FUNCTION_2_0();
  v4 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267605584()
{
  OUTLINED_FUNCTION_16_2();
  if (qword_2801CBAA8 != -1)
  {
    OUTLINED_FUNCTION_27_2();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = qword_2801D3F18;
  v0[8] = qword_2801D3F18;
  v4 = v3;
  sub_2676CBE0C();
  sub_2676CC29C();
  sub_2676CBDFC();
  v5 = v1 + *(v2 + 20);
  *v5 = "FetchViewEntities";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  if (qword_2801CBA88 != -1)
  {
    swift_once();
  }

  v6 = sub_2676598DC();
  v0[9] = v6;
  if (*(v6 + 16))
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v7 = sub_2676CBE4C();
    v0[10] = OUTLINED_FUNCTION_24_2(v7, qword_2801CDC90);

    v8 = sub_2676CBE2C();
    v9 = sub_2676CC23C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_5_3();
      *v10 = 134217984;
      *(v10 + 4) = *(v6 + 16);

      _os_log_impl(&dword_2675D4000, v8, v9, "#ViewEntities Fetching MailMessagePrototype entities from %ld MailMessageEntity(s) in the view onscreen", v10, 0xCu);
      OUTLINED_FUNCTION_19_2();
    }

    else
    {
    }

    v23 = swift_task_alloc();
    v0[11] = v23;
    *v23 = v0;
    v23[1] = sub_2676058A8;

    return LinkServicesProvider.performGetMail(identifiers:)();
  }

  else
  {

    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v11 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v11, qword_2801CDC90);
    v12 = sub_2676CBE2C();
    v13 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_35_0(v13))
    {
      *OUTLINED_FUNCTION_17_3() = 0;
      OUTLINED_FUNCTION_12_3();
      _os_log_impl(v14, v15, v16, v17, v18, 2u);
      OUTLINED_FUNCTION_19_2();
    }

    v19 = v0[7];

    sub_2676CC28C();
    sub_2676CBDFC();
    sub_2675DE628(v0[7]);

    OUTLINED_FUNCTION_17_6();
    v21 = MEMORY[0x277D84F90];

    return v20(v21);
  }
}

uint64_t sub_2676058A8()
{
  OUTLINED_FUNCTION_16_2();
  v3 = v2;
  OUTLINED_FUNCTION_9_3();
  v5 = v4;
  OUTLINED_FUNCTION_8_6();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *(v7 + 72);
  v10 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v11 = v10;
  *(v5 + 96) = v0;

  if (!v0)
  {
    *(v5 + 104) = v3;
  }

  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2676059DC()
{
  OUTLINED_FUNCTION_3_0();
  v1 = v0[7];
  v2 = v0[8];
  sub_2676CC28C();
  OUTLINED_FUNCTION_23_4();
  v3 = v0[13];
  sub_2675DE628(v0[7]);

  OUTLINED_FUNCTION_17_6();

  return v4(v3);
}

uint64_t sub_267605A64()
{
  OUTLINED_FUNCTION_62();
  v22 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = v1;
  v4 = sub_2676CBE2C();
  v5 = sub_2676CC24C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 96);
    OUTLINED_FUNCTION_5_3();
    v7 = OUTLINED_FUNCTION_36_0();
    v21 = v7;
    *v1 = 136315138;
    swift_getErrorValue();
    v9 = *(v0 + 16);
    v8 = *(v0 + 24);
    v10 = *(v0 + 32);
    v11 = sub_2676CC5FC();
    v13 = sub_2676B0B84(v11, v12, &v21);

    *(v1 + 1) = v13;
    OUTLINED_FUNCTION_65(&dword_2675D4000, v14, v15, "#ViewEntities Failed to resolve view entities: %s");
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_19_2();
  }

  v16 = *(v0 + 56);
  v17 = *(v0 + 64);

  sub_2676CC28C();
  OUTLINED_FUNCTION_23_4();
  sub_2675DE628(*(v0 + 56));

  OUTLINED_FUNCTION_17_6();
  v19 = MEMORY[0x277D84F90];

  return v18(v19);
}

uint64_t sub_267605BC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267609F60;

  return LinkServicesProvider.markMessageAsRead(message:)();
}

uint64_t sub_267605C5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267605CFC;

  return LinkServicesProvider.performSendMail(intent:)();
}

uint64_t sub_267605CFC()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  OUTLINED_FUNCTION_15_0();

  return v5();
}

uint64_t sub_267605DDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267605E70;

  return LinkServicesProvider.performGetMail(identifiers:)();
}

uint64_t sub_267605E70()
{
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_3();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v7 = v6;

  OUTLINED_FUNCTION_17_6();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_267605F5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267609F5C;

  return LinkServicesProvider.performGetMail(subject:isRead:isNew:fromAddressee:dateTimeRange:)();
}

uint64_t sub_267606028()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2676060BC;

  return LinkServicesProvider.deleteMessage(message:)();
}

uint64_t sub_2676060BC()
{
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_3();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v7 = v6;

  OUTLINED_FUNCTION_17_6();
  if (v0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 & 1;
  }

  return v8(v9);
}

uint64_t sub_2676061B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26760623C;

  return LinkServicesProvider.resolveMailViewEntities()();
}

uint64_t sub_26760623C()
{
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  OUTLINED_FUNCTION_9_3();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;

  OUTLINED_FUNCTION_17_6();

  return v7(v2);
}

uint64_t static MailMessagePrototype.< infix(_:_:)()
{
  v0 = sub_2676C90CC();
  v1 = OUTLINED_FUNCTION_3(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  sub_2676C8A7C();
  sub_2676C8A7C();
  v11 = sub_2676C906C();
  v12 = *(v3 + 8);
  v12(v8, v0);
  v12(v10, v0);
  return v11 & 1;
}

BOOL sub_267606444()
{
  v0 = sub_2676C90CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_2676C8A7C();
  sub_2676C8A7C();
  v8 = sub_2676C906C();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return (v8 & 1) == 0;
}

BOOL sub_267606570()
{
  v0 = sub_2676C90CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_2676C8A7C();
  sub_2676C8A7C();
  v8 = sub_2676C906C();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return (v8 & 1) == 0;
}

uint64_t sub_26760669C()
{
  v0 = sub_2676C90CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_2676C8A7C();
  sub_2676C8A7C();
  v8 = sub_2676C906C();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8 & 1;
}

id MailAddresseePrototype.asPersonAttribute.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D47638]) init];
  v1 = sub_2676C8C1C();
  if (v2)
  {
    sub_2675EA76C(v1, v2, v0, &selRef_setDisplayText_);
  }

  v3 = sub_2676C8C4C();
  sub_2675EA76C(v3, v4, v0, &selRef_setData_);
  return v0;
}

uint64_t sub_267606828(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC550, &qword_2676CF2B8);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v63 - v6;
  v8 = sub_2676C924C();
  v9 = OUTLINED_FUNCTION_3(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_2();
  v69 = v15 - v14;
  v70 = sub_2676CBECC();
  v16 = OUTLINED_FUNCTION_3(v70);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_2();
  v23 = v22 - v21;
  v24 = *(a1 + 16);
  if (!v24)
  {
    return MEMORY[0x277D84F90];
  }

  v27 = *(v18 + 16);
  v25 = v18 + 16;
  v26 = v27;
  v28 = *(v25 + 64);
  OUTLINED_FUNCTION_2_12();
  v30 = a1 + v29;
  v31 = *(v25 + 56);
  v63 = (v11 + 8);
  v64 = (v11 + 32);
  v71 = (v25 - 8);
  v72 = MEMORY[0x277D84F90];
  v32 = v70;
  v67 = v25;
  v68 = v7;
  v65 = v31;
  v66 = v27;
  do
  {
    v26(v23, v30, v32);
    sub_2676CBEAC();
    sub_2676C923C();
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      v33 = *v71;
      v34 = OUTLINED_FUNCTION_61();
      v35(v34);
      sub_2675E35CC(v7, &qword_2801CC550, &qword_2676CF2B8);
    }

    else
    {
      v36 = v69;
      (*v64)(v69, v7, v8);
      v73 = sub_2676C920C();
      v74 = v37;

      MEMORY[0x26D5FDD00](37, 0xE100000000000000);

      v38 = v8;
      v39 = v73;
      v40 = v74;
      v41 = sub_2676C922C();
      v43 = v42;
      v73 = v39;
      v74 = v40;
      v8 = v38;

      MEMORY[0x26D5FDD00](v41, v43);

      v44 = sub_2676CC09C();
      v46 = v45;
      v47 = v36;
      v32 = v70;
      (*v63)(v47, v38);
      v48 = *v71;
      v49 = OUTLINED_FUNCTION_61();
      v50(v49);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = *(v72 + 16);
        v56 = OUTLINED_FUNCTION_18_4();
        sub_26760719C(v56, v57, v58, v59);
        v72 = v60;
      }

      v52 = *(v72 + 16);
      v51 = *(v72 + 24);
      v7 = v68;
      if (v52 >= v51 >> 1)
      {
        sub_26760719C(v51 > 1, v52 + 1, 1, v72);
        v72 = v61;
      }

      v53 = v72;
      *(v72 + 16) = v52 + 1;
      v54 = v53 + 16 * v52;
      *(v54 + 32) = v44;
      *(v54 + 40) = v46;
      v26 = v66;
      v31 = v65;
    }

    v30 += v31;
    --v24;
  }

  while (v24);
  return v72;
}

void sub_267606BD8()
{
  OUTLINED_FUNCTION_7_8();
  if (v3)
  {
    OUTLINED_FUNCTION_6_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_24_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_9();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_26760793C(*(v0 + 16), v4, &qword_2801CC4F8, &unk_2676CF250, &qword_2801CBF78, &qword_2676CDF00);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  OUTLINED_FUNCTION_7_7(v7);
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_2_12();
  if (v1)
  {
    v11 = OUTLINED_FUNCTION_4_7(v10);
    sub_2676C24A0(v11, v12, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_9();
  }
}

void sub_267606CBC()
{
  OUTLINED_FUNCTION_7_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_24_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_53(v2, v5, &qword_2801CC580, &qword_2676CF270);
  OUTLINED_FUNCTION_29_1();
  v9 = sub_2676CAB1C();
  OUTLINED_FUNCTION_7_7(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_2_12();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_4_7(v12);
    sub_2676C24B4(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_9();
  }
}

void sub_267606D84()
{
  OUTLINED_FUNCTION_7_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_24_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_53(v2, v5, &qword_2801CC508, &qword_2676CF260);
  OUTLINED_FUNCTION_29_1();
  v9 = sub_2676C8C8C();
  OUTLINED_FUNCTION_7_7(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_2_12();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_4_7(v12);
    sub_2676C2470(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_9();
  }
}

void sub_267606E4C(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v8 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_47();
  if (v9 == v10)
  {
LABEL_7:
    OUTLINED_FUNCTION_46(v8);
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC510, &qword_2676CF268);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v11[2] = v4;
      v11[3] = 2 * ((v12 - 32) / 8);
      if (a1)
      {
LABEL_9:
        v13 = OUTLINED_FUNCTION_49();
        sub_2676C24CC(v13, v14, v15);
        *(a4 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_58();
    goto LABEL_12;
  }

  if (v8 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_50();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_267606F20()
{
  OUTLINED_FUNCTION_7_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_24_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_53(v2, v5, &qword_2801CC520, &unk_2676CF280);
  OUTLINED_FUNCTION_29_1();
  v9 = type metadata accessor for UnresolvedContactInfo();
  OUTLINED_FUNCTION_7_7(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_2_12();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_4_7(v12);
    sub_2676C24EC(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_9();
  }
}

void sub_267606FE8(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v8 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_47();
  if (v9 == v10)
  {
LABEL_7:
    OUTLINED_FUNCTION_46(v8);
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC530, &qword_2676CF298);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v11[2] = v4;
      v11[3] = 2 * ((v12 - 32) / 24);
      if (a1)
      {
LABEL_9:
        v13 = OUTLINED_FUNCTION_49();
        sub_2676C2504(v13, v14, v15);
        *(a4 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC538, &unk_2676CF2A0);
    OUTLINED_FUNCTION_58();
    goto LABEL_12;
  }

  if (v8 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_50();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2676070D4()
{
  OUTLINED_FUNCTION_7_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_24_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_53(v2, v5, &qword_2801CC548, &qword_2676CF2B0);
  OUTLINED_FUNCTION_29_1();
  v9 = sub_2676CBECC();
  OUTLINED_FUNCTION_7_7(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_2_12();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_4_7(v12);
    sub_2676C252C(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_9();
  }
}

void sub_26760719C(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v8 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_47();
  if (v9 == v10)
  {
LABEL_7:
    OUTLINED_FUNCTION_46(v8);
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBB78, &qword_2676CD280);
      v11 = swift_allocObject();
      _swift_stdlib_malloc_size(v11);
      OUTLINED_FUNCTION_64();
      v11[2] = v4;
      v11[3] = v12;
      if (a1)
      {
LABEL_9:
        v13 = OUTLINED_FUNCTION_49();
        sub_2676C2544(v13, v14, v15);
        *(a4 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_58();
    goto LABEL_12;
  }

  if (v8 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_50();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_267607264(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC570, &qword_2676CF2D8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_2676C2544((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_26760735C(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_26760793C(v9, a2, &qword_2801CC568, &qword_2676CF2D0, &qword_2801CC488, &unk_2676CEF58);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC488, &unk_2676CEF58) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_2676C257C(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_26760747C()
{
  OUTLINED_FUNCTION_7_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_24_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_53(v2, v5, &qword_2801CC540, &qword_2676D1400);
  OUTLINED_FUNCTION_29_1();
  v9 = sub_2676C94AC();
  OUTLINED_FUNCTION_7_7(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_2_12();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_4_7(v12);
    sub_2676C25BC(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_9();
  }
}

void sub_267607544()
{
  OUTLINED_FUNCTION_7_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_24_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_53(v2, v5, &qword_2801CC578, &qword_2676CF2E8);
  OUTLINED_FUNCTION_29_1();
  v9 = sub_2676CA19C();
  OUTLINED_FUNCTION_7_7(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_2_12();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_4_7(v12);
    sub_2676C25D4(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_9();
  }
}

void sub_26760760C()
{
  OUTLINED_FUNCTION_7_8();
  if (v3)
  {
    OUTLINED_FUNCTION_6_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_24_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_9();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_26760793C(*(v0 + 16), v4, &qword_2801CC528, &qword_2676CF290, &qword_2801CC3D8, &unk_2676CEC00);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  OUTLINED_FUNCTION_7_7(v7);
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_2_12();
  if (v1)
  {
    v11 = OUTLINED_FUNCTION_4_7(v10);
    sub_2676C2590(v11, v12, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_9();
  }
}

void sub_2676076F0()
{
  OUTLINED_FUNCTION_7_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_24_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_53(v2, v5, &qword_2801CC518, &qword_2676CF278);
  OUTLINED_FUNCTION_29_1();
  v9 = sub_2676CAECC();
  OUTLINED_FUNCTION_7_7(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_2_12();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_4_7(v12);
    sub_2676C25A4(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_9();
  }
}

void sub_2676077B8()
{
  OUTLINED_FUNCTION_7_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_24_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_53(v2, v5, &qword_2801CC500, &qword_2676D57A0);
  OUTLINED_FUNCTION_29_1();
  v9 = sub_2676CB14C();
  OUTLINED_FUNCTION_7_7(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_2_12();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_4_7(v12);
    sub_2676C2488(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_9();
  }
}

void *sub_267607880(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBB78, &qword_2676CD280);
  v4 = swift_allocObject();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_64();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

size_t sub_26760793C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_1_0(v10);
  v12 = *(v11 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v15);
  if (v12)
  {
    if (result - v14 != 0x8000000000000000 || v12 != -1)
    {
      v15[2] = a1;
      v15[3] = 2 * ((result - v14) / v12);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_267607A34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_1_0(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_267607B28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_267607B90(size_t *a1)
{
  v2 = *(sub_2676C8BFC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_267609F44(v3);
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_267607C8C(v6);
  *a1 = v3;
  return result;
}

unint64_t sub_267607C38()
{
  result = qword_2801CC4E8;
  if (!qword_2801CC4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC4E8);
  }

  return result;
}

uint64_t sub_267607C8C(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_2676CC55C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2676C8BFC();
        v6 = sub_2676CC14C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_2676C8BFC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_267608154(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_267607DBC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_267607DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = sub_2676C90CC();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v62);
  v61 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v43 - v12;
  v13 = sub_2676C8BFC();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v53 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v59 = &v43 - v18;
  result = MEMORY[0x28223BE20](v17);
  v58 = &v43 - v21;
  v45 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v55 = (v8 + 8);
    v56 = v24;
    v54 = (v23 - 8);
    v57 = v23;
    v26 = (v22 + v25 * (a3 - 1));
    v50 = -v25;
    v51 = (v23 + 16);
    v27 = a1 - a3;
    v52 = v22;
    v44 = v25;
    v28 = v22 + v25 * a3;
    v29 = v60;
    while (2)
    {
      v48 = v26;
      v49 = a3;
      v46 = v28;
      v47 = v27;
      v63 = v27;
      do
      {
        v30 = v58;
        v31 = v56;
        v56(v58, v28, v13);
        v32 = v13;
        v33 = v59;
        v31(v59, v26, v32);
        sub_2676C8A7C();
        v34 = v61;
        sub_2676C8A7C();
        v64 = sub_2676C906C();
        v35 = *v55;
        v36 = v34;
        v37 = v62;
        (*v55)(v36, v62);
        v35(v29, v37);
        v38 = *v54;
        v39 = v33;
        v13 = v32;
        (*v54)(v39, v32);
        result = v38(v30, v32);
        if ((v64 & 1) == 0)
        {
          break;
        }

        if (!v52)
        {
          __break(1u);
          return result;
        }

        v40 = *v51;
        v41 = v53;
        (*v51)(v53, v28, v32);
        swift_arrayInitWithTakeFrontToBack();
        result = v40(v26, v41, v32);
        v26 += v50;
        v28 += v50;
      }

      while (!__CFADD__(v63++, 1));
      a3 = v49 + 1;
      v26 = &v48[v44];
      v27 = v47 - 1;
      v28 = v46 + v44;
      if (v49 + 1 != v45)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_267608154(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v135 = a1;
  v159 = sub_2676C90CC();
  v8 = *(v159 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v159);
  v158 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v157 = &v132 - v12;
  v13 = sub_2676C8BFC();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v138 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v149 = &v132 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v156 = &v132 - v21;
  result = MEMORY[0x28223BE20](v20);
  v160 = &v132 - v23;
  v144 = a3;
  v24 = a3[1];
  v139 = v14;
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_101:
    v161 = *v135;
    if (!v161)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_103:
      v125 = (v26 + 16);
      v126 = *(v26 + 16);
      while (v126 >= 2)
      {
        if (!*v144)
        {
          goto LABEL_139;
        }

        v127 = v26;
        v128 = (v26 + 16 * v126);
        v129 = *v128;
        v130 = &v125[2 * v126];
        v26 = v130[1];
        sub_267608D48(*v144 + v139[9] * *v128, *v144 + v139[9] * *v130, *v144 + v139[9] * v26, v161);
        if (v5)
        {
          break;
        }

        if (v26 < v129)
        {
          goto LABEL_127;
        }

        if (v126 - 2 >= *v125)
        {
          goto LABEL_128;
        }

        *v128 = v129;
        v128[1] = v26;
        v131 = *v125 - v126;
        if (*v125 < v126)
        {
          goto LABEL_129;
        }

        v126 = *v125 - 1;
        result = memmove(v130, v130 + 2, 16 * v131);
        *v125 = v126;
        v26 = v127;
      }
    }

LABEL_136:
    result = sub_2676093B4(v26);
    v26 = result;
    goto LABEL_103;
  }

  v133 = a4;
  v25 = 0;
  v153 = (v8 + 8);
  v154 = v14 + 2;
  v151 = v14 + 4;
  v152 = (v14 + 1);
  v26 = MEMORY[0x277D84F90];
  v155 = v13;
  while (1)
  {
    v27 = v25;
    v28 = v25 + 1;
    if (v25 + 1 < v24)
    {
      v134 = v26;
      v29 = v25;
      v136 = v25;
      v145 = v5;
      v146 = v25 + 1;
      v30 = *v144;
      v161 = v30;
      v31 = v14;
      v32 = v14[9];
      v147 = v24;
      v148 = v32;
      v33 = v30 + v32 * v28;
      v34 = v13;
      v35 = v31[2];
      v35(v160, v33, v13);
      v36 = v156;
      v142 = v35;
      v35(v156, v30 + v32 * v29, v34);
      v5 = v157;
      v26 = v160;
      sub_2676C8A7C();
      v37 = v158;
      sub_2676C8A7C();
      LODWORD(v143) = sub_2676C906C();
      v38 = *v153;
      v39 = v159;
      (*v153)(v37, v159);
      v141 = v38;
      (v38)(v5, v39);
      v40 = v139[1];
      v40(v36, v34);
      v140 = v40;
      result = (v40)(v26, v34);
      v41 = v147;
      v42 = v136 + 2;
      v43 = v161 + v148 * (v136 + 2);
      while (1)
      {
        v44 = v42;
        if (++v146 >= v41)
        {
          break;
        }

        v5 = v160;
        v45 = v155;
        v46 = v142;
        v161 = v42;
        (v142)(v160, v43, v155);
        v26 = v156;
        v46(v156, v33, v45);
        v47 = v157;
        sub_2676C8A7C();
        v48 = v158;
        sub_2676C8A7C();
        LOBYTE(v150) = sub_2676C906C() & 1;
        LODWORD(v150) = v150;
        v49 = v48;
        v50 = v159;
        v51 = v141;
        (v141)(v49, v159);
        v51(v47, v50);
        v52 = v140;
        v140(v26, v45);
        result = (v52)(v5, v45);
        v44 = v161;
        v41 = v147;
        v43 += v148;
        v33 += v148;
        v42 = v161 + 1;
        if ((v143 & 1) != v150)
        {
          goto LABEL_9;
        }
      }

      v146 = v41;
LABEL_9:
      if (v143)
      {
        v28 = v146;
        v27 = v136;
        v13 = v155;
        if (v146 < v136)
        {
          goto LABEL_133;
        }

        if (v136 >= v146)
        {
          v5 = v145;
          v14 = v139;
          v26 = v134;
          goto LABEL_32;
        }

        if (v41 >= v44)
        {
          v53 = v44;
        }

        else
        {
          v53 = v41;
        }

        v54 = v148 * (v53 - 1);
        v55 = v148 * v53;
        v56 = v136;
        v57 = v136 * v148;
        v5 = v145;
        v14 = v139;
        do
        {
          if (v56 != --v28)
          {
            v58 = v5;
            v59 = *v144;
            if (!*v144)
            {
              goto LABEL_140;
            }

            v161 = *v151;
            (v161)(v138, v59 + v57, v13);
            v60 = v57 < v54 || v59 + v57 >= v59 + v55;
            if (v60)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v161)(v59 + v54, v138, v13);
            v5 = v58;
            v14 = v139;
          }

          ++v56;
          v54 -= v148;
          v55 -= v148;
          v57 += v148;
        }

        while (v56 < v28);
        v26 = v134;
      }

      else
      {
        v5 = v145;
        v14 = v139;
        v26 = v134;
        v13 = v155;
      }

      v28 = v146;
      v27 = v136;
    }

LABEL_32:
    v61 = v144[1];
    if (v28 < v61)
    {
      if (__OFSUB__(v28, v27))
      {
        goto LABEL_132;
      }

      if (v28 - v27 < v133)
      {
        break;
      }
    }

LABEL_48:
    if (v28 < v27)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_267607264(0, *(v26 + 16) + 1, 1, v26);
      v26 = result;
    }

    v82 = *(v26 + 16);
    v81 = *(v26 + 24);
    v83 = v82 + 1;
    if (v82 >= v81 >> 1)
    {
      result = sub_267607264(v81 > 1, v82 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 16) = v83;
    v84 = (v26 + 32);
    v85 = (v26 + 32 + 16 * v82);
    *v85 = v27;
    v85[1] = v28;
    v161 = *v135;
    if (!v161)
    {
      goto LABEL_141;
    }

    v146 = v28;
    if (v82)
    {
      v150 = (v26 + 32);
      while (1)
      {
        v86 = v83 - 1;
        v87 = &v84[16 * v83 - 16];
        v88 = (v26 + 16 * v83);
        if (v83 >= 4)
        {
          break;
        }

        if (v83 == 3)
        {
          v89 = *(v26 + 32);
          v90 = *(v26 + 40);
          v99 = __OFSUB__(v90, v89);
          v91 = v90 - v89;
          v92 = v99;
LABEL_69:
          if (v92)
          {
            goto LABEL_118;
          }

          v104 = *v88;
          v103 = v88[1];
          v105 = __OFSUB__(v103, v104);
          v106 = v103 - v104;
          v107 = v105;
          if (v105)
          {
            goto LABEL_121;
          }

          v108 = *(v87 + 1);
          v109 = v108 - *v87;
          if (__OFSUB__(v108, *v87))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v106, v109))
          {
            goto LABEL_126;
          }

          if (v106 + v109 >= v91)
          {
            if (v91 < v109)
            {
              v86 = v83 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v83 < 2)
        {
          goto LABEL_120;
        }

        v111 = *v88;
        v110 = v88[1];
        v99 = __OFSUB__(v110, v111);
        v106 = v110 - v111;
        v107 = v99;
LABEL_84:
        if (v107)
        {
          goto LABEL_123;
        }

        v113 = *v87;
        v112 = *(v87 + 1);
        v99 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v99)
        {
          goto LABEL_125;
        }

        if (v114 < v106)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v86 - 1 >= v83)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v144)
        {
          goto LABEL_138;
        }

        v118 = &v84[16 * v86 - 16];
        v119 = *v118;
        v120 = v86;
        v121 = &v84[16 * v86];
        v122 = *(v121 + 1);
        sub_267608D48(*v144 + v14[9] * *v118, *v144 + v14[9] * *v121, *v144 + v14[9] * v122, v161);
        if (v5)
        {
        }

        if (v122 < v119)
        {
          goto LABEL_113;
        }

        v145 = 0;
        v5 = v14;
        v123 = v26;
        v26 = *(v26 + 16);
        if (v120 > v26)
        {
          goto LABEL_114;
        }

        *v118 = v119;
        *(v118 + 1) = v122;
        if (v120 >= v26)
        {
          goto LABEL_115;
        }

        v83 = v26 - 1;
        result = memmove(v121, v121 + 16, 16 * (v26 - 1 - v120));
        *(v123 + 16) = v26 - 1;
        v124 = v26 > 2;
        v26 = v123;
        v14 = v5;
        v5 = v145;
        v84 = v150;
        if (!v124)
        {
          goto LABEL_98;
        }
      }

      v93 = &v84[16 * v83];
      v94 = *(v93 - 8);
      v95 = *(v93 - 7);
      v99 = __OFSUB__(v95, v94);
      v96 = v95 - v94;
      if (v99)
      {
        goto LABEL_116;
      }

      v98 = *(v93 - 6);
      v97 = *(v93 - 5);
      v99 = __OFSUB__(v97, v98);
      v91 = v97 - v98;
      v92 = v99;
      if (v99)
      {
        goto LABEL_117;
      }

      v100 = v88[1];
      v101 = v100 - *v88;
      if (__OFSUB__(v100, *v88))
      {
        goto LABEL_119;
      }

      v99 = __OFADD__(v91, v101);
      v102 = v91 + v101;
      if (v99)
      {
        goto LABEL_122;
      }

      if (v102 >= v96)
      {
        v116 = *v87;
        v115 = *(v87 + 1);
        v99 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v99)
        {
          goto LABEL_130;
        }

        if (v91 < v117)
        {
          v86 = v83 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v24 = v144[1];
    v25 = v146;
    if (v146 >= v24)
    {
      goto LABEL_101;
    }
  }

  v62 = (v27 + v133);
  if (__OFADD__(v27, v133))
  {
    goto LABEL_134;
  }

  if (v62 >= v61)
  {
    v62 = v144[1];
  }

  if (v62 < v27)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v28 == v62)
  {
    goto LABEL_48;
  }

  v134 = v26;
  v145 = v5;
  v63 = *v144;
  v64 = v14[9];
  v150 = v14[2];
  v65 = v63 + v64 * (v28 - 1);
  v147 = -v64;
  v136 = v27;
  v66 = (v27 - v28);
  v148 = v63;
  v137 = v64;
  v67 = (v63 + v28 * v64);
  v140 = v62;
LABEL_41:
  v146 = v28;
  v141 = v67;
  v142 = v66;
  v143 = v65;
  v68 = v65;
  while (1)
  {
    v69 = v160;
    v70 = v150;
    (v150)(v160, v67, v13);
    v71 = v156;
    (v70)(v156, v68, v13);
    v72 = v157;
    sub_2676C8A7C();
    v73 = v158;
    sub_2676C8A7C();
    LODWORD(v161) = sub_2676C906C();
    v74 = *v153;
    v75 = v73;
    v76 = v159;
    (*v153)(v75, v159);
    v77 = v72;
    v13 = v155;
    v74(v77, v76);
    v78 = *v152;
    (*v152)(v71, v13);
    result = v78(v69, v13);
    if ((v161 & 1) == 0)
    {
LABEL_46:
      v28 = v146 + 1;
      v65 = v143 + v137;
      v66 = v142 - 1;
      v67 = &v141[v137];
      if ((v146 + 1) == v140)
      {
        v28 = v140;
        v5 = v145;
        v14 = v139;
        v26 = v134;
        v27 = v136;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v148)
    {
      break;
    }

    v79 = *v151;
    v80 = v149;
    (*v151)(v149, v67, v13);
    swift_arrayInitWithTakeFrontToBack();
    v79(v68, v80, v13);
    v68 += v147;
    v67 += v147;
    v60 = __CFADD__(v66++, 1);
    if (v60)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_267608D48(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v86 = a4;
  v81 = sub_2676C90CC();
  v7 = *(v81 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v81);
  v80 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v79 = &v69 - v11;
  v85 = sub_2676C8BFC();
  v12 = *(*(v85 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v85);
  v78 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v83 = &v69 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v20 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v20)
  {
    goto LABEL_60;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v23 = (a2 - a1) / v19;
  v89 = a1;
  v88 = v86;
  v76 = (v7 + 8);
  v77 = (v16 + 16);
  v75 = (v16 + 8);
  v24 = v21 / v19;
  if (v23 >= v21 / v19)
  {
    v44 = v86;
    sub_2676C2564(a2, v21 / v19, v86);
    v45 = v44 + v24 * v19;
    v46 = -v19;
    v47 = v45;
    v84 = a1;
    v71 = v46;
LABEL_36:
    v48 = a2 + v46;
    v49 = a3;
    v69 = v47;
    v50 = v47;
    v72 = a2 + v46;
    v73 = a2;
    while (1)
    {
      if (v45 <= v86)
      {
        v89 = a2;
        v87 = v50;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v70 = v50;
      v82 = v49 + v46;
      v51 = v45 + v46;
      v52 = v45;
      v53 = *v77;
      v54 = v48;
      v55 = v85;
      v56 = v49;
      (*v77)(v83, v45 + v46, v85);
      v57 = v78;
      v53(v78, v54, v55);
      v58 = v79;
      sub_2676C8A7C();
      v59 = v80;
      sub_2676C8A7C();
      LODWORD(v74) = sub_2676C906C();
      v60 = *v76;
      v61 = v59;
      v62 = v81;
      (*v76)(v61, v81);
      v60(v58, v62);
      v63 = *v75;
      (*v75)(v57, v55);
      v63(v83, v55);
      if (v74)
      {
        v45 = v52;
        a3 = v82;
        if (v56 < v73 || v82 >= v73)
        {
          a2 = v72;
          swift_arrayInitWithTakeFrontToBack();
          v47 = v70;
          v46 = v71;
          a1 = v84;
        }

        else
        {
          v67 = v70;
          v46 = v71;
          v47 = v70;
          v20 = v56 == v73;
          v68 = v72;
          a2 = v72;
          a1 = v84;
          if (!v20)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v68;
            v47 = v67;
          }
        }

        goto LABEL_36;
      }

      v64 = v82;
      if (v56 < v52 || v82 >= v52)
      {
        swift_arrayInitWithTakeFrontToBack();
        v49 = v64;
        v45 = v51;
        v50 = v51;
        v48 = v72;
        a2 = v73;
        a1 = v84;
        v46 = v71;
      }

      else
      {
        v50 = v51;
        v20 = v52 == v56;
        v49 = v82;
        v45 = v51;
        v48 = v72;
        a2 = v73;
        a1 = v84;
        v46 = v71;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          v49 = v64;
          v45 = v51;
          v50 = v51;
        }
      }
    }

    v89 = a2;
    v87 = v69;
  }

  else
  {
    v25 = v86;
    sub_2676C2564(a1, (a2 - a1) / v19, v86);
    v73 = v19;
    v74 = v25 + v23 * v19;
    v87 = v74;
    v82 = a3;
    while (v86 < v74 && a2 < a3)
    {
      v84 = a1;
      v27 = *v77;
      v28 = v83;
      v29 = v85;
      (*v77)(v83, a2, v85);
      v30 = v78;
      v27(v78, v86, v29);
      v31 = v79;
      sub_2676C8A7C();
      v32 = v80;
      sub_2676C8A7C();
      v33 = sub_2676C906C();
      v34 = a2;
      v35 = *v76;
      v36 = v32;
      v37 = v81;
      (*v76)(v36, v81);
      v35(v31, v37);
      v38 = *v75;
      (*v75)(v30, v29);
      v38(v28, v29);
      if (v33)
      {
        v39 = v73;
        a2 = v34 + v73;
        v40 = v84;
        if (v84 < v34 || v84 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v82;
        }

        else
        {
          a3 = v82;
          if (v84 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v39 = v73;
        v42 = v86 + v73;
        v40 = v84;
        if (v84 < v86 || v84 >= v42)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v82;
          a2 = v34;
        }

        else
        {
          a3 = v82;
          a2 = v34;
          if (v84 != v86)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v88 = v42;
        v86 = v42;
      }

      a1 = v40 + v39;
      v89 = a1;
    }
  }

LABEL_58:
  sub_2676093C8(&v89, &v88, &v87);
  return 1;
}

uint64_t sub_2676093C8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_2676C8BFC();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2676094A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC570, &qword_2676CF2D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_267609608(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of LinkServicesProviding.markMessageAsRead(message:)()
{
  OUTLINED_FUNCTION_16_2();
  v3 = *(OUTLINED_FUNCTION_26_3(v0, v1, v2) + 8);
  OUTLINED_FUNCTION_10_7();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_42(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_11_6(v8);

  return v11(v10);
}

uint64_t dispatch thunk of LinkServicesProviding.performSendMail(intent:)()
{
  OUTLINED_FUNCTION_62();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_10_7();
  v16 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_42(v12);
  *v13 = v14;
  v13[1] = sub_267605CFC;

  return v16(v7, v5, v3, v1);
}

uint64_t dispatch thunk of LinkServicesProviding.performGetMail(identifiers:)()
{
  OUTLINED_FUNCTION_16_2();
  v3 = *(OUTLINED_FUNCTION_26_3(v0, v1, v2) + 24);
  OUTLINED_FUNCTION_10_7();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_42(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_11_6(v8);

  return v11(v10);
}

uint64_t sub_267609970()
{
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  OUTLINED_FUNCTION_9_3();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;

  OUTLINED_FUNCTION_17_6();

  return v7(v2);
}

uint64_t dispatch thunk of LinkServicesProviding.performGetMail(subject:isRead:isNew:fromAddressee:dateTimeRange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(a8 + 32);
  OUTLINED_FUNCTION_10_7();
  v24 = (v17 + *v17);
  v19 = *(v18 + 4);
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_42(v20);
  *v21 = v22;
  v21[1] = sub_267609F58;

  return v24(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of LinkServicesProviding.deleteMessage(message:)()
{
  OUTLINED_FUNCTION_16_2();
  v3 = *(OUTLINED_FUNCTION_26_3(v0, v1, v2) + 40);
  OUTLINED_FUNCTION_10_7();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_42(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_11_6(v8);

  return v11(v10);
}

uint64_t dispatch thunk of LinkServicesProviding.resolveMailViewEntities()()
{
  OUTLINED_FUNCTION_16_2();
  v1 = v0;
  v3 = v2;
  v4 = *(v0 + 48);
  OUTLINED_FUNCTION_10_7();
  v12 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_42(v8);
  *v9 = v10;
  v9[1] = sub_26760623C;

  return v12(v3, v1);
}

_BYTE *storeEnumTagSinglePayload for LinkServicesProvider(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriMailInternal04SendB6ResultO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_267609E94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t sub_267609ED4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_267609F18(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_9()
{

  return swift_arrayInitWithCopy();
}

unint64_t OUTLINED_FUNCTION_9_6@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 16) = v2;
  v4 = *(a1 + 32);
  return v3 + ((*(a1 + 80) + 32) & ~*(a1 + 80)) + *(a1 + 72) * v1;
}

void OUTLINED_FUNCTION_19_2()
{

  JUMPOUT(0x26D5FEA80);
}

uint64_t OUTLINED_FUNCTION_23_4()
{

  return sub_2676CBDFC();
}

uint64_t OUTLINED_FUNCTION_27_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28_1()
{
  v2 = v0[39];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[32];
  v6 = v0[29];
  v7 = v0[26];
  v8 = v0[23];
  v9 = v0[20];
  v10 = v0[17];
  v11 = v0[14];
}

uint64_t OUTLINED_FUNCTION_34_0()
{
  v2 = v0[39];
  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[32];
  v6 = v0[29];
  v7 = v0[26];
  v8 = v0[23];
  v9 = v0[20];
  v10 = v0[17];
  v11 = v0[14];
}

BOOL OUTLINED_FUNCTION_35_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_36_0()
{

  return swift_slowAlloc();
}

size_t OUTLINED_FUNCTION_41(size_t a1)
{

  return sub_26760735C(a1, v1, 1, v2);
}

void OUTLINED_FUNCTION_46(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

size_t OUTLINED_FUNCTION_53(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_267607A34(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_57()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_58()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_65(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_66()
{

  return sub_2676C89CC();
}

uint64_t sub_26760A344(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v3 = sub_2676C8C8C();
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_7();
  v11 = (v9 - v10);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v52 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v52 - v16;
  v18 = sub_2676C8BFC();
  v19 = OUTLINED_FUNCTION_3(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_2();
  v26 = v25 - v24;
  v27 = *(a2 + 16);
  v28 = MEMORY[0x277D84F90];
  if (v27)
  {
    v66 = MEMORY[0x277D84F90];
    v57 = v27;
    sub_2676C2950();
    v28 = v66;
    v30 = *(v21 + 16);
    v29 = v21 + 16;
    v31 = *(v29 + 64);
    OUTLINED_FUNCTION_2_12();
    v55 = v33;
    v56 = v34;
    v54 = a2 + v33;
    v65 = v6 + 16;
    v35 = (v6 + 8);
    v36 = *(v29 + 56);
    v63 = v6;
    v60 = v26;
    v58 = v29;
    v59 = v18;
    v52 = v36;
    v53 = (v29 + 16);
    do
    {
      v61 = v28;
      v62 = v32;
      v56(v26, v54 + v36 * v32, v18);
      v37 = sub_2676C8ACC();
      v38 = *(v37 + 16);
      if (v38)
      {
        OUTLINED_FUNCTION_2_14(v37);
        do
        {
          OUTLINED_FUNCTION_4_8();
          v6();
          sub_2676C8C1C();
          if (v39)
          {
          }

          else
          {
            sub_26760B734();
            sub_2676C8C2C();
          }

          (*v35)(v17, v3);
          v26 += v18;
          --v38;
        }

        while (v38);

        v6 = v63;
        v26 = v60;
      }

      else
      {
      }

      v40 = sub_2676C8A9C();
      v41 = *(v40 + 16);
      if (v41)
      {
        OUTLINED_FUNCTION_2_14(v40);
        do
        {
          OUTLINED_FUNCTION_4_8();
          v6();
          sub_2676C8C1C();
          if (v42)
          {
          }

          else
          {
            sub_26760B734();
            sub_2676C8C2C();
          }

          (*v35)(v15, v3);
          v26 += v18;
          --v41;
        }

        while (v41);

        v6 = v63;
        v26 = v60;
      }

      else
      {
      }

      v43 = sub_2676C8ADC();
      v44 = *(v43 + 16);
      if (v44)
      {
        OUTLINED_FUNCTION_2_14(v43);
        do
        {
          OUTLINED_FUNCTION_4_8();
          v6();
          sub_2676C8C1C();
          if (v45)
          {
          }

          else
          {
            sub_26760B734();
            sub_2676C8C2C();
          }

          (*v35)(v11, v3);
          v26 += v18;
          --v44;
        }

        while (v44);

        v26 = v60;
      }

      else
      {
      }

      v28 = v61;
      v46 = v62;
      v66 = v61;
      v47 = *(v61 + 16);
      if (v47 >= *(v61 + 24) >> 1)
      {
        sub_2676C2950();
        v46 = v62;
        v28 = v66;
      }

      *(v28 + 16) = v47 + 1;
      v48 = v52;
      v49 = v28 + v55 + v47 * v52;
      v18 = v59;
      v50 = v46 + 1;
      (*v53)(v49, v26, v59);
      v36 = v48;
      v32 = v50;
      v6 = v63;
    }

    while (v50 != v57);
  }

  return v28;
}

uint64_t sub_26760A76C(uint64_t a1, uint64_t a2)
{
  v25 = sub_2676CAB2C();
  v2 = OUTLINED_FUNCTION_3(v25);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_2();
  v9 = (v8 - v7);
  v10 = sub_2676CAABC();
  v11 = OUTLINED_FUNCTION_3(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_2();
  v18 = v17 - v16;
  sub_2676CAEBC();
  sub_2676C8C1C();
  if (v19)
  {
    sub_2676CAEAC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC580, &qword_2676CF270);
  v20 = *(sub_2676CAB1C() - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  *(swift_allocObject() + 16) = xmmword_2676CDE20;
  (*(v13 + 104))(v18, *MEMORY[0x277D56008], v10);
  sub_2676C8C4C();
  OUTLINED_FUNCTION_7_9();
  sub_2676CAE6C();
  sub_2676C8C6C();
  sub_2676CAE0C();
  *v9 = a1;
  v9[1] = a2;
  (*(v4 + 104))(v9, *MEMORY[0x277D56060], v25);

  return sub_2676CAE3C();
}

uint64_t sub_26760A9D0(uint64_t a1)
{
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC588, &qword_2676CF300);
  v2 = *(*(v181 - 8) + 64);
  MEMORY[0x28223BE20](v181);
  OUTLINED_FUNCTION_1_7();
  v180 = v3 - v4;
  v6 = MEMORY[0x28223BE20](v5);
  v179 = &v159 - v7;
  MEMORY[0x28223BE20](v6);
  v178 = &v159 - v8;
  OUTLINED_FUNCTION_7_3();
  v170 = sub_2676CAB2C();
  v9 = OUTLINED_FUNCTION_3(v170);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_2();
  v169 = (v15 - v14);
  OUTLINED_FUNCTION_7_3();
  v16 = sub_2676CAECC();
  v17 = OUTLINED_FUNCTION_3(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_7();
  v177 = (v22 - v23);
  MEMORY[0x28223BE20](v24);
  v26 = &v159 - v25;
  v176 = sub_2676CAABC();
  v27 = OUTLINED_FUNCTION_3(v176);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_2();
  v175 = v33 - v32;
  OUTLINED_FUNCTION_7_3();
  v160 = sub_2676CAB1C();
  v34 = OUTLINED_FUNCTION_3(v160);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3_2();
  v161 = v40 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC590, &qword_2676CF308);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v188 = &v159 - v43;
  OUTLINED_FUNCTION_7_3();
  v44 = sub_2676C8C8C();
  v45 = OUTLINED_FUNCTION_3(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_3_2();
  v51 = v50 - v49;
  v192 = MEMORY[0x277D84F98];
  v52 = *(a1 + 16);
  v189 = v16;
  v187 = v19;
  if (v52)
  {
    v186 = *(v48 + 16);
    v53 = *(v48 + 80);
    OUTLINED_FUNCTION_2_12();
    v55 = a1 + v54;
    v183 = *(v56 + 56);
    v162 = v19 + 16;
    v182 = v56 - 8;
    LODWORD(v174) = *MEMORY[0x277D56008];
    v173 = v29 + 104;
    v159 = v36 + 32;
    v168 = 0x80000002676D6080;
    v167 = *MEMORY[0x277D56060];
    v166 = (v11 + 104);
    v164 = v19 + 32;
    v163 = v19 + 40;
    v165 = xmmword_2676CDE20;
    v172 = v26;
    v171 = v36;
    v184 = v56;
    v185 = v44;
    while (1)
    {
      v186(v51, v55, v44);
      v57 = sub_2676C8C1C();
      if (!v58)
      {
        v57 = sub_2676C8C4C();
      }

      v59 = v192;
      if (!*(v192 + 16))
      {
        break;
      }

      v60 = sub_26760BE20(v57, v58);
      v62 = v61;

      if ((v62 & 1) == 0)
      {
        goto LABEL_17;
      }

      v63 = v188;
      v64 = *(v59 + 56) + *(v187 + 72) * v60;
      v65 = v189;
      (*(v187 + 16))(v188, v64, v189);
      __swift_storeEnumTagSinglePayload(v63, 0, 1, v65);
      sub_26760BE98(v63);
      v66 = sub_2676C8C1C();
      if (!v67)
      {
        v66 = sub_2676C8C4C();
      }

      v68 = sub_26760B674(&v191, v66, v67);
      v44 = v69;
      if (!__swift_getEnumTagSinglePayload(v69, 1, v189))
      {
        OUTLINED_FUNCTION_13_6();
        v71 = *(v70 - 256);
        OUTLINED_FUNCTION_12_4();
        v73(v72);
        sub_2676C8C4C();
        OUTLINED_FUNCTION_7_9();
        v74 = sub_2676CAE4C();
        v76 = v75;
        v44 = *v75;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v76 = v44;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v117 = *(v44 + 16);
          sub_267606CBC();
          v44 = v118;
          *v76 = v118;
        }

        v78 = *(v44 + 16);
        if (v78 >= *(v44 + 24) >> 1)
        {
          sub_267606CBC();
          v44 = v119;
          *v76 = v119;
        }

        *(v44 + 16) = v78 + 1;
        v36 = v171;
        v79 = *(v171 + 80);
        OUTLINED_FUNCTION_2_12();
        (*(v36 + 32))(v44 + v80 + *(v36 + 72) * v78, v161, v160);
        v74(v190, 0);
      }

      (v68)(&v191, 0);

      v81 = OUTLINED_FUNCTION_6_7();
      v82(v81);
LABEL_31:
      v55 += v183;
      if (!--v52)
      {
        v120 = v192;
        v16 = v189;
        goto LABEL_34;
      }
    }

LABEL_17:
    v83 = v188;
    __swift_storeEnumTagSinglePayload(v188, 1, 1, v189);
    sub_26760BE98(v83);
    v84 = sub_2676C8C1C();
    if (!v85)
    {
      v84 = sub_2676C8C4C();
    }

    v86 = v84;
    v87 = v85;
    sub_2676CAEBC();
    sub_2676C8C1C();
    if (v88)
    {
      sub_2676CAEAC();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC580, &qword_2676CF270);
    v89 = *(v36 + 72);
    v90 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    *(swift_allocObject() + 16) = v165;
    OUTLINED_FUNCTION_13_6();
    v92 = *(v91 - 256);
    OUTLINED_FUNCTION_12_4();
    v94(v93);
    sub_2676C8C4C();
    OUTLINED_FUNCTION_7_9();
    sub_2676CAE6C();
    sub_2676C8C6C();
    sub_2676CAE0C();
    v95 = v169;
    *v169 = 0xD000000000000014;
    v95[1] = v168;
    (*v166)(v95, v167, v170);
    sub_2676CAE3C();
    v96 = v192;
    swift_isUniquelyReferenced_nonNull_native();
    v191 = v96;
    v192 = 0x8000000000000000;
    v97 = sub_26760BE20(v86, v87);
    if (__OFADD__(*(v96 + 16), (v98 & 1) == 0))
    {
      goto LABEL_62;
    }

    v44 = v97;
    v99 = v98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC598, &unk_2676CF310);
    if (sub_2676CC4AC())
    {
      v100 = sub_26760BE20(v86, v87);
      v36 = v171;
      if ((v99 & 1) != (v101 & 1))
      {
        goto LABEL_64;
      }

      v44 = v100;
    }

    else
    {
      v36 = v171;
    }

    v102 = v191;
    if (v99)
    {
      OUTLINED_FUNCTION_9_7();
      v104 = *(v103 + 40);
      OUTLINED_FUNCTION_11_7();
      v106(v105);
    }

    else
    {
      *(v191 + 8 * (v44 >> 6) + 64) |= 1 << v44;
      v107 = (*(v102 + 48) + 16 * v44);
      *v107 = v86;
      v107[1] = v87;
      OUTLINED_FUNCTION_9_7();
      v109 = *(v108 + 32);
      OUTLINED_FUNCTION_11_7();
      v111(v110);
      v112 = *(v102 + 16);
      v113 = __OFADD__(v112, 1);
      v114 = v112 + 1;
      if (v113)
      {
        goto LABEL_63;
      }

      *(v102 + 16) = v114;
    }

    v115 = OUTLINED_FUNCTION_6_7();
    v116(v115);
    v192 = v102;

    goto LABEL_31;
  }

  v120 = MEMORY[0x277D84F98];
LABEL_34:
  v121 = *(v120 + 16);
  v188 = MEMORY[0x277D84F90];
  v122 = v187;
  if (v121)
  {
    v191 = MEMORY[0x277D84F90];

    sub_2676C2A30(0, v121, 0);
    v188 = v191;
    v125 = sub_26760C5E4(v120);
    v126 = 0;
    v127 = v120 + 64;
    v182 = v122 + 16;
    v183 = v122 + 32;
    v173 = v120 + 72;
    v174 = v121;
    v175 = v120 + 64;
    v176 = v120;
    if ((v125 & 0x8000000000000000) == 0)
    {
      while (v125 < 1 << *(v120 + 32))
      {
        v128 = v125 >> 6;
        if ((*(v127 + 8 * (v125 >> 6)) & (1 << v125)) == 0)
        {
          goto LABEL_57;
        }

        if (*(v120 + 36) != v123)
        {
          goto LABEL_58;
        }

        LODWORD(v184) = v124;
        v185 = v126;
        v186 = v123;
        v129 = v181;
        v130 = *(v181 + 48);
        v131 = *(v120 + 56);
        v132 = (*(v120 + 48) + 16 * v125);
        v134 = *v132;
        v133 = v132[1];
        v187 = *(v122 + 72);
        v135 = *(v122 + 16);
        v136 = v122;
        v137 = v178;
        v135(&v178[v130], v131 + v187 * v125, v16);
        v138 = v179;
        *v179 = v134;
        *(v138 + 1) = v133;
        v139 = *(v136 + 32);
        v139(&v138[*(v129 + 48)], &v137[v130], v189);
        v140 = v138;
        v141 = v180;
        sub_26760C624(v140, v180);
        v142 = *(v141 + 8);

        v143 = v141 + *(v129 + 48);
        v16 = v189;
        v144 = v177;
        v139(v177, v143, v189);
        v191 = v188;
        v146 = *(v188 + 16);
        v145 = *(v188 + 24);
        if (v146 >= v145 >> 1)
        {
          sub_2676C2A30(v145 > 1, v146 + 1, 1);
          v188 = v191;
        }

        *(v188 + 16) = v146 + 1;
        v147 = *(v136 + 80);
        OUTLINED_FUNCTION_2_12();
        v139((v149 + v148 + v146 * v187), v144, v16);
        v120 = v176;
        v150 = 1 << *(v176 + 32);
        if (v125 >= v150)
        {
          goto LABEL_59;
        }

        v127 = v175;
        v151 = *(v175 + 8 * v128);
        if ((v151 & (1 << v125)) == 0)
        {
          goto LABEL_60;
        }

        if (*(v176 + 36) != v186)
        {
          goto LABEL_61;
        }

        v122 = v136;
        v152 = v151 & (-2 << (v125 & 0x3F));
        if (v152)
        {
          v150 = __clz(__rbit64(v152)) | v125 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v153 = v128 << 6;
          v154 = v128 + 1;
          v155 = (v173 + 8 * v128);
          while (v154 < (v150 + 63) >> 6)
          {
            v157 = *v155++;
            v156 = v157;
            v153 += 64;
            ++v154;
            if (v157)
            {
              sub_26760C694(v125, v186, v184 & 1);
              v150 = __clz(__rbit64(v156)) + v153;
              goto LABEL_51;
            }
          }

          sub_26760C694(v125, v186, v184 & 1);
        }

LABEL_51:
        v126 = v185 + 1;
        if (v185 + 1 == v174)
        {

          goto LABEL_55;
        }

        v124 = 0;
        v123 = *(v120 + 36);
        v125 = v150;
        if (v150 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    result = sub_2676CC5EC();
    __break(1u);
  }

  else
  {
LABEL_55:

    return v188;
  }

  return result;
}

void (*sub_26760B674(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_26760BFB4(v6, a2, a3);
  return sub_26760B6E8;
}

void sub_26760B6E8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_26760B734()
{
  v16[1] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  sub_2676C8C4C();
  v2 = sub_2676CBF3C();

  v3 = [v1 predicateForContactsMatchingEmailAddress_];

  sub_26760C798();
  sub_26760B920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A8, &unk_2676CF320);
  v4 = sub_2676CC0EC();

  v16[0] = 0;
  v5 = [v0 unifiedContactsMatchingPredicate:v3 keysToFetch:v4 error:v16];

  v6 = v16[0];
  if (!v5)
  {
    v12 = v16[0];
    v13 = sub_2676C8FCC();

    swift_willThrow();
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v7 = sub_2676CC0FC();
  v8 = v6;

  if (!sub_267630B8C(v7))
  {

    goto LABEL_8;
  }

  sub_267692C1C(0, (v7 & 0xC000000000000001) == 0, v7);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x26D5FE0E0](0, v7);
  }

  else
  {
    v9 = *(v7 + 32);
  }

  v10 = v9;

  v11 = sub_26760B9DC();

LABEL_9:
  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_26760B920()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2676CF2F0;
  v1 = *MEMORY[0x277CBD068];
  v2 = *MEMORY[0x277CBD000];
  *(v0 + 32) = *MEMORY[0x277CBD068];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CBD058];
  v4 = *MEMORY[0x277CBCFF8];
  *(v0 + 48) = *MEMORY[0x277CBD058];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x277CBD070];
  *(v0 + 64) = *MEMORY[0x277CBD070];
  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  return v0;
}

uint64_t sub_26760B9DC()
{
  v1 = v0;
  v2 = sub_2676C8FBC();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_2();
  v10 = v9 - v8;
  sub_2676C8FAC();
  v11 = [v1 namePrefix];
  sub_2676CBF6C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_8_10();
  sub_2676C8F3C();
  v12 = [v1 givenName];
  sub_2676CBF6C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_8_10();
  sub_2676C8EDC();
  v13 = [v1 middleName];
  sub_2676CBF6C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_8_10();
  sub_2676C8F1C();
  v14 = [v1 familyName];
  sub_2676CBF6C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_8_10();
  sub_2676C8EFC();
  v15 = [v1 nameSuffix];
  sub_2676CBF6C();

  sub_2676C8F5C();
  v16 = objc_opt_self();
  v17 = sub_2676C8F6C();
  v18 = [v16 localizedStringFromPersonNameComponents:v17 style:2 options:0];

  v19 = sub_2676CBF6C();
  (*(v5 + 8))(v10, v2);
  return v19;
}

uint64_t sub_26760BBE4()
{
  v1 = v0;
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  sub_2676C8C4C();
  v3 = sub_2676CBF3C();

  v4 = [v2 predicateForContactsMatchingEmailAddress_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2676CD5C0;
  v6 = *MEMORY[0x277CBD018];
  *(v5 + 32) = *MEMORY[0x277CBD018];
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A8, &unk_2676CF320);
  v8 = sub_2676CC0EC();

  v21[0] = 0;
  v9 = [v1 unifiedContactsMatchingPredicate:v4 keysToFetch:v8 error:v21];

  v10 = v21[0];
  if (!v9)
  {
    v17 = v21[0];
    v18 = sub_2676C8FCC();

    swift_willThrow();
LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  sub_26760C798();
  v11 = sub_2676CC0FC();
  v12 = v10;

  if (!sub_267630B8C(v11))
  {

    goto LABEL_8;
  }

  sub_267692C1C(0, (v11 & 0xC000000000000001) == 0, v11);
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x26D5FE0E0](0, v11);
  }

  else
  {
    v13 = *(v11 + 32);
  }

  v14 = v13;

  v15 = [v14 identifier];

  v16 = sub_2676CBF6C();
LABEL_9:
  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

unint64_t sub_26760BE20(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2676CC64C();
  sub_2676CBFFC();
  v6 = sub_2676CC67C();

  return sub_26760BF00(a1, a2, v6);
}

uint64_t sub_26760BE98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC590, &qword_2676CF308);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26760BF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2676CC59C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void (*sub_26760BFB4(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v7;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_26760C5B0(v7);
  v7[9] = sub_26760C15C(v7 + 4, a2, a3);
  return sub_26760C04C;
}

void sub_26760C04C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t sub_26760C0AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_2676CAECC();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void (*sub_26760C15C(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v9 = sub_2676CAECC();
  v8[3] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v8[4] = v10;
  v12 = *(v10 + 64);
  v8[5] = __swift_coroFrameAllocStub(v12);
  v8[6] = __swift_coroFrameAllocStub(v12);
  v8[7] = __swift_coroFrameAllocStub(v12);
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC590, &qword_2676CF308) - 8) + 64);
  v8[8] = __swift_coroFrameAllocStub(v13);
  v8[9] = __swift_coroFrameAllocStub(v13);
  v14 = __swift_coroFrameAllocStub(v13);
  v8[10] = v14;
  v15 = *v4;
  v16 = sub_26760BE20(a2, a3);
  *(v8 + 96) = v17 & 1;
  if (__OFADD__(*(v15 + 16), (v17 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v18 = v16;
  v19 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC598, &unk_2676CF310);
  if (sub_2676CC4AC())
  {
    v20 = *v4;
    v21 = sub_26760BE20(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v18 = v21;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_2676CC5EC();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[11] = v18;
  if (v19)
  {
    (*(v11 + 32))(v14, *(*v4 + 56) + *(v11 + 72) * v18, v9);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v23, 1, v9);
  return sub_26760C3C0;
}

void sub_26760C3C0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = v2[3];
  if (a2)
  {
    v5 = v2[8];
    sub_26760C6D4(v3, v5);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v4);
    v7 = *(v2 + 96);
    v8 = v2[8];
    if (EnumTagSinglePayload != 1)
    {
      v9 = v2[2];
      v10 = *(v2[4] + 32);
      v10(v2[6], v8, v2[3]);
      v11 = *v9;
      v12 = v2[11];
      v13 = v2[6];
      if ((v7 & 1) == 0)
      {
LABEL_4:
        v14 = v2[5];
        v16 = *v2;
        v15 = v2[1];
        v10(v14, v13, v2[3]);
        sub_26760C0AC(v12, v16, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = v2[9];
    sub_26760C6D4(v3, v17);
    v18 = __swift_getEnumTagSinglePayload(v17, 1, v4);
    v7 = *(v2 + 96);
    v8 = v2[9];
    if (v18 != 1)
    {
      v20 = v2[2];
      v10 = *(v2[4] + 32);
      v10(v2[7], v8, v2[3]);
      v11 = *v20;
      v12 = v2[11];
      v13 = v2[7];
      if ((v7 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v10(v11[7] + *(v2[4] + 72) * v12, v13, v2[3]);
      goto LABEL_10;
    }
  }

  sub_26760BE98(v8);
  if (v7)
  {
    v19 = v2[3];
    sub_26760C744(*(*v2[2] + 48) + 16 * v2[11]);
    sub_2676CC4BC();
  }

LABEL_10:
  v21 = v2[9];
  v22 = v2[10];
  v24 = v2[7];
  v23 = v2[8];
  v26 = v2[5];
  v25 = v2[6];
  sub_26760BE98(v22);
  free(v22);
  free(v21);
  free(v23);
  free(v24);
  free(v25);
  free(v26);

  free(v2);
}

uint64_t (*sub_26760C5B0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_26760C5D8;
}

uint64_t sub_26760C5E4(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_2676CC3AC();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_26760C624(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC588, &qword_2676CF300);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26760C694(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_26760C6D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC590, &qword_2676CF308);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26760C798()
{
  result = qword_2801CC5B0;
  if (!qword_2801CC5B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2801CC5B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_14(uint64_t result)
{
  v3 = *(v1 + 80);
  *(v2 - 144) = result;
  v4 = *(v1 + 72);
  v5 = *(v1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_7()
{
  v2 = **(v1 - 224);
  result = v0;
  v4 = *(v1 - 200);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_9()
{

  return sub_2676CAACC();
}

void OUTLINED_FUNCTION_14_6()
{
}

uint64_t sub_26760C8B4()
{
  v0 = sub_2676C8C4C();
  v2 = v1;
  if (v0 == sub_2676C8C4C() && v2 == v3)
  {
  }

  else
  {
    v5 = sub_2676CC59C();

    v6 = 0;
    if ((v5 & 1) == 0)
    {
      return v6 & 1;
    }
  }

  v7 = sub_2676C8C1C();
  v9 = v8;
  v10 = sub_2676C8C1C();
  if (v9)
  {
    if (v11)
    {
      if (v7 == v10 && v9 == v11)
      {

        v6 = 1;
      }

      else
      {
        v6 = sub_2676CC59C();
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    if (!v11)
    {
      v6 = 1;
      return v6 & 1;
    }

    v6 = 0;
  }

  return v6 & 1;
}

uint64_t type metadata accessor for MailCommonCATsSimple()
{
  result = qword_2801CC5C0;
  if (!qword_2801CC5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26760CA74(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_12();
}

uint64_t sub_26760CA88()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_2676CDE20;
  *(v2 + 32) = 0x656369766564;
  *(v2 + 40) = 0xE600000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = sub_2676CB45C();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  OUTLINED_FUNCTION_8_11(MEMORY[0x277D55C70]);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_10_8(v4);

  return v6(0xD00000000000001ALL);
}

uint64_t sub_26760CBAC()
{
  OUTLINED_FUNCTION_12_1();
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26760CCEC, 0, 0);
  }

  else
  {
    v6 = *(v2 + 32);

    v7 = OUTLINED_FUNCTION_9_8();

    return v8(v7);
  }
}

uint64_t sub_26760CCEC()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_26760CD50()
{
  OUTLINED_FUNCTION_12_1();
  v0 = OUTLINED_FUNCTION_0_12(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_42(v0);
  *v1 = v2;
  v1[1] = sub_26760CDF4;
  OUTLINED_FUNCTION_4_9();
  v3 = OUTLINED_FUNCTION_5_10(23);

  return v4(v3);
}

uint64_t sub_26760CDF4(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v1)
  {
    v7 = a1;
  }

  return v8(v7);
}

uint64_t sub_26760CEEC()
{
  OUTLINED_FUNCTION_12_1();
  v0 = OUTLINED_FUNCTION_0_12(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_42(v0);
  *v1 = v2;
  v1[1] = sub_26760D830;
  OUTLINED_FUNCTION_4_9();
  v3 = OUTLINED_FUNCTION_5_10(28);

  return v4(v3);
}

uint64_t sub_26760CF90(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_12();
}

uint64_t sub_26760CFA4()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_2676CDE20;
  *(v2 + 32) = 0x746361746E6F63;
  *(v2 + 40) = 0xE700000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = sub_2676CB36C();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  OUTLINED_FUNCTION_8_11(MEMORY[0x277D55C70]);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_10_8(v4);

  return v6(0xD00000000000002BLL);
}

uint64_t sub_26760D0CC()
{
  OUTLINED_FUNCTION_12_1();
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26760D82C, 0, 0);
  }

  else
  {
    v6 = *(v2 + 32);

    v7 = OUTLINED_FUNCTION_9_8();

    return v8(v7);
  }
}

uint64_t sub_26760D20C()
{
  OUTLINED_FUNCTION_12_1();
  v0 = OUTLINED_FUNCTION_0_12(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_42(v0);
  *v1 = v2;
  v1[1] = sub_26760D830;
  OUTLINED_FUNCTION_4_9();
  v3 = OUTLINED_FUNCTION_5_10(28);

  return v4(v3);
}

uint64_t sub_26760D2B0()
{
  OUTLINED_FUNCTION_12_1();
  v0 = OUTLINED_FUNCTION_0_12(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_42(v0);
  *v1 = v2;
  v1[1] = sub_26760D830;
  OUTLINED_FUNCTION_4_9();
  v3 = OUTLINED_FUNCTION_5_10(39);

  return v4(v3);
}

uint64_t sub_26760D354()
{
  OUTLINED_FUNCTION_12_1();
  v0 = OUTLINED_FUNCTION_0_12(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_42(v0);
  *v1 = v2;
  v1[1] = sub_26760D830;
  OUTLINED_FUNCTION_4_9();
  v3 = OUTLINED_FUNCTION_5_10(30);

  return v4(v3);
}

uint64_t sub_26760D3F8()
{
  OUTLINED_FUNCTION_12_1();
  v0 = OUTLINED_FUNCTION_0_12(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_42(v0);
  *v1 = v2;
  v1[1] = sub_26760D830;
  OUTLINED_FUNCTION_4_9();
  v3 = OUTLINED_FUNCTION_5_10(33);

  return v4(v3);
}

uint64_t sub_26760D49C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_26760D4F0(a1, a2);
}

uint64_t sub_26760D4F0(uint64_t a1, uint64_t a2)
{
  v5 = sub_2676CB48C();
  v6 = OUTLINED_FUNCTION_8_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CDAC0, &unk_2676CF3A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_26760D754(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_2676CB40C();
  (*(v8 + 8))(a2, v2);
  sub_26760D7C4(a1);
  return v16;
}

uint64_t sub_26760D64C(uint64_t a1, uint64_t a2)
{
  v5 = sub_2676CB48C();
  v6 = OUTLINED_FUNCTION_8_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_2676CB41C();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_26760D754(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CDAC0, &unk_2676CF3A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26760D7C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CDAC0, &unk_2676CF3A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_12@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_8_11@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
}

uint64_t OUTLINED_FUNCTION_10_8(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  return result;
}

void sub_26760D8C8()
{
  OUTLINED_FUNCTION_21_1();
  v38 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC770, &unk_2676CF800);
  OUTLINED_FUNCTION_4_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_7_3();
  v5 = sub_2676C9C4C();
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_7_3();
  v9 = sub_2676C94AC();
  v10 = *(v9 - 8);
  v11 = v10;
  v12 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_2();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_82();
  v16 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC540, &qword_2676D1400);
  v17 = *(v10 + 72);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2676CF3B0;
  sub_2676C946C();
  sub_2676C949C();
  sub_2676C945C();
  *(v16 + 16) = v19;
  v20 = v16 + 16;
  type metadata accessor for PreFlightCheckFlow();
  sub_267614AF4(&qword_2801CC778, type metadata accessor for PreFlightCheckFlow);
  sub_2676C94BC();
  sub_267614794();
  v21 = *(*(v16 + 16) + 16);
  sub_267645DE4(v21);
  v22 = *(v16 + 16);
  *(v22 + 16) = v21 + 1;
  v23 = v22 + v18 + v21 * v17;
  v24 = *(v11 + 32);
  v24(v23, v15, v9);
  *(v16 + 16) = v22;
  v40[2] = &type metadata for Features;
  v40[3] = sub_267614A64();
  LOBYTE(v39) = 4;
  LOBYTE(v22) = sub_2676CA04C();
  __swift_destroy_boxed_opaque_existential_1(&v39);
  if (v22)
  {
    v25 = dispatch_semaphore_create(0);
    sub_2676CC1FC();
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
    OUTLINED_FUNCTION_90();
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v38;
    v30[5] = v16;
    v30[6] = v25;

    v31 = v25;
    sub_26760E138();

    sub_2676CC2AC();
  }

  else
  {
    sub_2675F95E4(v38 + 32, &v39, &qword_2801CC690, &unk_2676CF580);
    v32 = v39;
    sub_2675EB7EC(v40, &qword_2801CC158, &qword_2676CDDA0);
    if (v32 == 1)
    {
      sub_2676C9C2C();
      sub_2676C947C();
      v33 = OUTLINED_FUNCTION_37_0();
      v34(v33);
    }

    else
    {
      sub_2676C948C();
    }

    sub_267614794();
    v35 = *(*v20 + 16);
    sub_267645DE4(v35);
    v36 = *v20;
    *(v36 + 16) = v35 + 1;
    v24(v36 + v18 + v35 * v17, v15, v9);
    *v20 = v36;
  }

  swift_beginAccess();
  v37 = *(v16 + 16);

  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_26760DD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = sub_2676C94AC();
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v9 = *(v8 + 64) + 15;
  v6[15] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[16] = v10;
  *v10 = v6;
  v10[1] = sub_26760DE14;

  return sub_267614100();
}

uint64_t sub_26760DE14()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_8_6();
  *v2 = v1;
  v4 = *(v3 + 128);
  *v2 = *v0;
  *(v1 + 136) = v5;

  return MEMORY[0x2822009F8](sub_26760DF08, 0, 0);
}

uint64_t sub_26760DF08()
{
  if ((*(v0 + 136) & 1) != 0 || (sub_2675F95E4(*(v0 + 80) + 32, v0 + 16, &qword_2801CC690, &unk_2676CF580), v1 = *(v0 + 17), sub_2675EB7EC(v0 + 24, &qword_2801CC158, &qword_2676CDDA0), v1 == 1))
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v2 = sub_2676CBE4C();
    v3 = OUTLINED_FUNCTION_67(v2, qword_2801CDC90);
    v4 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_7(v4))
    {
      v5 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v5);
      OUTLINED_FUNCTION_39_0(&dword_2675D4000, v6, v4, "#GuardFlow Mail is Class C data but notification previews are restricted or user is trying to send/reply - need authentication to read emails or present the compose sheet");
      OUTLINED_FUNCTION_4_6();
    }

    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    v9 = *(v0 + 104);
    v10 = *(v0 + 88);

    sub_2676C948C();
    OUTLINED_FUNCTION_70();
    sub_267614794();
    v11 = *(*(v10 + 16) + 16);
    sub_267645DE4(v11);
    v12 = *(v10 + 16);
    *(v12 + 16) = v11 + 1;
    (*(v8 + 32))(v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v11, v7, v9);
    *(v10 + 16) = v12;
    swift_endAccess();
  }

  else
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v13 = sub_2676CBE4C();
    v14 = OUTLINED_FUNCTION_67(v13, qword_2801CDC90);
    v15 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_7(v15))
    {
      v16 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v16);
      OUTLINED_FUNCTION_39_0(&dword_2675D4000, v17, v15, "#GuardFlow Mail is Class C data, not sending nor replying, and notification previews are not restricted - no need to authenticate");
      OUTLINED_FUNCTION_4_6();
    }
  }

  v18 = *(v0 + 120);
  v19 = *(v0 + 96);
  sub_2676CC2BC();

  v20 = *(v0 + 8);

  return v20();
}

void sub_26760E138()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC770, &unk_2676CF800);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  sub_2675F95E4(v5, v26 - v12, &qword_2801CC770, &unk_2676CF800);
  v14 = sub_2676CC1FC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);

  if (EnumTagSinglePayload == 1)
  {
    sub_2675EB7EC(v13, &qword_2801CC770, &unk_2676CF800);
  }

  else
  {
    sub_2676CC1EC();
    OUTLINED_FUNCTION_14_2(v14);
    (*(v16 + 8))(v13, v14);
  }

  v18 = *(v1 + 16);
  v17 = *(v1 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_2676CC18C();
    v21 = v20;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v22 = sub_2676CBFCC() + 32;
      OUTLINED_FUNCTION_79();
      v23 = swift_allocObject();
      *(v23 + 16) = v3;
      *(v23 + 24) = v1;

      if (v21 | v19)
      {
        v27[0] = 0;
        v27[1] = 0;
        v24 = v27;
        v27[2] = v19;
        v27[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v26[1] = 7;
      v26[2] = v24;
      v26[3] = v22;
      swift_task_create();

      sub_2675EB7EC(v5, &qword_2801CC770, &unk_2676CF800);

      goto LABEL_14;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_2675EB7EC(v5, &qword_2801CC770, &unk_2676CF800);
  OUTLINED_FUNCTION_79();
  v25 = swift_allocObject();
  *(v25 + 16) = v3;
  *(v25 + 24) = v1;
  if (v21 | v19)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v19;
    v27[7] = v21;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_20_1();
}

void sub_26760E3F8()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v62 = v2;
  v3 = sub_2676C9E3C();
  v4 = OUTLINED_FUNCTION_3(v3);
  v61 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_2();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC660, &qword_2676CF578);
  OUTLINED_FUNCTION_3(v11);
  v60 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC750, &unk_2676D1310);
  OUTLINED_FUNCTION_3(v18);
  v59 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v22);
  v24 = &v58 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC758, &unk_2676CF7F0);
  OUTLINED_FUNCTION_3(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v28);
  v31 = &v58 - v30;
  v32 = *(v1 + 16);
  if (v32)
  {
    if (v32 == 1)
    {
      sub_26760ECF0();
      OUTLINED_FUNCTION_89();
      sub_2676C961C();
      sub_2676C961C();
      sub_2676C961C();
      __swift_destroy_boxed_opaque_existential_1(v63);
      OUTLINED_FUNCTION_87();
    }

    else if (v32 == 2)
    {
      v64[0] = v1;
      type metadata accessor for MailDelegateFlow();
      OUTLINED_FUNCTION_29_2();
      sub_267614AF4(v33, v34);
      sub_2676C944C();
      v65 = v11;
      v66 = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
      v36 = v60;
      (*(v60 + 16))(boxed_opaque_existential_1, v17, v11);
      sub_2676C961C();
      __swift_destroy_boxed_opaque_existential_1(v64);
      OUTLINED_FUNCTION_89();
      sub_2676C961C();
      sub_2676C961C();
      OUTLINED_FUNCTION_87();
      (*(v36 + 8))(v17, v11);
    }

    else
    {
      v46 = v3;
      v47 = *(v32 + 16);
      v48 = *(v32 + 24);
      v64[0] = v1;
      sub_2675FD730();
      v49 = swift_allocError();
      *v50 = v47;
      v50[1] = v48;
      sub_267614AB8(v32);
      v51 = OUTLINED_FUNCTION_38_0();
      sub_267614AC8(v51, v52);
      type metadata accessor for MailDelegateFlow();
      OUTLINED_FUNCTION_29_2();
      sub_267614AF4(v53, v54);
      OUTLINED_FUNCTION_65_0();
      sub_2676C93EC();

      v65 = v46;
      v66 = MEMORY[0x277D5C0F0];
      __swift_allocate_boxed_opaque_existential_1(v64);
      v55 = v61;
      v56 = *(v61 + 16);
      OUTLINED_FUNCTION_75();
      v57();
      sub_2676C961C();
      __swift_destroy_boxed_opaque_existential_1(v64);
      OUTLINED_FUNCTION_89();
      sub_2676C961C();
      sub_2676C961C();
      OUTLINED_FUNCTION_87();
      (*(v55 + 8))(v10, v46);
      sub_267614ADC(v32);
    }
  }

  else
  {
    v37 = v29;
    sub_26760D8C8();
    v38 = *(v1 + 24);
    v64[0] = v39;

    sub_2676A1EC8(v40);
    v41 = sub_2676C925C();

    v64[0] = v41;
    v42 = sub_2676C934C();
    v43 = MEMORY[0x277D5B788];
    sub_2676C95AC();

    v64[0] = v42;
    v64[1] = v43;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_2676C938C();

    (*(v59 + 8))(v24, v18);
    v65 = v25;
    v63[10] = v18;
    v63[11] = OpaqueTypeConformance2;
    v66 = swift_getOpaqueTypeConformance2();
    v45 = __swift_allocate_boxed_opaque_existential_1(v64);
    (*(v37 + 16))(v45, v31, v25);
    sub_2676C960C();
    __swift_destroy_boxed_opaque_existential_1(v64);
    OUTLINED_FUNCTION_89();
    sub_2676C961C();
    sub_2676C961C();
    OUTLINED_FUNCTION_87();
    (*(v37 + 8))(v31, v25);
  }

  sub_2676C961C();
  __swift_destroy_boxed_opaque_existential_1(v64);
  OUTLINED_FUNCTION_20_1();
}

unint64_t sub_26760E9CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC768, &unk_2676D1590);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v29 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = *(v5 + 16);
  v13(&v29 - v14, a1, v4);
  if (swift_dynamicCast())
  {
    v15 = *(a2 + 16);
    if (v32)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v17 = sub_2676CBE4C();
    __swift_project_value_buffer(v17, qword_2801CDC90);
    v13(v12, a1, v4);
    v18 = sub_2676CBE2C();
    v19 = sub_2676CC24C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v30 = a2;
      v21 = v20;
      v22 = swift_slowAlloc();
      v31 = v22;
      *v21 = 136315138;
      v13(v9, v12, v4);
      v23 = sub_2676CBFBC();
      v25 = v24;
      (*(v5 + 8))(v12, v4);
      v26 = sub_2676B0B84(v23, v25, &v31);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_2675D4000, v18, v19, "#MailDelegateFlow: Unexpected return value from Guard flows: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x26D5FEA80](v22, -1, -1);
      v27 = v21;
      a2 = v30;
      MEMORY[0x26D5FEA80](v27, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v12, v4);
    }

    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    v15 = *(a2 + 16);
  }

  *(a2 + 16) = v16;
  return sub_267614ADC(v15);
}

void sub_26760ECF0()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v984 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5E0, &qword_2676CF4D0);
  OUTLINED_FUNCTION_4_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_1();
  v915 = v7;
  v916 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5E8, &unk_2676CF4D8);
  OUTLINED_FUNCTION_3(v916);
  v902 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_1();
  v901 = v12;
  v950 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  OUTLINED_FUNCTION_3(v950);
  v939 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9_1();
  v906 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5F0, &qword_2676CF4E8);
  OUTLINED_FUNCTION_4_1(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_1();
  v921 = v22;
  v935 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5F8, &qword_2676CF4F0);
  OUTLINED_FUNCTION_3(v935);
  v913 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9_1();
  v919 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC600, &qword_2676CF4F8);
  v29 = OUTLINED_FUNCTION_4_1(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4();
  v933 = v32;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10_4();
  v932 = v34;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_10_4();
  v931 = v36;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_10_4();
  v930 = v38;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_10_4();
  v929 = v40;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_10_4();
  v928 = v42;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_10_4();
  v927 = v44;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_24_1();
  v959 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC608, &unk_2676CF500);
  v48 = OUTLINED_FUNCTION_4_1(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_4();
  v926 = v51;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_10_4();
  v924 = v53;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_10_4();
  v925 = v55;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_24_1();
  v951 = v57;
  OUTLINED_FUNCTION_7_3();
  v936 = sub_2676CB5AC();
  v58 = OUTLINED_FUNCTION_3(v936);
  v938 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_3_2();
  v905 = v63 - v62;
  v937 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC610, &unk_2676D0C10);
  v64 = OUTLINED_FUNCTION_2_6(v937);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_4();
  v911 = v67;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_24_1();
  v941 = v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  v71 = OUTLINED_FUNCTION_4_1(v70);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_4();
  v903 = v74;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_24_1();
  v908 = v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  v78 = OUTLINED_FUNCTION_4_1(v77);
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_4();
  v895 = v81;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_24_1();
  v900 = v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC618, &qword_2676CF520);
  v85 = OUTLINED_FUNCTION_4_1(v84);
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_4();
  v904 = v88;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_10_4();
  v917 = v90;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_10_4();
  v918 = v92;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_10_4();
  v909 = v94;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_10_4();
  v934 = v96;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_24_1();
  v922 = v98;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC620, &unk_2676D0C30);
  OUTLINED_FUNCTION_4_1(v99);
  v101 = *(v100 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_9_1();
  v940 = v103;
  v957 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
  OUTLINED_FUNCTION_3(v957);
  v943 = v104;
  v106 = *(v105 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_9_1();
  v958 = v108;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v110 = OUTLINED_FUNCTION_4_1(v109);
  v112 = *(v111 + 64);
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_4();
  v907 = v113;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_10_4();
  v923 = v115;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_10_4();
  v910 = v117;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_10_4();
  v920 = v119;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_24_1();
  v945 = v121;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC630, &qword_2676CF540);
  OUTLINED_FUNCTION_4_1(v122);
  v124 = *(v123 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_9_1();
  v952 = v126;
  v966 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC638, &qword_2676CF548);
  OUTLINED_FUNCTION_3(v966);
  v956 = v127;
  v129 = *(v128 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_9_1();
  v962 = v131;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC640, &unk_2676CF550);
  OUTLINED_FUNCTION_4_1(v132);
  v134 = *(v133 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v135);
  v137 = &v892 - v136;
  v979 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC648, &qword_2676CF990);
  v138 = OUTLINED_FUNCTION_3(v979);
  v969 = v139;
  v141 = *(v140 + 64);
  MEMORY[0x28223BE20](v138);
  OUTLINED_FUNCTION_4();
  v974 = v142;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_24_1();
  v970 = v144;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC650, &unk_2676CF560);
  v146 = OUTLINED_FUNCTION_4_1(v145);
  v148 = *(v147 + 64);
  MEMORY[0x28223BE20](v146);
  OUTLINED_FUNCTION_4();
  v963 = v149;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v150);
  OUTLINED_FUNCTION_24_1();
  v960 = v151;
  v973 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  v152 = OUTLINED_FUNCTION_3(v973);
  v972 = v153;
  v155 = *(v154 + 64);
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_4();
  v899 = v156;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v157);
  OUTLINED_FUNCTION_10_4();
  v898 = v158;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_10_4();
  v912 = v160;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v161);
  OUTLINED_FUNCTION_10_4();
  v954 = v162;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v163);
  OUTLINED_FUNCTION_10_4();
  v955 = v164;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v165);
  OUTLINED_FUNCTION_10_4();
  v965 = v166;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v167);
  OUTLINED_FUNCTION_10_4();
  v968 = v168;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v169);
  OUTLINED_FUNCTION_10_4();
  v949 = v170;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v171);
  OUTLINED_FUNCTION_10_4();
  v967 = v172;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v173);
  OUTLINED_FUNCTION_10_4();
  v947 = v174;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v175);
  OUTLINED_FUNCTION_24_1();
  v961 = v176;
  OUTLINED_FUNCTION_7_3();
  v981 = sub_2676CAB9C();
  v177 = OUTLINED_FUNCTION_3(v981);
  v980 = v178;
  v180 = *(v179 + 64);
  MEMORY[0x28223BE20](v177);
  OUTLINED_FUNCTION_3_2();
  v976 = (v182 - v181);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1E8, &qword_2676CF570);
  v184 = OUTLINED_FUNCTION_4_1(v183);
  v186 = *(v185 + 64);
  MEMORY[0x28223BE20](v184);
  OUTLINED_FUNCTION_4();
  v944 = v187;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v188);
  OUTLINED_FUNCTION_24_1();
  v978 = v189;
  v982 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC660, &qword_2676CF578);
  v190 = OUTLINED_FUNCTION_3(v982);
  v975 = v191;
  v193 = *(v192 + 64);
  MEMORY[0x28223BE20](v190);
  OUTLINED_FUNCTION_4();
  v914 = v194;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v195);
  OUTLINED_FUNCTION_10_4();
  v897 = v196;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v197);
  OUTLINED_FUNCTION_10_4();
  v896 = v198;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v199);
  OUTLINED_FUNCTION_10_4();
  v942 = v200;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v201);
  OUTLINED_FUNCTION_10_4();
  v953 = v202;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v203);
  OUTLINED_FUNCTION_10_4();
  v964 = v204;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v205);
  OUTLINED_FUNCTION_10_4();
  v948 = v206;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v207);
  OUTLINED_FUNCTION_10_4();
  v946 = v208;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v209);
  OUTLINED_FUNCTION_24_1();
  v977 = v210;
  OUTLINED_FUNCTION_7_3();
  v211 = sub_2676C9EBC();
  v212 = OUTLINED_FUNCTION_3(v211);
  v214 = v213;
  v216 = *(v215 + 64);
  MEMORY[0x28223BE20](v212);
  OUTLINED_FUNCTION_3_2();
  v219 = v218 - v217;
  v220 = sub_2676C9EAC();
  v221 = OUTLINED_FUNCTION_3(v220);
  v223 = v222;
  v225 = *(v224 + 64);
  MEMORY[0x28223BE20](v221);
  OUTLINED_FUNCTION_3_2();
  v228 = v227 - v226;
  v229 = [objc_opt_self() sharedInstance];
  v971 = [v229 isLocked];

  v230 = OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_inputParse;
  v231 = *(v214 + 16);
  v983 = v1;
  v231(v219, v1 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_inputParse, v211);
  if ((*(v214 + 88))(v219, v211) != *MEMORY[0x277D5C150])
  {
    (*(v214 + 8))(v219, v211);
    goto LABEL_11;
  }

  (*(v214 + 96))(v219, v211);
  v893 = v223;
  v894 = v220;
  v232 = *(v223 + 32);
  v233 = OUTLINED_FUNCTION_65_0();
  v234(v233);
  v236 = sub_2676C9E8C() == 0xD00000000000001CLL && 0x80000002676D5EA0 == v235;
  if (v236)
  {

    v238 = v983;
LABEL_23:
    v979 = v228;
    sub_2676C9F8C();
    OUTLINED_FUNCTION_69(OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_linkServicesProvider);
    sub_2676149CC(v238 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_responseFactory, &v1011);
    sub_2676149CC(v238 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_readingUtil, v1008);
    v269 = *(v238 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_globals);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F0, &unk_2676CE100);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v270, v271, v272, v273);
    v974 = v269;
    v274 = v976;
    sub_2676CAB8C();
    __swift_mutable_project_boxed_opaque_existential_1(v1008, v1009);
    OUTLINED_FUNCTION_41_0();
    v983 = v275;
    OUTLINED_FUNCTION_5_11();
    v277 = *(v276 + 64);
    MEMORY[0x28223BE20](v278);
    OUTLINED_FUNCTION_3_2();
    v281 = (v280 - v279);
    (*(v282 + 16))(v280 - v279);
    v283 = *v281;
    v284 = type metadata accessor for ReadingUtil();
    v1007 = &off_2878AE2F8;
    v1006 = v284;
    v1005[0] = v283;
    v285 = v981;
    v1003 = v981;
    v1004 = &off_2878AD4E0;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v1002);
    v287 = v980;
    (*(v980 + 2))(boxed_opaque_existential_1, v274, v285);
    v1000 = &type metadata for MailFeatureFlags;
    v1001 = &off_2878ADBB0;
    MailActingFlow = type metadata accessor for ReadMailActingFlow();
    v973 = OUTLINED_FUNCTION_20_4(MailActingFlow);
    v289 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v1005, v1006);
    OUTLINED_FUNCTION_41_0();
    v972 = v290;
    OUTLINED_FUNCTION_5_11();
    v292 = *(v291 + 64);
    MEMORY[0x28223BE20](v293);
    OUTLINED_FUNCTION_3_2();
    v296 = (v295 - v294);
    (*(v297 + 16))(v295 - v294);
    __swift_mutable_project_boxed_opaque_existential_1(&v1002, v1003);
    OUTLINED_FUNCTION_41_0();
    v970 = v298;
    OUTLINED_FUNCTION_5_11();
    v300 = *(v299 + 64);
    MEMORY[0x28223BE20](v301);
    OUTLINED_FUNCTION_3_2();
    v304 = v303 - v302;
    (*(v305 + 16))(v303 - v302);
    __swift_mutable_project_boxed_opaque_existential_1(v999, &type metadata for MailFeatureFlags);
    v306 = *v296;
    v998 = &off_2878AE2F8;
    v997 = v284;
    *&v996 = v306;
    v994 = v285;
    v995 = &off_2878AD4E0;
    v307 = __swift_allocate_boxed_opaque_existential_1(&v993);
    (v287)[4](v307, v304, v285);
    v991 = &type metadata for MailFeatureFlags;
    v992 = &off_2878ADBB0;
    *(v289 + 16) = xmmword_2676CF3C0;
    v308 = MEMORY[0x277D84F90];
    *(v289 + 32) = MEMORY[0x277D84F90];
    *(v289 + 48) = 0;
    sub_2676CB9FC();
    sub_267614AF4(&qword_2801CC738, MEMORY[0x277D5C7E8]);
    sub_2676C97BC();
    sub_2676C8C8C();
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v309, v310, v311, v312);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v313, v314, v315, v316);
    sub_2676C9ECC();
    __swift_project_boxed_opaque_existential_1(v987, v988);
    v317 = OUTLINED_FUNCTION_38_0();
    LODWORD(v284) = sub_267691338(v317, v318);
    __swift_destroy_boxed_opaque_existential_1(v987);
    if ((v284 & v971 & 1) != 0 && (v988 = &type metadata for Features, v989 = sub_267614A64(), LOBYTE(v987[0]) = 4, v319 = sub_2676CA04C(), __swift_destroy_boxed_opaque_existential_1(v987), (v319 & 1) == 0))
    {
      v321 = v984;
      v322 = v894;
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v343 = sub_2676CBE4C();
      v344 = OUTLINED_FUNCTION_67(v343, qword_2801CDC90);
      v345 = sub_2676CC23C();
      v346 = OUTLINED_FUNCTION_5_7(v345);
      v323 = v893;
      if (v346)
      {
        v347 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_9_4(v347);
        OUTLINED_FUNCTION_39_0(&dword_2675D4000, v348, v345, "#ReadMailActingFlow user is in the car, their device is locked, and Mail data is not Class C - we cannot read emails.");
        OUTLINED_FUNCTION_4_6();
      }

      v349 = OUTLINED_FUNCTION_36_1();
      v350(v349);
      v331 = 0x9000000000000000;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v990, v991);
      v320 = sub_267616C5C();
      v321 = v984;
      v323 = v893;
      v322 = v894;
      if (v320)
      {
        if (qword_2801CBAA0 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v324 = sub_2676CBE4C();
        v325 = OUTLINED_FUNCTION_67(v324, qword_2801CDC90);
        v326 = sub_2676CC23C();
        if (OUTLINED_FUNCTION_5_7(v326))
        {
          v327 = OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_9_4(v327);
          OUTLINED_FUNCTION_39_0(&dword_2675D4000, v328, v326, "#ReadMailActingFlow user asked for general inbox read or general summary and CatchUp is enabled, read their highlights first");
          OUTLINED_FUNCTION_4_6();
        }

        v329 = OUTLINED_FUNCTION_36_1();
        v330(v329);
        v331 = 0x9000000000000018;
      }

      else
      {
        v340 = OUTLINED_FUNCTION_36_1();
        v341(v340);
        OUTLINED_FUNCTION_82();
        v342 = swift_allocObject();
        *(v342 + 16) = 0xF000000000000007;
        v331 = v342 | 0x1000000000000000;
      }
    }

    *(v289 + 40) = v331;
    *(v289 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isRequestToSummarize) = 0;
    *(v289 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_senderInput) = v308;
    v351 = (v289 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_subjectInput);
    *v351 = 0;
    v351[1] = 0;
    *(v289 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isReadInput) = 2;
    *(v289 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isNewInput) = 2;
    *(v289 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isRequestToRead) = 2;
    v352 = v978;
    sub_2675F95E4(v978, v289 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_dateTimeInput, &qword_2801CC1E8, &qword_2676CF570);
    *(v289 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isMostRecent) = 2;
    sub_2675DD73C(&v993, v289 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_dateTimeResolver);
    sub_2675DD73C(&v1014, v289 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_linkServicesProvider);
    sub_2675DD73C(&v1011, v289 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_responseFactory);
    sub_2675DD73C(&v996, v289 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_readingUtil);
    *(v289 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_globals) = v974;
    sub_2676149CC(v990, v289 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_featureFlags);
    *(v289 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_hasExactSpanMatch) = 0;
    __swift_destroy_boxed_opaque_existential_1(v990);
    sub_2675EB7EC(v352, &qword_2801CC1E8, &qword_2676CF570);
    __swift_destroy_boxed_opaque_existential_1(v999);
    __swift_destroy_boxed_opaque_existential_1(&v1002);
    __swift_destroy_boxed_opaque_existential_1(v1005);
    __swift_destroy_boxed_opaque_existential_1(v1008);
    v1015 = v973;
    OUTLINED_FUNCTION_33_2();
    v1016 = sub_267614AF4(v353, v354);
    *&v1014 = v289;
    v321[3] = v982;
    v321[4] = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
    __swift_allocate_boxed_opaque_existential_1(v321);
    OUTLINED_FUNCTION_13_7();
    sub_2676C9F6C();
    v355 = OUTLINED_FUNCTION_15_7();
    v356(v355);
    (*(v323 + 8))(v979, v322);
    goto LABEL_181;
  }

  v237 = sub_2676CC59C();

  v238 = v983;
  if (v237)
  {
    goto LABEL_23;
  }

  sub_2676C9E8C();
  v239 = v960;
  sub_267615530(v960);

  v240 = v973;
  OUTLINED_FUNCTION_21_3(v239, 1, v973);
  if (!v236)
  {
    v979 = v228;
    v387 = (v972 + 32);
    v388 = v961;
    (*(v972 + 32))(v961, v239, v240);
    sub_2676C919C();
    v389 = sub_2676C918C();
    v390 = (v387 - 1);
    if (v389)
    {
      sub_2676C9F8C();
      OUTLINED_FUNCTION_69(OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_linkServicesProvider);
      v981 = *v390;
      (v981)(v947, v388, v240);
      v391 = *(v238 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_globals);
      v392 = OUTLINED_FUNCTION_14_7();
      *v387 = 0u;
      v387[1] = 0u;
      v1007 = 0;
      OUTLINED_FUNCTION_20_4(v392);
      swift_allocObject();
      v393 = sub_2676C9B8C();
      v394 = type metadata accessor for SendMailSceneHostPlan();
      OUTLINED_FUNCTION_20_4(v394);
      v395 = swift_allocObject();
      sub_2676CBA1C();
      OUTLINED_FUNCTION_10_9();
      sub_267614AF4(v396, v397);

      OUTLINED_FUNCTION_53_0();
      v398 = sub_2676C97BC();
      *(v395 + OBJC_IVAR____TtC16SiriMailInternal21SendMailSceneHostPlan_confirmIntentOptions) = 0;
      OUTLINED_FUNCTION_101(v398, v399, &qword_2801CC6A8, &unk_2676CF5F0);
      OUTLINED_FUNCTION_102();
      v400 = OUTLINED_FUNCTION_86();
      OUTLINED_FUNCTION_94(v400, v401);
      v402 = OUTLINED_FUNCTION_81();
      sub_2675F95E4(v402, v403, &off_2801CC6B8, &unk_2676CF600);
      v992 = &protocol witness table for ResponseFactory;
      v991 = v392;
      v990[0] = v393;
      sub_2676C981C();
      sub_2676C981C();
      sub_2676CB18C();
      sub_2676C981C();
      v404 = v395 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_resolverOverride;
      *v404 = 0u;
      *(v404 + 16) = 0u;
      *(v404 + 32) = 0;
      *(v395 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_globals) = v391;
      OUTLINED_FUNCTION_70();
      v405 = v391;
      sub_267614854(&v1002, v404);
      swift_endAccess();
      OUTLINED_FUNCTION_100(OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_linkServicesProvider);
      v406 = OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_94(v406, v407);
      OUTLINED_FUNCTION_97(OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_responseFactory);
      v408 = OUTLINED_FUNCTION_78();
      sub_2675F95E4(v408, v409, &off_2801CC6B8, &unk_2676CF600);
      if (v986)
      {
        sub_2675EB7EC(&v993, &off_2801CC6B8, &unk_2676CF600);
        sub_2675EB7EC(&v996, &qword_2801CC6B0, &qword_2676CFC80);
        __swift_destroy_boxed_opaque_existential_1(v999);
        sub_2675EB7EC(&v1002, &qword_2801CC6A8, &unk_2676CF5F0);
        OUTLINED_FUNCTION_48();
      }

      else
      {
        sub_2676C964C();
        sub_2675EB7EC(&v993, &off_2801CC6B8, &unk_2676CF600);
        sub_2675EB7EC(&v996, &qword_2801CC6B0, &qword_2676CFC80);
        __swift_destroy_boxed_opaque_existential_1(v999);
        sub_2675EB7EC(&v1002, &qword_2801CC6A8, &unk_2676CF5F0);
        OUTLINED_FUNCTION_98();
        if (v496)
        {
          sub_2675EB7EC(v985, &off_2801CC6B8, &unk_2676CF600);
        }
      }

      OUTLINED_FUNCTION_99(OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_eventSender);
      v497 = v967;
      OUTLINED_FUNCTION_71();
      (v981)();
      sub_2676A31F0(v497);

      sub_2675EB7EC(v1005, &off_2801CC6B8, &unk_2676CF600);
      sub_2675EB7EC(v1008, &qword_2801CC6B0, &qword_2676CFC80);
      sub_2675EB7EC(&v1011, &qword_2801CC6A8, &unk_2676CF5F0);
      v498 = OUTLINED_FUNCTION_72();
      (v391)(v498);
      OUTLINED_FUNCTION_103();
      v499 = OUTLINED_FUNCTION_53_0();
      v501 = __swift_instantiateConcreteTypeFromMangledNameV2(v499, v500);
      OUTLINED_FUNCTION_20_4(v501);
      swift_allocObject();
      OUTLINED_FUNCTION_59();
      v1008[0] = sub_2676C94CC();
      v1015 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6E0, &qword_2676CF620);
      v502 = OUTLINED_FUNCTION_6_8(&qword_2801CC6E8);
      *&v1011 = v501;
      *(&v1011 + 1) = &type metadata for SendMailResult;
      v503 = OUTLINED_FUNCTION_4_10(v502);
      OUTLINED_FUNCTION_56(v503);
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_96();

      OUTLINED_FUNCTION_55_0();
      v504 = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
      OUTLINED_FUNCTION_95(v504);
      OUTLINED_FUNCTION_13_7();
    }

    else
    {
      sub_2676C9F8C();
      OUTLINED_FUNCTION_69(OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_linkServicesProvider);
      v981 = *v390;
      (v981)(v949, v388, v240);
      v391 = *(v238 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_globals);
      v453 = OUTLINED_FUNCTION_14_7();
      *v387 = 0u;
      v387[1] = 0u;
      v1007 = 0;
      OUTLINED_FUNCTION_20_4(v453);
      swift_allocObject();
      v454 = sub_2676C9B8C();
      v455 = type metadata accessor for SendMailPlan();
      OUTLINED_FUNCTION_20_4(v455);
      v456 = swift_allocObject();
      sub_2676CBA1C();
      OUTLINED_FUNCTION_10_9();
      sub_267614AF4(v457, v458);

      v459 = sub_2676C97BC();
      *(v456 + OBJC_IVAR____TtC16SiriMailInternal12SendMailPlan_confirmIntentOptions) = 0;
      OUTLINED_FUNCTION_101(v459, v460, &qword_2801CC6A8, &unk_2676CF5F0);
      OUTLINED_FUNCTION_102();
      v461 = OUTLINED_FUNCTION_86();
      OUTLINED_FUNCTION_94(v461, v462);
      v463 = OUTLINED_FUNCTION_81();
      sub_2675F95E4(v463, v464, &off_2801CC6B8, &unk_2676CF600);
      v992 = &protocol witness table for ResponseFactory;
      v991 = v453;
      v990[0] = v454;
      sub_2676C8D8C();
      sub_2676C981C();
      sub_2676CB0DC();
      sub_2676C981C();
      sub_2676C981C();
      sub_2676C981C();
      v465 = v456 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_resolverOverride;
      *v465 = 0u;
      *(v465 + 16) = 0u;
      *(v465 + 32) = 0;
      *(v456 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_globals) = v391;
      OUTLINED_FUNCTION_70();
      v466 = v391;
      sub_267614854(&v1002, v465);
      swift_endAccess();
      OUTLINED_FUNCTION_100(OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_linkServicesProvider);
      v467 = OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_94(v467, v468);
      OUTLINED_FUNCTION_97(OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_responseFactory);
      v469 = OUTLINED_FUNCTION_78();
      sub_2675F95E4(v469, v470, &off_2801CC6B8, &unk_2676CF600);
      if (v986)
      {
        sub_2675EB7EC(&v993, &off_2801CC6B8, &unk_2676CF600);
        sub_2675EB7EC(&v996, &qword_2801CC6B0, &qword_2676CFC80);
        __swift_destroy_boxed_opaque_existential_1(v999);
        sub_2675EB7EC(&v1002, &qword_2801CC6A8, &unk_2676CF5F0);
        OUTLINED_FUNCTION_48();
      }

      else
      {
        sub_2676C964C();
        sub_2675EB7EC(&v993, &off_2801CC6B8, &unk_2676CF600);
        sub_2675EB7EC(&v996, &qword_2801CC6B0, &qword_2676CFC80);
        __swift_destroy_boxed_opaque_existential_1(v999);
        sub_2675EB7EC(&v1002, &qword_2801CC6A8, &unk_2676CF5F0);
        OUTLINED_FUNCTION_98();
        if (v505)
        {
          sub_2675EB7EC(v985, &off_2801CC6B8, &unk_2676CF600);
        }
      }

      OUTLINED_FUNCTION_99(OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_eventSender);
      v506 = v967;
      OUTLINED_FUNCTION_71();
      (v981)();
      sub_2676994B8(v506);

      sub_2675EB7EC(v1005, &off_2801CC6B8, &unk_2676CF600);
      sub_2675EB7EC(v1008, &qword_2801CC6B0, &qword_2676CFC80);
      sub_2675EB7EC(&v1011, &qword_2801CC6A8, &unk_2676CF5F0);
      v507 = OUTLINED_FUNCTION_72();
      (v391)(v507);
      OUTLINED_FUNCTION_103();
      v508 = OUTLINED_FUNCTION_53_0();
      v510 = __swift_instantiateConcreteTypeFromMangledNameV2(v508, v509);
      OUTLINED_FUNCTION_20_4(v510);
      swift_allocObject();
      OUTLINED_FUNCTION_59();
      v1008[0] = sub_2676C94CC();
      v1015 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6C8, &qword_2676CF610);
      v511 = OUTLINED_FUNCTION_6_8(&qword_2801CC6D0);
      *&v1011 = v510;
      *(&v1011 + 1) = &type metadata for SendMailResult;
      v512 = OUTLINED_FUNCTION_4_10(v511);
      OUTLINED_FUNCTION_56(v512);
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_96();

      OUTLINED_FUNCTION_55_0();
      v513 = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
      OUTLINED_FUNCTION_95(v513);
      OUTLINED_FUNCTION_13_7();
    }

    sub_2676C9F6C();
    v514 = OUTLINED_FUNCTION_15_7();
    v515(v514);
    (v391)(v961, &qword_2801CC6B0);
    (*(v893 + 8))(v979, v894);
    goto LABEL_181;
  }

  (*(v893 + 8))(v228, v894);
  sub_2675EB7EC(v239, &qword_2801CC650, &unk_2676CF560);
LABEL_11:
  v241 = v984;
  sub_2676371E0();
  v242 = v979;
  if (v243)
  {
    v244 = sub_2676CA77C();

    sub_267698EA0(v244);

    OUTLINED_FUNCTION_21_3(v137, 1, v242);
    if (!v236)
    {
      v245 = v969;
      (*(v969 + 32))(v970, v137, v242);
      v246 = *(v245 + 16);
      OUTLINED_FUNCTION_46_0();
      v248 = v247;
      v247();
      v249 = sub_2676CBA1C();
      OUTLINED_FUNCTION_10_9();
      v252 = sub_267614AF4(v250, v251);
      v253 = v963;
      v978 = v249;
      v977 = v252;
      sub_2676CA3FC();
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_21_3(v254, v255, v256);
      if (!v236)
      {
        (*(v972 + 32))(v968, v253, v249);
        v357 = v983;
        if (qword_2801CBAA0 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v358 = sub_2676CBE4C();
        v359 = OUTLINED_FUNCTION_67(v358, qword_2801CDC90);
        v360 = sub_2676CC23C();
        if (OUTLINED_FUNCTION_5_7(v360))
        {
          *OUTLINED_FUNCTION_17_3() = 0;
          OUTLINED_FUNCTION_44_0(&dword_2675D4000, v361, v362, "#MailFlowFactory found DynamicTask<Common.Message.Send>, pushing SendMailFlow");
          OUTLINED_FUNCTION_2_5();
        }

        sub_2676C9F8C();
        v363 = (v972 + 16);
        v981 = *(v972 + 16);
        (v981)(v965, v968, v249);
        OUTLINED_FUNCTION_69(OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_linkServicesProvider);
        v980 = *(v357 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_globals);
        sub_267630BAC(v980, v364, v365, v366, v367, v368, v369, v370, v892, v893, v894, v895, v896, v897, v898, v899, v900, v901, v902, v903);
        LODWORD(v974) = v371;
        v372 = sub_2676CBDEC();
        v373 = sub_2676CBDDC();
        v374 = sub_2676CAB5C();
        OUTLINED_FUNCTION_20_4(v374);
        v375 = swift_allocObject();
        v376 = sub_2676CAB4C();
        v1012 = v374;
        v1013 = &off_2878AD3E8;
        *&v1011 = v376;
        v1009 = v372;
        v1010 = &off_2878AE9E0;
        v1008[0] = v373;
        v1006 = &type metadata for MailFeatureFlags;
        v1007 = &off_2878ADBB0;
        v377 = type metadata accessor for SendMailFlow();
        OUTLINED_FUNCTION_20_4(v377);
        v378 = swift_allocObject();
        __swift_mutable_project_boxed_opaque_existential_1(&v1011, v374);
        OUTLINED_FUNCTION_41_0();
        v976 = v379;
        OUTLINED_FUNCTION_5_11();
        v381 = *(v380 + 64);
        MEMORY[0x28223BE20](v382);
        OUTLINED_FUNCTION_3_2();
        v384 = OUTLINED_FUNCTION_63(v383);
        v385(v384);
        __swift_mutable_project_boxed_opaque_existential_1(v1005, v1006);
        OUTLINED_FUNCTION_43(*v375);
        v983 = v373;

        sub_2676C97BC();
        if (v974)
        {
          v386 = 0x8000000000000000;
        }

        else
        {
          v386 = swift_allocObject();
          *(v386 + 16) = 0u;
          *(v386 + 32) = 0u;
        }

        v444 = v984;
        *(v378 + 16) = v386;
        sub_2676149CC(&v1014, v378 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_linkServicesProvider);
        sub_2676149CC(v999, v378 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_featureFlags);
        sub_2676149CC(v1008, v378 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_referenceResolver);
        sub_2676149CC(&v1002, v378 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_resolverOverride);
        OUTLINED_FUNCTION_58_0(OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_globals);
        OUTLINED_FUNCTION_76();
        v445();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
        sub_2676C97AC();

        __swift_destroy_boxed_opaque_existential_1(&v1014);
        v446 = OUTLINED_FUNCTION_85();
        v363(v446);
        __swift_destroy_boxed_opaque_existential_1(v1008);
        __swift_destroy_boxed_opaque_existential_1(v999);
        __swift_destroy_boxed_opaque_existential_1(&v1002);
        __swift_destroy_boxed_opaque_existential_1(v1005);
        __swift_destroy_boxed_opaque_existential_1(&v1011);
        v1008[0] = v378;
        v1015 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC728, &qword_2676CF7D8);
        OUTLINED_FUNCTION_32_2();
        v449 = sub_267614AF4(v447, v448);
        *&v1011 = v377;
        *(&v1011 + 1) = v449;
        v450 = OUTLINED_FUNCTION_7_10();
        OUTLINED_FUNCTION_56(v450);
        sub_2676C943C();

        v444[3] = v982;
        v444[4] = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
        __swift_allocate_boxed_opaque_existential_1(v444);
        OUTLINED_FUNCTION_13_7();
        sub_2676C9F6C();
        v451 = OUTLINED_FUNCTION_15_7();
        v452(v451);
        (v363)(v968, &type metadata for MailFeatureFlags);
        goto LABEL_180;
      }

      sub_2675EB7EC(v253, &qword_2801CC650, &unk_2676CF560);
      OUTLINED_FUNCTION_46_0();
      v976 = v248;
      v248();
      sub_2676CBA8C();
      v257 = sub_267614AF4(&qword_2801CC678, MEMORY[0x277D5C848]);
      v258 = v952;
      v968 = v257;
      sub_2676CA3FC();
      v259 = v966;
      OUTLINED_FUNCTION_21_3(v258, 1, v966);
      if (!v236)
      {
        (*(v956 + 32))(v962, v258, v259);
        if (qword_2801CBAA0 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v410 = sub_2676CBE4C();
        v411 = OUTLINED_FUNCTION_67(v410, qword_2801CDC90);
        v412 = sub_2676CC23C();
        v413 = OUTLINED_FUNCTION_5_7(v412);
        v414 = v973;
        if (v413)
        {
          *OUTLINED_FUNCTION_17_3() = 0;
          OUTLINED_FUNCTION_66_0(&dword_2675D4000, v415, v412, "#MailFlowFactory found DynamicTask<Common.Message.Share>, converting parse and pushing SendMailFlow");
          OUTLINED_FUNCTION_2_5();
        }

        swift_getKeyPath();
        OUTLINED_FUNCTION_12_5();
        sub_267614AF4(v416, v417);
        sub_2676CA3EC();

        v418 = v955;
        sub_2676CA3BC();
        sub_2676C9F8C();
        v419 = (v972 + 16);
        v981 = *(v972 + 16);
        (v981)(v954, v418, v414);
        v420 = v983;
        sub_2676149CC(v983 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_linkServicesProvider, &v1014);
        v980 = *(v420 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_globals);
        sub_267630BAC(v980, v421, v422, v423, v424, v425, v426, v427, v892, v893, v894, v895, v896, v897, v898, v899, v900, v901, v902, v903);
        LODWORD(v974) = v428;
        v429 = sub_2676CBDEC();
        v430 = sub_2676CBDDC();
        v431 = sub_2676CAB5C();
        OUTLINED_FUNCTION_20_4(v431);
        v432 = swift_allocObject();
        v433 = sub_2676CAB4C();
        v1012 = v431;
        v1013 = &off_2878AD3E8;
        *&v1011 = v433;
        v1009 = v429;
        v1010 = &off_2878AE9E0;
        v1008[0] = v430;
        v1006 = &type metadata for MailFeatureFlags;
        v1007 = &off_2878ADBB0;
        v434 = type metadata accessor for SendMailFlow();
        OUTLINED_FUNCTION_20_4(v434);
        v435 = swift_allocObject();
        __swift_mutable_project_boxed_opaque_existential_1(&v1011, v431);
        OUTLINED_FUNCTION_41_0();
        v976 = v436;
        OUTLINED_FUNCTION_5_11();
        v438 = *(v437 + 64);
        MEMORY[0x28223BE20](v439);
        OUTLINED_FUNCTION_3_2();
        v441 = OUTLINED_FUNCTION_63(v440);
        v442(v441);
        __swift_mutable_project_boxed_opaque_existential_1(v1005, v1006);
        OUTLINED_FUNCTION_43(*v432);
        v983 = v430;

        sub_2676C97BC();
        if (v974)
        {
          v443 = 0x8000000000000000;
        }

        else
        {
          v443 = swift_allocObject();
          *(v443 + 16) = 0u;
          *(v443 + 32) = 0u;
        }

        v487 = v984;
        *(v435 + 16) = v443;
        sub_2676149CC(&v1014, v435 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_linkServicesProvider);
        sub_2676149CC(v999, v435 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_featureFlags);
        sub_2676149CC(v1008, v435 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_referenceResolver);
        sub_2676149CC(&v1002, v435 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_resolverOverride);
        OUTLINED_FUNCTION_58_0(OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_globals);
        OUTLINED_FUNCTION_76();
        v488();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
        sub_2676C97AC();

        __swift_destroy_boxed_opaque_existential_1(&v1014);
        v489 = OUTLINED_FUNCTION_85();
        v419(v489);
        __swift_destroy_boxed_opaque_existential_1(v1008);
        __swift_destroy_boxed_opaque_existential_1(v999);
        __swift_destroy_boxed_opaque_existential_1(&v1002);
        __swift_destroy_boxed_opaque_existential_1(v1005);
        __swift_destroy_boxed_opaque_existential_1(&v1011);
        v1008[0] = v435;
        v1015 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC728, &qword_2676CF7D8);
        OUTLINED_FUNCTION_32_2();
        v492 = sub_267614AF4(v490, v491);
        *&v1011 = v434;
        *(&v1011 + 1) = v492;
        v493 = OUTLINED_FUNCTION_7_10();
        OUTLINED_FUNCTION_56(v493);
        OUTLINED_FUNCTION_51_0();
        sub_2676C943C();

        v487[3] = v982;
        v487[4] = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
        __swift_allocate_boxed_opaque_existential_1(v487);
        OUTLINED_FUNCTION_13_7();
        sub_2676C9F6C();
        v494 = OUTLINED_FUNCTION_15_7();
        v495(v494);
        (v419)(v955, &type metadata for MailFeatureFlags);
        (*(v956 + 8))(v962, v966);
        goto LABEL_180;
      }

      sub_2675EB7EC(v258, &qword_2801CC630, &qword_2676CF540);
      OUTLINED_FUNCTION_64_0();
      v976();
      v260 = sub_2676CBA6C();
      v261 = sub_267614AF4(&qword_2801CC680, MEMORY[0x277D5C828]);
      v262 = v940;
      v968 = v261;
      sub_2676CA3FC();
      v263 = v957;
      OUTLINED_FUNCTION_21_3(v262, 1, v957);
      if (v236)
      {
        sub_2675EB7EC(v262, &qword_2801CC620, &unk_2676D0C30);
        OUTLINED_FUNCTION_64_0();
        v976();
        sub_2676CBABC();
        sub_267614AF4(&qword_2801CC688, MEMORY[0x277D5C878]);
        v264 = v921;
        sub_2676CA3FC();
        v265 = OUTLINED_FUNCTION_34_1();
        v266 = v935;
        OUTLINED_FUNCTION_21_3(v265, v267, v935);
        if (v236)
        {
          sub_2675EB7EC(v264, &qword_2801CC5F0, &qword_2676CF4E8);
          v268 = v984;
        }

        else
        {
          v516 = v913;
          v517 = *(v913 + 32);
          v518 = v919;
          v519 = OUTLINED_FUNCTION_38_0();
          v520(v519);
          swift_getKeyPath();
          OUTLINED_FUNCTION_12_5();
          sub_267614AF4(v521, v522);
          v523 = v907;
          sub_2676CA3EC();
          v524 = v523;

          v525 = v523;
          v526 = v950;
          OUTLINED_FUNCTION_21_3(v525, 1, v950);
          v268 = v984;
          if (v527)
          {
            (*(v516 + 8))(v518, v266);
            sub_2675EB7EC(v524, &qword_2801CC428, &unk_2676CEDD0);
          }

          else
          {
            v589 = *(v939 + 32);
            v590 = OUTLINED_FUNCTION_38_0();
            v591(v590);
            swift_getKeyPath();
            OUTLINED_FUNCTION_11_8();
            sub_267614AF4(v592, v593);
            OUTLINED_FUNCTION_64_0();
            v594 = sub_2676CA8CC();

            v595 = *(v594 + 16);

            if (v595)
            {
              goto LABEL_106;
            }

            swift_getKeyPath();
            OUTLINED_FUNCTION_64_0();
            v596 = sub_2676CA8CC();

            v597 = *(v596 + 16);

            if (v597 || (swift_getKeyPath(), OUTLINED_FUNCTION_64_0(), v598 = sub_2676CA8CC(), , v599 = *(v598 + 16), , v599))
            {
LABEL_106:
              swift_getKeyPath();
              sub_2676CA3EC();

              sub_2676CA3BC();
              sub_2676C919C();
              if (sub_2676C918C())
              {
                v600 = v973;
                v601 = v983;
                if (qword_2801CBAA0 != -1)
                {
                  OUTLINED_FUNCTION_0();
                }

                v602 = sub_2676CBE4C();
                v603 = OUTLINED_FUNCTION_67(v602, qword_2801CDC90);
                v604 = sub_2676CC23C();
                if (OUTLINED_FUNCTION_5_7(v604))
                {
                  *OUTLINED_FUNCTION_17_3() = 0;
                  OUTLINED_FUNCTION_66_0(&dword_2675D4000, v605, v604, "#MailFlowFactory found DynamicTask<Common.Message.NoVerb> with recipients, casted as DynamicTask<Common.Message.Send> and pushing SendMailSceneHostPlan");
                  v601 = v983;
                  OUTLINED_FUNCTION_2_5();
                }

                sub_2676C9F8C();
                OUTLINED_FUNCTION_69(OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_linkServicesProvider);
                v983 = *(v972 + 16);
                (v983)(v898, v912, v600);
                v606 = *(v601 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_globals);
                v607 = OUTLINED_FUNCTION_14_7();
                *v603 = 0u;
                v603[1] = 0u;
                v1007 = 0;
                OUTLINED_FUNCTION_20_4(v607);
                swift_allocObject();
                v608 = sub_2676C9B8C();
                v609 = type metadata accessor for SendMailSceneHostPlan();
                OUTLINED_FUNCTION_20_4(v609);
                v610 = swift_allocObject();

                v611 = sub_2676C97BC();
                *(v610 + OBJC_IVAR____TtC16SiriMailInternal21SendMailSceneHostPlan_confirmIntentOptions) = 0;
                OUTLINED_FUNCTION_101(v611, v612, &qword_2801CC6A8, &unk_2676CF5F0);
                OUTLINED_FUNCTION_102();
                v613 = OUTLINED_FUNCTION_86();
                OUTLINED_FUNCTION_104(v613, v614);
                OUTLINED_FUNCTION_81();
                OUTLINED_FUNCTION_57_0();
                sub_2675F95E4(v615, v616, v617, v618);
                v992 = &protocol witness table for ResponseFactory;
                v991 = v607;
                v990[0] = v608;
                OUTLINED_FUNCTION_45_0();
                OUTLINED_FUNCTION_45_0();
                v619 = OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan__message;
                sub_2676CB18C();
                sub_2676C981C();
                OUTLINED_FUNCTION_73(OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_resolverOverride);
                *(v610 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_globals) = v606;
                OUTLINED_FUNCTION_70();
                v620 = v606;
                sub_267614854(&v1002, v619);
                swift_endAccess();
                OUTLINED_FUNCTION_100(OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_linkServicesProvider);
                v621 = OUTLINED_FUNCTION_88();
                OUTLINED_FUNCTION_104(v621, v622);
                OUTLINED_FUNCTION_97(OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_responseFactory);
                OUTLINED_FUNCTION_78();
                OUTLINED_FUNCTION_57_0();
                sub_2675F95E4(v623, v624, v625, v626);
                if (v986)
                {
                  sub_2675EB7EC(&v993, &off_2801CC6B8, &unk_2676CF600);
                  sub_2675EB7EC(&v996, &qword_2801CC6B0, &qword_2676CFC80);
                  __swift_destroy_boxed_opaque_existential_1(v999);
                  sub_2675EB7EC(&v1002, &qword_2801CC6A8, &unk_2676CF5F0);
                  OUTLINED_FUNCTION_48();
                  v627 = v984;
                }

                else
                {
                  sub_2676C964C();
                  sub_2675EB7EC(&v993, &off_2801CC6B8, &unk_2676CF600);
                  sub_2675EB7EC(&v996, &qword_2801CC6B0, &qword_2676CFC80);
                  __swift_destroy_boxed_opaque_existential_1(v999);
                  sub_2675EB7EC(&v1002, &qword_2801CC6A8, &unk_2676CF5F0);
                  OUTLINED_FUNCTION_98();
                  v627 = v984;
                  if (v862)
                  {
                    sub_2675EB7EC(v985, &off_2801CC6B8, &unk_2676CF600);
                  }
                }

                OUTLINED_FUNCTION_99(OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_eventSender);
                v863 = v967;
                v864 = v898;
                v865 = v973;
                (v983)(v967, v898, v973);
                sub_2676A31F0(v863);

                sub_2675EB7EC(v1005, &off_2801CC6B8, &unk_2676CF600);
                sub_2675EB7EC(v1008, &qword_2801CC6B0, &qword_2676CFC80);
                sub_2675EB7EC(&v1011, &qword_2801CC6A8, &unk_2676CF5F0);
                v866 = *(v972 + 8);
                v866(v864, v865);
                OUTLINED_FUNCTION_103();
                v867 = OUTLINED_FUNCTION_53_0();
                v869 = __swift_instantiateConcreteTypeFromMangledNameV2(v867, v868);
                OUTLINED_FUNCTION_20_4(v869);
                swift_allocObject();
                OUTLINED_FUNCTION_59();
                v1008[0] = sub_2676C94CC();
                v1015 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6E0, &qword_2676CF620);
                v870 = OUTLINED_FUNCTION_6_8(&qword_2801CC6E8);
                *&v1011 = v869;
                *(&v1011 + 1) = &type metadata for SendMailResult;
                v871 = OUTLINED_FUNCTION_4_10(v870);
                OUTLINED_FUNCTION_56(v871);
                OUTLINED_FUNCTION_8_12();
                OUTLINED_FUNCTION_96();

                v872 = v982;
                v627[3] = v982;
                v627[4] = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
                __swift_allocate_boxed_opaque_existential_1(v627);
                sub_2676C9F6C();
                v873 = OUTLINED_FUNCTION_37_0();
                v874(v873, v872);
                v866(v912, v865);
              }

              else
              {
                v834 = v973;
                v835 = v983;
                if (qword_2801CBAA0 != -1)
                {
                  OUTLINED_FUNCTION_0();
                }

                v836 = sub_2676CBE4C();
                v837 = OUTLINED_FUNCTION_67(v836, qword_2801CDC90);
                v838 = sub_2676CC23C();
                if (OUTLINED_FUNCTION_5_7(v838))
                {
                  *OUTLINED_FUNCTION_17_3() = 0;
                  OUTLINED_FUNCTION_66_0(&dword_2675D4000, v839, v838, "#MailFlowFactory found DynamicTask<Common.Message.NoVerb> with recipients, casted as DynamicTask<Common.Message.Send> and pushing SendMailPlan");
                  v835 = v983;
                  OUTLINED_FUNCTION_2_5();
                }

                sub_2676C9F8C();
                OUTLINED_FUNCTION_69(OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_linkServicesProvider);
                v983 = *(v972 + 16);
                (v983)(v899, v912, v834);
                v840 = *(v835 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_globals);
                v841 = OUTLINED_FUNCTION_14_7();
                *v837 = 0u;
                v837[1] = 0u;
                v1007 = 0;
                OUTLINED_FUNCTION_20_4(v841);
                swift_allocObject();
                v842 = sub_2676C9B8C();
                v843 = type metadata accessor for SendMailPlan();
                OUTLINED_FUNCTION_20_4(v843);
                v844 = swift_allocObject();

                v845 = sub_2676C97BC();
                *(v844 + OBJC_IVAR____TtC16SiriMailInternal12SendMailPlan_confirmIntentOptions) = 0;
                OUTLINED_FUNCTION_101(v845, v846, &qword_2801CC6A8, &unk_2676CF5F0);
                OUTLINED_FUNCTION_102();
                v847 = OUTLINED_FUNCTION_86();
                OUTLINED_FUNCTION_104(v847, v848);
                OUTLINED_FUNCTION_81();
                OUTLINED_FUNCTION_57_0();
                sub_2675F95E4(v849, v850, v851, v852);
                v992 = &protocol witness table for ResponseFactory;
                v991 = v841;
                v990[0] = v842;
                sub_2676C8D8C();
                sub_2676C981C();
                sub_2676CB0DC();
                sub_2676C981C();
                v853 = MEMORY[0x277D839B0];
                OUTLINED_FUNCTION_45_0();
                OUTLINED_FUNCTION_45_0();
                OUTLINED_FUNCTION_73(OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_resolverOverride);
                *(v844 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_globals) = v840;
                OUTLINED_FUNCTION_70();
                v854 = v840;
                sub_267614854(&v1002, v853);
                swift_endAccess();
                OUTLINED_FUNCTION_100(OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_linkServicesProvider);
                v855 = OUTLINED_FUNCTION_88();
                OUTLINED_FUNCTION_104(v855, v856);
                OUTLINED_FUNCTION_97(OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_responseFactory);
                OUTLINED_FUNCTION_78();
                OUTLINED_FUNCTION_57_0();
                sub_2675F95E4(v857, v858, v859, v860);
                if (v986)
                {
                  sub_2675EB7EC(&v993, &off_2801CC6B8, &unk_2676CF600);
                  sub_2675EB7EC(&v996, &qword_2801CC6B0, &qword_2676CFC80);
                  __swift_destroy_boxed_opaque_existential_1(v999);
                  sub_2675EB7EC(&v1002, &qword_2801CC6A8, &unk_2676CF5F0);
                  OUTLINED_FUNCTION_48();
                }

                else
                {
                  sub_2676C964C();
                  sub_2675EB7EC(&v993, &off_2801CC6B8, &unk_2676CF600);
                  sub_2675EB7EC(&v996, &qword_2801CC6B0, &qword_2676CFC80);
                  __swift_destroy_boxed_opaque_existential_1(v999);
                  sub_2675EB7EC(&v1002, &qword_2801CC6A8, &unk_2676CF5F0);
                  OUTLINED_FUNCTION_98();
                  if (v875)
                  {
                    sub_2675EB7EC(v985, &off_2801CC6B8, &unk_2676CF600);
                  }
                }

                OUTLINED_FUNCTION_99(OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_eventSender);
                v876 = v967;
                v877 = v899;
                OUTLINED_FUNCTION_71();
                (v983)();
                sub_2676994B8(v876);

                sub_2675EB7EC(v1005, &off_2801CC6B8, &unk_2676CF600);
                sub_2675EB7EC(v1008, &qword_2801CC6B0, &qword_2676CFC80);
                sub_2675EB7EC(&v1011, &qword_2801CC6A8, &unk_2676CF5F0);
                v878 = *(v972 + 8);
                v878(v877, &qword_2676CFC80);
                OUTLINED_FUNCTION_103();
                v879 = OUTLINED_FUNCTION_53_0();
                v881 = __swift_instantiateConcreteTypeFromMangledNameV2(v879, v880);
                OUTLINED_FUNCTION_20_4(v881);
                swift_allocObject();
                OUTLINED_FUNCTION_59();
                v1008[0] = sub_2676C94CC();
                v1015 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6C8, &qword_2676CF610);
                v882 = OUTLINED_FUNCTION_6_8(&qword_2801CC6D0);
                *&v1011 = v881;
                *(&v1011 + 1) = &type metadata for SendMailResult;
                v883 = OUTLINED_FUNCTION_4_10(v882);
                OUTLINED_FUNCTION_56(v883);
                OUTLINED_FUNCTION_8_12();
                OUTLINED_FUNCTION_96();

                v884 = v982;
                v984[3] = v982;
                v885 = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
                OUTLINED_FUNCTION_95(v885);
                sub_2676C9F6C();
                v886 = OUTLINED_FUNCTION_37_0();
                v887(v886, v884);
                v878(v912, &qword_2676CFC80);
              }

              (*(v939 + 8))(v906, v950);
              v816 = OUTLINED_FUNCTION_74();
              goto LABEL_179;
            }

            v888 = OUTLINED_FUNCTION_37_0();
            v889(v888, v526);
            v890 = OUTLINED_FUNCTION_74();
            v891(v890);
          }
        }

        v528 = v983;
        sub_2675F95E4(v983 + 32, &v1014, &qword_2801CC690, &unk_2676CF580);
        sub_267616E78(v1014, SBYTE1(v1014), BYTE2(v1014), &v1014 + 8, v528 + v230, v528 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_linkServicesProvider, v528 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_responseFactory, v528 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_readingUtil, v915, *(v528 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_globals));
        sub_2675EB7EC(&v1014 + 8, &qword_2801CC158, &qword_2676CDDA0);
        OUTLINED_FUNCTION_17_2();
        v572 = v916;
        __swift_storeEnumTagSinglePayload(v573, v574, v575, v916);
        v577 = v901;
        v576 = v902;
        v578 = *(v902 + 32);
        v579 = OUTLINED_FUNCTION_53_0();
        v580(v579);
        v581 = v914;
        sub_2676C9F8C();
        v1015 = v572;
        v582 = type metadata accessor for ReadMailActingFlow();
        OUTLINED_FUNCTION_33_2();
        v585 = sub_267614AF4(v583, v584);
        *&v1011 = v582;
        *(&v1011 + 1) = v585;
        v586 = OUTLINED_FUNCTION_7_10();
        v587 = OUTLINED_FUNCTION_56(v586);
        (*(v576 + 16))(v587, v577, v572);
        v588 = v982;
        v268[3] = v982;
        v268[4] = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
        __swift_allocate_boxed_opaque_existential_1(v268);
        OUTLINED_FUNCTION_13_7();
        sub_2676C9F6C();
        (*(v975 + 8))(v581, v588);
        (*(v576 + 8))(v577, v572);
LABEL_180:
        (*(v969 + 8))(v970, v979);
LABEL_181:
        __swift_destroy_boxed_opaque_existential_1(&v1014);
        goto LABEL_182;
      }

      v977 = v260;
      (*(v943 + 32))(v958, v262, v263);
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v471 = sub_2676CBE4C();
      v962 = __swift_project_value_buffer(v471, qword_2801CDC90);
      v472 = sub_2676CBE2C();
      v473 = sub_2676CC23C();
      v474 = OUTLINED_FUNCTION_5_7(v473);
      v475 = v950;
      v476 = v936;
      if (v474)
      {
        *OUTLINED_FUNCTION_17_3() = 0;
        OUTLINED_FUNCTION_44_0(&dword_2675D4000, v477, v478, "#MailFlowFactory found DynamicTask<Common.Message.Reply>, pushing ReplyMessageFlow");
        OUTLINED_FUNCTION_2_5();
      }

      swift_getKeyPath();
      OUTLINED_FUNCTION_12_5();
      v481 = sub_267614AF4(v479, v480);
      v482 = v920;
      sub_2676CA3EC();

      v483 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_21_3(v483, v484, v475);
      v978 = v481;
      if (v236)
      {
        v485 = &qword_2801CC428;
        v486 = &unk_2676CEDD0;
      }

      else
      {
        swift_getKeyPath();
        OUTLINED_FUNCTION_11_8();
        sub_267614AF4(v529, v530);
        v531 = sub_2676CA8CC();

        v532 = *(v939 + 8);
        v533 = OUTLINED_FUNCTION_83();
        v534(v533);
        v482 = v908;
        sub_267698E74(v531);

        v535 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
        OUTLINED_FUNCTION_18_5(v482);
        if (!v536)
        {
          swift_getKeyPath();
          OUTLINED_FUNCTION_31_1();
          sub_267614AF4(v628, v629);
          v630 = v482;
          v631 = v900;
          sub_2676CA87C();

          OUTLINED_FUNCTION_25_3();
          (*(v632 + 8))(v630, v535);
          v633 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
          v634 = OUTLINED_FUNCTION_34_1();
          OUTLINED_FUNCTION_21_3(v634, v635, v633);
          if (!v636)
          {
            swift_getKeyPath();
            v537 = v922;
            sub_2676CA84C();

            OUTLINED_FUNCTION_14_2(v633);
            (*(v833 + 8))(v631, v633);
            v476 = v936;
LABEL_88:
            v541 = v934;
            v542 = *(v938 + 104);
            LODWORD(v976) = *MEMORY[0x277D5C478];
            v974 = v542;
            v542(v934);
            OUTLINED_FUNCTION_17_2();
            __swift_storeEnumTagSinglePayload(v543, v544, v545, v476);
            v546 = v476;
            v547 = *(v937 + 48);
            v548 = v941;
            sub_2675F95E4(v537, v941, &qword_2801CC618, &qword_2676CF520);
            v549 = v548;
            sub_2675F95E4(v541, v548 + v547, &qword_2801CC618, &qword_2676CF520);
            OUTLINED_FUNCTION_21_3(v548, 1, v546);
            if (v236)
            {
              v550 = &qword_2801CC618;
              sub_2675EB7EC(v541, &qword_2801CC618, &qword_2676CF520);
              OUTLINED_FUNCTION_91();
              OUTLINED_FUNCTION_21_3(&qword_2801CC618 + v547, 1, v546);
              v551 = v546;
              if (v236)
              {
                v552 = v950;
                goto LABEL_127;
              }
            }

            else
            {
              v553 = v548;
              v554 = v909;
              sub_2675F95E4(v553, v909, &qword_2801CC618, &qword_2676CF520);
              OUTLINED_FUNCTION_21_3(v549 + v547, 1, v546);
              if (!v555)
              {
                v637 = v938;
                v638 = v905;
                (*(v938 + 32))(v905, v549 + v547, v546);
                OUTLINED_FUNCTION_30_2();
                sub_267614AF4(v639, v640);
                v641 = sub_2676CBF1C();
                v642 = *(v637 + 8);
                v642(v638, v546);
                OUTLINED_FUNCTION_75();
                sub_2675EB7EC(v643, v644, v645);
                OUTLINED_FUNCTION_75();
                sub_2675EB7EC(v646, v647, v648);
                v649 = OUTLINED_FUNCTION_65_0();
                (v642)(v649);
                v552 = v950;
                OUTLINED_FUNCTION_75();
                sub_2675EB7EC(v650, v651, v652);
                v551 = v546;
                if (v641)
                {
                  goto LABEL_128;
                }

LABEL_97:
                swift_getKeyPath();
                v556 = v910;
                OUTLINED_FUNCTION_68();

                v557 = OUTLINED_FUNCTION_34_1();
                OUTLINED_FUNCTION_21_3(v557, v558, v552);
                if (v236)
                {
                  sub_2675EB7EC(v556, &qword_2801CC428, &unk_2676CEDD0);
                  v559 = v918;
                }

                else
                {
                  swift_getKeyPath();
                  OUTLINED_FUNCTION_11_8();
                  sub_267614AF4(v560, v561);
                  v562 = sub_2676CA8CC();

                  v563 = *(v939 + 8);
                  v564 = OUTLINED_FUNCTION_83();
                  v565(v564);
                  v566 = v903;
                  sub_267698E74(v562);
                  v567 = v566;

                  v568 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
                  v569 = OUTLINED_FUNCTION_34_1();
                  OUTLINED_FUNCTION_21_3(v569, v570, v568);
                  v559 = v918;
                  if (v571)
                  {
                    sub_2675EB7EC(v567, &qword_2801CC168, &unk_2676CF510);
                    v551 = v936;
                  }

                  else
                  {
                    swift_getKeyPath();
                    OUTLINED_FUNCTION_31_1();
                    sub_267614AF4(v653, v654);
                    v655 = v895;
                    sub_2676CA87C();

                    OUTLINED_FUNCTION_14_2(v568);
                    (*(v656 + 8))(v567, v568);
                    v657 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
                    OUTLINED_FUNCTION_18_5(v655);
                    if (!v658)
                    {
                      swift_getKeyPath();
                      sub_2676CA84C();

                      OUTLINED_FUNCTION_25_3();
                      (*(v861 + 8))(v655, v657);
                      v552 = v950;
                      v551 = v936;
LABEL_122:
                      v662 = v917;
                      v974(v917, v976, v551);
                      OUTLINED_FUNCTION_17_2();
                      __swift_storeEnumTagSinglePayload(v663, v664, v665, v551);
                      v666 = *(v937 + 48);
                      v667 = v911;
                      sub_2675F95E4(v559, v911, &qword_2801CC618, &qword_2676CF520);
                      sub_2675F95E4(v662, v667 + v666, &qword_2801CC618, &qword_2676CF520);
                      OUTLINED_FUNCTION_21_3(v667, 1, v551);
                      if (!v236)
                      {
                        v674 = v904;
                        sub_2675F95E4(v667, v904, &qword_2801CC618, &qword_2676CF520);
                        OUTLINED_FUNCTION_21_3(v667 + v666, 1, v551);
                        if (!v675)
                        {
                          v818 = v938;
                          (*(v938 + 32))(v905, v667 + v666, v551);
                          OUTLINED_FUNCTION_30_2();
                          sub_267614AF4(v819, v820);
                          v821 = sub_2676CBF1C();
                          v822 = *(v818 + 8);
                          v823 = OUTLINED_FUNCTION_65_0();
                          v822(v823);
                          OUTLINED_FUNCTION_84();
                          sub_2675EB7EC(v824, v825, v826);
                          OUTLINED_FUNCTION_84();
                          sub_2675EB7EC(v827, v828, v829);
                          (v822)(v674, v551);
                          OUTLINED_FUNCTION_84();
                          sub_2675EB7EC(v830, v831, v832);
                          if ((v821 & 1) == 0)
                          {
                            LODWORD(v976) = 1;
                            goto LABEL_133;
                          }

                          goto LABEL_128;
                        }

                        OUTLINED_FUNCTION_46_0();
                        sub_2675EB7EC(v676, v677, v678);
                        OUTLINED_FUNCTION_46_0();
                        sub_2675EB7EC(v679, v680, v681);
                        (*(v938 + 8))(v674, v551);
LABEL_132:
                        sub_2675EB7EC(v667, &qword_2801CC610, &unk_2676D0C10);
                        LODWORD(v976) = 1;
                        goto LABEL_133;
                      }

                      OUTLINED_FUNCTION_46_0();
                      sub_2675EB7EC(v668, v669, v670);
                      OUTLINED_FUNCTION_46_0();
                      sub_2675EB7EC(v671, v672, v673);
                      OUTLINED_FUNCTION_21_3(v667 + v666, 1, v551);
                      if (!v236)
                      {
                        goto LABEL_132;
                      }

                      v550 = v667;
LABEL_127:
                      sub_2675EB7EC(v550, &qword_2801CC618, &qword_2676CF520);
LABEL_128:
                      LODWORD(v976) = 0;
LABEL_133:
                      swift_getKeyPath();
                      v682 = v923;
                      OUTLINED_FUNCTION_68();

                      v683 = OUTLINED_FUNCTION_34_1();
                      OUTLINED_FUNCTION_21_3(v683, v684, v552);
                      if (v236)
                      {
                        sub_2675EB7EC(v682, &qword_2801CC428, &unk_2676CEDD0);
                        v978 = 0;
                        v974 = 0;
                      }

                      else
                      {
                        swift_getKeyPath();
                        v978 = sub_2676CA89C();
                        v974 = v685;

                        v686 = *(v939 + 8);
                        v687 = OUTLINED_FUNCTION_83();
                        v688(v687);
                      }

                      v689 = v979;
                      v691 = v924;
                      v690 = v925;
                      MEMORY[0x26D5FC0E0](0x636E657265666572, 0xE900000000000065, v979);
                      v692 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6F0, "м");
                      OUTLINED_FUNCTION_18_5(v690);
                      if (v236)
                      {
                        MEMORY[0x26D5FC0E0](0x746567726174, 0xE600000000000000, v689);
                        OUTLINED_FUNCTION_18_5(v691);
                        if (v236)
                        {
                          MEMORY[0x26D5FC0E0](0x797469746E65, 0xE600000000000000, v689);
                          OUTLINED_FUNCTION_18_5(v691);
                          v699 = v959;
                          if (!v236)
                          {
                            sub_2675EB7EC(v691, &qword_2801CC608, &unk_2676CF500);
                          }
                        }

                        else
                        {
                          OUTLINED_FUNCTION_25_3();
                          (*(v701 + 32))(v951, v691, v692);
                          OUTLINED_FUNCTION_17_2();
                          __swift_storeEnumTagSinglePayload(v702, v703, v704, v692);
                          v699 = v959;
                        }

                        OUTLINED_FUNCTION_18_5(v690);
                        v700 = v926;
                        if (!v236)
                        {
                          sub_2675EB7EC(v690, &qword_2801CC608, &unk_2676CF500);
                        }
                      }

                      else
                      {
                        OUTLINED_FUNCTION_25_3();
                        v694 = *(v693 + 32);
                        OUTLINED_FUNCTION_84();
                        v695();
                        OUTLINED_FUNCTION_17_2();
                        __swift_storeEnumTagSinglePayload(v696, v697, v698, v692);
                        v699 = v959;
                        v700 = v926;
                      }

                      sub_2675F95E4(v951, v700, &qword_2801CC608, &unk_2676CF500);
                      OUTLINED_FUNCTION_18_5(v700);
                      if (v236)
                      {
                        sub_2675EB7EC(v700, &qword_2801CC608, &unk_2676CF500);
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6F8, &qword_2676CF6C0);
                        OUTLINED_FUNCTION_5_2();
                      }

                      else
                      {
                        v705 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6F8, &qword_2676CF6C0);
                        sub_2676325D4(v699 + *(v705 + 128), v706, v707, v708, v709, v710, v711, v712, v892, v893, v894, v895, v896, v897, v898, v899, v900, v901, v902, v903);
                        v714 = v713;
                        v716 = v715;
                        v718 = v717;
                        v720 = v719;
                        LODWORD(v973) = v719 >> 8;
                        v721 = HIWORD(v719);
                        v722 = HIBYTE(v719);
                        OUTLINED_FUNCTION_25_3();
                        (*(v723 + 8))(v700, v692);
                        *v959 = v714;
                        *(v959 + 8) = v716;
                        *(v959 + 16) = v718;
                        *(v959 + 24) = v720;
                        *(v959 + 25) = v973;
                        v699 = v959;
                        *(v959 + 26) = v721;
                        *(v699 + 27) = v722;
                        OUTLINED_FUNCTION_17_2();
                        v727 = v705;
                      }

                      __swift_storeEnumTagSinglePayload(v724, v725, v726, v727);
                      v728 = v932;
                      v730 = v929;
                      v729 = v930;
                      v732 = v927;
                      v731 = v928;
                      sub_2676C9F8C();
                      v733 = v983;
                      sub_2676149CC(v983 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_linkServicesProvider, &v1014);
                      sub_2676149CC(v733 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_responseFactory, &v1011);
                      v734 = *(v733 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_globals);
                      sub_2675F95E4(v699, v732, &qword_2801CC600, &qword_2676CF4F8);
                      v735 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6F8, &qword_2676CF6C0);
                      OUTLINED_FUNCTION_17_7(v732);
                      if (v236)
                      {
                        v736 = v734;
                        sub_2675EB7EC(v732, &qword_2801CC600, &qword_2676CF4F8);
                        v983 = MEMORY[0x277D84F90];
                      }

                      else
                      {
                        v983 = *v732;
                        v737 = v732[2];
                        v738 = v734;

                        sub_2675EB7EC(v732 + *(v735 + 128), &qword_2801CC1E8, &qword_2676CF570);
                      }

                      v739 = v931;
                      v740 = OUTLINED_FUNCTION_83();
                      sub_2675F95E4(v740, v741, v742, v743);
                      OUTLINED_FUNCTION_17_7(v731);
                      if (v236)
                      {
                        sub_2675EB7EC(v731, &qword_2801CC600, &qword_2676CF4F8);
                        v973 = 0;
                        v972 = 0;
                      }

                      else
                      {
                        v744 = *v731;

                        v745 = v731[2];
                        v973 = v731[1];
                        v972 = v745;
                        sub_2675EB7EC(v731 + *(v735 + 128), &qword_2801CC1E8, &qword_2676CF570);
                      }

                      sub_2675F95E4(v699, v730, &qword_2801CC600, &qword_2676CF4F8);
                      OUTLINED_FUNCTION_17_7(v730);
                      if (v236)
                      {
                        sub_2675EB7EC(v730, &qword_2801CC600, &qword_2676CF4F8);
                        LODWORD(v967) = 2;
                      }

                      else
                      {
                        v746 = *v730;

                        v747 = *(v730 + 16);

                        LODWORD(v967) = *(v730 + 24);
                        sub_2675EB7EC(v730 + *(v735 + 128), &qword_2801CC1E8, &qword_2676CF570);
                      }

                      sub_2675F95E4(v699, v729, &qword_2801CC600, &qword_2676CF4F8);
                      OUTLINED_FUNCTION_17_7(v729);
                      if (v236)
                      {
                        sub_2675EB7EC(v729, &qword_2801CC600, &qword_2676CF4F8);
                        v750 = 2;
                      }

                      else
                      {
                        v748 = *v729;

                        v749 = *(v729 + 16);

                        v750 = *(v729 + 25);
                        sub_2675EB7EC(v729 + *(v735 + 128), &qword_2801CC1E8, &qword_2676CF570);
                      }

                      sub_2675F95E4(v699, v739, &qword_2801CC600, &qword_2676CF4F8);
                      OUTLINED_FUNCTION_17_7(v739);
                      if (v236)
                      {
                        sub_2675EB7EC(v739, &qword_2801CC600, &qword_2676CF4F8);
                        LODWORD(v965) = 2;
                      }

                      else
                      {
                        v751 = *v739;

                        v752 = *(v739 + 16);

                        LODWORD(v965) = *(v739 + 26);
                        sub_2675EB7EC(v739 + *(v735 + 128), &qword_2801CC1E8, &qword_2676CF570);
                      }

                      sub_2675F95E4(v699, v728, &qword_2801CC600, &qword_2676CF4F8);
                      OUTLINED_FUNCTION_17_7(v728);
                      if (v236)
                      {
                        sub_2675EB7EC(v728, &qword_2801CC600, &qword_2676CF4F8);
                        LODWORD(v964) = 2;
                      }

                      else
                      {
                        v753 = *v728;

                        v754 = *(v728 + 16);

                        LODWORD(v964) = *(v728 + 27);
                        sub_2675EB7EC(v728 + *(v735 + 128), &qword_2801CC1E8, &qword_2676CF570);
                      }

                      v755 = v699;
                      v756 = v933;
                      sub_2675F95E4(v755, v933, &qword_2801CC600, &qword_2676CF4F8);
                      OUTLINED_FUNCTION_17_7(v756);
                      LODWORD(v966) = v750;
                      if (v236)
                      {
                        sub_2675EB7EC(v756, &qword_2801CC600, &qword_2676CF4F8);
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F0, &unk_2676CE100);
                        OUTLINED_FUNCTION_5_2();
                        __swift_storeEnumTagSinglePayload(v757, v758, v759, v760);
                      }

                      else
                      {
                        v761 = *v756;

                        v762 = v756[2];

                        sub_26761495C(v756 + *(v735 + 128), v944);
                      }

                      v763 = v981;
                      v1009 = v981;
                      v1010 = &off_2878AD4E0;
                      __swift_allocate_boxed_opaque_existential_1(v1008);
                      sub_2676CAB8C();
                      __swift_mutable_project_boxed_opaque_existential_1(v1008, v1009);
                      OUTLINED_FUNCTION_41_0();
                      v963 = v764;
                      OUTLINED_FUNCTION_5_11();
                      v766 = *(v765 + 64);
                      MEMORY[0x28223BE20](v767);
                      OUTLINED_FUNCTION_3_2();
                      v770 = v769 - v768;
                      (*(v771 + 16))(v769 - v768);
                      v1006 = v763;
                      v1007 = &off_2878AD4E0;
                      v772 = __swift_allocate_boxed_opaque_existential_1(v1005);
                      v773 = *(v980 + 4);
                      v773(v772, v770, v763);
                      v774 = type metadata accessor for ReplyMessageFlow();
                      OUTLINED_FUNCTION_20_4(v774);
                      v775 = swift_allocObject();
                      __swift_mutable_project_boxed_opaque_existential_1(v1005, v1006);
                      OUTLINED_FUNCTION_41_0();
                      v980 = v776;
                      OUTLINED_FUNCTION_5_11();
                      v778 = *(v777 + 64);
                      MEMORY[0x28223BE20](v779);
                      OUTLINED_FUNCTION_3_2();
                      v782 = v781 - v780;
                      (*(v783 + 16))(v781 - v780);
                      v1003 = v763;
                      v1004 = &off_2878AD4E0;
                      v784 = __swift_allocate_boxed_opaque_existential_1(&v1002);
                      v773(v784, v782, v763);
                      sub_2676C97BC();
                      sub_2676C8C8C();
                      OUTLINED_FUNCTION_5_2();
                      __swift_storeEnumTagSinglePayload(v785, v786, v787, v788);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
                      OUTLINED_FUNCTION_5_2();
                      __swift_storeEnumTagSinglePayload(v789, v790, v791, v792);
                      sub_2676C9ECC();
                      v793 = v1000;
                      v794 = v1001;
                      __swift_project_boxed_opaque_existential_1(v999, v1000);
                      LODWORD(v793) = sub_267691338(v793, v794);
                      __swift_destroy_boxed_opaque_existential_1(v999);
                      if (v793 & v971)
                      {
                        v795 = sub_2676CBE2C();
                        v796 = sub_2676CC23C();
                        v797 = OUTLINED_FUNCTION_5_7(v796);
                        v798 = v983;
                        if (v797)
                        {
                          v799 = OUTLINED_FUNCTION_17_3();
                          *v799 = 0;
                          _os_log_impl(&dword_2675D4000, v795, v796, "#ReplyMessageFlow user is in the car and their device is locked - we cannot get emails.", v799, 2u);
                          OUTLINED_FUNCTION_2_5();
                        }

                        v800 = 0xC000000000000000;
                        LOBYTE(v801) = v966;
                      }

                      else
                      {
                        v800 = 0xC000000000000008;
                        v798 = v983;
                        v801 = v966;
                        if (!*(v983 + 16))
                        {
                          v802 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F0, &unk_2676CE100);
                          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v944, 1, v802);
                          if (v801 == 2 && EnumTagSinglePayload == 1)
                          {
                            v800 = 0xC000000000000018;
                          }
                        }
                      }

                      *(v775 + 16) = v800;
                      v805 = (v775 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_messageBodyPayload);
                      v806 = v974;
                      *v805 = v978;
                      v805[1] = v806;
                      *(v775 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_replyOption) = v976;
                      *(v775 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_senderInput) = v798;
                      v807 = (v775 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_subjectInput);
                      v808 = v972;
                      *v807 = v973;
                      v807[1] = v808;
                      *(v775 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_isReadInput) = v967;
                      *(v775 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_isNewInput) = v801;
                      v809 = v944;
                      sub_2675F95E4(v944, v775 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_dateTimeInput, &qword_2801CC1E8, &qword_2676CF570);
                      *(v775 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_isMostRecent) = v965;
                      *(v775 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_shouldResolveOnscreenEntity) = v964;
                      sub_2675DD73C(&v1002, v775 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_dateTimeResolver);
                      sub_2675DD73C(&v1014, v775 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_linkServicesProvider);
                      sub_2675DD73C(&v1011, v775 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_responseFactory);
                      *(v775 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_globals) = v734;
                      *(v775 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_hasExactSpanMatch) = 0;
                      sub_2675EB7EC(v809, &qword_2801CC1E8, &qword_2676CF570);
                      __swift_destroy_boxed_opaque_existential_1(v1005);
                      __swift_destroy_boxed_opaque_existential_1(v1008);
                      v1008[0] = v775;
                      v1015 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC700, &qword_2676CF6C8);
                      v810 = sub_267614AF4(&qword_2801CC708, type metadata accessor for ReplyMessageFlow);
                      *&v1011 = v774;
                      *(&v1011 + 1) = v810;
                      v811 = OUTLINED_FUNCTION_7_10();
                      OUTLINED_FUNCTION_56(v811);
                      OUTLINED_FUNCTION_51_0();
                      sub_2676C943C();

                      OUTLINED_FUNCTION_55_0();
                      v812 = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
                      OUTLINED_FUNCTION_95(v812);
                      OUTLINED_FUNCTION_13_7();
                      sub_2676C9F6C();
                      v813 = OUTLINED_FUNCTION_15_7();
                      v814(v813);
                      sub_2675EB7EC(v959, &qword_2801CC600, &qword_2676CF4F8);
                      sub_2675EB7EC(v951, &qword_2801CC608, &unk_2676CF500);
                      v815 = *(v943 + 8);
                      v816 = v958;
                      v817 = v957;
LABEL_179:
                      v815(v816, v817);
                      goto LABEL_180;
                    }

                    sub_2675EB7EC(v655, &qword_2801CC050, &unk_2676D0C20);
                    v552 = v950;
                    v551 = v936;
                  }
                }

                OUTLINED_FUNCTION_5_2();
                __swift_storeEnumTagSinglePayload(v659, v660, v661, v551);
                goto LABEL_122;
              }

              sub_2675EB7EC(v541, &qword_2801CC618, &qword_2676CF520);
              OUTLINED_FUNCTION_91();
              (*(v938 + 8))(v554, v546);
              v551 = v546;
            }

            sub_2675EB7EC(&qword_2801CC618, &qword_2801CC610, &unk_2676D0C10);
            v552 = v950;
            goto LABEL_97;
          }

          sub_2675EB7EC(v631, &qword_2801CC050, &unk_2676D0C20);
          v476 = v936;
LABEL_87:
          v537 = v922;
          OUTLINED_FUNCTION_5_2();
          __swift_storeEnumTagSinglePayload(v538, v539, v540, v476);
          goto LABEL_88;
        }

        v485 = &qword_2801CC168;
        v486 = &unk_2676CF510;
      }

      sub_2675EB7EC(v482, v485, v486);
      goto LABEL_87;
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v332, v333, v334, v242);
  }

  sub_2675EB7EC(v137, &qword_2801CC640, &unk_2676CF550);
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v335 = sub_2676CBE4C();
  v336 = OUTLINED_FUNCTION_67(v335, qword_2801CDC90);
  v337 = sub_2676CC24C();
  if (OUTLINED_FUNCTION_5_7(v337))
  {
    *OUTLINED_FUNCTION_17_3() = 0;
    OUTLINED_FUNCTION_44_0(&dword_2675D4000, v338, v339, "#MailFlowFactory failed to extract DynamicTask, returning noFlow");
    OUTLINED_FUNCTION_2_5();
  }

  v241[3] = v982;
  v241[4] = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
  __swift_allocate_boxed_opaque_existential_1(v241);
  sub_2676C9F8C();
LABEL_182:
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_267614058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC748, &unk_2676CF7E0);
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20]();
  v11 = &v13 - v10;
  sub_2675F95E4(a1, &v13 - v10, &qword_2801CC748, &unk_2676CF7E0);
  return a5(v11);
}

uint64_t sub_267614120()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 32) + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_deviceStateConnection), *(*(v0 + 32) + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_deviceStateConnection + 24));
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_2676141C4;

  return sub_2675F4568();
}

uint64_t sub_2676141C4()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_8_6();
  *v2 = v1;
  v4 = *(v3 + 40);
  *v2 = *v0;
  *(v1 + 48) = v5;

  return MEMORY[0x2822009F8](sub_2676142B8, 0, 0);
}

uint64_t sub_2676142B8()
{
  v1 = v0[6];
  if (v1)
  {
    v0[2] = 0xD000000000000014;
    v0[3] = 0x80000002676D6080;
    v2 = swift_task_alloc();
    *(v2 + 16) = v0 + 2;
    v3 = sub_2676A25A0(sub_2676147E0, v2, v1);
  }

  else
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v4 = sub_2676CBE4C();
    v5 = OUTLINED_FUNCTION_67(v4, qword_2801CDC90);
    v6 = sub_2676CC24C();
    if (OUTLINED_FUNCTION_5_7(v6))
    {
      v7 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v7);
      OUTLINED_FUNCTION_39_0(&dword_2675D4000, v8, v6, "fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictions() returned nil, assuming preview is restricted");
      OUTLINED_FUNCTION_4_6();
    }

    v3 = 1;
  }

  v9 = v0[1];

  return v9(v3);
}

uint64_t sub_26761440C()
{
  sub_267614ADC(*(v0 + 16));
  v1 = *(v0 + 24);

  sub_2675EB7EC(v0 + 32, &qword_2801CC690, &unk_2676CF580);
  v2 = OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_inputParse;
  v3 = sub_2676C9EBC();
  OUTLINED_FUNCTION_2_6(v3);
  (*(v4 + 8))(v0 + v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_linkServicesProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_responseFactory));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_readingUtil));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_featureFlags));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_deviceStateConnection));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16SiriMailInternal16MailDelegateFlow_privacyDisclosureManager));
  return v0;
}

uint64_t sub_2676144FC()
{
  sub_26761440C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for MailDelegateFlow()
{
  result = qword_2801CC5D0;
  if (!qword_2801CC5D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2676145A8()
{
  result = sub_2676C9EBC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriMailInternal0B12DelegateFlowC5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_267614694(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2676146F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_267614740(void *result, int a2)
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

void sub_267614794()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    sub_26760747C();
    *v0 = v4;
  }
}

unint64_t sub_267614800()
{
  result = qword_2801CC698;
  if (!qword_2801CC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC698);
  }

  return result;
}

uint64_t sub_267614854(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6A8, &unk_2676CF5F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2676148C4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_26761495C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1E8, &qword_2676CF570);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2676149CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_14_2(v3);
  (*v4)(a2);
  return a2;
}

unint64_t sub_267614A2C(unint64_t result)
{
  switch(result >> 60)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_267614A64()
{
  result = qword_2801CC740;
  if (!qword_2801CC740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC740);
  }

  return result;
}

unint64_t sub_267614AB8(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_267614AC8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 8)
  {
  }

  return result;
}

unint64_t sub_267614ADC(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_267614AF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267614B3C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_54_0(v6);
  *v7 = v8;
  v7[1] = sub_267614BF8;
  OUTLINED_FUNCTION_57_0();

  return sub_26760DD20(v9, v10, v11, v12, v4, v5);
}

uint64_t sub_267614BF8()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_8_6();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_267614CE0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_54_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_42_0(v4);

  return v7(v6);
}

uint64_t sub_267614D78()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_54_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_42_0(v4);

  return v7(v6);
}

uint64_t OUTLINED_FUNCTION_0_13(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_2676148C4(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_4_10(uint64_t a1)
{
  *(v1 - 176) = a1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_6_8(unint64_t *a1)
{

  return sub_2676148C4(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_7_10()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_14_7()
{
  *(v1 - 160) = 0;
  v0[70] = 0u;
  v0[71] = 0u;
  *(v1 - 208) = 0;
  v0[67] = 0u;
  v0[68] = 0u;

  return sub_2676C9B9C();
}

uint64_t OUTLINED_FUNCTION_20_4(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

uint64_t OUTLINED_FUNCTION_36_1()
{
  v1 = *(v0[88] + 8);
  result = v0[84];
  v3 = v0[89];
  return result;
}

void OUTLINED_FUNCTION_39_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_42_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_43@<X0>(uint64_t a1@<X8>)
{
  v2[127] = v1;
  v2[126] = v5;
  v2[123] = a1;
  v2[121] = v4;
  v2[122] = v3;
}

void OUTLINED_FUNCTION_44_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_45_0()
{

  return sub_2676C981C();
}

uint64_t OUTLINED_FUNCTION_48()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 824));

  return sub_2675DD73C((v0 + 744), v0 + 784);
}

uint64_t *OUTLINED_FUNCTION_56(uint64_t a1)
{
  *(v1 - 104) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 - 136));
}

uint64_t OUTLINED_FUNCTION_58_0@<X0>(uint64_t a1@<X8>)
{
  *(v3 + a1) = *(v1 + 704);
  v4 = *(v2 + 2800);
  return *(v1 + 600);
}

void OUTLINED_FUNCTION_66_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_67(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_2676CBE2C();
}

uint64_t OUTLINED_FUNCTION_68()
{
  v2 = *(v0 + 608);
  v3 = *(v0 + 528);

  return sub_2676CA3EC();
}

uint64_t OUTLINED_FUNCTION_69@<X0>(uint64_t a1@<X8>)
{

  return sub_2676149CC(v1 + a1, v2 - 136);
}

uint64_t OUTLINED_FUNCTION_70()
{

  return swift_beginAccess();
}

double OUTLINED_FUNCTION_73@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_74()
{
  v1 = *(v0[21] + 8);
  result = v0[27];
  v3 = v0[43];
  return result;
}

uint64_t OUTLINED_FUNCTION_87()
{
  __swift_destroy_boxed_opaque_existential_1((v0 - 208));

  return __swift_destroy_boxed_opaque_existential_1((v0 - 168));
}

uint64_t OUTLINED_FUNCTION_91()
{
  v5 = v1;
  v6 = *(v0 + 392);

  return sub_2675EB7EC(v3, v5, v2);
}

uint64_t OUTLINED_FUNCTION_94(uint64_t a1, uint64_t a2)
{

  return sub_2675F95E4(a1, a2, v2, v3);
}

uint64_t *OUTLINED_FUNCTION_95(uint64_t a1)
{
  v1[4] = a1;

  return __swift_allocate_boxed_opaque_existential_1(v1);
}

uint64_t OUTLINED_FUNCTION_96()
{

  return sub_2676C937C();
}

uint64_t OUTLINED_FUNCTION_97@<X0>(uint64_t a1@<X8>)
{

  return sub_2676149CC(v1 + 824, v2 + a1);
}

uint64_t OUTLINED_FUNCTION_98()
{
  result = __swift_destroy_boxed_opaque_existential_1((v0 + 824));
  v2 = *(v0 + 768);
  return result;
}

uint64_t OUTLINED_FUNCTION_99@<X0>(uint64_t a1@<X8>)
{

  return sub_2675DD73C((v1 + 784), v2 + a1);
}

uint64_t OUTLINED_FUNCTION_100@<X0>(uint64_t a1@<X8>)
{

  return sub_2676149CC(v1 + 944, v2 + a1);
}

uint64_t OUTLINED_FUNCTION_101(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2675F95E4(v5 - 192, v4 + 984, a3, a4);
}

uint64_t OUTLINED_FUNCTION_102()
{

  return sub_2676149CC(v1 - 136, v0 + 944);
}

uint64_t OUTLINED_FUNCTION_103()
{
  result = __swift_destroy_boxed_opaque_existential_1((v1 - 136));
  *(v1 - 136) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_104(uint64_t a1, uint64_t a2)
{

  return sub_2675F95E4(a1, a2, v2, v3);
}

uint64_t sub_267615530@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  sub_26761578C(v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_267616750(v10);
    v17 = 1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    (*(v12 + 16))(v8, v16, v11);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v11);
    sub_2676CA3BC();
    (*(v12 + 8))(v16, v11);
    v17 = 0;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  return __swift_storeEnumTagSinglePayload(a1, v17, 1, v18);
}

uint64_t sub_267615740()
{
  v0 = sub_2676CC50C();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26761578C@<X0>(uint64_t a1@<X8>)
{
  v318 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC030, &qword_2676CDAA0);
  OUTLINED_FUNCTION_4_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_1();
  v317 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_1();
  v316 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC040, &qword_2676CDAA8);
  OUTLINED_FUNCTION_4_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9_1();
  v315 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  OUTLINED_FUNCTION_4_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_1();
  v314 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  OUTLINED_FUNCTION_4_1(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9_1();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC058, &unk_2676D0C50);
  OUTLINED_FUNCTION_4_1(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9_1();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC060, &qword_2676CDAB8);
  OUTLINED_FUNCTION_4_1(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_9_1();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  OUTLINED_FUNCTION_4_1(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_9_1();
  v38 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC780, &qword_2676CF830);
  OUTLINED_FUNCTION_4_1(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_9_1();
  v319 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC788, &qword_2676CF838);
  OUTLINED_FUNCTION_4_1(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v47);
  v49 = &v308 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC790, &qword_2676CF840);
  OUTLINED_FUNCTION_4_1(v50);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v53);
  v55 = &v308 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC798, &qword_2676CF848);
  OUTLINED_FUNCTION_4_1(v56);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v59);
  v61 = &v308 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1E8, &qword_2676CF570);
  OUTLINED_FUNCTION_4_1(v62);
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v65);
  v67 = &v308 - v66;

  switch(sub_267615740())
  {
    case 1u:
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v68 = sub_2676CBE4C();
      __swift_project_value_buffer(v68, qword_2801CDC90);
      v69 = sub_2676CBE2C();
      v70 = sub_2676CC23C();
      v71 = OUTLINED_FUNCTION_12_6(v70);
      v310 = v38;
      if (v71)
      {
        v72 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_1_13(v72);
        OUTLINED_FUNCTION_9_9(&dword_2675D4000, v73, v74, "[MailReactiveResolve.getUSOEntity()] Encountered sendMail DI, building corresponding entity");
        OUTLINED_FUNCTION_2_15();
      }

      v312 = v67;
      v313 = v61;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F0, &unk_2676CE100);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7A0, &qword_2676CF850);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7A8, &qword_2676CF858);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7B0, &qword_2676CF860);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v87, v88, v89, v90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7B8, &qword_2676CF868);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v91, v92, v93, v94);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
      v95 = OUTLINED_FUNCTION_4_11();
      __swift_storeEnumTagSinglePayload(v95, v96, v97, v98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v99, v100, v101, v102);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v103, v104, v105, v106);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
      v107 = OUTLINED_FUNCTION_3_9();
      __swift_storeEnumTagSinglePayload(v107, v108, v109, v110);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v111, v112, v113, v114);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v115, v116, v117, v118);
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
      v120 = OUTLINED_FUNCTION_4_11();
      __swift_storeEnumTagSinglePayload(v120, v121, v122, v119);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
      v123 = OUTLINED_FUNCTION_3_9();
      __swift_storeEnumTagSinglePayload(v123, v124, v125, v126);
      goto LABEL_17;
    case 2u:
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v242 = sub_2676CBE4C();
      __swift_project_value_buffer(v242, qword_2801CDC90);
      v243 = sub_2676CBE2C();
      v244 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_12_6(v244))
      {
        v245 = OUTLINED_FUNCTION_17_3();
        v310 = v38;
        OUTLINED_FUNCTION_1_13(v245);
        OUTLINED_FUNCTION_9_9(&dword_2675D4000, v246, v247, "[MailReactiveResolve.getUSOEntity()] Encountered sendMailWithSubjectBody DI, building corresponding entity");
        OUTLINED_FUNCTION_2_15();
      }

      v312 = v67;
      v309 = v55;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F0, &unk_2676CE100);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v248, v249, v250, v251);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7A0, &qword_2676CF850);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v252, v253, v254, v255);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7A8, &qword_2676CF858);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v256, v257, v258, v259);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7B0, &qword_2676CF860);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v260, v261, v262, v263);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7B8, &qword_2676CF868);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v264, v265, v266, v267);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
      v268 = OUTLINED_FUNCTION_4_11();
      __swift_storeEnumTagSinglePayload(v268, v269, v270, v271);
      v308 = 0x80000002676D69E0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v272, v273, v274, v275);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v276, v277, v278, v279);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
      v311 = v49;
      v280 = OUTLINED_FUNCTION_3_9();
      __swift_storeEnumTagSinglePayload(v280, v281, v282, v283);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v284, v285, v286, v287);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v288, v289, v290, v291);
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
      v292 = OUTLINED_FUNCTION_3_9();
      __swift_storeEnumTagSinglePayload(v292, v293, v294, v119);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v295, v296, v297, v298);
      OUTLINED_FUNCTION_15_8();
      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_6_9();
      v184 = v318;
      OUTLINED_FUNCTION_13_8();
      goto LABEL_23;
    case 3u:
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v127 = sub_2676CBE4C();
      __swift_project_value_buffer(v127, qword_2801CDC90);
      v128 = sub_2676CBE2C();
      v129 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_12_6(v129))
      {
        v130 = OUTLINED_FUNCTION_17_3();
        v310 = v38;
        OUTLINED_FUNCTION_1_13(v130);
        OUTLINED_FUNCTION_9_9(&dword_2675D4000, v131, v132, "[MailReactiveResolve.getUSOEntity()] Encountered sendMailWithSubject DI, building corresponding entity");
        OUTLINED_FUNCTION_2_15();
      }

      v313 = v61;
      v309 = v55;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F0, &unk_2676CE100);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v133, v134, v135, v136);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7A0, &qword_2676CF850);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v137, v138, v139, v140);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7A8, &qword_2676CF858);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v141, v142, v143, v144);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7B0, &qword_2676CF860);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v145, v146, v147, v148);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7B8, &qword_2676CF868);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v149, v150, v151, v152);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
      v153 = OUTLINED_FUNCTION_4_11();
      __swift_storeEnumTagSinglePayload(v153, v154, v155, v156);
      v308 = 0x80000002676D69E0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v157, v158, v159, v160);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
      v311 = v49;
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v161, v162, v163, v164);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
      v165 = OUTLINED_FUNCTION_3_9();
      __swift_storeEnumTagSinglePayload(v165, v166, v167, v168);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
      v169 = OUTLINED_FUNCTION_4_11();
      __swift_storeEnumTagSinglePayload(v169, v170, v171, v172);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v173, v174, v175, v176);
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v177, v178, v179, v119);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
      v180 = OUTLINED_FUNCTION_3_9();
      __swift_storeEnumTagSinglePayload(v180, v181, v182, v183);
      OUTLINED_FUNCTION_15_8();
      OUTLINED_FUNCTION_6_9();
      v184 = v318;
      OUTLINED_FUNCTION_13_8();
      goto LABEL_23;
    case 4u:
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v185 = sub_2676CBE4C();
      __swift_project_value_buffer(v185, qword_2801CDC90);
      v186 = sub_2676CBE2C();
      v187 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_12_6(v187))
      {
        v188 = OUTLINED_FUNCTION_17_3();
        v310 = v38;
        OUTLINED_FUNCTION_1_13(v188);
        OUTLINED_FUNCTION_9_9(&dword_2675D4000, v189, v190, "[MailReactiveResolve.getUSOEntity()] Encountered sendMailWithBody DI, building corresponding entity");
        OUTLINED_FUNCTION_2_15();
      }

      v312 = v67;
      v313 = v61;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F0, &unk_2676CE100);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v191, v192, v193, v194);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7A0, &qword_2676CF850);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v195, v196, v197, v198);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7A8, &qword_2676CF858);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v199, v200, v201, v202);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7B0, &qword_2676CF860);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v203, v204, v205, v206);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7B8, &qword_2676CF868);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v207, v208, v209, v210);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
      v211 = OUTLINED_FUNCTION_4_11();
      __swift_storeEnumTagSinglePayload(v211, v212, v213, v214);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v215, v216, v217, v218);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
      v311 = v49;
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v219, v220, v221, v222);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
      v223 = OUTLINED_FUNCTION_3_9();
      __swift_storeEnumTagSinglePayload(v223, v224, v225, v226);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
      v227 = OUTLINED_FUNCTION_4_11();
      __swift_storeEnumTagSinglePayload(v227, v228, v229, v230);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v231, v232, v233, v234);
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
      v235 = OUTLINED_FUNCTION_3_9();
      __swift_storeEnumTagSinglePayload(v235, v236, v237, v119);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v238, v239, v240, v241);
      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_6_9();
LABEL_17:
      v184 = v318;
      OUTLINED_FUNCTION_13_8();
LABEL_23:
      sub_2676CA80C();
      result = __swift_storeEnumTagSinglePayload(v184, 0, 1, v119);
      break;
    default:
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v300 = sub_2676CBE4C();
      __swift_project_value_buffer(v300, qword_2801CDC90);
      v301 = sub_2676CBE2C();
      v302 = sub_2676CC23C();
      if (os_log_type_enabled(v301, v302))
      {
        v303 = OUTLINED_FUNCTION_17_3();
        *v303 = 0;
        _os_log_impl(&dword_2675D4000, v301, v302, "[MailReactiveResolve.getUSOEntity()] Encountered unsupported DI ID, returning nil", v303, 2u);
        MEMORY[0x26D5FEA80](v303, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
      OUTLINED_FUNCTION_5_2();

      result = __swift_storeEnumTagSinglePayload(v304, v305, v306, v307);
      break;
  }

  return result;
}

uint64_t sub_267616750(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_2_15()
{
  v2 = *(v0 - 160);

  JUMPOUT(0x26D5FEA80);
}

void OUTLINED_FUNCTION_9_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_12_6(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t getEnumTagSinglePayload for Features(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Features(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267616A54()
{
  result = qword_2801CC7C0;
  if (!qword_2801CC7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC7C0);
  }

  return result;
}

const char *sub_267616AA8(unsigned __int8 a1)
{
  v1 = "Link";
  if (a1 != 2)
  {
    v1 = "SiriMail";
  }

  if (a1 - 3 >= 2)
  {
    return v1;
  }

  else
  {
    return "Mail";
  }
}

const char *sub_267616AF4(char a1)
{
  result = "SiriX";
  switch(a1)
  {
    case 1:
      result = "Encore";
      break;
    case 2:
      result = "viewActions";
      break;
    case 3:
      result = "CatchUp";
      break;
    case 4:
      result = "ClassCData";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267616BA4(unsigned __int8 a1)
{
  sub_2676CC64C();
  MEMORY[0x26D5FE320](a1);
  return sub_2676CC67C();
}

uint64_t sub_267616C08()
{
  v1 = *v0;
  sub_2676CC64C();
  MEMORY[0x26D5FE320](v1);
  return sub_2676CC67C();
}

uint64_t sub_267616C5C()
{
  v0 = *MEMORY[0x277D06C60];
  v1 = objc_allocWithZone(MEMORY[0x277D06E58]);
  v2 = sub_267616D18(v0, 1, 0, 0);
  v3 = [v2 isEnabled];

  if (v3 && EMIsGreymatterAvailable())
  {
    v6[3] = &type metadata for Features;
    v6[4] = sub_267614A64();
    LOBYTE(v6[0]) = 3;
    v4 = sub_2676CA04C();
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

id sub_267616D18(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v10[4] = a3;
    v10[5] = a4;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_267616DE4;
    v10[3] = &block_descriptor_0;
    v7 = _Block_copy(v10);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithUserDefaultKey:a1 keyRepresentsDisabled:a2 & 1 handler:v7];
  _Block_release(v7);

  return v8;
}

uint64_t sub_267616DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_2676CBF6C();
  v8 = v7;

  v5(v6, v8, a3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_267616E78@<X0>(char a1@<W0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v425 = a9;
  v423 = a7;
  v424 = a8;
  v421 = a5;
  v422 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1E8, &qword_2676CF570);
  OUTLINED_FUNCTION_4_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_1();
  v430 = v18;
  OUTLINED_FUNCTION_7_3();
  sub_2676CAB9C();
  OUTLINED_FUNCTION_5_11();
  v431 = v19;
  v432 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4();
  v429 = v23;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_24_1();
  v400 = v25;
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6F8, &qword_2676CF6C0);
  v26 = OUTLINED_FUNCTION_2_6(v401);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4();
  v406 = v29;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v30);
  v404 = &v391 - v31;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v32);
  v403 = (&v391 - v33);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_24_1();
  v405 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC608, &unk_2676CF500);
  v37 = OUTLINED_FUNCTION_4_1(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_4();
  v415 = v40;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_24_1();
  v399 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6F0, "м");
  OUTLINED_FUNCTION_5_11();
  v410 = v44;
  v411 = v43;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_9_1();
  v402 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC640, &unk_2676CF550);
  OUTLINED_FUNCTION_4_1(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_9_1();
  v420 = v53;
  v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC648, &qword_2676CF990);
  OUTLINED_FUNCTION_5_11();
  v414 = v54;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_9_1();
  v427 = v58;
  OUTLINED_FUNCTION_7_3();
  v398 = sub_2676CA70C();
  OUTLINED_FUNCTION_5_11();
  v409 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_3_2();
  v394 = v64 - v63;
  v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7D8, &qword_2676CF998);
  OUTLINED_FUNCTION_2_6(v397);
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_9_1();
  v413 = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7E0, &qword_2676CF9A0);
  v70 = OUTLINED_FUNCTION_4_1(v69);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_4();
  v396 = v73;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v74);
  v408 = &v391 - v75;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_24_1();
  v418 = v77;
  OUTLINED_FUNCTION_7_3();
  v78 = sub_2676CA61C();
  OUTLINED_FUNCTION_5_11();
  v416 = v79;
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_3_2();
  v395 = v84 - v83;
  v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7E8, &qword_2676CF9A8);
  OUTLINED_FUNCTION_2_6(v412);
  v86 = *(v85 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_9_1();
  v417 = v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7F0, &unk_2676CF9B0);
  v90 = OUTLINED_FUNCTION_4_1(v89);
  v92 = *(v91 + 64);
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_4();
  v407 = v93;
  OUTLINED_FUNCTION_12_0();
  v95 = MEMORY[0x28223BE20](v94);
  v97 = &v391 - v96;
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_24_1();
  v428 = v98;
  OUTLINED_FUNCTION_7_3();
  v99 = type metadata accessor for Signpost.OpenSignpost();
  v100 = OUTLINED_FUNCTION_2_6(v99);
  v102 = *(v101 + 64);
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_3_2();
  v105 = v104 - v103;
  v461[0] = a1;
  v461[1] = a2;
  v419 = a3;
  v461[2] = a3;
  sub_2675F95E4(a4, &v462, &qword_2801CC158, &qword_2676CDDA0);
  if (qword_2801CBAA8 != -1)
  {
    swift_once();
  }

  v106 = qword_2801D3F18;
  sub_2676CBE0C();
  sub_2676CC29C();
  v433 = v106;
  sub_2676CBDFC();
  v107 = *(v99 + 20);
  v463 = v105;
  v108 = v105 + v107;
  *v108 = "FindActingFlowForParse";
  *(v108 + 8) = 22;
  *(v108 + 16) = 2;
  sub_2675F95E4(v461, v458, &qword_2801CC690, &unk_2676CF580);
  if (v459)
  {
    sub_267619E0C((v458 + 8), v460);
    sub_2675F95E4(v461, v458, &qword_2801CC690, &unk_2676CF580);
    v109 = LOBYTE(v458[0]);
    sub_2675EB7EC(v458 + 8, &qword_2801CC158, &qword_2676CDDA0);
    if (v109 == 1)
    {
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_1_8();
        swift_once();
      }

      v110 = sub_2676CBE4C();
      v392 = __swift_project_value_buffer(v110, qword_2801CDC90);
      v111 = sub_2676CBE2C();
      v112 = sub_2676CC23C();
      v113 = OUTLINED_FUNCTION_7_11();
      v115 = os_log_type_enabled(v113, v114);
      v116 = v418;
      v117 = v78;
      if (v115)
      {
        OUTLINED_FUNCTION_6_10();
        v118 = swift_slowAlloc();
        *v118 = 0;
        _os_log_impl(&dword_2675D4000, v111, v112, "#MailFlowFactory returning ReadMailActingFlow", v118, 2u);
        OUTLINED_FUNCTION_5_12();
        MEMORY[0x26D5FEA80]();
      }

      v119 = [objc_opt_self() sharedInstance];
      LODWORD(v393) = [v119 isLocked];

      sub_2675EB89C(v460, v458);
      sub_2676CA5EC();
      OUTLINED_FUNCTION_21_4();
      v120 = swift_dynamicCast();
      v121 = v417;
      v122 = v428;
      if (v120)
      {

        HIDWORD(v393) = 1;
      }

      else
      {
        sub_2675EB89C(v460, v458);
        sub_2676CA59C();
        OUTLINED_FUNCTION_21_4();
        HIDWORD(v393) = swift_dynamicCast();
        if (HIDWORD(v393))
        {
        }
      }

      v419 &= 1u;
      sub_2675EB89C(v460, v458);
      OUTLINED_FUNCTION_21_4();
      if ((swift_dynamicCast() & 1) == 0)
      {
        v146 = 0;
        v147 = v426;
        goto LABEL_53;
      }

      v144 = *&v457[0];

      sub_2676CA5CC();
      v391 = v144;

      if (*&v458[0] && (v145 = sub_2676CA52C(), , v145))
      {
        sub_2676CA60C();
      }

      else
      {
        OUTLINED_FUNCTION_5_2();
        __swift_storeEnumTagSinglePayload(v148, v149, v150, v117);
      }

      (*(v416 + 104))(v97, *MEMORY[0x277D5EB00], v117);
      __swift_storeEnumTagSinglePayload(v97, 0, 1, v117);
      v151 = *(v412 + 48);
      OUTLINED_FUNCTION_28_2(v122);
      sub_2675F95E4(v97, v121 + v151, &qword_2801CC7F0, &unk_2676CF9B0);
      OUTLINED_FUNCTION_18_3(v121);
      if (v154)
      {
        OUTLINED_FUNCTION_36_2(v97);
        OUTLINED_FUNCTION_36_2(v122);
        OUTLINED_FUNCTION_18_3(v121 + v151);
        if (v154)
        {
          sub_2675EB7EC(v121, &qword_2801CC7F0, &unk_2676CF9B0);
          v152 = v427;
LABEL_52:

          v146 = 1;
          v147 = v426;
          goto LABEL_54;
        }
      }

      else
      {
        v153 = v407;
        sub_2675F95E4(v121, v407, &qword_2801CC7F0, &unk_2676CF9B0);
        OUTLINED_FUNCTION_18_3(v121 + v151);
        if (!v154)
        {
          v172 = v416;
          v173 = v395;
          (*(v416 + 32))(v395, v121 + v151, v117);
          sub_267619E1C(&qword_2801CC800, MEMORY[0x277D5EB08]);
          LODWORD(v412) = sub_2676CBF1C();
          v174 = *(v172 + 8);
          v122 = v172 + 8;
          v174(v173, v117);
          sub_2675EB7EC(v97, &qword_2801CC7F0, &unk_2676CF9B0);
          sub_2675EB7EC(v428, &qword_2801CC7F0, &unk_2676CF9B0);
          v174(v407, v117);
          sub_2675EB7EC(v121, &qword_2801CC7F0, &unk_2676CF9B0);
          v152 = v427;
          if (v412)
          {
            goto LABEL_52;
          }

          goto LABEL_38;
        }

        OUTLINED_FUNCTION_36_2(v97);
        OUTLINED_FUNCTION_36_2(v428);
        (*(v416 + 8))(v153, v117);
      }

      sub_2675EB7EC(v121, &qword_2801CC7E8, &qword_2676CF9A8);
LABEL_38:
      sub_2676CA5CC();
      v147 = v426;
      if (*&v458[0] && (v155 = sub_2676CA4CC(), , v155))
      {
        sub_2676CA6FC();

        v156 = v398;
      }

      else
      {
        OUTLINED_FUNCTION_5_2();
        v156 = v398;
        __swift_storeEnumTagSinglePayload(v157, v158, v159, v398);
      }

      v122 = v408;
      (*(v409 + 104))(v408, *MEMORY[0x277D5F040], v156);
      __swift_storeEnumTagSinglePayload(v122, 0, 1, v156);
      v160 = *(v397 + 48);
      v161 = v116;
      v162 = v413;
      sub_2675F95E4(v161, v413, &qword_2801CC7E0, &qword_2676CF9A0);
      v163 = v162;
      sub_2675F95E4(v122, v162 + v160, &qword_2801CC7E0, &qword_2676CF9A0);
      OUTLINED_FUNCTION_21_3(v162, 1, v156);
      if (!v154)
      {
        v167 = v162;
        v168 = v396;
        sub_2675F95E4(v167, v396, &qword_2801CC7E0, &qword_2676CF9A0);
        OUTLINED_FUNCTION_21_3(v163 + v160, 1, v156);
        if (!v169)
        {
          v175 = v409;
          v176 = v394;
          (*(v409 + 32))(v394, v163 + v160, v156);
          sub_267619E1C(&qword_2801CC7F8, MEMORY[0x277D5F058]);
          v146 = sub_2676CBF1C();

          v177 = *(v175 + 8);
          v122 = v175 + 8;
          v177(v176, v156);
          OUTLINED_FUNCTION_29_3(v408);
          v178 = OUTLINED_FUNCTION_25_4();
          sub_2675EB7EC(v178, v179, &qword_2676CF9A0);
          v177(v396, v156);
          OUTLINED_FUNCTION_29_3(v413);
          goto LABEL_53;
        }

        OUTLINED_FUNCTION_29_3(v408);
        v170 = OUTLINED_FUNCTION_25_4();
        v165 = v413;
        sub_2675EB7EC(v170, v171, &qword_2676CF9A0);
        (*(v409 + 8))(v168, v156);
LABEL_50:
        sub_2675EB7EC(v165, &qword_2801CC7D8, &qword_2676CF998);
        v146 = 0;
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_29_3(v122);
      v164 = OUTLINED_FUNCTION_25_4();
      v165 = v413;
      sub_2675EB7EC(v164, v166, &qword_2676CF9A0);
      OUTLINED_FUNCTION_21_3(v165 + v160, 1, v156);
      if (!v154)
      {
        goto LABEL_50;
      }

      sub_2675EB7EC(v165, &qword_2801CC7E0, &qword_2676CF9A0);
      v146 = 1;
LABEL_53:
      v152 = v427;
LABEL_54:
      v428 = a10;
      sub_2676371E0();
      LODWORD(v418) = v146;
      if (v180)
      {
        v181 = sub_2676CA77C();

        v182 = v420;
        sub_267698EA0(v181);

        OUTLINED_FUNCTION_21_3(v182, 1, v147);
        if (!v154)
        {
          v183 = *(v414 + 32);
          v184 = OUTLINED_FUNCTION_25_4();
          v185(v184);
          v186 = v415;
          MEMORY[0x26D5FC0E0](0x636E657265666572, 0xE900000000000065, v147);
          v187 = v186;
          v188 = v411;
          OUTLINED_FUNCTION_21_3(v187, 1, v411);
          if (v154)
          {
            v279 = v399;
            MEMORY[0x26D5FC0E0](0x797469746E65, 0xE600000000000000, v147);
            OUTLINED_FUNCTION_18_3(v415);
            if (!v154)
            {
              sub_2675EB7EC(v415, &qword_2801CC608, &unk_2676CF500);
            }
          }

          else
          {
            v279 = v399;
            (*(v410 + 32))(v399, v415, v188);
            __swift_storeEnumTagSinglePayload(v279, 0, 1, v188);
          }

          OUTLINED_FUNCTION_18_3(v279);
          if (!v154)
          {
            (*(v410 + 32))(v402, v279, v188);
            v280 = v401;
            v281 = v405;
            sub_2676325D4(v405 + *(v401 + 128), v282, v283, v284, v285, v286, v287, v288, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402);
            *v281 = v289;
            *(v281 + 8) = v290;
            *(v281 + 16) = v291;
            LODWORD(v417) = v292;
            *(v281 + 24) = v292;
            LODWORD(v421) = v292 >> 8;
            *(v281 + 25) = BYTE1(v292);
            LODWORD(v420) = HIWORD(v292);
            *(v281 + 26) = BYTE2(v292);
            *(v281 + 27) = HIBYTE(v292);
            sub_2675E5D38(v422, v458);
            sub_2675E5D38(v423, v457);
            sub_2675E5D38(v424, v455);
            v293 = v403;
            OUTLINED_FUNCTION_28_2(v281);
            v430 = *v293;
            v294 = v293[2];

            v295 = v404;
            OUTLINED_FUNCTION_28_2(v281);
            v296 = *v295;

            v297 = v295[1];
            v423 = v295[2];
            v424 = v297;
            v298 = v281;
            v299 = v406;
            sub_2675F95E4(v298, v406, &qword_2801CC6F8, &qword_2676CF6C0);
            v300 = *v299;

            v301 = v299[2];

            v429 = *(v280 + 128);
            v302 = v400;
            sub_2676CAB8C();
            __swift_mutable_project_boxed_opaque_existential_1(v455, v456);
            OUTLINED_FUNCTION_41_0();
            v422 = v303;
            OUTLINED_FUNCTION_5_11();
            v305 = *(v304 + 64);
            MEMORY[0x28223BE20](v306);
            OUTLINED_FUNCTION_3_2();
            v309 = (v308 - v307);
            (*(v310 + 16))(v308 - v307);
            v311 = *v309;
            v312 = type metadata accessor for ReadingUtil();
            v454 = &off_2878AE2F8;
            v453 = v312;
            v452[0] = v311;
            v313 = v431;
            v450 = v431;
            v451 = &off_2878AD4E0;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v449);
            v315 = v432;
            (*(v432 + 16))(boxed_opaque_existential_1, v302, v313);
            v447 = &type metadata for MailFeatureFlags;
            v448 = &off_2878ADBB0;
            MailActingFlow = type metadata accessor for ReadMailActingFlow();
            v416 = OUTLINED_FUNCTION_20_4(MailActingFlow);
            v317 = swift_allocObject();
            __swift_mutable_project_boxed_opaque_existential_1(v452, v453);
            OUTLINED_FUNCTION_41_0();
            v415 = v318;
            OUTLINED_FUNCTION_5_11();
            v320 = *(v319 + 64);
            MEMORY[0x28223BE20](v321);
            OUTLINED_FUNCTION_3_2();
            v323 = OUTLINED_FUNCTION_33_3(v322);
            v324(v323);
            __swift_mutable_project_boxed_opaque_existential_1(v449, v450);
            OUTLINED_FUNCTION_41_0();
            v413 = v325;
            OUTLINED_FUNCTION_5_11();
            v327 = *(v326 + 64);
            MEMORY[0x28223BE20](v328);
            OUTLINED_FUNCTION_3_2();
            v330 = OUTLINED_FUNCTION_11_10(v329);
            v331(v330);
            __swift_mutable_project_boxed_opaque_existential_1(v446, &type metadata for MailFeatureFlags);
            v332 = *v280;
            v444 = v312;
            v445 = &off_2878AE2F8;
            *&v443 = v332;
            v441 = v313;
            v442 = &off_2878AD4E0;
            v333 = __swift_allocate_boxed_opaque_existential_1(&v440);
            (*(v315 + 32))(v333, v146, v313);
            v438 = &type metadata for MailFeatureFlags;
            v439 = &off_2878ADBB0;
            *(v317 + 16) = xmmword_2676CF3C0;
            *(v317 + 32) = MEMORY[0x277D84F90];
            *(v317 + 48) = 0;
            sub_2676CB9FC();
            OUTLINED_FUNCTION_9_10();
            sub_267619E1C(v334, v335);
            sub_2676C97BC();
            sub_2676C8C8C();
            OUTLINED_FUNCTION_5_2();
            __swift_storeEnumTagSinglePayload(v336, v337, v338, v339);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
            OUTLINED_FUNCTION_5_2();
            __swift_storeEnumTagSinglePayload(v340, v341, v342, v343);
            sub_2676C9ECC();
            v344 = v435;
            v345 = v436;
            v346 = __swift_project_boxed_opaque_existential_1(v434, v435);
            v347 = v344;
            v348 = v346;
            sub_267691338(v347, v345);
            OUTLINED_FUNCTION_37_1();
            if ((v348 & v393 & 1) != 0 && (v435 = &type metadata for Features, v349 = sub_267614A64(), OUTLINED_FUNCTION_35_1(v349), OUTLINED_FUNCTION_37_1(), (v348 & 1) == 0))
            {
              v359 = sub_2676CBE2C();
              v360 = sub_2676CC23C();
              v361 = OUTLINED_FUNCTION_7_11();
              v363 = os_log_type_enabled(v361, v362);
              v350 = v418;
              if (v363)
              {
                OUTLINED_FUNCTION_6_10();
                v364 = swift_slowAlloc();
                OUTLINED_FUNCTION_34_2(v364);
                OUTLINED_FUNCTION_17_8(&dword_2675D4000, v365, v360, "#ReadMailActingFlow user is in the car, their device is locked, and Mail data is not Class C - we cannot read emails.");
                OUTLINED_FUNCTION_5_12();
                MEMORY[0x26D5FEA80]();
              }

              v366 = OUTLINED_FUNCTION_12_7();
              v367(v366);
              v356 = 0x9000000000000000;
              v357 = v420;
              v358 = v417;
              v351 = v421;
            }

            else
            {
              v350 = v418;
              v351 = v421;
              if (!*(v430 + 16) && ((v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F0, &unk_2676CE100), OUTLINED_FUNCTION_21_3(v406 + v429, 1, v352), v154) ? (v353 = v351 == 2) : (v353 = 0), v353))
              {
                __swift_project_boxed_opaque_existential_1(v437, v438);
                v368 = sub_267616C5C();
                v357 = v420;
                v358 = v417;
                if ((v368 & 1) != 0 && ((v350 & 1) != 0 || (sub_2676632C4(v424, v423) & 1) != 0 && (v357 == 2 ? (v377 = v358 == 2) : (v377 = 0), v377 && (OUTLINED_FUNCTION_21_3(v406 + v429, 1, v352), v154))))
                {
                  v369 = sub_2676CBE2C();
                  v370 = sub_2676CC23C();
                  v371 = OUTLINED_FUNCTION_7_11();
                  if (os_log_type_enabled(v371, v372))
                  {
                    OUTLINED_FUNCTION_6_10();
                    v373 = swift_slowAlloc();
                    OUTLINED_FUNCTION_34_2(v373);
                    OUTLINED_FUNCTION_17_8(&dword_2675D4000, v374, v370, "#ReadMailActingFlow user asked for general inbox read or general summary and CatchUp is enabled, read their highlights first");
                    v351 = v421;
                    OUTLINED_FUNCTION_5_12();
                    MEMORY[0x26D5FEA80]();
                  }

                  v356 = 0x9000000000000018;

                  v375 = OUTLINED_FUNCTION_12_7();
                  v376(v375);
                }

                else
                {
                  v378 = OUTLINED_FUNCTION_12_7();
                  v379(v378);
                  OUTLINED_FUNCTION_82();
                  v380 = swift_allocObject();
                  *(v380 + 16) = 0xF000000000000007;
                  v356 = v380 | 0x1000000000000000;
                }
              }

              else
              {
                v354 = OUTLINED_FUNCTION_12_7();
                v355(v354);
                v356 = 0x9000000000000008;
                v357 = v420;
                v358 = v417;
              }
            }

            *(v317 + 40) = v356;
            v381 = *(v401 + 128);
            *(v317 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isRequestToSummarize) = v350 & 1;
            *(v317 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_senderInput) = v430;
            v382 = (v317 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_subjectInput);
            v383 = v423;
            *v382 = v424;
            v382[1] = v383;
            *(v317 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isReadInput) = v358;
            *(v317 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isNewInput) = v351;
            *(v317 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isRequestToRead) = BYTE4(v393);
            v384 = 0x7A6972616D6D7553;
            if ((v350 & 1) == 0)
            {
              v384 = 0x6C69614D64616552;
            }

            v432 = v384;
            v385 = v406;
            v386 = v429;
            sub_2675F95E4(v406 + v429, v317 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_dateTimeInput, &qword_2801CC1E8, &qword_2676CF570);
            *(v317 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isMostRecent) = v357;
            sub_2675DD73C(&v440, v317 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_dateTimeResolver);
            sub_2675DD73C(v458, v317 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_linkServicesProvider);
            sub_2675DD73C(v457, v317 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_responseFactory);
            sub_2675DD73C(&v443, v317 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_readingUtil);
            v387 = v428;
            *(v317 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_globals) = v428;
            sub_2675E5D38(v437, v317 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_featureFlags);
            *(v317 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_hasExactSpanMatch) = v419;
            v388 = v387;
            __swift_destroy_boxed_opaque_existential_1(v437);
            sub_2675EB7EC(v385 + v386, &qword_2801CC1E8, &qword_2676CF570);
            __swift_destroy_boxed_opaque_existential_1(v446);
            __swift_destroy_boxed_opaque_existential_1(v449);
            __swift_destroy_boxed_opaque_existential_1(v452);
            __swift_destroy_boxed_opaque_existential_1(v455);
            sub_2675EB7EC(&v404[v381], &qword_2801CC1E8, &qword_2676CF570);
            sub_2675EB7EC(v403 + v381, &qword_2801CC1E8, &qword_2676CF570);
            *&v458[0] = v317;
            OUTLINED_FUNCTION_8_13();
            sub_267619E1C(v389, v390);
            sub_2676C943C();

            sub_2675EB7EC(v405, &qword_2801CC6F8, &qword_2676CF6C0);
            (*(v410 + 8))(v402, v411);
            (*(v414 + 8))(v427, v426);
LABEL_73:
            __swift_destroy_boxed_opaque_existential_1(v460);
            sub_2676CC28C();
            v278 = v463;
            sub_2676CBDFC();
            sub_2675DE628(v278);
            return sub_2675EB7EC(v461, &qword_2801CC690, &unk_2676CF580);
          }

          (*(v414 + 8))(v152, v147);
          v192 = &qword_2801CC608;
          v193 = &unk_2676CF500;
          v194 = v279;
LABEL_62:
          sub_2675EB7EC(v194, v192, v193);
          sub_2675E5D38(v422, v458);
          sub_2675E5D38(v423, v457);
          sub_2675E5D38(v424, v455);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F0, &unk_2676CE100);
          OUTLINED_FUNCTION_5_2();
          __swift_storeEnumTagSinglePayload(v195, v196, v197, v198);
          v199 = v429;
          sub_2676CAB8C();
          __swift_mutable_project_boxed_opaque_existential_1(v455, v456);
          OUTLINED_FUNCTION_41_0();
          v427 = v200;
          OUTLINED_FUNCTION_5_11();
          v202 = *(v201 + 64);
          MEMORY[0x28223BE20](v203);
          OUTLINED_FUNCTION_3_2();
          v206 = (v205 - v204);
          (*(v207 + 16))(v205 - v204);
          v208 = *v206;
          v209 = type metadata accessor for ReadingUtil();
          v454 = &off_2878AE2F8;
          v453 = v209;
          v452[0] = v208;
          v210 = v431;
          v450 = v431;
          v451 = &off_2878AD4E0;
          v211 = __swift_allocate_boxed_opaque_existential_1(v449);
          v212 = v432;
          (*(v432 + 16))(v211, v199, v210);
          v447 = &type metadata for MailFeatureFlags;
          v448 = &off_2878ADBB0;
          v213 = type metadata accessor for ReadMailActingFlow();
          v426 = OUTLINED_FUNCTION_20_4(v213);
          v214 = swift_allocObject();
          __swift_mutable_project_boxed_opaque_existential_1(v452, v453);
          OUTLINED_FUNCTION_41_0();
          v424 = v215;
          OUTLINED_FUNCTION_5_11();
          v217 = *(v216 + 64);
          MEMORY[0x28223BE20](v218);
          OUTLINED_FUNCTION_3_2();
          v220 = OUTLINED_FUNCTION_11_10(v219);
          v221(v220);
          __swift_mutable_project_boxed_opaque_existential_1(v449, v450);
          OUTLINED_FUNCTION_41_0();
          v423 = v222;
          OUTLINED_FUNCTION_5_11();
          v224 = *(v223 + 64);
          MEMORY[0x28223BE20](v225);
          OUTLINED_FUNCTION_3_2();
          v227 = OUTLINED_FUNCTION_30_3(v226);
          v228(v227);
          __swift_mutable_project_boxed_opaque_existential_1(v446, &type metadata for MailFeatureFlags);
          v229 = *v146;
          v444 = v209;
          v445 = &off_2878AE2F8;
          *&v443 = v229;
          v441 = v210;
          v442 = &off_2878AD4E0;
          v230 = __swift_allocate_boxed_opaque_existential_1(&v440);
          (*(v212 + 32))(v230, v122, v210);
          v438 = &type metadata for MailFeatureFlags;
          v439 = &off_2878ADBB0;
          *(v214 + 16) = xmmword_2676CF3C0;
          v231 = MEMORY[0x277D84F90];
          *(v214 + 32) = MEMORY[0x277D84F90];
          *(v214 + 48) = 0;
          sub_2676CB9FC();
          OUTLINED_FUNCTION_9_10();
          sub_267619E1C(v232, v233);
          sub_2676C97BC();
          sub_2676C8C8C();
          OUTLINED_FUNCTION_5_2();
          __swift_storeEnumTagSinglePayload(v234, v235, v236, v237);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
          OUTLINED_FUNCTION_5_2();
          __swift_storeEnumTagSinglePayload(v238, v239, v240, v241);
          sub_2676C9ECC();
          v242 = v435;
          v243 = v436;
          v244 = __swift_project_boxed_opaque_existential_1(v434, v435);
          v245 = v242;
          v246 = v244;
          sub_267691338(v245, v243);
          OUTLINED_FUNCTION_37_1();
          if ((v246 & v393 & 1) != 0 && (v435 = &type metadata for Features, v247 = sub_267614A64(), OUTLINED_FUNCTION_35_1(v247), OUTLINED_FUNCTION_37_1(), (v246 & 1) == 0))
          {
            v262 = sub_2676CBE2C();
            v263 = sub_2676CC23C();
            v264 = OUTLINED_FUNCTION_7_11();
            v266 = os_log_type_enabled(v264, v265);
            v249 = v418;
            if (v266)
            {
              OUTLINED_FUNCTION_6_10();
              v267 = swift_slowAlloc();
              OUTLINED_FUNCTION_34_2(v267);
              OUTLINED_FUNCTION_17_8(&dword_2675D4000, v268, v263, "#ReadMailActingFlow user is in the car, their device is locked, and Mail data is not Class C - we cannot read emails.");
              OUTLINED_FUNCTION_5_12();
              MEMORY[0x26D5FEA80]();
            }

            v269 = OUTLINED_FUNCTION_22_3();
            v270(v269);
            v256 = 0x9000000000000000;
          }

          else
          {
            __swift_project_boxed_opaque_existential_1(v437, v438);
            v248 = sub_267616C5C();
            v249 = v418;
            if (v248 & v418)
            {
              v250 = sub_2676CBE2C();
              v251 = sub_2676CC23C();
              v252 = OUTLINED_FUNCTION_7_11();
              if (os_log_type_enabled(v252, v253))
              {
                OUTLINED_FUNCTION_6_10();
                v254 = swift_slowAlloc();
                OUTLINED_FUNCTION_34_2(v254);
                OUTLINED_FUNCTION_17_8(&dword_2675D4000, v255, v251, "#ReadMailActingFlow user asked for general inbox read or general summary and CatchUp is enabled, read their highlights first");
                OUTLINED_FUNCTION_5_12();
                MEMORY[0x26D5FEA80]();
              }

              v256 = 0x9000000000000018;

              v257 = OUTLINED_FUNCTION_22_3();
              v258(v257);
            }

            else
            {
              v259 = OUTLINED_FUNCTION_22_3();
              v260(v259);
              OUTLINED_FUNCTION_82();
              v261 = swift_allocObject();
              *(v261 + 16) = 0xF000000000000007;
              v256 = v261 | 0x1000000000000000;
            }
          }

          *(v214 + 40) = v256;
          *(v214 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isRequestToSummarize) = v249 & 1;
          *(v214 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_senderInput) = v231;
          v271 = (v214 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_subjectInput);
          *v271 = 0;
          v271[1] = 0;
          *(v214 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isReadInput) = 0;
          *(v214 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isNewInput) = 2;
          *(v214 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isRequestToRead) = BYTE4(v393);
          sub_2675F95E4(v430, v214 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_dateTimeInput, &qword_2801CC1E8, &qword_2676CF570);
          *(v214 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isMostRecent) = 2;
          sub_2675DD73C(&v440, v214 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_dateTimeResolver);
          sub_2675DD73C(v458, v214 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_linkServicesProvider);
          sub_2675DD73C(v457, v214 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_responseFactory);
          sub_2675DD73C(&v443, v214 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_readingUtil);
          v272 = v428;
          *(v214 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_globals) = v428;
          sub_2675E5D38(v437, v214 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_featureFlags);
          *(v214 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_hasExactSpanMatch) = v419;
          v273 = v272;
          __swift_destroy_boxed_opaque_existential_1(v437);
          v274 = OUTLINED_FUNCTION_25_4();
          sub_2675EB7EC(v274, v275, &qword_2676CF570);
          __swift_destroy_boxed_opaque_existential_1(v446);
          __swift_destroy_boxed_opaque_existential_1(v449);
          __swift_destroy_boxed_opaque_existential_1(v452);
          __swift_destroy_boxed_opaque_existential_1(v455);
          *&v458[0] = v214;
          OUTLINED_FUNCTION_8_13();
          sub_267619E1C(v276, v277);
          sub_2676C943C();

          goto LABEL_73;
        }
      }

      else
      {
        v182 = v420;
        OUTLINED_FUNCTION_5_2();
        __swift_storeEnumTagSinglePayload(v189, v190, v191, v147);
      }

      v192 = &qword_2801CC640;
      v193 = &unk_2676CF550;
      v194 = v182;
      goto LABEL_62;
    }

    __swift_destroy_boxed_opaque_existential_1(v460);
  }

  else
  {
    sub_2675EB7EC(v458 + 8, &qword_2801CC158, &qword_2676CDDA0);
  }

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_1_8();
    swift_once();
  }

  v123 = sub_2676CBE4C();
  __swift_project_value_buffer(v123, qword_2801CDC90);
  sub_2675F95E4(v461, v458, &qword_2801CC690, &unk_2676CF580);
  v124 = sub_2676CBE2C();
  v125 = sub_2676CC23C();
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v455[0] = v127;
    *v126 = 136315138;
    sub_2675F95E4(v458, v457, &qword_2801CC690, &unk_2676CF580);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC158, &qword_2676CDDA0);
    v128 = sub_2676CBFBC();
    v130 = v129;
    sub_2675EB7EC(v458, &qword_2801CC690, &unk_2676CF580);
    v131 = sub_2676B0B84(v128, v130, v455);

    *(v126 + 4) = v131;
    _os_log_impl(&dword_2675D4000, v124, v125, "#MailFlowFactory received task we don't support: %s", v126, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v127);
    OUTLINED_FUNCTION_5_12();
    MEMORY[0x26D5FEA80]();
    OUTLINED_FUNCTION_5_12();
    MEMORY[0x26D5FEA80]();
  }

  else
  {

    sub_2675EB7EC(v458, &qword_2801CC690, &unk_2676CF580);
  }

  v132 = v463;
  v133 = sub_2676CBE2C();
  sub_2676CC23C();
  v134 = OUTLINED_FUNCTION_7_11();
  if (os_log_type_enabled(v134, v135))
  {
    OUTLINED_FUNCTION_6_10();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_31_2();
    _os_log_impl(v136, v137, v138, v139, v140, v141);
    OUTLINED_FUNCTION_5_12();
    MEMORY[0x26D5FEA80]();
  }

  sub_2675FD730();
  swift_allocError();
  *v142 = 0;
  v142[1] = 0;
  swift_willThrow();
  sub_2676CC28C();
  sub_2676CBDFC();
  sub_2675DE628(v132);
  return sub_2675EB7EC(v461, &qword_2801CC690, &unk_2676CF580);
}