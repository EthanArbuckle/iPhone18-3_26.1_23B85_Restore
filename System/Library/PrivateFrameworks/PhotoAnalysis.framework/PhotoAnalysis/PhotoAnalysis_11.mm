uint64_t MockMomentContextProvider.deinit()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis25MockMomentContextProvider_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13PhotoAnalysis25MockMomentContextProvider_filePath;
  v4 = sub_22FCC65F4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t MockMomentContextProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis25MockMomentContextProvider_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13PhotoAnalysis25MockMomentContextProvider_filePath;
  v4 = sub_22FCC65F4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_22FB2124C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FB20D04(a1);
}

unint64_t sub_22FB212E4()
{
  result = qword_27DAD8560;
  if (!qword_27DAD8560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8560);
  }

  return result;
}

uint64_t sub_22FB21338(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FB21380(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD7448);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22FB213EC()
{
  result = qword_27DAD8598;
  if (!qword_27DAD8598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8598);
  }

  return result;
}

uint64_t sub_22FB21460(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD85A0);
    sub_22FB21338(a2, type metadata accessor for MomentContextResponse.PromptTemplate);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FB214FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FB21564(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FB215C4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD85D0);
    sub_22FB21338(a2, type metadata accessor for MomentContextResponse);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22FB21660()
{
  result = qword_27DAD85E8;
  if (!qword_27DAD85E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD85E8);
  }

  return result;
}

uint64_t dispatch thunk of MomentContextProviding.fetchPersonalizedContext(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FAA3184;

  return v9(a1, a2, a3);
}

