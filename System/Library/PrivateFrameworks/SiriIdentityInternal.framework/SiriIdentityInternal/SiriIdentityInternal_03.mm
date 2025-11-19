uint64_t sub_266E93AD4(uint64_t a1, uint64_t a2)
{
  sub_266E67C88();

  v4 = sub_266E93BA4(a1, a2, 0xD000000000000024, 0x8000000266EA3050);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = v4;
  sub_266E9C214();
  sub_266E9C1E4();
  sub_266E9C204();

  v6 = sub_266E9C1F4();

  return v6;
}

id sub_266E93BA4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v40 = a1;
  v7 = sub_266E9CFA4();
  v8 = OUTLINED_FUNCTION_2_1(v7);
  v41 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98E8, qword_266EA0EB8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v39 - v16;
  v18 = sub_266E9BE24();
  v19 = OUTLINED_FUNCTION_2_1(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a3;
  sub_266E9BE14();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {

    sub_266E93FC0(v17);
    if (qword_2800E8D80 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v7, qword_2800EC7E0);
    v27 = v41;
    (*(v41 + 16))(v13, v26, v7);

    v28 = sub_266E9CF84();
    v29 = sub_266E9D1A4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v42 = v31;
      *v30 = 136315138;
      v32 = sub_266E6E7D4(v39, a4, &v42);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_266E51000, v28, v29, "URL construction failed for %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x26D5F66A0](v31, -1, -1);
      MEMORY[0x26D5F66A0](v30, -1, -1);
    }

    else
    {
    }

    (*(v27 + 8))(v13, v7);
    return 0;
  }

  else
  {

    (*(v21 + 32))(v25, v17, v18);
    v33 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_266E94028(v40, a2, v33);
    v34 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
    v35 = sub_266E9BE04();
    [v34 setPunchOutUri_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98F0, &qword_266EA0950);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_266E9F380;
    *(v36 + 32) = v34;
    v37 = v34;
    sub_266E763AC(v36, v33);

    (*(v21 + 8))(v25, v18);
  }

  return v33;
}

uint64_t sub_266E93FC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98E8, qword_266EA0EB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_266E94028(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_266E9D014();

  [a3 setText_];
}

uint64_t sub_266E9408C()
{
  sub_266E54D04(v0);
  if (v1)
  {

    result = sub_266E54D04(v0);
    if (!v3)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

    v4 = result;
    v5 = v3;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      return 0;
    }
  }

  sub_266E54D10(v0);
  if (!v7)
  {
    return 1;
  }

  result = sub_266E54D10(v0);
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = result;
  v10 = v8;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  return v11 == 0;
}

id sub_266E94154(void *a1)
{
  v1 = a1;
  DeviceUnit.description.getter();

  v2 = sub_266E9D014();

  return v2;
}

uint64_t DeviceUnit.description.getter()
{
  sub_266E9D294();
  MEMORY[0x26D5F5CB0](0xD000000000000013, 0x8000000266EA3080);
  v0 = sub_266E9CE84();
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v0 = 0x3E6C696E3CLL;
    v2 = 0xE500000000000000;
  }

  MEMORY[0x26D5F5CB0](v0, v2);

  MEMORY[0x26D5F5CB0](0x747369737361202CLL, 0xEF203A6449746E61);
  v3 = sub_266E9CE74();
  MEMORY[0x26D5F5CB0](v3);

  MEMORY[0x26D5F5CB0](0x6D69786F7270202CLL, 0xED0000203A797469);
  sub_266E9CEA4();
  v4 = sub_266E9CF24();
  MEMORY[0x26D5F5CB0](v4);

  MEMORY[0x26D5F5CB0](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_266E94300(uint64_t a1)
{
  type metadata accessor for BaseDialogProvider();
  v2 = swift_allocObject();
  sub_266E846B4(a1, v5);
  v3 = sub_266E94F6C(v2, v5);
  sub_266E8E054(a1);
  return v3;
}

uint64_t sub_266E94388()
{
  OUTLINED_FUNCTION_7_0();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E94E0, &qword_266EA0FD0);
  v2 = sub_266E9C704();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_266E943FC()
{
  OUTLINED_FUNCTION_7_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_266E9CFA4();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266E944BC, 0, 0);
}

uint64_t sub_266E944BC()
{
  if (qword_2800E8D80 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = __swift_project_value_buffer(v3, qword_2800EC7E0);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_266E9CF84();
  v6 = sub_266E9D194();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_266E51000, v5, v6, "SwitchProfileUnsupportedValueFlowStrategy.makeUnsupportedValueOutput() called", v7, 2u);
    MEMORY[0x26D5F66A0](v7, -1, -1);
  }

  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];
  v11 = v0[3];

  (*(v9 + 8))(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E94E0, &qword_266EA0FD0);
  v12 = sub_266E9C714();
  v13 = [v12 unsupportedReason];

  v14 = SwitchProfileAccountUnsupportedReason.init(rawValue:)(v13);
  if (v15)
  {
    goto LABEL_6;
  }

  switch(v14)
  {
    case 5:
      v26 = v0[4];
      swift_task_alloc();
      OUTLINED_FUNCTION_20();
      v0[9] = v27;
      *v27 = v28;
      OUTLINED_FUNCTION_1_17(v27);

      return sub_266E668A8();
    case 4:
      v23 = v0[4];
      swift_task_alloc();
      OUTLINED_FUNCTION_20();
      v0[10] = v24;
      *v24 = v25;
      OUTLINED_FUNCTION_1_17(v24);

      return sub_266E669DC();
    case 3:
      v20 = v0[4];
      swift_task_alloc();
      OUTLINED_FUNCTION_20();
      v0[8] = v21;
      *v21 = v22;
      OUTLINED_FUNCTION_1_17(v21);

      return sub_266E65CA8();
    default:
LABEL_6:
      v16 = v0[4];
      swift_task_alloc();
      OUTLINED_FUNCTION_20();
      v0[11] = v17;
      *v17 = v18;
      OUTLINED_FUNCTION_1_17(v17);

      return sub_266E65988();
  }
}

