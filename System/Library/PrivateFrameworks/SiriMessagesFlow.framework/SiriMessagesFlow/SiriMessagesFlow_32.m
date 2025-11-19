void sub_267E382E4(void *a1)
{
  v41 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = v1;
  v40 = &v38 - v4;
  sub_267E35168(v43);
  v5 = v44;
  v6 = v45;
  __swift_project_boxed_opaque_existential_0(v43, v44);
  v7 = (*(v6 + 16))(v5, v6);

  v8 = sub_267BAF0DC(v7);
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (v8 != v9)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x26D609870](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v14 = sub_267D60420();
    v16 = v15;

    ++v9;
    if (v16)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = *(v10 + 16);
        sub_267BF4EE8();
        v10 = v20;
      }

      v17 = *(v10 + 16);
      if (v17 >= *(v10 + 24) >> 1)
      {
        sub_267BF4EE8();
        v10 = v21;
      }

      *(v10 + 16) = v17 + 1;
      v18 = v10 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v16;
      v9 = v13;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v43);
  if (*(v10 + 16))
  {
    sub_267BA9F38(0, &qword_28022A0C8, 0x277D47918);
    v22 = *(sub_267E351F8() + 128);

    v23 = sub_267EF7C18();
    v25 = v24;

    v26 = sub_267E7E7F0(v23, v25);
    v27 = *MEMORY[0x277CEF108];
    v43[0] = sub_267EF9028();
    v43[1] = v28;
    MEMORY[0x26D608E60](3092282, 0xE300000000000000);
    v42 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
    sub_267BF5748();
    v29 = sub_267EF8FC8();
    v31 = v30;

    MEMORY[0x26D608E60](v29, v31);

    v32 = v40;
    sub_267EF2B88();

    v33 = sub_267EF2BA8();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v32, 1, v33);
    v35 = 0;
    v36 = v41;
    if (EnumTagSinglePayload != 1)
    {
      v35 = sub_267EF2AF8();
      (*(*(v33 - 8) + 8))(v32, v33);
    }

    [v26 setIdentifier_];

    v37 = v26;
  }

  else
  {

    v37 = 0;
    v36 = v41;
  }

  [v36 setContext_];
  swift_unknownObjectRelease();
}

uint64_t sub_267E38694()
{
  if (([*(*(v0 + 72) + 64) attributes] & 2) == 0)
  {
    return 0;
  }

  v1 = *(v0 + 72);
  sub_267E35168(v12);
  swift_beginAccess();

  sub_267E86600(v12);
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_0(v12);
  swift_endAccess();

  if (!*(v3 + 16))
  {

    return 0;
  }

  v4 = objc_allocWithZone(MEMORY[0x277CD40E0]);
  v5 = sub_267C94A44(v3, 1);
  v6 = *(sub_267E351F8() + 128);

  sub_267EF7C18();
  v8 = v7;

  if (v8)
  {
    v9 = sub_267EF8FF8();
  }

  else
  {
    v9 = 0;
  }

  [v5 _setLaunchId_];

  sub_267BA9F38(0, &qword_28022BB80, 0x277D473D0);
  v10 = sub_267EF9768();

  return v10;
}

uint64_t sub_267E38820(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  *(v2 + 72) = a2;
  return v2;
}

uint64_t sub_267E38850(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_267E38870, 0, 0);
}

void sub_267E38870()
{
  v26 = v0;
  v1 = v0[8];
  v2 = *(sub_267E351F8() + 128);

  v22 = sub_267BB6154(0xD000000000000018, 0x8000000267F1BAA0);

  v3 = *(v1 + 72);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v4);
  v6 = *(v5 + 8);

  v6(v4, v5);

  v7 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  LOBYTE(v7) = sub_267DBF930();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = *(v0[8] + 24);
    v23 = MEMORY[0x277D84F90];
    v10 = sub_267BAF0DC(v9);

    for (i = 0; ; ++i)
    {
      if (v10 == i)
      {

        goto LABEL_15;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26D609870](i, v9);
      }

      else
      {
        if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v12 = *(v9 + 8 * i + 32);
      }

      v13 = v12;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v14 = v0[8];
      v24 = v12;
      sub_267E38CF8(&v24, v22, &v25);

      if (v25)
      {
        MEMORY[0x26D608F90]();
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        sub_267EF9368();
        v8 = v23;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:
    v0[9] = v8;
    v15 = v0[8];
    v16 = sub_267BAF0DC(v8);
    v0[10] = v16;
    v17 = sub_267BAF0DC(*(v15 + 24));
    v0[11] = v17;
    v18 = v16 != v17;
    v19 = swift_task_alloc();
    v0[12] = v19;
    *v19 = v0;
    v19[1] = sub_267E38B38;
    v20 = v0[7];
    v21 = v0[8];

    sub_267E3570C(v20, v18);
  }
}

uint64_t sub_267E38B38()
{
  v2 = *v1;
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;

  if (v0)
  {
    v7 = *(v2 + 72);

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_267E38C7C, 0, 0);
  }
}

uint64_t sub_267E38C7C()
{
  if (v0[10] == v0[11])
  {
    v1 = v0[7] + 40;
    sub_267C9B4AC(v0[9]);
  }

  else
  {
  }

  OUTLINED_FUNCTION_17();

  return v2();
}

void sub_267E38CF8(void **a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = sub_267E51BAC(*a1);
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  if (!sub_267BAF0DC(v7))
  {

LABEL_11:
    if ((a2 & 1) == 0)
    {
      v31 = 0;
      goto LABEL_20;
    }

    v22 = [v6 identifier];
    v23 = sub_267EF9028();
    v25 = v24;

    v26 = objc_allocWithZone(MEMORY[0x277CD3EB0]);
    v10 = sub_267E395B4(v23, v25);
    v27 = *(sub_267E351F8() + 128);

    sub_267EF7C18();
    v29 = v28;

    if (v29)
    {
      v30 = sub_267EF8FF8();
    }

    else
    {
      v30 = 0;
    }

    [v10 _setLaunchId_];

    sub_267BA9F38(0, &qword_28022BB80, 0x277D473D0);
    v11 = sub_267EF9768();
LABEL_19:
    v31 = v11;

    goto LABEL_20;
  }

  sub_267BBD0EC(0, (v8 & 0xC000000000000001) == 0, v8);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x26D609870](0, v8);
  }

  else
  {
    v9 = *(v8 + 32);
  }

  v10 = v9;

  v11 = sub_267E0E360();
  if (!v3)
  {
    goto LABEL_19;
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v12 = sub_267EF8A08();
  __swift_project_value_buffer(v12, qword_280240FB0);
  v13 = v3;
  v14 = sub_267EF89F8();
  v15 = sub_267EF95E8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v32 = v17;
    *v16 = 136315138;
    v18 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v19 = sub_267EF9098();
    v21 = sub_267BA33E8(v19, v20, &v32);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_267B93000, v14, v15, "#ReadAudioComponentAction error building audioMessageSayIt: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x26D60A7B0](v17, -1, -1);
    MEMORY[0x26D60A7B0](v16, -1, -1);
  }

  else
  {
  }

  v31 = 0;
LABEL_20:
  *a3 = v31;
}

void *sub_267E3903C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[6];

  v5 = v0[9];

  v6 = v0[11];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_267E39098()
{
  sub_267E3903C();

  return swift_deallocClassInstance();
}

uint64_t sub_267E390F0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v2;
  v8 = *(v1 + 48);
  v3 = v8;
  v9 = *(v1 + 64);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_267DBC244(v7, v6);
}

uint64_t sub_267E3914C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  return swift_unknownObjectRetain();
}

uint64_t sub_267E39174(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 88);
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_267E3918C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267CDE0E8;

  return sub_267E38850(a1);
}

uint64_t sub_267E39228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return j__OUTLINED_FUNCTION_5_10(a1, a2, a3, WitnessTable);
}

void (*sub_267E39294(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v5;
  v5[2] = v2;
  v5[3] = a2;
  WitnessTable = swift_getWitnessTable();
  v5[4] = WitnessTable;
  *v5 = sub_267C3698C(a2, WitnessTable);
  v5[1] = v7;
  return sub_267C94288;
}

uint64_t sub_267E39324(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_267C3698C(a1, WitnessTable);
}

uint64_t sub_267E39378()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  swift_getWitnessTable();
  *v1 = v0;
  v1[1] = sub_267CDDF34;

  return sub_267BF9538();
}

uint64_t sub_267E39438()
{
  v1 = *v0;
  swift_getWitnessTable();
  return StaticAction.debugDescription.getter();
}

uint64_t sub_267E394EC(uint64_t a1)
{
  result = sub_267E39574(&qword_28022C8D8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267E39530(uint64_t a1)
{
  result = sub_267E39574(&qword_280229268);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_267E39574(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ReadAudioComponentAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_267E395B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_267EF8FF8();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithMessageIdentifier_];

  return v4;
}

uint64_t sub_267E39618(uint64_t a1)
{
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters();
  (*(*(ComponentPatternCommonParameters - 8) + 8))(a1, ComponentPatternCommonParameters);
  return a1;
}

uint64_t sub_267E39674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CE0, &qword_267F00410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267E396E4(void *a1, uint64_t (*a2)(void *, void))
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v4 = sub_267EF8A08();
  __swift_project_value_buffer(v4, qword_280240FB0);
  v5 = sub_267EF89F8();
  v6 = sub_267EF95D8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_267B93000, v5, v6, "SearchForMessagesUnsupportedUseCaseCheckFlowStrategy# Checking support for request", v7, 2u);
    MEMORY[0x26D60A7B0](v7, -1, -1);
  }

  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v8);
  v10 = sub_267E583B0(v8, v9);
  if (!v10)
  {
    return a2(0, 0);
  }

  if (sub_267D6D160(*(v10 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb)) == 1684104562 && v11 == 0xE400000000000000)
  {
  }

  else
  {
    v13 = sub_267EF9EA8();

    if ((v13 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if ((sub_267DD4A44() & 1) == 0)
  {
LABEL_19:

    return a2(0, 0);
  }

  v14 = sub_267EF89F8();
  v15 = sub_267EF95D8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_267B93000, v14, v15, "SendSupportCheck# Unsupported read scheduled message request", v16, 2u);
    MEMORY[0x26D60A7B0](v16, -1, -1);
  }

  sub_267E39EBC();
  v17 = swift_allocError();
  a2(v17, 0);
}

uint64_t sub_267E39964(void *a1, void (*a2)(void *), uint64_t a3)
{
  v12[0] = a1;
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  if (swift_dynamicCast())
  {
    v7 = swift_allocObject();
    v7[2] = a2;
    v7[3] = a3;
    v7[4] = v3;
    v8 = *(v3 + 56);

    sub_267CEBA78();
  }

  else
  {
    v12[1] = 0xE000000000000000;
    sub_267EF9B68();
    MEMORY[0x26D608E60](0xD000000000000015, 0x8000000267F18A80);
    sub_267EF9C58();
    sub_267C266B0();
    v10 = swift_allocError();
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v12[0] = v10;
    v13 = 1;
    a2(v12);
    return sub_267B9FF34(v12, &unk_28022A480, &unk_267F029F0);
  }
}

uint64_t sub_267E39AF8(uint64_t a1, void (*a2)(id *), uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v26 - v9;
  v11 = sub_267EF4228();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (v26 - v18);
  sub_267C6D464(a1, v26 - v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28[0] = *v19;
    v20 = v28[0];
    v29 = 1;
    v21 = v28[0];
    a2(v28);
  }

  else
  {
    (*(v12 + 32))(v15, v19, v11);
    v22 = a4[6];
    __swift_project_boxed_opaque_existential_0(a4 + 2, a4[5]);
    sub_267EF3BC8();
    v23 = sub_267EF4158();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v23);
    v24 = sub_267EF4CC8();
    memset(v26, 0, sizeof(v26));
    v27 = 0;
    v28[3] = v24;
    v28[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_0(v28);
    sub_267EF3F48();
    sub_267B9FF34(v26, &unk_28022CF80, &unk_267EFED50);
    sub_267B9FF34(v10, &unk_28022AE40, &unk_267EFCB60);
    v29 = 0;
    a2(v28);
    (*(v12 + 8))(v15, v11);
  }

  return sub_267B9FF34(v28, &unk_28022A480, &unk_267F029F0);
}

uint64_t *sub_267E39DEC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  return v0;
}

uint64_t sub_267E39E1C()
{
  sub_267E39DEC();

  return swift_deallocClassInstance();
}

unint64_t sub_267E39EBC()
{
  result = qword_28022C8E0;
  if (!qword_28022C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022C8E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchForMessagesUnsupportedUseCaseCheckFlowStrategy.UnsupportedReason(_BYTE *result, int a2, int a3)
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

unint64_t sub_267E39FC0()
{
  result = qword_28022C8E8;
  if (!qword_28022C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022C8E8);
  }

  return result;
}

uint64_t sub_267E3A014(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v53 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v53 - v13;
  v15 = v5[2];
  v15(&v53 - v13, v2, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  if (OUTLINED_FUNCTION_24_31())
  {
    sub_267B9A5E8(v59, v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BE40, &unk_267F08CB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_267EFC020;
    v17 = v57;
    v18 = v58;
    __swift_project_boxed_opaque_existential_0(v56, v57);
    *(inited + 32) = (*(v18 + 16))(v17, v18);
    v19 = (*(a2 + 16))(a1, a2);
    if (sub_267BAF0DC(v19))
    {
      OUTLINED_FUNCTION_30_31();
      if (v18)
      {
        v20 = MEMORY[0x26D609870](0, v19);
      }

      else
      {
        v20 = *(v19 + 32);
      }

      v21 = v20;

      v22 = [v21 recipients];

      if (v22)
      {
        sub_267BCA2C8();
        sub_267EF92F8();
      }
    }

    else
    {
    }

    v45 = OUTLINED_FUNCTION_23_26();
    sub_267DB6D08(v45, v46);
    v48 = v47;

    swift_setDeallocating();
    sub_267DB6FC0();
LABEL_23:
    __swift_destroy_boxed_opaque_existential_0(v56);
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C8F0, qword_267F0BBF8);
  if (OUTLINED_FUNCTION_24_31())
  {
    sub_267B9A5E8(v59, v56);
    v23 = __swift_project_boxed_opaque_existential_0(v56, v57)[9];
    v24 = *(a2 + 16);

    v25 = v24(a1, a2);
    if (sub_267BAF0DC(v25))
    {
      OUTLINED_FUNCTION_30_31();
      if (v24)
      {
        v26 = MEMORY[0x26D609870](0, v25);
      }

      else
      {
        v26 = *(v25 + 32);
      }

      v27 = v26;

      v28 = [v27 recipients];

      if (v28)
      {
        sub_267BCA2C8();
        sub_267EF92F8();
      }
    }

    else
    {
    }

    v49 = OUTLINED_FUNCTION_23_26();
    sub_267DB6D08(v49, v50);
    v48 = v51;

    goto LABEL_23;
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v29 = sub_267EF8A08();
  __swift_project_value_buffer(v29, qword_280240FB0);
  v15(v12, v2, a1);
  v30 = sub_267EF89F8();
  v31 = sub_267EF95D8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v54 = v30;
    v33 = v32;
    v55 = swift_slowAlloc();
    *&v59[0] = v55;
    *v33 = 136315138;
    v34 = OUTLINED_FUNCTION_23_26();
    (v15)(v34);
    v35 = v5[1];
    v35(v12, a1);
    v36 = *(a2 + 8);
    v37 = v31;
    v38 = sub_267EF9E58();
    v40 = v39;
    v35(v9, a1);
    v41 = sub_267BA33E8(v38, v40, v59);

    v42 = v33;
    *(v33 + 4) = v41;
    v30 = v54;
    v43 = v42;
    _os_log_impl(&dword_267B93000, v54, v37, "#ReadableComponent#conversationContactIdentifiers unknown component type %s", v42, 0xCu);
    v44 = v55;
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x26D60A7B0](v44, -1, -1);
    MEMORY[0x26D60A7B0](v43, -1, -1);
  }

  else
  {
    (v5[1])(v12, a1);
  }

  v48 = MEMORY[0x277D84F90];
LABEL_24:
  (v5[1])(v14, a1);
  return v48;
}

void sub_267E3A5A4()
{
  v1 = *v0;
  v2 = sub_267BAF0DC(*v0);
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D609870](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v7 = [v5 identifier];
    v8 = sub_267EF9028();
    v10 = v9;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = *(v4 + 16);
      sub_267BF4EE8();
      v4 = v14;
    }

    v11 = *(v4 + 16);
    if (v11 >= *(v4 + 24) >> 1)
    {
      sub_267BF4EE8();
      v4 = v15;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v10;
    ++v3;
  }
}

void sub_267E3A6F0()
{
  v1 = *(v0 + 8);
  v2 = sub_267BAF0DC(v1);
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D609870](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v7 = [v5 identifier];
    v8 = sub_267EF9028();
    v10 = v9;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = *(v4 + 16);
      sub_267BF4EE8();
      v4 = v14;
    }

    v11 = *(v4 + 16);
    if (v11 >= *(v4 + 24) >> 1)
    {
      sub_267BF4EE8();
      v4 = v15;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v10;
    ++v3;
  }
}

void sub_267E3A83C()
{
  v4 = *(v0 + 40);
  sub_267BAF0DC(v4);
  OUTLINED_FUNCTION_28_31();
  v5 = MEMORY[0x277D84F90];
  while (v0 != v1)
  {
    if (v2)
    {
      v6 = MEMORY[0x26D609870](v1, v4);
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_15;
      }

      v6 = *(v4 + 8 * v1 + 32);
    }

    v7 = v6;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v8 = [v6 identifier];
    sub_267EF9028();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_27_28();
      v5 = v9;
    }

    if (*(v5 + 16) >= *(v5 + 24) >> 1)
    {
      sub_267BF4EE8();
      v5 = v10;
    }

    OUTLINED_FUNCTION_29_28();
  }
}

void sub_267E3A95C()
{
  v1 = *(v0 + 16);
  v2 = sub_267BAF0DC(v1);
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D609870](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v7 = [v5 identifier];
    v8 = sub_267EF9028();
    v10 = v9;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = *(v4 + 16);
      sub_267BF4EE8();
      v4 = v14;
    }

    v11 = *(v4 + 16);
    if (v11 >= *(v4 + 24) >> 1)
    {
      sub_267BF4EE8();
      v4 = v15;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v10;
    ++v3;
  }
}

void sub_267E3AAA8()
{
  v1 = *(v0 + 32);
  v2 = sub_267BAF0DC(v1);
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D609870](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v7 = [v5 identifier];
    v8 = sub_267EF9028();
    v10 = v9;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = *(v4 + 16);
      sub_267BF4EE8();
      v4 = v14;
    }

    v11 = *(v4 + 16);
    if (v11 >= *(v4 + 24) >> 1)
    {
      sub_267BF4EE8();
      v4 = v15;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v10;
    ++v3;
  }
}

void sub_267E3ABF4()
{
  v1 = *(v0 + 56);
  v2 = sub_267BAF0DC(v1);
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D609870](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v7 = [v5 identifier];
    v8 = sub_267EF9028();
    v10 = v9;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = *(v4 + 16);
      sub_267BF4EE8();
      v4 = v14;
    }

    v11 = *(v4 + 16);
    if (v11 >= *(v4 + 24) >> 1)
    {
      sub_267BF4EE8();
      v4 = v15;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v10;
    ++v3;
  }
}

uint64_t sub_267E3AD80()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_26();
  v1 = OUTLINED_FUNCTION_10_1(dword_267F0BC38);
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_267E3C960;
  v2 = OUTLINED_FUNCTION_7_46();

  return v3(v2);
}

uint64_t sub_267E3AE14(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x2822009F8](sub_267E3AE34, 0, 0);
}

uint64_t sub_267E3AE34()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_5_57();
  v0 = OUTLINED_FUNCTION_10_1(&unk_267F06300);
  v1 = OUTLINED_FUNCTION_14_40(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_65(v1);

  return v4(v3);
}

uint64_t sub_267E3AEBC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v0;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  OUTLINED_FUNCTION_1_74();
  sub_267B9FF34(v2 + 64, &qword_28022B0F0, &qword_267F0E670);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E3AFC8(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x2822009F8](sub_267E3AFE8, 0, 0);
}

uint64_t sub_267E3AFE8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_5_57();
  v0 = OUTLINED_FUNCTION_10_1(&unk_267F06318);
  v1 = OUTLINED_FUNCTION_14_40(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_65(v1);

  return v4(v3);
}

uint64_t sub_267E3B070(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x2822009F8](sub_267E3B090, 0, 0);
}

uint64_t sub_267E3B090()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_5_57();
  v0 = OUTLINED_FUNCTION_10_1(&unk_267F062C0);
  v1 = OUTLINED_FUNCTION_14_40(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_65(v1);

  return v4(v3);
}

