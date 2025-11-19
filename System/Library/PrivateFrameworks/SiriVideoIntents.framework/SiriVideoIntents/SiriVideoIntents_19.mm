uint64_t sub_26981833C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_12_31(a1, a2, a3, a4);
  v9 = OUTLINED_FUNCTION_8(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325A40, &qword_2698672A8);
  v13 = OUTLINED_FUNCTION_8_9(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = OUTLINED_FUNCTION_14_31();
  v17 = OUTLINED_FUNCTION_4_3(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_6_49();
  if (__swift_getEnumTagSinglePayload(v6, 1, v16) == 1)
  {
    sub_26969B0C0(v6, &qword_280325A40, &qword_2698672A8);
    return -1;
  }

  sub_26981A1B8(v6, v5, type metadata accessor for AppLifecycle);
  v21 = *v5 == v4 && v5[1] == v32;
  if (!v21 && (sub_269855584() & 1) == 0)
  {
    sub_269819FA4(v5);
    return -1;
  }

  v22 = *(v31 + 32);
  (*(v31 + 24))();
  v23 = *(v16 + 24);
  sub_269851CB4();
  v24 = OUTLINED_FUNCTION_11_38();
  v25(v24);
  v26 = OUTLINED_FUNCTION_10_32();
  if (v27)
  {
    v28 = v26 <= -9.22337204e18;
  }

  else
  {
    v28 = 1;
  }

  v29 = llround(v7);
  if (v28)
  {
    v20 = -1;
  }

  else
  {
    v20 = v29;
  }

  sub_269819FA4(v5);
  return v20;
}

void sub_269818540()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v71 = v2;
  v4 = v3;
  v72 = v5;
  v7 = v6;
  v9 = v8;
  v10 = sub_269853914();
  v11 = OUTLINED_FUNCTION_8(v10);
  v73 = v12;
  v74 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v75 = v16 - v15;

  sub_2697F1EE0(v17);
  v19 = v18;
  v20 = qword_2803226B8;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_28033D8E8;
  type metadata accessor for SiriRemembersEntitySignals();
  swift_allocObject();
  OUTLINED_FUNCTION_4_42();

  v22 = OUTLINED_FUNCTION_5_44();
  sub_269805FA8(v22, v23, v24, v21);
  v25 = sub_269806F04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324270, &unk_26985F2B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2698580D0;
  sub_269806754(sub_26968E738, 0, (inited + 32));
  v27 = swift_allocObject();
  *(v27 + 16) = v9;
  *(v27 + 24) = v7;
  v28 = type metadata accessor for SpotlightRelativeCountSignal();
  swift_allocObject();
  v29 = sub_26980C5B4(v19, 150, sub_269818DC0, v27);
  *(inited + 96) = v28;
  *(inited + 104) = sub_26981A020(&qword_2803259E8, type metadata accessor for SpotlightRelativeCountSignal);
  *(inited + 72) = v29;
  v82 = v25;

  sub_26980B8C4(inited);
  v30 = sub_269818DC8();
  sub_26980B8C4(v30);
  v31 = sub_269818FC0();
  sub_26980B8C4(v31);
  v32 = sub_269804ED4(v19);
  sub_26980B8C4(v32);
  v33 = sub_2698041E8(v19);
  sub_26980B8C4(v33);
  matched = type metadata accessor for SiriRemembersPartialMatchEntitySignals();

  OUTLINED_FUNCTION_5_44();
  sub_2698086DC();
  sub_269809610();
  v36 = v35;

  sub_26980B8C4(v36);

  OUTLINED_FUNCTION_5_44();
  sub_2698086DC();
  sub_269809610();
  OUTLINED_FUNCTION_4_42();

  sub_26980B8C4(matched);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803259F0, &qword_269867EC8);
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_269858BC0;
  *(v37 + 56) = &type metadata for IntentTypeSignal;
  *(v37 + 64) = sub_2698191B4();
  *(v37 + 32) = 0x7954746E65746E49;
  *(v37 + 40) = 0xEA00000000006570;
  *(v37 + 48) = v72 & 1;
  *(v37 + 96) = &type metadata for CurrentNowPlayingAppSignal;
  *(v37 + 104) = sub_269819208();
  strcpy((v37 + 72), "NowPlayingApp");
  *(v37 + 86) = -4864;
  *(v37 + 88) = v4;
  *(v37 + 136) = &type metadata for CurrentNowPlayingStateSignal;
  *(v37 + 144) = sub_26981925C();
  *(v37 + 112) = 0x6979616C50776F4ELL;
  *(v37 + 120) = 0xEF6574617453676ELL;
  if (v1)
  {
    *(v37 + 176) = &type metadata for SpecifiedAppSignal;
    *(v37 + 184) = sub_269819EFC();
    OUTLINED_FUNCTION_25_3();
    v38 = swift_allocObject();
    *(v37 + 152) = v38;
    v38[2] = v71;
    v38[3] = v1;
    v38[4] = v4;
    v38[5] = 0x64657463656C6553;
    v38[6] = 0xEB00000000707041;
  }

  else
  {
    *(v37 + 184) = 0;
    *(v37 + 168) = 0u;
    *(v37 + 152) = 0u;
  }

  *(v37 + 216) = &type metadata for SupportedMediaCategoriesSignal;
  *(v37 + 224) = sub_2698192B0();
  v39 = swift_allocObject();
  *(v37 + 192) = v39;
  v39[8] = &type metadata for LSApplicationRecordProvider;
  v39[9] = &xmmword_287A41430;
  v39[2] = 0xD000000000000018;
  v39[3] = 0x800000026987AD30;
  swift_bridgeObjectRetain_n();

  sub_2697F1EE0(v4);
  v39[4] = v40;
  v41 = MEMORY[0x277D84F90];
  for (i = 32; i != 232; i += 40)
  {
    sub_26969B138(v37 + i, &v79, &qword_280325A18, &unk_269867ED0);
    v76[0] = v79;
    v76[1] = v80;
    v77 = v81;
    if (*(&v80 + 1))
    {
      sub_26968E5D4(v76, v78);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = *(v41 + 16);
        sub_26977C2B4();
        v41 = v45;
      }

      v43 = *(v41 + 16);
      v39 = (v43 + 1);
      if (v43 >= *(v41 + 24) >> 1)
      {
        sub_26977C2B4();
        v41 = v46;
      }

      *(v41 + 16) = v39;
      sub_26968E5D4(v78, v41 + 40 * v43 + 32);
    }

    else
    {
      sub_26969B0C0(v76, &qword_280325A18, &unk_269867ED0);
    }
  }

  swift_setDeallocating();
  sub_269819DE8(&qword_280325A18, &unk_269867ED0);
  v47 = sub_269853AF4();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  sub_269853AE4();
  sub_269853AC4();
  OUTLINED_FUNCTION_4_42();

  v50 = sub_269853B04();
  v51 = MEMORY[0x277D603C0];
  *(&v80 + 1) = v50;
  v81 = MEMORY[0x277D603C0];
  __swift_allocate_boxed_opaque_existential_1(&v79);
  sub_269853AD4();

  v52 = sub_269853A84();
  __swift_destroy_boxed_opaque_existential_0(&v79);
  sub_26974CDB0(v52);
  OUTLINED_FUNCTION_4_42();

  v53 = sub_269853A54();
  v54 = sub_26974CDB0(v53);

  v55 = sub_269853A74();
  v56 = sub_26974CDB0(v55);

  sub_26980B8C4(v56);
  sub_26980B8C4(v39);
  v57 = *(v47 + 48);
  v58 = *(v47 + 52);
  swift_allocObject();
  sub_269853AE4();
  sub_269853AC4();
  OUTLINED_FUNCTION_4_42();

  *(&v80 + 1) = v50;
  v81 = v51;
  __swift_allocate_boxed_opaque_existential_1(&v79);
  sub_269853AD4();

  v59 = sub_269853A64();
  __swift_destroy_boxed_opaque_existential_0(&v79);
  sub_26974CDB0(v59);
  OUTLINED_FUNCTION_4_42();

  sub_26980B8C4(v39);
  v60 = swift_initStackObject();
  *(v60 + 16) = xmmword_269858BC0;
  (*(v73 + 104))(v75, *MEMORY[0x277D60238], v74);
  v61 = sub_269853934();
  v62 = MEMORY[0x277D60240];
  *(v60 + 56) = v61;
  *(v60 + 64) = v62;
  __swift_allocate_boxed_opaque_existential_1((v60 + 32));
  sub_269853924();
  v63 = sub_269853A44();
  v64 = MEMORY[0x277D602C0];
  *(v60 + 96) = v63;
  *(v60 + 104) = v64;
  __swift_allocate_boxed_opaque_existential_1((v60 + 72));
  sub_269853A34();
  v65 = sub_2698539F4();
  v66 = MEMORY[0x277D60278];
  *(v60 + 136) = v65;
  *(v60 + 144) = v66;
  __swift_allocate_boxed_opaque_existential_1((v60 + 112));
  sub_2698539E4();
  v67 = sub_269853A14();
  v68 = MEMORY[0x277D60288];
  *(v60 + 176) = v67;
  *(v60 + 184) = v68;
  __swift_allocate_boxed_opaque_existential_1((v60 + 152));
  sub_269853A04();
  v69 = sub_2698539D4();
  v70 = MEMORY[0x277D60260];
  *(v60 + 216) = v69;
  *(v60 + 224) = v70;
  __swift_allocate_boxed_opaque_existential_1((v60 + 192));
  sub_2698539C4();
  sub_26980B8C4(v60);
  sub_26980B8C4(v41);
  sub_26980B8C4(v54);

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_269818DC8()
{
  sub_269817778();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D90, &qword_2698583E8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_269853B14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325AD8, &qword_269867F40);
  swift_allocObject();

  sub_269817B24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324270, &unk_26985F2B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26985C7B0;
  sub_269817FE4(0xD000000000000011, 0x800000026987AB70, (v3 + 32));
  sub_269818290(0xD00000000000001BLL, 0x800000026987AC90, sub_26981A27C, (v3 + 72));
  sub_269818290(0xD000000000000019, 0x800000026987ACB0, sub_26981A260, (v3 + 112));

  return v3;
}

uint64_t sub_269818FC0()
{
  sub_269817778();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322DC0, &unk_269858700);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_269853B14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325A30, qword_269867EE0);
  swift_allocObject();

  sub_269817B24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324270, &unk_26985F2B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26985C7B0;
  sub_269817FE4(0xD000000000000011, 0x800000026987AB90, (v3 + 32));
  sub_269818290(0xD000000000000018, 0x800000026987ACD0, sub_26981A47C, (v3 + 72));
  sub_269818290(0xD000000000000019, 0x800000026987ACF0, sub_26981A478, (v3 + 112));

  return v3;
}

unint64_t sub_2698191B4()
{
  result = qword_2803259F8;
  if (!qword_2803259F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803259F8);
  }

  return result;
}

unint64_t sub_269819208()
{
  result = qword_280325A00;
  if (!qword_280325A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325A00);
  }

  return result;
}

unint64_t sub_26981925C()
{
  result = qword_280325A08;
  if (!qword_280325A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325A08);
  }

  return result;
}

unint64_t sub_2698192B0()
{
  result = qword_280325A10;
  if (!qword_280325A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325A10);
  }

  return result;
}

uint64_t sub_269819304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = sub_269851D34();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;

  sub_269854E14();
  v20 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v21 = [v20 InFocus];
  v32 = v21;
  swift_unknownObjectRelease();
  sub_269851D24();
  v33 = v18;
  sub_269851CC4();
  v34 = *(v12 + 8);
  v34(v16, v11);
  (*(v12 + 16))(v10, v18, v11);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  v22 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v23 = sub_269819BAC(v10, v8, 0, 5000, 0);
  v24 = [v21 publisherWithOptions_];
  v25 = swift_allocObject();
  *(v25 + 16) = MEMORY[0x277D84F90];
  v26 = swift_allocObject();
  v26[2] = sub_269693184;
  v26[3] = v19;
  v26[4] = v25;
  v39 = sub_26981A438;
  v40 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_26981A49C;
  v38 = &block_descriptor_56_0;
  v27 = _Block_copy(&aBlock);

  v39 = sub_26981A230;
  v40 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_26981A49C;
  v38 = &block_descriptor_59_0;
  v28 = _Block_copy(&aBlock);

  v29 = [v24 sinkWithCompletion:v27 receiveInput:v28];
  _Block_release(v28);
  _Block_release(v27);

  v34(v33, v11);
}

uint64_t sub_269819758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = sub_269851D34();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;

  sub_269854E14();
  v20 = [BiomeLibrary() Media];
  swift_unknownObjectRelease();
  v21 = [v20 NowPlaying];
  v32 = v21;
  swift_unknownObjectRelease();
  sub_269851D24();
  v33 = v18;
  sub_269851CC4();
  v34 = *(v12 + 8);
  v34(v16, v11);
  (*(v12 + 16))(v10, v18, v11);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  v22 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v23 = sub_269819BAC(v10, v8, 0, 5000, 0);
  v24 = [v21 publisherWithOptions_];
  v25 = swift_allocObject();
  *(v25 + 16) = MEMORY[0x277D84F90];
  v26 = swift_allocObject();
  v26[2] = sub_269693A40;
  v26[3] = v19;
  v26[4] = v25;
  v39 = sub_26981A48C;
  v40 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_26981A49C;
  v38 = &block_descriptor_27;
  v27 = _Block_copy(&aBlock);

  v39 = sub_26981A230;
  v40 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_26981A49C;
  v38 = &block_descriptor_32_0;
  v28 = _Block_copy(&aBlock);

  v29 = [v24 sinkWithCompletion:v27 receiveInput:v28];
  _Block_release(v28);
  _Block_release(v27);

  v34(v33, v11);
}

id sub_269819BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_269851D34();
  v13 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) != 1)
  {
    v13 = sub_269851CD4();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_269851CD4();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

uint64_t sub_269819CE8()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_1_55();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_269819D84()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_1_55();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_269819DE8(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  v4 = OUTLINED_FUNCTION_1_55();

  return MEMORY[0x2821FE8D8](v4, v5, v6);
}

uint64_t sub_269819E48(uint64_t (*a1)(void))
{
  v2 = *(*(a1(0) - 8) + 80);
  v3 = *(v1 + 16);
  swift_arrayDestroy();
  v4 = OUTLINED_FUNCTION_1_55();

  return MEMORY[0x2821FE8D8](v4, v5, v6);
}

uint64_t sub_269819EC0()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_1_55();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

unint64_t sub_269819EFC()
{
  result = qword_280325A20;
  if (!qword_280325A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325A20);
  }

  return result;
}

unint64_t sub_269819F50()
{
  result = qword_280325A38;
  if (!qword_280325A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325A38);
  }

  return result;
}

uint64_t sub_269819FA4(uint64_t a1)
{
  v2 = type metadata accessor for AppLifecycle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26981A020(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26981A074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280325A60, &qword_2698672B0);
  v5 = OUTLINED_FUNCTION_8_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  sub_26969B138(a1, &v12 - v8, &unk_280325A60, &qword_2698672B0);
  v10 = type metadata accessor for AppEvent(0);
  result = __swift_getEnumTagSinglePayload(v9, 1, v10);
  if (result != 1)
  {
    return sub_26981A1B8(v9, a2, type metadata accessor for AppEvent);
  }

  __break(1u);
  return result;
}

uint64_t sub_26981A154(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26981A1B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_3(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_13Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_26981A2FC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return sub_269817C20();
}

uint64_t objectdestroy_16Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  OUTLINED_FUNCTION_7_47();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t objectdestroy_19Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_28Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t OUTLINED_FUNCTION_6_49()
{

  return sub_26969B138(v1, v2, v3, v0);
}

uint64_t OUTLINED_FUNCTION_12_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 112) = a4;
  *(v4 - 104) = a2;

  return sub_269851D34();
}

uint64_t OUTLINED_FUNCTION_14_31()
{

  return type metadata accessor for AppLifecycle(0);
}

uint64_t sub_26981A578(char a1)
{
  result = 1852402994;
  switch(a1)
  {
    case 1:
      result = 0x6E696D3031;
      break;
    case 2:
      result = 7497777;
      break;
    case 3:
      result = 7497782;
      break;
    case 4:
      result = 2036425777;
      break;
    case 5:
      result = 2036425783;
      break;
    case 6:
      result = 0x7961643832;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26981A618(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_269855584() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_26981A6A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 16);
      v7 = *(v4 - 1);
      v6 = *v4;
      v8 = *(v3 - 16);
      v10 = *(v3 - 1);
      v9 = *v3;
      if (*(v4 - 4) == *(v3 - 4) && *(v4 - 3) == *(v3 - 3))
      {
        if (v5 != v8 || v7 != v10 || v6 != v9)
        {
          return 0;
        }
      }

      else
      {
        v12 = sub_269855584();
        result = 0;
        if ((v12 & 1) == 0)
        {
          return result;
        }

        v14 = v5 == v8 && v7 == v10;
        if (!v14 || v6 != v9)
        {
          return result;
        }
      }

      v4 += 5;
      v3 += 5;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t DisambiguationItemsModel.prompt.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_50_0();
}

uint64_t DisambiguationItemsModel.prompt.setter()
{
  OUTLINED_FUNCTION_22_20();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t DisambiguationItemsModel.items.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_26981A870(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000002698810B0 == a2;
  if (v3 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_269855584();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26981A980(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0x74706D6F7270;
  }

  return 0x736D657469;
}

uint64_t sub_26981A9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26981A870(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26981AA04(uint64_t a1)
{
  v2 = sub_26981AC18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26981AA40(uint64_t a1)
{
  v2 = sub_26981AC18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DisambiguationItemsModel.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325AF8, &qword_269867FD0);
  OUTLINED_FUNCTION_8(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_21_2();
  sub_26981AC18();
  OUTLINED_FUNCTION_20_1();
  v6 = *v0;
  v7 = v0[1];
  OUTLINED_FUNCTION_1_56();
  sub_2698554E4();
  if (!v1)
  {
    v8 = v0[2];
    v9 = v0[3];
    OUTLINED_FUNCTION_15_3();
    sub_2698554E4();
    v13 = v0[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325B08, &qword_269867FD8);
    sub_26981AEF8(&qword_280325B10, sub_26981AC6C);
    OUTLINED_FUNCTION_15_3();
    sub_269855514();
  }

  v10 = OUTLINED_FUNCTION_27_0();
  return v11(v10);
}

unint64_t sub_26981AC18()
{
  result = qword_280325B00;
  if (!qword_280325B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325B00);
  }

  return result;
}

unint64_t sub_26981AC6C()
{
  result = qword_280325B18;
  if (!qword_280325B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325B18);
  }

  return result;
}

uint64_t DisambiguationItemsModel.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325B20, &qword_269867FE0);
  OUTLINED_FUNCTION_8(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_14();
  sub_26981AC18();
  OUTLINED_FUNCTION_19_18();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_14_32();
  v10 = sub_269855464();
  OUTLINED_FUNCTION_17_24(v10);
  OUTLINED_FUNCTION_14_32();
  v15 = sub_269855464();
  v16 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325B08, &qword_269867FD8);
  sub_26981AEF8(&qword_280325B28, sub_26981AF60);
  sub_269855494();
  v12 = OUTLINED_FUNCTION_0_19();
  v13(v12);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v17;
  a2[1] = v3;
  a2[2] = v15;
  a2[3] = v16;
  a2[4] = v18;
  return result;
}

uint64_t sub_26981AEF8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325B08, &qword_269867FD8);
    a2();
    result = OUTLINED_FUNCTION_24_21();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26981AF60()
{
  result = qword_280325B30;
  if (!qword_280325B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325B30);
  }

  return result;
}