void sub_22FB21820()
{
  sub_22FB218F8();
  if (v0 <= 0x3F)
  {
    sub_22FB21A28(319, &qword_28147AF78, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22FCC6794();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22FB218F8()
{
  if (!qword_28147AF68)
  {
    type metadata accessor for MomentContextResponse.PromptTemplate(255);
    v0 = sub_22FCC8CA4();
    if (!v1)
    {
      atomic_store(v0, &qword_28147AF68);
    }
  }
}

void sub_22FB21978()
{
  sub_22FCC67F4();
  if (v0 <= 0x3F)
  {
    sub_22FB21A28(319, &qword_28147AF30, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FB21A28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22FB21AA4()
{
  result = sub_22FCC8684();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of MomentContextProvider.export()()
{
  v4 = (*(*v0 + 96) + **(*v0 + 96));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_22FB21C70;

  return v4();
}

uint64_t sub_22FB21C70(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of MomentContextProvider.fetchPersonalizedContext(with:)(uint64_t a1)
{
  v6 = (*(*v1 + 104) + **(*v1 + 104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22FAA2728;

  return v6(a1);
}

uint64_t sub_22FB21EC4()
{
  result = sub_22FCC8684();
  if (v1 <= 0x3F)
  {
    result = sub_22FCC65F4();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of MockMomentContextProvider.fetchPersonalizedContext(with:)(uint64_t a1)
{
  v6 = (*(*v1 + 104) + **(*v1 + 104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22FAA3184;

  return v6(a1);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_22FB220FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_22FB22144(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MomentContextResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MomentContextResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22FB22308()
{
  result = qword_27DAD8618;
  if (!qword_27DAD8618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8618);
  }

  return result;
}

unint64_t sub_22FB22360()
{
  result = qword_27DAD8620;
  if (!qword_27DAD8620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8620);
  }

  return result;
}

unint64_t sub_22FB223B8()
{
  result = qword_27DAD8628;
  if (!qword_27DAD8628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8628);
  }

  return result;
}

unint64_t sub_22FB22410()
{
  result = qword_27DAD8630;
  if (!qword_27DAD8630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8630);
  }

  return result;
}

unint64_t sub_22FB22468()
{
  result = qword_27DAD8638;
  if (!qword_27DAD8638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8638);
  }

  return result;
}

unint64_t sub_22FB224C0()
{
  result = qword_27DAD8640;
  if (!qword_27DAD8640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8640);
  }

  return result;
}

uint64_t sub_22FB22514(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000022FCE3910 == a2 || (sub_22FCC9704() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xEC00000074786554 || (sub_22FCC9704() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737469617274 && a2 == 0xE600000000000000 || (sub_22FCC9704() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_22FCC9704();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_22FB22684(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x655474706D6F7270 && a2 == 0xEF736574616C706DLL;
  if (v4 || (sub_22FCC9704() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E6E6F73726570 && a2 == 0xEA0000000000656DLL || (sub_22FCC9704() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6563616C70 && a2 == 0xE900000000000065 || (sub_22FCC9704() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E79746963 && a2 == 0xE800000000000000 || (sub_22FCC9704() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65666552656D6974 && a2 == 0xED000065636E6572 || (sub_22FCC9704() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL || (sub_22FCC9704() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C746954676E6F73 && a2 == 0xE900000000000065 || (sub_22FCC9704() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022FCE3930 == a2 || (sub_22FCC9704() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_22FCC9704() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144)
  {

    return 9;
  }

  else
  {
    v6 = sub_22FCC9704();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_22FB229E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FB22A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_22FAEE8C4(a3, v22 - v9);
  v11 = sub_22FCC8D14();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_22FA2B420(v10, &unk_27DAD8710);
  }

  else
  {
    sub_22FCC8D04();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_22FCC8CC4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_22FCC8B04() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD86C8);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_22FA2B420(a3, &unk_27DAD8710);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22FA2B420(a3, &unk_27DAD8710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD86C8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_22FB22D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_22FAEE8C4(a3, v22 - v9);
  v11 = sub_22FCC8D14();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_22FA2B420(v10, &unk_27DAD8710);
  }

  else
  {
    sub_22FCC8D04();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_22FCC8CC4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_22FCC8B04() + 32;
      type metadata accessor for CreativePromptValidationResult(0);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_22FA2B420(a3, &unk_27DAD8710);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22FA2B420(a3, &unk_27DAD8710);
  type metadata accessor for CreativePromptValidationResult(0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_22FB22FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v24[0] = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v24 - v11;
  sub_22FAEE8C4(a3, v24 - v11);
  v13 = sub_22FCC8D14();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_22FA2B420(v12, &unk_27DAD8710);
  }

  else
  {
    sub_22FCC8D04();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22FCC8CC4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22FCC8B04() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(a6);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_22FA2B420(a3, &unk_27DAD8710);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22FA2B420(a3, &unk_27DAD8710);
  __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_22FB23294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_22FAEE8C4(a3, v22 - v9);
  v11 = sub_22FCC8D14();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_22FA2B420(v10, &unk_27DAD8710);
  }

  else
  {
    sub_22FCC8D04();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_22FCC8CC4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_22FCC8B04() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_22FA2B420(a3, &unk_27DAD8710);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22FA2B420(a3, &unk_27DAD8710);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t QueryAnnotatorSessionManager.getToolKitSession(for:)(_BYTE *a1)
{
  *(v2 + 96) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  *(v2 + 104) = swift_task_alloc();
  v4 = sub_22FCC67F4();
  *(v2 + 112) = v4;
  *(v2 + 120) = *(v4 - 8);
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 192) = *a1;

  return MEMORY[0x2822009F8](sub_22FB2371C, v1, 0);
}

uint64_t sub_22FB2371C()
{
  v33 = v0;
  if (qword_28147D888 != -1)
  {
    swift_once();
  }

  v1 = sub_22FCC8684();
  *(v0 + 136) = __swift_project_value_buffer(v1, qword_281487D70);
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 192);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v32 = v6;
    *v5 = 136315138;
    if (v4)
    {
      v7 = 0xD000000000000022;
    }

    else
    {
      v7 = 0x6E6E417972657551;
    }

    if (v4)
    {
      v8 = 0x800000022FCE39A0;
    }

    else
    {
      v8 = 0xEE00726F7461746FLL;
    }

    v9 = sub_22FA2F600(v7, v8, &v32);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_22FA28000, v2, v3, "SessionCreation: An incoming request to obtain a ToolKit session from client %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23190A000](v6, -1, -1);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  v10 = *(v0 + 96);
  if (*(v10 + 120))
  {
    sub_22FB26628();
    swift_allocError();
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 192);
    swift_beginAccess();
    v14 = *(v10 + 112);
    if (*(v14 + 16) && (v15 = sub_22FA6A228(v13), (v16 & 1) != 0))
    {
      v17 = *(*(v14 + 56) + 8 * v15);
      *(v0 + 144) = v17;

      v18 = swift_task_alloc();
      *(v0 + 152) = v18;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8688);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
      *v18 = v0;
      v18[1] = sub_22FB23BB4;
      v21 = MEMORY[0x277D84950];
      v22 = v0 + 80;
      v23 = v17;
      v24 = v19;
    }

    else
    {
      v25 = *(v0 + 104);
      v26 = sub_22FCC8D14();
      (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
      v27 = swift_allocObject();
      *(v27 + 16) = 0;
      *(v27 + 24) = 0;
      *(v27 + 32) = v13;
      v28 = sub_22FB22FD4(0, 0, v25, &unk_22FCD7168, v27, &qword_27DAD8688);
      *(v0 + 168) = v28;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *(v10 + 112);
      *(v10 + 112) = 0x8000000000000000;
      sub_22FB26504(v28, v13, isUniquelyReferenced_nonNull_native);
      *(v10 + 112) = v32;
      swift_endAccess();
      v30 = swift_task_alloc();
      *(v0 + 176) = v30;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8688);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
      *v30 = v0;
      v30[1] = sub_22FB23F3C;
      v21 = MEMORY[0x277D84950];
      v22 = v0 + 64;
      v23 = v28;
      v24 = v31;
    }

    return MEMORY[0x282200430](v22, v23, v24, v20, v21);
  }
}

uint64_t sub_22FB23BB4()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_22FB240F4;
  }

  else
  {
    v4 = sub_22FB23CE0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FB23CE0()
{
  v21 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  swift_unknownObjectRetain();
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F34();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v18 = *(v0 + 192);
    v5 = *(v0 + 120);
    v6 = *(v0 + 128);
    v17 = *(v0 + 112);
    v7 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v7 = 136315394;
    swift_getObjectType();
    sub_22FCC8734();
    v8 = sub_22FCC67B4();
    v10 = v9;
    (*(v5 + 8))(v6, v17);
    v11 = sub_22FA2F600(v8, v10, &v20);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    if (v18)
    {
      v12 = 0xD000000000000022;
    }

    else
    {
      v12 = 0x6E6E417972657551;
    }

    if (v18)
    {
      v13 = 0x800000022FCE39A0;
    }

    else
    {
      v13 = 0xEE00726F7461746FLL;
    }

    v14 = sub_22FA2F600(v12, v13, &v20);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_22FA28000, v3, v4, "SessionCreation: ToolKit session %s has been created for client %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v19, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v15 = *(v0 + 8);

  return v15(v1, v2);
}

uint64_t sub_22FB23F3C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_22FB2416C;
  }

  else
  {
    v4 = sub_22FB24068;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FB24068()
{

  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_22FB240F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB2416C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB241E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 72) = a4;
  *(v4 + 16) = a1;
  v5 = sub_22FCC87A4();
  *(v4 + 24) = v5;
  *(v4 + 32) = *(v5 - 8);
  *(v4 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB242A8, 0, 0);
}

uint64_t sub_22FB242A8()
{
  v14 = v0;
  if (qword_28147D888 != -1)
  {
    swift_once();
  }

  v1 = sub_22FCC8684();
  __swift_project_value_buffer(v1, qword_281487D70);
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 72);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    if (v4)
    {
      v7 = 0xD000000000000022;
    }

    else
    {
      v7 = 0x6E6E417972657551;
    }

    if (v4)
    {
      v8 = 0x800000022FCE39A0;
    }

    else
    {
      v8 = 0xEE00726F7461746FLL;
    }

    v9 = sub_22FA2F600(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_22FA28000, v2, v3, "SessionCreation: Created a ToolKit session for client %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23190A000](v6, -1, -1);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  sub_22FCC8794();
  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  *v10 = v0;
  v10[1] = sub_22FB244AC;
  v11 = *(v0 + 40);

  return MEMORY[0x2821DADB0](v11);
}

uint64_t sub_22FB244AC(uint64_t a1)
{
  v4 = *v2;
  v4[7] = v1;

  v5 = v4[5];
  v6 = v4[4];
  v7 = v4[3];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_22FB246CC;
  }

  else
  {
    v4[8] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_22FB24634;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22FB24634()
{
  v1 = v0[8];
  v2 = v0[2];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *v2 = v1;
  v2[1] = OpaqueTypeConformance2;

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FB246CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB24750()
{
  v1 = *(v0 + 40);
  *(v1 + 120) = 1;
  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v0 + 48) = v2;
  v3 = *(v2 + 32);
  *(v0 + 81) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);

  if (v6)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 56) = v6;
    *(v0 + 64) = v8;
    *(v0 + 80) = *(*(v7 + 48) + (__clz(__rbit64(v6)) | (v8 << 6)));
    v10 = swift_task_alloc();
    *(v0 + 72) = v10;
    *v10 = v0;
    v10[1] = sub_22FB249A8;

    return sub_22FB24CD4((v0 + 80));
  }

  else
  {
    v9 = 0;
    while (((63 - v5) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v6 = *(v7 + 8 * v9++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v12 = *(v0 + 40);

    *(v12 + 112) = sub_22FA4DE18(MEMORY[0x277D84F90]);

    if (qword_28147D888 != -1)
    {
      swift_once();
    }

    v13 = sub_22FCC8684();
    __swift_project_value_buffer(v13, qword_281487D70);
    v14 = sub_22FCC8664();
    v15 = sub_22FCC8F34();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22FA28000, v14, v15, "SessionCreation: Closed all active ToolKit sessions", v16, 2u);
      MEMORY[0x23190A000](v16, -1, -1);
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_22FB249A8()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_22FB24AB8, v1, 0);
}

uint64_t sub_22FB24AB8()
{
  v1 = *(v0 + 64);
  v2 = (*(v0 + 56) - 1) & *(v0 + 56);
  if (v2)
  {
    v3 = *(v0 + 48);
LABEL_7:
    *(v0 + 56) = v2;
    *(v0 + 64) = v1;
    *(v0 + 80) = *(*(v3 + 48) + (__clz(__rbit64(v2)) | (v1 << 6)));
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    *v5 = v0;
    v5[1] = sub_22FB249A8;

    return sub_22FB24CD4((v0 + 80));
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      v3 = *(v0 + 48);
      if (v4 >= (((1 << *(v0 + 81)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v4 + 64);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v7 = *(v0 + 40);

    *(v7 + 112) = sub_22FA4DE18(MEMORY[0x277D84F90]);

    if (qword_28147D888 == -1)
    {
      goto LABEL_11;
    }

LABEL_17:
    swift_once();
LABEL_11:
    v8 = sub_22FCC8684();
    __swift_project_value_buffer(v8, qword_281487D70);
    v9 = sub_22FCC8664();
    v10 = sub_22FCC8F34();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22FA28000, v9, v10, "SessionCreation: Closed all active ToolKit sessions", v11, 2u);
      MEMORY[0x23190A000](v11, -1, -1);
    }

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_22FB24CD4(_BYTE *a1)
{
  *(v2 + 56) = v1;
  *(v2 + 88) = *a1;
  return MEMORY[0x2822009F8](sub_22FB24CFC, v1, 0);
}

uint64_t sub_22FB24CFC()
{
  v22 = v0;
  v1 = *(v0 + 56);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_22FA6A228(*(v0 + 88)), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    *(v0 + 64) = v5;

    v6 = swift_task_alloc();
    *(v0 + 72) = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8688);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
    *v6 = v0;
    v6[1] = sub_22FB24FBC;
    v9 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 40, v5, v7, v8, v9);
  }

  else
  {
    if (qword_28147D888 != -1)
    {
      swift_once();
    }

    v10 = sub_22FCC8684();
    __swift_project_value_buffer(v10, qword_281487D70);
    v11 = sub_22FCC8664();
    v12 = sub_22FCC8F14();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 88);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      if (v13)
      {
        v16 = 0xD000000000000022;
      }

      else
      {
        v16 = 0x6E6E417972657551;
      }

      if (v13)
      {
        v17 = 0x800000022FCE39A0;
      }

      else
      {
        v17 = 0xEE00726F7461746FLL;
      }

      v18 = sub_22FA2F600(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_22FA28000, v11, v12, "SessionCreation: No active ToolKit session to close for client %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x23190A000](v15, -1, -1);
      MEMORY[0x23190A000](v14, -1, -1);
    }

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_22FB24FBC()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_22FB25170;
  }

  else
  {
    v4 = sub_22FB250E8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FB250E8()
{
  swift_getObjectType();
  sub_22FCC8724();

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB25170()
{
  v20 = v0;
  if (qword_28147D888 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_22FCC8684();
  __swift_project_value_buffer(v2, qword_281487D70);
  v3 = v1;
  v4 = sub_22FCC8664();
  v5 = sub_22FCC8F14();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 80);
  if (v6)
  {
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315394;
    if (v8)
    {
      v12 = 0xD000000000000022;
    }

    else
    {
      v12 = 0x6E6E417972657551;
    }

    if (v8)
    {
      v13 = 0x800000022FCE39A0;
    }

    else
    {
      v13 = 0xEE00726F7461746FLL;
    }

    v14 = sub_22FA2F600(v12, v13, &v19);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_22FA28000, v4, v5, "SessionCreation: Failed to close the ToolKit session for client %s, with error = %@", v9, 0x16u);
    sub_22FA2B420(v10, &unk_27DAD7B10);
    MEMORY[0x23190A000](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23190A000](v11, -1, -1);
    MEMORY[0x23190A000](v9, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_22FB253D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C030;

  return sub_22FB241E4(a1, v4, v5, v6);
}

void sub_22FB25484(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_22FA69EBC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_22FA6F7C8();
      goto LABEL_7;
    }

    sub_22FA6AC18(v13, a3 & 1);
    v19 = sub_22FA69EBC(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_22FA728C0(a2, v21);
      sub_22FC49394(v10, v21, a1, v16);
      return;
    }

LABEL_15:
    sub_22FCC9774();
    __break(1u);
    return;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v16[7];
  v18 = *(v17 + 8 * v10);
  *(v17 + 8 * v10) = a1;
}

uint64_t sub_22FB255C4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for TemplatedPrompt();
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_22FA69F80(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_22FA6FAC4();
      goto LABEL_7;
    }

    sub_22FA6B168(v16, a3 & 1);
    v22 = sub_22FA69F80(a2);
    if ((v17 & 1) == (v23 & 1))
    {
      v13 = v22;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_22FB26F90(a2, v10);
      return sub_22FC493EC(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_22FCC9774();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7] + 48 * v13;

  return sub_22FB26FF4(a1, v20);
}

uint64_t sub_22FB257D8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_22FA6A110(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_22FA6FF24();
      goto LABEL_7;
    }

    sub_22FA6B824(v13, a3 & 1);
    v24 = sub_22FA6A110(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_22FCC9774();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_22FCC7FF4();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_22FC494B4(v10, a2, a1, v16);
}

uint64_t sub_22FB25A00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22FA2DB54(a2, a3);
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
      sub_22FA70358();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22FA6BE78(v16, a4 & 1);
    v11 = sub_22FA2DB54(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_22FCC9774();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(*(v21 + 56) + 8 * v11) = a1;
  }

  else
  {
    sub_22FC4C51C(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_22FB25B48(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22FA2DB54(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for TaskRecord(0);
      return sub_22FB26F28(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for TaskRecord);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_22FA704C8();
    goto LABEL_7;
  }

  sub_22FA6C120(v15, a4 & 1);
  v22 = sub_22FA2DB54(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_22FCC9774();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_22FC495A8(v12, a2, a3, a1, v18);
}

uint64_t sub_22FB25CF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_22FA2DB54(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_22FA2DB54(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_22FCC9774();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

uint64_t sub_22FB25E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_22FA2DB54(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_22FA70A10();
      v13 = v21;
      goto LABEL_8;
    }

    sub_22FA6C9E8(v18, a5 & 1);
    v13 = sub_22FA2DB54(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_22FCC9774();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_22FC495D4(v13, a3, a4, a1, a2, v23);
  }
}

uint64_t sub_22FB25FB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22FA2DB54(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_22FA70B88();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22FA6CCA8(v16, a4 & 1);
    v11 = sub_22FA2DB54(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_22FCC9774();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 200 * v11;

    return sub_22FB27050(a1, v22);
  }

  else
  {
    sub_22FC49624(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_22FB260F8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_22FA6A110(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_22FA70D98();
      v9 = v17;
      goto LABEL_8;
    }

    sub_22FA6D1E0(v14, a3 & 1);
    v9 = sub_22FA6A110(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_22FCC9774();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_0(v20);

    return sub_22FA4FE00(a1, v20);
  }

  else
  {

    return sub_22FC496A8(v9, a2, a1, v19);
  }
}

uint64_t sub_22FB26264(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_22FA2DB54(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_22FA2DB54(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_22FCC9774();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

uint64_t sub_22FB263D0(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22FA2DB54(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_22FA71588();
      result = v19;
      goto LABEL_8;
    }

    sub_22FA6DE48(v16, a4 & 1);
    result = sub_22FA2DB54(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_22FCC9774();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
  }

  else
  {
    sub_22FC49710(result, a2, a3, a1 & 1, v21);
  }

  return result;
}

unint64_t sub_22FB26504(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_22FA6A228(a2 & 1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_22FA716F0();
      v9 = v17;
      goto LABEL_8;
    }

    sub_22FA6E0E8(v14, a3 & 1);
    v9 = sub_22FA6A228(a2 & 1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_22FCC9774();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_22FC49758(v9, a2 & 1, a1, v19);
  }
}

unint64_t sub_22FB26628()
{
  result = qword_27DAD8690;
  if (!qword_27DAD8690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8690);
  }

  return result;
}

unint64_t sub_22FB266BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22FA6A350(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_22FA719E4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22FA6E640(v16, a4 & 1);
    v11 = sub_22FA6A350(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      type metadata accessor for KGElementIdentifier(0);
      result = sub_22FCC9774();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return sub_22FC497A0(v11, a3, a1, a2, v21);
  }
}

unint64_t sub_22FB267F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_22FA6A350(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_22FA71B4C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_22FA6E8DC(v14, a3 & 1);
    v9 = sub_22FA6A350(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for KGElementIdentifier(0);
      result = sub_22FCC9774();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_22FC497E8(v9, a2, a1, v19);
  }
}

uint64_t sub_22FB26918(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22FA2DB54(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_22FA71CD0();
      goto LABEL_7;
    }

    sub_22FA6EB94(v15, a4 & 1);
    v26 = sub_22FA2DB54(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_22FCC9774();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_22FCC7514();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_22FC4982C(v12, a2, a3, a1, v18);
}

uint64_t sub_22FB26AD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_22FA2DB54(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_22FA2DB54(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      sub_22FCC9774();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;

    return MEMORY[0x2821F96F8]();
  }

  a7(v17, a2, a3, a1, v27);
}

uint64_t sub_22FB26C40(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22FA2DB54(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for UserAnalyticsOutputSample(0);
      return sub_22FB26F28(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for UserAnalyticsOutputSample);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_22FA72258();
    goto LABEL_7;
  }

  sub_22FA6F4B4(v15, a4 & 1);
  v22 = sub_22FA2DB54(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_22FCC9774();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_22FC498DC(v12, a2, a3, a1, v18);
}

uint64_t sub_22FB26DAC(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_22FA2DB54(a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_22FA72294();
      v15 = v23;
      goto LABEL_8;
    }

    sub_22FA6F4F0(v20, a6 & 1);
    v15 = sub_22FA2DB54(a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = sub_22FCC9774();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * v15;
    *v26 = a1 & 1;
    *(v26 + 1) = HIBYTE(a1) & 1;
    *(v26 + 8) = a2;
    *(v26 + 16) = a3;
  }

  else
  {
    sub_22FC499B4(v15, a4, a5, a1 & 0x101, a2, a3, v25);
  }
}

uint64_t sub_22FB26F28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FB26F90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TemplatedPrompt();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FB270AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  sub_22FAEE8C4(a1, v20 - v9);
  v11 = sub_22FCC8D14();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_22FA2B420(v10, &unk_27DAD8710);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_22FCC8CC4();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_22FCC8D04();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_22FB272B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);

  return sub_22FCC8D54();
}

unint64_t sub_22FB27324()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22FCC9384();

  MEMORY[0x231907FA0](v1, v2);
  MEMORY[0x231907FA0](39, 0xE100000000000000);
  return 0xD00000000000002DLL;
}

uint64_t sub_22FB273B0(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_22FB273D4, v2, 0);
}

uint64_t sub_22FB273D4()
{
  v28 = v0;
  if (sub_22FCC8B24() < 1)
  {
    goto LABEL_13;
  }

  v2 = v0[19];
  v1 = v0[20];
  if (sub_22FCC8A84() == v2 && v3 == v1)
  {

    goto LABEL_13;
  }

  v5 = sub_22FCC9704();

  if (v5)
  {
LABEL_13:
    sub_22FCC8F14();
    sub_22FA812F8();
    v19 = sub_22FCC91B4();
    sub_22FCC85A4();
    goto LABEL_14;
  }

  v6 = v0[21];
  v7 = sub_22FA2D6F8(v0[19], v0[20]);
  v9 = v8;
  swift_beginAccess();
  v10 = *(v6 + 144);
  if (*(v10 + 16))
  {

    v11 = sub_22FA2DB54(v7, v9);
    v13 = v12;

    if (v13)
    {
      v14 = v0[21];
      sub_22FA2D328(*(v10 + 56) + 40 * v11, (v0 + 11));

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD77B0);
      inited = swift_initStackObject();
      v0[22] = inited;
      *(inited + 16) = xmmword_22FCD1800;
      sub_22FA2D328((v0 + 11), inited + 32);
      v16 = *(v14 + 128);
      sub_22FB284B8();
      v17 = swift_task_alloc();
      v0[23] = v17;
      *(v17 + 16) = inited;
      *(v17 + 24) = v16;
      v18 = swift_task_alloc();
      v0[24] = v18;
      *v18 = v0;
      v18[1] = sub_22FB27748;
      v30 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x282200600]();
    }
  }

  v21 = sub_22FCC8F14();
  sub_22FA812F8();
  v19 = sub_22FCC91B4();
  if (os_log_type_enabled(v19, v21))
  {
    v23 = v0[19];
    v22 = v0[20];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_22FA2F600(v23, v22, &v27);
    _os_log_impl(&dword_22FA28000, v19, v21, "Couldn't find operation for ID %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x23190A000](v25, -1, -1);
    MEMORY[0x23190A000](v24, -1, -1);
  }

LABEL_14:

  v20 = v0[1];

  return v20();
}

uint64_t sub_22FB27748()
{
  v1 = *(*v0 + 168);

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD86D8);
  swift_arrayDestroy();

  return MEMORY[0x2822009F8](sub_22FB278C0, v1, 0);
}

uint64_t sub_22FB278C0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 88);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB27920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB279CC, 0, 0);
}

uint64_t sub_22FB279CC()
{
  v1 = *(v0 + 80);
  v29 = *(v1 + 16);
  if (v29)
  {
    v2 = 0;
    v28 = v1 + 32;
    while (1)
    {
      v30 = v2;
      v3 = (v28 + 40 * v2);
      v4 = v3[3];
      v5 = v3[4];
      __swift_project_boxed_opaque_existential_1(v3, v4);
      (*(v5 + 24))(v4, v5);
      v6 = v3[3];
      v7 = v3[4];
      __swift_project_boxed_opaque_existential_1(v3, v6);
      v31 = (*(v7 + 16))(v6, v7);
      v8 = *(v31 + 16);
      if (v8)
      {
        break;
      }

LABEL_3:
      v2 = v30 + 1;

      if (v30 + 1 == v29)
      {
        goto LABEL_15;
      }
    }

    v35 = **(v0 + 72);
    v9 = sub_22FCC8D14();
    v10 = *(v9 - 8);
    v34 = *(v10 + 56);
    v33 = (v10 + 48);
    v32 = (v10 + 8);
    v11 = (v31 + 40);
    while (1)
    {
      v36 = v8;
      v14 = *(v0 + 96);
      v15 = *(v0 + 104);
      v16 = *(v0 + 88);
      v17 = *(v11 - 1);
      v18 = *v11;
      v34(v15, 1, 1, v9);
      v19 = swift_allocObject();
      v19[2] = 0;
      v20 = v19 + 2;
      v19[3] = 0;
      v19[4] = v16;
      v19[5] = v17;
      v19[6] = v18;
      sub_22FAEE8C4(v15, v14);
      LODWORD(v14) = (*v33)(v14, 1, v9);

      v21 = *(v0 + 96);
      if (v14 == 1)
      {
        sub_22FA2B420(*(v0 + 96), &unk_27DAD8710);
        if (!*v20)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_22FCC8D04();
        (*v32)(v21, v9);
        if (!*v20)
        {
LABEL_12:
          v22 = 0;
          v24 = 0;
          goto LABEL_13;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v22 = sub_22FCC8CC4();
      v24 = v23;
      swift_unknownObjectRelease();
LABEL_13:
      v25 = swift_allocObject();
      *(v25 + 16) = &unk_22FCD7260;
      *(v25 + 24) = v19;

      if (v24 | v22)
      {
        v12 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v22;
        *(v0 + 40) = v24;
      }

      else
      {
        v12 = 0;
      }

      v13 = *(v0 + 104);
      *(v0 + 48) = 1;
      *(v0 + 56) = v12;
      *(v0 + 64) = v35;
      swift_task_create();

      sub_22FA2B420(v13, &unk_27DAD8710);
      v11 += 2;
      v8 = v36 - 1;
      if (v36 == 1)
      {
        goto LABEL_3;
      }
    }
  }

LABEL_15:

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_22FB27D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_22FB27E18;

  return sub_22FB2E4FC(a5, a6);
}

uint64_t sub_22FB27E18()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_22FB27F38()
{
  v1 = *(v0 + 328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD2240;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000022FCE3A70;
  if (*(v1 + 136))
  {
    if (*(v1 + 136) == 1)
    {
      v3 = 0xE900000000000064;
      v4 = 0x6E616D6564206E4FLL;
    }

    else
    {
      v3 = 0x800000022FCE10A0;
      v4 = 0xD000000000000012;
    }
  }

  else
  {
    v3 = 0xEF6B73617420646ELL;
    v4 = 0x756F72676B636142;
  }

  v5 = *(v0 + 328);
  MEMORY[0x231907FA0](v4, v3);

  v6 = MEMORY[0x277D837D0];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  *(inited + 72) = v6;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x800000022FCE3A90;
  swift_beginAccess();
  v7 = *(v5 + 144);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D83B88];
  *(inited + 96) = v8;
  *(inited + 120) = v9;
  *(inited + 128) = 0x6F6974617265704FLL;
  *(inited + 136) = 0xEA0000000000736ELL;
  v10 = MEMORY[0x277D84F90];
  if (v8)
  {
    v30 = inited;
    v33 = MEMORY[0x277D84F90];

    sub_22FA86EA8(0, v8, 0);
    v10 = v33;
    v11 = sub_22FCC9274();
    v31 = v7 + 64;
    v32 = v7;
    while (1)
    {
      v12 = *(v7 + 36);
      v13 = sub_22FB6624C(v0 + 208, v11, v12, 0, v7);
      v15 = v14;
      *(v0 + 248) = v13;
      *(v0 + 256) = v14;
      sub_22FA2D89C((v0 + 208), v0 + 264);
      v16 = *(v0 + 288);
      v17 = *(v0 + 296);
      __swift_project_boxed_opaque_existential_1((v0 + 264), v16);
      v34 = (*(v17 + 8))(v16, v17);
      v35 = v18;
      MEMORY[0x231907FA0](10272, 0xE200000000000000);
      MEMORY[0x231907FA0](v13, v15);
      MEMORY[0x231907FA0](8250, 0xE200000000000000);
      v19 = *(v0 + 288);
      v20 = *(v0 + 296);
      __swift_project_boxed_opaque_existential_1((v0 + 264), v19);
      (*(v20 + 16))(v19, v20);
      v21 = MEMORY[0x2319080B0]();
      v23 = v22;

      MEMORY[0x231907FA0](v21, v23);

      result = sub_22FA2B420(v0 + 248, &qword_27DAD86D0);
      v26 = *(v33 + 16);
      v25 = *(v33 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_22FA86EA8((v25 > 1), v26 + 1, 1);
      }

      *(v33 + 16) = v26 + 1;
      v27 = v33 + 16 * v26;
      *(v27 + 32) = v34;
      *(v27 + 40) = v35;
      v7 = v32;
      if (v11 < 0 || v11 >= -(-1 << *(v32 + 32)))
      {
        break;
      }

      if (((*(v31 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_20;
      }

      if (v12 != *(v32 + 36))
      {
        goto LABEL_21;
      }

      v11 = sub_22FCC9294();
      if (!--v8)
      {

        inited = v30;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_16:
    *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448);
    *(inited + 144) = v10;
    v28 = sub_22FA4DAB0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8750);
    swift_arrayDestroy();
    v29 = *(v0 + 8);

    return v29(v28);
  }

  return result;
}

uint64_t sub_22FB28384()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22FB283F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22FA2C21C;

  return sub_22FB27D6C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_22FB284B8()
{
  result = qword_28147EFB8;
  if (!qword_28147EFB8)
  {
    type metadata accessor for ServiceOperationManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147EFB8);
  }

  return result;
}

uint64_t sub_22FB2850C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22FA2C030;

  return sub_22FB27920(a1, a2, v7, v6);
}

uint64_t sub_22FB285D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22FB28618(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22FB28660(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_22FB286B8()
{
  type metadata accessor for InstanceCounter();
  result = swift_allocObject();
  result[2] = 0xD000000000000013;
  result[3] = 0x800000022FCD73A0;
  result[4] = 0;
  qword_2814880A8 = result;
  return result;
}

uint64_t sub_22FB28708()
{
  if (qword_281482098 != -1)
  {
    swift_once();
  }

  sub_22FB5A80C();

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22FB287B4()
{
  v1 = [*(*v0 + 112) description];
  v2 = sub_22FCC8A84();

  return v2;
}

uint64_t sub_22FB28810(uint64_t a1)
{
  result = sub_22FB28898(&qword_281482090);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FB28854(uint64_t a1)
{
  result = sub_22FB28898(&qword_281482080);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FB28898(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhotoLibraryManager();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22FB288D8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_22FCC8A54();
  v2 = [v0 integerForKey_];

  qword_281488098 = v2;
}

void sub_22FB28968()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_22FCC8A54();
  v2 = [v0 integerForKey_];

  qword_281488090 = v2;
}

char *sub_22FB28A2C(void *a1, id *a2)
{
  v44 = a2;
  v3 = sub_22FCC8684();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281481CC0 != -1)
  {
    result = swift_once();
  }

  v8 = qword_281488098;
  if (qword_281488098 >= 1)
  {
    sub_22FCC8674();
    v9 = sub_22FCC8664();
    v10 = sub_22FCC8F34();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v8;
      _os_log_impl(&dword_22FA28000, v9, v10, "Incremental change override: Simulating %ld moment updates", v11, 0xCu);
      MEMORY[0x23190A000](v11, -1, -1);
    }

    v12 = [a1 librarySpecificFetchOptions];
    [v12 setFetchLimit:v8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_22FCD7460;
    v14 = objc_allocWithZone(MEMORY[0x277CCAC98]);
    v15 = sub_22FCC8A54();
    v16 = [v14 initWithKey:v15 ascending:0];

    *(v13 + 32) = v16;
    v17 = objc_allocWithZone(MEMORY[0x277CCAC98]);
    v18 = sub_22FCC8A54();
    v19 = [v17 initWithKey:v18 ascending:0];

    *(v13 + 40) = v19;
    sub_22FA3A77C(0, &qword_28147AEB0);
    v20 = sub_22FCC8C24();

    [v12 setSortDescriptors:v20];

    sub_22FA3A77C(0, &qword_28147ADB8);
    v21 = [swift_getObjCClassFromMetadata() fetchMomentsWithOptions_];
    result = [v21 count];
    v22 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else if ((v22 & 0x8000000000000000) == 0)
    {
      v40 = v12;
      v41 = v7;
      v42 = v4;
      v43 = v3;
      v23 = 0;
      while (1)
      {
        v24 = [v21 objectAtIndex:v23];
        result = [v24 uuid];
        if (!result)
        {
          goto LABEL_21;
        }

        v25 = result;
        v26 = [objc_allocWithZone(MEMORY[0x277D3B968]) initWithMomentUUID:result updateTypes:31];

        v27 = *v44;
        [*v44 addChange_];

        if (v22 == v23)
        {
          goto LABEL_14;
        }

        if (__OFADD__(v23++, 1))
        {
          __break(1u);
LABEL_14:
          v29 = [v27 uuidsOfMomentsToUpdate];
          v30 = sub_22FCC8E84();

          v31 = *(v30 + 16);

          v32 = v41;
          v33 = sub_22FCC8664();
          v34 = sub_22FCC8F34();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            *v35 = 134217984;
            *(v35 + 4) = v31;
            _os_log_impl(&dword_22FA28000, v33, v34, "Incremental change override: Simulated %ld moment updates", v35, 0xCu);
            MEMORY[0x23190A000](v35, -1, -1);
            v36 = v40;
          }

          else
          {
            v36 = v33;
            v33 = v21;
            v21 = v40;
          }

          v38 = v42;
          v37 = v43;

          return (*(v38 + 8))(v32, v37);
        }
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

void sub_22FB28F20(void *a1, id *a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281481CB8 != -1)
  {
    swift_once();
  }

  v8 = qword_281488090;
  if (qword_281488090 < 1)
  {
    return;
  }

  v58 = a2;
  sub_22FCC8674();
  v9 = sub_22FCC8664();
  v10 = sub_22FCC8F34();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = v8;
    _os_log_impl(&dword_22FA28000, v9, v10, "Incremental change override: Simulating %ld person deletions", v11, 0xCu);
    MEMORY[0x23190A000](v11, -1, -1);
  }

  v12 = [a1 librarySpecificFetchOptions];
  [v12 setFetchLimit:v8];
  [v12 setPersonContext:1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22FCD1800;
  *(v13 + 32) = sub_22FCC8A84();
  *(v13 + 40) = v14;
  v15 = sub_22FCC8C24();

  [v12 setFetchPropertySets:v15];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22FCD7470;
  v17 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v18 = sub_22FCC8A54();
  v19 = [v17 initWithKey:v18 ascending:0];

  *(v16 + 32) = v19;
  v20 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v21 = sub_22FCC8A54();
  v22 = [v20 initWithKey:v21 ascending:0];

  *(v16 + 40) = v22;
  v23 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v24 = sub_22FCC8A54();
  v25 = [v23 initWithKey:v24 ascending:1];

  *(v16 + 48) = v25;
  v26 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v27 = sub_22FCC8A54();
  v28 = [v26 initWithKey:v27 ascending:1];

  *(v16 + 56) = v28;
  v29 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v30 = sub_22FCC8A54();
  v31 = [v29 initWithKey:v30 ascending:0];

  *(v16 + 64) = v31;
  sub_22FA3A77C(0, &qword_28147AEB0);
  v32 = sub_22FCC8C24();

  [v12 setSortDescriptors:v32];

  v33 = [objc_opt_self() fetchPersonsWithOptions_];
  v63 = MEMORY[0x277D84FA0];
  v34 = [v33 count];
  v35 = v34 - 1;
  if (__OFSUB__(v34, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  if ((v35 & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v59 = v7;
  v60 = v5;
  v61 = v4;
  v36 = 0;
  while (1)
  {
    v37 = [v33 objectAtIndex:v36];
    v38 = [v37 localIdentifier];
    v39 = sub_22FCC8A84();
    v41 = v40;

    sub_22FB04E04(&v62, v39, v41);

    if (v35 == v36)
    {
      break;
    }

    if (__OFADD__(v36++, 1))
    {
      __break(1u);
      break;
    }
  }

  if (*(v63 + 16))
  {
    v43 = objc_allocWithZone(MEMORY[0x277D3B990]);
    v44 = sub_22FCC8E64();

    v45 = [v43 initWithPersonLocalIdentifiers_];

    v46 = *v58;
    [*v58 addChange_];
    v47 = [v46 localIdentifiersOfPersonsToDelete];
    v48 = sub_22FCC8E84();

    v49 = *(v48 + 16);

    v50 = v59;
    v51 = sub_22FCC8664();
    v52 = sub_22FCC8F34();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 134217984;
      *(v53 + 4) = v49;
      _os_log_impl(&dword_22FA28000, v51, v52, "Incremental change override: Simulated %ld person deletions", v53, 0xCu);
      MEMORY[0x23190A000](v53, -1, -1);
      v54 = v12;
    }

    else
    {
      v54 = v51;
      v51 = v33;
      v33 = v12;
    }

    v56 = v60;
    v55 = v61;

    (*(v56 + 8))(v50, v55);
  }

  else
  {
    (*(v60 + 8))(v59, v61);
  }
}

unint64_t sub_22FB2960C()
{
  sub_22FB0FA48(v0, v5);
  if (v6)
  {
    if (v6 == 1)
    {
      sub_22FCC9384();

      v4[1] = 0x800000022FCE3D10;
      v1 = sub_22FCC9904();
      MEMORY[0x231907FA0](v1);

      return 0xD000000000000015;
    }

    else
    {
      return 0xD000000000000027;
    }
  }

  else
  {
    sub_22FA2D89C(v5, v4);
    sub_22FCC9384();
    MEMORY[0x231907FA0](0xD00000000000001CLL, 0x800000022FCE3D30);
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_22FCC96E4();
    MEMORY[0x231907FA0](0x746365707865202CLL, 0xEB00000000206465);
    v3 = sub_22FCC9904();
    MEMORY[0x231907FA0](v3);

    __swift_destroy_boxed_opaque_existential_0(v4);
    return 0;
  }
}

uint64_t sub_22FB297D8()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 112) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      *(v0 + 112) = MEMORY[0x277D84F98];
    }

    v7 = *(v3 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      do
      {
LABEL_9:
        v7 &= v7 - 1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
        sub_22FCC8D54();
      }

      while (v7);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FB29960()
{
  v1 = *(v0 + 456);
  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v0 + 464) = v2;
  v3 = *(v2 + 32);
  *(v0 + 233) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = MEMORY[0x277D84F90];
  *(v0 + 472) = MEMORY[0x277D84F90];

  if (!v6)
  {
    v10 = 0;
    while (((63 - v5) >> 6) - 1 != v10)
    {
      v9 = v10 + 1;
      v6 = *(v8 + 8 * v10++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v18 = *(v0 + 456);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22FCD2240;
    *(inited + 32) = 0x6574617453;
    *(inited + 40) = 0xE500000000000000;
    v20 = *(*(v18 + 144) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
    if (v20 <= 1)
    {
      if (*(*(v18 + 144) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state))
      {
        v21 = 0xEB00000000705520;
        v22 = 1918989395;
        goto LABEL_20;
      }

      v21 = 0xEC000000676E697ALL;
      v23 = 0x696C616974696E49;
    }

    else if (v20 == 2)
    {
      v21 = 0xE700000000000000;
      v23 = 0x676E696E6E7552;
    }

    else
    {
      if (v20 == 3)
      {
        v21 = 0xED00006E776F4420;
        v22 = 1953851475;
LABEL_20:
        v23 = v22 | 0x676E697400000000;
        goto LABEL_21;
      }

      v21 = 0xE90000000000006ELL;
      v23 = 0x776F442074756853;
    }

LABEL_21:
    v24 = *(v0 + 456);
    MEMORY[0x231907FA0](v23, v21);

    v25 = MEMORY[0x277D837D0];
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    *(inited + 72) = v25;
    *(inited + 80) = 0xD000000000000011;
    *(inited + 88) = 0x800000022FCE3CC0;
    v26 = MEMORY[0x277D83B88];
    *(inited + 96) = *(*(v24 + 112) + 16);
    *(inited + 120) = v26;
    *(inited + 128) = 0x7372656B726F57;
    *(inited + 136) = 0xE700000000000000;
    *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BD0);
    *(inited + 144) = v7;
    v27 = sub_22FA4DAB0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8750);
    swift_arrayDestroy();
    v28 = *(v0 + 8);

    return v28(v27);
  }

  v9 = 0;
LABEL_8:
  *(v0 + 480) = v6;
  *(v0 + 488) = v9;
  v11 = __clz(__rbit64(v6)) | (v9 << 6);
  v12 = (*(v8 + 48) + 16 * v11);
  *(v0 + 496) = *v12;
  *(v0 + 504) = v12[1];
  v13 = *(*(v8 + 56) + 8 * v11);
  *(v0 + 512) = v13;

  v14 = swift_task_alloc();
  *(v0 + 520) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
  *(v0 + 528) = v16;
  *v14 = v0;
  v14[1] = sub_22FB29D50;
  v17 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v0 + 192, v13, v15, v16, v17);
}

uint64_t sub_22FB29D50()
{
  v1 = *(*v0 + 456);

  return MEMORY[0x2822009F8](sub_22FB29E60, v1, 0);
}

uint64_t sub_22FB29E60()
{
  sub_22FB2BE28(v0 + 192, v0 + 240);
  if ((*(v0 + 280) & 1) == 0)
  {

    sub_22FA2D89C((v0 + 240), v0 + 288);
    v16 = *(v0 + 312);
    v17 = *(v0 + 320);
    __swift_project_boxed_opaque_existential_1((v0 + 288), v16);
    v18 = *(v17 + 8);
    v39 = (*(v18 + 16) + **(v18 + 16));
    v19 = swift_task_alloc();
    *(v0 + 536) = v19;
    *v19 = v0;
    v19[1] = sub_22FB2A48C;

    return v39(v16, v18);
  }

  v2 = *(v0 + 496);
  v1 = *(v0 + 504);
  v3 = *(v0 + 240);
  *(v0 + 432) = 0;
  *(v0 + 440) = 0xE000000000000000;
  sub_22FCC9384();
  v4 = *(v0 + 440);
  *(v0 + 416) = *(v0 + 432);
  *(v0 + 424) = v4;
  MEMORY[0x231907FA0](0xD000000000000024, 0x800000022FCE3C90);
  MEMORY[0x231907FA0](v2, v1);

  MEMORY[0x231907FA0](8250, 0xE200000000000000);
  *(v0 + 448) = v3;
  sub_22FCC94A4();
  v5 = *(v0 + 416);
  v6 = *(v0 + 424);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + 472);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_31:
    v8 = sub_22FAC2528(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_22FAC2528((v9 > 1), v10 + 1, 1, v8);
  }

  sub_22FA2B420(v0 + 192, &qword_27DAD86F0);
  v11 = MEMORY[0x277D837D0];
  *(v0 + 352) = MEMORY[0x277D837D0];
  *(v0 + 328) = v5;
  *(v0 + 336) = v6;
  v8[2] = v10 + 1;
  sub_22FA4FE00((v0 + 328), &v8[4 * v10 + 4]);
  v13 = *(v0 + 480);
  v12 = *(v0 + 488);
  *(v0 + 472) = v8;
  v14 = (v13 - 1) & v13;
  if (!v14)
  {
    while (1)
    {
      v21 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      v15 = *(v0 + 464);
      if (v21 >= (((1 << *(v0 + 233)) + 63) >> 6))
      {
        break;
      }

      v14 = *(v15 + 8 * v21 + 64);
      ++v12;
      if (v14)
      {
        v12 = v21;
        goto LABEL_14;
      }
    }

    v29 = *(v0 + 456);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22FCD2240;
    *(inited + 32) = 0x6574617453;
    *(inited + 40) = 0xE500000000000000;
    v31 = *(*(v29 + 144) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
    if (v31 <= 1)
    {
      if (*(*(v29 + 144) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state))
      {
        v32 = 0xEB00000000705520;
        v33 = 1918989395;
        goto LABEL_26;
      }

      v32 = 0xEC000000676E697ALL;
      v34 = 0x696C616974696E49;
    }

    else if (v31 == 2)
    {
      v32 = 0xE700000000000000;
      v34 = 0x676E696E6E7552;
    }

    else
    {
      if (v31 == 3)
      {
        v32 = 0xED00006E776F4420;
        v33 = 1953851475;
LABEL_26:
        v34 = v33 | 0x676E697400000000;
        goto LABEL_27;
      }

      v32 = 0xE90000000000006ELL;
      v34 = 0x776F442074756853;
    }

LABEL_27:
    v35 = *(v0 + 456);
    MEMORY[0x231907FA0](v34, v32);

    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    *(inited + 72) = v11;
    *(inited + 80) = 0xD000000000000011;
    *(inited + 88) = 0x800000022FCE3CC0;
    v36 = MEMORY[0x277D83B88];
    *(inited + 96) = *(*(v35 + 112) + 16);
    *(inited + 120) = v36;
    *(inited + 128) = 0x7372656B726F57;
    *(inited + 136) = 0xE700000000000000;
    *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BD0);
    *(inited + 144) = v8;
    v37 = sub_22FA4DAB0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8750);
    swift_arrayDestroy();
    v38 = *(v0 + 8);

    return v38(v37);
  }

  v15 = *(v0 + 464);
LABEL_14:
  *(v0 + 480) = v14;
  *(v0 + 488) = v12;
  v22 = __clz(__rbit64(v14)) | (v12 << 6);
  v23 = (*(v15 + 48) + 16 * v22);
  *(v0 + 496) = *v23;
  *(v0 + 504) = v23[1];
  v24 = *(*(v15 + 56) + 8 * v22);
  *(v0 + 512) = v24;

  v25 = swift_task_alloc();
  *(v0 + 520) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
  *(v0 + 528) = v27;
  *v25 = v0;
  v25[1] = sub_22FB29D50;
  v28 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v0 + 192, v24, v26, v27, v28);
}

uint64_t sub_22FB2A48C(uint64_t a1)
{
  v2 = *(*v1 + 456);
  *(*v1 + 544) = a1;

  return MEMORY[0x2822009F8](sub_22FB2A5A4, v2, 0);
}

uint64_t sub_22FB2A5A4()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 472);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_27:
    v2 = sub_22FAC2528(0, v2[2] + 1, 1, v2);
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_22FAC2528((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 544);

  sub_22FA2B420(v0 + 192, &qword_27DAD86F0);
  *(v0 + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BC0);
  *(v0 + 360) = v5;
  v2[2] = v4 + 1;
  sub_22FA4FE00((v0 + 360), &v2[4 * v4 + 4]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 288);
  v7 = *(v0 + 480);
  v6 = *(v0 + 488);
  *(v0 + 472) = v2;
  v8 = (v7 - 1) & v7;
  if (!v8)
  {
    while (1)
    {
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      v9 = *(v0 + 464);
      if (v10 >= (((1 << *(v0 + 233)) + 63) >> 6))
      {
        break;
      }

      v8 = *(v9 + 8 * v10 + 64);
      ++v6;
      if (v8)
      {
        v6 = v10;
        goto LABEL_10;
      }
    }

    v18 = *(v0 + 456);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22FCD2240;
    *(inited + 32) = 0x6574617453;
    *(inited + 40) = 0xE500000000000000;
    v20 = *(*(v18 + 144) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
    if (v20 <= 1)
    {
      if (*(*(v18 + 144) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state))
      {
        v21 = 0xEB00000000705520;
        v22 = 1918989395;
        goto LABEL_22;
      }

      v21 = 0xEC000000676E697ALL;
      v23 = 0x696C616974696E49;
    }

    else if (v20 == 2)
    {
      v21 = 0xE700000000000000;
      v23 = 0x676E696E6E7552;
    }

    else
    {
      if (v20 == 3)
      {
        v21 = 0xED00006E776F4420;
        v22 = 1953851475;
LABEL_22:
        v23 = v22 | 0x676E697400000000;
        goto LABEL_23;
      }

      v21 = 0xE90000000000006ELL;
      v23 = 0x776F442074756853;
    }

LABEL_23:
    v24 = *(v0 + 456);
    MEMORY[0x231907FA0](v23, v21);

    v25 = MEMORY[0x277D837D0];
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    *(inited + 72) = v25;
    *(inited + 80) = 0xD000000000000011;
    *(inited + 88) = 0x800000022FCE3CC0;
    v26 = MEMORY[0x277D83B88];
    *(inited + 96) = *(*(v24 + 112) + 16);
    *(inited + 120) = v26;
    *(inited + 128) = 0x7372656B726F57;
    *(inited + 136) = 0xE700000000000000;
    *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BD0);
    *(inited + 144) = v2;
    v27 = sub_22FA4DAB0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8750);
    swift_arrayDestroy();
    v28 = *(v0 + 8);

    return v28(v27);
  }

  v9 = *(v0 + 464);
LABEL_10:
  *(v0 + 480) = v8;
  *(v0 + 488) = v6;
  v11 = __clz(__rbit64(v8)) | (v6 << 6);
  v12 = (*(v9 + 48) + 16 * v11);
  *(v0 + 496) = *v12;
  *(v0 + 504) = v12[1];
  v13 = *(*(v9 + 56) + 8 * v11);
  *(v0 + 512) = v13;

  v14 = swift_task_alloc();
  *(v0 + 520) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
  *(v0 + 528) = v16;
  *v14 = v0;
  v14[1] = sub_22FB29D50;
  v17 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v0 + 192, v13, v15, v16, v17);
}

uint64_t sub_22FB2AA14()
{

  v1 = OBJC_IVAR____TtC13PhotoAnalysis13WorkerFactory_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for WorkerFactory()
{
  result = qword_2814810C0;
  if (!qword_2814810C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FB2AB00()
{
  result = sub_22FCC8684();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22FB2ABC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA4C64C;

  return sub_22FB29940();
}

unint64_t sub_22FB2AC78(uint64_t a1)
{
  result = sub_22FB2ACA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22FB2ACA0()
{
  result = qword_27DAD86E0;
  if (!qword_27DAD86E0)
  {
    type metadata accessor for WorkerFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD86E0);
  }

  return result;
}

uint64_t sub_22FB2ACF8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_22FCC9844();
  sub_22FCC8B14();
  v6 = sub_22FCC9894();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22FCC9704() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22FB0656C();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_22FB2AF6C(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_22FB2AE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  result = sub_22FCC9304();
  v8 = -1 << *(v6 + 32);
  v9 = result & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_22FA728C0(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x231908770](v16, a1);
      result = sub_22FA3A7C4(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    v16[0] = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22FB066C8();
      v13 = v16[0];
    }

    v14 = *(v13 + 48) + 40 * v9;
    v15 = *(v14 + 16);
    *a2 = *v14;
    *(a2 + 16) = v15;
    *(a2 + 32) = *(v14 + 32);
    result = sub_22FB2B130(v9);
    *v3 = v16[0];
  }

  else
  {
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

unint64_t sub_22FB2AF6C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22FCC9284();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_22FCC9844();

        sub_22FCC8B14();
        v10 = sub_22FCC9894();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_22FB2B130(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22FCC9284();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_22FA728C0(*(v3 + 48) + 40 * v6, v22);
        v12 = sub_22FCC9304();
        sub_22FA3A7C4(v22);
        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = v16 + 40 * v2;
            v18 = (v16 + 40 * v6);
            if (v2 != v6 || v17 >= v18 + 40)
            {
              v10 = *v18;
              v11 = v18[1];
              *(v17 + 32) = *(v18 + 4);
              *v17 = v10;
              *(v17 + 16) = v11;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_22FB2B2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[27] = a4;
  v5[28] = a5;
  v5[25] = a2;
  v5[26] = a3;
  v7 = *(a4 - 8);
  v5[29] = v7;
  v5[30] = swift_task_alloc();
  (*(v7 + 16))();

  return MEMORY[0x2822009F8](sub_22FB2B3D4, a3, 0);
}

uint64_t sub_22FB2B3D4()
{
  v47 = v0;
  v1 = (*(v0[28] + 40))(v0[27]);
  v3 = v2;
  v0[31] = v1;
  v0[32] = v2;
  v0[33] = OBJC_IVAR____TtC13PhotoAnalysis13WorkerFactory_logger;

  v4 = sub_22FCC8664();
  v5 = sub_22FCC8F34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v46 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_22FA2F600(v1, v3, &v46);
    _os_log_impl(&dword_22FA28000, v4, v5, "Attempting to unload worker %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x23190A000](v7, -1, -1);
    MEMORY[0x23190A000](v6, -1, -1);
  }

  v8 = v0[26];
  swift_beginAccess();
  v9 = *(v8 + 120);
  if (!*(v9 + 16))
  {
    goto LABEL_10;
  }

  v10 = sub_22FA2DB54(v1, v3);
  if ((v11 & 1) == 0)
  {

LABEL_10:

    v27 = sub_22FCC8664();
    v28 = sub_22FCC8F24();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v46 = v30;
      *v29 = 136315138;
      v31 = sub_22FA2F600(v1, v3, &v46);

      *(v29 + 4) = v31;
      _os_log_impl(&dword_22FA28000, v27, v28, "Failed to unload worker %s: No requesters previously registered.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x23190A000](v30, -1, -1);
      MEMORY[0x23190A000](v29, -1, -1);

LABEL_21:
      (*(v0[29] + 8))(v0[30], v0[27]);

      v44 = v0[1];

      return v44();
    }

LABEL_20:

    goto LABEL_21;
  }

  v12 = v0[25];
  v13 = *(*(v9 + 56) + 8 * v10);

  v0[24] = v13;

  v14 = sub_22FAB5C34(v12, v13);

  v15 = v0[25];
  if ((v14 & 1) == 0)
  {
    sub_22FA728C0(v15, (v0 + 2));

    v32 = sub_22FCC8664();
    v33 = sub_22FCC8F24();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v46 = v35;
      *v34 = 136315394;
      v36 = sub_22FA2F600(v1, v3, &v46);

      *(v34 + 4) = v36;
      *(v34 + 12) = 2080;
      v37 = sub_22FCC92F4();
      v39 = v38;
      sub_22FA3A7C4((v0 + 2));
      v40 = sub_22FA2F600(v37, v39, &v46);

      *(v34 + 14) = v40;
      _os_log_impl(&dword_22FA28000, v32, v33, "Failed to unload worker %s: requester %s not previously registered", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v35, -1, -1);
      MEMORY[0x23190A000](v34, -1, -1);
    }

    else
    {

      sub_22FA3A7C4((v0 + 2));
    }

    goto LABEL_20;
  }

  sub_22FB2AE34(v15, (v0 + 7));
  sub_22FA2B420((v0 + 7), &qword_27DAD86E8);
  v16 = v0[24];
  v0[34] = v16;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *(v8 + 120);
  *(v8 + 120) = 0x8000000000000000;
  sub_22FB25CB4(v16, v1, v3, isUniquelyReferenced_nonNull_native);

  *(v8 + 120) = v46;
  swift_endAccess();
  if (*(v16 + 16))
  {

    v18 = sub_22FCC8664();
    v19 = sub_22FCC8F34();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v46 = v21;
      *v20 = 136315650;
      v22 = sub_22FA2F600(v1, v3, &v46);

      *(v20 + 4) = v22;
      *(v20 + 12) = 2048;
      *(v20 + 14) = *(v16 + 16);
      *(v20 + 22) = 2080;

      v23 = sub_22FCC8E94();
      v25 = v24;

      v26 = sub_22FA2F600(v23, v25, &v46);

      *(v20 + 24) = v26;
      _os_log_impl(&dword_22FA28000, v18, v19, "Cannot unload worker %s: %ld requesters still using: %s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v21, -1, -1);
      MEMORY[0x23190A000](v20, -1, -1);
    }

    else
    {
    }

    goto LABEL_20;
  }

  v41 = v0[27];
  v42 = v0[28];
  v43 = *(v0[26] + 128);
  v0[35] = v43;
  v0[36] = (*(v42 + 48))(v41);

  return MEMORY[0x2822009F8](sub_22FB2BA9C, v43, 0);
}

uint64_t sub_22FB2BA9C()
{
  v1 = v0[26];
  sub_22FC163DC(v0[36], v0[31], v0[32]);

  return MEMORY[0x2822009F8](sub_22FB2BB20, v1, 0);
}

uint64_t sub_22FB2BB20()
{
  v24 = v0;
  v1 = v0[26];
  swift_beginAccess();
  if (*(*(v1 + 112) + 16) && (v3 = v0[31], v2 = v0[32], , sub_22FA2DB54(v3, v2), LOBYTE(v2) = v4, , (v2 & 1) != 0))
  {

    v5 = sub_22FCC8664();
    v6 = sub_22FCC8F34();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = v0[31];
      v7 = v0[32];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_22FA2F600(v8, v7, &v23);
      _os_log_impl(&dword_22FA28000, v5, v6, "Unloading worker for %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x23190A000](v10, -1, -1);
      MEMORY[0x23190A000](v9, -1, -1);
    }

    v12 = v0[31];
    v11 = v0[32];
    swift_beginAccess();
    sub_22FB040DC(v12, v11);
    swift_endAccess();
  }

  else
  {

    v13 = sub_22FCC8664();
    v14 = sub_22FCC8F34();

    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[32];
    if (v15)
    {
      v17 = v0[31];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23 = v19;
      *v18 = 136446210;
      v20 = sub_22FA2F600(v17, v16, &v23);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_22FA28000, v13, v14, "No cached worker for %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x23190A000](v19, -1, -1);
      MEMORY[0x23190A000](v18, -1, -1);
    }

    else
    {
    }
  }

  (*(v0[29] + 8))(v0[30], v0[27]);

  v21 = v0[1];

  return v21();
}

uint64_t sub_22FB2BE28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD86F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FB2BE98(uint64_t a1, _BYTE *a2)
{
  v5 = sub_22FCC8684();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v20 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  LOBYTE(a2) = *a2;
  swift_defaultActor_initialize();
  v11 = MEMORY[0x277D84F98];
  *(v2 + 112) = MEMORY[0x277D84F98];
  *(v2 + 120) = v11;
  v12 = OBJC_IVAR____TtC13PhotoAnalysis13WorkerFactory_logger;
  sub_22FCC8674();
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;

  v13 = sub_22FCC9904();
  v15 = v14;
  v16 = *(v6 + 16);
  v16(v10, v2 + v12, v5);
  type metadata accessor for StateHolder();
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) = 0;
  v17[2] = v13;
  v17[3] = v15;
  v17[4] = 0;
  v17[5] = 0xE000000000000000;
  v16(v17 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger, v10, v5);
  v16(v20, v10, v5);
  sub_22FCC85E4();
  (*(v6 + 8))(v10, v5);
  *(v2 + 144) = v17;
  return v2;
}

uint64_t get_enum_tag_for_layout_string_13PhotoAnalysis13WorkerFactoryC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 56) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

uint64_t sub_22FB2C114(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FB2C150(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_22FB2C1A0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_22FB2C1DC()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_281487FD0);
  __swift_project_value_buffer(v0, qword_281487FD0);
  return sub_22FCC8674();
}

unint64_t sub_22FB2C260()
{
  sub_22FB316A4(v0, v31);
  if (v33 <= 1u)
  {
    if (!v33)
    {
      v4 = v32;
      sub_22FA2CF78(v31, &v28);
      sub_22FCC9384();

      v27 = 0x206B736154;
      v5 = v29;
      v6 = v30;
      __swift_project_boxed_opaque_existential_1(&v28, v29);
      v7 = (*(v6 + 40))(v5, v6);
      MEMORY[0x231907FA0](v7);

      MEMORY[0x231907FA0](0xD000000000000012, 0x800000022FCE3FB0);
      v8 = [v4 debugDescription];
      v9 = sub_22FCC8A84();
      v11 = v10;

      MEMORY[0x231907FA0](v9, v11);

LABEL_11:
      v3 = v27;
      __swift_destroy_boxed_opaque_existential_0(&v28);
      return v3;
    }

    sub_22FA2CF78(v31, &v28);
    sub_22FCC9384();

    v27 = 0x206B736154;
    v23 = v29;
    v24 = v30;
    __swift_project_boxed_opaque_existential_1(&v28, v29);
    v25 = (*(v24 + 40))(v23, v24);
    MEMORY[0x231907FA0](v25);

    v15 = 0x6E61632073617720;
    v16 = 0xEE0064656C6C6563;
LABEL_10:
    MEMORY[0x231907FA0](v15, v16);
    goto LABEL_11;
  }

  if (v33 == 2)
  {
    sub_22FA2CF78(v31, &v28);
    v27 = 0;
    sub_22FCC9384();
    MEMORY[0x231907FA0](0x206B736154, 0xE500000000000000);
    v12 = v29;
    v13 = v30;
    __swift_project_boxed_opaque_existential_1(&v28, v29);
    v14 = (*(v13 + 40))(v12, v13);
    MEMORY[0x231907FA0](v14);

    v15 = 0xD000000000000030;
    v16 = 0x800000022FCE3F70;
    goto LABEL_10;
  }

  if (v33 != 3)
  {
    sub_22FA2CF78(v31, &v28);
    sub_22FCC9384();

    v27 = 0x206B736154;
    v17 = v29;
    v18 = v30;
    __swift_project_boxed_opaque_existential_1(&v28, v29);
    v19 = (*(v18 + 40))(v17, v18);
    MEMORY[0x231907FA0](v19);

    MEMORY[0x231907FA0](0xD000000000000011, 0x800000022FCE3F10);
    v20 = v29;
    v21 = v30;
    __swift_project_boxed_opaque_existential_1(&v28, v29);
    v22 = (*(v21 + 48))(v20, v21);
    MEMORY[0x231907FA0](v22);

    v16 = 0x800000022FCE3F30;
    v15 = 0xD000000000000012;
    goto LABEL_10;
  }

  v2 = *(&v31[0] + 1);
  v1 = *&v31[0];
  sub_22FCC9384();

  MEMORY[0x231907FA0](v1, v2);

  return 0xD00000000000001DLL;
}

uint64_t sub_22FB2C678()
{
  sub_22FCC88D4();
  sub_22FB31378(&qword_28147AFE8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8700);
  sub_22FAEF71C(&qword_28147AF38, &unk_27DAD8700);
  return sub_22FCC9264();
}

uint64_t sub_22FB2C750()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22FB2C790()
{
  v21[1] = *v0;
  v1 = sub_22FCC8684();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v21 - v6;
  swift_defaultActor_initialize();
  *(v0 + 112) = 0x4024000000000000;
  sub_22FCC8E34();
  *(v0 + 120) = v8 + v8;
  sub_22FCC8E34();
  *(v0 + 128) = v9 * 5.0;
  *(v0 + 144) = 0;
  v10 = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger;
  if (qword_281481310 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v1, qword_281487FD0);
  v12 = *(v2 + 16);
  v12(v0 + v10, v11, v1);
  v13 = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_changeCache;
  type metadata accessor for PhotoKitChangeCache();
  v14 = swift_allocObject();
  swift_defaultActor_initialize();
  v15 = MEMORY[0x277D84F98];
  *(v14 + 112) = MEMORY[0x277D84F98];
  *(v0 + v13) = v14;
  *(v0 + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier) = v15;
  v16 = sub_22FCC9904();
  v18 = v17;
  v12(v7, v0 + v10, v1);
  type metadata accessor for StateHolder();
  v19 = swift_allocObject();
  *(v19 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) = 0;
  v19[2] = v16;
  v19[3] = v18;
  v19[4] = 0;
  v19[5] = 0xE000000000000000;
  v12(v19 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger, v7, v1);
  v12(v4, v7, v1);
  sub_22FCC85E4();
  (*(v2 + 8))(v7, v1);
  *(v0 + 136) = v19;
  return v0;
}

uint64_t sub_22FB2CA60()
{
  v1 = *(v0 + 16);
  if (*(v1 + 144))
  {
    swift_getObjectType();

    sub_22FCC9074();
  }

  *(v1 + 144) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22FB2CB08(BOOL *a1, uint64_t (*a2)(double))
{
  result = a2(0.0);
  *a1 = (result & 1) == 0;
  return result;
}

uint64_t sub_22FB2CB44()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 320);
  v4 = *(*v0 + 312);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_22FB2CCB0, v4, 0);
}

uint64_t sub_22FB2CCB0()
{
  v61 = v0;
  if (PFOSVariantHasInternalDiagnostics())
  {
    if (qword_281481AF8 != -1)
    {
      swift_once();
    }

    v2 = byte_281488078;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  __swift_project_boxed_opaque_existential_1((v0 + 168), v3);
  (*(v4 + 144))(v2, v3, v4);
  if (PHAProcessIsPhotoAnalysisd())
  {
    exit(1);
  }

  while (1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 168);
    v6 = *(v0 + 368);
    v5 = *(v0 + 376);
    if (!v6)
    {
      break;
    }

    while (1)
    {
      v7 = *(v0 + 352);
LABEL_17:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = v12 | (v5 << 6);
      v14 = (*(v7 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      sub_22FA2D328(*(v7 + 56) + 40 * v13, v0 + 128);
      *(v0 + 72) = v16;
      *(v0 + 80) = v15;
      sub_22FA2CF78((v0 + 128), v0 + 88);

      v10 = v5;
LABEL_18:
      *(v0 + 368) = v6;
      *(v0 + 376) = v10;
      v17 = *(v0 + 88);
      *(v0 + 16) = *(v0 + 72);
      *(v0 + 32) = v17;
      *(v0 + 48) = *(v0 + 104);
      *(v0 + 64) = *(v0 + 120);
      if (!*(v0 + 24))
      {

        v37 = *(v0 + 8);

        return v37();
      }

      sub_22FA2CF78((v0 + 32), v0 + 168);
      v18 = *(v0 + 192);
      v19 = *(v0 + 200);
      __swift_project_boxed_opaque_existential_1((v0 + 168), v18);
      if ((*(v19 + 72))(v18, v19))
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 168);
      v5 = v10;
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    v20 = *(v0 + 344);
    v21 = *(v0 + 312);
    v22 = *(v0 + 192);
    v23 = *(v0 + 200);
    __swift_project_boxed_opaque_existential_1((v0 + 168), v22);
    v1 = v20 - (*(v23 + 64))(v22, v23);
    if (*(v21 + 128) < v1)
    {
      goto LABEL_32;
    }

    if (*(*(v0 + 312) + 120) < v1)
    {
      sub_22FA2D328(v0 + 168, v0 + 208);
      v24 = sub_22FCC8664();
      v25 = sub_22FCC8F14();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v60 = v27;
        *v26 = 136315394;
        v28 = *(v0 + 232);
        v29 = *(v0 + 240);
        __swift_project_boxed_opaque_existential_1((v0 + 208), v28);
        v30 = (*(v29 + 48))(v28, v29);
        v32 = v31;
        __swift_destroy_boxed_opaque_existential_0(v0 + 208);
        v33 = sub_22FA2F600(v30, v32, &v60);

        *(v26 + 4) = v33;
        *(v26 + 12) = 2080;
        v34 = sub_22FC3B88C(v1);
        v36 = sub_22FA2F600(v34, v35, &v60);

        *(v26 + 14) = v36;
        _os_log_impl(&dword_22FA28000, v24, v25, "Task %s hasn't reported progress for %s.", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v27, -1, -1);
        MEMORY[0x23190A000](v26, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v0 + 208);
      }
    }
  }

LABEL_9:
  v8 = ((1 << *(v0 + 392)) + 63) >> 6;
  if (v8 <= (v5 + 1))
  {
    v9 = v5 + 1;
  }

  else
  {
    v9 = ((1 << *(v0 + 392)) + 63) >> 6;
  }

  v10 = v9 - 1;
  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      v6 = 0;
      *(v0 + 120) = 0;
      *(v0 + 104) = 0u;
      *(v0 + 88) = 0u;
      *(v0 + 72) = 0u;
      goto LABEL_18;
    }

    v7 = *(v0 + 352);
    v6 = *(v7 + 8 * v11 + 64);
    ++v5;
    if (v6)
    {
      v5 = v11;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_32:
  sub_22FA2D328(v0 + 168, v0 + 248);
  v39 = sub_22FCC8664();
  v40 = sub_22FCC8F14();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v60 = v42;
    *v41 = 136315394;
    v43 = *(v0 + 272);
    v44 = *(v0 + 280);
    __swift_project_boxed_opaque_existential_1((v0 + 248), v43);
    v45 = (*(v44 + 48))(v43, v44);
    v47 = v46;
    __swift_destroy_boxed_opaque_existential_0(v0 + 248);
    v48 = sub_22FA2F600(v45, v47, &v60);

    *(v41 + 4) = v48;
    *(v41 + 12) = 2080;
    v49 = sub_22FC3B88C(v1);
    v51 = sub_22FA2F600(v49, v50, &v60);

    *(v41 + 14) = v51;
    _os_log_impl(&dword_22FA28000, v39, v40, "Task %s has been stuck for %s. Manually exiting process.", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v42, -1, -1);
    MEMORY[0x23190A000](v41, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 248);
  }

  v52 = *(v0 + 192);
  v53 = *(v0 + 200);
  __swift_project_boxed_opaque_existential_1((v0 + 168), v52);
  (*(v53 + 128))(v52, v53);
  sub_22FCC6784();
  v55 = *(v0 + 192);
  v54 = *(v0 + 200);
  v56 = __swift_project_boxed_opaque_existential_1((v0 + 168), v55);
  v57 = swift_task_alloc();
  *(v0 + 384) = v57;
  *v57 = v0;
  v57[1] = sub_22FB2CB44;
  v58 = *(v0 + 336);
  v59 = *(v0 + 312);

  return sub_22FB3056C(v56, v58, v59, v55, v54);
}

uint64_t sub_22FB2D328()
{
  v1[2] = v0;
  v2 = sub_22FCC8684();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB2D3E8, v0, 0);
}

uint64_t sub_22FB2D3E8()
{
  (*(v0[4] + 16))(v0[5], v0[2] + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger, v0[3]);
  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22FA28000, v1, v2, "On-demand task about to execute, cancelling all running background tasks", v3, 2u);
    MEMORY[0x23190A000](v3, -1, -1);
  }

  v4 = v0[5];
  v5 = v0[2];

  sub_22FB31378(&qword_281481308, type metadata accessor for TaskScheduler);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_22FB2D5A4;

  return MEMORY[0x282200600]();
}

uint64_t sub_22FB2D5A4()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_22FB2D6D0, v1, 0);
}

uint64_t sub_22FB2D6D0()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22FB2D74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[37] = a3;
  v4[38] = a4;
  v4[36] = a2;
  v6 = sub_22FCC8684();
  v4[39] = v6;
  v7 = *(v6 - 8);
  v4[40] = v7;
  v4[41] = *(v7 + 64);
  v4[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB2D860, a3, 0);
}

uint64_t sub_22FB2D860()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 296);
  v4 = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = v5 + 64;
  v7 = -1;
  v8 = -1 << *(v5 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v5 + 64);
  v10 = (63 - v8) >> 6;
  v44 = v1 + 7;
  v47 = v2;

  v12 = 0;
  v45 = v5 + 64;
  v46 = v5;
  v43 = v10;
  while (v9)
  {
    v13 = v12;
LABEL_16:
    v16 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v17 = v16 | (v13 << 6);
    v18 = (*(v5 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    sub_22FA2D328(*(v5 + 56) + 40 * v17, v0 + 128);
    *(v0 + 72) = v20;
    *(v0 + 80) = v19;
    sub_22FA2CF78((v0 + 128), v0 + 88);

LABEL_17:
    v21 = *(v0 + 88);
    *(v0 + 16) = *(v0 + 72);
    *(v0 + 32) = v21;
    *(v0 + 48) = *(v0 + 104);
    *(v0 + 64) = *(v0 + 120);
    v22 = *(v0 + 24);
    if (!v22)
    {

      v42 = *(v0 + 8);

      return v42();
    }

    v53 = *(v0 + 16);
    sub_22FA2CF78((v0 + 32), v0 + 168);
    v23 = *(v0 + 192);
    v24 = *(v0 + 200);
    __swift_project_boxed_opaque_existential_1((v0 + 168), v23);
    if ((*(v24 + 16))(v23, v24))
    {
    }

    else
    {
      v25 = *(v0 + 352);
      v49 = v25;
      v52 = *(v0 + 344);
      v26 = *(v0 + 336);
      v28 = *(v0 + 304);
      v27 = *(v0 + 312);
      v48 = v26;
      v51 = *(v0 + 296);
      v29 = sub_22FCC8D14();
      v50 = *(v29 - 8);
      (*(v50 + 56))(v25, 1, 1, v29);
      (*(v47 + 16))(v26, v28, v27);
      v30 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v31 = (v44 + v30) & 0xFFFFFFFFFFFFFFF8;
      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      *(v32 + 24) = 0;
      (*(v47 + 32))(v32 + v30, v48, v27);
      v33 = (v32 + v31);
      *v33 = v53;
      v33[1] = v22;
      *(v32 + ((v31 + 23) & 0xFFFFFFFFFFFFFFF8)) = v51;
      sub_22FAEE8C4(v49, v52);
      LODWORD(v31) = (*(v50 + 48))(v52, 1, v29);

      v34 = *(v0 + 344);
      if (v31 == 1)
      {
        sub_22FA2B420(*(v0 + 344), &unk_27DAD8710);
      }

      else
      {
        sub_22FCC8D04();
        (*(v50 + 8))(v34, v29);
      }

      v10 = v43;
      if (*(v32 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v35 = sub_22FCC8CC4();
        v37 = v36;
        swift_unknownObjectRelease();
      }

      else
      {
        v35 = 0;
        v37 = 0;
      }

      v38 = **(v0 + 288);
      v39 = swift_allocObject();
      *(v39 + 16) = &unk_22FCD7800;
      *(v39 + 24) = v32;

      if (v37 | v35)
      {
        v40 = v0 + 208;
        *(v0 + 208) = 0;
        *(v0 + 216) = 0;
        *(v0 + 224) = v35;
        *(v0 + 232) = v37;
      }

      else
      {
        v40 = 0;
      }

      v41 = *(v0 + 352);
      *(v0 + 264) = 1;
      *(v0 + 272) = v40;
      *(v0 + 280) = v38;
      swift_task_create();

      sub_22FA2B420(v41, &unk_27DAD8710);
      v6 = v45;
      v5 = v46;
    }

    result = __swift_destroy_boxed_opaque_existential_0(v0 + 168);
  }

  if (v10 <= v12 + 1)
  {
    v14 = v12 + 1;
  }

  else
  {
    v14 = v10;
  }

  v15 = v14 - 1;
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      v9 = 0;
      *(v0 + 120) = 0;
      *(v0 + 104) = 0u;
      *(v0 + 88) = 0u;
      v12 = v15;
      *(v0 + 72) = 0u;
      goto LABEL_17;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FB2DD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_22FB2DDA8, 0, 0);
}

uint64_t sub_22FB2DDA8()
{
  v12 = v0;

  v1 = sub_22FCC8664();
  v2 = sub_22FCC8EF4();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[3];
    v3 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_22FA2F600(v4, v3, &v11);
    _os_log_impl(&dword_22FA28000, v1, v2, "Cancelling task '%{public}s'", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23190A000](v6, -1, -1);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_22FB2DF28;
  v8 = v0[4];
  v9 = v0[3];

  return sub_22FB2E4FC(v9, v8);
}

uint64_t sub_22FB2DF28()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_22FB2E17C;
  }

  else
  {
    v2 = sub_22FB2E03C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FB2E03C()
{
  v10 = v0;

  v1 = sub_22FCC8664();
  v2 = sub_22FCC8EF4();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[3];
    v3 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_22FA2F600(v4, v3, &v9);
    _os_log_impl(&dword_22FA28000, v1, v2, "Successfully cancelled task '%{public}s'", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23190A000](v6, -1, -1);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_22FB2E17C()
{
  v17 = v0;
  v1 = v0[7];

  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F14();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  if (v5)
  {
    v8 = v0[3];
    v7 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_22FA2F600(v8, v7, &v16);
    *(v9 + 12) = 2114;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_22FA28000, v3, v4, "Failed to cancel task '%{public}s': %{public}@", v9, 0x16u);
    sub_22FA2B420(v10, &unk_27DAD7B10);
    MEMORY[0x23190A000](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23190A000](v11, -1, -1);
    MEMORY[0x23190A000](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_22FB2E34C()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      sub_22FA2D328(*(v2 + 56) + 40 * (__clz(__rbit64(v5)) | (v9 << 6)), v16);
      sub_22FA2CF78(v16, &v13);
      v10 = v14;
      v11 = v15;
      __swift_project_boxed_opaque_existential_1(&v13, v14);
      if ((*(v11 + 16))(v10, v11) == 2)
      {
        break;
      }

      v5 &= v5 - 1;
      result = __swift_destroy_boxed_opaque_existential_0(&v13);
      v8 = v9;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    sub_22FA2CF78(&v13, &v17);
LABEL_12:

    v12 = *(&v18 + 1) != 0;
    sub_22FA2B420(&v17, &unk_27DAD8720);
    return v12;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        v17 = 0u;
        v18 = 0u;
        v19 = 0;
        goto LABEL_12;
      }

      v5 = *(v2 + 64 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22FB2E4FC(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  return MEMORY[0x2822009F8](sub_22FB2E520, v2, 0);
}

uint64_t sub_22FB2E520()
{
  v1 = *(v0 + 200);
  v2 = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v5 = *(v0 + 184);
    v4 = *(v0 + 192);

    v6 = sub_22FA2DB54(v5, v4);
    if (v7)
    {
      sub_22FA2D328(*(v3 + 56) + 40 * v6, v0 + 56);

      sub_22FA2CF78((v0 + 56), v0 + 16);
      v8 = *(v0 + 40);
      v9 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
      (*(v9 + 120))(v8, v9);
      v10 = *(v0 + 40);
      v11 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v10);
      v12 = (*(v11 + 48))(v10, v11);
      v14 = v13;
      swift_beginAccess();
      sub_22FB041F0(v12, v14, v0 + 96);
      sub_22FA2B420(v0 + 96, &unk_27DAD8720);
      swift_endAccess();

      v15 = *(v0 + 40);
      v16 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v15);
      v22 = (*(v16 + 136) + **(v16 + 136));
      v17 = swift_task_alloc();
      *(v0 + 208) = v17;
      *v17 = v0;
      v17[1] = sub_22FB2E800;

      return v22(v15, v16);
    }
  }

  v20 = *(v0 + 184);
  v19 = *(v0 + 192);
  sub_22FAE11BC();
  swift_allocError();
  *v21 = v20;
  *(v21 + 8) = v19;
  *(v21 + 48) = 3;
  swift_willThrow();
  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_22FB2E800()
{
  v1 = *(*v0 + 200);

  return MEMORY[0x2822009F8](sub_22FB2E910, v1, 0);
}

uint64_t sub_22FB2E910()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB2E994()
{
  v1 = *(v0 + 328);
  v2 = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
LABEL_27:
    v35 = *(v50 + 41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22FCD2240;
    *(inited + 32) = 0x6574617453;
    *(inited + 40) = 0xE500000000000000;
    v37 = *(*(v35 + 136) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
    if (v37 <= 1)
    {
      v38 = v5;
      if (*(*(v35 + 136) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state))
      {
        v39 = 0xEB00000000705520;
        v40 = 1918989395;
        goto LABEL_36;
      }

      v39 = 0xEC000000676E697ALL;
      v41 = 0x696C616974696E49;
    }

    else
    {
      v38 = v5;
      if (v37 == 2)
      {
        v39 = 0xE700000000000000;
        v41 = 0x676E696E6E7552;
      }

      else
      {
        if (v37 == 3)
        {
          v39 = 0xED00006E776F4420;
          v40 = 1953851475;
LABEL_36:
          v41 = v40 | 0x676E697400000000;
          goto LABEL_37;
        }

        v39 = 0xE90000000000006ELL;
        v41 = 0x776F442074756853;
      }
    }

LABEL_37:
    MEMORY[0x231907FA0](v41, v39);

    v42 = MEMORY[0x277D837D0];
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    *(inited + 72) = v42;
    *(inited + 80) = 0xD000000000000019;
    *(inited + 88) = 0x800000022FCE3EF0;
    v43 = MEMORY[0x277D83B88];
    *(inited + 96) = *(v38 + 16);
    *(inited + 120) = v43;
    *(inited + 128) = 0x637320736B736154;
    *(inited + 136) = 0xEF64656C75646568;
    *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448);
    *(inited + 144) = v38;
    v44 = sub_22FA4DAB0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8750);
    swift_arrayDestroy();
    v45 = *(v50 + 1);

    return v45(v44);
  }

  v53 = MEMORY[0x277D84F90];

  sub_22FA86EA8(0, v4, 0);
  v6 = v53;
  v7 = v3 + 64;
  result = sub_22FCC9274();
  v9 = result;
  v10 = 0;
  v11 = *(v3 + 36);
  v46 = v3 + 72;
  v47 = v4;
  v48 = v11;
  v49 = v3 + 64;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v3 + 32))
  {
    v13 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_41;
    }

    if (v11 != *(v3 + 36))
    {
      goto LABEL_42;
    }

    v51 = v10;
    v52 = v6;
    v14 = (*(v3 + 48) + 16 * v9);
    v15 = *v14;
    v16 = v14[1];
    v17 = v50;
    sub_22FA2D328(*(v3 + 56) + 40 * v9, (v50 + 13));
    *(v50 + 31) = v15;
    *(v50 + 32) = v16;
    sub_22FA2CF78(v17 + 13, v17 + 264);
    v54 = v15;
    swift_bridgeObjectRetain_n();
    MEMORY[0x231907FA0](8250, 0xE200000000000000);
    v18 = v3;
    v20 = *(v50 + 36);
    v19 = *(v50 + 37);
    __swift_project_boxed_opaque_existential_1(v17 + 33, *(v17 + 36));
    v21 = (*(v19 + 56))(v20, v19);
    v22 = (v21 & 1) == 0;
    if (v21)
    {
      v23 = 0x656C6C65636E6163;
    }

    else
    {
      v23 = 0x636E616320746F6ELL;
    }

    if (v22)
    {
      v24 = 0xED000064656C6C65;
    }

    else
    {
      v24 = 0xE900000000000064;
    }

    MEMORY[0x231907FA0](v23, v24);

    v6 = v52;
    result = sub_22FA2B420(v50 + 248, &qword_27DAD8738);
    v26 = *(v52 + 16);
    v25 = *(v52 + 24);
    if (v26 >= v25 >> 1)
    {
      result = sub_22FA86EA8((v25 > 1), v26 + 1, 1);
      v6 = v52;
    }

    *(v6 + 16) = v26 + 1;
    v27 = v6 + 16 * v26;
    *(v27 + 32) = v54;
    *(v27 + 40) = v16;
    v12 = 1 << *(v18 + 32);
    if (v9 >= v12)
    {
      goto LABEL_43;
    }

    v3 = v18;
    v7 = v49;
    v28 = *(v49 + 8 * v13);
    if ((v28 & (1 << v9)) == 0)
    {
      goto LABEL_44;
    }

    v11 = v48;
    if (v48 != *(v3 + 36))
    {
      goto LABEL_45;
    }

    v29 = v28 & (-2 << (v9 & 0x3F));
    if (v29)
    {
      v12 = __clz(__rbit64(v29)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = v13 << 6;
      v31 = (v46 + 8 * v13);
      v32 = v13 + 1;
      while (v32 < (v12 + 63) >> 6)
      {
        v34 = *v31++;
        v33 = v34;
        v30 += 64;
        ++v32;
        if (v34)
        {
          result = sub_22FAC51D8(v9, v48, 0);
          v12 = __clz(__rbit64(v33)) + v30;
          goto LABEL_4;
        }
      }

      result = sub_22FAC51D8(v9, v48, 0);
    }

LABEL_4:
    v10 = v51 + 1;
    v9 = v12;
    if (v51 + 1 == v47)
    {
      v5 = v6;

      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_22FB2EF10()
{

  v1 = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for TaskScheduler()
{
  result = qword_2814812F8;
  if (!qword_2814812F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FB2F00C()
{
  result = sub_22FCC8684();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22FB2F104()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA4C64C;

  return sub_22FB2E974();
}

uint64_t sub_22FB2F194(uint64_t a1)
{
  result = sub_22FB31378(&qword_27DAD86F8, type metadata accessor for TaskScheduler);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FB2F1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[12] = a2;
  v6[5] = a5;
  v6[6] = a6;
  v6[17] = __swift_allocate_boxed_opaque_existential_1(v6 + 2);
  (*(*(a5 - 8) + 16))();

  return MEMORY[0x2822009F8](sub_22FB2F2D8, a4, 0);
}

uint64_t sub_22FB2F2D8()
{
  v17 = v0;
  v16[1] = *MEMORY[0x277D85DE8];
  if (sub_22FA2F538(v0[15], v0[16]))
  {
    v1 = v0[12];
    v2 = v1[3];
    v3 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v2);
    v4 = (*(v3 + 64))(v2, v3);
    v0[18] = v4;
    if (v4)
    {
      v5 = *(v4 + 112);
      v0[19] = v5;

      return MEMORY[0x2822009F8](sub_22FB2F548, v5, 0);
    }

    sub_22FA2D328((v0 + 2), (v0 + 7));
    v6 = sub_22FCC8664();
    v7 = sub_22FCC8F14();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16[0] = v9;
      *v8 = 136446210;
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v10 = sub_22FCC96C4();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
      v13 = sub_22FA2F600(v10, v12, v16);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_22FA28000, v6, v7, "Failed to retrieve incremental change for task '%{public}s': No changeReader available", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x23190A000](v9, -1, -1);
      MEMORY[0x23190A000](v8, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
    }
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  v14 = v0[1];

  return v14(0, 0);
}

uint64_t sub_22FB2F548()
{
  v1 = v0[14];
  v2 = [*(v0[19] + 112) currentChangeToken];
  type metadata accessor for PhotoKitChangeToken();
  v3 = swift_allocObject();
  v0[20] = v3;
  *(v3 + 16) = v2;

  return MEMORY[0x2822009F8](sub_22FB2F61C, v1, 0);
}

uint64_t sub_22FB2F61C()
{
  v1 = *(v0 + 96);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 56))(v2, v3);
  *(v0 + 168) = v4;

  return MEMORY[0x2822009F8](sub_22FB2F6E4, v4, 0);
}

uint64_t sub_22FB2F6E4()
{
  v1 = v0[14];
  v0[22] = sub_22FC3B044(v0[17], v0[21], v0[15], v0[16]);

  return MEMORY[0x2822009F8](sub_22FB2F798, v1, 0);
}

uint64_t sub_22FB2F798()
{
  v35 = v0;
  v34[1] = *MEMORY[0x277D85DE8];
  v1 = v0[22];
  if (v1)
  {
    v0[23] = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger;
    sub_22FA2D328((v0 + 2), (v0 + 7));

    v2 = sub_22FCC8664();
    v3 = sub_22FCC8F34();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v34[0] = v6;
      *v4 = 136446466;
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v7 = sub_22FCC96C4();
      v9 = v8;
      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
      v10 = sub_22FA2F600(v7, v9, v34);

      *(v4 + 4) = v10;
      *(v4 + 12) = 2114;
      v11 = *(v1 + 16);
      *(v4 + 14) = v11;
      *v5 = v11;
      v12 = v11;
      _os_log_impl(&dword_22FA28000, v2, v3, "Last incremental token for %{public}s: %{public}@", v4, 0x16u);
      sub_22FA2B420(v5, &unk_27DAD7B10);
      MEMORY[0x23190A000](v5, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x23190A000](v6, -1, -1);
      MEMORY[0x23190A000](v4, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
    }

    if (qword_281481CC0 != -1)
    {
      swift_once();
    }

    v21 = qword_281488098;
    if (qword_281481CB8 != -1)
    {
      swift_once();
    }

    v22 = qword_281488090;
    if (qword_281488090 <= 0 && v21 < 1)
    {
      v23 = *(v0[14] + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_changeCache);
      v0[24] = v23;

      return MEMORY[0x2822009F8](sub_22FB2FCB4, v23, 0);
    }

    v24 = *(*(v0[18] + 112) + 112);
    v25 = *(v1 + 16);
    v26 = objc_allocWithZone(MEMORY[0x277D3B9C0]);
    v27 = v24;
    v28 = v25;
    v29 = [v26 initWithPhotoLibrary:v27 updateType:1 changeStreamToken:v28];
    v34[0] = v29;
    if (v21 >= 1)
    {
      sub_22FB28A2C(v27, v34);
    }

    if (v22 >= 1)
    {
      sub_22FB28F20(v27, v34);
    }

    v30 = [v29 hasAnythingToDo];

    if (!v30)
    {

      v29 = 0;
    }

    v31 = v0[22];
  }

  else
  {
    sub_22FA2D328((v0 + 2), (v0 + 7));
    v13 = sub_22FCC8664();
    v14 = sub_22FCC8F34();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34[0] = v16;
      *v15 = 136446210;
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v17 = sub_22FCC96C4();
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
      v20 = sub_22FA2F600(v17, v19, v34);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_22FA28000, v13, v14, "No last incremental token recorded for task: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x23190A000](v16, -1, -1);
      MEMORY[0x23190A000](v15, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
    }

    v29 = 0;
    v31 = v0[20];
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  v32 = v0[1];

  return v32(v31, v29);
}

uint64_t sub_22FB2FCB4()
{
  v1 = *(v0 + 112);
  *(v0 + 200) = sub_22FA37DB0();

  return MEMORY[0x2822009F8](sub_22FB2FD60, v1, 0);
}

uint64_t sub_22FB2FD60()
{
  if (*(v0 + 200))
  {
    v1 = *(v0 + 160);

    v2 = *(v0 + 200);
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
    v3 = *(v0 + 8);

    return v3(v1, v2);
  }

  else
  {
    v5 = *(v0 + 176);
    v6 = *(v0 + 128);
    v7 = *(v0 + 120);
    *(v0 + 208) = CFAbsoluteTimeGetCurrent();
    v8 = *(v5 + 16);
    *(v0 + 216) = v8;
    v9 = *(v6 + 184);
    v10 = v8;
    *(v0 + 264) = v9(v7, v6) & 1;
    *(v0 + 224) = v11;
    *(v0 + 232) = v12;
    *(v0 + 240) = v13;
    v14 = *(v0 + 144);

    return MEMORY[0x2822009F8](sub_22FB2FECC, v14, 0);
  }
}

uint64_t sub_22FB2FECC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 264);
  v3 = *(v0 + 216);
  v4 = sub_22FCC9014();
  v6 = v5;
  v7 = [objc_allocWithZone(MEMORY[0x277CD9928]) init];
  [v7 setToken_];
  if (v2)
  {
    v8 = v1;
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [v7 setMaximumChangeThreshold_];
  sub_22FCC8FF4();
  v9 = *(*(v0 + 144) + 120);
  *(v0 + 56) = 0;
  v10 = [v9 fetchPersistentChangesWithRequest:v7 error:v0 + 56];
  v11 = *(v0 + 56);
  if (v10)
  {
    v12 = v10;
    v13 = v11;
    sub_22FCC9004();
    *(v0 + 248) = sub_22FA38ABC(v12, *(v0 + 216), 1, v6, *(v0 + 264), *(v0 + 224), *(v0 + 232), *(v0 + 240));
    v16 = *(v0 + 216);
    v17 = *(v0 + 112);

    v18 = sub_22FB300E4;
  }

  else
  {
    v14 = v11;
    v15 = sub_22FCC6514();

    swift_willThrow();
    *(v0 + 256) = v15;
    v17 = *(v0 + 112);

    v18 = sub_22FB30394;
  }

  return MEMORY[0x2822009F8](v18, v17, 0);
}

uint64_t sub_22FB300E4()
{
  Current = CFAbsoluteTimeGetCurrent();
  sub_22FA4FD84();
  sub_22FA4FD84();
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = Current - *(v0 + 208);
    v5 = swift_slowAlloc();
    *v5 = 68157952;
    *(v5 + 4) = 3;
    *(v5 + 8) = 2048;
    *(v5 + 10) = v4;
    _os_log_impl(&dword_22FA28000, v2, v3, "Retrieve incremental change in %.*f seconds.", v5, 0x12u);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  v6 = *(v0 + 192);

  return MEMORY[0x2822009F8](sub_22FB30230, v6, 0);
}

uint64_t sub_22FB30230()
{
  v1 = *(v0 + 112);
  sub_22FA38284(*(v0 + 248));

  return MEMORY[0x2822009F8](sub_22FB302DC, v1, 0);
}

uint64_t sub_22FB302DC()
{
  v1 = v0[31];
  v2 = v0[20];

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_22FB30394()
{
  v1 = v0[32];
  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F14();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[32];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22FA28000, v3, v4, "Failed to read incremental change: %{public}@", v7, 0xCu);
    sub_22FA2B420(v8, &unk_27DAD7B10);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[20];
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  v12 = v0[1];

  return v12(v11, 0);
}

uint64_t sub_22FB3056C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v5[16] = swift_task_alloc();
  v5[5] = a4;
  v5[6] = a5;
  v5[17] = __swift_allocate_boxed_opaque_existential_1(v5 + 2);
  (*(*(a4 - 8) + 16))();

  return MEMORY[0x2822009F8](sub_22FB30664, a3, 0);
}

uint64_t sub_22FB30664()
{
  v22 = v0;
  v1 = v0[16];
  (*(v0[15] + 88))(v0[14]);
  v2 = sub_22FCC6794();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_22FA2B420(v1, &qword_27DAD8730);
  if (v3 == 1)
  {
    v20 = (*(v0[15] + 112) + **(v0[15] + 112));
    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_22FB30988;
    v5 = v0[14];
    v6 = v0[15];
    v7 = v0[12];

    return v20(v7, v5, v6);
  }

  else
  {
    sub_22FA2D328((v0 + 2), (v0 + 7));
    v9 = sub_22FCC8664();
    v10 = sub_22FCC8F34();
    if (os_log_type_enabled(v9, v10))
    {
      v12 = v0[14];
      v11 = v0[15];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v15 = (*(v11 + 48))(v12, v11);
      v17 = v16;
      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
      v18 = sub_22FA2F600(v15, v17, &v21);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_22FA28000, v9, v10, "Task %s already completed, bailing", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x23190A000](v14, -1, -1);
      MEMORY[0x23190A000](v13, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 2));

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_22FB30988()
{
  v1 = *v0;
  v2 = *v0;

  __swift_destroy_boxed_opaque_existential_0(v1 + 16);

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_22FB30AA8(uint64_t a1, double a2)
{
  v55 = a1;
  v56 = sub_22FCC88D4();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_22FCC88B4();
  v67 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v5 = (&v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_22FCC8944();
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v63 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v49 - v9;
  v10 = sub_22FCC9044();
  v11 = *(v10 - 8);
  v61 = v10;
  v62 = v11;
  MEMORY[0x28223BE20](v10);
  v60 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22FCC8F84();
  MEMORY[0x28223BE20](v13);
  v14 = sub_22FCC8F94();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_22FCC8914();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_22FA3A77C(0, &qword_28147AE98);
  sub_22FCC8904();
  (*(v15 + 104))(v17, *MEMORY[0x277D85268], v14);
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22FB31378(&qword_28147AEA0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7360);
  v20 = v66;
  sub_22FAEF71C(&qword_28147AF20, &qword_27DAD7360);
  sub_22FCC9264();
  v50 = v19;
  v21 = sub_22FCC8FC4();
  *(v20 + 24) = v21;
  sub_22FA3A77C(0, &unk_28147AE70);
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22FB31378(&qword_28147AE80, MEMORY[0x277D85278]);
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8CB0);
  sub_22FAEF71C(&qword_28147AF10, &unk_27DAD8CB0);
  v24 = v60;
  v23 = v61;
  sub_22FCC9264();
  v25 = sub_22FCC9054();

  (*(v62 + 8))(v24, v23);
  *(v20 + 16) = v25;
  ObjectType = swift_getObjectType();
  v27 = v63;
  result = sub_22FCC8924();
  v29 = a2 * 1000.0;
  if (COERCE__INT64(fabs(a2 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v62 = ObjectType;
  *v5 = v29;
  v30 = *MEMORY[0x277D85178];
  v31 = v67;
  v32 = *(v67 + 104);
  v33 = v65;
  v32(v5, v30, v65);
  sub_22FCC8934();
  v34 = *(v31 + 8);
  v67 = v31 + 8;
  v34(v5, v33);
  v35 = v58;
  v36 = *(v57 + 8);
  result = v36(v27, v58);
  v37 = a2 * 200.0;
  if (COERCE__INT64(fabs(a2 * 200.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v37 < 9.22337204e18)
  {
    *v5 = v37;
    v38 = v30;
    v39 = v65;
    v32(v5, v38, v65);
    v40 = v64;
    MEMORY[0x231908590](v64, v5, v62, a2);
    v34(v5, v39);
    v36(v40, v35);
    v41 = dispatch_group_create();
    v42 = v66;
    swift_getObjectType();
    v43 = v55;
    swift_unownedRetainStrong();
    swift_unownedRetain();
    v44 = v41;
    swift_unownedRetain();

    v45 = swift_allocObject();
    *(v45 + 16) = v44;
    *(v45 + 24) = v43;
    aBlock[4] = sub_22FA2B418;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22FA2B268;
    aBlock[3] = &block_descriptor_21;
    v46 = _Block_copy(aBlock);
    v47 = v50;
    sub_22FCC88F4();
    v48 = v53;
    sub_22FB2C678();
    sub_22FCC9064();
    _Block_release(v46);
    swift_unownedRelease();

    (*(v54 + 8))(v48, v56);
    (*(v51 + 8))(v47, v52);

    return v42;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_22FB31378(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FB313C0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22FA2C21C;

  return sub_22FB2D74C(a1, a2, v7, v6);
}

uint64_t sub_22FB31474(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22FCC8684() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_22FA2C21C;

  return sub_22FB2DD84(a1, v9, v10, v1 + v6, v12, v13, v14);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22FB315E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 49))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 48);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FB3161C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_22FB3166C(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_22FB316DC()
{
  v1[2] = v0;
  v2 = sub_22FCC80B4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB317A8, 0, 0);
}

uint64_t sub_22FB317A8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD9950]) initWithPhotoLibrary_];
  v0[7] = v1;
  sub_22FCC8204();
  v2 = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_22FB31890;
  v4 = v0[6];

  return MEMORY[0x28219C948](v4, v1);
}

uint64_t sub_22FB31890(void *a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_22FB31AAC;
  }

  else
  {

    v5 = sub_22FB319BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FB319BC()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  (*(v4 + 104))(v3, *MEMORY[0x277D3C640], v5);
  v6 = sub_22FCC80A4();

  v7 = *(v4 + 8);
  v7(v3, v5);
  v7(v1, v5);

  v8 = v0[1];

  return v8(v6 & 1);
}

uint64_t sub_22FB31AAC()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_22FB31B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22FB31B50, 0, 0);
}

uint64_t sub_22FB31B50()
{
  v1 = *(v0 + 16);
  sub_22FCC8204();
  v2 = *(v1 + 136);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_22FB31BF8;

  return MEMORY[0x28219C950](v2);
}

uint64_t sub_22FB31BF8(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_22FB31CF8, 0, 0);
}

uint64_t sub_22FB31CF8()
{
  v19 = v0;
  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_22FB31F84();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18[0] = v1;
  sub_22FB34064(v3, sub_22FB33A98, 0, isUniquelyReferenced_nonNull_native, v18);

  v5 = *(v2 + 144);
  v6 = sub_22FCC8A54();
  sub_22FA3A77C(0, &qword_28147ADD0);

  v7 = sub_22FCC89C4();

  [v5 sendEvent:v6 withPayload:v7];

  v8 = sub_22FCC8664();
  v9 = sub_22FCC8EF4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_22FA2F600(0xD000000000000035, 0x800000022FCE4080, v18);
    *(v10 + 12) = 2080;

    v12 = sub_22FCC89E4();
    v14 = v13;

    v15 = sub_22FA2F600(v12, v14, v18);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_22FA28000, v8, v9, "Sent %s event: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v11, -1, -1);
    MEMORY[0x23190A000](v10, -1, -1);
  }

  sub_22FCC76B4();

  v16 = v0[1];

  return v16();
}

id sub_22FB31F84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  MEMORY[0x28223BE20](v1 - 8);
  v94 = v90 - v2;
  v125 = sub_22FCC7BE4();
  v3 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v5 = v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_22FCC6794();
  v126 = *(v117 - 8);
  v6 = MEMORY[0x28223BE20](v117);
  v93 = v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v120 = v90 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v119 = v90 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v90 - v13;
  v102 = v15;
  MEMORY[0x28223BE20](v12);
  v17 = v90 - v16;
  sub_22FCC8E24();
  sub_22FCC6724();
  v18 = *(v0 + 136);
  v19 = [v18 librarySpecificFetchOptions];
  sub_22FA3A77C(0, &qword_28147AEF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7278);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22FCD17F0;
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_22FA4EF4C();
  strcpy((v20 + 32), "creationDate");
  *(v20 + 45) = 0;
  *(v20 + 46) = -5120;
  v21 = sub_22FCC66F4();
  *(v20 + 96) = sub_22FA3A77C(0, &qword_28147AE00);
  *(v20 + 104) = sub_22FA4EFA0();
  *(v20 + 72) = v21;
  v22 = sub_22FCC8EE4();
  [v19 setPredicate_];

  (*(v3 + 104))(v5, *MEMORY[0x277D3C570], v125);
  sub_22FCC7BF4();
  swift_allocObject();
  v23 = v18;
  v96 = v19;
  v24 = sub_22FCC7BD4();
  sub_22FCC76A4();
  v95 = v24;
  v25 = sub_22FCC7694();
  v26 = OBJC_IVAR____TtC13PhotoAnalysis37MemoryCreationFeatureAvailabilityTask_logger;
  v27 = *(v126 + 16);
  v97 = v17;
  v28 = v17;
  v29 = v117;
  v27(v14, v28, v117);
  v90[1] = v26;
  v30 = sub_22FCC8664();
  v31 = sub_22FCC8EF4();
  v32 = os_log_type_enabled(v30, v31);
  v112 = v25;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v125 = v27;
    v34 = v33;
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v34 = 134218242;
    *(v34 + 4) = [v25 count];
    *(v34 + 12) = 2080;
    sub_22FB33A50(&qword_281482528, MEMORY[0x277CC9578]);
    v36 = sub_22FCC96C4();
    v38 = v37;
    (*(v126 + 8))(v14, v29);
    v39 = sub_22FA2F600(v36, v38, aBlock);

    *(v34 + 14) = v39;
    _os_log_impl(&dword_22FA28000, v30, v31, "Found %ld overnight/generative memories since %s", v34, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x23190A000](v35, -1, -1);
    v40 = v34;
    v27 = v125;
    MEMORY[0x23190A000](v40, -1, -1);
  }

  else
  {

    (*(v126 + 8))(v14, v29);
  }

  v41 = v29;
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  v100 = v42;
  v101 = v42 + 16;
  v43 = swift_allocObject();
  v116 = v43;
  *(v43 + 16) = 0;
  v103 = v43 + 16;
  v44 = swift_allocObject();
  v125 = v44;
  *(v44 + 16) = 0;
  v104 = v44 + 16;
  v45 = swift_allocObject();
  v115 = v45;
  *(v45 + 16) = 0;
  v105 = v45 + 16;
  v46 = swift_allocObject();
  v124 = v46;
  *(v46 + 16) = 0;
  v106 = v46 + 16;
  v47 = swift_allocObject();
  v123 = v47;
  *(v47 + 16) = 0;
  v107 = v47 + 16;
  v48 = swift_allocObject();
  v122 = v48;
  *(v48 + 16) = 0;
  v108 = v48 + 16;
  v49 = swift_allocObject();
  v121 = v49;
  *(v49 + 16) = 0;
  v109 = v49 + 16;
  v50 = swift_allocObject();
  v114 = v50;
  *(v50 + 16) = 0;
  v110 = v50 + 16;
  v51 = swift_allocObject();
  v113 = v51;
  *(v51 + 16) = 0;
  v111 = v51 + 16;
  sub_22FCC8DE4();
  v52 = v119;
  sub_22FCC6724();
  v27(v120, v52, v41);
  v53 = v126;
  v54 = (*(v126 + 80) + 40) & ~*(v126 + 80);
  v102 = (v102 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v99 = (v102 + 15) & 0xFFFFFFFFFFFFFFF8;
  v98 = (v99 + 15) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v98 + 15) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v60 = v124;
  *(v59 + 2) = v123;
  *(v59 + 3) = v60;
  *(v59 + 4) = v122;
  v91 = *(v53 + 32);
  v92 = v53 + 32;
  v91(&v59[v54], v120, v41);
  *&v59[v102] = v113;
  v61 = v98;
  *&v59[v99] = v118;
  *&v59[v61] = v125;
  *&v59[v55] = v100;
  *&v59[v56] = v121;
  v62 = v116;
  *&v59[v57] = v115;
  *&v59[v58] = v62;
  *&v59[(v58 + 15) & 0xFFFFFFFFFFFFFFF8] = v114;
  aBlock[4] = sub_22FB342EC;
  aBlock[5] = v59;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22FA862D0;
  aBlock[3] = &block_descriptor_22;
  v63 = _Block_copy(aBlock);

  v64 = v112;
  [v112 enumerateObjectsUsingBlock_];
  _Block_release(v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8760);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD7950;
  *(inited + 32) = 0xD00000000000002CLL;
  *(inited + 40) = 0x800000022FCE40C0;
  swift_beginAccess();
  *(inited + 48) = sub_22FCC8ED4();
  *(inited + 56) = 0xD000000000000027;
  *(inited + 64) = 0x800000022FCE40F0;
  swift_beginAccess();
  *(inited + 72) = sub_22FCC8ED4();
  *(inited + 80) = 0xD00000000000002CLL;
  *(inited + 88) = 0x800000022FCE4120;
  swift_beginAccess();
  *(inited + 96) = sub_22FCC8ED4();
  *(inited + 104) = 0xD000000000000027;
  *(inited + 112) = 0x800000022FCE4150;
  swift_beginAccess();
  *(inited + 120) = sub_22FCC8ED4();
  *(inited + 128) = 0xD000000000000022;
  *(inited + 136) = 0x800000022FCE4180;
  swift_beginAccess();
  *(inited + 144) = sub_22FCC8ED4();
  *(inited + 152) = 0xD000000000000022;
  *(inited + 160) = 0x800000022FCE41B0;
  swift_beginAccess();
  *(inited + 168) = sub_22FCC8ED4();
  *(inited + 176) = 0xD000000000000028;
  *(inited + 184) = 0x800000022FCE41E0;
  swift_beginAccess();
  *(inited + 192) = sub_22FCC8ED4();
  *(inited + 200) = 0xD00000000000002ALL;
  *(inited + 208) = 0x800000022FCE4210;
  swift_beginAccess();
  *(inited + 216) = sub_22FCC8ED4();
  *(inited + 224) = 0xD000000000000025;
  *(inited + 232) = 0x800000022FCE4240;
  swift_beginAccess();
  *(inited + 240) = sub_22FCC8ED4();
  *(inited + 248) = 0xD000000000000020;
  *(inited + 256) = 0x800000022FCE4270;
  swift_beginAccess();
  *(inited + 264) = sub_22FCC8ED4();
  v66 = sub_22FA4DF28(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8768);
  swift_arrayDestroy();
  v67 = [objc_opt_self() standardUserDefaults];
  result = PLPhotosApplicationSettingsDomain();
  if (result)
  {
    v69 = result;
    v70 = [v67 persistentDomainForName_];

    if (!v70)
    {
      v79 = v117;
      v74 = v126;
      goto LABEL_15;
    }

    v71 = sub_22FCC89D4();

    v72 = sub_22FCC8A84();
    v74 = v126;
    if (*(v71 + 16))
    {
      v75 = sub_22FA2DB54(v72, v73);
      v77 = v76;

      if (v77)
      {
        sub_22FA2F7D8(*(v71 + 56) + 32 * v75, aBlock);

        v78 = v94;
        v79 = v117;
        v80 = swift_dynamicCast();
        (*(v74 + 56))(v78, v80 ^ 1u, 1, v79);
        if ((*(v74 + 48))(v78, 1, v79) != 1)
        {
          v81 = v93;
          v91(v93, v78, v79);
          sub_22FCC6704();
          v82 = sub_22FCC8CB4();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v66;
          sub_22FB2667C(v82, 0xD000000000000019, 0x800000022FCE42A0, isUniquelyReferenced_nonNull_native);
          v84 = aBlock[0];
          v85 = v120;
          sub_22FCC6764();
          sub_22FCC66D4();
          v120 = *(v74 + 8);
          (v120)(v85, v79);
          sub_22FCC8DD4();
          v88 = sub_22FCC8ED4();
          v89 = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v84;
          sub_22FB2667C(v88, 0xD000000000000025, 0x800000022FCE42C0, v89);
          v66 = aBlock[0];
          (v120)(v81, v79);
          v64 = v112;
LABEL_15:
          v86 = sub_22FAC7E3C(v66);

          v87 = *(v74 + 8);
          v87(v119, v79);
          v87(v97, v79);

          return v86;
        }

LABEL_14:
        sub_22FA2B420(v78, &qword_27DAD8730);
        goto LABEL_15;
      }
    }

    else
    {
    }

    v78 = v94;
    v79 = v117;
    (*(v74 + 56))(v94, 1, 1, v117);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_22FB32FA8(_BOOL8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v74 = a7;
  v75 = a6;
  v70 = a12;
  v71 = a15;
  v72 = a11;
  v73 = a14;
  v19 = sub_22FCC6794();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [a1 creationType];
  if (v23 == 1)
  {
    v24 = [objc_opt_self() isPromptSuggestedForGenerativeMemory_];
    if (!v24)
    {
      goto LABEL_18;
    }

    v25 = v24;
    if (![v24 BOOLValue])
    {
      swift_beginAccess();
      v58 = *(a13 + 16);
      v27 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (!v27)
      {
        *(a13 + 16) = v59;
        v60 = [a1 isFavorite];
        v61 = v73;
        swift_beginAccess();
        v62 = *(v61 + 16);
        v27 = __OFADD__(v62, v60);
        v63 = v62 + v60;
        if (!v27)
        {
          *(v61 + 16) = v63;
          v64 = [a1 playCount];

          v65 = v64 > 0;
          a8 = v71;
          swift_beginAccess();
          v66 = *(a8 + 16);
          v27 = __OFADD__(v66, v65);
          v35 = v66 + v65;
          if (!v27)
          {
LABEL_24:
            *(a8 + 16) = v35;
            return;
          }

          goto LABEL_38;
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      goto LABEL_35;
    }

    swift_beginAccess();
    v26 = *(a10 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    *(a10 + 16) = v28;
    v29 = [a1 isFavorite];
    v30 = v72;
    swift_beginAccess();
    v31 = *(v30 + 16);
    v27 = __OFADD__(v31, v29);
    v32 = v31 + v29;
    if (v27)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    *(v30 + 16) = v32;
    v33 = [a1 playCount];

    a1 = v33 > 0;
    a8 = v70;
    v23 = swift_beginAccess();
    v34 = *(a8 + 16);
    v27 = __OFADD__(v34, a1);
    v35 = v34 + a1;
    if (!v27)
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  if (v23)
  {
LABEL_39:
    sub_22FCC94D4();
    __break(1u);
    return;
  }

  swift_beginAccess();
  v36 = *(a4 + 16);
  v27 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (v27)
  {
    __break(1u);
    goto LABEL_32;
  }

  *(a4 + 16) = v37;
  v38 = [a1 isFavorite];
  swift_beginAccess();
  v39 = *(a5 + 16);
  v27 = __OFADD__(v39, v38);
  v40 = v39 + v38;
  if (v27)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  *(a5 + 16) = v40;
  v41 = [a1 creationDate];
  if (v41)
  {
    v42 = v41;
    sub_22FCC6754();

    v43 = sub_22FCC6704();
    (*(v20 + 8))(v22, v19);
    v44 = v43 & 1;
    v45 = v75;
    swift_beginAccess();
    isa = v45[2].isa;
    v27 = __OFADD__(isa, v44);
    v47 = (isa + v44);
    if (!v27)
    {
      v45[2].isa = v47;
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_15:
  a1 = [a1 playCount] > 0;
  swift_beginAccess();
  v48 = *(a8 + 16);
  v27 = __OFADD__(v48, a1);
  v35 = v48 + a1;
  if (!v27)
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_18:
  v49 = a1;
  v75 = sub_22FCC8664();
  v50 = sub_22FCC8F14();

  if (os_log_type_enabled(v75, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v76[0] = v52;
    *v51 = 136315138;
    v53 = [v49 uuid];
    if (v53)
    {
      v54 = v53;
      v55 = sub_22FCC8A84();
      v57 = v56;
    }

    else
    {
      v57 = 0xE700000000000000;
      v55 = 0x44495555206F4ELL;
    }

    v68 = sub_22FA2F600(v55, v57, v76);

    *(v51 + 4) = v68;
    _os_log_impl(&dword_22FA28000, v75, v50, "No isPromptSuggested info for memoryUUID: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x23190A000](v52, -1, -1);
    MEMORY[0x23190A000](v51, -1, -1);
  }

  else
  {
    v67 = v75;
  }
}

id *sub_22FB33520()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  v1 = OBJC_IVAR____TtC13PhotoAnalysis37MemoryCreationFeatureAvailabilityTask_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_22FB335B8()
{
  sub_22FB33520();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MemoryCreationFeatureAvailabilityTask()
{
  result = qword_28147C3E0;
  if (!qword_28147C3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FB33664()
{
  result = sub_22FCC8684();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22FB33744()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA2C030;

  return sub_22FB33D74();
}

uint64_t sub_22FB337E8()
{
  v0 = sub_22FCC77B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3C248], v0);
  v4 = sub_22FCC7794();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_22FB338D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA4C64C;

  return sub_22FB316DC();
}

uint64_t sub_22FB33968(uint64_t result)
{
  if (result)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  return result;
}

uint64_t sub_22FB339CC(uint64_t a1)
{
  *(a1 + 8) = sub_22FB33A50(&qword_28147C3F8, type metadata accessor for MemoryCreationFeatureAvailabilityTask);
  result = sub_22FB33A50(&qword_28147C400, type metadata accessor for MemoryCreationFeatureAvailabilityTask);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FB33A50(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_22FB33A98@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_22FB33AE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a1;
  v24 = a2;
  v25 = sub_22FCC8684();
  v4 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22FCC67F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 56) = 0xD000000000000025;
  *(v3 + 64) = 0x800000022FCD79A0;
  sub_22FCC67E4();
  v11 = sub_22FCC67B4();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  *(v3 + 72) = v11;
  *(v3 + 80) = v13;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0x40F5180000000000;
  *(v3 + 104) = 2;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 1;
  sub_22FA3A77C(0, &qword_28147ADA0);
  v14 = sub_22FCC91C4();
  *(v3 + 152) = v14;
  *(v3 + 40) = type metadata accessor for PhotoLibraryWorker();
  *(v3 + 48) = sub_22FB33A50(&qword_281482350, type metadata accessor for PhotoLibraryWorker);
  v15 = v24;
  *(v3 + 16) = v23;
  v16 = *(v15 + 112);
  *(v3 + 136) = v16;
  v17 = *(v15 + 120);
  *(v3 + 144) = v17;
  v18 = v14;
  v19 = v16;
  v20 = v17;
  sub_22FCC8694();
  (*(v4 + 32))(v3 + OBJC_IVAR____TtC13PhotoAnalysis37MemoryCreationFeatureAvailabilityTask_logger, v6, v25);
  return v3;
}

uint64_t sub_22FB33D74()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB33E10, 0, 0);
}

uint64_t sub_22FB33E10()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v2 + 152);
  sub_22FCC76D4();
  swift_allocObject();
  v4 = v3;
  sub_22FCC76C4();
  swift_allocObject();
  v5 = sub_22FCC76C4();
  v6 = sub_22FCC8D14();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  v7[5] = v5;

  sub_22FC3EE08(0, 0, v1, &unk_22FCD7AE8, v7);

  sub_22FCC76B4();

  v8 = v0[1];

  return v8();
}

uint64_t sub_22FB33FA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22FA2C030;

  return sub_22FB31B30(a1, v4, v5, v7, v6);
}

uint64_t sub_22FB34064(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v39 = v6;
  while (v9)
  {
    v42 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v46[0] = *v17;
    v46[1] = v18;
    v46[2] = v19;

    v20 = v19;
    a2(&v43, v46);

    v21 = v43;
    v22 = v44;
    v23 = v45;
    v24 = *v47;
    v26 = sub_22FA2DB54(v43, v44);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v42 & 1) == 0)
      {
        sub_22FA7018C();
      }
    }

    else
    {
      sub_22FA6BB70(v29, v42 & 1);
      v31 = sub_22FA2DB54(v21, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v47;
    if (v30)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v33[6] + 16 * v26);
      *v34 = v21;
      v34[1] = v22;
      *(v33[7] + 8 * v26) = v23;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_26;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v14;
    v6 = v39;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_22FA37D64();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22FCC9774();
  __break(1u);
  return result;
}

void sub_22FB342EC(_BOOL8 a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_22FCC6794() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_22FB32FA8(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32), v3 + v8, *(v3 + v9), *(v3 + v10), *(v3 + v11), *(v3 + v12), *(v3 + v13), *(v3 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_22FB34410(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_22FB344BC()
{
  sub_22FA3A77C(0, &qword_28147ADA0);
  result = sub_22FCC91C4();
  qword_27DAD8770 = result;
  return result;
}

uint64_t sub_22FB34534()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_27DAD8778);
  __swift_project_value_buffer(v0, qword_27DAD8778);
  if (qword_27DAD6EC8 != -1)
  {
    swift_once();
  }

  v1 = qword_27DAD8770;
  return sub_22FCC8694();
}

uint64_t sub_22FB345C0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22FCC9704() & 1;
  }
}

uint64_t sub_22FB34618(char *a1, NSObject *a2, char *a3)
{
  v118[2] = *MEMORY[0x277D85DE8];
  v7 = sub_22FCC65F4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v100 - v12;
  sub_22FCC8464();
  v14 = v3;
  if (v3)
  {
    v15 = sub_22FCC8494();
    (*(*(v15 - 8) + 8))(a3, v15);
    return v112;
  }

  v115 = a3;
  v113 = v11;
  if (qword_27DAD6EC8 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v16 = qword_27DAD8770;
    sub_22FCC76D4();
    swift_allocObject();
    v17 = v16;
    v18 = sub_22FCC76C4();
    v19 = [a2 count];
    if (v19 < 0)
    {
      __break(1u);
LABEL_58:
      swift_once();
      goto LABEL_13;
    }

    v20 = v19;
    v117 = a1;
    v109 = v13;
    v101 = v8;
    v102 = v18;
    v107 = v7;
    a1 = v115;
    v11 = v113;
    if (v19)
    {
      v111 = v14;
      v118[0] = MEMORY[0x277D84F90];
      sub_22FA86EA8(0, v19, 0);
      v21 = 0;
      v22 = v118[0];
      do
      {
        v23 = v22;
        v24 = [a2 objectAtIndexedSubscript:v21, v100, *(&v100 + 1)];
        v25 = sub_22FCC72F4();
        v27 = v26;

        v22 = v23;
        v118[0] = v23;
        v29 = v23[2];
        v28 = v23[3];
        if (v29 >= v28 >> 1)
        {
          sub_22FA86EA8((v28 > 1), v29 + 1, 1);
          v22 = v118[0];
        }

        ++v21;
        v22[2] = v29 + 1;
        v30 = &v22[2 * v29];
        *(v30 + 4) = v25;
        *(v30 + 5) = v27;
      }

      while (v20 != v21);
      v114 = v22;
      a1 = v115;
      v14 = v111;
      v11 = v113;
    }

    else
    {
      v114 = MEMORY[0x277D84F90];
    }

    if (qword_27DAD6ED0 != -1)
    {
      goto LABEL_58;
    }

LABEL_13:
    v31 = sub_22FCC8684();
    v32 = __swift_project_value_buffer(v31, qword_27DAD8778);
    v33 = a2;
    v116 = v32;
    v34 = sub_22FCC8664();
    v35 = sub_22FCC8EF4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      *(v36 + 4) = [v33 count];

      _os_log_impl(&dword_22FA28000, v34, v35, "Found %ld valid suggestions.", v36, 0xCu);
      MEMORY[0x23190A000](v36, -1, -1);
    }

    else
    {

      v34 = v33;
    }

    v118[0] = 0;
    v37 = [v117 urlForApplicationDataFolderIdentifier:16 error:v118];
    v38 = v118[0];
    if (!v37)
    {
      v51 = v118[0];

      sub_22FCC6514();

      swift_willThrow();
LABEL_52:
      sub_22FCC76B4();

      v98 = sub_22FCC8494();
      (*(*(v98 - 8) + 8))(a1, v98);
      return v112;
    }

    v39 = v109;
    v40 = v37;
    sub_22FCC65A4();
    v41 = v38;

    v13 = [objc_opt_self() defaultManager];
    sub_22FCC65C4();
    v42 = sub_22FCC8A54();

    v118[0] = 0;
    v43 = [v13 contentsOfDirectoryAtPath:v42 error:v118];

    v44 = v118[0];
    if (!v43)
    {
      v52 = v118[0];

      sub_22FCC6514();

      swift_willThrow();
      (v101[1])(v39, v107);
      goto LABEL_52;
    }

    v105 = v13;
    v7 = sub_22FCC8C44();
    v45 = v44;

    v46 = sub_22FCC8664();
    v47 = sub_22FCC8EF4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134217984;
      *(v48 + 4) = *(v7 + 16);

      _os_log_impl(&dword_22FA28000, v46, v47, "Found %ld cached poster descriptors.", v48, 0xCu);
      MEMORY[0x23190A000](v48, -1, -1);
    }

    else
    {
    }

    v110 = *(v7 + 16);
    if (!v110)
    {
      break;
    }

    v112 = 0;
    v103 = 0;
    v53 = 0;
    v104 = (v101 + 1);
    v8 = (v7 + 40);
    *&v50 = 136315138;
    v106 = v50;
    *&v50 = 136315394;
    v100 = v50;
    v108 = v7;
    while (v53 < *(v7 + 16))
    {
      v55 = *(v8 - 1);
      v54 = *v8;
      v117 = v53;
      v118[0] = v55;
      v118[1] = v54;
      MEMORY[0x28223BE20](v49);
      *(&v100 - 2) = v118;

      v56 = v14;
      v57 = sub_22FB34410(sub_22FB36D9C, (&v100 - 2), v114);

      v58 = sub_22FCC8664();
      if (v57)
      {
        v13 = sub_22FCC8F04();

        if (os_log_type_enabled(v58, v13))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v118[0] = v60;
          *v59 = v106;
          v61 = sub_22FA2F600(v55, v54, v118);

          *(v59 + 4) = v61;
          _os_log_impl(&dword_22FA28000, v58, v13, "Found a valid cached descriptor for %s", v59, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v60);
          v62 = v60;
          v11 = v113;
          MEMORY[0x23190A000](v62, -1, -1);
          v63 = v59;
          v14 = v56;
          v7 = v108;
          MEMORY[0x23190A000](v63, -1, -1);
        }

        else
        {
        }

        a1 = v115;
      }

      else
      {
        v64 = sub_22FCC8EF4();

        v65 = os_log_type_enabled(v58, v64);
        v111 = v14;
        if (v65)
        {
          v14 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v118[0] = v66;
          *v14 = v106;
          *(v14 + 4) = sub_22FA2F600(v55, v54, v118);
          _os_log_impl(&dword_22FA28000, v58, v64, "Found an invalid poster descriptor: %s. Attempting to remove now.", v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v66);
          v67 = v66;
          v11 = v113;
          MEMORY[0x23190A000](v67, -1, -1);
          MEMORY[0x23190A000](v14, -1, -1);
        }

        sub_22FCC6574();

        a1 = sub_22FCC65C4();
        v69 = v68;
        v70 = sub_22FCC8A54();
        v118[0] = 0;
        v13 = [v105 removeItemAtPath:v70 error:v118];

        if (v13)
        {
          v7 = v103 + 1;
          if (__OFADD__(v103, 1))
          {
            goto LABEL_55;
          }

          v71 = v118[0];

          v72 = sub_22FCC8664();
          v13 = sub_22FCC8EF4();

          if (os_log_type_enabled(v72, v13))
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v118[0] = v74;
            *v73 = v106;
            v75 = sub_22FA2F600(a1, v69, v118);

            *(v73 + 4) = v75;
            _os_log_impl(&dword_22FA28000, v72, v13, "Directory removed successfully at %s", v73, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v74);
            v76 = v74;
            v11 = v113;
            MEMORY[0x23190A000](v76, -1, -1);
            MEMORY[0x23190A000](v73, -1, -1);
          }

          else
          {
          }

          v88 = v7;
          v103 = v7;
          v14 = v111;
          a1 = v115;
        }

        else
        {
          v77 = v118[0];
          v78 = sub_22FCC6514();

          swift_willThrow();
          v14 = 0;

          v79 = v78;
          a2 = sub_22FCC8664();
          v13 = sub_22FCC8F14();

          if (os_log_type_enabled(a2, v13))
          {
            v80 = swift_slowAlloc();
            v111 = 0;
            v81 = v80;
            v82 = swift_slowAlloc();
            v83 = swift_slowAlloc();
            v118[0] = v83;
            *v81 = v100;
            v84 = sub_22FA2F600(a1, v69, v118);

            *(v81 + 4) = v84;
            *(v81 + 12) = 2112;
            v85 = v78;
            v86 = _swift_stdlib_bridgeErrorToNSError();
            *(v81 + 14) = v86;
            *v82 = v86;
            _os_log_impl(&dword_22FA28000, a2, v13, "Error removing directory at %s: %@. Skip", v81, 0x16u);
            sub_22FA3A56C(v82);
            MEMORY[0x23190A000](v82, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v83);
            MEMORY[0x23190A000](v83, -1, -1);
            v87 = v81;
            v14 = v111;
            MEMORY[0x23190A000](v87, -1, -1);
          }

          else
          {
          }

          a1 = v115;
          v88 = v112;
          v11 = v113;
        }

        v7 = v108;
        v112 = v88;
        sub_22FCC8474();
        if (v14)
        {

          v96 = *v104;
          v97 = v107;
          (*v104)(v11, v107);
          v96(v109, v97);
          goto LABEL_52;
        }

        v49 = (*v104)(v11, v107);
      }

      v53 = v117 + 1;
      v8 += 2;
      if (v110 == v117 + 1)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
  }

  v112 = 0;
LABEL_47:

  v89 = sub_22FCC8664();
  v90 = sub_22FCC8EF4();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 134218240;
    *(v91 + 4) = v112;
    *(v91 + 12) = 2048;
    v92 = *(v7 + 16);

    *(v91 + 14) = v92;

    _os_log_impl(&dword_22FA28000, v89, v90, "Removed %ld/%ld invalid poster descriptors.", v91, 0x16u);
    MEMORY[0x23190A000](v91, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v93 = v107;
  v94 = v101;
  v95 = v109;
  sub_22FCC8484();
  (v94[1])(v95, v93);

  sub_22FCC76B4();

  return v112;
}

uint64_t sub_22FB35398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = sub_22FCC65F4();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB354D0, 0, 0);
}

uint64_t sub_22FB354D0()
{
  v198 = v0;
  v1 = v0;
  v197[1] = *MEMORY[0x277D85DE8];
  sub_22FCC8464();
  if (qword_27DAD6EC8 != -1)
  {
    goto LABEL_86;
  }

  while (1)
  {
    v2 = v1[8];
    v3 = qword_27DAD8770;
    sub_22FCC76D4();
    swift_allocObject();
    v4 = v3;
    sub_22FCC76C4();
    v5 = [v2 photoLibrary];
    v6 = [v5 librarySpecificFetchOptions];

    [v6 setIncludeGuestAssets_];
    v7 = [objc_opt_self() fetchKeyAssetBySuggestionUUIDForSuggestions:v2 options:v6];
    if (!v7)
    {
      v152 = v1[10];
      sub_22FB36CF0();
      swift_allocError();
      *v153 = 0;
      swift_willThrow();

      sub_22FCC76B4();
      goto LABEL_77;
    }

    v8 = v7;
    v9 = v1[8];
    sub_22FA3A77C(0, &qword_28147ADE8);
    v10 = sub_22FCC89D4();

    v11 = [v9 count];
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_88;
    }

    v12 = v11;
    v183 = v6;
    if (!v11)
    {
      v181 = 0;
      v182 = 0;
      v188 = 0;
LABEL_67:

      if (qword_27DAD6ED0 == -1)
      {
LABEL_68:
        v154 = v1[8];
        v155 = sub_22FCC8684();
        __swift_project_value_buffer(v155, qword_27DAD8778);
        v156 = v154;
        v157 = sub_22FCC8664();
        v158 = sub_22FCC8F34();
        if (os_log_type_enabled(v157, v158))
        {
          v159 = v1[8];
          v160 = swift_slowAlloc();
          *v160 = 134218752;
          *(v160 + 4) = [v159 count];

          *(v160 + 12) = 2048;
          *(v160 + 14) = v188;
          *(v160 + 22) = 2048;
          *(v160 + 24) = v181;
          *(v160 + 32) = 2048;
          *(v160 + 34) = v182;
          _os_log_impl(&dword_22FA28000, v157, v158, "Prepared descriptors for %ld assets: %ld cached, %ld generated, %ld failed.", v160, 0x2Au);
          MEMORY[0x23190A000](v160, -1, -1);
        }

        else
        {

          v157 = v1[8];
        }

        sub_22FCC8484();
        sub_22FCC76B4();

        v161 = v1[1];

        return v161(v181, v188);
      }

LABEL_88:
      swift_once();
      goto LABEL_68;
    }

    v13 = 0;
    v14 = 0;
    v181 = 0;
    v182 = 0;
    v188 = 0;
    v15 = v1[12];
    v186 = (v15 + 16);
    v179 = 0;
    v195 = v1;
    v184 = v10;
    v185 = v11;
    v187 = (v15 + 8);
LABEL_6:
    log = v13;
LABEL_7:
    if (v13 < v12)
    {
      break;
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    swift_once();
  }

  v16 = (&v13->isa + 1);
  if (__OFADD__(v13, 1))
  {
    goto LABEL_84;
  }

  v194 = v13;
  v196 = [v1[8] objectAtIndexedSubscript_];
  v17 = [v196 uuid];
  if (!v17)
  {
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    (*v187)(v8, v9);
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v18 = v17;
  v19 = sub_22FCC8A84();
  v21 = v20;

  if (!*(v10 + 16))
  {

    goto LABEL_76;
  }

  v22 = sub_22FA2DB54(v19, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    goto LABEL_76;
  }

  v193 = v14;
  v25 = *(*(v10 + 56) + 8 * v22);
  v26 = [v25 uuid];
  if (!v26)
  {

LABEL_76:
    v152 = v1[10];

    sub_22FB36CF0();
    swift_allocError();
    *v163 = 1;
    swift_willThrow();

    sub_22FCC76B4();
LABEL_77:

    v164 = sub_22FCC8494();
    (*(*(v164 - 8) + 8))(v152, v164);
    goto LABEL_78;
  }

  v27 = v26;
  v192 = v16;
  v9 = sub_22FCC8A84();
  v8 = v28;

  v29 = [v25 photoLibrary];
  if (!v29)
  {
    goto LABEL_92;
  }

  v30 = v29;
  v1[2] = 0;
  v31 = [v29 urlForApplicationDataFolderIdentifier:16 error:v1 + 2];

  v32 = v1[2];
  if (!v31)
  {
    v166 = v1[10];
    v167 = v32;

    sub_22FCC6514();

    swift_willThrow();
    sub_22FCC76B4();

    v168 = sub_22FCC8494();
    (*(*(v168 - 8) + 8))(v166, v168);
    goto LABEL_78;
  }

  sub_22FCC65A4();
  v33 = v32;

  v34 = sub_22FCC72C4();

  v35 = [v34 identifier];
  sub_22FCC8A84();

  sub_22FCC6574();

  if (sub_22FCC72D4())
  {
    v191 = v34;
    if (qword_27DAD6ED0 != -1)
    {
      swift_once();
    }

    v36 = v1[17];
    v37 = v1[18];
    v38 = v1[11];
    v39 = sub_22FCC8684();
    __swift_project_value_buffer(v39, qword_27DAD8778);
    (*v186)(v36, v37, v38);
    v40 = v25;
    v41 = sub_22FCC8664();
    v42 = sub_22FCC8F34();
    v189 = v40;
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v197[0] = v44;
      *v43 = 136315394;
      v45 = [v40 uuid];
      v8 = v1[17];
      v9 = v1[11];

      if (!v45)
      {
        goto LABEL_93;
      }

      v46 = sub_22FCC8A84();
      v48 = v47;

      v49 = sub_22FA2F600(v46, v48, v197);

      *(v43 + 4) = v49;
      *(v43 + 12) = 2080;
      sub_22FB36D44();
      v50 = sub_22FCC96C4();
      v52 = v51;
      v1 = *v187;
      (*v187)(v8, v9);
      v53 = sub_22FA2F600(v50, v52, v197);

      *(v43 + 14) = v53;
      _os_log_impl(&dword_22FA28000, v41, v42, "Found cached descriptor for asset %s at %s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v44, -1, -1);
      MEMORY[0x23190A000](v43, -1, -1);

      v10 = v184;
    }

    else
    {
      v54 = v1[17];
      v55 = v1[11];

      v1 = *v187;
      (*v187)(v54, v55);
    }

    v188 = v193 + 1;
    if (__OFADD__(v193, 1))
    {
      goto LABEL_85;
    }

    [v195[8] count];
    sub_22FCC8474();
    v56 = v195[18];
    v8 = v195[19];
    v9 = v195[11];

    (v1)(v56, v9);
    (v1)(v8, v9);
    v13 = (&v194->isa + 1);
    v14 = v193 + 1;
    v12 = v185;
    v1 = v195;
    if (v192 == v185)
    {
      v188 = v185 - log + v179;
      goto LABEL_67;
    }

    goto LABEL_7;
  }

  v57 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v58 = sub_22FCC6564();
  v1[3] = 0;
  v59 = [v57 createDirectoryAtURL:v58 withIntermediateDirectories:1 attributes:0 error:v1 + 3];

  v60 = v1[3];
  if (!v59)
  {
    v80 = v60;
    v81 = sub_22FCC6514();

    swift_willThrow();
    v63 = v187;
    goto LABEL_53;
  }

  v61 = qword_27DAD6ED0;
  v62 = v60;
  v63 = v187;
  if (v61 != -1)
  {
    swift_once();
  }

  v64 = v1[18];
  v65 = v1[16];
  v66 = v1[11];
  v67 = sub_22FCC8684();
  __swift_project_value_buffer(v67, qword_27DAD8778);
  v180 = *v186;
  (*v186)(v65, v64, v66);
  v68 = sub_22FCC8664();
  v69 = sub_22FCC8F34();
  v70 = os_log_type_enabled(v68, v69);
  v71 = v1[16];
  v72 = v1[11];
  if (v70)
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v197[0] = v74;
    *v73 = 136315138;
    sub_22FB36D44();
    v75 = sub_22FCC96C4();
    v77 = v76;
    v191 = *v187;
    (*v187)(v71, v72);
    v78 = v75;
    v63 = v187;
    v79 = sub_22FA2F600(v78, v77, v197);
    v1 = v195;

    *(v73 + 4) = v79;
    _os_log_impl(&dword_22FA28000, v68, v69, "Created a new directory at %s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v74);
    MEMORY[0x23190A000](v74, -1, -1);
    MEMORY[0x23190A000](v73, -1, -1);
  }

  else
  {

    v191 = *v187;
    (*v187)(v71, v72);
  }

  v82 = [v34 media];
  sub_22FA3A77C(0, &qword_28147AEC8);
  v83 = sub_22FCC8C44();

  if (v83 >> 62)
  {
    if (!sub_22FCC92C4())
    {
      goto LABEL_52;
    }

LABEL_34:
    if ((v83 & 0xC000000000000001) != 0)
    {
      v84 = MEMORY[0x231908810](0, v83);
    }

    else
    {
      if (!*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_90;
      }

      v84 = *(v83 + 32);
    }

    v85 = v84;
    v86 = v1[9];

    v87 = [v85 subpath];
    sub_22FCC8A84();

    sub_22FCC6574();

    v88 = sub_22FCC6564();
    v1[6] = 0;
    v89 = [v86 saveMessagesBackdropPreviewResourcesForAsset:v25 atURL:v88 withClassification:5 error:v1 + 6];

    v90 = v1[6];
    v91 = v1[15];
    if (!v89)
    {
      v108 = v1[11];
      v109 = v90;
      v81 = sub_22FCC6514();

      swift_willThrow();
      v63 = v187;
      (v191)(v91, v108);
      goto LABEL_53;
    }

    v176 = v85;
    v180(v1[14], v91, v1[11]);
    v92 = v25;
    v93 = v90;
    v94 = sub_22FCC8664();
    v95 = sub_22FCC8F34();
    loga = v94;
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v197[0] = v175;
      *v96 = 136315394;
      v97 = [v92 uuid];
      v8 = v1[14];
      v9 = v1[11];

      if (!v97)
      {
        goto LABEL_96;
      }

      v98 = sub_22FCC8A84();
      v100 = v99;

      v101 = sub_22FA2F600(v98, v100, v197);

      *(v96 + 4) = v101;
      *(v96 + 12) = 2080;
      sub_22FB36D44();
      v102 = sub_22FCC96C4();
      v104 = v103;
      v105 = v191;
      (v191)(v8, v9);
      v106 = sub_22FA2F600(v102, v104, v197);

      *(v96 + 14) = v106;
      v107 = v95;
      v63 = v187;
      _os_log_impl(&dword_22FA28000, loga, v107, "Saved asset %s in %s", v96, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v175, -1, -1);
      MEMORY[0x23190A000](v96, -1, -1);
    }

    else
    {
      v110 = v1[14];
      v111 = v1[11];

      v63 = v187;
      v105 = v191;
      (v191)(v110, v111);
    }

    [v1[8] count];
    sub_22FCC8474();
    v112 = sub_22FCC6564();
    v1[7] = 0;
    v113 = [v34 saveToURL:v112 error:v1 + 7];

    v114 = v1[7];
    if (!v113)
    {
      v129 = v1[15];
      v130 = v1[11];
      v131 = v114;
      v81 = sub_22FCC6514();

      swift_willThrow();
      v105(v129, v130);
      goto LABEL_53;
    }

    v180(v1[13], v1[18], v1[11]);
    v115 = v114;
    v116 = sub_22FCC8664();
    v117 = sub_22FCC8F34();
    v118 = os_log_type_enabled(v116, v117);
    v119 = v1[13];
    v120 = v1[11];
    if (v118)
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v197[0] = v122;
      *v121 = 136315138;
      sub_22FB36D44();
      v123 = sub_22FCC96C4();
      v125 = v124;
      v126 = v120;
      v9 = v191;
      (v191)(v119, v126);
      v127 = v123;
      v63 = v187;
      v128 = sub_22FA2F600(v127, v125, v197);
      v1 = v195;

      *(v121 + 4) = v128;
      _os_log_impl(&dword_22FA28000, v116, v117, "Successfully saved model data to '%s'", v121, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v122);
      MEMORY[0x23190A000](v122, -1, -1);
      MEMORY[0x23190A000](v121, -1, -1);
    }

    else
    {

      v132 = v120;
      v9 = v191;
      (v191)(v119, v132);
    }

    v8 = v1[10];
    [v1[8] count];
    sub_22FCC8474();
    (v9)(v1[15], v1[11]);

    v133 = __OFADD__(v181++, 1);
    if (v133)
    {
      goto LABEL_94;
    }

LABEL_62:
    [v1[8] count];
    sub_22FCC8474();
    v150 = v1[18];
    v8 = v1[19];
    v9 = v1[11];

    v151 = *v63;
    (*v63)(v150, v9);
    v151(v8, v9);
    v13 = v192;
    v14 = v193;
    v179 = v193;
    v10 = v184;
    v12 = v185;
    if (v192 == v185)
    {
      goto LABEL_67;
    }

    goto LABEL_6;
  }

  if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_52:

  sub_22FB36CF0();
  v81 = swift_allocError();
  *v134 = 2;
  swift_willThrow();
LABEL_53:
  v1[4] = v81;
  v135 = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
  sub_22FA3A77C(0, &qword_28147ADF0);
  if (!swift_dynamicCast())
  {
    v170 = v1[18];
    v169 = v1[19];
    v172 = v1[10];
    v171 = v1[11];

    v173 = *v63;
    (*v63)(v170, v171);
    v173(v169, v171);

    sub_22FCC76B4();

    v174 = sub_22FCC8494();
    (*(*(v174 - 8) + 8))(v172, v174);
LABEL_78:

    v165 = v1[1];

    return v165();
  }

  v136 = v1[5];
  if (qword_27DAD6ED0 != -1)
  {
    swift_once();
  }

  v137 = sub_22FCC8684();
  __swift_project_value_buffer(v137, qword_27DAD8778);
  v138 = v25;
  v139 = v136;
  v140 = sub_22FCC8664();
  v141 = sub_22FCC8F14();
  if (!os_log_type_enabled(v140, v141))
  {

LABEL_60:
    v133 = __OFADD__(v182++, 1);
    if (v133)
    {
      __break(1u);
LABEL_90:
      __break(1u);
    }

    goto LABEL_62;
  }

  v190 = v141;
  v191 = v140;
  v142 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v143 = swift_slowAlloc();
  v197[0] = v143;
  *v142 = 136315394;
  v144 = v138;
  v9 = [v138 uuid];

  if (v9)
  {
    v145 = sub_22FCC8A84();
    v147 = v146;

    v148 = sub_22FA2F600(v145, v147, v197);

    *(v142 + 4) = v148;
    *(v142 + 12) = 2112;
    *(v142 + 14) = v139;
    *v8 = v139;
    v149 = v139;
    _os_log_impl(&dword_22FA28000, v191, v190, "Fail to prepare descriptor for asset %s: %@", v142, 0x16u);
    sub_22FA3A56C(v8);
    MEMORY[0x23190A000](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v143);
    MEMORY[0x23190A000](v143, -1, -1);
    MEMORY[0x23190A000](v142, -1, -1);

    v63 = v187;
    goto LABEL_60;
  }

LABEL_95:
  __break(1u);
LABEL_96:
  result = (v191)(v8, v9);
  __break(1u);
  return result;
}

unint64_t sub_22FB36CF0()
{
  result = qword_27DAD8790;
  if (!qword_27DAD8790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8790);
  }

  return result;
}

unint64_t sub_22FB36D44()
{
  result = qword_27DAD73F8;
  if (!qword_27DAD73F8)
  {
    sub_22FCC65F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD73F8);
  }

  return result;
}

uint64_t sub_22FB36D9C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22FCC9704() & 1;
  }
}

unint64_t sub_22FB36E08()
{
  result = qword_27DAD8798;
  if (!qword_27DAD8798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8798);
  }

  return result;
}

unint64_t sub_22FB36E5C()
{
  v1 = sub_22FCC65F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22FCC6794();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PhotoLibraryResource.Error(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22FB37AB0(v0, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = *v11;
  if (EnumCaseMultiPayload == 1)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_22FCC9384();

    v24 = 0xD000000000000025;
    v25 = 0x800000022FCE4400;
    v14 = [v13 photoLibraryURL];
    sub_22FCC65A4();

    sub_22FB37A10(&qword_27DAD73F8, MEMORY[0x277CC9260]);
    v15 = sub_22FCC96C4();
    MEMORY[0x231907FA0](v15);

    (*(v2 + 8))(v4, v1);

    return v24;
  }

  else
  {
    v23[0] = v11[1];
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD87A0);
    (*(v6 + 32))(v8, v11 + *(v17 + 64), v5);
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_22FCC9384();
    MEMORY[0x231907FA0](0xD000000000000027, 0x800000022FCE4430);
    v18 = [v13 photoLibraryURL];
    sub_22FCC65A4();

    sub_22FB37A10(&qword_27DAD73F8, MEMORY[0x277CC9260]);
    v19 = sub_22FCC96C4();
    MEMORY[0x231907FA0](v19);

    (*(v2 + 8))(v4, v1);
    MEMORY[0x231907FA0](0x3A726F727265202CLL, 0xE900000000000020);
    v20 = v23[0];
    v23[1] = v23[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
    sub_22FCC94A4();
    MEMORY[0x231907FA0](544497952, 0xE400000000000000);
    sub_22FB37A10(&qword_281482528, MEMORY[0x277CC9578]);
    v21 = sub_22FCC96C4();
    MEMORY[0x231907FA0](v21);

    v16 = v24;
    (*(v6 + 8))(v8, v5);
  }

  return v16;
}

id sub_22FB372DC()
{
  v23[1] = *MEMORY[0x277D85DE8];
  v0 = sub_22FCC65F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotoLibraryResource(0);
  v4 = objc_allocWithZone(MEMORY[0x277CD9948]);
  v5 = sub_22FCC6564();
  v6 = [v4 initWithPhotoLibraryURL_];

  v23[0] = 0;
  v7 = [v6 openAndWaitWithUpgrade:0 error:v23];
  v8 = v23[0];
  if (v7)
  {
    v23[0] = 0;
    v9 = v8;
    v10 = [v6 urlForApplicationDataFolderIdentifier:1 error:v23];
    v11 = v23[0];
    if (v10)
    {
      v12 = v10;
      sub_22FCC65A4();
      v13 = v11;

      (*(v1 + 8))(v3, v0);
      if (([v6 photoAnalysisClientAllowed] & 1) == 0)
      {
        type metadata accessor for PhotoLibraryResource.Error(0);
        sub_22FB37A10(qword_281481D70, type metadata accessor for PhotoLibraryResource.Error);
        swift_allocError();
        *v14 = v6;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }
    }

    else
    {
      v21 = v23[0];
      sub_22FCC6514();

      swift_willThrow();
    }
  }

  else
  {
    v15 = v23[0];
    v16 = sub_22FCC6514();

    swift_willThrow();
    type metadata accessor for PhotoLibraryResource.Error(0);
    sub_22FB37A10(qword_281481D70, type metadata accessor for PhotoLibraryResource.Error);
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD87A0);
    *v18 = v6;
    v18[1] = v16;
    v19 = v6;
    v20 = v16;
    sub_22FCC6784();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v6;
}

void sub_22FB376A4()
{
  sub_22FB37718();
  if (v0 <= 0x3F)
  {
    sub_22FB377FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22FB37718()
{
  if (!qword_27DAD87B8)
  {
    sub_22FB377B0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD8E60);
    sub_22FCC6794();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27DAD87B8);
    }
  }
}

unint64_t sub_22FB377B0()
{
  result = qword_27DAD87C0;
  if (!qword_27DAD87C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAD87C0);
  }

  return result;
}

void sub_22FB377FC()
{
  if (!qword_27DAD87C8)
  {
    v0 = sub_22FB377B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAD87C8);
    }
  }
}

uint64_t sub_22FB3786C()
{
  result = sub_22FCC65F4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FB378E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_22FCC65F4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FB3795C()
{
  v0 = sub_22FC153B4();
  MEMORY[0x231907FA0](v0);

  return 0x656372756F736552;
}

uint64_t sub_22FB379B8(uint64_t a1)
{
  result = sub_22FB37A10(&qword_281481D60, type metadata accessor for PhotoLibraryResource);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FB37A10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FB37A58(uint64_t a1)
{
  result = sub_22FB37A10(&qword_281481D68, type metadata accessor for PhotoLibraryResource);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FB37AB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoLibraryResource.Error(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FB37B14()
{
  sub_22FA3A77C(0, &qword_28147ADA0);
  result = sub_22FCC91C4();
  qword_28147C5F0 = result;
  return result;
}

uint64_t sub_22FB37B8C()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_28147C5C8);
  __swift_project_value_buffer(v0, qword_28147C5C8);
  if (qword_28147C5E8 != -1)
  {
    swift_once();
  }

  v1 = qword_28147C5F0;
  return sub_22FCC8694();
}

id sub_22FB37C18()
{
  v1 = [*(v0 + 176) isSystemPhotoLibrary];
  if ((v1 & 1) == 0)
  {
    if (qword_28147C5C0 != -1)
    {
      swift_once();
    }

    v2 = sub_22FCC8684();
    __swift_project_value_buffer(v2, qword_28147C5C8);
    v3 = sub_22FCC8664();
    v4 = sub_22FCC8EF4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22FA28000, v3, v4, "Task will not run: Task can only run on system library", v5, 2u);
      MEMORY[0x23190A000](v5, -1, -1);
    }
  }

  if ((PLIsAlchemistAllowed() & 1) == 0)
  {
    if (qword_28147C5C0 != -1)
    {
      swift_once();
    }

    v6 = sub_22FCC8684();
    __swift_project_value_buffer(v6, qword_28147C5C8);
    v7 = sub_22FCC8664();
    v8 = sub_22FCC8EF4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22FA28000, v7, v8, "Alchemist has been disabled from settings", v9, 2u);
      MEMORY[0x23190A000](v9, -1, -1);
    }

    v1 = 0;
  }

  v10 = sub_22FCC6DE4();
  v21[3] = v10;
  v21[4] = sub_22FB3B414(qword_28147B080, 255, MEMORY[0x277D3A838]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(v10 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D3A7F8], v10);
  LOBYTE(v10) = sub_22FCC6C74();
  __swift_destroy_boxed_opaque_existential_0(v21);
  if ((v10 & 1) == 0)
  {
    if (qword_28147C5C0 != -1)
    {
      swift_once();
    }

    v12 = sub_22FCC8684();
    __swift_project_value_buffer(v12, qword_28147C5C8);
    v13 = sub_22FCC8664();
    v14 = sub_22FCC8EF4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22FA28000, v13, v14, "Task will not run: FF Photos/GyroPoster is not enabled", v15, 2u);
      MEMORY[0x23190A000](v15, -1, -1);
    }

    v1 = 0;
  }

  if (!PFPosterDeviceSpatialPhotoSupportLevel())
  {
    if (qword_28147C5C0 != -1)
    {
      swift_once();
    }

    v16 = sub_22FCC8684();
    __swift_project_value_buffer(v16, qword_28147C5C8);
    v17 = sub_22FCC8664();
    v18 = sub_22FCC8EF4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22FA28000, v17, v18, "Device does not support Spatial3D", v19, 2u);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    return 0;
  }

  return v1;
}

uint64_t sub_22FB37FEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22FCC67F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 56) = 0x4122750000000000;
  *(v3 + 64) = 0xD000000000000024;
  *(v3 + 72) = 0x800000022FCD7D40;
  sub_22FCC67E4();
  v10 = sub_22FCC67B4();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  *(v3 + 80) = v10;
  *(v3 + 88) = v12;
  *(v3 + 96) = xmmword_22FCD1F80;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 1;
  *(v3 + 40) = type metadata accessor for MomentGraphWorker();
  *(v3 + 48) = sub_22FB3B414(&qword_281480230, 255, type metadata accessor for MomentGraphWorker);
  *(v3 + 16) = a1;
  v13 = [*(*(a1 + 112) + 112) photoLibrary];
  v14 = *(a2 + 16);
  *(v3 + 136) = *a2;
  *(v3 + 152) = v14;
  *(v3 + 168) = *(a2 + 32);
  *(v3 + 176) = v13;
  return v3;
}