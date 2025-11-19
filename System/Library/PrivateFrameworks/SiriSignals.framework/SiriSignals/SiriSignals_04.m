uint64_t sub_2314E0DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_231585744();
  v9 = sub_2315860C4();
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2314E0EA0;
  v12[3] = &block_descriptor_4;
  v10 = _Block_copy(v12);

  [v5 saveRecordWithData:v8 recordInfo:v9 completion:v10];
  _Block_release(v10);
}

uint64_t sub_2314E0EA0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B438, &unk_23158A1A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_231585894();
    v12 = sub_2315858A4();
    v13 = 0;
  }

  else
  {
    v12 = sub_2315858A4();
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v9, v13, 1, v12);

  v14 = a3;
  v11(v9, a3);

  return sub_2314E2130(v9);
}

uint64_t sub_2314E1088()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v3 = sub_23149C7D4(v2, v1);
  if (v3)
  {
    v4 = v3;
    v5 = OUTLINED_FUNCTION_1_12();
    [v4 doubleForKey_];
  }

  return sub_231585804();
}

uint64_t sub_2314E1134(uint64_t a1)
{
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v5 = sub_23149C7D4(v4, v3);
  if (v5)
  {
    v6 = v5;
    sub_231585814();
    v8 = v7;
    v9 = OUTLINED_FUNCTION_1_12();
    [v6 setDouble:v9 forKey:v8];
  }

  v10 = sub_231585884();
  v11 = *(*(v10 - 8) + 8);

  return v11(a1, v10);
}

void *sub_2314E1210(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[7] = a1;
  v2[8] = a2;
  v4 = sub_2314E2198();

  v5 = sub_2314E1338();
  if (v5)
  {
    v3[5] = v4;
    v3[6] = &off_284615438;
    v3[2] = v5;
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v6 = sub_231585FF4();
    __swift_project_value_buffer(v6, qword_280D72248);
    v7 = sub_231585FE4();
    v8 = sub_2315865E4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_5_3();
      *v9 = 0;
      _os_log_impl(&dword_231496000, v7, v8, "Unable to init DESRecordStore", v9, 2u);
      OUTLINED_FUNCTION_10();
    }

    v10 = v3[8];

    type metadata accessor for DESIntentEventStore();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

id sub_2314E1338()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_231586174();

  v2 = [v0 initWithBundleIdentifier_];

  return v2;
}

uint64_t sub_2314E13AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a3;
  v6 = sub_231585884();
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B430, &unk_23158B8B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  *(inited + 32) = 1702125924;
  *(inited + 40) = 0xE400000000000000;
  sub_231585874();
  sub_231585814();
  v16 = v15;
  (*(v9 + 8))(v13, v6);
  *(inited + 72) = MEMORY[0x277D839F8];
  *(inited + 48) = v16;
  v29 = sub_2315860F4();
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v17 = sub_231585FF4();
  __swift_project_value_buffer(v17, qword_280D72248);
  v18 = sub_231585FE4();
  v19 = sub_2315865D4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_5_3();
    *v20 = 0;
    _os_log_impl(&dword_231496000, v18, v19, "DesIntentEventStore#makeRecord saving record...", v20, 2u);
    OUTLINED_FUNCTION_10();
  }

  v22 = v4[5];
  v21 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v22);
  v23 = sub_231585EA4();
  v25 = v24;
  v26 = swift_allocObject();
  v26[2] = a2;
  v26[3] = v30;
  v26[4] = v4;
  v27 = *(v21 + 8);

  v27(v23, v25, v29, sub_2314E20B4, v26, v22, v21);

  sub_2314BEE4C(v23, v25);
}

void sub_2314E1664(uint64_t a1, void *a2, void (*a3)(uint64_t, void), uint64_t a4)
{
  v39 = a4;
  v7 = sub_231585884();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v38 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B438, &unk_23158A1A0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v17 = sub_231585FF4();
  __swift_project_value_buffer(v17, qword_280D72248);
  sub_2314E20C0(a1, v16);
  v18 = sub_231585FE4();
  v19 = sub_2315865C4();
  if (!os_log_type_enabled(v18, v19))
  {

    sub_2314E2130(v16);
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_9:
    v34 = v38;
    sub_231585874();
    sub_2314E1134(v34);
    a3(1, 0);
    return;
  }

  v20 = swift_slowAlloc();
  v37 = a3;
  v21 = v20;
  v22 = swift_slowAlloc();
  v36 = a2;
  v23 = v22;
  v40 = v22;
  *v21 = 136315138;
  sub_2314E20C0(v16, v14);
  sub_231586204();
  sub_2314E2130(v16);
  v24 = sub_2314A22E8();

  *(v21 + 4) = v24;
  _os_log_impl(&dword_231496000, v18, v19, "DesIntentEventStore#makeRecord Record Identifier: %s", v21, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v23);
  a2 = v36;
  MEMORY[0x231931280](v23, -1, -1);
  v25 = v21;
  a3 = v37;
  MEMORY[0x231931280](v25, -1, -1);

  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_5:
  v26 = a2;
  v27 = sub_231585FE4();
  v28 = sub_2315865E4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v42 = v30;
    *v29 = 136315138;
    swift_getErrorValue();
    v40 = sub_231586C94();
    v41 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B120, &qword_23158ACE0);
    sub_231586204();
    v32 = sub_2314A22E8();

    *(v29 + 4) = v32;
    _os_log_impl(&dword_231496000, v27, v28, "DesIntentEventStore#makeRecord Error creating record: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x231931280](v30, -1, -1);
    MEMORY[0x231931280](v29, -1, -1);
  }

  sub_2314E2048();
  v33 = swift_allocError();
  a3(v33, 1);
}

void *sub_2314E1A58(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_2314E2048();
  *(v2 + 16) = swift_allocError();
  *(v2 + 24) = 1;
  v3 = dispatch_semaphore_create(0);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  v5 = v3;
  sub_2314E13AC(a1, sub_2314E209C, v4);

  sub_2315866E4();

  swift_beginAccess();
  v6 = *(v2 + 16);
  sub_2314E20A8(v6, *(v2 + 24));

  return v6;
}

uint64_t sub_2314E1B78(void *a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  *(a3 + 16) = a1;
  *(a3 + 24) = a2 & 1;
  sub_2314E20A8(a1, a2 & 1);
  sub_2314E203C(v6, v7);
  return sub_2315866F4();
}

uint64_t sub_2314E1BFC(uint64_t a1, char a2)
{
  v5 = sub_231585884();
  v6 = OUTLINED_FUNCTION_4_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v6);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  v16 = v2[5];
  v17 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v16);
  if (((*(v17 + 16))(v16, v17) & 1) == 0)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v21 = sub_231585FF4();
    __swift_project_value_buffer(v21, qword_280D72248);
    v22 = sub_231585FE4();
    v23 = sub_2315865D4();
    if (!OUTLINED_FUNCTION_10_0(v23))
    {
      goto LABEL_21;
    }

LABEL_7:
    *OUTLINED_FUNCTION_5_3() = 0;
    OUTLINED_FUNCTION_26();
    v29 = 2;
    goto LABEL_20;
  }

  v18 = v2[5];
  v19 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v18);
  if (a2)
  {
    v20 = (*(v19 + 32))(v18, v19);
  }

  else
  {
    v20 = (*(v19 + 24))(a1, v18, v19);
  }

  v30 = v20;
  sub_231585874();
  sub_2314E1088();
  sub_2315857A4();
  v32 = v31;
  v33 = *(v8 + 8);
  v33(v13, v5);
  v33(v15, v5);
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v34 = sub_231585FF4();
  __swift_project_value_buffer(v34, qword_280D72248);
  v35 = sub_231585FE4();
  v36 = sub_2315865D4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 67109376;
    *(v37 + 4) = v30 & 1;
    *(v37 + 8) = 2048;
    *(v37 + 10) = v32;
    _os_log_impl(&dword_231496000, v35, v36, "RecordStore#shouldMakeRecord Store shouldMakeRecord?:%{BOOL}d, elapsedStore:%fs", v37, 0x12u);
    OUTLINED_FUNCTION_10();
  }

  v22 = sub_231585FE4();
  if (v32 <= 21600.0)
  {
    v46 = sub_2315865F4();
    if (!OUTLINED_FUNCTION_10_0(v46))
    {
LABEL_21:

      return 0;
    }

    v47 = swift_slowAlloc();
    *v47 = 134218240;
    *(v47 + 4) = v32;
    *(v47 + 12) = 2048;
    *(v47 + 14) = 0x40D5180000000000;
    OUTLINED_FUNCTION_26();
    v29 = 22;
LABEL_20:
    _os_log_impl(v24, v25, v26, v27, v28, v29);
    OUTLINED_FUNCTION_10();
    goto LABEL_21;
  }

  v38 = sub_2315865C4();
  v39 = OUTLINED_FUNCTION_10_0(v38);
  if ((v30 & 1) == 0)
  {
    if (!v39)
    {
      goto LABEL_21;
    }

    goto LABEL_7;
  }

  if (v39)
  {
    *OUTLINED_FUNCTION_5_3() = 0;
    OUTLINED_FUNCTION_26();
    _os_log_impl(v40, v41, v42, v43, v44, 2u);
    OUTLINED_FUNCTION_10();
  }

  return 1;
}

uint64_t sub_2314E1FD8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

void sub_2314E203C(id a1, char a2)
{
  if (a2)
  {
  }
}

unint64_t sub_2314E2048()
{
  result = qword_27DD5B428;
  if (!qword_27DD5B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B428);
  }

  return result;
}

id sub_2314E20A8(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_2314E20C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B438, &unk_23158A1A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314E2130(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B438, &unk_23158A1A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2314E2198()
{
  result = qword_27DD5B440;
  if (!qword_27DD5B440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD5B440);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DESIntentEventStoreError(_BYTE *result, int a2, int a3)
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

unint64_t sub_2314E228C()
{
  result = qword_27DD5B448;
  if (!qword_27DD5B448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B448);
  }

  return result;
}

uint64_t static DeviceClassSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for DeviceClassSignal;
  *(v0 + 64) = &protocol witness table for DeviceClassSignal;
  if (qword_280D6F8F8 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  v1 = unk_280D6F908;
  *(v0 + 32) = qword_280D6F900;
  *(v0 + 40) = v1;

  return v0;
}

uint64_t sub_2314E238C()
{
  result = sub_231586964();
  qword_280D6F900 = result;
  unk_280D6F908 = v1;
  return result;
}

uint64_t static DeviceClassSignal.signalName.getter()
{
  if (qword_280D6F8F8 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  v0 = qword_280D6F900;

  return v0;
}

uint64_t DeviceClassSignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static DeviceClassSignal.instances(with:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314E25DC();
}

SiriSignals::DeviceClassSignal __swiftcall DeviceClassSignal.init()()
{
  v1 = v0;
  if (qword_280D6F8F8 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  v2 = unk_280D6F908;
  *v1 = qword_280D6F900;
  v1[1] = v2;

  result.id._object = v4;
  result.id._countAndFlagsBits = v3;
  return result;
}

uint64_t DeviceClassSignal.value(completion:)(uint64_t (*a1)(uint64_t *))
{
  v2 = sub_231586174();
  v3 = MGGetSInt32Answer();

  v5 = v3;
  v6 = 0;
  return a1(&v5);
}

uint64_t sub_2314E256C(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314E25DC();
}

uint64_t sub_2314E25DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for DeviceClassSignal;
  *(v0 + 64) = &protocol witness table for DeviceClassSignal;
  if (qword_280D6F8F8 != -1)
  {
    swift_once();
  }

  v1 = unk_280D6F908;
  *(v0 + 32) = qword_280D6F900;
  *(v0 + 40) = v1;

  return v0;
}

void sub_2314E2694()
{
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_6_10();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v5 = OUTLINED_FUNCTION_19(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_18_0();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_12_6(v9);
  OUTLINED_FUNCTION_5_10(v10);
  v11 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  OUTLINED_FUNCTION_7_9();
  v13 = v12;
  v14 = OUTLINED_FUNCTION_21_2(v12, sel_publisherWithOptions_);

  OUTLINED_FUNCTION_13_3();
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_8_10(v15);
  OUTLINED_FUNCTION_0_22(v16);
  OUTLINED_FUNCTION_1_13();
  v23 = v17;
  v24 = &block_descriptor_5;
  _Block_copy(v22);
  OUTLINED_FUNCTION_10_5();
  v18 = v2;

  v25 = sub_2314E3CD0;
  v26 = v0;
  v22[0] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_2_12();
  v23 = v19;
  v24 = &block_descriptor_9;
  _Block_copy(v22);
  OUTLINED_FUNCTION_14_3();

  v21 = OUTLINED_FUNCTION_11_7(v20, sel_sinkWithCompletion_receiveInput_);
  OUTLINED_FUNCTION_20_4();
  _Block_release(v3);

  OUTLINED_FUNCTION_16_3();
}

void sub_2314E284C()
{
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_6_10();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v5 = OUTLINED_FUNCTION_19(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_18_0();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_12_6(v9);
  OUTLINED_FUNCTION_5_10(v10);
  v11 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  OUTLINED_FUNCTION_7_9();
  v13 = v12;
  v14 = OUTLINED_FUNCTION_21_2(v12, sel_publisherWithOptions_);

  OUTLINED_FUNCTION_13_3();
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_8_10(v15);
  OUTLINED_FUNCTION_0_22(v16);
  OUTLINED_FUNCTION_1_13();
  v23 = v17;
  v24 = &block_descriptor_18;
  _Block_copy(v22);
  OUTLINED_FUNCTION_10_5();
  v18 = v2;

  v25 = sub_2314E3E2C;
  v26 = v0;
  v22[0] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_2_12();
  v23 = v19;
  v24 = &block_descriptor_21;
  _Block_copy(v22);
  OUTLINED_FUNCTION_14_3();

  v21 = OUTLINED_FUNCTION_11_7(v20, sel_sinkWithCompletion_receiveInput_);
  OUTLINED_FUNCTION_20_4();
  _Block_release(v3);

  OUTLINED_FUNCTION_16_3();
}

void sub_2314E2A04()
{
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_6_10();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v5 = OUTLINED_FUNCTION_19(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_18_0();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_12_6(v9);
  OUTLINED_FUNCTION_5_10(v10);
  v11 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  OUTLINED_FUNCTION_7_9();
  v13 = v12;
  v14 = OUTLINED_FUNCTION_21_2(v12, sel_publisherWithOptions_);

  OUTLINED_FUNCTION_13_3();
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_8_10(v15);
  OUTLINED_FUNCTION_0_22(v16);
  OUTLINED_FUNCTION_1_13();
  v23 = v17;
  v24 = &block_descriptor_54;
  _Block_copy(v22);
  OUTLINED_FUNCTION_10_5();
  v18 = v2;

  v25 = sub_2314E3E2C;
  v26 = v0;
  v22[0] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_2_12();
  v23 = v19;
  v24 = &block_descriptor_57;
  _Block_copy(v22);
  OUTLINED_FUNCTION_14_3();

  v21 = OUTLINED_FUNCTION_11_7(v20, sel_sinkWithCompletion_receiveInput_);
  OUTLINED_FUNCTION_20_4();
  _Block_release(v3);

  OUTLINED_FUNCTION_16_3();
}

void sub_2314E2BBC()
{
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_6_10();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v5 = OUTLINED_FUNCTION_19(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_18_0();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_12_6(v9);
  OUTLINED_FUNCTION_5_10(v10);
  v11 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  OUTLINED_FUNCTION_7_9();
  v13 = v12;
  v14 = OUTLINED_FUNCTION_21_2(v12, sel_publisherWithOptions_);

  OUTLINED_FUNCTION_13_3();
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_8_10(v15);
  OUTLINED_FUNCTION_0_22(v16);
  OUTLINED_FUNCTION_1_13();
  v23 = v17;
  v24 = &block_descriptor_30;
  _Block_copy(v22);
  OUTLINED_FUNCTION_10_5();
  v18 = v2;

  v25 = sub_2314E3E2C;
  v26 = v0;
  v22[0] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_2_12();
  v23 = v19;
  v24 = &block_descriptor_33;
  _Block_copy(v22);
  OUTLINED_FUNCTION_14_3();

  v21 = OUTLINED_FUNCTION_11_7(v20, sel_sinkWithCompletion_receiveInput_);
  OUTLINED_FUNCTION_20_4();
  _Block_release(v3);

  OUTLINED_FUNCTION_16_3();
}

void sub_2314E2D74()
{
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_6_10();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v5 = OUTLINED_FUNCTION_19(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_18_0();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_12_6(v9);
  OUTLINED_FUNCTION_5_10(v10);
  v11 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  OUTLINED_FUNCTION_7_9();
  v13 = v12;
  v14 = OUTLINED_FUNCTION_21_2(v12, sel_publisherWithOptions_);

  OUTLINED_FUNCTION_13_3();
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_8_10(v15);
  OUTLINED_FUNCTION_0_22(v16);
  OUTLINED_FUNCTION_1_13();
  v23 = v17;
  v24 = &block_descriptor_66;
  _Block_copy(v22);
  OUTLINED_FUNCTION_10_5();
  v18 = v2;

  v25 = sub_2314E3E2C;
  v26 = v0;
  v22[0] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_2_12();
  v23 = v19;
  v24 = &block_descriptor_69;
  _Block_copy(v22);
  OUTLINED_FUNCTION_14_3();

  v21 = OUTLINED_FUNCTION_11_7(v20, sel_sinkWithCompletion_receiveInput_);
  OUTLINED_FUNCTION_20_4();
  _Block_release(v3);

  OUTLINED_FUNCTION_16_3();
}

void sub_2314E2F2C()
{
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_6_10();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v5 = OUTLINED_FUNCTION_19(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_18_0();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_12_6(v9);
  OUTLINED_FUNCTION_5_10(v10);
  v11 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  OUTLINED_FUNCTION_7_9();
  v13 = v12;
  v14 = OUTLINED_FUNCTION_21_2(v12, sel_publisherWithOptions_);

  OUTLINED_FUNCTION_13_3();
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_8_10(v15);
  OUTLINED_FUNCTION_0_22(v16);
  OUTLINED_FUNCTION_1_13();
  v23 = v17;
  v24 = &block_descriptor_42;
  _Block_copy(v22);
  OUTLINED_FUNCTION_10_5();
  v18 = v2;

  v25 = sub_2314E3E2C;
  v26 = v0;
  v22[0] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_2_12();
  v23 = v19;
  v24 = &block_descriptor_45;
  _Block_copy(v22);
  OUTLINED_FUNCTION_14_3();

  v21 = OUTLINED_FUNCTION_11_7(v20, sel_sinkWithCompletion_receiveInput_);
  OUTLINED_FUNCTION_20_4();
  _Block_release(v3);

  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_2314E30E4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *__return_ptr, void), uint64_t a5, void (*a6)(void), uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  OUTLINED_FUNCTION_22_4();
  if (*(a2 + 16))
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v14 = sub_231585FF4();
    __swift_project_value_buffer(v14, qword_280D72248);

    v15 = sub_231585FE4();
    v16 = sub_2315865D4();

    if (os_log_type_enabled(v15, v16))
    {
      v34 = a6;
      v17 = swift_slowAlloc();
      v18 = a4;
      v19 = swift_slowAlloc();
      v38 = v19;
      *v17 = 136315138;
      OUTLINED_FUNCTION_22_4();
      v39 = *(a2 + 16);
      v20 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(a8, a9);
      sub_231586204();
      v21 = sub_2314A22E8();

      *(v17 + 4) = v21;
      _os_log_impl(&dword_231496000, v15, v16, "BiomeLatestEventProcessor: Latest event: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      a4 = v18;
      OUTLINED_FUNCTION_10();
      a6 = v34;
      OUTLINED_FUNCTION_10();
    }
  }

  else
  {
    v35 = a4;
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v22 = sub_231585FF4();
    __swift_project_value_buffer(v22, qword_280D72248);
    v23 = a3;

    v24 = sub_231585FE4();
    v25 = sub_2315865E4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = a6;
      v28 = swift_slowAlloc();
      v38 = v28;
      *v26 = 136315138;
      v29 = [v23 identifier];
      sub_2315861A4();

      v30 = sub_2314A22E8();

      *(v26 + 4) = v30;
      _os_log_impl(&dword_231496000, v24, v25, "BiomeLatestEventProcessor: No value extracted from the Biome stream: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      a6 = v27;
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    a4 = v35;
  }

  OUTLINED_FUNCTION_22_4();
  v31 = *(a2 + 16);
  v32 = v31;
  a4(&v39, v31);

  v36 = v39;
  v37 = v40;
  a6(&v36);
  return sub_2314A5EEC(v36, v37);
}

void sub_2314E3434(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x231930B10]();
  v5 = [a1 eventBody];
  swift_beginAccess();
  v6 = *(a2 + 16);
  *(a2 + 16) = v5;

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_2314E34C8()
{
  result = sub_231586964();
  qword_280D6F250 = result;
  qword_280D6F258 = v1;
  return result;
}

uint64_t *sub_2314E34FC()
{
  if (qword_280D6F240 != -1)
  {
    OUTLINED_FUNCTION_4_10();
  }

  return &qword_280D6F250;
}

uint64_t static DeviceMotionStateSignal.signalName.getter()
{
  if (qword_280D6F240 != -1)
  {
    OUTLINED_FUNCTION_4_10();
  }

  OUTLINED_FUNCTION_22_4();
  v0 = qword_280D6F250;

  return v0;
}

uint64_t static DeviceMotionStateSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6F240 != -1)
  {
    OUTLINED_FUNCTION_4_10();
  }

  swift_beginAccess();
  qword_280D6F250 = a1;
  qword_280D6F258 = a2;
}

uint64_t (*static DeviceMotionStateSignal.signalName.modify())()
{
  if (qword_280D6F240 != -1)
  {
    OUTLINED_FUNCTION_4_10();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2314E369C@<X0>(void *a1@<X8>)
{
  sub_2314E34FC();
  swift_beginAccess();
  v2 = qword_280D6F258;
  *a1 = qword_280D6F250;
  a1[1] = v2;
}

uint64_t sub_2314E36F0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_2314E34FC();
  swift_beginAccess();
  qword_280D6F250 = v2;
  qword_280D6F258 = v1;
}

uint64_t DeviceMotionStateSignal.id.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void sub_2314E378C(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  v3 = a1;
  if ([v3 confidence] != 3 && objc_msgSend(v3, sel_confidence) != 2)
  {

LABEL_9:
    v4 = -1;
    goto LABEL_10;
  }

  if ([v3 unknown])
  {

    v4 = 0;
  }

  else if ([v3 stationary])
  {

    v4 = 1;
  }

  else if ([v3 walking])
  {

    v4 = 2;
  }

  else if ([v3 running] || objc_msgSend(v3, sel_cycling))
  {

    v4 = 3;
  }

  else
  {
    v5 = [v3 automotive];

    v4 = 4;
    if (!v5)
    {
      v4 = -1;
    }
  }

LABEL_10:
  *a2 = v4;
  *(a2 + 8) = 0;
}

uint64_t static DeviceMotionStateSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() Motion];
  swift_unknownObjectRelease();
  v2 = [v1 Activity];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for DeviceMotionStateSignal;
  *(v0 + 64) = &protocol witness table for DeviceMotionStateSignal;
  OUTLINED_FUNCTION_13_3();
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6F240 != -1)
  {
    OUTLINED_FUNCTION_4_10();
  }

  OUTLINED_FUNCTION_22_4();
  v4 = qword_280D6F258;
  v3[5] = qword_280D6F250;
  v3[6] = v4;
  v3[7] = &unk_284610878;
  v3[2] = v2;
  v3[3] = sub_2314E378C;
  v3[4] = 0;

  return v0;
}

uint64_t static DeviceMotionStateSignal.instances(with:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314E3AAC();
}

void DeviceMotionStateSignal.value(completion:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2314E2D74();
}

uint64_t sub_2314E3A50(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2314E3AAC();
}

uint64_t sub_2314E3AAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() Motion];
  swift_unknownObjectRelease();
  v2 = [v1 Activity];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for DeviceMotionStateSignal;
  *(v0 + 64) = &protocol witness table for DeviceMotionStateSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6F240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280D6F258;
  v3[5] = qword_280D6F250;
  v3[6] = v4;
  v3[7] = &unk_284610320;
  v3[2] = v2;
  v3[3] = sub_2314E378C;
  v3[4] = 0;

  return v0;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2314E3C20(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2314E3C60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  OUTLINED_FUNCTION_13_3();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

_BYTE *storeEnumTagSinglePayload for DeviceSupport(_BYTE *result, int a2, int a3)
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

uint64_t sub_2314E3F00()
{
  result = sub_2315860F4();
  qword_280D6E350 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DeviceSupport.DeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DeviceSupport.DeviceType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2314E40A8()
{
  result = qword_27DD5B490;
  if (!qword_27DD5B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B490);
  }

  return result;
}

uint64_t sub_2314E40FC(uint64_t a1)
{

  v3 = sub_231571404(v2);
  v33 = sub_231572E78(a1);
  v4 = MEMORY[0x277D84F90];
  v5 = sub_2315860F4();
  v6 = sub_231566740(v3);
  if (v6)
  {
    v7 = v6;
    sub_23152D698(0, v6 & ~(v6 >> 63), 0);
    if (v7 < 0)
    {
      goto LABEL_30;
    }

    v8 = 0;
    v9 = v4;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x231930660](v8, v3);
      }

      else
      {
        v10 = *(v3 + 8 * v8 + 32);
      }

      v11 = sub_2314B6020();
      v12 = static PriorDistributionUtils.computeDirichlet(frequencies:bandwidth:)(v11, 864000.0);

      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_23152D698(v13 > 1, v14 + 1, 1);
      }

      ++v8;
      *(v9 + 16) = v14 + 1;
      *(v9 + 8 * v14 + 32) = v12;
    }

    while (v7 != v8);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v15 = static PriorDistributionUtils.normalize(scores:)(v9);

  v32 = *(v15 + 16);
  if (!v32)
  {
LABEL_25:

    return v5;
  }

  v16 = 0;
  v17 = (v33 + 40);
  while (v16 < *(v15 + 16))
  {
    if (v16 >= *(v33 + 16))
    {
      goto LABEL_27;
    }

    v18 = *(v15 + 32 + 8 * v16);
    v20 = *(v17 - 1);
    v19 = *v17;

    swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_23149C888(v20, v19);
    if (__OFADD__(v5[2], (v22 & 1) == 0))
    {
      goto LABEL_28;
    }

    v23 = v21;
    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B168, &unk_23158B500);
    if (sub_231586A64())
    {
      v25 = sub_23149C888(v20, v19);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_31;
      }

      v23 = v25;
    }

    if (v24)
    {

      *(v5[7] + 8 * v23) = v18;
    }

    else
    {
      v5[(v23 >> 6) + 8] |= 1 << v23;
      v27 = (v5[6] + 16 * v23);
      *v27 = v20;
      v27[1] = v19;
      *(v5[7] + 8 * v23) = v18;
      v28 = v5[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_29;
      }

      v5[2] = v30;
    }

    ++v16;
    v17 += 2;
    if (v32 == v16)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_231586C84();
  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for DisambiguationDonationFields(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2314E4554()
{
  v0 = sub_231586B04();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2314E45A0(char a1)
{
  result = 0xD000000000000019;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2314E4640@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2314E4554();
  *a2 = result;
  return result;
}

unint64_t sub_2314E4670@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2314E45A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2314E46A0()
{
  result = qword_27DD5B498;
  if (!qword_27DD5B498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B498);
  }

  return result;
}

uint64_t sub_2314E46F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4A0, &qword_23158A530);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v38 - v6;
  v8 = sub_231585E34();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = v38 - v14;
  v17 = *a1;
  v16 = a1[1];
  v18 = sub_231585AF4();
  sub_231566A14(v17, v16, v18, v7);

  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    result = sub_2314E49B4(v7);
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    (*(v9 + 16))(v13, v15, v8);
    v20 = *(v9 + 88);
    v21 = OUTLINED_FUNCTION_4_2();
    v23 = v22(v21);
    if (v23 == *MEMORY[0x277D60008])
    {
      v24 = *(v9 + 96);
      v25 = OUTLINED_FUNCTION_4_2();
      v26(v25);
      v38[3] = *v13;
      v27 = sub_231586C24();
      v29 = v28;
      result = (*(v9 + 8))(v15, v8);
      *a2 = v27;
      a2[1] = v29;
    }

    else
    {
      v30 = v23;
      v31 = *MEMORY[0x277D60010];
      v32 = *(v9 + 8);
      v32(v15, v8);
      if (v30 == v31)
      {
        v33 = *(v9 + 96);
        v34 = OUTLINED_FUNCTION_4_2();
        result = v35(v34);
        v36 = v13[1];
        *a2 = *v13;
        a2[1] = v36;
      }

      else
      {
        *a2 = 0;
        a2[1] = 0;
        v37 = OUTLINED_FUNCTION_4_2();
        return (v32)(v37);
      }
    }
  }

  return result;
}

