uint64_t sub_265B56330(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t RequestCoalescerError.hashValue.getter()
{
  sub_265B77600();
  MEMORY[0x26676B9F0](0);
  return sub_265B77620();
}

unint64_t sub_265B56410()
{
  result = qword_280035AA0;
  if (!qword_280035AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035AA0);
  }

  return result;
}

uint64_t dispatch thunk of SummaryShelfLockupDescriptorsCaching.fetch()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265B4C6BC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of SummaryShelfLockupDescriptorsCaching.query()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265B566A8;

  return v9(a1, a2);
}

uint64_t sub_265B566AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035958, &qword_265B78FD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_265B5A09C(a3, v26 - v10);
  v12 = sub_265B77230();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_265B408F0(v11);
  }

  else
  {
    sub_265B77220();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_265B771C0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_265B77050() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_265B408F0(a3);

      return v24;
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

  sub_265B408F0(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t SummaryShelfLockupDescriptorsCache.init(catalogClient:contentAvailabilityClient:eventHub:networkEvaluator:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035958, &qword_265B78FD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - v14;
  swift_defaultActor_initialize();
  type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  swift_storeEnumTagMultiPayload();
  sub_265B41D44(a1, v6 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_catalogClient);
  sub_265B41D44(a2, v6 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_contentAvailabilityClient);
  v16 = (v6 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_eventHub);
  *v16 = a3;
  v16[1] = a4;
  sub_265B41D44(a5, v6 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_networkEvaluator);
  v17 = sub_265B76CC0();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  swift_unknownObjectRetain_n();
  *(v6 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_subscriptionToken) = sub_265B76CB0();
  v20 = sub_265B77230();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;

  sub_265B566AC(0, 0, v15, &unk_265B78FE8, v21);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t sub_265B56B98()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_265B56C54, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_265B56C54()
{
  v1 = *(v0 + 48);
  sub_265B5734C();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_265B56CC0(uint64_t a1, uint64_t a2)
{
  v2[8] = a2;
  v3 = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  v2[9] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265B56D54, 0, 0);
}

uint64_t sub_265B56D54()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_265B56E18, Strong, 0);
  }

  else
  {
    v3 = v0[10];

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_265B56E18()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_state;
  swift_beginAccess();
  sub_265B43BBC(v2 + v4, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v13 = v0[11];
      goto LABEL_9;
    }

    sub_265B422F4(v0[10]);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v12 = v0[10];
      v11 = v0[11];

      sub_265B422F4(v12);
      goto LABEL_10;
    }

    v6 = v0[10];
    v7 = *v6;

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AA8, &qword_265B78FF8) + 48);
    v9 = sub_265B76390();
    (*(*(v9 - 8) + 8))(&v6[v8], v9);
  }

  v10 = v0[11];
  sub_265B57540();
LABEL_9:

LABEL_10:
  v14 = v0[10];

  v15 = v0[1];

  return v15();
}

uint64_t sub_265B56F68(uint64_t a1, uint64_t a2)
{
  v2[8] = a2;
  v3 = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  v2[9] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265B56FFC, 0, 0);
}

uint64_t sub_265B56FFC()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_265B570C0, Strong, 0);
  }

  else
  {
    v3 = v0[10];

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_265B570C0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_state;
  swift_beginAccess();
  sub_265B43BBC(v2 + v4, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload)
  {
LABEL_5:
    sub_265B422F4(v0[10]);
    goto LABEL_6;
  }

  v6 = v0[10];
  v7 = *v6;

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AA8, &qword_265B78FF8) + 48);
  v9 = sub_265B76390();
  (*(*(v9 - 8) + 8))(&v6[v8], v9);
LABEL_6:
  v10 = v0[11];
  sub_265B57540();
LABEL_7:
  v11 = v0[11];

  v12 = v0[10];

  v13 = v0[1];

  return v13();
}

uint64_t sub_265B571F4(uint64_t a1, uint64_t a2)
{
  v2[8] = a2;
  v3 = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  v2[9] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265B57288, 0, 0);
}

uint64_t sub_265B57288()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_265B5A10C, Strong, 0);
  }

  else
  {
    v3 = v0[10];

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_265B5734C()
{
  v1 = v0;
  v2 = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_networkEvaluator + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_networkEvaluator), *(v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_networkEvaluator + 24));
  sub_265B76CA0();
  v7 = sub_265B76530();
  v9 = v8;
  if (v7 == sub_265B76530() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_265B77580();

    if (v12)
    {
      return result;
    }

    v14 = OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_state;
    swift_beginAccess();
    sub_265B43BBC(v1 + v14, v5);
    result = swift_getEnumCaseMultiPayload();
    if (result > 1)
    {
      if (result != 2)
      {
        return result;
      }

      sub_265B422F4(v5);
      return sub_265B57540();
    }

    if (!result)
    {
      v15 = *v5;

      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AA8, &qword_265B78FF8) + 48);
      v17 = sub_265B76390();
      (*(*(v17 - 8) + 8))(&v5[v16], v17);
      return sub_265B57540();
    }

    return sub_265B422F4(v5);
  }
}

uint64_t sub_265B57540()
{
  v29 = sub_265B76390();
  v1 = *(v29 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v29);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v28 - v10);
  v12 = sub_265B76F60();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B76E50();
  sub_265B76F40();
  (*(v13 + 8))(v16, v12);
  v17 = OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_state;
  swift_beginAccess();
  sub_265B43BBC(v0 + v17, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v19 = *v11;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AA8, &qword_265B78FF8);
      v21 = *(v20 + 48);
      sub_265B76380();
      v22 = *(v20 + 48);
      *v9 = v19;
      v23 = v29;
      (*(v1 + 16))(&v9[v22], v4, v29);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_265B43E60(v9, v0 + v17);
      swift_endAccess();
      sub_265B57900(v4);
      v24 = *(v1 + 8);
      v24(v4, v23);
      return (v24)(v11 + v21, v23);
    }
  }

  else
  {
    sub_265B422F4(v11);
  }

  sub_265B76380();
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AA8, &qword_265B78FF8) + 48);
  *v9 = MEMORY[0x277D84F90];
  v27 = v29;
  (*(v1 + 16))(&v9[v26], v4, v29);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_265B43E60(v9, v0 + v17);
  swift_endAccess();
  sub_265B57900(v4);
  return (*(v1 + 8))(v4, v27);
}

uint64_t sub_265B57900(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265B76390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035958, &qword_265B78FD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  v11 = sub_265B76F60();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B76E50();
  sub_265B76F40();
  (*(v12 + 8))(v15, v11);
  v16 = sub_265B77230();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  (*(v5 + 16))(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v17 = sub_265B58DFC();
  v18 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v2;
  *(v19 + 3) = v17;
  *(v19 + 4) = v2;
  (*(v5 + 32))(&v19[v18], &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  swift_retain_n();
  sub_265B566AC(0, 0, v10, &unk_265B790F8, v19);
}

uint64_t sub_265B57BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A10, &qword_265B79100);
  v5[19] = v7;
  v8 = *(v7 - 8);
  v5[20] = v8;
  v9 = *(v8 + 64) + 15;
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v10 = sub_265B76F60();
  v5[23] = v10;
  v11 = *(v10 - 8);
  v5[24] = v11;
  v12 = *(v11 + 64) + 15;
  v5[25] = swift_task_alloc();
  v13 = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  v5[26] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v15 = sub_265B76390();
  v5[30] = v15;
  v16 = *(v15 - 8);
  v5[31] = v16;
  v17 = *(v16 + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AC8, &qword_265B79108);
  v5[34] = v18;
  v19 = *(v18 - 8);
  v5[35] = v19;
  v20 = *(v19 + 64) + 15;
  v5[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265B57E14, a4, 0);
}

uint64_t sub_265B57E14()
{
  v1 = *(v0 + 288);
  v2 = (*(v0 + 136) + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_catalogClient);
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_265B76C00();

  return MEMORY[0x2822009F8](sub_265B57EB0, 0, 0);
}

uint64_t sub_265B57EB0()
{
  v1 = v0[36];
  v2 = swift_task_alloc();
  v0[37] = v2;
  *(v2 + 16) = "SeymourClientServices/SummaryShelfLockupDescriptorsCache.swift";
  *(v2 + 24) = 62;
  *(v2 + 32) = 2;
  *(v2 + 40) = 125;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[38] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AB0, &qword_265B79000);
  *v4 = v0;
  v4[1] = sub_265B42FC8;

  return MEMORY[0x2822008A0](v0 + 14, 0, 0, 0xD000000000000013, 0x8000000265B7A290, sub_265B59E2C, v2, v5);
}

uint64_t sub_265B57FD4()
{
  v1 = v0[17];
  (*(v0[35] + 8))(v0[36], v0[34]);

  return MEMORY[0x2822009F8](sub_265B58050, v1, 0);
}

uint64_t sub_265B58050()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[17];
  v4 = OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_state;
  swift_beginAccess();
  sub_265B43BBC(v3 + v4, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[39];
  if (EnumCaseMultiPayload)
  {
    v7 = v0[28];

    sub_265B422F4(v7);
  }

  else
  {
    v8 = v0[31];
    v9 = v0[32];
    v10 = v0[30];
    v11 = v0[28];
    v12 = v0[18];
    v13 = *v11;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AA8, &qword_265B78FF8);
    (*(v8 + 32))(v9, &v11[*(v14 + 48)], v10);
    v15 = v6;
    v16 = sub_265B76360();
    v17 = v0[39];
    if (v16)
    {
      v19 = v0[26];
      v18 = v0[27];
      v20 = v0[24];
      v21 = v0[25];
      v22 = v0[23];
      sub_265B76E50();
      sub_265B76F40();
      (*(v20 + 8))(v21, v22);
      *v18 = v17;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      v23 = v17;
      sub_265B43E60(v18, v3 + v4);
      swift_endAccess();
      v24 = *(v13 + 16);
      if (v24)
      {
        v25 = v0[20];
        v28 = *(v25 + 16);
        v26 = v25 + 16;
        v27 = v28;
        v29 = v13 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
        v30 = *(v26 + 56);
        do
        {
          v31 = v0[39];
          v32 = v0[21];
          v33 = v0[19];
          v27(v32, v29, v33);
          v0[15] = v31;
          v34 = v31;
          sub_265B771D0();
          (*(v26 - 8))(v32, v33);
          v29 += v30;
          --v24;
        }

        while (v24);
      }

      v38 = v0[39];
      v40 = v0[31];
      v39 = v0[32];
      v41 = v0[30];
      v42 = (v0[17] + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_eventHub);
      v43 = *v42;
      v44 = v42[1];
      swift_getObjectType();
      sub_265B43ED8();
      sub_265B76C70();

      (*(v40 + 8))(v39, v41);
    }

    else
    {
      v35 = v0[31];
      v36 = v0[32];
      v37 = v0[30];

      (*(v35 + 8))(v36, v37);
    }
  }

  v45 = v0[36];
  v46 = v0[32];
  v47 = v0[33];
  v49 = v0[28];
  v48 = v0[29];
  v50 = v0[27];
  v51 = v0[25];
  v53 = v0[21];
  v52 = v0[22];

  v54 = v0[1];

  return v54();
}

uint64_t SummaryShelfLockupDescriptorsCache.deinit()
{
  sub_265B422F4(v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_state);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_catalogClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_contentAvailabilityClient));
  v1 = *(v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_eventHub);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_networkEvaluator));
  v2 = *(v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_subscriptionToken);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SummaryShelfLockupDescriptorsCache.fetch()()
{
  v1[7] = v0;
  v2 = sub_265B76390();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  v1[11] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v7 = sub_265B76F60();
  v1[13] = v7;
  v8 = *(v7 - 8);
  v1[14] = v8;
  v9 = *(v8 + 64) + 15;
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265B585C0, v0, 0);
}

uint64_t sub_265B585C0()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v6 = v0[7];
  sub_265B76E50();
  sub_265B76F40();
  (*(v2 + 8))(v1, v3);
  v7 = OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_state;
  swift_beginAccess();
  sub_265B43BBC(v6 + v7, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v36 = v0[7];
      v37 = sub_265B58DFC();
      v38 = *(MEMORY[0x277D85A40] + 4);
      v39 = swift_task_alloc();
      v0[16] = v39;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AB0, &qword_265B79000);
      *v39 = v0;
      v39[1] = sub_265B58938;
      v25 = v0[7];
      v21 = sub_265B592E0;
      v22 = v0 + 6;
      v23 = v36;
      v24 = v37;
      goto LABEL_12;
    }

    v26 = *v0[12];
    swift_willThrow();
    v27 = v0[15];
    v28 = v0[12];
    v29 = v0[10];

    v30 = v0[1];

    return v30();
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v9 = v0[12];
      v11 = v0[9];
      v10 = v0[10];
      v12 = v0[7];
      v13 = v0[8];
      v14 = *v9;
      v0[18] = *v9;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AA8, &qword_265B78FF8);
      (*(v11 + 32))(v10, &v9[*(v15 + 48)], v13);
      v16 = sub_265B58DFC();
      v17 = swift_task_alloc();
      v0[19] = v17;
      v17[2] = v12;
      v17[3] = v14;
      v17[4] = v10;
      v18 = *(MEMORY[0x277D85A40] + 4);
      v19 = swift_task_alloc();
      v0[20] = v19;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AB0, &qword_265B79000);
      *v19 = v0;
      v19[1] = sub_265B58AF0;
      v21 = sub_265B592D4;
      v22 = v0 + 5;
      v23 = v12;
      v24 = v16;
      v25 = v17;
LABEL_12:

      return MEMORY[0x2822008A0](v22, v23, v24, 0x29286863746566, 0xE700000000000000, v21, v25, v20);
    }

    v32 = *v0[12];
    v33 = v0[15];
    v34 = v0[10];

    v35 = v0[1];

    return v35(v32);
  }
}

