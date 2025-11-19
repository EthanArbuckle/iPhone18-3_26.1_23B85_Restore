uint64_t sub_2236F0954()
{
  v1 = type metadata accessor for RequestInfo.UserQuery(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for RequestInfo.UserInput(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userInput;
  swift_beginAccess();
  sub_2236F16E0(v0 + v12, v11, type metadata accessor for RequestInfo.UserInput);
  if ((*(v2 + 48))(v11, 1, v1) == 1)
  {
    LOBYTE(v13) = 0;
    return v13 & 1;
  }

  sub_2236F1748(v11, v6, type metadata accessor for RequestInfo.UserQuery);
  v14 = v6[3];
  v13 = v6[1];
  if (!v14)
  {
    v17 = v6[1];

    sub_223644698(v6, type metadata accessor for RequestInfo.UserQuery);
    if (!v13)
    {
      return v13 & 1;
    }

LABEL_13:
    LOBYTE(v13) = 1;
    return v13 & 1;
  }

  if (!v13)
  {
    sub_223644698(v6, type metadata accessor for RequestInfo.UserQuery);
    goto LABEL_13;
  }

  if (v6[2] == *v6 && v14 == v13)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v16 = v6[1];
    LOBYTE(v13) = sub_22372B6E8() ^ 1;
  }

  sub_223644698(v6, type metadata accessor for RequestInfo.UserQuery);
  return v13 & 1;
}

void sub_2236F0B88()
{
  v0 = sub_223727408();
  if (v1 <= 0x3F)
  {
    v14 = *(v0 - 8) + 64;
    v2 = sub_22372A548();
    if (v3 <= 0x3F)
    {
      v15 = *(v2 - 8) + 64;
      v4 = type metadata accessor for RequestInfo.UserInput(319);
      if (v5 <= 0x3F)
      {
        v16 = *(v4 - 8) + 64;
        v6 = type metadata accessor for RequestInfo.RequestRoute(319);
        if (v7 <= 0x3F)
        {
          v17 = *(v6 - 8) + 64;
          sub_2236F0FDC(319, &qword_28132B518, MEMORY[0x277D5D028]);
          if (v9 <= 0x3F)
          {
            v18 = *(v8 - 8) + 64;
            sub_2236F0FDC(319, &qword_28132B570, MEMORY[0x277D5CD88]);
            if (v11 <= 0x3F)
            {
              v19 = *(v10 - 8) + 64;
              v12 = sub_2237287C8();
              if (v13 <= 0x3F)
              {
                v20 = *(v12 - 8) + 64;
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2236F0E0C()
{
  sub_2236F0FDC(319, qword_2813292A8, type metadata accessor for IntelligenceFlowPrescribedTool);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_2236F0EA8()
{
  v0 = type metadata accessor for RequestInfo.UserQuery(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_2236F0F00()
{
  sub_2236B7B74();
  if (v0 <= 0x3F)
  {
    sub_2236F0FDC(319, &qword_28132B580, MEMORY[0x277D5CBD8]);
    if (v1 <= 0x3F)
    {
      sub_2236F0FDC(319, &qword_28132B588, MEMORY[0x277D5CBB8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2236F0FDC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22372B3A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2236F1070(uint64_t *a1, unsigned int *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9B8, &qword_22372D190);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v14 - v7;
  v9 = *a1;
  swift_getKeyPath();
  v10 = *a2;
  v11 = sub_22372A0B8();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v8, v10, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  return sub_223727A08();
}

uint64_t sub_2236F119C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowPrescribedTool(0);
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v39 = &v38 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7D8, &qword_223732518);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v38 - v16;
  v18 = type metadata accessor for RequestInfo.RequestRoute(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7E0, &qword_223732520);
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v23 - 8, v25);
  v28 = &v38 - v27;
  v29 = *(v26 + 56);
  sub_2236F16E0(a1, &v38 - v27, type metadata accessor for RequestInfo.RequestRoute);
  sub_2236F16E0(a2, &v28[v29], type metadata accessor for RequestInfo.RequestRoute);
  v30 = *(v9 + 48);
  if (v30(v28, 1, v8) == 1)
  {
    if (v30(&v28[v29], 1, v8) == 1)
    {
LABEL_3:
      sub_223644698(v28, type metadata accessor for RequestInfo.RequestRoute);
      return 1;
    }

    goto LABEL_6;
  }

  sub_2236F16E0(v28, v22, type metadata accessor for RequestInfo.RequestRoute);
  if (v30(&v28[v29], 1, v8) != 1)
  {
    v32 = *(v13 + 48);
    sub_2236F1670(v22, v17);
    sub_2236F1670(&v28[v29], &v17[v32]);
    v33 = v41;
    v34 = *(v40 + 48);
    if (v34(v17, 1, v41) == 1)
    {
      if (v34(&v17[v32], 1, v33) == 1)
      {
        sub_223626478(v17, &qword_27D08F680, &unk_223731E20);
        goto LABEL_3;
      }
    }

    else
    {
      v35 = v39;
      sub_223634890(v17, v39, &qword_27D08F680, &unk_223731E20);
      if (v34(&v17[v32], 1, v33) != 1)
      {
        v36 = v38;
        sub_2236F1748(&v17[v32], v38, type metadata accessor for IntelligenceFlowPrescribedTool);
        v37 = sub_2236C2C48(v35, v36);
        sub_223644698(v36, type metadata accessor for IntelligenceFlowPrescribedTool);
        sub_223644698(v35, type metadata accessor for IntelligenceFlowPrescribedTool);
        sub_223626478(v17, &qword_27D08F680, &unk_223731E20);
        if (v37)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }

      sub_223644698(v35, type metadata accessor for IntelligenceFlowPrescribedTool);
    }

    sub_223626478(v17, &qword_27D08F7D8, &qword_223732518);
LABEL_13:
    sub_223644698(v28, type metadata accessor for RequestInfo.RequestRoute);
    return 0;
  }

  sub_223626478(v22, &qword_27D08F680, &unk_223731E20);
LABEL_6:
  sub_223626478(v28, &qword_27D08F7E0, &qword_223732520);
  return 0;
}

uint64_t sub_2236F1670(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2236F16E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2236F1748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2236F17B0()
{
  result = qword_27D08E9B0;
  if (!qword_27D08E9B0)
  {
    sub_22372A088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08E9B0);
  }

  return result;
}

uint64_t sub_2236F184C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F840, &qword_2237326E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2236F2154();
  sub_22372B7E8();
  v12[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F828, &qword_2237326E0);
  sub_2236F21A8(&qword_27D08F848, &qword_27D08F850);
  sub_22372B6A8();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_2236F19FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000223737D30 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_22372B6E8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2236F1A90(uint64_t a1)
{
  v2 = sub_2236F2154();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236F1ACC(uint64_t a1)
{
  v2 = sub_2236F2154();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2236F1B08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_2236F1F98(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2236F1B50()
{

  sub_22372A178();

  return sub_22372A168();
}

size_t sub_2236F1BB8(size_t a1, int64_t a2, char a3)
{
  result = sub_2236F1BD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2236F1BD8(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F810, &qword_223732600);
  v10 = *(sub_223727408() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_223727408() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_2236F1DC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_22372A3E8();
  return sub_22372A3F8();
}

uint64_t sub_2236F1E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestInfo.UserQuery(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2236F1E70(uint64_t a1)
{
  v2 = type metadata accessor for RequestInfo.UserQuery(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2236F1ECC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_2236F1B50();
}

unint64_t sub_2236F1EEC()
{
  result = qword_28132AA78;
  if (!qword_28132AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28132AA78);
  }

  return result;
}

unint64_t sub_2236F1F44()
{
  result = qword_28132AA80;
  if (!qword_28132AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28132AA80);
  }

  return result;
}

void *sub_2236F1F98(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F818, &qword_2237326D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2236F2154();
  sub_22372B7D8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F828, &qword_2237326E0);
    sub_2236F21A8(&qword_27D08F830, &qword_27D08F838);
    sub_22372B648();
    (*(v4 + 8))(v8, v3);
    v10 = v12[1];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v10;
}

unint64_t sub_2236F2154()
{
  result = qword_27D08F820;
  if (!qword_27D08F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F820);
  }

  return result;
}

uint64_t sub_2236F21A8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D08F828, &qword_2237326E0);
    sub_2236F2230(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2236F2230(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22372A1B8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2236F2288()
{
  result = qword_27D08F858;
  if (!qword_27D08F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F858);
  }

  return result;
}

unint64_t sub_2236F22E0()
{
  result = qword_27D08F860;
  if (!qword_27D08F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F860);
  }

  return result;
}

unint64_t sub_2236F2338()
{
  result = qword_27D08F868;
  if (!qword_27D08F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F868);
  }

  return result;
}

unint64_t sub_2236F23BC(uint64_t a1)
{
  result = sub_2236F23E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2236F23E4()
{
  result = qword_27D08F870;
  if (!qword_27D08F870)
  {
    sub_223727CE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F870);
  }

  return result;
}

uint64_t dispatch thunk of SessionClientAsync.startSession(id:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 24);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_2236242EC;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of SessionClientAsync.endSession(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_223624EA4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SessionClientAsync.send(message:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SessionClientAsync.fetchSessionClientId()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SessionClientAsync.subscribe()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SessionClientAsync.cleanupSession()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 64);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2236242EC;

  return v9(a1, a2);
}

uint64_t IFMessagesStream.makeAsyncIterator()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F288, qword_22372FDB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F2B8, &qword_22372FE00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F880, &qword_223732900);
  MEMORY[0x223DE8000]();
  sub_223660728(&qword_27D08F888, &qword_27D08F288, qword_22372FDB0);
  sub_22372B1E8();
  sub_22372B5A8();
  return sub_22372B5C8();
}

uint64_t IFMessagesStream.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OBJC_IVAR____TtC24RequestDispatcherBridges16IFMessagesStream_backingStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F880, &qword_223732900);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t IFMessagesStream.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = OBJC_IVAR____TtC24RequestDispatcherBridges16IFMessagesStream_backingStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F880, &qword_223732900);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2236F2E3C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F288, qword_22372FDB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F2B8, &qword_22372FE00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v7 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F880, &qword_223732900);
  MEMORY[0x223DE8000]();
  sub_223660728(&qword_27D08F888, &qword_27D08F288, qword_22372FDB0);
  sub_22372B1E8();
  sub_22372B5A8();
  sub_22372B5C8();
}

uint64_t type metadata accessor for IFMessagesStream()
{
  result = qword_27D08F8A0;
  if (!qword_27D08F8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2236F3024()
{
  sub_2236F30D8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2236F30D8()
{
  if (!qword_27D08F8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D08F288, qword_22372FDB0);
    sub_223660728(&qword_27D08F888, &qword_27D08F288, qword_22372FDB0);
    v0 = sub_22372B5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27D08F8B0);
    }
  }
}

id static ResponseRenderingUtil.makeUtteranceView(printedDialog:spokenDialog:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_223727408();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  if (a2 | a4)
  {
    v12 = [objc_allocWithZone(MEMORY[0x277D47A00]) init];
    sub_2237273F8();
    sub_2237273B8();
    (*(v7 + 8))(v11, v6);
    v13 = sub_22372AFD8();

    [v12 setAceId_];

    v14 = v12;
    if (a4)
    {
      v15 = sub_22372AFD8();
    }

    else
    {
      v15 = 0;
    }

    [v12 setSpeakableText_];

    if (a2)
    {
      a2 = sub_22372AFD8();
    }

    [v12 setText_];
  }

  return v12;
}

void *static ResponseRenderingUtil.makeSnippetView(responseMode:deviceIdiom:snippetPluginModel:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v74 = a4;
  v79 = a1;
  v71 = sub_223727408();
  v6 = *(v71 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v71, v8);
  v70 = &v66[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F8B8, &qword_2237329C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v75 = &v66[-v13];
  v77 = sub_2237279F8();
  v14 = *(v77 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v77, v16);
  v72 = &v66[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_2237279D8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v66[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v66[-v26];
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v76 = v14;
  v28 = sub_22372AC98();
  v29 = __swift_project_value_buffer(v28, qword_28132B668);
  v30 = *(v19 + 16);
  v73 = a3;
  v30(v27, a3, v18);

  v78 = v29;
  v31 = sub_22372AC88();
  v32 = sub_22372B268();

  v33 = os_log_type_enabled(v31, v32);
  v80 = a2;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v69 = v6;
    v35 = v34;
    v68 = swift_slowAlloc();
    v81 = v68;
    *v35 = 136315394;
    v67 = v32;
    v36 = v79;
    *(v35 + 4) = sub_223623274(v79, a2, &v81);
    *(v35 + 12) = 2080;
    v30(v24, v27, v18);
    v37 = sub_22372B038();
    v39 = v38;
    (*(v19 + 8))(v27, v18);
    v40 = sub_223623274(v37, v39, &v81);

    *(v35 + 14) = v40;
    _os_log_impl(&dword_223620000, v31, v67, "ResponseMode = %s, DeviceIdiom = %s", v35, 0x16u);
    v41 = v68;
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v41, -1, -1);
    v42 = v35;
    v6 = v69;
    MEMORY[0x223DE8A80](v42, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v27, v18);
    v36 = v79;
  }

  v43 = *MEMORY[0x277D48CA8];
  if (sub_22372AFE8() == v36 && v44 == v80)
  {
  }

  else
  {
    v45 = sub_22372B6E8();

    if ((v45 & 1) == 0)
    {

      v46 = v75;
      sub_2237279E8();
      v48 = v76;
      v47 = v77;
      if ((*(v76 + 48))(v46, 1, v77) == 1)
      {
        sub_223626478(v46, &qword_27D08F8B8, &qword_2237329C0);
      }

      else
      {
        v49 = v72;
        (*(v48 + 32))(v72, v46, v47);
        v50 = v74[4];
        __swift_project_boxed_opaque_existential_1(v74, v74[3]);
        v51 = sub_2237274C8();
        (*(v48 + 8))(v49, v47);
        if ((v51 & 1) == 0)
        {
          v56 = v74[4];
          __swift_project_boxed_opaque_existential_1(v74, v74[3]);
          v57 = *MEMORY[0x277D47C68];
          v58 = sub_22372AFE8();
          v60 = v59;
          v61 = v70;
          sub_2237273F8();
          v62 = sub_2237273B8();
          v64 = v63;
          (*(v6 + 8))(v61, v71);
          v65 = sub_2236F49EC(v58, v60, 0, 0, v62, v64);

          return v65;
        }
      }
    }
  }

  v52 = sub_22372AC88();
  v53 = sub_22372B268();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_223620000, v52, v53, "showResultSnippet is false, skipping creating SnippetView", v54, 2u);
    MEMORY[0x223DE8A80](v54, -1, -1);
  }

  return 0;
}

uint64_t static ResponseRenderingUtil.makeSnippetViews(responseMode:modelData:bundleName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v65 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F8C0, &qword_2237329C8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v63 - v12;
  v14 = sub_223727CC8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_223727148();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_223727138();
  v24 = sub_223727AA8();
  sub_2236F50E8();
  v66 = v23;
  sub_223727128();
  v64 = v15;
  v25 = *(v24 - 8);
  (*(v25 + 56))(v13, 0, 1, v24);
  if ((*(v25 + 88))(v13, v24) != *MEMORY[0x277D1C518])
  {
    (*(v25 + 8))(v13, v24);
    v46 = *MEMORY[0x277D47C68];
    v47 = sub_22372AFE8();
    v49 = sub_2236F3F98(a3, a4, a5, v65, v47, v48);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB48, qword_2237329D0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_22372FCE0;
    *(v43 + 32) = v49;
    goto LABEL_11;
  }

  (*(v25 + 96))(v13, v24);
  v26 = v19;
  v27 = v14;
  (*(v64 + 32))(v19, v13, v14);
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v28 = sub_22372AC98();
  __swift_project_value_buffer(v28, qword_28132B668);
  v29 = sub_22372AC88();
  v30 = sub_22372B268();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_223620000, v29, v30, "Unpacking siriSDSView", v31, 2u);
    MEMORY[0x223DE8A80](v31, -1, -1);
  }

  v67 = MEMORY[0x277D84F90];
  v32 = sub_223727CB8();
  v34 = v33;
  v35 = sub_223727C88();
  v37 = v36;
  v38 = *MEMORY[0x277D47C70];
  v39 = sub_22372AFE8();
  sub_2236F3F98(v32, v34, v35, v37, v39, v40);

  v41 = sub_223661270(v32, v34);
  MEMORY[0x223DE7B50](v41);
  v42 = v64;
  if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v61 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22372B148();
  }

  sub_22372B158();
  v43 = v67;
  v44 = sub_223727C98();
  if (v45 >> 60 == 15)
  {
    (*(v42 + 8))(v26, v27);
LABEL_11:

    return v43;
  }

  v51 = v44;
  v52 = v45;
  v53 = sub_223727CA8();
  if (!v54)
  {
    (*(v42 + 8))(v26, v27);
    sub_22366FAB4(v51, v52);
    goto LABEL_11;
  }

  v55 = v53;
  v56 = v54;
  v57 = *MEMORY[0x277D47C68];
  v58 = sub_22372AFE8();
  sub_2236F3F98(v51, v52, v55, v56, v58, v59);

  MEMORY[0x223DE7B50](v60);
  if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v62 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22372B148();
  }

  sub_22372B158();

  sub_22366FAB4(v51, v52);
  (*(v42 + 8))(v26, v27);
  return v67;
}

id sub_2236F3F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28[1] = a6;
  v28[2] = a1;
  v28[3] = a2;
  v6 = sub_223727408();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277D47AF0]) init];
  sub_2237273F8();
  sub_2237273B8();
  v13 = *(v7 + 8);
  v13(v11, v6);
  v14 = sub_22372AFD8();

  [v12 setAceId_];

  v15 = v12;
  sub_2237273F8();
  sub_2237273B8();
  v13(v11, v6);
  v16 = sub_22372AFD8();

  [v15 setViewId_];

  v17 = sub_22372AFD8();
  [v15 setBundleName_];

  v18 = sub_22372AFD8();
  [v15 setItemType_];

  v19 = sub_223727348();
  [v15 setModelData_];

  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v20 = sub_22372AC98();
  __swift_project_value_buffer(v20, qword_28132B668);
  v21 = v15;
  v22 = sub_22372AC88();
  v23 = sub_22372B268();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&dword_223620000, v22, v23, "Returning snippet = %@", v24, 0xCu);
    sub_223626478(v25, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v25, -1, -1);
    MEMORY[0x223DE8A80](v24, -1, -1);
  }

  return v21;
}

unint64_t static ResponseRenderingUtil.makeAddViews(utteranceViews:snippetViews:listenAfterSpeaking:requestId:)(unint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v36[2] = a4;
  v7 = sub_223727408();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1 >> 62;
  if (a3)
  {
    if (v13)
    {
      v14 = sub_22372B558();
      if (v14)
      {
LABEL_4:
        v15 = __OFSUB__(v14, 1);
        result = v14 - 1;
        if (v15)
        {
          __break(1u);
        }

        else if ((a1 & 0xC000000000000001) == 0)
        {
          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (result < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v17 = a1 + 8 * result;
LABEL_20:
            v23 = *(v17 + 32);
LABEL_21:
            v24 = v23;
            sub_223630584(0, &qword_27D08EAE0, 0x277CCABB0);
            v25 = sub_22372B358();
            [v24 setListenAfterSpeaking_];

LABEL_22:
            goto LABEL_23;
          }

          __break(1u);
LABEL_31:
          swift_once();
LABEL_11:
          v18 = sub_22372AC98();
          v36[1] = __swift_project_value_buffer(v18, qword_28132B668);
          v19 = sub_22372AC88();
          v20 = sub_22372B268();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            *v21 = 0;
            _os_log_impl(&dword_223620000, v19, v20, "UtteranceViews are empty but listenAfterSpeaking is true. Attempting to set listenAfterSpeaking on the last Snippet View.", v21, 2u);
            MEMORY[0x223DE8A80](v21, -1, -1);
          }

          if (a2 >> 62)
          {
            v22 = sub_22372B558();
            if (v22)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v22)
            {
LABEL_15:
              v15 = __OFSUB__(v22, 1);
              result = v22 - 1;
              if (v15)
              {
                __break(1u);
              }

              else if ((a2 & 0xC000000000000001) == 0)
              {
                if ((result & 0x8000000000000000) != 0)
                {
                  __break(1u);
                }

                else if (result < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v17 = a2 + 8 * result;
                  goto LABEL_20;
                }

                __break(1u);
                return result;
              }

              v33 = a2;
LABEL_37:
              v23 = MEMORY[0x223DE7ED0](result, v33);
              goto LABEL_21;
            }
          }

          v25 = sub_22372AC88();
          v34 = sub_22372B278();
          if (os_log_type_enabled(v25, v34))
          {
            v35 = swift_slowAlloc();
            *v35 = 0;
            _os_log_impl(&dword_223620000, v25, v34, "Snippet views are empty, unable to set listenAfterSpeaking", v35, 2u);
            MEMORY[0x223DE8A80](v35, -1, -1);
          }

          goto LABEL_22;
        }

        v33 = a1;
        goto LABEL_37;
      }
    }

    else
    {
      v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_4;
      }
    }

    if (qword_281328E50 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_23:
  v36[3] = MEMORY[0x277D84F90];
  if (v13)
  {
    sub_223630584(0, &qword_281328D00, 0x277D47140);

    v32 = sub_22372B548();

    a1 = v32;
  }

  else
  {

    sub_22372B6F8();
    sub_223630584(0, &qword_281328D00, 0x277D47140);
  }

  sub_223639A04(a1, sub_2236E9DDC);

  sub_223639A04(v26, sub_2236E9DDC);
  v27 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
  sub_2237273F8();
  sub_2237273B8();
  (*(v8 + 8))(v12, v7);
  v28 = sub_22372AFD8();

  [v27 setAceId_];

  v29 = v27;
  v30 = sub_22372AFD8();
  [v29 setRefId_];

  sub_223630584(0, &qword_281328D00, 0x277D47140);
  v31 = sub_22372B118();

  [v29 setViews_];

  [v29 setDialogPhase_];
  return v29;
}

uint64_t (*sub_2236F47D8(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x223DE7ED0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_2236F4858;
  }

  __break(1u);
  return result;
}

void (*sub_2236F4860(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DE7ED0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2236F48E0;
  }

  __break(1u);
  return result;
}

uint64_t sub_2236F48E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = sub_22372B558();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_22363AFD0(result);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  type metadata accessor for RequestInfo(0);
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_2236F49EC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v66 = a5;
  v67 = a6;
  v10 = sub_223727408();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2237274D8();
  if (v17 >> 60 == 15)
  {
    goto LABEL_19;
  }

  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 != 2 || *(v16 + 16) == *(v16 + 24))
    {
      goto LABEL_18;
    }
  }

  else if (v18)
  {
    if (v16 == v16 >> 32)
    {
LABEL_18:
      sub_22366FAB4(v16, v17);
LABEL_19:
      if (qword_281328E50 != -1)
      {
        swift_once();
      }

      v47 = sub_22372AC98();
      __swift_project_value_buffer(v47, qword_28132B668);
      v48 = sub_22372AC88();
      v49 = sub_22372B278();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_223620000, v48, v49, "SnippetPluginModel has no Data. Unable to build AceView.", v50, 2u);
        MEMORY[0x223DE8A80](v50, -1, -1);
      }

      return 0;
    }
  }

  else if ((v17 & 0xFF000000000000) == 0)
  {
    goto LABEL_18;
  }

  v62 = a4;
  v63 = a1;
  v61 = a3;
  v64 = v16;
  v65 = v17;
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v19 = sub_22372AC98();
  v20 = __swift_project_value_buffer(v19, qword_28132B668);
  v21 = sub_22372AC88();
  v22 = sub_22372B268();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = v20;
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_223620000, v21, v22, "Building snippet for Response", v24, 2u);
    v25 = v24;
    v20 = v23;
    MEMORY[0x223DE8A80](v25, -1, -1);
  }

  v26 = sub_22372AC88();
  v27 = sub_22372B268();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v60[1] = v20;
    v29 = v28;
    v30 = swift_slowAlloc();
    v68 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_223623274(v63, a2, &v68);
    _os_log_impl(&dword_223620000, v26, v27, "VisualLocation is set to %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x223DE8A80](v30, -1, -1);
    MEMORY[0x223DE8A80](v29, -1, -1);
  }

  v31 = [objc_allocWithZone(MEMORY[0x277D47AF0]) init];
  sub_2237273F8();
  sub_2237273B8();
  (*(v11 + 8))(v15, v10);
  v32 = sub_22372AFD8();

  [v31 setAceId_];

  v33 = v31;
  v34 = sub_22372AFD8();
  [v33 setViewId_];

  sub_2237274B8();
  v35 = sub_22372AFD8();

  [v33 setBundleName_];

  v36 = sub_22372AFD8();
  [v33 setItemType_];

  v37 = sub_223727348();
  [v33 setModelData_];

  v38 = v62;
  if (v62)
  {
    v39 = v61;
    v40 = sub_22372AFD8();
    [v33 setResponseViewId_];

    v41 = sub_22372AC88();
    v42 = sub_22372B268();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v38;
      v46 = v44;
      v68 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_223623274(v39, v45, &v68);
      _os_log_impl(&dword_223620000, v41, v42, "ResponseViewId is set to %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x223DE8A80](v46, -1, -1);
LABEL_26:
      MEMORY[0x223DE8A80](v43, -1, -1);
    }
  }

  else
  {
    v41 = sub_22372AC88();
    v52 = sub_22372B268();
    if (os_log_type_enabled(v41, v52))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_223620000, v41, v52, "ResponseViewId is nil, not set by domain", v43, 2u);
      goto LABEL_26;
    }
  }

  v53 = v33;
  v54 = sub_22372AC88();
  v55 = sub_22372B268();
  v56 = v53;

  if (os_log_type_enabled(v54, v55))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v57 = 138412290;
    *(v57 + 4) = v56;
    *v58 = v56;
    v59 = v56;
    _os_log_impl(&dword_223620000, v54, v55, "Returning snippet = %@", v57, 0xCu);
    sub_223626478(v58, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v58, -1, -1);
    MEMORY[0x223DE8A80](v57, -1, -1);
  }

  sub_22366FAB4(v64, v65);

  return v56;
}