uint64_t sub_2314E49B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4A0, &qword_23158A530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2314E4A30(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  while (v5)
  {
    v21 = MEMORY[0x277D84F90];
    sub_23152D7F4();
    if (v5 < 0)
    {
      __break(1u);
      return;
    }

    v6 = 0;
    v7 = v21;
    v8 = (v3 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v8) = 1;
    }

    v9 = 4 << v8;
    v10 = v3 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v10 = v4;
    }

    v18 = v3;
    v19 = v10;
    v11 = 15;
    v17 = v9;
    while (1)
    {
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v12 = v11;
      if ((v11 & 0xC) == v9)
      {
        v12 = sub_2314E4F1C(v11, v3, a2);
      }

      v13 = v12 >> 16;
      if (v12 >> 16 >= v19)
      {
        goto LABEL_35;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v15 = sub_2315862E4();
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v20[0] = v3;
        v20[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v15 = *(v20 + v13);
      }

      else
      {
        v14 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v3 & 0x1000000000000000) == 0)
        {
          v14 = sub_2315869B4();
        }

        v15 = *(v14 + v13);
      }

      v21 = v7;
      v16 = *(v7 + 16);
      if (v16 >= *(v7 + 24) >> 1)
      {
        sub_23152D7F4();
        v7 = v21;
      }

      *(v7 + 16) = v16 + 1;
      *(v7 + 4 * v16 + 32) = v15;
      v9 = v17;
      v3 = v18;
      if ((v11 & 0xC) == v17)
      {
        v11 = sub_2314E4F1C(v11, v18, a2);
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        if (v19 <= v11 >> 16)
        {
          goto LABEL_36;
        }

        v11 = sub_2315862C4();
      }

      else
      {
        v11 = (v11 & 0xFFFFFFFFFFFF0000) + 65540;
      }

      ++v6;
      if (v4 == v5)
      {
        return;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v5 = sub_2315862B4();
  }
}

uint64_t DJB2Hash.hexString.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4A8, &unk_23158E4B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_231588340;
  OUTLINED_FUNCTION_0_23(v2, MEMORY[0x277D84CC0]);

  return sub_2315861D4();
}

uint64_t DJB2Hash.description.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4A8, &unk_23158E4B0);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84CC0];
  *(v2 + 16) = xmmword_231588340;
  OUTLINED_FUNCTION_0_23(v2, v3);
  v4 = sub_2315861D4();
  MEMORY[0x23192FF80](v4);

  return 30768;
}

uint64_t DJB2Hash.init(_:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    do
    {
      OUTLINED_FUNCTION_2_13();
    }

    while (!v3);
  }

  *a2 = 5381;
  return result;
}

uint64_t DJB2Hash.init(_:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, int *a3@<X8>)
{
  sub_2314E4A30(a1, a2);
  v5 = v4;

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    v8 = 5381;
    do
    {
      v9 = *v7++;
      v8 = 33 * v8 + v9;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = 5381;
  }

  *a3 = v8;
  return result;
}

uint64_t DJB2Hash.init(_:)@<X0>(unint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  sub_2314E4E9C(a1);
  if (*(v3 + 16))
  {
    do
    {
      OUTLINED_FUNCTION_2_13();
    }

    while (!v4);
  }

  *a2 = 5381;
  return result;
}

double sub_2314E4E9C(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4B0, &qword_23158A5B8);
  v3 = swift_allocObject();
  *&result = 2;
  *(v3 + 16) = xmmword_231588FE0;
  *(v3 + 32) = v2;
  *(v3 + 36) = v1;
  return result;
}

uint64_t sub_2314E4F1C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_2315862F4();
    OUTLINED_FUNCTION_1_14(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x23192FFB0](15, a1 >> 16);
    OUTLINED_FUNCTION_1_14(v3);
    return v4 | 8;
  }
}

uint64_t sub_2314E4F90()
{
  result = sub_231586964();
  qword_27DD5B4B8 = result;
  unk_27DD5B4C0 = v1;
  return result;
}

uint64_t static DomainAffinityScoreSignal.signalName.getter()
{
  if (qword_27DD5AD80 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  v0 = qword_27DD5B4B8;

  return v0;
}

unint64_t DomainAffinityScoreSignal.id.getter()
{
  v2 = *(v0 + *(type metadata accessor for DomainAffinityScoreSignal() + 20));
  v3 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_27DD5AD80 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  MEMORY[0x23192FF80](qword_27DD5B4B8, unk_27DD5B4C0);
  return v3;
}

uint64_t type metadata accessor for DomainAffinityScoreSignal()
{
  result = qword_280D6CD68;
  if (!qword_280D6CD68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DomainAffinityScoreSignal.instances()()
{
  type metadata accessor for SignalDefinitionParametersProvider.Builder();
  swift_initStackObject();
  SignalDefinitionParametersProvider.Builder.init()();
  sub_2315393D4(&unk_2846103D0);

  sub_23149A740(__src);

  memcpy(__dst, __src, sizeof(__dst));
  v0 = sub_2314E6358(__dst);
  sub_2314A0D7C(__dst);
  return v0;
}

uint64_t static DomainAffinityScoreSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314E6868(v3, v1, v2);
}

uint64_t static DomainAffinityScoreSignal.instances(useCases:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v3 = OUTLINED_FUNCTION_19(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24[-1] - v6;
  v8 = sub_231585D34();
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v24[3] = &type metadata for SignalComputationContext;
  v24[4] = &protocol witness table for SignalComputationContext;
  v17 = swift_allocObject();
  v24[0] = v17;
  *(v17 + 16) = MEMORY[0x277D84F90];
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0u;
  *(v17 + 56) = a1;
  v18 = qword_280D6FD68;
  swift_bridgeObjectRetain_n();

  if (v18 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v24, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2314A2910(v7, &qword_27DD5B008, &unk_23158A5C0);
    v19 = MEMORY[0x277D84F90];
  }

  else
  {
    v20 = (*(v11 + 32))(v16, v7, v8);
    if (a1)
    {
      v21 = a1;
    }

    else
    {
      v21 = &unk_2846103D0;
    }

    MEMORY[0x28223BE20](v20);
    *(&v23 - 2) = v16;

    v19 = sub_2314DCD00(sub_2314E6B00, (&v23 - 4), v21);

    (*(v11 + 8))(v16, v8);
  }

  __swift_destroy_boxed_opaque_existential_1(v24);

  swift_bridgeObjectRelease_n();

  return v19;
}

uint64_t static DomainAffinityScoreSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_2314E65E0(v3);
}

uint64_t sub_2314E54A4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for DomainAffinityScoreSignal();
  a3[3] = v6;
  a3[4] = &protocol witness table for DomainAffinityScoreSignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v8 = sub_231585D34();
  result = (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, a2, v8);
  *(boxed_opaque_existential_1 + *(v6 + 20)) = v5;
  return result;
}

uint64_t static DomainAffinityScoreSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_2846119C8);
  *a1 = result;
  return result;
}