uint64_t sub_265B58938()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_265B58CC4;
  }

  else
  {
    v6 = sub_265B58A64;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_265B58A64()
{
  v1 = v0[6];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[10];

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_265B58AF0()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v10 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = sub_265B58D48;
  }

  else
  {
    v6 = v2[18];
    v7 = v2[19];
    v8 = v2[7];

    v5 = sub_265B58C20;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_265B58C20()
{
  v1 = v0[5];
  (*(v0[9] + 8))(v0[10], v0[8]);
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[10];

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_265B58CC4()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_265B58D48()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  (*(v4 + 8))(v3, v5);
  v6 = v0[21];
  v7 = v0[15];
  v8 = v0[12];
  v9 = v0[10];

  v10 = v0[1];

  return v10();
}

unint64_t sub_265B58DFC()
{
  result = qword_280CEB7A8;
  if (!qword_280CEB7A8)
  {
    type metadata accessor for SummaryShelfLockupDescriptorsCache(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CEB7A8);
  }

  return result;
}

uint64_t sub_265B58E54(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  v3 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_265B76390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B76380();
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AA8, &qword_265B78FF8) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A08, &qword_265B79150);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A10, &qword_265B79100);
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_265B78400;
  (*(v13 + 16))(v16 + v15, v20, v12);
  *v5 = v16;
  (*(v7 + 16))(v5 + v11, v10, v6);
  swift_storeEnumTagMultiPayload();
  v17 = OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_state;
  swift_beginAccess();
  sub_265B43E60(v5, a2 + v17);
  swift_endAccess();
  sub_265B57900(v10);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_265B590C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v7 = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AA8, &qword_265B78FF8) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A08, &qword_265B79150);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A10, &qword_265B79100);
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_265B78400;
  (*(v13 + 16))(v16 + v15, a1, v12);
  v21 = a3;

  sub_265B59918(v16);
  *v10 = v21;
  v17 = sub_265B76390();
  (*(*(v17 - 8) + 16))(&v10[v11], v20, v17);
  swift_storeEnumTagMultiPayload();
  v18 = OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_state;
  swift_beginAccess();
  sub_265B43E60(v10, a2 + v18);
  return swift_endAccess();
}

uint64_t SummaryShelfLockupDescriptorsCache.query()()
{
  v1[5] = v0;
  v2 = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v4 = sub_265B76F60();
  v1[8] = v4;
  v5 = *(v4 - 8);
  v1[9] = v5;
  v6 = *(v5 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265B593D8, v0, 0);
}

uint64_t sub_265B593D8()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  sub_265B76E50();
  sub_265B76F40();
  (*(v2 + 8))(v1, v3);
  v7 = OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_state;
  swift_beginAccess();
  sub_265B43BBC(v6 + v7, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v14 = *v0[7];
    }

    else
    {
      sub_265B59628();
      swift_allocError();
      *v19 = 0;
    }

    swift_willThrow();
    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    v9 = v0[7];
    v10 = *v9;

    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AA8, &qword_265B78FF8) + 48);
    sub_265B59628();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
    v13 = sub_265B76390();
    (*(*(v13 - 8) + 8))(&v9[v11], v13);
LABEL_11:
    v20 = v0[10];
    v21 = v0[7];

    v22 = v0[1];

    return v22();
  }

  v15 = v0[10];
  v16 = *v0[7];

  v17 = v0[1];

  return v17(v16);
}

unint64_t sub_265B59628()
{
  result = qword_280035AB8;
  if (!qword_280035AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035AB8);
  }

  return result;
}

uint64_t sub_265B5967C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265B41608;

  return SummaryShelfLockupDescriptorsCache.fetch()();
}

uint64_t sub_265B5970C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265B5A110;

  return SummaryShelfLockupDescriptorsCache.query()();
}

uint64_t sub_265B59820(uint64_t a1)
{
  v4 = *(sub_265B76390() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_265B41970;

  return sub_265B57BC4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_265B59918(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_265B4DBF4(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A10, &qword_265B79100);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_265B59A50(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A10, &qword_265B79100);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_265B76F60();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_265B40228(0x65uLL);
  sub_265B76E40();
  v18 = sub_265B76F50();
  v41 = sub_265B77280();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_265B77440();
    v39 = a4;
    v23 = sub_265B402B4(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_265B3E000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x26676C0C0](v30, -1, -1);
    MEMORY[0x26676C0C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AC8, &qword_265B79108);
  v34 = sub_265B76BD0();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_265B42C94;
  *(v35 + 24) = v33;

  v34(sub_265B42D24, v35);
}

uint64_t sub_265B59E3C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_265B4221C;

  return sub_265B56B78(a1, v1);
}

uint64_t sub_265B59ED4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_265B4221C;

  return sub_265B56CC0(a1, v1);
}

uint64_t sub_265B59F6C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_265B41970;

  return sub_265B56F68(a1, v1);
}

uint64_t sub_265B5A004(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_265B4221C;

  return sub_265B571F4(a1, v1);
}

uint64_t sub_265B5A09C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035958, &qword_265B78FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static SummaryShelfLockupDescriptorsCacheUpdated.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_265B76CD0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_265B5A1B0()
{
  result = qword_280035AD0;
  if (!qword_280035AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035AD0);
  }

  return result;
}

uint64_t sub_265B5A204()
{
  v0 = sub_265B762E0();
  __swift_allocate_value_buffer(v0, qword_280CEBF78);
  __swift_project_value_buffer(v0, qword_280CEBF78);
  return sub_265B762A0();
}

id sub_265B5A268@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_265B762E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v50 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v51 = &v50 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v52 = &v50 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v50 - v16;
  result = [v1 uniqueName];
  if (!result)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v19 = result;
  v20 = sub_265B77030();
  v22 = v21;

  v56 = v20;
  v57 = v22;
  v54 = 45;
  v55 = 0xE100000000000000;
  sub_265B43C20();
  v23 = sub_265B77320();

  if (!v23[2])
  {

    v29 = *(v5 + 56);
    v30 = a1;
    v31 = 1;
    return v29(v30, v31, 1, v4);
  }

  v53 = a1;
  v24 = v23[4];
  v25 = v23[5];

  if (v24 == 0xD00000000000001CLL && 0x8000000265B7A300 == v25 || (sub_265B77580() & 1) != 0 || v24 == 0xD00000000000001BLL && 0x8000000265B7A320 == v25 || (sub_265B77580() & 1) != 0)
  {
    if (qword_280CEB870 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_280CEBF78);
    sub_265B762C0();
    sub_265B762C0();
    v26 = *(v5 + 8);
    v26(v15, v4);
    result = [v2 uniqueName];
    if (result)
    {
      v27 = result;

      sub_265B77030();

      v28 = v53;
      sub_265B762C0();

      v26(v17, v4);
      v29 = *(v5 + 56);
      v30 = v28;
LABEL_13:
      v31 = 0;
      return v29(v30, v31, 1, v4);
    }

    goto LABEL_32;
  }

  if ((v24 != 0xD000000000000027 || 0x8000000265B7A0D0 != v25) && (sub_265B77580() & 1) == 0)
  {
    v44 = v53;
    if (qword_280CEB870 != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v4, qword_280CEBF78);
    v46 = v50;
    (*(v5 + 16))(v50, v45, v4);
    result = [v2 uniqueName];
    if (result)
    {
      v47 = result;

      sub_265B77030();

      v48 = v51;
      sub_265B762C0();

      v49 = *(v5 + 8);
      v49(v46, v4);
      sub_265B762C0();
      v49(v48, v4);
      v29 = *(v5 + 56);
      v30 = v44;
      goto LABEL_13;
    }

    goto LABEL_34;
  }

  result = [v2 uniqueName];
  v32 = v53;
  if (result)
  {
    v33 = result;

    v34 = sub_265B77030();
    v36 = v35;

    v56 = v34;
    v57 = v36;
    v54 = 45;
    v55 = 0xE100000000000000;
    v37 = sub_265B77320();

    if (v37[2] < 3uLL)
    {
      (*(v5 + 56))(v32, 1, 1, v4);
    }

    v38 = v37[5];
    v56 = v37[4];
    v57 = v38;

    MEMORY[0x26676B460](45, 0xE100000000000000);
    if (v37[2] < 3uLL)
    {
      __break(1u);
    }

    else
    {
      v39 = v37[8];
      v40 = v37[9];

      MEMORY[0x26676B460](v39, v40);

      if (qword_280CEB870 == -1)
      {
LABEL_23:
        __swift_project_value_buffer(v4, qword_280CEBF78);
        v41 = v52;
        sub_265B762C0();
        sub_265B762C0();
        v42 = *(v5 + 8);
        v42(v41, v4);
        v43 = v53;
        sub_265B762C0();

        v42(v15, v4);
        v29 = *(v5 + 56);
        v30 = v43;
        goto LABEL_13;
      }
    }

    swift_once();
    goto LABEL_23;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

id sub_265B5A98C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_265B762E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  result = [v1 uniqueName];
  if (result)
  {
    v15 = result;
    v16 = sub_265B77030();
    v18 = v17;

    v31 = v16;
    v32 = v18;
    v29 = 45;
    v30 = 0xE100000000000000;
    sub_265B43C20();
    v19 = sub_265B77320();

    if (!v19[2])
    {

      v23 = 1;
      v22 = v28;
      return (*(v4 + 56))(v22, v23, 1, v3);
    }

    v21 = v19[4];
    v20 = v19[5];

    if (v21 == 0xD00000000000001CLL && 0x8000000265B7A300 == v20 || (sub_265B77580() & 1) != 0 || v21 == 0xD00000000000001BLL && 0x8000000265B7A320 == v20 || (sub_265B77580() & 1) != 0 || v21 == 0xD000000000000027 && 0x8000000265B7A0D0 == v20 || (sub_265B77580() & 1) != 0)
    {

      if (qword_280CEB870 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v3, qword_280CEBF78);
      sub_265B762C0();
      v22 = v28;
      sub_265B762C0();
      (*(v4 + 8))(v13, v3);
      goto LABEL_15;
    }

    if (qword_280CEB870 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v3, qword_280CEBF78);
    (*(v4 + 16))(v8, v24, v3);
    result = [v2 uniqueName];
    if (result)
    {
      v25 = result;

      sub_265B77030();

      sub_265B762C0();

      v26 = *(v4 + 8);
      v26(v8, v3);
      v22 = v28;
      sub_265B762C0();
      v26(v11, v3);
LABEL_15:
      v23 = 0;
      return (*(v4 + 56))(v22, v23, 1, v3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_265B5ADDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v42 = sub_265B762E0();
  v3 = *(v42 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v42);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v39 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v39 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  result = [v1 uniqueName];
  if (!result)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v19 = result;
  v20 = sub_265B77030();
  v22 = v21;

  v45 = v20;
  v46 = v22;
  v43 = 45;
  v44 = 0xE100000000000000;
  sub_265B43C20();
  v23 = sub_265B77320();

  if (!v23[2])
  {

    v33 = 1;
    v32 = v41;
    v30 = v42;
    return (*(v3 + 56))(v32, v33, 1, v30);
  }

  v39 = v9;
  v24 = v23[4];
  v25 = v23[5];

  if (v24 == 0xD00000000000001CLL && 0x8000000265B7A300 == v25 || (sub_265B77580() & 1) != 0 || v24 == 0xD00000000000001BLL && 0x8000000265B7A320 == v25 || (sub_265B77580() & 1) != 0 || v24 == 0xD000000000000027 && 0x8000000265B7A0D0 == v25 || (sub_265B77580() & 1) != 0)
  {
    if (qword_280CEB870 != -1)
    {
      swift_once();
    }

    v26 = v42;
    __swift_project_value_buffer(v42, qword_280CEBF78);
    sub_265B762C0();
    sub_265B762C0();
    v27 = v3;
    v28 = *(v3 + 8);
    v29 = v12;
    v30 = v26;
    v28(v29, v26);
    result = [v2 uniqueName];
    if (result)
    {
      v31 = result;

      sub_265B77030();

      sub_265B762C0();

      v28(v15, v26);
      v32 = v41;
      sub_265B762C0();
      v28(v17, v26);
      v33 = 0;
      v3 = v27;
      return (*(v3 + 56))(v32, v33, 1, v30);
    }

    goto LABEL_23;
  }

  v34 = v39;
  if (qword_280CEB870 != -1)
  {
    swift_once();
  }

  v30 = v42;
  v35 = __swift_project_value_buffer(v42, qword_280CEBF78);
  v36 = v40;
  (*(v3 + 16))(v40, v35, v30);
  result = [v2 uniqueName];
  if (result)
  {
    v37 = result;

    sub_265B77030();

    sub_265B762C0();

    v38 = *(v3 + 8);
    v38(v36, v30);
    v32 = v41;
    sub_265B762C0();
    v38(v34, v30);
    v33 = 0;
    return (*(v3 + 56))(v32, v33, 1, v30);
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_265B5B3EC(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_265B77390();
    v5 = v4;
    v6 = sub_265B77400();
    v8 = v7;
    v9 = MEMORY[0x26676B790](v3, v5, v6, v7);
    sub_265B5C6AC(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_265B5C6AC(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_265B77380();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_265B5BE08(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_265B5C6AC(v3, v5, v2 != 0);
  return v13;
}

void static ACHAchievement.makeWeeklyStreakAchievement(with:environmentCache:)(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_265B773A0();
    sub_265B5C6B8(0, &qword_280035A20, 0x277CE8D50);
    sub_265B4EA48();
    sub_265B77250();
    v1 = v24;
    v2 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_265B773F0() || (sub_265B5C6B8(0, &qword_280035A20, 0x277CE8D50), swift_dynamicCast(), v12 = v29, v11 = v5, !v29))
    {
LABEL_26:
      sub_265B45764();
      v21 = sub_265B764D0();
      sub_265B5046C();
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D50D10], v21);
      swift_willThrow();
      return;
    }

LABEL_18:
    v13 = [v12 uniqueName];
    if (v13)
    {
      v14 = v13;
      v15 = sub_265B77030();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    sub_265B76D80();
    v18 = sub_265B76D50();
    if (v17)
    {
      if (v15 == v18 && v17 == v19)
      {

LABEL_28:
        sub_265B45764();
        v23 = sub_265B5C02C();
        [objc_allocWithZone(MEMORY[0x277CE8CB0]) initWithTemplate:v12 relevantEarnedInstance:v23 earnedInstanceCount:v23 != 0];

        return;
      }

      v20 = sub_265B77580();

      if (v20)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    v5 = v11;
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_14:
    v11 = (v10 - 1) & v10;
    v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v12)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_26;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void static ACHAchievement.makeAchievement(for:with:progressUpdates:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a1;
  v57 = a2;
  v7 = sub_265B76F60();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v52 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v4;
  v50 = v11;
  v51 = v9;
  v54 = a4;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_265B773A0();
    sub_265B5C6B8(0, &qword_280035A20, 0x277CE8D50);
    sub_265B4EA48();
    sub_265B77250();
    a3 = v61;
    v12 = v62;
    v13 = v63;
    v14 = v64;
    v15 = v65;
  }

  else
  {
    v16 = -1 << *(a3 + 32);
    v12 = a3 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a3 + 56);

    v14 = 0;
  }

  v55 = v13;
  while (a3 < 0)
  {
    v24 = sub_265B773F0();
    if (!v24 || (v60 = v24, sub_265B5C6B8(0, &qword_280035A20, 0x277CE8D50), swift_dynamicCast(), v23 = v66, v21 = v14, v22 = v15, !v66))
    {
LABEL_25:
      sub_265B45764();
      v32 = sub_265B764D0();
      sub_265B5046C();
      swift_allocError();
      (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D50D10], v32);
      swift_willThrow();
      return;
    }

LABEL_18:
    v58 = v14;
    v25 = [v23 uniqueName];
    if (v25)
    {
      v26 = v25;
      v59 = v23;
      v27 = sub_265B77030();
      v29 = v28;

      if (v27 == v56 && v29 == v57)
      {

LABEL_27:
        sub_265B45764();
        v34 = sub_265B5B3EC(v54);
        if (v34)
        {
          v35 = v34;
          v36 = sub_265B5C24C(v56, v57, v34);
          v37 = objc_allocWithZone(MEMORY[0x277CE8CB0]);
          v38 = v59;
          v39 = [v37 initWithTemplate:v59 relevantEarnedInstance:v36 earnedInstanceCount:v36 != 0];
          v40 = [v35 progressQuantity];
          [v39 setProgress_];

          v41 = [v35 goalQuantity];
          [v39 setGoal_];
        }

        else
        {
          v42 = v52;
          sub_265B76E20();
          v43 = v57;

          v44 = sub_265B76F50();
          v45 = sub_265B77270();

          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v66 = v47;
            *v46 = 136315138;
            *(v46 + 4) = sub_265B402B4(v56, v43, &v66);
            _os_log_impl(&dword_265B3E000, v44, v45, "No progress updates found, unable to populate progress info for %s", v46, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v47);
            MEMORY[0x26676C0C0](v47, -1, -1);
            MEMORY[0x26676C0C0](v46, -1, -1);
          }

          (*(v50 + 8))(v42, v51);
          v48 = sub_265B764D0();
          sub_265B5046C();
          swift_allocError();
          (*(*(v48 - 8) + 104))(v49, *MEMORY[0x277D50D08], v48);
          swift_willThrow();
        }

        return;
      }

      v31 = sub_265B77580();

      v23 = v59;
      if (v31)
      {
        goto LABEL_27;
      }
    }

    v14 = v21;
    v15 = v22;
  }

  v19 = v14;
  v20 = v15;
  v21 = v14;
  if (v15)
  {
LABEL_14:
    v22 = (v20 - 1) & v20;
    v23 = *(*(a3 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v23)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= ((v13 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v20 = *(v12 + 8 * v21);
    ++v19;
    if (v20)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_265B5BE08(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x26676B7C0](a1, a2, v7);
      sub_265B5C6B8(0, &qword_280035AD8, 0x277CE8CC0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_265B5C6B8(0, &qword_280035AD8, 0x277CE8CC0);
    if (sub_265B773C0() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_265B773D0();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_265B772C0();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_265B772D0();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

id sub_265B5C02C()
{
  v0 = sub_265B76F60();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_265B76920() < 1)
  {
    sub_265B76E20();
    v7 = sub_265B76F50();
    v8 = sub_265B77280();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315138;
      sub_265B76D80();
      v11 = sub_265B76D10();
      v13 = sub_265B402B4(v11, v12, &v16);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_265B3E000, v7, v8, "longestWeeklyStreak is 0, not adding an earned instance for %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x26676C0C0](v10, -1, -1);
      MEMORY[0x26676C0C0](v9, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CE8D38]) init];
    sub_265B76D80();
    sub_265B76D50();
    v6 = sub_265B77000();

    [v5 setTemplateUniqueName_];
  }

  return v5;
}

id sub_265B5C24C(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = a1;
  v41 = a2;
  v4 = sub_265B76350();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v44 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265B76410();
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_265B76280();
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a3 progressQuantity];
  if (v16)
  {
    sub_265B45A6C();
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  result = [a3 goalQuantity];
  if (result)
  {
    v20 = result;
    sub_265B45A6C();
    v22 = v21;

    result = 0;
    if (v16)
    {
      if (v18 >= v22)
      {
        v23 = [objc_allocWithZone(MEMORY[0x277CE8D38]) init];
        v39 = v23;
        v24 = sub_265B77000();
        [v23 setTemplateUniqueName_];

        sub_265B763F0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A50, &qword_265B78E40);
        v25 = sub_265B76400();
        v26 = *(v25 - 8);
        v27 = v26;
        v40 = v4;
        v28 = *(v26 + 72);
        v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
        v41 = v12;
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_265B792B0;
        v31 = v30 + v29;
        v32 = *MEMORY[0x277CC9988];
        v38 = v8;
        v33 = *(v27 + 104);
        v33(v31, v32, v25);
        v33(v31 + v28, *MEMORY[0x277CC9998], v25);
        v33(v31 + 2 * v28, *MEMORY[0x277CC9968], v25);
        sub_265B54134(v30);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v34 = v44;
        sub_265B76340();
        sub_265B763B0();

        (*(v5 + 8))(v34, v40);
        (*(v43 + 8))(v11, v38);
        v35 = sub_265B76260();
        v36 = v39;
        [v39 setEarnedDateComponents_];

        (*(v42 + 8))(v15, v41);
        return v36;
      }
    }
  }

  return result;
}

uint64_t sub_265B5C6AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_265B5C6B8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t SeymourAchievementTemplate.toACHTemplate()()
{
  v0 = sub_265B76420();
  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x277CE8D18]);
  v4 = sub_265B76310();
  sub_265B5C898(v0, v2);
  v5 = [v3 initWithData_];

  if (v5)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CE8D50]) initWithCodable_];
    if (v6)
    {
      v2 = v6;
    }

    else
    {
      v2 = sub_265B764D0();
      sub_265B5046C();
      swift_allocError();
      (*(*(v2 - 8) + 104))(v9, *MEMORY[0x277D50D00], v2);
      swift_willThrow();
    }
  }

  else
  {
    v7 = sub_265B764D0();
    sub_265B5046C();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D50CE8], v7);
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_265B5C898(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

Swift::Void __swiftcall ACHAchievement.updateBundleURLs()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800358A0, &qword_265B78680);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = [v0 template];
  sub_265B5A268(v11);
  v13 = sub_265B762E0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = 0;
  if (v15(v11, 1, v13) != 1)
  {
    v16 = sub_265B762B0();
    (*(v14 + 8))(v11, v13);
  }

  [v1 setLocalizationBundleURL_];

  sub_265B5A98C(v9);
  if (v15(v9, 1, v13) == 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_265B762B0();
    (*(v14 + 8))(v9, v13);
  }

  [v1 setResourceBundleURL_];

  sub_265B5ADDC(v6);
  if (v15(v6, 1, v13) == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = sub_265B762B0();
    (*(v14 + 8))(v6, v13);
  }

  [v1 setPropertyListBundleURL_];

  [v1 setStickerBundleURL_];
}