unint64_t sub_2236F50E8()
{
  result = qword_27D08F8C8;
  if (!qword_27D08F8C8)
  {
    sub_223727AA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F8C8);
  }

  return result;
}

void *sub_2236F5150(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_22372B3F8();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_22370B490(&v5, v3, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_2236F51DC()
{
  v1 = *v0;
  sub_22372B7A8();
  sub_22372B078();

  return sub_22372B7C8();
}

uint64_t sub_2236F52E8()
{
  *v0;
  *v0;
  *v0;
  sub_22372B078();
}

uint64_t sub_2236F53E0()
{
  v1 = *v0;
  sub_22372B7A8();
  sub_22372B078();

  return sub_22372B7C8();
}

uint64_t sub_2236F54E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22370BC34();
  *a2 = result;
  return result;
}

void sub_2236F5518(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000064657ALL;
  v4 = 0x696C616974696E69;
  v5 = 0x8000000223734360;
  v6 = 0xD00000000000001FLL;
  v7 = 0xEC00000064657A69;
  v8 = 0x6C616E6946707274;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x8000000223734390;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6E69766965636572;
    v3 = 0xED00007350525467;
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

uint64_t sub_2236F55E0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_223729F08();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2236F56D8, v1, 0);
}

uint64_t sub_2236F56D8()
{
  v35 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B680);
  v4 = v2;

  v5 = sub_22372AC88();
  v6 = sub_22372B268();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    v12 = *(v7 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v34 = v11;
    v13 = 0xEB0000000064657ALL;
    v14 = 0x696C616974696E69;
    v15 = 0x8000000223734360;
    v16 = 0xD00000000000001FLL;
    v17 = 0xEC00000064657A69;
    v18 = 0x6C616E6946707274;
    if (v12 != 3)
    {
      v18 = 0xD000000000000010;
      v17 = 0x8000000223734390;
    }

    if (v12 != 2)
    {
      v16 = v18;
      v15 = v17;
    }

    if (v12)
    {
      v14 = 0x6E69766965636572;
      v13 = 0xED00007350525467;
    }

    if (v12 <= 1)
    {
      v19 = v14;
    }

    else
    {
      v19 = v16;
    }

    if (v12 <= 1)
    {
      v20 = v13;
    }

    else
    {
      v20 = v15;
    }

    v21 = v11;
    v22 = *(v0 + 16);
    v23 = sub_223623274(v19, v20, &v34);

    *(v9 + 14) = v23;
    _os_log_impl(&dword_223620000, v5, v6, "Received %@ when state: %s", v9, 0x16u);
    sub_223626478(v10, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x223DE8A80](v21, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  v24 = *(v0 + 48);
  v25 = *(v0 + 56);
  v26 = *(v0 + 32);
  v27 = *(v0 + 40);
  v28 = *(v0 + 16);
  v29 = *(v0 + 24);
  sub_223728058();
  v30 = sub_223729EE8();
  (*(*(v30 - 8) + 56))(v25, 0, 1, v30);
  v31 = sub_223728048();
  (*(v27 + 104))(v24, *MEMORY[0x277D5CF40], v26);
  sub_22363DF70(v25, v31, v24);

  (*(v27 + 8))(v24, v26);
  sub_223626478(v25, &unk_27D08F6F0, &qword_223732CD0);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_2236F5A7C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_223729F08();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2236F5B74, v1, 0);
}

uint64_t sub_2236F5B74()
{
  v35 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B680);
  v4 = v2;

  v5 = sub_22372AC88();
  v6 = sub_22372B268();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    v12 = *(v7 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v34 = v11;
    v13 = 0xEB0000000064657ALL;
    v14 = 0x696C616974696E69;
    v15 = 0x8000000223734360;
    v16 = 0xD00000000000001FLL;
    v17 = 0xEC00000064657A69;
    v18 = 0x6C616E6946707274;
    if (v12 != 3)
    {
      v18 = 0xD000000000000010;
      v17 = 0x8000000223734390;
    }

    if (v12 != 2)
    {
      v16 = v18;
      v15 = v17;
    }

    if (v12)
    {
      v14 = 0x6E69766965636572;
      v13 = 0xED00007350525467;
    }

    if (v12 <= 1)
    {
      v19 = v14;
    }

    else
    {
      v19 = v16;
    }

    if (v12 <= 1)
    {
      v20 = v13;
    }

    else
    {
      v20 = v15;
    }

    v21 = v11;
    v22 = *(v0 + 16);
    v23 = sub_223623274(v19, v20, &v34);

    *(v9 + 14) = v23;
    _os_log_impl(&dword_223620000, v5, v6, "Received %@ when state: %s", v9, 0x16u);
    sub_223626478(v10, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x223DE8A80](v21, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  v24 = *(v0 + 48);
  v25 = *(v0 + 56);
  v26 = *(v0 + 32);
  v27 = *(v0 + 40);
  v28 = *(v0 + 16);
  v29 = *(v0 + 24);
  sub_223729168();
  v30 = sub_223729EE8();
  (*(*(v30 - 8) + 56))(v25, 0, 1, v30);
  v31 = sub_223729148();
  (*(v27 + 104))(v24, *MEMORY[0x277D5CF40], v26);
  sub_22363DF70(v25, v31, v24);

  (*(v27 + 8))(v24, v26);
  sub_223626478(v25, &unk_27D08F6F0, &qword_223732CD0);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_2236F5F18(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_223729F08();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2236F6010, v1, 0);
}

uint64_t sub_2236F6010()
{
  v35 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B680);
  v4 = v2;

  v5 = sub_22372AC88();
  v6 = sub_22372B268();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    v12 = *(v7 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v34 = v11;
    v13 = 0xEB0000000064657ALL;
    v14 = 0x696C616974696E69;
    v15 = 0x8000000223734360;
    v16 = 0xD00000000000001FLL;
    v17 = 0xEC00000064657A69;
    v18 = 0x6C616E6946707274;
    if (v12 != 3)
    {
      v18 = 0xD000000000000010;
      v17 = 0x8000000223734390;
    }

    if (v12 != 2)
    {
      v16 = v18;
      v15 = v17;
    }

    if (v12)
    {
      v14 = 0x6E69766965636572;
      v13 = 0xED00007350525467;
    }

    if (v12 <= 1)
    {
      v19 = v14;
    }

    else
    {
      v19 = v16;
    }

    if (v12 <= 1)
    {
      v20 = v13;
    }

    else
    {
      v20 = v15;
    }

    v21 = v11;
    v22 = *(v0 + 16);
    v23 = sub_223623274(v19, v20, &v34);

    *(v9 + 14) = v23;
    _os_log_impl(&dword_223620000, v5, v6, "Received %@ when state: %s", v9, 0x16u);
    sub_223626478(v10, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x223DE8A80](v21, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  v24 = *(v0 + 48);
  v25 = *(v0 + 56);
  v26 = *(v0 + 32);
  v27 = *(v0 + 40);
  v28 = *(v0 + 16);
  v29 = *(v0 + 24);
  sub_223728DE8();
  v30 = sub_223729EE8();
  (*(*(v30 - 8) + 56))(v25, 0, 1, v30);
  v31 = sub_223728DD8();
  (*(v27 + 104))(v24, *MEMORY[0x277D5CF28], v26);
  sub_22363DF70(v25, v31, v24);

  (*(v27 + 8))(v24, v26);
  sub_223626478(v25, &unk_27D08F6F0, &qword_223732CD0);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_2236F63D4()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B278();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_223620000, v4, v5, "Unexpectedly received %@ at root level", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2236F6554(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7C8, qword_223732310);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7D0, &unk_223732EC0);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_223732A30;
  v6 = v5 + v4;
  v7 = (v6 + *(v2 + 48));
  sub_22372A568();
  *v7 = 0xD000000000000017;
  v7[1] = 0x8000000223734650;
  v8 = (v6 + v3 + *(v2 + 48));
  sub_22372A5A8();
  *v8 = 0xD00000000000001FLL;
  v8[1] = 0x8000000223736D90;
  if (qword_28132B4D0 != -1)
  {
    swift_once();
  }

  v9 = sub_22372A608();
  v10 = __swift_project_value_buffer(v9, qword_28132BA28);
  (*(*(v9 - 8) + 16))(v6 + 2 * v3, v10, v9);
  v11 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
  v12 = 0xEB0000000064657ALL;
  v13 = 0x696C616974696E69;
  v14 = 0x8000000223734360;
  v15 = 0xEC00000064657A69;
  v16 = 0x6C616E6946707274;
  if (v11 != 3)
  {
    v16 = 0xD000000000000010;
    v15 = 0x8000000223734390;
  }

  if (v11 == 2)
  {
    v17 = 0xD00000000000001FLL;
  }

  else
  {
    v17 = v16;
  }

  if (v11 != 2)
  {
    v14 = v15;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
  {
    v13 = 0x6E69766965636572;
    v12 = 0xED00007350525467;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v18 = v13;
  }

  else
  {
    v18 = v17;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v19 = v12;
  }

  else
  {
    v19 = v14;
  }

  v20 = (v6 + 2 * v3 + *(v2 + 48));
  MEMORY[0x223DE7AD0](v18, v19);

  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = (v6 + 3 * v3 + *(v2 + 48));
  sub_22372A578();
  v22 = a1[17];
  *v21 = a1[16];
  v21[1] = v22;
  v23 = (v6 + 4 * v3 + *(v2 + 48));

  sub_22372A5F8();
  sub_223727408();
  sub_223623428(&qword_28132B600, MEMORY[0x277CC95F0]);
  *v23 = sub_22372B6B8();
  v23[1] = v24;
  v25 = (v6 + 5 * v3 + *(v2 + 48));
  sub_22372A5E8();
  v26 = a1[15];
  *v25 = a1[14];
  v25[1] = v26;

  return v5;
}

void sub_2236F68B4(uint64_t a1, void *a2)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B680);
  v4 = a2;
  oslog = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F990, &unk_22372FDA0);
    v9 = sub_22372B038();
    v11 = sub_223623274(v9, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_223620000, oslog, v5, "Sent pending SpeechRecognized for request that was just activated, error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2236F6A58(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_22372A1D8();
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v5 = *(v4 + 64) + 15;
  v2[18] = swift_task_alloc();
  v6 = sub_223727408();
  v2[19] = v6;
  v7 = *(v6 - 8);
  v2[20] = v7;
  v8 = *(v7 + 64) + 15;
  v2[21] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F8D0, &qword_223732CC8) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2236F6BE4, v1, 0);
}

uint64_t sub_2236F6BE4()
{
  v87 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = 0xEB0000000064657ALL;
  v83 = 0x696C616974696E69;
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = sub_22372AC98();
  __swift_project_value_buffer(v4, qword_28132B680);
  v5 = v3;

  v6 = sub_22372AC88();
  v7 = sub_22372B268();

  v8 = &unk_28132B000;
  if (os_log_type_enabled(v6, v7))
  {
    v10 = *(v0 + 112);
    v9 = *(v0 + 120);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2080;
    v14 = *(v9 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v86[0] = v13;
    v15 = 0x8000000223734360;
    v16 = 0xD00000000000001FLL;
    v17 = 0x6C616E6946707274;
    v18 = 0xEC00000064657A69;
    if (v14 != 3)
    {
      v17 = 0xD000000000000010;
      v18 = 0x8000000223734390;
    }

    if (v14 != 2)
    {
      v16 = v17;
      v15 = v18;
    }

    v19 = 0x696C616974696E69;
    if (v14)
    {
      v19 = 0x6E69766965636572;
    }

    v1 = 0xEB0000000064657ALL;
    v20 = 0xED00007350525467;
    if (!v14)
    {
      v20 = 0xEB0000000064657ALL;
    }

    if (v14 <= 1)
    {
      v21 = v19;
    }

    else
    {
      v21 = v16;
    }

    if (v14 <= 1)
    {
      v22 = v20;
    }

    else
    {
      v22 = v15;
    }

    v23 = v13;
    v24 = *(v0 + 112);
    v25 = sub_223623274(v21, v22, v86);

    *(v11 + 14) = v25;
    _os_log_impl(&dword_223620000, v6, v7, "Received %@ when state: %s", v11, 0x16u);
    sub_223626478(v12, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x223DE8A80](v23, -1, -1);
    MEMORY[0x223DE8A80](v11, -1, -1);

    v8 = &unk_28132B000;
  }

  else
  {
  }

  v26 = *(v0 + 120);
  v27 = v8[311];
  if (*(v26 + v27) > 1u || *(v26 + v27))
  {
    v28 = sub_22372B6E8();

    if ((v28 & 1) == 0)
    {
LABEL_25:
      v30 = *(v0 + 120);
      swift_retain_n();
      v31 = sub_22372AC88();
      v32 = sub_22372B278();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v86[0] = v34;
        *v33 = 136315394;
        v35 = *(v26 + v27);
        if (v35 <= 1)
        {
          if (*(v26 + v27))
          {
            v83 = 0x6E69766965636572;
            v1 = 0xED00007350525467;
          }
        }

        else if (v35 == 2)
        {
          v1 = 0x8000000223734360;
          v83 = 0xD00000000000001FLL;
        }

        else if (v35 == 3)
        {
          v83 = 0x6C616E6946707274;
          v1 = 0xEC00000064657A69;
        }

        else
        {
          v83 = 0xD000000000000010;
          v1 = 0x8000000223734390;
        }

        v73 = *(v0 + 120);
        v74 = sub_223623274(v83, v1, v86);

        *(v33 + 4) = v74;
        *(v33 + 12) = 1024;
        v75 = v73 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
        swift_beginAccess();
        LODWORD(v75) = *(v75 + 4);

        *(v33 + 14) = v75;

        _os_log_impl(&dword_223620000, v31, v32, "Received ASRReadyForNewTurnMessage while the controller's state is: %s, isActive: %{BOOL}d", v33, 0x12u);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x223DE8A80](v34, -1, -1);
        MEMORY[0x223DE8A80](v33, -1, -1);
      }

      else
      {
        v36 = *(v0 + 120);
      }

      sub_223657180();
      swift_allocError();
      *v76 = xmmword_223732A20;
      *(v76 + 16) = 4;
      swift_willThrow();
      v78 = *(v0 + 176);
      v77 = *(v0 + 184);
      v79 = *(v0 + 168);
      v80 = *(v0 + 144);

      v72 = *(v0 + 8);
      goto LABEL_45;
    }
  }

  else
  {
  }

  v29 = *(v0 + 120) + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
  swift_beginAccess();
  if (*(v29 + 4))
  {
    goto LABEL_25;
  }

  v38 = *(v0 + 176);
  v37 = *(v0 + 184);
  v84 = *(v0 + 168);
  v40 = *(v0 + 128);
  v39 = *(v0 + 136);
  v41 = *(v0 + 112);
  v42 = *(v0 + 120);
  *(v29 + 4) = 0;
  *v29 = 1;
  v43 = sub_223728958();
  v44 = type metadata accessor for RootRequestController.RequestContext(0);
  v45 = v29 + *(v44 + 64);
  *v45 = v43;
  *(v45 + 8) = 0;
  sub_223728938();
  (*(v39 + 56))(v37, 0, 1, v40);
  swift_beginAccess();
  sub_2236719F4(v37, v29 + *(v44 + 60), &unk_27D08F8D0, &qword_223732CC8);
  swift_endAccess();
  v46 = sub_223728948();
  v47 = *(v29 + 64);
  *(v29 + 56) = v46;
  *(v29 + 64) = v48;

  v49 = *MEMORY[0x277D5CF40];
  v50 = sub_223729F08();
  v51 = *(v50 - 8);
  (*(v51 + 104))(v38, v49, v50);
  (*(v51 + 56))(v38, 0, 1, v50);
  v52 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_requestType;
  swift_beginAccess();
  sub_2236719F4(v38, v42 + v52, &qword_27D08E9D0, &qword_22372D1E0);
  swift_endAccess();
  sub_223729D98();
  sub_223729D58();
  sub_223708784();
  v54 = *(v0 + 136);
  v53 = *(v0 + 144);
  v55 = *(v0 + 120);
  v85 = *(v0 + 128);
  v56 = *(v0 + 112);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

  v57 = *(v55 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_instrumentationUtil);
  v58 = *(v55 + 112);
  v59 = *(v55 + 120);
  LOBYTE(v55) = *(v29 + 2);
  sub_223728938();
  v82 = v58;
  v60 = v58;
  v61 = v59;
  sub_2236C4390(v60, v59, v55, v53);
  (*(v54 + 8))(v53, v85);
  if (qword_281328E80 != -1)
  {
    swift_once();
  }

  v62 = *(v0 + 120);
  v63 = sub_22372A648();
  __swift_project_value_buffer(v63, qword_28132B6C8);

  sub_22372A628();

  if (*(v29 + 2) == 1)
  {
    v64 = sub_22372AC88();
    v65 = sub_22372B268();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_223620000, v64, v65, "Found an active Siri prompt, will activate the request", v66, 2u);
      MEMORY[0x223DE8A80](v66, -1, -1);
    }

    v67 = *(v0 + 120);

    sub_223703AD0(v82, v61, 0, 0);
  }

  v69 = *(v0 + 176);
  v68 = *(v0 + 184);
  v70 = *(v0 + 168);
  v71 = *(v0 + 144);

  v72 = *(v0 + 8);
LABEL_45:

  return v72();
}

uint64_t sub_2236F75A8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7C8, qword_223732310);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7D0, &unk_223732EC0);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_223732A30;
  v6 = v5 + v4;
  v7 = (v6 + *(v2 + 48));
  sub_22372A568();
  *v7 = 0xD000000000000017;
  v7[1] = 0x8000000223734650;
  v8 = (v6 + v3 + *(v2 + 48));
  sub_22372A5A8();
  *v8 = 0xD00000000000001BLL;
  v8[1] = 0x8000000223736D50;
  if (qword_28132B4D0 != -1)
  {
    swift_once();
  }

  v9 = sub_22372A608();
  v10 = __swift_project_value_buffer(v9, qword_28132BA28);
  (*(*(v9 - 8) + 16))(v6 + 2 * v3, v10, v9);
  v11 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
  v12 = 0xEB0000000064657ALL;
  v13 = 0x696C616974696E69;
  v14 = 0x8000000223734360;
  v15 = 0xD00000000000001FLL;
  v16 = 0xEC00000064657A69;
  v17 = 0x6C616E6946707274;
  if (v11 != 3)
  {
    v17 = 0xD000000000000010;
    v16 = 0x8000000223734390;
  }

  if (v11 != 2)
  {
    v15 = v17;
    v14 = v16;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
  {
    v13 = 0x6E69766965636572;
    v12 = 0xED00007350525467;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v18 = v13;
  }

  else
  {
    v18 = v15;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v19 = v12;
  }

  else
  {
    v19 = v14;
  }

  v20 = (v6 + 2 * v3 + *(v2 + 48));
  MEMORY[0x223DE7AD0](v18, v19);

  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = (v6 + 3 * v3 + *(v2 + 48));
  sub_22372A578();
  v22 = a1[17];
  *v21 = a1[16];
  v21[1] = v22;
  v23 = (v6 + 4 * v3 + *(v2 + 48));

  sub_22372A5F8();
  sub_223727408();
  sub_223623428(&qword_28132B600, MEMORY[0x277CC95F0]);
  *v23 = sub_22372B6B8();
  v23[1] = v24;
  v25 = (v6 + 5 * v3 + *(v2 + 48));
  sub_22372A5E8();
  v26 = a1[15];
  *v25 = a1[14];
  v25[1] = v26;

  return v5;
}

uint64_t sub_2236F7910(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2236F7930, v1, 0);
}