uint64_t sub_266E947E4()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_5_9();
  v2 = *(v0 + 64);
  v3 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v4 = v3;

  OUTLINED_FUNCTION_3_11();
  v6 = *(v5 + 56);

  OUTLINED_FUNCTION_2_12();

  return v7();
}

uint64_t sub_266E948E0()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_5_9();
  v2 = *(v0 + 72);
  v3 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v4 = v3;

  OUTLINED_FUNCTION_3_11();
  v6 = *(v5 + 56);

  OUTLINED_FUNCTION_2_12();

  return v7();
}

uint64_t sub_266E949DC()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_5_9();
  v2 = *(v0 + 80);
  v3 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v4 = v3;

  OUTLINED_FUNCTION_3_11();
  v6 = *(v5 + 56);

  OUTLINED_FUNCTION_2_12();

  return v7();
}

uint64_t sub_266E94AD8()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_5_9();
  v2 = *(v0 + 88);
  v3 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v4 = v3;

  OUTLINED_FUNCTION_3_11();
  v6 = *(v5 + 56);

  OUTLINED_FUNCTION_2_12();

  return v7();
}

uint64_t sub_266E94BD4()
{
  sub_266E5D044(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_266E94C30()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266E608B8;

  return sub_266E943FC();
}

uint64_t sub_266E94CDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266E5FB68;

  return sub_266E94368(a1);
}

uint64_t sub_266E94D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B4C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SwitchProfileUnsupportedValueFlowStrategy();
  *v9 = v4;
  v9[1] = sub_266E60E24;

  return MEMORY[0x2821B9E00](a1, a2, v10, a4);
}

uint64_t sub_266E94E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[3] = type metadata accessor for BaseDialogProvider();
  v14[4] = &off_287876528;
  v14[0] = a1;
  sub_266E5CE50(v14, v12);
  sub_266E846B4(a2, v11);
  sub_266E5CE50(v12, __src);
  sub_266E846B4(v11, &v8);
  if (v9)
  {
    sub_266E8E054(v11);
    __swift_destroy_boxed_opaque_existential_0(v12);
    sub_266E5D10C(&v8, v10);
  }

  else
  {
    sub_266E9C7F4();
    sub_266E8E054(v11);
    __swift_destroy_boxed_opaque_existential_0(v12);
    if (v9)
    {
      sub_266E8E054(&v8);
    }
  }

  sub_266E5D10C(v10, &__src[5]);
  sub_266E5CE50(&__src[5], v10);
  type metadata accessor for LocUtil();
  v6 = swift_allocObject();
  sub_266E5D10C(v10, v6 + 16);
  __src[10] = v6;
  sub_266E8E054(a2);
  __swift_destroy_boxed_opaque_existential_0(v14);
  memcpy((a3 + 16), __src, 0x58uLL);
  return a3;
}

uint64_t sub_266E94F6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BaseDialogProvider();
  v14[3] = v4;
  v14[4] = &off_287876528;
  v14[0] = a1;
  type metadata accessor for SwitchProfileUnsupportedValueFlowStrategy();
  v5 = swift_allocObject();
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v14, v4);
  v7 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_266E94E34(*v9, a2, v5);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v11;
}

uint64_t OUTLINED_FUNCTION_2_12()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t SwitchType.description.getter()
{
  v0 = sub_266E9D3D4();
  MEMORY[0x26D5F5CB0](v0);

  return 0x3D65707974;
}

uint64_t sub_266E95144()
{
  v0 = sub_266E9CFA4();
  v1 = OUTLINED_FUNCTION_2_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v9 = __swift_project_value_buffer(v0, qword_2800EC7E0);
  (*(v3 + 16))(v8, v9, v0);
  v10 = sub_266E9CF84();
  v11 = sub_266E9D194();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_266E51000, v10, v11, "GuardedFlow on | returning true", v12, 2u);
    MEMORY[0x26D5F66A0](v12, -1, -1);
  }

  (*(v3 + 8))(v8, v0);
  return 1;
}

uint64_t sub_266E952B0(void (*a1)(void))
{
  v2 = sub_266E9C514();
  v3 = OUTLINED_FUNCTION_2_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v11 = sub_266E9CFA4();
  v12 = OUTLINED_FUNCTION_2_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v19 = v18 - v17;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v20 = __swift_project_value_buffer(v11, qword_2800EC7E0);
  (*(v14 + 16))(v19, v20, v11);
  v21 = sub_266E9CF84();
  v22 = sub_266E9D194();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = a1;
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_266E51000, v21, v22, "GuardedFlow executing | executing flow with guards", v24, 2u);
    v25 = v24;
    a1 = v23;
    MEMORY[0x26D5F66A0](v25, -1, -1);
  }

  (*(v14 + 8))(v19, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98F8, &qword_266EA10C0);
  v26 = *(sub_266E9C084() - 8);
  v27 = *(v26 + 72);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  *(swift_allocObject() + 16) = xmmword_266E9ED60;
  sub_266E9C074();
  sub_266E9BEB4();

  sub_266E9C054();
  sub_266E9C064();
  sub_266E9C174();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9900, &qword_266EA10C8);
  sub_266E958A0();
  sub_266E9C4E4();

  a1(v10);

  return (*(v5 + 8))(v10, v2);
}