unint64_t sub_265B5CB98()
{
  result = qword_280035AE0;
  if (!qword_280035AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035AE0);
  }

  return result;
}

uint64_t ACAccountStore.iTunesAccount(altDSID:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_265B5CC10, 0, 0);
}

uint64_t sub_265B5CC10()
{
  v1 = [*(v0 + 168) ams_mediaType];
  *(v0 + 176) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 160);
    v4 = *(v0 + 168);
    v5 = *(v0 + 152);
    v6 = sub_265B77000();
    v7 = [v4 ams:v6 iTunesAccountWithAltDSID:v2 forMediaType:?];
    *(v0 + 184) = v7;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_265B5CE00;
    v8 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AE8, &qword_265B79398);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_265B41010;
    *(v0 + 104) = &block_descriptor_0;
    *(v0 + 112) = v8;
    [v7 resultWithCompletion_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    sub_265B4ACC0();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_265B5CE00()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_265B5CF80;
  }

  else
  {
    v3 = sub_265B5CF10;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_265B5CF10()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 144);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_265B5CF80()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  swift_willThrow();

  v4 = v0[24];
  v5 = v0[1];

  return v5();
}

uint64_t sub_265B5CFF8()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();

  v4 = v0[22];
  v5 = v0[1];

  return v5();
}