uint64_t sub_2236F7930()
{
  v28 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B680);
  v4 = v2;

  v5 = sub_22372AC88();
  v6 = sub_22372B268();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    v12 = *(v7 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v27 = v11;
    v13 = 0xEB0000000064657ALL;
    v14 = 0x696C616974696E69;
    v15 = 0x8000000223734360;
    v16 = 0xD00000000000001FLL;
    v17 = 0xEC00000064657A69;
    v18 = 0x6C616E6946707274;
    if (v12 != 3)
    {
      v18 = 0xD000000000000010;
      v17 = 0x8000000223734390;
    }

    if (v12 != 2)
    {
      v16 = v18;
      v15 = v17;
    }

    if (v12)
    {
      v14 = 0x6E69766965636572;
      v13 = 0xED00007350525467;
    }

    if (v12 <= 1)
    {
      v19 = v14;
    }

    else
    {
      v19 = v16;
    }

    if (v12 <= 1)
    {
      v20 = v13;
    }

    else
    {
      v20 = v15;
    }

    v21 = v11;
    v22 = *(v0 + 16);
    v23 = sub_223623274(v19, v20, &v27);

    *(v9 + 14) = v23;
    _os_log_impl(&dword_223620000, v5, v6, "Received %@ when state: %s", v9, 0x16u);
    sub_223626478(v10, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x223DE8A80](v21, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  v24 = *(v0 + 24);
  sub_2236F8BDC(*(v0 + 16), &off_2836C7068);
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2236F7C08(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2236F7C28, v1, 0);
}

uint64_t sub_2236F7C28()
{
  v28 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B680);
  v4 = v2;

  v5 = sub_22372AC88();
  v6 = sub_22372B268();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    v12 = *(v7 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v27 = v11;
    v13 = 0xEB0000000064657ALL;
    v14 = 0x696C616974696E69;
    v15 = 0x8000000223734360;
    v16 = 0xD00000000000001FLL;
    v17 = 0xEC00000064657A69;
    v18 = 0x6C616E6946707274;
    if (v12 != 3)
    {
      v18 = 0xD000000000000010;
      v17 = 0x8000000223734390;
    }

    if (v12 != 2)
    {
      v16 = v18;
      v15 = v17;
    }

    if (v12)
    {
      v14 = 0x6E69766965636572;
      v13 = 0xED00007350525467;
    }

    if (v12 <= 1)
    {
      v19 = v14;
    }

    else
    {
      v19 = v16;
    }

    if (v12 <= 1)
    {
      v20 = v13;
    }

    else
    {
      v20 = v15;
    }

    v21 = v11;
    v22 = *(v0 + 16);
    v23 = sub_223623274(v19, v20, &v27);

    *(v9 + 14) = v23;
    _os_log_impl(&dword_223620000, v5, v6, "Received %@ when state: %s", v9, 0x16u);
    sub_223626478(v10, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x223DE8A80](v21, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  v24 = *(v0 + 24);
  sub_2236F8BDC(*(v0 + 16), &off_2836C7078);
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2236F7F00(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for RootRequestController.TRPCache(0);
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2236F7FD8, v1, 0);
}

uint64_t sub_2236F7FD8()
{
  v108 = v0;
  if (qword_281328E58 != -1)
  {
LABEL_72:
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B680);
  v4 = v1;

  v5 = sub_22372AC88();
  v6 = sub_22372B268();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 64);
    v8 = *(v0 + 72);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v7;
    *v10 = v7;
    *(v9 + 12) = 2080;
    v12 = *(v8 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v107[0] = v11;
    v13 = 0x8000000223734360;
    v14 = 0xD00000000000001FLL;
    v15 = 0x6C616E6946707274;
    v16 = 0xEC00000064657A69;
    if (v12 != 3)
    {
      v15 = 0xD000000000000010;
      v16 = 0x8000000223734390;
    }

    if (v12 != 2)
    {
      v14 = v15;
      v13 = v16;
    }

    v17 = 0x696C616974696E69;
    if (v12)
    {
      v17 = 0x6E69766965636572;
    }

    v18 = 0xEB0000000064657ALL;
    if (v12)
    {
      v18 = 0xED00007350525467;
    }

    if (v12 <= 1)
    {
      v19 = v17;
    }

    else
    {
      v19 = v14;
    }

    if (v12 <= 1)
    {
      v20 = v18;
    }

    else
    {
      v20 = v13;
    }

    v21 = v11;
    v22 = *(v0 + 64);
    v23 = sub_223623274(v19, v20, v107);

    *(v9 + 14) = v23;
    _os_log_impl(&dword_223620000, v5, v6, "Received %@ when state: %s", v9, 0x16u);
    sub_223626478(v10, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x223DE8A80](v21, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  else
  {
  }

  v24 = *(v0 + 72);
  v25 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state;
  if (*(v24 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u && !*(v24 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
  {
    goto LABEL_24;
  }

  v26 = sub_22372B6E8();

  if (v26)
  {
LABEL_26:
    v28 = *(v0 + 80);
    v104 = *(v0 + 88);
    v29 = *(v0 + 64);
    v30 = *(v0 + 72);
    *(v24 + v25) = 1;
    v31 = sub_2237298C8();
    v32 = v31 + 64;
    v33 = -1 << *(v31 + 32);
    if (-v33 < 64)
    {
      v34 = ~(-1 << -v33);
    }

    else
    {
      v34 = -1;
    }

    v35 = v34 & *(v31 + 64);
    v36 = v30 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
    v103 = v31;

    v106 = v36;
    swift_beginAccess();
    v37 = 0;
    v38 = (63 - v33) >> 6;
    v101 = v38;
    for (i = v32; ; v32 = i)
    {
      if (!v35)
      {
        while (1)
        {
          v40 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v40 >= v38)
          {
            v84 = *(v0 + 104);
            v83 = *(v0 + 112);
            v85 = *(v0 + 96);

            v86 = *(v0 + 8);
            goto LABEL_52;
          }

          v35 = *(v32 + 8 * v40);
          ++v37;
          if (v35)
          {
            v37 = v40;
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

LABEL_37:
      v41 = __clz(__rbit64(v35)) | (v37 << 6);
      v42 = *(*(v103 + 48) + 16 * v41 + 8);
      v43 = *(*(v103 + 56) + 8 * v41);

      v105 = v43;
      v44 = sub_223728CF8();
      v46 = *(v106 + 8);
      if (*(v46 + 16))
      {
        v47 = sub_2236261A0(v44, v45);
        v49 = v48;

        if (v49)
        {
          v51 = *(v0 + 104);
          v50 = *(v0 + 112);
          sub_22370BCAC(*(v46 + 56) + *(v104 + 72) * v47, v51);
          sub_22370BE08(v51, v50);
          goto LABEL_42;
        }
      }

      else
      {
      }

      v52 = *(v0 + 112);
      *v52 = 0u;
      *(v52 + 1) = 0u;
      v53 = v28[7];
      v54 = sub_2237287C8();
      (*(*(v54 - 8) + 56))(&v52[v53], 1, 1, v54);
      v52[v28[8]] = 0;
      v55 = &v52[v28[9]];
      *v55 = 0;
      *(v55 + 1) = 0;
LABEL_42:
      v56 = *(v0 + 112);
      v57 = *(v0 + 96);
      v58 = *(v0 + 64);
      v59 = sub_223728CF8();
      v61 = v60;
      v62 = (v56 + v28[9]);
      v63 = v62[1];

      *v62 = v59;
      v62[1] = v61;
      v64 = sub_223728CF8();
      v66 = v65;
      swift_beginAccess();
      sub_22370BCAC(v56, v57);
      v67 = *(v106 + 8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107[0] = *(v106 + 8);
      v69 = v107[0];
      v70 = sub_2236261A0(v64, v66);
      v72 = v69[2];
      v73 = (v71 & 1) == 0;
      v74 = __OFADD__(v72, v73);
      v75 = v72 + v73;
      if (v74)
      {
        goto LABEL_70;
      }

      v76 = v71;
      if (v69[3] >= v75)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v82 = v70;
          sub_22365FD20();
          v70 = v82;
          v69 = v107[0];
        }
      }

      else
      {
        sub_22368D374(v75, isUniquelyReferenced_nonNull_native);
        v69 = v107[0];
        v70 = sub_2236261A0(v64, v66);
        if ((v76 & 1) != (v77 & 1))
        {

          return sub_22372B708();
        }
      }

      v78 = *(v0 + 96);
      if (v76)
      {
        sub_22370C058(*(v0 + 96), v69[7] + *(v104 + 72) * v70);
      }

      else
      {
        v69[(v70 >> 6) + 8] |= 1 << v70;
        v79 = (v69[6] + 16 * v70);
        *v79 = v64;
        v79[1] = v66;
        sub_22370BE08(v78, v69[7] + *(v104 + 72) * v70);
        v80 = v69[2];
        v74 = __OFADD__(v80, 1);
        v81 = v80 + 1;
        if (v74)
        {
          goto LABEL_71;
        }

        v69[2] = v81;
      }

      v35 &= v35 - 1;
      v39 = *(v0 + 112);
      *(v106 + 8) = v69;
      swift_endAccess();
      sub_2236453C4(v39, type metadata accessor for RootRequestController.TRPCache);

      v38 = v101;
    }
  }

  if (*(v24 + v25) <= 1u && *(v24 + v25))
  {
LABEL_24:

    goto LABEL_26;
  }

  v27 = sub_22372B6E8();

  if (v27)
  {
    goto LABEL_26;
  }

  v88 = *(v0 + 72);

  v89 = sub_22372AC88();
  v90 = sub_22372B278();

  if (os_log_type_enabled(v89, v90))
  {
    v91 = 0xEB0000000064657ALL;
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v107[0] = v93;
    *v92 = 136315138;
    v94 = *(v24 + v25);
    if (v94 <= 1)
    {
      v95 = 0x696C616974696E69;
      if (*(v24 + v25))
      {
        v95 = 0x6E69766965636572;
        v91 = 0xED00007350525467;
      }
    }

    else if (v94 == 2)
    {
      v91 = 0x8000000223734360;
      v95 = 0xD00000000000001FLL;
    }

    else if (v94 == 3)
    {
      v95 = 0x6C616E6946707274;
      v91 = 0xEC00000064657A69;
    }

    else
    {
      v95 = 0xD000000000000010;
      v91 = 0x8000000223734390;
    }

    v96 = sub_223623274(v95, v91, v107);

    *(v92 + 4) = v96;
    _os_log_impl(&dword_223620000, v89, v90, "Received MultiUserRootTRPCandidateRequestMessage when state: %s", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v93);
    MEMORY[0x223DE8A80](v93, -1, -1);
    MEMORY[0x223DE8A80](v92, -1, -1);
  }

  v97 = *(v0 + 104);
  v98 = *(v0 + 112);
  v99 = *(v0 + 96);
  sub_223657180();
  swift_allocError();
  *v100 = xmmword_223732A20;
  *(v100 + 16) = 4;
  swift_willThrow();

  v86 = *(v0 + 8);
LABEL_52:

  return v86();
}

uint64_t sub_2236F8A5C()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_223620000, v4, v5, "Received %@", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2236F8BDC(void *a1, uint64_t a2)
{
  v89 = a2;
  v5 = 0xEB0000000064657ALL;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F928, &unk_223732ED0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = v83 - v9;
  v11 = type metadata accessor for RootRequestController.TRPCache(0);
  v86 = *(v11 - 1);
  v12 = v86[8];
  v14 = MEMORY[0x28223BE20](v11, v13);
  MEMORY[0x28223BE20](v14, v15);
  v88 = v83 - v16;
  v17 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state;
  v18 = *(v2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
  v84 = v19;
  if (!v18)
  {
    goto LABEL_5;
  }

  v20 = 0x696C616974696E69;
  v21 = sub_22372B6E8();

  if (v21)
  {
    goto LABEL_7;
  }

  if (*(v91 + v17) > 1u || !*(v91 + v17))
  {
    v22 = sub_22372B6E8();

    if ((v22 & 1) == 0)
    {
      v69 = v17;
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v70 = sub_22372AC98();
      __swift_project_value_buffer(v70, qword_28132B680);
      v71 = v91;

      v72 = sub_22372AC88();
      v73 = sub_22372B278();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *&v93[0] = v75;
        *v74 = 136315138;
        v76 = *(v71 + v69);
        if (v76 <= 1)
        {
          if (*(v71 + v69))
          {
            v20 = 0x6E69766965636572;
            v5 = 0xED00007350525467;
          }
        }

        else if (v76 == 2)
        {
          v5 = 0x8000000223734360;
          v20 = 0xD00000000000001FLL;
        }

        else if (v76 == 3)
        {
          v20 = 0x6C616E6946707274;
          v5 = 0xEC00000064657A69;
        }

        else
        {
          v20 = 0xD000000000000010;
          v5 = 0x8000000223734390;
        }

        v81 = sub_223623274(v20, v5, v93);

        *(v74 + 4) = v81;
        _os_log_impl(&dword_223620000, v72, v73, "Received TRPCandidateRequestMessage when state: %s", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v75);
        MEMORY[0x223DE8A80](v75, -1, -1);
        MEMORY[0x223DE8A80](v74, -1, -1);
      }

      sub_223657180();
      swift_allocError();
      *v82 = xmmword_223732A20;
      *(v82 + 16) = 4;
      return swift_willThrow();
    }
  }

  else
  {
LABEL_5:
  }

LABEL_7:
  v85 = v17;
  v83[1] = v3;
  ObjectType = swift_getObjectType();
  v23 = sub_223728CF8();
  v25 = v24;
  v26 = v91 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
  swift_beginAccess();
  v90 = v26;
  v27 = *(v26 + 8);
  if (*(v27 + 16))
  {
    v28 = sub_2236261A0(v23, v25);
    v30 = v29;

    if (v30)
    {
      v31 = *(v27 + 56) + v86[9] * v28;
      v32 = v84;
      sub_22370BCAC(v31, v84);
      v33 = v88;
      sub_22370BE08(v32, v88);
      goto LABEL_12;
    }
  }

  else
  {
  }

  v33 = v88;
  *v88 = 0u;
  *(v33 + 1) = 0u;
  v34 = v11[7];
  v35 = sub_2237287C8();
  (*(*(v35 - 8) + 56))(&v33[v34], 1, 1, v35);
  v33[v11[8]] = 0;
  v36 = &v33[v11[9]];
  *v36 = 0;
  *(v36 + 1) = 0;
LABEL_12:
  v37 = *v33;
  v38 = a1;
  v39 = a1;

  v40 = v89;
  *v33 = v38;
  *(v33 + 1) = v40;
  v41 = v33;
  v42 = sub_223728CF8();
  v44 = v43;
  sub_22370BCAC(v41, v10);
  (v86[7])(v10, 0, 1, v11);
  v45 = v90;
  swift_beginAccess();
  sub_223714400(v10, v42, v44);
  v46 = *(v45 + 24);
  *(v45 + 24) = v38;
  *(v45 + 32) = v40;
  swift_endAccess();

  *(v91 + v85) = 1;
  v47 = *(v40 + 8);
  v86 = v39;
  v85 = v40 + 8;
  v84 = v47;
  v48 = v47(ObjectType, v40);
  v49 = *(v48 + 16);
  if (v49)
  {
    v94 = MEMORY[0x277D84F90];
    sub_22372B4F8();
    v50 = v48 + 32;
    do
    {
      sub_223634890(v50, v93, &qword_27D08F7B0, &qword_22372DD30);
      v92[0] = v93[0];
      v92[1] = v93[1];
      v92[2] = v93[2];
      __swift_destroy_boxed_opaque_existential_1Tm(v92 + 1);
      sub_22372B4D8();
      v51 = *(v94 + 16);
      sub_22372B508();
      sub_22372B518();
      sub_22372B4E8();
      v50 += 48;
      --v49;
    }

    while (v49);

    v52 = v94;
  }

  else
  {

    v52 = MEMORY[0x277D84F90];
  }

  v53 = v52 & 0xFFFFFFFFFFFFFF8;
  if (v52 >> 62)
  {
LABEL_57:
    v54 = sub_22372B558();
  }

  else
  {
    v54 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v55 = 0;
  do
  {
    v56 = v55;
    if (v54 == v55)
    {
      break;
    }

    if ((v52 & 0xC000000000000001) != 0)
    {
      v57 = MEMORY[0x223DE7ED0](v55, v52);
    }

    else
    {
      if (v55 >= *(v53 + 16))
      {
        goto LABEL_55;
      }

      v57 = *(v52 + 8 * v55 + 32);
    }

    v58 = v57;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v59 = [v57 speechEvent];

    v55 = v56 + 1;
  }

  while (v59 != 17);

  v60 = v89;
  *(v90 + 1) = v54 != v56;
  v61 = v84(ObjectType, v60);
  v62 = v61;
  v63 = *(v61 + 16);
  v53 = 1;
  if (v63)
  {
    v64 = 0;
    v52 = v61 + 32;
    while (v64 < *(v62 + 16))
    {
      sub_223634890(v52, v93, &qword_27D08F7B0, &qword_22372DD30);
      sub_223634890(v93, v92, &qword_27D08F7B0, &qword_22372DD30);
      v53 = *&v92[0];
      v65 = [*&v92[0] speechPackage];

      if (v65 && (v66 = [v65 recognition], v65, v66))
      {
        v67 = [v66 oneBestTranscript];

        __swift_destroy_boxed_opaque_existential_1Tm(v92 + 1);
        if (v67)
        {

          sub_223626478(v93, &qword_27D08F7B0, &qword_22372DD30);
          v68 = 0;
          goto LABEL_47;
        }

        sub_223626478(v93, &qword_27D08F7B0, &qword_22372DD30);
      }

      else
      {
        sub_223626478(v93, &qword_27D08F7B0, &qword_22372DD30);
        __swift_destroy_boxed_opaque_existential_1Tm(v92 + 1);
      }

      ++v64;
      v52 += 48;
      if (v63 == v64)
      {
        v68 = 1;
        goto LABEL_47;
      }
    }

    goto LABEL_56;
  }

  v68 = 1;
LABEL_47:

  v78 = v90;
  v77 = v91;
  *(v90 + 5) = v68;
  v79 = *__swift_project_boxed_opaque_existential_1((v77 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_promptStateManager), *(v77 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_promptStateManager + 24));
  sub_2236BB9DC(v68, (*(v78 + 4) & 1) == 0);
  return sub_2236453C4(v88, type metadata accessor for RootRequestController.TRPCache);
}

uint64_t sub_2236F9644(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2236F9664, v1, 0);
}

uint64_t sub_2236F9664()
{
  v41 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B680);
  v4 = v1;

  v5 = sub_22372AC88();
  v6 = sub_22372B268();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    v12 = *(v7 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v40[0] = v11;
    v13 = 0x8000000223734360;
    v14 = 0xD00000000000001FLL;
    v15 = 0x6C616E6946707274;
    v16 = 0xEC00000064657A69;
    if (v12 != 3)
    {
      v15 = 0xD000000000000010;
      v16 = 0x8000000223734390;
    }

    if (v12 != 2)
    {
      v14 = v15;
      v13 = v16;
    }

    v17 = 0x696C616974696E69;
    if (v12)
    {
      v17 = 0x6E69766965636572;
    }

    v18 = 0xEB0000000064657ALL;
    if (v12)
    {
      v18 = 0xED00007350525467;
    }

    if (v12 <= 1)
    {
      v19 = v17;
    }

    else
    {
      v19 = v14;
    }

    if (v12 <= 1)
    {
      v20 = v18;
    }

    else
    {
      v20 = v13;
    }

    v21 = v11;
    v22 = *(v0 + 16);
    v23 = sub_223623274(v19, v20, v40);

    *(v9 + 14) = v23;
    _os_log_impl(&dword_223620000, v5, v6, "Received %@ when state: %s", v9, 0x16u);
    sub_223626478(v10, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x223DE8A80](v21, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  else
  {
  }

  v24 = *(v0 + 24);
  v25 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state;
  if (*(v24 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u && !*(v24 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
  {
    goto LABEL_25;
  }

  v26 = sub_22372B6E8();

  if (v26)
  {
LABEL_27:
    *(v24 + v25) = 1;
    v28 = *(v0 + 8);
    goto LABEL_28;
  }

  if (*(v24 + v25) <= 1u && *(v24 + v25))
  {
LABEL_25:

    goto LABEL_27;
  }

  v27 = sub_22372B6E8();

  if (v27)
  {
    goto LABEL_27;
  }

  v30 = *(v0 + 24);

  v31 = sub_22372AC88();
  v32 = sub_22372B278();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = 0xEB0000000064657ALL;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40[0] = v35;
    *v34 = 136315138;
    v36 = *(v24 + v25);
    if (v36 <= 1)
    {
      v37 = 0x696C616974696E69;
      if (*(v24 + v25))
      {
        v37 = 0x6E69766965636572;
        v33 = 0xED00007350525467;
      }
    }

    else if (v36 == 2)
    {
      v33 = 0x8000000223734360;
      v37 = 0xD00000000000001FLL;
    }

    else if (v36 == 3)
    {
      v37 = 0x6C616E6946707274;
      v33 = 0xEC00000064657A69;
    }

    else
    {
      v37 = 0xD000000000000010;
      v33 = 0x8000000223734390;
    }

    v38 = sub_223623274(v37, v33, v40);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_223620000, v31, v32, "Received TRPCandidateRequestMessage when state: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x223DE8A80](v35, -1, -1);
    MEMORY[0x223DE8A80](v34, -1, -1);
  }

  sub_223657180();
  swift_allocError();
  *v39 = xmmword_223732A20;
  *(v39 + 16) = 4;
  swift_willThrow();
  v28 = *(v0 + 8);
LABEL_28:

  return v28();
}

uint64_t sub_2236F9CBC(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_223729F08();
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v5 = *(v4 + 64) + 15;
  v2[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F740, &unk_223731DC0);
  v2[19] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F928, &unk_223732ED0) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v10 = type metadata accessor for RootRequestController.TRPCache(0);
  v2[27] = v10;
  v11 = *(v10 - 8);
  v2[28] = v11;
  v12 = *(v11 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2236F9EC0, v1, 0);
}

uint64_t sub_2236F9EC0()
{
  v170 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B680);
  v4 = v1;

  v5 = sub_22372AC88();
  v6 = sub_22372B268();

  v7 = &unk_28132B000;
  if (os_log_type_enabled(v5, v6))
  {
    v9 = *(v0 + 112);
    v8 = *(v0 + 120);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v169[0] = v12;
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2080;
    v13 = *(v8 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v14 = 0x8000000223734360;
    v15 = 0xD00000000000001FLL;
    v16 = 0x6C616E6946707274;
    v17 = 0xEC00000064657A69;
    if (v13 != 3)
    {
      v16 = 0xD000000000000010;
      v17 = 0x8000000223734390;
    }

    if (v13 != 2)
    {
      v15 = v16;
      v14 = v17;
    }

    v18 = 0x6E69766965636572;
    if (!*(v8 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
    {
      v18 = 0x696C616974696E69;
    }

    v19 = 0xED00007350525467;
    if (!*(v8 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
    {
      v19 = 0xEB0000000064657ALL;
    }

    if (*(v8 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
    {
      v20 = v18;
    }

    else
    {
      v20 = v15;
    }

    if (v13 <= 1)
    {
      v21 = v19;
    }

    else
    {
      v21 = v14;
    }

    v22 = v12;
    v23 = 0xEB0000000064657ALL;
    v24 = *(v0 + 112);
    v25 = sub_223623274(v20, v21, v169);

    *(v10 + 14) = v25;
    _os_log_impl(&dword_223620000, v5, v6, "Received %@ when state: %s", v10, 0x16u);
    sub_223626478(v11, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x223DE8A80](v22, -1, -1);
    MEMORY[0x223DE8A80](v10, -1, -1);

    v7 = &unk_28132B000;
  }

  else
  {
    v23 = 0xEB0000000064657ALL;
  }

  v26 = *(v0 + 112);
  v27 = sub_22372AC88();
  v28 = sub_22372B288();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = *(v0 + 112);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v169[0] = v31;
    *v30 = 136446210;
    v32 = sub_223728CF8();
    v34 = sub_223623274(v32, v33, v169);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_223620000, v27, v28, "Received NLTRPCandidateMessage for trpId: %{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x223DE8A80](v31, -1, -1);
    MEMORY[0x223DE8A80](v30, -1, -1);
  }

  v35 = *(v0 + 120);
  v36 = v7[311];
  if (*(v35 + v36) <= 1u && *(v35 + v36))
  {
  }

  else
  {
    v37 = sub_22372B6E8();

    if ((v37 & 1) == 0)
    {
      v81 = *(v0 + 120);

      v82 = sub_22372AC88();
      v83 = sub_22372B278();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v169[0] = v85;
        *v84 = 136315138;
        v86 = *(v35 + v36);
        if (v86 <= 1)
        {
          if (*(v35 + v36))
          {
            v87 = 0x6E69766965636572;
            v23 = 0xED00007350525467;
          }

          else
          {
            v87 = 0x696C616974696E69;
          }
        }

        else if (v86 == 2)
        {
          v23 = 0x8000000223734360;
          v87 = 0xD00000000000001FLL;
        }

        else if (v86 == 3)
        {
          v87 = 0x6C616E6946707274;
          v23 = 0xEC00000064657A69;
        }

        else
        {
          v23 = 0x8000000223734390;
          v87 = 0xD000000000000010;
        }

        v108 = sub_223623274(v87, v23, v169);

        *(v84 + 4) = v108;
        _os_log_impl(&dword_223620000, v82, v83, "Received NLTRPCandidateMessage when state: %s", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v85);
        MEMORY[0x223DE8A80](v85, -1, -1);
        MEMORY[0x223DE8A80](v84, -1, -1);
      }

      v100 = 0;
      v101 = 4;
      v98 = 2;
      goto LABEL_53;
    }
  }

  v38 = *(v0 + 112);
  v39 = *(v0 + 120);
  v40 = sub_223728CF8();
  v42 = v41;
  v43 = v39 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
  swift_beginAccess();
  v44 = *(v43 + 8);
  if (!*(v44 + 16))
  {

    goto LABEL_40;
  }

  v45 = sub_2236261A0(v40, v42);
  v47 = v46;

  if ((v47 & 1) == 0)
  {
LABEL_40:
    v88 = *(v0 + 112);
    v89 = sub_22372AC88();
    v90 = sub_22372B278();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = *(v0 + 112);
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v169[0] = v93;
      *v92 = 136315138;
      v94 = sub_223728CF8();
      v96 = sub_223623274(v94, v95, v169);

      *(v92 + 4) = v96;
      _os_log_impl(&dword_223620000, v89, v90, "No TRP cache found for trpId = %s. Could not cache NLTRPCandidateMessage", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      MEMORY[0x223DE8A80](v93, -1, -1);
      MEMORY[0x223DE8A80](v92, -1, -1);
    }

    v97 = *(v0 + 112);
    v98 = sub_223728CF8();
    v100 = v99;
    v101 = 0;
LABEL_53:
    sub_223657180();
    swift_allocError();
    *v109 = v98;
    *(v109 + 8) = v100;
    *(v109 + 16) = v101;
    swift_willThrow();
    v111 = *(v0 + 232);
    v110 = *(v0 + 240);
    v113 = *(v0 + 200);
    v112 = *(v0 + 208);
    v115 = *(v0 + 184);
    v114 = *(v0 + 192);
    v117 = *(v0 + 168);
    v116 = *(v0 + 176);
    v118 = *(v0 + 160);
    v119 = *(v0 + 144);

    v120 = *(v0 + 8);
    goto LABEL_54;
  }

  v49 = *(v0 + 232);
  v48 = *(v0 + 240);
  v168 = v43;
  v50 = *(v0 + 224);
  v167 = *(v0 + 216);
  v51 = *(v0 + 208);
  v52 = *(v0 + 112);
  sub_22370BCAC(*(v44 + 56) + *(v50 + 72) * v45, v49);
  sub_22370BE08(v49, v48);
  v53 = *(v48 + 24);
  v54 = v52;

  *(v48 + 24) = v52;
  v55 = sub_223728CF8();
  v57 = v56;
  sub_22370BCAC(v48, v51);
  (*(v50 + 56))(v51, 0, 1, v167);
  swift_beginAccess();
  sub_223714400(v51, v55, v57);
  swift_endAccess();
  v58 = v54;
  v59 = sub_22372AC88();
  v60 = sub_22372B268();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = *(v0 + 112);
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v169[0] = v63;
    *v62 = 136315138;
    v64 = sub_223728CF8();
    v66 = sub_223623274(v64, v65, v169);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_223620000, v59, v60, "Caching NLTRPCandidateMessage for id %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    MEMORY[0x223DE8A80](v63, -1, -1);
    MEMORY[0x223DE8A80](v62, -1, -1);
  }

  v67 = *(v0 + 120);
  sub_2236453C4(*(v0 + 240), type metadata accessor for RootRequestController.TRPCache);
  v68 = &unk_28132B000;
  if (*(v67 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_isSystemAssistantExperienceEnabled) == 1)
  {
    v69 = *(v0 + 200);
    v70 = *(v0 + 168);
    v71 = *(v0 + 152);
    v72 = *(v0 + 128);
    v73 = *(v0 + 136);
    v74 = *(v0 + 120);
    v75 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_requestType;
    swift_beginAccess();
    (*(v73 + 104))(v69, *MEMORY[0x277D5CF28], v72);
    (*(v73 + 56))(v69, 0, 1, v72);
    v76 = *(v71 + 48);
    sub_223634890(v74 + v75, v70, &qword_27D08E9D0, &qword_22372D1E0);
    sub_223634890(v69, v70 + v76, &qword_27D08E9D0, &qword_22372D1E0);
    v77 = *(v73 + 48);
    if (v77(v70, 1, v72) == 1)
    {
      v78 = *(v0 + 128);
      sub_223626478(*(v0 + 200), &qword_27D08E9D0, &qword_22372D1E0);
      v79 = v77(v70 + v76, 1, v78);
      v68 = &unk_28132B000;
      if (v79 == 1)
      {
        sub_223626478(*(v0 + 168), &qword_27D08E9D0, &qword_22372D1E0);
        v80 = v168;
LABEL_58:
        if ((*(v80 + 2) & 1) == 0)
        {
          v129 = *(v0 + 112);
          v128 = *(v0 + 120);
          v130 = sub_2237282B8();
          sub_223708F50(v130);
        }

        goto LABEL_60;
      }
    }

    else
    {
      v102 = *(v0 + 128);
      sub_223634890(*(v0 + 168), *(v0 + 192), &qword_27D08E9D0, &qword_22372D1E0);
      v103 = v77(v70 + v76, 1, v102);
      v104 = *(v0 + 192);
      v105 = *(v0 + 200);
      if (v103 != 1)
      {
        v122 = *(v0 + 168);
        v124 = *(v0 + 136);
        v123 = *(v0 + 144);
        v125 = *(v0 + 128);
        (*(v124 + 32))(v123, v70 + v76, v125);
        sub_223623428(&unk_28132B540, MEMORY[0x277D5CF58]);
        v126 = sub_22372AFC8();
        v127 = *(v124 + 8);
        v127(v123, v125);
        sub_223626478(v105, &qword_27D08E9D0, &qword_22372D1E0);
        v127(v104, v125);
        sub_223626478(v122, &qword_27D08E9D0, &qword_22372D1E0);
        v80 = v168;
        v68 = &unk_28132B000;
        if ((v126 & 1) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_58;
      }

      v106 = *(v0 + 128);
      v107 = *(v0 + 136);
      sub_223626478(*(v0 + 200), &qword_27D08E9D0, &qword_22372D1E0);
      (*(v107 + 8))(v104, v106);
      v68 = &unk_28132B000;
    }

    sub_223626478(*(v0 + 168), &qword_27D08F740, &unk_223731DC0);
  }

LABEL_60:
  v131 = *(v0 + 184);
  v133 = *(v0 + 152);
  v132 = *(v0 + 160);
  v134 = *(v0 + 128);
  v135 = *(v0 + 136);
  v136 = *(v0 + 120);
  v137 = v68[322];
  swift_beginAccess();
  (*(v135 + 104))(v131, *MEMORY[0x277D5CF40], v134);
  (*(v135 + 56))(v131, 0, 1, v134);
  v138 = *(v133 + 48);
  sub_223634890(v136 + v137, v132, &qword_27D08E9D0, &qword_22372D1E0);
  sub_223634890(v131, v132 + v138, &qword_27D08E9D0, &qword_22372D1E0);
  v139 = *(v135 + 48);
  if (v139(v132, 1, v134) == 1)
  {
    v140 = *(v0 + 128);
    sub_223626478(*(v0 + 184), &qword_27D08E9D0, &qword_22372D1E0);
    if (v139(v132 + v138, 1, v140) == 1)
    {
      sub_223626478(*(v0 + 160), &qword_27D08E9D0, &qword_22372D1E0);
LABEL_67:
      v154 = *(v0 + 112);
      v153 = *(v0 + 120);
      v155 = sub_223728CF8();
      sub_2237007C8(v155, v156);

      goto LABEL_68;
    }

    goto LABEL_65;
  }

  v141 = *(v0 + 128);
  sub_223634890(*(v0 + 160), *(v0 + 176), &qword_27D08E9D0, &qword_22372D1E0);
  v142 = v139(v132 + v138, 1, v141);
  v143 = *(v0 + 176);
  v144 = *(v0 + 184);
  if (v142 == 1)
  {
    v145 = *(v0 + 128);
    v146 = *(v0 + 136);
    sub_223626478(*(v0 + 184), &qword_27D08E9D0, &qword_22372D1E0);
    (*(v146 + 8))(v143, v145);
LABEL_65:
    sub_223626478(*(v0 + 160), &qword_27D08F740, &unk_223731DC0);
    goto LABEL_68;
  }

  v147 = *(v0 + 160);
  v149 = *(v0 + 136);
  v148 = *(v0 + 144);
  v150 = *(v0 + 128);
  (*(v149 + 32))(v148, v132 + v138, v150);
  sub_223623428(&unk_28132B540, MEMORY[0x277D5CF58]);
  v151 = sub_22372AFC8();
  v152 = *(v149 + 8);
  v152(v148, v150);
  sub_223626478(v144, &qword_27D08E9D0, &qword_22372D1E0);
  v152(v143, v150);
  sub_223626478(v147, &qword_27D08E9D0, &qword_22372D1E0);
  if (v151)
  {
    goto LABEL_67;
  }

LABEL_68:
  v158 = *(v0 + 232);
  v157 = *(v0 + 240);
  v160 = *(v0 + 200);
  v159 = *(v0 + 208);
  v162 = *(v0 + 184);
  v161 = *(v0 + 192);
  v164 = *(v0 + 168);
  v163 = *(v0 + 176);
  v165 = *(v0 + 160);
  v166 = *(v0 + 144);

  v120 = *(v0 + 8);
LABEL_54:

  return v120();
}

uint64_t sub_2236FAEAC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2236FAECC, v1, 0);
}

uint64_t sub_2236FAECC()
{
  v45 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B680);
  v4 = v1;

  v5 = sub_22372AC88();
  v6 = sub_22372B268();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v44[0] = v11;
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    v12 = *(v7 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v13 = 0x8000000223734360;
    v14 = 0xD00000000000001FLL;
    v15 = 0x6C616E6946707274;
    v16 = 0xEC00000064657A69;
    if (v12 != 3)
    {
      v15 = 0xD000000000000010;
      v16 = 0x8000000223734390;
    }

    if (v12 != 2)
    {
      v14 = v15;
      v13 = v16;
    }

    v17 = 0x6E69766965636572;
    if (!*(v7 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
    {
      v17 = 0x696C616974696E69;
    }

    v18 = 0xED00007350525467;
    if (!*(v7 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
    {
      v18 = 0xEB0000000064657ALL;
    }

    if (*(v7 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
    {
      v19 = v17;
    }

    else
    {
      v19 = v14;
    }

    if (v12 <= 1)
    {
      v20 = v18;
    }

    else
    {
      v20 = v13;
    }

    v21 = v11;
    v22 = *(v0 + 16);
    v23 = sub_223623274(v19, v20, v44);

    *(v9 + 14) = v23;
    _os_log_impl(&dword_223620000, v5, v6, "Received %@ when state: %s", v9, 0x16u);
    sub_223626478(v10, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x223DE8A80](v21, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  else
  {
  }

  v24 = *(v0 + 24);
  v25 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state;
  if (*(v24 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u && *(v24 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
  {
    goto LABEL_30;
  }

  v26 = sub_22372B6E8();

  if (v26)
  {
LABEL_31:
    v39 = *(v0 + 16);
    v38 = *(v0 + 24);
    *(v24 + v25) = 3;
    sub_223728CF8();
    sub_223728AA8();
    sub_223707B00();

    goto LABEL_32;
  }

  if (*(v24 + v25) == 2)
  {
LABEL_30:

    goto LABEL_31;
  }

  v27 = 0x8000000223734360;
  v28 = sub_22372B6E8();

  if (v28)
  {
    goto LABEL_31;
  }

  v29 = *(v0 + 24);

  v30 = sub_22372AC88();
  v31 = sub_22372B278();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    v44[0] = v33;
    *v32 = 136315138;
    v35 = *(v24 + v25);
    if (v35 <= 1)
    {
      if (*(v24 + v25))
      {
        v37 = 0x6E69766965636572;
        v27 = 0xED00007350525467;
      }

      else
      {
        v27 = 0xEB0000000064657ALL;
        v37 = 0x696C616974696E69;
      }
    }

    else
    {
      if (v35 != 2)
      {
        v36 = v33;
        if (v35 == 3)
        {
          v37 = 0x6C616E6946707274;
          v27 = 0xEC00000064657A69;
        }

        else
        {
          v27 = 0x8000000223734390;
          v37 = 0xD000000000000010;
        }

        goto LABEL_41;
      }

      v37 = 0xD00000000000001FLL;
    }

    v36 = v34;
LABEL_41:
    v42 = sub_223623274(v37, v27, v44);

    *(v32 + 4) = v42;
    _os_log_impl(&dword_223620000, v30, v31, "Received ExecutionFinalizedMessage when state: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x223DE8A80](v36, -1, -1);
    MEMORY[0x223DE8A80](v32, -1, -1);
  }

  sub_223657180();
  swift_allocError();
  *v43 = xmmword_223732A20;
  *(v43 + 16) = 4;
  swift_willThrow();
LABEL_32:
  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_2236FB560(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2236FB580, v1, 0);
}

uint64_t sub_2236FB580()
{
  v56 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B680);
  v4 = v1;

  v5 = sub_22372AC88();
  v6 = sub_22372B268();

  v7 = &unk_28132B000;
  if (os_log_type_enabled(v5, v6))
  {
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v55[0] = v12;
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2080;
    v13 = *(v8 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v14 = 0x8000000223734360;
    v15 = 0xD00000000000001FLL;
    v16 = 0x6C616E6946707274;
    v17 = 0xEC00000064657A69;
    if (v13 != 3)
    {
      v16 = 0xD000000000000010;
      v17 = 0x8000000223734390;
    }

    if (v13 != 2)
    {
      v15 = v16;
      v14 = v17;
    }

    v18 = 0x6E69766965636572;
    if (*(v8 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
    {
      v19 = 0xED00007350525467;
    }

    else
    {
      v18 = 0x696C616974696E69;
      v19 = 0xEB0000000064657ALL;
    }

    if (*(v8 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
    {
      v20 = v18;
    }

    else
    {
      v20 = v15;
    }

    if (v13 <= 1)
    {
      v21 = v19;
    }

    else
    {
      v21 = v14;
    }

    v22 = v12;
    v23 = *(v0 + 40);
    v24 = sub_223623274(v20, v21, v55);

    *(v10 + 14) = v24;
    _os_log_impl(&dword_223620000, v5, v6, "Received %@ when state: %s", v10, 0x16u);
    sub_223626478(v11, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x223DE8A80](v22, -1, -1);
    MEMORY[0x223DE8A80](v10, -1, -1);

    v7 = &unk_28132B000;
  }

  else
  {
  }

  v25 = *(v0 + 48);
  v26 = v7[311];
  if (*(v25 + v26) <= 1u && *(v25 + v26))
  {

LABEL_23:
    v28 = *(v0 + 40);
    v29 = *(v0 + 48) + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
    swift_beginAccess();
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;
    *(v29 + 48) = &off_2836C7098;
    v31 = v28;

    v32 = sub_223729BF8();
    v34 = v33;
    v35 = sub_223708590(v32, v33);
    if (v35)
    {
      v36 = v35;
      v37 = *(v0 + 48);
      sub_2236FC334(v32, v34, v35);
    }

    else
    {

      v46 = sub_22372AC88();
      v47 = sub_22372B268();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v55[0] = v49;
        *v48 = 136315138;
        v50 = sub_223623274(v32, v34, v55);

        *(v48 + 4) = v50;
        _os_log_impl(&dword_223620000, v46, v47, "TTResponse not received for userLevelTRPCandidateId %s yet.", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        MEMORY[0x223DE8A80](v49, -1, -1);
        MEMORY[0x223DE8A80](v48, -1, -1);
      }

      else
      {
      }
    }

    v51 = *(v0 + 8);
    goto LABEL_41;
  }

  v27 = sub_22372B6E8();

  if (v27)
  {
    goto LABEL_23;
  }

  v38 = 0xEB0000000064657ALL;
  v39 = *(v0 + 48);

  v40 = sub_22372AC88();
  v41 = sub_22372B278();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v55[0] = v43;
    *v42 = 136315138;
    v44 = *(v25 + v26);
    if (v44 <= 1)
    {
      if (*(v25 + v26))
      {
        v45 = 0x6E69766965636572;
        v38 = 0xED00007350525467;
      }

      else
      {
        v45 = 0x696C616974696E69;
      }
    }

    else if (v44 == 2)
    {
      v38 = 0x8000000223734360;
      v45 = 0xD00000000000001FLL;
    }

    else if (v44 == 3)
    {
      v45 = 0x6C616E6946707274;
      v38 = 0xEC00000064657A69;
    }

    else
    {
      v45 = 0xD000000000000010;
      v38 = 0x8000000223734390;
    }

    v52 = sub_223623274(v45, v38, v55);

    *(v42 + 4) = v52;
    _os_log_impl(&dword_223620000, v40, v41, "Received StoppedListeningForSpeechContinuationForPlannerMessage when state: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x223DE8A80](v43, -1, -1);
    MEMORY[0x223DE8A80](v42, -1, -1);
  }

  sub_223657180();
  swift_allocError();
  *v53 = xmmword_223732A20;
  *(v53 + 16) = 4;
  swift_willThrow();
  v51 = *(v0 + 8);
LABEL_41:

  return v51();
}

uint64_t sub_2236FBC80(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2236FBCA0, v1, 0);
}

uint64_t sub_2236FBCA0()
{
  v54 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B680);
  v4 = v1;

  v5 = sub_22372AC88();
  v6 = sub_22372B268();

  v7 = &unk_28132B000;
  if (os_log_type_enabled(v5, v6))
  {
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v53[0] = v12;
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2080;
    v13 = *(v8 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v14 = 0x8000000223734360;
    v15 = 0xD00000000000001FLL;
    v16 = 0x6C616E6946707274;
    v17 = 0xEC00000064657A69;
    if (v13 != 3)
    {
      v16 = 0xD000000000000010;
      v17 = 0x8000000223734390;
    }

    if (v13 != 2)
    {
      v15 = v16;
      v14 = v17;
    }

    v18 = 0x6E69766965636572;
    if (*(v8 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
    {
      v19 = 0xED00007350525467;
    }

    else
    {
      v18 = 0x696C616974696E69;
      v19 = 0xEB0000000064657ALL;
    }

    if (*(v8 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
    {
      v20 = v18;
    }

    else
    {
      v20 = v15;
    }

    if (v13 <= 1)
    {
      v21 = v19;
    }

    else
    {
      v21 = v14;
    }

    v22 = v12;
    v23 = *(v0 + 40);
    v24 = sub_223623274(v20, v21, v53);

    *(v10 + 14) = v24;
    _os_log_impl(&dword_223620000, v5, v6, "Received %@ when state: %s", v10, 0x16u);
    sub_223626478(v11, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x223DE8A80](v22, -1, -1);
    MEMORY[0x223DE8A80](v10, -1, -1);

    v7 = &unk_28132B000;
  }

  else
  {
  }

  v25 = *(v0 + 48);
  v26 = v7[311];
  if (*(v25 + v26) <= 1u && *(v25 + v26))
  {

LABEL_23:
    v28 = *(v0 + 40);
    v29 = *(v0 + 48) + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
    swift_beginAccess();
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;
    *(v29 + 48) = &off_2836C7088;
    v31 = v28;

    v32 = sub_223729B58();
    v34 = v33;
    v35 = sub_223708590(v32, v33);
    if (v35)
    {
      v36 = v35;
      v37 = *(v0 + 48);
      sub_2236FC334(v32, v34, v35);
    }

    else
    {

      v46 = sub_22372AC88();
      v47 = sub_22372B288();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_223620000, v46, v47, "TTResponse not received for the lastTrpId yet.", v48, 2u);
        MEMORY[0x223DE8A80](v48, -1, -1);
      }
    }

    v49 = *(v0 + 8);
    goto LABEL_41;
  }

  v27 = sub_22372B6E8();

  if (v27)
  {
    goto LABEL_23;
  }

  v38 = 0xEB0000000064657ALL;
  v39 = *(v0 + 48);

  v40 = sub_22372AC88();
  v41 = sub_22372B278();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v53[0] = v43;
    *v42 = 136315138;
    v44 = *(v25 + v26);
    if (v44 <= 1)
    {
      if (*(v25 + v26))
      {
        v45 = 0x6E69766965636572;
        v38 = 0xED00007350525467;
      }

      else
      {
        v45 = 0x696C616974696E69;
      }
    }

    else if (v44 == 2)
    {
      v38 = 0x8000000223734360;
      v45 = 0xD00000000000001FLL;
    }

    else if (v44 == 3)
    {
      v45 = 0x6C616E6946707274;
      v38 = 0xEC00000064657A69;
    }

    else
    {
      v45 = 0xD000000000000010;
      v38 = 0x8000000223734390;
    }

    v50 = sub_223623274(v45, v38, v53);

    *(v42 + 4) = v50;
    _os_log_impl(&dword_223620000, v40, v41, "Received  StoppedListeningForSpeechContinuationMessage when state: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x223DE8A80](v43, -1, -1);
    MEMORY[0x223DE8A80](v42, -1, -1);
  }

  sub_223657180();
  swift_allocError();
  *v51 = xmmword_223732A20;
  *(v51 + 16) = 4;
  swift_willThrow();
  v49 = *(v0 + 8);
LABEL_41:

  return v49();
}

void sub_2236FC334(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v124 = sub_223727F38();
  v8 = *(v124 - 8);
  v9 = *(v8 + 8);
  MEMORY[0x28223BE20](v124, v10);
  v104 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F9A0, &qword_223732F18);
  v12 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116, v13);
  v115 = &v97 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F7A0, &unk_22372D180);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v20 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v123 = &v97 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v97 - v25;
  v27 = type metadata accessor for RootRequestController.TRPCache(0);
  v119 = *(v27 - 8);
  v28 = *(v119 + 64);
  v30 = MEMORY[0x28223BE20](v27 - 8, v29);
  v118 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v117 = &v97 - v33;
  if ((*(v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_isPatientSiriSupported) & 1) == 0)
  {
    v81 = a1;
    v82 = a2;
    v83 = a3;
LABEL_24:
    sub_2236FCE70(v81, v82, v83);
    return;
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v98 = a1;
  v99 = a2;
  v34 = sub_22372AC98();
  v35 = __swift_project_value_buffer(v34, qword_28132B680);

  v101 = v35;
  v36 = sub_22372AC88();
  v37 = sub_22372B268();

  v38 = os_log_type_enabled(v36, v37);
  v102 = v4;
  v107 = v20;
  v122 = v26;
  v100 = a3;
  v121 = v8;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v125 = v40;
    *v39 = 136315138;
    v41 = v102 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
    swift_beginAccess();
    v42 = *(v41 + 16);

    v44 = MEMORY[0x223DE7B80](v43, MEMORY[0x277D837D0]);
    v46 = v45;

    v47 = sub_223623274(v44, v46, &v125);

    *(v39 + 4) = v47;
    v4 = v102;
    _os_log_impl(&dword_223620000, v36, v37, "Searching for selected TRP within default endpointed trpIds: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x223DE8A80](v40, -1, -1);
    MEMORY[0x223DE8A80](v39, -1, -1);
  }

  v48 = v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
  swift_beginAccess();
  v49 = *(v48 + 16);
  v50 = *(v49 + 16);
  if (!v50)
  {
LABEL_31:
    v91 = v99;

    v92 = sub_22372AC88();
    v93 = sub_22372B268();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v126 = v95;
      *v94 = 136315138;
      v96 = v98;
      *(v94 + 4) = sub_223623274(v98, v91, &v126);
      _os_log_impl(&dword_223620000, v92, v93, "Could not find any selected TRPs. Continuing with default behavior with trpId: %s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v95);
      MEMORY[0x223DE8A80](v95, -1, -1);
      MEMORY[0x223DE8A80](v94, -1, -1);

      v83 = v100;
    }

    else
    {

      v83 = v100;
      v96 = v98;
    }

    v81 = v96;
    v82 = v91;
    goto LABEL_24;
  }

  v113 = (v121 + 56);
  v112 = *MEMORY[0x277D5CAE8];
  v111 = (v121 + 104);
  v51 = (v121 + 48);
  v103 = (v121 + 32);
  v106 = (v121 + 8);

  v52 = (v49 + 16 * v50 + 24);
  v53 = &unk_22372D180;
  v54 = v117;
  v114 = v49;
  v108 = v48;
  v110 = v51;
  while (1)
  {
    if (v50 > *(v49 + 16))
    {
      __break(1u);
LABEL_30:

      goto LABEL_31;
    }

    v55 = *(v48 + 8);
    if (*(v55 + 16))
    {
      break;
    }

LABEL_10:
    v52 -= 2;
    if (!--v50)
    {
      goto LABEL_30;
    }
  }

  v56 = v53;
  v57 = *(v52 - 1);
  v58 = *v52;

  v59 = sub_2236261A0(v57, v58);
  if ((v60 & 1) == 0)
  {
LABEL_9:

    v53 = v56;
    goto LABEL_10;
  }

  v61 = *(v55 + 56);
  v62 = v118;
  sub_22370BCAC(v61 + *(v119 + 72) * v59, v118);
  sub_22370BE08(v62, v54);
  v63 = *(v54 + 16);
  if (!v63)
  {
    sub_2236453C4(v54, type metadata accessor for RootRequestController.TRPCache);
    goto LABEL_9;
  }

  v120 = v58;
  v109 = v57;
  v64 = v63;
  v65 = v122;
  v121 = v64;
  sub_223727F48();
  v66 = *v113;
  v67 = v124;
  (*v113)(v65, 0, 1, v124);
  v68 = v123;
  (*v111)(v123, v112, v67);
  v66(v68, 0, 1, v67);
  v69 = v115;
  v70 = *(v116 + 48);
  sub_223634890(v65, v115, &unk_27D08F7A0, v56);
  sub_223634890(v68, v69 + v70, &unk_27D08F7A0, v56);
  v71 = *v110;
  if ((*v110)(v69, 1, v67) != 1)
  {
    v74 = v56;
    v75 = v107;
    sub_223634890(v69, v107, &unk_27D08F7A0, v74);
    if (v71(v69 + v70, 1, v124) != 1)
    {
      v76 = v69 + v70;
      v77 = v124;
      v78 = v104;
      (*v103)(v104, v76, v124);
      sub_223623428(&unk_27D08F9A8, MEMORY[0x277D5CAF8]);
      v105 = sub_22372AFC8();
      v79 = *v106;
      (*v106)(v78, v77);
      v80 = v79;
      v53 = &unk_22372D180;
      sub_223626478(v123, &unk_27D08F7A0, &unk_22372D180);
      sub_223626478(v122, &unk_27D08F7A0, &unk_22372D180);
      v80(v75, v77);
      sub_223626478(v69, &unk_27D08F7A0, &unk_22372D180);
      v54 = v117;
      v49 = v114;
      v73 = v120;
      v84 = v121;
      if (v105)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    v53 = &unk_22372D180;
    sub_223626478(v123, &unk_27D08F7A0, &unk_22372D180);
    sub_223626478(v122, &unk_27D08F7A0, &unk_22372D180);
    (*v106)(v75, v124);
    v54 = v117;
LABEL_20:
    sub_223626478(v69, &qword_27D08F9A0, &qword_223732F18);
    v49 = v114;
    v84 = v121;
LABEL_22:
    sub_2236453C4(v54, type metadata accessor for RootRequestController.TRPCache);

    v48 = v108;
    goto LABEL_10;
  }

  sub_223626478(v123, &unk_27D08F7A0, v56);
  sub_223626478(v122, &unk_27D08F7A0, v56);
  v72 = v71(v69 + v70, 1, v124);
  v54 = v117;
  v73 = v120;
  v53 = v56;
  if (v72 != 1)
  {
    goto LABEL_20;
  }

  sub_223626478(v69, &unk_27D08F7A0, &unk_22372D180);
  v84 = v121;
LABEL_25:

  v85 = sub_22372AC88();
  v86 = sub_22372B268();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v126 = v88;
    *v87 = 136315138;
    v89 = v109;
    *(v87 + 4) = sub_223623274(v109, v73, &v126);
    _os_log_impl(&dword_223620000, v85, v86, "Found most recent selected as well as default endpointed TRPID: %s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v88);
    MEMORY[0x223DE8A80](v88, -1, -1);
    v90 = v87;
    v54 = v117;
    MEMORY[0x223DE8A80](v90, -1, -1);
  }

  else
  {

    v89 = v109;
  }

  sub_2236FCE70(v89, v73, v84);
  sub_2236453C4(v54, type metadata accessor for RootRequestController.TRPCache);
}

void sub_2236FCE70(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v79 = a1;
  v4 = v3;
  v7 = sub_223727F38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v76 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v12 = sub_22372AC98();
  v13 = __swift_project_value_buffer(v12, qword_28132B680);

  v14 = sub_22372AC88();
  v15 = sub_22372B268();

  v16 = os_log_type_enabled(v14, v15);
  v77 = a2;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v75 = v8;
    v18 = v4;
    v19 = a3;
    v20 = v7;
    v21 = v13;
    v22 = a2;
    v23 = v17;
    v24 = swift_slowAlloc();
    v80[0] = v24;
    *v23 = 136315138;
    v25 = v22;
    v13 = v21;
    v7 = v20;
    a3 = v19;
    v4 = v18;
    v8 = v75;
    *(v23 + 4) = sub_223623274(v79, v25, v80);
    _os_log_impl(&dword_223620000, v14, v15, "Really handling StoppedListeningForSpeechContinuationMessage now with trpId: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x223DE8A80](v24, -1, -1);
    MEMORY[0x223DE8A80](v23, -1, -1);
  }

  MEMORY[0x28223BE20](v26, v27);
  *(&v70 - 2) = v4;
  *(&v70 - 1) = a3;
  v28 = objc_allocWithZone(sub_223729718());
  v29 = sub_2237296B8();
  if (v29)
  {
    v30 = v29;
    v31 = sub_22372AC88();
    v32 = sub_22372B268();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_223620000, v31, v32, "Going to post MitigationDecisionFinalizedMessage", v33, 2u);
      MEMORY[0x223DE8A80](v33, -1, -1);
    }

    v34 = *(v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher + 32);
    __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher), *(v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher + 24));
    if ((sub_223729D88() & 1) == 0)
    {
      type metadata accessor for RequestControllerBridgeInternalErrors(0);
      sub_223623428(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
      swift_allocError();
      *v45 = v30;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return;
    }
  }

  v35 = v76;
  sub_223727F48();
  v36 = sub_2236FDA84();
  (*(v8 + 8))(v35, v7);
  if (v36)
  {

    v37 = sub_22372AC88();
    v38 = sub_22372B288();
    v39 = os_log_type_enabled(v37, v38);
    v72 = v13;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v80[0] = v41;
      *v40 = 136315650;
      *(v40 + 4) = sub_223623274(v4[14], v4[15], v80);
      *(v40 + 12) = 1024;
      v42 = v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
      swift_beginAccess();
      *(v40 + 14) = v42[4];
      *(v40 + 18) = 1024;
      *(v40 + 20) = *v42;

      _os_log_impl(&dword_223620000, v37, v38, "mitigating for a request with requestId %s that's isActive - %{BOOL}d and isFlexibleFollowup - %{BOOL}d", v40, 0x18u);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x223DE8A80](v41, -1, -1);
      MEMORY[0x223DE8A80](v40, -1, -1);
    }

    else
    {
    }

    v76 = *(v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_requestControllerMitigationHandler);
    v46 = v4[14];
    v47 = v4[15];
    v48 = v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
    swift_beginAccess();
    v49 = *v48;
    v50 = v48[1];
    v51 = v4[16];
    v52 = v4[17];
    v53 = sub_2237273B8();
    v54 = *(v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v71 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state;
    v74 = v53;
    v75 = v51;
    v73 = v55;
    if (v54 <= 1)
    {
      if (v54)
      {
        v56 = 0xED00007350525467;
        v57 = 0x6E69766965636572;
      }

      else
      {
        v56 = 0xEB0000000064657ALL;
        v57 = 0x696C616974696E69;
      }
    }

    else if (v54 == 2)
    {
      v56 = 0x8000000223734360;
      v57 = 0xD00000000000001FLL;
    }

    else if (v54 == 3)
    {
      v56 = 0xEC00000064657A69;
      v57 = 0x6C616E6946707274;
    }

    else
    {
      v57 = 0xD000000000000010;
      v56 = 0x8000000223734390;
    }

    v58 = v49 | v50;
    if (v58)
    {
      sub_2236ECFDC();
    }

    else
    {
      sub_2236ECD8C();
      sub_2236ED384();
    }

    if (qword_281328E80 != -1)
    {
      swift_once();
    }

    v59 = sub_22372A648();
    __swift_project_value_buffer(v59, qword_28132B6C8);
    v60 = swift_allocObject();
    v60[2] = v57;
    v60[3] = v56;
    v60[4] = v79;
    v61 = v74;
    v62 = v75;
    v60[5] = v77;
    v60[6] = v62;
    v60[7] = v52;
    v60[8] = v61;
    v60[9] = v73;
    v60[10] = v46;
    v60[11] = v47;

    sub_22372A628();

    v63 = *(v76 + 3);
    sub_2236C4E3C(1, v46, v47);
    if (v58)
    {

      v64 = sub_22372AC88();
      v65 = sub_22372B268();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v81 = v67;
        *v66 = 136315138;
        *(v66 + 4) = sub_223623274(v46, v47, &v81);
        _os_log_impl(&dword_223620000, v64, v65, "redacting logs for force mitigated request - %s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        MEMORY[0x223DE8A80](v67, -1, -1);
        MEMORY[0x223DE8A80](v66, -1, -1);
      }

      v68 = *(v76 + 3);
      sub_2236C495C(5, v46, v47);
    }

    v69 = v78;
    sub_223707B00();
    if (!v69)
    {
      *(v4 + v71) = 3;
    }
  }

  else
  {
    v43 = v77;
    v44 = v79;
    if (*(v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_isSystemAssistantExperienceEnabled) == 1)
    {
      sub_2236FDCE8(v79, v77);
    }

    *(v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) = 2;
    sub_223702888(v44, v43);
  }
}

uint64_t sub_2236FD6DC(uint64_t a1, char *a2, uint64_t a3)
{
  v36[1] = a3;
  v4 = sub_223727F38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v36[0] = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = v36 - v21;
  v23 = *MEMORY[0x277D5CDE8];
  v24 = sub_223729DE8();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v22, v23, v24);
  (*(v25 + 56))(v22, 0, 1, v24);
  sub_2237296E8();
  v26 = *(a2 + 16);
  v27 = *(a2 + 17);

  sub_2237296C8();
  v28 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_sessionId;
  v29 = sub_223727408();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v17, &a2[v28], v29);
  (*(v30 + 56))(v17, 0, 1, v29);
  sub_223729708();
  v31 = *(a2 + 14);
  v32 = *(a2 + 15);

  sub_2237296F8();
  sub_223727F48();
  v33 = v36[0];
  (*(v5 + 104))(v36[0], *MEMORY[0x277D5CAE0], v4);
  sub_223623428(&qword_28132B5C8, MEMORY[0x277D5CAF8]);
  sub_22372B0F8();
  sub_22372B0F8();
  v34 = *(v5 + 8);
  v34(v33, v4);
  v34(v12, v4);
  return sub_2237296D8();
}

BOOL sub_2236FDA84()
{
  v1 = sub_223727F38();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_isSystemAssistantExperienceEnabled);
  v8 = *(v2 + 104);
  v8(v6, *MEMORY[0x277D5CAE0], v1);
  v9 = (v2 + 8);
  if (v7 == 1)
  {
    sub_223623428(&qword_28132B5C8, MEMORY[0x277D5CAF8]);
    sub_22372B0F8();
    sub_22372B0F8();
    v10 = *v9;
    (*v9)(v6, v1);
    if (v13 == v12)
    {
      return 1;
    }

    v8(v6, *MEMORY[0x277D5CAF0], v1);
    sub_22372B0F8();
    sub_22372B0F8();
    v10(v6, v1);
  }

  else
  {
    sub_223623428(&qword_28132B5C8, MEMORY[0x277D5CAF8]);
    sub_22372B0F8();
    sub_22372B0F8();
    (*v9)(v6, v1);
  }

  return v13 == v12;
}

void sub_2236FDCE8(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = sub_223727408();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_223708394(a1, a2);
  if (!v12)
  {
    goto LABEL_17;
  }

  v14 = v12;
  v15 = v13;
  ObjectType = swift_getObjectType();
  v17 = (*(v15 + 8))(ObjectType, v15);
  if (!*(v17 + 16))
  {

    goto LABEL_17;
  }

  sub_223634890(v17 + 32, &aBlock, &qword_27D08F7B0, &qword_22372DD30);

  v18 = aBlock;
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  v19 = [v18 speechPackage];
  if (!v19)
  {

    goto LABEL_16;
  }

  v20 = v19;
  v21 = [v19 recognition];
  if (!v21 || (v54 = a2, v22 = v21, v23 = [v21 aceRecognition], v22, !v23))
  {

LABEL_16:
    goto LABEL_17;
  }

  v24 = [v23 utterances];
  if (v24)
  {
    v25 = v24;
    v52 = v20;
    v53 = v23;
    sub_223630584(0, &unk_281328D98, 0x277D477A8);
    v26 = sub_22372B128();

    if (v26 >> 62)
    {
      v27 = sub_22372B558();
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = v54;

    if (v27)
    {
      v54 = v18;
      v29 = [objc_allocWithZone(MEMORY[0x277D47740]) init];
      sub_2237273F8();
      sub_2237273B8();
      (*(v7 + 8))(v11, v6);
      v30 = sub_22372AFD8();

      [v29 setAceId_];

      v31 = *(v3 + 112);
      v32 = *(v3 + 120);
      v33 = v29;
      v34 = sub_22372AFD8();
      [v33 setRefId_];

      [v33 setEager_];
      [v33 setRecognition_];
      v35 = sub_22372AFD8();
      [v33 setSessionId_];

      v36 = sub_22372AFD8();
      [v33 setResultId_];

      v37 = v3 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
      swift_beginAccess();
      if (*(v37 + 4) == 1)
      {
        v38 = *(v3 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_serviceHelper);
        if ([v38 respondsToSelector_])
        {
          v39 = swift_allocObject();
          *(v39 + 16) = a1;
          *(v39 + 24) = v28;
          v56[3] = sub_22370BFF8;
          v56[4] = v39;
          aBlock = MEMORY[0x277D85DD0];
          v56[0] = 1107296256;
          v56[1] = sub_22365AC5C;
          v56[2] = &block_descriptor_6;
          v40 = _Block_copy(&aBlock);
          v33 = v33;

          [v38 handleSpeechRecognized:v33 completion:v40];
          _Block_release(v40);
        }

        else
        {
        }
      }

      else
      {
        v45 = *(v3 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_pendingSpeechRecognizedCommand);
        *(v3 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_pendingSpeechRecognizedCommand) = v33;
        v46 = v33;

        if (qword_281328E58 != -1)
        {
          swift_once();
        }

        v47 = sub_22372AC98();
        __swift_project_value_buffer(v47, qword_28132B680);

        v48 = sub_22372AC88();
        v49 = sub_22372B268();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          aBlock = v51;
          *v50 = 136315138;
          *(v50 + 4) = sub_223623274(a1, v28, &aBlock);
          _os_log_impl(&dword_223620000, v48, v49, "Not sending SpeechRecognized for TRP ID: %s yet because request is still in candidate state", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v51);
          MEMORY[0x223DE8A80](v51, -1, -1);
          MEMORY[0x223DE8A80](v50, -1, -1);
        }
      }

      return;
    }
  }

  else
  {
  }

LABEL_17:
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v41 = sub_22372AC98();
  __swift_project_value_buffer(v41, qword_28132B680);
  v42 = sub_22372AC88();
  v43 = sub_22372B278();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_223620000, v42, v43, "Could not extract aceRecognition, cannot send SpeechRecognized", v44, 2u);
    MEMORY[0x223DE8A80](v44, -1, -1);
  }
}

void sub_2236FE3E4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v7 = sub_22372AC98();
  __swift_project_value_buffer(v7, qword_28132B680);

  v8 = a2;
  oslog = sub_22372AC88();
  v9 = sub_22372B268();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_223623274(a3, a4, &v17);
    *(v10 + 12) = 2080;
    v12 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F990, &unk_22372FDA0);
    v13 = sub_22372B038();
    v15 = sub_223623274(v13, v14, &v17);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_223620000, oslog, v9, "Sent SpeechRecognized for TRP ID: %s, error: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v11, -1, -1);
    MEMORY[0x223DE8A80](v10, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2236FE5D0(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2236FE5F0, v1, 0);
}

uint64_t sub_2236FE5F0()
{
  v37 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B680);
  v4 = v2;

  v5 = sub_22372AC88();
  v6 = sub_22372B268();

  v7 = &unk_28132B000;
  if (os_log_type_enabled(v5, v6))
  {
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2080;
    v13 = *(v8 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v36 = v12;
    v14 = 0x8000000223734360;
    v15 = 0xD00000000000001FLL;
    v16 = 0x6C616E6946707274;
    v17 = 0xEC00000064657A69;
    if (v13 != 3)
    {
      v16 = 0xD000000000000010;
      v17 = 0x8000000223734390;
    }

    if (v13 != 2)
    {
      v15 = v16;
      v14 = v17;
    }

    v18 = 0x6E69766965636572;
    v19 = 0xED00007350525467;
    if (!v13)
    {
      v18 = 0x696C616974696E69;
      v19 = 0xEB0000000064657ALL;
    }

    if (v13 <= 1)
    {
      v20 = v18;
    }

    else
    {
      v20 = v15;
    }

    if (v13 <= 1)
    {
      v21 = v19;
    }

    else
    {
      v21 = v14;
    }

    v22 = v12;
    v23 = *(v0 + 40);
    v24 = sub_223623274(v20, v21, &v36);

    *(v10 + 14) = v24;
    _os_log_impl(&dword_223620000, v5, v6, "Received %@ when state: %s", v10, 0x16u);
    sub_223626478(v11, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x223DE8A80](v22, -1, -1);
    MEMORY[0x223DE8A80](v10, -1, -1);

    v7 = &unk_28132B000;
  }

  else
  {
  }

  v25 = *(v0 + 48);
  v26 = v7[311];
  v27 = *(v25 + v26);
  if (v27 >= 4)
  {
  }

  else
  {
    v28 = sub_22372B6E8();

    if ((v28 & 1) == 0)
    {
      v29 = *(v0 + 48);
      sub_223644B14();
      if ((*(v29 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_isSystemAssistantExperienceEnabled) & 1) == 0)
      {
        v30 = *(v0 + 48);
        v31 = __swift_project_boxed_opaque_existential_1((v30 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_promptStateManager), *(v30 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_promptStateManager + 24));
        v32 = v30 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
        swift_beginAccess();
        v33 = *v31;
        sub_223644DFC(*(v32 + 5), (*(v32 + 4) & 1) == 0);
      }

      *(v25 + v26) = 4;
    }
  }

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_2236FEA20(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2236FEA40, v1, 0);
}

uint64_t sub_2236FEA40()
{
  v51 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B680);
  v4 = v1;

  v5 = sub_22372AC88();
  v6 = sub_22372B268();

  v7 = &unk_28132B000;
  if (os_log_type_enabled(v5, v6))
  {
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2080;
    v13 = *(v8 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v50 = v12;
    v14 = 0x8000000223734360;
    v15 = 0xD00000000000001FLL;
    v16 = 0x6C616E6946707274;
    v17 = 0xEC00000064657A69;
    if (v13 != 3)
    {
      v16 = 0xD000000000000010;
      v17 = 0x8000000223734390;
    }

    if (v13 != 2)
    {
      v15 = v16;
      v14 = v17;
    }

    v18 = 0x6E69766965636572;
    v19 = 0xED00007350525467;
    if (!v13)
    {
      v18 = 0x696C616974696E69;
      v19 = 0xEB0000000064657ALL;
    }

    if (v13 <= 1)
    {
      v20 = v18;
    }

    else
    {
      v20 = v15;
    }

    if (v13 <= 1)
    {
      v21 = v19;
    }

    else
    {
      v21 = v14;
    }

    v22 = v12;
    v23 = *(v0 + 40);
    v24 = sub_223623274(v20, v21, &v50);

    *(v10 + 14) = v24;
    _os_log_impl(&dword_223620000, v5, v6, "Received %@ when state: %s", v10, 0x16u);
    sub_223626478(v11, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x223DE8A80](v22, -1, -1);
    MEMORY[0x223DE8A80](v10, -1, -1);

    v7 = &unk_28132B000;
  }

  else
  {
  }

  v25 = *(v0 + 48);
  v26 = v7[311];
  v27 = *(v25 + v26);
  if (v27 >= 4)
  {

    goto LABEL_38;
  }

  v28 = sub_22372B6E8();

  if (v28)
  {
    goto LABEL_38;
  }

  v29 = *(v0 + 48);
  sub_223644B14();
  v30 = __swift_project_boxed_opaque_existential_1((v29 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_promptStateManager), *(v29 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_promptStateManager + 24));
  v31 = v29 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
  swift_beginAccess();
  v32 = *v30;
  sub_2236BBF34(*(v31 + 5), (*(v31 + 4) & 1) == 0);
  v49 = *(v31 + 24);
  if (!v49)
  {
    goto LABEL_35;
  }

  v48 = v25;
  if (*(v25 + v26) <= 1u && *(v25 + v26))
  {
    v34 = v49;
    goto LABEL_29;
  }

  v33 = sub_22372B6E8();
  v47 = v49;

  if (v33)
  {
LABEL_31:
    v36 = sub_22372AC88();
    v37 = sub_22372B268();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_223620000, v36, v37, "Posting TRPFinalizedMessage because request was canceled", v38, 2u);
      MEMORY[0x223DE8A80](v38, -1, -1);
    }

    v39 = *(v0 + 48);

    v40 = v49;
    sub_223728CF8();

    sub_223707B00();

    v25 = v48;
    goto LABEL_35;
  }

  if (*(v25 + v26) == 2)
  {
LABEL_29:

    goto LABEL_31;
  }

  v35 = sub_22372B6E8();

  if (v35)
  {
    goto LABEL_31;
  }

LABEL_35:
  if ((*(v31 + 4) & 1) == 0)
  {
    v41 = *(v0 + 48);
    v42 = *(v41 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_instrumentationUtil);
    v43 = *(v41 + 112);
    v44 = *(v41 + 120);
    sub_2236C456C();
  }

  *(v25 + v26) = 4;
LABEL_38:
  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_2236FF144()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B278();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_223620000, v4, v5, "Received message:%@ at root level", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2236FF304()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_223620000, v4, v5, "Received message:%@ at root level", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2236FF4A4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_2237287C8();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F980, &qword_223732F10);
  v2[13] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F900, &qword_223733FF0) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F928, &unk_223732ED0) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v10 = type metadata accessor for RootRequestController.TRPCache(0);
  v2[18] = v10;
  v11 = *(v10 - 8);
  v2[19] = v11;
  v12 = *(v11 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2236FF684, v1, 0);
}

uint64_t sub_2236FF684()
{
  v78 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_223620000, v4, v5, "Received message: %@ at root level", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v10 = v0[8];
  v11 = v0[9];

  v12 = sub_223728BC8();
  v14 = v13;
  v15 = v11 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
  swift_beginAccess();
  v16 = *(v15 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v15 + 16) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_223637D3C(0, *(v16 + 2) + 1, 1, v16);
    *(v15 + 16) = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = sub_223637D3C((v18 > 1), v19 + 1, 1, v16);
  }

  *(v16 + 2) = v19 + 1;
  v20 = &v16[16 * v19];
  *(v20 + 4) = v12;
  *(v20 + 5) = v14;
  *(v15 + 16) = v16;
  swift_endAccess();

  v21 = sub_22372AC88();
  v22 = sub_22372B268();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v77 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_223623274(v12, v14, &v77);
    _os_log_impl(&dword_223620000, v21, v22, "Appended default endpointed trpId: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x223DE8A80](v24, -1, -1);
    MEMORY[0x223DE8A80](v23, -1, -1);
  }

  v25 = *(v15 + 8);
  if (*(v25 + 16))
  {
    v26 = sub_2236261A0(v12, v14);
    if (v27)
    {
      v28 = v0[20];
      v29 = v0[21];
      v76 = v12;
      v30 = v0[18];
      v31 = v0[19];
      v32 = v0[17];
      v73 = v0[16];
      v74 = v0[13];
      v70 = v0[14];
      v71 = v0[11];
      v72 = v0[10];
      sub_22370BCAC(*(v25 + 56) + *(v31 + 72) * v26, v28);
      sub_22370BE08(v28, v29);
      *(v29 + *(v30 + 32)) = 1;
      sub_22370BCAC(v29, v32);
      (*(v31 + 56))(v32, 0, 1, v30);
      swift_beginAccess();

      sub_223714400(v32, v76, v14);
      swift_endAccess();
      v33 = *(v30 + 28);
      (*(v71 + 104))(v73, *MEMORY[0x277D5CB80], v72);
      (*(v71 + 56))(v73, 0, 1, v72);
      v34 = v29 + v33;
      v35 = *(v74 + 48);
      sub_223634890(v34, v70, &unk_27D08F900, &qword_223733FF0);
      sub_223634890(v73, v70 + v35, &unk_27D08F900, &qword_223733FF0);
      v36 = *(v71 + 48);
      if (v36(v70, 1, v72) == 1)
      {
        v37 = v0[10];
        sub_223626478(v0[16], &unk_27D08F900, &qword_223733FF0);
        if (v36(v70 + v35, 1, v37) == 1)
        {
          sub_223626478(v0[14], &unk_27D08F900, &qword_223733FF0);
          v38 = v76;
LABEL_23:
          v55 = sub_22372AC88();
          v56 = sub_22372B268();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            *v57 = 0;
            _os_log_impl(&dword_223620000, v55, v56, "NLRequestRoute already set to sirixFallback. Sending TRPCandidateReadyForExecutionMessage", v57, 2u);
            MEMORY[0x223DE8A80](v57, -1, -1);
          }

          v58 = v0[9];

          sub_223703638(v38, v14);
          goto LABEL_26;
        }
      }

      else
      {
        v44 = v0[10];
        sub_223634890(v0[14], v0[15], &unk_27D08F900, &qword_223733FF0);
        v45 = v36(v70 + v35, 1, v44);
        v47 = v0[15];
        v46 = v0[16];
        if (v45 != 1)
        {
          v75 = v0[14];
          v51 = v0[11];
          v50 = v0[12];
          v52 = v0[10];
          (*(v51 + 32))(v50, v70 + v35, v52);
          sub_223623428(&qword_27D08F988, MEMORY[0x277D5CBA8]);
          v53 = sub_22372AFC8();
          v54 = *(v51 + 8);
          v54(v50, v52);
          sub_223626478(v46, &unk_27D08F900, &qword_223733FF0);
          v54(v47, v52);
          v38 = v76;
          sub_223626478(v75, &unk_27D08F900, &qword_223733FF0);
          if (v53)
          {
            goto LABEL_23;
          }

LABEL_26:
          v59 = v0[21];
          v60 = v0[9];
          sub_22370192C(v38, v14);

          sub_2236453C4(v59, type metadata accessor for RootRequestController.TRPCache);
          goto LABEL_27;
        }

        v48 = v0[10];
        v49 = v0[11];
        sub_223626478(v0[16], &unk_27D08F900, &qword_223733FF0);
        (*(v49 + 8))(v47, v48);
      }

      sub_223626478(v0[14], &qword_27D08F980, &qword_223732F10);
      v38 = v76;
      goto LABEL_26;
    }
  }

  v39 = sub_22372AC88();
  v40 = sub_22372B278();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v77 = v42;
    *v41 = 136315138;
    v43 = sub_223623274(v12, v14, &v77);

    *(v41 + 4) = v43;
    _os_log_impl(&dword_223620000, v39, v40, "TRP Cache not found for TRP Id: %s received with SpeechStopDetectedMessage", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x223DE8A80](v42, -1, -1);
    MEMORY[0x223DE8A80](v41, -1, -1);
  }

  else
  {
  }

LABEL_27:
  v62 = v0[20];
  v61 = v0[21];
  v64 = v0[16];
  v63 = v0[17];
  v66 = v0[14];
  v65 = v0[15];
  v67 = v0[12];

  v68 = v0[1];

  return v68();
}

uint64_t sub_2236FFEE4(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F928, &unk_223732ED0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F900, &qword_223733FF0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for RootRequestController.TRPCache(0);
  v2[14] = v5;
  v6 = *(v5 - 8);
  v2[15] = v6;
  v7 = *(v6 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v8 = sub_2237287C8();
  v2[18] = v8;
  v9 = *(v8 - 8);
  v2[19] = v9;
  v10 = *(v9 + 64) + 15;
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22370007C, v1, 0);
}

uint64_t sub_22370007C()
{
  v95 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_223620000, v4, v5, "Received message: %@ at root level", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v10 = *(v0 + 160);
  v11 = *(v0 + 144);
  v12 = *(v0 + 80);

  sub_2237287D8();
  *(v0 + 64) = sub_22372B038();
  *(v0 + 72) = v13;
  v14 = sub_223637E48();
  v15 = MEMORY[0x223DE7E10](40, 0xE100000000000000, 1, 0, MEMORY[0x277D837D0], v14);

  if (!v15[2])
  {
    goto LABEL_10;
  }

  v16 = *(v0 + 80);

  v17 = sub_22372AC88();
  v18 = sub_22372B288();

  if (!os_log_type_enabled(v17, v18))
  {

LABEL_10:

    goto LABEL_11;
  }

  v19 = swift_slowAlloc();
  result = swift_slowAlloc();
  v94[0] = result;
  *v19 = 136446466;
  if (!v15[2])
  {
    __break(1u);
    return result;
  }

  v90 = v18;
  v21 = *(v0 + 80);
  v22 = v15[4];
  v23 = v15[5];
  v24 = v15[6];
  v25 = v15[7];
  v92 = result;

  v26 = MEMORY[0x223DE7AB0](v22, v23, v24, v25);
  v28 = v27;

  v29 = sub_223623274(v26, v28, v94);

  *(v19 + 4) = v29;
  *(v19 + 12) = 2082;
  v30 = sub_223728848();
  v32 = sub_223623274(v30, v31, v94);

  *(v19 + 14) = v32;
  _os_log_impl(&dword_223620000, v17, v90, "Received routingDecision: %{public}s for trpId: %{public}s", v19, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223DE8A80](v92, -1, -1);
  MEMORY[0x223DE8A80](v19, -1, -1);

LABEL_11:
  v34 = *(v0 + 80);
  v33 = *(v0 + 88);
  v35 = sub_223728848();
  v37 = v36;
  v38 = (v33 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context);
  swift_beginAccess();
  v39 = v38[1];
  if (!*(v39 + 16))
  {

    goto LABEL_15;
  }

  v40 = sub_2236261A0(v35, v37);
  v42 = v41;

  if ((v42 & 1) == 0)
  {
LABEL_15:
    v53 = *(v0 + 80);
    v54 = sub_22372AC88();
    v55 = sub_22372B268();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = *(v0 + 80);
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v94[0] = v58;
      *v57 = 136315138;
      v59 = sub_223728848();
      v61 = sub_223623274(v59, v60, v94);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_223620000, v54, v55, "No TRP cached for TRP Id: %s received with NLRoutingDecisionMessage", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x223DE8A80](v58, -1, -1);
      MEMORY[0x223DE8A80](v57, -1, -1);
    }

    goto LABEL_18;
  }

  v43 = *(v0 + 152);
  v45 = *(v0 + 128);
  v44 = *(v0 + 136);
  v46 = *(v0 + 120);
  v88 = *(v0 + 112);
  v89 = *(v0 + 144);
  v47 = *(v0 + 104);
  v91 = *(v0 + 96);
  v93 = *(v0 + 88);
  v87 = *(v0 + 80);
  sub_22370BCAC(*(v39 + 56) + *(v46 + 72) * v40, v45);
  sub_22370BE08(v45, v44);
  sub_2237287D8();
  (*(v43 + 56))(v47, 0, 1, v89);
  sub_2236719F4(v47, v44 + *(v88 + 28), &unk_27D08F900, &qword_223733FF0);
  v48 = sub_223728848();
  v50 = v49;
  sub_22370BCAC(v44, v91);
  (*(v46 + 56))(v91, 0, 1, v88);
  swift_beginAccess();
  sub_223714400(v91, v48, v50);
  swift_endAccess();
  v51 = sub_223728848();
  sub_2237007C8(v51, v52);
  v68 = *(v0 + 136);
  v69 = *(v0 + 112);

  if (*(v68 + *(v69 + 32)) == 1)
  {
    v71 = *(v0 + 80);
    v70 = *(v0 + 88);
    v72 = sub_223728848();
    sub_223703638(v72, v73);
  }

  v75 = *(v0 + 80);
  v74 = *(v0 + 88);
  v76 = sub_223728848();
  sub_22370192C(v76, v77);

  v78 = v38[5];
  if (v78)
  {
    v79 = *(v0 + 88);
    v80 = v38[6];
    v81 = v38[5];
    ObjectType = swift_getObjectType();
    v83 = *(v80 + 8);
    v84 = v78;
    v85 = v83(ObjectType, v80);
    sub_223702888(v85, v86);
  }

  sub_2236453C4(*(v0 + 136), type metadata accessor for RootRequestController.TRPCache);
LABEL_18:
  v62 = *(v0 + 160);
  v63 = *(v0 + 128);
  v64 = *(v0 + 136);
  v66 = *(v0 + 96);
  v65 = *(v0 + 104);

  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_2237007C8(void *a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F928, &unk_223732ED0);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v172 = &v163 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v171 = &v163 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E978, &qword_22372D170);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v163 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = &v163 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F900, &qword_223733FF0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = &v163 - v25;
  v174 = sub_2237287C8();
  v179 = *(v174 - 8);
  v27 = *(v179 + 64);
  v29 = MEMORY[0x28223BE20](v174, v28);
  v31 = &v163 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v32);
  v176 = &v163 - v33;
  v173 = type metadata accessor for RootRequestController.TRPCache(0);
  v178 = *(v173 - 8);
  v34 = v178[8];
  v36 = MEMORY[0x28223BE20](v173, v35);
  v38 = &v163 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v39);
  v180 = &v163 - v40;
  v175 = v2;
  v41 = (v2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context);
  swift_beginAccess();
  v42 = v41[1];
  if (*(v42 + 16))
  {
    v43 = sub_2236261A0(a1, a2);
    if (v44)
    {
      v170 = a1;
      v45 = v178[9];
      sub_22370BCAC(*(v42 + 56) + v45 * v43, v38);
      v46 = v38;
      v47 = v180;
      sub_22370BE08(v46, v180);
      v48 = *v47;
      if (!*v47)
      {
        sub_223657180();
        swift_allocError();
        *v66 = v170;
        *(v66 + 8) = a2;
        *(v66 + 16) = 0;
        swift_willThrow();

LABEL_65:
        v58 = v47;
        return sub_2236453C4(v58, type metadata accessor for RootRequestController.TRPCache);
      }

      v49 = *(v47 + 8);
      v168 = v45;
      v169 = v49;
      if (*(v175 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_isSystemAssistantExperienceEnabled) == 1)
      {
        sub_223634890(v47 + *(v173 + 28), v26, &unk_27D08F900, &qword_223733FF0);
        v50 = v174;
        if ((*(v179 + 48))(v26, 1, v174) == 1)
        {
          v51 = v48;
          sub_223626478(v26, &unk_27D08F900, &qword_223733FF0);
          if (qword_281328E58 != -1)
          {
            swift_once();
          }

          v52 = sub_22372AC98();
          __swift_project_value_buffer(v52, qword_28132B680);

          v53 = sub_22372AC88();
          v54 = sub_22372B268();

          if (os_log_type_enabled(v53, v54))
          {
            v55 = v47;
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            v181 = v57;
            *v56 = 136315138;
            *(v56 + 4) = sub_223623274(v170, a2, &v181);
            _os_log_impl(&dword_223620000, v53, v54, "No NLRoutingDecisionMsg for TRP Id: %s received with NLTRPCandidateMessage", v56, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v57);
            MEMORY[0x223DE8A80](v57, -1, -1);
            MEMORY[0x223DE8A80](v56, -1, -1);

            v58 = v55;
          }

          else
          {

            v58 = v47;
          }

          return sub_2236453C4(v58, type metadata accessor for RootRequestController.TRPCache);
        }

        v80 = v26;
        v81 = *(v179 + 32);
        v81(v31, v80, v50);
        v81(v176, v31, v50);
        v47 = v180;
        v67 = v50;
        v68 = *(v180 + 24);
        if (!v68)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v67 = v174;
        (*(v179 + 104))(v176, *MEMORY[0x277D5CB80], v174);
        v68 = *(v47 + 24);
        if (!v68)
        {
LABEL_20:
          v82 = qword_281328E58;
          v83 = v48;
          if (v82 != -1)
          {
            swift_once();
          }

          v84 = sub_22372AC98();
          __swift_project_value_buffer(v84, qword_28132B680);

          v85 = sub_22372AC88();
          v86 = sub_22372B268();

          v87 = os_log_type_enabled(v85, v86);
          v88 = v170;
          if (v87)
          {
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v181 = v90;
            *v89 = 136315138;
            *(v89 + 4) = sub_223623274(v88, a2, &v181);
            _os_log_impl(&dword_223620000, v85, v86, "No NLTrpCandidateMsg for TRP Id: %s received with NLRoutingDecisionMessage", v89, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v90);
            MEMORY[0x223DE8A80](v90, -1, -1);
            v91 = v89;
            v47 = v180;
            MEMORY[0x223DE8A80](v91, -1, -1);
          }

          v92 = v176;
          sub_223657180();
          swift_allocError();
          *v93 = v88;
          *(v93 + 8) = a2;
          *(v93 + 16) = 0;
          swift_willThrow();

          (*(v179 + 8))(v92, v67);
          goto LABEL_65;
        }
      }

      ObjectType = swift_getObjectType();
      v70 = v169;
      v166 = v169[1];
      v71 = v48;

      v72 = v68;
      v167 = v71;
      v73 = v166(ObjectType, v70);
      v74 = sub_2237282B8();
      v75 = v72;
      sub_223728D08();

      v76 = sub_22372A548();
      (*(*(v76 - 8) + 56))(v21, 0, 1, v76);
      sub_2237282C8();
      v77 = v176;
      v78 = v177;
      sub_223706664(v170, a2, v73, v74, v21, v16, v176);
      v177 = v78;
      if (v78)
      {

        sub_223626478(v16, &qword_27D08E978, &qword_22372D170);
        sub_223626478(v21, &unk_27D08E990, &qword_22372FCF0);
        (*(v179 + 8))(v77, v174);
        v58 = v180;
        return sub_2236453C4(v58, type metadata accessor for RootRequestController.TRPCache);
      }

      v169 = v75;
      v170 = v79;
      v94 = v77;

      sub_223626478(v16, &qword_27D08E978, &qword_22372D170);
      sub_223626478(v21, &unk_27D08E990, &qword_22372FCF0);
      v95 = v41[5];
      if (!v95)
      {

        v116 = v179;
        v47 = v180;
        v117 = v174;
        v118 = v94;
LABEL_64:
        (*(v116 + 8))(v118, v117);
        goto LABEL_65;
      }

      v96 = v41[6];
      v97 = qword_281328E58;
      v98 = v95;
      if (v97 != -1)
      {
        swift_once();
      }

      v99 = sub_22372AC98();
      v165 = __swift_project_value_buffer(v99, qword_28132B680);
      v100 = sub_22372AC88();
      v101 = sub_22372B268();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        *v102 = 0;
        _os_log_impl(&dword_223620000, v100, v101, "Found StoppedListeningForSpeechContinuationMessage in cache", v102, 2u);
        MEMORY[0x223DE8A80](v102, -1, -1);
      }

      v103 = swift_getObjectType();
      v104 = *(v96 + 8);
      v166 = v98;
      v105 = v104(v103, v96);
      v107 = v106;
      v170 = v170;
      v109 = sub_223728CF8();
      v110 = v108;
      if (v105 == v109 && v107 == v108 || (sub_22372B6E8() & 1) != 0)
      {

        v111 = v170;

        v112 = v166;
        v113 = v104(v103, v96);
        v114 = v177;
        sub_2236FC334(v113, v115, v111);
        if (v114)
        {

          (*(v179 + 8))(v176, v174);
          v58 = v180;
          return sub_2236453C4(v58, type metadata accessor for RootRequestController.TRPCache);
        }

        v116 = v179;
        v47 = v180;
        v117 = v174;
        v118 = v176;
        goto LABEL_64;
      }

      v164 = v109;
      v119 = v41[1];
      if (*(v119 + 16))
      {
        v120 = sub_2236261A0(v105, v107);
        v122 = v121;

        v123 = v172;
        if (v122)
        {
          v124 = *(v119 + 56) + v120 * v168;
          v125 = v171;
          sub_22370BCAC(v124, v171);
          v126 = 0;
          goto LABEL_44;
        }

        v126 = 1;
      }

      else
      {

        v126 = 1;
        v123 = v172;
      }

      v125 = v171;
LABEL_44:
      v127 = v178;
      v128 = v178[7];
      v129 = v173;
      v128(v125, v126, 1, v173);
      v130 = v127[6];
      v178 = v127 + 6;
      if (v130(v125, 1, v129))
      {
        v131 = 0;
        v172 = 0;
      }

      else
      {
        v132 = (v125 + *(v129 + 36));
        v131 = *v132;
        v172 = v132[1];
      }

      sub_223626478(v125, &qword_27D08F928, &unk_223732ED0);
      v133 = v41[1];
      if (*(v133 + 16))
      {
        v134 = sub_2236261A0(v164, v110);
        v136 = v135;

        if (v136)
        {
          sub_22370BCAC(*(v133 + 56) + v134 * v168, v123);
          v137 = 0;
          goto LABEL_52;
        }
      }

      else
      {
      }

      v137 = 1;
LABEL_52:
      v138 = v177;
      v116 = v179;
      v139 = v173;
      v128(v123, v137, 1, v173);
      if (v130(v123, 1, v139))
      {
        sub_223626478(v123, &qword_27D08F928, &unk_223732ED0);
        v47 = v180;
        v140 = v167;
        if (v172)
        {
          v141 = v176;
          goto LABEL_55;
        }
      }

      else
      {
        v143 = v131;
        v144 = (v123 + *(v139 + 36));
        v145 = *v144;
        v146 = v144[1];

        sub_223626478(v123, &qword_27D08F928, &unk_223732ED0);
        v47 = v180;
        v140 = v167;
        v147 = v172;
        if (v172)
        {
          v141 = v176;
          if (v146)
          {
            if (v143 == v145 && v172 == v146)
            {
            }

            else
            {
              v150 = sub_22372B6E8();

              if ((v150 & 1) == 0)
              {

                v162 = v170;

                goto LABEL_56;
              }
            }

            v151 = sub_22372AC88();
            v152 = sub_22372B288();

            if (os_log_type_enabled(v151, v152))
            {
              v153 = swift_slowAlloc();
              v154 = swift_slowAlloc();
              v181 = v154;
              *v153 = 136315138;
              v155 = sub_223623274(v143, v147, &v181);

              *(v153 + 4) = v155;
              v141 = v176;
              _os_log_impl(&dword_223620000, v151, v152, "MUX: Proceeding to reallyHandleStoppedListening because the lastTrpId in the StoppedListeningMessage and the trpId in the TTResponseMessage belong to the same top-level trpID: %s", v153, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v154);
              v156 = v154;
              v47 = v180;
              MEMORY[0x223DE8A80](v156, -1, -1);
              v157 = v153;
              v138 = v177;
              MEMORY[0x223DE8A80](v157, -1, -1);
            }

            else
            {
            }

            v158 = v170;
            v159 = sub_223728CF8();
            v161 = v160;

            sub_2236FC334(v159, v161, v158);
            if (v138)
            {

              (*(v116 + 8))(v141, v174);
              goto LABEL_65;
            }

            goto LABEL_57;
          }

LABEL_55:

          v142 = v170;
LABEL_56:

LABEL_57:
          v117 = v174;
          v118 = v141;
          goto LABEL_64;
        }
      }

      v148 = v176;

      v149 = v170;

      v117 = v174;
      v118 = v148;
      goto LABEL_64;
    }
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v59 = sub_22372AC98();
  __swift_project_value_buffer(v59, qword_28132B680);

  v60 = sub_22372AC88();
  v61 = sub_22372B268();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v181 = v63;
    *v62 = 136315138;
    *(v62 + 4) = sub_223623274(a1, a2, &v181);
    _os_log_impl(&dword_223620000, v60, v61, "No TRP cached for TRP Id: %s received with NLRoutingDecisionMessage or NLTRPCandidateMessage", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    MEMORY[0x223DE8A80](v63, -1, -1);
    MEMORY[0x223DE8A80](v62, -1, -1);
  }

  sub_223657180();
  swift_allocError();
  *v64 = a1;
  *(v64 + 8) = a2;
  *(v64 + 16) = 0;
  swift_willThrow();
}

void sub_22370192C(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F900, &qword_223733FF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v101 = &v93 - v8;
  v9 = sub_2237287C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_223727F38();
  v16 = *(v15 - 8);
  v102 = v15;
  v103 = v16;
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v104 = &v93 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F928, &unk_223732ED0);
  v25 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24 - 8, v26);
  v29 = MEMORY[0x28223BE20](v27, v28);
  v31 = &v93 - v30;
  MEMORY[0x28223BE20](v29, v32);
  v35 = &v93 - v34;
  if (*(v2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_isPatientSiriSupported) == 1)
  {
    v98 = v14;
    v99 = v33;
    v95 = v2;
    v36 = v2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
    swift_beginAccess();
    v37 = *(v36 + 8);
    v38 = *(v37 + 16);
    v100 = a1;
    v96 = v10;
    v97 = v9;
    if (v38 && (v39 = sub_2236261A0(a1, a2), (v40 & 1) != 0))
    {
      v41 = v39;
      v94 = *(v37 + 56);
      v42 = type metadata accessor for RootRequestController.TRPCache(0);
      v43 = *(v42 - 8);
      sub_22370BCAC(v94 + *(v43 + 72) * v41, v35);
      (*(v43 + 56))(v35, 0, 1, v42);
    }

    else
    {
      v42 = type metadata accessor for RootRequestController.TRPCache(0);
      (*(*(v42 - 8) + 56))(v35, 1, 1, v42);
    }

    type metadata accessor for RootRequestController.TRPCache(0);
    v44 = *(v42 - 8);
    v45 = *(v44 + 48);
    if (v45(v35, 1, v42))
    {
      sub_223626478(v35, &qword_27D08F928, &unk_223732ED0);
LABEL_12:
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v52 = sub_22372AC98();
      __swift_project_value_buffer(v52, qword_28132B680);

      v53 = sub_22372AC88();
      v54 = sub_22372B268();

      if (!os_log_type_enabled(v53, v54))
      {
        goto LABEL_17;
      }

      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v105 = v56;
      *v55 = 136315138;
      *(v55 + 4) = sub_223623274(v100, a2, &v105);
      v57 = "SpeechStopDetected not received for trpId = %s, cannot post IntermediateTRPStateMessage";
LABEL_16:
      _os_log_impl(&dword_223620000, v53, v54, v57, v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      MEMORY[0x223DE8A80](v56, -1, -1);
      MEMORY[0x223DE8A80](v55, -1, -1);
LABEL_17:

      return;
    }

    v46 = v35[*(v42 + 32)];
    sub_223626478(v35, &qword_27D08F928, &unk_223732ED0);
    if ((v46 & 1) == 0)
    {
      goto LABEL_12;
    }

    v47 = *(v36 + 8);
    if (*(v47 + 16) && (v48 = sub_2236261A0(v100, a2), (v49 & 1) != 0))
    {
      v50 = v44;
      sub_22370BCAC(*(v47 + 56) + *(v44 + 72) * v48, v31);
      v51 = 0;
    }

    else
    {
      v51 = 1;
      v50 = v44;
    }

    v58 = *(v50 + 56);
    v58(v31, v51, 1, v42);
    if (v45(v31, 1, v42) || (v60 = *(v31 + 2)) == 0)
    {
      sub_223626478(v31, &qword_27D08F928, &unk_223732ED0);
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v59 = sub_22372AC98();
      __swift_project_value_buffer(v59, qword_28132B680);

      v53 = sub_22372AC88();
      v54 = sub_22372B268();

      if (!os_log_type_enabled(v53, v54))
      {
        goto LABEL_17;
      }

      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v105 = v56;
      *v55 = 136315138;
      *(v55 + 4) = sub_223623274(v100, a2, &v105);
      v57 = "MitigationDecision not yet received for trpId = %s, cannot post IntermediateTRPStateMessage yet";
      goto LABEL_16;
    }

    v94 = v58;
    v61 = v60;
    sub_223626478(v31, &qword_27D08F928, &unk_223732ED0);
    sub_223727F48();

    (*(v103 + 32))(v104, v21, v102);
    v62 = *(v36 + 8);
    if (*(v62 + 16) && (v63 = sub_2236261A0(v100, a2), (v64 & 1) != 0))
    {
      sub_22370BCAC(*(v62 + 56) + *(v44 + 72) * v63, v99);
      v65 = 0;
    }

    else
    {
      v65 = 1;
    }

    v66 = v99;
    v94(v99, v65, 1, v42);
    v67 = v45(v66, 1, v42);
    v68 = v98;
    if (v67)
    {
      sub_223626478(v66, &qword_27D08F928, &unk_223732ED0);
      v69 = v101;
      (*(v96 + 56))(v101, 1, 1, v97);
    }

    else
    {
      v70 = v66 + *(v42 + 28);
      v69 = v101;
      sub_223634890(v70, v101, &unk_27D08F900, &qword_223733FF0);
      sub_223626478(v66, &qword_27D08F928, &unk_223732ED0);
      v72 = v96;
      v71 = v97;
      if ((*(v96 + 48))(v69, 1, v97) != 1)
      {
        v78 = (*(v72 + 32))(v68, v69, v71);
        MEMORY[0x28223BE20](v78, v79);
        v80 = v100;
        *(&v93 - 6) = v95;
        *(&v93 - 5) = v80;
        v81 = v104;
        *(&v93 - 4) = a2;
        *(&v93 - 3) = v81;
        *(&v93 - 2) = v68;
        v82 = objc_allocWithZone(sub_223728D98());
        v83 = sub_223728D18();
        if (v83)
        {
          v84 = v83;
          if (qword_281328E58 != -1)
          {
            swift_once();
          }

          v85 = sub_22372AC98();
          __swift_project_value_buffer(v85, qword_28132B680);
          v86 = sub_22372AC88();
          v87 = sub_22372B268();
          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            *v88 = 0;
            _os_log_impl(&dword_223620000, v86, v87, "Going to post IntermediateTRPStateMessage", v88, 2u);
            MEMORY[0x223DE8A80](v88, -1, -1);
          }

          v89 = *(v95 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher + 32);
          __swift_project_boxed_opaque_existential_1((v95 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher), *(v95 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher + 24));
          sub_223729D88();
        }

        else
        {
          if (qword_281328E58 != -1)
          {
            swift_once();
          }

          v90 = sub_22372AC98();
          __swift_project_value_buffer(v90, qword_28132B680);
          v84 = sub_22372AC88();
          v91 = sub_22372B278();
          if (os_log_type_enabled(v84, v91))
          {
            v92 = swift_slowAlloc();
            *v92 = 0;
            _os_log_impl(&dword_223620000, v84, v91, "Could not build IntermediateTRPStateMessage", v92, 2u);
            MEMORY[0x223DE8A80](v92, -1, -1);
          }
        }

        (*(v72 + 8))(v98, v71);
        goto LABEL_38;
      }
    }

    sub_223626478(v69, &unk_27D08F900, &qword_223733FF0);
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v73 = sub_22372AC98();
    __swift_project_value_buffer(v73, qword_28132B680);

    v74 = sub_22372AC88();
    v75 = sub_22372B268();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v105 = v77;
      *v76 = 136315138;
      *(v76 + 4) = sub_223623274(v100, a2, &v105);
      _os_log_impl(&dword_223620000, v74, v75, "RoutingDecision not yet received for trpId = %s, cannot post IntermediateTRPStateMessage yet", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      MEMORY[0x223DE8A80](v77, -1, -1);
      MEMORY[0x223DE8A80](v76, -1, -1);
    }

LABEL_38:
    (*(v103 + 8))(v104, v102);
  }
}