uint64_t sub_267E3B118(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x2822009F8](sub_267E3B138, 0, 0);
}

uint64_t sub_267E3B138()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_5_57();
  v0 = OUTLINED_FUNCTION_10_1(&unk_267F062E0);
  v1 = OUTLINED_FUNCTION_14_40(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_65(v1);

  return v4(v3);
}

uint64_t sub_267E3B1C0(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x2822009F8](sub_267E3B1E0, 0, 0);
}

uint64_t sub_267E3B1E0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_5_57();
  v0 = OUTLINED_FUNCTION_10_1(&unk_267F06298);
  v1 = OUTLINED_FUNCTION_14_40(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_65(v1);

  return v4(v3);
}

uint64_t sub_267E3B268()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v0;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  OUTLINED_FUNCTION_1_74();
  sub_267B9FF34(v2 + 64, &qword_28022B0F0, &qword_267F0E670);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E3B374()
{
  OUTLINED_FUNCTION_12();
  sub_267BFF0F4(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 58));
  OUTLINED_FUNCTION_4_3();
  v2 = *(v0 + 57);

  return v1(v2);
}

uint64_t sub_267E3B3DC()
{
  OUTLINED_FUNCTION_4_3();
  v1 = *(v0 + 128);
  return v2(0);
}

uint64_t sub_267E3B404()
{
  OUTLINED_FUNCTION_56();
  v0 = OUTLINED_FUNCTION_10_1(dword_267F0BCB0);
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_60(v1);

  return v4(v3);
}

uint64_t sub_267E3B48C(uint64_t a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;
  return MEMORY[0x2822009F8](sub_267E3B4AC, 0, 0);
}

uint64_t sub_267E3B4AC()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[25];
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];

    OUTLINED_FUNCTION_25_32();
    OUTLINED_FUNCTION_26_31();
    v6.n128_f64[0] = OUTLINED_FUNCTION_3_67();

    return v5(v6);
  }

  else
  {
    OUTLINED_FUNCTION_12_40(v1, v2);
    v8 = OUTLINED_FUNCTION_10_1(&unk_267F062D8);
    v0[26] = v8;
    *v8 = v0;
    v8[1] = sub_267E3B594;
    v9 = OUTLINED_FUNCTION_9_47(v0[24]);

    return v10(v9);
  }
}

uint64_t sub_267E3B594()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_10_41();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 208);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 216) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_22_29();
  }

  sub_267B9FF34(v3 + 136, &qword_28022B0F0, &qword_267F0E670);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E3B6C8(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_267E3B6E8, 0, 0);
}

uint64_t sub_267E3B6E8()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[8];
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];

    OUTLINED_FUNCTION_25_32();
    OUTLINED_FUNCTION_26_31();
    v5.n128_f64[0] = OUTLINED_FUNCTION_3_67();

    return v4(v5);
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
    v7 = OUTLINED_FUNCTION_10_1(&unk_267F062F8);
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_267E3B7CC;
    v8 = v0[8];
    v9 = OUTLINED_FUNCTION_9_47(v0[7]);

    return v10(v9);
  }
}

uint64_t sub_267E3B7CC()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_10_41();
  v5 = v4;
  OUTLINED_FUNCTION_9_1();
  *v6 = v5;
  v8 = *(v7 + 72);
  v9 = *v3;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  v5[10] = v1;

  if (!v1)
  {
    v5[11] = v2;
    v5[12] = v0;
  }

  sub_267B9FF34((v5 + 2), &qword_28022B0F0, &qword_267F0E670);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267E3B900()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 88);
  **(v0 + 64) = vextq_s8(v1, v1, 8uLL);
  if (v1.i64[0])
  {
    v2 = *(v0 + 88);
    v3 = *(v0 + 96);
  }

  sub_267C9DA84();

  v5.n128_f64[0] = OUTLINED_FUNCTION_3_67();

  return v4(v5);
}

uint64_t sub_267E3B9BC(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_267E3B9DC, 0, 0);
}

uint64_t sub_267E3B9DC()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[8];
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];

    OUTLINED_FUNCTION_25_32();
    OUTLINED_FUNCTION_26_31();
    v5.n128_f64[0] = OUTLINED_FUNCTION_3_67();

    return v4(v5);
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
    v7 = OUTLINED_FUNCTION_10_1(&unk_267F06350);
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_267E3BAC0;
    v8 = v0[8];
    v9 = OUTLINED_FUNCTION_9_47(v0[7]);

    return v10(v9);
  }
}

uint64_t sub_267E3BAC0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_10_41();
  v5 = v4;
  OUTLINED_FUNCTION_9_1();
  *v6 = v5;
  v8 = *(v7 + 72);
  v9 = *v3;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  v5[10] = v1;

  if (!v1)
  {
    v5[11] = v2;
    v5[12] = v0;
  }

  sub_267B9FF34((v5 + 2), &qword_28022B0F0, &qword_267F0E670);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267E3BBF4(uint64_t a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;
  return MEMORY[0x2822009F8](sub_267E3BC14, 0, 0);
}

uint64_t sub_267E3BC14()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[25];
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];

    OUTLINED_FUNCTION_25_32();
    OUTLINED_FUNCTION_26_31();
    v6.n128_f64[0] = OUTLINED_FUNCTION_3_67();

    return v5(v6);
  }

  else
  {
    OUTLINED_FUNCTION_12_40(v1, v2);
    v8 = OUTLINED_FUNCTION_10_1(&unk_267F062B8);
    v0[26] = v8;
    *v8 = v0;
    v8[1] = sub_267E3B594;
    v9 = OUTLINED_FUNCTION_9_47(v0[24]);

    return v10(v9);
  }
}

uint64_t sub_267E3BCFC(uint64_t a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;
  return MEMORY[0x2822009F8](sub_267E3BD1C, 0, 0);
}

uint64_t sub_267E3BD1C()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[25];
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];

    OUTLINED_FUNCTION_25_32();
    OUTLINED_FUNCTION_26_31();
    v6.n128_f64[0] = OUTLINED_FUNCTION_3_67();

    return v5(v6);
  }

  else
  {
    OUTLINED_FUNCTION_12_40(v1, v2);
    v8 = OUTLINED_FUNCTION_10_1(dword_267F06280);
    v0[26] = v8;
    *v8 = v0;
    v8[1] = sub_267E3BE04;
    v9 = OUTLINED_FUNCTION_9_47(v0[24]);

    return v10(v9);
  }
}

uint64_t sub_267E3BE04()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_10_41();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 208);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 216) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_22_29();
  }

  sub_267B9FF34(v3 + 136, &qword_28022B0F0, &qword_267F0E670);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E3BF38()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[25];
  sub_267B9FF34((v0 + 22), &qword_28022A300, &qword_267EFEEE0);
  *v3 = v2;
  v3[1] = v1;
  if (v1)
  {
    v4 = v0[28];
    v5 = v0[29];
  }

  sub_267C9DA84();

  v7.n128_f64[0] = OUTLINED_FUNCTION_3_67();

  return v6(v7);
}

uint64_t sub_267E3C004(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_267E3C024, 0, 0);
}

uint64_t sub_267E3C024()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[8];
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];

    OUTLINED_FUNCTION_25_32();
    OUTLINED_FUNCTION_26_31();
    v5.n128_f64[0] = OUTLINED_FUNCTION_3_67();

    return v4(v5);
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
    v7 = OUTLINED_FUNCTION_10_1(&unk_267F06330);
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_267E3BAC0;
    v8 = v0[8];
    v9 = OUTLINED_FUNCTION_9_47(v0[7]);

    return v10(v9);
  }
}

uint64_t sub_267E3C108()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_26();
  v1 = OUTLINED_FUNCTION_10_1(dword_267F0BC10);
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_267E3C960;
  v2 = OUTLINED_FUNCTION_7_46();

  return v3(v2);
}

uint64_t sub_267E3C19C()
{
  OUTLINED_FUNCTION_56();
  v0 = OUTLINED_FUNCTION_10_1(dword_267F0BCA0);
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_60(v1);

  return v4(v3);
}

void sub_267E3C224()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_267E3A6F0();
}

uint64_t sub_267E3C268()
{
  OUTLINED_FUNCTION_56();
  v0 = OUTLINED_FUNCTION_10_1(dword_267F0BCC0);
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_60(v1);

  return v4(v3);
}

uint64_t sub_267E3C2F0()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8.n128_u64[0] = v3;
  }

  return v9(v8);
}

uint64_t sub_267E3C3E0()
{
  OUTLINED_FUNCTION_56();
  v0 = OUTLINED_FUNCTION_10_1(dword_267F0BC48);
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_60(v1);

  return v4(v3);
}

uint64_t sub_267E3C468()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;

  OUTLINED_FUNCTION_4_3();
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

uint64_t sub_267E3C55C()
{
  OUTLINED_FUNCTION_56();
  v0 = OUTLINED_FUNCTION_10_1(dword_267F0BC78);
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_60(v1);

  return v4(v3);
}

uint64_t sub_267E3C620()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_26();
  v1 = OUTLINED_FUNCTION_10_1(dword_267F0BC28);
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_267E3C6B4;
  v2 = OUTLINED_FUNCTION_7_46();

  return v3(v2);
}

uint64_t sub_267E3C6B4()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;

  OUTLINED_FUNCTION_4_3();
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

uint64_t sub_267E3C7A8()
{
  OUTLINED_FUNCTION_56();
  v0 = OUTLINED_FUNCTION_10_1(dword_267F0BC90);
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_60(v1);

  return v4(v3);
}

uint64_t sub_267E3C830()
{
  OUTLINED_FUNCTION_56();
  v0 = OUTLINED_FUNCTION_10_1(dword_267F0BC58);
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_60(v1);

  return v4(v3);
}

uint64_t sub_267E3C8B8()
{
  OUTLINED_FUNCTION_56();
  v0 = OUTLINED_FUNCTION_10_1(dword_267F0BC68);
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_60(v1);

  return v4(v3);
}

uint64_t sub_267E3C970(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_267E3C994, 0, 0);
}

uint64_t sub_267E3C994()
{
  v1 = v0[4];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  if (sub_267BCD18C())
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v3 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v3, qword_280240FB0);
    v4 = sub_267EF89F8();
    v5 = sub_267EF95D8();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_12;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Device is authenticated, don't require unlock";
LABEL_11:
    _os_log_impl(&dword_267B93000, v4, v5, v7, v6, 2u);
    OUTLINED_FUNCTION_32_0();
LABEL_12:

    OUTLINED_FUNCTION_4_3();

    return v11(0);
  }

  v9 = v1[3];
  v8 = v1[4];
  __swift_project_boxed_opaque_existential_0(v0[4], v9);
  if (sub_267EF3C58())
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v10 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v10, qword_280240FB0);
    v4 = sub_267EF89F8();
    v5 = sub_267EF95D8();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_12;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Request is from HomePod, don't require unlock";
    goto LABEL_11;
  }

  v13 = swift_task_alloc();
  v0[5] = v13;
  *v13 = v0;
  v13[1] = sub_267E3CBC8;
  v14 = v0[3];
  v15 = v0[4];

  return sub_267E3CFB0(v14);
}

uint64_t sub_267E3CBC8(char a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_267E3CCC8, 0, 0);
}

uint64_t sub_267E3CCC8()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  sub_267EF7C18();
  if (v2)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v4 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v4, qword_280240FB0);

    v5 = sub_267EF89F8();
    v6 = sub_267EF95D8();

    if (os_log_type_enabled(v5, v6))
    {
      OUTLINED_FUNCTION_48();
      v21 = OUTLINED_FUNCTION_5_4();
      v7 = OUTLINED_FUNCTION_1_75(4.8149e-34, v21);

      *(v1 + 4) = v7;
      v10 = "Preview is restricted for app %s, require unlock";
LABEL_12:
      OUTLINED_FUNCTION_22_1(&dword_267B93000, v8, v9, v10);
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_32_0();

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ([*(v0 + 16) attributes] != 2 || (sub_267DA7A98(*(v0 + 16)) & 1) != 0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v11 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v11, qword_280240FB0);

    v5 = sub_267EF89F8();
    v12 = sub_267EF95D8();

    if (os_log_type_enabled(v5, v12))
    {
      OUTLINED_FUNCTION_48();
      v22 = OUTLINED_FUNCTION_5_4();
      v13 = OUTLINED_FUNCTION_1_75(4.8149e-34, v22);

      *(v1 + 4) = v13;
      v10 = "Preview is not restricted for app %s and intent may return read messages, require unlock";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v16 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v16, qword_280240FB0);

  v5 = sub_267EF89F8();
  v17 = sub_267EF95D8();

  if (!os_log_type_enabled(v5, v17))
  {
LABEL_13:

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_48();
  v23 = OUTLINED_FUNCTION_5_4();
  v18 = OUTLINED_FUNCTION_1_75(4.8149e-34, v23);

  *(v1 + 4) = v18;
  OUTLINED_FUNCTION_22_1(&dword_267B93000, v19, v20, "Preview is not restricted for app %s and intent won't return read messages, don't require unlock");
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_32_0();

LABEL_14:
  OUTLINED_FUNCTION_4_3();

  return v14();
}

uint64_t sub_267E3CFB0(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](sub_267E3CFD0, 0, 0);
}

uint64_t sub_267E3CFD0()
{
  v16 = v0;
  v1 = v0[19];
  v0[21] = sub_267EF7C18();
  v0[22] = v2;
  if (v2)
  {
    v3 = *(v0[20] + 80);
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_267E3D244;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C8F8, &qword_267F0BD10);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_267E3D4A0;
    v0[13] = &block_descriptor_18;
    v0[14] = v4;
    [v3 fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v5 = v0[19];
    v6 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v6, qword_280240FB0);

    v7 = sub_267EF89F8();
    v8 = sub_267EF95D8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[19];
      OUTLINED_FUNCTION_48();
      v15 = OUTLINED_FUNCTION_5_4();
      *v5 = 136315138;
      v0[10] = v9;
      sub_267EF7C38();
      sub_267E3D504();
      v10 = sub_267EF9E58();
      v12 = sub_267BA33E8(v10, v11, &v15);

      *(v5 + 4) = v12;
      _os_log_impl(&dword_267B93000, v7, v8, "appIdentifier is missing, treat as not restricted: %s", v5, 0xCu);
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_32_0();
    }

    OUTLINED_FUNCTION_4_3();

    return v13(0);
  }
}

uint64_t sub_267E3D244()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_267E3D324, 0, 0);
}

uint64_t sub_267E3D324()
{
  if (v0[18])
  {
    v0[10] = v0[21];
    v0[11] = v0[22];
    *(swift_task_alloc() + 16) = v0 + 10;
    v1 = sub_267BC2B54();
  }

  else
  {
    v2 = v0[22];

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v3 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v3, qword_280240FB0);
    v4 = sub_267EF89F8();
    v5 = sub_267EF95E8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_267B93000, v4, v5, "fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictions() returned nil, assuming preview is restricted", v6, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v1 = 1;
  }

  OUTLINED_FUNCTION_4_3();

  return v7(v1);
}

uint64_t sub_267E3D4A0(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_267EF92F8();
  }

  else
  {
    v4 = 0;
  }

  return sub_267EADB78(v3, v4);
}

unint64_t sub_267E3D504()
{
  result = qword_28022A060;
  if (!qword_28022A060)
  {
    sub_267EF7C38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A060);
  }

  return result;
}