uint64_t sub_265B5D090()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_265B5D1AC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AF0, &qword_265B793B0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_265B5D3FC;
  v0[13] = &block_descriptor_8;
  v0[14] = v2;
  [v1 aa:v0 + 10 primaryAppleAccountWithCompletion:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_265B5D1AC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_265B5D390;
  }

  else
  {
    v3 = sub_265B5D2BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_265B5D2BC()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_265B4ACC0();
    swift_allocError();
    *v3 = 2;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_265B5D390()
{
  v1 = *(v0 + 160);
  swift_willThrow();
  v2 = *(v0 + 160);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_265B5D3FC(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035950, &unk_265B78860);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t ACAccountStore.appleAccount(altDSID:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_265B5D4F0, 0, 0);
}

uint64_t sub_265B5D4F0()
{
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_265B5D60C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AF8, &qword_265B793C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_265B5D994;
  v0[13] = &block_descriptor_12;
  v0[14] = v2;
  [v1 aa:v0 + 10 appleAccountsWithCompletion:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_265B5D60C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_265B5D928;
  }

  else
  {
    v3 = sub_265B5D71C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_265B5D71C()
{
  v1 = v0[18];
  if (!v1)
  {
    goto LABEL_26;
  }

  if (v1 >> 62)
  {
LABEL_24:
    v2 = sub_265B774C0();
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_25;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_25:

LABEL_26:
    sub_265B4ACC0();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
    v19 = v0[1];

    return v19();
  }

LABEL_4:
  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x26676B830](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v7 = [v4 aa_altDSID];
    if (!v7)
    {
      goto LABEL_5;
    }

    v20 = v0[19];
    v21 = v0[20];
    v8 = v7;
    v9 = sub_265B77030();
    v11 = v10;

    if (v9 == v20 && v11 == v21)
    {
      break;
    }

    v13 = v0[19];
    v14 = v0[20];
    v15 = sub_265B77580();

    if (v15)
    {
      goto LABEL_19;
    }

LABEL_5:

    ++v3;
    if (v6 == v2)
    {
      goto LABEL_25;
    }
  }

LABEL_19:

  v16 = v0[1];

  return v16(v5);
}

uint64_t sub_265B5D928()
{
  v1 = *(v0 + 176);
  swift_willThrow();
  v2 = *(v0 + 176);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_265B5D994(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035950, &unk_265B78860);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = 0;
    if (a2)
    {
      sub_265B401DC();
      v9 = sub_265B77140();
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_265B5DA78(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_265B5A110;

  return ACAccountStore.iTunesAccount(altDSID:)(a1, a2);
}

uint64_t sub_265B5DB20()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265B5A110;

  return ACAccountStore.primaryAppleAccount()();
}

uint64_t sub_265B5DBB0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_265B5A110;

  return ACAccountStore.appleAccount(altDSID:)(a1, a2);
}

uint64_t dispatch thunk of AccountStoring.iTunesAccount(altDSID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_265B566A8;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AccountStoring.activeiTunesAccount()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265B4C6BC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of AccountStoring.primaryAppleAccount()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265B566A8;

  return v9(a1, a2);
}

uint64_t dispatch thunk of AccountStoring.appleAccount(altDSID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_265B566A8;

  return v13(a1, a2, a3, a4);
}

uint64_t ACAccount.type.getter@<X0>(char *a1@<X8>)
{
  v3 = [v1 accountType];
  if (v3 && (v4 = v3, v5 = [v3 identifier], v4, v5))
  {
    v6 = sub_265B77030();
    v8 = v7;

    v9 = *MEMORY[0x277CB8D58];
    v10 = sub_265B77030();
    if (v8)
    {
      if (v10 == v6 && v8 == v11)
      {
      }

      else
      {
        v13 = sub_265B77580();

        if ((v13 & 1) == 0)
        {
          v14 = *MEMORY[0x277CB8BA0];
          if (sub_265B77030() == v6 && v8 == v15)
          {

LABEL_19:
            v19 = 1;
            goto LABEL_15;
          }

          v20 = sub_265B77580();

          if (v20)
          {
            goto LABEL_19;
          }

          goto LABEL_14;
        }
      }

      v19 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v17 = *MEMORY[0x277CB8D58];
    sub_265B77030();
  }

  v18 = *MEMORY[0x277CB8BA0];
  sub_265B77030();

LABEL_14:
  v19 = 2;
LABEL_15:
  *a1 = v19;
  return result;
}

void ACAccount.init(_:)(uint64_t a1)
{
  v2 = sub_265B76770();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  sub_265B76650();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_4:
    v11 = *MEMORY[0x277CB8D58];
    sub_265B77030();
    sub_265B77030();
    v12 = objc_allocWithZone(MEMORY[0x277CB8F58]);
    v13 = sub_265B77000();

    v14 = sub_265B77000();

    v10 = [v12 initWithIdentifier:v13 description:v14];

    if (!v10)
    {
      goto LABEL_25;
    }

    goto LABEL_5;
  }

  v6 = *MEMORY[0x277CB8BA0];
  sub_265B77030();
  sub_265B77030();
  v7 = objc_allocWithZone(MEMORY[0x277CB8F58]);
  v8 = sub_265B77000();

  v9 = sub_265B77000();

  v10 = [v7 initWithIdentifier:v8 description:v9];

  if (!v10)
  {
    __break(1u);
    goto LABEL_4;
  }

LABEL_5:
  v15 = v10;
  sub_265B5E6A8(v5);
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAccountType_];

  if (v16)
  {
    v41 = v16;
    sub_265B765D0();
    if (v17)
    {
      v18 = sub_265B77000();
    }

    else
    {
      v18 = 0;
    }

    [v41 setIdentifier_];

    sub_265B76690();
    v39 = v15;
    if (v19)
    {
      v20 = sub_265B77000();
    }

    else
    {
      v20 = 0;
    }

    [v41 setUsername_];

    v21 = sub_265B5E704();
    v22 = v21;
    v23 = v21 + 64;
    v24 = 1 << *(v21 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(v21 + 64);
    v27 = (v24 + 63) >> 6;

    v28 = 0;
    while (v26)
    {
      v29 = v28;
LABEL_20:
      v30 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v31 = v30 | (v29 << 6);
      v32 = (*(v22 + 48) + 16 * v31);
      v33 = *v32;
      v34 = v32[1];
      sub_265B4073C(*(v22 + 56) + 32 * v31, v43);
      v42[0] = v33;
      v42[1] = v34;
      __swift_project_boxed_opaque_existential_1(v43, v43[3]);

      v35 = sub_265B77570();
      v36 = sub_265B77000();
      [v41 setAccountProperty:v35 forKey:v36];
      swift_unknownObjectRelease();

      sub_265B54CA8(v42, &qword_280035B00, &qword_265B79448);
    }

    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v29 >= v27)
      {

        v37 = sub_265B766B0();
        (*(*(v37 - 8) + 8))(v40, v37);

        return;
      }

      v26 = *(v23 + 8 * v29);
      ++v28;
      if (v26)
      {
        v28 = v29;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_265B5E6A8(uint64_t a1)
{
  v2 = sub_265B76770();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_265B5E704()
{
  v0 = sub_265B76BA0();
  v117 = *(v0 - 8);
  v118 = v0;
  v1 = *(v117 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v115 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_265B76900();
  v115 = *(v4 - 8);
  v116 = v4;
  v5 = *(v115 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265B76770();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v115 - v13;
  v15 = sub_265B66028(MEMORY[0x277D84F90]);
  v16 = *MEMORY[0x277CB8AB0];
  v17 = sub_265B77030();
  v19 = v18;
  v20 = sub_265B766A0();
  if (v21)
  {
    v22 = MEMORY[0x277D837D0];
  }

  else
  {
    v20 = 0;
    v22 = 0;
    v125 = 0;
  }

  v123 = v20;
  v124 = v21;
  v126 = v22;
  sub_265B42BBC(&v123, &v120);
  if (v121)
  {
    sub_265B5FC9C(&v120, v122);
    sub_265B4073C(v122, &v120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v119 = v15;
    sub_265B5FD44(&v120, v17, v19, isUniquelyReferenced_nonNull_native);

    __swift_destroy_boxed_opaque_existential_1(v122);
    v15 = v119;
  }

  else
  {

    sub_265B54CA8(&v120, &qword_280035A18, &qword_265B78DD8);
  }

  sub_265B54CA8(&v123, &qword_280035A18, &qword_265B78DD8);
  v24 = *MEMORY[0x277CB8B08];
  v25 = sub_265B77030();
  v27 = v26;
  v28 = sub_265B765E0();
  if (v29)
  {
    v30 = MEMORY[0x277D837D0];
  }

  else
  {
    v28 = 0;
    v30 = 0;
    v125 = 0;
  }

  v123 = v28;
  v124 = v29;
  v126 = v30;
  sub_265B42BBC(&v123, &v120);
  if (v121)
  {
    sub_265B5FC9C(&v120, v122);
    sub_265B4073C(v122, &v120);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v15;
    sub_265B5FD44(&v120, v25, v27, v31);

    __swift_destroy_boxed_opaque_existential_1(v122);
    v15 = v119;
  }

  else
  {

    sub_265B54CA8(&v120, &qword_280035A18, &qword_265B78DD8);
  }

  sub_265B54CA8(&v123, &qword_280035A18, &qword_265B78DD8);
  v32 = *MEMORY[0x277CB8AF0];
  v33 = sub_265B77030();
  v35 = v34;
  v36 = sub_265B76670();
  if (v37)
  {
    v38 = MEMORY[0x277D837D0];
  }

  else
  {
    v36 = 0;
    v38 = 0;
    v125 = 0;
  }

  v123 = v36;
  v124 = v37;
  v126 = v38;
  sub_265B42BBC(&v123, &v120);
  if (v121)
  {
    sub_265B5FC9C(&v120, v122);
    sub_265B4073C(v122, &v120);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v15;
    sub_265B5FD44(&v120, v33, v35, v39);

    __swift_destroy_boxed_opaque_existential_1(v122);
    v15 = v119;
  }

  else
  {

    sub_265B54CA8(&v120, &qword_280035A18, &qword_265B78DD8);
  }

  sub_265B54CA8(&v123, &qword_280035A18, &qword_265B78DD8);
  v40 = *MEMORY[0x277CB8B10];
  v41 = sub_265B77030();
  v43 = v42;
  v44 = sub_265B76680();
  if (v45)
  {
    v46 = MEMORY[0x277D837D0];
  }

  else
  {
    v44 = 0;
    v46 = 0;
    v125 = 0;
  }

  v123 = v44;
  v124 = v45;
  v126 = v46;
  sub_265B42BBC(&v123, &v120);
  if (v121)
  {
    sub_265B5FC9C(&v120, v122);
    sub_265B4073C(v122, &v120);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v15;
    sub_265B5FD44(&v120, v41, v43, v47);

    __swift_destroy_boxed_opaque_existential_1(v122);
    v15 = v119;
  }

  else
  {

    sub_265B54CA8(&v120, &qword_280035A18, &qword_265B78DD8);
  }

  sub_265B54CA8(&v123, &qword_280035A18, &qword_265B78DD8);
  v48 = *MEMORY[0x277CB8B18];
  v49 = sub_265B77030();
  v51 = v50;
  v52 = sub_265B76600();
  if (v53)
  {
    v54 = MEMORY[0x277D837D0];
  }

  else
  {
    v52 = 0;
    v54 = 0;
    v125 = 0;
  }

  v123 = v52;
  v124 = v53;
  v126 = v54;
  sub_265B42BBC(&v123, &v120);
  if (v121)
  {
    sub_265B5FC9C(&v120, v122);
    sub_265B4073C(v122, &v120);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v15;
    sub_265B5FD44(&v120, v49, v51, v55);

    __swift_destroy_boxed_opaque_existential_1(v122);
    v15 = v119;
  }

  else
  {

    sub_265B54CA8(&v120, &qword_280035A18, &qword_265B78DD8);
  }

  sub_265B54CA8(&v123, &qword_280035A18, &qword_265B78DD8);
  v56 = *MEMORY[0x277CB8AE8];
  v57 = sub_265B77030();
  v59 = v58;
  v60 = sub_265B76610();
  if (v61)
  {
    v62 = MEMORY[0x277D837D0];
  }

  else
  {
    v60 = 0;
    v62 = 0;
    v125 = 0;
  }

  v123 = v60;
  v124 = v61;
  v126 = v62;
  sub_265B42BBC(&v123, &v120);
  if (v121)
  {
    sub_265B5FC9C(&v120, v122);
    sub_265B4073C(v122, &v120);
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v15;
    sub_265B5FD44(&v120, v57, v59, v63);

    __swift_destroy_boxed_opaque_existential_1(v122);
    v15 = v119;
  }

  else
  {

    sub_265B54CA8(&v120, &qword_280035A18, &qword_265B78DD8);
  }

  sub_265B54CA8(&v123, &qword_280035A18, &qword_265B78DD8);
  v64 = *MEMORY[0x277CB8AC8];
  v65 = sub_265B77030();
  v67 = v66;
  v68 = sub_265B76660();
  if (v69)
  {
    v70 = MEMORY[0x277D837D0];
  }

  else
  {
    v68 = 0;
    v70 = 0;
    v125 = 0;
  }

  v123 = v68;
  v124 = v69;
  v126 = v70;
  sub_265B42BBC(&v123, &v120);
  if (v121)
  {
    sub_265B5FC9C(&v120, v122);
    sub_265B4073C(v122, &v120);
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v15;
    sub_265B5FD44(&v120, v65, v67, v71);

    __swift_destroy_boxed_opaque_existential_1(v122);
    v15 = v119;
  }

  else
  {

    sub_265B54CA8(&v120, &qword_280035A18, &qword_265B78DD8);
  }

  sub_265B54CA8(&v123, &qword_280035A18, &qword_265B78DD8);
  v72 = *MEMORY[0x277CB8A88];
  v73 = sub_265B77030();
  v75 = v74;
  v76 = sub_265B76630();
  if (v77)
  {
    v78 = MEMORY[0x277D837D0];
  }

  else
  {
    v76 = 0;
    v78 = 0;
    v125 = 0;
  }

  v123 = v76;
  v124 = v77;
  v126 = v78;
  sub_265B42BBC(&v123, &v120);
  if (v121)
  {
    sub_265B5FC9C(&v120, v122);
    sub_265B4073C(v122, &v120);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v15;
    sub_265B5FD44(&v120, v73, v75, v79);

    __swift_destroy_boxed_opaque_existential_1(v122);
    v15 = v119;
  }

  else
  {

    sub_265B54CA8(&v120, &qword_280035A18, &qword_265B78DD8);
  }

  sub_265B54CA8(&v123, &qword_280035A18, &qword_265B78DD8);
  v80 = *MEMORY[0x277CB8A98];
  v81 = sub_265B77030();
  v83 = v82;
  v84 = sub_265B765B0();
  if (v85)
  {
    v86 = MEMORY[0x277D837D0];
  }

  else
  {
    v84 = 0;
    v86 = 0;
    v125 = 0;
  }

  v123 = v84;
  v124 = v85;
  v126 = v86;
  sub_265B42BBC(&v123, &v120);
  if (v121)
  {
    sub_265B5FC9C(&v120, v122);
    sub_265B4073C(v122, &v120);
    v87 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v15;
    sub_265B5FD44(&v120, v81, v83, v87);

    __swift_destroy_boxed_opaque_existential_1(v122);
    v15 = v119;
  }

  else
  {

    sub_265B54CA8(&v120, &qword_280035A18, &qword_265B78DD8);
  }

  sub_265B54CA8(&v123, &qword_280035A18, &qword_265B78DD8);
  v88 = sub_265B765C0();
  if (v89)
  {
    v90 = MEMORY[0x277D837D0];
  }

  else
  {
    v88 = 0;
    v90 = 0;
    v125 = 0;
  }

  v123 = v88;
  v124 = v89;
  v126 = v90;
  sub_265B42BBC(&v123, &v120);
  if (v121)
  {
    sub_265B5FC9C(&v120, v122);
    sub_265B4073C(v122, &v120);
    v91 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v15;
    sub_265B5FD44(&v120, 0xD000000000000015, 0x8000000265B7A460, v91);
    __swift_destroy_boxed_opaque_existential_1(v122);
    v15 = v119;
  }

  else
  {
    sub_265B54CA8(&v120, &qword_280035A18, &qword_265B78DD8);
  }

  sub_265B54CA8(&v123, &qword_280035A18, &qword_265B78DD8);
  v92 = *MEMORY[0x277CB8AF8];
  v93 = sub_265B77030();
  v95 = v94;
  v96 = sub_265B76620();
  if (v97)
  {
    v98 = MEMORY[0x277D837D0];
  }

  else
  {
    v96 = 0;
    v98 = 0;
    v125 = 0;
  }

  v123 = v96;
  v124 = v97;
  v126 = v98;
  sub_265B42BBC(&v123, &v120);
  if (v121)
  {
    sub_265B5FC9C(&v120, v122);
    sub_265B4073C(v122, &v120);
    v99 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v15;
    sub_265B5FD44(&v120, v93, v95, v99);

    __swift_destroy_boxed_opaque_existential_1(v122);
    v15 = v119;
  }

  else
  {

    sub_265B54CA8(&v120, &qword_280035A18, &qword_265B78DD8);
  }

  sub_265B54CA8(&v123, &qword_280035A18, &qword_265B78DD8);
  v100 = *MEMORY[0x277CB8B00];
  v101 = sub_265B77030();
  v103 = v102;
  v104 = sub_265B765F0();
  if (v105)
  {
    v106 = MEMORY[0x277D837D0];
  }

  else
  {
    v104 = 0;
    v106 = 0;
    v125 = 0;
  }

  v123 = v104;
  v124 = v105;
  v126 = v106;
  sub_265B42BBC(&v123, &v120);
  if (v121)
  {
    sub_265B5FC9C(&v120, v122);
    sub_265B4073C(v122, &v120);
    v107 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v15;
    sub_265B5FD44(&v120, v101, v103, v107);

    __swift_destroy_boxed_opaque_existential_1(v122);
    v15 = v119;
  }

  else
  {

    sub_265B54CA8(&v120, &qword_280035A18, &qword_265B78DD8);
  }

  sub_265B54CA8(&v123, &qword_280035A18, &qword_265B78DD8);
  sub_265B76650();
  sub_265B60060(v14, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v109 = v115;
    v108 = v116;
    (*(v115 + 32))(v7, v12, v116);
    v110 = sub_265B60A80();
    (*(v109 + 8))(v7, v108);
  }

  else
  {
    v112 = v117;
    v111 = v118;
    (*(v117 + 32))(v3, v12, v118);
    v110 = sub_265B6CC88();
    (*(v112 + 8))(v3, v111);
  }

  sub_265B5E6A8(v14);
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v123 = v15;
  sub_265B600C4(v110, sub_265B5FCF8, 0, v113, &v123);

  return v123;
}

uint64_t sub_265B5F4A4()
{
  v1 = sub_265B77000();
  v2 = [v0 accountPropertyForKey_];

  if (v2)
  {
    sub_265B77360();
    swift_unknownObjectRelease();
    sub_265B5FC9C(&v4, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A18, &qword_265B78DD8);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265B5F580(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = sub_265B77000();
  v8 = [v4 accountPropertyForKey_];

  if (v8)
  {
    sub_265B77360();
    swift_unknownObjectRelease();
    sub_265B5FC9C(&v10, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A18, &qword_265B78DD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265B5F658()
{
  v1 = sub_265B77000();
  v2 = [v0 accountPropertyForKey_];

  if (v2)
  {
    sub_265B77360();
    swift_unknownObjectRelease();
    sub_265B5FC9C(&v4, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A18, &qword_265B78DD8);
  sub_265B5FCAC();
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265B5F730()
{
  v1 = sub_265B77000();
  v2 = [v0 accountPropertyForKey_];

  if (v2)
  {
    sub_265B77360();
    swift_unknownObjectRelease();
    sub_265B5FC9C(&v6, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A18, &qword_265B78DD8);
  v3 = swift_dynamicCast();
  v4 = v6;
  if (!v3)
  {
    return 0;
  }

  return v4;
}

void RemoteBrowsingAccount.init(account:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_265B76770();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 portableCopy];
  if (!v9)
  {
    v11 = sub_265B76590();
    sub_265B5FC44();
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D51B80], v11);
    swift_willThrow();

    return;
  }

  v10 = v9;
  sub_265B603D4(v10, v8);
  if (v2)
  {

LABEL_10:
    return;
  }

  v13 = [v10 identifier];
  if (v13)
  {
    v14 = v13;
    v15 = sub_265B77030();
    v48[20] = v16;
    v48[21] = v15;

    v17 = [v10 username];
    v48[22] = a2;
    v49 = a1;
    if (v17)
    {
      v18 = v17;
      v51 = sub_265B77030();
      v50 = v19;
    }

    else
    {
      v51 = 0;
      v50 = 0;
    }

    v20 = *MEMORY[0x277CB8AB0];
    sub_265B77030();
    v21 = sub_265B5F4A4();
    v48[18] = v22;
    v48[19] = v21;

    v23 = *MEMORY[0x277CB8B08];
    sub_265B77030();
    v24 = sub_265B5F4A4();
    v48[16] = v25;
    v48[17] = v24;

    v26 = *MEMORY[0x277CB8AF0];
    sub_265B77030();
    v27 = sub_265B5F4A4();
    v48[14] = v28;
    v48[15] = v27;

    v29 = *MEMORY[0x277CB8B10];
    sub_265B77030();
    v30 = sub_265B5F4A4();
    v48[12] = v31;
    v48[13] = v30;

    v32 = *MEMORY[0x277CB8B18];
    sub_265B77030();
    v33 = sub_265B5F4A4();
    v48[10] = v34;
    v48[11] = v33;

    v35 = *MEMORY[0x277CB8AE8];
    sub_265B77030();
    v36 = sub_265B5F4A4();
    v48[8] = v37;
    v48[9] = v36;

    v38 = *MEMORY[0x277CB8AC8];
    sub_265B77030();
    v39 = sub_265B5F4A4();
    v48[6] = v40;
    v48[7] = v39;

    v41 = *MEMORY[0x277CB8A88];
    sub_265B77030();
    v42 = sub_265B5F4A4();
    v48[4] = v43;
    v48[5] = v42;

    v44 = *MEMORY[0x277CB8A98];
    sub_265B77030();
    v48[3] = sub_265B5F4A4();
    v48[2] = v45;

    v48[1] = sub_265B5F4A4();
    v46 = *MEMORY[0x277CB8AF8];
    sub_265B77030();
    sub_265B5F4A4();

    v47 = *MEMORY[0x277CB8B00];
    sub_265B77030();
    sub_265B5F4A4();

    sub_265B76640();

    goto LABEL_10;
  }

  __break(1u);
}

unint64_t sub_265B5FC44()
{
  result = qword_280035B08;
  if (!qword_280035B08)
  {
    sub_265B76590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035B08);
  }

  return result;
}

_OWORD *sub_265B5FC9C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_265B5FCAC()
{
  result = qword_280035B30;
  if (!qword_280035B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280035B30);
  }

  return result;
}

uint64_t sub_265B5FCF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_265B4073C((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

_OWORD *sub_265B5FD44(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_265B65E98(a2, a3);
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
      sub_265B6DD64();
      v11 = v19;
      goto LABEL_8;
    }

    sub_265B643C0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_265B65E98(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_265B775A0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_265B5FC9C(a1, v23);
  }

  else
  {
    sub_265B5FE94(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_265B5FE94(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_265B5FC9C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_265B5FF00@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_265B4073C(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_265B5FC9C(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_265B54CA8(v22, &qword_280035B00, &qword_265B79448);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_265B60060(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B76770();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_265B600C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_265B5FF00(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_265B5FC9C(v46, v44);
  v14 = *a5;
  result = sub_265B65E98(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_265B643C0(v20, a4 & 1);
    v22 = *a5;
    result = sub_265B65E98(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_265B775A0();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_265B6DD64();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_265B5FC9C(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_265B5FC9C(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_265B5FF00(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_265B5FC9C(v46, v44);
        v33 = *a5;
        result = sub_265B65E98(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_265B643C0(v37, 1);
          v38 = *a5;
          result = sub_265B65E98(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_1(v32);
          sub_265B5FC9C(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_265B5FC9C(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_265B5FF00(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_265B45764();
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_265B603D4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_265B76BA0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_265B76900();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  ACAccount.type.getter(&v18);
  if (v18 == 2)
  {
    v15 = sub_265B76590();
    sub_265B5FC44();
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D51BD0], v15);
    swift_willThrow();

    return;
  }

  if (v18)
  {
    sub_265B60654(a1);
    if (v2)
    {
      return;
    }

    (*(v11 + 32))(a2, v14, v10);
  }

  else
  {
    sub_265B6BE88(a1);
    if (v2)
    {
      return;
    }

    (*(v6 + 32))(a2, v9, v5);
  }

  sub_265B76770();
  swift_storeEnumTagMultiPayload();
}

void sub_265B60654(void *a1)
{
  if (!sub_265B5F490(0x6E496E6F69676572, 0xEA00000000006F66))
  {
    sub_265B66138(MEMORY[0x277D84F90]);
  }

  v2 = *MEMORY[0x277CEC958];
  v3 = sub_265B77030();
  v5 = sub_265B5F45C(v3, v4);

  if (!v5)
  {
    sub_265B6624C(MEMORY[0x277D84F90]);
  }

  sub_265B5F484();
  sub_265B5F470(0xD00000000000001ELL, 0x8000000265B7A420);
  v6 = [a1 aa_primaryEmail];
  if (v6)
  {
    v7 = v6;
    sub_265B77030();
  }

  v8 = [a1 username];
  if (v8)
  {
    v9 = v8;
    sub_265B77030();
  }

  v10 = [a1 aa_appleIDAliases];
  if (v10)
  {
    v11 = v10;
    sub_265B77140();
  }

  v12 = [a1 aa_personID];
  if (v12)
  {
    v13 = v12;
    sub_265B77030();
  }

  v14 = [a1 aa_altDSID];
  if (v14)
  {
    v15 = v14;
    sub_265B77030();
  }

  v16 = [a1 aa_firstName];
  if (v16)
  {
    v17 = v16;
    sub_265B77030();
  }

  v18 = [a1 aa_middleName];
  if (v18)
  {
    v19 = v18;
    sub_265B77030();
  }

  v20 = [a1 aa_lastName];
  if (v20)
  {
    v21 = v20;
    sub_265B77030();
  }

  v22 = [a1 aa_accountClass];
  if (v22)
  {
    v23 = v22;
    sub_265B77030();

    [a1 aa_isUsingCloudDocs];
    [a1 aa_isPrimaryEmailVerified];
    [a1 aa_isManagedAppleID];
    [a1 aa_isNotesMigrated];
    [a1 aa_isRemindersMigrated];
    [a1 aa_isSandboxAccount];
    [a1 aa_isFamilyEligible];
    [a1 aa_hasOptionalTerms];
    [a1 aa_needsToVerifyTerms];
    sub_265B767F0();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_265B60A80()
{
  v0 = sub_265B66028(MEMORY[0x277D84F90]);
  v1 = sub_265B76800();
  if (v2)
  {
    v3 = MEMORY[0x277D837D0];
  }

  else
  {
    v1 = 0;
    v3 = 0;
    v73 = 0;
  }

  v71 = v1;
  v72 = v2;
  v74 = v3;
  sub_265B42BBC(&v71, &v68);
  if (v69)
  {
    sub_265B5FC9C(&v68, v70);
    sub_265B4073C(v70, &v68);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v68, 0x457972616D697270, 0xEC0000006C69616DLL, isUniquelyReferenced_nonNull_native);
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    sub_265B42C2C(&v68);
  }

  sub_265B42C2C(&v71);
  v5 = sub_265B767B0();
  if (v6)
  {
    v7 = MEMORY[0x277D837D0];
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v73 = 0;
  }

  v71 = v5;
  v72 = v6;
  v74 = v7;
  sub_265B42BBC(&v71, &v68);
  if (v69)
  {
    sub_265B5FC9C(&v68, v70);
    sub_265B4073C(v70, &v68);
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v68, 0x6449656C707061, 0xE700000000000000, v8);
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    sub_265B42C2C(&v68);
  }

  sub_265B42C2C(&v71);
  v9 = sub_265B76850();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035B10, &qword_265B79468);
  v74 = v10;
  v71 = v9;
  sub_265B42BBC(&v71, &v68);
  if (v69)
  {
    sub_265B5FC9C(&v68, v70);
    sub_265B4073C(v70, &v68);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v68, 0x414449656C707061, 0xEE0073657361696CLL, v11);
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    sub_265B42C2C(&v68);
  }

  sub_265B42C2C(&v71);
  v12 = sub_265B76840();
  if (v13)
  {
    v14 = MEMORY[0x277D837D0];
  }

  else
  {
    v12 = 0;
    v14 = 0;
    v73 = 0;
  }

  v71 = v12;
  v72 = v13;
  v74 = v14;
  sub_265B42BBC(&v71, &v68);
  if (v69)
  {
    sub_265B5FC9C(&v68, v70);
    sub_265B4073C(v70, &v68);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v68, 0x44496E6F73726570, 0xE800000000000000, v15);
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    sub_265B42C2C(&v68);
  }

  sub_265B42C2C(&v71);
  v16 = sub_265B768D0();
  if (v17)
  {
    v18 = MEMORY[0x277D837D0];
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v73 = 0;
  }

  v71 = v16;
  v72 = v17;
  v74 = v18;
  sub_265B42BBC(&v71, &v68);
  if (v69)
  {
    sub_265B5FC9C(&v68, v70);
    sub_265B4073C(v70, &v68);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v68, 0x44495344746C61, 0xE700000000000000, v19);
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    sub_265B42C2C(&v68);
  }

  sub_265B42C2C(&v71);
  v20 = sub_265B768F0();
  if (v21)
  {
    v22 = MEMORY[0x277D837D0];
  }

  else
  {
    v20 = 0;
    v22 = 0;
    v73 = 0;
  }

  v71 = v20;
  v72 = v21;
  v74 = v22;
  sub_265B42BBC(&v71, &v68);
  if (v69)
  {
    sub_265B5FC9C(&v68, v70);
    sub_265B4073C(v70, &v68);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v68, 0x6D614E7473726966, 0xE900000000000065, v23);
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    sub_265B42C2C(&v68);
  }

  sub_265B42C2C(&v71);
  v24 = sub_265B767C0();
  if (v25)
  {
    v26 = MEMORY[0x277D837D0];
  }

  else
  {
    v24 = 0;
    v26 = 0;
    v73 = 0;
  }

  v71 = v24;
  v72 = v25;
  v74 = v26;
  sub_265B42BBC(&v71, &v68);
  if (v69)
  {
    sub_265B5FC9C(&v68, v70);
    sub_265B4073C(v70, &v68);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v68, 0x614E656C6464696DLL, 0xEA0000000000656DLL, v27);
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    sub_265B42C2C(&v68);
  }

  sub_265B42C2C(&v71);
  v28 = sub_265B768E0();
  if (v29)
  {
    v30 = MEMORY[0x277D837D0];
  }

  else
  {
    v28 = 0;
    v30 = 0;
    v73 = 0;
  }

  v71 = v28;
  v72 = v29;
  v74 = v30;
  sub_265B42BBC(&v71, &v68);
  if (v69)
  {
    sub_265B5FC9C(&v68, v70);
    sub_265B4073C(v70, &v68);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v68, 0x656D614E7473616CLL, 0xE800000000000000, v31);
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    sub_265B42C2C(&v68);
  }

  v32 = MEMORY[0x277D837D0];
  sub_265B42C2C(&v71);
  v33 = sub_265B767D0();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035B20, &qword_265B79478);
  v71 = v33;
  sub_265B42BBC(&v71, &v68);
  if (v69)
  {
    sub_265B5FC9C(&v68, v70);
    sub_265B4073C(v70, &v68);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v68, 0x6E496E6F69676572, 0xEA00000000006F66, v34);
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    sub_265B42C2C(&v68);
  }

  sub_265B42C2C(&v71);
  v35 = sub_265B767E0();
  v74 = v32;
  v71 = v35;
  v72 = v36;
  sub_265B42BBC(&v71, &v68);
  if (v69)
  {
    sub_265B5FC9C(&v68, v70);
    sub_265B4073C(v70, &v68);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v68, 0x43746E756F636361, 0xEC0000007373616CLL, v37);
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    sub_265B42C2C(&v68);
  }

  sub_265B42C2C(&v71);
  v38 = sub_265B76880();
  v39 = MEMORY[0x277D839B0];
  v74 = MEMORY[0x277D839B0];
  LOBYTE(v71) = v38 & 1;
  sub_265B42BBC(&v71, &v68);
  if (v69)
  {
    sub_265B5FC9C(&v68, v70);
    sub_265B4073C(v70, &v68);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v68, 0x756F6C4373657375, 0xED000073636F4464, v40);
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    sub_265B42C2C(&v68);
  }

  sub_265B42C2C(&v71);
  v41 = sub_265B768A0();
  v74 = v39;
  LOBYTE(v71) = v41 & 1;
  sub_265B42BBC(&v71, &v68);
  if (v69)
  {
    sub_265B5FC9C(&v68, v70);
    sub_265B4073C(v70, &v68);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v68, 0xD000000000000014, 0x8000000265B7A440, v42);
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    sub_265B42C2C(&v68);
  }

  sub_265B42C2C(&v71);
  v43 = sub_265B76790();
  v74 = v39;
  LOBYTE(v71) = v43 & 1;
  sub_265B42BBC(&v71, &v68);
  if (v69)
  {
    sub_265B5FC9C(&v68, v70);
    sub_265B4073C(v70, &v68);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v68, 0xD000000000000010, 0x8000000265B79E80, v44);
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    sub_265B42C2C(&v68);
  }

  sub_265B42C2C(&v71);
  v45 = sub_265B76810();
  v74 = v39;
  LOBYTE(v71) = v45 & 1;
  sub_265B42BBC(&v71, &v68);
  if (v69)
  {
    sub_265B5FC9C(&v68, v70);
    sub_265B4073C(v70, &v68);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v68, 0x67694D7365746F6ELL, 0xED00006465746172, v46);
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    sub_265B42C2C(&v68);
  }

  sub_265B42C2C(&v71);
  v47 = sub_265B76870();
  v74 = v39;
  LOBYTE(v71) = v47 & 1;
  sub_265B42BBC(&v71, &v68);
  if (v69)
  {
    sub_265B5FC9C(&v68, v70);
    sub_265B4073C(v70, &v68);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v68, 0xD000000000000011, 0x8000000265B7A3E0, v48);
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    sub_265B42C2C(&v68);
  }

  sub_265B42C2C(&v71);
  v49 = sub_265B767A0();
  v74 = v39;
  LOBYTE(v71) = v49 & 1;
  sub_265B42BBC(&v71, &v68);
  if (v69)
  {
    sub_265B5FC9C(&v68, v70);
    sub_265B4073C(v70, &v68);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v68, 0x6F62646E61537369, 0xED00007463634178, v50);
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    sub_265B42C2C(&v68);
  }

  sub_265B42C2C(&v71);
  v51 = sub_265B76830();
  v74 = v39;
  LOBYTE(v71) = v51 & 1;
  sub_265B42BBC(&v71, &v68);
  if (v69)
  {
    sub_265B5FC9C(&v68, v70);
    sub_265B4073C(v70, &v68);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v68, 0x6C45796C696D6166, 0xEE00656C62696769, v52);
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    sub_265B42C2C(&v68);
  }

  sub_265B42C2C(&v71);
  v53 = sub_265B76820();
  v74 = v39;
  LOBYTE(v71) = v53 & 1;
  sub_265B42BBC(&v71, &v68);
  if (v69)
  {
    sub_265B5FC9C(&v68, v70);
    sub_265B4073C(v70, &v68);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v68, 0xD000000000000010, 0x8000000265B7A3C0, v54);
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    sub_265B42C2C(&v68);
  }

  sub_265B42C2C(&v71);
  v55 = sub_265B76860();
  v74 = v39;
  LOBYTE(v71) = v55 & 1;
  sub_265B42BBC(&v71, &v68);
  if (v69)
  {
    sub_265B5FC9C(&v68, v70);
    sub_265B4073C(v70, &v68);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v68, 0xD000000000000012, 0x8000000265B7A400, v56);
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    sub_265B42C2C(&v68);
  }

  sub_265B42C2C(&v71);
  v57 = *MEMORY[0x277CEC958];
  v58 = sub_265B77030();
  v60 = v59;
  v61 = sub_265B768B0();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035B18, &qword_265B79470);
  v71 = v61;
  sub_265B42BBC(&v71, &v68);
  if (v69)
  {
    sub_265B5FC9C(&v68, v70);
    sub_265B4073C(v70, &v68);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v68, v58, v60, v62);

    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {

    sub_265B42C2C(&v68);
  }

  sub_265B42C2C(&v71);
  v63 = sub_265B76890();
  v74 = MEMORY[0x277D83E88];
  v71 = v63;
  sub_265B42BBC(&v71, &v68);
  if (v69)
  {
    sub_265B5FC9C(&v68, v70);
    sub_265B4073C(v70, &v68);
    v64 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v68, 0x7453726961706572, 0xEB00000000657461, v64);
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    sub_265B42C2C(&v68);
  }

  sub_265B42C2C(&v71);
  v65 = sub_265B768C0();
  v74 = v10;
  v71 = v65;
  sub_265B42BBC(&v71, &v68);
  if (v69)
  {
    sub_265B5FC9C(&v68, v70);
    sub_265B4073C(v70, &v68);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v68, 0xD00000000000001ELL, 0x8000000265B7A420, v66);
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    sub_265B42C2C(&v68);
  }

  sub_265B42C2C(&v71);
  return v0;
}

unint64_t sub_265B618DC()
{
  result = qword_280035B38;
  if (!qword_280035B38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280035B38);
  }

  return result;
}

char *sub_265B619D4(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC21SeymourClientServices17AppRecordObserver_onRecordUpdated];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR____TtC21SeymourClientServices17AppRecordObserver_bundleIdentifier];
  *v6 = a1;
  *(v6 + 1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C08, &qword_265B795C8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_265B78400;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_265B77130();

  v9 = [objc_opt_self() queryForBundleIDs_];

  *&v2[OBJC_IVAR____TtC21SeymourClientServices17AppRecordObserver_query] = v9;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for AppRecordObserver();
  v10 = objc_msgSendSuper2(&v12, sel_init);
  [*&v10[OBJC_IVAR____TtC21SeymourClientServices17AppRecordObserver_query] setObserver_];
  return v10;
}

id sub_265B61B20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppRecordObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_265B61BDC(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = a3;
  v27 = a2;
  v25 = a1;
  v3 = sub_265B76F70();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_265B76FA0();
  v8 = *(v28 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v28);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_265B76F80();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B5C6B8(0, &qword_280035CA0, 0x277D85C78);
  (*(v13 + 104))(v16, *MEMORY[0x277D851B8], v12);
  v17 = sub_265B772B0();
  (*(v13 + 8))(v16, v12);
  v18 = swift_allocObject();
  v19 = v25;
  v20 = v26;
  v18[2] = v26;
  v18[3] = v19;
  v18[4] = v27;
  aBlock[4] = sub_265B6331C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_265B639B8;
  aBlock[3] = &block_descriptor_1;
  v21 = _Block_copy(aBlock);
  v22 = v20;

  sub_265B76F90();
  v29 = MEMORY[0x277D84F90];
  sub_265B63328();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035BD8, &qword_265B795B0);
  sub_265B63380();
  sub_265B77370();
  MEMORY[0x26676B680](0, v11, v7, v21);
  _Block_release(v21);

  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v28);
}

void sub_265B61F40(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265B76F60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B76E50();
  sub_265B76F40();
  (*(v7 + 8))(v10, v6);
  v11 = *&a1[OBJC_IVAR____TtC21SeymourClientServices17AppRecordObserver_query];
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a1;
  aBlock[4] = sub_265B633E4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_265B62ED8;
  aBlock[3] = &block_descriptor_13;
  v13 = _Block_copy(aBlock);

  v14 = a1;

  [v11 executeQueryWithResultHandler_];
  _Block_release(v13);
}

uint64_t sub_265B62108(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *p_aBlock)
{
  v80 = a3;
  v81 = a4;
  v8 = sub_265B76F70();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v83 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_265B76FA0();
  v84 = *(v12 - 8);
  v13 = *(v84 + 64);
  MEMORY[0x28223BE20](v12);
  v82 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_265B76F60();
  v78 = *(v15 - 8);
  v79 = v15;
  v16 = *(v78 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v76 = &v74 - v20;
  if (a1)
  {
    v77 = v12;
    aBlock = MEMORY[0x277D84F90];
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_31;
    }

    v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    if (v22)
    {
      v74 = v9;
      v75 = v8;
      v23 = 0;
      v8 = (p_aBlock + OBJC_IVAR____TtC21SeymourClientServices17AppRecordObserver_bundleIdentifier);
      v85 = a1 & 0xC000000000000001;
      while (1)
      {
        if (v85)
        {
          v25 = MEMORY[0x26676B830](v23, a1);
        }

        else
        {
          if (v23 >= *(v21 + 16))
          {
            goto LABEL_30;
          }

          v25 = *(a1 + 8 * v23 + 32);
        }

        v26 = v25;
        v27 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          v22 = sub_265B774C0();
          goto LABEL_4;
        }

        v9 = v22;
        v28 = a1;
        v29 = [v25 bundleID];
        v30 = sub_265B77030();
        p_aBlock = v31;

        if (v30 == *v8 && p_aBlock == v8[1])
        {

          v22 = v9;
        }

        else
        {
          v33 = sub_265B77580();

          v22 = v9;
          if ((v33 & 1) == 0)
          {

            goto LABEL_8;
          }
        }

        p_aBlock = &aBlock;
        sub_265B77470();
        v24 = aBlock[2];
        sub_265B774A0();
        sub_265B774B0();
        sub_265B77480();
LABEL_8:
        a1 = v28;
        ++v23;
        if (v27 == v22)
        {
          v34 = aBlock;
          v9 = v74;
          v8 = v75;
          goto LABEL_25;
        }
      }
    }

    v34 = MEMORY[0x277D84F90];
LABEL_25:
    v54 = v76;
    sub_265B76E50();

    v55 = sub_265B76F50();
    v56 = sub_265B77280();

    v57 = os_log_type_enabled(v55, v56);
    v58 = v77;
    if (v57)
    {
      v59 = v34;
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      aBlock = v61;
      *v60 = 141558274;
      *(v60 + 4) = 1752392040;
      *(v60 + 12) = 2080;
      v62 = sub_265B5C6B8(0, &qword_280035BE8, 0x277CEC328);
      v63 = MEMORY[0x26676B530](a1, v62);
      v65 = sub_265B402B4(v63, v64, &aBlock);

      *(v60 + 14) = v65;
      _os_log_impl(&dword_265B3E000, v55, v56, "Filtering %{mask.hash}s", v60, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x26676C0C0](v61, -1, -1);
      v66 = v60;
      v34 = v59;
      v58 = v77;
      MEMORY[0x26676C0C0](v66, -1, -1);
    }

    (*(v78 + 8))(v54, v79);
    v67 = v84;
    sub_265B5C6B8(0, &qword_280035CA0, 0x277D85C78);
    v68 = sub_265B77290();
    v69 = swift_allocObject();
    v70 = v80;
    v69[2] = v34;
    v69[3] = v70;
    v69[4] = v81;
    v91 = sub_265B633FC;
    v92 = v69;
    aBlock = MEMORY[0x277D85DD0];
    v88 = 1107296256;
    v89 = sub_265B639B8;
    v90 = &block_descriptor_25;
    v71 = _Block_copy(&aBlock);

    v72 = v82;
    sub_265B76F90();
    aBlock = MEMORY[0x277D84F90];
    sub_265B63328();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035BD8, &qword_265B795B0);
    sub_265B63380();
    v73 = v83;
    sub_265B77370();
    MEMORY[0x26676B680](0, v72, v73, v71);
    _Block_release(v71);

    (*(v9 + 8))(v73, v8);
    return (*(v67 + 8))(v72, v58);
  }

  else
  {
    sub_265B76E50();
    v35 = a2;
    v36 = sub_265B76F50();
    v37 = sub_265B77270();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v77 = v12;
      v39 = v9;
      v40 = v38;
      v41 = swift_slowAlloc();
      v86 = a2;
      aBlock = v41;
      *v40 = 136446210;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280035BF0, &qword_265B795B8);
      v42 = sub_265B772E0();
      v44 = sub_265B402B4(v42, v43, &aBlock);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_265B3E000, v36, v37, "Failed to execute query: %{public}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x26676C0C0](v41, -1, -1);
      v45 = v40;
      v9 = v39;
      v12 = v77;
      MEMORY[0x26676C0C0](v45, -1, -1);
    }

    (*(v78 + 8))(v19, v79);
    sub_265B5C6B8(0, &qword_280035CA0, 0x277D85C78);
    v46 = sub_265B77290();
    v47 = swift_allocObject();
    v48 = v81;
    v47[2] = v80;
    v47[3] = v48;
    v47[4] = a2;
    v91 = sub_265B633F0;
    v92 = v47;
    aBlock = MEMORY[0x277D85DD0];
    v88 = 1107296256;
    v89 = sub_265B639B8;
    v90 = &block_descriptor_19;
    v49 = _Block_copy(&aBlock);

    v50 = a2;

    v51 = v82;
    sub_265B76F90();
    aBlock = MEMORY[0x277D84F90];
    sub_265B63328();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035BD8, &qword_265B795B0);
    sub_265B63380();
    v52 = v83;
    sub_265B77370();
    MEMORY[0x26676B680](0, v51, v52, v49);
    _Block_release(v49);

    (*(v9 + 8))(v52, v8);
    return (*(v84 + 8))(v51, v12);
  }
}