uint64_t sub_2237024B8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a5;
  v44 = a6;
  v42[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F900, &qword_223733FF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F7A0, &unk_22372D180);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = v42 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = v42 - v25;
  v27 = *MEMORY[0x277D5CDE8];
  v28 = sub_223729DE8();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v26, v27, v28);
  (*(v29 + 56))(v26, 0, 1, v28);
  sub_223728D68();
  v30 = *(a2 + 16);
  v31 = *(a2 + 17);

  sub_223728D28();
  v32 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_sessionId;
  v33 = sub_223727408();
  v34 = *(v33 - 8);
  (*(v34 + 16))(v21, &a2[v32], v33);
  (*(v34 + 56))(v21, 0, 1, v33);
  sub_223728D88();
  v35 = *(a2 + 14);
  v36 = *(a2 + 15);

  sub_223728D78();

  sub_223728D38();
  v37 = sub_223727F38();
  v38 = *(v37 - 8);
  (*(v38 + 16))(v16, v43, v37);
  (*(v38 + 56))(v16, 0, 1, v37);
  sub_223728D58();
  v39 = sub_2237287C8();
  v40 = *(v39 - 8);
  (*(v40 + 16))(v11, v44, v39);
  (*(v40 + 56))(v11, 0, 1, v39);
  return sub_223728D48();
}