uint64_t DomainAffinityScoreSignal.value(completion:)(void (*a1)(uint64_t *), uint64_t a2)
{
  v75 = a2;
  v76 = a1;
  v3 = type metadata accessor for DomainAffinityScoreSignal();
  v4 = OUTLINED_FUNCTION_8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v74 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  v10 = OUTLINED_FUNCTION_19(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v69 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  v16 = OUTLINED_FUNCTION_19(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11_0();
  v72 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v69 - v22;
  v24 = sub_231585D34();
  v25 = OUTLINED_FUNCTION_4_1(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_11_0();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v69 - v34;
  v36 = *(v27 + 16);
  v36(&v69 - v34, v2, v24);
  v69 = v3;
  v37 = *(v2 + *(v3 + 20));
  sub_231585AE4();
  OUTLINED_FUNCTION_7_1();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  v73 = v2;
  v42 = DomainAffinityScoreSignal.id.getter();
  v70 = v43;
  v71 = v42;
  v36(v32, v35, v24);
  LOBYTE(v78) = v37;
  v44 = DomainUseCase.intentTypes.getter();
  if (v37 <= 0xD)
  {
    if (((1 << v37) & 0xA95) != 0)
    {
      v45 = MEMORY[0x277D5FFC0];
LABEL_6:
      v46 = *v45;
      v47 = sub_231585D74();
      OUTLINED_FUNCTION_8(v47);
      (*(v48 + 104))(v14, v46, v47);
      v49 = v14;
      v50 = 0;
      v51 = 1;
      v52 = v47;
      goto LABEL_7;
    }

    if (((1 << v37) & 0x3060) != 0)
    {
      v45 = MEMORY[0x277D5FFB8];
      goto LABEL_6;
    }
  }

  sub_231585D74();
  OUTLINED_FUNCTION_7_1();
LABEL_7:
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  if (v37 - 1 > 0xA)
  {
    v53 = 2;
  }

  else
  {
    v53 = byte_23158A61C[(v37 - 1)];
  }

  v54 = v72;
  sub_2314A68F8(v23, v72);
  v55 = sub_2314A0DE8(v32, v44, v14, v53, v54, v71, v70, MEMORY[0x277D84F90], 0);
  v57 = v56;
  sub_2314A2910(v23, &qword_27DD5B4D0, &qword_23158A5D0);
  (*(v27 + 8))(v35, v24);
  v58 = sub_2314BB35C(v55, v57);

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v59 = sub_231585FF4();
  __swift_project_value_buffer(v59, qword_280D72248);
  v60 = v74;
  sub_2314E6B1C(v73, v74);

  v61 = sub_231585FE4();
  v62 = sub_2315865D4();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v63 = 136315394;
    v77 = *(v60 + *(v69 + 20));
    v64 = DomainUseCase.rawValue.getter();
    OUTLINED_FUNCTION_8_11(v64, v65);
    if (qword_27DD5AD80 != -1)
    {
      OUTLINED_FUNCTION_0_24();
    }

    MEMORY[0x23192FF80](qword_27DD5B4B8, unk_27DD5B4C0);
    sub_2314E6B80(v60);
    v66 = sub_2314A22E8();

    *(v63 + 4) = v66;
    *(v63 + 12) = 2080;
    sub_2315860E4();
    v67 = sub_2314A22E8();

    *(v63 + 14) = v67;
    _os_log_impl(&dword_231496000, v61, v62, "%s value: %s", v63, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_2314E6B80(v60);
  }

  v78 = v58;
  LOBYTE(v79) = 3;
  v76(&v78);
  return sub_2314A5EEC(v78, v79);
}

uint64_t DomainAffinityScoreSignal.valueForApps(bundleIDs:completion:)(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v89 = a3;
  v90 = a2;
  v5 = type metadata accessor for DomainAffinityScoreSignal();
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v88 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  v12 = OUTLINED_FUNCTION_19(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v87 = &v78 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  v17 = OUTLINED_FUNCTION_19(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_11_0();
  v84 = v20 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v78 - v23;
  v25 = sub_231585D34();
  v26 = OUTLINED_FUNCTION_4_1(v25);
  v91 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_11_0();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v78 - v34;
  v79 = v5;
  v36 = *(v5 + 20);
  LODWORD(v86) = *(v3 + v36);
  v98 = 0xD000000000000013;
  v99 = 0x8000000231591960;
  v95 = &v98;
  v37 = sub_2314E62A8(sub_2314BB954, v94, a1);
  v98 = 0xD000000000000017;
  v99 = 0x800000023158F940;
  v93 = &v98;
  v38 = sub_2314E62A8(sub_2314BB974, v92, a1);
  v39 = v37 && (v86 - 7) < 7;
  if (!(v39 | !v38))
  {
    v39 = v86 < 7;
  }

  v81 = v39;
  v40 = *(v91 + 16);
  v40(v35, v3, v25);
  v41 = *(v3 + v36);
  sub_231585AE4();
  v85 = v24;
  OUTLINED_FUNCTION_7_1();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  v83 = v3;
  v46 = DomainAffinityScoreSignal.id.getter();
  v80 = v47;
  v82 = v32;
  v86 = v25;
  v40(v32, v35, v25);
  LOBYTE(v98) = v41;
  v48 = DomainUseCase.intentTypes.getter();
  if (v41 > 0xD)
  {
    goto LABEL_19;
  }

  if (((1 << v41) & 0xA95) != 0)
  {
    v49 = v46;
    v50 = *MEMORY[0x277D5FFC0];
    v51 = sub_231585D74();
    OUTLINED_FUNCTION_8(v51);
    v53 = v87;
    (*(v52 + 104))(v87, v50, v51);
    v54 = v53;
    v55 = 0;
    v56 = 1;
    v57 = v51;
    goto LABEL_8;
  }

  if (((1 << v41) & 0x3060) != 0)
  {
    v49 = v46;
    v58 = *MEMORY[0x277D5FFB8];
    v59 = sub_231585D74();
    OUTLINED_FUNCTION_8(v59);
    v53 = v87;
    (*(v60 + 104))(v87, v58, v59);
    v54 = v53;
    v55 = 0;
    v56 = 1;
    v57 = v59;
  }

  else
  {
LABEL_19:
    v49 = v46;
    sub_231585D74();
    v53 = v87;
    OUTLINED_FUNCTION_7_1();
  }

LABEL_8:
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
  if (v41 - 1 > 0xA)
  {
    v61 = 2;
  }

  else
  {
    v61 = byte_23158A61C[(v41 - 1)];
  }

  v62 = v88;
  v63 = v84;
  v64 = v85;
  sub_2314A68F8(v85, v84);

  v65 = sub_2314A0DE8(v82, v48, v53, v61, v63, v49, v80, a1, v81);
  v67 = v66;
  sub_2314A2910(v64, &qword_27DD5B4D0, &qword_23158A5D0);
  (*(v91 + 8))(v35, v86);
  v68 = sub_2314BB35C(v65, v67);

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v69 = sub_231585FF4();
  __swift_project_value_buffer(v69, qword_280D72248);
  sub_2314E6B1C(v83, v62);

  v70 = sub_231585FE4();
  v71 = sub_2315865D4();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *v72 = 136315394;
    v96 = *(v62 + *(v79 + 20));
    v73 = DomainUseCase.rawValue.getter();
    OUTLINED_FUNCTION_8_11(v73, v74);
    if (qword_27DD5AD80 != -1)
    {
      OUTLINED_FUNCTION_0_24();
    }

    MEMORY[0x23192FF80](qword_27DD5B4B8, unk_27DD5B4C0);
    sub_2314E6B80(v62);
    v75 = sub_2314A22E8();

    *(v72 + 4) = v75;
    *(v72 + 12) = 2080;
    sub_2315860E4();
    v76 = sub_2314A22E8();

    *(v72 + 14) = v76;
    _os_log_impl(&dword_231496000, v70, v71, "%s value: %s", v72, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_2314E6B80(v62);
  }

  v98 = v68;
  LOBYTE(v99) = 3;
  v90(&v98);
  return sub_2314A5EEC(v98, v99);
}

uint64_t sub_2314E6200(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314E6868(v3, v1, v2);
}

uint64_t sub_2314E6264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_231586C44() & 1;
  }
}

BOOL sub_2314E62A8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_2314E6358(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17[-v4 - 8];
  v6 = sub_231585D34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v18[3] = &type metadata for SignalDefinitionParametersProvider;
  v18[4] = &protocol witness table for SignalDefinitionParametersProvider;
  v18[0] = swift_allocObject();
  memcpy((v18[0] + 16), a1, 0x50uLL);
  sub_2314E6CA4(a1, v17);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v18, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2314A2910(v5, &qword_27DD5B008, &unk_23158A5C0);
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = a1[3];
    v13 = (*(v7 + 32))(v10, v5, v6);
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &unk_2846103D0;
    }

    MEMORY[0x28223BE20](v13);
    *(&v16 - 2) = v10;

    v11 = sub_2314DCD00(sub_2314E6D00, (&v16 - 4), v14);

    (*(v7 + 8))(v10, v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v11;
}

uint64_t sub_2314E65E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19[-v4 - 8];
  v6 = sub_231585D34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v20[3] = &type metadata for SignalComputationContext;
  v20[4] = &protocol witness table for SignalComputationContext;
  v11 = swift_allocObject();
  v20[0] = v11;
  v12 = *(a1 + 16);
  v11[1] = *a1;
  v11[2] = v12;
  v11[3] = *(a1 + 32);
  sub_2314B5008(a1, v19);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v20, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2314A2910(v5, &qword_27DD5B008, &unk_23158A5C0);
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    v14 = *(a1 + 40);
    v15 = (*(v7 + 32))(v10, v5, v6);
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &unk_2846103D0;
    }

    MEMORY[0x28223BE20](v15);
    *(&v18 - 2) = v10;

    v13 = sub_2314DCD00(sub_2314E6D00, (&v18 - 4), v16);

    (*(v7 + 8))(v10, v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v13;
}

uint64_t sub_2314E6868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21[-1] - v8;
  v10 = sub_231585D34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[3] = a2;
  v21[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v21, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2314A2910(v9, &qword_27DD5B008, &unk_23158A5C0);
    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v17 = (*(a3 + 24))(a2, a3);
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = &unk_2846103D0;
    }

    MEMORY[0x28223BE20](v17);
    *(&v20 - 2) = v14;
    v16 = sub_2314DCD00(sub_2314E6D00, (&v20 - 4), v18);

    (*(v11 + 8))(v14, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v16;
}

uint64_t sub_2314E6B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainAffinityScoreSignal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314E6B80(uint64_t a1)
{
  v2 = type metadata accessor for DomainAffinityScoreSignal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314E6C30()
{
  result = sub_231585D34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2314E6D2C()
{
  result = sub_231586964();
  qword_27DD5B4D8 = result;
  unk_27DD5B4E0 = v1;
  return result;
}

uint64_t static DomainDefaultAppSignal.signalName.getter()
{
  if (qword_27DD5AD88 != -1)
  {
    OUTLINED_FUNCTION_0_25();
  }

  v0 = qword_27DD5B4D8;

  return v0;
}

uint64_t DomainDefaultAppSignal.id.getter()
{
  if (qword_27DD5AD88 != -1)
  {
    OUTLINED_FUNCTION_0_25();
  }

  v0 = qword_27DD5B4D8;

  return v0;
}

uint64_t static DomainDefaultAppSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314E7434(v3, v1, v2);
}

uint64_t static DomainDefaultAppSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_2846119F0);
  *a1 = result;
  return result;
}

uint64_t DomainDefaultAppSignal.value(completion:)(void (*a1)(uint64_t *))
{
  v3 = *v1;
  v4 = *(v1 + 8);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v5 = 3;
  }

  else
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      goto LABEL_12;
    }

    v5 = 4;
  }

  v6 = sub_2314E08C8(v5);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v10 = sub_231585FF4();
    __swift_project_value_buffer(v10, qword_280D72248);
    v11 = v3;

    v12 = sub_231585FE4();
    v13 = sub_2315865D4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v14 = 136315394;
      if (qword_27DD5AD88 != -1)
      {
        OUTLINED_FUNCTION_0_25();
      }

      v15 = sub_2314A22E8();

      *(v14 + 4) = v15;
      *(v14 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4E8, &qword_23158A630);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_231588340;
      *(inited + 32) = v8;
      *(inited + 40) = v9;
      *(inited + 48) = 1;

      v28 = sub_2315860F4();
      LOBYTE(v29) = 1;
      SignalValue.description.getter();
      sub_2314A5EEC(v28, 1u);
      v17 = sub_2314A22E8();

      *(v14 + 14) = v17;
      _os_log_impl(&dword_231496000, v12, v13, "%s value: %s", v14, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4E8, &qword_23158A630);
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_231588340;
    *(v27 + 32) = v8;
    *(v27 + 40) = v9;
    *(v27 + 48) = 1;
    v28 = sub_2315860F4();
    LOBYTE(v29) = 1;
    a1(&v28);
    return sub_2314A5EEC(v28, v29);
  }

LABEL_12:
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v18 = sub_231585FF4();
  __swift_project_value_buffer(v18, qword_280D72248);
  v19 = v3;

  v20 = sub_231585FE4();
  v21 = sub_2315865D4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v22 = 136315394;
    if (qword_27DD5AD88 != -1)
    {
      OUTLINED_FUNCTION_0_25();
    }

    v23 = sub_2314A22E8();

    *(v22 + 4) = v23;
    *(v22 + 12) = 2080;
    sub_231586954();

    v28 = 0xD000000000000015;
    v29 = 0x80000002315919A0;
    v24 = sub_231586C24();
    MEMORY[0x23192FF80](v24);

    MEMORY[0x23192FF80](62, 0xE100000000000000);
    v25 = sub_2314A22E8();

    *(v22 + 14) = v25;
    _os_log_impl(&dword_231496000, v20, v21, "%s value: %s", v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v28 = -1;
  LOBYTE(v29) = 0;
  return (a1)(&v28);
}

uint64_t sub_2314E73D4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314E7434(v3, v1, v2);
}

uint64_t sub_2314E7434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  v9 = (*(a3 + 48))(a2, a3);
  if (v9)
  {
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_231588340;
    type metadata accessor for DefaultAppProvider();
    v12 = swift_allocObject();
    *(v11 + 56) = &type metadata for DomainDefaultAppSignal;
    *(v11 + 64) = &protocol witness table for DomainDefaultAppSignal;
    *(v11 + 32) = v10;
    *(v11 + 40) = v12;
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v13 = sub_231585FF4();
    __swift_project_value_buffer(v13, qword_280D72248);
    v14 = sub_231585FE4();
    v15 = sub_2315865E4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 136315138;
      v20[0] = &type metadata for DomainDefaultAppSignal;
      v20[1] = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4F0, &qword_23158A6A8);
      sub_231586204();
      v18 = sub_2314A22E8();

      *(v16 + 4) = v18;
      _os_log_impl(&dword_231496000, v14, v15, "%s no intent given", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x231931280](v17, -1, -1);
      MEMORY[0x231931280](v16, -1, -1);
    }

    v11 = MEMORY[0x277D84F90];
  }

  (*(v5 + 8))(v8, a2);
  return v11;
}

uint64_t sub_2314E76F4(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 + 32;
  while (1)
  {
    v6 = 0xE200000000000000;
    v7 = 27954;
    switch(*(v5 + v4))
    {
      case 1:
        v6 = 0xE300000000000000;
        v7 = 7155761;
        break;
      case 2:
        v7 = 26673;
        break;
      case 3:
        v7 = 26678;
        break;
      case 4:
        v7 = 25649;
        break;
      case 5:
        v7 = 25655;
        break;
      case 6:
        v6 = 0xE300000000000000;
        v7 = 6567986;
        break;
      case 7:
        v6 = 0xE300000000000000;
        v7 = 6712937;
        break;
      default:
        break;
    }

    v8 = 0xE200000000000000;
    v9 = 27954;
    switch(a1)
    {
      case 1:
        v8 = 0xE300000000000000;
        v9 = 7155761;
        break;
      case 2:
        v9 = 26673;
        break;
      case 3:
        v9 = 26678;
        break;
      case 4:
        v9 = 25649;
        break;
      case 5:
        v9 = 25655;
        break;
      case 6:
        v8 = 0xE300000000000000;
        v9 = 6567986;
        break;
      case 7:
        v8 = 0xE300000000000000;
        v9 = 6712937;
        break;
      default:
        break;
    }

    if (v7 == v9 && v6 == v8)
    {
      break;
    }

    v11 = sub_231586C44();

    if (v11)
    {
      return v4;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_2314E78B4()
{
  result = sub_231586964();
  qword_280D6D2E8 = result;
  unk_280D6D2F0 = v1;
  return result;
}

uint64_t DomainFrequencySignal.id.getter()
{
  v4[8] = 0;
  v1 = type metadata accessor for DomainFrequencySignal();
  *v4 = *(v0 + *(v1 + 20));
  v2 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](v2);

  OUTLINED_FUNCTION_7_10();
  if (qword_280D6D2E0 != -1)
  {
    OUTLINED_FUNCTION_0_26();
  }

  MEMORY[0x23192FF80](qword_280D6D2E8, unk_280D6D2F0);
  OUTLINED_FUNCTION_7_10();
  v4[0] = *(v0 + *(v1 + 24));
  sub_231586A54();
  return *&v4[1];
}

uint64_t static DomainFrequencySignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314E8C84(v3, v1, v2);
}

uint64_t static DomainFrequencySignal.instances(useCases:)(uint64_t a1)
{
  type metadata accessor for SignalDefinitionParametersProvider.Builder();
  swift_initStackObject();
  SignalDefinitionParametersProvider.Builder.init()();
  sub_2315393D4(a1);

  sub_23149A740(__src);

  memcpy(__dst, __src, sizeof(__dst));
  v2 = sub_2314E879C(__dst);
  sub_2314A0D7C(__dst);
  return v2;
}

uint64_t static DomainFrequencySignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_2314E8A24(v3);
}

uint64_t sub_2314E7AE0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = type metadata accessor for DomainFrequencySignal();
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v20 = *a1;
  v25 = MEMORY[0x277D84F90];
  sub_23152D5B8();
  v11 = v25;
  v12 = sub_231585D34();
  v13 = 0;
  v14 = *(*(v12 - 8) + 16);
  do
  {
    v15 = byte_28460FCD0[v13 + 32];
    v14(v10, a2, v12);
    *(v10 + *(v4 + 20)) = v20;
    *(v10 + *(v4 + 24)) = v15;
    v25 = v11;
    v16 = *(v11 + 16);
    if (v16 >= *(v11 + 24) >> 1)
    {
      sub_23152D5B8();
      v11 = v25;
    }

    ++v13;
    v23 = v4;
    v24 = &protocol witness table for DomainFrequencySignal;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
    sub_2314E8F1C(v10, boxed_opaque_existential_1);
    *(v11 + 16) = v16 + 1;
    sub_23149FD3C(&v22, v11 + 40 * v16 + 32);
    result = sub_2314E8F80(v10);
  }

  while (v13 != 8);
  *a3 = v11;
  return result;
}

uint64_t static DomainFrequencySignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611A18);
  *a1 = result;
  return result;
}