uint64_t sub_265B629A8(void (*a1)(void *), int a2, id a3)
{
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    sub_265B63470();
    v5 = swift_allocError();
    *v6 = 5;
  }

  v9[0] = v5;
  v10 = 1;
  v7 = a3;
  a1(v9);
  return sub_265B63408(v9);
}

uint64_t sub_265B62A38(unint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v6 = sub_265B76F60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v45[-v12];
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:
    sub_265B76E50();

    v34 = sub_265B76F50();
    v35 = sub_265B77280();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v50[0] = v37;
      *v36 = 141558274;
      *(v36 + 4) = 1752392040;
      *(v36 + 12) = 2080;
      v38 = sub_265B5C6B8(0, &qword_280035BE8, 0x277CEC328);
      v39 = MEMORY[0x26676B530](a1, v38);
      v49 = v6;
      v41 = v7;
      v42 = sub_265B402B4(v39, v40, v50);

      *(v36 + 14) = v42;
      _os_log_impl(&dword_265B3E000, v34, v35, "No app found from %{mask.hash}s!", v36, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x26676C0C0](v37, -1, -1);
      MEMORY[0x26676C0C0](v36, -1, -1);

      (*(v41 + 8))(v11, v49);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }

    sub_265B63470();
    v43 = swift_allocError();
    *v44 = 3;
    v50[0] = v43;
    v51 = 1;
    a2(v50);
    return sub_265B63408(v50);
  }

  result = sub_265B774C0();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x26676B830](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(a1 + 32);
LABEL_6:
    v16 = v15;
    sub_265B76E50();
    v17 = v16;
    v18 = sub_265B76F50();
    v19 = sub_265B77280();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v50[0] = v47;
      *v20 = 141558274;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2080;
      v21 = v17;
      v48 = a3;
      v22 = v21;
      v23 = [v21 description];
      v49 = v6;
      v24 = v23;
      v25 = sub_265B77030();
      v46 = v19;
      v26 = v7;
      v27 = v25;
      v28 = a2;
      v30 = v29;

      v31 = sub_265B402B4(v27, v30, v50);
      a2 = v28;

      *(v20 + 14) = v31;
      _os_log_impl(&dword_265B3E000, v18, v46, "Found app %{mask.hash}s!", v20, 0x16u);
      v32 = v47;
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x26676C0C0](v32, -1, -1);
      MEMORY[0x26676C0C0](v20, -1, -1);

      (*(v26 + 8))(v13, v49);
    }

    else
    {

      (*(v7 + 8))(v13, v6);
    }

    v50[3] = sub_265B5C6B8(0, &qword_280035BE8, 0x277CEC328);
    v50[4] = &protocol witness table for ASDApp;
    v50[0] = v17;
    v51 = 0;
    v33 = v17;
    a2(v50);

    return sub_265B63408(v50);
  }

  __break(1u);
  return result;
}