double sub_26981AFB4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  DisambiguationItemsModel.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

SiriVideoIntents::DisambiguationItem::ItemType_optional __swiftcall DisambiguationItem.ItemType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 4)
  {
    LOBYTE(rawValue) = 4;
  }

  return rawValue;
}

SiriVideoIntents::DisambiguationItem::ItemType_optional sub_26981B02C@<W0>(Swift::Int *a1@<X0>, SiriVideoIntents::DisambiguationItem::ItemType_optional *a2@<X8>)
{
  result.value = DisambiguationItem.ItemType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t DisambiguationItem.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_50_0();
}

uint64_t DisambiguationItem.title.setter()
{
  OUTLINED_FUNCTION_22_20();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DisambiguationItem.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_50_0();
}

uint64_t DisambiguationItem.identifier.setter()
{
  OUTLINED_FUNCTION_22_20();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t DisambiguationItem.images.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_26981B288(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701869940 && a2 == 0xE400000000000000;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x736567616D69 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_269855584();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_26981B3E0(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0x736567616D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26981B460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26981B288(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26981B488(uint64_t a1)
{
  v2 = sub_26981B760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26981B4C4(uint64_t a1)
{
  v2 = sub_26981B760();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static DisambiguationItem.__derived_struct_equals(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_9_38(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_269855584() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 16) == *(v2 + 16) && *(v3 + 24) == *(v2 + 24);
  if (!v7 && (sub_269855584() & 1) == 0 || *(v3 + 32) != *(v2 + 32))
  {
    return 0;
  }

  v8 = *(v3 + 40);
  v9 = *(v2 + 40);

  return sub_26981A6A4(v8, v9);
}

uint64_t DisambiguationItem.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325B38, &qword_269867FE8);
  OUTLINED_FUNCTION_8(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_21_2();
  sub_26981B760();
  OUTLINED_FUNCTION_20_1();
  v6 = *v0;
  v7 = v0[1];
  OUTLINED_FUNCTION_1_56();
  sub_2698554E4();
  if (!v1)
  {
    v8 = v0[2];
    v9 = v0[3];
    OUTLINED_FUNCTION_15_3();
    sub_2698554E4();
    v14 = *(v0 + 32);
    OUTLINED_FUNCTION_21_21();
    sub_26981B7B4();
    OUTLINED_FUNCTION_15_3();
    sub_269855514();
    v13 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325B50, &qword_269867FF0);
    sub_26981B808(&qword_280325B58, sub_26981B870);
    OUTLINED_FUNCTION_15_3();
    sub_269855514();
  }

  v10 = OUTLINED_FUNCTION_27_0();
  return v11(v10);
}

unint64_t sub_26981B760()
{
  result = qword_280325B40;
  if (!qword_280325B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325B40);
  }

  return result;
}

unint64_t sub_26981B7B4()
{
  result = qword_280325B48;
  if (!qword_280325B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325B48);
  }

  return result;
}

uint64_t sub_26981B808(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325B50, &qword_269867FF0);
    a2();
    result = OUTLINED_FUNCTION_24_21();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26981B870()
{
  result = qword_280325B60;
  if (!qword_280325B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325B60);
  }

  return result;
}

uint64_t DisambiguationItem.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_269855674();
  sub_269854B34();
  return sub_2698556C4();
}

uint64_t DisambiguationItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325B68, &qword_269867FF8);
  OUTLINED_FUNCTION_8(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_14();
  sub_26981B760();
  OUTLINED_FUNCTION_19_18();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_14_32();
  v10 = sub_269855464();
  OUTLINED_FUNCTION_17_24(v10);
  OUTLINED_FUNCTION_14_32();
  v15 = sub_269855464();
  v16 = v11;
  OUTLINED_FUNCTION_21_21();
  sub_26981BC38();
  sub_269855494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325B50, &qword_269867FF0);
  sub_26981B808(&qword_280325B78, sub_26981BC8C);
  OUTLINED_FUNCTION_14_32();
  sub_269855494();
  v12 = OUTLINED_FUNCTION_1_43();
  v13(v12);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v17;
  *(a2 + 8) = v3;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = v19;
  *(a2 + 40) = v18;
  return result;
}

double sub_26981BB8C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  DisambiguationItem.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_26981BBF0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_269855674();
  sub_269854B34();
  return sub_2698556C4();
}

unint64_t sub_26981BC38()
{
  result = qword_280325B70;
  if (!qword_280325B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325B70);
  }

  return result;
}

unint64_t sub_26981BC8C()
{
  result = qword_280325B80;
  if (!qword_280325B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325B80);
  }

  return result;
}

uint64_t sub_26981BCE0@<X0>(uint64_t *a1@<X8>)
{
  result = DisambiguationItem.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriVideoIntents::DisambiguationImage::ImageType_optional __swiftcall DisambiguationImage.ImageType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

SiriVideoIntents::DisambiguationImage::ImageType_optional sub_26981BD1C@<W0>(Swift::Int *a1@<X0>, SiriVideoIntents::DisambiguationImage::ImageType_optional *a2@<X8>)
{
  result.value = DisambiguationImage.ImageType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t DisambiguationImage.templateUrl.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_50_0();
}

uint64_t DisambiguationImage.templateUrl.setter()
{
  OUTLINED_FUNCTION_22_20();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_26981BF04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574616C706D6574 && a2 == 0xEB000000006C7255;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7079546567616D69 && a2 == 0xE900000000000065;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_269855584();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_26981C060(char a1)
{
  result = 0x6574616C706D6574;
  switch(a1)
  {
    case 1:
      result = 0x7079546567616D69;
      break;
    case 2:
      result = 0x6874646977;
      break;
    case 3:
      result = 0x746867696568;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26981C0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26981BF04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26981C118(uint64_t a1)
{
  v2 = sub_26981C368();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26981C154(uint64_t a1)
{
  v2 = sub_26981C368();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static DisambiguationImage.__derived_struct_equals(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_9_38(a1, a2);
  v6 = v6 && v4 == v5;
  return (v6 || (sub_269855584() & 1) != 0) && *(v3 + 16) == *(v2 + 16) && *(v3 + 24) == *(v2 + 24) && *(v3 + 32) == *(v2 + 32);
}

uint64_t DisambiguationImage.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325B88, &qword_269868000);
  OUTLINED_FUNCTION_8(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_21_2();
  sub_26981C368();
  OUTLINED_FUNCTION_20_1();
  v6 = *v0;
  v7 = v0[1];
  OUTLINED_FUNCTION_1_56();
  sub_2698554E4();
  if (!v1)
  {
    v13 = *(v0 + 16);
    sub_26981C3BC();
    OUTLINED_FUNCTION_13_29();
    sub_269855514();
    v8 = v0[3];
    OUTLINED_FUNCTION_21_21();
    OUTLINED_FUNCTION_13_29();
    sub_269855504();
    v9 = v0[4];
    OUTLINED_FUNCTION_13_29();
    sub_269855504();
  }

  v10 = OUTLINED_FUNCTION_27_0();
  return v11(v10);
}

unint64_t sub_26981C368()
{
  result = qword_280325B90;
  if (!qword_280325B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325B90);
  }

  return result;
}

unint64_t sub_26981C3BC()
{
  result = qword_280325B98;
  if (!qword_280325B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325B98);
  }

  return result;
}

uint64_t DisambiguationImage.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_269855674();
  sub_269854B34();
  return sub_2698556C4();
}

uint64_t DisambiguationImage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325BA0, &qword_269868008);
  OUTLINED_FUNCTION_8(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19_14();
  sub_26981C368();
  sub_2698556E4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_4_10();
  v9 = sub_269855464();
  v11 = v10;
  sub_26981C6C8();
  sub_269855494();
  OUTLINED_FUNCTION_21_21();
  OUTLINED_FUNCTION_4_10();
  v16 = sub_269855484();
  OUTLINED_FUNCTION_4_10();
  v12 = sub_269855484();
  v13 = OUTLINED_FUNCTION_2_12();
  v14(v13);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v17;
  *(a2 + 24) = v16;
  *(a2 + 32) = v12;
  return result;
}

double sub_26981C660@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  DisambiguationImage.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_26981C6C8()
{
  result = qword_280325BA8;
  if (!qword_280325BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325BA8);
  }

  return result;
}

unint64_t sub_26981C720()
{
  result = qword_280325BB0;
  if (!qword_280325BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325BB0);
  }

  return result;
}

unint64_t sub_26981C778()
{
  result = qword_280325BB8;
  if (!qword_280325BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325BB8);
  }

  return result;
}

unint64_t sub_26981C7DC()
{
  result = qword_280325BC0;
  if (!qword_280325BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325BC0);
  }

  return result;
}

unint64_t sub_26981C834()
{
  result = qword_280325BC8;
  if (!qword_280325BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325BC8);
  }

  return result;
}

uint64_t sub_26981C888@<X0>(uint64_t *a1@<X8>)
{
  result = DisambiguationImage.templateUrl.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *sub_26981C900(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_26981C9DC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26981CABC()
{
  result = qword_280325BD0;
  if (!qword_280325BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325BD0);
  }

  return result;
}

unint64_t sub_26981CB14()
{
  result = qword_280325BD8;
  if (!qword_280325BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325BD8);
  }

  return result;
}

unint64_t sub_26981CB6C()
{
  result = qword_280325BE0;
  if (!qword_280325BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325BE0);
  }

  return result;
}

unint64_t sub_26981CBC4()
{
  result = qword_280325BE8;
  if (!qword_280325BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325BE8);
  }

  return result;
}

unint64_t sub_26981CC1C()
{
  result = qword_280325BF0;
  if (!qword_280325BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325BF0);
  }

  return result;
}

unint64_t sub_26981CC74()
{
  result = qword_280325BF8;
  if (!qword_280325BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325BF8);
  }

  return result;
}

unint64_t sub_26981CCCC()
{
  result = qword_280325C00;
  if (!qword_280325C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325C00);
  }

  return result;
}

unint64_t sub_26981CD24()
{
  result = qword_280325C08;
  if (!qword_280325C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325C08);
  }

  return result;
}

unint64_t sub_26981CD7C()
{
  result = qword_280325C10;
  if (!qword_280325C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325C10);
  }

  return result;
}

unint64_t sub_26981CDD0()
{
  result = qword_280325C18;
  if (!qword_280325C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325C18);
  }

  return result;
}

unint64_t sub_26981CE24()
{
  result = qword_280325C20;
  if (!qword_280325C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325C20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_45()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_269854B34();
}

uint64_t OUTLINED_FUNCTION_9_38(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_17_24(uint64_t a1)
{
  *(v1 - 96) = a1;
  *(v1 - 66) = 1;
  return v1 - 66;
}

uint64_t OUTLINED_FUNCTION_19_18()
{

  return sub_2698556E4();
}

uint64_t OUTLINED_FUNCTION_24_21()
{

  return swift_getWitnessTable();
}

uint64_t sub_26981CF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_26973CEF8(a1, a2);
  if (v4)
  {
    return OUTLINED_FUNCTION_89_1(v3);
  }

  else
  {
    return 0;
  }
}

double sub_26981CFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_163_0(a1, a2, a3);
  if (v7 && (v8 = v6, v9 = sub_26973CEF8(v4, v5), (v10 & 1) != 0))
  {
    v11 = *(v8 + 56) + 32 * v9;

    sub_2696B6F94(v11, v3);
  }

  else
  {
    result = 0.0;
    *v3 = 0u;
    v3[1] = 0u;
  }

  return result;
}

void *sub_26981D04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_26973CEF8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_26981D094(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_26973ED38(a1);
  if (v3)
  {
    return OUTLINED_FUNCTION_89_1(v2);
  }

  else
  {
    return 0;
  }
}

double sub_26981D0E8@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_26973ED3C(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_2696B6F94(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_26981D14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_26973CEF8(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_89_1(v3);
}

uint64_t sub_26981D198(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_26973ED3C();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_89_1(v2);
  return swift_unknownObjectRetain();
}

double sub_26981D1E4@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_26973D098(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 40 * v5;

    sub_2696A73F8(v7, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_26981D250(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_26973D0FC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 56) + 16 * v3;
  v6 = *v5;
  v7 = *(v5 + 8);
}

uint64_t sub_26981D2A4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_26973ED38(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_89_1(v2);
}

uint64_t sub_26981D2F0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_26973D178(), (v3 & 1) != 0))
  {
    v4 = *(a2 + 56);
    v5 = type metadata accessor for DeviceSelectionDonationAggregations(0);
    OUTLINED_FUNCTION_4_3(v5);
    v7 = *(v6 + 72);
    sub_26982A098();
    v8 = OUTLINED_FUNCTION_78_0();
  }

  else
  {
    type metadata accessor for DeviceSelectionDonationAggregations(0);
    v8 = OUTLINED_FUNCTION_3_0();
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_26981D3DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3();
  if (v4)
  {
    return OUTLINED_FUNCTION_89_1(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26981D434(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 4;
  }

  v3 = sub_26973ED40();
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 4;
  }
}

uint64_t sub_26981D480(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 9;
  }

  v3 = sub_26973ED40();
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 9;
  }
}

uint64_t sub_26981D4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  v5 = sub_26973D3A8(a1, a2, a3, a4);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_89_1(v5);
}

uint64_t sub_26981D518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_163_0(a1, a2, a3);
  if (v6 && (v7 = v5, sub_26973CEF8(v3, v4), (v8 & 1) != 0))
  {
    v9 = *(v7 + 56);
    v10 = _s8PlayableVMa();
    OUTLINED_FUNCTION_4_3(v10);
    v12 = *(v11 + 72);
    sub_26982A098();
    v13 = OUTLINED_FUNCTION_78_0();
  }

  else
  {
    _s8PlayableVMa();
    v13 = OUTLINED_FUNCTION_3_0();
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t sub_26981D5B8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_26973D434();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_89_1(v2);
}

void sub_26981D604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_163_0(a1, a2, a3);
  if (v7 && (v8 = v6, v9 = sub_26973CEF8(v4, v5), (v10 & 1) != 0))
  {
    v11 = *(v8 + 56) + 40 * v9;
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    v16 = *(v11 + 24);
    v15 = *(v11 + 32);
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v14 = 0;
    v16 = 0;
    v15 = 0;
  }

  *v3 = v13;
  v3[1] = v12;
  v3[2] = v14;
  v3[3] = v16;
  v3[4] = v15;
}

uint64_t sub_26981D690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = sub_26973CEF8(a1, a2);
    if (v4)
    {
      OUTLINED_FUNCTION_168_0(v3);
    }
  }

  return OUTLINED_FUNCTION_50_0();
}

uint64_t sub_26981D6D4(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = sub_26973D314(a1);
    if (v3)
    {
      OUTLINED_FUNCTION_168_0(v2);
    }
  }

  return OUTLINED_FUNCTION_50_0();
}