uint64_t sub_267E3D55C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_267E3D59C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_267E3D660(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v4 = OUTLINED_FUNCTION_18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v74 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77_0();
  v73 = v9;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77_0();
  v72 = v11;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77_0();
  v71 = v13;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77_0();
  v70 = v15;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77_0();
  v69 = v17;
  OUTLINED_FUNCTION_115();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v69 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v69 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v69 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v69 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v69 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_267F016D0;
  *(v33 + 32) = 7368801;
  *(v33 + 40) = 0xE300000000000000;
  v34 = *v1;
  if (*v1)
  {
    v35 = sub_267EF7958();
    v36 = v34;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
  }

  *(v33 + 48) = v36;
  *(v33 + 72) = v35;
  *(v33 + 80) = 0x4468736153707061;
  *(v33 + 88) = 0xEB00000000617461;
  v37 = a1(0);
  sub_267BC9B04(v1 + v37[5], v32, &unk_28022AE30, &qword_267EFC0B0);
  v38 = sub_267EF79B8();
  OUTLINED_FUNCTION_0_11(v32);
  if (v39)
  {

    sub_267B9FED8(v32, &unk_28022AE30, &qword_267EFC0B0);
    *(v33 + 96) = 0u;
    *(v33 + 112) = 0u;
  }

  else
  {
    *(v33 + 120) = v38;
    __swift_allocate_boxed_opaque_existential_0((v33 + 96));
    OUTLINED_FUNCTION_2_2();
    (*(v40 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v33 + 128) = 0xD000000000000012;
  *(v33 + 136) = v41;
  sub_267BC9B04(v1 + v37[6], v30, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v30);
  if (v39)
  {
    sub_267B9FED8(v30, &unk_28022AE30, &qword_267EFC0B0);
    *(v33 + 144) = 0u;
    *(v33 + 160) = 0u;
  }

  else
  {
    *(v33 + 168) = v38;
    __swift_allocate_boxed_opaque_existential_0((v33 + 144));
    OUTLINED_FUNCTION_2_2();
    (*(v42 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v33 + 176) = 0xD000000000000012;
  *(v33 + 184) = v43;
  sub_267BC9B04(v1 + v37[7], v27, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v27);
  v44 = v69;
  if (v39)
  {
    sub_267B9FED8(v27, &unk_28022AE30, &qword_267EFC0B0);
    *(v33 + 192) = 0u;
    *(v33 + 208) = 0u;
  }

  else
  {
    *(v33 + 216) = v38;
    __swift_allocate_boxed_opaque_existential_0((v33 + 192));
    OUTLINED_FUNCTION_2_2();
    (*(v45 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v33 + 224) = 0xD000000000000016;
  *(v33 + 232) = v46;
  sub_267BC9B04(v1 + v37[8], v24, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v24);
  v47 = v71;
  if (v39)
  {
    sub_267B9FED8(v24, &unk_28022AE30, &qword_267EFC0B0);
    *(v33 + 240) = 0u;
    *(v33 + 256) = 0u;
  }

  else
  {
    *(v33 + 264) = v38;
    __swift_allocate_boxed_opaque_existential_0((v33 + 240));
    OUTLINED_FUNCTION_2_2();
    (*(v48 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v33 + 272) = 0xD000000000000014;
  *(v33 + 280) = v49;
  sub_267BC9B04(v1 + v37[9], v21, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v21);
  v50 = v70;
  if (v39)
  {
    sub_267B9FED8(v21, &unk_28022AE30, &qword_267EFC0B0);
    *(v33 + 288) = 0u;
    *(v33 + 304) = 0u;
  }

  else
  {
    *(v33 + 312) = v38;
    __swift_allocate_boxed_opaque_existential_0((v33 + 288));
    OUTLINED_FUNCTION_2_2();
    (*(v51 + 32))();
  }

  *(v33 + 320) = 0x4E746361746E6F63;
  *(v33 + 328) = 0xEB00000000656D61;
  sub_267BC9B04(v1 + v37[10], v44, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v44);
  v52 = v72;
  if (v39)
  {
    sub_267B9FED8(v44, &unk_28022AE30, &qword_267EFC0B0);
    *(v33 + 336) = 0u;
    *(v33 + 352) = 0u;
  }

  else
  {
    *(v33 + 360) = v38;
    __swift_allocate_boxed_opaque_existential_0((v33 + 336));
    OUTLINED_FUNCTION_2_2();
    (*(v53 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v33 + 368) = 0xD000000000000017;
  *(v33 + 376) = v54;
  *(v33 + 384) = 0;
  OUTLINED_FUNCTION_28_32();
  *(v33 + 408) = v55;
  *(v33 + 416) = v56;
  *(v33 + 424) = 0xE900000000000065;
  sub_267BC9B04(v1 + v37[11], v50, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v50);
  if (v39)
  {
    sub_267B9FED8(v50, &unk_28022AE30, &qword_267EFC0B0);
    *(v33 + 432) = 0u;
    *(v33 + 448) = 0u;
  }

  else
  {
    *(v33 + 456) = v38;
    __swift_allocate_boxed_opaque_existential_0((v33 + 432));
    OUTLINED_FUNCTION_2_2();
    (*(v57 + 32))();
  }

  *(v33 + 464) = 0x7463617265746E69;
  *(v33 + 472) = 0xEF617461446E6F69;
  sub_267BC9B04(v1 + v37[12], v47, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v47);
  if (v39)
  {
    sub_267B9FED8(v47, &unk_28022AE30, &qword_267EFC0B0);
    *(v33 + 480) = 0u;
    *(v33 + 496) = 0u;
  }

  else
  {
    *(v33 + 504) = v38;
    __swift_allocate_boxed_opaque_existential_0((v33 + 480));
    OUTLINED_FUNCTION_2_2();
    (*(v58 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v33 + 512) = 0xD000000000000013;
  *(v33 + 520) = v59;
  sub_267BC9B04(v1 + v37[13], v52, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v52);
  if (v39)
  {
    sub_267B9FED8(v52, &unk_28022AE30, &qword_267EFC0B0);
    *(v33 + 528) = 0u;
    *(v33 + 544) = 0u;
  }

  else
  {
    *(v33 + 552) = v38;
    __swift_allocate_boxed_opaque_existential_0((v33 + 528));
    OUTLINED_FUNCTION_2_2();
    (*(v60 + 32))();
  }

  OUTLINED_FUNCTION_22_3();
  *(v33 + 560) = v61;
  *(v33 + 568) = 0xEA00000000007374;
  v62 = *(v1 + v37[14]);
  *(v33 + 600) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v33 + 576) = v62;
  *(v33 + 608) = 0x6C6C614274786574;
  *(v33 + 616) = 0xEF617461446E6F6FLL;
  v63 = v73;
  sub_267BC9B04(v1 + v37[15], v73, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v63);
  if (v39)
  {

    sub_267B9FED8(v63, &unk_28022AE30, &qword_267EFC0B0);
    *(v33 + 624) = 0u;
    *(v33 + 640) = 0u;
  }

  else
  {
    *(v33 + 648) = v38;
    __swift_allocate_boxed_opaque_existential_0((v33 + 624));
    OUTLINED_FUNCTION_2_2();
    (*(v64 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v33 + 656) = 0xD000000000000016;
  *(v33 + 664) = v65;
  v66 = v74;
  sub_267BC9B04(v1 + v37[16], v74, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v66);
  if (v39)
  {
    sub_267B9FED8(v66, &unk_28022AE30, &qword_267EFC0B0);
    *(v33 + 672) = 0u;
    *(v33 + 688) = 0u;
  }

  else
  {
    *(v33 + 696) = v38;
    __swift_allocate_boxed_opaque_existential_0((v33 + 672));
    OUTLINED_FUNCTION_2_2();
    (*(v67 + 32))();
  }

  return v33;
}

uint64_t sub_267E3DFFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v2 = OUTLINED_FUNCTION_18(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_267EFCE30;
  OUTLINED_FUNCTION_12_1();
  *(v8 + 32) = 0xD000000000000017;
  *(v8 + 40) = v9;
  *(v8 + 48) = 0;
  OUTLINED_FUNCTION_28_32();
  v10[9] = v11;
  v10[10] = v12;
  v10[11] = 0xE900000000000065;
  sub_267BC9B04(v0, v6, &unk_28022AE30, &qword_267EFC0B0);
  v13 = sub_267EF79B8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v13) == 1)
  {
    sub_267B9FED8(v6, &unk_28022AE30, &qword_267EFC0B0);
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0u;
  }

  else
  {
    *(v7 + 120) = v13;
    __swift_allocate_boxed_opaque_existential_0((v7 + 96));
    OUTLINED_FUNCTION_5_0(v13);
    (*(v14 + 32))();
  }

  OUTLINED_FUNCTION_22_3();
  *(v7 + 128) = v15;
  *(v7 + 136) = 0xEA00000000007374;
  v16 = *(v0 + *(type metadata accessor for UnsendMessagesMessagesUnsentParameters(0) + 20));
  *(v7 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v7 + 144) = v16;

  return v7;
}

uint64_t sub_267E3E1C0()
{
  OUTLINED_FUNCTION_12();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for UnsendMessagesConfirmDeleteParameters(0);
  v1[6] = v5;
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64) + 15;
  v1[7] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E3E24C()
{
  OUTLINED_FUNCTION_113();
  v12 = v5;
  OUTLINED_FUNCTION_29();
  v6 = OUTLINED_FUNCTION_34_25();
  __swift_storeEnumTagSinglePayload(v2 + v4, 1, 1, v6);
  OUTLINED_FUNCTION_3_13(v3[6]);
  OUTLINED_FUNCTION_3_13(v3[7]);
  OUTLINED_FUNCTION_3_13(v3[8]);
  OUTLINED_FUNCTION_3_13(v3[9]);
  OUTLINED_FUNCTION_3_13(v3[10]);
  OUTLINED_FUNCTION_3_13(v3[11]);
  OUTLINED_FUNCTION_3_13(v3[12]);
  OUTLINED_FUNCTION_3_13(v3[13]);
  OUTLINED_FUNCTION_3_13(v3[15]);
  OUTLINED_FUNCTION_3_13(v3[16]);
  OUTLINED_FUNCTION_33_18();
  OUTLINED_FUNCTION_1_3();
  v7 = *(v0 + 4);
  v8 = swift_task_alloc();
  *(v1 + 64) = v8;
  *v8 = v1;
  v9 = OUTLINED_FUNCTION_20_27(v8);

  return v10(v9);
}

uint64_t sub_267E3E374()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E3E470()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[7];
  v0[10] = sub_267E3D660(type metadata accessor for UnsendMessagesConfirmDeleteParameters);
  v2 = OUTLINED_FUNCTION_28_0(MEMORY[0x277D55BE8]);
  v0[11] = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_15_38(v2);

  return v4(v3);
}

uint64_t sub_267E3E52C(uint64_t a1)
{
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *(v7 + 80);
  v10 = *v2;
  OUTLINED_FUNCTION_5();
  *v11 = v10;
  *(v5 + 96) = v1;

  if (!v1)
  {
    *(v5 + 104) = a1;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267E3E664()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_2_61();
  sub_267E3F590(v1, v2);

  OUTLINED_FUNCTION_4_3();
  v4 = *(v0 + 104);

  return v3(v4);
}

uint64_t sub_267E3E6D4()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_2_61();
  sub_267E3F590(v2, v3);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267E3E740()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_2_61();
  sub_267E3F590(v2, v3);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267E3E7AC()
{
  OUTLINED_FUNCTION_12();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for UnsendMessagesConfirmUnsendParameters(0);
  v1[6] = v5;
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64) + 15;
  v1[7] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E3E838()
{
  OUTLINED_FUNCTION_113();
  v12 = v5;
  OUTLINED_FUNCTION_29();
  v6 = OUTLINED_FUNCTION_34_25();
  __swift_storeEnumTagSinglePayload(v2 + v4, 1, 1, v6);
  OUTLINED_FUNCTION_3_13(v3[6]);
  OUTLINED_FUNCTION_3_13(v3[7]);
  OUTLINED_FUNCTION_3_13(v3[8]);
  OUTLINED_FUNCTION_3_13(v3[9]);
  OUTLINED_FUNCTION_3_13(v3[10]);
  OUTLINED_FUNCTION_3_13(v3[11]);
  OUTLINED_FUNCTION_3_13(v3[12]);
  OUTLINED_FUNCTION_3_13(v3[13]);
  OUTLINED_FUNCTION_3_13(v3[15]);
  OUTLINED_FUNCTION_3_13(v3[16]);
  OUTLINED_FUNCTION_33_18();
  OUTLINED_FUNCTION_1_3();
  v7 = *(v0 + 4);
  v8 = swift_task_alloc();
  *(v1 + 64) = v8;
  *v8 = v1;
  v9 = OUTLINED_FUNCTION_20_27(v8);

  return v10(v9);
}

uint64_t sub_267E3E960()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E3EA5C()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[7];
  v0[10] = sub_267E3D660(type metadata accessor for UnsendMessagesConfirmUnsendParameters);
  v2 = OUTLINED_FUNCTION_28_0(MEMORY[0x277D55BE8]);
  v0[11] = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_15_38(v2);

  return v4(v3);
}

uint64_t sub_267E3EB18(uint64_t a1)
{
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *(v7 + 80);
  v10 = *v2;
  OUTLINED_FUNCTION_5();
  *v11 = v10;
  *(v5 + 96) = v1;

  if (!v1)
  {
    *(v5 + 104) = a1;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267E3EC50()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_5_58();
  sub_267E3F590(v1, v2);

  OUTLINED_FUNCTION_4_3();
  v4 = *(v0 + 104);

  return v3(v4);
}

uint64_t sub_267E3ECC0()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_5_58();
  sub_267E3F590(v2, v3);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267E3ED2C()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_5_58();
  sub_267E3F590(v2, v3);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267E3ED98()
{
  OUTLINED_FUNCTION_12();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = type metadata accessor for UnsendMessagesMessagesUnsentParameters(0);
  v0[5] = v4;
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64) + 15;
  v0[6] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E3EE24()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  v4 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v4);
  *(v1 + *(v2 + 20)) = v3;

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_267E3EEF8;
  v6 = v0[6];
  v7 = v0[4];

  return sub_267DBD4A8();
}

uint64_t sub_267E3EEF8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E3EFF4()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[6];
  v2 = sub_267E3DFFC();
  v0[9] = v2;
  v3 = OUTLINED_FUNCTION_28_0(MEMORY[0x277D55BE8]);
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_267E3F0B8;
  v4 = v0[3];

  return v6(0xD00000000000001DLL, 0x8000000267F1BB90, v2);
}

uint64_t sub_267E3F0B8(uint64_t a1)
{
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *(v7 + 72);
  v10 = *v2;
  OUTLINED_FUNCTION_5();
  *v11 = v10;
  *(v5 + 88) = v1;

  if (!v1)
  {
    *(v5 + 96) = a1;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267E3F1F0()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[4];
  OUTLINED_FUNCTION_3_68();
  sub_267E3F590(v2, v4);

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267E3F270()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[6];
  v2 = v0[4];
  OUTLINED_FUNCTION_3_68();
  sub_267E3F590(v1, v3);

  OUTLINED_FUNCTION_4_3();
  v5 = v0[12];

  return v4(v5);
}

uint64_t sub_267E3F2EC()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[11];
  v2 = v0[6];
  v3 = v0[4];
  OUTLINED_FUNCTION_3_68();
  sub_267E3F590(v2, v4);

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267E3F36C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_267E3F3C0(a1, a2);
}

uint64_t sub_267E3F3C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_267EF7B88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v10 = OUTLINED_FUNCTION_18(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_267BC9B04(a1, &v16 - v13, &qword_280229E20, &unk_267EFDCC0);
  (*(v5 + 16))(v8, a2, v4);
  v14 = sub_267EF78B8();
  (*(v5 + 8))(a2, v4);
  sub_267B9FED8(a1, &qword_280229E20, &unk_267EFDCC0);
  return v14;
}

uint64_t sub_267E3F590(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_5_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_267E3F634()
{
  sub_267E3F740(319, &qword_280229098, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_267E3F740(319, &qword_280229808, MEMORY[0x277D55B70], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_267E3F740(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_22Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v7 = OUTLINED_FUNCTION_40_1(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_61_3(*(a3 + 56));
  }

  v9 = v7;
  v10 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t __swift_store_extra_inhabitant_index_23Tm()
{
  OUTLINED_FUNCTION_39();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  result = OUTLINED_FUNCTION_40_1(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = result;
    v8 = v1 + *(v2 + 20);

    return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
  }

  else
  {
    *(v1 + *(v2 + 56)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_267E3F91C()
{
  sub_267E3F740(319, &qword_2802297E0, MEMORY[0x277D55C08], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_267E3F740(319, &qword_280229098, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_267E3F740(319, &qword_280229808, MEMORY[0x277D55B70], MEMORY[0x277D83940]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_267E3FA84(void (*a1)(void, void, void), uint64_t a2)
{
  v4 = sub_267EF2E38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() sharedInstance];
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = v9;
  type metadata accessor for MessagesFlowPluginBase();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27[1] = a2;
  v12 = a1;
  v13 = [objc_opt_self() bundleForClass_];
  sub_267EF2DE8();
  v14 = sub_267EF2D48();
  v16 = v15;
  (*(v5 + 8))(v8, v4);
  v28[0] = v14;
  v28[1] = v16;
  v27[4] = 45;
  v27[5] = 0xE100000000000000;
  v27[2] = 95;
  v27[3] = 0xE100000000000000;
  sub_267BB5034();
  v17 = sub_267EF9938();
  v19 = v18;

  v20 = sub_267DFEA38(0xD000000000000011, 0x8000000267F11F50, 0xD000000000000022, 0x8000000267F11F70, v13, v17, v19, v10);
  v22 = v21;

  a1 = v12;
  if (v22)
  {
    v12(v20, v22, 0);
  }

  else
  {
LABEL_4:
    v28[0] = 0;
    v28[1] = 0xE000000000000000;
    sub_267EF9B68();

    strcpy(v28, "No value in ");
    BYTE5(v28[1]) = 0;
    HIWORD(v28[1]) = -5120;
    MEMORY[0x26D608E60](0xD000000000000022, 0x8000000267F11F70);
    MEMORY[0x26D608E60](0x20726F6620, 0xE500000000000000);
    MEMORY[0x26D608E60](0xD000000000000011, 0x8000000267F11F50);
    v23 = v28[0];
    v24 = v28[1];
    sub_267C266B0();
    v25 = swift_allocError();
    *v26 = v23;
    v26[1] = v24;
    a1(v25, 0, 1);
  }
}

uint64_t sub_267E3FDC0(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D5B768] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_267E3FE68;

  return MEMORY[0x2821BA1C0](a1, a2);
}

uint64_t sub_267E3FE68(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_267E3FFA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = sub_267EF7068();
  v6(&v8, a2);
  if (v4)
  {
  }

  return v8;
}

uint64_t sub_267E4007C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  v7 = OUTLINED_FUNCTION_18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v75 - v10;
  v12 = sub_267EF3868();
  v13 = OUTLINED_FUNCTION_58(v12);
  v80 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_0();
  v79 = v18 - v17;
  v19 = sub_267EF4C08();
  v20 = OUTLINED_FUNCTION_58(v19);
  v83 = v21;
  v84 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_0_0();
  v82 = v25 - v24;
  v26 = sub_267EF4BA8();
  v27 = OUTLINED_FUNCTION_58(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_0();
  v34 = v33 - v32;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v35 = sub_267EF8A08();
  v36 = __swift_project_value_buffer(v35, qword_280240FB0);
  v37 = *(v29 + 16);
  v85 = a1;
  v37(v34, a1, v26);
  v81 = v36;
  v38 = sub_267EF89F8();
  v39 = sub_267EF95C8();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_48();
    v78 = a2;
    v41 = v40;
    v76 = OUTLINED_FUNCTION_52();
    v77 = v3;
    v88[0] = v76;
    *v41 = 136315138;
    sub_267E436CC(&qword_28022AF50, MEMORY[0x277D5C118]);
    v42 = sub_267EF9E58();
    v43 = v12;
    v44 = v11;
    v46 = v45;
    (*(v29 + 8))(v34, v26);
    v47 = sub_267BA33E8(v42, v46, v88);
    v11 = v44;
    v12 = v43;

    *(v41 + 4) = v47;
    _os_log_impl(&dword_267B93000, v38, v39, "#SearchForMessagesNeedsConfirmationFlowStrategy received input: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v76);
    v3 = v77;
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v29 + 8))(v34, v26);
  }

  v48 = v82;
  sub_267EF4B88();
  v49 = sub_267E57DFC(v48, &v86);
  (*(v83 + 8))(v48, v84, v49);
  if (v87)
  {
    sub_267BE58F4(&v86, v88);
    v50 = v89;
    v51 = v90;
    __swift_project_boxed_opaque_existential_0(v88, v89);
    v52 = v79;
    (*(v51 + 320))(v50, v51);
    v53 = (*(v80 + 88))(v52, v12);
    if (v53 == *MEMORY[0x277D5B970])
    {
      v54 = sub_267EF89F8();
      v55 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v55))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v56, v57, "#SearchForMessagesNeedsConfirmationFlowStrategy request is cancelled");
        OUTLINED_FUNCTION_32_0();
      }
    }

    else
    {
      if (v53 == *MEMORY[0x277D5B978])
      {
        v63 = *MEMORY[0x277D5BED8];
        v64 = sub_267EF44F8();
        OUTLINED_FUNCTION_22(v64);
        (*(v65 + 104))(v11, v63, v64);
        OUTLINED_FUNCTION_25_33();
        v66 = OBJC_IVAR____TtC16SiriMessagesFlow45SearchForMessageNeedsConfirmationFlowStrategy_confirmationResponse;
        OUTLINED_FUNCTION_24_32();
        sub_267CCED84(v11, v3 + v66);
        swift_endAccess();
        sub_267EF3E58();
        return __swift_destroy_boxed_opaque_existential_0(v88);
      }

      if (v53 != *MEMORY[0x277D5B968])
      {
        v71 = sub_267EF89F8();
        v72 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v72))
        {
          *OUTLINED_FUNCTION_32() = 0;
          OUTLINED_FUNCTION_17_0(&dword_267B93000, v73, v74, "#SearchForMessagesNeedsConfirmationFlowStrategy no valid confirmation in the intent, ignoring");
          OUTLINED_FUNCTION_32_0();
        }

        sub_267EF3E68();
        (*(v80 + 8))(v79, v12);
        return __swift_destroy_boxed_opaque_existential_0(v88);
      }

      v67 = *MEMORY[0x277D5BED0];
      v68 = sub_267EF44F8();
      OUTLINED_FUNCTION_22(v68);
      (*(v69 + 104))(v11, v67, v68);
      OUTLINED_FUNCTION_25_33();
      v70 = OBJC_IVAR____TtC16SiriMessagesFlow45SearchForMessageNeedsConfirmationFlowStrategy_confirmationResponse;
      OUTLINED_FUNCTION_24_32();
      sub_267CCED84(v11, v3 + v70);
      swift_endAccess();
    }

    sub_267EF3E48();
    return __swift_destroy_boxed_opaque_existential_0(v88);
  }

  sub_267B9F98C(&v86, &unk_28022BBF0, &unk_267F01C60);
  v58 = sub_267EF89F8();
  v59 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_36(v59))
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v60, v61, "#SearchForMessagesNeedsConfirmationFlowStrategy unsupported input");
    OUTLINED_FUNCTION_32_0();
  }

  return sub_267EF3E68();
}

uint64_t sub_267E406C8()
{
  OUTLINED_FUNCTION_12();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = sub_267EF4C08();
  v1[11] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[12] = v6;
  v8 = *(v7 + 64);
  v1[13] = OUTLINED_FUNCTION_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  v1[14] = v9;
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v10 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v12 = sub_267EF44F8();
  v1[17] = v12;
  OUTLINED_FUNCTION_30_0(v12);
  v1[18] = v13;
  v15 = *(v14 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v16 = sub_267EF44C8();
  v1[21] = v16;
  OUTLINED_FUNCTION_30_0(v16);
  v1[22] = v17;
  v19 = *(v18 + 64);
  v1[23] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_267E40864()
{
  v90 = v0;
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A850, &unk_267F01E10);
  v5 = sub_267EF4908();
  sub_267EF4938();
  v6 = sub_267EF44B8();
  v8 = v7;
  (*(v1 + 8))(v2, v3);
  v88 = sub_267EF4918();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v9 = sub_267EF8A08();
  __swift_project_value_buffer(v9, qword_280240FB0);

  v10 = sub_267EF89F8();
  v11 = sub_267EF95D8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v5;
    v13 = swift_slowAlloc();
    v89[0] = swift_slowAlloc();
    *v13 = 136315394;
    v0[6] = v12;
    sub_267EF7C38();
    sub_267E436CC(&qword_28022A060, MEMORY[0x277D55380]);
    v14 = sub_267EF9E58();
    v16 = sub_267BA33E8(v14, v15, v89);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v17 = sub_267BA33E8(v6, v8, v89);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_267B93000, v10, v11, "#SearchForMessagesNeedsConfirmationFlowStrategy parseConfirmationResponse app: %s parameterName: %s", v13, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  v18 = v0[16];
  v19 = v0[17];
  v20 = v0[10];
  v21 = OBJC_IVAR____TtC16SiriMessagesFlow45SearchForMessageNeedsConfirmationFlowStrategy_confirmationResponse;
  swift_beginAccess();
  sub_267CCED14(v20 + v21, v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_267B9F98C(v0[16], &qword_280229310, &unk_267EFCF70);
    v22 = sub_267EF89F8();
    v23 = sub_267EF95E8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_32();
      *v24 = 0;
      _os_log_impl(&dword_267B93000, v22, v23, "#SearchForMessagesNeedsConfirmationFlowStrategy confirmationResponse is nil, this is not expected", v24, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    sub_267C4BE60();
    swift_allocError();
    *v25 = 0;
    v25[1] = 0;
    swift_willThrow();

LABEL_14:
    v50 = v0[23];
    v51 = v0[19];
    v52 = v0[20];
    v54 = v0[15];
    v53 = v0[16];
    v55 = v0[13];

    OUTLINED_FUNCTION_17();
    goto LABEL_23;
  }

  v27 = v0[12];
  v26 = v0[13];
  v29 = v0[10];
  v28 = v0[11];
  v30 = v0[8];
  (*(v0[18] + 32))(v0[20], v0[16], v0[17]);
  v31 = v29 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_transformer;
  sub_267EF4B88();
  v32 = swift_task_alloc();
  *(v32 + 16) = v31;
  *(v32 + 24) = v26;
  v33 = sub_267E4001C(sub_267D6BCA8);
  v35 = v34;

  (*(v27 + 8))(v26, v28);
  if (v35)
  {
    v36 = v33;
    v37 = sub_267EF89F8();
    v38 = sub_267EF95E8();
    sub_267C095E0(v33);
    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_48();
      v40 = OUTLINED_FUNCTION_52();
      v89[0] = v40;
      *v39 = 136315138;
      v0[5] = v33;
      v41 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v42 = sub_267EF9098();
      v44 = sub_267BA33E8(v42, v43, v89);

      *(v39 + 4) = v44;
      OUTLINED_FUNCTION_29_2(&dword_267B93000, v45, v46, "#SearchForMessagesNeedsConfirmationFlowStrategy parse conversion failed: %s");
      __swift_destroy_boxed_opaque_existential_0(v40);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v47 = v0[20];
    v48 = v0[17];
    v49 = v0[18];
    swift_willThrow();

    (*(v49 + 8))(v47, v48);
    goto LABEL_14;
  }

  v57 = v0[19];
  v58 = v0[17];
  v59 = v0[18];
  (*(v59 + 104))(v57, *MEMORY[0x277D5BED8], v58);
  v60 = sub_267EF44E8();
  v87 = *(v59 + 8);
  v87(v57, v58);
  if (v60)
  {
    sub_267ECE738();
    v61 = v88;
    v62 = sub_267EF89F8();
    v63 = sub_267EF95D8();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = OUTLINED_FUNCTION_48();
      v65 = swift_slowAlloc();
      *v64 = 138412290;
      *(v64 + 4) = v61;
      *v65 = v61;
      v66 = v61;
      _os_log_impl(&dword_267B93000, v62, v63, "#SearchForMessagesNeedsConfirmationFlowStrategy updated intent: %@", v64, 0xCu);
      sub_267B9F98C(v65, &unk_280229E30, &unk_267EFC270);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    sub_267C095E0(v33);
  }

  else
  {
    sub_267C095E0(v33);
  }

  v67 = v0[10];

  v68 = sub_267EF89F8();
  v69 = sub_267EF95D8();

  if (os_log_type_enabled(v68, v69))
  {
    v71 = v0[14];
    v70 = v0[15];
    v72 = OUTLINED_FUNCTION_48();
    v73 = OUTLINED_FUNCTION_52();
    v89[0] = v73;
    *v72 = 136315138;
    sub_267CCED14(v20 + v21, v70);
    v74 = sub_267EF9098();
    v76 = sub_267BA33E8(v74, v75, v89);

    *(v72 + 4) = v76;
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v77, v78, "#SearchForMessagesNeedsConfirmationFlowStrategy confirmation response: %s");
    __swift_destroy_boxed_opaque_existential_0(v73);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v79 = v0[23];
  v81 = v0[19];
  v80 = v0[20];
  v83 = v0[16];
  v82 = v0[17];
  v86 = v0[13];
  v84 = v0[7];
  sub_267CCED14(v20 + v21, v0[15]);
  sub_267BC1E68();
  sub_267EF4758();

  v87(v80, v82);

  OUTLINED_FUNCTION_17();
LABEL_23:

  return v56();
}

uint64_t sub_267E41074()
{
  OUTLINED_FUNCTION_12();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  v1[20] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF4228();
  v1[21] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[22] = v8;
  v10 = *(v9 + 64);
  v1[23] = OUTLINED_FUNCTION_2();
  v11 = sub_267EF44C8();
  v1[24] = v11;
  OUTLINED_FUNCTION_30_0(v11);
  v1[25] = v12;
  v14 = *(v13 + 64);
  v1[26] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_267E41198()
{
  v28 = v0;
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A850, &unk_267F01E10);
  sub_267EF4938();
  v26 = sub_267EF44B8();
  v6 = v5;
  v7 = *(v1 + 8);
  v7(v2, v3);
  v0[27] = sub_267EF4908();
  v8 = sub_267EF4918();
  v0[28] = v8;
  sub_267EF4938();
  sub_267EF44B8();
  v7(v2, v3);
  if (sub_267C7C47C() == 9)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v9 = sub_267EF8A08();
    __swift_project_value_buffer(v9, qword_280240FB0);

    v10 = sub_267EF89F8();
    v11 = sub_267EF95E8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_48();
      v13 = OUTLINED_FUNCTION_52();
      v27 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_267BA33E8(v26, v6, &v27);
      _os_log_impl(&dword_267B93000, v10, v11, "#SearchForMessagesNeedsConfirmationFlowStrategy unknown parameter: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    sub_267C4BE60();
    swift_allocError();
    *v14 = v26;
    v14[1] = v6;
    swift_willThrow();

    v15 = v0[26];
    v16 = v0[23];
    v17 = v0[20];

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_15();

    __asm { BRAA            X1, X16 }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[29] = v20;
  *v20 = v21;
  v20[1] = sub_267E41480;
  v22 = v0[23];
  v23 = v0[19];
  OUTLINED_FUNCTION_15();

  return sub_267E4182C();
}

uint64_t sub_267E41480()
{
  OUTLINED_FUNCTION_12();
  v2 = *(*v1 + 232);
  v3 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *(v5 + 240) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_267E41584()
{
  v1 = *(v0 + 224);
  v19 = *(v0 + 208);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 160);
  v17 = *(v0 + 216);
  v18 = *(v0 + 168);
  v5 = *(v0 + 152);
  v6 = *(v0 + 136);
  v8 = v5[5];
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v8);
  (*(v7 + 8))(v8, v7);
  v9 = v5[5];
  v10 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v9);
  (*(v10 + 8))(v9, v10);
  v11 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  sub_267EF3BC8();
  sub_267E42638(v4);
  v12 = sub_267EF4158();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v12);
  v13 = sub_267EF4CC8();
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  v14 = MEMORY[0x277D5C1D8];
  v6[3] = v13;
  v6[4] = v14;
  __swift_allocate_boxed_opaque_existential_0(v6);
  sub_267EF3F38();

  sub_267B9F98C(v0 + 96, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v4, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v3 + 8))(v2, v18);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267E417A0()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 216);

  v2 = *(v0 + 240);
  v3 = *(v0 + 208);
  v4 = *(v0 + 184);
  v5 = *(v0 + 160);

  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_267E4182C()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  *(v1 + 192) = v3;
  *(v1 + 56) = v4;
  v5 = sub_267EF2E38();
  *(v1 + 80) = v5;
  OUTLINED_FUNCTION_30_0(v5);
  *(v1 + 88) = v6;
  v8 = *(v7 + 64);
  *(v1 + 96) = OUTLINED_FUNCTION_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v10 + 64) + 15;
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267E41928()
{
  v64 = v0;
  switch(*(v0 + 192))
  {
    case 1:
      v1 = *(*(v0 + 72) + 56);
      v2 = sub_267E2D6E4(*(v0 + 64));
      v3 = v2;
      if (v2)
      {
        if (sub_267BAF0DC(v2))
        {
          sub_267BBD0EC(0, (v3 & 0xC000000000000001) == 0, v3);
          if ((v3 & 0xC000000000000001) != 0)
          {
            v4 = MEMORY[0x26D609870](0, v3);
          }

          else
          {
            v4 = *(v3 + 32);
          }

          v5 = v4;
          v7 = *(v0 + 88);
          v6 = *(v0 + 96);
          v9 = *(v0 + 72);
          v8 = *(v0 + 80);

          v10 = v9[6];
          __swift_project_boxed_opaque_existential_0(v9 + 2, v9[5]);
          v11 = *(v10 + 8);
          v12 = OUTLINED_FUNCTION_4_1();
          v13(v12);
          v14 = *(v0 + 48);
          __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
          OUTLINED_FUNCTION_4_1();
          sub_267EF3B68();
          v3 = sub_267BC20F4(v6, 0, 0, 0, v5);

          (*(v7 + 8))(v6, v8);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        }

        else
        {

          v3 = 0;
        }
      }

      *(v0 + 160) = v3;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 168) = v46;
      *v46 = v47;
      v46[1] = sub_267E421D4;
      OUTLINED_FUNCTION_20_28();
      OUTLINED_FUNCTION_64_3();

      return sub_267CE8FCC(v48, v49);
    case 2:
      v21 = *(*(v0 + 72) + 56);
      v22 = sub_267E43628(*(v0 + 64));
      if (!v22)
      {
        goto LABEL_30;
      }

      if (v22[2])
      {
        v23 = *(v0 + 112);
        v24 = v22[4];
        v25 = v22[5];

        sub_267EF90F8();

        v26 = 0;
      }

      else
      {

LABEL_30:
        v26 = 1;
      }

      v51 = *(v0 + 112);
      v52 = sub_267EF79B8();
      __swift_storeEnumTagSinglePayload(v51, v26, 1, v52);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 144) = v53;
      *v53 = v54;
      v53[1] = sub_267E4205C;
      v55 = *(v0 + 112);
      OUTLINED_FUNCTION_20_28();
      OUTLINED_FUNCTION_64_3();

      result = sub_267CE8C84();
      break;
    case 3:
      v15 = *(*(v0 + 72) + 56);
      sub_267D25830([*(v0 + 64) attributes], *(v0 + 120));
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 128) = v16;
      *v16 = v17;
      v16[1] = sub_267E41EE4;
      v18 = *(v0 + 120);
      OUTLINED_FUNCTION_20_28();
      OUTLINED_FUNCTION_64_3();

      return sub_267CE8904();
    case 5:
      v27 = *(*(v0 + 72) + 56);
      v28 = sub_267E2D700(*(v0 + 64));
      if (!v28)
      {
        goto LABEL_35;
      }

      v29 = v28;
      if (sub_267BAF0DC(v28))
      {
        sub_267BBD0EC(0, (v29 & 0xC000000000000001) == 0, v29);
        if ((v29 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x26D609870](0, v29);
        }

        else
        {
          v30 = *(v29 + 32);
        }

        v31 = v30;
        v32 = *(v0 + 104);

        sub_267EF9618();

        v33 = 0;
      }

      else
      {

LABEL_35:
        v33 = 1;
      }

      v57 = *(v0 + 104);
      v58 = sub_267EF79B8();
      __swift_storeEnumTagSinglePayload(v57, v33, 1, v58);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 176) = v59;
      *v59 = v60;
      v59[1] = sub_267E42358;
      v61 = *(v0 + 104);
      OUTLINED_FUNCTION_20_28();
      OUTLINED_FUNCTION_64_3();

      result = sub_267CE8AC4();
      break;
    default:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v34 = sub_267EF8A08();
      __swift_project_value_buffer(v34, qword_280240FB0);
      v35 = sub_267EF89F8();
      v36 = sub_267EF95E8();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = *(v0 + 192);
        v38 = OUTLINED_FUNCTION_48();
        v39 = OUTLINED_FUNCTION_52();
        v63 = v39;
        *v38 = 136315138;
        v40 = sub_267C7C4C8(v37);
        v42 = sub_267BA33E8(v40, v41, &v63);

        *(v38 + 4) = v42;
        _os_log_impl(&dword_267B93000, v35, v36, "SearchForMessages.confirmationDialog: resolving unexpected/unhandled parameterName %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      sub_267CCECC0();
      swift_allocError();
      *v43 = 4;
      swift_willThrow();
      OUTLINED_FUNCTION_27_29();

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_64_3();

      __asm { BRAA            X1, X16 }

      return result;
  }

  return result;
}

uint64_t sub_267E41EE4()
{
  OUTLINED_FUNCTION_56();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  v5 = v2[16];
  *v4 = *v1;
  v3[17] = v0;

  sub_267B9F98C(v2[15], &unk_28022AE30, &qword_267EFC0B0);
  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {
    v10 = v3[14];
    v9 = v3[15];
    v13 = v3 + 12;
    v11 = v3[12];
    v12 = v13[1];

    OUTLINED_FUNCTION_5_59();

    return v14();
  }
}

uint64_t sub_267E4205C()
{
  OUTLINED_FUNCTION_56();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  v5 = v2[18];
  *v4 = *v1;
  v3[19] = v0;

  sub_267B9F98C(v2[14], &unk_28022AE30, &qword_267EFC0B0);
  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {
    v10 = v3[14];
    v9 = v3[15];
    v13 = v3 + 12;
    v11 = v3[12];
    v12 = v13[1];

    OUTLINED_FUNCTION_5_59();

    return v14();
  }
}

uint64_t sub_267E421D4()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = v1[20];

  v6 = v1[15];
  v7 = v1[14];
  v8 = v1[13];
  v9 = v1[12];

  v10 = *(v3 + 8);

  return v10();
}

uint64_t sub_267E42358()
{
  OUTLINED_FUNCTION_56();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  v5 = v2[22];
  *v4 = *v1;
  v3[23] = v0;

  sub_267B9F98C(v2[13], &unk_28022AE30, &qword_267EFC0B0);
  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {
    v10 = v3[14];
    v9 = v3[15];
    v13 = v3 + 12;
    v11 = v3[12];
    v12 = v13[1];

    OUTLINED_FUNCTION_5_59();

    return v14();
  }
}

uint64_t sub_267E424D0()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 136);
  OUTLINED_FUNCTION_27_29();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267E42548()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 152);
  OUTLINED_FUNCTION_27_29();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267E425C0()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 184);
  OUTLINED_FUNCTION_27_29();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267E42638@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_267EF53D8();
  v4 = OUTLINED_FUNCTION_58(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v4);
  v56 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v49 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - v14;
  v16 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v17 = *(v16 + 8);
  v18 = OUTLINED_FUNCTION_4_1();
  v19(v18);
  sub_267EF4148();
  __swift_project_boxed_opaque_existential_0(v59, v60);
  OUTLINED_FUNCTION_4_1();
  sub_267EF3B98();
  sub_267EF4128();
  __swift_destroy_boxed_opaque_existential_0(v59);
  if (qword_280228900 != -1)
  {
    swift_once();
  }

  sub_267BB8DFC();
  sub_267EF40D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v20 = swift_allocObject();
  v57 = xmmword_267EFC020;
  *(v20 + 16) = xmmword_267EFC020;
  if (qword_2802288C8 != -1)
  {
    swift_once();
  }

  *(v20 + 32) = sub_267BC9500();
  *(v20 + 40) = v21;
  sub_267EF4118();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_267F01440;
  *(v22 + 32) = sub_267BB90E4(0);
  *(v22 + 40) = v23;
  *(v22 + 48) = sub_267BB90E4(1);
  *(v22 + 56) = v24;
  *(v22 + 64) = sub_267BB90E4(2);
  *(v22 + 72) = v25;
  *(v22 + 80) = sub_267C8F86C(0);
  *(v22 + 88) = v26;
  sub_267EF4108();
  sub_267EF4098();
  v27 = sub_267EF6428();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  sub_267EF6418();
  sub_267BBB050();

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v30 = sub_267EF8A08();
  __swift_project_value_buffer(v30, qword_280240FB0);
  v31 = *(v6 + 16);
  v31(v13, v15, v3);
  v32 = sub_267EF89F8();
  v33 = sub_267EF95D8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_48();
    v52 = v34;
    v53 = OUTLINED_FUNCTION_52();
    v58 = v53;
    *v34 = 136315138;
    v35 = v56;
    v31(v56, v13, v3);
    sub_267EF5458();
    v51 = v33;
    v60 = v3;
    v61 = sub_267E436CC(&qword_28022BAF0, MEMORY[0x277D5DC70]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v59);
    v31(boxed_opaque_existential_0, v35, v3);
    v37 = sub_267EF5448();
    v54 = a1;
    v55 = v15;
    v39 = v38;
    v40 = v35;
    v41 = *(v6 + 8);
    v50 = v31;
    v41(v40, v3);
    v41(v13, v3);
    __swift_destroy_boxed_opaque_existential_0(v59);
    v42 = sub_267BA33E8(v37, v39, &v58);
    v15 = v55;

    v43 = v52;
    *(v52 + 1) = v42;
    _os_log_impl(&dword_267B93000, v32, v51, "#SearchForMessageNeedsConfirmationFlowStrategy submitting NLv4 dialog act: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();

    v44 = v50;
  }

  else
  {

    v41 = *(v6 + 8);
    v44 = v31;
    v41(v13, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v45 = *(v6 + 72);
  v46 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = v57;
  v44(v47 + v46, v15, v3);
  sub_267EF4088();
  return (v41)(v15, v3);
}

uint64_t sub_267E42BB0()
{
  v0 = sub_267C4779C();
  sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow45SearchForMessageNeedsConfirmationFlowStrategy_confirmationResponse, &qword_280229310, &unk_267EFCF70);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_267E42C3C()
{
  sub_267C25DD4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_267E42CF0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267CFB43C;

  return sub_267E406C8();
}

uint64_t sub_267E42DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B4E0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SearchForMessageNeedsConfirmationFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267E42E6C;

  return MEMORY[0x2821B9E10](a1, a2, v10, a4);
}