void sub_223702888(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F900, &qword_223733FF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v98 = &v89 - v8;
  v9 = sub_2237287C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F928, &unk_223732ED0);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v89 - v22;
  v24 = sub_223727F38();
  v25 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v27, v30);
  v34 = &v89 - v33;
  if (*(v2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_isPatientSiriSupported) == 1)
  {
    v91 = v10;
    v92 = v9;
    v94 = v32;
    v95 = v31;
    v35 = v2;
    v36 = v2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
    swift_beginAccess();
    v37 = *(v36 + 8);
    v38 = *(v37 + 16);
    v93 = v34;
    v96 = a1;
    v97 = a2;
    v90 = v14;
    if (v38 && (v39 = sub_2236261A0(a1, a2), (v40 & 1) != 0))
    {
      v41 = v39;
      v42 = *(v37 + 56);
      v43 = type metadata accessor for RootRequestController.TRPCache(0);
      v44 = *(v43 - 8);
      sub_22370BCAC(v42 + *(v44 + 72) * v41, v23);
      (*(v44 + 56))(v23, 0, 1, v43);
    }

    else
    {
      v43 = type metadata accessor for RootRequestController.TRPCache(0);
      (*(*(v43 - 8) + 56))(v23, 1, 1, v43);
    }

    type metadata accessor for RootRequestController.TRPCache(0);
    v45 = *(v43 - 8);
    v46 = *(v45 + 48);
    if (!v46(v23, 1, v43))
    {
      v54 = *(v23 + 2);
      if (v54)
      {
        v55 = v54;
        sub_223626478(v23, &qword_27D08F928, &unk_223732ED0);
        sub_223727F48();

        (*(v94 + 32))(v93, v29, v95);
        v56 = *(v36 + 8);
        if (*(v56 + 16))
        {
          v57 = sub_2236261A0(v96, v97);
          v58 = v98;
          if (v59)
          {
            sub_22370BCAC(*(v56 + 56) + *(v45 + 72) * v57, v20);
            v60 = 0;
          }

          else
          {
            v60 = 1;
          }
        }

        else
        {
          v60 = 1;
          v58 = v98;
        }

        (*(v45 + 56))(v20, v60, 1, v43);
        if (v46(v20, 1, v43))
        {
          sub_223626478(v20, &qword_27D08F928, &unk_223732ED0);
          (*(v91 + 56))(v58, 1, 1, v92);
          v61 = v93;
        }

        else
        {
          sub_223634890(&v20[*(v43 + 28)], v58, &unk_27D08F900, &qword_223733FF0);
          sub_223626478(v20, &qword_27D08F928, &unk_223732ED0);
          v63 = v91;
          v62 = v92;
          v64 = (*(v91 + 48))(v58, 1, v92);
          v61 = v93;
          if (v64 != 1)
          {
            v73 = v90;
            v74 = (*(v63 + 32))(v90, v58, v62);
            MEMORY[0x28223BE20](v74, v75);
            v77 = v96;
            v76 = v97;
            *(&v89 - 6) = v35;
            *(&v89 - 5) = v77;
            *(&v89 - 4) = v76;
            *(&v89 - 3) = v61;
            *(&v89 - 2) = v73;
            v78 = objc_allocWithZone(sub_223728218());
            v79 = sub_223728198();
            if (v79)
            {
              v80 = v79;
              if (qword_281328E58 != -1)
              {
                swift_once();
              }

              v81 = sub_22372AC98();
              __swift_project_value_buffer(v81, qword_28132B680);
              v82 = sub_22372AC88();
              v83 = sub_22372B268();
              if (os_log_type_enabled(v82, v83))
              {
                v84 = swift_slowAlloc();
                *v84 = 0;
                _os_log_impl(&dword_223620000, v82, v83, "Going to post FinalTRPStateMessage", v84, 2u);
                MEMORY[0x223DE8A80](v84, -1, -1);
              }

              v85 = *(v35 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher + 32);
              __swift_project_boxed_opaque_existential_1((v35 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher), *(v35 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher + 24));
              sub_223729D88();
            }

            else
            {
              if (qword_281328E58 != -1)
              {
                swift_once();
              }

              v86 = sub_22372AC98();
              __swift_project_value_buffer(v86, qword_28132B680);
              v80 = sub_22372AC88();
              v87 = sub_22372B278();
              if (os_log_type_enabled(v80, v87))
              {
                v88 = swift_slowAlloc();
                *v88 = 0;
                _os_log_impl(&dword_223620000, v80, v87, "Could not build FinalTRPStateMessage", v88, 2u);
                MEMORY[0x223DE8A80](v88, -1, -1);
              }
            }

            (*(v63 + 8))(v73, v62);
            goto LABEL_26;
          }
        }

        sub_223626478(v58, &unk_27D08F900, &qword_223733FF0);
        if (qword_281328E58 != -1)
        {
          swift_once();
        }

        v65 = sub_22372AC98();
        __swift_project_value_buffer(v65, qword_28132B680);
        v66 = v97;

        v67 = sub_22372AC88();
        v68 = sub_22372B268();

        v69 = os_log_type_enabled(v67, v68);
        v70 = v96;
        if (v69)
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v99 = v72;
          *v71 = 136315138;
          *(v71 + 4) = sub_223623274(v70, v66, &v99);
          _os_log_impl(&dword_223620000, v67, v68, "RoutingDecision not yet received for trpId = %s, cannot post FinalTRPStateMessage yet", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v72);
          MEMORY[0x223DE8A80](v72, -1, -1);
          MEMORY[0x223DE8A80](v71, -1, -1);
        }

LABEL_26:
        (*(v94 + 8))(v61, v95);
        return;
      }
    }

    sub_223626478(v23, &qword_27D08F928, &unk_223732ED0);
    v47 = v96;
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v48 = sub_22372AC98();
    __swift_project_value_buffer(v48, qword_28132B680);
    v49 = v97;

    v50 = sub_22372AC88();
    v51 = sub_22372B268();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v99 = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_223623274(v47, v49, &v99);
      _os_log_impl(&dword_223620000, v50, v51, "MitigationDecision not yet received for trpId = %s, cannot post FinalTRPStateMessage yet", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      MEMORY[0x223DE8A80](v53, -1, -1);
      MEMORY[0x223DE8A80](v52, -1, -1);
    }
  }
}