uint64_t sub_26981D730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_163_0(a1, a2, a3);
  if (v9 && (v10 = v8, v11 = sub_26973CEF8(v6, v7), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = a4(0);
    OUTLINED_FUNCTION_4_3(v15);
    (*(v16 + 16))(v4, v14 + *(v16 + 72) * v13, v15);
    v17 = OUTLINED_FUNCTION_78_0();
  }

  else
  {
    a4(0);
    v17 = OUTLINED_FUNCTION_3_0();
  }

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

void VideoDataModels.VideoResult.init(id:title:metadataPreamble:inTheatersDetail:contentRatingValue:contentRatingSystem:image:actionProperty:description:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_19_1();
  a19 = v29;
  a20 = v30;
  v74 = v31;
  v75 = v32;
  v71 = v33;
  v72 = v34;
  v69 = v35;
  v70 = v36;
  v67 = v37;
  v68 = v38;
  v81 = a27;
  v82 = a28;
  v79 = a23;
  v80 = a24;
  v77 = a21;
  v78 = a22;
  v76 = a26;
  v73 = a25;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E0, &unk_26985D8B0);
  v39 = OUTLINED_FUNCTION_4_3(v64);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_24_3();
  v63[5] = v42;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_116_2();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  v45 = OUTLINED_FUNCTION_4_3(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_115_2();
  MEMORY[0x28223BE20](v48);
  v50 = v63 - v49;
  v83 = 0;
  v84 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  sub_269852674();
  v51 = type metadata accessor for VideoDataModels.VideoResult(0);
  v63[4] = v51[5];
  OUTLINED_FUNCTION_39_7();
  v63[3] = v51[6];
  OUTLINED_FUNCTION_39_7();
  v63[2] = v51[7];
  OUTLINED_FUNCTION_39_7();
  v66 = v51[8];
  OUTLINED_FUNCTION_39_7();
  v65 = v51[9];
  OUTLINED_FUNCTION_39_7();
  v63[0] = v51[10];
  sub_269851C74();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  OUTLINED_FUNCTION_5_25();
  sub_269802A74();
  sub_269852674();
  sub_26969B0C0(v50, &qword_280323030, &qword_26985BAE0);
  v63[1] = v51[11];
  sub_269852624();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  sub_269802A74();
  sub_269852674();
  sub_26969B0C0(v28, &qword_2803239E0, &unk_26985D8B0);
  v64 = v51[12];
  OUTLINED_FUNCTION_39_7();
  v83 = v67;
  v84 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  sub_2698526A4();
  OUTLINED_FUNCTION_23_11(v70);
  OUTLINED_FUNCTION_127_0(&a17);
  sub_2698526A4();
  OUTLINED_FUNCTION_23_11(v72);
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_139_0();
  OUTLINED_FUNCTION_23_11(v75);
  OUTLINED_FUNCTION_127_0(&a15);
  sub_2698526A4();
  v60 = v73;
  sub_269802A74();
  OUTLINED_FUNCTION_5_25();
  sub_269802A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
  OUTLINED_FUNCTION_127_0(&a13);
  sub_2698526A4();
  sub_26969B0C0(v50, &qword_280323030, &qword_26985BAE0);
  sub_269802A74();
  sub_269802A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  OUTLINED_FUNCTION_127_0(&a14);
  sub_2698526A4();
  sub_26969B0C0(v28, &qword_2803239E0, &unk_26985D8B0);
  OUTLINED_FUNCTION_23_11(v78);
  OUTLINED_FUNCTION_139_0();
  OUTLINED_FUNCTION_23_11(v80);
  OUTLINED_FUNCTION_139_0();
  OUTLINED_FUNCTION_23_11(v82);
  OUTLINED_FUNCTION_139_0();
  v61 = OUTLINED_FUNCTION_14_26();
  sub_26969B0C0(v61, v62, &unk_26985D8B0);
  sub_26969B0C0(v60, &qword_280323030, &qword_26985BAE0);
  OUTLINED_FUNCTION_21_0();
}

void VideoDataModels.ResultsListModel.init(results:person:header:)()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_31_2();
  v1 = OUTLINED_FUNCTION_74_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v4 = OUTLINED_FUNCTION_4_3(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_36_7();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_72_2();
  v9 = type metadata accessor for VideoDataModels.ResultsListModel(v8);
  v10 = *(v9 + 20);
  type metadata accessor for VideoDataModels.PersonModel(0);
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_16_18();
  sub_269802A74();
  sub_269852674();
  sub_26969B0C0(v0, &qword_2803239D8, &unk_26985BAD0);
  v15 = *(v9 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  sub_269852674();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A18, &unk_26985BB20);
  sub_269852674();
  sub_269802A74();
  OUTLINED_FUNCTION_16_18();
  sub_269802A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A20, &unk_26985D920);
  sub_2698526A4();
  sub_26969B0C0(v0, &qword_2803239D8, &unk_26985BAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  sub_2698526A4();
  v16 = OUTLINED_FUNCTION_22_3();
  sub_26969B0C0(v16, v17, &unk_26985BAD0);
  OUTLINED_FUNCTION_21_0();
}

uint64_t VideoDataModels.VideoResultDisambiguationModel.init(systemText:resultsListModel:)()
{
  v0 = type metadata accessor for VideoDataModels.ResultsListModel(0);
  v1 = OUTLINED_FUNCTION_4_3(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_49_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_26_19();
  sub_269852674();
  sub_26982A098();
  v5 = *(type metadata accessor for VideoDataModels.VideoResultDisambiguationModel(0) + 20);
  sub_26982A098();
  sub_269852674();
  sub_26982A0F0();
  return sub_26982A0F0();
}

void VideoDataModels.ConfirmationViewModel.init(primaryAction:primaryLabel:secondaryAction:secondaryLabel:)()
{
  OUTLINED_FUNCTION_19_1();
  v21 = v2;
  v4 = v3;
  v20 = v3;
  v5 = sub_269852624();
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_36_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_28();
  v12 = type metadata accessor for VideoDataModels.ConfirmationViewModel(0);
  v13 = v12[5];
  sub_269852674();
  v14 = *(v8 + 16);
  v14(v0, v4, v5);
  v14(v1, v0, v5);
  sub_269852674();
  v15 = *(v8 + 8);
  v16 = OUTLINED_FUNCTION_18_3();
  v15(v16);
  v17 = v12[7];
  sub_269852674();
  v14(v0, v21, v5);
  v18 = v12[6];
  v14(v1, v0, v5);
  sub_269852674();
  (v15)(v21, v5);
  (v15)(v20, v5);
  v19 = OUTLINED_FUNCTION_18_3();
  v15(v19);
  OUTLINED_FUNCTION_21_0();
}

void VideoDataModels.BasicDisambiguationItem.init(id:displayText:text2:thumbnail:actionProperty:)()
{
  OUTLINED_FUNCTION_19_1();
  v29 = v2;
  v30 = v3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E0, &unk_26985D8B0);
  v4 = OUTLINED_FUNCTION_4_3(v28);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_118_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A78, &unk_26985BEF0);
  v9 = OUTLINED_FUNCTION_4_3(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_115_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_28();
  v13 = type metadata accessor for VideoDataModels.BasicDisambiguationItem(0);
  v25 = v13[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  sub_269852674();
  v24 = v13[6];
  sub_269852674();
  v26 = v13[7];
  type metadata accessor for VideoDataModels.BasicDisambiguationItem.Thumbnail(0);
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_269802A74();
  OUTLINED_FUNCTION_22_3();
  sub_269852674();
  sub_26969B0C0(v0, &qword_280323A78, &unk_26985BEF0);
  v27 = v13[8];
  sub_269852624();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  OUTLINED_FUNCTION_6_3();
  sub_269802A74();
  sub_269852674();
  sub_26969B0C0(v1, &qword_2803239E0, &unk_26985D8B0);
  sub_269852674();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  sub_2698526A4();
  sub_2698526A4();
  sub_269802A74();
  sub_269802A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A80, &unk_269868860);
  sub_2698526A4();
  sub_26969B0C0(v0, &qword_280323A78, &unk_26985BEF0);
  OUTLINED_FUNCTION_131();
  sub_269802A74();
  OUTLINED_FUNCTION_6_3();
  sub_269802A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  sub_2698526A4();
  sub_26969B0C0(v30, &qword_2803239E0, &unk_26985D8B0);
  sub_26969B0C0(v29, &qword_280323A78, &unk_26985BEF0);
  v22 = OUTLINED_FUNCTION_144_0();
  sub_26969B0C0(v22, v23, &unk_26985D8B0);
  OUTLINED_FUNCTION_21_0();
}

uint64_t VideoDataModels.DisambiguateItemsModel.init(systemText:items:viewId:)()
{
  sub_269852674();
  v0 = type metadata accessor for VideoDataModels.DisambiguateItemsModel(0);
  v1 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A70, &unk_26985BEE0);
  sub_269852674();
  v2 = *(v0 + 24);
  return sub_269852674();
}

void VideoDataModels.ButtonModel.init(label:actionProperty:)()
{
  OUTLINED_FUNCTION_19_1();
  v2 = sub_269852624();
  v3 = OUTLINED_FUNCTION_8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_49_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_26_19();
  sub_269852674();
  v9 = *(v5 + 16);
  v10 = OUTLINED_FUNCTION_144_0();
  v9(v10);
  v11 = *(type metadata accessor for VideoDataModels.ButtonModel(0) + 20);
  (v9)(v0, v1, v2);
  sub_269852674();
  v12 = *(v5 + 8);
  v13 = OUTLINED_FUNCTION_50_0();
  v12(v13);
  (v12)(v1, v2);
  OUTLINED_FUNCTION_21_0();
}

void VideoDataModels.PersonModel.init(name:details:imageUrl:actionProperty:)()
{
  OUTLINED_FUNCTION_19_1();
  v34 = v2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E0, &unk_26985D8B0);
  v3 = OUTLINED_FUNCTION_4_3(v33);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_118_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_26_19();
  v7 = OUTLINED_FUNCTION_16_18();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  v10 = OUTLINED_FUNCTION_4_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_28();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_150_0();
  v15 = type metadata accessor for VideoDataModels.PersonModel(v14);
  v31 = v15[6];
  sub_269851C74();
  v16 = OUTLINED_FUNCTION_3_0();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  OUTLINED_FUNCTION_54_4();
  sub_269802A74();
  sub_269852674();
  sub_26969B0C0(v0, &qword_280323030, &qword_26985BAE0);
  v32 = v15[7];
  sub_269852624();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  OUTLINED_FUNCTION_6_3();
  sub_269802A74();
  sub_269852674();
  sub_26969B0C0(v1, &qword_2803239E0, &unk_26985D8B0);
  sub_269852674();
  v24 = v15[5];
  sub_269852674();
  OUTLINED_FUNCTION_2_6();
  sub_269802A74();
  OUTLINED_FUNCTION_54_4();
  sub_269802A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
  sub_2698526A4();
  v25 = OUTLINED_FUNCTION_14_26();
  sub_26969B0C0(v25, v26, &qword_26985BAE0);
  OUTLINED_FUNCTION_131();
  sub_269802A74();
  OUTLINED_FUNCTION_6_3();
  sub_269802A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  sub_2698526A4();
  sub_26969B0C0(v34, &qword_2803239E0, &unk_26985D8B0);
  v27 = OUTLINED_FUNCTION_74_2();
  sub_26969B0C0(v27, v28, &qword_26985BAE0);
  v29 = OUTLINED_FUNCTION_144_0();
  sub_26969B0C0(v29, v30, &unk_26985D8B0);
  OUTLINED_FUNCTION_21_0();
}

void VideoDataModels.snippetHidden(for:idiom:)()
{
  OUTLINED_FUNCTION_19_1();
  v3 = v2;
  v4 = type metadata accessor for VideoDataModels(0);
  v5 = OUTLINED_FUNCTION_4_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_13();
  v8 = sub_2698542F4();
  v9 = OUTLINED_FUNCTION_8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24_3();
  v41 = v14;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_118_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_72_2();
  v17 = sub_2698548D4();
  v18 = OUTLINED_FUNCTION_8(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_1();
  v25 = v24 - v23;
  if (qword_2803226E0 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v17, qword_28033D910);
  (*(v20 + 16))(v25, v26, v17);
  v42 = v3;
  v43 = *(v11 + 16);
  v43(v0, v3, v8);
  v39 = v25;
  v27 = sub_2698548B4();
  v40 = v17;
  v28 = sub_269854F14();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v44 = v38;
    *v29 = 136315138;
    v43(v1, v0, v8);
    v30 = sub_269854AE4();
    v32 = v31;
    v33 = OUTLINED_FUNCTION_155();
    v1(v33);
    v34 = sub_26974F520(v30, v32, &v44);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_269684000, v27, v28, "VideoDataModels.snippetHidden() called for idiom: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x26D647170](v38, -1, -1);
    MEMORY[0x26D647170](v29, -1, -1);
  }

  else
  {

    v35 = OUTLINED_FUNCTION_155();
    v1(v35);
  }

  (*(v20 + 8))(v39, v40);
  v43(v41, v42, v8);
  v36 = (*(v11 + 88))(v41, v8);
  v37 = *MEMORY[0x277D61BE8];
  (v1)(v41, v8);
  if (v36 == v37)
  {
    sub_26982A098();
    swift_getEnumCaseMultiPayload();
    sub_26982A0F0();
  }

  OUTLINED_FUNCTION_21_0();
}

uint64_t VideoDataModels.VideoResult.id.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  sub_269852694();
  return v1;
}