uint64_t sub_267E42E6C()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v2);
}

uint64_t sub_267E42F5C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267CFB43C;

  return sub_267E41074();
}

uint64_t sub_267E43008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B4F0] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SearchForMessageNeedsConfirmationFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267CFB43C;

  return MEMORY[0x2821B9E28](a1, a2, a3, v12, a5);
}

uint64_t sub_267E430D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B500] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SearchForMessageNeedsConfirmationFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267CFB43C;

  return MEMORY[0x2821B9E38](a1, a2, a3, v12, a5);
}

uint64_t sub_267E431A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B4F8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SearchForMessageNeedsConfirmationFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BF1CB4;

  return MEMORY[0x2821B9E30](a1, a2, v10, a4);
}

uint64_t sub_267E43270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B508] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SearchForMessageNeedsConfirmationFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267CFB43C;

  return MEMORY[0x2821B9E40](a1, a2, v10, a4);
}

uint64_t sub_267E43338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B4E8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for SearchForMessageNeedsConfirmationFlowStrategy();
  *v13 = v6;
  v13[1] = sub_267CFB43C;

  return MEMORY[0x2821B9E18](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_267E43418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5C0B0] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for SearchForMessageNeedsConfirmationFlowStrategy();
  *v13 = v6;
  v13[1] = sub_267CFB43C;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_267E434F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C0B8] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for SearchForMessageNeedsConfirmationFlowStrategy();
  *v15 = v7;
  v15[1] = sub_267CFB43C;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_267E43628(void *a1)
{
  v1 = [a1 searchTerms];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF92F8();

  return v3;
}