uint64_t sub_265B62ED8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_265B5C6B8(0, &qword_280035BE8, 0x277CEC328);
    v4 = sub_265B77140();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_265B62F7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_265B62FC0()
{
  v1 = (v0 + OBJC_IVAR____TtC21SeymourClientServices17AppRecordObserver_onRecordUpdated);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_265B469D8(v3);
  return v3;
}

uint64_t sub_265B6301C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21SeymourClientServices17AppRecordObserver_onRecordUpdated);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_265B63998(v6);
}

uint64_t sub_265B63120()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280035BC0, &qword_265B795A8);

  return sub_265B76BB0();
}

void sub_265B631AC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong + OBJC_IVAR____TtC21SeymourClientServices17AppRecordObserver_onRecordUpdated;
    v5 = Strong;
    swift_beginAccess();
    v7 = *v4;
    v6 = *(v4 + 8);
    sub_265B469D8(v7);

    if (v7)
    {
      v9[3] = sub_265B5C6B8(0, &qword_280035BE8, 0x277CEC328);
      v9[4] = &protocol witness table for ASDApp;
      v9[0] = a2;
      v8 = a2;
      v7(v9);
      sub_265B63998(v7);
      __swift_destroy_boxed_opaque_existential_1(v9);
    }
  }
}