uint64_t sub_223703268(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a5;
  v44 = a6;
  v42[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F900, &qword_223733FF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F7A0, &unk_22372D180);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = v42 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = v42 - v25;
  v27 = *MEMORY[0x277D5CDE8];
  v28 = sub_223729DE8();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v26, v27, v28);
  (*(v29 + 56))(v26, 0, 1, v28);
  sub_2237281E8();
  v30 = *(a2 + 16);
  v31 = *(a2 + 17);

  sub_2237281A8();
  v32 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_sessionId;
  v33 = sub_223727408();
  v34 = *(v33 - 8);
  (*(v34 + 16))(v21, &a2[v32], v33);
  (*(v34 + 56))(v21, 0, 1, v33);
  sub_223728208();
  v35 = *(a2 + 14);
  v36 = *(a2 + 15);

  sub_2237281F8();

  sub_2237281B8();
  v37 = sub_223727F38();
  v38 = *(v37 - 8);
  (*(v38 + 16))(v16, v43, v37);
  (*(v38 + 56))(v16, 0, 1, v37);
  sub_2237281D8();
  v39 = sub_2237287C8();
  v40 = *(v39 - 8);
  (*(v40 + 16))(v11, v44, v39);
  (*(v40 + 56))(v11, 0, 1, v39);
  return sub_2237281C8();
}