uint64_t sub_267E43680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_267E3FFA0(a1, a2, &qword_2802295F0, &unk_267F0B840);
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_267E436CC(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_267E43718()
{
  sub_267EF2D78();
  v0 = sub_267BC2B54();

  return !v0;
}

uint64_t sub_267E437A8()
{
  v0 = sub_267EF2D78();
  if (!v1)
  {
    return 46;
  }

  v2 = v0;
  v3 = v1;
  v4 = v0 == 24938 && v1 == 0xE200000000000000;
  if (!v4 && (OUTLINED_FUNCTION_0_66() & 1) == 0)
  {
    v5 = v2 == 26746 && v3 == 0xE200000000000000;
    if (!v5 && (OUTLINED_FUNCTION_0_66() & 1) == 0)
    {
      v6 = v2 == 6649209 && v3 == 0xE300000000000000;
      if (!v6 && (sub_267EF9EA8() & 1) == 0)
      {
        if (v2 == 26740 && v3 == 0xE200000000000000)
        {
        }

        else
        {
          v9 = OUTLINED_FUNCTION_0_66();

          if ((v9 & 1) == 0)
          {
            return 46;
          }
        }

        return 0;
      }
    }
  }

  v7 = 8552675;

  return v7;
}

uint64_t sub_267E438B8()
{
  result = [v0 reactionType];
  if (result != 1)
  {
    if (*MEMORY[0x277CD4530] == result)
    {
      return 2;
    }

    else if (*MEMORY[0x277CD4518] == result || *MEMORY[0x277CD4520] == result || *MEMORY[0x277CD44F8] == result || *MEMORY[0x277CD4500] == result || *MEMORY[0x277CD4510] == result || *MEMORY[0x277CD4528] == result)
    {
      return 0;
    }

    else if (*MEMORY[0x277CD4508] == result)
    {
      return 3;
    }

    else if (*MEMORY[0x277CD44F0] == result)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

unint64_t sub_267E439A0(char a1)
{
  result = 0x615479636167656CLL;
  switch(a1)
  {
    case 1:
      result = 0x706154696A6F6D65;
      break;
    case 2:
      result = 0x5472656B63697473;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x53646570706F7264;
      break;
    case 5:
      result = 0x636972656E6567;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267E43AF8(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0x696A6F6D65;
  }

  if (*MEMORY[0x277CD4530] == a1)
  {
    return 0x72656B63697473;
  }

  if (*MEMORY[0x277CD4518] == a1)
  {
    v2 = 1701538156;
    return v2 & 0xFFFF0000FFFFFFFFLL | 0x6400000000;
  }

  if (*MEMORY[0x277CD4520] == a1)
  {
    v2 = 1702260588;
    return v2 & 0xFFFF0000FFFFFFFFLL | 0x6400000000;
  }

  if (*MEMORY[0x277CD44F8] == a1)
  {
    return 0x64656B696C736964;
  }

  if (*MEMORY[0x277CD4500] == a1)
  {
    return 0x7A69736168706D65;
  }

  if (*MEMORY[0x277CD4510] == a1)
  {
    return 0x6465686775616CLL;
  }

  if (*MEMORY[0x277CD4528] == a1)
  {
    return 0x6E6F697473657571;
  }

  if (*MEMORY[0x277CD4508] == a1)
  {
    return 0x65746172656E6567;
  }

  return 0x636972656E6567;
}

uint64_t sub_267E43D18()
{
  OUTLINED_FUNCTION_12();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_267EF3CF8();
  v1[14] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[15] = v4;
  v6 = *(v5 + 64);
  v1[16] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF48A8();
  v1[17] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[18] = v8;
  v10 = *(v9 + 64);
  v1[19] = OUTLINED_FUNCTION_2();
  v11 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64);
  v1[20] = OUTLINED_FUNCTION_2();
  v14 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_267E43E28()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[20];
  v2 = v0[13];
  type metadata accessor for SendMessageCATsSimple();
  sub_267EF7B68();
  v0[21] = sub_267EF79E8();
  v3 = *(*(v2 + 112) + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_isTriggeredByButtonTap);
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_267E43F04;

  return sub_267E9DA50(v3);
}

uint64_t sub_267E43F04()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 176);
  *v4 = *v1;
  v3[23] = v7;
  v3[24] = v0;

  if (!v0)
  {
    v8 = v3[21];
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E4400C()
{
  OUTLINED_FUNCTION_53();
  v1 = *(v0 + 152);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = [*(v0 + 184) catId];
  v7 = sub_267EF9028();
  v9 = v8;

  sub_267EF3CA8();
  sub_267E47278(v7, v9, v2);

  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_26_0();
  v12(v11);
  v13 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v4[5]);
  v14 = *(v13 + 8);
  v15 = OUTLINED_FUNCTION_38_0();
  v16(v15);
  v17 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_38_0();
  LOBYTE(v4) = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v4)
  {
    v18 = *(v0 + 104);

    v19 = &unk_267F0C140;
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  *(v0 + 200) = v19;
  *(v0 + 208) = v18;
  v20 = *(v0 + 184);
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 88) = 0;
  v28 = OUTLINED_FUNCTION_27_30(&dword_267F0EE88);
  v21 = v20;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 216) = v22;
  *v22 = v23;
  v22[1] = sub_267E441EC;
  v24 = *(v0 + 152);
  v25 = *(v0 + 96);
  v26 = *(v0 + 104);

  return v28(v25, v20, v24, v0 + 56, v19, v18);
}

uint64_t sub_267E441EC()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 216);
  v7 = *(v5 + 184);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v3 + 224) = v0;

  sub_267B9FED8(v3 + 56, &qword_280229330, &qword_267F092F0);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267E4431C()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[16];
  sub_267BA1BFC(v0[25]);

  v8 = *(v6 + 8);
  v9 = OUTLINED_FUNCTION_26_0();
  v10(v9);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_125();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_267E443BC()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[21];

  v2 = v0[24];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[16];

  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_267E4443C()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[26];
  v2 = v0[23];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  sub_267BA1BFC(v0[25]);

  v6 = *(v4 + 8);
  v7 = OUTLINED_FUNCTION_66();
  v8(v7);
  v9 = v0[28];
  v11 = v0[19];
  v10 = v0[20];
  v12 = v0[16];

  OUTLINED_FUNCTION_17();

  return v13();
}

uint64_t sub_267E444E0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_267EF8248() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E445A8, 0, 0);
}

uint64_t sub_267E445A8()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_267EF8178();
  v0[6] = v3;
  v2[3] = v3;
  OUTLINED_FUNCTION_16_36();
  v2[4] = sub_267E48D88(v4, v5);
  v0[7] = __swift_allocate_boxed_opaque_existential_0(v2);
  v6 = sub_267EF8198();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[8] = v7;
  *v7 = v8;
  v7[1] = sub_267E4469C;
  v10 = v0[3];
  v9 = v0[4];

  return sub_267E469C4(v9);
}

uint64_t sub_267E4469C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E44780()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  v1 = [*(v0[3] + 64) serviceName];
  if (v1)
  {
    v2 = v1;
    sub_267EF9028();
  }

  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  OUTLINED_FUNCTION_63();
  sub_267EF84D8();
  v7 = *MEMORY[0x277D5D378];
  OUTLINED_FUNCTION_5_0(v4);
  (*(v8 + 104))(v3);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_125();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_267E4487C()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 360) = v2;
  *(v1 + 112) = v3;
  *(v1 + 120) = v0;
  *(v1 + 96) = v4;
  *(v1 + 104) = v5;
  v6 = sub_267EF8198();
  *(v1 + 128) = v6;
  OUTLINED_FUNCTION_30_0(v6);
  *(v1 + 136) = v7;
  *(v1 + 144) = *(v8 + 64);
  *(v1 + 152) = OUTLINED_FUNCTION_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v10 + 64);
  *(v1 + 160) = OUTLINED_FUNCTION_2();
  v12 = sub_267EF8558();
  *(v1 + 168) = v12;
  OUTLINED_FUNCTION_30_0(v12);
  *(v1 + 176) = v13;
  v15 = *(v14 + 64);
  *(v1 + 184) = OUTLINED_FUNCTION_2();
  v16 = sub_267EF3CF8();
  *(v1 + 192) = v16;
  OUTLINED_FUNCTION_30_0(v16);
  *(v1 + 200) = v17;
  v19 = *(v18 + 64);
  *(v1 + 208) = OUTLINED_FUNCTION_2();
  v20 = sub_267EF48A8();
  *(v1 + 216) = v20;
  OUTLINED_FUNCTION_30_0(v20);
  *(v1 + 224) = v21;
  v23 = *(v22 + 64);
  *(v1 + 232) = OUTLINED_FUNCTION_2();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v24);
  v26 = *(v25 + 64) + 15;
  *(v1 + 240) = swift_task_alloc();
  *(v1 + 248) = swift_task_alloc();
  v27 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v27);
  v29 = *(v28 + 64);
  *(v1 + 256) = OUTLINED_FUNCTION_2();
  v30 = sub_267EF2E38();
  *(v1 + 264) = v30;
  OUTLINED_FUNCTION_30_0(v30);
  *(v1 + 272) = v31;
  v33 = *(v32 + 64);
  *(v1 + 280) = OUTLINED_FUNCTION_2();
  v34 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v34, v35, v36);
}

uint64_t sub_267E44AEC()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  v2 = OUTLINED_FUNCTION_13_8(v1, qword_280240FB0);
  v3 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v5, v6, "#SendTapbackResponseProvider making confirmation output");
    OUTLINED_FUNCTION_26();
  }

  v7 = *(v0 + 280);
  v9 = *(v0 + 248);
  v8 = *(v0 + 256);
  v10 = *(v0 + 120);
  v11 = *(v0 + 104);

  sub_267EF6FF8();
  sub_267EF6FE8();
  sub_267EF6FB8();

  sub_267EF70E8();

  type metadata accessor for SendMessageCATsSimple();
  sub_267EF7B68();
  *(v0 + 288) = sub_267EF79E8();
  sub_267EF8188();
  sub_267EF90F8();

  sub_267EF79B8();
  OUTLINED_FUNCTION_19_5();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = [*(v10 + 64) sender];
  if (v16)
  {
    v17 = v16;
    v18 = sub_267BC20F4(*(v0 + 280), 0, 0, 0, v16);
  }

  else
  {
    v18 = 0;
  }

  *(v0 + 296) = v18;
  v19 = *(v0 + 240);
  v20 = *(v0 + 112);
  v21 = *(*(*(v0 + 120) + 112) + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_isTriggeredByButtonTap);
  sub_267BE8214();
  INMessageType.description.getter(v20);
  sub_267EF90F8();

  OUTLINED_FUNCTION_19_5();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  v26 = swift_task_alloc();
  *(v0 + 304) = v26;
  *v26 = v0;
  v26[1] = sub_267E44D5C;
  v27 = *(v0 + 240);
  v28 = *(v0 + 248);
  v29 = *(v0 + 360);

  return sub_267E9C56C();
}

uint64_t sub_267E44D5C()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = v4[38];
  v6 = v4[37];
  v7 = v4[36];
  v8 = v4[31];
  v9 = v4[30];
  v10 = *v1;
  OUTLINED_FUNCTION_5();
  *v11 = v10;
  *(v13 + 312) = v12;
  *(v13 + 320) = v0;

  OUTLINED_FUNCTION_394();
  sub_267B9FED8(v14, v15, v16);
  OUTLINED_FUNCTION_394();
  sub_267B9FED8(v17, v18, v19);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_267E44EF4()
{
  v1 = *(v0 + 232);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 160);
  v5 = *(v0 + 128);
  v39 = *(v0 + 136);
  v40 = *(v0 + 192);
  v6 = *(v0 + 120);
  v41 = *(v0 + 104);
  v42 = *(v0 + 184);
  v7 = [*(v0 + 312) catId];
  v8 = sub_267EF9028();
  v10 = v9;

  sub_267EF3C98();
  sub_267E47278(v8, v10, v2);

  (*(v3 + 8))(v2, v40);
  v11 = *(v39 + 16);
  v11(v4, v41, v5);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  sub_267EF8548();
  v12 = v6[6];
  __swift_project_boxed_opaque_existential_0(v6 + 2, v6[5]);
  v13 = *(v12 + 8);
  v14 = OUTLINED_FUNCTION_38_0();
  v15(v14);
  v16 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_38_0();
  LOBYTE(v6) = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v6)
  {
    v17 = *(v0 + 144);
    v18 = *(v0 + 136);
    v19 = *(v0 + 120);
    v11(*(v0 + 152), *(v0 + 104), *(v0 + 128));
    v20 = (v17 + ((*(v18 + 80) + 16) & ~*(v18 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    v22 = *(v18 + 32);
    OUTLINED_FUNCTION_394();
    v23();
    *(v21 + v20) = v19;

    v24 = &unk_267F0C130;
  }

  else
  {
    v24 = 0;
    v21 = 0;
  }

  *(v0 + 328) = v24;
  *(v0 + 336) = v21;
  v25 = *(v0 + 312);
  v26 = *(v0 + 176);
  v27 = *(v0 + 184);
  v28 = *(v0 + 168);
  *(v0 + 80) = v28;
  OUTLINED_FUNCTION_3_69();
  *(v0 + 88) = sub_267E48D88(v29, v30);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
  (*(v26 + 16))(boxed_opaque_existential_0, v27, v28);
  v43 = OUTLINED_FUNCTION_27_30(&dword_267F0EE88);
  v32 = v25;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 344) = v33;
  *v33 = v34;
  v33[1] = sub_267E451E8;
  v35 = *(v0 + 232);
  v36 = *(v0 + 120);
  v37 = *(v0 + 96);

  return v43(v37, v25, v35, v0 + 56, v24, v21);
}

uint64_t sub_267E451E8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 344);
  v7 = *(v5 + 312);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v3 + 352) = v0;

  if (!v0)
  {
    sub_267B9FED8(v3 + 56, &qword_280229330, &qword_267F092F0);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267E45318()
{
  v1 = v0[42];
  v2 = v0[39];
  v4 = v0[34];
  v3 = v0[35];
  v13 = v0[33];
  v14 = v0[32];
  v15 = v0[31];
  v16 = v0[30];
  v5 = v0[28];
  v6 = v0[29];
  v7 = v0[27];
  v9 = v0[22];
  v8 = v0[23];
  v10 = v0[21];
  v17 = v0[26];
  v18 = v0[20];
  v19 = v0[19];
  sub_267BA1BFC(v0[41]);

  (*(v9 + 8))(v8, v10);
  (*(v5 + 8))(v6, v7);
  (*(v4 + 8))(v3, v13);

  OUTLINED_FUNCTION_1();

  return v11();
}

uint64_t sub_267E4545C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  (*(v12[34] + 8))(v12[35], v12[33]);
  v13 = v12[40];
  OUTLINED_FUNCTION_30_32();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_267E45514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = v12[42];
  v14 = v12[39];
  v15 = v12[34];
  v39 = v12[35];
  v16 = v12[33];
  v18 = v12[28];
  v17 = v12[29];
  v19 = v12[27];
  v20 = v12[22];
  v21 = v12[23];
  v22 = v12[21];
  sub_267BA1BFC(v12[41]);

  v23 = *(v20 + 8);
  v24 = OUTLINED_FUNCTION_63();
  v25(v24);
  v26 = *(v18 + 8);
  v27 = OUTLINED_FUNCTION_37_1();
  v28(v27);
  (*(v15 + 8))(v39, v16);
  sub_267B9FED8((v12 + 7), &qword_280229330, &qword_267F092F0);
  v29 = v12[44];
  OUTLINED_FUNCTION_30_32();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, v39, a10, a11, a12);
}

uint64_t sub_267E45638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_267EF8248() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E45704, 0, 0);
}

uint64_t sub_267E45704()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = sub_267EF8178();
  v0[7] = v4;
  v3[3] = v4;
  OUTLINED_FUNCTION_16_36();
  v3[4] = sub_267E48D88(v5, v6);
  v0[8] = __swift_allocate_boxed_opaque_existential_0(v3);
  v7 = sub_267EF8198();
  OUTLINED_FUNCTION_5_0(v7);
  v9 = *(v8 + 16);
  v10 = OUTLINED_FUNCTION_66();
  v11(v10);
  OUTLINED_FUNCTION_19_5();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[9] = v16;
  *v16 = v17;
  v16[1] = sub_267E4582C;
  v19 = v0[4];
  v18 = v0[5];

  return sub_267E469C4(v18);
}

uint64_t sub_267E4582C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E45910()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  v1 = [*(v0[4] + 64) serviceName];
  if (v1)
  {
    v2 = v1;
    sub_267EF9028();
  }

  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  OUTLINED_FUNCTION_63();
  sub_267EF84D8();
  v7 = *MEMORY[0x277D5D378];
  OUTLINED_FUNCTION_5_0(v4);
  (*(v8 + 104))(v3);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_125();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_267E45A0C()
{
  OUTLINED_FUNCTION_12();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_267EF8558();
  v1[10] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[11] = v5;
  v7 = *(v6 + 64);
  v1[12] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF3CF8();
  v1[13] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[14] = v9;
  v11 = *(v10 + 64);
  v1[15] = OUTLINED_FUNCTION_2();
  v12 = sub_267EF48A8();
  v1[16] = v12;
  OUTLINED_FUNCTION_30_0(v12);
  v1[17] = v13;
  v15 = *(v14 + 64);
  v1[18] = OUTLINED_FUNCTION_2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  OUTLINED_FUNCTION_18(v16);
  v18 = *(v17 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v19);
  v21 = *(v20 + 64);
  v1[21] = OUTLINED_FUNCTION_2();
  v22 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v22);
  v24 = *(v23 + 64);
  v1[22] = OUTLINED_FUNCTION_2();
  v25 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_267E45BD8()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  v2 = OUTLINED_FUNCTION_13_8(v1, qword_280240FB0);
  v3 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v5, v6, "#SendTapbackResponseProvider making tapback removed");
    OUTLINED_FUNCTION_26();
  }

  v7 = v0[22];
  v8 = v0[20];
  v9 = v0[8];

  type metadata accessor for SendMessageCATsSimple();
  sub_267EF7B68();
  v0[23] = sub_267EF79E8();
  v10 = OUTLINED_FUNCTION_37_1();
  sub_267E0BBB8(v10, v11);
  v12 = sub_267EF8198();
  v0[24] = v12;
  if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
  {
    sub_267B9FED8(v0[20], &qword_280229920, &unk_267F0ABD0);
    v13 = 1;
  }

  else
  {
    v14 = v0[20];
    v15 = v0[21];
    sub_267EF8188();
    OUTLINED_FUNCTION_5_0(v12);
    (*(v16 + 8))(v14, v12);
    OUTLINED_FUNCTION_63();
    sub_267EF90F8();

    v13 = 0;
  }

  v17 = v0[21];
  v18 = v0[9];
  v19 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v17, v13, 1, v19);
  v20 = *(*(v18 + 112) + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_isTriggeredByButtonTap);
  v21 = swift_task_alloc();
  v0[25] = v21;
  *v21 = v0;
  v21[1] = sub_267E45DF0;
  v22 = v0[21];
  OUTLINED_FUNCTION_125();

  return sub_267E9E880();
}

uint64_t sub_267E45DF0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = v4[25];
  v6 = v4[23];
  v7 = v4[21];
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v11 + 208) = v10;
  *(v11 + 216) = v0;

  sub_267B9FED8(v7, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267E45F40()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[14];
  v3 = v0[15];
  v20 = v0[13];
  v21 = v0[12];
  v22 = v0[24];
  v5 = v0[11];
  v23 = v0[10];
  v25 = v0[26];
  v6 = v0[9];
  v7 = [v25 catId];
  sub_267EF9028();

  sub_267EF3C98();
  v8 = OUTLINED_FUNCTION_26_0();
  sub_267E47278(v8, v9, v3);

  (*(v4 + 8))(v3, v20);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v22);
  sub_267EF8548();
  v0[5] = v23;
  OUTLINED_FUNCTION_3_69();
  v0[6] = sub_267E48D88(v10, v11);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  (*(v5 + 16))(boxed_opaque_existential_0, v21, v23);
  v24 = OUTLINED_FUNCTION_27_30(&dword_267F0EE88);
  v13 = v25;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[28] = v14;
  *v14 = v15;
  v14[1] = sub_267E46124;
  v16 = v0[18];
  v17 = v0[9];
  v18 = v0[7];

  return v24(v18, v25, v16, v0 + 2, 0, 0);
}

uint64_t sub_267E46124()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 224);
  v7 = *(v5 + 208);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v3 + 232) = v0;

  if (!v0)
  {
    sub_267B9FED8(v3 + 16, &qword_280229330, &qword_267F092F0);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267E46254()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);
  v15 = *(v0 + 152);
  v16 = *(v0 + 120);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  v9 = *(v0 + 80);

  (*(v7 + 8))(v8, v9);
  v10 = *(v5 + 8);
  v11 = OUTLINED_FUNCTION_63();
  v12(v11);

  OUTLINED_FUNCTION_1();

  return v13();
}

uint64_t sub_267E46350()
{
  v1 = *(v0 + 216);
  OUTLINED_FUNCTION_38_24();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267E463F4()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 80);

  v7 = *(v5 + 8);
  v8 = OUTLINED_FUNCTION_37_1();
  v9(v8);
  v10 = *(v2 + 8);
  v11 = OUTLINED_FUNCTION_66();
  v12(v11);
  sub_267B9FED8(v0 + 16, &qword_280229330, &qword_267F092F0);
  v13 = *(v0 + 232);
  OUTLINED_FUNCTION_38_24();

  OUTLINED_FUNCTION_17();

  return v14();
}

uint64_t sub_267E464F0()
{
  OUTLINED_FUNCTION_12();
  v0[2] = v1;
  v2 = sub_267EF3CF8();
  OUTLINED_FUNCTION_18(v2);
  v4 = *(v3 + 64);
  v0[3] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF48A8();
  v0[4] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v0[5] = v6;
  v8 = *(v7 + 64);
  v0[6] = OUTLINED_FUNCTION_2();
  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E465B4()
{
  OUTLINED_FUNCTION_53();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = sub_267EF8A08();
  v3 = OUTLINED_FUNCTION_13_8(v2, qword_280240FB0);
  v4 = sub_267EF95D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v5);
    _os_log_impl(&dword_267B93000, v3, v4, "#SendTapbackResponseProvider making empty output", v0, 2u);
    OUTLINED_FUNCTION_26();
  }

  v6 = v1[6];
  v7 = v1[3];

  v8 = [objc_allocWithZone(MEMORY[0x277D052B8]) init];
  v1[7] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_267EFCA40;
  *(v9 + 32) = [objc_allocWithZone(MEMORY[0x277D052B0]) init];
  sub_267BA9F38(0, &unk_28022CF70, 0x277D052B0);
  v10 = sub_267EF92D8();

  [v8 setDialog_];

  sub_267EF3C98();
  OUTLINED_FUNCTION_11_18();
  sub_267EF47A8();
  v11 = sub_267EF4198();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v1[8] = sub_267EF4188();
  v14 = swift_allocObject();
  v1[9] = v14;
  *(v14 + 16) = xmmword_267EFCA40;
  *(v14 + 32) = v8;
  v15 = *MEMORY[0x277D5BD50];
  v16 = *(MEMORY[0x277D5BD50] + 4);
  v23 = OUTLINED_FUNCTION_27_30(MEMORY[0x277D5BD50]);
  v17 = v8;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[10] = v18;
  *v18 = v19;
  v18[1] = sub_267E4681C;
  v20 = v1[6];
  v21 = v1[2];

  return v23(v21, v14, v20);
}