uint64_t DomainFrequencySignal.value(completion:)(void (*a1)(uint64_t *), uint64_t a2)
{
  v87 = a2;
  v88 = a1;
  v3 = type metadata accessor for DomainFrequencySignal();
  v4 = OUTLINED_FUNCTION_8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v86 = &v79 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  v13 = OUTLINED_FUNCTION_19(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v79 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  v19 = OUTLINED_FUNCTION_19(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_11_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v79 - v26;
  v28 = sub_231585D34();
  v29 = OUTLINED_FUNCTION_4_1(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_11_0();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v79 - v38;
  v40 = sub_2314E76F4(*(v2 + *(v3 + 24)), byte_28460FCD0);
  if (v41)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v42 = sub_231585FF4();
    __swift_project_value_buffer(v42, qword_280D72248);
    sub_2314E8F1C(v2, v9);
    v43 = sub_231585FE4();
    v44 = sub_2315865E4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_12(v46, 4.8149e-34);
      v89 = *(v9 + *(v3 + 20));
      v47 = DomainUseCase.rawValue.getter();
      MEMORY[0x23192FF80](v47);

      OUTLINED_FUNCTION_7_10();
      if (qword_280D6D2E0 != -1)
      {
        OUTLINED_FUNCTION_0_26();
      }

      MEMORY[0x23192FF80](qword_280D6D2E8, unk_280D6D2F0);
      OUTLINED_FUNCTION_7_10();
      v89 = *(v9 + *(v3 + 24));
      sub_231586A54();
      sub_2314E8F80(v9);
      v48 = sub_2314A22E8();

      *(v45 + 4) = v48;
      _os_log_impl(&dword_231496000, v43, v44, "Unsupported time bucket range received %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    else
    {

      sub_2314E8F80(v9);
    }

    v90 = sub_2315860F4();
    goto LABEL_26;
  }

  v83 = v40;
  v84 = v31;
  v49 = *(v31 + 16);
  v49(v39, v2, v28);
  v80 = v3;
  v50 = *(v2 + *(v3 + 20));
  v51 = sub_231585AE4();
  __swift_storeEnumTagSinglePayload(v27, 1, 1, v51);
  v85 = v2;
  v52 = DomainFrequencySignal.id.getter();
  v81 = v53;
  v82 = v52;
  v49(v36, v39, v28);
  LOBYTE(v90) = v50;
  v54 = DomainUseCase.intentTypes.getter();
  if (v50 > 0xD)
  {
    goto LABEL_27;
  }

  if (((1 << v50) & 0xA95) == 0)
  {
    if (((1 << v50) & 0x3060) != 0)
    {
      v61 = *MEMORY[0x277D5FFB8];
      v62 = sub_231585D74();
      OUTLINED_FUNCTION_8(v62);
      (*(v63 + 104))(v17, v61, v62);
      v58 = v17;
      v59 = 0;
      v60 = v62;
      goto LABEL_15;
    }

LABEL_27:
    v60 = sub_231585D74();
    v58 = v17;
    v59 = 1;
    goto LABEL_15;
  }

  v55 = *MEMORY[0x277D5FFC0];
  v56 = sub_231585D74();
  OUTLINED_FUNCTION_8(v56);
  (*(v57 + 104))(v17, v55, v56);
  v58 = v17;
  v59 = 0;
  v60 = v56;
LABEL_15:
  __swift_storeEnumTagSinglePayload(v58, v59, 1, v60);
  v64 = v84;
  if (v50 - 1 > 0xA)
  {
    v65 = 2;
  }

  else
  {
    v65 = byte_23158A712[(v50 - 1)];
  }

  sub_2314A68F8(v27, v24);
  v66 = sub_2314A0DE8(v36, v54, v17, v65, v24, v82, v81, MEMORY[0x277D84F90], 0);
  sub_2314A2910(v27, &qword_27DD5B4D0, &qword_23158A5D0);
  (*(v64 + 8))(v39, v28);
  v67 = sub_23156D02C(v83, v66);

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v68 = sub_231585FF4();
  __swift_project_value_buffer(v68, qword_280D72248);
  v69 = v86;
  sub_2314E8F1C(v85, v86);

  v70 = sub_231585FE4();
  v71 = sub_2315865D4();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_12(v73, 4.8151e-34);
    v74 = v80;
    v89 = *(v69 + *(v80 + 20));
    v75 = DomainUseCase.rawValue.getter();
    MEMORY[0x23192FF80](v75);

    OUTLINED_FUNCTION_7_10();
    if (qword_280D6D2E0 != -1)
    {
      OUTLINED_FUNCTION_0_26();
    }

    MEMORY[0x23192FF80](qword_280D6D2E8, unk_280D6D2F0);
    OUTLINED_FUNCTION_7_10();
    v89 = *(v69 + *(v74 + 24));
    sub_231586A54();
    sub_2314E8F80(v69);
    v76 = sub_2314A22E8();

    *(v72 + 4) = v76;
    *(v72 + 12) = 2080;
    sub_2315860E4();
    v77 = sub_2314A22E8();

    *(v72 + 14) = v77;
    _os_log_impl(&dword_231496000, v70, v71, "%s value: %s", v72, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_2314E8F80(v69);
  }

  v90 = v67;
LABEL_26:
  LOBYTE(v91) = 1;
  v88(&v90);
  return sub_2314A5EEC(v90, v91);
}

uint64_t sub_2314E84F8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314E8C84(v3, v1, v2);
}

uint64_t type metadata accessor for DomainFrequencySignal()
{
  result = qword_280D6D2D0;
  if (!qword_280D6D2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s11SiriSignals21DomainFrequencySignalV9instancesSayAA0E9Providing_pGyFZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v1 = OUTLINED_FUNCTION_19(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20[-1] - v4;
  v6 = sub_231585D34();
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v20[3] = &type metadata for NoParameters;
  v20[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  sub_2315144B0(v20, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2314A2910(v5, &qword_27DD5B008, &unk_23158A5C0);
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    v16 = (*(v9 + 32))(v14, v5, v6);
    MEMORY[0x28223BE20](v16);
    *(&v19 - 2) = v14;
    sub_231543A1C(sub_2314E90A4, (&v19 - 4), &unk_2846102A0);
    v15 = v17;
    (*(v9 + 8))(v14, v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v15;
}

uint64_t sub_2314E879C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18[-v4 - 8];
  v6 = sub_231585D34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v19[3] = &type metadata for SignalDefinitionParametersProvider;
  v19[4] = &protocol witness table for SignalDefinitionParametersProvider;
  v19[0] = swift_allocObject();
  memcpy((v19[0] + 16), a1, 0x50uLL);
  sub_2314E6CA4(a1, v18);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v19, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2314A2910(v5, &qword_27DD5B008, &unk_23158A5C0);
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = a1[3];
    v13 = (*(v7 + 32))(v10, v5, v6);
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &unk_2846102A0;
    }

    MEMORY[0x28223BE20](v13);
    *(&v17 - 2) = v10;

    sub_231543A1C(sub_2314E90A4, (&v17 - 4), v14);
    v11 = v15;

    (*(v7 + 8))(v10, v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v11;
}

uint64_t sub_2314E8A24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v3 = OUTLINED_FUNCTION_19(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26[-v6 - 8];
  v8 = sub_231585D34();
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v27[3] = &type metadata for SignalComputationContext;
  v27[4] = &protocol witness table for SignalComputationContext;
  v17 = swift_allocObject();
  v27[0] = v17;
  v18 = *(a1 + 16);
  v17[1] = *a1;
  v17[2] = v18;
  v17[3] = *(a1 + 32);
  sub_2314B5008(a1, v26);
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  sub_2315144B0(v27, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2314A2910(v7, &qword_27DD5B008, &unk_23158A5C0);
    v19 = MEMORY[0x277D84F90];
  }

  else
  {
    v20 = *(a1 + 40);
    v21 = (*(v11 + 32))(v16, v7, v8);
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = &unk_2846102A0;
    }

    MEMORY[0x28223BE20](v21);
    *(&v25 - 2) = v16;

    sub_231543A1C(sub_2314E9088, (&v25 - 4), v22);
    v19 = v23;

    (*(v11 + 8))(v16, v8);
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  return v19;
}

uint64_t sub_2314E8C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22[-1] - v8;
  v10 = sub_231585D34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[3] = a2;
  v22[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v22, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2314A2910(v9, &qword_27DD5B008, &unk_23158A5C0);
    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v17 = (*(a3 + 24))(a2, a3);
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = &unk_2846102A0;
    }

    MEMORY[0x28223BE20](v17);
    *(&v21 - 2) = v14;
    sub_231543A1C(sub_2314E90A4, (&v21 - 4), v18);
    v16 = v19;

    (*(v11 + 8))(v14, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  return v16;
}

uint64_t sub_2314E8F1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainFrequencySignal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314E8F80(uint64_t a1)
{
  v2 = type metadata accessor for DomainFrequencySignal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314E9004()
{
  result = sub_231585D34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2314E90D0()
{
  result = sub_231586964();
  qword_280D6CEF0 = result;
  unk_280D6CEF8 = v1;
  return result;
}

unint64_t DomainRecencyRankSignal.id.getter()
{
  v2 = *(v0 + *(type metadata accessor for DomainRecencyRankSignal() + 20));
  v3 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_280D6CEE8 != -1)
  {
    OUTLINED_FUNCTION_0_27();
  }

  MEMORY[0x23192FF80](qword_280D6CEF0, unk_280D6CEF8);
  return v3;
}

uint64_t type metadata accessor for DomainRecencyRankSignal()
{
  result = qword_280D6CED8;
  if (!qword_280D6CED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DomainRecencyRankSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314E9FD0(v3, v1, v2);
}

uint64_t static DomainRecencyRankSignal.instances(useCases:)(uint64_t a1)
{
  type metadata accessor for SignalDefinitionParametersProvider.Builder();
  swift_initStackObject();
  SignalDefinitionParametersProvider.Builder.init()();
  sub_2315393D4(a1);

  sub_23149A740(__src);

  memcpy(__dst, __src, sizeof(__dst));
  v2 = sub_2314E9B14(__dst);
  sub_2314A0D7C(__dst);
  return v2;
}

uint64_t static DomainRecencyRankSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_2314E9D8C(v3);
}

uint64_t sub_2314E92F0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for DomainRecencyRankSignal();
  a3[3] = v6;
  a3[4] = &protocol witness table for DomainRecencyRankSignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v8 = sub_231585D34();
  OUTLINED_FUNCTION_8(v8);
  result = (*(v9 + 16))(boxed_opaque_existential_1, a2);
  *(boxed_opaque_existential_1 + *(v6 + 20)) = v5;
  return result;
}

uint64_t static DomainRecencyRankSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611A40);
  *a1 = result;
  return result;
}

uint64_t DomainRecencyRankSignal.value(completion:)(void (*a1)(unint64_t *), uint64_t a2)
{
  v4 = v2;
  v54 = a2;
  v55 = a1;
  v5 = type metadata accessor for DomainRecencyRankSignal();
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  OUTLINED_FUNCTION_19(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  OUTLINED_FUNCTION_19(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v18);
  v20 = &v54 - v19;
  v21 = sub_231585D34();
  v22 = OUTLINED_FUNCTION_4_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26, v2);
  v28 = *(v5 + 20);
  LOBYTE(v57) = *(v2 + v28);
  v29 = DomainUseCase.intentTypes.getter();
  v30 = *(v2 + v28);
  if (v30 <= 0xD)
  {
    v31 = 1 << v30;
    if ((v31 & 0xA95) != 0)
    {
      v32 = MEMORY[0x277D5FFC0];
LABEL_6:
      v33 = *v32;
      v34 = sub_231585D74();
      OUTLINED_FUNCTION_8(v34);
      (*(v35 + 104))(v20, v33, v34);
      v36 = v20;
      v37 = 0;
      v38 = v34;
      goto LABEL_7;
    }

    if ((v31 & 0x3060) != 0)
    {
      v32 = MEMORY[0x277D5FFB8];
      goto LABEL_6;
    }
  }

  v38 = sub_231585D74();
  v36 = v20;
  v37 = 1;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v36, v37, 1, v38);
  if (*(v4 + v28) - 1 >= 0xB)
  {
    v39 = 2;
  }

  else
  {
    v39 = byte_23158A772[(*(v4 + v28) - 1)];
  }

  v40 = sub_231585AE4();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v40);
  v41 = DomainRecencyRankSignal.id.getter();
  v43 = sub_2314A0DE8(v26, v29, v20, v39, v14, v41, v42, MEMORY[0x277D84F90], 0);
  v44 = sub_23156D520(v43);

  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v45 = sub_231585FF4();
  __swift_project_value_buffer(v45, qword_280D72248);
  sub_2314EA258(v4, v3);

  v46 = sub_231585FE4();
  v47 = sub_2315865D4();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v59 = v49;
    *v48 = 136315394;
    v56 = *(v3 + *(v5 + 20));
    v57 = DomainUseCase.rawValue.getter();
    v58 = v50;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    if (qword_280D6CEE8 != -1)
    {
      OUTLINED_FUNCTION_0_27();
    }

    MEMORY[0x23192FF80](qword_280D6CEF0, unk_280D6CEF8);
    sub_2314EA2BC(v3);
    v51 = sub_2314A22E8();

    *(v48 + 4) = v51;
    *(v48 + 12) = 2080;
    sub_2315860E4();
    v52 = sub_2314A22E8();

    *(v48 + 14) = v52;
    _os_log_impl(&dword_231496000, v46, v47, "%s value: %s", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231931280](v49, -1, -1);
    MEMORY[0x231931280](v48, -1, -1);
  }

  else
  {

    sub_2314EA2BC(v3);
  }

  v57 = v44;
  LOBYTE(v58) = 1;
  v55(&v57);
  return sub_2314A5EEC(v57, v58);
}

uint64_t sub_2314E98D8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314E9FD0(v3, v1, v2);
}

uint64_t _s11SiriSignals23DomainRecencyRankSignalV9instancesSayAA0F9Providing_pGyFZ_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  OUTLINED_FUNCTION_19(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-1] - v5;
  v7 = sub_231585D34();
  v8 = OUTLINED_FUNCTION_4_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v17[3] = &type metadata for NoParameters;
  v17[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  sub_2315144B0(v17, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2314B5064(v6);
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    v14 = (*(v10 + 32))(v0, v6, v7);
    MEMORY[0x28223BE20](v14);
    *(&v16 - 2) = v0;
    v13 = sub_23150466C(sub_2314EA360, (&v16 - 4), &unk_284610350);
    (*(v10 + 8))(v0, v7);
  }

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v13;
}

uint64_t sub_2314E9B14(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17[-v4 - 8];
  v6 = sub_231585D34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v18[3] = &type metadata for SignalDefinitionParametersProvider;
  v18[4] = &protocol witness table for SignalDefinitionParametersProvider;
  v18[0] = swift_allocObject();
  memcpy((v18[0] + 16), a1, 0x50uLL);
  sub_2314E6CA4(a1, v17);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v18, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2314B5064(v5);
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = a1[3];
    v13 = (*(v7 + 32))(v10, v5, v6);
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &unk_284610350;
    }

    MEMORY[0x28223BE20](v13);
    *(&v16 - 2) = v10;

    v11 = sub_23150466C(sub_2314EA360, (&v16 - 4), v14);

    (*(v7 + 8))(v10, v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v11;
}

uint64_t sub_2314E9D8C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  OUTLINED_FUNCTION_19(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v6);
  v8 = &v23[-v7 - 8];
  v9 = sub_231585D34();
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v24[3] = &type metadata for SignalComputationContext;
  v24[4] = &protocol witness table for SignalComputationContext;
  v15 = swift_allocObject();
  v24[0] = v15;
  v16 = *(a1 + 16);
  v15[1] = *a1;
  v15[2] = v16;
  v15[3] = *(a1 + 32);
  sub_2314B5008(a1, v23);
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  sub_2315144B0(v24, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2314B5064(v8);
    v17 = MEMORY[0x277D84F90];
  }

  else
  {
    v18 = *(a1 + 40);
    v19 = (*(v12 + 32))(v1, v8, v9);
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = &unk_284610350;
    }

    MEMORY[0x28223BE20](v19);
    *(&v22 - 2) = v1;

    v17 = sub_23150466C(sub_2314EA340, (&v22 - 4), v20);

    (*(v12 + 8))(v1, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  return v17;
}

uint64_t sub_2314E9FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21[-1] - v8;
  v10 = sub_231585D34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[3] = a2;
  v21[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v21, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2314B5064(v9);
    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v17 = (*(a3 + 24))(a2, a3);
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = &unk_284610350;
    }

    MEMORY[0x28223BE20](v17);
    *(&v20 - 2) = v14;
    v16 = sub_23150466C(sub_2314EA360, (&v20 - 4), v18);

    (*(v11 + 8))(v14, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v16;
}

uint64_t sub_2314EA258(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainRecencyRankSignal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314EA2BC(uint64_t a1)
{
  v2 = type metadata accessor for DomainRecencyRankSignal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314EA38C()
{
  result = sub_231586964();
  qword_280D6D6B8 = result;
  unk_280D6D6C0 = v1;
  return result;
}

uint64_t static DomainRecencySignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314EB190(v3, v1, v2);
}

uint64_t static DomainRecencySignal.instances(useCases:)(uint64_t a1)
{
  type metadata accessor for SignalDefinitionParametersProvider.Builder();
  swift_initStackObject();
  SignalDefinitionParametersProvider.Builder.init()();
  sub_2315393D4(a1);

  sub_23149A740(__src);

  memcpy(__dst, __src, sizeof(__dst));
  v2 = sub_2314EACA8(__dst);
  memcpy(v6, __src, sizeof(v6));
  sub_2314A0D7C(v6);
  return v2;
}

uint64_t static DomainRecencySignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_2314EAF30(v3);
}

uint64_t sub_2314EA4E4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for DomainRecencySignal();
  a3[3] = v6;
  a3[4] = &protocol witness table for DomainRecencySignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v8 = sub_231585D34();
  OUTLINED_FUNCTION_8(v8);
  result = (*(v9 + 16))(boxed_opaque_existential_1, a2);
  *(boxed_opaque_existential_1 + *(v6 + 20)) = v5;
  v11 = (boxed_opaque_existential_1 + *(v6 + 24));
  *v11 = sub_2314E03E4;
  v11[1] = 0;
  return result;
}

uint64_t static DomainRecencySignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611A68);
  *a1 = result;
  return result;
}

void DomainRecencySignal.derive(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v2 + *(type metadata accessor for DomainRecencySignal() + 24);
  v7 = *v6;
  v8 = *(v6 + 8);
  switch(v5)
  {
    case 1:
      v38 = *(v6 + 8);
      swift_retain_n();
      v39 = sub_2314EA928(v4, v7);

      *a2 = v39;
      goto LABEL_36;
    case 2:
      v12 = OUTLINED_FUNCTION_6_1(*&v4);
      if (!(v14 ^ v15 | v13))
      {
        goto LABEL_42;
      }

      if (v12 <= -9.22337204e18)
      {
        goto LABEL_43;
      }

      if (v12 >= 9.22337204e18)
      {
        goto LABEL_44;
      }

      v16 = v12;
      if ((v12 & 0x8000000000000000) == 0)
      {

        v18 = v7(v17);

        if (v18 < v16)
        {
          v16 = -1;
        }

        else
        {
          v16 = v18 - v16;
        }
      }

      *a2 = v16;
      goto LABEL_36;
    case 3:
      v41 = *v6;
      v40 = v5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
      v19 = sub_231586AC4();
      v20 = v4;
      OUTLINED_FUNCTION_1_15();
      v22 = v21 >> 6;
      v43 = v23 + 64;
      swift_retain_n();
      v24 = 0;
      v42 = v4;
      if (a2)
      {
        goto LABEL_17;
      }

      break;
    default:
      if ((v4 & 0x8000000000000000) == 0)
      {
        v9 = *(v6 + 8);

        v11 = v7(v10);

        if (v11 < v4)
        {
          v4 = -1;
        }

        else
        {
          v4 = v11 - v4;
        }
      }

      *a2 = v4;
      goto LABEL_36;
  }

LABEL_18:
  v26 = v24;
  do
  {
    v24 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v24 >= v22)
    {

      LOBYTE(v5) = v40;
      *a2 = v19;
LABEL_36:
      *(a2 + 8) = v5;
      return;
    }

    ++v26;
  }

  while (!*(v20 + 8 * v24));
  OUTLINED_FUNCTION_9_8();
  while (1)
  {
    v27 = v25 | (v24 << 6);
    v28 = OUTLINED_FUNCTION_6_1(*(*(v4 + 56) + 8 * v27));
    if (!(v14 ^ v15 | v13))
    {
      break;
    }

    if (v28 <= -9.22337204e18)
    {
      goto LABEL_39;
    }

    if (v28 >= 9.22337204e18)
    {
      goto LABEL_40;
    }

    v29 = (*(v4 + 48) + 16 * v27);
    v30 = *v29;
    v31 = v29[1];
    v32 = v28;

    if ((v32 & 0x8000000000000000) == 0)
    {
      v34 = v41(v33);
      if (v34 < v32)
      {
        v32 = -1;
      }

      else
      {
        v32 = v34 - v32;
      }
    }

    *(v43 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v35 = (v19[6] + 16 * v27);
    *v35 = v30;
    v35[1] = v31;
    *(v19[7] + 8 * v27) = v32;
    v36 = v19[2];
    v15 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v15)
    {
      goto LABEL_41;
    }

    v19[2] = v37;
    v4 = v42;
    if (!a2)
    {
      goto LABEL_18;
    }

LABEL_17:
    OUTLINED_FUNCTION_7_11();
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_2314EA8CC(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314EB190(v3, v1, v2);
}

uint64_t sub_2314EA928(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B188, &unk_231588590);
  v4 = sub_231586AC4();
  OUTLINED_FUNCTION_1_15();
  v6 = v5 >> 6;
  v22 = v7 + 64;

  v9 = 0;
  if (v2)
  {
    while (1)
    {
      OUTLINED_FUNCTION_7_11();
LABEL_8:
      v12 = v10 | (v9 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      if ((v16 & 0x8000000000000000) == 0)
      {
        result = a2(result);
        if (result < v16)
        {
          v16 = -1;
        }

        else
        {
          v16 = result - v16;
        }
      }

      *(v22 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v17 = (v4[6] + 16 * v12);
      *v17 = v15;
      v17[1] = v14;
      *(v4[7] + 8 * v12) = v16;
      v18 = v4[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      v4[2] = v20;
      if (!v2)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v9;
    while (1)
    {
      v9 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v4;
      }

      ++v11;
      if (*(a1 + 8 * v9))
      {
        OUTLINED_FUNCTION_9_8();
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s11SiriSignals19DomainRecencySignalV9instancesSayAA0E9Providing_pGyFZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v1 = OUTLINED_FUNCTION_19(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19[-1] - v4;
  v6 = sub_231585D34();
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v19[3] = &type metadata for NoParameters;
  v19[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  sub_2315144B0(v19, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2314A2910(v5, &qword_27DD5B008, &unk_23158A5C0);
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    v16 = (*(v9 + 32))(v14, v5, v6);
    MEMORY[0x28223BE20](v16);
    *(&v18 - 2) = v14;
    v15 = sub_23150466C(sub_2314EB4F4, (&v18 - 4), &unk_2846101F8);
    (*(v9 + 8))(v14, v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v15;
}

uint64_t sub_2314EACA8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17[-v4 - 8];
  v6 = sub_231585D34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v18[3] = &type metadata for SignalDefinitionParametersProvider;
  v18[4] = &protocol witness table for SignalDefinitionParametersProvider;
  v18[0] = swift_allocObject();
  memcpy((v18[0] + 16), a1, 0x50uLL);
  sub_2314E6CA4(a1, v17);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v18, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2314A2910(v5, &qword_27DD5B008, &unk_23158A5C0);
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = a1[3];
    v13 = (*(v7 + 32))(v10, v5, v6);
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &unk_2846101F8;
    }

    MEMORY[0x28223BE20](v13);
    *(&v16 - 2) = v10;

    v11 = sub_23150466C(sub_2314EB4F4, (&v16 - 4), v14);

    (*(v7 + 8))(v10, v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v11;
}

uint64_t sub_2314EAF30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v3 = OUTLINED_FUNCTION_19(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25[-v6 - 8];
  v8 = sub_231585D34();
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v26[3] = &type metadata for SignalComputationContext;
  v26[4] = &protocol witness table for SignalComputationContext;
  v17 = swift_allocObject();
  v26[0] = v17;
  v18 = *(a1 + 16);
  v17[1] = *a1;
  v17[2] = v18;
  v17[3] = *(a1 + 32);
  sub_2314B5008(a1, v25);
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  sub_2315144B0(v26, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2314A2910(v7, &qword_27DD5B008, &unk_23158A5C0);
    v19 = MEMORY[0x277D84F90];
  }

  else
  {
    v20 = *(a1 + 40);
    v21 = (*(v11 + 32))(v16, v7, v8);
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = &unk_2846101F8;
    }

    MEMORY[0x28223BE20](v21);
    *(&v24 - 2) = v16;

    v19 = sub_23150466C(sub_2314EB4D4, (&v24 - 4), v22);

    (*(v11 + 8))(v16, v8);
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  return v19;
}

uint64_t sub_2314EB190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21[-1] - v8;
  v10 = sub_231585D34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[3] = a2;
  v21[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v21, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2314A2910(v9, &qword_27DD5B008, &unk_23158A5C0);
    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v17 = (*(a3 + 24))(a2, a3);
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = &unk_2846101F8;
    }

    MEMORY[0x28223BE20](v17);
    *(&v20 - 2) = v14;
    v16 = sub_23150466C(sub_2314EB4F4, (&v20 - 4), v18);

    (*(v11 + 8))(v14, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v16;
}

uint64_t sub_2314EB450()
{
  result = sub_231585D34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2314EB520()
{
  result = sub_231586964();
  qword_27DD5B4F8 = result;
  unk_27DD5B500 = v1;
  return result;
}

uint64_t static DomainRequestByHandleSignal.signalName.getter()
{
  if (qword_27DD5AD98 != -1)
  {
    OUTLINED_FUNCTION_0_29();
  }

  v0 = qword_27DD5B4F8;

  return v0;
}

uint64_t DomainRequestByHandleSignal.id.getter()
{
  if (qword_27DD5AD98 != -1)
  {
    OUTLINED_FUNCTION_0_29();
  }

  v0 = qword_27DD5B4F8;

  return v0;
}

uint64_t static DomainRequestByHandleSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314EB8B4(v3, v1, v2);
}

uint64_t static DomainRequestByHandleSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611A90);
  *a1 = result;
  return result;
}

uint64_t DomainRequestByHandleSignal.value(completion:)(uint64_t (*a1)(uint64_t **))
{
  v3 = *v1;
  v4 = INIntent.isRequestByHandleType()();
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v5 = sub_231585FF4();
  __swift_project_value_buffer(v5, qword_280D72248);
  v6 = v3;
  v7 = sub_231585FE4();
  v8 = sub_2315865D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315394;
    if (qword_27DD5AD98 != -1)
    {
      OUTLINED_FUNCTION_0_29();
    }

    v11 = sub_2314A22E8();

    *(v9 + 4) = v11;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v4;
    _os_log_impl(&dword_231496000, v7, v8, "%s value: %ld", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x231931280](v10, -1, -1);
    MEMORY[0x231931280](v9, -1, -1);
  }

  v13 = v4;
  v14 = 0;
  return a1(&v13);
}

uint64_t sub_2314EB854(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314EB8B4(v3, v1, v2);
}

uint64_t sub_2314EB8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  v9 = (*(a3 + 48))(a2, a3);
  if (v9)
  {
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_231588340;
    *(v11 + 56) = &type metadata for DomainRequestByHandleSignal;
    *(v11 + 64) = &protocol witness table for DomainRequestByHandleSignal;
    *(v11 + 32) = v10;
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v12 = sub_231585FF4();
    __swift_project_value_buffer(v12, qword_280D72248);
    v13 = sub_231585FE4();
    v14 = sub_2315865E4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 136315138;
      v19[0] = &type metadata for DomainRequestByHandleSignal;
      v19[1] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B508, &unk_23158A850);
      sub_231586204();
      v17 = sub_2314A22E8();

      *(v15 + 4) = v17;
      _os_log_impl(&dword_231496000, v13, v14, "%s no intent given", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x231931280](v16, -1, -1);
      MEMORY[0x231931280](v15, -1, -1);
    }

    v11 = MEMORY[0x277D84F90];
  }

  (*(v5 + 8))(v8, a2);
  return v11;
}

uint64_t sub_2314EBB5C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2314EBB9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2314EBBFC()
{
  result = sub_231586964();
  qword_27DD5B510 = result;
  *algn_27DD5B518 = v1;
  return result;
}

uint64_t static DomainRequestByLabelSignal.signalName.getter()
{
  if (qword_27DD5ADA0 != -1)
  {
    OUTLINED_FUNCTION_0_30();
  }

  v0 = qword_27DD5B510;

  return v0;
}

uint64_t DomainRequestByLabelSignal.id.getter()
{
  if (qword_27DD5ADA0 != -1)
  {
    OUTLINED_FUNCTION_0_30();
  }

  v0 = qword_27DD5B510;

  return v0;
}

uint64_t static DomainRequestByLabelSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314EBF90(v3, v1, v2);
}

uint64_t static DomainRequestByLabelSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611AB8);
  *a1 = result;
  return result;
}