uint64_t (*VideoDataModels.VideoResult.id.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_13(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  *(v0 + 32) = OUTLINED_FUNCTION_124_1();
  return sub_26982EB30;
}

uint64_t (*VideoDataModels.VideoResult.title.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  v4 = *(type metadata accessor for VideoDataModels.VideoResult(v3) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t (*VideoDataModels.VideoResult.metadataPreamble.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  v4 = *(type metadata accessor for VideoDataModels.VideoResult(v3) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t VideoDataModels.VideoResult.inTheatersDetail.getter()
{
  v0 = *(type metadata accessor for VideoDataModels.VideoResult(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_125_0();
  return v2;
}

uint64_t VideoDataModels.VideoResult.inTheatersDetail.setter()
{
  v0 = OUTLINED_FUNCTION_86_1();
  v1 = *(type metadata accessor for VideoDataModels.VideoResult(v0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  return OUTLINED_FUNCTION_52_5();
}

uint64_t (*VideoDataModels.VideoResult.inTheatersDetail.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  v4 = *(type metadata accessor for VideoDataModels.VideoResult(v3) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t VideoDataModels.VideoResult.contentRatingValue.getter()
{
  v0 = *(type metadata accessor for VideoDataModels.VideoResult(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_125_0();
  return v2;
}

uint64_t VideoDataModels.VideoResult.contentRatingValue.setter()
{
  v0 = OUTLINED_FUNCTION_86_1();
  v1 = *(type metadata accessor for VideoDataModels.VideoResult(v0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  return OUTLINED_FUNCTION_52_5();
}

uint64_t (*VideoDataModels.VideoResult.contentRatingValue.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  v4 = *(type metadata accessor for VideoDataModels.VideoResult(v3) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t VideoDataModels.VideoResult.contentRatingSystem.getter()
{
  v0 = *(type metadata accessor for VideoDataModels.VideoResult(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_125_0();
  return v2;
}

uint64_t VideoDataModels.VideoResult.contentRatingSystem.setter()
{
  v0 = OUTLINED_FUNCTION_86_1();
  v1 = *(type metadata accessor for VideoDataModels.VideoResult(v0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  return OUTLINED_FUNCTION_52_5();
}

uint64_t (*VideoDataModels.VideoResult.contentRatingSystem.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  v4 = *(type metadata accessor for VideoDataModels.VideoResult(v3) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t VideoDataModels.VideoResult.image.getter()
{
  v0 = *(type metadata accessor for VideoDataModels.VideoResult(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
  return sub_269852694();
}

uint64_t VideoDataModels.VideoResult.image.setter()
{
  v0 = OUTLINED_FUNCTION_74_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_8_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_32();
  v6 = *(type metadata accessor for VideoDataModels.VideoResult(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
  OUTLINED_FUNCTION_62_3();
  v7 = OUTLINED_FUNCTION_22_3();
  return sub_26969B0C0(v7, v8, &qword_26985BAE0);
}

uint64_t (*VideoDataModels.VideoResult.image.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  v4 = *(type metadata accessor for VideoDataModels.VideoResult(v3) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t sub_26981F430(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_9();
  sub_269802A74();
  sub_269852674();
  return sub_26969B0C0(a1, a2, a3);
}

uint64_t VideoDataModels.VideoResult.actionProperty.getter()
{
  v0 = *(type metadata accessor for VideoDataModels.VideoResult(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  return sub_269852694();
}

uint64_t VideoDataModels.VideoResult.actionProperty.setter()
{
  v0 = OUTLINED_FUNCTION_74_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_8_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_32();
  v6 = *(type metadata accessor for VideoDataModels.VideoResult(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  OUTLINED_FUNCTION_62_3();
  v7 = OUTLINED_FUNCTION_22_3();
  return sub_26969B0C0(v7, v8, &unk_26985D8B0);
}

uint64_t (*VideoDataModels.VideoResult.actionProperty.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  v4 = *(type metadata accessor for VideoDataModels.VideoResult(v3) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t VideoDataModels.VideoResult.description.getter()
{
  v0 = *(type metadata accessor for VideoDataModels.VideoResult(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_125_0();
  return v2;
}

uint64_t VideoDataModels.VideoResult.description.setter()
{
  v0 = OUTLINED_FUNCTION_86_1();
  v1 = *(type metadata accessor for VideoDataModels.VideoResult(v0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  return OUTLINED_FUNCTION_52_5();
}

uint64_t (*VideoDataModels.VideoResult.description.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  v4 = *(type metadata accessor for VideoDataModels.VideoResult(v3) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t sub_26981F774(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x8000000269881100 == a2;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000269881160 == a2;
        if (v8 || (sub_269855584() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x8000000269881120 == a2;
          if (v9 || (sub_269855584() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x8000000269881140 == a2;
            if (v10 || (sub_269855584() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
              if (v11 || (sub_269855584() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x72506E6F69746361 && a2 == 0xEE0079747265706FLL;
                if (v12 || (sub_269855584() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_269855584();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_26981FA38(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      v3 = 1819568500;
      goto LABEL_10;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      v3 = 1734438249;
LABEL_10:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 7:
      result = 0x72506E6F69746361;
      break;
    case 8:
      result = 0x7470697263736564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26981FB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26981F774(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26981FB70(uint64_t a1)
{
  v2 = sub_26982A178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26981FBAC(uint64_t a1)
{
  v2 = sub_26982A178();

  return MEMORY[0x2821FE720](a1, v2);
}

void VideoDataModels.VideoResult.encode(to:)()
{
  OUTLINED_FUNCTION_43();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325C28, &qword_269868878);
  OUTLINED_FUNCTION_8(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_21_2();
  sub_26982A178();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_44_9();
  sub_2698556F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_1_57();
  sub_26982A5F8(v7);
  OUTLINED_FUNCTION_10_33();
  sub_269855514();
  if (!v0)
  {
    v8 = type metadata accessor for VideoDataModels.VideoResult(0);
    v9 = v8[5];
    OUTLINED_FUNCTION_10_33();
    sub_269855514();
    v10 = v8[6];
    OUTLINED_FUNCTION_10_33();
    sub_269855514();
    v11 = v8[7];
    OUTLINED_FUNCTION_10_33();
    sub_269855514();
    v12 = v8[8];
    OUTLINED_FUNCTION_10_33();
    sub_269855514();
    v13 = v8[9];
    OUTLINED_FUNCTION_10_33();
    sub_269855514();
    v18 = v8[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
    sub_26982A1CC();
    OUTLINED_FUNCTION_27_16();
    sub_269855514();
    v19 = v8[11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
    sub_26982A404();
    OUTLINED_FUNCTION_27_16();
    sub_269855514();
    v14 = v8[12];
    OUTLINED_FUNCTION_10_33();
    sub_269855514();
  }

  v15 = *(v3 + 8);
  v16 = OUTLINED_FUNCTION_5_25();
  v17(v16);
  OUTLINED_FUNCTION_44();
}

void VideoDataModels.VideoResult.init(from:)()
{
  OUTLINED_FUNCTION_43();
  v86 = v3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  OUTLINED_FUNCTION_8(v69);
  v66 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_35_2(v8);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
  OUTLINED_FUNCTION_8(v71);
  v67 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_35_2(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  v79 = OUTLINED_FUNCTION_8(v14);
  v80 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_24_3();
  v65 = v18;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_23_3();
  v74 = v20;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_130(v26);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325C90, &qword_269868880);
  OUTLINED_FUNCTION_8(v82);
  v78 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_29_16();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E0, &unk_26985D8B0);
  v31 = OUTLINED_FUNCTION_4_3(v84);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_26_19();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  v35 = OUTLINED_FUNCTION_4_3(v83);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_28();
  MEMORY[0x28223BE20](v38);
  v39 = OUTLINED_FUNCTION_72_2();
  v40 = type metadata accessor for VideoDataModels.VideoResult(v39);
  v41 = (v40 - 8);
  v42 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3_1();
  v45 = v44 - v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  sub_269852674();
  v77 = v41[7];
  OUTLINED_FUNCTION_90_2();
  v76 = v41[8];
  OUTLINED_FUNCTION_90_2();
  v75 = v41[9];
  OUTLINED_FUNCTION_90_2();
  v73 = v41[10];
  OUTLINED_FUNCTION_90_2();
  v70 = v41[11];
  OUTLINED_FUNCTION_90_2();
  v46 = v41[12];
  sub_269851C74();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  sub_269802A74();
  sub_269852674();
  sub_26969B0C0(v2, &qword_280323030, &qword_26985BAE0);
  v51 = v41[13];
  sub_269852624();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  sub_269802A74();
  sub_269852674();
  sub_26969B0C0(v1, &qword_2803239E0, &unk_26985D8B0);
  v56 = v41[14];
  sub_269852674();
  v57 = v86[4];
  OUTLINED_FUNCTION_56_5(v86, v86[3]);
  sub_26982A178();
  OUTLINED_FUNCTION_156_0();
  sub_2698556E4();
  if (!v0)
  {
    OUTLINED_FUNCTION_0_62();
    v59 = sub_26982A5F8(v58);
    OUTLINED_FUNCTION_114_2();
    v85 = *(v80 + 40);
    v85(v45, v81, v79);
    OUTLINED_FUNCTION_95_2(1);
    OUTLINED_FUNCTION_36_10();
    OUTLINED_FUNCTION_114_2();
    v60 = OUTLINED_FUNCTION_81_1(v77);
    (v85)(v60);
    OUTLINED_FUNCTION_95_2(2);
    OUTLINED_FUNCTION_36_10();
    OUTLINED_FUNCTION_114_2();
    v61 = OUTLINED_FUNCTION_81_1(v76);
    (v85)(v61);
    OUTLINED_FUNCTION_95_2(3);
    OUTLINED_FUNCTION_36_10();
    OUTLINED_FUNCTION_114_2();
    v62 = OUTLINED_FUNCTION_81_1(v75);
    (v85)(v62);
    OUTLINED_FUNCTION_95_2(4);
    OUTLINED_FUNCTION_36_10();
    OUTLINED_FUNCTION_121_1();
    v63 = OUTLINED_FUNCTION_81_1(v73);
    (v85)(v63);
    OUTLINED_FUNCTION_95_2(5);
    OUTLINED_FUNCTION_36_10();
    OUTLINED_FUNCTION_121_1();
    OUTLINED_FUNCTION_126_0();
    v85(v45 + v64, v74, v79);
    sub_26982A6A8();
    OUTLINED_FUNCTION_102_1();
    OUTLINED_FUNCTION_36_10();
    OUTLINED_FUNCTION_121_1();
    (*(v67 + 40))(v45 + v46, v72, v71);
    sub_26982A734();
    OUTLINED_FUNCTION_102_1();
    OUTLINED_FUNCTION_121_1();
    (*(v66 + 40))(v45 + v51, v68, v69);
    OUTLINED_FUNCTION_95_2(8);
    OUTLINED_FUNCTION_156_0();
    OUTLINED_FUNCTION_121_1();
    (*(v78 + 8))(v59, v82);
    v85(v45 + v56, v65, v79);
    sub_26982A098();
  }

  __swift_destroy_boxed_opaque_existential_0(v86);
  sub_26982A0F0();
  OUTLINED_FUNCTION_44();
}

uint64_t sub_269820718@<X0>(uint64_t *a1@<X8>)
{
  result = VideoDataModels.VideoResult.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*VideoDataModels.PersonModel.name.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_13(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  *(v0 + 32) = OUTLINED_FUNCTION_124_1();
  return sub_26982EB30;
}

uint64_t (*VideoDataModels.PersonModel.details.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  v4 = *(type metadata accessor for VideoDataModels.PersonModel(v3) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t VideoDataModels.PersonModel.imageUrl.setter()
{
  v0 = OUTLINED_FUNCTION_74_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_8_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_32();
  v6 = *(type metadata accessor for VideoDataModels.PersonModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
  OUTLINED_FUNCTION_62_3();
  v7 = OUTLINED_FUNCTION_22_3();
  return sub_26969B0C0(v7, v8, &qword_26985BAE0);
}

uint64_t (*VideoDataModels.PersonModel.imageUrl.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  v4 = *(type metadata accessor for VideoDataModels.PersonModel(v3) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t VideoDataModels.PersonModel.actionProperty.setter()
{
  v0 = OUTLINED_FUNCTION_74_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_8_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_32();
  v6 = *(type metadata accessor for VideoDataModels.PersonModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  OUTLINED_FUNCTION_62_3();
  v7 = OUTLINED_FUNCTION_22_3();
  return sub_26969B0C0(v7, v8, &unk_26985D8B0);
}

uint64_t (*VideoDataModels.PersonModel.actionProperty.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  v4 = *(type metadata accessor for VideoDataModels.PersonModel(v3) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t sub_269820AFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736C6961746564 && a2 == 0xE700000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C72556567616D69 && a2 == 0xE800000000000000;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x72506E6F69746361 && a2 == 0xEE0079747265706FLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_269855584();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_269820C5C(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x736C6961746564;
      break;
    case 2:
      result = 0x6C72556567616D69;
      break;
    case 3:
      result = 0x72506E6F69746361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_269820CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_269820AFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_269820D14(uint64_t a1)
{
  v2 = sub_26982A7C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269820D50(uint64_t a1)
{
  v2 = sub_26982A7C0();

  return MEMORY[0x2821FE720](a1, v2);
}

void VideoDataModels.PersonModel.encode(to:)()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_119_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325CB0, &qword_269868888);
  OUTLINED_FUNCTION_8(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_21_2();
  sub_26982A7C0();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_44_9();
  sub_2698556F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_1_57();
  sub_26982A814(v7);
  OUTLINED_FUNCTION_41_6();
  if (!v0)
  {
    v8 = type metadata accessor for VideoDataModels.PersonModel(0);
    v9 = v8[5];
    OUTLINED_FUNCTION_41_6();
    v10 = v8[6];
    OUTLINED_FUNCTION_47();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
    sub_26982A1CC();
    OUTLINED_FUNCTION_27_16();
    sub_269855514();
    v11 = v8[7];
    OUTLINED_FUNCTION_46();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
    sub_26982A404();
    OUTLINED_FUNCTION_27_16();
    sub_269855514();
  }

  v12 = *(v3 + 8);
  v13 = OUTLINED_FUNCTION_5_25();
  v14(v13);
  OUTLINED_FUNCTION_157_0();
  OUTLINED_FUNCTION_44();
}

void VideoDataModels.PersonModel.init(from:)()
{
  OUTLINED_FUNCTION_43();
  v73 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  v4 = OUTLINED_FUNCTION_8(v3);
  v75 = v5;
  v76 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_29_16();
  v65 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
  v11 = OUTLINED_FUNCTION_8(v10);
  v77 = v12;
  v78 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_29_16();
  v66 = v16;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  v17 = OUTLINED_FUNCTION_8(v70);
  v68 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_24_3();
  v67 = v21;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_13();
  v69 = v23;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325CC8, &qword_269868890);
  OUTLINED_FUNCTION_8(v71);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_29_16();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E0, &unk_26985D8B0);
  v27 = OUTLINED_FUNCTION_4_3(v72);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_15_28();
  v31 = OUTLINED_FUNCTION_131();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
  v34 = OUTLINED_FUNCTION_4_3(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_49_8();
  MEMORY[0x28223BE20](v37);
  v38 = OUTLINED_FUNCTION_150_0();
  v39 = type metadata accessor for VideoDataModels.PersonModel(v38);
  v40 = OUTLINED_FUNCTION_4_3(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3_1();
  v45 = v44 - v43;
  v47 = *(v46 + 24);
  sub_269851C74();
  v48 = OUTLINED_FUNCTION_3_0();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  sub_269802A74();
  v74 = v47;
  sub_269852674();
  sub_26969B0C0(v0, &qword_280323030, &qword_26985BAE0);
  v52 = *(v39 + 28);
  sub_269852624();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  sub_269802A74();
  sub_269852674();
  v57 = OUTLINED_FUNCTION_18_3();
  sub_26969B0C0(v57, v58, &unk_26985D8B0);
  v59 = v73[4];
  OUTLINED_FUNCTION_56_5(v73, v73[3]);
  sub_26982A7C0();
  OUTLINED_FUNCTION_156_0();
  sub_2698556E4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v73);
    (*(v77 + 8))(v45 + v74, v78);
    OUTLINED_FUNCTION_45_6();
    v61(v45 + v52, v76);
  }

  else
  {
    OUTLINED_FUNCTION_0_62();
    sub_26982A814(v60);
    OUTLINED_FUNCTION_166();
    v62 = *(v68 + 32);
    v62(v45, v69, v70);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_166();
    v62(v45 + *(v39 + 20), v67, v70);
    OUTLINED_FUNCTION_47();
    sub_26982A6A8();
    sub_269855494();
    (*(v77 + 40))(v45 + v74, v66, v78);
    OUTLINED_FUNCTION_46();
    sub_26982A734();
    sub_269855494();
    v63 = OUTLINED_FUNCTION_48_8();
    v64(v63, v71);
    (*(v75 + 40))(v45 + v52, v65, v76);
    sub_26982A098();
    __swift_destroy_boxed_opaque_existential_0(v73);
    sub_26982A0F0();
  }

  OUTLINED_FUNCTION_157_0();
  OUTLINED_FUNCTION_44();
}

uint64_t VideoDataModels.ResultsListModel.results.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325CD8, &qword_269868898);
  sub_269852694();
  return v1;
}

uint64_t (*VideoDataModels.ResultsListModel.results.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_13(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325CD8, &qword_269868898);
  *(v0 + 32) = OUTLINED_FUNCTION_124_1();
  return sub_26982EB30;
}

uint64_t VideoDataModels.ResultsListModel.person.setter()
{
  v0 = OUTLINED_FUNCTION_74_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_8_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_32();
  v6 = *(type metadata accessor for VideoDataModels.ResultsListModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A20, &unk_26985D920);
  OUTLINED_FUNCTION_62_3();
  v7 = OUTLINED_FUNCTION_22_3();
  return sub_26969B0C0(v7, v8, &unk_26985BAD0);
}

uint64_t (*VideoDataModels.ResultsListModel.person.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  v4 = *(type metadata accessor for VideoDataModels.ResultsListModel(v3) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A20, &unk_26985D920);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t sub_2698218EC(uint64_t (*a1)(void))
{
  v1 = *(a1(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_125_0();
  return v3;
}

uint64_t sub_269821958()
{
  v0 = OUTLINED_FUNCTION_86_1();
  v2 = *(v1(v0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  return OUTLINED_FUNCTION_52_5();
}

uint64_t (*VideoDataModels.ResultsListModel.header.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  v4 = *(type metadata accessor for VideoDataModels.ResultsListModel(v3) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t sub_269821A18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746C75736572 && a2 == 0xE700000000000000;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F73726570 && a2 == 0xE600000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x726564616568 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_269855584();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_269821B28(char a1)
{
  if (!a1)
  {
    return 0x73746C75736572;
  }

  if (a1 == 1)
  {
    return 0x6E6F73726570;
  }

  return 0x726564616568;
}

uint64_t sub_269821B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_269821A18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_269821BA8(uint64_t a1)
{
  v2 = sub_26982A880();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269821BE4(uint64_t a1)
{
  v2 = sub_26982A880();

  return MEMORY[0x2821FE720](a1, v2);
}

void VideoDataModels.ResultsListModel.encode(to:)()
{
  OUTLINED_FUNCTION_76_3();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325CE0, &qword_2698688A0);
  OUTLINED_FUNCTION_8(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_16_27();
  OUTLINED_FUNCTION_21_2();
  sub_26982A880();
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_44_9();
  sub_2698556F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325CD8, &qword_269868898);
  sub_26982A8D4();
  OUTLINED_FUNCTION_21_22();
  if (!v0)
  {
    v5 = type metadata accessor for VideoDataModels.ResultsListModel(0);
    v6 = *(v5 + 20);
    OUTLINED_FUNCTION_48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A20, &unk_26985D920);
    sub_26982AAC8();
    OUTLINED_FUNCTION_22_21();
    v7 = *(v5 + 24);
    OUTLINED_FUNCTION_47();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
    OUTLINED_FUNCTION_1_57();
    sub_26982A5F8(v8);
    OUTLINED_FUNCTION_148_0();
    OUTLINED_FUNCTION_22_21();
  }

  v9 = OUTLINED_FUNCTION_68_5();
  v10(v9);
  OUTLINED_FUNCTION_158();
}

void VideoDataModels.ResultsListModel.init(from:)()
{
  OUTLINED_FUNCTION_43();
  v56 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  v5 = OUTLINED_FUNCTION_8(v4);
  v53 = v6;
  v54 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_29_16();
  v45 = v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A20, &unk_26985D920);
  OUTLINED_FUNCTION_8(v52);
  v55 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_29_16();
  v48 = v15;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325CD8, &qword_269868898);
  OUTLINED_FUNCTION_8(v49);
  v46 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_130(v20);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325D40, &qword_2698688A8);
  OUTLINED_FUNCTION_8(v51);
  v47 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_52_4();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239D8, &unk_26985BAD0);
  v26 = OUTLINED_FUNCTION_4_3(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_36_7();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_116_2();
  v30 = type metadata accessor for VideoDataModels.ResultsListModel(0);
  v31 = v30 - 8;
  v32 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_1();
  v35 = v34 - v33;
  v36 = *(v31 + 28);
  type metadata accessor for VideoDataModels.PersonModel(0);
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  sub_269802A74();
  sub_269852674();
  sub_26969B0C0(v2, &qword_2803239D8, &unk_26985BAD0);
  v41 = *(v31 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  sub_269852674();
  v42 = v56[4];
  OUTLINED_FUNCTION_56_5(v56, v56[3]);
  sub_26982A880();
  sub_2698556E4();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v56);
    (*(v55 + 8))(v35 + v36, v52);
    OUTLINED_FUNCTION_45_6();
    v43(v35 + v41, v54);
  }

  else
  {
    sub_26982ACBC();
    sub_269855494();
    (*(v46 + 32))(v35, v50, v49);
    sub_26982AD48();
    sub_269855494();
    (*(v55 + 40))(v35 + v36, v48, v52);
    OUTLINED_FUNCTION_0_62();
    sub_26982A5F8(v44);
    sub_269855494();
    (*(v47 + 8))(v1, v51);
    (*(v53 + 40))(v35 + v41, v45, v54);
    OUTLINED_FUNCTION_18_21();
    sub_26982A098();
    __swift_destroy_boxed_opaque_existential_0(v56);
    OUTLINED_FUNCTION_4_43();
    sub_26982A0F0();
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_26982232C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6349707061 && a2 == 0xE700000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5654656C707061 && a2 == 0xE700000000000000;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x8000000269881180 == a2;
        if (v8 || (sub_269855584() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000002698811A0 == a2;
          if (v9 || (sub_269855584() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000018 && 0x80000002698811C0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_269855584();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_269822518(char a1)
{
  result = 0x6567616D69;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6349707061;
      break;
    case 2:
      result = 0x5654656C707061;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_269822610(uint64_t a1)
{
  v2 = sub_26982AF78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26982264C(uint64_t a1)
{
  v2 = sub_26982AF78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26982268C(uint64_t a1)
{
  v2 = sub_26982AF24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2698226C8(uint64_t a1)
{
  v2 = sub_26982AF24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26982270C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26982232C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_269822734(uint64_t a1)
{
  v2 = sub_26982ADD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269822770(uint64_t a1)
{
  v2 = sub_26982ADD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2698227AC(uint64_t a1)
{
  v2 = sub_26982AFCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2698227E8(uint64_t a1)
{
  v2 = sub_26982AFCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_269822824(uint64_t a1)
{
  v2 = sub_26982AED0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269822860(uint64_t a1)
{
  v2 = sub_26982AED0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26982289C(uint64_t a1)
{
  v2 = sub_26982AE7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2698228D8(uint64_t a1)
{
  v2 = sub_26982AE7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_269822914(uint64_t a1)
{
  v2 = sub_26982AE28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269822950(uint64_t a1)
{
  v2 = sub_26982AE28();

  return MEMORY[0x2821FE720](a1, v2);
}

void static VideoDataModels.BasicDisambiguationItem.Thumbnail.__derived_enum_equals(_:_:)()
{
  OUTLINED_FUNCTION_19_1();
  v1 = sub_269851C74();
  v2 = OUTLINED_FUNCTION_8(v1);
  v32 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  v9 = type metadata accessor for VideoDataModels.BasicDisambiguationItem.Thumbnail(0);
  v10 = OUTLINED_FUNCTION_4_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12();
  v15 = (v13 - v14);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15_28();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325D58, &qword_2698688B0);
  OUTLINED_FUNCTION_8_9(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_143_0();
  v22 = (v0 + *(v21 + 56));
  sub_26982A098();
  sub_26982A098();
  OUTLINED_FUNCTION_14_26();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_19_19();
      sub_26982A098();
      v26 = *v15;
      v25 = v15[1];
      if (OUTLINED_FUNCTION_141_0() != 1)
      {

        goto LABEL_20;
      }

      if (v26 == *v22 && v25 == v22[1])
      {
        v31 = v22[1];
      }

      else
      {
        v28 = v22[1];
        sub_269855584();
      }

      goto LABEL_23;
    case 2u:
      if (OUTLINED_FUNCTION_141_0() == 2)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    case 3u:
      if (OUTLINED_FUNCTION_141_0() == 3)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    case 4u:
      if (OUTLINED_FUNCTION_141_0() == 4)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    case 5u:
      if (OUTLINED_FUNCTION_141_0() != 5)
      {
        goto LABEL_20;
      }

LABEL_23:
      OUTLINED_FUNCTION_20_19();
      break;
    default:
      OUTLINED_FUNCTION_19_19();
      OUTLINED_FUNCTION_54_4();
      sub_26982A098();
      if (OUTLINED_FUNCTION_141_0())
      {
        v23 = OUTLINED_FUNCTION_88_1();
        v24(v23, v1);
LABEL_20:
        sub_26969B0C0(v0, &qword_280325D58, &qword_2698688B0);
      }

      else
      {
        (*(v32 + 32))(v8, v22, v1);
        sub_269851C34();
        v29 = *(v32 + 8);
        v29(v8, v1);
        v30 = OUTLINED_FUNCTION_18_3();
        (v29)(v30);
        OUTLINED_FUNCTION_20_19();
      }

      break;
  }

  OUTLINED_FUNCTION_21_0();
}

void VideoDataModels.BasicDisambiguationItem.Thumbnail.encode(to:)()
{
  OUTLINED_FUNCTION_43();
  v107 = v1;
  v108 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325D60, &qword_2698688B8);
  v6 = OUTLINED_FUNCTION_8(v5);
  v103 = v7;
  v104 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_29_16();
  v102 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325D68, &qword_2698688C0);
  v13 = OUTLINED_FUNCTION_8(v12);
  v100 = v14;
  v101 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_29_16();
  v99 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325D70, &qword_2698688C8);
  v20 = OUTLINED_FUNCTION_8(v19);
  v97 = v21;
  v98 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_29_16();
  v96 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325D78, &qword_2698688D0);
  v27 = OUTLINED_FUNCTION_8(v26);
  v94 = v28;
  v95 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_29_16();
  v90 = v32;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325D80, &qword_2698688D8);
  OUTLINED_FUNCTION_8(v93);
  v91 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v36);
  v38 = &v86 - v37;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325D88, &qword_2698688E0);
  OUTLINED_FUNCTION_8(v92);
  v89 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_12_9();
  v88 = sub_269851C74();
  v43 = OUTLINED_FUNCTION_8(v88);
  v87 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3_1();
  v49 = v48 - v47;
  v50 = type metadata accessor for VideoDataModels.BasicDisambiguationItem.Thumbnail(0);
  v51 = OUTLINED_FUNCTION_4_3(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_52_4();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325D90, &qword_2698688E8);
  v55 = OUTLINED_FUNCTION_8(v54);
  v105 = v56;
  v106 = v55;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_16_27();
  v60 = *(v4 + 24);
  v61 = *(v4 + 32);
  v62 = OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_56_5(v62, v63);
  sub_26982ADD4();
  OUTLINED_FUNCTION_137();
  sub_2698556F4();
  OUTLINED_FUNCTION_19_19();
  sub_26982A098();
  OUTLINED_FUNCTION_144_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v80 = *v2;
      v81 = v2[1];
      sub_26982AF78();
      v82 = v106;
      sub_2698554B4();
      OUTLINED_FUNCTION_14_26();
      v83 = v93;
      sub_2698554E4();

      (*(v91 + 8))(v38, v83);
      v74 = OUTLINED_FUNCTION_77_3();
      v76 = v82;
      goto LABEL_7;
    case 2u:
      sub_26982AF24();
      v77 = v90;
      OUTLINED_FUNCTION_43_7();
      v79 = v94;
      v78 = v95;
      goto LABEL_9;
    case 3u:
      sub_26982AED0();
      v77 = v96;
      OUTLINED_FUNCTION_43_7();
      v79 = v97;
      v78 = v98;
      goto LABEL_9;
    case 4u:
      sub_26982AE7C();
      v77 = v99;
      OUTLINED_FUNCTION_43_7();
      v79 = v100;
      v78 = v101;
      goto LABEL_9;
    case 5u:
      sub_26982AE28();
      v77 = v102;
      OUTLINED_FUNCTION_43_7();
      v79 = v103;
      v78 = v104;
LABEL_9:
      (*(v79 + 8))(v77, v78);
      v84 = OUTLINED_FUNCTION_77_3();
      v85(v84, v50);
      break;
    default:
      v64 = v87;
      v65 = *(v87 + 32);
      v66 = OUTLINED_FUNCTION_131();
      v67 = v88;
      v68(v66);
      sub_26982AFCC();
      v69 = v106;
      sub_2698554B4();
      OUTLINED_FUNCTION_59_3();
      sub_26982A3C0(v70);
      v71 = v92;
      sub_269855514();
      v72 = OUTLINED_FUNCTION_66_3();
      v73(v72, v71);
      (*(v64 + 8))(v49, v67);
      v74 = OUTLINED_FUNCTION_77_3();
      v76 = v69;
LABEL_7:
      v75(v74, v76);
      break;
  }

  OUTLINED_FUNCTION_44();
}

void VideoDataModels.BasicDisambiguationItem.Thumbnail.init(from:)()
{
  OUTLINED_FUNCTION_43();
  v137 = v0;
  v5 = v4;
  v135 = v6;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325DD0, &qword_2698688F0);
  OUTLINED_FUNCTION_8(v134);
  v132 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_29_16();
  v131 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325DD8, &qword_2698688F8);
  v13 = OUTLINED_FUNCTION_8(v12);
  v123 = v14;
  v124 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_29_16();
  v130 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325DE0, &qword_269868900);
  v20 = OUTLINED_FUNCTION_8(v19);
  v121 = v21;
  v122 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_130(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325DE8, &qword_269868908);
  v27 = OUTLINED_FUNCTION_8(v26);
  v118 = v28;
  v119 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_29_16();
  v129 = v32;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325DF0, &qword_269868910);
  OUTLINED_FUNCTION_8(v120);
  v126 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_29_16();
  v128 = v37;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325DF8, &qword_269868918);
  OUTLINED_FUNCTION_8(v117);
  v125 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_29_16();
  v127 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E00, &qword_269868920);
  OUTLINED_FUNCTION_8(v43);
  v133 = v44;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v47);
  v49 = &v112 - v48;
  v50 = type metadata accessor for VideoDataModels.BasicDisambiguationItem.Thumbnail(0);
  v51 = OUTLINED_FUNCTION_4_3(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_28();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_49_8();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_26_19();
  v56 = v5[3];
  v57 = v5[4];
  v136 = v5;
  v58 = OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_56_5(v58, v59);
  sub_26982ADD4();
  v60 = v137;
  sub_2698556E4();
  if (v60)
  {
    goto LABEL_8;
  }

  v114 = v1;
  v115 = v2;
  v61 = v134;
  v116 = v3;
  v137 = v50;
  v62 = sub_2698554A4();
  v66 = sub_26982B020(v62, 0);
  if (v64 == v65 >> 1)
  {
LABEL_7:
    v76 = v137;
    v77 = sub_269855254();
    swift_allocError();
    v79 = v78;
    v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E08, &qword_269868928) + 48);
    *v79 = v76;
    v81 = sub_269855404();
    OUTLINED_FUNCTION_122_1(v81, "Invalid number of keys found, expected one.");
    (*(*(v77 - 8) + 104))(v79, *MEMORY[0x277D84160], v77);
    swift_willThrow();
    swift_unknownObjectRelease();
    v82 = OUTLINED_FUNCTION_15_31();
    v83(v82);
LABEL_8:
    v84 = v136;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v84);
    OUTLINED_FUNCTION_44();
    return;
  }

  v113 = 0;
  if (v64 < (v65 >> 1))
  {
    v112 = *(v63 + v64);
    sub_26982BCA4(v64 + 1, v65 >> 1, v66, v63, v64, v65);
    v68 = v67;
    v70 = v69;
    swift_unknownObjectRelease();
    v71 = v132;
    if (v68 == v70 >> 1)
    {
      v72 = v113;
      v73 = v131;
      switch(v112)
      {
        case 1:
          sub_26982AF78();
          OUTLINED_FUNCTION_47_7();
          v104 = sub_269855464();
          v106 = v105;
          swift_unknownObjectRelease();
          v107 = OUTLINED_FUNCTION_80_1();
          v108(v107);
          v109 = OUTLINED_FUNCTION_15_31();
          v110(v109);
          v111 = v114;
          *v114 = v104;
          v111[1] = v106;
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_17_25();
          goto LABEL_20;
        case 2:
          sub_26982AF24();
          OUTLINED_FUNCTION_47_7();
          swift_unknownObjectRelease();
          v89 = OUTLINED_FUNCTION_88_1();
          v90(v89);
          v91 = OUTLINED_FUNCTION_15_31();
          v92(v91);
          OUTLINED_FUNCTION_37_9();
          goto LABEL_13;
        case 3:
          sub_26982AED0();
          OUTLINED_FUNCTION_47_7();
          swift_unknownObjectRelease();
          v93 = OUTLINED_FUNCTION_88_1();
          v94(v93);
          v95 = OUTLINED_FUNCTION_15_31();
          v96(v95);
          OUTLINED_FUNCTION_37_9();
          goto LABEL_13;
        case 4:
          sub_26982AE7C();
          OUTLINED_FUNCTION_47_7();
          swift_unknownObjectRelease();
          v85 = OUTLINED_FUNCTION_88_1();
          v86(v85);
          v87 = OUTLINED_FUNCTION_15_31();
          v88(v87);
          OUTLINED_FUNCTION_37_9();
LABEL_13:
          swift_storeEnumTagMultiPayload();
          goto LABEL_14;
        case 5:
          sub_26982AE28();
          sub_2698553F4();
          if (v72)
          {
            v98 = OUTLINED_FUNCTION_15_31();
            v99(v98);
            swift_unknownObjectRelease();
            goto LABEL_8;
          }

          swift_unknownObjectRelease();
          (*(v71 + 8))(v73, v61);
          v100 = OUTLINED_FUNCTION_15_31();
          v101(v100);
          OUTLINED_FUNCTION_37_9();
          swift_storeEnumTagMultiPayload();
          v97 = v136;
LABEL_19:
          OUTLINED_FUNCTION_17_25();
          OUTLINED_FUNCTION_16_16();
          sub_26982BAA8();
          v84 = v97;
          break;
        default:
          sub_26982AFCC();
          OUTLINED_FUNCTION_47_7();
          sub_269851C74();
          OUTLINED_FUNCTION_59_3();
          sub_26982A3C0(v74);
          OUTLINED_FUNCTION_126_0();
          sub_269855494();
          v75 = v133;
          swift_unknownObjectRelease();
          v102 = OUTLINED_FUNCTION_80_1();
          v103(v102);
          (*(v75 + 8))(v49, v43);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_17_25();
LABEL_20:
          sub_26982BAA8();
LABEL_14:
          v97 = v136;
          goto LABEL_19;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t (*VideoDataModels.BasicDisambiguationItem.id.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_13(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  *(v0 + 32) = OUTLINED_FUNCTION_124_1();
  return sub_26982EB30;
}

uint64_t sub_269823D44(uint64_t (*a1)(void))
{
  v1 = *(a1(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_125_0();
  return v3;
}

uint64_t sub_269823DB0()
{
  v0 = OUTLINED_FUNCTION_86_1();
  v2 = *(v1(v0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  return OUTLINED_FUNCTION_52_5();
}

uint64_t (*VideoDataModels.BasicDisambiguationItem.displayText.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  v4 = *(type metadata accessor for VideoDataModels.BasicDisambiguationItem(v3) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t (*VideoDataModels.BasicDisambiguationItem.text2.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  v4 = *(type metadata accessor for VideoDataModels.BasicDisambiguationItem(v3) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t sub_269823FA0()
{
  v0 = OUTLINED_FUNCTION_50_6();
  v2 = *(v1(v0) + 28);
  v3 = OUTLINED_FUNCTION_2_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  return sub_269852694();
}

uint64_t VideoDataModels.BasicDisambiguationItem.thumbnail.setter()
{
  v0 = OUTLINED_FUNCTION_74_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_8_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_32();
  v6 = *(type metadata accessor for VideoDataModels.BasicDisambiguationItem(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A80, &unk_269868860);
  OUTLINED_FUNCTION_62_3();
  v7 = OUTLINED_FUNCTION_22_3();
  return sub_26969B0C0(v7, v8, &unk_26985BEF0);
}

uint64_t (*VideoDataModels.BasicDisambiguationItem.thumbnail.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  v4 = *(type metadata accessor for VideoDataModels.BasicDisambiguationItem(v3) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A80, &unk_269868860);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t VideoDataModels.BasicDisambiguationItem.actionProperty.getter()
{
  v0 = *(type metadata accessor for VideoDataModels.BasicDisambiguationItem(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  return sub_269852694();
}

uint64_t VideoDataModels.BasicDisambiguationItem.actionProperty.setter()
{
  v0 = OUTLINED_FUNCTION_74_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_8_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_32();
  v6 = *(type metadata accessor for VideoDataModels.BasicDisambiguationItem(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  OUTLINED_FUNCTION_62_3();
  v7 = OUTLINED_FUNCTION_22_3();
  return sub_26969B0C0(v7, v8, &unk_26985D8B0);
}

uint64_t (*VideoDataModels.BasicDisambiguationItem.actionProperty.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  v4 = *(type metadata accessor for VideoDataModels.BasicDisambiguationItem(v3) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t sub_269824274(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5479616C70736964 && a2 == 0xEB00000000747865;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x3274786574 && a2 == 0xE500000000000000;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x69616E626D756874 && a2 == 0xE90000000000006CLL;
        if (v8 || (sub_269855584() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x72506E6F69746361 && a2 == 0xEE0079747265706FLL)
        {

          return 4;
        }

        else
        {
          v10 = sub_269855584();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_269824424(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x5479616C70736964;
      break;
    case 2:
      result = 0x3274786574;
      break;
    case 3:
      result = 0x69616E626D756874;
      break;
    case 4:
      result = 0x72506E6F69746361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2698244D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_269824274(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2698244F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26982441C();
  *a1 = result;
  return result;
}

uint64_t sub_269824520(uint64_t a1)
{
  v2 = sub_26982B068();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26982455C(uint64_t a1)
{
  v2 = sub_26982B068();

  return MEMORY[0x2821FE720](a1, v2);
}

void VideoDataModels.BasicDisambiguationItem.encode(to:)()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_119_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E10, &qword_269868930);
  OUTLINED_FUNCTION_8(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_21_2();
  sub_26982B068();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_44_9();
  sub_2698556F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_1_57();
  sub_26982A814(v7);
  OUTLINED_FUNCTION_85_3();
  OUTLINED_FUNCTION_27_16();
  sub_269855514();
  if (!v0)
  {
    v8 = type metadata accessor for VideoDataModels.BasicDisambiguationItem(0);
    v9 = v8[5];
    OUTLINED_FUNCTION_48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
    OUTLINED_FUNCTION_1_57();
    sub_26982A5F8(v10);
    OUTLINED_FUNCTION_41_6();
    v11 = v8[6];
    OUTLINED_FUNCTION_41_6();
    v12 = v8[7];
    OUTLINED_FUNCTION_46();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A80, &unk_269868860);
    sub_26982B0BC();
    OUTLINED_FUNCTION_27_16();
    sub_269855514();
    v13 = v8[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
    sub_26982A404();
    OUTLINED_FUNCTION_27_16();
    sub_269855514();
  }

  v14 = *(v3 + 8);
  v15 = OUTLINED_FUNCTION_5_25();
  v16(v15);
  OUTLINED_FUNCTION_157_0();
  OUTLINED_FUNCTION_44();
}

void VideoDataModels.BasicDisambiguationItem.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_43();
  a19 = v22;
  a20 = v23;
  v115 = v24;
  v116 = v20;
  v104[0] = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  v27 = OUTLINED_FUNCTION_8(v26);
  v117 = v28;
  v118 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_35_2(v32);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A80, &unk_269868860);
  OUTLINED_FUNCTION_8(v124);
  v119 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_35_2(v37);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  v38 = OUTLINED_FUNCTION_8(v121);
  v123 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_24_3();
  v105 = v42;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_7_13();
  v106 = v44;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_8(v109);
  v107 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_29_16();
  v110 = v49;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E48, &qword_269868938);
  OUTLINED_FUNCTION_8(v111);
  v108 = v50;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_29_16();
  v127 = v54;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E0, &unk_26985D8B0);
  v55 = OUTLINED_FUNCTION_4_3(v114);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_24_3();
  v112 = v58;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v59);
  v61 = v104 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A78, &unk_26985BEF0);
  v63 = OUTLINED_FUNCTION_4_3(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_115_2();
  MEMORY[0x28223BE20](v66);
  v68 = v104 - v67;
  v69 = type metadata accessor for VideoDataModels.BasicDisambiguationItem(0);
  v70 = (v69 - 8);
  v71 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_52_4();
  v72 = v70[7];
  v125 = 0;
  v126 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  v122 = v72;
  sub_269852674();
  v73 = v70[8];
  v125 = 0;
  v126 = 0;
  v120 = v73;
  sub_269852674();
  v74 = v70[9];
  type metadata accessor for VideoDataModels.BasicDisambiguationItem.Thumbnail(0);
  OUTLINED_FUNCTION_94_2();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
  sub_269802A74();
  v113 = v74;
  sub_269852674();
  sub_26969B0C0(v68, &qword_280323A78, &unk_26985BEF0);
  v79 = v70[10];
  sub_269852624();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  sub_269802A74();
  v84 = v115;
  sub_269852674();
  sub_26969B0C0(v61, &qword_2803239E0, &unk_26985D8B0);
  v85 = v84[4];
  OUTLINED_FUNCTION_56_5(v84, v84[3]);
  sub_26982B068();
  v86 = v116;
  OUTLINED_FUNCTION_156_0();
  sub_2698556E4();
  if (v86)
  {
    v89 = v124;
    v90 = v121;
    v91 = v113;
    __swift_destroy_boxed_opaque_existential_0(v84);
    v92 = v118;
    v93 = *(v123 + 8);
    v93(v21 + v122, v90);
    v93(v21 + v120, v90);
    (*(v119 + 8))(v21 + v91, v89);
    (*(v117 + 8))(v21 + v79, v92);
  }

  else
  {
    LOBYTE(v125) = 0;
    OUTLINED_FUNCTION_0_62();
    sub_26982A814(v87);
    OUTLINED_FUNCTION_102_1();
    v88 = v109;
    sub_269855494();
    (*(v107 + 32))(v21, v110, v88);
    LOBYTE(v125) = 1;
    OUTLINED_FUNCTION_0_62();
    sub_26982A5F8(v94);
    OUTLINED_FUNCTION_102_1();
    v95 = v106;
    v96 = v121;
    v116 = v97;
    sub_269855494();
    v98 = v113;
    v99 = v95;
    v100 = *(v123 + 40);
    v100(v21 + v122, v99, v96);
    OUTLINED_FUNCTION_95_2(2);
    sub_269855494();
    v100(v21 + v120, v105, v96);
    LOBYTE(v125) = 3;
    sub_26982B2B0();
    OUTLINED_FUNCTION_102_1();
    OUTLINED_FUNCTION_146_0(&a17);
    v101 = v124;
    sub_269855494();
    v102 = v118;
    (*(v119 + 40))(v21 + v98, v96, v101);
    LOBYTE(v125) = 4;
    sub_26982A734();
    OUTLINED_FUNCTION_102_1();
    OUTLINED_FUNCTION_126_0();
    v103 = v111;
    sub_269855494();
    (*(v108 + 8))(v127, v103);
    (*(v117 + 40))(v21 + v79, v104[1], v102);
    sub_26982A098();
    __swift_destroy_boxed_opaque_existential_0(v84);
    sub_26982A0F0();
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_269824FF8@<X0>(uint64_t *a1@<X8>)
{
  result = VideoDataModels.VideoResultDisambiguationModel.systemText.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*VideoDataModels.DisambiguateItemsModel.systemText.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_13(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  *(v0 + 32) = OUTLINED_FUNCTION_124_1();
  return sub_26982EB30;
}

uint64_t VideoDataModels.DisambiguateItemsModel.items.getter()
{
  v0 = *(type metadata accessor for VideoDataModels.DisambiguateItemsModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E58, &qword_269868940);
  sub_269852694();
  return v2;
}

uint64_t VideoDataModels.DisambiguateItemsModel.items.setter()
{
  v0 = *(type metadata accessor for VideoDataModels.DisambiguateItemsModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E58, &qword_269868940);
  return sub_2698526A4();
}

uint64_t (*VideoDataModels.DisambiguateItemsModel.items.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  v4 = *(type metadata accessor for VideoDataModels.DisambiguateItemsModel(v3) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E58, &qword_269868940);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t VideoDataModels.DisambiguateItemsModel.viewId.getter()
{
  v0 = *(type metadata accessor for VideoDataModels.DisambiguateItemsModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E60, &qword_269868948);
  sub_269852694();
  return v2;
}

uint64_t VideoDataModels.DisambiguateItemsModel.viewId.setter()
{
  v0 = *(type metadata accessor for VideoDataModels.DisambiguateItemsModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E60, &qword_269868948);
  return sub_2698526A4();
}

uint64_t (*VideoDataModels.DisambiguateItemsModel.viewId.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  v4 = *(type metadata accessor for VideoDataModels.DisambiguateItemsModel(v3) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E60, &qword_269868948);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t sub_269825384(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65546D6574737973 && a2 == 0xEA00000000007478;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736D657469 && a2 == 0xE500000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x644977656976 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_269855584();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_269825494(char a1)
{
  if (!a1)
  {
    return 0x65546D6574737973;
  }

  if (a1 == 1)
  {
    return 0x736D657469;
  }

  return 0x644977656976;
}

uint64_t sub_2698254F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_269825384(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_269825518(uint64_t a1)
{
  v2 = sub_26982B33C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269825554(uint64_t a1)
{
  v2 = sub_26982B33C();

  return MEMORY[0x2821FE720](a1, v2);
}

void VideoDataModels.DisambiguateItemsModel.encode(to:)()
{
  OUTLINED_FUNCTION_76_3();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E68, &qword_269868950);
  OUTLINED_FUNCTION_8(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_16_27();
  OUTLINED_FUNCTION_21_2();
  sub_26982B33C();
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_44_9();
  sub_2698556F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_1_57();
  sub_26982A814(v5);
  OUTLINED_FUNCTION_21_22();
  if (!v0)
  {
    v6 = type metadata accessor for VideoDataModels.DisambiguateItemsModel(0);
    v7 = *(v6 + 20);
    OUTLINED_FUNCTION_48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E58, &qword_269868940);
    sub_26982B390();
    OUTLINED_FUNCTION_22_21();
    v8 = *(v6 + 24);
    OUTLINED_FUNCTION_47();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E60, &qword_269868948);
    sub_26982B584();
    OUTLINED_FUNCTION_148_0();
    OUTLINED_FUNCTION_22_21();
  }

  v9 = OUTLINED_FUNCTION_68_5();
  v10(v9);
  OUTLINED_FUNCTION_158();
}

void VideoDataModels.DisambiguateItemsModel.init(from:)()
{
  OUTLINED_FUNCTION_43();
  v2 = v1;
  v45 = v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E60, &qword_269868948);
  OUTLINED_FUNCTION_8(v46);
  v44 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_29_16();
  v47 = v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E58, &qword_269868940);
  OUTLINED_FUNCTION_8(v51);
  v48 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_8(v15);
  v49 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_29_16();
  v53 = v20;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325EB8, &qword_269868958);
  OUTLINED_FUNCTION_8(v52);
  v50 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_12_9();
  v25 = type metadata accessor for VideoDataModels.DisambiguateItemsModel(0);
  v26 = OUTLINED_FUNCTION_4_3(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_1();
  v31 = v30 - v29;
  v33 = v2[3];
  v32 = v2[4];
  v54 = v2;
  OUTLINED_FUNCTION_56_5(v2, v33);
  sub_26982B33C();
  sub_2698556E4();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v54);
  }

  else
  {
    v43 = v31;
    v34 = v51;
    OUTLINED_FUNCTION_0_62();
    sub_26982A814(v35);
    OUTLINED_FUNCTION_85_3();
    sub_269855494();
    v36 = *(v49 + 32);
    v37 = v53;
    v53 = v15;
    v36(v43, v37, v15);
    OUTLINED_FUNCTION_48();
    sub_26982B6B8();
    sub_269855494();
    v42 = v25;
    (*(v48 + 32))(v43 + *(v25 + 20), v14, v34);
    OUTLINED_FUNCTION_47();
    sub_26982B744();
    v38 = v46;
    sub_269855494();
    v39 = OUTLINED_FUNCTION_69_4();
    v40(v39);
    (*(v44 + 32))(v43 + *(v42 + 24), v47, v38);
    sub_26982A098();
    __swift_destroy_boxed_opaque_existential_0(v54);
    sub_26982A0F0();
  }

  OUTLINED_FUNCTION_44();
}

uint64_t (*VideoDataModels.VideoResultDisambiguationModel.systemText.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_13(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  *(v0 + 32) = OUTLINED_FUNCTION_124_1();
  return sub_26982EB30;
}

uint64_t property wrapper backing initializer of VideoDataModels.VideoResultDisambiguationModel.resultsListModel()
{
  v0 = type metadata accessor for VideoDataModels.ResultsListModel(0);
  v1 = OUTLINED_FUNCTION_4_3(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_18_21();
  OUTLINED_FUNCTION_14_26();
  sub_26982A098();
  sub_269852674();
  OUTLINED_FUNCTION_4_43();
  return sub_26982A0F0();
}

uint64_t sub_269825D58()
{
  v0 = OUTLINED_FUNCTION_50_6();
  v2 = *(v1(v0) + 20);
  v3 = OUTLINED_FUNCTION_2_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  return sub_269852694();
}

uint64_t VideoDataModels.VideoResultDisambiguationModel.resultsListModel.setter()
{
  v0 = OUTLINED_FUNCTION_29_14();
  v1 = type metadata accessor for VideoDataModels.ResultsListModel(v0);
  v2 = OUTLINED_FUNCTION_8_9(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_18_21();
  OUTLINED_FUNCTION_22_3();
  sub_26982A098();
  v5 = *(type metadata accessor for VideoDataModels.VideoResultDisambiguationModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325ED0, &qword_269868960);
  OUTLINED_FUNCTION_8_37();
  sub_2698526A4();
  OUTLINED_FUNCTION_4_43();
  return sub_26982A0F0();
}

uint64_t (*VideoDataModels.VideoResultDisambiguationModel.resultsListModel.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  v4 = *(type metadata accessor for VideoDataModels.VideoResultDisambiguationModel(v3) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325ED0, &qword_269868960);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_269825EBC;
}

uint64_t sub_269825EC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65546D6574737973 && a2 == 0xEA00000000007478;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002698811E0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_269855584();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_269825F98(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x65546D6574737973;
  }
}

uint64_t sub_269825FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_269825EC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_269826008(uint64_t a1)
{
  v2 = sub_26982B7D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269826044(uint64_t a1)
{
  v2 = sub_26982B7D0();

  return MEMORY[0x2821FE720](a1, v2);
}

void VideoDataModels.VideoResultDisambiguationModel.encode(to:)()
{
  OUTLINED_FUNCTION_76_3();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325ED8, &qword_269868968);
  OUTLINED_FUNCTION_8(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_16_27();
  OUTLINED_FUNCTION_21_2();
  sub_26982B7D0();
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_44_9();
  sub_2698556F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_1_57();
  sub_26982A814(v5);
  OUTLINED_FUNCTION_21_22();
  if (!v0)
  {
    v6 = *(type metadata accessor for VideoDataModels.VideoResultDisambiguationModel(0) + 20);
    OUTLINED_FUNCTION_48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325ED0, &qword_269868960);
    OUTLINED_FUNCTION_1_57();
    sub_26982B824(v7);
    OUTLINED_FUNCTION_148_0();
    OUTLINED_FUNCTION_22_21();
  }

  v8 = OUTLINED_FUNCTION_68_5();
  v9(v8);
  OUTLINED_FUNCTION_158();
}

void VideoDataModels.VideoResultDisambiguationModel.init(from:)()
{
  OUTLINED_FUNCTION_43();
  v3 = v2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325ED0, &qword_269868960);
  OUTLINED_FUNCTION_8(v29);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_73_2();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_8(v30);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_29_16();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F00, &qword_269868970);
  OUTLINED_FUNCTION_8(v31);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_34_12();
  v13 = type metadata accessor for VideoDataModels.VideoResultDisambiguationModel(0);
  v14 = OUTLINED_FUNCTION_4_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_52_4();
  v17 = v3[3];
  v18 = v3[4];
  v19 = OUTLINED_FUNCTION_54_4();
  OUTLINED_FUNCTION_56_5(v19, v20);
  sub_26982B7D0();
  OUTLINED_FUNCTION_105_0();
  sub_2698556E4();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    OUTLINED_FUNCTION_159_0();
    OUTLINED_FUNCTION_0_62();
    sub_26982A814(v21);
    OUTLINED_FUNCTION_85_3();
    OUTLINED_FUNCTION_123_0();
    v22 = OUTLINED_FUNCTION_107_0();
    v23(v22);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_0_62();
    sub_26982B824(v24);
    OUTLINED_FUNCTION_84_2();
    v25 = OUTLINED_FUNCTION_75_3();
    v26(v25, v1);
    v27 = OUTLINED_FUNCTION_93_3();
    v28(v27);
    sub_26982A098();
    __swift_destroy_boxed_opaque_existential_0(v3);
    sub_26982A0F0();
  }

  OUTLINED_FUNCTION_44();
}

uint64_t VideoDataModels.ConfirmationViewModel.primaryAction.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F10, &qword_269868978);

  return sub_269852694();
}

uint64_t VideoDataModels.ConfirmationViewModel.primaryAction.setter()
{
  OUTLINED_FUNCTION_29_14();
  v0 = sub_269852624();
  v1 = OUTLINED_FUNCTION_8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = OUTLINED_FUNCTION_6_50(v6, v13);
  v8(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F10, &qword_269868978);
  sub_2698526A4();
  v9 = *(v3 + 8);
  v10 = OUTLINED_FUNCTION_22_3();
  return v11(v10);
}

uint64_t (*VideoDataModels.ConfirmationViewModel.primaryAction.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_13(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F10, &qword_269868978);
  *(v0 + 32) = OUTLINED_FUNCTION_124_1();
  return sub_26982EB30;
}

uint64_t sub_2698266B0(uint64_t (*a1)(void))
{
  v1 = *(a1(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_125_0();
  return v3;
}

uint64_t sub_26982671C()
{
  v0 = OUTLINED_FUNCTION_86_1();
  v2 = *(v1(v0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  return OUTLINED_FUNCTION_52_5();
}

uint64_t (*VideoDataModels.ConfirmationViewModel.primaryLabel.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  v4 = *(type metadata accessor for VideoDataModels.ConfirmationViewModel(v3) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t sub_269826804()
{
  v0 = OUTLINED_FUNCTION_50_6();
  v2 = *(v1(v0) + 24);
  v3 = OUTLINED_FUNCTION_2_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  return sub_269852694();
}

uint64_t VideoDataModels.ConfirmationViewModel.secondaryAction.setter()
{
  OUTLINED_FUNCTION_29_14();
  v0 = sub_269852624();
  v1 = OUTLINED_FUNCTION_8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = OUTLINED_FUNCTION_6_50(v6, v14);
  v8(v7);
  v9 = *(type metadata accessor for VideoDataModels.ConfirmationViewModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F10, &qword_269868978);
  sub_2698526A4();
  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_22_3();
  return v12(v11);
}

uint64_t (*VideoDataModels.ConfirmationViewModel.secondaryAction.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  v4 = *(type metadata accessor for VideoDataModels.ConfirmationViewModel(v3) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F10, &qword_269868978);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t VideoDataModels.ConfirmationViewModel.secondaryLabel.getter()
{
  v0 = *(type metadata accessor for VideoDataModels.ConfirmationViewModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_125_0();
  return v2;
}

uint64_t VideoDataModels.ConfirmationViewModel.secondaryLabel.setter()
{
  v0 = OUTLINED_FUNCTION_86_1();
  v1 = *(type metadata accessor for VideoDataModels.ConfirmationViewModel(v0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  return OUTLINED_FUNCTION_52_5();
}

uint64_t (*VideoDataModels.ConfirmationViewModel.secondaryLabel.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  v4 = *(type metadata accessor for VideoDataModels.ConfirmationViewModel(v3) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t sub_269826B0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x417972616D697270 && a2 == 0xED00006E6F697463;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4C7972616D697270 && a2 == 0xEC0000006C656261;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7261646E6F636573 && a2 == 0xEF6E6F6974634179;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7261646E6F636573 && a2 == 0xEE006C6562614C79)
      {

        return 3;
      }

      else
      {
        v9 = sub_269855584();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_269826C80(char a1)
{
  result = 0x417972616D697270;
  switch(a1)
  {
    case 1:
      result = 0x4C7972616D697270;
      break;
    case 2:
    case 3:
      result = 0x7261646E6F636573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_269826D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_269826B0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_269826D50(uint64_t a1)
{
  v2 = sub_26982B8E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269826D8C(uint64_t a1)
{
  v2 = sub_26982B8E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void VideoDataModels.ConfirmationViewModel.encode(to:)()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_119_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F18, &qword_269868980);
  OUTLINED_FUNCTION_8(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_21_2();
  sub_26982B8E8();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_44_9();
  sub_2698556F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F10, &qword_269868978);
  OUTLINED_FUNCTION_1_57();
  sub_26982B93C(v7);
  OUTLINED_FUNCTION_10_33();
  sub_269855514();
  if (!v0)
  {
    v15 = type metadata accessor for VideoDataModels.ConfirmationViewModel(0);
    v8 = v15[5];
    OUTLINED_FUNCTION_48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
    OUTLINED_FUNCTION_1_57();
    sub_26982A814(v9);
    sub_269855514();
    v10 = v15[6];
    OUTLINED_FUNCTION_10_33();
    sub_269855514();
    v11 = v15[7];
    sub_269855514();
  }

  v12 = *(v3 + 8);
  v13 = OUTLINED_FUNCTION_5_25();
  v14(v13);
  OUTLINED_FUNCTION_157_0();
  OUTLINED_FUNCTION_44();
}

void VideoDataModels.ConfirmationViewModel.init(from:)()
{
  OUTLINED_FUNCTION_43();
  v3 = v2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  v4 = OUTLINED_FUNCTION_8(v46);
  v42 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24_3();
  v41 = v8;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_13();
  v44 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F10, &qword_269868978);
  v12 = OUTLINED_FUNCTION_8(v11);
  v43 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_13();
  v45 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F30, &qword_269868988);
  OUTLINED_FUNCTION_8(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_73_2();
  v25 = type metadata accessor for VideoDataModels.ConfirmationViewModel(0);
  v26 = OUTLINED_FUNCTION_4_3(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_143_0();
  v30 = v3[3];
  v29 = v3[4];
  v31 = OUTLINED_FUNCTION_16_18();
  OUTLINED_FUNCTION_56_5(v31, v32);
  sub_26982B8E8();
  sub_2698556E4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    v39 = v18;
    v40 = v0;
    OUTLINED_FUNCTION_0_62();
    sub_26982B93C(v33);
    sub_269855494();
    v34 = *(v43 + 32);
    v34(v0, v45, v11);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_0_62();
    sub_26982A814(v35);
    sub_269855494();
    v36 = *(v42 + 32);
    v36(v40 + v25[5], v44, v46);
    OUTLINED_FUNCTION_47();
    sub_269855494();
    v34(v40 + v25[6], v39, v11);
    OUTLINED_FUNCTION_46();
    sub_269855494();
    v37 = OUTLINED_FUNCTION_65_3();
    v38(v37);
    v36(v40 + v25[7], v41, v46);
    sub_26982A098();
    __swift_destroy_boxed_opaque_existential_0(v3);
    sub_26982A0F0();
  }

  OUTLINED_FUNCTION_44();
}

uint64_t _s16SiriVideoIntents0B10DataModelsO0B25ResultDisambiguationModelV10systemTextSSvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  sub_269852694();
  return v1;
}

uint64_t (*VideoDataModels.ButtonModel.label.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_13(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  *(v0 + 32) = OUTLINED_FUNCTION_124_1();
  return sub_26982EB30;
}

uint64_t sub_269827624()
{
  v0 = sub_269852624();
  v1 = OUTLINED_FUNCTION_8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = OUTLINED_FUNCTION_6_50(v6, v13);
  v8(v7);
  sub_269852674();
  v9 = *(v3 + 8);
  v10 = OUTLINED_FUNCTION_22_3();
  return v11(v10);
}

uint64_t VideoDataModels.ButtonModel.actionProperty.setter()
{
  OUTLINED_FUNCTION_29_14();
  v0 = sub_269852624();
  v1 = OUTLINED_FUNCTION_8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = OUTLINED_FUNCTION_6_50(v6, v14);
  v8(v7);
  v9 = *(type metadata accessor for VideoDataModels.ButtonModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F10, &qword_269868978);
  sub_2698526A4();
  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_22_3();
  return v12(v11);
}

uint64_t (*VideoDataModels.ButtonModel.actionProperty.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  v4 = *(type metadata accessor for VideoDataModels.ButtonModel(v3) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F10, &qword_269868978);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

void sub_2698278A0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_2698278EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72506E6F69746361 && a2 == 0xEE0079747265706FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_269855584();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2698279B8(char a1)
{
  if (a1)
  {
    return 0x72506E6F69746361;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_269827A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2698278EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_269827A28(uint64_t a1)
{
  v2 = sub_26982BA00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269827A64(uint64_t a1)
{
  v2 = sub_26982BA00();

  return MEMORY[0x2821FE720](a1, v2);
}

void VideoDataModels.ButtonModel.encode(to:)()
{
  OUTLINED_FUNCTION_76_3();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F40, &qword_269868990);
  OUTLINED_FUNCTION_8(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_16_27();
  OUTLINED_FUNCTION_21_2();
  sub_26982BA00();
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_44_9();
  sub_2698556F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_1_57();
  sub_26982A814(v5);
  OUTLINED_FUNCTION_21_22();
  if (!v0)
  {
    v6 = *(type metadata accessor for VideoDataModels.ButtonModel(0) + 20);
    OUTLINED_FUNCTION_48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F10, &qword_269868978);
    OUTLINED_FUNCTION_1_57();
    sub_26982B93C(v7);
    OUTLINED_FUNCTION_148_0();
    OUTLINED_FUNCTION_22_21();
  }

  v8 = OUTLINED_FUNCTION_68_5();
  v9(v8);
  OUTLINED_FUNCTION_158();
}

void VideoDataModels.ButtonModel.init(from:)()
{
  OUTLINED_FUNCTION_43();
  v3 = v2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F10, &qword_269868978);
  OUTLINED_FUNCTION_8(v29);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_73_2();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_8(v30);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_29_16();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F50, &qword_269868998);
  OUTLINED_FUNCTION_8(v31);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_34_12();
  v13 = type metadata accessor for VideoDataModels.ButtonModel(0);
  v14 = OUTLINED_FUNCTION_4_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_52_4();
  v17 = v3[3];
  v18 = v3[4];
  v19 = OUTLINED_FUNCTION_54_4();
  OUTLINED_FUNCTION_56_5(v19, v20);
  sub_26982BA00();
  OUTLINED_FUNCTION_105_0();
  sub_2698556E4();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    OUTLINED_FUNCTION_159_0();
    OUTLINED_FUNCTION_0_62();
    sub_26982A814(v21);
    OUTLINED_FUNCTION_85_3();
    OUTLINED_FUNCTION_123_0();
    v22 = OUTLINED_FUNCTION_107_0();
    v23(v22);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_0_62();
    sub_26982B93C(v24);
    OUTLINED_FUNCTION_84_2();
    v25 = OUTLINED_FUNCTION_75_3();
    v26(v25, v1);
    v27 = OUTLINED_FUNCTION_93_3();
    v28(v27);
    sub_26982A098();
    __swift_destroy_boxed_opaque_existential_0(v3);
    sub_26982A0F0();
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_269827EEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C73746C75736572 && a2 == 0xEF77656956747369;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x8000000269881200 == a2;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001DLL && 0x8000000269881220 == a2;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000269881240 == a2;
        if (v8 || (sub_269855584() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000012 && 0x8000000269881260 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_269855584();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_26982809C(char a1)
{
  result = 0x4C73746C75736572;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_269828154(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_269855584();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2698281FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_269827EEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_269828224(uint64_t a1)
{
  v2 = sub_26982BA54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269828260(uint64_t a1)
{
  v2 = sub_26982BA54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26982829C(uint64_t a1)
{
  v2 = sub_26982BB54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2698282D8(uint64_t a1)
{
  v2 = sub_26982BB54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_269828314(uint64_t a1)
{
  v2 = sub_26982BBFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269828350(uint64_t a1)
{
  v2 = sub_26982BBFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26982838C(uint64_t a1)
{
  v2 = sub_26982BC50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2698283C8(uint64_t a1)
{
  v2 = sub_26982BC50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_269828404(uint64_t a1)
{
  v2 = sub_26982BB00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269828440(uint64_t a1)
{
  v2 = sub_26982BB00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26982847C(uint64_t a1)
{
  v2 = sub_26982BBA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2698284B8(uint64_t a1)
{
  v2 = sub_26982BBA8();

  return MEMORY[0x2821FE720](a1, v2);
}

void VideoDataModels.encode(to:)()
{
  OUTLINED_FUNCTION_43();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F58, &qword_2698689A0);
  v81 = OUTLINED_FUNCTION_8(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_29_16();
  v7 = OUTLINED_FUNCTION_2_13();
  v80 = type metadata accessor for VideoDataModels.ButtonModel(v7);
  v8 = OUTLINED_FUNCTION_4_3(v80);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_130(v12 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F60, &qword_2698689A8);
  v79 = OUTLINED_FUNCTION_8(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_29_16();
  v17 = OUTLINED_FUNCTION_2_13();
  v78 = type metadata accessor for VideoDataModels.ConfirmationViewModel(v17);
  v18 = OUTLINED_FUNCTION_4_3(v78);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_1();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F68, &qword_2698689B0);
  v77 = OUTLINED_FUNCTION_8(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_29_16();
  v25 = OUTLINED_FUNCTION_2_13();
  v76 = type metadata accessor for VideoDataModels.VideoResultDisambiguationModel(v25);
  v26 = OUTLINED_FUNCTION_4_3(v76);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_1();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F70, &qword_2698689B8);
  OUTLINED_FUNCTION_8(v75);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_35_2(v32);
  v74 = type metadata accessor for VideoDataModels.DisambiguateItemsModel(0);
  v33 = OUTLINED_FUNCTION_4_3(v74);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_35_2(v37 - v36);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F78, &qword_2698689C0);
  OUTLINED_FUNCTION_8(v73);
  v72 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_52_4();
  v42 = type metadata accessor for VideoDataModels.ResultsListModel(0);
  v43 = OUTLINED_FUNCTION_4_3(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_143_0();
  v46 = type metadata accessor for VideoDataModels(0);
  v47 = OUTLINED_FUNCTION_4_3(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3_1();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F80, &qword_2698689C8);
  OUTLINED_FUNCTION_8(v83);
  v82 = v50;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_73_2();
  v54 = v2[4];
  OUTLINED_FUNCTION_56_5(v2, v2[3]);
  sub_26982BA54();
  sub_2698556F4();
  sub_26982A098();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26982BAA8();
      sub_26982BBFC();
      OUTLINED_FUNCTION_42_9();
      OUTLINED_FUNCTION_61_2();
      sub_26982A3C0(v68);
      OUTLINED_FUNCTION_149_0();
      OUTLINED_FUNCTION_170();
      v69 = OUTLINED_FUNCTION_66_3();
      v70(v69, v75);
      goto LABEL_7;
    case 2u:
      sub_26982BAA8();
      OUTLINED_FUNCTION_47();
      sub_26982BBA8();
      OUTLINED_FUNCTION_42_9();
      OUTLINED_FUNCTION_56_6();
      sub_26982A3C0(v62);
      OUTLINED_FUNCTION_149_0();
      OUTLINED_FUNCTION_170();
      v63 = OUTLINED_FUNCTION_66_3();
      v64(v63, v77);
      goto LABEL_7;
    case 3u:
      sub_26982BAA8();
      sub_26982BB54();
      OUTLINED_FUNCTION_42_9();
      OUTLINED_FUNCTION_55_6();
      sub_26982A3C0(v65);
      OUTLINED_FUNCTION_149_0();
      OUTLINED_FUNCTION_170();
      v66 = OUTLINED_FUNCTION_66_3();
      v67(v66, v79);
      goto LABEL_7;
    case 4u:
      sub_26982BAA8();
      sub_26982BB00();
      OUTLINED_FUNCTION_42_9();
      OUTLINED_FUNCTION_57_4();
      sub_26982A3C0(v59);
      OUTLINED_FUNCTION_149_0();
      OUTLINED_FUNCTION_170();
      v60 = OUTLINED_FUNCTION_66_3();
      v61(v60, v81);
LABEL_7:
      sub_26982A0F0();
      v71 = *(v82 + 8);
      v56 = OUTLINED_FUNCTION_5_25();
      break;
    default:
      OUTLINED_FUNCTION_5_25();
      sub_26982BAA8();
      sub_26982BC50();
      sub_2698554B4();
      OUTLINED_FUNCTION_58_2();
      sub_26982A3C0(v55);
      sub_269855514();
      (*(v72 + 8))(v0, v73);
      OUTLINED_FUNCTION_4_43();
      sub_26982A0F0();
      v56 = OUTLINED_FUNCTION_77_3();
      v58 = v83;
      break;
  }

  v57(v56, v58);
  OUTLINED_FUNCTION_44();
}

void VideoDataModels.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_43();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325FD8, &qword_2698689D0);
  OUTLINED_FUNCTION_8(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_29_16();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325FE0, &qword_2698689D8);
  v109 = OUTLINED_FUNCTION_8(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_29_16();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325FE8, &qword_2698689E0);
  OUTLINED_FUNCTION_8(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_130(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325FF0, &qword_2698689E8);
  v108 = OUTLINED_FUNCTION_8(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_29_16();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325FF8, &qword_2698689F0);
  v107 = OUTLINED_FUNCTION_8(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_29_16();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326000, &qword_2698689F8);
  v48 = OUTLINED_FUNCTION_8(v47);
  v111 = v49;
  v112 = v48;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_143_0();
  v110 = type metadata accessor for VideoDataModels(0);
  v53 = OUTLINED_FUNCTION_4_3(v110);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_36_7();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_151();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_49_8();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_14_28();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_26_19();
  v61 = v25[4];
  v113 = v25;
  OUTLINED_FUNCTION_56_5(v25, v25[3]);
  sub_26982BA54();
  sub_2698556E4();
  if (v21)
  {
    goto LABEL_10;
  }

  v62 = v20;
  v63 = sub_2698554A4();
  v67 = sub_26982B020(v63, 0);
  if (v65 == v66 >> 1)
  {
    v69 = v110;
    v68 = v111;
LABEL_9:
    v76 = sub_269855254();
    swift_allocError();
    v78 = v77;
    v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E08, &qword_269868928) + 48);
    *v78 = v69;
    v80 = sub_269855404();
    OUTLINED_FUNCTION_122_1(v80, "Invalid number of keys found, expected one.");
    (*(*(v76 - 8) + 104))(v78, *MEMORY[0x277D84160], v76);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v68 + 8))(v62, v112);
LABEL_10:
    v81 = v113;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_0(v81);
    OUTLINED_FUNCTION_44();
    return;
  }

  if (v65 < (v66 >> 1))
  {
    v70 = *(v64 + v65);
    sub_26982BCA4(v65 + 1, v66 >> 1, v67, v64, v65, v66);
    v72 = v71;
    v74 = v73;
    swift_unknownObjectRelease();
    if (v72 == v74 >> 1)
    {
      switch(v70)
      {
        case 1:
          sub_26982BBFC();
          OUTLINED_FUNCTION_28_18();
          type metadata accessor for VideoDataModels.DisambiguateItemsModel(0);
          OUTLINED_FUNCTION_61_2();
          sub_26982A3C0(v85);
          OUTLINED_FUNCTION_165();
          OUTLINED_FUNCTION_135();
          swift_unknownObjectRelease();
          v103 = OUTLINED_FUNCTION_66_3();
          v104(v103, v108);
          v105 = OUTLINED_FUNCTION_13_30();
          v106(v105);
          swift_storeEnumTagMultiPayload();
          goto LABEL_17;
        case 2:
          OUTLINED_FUNCTION_47();
          sub_26982BBA8();
          OUTLINED_FUNCTION_28_18();
          type metadata accessor for VideoDataModels.VideoResultDisambiguationModel(0);
          OUTLINED_FUNCTION_56_6();
          sub_26982A3C0(v83);
          OUTLINED_FUNCTION_146_0(&a13);
          OUTLINED_FUNCTION_164();
          OUTLINED_FUNCTION_135();
          swift_unknownObjectRelease();
          v90 = OUTLINED_FUNCTION_120_0();
          v91(v90);
          v92 = OUTLINED_FUNCTION_13_30();
          v93(v92);
          goto LABEL_16;
        case 3:
          sub_26982BB54();
          OUTLINED_FUNCTION_28_18();
          type metadata accessor for VideoDataModels.ConfirmationViewModel(0);
          OUTLINED_FUNCTION_55_6();
          sub_26982A3C0(v84);
          OUTLINED_FUNCTION_146_0(&a14);
          sub_269855494();
          OUTLINED_FUNCTION_135();
          swift_unknownObjectRelease();
          v94 = OUTLINED_FUNCTION_66_3();
          v95(v94, v109);
          v96 = OUTLINED_FUNCTION_13_30();
          v97(v96);
          swift_storeEnumTagMultiPayload();
LABEL_17:
          v102 = v113;
          break;
        case 4:
          sub_26982BB00();
          OUTLINED_FUNCTION_28_18();
          type metadata accessor for VideoDataModels.ButtonModel(0);
          OUTLINED_FUNCTION_57_4();
          sub_26982A3C0(v82);
          OUTLINED_FUNCTION_146_0(&a18);
          OUTLINED_FUNCTION_164();
          OUTLINED_FUNCTION_135();
          swift_unknownObjectRelease();
          v86 = OUTLINED_FUNCTION_120_0();
          v87(v86);
          v88 = OUTLINED_FUNCTION_13_30();
          v89(v88);
LABEL_16:
          swift_storeEnumTagMultiPayload();
          v102 = v113;
          break;
        default:
          sub_26982BC50();
          OUTLINED_FUNCTION_28_18();
          type metadata accessor for VideoDataModels.ResultsListModel(0);
          OUTLINED_FUNCTION_58_2();
          sub_26982A3C0(v75);
          OUTLINED_FUNCTION_126_0();
          OUTLINED_FUNCTION_165();
          OUTLINED_FUNCTION_135();
          swift_unknownObjectRelease();
          v98 = OUTLINED_FUNCTION_66_3();
          v99(v98, v107);
          v100 = OUTLINED_FUNCTION_13_30();
          v101(v100);
          swift_storeEnumTagMultiPayload();
          v102 = v113;
          break;
      }

      sub_26982BAA8();
      sub_26982BAA8();
      v81 = v102;
      goto LABEL_11;
    }

    v69 = v110;
    v68 = v111;
    v62 = v20;
    goto LABEL_9;
  }

  __break(1u);
}

void VideoDataModels.VideoResult.init(dict:)()
{
  OUTLINED_FUNCTION_19_1();
  v48 = v1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E0, &unk_26985D8B0);
  v2 = OUTLINED_FUNCTION_4_3(v47);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_116_2();
  v6 = OUTLINED_FUNCTION_131();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v8 = OUTLINED_FUNCTION_4_3(v54);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_24_3();
  v55 = v11;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_151();
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  v56 = 0;
  v57 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  sub_269852674();
  v16 = type metadata accessor for VideoDataModels.VideoResult(0);
  v17 = v16[5];
  v56 = 0;
  v57 = 0;
  v49 = v17;
  OUTLINED_FUNCTION_91_2();
  v18 = v16[6];
  v56 = 0;
  v57 = 0;
  v50 = v18;
  OUTLINED_FUNCTION_91_2();
  v19 = v16[7];
  v56 = 0;
  v57 = 0;
  OUTLINED_FUNCTION_91_2();
  v20 = v16[8];
  v56 = 0;
  v57 = 0;
  v51 = v20;
  OUTLINED_FUNCTION_91_2();
  v21 = v16[9];
  v56 = 0;
  v57 = 0;
  v52 = v21;
  OUTLINED_FUNCTION_91_2();
  v22 = v16[10];
  sub_269851C74();
  OUTLINED_FUNCTION_57();
  v46 = v23;
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
  sub_269802A74();
  v53 = v22;
  v27 = v48;
  sub_269852674();
  v54 = v15;
  sub_26969B0C0(v15, &qword_280323030, &qword_26985BAE0);
  v28 = v16[11];
  sub_269852624();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  sub_269802A74();
  sub_269852674();
  sub_26969B0C0(v0, &qword_2803239E0, &unk_26985D8B0);
  v33 = v16[12];
  v56 = 0;
  v57 = 0;
  sub_269852674();
  sub_26981CFD4(25705, 0xE200000000000000, v27);
  if (v58)
  {
    OUTLINED_FUNCTION_30_19();
    OUTLINED_FUNCTION_35_14();
    if (v36)
    {
      v35 = 0;
    }
  }

  else
  {
    sub_26969B0C0(&v56, &qword_280322F88, qword_26985AB90);
    OUTLINED_FUNCTION_106_2();
  }

  v56 = v34;
  v57 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  sub_2698526A4();
  OUTLINED_FUNCTION_167_0(1819568500);
  v37 = v55;
  if (v58)
  {
    OUTLINED_FUNCTION_30_19();
    OUTLINED_FUNCTION_35_14();
  }

  else
  {
    sub_26969B0C0(&v56, &qword_280322F88, qword_26985AB90);
    OUTLINED_FUNCTION_106_2();
  }

  OUTLINED_FUNCTION_136_0(v38);
  OUTLINED_FUNCTION_169_0();
  sub_26981CFD4(0xD000000000000010, 0x8000000269881100, v27);
  if (v58)
  {
    OUTLINED_FUNCTION_30_19();
    OUTLINED_FUNCTION_35_14();
  }

  else
  {
    sub_26969B0C0(&v56, &qword_280322F88, qword_26985AB90);
    OUTLINED_FUNCTION_106_2();
  }

  OUTLINED_FUNCTION_136_0(v39);
  OUTLINED_FUNCTION_169_0();
  sub_26981CFD4(0xD000000000000012, 0x8000000269881120, v27);
  if (v58)
  {
    OUTLINED_FUNCTION_30_19();
    OUTLINED_FUNCTION_35_14();
  }

  else
  {
    sub_26969B0C0(&v56, &qword_280322F88, qword_26985AB90);
    OUTLINED_FUNCTION_106_2();
  }

  OUTLINED_FUNCTION_136_0(v40);
  OUTLINED_FUNCTION_169_0();
  sub_26981CFD4(0xD000000000000013, 0x8000000269881140, v27);
  if (v58)
  {
    OUTLINED_FUNCTION_30_19();
    OUTLINED_FUNCTION_35_14();
  }

  else
  {
    sub_26969B0C0(&v56, &qword_280322F88, qword_26985AB90);
    OUTLINED_FUNCTION_106_2();
  }

  OUTLINED_FUNCTION_136_0(v41);
  OUTLINED_FUNCTION_169_0();
  OUTLINED_FUNCTION_167_0(1734438249);
  if (v58)
  {
    if (OUTLINED_FUNCTION_30_19())
    {

      OUTLINED_FUNCTION_16_16();
      sub_269851C64();
      swift_bridgeObjectRelease_n();
      goto LABEL_23;
    }
  }

  else
  {
    sub_26969B0C0(&v56, &qword_280322F88, qword_26985AB90);
  }

  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v46);
LABEL_23:
  sub_269802A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
  sub_2698526A4();
  sub_26969B0C0(v37, &qword_280323030, &qword_26985BAE0);
  sub_26981CFD4(0x7470697263736564, 0xEB000000006E6F69, v27);

  if (v58)
  {
    OUTLINED_FUNCTION_30_19();
    OUTLINED_FUNCTION_35_14();
  }

  else
  {
    sub_26969B0C0(&v56, &qword_280322F88, qword_26985AB90);
    OUTLINED_FUNCTION_106_2();
  }

  OUTLINED_FUNCTION_136_0(v45);
  sub_2698526A4();
  OUTLINED_FUNCTION_21_0();
}

void VideoDataModels.VideoResult.asDict()()
{
  OUTLINED_FUNCTION_19_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  OUTLINED_FUNCTION_8_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_27();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230C0, &unk_269859340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269860B70;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  sub_269852694();
  *(inited + 48) = v19;
  *(inited + 64) = 0x656C746974;
  *(inited + 72) = 0xE500000000000000;
  v7 = type metadata accessor for VideoDataModels.VideoResult(0);
  v8 = v0 + v7[5];
  sub_269852694();
  *(inited + 80) = v19;
  *(inited + 96) = 0xD000000000000010;
  *(inited + 104) = 0x8000000269881100;
  v9 = v7[6];
  OUTLINED_FUNCTION_104_1();
  *(inited + 112) = v19;
  *(inited + 128) = 0xD000000000000012;
  *(inited + 136) = 0x8000000269881120;
  v10 = v7[8];
  OUTLINED_FUNCTION_104_1();
  *(inited + 144) = v19;
  *(inited + 160) = 0xD000000000000013;
  *(inited + 168) = 0x8000000269881140;
  v11 = v7[9];
  OUTLINED_FUNCTION_104_1();
  *(inited + 176) = v19;
  *(inited + 192) = 0x6567616D69;
  *(inited + 200) = 0xE500000000000000;
  v12 = v7[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
  sub_269852694();
  v13 = sub_269851C74();
  if (__swift_getEnumTagSinglePayload(v1, 1, v13) == 1)
  {
    sub_26969B0C0(v1, &qword_280323030, &qword_26985BAE0);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = sub_269851BF4();
    v15 = v16;
    (*(*(v13 - 8) + 8))(v1, v13);
  }

  *(inited + 208) = v14;
  *(inited + 216) = v15;
  *(inited + 224) = 0x7470697263736564;
  *(inited + 232) = 0xEB000000006E6F69;
  v17 = v7[12];
  OUTLINED_FUNCTION_104_1();
  *(inited + 240) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  v18 = sub_269854A04();
  sub_2697DB828(v18);

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_26982A098()
{
  OUTLINED_FUNCTION_31_2();
  v2 = v1(0);
  OUTLINED_FUNCTION_4_3(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_50_0();
  v6(v5);
  return v0;
}

uint64_t sub_26982A0F0()
{
  v1 = OUTLINED_FUNCTION_29_14();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4_3(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_26982A178()
{
  result = qword_280325C30;
  if (!qword_280325C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325C30);
  }

  return result;
}

unint64_t sub_26982A1CC()
{
  result = qword_280325C48;
  if (!qword_280325C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A08, &unk_26985BB10);
    sub_26982A258();
    sub_26982A30C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325C48);
  }

  return result;
}

unint64_t sub_26982A258()
{
  result = qword_280325C50;
  if (!qword_280325C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323030, &qword_26985BAE0);
    sub_26982A3C0(&qword_2803250B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325C50);
  }

  return result;
}

unint64_t sub_26982A30C()
{
  result = qword_280325C58;
  if (!qword_280325C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323030, &qword_26985BAE0);
    sub_26982A3C0(&unk_280325C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325C58);
  }

  return result;
}

unint64_t sub_26982A3C0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_99_2(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26982A404()
{
  result = qword_280325C68;
  if (!qword_280325C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A10, &unk_26985BF10);
    sub_26982A490();
    sub_26982A544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325C68);
  }

  return result;
}

unint64_t sub_26982A490()
{
  result = qword_280325C70;
  if (!qword_280325C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803239E0, &unk_26985D8B0);
    sub_26982A3C0(&unk_280325C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325C70);
  }

  return result;
}

unint64_t sub_26982A544()
{
  result = qword_280325C80;
  if (!qword_280325C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803239E0, &unk_26985D8B0);
    sub_26982A3C0(&unk_280325C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325C80);
  }

  return result;
}

unint64_t sub_26982A5F8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_99_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A00, &unk_26985BF00);
    sub_26982BDEC(&unk_280325C40);
    sub_26982BDEC(&qword_2803230D8);
    result = OUTLINED_FUNCTION_140_0();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26982A6A8()
{
  result = qword_280325CA0;
  if (!qword_280325CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A08, &unk_26985BB10);
    sub_26982A258();
    sub_26982A30C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325CA0);
  }

  return result;
}

unint64_t sub_26982A734()
{
  result = qword_280325CA8;
  if (!qword_280325CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A10, &unk_26985BF10);
    sub_26982A490();
    sub_26982A544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325CA8);
  }

  return result;
}

unint64_t sub_26982A7C0()
{
  result = qword_280325CB8;
  if (!qword_280325CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325CB8);
  }

  return result;
}

unint64_t sub_26982A814(uint64_t a1)
{
  result = OUTLINED_FUNCTION_99_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323ED0, &qword_269868870);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26982A880()
{
  result = qword_280325CE8;
  if (!qword_280325CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325CE8);
  }

  return result;
}

unint64_t sub_26982A8D4()
{
  result = qword_280325CF0;
  if (!qword_280325CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325CD8, &qword_269868898);
    sub_26982A960();
    sub_26982AA14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325CF0);
  }

  return result;
}

unint64_t sub_26982A960()
{
  result = qword_280325CF8;
  if (!qword_280325CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A18, &unk_26985BB20);
    sub_26982A3C0(&unk_280325D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325CF8);
  }

  return result;
}

unint64_t sub_26982AA14()
{
  result = qword_280325D08;
  if (!qword_280325D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A18, &unk_26985BB20);
    sub_26982A3C0(&unk_280325D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325D08);
  }

  return result;
}

unint64_t sub_26982AAC8()
{
  result = qword_280325D18;
  if (!qword_280325D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A20, &unk_26985D920);
    sub_26982AB54();
    sub_26982AC08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325D18);
  }

  return result;
}

unint64_t sub_26982AB54()
{
  result = qword_280325D20;
  if (!qword_280325D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803239D8, &unk_26985BAD0);
    sub_26982A3C0(&unk_280325D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325D20);
  }

  return result;
}

unint64_t sub_26982AC08()
{
  result = qword_280325D30;
  if (!qword_280325D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803239D8, &unk_26985BAD0);
    sub_26982A3C0(&unk_280325D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325D30);
  }

  return result;
}

unint64_t sub_26982ACBC()
{
  result = qword_280325D48;
  if (!qword_280325D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325CD8, &qword_269868898);
    sub_26982A960();
    sub_26982AA14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325D48);
  }

  return result;
}

unint64_t sub_26982AD48()
{
  result = qword_280325D50;
  if (!qword_280325D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A20, &unk_26985D920);
    sub_26982AB54();
    sub_26982AC08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325D50);
  }

  return result;
}

unint64_t sub_26982ADD4()
{
  result = qword_280325D98;
  if (!qword_280325D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325D98);
  }

  return result;
}

unint64_t sub_26982AE28()
{
  result = qword_280325DA0;
  if (!qword_280325DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325DA0);
  }

  return result;
}

unint64_t sub_26982AE7C()
{
  result = qword_280325DA8;
  if (!qword_280325DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325DA8);
  }

  return result;
}

unint64_t sub_26982AED0()
{
  result = qword_280325DB0;
  if (!qword_280325DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325DB0);
  }

  return result;
}

unint64_t sub_26982AF24()
{
  result = qword_280325DB8;
  if (!qword_280325DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325DB8);
  }

  return result;
}

unint64_t sub_26982AF78()
{
  result = qword_280325DC0;
  if (!qword_280325DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325DC0);
  }

  return result;
}

unint64_t sub_26982AFCC()
{
  result = qword_280325DC8;
  if (!qword_280325DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325DC8);
  }

  return result;
}

uint64_t sub_26982B020(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

unint64_t sub_26982B068()
{
  result = qword_280325E18;
  if (!qword_280325E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325E18);
  }

  return result;
}

unint64_t sub_26982B0BC()
{
  result = qword_280325E20;
  if (!qword_280325E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A80, &unk_269868860);
    sub_26982B148();
    sub_26982B1FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325E20);
  }

  return result;
}

unint64_t sub_26982B148()
{
  result = qword_280325E28;
  if (!qword_280325E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A78, &unk_26985BEF0);
    sub_26982A3C0(&unk_280325E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325E28);
  }

  return result;
}

unint64_t sub_26982B1FC()
{
  result = qword_280325E38;
  if (!qword_280325E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A78, &unk_26985BEF0);
    sub_26982A3C0(&unk_280325E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325E38);
  }

  return result;
}

unint64_t sub_26982B2B0()
{
  result = qword_280325E50;
  if (!qword_280325E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A80, &unk_269868860);
    sub_26982B148();
    sub_26982B1FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325E50);
  }

  return result;
}

unint64_t sub_26982B33C()
{
  result = qword_280325E70;
  if (!qword_280325E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325E70);
  }

  return result;
}

unint64_t sub_26982B390()
{
  result = qword_280325E78;
  if (!qword_280325E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325E58, &qword_269868940);
    sub_26982B41C();
    sub_26982B4D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325E78);
  }

  return result;
}

unint64_t sub_26982B41C()
{
  result = qword_280325E80;
  if (!qword_280325E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A70, &unk_26985BEE0);
    sub_26982A3C0(&unk_280325E88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325E80);
  }

  return result;
}

unint64_t sub_26982B4D0()
{
  result = qword_280325E90;
  if (!qword_280325E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A70, &unk_26985BEE0);
    sub_26982A3C0(&unk_280325E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325E90);
  }

  return result;
}

unint64_t sub_26982B584()
{
  result = qword_280325EA0;
  if (!qword_280325EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325E60, &qword_269868948);
    sub_26982B610();
    sub_26982B664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325EA0);
  }

  return result;
}

unint64_t sub_26982B610()
{
  result = qword_280325EA8;
  if (!qword_280325EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325EA8);
  }

  return result;
}

unint64_t sub_26982B664()
{
  result = qword_280325EB0;
  if (!qword_280325EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325EB0);
  }

  return result;
}

unint64_t sub_26982B6B8()
{
  result = qword_280325EC0;
  if (!qword_280325EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325E58, &qword_269868940);
    sub_26982B41C();
    sub_26982B4D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325EC0);
  }

  return result;
}

unint64_t sub_26982B744()
{
  result = qword_280325EC8;
  if (!qword_280325EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325E60, &qword_269868948);
    sub_26982B610();
    sub_26982B664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325EC8);
  }

  return result;
}

unint64_t sub_26982B7D0()
{
  result = qword_280325EE0;
  if (!qword_280325EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325EE0);
  }

  return result;
}

unint64_t sub_26982B824(uint64_t a1)
{
  result = OUTLINED_FUNCTION_99_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325ED0, &qword_269868960);
    sub_26982A3C0(&unk_280325EF0);
    sub_26982A3C0(&unk_280325EF8);
    result = OUTLINED_FUNCTION_140_0();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26982B8E8()
{
  result = qword_280325F20;
  if (!qword_280325F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325F20);
  }

  return result;
}

unint64_t sub_26982B93C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_99_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325F10, &qword_269868978);
    sub_26982A3C0(&unk_280325C78);
    sub_26982A3C0(&unk_280325C88);
    result = OUTLINED_FUNCTION_140_0();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26982BA00()
{
  result = qword_280325F48;
  if (!qword_280325F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325F48);
  }

  return result;
}

unint64_t sub_26982BA54()
{
  result = qword_280325F88;
  if (!qword_280325F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325F88);
  }

  return result;
}

uint64_t sub_26982BAA8()
{
  OUTLINED_FUNCTION_31_2();
  v2 = v1(0);
  OUTLINED_FUNCTION_4_3(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_50_0();
  v6(v5);
  return v0;
}

unint64_t sub_26982BB00()
{
  result = qword_280325F90;
  if (!qword_280325F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325F90);
  }

  return result;
}

unint64_t sub_26982BB54()
{
  result = qword_280325FA0;
  if (!qword_280325FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325FA0);
  }

  return result;
}

unint64_t sub_26982BBA8()
{
  result = qword_280325FB0;
  if (!qword_280325FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325FB0);
  }

  return result;
}

unint64_t sub_26982BBFC()
{
  result = qword_280325FC0;
  if (!qword_280325FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325FC0);
  }

  return result;
}

unint64_t sub_26982BC50()
{
  result = qword_280325FD0;
  if (!qword_280325FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325FD0);
  }

  return result;
}

uint64_t sub_26982BCA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_26982BDEC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_99_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280322EA0, &unk_2698577C0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_26982C2D4()
{
  result = type metadata accessor for VideoDataModels.ResultsListModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for VideoDataModels.DisambiguateItemsModel(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for VideoDataModels.VideoResultDisambiguationModel(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for VideoDataModels.ConfirmationViewModel(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for VideoDataModels.ButtonModel(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26982C3AC()
{
  sub_26982C958(319, &qword_280326058, &qword_280322EA0, &unk_2698577C0);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_26982C958(319, &qword_280326060, &qword_280323030, &qword_26985BAE0);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_26982C958(319, &qword_280326068, &qword_2803239E0, &unk_26985D8B0);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_26982C4D8()
{
  sub_26982C9AC(319, &qword_280326080);
  if (v0 <= 0x3F)
  {
    sub_26982C958(319, &qword_280326060, &qword_280323030, &qword_26985BAE0);
    if (v1 <= 0x3F)
    {
      sub_26982C958(319, &qword_280326068, &qword_2803239E0, &unk_26985D8B0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26982C5DC()
{
  sub_26982C958(319, &qword_280326098, &qword_280323A18, &unk_26985BB20);
  if (v0 <= 0x3F)
  {
    sub_26982C958(319, &qword_2803260A0, &qword_2803239D8, &unk_26985BAD0);
    if (v1 <= 0x3F)
    {
      sub_26982C958(319, &qword_280326058, &qword_280322EA0, &unk_2698577C0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26982C6E8()
{
  sub_26982C9AC(319, &qword_280326080);
  if (v0 <= 0x3F)
  {
    sub_26982C958(319, &qword_280326058, &qword_280322EA0, &unk_2698577C0);
    if (v1 <= 0x3F)
    {
      sub_26982C958(319, &qword_2803260B8, &qword_280323A78, &unk_26985BEF0);
      if (v2 <= 0x3F)
      {
        sub_26982C958(319, &qword_280326068, &qword_2803239E0, &unk_26985D8B0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26982C7F4()
{
  result = sub_269851C74();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26982C884()
{
  sub_26982C9AC(319, &qword_280326080);
  if (v0 <= 0x3F)
  {
    sub_26982C958(319, &qword_2803260E0, &qword_280323A70, &unk_26985BEE0);
    if (v1 <= 0x3F)
    {
      sub_26982C9AC(319, &qword_2803260E8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26982C958(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2698526B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26982C9AC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2698526B4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_26982CA68()
{
  sub_26982CB34(319, &qword_280326118, MEMORY[0x277D62ED0]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_26982C9AC(319, &qword_280326080);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_26982CB34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2698526B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_70Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  OUTLINED_FUNCTION_33_16();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_93_2(v13);
  if (*(v14 + 84) == v7)
  {
    v15 = OUTLINED_FUNCTION_103_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    OUTLINED_FUNCTION_152_0();
    v15 = v8 + v17;
  }

  return __swift_getEnumTagSinglePayload(v15, v7, v16);
}

uint64_t __swift_store_extra_inhabitant_index_71Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_93_2(v11);
  if (*(v12 + 84) == a3)
  {
    OUTLINED_FUNCTION_94_2();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    OUTLINED_FUNCTION_160_0();
  }

  OUTLINED_FUNCTION_108_0();

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

void sub_26982CD1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_26982C9AC(319, &qword_280326080);
  if (v7 <= 0x3F)
  {
    sub_26982CB34(319, a4, a5);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26982CE48(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_112_1(-1);
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
      return OUTLINED_FUNCTION_112_1((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_112_1((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_112_1((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_112_1(v8);
}

_BYTE *sub_26982CECC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_111_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_109(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_110_1(result, v6);
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
          result = OUTLINED_FUNCTION_14_18(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26982CFA8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_112_1(-1);
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
      return OUTLINED_FUNCTION_112_1((*a1 | (v4 << 8)) - 5);
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

      return OUTLINED_FUNCTION_112_1((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_112_1((*a1 | (v4 << 8)) - 5);
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

  return OUTLINED_FUNCTION_112_1(v8);
}

_BYTE *sub_26982D02C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_111_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_109(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_110_1(result, v6);
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
          result = OUTLINED_FUNCTION_14_18(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VideoDataModels.BasicDisambiguationItem.Thumbnail.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26982D1E4(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_142(a1);
}

_BYTE *sub_26982D230(_BYTE *result, int a2, int a3)
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

uint64_t sub_26982D31C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_112_1(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_112_1((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_112_1((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_112_1((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_112_1(v8);
}

_BYTE *sub_26982D3A0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_111_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_109(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_110_1(result, v6);
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
          result = OUTLINED_FUNCTION_14_18(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26982D46C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_112_1(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_112_1((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_112_1((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_112_1((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_112_1(v8);
}

_BYTE *sub_26982D4F0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_111_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_109(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_110_1(result, v6);
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
          result = OUTLINED_FUNCTION_14_18(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VideoDataModels.VideoResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26982D69C()
{
  result = qword_280326130;
  if (!qword_280326130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326130);
  }

  return result;
}

unint64_t sub_26982D6F4()
{
  result = qword_280326138;
  if (!qword_280326138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326138);
  }

  return result;
}

unint64_t sub_26982D74C()
{
  result = qword_280326140;
  if (!qword_280326140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326140);
  }

  return result;
}

unint64_t sub_26982D7A4()
{
  result = qword_280326148;
  if (!qword_280326148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326148);
  }

  return result;
}

unint64_t sub_26982D7FC()
{
  result = qword_280326150;
  if (!qword_280326150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326150);
  }

  return result;
}

unint64_t sub_26982D854()
{
  result = qword_280326158;
  if (!qword_280326158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326158);
  }

  return result;
}

unint64_t sub_26982D8AC()
{
  result = qword_280326160;
  if (!qword_280326160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326160);
  }

  return result;
}

unint64_t sub_26982D904()
{
  result = qword_280326168;
  if (!qword_280326168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326168);
  }

  return result;
}

unint64_t sub_26982D95C()
{
  result = qword_280326170;
  if (!qword_280326170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326170);
  }

  return result;
}

unint64_t sub_26982D9B4()
{
  result = qword_280326178;
  if (!qword_280326178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326178);
  }

  return result;
}

unint64_t sub_26982DA0C()
{
  result = qword_280326180;
  if (!qword_280326180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326180);
  }

  return result;
}

unint64_t sub_26982DA64()
{
  result = qword_280326188;
  if (!qword_280326188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326188);
  }

  return result;
}

unint64_t sub_26982DABC()
{
  result = qword_280326190;
  if (!qword_280326190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326190);
  }

  return result;
}

unint64_t sub_26982DB14()
{
  result = qword_280326198;
  if (!qword_280326198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326198);
  }

  return result;
}

unint64_t sub_26982DB6C()
{
  result = qword_2803261A0;
  if (!qword_2803261A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803261A0);
  }

  return result;
}

unint64_t sub_26982DBC4()
{
  result = qword_2803261A8;
  if (!qword_2803261A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803261A8);
  }

  return result;
}

unint64_t sub_26982DC1C()
{
  result = qword_2803261B0;
  if (!qword_2803261B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803261B0);
  }

  return result;
}

unint64_t sub_26982DC74()
{
  result = qword_2803261B8;
  if (!qword_2803261B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803261B8);
  }

  return result;
}

unint64_t sub_26982DCCC()
{
  result = qword_2803261C0;
  if (!qword_2803261C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803261C0);
  }

  return result;
}

unint64_t sub_26982DD24()
{
  result = qword_2803261C8;
  if (!qword_2803261C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803261C8);
  }

  return result;
}

unint64_t sub_26982DD7C()
{
  result = qword_2803261D0;
  if (!qword_2803261D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803261D0);
  }

  return result;
}

unint64_t sub_26982DDD4()
{
  result = qword_2803261D8;
  if (!qword_2803261D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803261D8);
  }

  return result;
}

unint64_t sub_26982DE2C()
{
  result = qword_2803261E0;
  if (!qword_2803261E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803261E0);
  }

  return result;
}

unint64_t sub_26982DE84()
{
  result = qword_2803261E8;
  if (!qword_2803261E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803261E8);
  }

  return result;
}

unint64_t sub_26982DEDC()
{
  result = qword_2803261F0;
  if (!qword_2803261F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803261F0);
  }

  return result;
}

unint64_t sub_26982DF34()
{
  result = qword_2803261F8;
  if (!qword_2803261F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803261F8);
  }

  return result;
}

unint64_t sub_26982DF8C()
{
  result = qword_280326200;
  if (!qword_280326200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326200);
  }

  return result;
}

unint64_t sub_26982DFE4()
{
  result = qword_280326208;
  if (!qword_280326208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326208);
  }

  return result;
}

unint64_t sub_26982E03C()
{
  result = qword_280326210;
  if (!qword_280326210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326210);
  }

  return result;
}

unint64_t sub_26982E094()
{
  result = qword_280326218;
  if (!qword_280326218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326218);
  }

  return result;
}

unint64_t sub_26982E0EC()
{
  result = qword_280326220;
  if (!qword_280326220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326220);
  }

  return result;
}

unint64_t sub_26982E144()
{
  result = qword_280326228;
  if (!qword_280326228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326228);
  }

  return result;
}

unint64_t sub_26982E19C()
{
  result = qword_280326230;
  if (!qword_280326230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326230);
  }

  return result;
}

unint64_t sub_26982E1F4()
{
  result = qword_280326238;
  if (!qword_280326238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326238);
  }

  return result;
}

unint64_t sub_26982E24C()
{
  result = qword_280326240;
  if (!qword_280326240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326240);
  }

  return result;
}

unint64_t sub_26982E2A4()
{
  result = qword_280326248;
  if (!qword_280326248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326248);
  }

  return result;
}

unint64_t sub_26982E2FC()
{
  result = qword_280326250;
  if (!qword_280326250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326250);
  }

  return result;
}