uint64_t sub_267E4681C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1[10];
  v3 = v1[9];
  v4 = v1[8];
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E46938()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);

  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_66();
  v7(v6);

  OUTLINED_FUNCTION_1();

  return v8();
}

uint64_t sub_267E469C4(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  v3 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E469EC()
{
  OUTLINED_FUNCTION_53();
  v1 = *(*(v0 + 40) + 64);
  v2 = [v1 sender];
  if (v2)
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_267EFCA40;
    *(v4 + 32) = v3;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = sub_267BE8214();
  v6 = *(v0 + 40);
  if (v5)
  {
    __swift_project_boxed_opaque_existential_0((v6 + 72), *(v6 + 96));

    sub_267BB4A3C();
    v7 = sub_267DA2578(v4);
    v9 = v8;

    v10 = [v1 groupName];
    v11 = [v1 recipients];
    if (v11)
    {
      v12 = v11;
      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      v13 = sub_267EF92F8();
    }

    else
    {
      v13 = 0;
    }

    __swift_project_boxed_opaque_existential_0((v6 + 72), *(v6 + 96));
    sub_267BB4A3C();
    if (v10)
    {
      v18 = v10;

      v19 = [v18 spokenPhrase];
      v20 = sub_267EF9028();
      v22 = v21;
    }

    else
    {
      v20 = sub_267DA2578(v13);
      v22 = v24;
    }
  }

  else
  {
    v14 = [v1 groupName];
    __swift_project_boxed_opaque_existential_0((v6 + 72), *(v6 + 96));

    sub_267BB4A3C();
    if (v14)
    {
      v15 = v14;

      v16 = [v15 spokenPhrase];
      v7 = sub_267EF9028();
      v9 = v17;
    }

    else
    {
      v7 = sub_267DA2578(v4);
      v9 = v23;
    }

    v20 = 0;
    v22 = 0;
  }

  *(v0 + 16) = v7;
  *(v0 + 24) = v9;
  *(v0 + 48) = v20;
  *(v0 + 56) = v22;
  if (sub_267BAF0DC(v4))
  {
    sub_267BBD0EC(0, (v4 & 0xC000000000000001) == 0, v4);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x26D609870](0, v4);
    }

    else
    {
      v25 = *(v4 + 32);
    }

    v26 = v25;
  }

  else
  {

    v26 = 0;
  }

  v27 = *(v0 + 40);
  sub_267E46F9C(v26);
  v29 = v28;

  v30 = *(v27 + 56);
  LOBYTE(v27) = sub_267BDAF74();
  *(v0 + 80) = v27 & 1;
  *(v0 + 64) = sub_267DA8838(v29);

  if (v27)
  {
    v31 = swift_task_alloc();
    *(v0 + 72) = v31;
    *v31 = v0;
    v31[1] = sub_267E46E30;

    return sub_267C8F96C(sub_267BDA6DC, 0);
  }

  else
  {
    OUTLINED_FUNCTION_35_24();
    sub_267EF8238();
    OUTLINED_FUNCTION_17();

    return v33();
  }
}

uint64_t sub_267E46E30()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v4 = *(v3 + 72);
  *v2 = *v0;
  *(v1 + 81) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267E46F1C()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 81);
  OUTLINED_FUNCTION_35_24();
  sub_267EF8238();
  OUTLINED_FUNCTION_17();

  return v2();
}

void sub_267E46F9C(void *a1)
{
  v3 = [*(v1 + 64) recipients];
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v3;
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v6 = sub_267EF92F8();

    v30 = v4;
    v7 = sub_267BAF0DC(v6);
    for (i = 0; v7 != i; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26D609870](i, v6);
      }

      else
      {
        if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v9 = *(v6 + 8 * i + 32);
      }

      v10 = v9;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if ([v9 isMe])
      {
      }

      else
      {
        sub_267EF9BD8();
        v11 = *(v30 + 16);
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
      }
    }

    v12 = v30;
    if (a1 && v30)
    {
      sub_267C74A48(0, v30);
      if (sub_267BAF0DC(v30) < 0)
      {
        goto LABEL_38;
      }

      v13 = sub_267BAF0DC(v30);
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_39:
        __break(1u);
        return;
      }

      v15 = a1;
      sub_267CA5F78(v14, 1);
      sub_267C73758(0, 0, 1, v15);
      v12 = v30;
    }

    if (v12)
    {
      v16 = sub_267BAF0DC(v12);
      v17 = 0;
      v18 = MEMORY[0x277D84F90];
      while (v16 != v17)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x26D609870](v17, v12);
        }

        else
        {
          if (v17 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v19 = *(v12 + 8 * v17 + 32);
        }

        v20 = v19;
        v21 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_36;
        }

        v22 = sub_267BBD380(v19);
        v24 = v23;

        ++v17;
        if (v24)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = *(v18 + 16);
            OUTLINED_FUNCTION_19_5();
            sub_267BF4EE8();
            v18 = v28;
          }

          v25 = *(v18 + 16);
          if (v25 >= *(v18 + 24) >> 1)
          {
            OUTLINED_FUNCTION_19_5();
            sub_267BF4EE8();
            v18 = v29;
          }

          *(v18 + 16) = v25 + 1;
          v26 = v18 + 16 * v25;
          *(v26 + 32) = v22;
          *(v26 + 40) = v24;
          v17 = v21;
        }
      }
    }
  }
}

uint64_t sub_267E47278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v5 = OUTLINED_FUNCTION_18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = sub_267EF3CF8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  (*(v13 + 16))(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  OUTLINED_FUNCTION_11_18();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();

  v14 = sub_267EF47D8();
  sub_267E473F0(v14);
  v15 = sub_267EF4158();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v15);
  return sub_267EF4818();
}

uint64_t sub_267E474B0()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 224) = v2;
  *(v1 + 80) = v3;
  *(v1 + 88) = v0;
  v4 = sub_267EF3CF8();
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  *(v1 + 96) = OUTLINED_FUNCTION_2();
  v7 = sub_267EF48A8();
  *(v1 + 104) = v7;
  OUTLINED_FUNCTION_30_0(v7);
  *(v1 + 112) = v8;
  v10 = *(v9 + 64);
  *(v1 + 120) = OUTLINED_FUNCTION_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64);
  *(v1 + 128) = OUTLINED_FUNCTION_2();
  v14 = sub_267EF8558();
  *(v1 + 136) = v14;
  OUTLINED_FUNCTION_30_0(v14);
  *(v1 + 144) = v15;
  v17 = *(v16 + 64);
  *(v1 + 152) = OUTLINED_FUNCTION_2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v18);
  v20 = *(v19 + 64);
  *(v1 + 160) = OUTLINED_FUNCTION_2();
  v21 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v21);
  v23 = *(v22 + 64);
  *(v1 + 168) = OUTLINED_FUNCTION_2();
  v24 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_267E4763C()
{
  OUTLINED_FUNCTION_56();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  v2 = OUTLINED_FUNCTION_13_8(v1, qword_280240FB0);
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v5, v6, "#SendTapbackResponseProvider making category unsupported + offer reply dialog");
    OUTLINED_FUNCTION_26();
  }

  v7 = *(v0 + 168);
  v8 = *(v0 + 224);

  type metadata accessor for SendMessageCATsSimple();
  sub_267EF7B68();
  *(v0 + 176) = sub_267EF79E8();
  v9 = 1;
  switch(v8)
  {
    case 4:
      break;
    default:
      v10 = *(v0 + 160);
      sub_267EF90F8();

      v9 = 0;
      break;
  }

  v11 = *(v0 + 160);
  v12 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v11, v9, 1, v12);
  v13 = swift_task_alloc();
  *(v0 + 184) = v13;
  *v13 = v0;
  v13[1] = sub_267E47818;
  v14 = *(v0 + 160);

  return sub_267E9E5F0();
}

uint64_t sub_267E47818()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = v4[23];
  v6 = v4[22];
  v7 = v4[20];
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v11 + 192) = v10;
  *(v11 + 200) = v0;

  sub_267B9FED8(v7, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267E47968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = v12[24];
  v15 = v12[18];
  v14 = v12[19];
  v17 = v12[16];
  v16 = v12[17];
  v18 = v12[15];
  v19 = v12[12];
  v20 = *(v12[11] + 112);
  v21 = OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_selectedTapback;
  swift_beginAccess();
  sub_267E0BBB8(v20 + v21, v17);
  sub_267EF8548();
  sub_267EF3C98();
  *(swift_task_alloc() + 16) = v13;
  sub_267EF47A8();

  v12[5] = v16;
  OUTLINED_FUNCTION_3_69();
  v12[6] = sub_267E48D88(v22, v23);
  __swift_allocate_boxed_opaque_existential_0(v12 + 2);
  v24 = *(v15 + 16);
  OUTLINED_FUNCTION_394();
  v25();
  v41 = OUTLINED_FUNCTION_27_30(&dword_267F0EE88);
  v26 = v13;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v12[26] = v27;
  *v27 = v28;
  v27[1] = sub_267E47B08;
  v29 = v12[15];
  v30 = v12[10];
  v31 = v12[11];
  OUTLINED_FUNCTION_40();

  return v38(v32, v33, v34, v35, v36, v37, v38, v39, v41, a10, a11, a12);
}

uint64_t sub_267E47B08()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 208);
  v7 = *(v5 + 192);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v3 + 216) = v0;

  if (!v0)
  {
    sub_267B9FED8(v3 + 16, &qword_280229330, &qword_267F092F0);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267E47C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 160);
  v14 = *(v12 + 168);
  v16 = *(v12 + 144);
  v15 = *(v12 + 152);
  v18 = *(v12 + 128);
  v17 = *(v12 + 136);
  v20 = *(v12 + 112);
  v19 = *(v12 + 120);
  v21 = *(v12 + 104);
  v34 = *(v12 + 96);

  (*(v20 + 8))(v19, v21);
  v22 = *(v16 + 8);
  v23 = OUTLINED_FUNCTION_37_1();
  v24(v23);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, v34, a10, a11, a12);
}

uint64_t sub_267E47D0C()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 200);
  OUTLINED_FUNCTION_40_19();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_125();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_267E47D94()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);

  v7 = *(v5 + 8);
  v8 = OUTLINED_FUNCTION_37_1();
  v9(v8);
  v10 = *(v2 + 8);
  v11 = OUTLINED_FUNCTION_66();
  v12(v11);
  sub_267B9FED8(v0 + 16, &qword_280229330, &qword_267F092F0);
  v13 = *(v0 + 216);
  OUTLINED_FUNCTION_40_19();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_125();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_267E47E74()
{
  OUTLINED_FUNCTION_12();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_267EF3CF8();
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v1[9] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF48A8();
  v1[10] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[11] = v7;
  v9 = *(v8 + 64);
  v1[12] = OUTLINED_FUNCTION_2();
  v10 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v10);
  v12 = *(v11 + 64);
  v1[13] = OUTLINED_FUNCTION_2();
  v13 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267E47F58()
{
  OUTLINED_FUNCTION_56();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  v2 = OUTLINED_FUNCTION_13_8(v1, qword_280240FB0);
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v5, v6, "#SendTapbackResponseProvider making generic tapback failed + offer reply dialog");
    OUTLINED_FUNCTION_26();
  }

  v7 = v0[13];

  type metadata accessor for SendMessageCATsSimple();
  sub_267EF7B68();
  v0[14] = sub_267EF79E8();
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_267E4807C;

  return sub_267E9E7D8();
}

uint64_t sub_267E4807C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 120);
  *v4 = *v1;
  v3[16] = v7;
  v3[17] = v0;

  if (!v0)
  {
    v8 = v3[14];
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E48184()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  sub_267EF3C98();
  *(swift_task_alloc() + 16) = v1;
  sub_267EF47A8();

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v11 = OUTLINED_FUNCTION_27_30(&dword_267F0EE88);
  v4 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 144) = v5;
  *v5 = v6;
  v5[1] = sub_267E482B0;
  v7 = *(v0 + 96);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);

  return v11(v8, v1, v7, v0 + 16, 0, 0);
}

uint64_t sub_267E482B0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *(v5 + 128);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v3 + 152) = v0;

  sub_267B9FED8(v3 + 16, &qword_280229330, &qword_267F092F0);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267E483E0()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);

  v6 = *(v4 + 8);
  v7 = OUTLINED_FUNCTION_26_0();
  v8(v7);

  OUTLINED_FUNCTION_1();

  return v9();
}

uint64_t sub_267E48480()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[14];

  v2 = v0[17];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[9];

  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_267E48500()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_66();
  v6(v5);
  v7 = *(v0 + 152);
  v9 = *(v0 + 96);
  v8 = *(v0 + 104);
  v10 = *(v0 + 72);

  OUTLINED_FUNCTION_17();

  return v11();
}

uint64_t sub_267E4859C(int a1, id a2)
{
  v2 = [a2 catId];
  sub_267EF9028();

  sub_267EF47D8();
  sub_267EF47F8();
  sub_267EF4858();
  return sub_267EF4888();
}

uint64_t sub_267E48624()
{
  OUTLINED_FUNCTION_12();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64);
  v1[21] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF4228();
  v1[22] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[23] = v9;
  v11 = *(v10 + 64);
  v1[24] = OUTLINED_FUNCTION_2();
  v12 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267E486F8()
{
  OUTLINED_FUNCTION_56();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  v2 = OUTLINED_FUNCTION_13_8(v1, qword_280240FB0);
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v5, v6, "#SendTapbackResponseProvider: in makeThirdPartyNoTapbackOfferReply");
    OUTLINED_FUNCTION_26();
  }

  v7 = v0[18];

  type metadata accessor for MessagesApp(0);

  v8 = sub_267EC814C();
  v0[25] = v8;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[26] = v9;
  *v9 = v10;
  v9[1] = sub_267E48820;
  v11 = v0[24];
  v12 = v0[19];

  return sub_267E4B44C(v11, v8);
}

uint64_t sub_267E48820()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E4891C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  v21 = *(v0 + 176);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 136);
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v5[5]);
  v8 = *(v7 + 8);
  v9 = OUTLINED_FUNCTION_10_0();
  v10(v9);
  v11 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v5[5]);
  v12 = *(v11 + 8);
  v13 = OUTLINED_FUNCTION_10_0();
  v14(v13);
  v15 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_10_0();
  sub_267EF3BC8();
  v16 = sub_267EF4158();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v16);
  v17 = sub_267EF4CC8();
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  v18 = MEMORY[0x277D5C1D8];
  v6[3] = v17;
  v6[4] = v18;
  __swift_allocate_boxed_opaque_existential_0(v6);
  sub_267EF3F58();

  sub_267B9FED8(v0 + 96, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FED8(v4, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v3 + 8))(v1, v21);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  OUTLINED_FUNCTION_1();

  return v19();
}

uint64_t sub_267E48B04()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[21];

  OUTLINED_FUNCTION_17();
  v5 = v0[27];

  return v4();
}

uint64_t sub_267E48B74()
{
  v1 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  v2 = *(v0 + 112);
}

uint64_t sub_267E48BB4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  v2 = *(v0 + 112);

  return v0;
}

uint64_t sub_267E48BF4()
{
  sub_267E48BB4();

  return swift_deallocClassInstance();
}