void sub_223703638(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v6 = sub_22372AC98();
  __swift_project_value_buffer(v6, qword_28132B680);

  v7 = sub_22372AC88();
  v8 = sub_22372B268();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_223623274(a1, a2, &v19);
    _os_log_impl(&dword_223620000, v7, v8, "Sending TRPCandidateReadyForExecutionMessage for trpId: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x223DE8A80](v10, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  MEMORY[0x28223BE20](v11, v12);
  v13 = objc_allocWithZone(sub_223729948());
  v14 = sub_2237298E8();
  if (v14)
  {
    v15 = v14;
    v16 = *(v3 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher + 32);
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher), *(v3 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher + 24));
    sub_223729D88();
  }

  else
  {
    v15 = sub_22372AC88();
    v17 = sub_22372B278();
    if (os_log_type_enabled(v15, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_223620000, v15, v17, "Could not init TRPCandidateReadyForExecutionMessage", v18, 2u);
      MEMORY[0x223DE8A80](v18, -1, -1);
    }
  }
}

uint64_t sub_223703898(uint64_t a1, char *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v24 - v11;
  v13 = *MEMORY[0x277D5CDE8];
  v14 = sub_223729DE8();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v12, v13, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  sub_223729918();
  v16 = *(a2 + 16);
  v17 = *(a2 + 17);

  sub_2237298F8();
  v18 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_sessionId;
  v19 = sub_223727408();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v7, &a2[v18], v19);
  (*(v20 + 56))(v7, 0, 1, v19);
  sub_223729938();
  v22 = *(a2 + 14);
  v21 = *(a2 + 15);

  sub_223729928();

  return sub_223729908();
}

void sub_223703AD0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v184 = a3;
  v185 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F8D0, &qword_223732CC8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v180 = &v163[-v12];
  v183 = sub_22372A1D8();
  v181 = *(v183 - 8);
  v13 = *(v181 + 64);
  v15 = MEMORY[0x28223BE20](v183, v14);
  v17 = &v163[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v15, v18);
  v178 = &v163[-v20];
  MEMORY[0x28223BE20](v19, v21);
  v182 = &v163[-v22];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v27 = &v163[-v26];
  v28 = sub_223727408();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28, v31);
  v186 = &v163[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = v6 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
  swift_beginAccess();
  if (*(v33 + 3))
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v34 = sub_22372AC98();
    __swift_project_value_buffer(v34, qword_28132B680);
    v35 = sub_22372AC88();
    v36 = sub_22372B288();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_12;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_223620000, v35, v36, "Already sent activation signal. Not activating again", v37, 2u);
LABEL_11:
    MEMORY[0x223DE8A80](v37, -1, -1);
LABEL_12:

    return;
  }

  v179 = a2;
  sub_2237273A8();
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_223626478(v27, &unk_27D08E530, &unk_22372CB10);
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v38 = sub_22372AC98();
    __swift_project_value_buffer(v38, qword_28132B680);
    v39 = v179;

    v35 = sub_22372AC88();
    v40 = sub_22372B278();

    if (!os_log_type_enabled(v35, v40))
    {
      goto LABEL_12;
    }

    v37 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v187 = v41;
    *v37 = 136315138;
    *(v37 + 4) = sub_223623274(a1, v39, &v187);
    _os_log_impl(&dword_223620000, v35, v40, "Could not generate UUID from requestId: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x223DE8A80](v41, -1, -1);
    goto LABEL_11;
  }

  v173 = v17;
  v176 = v33;
  v175 = v5;
  v177 = v29;
  (*(v29 + 32))(v186, v27, v28);
  if (qword_281328E80 != -1)
  {
    swift_once();
  }

  v42 = sub_22372A648();
  v43 = __swift_project_value_buffer(v42, qword_28132B6C8);
  v44 = swift_allocObject();
  v45 = v184;
  v46 = v185;
  v44[2] = v6;
  v44[3] = v45;
  v44[4] = v46;
  v44[5] = a1;
  v47 = v179;
  v44[6] = v179;

  v172 = v43;
  sub_22372A628();

  v48 = *(v6 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_instrumentationUtil);
  sub_2236C50D0(a1, v47, v45, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F948, &unk_223732EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22372E090;
  if (!*(MEMORY[0x277CEF080] + 64))
  {
    __break(1u);
    return;
  }

  v50 = inited;
  v187 = *(MEMORY[0x277CEF080] + 64);
  sub_223630584(0, &qword_27D08F950, 0x277CCACA8);
  sub_22370BE84();
  sub_22372B438();
  *(v50 + 96) = v28;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v50 + 72));
  (*(v177 + 16))(boxed_opaque_existential_1, v186, v28);
  v52 = sub_223690B44(v50);
  swift_setDeallocating();
  sub_223626478(v50 + 32, &unk_27D08F110, &unk_22372FB40);
  v53 = swift_allocObject();
  v53[2] = a1;
  v53[3] = v47;
  v53[4] = v6;
  v53[5] = v45;
  v53[6] = v46;
  v54 = v176;
  if (*(v176 + 2) == 1)
  {
    v55 = v53;
    v56 = qword_281328E58;

    if (v56 != -1)
    {
      swift_once();
    }

    v57 = sub_22372AC98();
    __swift_project_value_buffer(v57, qword_28132B680);
    v58 = sub_22372AC88();
    v59 = sub_22372B268();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_223620000, v58, v59, "Activating for siri prompt", v60, 2u);
      MEMORY[0x223DE8A80](v60, -1, -1);
    }

    v61 = v54 + *(type metadata accessor for RootRequestController.RequestContext(0) + 64);
    v62 = v177;
    if (*(v61 + 8) == 1)
    {
      v74 = mach_absolute_time();
    }

    else
    {
      v74 = *v61;
    }

    v75 = *(v54 + 56);
    v76 = *(v54 + 64);

    sub_22370ECA4(v74, v75, v76, v52, sub_22370BEEC, v55);

    (*(v62 + 8))(v186, v28);
    *(v54 + 3) = 1;
    return;
  }

  v170 = v52;
  v174 = v6;
  v171 = v53;
  v169 = v28;
  v63 = type metadata accessor for RootRequestController.RequestContext(0);
  v64 = v54 + *(v63 + 60);
  v65 = v180;
  sub_223634890(v64, v180, &unk_27D08F8D0, &qword_223732CC8);
  v66 = v181;
  v67 = v183;
  if ((*(v181 + 48))(v65, 1, v183) != 1)
  {
    v168 = a1;
    v77 = v182;
    (*(v66 + 32))(v182, v65, v67);
    v78 = qword_281328E58;

    if (v78 != -1)
    {
      swift_once();
    }

    v79 = sub_22372AC98();
    v80 = __swift_project_value_buffer(v79, qword_28132B680);
    v81 = v178;
    v167 = *(v66 + 16);
    v167(v178, v77, v67);
    v166 = v80;
    v82 = sub_22372AC88();
    v83 = sub_22372B268();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      v165 = v63;
      v85 = v187;
      *v84 = 136315138;
      v164 = v83;
      v86 = sub_22372A1C8();
      v88 = v87;
      v180 = *(v66 + 8);
      (v180)(v81, v67);
      v89 = sub_223623274(v86, v88, &v187);

      *(v84 + 4) = v89;
      _os_log_impl(&dword_223620000, v82, v164, "audioRecordType: %s", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v85);
      v90 = v85;
      v63 = v165;
      MEMORY[0x223DE8A80](v90, -1, -1);
      MEMORY[0x223DE8A80](v84, -1, -1);
    }

    else
    {

      v180 = *(v66 + 8);
      (v180)(v81, v67);
    }

    v91 = v67;
    v92 = v179;
    v93 = v173;
    v94 = v182;
    v167(v173, v182, v67);
    v95 = (*(v66 + 88))(v93, v67);
    if (v95 == *MEMORY[0x277D5D080])
    {
      v96 = v176;
      v97 = v176 + *(v63 + 64);
      v98 = v171;
      if ((*(v97 + 8) & 1) == 0)
      {
        v99 = *(v176 + 64);
        if (v99)
        {
          v100 = *v97;
          v101 = *(v176 + 56);
          v102 = *(v176 + 64);

          sub_22370EEF4(v100, v101, v99, v170, sub_22370BEEC, v98);
LABEL_44:

LABEL_45:
          v109 = v180;
          v92 = v179;
LABEL_46:
          *(v96 + 3) = 1;
          v110 = swift_allocObject();
          v111 = v184;
          v112 = v185;
          v110[2] = v174;
          v110[3] = v111;
          v113 = v168;
          v110[4] = v112;
          v110[5] = v113;
          v110[6] = v92;

          sub_22372A628();

          (v109)(v94, v91);
          (*(v177 + 8))(v186, v169);
          return;
        }
      }

      v114 = v63;

      v115 = sub_22372AC88();
      v116 = sub_22372B278();

      if (os_log_type_enabled(v115, v116))
      {
LABEL_54:
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v189 = v132;
        *v131 = 136315394;
        v133 = *(v114 + 64);
        v134 = v176;
        v135 = v176 + v133;
        v136 = *v135;
        LOBYTE(v135) = *(v135 + 8);
        v187 = v136;
        LOBYTE(v188) = v135;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F968, &unk_223732F00);
        v137 = sub_22372B038();
        v139 = sub_223623274(v137, v138, &v189);

        *(v131 + 4) = v139;
        *(v131 + 12) = 2080;
        v140 = *(v134 + 64);
        v187 = *(v134 + 56);
        v188 = v140;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F970, &unk_223730550);
        v141 = sub_22372B038();
        v143 = sub_223623274(v141, v142, &v189);
        v94 = v182;

        *(v131 + 14) = v143;
        _os_log_impl(&dword_223620000, v115, v116, "Could not send UI activation since hostTime: %s and deviceId: %s", v131, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE8A80](v132, -1, -1);
        MEMORY[0x223DE8A80](v131, -1, -1);

LABEL_61:
        *(v134 + 3) = 1;
        v149 = swift_allocObject();
        v150 = v184;
        v151 = v185;
        v149[2] = v174;
        v149[3] = v150;
        v152 = v168;
        v149[4] = v151;
        v149[5] = v152;
        v149[6] = v179;

        sub_22372A628();

        v153 = v94;
        v154 = v183;
        goto LABEL_62;
      }
    }

    else
    {
      v103 = v171;
      if (v95 == *MEMORY[0x277D5D088])
      {
        v96 = v176;
        v104 = v176 + *(v63 + 64);
        if ((*(v104 + 8) & 1) == 0)
        {
          v105 = *(v176 + 64);
          if (v105)
          {
            v106 = *v104;
            v107 = *(v176 + 56);
            v108 = *(v176 + 64);

            sub_22370F12C(v106, v107, v105, v170, sub_22370BEEC, v103);
            goto LABEL_44;
          }
        }

        v114 = v63;

        v115 = sub_22372AC88();
        v116 = sub_22372B278();

        if (os_log_type_enabled(v115, v116))
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v95 == *MEMORY[0x277D5D098])
        {
          v117 = v176 + *(v63 + 64);
          if ((*(v117 + 8) & 1) == 0)
          {
            sub_22370F364(*v117, v170, sub_22370BEEC, v171);

            v96 = v176;
            v109 = v180;
            goto LABEL_46;
          }

          v118 = v63;

          v119 = sub_22372AC88();
          v120 = sub_22372B278();

          if (os_log_type_enabled(v119, v120))
          {
            v121 = swift_slowAlloc();
            v122 = swift_slowAlloc();
            v189 = v122;
            *v121 = 136315138;
            v123 = *(v118 + 64);
            v124 = v176;
            v125 = v176 + v123;
            v126 = *v125;
            LOBYTE(v125) = *(v125 + 8);
            v187 = v126;
            LOBYTE(v188) = v125;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F968, &unk_223732F00);
            v127 = sub_22372B038();
            v129 = sub_223623274(v127, v128, &v189);

            *(v121 + 4) = v129;
            v94 = v182;
            _os_log_impl(&dword_223620000, v119, v120, "Could not send UI activation since hostTime: %s", v121, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v122);
            MEMORY[0x223DE8A80](v122, -1, -1);
            v130 = v121;
            v91 = v183;
            MEMORY[0x223DE8A80](v130, -1, -1);
          }

          else
          {

            v124 = v176;
          }

          *(v124 + 3) = 1;
          v159 = swift_allocObject();
          v160 = v184;
          v161 = v185;
          v159[2] = v174;
          v159[3] = v160;
          v162 = v168;
          v159[4] = v161;
          v159[5] = v162;
          v159[6] = v179;

          sub_22372A628();

          v153 = v94;
          v154 = v91;
LABEL_62:
          (v180)(v153, v154);
          (*(v177 + 8))(v186, v169);
          return;
        }

        if (v95 != *MEMORY[0x277D5D090])
        {
          v155 = *MEMORY[0x277D5D0A0];
          v156 = v95;
          v157 = mach_absolute_time();
          sub_22370F7A0(v157, 0, 0, v170, sub_22370BEEC, v103);

          v158 = v156 == v155;
          v91 = v183;
          v96 = v176;
          v109 = v180;
          v92 = v179;
          if (!v158)
          {
            (v180)(v173, v183);
          }

          goto LABEL_46;
        }

        v96 = v176;
        v144 = v176 + *(v63 + 64);
        if ((*(v144 + 8) & 1) == 0)
        {
          v145 = *(v176 + 64);
          if (v145)
          {
            v146 = *v144;
            v147 = *(v176 + 56);
            v148 = *(v176 + 64);

            sub_22370F568(v146, v147, v145, v170, sub_22370BEEC, v103);

            v91 = v183;
            goto LABEL_45;
          }
        }

        v114 = v63;

        v115 = sub_22372AC88();
        v116 = sub_22372B278();

        if (os_log_type_enabled(v115, v116))
        {
          goto LABEL_54;
        }
      }
    }

    v134 = v176;
    goto LABEL_61;
  }

  sub_223626478(v65, &unk_27D08F8D0, &qword_223732CC8);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v68 = sub_22372AC98();
  __swift_project_value_buffer(v68, qword_28132B680);
  v69 = sub_22372AC88();
  v70 = sub_22372B278();
  v71 = os_log_type_enabled(v69, v70);
  v72 = v169;
  if (v71)
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_223620000, v69, v70, "Could not send UI activation since audioRecordType has not been received yet", v73, 2u);
    MEMORY[0x223DE8A80](v73, -1, -1);
  }

  (*(v177 + 8))(v186, v72);
}

uint64_t sub_2237053BC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7C8, qword_223732310);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7D0, &unk_223732EC0);
  v8 = *(*(v7 - 8) + 72);
  v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2237322A0;
  v11 = v10 + v9;
  v12 = (v10 + v9 + *(v7 + 48));
  sub_22372A568();
  *v12 = 0xD000000000000017;
  v12[1] = 0x8000000223734650;
  v13 = (v11 + v8 + *(v7 + 48));
  sub_22372A5A8();
  *v13 = 0xD00000000000001DLL;
  v13[1] = 0x8000000223736DD0;
  if (qword_28132B4D0 != -1)
  {
    swift_once();
  }

  v14 = sub_22372A608();
  v15 = __swift_project_value_buffer(v14, qword_28132BA28);
  (*(*(v14 - 8) + 16))(v11 + 2 * v8, v15, v14);
  v16 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
  v17 = 0xEB0000000064657ALL;
  v18 = 0x696C616974696E69;
  v19 = 0x8000000223734360;
  v20 = 0xD00000000000001FLL;
  v21 = 0xEC00000064657A69;
  v22 = 0x6C616E6946707274;
  if (v16 != 3)
  {
    v22 = 0xD000000000000010;
    v21 = 0x8000000223734390;
  }

  if (v16 != 2)
  {
    v20 = v22;
    v19 = v21;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
  {
    v18 = 0x6E69766965636572;
    v17 = 0xED00007350525467;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v23 = v18;
  }

  else
  {
    v23 = v20;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v24 = v17;
  }

  else
  {
    v24 = v19;
  }

  v25 = (v11 + 2 * v8 + *(v7 + 48));
  MEMORY[0x223DE7AD0](v23, v24);

  *v25 = 0;
  v25[1] = 0xE000000000000000;
  sub_22372A5C8();
  if (a3)
  {
    v26 = a2;
  }

  else
  {
    v26 = 0;
  }

  if (a3)
  {
    v27 = a3;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  v28 = (v11 + 3 * v8 + *(v7 + 48));

  MEMORY[0x223DE7AD0](v26, v27);

  *v28 = 0;
  v28[1] = 0xE000000000000000;
  v29 = (v11 + 4 * v8 + *(v7 + 48));
  sub_22372A578();
  v30 = *(a1 + 136);
  *v29 = *(a1 + 128);
  v29[1] = v30;
  v31 = (v11 + 5 * v8 + *(v7 + 48));

  sub_22372A5F8();
  sub_223727408();
  sub_223623428(&qword_28132B600, MEMORY[0x277CC95F0]);
  *v31 = sub_22372B6B8();
  v31[1] = v32;
  v33 = (v11 + 6 * v8 + *(v7 + 48));
  sub_22372A5E8();
  *v33 = a4;
  v33[1] = a5;

  return v10;
}

void sub_223705784(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v11 = sub_22372AC98();
  __swift_project_value_buffer(v11, qword_28132B680);
  v12 = a1;

  v13 = sub_22372AC88();
  v14 = sub_22372B268();

  if (os_log_type_enabled(v13, v14))
  {
    v27 = a5;
    v15 = a6;
    v16 = a4;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29 = v19;
    *v17 = 138412546;
    *(v17 + 4) = v12;
    *v18 = a1;
    *(v17 + 12) = 2080;
    v20 = v12;
    *(v17 + 14) = sub_223623274(a2, a3, &v29);
    _os_log_impl(&dword_223620000, v13, v14, "AFSiriActivation result: %@ for requestId: %s", v17, 0x16u);
    sub_223626478(v18, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x223DE8A80](v19, -1, -1);
    v21 = v17;
    a4 = v16;
    a6 = v15;
    a5 = v27;
    MEMORY[0x223DE8A80](v21, -1, -1);
  }

  if (a1)
  {
    v22 = [v12 error];
    if (v22)
    {
      v23 = v22;
      if (qword_281328E80 != -1)
      {
        swift_once();
      }

      v24 = sub_22372A648();
      __swift_project_value_buffer(v24, qword_28132B6C8);
      v25 = swift_allocObject();
      v25[2] = v23;
      v25[3] = a4;
      v25[4] = a5;
      v25[5] = a6;
      v25[6] = a2;
      v25[7] = a3;

      v26 = v23;

      sub_22372A628();
    }
  }
}

uint64_t sub_223705A68(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7C8, qword_223732310);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7D0, &unk_223732EC0);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_223732A40;
  v39 = v11;
  v12 = v11 + v10;
  v13 = (v11 + v10 + *(v8 + 48));
  sub_22372A568();
  *v13 = 0xD000000000000017;
  v13[1] = 0x8000000223734650;
  v14 = (v12 + v9 + *(v8 + 48));
  sub_22372A5A8();
  *v14 = 0xD00000000000001CLL;
  v14[1] = 0x8000000223736D70;
  v15 = (v12 + 2 * v9 + *(v8 + 48));
  sub_22372A588();
  swift_getErrorValue();
  *v15 = sub_22372B738();
  v15[1] = v16;
  if (qword_28132B4D0 != -1)
  {
    swift_once();
  }

  v17 = sub_22372A608();
  v18 = __swift_project_value_buffer(v17, qword_28132BA28);
  (*(*(v17 - 8) + 16))(v12 + 3 * v9, v18, v17);
  v19 = *(a2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
  v20 = 0xEB0000000064657ALL;
  v21 = 0x696C616974696E69;
  v22 = 0x8000000223734360;
  v23 = 0xD00000000000001FLL;
  v24 = 0xEC00000064657A69;
  v25 = 0x6C616E6946707274;
  if (v19 != 3)
  {
    v25 = 0xD000000000000010;
    v24 = 0x8000000223734390;
  }

  if (v19 != 2)
  {
    v23 = v25;
    v22 = v24;
  }

  if (*(a2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
  {
    v21 = 0x6E69766965636572;
    v20 = 0xED00007350525467;
  }

  if (*(a2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v26 = v21;
  }

  else
  {
    v26 = v23;
  }

  if (*(a2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v27 = v20;
  }

  else
  {
    v27 = v22;
  }

  v28 = (v12 + 3 * v9 + *(v8 + 48));
  MEMORY[0x223DE7AD0](v26, v27);

  *v28 = 0;
  v28[1] = 0xE000000000000000;
  sub_22372A5C8();
  if (a4)
  {
    v29 = a3;
  }

  else
  {
    v29 = 0;
  }

  if (a4)
  {
    v30 = a4;
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  v31 = (v12 + 4 * v9 + *(v8 + 48));

  MEMORY[0x223DE7AD0](v29, v30);

  *v31 = 0;
  v31[1] = 0xE000000000000000;
  v32 = (v12 + 5 * v9 + *(v8 + 48));
  sub_22372A578();
  v33 = *(a2 + 136);
  *v32 = *(a2 + 128);
  v32[1] = v33;
  v34 = (v12 + 6 * v9 + *(v8 + 48));

  sub_22372A5F8();
  sub_223727408();
  sub_223623428(&qword_28132B600, MEMORY[0x277CC95F0]);
  *v34 = sub_22372B6B8();
  v34[1] = v35;
  v36 = (v12 - v9 + 8 * v9 + *(v8 + 48));
  sub_22372A5E8();
  *v36 = a5;
  v36[1] = a6;

  return v39;
}

uint64_t sub_223705E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v82 = a8;
  v83 = a7;
  v80 = a6;
  v81 = a5;
  v78 = a2;
  v79 = a4;
  v84 = a11;
  v76 = a10;
  v77 = a3;
  v75 = a9;
  v87 = a12;
  v88 = a13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E980, &qword_22372D178);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v74 = &v74 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E978, &qword_22372D170);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v86 = &v74 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v85 = &v74 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F7A0, &unk_22372D180);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v30 = &v74 - v29;
  v31 = sub_223727F38();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8, v39);
  v41 = &v74 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8, v44);
  v46 = &v74 - v45;
  v47 = *MEMORY[0x277D5CDE8];
  v48 = sub_223729DE8();
  v49 = *(v48 - 8);
  (*(v49 + 104))(v46, v47, v48);
  v50 = v48;
  v51 = v31;
  v52 = v75;
  (*(v49 + 56))(v46, 0, 1, v50);
  v53 = v76;
  sub_223727FE8();

  sub_223727F88();
  v54 = sub_223727408();
  v55 = *(v54 - 8);
  (*(v55 + 16))(v41, v79, v54);
  (*(v55 + 56))(v41, 0, 1, v54);
  sub_223728018();

  sub_223728008();

  sub_223727FA8();
  v56 = v84;
  (*(v32 + 104))(v36, **(&unk_2784DFE30 + v84), v51);
  (*(v32 + 16))(v30, v36, v51);
  (*(v32 + 56))(v30, 0, 1, v51);
  sub_223727FB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F938, &qword_223732EE0);
  inited = swift_initStackObject();
  v58 = inited;
  *(inited + 32) = v52;
  v59 = inited + 32;
  *(inited + 16) = xmmword_22372E090;
  v60 = 2;
  if (v56 == 1)
  {
    v60 = 3;
  }

  *(inited + 40) = v53;
  *(inited + 48) = v60;
  swift_bridgeObjectRetain_n();
  sub_22368F33C(v58);
  swift_setDeallocating();
  sub_223626478(v59, &qword_27D08F940, &qword_223732EE8);
  sub_223727F98();
  sub_223634890(v87, v85, &unk_27D08E990, &qword_22372FCF0);
  sub_223727FF8();
  sub_223634890(v88, v86, &qword_27D08E978, &qword_22372D170);
  sub_223727FD8();
  if (v56 == 1)
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v61 = sub_22372AC98();
    __swift_project_value_buffer(v61, qword_28132B680);
    v62 = sub_22372AC88();
    v63 = sub_22372B288();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_223620000, v62, v63, "setting tcuMappedNLResponse as nil since we got forceMitigated response from TTProxy", v64, 2u);