uint64_t sub_266E95634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_266E956E4;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_266E956E4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_266E957E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B888] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_266E59244;

  return MEMORY[0x2821BA640](a1, a2, a3);
}

unint64_t sub_266E958A0()
{
  result = qword_2800E9908;
  if (!qword_2800E9908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800E9900, &qword_266EA10C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9908);
  }

  return result;
}

double sub_266E95904@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_266E97FDC(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_266E54110(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_266E95968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_266E97FDC(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for UserAccount();
    sub_266E981D4(v9 + *(*(v10 - 8) + 72) * v8, a4);
    v11 = a4;
    v12 = 0;
    v13 = 1;
    v14 = v10;
  }

  else
  {
    type metadata accessor for UserAccount();
    v11 = OUTLINED_FUNCTION_20_5();
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_266E95A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_266E97FDC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_266E95A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_5_10(sub_266E95A7C);
}

uint64_t sub_266E95A7C()
{
  OUTLINED_FUNCTION_7_0();
  v1 = sub_266E9CFE4();
  v0[6] = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  v0[7] = v2;
  *v2 = v3;
  v2[1] = sub_266E95B40;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return sub_266E81A40(v6, v7, v4, v1);
}

uint64_t sub_266E95B40()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;

  OUTLINED_FUNCTION_8_0();

  return v6();
}

uint64_t sub_266E95C3C()
{
  v0 = sub_266E9D3A4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266E95C90@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v1 = sub_266E9C7D4();
  v2 = OUTLINED_FUNCTION_2_1(v1);
  v66 = v3;
  v67 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v65 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_266E9C7E4();
  v7 = OUTLINED_FUNCTION_2_1(v70);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_3();
  v60 = v12;
  OUTLINED_FUNCTION_25_1();
  MEMORY[0x28223BE20](v13);
  v69 = &v59 - v14;
  OUTLINED_FUNCTION_25_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v59 - v16;
  v18 = sub_266E9CFA4();
  v19 = OUTLINED_FUNCTION_2_1(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17_3();
  v68 = v24;
  OUTLINED_FUNCTION_25_1();
  MEMORY[0x28223BE20](v25);
  v62 = &v59 - v26;
  OUTLINED_FUNCTION_25_1();
  MEMORY[0x28223BE20](v27);
  v29 = &v59 - v28;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v30 = __swift_project_value_buffer(v18, qword_2800EC7E0);
  v31 = *(v21 + 16);
  v63 = v30;
  v64 = v31;
  (v31)(v29);
  v32 = sub_266E9CF84();
  v33 = sub_266E9D194();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_5_0();
    *v34 = 0;
    _os_log_impl(&dword_266E51000, v32, v33, "DeviceConfirmationStrategy.actionForInput() called", v34, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v35 = *(v21 + 8);
  v35(v29, v18);
  sub_266E9C794();
  v36 = sub_266E7B898(v17, &v72);
  v37 = *(v9 + 8);
  v38 = v17;
  v39 = v70;
  v37(v38, v70, v36);
  if (!v73)
  {
    v59 = v37;
    sub_266E54DA8(&v72, &unk_2800E9590, &unk_266E9EC80);
    v45 = v69;
    sub_266E9C794();
    if ((*(v9 + 88))(v45, v39) == *MEMORY[0x277D5C150])
    {
      v46 = v60;
      (*(v9 + 16))(v60, v45, v39);
      (*(v9 + 96))(v46, v39);
      (*(v66 + 32))(v65, v46, v67);
      if (sub_266E9C7B4() == *(v61 + 152) && v47 == *(v61 + 160))
      {
      }

      else
      {
        v49 = sub_266E9D3E4();

        if ((v49 & 1) == 0)
        {
          (*(v66 + 8))(v65, v67);
          goto LABEL_15;
        }
      }

      v64(v62, v63, v18);
      v55 = sub_266E9CF84();
      v56 = sub_266E9D194();
      if (os_log_type_enabled(v55, v56))
      {
        *OUTLINED_FUNCTION_5_0() = 0;
        OUTLINED_FUNCTION_26_2(&dword_266E51000, v57, v58, "DeviceConfirmationStrategy.actionForInput() called for directInvocation");
        v45 = v69;
        OUTLINED_FUNCTION_4_0();
      }

      v35(v62, v18);
      sub_266E9C384();
      (*(v66 + 8))(v65, v67);
      return v59(v45, v39);
    }

LABEL_15:
    v64(v68, v63, v18);
    v50 = sub_266E9CF84();
    v51 = sub_266E9D194();
    if (os_log_type_enabled(v50, v51))
    {
      *OUTLINED_FUNCTION_5_0() = 0;
      OUTLINED_FUNCTION_26_2(&dword_266E51000, v52, v53, "DeviceConfirmationStrategy.actionForInput() called for default");
      v45 = v69;
      OUTLINED_FUNCTION_4_0();
    }

    v35(v68, v18);
    sub_266E9C394();
    return v59(v45, v39);
  }

  sub_266E595F8(&v72, v74);
  v40 = v74[4];
  __swift_project_boxed_opaque_existential_0(v74, v74[3]);
  v41 = *(v40 + 16);
  v42 = OUTLINED_FUNCTION_16();
  v44 = v43(v42);
  if (v44 >= 2)
  {
    if (v44 == 2)
    {
      sub_266E9C374();
    }

    else
    {
      sub_266E9C394();
    }
  }

  else
  {
    sub_266E9C384();
  }

  return __swift_destroy_boxed_opaque_existential_0(v74);
}

uint64_t sub_266E96274()
{
  OUTLINED_FUNCTION_7_0();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E95B8, &qword_266E9F7C0);
  OUTLINED_FUNCTION_19(v4);
  v6 = *(v5 + 64);
  v1[21] = OUTLINED_FUNCTION_18();
  v7 = sub_266E9C7D4();
  v1[22] = v7;
  OUTLINED_FUNCTION_5_1(v7);
  v1[23] = v8;
  v10 = *(v9 + 64);
  v1[24] = OUTLINED_FUNCTION_18();
  v11 = sub_266E9C7E4();
  v1[25] = v11;
  OUTLINED_FUNCTION_5_1(v11);
  v1[26] = v12;
  v14 = *(v13 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v15 = sub_266E9C614();
  v1[30] = v15;
  OUTLINED_FUNCTION_5_1(v15);
  v1[31] = v16;
  v18 = *(v17 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v19 = sub_266E9CFA4();
  v1[34] = v19;
  OUTLINED_FUNCTION_5_1(v19);
  v1[35] = v20;
  v22 = *(v21 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_266E96480()
{
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v100 = __swift_project_value_buffer(*(v0 + 272), qword_2800EC7E0);
  v103 = *(v2 + 16);
  v103(v1);
  v3 = sub_266E9CF84();
  v4 = sub_266E9D194();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_5_0();
    *v5 = 0;
    _os_log_impl(&dword_266E51000, v3, v4, "DeviceConfirmationStrategy.parseConfirmationResponse() called", v5, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v6 = *(v0 + 304);
  v7 = *(v0 + 272);
  v8 = *(v0 + 280);
  v9 = *(v0 + 232);
  v11 = *(v0 + 200);
  v10 = *(v0 + 208);
  v12 = *(v0 + 152);

  v13 = *(v8 + 8);
  v13(v6, v7);
  sub_266E9C794();
  v14 = sub_266E7B898(v9, v0 + 56);
  v15 = *(v10 + 8);
  v15(v9, v11, v14);
  if (*(v0 + 80))
  {
    v16 = *(v0 + 296);
    v17 = *(v0 + 272);
    sub_266E595F8((v0 + 56), v0 + 16);
    (v103)(v16, v100, v17);
    v18 = sub_266E9CF84();
    v19 = sub_266E9D194();
    if (OUTLINED_FUNCTION_31_0(v19))
    {
      v20 = OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_50(v20);
      OUTLINED_FUNCTION_16_1(&dword_266E51000, v21, v22, "DeviceConfirmationStrategy.actionForInput() called for NLv3IntentOnly");
      OUTLINED_FUNCTION_10();
    }

    v23 = *(v0 + 296);
    v24 = *(v0 + 272);
    v25 = *(v0 + 280);

    v26 = OUTLINED_FUNCTION_16();
    (v13)(v26);
    v27 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v28 = *(v27 + 16);
    v29 = OUTLINED_FUNCTION_16();
    switch(v30(v29))
    {
      case 1u:
      case 2u:
        v56 = sub_266E9D3E4();

        if ((v56 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      case 3u:
LABEL_22:
        v57 = MEMORY[0x277D5BED0];
        break;
      default:

LABEL_21:
        v57 = MEMORY[0x277D5BED8];
        break;
    }

    v58 = *(v0 + 256);
    v59 = *(v0 + 264);
    v60 = *(v0 + 240);
    v61 = *(v0 + 248);
    (*(v61 + 104))(v58, *v57, v60);
    (*(v61 + 32))(v59, v58, v60);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
LABEL_24:
    v63 = *(v0 + 296);
    v62 = *(v0 + 304);
    v64 = *(v0 + 288);
    v65 = *(v0 + 264);
    v67 = *(v0 + 240);
    v66 = *(v0 + 248);
    v98 = *(v0 + 232);
    v99 = *(v0 + 224);
    v101 = *(v0 + 216);
    v104 = *(v0 + 192);
    v68 = *(v0 + 168);
    v69 = *(v0 + 144);
    (*(v66 + 16))(v68, v65, v67);
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v67);
    sub_266E9C784();
    (*(v66 + 8))(v65, v67);

    OUTLINED_FUNCTION_8_0();
    goto LABEL_37;
  }

  v97 = v15;
  v31 = *(v0 + 224);
  v32 = *(v0 + 200);
  v33 = *(v0 + 208);
  v34 = *(v0 + 152);
  sub_266E54DA8(v0 + 56, &unk_2800E9590, &unk_266E9EC80);
  sub_266E9C794();
  if ((*(v33 + 88))(v31, v32) != *MEMORY[0x277D5C150])
  {
    goto LABEL_17;
  }

  v35 = *(v0 + 216);
  v36 = *(v0 + 200);
  v37 = *(v0 + 208);
  v39 = *(v0 + 184);
  v38 = *(v0 + 192);
  v40 = *(v0 + 176);
  v41 = *(v0 + 160);
  (*(v37 + 16))(v35, *(v0 + 224), v36);
  (*(v37 + 96))(v35, v36);
  (*(v39 + 32))(v38, v35, v40);
  if (sub_266E9C7B4() == *(v41 + 152) && v42 == *(v41 + 160))
  {
  }

  else
  {
    v44 = sub_266E9D3E4();

    if ((v44 & 1) == 0)
    {
      (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
LABEL_17:
      (v103)(*(v0 + 288), v100, *(v0 + 272));
      v45 = sub_266E9CF84();
      v46 = sub_266E9D1A4();
      if (OUTLINED_FUNCTION_31_0(v46))
      {
        v47 = OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_50(v47);
        OUTLINED_FUNCTION_16_1(&dword_266E51000, v48, v49, "Unsupported parse type");
        OUTLINED_FUNCTION_10();
      }

      v51 = *(v0 + 280);
      v50 = *(v0 + 288);
      v52 = *(v0 + 272);

      v53 = OUTLINED_FUNCTION_16();
      (v13)(v53);
      type metadata accessor for IdentityFlowError();
      swift_allocObject();
      v54 = sub_266E89698(3);
      sub_266E8465C();
      OUTLINED_FUNCTION_50_0();
      *v55 = v54;
      swift_willThrow();
      goto LABEL_36;
    }
  }

  v71 = *(v0 + 192);
  v72 = sub_266E9C7C4();
  if (v72)
  {
    sub_266E95904(0xD000000000000011, 0x8000000266EA31C0, v72, (v0 + 96));

    if (*(v0 + 120))
    {
      if (swift_dynamicCast())
      {
        v73 = *(v0 + 128);
        v74 = *(v0 + 136);
        v75 = sub_266E95C3C();
        if (v75 != 2)
        {
          v76 = v75;
          v77 = *(v0 + 264);
          v78 = *(v0 + 240);
          v79 = *(v0 + 248);
          v80 = *(v0 + 224);
          v81 = *(v0 + 200);
          (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
          v82 = MEMORY[0x277D5BED0];
          if ((v76 & 1) == 0)
          {
            v82 = MEMORY[0x277D5BED8];
          }

          (*(v79 + 104))(v77, *v82, v78);
          v97(v80, v81);
          goto LABEL_24;
        }
      }

      goto LABEL_35;
    }
  }

  else
  {
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
  }

  sub_266E54DA8(v0 + 96, &qword_2800E9278, &qword_266E9F5F0);
LABEL_35:
  v84 = *(v0 + 184);
  v83 = *(v0 + 192);
  v85 = *(v0 + 176);
  type metadata accessor for IdentityFlowError();
  swift_allocObject();
  v86 = sub_266E89698(3);
  sub_266E8465C();
  swift_allocError();
  *v87 = v86;
  swift_willThrow();
  (*(v84 + 8))(v83, v85);
LABEL_36:
  v89 = *(v0 + 296);
  v88 = *(v0 + 304);
  v90 = *(v0 + 288);
  v92 = *(v0 + 256);
  v91 = *(v0 + 264);
  v93 = *(v0 + 232);
  v94 = *(v0 + 216);
  v95 = *(v0 + 192);
  v102 = *(v0 + 168);
  v97(*(v0 + 224), *(v0 + 200));

  OUTLINED_FUNCTION_8_0();
LABEL_37:

  return v70();
}

uint64_t sub_266E96C58()
{
  OUTLINED_FUNCTION_7_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E94C0, &unk_266E9EFC0);
  OUTLINED_FUNCTION_19(v4);
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_18();
  v7 = sub_266E9C5D4();
  v1[11] = v7;
  OUTLINED_FUNCTION_5_1(v7);
  v1[12] = v8;
  v10 = *(v9 + 64);
  v1[13] = OUTLINED_FUNCTION_18();
  v11 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266E96D2C()
{
  v1 = v0[8];
  sub_266E9CEA4();
  v2 = sub_266E9CF34();
  if (v2 == sub_266E9CF34() || (v3 = v0[8], sub_266E9CEA4(), v4 = sub_266E9CF34(), v5 = 0, v6 = 0, v4 == sub_266E9CF34()))
  {
    v7 = v0[8];
    v5 = sub_266E9CE84();
    v6 = v8;
  }

  v0[14] = v6;
  v9 = v0[9];
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  v0[15] = v10;
  *v10 = v11;
  v10[1] = sub_266E96E30;
  v12 = v0[13];

  return sub_266E66CB8(v12, v5, v6);
}

uint64_t sub_266E96E30()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *(v4 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v8 = v7;
  *(v9 + 128) = v0;

  if (v0)
  {
    v10 = sub_266E970D0;
  }

  else
  {
    v10 = sub_266E96F48;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_266E96F48()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[7];
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v5[5]);
  sub_266E9C2B4();
  sub_266E9C5C4();
  sub_266E9274C();
  v8 = sub_266E9C5B4();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v8);
  sub_266E9C834();
  OUTLINED_FUNCTION_17_5();
  v9 = MEMORY[0x277D5C1D8];
  v6[3] = v10;
  v6[4] = v9;
  __swift_allocate_boxed_opaque_existential_1Tm(v6);
  sub_266E9C4B4();
  sub_266E54DA8(v7, &qword_2800E94D0, &unk_266E9F5C0);
  sub_266E54DA8(v3, &qword_2800E94C0, &unk_266E9EFC0);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_8_0();

  return v11();
}

uint64_t sub_266E970D0()
{
  OUTLINED_FUNCTION_7_0();
  v1 = v0[13];
  v2 = v0[10];

  OUTLINED_FUNCTION_8_0();
  v4 = v0[16];

  return v3();
}

uint64_t sub_266E97138()
{
  OUTLINED_FUNCTION_7_0();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E94C0, &unk_266E9EFC0);
  OUTLINED_FUNCTION_19(v3);
  v5 = *(v4 + 64);
  v1[9] = OUTLINED_FUNCTION_18();
  v6 = sub_266E9C5D4();
  v1[10] = v6;
  OUTLINED_FUNCTION_5_1(v6);
  v1[11] = v7;
  v9 = *(v8 + 64);
  v1[12] = OUTLINED_FUNCTION_18();
  v10 = sub_266E9CFA4();
  v1[13] = v10;
  OUTLINED_FUNCTION_5_1(v10);
  v1[14] = v11;
  v13 = *(v12 + 64);
  v1[15] = OUTLINED_FUNCTION_18();
  v14 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266E97254()
{
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = v0[14];
  v1 = v0[15];
  __swift_project_value_buffer(v0[13], qword_2800EC7E0);
  v3 = OUTLINED_FUNCTION_4_1();
  v4(v3);
  v5 = sub_266E9CF84();
  v6 = sub_266E9D194();
  if (OUTLINED_FUNCTION_31_0(v6))
  {
    v7 = OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_50(v7);
    OUTLINED_FUNCTION_16_1(&dword_266E51000, v8, v9, "DeviceConfirmationStrategy.makeConfirmationRejectedResponse() called");
    OUTLINED_FUNCTION_10();
  }

  v11 = v0[14];
  v10 = v0[15];
  v12 = v0[13];
  v13 = v0[8];

  v14 = *(v11 + 8);
  v15 = OUTLINED_FUNCTION_16();
  v16(v15);
  v17 = *__swift_project_boxed_opaque_existential_0((v13 + 56), *(v13 + 80));
  OUTLINED_FUNCTION_9_4(&dword_266EA1210);
  OUTLINED_FUNCTION_20();
  v0[16] = v18;
  *v18 = v19;
  v20 = OUTLINED_FUNCTION_8_5(v18);

  return v21(v20);
}

uint64_t sub_266E973A8()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v7 = v6;
  *(v8 + 136) = v0;

  if (v0)
  {
    v9 = sub_266E974A4;
  }

  else
  {
    v9 = sub_266E97518;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_266E974A4()
{
  OUTLINED_FUNCTION_7_0();
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[9];

  OUTLINED_FUNCTION_8_0();
  v5 = v0[17];

  return v4();
}

uint64_t sub_266E97518()
{
  v16 = v0[15];
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = *(v5 + 40);
  __swift_project_boxed_opaque_existential_0((v5 + 16), v7);
  sub_266E9C2B4();
  sub_266E9C5B4();
  v8 = OUTLINED_FUNCTION_20_5();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  sub_266E9C834();
  OUTLINED_FUNCTION_17_5();
  v12 = MEMORY[0x277D5C1D8];
  v6[3] = v13;
  v6[4] = v12;
  __swift_allocate_boxed_opaque_existential_1Tm(v6);
  sub_266E9C494();
  sub_266E54DA8(v7, &qword_2800E94D0, &unk_266E9F5C0);
  sub_266E54DA8(v3, &qword_2800E94C0, &unk_266E9EFC0);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_8_0();

  return v14();
}

uint64_t sub_266E97688()
{
  OUTLINED_FUNCTION_7_0();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E94C0, &unk_266E9EFC0);
  OUTLINED_FUNCTION_19(v3);
  v5 = *(v4 + 64);
  v1[9] = OUTLINED_FUNCTION_18();
  v6 = sub_266E9C5D4();
  v1[10] = v6;
  OUTLINED_FUNCTION_5_1(v6);
  v1[11] = v7;
  v9 = *(v8 + 64);
  v1[12] = OUTLINED_FUNCTION_18();
  v10 = sub_266E9CFA4();
  v1[13] = v10;
  OUTLINED_FUNCTION_5_1(v10);
  v1[14] = v11;
  v13 = *(v12 + 64);
  v1[15] = OUTLINED_FUNCTION_18();
  v14 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266E977A4()
{
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = v0[14];
  v1 = v0[15];
  __swift_project_value_buffer(v0[13], qword_2800EC7E0);
  v3 = OUTLINED_FUNCTION_4_1();
  v4(v3);
  v5 = sub_266E9CF84();
  v6 = sub_266E9D194();
  if (OUTLINED_FUNCTION_31_0(v6))
  {
    v7 = OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_50(v7);
    OUTLINED_FUNCTION_16_1(&dword_266E51000, v8, v9, "DeviceConfirmationStrategy.makeFlowCancelledResponse() called");
    OUTLINED_FUNCTION_10();
  }

  v11 = v0[14];
  v10 = v0[15];
  v12 = v0[13];
  v13 = v0[8];

  v14 = *(v11 + 8);
  v15 = OUTLINED_FUNCTION_16();
  v16(v15);
  v17 = *__swift_project_boxed_opaque_existential_0((v13 + 56), *(v13 + 80));
  OUTLINED_FUNCTION_9_4(&dword_266EA1210);
  OUTLINED_FUNCTION_20();
  v0[16] = v18;
  *v18 = v19;
  v20 = OUTLINED_FUNCTION_8_5(v18);

  return v21(v20);
}

uint64_t sub_266E978F8()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v7 = v6;
  *(v8 + 136) = v0;

  if (v0)
  {
    v9 = sub_266E98244;
  }

  else
  {
    v9 = sub_266E98238;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_266E97A08()
{
  type metadata accessor for IdentityFlowError();
  swift_allocObject();
  v0 = sub_266E89698(3);
  sub_266E8465C();
  OUTLINED_FUNCTION_50_0();
  *v1 = v0;
  swift_willThrow();
  OUTLINED_FUNCTION_8_0();

  return v2();
}

uint64_t *sub_266E97AA8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_266E5D044((v0 + 7));
  v1 = v0[18];

  v2 = v0[20];

  return v0;
}

uint64_t sub_266E97AE0()
{
  sub_266E97AA8();

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

uint64_t sub_266E97B48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266E765F8;

  return sub_266E96274();
}

uint64_t sub_266E97BF0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_266E765F8;

  return sub_266E96C58();
}

uint64_t sub_266E97C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B658] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeviceConfirmationStrategy();
  *v9 = v4;
  v9[1] = sub_266E765F8;

  return MEMORY[0x2821BA040](a1, a2, v10, a4);
}

uint64_t sub_266E97D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B660] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeviceConfirmationStrategy();
  *v9 = v4;
  v9[1] = sub_266E765F8;

  return MEMORY[0x2821BA048](a1, a2, v10, a4);
}

uint64_t sub_266E97E20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266E5C6A4;

  return sub_266E97138();
}

uint64_t sub_266E97EB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266E765F8;

  return sub_266E97688();
}

uint64_t sub_266E97F50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266E765F8;

  return sub_266E979F4();
}

unint64_t sub_266E97FDC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_266E9D484();
  sub_266E9D074();
  v6 = sub_266E9D4A4();

  return sub_266E980C0(a1, a2, v6);
}

unint64_t sub_266E98058(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_266E9D484();
  MEMORY[0x26D5F60C0](a1);
  v4 = sub_266E9D4A4();
  return sub_266E98174(a1, v4);
}

unint64_t sub_266E980C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_266E9D3E4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_266E98174(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

uint64_t sub_266E981D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserAccount();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double OUTLINED_FUNCTION_17_5()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  return result;
}

void OUTLINED_FUNCTION_26_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_266E982E4()
{
  v0 = sub_266E9CFA4();
  __swift_allocate_value_buffer(v0, qword_2800EC7F8);
  __swift_project_value_buffer(v0, qword_2800EC7F8);
  return sub_266E9CF94();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_266E983F8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_266E9CFA4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_266E9CF94();
}

id UserIdentifyIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t UserIdentifyIdentityUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 9) < 0xFFFFFFFFFFFFFFF8)
  {
    return 0;
  }

  return result;
}

id UserIdentifyIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserIdentifyIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id UserIdentifyIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id UserIdentifyIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for UserIdentifyIntent();
  v9 = OUTLINED_FUNCTION_0_18(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id UserIdentifyIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_266E9D014();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id UserIdentifyIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_266E9D014();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for UserIdentifyIntent();
  v12 = OUTLINED_FUNCTION_0_18(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id UserIdentifyIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_1_18();

  v3 = sub_266E9D014();

  if (v1)
  {
    v4 = sub_266E9CFB4();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id UserIdentifyIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_1_18();

  v3 = sub_266E9D014();

  if (v1)
  {
    v4 = sub_266E9CFB4();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for UserIdentifyIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t UserIdentifyIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result - 100 >= 4)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_266E98A20@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = UserIdentifyIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t UserIdentifyIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___UserIdentifyIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266E98AE4(uint64_t a1)
{
  v3 = OBJC_IVAR___UserIdentifyIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *UserIdentifyIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___UserIdentifyIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id UserIdentifyIntentResponse.init()()
{
  *&v0[OBJC_IVAR___UserIdentifyIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserIdentifyIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id UserIdentifyIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___UserIdentifyIntentResponse_code) = 0;
  v13 = type metadata accessor for UserIdentifyIntentResponse();
  v9 = OUTLINED_FUNCTION_0_18(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id UserIdentifyIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id UserIdentifyIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___UserIdentifyIntentResponse_code) = 0;
  v13 = type metadata accessor for UserIdentifyIntentResponse();
  v9 = OUTLINED_FUNCTION_0_18(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id UserIdentifyIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_266E9CFB4();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id UserIdentifyIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___UserIdentifyIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_266E9CFB4();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for UserIdentifyIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_266E98FD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = UserIdentifyIdentityUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static UserIdentifyIdentityResolutionResult.unsupported(forReason:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason_];

  return v1;
}

id UserIdentifyIdentityResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266E9CFB4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id UserIdentifyIdentityResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266E9CFB4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for UserIdentifyIdentityResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266E99274(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266E992B0()
{
  result = qword_2800E9918;
  if (!qword_2800E9918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9918);
  }

  return result;
}

unint64_t sub_266E99308()
{
  result = qword_2800E9920;
  if (!qword_2800E9920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9920);
  }

  return result;
}

uint64_t sub_266E9935C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = UserIdentifyIntentResponse.code.getter();
  *a2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_18()
{

  return sub_266E9D014();
}

uint64_t CaseType.init(rawValue:)(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_266E99420@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = CaseType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static CaseTypeResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id static CaseTypeResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id CaseTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266E9CFB4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id CaseTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266E9CFB4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for CaseTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id CaseTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CaseTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266E99760()
{
  result = qword_2800E9928;
  if (!qword_2800E9928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9928);
  }

  return result;
}

id static IdentityResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___IdentityResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static IdentityResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_266E99920();

    sub_266E9D384();
  }

  else
  {

    sub_266E9D3F4();
    sub_266E99920();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_266E99920();
  v2 = sub_266E9D0B4();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___IdentityResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

unint64_t sub_266E99920()
{
  result = qword_2800E9930;
  if (!qword_2800E9930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800E9930);
  }

  return result;
}

id static IdentityResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___IdentityResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id Identity.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_19();
  if (v2)
  {
    v3 = sub_266E9D014();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266E9D014();

  if (v1)
  {
    v5 = sub_266E9D014();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id Identity.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_19();
  if (v2)
  {
    v3 = sub_266E9D014();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266E9D014();

  if (v1)
  {
    v5 = sub_266E9D014();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for Identity();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id Identity.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id Identity.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for Identity();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id IdentityResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266E9CFB4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id IdentityResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266E9CFB4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for IdentityResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266E9A0F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_19()
{

  return sub_266E9D374();
}

id SwitchProfileIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t SwitchProfileAccountUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0;
  }

  return result;
}

id SwitchProfileIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwitchProfileIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SwitchProfileIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SwitchProfileIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for SwitchProfileIntent();
  v9 = OUTLINED_FUNCTION_0_18(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SwitchProfileIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_266E9D014();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SwitchProfileIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_266E9D014();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for SwitchProfileIntent();
  v12 = OUTLINED_FUNCTION_0_18(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id SwitchProfileIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_1_18();

  v3 = sub_266E9D014();

  if (v1)
  {
    v4 = sub_266E9CFB4();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id SwitchProfileIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_1_18();

  v3 = sub_266E9D014();

  if (v1)
  {
    v4 = sub_266E9CFB4();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for SwitchProfileIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t SwitchProfileIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result - 100 >= 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_266E9A6E4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SwitchProfileIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t SwitchProfileIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___SwitchProfileIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266E9A7A8(uint64_t a1)
{
  v3 = OBJC_IVAR___SwitchProfileIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *SwitchProfileIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SwitchProfileIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SwitchProfileIntentResponse.init()()
{
  *&v0[OBJC_IVAR___SwitchProfileIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwitchProfileIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SwitchProfileIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___SwitchProfileIntentResponse_code) = 0;
  v13 = type metadata accessor for SwitchProfileIntentResponse();
  v9 = OUTLINED_FUNCTION_0_18(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SwitchProfileIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SwitchProfileIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___SwitchProfileIntentResponse_code) = 0;
  v13 = type metadata accessor for SwitchProfileIntentResponse();
  v9 = OUTLINED_FUNCTION_0_18(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SwitchProfileIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_266E9CFB4();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SwitchProfileIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SwitchProfileIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_266E9CFB4();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SwitchProfileIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_266E9AC98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SwitchProfileAccountUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static SwitchProfileAccountResolutionResult.unsupported(forReason:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason_];

  return v1;
}

id SwitchProfileAccountResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266E9CFB4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SwitchProfileAccountResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266E9CFB4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SwitchProfileAccountResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266E9AF2C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266E9AF68()
{
  result = qword_2800E9940;
  if (!qword_2800E9940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9940);
  }

  return result;
}

unint64_t sub_266E9AFC0()
{
  result = qword_2800E9948;
  if (!qword_2800E9948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9948);
  }

  return result;
}

uint64_t sub_266E9B014@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = SwitchProfileIntentResponse.code.getter();
  *a2 = result;
  return result;
}

unint64_t SwitchType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266E9B0A4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SwitchType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static SwitchTypeResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id static SwitchTypeResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id SwitchTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266E9CFB4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SwitchTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266E9CFB4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SwitchTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id SwitchTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwitchTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266E9B3E4()
{
  result = qword_2800E9950;
  if (!qword_2800E9950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9950);
  }

  return result;
}

id static AccountResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___AccountResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static AccountResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_266E99920();

    sub_266E9D384();
  }

  else
  {

    sub_266E9D3F4();
    sub_266E99920();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_266E99920();
  v2 = sub_266E9D0B4();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___AccountResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id static AccountResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___AccountResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id Account.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_19();
  if (v2)
  {
    v3 = sub_266E9D014();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266E9D014();

  if (v1)
  {
    v5 = sub_266E9D014();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id Account.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_19();
  if (v2)
  {
    v3 = sub_266E9D014();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266E9D014();

  if (v1)
  {
    v5 = sub_266E9D014();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for Account();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id Account.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id Account.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for Account();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id AccountResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266E9CFB4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id AccountResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266E9CFB4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for AccountResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266E9BD34(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_20()
{

  return sub_266E9D374();
}