uint64_t DomainRequestByLabelSignal.value(completion:)(uint64_t (*a1)(uint64_t **))
{
  v3 = *v1;
  v4 = INIntent.isRequestByContactLabel()();
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v5 = sub_231585FF4();
  __swift_project_value_buffer(v5, qword_280D72248);
  v6 = v3;
  v7 = sub_231585FE4();
  v8 = sub_2315865D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315394;
    if (qword_27DD5ADA0 != -1)
    {
      OUTLINED_FUNCTION_0_30();
    }

    v11 = sub_2314A22E8();

    *(v9 + 4) = v11;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v4;
    _os_log_impl(&dword_231496000, v7, v8, "%s value: %ld", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x231931280](v10, -1, -1);
    MEMORY[0x231931280](v9, -1, -1);
  }

  v13 = v4;
  v14 = 0;
  return a1(&v13);
}

uint64_t sub_2314EBF30(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314EBF90(v3, v1, v2);
}

uint64_t sub_2314EBF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  v9 = (*(a3 + 48))(a2, a3);
  if (v9)
  {
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_231588340;
    *(v11 + 56) = &type metadata for DomainRequestByLabelSignal;
    *(v11 + 64) = &protocol witness table for DomainRequestByLabelSignal;
    *(v11 + 32) = v10;
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v12 = sub_231585FF4();
    __swift_project_value_buffer(v12, qword_280D72248);
    v13 = sub_231585FE4();
    v14 = sub_2315865E4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 136315138;
      v19[0] = &type metadata for DomainRequestByLabelSignal;
      v19[1] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B520, &unk_23158A8D0);
      sub_231586204();
      v17 = sub_2314A22E8();

      *(v15 + 4) = v17;
      _os_log_impl(&dword_231496000, v13, v14, "%s no intent given", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x231931280](v16, -1, -1);
      MEMORY[0x231931280](v15, -1, -1);
    }

    v11 = MEMORY[0x277D84F90];
  }

  (*(v5 + 8))(v8, a2);
  return v11;
}

uint64_t sub_2314EC250()
{
  result = sub_231586964();
  qword_280D6CB20 = result;
  *algn_280D6CB28 = v1;
  return result;
}

uint64_t static DomainTaskAbandonmentSignal.signalName.getter()
{
  if (qword_280D6CB18 != -1)
  {
    OUTLINED_FUNCTION_0_31();
  }

  v0 = qword_280D6CB20;

  return v0;
}

uint64_t DomainTaskAbandonmentSignal.id.getter()
{
  v1 = *(v0 + 8);
  v4[8] = 0;
  *v4 = *(v0 + 9);
  v2 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](v2);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_280D6CB18 != -1)
  {
    OUTLINED_FUNCTION_0_31();
  }

  MEMORY[0x23192FF80](qword_280D6CB20, *algn_280D6CB28);
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  return *&v4[1];
}

char *static DomainTaskAbandonmentSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314EDCB8(v3, v1, v2);
}

uint64_t static DomainTaskAbandonmentSignal.instances(useCases:)(uint64_t a1)
{
  v4 = MEMORY[0x277D84F90];
  v5 = 0u;
  v6 = 0u;
  v7 = a1;

  sub_2314EDACC(&v4);
  v2 = v1;
  sub_2314C1D18(&v4);
  return v2;
}

void static DomainTaskAbandonmentSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v2[0] = *a1;
  v2[1] = v1;
  v2[2] = a1[2];
  sub_2314EDACC(v2);
}

uint64_t static DomainTaskAbandonmentSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611B30);
  *a1 = result;
  return result;
}

void DomainTaskAbandonmentSignal.value(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 9);
  v8 = swift_allocObject();
  type metadata accessor for Aggregation();
  *(v8 + 16) = sub_2315860F4();
  v9 = [v5 publisher];
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v5;
  *(v10 + 32) = v6;
  *(v10 + 33) = v7;
  *(v10 + 40) = a1;
  *(v10 + 48) = a2;
  v21 = sub_2314EDF68;
  v22 = v10;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_2314B901C;
  v20 = &block_descriptor_6;
  v11 = _Block_copy(&v17);

  v12 = v5;

  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v6;
  *(v13 + 25) = v7;
  *(v13 + 32) = v8;
  v21 = sub_2314EDF78;
  v22 = v13;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_2314B8374;
  v20 = &block_descriptor_11;
  v14 = _Block_copy(&v17);

  v15 = v12;

  v16 = [v9 sinkWithCompletion:v11 receiveInput:v14];
  _Block_release(v14);
  _Block_release(v11);
}

uint64_t sub_2314EC714(uint64_t a1, uint64_t a2, void *a3, int a4, void (*a5)(uint64_t *))
{
  swift_beginAccess();
  v9 = *(a2 + 16);

  v10 = sub_2314D7854(a4, v9);

  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v11 = sub_231585FF4();
  __swift_project_value_buffer(v11, qword_280D72248);
  v12 = a3;

  v13 = sub_231585FE4();
  v14 = sub_2315865D4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 136315394;
    v21 = 0;
    v22 = 0xE000000000000000;
    v23 = v16;
    v17 = DomainUseCase.rawValue.getter();
    MEMORY[0x23192FF80](v17);

    MEMORY[0x23192FF80](46, 0xE100000000000000);
    if (qword_280D6CB18 != -1)
    {
      swift_once();
    }

    MEMORY[0x23192FF80](qword_280D6CB20, *algn_280D6CB28);
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    sub_231586A54();
    v18 = sub_2314A22E8();

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    sub_2315860E4();
    v19 = sub_2314A22E8();

    *(v15 + 14) = v19;
    _os_log_impl(&dword_231496000, v13, v14, "%s value: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231931280](v16, -1, -1);
    MEMORY[0x231931280](v15, -1, -1);
  }

  v21 = v10;
  LOBYTE(v22) = 1;
  a5(&v21);
  return sub_2314A5EEC(v21, v22);
}

void sub_2314ECA00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x231930B10]();
  v7 = [a1 eventBody];
  swift_beginAccess();
  sub_2314ECAB0(v7, (a4 + 16));
  swift_endAccess();

  objc_autoreleasePoolPop(v6);
}

void sub_2314ECAB0(void *a1, uint64_t *a2)
{
  v5 = sub_231585884();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  v10 = *v2;
  v11 = *(v2 + 8);
  v12 = *(v2 + 9);
  v41 = a1;
  v13 = sub_2314ED8D8(v41, &selRef_appPattern);
  if (!v14)
  {
    goto LABEL_23;
  }

  v15 = v13;
  v16 = v14;
  v17 = [v41 engagementUnderstandingFeatures];
  if (!v17)
  {

LABEL_28:

    return;
  }

  v40 = v17;
  v18 = sub_2314ED8D8(v41, &selRef_taskType);
  if (!v19)
  {

    v22 = v40;
LABEL_24:

    return;
  }

  v20 = 0xD000000000000023;
  if (v12 == 7)
  {
    v21 = "all.StartCallIntent";
    v20 = 0xD000000000000029;
    goto LABEL_11;
  }

  if (v12)
  {

    goto LABEL_28;
  }

  v21 = "";
LABEL_11:
  v38 = a2;
  v39 = v15;
  if (v18 == v20 && v19 == (v21 | 0x8000000000000000))
  {
  }

  else
  {
    v24 = sub_231586C44();

    if ((v24 & 1) == 0)
    {
LABEL_22:

      goto LABEL_23;
    }
  }

  v42 = v10;
  v43 = v11;
  v44 = v12;
  if (!sub_2314ECF3C(v40))
  {
    goto LABEL_22;
  }

  v42 = v10;
  v43 = v11;
  v44 = v12;
  v25 = [v41 pseEvents];
  sub_2314A207C(0, &qword_27DD5B528, 0x277CF1550);
  v26 = sub_231586384();

  LOBYTE(v25) = sub_2314ECFA0(v26, v39, v16);

  if ((v25 & 1) == 0)
  {
    goto LABEL_22;
  }

  v42 = v10;
  v43 = v11;
  v44 = v12;
  v27 = [v41 pseEvents];
  v28 = sub_231586384();

  sub_2314ED0E0(v28);
  v30 = v29;

  if (v30)
  {

LABEL_23:
    v22 = v41;
    goto LABEL_24;
  }

  v31 = v38;
  v32 = *v38;
  if (*(*v38 + 16) && (v33 = sub_23149C888(v39, v16), (v34 & 1) != 0))
  {
    v35 = *(*(v32 + 56) + 8 * v33);
  }

  else
  {
    sub_2314B676C();
    v36 = sub_2315860F4();
    type metadata accessor for Aggregation();
    swift_allocObject();
    sub_2314B53E8(v36);
  }

  sub_231585774();
  sub_2314B56E8();
  (*(v6 + 8))(v9, v5);

  v37 = *v31;
  swift_isUniquelyReferenced_nonNull_native();
  v42 = *v31;
  sub_2315760F4();

  *v31 = v42;
}

uint64_t sub_2314ECFA0(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 9);
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_231586864())
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x231930660](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v11 = *(a1 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 & 1) != 0 && (sub_2314ED1C8(v11))
      {

        return 1;
      }

      sub_2314ED54C(v12, a2, a3);
      v10 = v14;

      ++v9;
      if (v13 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

void sub_2314ED0E0(uint64_t a1)
{
  v2 = sub_2314A7080(a1);
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x231930660](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    if ([v4 hasDonatedTimestamp])
    {
      [v5 donatedTimestamp];

      return;
    }
  }
}

uint64_t sub_2314ED1C8(void *a1)
{
  v2 = a1;
  v3 = *(v1 + 9);
  v4 = [a1 pseContents];
  sub_2314A207C(0, &qword_27DD5B530, 0x277CF1558);
  v5 = sub_231586384();

  result = sub_2314A7080(v5);
  if (result)
  {
    v7 = result;
    if (result >= 1)
    {
      v38 = v2;
      v8 = 0;
      v40 = 0;
      v9 = 0;
      v10 = 0xEE00656D614E6570;
      v11 = 0xED00006972695379;
      v41 = v5 & 0xC000000000000001;
      v39 = v5;
      while (1)
      {
        if (v41)
        {
          v12 = MEMORY[0x231930660](v9, v5);
        }

        else
        {
          v12 = *(v5 + 8 * v9 + 32);
        }

        v13 = v12;
        v14 = sub_2314ED8D8(v12, &selRef_key);
        if (v15)
        {
          if (v14 == 0x7954746E65746E69 && v15 == v10)
          {

LABEL_15:
            v18 = sub_2314ED8D8(v13, &selRef_value);
            if (v3 == 7)
            {
              v20 = 0xD000000000000029;
              v21 = "all.StartCallIntent";
LABEL_19:
              if (!v19)
              {
                goto LABEL_26;
              }

              if (v18 != v20 || v19 != (v21 | 0x8000000000000000))
              {
                v23 = v7;
                v24 = v8;
                v25 = v11;
                v26 = v3;
                v27 = v10;
                v28 = sub_231586C44();

                v40 |= v28;
                v10 = v27;
                v3 = v26;
                v11 = v25;
                v8 = v24;
                v7 = v23;
                v5 = v39;
                goto LABEL_29;
              }
            }

            else
            {
              if (!v3)
              {
                v20 = 0xD000000000000023;
                v21 = "";
                goto LABEL_19;
              }

              if (v19)
              {
LABEL_26:

                goto LABEL_29;
              }
            }

            v40 = 1;
            goto LABEL_29;
          }

          v17 = sub_231586C44();

          if (v17)
          {
            goto LABEL_15;
          }
        }

LABEL_29:
        v29 = sub_2314ED8D8(v13, &selRef_key);
        if (!v30)
        {
          goto LABEL_44;
        }

        if (v29 == 0x42646574616E6F64 && v30 == v11)
        {
        }

        else
        {
          v32 = sub_231586C44();

          if ((v32 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        v33 = sub_2314ED8D8(v13, &selRef_value);
        if (!v34)
        {
LABEL_44:

          goto LABEL_47;
        }

        if (v33 == 0x65736C6166 && v34 == 0xE500000000000000)
        {
        }

        else
        {
          v36 = sub_231586C44();

          if ((v36 & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        v8 = 1;
LABEL_47:
        if (v7 == ++v9)
        {

          v37 = v40 & v8;
          v2 = v38;
          return [v2 isPostSiriEngagement] & v37;
        }
      }
    }

    __break(1u);
  }

  else
  {

    v37 = 0;
    return [v2 isPostSiriEngagement] & v37;
  }

  return result;
}

void sub_2314ED54C(void *a1, uint64_t a2, unint64_t a3)
{
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 9);
  v10 = sub_2314ED8D8(a1, &selRef_domain);
  if (v11)
  {
    if (v10 == 0x74756F68636E7550 && v11 == 0xE800000000000000)
    {
    }

    else
    {
      v13 = sub_231586C44();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    if ([a1 isPostSiriEngagement])
    {
      v14 = [a1 pseContents];
      sub_2314A207C(0, &qword_27DD5B530, 0x277CF1558);
      v15 = sub_231586384();

      v16 = sub_2314A7080(v15);
      if (v16)
      {
        v17 = v16;
        v28 = a2;
        v18 = 0;
        while (1)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x231930660](v18, v15);
          }

          else
          {
            if (v18 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v19 = *(v15 + 8 * v18 + 32);
          }

          v20 = v19;
          v21 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          v22 = sub_2314ED8D8(v19, &selRef_key);
          if (v23)
          {
            if (v22 == 0x6449656C646E7562 && v23 == 0xE800000000000000)
            {

LABEL_27:

              v26 = sub_2314ED8D8(v20, &selRef_value);
              sub_2314ED7BC(v28, a3, v26, v27);

              return;
            }

            v25 = sub_231586C44();

            if (v25)
            {
              goto LABEL_27;
            }
          }

          ++v18;
          if (v21 == v17)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
      }

      else
      {
LABEL_24:
      }
    }
  }
}

uint64_t sub_2314ED7BC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8 && (v5 == a1 ? (v9 = v6 == a2) : (v9 = 0), !v9))
  {
    v10 = sub_231586C44() ^ 1;
  }

  else
  {
LABEL_18:
    v10 = 0;
  }

  return v10 & 1;
}

char *sub_2314ED878(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314EDCB8(v3, v1, v2);
}

uint64_t sub_2314ED8D8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2315861A4();

  return v4;
}

uint64_t _s11SiriSignals27DomainTaskAbandonmentSignalV9instancesSayAA0F9Providing_pGyFZ_0()
{
  v0 = 0;
  v1 = 0;
  v15 = MEMORY[0x277D84F90];
  do
  {
    v10 = v0;
    v2 = *(&unk_2846103F8 + v1 + 32);
    v14 = MEMORY[0x277D84F90];
    sub_23152D5B8();
    v3 = 0;
    v4 = v14;
    do
    {
      v5 = byte_284610638[v3 + 32];
      v6 = [BiomeLibrary() Siri];
      swift_unknownObjectRelease();
      v7 = [v6 PostSiriEngagement];
      swift_unknownObjectRelease();
      v14 = v4;
      v8 = *(v4 + 16);
      if (v8 >= *(v4 + 24) >> 1)
      {
        sub_23152D5B8();
        v4 = v14;
      }

      ++v3;
      v12 = &type metadata for DomainTaskAbandonmentSignal;
      v13 = &protocol witness table for DomainTaskAbandonmentSignal;
      *&v11 = v7;
      BYTE8(v11) = v5;
      BYTE9(v11) = v2;
      *(v4 + 16) = v8 + 1;
      sub_23149FD3C(&v11, v4 + 40 * v8 + 32);
    }

    while (v3 != 8);
    sub_23152C7FC(v4);
    v0 = 1;
    v1 = 1u;
  }

  while ((v10 & 1) == 0);
  return v15;
}

void sub_2314EDACC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = &unk_2846103F8;
  }

  v19 = MEMORY[0x277D84F90];
  v13 = *(v2 + 2);
  if (v13)
  {
    v11 = v2 + 32;

    v3 = 0;
    v12 = v2;
    while (v3 < *(v2 + 2))
    {
      v14 = v3;
      v4 = v11[v3];
      v18 = MEMORY[0x277D84F90];
      sub_23152D5B8();
      v5 = 0;
      v6 = v18;
      do
      {
        v7 = byte_284611B08[v5 + 32];
        v8 = [BiomeLibrary() Siri];
        swift_unknownObjectRelease();
        v9 = [v8 PostSiriEngagement];
        swift_unknownObjectRelease();
        v18 = v6;
        v10 = *(v6 + 16);
        if (v10 >= *(v6 + 24) >> 1)
        {
          sub_23152D5B8();
          v6 = v18;
        }

        ++v5;
        v16 = &type metadata for DomainTaskAbandonmentSignal;
        v17 = &protocol witness table for DomainTaskAbandonmentSignal;
        *&v15 = v9;
        BYTE8(v15) = v7;
        BYTE9(v15) = v4;
        *(v6 + 16) = v10 + 1;
        sub_23149FD3C(&v15, v6 + 40 * v10 + 32);
      }

      while (v5 != 8);
      v3 = v14 + 1;
      sub_23152C7FC(v6);
      v2 = v12;
      if (v14 + 1 == v13)
      {

        return;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

char *sub_2314EDCB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v8;
  (*(v8 + 16))(v7);
  v9 = *(a3 + 24);
  v21 = v7;
  result = v9(v4, a3);
  if (!result)
  {
    result = &unk_2846103F8;
  }

  v31 = MEMORY[0x277D84F90];
  v25 = *(result + 2);
  if (v25)
  {
    v20 = v4;
    v11 = 0;
    v23 = result + 32;
    v24 = result;
    while (v11 < *(result + 2))
    {
      v26 = v11;
      v12 = v23[v11];
      v30 = MEMORY[0x277D84F90];
      sub_23152D5B8();
      v13 = 0;
      v14 = v30;
      do
      {
        v15 = byte_284610420[v13 + 32];
        v16 = [BiomeLibrary() Siri];
        swift_unknownObjectRelease();
        v17 = [v16 PostSiriEngagement];
        swift_unknownObjectRelease();
        v30 = v14;
        v18 = *(v14 + 16);
        if (v18 >= *(v14 + 24) >> 1)
        {
          sub_23152D5B8();
          v14 = v30;
        }

        ++v13;
        v28 = &type metadata for DomainTaskAbandonmentSignal;
        v29 = &protocol witness table for DomainTaskAbandonmentSignal;
        *&v27 = v17;
        BYTE8(v27) = v15;
        BYTE9(v27) = v12;
        *(v14 + 16) = v18 + 1;
        sub_23149FD3C(&v27, v14 + 40 * v18 + 32);
      }

      while (v13 != 8);
      v11 = v26 + 1;
      sub_23152C7FC(v14);
      result = v24;
      if (v11 == v25)
      {

        v19 = v31;
        v4 = v20;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
LABEL_13:
    (*(v22 + 8))(v21, v4);
    return v19;
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_2314EDF9C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 10))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2314EDFDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2314EE048()
{
  result = sub_231586964();
  qword_27DD5B538 = result;
  unk_27DD5B540 = v1;
  return result;
}

uint64_t static DomainToContactAffinityScoreByIntentSignal.signalName.getter()
{
  if (qword_27DD5ADB0 != -1)
  {
    OUTLINED_FUNCTION_0_32();
  }

  v0 = qword_27DD5B538;

  return v0;
}

unint64_t DomainToContactAffinityScoreByIntentSignal.id.getter()
{
  v2 = *(v0 + *(type metadata accessor for DomainToContactAffinityScoreByIntentSignal() + 32));
  v3 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_27DD5ADB0 != -1)
  {
    OUTLINED_FUNCTION_0_32();
  }

  MEMORY[0x23192FF80](qword_27DD5B538, unk_27DD5B540);
  return v3;
}

uint64_t type metadata accessor for DomainToContactAffinityScoreByIntentSignal()
{
  result = qword_27DD5B550;
  if (!qword_27DD5B550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DomainToContactAffinityScoreByIntentSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314EEBD8(v3, v1, v2);
}

uint64_t sub_2314EE1EC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v29 = a3;
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v28 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v15 = &v26[-v14];
  v27 = *a1;
  v16 = *(v10 + 16);
  v16(&v26[-v14], a2, v9);
  v17 = a4[3];
  v18 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v17);
  v19 = (*(v18 + 8))(v17, v18);
  v20 = type metadata accessor for DomainToContactAffinityScoreByIntentSignal();
  a5[3] = v20;
  a5[4] = &protocol witness table for DomainToContactAffinityScoreByIntentSignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  v16(boxed_opaque_existential_1, v15, v9);
  *(boxed_opaque_existential_1 + v20[8]) = v27;
  v22 = v29;
  *(boxed_opaque_existential_1 + v20[5]) = v29;
  *(boxed_opaque_existential_1 + v20[6]) = v19;
  v16(v28, boxed_opaque_existential_1, v9);
  v23 = v20[7];
  v24 = v22;
  sub_231585A74();
  return (*(v10 + 8))(v15, v9);
}

uint64_t static DomainToContactAffinityScoreByIntentSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611B58);
  *a1 = result;
  return result;
}

uint64_t DomainToContactAffinityScoreByIntentSignal.value(completion:)(void (*a1)(unint64_t *), uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v46 = a1;
  v4 = type metadata accessor for DomainToContactAffinityScoreByIntentSignal();
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v40 - v11;
  sub_231585BA4();
  v43 = sub_2315860F4();
  v42 = sub_2315860F4();
  v13 = *(v2 + *(v4 + 24));
  v47 = v4;
  v14 = *(v4 + 32);
  v15 = *(v2 + v14);
  v54 = 0xD000000000000013;
  v55 = 0x8000000231591960;
  v51 = &v54;
  v16 = sub_2314E62A8(sub_2314BB954, v50, v13);
  v54 = 0xD000000000000017;
  v55 = 0x800000023158F940;
  v49 = &v54;
  v17 = sub_2314E62A8(sub_2314BB974, v48, v13);
  if (v16 && v15 - 7 < 7 || v17 && v15 < 7)
  {
  }

  v18 = *(v3 + v47[5]);
  LOBYTE(v54) = v15;
  DomainUseCase.intentTypes.getter();
  if (v15 <= 0xD)
  {
    if (((1 << v15) & 0xA95) != 0)
    {
      v19 = MEMORY[0x277D5FFC0];
LABEL_9:
      v20 = *v19;
      v21 = sub_231585D74();
      OUTLINED_FUNCTION_8(v21);
      (*(v22 + 104))(v12, v20, v21);
      v23 = v12;
      v24 = 0;
      v25 = v21;
      goto LABEL_10;
    }

    if (((1 << v15) & 0x3060) != 0)
    {
      v19 = MEMORY[0x277D5FFB8];
      goto LABEL_9;
    }
  }

  v25 = sub_231585D74();
  v23 = v12;
  v24 = 1;
LABEL_10:
  __swift_storeEnumTagSinglePayload(v23, v24, 1, v25);
  v26 = *(v3 + v14) - 1;
  v41 = v13;
  if (v26 < 0xB)
  {
    v27 = byte_23158A9C2[v26];
  }

  v28 = v44;
  v29 = v3 + v47[7];
  v30 = sub_231585A34();
  sub_2314A2910(v12, &qword_27DD5B4C8, &unk_23158A6B0);

  v31 = sub_2314BB35C(v30, v41);

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v32 = sub_231585FF4();
  __swift_project_value_buffer(v32, qword_280D72248);
  sub_2314EF198(v3, v28);
  v33 = sub_231585FE4();
  v34 = sub_2315865D4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v35 = 136315394;
    v52 = *(v28 + v47[8]);
    v54 = DomainUseCase.rawValue.getter();
    v55 = v36;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    if (qword_27DD5ADB0 != -1)
    {
      OUTLINED_FUNCTION_0_32();
    }

    MEMORY[0x23192FF80](qword_27DD5B538, unk_27DD5B540);
    sub_2314EF1FC(v28);
    v37 = sub_2314A22E8();

    *(v35 + 4) = v37;
    *(v35 + 12) = 2080;

    sub_2315860E4();

    v38 = sub_2314A22E8();

    *(v35 + 14) = v38;
    _os_log_impl(&dword_231496000, v33, v34, "%s value: %s", v35, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_2314EF1FC(v28);
  }

  v54 = v31;
  LOBYTE(v55) = 3;

  v46(&v54);
  sub_2314A5EEC(v54, v55);
}

uint64_t sub_2314EEB78(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314EEBD8(v3, v1, v2);
}

uint64_t sub_2314EEBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v42 - v8;
  v10 = sub_231585D34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a2;
  v47 = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v45, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2314A2910(v9, &qword_27DD5B008, &unk_23158A5C0);
LABEL_22:
    v28 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  (*(v11 + 32))(v14, v9, v10);
  v16 = v46;
  v17 = v47;
  __swift_project_boxed_opaque_existential_1(v45, v46);
  v18 = (*(v17 + 24))(v16, v17);
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = &unk_28460FF58;
  }

  v20 = v46;
  v21 = v47;
  __swift_project_boxed_opaque_existential_1(v45, v46);
  v22 = (*(v21 + 48))(v20, v21);
  if (!v22)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v29 = sub_231585FF4();
    __swift_project_value_buffer(v29, qword_280D72248);
    v30 = sub_231585FE4();
    v31 = sub_2315865E4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44 = v33;
      *v32 = 136315138;
      v43 = type metadata accessor for DomainToContactAffinityScoreByIntentSignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B570, &unk_23158DE20);
      sub_231586204();
      v34 = sub_2314A22E8();

      *(v32 + 4) = v34;
      _os_log_impl(&dword_231496000, v30, v31, "%s no intent given", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x231931280](v33, -1, -1);
      MEMORY[0x231931280](v32, -1, -1);
    }

    goto LABEL_21;
  }

  v23 = v22;
  v24 = v46;
  v25 = v47;
  __swift_project_boxed_opaque_existential_1(v45, v46);
  v26 = *((*(v25 + 8))(v24, v25) + 16);

  if (!v26)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v35 = sub_231585FF4();
    __swift_project_value_buffer(v35, qword_280D72248);
    v36 = sub_231585FE4();
    v37 = sub_2315865E4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v44 = v39;
      *v38 = 136315138;
      v43 = type metadata accessor for DomainToContactAffinityScoreByIntentSignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B570, &unk_23158DE20);
      sub_231586204();
      v40 = sub_2314A22E8();

      *(v38 + 4) = v40;
      _os_log_impl(&dword_231496000, v36, v37, "%s no bundleIds given", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x231931280](v39, -1, -1);
      MEMORY[0x231931280](v38, -1, -1);
    }