unint64_t sub_265B63328()
{
  result = qword_280035BD0;
  if (!qword_280035BD0)
  {
    sub_265B76F70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035BD0);
  }

  return result;
}

unint64_t sub_265B63380()
{
  result = qword_280035BE0;
  if (!qword_280035BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280035BD8, &qword_265B795B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035BE0);
  }

  return result;
}

uint64_t sub_265B63408(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C90, &qword_265B795C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_265B63470()
{
  result = qword_280035C00;
  if (!qword_280035C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035C00);
  }

  return result;
}

uint64_t sub_265B634C4(unint64_t a1)
{
  v2 = sub_265B76F70();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_265B76FA0();
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v7);
  v36 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v32 = v6;
    v33 = v7;
    v34 = v3;
    v35 = v2;
    v6 = 0;
    v2 = (v38 + OBJC_IVAR____TtC21SeymourClientServices17AppRecordObserver_bundleIdentifier);
    v39 = a1 & 0xC000000000000001;
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v39)
      {
        v13 = MEMORY[0x26676B830](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v13 = *(a1 + 8 * v6 + 32);
      }

      v14 = v13;
      v15 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        v10 = sub_265B774C0();
        goto LABEL_3;
      }

      v3 = v10;
      v16 = [v13 bundleID];
      v17 = sub_265B77030();
      v19 = v18;

      if (v17 == *v2 && v19 == v2[1])
      {

        v10 = v3;
      }

      else
      {
        v21 = sub_265B77580();

        v10 = v3;
        if ((v21 & 1) == 0)
        {

          goto LABEL_7;
        }
      }

      sub_265B77470();
      v12 = *(aBlock[0] + 16);
      sub_265B774A0();
      sub_265B774B0();
      sub_265B77480();
LABEL_7:
      ++v6;
      if (v15 == v10)
      {
        result = aBlock[0];
        v3 = v34;
        v2 = v35;
        v6 = v32;
        v7 = v33;
        break;
      }
    }
  }

  if (result < 0 || (result & 0x4000000000000000) != 0)
  {
    v30 = result;
    v31 = sub_265B774C0();
    result = v30;
    if (v31)
    {
      goto LABEL_23;
    }

LABEL_31:
  }

  if (!*(result + 16))
  {
    goto LABEL_31;
  }