LABEL_16:
      MEMORY[0x223DE8A80](v64, -1, -1);
    }
  }

  else if (*(a14 + 16) && (v65 = sub_2236261A0(v52, v53), (v66 & 1) != 0) && (v67 = *(*(a14 + 56) + 8 * v65)) != 0)
  {
    v62 = v67;
    v68 = v74;
    sub_22372A338();
    v69 = sub_22372A358();
    (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
    sub_223727FC8();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v70 = sub_22372AC98();
    __swift_project_value_buffer(v70, qword_28132B680);

    v62 = sub_22372AC88();
    v71 = sub_22372B268();

    if (os_log_type_enabled(v62, v71))
    {
      v64 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v89 = v72;
      *v64 = 136315138;
      *(v64 + 4) = sub_223623274(v52, v53, &v89);
      _os_log_impl(&dword_223620000, v62, v71, "TTProxy returned a TCU ID - %s that does not have nl response information in NLTRPCandidateMesage", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x223DE8A80](v72, -1, -1);
      goto LABEL_16;
    }
  }

  return (*(v32 + 8))(v36, v51);
}

void sub_223706664(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v177 = a6;
  v190 = a5;
  v185 = a4;
  v187 = a2;
  v188 = a3;
  v193 = a1;
  v175 = sub_223727F38();
  v10 = *(*(v175 - 8) + 64);
  MEMORY[0x28223BE20](v175, v11);
  v174 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F928, &unk_223732ED0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v173 = &v168 - v16;
  v171 = type metadata accessor for RootRequestController.TRPCache(0);
  v170 = *(v171 - 8);
  v17 = *(v170 + 64);
  v19 = MEMORY[0x28223BE20](v171, v18);
  v169 = &v168 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v172 = &v168 - v22;
  v183 = type metadata accessor for TTProxyInput();
  v23 = *(*(v183 - 8) + 64);
  MEMORY[0x28223BE20](v183, v24);
  v189 = &v168 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F930, &qword_223733380);
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26 - 8, v28);
  v176 = &v168 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v179 = &v168 - v33;
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v168 - v35;
  v37 = sub_2237287C8();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v168 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v43 = sub_22372AC98();
  v44 = __swift_project_value_buffer(v43, qword_28132B680);
  v45 = *(v38 + 16);
  v184 = a7;
  v180 = v45;
  v181 = v38 + 16;
  v45(v42, a7, v37);
  v192 = v44;
  v46 = sub_22372AC88();
  v47 = sub_22372B268();
  v48 = os_log_type_enabled(v46, v47);
  v194 = v36;
  v182 = v37;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v191 = v7;
    v51 = v50;
    v196[0] = v50;
    *v49 = 136315138;
    v52 = sub_2237287B8();
    v54 = v53;
    (*(v38 + 8))(v42, v37);
    v55 = sub_223623274(v52, v54, v196);

    *(v49 + 4) = v55;
    _os_log_impl(&dword_223620000, v46, v47, "creating TT-Input with nlRoutingDecision:%s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    v56 = v51;
    v8 = v191;
    MEMORY[0x223DE8A80](v56, -1, -1);
    v36 = v194;
    MEMORY[0x223DE8A80](v49, -1, -1);
  }

  else
  {

    (*(v38 + 8))(v42, v37);
  }

  v57 = v197;
  v58 = __swift_project_boxed_opaque_existential_1((v197 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_requestStateManager), *(v197 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_requestStateManager + 24));
  v59 = *(v57 + 112);
  v60 = *(v57 + 120);
  v61 = *(*v58 + 24);
  v63 = MEMORY[0x28223BE20](v58, v62);
  v191 = v64;
  *(&v168 - 4) = v64;
  *(&v168 - 3) = v60;
  *(&v168 - 2) = v65;
  MEMORY[0x28223BE20](v63, v66);
  *(&v168 - 2) = sub_22370BD70;
  *(&v168 - 1) = v67;
  os_unfair_lock_lock(v61 + 4);
  sub_22363107C(v68);
  v178 = v8;
  v69 = v61 + 4;
  if (!v8)
  {
    os_unfair_lock_unlock(v69);
    v70 = v36;
    v71 = v179;
    sub_223634890(v70, v179, &qword_27D08F930, &qword_223733380);
    v72 = sub_22372AC88();
    v73 = sub_22372B268();
    v74 = os_log_type_enabled(v72, v73);
    v186 = v60;
    if (v74)
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v196[0] = v76;
      *v75 = 136315138;
      v77 = v176;
      sub_223634890(v71, v176, &qword_27D08F930, &qword_223733380);
      v78 = type metadata accessor for RequestState();
      if ((*(*(v78 - 8) + 48))(v77, 1, v78) == 1)
      {
        sub_223626478(v77, &qword_27D08F930, &qword_223733380);
        v79 = 0xE900000000000064;
        v80 = 0x656E696665646E75;
      }

      else
      {
        v81 = v77;
        v80 = sub_22371A5E0();
        v79 = v82;
        sub_2236453C4(v81, type metadata accessor for RequestState);
      }

      sub_223626478(v71, &qword_27D08F930, &qword_223733380);
      v83 = sub_223623274(v80, v79, v196);

      *(v75 + 4) = v83;
      _os_log_impl(&dword_223620000, v72, v73, "activeRequestState: %s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      MEMORY[0x223DE8A80](v76, -1, -1);
      MEMORY[0x223DE8A80](v75, -1, -1);
    }

    else
    {

      sub_223626478(v71, &qword_27D08F930, &qword_223733380);
    }

    v84 = v190;
    v85 = v197;
    v86 = (v197 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context);
    swift_beginAccess();
    v87 = *v86;
    v88 = v86[1];
    v179 = v86;
    v89 = v86[2];
    v90 = v183;
    v91 = v189;
    sub_223634890(v84, v189 + *(v183 + 40), &unk_27D08E990, &qword_22372FCF0);
    v180(v91 + *(v90 + 44), v184, v182);
    v92 = v194;
    sub_223634890(v194, v91 + *(v90 + 48), &qword_27D08F930, &qword_223733380);
    v93 = v186;
    *v91 = v191;
    *(v91 + 8) = v93;
    *(v91 + 16) = v87;
    *(v91 + 17) = v88;
    v94 = v193;
    v96 = v187;
    v95 = v188;
    *(v91 + 24) = v193;
    *(v91 + 32) = v96;
    *(v91 + 40) = v95;
    *(v91 + 48) = v89;
    *(v91 + 56) = v185;
    v97 = *__swift_project_boxed_opaque_existential_1((v85 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_ttManagerProxy), *(v85 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_ttManagerProxy + 24));

    v98 = sub_22370FA34(v91);
    if ((v100 & 0x100) != 0)
    {
      v195[0] = v98;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
      swift_willThrowTypedImpl();
      sub_2236453C4(v91, type metadata accessor for TTProxyInput);
      v131 = v92;
    }

    else
    {
      v101 = *(v85 + 128);
      v102 = *(v85 + 136);
      v103 = v85;
      v104 = MEMORY[0x28223BE20](v98, v99);
      *(&v168 - 14) = v105;
      *(&v168 - 13) = v106;
      v107 = v190;
      v108 = v191;
      *(&v168 - 12) = v109;
      *(&v168 - 11) = v108;
      *(&v168 - 10) = v93;
      *(&v168 - 9) = v94;
      *(&v168 - 8) = v96;
      *(&v168 - 7) = v104;
      *(&v168 - 6) = v110;
      *(&v168 - 40) = v111;
      v112 = v177;
      *(&v168 - 4) = v107;
      *(&v168 - 3) = v112;
      *(&v168 - 2) = v113;
      v114 = v104;
      v115 = v111;
      v116 = v110;
      objc_allocWithZone(sub_223728028());

      v185 = sub_223727F78();
      if (v185)
      {
        v183 = v116;
        v184 = v114;
        LODWORD(v190) = v115;
        v117 = v179;
        v118 = *(v179 + 1);
        if (*(v118 + 16) && (v119 = sub_2236261A0(v193, v96), (v120 & 1) != 0))
        {
          v121 = v170;
          v122 = *(v118 + 56) + *(v170 + 72) * v119;
          v123 = v169;
          sub_22370BCAC(v122, v169);
          v124 = v172;
          sub_22370BE08(v123, v172);
          v125 = *(v124 + 16);
          v126 = v185;
          v127 = v185;

          *(v124 + 16) = v126;
          v128 = v173;
          sub_22370BCAC(v124, v173);
          (*(v121 + 56))(v128, 0, 1, v171);
          v117 = v179;
          v108 = v191;
          swift_beginAccess();
          sub_223714400(v128, v193, v96);
          swift_endAccess();
          sub_2236453C4(v124, type metadata accessor for RootRequestController.TRPCache);
          v129 = v194;
          v130 = v103;
        }

        else
        {

          v132 = sub_22372AC88();
          v133 = sub_22372B278();

          if (os_log_type_enabled(v132, v133))
          {
            v134 = swift_slowAlloc();
            v135 = swift_slowAlloc();
            v195[0] = v135;
            *v134 = 136315138;
            *(v134 + 4) = sub_223623274(v193, v96, v195);
            _os_log_impl(&dword_223620000, v132, v133, "No TRP cache found for trpId = %s. Could not cache TTResponseMessage", v134, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v135);
            v136 = v135;
            v130 = v197;
            MEMORY[0x223DE8A80](v136, -1, -1);
            v137 = v134;
            v129 = v194;
            MEMORY[0x223DE8A80](v137, -1, -1);
          }

          else
          {
            v130 = v103;

            v129 = v194;
          }
        }

        if (*v117)
        {
          v139 = v193;
          if (v190 == 1)
          {
LABEL_30:
            v141 = v185;
            if (qword_281328E80 != -1)
            {
              swift_once();
            }

            v142 = sub_22372A648();
            __swift_project_value_buffer(v142, qword_28132B6C8);
            v143 = swift_allocObject();
            v144 = v183;
            v145 = v184;
            *(v143 + 16) = v130;
            *(v143 + 24) = v145;
            *(v143 + 32) = v144;
            *(v143 + 40) = v190;
            v147 = v187;
            v146 = v188;
            *(v143 + 48) = v139;
            *(v143 + 56) = v147;
            *(v143 + 64) = v146;

            sub_22372A628();

            v148 = v141;
            v149 = sub_22372AC88();
            v150 = sub_22372B268();

            if (os_log_type_enabled(v149, v150))
            {
              v151 = swift_slowAlloc();
              v152 = swift_slowAlloc();
              *v151 = 138412290;
              *(v151 + 4) = v148;
              *v152 = v141;
              v153 = v148;
              _os_log_impl(&dword_223620000, v149, v150, "Posting TTResponseMessage = %@", v151, 0xCu);
              sub_223626478(v152, &unk_27D08F250, &unk_22372D1D0);
              MEMORY[0x223DE8A80](v152, -1, -1);
              MEMORY[0x223DE8A80](v151, -1, -1);
            }

            v154 = v148;
            v155 = sub_22372AC88();
            v156 = sub_22372B288();

            if (os_log_type_enabled(v155, v156))
            {
              v157 = swift_slowAlloc();
              v158 = swift_slowAlloc();
              v195[0] = v158;
              *v157 = 136446466;
              sub_223727F48();
              v159 = sub_22372B038();
              v161 = sub_223623274(v159, v160, v195);

              *(v157 + 4) = v161;
              *(v157 + 12) = 2082;
              v162 = sub_223728CF8();
              v164 = sub_223623274(v162, v163, v195);

              *(v157 + 14) = v164;
              v130 = v197;
              _os_log_impl(&dword_223620000, v155, v156, "Posting TTResponseMessage with mitigationDecision: %{public}s for trpId: %{public}s", v157, 0x16u);
              swift_arrayDestroy();
              v165 = v158;
              v129 = v194;
              MEMORY[0x223DE8A80](v165, -1, -1);
              MEMORY[0x223DE8A80](v157, -1, -1);
            }

            v166 = *(v130 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher + 32);
            __swift_project_boxed_opaque_existential_1((v130 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher), *(v130 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher + 24));
            if (sub_223729D88())
            {
              sub_22370192C(v193, v147);
              sub_2236453C4(v189, type metadata accessor for TTProxyInput);
              sub_223626478(v129, &qword_27D08F930, &qword_223733380);
              return;
            }

            type metadata accessor for RequestControllerBridgeInternalErrors(0);
            sub_223623428(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
            swift_allocError();
            *v167 = v154;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            sub_2236453C4(v189, type metadata accessor for TTProxyInput);
            v131 = v129;
            goto LABEL_39;
          }
        }

        else
        {
          v139 = v193;
          if (v117[1] != 1 || v190 == 1)
          {
            goto LABEL_30;
          }
        }

        v140 = v178;
        sub_223703AD0(v108, v186, v139, v187);
        v178 = v140;
        if (v140)
        {
          sub_22370BDE0(v184, v183, v190, 0);

          sub_2236453C4(v189, type metadata accessor for TTProxyInput);
          sub_223626478(v129, &qword_27D08F930, &qword_223733380);
          return;
        }

        goto LABEL_30;
      }

      sub_22370BDE0(v114, v116, v115, 0);
      sub_223657180();
      swift_allocError();
      *v138 = xmmword_22372CE90;
      *(v138 + 16) = 4;
      swift_willThrow();
      sub_2236453C4(v189, type metadata accessor for TTProxyInput);
      v131 = v194;
    }

LABEL_39:
    sub_223626478(v131, &qword_27D08F930, &qword_223733380);
    return;
  }

  os_unfair_lock_unlock(v69);
  __break(1u);
}

uint64_t sub_223707740(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7C8, qword_223732310);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7D0, &unk_223732EC0);
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_223732A40;
  v13 = v12 + v11;
  v14 = (v13 + *(v9 + 48));
  sub_22372A568();
  *v14 = 0xD000000000000017;
  v14[1] = 0x8000000223734650;
  v15 = (v13 + v10 + *(v9 + 48));
  sub_22372A5A8();
  *v15 = 0xD000000000000015;
  v15[1] = 0x8000000223736DF0;
  if (qword_28132B4D0 != -1)
  {
    swift_once();
  }

  v16 = sub_22372A608();
  v17 = __swift_project_value_buffer(v16, qword_28132BA28);
  (*(*(v16 - 8) + 16))(v13 + 2 * v10, v17, v16);
  v18 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
  v19 = 0xEB0000000064657ALL;
  v20 = 0x696C616974696E69;
  v21 = 0x8000000223734360;
  v22 = 0xD00000000000001FLL;
  v23 = 0xEC00000064657A69;
  v24 = 0x6C616E6946707274;
  if (v18 != 3)
  {
    v24 = 0xD000000000000010;
    v23 = 0x8000000223734390;
  }

  if (v18 != 2)
  {
    v22 = v24;
    v21 = v23;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
  {
    v20 = 0x6E69766965636572;
    v19 = 0xED00007350525467;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v25 = v20;
  }

  else
  {
    v25 = v22;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v26 = v19;
  }

  else
  {
    v26 = v21;
  }

  v27 = (v13 + 2 * v10 + *(v9 + 48));
  MEMORY[0x223DE7AD0](v25, v26);

  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v28 = (v13 + 3 * v10 + *(v9 + 48));
  sub_22372A5B8();
  *v28 = a2;
  v28[1] = a3;
  v29 = (v13 + 4 * v10 + *(v9 + 48));

  sub_22372A5C8();
  *v29 = a5;
  v29[1] = a6;
  v30 = (v13 + 5 * v10 + *(v9 + 48));

  sub_22372A578();
  v31 = a1[17];
  *v30 = a1[16];
  v30[1] = v31;
  v32 = (v13 + 6 * v10 + *(v9 + 48));

  sub_22372A5F8();
  sub_223727408();
  sub_223623428(&qword_28132B600, MEMORY[0x277CC95F0]);
  *v32 = sub_22372B6B8();
  v32[1] = v33;
  v34 = (v13 - v10 + 8 * v10 + *(v9 + 48));
  sub_22372A5E8();
  v35 = a1[15];
  *v34 = a1[14];
  v34[1] = v35;

  return v12;
}

uint64_t sub_223707B00()
{
  v1 = objc_allocWithZone(sub_223728108());
  v2 = sub_223728098();
  if (!v2)
  {
    sub_223657180();
    swift_allocError();
    *v11 = xmmword_22372CE90;
    *(v11 + 16) = 4;
    return swift_willThrow();
  }

  v3 = v2;
  v4 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher), *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher + 24));
  if ((sub_223729D88() & 1) == 0)
  {
    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223623428(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
    swift_allocError();
    *v12 = v3;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v5 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_instrumentationUtil);
  v6 = v3;
  sub_223729D38();

  sub_223728088();
  sub_2236C470C();

  if (qword_281328E80 != -1)
  {
    swift_once();
  }

  v7 = sub_22372A648();
  __swift_project_value_buffer(v7, qword_28132B6C8);
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  *(v8 + 24) = v6;
  v9 = v6;

  sub_22372A628();
}

uint64_t sub_223707D60(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[1] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = v27 - v14;
  v16 = *MEMORY[0x277D5CDE8];
  v17 = sub_223729DE8();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v15, v16, v17);
  (*(v18 + 56))(v15, 0, 1, v17);
  sub_2237280D8();
  v19 = *(a2 + 16);
  v20 = *(a2 + 17);

  sub_2237280C8();
  v21 = *(a2 + 14);
  v22 = *(a2 + 15);

  sub_2237280E8();
  v23 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_sessionId;
  v24 = sub_223727408();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v10, &a2[v23], v24);
  (*(v25 + 56))(v10, 0, 1, v24);
  sub_2237280F8();

  sub_2237280A8();

  return sub_2237280B8();
}

uint64_t sub_223707FB8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7C8, qword_223732310);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7D0, &unk_223732EC0);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_223732A40;
  v6 = v5 + v4;
  v7 = (v6 + *(v2 + 48));
  sub_22372A568();
  *v7 = 0xD000000000000017;
  v7[1] = 0x8000000223734650;
  v8 = (v6 + v3 + *(v2 + 48));
  sub_22372A5A8();
  *v8 = 0x6946505254626372;
  v8[1] = 0xEF64657A696C616ELL;
  if (qword_28132B4D0 != -1)
  {
    swift_once();
  }

  v9 = sub_22372A608();
  v10 = __swift_project_value_buffer(v9, qword_28132BA28);
  (*(*(v9 - 8) + 16))(v6 + 2 * v3, v10, v9);
  v11 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
  v12 = 0xEB0000000064657ALL;
  v13 = 0x696C616974696E69;
  v14 = 0x8000000223734360;
  v15 = 0xD00000000000001FLL;
  v16 = 0xEC00000064657A69;
  v17 = 0x6C616E6946707274;
  if (v11 != 3)
  {
    v17 = 0xD000000000000010;
    v16 = 0x8000000223734390;
  }

  if (v11 != 2)
  {
    v15 = v17;
    v14 = v16;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
  {
    v13 = 0x6E69766965636572;
    v12 = 0xED00007350525467;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v18 = v13;
  }

  else
  {
    v18 = v15;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v19 = v12;
  }

  else
  {
    v19 = v14;
  }

  v20 = (v6 + 2 * v3 + *(v2 + 48));
  MEMORY[0x223DE7AD0](v18, v19);

  *v20 = 0;
  v20[1] = 0xE000000000000000;
  sub_22372A5B8();
  v21 = sub_223728078();
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  v24 = (v6 + 3 * v3 + *(v2 + 48));
  MEMORY[0x223DE7AD0](v21, v23);

  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v25 = (v6 + 4 * v3 + *(v2 + 48));
  sub_22372A5C8();
  *v25 = sub_223728088();
  v25[1] = v26;
  v27 = (v6 + 5 * v3 + *(v2 + 48));
  sub_22372A578();
  v28 = a1[17];
  *v27 = a1[16];
  v27[1] = v28;
  v29 = (v6 + 6 * v3 + *(v2 + 48));

  sub_22372A5F8();
  sub_223727408();
  sub_223623428(&qword_28132B600, MEMORY[0x277CC95F0]);
  *v29 = sub_22372B6B8();
  v29[1] = v30;
  v31 = (v6 - v3 + 8 * v3 + *(v2 + 48));
  sub_22372A5E8();
  v32 = a1[15];
  *v31 = a1[14];
  v31[1] = v32;

  return v5;
}

id sub_223708394(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F928, &unk_223732ED0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v23 - v8;
  v10 = v2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
  swift_beginAccess();
  v11 = *(v10 + 8);
  if (*(v11 + 16) && (v12 = sub_2236261A0(a1, a2), (v13 & 1) != 0))
  {
    v14 = v12;
    v15 = *(v11 + 56);
    v16 = type metadata accessor for RootRequestController.TRPCache(0);
    v17 = *(v16 - 8);
    sub_22370BCAC(v15 + *(v17 + 72) * v14, v9);
    (*(v17 + 56))(v9, 0, 1, v16);
  }

  else
  {
    v16 = type metadata accessor for RootRequestController.TRPCache(0);
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  }

  type metadata accessor for RootRequestController.TRPCache(0);
  v18 = (*(*(v16 - 8) + 48))(v9, 1, v16);
  v19 = 0;
  if (!v18)
  {
    v19 = *v9;
    v20 = *(v9 + 1);
    v21 = *v9;
  }

  sub_223626478(v9, &qword_27D08F928, &unk_223732ED0);
  return v19;
}

void *sub_223708590(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F928, &unk_223732ED0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v22 - v8;
  v10 = v2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
  swift_beginAccess();
  v11 = *(v10 + 8);
  if (*(v11 + 16) && (v12 = sub_2236261A0(a1, a2), (v13 & 1) != 0))
  {
    v14 = v12;
    v15 = *(v11 + 56);
    v16 = type metadata accessor for RootRequestController.TRPCache(0);
    v17 = *(v16 - 8);
    sub_22370BCAC(v15 + *(v17 + 72) * v14, v9);
    (*(v17 + 56))(v9, 0, 1, v16);
  }

  else
  {
    v16 = type metadata accessor for RootRequestController.TRPCache(0);
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  }

  type metadata accessor for RootRequestController.TRPCache(0);
  v18 = (*(*(v16 - 8) + 48))(v9, 1, v16);
  v19 = 0;
  if (!v18)
  {
    v19 = *(v9 + 2);
    v20 = v19;
  }

  sub_223626478(v9, &qword_27D08F928, &unk_223732ED0);
  return v19;
}

void sub_223708784()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_isSystemAssistantExperienceEnabled) == 1)
  {
    v2 = objc_allocWithZone(sub_2237294B8());
    v3 = sub_223729458();
    if (!v3)
    {
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v4 = sub_22372AC98();
      __swift_project_value_buffer(v4, qword_28132B680);
      v5 = sub_22372AC88();
      v6 = sub_22372B278();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_17;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "Could not create StartRootCandidateRequestMessage";
LABEL_16:
      _os_log_impl(&dword_223620000, v5, v6, v8, v7, 2u);
      MEMORY[0x223DE8A80](v7, -1, -1);
LABEL_17:

      type metadata accessor for RequestControllerBridgeInternalErrors(0);
      sub_223623428(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return;
    }
  }

  else
  {
    v9 = objc_allocWithZone(sub_223728EC8());
    v3 = sub_223728E68();
    if (!v3)
    {
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v14 = sub_22372AC98();
      __swift_project_value_buffer(v14, qword_28132B680);
      v5 = sub_22372AC88();
      v6 = sub_22372B278();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_17;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "Could not create StartCandidateRequestMessage";
      goto LABEL_16;
    }
  }

  v10 = v3;
  v11 = *(v1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher), *(v1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher + 24));
  v12 = v10;
  if (sub_223729D88())
  {
  }

  else
  {
    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223623428(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
    swift_allocError();
    *v13 = v12;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}