uint64_t sub_267E48C8C()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  v4 = sub_267EF8198();
  OUTLINED_FUNCTION_30_0(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = *(v0 + ((*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_267BBD07C;

  return sub_267E45638(v3, v0 + v6, v8);
}

uint64_t sub_267E48D88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267E48DD0()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_267BAEBEC;

  return sub_267E444E0(v3, v0);
}

uint64_t sub_267E48E64()
{
  OUTLINED_FUNCTION_12();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[3] = v5;
  v6 = sub_267EF7D48();
  v1[8] = v6;
  v7 = *(v6 - 8);
  OUTLINED_FUNCTION_34_2();
  v1[9] = v8;
  v10 = *(v9 + 64) + 15;
  v1[10] = swift_task_alloc();
  v11 = sub_267EF7D38();
  v1[11] = v11;
  v12 = *(v11 - 8);
  OUTLINED_FUNCTION_34_2();
  v1[12] = v13;
  v15 = *(v14 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

void sub_267E48F90()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[4];
  sub_267EF4428();
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277D55410])
  {
    v5 = v0[14];
    v6 = v0[15];
    v7 = v0[11];
    v8 = v0[12];
    v9 = v0[10];
    (*(v0[9] + 96))(v9, v0[8]);
    (*(v8 + 32))(v6, v9, v7);
    v10 = (v8 + 16);
    v11 = *(v8 + 16);
    v11(v5, v6, v7);
    v12 = (*(v8 + 88))(v5, v7);
    if (v12 == *MEMORY[0x277D553F0])
    {
      v13 = v0[14];
      v15 = v0[6];
      v14 = v0[7];
      v16 = v0[5];
      (*(v0[12] + 96))(v13, v0[11]);
      v0[23] = *v13;
      (*(v15 + 16))(v16, v15);
      v18 = *(v17 + 24);
      OUTLINED_FUNCTION_2_17();
      v92 = v19 + *v19;
      v21 = *(v20 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[24] = v22;
      *v22 = v23;
      OUTLINED_FUNCTION_8_50(v22);
      OUTLINED_FUNCTION_15();

      __asm { BRAA            X4, X16 }
    }

    if (v12 == *MEMORY[0x277D553F8])
    {
      v39 = v0[14];
      v40 = v0[11];
      v41 = v0[12];
      v42 = v0[6];
      v43 = v0[7];
      v44 = v0[5];
      v45 = *(v41 + 8);
      v0[16] = v45;
      v0[17] = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v45(v39, v40);
      v46 = OUTLINED_FUNCTION_13_39();
      v47(v46);
      v49 = *(v48 + 16);
      OUTLINED_FUNCTION_2_17();
      v93 = v50 + *v50;
      v52 = *(v51 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[18] = v53;
      *v53 = v54;
      OUTLINED_FUNCTION_8_50(v53);
      OUTLINED_FUNCTION_15();

      __asm { BRAA            X3, X16 }
    }

    if (v12 == *MEMORY[0x277D553E8])
    {
      v57 = v0[6];
      v58 = v0[7];
      v59 = v0[5];
      v60 = OUTLINED_FUNCTION_13_39();
      v61(v60);
      v63 = v62;
      (*(v57 + 24))(v59, v57);
      v0[20] = v64;
      v65 = *(v63 + 8);
      OUTLINED_FUNCTION_2_17();
      v94 = v66 + *v66;
      v68 = *(v67 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[21] = v69;
      *v69 = v70;
      OUTLINED_FUNCTION_8_50(v69);
      OUTLINED_FUNCTION_15();

      __asm { BRAA            X5, X16 }
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v73 = v0[15];
    v74 = v0[13];
    v75 = v0[11];
    v76 = sub_267EF8A08();
    __swift_project_value_buffer(v76, qword_280240FB0);
    v11(v74, v73, v75);
    v77 = sub_267EF89F8();
    v78 = sub_267EF95E8();
    v79 = os_log_type_enabled(v77, v78);
    v81 = v0[12];
    v80 = v0[13];
    v82 = v0[11];
    if (v79)
    {
      v83 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v83 = 138412290;
      sub_267E4A038(&qword_28022C970, MEMORY[0x277D55400]);
      swift_allocError();
      v11(v84, v80, v82);
      v85 = _swift_stdlib_bridgeErrorToNSError();
      v86 = OUTLINED_FUNCTION_10_42();
      v10(v86);
      *(v83 + 4) = v85;
      *v95 = v85;
      _os_log_impl(&dword_267B93000, v77, v78, "#SendMessageAppResolutionOnDeviceFlowStrategy unknown error: %@", v83, 0xCu);
      sub_267C142D4(v95);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {

      v87 = OUTLINED_FUNCTION_10_42();
      v10(v87);
    }

    v89 = v0[14];
    v88 = v0[15];
    v90 = v0[11];
    sub_267C4BE60();
    swift_allocError();
    *v91 = 0;
    v91[1] = 0;
    swift_willThrow();
    (v10)(v88, v90);
    (v10)(v89, v90);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v26 = v0[4];
    v27 = sub_267EF8A08();
    __swift_project_value_buffer(v27, qword_280240FB0);

    v28 = sub_267EF89F8();
    v29 = sub_267EF95E8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v0[4];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v96 = v32;
      *v31 = 136315138;
      v0[2] = v30;
      sub_267EF4458();
      sub_267E4A038(&qword_28022C968, MEMORY[0x277D5BEB0]);
      v33 = sub_267EF9E58();
      v35 = sub_267BA33E8(v33, v34, &v96);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_267B93000, v28, v29, "#SendMessageAppResolutionOnDeviceFlowStrategy unexpected reason: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    sub_267C4BE60();
    swift_allocError();
    *v36 = 0;
    v36[1] = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_5_60();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267E497FC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = *(v2 + 144);
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E498FC()
{
  OUTLINED_FUNCTION_56();
  v0 = OUTLINED_FUNCTION_11_43();
  v1(v0);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267E49988()
{
  OUTLINED_FUNCTION_56();
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 160);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267E49AB4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = *(v2 + 192);
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E49BB4()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 184);

  v2 = OUTLINED_FUNCTION_11_43();
  v3(v2);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267E49C48()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 136);
  (*(v0 + 128))(*(v0 + 120), *(v0 + 88));
  v2 = *(v0 + 152);
  OUTLINED_FUNCTION_5_60();

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267E49CD0()
{
  OUTLINED_FUNCTION_56();
  (*(v0[12] + 8))(v0[15], v0[11]);
  v1 = v0[22];
  OUTLINED_FUNCTION_5_60();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267E49D60()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[23];
  v2 = v0[15];
  v3 = v0[11];
  v4 = v0[12];

  (*(v4 + 8))(v2, v3);
  v5 = v0[25];
  OUTLINED_FUNCTION_5_60();

  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_267E49E00(uint64_t a1)
{
  v3 = *(MEMORY[0x277D5C040] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_267BAEBEC;

  return MEMORY[0x2821BB9F8](a1);
}

uint64_t sub_267E49EB4(uint64_t a1)
{
  v3 = *(MEMORY[0x277D5C050] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_267BBD07C;

  return MEMORY[0x2821BBA08](a1);
}

uint64_t sub_267E49F50(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D5C048] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_267BBD07C;

  return MEMORY[0x2821BBA00](a1, a2);
}

uint64_t sub_267E4A038(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267E4A0C4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4A0DC()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1();
  v4 = OUTLINED_FUNCTION_38_25(v3);
  OUTLINED_FUNCTION_16(v4, xmmword_267EFC020);
  v5 = 0;
  if (v2)
  {
    v5 = sub_267EF7958();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_40_20(v5);
  OUTLINED_FUNCTION_9_48(MEMORY[0x277D55BF0]);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_13_40(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_2_62(v7);
  OUTLINED_FUNCTION_12_41();
  OUTLINED_FUNCTION_30_2();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_267E4A1EC()
{
  OUTLINED_FUNCTION_26_32();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v1 = OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_3_70(v1, xmmword_267EFC020);
  if (v0)
  {
    v2 = sub_267EF7AE8();
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_38();
    v1[3].n128_u64[1] = 0;
    v1[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_62_12(v2, v3);
  OUTLINED_FUNCTION_57_17();
  OUTLINED_FUNCTION_31_24();
}

uint64_t sub_267E4A290()
{
  OUTLINED_FUNCTION_12();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E4A32C()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = v0[7];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_52_5();
  v0[8] = v3;
  v4 = OUTLINED_FUNCTION_4_8(v3, xmmword_267EFCC90);
  OUTLINED_FUNCTION_56_18(v4, v5, &unk_28022AE30, &qword_267EFC0B0);
  v6 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v6) == 1)
  {
    sub_267B9FED8(v0[7], &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_26_3();
    v9();
  }

  v10 = v0[6];
  v11 = v0[4];
  OUTLINED_FUNCTION_12_1();
  *(v3 + 80) = 0xD000000000000013;
  *(v3 + 88) = v12;
  sub_267BC9B04(v13, v10, &unk_28022AE30, &qword_267EFC0B0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v2);
  v15 = v0[6];
  if (EnumTagSinglePayload == 1)
  {
    sub_267B9FED8(v0[6], &unk_28022AE30, &qword_267EFC0B0);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 96));
    OUTLINED_FUNCTION_18_0();
    v17 = *(v16 + 32);
    OUTLINED_FUNCTION_26_3();
    v18();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[9] = v19;
  *v19 = v20;
  OUTLINED_FUNCTION_27_2(v19);
  OUTLINED_FUNCTION_34_26();
  OUTLINED_FUNCTION_30_2();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t sub_267E4A524()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];
    v14 = v3[6];

    OUTLINED_FUNCTION_1();

    return v15();
  }
}

uint64_t sub_267E4A654()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  OUTLINED_FUNCTION_17();
  v5 = v0[10];

  return v4();
}

uint64_t sub_267E4A6C4()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E4A74C()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1();
  *(OUTLINED_FUNCTION_37_7(v3) + 16) = xmmword_267EFC020;
  OUTLINED_FUNCTION_12_1();
  *(v4 + 32) = 0xD000000000000013;
  *(v4 + 40) = v5;
  OUTLINED_FUNCTION_56_18(v4, v6, &unk_28022AE30, &qword_267EFC0B0);
  v7 = sub_267EF79B8();
  v8 = OUTLINED_FUNCTION_15_1(v7);
  v9 = *(v0 + 40);
  if (v8 == 1)
  {
    sub_267B9FED8(*(v0 + 40), &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_26_3();
    v12();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_14_19(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_13(v14);
  OUTLINED_FUNCTION_34_26();
  OUTLINED_FUNCTION_30_2();

  return v20(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_267E4A8AC()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E4A934()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1();
  v4 = OUTLINED_FUNCTION_37_7(v3);
  *(v4 + 16) = xmmword_267EFC020;
  strcpy((v4 + 32), "replyPayload");
  *(v4 + 45) = 0;
  *(v4 + 46) = -5120;
  OUTLINED_FUNCTION_56_18(v4, v5, &unk_28022AE30, &qword_267EFC0B0);
  v6 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v6) == 1)
  {
    sub_267B9FED8(*(v0 + 40), &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_26_3();
    v9();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v15 = v10;
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_14_19(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_41_17();

  return v15();
}

uint64_t sub_267E4AAAC()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E4AB34()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1();
  v4 = OUTLINED_FUNCTION_37_7(v3);
  v5 = OUTLINED_FUNCTION_4_8(v4, xmmword_267EFC020);
  OUTLINED_FUNCTION_56_18(v5, v6, &unk_28022AE30, &qword_267EFC0B0);
  v7 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v7) == 1)
  {
    sub_267B9FED8(*(v0 + 40), &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_26_3();
    v10();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v16 = v11;
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_14_19(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_13(v13);
  OUTLINED_FUNCTION_41_17();

  return v16();
}

uint64_t sub_267E4AC8C()
{
  OUTLINED_FUNCTION_26_32();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v1 = OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_3_70(v1, xmmword_267EFC020);
  if (v0)
  {
    v2 = sub_267EF7AE8();
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_38();
    v1[3].n128_u64[1] = 0;
    v1[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_62_12(v2, v3);
  OUTLINED_FUNCTION_57_17();
  OUTLINED_FUNCTION_31_24();
}

uint64_t sub_267E4AD30()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267E4ADE8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267E4AEA0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4AEB8()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1();
  v4 = OUTLINED_FUNCTION_38_25(v3);
  OUTLINED_FUNCTION_3_70(v4, xmmword_267EFC020);
  v5 = 0;
  if (v2)
  {
    v5 = sub_267EF7AE8();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_40_20(v5);
  OUTLINED_FUNCTION_9_48(MEMORY[0x277D55BF0]);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_13_40(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_2_62(v7);
  OUTLINED_FUNCTION_12_41();
  OUTLINED_FUNCTION_30_2();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_267E4AFA0()
{
  OUTLINED_FUNCTION_26_32();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v1 = OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_3_70(v1, xmmword_267EFC020);
  if (v0)
  {
    v2 = sub_267EF7AE8();
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_38();
    v1[3].n128_u64[1] = 0;
    v1[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_62_12(v2, v3);
  OUTLINED_FUNCTION_57_17();
  OUTLINED_FUNCTION_31_24();
}

uint64_t sub_267E4B044()
{
  OUTLINED_FUNCTION_26_32();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v1 = OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_3_70(v1, xmmword_267EFC020);
  if (v0)
  {
    v2 = sub_267EF7AE8();
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_38();
    v1[3].n128_u64[1] = 0;
    v1[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_62_12(v2, v3);
  OUTLINED_FUNCTION_57_17();
  OUTLINED_FUNCTION_31_24();
}

uint64_t sub_267E4B0E8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BAEBEC;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267E4B1A0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

void sub_267E4B2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v27);
  v29 = &a9 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v30 = OUTLINED_FUNCTION_52_5();
  *(v30 + 16) = xmmword_267EFCC90;
  OUTLINED_FUNCTION_12_1();
  *(v31 + 32) = 0xD000000000000015;
  *(v31 + 40) = v32;
  OUTLINED_FUNCTION_65_13();
  v33 = sub_267EF79B8();
  if (__swift_getEnumTagSinglePayload(v29, 1, v33) == 1)
  {
    sub_267B9FED8(v29, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    *(v30 + 72) = v33;
    __swift_allocate_boxed_opaque_existential_0((v30 + 48));
    OUTLINED_FUNCTION_5_0(v33);
    (*(v34 + 32))();
  }

  *(v30 + 80) = 0xD000000000000013;
  *(v30 + 88) = 0x8000000267F1BD50;
  *(v30 + 120) = MEMORY[0x277D839B0];
  *(v30 + 96) = v23 & 1;
  sub_267EF78C8();

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267E4B44C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4B464()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1();
  v4 = OUTLINED_FUNCTION_38_25(v3);
  OUTLINED_FUNCTION_16(v4, xmmword_267EFC020);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for MessagesApp(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_40_20(v5);
  OUTLINED_FUNCTION_9_48(MEMORY[0x277D55BF0]);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_13_40(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_2_62(v7);
  OUTLINED_FUNCTION_12_41();
  OUTLINED_FUNCTION_30_2();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_267E4B574(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4B58C()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1();
  v4 = OUTLINED_FUNCTION_38_25(v3);
  OUTLINED_FUNCTION_16(v4, xmmword_267EFC020);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for MessagesApp(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_40_20(v5);
  OUTLINED_FUNCTION_9_48(MEMORY[0x277D55BF0]);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_13_40(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_2_62(v7);
  OUTLINED_FUNCTION_12_41();
  OUTLINED_FUNCTION_30_2();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_267E4B674()
{
  OUTLINED_FUNCTION_12();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  v1[7] = OUTLINED_FUNCTION_2();
  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E4B700()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[7];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = xmmword_267EFCE30;
  OUTLINED_FUNCTION_12_1();
  *(v4 + 32) = 0xD000000000000011;
  *(v4 + 40) = v5;
  OUTLINED_FUNCTION_56_18(v4, v6, &unk_28022AE30, &qword_267EFC0B0);
  v7 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v7) == 1)
  {
    sub_267B9FED8(v0[7], &unk_28022AE30, &qword_267EFC0B0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_18_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_26_3();
    v10();
  }

  v11 = v0[4];
  *(v3 + 80) = 7368801;
  *(v3 + 88) = 0xE300000000000000;
  if (v11)
  {
    v12 = type metadata accessor for MessagesApp(0);
    v13 = v11;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_38();
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  v14 = v0[5];
  *(v3 + 96) = v13;
  *(v3 + 120) = v12;
  *(v3 + 128) = 0x7453656369766564;
  *(v3 + 136) = 0xEB00000000657461;
  v15 = 0;
  if (v14)
  {
    v15 = sub_267EF7AE8();
  }

  else
  {
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
  }

  *(v3 + 144) = v14;
  *(v3 + 168) = v15;
  v16 = *(MEMORY[0x277D55BF0] + 4);
  v22 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[9] = v17;
  *v17 = v18;
  v17[1] = sub_267E4B934;
  v19 = v0[6];
  v20 = v0[2];

  return v22(v20, 0xD00000000000001DLL, 0x8000000267F11620, v3);
}

uint64_t sub_267E4B934()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];

    OUTLINED_FUNCTION_1();

    return v14();
  }
}

uint64_t sub_267E4BA58()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[7];
  v1 = v0[8];

  OUTLINED_FUNCTION_17();
  v4 = v0[10];

  return v3();
}

void sub_267E4BABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v27);
  v29 = &a9 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v30 = OUTLINED_FUNCTION_52_5();
  *(v30 + 16) = xmmword_267EFCC90;
  OUTLINED_FUNCTION_12_1();
  *(v31 + 32) = 0xD000000000000016;
  *(v31 + 40) = v32;
  OUTLINED_FUNCTION_65_13();
  v33 = sub_267EF79B8();
  if (__swift_getEnumTagSinglePayload(v29, 1, v33) == 1)
  {
    sub_267B9FED8(v29, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    *(v30 + 72) = v33;
    __swift_allocate_boxed_opaque_existential_0((v30 + 48));
    OUTLINED_FUNCTION_5_0(v33);
    (*(v34 + 32))();
  }

  *(v30 + 80) = 7368801;
  *(v30 + 88) = 0xE300000000000000;
  if (v23)
  {
    v35 = type metadata accessor for MessagesApp(0);
    v36 = v23;
  }

  else
  {
    v35 = OUTLINED_FUNCTION_38();
    *(v30 + 104) = 0;
    *(v30 + 112) = 0;
  }

  *(v30 + 96) = v36;
  *(v30 + 120) = v35;
  OUTLINED_FUNCTION_57_17();
  sub_267EF78C8();

  OUTLINED_FUNCTION_47();
}

void sub_267E4BC68()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_42_21(v14, xmmword_267F01440);
  v16 = MEMORY[0x277D839B0];
  v15[3].n128_u8[0] = v7;
  v17 = OUTLINED_FUNCTION_33_19(v15, v16);
  *(v17 + 96) = v5;
  v19 = OUTLINED_FUNCTION_36_23(v17, v18);
  *(v19 + 144) = v3;
  *(v19 + 168) = v20;
  *(v19 + 176) = 0xD000000000000011;
  *(v19 + 184) = 0x8000000267F150A0;
  sub_267BC9B04(v1, v13, &unk_28022AE30, &qword_267EFC0B0);
  v21 = sub_267EF79B8();
  if (__swift_getEnumTagSinglePayload(v13, 1, v21) == 1)
  {
    sub_267B9FED8(v13, &unk_28022AE30, &qword_267EFC0B0);
    *(v14 + 192) = 0u;
    *(v14 + 208) = 0u;
  }

  else
  {
    *(v14 + 216) = v21;
    __swift_allocate_boxed_opaque_existential_0((v14 + 192));
    OUTLINED_FUNCTION_5_0(v21);
    (*(v22 + 32))();
  }

  sub_267EF78C8();

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267E4BE34()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 74) = v3;
  *(v1 + 73) = v4;
  *(v1 + 72) = v5;
  *(v1 + 16) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v7);
  v9 = *(v8 + 64);
  *(v1 + 40) = OUTLINED_FUNCTION_2();
  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267E4BEC8()
{
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = *(v0 + 74);
  v5 = *(v0 + 73);
  v6 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_37_7(v7);
  v9 = OUTLINED_FUNCTION_42_21(v8, xmmword_267F01440);
  v10 = MEMORY[0x277D839B0];
  v9[3].n128_u8[0] = v6;
  v11 = OUTLINED_FUNCTION_33_19(v9, v10);
  *(v11 + 96) = v5;
  v13 = OUTLINED_FUNCTION_36_23(v11, v12);
  *(v13 + 144) = v4;
  *(v13 + 168) = v14;
  *(v13 + 176) = 0xD000000000000011;
  *(v13 + 184) = 0x8000000267F150A0;
  sub_267BC9B04(v3, v2, &unk_28022AE30, &qword_267EFC0B0);
  v15 = sub_267EF79B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v15);
  v17 = *(v0 + 40);
  if (EnumTagSinglePayload == 1)
  {
    sub_267B9FED8(*(v0 + 40), &unk_28022AE30, &qword_267EFC0B0);
    *(v1 + 192) = 0u;
    *(v1 + 208) = 0u;
  }

  else
  {
    *(v1 + 216) = v15;
    __swift_allocate_boxed_opaque_existential_0((v1 + 192));
    OUTLINED_FUNCTION_5_0(v15);
    (*(v18 + 32))();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_14_19(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_13(v20);
  OUTLINED_FUNCTION_34_26();

  return v22();
}

uint64_t sub_267E4C09C()
{
  OUTLINED_FUNCTION_12();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64);
  v1[6] = OUTLINED_FUNCTION_2();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E4C124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v11 = v10[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v12 = OUTLINED_FUNCTION_52_5();
  v10[7] = v12;
  OUTLINED_FUNCTION_16(v12, xmmword_267EFCC90);
  v13 = 0;
  if (v11)
  {
    v13 = type metadata accessor for MessagesApp(0);
  }

  else
  {
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  v14 = v10[6];
  v15 = v10[4];
  OUTLINED_FUNCTION_50_10(v13);
  sub_267BC9B04(v16, v14, &unk_28022AE30, &qword_267EFC0B0);
  v17 = sub_267EF79B8();
  v18 = OUTLINED_FUNCTION_15_1(v17);
  v19 = v10[6];
  v20 = v10[3];
  if (v18 == 1)
  {
    v21 = v10[3];

    sub_267B9FED8(v19, &unk_28022AE30, &qword_267EFC0B0);
    *(v12 + 96) = 0u;
    *(v12 + 112) = 0u;
  }

  else
  {
    *(v12 + 120) = v9;
    __swift_allocate_boxed_opaque_existential_0((v12 + 96));
    OUTLINED_FUNCTION_18_0();
    v23 = *(v22 + 32);
    OUTLINED_FUNCTION_26_3();
    v24();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v37 = v25;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v10[8] = v26;
  *v26 = v27;
  OUTLINED_FUNCTION_27_2(v26);
  OUTLINED_FUNCTION_41_17();
  OUTLINED_FUNCTION_68();

  return v32(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37);
}

uint64_t sub_267E4C2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4C2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v13 = *(v11 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v14 = OUTLINED_FUNCTION_52_5();
  v15 = OUTLINED_FUNCTION_58_15(v14);
  OUTLINED_FUNCTION_16(v15, xmmword_267EFCC90);
  if (v13)
  {
    v16 = type metadata accessor for MessagesApp(0);
    v17 = v13;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_38();
    v12[7] = 0;
    v12[8] = 0;
  }

  v18 = OUTLINED_FUNCTION_4_59(v16, v17);
  if (v10)
  {
    v18 = sub_267EF77C8();
  }

  else
  {
    v12[13] = 0;
    v12[14] = 0;
  }

  OUTLINED_FUNCTION_63_12(v18);
  OUTLINED_FUNCTION_25_34(MEMORY[0x277D55BF0]);

  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_14_19(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_15_39(v20);
  OUTLINED_FUNCTION_35_25();
  OUTLINED_FUNCTION_68();

  return v26(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_267E4C3F4(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4C410()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 24);
  v3 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v4 = OUTLINED_FUNCTION_52_5();
  v5 = OUTLINED_FUNCTION_38_25(v4);
  *(v5 + 16) = xmmword_267EFCC90;
  *(v5 + 32) = 0x6552656E4F736168;
  *(v5 + 40) = 0xEF746E6569706963;
  v6 = MEMORY[0x277D839B0];
  *(v5 + 48) = v3;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0x6E65697069636572;
  *(v5 + 88) = 0xE900000000000074;
  v7 = 0;
  if (v2)
  {
    v7 = sub_267EF77C8();
  }

  else
  {
    v1[13] = 0;
    v1[14] = 0;
  }

  v1[12] = v2;
  v1[15] = v7;
  OUTLINED_FUNCTION_9_48(MEMORY[0x277D55BF0]);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_13_40(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_2_62(v9);
  OUTLINED_FUNCTION_12_41();
  OUTLINED_FUNCTION_30_2();

  return v15(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_267E4C550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4C568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v13 = *(v11 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v14 = OUTLINED_FUNCTION_52_5();
  v15 = OUTLINED_FUNCTION_58_15(v14);
  OUTLINED_FUNCTION_16(v15, xmmword_267EFCC90);
  if (v13)
  {
    v16 = sub_267EF7958();
    v17 = v13;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_38();
    v12[7] = 0;
    v12[8] = 0;
  }

  v18 = OUTLINED_FUNCTION_4_59(v16, v17);
  if (v10)
  {
    v18 = sub_267EF77C8();
  }

  else
  {
    v12[13] = 0;
    v12[14] = 0;
  }

  OUTLINED_FUNCTION_63_12(v18);
  OUTLINED_FUNCTION_25_34(MEMORY[0x277D55BF0]);

  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_14_19(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_15_39(v20);
  OUTLINED_FUNCTION_35_25();
  OUTLINED_FUNCTION_68();

  return v26(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_267E4C674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4C68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v13 = *(v11 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v14 = OUTLINED_FUNCTION_52_5();
  v15 = OUTLINED_FUNCTION_58_15(v14);
  OUTLINED_FUNCTION_16(v15, xmmword_267EFCC90);
  if (v13)
  {
    v16 = type metadata accessor for MessagesApp(0);
    v17 = v13;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_38();
    v12[7] = 0;
    v12[8] = 0;
  }

  v18 = OUTLINED_FUNCTION_4_59(v16, v17);
  if (v10)
  {
    v18 = sub_267EF77C8();
  }

  else
  {
    v12[13] = 0;
    v12[14] = 0;
  }

  OUTLINED_FUNCTION_63_12(v18);
  OUTLINED_FUNCTION_25_34(MEMORY[0x277D55BF0]);

  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_14_19(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_15_39(v20);
  OUTLINED_FUNCTION_35_25();
  OUTLINED_FUNCTION_68();

  return v26(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_267E4C798(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4C7B0()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1();
  v4 = OUTLINED_FUNCTION_38_25(v3);
  OUTLINED_FUNCTION_16(v4, xmmword_267EFC020);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for MessagesApp(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_40_20(v5);
  OUTLINED_FUNCTION_9_48(MEMORY[0x277D55BF0]);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_13_40(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_2_62(v7);
  OUTLINED_FUNCTION_12_41();
  OUTLINED_FUNCTION_30_2();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_267E4C898(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4C8B0()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1();
  *(OUTLINED_FUNCTION_38_25(v3) + 16) = xmmword_267EFC020;
  OUTLINED_FUNCTION_22_3();
  v6 = OUTLINED_FUNCTION_59_17(v4, v5);
  if (v2)
  {
    v6 = sub_267EF77C8();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_40_20(v6);
  OUTLINED_FUNCTION_9_48(MEMORY[0x277D55BF0]);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_13_40(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_2_62(v8);
  OUTLINED_FUNCTION_12_41();
  OUTLINED_FUNCTION_30_2();

  return v14(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_267E4C99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4C9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v13 = *(v11 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v14 = OUTLINED_FUNCTION_52_5();
  v15 = OUTLINED_FUNCTION_58_15(v14);
  OUTLINED_FUNCTION_16(v15, xmmword_267EFCC90);
  if (v13)
  {
    v16 = type metadata accessor for MessagesApp(0);
    v17 = v13;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_38();
    v12[7] = 0;
    v12[8] = 0;
  }

  v18 = OUTLINED_FUNCTION_4_59(v16, v17);
  if (v10)
  {
    v18 = sub_267EF77C8();
  }

  else
  {
    v12[13] = 0;
    v12[14] = 0;
  }

  OUTLINED_FUNCTION_63_12(v18);
  OUTLINED_FUNCTION_25_34(MEMORY[0x277D55BF0]);

  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_14_19(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_15_39(v20);
  OUTLINED_FUNCTION_35_25();
  OUTLINED_FUNCTION_68();

  return v26(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_267E4CAC0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267E4CB78(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4CB90()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1();
  *(OUTLINED_FUNCTION_38_25(v3) + 16) = xmmword_267EFC020;
  OUTLINED_FUNCTION_22_3();
  v6 = OUTLINED_FUNCTION_59_17(v4, v5);
  if (v2)
  {
    v6 = sub_267EF77C8();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_40_20(v6);
  OUTLINED_FUNCTION_9_48(MEMORY[0x277D55BF0]);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_13_40(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_2_62(v8);
  OUTLINED_FUNCTION_12_41();
  OUTLINED_FUNCTION_30_2();

  return v14(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_267E4CC7C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4CC94()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1();
  v4 = OUTLINED_FUNCTION_38_25(v3);
  *(v4 + 16) = xmmword_267EFC020;
  strcpy((v4 + 32), "personHandle");
  *(v4 + 45) = 0;
  *(v4 + 46) = -5120;
  v5 = 0;
  if (v2)
  {
    v5 = sub_267EF7578();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_40_20(v5);
  OUTLINED_FUNCTION_9_48(MEMORY[0x277D55BF0]);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_13_40(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_2_62(v7);
  OUTLINED_FUNCTION_12_41();
  OUTLINED_FUNCTION_30_2();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_267E4CD9C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267E4CE54()
{
  OUTLINED_FUNCTION_12();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64);
  v1[6] = OUTLINED_FUNCTION_2();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E4CEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v11 = v10[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v12 = OUTLINED_FUNCTION_52_5();
  v10[7] = v12;
  OUTLINED_FUNCTION_16(v12, xmmword_267EFCC90);
  v13 = 0;
  if (v11)
  {
    v13 = type metadata accessor for MessagesApp(0);
  }

  else
  {
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  v14 = v10[6];
  v15 = v10[4];
  OUTLINED_FUNCTION_50_10(v13);
  sub_267BC9B04(v16, v14, &unk_28022AE30, &qword_267EFC0B0);
  v17 = sub_267EF79B8();
  v18 = OUTLINED_FUNCTION_15_1(v17);
  v19 = v10[6];
  v20 = v10[3];
  if (v18 == 1)
  {
    v21 = v10[3];

    sub_267B9FED8(v19, &unk_28022AE30, &qword_267EFC0B0);
    *(v12 + 96) = 0u;
    *(v12 + 112) = 0u;
  }

  else
  {
    *(v12 + 120) = v9;
    __swift_allocate_boxed_opaque_existential_0((v12 + 96));
    OUTLINED_FUNCTION_18_0();
    v23 = *(v22 + 32);
    OUTLINED_FUNCTION_26_3();
    v24();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v37 = v25;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v10[8] = v26;
  *v26 = v27;
  OUTLINED_FUNCTION_27_2(v26);
  OUTLINED_FUNCTION_41_17();
  OUTLINED_FUNCTION_68();

  return v32(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37);
}

uint64_t sub_267E4D090()
{
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow11MessagesApp7Builder_name);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_267E4D114(uint64_t a1)
{
  *(v1 + 16) = 0;
  v3 = OBJC_IVAR____TtCC16SiriMessagesFlow11MessagesApp7Builder_name;
  swift_beginAccess();
  sub_267C12290(a1 + v3, v1 + OBJC_IVAR____TtC16SiriMessagesFlow11MessagesApp_name);
  LOBYTE(v3) = *(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow11MessagesApp7Builder_isDesignedByApple);

  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow11MessagesApp_isDesignedByApple) = v3;
  return v1;
}

uint64_t sub_267E4D19C(uint64_t a1, char a2)
{
  v4 = type metadata accessor for MessagesApp.Builder(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtCC16SiriMessagesFlow11MessagesApp7Builder_name;
  v9 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v7 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCC16SiriMessagesFlow11MessagesApp7Builder_isDesignedByApple;
  *(v7 + OBJC_IVAR____TtCC16SiriMessagesFlow11MessagesApp7Builder_isDesignedByApple) = 0;
  swift_beginAccess();
  sub_267BE855C(a1, v7 + v8);
  swift_endAccess();
  *(v7 + v10) = a2;
  v11 = type metadata accessor for MessagesApp(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  sub_267E4D114(v7);
  sub_267BBD6F0(a1);
  return v14;
}

uint64_t sub_267E4D278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v11 || (result = sub_267EF9EA8(), (result & 1) != 0))
  {
    sub_267C12290(v3 + OBJC_IVAR____TtC16SiriMessagesFlow11MessagesApp_name, v10);
    v13 = sub_267EF79B8();
    if (__swift_getEnumTagSinglePayload(v10, 1, v13) == 1)
    {
      result = sub_267BBD6F0(v10);
LABEL_8:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v13;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(*(v13 - 8) + 32))(boxed_opaque_existential_0, v10, v13);
  }

  else
  {
    if (a1 != 0xD000000000000011 || 0x8000000267F11A00 != a2)
    {
      result = sub_267EF9EA8();
      if ((result & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v16 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow11MessagesApp_isDesignedByApple);
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v16;
  }

  return result;
}

uint64_t sub_267E4D41C()
{
  v0 = sub_267EF9D38();

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

uint64_t sub_267E4D470(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_267E4D4C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267E4D41C();
  *a2 = result;
  return result;
}

uint64_t sub_267E4D4F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267E4D470(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_267E4D52C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267E4D41C();
  *a1 = result;
  return result;
}

uint64_t sub_267E4D560(uint64_t a1)
{
  v2 = sub_267E4DDB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267E4D59C(uint64_t a1)
{
  v2 = sub_267E4DDB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267E4D5D8()
{
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow11MessagesApp_name);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

void sub_267E4D66C()
{
  sub_267C11A54();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_267E4D710(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C9C8, &qword_267F0C420);
  OUTLINED_FUNCTION_58(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v10);
  v12 = &v18[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267E4DDB0();
  sub_267EFA088();
  v18[15] = 0;
  sub_267EF79B8();
  OUTLINED_FUNCTION_0_67();
  sub_267E4DD68(v14, v15);
  sub_267EF9DF8();
  if (!v2)
  {
    v16 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow11MessagesApp_isDesignedByApple);
    v18[14] = 1;
    sub_267EF9E18();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_267E4D8AC(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_267E4D9BC(a1);
  return v5;
}

void sub_267E4D924()
{
  sub_267C11A54();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

id *sub_267E4D9BC(uint64_t *a1)
{
  v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C9B8, &qword_267F0C418);
  OUTLINED_FUNCTION_58(v22);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v11);
  v1[2] = 0;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267E4DDB0();
  sub_267EFA078();
  if (v2)
  {

    type metadata accessor for MessagesApp(0);
    v15 = *(*v1 + 12);
    v16 = *(*v1 + 26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_267EF79B8();
    v24 = 0;
    OUTLINED_FUNCTION_0_67();
    sub_267E4DD68(v13, v14);
    sub_267EF9D88();
    sub_267C12220(v8, v1 + OBJC_IVAR____TtC16SiriMessagesFlow11MessagesApp_name);
    v23 = 1;
    v18 = sub_267EF9DA8();
    v19 = OUTLINED_FUNCTION_8_32();
    v20(v19);
    *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow11MessagesApp_isDesignedByApple) = v18 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_267E4DC88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_267E4D8AC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_267E4DD68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267E4DDB0()
{
  result = qword_28022C9C0;
  if (!qword_28022C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022C9C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessagesApp.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267E4DEE4()
{
  result = qword_28022C9D0;
  if (!qword_28022C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022C9D0);
  }

  return result;
}

unint64_t sub_267E4DF3C()
{
  result = qword_28022C9D8;
  if (!qword_28022C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022C9D8);
  }

  return result;
}

unint64_t sub_267E4DF94()
{
  result = qword_28022C9E0;
  if (!qword_28022C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022C9E0);
  }

  return result;
}

uint64_t sub_267E4DFE8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 56) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return v3;
}

uint64_t sub_267E4E014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_35();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_29();
  a16 = v18;
  v21 = *(v18[8] + 32);
  if ((*(v21 + 82) & 1) == 0)
  {
    v29 = *(v21 + 144);
    v18[9] = v29;
    if (!v29)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v47 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v47, qword_280240FB0);
      v23 = sub_267EF89F8();
      v48 = sub_267EF95E8();
      if (!OUTLINED_FUNCTION_27(v48))
      {
        goto LABEL_17;
      }

      v49 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_59(v49);
      v28 = "#NotificationAppendingAction Notification ID is not available in the conversation";
      goto LABEL_16;
    }

    v30 = *(v21 + 136);
    v31 = objc_allocWithZone(MEMORY[0x277D47618]);

    v32 = [v31 init];
    v18[10] = v32;
    sub_267E51C1C(v30, v29, v32);
    v33 = *MEMORY[0x277D48740];
    v34 = sub_267EF9028();
    sub_267E51C74(v34, v35, v32);
    sub_267BA9F38(0, &qword_280229538, 0x277CCABB0);
    v36 = sub_267EF97E8();
    [v32 setSupportsSpokenNotifications_];

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v37 = sub_267EF8A08();
    v18[11] = OUTLINED_FUNCTION_30_1(v37, qword_280240FB0);
    v38 = v32;
    v39 = sub_267EF89F8();
    v40 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v40))
    {
      v41 = OUTLINED_FUNCTION_48();
      v42 = swift_slowAlloc();
      a9 = v42;
      *v41 = 136315138;
      v43 = sub_267BE28D0(v38, &selRef_afterNotificationId);
      v45 = v44;

      if (!v45)
      {
        __break(1u);
        return MEMORY[0x2821BB6A0](v46);
      }

      sub_267BA33E8(v43, v45, &a9);
      OUTLINED_FUNCTION_79();
      *(v41 + 4) = v43;
      _os_log_impl(&dword_267B93000, v39, v40, "#NotificationAppendingAction Searching notifications after %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_26();
    }

    else
    {
    }

    v59 = *(v18[8] + 40);
    v18[12] = v59;
    v60 = v59[5];
    v61 = v59[6];
    __swift_project_boxed_opaque_existential_0(v59 + 2, v60);
    (*(v61 + 24))(v60, v61);
    v62 = v18[6];
    __swift_project_boxed_opaque_existential_0(v18 + 2, v18[5]);
    v63 = *(MEMORY[0x277D5BFB8] + 4);
    v64 = swift_task_alloc();
    v18[13] = v64;
    sub_267BA9F38(0, &qword_28022C9F8, 0x277D47620);
    *v64 = v18;
    v64[1] = sub_267E4E3F0;
    OUTLINED_FUNCTION_36_0();

    return MEMORY[0x2821BB6A0](v46);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v22 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v22, qword_280240FB0);
  v23 = sub_267EF89F8();
  v24 = sub_267EF95D8();
  if (!OUTLINED_FUNCTION_27(v24))
  {
    goto LABEL_17;
  }

  v25 = OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_59(v25);
  v28 = "#NotificationAppendingAction Not fetching new message since we offered to read full message";
LABEL_16:
  OUTLINED_FUNCTION_1_7(&dword_267B93000, v26, v27, v28);
  OUTLINED_FUNCTION_32_0();
LABEL_17:

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_36_0();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10);
}

uint64_t sub_267E4E3F0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 104);
  *v4 = *v1;
  v3[14] = v7;
  v3[15] = v0;

  if (v0)
  {
    v8 = v3[9];

    v9 = sub_267E4E98C;
  }

  else
  {
    v9 = sub_267E4E500;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

void sub_267E4E500()
{
  v28 = v0;
  v1 = *(v0 + 112);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v2 = sub_267E51CD8(v1);
  if (v2)
  {
    v3 = v2;
    v27 = MEMORY[0x277D84F90];
    v4 = sub_267BAF0DC(v2);
    for (i = 0; v4 != i; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x26D609870](i, v3);
      }

      else
      {
        if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

      sub_267BE28D0(v6, &selRef_notificationId);
      if (!v8)
      {
        goto LABEL_28;
      }

      v9 = *(v0 + 96);
      LOBYTE(v9) = sub_267E2D478();

      if (v9)
      {
      }

      else
      {
        sub_267EF9BD8();
        v10 = *(v27 + 16);
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
      }
    }

    v11 = *(v0 + 120);

    v27 = sub_267D326FC(v12);
    sub_267BDE58C(&v27, sub_267BE6A4C, sub_267D2FE8C, sub_267E50B94, sub_267E50300);
    if (!v11)
    {
      v15 = *(v0 + 72);

      v14 = v27;
      goto LABEL_20;
    }
  }

  else
  {
    v13 = *(v0 + 72);

    v14 = MEMORY[0x277D84F90];
LABEL_20:
    *(v0 + 128) = v14;
    v16 = *(v0 + 88);

    v17 = sub_267EF89F8();
    v18 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v18))
    {
      v19 = OUTLINED_FUNCTION_48();
      *v19 = 134217984;
      *(v19 + 4) = sub_267BAF0DC(v14);

      OUTLINED_FUNCTION_14_2();
      _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
      OUTLINED_FUNCTION_29_1();
    }

    else
    {
    }

    v25 = swift_task_alloc();
    *(v0 + 136) = v25;
    *v25 = v0;
    v25[1] = sub_267E4E81C;
    v26 = *(v0 + 64);

    sub_267E4EB14(v14);
  }
}

uint64_t sub_267E4E81C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 136);
  v3 = *(v1 + 128);
  v4 = *v0;
  OUTLINED_FUNCTION_15_0();
  *v5 = v4;

  return MEMORY[0x2822009F8](sub_267E4E928, 0, 0);
}

uint64_t sub_267E4E928()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267E4E98C()
{
  v24 = v0;
  v2 = v0[15];
  v3 = v0[11];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v4 = v2;
  v5 = sub_267EF89F8();
  v6 = sub_267EF95E8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v8 = v0[10];
    v9 = OUTLINED_FUNCTION_48();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    v0[7] = v7;
    v11 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v12 = sub_267EF9098();
    sub_267BA33E8(v12, v13, &v23);
    OUTLINED_FUNCTION_79();
    *(v9 + 4) = v1;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
    v19 = v0[15];
    v20 = v0[10];
  }

  OUTLINED_FUNCTION_17();

  return v21();
}

uint64_t sub_267E4EB14(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4EB28()
{
  v1 = *(v0[3] + 32);
  v0[4] = v1;
  v2 = v1;
  v3 = v1[16];

  v53 = sub_267EF7C18();
  v5 = v4;

  if (v5)
  {
    v52 = v0;
    v6 = v0[2];
    v55 = MEMORY[0x277D84F90];
    v7 = sub_267BAF0DC(v6);
    v8 = 0;
    v9 = v2;
    while (1)
    {
      if (v7 == v8)
      {

        v22 = sub_267BAF0DC(v55);
        v23 = 0;
        v24 = MEMORY[0x277D84F90];
LABEL_32:
        v54 = v24;
        v52[5] = v24;
        while (v22 != v23)
        {
          if ((v55 & 0xC000000000000001) != 0)
          {
            v25 = MEMORY[0x26D609870](v23, v55);
          }

          else
          {
            if (v23 >= *(v55 + 16))
            {
              goto LABEL_64;
            }

            v25 = *(v55 + 8 * v23 + 32);
          }

          v26 = v25;
          v27 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_63;
          }

          v28 = sub_267BE28D0(v25, &selRef_notificationId);
          v30 = v29;

          ++v23;
          if (v30)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v34 = *(v54 + 16);
              sub_267BF4EE8();
              v54 = v35;
            }

            v32 = *(v54 + 16);
            if (v32 >= *(v54 + 24) >> 1)
            {
              sub_267BF4EE8();
              v54 = v36;
            }

            v24 = v54;
            *(v54 + 16) = v32 + 1;
            v33 = v54 + 16 * v32;
            *(v33 + 32) = v28;
            *(v33 + 40) = v30;
            v23 = v27;
            goto LABEL_32;
          }
        }

        if (*(v54 + 16))
        {
          v37 = v9[16];
          v52[6] = v37;

          v38 = swift_task_alloc();
          v52[7] = v38;
          *v38 = v52;
          v38[1] = sub_267E4F000;
          v39 = v52[3];

          return sub_267E4F268(v54, v37);
        }

        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v48 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v48, qword_280240FB0);
        v42 = sub_267EF89F8();
        v49 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_27(v49))
        {
          v50 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_59(v50);
          v47 = "#NotificationAppendingAction No notifications for current conversation";
          goto LABEL_57;
        }

        goto LABEL_58;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26D609870](v8, v52[2]);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_62;
        }

        v10 = *(v6 + 32 + 8 * v8);
      }

      v11 = v10;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v12 = sub_267BE28D0(v10, &selRef_threadIdentifier);
      v14 = v9[14];
      if (v13)
      {
        if (!v14)
        {

          goto LABEL_29;
        }

        if (v12 == v9[13] && v13 == v14)
        {
        }

        else
        {
          v16 = sub_267EF9EA8();

          if ((v16 & 1) == 0)
          {
            break;
          }
        }
      }

      else if (v14)
      {
        break;
      }

      v17 = sub_267BE28D0(v11, &selRef_applicationId);
      if (!v18)
      {
        break;
      }

      if (v17 == v53 && v18 == v5)
      {
      }

      else
      {
        v20 = sub_267EF9EA8();

        if ((v20 & 1) == 0)
        {
          break;
        }
      }

      sub_267EF9BD8();
      v21 = *(v55 + 16);
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
LABEL_29:
      ++v8;
    }

    goto LABEL_29;
  }

  if (qword_280228818 != -1)
  {
LABEL_65:
    OUTLINED_FUNCTION_0();
  }

  v41 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v41, qword_280240FB0);
  v42 = sub_267EF89F8();
  v43 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_27(v43))
  {
    v44 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_59(v44);
    v47 = "#NotificationAppendingAction Application ID is missing for the conversation";
LABEL_57:
    OUTLINED_FUNCTION_1_7(&dword_267B93000, v45, v46, v47);
    OUTLINED_FUNCTION_32_0();
  }

LABEL_58:

  OUTLINED_FUNCTION_17();

  return v51();
}