LABEL_21:
    (*(v11 + 8))(v14, v10);
    goto LABEL_22;
  }

  MEMORY[0x28223BE20](v27);
  *(&v42 - 4) = v14;
  *(&v42 - 3) = v23;
  *(&v42 - 2) = v45;
  v28 = sub_2314DCD00(sub_2314EF3D0, (&v42 - 6), v19);

  (*(v11 + 8))(v14, v10);
LABEL_23:
  __swift_destroy_boxed_opaque_existential_1(v45);
  return v28;
}

uint64_t sub_2314EF198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainToContactAffinityScoreByIntentSignal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314EF1FC(uint64_t a1)
{
  v2 = type metadata accessor for DomainToContactAffinityScoreByIntentSignal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2314EF280()
{
  sub_231585D34();
  if (v0 <= 0x3F)
  {
    sub_2314EF33C();
    if (v1 <= 0x3F)
    {
      sub_2314EF380();
      if (v2 <= 0x3F)
      {
        sub_231585A84();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2314EF33C()
{
  result = qword_27DD5B560;
  if (!qword_27DD5B560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD5B560);
  }

  return result;
}

void sub_2314EF380()
{
  if (!qword_27DD5B568)
  {
    v0 = sub_231586454();
    if (!v1)
    {
      atomic_store(v0, &qword_27DD5B568);
    }
  }
}

uint64_t sub_2314EF404()
{
  result = sub_231586964();
  qword_27DD5B578 = result;
  unk_27DD5B580 = v1;
  return result;
}

uint64_t static DomainToContactAffinityScoreByNameSignal.signalName.getter()
{
  if (qword_27DD5ADB8 != -1)
  {
    OUTLINED_FUNCTION_1_16();
  }

  v0 = qword_27DD5B578;

  return v0;
}

unint64_t DomainToContactAffinityScoreByNameSignal.id.getter()
{
  v2 = *(v0 + *(type metadata accessor for DomainToContactAffinityScoreByNameSignal() + 20));
  v3 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_27DD5ADB8 != -1)
  {
    OUTLINED_FUNCTION_1_16();
  }

  MEMORY[0x23192FF80](qword_27DD5B578, unk_27DD5B580);
  return v3;
}

uint64_t type metadata accessor for DomainToContactAffinityScoreByNameSignal()
{
  result = qword_27DD5B5A0;
  if (!qword_27DD5B5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DomainToContactAffinityScoreByNameSignal.entityID.getter()
{
  v1 = (v0 + *(type metadata accessor for DomainToContactAffinityScoreByNameSignal() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t static DomainToContactAffinityScoreByNameSignal.instances(createdFor:useCases:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = MEMORY[0x277D84F90];
  v24[1] = a1;
  v24[2] = a2;
  v24[3] = 0;
  v24[4] = 0;
  v24[5] = a3;

  v3 = sub_2314F1D48(v24);
  sub_2314C1D18(v24);
  v4 = *(v3 + 16);
  if (!v4)
  {

    return MEMORY[0x277D84F90];
  }

  v18 = v3;
  v5 = v3 + 32;
  v6 = MEMORY[0x277D84F90];
  do
  {
    sub_2314A2C74(v5, v23);
    sub_23149FD3C(v23, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B590, &qword_23158A9D8);
    if ((OUTLINED_FUNCTION_26_1() & 1) == 0)
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
LABEL_11:
      sub_2314A2910(&v19, &qword_27DD5B598, &qword_23158A9E0);
      goto LABEL_12;
    }

    if (!*(&v20 + 1))
    {
      goto LABEL_11;
    }

    sub_23149FD3C(&v19, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_22_5();
      OUTLINED_FUNCTION_39_0();
      v6 = isUniquelyReferenced_nonNull_native;
    }

    v15 = *(v6 + 24);
    if (*(v6 + 16) >= v15 >> 1)
    {
      OUTLINED_FUNCTION_24_2(v15);
      OUTLINED_FUNCTION_39_0();
      v6 = isUniquelyReferenced_nonNull_native;
    }

    OUTLINED_FUNCTION_25_0(isUniquelyReferenced_nonNull_native, v8, v9, v10, v11, v12, v13, v14, v17, v18, v19, *(&v19 + 1), v20, *(&v20 + 1), v21, v22[0]);
LABEL_12:
    v5 += 40;
    --v4;
  }

  while (v4);

  return v6;
}

uint64_t static DomainToContactAffinityScoreByNameSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_2314F1D48(v3);
}

uint64_t static DomainToContactAffinityScoreByNameSignal.instances(createdFor:)(uint64_t a1, uint64_t a2)
{
  v23[0] = MEMORY[0x277D84F90];
  v23[1] = a1;
  v23[2] = a2;
  memset(&v23[3], 0, 24);

  v2 = sub_2314F1D48(v23);
  sub_2314C1D18(v23);
  v3 = *(v2 + 16);
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v17 = v2;
  v4 = v2 + 32;
  v5 = MEMORY[0x277D84F90];
  do
  {
    sub_2314A2C74(v4, v22);
    sub_23149FD3C(v22, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B590, &qword_23158A9D8);
    if ((OUTLINED_FUNCTION_26_1() & 1) == 0)
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
LABEL_11:
      sub_2314A2910(&v18, &qword_27DD5B598, &qword_23158A9E0);
      goto LABEL_12;
    }

    if (!*(&v19 + 1))
    {
      goto LABEL_11;
    }

    sub_23149FD3C(&v18, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_22_5();
      OUTLINED_FUNCTION_39_0();
      v5 = isUniquelyReferenced_nonNull_native;
    }

    v14 = *(v5 + 24);
    if (*(v5 + 16) >= v14 >> 1)
    {
      OUTLINED_FUNCTION_24_2(v14);
      OUTLINED_FUNCTION_39_0();
      v5 = isUniquelyReferenced_nonNull_native;
    }

    OUTLINED_FUNCTION_25_0(isUniquelyReferenced_nonNull_native, v7, v8, v9, v10, v11, v12, v13, v16, v17, v18, *(&v18 + 1), v19, *(&v19 + 1), v20, v21[0]);
LABEL_12:
    v4 += 40;
    --v3;
  }

  while (v3);

  return v5;
}

uint64_t static DomainToContactAffinityScoreByNameSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314F2174(v3, v1, v2);
}

uint64_t sub_2314EF9B0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = type metadata accessor for DomainToContactAffinityScoreByNameSignal();
  a5[3] = v10;
  a5[4] = &protocol witness table for DomainToContactAffinityScoreByNameSignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  v12 = sub_231585D34();
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, a2, v12);
  *(boxed_opaque_existential_1 + *(v10 + 20)) = v9;
  v13 = (boxed_opaque_existential_1 + *(v10 + 24));
  *v13 = a3;
  v13[1] = a4;
}

uint64_t static DomainToContactAffinityScoreByNameSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611B80);
  *a1 = result;
  return result;
}