LABEL_23:
  if ((result & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x26676B830](0, result);
    goto LABEL_26;
  }

  if (*(result + 16))
  {
    v22 = *(result + 32);
LABEL_26:
    v23 = v22;

    sub_265B5C6B8(0, &qword_280035CA0, 0x277D85C78);
    v24 = sub_265B77290();
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v23;
    aBlock[4] = sub_265B63990;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265B639B8;
    aBlock[3] = &block_descriptor_34;
    v27 = _Block_copy(aBlock);
    v28 = v23;

    v29 = v36;
    sub_265B76F90();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_265B63328();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035BD8, &qword_265B795B0);
    sub_265B63380();
    sub_265B77370();
    MEMORY[0x26676B680](0, v29, v6, v27);
    _Block_release(v27);

    (*(v3 + 8))(v6, v2);
    return (*(v37 + 8))(v29, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_265B63998(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void PersonalizationAwardProgressReference.init(fromACHProgressUpdate:modalityReferences:)(void *a1, uint64_t a2)
{
  v4 = [a1 goalQuantity];
  if (v4)
  {
    v5 = v4;
    sub_265B45A6C();
  }

  v6 = [a1 progressQuantity];
  if (v6)
  {
    v7 = v6;
    sub_265B45A6C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C10, &qword_265B795D0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000012;
  *(inited + 16) = xmmword_265B78400;
  *(inited + 40) = 0x8000000265B7A560;
  v9 = ACHAchievementProgressUpdate.modalityIdentifier(from:)(a2);
  v11 = v10;

  if (v11)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v14 = HIBYTE(v13) & 0xF;
  v15 = v12 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v16 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    v40 = 0;
    LOBYTE(v39) = 1;
LABEL_76:
    *(inited + 48) = v40;
    *(inited + 52) = v39 & 1;
    v41 = sub_265B66554(inited);
    swift_setDeallocating();
    sub_265B66668(inited + 32);
    sub_265B63E44(v41);

    ACHAchievementProgressUpdate.isRequired.getter();
    v42 = [a1 templateUniqueName];
    sub_265B77030();

    sub_265B76A00();
    return;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {
    v20 = sub_265B654A8(v12, v13, 10);

    v39 = (v20 >> 32) & 1;
LABEL_73:
    if (v39)
    {
      v40 = 0;
    }

    else
    {
      v40 = v20;
    }

    goto LABEL_76;
  }

  if ((v13 & 0x2000000000000000) == 0)
  {
    if ((v12 & 0x1000000000000000) != 0)
    {
      v17 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v17 = sub_265B77460();
    }

    v18 = *v17;
    if (v18 == 43)
    {
      if (v15 >= 1)
      {
        v27 = v15 - 1;
        if (v15 != 1)
        {
          LODWORD(v20) = 0;
          if (v17)
          {
            v28 = v17 + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_71;
              }

              v30 = 10 * v20;
              if ((v30 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_71;
              }

              LODWORD(v20) = v30 + v29;
              if (__CFADD__(v30, v29))
              {
                goto LABEL_71;
              }

              ++v28;
              if (!--v27)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_72;
        }

        goto LABEL_71;
      }

      goto LABEL_82;
    }

    if (v18 != 45)
    {
      if (v15)
      {
        LODWORD(v20) = 0;
        if (v17)
        {
          while (1)
          {
            v34 = *v17 - 48;
            if (v34 > 9)
            {
              goto LABEL_71;
            }

            v35 = 10 * v20;
            if ((v35 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_71;
            }

            LODWORD(v20) = v35 + v34;
            if (__CFADD__(v35, v34))
            {
              goto LABEL_71;
            }

            ++v17;
            if (!--v15)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_72;
      }

LABEL_71:
      LODWORD(v20) = 0;
      LOBYTE(v17) = 1;
      goto LABEL_72;
    }

    if (v15 >= 1)
    {
      v19 = v15 - 1;
      if (v15 != 1)
      {
        LODWORD(v20) = 0;
        if (v17)
        {
          v21 = v17 + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              goto LABEL_71;
            }

            v23 = 10 * v20;
            if ((v23 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_71;
            }

            LODWORD(v20) = v23 - v22;
            if (v23 < v22)
            {
              goto LABEL_71;
            }

            ++v21;
            if (!--v19)
            {
              goto LABEL_70;
            }
          }
        }

LABEL_72:
        v44 = v17;
        LOBYTE(v39) = v17;

        goto LABEL_73;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v43[0] = v12;
  v43[1] = v13 & 0xFFFFFFFFFFFFFFLL;
  if (v12 != 43)
  {
    if (v12 != 45)
    {
      if (v14)
      {
        LODWORD(v20) = 0;
        v36 = v43;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          v38 = 10 * v20;
          if ((v38 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v20) = v38 + v37;
          if (__CFADD__(v38, v37))
          {
            break;
          }

          ++v36;
          if (!--v14)
          {
LABEL_70:
            LOBYTE(v17) = 0;
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v14)
    {
      v17 = (v14 - 1);
      if (v14 != 1)
      {
        LODWORD(v20) = 0;
        v24 = v43 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v20;
          if ((v26 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v20) = v26 - v25;
          if (v26 < v25)
          {
            break;
          }

          ++v24;
          if (!--v17)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_81;
  }

  if (v14)
  {
    v17 = (v14 - 1);
    if (v14 != 1)
    {
      LODWORD(v20) = 0;
      v31 = v43 + 1;
      while (1)
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          break;
        }

        v33 = 10 * v20;
        if ((v33 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v20) = v33 + v32;
        if (__CFADD__(v33, v32))
        {
          break;
        }

        ++v31;
        if (!--v17)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_83:
  __break(1u);
}

uint64_t sub_265B63E44(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v31 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = v10 | (v9 << 6);
        v12 = *(a1 + 56) + 8 * v11;
        if ((*(v12 + 4) & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v14 = (*(a1 + 48) + 16 * v11);
      v29 = v14[1];
      v30 = *v14;
      v28 = *v12;
      v15 = *(v2 + 16);
      if (*(v2 + 24) <= v15)
      {

        sub_265B64BC4(v15 + 1, 1);
        v2 = v31;
      }

      else
      {
      }

      v16 = *(v2 + 40);
      sub_265B77600();
      sub_265B77070();
      result = sub_265B77620();
      v17 = v2 + 64;
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
      v22 = v29;
LABEL_24:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v27 = (*(v2 + 48) + 16 * v21);
      *v27 = v30;
      v27[1] = v22;
      *(*(v2 + 56) + 4 * v21) = v28;
      ++*(v2 + 16);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v23 = 0;
    v24 = (63 - v18) >> 6;
    v22 = v29;
    while (++v20 != v24 || (v23 & 1) == 0)
    {
      v25 = v20 == v24;
      if (v20 == v24)
      {
        v20 = 0;
      }

      v23 |= v25;
      v26 = *(v17 + 8 * v20);
      if (v26 != -1)
      {
        v21 = __clz(__rbit64(~v26)) + (v20 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v13 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v13);
      ++v9;
      if (v6)
      {
        v9 = v13;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_265B64094(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359F8, &qword_265B78D70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_265B64108(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C48, &qword_265B79608);
  v37 = a2;
  result = sub_265B774E0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_265B77600();
      sub_265B77070();
      result = sub_265B77620();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_265B643C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C58, &qword_265B79618);
  v36 = a2;
  result = sub_265B774E0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_265B5FC9C(v25, v37);
      }

      else
      {
        sub_265B4073C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_265B77600();
      sub_265B77070();
      result = sub_265B77620();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_265B5FC9C(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_265B6468C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_265B774E0();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_265B77600();
      sub_265B77070();
      result = sub_265B77620();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_265B64924(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C30, &qword_265B795F0);
  v38 = a2;
  result = sub_265B774E0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_265B77600();
      sub_265B77070();
      result = sub_265B77620();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_265B64BC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C20, &qword_265B795E0);
  v38 = a2;
  result = sub_265B774E0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_265B77600();
      sub_265B77070();
      result = sub_265B77620();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 4 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_265B64E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_265B77580())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unsigned __int8 *sub_265B64F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_265B770F0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_265B65A24();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_265B77460();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_265B654A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_265B770F0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_265B65A24();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_265B77460();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_265B65A24()
{
  v0 = sub_265B77100();
  v4 = sub_265B65AA4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_265B65AA4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_265B77060();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_265B77310();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_265B64094(v9, 0);
  v12 = sub_265B65BFC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_265B77060();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_265B77460();
LABEL_4:

  return sub_265B77060();
}

unint64_t sub_265B65BFC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_265B65E1C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_265B770C0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_265B77460();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_265B65E1C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_265B770A0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_265B65E1C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_265B770D0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26676B490](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_265B65E98(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_265B77600();
  sub_265B77070();
  v6 = sub_265B77620();

  return sub_265B64E64(a1, a2, v6);
}

unint64_t sub_265B65F10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C48, &qword_265B79608);
    v3 = sub_265B774F0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_265B65E98(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_265B66028(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C58, &qword_265B79618);
    v3 = sub_265B774F0();
    v4 = a1 + 32;

    while (1)
    {
      sub_265B666D0(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_265B65E98(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_265B5FC9C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_265B66138(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C38, &qword_265B795F8);
    v3 = sub_265B774F0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_265B65E98(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_265B6624C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C30, &qword_265B795F0);
    v3 = sub_265B774F0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_265B65E98(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_265B66348(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C50, &qword_265B79610);
    v3 = sub_265B774F0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_265B65E98(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_265B66460(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_265B774F0();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_265B65E98(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_265B66554(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C28, &qword_265B795E8);
    v3 = sub_265B774F0();

    for (i = (a1 + 52); ; i += 24)
    {
      v5 = *(i - 20);
      v6 = *(i - 12);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_265B65E98(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 8 * result;
      *v12 = v7;
      *(v12 + 4) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_265B66668(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C18, &qword_265B795D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265B666D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C60, &qword_265B79620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265B66740(id *a1)
{
  v1 = [*a1 templateUniqueName];
  sub_265B77030();

  sub_265B43C20();
  v2 = sub_265B77320();

  if (v2[2])
  {
    v4 = v2[4];
    v3 = v2[5];

    sub_265B76D80();
    if (v4 == sub_265B76D00() && v3 == v5)
    {
    }

    else
    {
      v7 = sub_265B77580();

      if ((v7 & 1) == 0)
      {
        if (v4 != sub_265B76CF0() || v3 != v8)
        {
          v9 = sub_265B77580();

          return v9 & 1;
        }
      }
    }

    v9 = 1;
  }

  else
  {

    v9 = 0;
  }

  return v9 & 1;
}

void sub_265B668F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v23 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v26 = *(*(a3 + 48) + 8 * v16);
    v17 = v26;
    v18 = a4(&v26);

    if (v6)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:

        a6(a1, a2, v23, a3);
        return;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_265B66A6C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_265B66BAC(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void *sub_265B66B08(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_265B668F8(result, a2, a3, a4, a5, sub_265B43EC4);
    v11 = v10;

    return v11;
  }

  return result;
}

void sub_265B66BAC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(*(a3 + 48) + 8 * v15);
    v17 = ACHAchievementProgressUpdate.isNextEarnable(for:)(a4);

    if (v17)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:

        sub_265B43EC4(a1, a2, v21, a3);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_15;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t sub_265B66CFC()
{
  result = qword_280035AD8;
  if (!qword_280035AD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280035AD8);
  }

  return result;
}

uint64_t AppInstallError.hashValue.getter()
{
  v1 = *v0;
  sub_265B77600();
  MEMORY[0x26676B9F0](v1);
  return sub_265B77620();
}

unint64_t sub_265B66E24()
{
  result = qword_280035C70;
  if (!qword_280035C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035C70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppInstallError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppInstallError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_265B66FCC()
{
  result = sub_265B77240();
  qword_280035C78 = v1;
  return result;
}

double static AppInstallConstants.installRequestTimeout.getter()
{
  if (qword_280035678 != -1)
  {
    swift_once();
  }

  return *&qword_280035C78;
}

uint64_t sub_265B67070@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1, double *a2)@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_265B6A180;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_265B469D8(v4);
}

uint64_t sub_265B67104(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_265B6A148;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_265B469D8(v3);
  return sub_265B63998(v8);
}

uint64_t sub_265B671C0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_265B469D8(v1);
  return v1;
}

uint64_t sub_265B67210(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_265B63998(v5);
}

uint64_t SystemAppInstaller.__allocating_init(bundleIdentifier:installRequestProvider:recordObserverProvider:timerProvider:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v34 = a1;
  v35 = a2;
  v8 = swift_allocObject();
  v9 = a3[3];
  v32 = a3[4];
  v33 = v8;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = a4[3];
  v31 = a4[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a4, v15);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = a5[3];
  v22 = a5[4];
  v23 = __swift_mutable_project_boxed_opaque_existential_1(a5, v21);
  v24 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26);
  v28 = sub_265B69B98(v34, v35, v13, v19, v26, v33, v15, v9, v21, v31, v32, v22);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v28;
}

uint64_t SystemAppInstaller.init(bundleIdentifier:installRequestProvider:recordObserverProvider:timerProvider:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v33 = a2;
  v8 = a3[3];
  v31 = a3[4];
  v32 = a1;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = a4[3];
  v30 = a4[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a4, v14);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = a5[3];
  v21 = a5[4];
  v22 = __swift_mutable_project_boxed_opaque_existential_1(a5, v20);
  v23 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25);
  v27 = sub_265B69B98(v32, v33, v12, v18, v25, v34, v14, v8, v20, v30, v31, v21);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v27;
}

uint64_t sub_265B677C8(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265B681F0(a1);
  }

  return result;
}

uint64_t sub_265B67828(uint64_t a1, uint64_t a2)
{
  sub_265B6A110(a2, v4);
  swift_beginAccess();
  sub_265B6A6B0(v4, a1 + 64);
  return swift_endAccess();
}

uint64_t sub_265B67890(void *a1, double a2)
{
  v3 = v2;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 24))(v6, v7);
  if ((v8 & 1) != 0 || a2 >= 1.0)
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    v15 = 2;
    v11 = *(v2 + 112);
    MEMORY[0x28223BE20](v8);
    sub_265B76C10();
    sub_265B69E44(v13);
    result = swift_beginAccess();
    v10 = *(v3 + 16);
    if (!v10)
    {
      return result;
    }

    a2 = 1.0;
    goto LABEL_7;
  }

  result = swift_beginAccess();
  v10 = *(v2 + 16);
  if (v10)
  {
LABEL_7:
    v12 = *(v3 + 24);

    v10(a1, a2);
    return sub_265B63998(v10);
  }

  return result;
}

uint64_t sub_265B679F4@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C98, &qword_265B798B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280035C80, &unk_265B797A0);
  v9 = *(v28 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v28);
  v27 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = *(v1 + 56);
  v15 = *(v1 + 48);
  ObjectType = swift_getObjectType();
  (*(v14 + 40))(ObjectType, v14);
  (*(v3 + 16))(v6, v8, v2);
  v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v18 = swift_allocObject();
  (*(v3 + 32))(v18 + v17, v6, v2);
  v19 = (v18 + ((v4 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = sub_265B67D4C;
  v19[1] = 0;
  sub_265B76BB0();
  (*(v3 + 8))(v8, v2);
  v21 = v27;
  v20 = v28;
  (*(v9 + 16))(v27, v13, v28);
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = swift_allocObject();
  (*(v9 + 32))(v23 + v22, v21, v20);
  v24 = (v23 + ((v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_265B67DE0;
  v24[1] = 0;
  sub_265B76BB0();
  return (*(v9 + 8))(v13, v20);
}

uint64_t sub_265B67D4C()
{
  sub_265B63470();
  v0 = swift_allocError();
  *v1 = 0;
  *(swift_allocObject() + 16) = v0;

  return sub_265B76BC0();
}

uint64_t sub_265B67DE0(void *a1)
{
  sub_265B6A560();
  if (sub_265B765A0())
  {
    return sub_265B76BE0();
  }

  *(swift_allocObject() + 16) = a1;
  v3 = a1;
  return sub_265B76BC0();
}

uint64_t sub_265B67E98()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265B67EF0();
  }

  return result;
}

uint64_t sub_265B67EF0()
{
  v1 = v0;
  v2 = sub_265B76F60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[14];
  sub_265B76C10();
  if (v25)
  {
    return sub_265B69E44(&v22);
  }

  v20 = *(&v22 + 1);
  v9 = v22;
  v21 = v23;
  sub_265B76E50();

  v10 = sub_265B76F50();
  v11 = sub_265B77270();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = v9;
    v13 = v12;
    v14 = swift_slowAlloc();
    *&v22 = v14;
    *v13 = 141558274;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_265B402B4(v1[4], v1[5], &v22);
    _os_log_impl(&dword_265B3E000, v10, v11, "Failed to get a status update for install %{mask.hash}s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x26676C0C0](v14, -1, -1);
    MEMORY[0x26676C0C0](v13, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v15 = v1[29];
  __swift_project_boxed_opaque_existential_1(v1 + 25, v1[28]);
  v16 = sub_265B76DC0();
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v25 = 2;
  MEMORY[0x28223BE20](v16);
  *(&v19 - 2) = v1;
  *(&v19 - 1) = &v22;
  sub_265B76C10();
  sub_265B69E44(&v22);
  sub_265B63470();
  v17 = swift_allocError();
  *v18 = 2;
  *&v22 = v17;
  v25 = 1;
  v20(&v22);
  swift_unknownObjectRelease();

  return sub_265B63408(&v22);
}

uint64_t sub_265B681F0(void *a1)
{
  v2 = v1;
  v4 = sub_265B76F60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1[14];
  sub_265B76C10();
  sub_265B6A110(v31, &v28);
  if (v30)
  {
    if (v30 == 1)
    {
      sub_265B3FF48(&v28, v26);
      v10 = a1[3];
      v11 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v10);
      v12 = (*(v11 + 48))(v10, v11);
      if (v12)
      {
        v13 = v12;
        [v12 fractionCompleted];
        v15 = v14;
      }

      else
      {
        v22 = a1[3];
        v23 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v22);
        if ((*(v23 + 24))(v22, v23))
        {
          v15 = 1.0;
        }

        else
        {
          v15 = 0.0;
        }
      }

      sub_265B67890(v26, v15);
      __swift_destroy_boxed_opaque_existential_1(v26);
    }
  }

  else
  {
    v25[1] = v9;
    v25[0] = *(&v28 + 1);
    v25[3] = v28;
    v25[2] = v29;
    sub_265B76E50();

    v16 = sub_265B76F50();
    v17 = sub_265B77280();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26[0] = v19;
      *v18 = 141558274;
      *(v18 + 4) = 1752392040;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_265B402B4(v2[4], v2[5], v26);
      _os_log_impl(&dword_265B3E000, v16, v17, "Requested install %{mask.hash}s appeared!", v18, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x26676C0C0](v19, -1, -1);
      MEMORY[0x26676C0C0](v18, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v20 = v2[29];
    __swift_project_boxed_opaque_existential_1(v2 + 25, v2[28]);
    sub_265B76DC0();
    v21 = sub_265B41D44(a1, v26);
    v27 = 1;
    MEMORY[0x28223BE20](v21);
    v25[-2] = v2;
    v25[-1] = v26;
    sub_265B76C10();
    sub_265B69E44(v26);
    sub_265B41D44(a1, v26);
    v27 = 0;
    (v25[0])(v26);
    sub_265B63408(v26);
    sub_265B681F0(a1);
    swift_unknownObjectRelease();
  }

  return sub_265B69E44(v31);
}

uint64_t *SystemAppInstaller.deinit()
{
  v1 = v0[3];
  sub_265B63998(v0[2]);
  v2 = v0[5];

  v3 = v0[6];
  swift_unknownObjectRelease();
  sub_265B69E44((v0 + 8));
  v4 = v0[14];

  __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  __swift_destroy_boxed_opaque_existential_1(v0 + 25);
  return v0;
}

uint64_t SystemAppInstaller.__deallocating_deinit()
{
  v1 = v0[3];
  sub_265B63998(v0[2]);
  v2 = v0[5];

  v3 = v0[6];
  swift_unknownObjectRelease();
  sub_265B69E44((v0 + 8));
  v4 = v0[14];

  __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  __swift_destroy_boxed_opaque_existential_1(v0 + 25);

  return swift_deallocClassInstance();
}

uint64_t SystemAppInstaller.requestInstall()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280035C80, &unk_265B797A0);
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  v9 = sub_265B76F60();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[14];
  sub_265B76C10();
  if (v40 == 2 && (v15 = vorrq_s8(v38, v39), !(*&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)) | v37)))
  {
    sub_265B69E44(&v37);
    sub_265B76E50();
    sub_265B76F40();
    v19 = (*(v10 + 8))(v13, v9);
    v37 = 1;
    v38 = 0u;
    v39 = 0u;
    v40 = 2;
    MEMORY[0x28223BE20](v19);
    *(&v34 - 2) = v1;
    *(&v34 - 1) = &v37;
    sub_265B76C10();
    sub_265B69E44(&v37);
    v20 = v1[18];
    v21 = v1[19];
    __swift_project_boxed_opaque_existential_1(v1 + 15, v20);
    v22 = (*(v21 + 8))(v20, v21);
    v24 = v23;
    v25 = v1[4];
    v26 = v1[5];

    sub_265B679F4(v8);
    v27 = swift_allocObject();
    v27[2] = v22;
    v27[3] = v24;
    v27[4] = v25;
    v27[5] = v26;
    v27[6] = v2;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_265B69EFC;
    *(v28 + 24) = v27;
    v30 = v34;
    v29 = v35;
    (*(v34 + 16))(v6, v8, v35);
    v31 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v32 = swift_allocObject();
    (*(v30 + 32))(v32 + v31, v6, v29);
    v33 = (v32 + ((v4 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = sub_265B69F0C;
    v33[1] = v28;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280035BC0, &qword_265B795A8);
    sub_265B76BB0();
    return (*(v30 + 8))(v8, v29);
  }

  else
  {
    sub_265B69E44(&v37);
    sub_265B63470();
    v16 = swift_allocError();
    *v17 = 1;
    *(swift_allocObject() + 16) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280035BC0, &qword_265B795A8);
    return sub_265B76BC0();
  }
}