uint64_t DomainToContactAffinityScoreByNameSignal.value(completion:)(void (*a1)(uint64_t), uint64_t a2)
{
  v103 = a2;
  v104 = a1;
  v3 = type metadata accessor for DomainToContactAffinityScoreByNameSignal();
  v4 = OUTLINED_FUNCTION_8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v102 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  v10 = OUTLINED_FUNCTION_19(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v101 = &v98 - v13;
  OUTLINED_FUNCTION_29_0();
  v14 = sub_231585D34();
  v15 = OUTLINED_FUNCTION_4_1(v14);
  v110 = v16;
  v111 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11_0();
  v108 = v19 - v20;
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_35();
  v109 = v22;
  OUTLINED_FUNCTION_29_0();
  v23 = sub_231585E04();
  v24 = OUTLINED_FUNCTION_4_1(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5();
  v31 = (v30 - v29);
  v32 = sub_231585AE4();
  v33 = OUTLINED_FUNCTION_4_1(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_11_0();
  v40 = v38 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v98 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  v45 = OUTLINED_FUNCTION_19(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_11_0();
  v100 = v48 - v49;
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v50);
  v107 = &v98 - v51;
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_35();
  v105 = v3;
  v106 = v53;
  v54 = *(v3 + 20);
  v55 = v2;
  v99 = v54;
  v56 = *(v2 + v54);
  v57 = 1;
  if (v56 <= 0xD && ((1 << v56) & 0x2E5C) != 0)
  {
    sub_231585AD4();
    sub_231585AC4();
    v58 = *(v35 + 8);
    v58(v40, v32);
    OUTLINED_FUNCTION_31_0((v2 + *(v105 + 24)));
    *v31 = v59;
    v31[1] = v60;
    v31[2] = v61;
    v31[3] = v40;
    (*(v26 + 104))(v31, *MEMORY[0x277D5FFE8], v23);

    sub_231585A94();
    (*(v26 + 8))(v31, v23);
    v58(v43, v32);
    v57 = 0;
  }

  v62 = v106;
  __swift_storeEnumTagSinglePayload(v106, v57, 1, v32);
  v63 = v109;
  v64 = *(v110 + 16);
  v65 = v111;
  v64(v109, v2, v111);
  v66 = *(v2 + v99);
  sub_2314A1D9C(v62, v107, &qword_27DD5B4D0, &qword_23158A5D0);
  v99 = DomainToContactAffinityScoreByNameSignal.id.getter();
  v68 = v67;
  v64(v108, v63, v65);
  LOBYTE(v113) = v66;
  v69 = DomainUseCase.intentTypes.getter();
  v70 = v101;
  if (v66 <= 0xD)
  {
    if (((1 << v66) & 0xA95) != 0)
    {
      v71 = MEMORY[0x277D5FFC0];
LABEL_9:
      v72 = *v71;
      v73 = sub_231585D74();
      OUTLINED_FUNCTION_8(v73);
      (*(v74 + 104))(v70, v72, v73);
      v75 = v70;
      v76 = 0;
      v77 = v73;
      goto LABEL_10;
    }

    if (((1 << v66) & 0x3060) != 0)
    {
      v71 = MEMORY[0x277D5FFB8];
      goto LABEL_9;
    }
  }

  v77 = sub_231585D74();
  v75 = v70;
  v76 = 1;
LABEL_10:
  __swift_storeEnumTagSinglePayload(v75, v76, 1, v77);
  if (v66 - 1 > 0xA)
  {
    v78 = 2;
  }

  else
  {
    v78 = byte_23158AB52[(v66 - 1)];
  }

  v79 = v107;
  v80 = v100;
  sub_2314A1D9C(v107, v100, &qword_27DD5B4D0, &qword_23158A5D0);
  v81 = sub_2314A0DE8(v108, v69, v70, v78, v80, v99, v68, MEMORY[0x277D84F90], 0);
  v83 = v82;
  sub_2314A2910(v79, &qword_27DD5B4D0, &qword_23158A5D0);
  (*(v110 + 8))(v109, v111);
  sub_2314BB35C(v81, v83);

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v84 = sub_231585FF4();
  __swift_project_value_buffer(v84, qword_280D72248);
  v85 = v102;
  sub_2314F25C0(v55, v102);

  v86 = sub_231585FE4();
  v87 = sub_2315865D4();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v115 = v89;
    *v88 = 136315394;
    v112 = *(v85 + *(v105 + 20));
    v90 = DomainUseCase.rawValue.getter();
    OUTLINED_FUNCTION_8_11(v90, v91);
    if (qword_27DD5ADB8 != -1)
    {
      OUTLINED_FUNCTION_1_16();
    }

    MEMORY[0x23192FF80](qword_27DD5B578, unk_27DD5B580);
    sub_2314F2624(v85);
    v92 = sub_2314A22E8();

    *(v88 + 4) = v92;
    *(v88 + 12) = 2080;
    sub_2315860E4();
    v93 = sub_2314A22E8();

    *(v88 + 14) = v93;
    OUTLINED_FUNCTION_36_0(&dword_231496000, v94, v95, "%s value: %s");
    swift_arrayDestroy();
    MEMORY[0x231931280](v89, -1, -1);
    OUTLINED_FUNCTION_27();
  }

  else
  {

    sub_2314F2624(v85);
  }

  v96 = OUTLINED_FUNCTION_30_0();
  v104(v96);
  sub_2314A5EEC(v113, v114);
  return sub_2314A2910(v62, &qword_27DD5B4D0, &qword_23158A5D0);
}

uint64_t DomainToContactAffinityScoreByNameSignal.valueForApps(bundleIDs:completion:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v120 = a3;
  v121 = a2;
  v129 = a1;
  v4 = type metadata accessor for DomainToContactAffinityScoreByNameSignal();
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v119 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  v11 = OUTLINED_FUNCTION_19(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v126 = &v115[-v14];
  OUTLINED_FUNCTION_29_0();
  v15 = sub_231585D34();
  v16 = OUTLINED_FUNCTION_4_1(v15);
  v127 = v17;
  v128 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11_0();
  v124 = v20 - v21;
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_35();
  v125 = v23;
  OUTLINED_FUNCTION_29_0();
  v24 = sub_231585E04();
  v25 = OUTLINED_FUNCTION_4_1(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5();
  v32 = (v31 - v30);
  v33 = sub_231585AE4();
  v34 = OUTLINED_FUNCTION_4_1(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_11_0();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = &v115[-v43];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  v46 = OUTLINED_FUNCTION_19(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_11_0();
  v118 = v49 - v50;
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v51);
  v123 = &v115[-v52];
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_35();
  v130 = v54;
  v122 = v4;
  v55 = *(v4 + 20);
  v56 = v3;
  v117 = v55;
  v57 = *(v3 + v55);
  v58 = 1;
  if (v57 <= 0xD && ((1 << v57) & 0x2E5C) != 0)
  {
    sub_231585AD4();
    sub_231585AC4();
    v59 = *(v36 + 8);
    v59(v41, v33);
    OUTLINED_FUNCTION_31_0((v3 + *(v122 + 24)));
    *v32 = v60;
    v32[1] = v61;
    v32[2] = v62;
    v32[3] = v41;
    (*(v27 + 104))(v32, *MEMORY[0x277D5FFE8], v24);

    sub_231585A94();
    (*(v27 + 8))(v32, v24);
    v59(v44, v33);
    v58 = 0;
  }

  v63 = v130;
  v64 = __swift_storeEnumTagSinglePayload(v130, v58, 1, v33);
  v65 = v117;
  v66 = *(v3 + v117);
  v133 = 0xD000000000000013;
  v134 = 0x8000000231591960;
  MEMORY[0x28223BE20](v64);
  v67 = v129;
  v68 = sub_2314E62A8(sub_2314BB954, &v115[-32], v129);
  v69 = v68;
  v133 = 0xD000000000000017;
  v134 = 0x800000023158F940;
  MEMORY[0x28223BE20](v68);
  v114 = &v133;
  v70 = sub_2314E62A8(sub_2314BB974, &v115[-32], v67);
  v71 = v69 && v66 - 7 < 7;
  if (!(v71 | !v70))
  {
    v71 = v66 < 7;
  }

  v116 = v71;
  v72 = v128;
  v73 = *(v127 + 16);
  v74 = v125;
  v73(v125, v56, v128);
  v75 = *(v56 + v65);
  sub_2314A1D9C(v63, v123, &qword_27DD5B4D0, &qword_23158A5D0);
  v76 = DomainToContactAffinityScoreByNameSignal.id.getter();
  v78 = v77;
  v73(v124, v74, v72);
  LOBYTE(v133) = v75;
  v79 = DomainUseCase.intentTypes.getter();
  v80 = v56;
  if (v75 > 0xD)
  {
    goto LABEL_22;
  }

  if (((1 << v75) & 0xA95) != 0)
  {
    v81 = *MEMORY[0x277D5FFC0];
    v82 = sub_231585D74();
    OUTLINED_FUNCTION_8(v82);
    v84 = v126;
    (*(v83 + 104))(v126, v81, v82);
    v85 = v84;
    v86 = 0;
    v87 = v82;
    goto LABEL_11;
  }

  if (((1 << v75) & 0x3060) != 0)
  {
    v88 = *MEMORY[0x277D5FFB8];
    v89 = sub_231585D74();
    OUTLINED_FUNCTION_8(v89);
    v91 = v126;
    (*(v90 + 104))(v126, v88, v89);
    v85 = v91;
    v86 = 0;
    v87 = v89;
  }

  else
  {
LABEL_22:
    v87 = sub_231585D74();
    v85 = v126;
    v86 = 1;
  }

LABEL_11:
  __swift_storeEnumTagSinglePayload(v85, v86, 1, v87);
  if (v75 - 1 > 0xA)
  {
    v92 = 2;
  }

  else
  {
    v92 = byte_23158AB52[(v75 - 1)];
  }

  v93 = v123;
  v94 = v118;
  sub_2314A1D9C(v123, v118, &qword_27DD5B4D0, &qword_23158A5D0);
  v95 = v129;

  v96 = sub_2314A0DE8(v124, v79, v126, v92, v94, v76, v78, v95, v116);
  v98 = v97;
  sub_2314A2910(v93, &qword_27DD5B4D0, &qword_23158A5D0);
  (*(v127 + 8))(v125, v128);
  sub_2314BB35C(v96, v98);

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v99 = sub_231585FF4();
  __swift_project_value_buffer(v99, qword_280D72248);
  v100 = v119;
  sub_2314F25C0(v80, v119);

  v101 = sub_231585FE4();
  v102 = sub_2315865D4();

  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v132 = v104;
    *v103 = 136315394;
    v131 = *(v100 + *(v122 + 20));
    v105 = DomainUseCase.rawValue.getter();
    OUTLINED_FUNCTION_8_11(v105, v106);
    if (qword_27DD5ADB8 != -1)
    {
      OUTLINED_FUNCTION_1_16();
    }

    MEMORY[0x23192FF80](qword_27DD5B578, unk_27DD5B580);
    sub_2314F2624(v100);
    v107 = sub_2314A22E8();

    *(v103 + 4) = v107;
    *(v103 + 12) = 2080;
    sub_2315860E4();
    v108 = sub_2314A22E8();

    *(v103 + 14) = v108;
    OUTLINED_FUNCTION_36_0(&dword_231496000, v109, v110, "%s value: %s");
    swift_arrayDestroy();
    MEMORY[0x231931280](v104, -1, -1);
    OUTLINED_FUNCTION_27();
  }

  else
  {

    sub_2314F2624(v100);
  }

  v111 = v130;
  v112 = OUTLINED_FUNCTION_30_0();
  v121(v112);
  sub_2314A5EEC(v133, v134);
  return sub_2314A2910(v111, &qword_27DD5B4D0, &qword_23158A5D0);
}

uint64_t sub_2314F0B88(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314F2174(v3, v1, v2);
}

void sub_2314F0BEC()
{
  OUTLINED_FUNCTION_13_4();
  if (v5)
  {
    OUTLINED_FUNCTION_3_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_12_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_16_4(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B5B0, &qword_23158AA68);
    v9 = OUTLINED_FUNCTION_20();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_7_12();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_34_0();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v3] <= v11)
    {
      memmove(v11, v12, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v3);
  }
}

void sub_2314F0CFC()
{
  OUTLINED_FUNCTION_13_4();
  if (v5)
  {
    OUTLINED_FUNCTION_3_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_12_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B5C0, &qword_23158E0D0);
    v9 = OUTLINED_FUNCTION_20();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_15_3();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_17_4();
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2314F0DD4()
{
  OUTLINED_FUNCTION_13_4();
  if (v5)
  {
    OUTLINED_FUNCTION_3_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_12_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B5C8, &qword_23158AA80);
    v9 = OUTLINED_FUNCTION_18_4();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_11_8(v10);
  }

  OUTLINED_FUNCTION_17_4();
  if (v1)
  {
    OUTLINED_FUNCTION_21_3();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, 24 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2314F0EA4()
{
  OUTLINED_FUNCTION_13_4();
  if (v5)
  {
    OUTLINED_FUNCTION_3_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_12_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B670, &qword_23158AB40);
    v9 = OUTLINED_FUNCTION_20();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_7_12();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[2 * v2 + 4] <= v9 + 4)
    {
      memmove(v9 + 4, v0 + 4, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B678, &qword_23158AB48);
    swift_arrayInitWithCopy();
  }
}

void sub_2314F0FE0()
{
  OUTLINED_FUNCTION_13_4();
  if (v5)
  {
    OUTLINED_FUNCTION_3_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_12_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_16_4(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B5F0, &unk_23158AAA8);
    v9 = OUTLINED_FUNCTION_20();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_7_12();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_34_0();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v3] <= v11)
    {
      memmove(v11, v12, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v3);
  }
}

void sub_2314F10E8(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_13();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_12_1();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_2314F1A60(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2314F1200()
{
  OUTLINED_FUNCTION_13_4();
  if (v5)
  {
    OUTLINED_FUNCTION_3_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_12_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_16_4(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B650, &qword_23158AB20);
    v9 = OUTLINED_FUNCTION_20();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_15_3();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_34_0();
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v3] <= v11)
    {
      memmove(v11, v12, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v3);
  }
}

void sub_2314F12D0()
{
  OUTLINED_FUNCTION_13_4();
  if (v5)
  {
    OUTLINED_FUNCTION_3_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_12_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B638, &unk_23158AB00);
    v9 = OUTLINED_FUNCTION_20();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_15_3();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_17_4();
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2314F13C4()
{
  OUTLINED_FUNCTION_13_4();
  if (v5)
  {
    OUTLINED_FUNCTION_3_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_12_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B5E8, &qword_23158AAA0);
    v9 = OUTLINED_FUNCTION_18_4();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_11_8(v10);
  }

  OUTLINED_FUNCTION_17_4();
  if (v1)
  {
    OUTLINED_FUNCTION_21_3();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, 24 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2314F14B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_3_13();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_12_1();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v8 = a2;
  }

  v11 = *(a4 + 16);
  if (v8 <= v11)
  {
    v12 = *(a4 + 16);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    OUTLINED_FUNCTION_38_0(a1, a2, a3, a4, a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = (a4 + 32);
  if (v7)
  {
    if (v13 != a4 || &v16[24 * v11] <= v15)
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2314F15A4()
{
  OUTLINED_FUNCTION_13_4();
  if (v5)
  {
    OUTLINED_FUNCTION_3_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_12_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B5E0, &qword_23158AA98);
    v9 = OUTLINED_FUNCTION_18_4();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_11_8(v10);
  }

  OUTLINED_FUNCTION_17_4();
  if (v1)
  {
    OUTLINED_FUNCTION_21_3();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, 24 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2314F16BC()
{
  OUTLINED_FUNCTION_28_0();
  if (v6)
  {
    OUTLINED_FUNCTION_3_13();
    if (v11 != v12)
    {
      OUTLINED_FUNCTION_12_1();
      if (v11)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v10 = v5;
  }

  v13 = v0[2];
  if (v10 <= v13)
  {
    v14 = v0[2];
  }

  else
  {
    v14 = v10;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_38_0(v4, v5, v6, v7, v8, v9);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v3)
  {
    if (v15 != v0 || &v0[5 * v13 + 4] <= v15 + 4)
    {
      v18 = OUTLINED_FUNCTION_33();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
    OUTLINED_FUNCTION_33();
    swift_arrayInitWithCopy();
  }
}

void sub_2314F17C4()
{
  OUTLINED_FUNCTION_13_4();
  if (v5)
  {
    OUTLINED_FUNCTION_3_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_12_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B668, &unk_23158E1A0);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_11_8(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_17_4();
  if (v1)
  {
    if (v9 != v0 || &v12[56 * v2] <= v11)
    {
      memmove(v11, v12, 56 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_2314F18D8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

char *sub_2314F18F8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

uint64_t sub_2314F1918()
{
  OUTLINED_FUNCTION_32();
  if (v3 && (v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80), result = OUTLINED_FUNCTION_8(v4), v1 + *(v6 + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      OUTLINED_FUNCTION_10_6();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
    OUTLINED_FUNCTION_10_6();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

char *sub_2314F19D8(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *sub_2314F1A00(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

char *sub_2314F1A20(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

uint64_t sub_2314F1A60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_32();
  if (v8 && (v9 = (a4)(0), result = OUTLINED_FUNCTION_8(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_10_6();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_10_6();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t sub_2314F1B14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v1 = OUTLINED_FUNCTION_19(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v15 - v4;
  v16[3] = &type metadata for NoParameters;
  v16[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v16, v5);
  v6 = sub_231585D34();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v6);
  sub_2314A2910(v5, &qword_27DD5B008, &unk_23158A5C0);
  if (EnumTagSinglePayload != 1)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v8 = sub_231585FF4();
    __swift_project_value_buffer(v8, qword_280D72248);
    v9 = sub_231585FE4();
    v10 = sub_2315865E4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15[2] = v12;
      *v11 = 136315138;
      v15[1] = type metadata accessor for DomainToContactAffinityScoreByNameSignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B5F8, &qword_23158AAB8);
      sub_231586204();
      v13 = sub_2314A22E8();

      *(v11 + 4) = v13;
      _os_log_impl(&dword_231496000, v9, v10, "%s no entityName given", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_27();
      MEMORY[0x231931280](v11, -1, -1);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return MEMORY[0x277D84F90];
}

uint64_t sub_2314F1D48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27[-1] - v4;
  v6 = sub_231585D34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[3] = &type metadata for SignalComputationContext;
  v29[4] = &protocol witness table for SignalComputationContext;
  v11 = swift_allocObject();
  v29[0] = v11;
  v12 = *(a1 + 16);
  v11[1] = *a1;
  v11[2] = v12;
  v11[3] = *(a1 + 32);
  sub_2314B5008(a1, v28);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v29, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2314A2910(v5, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v18 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v13 = *(a1 + 40);
  (*(v7 + 32))(v10, v5, v6);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = &unk_2846105E0;
  }

  v28[0] = *(a1 + 8);
  v15 = *(&v28[0] + 1);
  if (!*(&v28[0] + 1))
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v19 = sub_231585FF4();
    __swift_project_value_buffer(v19, qword_280D72248);
    v20 = sub_231585FE4();
    v21 = sub_2315865E4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27[0] = v23;
      *v22 = 136315138;
      v27[2] = type metadata accessor for DomainToContactAffinityScoreByNameSignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B5F8, &qword_23158AAB8);
      sub_231586204();
      v24 = sub_2314A22E8();

      *(v22 + 4) = v24;
      _os_log_impl(&dword_231496000, v20, v21, "%s no entityName given", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x231931280](v23, -1, -1);
      MEMORY[0x231931280](v22, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    goto LABEL_15;
  }

  v16 = *&v28[0];

  sub_2314A1D9C(v28, v27, &qword_27DD5B120, &qword_23158ACE0);

  MEMORY[0x28223BE20](v17);
  *(&v26 - 4) = v10;
  *(&v26 - 3) = v16;
  *(&v26 - 2) = v15;
  v18 = sub_2314DCD00(sub_2314F274C, (&v26 - 6), v14);

  (*(v7 + 8))(v10, v6);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v18;
}

uint64_t sub_2314F2174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v31 - v8;
  v10 = sub_231585D34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[3] = a2;
  v36[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v36, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2314A2910(v9, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v23 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  (*(v11 + 32))(v14, v9, v10);
  v16 = (*(a3 + 24))(a2, a3);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = &unk_2846105E0;
  }

  (*(a3 + 32))(&v32, a2, a3);
  v18 = v33;
  if (!v33)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v24 = sub_231585FF4();
    __swift_project_value_buffer(v24, qword_280D72248);
    v25 = sub_231585FE4();
    v26 = sub_2315865E4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32 = v28;
      *v27 = 136315138;
      v31[2] = type metadata accessor for DomainToContactAffinityScoreByNameSignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B5F8, &qword_23158AAB8);
      sub_231586204();
      v29 = sub_2314A22E8();

      *(v27 + 4) = v29;
      _os_log_impl(&dword_231496000, v25, v26, "%s no entityName given", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x231931280](v28, -1, -1);
      MEMORY[0x231931280](v27, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    goto LABEL_15;
  }

  v19 = v34;
  v20 = v35;
  v21 = v32;

  v22 = sub_2314A0D38(v21, v18);
  MEMORY[0x28223BE20](v22);
  v31[-4] = v14;
  v31[-3] = v19;
  v31[-2] = v20;
  v23 = sub_2314DCD00(sub_2314F272C, &v31[-6], v17);

  (*(v11 + 8))(v14, v10);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v36);
  return v23;
}

uint64_t sub_2314F25C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainToContactAffinityScoreByNameSignal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314F2624(uint64_t a1)
{
  v2 = type metadata accessor for DomainToContactAffinityScoreByNameSignal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314F26A8()
{
  result = sub_231585D34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2314F2794()
{
  result = sub_231586964();
  qword_27DD5B680 = result;
  *algn_27DD5B688 = v1;
  return result;
}

uint64_t static DomainToContactAffinityScoreSignal.signalName.getter()
{
  if (qword_27DD5ADC0 != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  v0 = qword_27DD5B680;

  return v0;
}

unint64_t DomainToContactAffinityScoreSignal.id.getter()
{
  v2 = *(v0 + *(type metadata accessor for DomainToContactAffinityScoreSignal() + 20));
  v3 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_27DD5ADC0 != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  MEMORY[0x23192FF80](qword_27DD5B680, *algn_27DD5B688);
  return v3;
}

uint64_t type metadata accessor for DomainToContactAffinityScoreSignal()
{
  result = qword_27DD5B690;
  if (!qword_27DD5B690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DomainToContactAffinityScoreSignal.entityID.getter()
{
  v1 = (v0 + *(type metadata accessor for DomainToContactAffinityScoreSignal() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t static DomainToContactAffinityScoreSignal.instances(createdFor:useCases:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[0] = MEMORY[0x277D84F90];
  v17[1] = a1;
  v17[2] = a2;
  v17[3] = 0;
  v17[4] = 0;
  v17[5] = a3;

  v3 = sub_2314F36D4(v17);
  sub_2314C1D18(v17);
  v4 = *(v3 + 16);
  if (!v4)
  {

    return MEMORY[0x277D84F90];
  }

  v5 = v3 + 32;
  v6 = MEMORY[0x277D84F90];
  do
  {
    sub_2314A2C74(v5, v16);
    sub_23149FD3C(v16, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B590, &qword_23158A9D8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
LABEL_11:
      sub_2314A2910(&v12, &qword_27DD5B598, &qword_23158A9E0);
      goto LABEL_12;
    }

    if (!*(&v13 + 1))
    {
      goto LABEL_11;
    }

    sub_23149FD3C(&v12, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = *(v6 + 16);
      sub_2314F1698();
      v6 = v9;
    }

    v7 = *(v6 + 16);
    if (v7 >= *(v6 + 24) >> 1)
    {
      sub_2314F1698();
      v6 = v10;
    }

    *(v6 + 16) = v7 + 1;
    sub_23149FD3C(v15, v6 + 40 * v7 + 32);
LABEL_12:
    v5 += 40;
    --v4;
  }

  while (v4);

  return v6;
}

uint64_t static DomainToContactAffinityScoreSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_2314F36D4(v3);
}

uint64_t static DomainToContactAffinityScoreSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314F3B00(v3, v1, v2);
}

uint64_t sub_2314F2BB0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = type metadata accessor for DomainToContactAffinityScoreSignal();
  a5[3] = v10;
  a5[4] = &protocol witness table for DomainToContactAffinityScoreSignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  v12 = sub_231585D34();
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, a2, v12);
  *(boxed_opaque_existential_1 + *(v10 + 20)) = v9;
  v13 = (boxed_opaque_existential_1 + *(v10 + 24));
  *v13 = a3;
  v13[1] = a4;
}

uint64_t static DomainToContactAffinityScoreSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611BA8);
  *a1 = result;
  return result;
}

uint64_t DomainToContactAffinityScoreSignal.value(completion:)(void (*a1)(unint64_t *), uint64_t a2)
{
  v3 = v2;
  v88 = a2;
  v89 = a1;
  v4 = type metadata accessor for DomainToContactAffinityScoreSignal();
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v90 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v87 = &v83 - v11;
  v12 = sub_231585D34();
  v13 = OUTLINED_FUNCTION_4_1(v12);
  v94 = v14;
  v95 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11_0();
  v92 = (v17 - v18);
  MEMORY[0x28223BE20](v19);
  v93 = &v83 - v20;
  v21 = sub_231585AE4();
  v22 = OUTLINED_FUNCTION_4_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_11_0();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v83 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  OUTLINED_FUNCTION_11_0();
  v86 = v35 - v36;
  v38 = MEMORY[0x28223BE20](v37);
  v40 = &v83 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v83 - v41;
  v91 = v4;
  v43 = *(v4 + 20);
  v44 = *(v3 + v43);
  v45 = 1;
  v96 = &v83 - v41;
  if (v44 <= 0xD && ((1 << v44) & 0x2E5C) != 0)
  {
    sub_231585AD4();
    sub_231585AC4();
    v46 = *(v24 + 8);
    v46(v29, v21);
    v47 = (v3 + *(v91 + 24));
    v48 = *v47;
    v49 = v47[1];
    sub_231585AA4();
    v46(v32, v21);
    v42 = v96;
    v45 = 0;
  }

  __swift_storeEnumTagSinglePayload(v42, v45, 1, v21);
  v50 = v93;
  v51 = *(v94 + 16);
  v52 = v95;
  v51(v93, v3, v95);
  v53 = *(v3 + v43);
  sub_2314A1D9C(v42, v40, &qword_27DD5B4D0, &qword_23158A5D0);
  v54 = DomainToContactAffinityScoreSignal.id.getter();
  v84 = v55;
  v85 = v54;
  v51(v92, v50, v52);
  LOBYTE(v98) = v53;
  v56 = DomainUseCase.intentTypes.getter();
  v57 = v87;
  if (v53 > 0xD)
  {
    goto LABEL_20;
  }

  if (((1 << v53) & 0xA95) != 0)
  {
    v58 = *MEMORY[0x277D5FFC0];
    v59 = sub_231585D74();
    OUTLINED_FUNCTION_8(v59);
    (*(v60 + 104))(v57, v58, v59);
    v61 = v57;
    v62 = 0;
    v63 = v59;
    goto LABEL_9;
  }

  if (((1 << v53) & 0x3060) != 0)
  {
    v64 = *MEMORY[0x277D5FFB8];
    v65 = sub_231585D74();
    OUTLINED_FUNCTION_8(v65);
    (*(v66 + 104))(v57, v64, v65);
    v61 = v57;
    v62 = 0;
    v63 = v65;
  }

  else
  {
LABEL_20:
    v63 = sub_231585D74();
    v61 = v57;
    v62 = 1;
  }

LABEL_9:
  __swift_storeEnumTagSinglePayload(v61, v62, 1, v63);
  if (v53 - 1 > 0xA)
  {
    v67 = 2;
  }

  else
  {
    v67 = byte_23158ABF2[(v53 - 1)];
  }

  v68 = v90;
  v69 = v86;
  sub_2314A1D9C(v40, v86, &qword_27DD5B4D0, &qword_23158A5D0);
  v70 = sub_2314A0DE8(v92, v56, v57, v67, v69, v85, v84, MEMORY[0x277D84F90], 0);
  v72 = v71;
  sub_2314A2910(v40, &qword_27DD5B4D0, &qword_23158A5D0);
  (*(v94 + 8))(v93, v95);
  v73 = sub_2314BB35C(v70, v72);

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v74 = sub_231585FF4();
  __swift_project_value_buffer(v74, qword_280D72248);
  sub_2314F3F4C(v3, v68);

  v75 = sub_231585FE4();
  v76 = sub_2315865D4();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    *v77 = 136315394;
    v97 = *(v68 + *(v91 + 20));
    v98 = DomainUseCase.rawValue.getter();
    v99 = v78;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    if (qword_27DD5ADC0 != -1)
    {
      OUTLINED_FUNCTION_0_34();
    }

    MEMORY[0x23192FF80](qword_27DD5B680, *algn_27DD5B688);
    sub_2314F3FB0(v68);
    v79 = sub_2314A22E8();

    *(v77 + 4) = v79;
    *(v77 + 12) = 2080;
    sub_2315860E4();
    v80 = sub_2314A22E8();

    *(v77 + 14) = v80;
    _os_log_impl(&dword_231496000, v75, v76, "%s value: %s", v77, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_2314F3FB0(v68);
  }

  v81 = v96;
  v98 = v73;
  LOBYTE(v99) = 3;
  v89(&v98);
  sub_2314A5EEC(v98, v99);
  return sub_2314A2910(v81, &qword_27DD5B4D0, &qword_23158A5D0);
}

uint64_t sub_2314F3440(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314F3B00(v3, v1, v2);
}

uint64_t sub_2314F34A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v13 - v2;
  v14[3] = &type metadata for NoParameters;
  v14[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v14, v3);
  v4 = sub_231585D34();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v4);
  sub_2314A2910(v3, &qword_27DD5B008, &unk_23158A5C0);
  if (EnumTagSinglePayload != 1)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v6 = sub_231585FF4();
    __swift_project_value_buffer(v6, qword_280D72248);
    v7 = sub_231585FE4();
    v8 = sub_2315865E4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13[2] = v10;
      *v9 = 136315138;
      v13[1] = type metadata accessor for DomainToContactAffinityScoreSignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6A0, &unk_23158ABE0);
      sub_231586204();
      v11 = sub_2314A22E8();

      *(v9 + 4) = v11;
      _os_log_impl(&dword_231496000, v7, v8, "%s no entityName given", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return MEMORY[0x277D84F90];
}

uint64_t sub_2314F36D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27[-1] - v4;
  v6 = sub_231585D34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[3] = &type metadata for SignalComputationContext;
  v29[4] = &protocol witness table for SignalComputationContext;
  v11 = swift_allocObject();
  v29[0] = v11;
  v12 = *(a1 + 16);
  v11[1] = *a1;
  v11[2] = v12;
  v11[3] = *(a1 + 32);
  sub_2314B5008(a1, v28);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v29, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2314A2910(v5, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v18 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v13 = *(a1 + 40);
  (*(v7 + 32))(v10, v5, v6);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = &unk_284610540;
  }

  v28[0] = *(a1 + 8);
  v15 = *(&v28[0] + 1);
  if (!*(&v28[0] + 1))
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v19 = sub_231585FF4();
    __swift_project_value_buffer(v19, qword_280D72248);
    v20 = sub_231585FE4();
    v21 = sub_2315865E4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27[0] = v23;
      *v22 = 136315138;
      v27[2] = type metadata accessor for DomainToContactAffinityScoreSignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6A0, &unk_23158ABE0);
      sub_231586204();
      v24 = sub_2314A22E8();

      *(v22 + 4) = v24;
      _os_log_impl(&dword_231496000, v20, v21, "%s no entityName given", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x231931280](v23, -1, -1);
      MEMORY[0x231931280](v22, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    goto LABEL_15;
  }

  v16 = *&v28[0];

  sub_2314A1D9C(v28, v27, &qword_27DD5B120, &qword_23158ACE0);

  MEMORY[0x28223BE20](v17);
  *(&v26 - 4) = v10;
  *(&v26 - 3) = v16;
  *(&v26 - 2) = v15;
  v18 = sub_2314DCD00(sub_2314F4054, (&v26 - 6), v14);

  (*(v7 + 8))(v10, v6);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v18;
}

uint64_t sub_2314F3B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v31 - v8;
  v10 = sub_231585D34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[3] = a2;
  v36[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v36, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2314A2910(v9, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v23 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  (*(v11 + 32))(v14, v9, v10);
  v16 = (*(a3 + 24))(a2, a3);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = &unk_284610540;
  }

  (*(a3 + 32))(&v32, a2, a3);
  v18 = v33;
  if (!v33)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v24 = sub_231585FF4();
    __swift_project_value_buffer(v24, qword_280D72248);
    v25 = sub_231585FE4();
    v26 = sub_2315865E4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32 = v28;
      *v27 = 136315138;
      v31[2] = type metadata accessor for DomainToContactAffinityScoreSignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6A0, &unk_23158ABE0);
      sub_231586204();
      v29 = sub_2314A22E8();

      *(v27 + 4) = v29;
      _os_log_impl(&dword_231496000, v25, v26, "%s no entityName given", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x231931280](v28, -1, -1);
      MEMORY[0x231931280](v27, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    goto LABEL_15;
  }

  v19 = v34;
  v20 = v35;
  v21 = v32;

  v22 = sub_2314A0D38(v21, v18);
  MEMORY[0x28223BE20](v22);
  v31[-4] = v14;
  v31[-3] = v19;
  v31[-2] = v20;
  v23 = sub_2314DCD00(sub_2314F4034, &v31[-6], v17);

  (*(v11 + 8))(v14, v10);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v36);
  return v23;
}

uint64_t sub_2314F3F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainToContactAffinityScoreSignal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314F3FB0(uint64_t a1)
{
  v2 = type metadata accessor for DomainToContactAffinityScoreSignal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314F4080()
{
  result = sub_231586964();
  qword_27DD5B6A8 = result;
  unk_27DD5B6B0 = v1;
  return result;
}

uint64_t static DomainToContactFrequencyByIntentSignal.signalName.getter()
{
  if (qword_27DD5ADC8 != -1)
  {
    OUTLINED_FUNCTION_0_35();
  }

  v0 = qword_27DD5B6A8;

  return v0;
}

uint64_t DomainToContactFrequencyByIntentSignal.id.getter()
{
  v3[8] = 0;
  *v3 = v0[*(type metadata accessor for DomainToContactFrequencyByIntentSignal() + 32)];
  v1 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](v1);

  OUTLINED_FUNCTION_7_10();
  if (qword_27DD5ADC8 != -1)
  {
    OUTLINED_FUNCTION_0_35();
  }

  MEMORY[0x23192FF80](qword_27DD5B6A8, unk_27DD5B6B0);
  OUTLINED_FUNCTION_7_10();
  v3[0] = *v0;
  sub_231586A54();
  return *&v3[1];
}

uint64_t type metadata accessor for DomainToContactFrequencyByIntentSignal()
{
  result = qword_27DD5B6C0;
  if (!qword_27DD5B6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DomainToContactFrequencyByIntentSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314F51EC(v3, v1, v2);
}

uint64_t sub_2314F4274@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v27 = a4;
  v35 = a2;
  v36 = a3;
  v33 = sub_231585D34();
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v31 = &v27 - v9;
  v10 = type metadata accessor for DomainToContactFrequencyByIntentSignal();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a1;
  v42 = MEMORY[0x277D84F90];
  sub_23152D5B8();
  v14 = 0;
  v15 = v42;
  v16 = *(v5 + 16);
  v34 = v5 + 16;
  v28 = (v5 + 8);
  v29 = v16;
  v17 = v31;
  do
  {
    v38 = v15;
    v37 = byte_28460FCD0[v14 + 32];
    v18 = v33;
    v19 = v29;
    v29(v17, v35, v33);
    v20 = v10[5];
    v19(&v13[v20], v17, v18);
    v13[v10[8]] = v30;
    v21 = v36;
    *&v13[v10[6]] = v36;
    *v13 = v37;
    v19(v32, &v13[v20], v18);
    v15 = v38;
    v22 = v10[7];
    v23 = v21;
    sub_231585A74();
    (*v28)(v17, v18);
    v42 = v15;
    v24 = *(v15 + 16);
    if (v24 >= *(v15 + 24) >> 1)
    {
      sub_23152D5B8();
      v15 = v42;
    }

    ++v14;
    v40 = v10;
    v41 = &protocol witness table for DomainToContactFrequencyByIntentSignal;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v39);
    sub_2314F55F8(v13, boxed_opaque_existential_1);
    *(v15 + 16) = v24 + 1;
    sub_23149FD3C(&v39, v15 + 40 * v24 + 32);
    result = sub_2314F565C(v13);
  }

  while (v14 != 8);
  *v27 = v15;
  return result;
}

uint64_t static DomainToContactFrequencyByIntentSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611BD0);
  *a1 = result;
  return result;
}

uint64_t DomainToContactFrequencyByIntentSignal.value(completion:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DomainToContactFrequencyByIntentSignal();
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11_0();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v90 - v12;
  v14 = sub_231585BA4();
  v97 = *(v14 - 8);
  v15 = *(v97 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11_0();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v96 = &v90 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6B8, &unk_23158AC00);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  OUTLINED_FUNCTION_11_0();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v104 = (&v90 - v27);
  v28 = sub_2314E76F4(*v3, byte_28460FCD0);
  if (v29)
  {
    v30 = v6;
    if (qword_280D70420 == -1)
    {
LABEL_3:
      v31 = sub_231585FF4();
      __swift_project_value_buffer(v31, qword_280D72248);
      sub_2314F55F8(v3, v10);
      v32 = sub_231585FE4();
      v33 = sub_2315865E4();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        OUTLINED_FUNCTION_7_13(v35, 4.8149e-34);
        v110 = v10[*(v30 + 32)];
        v36 = DomainUseCase.rawValue.getter();
        MEMORY[0x23192FF80](v36);

        OUTLINED_FUNCTION_7_10();
        if (qword_27DD5ADC8 != -1)
        {
          OUTLINED_FUNCTION_0_35();
        }

        MEMORY[0x23192FF80](qword_27DD5B6A8, unk_27DD5B6B0);
        OUTLINED_FUNCTION_7_10();
        v110 = *v10;
        sub_231586A54();
        sub_2314F565C(v10);
        v37 = OUTLINED_FUNCTION_6_11();

        *(v34 + 4) = v37;
        _os_log_impl(&dword_231496000, v32, v33, "Unsupported time bucket range received %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x231931280](v35, -1, -1);
        OUTLINED_FUNCTION_27();
      }

      else
      {

        sub_2314F565C(v10);
      }

      v111 = sub_2315860F4();
      LOBYTE(v112) = 1;
      (a1)(&v111);
      return sub_2314A5EEC(v111, v112);
    }

LABEL_47:
    OUTLINED_FUNCTION_6_0();
    goto LABEL_3;
  }

  v109 = v18;
  v103 = v28;
  v92 = v13;
  v93 = a2;
  v30 = sub_2315860F4();
  v38 = v6[7];
  v39 = *(v3 + v6[6]);
  v91 = v6;
  LOBYTE(v111) = *(v3 + v6[8]);
  DomainUseCase.intentTypes.getter();
  v40 = sub_231585A44();
  v108 = v25;
  v94 = a1;
  v42 = v40;
  v90 = 0;

  v43 = sub_2315860F4();
  v44 = 0;
  v98 = v42;
  v45 = v42 + 64;
  v46 = 1 << *(v42 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  a1 = v47 & *(v42 + 64);
  v48 = (v46 + 63) >> 6;
  v95 = v97 + 16;
  v106 = v3;
  v107 = (v97 + 32);
  v100 = v42 + 64;
  v101 = v97 + 8;
  v10 = &unk_23158AE80;
  v49 = v109;
  v99 = v48;
  v102 = v14;
  if (!a1)
  {
LABEL_14:
    while (1)
    {
      v51 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v51 >= v48)
      {
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
        __swift_storeEnumTagSinglePayload(v25, 1, 1, v78);
        a1 = 0;
        goto LABEL_19;
      }

      a1 = *(v45 + 8 * v51);
      ++v44;
      if (a1)
      {
        v105 = v43;
        v50 = v14;
        v44 = v51;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  while (1)
  {
    v105 = v43;
    v50 = v14;
    v51 = v44;
LABEL_18:
    v52 = __clz(__rbit64(a1));
    a1 &= a1 - 1;
    v53 = v52 | (v51 << 6);
    v54 = (*(v98 + 48) + 16 * v53);
    v56 = *v54;
    v55 = v54[1];
    v57 = v97;
    v58 = v96;
    (*(v97 + 16))(v96, *(v98 + 56) + *(v97 + 72) * v53, v50);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
    v60 = *(v59 + 48);
    v61 = v108;
    *v108 = v56;
    *(v61 + 1) = v55;
    v25 = v61;
    v14 = v50;
    (*(v57 + 32))(&v61[v60], v58, v50);
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v59);

    v43 = v105;
    v3 = v106;
    v49 = v109;
LABEL_19:
    v62 = v25;
    v63 = v104;
    sub_2314F56B8(v62, v104);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
    if (__swift_getEnumTagSinglePayload(v63, 1, v64) == 1)
    {
      break;
    }

    v30 = *v63;
    v10 = v63[1];
    (*v107)(v49, v63 + *(v64 + 48), v14);
    v65 = sub_231585B44();
    if ((v103 & 0x8000000000000000) != 0)
    {
      goto LABEL_43;
    }

    if (v103 >= *(v65 + 16))
    {
      goto LABEL_44;
    }

    v3 = *(v65 + 2 * v103 + 32);

    swift_isUniquelyReferenced_nonNull_native();
    v111 = v43;
    v66 = sub_23149C888(v30, v10);
    if (__OFADD__(*(v43 + 16), (v67 & 1) == 0))
    {
      goto LABEL_45;
    }

    v14 = v66;
    v49 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
    if (sub_231586A64())
    {
      v68 = sub_23149C888(v30, v10);
      v25 = v108;
      if ((v49 & 1) != (v69 & 1))
      {
        result = sub_231586C84();
        __break(1u);
        return result;
      }

      v14 = v68;
    }

    else
    {
      v25 = v108;
    }

    if (v49)
    {

      v43 = v111;
      v70 = OUTLINED_FUNCTION_2_14();
      v71(v70);
    }

    else
    {
      v43 = v111;
      *(v111 + 8 * (v14 >> 6) + 64) |= 1 << v14;
      v72 = (*(v43 + 48) + 16 * v14);
      *v72 = v30;
      v72[1] = v10;
      v73 = OUTLINED_FUNCTION_2_14();
      v74(v73);
      v75 = *(v43 + 16);
      v76 = __OFADD__(v75, 1);
      v77 = v75 + 1;
      if (v76)
      {
        goto LABEL_46;
      }

      *(v43 + 16) = v77;
    }

    v3 = v106;
    v48 = v99;
    v45 = v100;
    v10 = &unk_23158AE80;
    if (!a1)
    {
      goto LABEL_14;
    }
  }

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v79 = sub_231585FF4();
  __swift_project_value_buffer(v79, qword_280D72248);
  v80 = v92;
  sub_2314F55F8(v3, v92);
  v81 = sub_231585FE4();
  v82 = sub_2315865D4();
  v83 = os_log_type_enabled(v81, v82);
  v84 = v94;
  if (v83)
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    OUTLINED_FUNCTION_7_13(v86, 4.8151e-34);
    v110 = v80[v91[8]];
    v87 = DomainUseCase.rawValue.getter();
    MEMORY[0x23192FF80](v87);

    OUTLINED_FUNCTION_7_10();
    if (qword_27DD5ADC8 != -1)
    {
      OUTLINED_FUNCTION_0_35();
    }

    MEMORY[0x23192FF80](qword_27DD5B6A8, unk_27DD5B6B0);
    OUTLINED_FUNCTION_7_10();
    v110 = *v80;
    sub_231586A54();
    sub_2314F565C(v80);
    v88 = OUTLINED_FUNCTION_6_11();

    *(v85 + 4) = v88;
    *(v85 + 12) = 2080;

    sub_2315860E4();

    v89 = OUTLINED_FUNCTION_6_11();

    *(v85 + 14) = v89;
    _os_log_impl(&dword_231496000, v81, v82, "%s value: %s", v85, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231931280](v86, -1, -1);
    OUTLINED_FUNCTION_27();
  }

  else
  {

    sub_2314F565C(v80);
  }

  v111 = v43;
  LOBYTE(v112) = 1;

  v84(&v111);
  sub_2314A5EEC(v111, v112);
}

uint64_t sub_2314F518C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314F51EC(v3, v1, v2);
}

uint64_t sub_2314F51EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v30 - v8;
  v10 = sub_231585D34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[3] = a2;
  v31[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v31, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2314B5064(v9);
LABEL_15:
    v22 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  (*(v11 + 32))(v14, v9, v10);
  v16 = (*(a3 + 24))(a2, a3);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = &unk_28460FF80;
  }

  v18 = (*(a3 + 48))(a2, a3);
  if (!v18)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v23 = sub_231585FF4();
    __swift_project_value_buffer(v23, qword_280D72248);
    v24 = sub_231585FE4();
    v25 = sub_2315865E4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30[2] = v27;
      *v26 = 136315138;
      v30[1] = type metadata accessor for DomainToContactFrequencyByIntentSignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B548, &qword_23158A958);
      sub_231586204();
      v28 = sub_2314A22E8();

      *(v26 + 4) = v28;
      _os_log_impl(&dword_231496000, v24, v25, "%s no intent given", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x231931280](v27, -1, -1);
      MEMORY[0x231931280](v26, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    goto LABEL_15;
  }

  v19 = v18;
  v20 = MEMORY[0x28223BE20](v18);
  v30[-2] = v14;
  v30[-1] = v20;
  sub_231543A1C(sub_2314F5804, &v30[-4], v17);
  v22 = v21;

  (*(v11 + 8))(v14, v10);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v22;
}